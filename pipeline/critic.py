"""Actor-Critic validation layer for generated patches.

The PatchCritic sends the original code + proposed patch to an LLM
in a stateless one-shot call and asks it to find logical flaws,
syntax errors, or regression risks before the expensive test-execution step.
"""

from __future__ import annotations

import json
import re
from dataclasses import dataclass

from openai import AzureOpenAI

from pipeline import config
from pipeline.prompt_templates import CRITIC_SYSTEM_PROMPT, CRITIC_TEMPLATE


@dataclass
class CriticResult:
    """Outcome of a critic evaluation."""
    approved: bool
    reason: str


def _get_critic_client() -> AzureOpenAI:
    return AzureOpenAI(
        api_key=config.AZURE_OPENAI_API_KEY,
        api_version=config.AZURE_OPENAI_API_VERSION,
        azure_endpoint=config.AZURE_OPENAI_ENDPOINT,
    )


class PatchCritic:
    """Stateless LLM judge that reviews a patch before test execution."""

    def __init__(self) -> None:
        self._client = _get_critic_client()

    def evaluate(
        self,
        original_code: str,
        patch_code: str,
        bug_context: str = "",
    ) -> CriticResult:
        """Ask the critic LLM whether the patch is sound.

        Args:
            original_code: The original buggy Java method(s).
            patch_code:    The proposed fix from the Generator.
            bug_context:   Short description of the bug (stack trace summary, test name).

        Returns:
            CriticResult with approved flag and reason string.
        """
        user_prompt = CRITIC_TEMPLATE.format(
            original_code=original_code,
            patch_code=patch_code,
            bug_context=bug_context or "NPE bug from Defects4J benchmark.",
        )

        try:
            response = self._client.chat.completions.create(
                model=config.CRITIC_MODEL,
                messages=[
                    {"role": "system", "content": CRITIC_SYSTEM_PROMPT},
                    {"role": "user", "content": user_prompt},
                ],
                temperature=0.1,
                max_tokens=512,
            )
            content = response.choices[0].message.content or ""
            return self._parse_response(content)
        except Exception as exc:
            print(f"  [critic] ERROR during evaluation: {exc}")
            return CriticResult(approved=True, reason=f"Critic unavailable ({exc}); auto-approving.")

    @staticmethod
    def _parse_response(content: str) -> CriticResult:
        """Extract the JSON verdict from the critic response.

        Fail-safe: if parsing fails, approve the patch so the pipeline
        is not blocked by a malformed critic response.
        """
        content = content.strip()

        # Try direct JSON parse
        try:
            data = json.loads(content)
            return CriticResult(
                approved=bool(data.get("approved", True)),
                reason=str(data.get("reason", "")),
            )
        except (json.JSONDecodeError, AttributeError):
            pass

        # Try extracting JSON from markdown code block
        json_match = re.search(r"```(?:json)?\s*\n?(\{.*?\})\s*\n?```", content, re.DOTALL)
        if json_match:
            try:
                data = json.loads(json_match.group(1))
                return CriticResult(
                    approved=bool(data.get("approved", True)),
                    reason=str(data.get("reason", "")),
                )
            except (json.JSONDecodeError, AttributeError):
                pass

        # Try finding any JSON-like object in the text
        json_match = re.search(r"\{[^{}]*\"approved\"\s*:\s*(true|false)[^{}]*\}", content, re.IGNORECASE)
        if json_match:
            try:
                data = json.loads(json_match.group(0))
                return CriticResult(
                    approved=bool(data.get("approved", True)),
                    reason=str(data.get("reason", "")),
                )
            except (json.JSONDecodeError, AttributeError):
                pass

        print(f"  [critic] WARNING: could not parse critic response; auto-approving")
        return CriticResult(approved=True, reason="Parse failure; auto-approved.")
