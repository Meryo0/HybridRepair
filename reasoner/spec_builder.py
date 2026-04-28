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

### Fault Location
- **Class:** `{class_name}`
- **Line:** {line}
- **Method:**
```java
{method_source}
```

### Prolog Causal Chain (from LogicFL)
{causal_chains}

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

Respond in this exact format:
<flawed_behavior>...</flawed_behavior>
<intended_behavior>...</intended_behavior>
<minimal_fix>...</minimal_fix>
"""


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
    primary = fault_report.locations[0] if fault_report.locations else None

    return SPEC_USER_TEMPLATE.format(
        bug_id=fault_report.bug_id,
        class_name=primary.class_name if primary else "unknown",
        line=primary.line if primary else 0,
        method_source=primary.method_source if primary else "(not available)",
        causal_chains="\n".join(fault_report.causal_chains) or "(none)",
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
    print(f"    Flawed:   {spec.flawed_behavior[:100]}...")
    print(f"    Intended: {spec.intended_behavior[:100]}...")
    print(f"    Fix:      {spec.minimal_fix[:100]}...")

    return spec
