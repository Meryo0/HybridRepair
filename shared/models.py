"""Core data models for HybridRepair v2.

All structured types exchanged between the three pipeline phases
(FaultOracle → SpecReason → PatchAgent) and the services layer.
"""

from __future__ import annotations

from dataclasses import dataclass, field
from enum import Enum
from pathlib import Path
from typing import Any, Dict, List, Optional


# ── Phase 1: FaultOracle output ──────────────────────────────────────────────


@dataclass
class FaultLocation:
    """A single suspicious location identified by LogicFL."""

    class_name: str
    """Fully-qualified Java class name (e.g. 'org.jfree.data.general.DatasetUtilities')."""

    line: int
    """1-indexed line number in the source file."""

    file_path: Path
    """Absolute path to the Java source file."""

    method_source: str = ""
    """Full source text of the enclosing method (populated by ast_extractor)."""

    method_start: int = 0
    """1-indexed start line of the enclosing method."""

    method_end: int = 0
    """1-indexed end line of the enclosing method."""


@dataclass
class FaultReport:
    """Complete output from Phase 1 (FaultOracle).

    Aggregates LogicFL results with AST-enriched method context.
    """

    bug_id: str

    locations: List[FaultLocation] = field(default_factory=list)
    """Ranked list of suspicious locations (most suspicious first)."""

    root_cause_text: str = ""
    """Raw text from result/root_cause.txt."""

    causal_chains: List[str] = field(default_factory=list)
    """Individual NPE causal chains parsed from root_cause.txt."""

    failing_tests: List[Dict[str, str]] = field(default_factory=list)
    """Parsed failing tests: [{'class': str, 'method': str}, ...]."""

    stack_traces: str = ""
    """Raw text of stack_traces.txt."""


# ── Phase 2: SpecReason output ───────────────────────────────────────────────


@dataclass
class RepairSpec:
    """Natural-language specification produced by Phase 2 (SpecReason).

    The LLM reasons about the bug *before* generating any code.
    """

    flawed_behavior: str = ""
    """What the buggy method currently does wrong."""

    intended_behavior: str = ""
    """What the method *should* do, inferred from tests + JavaDoc."""

    minimal_fix: str = ""
    """Conceptual description of the smallest change that fixes the bug."""

    confidence: float = 0.0
    """Self-assessed confidence from the critic (0.0–1.0)."""


@dataclass
class Ingredients:
    """Static context collected proactively by IngredientForge.

    Injected into the LLM prompt so it doesn't hallucinate APIs.
    """

    class_fields: List[str] = field(default_factory=list)
    """Field declarations of the target class."""

    public_methods: List[str] = field(default_factory=list)
    """Public/protected method signatures of the target class."""

    superclass_methods: List[str] = field(default_factory=list)
    """Public methods inherited from direct superclasses."""

    imported_types: List[str] = field(default_factory=list)
    """Fully-qualified types imported in the source file."""

    local_variables: List[str] = field(default_factory=list)
    """Variables visible in the scope of the fault line."""

    caller_context: str = ""
    """Source of the method(s) that call the buggy method."""


# ── Phase 3: PatchAgent output ───────────────────────────────────────────────


class AttemptStatus(Enum):
    """Outcome of a single patch attempt."""

    PENDING = "PENDING"
    COMPILE_ERROR = "COMPILE_ERROR"
    TEST_FAIL = "TEST_FAIL"
    PASS = "PASS"


@dataclass
class TestResult:
    """Structured result from compiling and running JUnit tests."""

    status: AttemptStatus = AttemptStatus.PENDING

    compile_ok: bool = False
    compile_output: str = ""

    total_tests: int = 0
    failed_tests: int = 0
    failing_test_names: List[str] = field(default_factory=list)
    previously_failing_now_passing: List[str] = field(default_factory=list)

    test_output: str = ""
    stack_traces_block: str = ""


@dataclass
class PatchAttempt:
    """Record of a single repair attempt by the PatchAgent."""

    attempt_number: int
    fixed_code: str = ""
    """The corrected method source produced by the LLM."""

    diff: str = ""
    """Unified diff between original and patched file."""

    test_result: Optional[TestResult] = None

    agent_messages: List[Dict[str, Any]] = field(default_factory=list)
    """Full conversation history for this attempt (for debugging)."""

    error_summary: str = ""
    """Human-readable summary of why this attempt failed (if it did)."""


# ── Final pipeline output ────────────────────────────────────────────────────


@dataclass
class RepairResult:
    """Aggregated outcome of the entire repair pipeline for one bug."""

    bug_id: str
    success: bool = False

    winning_attempt: Optional[int] = None
    """1-based index of the attempt that passed all tests, or None."""

    total_attempts: int = 0
    attempts: List[PatchAttempt] = field(default_factory=list)

    fault_report: Optional[FaultReport] = None
    repair_spec: Optional[RepairSpec] = None

    def summary(self) -> str:
        """One-line summary for terminal output."""
        if self.success:
            return f"✅ {self.bug_id}: fixed at attempt {self.winning_attempt}/{self.total_attempts}"
        return f"❌ {self.bug_id}: failed after {self.total_attempts} attempts"
