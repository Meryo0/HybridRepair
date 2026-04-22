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
import json
import re
import subprocess
import sys
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


# ── Prolog Execution Tool ────────────────────────────────────────────────────────

def execute_prolog_query(bug_dir: Path, query: str) -> str:
    """Execute a Prolog query on the bug's logic-fl.pl in an isolated process.
    
    This avoids pyswip singleton contamination between runs.
    """
    logic_fl = bug_dir / "result" / "logic-fl.pl"
    if not logic_fl.exists():
        return f"Error: {logic_fl} not found."
        
    script = textwrap.dedent(f"""\
        from pyswip import Prolog
        import sys
        
        try:
            p = Prolog()
            p.consult(r"{logic_fl.resolve()}")
            q_str = r\"\"\"{query}\"\"\"
            results = list(p.query(q_str, maxresult=20))
            cleaned = []
            for res in results:
                c = {{}}
                for k, v in res.items():
                    if isinstance(v, bytes):
                        c[k] = v.decode('utf-8', errors='replace')
                    else:
                        c[k] = str(v)
                cleaned.append(c)
            for c in cleaned:
                print(c)
        except Exception as e:
            print(f"Prolog Error: {{e}}", file=sys.stderr)
            sys.exit(1)
    """)
    
    try:
        proc = subprocess.run(
            [sys.executable, "-c", script],
            capture_output=True,
            text=True,
            timeout=15,
            cwd=str(bug_dir)
        )
        if proc.returncode != 0:
            return f"Error executing query:\n{proc.stderr}"
        out = proc.stdout.strip()
        if not out:
            return "Query succeeded but returned no results (or false)."
        return out
    except subprocess.TimeoutExpired:
        return "Error: Query timed out after 15 seconds."
    except Exception as e:
        return f"Error: {e}"


# ── Code extraction helpers ──────────────────────────────────────────────────────

def extract_java_code_from_response(response: str) -> str:
    """Extract the Java method body from an LLM response.

    Handles:
      1. Fenced code block:  ```java\n...\n```  or  ```\n...\n```
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
    You are an expert Java developer specializing in fixing software bugs in the Defects4J benchmark.
    The user will provide you with:
      - A buggy Java method (the fault location identified by LogicFL)
      - The stack trace and failing test information
      - Causal chain analysis from LogicFL's Prolog engine
      - Optionally: related source files in the same project

    Your task is broken into TWO stages (Specification-First):
      1. DIAGNOSIS: You will first be asked to analyze the root cause of the bug carefully and clearly specify the "Correct Intended Behavior" (Specification).
         - During this stage, you MAY use the `query_prolog` tool to execute Prolog queries against `logic-fl.pl` and `code-facts.pl` to explore variable definitions, types, method calls, or the AST.
         - For example: `method_invoc(Id, MethodName, line(Class, Line))` or `assign(Var, Expr, line(Class, Line))`.
      2. CODE GENERATION: After your diagnosis, you will be asked to provide the corrected Java method based ONLY on your specified intended behavior.

    When outputting code, you must:
      - Return ONLY the corrected Java method — the complete, compilable method body.
      - Use the format:
          FILE: <relative/path/to/File.java>
          ```java
          <complete corrected method>
          ```
      - Keep the fix minimal — preserve the original style, indentation and comments.
      - Use null-safe comparisons where appropriate (e.g., Objects.equals(a, b)).
""")


class RepairSession:
    """Stateful LLM session for iterative bug repair (VibeRepair-style).

    Maintains the full conversation history so that failed attempts can
    be refined by appending the compile/test error as a follow-up message,
    rather than re-sending the full prompt from scratch.
    """

    def __init__(self, bug_dir: Path) -> None:
        self._client = _get_client()
        self._bug_dir = bug_dir
        self._history: List[dict] = [
            {"role": "system", "content": _SYSTEM_PROMPT}
        ]

    # ── Public API ──────────────────────────────────────────────────────────────

    def first_attempt(self, diagnostic_prompt: str, code_gen_prompt: str) -> tuple[str, str]:
        """Send the initial diagnostic prompt, then the code generation prompt.

        Returns:
            A tuple of (diagnosis_response, code_response).
        """
        # Step 1: Diagnose (Tools allowed)
        self._history.append({"role": "user", "content": diagnostic_prompt})
        diagnosis_response = self._call(use_tools=True)

        # Step 2: Code Gen (No tools needed, just emit code)
        self._history.append({"role": "user", "content": code_gen_prompt})
        code_response = self._call(use_tools=False)

        return diagnosis_response, code_response

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
            "Please carefully re-analyse the root cause. If your previous Correct Intended Behavior "
            "was wrong or incomplete, please revise it. Then, provide the corrected method(s) again "
            "using the FILE block format."
        )
        self._history.append({"role": "user", "content": follow_up})
        # Allow tools during refinement as well
        return self._call(use_tools=True)

    # ── Internal ────────────────────────────────────────────────────────────────

    def _call(self, use_tools: bool = False) -> str:
        tools = None
        if use_tools:
            tools = [
                {
                    "type": "function",
                    "function": {
                        "name": "query_prolog",
                        "description": "Execute a Prolog query on the bug's logic-fl database (max 20 results). Useful for checking facts like method_invoc(Id, Name, Line), assign(Var, Expr, Line), param(Name, Index, MethodId), etc.",
                        "parameters": {
                            "type": "object",
                            "properties": {
                                "query": {
                                    "type": "string",
                                    "description": "The Prolog query to execute. Example: 'method_invoc(Id, MethodName, line(Class, Line))'."
                                }
                            },
                            "required": ["query"]
                        }
                    }
                }
            ]

        while True:
            kwargs = {
                "model": config.AZURE_OPENAI_DEPLOYMENT,
                "messages": self._history,
                "temperature": config.LLM_TEMPERATURE,
                "max_tokens": config.LLM_MAX_TOKENS,
            }
            if tools:
                kwargs["tools"] = tools

            response = self._client.chat.completions.create(**kwargs)
            message = response.choices[0].message
            
            # Save assistant message to history
            self._history.append(message.model_dump(exclude_unset=True))

            if message.tool_calls:
                # Execute tools
                for tool_call in message.tool_calls:
                    if tool_call.function.name == "query_prolog":
                        try:
                            args = json.loads(tool_call.function.arguments)
                            q_str = args.get("query", "")
                            print(f"  [llm_patcher] Agent queried Prolog: {q_str}")
                            res = execute_prolog_query(self._bug_dir, q_str)
                            print(f"  [llm_patcher] Tool response: {len(res)} chars")
                        except Exception as e:
                            res = f"Error parsing arguments or executing: {e}"
                        
                        self._history.append({
                            "role": "tool",
                            "tool_call_id": tool_call.id,
                            "name": tool_call.function.name,
                            "content": res
                        })
                # Loop back to let LLM respond with tools' results
                continue
            else:
                # No tool calls, return content
                return message.content or ""


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

    # Pattern: FILE: path\n```java?\n...code...\n```
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
