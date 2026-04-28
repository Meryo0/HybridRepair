"""Compile and run JUnit tests in a sandboxed environment.

Refactored from pipeline/test_runner.py for HybridRepair v2.
Uses shared.config for paths and shared.models for structured results.
"""

from __future__ import annotations

import configparser
import filecmp
import os
import re
import subprocess
from pathlib import Path
from typing import List

from shared import config
from shared.models import AttemptStatus, TestResult


# ── Config parsing ────────────────────────────────────────────────────────────


def _read_classpath(bug_dir: Path) -> str:
    """Read class.path from config.properties and resolve relative paths.

    Returns an OS-appropriate classpath string.
    """
    props_path = bug_dir / "config.properties"
    if not props_path.exists():
        raise FileNotFoundError(f"config.properties not found in {bug_dir}")

    # configparser needs a [DEFAULT] section header
    raw = "[DEFAULT]\n" + props_path.read_text(encoding="utf-8")
    parser = configparser.RawConfigParser()
    parser.read_string(raw)

    cp_raw = parser.get("DEFAULT", "class.path", fallback="")
    if not cp_raw:
        return ""

    # Resolve each entry relative to bug_dir (handles ../../lib/* patterns)
    entries: List[str] = []
    for entry in cp_raw.split(":"):
        entry = entry.strip()
        if not entry:
            continue
        resolved = (bug_dir / entry).resolve()
        # Glob expansion for wildcard entries (e.g., ../../lib/*)
        parent = resolved.parent
        name = resolved.name
        if name == "*" or "*" in str(resolved):
            # Expand glob
            matches = list(parent.glob(name if "*" in name else "*"))
            jar_matches = [str(m) for m in matches if m.suffix == ".jar"]
            entries.extend(jar_matches if jar_matches else [str(resolved)])
        else:
            entries.append(str(resolved))

    return ":".join(entries)


def read_source_roots(bug_dir: Path) -> List[Path]:
    """Read source.path from config.properties and return resolved source root dirs.

    Falls back to common conventions if config.properties is missing or
    the source.path key is absent.
    """
    props_path = bug_dir / "config.properties"
    source_roots: List[Path] = []

    if props_path.exists():
        raw = "[DEFAULT]\n" + props_path.read_text(encoding="utf-8")
        parser = configparser.RawConfigParser()
        parser.read_string(raw)
        sp = parser.get("DEFAULT", "source.path", fallback="")
        for entry in sp.split(":"):
            entry = entry.strip()
            if not entry:
                continue
            # Only include source entries from the buggy side, skip test dirs
            if "test" in entry.lower():
                continue
            candidate = (bug_dir / entry).resolve()
            if candidate.exists():
                source_roots.append(candidate)

    # Fallback conventions if nothing found yet
    if not source_roots:
        for fallback in (
            bug_dir / "buggy" / "source",
            bug_dir / "buggy" / "src" / "main" / "java",
            bug_dir / "buggy" / "src",
        ):
            if fallback.exists():
                source_roots.append(fallback)
                break

    return source_roots


# ── File diff ─────────────────────────────────────────────────────────────────


def _find_modified_files(patched_source_dir: Path, original_source_dir: Path) -> List[Path]:
    """Return list of .java files that differ between patched and original dirs."""
    modified: List[Path] = []

    dcmp = filecmp.dircmp(str(original_source_dir), str(patched_source_dir))

    def _walk(cmp: filecmp.dircmp, rel: str = "") -> None:
        for name in cmp.diff_files + cmp.right_only:
            candidate = patched_source_dir / rel / name
            if candidate.suffix == ".java":
                modified.append(candidate)
        for sub, sub_cmp in cmp.subdirs.items():
            _walk(sub_cmp, os.path.join(rel, sub))

    _walk(dcmp)

    # Fallback: collect all .java files if nothing found (e.g., manual patch)
    if not modified:
        modified = list(patched_source_dir.rglob("*.java"))

    return modified


# ── Compilation ───────────────────────────────────────────────────────────────


def compile_patched_source(
    bug_dir: Path,
    patched_source_dir: Path,
    attempt: int = 1,
) -> tuple[bool, str]:
    """Compile modified Java files.

    Args:
        bug_dir: Path to the bug directory.
        patched_source_dir: Path to the patched source tree.
        attempt: Attempt number (for output directory naming).

    Returns:
        (success: bool, combined_output: str)
    """
    compile_output_dir = (
        config.PIPELINE_RESULTS_DIR / bug_dir.name / f"attempt_{attempt}" / "compiled"
    )
    compile_output_dir.mkdir(parents=True, exist_ok=True)

    try:
        classpath = _read_classpath(bug_dir)
    except Exception as exc:
        return False, f"Failed to read classpath: {exc}"

    source_roots = read_source_roots(bug_dir)
    original_source_dir = source_roots[0] if source_roots else (bug_dir / "buggy" / "source")

    modified = _find_modified_files(patched_source_dir, original_source_dir)
    if not modified:
        print("  [sandbox] No modified files detected; compiling all sources")
        modified = list(patched_source_dir.rglob("*.java"))

    if not modified:
        return False, "No .java files found in patched_source_dir"

    print(f"  [sandbox] Compiling {len(modified)} modified Java file(s)")
    for f in modified:
        print(f"    · {f.relative_to(patched_source_dir)}")

    cmd = [
        "javac",
        "-cp", classpath,
        "-sourcepath", str(patched_source_dir),
        "-d", str(compile_output_dir),
        "-encoding", "UTF-8",
        "-nowarn",
    ] + [str(f) for f in modified]

    try:
        result = subprocess.run(
            cmd,
            capture_output=True,
            text=True,
            timeout=120,
        )
        combined = result.stdout + result.stderr
        return result.returncode == 0, combined
    except FileNotFoundError:
        return False, "javac not found on PATH"
    except subprocess.TimeoutExpired:
        return False, "javac timed out"


# ── JUnit execution ───────────────────────────────────────────────────────────


def _run_junit(
    test_classes: List[str],
    bug_dir: Path,
    attempt: int,
) -> tuple[int, str]:
    """Run JUnitCore with the given test classes.

    Returns:
        (returncode: int, combined_output: str)
    """
    compile_output_dir = (
        config.PIPELINE_RESULTS_DIR / bug_dir.name / f"attempt_{attempt}" / "compiled"
    )

    try:
        classpath = _read_classpath(bug_dir)
    except Exception:
        classpath = ""

    full_cp = f"{compile_output_dir}:{classpath}"

    cmd = [
        "java",
        "-cp", full_cp,
        "org.junit.runner.JUnitCore",
    ] + test_classes

    try:
        result = subprocess.run(
            cmd,
            capture_output=True,
            text=True,
            timeout=300,
        )
        return result.returncode, result.stdout + result.stderr
    except FileNotFoundError:
        return -1, "java not found on PATH"
    except subprocess.TimeoutExpired:
        return -1, "JUnit run timed out"


# ── Output parsing ────────────────────────────────────────────────────────────


def _parse_junit_output(output: str, target_tests: List[str]) -> dict:
    """Parse JUnitCore text output into a structured result dict."""
    # JUnit 4 success format: "OK (N tests)"
    ok_match = re.search(r"\bOK\s*\((\d+)\s+tests?\)", output, re.IGNORECASE)

    # JUnit 4 failure format: "Tests run: N, Failures: M"
    summary_match = re.search(
        r"Tests run:\s*(\d+),\s*Failures:\s*(\d+)", output, re.IGNORECASE
    )

    if ok_match:
        total = int(ok_match.group(1))
        failures = 0
    elif summary_match:
        total = int(summary_match.group(1))
        failures = int(summary_match.group(2))
    else:
        total = 0
        failures = 0

    # Collect individual failure identifiers
    failing_names = re.findall(
        r"(?:FAILURE|ERROR|FAILED)\s*[:\s]+(\w+\s*\([^)]+\)|\w+)",
        output,
        re.IGNORECASE,
    )
    # Also catch "N) testName(ClassName)" format
    failing_names += re.findall(
        r"^\s*\d+\)\s+(\w+)\(",
        output,
        re.MULTILINE,
    )
    failing_names = list(dict.fromkeys(failing_names))

    # Determine previously-failing tests that now pass
    previously_failing_now_passing: List[str] = []
    for t in target_tests:
        short = t.split(".")[-1]
        was_mentioned_as_failure = any(short in fn for fn in failing_names)
        if not was_mentioned_as_failure:
            previously_failing_now_passing.append(t)

    # Extract full stack traces from the failure block
    stack_traces_block = ""
    st_match = re.search(
        r"There (?:was|were) \d+ failure[s]?:(.*?)(?:\nFAILURES!!!|\Z)",
        output, re.DOTALL
    )
    if st_match:
        stack_traces_block = st_match.group(1).strip()
    elif "Exception" in output:
        lines = output.splitlines()
        for i, line in enumerate(lines):
            if ") " in line and ("Exception" in line or "Error" in line or "Assertion" in line):
                stack_traces_block = "\n".join(lines[i:])
                break

    return {
        "status": "PASS" if failures == 0 and total > 0 else "FAIL",
        "total_tests": total,
        "failed_tests": failures,
        "failing_test_names": failing_names,
        "previously_failing_now_passing": previously_failing_now_passing,
        "stack_traces_block": stack_traces_block,
    }


# ── Public API ────────────────────────────────────────────────────────────────


def evaluate(
    bug_dir: Path,
    patched_source_dir: Path,
    test_classes: List[str],
    attempt: int = 1,
) -> TestResult:
    """Compile the patched source and run JUnit tests.

    This is the main entry point for test evaluation in v2.

    Args:
        bug_dir: Path to the bug directory.
        patched_source_dir: Path to the patched copy of buggy/source/.
        test_classes: List of test class FQCNs to run.
        attempt: Attempt number (for output directory naming).

    Returns:
        A structured TestResult.
    """
    result = TestResult()

    # Step 1: Compile
    compile_ok, compile_output = compile_patched_source(bug_dir, patched_source_dir, attempt)
    result.compile_ok = compile_ok
    result.compile_output = compile_output

    if not compile_ok:
        print(f"  [sandbox] Compilation FAILED:\n{compile_output[:500]}")
        result.status = AttemptStatus.COMPILE_ERROR
        return result

    print("  [sandbox] Compilation successful")

    # Step 2: Run tests
    if not test_classes:
        print("  [sandbox] WARNING: no test classes provided; skipping test execution")
        result.status = AttemptStatus.TEST_FAIL
        result.test_output = "No test classes identified."
        return result

    print(f"  [sandbox] Running {len(test_classes)} test class(es): {test_classes}")
    returncode, test_output = _run_junit(test_classes, bug_dir, attempt)
    result.test_output = test_output

    # Step 3: Parse results
    parsed = _parse_junit_output(test_output, test_classes)
    result.total_tests = parsed["total_tests"]
    result.failed_tests = parsed["failed_tests"]
    result.failing_test_names = parsed["failing_test_names"]
    result.previously_failing_now_passing = parsed["previously_failing_now_passing"]
    result.stack_traces_block = parsed.get("stack_traces_block", "")

    if parsed["status"] == "PASS":
        result.status = AttemptStatus.PASS
    else:
        result.status = AttemptStatus.TEST_FAIL

    print(
        f"  [sandbox] Result: {result.status.value} "
        f"({result.total_tests - result.failed_tests}/{result.total_tests} passed)"
    )
    return result
