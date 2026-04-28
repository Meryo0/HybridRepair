"""Specification Critic — self-validation of RepairSpec.

After the SpecBuilder produces a RepairSpec, this module asks a second
LLM call to validate consistency:
  "Is your explanation consistent with the observed errors?"

If the critic identifies issues, it produces a corrected RepairSpec.
"""

from __future__ import annotations

from typing import Optional

from shared.models import RepairSpec, FaultReport
from services.azure_client import AzureClient


CRITIC_SYSTEM_PROMPT = """\
You are a meticulous code review expert. Your job is to validate a bug \
analysis produced by another analyst. Check for logical consistency, \
factual accuracy, and completeness."""

CRITIC_USER_TEMPLATE = """\
## Validation Task

An analyst produced the following bug specification. Validate it.

**Bug ID:** {bug_id}

### Analyst's Analysis

**Flawed Behavior:**
{flawed_behavior}

**Intended Behavior:**
{intended_behavior}

**Minimal Fix:**
{minimal_fix}

### Ground Truth (from test execution)

**Stack Trace:**
```
{stack_traces}
```

**Failing Tests:**
{failing_tests}

---

## Your Task

1. Is the "Flawed Behavior" description consistent with the stack trace?
2. Is the "Intended Behavior" plausible given the test expectations?
3. Is the "Minimal Fix" truly minimal, or does it over-engineer the solution?
4. Rate your confidence that this specification would lead to a correct fix (0.0-1.0).

If the analysis is correct, respond with the SAME content.
If corrections are needed, provide the corrected version.

Respond in this exact format:
<flawed_behavior>...</flawed_behavior>
<intended_behavior>...</intended_behavior>
<minimal_fix>...</minimal_fix>
<confidence>0.X</confidence>
"""


def _parse_critic_response(response: str) -> tuple[RepairSpec, float]:
    """Parse the critic's response into a corrected RepairSpec + confidence."""
    import re

    def extract(tag: str) -> str:
        m = re.search(rf"<{tag}>\s*(.*?)\s*</{tag}>", response, re.DOTALL)
        return m.group(1).strip() if m else ""

    confidence_str = extract("confidence")
    try:
        confidence = float(confidence_str)
    except (ValueError, TypeError):
        confidence = 0.5  # default if parsing fails

    return RepairSpec(
        flawed_behavior=extract("flawed_behavior"),
        intended_behavior=extract("intended_behavior"),
        minimal_fix=extract("minimal_fix"),
        confidence=confidence,
    ), confidence


def validate(
    spec: RepairSpec,
    fault_report: FaultReport,
    client: Optional[AzureClient] = None,
    temperature: float = 0.1,
) -> RepairSpec:
    """Validate and potentially correct a RepairSpec.

    Args:
        spec: The RepairSpec from SpecBuilder.
        fault_report: The FaultReport for cross-referencing.
        client: Azure OpenAI client.
        temperature: LLM temperature for critique.

    Returns:
        A validated (possibly corrected) RepairSpec with confidence score.
    """
    if client is None:
        client = AzureClient()

    # If spec is empty, nothing to validate
    if not spec.flawed_behavior and not spec.minimal_fix:
        print("  [spec_critic] WARNING: empty spec, skipping validation")
        return spec

    prompt = CRITIC_USER_TEMPLATE.format(
        bug_id=fault_report.bug_id,
        flawed_behavior=spec.flawed_behavior,
        intended_behavior=spec.intended_behavior,
        minimal_fix=spec.minimal_fix,
        stack_traces=fault_report.stack_traces[:2000] or "(none)",
        failing_tests="\n".join(
            f"- `{t['class']}::{t.get('method', '?')}`"
            for t in fault_report.failing_tests
        ) or "(none)",
    )

    messages = [
        {"role": "system", "content": CRITIC_SYSTEM_PROMPT},
        {"role": "user", "content": prompt},
    ]

    print(f"  [spec_critic] Validating RepairSpec for {fault_report.bug_id}...")
    response = client.chat(messages, temperature=temperature)

    validated_spec, confidence = _parse_critic_response(response)

    # If critic returned empty fields, keep the original
    if not validated_spec.flawed_behavior:
        validated_spec.flawed_behavior = spec.flawed_behavior
    if not validated_spec.intended_behavior:
        validated_spec.intended_behavior = spec.intended_behavior
    if not validated_spec.minimal_fix:
        validated_spec.minimal_fix = spec.minimal_fix

    print(f"  [spec_critic] Confidence: {confidence:.2f}")
    if confidence < 0.5:
        print(f"  [spec_critic] WARNING: low confidence ({confidence:.2f})")

    return validated_spec
