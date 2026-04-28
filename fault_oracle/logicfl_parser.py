"""Parse LogicFL output files into structured FaultReport.

Reads fault_locs.txt, root_cause.txt, tests.json, and stack_traces.txt
from a bug directory and returns a FaultReport dataclass ready for
consumption by Phase 2 (SpecReason) and Phase 3 (PatchAgent).

Migrated from pipeline/logicfl_parser.py for HybridRepair v2.
Key changes:
  - Output is FaultReport + FaultLocation (from shared.models)
  - Uses ast_extractor for method bounds instead of code_extractor
  - Removed dependency on pipeline.code_extractor
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import List, Optional, Tuple

from shared.models import FaultLocation, FaultReport
from services.sandbox_evaluator import read_source_roots
from fault_oracle.ast_extractor import find_method_bounds_ast, extract_method_at_line


def _class_to_file_path(class_name: str, source_root: Path) -> Path:
    """Convert a fully-qualified Java class name to its source file path.

    Example:
        org.jfree.data.general.DatasetUtilities
        → <source_root>/org/jfree/data/general/DatasetUtilities.java
    """
    # Strip inner class qualifiers (Foo$Bar → Foo)
    top_level = class_name.split("$")[0]
    relative = top_level.replace(".", "/") + ".java"
    return source_root / relative


def _parse_fault_locations(
    fault_locs_path: Path,
    source_roots: List[Path],
) -> List[FaultLocation]:
    """Parse result/fault_locs.txt into a list of FaultLocation objects.

    Tries each source root in order; falls back to a recursive glob search.
    """
    locations: List[FaultLocation] = []
    if not fault_locs_path.exists():
        print(f"  [logicfl_parser] WARNING: {fault_locs_path} not found")
        return locations

    with open(fault_locs_path, encoding="utf-8") as fh:
        for raw_line in fh:
            line = raw_line.strip()
            if not line:
                continue
            parts = line.rsplit(None, 1)  # split on last whitespace
            if len(parts) != 2:
                print(f"  [logicfl_parser] WARNING: unexpected fault_locs line: {line!r}")
                continue
            class_name, line_no_str = parts
            try:
                line_no = int(line_no_str)
            except ValueError:
                print(f"  [logicfl_parser] WARNING: non-integer line number in: {line!r}")
                continue

            # Try each source root
            file_path: Optional[Path] = None
            for root in source_roots:
                candidate = _class_to_file_path(class_name, root)
                if candidate.exists():
                    file_path = candidate
                    break

            # Last resort: recursive search from each root's parent
            if file_path is None:
                simple_name = class_name.split(".")[-1].split("$")[0] + ".java"
                for root in source_roots:
                    matches = list(root.rglob(simple_name))
                    if matches:
                        file_path = matches[0]
                        break

            if file_path is None and source_roots:
                file_path = _class_to_file_path(class_name, source_roots[0])

            file_path_resolved = file_path or Path(class_name.replace(".", "/") + ".java")

            # Filter test-class fault locations
            if ("test" in class_name.lower()
                    or "test" in file_path_resolved.name.lower()
                    or "junit" in class_name.lower()):
                continue

            # Extract method context using AST
            method_source = ""
            method_start = 0
            method_end = 0
            if file_path_resolved.exists():
                try:
                    method_source, method_start, method_end = extract_method_at_line(
                        file_path_resolved, line_no, annotate_fault=False
                    )
                except Exception:
                    pass

            locations.append(FaultLocation(
                class_name=class_name,
                line=line_no,
                file_path=file_path_resolved,
                method_source=method_source,
                method_start=method_start,
                method_end=method_end,
            ))

    # Deduplicate by method bounds to avoid overwhelming the LLM
    deduped: List[FaultLocation] = []
    seen_methods: set[Tuple[Path, int, int]] = set()

    for loc in locations:
        if loc.method_start > 0 and loc.method_end > 0:
            key = (loc.file_path, loc.method_start, loc.method_end)
        else:
            key = (loc.file_path, loc.line, loc.line)

        if key not in seen_methods:
            seen_methods.add(key)
            deduped.append(loc)

    # Limit to max 15 fault locations to prevent context overflow
    return deduped[:15]


def _parse_root_cause(root_cause_path: Path) -> Tuple[str, List[str]]:
    """Read root_cause.txt and split into individual causal-chain strings."""
    if not root_cause_path.exists():
        print(f"  [logicfl_parser] WARNING: {root_cause_path} not found")
        return "", []

    raw_text = root_cause_path.read_text(encoding="utf-8")

    # Split on one-or-more blank lines to get individual NPE blocks
    raw_blocks = re.split(r"\n\s*\n", raw_text.strip())
    chains: List[str] = []
    for block in raw_blocks:
        block = block.strip()
        if block and block != "Fault Localization Results":
            lines = block.splitlines()
            if lines and lines[0].strip() == "Fault Localization Results":
                lines = lines[1:]
            cleaned = "\n".join(lines).strip()
            if cleaned:
                chains.append(cleaned)

    return raw_text, chains


def _parse_tests_json(tests_json_path: Path) -> List[dict]:
    """Parse tests.json, handling both list and dict formats.

    Supported formats:
      Format A: [{"class": "...", "method": "..."}, ...]
      Format B: {"tests": [...], "failed.tests": [...], ...}
    """
    if not tests_json_path.exists():
        print(f"  [logicfl_parser] WARNING: {tests_json_path} not found")
        return []

    with open(tests_json_path, encoding="utf-8") as fh:
        data = json.load(fh)

    raw_entries: list = []

    if isinstance(data, list):
        raw_entries = data
    elif isinstance(data, dict):
        for key in ("failed.tests", "tests", "failingTests", "failing_tests"):
            if key in data:
                raw_entries = data[key]
                break
        if not raw_entries:
            for value in data.values():
                if isinstance(value, list) and value:
                    raw_entries = value
                    break
    else:
        print(f"  [logicfl_parser] WARNING: unexpected tests.json format")
        return []

    tests: List[dict] = []
    for entry in raw_entries:
        if not isinstance(entry, dict):
            continue
        cls = entry.get("class", "")
        method = entry.get("name") or entry.get("method", "")
        if cls:
            tests.append({"class": cls, "method": method})

    return tests


def extract_fault_from_stack_trace(
    stack_traces: str,
    source_roots: List[Path],
) -> Optional[FaultLocation]:
    """Derive a fault location from a raw stack trace when LogicFL finds nothing.

    Scans the stack trace for the first `at` frame that:
    - is NOT a JUnit / Hamcrest / java.* / sun.* framework class
    - resolves to an actual Java source file on disk

    Returns a FaultLocation or None if no valid location is found.
    """
    if not stack_traces:
        return None

    skip_prefixes = (
        "junit.", "org.junit.", "sun.", "java.", "javax.",
        "com.sun.", "org.hamcrest.", "org.mockito.internal.runners.",
        "org.apache.maven.", "org.gradle.",
    )

    def _resolve(fqcn: str) -> Optional[Path]:
        for root in source_roots:
            candidate = _class_to_file_path(fqcn, root)
            if candidate.exists():
                return candidate
        simple_name = fqcn.split(".")[-1].split("$")[0] + ".java"
        for root in source_roots:
            hits = list(root.rglob(simple_name))
            if hits:
                return hits[0]
        return None

    # Strategy 1: Parse explicit `at` frames
    frame_re = re.compile(
        r"at\s+([\w$.]+)\.([\w$<>]+)\((\w+\.java):(\d+)\)"
    )
    for match in frame_re.finditer(stack_traces):
        fqcn = match.group(1)
        line_no = int(match.group(4))
        if any(fqcn.startswith(p) for p in skip_prefixes):
            continue
        class_simple = fqcn.split(".")[-1]
        if "test" in class_simple.lower() or "test" in fqcn.lower():
            continue
        file_path = _resolve(fqcn)
        if file_path is not None:
            print(
                f"  [logicfl_parser] Fallback FL from stack trace: "
                f"{fqcn} line {line_no} → {file_path}"
            )
            return FaultLocation(
                class_name=fqcn,
                line=line_no,
                file_path=file_path,
            )

    # Strategy 2: Parse Java 17 verbose NPE messages
    verbose_re = re.compile(
        r'"([\w$.]+)\.([\w$<>]+)\([^)]*\)"\s+is null'
    )
    for match in verbose_re.finditer(stack_traces):
        fqcn = match.group(1)
        if any(fqcn.startswith(p) for p in skip_prefixes):
            continue
        if "test" in fqcn.lower():
            continue
        file_path = _resolve(fqcn)
        if file_path is not None:
            print(
                f"  [logicfl_parser] Fallback FL from NPE message: "
                f"{fqcn} → {file_path} (line inferred from message)"
            )
            return FaultLocation(
                class_name=fqcn,
                line=1,
                file_path=file_path,
            )

    return None


def parse_logicfl_output(bug_dir: Path) -> FaultReport:
    """Parse all LogicFL output files for a given bug directory.

    Automatically detects the source root from config.properties,
    supporting both flat (buggy/source) and Maven (buggy/src/main/java) layouts.

    Args:
        bug_dir: Path to the bug directory (e.g., .../defects4j/Chart-2)

    Returns:
        A fully populated FaultReport.
    """
    bug_id = bug_dir.name
    result_dir = bug_dir / "result"

    print(f"  [logicfl_parser] Parsing output for {bug_id} from {result_dir}")

    # Detect source roots dynamically from config.properties
    source_roots = read_source_roots(bug_dir)
    if source_roots:
        print(f"  [logicfl_parser] Source roots: {[str(r) for r in source_roots]}")
    else:
        print(f"  [logicfl_parser] WARNING: no source roots found for {bug_id}")

    # 1. Fault locations (with AST context)
    locations = _parse_fault_locations(
        result_dir / "fault_locs.txt", source_roots
    )

    # 2. Root cause
    root_cause_text, causal_chains = _parse_root_cause(result_dir / "root_cause.txt")

    # 3. Failing tests
    failing_tests = _parse_tests_json(bug_dir / "tests.json")

    # 4. Stack traces
    stack_traces_path = bug_dir / "stack_traces.txt"
    stack_traces = (
        stack_traces_path.read_text(encoding="utf-8")
        if stack_traces_path.exists()
        else ""
    )

    # 5. Fallback: if no fault locations, try stack trace
    if not locations and stack_traces:
        fallback_loc = extract_fault_from_stack_trace(stack_traces, source_roots)
        if fallback_loc:
            locations.append(fallback_loc)

    return FaultReport(
        bug_id=bug_id,
        locations=locations,
        root_cause_text=root_cause_text,
        causal_chains=causal_chains,
        failing_tests=failing_tests,
        stack_traces=stack_traces,
    )
