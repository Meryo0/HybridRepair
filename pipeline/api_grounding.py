"""API grounding — extract real method/constructor signatures from Java source
to combat LLM hallucination after a COMPILE_ERROR.

When javac reports `cannot find symbol: method foo()`, we parse the error to
identify the referenced class and the attempted symbol, then extract the REAL
public/protected methods of that class from the source tree. The result is
injected into the retry feedback so the LLM can pick a valid API instead of
re-hallucinating.
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path
from typing import List


# ── Compile-error parsing ────────────────────────────────────────────────────

# javac formats observed on Defects4J bugs:
#   Foo.java:123: error: cannot find symbol
#               if (opt.getOptionGroup() != null)    <-- code line (NOISE)
#                      ^                              <-- caret line (NOISE)
#     symbol:   method getOptionGroup()
#     location: variable opt of type org.apache.commons.cli.Option
#
#   Bar.java:55: error: constructor Var in class Var cannot be applied to given types;
#     required: String,Node,...
#     found:    String,...
#
# Previous mega-regex was too strict: it required `symbol:` to be directly
# after `cannot find symbol\n`, but real javac inserts 2 noise lines in
# between. We now parse per-error-block instead.

# Symbol signature inside a block:  "symbol:   method createDefault(String)"
#   - name captured as \S+? (stops at '(' if present)
#   - optional parens, which may contain any types (not just empty)
_SYMBOL_LINE_RE = re.compile(
    r"symbol:\s*(method|variable|class|constructor)\s+"
    r"(\S+?)(?:\([^)\n]*\))?\s*$",
    re.IGNORECASE | re.MULTILINE,
)

# Location: variable X of type FQCN  (e.g. "variable opt of type Option")
_LOCATION_VAR_RE = re.compile(
    r"location:\s*(?:variable|class|interface|method)\s+\S+\s+of type\s+([\w.$]+)",
    re.IGNORECASE,
)

# Location: class FQCN / interface FQCN  (e.g. "class Var")
_LOCATION_CLASS_RE = re.compile(
    r"location:\s*(?:class|interface)\s+([\w.$]+)",
    re.IGNORECASE,
)

_CONSTRUCTOR_MISMATCH_RE = re.compile(
    r"constructor\s+(\w+)\s+in\s+(?:class|interface)\s+([\w.$]+)\s+cannot be applied",
    re.IGNORECASE,
)

_METHOD_MISMATCH_RE = re.compile(
    r"method\s+(\w+)\s+in\s+(?:class|interface)\s+([\w.$]+)\s+cannot be applied",
    re.IGNORECASE,
)


@dataclass
class CompileErrorSymbol:
    """A parsed compile error referencing a missing/mismatched symbol."""
    symbol_name: str      # e.g. "getOptionGroup" or "Var"
    class_fqcn: str       # e.g. "org.apache.commons.cli.Option"
    kind: str             # "method" | "constructor" | "variable" | "class"


def _split_error_blocks(javac_output: str) -> List[str]:
    """Split javac output into per-error blocks.

    A block starts at a line containing 'cannot find symbol' and extends until
    the next such line (or end of input). This avoids the common pitfall of
    regex patterns that span multiple errors.
    """
    lines = javac_output.splitlines()
    blocks: List[str] = []
    current: List[str] = []
    in_block = False
    for ln in lines:
        if "cannot find symbol" in ln:
            if current:
                blocks.append("\n".join(current))
            current = [ln]
            in_block = True
        elif in_block:
            # Stop the block if we hit a clearly unrelated line (a new file
            # reference or the Maven/ant footer). For safety we keep
            # accumulating — the next 'cannot find symbol' will flush.
            current.append(ln)
    if current:
        blocks.append("\n".join(current))
    return blocks


def parse_compile_errors(javac_output: str) -> List[CompileErrorSymbol]:
    """Extract every hallucinated symbol reference from javac output.

    Returns a deduplicated list of CompileErrorSymbol. Handles the real javac
    layout where a code line + caret line appear between 'cannot find symbol'
    and the 'symbol:' / 'location:' diagnostic pair.
    """
    results: List[CompileErrorSymbol] = []
    seen: set[tuple[str, str]] = set()

    def _add(symbol: str, fqcn: str, kind: str) -> None:
        key = (symbol, fqcn)
        if key in seen:
            return
        seen.add(key)
        results.append(CompileErrorSymbol(symbol, fqcn, kind))

    for block in _split_error_blocks(javac_output):
        sym_m = _SYMBOL_LINE_RE.search(block)
        if not sym_m:
            continue
        kind = sym_m.group(1).lower()
        sym_name = sym_m.group(2)
        loc_m = _LOCATION_VAR_RE.search(block) or _LOCATION_CLASS_RE.search(block)
        if not loc_m:
            continue
        _add(sym_name, loc_m.group(1), kind)

    for m in _CONSTRUCTOR_MISMATCH_RE.finditer(javac_output):
        _add(m.group(1), m.group(2), "constructor")
    for m in _METHOD_MISMATCH_RE.finditer(javac_output):
        _add(m.group(1), m.group(2), "method")

    return results


# ── Source-based API extraction ───────────────────────────────────────────────

# Java method declaration (public/protected; any return type; any params).
# Non-greedy on the parameter list to avoid eating the whole file.
_PUBLIC_METHOD_RE = re.compile(
    r"^\s*"
    r"(?:@\w+(?:\([^)]*\))?\s*)*"                     # optional annotations
    r"(public|protected)\s+"
    r"(?:static\s+|final\s+|abstract\s+|synchronized\s+|native\s+|strictfp\s+)*"
    r"(?:<[^>]+>\s+)?"                                # generic params
    r"([\w<>\[\],.\s?]+?)\s+"                         # return type
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


def _class_to_file_path(fqcn: str, source_root: Path) -> Path:
    top_level = fqcn.split("$")[0]
    relative = top_level.replace(".", "/") + ".java"
    return source_root / relative


def _resolve_class_file(fqcn: str, source_roots: List[Path]) -> Path | None:
    for root in source_roots:
        candidate = _class_to_file_path(fqcn, root)
        if candidate.exists():
            return candidate
    # Fallback: rglob by simple name
    simple = fqcn.split(".")[-1].split("$")[0] + ".java"
    for root in source_roots:
        hits = list(root.rglob(simple))
        if hits:
            return hits[0]
    return None


def extract_public_methods(java_file: Path, class_simple_name: str | None = None) -> List[str]:
    """Return a list of public/protected method signatures from the file.

    Each entry is a one-line human-readable signature like
    `public String getOpt()` or `protected void setArgs(int num)`.
    """
    if not java_file.exists():
        return []

    text = java_file.read_text(encoding="utf-8", errors="replace")

    # Remove block comments so javadoc doesn't confuse the regex
    text_no_comments = re.sub(r"/\*.*?\*/", "", text, flags=re.DOTALL)
    # Remove line comments
    text_no_comments = re.sub(r"//.*$", "", text_no_comments, flags=re.MULTILINE)

    signatures: List[str] = []
    for m in _PUBLIC_METHOD_RE.finditer(text_no_comments):
        access = m.group(1)
        ret_type = m.group(2).strip()
        name = m.group(3)
        params = m.group(4).strip()
        # Skip false positives: return type == keyword like "class", "interface"
        if ret_type in {"class", "interface", "enum", "record"}:
            continue
        # Skip if it's the class declaration mistaken for a method
        if class_simple_name and name == class_simple_name and not ret_type:
            continue
        signatures.append(f"{access} {ret_type} {name}({params})")

    # Constructors (if class_simple_name given)
    if class_simple_name:
        for m in _PUBLIC_CONSTRUCTOR_RE.finditer(text_no_comments):
            access = m.group(1)
            name = m.group(2)
            params = m.group(3).strip()
            if name == class_simple_name:
                signatures.append(f"{access} {name}({params})  // constructor")

    # Deduplicate while preserving order
    seen: set[str] = set()
    unique: List[str] = []
    for s in signatures:
        if s not in seen:
            seen.add(s)
            unique.append(s)

    return unique


def _rank_candidates(target_name: str, candidates: List[str]) -> List[str]:
    """Sort candidates by lexical similarity to target_name (simple prefix+substring)."""
    target_lower = target_name.lower()

    def score(sig: str) -> int:
        name_match = re.search(r"\b(\w+)\s*\(", sig)
        if not name_match:
            return 999
        n = name_match.group(1).lower()
        if n == target_lower:
            return 0
        if n.startswith(target_lower) or target_lower.startswith(n):
            return 1
        if target_lower in n or n in target_lower:
            return 2
        # Levenshtein-ish: count common prefix characters
        common = 0
        for a, b in zip(target_lower, n):
            if a == b:
                common += 1
            else:
                break
        return 10 - common

    return sorted(candidates, key=score)


@dataclass
class APIHint:
    """A resolved API-grounding hint ready to embed in a retry prompt."""
    symbol: CompileErrorSymbol
    resolved_file: Path | None
    real_api: List[str] = field(default_factory=list)


def build_api_hints_from_compile_error(
    javac_output: str,
    source_roots: List[Path],
    max_suggestions: int = 12,
) -> List[APIHint]:
    """Parse javac output and return API-grounding hints for each missing symbol.

    For each `cannot find symbol` error, resolves the target class source file,
    extracts real public/protected signatures, and keeps the top-K most similar.
    """
    hints: List[APIHint] = []
    for symbol in parse_compile_errors(javac_output):
        file_path = _resolve_class_file(symbol.class_fqcn, source_roots)
        hint = APIHint(symbol=symbol, resolved_file=file_path, real_api=[])
        if file_path is not None:
            simple_name = symbol.class_fqcn.split(".")[-1].split("$")[0]
            sigs = extract_public_methods(file_path, class_simple_name=simple_name)
            sigs = _rank_candidates(symbol.symbol_name, sigs)[:max_suggestions]
            hint.real_api = sigs
        hints.append(hint)
    return hints


def format_api_hints(hints: List[APIHint]) -> str:
    """Render API hints as a human-readable block for the LLM prompt."""
    if not hints:
        return ""
    blocks: List[str] = []
    for h in hints:
        sym = h.symbol
        header = f"### ❌ `{sym.symbol_name}` not found on `{sym.class_fqcn}`"
        if not h.real_api:
            body = "(unable to locate the class source — double-check the API name)"
        else:
            api_list = "\n".join(f"  - {s}" for s in h.real_api)
            body = f"Real API available on `{sym.class_fqcn}`:\n{api_list}"
        blocks.append(f"{header}\n{body}")
    return (
        "## API GROUNDING (do NOT hallucinate — use ONLY the signatures below)\n\n"
        + "\n\n".join(blocks)
    )
