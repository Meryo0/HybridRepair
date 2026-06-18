"""Specification Builder — CoT reasoning before code generation.

Inspired by VibeRepair + ThinkRepair. Before generating any code,
the LLM must answer three questions:
  1. "What does this method do now?" (Flawed Behavior)
  2. "What should it do?" (Intended Behavior from tests + JavaDoc)
  3. "What is the minimal conceptual fix?" (Repair Specification)

This resolves P4 (LLM does pattern matching) and P6 (hard-coded bug classifier).
"""

from __future__ import annotations

from typing import Optional

from shared.models import FaultReport, Ingredients, RepairSpec
from services.azure_client import AzureClient


# ── Prompt Templates ─────────────────────────────────────────────────────────

SPEC_SYSTEM_PROMPT = """\
You are an expert Java bug analyst. Your task is to reason about a bug \
BEFORE writing any code. You must provide a precise natural-language \
specification of the fix, NOT the code itself.

Respond ONLY in the structured format below — no code, no diffs, no patches."""

SPEC_USER_TEMPLATE = """\
## Bug Analysis Task

**Bug ID:** {bug_id}

### Fault Locations (full causal chain from LogicFL)
{fault_locations}
{sibling_occurrences}
### Prolog Causal Analysis (from LogicFL — Semantically Grounded)
{causal_analysis}

### Repair Directives (from Prolog Rule Analysis)
{repair_directives}

### Failing Test(s)
{failing_tests}

### Stack Trace
```
{stack_traces}
```

### Available API (Repair Ingredients)
**Class fields:** {class_fields}
**Public methods:** {public_methods}
**Imported types:** {imported_types}
**Local variables:** {local_variables}

---

## Your Task

Answer these three questions precisely and concisely:

### 1. Flawed Behavior
What does the buggy method currently do wrong? Be specific about the \
exact line and the nature of the defect (e.g., "line 42 dereferences \
`result` which can be null when the input array is empty").

### 2. Intended Behavior
What SHOULD the method do? Infer this from the test expectations and \
any JavaDoc comments. Be specific.

### 3. Minimal Fix
What is the SMALLEST conceptual change that fixes the bug? Describe it \
in plain English (e.g., "Add a null check for `result` before line 42, \
returning an empty array if null"). Do NOT write code.

### 4. Fix Locations
For EACH fault location listed above (and each suspect twin location, if \
any), state whether the fix must touch it, and why. A fix that silences \
the crash point while leaving an upstream cause unaddressed (a null \
origin, an inverted logic, an unguarded twin method) is INVALID. Be \
explicit: "Location 1 (Class:line): must change because ... / no change \
needed because ...".

Respond in this exact format:
<flawed_behavior>...</flawed_behavior>
<intended_behavior>...</intended_behavior>
<minimal_fix>...</minimal_fix>
<fix_locations>...</fix_locations>
"""


# ── Shared prompt-section formatters (also used by patch_agent.agent) ─────────

MAX_PROMPT_LOCATIONS = 5
"""Cap the number of fault locations rendered in prompts to bound context size."""


def format_fault_locations(fault_report: FaultReport) -> str:
    """Render ALL fault locations (crash point + transfer chain) for a prompt.

    The full method source is included for the primary location; secondary
    locations within the same method are merged by the parser already, so
    each entry here is a distinct method/position of the causal chain.
    """
    if not fault_report.locations:
        return "(no fault locations available)"

    sections = []
    for i, loc in enumerate(fault_report.locations[:MAX_PROMPT_LOCATIONS], 1):
        tag = "PRIMARY (crash point)" if i == 1 else "transfer-chain location"
        body = loc.method_source or "(method source not available)"
        javadoc = f"```java\n{loc.javadoc}\n```\n" if loc.javadoc else ""
        sections.append(
            f"#### Location {i} — {tag}\n"
            f"- **Class:** `{loc.class_name}`\n"
            f"- **Line:** {loc.line}\n"
            f"{javadoc}"
            f"```java\n{body}\n```"
        )

    skipped = len(fault_report.locations) - MAX_PROMPT_LOCATIONS
    if skipped > 0:
        sections.append(f"(+{skipped} lower-ranked location(s) omitted)")

    return "\n\n".join(sections)


def format_sibling_occurrences(ingredients: Ingredients) -> str:
    """Render the twin-location warnings collected by the IngredientForge."""
    if not ingredients.sibling_occurrences:
        return ""
    bullets = "\n".join(f"- {s}" for s in ingredients.sibling_occurrences)
    return (
        "\n### ⚠ Suspect twin locations\n"
        "The expression at the crash line also appears UNGUARDED elsewhere "
        "in the same class. The same defect likely exists there too — "
        "consider fixing ALL of them:\n"
        f"{bullets}\n"
    )


# ── Building and Parsing ─────────────────────────────────────────────────────

def _format_list(items: list, max_items: int = 20) -> str:
    """Format a list as a comma-separated string, truncating if needed."""
    if not items:
        return "(none available)"
    truncated = items[:max_items]
    result = ", ".join(f"`{item}`" for item in truncated)
    if len(items) > max_items:
        result += f" ... (+{len(items) - max_items} more)"
    return result


def _build_spec_prompt(
    fault_report: FaultReport,
    ingredients: Ingredients,
) -> str:
    """Build the CoT specification prompt."""
    # Use grounded chains if available, fall back to raw chains
    if fault_report.grounded_chains:
        from fault_oracle.prolog_grounding import format_grounded_chains
        causal_analysis = format_grounded_chains(fault_report.grounded_chains)
        directives = []
        for gc in fault_report.grounded_chains:
            if gc.repair_directive:
                directives.append(f"- {gc.repair_directive}")
        repair_directives = "\n".join(directives) if directives else "(none)"
    else:
        causal_analysis = "\n".join(fault_report.causal_chains) or "(none)"
        repair_directives = "(no rule-based directives available)"

    return SPEC_USER_TEMPLATE.format(
        bug_id=fault_report.bug_id,
        fault_locations=format_fault_locations(fault_report),
        sibling_occurrences=format_sibling_occurrences(ingredients),
        causal_analysis=causal_analysis,
        repair_directives=repair_directives,
        failing_tests="\n".join(
            f"- `{t['class']}::{t.get('method', '?')}`"
            for t in fault_report.failing_tests
        ) or "(none)",
        stack_traces=fault_report.stack_traces[:3000] or "(none)",
        class_fields=_format_list(ingredients.class_fields),
        public_methods=_format_list(ingredients.public_methods),
        imported_types=_format_list(ingredients.imported_types),
        local_variables=_format_list(ingredients.local_variables),
    )


def _parse_spec_response(response: str) -> RepairSpec:
    """Parse XML-tagged spec response into a RepairSpec."""
    import re

    def extract(tag: str) -> str:
        m = re.search(rf"<{tag}>\s*(.*?)\s*</{tag}>", response, re.DOTALL)
        return m.group(1).strip() if m else ""

    return RepairSpec(
        flawed_behavior=extract("flawed_behavior"),
        intended_behavior=extract("intended_behavior"),
        minimal_fix=extract("minimal_fix"),
        fix_locations=extract("fix_locations"),
    )


# ── Public API ────────────────────────────────────────────────────────────────


def build(
    fault_report: FaultReport,
    ingredients: Ingredients,
    client: Optional[AzureClient] = None,
    temperature: float = 0.1,
) -> RepairSpec:
    """Build a RepairSpec by asking the LLM to reason about the bug.

    Args:
        fault_report: Output from Phase 1.
        ingredients: Static context from IngredientForge.
        client: Azure OpenAI client (creates one if not provided).
        temperature: LLM temperature for reasoning.

    Returns:
        A RepairSpec with natural-language descriptions of the fix.
    """
    if client is None:
        client = AzureClient()

    if not fault_report.locations:
        print("  [spec_builder] WARNING: no fault locations, returning empty spec")
        return RepairSpec()

    prompt = _build_spec_prompt(fault_report, ingredients)

    messages = [
        {"role": "system", "content": SPEC_SYSTEM_PROMPT},
        {"role": "user", "content": prompt},
    ]

    print(f"  [spec_builder] Sending CoT reasoning prompt for {fault_report.bug_id}...")
    response = client.chat(messages, temperature=temperature)

    spec = _parse_spec_response(response)

    print(f"  [spec_builder] RepairSpec built:")
    print(f"    Flawed:    {spec.flawed_behavior[:100]}...")
    print(f"    Intended:  {spec.intended_behavior[:100]}...")
    print(f"    Fix:       {spec.minimal_fix[:100]}...")
    print(f"    Locations: {spec.fix_locations[:100]}...")

    return spec
