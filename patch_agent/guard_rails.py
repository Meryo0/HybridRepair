"""Static guard rails — cheap, deterministic checks on a passing patch.

Run AFTER the test suite passes and BEFORE the LLM judge (semantic_validator).
They target the recurring "plausible but wrong" patterns found in the manual
audit (AnalisiPatch/Analisi_1):

  H1 — encapsulation break (Csv-4): the patch makes a method return an
       internal mutable field directly where the original did not.
  H2 — undocumented exception (Csv-11, Jsoup-8): the patch introduces a
       `throw new SomeException(...)` that neither the original method nor
       the Javadoc @throws contract mentions.
  H4 — default-object shortcut (JacksonDatabind-95, Jsoup-8): the patch
       introduces a `return <constant/new Object>` escape hatch.
  H5 — silent element skipping (Csv-11): the patch adds `continue`
       statements, silently dropping elements the original processed.

H1/H2 become HARD violations only when the method's Javadoc makes the
contract explicit; otherwise they are soft warnings handed to the judge.
H4/H5 are always soft warnings (legitimate fixes use early returns and
null-skips too, e.g. Codec-17, Lang-39 and JacksonDatabind-13).
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path
from typing import Dict, List

from reasoner.semantic_validator import ModifiedMethod, collect_modified_methods


_MUTABLE_TYPES = (
    "Map", "HashMap", "LinkedHashMap", "TreeMap", "SortedMap",
    "List", "ArrayList", "LinkedList",
    "Set", "HashSet", "LinkedHashSet", "TreeSet", "SortedSet",
    "Collection", "Deque", "Queue", "StringBuilder", "StringBuffer",
)

_COPY_CONTRACT_RE = re.compile(r"\bcop(?:y|ied|ies)\b|\bsnapshot\b|\bdefensive\b", re.IGNORECASE)

_THROW_RE = re.compile(r"\bthrow\s+new\s+(\w+)\s*\(")

_RETURN_FIELD_RE = re.compile(r"\breturn\s+(?:this\.)?(\w+)\s*;")

_CONTINUE_RE = re.compile(r"\bcontinue\s*;")

_RETURN_DEFAULT_RE = re.compile(
    r"\breturn\s+("
    r"new\s+[\w.<>\[\]]+\s*\("          # return new Something(...)
    r"|[A-Z][A-Z0-9_]{2,}\b"            # return SOME_CONSTANT
    r")"
)


@dataclass
class GuardRailReport:
    """Outcome of the static guard-rail checks for one patch."""

    passed: bool = True
    """False when at least one hard violation was found."""

    violations: List[str] = field(default_factory=list)
    """Hard violations: the patch must be rejected and retried."""

    warnings: Dict[str, List[str]] = field(default_factory=dict)
    """Soft signals per method name, forwarded to the semantic judge."""

    def summary(self) -> str:
        parts = []
        if self.violations:
            parts.append("Violations:\n" + "\n".join(f"  - {v}" for v in self.violations))
        for name, warns in self.warnings.items():
            parts.append(f"Warnings for {name}:\n" + "\n".join(f"  - {w}" for w in warns))
        return "\n".join(parts) or "No findings."


def _normalised(code: str) -> str:
    return "\n".join(line.strip() for line in code.splitlines() if line.strip())


# Field declaration with optional generics (which may contain spaces,
# e.g. `private final Map<String, Integer> headerMap;`)
_FIELD_DECL_RE = re.compile(
    r"^\s*(?:(?:public|protected|private|static|final|transient|volatile)\s+)+"
    r"([\w.]+(?:\s*<[^;={}]*?>)?(?:\s*\[\s*\])*)"
    r"\s+(\w+)\s*[;=]",
    re.MULTILINE,
)


def _field_types(original_file: Path) -> Dict[str, str]:
    """Map field name → declared type for the class in original_file."""
    from reasoner.ingredient_forge import _strip_comments

    if not original_file.exists():
        return {}

    text = _strip_comments(
        original_file.read_text(encoding="utf-8", errors="replace")
    )
    types: Dict[str, str] = {}
    for m in _FIELD_DECL_RE.finditer(text):
        field_type = " ".join(m.group(1).split())  # collapse whitespace
        if field_type in ("class", "interface", "enum", "return", "new"):
            continue
        types[m.group(2)] = field_type
    return types


def _is_mutable_type(java_type: str) -> bool:
    base = java_type.split("<")[0].strip()
    return base in _MUTABLE_TYPES or java_type.endswith("[]")


def _check_method(
    method: ModifiedMethod,
    original_file: Path,
    report: GuardRailReport,
) -> None:
    original_norm = _normalised(method.original_source)
    patched_norm = _normalised(method.patched_source)
    label = f"{method.class_name}.{method.method_name}"

    def warn(message: str) -> None:
        report.warnings.setdefault(method.method_name, []).append(message)

    # ── H1: direct return of an internal mutable field ────────────────────────
    fields = _field_types(original_file) if original_file.exists() else {}
    for match in _RETURN_FIELD_RE.finditer(patched_norm):
        name = match.group(1)
        if match.group(0) in original_norm:
            continue  # the original already returned it — not introduced by the patch
        if name in fields and _is_mutable_type(fields[name]):
            message = (
                f"[{label}] the patch returns the internal mutable field "
                f"`{name}` ({fields[name]}) directly; the original method did not "
                f"expose it."
            )
            if _COPY_CONTRACT_RE.search(method.javadoc or ""):
                report.passed = False
                report.violations.append(
                    message + " The Javadoc requires a copy — encapsulation violation."
                )
            else:
                warn(message + " Possible encapsulation break.")

    # ── H2: new exception throw sites ─────────────────────────────────────────
    from collections import Counter

    original_throws = Counter(_THROW_RE.findall(original_norm))
    patched_throws = Counter(_THROW_RE.findall(patched_norm))
    for exc_type, count in patched_throws.items():
        if count <= original_throws.get(exc_type, 0):
            continue  # no new throw site for this type
        if exc_type in (method.javadoc or ""):
            continue  # documented in @throws
        if original_throws.get(exc_type, 0) == 0:
            # Brand-new exception type for this method
            message = (
                f"[{label}] the patch introduces `throw new {exc_type}(...)`, "
                f"which the original method never threw."
            )
            if method.javadoc:
                report.passed = False
                report.violations.append(
                    message + " The Javadoc does not document this exception — "
                              "contract violation."
                )
            else:
                warn(message + " Verify it is part of the intended API behaviour.")
        else:
            # Existing type, but the patch adds MORE throw sites: the method
            # now rejects inputs it previously accepted (cf. Csv-11).
            warn(
                f"[{label}] the patch adds {count - original_throws[exc_type]} "
                f"new `throw new {exc_type}(...)` site(s): the method now "
                f"throws in situations where the original did not. Verify the "
                f"Javadoc contract allows rejecting these inputs."
            )

    # ── H4: default-object / constant escape hatch ────────────────────────────
    original_defaults = Counter(
        m.group(0).strip() for m in _RETURN_DEFAULT_RE.finditer(original_norm)
    )
    patched_defaults = Counter(
        m.group(0).strip() for m in _RETURN_DEFAULT_RE.finditer(patched_norm)
    )
    for snippet, count in patched_defaults.items():
        if count <= original_defaults.get(snippet, 0):
            continue
        warn(
            f"[{label}] the patch introduces `{snippet}...` as a return value "
            f"in {count - original_defaults.get(snippet, 0)} place(s) where the "
            f"original method did not produce it. Verify this is the documented "
            f"behaviour and not a test-driven shortcut (e.g. returning a dummy "
            f"object or dropping type bounds)."
        )

    # ── H5: silent element skipping in loops ──────────────────────────────────
    original_continues = len(_CONTINUE_RE.findall(original_norm))
    patched_continues = len(_CONTINUE_RE.findall(patched_norm))
    if patched_continues > original_continues:
        warn(
            f"[{label}] the patch adds {patched_continues - original_continues} "
            f"`continue` statement(s): elements the original method processed "
            f"(or rejected explicitly) are now silently skipped. Verify the "
            f"contract allows dropping them."
        )


def check(original_root: Path, patched_dir: Path) -> GuardRailReport:
    """Run all static guard rails on a patched source tree.

    Args:
        original_root: The pristine source root (source_roots[0]).
        patched_dir: The patched copy produced by the agent.

    Returns:
        A GuardRailReport. `passed=False` means the patch violates an explicit
        Javadoc contract and should be rejected without involving the judge.
    """
    report = GuardRailReport()

    try:
        modified = collect_modified_methods(original_root, patched_dir)
    except Exception as exc:
        print(f"  [guard_rails] WARNING: could not diff sources ({exc}) — skipping")
        return report

    for method in modified:
        original_file = original_root / method.file_rel
        try:
            _check_method(method, original_file, report)
        except Exception as exc:
            print(f"  [guard_rails] WARNING: check failed on "
                  f"{method.method_name} ({exc}) — skipping method")

    if report.violations or report.warnings:
        print(f"  [guard_rails] {report.summary()}")

    return report
