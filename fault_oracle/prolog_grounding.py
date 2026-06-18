"""Prolog Semantic Grounding + Rule-to-Prompt.

Transforms raw LogicFL Prolog output into semantically grounded, type-resolved
causal chains with targeted repair directives.

Two optimizations implemented:
  #1 Semantic Grounding: Maps internal Prolog names (v_r_207, f_parent_25)
     to real Java names with resolved types via Tree-sitter AST analysis.
  #3 Rule-to-Prompt: Classifies each NPE causal chain into a category
     (NULL_RETURN, NULL_ARGUMENT, etc.) and generates targeted repair directives.
"""

from __future__ import annotations

import re
from pathlib import Path
from typing import Dict, List, Optional, Tuple

from shared.models import (
    GroundedCause,
    GroundedEntity,
    GroundedNPE,
    NPECategory,
)


# ── Prolog Name Conventions ──────────────────────────────────────────────────
#
# From LogicFL's code-facts generator:
#   v_<name>_<id>    → local variable
#   f_<name>_<id>    → field
#   p_<name>_<id>    → parameter
#   <classid>_literal<n> → literal value (null, number, string)
#   <classid>_expr<n>    → expression (method call, cast, etc.)
#   m_<name>_<id>    → method reference
#   t_<name>_<id>    → type reference
#   q_<name>_<id>    → qualified name


# ── Regex Patterns for root_cause.txt ────────────────────────────────────────

# Matches: "NPE at line(<class_id>, <line>) / Null Expression - <prolog_expr>[<java_name>]"
_NPE_HEADER_RE = re.compile(
    r"NPE at line\((\w+),\s*(\d+)\)\s*/\s*Null Expression\s*-?\s*(\w+)\[([^\]]*)\]"
)

# Matches: "<cause_expr>[<cause_name>] - line(<class_id>, <line>)."
_CAUSE_RE = re.compile(
    r"(\w+)\[([^\]]*)\]\s*-\s*line\((\w+),\s*(\d+)\)\."
)

# Entity kind detection from Prolog ID prefixes
_ENTITY_KIND_MAP = {
    "v_": "variable",
    "f_": "field",
    "p_": "parameter",
}


def _classify_entity_kind(prolog_id: str) -> str:
    """Classify a Prolog entity by its ID prefix convention."""
    for prefix, kind in _ENTITY_KIND_MAP.items():
        if prolog_id.startswith(prefix):
            return kind
    if "_literal" in prolog_id:
        return "literal"
    if "_expr" in prolog_id:
        return "expression"
    if prolog_id.startswith("m_"):
        return "method"
    if prolog_id.startswith("t_"):
        return "type"
    return "unknown"


def _clean_java_name(raw_name: str) -> str:
    """Clean up the Java name extracted from Prolog brackets.

    Examples:
        'r' → 'r'
        'null' → 'null'
        "'(XYItemRenderer)this.renderers.get(i)'" → '(XYItemRenderer)this.renderers.get(i)'
    """
    name = raw_name.strip()
    # Remove surrounding single quotes from expression names
    if name.startswith("'") and name.endswith("'"):
        name = name[1:-1]
    return name


# ── Type Resolution via Tree-sitter AST ──────────────────────────────────────


def _resolve_type_at_line(
    java_file: Path,
    line_no: int,
    java_name: str,
    entity_kind: str,
) -> str:
    """Resolve the Java type of an entity at a given line using Tree-sitter.

    For variables/parameters: searches for declaration in the enclosing method.
    For fields: searches for field declaration in the class.

    Returns the type string or empty string if unresolved.
    """
    if not java_file.exists():
        return ""

    source = java_file.read_text(encoding="utf-8", errors="replace")
    lines = source.splitlines()

    if entity_kind == "literal":
        return "null" if java_name == "null" else "literal"

    if entity_kind == "expression":
        # Try to infer type from expression pattern
        return _infer_type_from_expression(java_name, lines, line_no)

    # Use Tree-sitter for variables, parameters, and fields
    try:
        return _resolve_type_with_tree_sitter(source, line_no, java_name, entity_kind)
    except Exception:
        pass

    # Fallback: regex-based type resolution
    return _resolve_type_regex(lines, line_no, java_name, entity_kind)


def _resolve_type_with_tree_sitter(
    source: str,
    line_no: int,
    java_name: str,
    entity_kind: str,
) -> str:
    """Use Tree-sitter to find the type declaration of a variable/field/param."""
    try:
        from fault_oracle.ast_extractor import _parse_java, _find_enclosing_method_iterative
    except ImportError:
        return ""

    tree = _parse_java(source)
    if tree is None:
        return ""

    target_0 = line_no - 1

    if entity_kind == "field":
        # Search class-level field declarations
        return _find_field_type_in_tree(tree.root_node, java_name)

    # For variables and parameters, search within the enclosing method
    method_node = _find_enclosing_method_iterative(tree.root_node, target_0)
    if method_node is None:
        return ""

    if entity_kind == "parameter":
        return _find_param_type_in_node(method_node, java_name)

    # Variable: look for local_variable_declaration
    return _find_variable_type_in_node(method_node, java_name)


def _find_field_type_in_tree(root_node, field_name: str) -> str:
    """Search class body for a field declaration matching field_name."""
    stack = [root_node]
    while stack:
        node = stack.pop()
        if node.type == "field_declaration":
            # field_declaration → type declarator(s)
            type_node = None
            for child in node.children:
                if child.type in (
                    "type_identifier", "generic_type", "array_type",
                    "integral_type", "floating_point_type", "boolean_type",
                    "scoped_type_identifier",
                ):
                    type_node = child
                elif child.type == "variable_declarator":
                    name_node = child.child_by_field_name("name")
                    if name_node and name_node.text.decode("utf-8") == field_name:
                        if type_node:
                            return type_node.text.decode("utf-8")
        for child in node.children:
            stack.append(child)
    return ""


def _find_param_type_in_node(method_node, param_name: str) -> str:
    """Find parameter type from method's formal_parameters."""
    for child in method_node.children:
        if child.type == "formal_parameters":
            for param in child.children:
                if param.type == "formal_parameter":
                    name_node = param.child_by_field_name("name")
                    type_node = param.child_by_field_name("type")
                    if (name_node and type_node
                            and name_node.text.decode("utf-8") == param_name):
                        return type_node.text.decode("utf-8")
    return ""


def _find_variable_type_in_node(method_node, var_name: str) -> str:
    """Find local variable type declaration within a method body."""
    stack = [method_node]
    while stack:
        node = stack.pop()
        if node.type == "local_variable_declaration":
            type_node = None
            for child in node.children:
                if child.type in (
                    "type_identifier", "generic_type", "array_type",
                    "integral_type", "floating_point_type", "boolean_type",
                    "scoped_type_identifier",
                ):
                    type_node = child
                elif child.type == "variable_declarator":
                    name_node = child.child_by_field_name("name")
                    if name_node and name_node.text.decode("utf-8") == var_name:
                        if type_node:
                            return type_node.text.decode("utf-8")
        for child in node.children:
            stack.append(child)
    return ""


def _infer_type_from_expression(expr: str, lines: List[str], line_no: int) -> str:
    """Infer return type from an expression pattern.

    Common patterns:
      'getRenderer()' → method call, likely returns an object
      '(XYItemRenderer)this.renderers.get(i)' → cast, type is XYItemRenderer
      'array[i]' → array access
    """
    # Cast expression: (Type)expr
    cast_match = re.match(r"\((\w[\w<>\[\],\s]*)\)", expr)
    if cast_match:
        return cast_match.group(1).strip()

    # Method call on a known type would need deeper analysis
    return ""


def _resolve_type_regex(
    lines: List[str],
    line_no: int,
    java_name: str,
    entity_kind: str,
) -> str:
    """Regex fallback for type resolution when Tree-sitter is unavailable."""
    if entity_kind == "field":
        # Search entire file for field declarations
        field_re = re.compile(
            rf"\b([\w<>\[\],.?]+)\s+{re.escape(java_name)}\s*[;=]"
        )
        for line in lines:
            m = field_re.search(line)
            if m:
                candidate = m.group(1).strip()
                if candidate not in {"class", "interface", "return", "if", "new", "throw"}:
                    return candidate
        return ""

    # For variables and parameters, search backward from the fault line
    var_re = re.compile(
        rf"(?:final\s+)?([\w<>\[\],.?]+)\s+{re.escape(java_name)}\b"
    )
    search_start = max(0, line_no - 50)
    search_end = min(len(lines), line_no + 5)
    for i in range(line_no - 1, search_start - 1, -1):
        m = var_re.search(lines[i])
        if m:
            candidate = m.group(1).strip()
            if candidate not in {"class", "interface", "return", "if", "new", "throw", "catch"}:
                return candidate

    return ""


# ── NPE Classification (Rule-to-Prompt) ─────────────────────────────────────

# Maps to rules in npe-rules.pl:
#   null_arg_passed → NULL_ARGUMENT
#   null_ref → NULL_DEREFERENCE
#   is_null_return → NULL_RETURN
#   val_assigned_in_method with literal null → NULL_LITERAL_ASSIGN
#   field entity kind → UNINITIALIZED_FIELD
#   array access pattern → NULL_ARRAY_ACCESS


def _classify_npe(
    null_entity: GroundedEntity,
    causes: List[GroundedCause],
) -> NPECategory:
    """Classify an NPE based on the null entity and its causal chain.

    Uses heuristics derived from the Prolog rule categories in npe-rules.pl.
    """
    if not causes:
        return NPECategory.NULL_DEREFERENCE

    # Check cause patterns
    has_literal_null = any(
        c.entity.entity_kind == "literal" and c.entity.java_name == "null"
        for c in causes
    )
    has_method_return = any(
        c.entity.entity_kind == "expression"
        and ("(" in c.entity.java_name and ")" in c.entity.java_name)
        for c in causes
    )
    null_is_field = null_entity.entity_kind == "field"
    null_is_param = null_entity.entity_kind == "parameter"
    has_array_access = (
        "[" in null_entity.java_name and "]" in null_entity.java_name
    ) or any(
        "[" in c.entity.java_name and "]" in c.entity.java_name
        for c in causes
    )

    # Priority classification
    if has_array_access:
        return NPECategory.NULL_ARRAY_ACCESS

    if null_is_param and not has_method_return:
        return NPECategory.NULL_ARGUMENT

    if null_is_field and has_literal_null:
        return NPECategory.UNINITIALIZED_FIELD

    if null_is_field and not has_method_return:
        return NPECategory.UNINITIALIZED_FIELD

    if has_method_return:
        return NPECategory.NULL_RETURN

    if has_literal_null:
        return NPECategory.NULL_LITERAL_ASSIGN

    if null_entity.entity_kind == "variable":
        # Variable is null — check if it came from a method return
        for c in causes:
            if c.entity.entity_kind == "expression":
                return NPECategory.NULL_RETURN
        return NPECategory.NULL_DEREFERENCE

    return NPECategory.NULL_DEREFERENCE


# ── Repair Directives ────────────────────────────────────────────────────────

_CONTRACT_CLAUSE = (
    " Preserve the documented contract: do NOT introduce new exception types, "
    "do NOT return dummy/default objects to silence the crash, and do NOT "
    "expose internal state. If the Javadoc allows null, propagating null is "
    "the correct behaviour. Fix the CAUSE shown in the causal chain, not just "
    "the crash line."
)

_REPAIR_DIRECTIVES: Dict[NPECategory, str] = {
    NPECategory.NULL_RETURN: (
        "The method {cause_expr} can return null and the result is dereferenced. "
        "Decide from the callee's documented contract: if null is a legal return "
        "value, handle it at the call site; if the callee should never return "
        "null, fix the callee." + _CONTRACT_CLAUSE
    ),
    NPECategory.NULL_ARGUMENT: (
        "The parameter `{null_name}` can be null when passed to this method. "
        "Check the causal chain for WHERE the null originates: prefer fixing "
        "the caller that passes null (e.g., passing the documented neutral "
        "value instead), and only guard inside the callee if null is a legal "
        "input per its contract." + _CONTRACT_CLAUSE
    ),
    NPECategory.UNINITIALIZED_FIELD: (
        "The field `{null_name}` is not initialized (or explicitly set to null). "
        "Add initialization in the constructor or a lazy-init null-check before use. "
        "Choose the default that the class contract implies, not an arbitrary one."
        + _CONTRACT_CLAUSE
    ),
    NPECategory.NULL_ARRAY_ACCESS: (
        "An array or collection element is null when accessed. "
        "Handle the null element the way the surrounding API documents it "
        "(skip, store, or propagate it) — do not invent new behaviour."
        + _CONTRACT_CLAUSE
    ),
    NPECategory.NULL_DEREFERENCE: (
        "The variable `{null_name}` is null when dereferenced at line {crash_line}. "
        "Trace where it gets its value (see the causal chain) and fix the origin; "
        "guard the dereference only if null is a legal state for `{null_name}`."
        + _CONTRACT_CLAUSE
    ),
    NPECategory.NULL_LITERAL_ASSIGN: (
        "The variable `{null_name}` is explicitly assigned `null` at line {assign_line} "
        "and later dereferenced at line {crash_line}. "
        "Fix the assignment site (line {assign_line}) if a meaningful value exists, "
        "otherwise handle the null where it is dereferenced." + _CONTRACT_CLAUSE
    ),
    NPECategory.UNKNOWN: (
        "A NullPointerException occurs at line {crash_line}. "
        "Inspect the variable `{null_name}` and trace its value to find the root "
        "cause." + _CONTRACT_CLAUSE
    ),
}


def _generate_directive(
    category: NPECategory,
    null_entity: GroundedEntity,
    causes: List[GroundedCause],
    crash_line: int,
) -> str:
    """Generate a targeted repair directive based on NPE classification."""
    template = _REPAIR_DIRECTIVES.get(category, _REPAIR_DIRECTIVES[NPECategory.UNKNOWN])

    # Find the most relevant cause expression
    cause_expr = ""
    assign_line = ""
    for c in causes:
        if c.entity.entity_kind == "expression":
            cause_expr = c.entity.java_name
        if c.entity.entity_kind == "literal" and c.entity.java_name == "null":
            assign_line = str(c.entity.source_line)

    null_name = null_entity.java_name
    null_type = null_entity.java_type

    directive = template.format(
        null_name=null_name,
        null_type=null_type,
        crash_line=crash_line,
        cause_expr=cause_expr or "a called method",
        assign_line=assign_line or "?",
    )

    # Append type info if resolved
    if null_type and null_type not in ("null", "literal", ""):
        directive += f" (The variable `{null_name}` has type `{null_type}`.)"

    return directive


# ── Human-Readable Explanation ───────────────────────────────────────────────


def _build_cause_explanation(entity: GroundedEntity) -> str:
    """Build a human-readable explanation for a single cause entity."""
    kind = entity.entity_kind
    name = entity.java_name
    java_type = f" (type `{entity.java_type}`)" if entity.java_type else ""
    line = entity.source_line

    if kind == "literal" and name == "null":
        return f"Explicitly assigned `null` at line {line}"
    if kind == "expression":
        return f"Expression `{name}`{java_type} at line {line} may return null"
    if kind == "variable":
        return f"Variable `{name}`{java_type} at line {line}"
    if kind == "field":
        return f"Field `{name}`{java_type} at line {line}"
    if kind == "parameter":
        return f"Parameter `{name}`{java_type} at line {line}"
    return f"`{name}`{java_type} at line {line}"


# ── Main Public API ──────────────────────────────────────────────────────────


def ground_causal_chains(
    root_cause_text: str,
    source_file: Optional[Path] = None,
    source_roots: Optional[List[Path]] = None,
) -> List[GroundedNPE]:
    """Parse and ground the raw LogicFL root_cause.txt output.

    This is the main entry point. It:
      1. Parses each NPE block from root_cause.txt
      2. Resolves entity types via Tree-sitter AST
      3. Classifies each NPE
      4. Generates repair directives

    Args:
        root_cause_text: Raw content of root_cause.txt.
        source_file: Path to the primary Java source file (for type resolution).
        source_roots: Additional source roots for multi-file resolution.

    Returns:
        A list of GroundedNPE, one per distinct NPE crash site.
    """
    if not root_cause_text or not root_cause_text.strip():
        return []

    # Split into individual NPE blocks (separated by blank lines)
    raw_blocks = re.split(r"\n\s*\n", root_cause_text.strip())

    # Parse all NPE entries
    npe_entries: List[_RawNPEEntry] = []
    for block in raw_blocks:
        block = block.strip()
        if not block or block == "Fault Localization Results":
            continue
        entries = _parse_npe_block(block)
        npe_entries.extend(entries)

    if not npe_entries:
        return []

    # Resolve source file from class IDs if not provided
    file_map: Dict[str, Path] = {}
    if source_file and source_file.exists():
        # Use the primary file for all class IDs (most common case: single-file bug)
        for entry in npe_entries:
            if entry.class_id not in file_map:
                file_map[entry.class_id] = source_file
            if entry.cause_class_id and entry.cause_class_id not in file_map:
                # Try to find the cause file in source_roots
                cause_file = _find_file_for_class_id(
                    entry.cause_class_id, source_roots or []
                )
                if cause_file:
                    file_map[entry.cause_class_id] = cause_file
                else:
                    file_map[entry.cause_class_id] = source_file

    # Group entries by crash site (class_id + crash_line + null_entity)
    grouped: Dict[Tuple[str, int, str], List[_RawNPEEntry]] = {}
    for entry in npe_entries:
        key = (entry.class_id, entry.crash_line, entry.null_prolog_id)
        grouped.setdefault(key, []).append(entry)

    # Build GroundedNPE for each group
    results: List[GroundedNPE] = []
    for (class_id, crash_line, null_pid), entries in grouped.items():
        first = entries[0]

        # Ground the null entity
        null_kind = _classify_entity_kind(first.null_prolog_id)
        null_java = _clean_java_name(first.null_java_name)
        java_file = file_map.get(class_id)
        null_type = ""
        if java_file:
            null_type = _resolve_type_at_line(java_file, crash_line, null_java, null_kind)

        null_entity = GroundedEntity(
            prolog_id=first.null_prolog_id,
            java_name=null_java,
            java_type=null_type,
            entity_kind=null_kind,
            source_line=crash_line,
        )

        # Ground each cause
        causes: List[GroundedCause] = []
        seen_causes: set = set()
        for entry in entries:
            cause_key = (entry.cause_prolog_id, entry.cause_line)
            if cause_key in seen_causes:
                continue
            seen_causes.add(cause_key)

            cause_kind = _classify_entity_kind(entry.cause_prolog_id)
            cause_java = _clean_java_name(entry.cause_java_name)
            cause_file = file_map.get(entry.cause_class_id, java_file)
            cause_type = ""
            if cause_file:
                cause_type = _resolve_type_at_line(
                    cause_file, entry.cause_line, cause_java, cause_kind
                )

            cause_entity = GroundedEntity(
                prolog_id=entry.cause_prolog_id,
                java_name=cause_java,
                java_type=cause_type,
                entity_kind=cause_kind,
                source_line=entry.cause_line,
            )

            explanation = _build_cause_explanation(cause_entity)
            causes.append(GroundedCause(entity=cause_entity, explanation=explanation))

        # Classify the NPE
        category = _classify_npe(null_entity, causes)

        # Generate repair directive
        directive = _generate_directive(category, null_entity, causes, crash_line)

        results.append(GroundedNPE(
            crash_line=crash_line,
            class_id=class_id,
            null_entity=null_entity,
            causes=causes,
            category=category,
            repair_directive=directive,
        ))

    # Deduplicate: keep one GroundedNPE per crash_line
    seen_lines: set = set()
    deduped: List[GroundedNPE] = []
    for npe in results:
        if npe.crash_line not in seen_lines:
            seen_lines.add(npe.crash_line)
            deduped.append(npe)

    return deduped


# ── Internal Parsing ─────────────────────────────────────────────────────────


class _RawNPEEntry:
    """Internal representation of a single NPE cause-line from root_cause.txt."""
    __slots__ = (
        "class_id", "crash_line", "null_prolog_id", "null_java_name",
        "cause_prolog_id", "cause_java_name", "cause_class_id", "cause_line",
    )

    def __init__(self):
        self.class_id = ""
        self.crash_line = 0
        self.null_prolog_id = ""
        self.null_java_name = ""
        self.cause_prolog_id = ""
        self.cause_java_name = ""
        self.cause_class_id = ""
        self.cause_line = 0


def _parse_npe_block(block: str) -> List[_RawNPEEntry]:
    """Parse a single NPE block from root_cause.txt.

    A block looks like:
        NPE at line(dataset_utilities_1, 780) / Null Expression - v_r_207[r]
           can be caused by
        dataset_utilities_1_literal5[null] - line(dataset_utilities_1, 780).
    """
    results: List[_RawNPEEntry] = []

    # Skip header line
    lines = [l.strip() for l in block.splitlines() if l.strip()]
    if not lines:
        return results

    # Try to match the header
    header_text = lines[0]
    if header_text == "Fault Localization Results":
        lines = lines[1:]
        if not lines:
            return results
        header_text = lines[0]

    header_match = _NPE_HEADER_RE.search(header_text)
    if not header_match:
        return results

    class_id = header_match.group(1)
    crash_line = int(header_match.group(2))
    null_prolog_id = header_match.group(3)
    null_java_name = header_match.group(4)

    # Find cause lines
    remaining_text = "\n".join(lines[1:])
    for cause_match in _CAUSE_RE.finditer(remaining_text):
        entry = _RawNPEEntry()
        entry.class_id = class_id
        entry.crash_line = crash_line
        entry.null_prolog_id = null_prolog_id
        entry.null_java_name = null_java_name
        entry.cause_prolog_id = cause_match.group(1)
        entry.cause_java_name = cause_match.group(2)
        entry.cause_class_id = cause_match.group(3)
        entry.cause_line = int(cause_match.group(4))
        results.append(entry)

    # If no cause found, create a self-referential entry
    if not results:
        entry = _RawNPEEntry()
        entry.class_id = class_id
        entry.crash_line = crash_line
        entry.null_prolog_id = null_prolog_id
        entry.null_java_name = null_java_name
        entry.cause_prolog_id = null_prolog_id
        entry.cause_java_name = null_java_name
        entry.cause_class_id = class_id
        entry.cause_line = crash_line
        results.append(entry)

    return results


def _find_file_for_class_id(
    class_id: str,
    source_roots: List[Path],
) -> Optional[Path]:
    """Try to resolve a Prolog class_id to a Java source file.

    class_id format: lowercase_class_name_N (e.g., 'dataset_utilities_1')
    We strip the trailing _N and convert underscores to CamelCase.
    """
    if not source_roots:
        return None

    # Strip trailing _N
    parts = class_id.rsplit("_", 1)
    if len(parts) == 2 and parts[1].isdigit():
        base = parts[0]
    else:
        base = class_id

    # Convert snake_case to CamelCase for filename search
    camel = "".join(word.capitalize() for word in base.split("_"))
    filename = camel + ".java"

    for root in source_roots:
        hits = list(root.rglob(filename))
        if hits:
            return hits[0]

    return None


# ── Formatting for Prompt Injection ──────────────────────────────────────────


def format_grounded_chains(chains: List[GroundedNPE]) -> str:
    """Format grounded chains into a structured prompt section.

    Used by spec_builder.py and agent.py to replace raw causal chain text.
    """
    if not chains:
        return "(no causal analysis available)"

    sections: List[str] = []
    for i, npe in enumerate(chains, 1):
        header = (
            f"**NPE #{i}** — `{npe.null_entity.java_name}` "
            f"is null at line {npe.crash_line}"
        )
        if npe.null_entity.java_type:
            header += f" (type: `{npe.null_entity.java_type}`)"
        header += f"  \n**Category:** {npe.category.value.replace('_', ' ').title()}"

        cause_lines: List[str] = []
        for j, cause in enumerate(npe.causes, 1):
            cause_lines.append(f"  {j}. {cause.explanation}")

        directive = f"**⚡ Repair Directive:** {npe.repair_directive}"

        section = header + "\n" + "\n".join(cause_lines) + "\n" + directive
        sections.append(section)

    return "\n\n".join(sections)
