#!/usr/bin/env python3
"""Run LogicFL diagnostics on a selected Defects4J subset and map outcomes.

This script iterates over a fixed set of pure-NPE Defects4J bugs, executes a
LogicFL command for the vBuggy version, captures stdout/stderr, categorizes
results into two diagnostic categories, and stores structured JSON output.
"""

from __future__ import annotations

import argparse
import csv
import json
import logging
import os
import re
import shlex
import subprocess
import time
from dataclasses import dataclass, asdict
from pathlib import Path
from typing import List, Optional, Sequence


DEFAULT_BUGS: List[str] = [
    "Chart-2",
    "Chart-4",
    "Chart-14",
    "Chart-16",
    "Cli-5",
    "Cli-30",
    "Closure-2",
    "Closure-171",
    "Codec-5",
    "Codec-13",
    "Codec-17",
    "Csv-4",
    "Csv-9",
    "Csv-11",
    "Gson-6",
    "Gson-9",
    "JacksonCore-8",
    "JacksonDatabind-3",
    "JacksonDatabind-13",
    "JacksonDatabind-80",
    "JacksonDatabind-93",
    "JacksonDatabind-95",
    "JacksonDatabind-107",
    "Jsoup-8",
    "Jsoup-22",
    "Jsoup-26",
    "Jsoup-66",
    "Jsoup-89",
    "Lang-20",
    "Lang-33",
    "Lang-39",
    "Lang-47",
    "Lang-57",
    "Math-4",
    "Math-70",
    "Math-79",
    "Mockito-18",
    "Mockito-38",
]

CATEGORY_A = "Prova causale completa"
CATEGORY_B = "Punti ciechi / Deduzione frammentaria"

# Placeholder command template for the exact LogicFL invocation on vBuggy.
# Keep {bug_id} and {workspace} placeholders if needed.
DEFAULT_CMD_TEMPLATE = "cd {workspace}/defects4j/{bug_id} && ./logic_fl.sh"

SUCCESS_PATTERNS = [
    r"root\s*cause",
    r"causal\s*(chain|proof)",
    r"dependency\s*trace\s*(found|complete)",
    r"fault\s*(localized|location\s*found)",
    r"can\s+be\s+caused\s+by",
    r"identified\s+fault\s+locations\s+for\s+npe",
    r"all\s*scripts\s*executed\s*successfully",
]

FAILURE_PATTERNS = [
    r"trace\s*(interrupted|stopped|incomplete)",
    r"native\s*method",
    r"reflection",
    r"nosuchmethoderror",
    r"exceptionininitializererror",
    r"inaccessibleobjectexception",
    r"execution\s+failed\.\s+stopping\s+further\s+execution",
    r"timeout",
]


@dataclass
class BugResult:
    bug_id: str
    category: str
    command: str
    exit_code: Optional[int]
    duration_sec: float
    relevant_excerpt: str
    stdout: str
    stderr: str


def build_command(template: str, bug_id: str, workspace: str) -> str:
    return template.format(bug_id=bug_id, workspace=workspace)


def _match_line_indices(lines: Sequence[str], patterns: Sequence[str]) -> List[int]:
    indices: List[int] = []
    for idx, line in enumerate(lines):
        for pattern in patterns:
            if re.search(pattern, line, flags=re.IGNORECASE):
                indices.append(idx)
                break
    return indices


def extract_relevant_excerpt(stdout: str, stderr: str, window: int = 2, cap: int = 30) -> str:
    merged = []
    if stdout.strip():
        merged.extend(f"STDOUT | {line}" for line in stdout.splitlines())
    if stderr.strip():
        merged.extend(f"STDERR | {line}" for line in stderr.splitlines())

    if not merged:
        return "No output captured."

    hit_indices = _match_line_indices(merged, [*SUCCESS_PATTERNS, *FAILURE_PATTERNS])
    if hit_indices:
        selected: List[str] = []
        seen = set()
        for hit in hit_indices[:6]:
            start = max(0, hit - window)
            end = min(len(merged), hit + window + 1)
            for i in range(start, end):
                if i not in seen:
                    selected.append(merged[i])
                    seen.add(i)
            if len(selected) >= cap:
                break
        return "\n".join(selected[:cap])

    tail = merged[-min(len(merged), cap) :]
    return "\n".join(tail)


def categorize_result(stdout: str, stderr: str, exit_code: Optional[int]) -> str:
    text = f"{stdout}\n{stderr}".strip()

    match = re.search(
        r"total\s+(\d+)\s+identified\s+fault\s+locations\s+for\s+npe",
        text,
        flags=re.IGNORECASE,
    )
    if match:
        identified = int(match.group(1))
        if identified > 0:
            return CATEGORY_A
        return CATEGORY_B

    has_success = any(re.search(p, text, flags=re.IGNORECASE) for p in SUCCESS_PATTERNS)
    has_failure = any(re.search(p, text, flags=re.IGNORECASE) for p in FAILURE_PATTERNS)

    if exit_code == 0 and has_success and not has_failure:
        return CATEGORY_A

    # Conservative fallback: anything ambiguous/failing goes to blind spots.
    return CATEGORY_B


def run_logicfl_for_bug(command: str, timeout_sec: int) -> tuple[Optional[int], str, str, float]:
    start = time.monotonic()
    try:
        completed = subprocess.run(
            ["bash", "-lc", command],
            capture_output=True,
            text=True,
            timeout=timeout_sec,
            check=False,
        )
        duration = time.monotonic() - start
        return completed.returncode, completed.stdout, completed.stderr, duration
    except subprocess.TimeoutExpired as timeout_exc:
        duration = time.monotonic() - start
        stdout = timeout_exc.stdout or ""
        stderr = (timeout_exc.stderr or "") + "\nTimeoutExpired: command exceeded timeout."
        return None, stdout, stderr, duration


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Run LogicFL diagnostics on selected Defects4J pure-NPE bugs."
    )
    parser.add_argument(
        "--workspace",
        default=os.getcwd(),
        help="Workspace root path where defects4j/<BugId> folders are located.",
    )
    parser.add_argument(
        "--logicfl-cmd-template",
        default=DEFAULT_CMD_TEMPLATE,
        help=(
            "Shell command template for LogicFL on vBuggy. "
            "Supported placeholders: {bug_id}, {workspace}."
        ),
    )
    parser.add_argument(
        "--timeout-sec",
        type=int,
        default=3600,
        help="Timeout in seconds for each bug execution.",
    )
    parser.add_argument(
        "--output",
        default="logicfl_diagnostics_results.json",
        help="Output JSON path.",
    )
    parser.add_argument(
        "--output-csv",
        default=None,
        help=(
            "Optional CSV output path. If omitted, uses JSON output basename with .csv extension."
        ),
    )
    parser.add_argument(
        "--bug-set",
        choices=["default", "workspace-all"],
        default="default",
        help=(
            "Bug source selection: 'default' uses the fixed pure-NPE subset, "
            "'workspace-all' discovers all <Project>-<Id> bug folders under defects4j/."
        ),
    )
    parser.add_argument(
        "--bugs",
        default=None,
        help=(
            "Optional comma-separated bug list (e.g. Chart-2,Gson-9). "
            "Overrides --bug-set when provided."
        ),
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Only print planned commands without executing LogicFL.",
    )
    return parser.parse_args()


def _bug_sort_key(bug_id: str) -> tuple[str, int, str]:
    match = re.match(r"^([A-Za-z][A-Za-z0-9]*)-(\d+)$", bug_id)
    if not match:
        return (bug_id, 0, bug_id)
    return (match.group(1), int(match.group(2)), bug_id)


def discover_workspace_bugs(workspace: str) -> List[str]:
    defects4j_dir = Path(workspace) / "defects4j"
    if not defects4j_dir.is_dir():
        return []

    bug_ids: List[str] = []
    for child in defects4j_dir.iterdir():
        if child.is_dir() and re.match(r"^[A-Za-z][A-Za-z0-9]*-\d+$", child.name):
            bug_ids.append(child.name)
    return sorted(bug_ids, key=_bug_sort_key)


def resolve_bug_ids(args: argparse.Namespace, workspace: str) -> List[str]:
    if args.bugs:
        parsed = [item.strip() for item in args.bugs.split(",") if item.strip()]
        return sorted(parsed, key=_bug_sort_key)

    if args.bug_set == "workspace-all":
        return discover_workspace_bugs(workspace)

    return list(DEFAULT_BUGS)


def write_csv_summary(csv_path: str, results: Sequence[BugResult]) -> None:
    with open(csv_path, "w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(
            handle,
            fieldnames=["bug_id", "category", "relevant_excerpt"],
        )
        writer.writeheader()
        for result in results:
            writer.writerow(
                {
                    "bug_id": result.bug_id,
                    "category": result.category,
                    "relevant_excerpt": result.relevant_excerpt,
                }
            )


def main() -> None:
    args = parse_args()

    logging.basicConfig(level=logging.INFO, format="[%(levelname)s] %(message)s")
    workspace = os.path.abspath(args.workspace)
    bug_ids = resolve_bug_ids(args, workspace)
    csv_output = (
        os.path.abspath(args.output_csv)
        if args.output_csv
        else os.path.splitext(os.path.abspath(args.output))[0] + ".csv"
    )

    logging.info("Workspace: %s", workspace)
    logging.info("Output file: %s", os.path.abspath(args.output))
    logging.info("CSV summary: %s", csv_output)
    logging.info("Bug set mode: %s", args.bug_set)
    logging.info("Bug set size: %d", len(bug_ids))

    if not bug_ids:
        logging.error("No bug IDs resolved. Check --bug-set/--bugs and workspace path.")
        raise SystemExit(2)

    results: List[BugResult] = []

    for index, bug_id in enumerate(bug_ids, start=1):
        command = build_command(args.logicfl_cmd_template, bug_id, workspace)
        logging.info("[%d/%d] Running diagnostic for %s", index, len(bug_ids), bug_id)
        logging.info("Command: %s", shlex.join(["bash", "-lc", command]))

        if args.dry_run:
            result = BugResult(
                bug_id=bug_id,
                category="DRY_RUN",
                command=command,
                exit_code=None,
                duration_sec=0.0,
                relevant_excerpt="Dry-run mode: command not executed.",
                stdout="",
                stderr="",
            )
            results.append(result)
            continue

        exit_code, stdout, stderr, duration = run_logicfl_for_bug(
            command=command,
            timeout_sec=args.timeout_sec,
        )
        category = categorize_result(stdout=stdout, stderr=stderr, exit_code=exit_code)
        excerpt = extract_relevant_excerpt(stdout=stdout, stderr=stderr)

        result = BugResult(
            bug_id=bug_id,
            category=category,
            command=command,
            exit_code=exit_code,
            duration_sec=round(duration, 3),
            relevant_excerpt=excerpt,
            stdout=stdout,
            stderr=stderr,
        )
        results.append(result)

        logging.info(
            "Completed %s | category=%s | exit_code=%s | duration=%.2fs",
            bug_id,
            category,
            str(exit_code),
            duration,
        )

    payload = {
        "generated_at_epoch": int(time.time()),
        "workspace": workspace,
        "logicfl_cmd_template": args.logicfl_cmd_template,
        "bugs": bug_ids,
        "results": [asdict(item) for item in results],
    }

    with open(args.output, "w", encoding="utf-8") as handle:
        json.dump(payload, handle, ensure_ascii=False, indent=2)

    logging.info("Saved results to %s", os.path.abspath(args.output))

    write_csv_summary(csv_output, results)
    logging.info("Saved CSV summary to %s", csv_output)

    # Print summary statistics
    count_total = sum(1 for r in results if r.category == CATEGORY_A)
    count_partial = sum(1 for r in results if r.category == CATEGORY_B)
    logging.info("--- Riepilogo Risultati ---")
    logging.info("Bug analizzati: %d", len(results))
    logging.info("Causa individuata (Totale - %s): %d", CATEGORY_A, count_total)
    logging.info("Causa individuata (Parziale - %s): %d", CATEGORY_B, count_partial)


if __name__ == "__main__":
    main()
