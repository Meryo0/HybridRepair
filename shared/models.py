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


class NPECategory(Enum):
    """Classification of an NPE based on Prolog rule analysis."""

    NULL_RETURN = "null_return"
    """A method returns null and the result is dereferenced."""

    NULL_ARGUMENT = "null_argument"
    """A null argument is passed to a method that doesn't handle it."""

    UNINITIALIZED_FIELD = "uninitialized_field"
    """A field is never initialized (or set to null in the constructor)."""

    NULL_ARRAY_ACCESS = "null_array_access"
    """An array/collection element that is null is accessed."""

    NULL_DEREFERENCE = "null_dereference"
    """A variable that is null is dereferenced directly."""

    NULL_LITERAL_ASSIGN = "null_literal_assign"
    """A variable is explicitly assigned null and then dereferenced."""

    UNKNOWN = "unknown"


@dataclass
class GroundedEntity:
    """A Prolog entity resolved to its real Java identity."""

    prolog_id: str
    """Internal Prolog identifier (e.g. 'v_r_207')."""

    java_name: str
    """Real Java name (e.g. 'r')."""

    java_type: str = ""
    """Resolved Java type (e.g. 'Range'). Empty if unresolved."""

    entity_kind: str = "unknown"
    """One of: 'variable', 'field', 'parameter', 'literal', 'expression'."""

    source_line: int = 0
    """1-indexed source line where this entity appears."""


@dataclass
class GroundedCause:
    """A single cause in the NPE causal chain, with resolved Java context."""

    entity: GroundedEntity
    explanation: str = ""
    """Human-readable explanation, e.g. 'Variable `result` (type Range) is assigned null at line 780'."""


@dataclass
class GroundedNPE:
    """A fully grounded NPE diagnosis with classification and repair directive."""

    crash_line: int = 0
    """Line where the NPE manifests."""

    class_id: str = ""
    """Prolog class identifier (e.g. 'dataset_utilities_1')."""

    null_entity: Optional[GroundedEntity] = None
    """The entity that is null at the crash site."""

    causes: List[GroundedCause] = field(default_factory=list)
    """Ordered causal chain explaining how null propagated."""

    category: NPECategory = NPECategory.UNKNOWN
    """Classification of the NPE type."""

    repair_directive: str = ""
    """Targeted repair instruction based on the NPE category."""


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

    grounded_chains: List[GroundedNPE] = field(default_factory=list)
    """Semantically grounded NPE chains with resolved types and repair directives."""


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
