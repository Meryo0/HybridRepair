"""Static context collector (Ingredient Forge).

Proactively collects structural information from the Java source code
to inject into the LLM prompt, preventing hallucination of non-existent APIs.

Inspired by FitRepair + ReinFix. Absorbs functionality from:
  - pipeline/api_grounding.py (extract_public_methods)
  - pipeline/code_extractor.py (caller context, sibling methods)
"""

from __future__ import annotations

import re
from pathlib import Path
from typing import List, Optional

from shared.models import FaultLocation, FaultReport, Ingredients
from services.sandbox_evaluator import read_source_roots


# ── Java source parsing (regex-based, lightweight) ────────────────────────────

_PUBLIC_METHOD_RE = re.compile(
    r"^\s*"
    r"(?:@\w+(?:\([^)]*\))?\s*)*"                     # optional annotations
    r"(public|protected)\s+"
    r"(?:static\s+|final\s+|abstract\s+|synchronized\s+|native\s+|strictfp\s+)*"
    r"(?:<[^>]+>\s+)?"                                # generic params
    r"([\w<>\[\],.\\s?]+?)\s+"                         # return type
    r"(\w+)\s*\(([^)]*)\)",                           # name(params)
    re.MULTILINE,
)

_PUBLIC_CONSTRUCTOR_RE = re.compile(
    r"^\s*"
    r"(?:@\w+(?:\([^)]*\))?\s*)*"
    r"(public|protected)\s+"
    r"(\w+)\s*\(([^)]*)\)\s*(?:throws [^{]+)?\s*\{",
    re.MULTILINE,
)

_FIELD_RE = re.compile(
    r"^\s*(?:(?:public|protected|private|static|final|transient|volatile)\s+)*"
    r"([\w<>\[\],.?]+)\s+(\w+)\s*[;=]",
    re.MULTILINE,
)

_IMPORT_RE = re.compile(
    r"^\s*import\s+([\w.]+)\s*;",
    re.MULTILINE,
)

_EXTENDS_RE = re.compile(
    r"\bextends\s+([\w.]+)",
)


def _strip_comments(text: str) -> str:
    """Remove block and line comments from Java source."""
    text = re.sub(r"/\*.*?\*/", "", text, flags=re.DOTALL)
    text = re.sub(r"//.*$", "", text, flags=re.MULTILINE)
    return text


def _extract_public_methods(java_file: Path, class_simple_name: Optional[str] = None) -> List[str]:
    """Return public/protected method signatures from the file."""
    if not java_file.exists():
        return []

    text = java_file.read_text(encoding="utf-8", errors="replace")
    text_clean = _strip_comments(text)

    signatures: List[str] = []
    for m in _PUBLIC_METHOD_RE.finditer(text_clean):
        access = m.group(1)
        ret_type = m.group(2).strip()
        name = m.group(3)
        params = m.group(4).strip()
        if ret_type in {"class", "interface", "enum", "record"}:
            continue
        if class_simple_name and name == class_simple_name and not ret_type:
            continue
        signatures.append(f"{access} {ret_type} {name}({params})")

    # Constructors
    if class_simple_name:
        for m in _PUBLIC_CONSTRUCTOR_RE.finditer(text_clean):
            access = m.group(1)
            name = m.group(2)
            params = m.group(3).strip()
            if name == class_simple_name:
                signatures.append(f"{access} {name}({params})  // constructor")

    # Deduplicate
    seen: set[str] = set()
    unique: List[str] = []
    for s in signatures:
        if s not in seen:
            seen.add(s)
            unique.append(s)
    return unique


def _extract_fields(java_file: Path) -> List[str]:
    """Return field declarations from the file."""
    if not java_file.exists():
        return []

    text = java_file.read_text(encoding="utf-8", errors="replace")
    text_clean = _strip_comments(text)

    fields: List[str] = []
    for m in _FIELD_RE.finditer(text_clean):
        field_type = m.group(1).strip()
        field_name = m.group(2).strip()
        # Filter out false positives (keywords, package names)
        if field_type in {"class", "interface", "enum", "record", "import", "package", "return"}:
            continue
        fields.append(f"{field_type} {field_name}")

    return list(dict.fromkeys(fields))  # deduplicate


def _extract_imports(java_file: Path) -> List[str]:
    """Return all import statements from the file."""
    if not java_file.exists():
        return []

    text = java_file.read_text(encoding="utf-8", errors="replace")
    return _IMPORT_RE.findall(text)


def _resolve_superclass_file(java_file: Path, source_roots: List[Path]) -> Optional[Path]:
    """Try to find the superclass source file."""
    if not java_file.exists():
        return None

    text = java_file.read_text(encoding="utf-8", errors="replace")
    match = _EXTENDS_RE.search(text)
    if not match:
        return None

    super_name = match.group(1)
    # If it's a simple name, search by filename
    simple = super_name.split(".")[-1] + ".java"
    for root in source_roots:
        hits = list(root.rglob(simple))
        if hits:
            return hits[0]
    return None


def _extract_local_variables(
    java_file: Path,
    method_start: int,
    method_end: int,
) -> List[str]:
    """Extract variable declarations visible at the fault location.

    Scans the method body for local variable declarations.
    """
    if not java_file.exists() or method_start <= 0:
        return []

    lines = java_file.read_text(encoding="utf-8", errors="replace").splitlines()
    var_re = re.compile(
        r"^\s*(?:final\s+)?([\w<>\[\],.?]+)\s+(\w+)\s*[;=]"
    )

    variables: List[str] = []
    for i in range(method_start - 1, min(method_end, len(lines))):
        m = var_re.match(lines[i])
        if m:
            vtype = m.group(1).strip()
            vname = m.group(2).strip()
            if vtype not in {"class", "interface", "return", "if", "for", "while", "try"}:
                variables.append(f"{vtype} {vname}")

    return list(dict.fromkeys(variables))


_CALL_EXPR_RE = re.compile(r"\b\w+\.\w+\s*\([^()]*\)")


def _find_sibling_occurrences(
    java_file: Path,
    fault_line: int,
    method_start: int,
    method_end: int,
) -> List[str]:
    """Find other occurrences of the crash-line expression in the same class.

    When the expression that crashes (e.g. `ai.findSubtypes(property)`)
    appears verbatim in ANOTHER method of the same file, that method is a
    likely "twin" with the same latent defect (cf. JacksonDatabind-80, where
    only one of two mirror methods got patched). Returns human-readable
    warnings for the prompt.
    """
    if not java_file.exists() or fault_line <= 0:
        return []

    lines = java_file.read_text(encoding="utf-8", errors="replace").splitlines()
    if fault_line > len(lines):
        return []

    crash_text = lines[fault_line - 1]
    calls = _CALL_EXPR_RE.findall(crash_text)
    if not calls:
        return []

    occurrences: List[str] = []
    for call in calls:
        for i, line in enumerate(lines, 1):
            if i == fault_line:
                continue
            if method_start <= i <= method_end:
                continue  # same method as the crash — already in context
            if call in line:
                occurrences.append(
                    f"{java_file.name}:{i} — `{line.strip()}` contains the same "
                    f"expression `{call}` as the crash line {fault_line}"
                )

    return occurrences[:5]


# ── Public API ────────────────────────────────────────────────────────────────


def collect(fault_report: FaultReport) -> Ingredients:
    """Collect static ingredients for the primary fault location.

    This is executed PROACTIVELY before Phase 2, so the LLM has
    grounded context from the very first prompt.

    Args:
        fault_report: Output from Phase 1 (FaultOracle).

    Returns:
        An Ingredients dataclass with all collected context.
    """
    ingredients = Ingredients()

    if not fault_report.locations:
        return ingredients

    # Use the primary (most suspicious) fault location
    primary = fault_report.locations[0]
    java_file = primary.file_path

    if not java_file.exists():
        print(f"  [ingredient_forge] WARNING: source file not found: {java_file}")
        return ingredients

    # Determine source roots for superclass resolution
    bug_dir = None
    try:
        # Walk up to find the bug directory (contains config.properties)
        candidate = java_file.parent
        for _ in range(20):
            if (candidate / "config.properties").exists():
                bug_dir = candidate
                break
            candidate = candidate.parent
    except Exception:
        pass

    source_roots = read_source_roots(bug_dir) if bug_dir else []

    # Class simple name
    class_simple = primary.class_name.split(".")[-1].split("$")[0]

    print(f"  [ingredient_forge] Collecting ingredients for {class_simple} "
          f"(line {primary.line})")

    # 1. Fields
    ingredients.class_fields = _extract_fields(java_file)

    # 2. Public methods of the target class
    ingredients.public_methods = _extract_public_methods(java_file, class_simple)

    # 3. Superclass methods
    if source_roots:
        super_file = _resolve_superclass_file(java_file, source_roots)
        if super_file:
            super_simple = super_file.stem
            ingredients.superclass_methods = _extract_public_methods(super_file, super_simple)
            print(f"  [ingredient_forge] Found superclass: {super_simple} "
                  f"({len(ingredients.superclass_methods)} methods)")

    # 4. Imports
    ingredients.imported_types = _extract_imports(java_file)

    # 5. Local variables in the fault method
    ingredients.local_variables = _extract_local_variables(
        java_file, primary.method_start, primary.method_end
    )

    # 6. Twin locations: same crash expression in other methods of the class
    ingredients.sibling_occurrences = _find_sibling_occurrences(
        java_file, primary.line, primary.method_start, primary.method_end
    )
    if ingredients.sibling_occurrences:
        print(f"  [ingredient_forge] ⚠ Found {len(ingredients.sibling_occurrences)} "
              f"suspect twin location(s) for the crash expression")

    print(f"  [ingredient_forge] Collected: "
          f"{len(ingredients.class_fields)} fields, "
          f"{len(ingredients.public_methods)} methods, "
          f"{len(ingredients.imported_types)} imports, "
          f"{len(ingredients.local_variables)} local vars")

    return ingredients
