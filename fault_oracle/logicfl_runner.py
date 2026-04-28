"""Wrapper to run or reuse LogicFL for a single bug.

Checks whether result/fault_locs.txt already exists before invoking
LogicFL, to avoid redundant reruns.

Migrated from pipeline/logicfl_runner.py for HybridRepair v2.
"""

from __future__ import annotations

import subprocess
from pathlib import Path

from shared import config


def run_logicfl(bug_id: str, force_rerun: bool = False) -> Path:
    """Run LogicFL for the given bug (or reuse existing output).

    Args:
        bug_id:      Bug identifier, e.g. "Chart-2".
        force_rerun: If True, always re-execute LogicFL even if output exists.

    Returns:
        Path to the result/ directory for this bug.

    Raises:
        FileNotFoundError: If the bug directory does not exist.
        RuntimeError:      If LogicFL execution fails.
    """
    bug_dir = config.DEFECTS4J_DIR / bug_id
    if not bug_dir.exists():
        raise FileNotFoundError(
            f"Bug directory not found: {bug_dir}\n"
            f"Available bugs: check {config.DEFECTS4J_DIR}"
        )

    result_dir = bug_dir / "result"
    fault_locs = result_dir / "fault_locs.txt"

    # Reuse existing output if available
    if fault_locs.exists() and not force_rerun:
        print(f"  [fault_oracle] LogicFL già eseguito per {bug_id}, uso risultati esistenti")
        return result_dir

    print(f"  [fault_oracle] Avvio LogicFL per {bug_id}...")

    # Try run_logicfl_diagnostics.py first
    success = _try_run_diagnostics_script(bug_id)

    # Fallback: run logic_fl.sh directly inside the bug dir
    if not success:
        success = _try_run_logic_fl_sh(bug_dir)

    # Verify output was produced
    if not fault_locs.exists():
        print(f"  [fault_oracle] ATTENZIONE: {fault_locs} non trovato. "
              f"Possibile che LogicFL abbia trovato 0 fault locations.")

    print(f"  [fault_oracle] LogicFL completato per {bug_id}")
    return result_dir


def _try_run_diagnostics_script(bug_id: str) -> bool:
    """Attempt to run run_logicfl_diagnostics.py for a single bug.

    Returns True if the script exits with code 0.
    """
    cmd = [
        "python",
        str(config.REPO_ROOT / "run_logicfl_diagnostics.py"),
        "--bugs", bug_id,
        "--workspace", str(config.REPO_ROOT),
    ]
    print(f"  [fault_oracle] Provo: {' '.join(cmd)}")
    try:
        result = subprocess.run(
            cmd,
            cwd=str(config.REPO_ROOT),
            capture_output=True,
            text=True,
            timeout=3600,
        )
        if result.returncode == 0:
            print(f"  [fault_oracle] run_logicfl_diagnostics.py riuscito")
            return True
        print(
            f"  [fault_oracle] run_logicfl_diagnostics.py fallito "
            f"(exit {result.returncode}):\n{result.stderr[:300]}"
        )
        return False
    except FileNotFoundError:
        print("  [fault_oracle] python non trovato per diagnostics script")
        return False
    except subprocess.TimeoutExpired:
        print("  [fault_oracle] run_logicfl_diagnostics.py scaduto (timeout)")
        return False


def _try_run_logic_fl_sh(bug_dir: Path) -> bool:
    """Attempt to run logic_fl.sh directly inside the bug directory.

    Returns True if the script exits with code 0.
    """
    logic_fl_sh = bug_dir / "logic_fl.sh"
    if not logic_fl_sh.exists():
        print(f"  [fault_oracle] {logic_fl_sh} non trovato")
        return False

    print(f"  [fault_oracle] Provo: bash logic_fl.sh in {bug_dir}")
    try:
        result = subprocess.run(
            ["bash", "logic_fl.sh"],
            cwd=str(bug_dir),
            capture_output=True,
            text=True,
            timeout=3600,
        )
        if result.returncode == 0:
            print("  [fault_oracle] logic_fl.sh riuscito")
            return True
        raise RuntimeError(
            f"logic_fl.sh fallito (exit {result.returncode}):\n{result.stderr[:500]}"
        )
    except subprocess.TimeoutExpired:
        raise RuntimeError("logic_fl.sh scaduto (timeout 1h)")
