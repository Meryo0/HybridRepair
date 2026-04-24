#!/usr/bin/env python3
"""Entry point for the LogicFL → LLM Patcher pipeline.

Usage:
    python run_pipeline.py --bug Chart-2
    python run_pipeline.py --bug Chart-2 --force-rerun-logicfl
    python run_pipeline.py --bug all
    python run_pipeline.py --bug Chart-2,Chart-4
"""

from __future__ import annotations

import argparse
import sys
import traceback
from pathlib import Path

# Add repo root to path so 'pipeline' package is importable regardless of cwd
sys.path.insert(0, str(Path(__file__).resolve().parent))

from pipeline import config, logicfl_runner, logicfl_parser, prompt_builder, \
    llm_patcher, patch_applier, test_runner, reporter
from pipeline.critic import PatchCritic
from pipeline.llm_patcher import _parse_structured_response
from pipeline.logicfl_parser import extract_fault_from_stack_trace
from pipeline.api_grounding import build_api_hints_from_compile_error, format_api_hints


# ── Canonical list of NPE bugs ─────────────────────────────────────────────────

NPE_BUGS = [
    "Chart-2", "Chart-4", "Chart-14", "Chart-16",
    "Cli-5", "Cli-30", "Closure-2", "Closure-171",
    "Codec-5", "Codec-13", "Codec-17",
    "Csv-4", "Csv-9", "Csv-11",
    "Gson-6", "Gson-9",
    "JacksonCore-8",
    "JacksonDatabind-3", "JacksonDatabind-13", "JacksonDatabind-80",
    "JacksonDatabind-93", "JacksonDatabind-95", "JacksonDatabind-107",
    "Jsoup-8", "Jsoup-22", "Jsoup-26", "Jsoup-66", "Jsoup-89",
    "Lang-20", "Lang-33", "Lang-39", "Lang-47", "Lang-57",
    "Math-4", "Math-70", "Math-79",
    "Mockito-18", "Mockito-38",
]


# ── Core repair logic ─────────────────────────────────────────────────────────

def _inject_imports(file_lines: list[str], imports: list[str], display_path: str) -> list[str]:
    """Add missing import statements to a Java source file (in-memory lines).

    Inserts each import after the last existing import block, or after the
    package statement if no imports exist yet.  Skips imports already present.
    """
    import re

    lines = list(file_lines)
    # Determine insertion point: last import line + 1
    last_import_idx = -1
    package_idx = -1
    for i, raw in enumerate(lines):
        stripped = raw.strip()
        if stripped.startswith("import "):
            last_import_idx = i
        elif stripped.startswith("package "):
            package_idx = i

    insert_after = last_import_idx if last_import_idx >= 0 else package_idx

    # Detect EOL style
    eol = "\n"
    if lines and lines[0].endswith("\r\n"):
        eol = "\r\n"

    added = []
    for fqcn in imports:
        import_stmt = f"import {fqcn};"
        already_present = any(raw.strip() == import_stmt for raw in lines)
        if not already_present:
            added.append(import_stmt + eol)

    if added:
        idx = insert_after + 1 if insert_after >= 0 else 0
        lines[idx:idx] = added
        print(f"  [pipeline] Injected {len(added)} import(s) into {display_path}: "
              f"{[a.strip() for a in added]}")

    return lines


def _validate_brace_balance(lines: list[str]) -> bool:
    """Return True if the Java source lines have balanced curly braces.

    Uses a simplified scanner that ignores string literals and line comments.
    """
    import re

    depth = 0
    in_block_comment = False
    for raw in lines:
        line = raw
        # Strip block comments spanning multiple lines
        if in_block_comment:
            end = line.find("*/")
            if end == -1:
                continue
            line = line[end + 2:]
            in_block_comment = False
        while "/*" in line:
            start = line.index("/*")
            end = line.find("*/", start + 2)
            if end == -1:
                line = line[:start]
                in_block_comment = True
                break
            line = line[:start] + line[end + 2:]
        # Strip string literals and line comments
        line = re.sub(r'"(?:[^"\\]|\\.)*"', '""', line)
        line = re.sub(r"//.*$", "", line)
        depth += line.count("{") - line.count("}")

    return depth == 0


def _build_diffs_from_response(
    parsed_blocks: list[dict],
    bug_dir: Path,
    source_roots: list[Path],
) -> list[dict]:
    """Convert FILE-block method responses into (relative_path, diff_content) pairs.

    Groups multiple blocks for the same file into a single diff.
    Uses 'surgical replacement':
    - If the LLM provides Javadoc, the original Javadoc is replaced.
    - If the LLM does NOT provide Javadoc, the original is PRESERVED.
    """
    import difflib
    import re

    _FAULT_ANNOTATION = re.compile(r"\s*//\s*◄\s*FIX THIS LINE.*$", re.MULTILINE)

    # 1. Resolve files and group blocks
    # Collect IMPORT directives from all blocks before processing
    import_requests: dict[Path, list[str]] = {}

    blocks_by_file: dict[Path, list[dict]] = {}
    for block in parsed_blocks:
        rel_path = block.get("relative_path")
        fixed_code = block.get("fixed_code", "").strip()
        if not fixed_code:
            continue

        src_file: Path | None = None
        if rel_path:
            rel_path = rel_path.strip().replace("\\", "/")
            for root in source_roots:
                candidate = root / rel_path
                if candidate.exists():
                    src_file = candidate
                    break
            if src_file is None:
                fname = Path(rel_path).name
                for root in source_roots:
                    matches = list(root.rglob(fname))
                    if matches:
                        src_file = matches[0]
                        break

        if src_file:
            # Strip IMPORT: directives from fixed_code and collect them separately
            import_lines = []
            clean_lines = []
            for fc_line in fixed_code.splitlines():
                if fc_line.strip().startswith("IMPORT:"):
                    imp = fc_line.strip()[len("IMPORT:"):].strip()
                    if imp:
                        import_lines.append(imp)
                else:
                    clean_lines.append(fc_line)
            block["fixed_code"] = "\n".join(clean_lines).strip()
            if import_lines:
                import_requests.setdefault(src_file, []).extend(import_lines)
            blocks_by_file.setdefault(src_file, []).append(block)
        else:
            print(f"  [pipeline] WARNING: cannot find source file for '{rel_path}'; skipping block")

    results = []
    for src_file, blocks in blocks_by_file.items():
        try:
            original_content = src_file.read_text(encoding="utf-8")
        except Exception as e:
            print(f"  [pipeline] ERROR reading {src_file}: {e}")
            continue
            
        original_lines = original_content.splitlines(keepends=True)
        original_lines_stripped = [l.strip() for l in original_lines]

        eol = "\n"
        if original_lines and original_lines[0].endswith("\r\n"):
            eol = "\r\n"

        replacements = []
        for block in blocks:
            fixed_code = block.get("fixed_code", "").strip()
            fixed_code = _FAULT_ANNOTATION.sub("", fixed_code).rstrip()
            
            # Find anchor signature and check for LLM Javadoc
            f_lines = fixed_code.splitlines()
            first_sig_idx = -1
            has_llm_javadoc = False
            for i, fl in enumerate(f_lines):
                s = fl.strip()
                if s.startswith("/**") or s.startswith("/*"):
                    has_llm_javadoc = True
                if s and not s.startswith(("//", "*", "/*", "@")):
                    first_sig_idx = i
                    break
            
            if first_sig_idx == -1:
                continue
            method_sig = f_lines[first_sig_idx].strip()

            # Find matching line in original file
            orig_sig_idx = -1
            for idx, line_s in enumerate(original_lines_stripped):
                if line_s == method_sig:
                    orig_sig_idx = idx
                    break
            
            if orig_sig_idx == -1:
                # Try prefix match (first 40 chars)
                prefix = method_sig[:40]
                for idx, line_s in enumerate(original_lines_stripped):
                    if line_s.startswith(prefix):
                        orig_sig_idx = idx
                        break
            
            if orig_sig_idx == -1:
                print(f"  [pipeline] WARNING: signature '{method_sig[:60]}...' not found in {src_file.name}")
                continue

            # Determine replacement start (Surgical Logic)
            replace_start_idx = orig_sig_idx
            if has_llm_javadoc:
                # LLM provided Javadoc -> Replace original Javadoc
                temp_idx = orig_sig_idx
                while temp_idx > 0:
                    prev = original_lines_stripped[temp_idx - 1]
                    if prev.startswith("/**") or prev.startswith("/*"):
                        replace_start_idx = temp_idx - 1
                        break
                    # Keep going back through Javadoc body or annotations
                    if prev.startswith(("*", "@", "//")) or prev == "*/" or prev == "":
                        temp_idx -= 1
                    else:
                        break
            else:
                # LLM DID NOT provide Javadoc -> Preserve original Javadoc
                # BUT if LLM provided annotations, we should start replacement from them in original
                temp_idx = orig_sig_idx
                while temp_idx > 0:
                    prev = original_lines_stripped[temp_idx - 1]
                    if prev.startswith("@"):
                        # If any line in LLM code matches this annotation, include it in replacement
                        if any(l.strip() == prev for l in f_lines[:first_sig_idx]):
                            replace_start_idx = temp_idx - 1
                            temp_idx -= 1
                            continue
                    break

            # Find method end via brace counting (original file)
            brace_depth = 0
            method_started = False
            orig_end_idx = orig_sig_idx
            for i in range(orig_sig_idx, len(original_lines)):
                line = original_lines[i]
                sb = re.sub(r'"(?:[^"\\]|\\.)*"', '""', line)
                sb = re.sub(r"//.*$", "", sb)
                brace_depth += sb.count("{") - sb.count("}")
                if brace_depth > 0:
                    method_started = True
                if method_started and brace_depth <= 0:
                    orig_end_idx = i
                    break

            # Trim fixed_code to only the FIRST method body.
            # When the LLM packs multiple methods in one FILE block, the extra
            # methods would be injected right after the anchor, creating duplicates
            # because those methods already exist later in the original file.
            brace_depth_f = 0
            method_started_f = False
            first_method_end_f = len(f_lines) - 1
            for i_f in range(first_sig_idx, len(f_lines)):
                fl = f_lines[i_f]
                sb_f = re.sub(r'"(?:[^"\\]|\\.)*"', '""', fl)
                sb_f = re.sub(r"//.*$", "", sb_f)
                brace_depth_f += sb_f.count("{") - sb_f.count("}")
                if brace_depth_f > 0:
                    method_started_f = True
                if method_started_f and brace_depth_f <= 0:
                    first_method_end_f = i_f
                    break
            if first_method_end_f < len(f_lines) - 1:
                extra = len(f_lines) - 1 - first_method_end_f
                print(
                    f"  [pipeline] Trimmed {extra} trailing line(s) from FILE block "
                    f"(multi-method block detected; keeping first method only)"
                )
                f_lines = f_lines[: first_method_end_f + 1]

            # Detect original indentation at the signature line
            orig_indent = original_lines[orig_sig_idx][:len(original_lines[orig_sig_idx]) - len(original_lines[orig_sig_idx].lstrip())]
            
            # Detect LLM's indentation of the signature
            f_sig_line = f_lines[first_sig_idx]
            f_indent = f_sig_line[:len(f_sig_line) - len(f_sig_line.lstrip())]
            
            # Apply original indentation if different
            if f_indent != orig_indent:
                reindented = []
                for fl in f_lines:
                    if fl.startswith(f_indent):
                        reindented.append(orig_indent + fl[len(f_indent):])
                    elif not fl.strip():
                        reindented.append("")
                    else:
                        reindented.append(orig_indent + fl.lstrip())
                f_lines = reindented
            
            new_code_lines = [l + eol for l in f_lines]
            replacements.append((replace_start_idx, orig_end_idx, new_code_lines))

        if not replacements:
            continue

        # Sort replacements in reverse order of line numbers to apply them without shifting
        replacements.sort(key=lambda x: x[0], reverse=True)
        final_lines = list(original_lines)
        for start, end, new_lines in replacements:
            final_lines[start : end + 1] = new_lines

        # P4: Validate brace balance — if broken, discard this file's replacement
        if not _validate_brace_balance(final_lines):
            print(
                f"  [pipeline] WARNING: brace balance broken after replacement in "
                f"{src_file.name} — skipping this file to avoid structural corruption"
            )
            continue

        display_path = str(src_file)
        for root in source_roots:
            try:
                display_path = str(src_file.relative_to(root))
                break
            except ValueError:
                continue
        
        # Inject any IMPORT directives collected for this file
        pending_imports = import_requests.get(src_file, [])
        if pending_imports:
            final_lines = _inject_imports(final_lines, pending_imports, display_path)

        # Build unified diff
        diff_lines = list(difflib.unified_diff(
            original_lines, final_lines,
            fromfile=display_path, tofile=display_path, n=3
        ))
        diff_str = "".join(diff_lines)
        
        if diff_str:
            results.append({
                "relative_path": display_path,
                "diff": diff_str,
                "file": src_file,
            })
            print(f"  [pipeline] Diff built for '{display_path}' ({len(blocks)} blocks merged)")

    return results

def _extract_original_code(logicfl_result, bug_dir: Path) -> str:
    """Extract the original buggy method source for critic / retry context.

    Returns a concatenation of all fault-location methods so the critic
    and the execution-feedback prompt have isolated original code.
    """
    from pipeline import code_extractor

    sections = []
    seen = set()
    for fl in logicfl_result.fault_locations:
        fp = fl["file_path"]
        line = fl["line"]
        key = (fp, line)
        if key in seen or not fp.exists():
            continue
        seen.add(key)
        snippet, start, end = code_extractor.extract_method_source(fp, line)
        if snippet:
            rel = prompt_builder._derive_relative_path(fp)
            sections.append(f"// FILE: {rel}  (lines {start}-{end})\n{snippet}")
    return "\n\n".join(sections) if sections else "(original code not available)"


def _self_consistency_pass(
    bug_id: str,
    bug_dir: Path,
    logicfl_result,
    source_roots: list[Path],
    original_code: str,
    diagnostic_prompt: str,
    code_gen_prompt: str,
) -> tuple[bool, dict, str]:
    """S4 — Sample K independent patches at different temperatures and test each.

    Activated only when all standard attempts failed and SELF_CONSISTENCY_ENABLED=true.
    Each candidate gets a FRESH session (no carried-over context) to maximize
    genuine diversity. Returns (passed, last_test_result, last_diff) as soon as
    one candidate passes the tests, or (False, last_result, last_diff) if none do.
    """
    from pipeline.llm_patcher import RepairSession

    k = config.SELF_CONSISTENCY_K
    temps = config.SELF_CONSISTENCY_TEMPS
    print(
        f"\n  [S4 self-consistency] Generating {k} candidate patches "
        f"at temps={temps}..."
    )

    last_result: dict = {"status": "FAIL"}
    last_diff: str = ""

    for idx, temp in enumerate(temps[:k], start=1):
        print(f"\n  [S4 cand {idx}/{k}] temp={temp}")
        try:
            fresh_session = RepairSession(bug_dir)
            _diag, raw = fresh_session.first_attempt(
                diagnostic_prompt, code_gen_prompt, temperature=temp
            )
            structured = _parse_structured_response(raw)
            parsed_blocks = llm_patcher.parse_repair_response(structured.patch_code)
            if not parsed_blocks:
                parsed_blocks = llm_patcher.parse_repair_response(raw)
            if not parsed_blocks:
                print(f"  [S4 cand {idx}] no FILE blocks returned — skip")
                continue

            diff_results = _build_diffs_from_response(parsed_blocks, bug_dir, source_roots)
            if not diff_results:
                print(f"  [S4 cand {idx}] empty diff — skip")
                continue
            combined_diff = "\n".join(d["diff"] for d in diff_results)
            last_diff = combined_diff

            patched_dir = patch_applier.apply_patch(bug_dir, combined_diff, 100 + idx)
            test_result = test_runner.run_tests(bug_dir, patched_dir, 100 + idx)
            last_result = test_result
            reporter.save_attempt_result(
                bug_id, 100 + idx, f"self-consistency-cand-{idx}",
                combined_diff, test_result,
            )
            print(f"  [S4 cand {idx}] → {test_result.get('status')}")
            if test_result.get("status") == "PASS":
                return True, test_result, combined_diff
        except Exception as exc:
            print(f"  [S4 cand {idx}] ERROR: {exc}")
            traceback.print_exc()
            continue

    print("  [S4 self-consistency] no candidate passed")
    return False, last_result, last_diff


def _detect_secondary_fault(
    stack_traces: str,
    last_patch_code: str,
    source_roots: list[Path],
) -> str:
    """Return a hint string when the test failure is in a file not yet patched.

    Parses the stack trace to find the first non-framework, non-test frame.
    If that frame's file is NOT already mentioned in last_patch_code's FILE headers,
    returns a warning string telling the LLM to also fix that file/method.
    Returns an empty string if no secondary fault is detected.
    """
    import re as _re

    if not stack_traces or "COMPILE ERROR" in stack_traces:
        return ""

    # Extract file names already patched (from FILE: ... headers in last_patch_code)
    patched_files: set[str] = set()
    for m in _re.finditer(r"FILE:\s*(\S+)", last_patch_code):
        patched_files.add(Path(m.group(1)).name)

    if not patched_files:
        return ""

    # Parse the first meaningful frame from the stack trace
    frame_re = _re.compile(
        r"at\s+([\w$.]+)\.([\w$<>]+)\((\w+\.java):(\d+)\)"
    )
    skip_prefixes = (
        "junit.", "org.junit.", "sun.", "java.", "javax.",
        "com.sun.", "org.hamcrest.",
    )

    for match in frame_re.finditer(stack_traces):
        fqcn = match.group(1)
        method_name = match.group(2)
        java_file = match.group(3)
        line_no = int(match.group(4))

        if any(fqcn.startswith(p) for p in skip_prefixes):
            continue
        if "test" in fqcn.lower() or "Test" in fqcn:
            continue

        if java_file not in patched_files:
            # Try to resolve to get the relative path hint
            rel_hint = java_file
            for root in source_roots:
                simple_name = fqcn.split(".")[-1].split("$")[0] + ".java"
                matches = list(root.rglob(simple_name))
                if matches:
                    try:
                        rel_hint = str(matches[0].relative_to(root))
                    except ValueError:
                        pass
                    break

            return (
                f"⚠️  SECONDARY FAULT DETECTED: The test fails at "
                f"{fqcn}.{method_name}({java_file}:{line_no}), "
                f"which is in a DIFFERENT file from what you patched ({', '.join(patched_files)}).\n"
                f"You MUST also add a FILE block for: {rel_hint}\n"
                f"Fix {method_name}() at line {line_no} — add a null-check or guard for the case "
                f"where parentNode/parent is null."
            )

    return ""


def repair_bug(bug_id: str, force_rerun: bool = False) -> bool:
    """Run the full Actor-Critic repair pipeline for a single bug.

    Architecture:
      1. Generator: diagnostic prompt → structured code-gen (XML tags)
      2. Critic loop: PatchCritic validates the patch (max MAX_CRITIC_ITERATIONS)
      3. Execution: apply patch → run tests
      4. Feedback: on test failure, refine_from_execution with clean history

    Args:
        bug_id:      Bug identifier, e.g. "Chart-2".
        force_rerun: Re-execute LogicFL even if output already exists.

    Returns:
        True if the bug was repaired successfully, False otherwise.
    """
    print(f"\n{'=' * 50}")
    print(f"  PIPELINE: {bug_id}")
    print(f"{'=' * 50}")

    # ── Step 0: Skip environment-incompatible bugs ─────────────────────────────
    if bug_id in getattr(config, "ENV_INCOMPATIBLE_BUGS", set()):
        print(
            f"  [pipeline] {bug_id} is marked ENV_INCOMPATIBLE (e.g. CGLIB+Java17). "
            f"Skipping — not counted as a pipeline failure."
        )
        reporter.save_final_report(
            bug_id, False, None, 0,
            {"status": "SKIPPED_ENV", "reason": "environment incompatibility"},
        )
        return False

    # ── Step 1: Run (or reuse) LogicFL ─────────────────────────────────────────
    try:
        result_dir = logicfl_runner.run_logicfl(bug_id, force_rerun)
    except Exception as exc:
        print(f"  [pipeline] ERRORE in LogicFL per {bug_id}: {exc}")
        traceback.print_exc()
        reporter.save_final_report(bug_id, False, None, 0, {"error": str(exc)})
        return False

    # ── Step 2: Parse LogicFL output ───────────────────────────────────────────
    try:
        bug_dir = config.DEFECTS4J_DIR / bug_id
        logicfl_result = logicfl_parser.parse_logicfl_output(bug_dir)
    except Exception as exc:
        print(f"  [pipeline] ERRORE nel parsing LogicFL per {bug_id}: {exc}")
        traceback.print_exc()
        reporter.save_final_report(bug_id, False, None, 0, {"error": str(exc)})
        return False

    print(f"  Fault locations trovate: {len(logicfl_result.fault_locations)}")
    for fl in logicfl_result.fault_locations:
        print(f"    → {fl['class']} riga {fl['line']}")

    # Resolve source roots once (needed by both FL fallback and diff builder)
    from pipeline.logicfl_parser import _read_source_roots
    source_roots = _read_source_roots(bug_dir)

    if not logicfl_result.fault_locations:
        # P2: Fallback — try to derive fault location from stack traces
        print("  [pipeline] Nessuna fault location da LogicFL — tentativo fallback da stack trace...")
        fallback_fl = extract_fault_from_stack_trace(
            logicfl_result.stack_traces, source_roots
        )
        if fallback_fl:
            logicfl_result.fault_locations = [fallback_fl]
            print(f"  [pipeline] Fallback FL applicato: {fallback_fl['class']} riga {fallback_fl['line']}")
        else:
            print("  [pipeline] Fallback FL fallito; impossibile generare patch")
            reporter.save_final_report(
                bug_id, False, None, 0,
                {"error": "No fault locations found by LogicFL or stack trace"},
            )
            return False

    # Extract original code once (used by critic and execution feedback)
    original_code = _extract_original_code(logicfl_result, bug_dir)

    # ── Step 3: Actor-Critic repair loop ─────────────────────────────────────────
    session = llm_patcher.RepairSession(bug_dir)
    diagnostic_prompt = prompt_builder.build_diagnostic_prompt(logicfl_result, attempt=1)
    code_gen_prompt = prompt_builder.build_code_gen_prompt()
    critic = PatchCritic()

    last_test_result = {}
    last_patch_code = ""

    for attempt in range(1, config.MAX_REPAIR_ATTEMPTS + 1):
        print(f"\n  [Tentativo {attempt}/{config.MAX_REPAIR_ATTEMPTS}]")

        # ── LLM Generation ───────────────────────────────────────────────────────
        try:
            temperature = config.LLM_TEMPERATURE
            if hasattr(config, "LLM_TEMPERATURE_SCHEDULE") and attempt - 1 < len(config.LLM_TEMPERATURE_SCHEDULE):
                temperature = config.LLM_TEMPERATURE_SCHEDULE[attempt - 1]

            # Adaptive: if the previous attempt had a COMPILE_ERROR (hallucination-class),
            # lower the temperature to stay grounded on real APIs. Test-failure (logic-class)
            # retries keep the scheduled diversification temperature.
            last_status = last_test_result.get("status") if attempt > 1 else None
            if last_status == "COMPILE_ERROR":
                downshift = getattr(config, "COMPILE_ERROR_TEMP_DOWNSHIFT", 0.2)
                adjusted = round(max(0.0, temperature - downshift), 2)
                print(
                    f"  [adaptive-temp] last_status=COMPILE_ERROR → "
                    f"downshift {temperature:.2f} → {adjusted:.2f}"
                )
                temperature = adjusted
            else:
                temperature = round(temperature, 2)

            print(f"  → Chiamata Azure OpenAI GPT-4o (temp={temperature:.2f})...")

            if attempt == 1:
                diagnosis, raw_response = session.first_attempt(
                    diagnostic_prompt, code_gen_prompt, temperature=temperature
                )
                print(f"  → Diagnosi:\n{diagnosis}\n")
            else:
                # Clean-history execution feedback (no accumulated RAG)
                compile_out = last_test_result.get('compile_output', '')
                test_out = last_test_result.get('test_output', '')
                failing_names = last_test_result.get('failing_test_names', [])
                failing_tests_str = "\n".join(f"- {t}" for t in failing_names) if failing_names else "(compilation or setup error)"

                stack_traces = last_test_result.get('stack_traces_block', '')
                if not stack_traces:
                    stack_traces = test_out[-2000:] if len(test_out) > 2000 else test_out
                if compile_out and last_test_result.get('status') == 'COMPILE_ERROR':
                    stack_traces = f"COMPILE ERROR:\n{compile_out[-2000:]}"

                # P5: Detect secondary fault — failing in a different file than patched
                secondary_hint = _detect_secondary_fault(
                    stack_traces, last_patch_code, source_roots
                )
                if secondary_hint:
                    stack_traces = stack_traces + "\n\n" + secondary_hint
                    print(f"  [pipeline] Secondary fault detected: {secondary_hint[:120]}")

                # S3: API grounding — only on COMPILE_ERROR, inject real available
                # APIs for every hallucinated symbol from javac's output.
                if last_test_result.get("status") == "COMPILE_ERROR":
                    try:
                        hints = build_api_hints_from_compile_error(
                            compile_out, source_roots
                        )
                        hints_with_api = [h for h in hints if h.real_api]
                        if hints_with_api:
                            api_block = format_api_hints(hints_with_api)
                            stack_traces = stack_traces + "\n\n" + api_block
                            symbols = ", ".join(
                                f"{h.symbol.symbol_name}@{h.symbol.class_fqcn.split('.')[-1]}"
                                for h in hints_with_api
                            )
                            print(f"  [api-grounding] Injected real APIs for: {symbols}")
                    except Exception as exc:
                        print(f"  [api-grounding] ERROR extracting API hints: {exc}")

                raw_response = session.refine_from_execution(
                    stack_trace=stack_traces,
                    failed_patch=last_patch_code,
                    original_code=original_code,
                    failing_tests=failing_tests_str,
                    temperature=temperature,
                )

            # ── Parse structured XML response ────────────────────────────────────
            structured = _parse_structured_response(raw_response)
            if structured.bug_analysis:
                print(f"  → Bug Analysis: {structured.bug_analysis[:200]}...")
            if structured.potential_impact:
                print(f"  → Impact: {structured.potential_impact[:150]}...")

            response_for_parsing = structured.patch_code
            parsed_blocks = llm_patcher.parse_repair_response(response_for_parsing)

            if not parsed_blocks:
                parsed_blocks = llm_patcher.parse_repair_response(raw_response)

            print(f"  → Blocchi FILE estratti: {len(parsed_blocks)}")
            if not parsed_blocks:
                print("  [pipeline] WARNING: LLM non ha restituito blocchi FILE validi")
                last_test_result = {
                    "status": "LLM_ERROR", "error": "No FILE blocks in response",
                    "compile_output": "", "test_output": "",
                }
                reporter.save_attempt_result(
                    bug_id, attempt,
                    "Actor-Critic" if attempt == 1 else "(exec-feedback)",
                    raw_response, last_test_result,
                )
                continue

            last_patch_code = "\n\n".join(b.get("fixed_code", "") for b in parsed_blocks)

        except Exception as exc:
            print(f"  [pipeline] ERRORE nella chiamata LLM: {exc}")
            traceback.print_exc()
            last_test_result = {
                "status": "LLM_ERROR", "error": str(exc),
                "compile_output": "", "test_output": "",
            }
            reporter.save_attempt_result(
                bug_id, attempt,
                "Actor-Critic" if attempt == 1 else "(exec-feedback)",
                "", last_test_result,
            )
            continue

        # ── Critic Validation Loop ───────────────────────────────────────────────
        critic_approved = True
        critic_feedback_log = []
        for critic_round in range(1, config.MAX_CRITIC_ITERATIONS + 1):
            print(f"  → Critic round {critic_round}/{config.MAX_CRITIC_ITERATIONS}...")
            bug_context = (
                f"Bug: {bug_id}. "
                f"Failing tests: {', '.join(t.get('method', '?') for t in logicfl_result.failing_tests[:3])}. "
                f"Stack trace hint: {logicfl_result.stack_traces[:300]}"
            )
            verdict = critic.evaluate(original_code, last_patch_code, bug_context)
            critic_feedback_log.append({"round": critic_round, "approved": verdict.approved, "reason": verdict.reason})

            if verdict.approved:
                print(f"  ✓ Critic APPROVED: {verdict.reason[:120]}")
                break

            print(f"  ✗ Critic REJECTED (round {critic_round}): {verdict.reason[:200]}")

            if critic_round < config.MAX_CRITIC_ITERATIONS:
                try:
                    raw_response = session.refine_from_critic(
                        critic_reason=verdict.reason,
                        original_code=original_code,
                        rejected_patch=last_patch_code,
                        temperature=temperature,
                    )
                    structured = _parse_structured_response(raw_response)
                    response_for_parsing = structured.patch_code
                    parsed_blocks = llm_patcher.parse_repair_response(response_for_parsing)
                    if not parsed_blocks:
                        parsed_blocks = llm_patcher.parse_repair_response(raw_response)
                    if parsed_blocks:
                        last_patch_code = "\n\n".join(b.get("fixed_code", "") for b in parsed_blocks)
                        print(f"  → Revised patch generated ({len(parsed_blocks)} blocks)")
                    else:
                        print("  [pipeline] WARNING: critic retry produced no FILE blocks")
                        break
                except Exception as exc:
                    print(f"  [pipeline] ERROR in critic retry: {exc}")
                    break
            else:
                print(f"  → Max critic rounds reached; proceeding with current patch")

        # ── Build diffs from corrected methods ───────────────────────────────────
        diff_results = _build_diffs_from_response(parsed_blocks, bug_dir, source_roots)
        if not diff_results:
            print("  [pipeline] WARNING: non è stato possibile costruire nessun diff dai metodi restituiti")
            combined_diff = llm_patcher.extract_diff_from_response(raw_response)
        else:
            combined_diff = "\n".join(d["diff"] for d in diff_results)
            print(f"  → Diff costruito ({len(combined_diff)} caratteri)")

        # ── Apply patch ─────────────────────────────────────────────────────────
        try:
            print("  → Applicazione patch...")
            patched_dir = patch_applier.apply_patch(bug_dir, combined_diff, attempt)
        except Exception as exc:
            print(f"  [pipeline] ERRORE nell'applicazione patch: {exc}")
            traceback.print_exc()
            last_test_result = {
                "status": "PATCH_ERROR", "error": str(exc),
                "compile_output": "", "test_output": "",
            }
            reporter.save_attempt_result(
                bug_id, attempt,
                "Actor-Critic" if attempt == 1 else "(exec-feedback)",
                combined_diff, last_test_result,
            )
            continue

        # ── Run tests ───────────────────────────────────────────────────────────
        try:
            print("  → Esecuzione test suite...")
            last_test_result = test_runner.run_tests(bug_dir, patched_dir, attempt)
        except Exception as exc:
            print(f"  [pipeline] ERRORE nell'esecuzione dei test: {exc}")
            traceback.print_exc()
            last_test_result = {
                "status": "TEST_ERROR", "error": str(exc),
                "compile_output": "", "test_output": "",
            }

        # Enrich test result with critic feedback and structured analysis
        last_test_result["critic_feedback"] = critic_feedback_log
        if structured.bug_analysis:
            last_test_result["bug_analysis"] = structured.bug_analysis

        reporter.save_attempt_result(
            bug_id, attempt,
            "Actor-Critic" if attempt == 1 else "(exec-feedback)",
            combined_diff, last_test_result,
        )

        if last_test_result.get("status") == "PASS":
            reporter.save_final_report(bug_id, True, attempt, attempt, last_test_result)
            reporter.print_summary(
                bug_id, {**last_test_result, "winning_attempt": attempt, "total_attempts": attempt}
            )
            return True

        print(f"  ✗ Fallito: {last_test_result.get('status', 'UNKNOWN')}")

    # ── S4 (opt-in): Self-consistency fallback pass ────────────────────────────
    if getattr(config, "SELF_CONSISTENCY_ENABLED", False):
        passed, sc_result, sc_diff = _self_consistency_pass(
            bug_id, bug_dir, logicfl_result, source_roots,
            original_code, diagnostic_prompt, code_gen_prompt,
        )
        if passed:
            reporter.save_final_report(
                bug_id, True,
                config.MAX_REPAIR_ATTEMPTS + 1,
                config.MAX_REPAIR_ATTEMPTS + 1,
                sc_result,
            )
            reporter.print_summary(
                bug_id,
                {**sc_result,
                 "winning_attempt": "self-consistency",
                 "total_attempts": config.MAX_REPAIR_ATTEMPTS + config.SELF_CONSISTENCY_K},
            )
            return True

    # ── All attempts exhausted ──────────────────────────────────────────────────
    reporter.save_final_report(
        bug_id, False, None, config.MAX_REPAIR_ATTEMPTS,
        {"status": "FAIL", "total_attempts": config.MAX_REPAIR_ATTEMPTS,
         "last_failure": last_test_result.get("test_output", "")[:500]},
    )
    reporter.print_summary(bug_id, {
        "status": "FAIL", "total_tests": 0, "failed_tests": 0,
        "total_attempts": config.MAX_REPAIR_ATTEMPTS,
    })
    return False



# ── CLI ───────────────────────────────────────────────────────────────────────

def _parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="LogicFL → LLM Patcher: Automated Program Repair pipeline",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  python run_pipeline.py --bug Chart-2
  python run_pipeline.py --bug Chart-2 --force-rerun-logicfl
  python run_pipeline.py --bug Chart-2,Chart-4,Gson-6
  python run_pipeline.py --bug all
        """,
    )
    parser.add_argument(
        "--bug",
        required=True,
        help=(
            'Bug ID to repair (e.g. "Chart-2"), comma-separated list, '
            'or "all" to run all 38 NPE bugs.'
        ),
    )
    parser.add_argument(
        "--force-rerun-logicfl",
        action="store_true",
        help="Re-execute LogicFL even if result/fault_locs.txt already exists.",
    )
    return parser.parse_args()


def _resolve_bug_ids(bug_arg: str) -> list[str]:
    """Expand 'all' or a comma-separated list to concrete bug IDs."""
    if bug_arg.strip().lower() == "all":
        return list(NPE_BUGS)
    return [b.strip() for b in bug_arg.split(",") if b.strip()]


def main() -> None:
    args = _parse_args()
    bug_ids = _resolve_bug_ids(args.bug)
    force_rerun = args.force_rerun_logicfl

    print(f"\n{'#' * 50}")
    print(f"  LogicFL → LLM Patcher")
    print(f"  Bug da riparare: {len(bug_ids)}")
    print(f"  Risultati in: {config.PIPELINE_RESULTS_DIR}")
    print(f"{'#' * 50}")

    config.PIPELINE_RESULTS_DIR.mkdir(parents=True, exist_ok=True)

    results: dict[str, bool] = {}
    skipped: set[str] = set()
    env_incompatible = getattr(config, "ENV_INCOMPATIBLE_BUGS", set())
    for bug_id in bug_ids:
        try:
            success = repair_bug(bug_id, force_rerun)
            results[bug_id] = success
            if bug_id in env_incompatible:
                skipped.add(bug_id)
        except KeyboardInterrupt:
            print("\n[pipeline] Interrotto dall'utente.")
            break
        except Exception as exc:
            print(f"\n[pipeline] Errore inatteso per {bug_id}: {exc}")
            traceback.print_exc()
            results[bug_id] = False

    # Final summary if multiple bugs
    if len(bug_ids) > 1:
        n_pass = sum(1 for v in results.values() if v)
        n_skipped = len(skipped)
        n_pipeline_total = len(results) - n_skipped
        print(f"\n{'#' * 50}")
        print(f"  RIEPILOGO FINALE")
        if n_skipped:
            print(f"  Riparati: {n_pass}/{n_pipeline_total}  (+ {n_skipped} skipped env-incompat)")
        else:
            print(f"  Riparati: {n_pass}/{len(results)}")
        for bid, ok in results.items():
            if bid in skipped:
                icon = "⏭"
            elif ok:
                icon = "✅"
            else:
                icon = "❌"
            print(f"    {icon} {bid}")
        print(f"{'#' * 50}\n")


if __name__ == "__main__":
    main()
