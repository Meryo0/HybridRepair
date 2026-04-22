"""Persist per-attempt and final results for the repair pipeline.

Saves prompt, diff, test results, and a final JSON report for each bug.
Prints coloured terminal summaries using only built-in print().
"""

from __future__ import annotations

import json
from datetime import datetime, timezone
from pathlib import Path

from pipeline import config


def _attempt_dir(bug_id: str, attempt: int) -> Path:
    return config.PIPELINE_RESULTS_DIR / bug_id / f"attempt_{attempt}"


def save_attempt_result(
    bug_id: str,
    attempt: int,
    prompt: str,
    diff: str,
    test_result: dict,
) -> None:
    """Persist the prompt, diff, and test result JSON for one repair attempt.

    Args:
        bug_id:      Bug identifier (e.g. "Chart-2").
        attempt:     1-based attempt number.
        prompt:      Full prompt string sent to the LLM.
        diff:        Unified diff string from the LLM.
        test_result: Dict returned by test_runner.run_tests().
    """
    d = _attempt_dir(bug_id, attempt)
    d.mkdir(parents=True, exist_ok=True)

    # prompt.txt
    (d / "prompt.txt").write_text(prompt, encoding="utf-8")

    # patch.diff (only if not already written by patch_applier)
    diff_path = d / "patch.diff"
    if not diff_path.exists():
        diff_path.write_text(diff, encoding="utf-8")

    # test_result.json
    (d / "test_result.json").write_text(
        json.dumps(test_result, indent=2, ensure_ascii=False),
        encoding="utf-8",
    )

    print(f"  [reporter] Attempt {attempt} results saved to {d}")


def save_final_report(
    bug_id: str,
    success: bool,
    winning_attempt: int | None,
    total_attempts: int,
    test_result: dict,
) -> None:
    """Write the final aggregated report for a bug repair run.

    Args:
        bug_id:          Bug identifier.
        success:         True if at least one attempt passed all tests.
        winning_attempt: Attempt number that succeeded, or None if all failed.
        total_attempts:  Total number of attempts made.
        test_result:     Test result dict from the winning (or last) attempt.
    """
    report_dir = config.PIPELINE_RESULTS_DIR / bug_id
    report_dir.mkdir(parents=True, exist_ok=True)

    report = {
        "bug_id": bug_id,
        "success": success,
        "winning_attempt": winning_attempt,
        "total_attempts": total_attempts,
        "test_result": test_result,
        "timestamp": datetime.now(timezone.utc).isoformat(),
    }

    report_path = report_dir / "final_report.json"
    report_path.write_text(
        json.dumps(report, indent=2, ensure_ascii=False), encoding="utf-8"
    )
    print(f"  [reporter] Final report saved to {report_path}")


def print_summary(bug_id: str, result: dict) -> None:
    """Print a coloured terminal summary of the repair outcome.

    Uses only built-in print(); no external colour libraries required.
    """
    status = result.get("status", "UNKNOWN")
    success = status == "PASS"

    total = result.get("total_tests", 0)
    failed = result.get("failed_tests", 0)
    passed = total - failed

    winning = result.get("winning_attempt")
    max_att = result.get("total_attempts", config.MAX_REPAIR_ATTEMPTS)

    if success and winning:
        status_line = f"✅ RIPARATO al tentativo {winning}/{max_att}"
    else:
        status_line = f"❌ NON RIPARATO ({total_attempts_desc(max_att)} tentativi)"

    # Determine patch path
    if winning:
        patch_path = (
            config.PIPELINE_RESULTS_DIR / bug_id / f"attempt_{winning}" / "patch.diff"
        )
    else:
        patch_path = config.PIPELINE_RESULTS_DIR / bug_id

    bar = "━" * 50
    print(f"\n{bar}")
    print(f"  BUG: {bug_id}")
    print(f"  STATUS: {status_line}")
    print(f"  Test passati: {passed}/{total}")
    print(f"  Patch salvata in: {patch_path}")
    print(f"{bar}\n")


def total_attempts_desc(n: int) -> str:
    return f"tutti i {n}" if n > 1 else "1"
