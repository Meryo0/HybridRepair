"""FSM-based PatchAgent — the core agentic repair loop.

Implements the Finite State Machine:
  [EXPLORE] → [PATCH] → [COMPILE] → [TEST] → [DONE|RETRY]

Inspired by RepairAgent + ChatRepair + AlphaRepair.

Key properties:
  - Tool-use: the LLM autonomously calls tools to explore, patch, compile, test.
  - Conversational memory: failed attempts are NEVER discarded (ChatRepair-style).
  - Budget-constrained: max 3 retry cycles, max steps per cycle.
"""

from __future__ import annotations

import shutil
from pathlib import Path
from typing import Any, Dict, List, Optional

from shared import config
from shared.models import (
    FaultReport, RepairSpec, Ingredients,
    PatchAttempt, RepairResult, TestResult, AttemptStatus,
)
from services.azure_client import AzureClient
from patch_agent.tools import ToolContext, create_tool_executor, TOOL_DEFINITIONS
from patch_agent import conversation_store


# ── Agent system prompt ──────────────────────────────────────────────────────

AGENT_SYSTEM_PROMPT = """\
You are an expert Java bug repair agent. Your task is to fix a bug in a \
Defects4J Java project using the tools available to you.

## Workflow
1. **EXPLORE**: Read the buggy code, search for related symbols, check method signatures.
2. **PATCH**: Apply a fix using `apply_ast_patch`. Provide the COMPLETE corrected method.
3. **COMPILE**: Check compilation with `compile_check`.
4. **TEST**: Verify with `run_tests`.

## Rules
- ALWAYS use `apply_ast_patch` to apply fixes. Never output raw diffs.
- ALWAYS compile before testing.
- Use REAL API methods only. Call `get_method_signature` to verify before using an API.
- If compilation fails, read the error, fix the issue, and try again.
- If tests fail, analyze the stack trace and try a different approach.
- Keep fixes MINIMAL. Prefer the smallest change that fixes the bug.
- Do NOT add unnecessary null checks or try/catch blocks.

## Available Tools
- `read_file(file_path)` — Read a Java source file
- `search_symbol(symbol_name)` — Search for symbols in the project
- `get_method_signature(class_name, method_name?)` — Get real API signatures
- `apply_ast_patch(file_path, method_name, new_body, target_line?)` — Apply a fix
- `compile_check()` — Compile the patched code
- `run_tests(test_names?)` — Run JUnit tests
"""

AGENT_USER_TEMPLATE = """\
## Bug: {bug_id}

### Fault Location
- **Class:** `{class_name}`
- **Line:** {line}
- **Method source:**
```java
{method_source}
```

### Bug Specification (from analysis phase)
**Flawed Behavior:** {flawed_behavior}
**Intended Behavior:** {intended_behavior}
**Minimal Fix:** {minimal_fix}

### Prolog Causal Chain
{causal_chains}

### Failing Tests
{failing_tests}

### Stack Trace
```
{stack_traces}
```

### Repair Ingredients (real APIs — do NOT hallucinate others)
**Class fields:** {class_fields}
**Public methods:** {public_methods}

{failure_history}

---

**Fix this bug. Start by exploring the code if needed, then apply the fix, compile, and test.**
"""


class PatchAgent:
    """FSM-based agentic repair loop.

    Usage:
        agent = PatchAgent(fault_report, repair_spec, ingredients)
        result = agent.run()
    """

    def __init__(
        self,
        fault_report: FaultReport,
        repair_spec: RepairSpec,
        ingredients: Ingredients,
        *,
        max_attempts: int = config.MAX_REPAIR_ATTEMPTS,
        client: Optional[AzureClient] = None,
    ):
        self.fault_report = fault_report
        self.repair_spec = repair_spec
        self.ingredients = ingredients
        self.max_attempts = max_attempts
        self.client = client or AzureClient()
        self.result = RepairResult(
            bug_id=fault_report.bug_id,
            fault_report=fault_report,
            repair_spec=repair_spec,
        )

    def run(self) -> RepairResult:
        """Execute the full agent loop with retry cycles.

        Returns:
            A RepairResult with all attempts recorded.
        """
        bug_id = self.fault_report.bug_id
        bug_dir = config.DEFECTS4J_DIR / bug_id

        if not bug_dir.exists():
            print(f"  [agent] ERROR: bug directory not found: {bug_dir}")
            return self.result

        for attempt_num in range(1, self.max_attempts + 1):
            print(f"\n{'='*60}")
            print(f"  [agent] {bug_id} — Attempt {attempt_num}/{self.max_attempts}")
            print(f"{'='*60}")

            # Create a fresh patched source copy for this attempt
            patched_dir = self._create_patched_copy(bug_dir, attempt_num)
            if patched_dir is None:
                continue

            # Set temperature from schedule
            temp_idx = min(attempt_num - 1, len(config.LLM_TEMPERATURE_SCHEDULE) - 1)
            temperature = config.LLM_TEMPERATURE_SCHEDULE[temp_idx]

            # Run the agent for this attempt
            attempt = self._run_single_attempt(
                bug_dir, patched_dir, attempt_num, temperature
            )
            self.result.attempts.append(attempt)
            self.result.total_attempts = attempt_num

            if attempt.test_result and attempt.test_result.status == AttemptStatus.PASS:
                self.result.success = True
                self.result.winning_attempt = attempt_num
                print(f"  [agent] ✅ {bug_id} FIXED at attempt {attempt_num}!")
                break
            else:
                print(f"  [agent] ❌ Attempt {attempt_num} failed: {attempt.error_summary}")

        return self.result

    def _run_single_attempt(
        self,
        bug_dir: Path,
        patched_dir: Path,
        attempt_num: int,
        temperature: float,
    ) -> PatchAttempt:
        """Run a single agent attempt with tool-use loop."""
        attempt = PatchAttempt(attempt_number=attempt_num)

        # Get test classes from fault report
        test_classes = list({t["class"] for t in self.fault_report.failing_tests})

        # Set up tool context
        ctx = ToolContext(bug_dir, patched_dir, test_classes)
        ctx.attempt = attempt_num
        tool_executor = create_tool_executor(ctx)

        # Build the agent prompt
        messages = self._build_messages(attempt_num)

        # Run the tool-use loop
        print(f"  [agent] Starting tool-use loop (temp={temperature})...")
        try:
            response, messages = self.client.chat_with_tools(
                messages,
                TOOL_DEFINITIONS,
                tool_executor,
                temperature=temperature,
                max_tool_rounds=config.MAX_AGENT_STEPS * 3,  # generous budget
            )
        except Exception as exc:
            attempt.error_summary = f"LLM call failed: {exc}"
            print(f"  [agent] ERROR: {attempt.error_summary}")
            return attempt

        # Save conversation
        attempt.agent_messages = messages
        conversation_store.save(self.fault_report.bug_id, attempt_num, messages)

        # Check final result by evaluating compilation + tests
        # (the agent may have already done this via tools, but we verify)
        final_result = self._verify_final(bug_dir, patched_dir, test_classes, attempt_num)
        attempt.test_result = final_result

        if final_result.status == AttemptStatus.PASS:
            attempt.error_summary = ""
        elif final_result.status == AttemptStatus.COMPILE_ERROR:
            attempt.error_summary = f"COMPILE_ERROR: {final_result.compile_output[:200]}"
        else:
            attempt.error_summary = (
                f"TEST_FAIL: {final_result.failed_tests}/{final_result.total_tests} failed "
                f"({final_result.failing_test_names})"
            )

        return attempt

    def _build_messages(self, attempt_num: int) -> List[Dict[str, Any]]:
        """Build the initial message list for the agent."""
        primary = self.fault_report.locations[0] if self.fault_report.locations else None

        # Get failure history from previous attempts
        failure_history = ""
        if attempt_num > 1:
            failure_history = conversation_store.get_failure_summary(
                self.fault_report.bug_id, attempt_num
            )

        user_prompt = AGENT_USER_TEMPLATE.format(
            bug_id=self.fault_report.bug_id,
            class_name=primary.class_name if primary else "unknown",
            line=primary.line if primary else 0,
            method_source=primary.method_source if primary else "(not available)",
            flawed_behavior=self.repair_spec.flawed_behavior or "(not available)",
            intended_behavior=self.repair_spec.intended_behavior or "(not available)",
            minimal_fix=self.repair_spec.minimal_fix or "(not available)",
            causal_chains="\n".join(self.fault_report.causal_chains) or "(none)",
            failing_tests="\n".join(
                f"- `{t['class']}::{t.get('method', '?')}`"
                for t in self.fault_report.failing_tests
            ) or "(none)",
            stack_traces=self.fault_report.stack_traces[:2000] or "(none)",
            class_fields=", ".join(f"`{f}`" for f in self.ingredients.class_fields[:15]) or "(none)",
            public_methods=", ".join(f"`{m}`" for m in self.ingredients.public_methods[:15]) or "(none)",
            failure_history=failure_history,
        )

        return [
            {"role": "system", "content": AGENT_SYSTEM_PROMPT},
            {"role": "user", "content": user_prompt},
        ]

    def _create_patched_copy(self, bug_dir: Path, attempt_num: int) -> Optional[Path]:
        """Create a fresh copy of the buggy source for patching."""
        from services.sandbox_evaluator import read_source_roots

        source_roots = read_source_roots(bug_dir)
        if not source_roots:
            print(f"  [agent] ERROR: no source roots found for {bug_dir.name}")
            return None

        original_root = source_roots[0]
        patched_dir = (
            config.PIPELINE_RESULTS_DIR / bug_dir.name
            / f"attempt_{attempt_num}" / "patched_source"
        )

        # Copy fresh source
        if patched_dir.exists():
            shutil.rmtree(patched_dir)
        shutil.copytree(original_root, patched_dir)

        print(f"  [agent] Created patched copy at {patched_dir}")
        return patched_dir

    def _verify_final(
        self,
        bug_dir: Path,
        patched_dir: Path,
        test_classes: List[str],
        attempt_num: int,
    ) -> TestResult:
        """Final verification: compile + test the patched source."""
        from services.sandbox_evaluator import evaluate

        return evaluate(bug_dir, patched_dir, test_classes, attempt_num)
