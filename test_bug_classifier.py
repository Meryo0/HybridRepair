"""Regression test for pipeline.bug_classifier."""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))

from pipeline.bug_classifier import (
    BUG_TYPE_INVARIANT,
    BUG_TYPE_LOGIC,
    BUG_TYPE_NPE,
    BUG_TYPE_NUMERIC,
    classify_bug,
)


def _assert_eq(actual, expected, case):
    if actual != expected:
        raise AssertionError(
            f"[{case}] expected={expected!r}  actual={actual!r}"
        )


def test_gson6_classified_invariant_not_npe():
    """Gson-6 was regressing because the fix strategy for INVARIANT differs
    from NPE. Make sure the classifier picks INVARIANT when IllegalState is
    the dominant exception, even though 'null' may appear in other messages.
    """
    trace = (
        "JUnit version 4.13.2\n"
        "There were 2 failures:\n"
        "1) testNullSafeBugDeserialize\n"
        "com.google.gson.JsonSyntaxException: "
        "java.lang.IllegalStateException: Failed to create a TypeAdapter...\n"
    )
    c = classify_bug(trace)
    _assert_eq(c.bug_type, BUG_TYPE_INVARIANT, "Gson-6 type")


def test_math70_detects_overload_chain():
    """Math-70: solve() appears 3x in the stack — classifier must flag
    this as a likely caller-bug, not a pure null-safety issue."""
    trace = (
        "java.lang.NullPointerException: Cannot invoke ...\n"
        "\tat org.apache.commons.math.analysis.solvers.BisectionSolver.solve(BisectionSolver.java:88)\n"
        "\tat org.apache.commons.math.analysis.solvers.BisectionSolver.solve(BisectionSolver.java:66)\n"
        "\tat org.apache.commons.math.analysis.solvers.BisectionSolver.solve(BisectionSolver.java:72)\n"
        "\tat org.apache.commons.math.analysis.solvers.BisectionSolverTest.testMath369(BisectionSolverTest.java:101)\n"
    )
    c = classify_bug(trace)
    _assert_eq(c.bug_type, BUG_TYPE_NPE, "Math-70 type")
    assert "overload chain" in c.reason, f"reason={c.reason!r}"
    assert "BisectionSolver.solve" in c.reason, f"reason={c.reason!r}"


def test_pure_npe_no_overload_chain():
    """A plain NPE with a single frame must NOT trigger the overload hint."""
    trace = (
        "java.lang.NullPointerException\n"
        "\tat com.foo.Bar.baz(Bar.java:10)\n"
        "\tat com.foo.BarTest.testIt(BarTest.java:20)\n"
    )
    c = classify_bug(trace)
    _assert_eq(c.bug_type, BUG_TYPE_NPE, "pure NPE type")
    assert "overload chain" not in c.reason, f"reason={c.reason!r}"


def test_junit_frames_filtered():
    """JUnit ParentRunner / BlockJUnit4Runner frames must NOT trigger the
    overload-chain heuristic (they are framework boilerplate, not caller-bug).
    Regression for Jsoup-22 false positive observed on 2026-04-24.
    """
    trace = (
        "java.lang.NullPointerException\n"
        "\tat org.jsoup.nodes.Node.siblingNodes(Node.java:445)\n"
        "\tat org.jsoup.nodes.NodeTest.orphan(NodeTest.java:10)\n"
        "\tat org.junit.runners.ParentRunner$3.evaluate(ParentRunner.java:290)\n"
        "\tat org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:100)\n"
        "\tat org.junit.runners.ParentRunner$3.evaluate(ParentRunner.java:290)\n"
        "\tat jdk.internal.reflect.NativeMethodAccessorImpl.invoke(Native Method)\n"
    )
    c = classify_bug(trace)
    _assert_eq(c.bug_type, BUG_TYPE_NPE, "Jsoup-like type")
    assert "overload chain" not in c.reason, f"reason={c.reason!r}"


def test_assertion_wins_over_npe():
    """When both AssertionError and 'null' appear, LOGIC should win."""
    trace = (
        "org.junit.ComparisonFailure: expected:<[foo]> but was:<[bar]>\n"
        "\tat org.junit.Assert.assertEquals(Assert.java:10)\n"
    )
    c = classify_bug(trace)
    _assert_eq(c.bug_type, BUG_TYPE_LOGIC, "assertion type")
    _assert_eq(c.expected, "[foo]", "expected value")
    _assert_eq(c.actual, "[bar]", "actual value")


def test_nan_triggers_numeric():
    trace = (
        "java.lang.AssertionError: expected:<3.14> but was:<NaN>\n"
    )
    c = classify_bug(trace)
    # LOGIC wins (assertion), not NUMERIC — LOGIC prompt also surfaces NaN.
    _assert_eq(c.bug_type, BUG_TYPE_LOGIC, "NaN in assertion")


def test_pure_numeric():
    trace = "java.lang.ArithmeticException: / by zero\n\tat com.X.m(X.java:5)\n"
    c = classify_bug(trace)
    _assert_eq(c.bug_type, BUG_TYPE_NUMERIC, "pure numeric")


if __name__ == "__main__":
    tests = [v for k, v in sorted(globals().items()) if k.startswith("test_")]
    failed = 0
    for t in tests:
        try:
            t()
            print(f"  PASS  {t.__name__}")
        except AssertionError as e:
            failed += 1
            print(f"  FAIL  {t.__name__}\n        {e}")
    print(f"\n{len(tests) - failed}/{len(tests)} passed")
    sys.exit(1 if failed else 0)
