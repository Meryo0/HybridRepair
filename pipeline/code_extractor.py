"""Extract method-level context from Java source files.

Provides annotated code snippets around fault locations for use in
LLM repair prompts.
"""

from __future__ import annotations

import re
from pathlib import Path
from typing import List


# Regex that matches a Java method/constructor opening.
# Requires at least one access/modifier keyword OR explicit return type + name + '('
_METHOD_SIG_RE = re.compile(
    r"^\s*"
    r"(?:(?:public|protected|private|static|final|abstract|synchronized|native|strictfp)\s+)+"
    r"[\w<>\[\],.\s]+?"   # return type
    r"\s+\w+\s*\("        # method name + opening paren
)

# Control-flow keywords that open blocks (not method bodies)
_CONTROL_FLOW_RE = re.compile(
    r"^\s*(?:if|else\s*if|else|for|while|do|try|catch|finally|switch|synchronized)\b"
)

# Class/interface/enum/annotation declarations
_TYPE_DECL_RE = re.compile(
    r"^\s*(?:(?:public|protected|private|abstract|final|static)\s+)*"
    r"(?:class|interface|enum|@interface)\s+"
)


def _count_braces(line: str) -> int:
    """Return net brace count for a line (open minus close).

    Strips string literals and line comments before counting.
    """
    stripped = re.sub(r'"(?:[^"\\]|\\.)*"', '""', line)
    stripped = re.sub(r"'(?:[^'\\]|\\.)'", "''", stripped)
    stripped = re.sub(r"//.*$", "", stripped)
    return stripped.count("{") - stripped.count("}")


def _is_method_signature(line: str) -> bool:
    """Return True only if the line looks like a real Java method/constructor signature."""
    if _CONTROL_FLOW_RE.match(line):
        return False
    if _TYPE_DECL_RE.match(line):
        return False
    return bool(_METHOD_SIG_RE.match(line))


def _find_method_bounds(lines: List[str], target_line: int) -> tuple[int, int] | None:
    """Find the start and end (1-indexed) of the method containing target_line.

    Algorithm:
      Phase 1 – Walk backwards from target_line, tracking brace depth (inverted).
                When depth goes negative we've hit an unmatched '{', which opens an
                enclosing block.  We then scan back up to 10 lines looking for a
                real method signature (not a control-flow or type-declaration opener).
                If found → that is our method start.  If not found → continue outward.
      Phase 2 – Walk forward from the method start to find the matching '}' by
                standard brace counting.

    Returns (start_1, end_1) as 1-indexed inclusive line numbers, or None.
    """
    target_idx = target_line - 1  # 0-indexed

    depth = 0
    method_start_idx: int | None = None

    for idx in range(target_idx, -1, -1):
        depth -= _count_braces(lines[idx])  # inverted because we go backwards

        if depth < 0:
            # Crossed an unmatched '{' → search nearby lines for a method sig.
            for back in range(idx, max(idx - 10, -1), -1):
                candidate = lines[back]
                if _is_method_signature(candidate):
                    method_start_idx = back
                    break
                # Stop if we pass another closing brace (we've left the block)
                if back < idx and "}" in candidate:
                    break
            if method_start_idx is not None:
                break
            depth = 0  # reset and keep searching outward

    if method_start_idx is None:
        return None

    # Phase 2: find closing brace of the method
    depth = 0
    method_end_idx: int | None = None
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

    return method_start_idx + 1, method_end_idx + 1  # back to 1-indexed


def extract_method_context(
    java_file: Path,
    target_line: int,
    context_lines: int = 10,
) -> str:
    """Return the Java method containing target_line, annotated with line numbers.

    The target_line is annotated with '// ← FAULT LOCATION'.
    If the method cannot be found, falls back to a context window of
    ±context_lines around target_line.

    Args:
        java_file:     Absolute path to the Java source file.
        target_line:   1-indexed line number of the fault location.
        context_lines: Fallback context window half-size.

    Returns:
        A string with each line prefixed by its line number, e.g.:
            [780]         return null;  // ← FAULT LOCATION
    """
    if not java_file.exists():
        return f"[ERROR] File not found: {java_file}"

    lines = java_file.read_text(encoding="utf-8", errors="replace").splitlines()
    total = len(lines)

    bounds = _find_method_bounds(lines, target_line)

    if bounds is not None:
        start_1, end_1 = bounds
    else:
        # Fallback: ±context_lines window
        start_1 = max(1, target_line - context_lines)
        end_1 = min(total, target_line + context_lines)

    output_lines: List[str] = []
    for line_no in range(start_1, end_1 + 1):
        raw = lines[line_no - 1] if line_no <= total else ""
        if line_no == target_line:
            # Marker on a SEPARATE line so the actual source line stays clean.
            # The LLM must NOT reproduce this marker in the diff context.
            output_lines.append(f"// ► FAULT LOCATION (riga {line_no}) — modifica la riga seguente")
        output_lines.append(f"[{line_no}] {raw}")

    return "\n".join(output_lines)


def extract_full_file_context(java_file: Path, fault_lines: List[int]) -> str:
    """Return the full Java file with fault lines annotated.

    Useful as a fallback when method boundary detection fails completely.

    Args:
        java_file:   Absolute path to the Java source file.
        fault_lines: List of 1-indexed line numbers to annotate.

    Returns:
        Full file content with each line prefixed by its line number.
        Fault lines are annotated with '// ← FAULT LOCATION'.
    """
    if not java_file.exists():
        return f"[ERROR] File not found: {java_file}"

    lines = java_file.read_text(encoding="utf-8", errors="replace").splitlines()
    fault_set = set(fault_lines)
    output_lines: List[str] = []

    for line_no, raw in enumerate(lines, start=1):
        annotation = "  // ← FAULT LOCATION" if line_no in fault_set else ""
        output_lines.append(f"[{line_no}] {raw}{annotation}")

    return "\n".join(output_lines)


def extract_method_source(
    java_file: Path,
    target_line: int,
    context_lines: int = 10,
    annotate_fault: bool = True,
) -> tuple[str, int, int]:
    """Return clean Java method source (no line-number prefixes) for LLM code generation.

    Unlike extract_method_context(), the returned text is pure Java that the
    LLM can copy-and-modify and the result can be inserted back into the file.

    Args:
        java_file:      Absolute path to the Java source file.
        target_line:    1-indexed fault line number.
        context_lines:  Fallback window half-size if method bounds not found.
        annotate_fault: If True, append a single-line comment on the fault line
                        so the LLM knows which line to fix. The comment is
                        recognisable enough to strip before diffing.

    Returns:
        A tuple (source_text, start_line, end_line) where start_line/end_line
        are 1-indexed inclusive line numbers of the extracted region.
    """
    if not java_file.exists():
        return f"// [ERROR] File not found: {java_file}", 0, 0

    lines = java_file.read_text(encoding="utf-8", errors="replace").splitlines()
    total = len(lines)

    bounds = _find_method_bounds(lines, target_line)
    if bounds is not None:
        start_1, end_1 = bounds
    else:
        start_1 = max(1, target_line - context_lines)
        end_1 = min(total, target_line + context_lines)

    output_lines: List[str] = []
    for line_no in range(start_1, end_1 + 1):
        raw = lines[line_no - 1] if line_no <= total else ""
        if annotate_fault and line_no == target_line:
            raw = raw + "  // ◄ FIX THIS LINE (NPE manifests here)"
        output_lines.append(raw)

    return "\n".join(output_lines), start_1, end_1

