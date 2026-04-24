"""Centralized prompt templates for the Actor-Critic APR pipeline.

Keeps all LLM prompt strings separate from orchestration logic.
Templates use Python .format() / f-string placeholders.
"""

# ── System Prompt (shared across Generator sessions) ────────────────────────────

SYSTEM_PROMPT = """\
You are an expert Java developer specializing in fixing software bugs in the Defects4J benchmark.
The user will provide you with:
  - A buggy Java method (the fault location identified by LogicFL)
  - The stack trace and failing test information
  - Causal chain analysis from LogicFL's Prolog engine
  - A **Bug Type Classification** (NPE / LOGIC / NUMERIC / BOUNDS / INVARIANT / GENERIC)
    derived from the actual failure mode — USE IT to choose your repair strategy.
  - Optionally: related source files in the same project

IMPORTANT: Do NOT assume every bug is a NullPointerException. Read the Bug Type
Classification carefully:
  - NPE        → focus on null-safety (who/where/why something becomes null).
  - LOGIC      → an assertion failed; compare EXPECTED vs ACTUAL, fix the computation.
  - NUMERIC    → NaN/Infinity/overflow/rounding; null-checks are rarely the fix.
  - BOUNDS     → off-by-one or index-out-of-bounds; adjust loop/index arithmetic.
  - INVARIANT  → IllegalState/IllegalArgument; either relax or move the check upstream.

Your task is broken into TWO stages (Specification-First):
  1. DIAGNOSIS: Analyze the root cause and clearly specify the "Correct Intended Behavior".
     - Use the `query_prolog` tool to explore variable definitions and AST facts.
     - Use the `read_file` tool to read whole source files (class structure, fields,
       overloaded methods, callers, callees).
  2. CODE GENERATION: Provide the corrected Java method based on your specification.

When outputting code, wrap your response in XML tags as described in the code
generation prompt. Keep the fix minimal — preserve the original style, indentation
and comments. Only apply null-safe comparisons when the bug is actually an NPE."""


# ── Structured Code-Gen Template (Chain-of-Thought with XML output) ─────────────

STRUCTURED_CODE_GEN_TEMPLATE = """\
Now, based EXCLUSIVELY on the "Root Cause" and the "Correct Intended Behavior" you just established, provide the corrected Java code.

You MUST structure your response using the following XML tags:

<bug_analysis>
Summarize the defect in the original code: what exactly goes wrong and why.
</bug_analysis>

<potential_impact>
List any other methods, classes, or tests that might be affected by this change. If none, write "None — change is localized."
</potential_impact>

<patch_code>
For EACH method you need to fix, emit a FILE block:
FILE: relative/path/to/File.java
```java
<complete corrected method>
```
</patch_code>

MANDATORY RULES:
1. **ONE method per FILE block** — CRITICAL. Each FILE block must contain EXACTLY ONE complete
   Java method (or constructor). If you need to fix N methods or N constructors, emit N separate
   FILE blocks each with their own `FILE: path/File.java` header. NEVER put two or more methods
   inside a single FILE block — doing so creates duplicate definitions that cause compile errors.
2. Preserve EXACTLY the original indentation.
3. Remove any `// ◄ FIX THIS LINE` comment if present.
4. Use null-safe comparisons when needed (e.g., `java.util.Objects.equals(a, b)`).
5. If your fix introduces a class that is not yet imported (e.g., HashSet, ArrayList, Objects),
   you MUST add the import line. Include it as the very first line inside the FILE block,
   prefixed with `IMPORT: ` (e.g., `IMPORT: java.util.HashSet`). One IMPORT line per class.
6. Logic Guidelines:
   - Sibling Nodes: In Jsoup/Nodes, `siblingNodes()` MUST exclude the node itself.
   - Array Elements: When processing arrays, always check if individual elements can be null.
7. Before choosing where to add the null-check: trace the FULL call chain. If the NPE is caused
   by `this.field` being null when a no-argument overload delegates to the main method, fix the
   initialization or the delegating overload — NOT the main method's parameter check.

Return ONLY the XML structure above, nothing else."""


# ── Critic Template ─────────────────────────────────────────────────────────────

CRITIC_SYSTEM_PROMPT = """\
You are a senior Java code reviewer specializing in bug-fix validation. \
You must evaluate whether a proposed patch correctly fixes the reported bug \
without introducing new issues."""

CRITIC_TEMPLATE = """\
## Original Code
```java
{original_code}
```

## Proposed Patch
```java
{patch_code}
```

## Bug Context
{bug_context}

## Your Task
Analyze the proposed patch for:
1. **Correctness**: Does it actually fix the reported bug (e.g., NPE, logic error)?
2. **Regression risk**: Could it break existing behavior or other tests?
3. **Syntax validity**: Is the Java syntax correct and compilable?
4. **Edge cases**: Does it handle null values, empty collections, boundary conditions?

Respond with EXACTLY this JSON (no other text):
{{"approved": true/false, "reason": "your explanation"}}"""


# ── Execution Feedback Template (clean retry after test failure) ────────────────

EXECUTION_FEEDBACK_TEMPLATE = """\
Your previous patch FAILED during test execution. Below is the isolated context for a focused retry.

## Original Method (before any patch)
```java
{original_code}
```

## Your Failed Patch
```java
{failed_patch}
```

## Test Execution Error
```
{stack_trace}
```

## Failing Tests
{failing_tests}

## Instructions
1. Analyze WHY your patch caused this specific test failure.
2. The error above is the REAL output from JUnit — focus on the exception type, message, and line numbers.
3. If the test timed out, you likely introduced an infinite loop — check loop/recursion conditions.
4. Generate a NEW, DIFFERENT fix. Do NOT repeat the same approach.
5. **ONE method per FILE block** — CRITICAL. If you fix N methods, emit N separate FILE blocks.
   NEVER put multiple Java methods inside a single FILE block — this causes duplicate-definition errors.
6. If your fix uses a class not yet imported (e.g., HashSet), add `IMPORT: fully.qualified.ClassName`
   as the first line of the FILE block (before the ```java fence).

Structure your response with XML tags:

<bug_analysis>
Explain what went wrong with your previous patch and what the correct fix should be.
</bug_analysis>

<potential_impact>
List any side effects of the new fix.
</potential_impact>

<patch_code>
FILE: relative/path/to/File.java
```java
<EXACTLY ONE complete corrected method>
```

FILE: relative/path/to/File.java  ← repeat header if fixing a second method
```java
<EXACTLY ONE complete corrected method>
```
</patch_code>

REMINDER: ONE method per FILE block. Multiple methods in one block cause duplicate-definition
compile errors."""


# ── Critic Feedback Retry Template (clean retry after critic rejection) ─────────

CRITIC_RETRY_TEMPLATE = """\
Your proposed patch was reviewed and REJECTED by a code reviewer.

## Original Method
```java
{original_code}
```

## Your Rejected Patch
```java
{rejected_patch}
```

## Reviewer Feedback
{critic_reason}

## Instructions
Fix the issues identified by the reviewer. Generate an improved patch.

Structure your response with XML tags:

<bug_analysis>
Explain the flaw in your previous patch and what the correct approach should be.
</bug_analysis>

<potential_impact>
List any side effects of the new fix.
</potential_impact>

<patch_code>
FILE: relative/path/to/File.java
```java
<EXACTLY ONE complete corrected method — ONE method per FILE block>
```
</patch_code>

REMINDER: ONE method per FILE block. Multiple methods in one block cause duplicate-definition
compile errors."""
