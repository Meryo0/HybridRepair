"""Persist per-attempt and final results for the repair pipeline.

Saves prompt, diff, test results, and a final JSON report for each bug.
Prints coloured terminal summaries using only built-in print().

Migrated from pipeline/reporter.py for HybridRepair v2.
"""

from __future__ import annotations

import json
from datetime import datetime, timezone
from pathlib import Path
from typing import Optional

from shared import config
from shared.models import PatchAttempt, RepairResult, TestResult


def _attempt_dir(bug_id: str, attempt: int) -> Path:
    return config.PIPELINE_RESULTS_DIR / bug_id / f"attempt_{attempt}"


def save_attempt(
    bug_id: str,
    attempt: PatchAttempt,
    prompt: str = "",
) -> None:
    """Persist the prompt, diff, and test result JSON for one repair attempt.

    Args:
        bug_id: Bug identifier (e.g. "Chart-2").
        attempt: The PatchAttempt dataclass.
        prompt: Full prompt string sent to the LLM (optional).
    """
    d = _attempt_dir(bug_id, attempt.attempt_number)
    d.mkdir(parents=True, exist_ok=True)

    # prompt.txt
    if prompt:
        (d / "prompt.txt").write_text(prompt, encoding="utf-8")

    # patch.diff
    if attempt.diff:
        diff_path = d / "patch.diff"
        if not diff_path.exists():
            diff_path.write_text(attempt.diff, encoding="utf-8")

    # test_result.json
    if attempt.test_result:
        result_dict = {
            "status": attempt.test_result.status.value,
            "compile_ok": attempt.test_result.compile_ok,
            "total_tests": attempt.test_result.total_tests,
            "failed_tests": attempt.test_result.failed_tests,
            "failing_test_names": attempt.test_result.failing_test_names,
            "semantic_valid": attempt.semantic_valid,
            "semantic_reason": attempt.semantic_reason,
            "compile_output": attempt.test_result.compile_output[:2000],
            "test_output": attempt.test_result.test_output[:5000],
        }
        (d / "test_result.json").write_text(
            json.dumps(result_dict, indent=2, ensure_ascii=False),
            encoding="utf-8",
        )

    print(f"  [reporter] Attempt {attempt.attempt_number} results saved to {d}")


def save_final_report(result: RepairResult) -> None:
    """Write the final aggregated report for a bug repair run.

    Args:
        result: The RepairResult dataclass.
    """
    report_dir = config.PIPELINE_RESULTS_DIR / result.bug_id
    report_dir.mkdir(parents=True, exist_ok=True)

    report = {
        "bug_id": result.bug_id,
        "success": result.success,
        "winning_attempt": result.winning_attempt,
        "total_attempts": result.total_attempts,
        "semantic_valid": result.semantic_valid,
        "semantic_reason": result.semantic_reason,
        "timestamp": datetime.now(timezone.utc).isoformat(),
    }

    report_path = report_dir / "final_report.json"
    report_path.write_text(
        json.dumps(report, indent=2, ensure_ascii=False), encoding="utf-8"
    )
    print(f"  [reporter] Final report saved to {report_path}")


def print_summary(result: RepairResult) -> None:
    """Print a coloured terminal summary of the repair outcome."""
    bar = "━" * 50
    print(f"\n{bar}")
    print(f"  BUG: {result.bug_id}")
    print(f"  STATUS: {result.summary()}")
    if result.semantic_valid is False:
        print(f"  ⚠️  SEMANTIC: patch passes tests but violates the contract "
              f"— {result.semantic_reason}")
    elif result.semantic_valid is True:
        print(f"  SEMANTIC: ✓ contract check passed")
    if result.winning_attempt:
        patch_path = (
            config.PIPELINE_RESULTS_DIR / result.bug_id
            / f"attempt_{result.winning_attempt}" / "patch.diff"
        )
        print(f"  Patch: {patch_path}")
    print(f"{bar}\n")
