"""Compile and run JUnit tests against a patched Java source tree.

Works without the Defects4J CLI: reads config.properties to build the
classpath, uses javac/java directly, and parses JUnitCore output.
"""

from __future__ import annotations

import configparser
import filecmp
import os
import subprocess
import tempfile
from pathlib import Path
from typing import List

from pipeline import config
from pipeline.logicfl_parser import parse_logicfl_output


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

def _compile_patched_source(
    patched_source_dir: Path,
    original_source_dir: Path,
    classpath: str,
    compile_output_dir: Path,
) -> tuple[bool, str]:
    """Compile modified Java files.

    Returns:
        (success: bool, combined_output: str)
    """
    compile_output_dir.mkdir(parents=True, exist_ok=True)

    modified = _find_modified_files(patched_source_dir, original_source_dir)
    if not modified:
        print("  [test_runner] No modified files detected; compiling all sources")
        modified = list(patched_source_dir.rglob("*.java"))

    if not modified:
        return False, "No .java files found in patched_source_dir"

    print(f"  [test_runner] Compiling {len(modified)} modified Java file(s)")
    for f in modified:
        print(f"    · {f.relative_to(patched_source_dir)}")

    cmd = [
        "javac",
        "-cp", classpath,
        "-sourcepath", str(patched_source_dir),
        "-d", str(compile_output_dir),
        "-encoding", "UTF-8",
        "-nowarn",       # suppress lint warnings for cleaner output
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
    compile_output_dir: Path,
    original_classpath: str,
) -> tuple[int, str]:
    """Run JUnitCore with the given test classes.

    Returns:
        (returncode: int, combined_output: str)
    """
    full_cp = f"{compile_output_dir}:{original_classpath}"

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
    import re

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
    # JUnitCore prints failure details before the summary
    failing_names = re.findall(
        r"(?:FAILURE|ERROR|FAILED)\s*[:\s]+(\w+\s*\([^)]+\)|\w+)",
        output,
        re.IGNORECASE,
    )
    # Also catch "N) testName(ClassName)" format from JUnit 4 failure listing
    failing_names += re.findall(
        r"^\s*\d+\)\s+(\w+)\(",
        output,
        re.MULTILINE,
    )
    failing_names = list(dict.fromkeys(failing_names))  # deduplicate preserving order

    # Determine previously-failing tests that now pass
    previously_failing_now_passing: List[str] = []
    for t in target_tests:
        short = t.split(".")[-1]  # class simple name
        was_mentioned_as_failure = any(short in fn for fn in failing_names)
        if not was_mentioned_as_failure:
            previously_failing_now_passing.append(t)

    status = "PASS" if failures == 0 and total > 0 else "FAIL"

    return {
        "status": status,
        "total_tests": total,
        "failed_tests": failures,
        "failing_test_names": failing_names,
        "previously_failing_now_passing": previously_failing_now_passing,
    }


# ── Public API ────────────────────────────────────────────────────────────────

def run_tests(bug_dir: Path, patched_source_dir: Path, attempt: int) -> dict:
    """Compile the patched source and run JUnit tests.

    Args:
        bug_dir:            Path to the bug directory.
        patched_source_dir: Path to the patched copy of buggy/source/.
        attempt:            Attempt number (for output directory naming).

    Returns:
        A dict with keys:
          status, total_tests, failed_tests, failing_test_names,
          previously_failing_now_passing, compile_output, test_output
    """
    bug_id = bug_dir.name
    compile_output_dir = (
        config.PIPELINE_RESULTS_DIR / bug_id / f"attempt_{attempt}" / "compiled"
    )

    # Step 1: Build classpath
    try:
        classpath = _read_classpath(bug_dir)
    except Exception as exc:
        msg = f"Failed to read classpath: {exc}"
        print(f"  [test_runner] ERROR: {msg}")
        return {
            "status": "COMPILE_ERROR",
            "total_tests": 0,
            "failed_tests": 0,
            "failing_test_names": [],
            "previously_failing_now_passing": [],
            "compile_output": msg,
            "test_output": "",
        }

    # Step 2: Compile
    from pipeline.logicfl_parser import _read_source_roots
    source_roots = _read_source_roots(bug_dir)
    original_source_dir = source_roots[0] if source_roots else (bug_dir / "buggy" / "source")
    compile_ok, compile_output = _compile_patched_source(
        patched_source_dir, original_source_dir, classpath, compile_output_dir
    )

    if not compile_ok:
        print(f"  [test_runner] Compilation FAILED:\n{compile_output[:500]}")
        return {
            "status": "COMPILE_ERROR",
            "total_tests": 0,
            "failed_tests": 0,
            "failing_test_names": [],
            "previously_failing_now_passing": [],
            "compile_output": compile_output,
            "test_output": "",
        }
    print("  [test_runner] Compilation successful")

    # Step 3: Collect test classes
    try:
        logicfl_result = parse_logicfl_output(bug_dir)
        test_classes = list({t["class"] for t in logicfl_result.failing_tests})
    except Exception:
        test_classes = []

    if not test_classes:
        print("  [test_runner] WARNING: no test classes found; skipping test execution")
        return {
            "status": "FAIL",
            "total_tests": 0,
            "failed_tests": 0,
            "failing_test_names": [],
            "previously_failing_now_passing": [],
            "compile_output": compile_output,
            "test_output": "No test classes identified.",
        }

    print(f"  [test_runner] Running {len(test_classes)} test class(es): {test_classes}")

    # Step 4: Run JUnit
    returncode, test_output = _run_junit(test_classes, compile_output_dir, classpath)

    # Step 5: Parse results
    parsed = _parse_junit_output(test_output, test_classes)
    parsed["compile_output"] = compile_output
    parsed["test_output"] = test_output

    print(
        f"  [test_runner] Result: {parsed['status']} "
        f"({parsed['total_tests'] - parsed['failed_tests']}/{parsed['total_tests']} passed)"
    )
    return parsed
