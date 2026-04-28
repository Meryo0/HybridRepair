"""Tool implementations for the PatchAgent.

Provides the 6 tools available to the agentic repair loop:
  1. read_file     — Read a Java source file
  2. search_symbol — Grep for a symbol in the source tree
  3. get_method_signature — Get public methods of a class
  4. apply_ast_patch — Apply a method replacement via AST
  5. compile_check — Compile the patched source
  6. run_tests — Run JUnit tests

Each tool is a function that takes keyword arguments and returns a string result.
The TOOL_DEFINITIONS list provides OpenAI function-calling schema for each tool.
"""

from __future__ import annotations

import re
import subprocess
from pathlib import Path
from typing import Any, Dict, List, Optional

from services.sandbox_evaluator import read_source_roots, compile_patched_source, evaluate
from patch_agent.ast_applier import apply_and_write


# ── Tool context (set per-bug by the agent) ──────────────────────────────────

class ToolContext:
    """Mutable context shared across all tool invocations for a single bug."""

    def __init__(self, bug_dir: Path, patched_source_dir: Path, test_classes: List[str]):
        self.bug_dir = bug_dir
        self.patched_source_dir = patched_source_dir
        self.test_classes = test_classes
        self.source_roots = read_source_roots(bug_dir)
        self.attempt = 1


# ── Tool implementations ─────────────────────────────────────────────────────


def tool_read_file(ctx: ToolContext, file_path: str, **kwargs) -> str:
    """Read a source file and return it with line numbers."""
    # Search in source roots
    target: Optional[Path] = None
    search_name = Path(file_path).name

    for root in ctx.source_roots:
        # Try exact relative path first
        candidate = root / file_path
        if candidate.exists():
            target = candidate
            break
        # Try rglob
        matches = list(root.rglob(search_name))
        if matches:
            exact = [m for m in matches if file_path in str(m)]
            target = exact[0] if exact else matches[0]
            break

    # Also try patched source dir
    if target is None:
        candidate = ctx.patched_source_dir / file_path
        if candidate.exists():
            target = candidate
        else:
            matches = list(ctx.patched_source_dir.rglob(search_name))
            if matches:
                target = matches[0]

    if target is None:
        return f"Error: File '{file_path}' not found in the project."

    try:
        lines = target.read_text(encoding="utf-8", errors="replace").splitlines()
        numbered = [f"{i+1:4d} | {line}" for i, line in enumerate(lines)]
        content = "\n".join(numbered)

        # Prevent huge files
        if len(content) > 30000:
            return f"Error: File {target.name} is too large ({len(content)} chars)."

        rel = target.relative_to(ctx.bug_dir) if target.is_relative_to(ctx.bug_dir) else target
        return f"File: {rel}\n```java\n{content}\n```"
    except Exception as e:
        return f"Error reading file: {e}"


def tool_search_symbol(ctx: ToolContext, symbol_name: str, **kwargs) -> str:
    """Search for a symbol definition/usage in the source tree."""
    results: List[str] = []

    for root in ctx.source_roots + [ctx.patched_source_dir]:
        if not root.exists():
            continue
        try:
            proc = subprocess.run(
                ["grep", "-rnI", "--include=*.java", symbol_name, str(root)],
                capture_output=True,
                text=True,
                timeout=30,
            )
            if proc.stdout:
                for line in proc.stdout.splitlines()[:20]:
                    results.append(line)
        except (FileNotFoundError, subprocess.TimeoutExpired):
            pass

    if not results:
        return f"Symbol '{symbol_name}' not found in the source tree."

    return f"Found {len(results)} occurrence(s):\n" + "\n".join(results[:20])


def tool_get_method_signature(ctx: ToolContext, class_name: str, method_name: str = "", **kwargs) -> str:
    """Get public/protected method signatures of a class."""
    from reasoner.ingredient_forge import _extract_public_methods

    # Find the class file
    search_name = class_name.split(".")[-1].split("$")[0] + ".java"
    target: Optional[Path] = None

    for root in ctx.source_roots:
        matches = list(root.rglob(search_name))
        if matches:
            target = matches[0]
            break

    if target is None:
        return f"Error: Class '{class_name}' source file not found."

    class_simple = search_name.replace(".java", "")
    signatures = _extract_public_methods(target, class_simple)

    if method_name:
        # Filter to matching methods
        filtered = [s for s in signatures if method_name in s]
        if filtered:
            signatures = filtered

    if not signatures:
        return f"No public/protected methods found in {class_name}."

    return f"Methods in {class_name}:\n" + "\n".join(f"  - {s}" for s in signatures)


def tool_apply_ast_patch(
    ctx: ToolContext,
    file_path: str,
    method_name: str,
    new_body: str,
    target_line: Optional[int] = None,
    **kwargs,
) -> str:
    """Apply a method replacement via AST."""
    # Resolve file in patched source dir
    search_name = Path(file_path).name
    target: Optional[Path] = None

    matches = list(ctx.patched_source_dir.rglob(search_name))
    if matches:
        target = matches[0]

    if target is None:
        return f"Error: File '{file_path}' not found in patched source."

    success, diff = apply_and_write(
        target, method_name, new_body, target_line=target_line
    )

    if success:
        return f"✅ Patch applied successfully to {search_name}.\nDiff:\n```diff\n{diff}\n```"
    else:
        return f"❌ Patch failed: {diff}"


def tool_compile_check(ctx: ToolContext, **kwargs) -> str:
    """Compile the patched source and return any errors."""
    ok, output = compile_patched_source(ctx.bug_dir, ctx.patched_source_dir, ctx.attempt)

    if ok:
        return "✅ Compilation successful. No errors."
    else:
        # Truncate for token budget
        return f"❌ Compilation FAILED:\n```\n{output[:3000]}\n```"


def tool_run_tests(ctx: ToolContext, test_names: Optional[List[str]] = None, **kwargs) -> str:
    """Run JUnit tests and return results."""
    classes = test_names or ctx.test_classes

    if not classes:
        return "Error: No test classes specified."

    result = evaluate(ctx.bug_dir, ctx.patched_source_dir, classes, ctx.attempt)

    if result.status.value == "PASS":
        return (
            f"✅ ALL TESTS PASSED ({result.total_tests} tests).\n"
            f"Previously failing tests now passing: {result.previously_failing_now_passing}"
        )
    elif result.status.value == "COMPILE_ERROR":
        return f"❌ Compilation failed:\n```\n{result.compile_output[:2000]}\n```"
    else:
        return (
            f"❌ Tests FAILED: {result.failed_tests}/{result.total_tests} failed.\n"
            f"Failing tests: {result.failing_test_names}\n"
            f"Stack traces:\n```\n{result.stack_traces_block[:2000]}\n```"
        )


# ── Tool executor (maps function_name → implementation) ──────────────────────


def create_tool_executor(ctx: ToolContext):
    """Create a tool executor function bound to the given context.

    Returns a callable (function_name: str, args: dict) → str.
    """
    tool_map = {
        "read_file": tool_read_file,
        "search_symbol": tool_search_symbol,
        "get_method_signature": tool_get_method_signature,
        "apply_ast_patch": tool_apply_ast_patch,
        "compile_check": tool_compile_check,
        "run_tests": tool_run_tests,
    }

    def executor(function_name: str, args: Dict[str, Any]) -> str:
        func = tool_map.get(function_name)
        if func is None:
            return f"Unknown tool: {function_name}"
        return func(ctx, **args)

    return executor


# ── OpenAI tool definitions ──────────────────────────────────────────────────

TOOL_DEFINITIONS = [
    {
        "type": "function",
        "function": {
            "name": "read_file",
            "description": "Read a Java source file from the project. Returns the file content with line numbers.",
            "parameters": {
                "type": "object",
                "properties": {
                    "file_path": {
                        "type": "string",
                        "description": "File name or relative path (e.g. 'DatasetUtilities.java' or 'org/jfree/data/general/DatasetUtilities.java').",
                    }
                },
                "required": ["file_path"],
            },
        },
    },
    {
        "type": "function",
        "function": {
            "name": "search_symbol",
            "description": "Search for a symbol (method name, class name, variable) in the source tree. Returns matching lines with file paths.",
            "parameters": {
                "type": "object",
                "properties": {
                    "symbol_name": {
                        "type": "string",
                        "description": "The symbol to search for (e.g. 'getOptionGroup', 'DatasetUtilities').",
                    }
                },
                "required": ["symbol_name"],
            },
        },
    },
    {
        "type": "function",
        "function": {
            "name": "get_method_signature",
            "description": "Get the public/protected method signatures of a Java class. Use this to check which methods actually exist before writing a fix.",
            "parameters": {
                "type": "object",
                "properties": {
                    "class_name": {
                        "type": "string",
                        "description": "Fully-qualified or simple class name (e.g. 'org.apache.commons.cli.Option' or 'Option').",
                    },
                    "method_name": {
                        "type": "string",
                        "description": "Optional: filter to methods containing this name.",
                    },
                },
                "required": ["class_name"],
            },
        },
    },
    {
        "type": "function",
        "function": {
            "name": "apply_ast_patch",
            "description": "Apply a fix by replacing a method body in a Java file. Uses AST-based replacement for guaranteed syntactic correctness. Provide the COMPLETE corrected method (including signature and body).",
            "parameters": {
                "type": "object",
                "properties": {
                    "file_path": {
                        "type": "string",
                        "description": "The Java file to patch (e.g. 'DatasetUtilities.java').",
                    },
                    "method_name": {
                        "type": "string",
                        "description": "The name of the method to replace.",
                    },
                    "new_body": {
                        "type": "string",
                        "description": "The complete corrected method source code (including signature, braces, and body).",
                    },
                    "target_line": {
                        "type": "integer",
                        "description": "Optional: line number hint to disambiguate overloaded methods.",
                    },
                },
                "required": ["file_path", "method_name", "new_body"],
            },
        },
    },
    {
        "type": "function",
        "function": {
            "name": "compile_check",
            "description": "Compile the patched source code and check for compilation errors. Returns 'Compilation successful' or the javac error output.",
            "parameters": {
                "type": "object",
                "properties": {},
            },
        },
    },
    {
        "type": "function",
        "function": {
            "name": "run_tests",
            "description": "Run JUnit regression tests against the patched code. Returns PASS/FAIL with details.",
            "parameters": {
                "type": "object",
                "properties": {
                    "test_names": {
                        "type": "array",
                        "items": {"type": "string"},
                        "description": "Optional: specific test class FQCNs to run. If empty, runs all known failing tests.",
                    }
                },
            },
        },
    },
]
