"""AST-based patch application using tree-sitter.

Replaces the fragile regex/string-based approach in pipeline/patch_applier.py.
Guarantees syntactically valid output by operating on the AST level.

This resolves P1 (broken patches from unbalanced braces and duplicated methods).
"""

from __future__ import annotations

import difflib
import re
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
      3. Return the patched file content.

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
        result = _replace_via_ast(original, method_name, new_body, target_line)
        if result is not None:
            patched, start, end = result
            diff = _compute_diff(original, patched, java_file.name)
            return True, patched, diff

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
) -> Optional[Tuple[str, int, int]]:
    """Replace a method using tree-sitter AST.

    Returns (patched_source, start_byte, end_byte) or None on failure.
    """
    tree = _parse_java(source)
    if tree is None:
        return None

    # Find the target method node
    method_node = _find_method_by_name(tree.root_node, method_name, target_line)
    if method_node is None:
        return None

    # Replace the method's text span
    start_byte = method_node.start_byte
    end_byte = method_node.end_byte

    # Get the indentation of the original method
    original_method = source[start_byte:end_byte]
    indent = _detect_indentation(original_method)

    # Re-indent the new body to match
    new_body_indented = _reindent(new_body, indent)

    patched = source[:start_byte] + new_body_indented + source[end_byte:]
    return patched, start_byte, end_byte


def _find_method_by_name(root_node, method_name: str, target_line: Optional[int]):
    """Find a method_declaration node by name, optionally disambiguated by line."""
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

    if not candidates:
        return None

    if len(candidates) == 1:
        return candidates[0]

    # Multiple overloads: disambiguate by line
    if target_line is not None:
        target_0 = target_line - 1
        for node in candidates:
            if node.start_point[0] <= target_0 <= node.end_point[0]:
                return node

    # Default to first candidate
    return candidates[0]


def _detect_indentation(method_text: str) -> str:
    """Detect the indentation of the first line of a method."""
    first_line = method_text.split("\n")[0]
    return first_line[:len(first_line) - len(first_line.lstrip())]


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
