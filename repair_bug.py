#!/usr/bin/env python3
"""HybridRepair v2 — Main entry point.

Replaces the monolithic run_pipeline.py with a clean three-phase pipeline:
  Phase 1: FaultOracle (LogicFL) → FaultReport
  Phase 2: SpecReason (CoT)     → RepairSpec
  Phase 3: PatchAgent (Tools)   → RepairResult

Usage:
    python repair_bug.py Chart-2
    python repair_bug.py Chart-2 --skip-logicfl
"""

from __future__ import annotations

import argparse
import sys
import time

from shared import config
from shared.models import RepairResult


def repair_bug(bug_id: str, skip_logicfl: bool = False) -> RepairResult:
    """Run the full three-phase repair pipeline for a single bug.

    Args:
        bug_id: Bug identifier (e.g. "Chart-2").
        skip_logicfl: If True, skip LogicFL execution (use cached results).

    Returns:
        A RepairResult with the outcome.
    """
    from fault_oracle.logicfl_runner import run_logicfl
    from fault_oracle.logicfl_parser import parse_logicfl_output
    from reasoner.ingredient_forge import collect as collect_ingredients
    from reasoner.spec_builder import build as build_spec
    from reasoner.spec_critic import validate as validate_spec
    from patch_agent.agent import PatchAgent
    from services.azure_client import AzureClient
    from services.reporter import save_final_report, print_summary

    start_time = time.time()
    print(f"\n{'━'*60}")
    print(f"  HybridRepair v2 — {bug_id}")
    print(f"{'━'*60}")

    # Skip env-incompatible bugs
    if bug_id in config.ENV_INCOMPATIBLE_BUGS:
        print(f"  ⚠️  {bug_id} is environment-incompatible, skipping.")
        return RepairResult(bug_id=bug_id)

    bug_dir = config.DEFECTS4J_DIR / bug_id

    # ── Phase 1: FaultOracle ─────────────────────────────────────────────
    print(f"\n  ▶ Phase 1: FaultOracle (LogicFL)")
    try:
        if not skip_logicfl:
            run_logicfl(bug_id)
        fault_report = parse_logicfl_output(bug_dir)
    except Exception as exc:
        print(f"  ❌ Phase 1 failed: {exc}")
        result = RepairResult(bug_id=bug_id)
        save_final_report(result)
        return result

    if not fault_report.locations:
        print(f"  ❌ No fault locations found for {bug_id}")
        result = RepairResult(bug_id=bug_id, fault_report=fault_report)
        save_final_report(result)
        return result

    print(f"  ✓ Found {len(fault_report.locations)} fault location(s)")
    for loc in fault_report.locations[:3]:
        print(f"    · {loc.class_name}:{loc.line}")

    # ── Phase 2: SpecReason ──────────────────────────────────────────────
    print(f"\n  ▶ Phase 2: SpecReason (CoT Reasoning)")
    client = AzureClient()

    # Collect static ingredients
    ingredients = collect_ingredients(fault_report)

    # Build repair specification (one rebuild if the critic has low confidence)
    LOW_CONFIDENCE = 0.4
    try:
        spec = build_spec(fault_report, ingredients, client=client)
        spec = validate_spec(spec, fault_report, client=client)
        if spec.confidence < LOW_CONFIDENCE:
            print(f"  ⚠️  Low critic confidence ({spec.confidence:.2f}) — "
                  f"rebuilding the spec once")
            retry = build_spec(fault_report, ingredients, client=client,
                               temperature=0.3)
            retry = validate_spec(retry, fault_report, client=client)
            if retry.confidence > spec.confidence:
                spec = retry
    except Exception as exc:
        print(f"  ⚠️  Phase 2 failed ({exc}), proceeding with empty spec")
        from shared.models import RepairSpec
        spec = RepairSpec()

    print(f"  ✓ RepairSpec ready (confidence: {spec.confidence:.2f})")

    # ── Phase 3: PatchAgent ──────────────────────────────────────────────
    print(f"\n  ▶ Phase 3: PatchAgent (Agentic Repair Loop)")
    agent = PatchAgent(
        fault_report=fault_report,
        repair_spec=spec,
        ingredients=ingredients,
        client=client,
    )
    result = agent.run()

    # ── Report ───────────────────────────────────────────────────────────
    elapsed = time.time() - start_time
    save_final_report(result)
    print_summary(result)
    print(f"  ⏱  Total time: {elapsed:.1f}s")

    return result


def main():
    parser = argparse.ArgumentParser(
        description="HybridRepair v2 — Automated Java bug repair"
    )
    parser.add_argument(
        "bug_id",
        help="Bug identifier (e.g. Chart-2, Math-70, Gson-6)",
    )
    parser.add_argument(
        "--skip-logicfl",
        action="store_true",
        help="Skip LogicFL execution (use cached results)",
    )

    args = parser.parse_args()
    result = repair_bug(args.bug_id, skip_logicfl=args.skip_logicfl)

    sys.exit(0 if result.success else 1)


if __name__ == "__main__":
    main()
