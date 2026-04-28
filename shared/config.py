"""Global configuration for HybridRepair v2.

Reads Azure OpenAI credentials from a .env file and exposes shared
constants used across all pipeline modules.

Changes from v1 (pipeline/config.py):
  - Removed Actor-Critic settings (MAX_CRITIC_ITERATIONS, CRITIC_MODEL, etc.)
  - Removed Self-Consistency settings (replaced by agent FSM)
  - Added MAX_AGENT_STEPS for the PatchAgent FSM budget
  - All imports now come from shared.config instead of pipeline.config
"""

from __future__ import annotations

import os
from pathlib import Path

from dotenv import load_dotenv

# Load .env from the repo root (two levels up: shared/ → HybridRepair/)
_REPO_ROOT = Path(__file__).resolve().parent.parent
load_dotenv(_REPO_ROOT / ".env")

# ── Azure OpenAI ──────────────────────────────────────────────────────────────
AZURE_OPENAI_API_KEY: str = os.environ.get("AZURE_OPENAI_API_KEY", "")
AZURE_OPENAI_ENDPOINT: str = os.environ.get("AZURE_OPENAI_ENDPOINT", "")
AZURE_OPENAI_DEPLOYMENT: str = os.environ.get("AZURE_OPENAI_DEPLOYMENT", "gpt-4o")
AZURE_OPENAI_API_VERSION: str = os.environ.get("AZURE_OPENAI_API_VERSION", "2024-02-01")

# ── Paths ─────────────────────────────────────────────────────────────────────
REPO_ROOT: Path = _REPO_ROOT
DEFECTS4J_DIR: Path = _REPO_ROOT / "defects4j"
PIPELINE_RESULTS_DIR: Path = _REPO_ROOT / "pipeline_results"

# ── Agent tuning ──────────────────────────────────────────────────────────────
MAX_REPAIR_ATTEMPTS: int = 3
"""Maximum number of full agent retry cycles."""

MAX_AGENT_STEPS: int = 3
"""Maximum number of tool-call steps within a single agent cycle."""

# Per-attempt temperature schedule: lower for precision, higher for diversity.
#   A1 = 0.1  → minimize hallucination on first shot (diagnosis-first)
#   A2 = 0.2  → tight diversity after execution feedback
#   A3 = 0.4  → moderate diversification — enough to escape local minima but
#              not so high that the LLM reinvents APIs.
LLM_TEMPERATURE_SCHEDULE: list[float] = [0.1, 0.2, 0.4]
LLM_TEMPERATURE: float = 0.1  # Default / first-attempt temperature
LLM_MAX_TOKENS: int = 4096

# Adaptive temperature: if the previous attempt failed with COMPILE_ERROR,
# LOWER the scheduled temperature by this delta.
COMPILE_ERROR_TEMP_DOWNSHIFT: float = 0.15

# ── Environment-incompatible bugs (skipped from metrics) ─────────────────────
# Mockito-38: CGLIB+Java17 incompatibility (sun.misc.Unsafe access restrictions).
# These are NOT pipeline bugs — they fail at runtime for environmental reasons.
ENV_INCOMPATIBLE_BUGS: set[str] = {"Mockito-38"}
