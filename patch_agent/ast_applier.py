"""AST-based patch application using tree-sitter.

Replaces the fragile regex/string-based approach in pipeline/patch_applier.py.
Guarantees syntactically valid output by operating on the AST level.

This resolves P1 (broken patches from unbalanced braces and duplicated methods).
"""

from __future__ import annotations

import difflib
from pathlib import Path
from typing import List, Optional, Tuple

from fault_oracle.ast_extractor import (
    _ensure_tree_sitter,
    _parse_java,
    _find_enclosing_method_iterative,
    find_method_bounds_ast,
    _find_method_bounds_regex,
)


def apply_method_replacement(
    java_file: Path,
    method_name: str,
    new_body: str,
    target_line: Optional[int] = None,
) -> Tuple[bool, str, str]:
    """Replace a method body in a Java file with new code.

    Strategy:
      1. Parse the file with tree-sitter to find the exact method node.
      2. Replace the method's text span with the new body.
      3. Verify structural integrity (no method deleted/duplicated, no syntax errors).
      4. Return the patched file content.

    If tree-sitter is not available, falls back to regex-based bounds detection.

    Args:
        java_file: Path to the Java source file.
        method_name: Name of the method to replace.
        new_body: The new method source (complete method including signature).
        target_line: Optional line hint to disambiguate overloaded methods.

    Returns:
        (success, patched_content, diff_string)
    """
    if not java_file.exists():
        return False, "", f"File not found: {java_file}"

    original = java_file.read_text(encoding="utf-8", errors="replace")
    lines = original.splitlines(keepends=True)

    # Strategy 1: tree-sitter AST
    if _ensure_tree_sitter():
        result, error = _replace_via_ast(original, method_name, new_body, target_line)
        if result is not None:
            patched, replaced_sig = result
            ok, integrity_error = _check_integrity(original, patched, replaced_sig)
            if not ok:
                return False, "", integrity_error
            diff = _compute_diff(original, patched, java_file.name)
            return True, patched, diff
        if error:
            # Specific, actionable error (e.g. ambiguous overload): surface it
            # instead of silently falling back to a line-based replacement.
            return False, "", error

    # Strategy 2: regex-based fallback
    if target_line:
        bounds = _find_method_bounds_regex(original.splitlines(), target_line)
        if bounds:
            start_1, end_1 = bounds
            before = lines[:start_1 - 1]
            after = lines[end_1:]
            # Ensure new_body ends with newline
            body = new_body if new_body.endswith("\n") else new_body + "\n"
            patched = "".join(before) + body + "".join(after)
            diff = _compute_diff(original, patched, java_file.name)
            return True, patched, diff

    return False, "", f"Could not locate method '{method_name}' in {java_file.name}"


def _replace_via_ast(
    source: str,
    method_name: str,
    new_body: str,
    target_line: Optional[int],
) -> Tuple[Optional[Tuple[str, Tuple[str, int]]], str]:
    """Replace a method using tree-sitter AST.

    Returns ((patched_source, replaced_signature), "") on success,
    (None, "") when the method is not found (caller may try a fallback),
    or (None, error_message) when the request is invalid/ambiguous and
    must be retried with more information.
    """
    tree = _parse_java(source)
    if tree is None:
        return None, ""

    # The replacement must actually BE the requested method, otherwise the
    # original method would silently disappear from the class.
    if _parse_param_count(new_body, method_name) is None:
        return None, (
            f"Patch rejected: new_body does not contain a method named "
            f"'{method_name}'. Provide the complete replacement for that exact "
            f"method (to patch a different method, call apply_ast_patch again "
            f"with the other method_name)."
        )

    # Find the target method node
    method_node, error = _find_method_by_name(
        tree.root_node, method_name, target_line, new_body
    )
    if method_node is None:
        return None, error

    # Replace the method's text span. The node starts at the first character
    # of the declaration (annotation or modifier), which sits *after* the
    # line's leading whitespace — extend the span back to the start of the
    # line so the replacement owns its own indentation.
    start_byte = method_node.start_byte
    end_byte = method_node.end_byte

    line_start = source.rfind("\n", 0, start_byte) + 1
    prefix = source[line_start:start_byte]
    if prefix == "" or prefix.isspace():
        indent = prefix
        start_byte = line_start
    else:
        # Method starts mid-line after real code (unusual); fall back to column
        indent = " " * method_node.start_point[1]

    # Re-indent the new body to match
    new_body_indented = _reindent(new_body, indent)

    patched = source[:start_byte] + new_body_indented + source[end_byte:]
    replaced_sig = (method_name, _node_param_count(method_node))
    return (patched, replaced_sig), ""


def _find_method_by_name(
    root_node,
    method_name: str,
    target_line: Optional[int],
    new_body: Optional[str] = None,
) -> Tuple[Optional[object], str]:
    """Find a method_declaration node by name.

    Overloaded methods MUST be disambiguated — either by a target_line that
    falls inside one of the candidates, or by matching the parameter count of
    the provided new_body. Silently picking an arbitrary overload can replace
    (i.e. destroy) the wrong method, so ambiguity is an error.

    Returns (node, "") on success or (None, error_message) on failure.
    """
    method_types = {"method_declaration", "constructor_declaration"}
    candidates = []
    stack = [root_node]

    while stack:
        node = stack.pop()
        if node.type in method_types:
            # Extract method name from the node
            name_node = node.child_by_field_name("name")
            if name_node and name_node.text.decode("utf-8") == method_name:
                candidates.append(node)
        for child in node.children:
            stack.append(child)

    # Stack-based DFS visits nodes in reverse document order; normalise.
    candidates.sort(key=lambda n: n.start_byte)

    if not candidates:
        return None, ""

    if len(candidates) == 1:
        return candidates[0], ""

    # Multiple overloads: disambiguate by line
    if target_line is not None:
        target_0 = target_line - 1
        for node in candidates:
            if node.start_point[0] <= target_0 <= node.end_point[0]:
                return node, ""

    # Disambiguate by the parameter count of the new body
    if new_body:
        wanted = _parse_param_count(new_body, method_name)
        if wanted is not None:
            matching = [n for n in candidates if _node_param_count(n) == wanted]
            if len(matching) == 1:
                return matching[0], ""

    overload_lines = ", ".join(str(n.start_point[0] + 1) for n in candidates)
    return None, (
        f"Ambiguous method: '{method_name}' has {len(candidates)} overloads "
        f"(starting at lines {overload_lines}). "
        f"Re-call apply_ast_patch with target_line set to a line INSIDE the "
        f"specific overload you want to replace."
    )


def _node_param_count(node) -> int:
    """Count the formal parameters of a method/constructor node."""
    params = node.child_by_field_name("parameters")
    if params is None:
        return -1
    return sum(
        1 for child in params.named_children
        if child.type in ("formal_parameter", "spread_parameter")
    )


def _parse_param_count(new_body: str, method_name: str) -> Optional[int]:
    """Parse new_body as a class member and count its parameters.

    The wrapper class is named after the method so that constructor bodies
    (whose name must match the class name) parse correctly too.
    """
    tree = _parse_java(f"class {method_name} {{\n{new_body}\n}}")
    if tree is None:
        return None

    stack = [tree.root_node]
    while stack:
        node = stack.pop()
        if node.type in ("method_declaration", "constructor_declaration"):
            name_node = node.child_by_field_name("name")
            if name_node and name_node.text.decode("utf-8") == method_name:
                return _node_param_count(node)
        for child in node.children:
            stack.append(child)
    return None


def _collect_signatures(root_node) -> List[Tuple[str, int]]:
    """Collect (name, param_count) for every method/constructor in the tree."""
    signatures: List[Tuple[str, int]] = []
    stack = [root_node]
    while stack:
        node = stack.pop()
        if node.type in ("method_declaration", "constructor_declaration"):
            name_node = node.child_by_field_name("name")
            name = name_node.text.decode("utf-8") if name_node else "?"
            signatures.append((name, _node_param_count(node)))
        for child in node.children:
            stack.append(child)
    return signatures


def _check_integrity(
    original: str, patched: str, replaced_sig: Tuple[str, int]
) -> Tuple[bool, str]:
    """Verify that a method replacement did not corrupt the file.

    Rejects the patch when it:
      - introduces syntax errors,
      - deletes a method other than the exact one being replaced,
      - creates a duplicate method signature.
    """
    from collections import Counter

    original_tree = _parse_java(original)
    patched_tree = _parse_java(patched)
    if original_tree is None or patched_tree is None:
        return True, ""  # tree-sitter unavailable: nothing we can check

    if patched_tree.root_node.has_error and not original_tree.root_node.has_error:
        return False, (
            "Patch rejected: the resulting file is not syntactically valid Java. "
            "Check braces and provide the COMPLETE method (signature + body)."
        )

    before = Counter(_collect_signatures(original_tree.root_node))
    after = Counter(_collect_signatures(patched_tree.root_node))

    # The replaced node's exact signature may disappear (the new body may
    # legitimately change its parameter list), but nothing else may.
    deleted = before - after
    deleted[replaced_sig] -= 1
    truly_deleted = [sig for sig in deleted.elements()]
    if truly_deleted:
        pretty = ", ".join(f"{n}/{c} params" for n, c in truly_deleted)
        return False, (
            f"Patch rejected: it would DELETE method(s) [{pretty}] that it was "
            f"not asked to replace. Provide ONLY the replacement for "
            f"'{replaced_sig[0]}'."
        )

    duplicated = [
        sig for sig, count in after.items()
        if count > 1 and count > before.get(sig, 0)
    ]
    if duplicated:
        pretty = ", ".join(f"{n}/{c} params" for n, c in duplicated)
        return False, (
            f"Patch rejected: it would create a DUPLICATE method signature "
            f"[{pretty}], which does not compile in Java. Use target_line to "
            f"select the correct overload."
        )

    return True, ""


def _reindent(code: str, target_indent: str) -> str:
    """Re-indent code to match a target indentation level."""
    lines = code.splitlines()
    if not lines:
        return code

    # Detect current indentation from first non-blank line
    current_indent = ""
    for line in lines:
        stripped = line.lstrip()
        if stripped:
            current_indent = line[:len(line) - len(stripped)]
            break

    # Re-indent
    result_lines: List[str] = []
    for line in lines:
        if not line.strip():
            result_lines.append("")
        elif line.startswith(current_indent):
            result_lines.append(target_indent + line[len(current_indent):])
        else:
            result_lines.append(target_indent + line.lstrip())

    return "\n".join(result_lines)


def _compute_diff(original: str, patched: str, filename: str) -> str:
    """Compute a unified diff between original and patched content."""
    return "".join(difflib.unified_diff(
        original.splitlines(keepends=True),
        patched.splitlines(keepends=True),
        fromfile=f"a/{filename}",
        tofile=f"b/{filename}",
        n=3,
    ))


def apply_and_write(
    java_file: Path,
    method_name: str,
    new_body: str,
    target_line: Optional[int] = None,
    output_file: Optional[Path] = None,
) -> Tuple[bool, str]:
    """Apply a method replacement and write the result to disk.

    Args:
        java_file: Path to the original Java source file.
        method_name: Name of the method to replace.
        new_body: The new method source.
        target_line: Optional line hint.
        output_file: Where to write (defaults to overwriting java_file).

    Returns:
        (success, diff_string)
    """
    success, patched, diff = apply_method_replacement(
        java_file, method_name, new_body, target_line
    )

    if not success:
        print(f"  [ast_applier] FAILED: {diff}")
        return False, diff

    target = output_file or java_file
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text(patched, encoding="utf-8")

    print(f"  [ast_applier] Patched {java_file.name} → {target}")
    return True, diff
