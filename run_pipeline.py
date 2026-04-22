#!/usr/bin/env python3
"""Entry point for the LogicFL → LLM Patcher pipeline.

Usage:
    python run_pipeline.py --bug Chart-2
    python run_pipeline.py --bug Chart-2 --force-rerun-logicfl
    python run_pipeline.py --bug all
    python run_pipeline.py --bug Chart-2,Chart-4
"""

from __future__ import annotations

import argparse
import sys
import traceback
from pathlib import Path

# Add repo root to path so 'pipeline' package is importable regardless of cwd
sys.path.insert(0, str(Path(__file__).resolve().parent))

from pipeline import config, logicfl_runner, logicfl_parser, prompt_builder, \
    llm_patcher, patch_applier, test_runner, reporter


# ── Canonical list of NPE bugs ─────────────────────────────────────────────────

NPE_BUGS = [
    "Chart-2", "Chart-4", "Chart-14", "Chart-16",
    "Cli-5", "Cli-30", "Closure-2", "Closure-171",
    "Codec-5", "Codec-13", "Codec-17",
    "Csv-4", "Csv-9", "Csv-11",
    "Gson-6", "Gson-9",
    "JacksonCore-8",
    "JacksonDatabind-3", "JacksonDatabind-13", "JacksonDatabind-80",
    "JacksonDatabind-93", "JacksonDatabind-95", "JacksonDatabind-107",
    "Jsoup-8", "Jsoup-22", "Jsoup-26", "Jsoup-66", "Jsoup-89",
    "Lang-20", "Lang-33", "Lang-39", "Lang-47", "Lang-57",
    "Math-4", "Math-70", "Math-79",
    "Mockito-18", "Mockito-38",
]


# ── Core repair logic ─────────────────────────────────────────────────────────

def _build_diffs_from_response(
    parsed_blocks: list[dict],
    bug_dir: Path,
    source_roots: list[Path],
) -> list[dict]:
    """Convert FILE-block method responses into (relative_path, diff_content) pairs.

    For each FILE block returned by the LLM, finds the matching source file,
    locates the original method via signature matching, and builds a unified diff.

    Returns:
        List of dicts: [{"relative_path": str, "diff": str, "file": Path}, ...]
    """
    import difflib
    import re

    _FAULT_ANNOTATION = re.compile(r"\s*//\s*◄\s*FIX THIS LINE.*$", re.MULTILINE)

    results = []
    for block in parsed_blocks:
        rel_path = block.get("relative_path")
        fixed_code = block.get("fixed_code", "").strip()
        if not fixed_code:
            continue

        # Strip the fault annotation the LLM may have kept (or modified)
        fixed_code = _FAULT_ANNOTATION.sub("", fixed_code).rstrip()

        # Find the actual source file
        src_file: Path | None = None
        if rel_path:
            for root in source_roots:
                candidate = root / rel_path
                if candidate.exists():
                    src_file = candidate
                    break
            if src_file is None:
                fname = Path(rel_path).name
                for root in source_roots:
                    matches = list(root.rglob(fname))
                    if matches:
                        src_file = matches[0]
                        break

        if src_file is None or not src_file.exists():
            print(f"  [pipeline] WARNING: cannot find source file for '{rel_path}'; skipping")
            continue

        original_content = src_file.read_text(encoding="utf-8")
        original_lines = original_content.splitlines()

        # ── Find method boundary in original using signature matching ────────────
        # Take the first non-empty, non-comment, non-annotation line from fixed_code
        # as the method signature anchor.
        method_sig: str | None = None
        for fline in fixed_code.splitlines():
            stripped = fline.strip()
            if stripped and not stripped.startswith("//") \
                    and not stripped.startswith("*") \
                    and not stripped.startswith("/*") \
                    and not stripped.startswith("@"):
                method_sig = stripped
                break

        if method_sig is None:
            print(f"  [pipeline] WARNING: cannot identify method signature in response for '{rel_path}'")
            continue

        # Find where the signature appears in the original file (exact strip match)
        orig_start_idx: int | None = None
        for idx, line in enumerate(original_lines):
            if line.strip() == method_sig:
                orig_start_idx = idx
                break

        # Fallback: try prefix match (first 40 chars)
        if orig_start_idx is None and len(method_sig) > 10:
            prefix = method_sig[:40]
            for idx, line in enumerate(original_lines):
                if line.strip().startswith(prefix):
                    orig_start_idx = idx
                    break

        if orig_start_idx is None:
            print(f"  [pipeline] WARNING: signature '{method_sig[:60]}...' not found in "
                  f"{src_file.name}; skipping block")
            continue

        # ── Find method end via brace counting ───────────────────────────────────
        brace_depth = 0
        method_started = False
        orig_end_idx = orig_start_idx
        for i in range(orig_start_idx, len(original_lines)):
            line = original_lines[i]
            # Strip string literals and comments before counting braces
            stripped_for_braces = re.sub(r'"(?:[^"\\]|\\.)*"', '""', line)
            stripped_for_braces = re.sub(r"//.*$", "", stripped_for_braces)
            brace_depth += stripped_for_braces.count("{") - stripped_for_braces.count("}")
            if brace_depth > 0:
                method_started = True
            if method_started and brace_depth <= 0:
                orig_end_idx = i
                break

        # ── Build fixed file content ─────────────────────────────────────────────
        before = "\n".join(original_lines[:orig_start_idx])
        after_lines = original_lines[orig_end_idx + 1:]

        # Detect method signatures present in fixed_code (besides the primary one)
        # so we can remove their originals from the 'after' section.
        # This handles the case where the LLM bundles multiple method fixes in one block.
        _METHOD_SIG_RE_LOCAL = re.compile(
            r"^\s*(?:(?:public|protected|private|static|final|abstract|synchronized)\s+)+"
            r"[\w<>\[\],.\s]+?\s+\w+\s*\("
        )
        fixed_code_sigs: set[str] = set()
        for fline in fixed_code.splitlines():
            if _METHOD_SIG_RE_LOCAL.match(fline):
                fixed_code_sigs.add(fline.strip())

        # Remove duplicate method definitions from the 'after' section
        deduped_after: list[str] = []
        skip_until_depth_zero = False
        dup_depth = 0
        for aline in after_lines:
            stripped_a = aline.strip()
            if not skip_until_depth_zero:
                # Check if this line is a duplicate method signature
                if stripped_a in fixed_code_sigs and _METHOD_SIG_RE_LOCAL.match(aline):
                    skip_until_depth_zero = True
                    dup_depth = 0
                    # Count brace of this line too
                    sb = re.sub(r'\"(?:[^\"\\]|\\.)*\"', '""', aline)
                    sb = re.sub(r"//.*$", "", sb)
                    dup_depth += sb.count("{") - sb.count("}")
                    continue
                deduped_after.append(aline)
            else:
                sb = re.sub(r'\"(?:[^\"\\]|\\.)*\"', '""', aline)
                sb = re.sub(r"//.*$", "", sb)
                dup_depth += sb.count("{") - sb.count("}")
                if dup_depth <= 0:
                    skip_until_depth_zero = False
                    dup_depth = 0
                # Skip this line (it's part of the duplicate method)

        fixed_file_content = before + "\n" + fixed_code + "\n" + "\n".join(deduped_after)

        # Ensure file ends with newline
        if original_content.endswith("\n") and not fixed_file_content.endswith("\n"):
            fixed_file_content += "\n"

        # ── Compute unified diff ─────────────────────────────────────────────────
        display_path = rel_path or src_file.name
        diff_lines = list(
            difflib.unified_diff(
                original_content.splitlines(keepends=True),
                fixed_file_content.splitlines(keepends=True),
                fromfile=display_path,
                tofile=display_path,
                n=3,
            )
        )
        diff_str = "".join(diff_lines)

        if diff_str:
            results.append({
                "relative_path": display_path,
                "diff": diff_str,
                "file": src_file,
            })
            print(f"  [pipeline] Diff built for '{display_path}' "
                  f"({orig_end_idx - orig_start_idx + 1} original lines)")
        else:
            print(f"  [pipeline] INFO: no change for '{display_path}' (fixed code identical?)")

    return results


def repair_bug(bug_id: str, force_rerun: bool = False) -> bool:
    """Run the full repair pipeline for a single bug (VibeRepair-style).

    Uses a stateful RepairSession:
      1. First attempt: full prompt with method context + related files.
      2. Subsequent attempts: feed compile/test errors back to the same session.
      Python builds the unified diff from the LLM's corrected method text.

    Args:
        bug_id:      Bug identifier, e.g. "Chart-2".
        force_rerun: Re-execute LogicFL even if output already exists.

    Returns:
        True if the bug was repaired successfully, False otherwise.
    """
    print(f"\n{'=' * 50}")
    print(f"  PIPELINE: {bug_id}")
    print(f"{'=' * 50}")

    # ── Step 1: Run (or reuse) LogicFL ─────────────────────────────────────────
    try:
        result_dir = logicfl_runner.run_logicfl(bug_id, force_rerun)
    except Exception as exc:
        print(f"  [pipeline] ERRORE in LogicFL per {bug_id}: {exc}")
        traceback.print_exc()
        reporter.save_final_report(bug_id, False, None, 0, {"error": str(exc)})
        return False

    # ── Step 2: Parse LogicFL output ───────────────────────────────────────────
    try:
        bug_dir = config.DEFECTS4J_DIR / bug_id
        logicfl_result = logicfl_parser.parse_logicfl_output(bug_dir)
    except Exception as exc:
        print(f"  [pipeline] ERRORE nel parsing LogicFL per {bug_id}: {exc}")
        traceback.print_exc()
        reporter.save_final_report(bug_id, False, None, 0, {"error": str(exc)})
        return False

    print(f"  Fault locations trovate: {len(logicfl_result.fault_locations)}")
    for fl in logicfl_result.fault_locations:
        print(f"    → {fl['class']} riga {fl['line']}")

    if not logicfl_result.fault_locations:
        print("  [pipeline] Nessuna fault location trovata; impossibile generare patch")
        reporter.save_final_report(
            bug_id, False, None, 0,
            {"error": "No fault locations found by LogicFL"},
        )
        return False

    # Resolve source roots once
    from pipeline.logicfl_parser import _read_source_roots
    source_roots = _read_source_roots(bug_dir)

    # ── Step 3: VibeRepair-style repair loop ────────────────────────────────────
    session = llm_patcher.RepairSession(bug_dir)
    diagnostic_prompt = prompt_builder.build_diagnostic_prompt(logicfl_result, attempt=1)
    code_gen_prompt = prompt_builder.build_code_gen_prompt()

    for attempt in range(1, config.MAX_REPAIR_ATTEMPTS + 1):
        print(f"\n  [Tentativo {attempt}/{config.MAX_REPAIR_ATTEMPTS}]")

        # ── LLM call ────────────────────────────────────────────────────────────
        try:
            print("  → Chiamata Azure OpenAI GPT-4o...")
            if attempt == 1:
                diagnosis, raw_response = session.first_attempt(diagnostic_prompt, code_gen_prompt)
                print(f"  → Diagnosi:\n{diagnosis}\n")
            else:
                # Build error summary from previous test result
                error_summary = (
                    f"Compile output:\n{last_test_result.get('compile_output', '')[:800]}\n\n"
                    f"Test output:\n{last_test_result.get('test_output', '')[:800]}"
                )
                raw_response = session.refine(error_summary)

            parsed_blocks = llm_patcher.parse_repair_response(raw_response)
            print(f"  → Blocchi FILE estratti: {len(parsed_blocks)}")
            if not parsed_blocks:
                print("  [pipeline] WARNING: LLM non ha restituito blocchi FILE validi")
                last_test_result = {"status": "LLM_ERROR", "error": "No FILE blocks in response",
                                    "compile_output": "", "test_output": ""}
                reporter.save_attempt_result(
                    bug_id, attempt, "Two-stage Specification-First" if attempt == 1 else "(refine)", raw_response,
                    last_test_result,
                )
                continue

        except Exception as exc:
            print(f"  [pipeline] ERRORE nella chiamata LLM: {exc}")
            traceback.print_exc()
            last_test_result = {"status": "LLM_ERROR", "error": str(exc),
                                "compile_output": "", "test_output": ""}
            reporter.save_attempt_result(
                bug_id, attempt, "Two-stage Specification-First" if attempt == 1 else "(refine)", "",
                last_test_result,
            )
            continue

        # ── Build diffs from corrected methods ───────────────────────────────────
        diff_results = _build_diffs_from_response(parsed_blocks, bug_dir, source_roots)
        if not diff_results:
            print("  [pipeline] WARNING: non è stato possibile costruire nessun diff dai metodi restituiti")
            # Fall back to treating the response as a raw diff (legacy path)
            combined_diff = llm_patcher.extract_diff_from_response(raw_response)
        else:
            combined_diff = "\n".join(d["diff"] for d in diff_results)
            print(f"  → Diff costruito ({len(combined_diff)} caratteri)")

        # ── Apply patch ─────────────────────────────────────────────────────────
        try:
            print("  → Applicazione patch...")
            patched_dir = patch_applier.apply_patch(bug_dir, combined_diff, attempt)
        except Exception as exc:
            print(f"  [pipeline] ERRORE nell'applicazione patch: {exc}")
            traceback.print_exc()
            last_test_result = {"status": "PATCH_ERROR", "error": str(exc),
                                "compile_output": "", "test_output": ""}
            reporter.save_attempt_result(
                bug_id, attempt, "Two-stage Specification-First" if attempt == 1 else "(refine)",
                combined_diff, last_test_result,
            )
            continue

        # ── Run tests ───────────────────────────────────────────────────────────
        try:
            print("  → Esecuzione test suite...")
            last_test_result = test_runner.run_tests(bug_dir, patched_dir, attempt)
        except Exception as exc:
            print(f"  [pipeline] ERRORE nell'esecuzione dei test: {exc}")
            traceback.print_exc()
            last_test_result = {"status": "TEST_ERROR", "error": str(exc),
                                "compile_output": "", "test_output": ""}

        reporter.save_attempt_result(
            bug_id, attempt, "Two-stage Specification-First" if attempt == 1 else "(refine)",
            combined_diff, last_test_result,
        )

        if last_test_result.get("status") == "PASS":
            reporter.save_final_report(bug_id, True, attempt, attempt, last_test_result)
            reporter.print_summary(
                bug_id, {**last_test_result, "winning_attempt": attempt, "total_attempts": attempt}
            )
            return True

        print(f"  ✗ Fallito: {last_test_result.get('status', 'UNKNOWN')}")

    # ── All attempts exhausted ──────────────────────────────────────────────────
    reporter.save_final_report(
        bug_id, False, None, config.MAX_REPAIR_ATTEMPTS,
        {"status": "FAIL", "total_attempts": config.MAX_REPAIR_ATTEMPTS,
         "last_failure": last_test_result.get("test_output", "")[:500]},
    )
    reporter.print_summary(bug_id, {
        "status": "FAIL", "total_tests": 0, "failed_tests": 0,
        "total_attempts": config.MAX_REPAIR_ATTEMPTS,
    })
    return False



# ── CLI ───────────────────────────────────────────────────────────────────────

def _parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="LogicFL → LLM Patcher: Automated Program Repair pipeline",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  python run_pipeline.py --bug Chart-2
  python run_pipeline.py --bug Chart-2 --force-rerun-logicfl
  python run_pipeline.py --bug Chart-2,Chart-4,Gson-6
  python run_pipeline.py --bug all
        """,
    )
    parser.add_argument(
        "--bug",
        required=True,
        help=(
            'Bug ID to repair (e.g. "Chart-2"), comma-separated list, '
            'or "all" to run all 38 NPE bugs.'
        ),
    )
    parser.add_argument(
        "--force-rerun-logicfl",
        action="store_true",
        help="Re-execute LogicFL even if result/fault_locs.txt already exists.",
    )
    return parser.parse_args()


def _resolve_bug_ids(bug_arg: str) -> list[str]:
    """Expand 'all' or a comma-separated list to concrete bug IDs."""
    if bug_arg.strip().lower() == "all":
        return list(NPE_BUGS)
    return [b.strip() for b in bug_arg.split(",") if b.strip()]


def main() -> None:
    args = _parse_args()
    bug_ids = _resolve_bug_ids(args.bug)
    force_rerun = args.force_rerun_logicfl

    print(f"\n{'#' * 50}")
    print(f"  LogicFL → LLM Patcher")
    print(f"  Bug da riparare: {len(bug_ids)}")
    print(f"  Risultati in: {config.PIPELINE_RESULTS_DIR}")
    print(f"{'#' * 50}")

    config.PIPELINE_RESULTS_DIR.mkdir(parents=True, exist_ok=True)

    results: dict[str, bool] = {}
    for bug_id in bug_ids:
        try:
            success = repair_bug(bug_id, force_rerun)
            results[bug_id] = success
        except KeyboardInterrupt:
            print("\n[pipeline] Interrotto dall'utente.")
            break
        except Exception as exc:
            print(f"\n[pipeline] Errore inatteso per {bug_id}: {exc}")
            traceback.print_exc()
            results[bug_id] = False

    # Final summary if multiple bugs
    if len(bug_ids) > 1:
        n_pass = sum(1 for v in results.values() if v)
        n_total = len(results)
        print(f"\n{'#' * 50}")
        print(f"  RIEPILOGO FINALE")
        print(f"  Riparati: {n_pass}/{n_total}")
        for bid, ok in results.items():
            icon = "✅" if ok else "❌"
            print(f"    {icon} {bid}")
        print(f"{'#' * 50}\n")


if __name__ == "__main__":
    main()
