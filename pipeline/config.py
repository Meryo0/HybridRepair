"""Global configuration for the LogicFL → LLM Patcher pipeline.

Reads Azure OpenAI credentials from a .env file and exposes shared
constants used across all pipeline modules.
"""

from __future__ import annotations

import os
from pathlib import Path

from dotenv import load_dotenv

# Load .env from the repo root (one level up from this file's package dir)
_REPO_ROOT = Path(__file__).resolve().parent.parent
load_dotenv(_REPO_ROOT / ".env")

# ── Azure OpenAI ──────────────────────────────────────────────────────────────
AZURE_OPENAI_API_KEY: str = os.environ.get("AZURE_OPENAI_API_KEY", "")
AZURE_OPENAI_ENDPOINT: str = os.environ.get("AZURE_OPENAI_ENDPOINT", "")
AZURE_OPENAI_DEPLOYMENT: str = os.environ.get("AZURE_OPENAI_DEPLOYMENT", "gpt-4o")
AZURE_OPENAI_API_VERSION: str = os.environ.get("AZURE_OPENAI_API_VERSION", "2024-02-01")

# ── Paths ─────────────────────────────────────────────────────────────────────
LOGICFL_ROOT: Path = _REPO_ROOT
DEFECTS4J_DIR: Path = LOGICFL_ROOT / "defects4j"
PIPELINE_RESULTS_DIR: Path = LOGICFL_ROOT / "pipeline_results"

# ── Pipeline tuning ───────────────────────────────────────────────────────────
MAX_REPAIR_ATTEMPTS: int = 3
# Per-attempt temperature schedule: lower for precision, higher for diversity.
# Delta MUST be large enough for GPT-4o to actually diversify between attempts.
#   A1 = 0.1  → minimize hallucination on first shot (diagnosis-first)
#   A2 = 0.2  → tight diversity after execution feedback
#   A3 = 0.4  → moderate diversification — enough to escape local minima but
#              not so high that the LLM reinvents APIs (as observed on Cli-30
#              and Closure-171 in the 2026-04-24 run at 0.7).
# Rationale for the 2026-04-24 downshift: post-mortem of the 1/11 recovery
# rate showed that failures at temp=0.7 were dominated by API hallucination,
# not by lack of creativity. Lower T + better context (API grounding S3,
# overload-chain hint, sibling multi-method) is the winning combination.
LLM_TEMPERATURE_SCHEDULE: list[float] = [0.1, 0.2, 0.4]
LLM_TEMPERATURE: float = 0.1  # Default / first-attempt temperature
LLM_MAX_TOKENS: int = 4096

# Adaptive temperature: if the previous attempt failed with COMPILE_ERROR,
# LOWER the scheduled temperature by this delta (more grounded, less hallucination).
# Rationale: hallucinated APIs get WORSE with higher temperature. With the
# schedule starting at 0.1 we use a smaller downshift so we don't go below 0.
COMPILE_ERROR_TEMP_DOWNSHIFT: float = 0.15

# ── Actor-Critic settings ────────────────────────────────────────────────
MAX_CRITIC_ITERATIONS: int = 2
CRITIC_MODEL: str = os.environ.get("CRITIC_MODEL", AZURE_OPENAI_DEPLOYMENT)
USE_STRUCTURED_OUTPUT: bool = os.environ.get("USE_STRUCTURED_OUTPUT", "true").lower() == "true"

# ── S4: Self-consistency (opt-in) ────────────────────────────────────────────
# When enabled, generate K candidate patches in parallel (different temps)
# on the last attempt and pick the smallest-diff one that passes critic+tests.
SELF_CONSISTENCY_ENABLED: bool = os.environ.get("SELF_CONSISTENCY", "false").lower() == "true"
SELF_CONSISTENCY_K: int = 3
SELF_CONSISTENCY_TEMPS: list[float] = [0.2, 0.5, 0.9]

# ── Environment-incompatible bugs (skipped from metrics) ─────────────────────
# Mockito-38: CGLIB+Java17 incompatibility (sun.misc.Unsafe access restrictions).
# These are NOT pipeline bugs — they fail at runtime for environmental reasons.
ENV_INCOMPATIBLE_BUGS: set[str] = {"Mockito-38"}
