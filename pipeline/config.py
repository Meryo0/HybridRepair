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
LLM_TEMPERATURE: float = 0.2
LLM_MAX_TOKENS: int = 4096
