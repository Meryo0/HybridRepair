"""AST-based method extraction using tree-sitter.

Provides robust Java method boundary detection and source extraction,
replacing the regex-based approach in pipeline/code_extractor.py.
This resolves P1 (broken patches from regex-based parsing).
"""

from __future__ import annotations

import importlib
from pathlib import Path
from typing import List, Optional, Tuple

# tree-sitter imports (lazy-loaded to allow graceful degradation)
_TS_AVAILABLE = False
_JAVA_LANGUAGE = None
_PARSER = None


def _ensure_tree_sitter() -> bool:
    """Lazily initialize tree-sitter parser. Returns True if available."""
    global _TS_AVAILABLE, _JAVA_LANGUAGE, _PARSER

    if _TS_AVAILABLE:
        return True

    try:
        import tree_sitter_java as tsjava
        from tree_sitter import Language, Parser

        _JAVA_LANGUAGE = Language(tsjava.language())
        _PARSER = Parser(_JAVA_LANGUAGE)
        _TS_AVAILABLE = True
        return True
    except ImportError:
        print("  [ast_extractor] WARNING: tree-sitter or tree-sitter-java not installed. "
              "Falling back to regex-based extraction.")
        return False


def _parse_java(source: str):
    """Parse Java source into a tree-sitter tree."""
    if not _ensure_tree_sitter():
        return None
    return _PARSER.parse(source.encode("utf-8"))


def find_method_bounds_ast(
    java_file: Path,
    target_line: int,
) -> Optional[Tuple[int, int]]:
    """Find the start and end line (1-indexed, inclusive) of the method at target_line.

    Uses tree-sitter AST traversal to find the innermost method_declaration
    or constructor_declaration that contains the target line.

    Args:
        java_file: Path to the Java source file.
        target_line: 1-indexed line number.

    Returns:
        (start_line_1, end_line_1) or None if no method found.
    """
    if not java_file.exists():
        return None

    source = java_file.read_text(encoding="utf-8", errors="replace")
    tree = _parse_java(source)
    if tree is None:
        # Fallback to regex-based extraction
        return _find_method_bounds_regex(source.splitlines(), target_line)

    target_0 = target_line - 1  # tree-sitter uses 0-indexed lines

    # Walk the AST to find the innermost method/constructor containing target_line
    best_node = None
    _find_enclosing_method(tree.root_node, target_0, best_container=[None])

    # Use iterative approach for better control
    best_node = _find_enclosing_method_iterative(tree.root_node, target_0)

    if best_node is None:
        return _find_method_bounds_regex(source.splitlines(), target_line)

    return best_node.start_point[0] + 1, best_node.end_point[0] + 1


def _find_enclosing_method_iterative(root_node, target_line_0: int):
    """Find the innermost method/constructor declaration containing the target line.

    Uses iterative DFS instead of recursion for robustness.
    """
    method_types = {"method_declaration", "constructor_declaration"}
    best = None
    stack = [root_node]

    while stack:
        node = stack.pop()
        if node.start_point[0] <= target_line_0 <= node.end_point[0]:
            if node.type in method_types:
                best = node
            # Continue searching children for a more specific match
            for child in node.children:
                stack.append(child)

    return best


def _find_enclosing_method(node, target_line_0: int, best_container: list):
    """Recursive helper — kept for reference but not used in production."""
    method_types = {"method_declaration", "constructor_declaration"}

    if node.start_point[0] <= target_line_0 <= node.end_point[0]:
        if node.type in method_types:
            best_container[0] = node
        for child in node.children:
            _find_enclosing_method(child, target_line_0, best_container)


def extract_method_at_line(
    java_file: Path,
    target_line: int,
    annotate_fault: bool = True,
) -> Tuple[str, int, int]:
    """Extract the full source of the method containing target_line.

    Args:
        java_file: Path to the Java source file.
        target_line: 1-indexed fault line.
        annotate_fault: If True, add a comment on the fault line.

    Returns:
        (method_source, start_line_1, end_line_1).
        Returns ("", 0, 0) if no method found.
    """
    if not java_file.exists():
        return f"// [ERROR] File not found: {java_file}", 0, 0

    source = java_file.read_text(encoding="utf-8", errors="replace")
    lines = source.splitlines()
    bounds = find_method_bounds_ast(java_file, target_line)

    if bounds is None:
        # Fallback: context window
        start = max(1, target_line - 10)
        end = min(len(lines), target_line + 10)
        bounds = (start, end)

    start_1, end_1 = bounds
    output_lines: List[str] = []
    for line_no in range(start_1, end_1 + 1):
        raw = lines[line_no - 1] if line_no <= len(lines) else ""
        if annotate_fault and line_no == target_line:
            raw = raw + "  // ◄ FIX THIS LINE (fault location)"
        output_lines.append(raw)

    return "\n".join(output_lines), start_1, end_1


def extract_method_context(
    java_file: Path,
    target_line: int,
) -> str:
    """Return the method containing target_line with line-number annotations.

    Compatible interface with pipeline/code_extractor.extract_method_context.
    """
    if not java_file.exists():
        return f"[ERROR] File not found: {java_file}"

    source = java_file.read_text(encoding="utf-8", errors="replace")
    lines = source.splitlines()
    bounds = find_method_bounds_ast(java_file, target_line)

    if bounds is None:
        start_1 = max(1, target_line - 10)
        end_1 = min(len(lines), target_line + 10)
    else:
        start_1, end_1 = bounds

    output_lines: List[str] = []
    for line_no in range(start_1, end_1 + 1):
        raw = lines[line_no - 1] if line_no <= len(lines) else ""
        if line_no == target_line:
            output_lines.append(
                f"// ► FAULT LOCATION (riga {line_no}) — modifica la riga seguente"
            )
        output_lines.append(f"[{line_no}] {raw}")

    return "\n".join(output_lines)


# ── Regex fallback (from pipeline/code_extractor.py) ─────────────────────────

import re

_METHOD_SIG_RE = re.compile(
    r"^\s*"
    r"(?:(?:public|protected|private|static|final|abstract|synchronized|native|strictfp)\s+)+"
    r"[\w<>\[\],.\\s]+?"  # return type
    r"\s+\w+\s*\("        # method name + opening paren
)

_CONTROL_FLOW_RE = re.compile(
    r"^\s*(?:if|else\s*if|else|for|while|do|try|catch|finally|switch|synchronized)\b"
)

_TYPE_DECL_RE = re.compile(
    r"^\s*(?:(?:public|protected|private|abstract|final|static)\s+)*"
    r"(?:class|interface|enum|@interface)\s+"
)


def _count_braces(line: str) -> int:
    """Return net brace count for a line (open minus close)."""
    stripped = re.sub(r'"(?:[^"\\]|\\.)*"', '""', line)
    stripped = re.sub(r"'(?:[^'\\]|\\.)+'", "''", stripped)
    stripped = re.sub(r"//.*$", "", stripped)
    return stripped.count("{") - stripped.count("}")


def _is_method_signature(line: str) -> bool:
    """Return True if the line looks like a real Java method/constructor signature."""
    if _CONTROL_FLOW_RE.match(line):
        return False
    if _TYPE_DECL_RE.match(line):
        return False
    return bool(_METHOD_SIG_RE.match(line))


def _find_method_bounds_regex(
    lines: List[str], target_line: int
) -> Optional[Tuple[int, int]]:
    """Regex-based fallback for method boundary detection.

    Kept from pipeline/code_extractor.py for when tree-sitter is not available.
    """
    target_idx = target_line - 1

    depth = 0
    method_start_idx: Optional[int] = None

    for idx in range(target_idx, -1, -1):
        depth -= _count_braces(lines[idx])

        if depth < 0:
            for back in range(idx, max(idx - 10, -1), -1):
                candidate = lines[back]
                if _is_method_signature(candidate):
                    method_start_idx = back
                    break
                if back < idx and "}" in candidate:
                    break
            if method_start_idx is not None:
                break
            depth = 0

    if method_start_idx is None:
        return None

    depth = 0
    method_end_idx: Optional[int] = None
    started = False

    for idx in range(method_start_idx, len(lines)):
        depth += _count_braces(lines[idx])
        if depth > 0:
            started = True
        if started and depth <= 0:
            method_end_idx = idx
            break

    if method_end_idx is None:
        method_end_idx = len(lines) - 1

    return method_start_idx + 1, method_end_idx + 1
