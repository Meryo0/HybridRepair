"""Classify a Defects4J bug by analyzing its stack trace / failing tests.

Different bug categories need DIFFERENT prompt framing:
  - NPE:       null-safety focus (current default)
  - LOGIC:     assertion / comparison failure — focus on expected vs actual
  - NUMERIC:   arithmetic / NaN / overflow — focus on numeric invariants
  - BOUNDS:    index / array / collection size errors
  - INVARIANT: IllegalState / IllegalArgument — focus on preconditions
  - GENERIC:   fallback when none of the above match

The classifier is intentionally SIMPLE and DETERMINISTIC so it becomes
part of the prompt build pipeline without side effects.
"""

from __future__ import annotations

import re
from dataclasses import dataclass
from typing import Optional


# Ordered: first match wins. NPE is last so structural errors (assertion, numeric)
# take precedence when BOTH an NPE and an assertion failure appear in the trace.
BUG_TYPE_NPE = "NPE"
BUG_TYPE_LOGIC = "LOGIC"
BUG_TYPE_NUMERIC = "NUMERIC"
BUG_TYPE_BOUNDS = "BOUNDS"
BUG_TYPE_INVARIANT = "INVARIANT"
BUG_TYPE_GENERIC = "GENERIC"


@dataclass
class BugClassification:
    bug_type: str
    reason: str
    expected: Optional[str] = None  # extracted expected value (if LOGIC)
    actual: Optional[str] = None    # extracted actual value (if LOGIC)


_ASSERTION_VALUE_RE = re.compile(
    r"expected[:\s]*[<\[]?([^>\]\n]+?)[>\]]?\s*(?:but|was)[:\s]*[<\[]?([^>\]\n]+)",
    re.IGNORECASE,
)

_COMPARISON_FAILURE_RE = re.compile(
    r"expected[:\s]*<([^>]+)>\s*but was[:\s]*<([^>]+)>",
    re.IGNORECASE,
)


def classify_bug(stack_traces: str, failing_tests: Optional[list] = None) -> BugClassification:
    """Classify a bug from its stack trace text.

    Args:
        stack_traces: The raw test output containing exception/assertion details.
        failing_tests: Optional list of failing test dicts (unused for now, kept
                       for future heuristics based on test names).

    Returns:
        A BugClassification describing the dominant failure category.
    """
    if not stack_traces:
        return BugClassification(BUG_TYPE_GENERIC, "empty stack trace")

    st_lower = stack_traces.lower()

    # LOGIC — assertion failures. Check BEFORE numeric because NaN assertions
    # are better handled by the LOGIC prompt that shows expected vs actual.
    if (
        "assertionerror" in st_lower
        or "comparisonfailure" in st_lower
        or "assertionfailederror" in st_lower
        or re.search(r"\bexpected[:\s][^\n]*\bbut\b", st_lower)
    ):
        # Try to extract expected / actual
        m = _COMPARISON_FAILURE_RE.search(stack_traces)
        if not m:
            m = _ASSERTION_VALUE_RE.search(stack_traces)
        expected, actual = (None, None)
        if m:
            expected = m.group(1).strip()[:80]
            actual = m.group(2).strip()[:80]
        return BugClassification(
            BUG_TYPE_LOGIC,
            "test assertion failed (expected vs actual mismatch)",
            expected=expected,
            actual=actual,
        )

    # NUMERIC — NaN, Infinity, ArithmeticException, numeric overflow
    if (
        "arithmeticexception" in st_lower
        or "numberformatexception" in st_lower
        or re.search(r"\bNaN\b", stack_traces)
        or re.search(r"\bInfinity\b", stack_traces)
        or "division by zero" in st_lower
    ):
        return BugClassification(
            BUG_TYPE_NUMERIC,
            "numeric exception or NaN/Infinity observed",
        )

    # BOUNDS — array / index / collection-size issues
    if (
        "indexoutofboundsexception" in st_lower
        or "arrayindexoutofboundsexception" in st_lower
        or "stringindexoutofboundsexception" in st_lower
        or "negativearraysizeexception" in st_lower
    ):
        return BugClassification(
            BUG_TYPE_BOUNDS,
            "index / array bounds violation",
        )

    # INVARIANT — IllegalState / IllegalArgument / UnsupportedOperation
    if (
        "illegalstateexception" in st_lower
        or "illegalargumentexception" in st_lower
        or "unsupportedoperationexception" in st_lower
        or "concurrentmodificationexception" in st_lower
    ):
        return BugClassification(
            BUG_TYPE_INVARIANT,
            "precondition / invariant violated",
        )

    # NPE — last because assertion/numeric can also mention "null" in messages
    if "nullpointerexception" in st_lower:
        reason = "null pointer dereference"
        # Detect self-recursion / overload chains: same method name appears
        # multiple times in the stack in the same class. Strong signal that
        # the bug is in a CALLER passing null, not at the NPE site.
        chain_hint = _detect_overload_chain(stack_traces)
        if chain_hint:
            reason += f" — {chain_hint}"
        return BugClassification(BUG_TYPE_NPE, reason)

    return BugClassification(BUG_TYPE_GENERIC, "no dominant category detected")


_STACK_FRAME_RE = re.compile(
    r"at\s+([\w.$]+)\.([\w$<>]+)\s*\("
)

# Frames that belong to test runners / reflection / JVM internals — NEVER
# candidates for "caller-bug" detection because they are not part of the
# project under test. Without this filter we flag e.g.
# `ParentRunner$3.evaluate appears 2x` which is pure JUnit boilerplate.
_FRAMEWORK_PACKAGE_PREFIXES = (
    "org.junit.",
    "junit.",
    "sun.reflect.",
    "jdk.internal.",
    "java.base/",  # Java 11+ format
    "java.lang.reflect.",
    "org.gradle.",
    "com.intellij.",
    "org.apache.maven.",
    "org.mockito.",  # test-only (would confuse Mockito-N bugs)
)


def _is_framework_frame(class_fqcn: str) -> bool:
    if class_fqcn.startswith(_FRAMEWORK_PACKAGE_PREFIXES):
        return True
    # Inner-class patterns from runners: ...ParentRunner$1, $2, ...
    if "ParentRunner$" in class_fqcn or "BlockJUnit" in class_fqcn:
        return True
    if "TestRunner" in class_fqcn or class_fqcn.endswith("Runner"):
        return True
    return False


def _detect_overload_chain(stack_traces: str) -> Optional[str]:
    """If the stack shows the same (class, method) pair in >=2 frames, return
    a short hint string. This strongly suggests an overload/self-recursion bug
    where a caller passes null instead of the correct field/argument.

    Filters out framework frames (JUnit, reflection) so boilerplate recursion
    doesn't trigger false positives.
    """
    frames = _STACK_FRAME_RE.findall(stack_traces)
    if not frames:
        return None
    seen: dict[tuple[str, str], int] = {}
    for cls, method in frames:
        if _is_framework_frame(cls):
            continue
        seen[(cls, method)] = seen.get((cls, method), 0) + 1
    for (cls, method), count in seen.items():
        if count >= 2 and "<init>" not in method:
            short_cls = cls.rsplit(".", 1)[-1]
            return (
                f"overload chain detected ({short_cls}.{method} appears "
                f"{count}x in stack — likely caller-bug)"
            )
    return None


# ── Type-specific instruction snippets for the diagnostic prompt ────────────


_INSTRUCTIONS_BY_TYPE: dict[str, str] = {
    BUG_TYPE_NPE: """\
This is a NULL POINTER bug. Do NOT reflexively add null checks — first find
the REAL root cause, which is usually NOT at the NPE throw site:

  1. TRACE the null: the stack trace shows WHERE the null is dereferenced,
     not where it originated. Read the FULL stack (not just the topmost frame)
     and walk UP the frames to find the first frame that belongs to the
     project under test. That frame usually contains the real bug.

  2. ROOT CAUSE hypotheses (prioritize in this order):
     a. **Caller passes null / wrong variable**. If the stack shows the same
        method called by itself (overload chain) or by another method in the
        same class, the bug is often a caller that uses `null` / `other_field`
        where it should use `this.someField`. Fix the CALLER, not the NPE site.
     b. **Field never initialized / reset**. A field is declared but the
        constructor (or a reset method) forgets to set it. Fix the init site.
     c. **Upstream method returns null when it should return a default** or
        an empty collection. Fix the upstream method.
     d. ONLY as a last resort: if the null is genuinely valid at this point
        (e.g. optional argument), add a null-safe branch RETURNING a sane
        default — never rethrow a different exception that the test doesn't
        expect.

  3. AVOID these anti-patterns:
     - Wrapping the NPE in a new exception type (breaks callers that catch NPE).
     - Adding `setFoo()` setter methods or refactoring the class structure
       (out of scope — keep the fix minimal).
     - Reinventing the method: preserve every comment, every indentation
       and every unrelated line.
""",
    BUG_TYPE_LOGIC: """\
This is a LOGIC / ASSERTION bug (NOT an NPE). Focus on:
  - Extract from the stack trace the EXPECTED value and the ACTUAL value.
  - The fix must make the computation return the EXPECTED value.
  - DO NOT default to adding null checks — the bug is in the LOGIC, not in null-safety.
  - Common causes: wrong boolean operator (&& vs ||), inverted condition, off-by-one,
    stale cached value, using the wrong variable, missing else-branch, int vs double
    arithmetic promotion.
""",
    BUG_TYPE_NUMERIC: """\
This is a NUMERIC / FLOATING-POINT bug. Focus on:
  - Integer overflow: int * int can overflow; use long or detect overflow.
  - Floating-point: NaN/Infinity propagation, division by zero.
  - Rounding: Math.round, Math.floor, cast (int) vs (long) truncation.
  - Order of operations: (a + b) / 2 can overflow — use a + (b - a) / 2.
  - DO NOT add null checks unless the NPE is clearly mentioned in the stack trace.
""",
    BUG_TYPE_BOUNDS: """\
This is an INDEX / BOUNDS bug. Focus on:
  - Off-by-one: <= vs <, start vs start+1.
  - Array/List length vs index: length-1 is the last valid index.
  - Empty collection: handle size()==0 explicitly before accessing element 0.
  - Negative indices: can come from findIndex() returning -1.
""",
    BUG_TYPE_INVARIANT: """\
This is a PRECONDITION / INVARIANT bug. Focus on:
  - The method enforces a precondition that should either be RELAXED (if the
    test shows valid input rejected) or STRENGTHENED (if invalid input was
    accepted).
  - The IllegalState may be thrown because an earlier method mutated state
    wrongly. Walk up the call chain and fix the upstream mutation.
  - CODE MOTION is often the real fix: a method call like `x = foo(y)` may
    need to be moved INSIDE a specific `if` branch because it is only valid
    there. Look for unconditional statements at the end of a method that
    should be conditional (e.g. `x = x.wrap()` run after `x` was invalidated).
  - Consider whether the check should move to a different method in the call
    chain (e.g. from a constructor to a use-site or vice versa).
  - DO NOT simply add `if (cond) throw new IllegalStateException(...)` — that
    is a symptom, not a fix. Understand WHY the invariant was violated.
""",
    BUG_TYPE_GENERIC: """\
Analyze the exception type and message carefully before choosing a fix approach.
Do not assume null-safety is the answer.
""",
}


def get_type_specific_instructions(bug_type: str) -> str:
    """Return human-readable instructions tailored to the classified bug type."""
    return _INSTRUCTIONS_BY_TYPE.get(bug_type, _INSTRUCTIONS_BY_TYPE[BUG_TYPE_GENERIC])


def format_classification_header(classification: BugClassification) -> str:
    """Format a classification block ready to embed in a prompt."""
    header = f"**Bug Type Classification**: {classification.bug_type} — {classification.reason}"
    if classification.bug_type == BUG_TYPE_LOGIC and classification.expected is not None:
        header += (
            f"\n**Expected value** (from failing assertion): `{classification.expected}`"
            f"\n**Actual value**   (from failing assertion): `{classification.actual}`"
        )
    return header
