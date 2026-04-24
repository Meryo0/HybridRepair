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


def _extract_method_name(signature: str) -> str | None:
    """Extract the bare method name from a Java signature line."""
    m = re.search(r"(\w+)\s*\(", signature)
    return m.group(1) if m else None


def _get_method_signature_at_line(lines: List[str], line_1_indexed: int) -> str | None:
    """Return the stripped signature line for the method containing line_1_indexed."""
    bounds = _find_method_bounds(lines, line_1_indexed)
    if not bounds:
        return None
    start_1, _ = bounds
    return lines[start_1 - 1].strip() if start_1 - 1 < len(lines) else None


def _find_callers_in_file(
    lines: List[str],
    callee_method_name: str,
    exclude_line: int | None = None,
) -> List[tuple[int, int, int]]:
    """Find all methods in the file that invoke `callee_method_name`.

    Returns a list of (caller_start_1, caller_end_1, call_site_line_1) tuples,
    deduplicated by caller method bounds.
    """
    seen_bounds: set[tuple[int, int]] = set()
    callers: List[tuple[int, int, int]] = []

    for i, line in enumerate(lines):
        if _is_method_signature(line):
            continue
        if f"{callee_method_name}(" not in line and f"{callee_method_name} (" not in line:
            continue

        call_site = i + 1
        if exclude_line is not None and call_site == exclude_line:
            continue

        bounds = _find_method_bounds(lines, call_site)
        if not bounds:
            continue
        start_1, end_1 = bounds

        # Don't include the callee method itself as its own caller
        if exclude_line is not None and start_1 <= exclude_line <= end_1:
            continue

        key = (start_1, end_1)
        if key in seen_bounds:
            continue
        seen_bounds.add(key)
        callers.append((start_1, end_1, call_site))

    return callers


def extract_caller_context(
    java_file: Path,
    callee_method_signature: str,
    depth: int = 2,
    max_callers_per_level: int = 2,
) -> tuple[str, int, int]:
    """Find methods that (transitively) call the callee within the same file.

    Walks up the call graph up to `depth` levels. Level 1 returns the direct
    caller(s); level 2 returns the caller-of-caller(s). All found callers are
    concatenated and annotated. The returned (start, end) refer to the FIRST
    direct caller for backward compatibility with existing callers of this API.

    Args:
        java_file: Path to the Java source file.
        callee_method_signature: Signature of the buggy method (fault line's method).
        depth: How many levels of caller chain to traverse (default 2).
        max_callers_per_level: Cap to avoid prompt explosion.

    Returns:
        (combined_source_text, first_level1_start, first_level1_end).
        Empty string and (0, 0) if no caller found.
    """
    if not java_file.exists():
        return "", 0, 0

    lines = java_file.read_text(encoding="utf-8", errors="replace").splitlines()

    callee_name = _extract_method_name(callee_method_signature)
    if not callee_name:
        return "", 0, 0

    # Level 1: direct callers of the buggy method
    level1_callers = _find_callers_in_file(lines, callee_name)[:max_callers_per_level]
    if not level1_callers:
        return "", 0, 0

    output_blocks: List[str] = []
    first_level1_start, first_level1_end = 0, 0

    def _render_caller(start_1: int, end_1: int, call_site: int, level: int) -> str:
        block_lines = lines[start_1 - 1 : end_1]
        annotated: List[str] = []
        for j, raw in enumerate(block_lines):
            if j + start_1 == call_site:
                tag = "◄ CALLER" if level == 1 else f"◄ CALLER (level {level})"
                annotated.append(raw + f"  // {tag} — the fix might belong here")
            else:
                annotated.append(raw)
        return "\n".join(annotated)

    # Track visited caller bounds to avoid cycles
    visited: set[tuple[int, int]] = set()

    # Render level 1
    for start_1, end_1, call_site in level1_callers:
        if (start_1, end_1) in visited:
            continue
        visited.add((start_1, end_1))
        if first_level1_start == 0:
            first_level1_start, first_level1_end = start_1, end_1
        output_blocks.append(
            f"// LEVEL 1 CALLER (lines {start_1}-{end_1})\n"
            + _render_caller(start_1, end_1, call_site, 1)
        )

    # Level 2+: callers of the level-1 callers
    current_level_callers = level1_callers
    for level in range(2, depth + 1):
        next_level: List[tuple[int, int, int]] = []
        for start_1, _end_1, _cs in current_level_callers:
            caller_sig = _get_method_signature_at_line(lines, start_1)
            if not caller_sig:
                continue
            caller_name = _extract_method_name(caller_sig)
            if not caller_name or caller_name == callee_name:
                continue
            upper = _find_callers_in_file(lines, caller_name, exclude_line=start_1)
            for up_start, up_end, up_cs in upper:
                if (up_start, up_end) in visited:
                    continue
                visited.add((up_start, up_end))
                next_level.append((up_start, up_end, up_cs))
                if len(next_level) >= max_callers_per_level:
                    break
            if len(next_level) >= max_callers_per_level:
                break

        if not next_level:
            break

        for start_1, end_1, call_site in next_level:
            output_blocks.append(
                f"// LEVEL {level} CALLER (lines {start_1}-{end_1})\n"
                + _render_caller(start_1, end_1, call_site, level)
            )
        current_level_callers = next_level

    combined = "\n\n".join(output_blocks)
    return combined, first_level1_start, first_level1_end


# ── Sibling-method pattern matching (S2b) ────────────────────────────────────


def find_sibling_methods_with_pattern(
    java_file: Path,
    pattern: str,
    exclude_line: int | None = None,
    max_matches: int = 3,
) -> List[tuple[str, int, int]]:
    """Find other methods in the same file that contain a given literal pattern.

    Used to detect bugs that span multiple methods with the same buggy idiom
    (e.g. Jsoup's `parentNode.childNodes` access repeated in siblingNodes(),
    previousSibling(), nextSibling()).

    Args:
        java_file: Path to the Java source file.
        pattern: Literal substring to search for on code lines.
        exclude_line: A 1-indexed line to exclude (typically the fault line,
                      so we don't return the method that IS the primary fault).
        max_matches: Maximum number of sibling methods to return.

    Returns:
        A list of (method_source_text, start_line, end_line) tuples.
    """
    if not java_file.exists():
        return []

    lines = java_file.read_text(encoding="utf-8", errors="replace").splitlines()

    # Determine bounds of the fault method so we can exclude it
    fault_method_bounds: tuple[int, int] | None = None
    if exclude_line is not None:
        fault_method_bounds = _find_method_bounds(lines, exclude_line)

    seen: set[tuple[int, int]] = set()
    hits: List[tuple[str, int, int]] = []

    # Pre-compute the "bare" symbol from the pattern (e.g. pattern `parent(` →
    # symbol `parent`) so we can skip trivial getters named after the pattern.
    pattern_symbol = pattern.rstrip("(").rstrip(".").strip()

    for i, line in enumerate(lines):
        if pattern not in line:
            continue
        hit_line = i + 1
        # Skip if inside the fault method itself
        if fault_method_bounds and fault_method_bounds[0] <= hit_line <= fault_method_bounds[1]:
            continue
        bounds = _find_method_bounds(lines, hit_line)
        if not bounds:
            continue
        start_1, end_1 = bounds
        if (start_1, end_1) in seen:
            continue
        if fault_method_bounds and (start_1, end_1) == fault_method_bounds:
            continue

        method_src_lines = lines[start_1 - 1 : end_1]

        # Filter out trivial getters/setters: short methods that are just
        # `return foo;` or `this.x = y;`. These are NOT buggy siblings — they
        # just happen to contain the literal pattern as part of their name.
        if _is_trivial_accessor(method_src_lines, pattern_symbol):
            continue

        seen.add((start_1, end_1))

        annotated: List[str] = []
        for j, raw in enumerate(method_src_lines):
            if j + start_1 == hit_line:
                annotated.append(raw + "  // ◄ SAME PATTERN AS FAULT — likely needs the same fix")
            else:
                annotated.append(raw)

        hits.append(("\n".join(annotated), start_1, end_1))
        if len(hits) >= max_matches:
            break

    return hits


_RETURN_ONLY_RE = re.compile(r"^\s*return\s+[\w.$()]+\s*;\s*$")
_ASSIGN_ONLY_RE = re.compile(r"^\s*(?:this\.)?\w+\s*=\s*[\w.$()]+\s*;\s*$")


def _is_trivial_accessor(method_lines: List[str], pattern_symbol: str) -> bool:
    """Return True if the method body is a trivial getter/setter.

    Heuristics:
      - The method declares itself by the same name as pattern_symbol
        (i.e. `public Foo parent()` when pattern is `parent(`), AND
      - The method has at most one non-blank non-brace body line, AND
      - That body line is either `return X;` or `x = Y;`.

    Trivial accessors are never the real sibling fix target — they just
    happen to contain the pattern literally.
    """
    if not method_lines or not pattern_symbol:
        return False
    # Signature line = first non-blank, non-comment, non-annotation line
    sig = ""
    for ln in method_lines:
        s = ln.strip()
        if not s or s.startswith(("@", "//", "/*", "*")):
            continue
        sig = s
        break
    sig_match = re.search(r"\b(\w+)\s*\(", sig)
    if not sig_match:
        return False
    method_name = sig_match.group(1)
    if method_name != pattern_symbol:
        return False

    body_lines = [
        l.strip() for l in method_lines
        if l.strip() and l.strip() not in ("{", "}")
        and not l.strip().startswith(("@", "//", "/*", "*"))
    ]
    # 1st is the signature; 2nd (if any) is the body. Accept up to 2 body lines.
    body = body_lines[1:]
    if len(body) > 2:
        return False
    for b in body:
        if b.endswith("{") or b == "}":
            continue
        if _RETURN_ONLY_RE.match(b) or _ASSIGN_ONLY_RE.match(b):
            return True
    return False


# Keywords to reject as pattern roots. Excludes "this", "super", "new" because
# `this.field`, `super.method()`, `new Foo(...)` are legitimate specific patterns.
_CONTROL_FLOW_KEYWORDS = {
    "if", "else", "for", "while", "do", "switch", "case", "return",
    "throw", "try", "catch", "finally", "synchronized",
    "assert", "break", "continue",
}


def extract_fault_line_pattern(java_file: Path, fault_line: int) -> str:
    """Extract a short, searchable code token from the fault line.

    Heuristic: prefer the first field-access chain (foo.bar) on the fault line,
    then a method invocation on a specific variable. Rejects:
      - control flow keywords (if, while, ...) which would match everywhere
      - very short/generic tokens (< 4 chars)
    Strips comments and string literals first.
    """
    if not java_file.exists():
        return ""
    lines = java_file.read_text(encoding="utf-8", errors="replace").splitlines()
    if not (1 <= fault_line <= len(lines)):
        return ""
    raw = lines[fault_line - 1]
    cleaned = re.sub(r'"(?:[^"\\]|\\.)*"', '""', raw)
    cleaned = re.sub(r"//.*$", "", cleaned)

    # 1. Prefer a field access chain like "parentNode.childNodes" — very specific,
    #    unlikely to have false positives.
    chain_match = re.search(r"\b([a-zA-Z_][\w]*\.[\w.]+)", cleaned)
    if chain_match:
        candidate = chain_match.group(1)
        root = candidate.split(".")[0]
        if root not in _CONTROL_FLOW_KEYWORDS and len(candidate) >= 4:
            return candidate

    # 2. Fall back to method invocation, but skip control flow.
    for call_match in re.finditer(r"\b([a-zA-Z_][\w]*)\s*\(", cleaned):
        name = call_match.group(1)
        if name in _CONTROL_FLOW_KEYWORDS:
            continue
        if len(name) < 4:
            continue
        return name + "("

    return ""

