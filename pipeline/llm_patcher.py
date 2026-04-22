"""LLM interaction layer using Azure OpenAI.

New strategy (inspired by VibeRepair):
  - The LLM generates ONLY the corrected Java method body (not a diff).
  - Python builds the unified diff with difflib.
  - A stateful RepairSession carries the conversation history across
    retry attempts so the model can refine its answer without starting
    from scratch.
"""

from __future__ import annotations

import difflib
import re
import textwrap
from pathlib import Path
from typing import List, Optional

from openai import AzureOpenAI

from pipeline import config


# ── Azure client ────────────────────────────────────────────────────────────────

def _get_client() -> AzureOpenAI:
    """Instantiate an AzureOpenAI client from config values."""
    if not config.AZURE_OPENAI_API_KEY:
        raise EnvironmentError(
            "AZURE_OPENAI_API_KEY is not set. "
            "Copy .env.example to .env and fill in your credentials."
        )
    if not config.AZURE_OPENAI_ENDPOINT:
        raise EnvironmentError(
            "AZURE_OPENAI_ENDPOINT is not set. "
            "Copy .env.example to .env and fill in your credentials."
        )
    return AzureOpenAI(
        api_key=config.AZURE_OPENAI_API_KEY,
        api_version=config.AZURE_OPENAI_API_VERSION,
        azure_endpoint=config.AZURE_OPENAI_ENDPOINT,
    )


# ── Code extraction helpers ──────────────────────────────────────────────────────

def extract_java_code_from_response(response: str) -> str:
    """Extract the Java method body from an LLM response.

    Handles:
      1. Fenced code block:  ```java\\n...\\n```  or  ```\\n...\\n```
      2. Plain code (no fences): returned as-is after stripping.
    """
    if not response:
        return ""

    stripped = response.strip()

    # Strategy 1: fenced code block
    fenced = re.search(
        r"```(?:java)?\s*\n(.*?)```",
        stripped,
        flags=re.DOTALL,
    )
    if fenced:
        return fenced.group(1).strip()

    # Strategy 2: raw code (no fences) – return as-is
    return stripped


def build_diff_from_fixed_method(
    original_file_path: Path,
    original_method_src: str,
    fixed_method_src: str,
    relative_path: str,
) -> str:
    """Generate a unified diff by replacing the original method in the file.

    Reads the original file, substitutes the original method text with
    the fixed method text, then computes a unified diff between the two
    versions.

    Args:
        original_file_path: Absolute path to the original Java source file.
        original_method_src: The exact text of the original (buggy) method
                             as it appears in the file (including indentation).
        fixed_method_src:   The corrected method text from the LLM.
        relative_path:      Relative path used in the diff header
                            (e.g. "org/jfree/data/general/DatasetUtilities.java").

    Returns:
        A unified diff string, or empty string on failure.
    """
    try:
        original_content = original_file_path.read_text(encoding="utf-8")
    except Exception as exc:
        print(f"  [llm_patcher] Cannot read {original_file_path}: {exc}")
        return ""

    if original_method_src not in original_content:
        print(
            "  [llm_patcher] WARNING: original_method_src not found verbatim in source file; "
            "diff will be empty."
        )
        return ""

    fixed_content = original_content.replace(original_method_src, fixed_method_src, 1)

    diff_lines = list(
        difflib.unified_diff(
            original_content.splitlines(keepends=True),
            fixed_content.splitlines(keepends=True),
            fromfile=relative_path,
            tofile=relative_path,
            n=3,
        )
    )

    return "".join(diff_lines)


# ── Stateful repair session ──────────────────────────────────────────────────────

_SYSTEM_PROMPT = textwrap.dedent("""\
    You are an expert Java developer specializing in fixing NullPointerException bugs.
    The user will provide you with:
      - A buggy Java method (the fault location identified by LogicFL)
      - The NPE stack trace and failing test information
      - Causal chain analysis from LogicFL's Prolog engine
      - Optionally: related source files in the same project

    Your task:
      1. Analyse the root cause of the NPE carefully. The fault location is where the
         NPE *manifests*, but the real bug may be in the logic above (e.g. wrong
         min/max computation, a method that returns null, missing null check on both
         sides of a comparison, etc.).
      2. Return ONLY the corrected Java method — the complete, compilable method body.
         Do NOT return a diff. Do NOT return the whole file. Do NOT add explanations
         outside the code block.
      3. If the fix requires modifying a helper method in another file, you MUST also
         include that file's corrected method in the same response, clearly labelled:
           FILE: org/example/Helper.java
           ```java
           ... corrected method ...
           ```
      4. Keep the fix minimal — preserve the original style, indentation and comments.
      5. Null-safe comparisons: remember that (a != null && a.equals(b)) returns FALSE
         when both a and b are null, which may be wrong. Use Objects.equals(a, b) or
         a custom null-safe helper when both-null should mean equal.

    Output format (required):
      FILE: <relative/path/to/File.java>
      ```java
      <complete corrected method>
      ```

    If only one file needs changing, output exactly one FILE block.
    If multiple files need changing, output multiple FILE blocks in order.
""")


class RepairSession:
    """Stateful LLM session for iterative bug repair (VibeRepair-style).

    Maintains the full conversation history so that failed attempts can
    be refined by appending the compile/test error as a follow-up message,
    rather than re-sending the full prompt from scratch.
    """

    def __init__(self) -> None:
        self._client = _get_client()
        self._history: List[dict] = [
            {"role": "system", "content": _SYSTEM_PROMPT}
        ]

    # ── Public API ──────────────────────────────────────────────────────────────

    def first_attempt(self, prompt: str) -> str:
        """Send the initial repair prompt and return the raw LLM response."""
        self._history.append({"role": "user", "content": prompt})
        return self._call()

    def refine(self, error_message: str) -> str:
        """Send a follow-up message with the compile/test error for refinement.

        Args:
            error_message: The compiler or test output explaining what went wrong.

        Returns:
            The raw LLM response with (hopefully) an improved method.
        """
        follow_up = (
            "The fix you provided still fails. Here is the error:\n\n"
            f"```\n{error_message[:1500]}\n```\n\n"
            "Please carefully re-analyse the root cause and provide a corrected method. "
            "Remember to output only the FILE block(s) with the complete corrected method(s)."
        )
        self._history.append({"role": "user", "content": follow_up})
        return self._call()

    # ── Internal ────────────────────────────────────────────────────────────────

    def _call(self) -> str:
        response = self._client.chat.completions.create(
            model=config.AZURE_OPENAI_DEPLOYMENT,
            messages=self._history,
            temperature=config.LLM_TEMPERATURE,
            max_tokens=config.LLM_MAX_TOKENS,
        )
        content = response.choices[0].message.content or ""
        # Append assistant reply to history for next turn
        self._history.append({"role": "assistant", "content": content})
        return content


# ── Response parsing ─────────────────────────────────────────────────────────────

def parse_repair_response(
    response: str,
) -> List[dict]:
    """Parse one or more FILE blocks from the LLM repair response.

    Returns:
        A list of dicts: [{"relative_path": str, "fixed_code": str}, ...]
        Empty list if nothing could be parsed.
    """
    results = []

    # Pattern: FILE: path\\n```java?\\n...code...\\n```
    pattern = re.compile(
        r"FILE:\s*([^\n]+)\n```(?:java)?\s*\n(.*?)```",
        re.DOTALL,
    )

    for match in pattern.finditer(response):
        rel_path = match.group(1).strip()
        fixed_code = match.group(2).strip()
        results.append({"relative_path": rel_path, "fixed_code": fixed_code})

    if not results:
        # Fallback: maybe the LLM just output a single code block without FILE:
        code = extract_java_code_from_response(response)
        if code:
            results.append({"relative_path": None, "fixed_code": code})

    return results


# ── Legacy single-call API (kept for compatibility) ──────────────────────────────

def call_llm(prompt: str) -> str:
    """Send a single prompt to Azure OpenAI and return the raw text response."""
    client = _get_client()
    response = client.chat.completions.create(
        model=config.AZURE_OPENAI_DEPLOYMENT,
        messages=[{"role": "user", "content": prompt}],
        temperature=config.LLM_TEMPERATURE,
        max_tokens=config.LLM_MAX_TOKENS,
    )
    return response.choices[0].message.content or ""


def extract_diff_from_response(response: str) -> str:
    """Legacy: extract a unified diff from an LLM response (kept for compatibility)."""
    if not response:
        return ""
    stripped = response.strip()
    fenced_match = re.search(r"```(?:diff)?\s*\n(.*?)```", stripped, flags=re.DOTALL)
    if fenced_match:
        return fenced_match.group(1).strip()
    if stripped.startswith("---"):
        return stripped
    lines = stripped.splitlines()
    for i, line in enumerate(lines):
        if line.startswith("---"):
            return "\n".join(lines[i:]).strip()
    print("  [llm_patcher] WARNING: could not extract a unified diff from the LLM response.")
    return stripped
