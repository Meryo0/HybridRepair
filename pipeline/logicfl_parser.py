"""Parse LogicFL output files into structured Python objects.

Reads fault_locs.txt, root_cause.txt, tests.json, and stack_traces.txt
from a bug directory and returns a LogicFLResult dataclass ready for
consumption by the prompt builder and test runner.
"""

from __future__ import annotations

import json
import re
from dataclasses import dataclass, field
from pathlib import Path
from typing import List


@dataclass
class LogicFLResult:
    """All structured information extracted from a LogicFL run."""

    bug_id: str

    # List of dicts: {"class": str, "line": int, "file_path": Path}
    fault_locations: List[dict] = field(default_factory=list)

    # Raw text of result/root_cause.txt
    root_cause_text: str = ""

    # Individual NPE causal chains split on blank lines
    causal_chains: List[str] = field(default_factory=list)

    # Parsed failing tests: {"class": str, "method": str}
    failing_tests: List[dict] = field(default_factory=list)

    # Raw text of stack_traces.txt
    stack_traces: str = ""


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


def _read_source_roots(bug_dir: Path) -> List[Path]:
    """Read source.path from config.properties and return resolved source root dirs.

    Falls back to common conventions if config.properties is missing or
    the source.path key is absent.
    """
    import configparser
    props_path = bug_dir / "config.properties"
    source_roots: List[Path] = []

    if props_path.exists():
        raw = "[DEFAULT]\n" + props_path.read_text(encoding="utf-8")
        parser = configparser.RawConfigParser()
        parser.read_string(raw)
        sp = parser.get("DEFAULT", "source.path", fallback="")
        for entry in sp.split(":"):
            entry = entry.strip()
            if not entry:
                continue
            # Only include source entries from the buggy side, skip test dirs
            if "test" in entry.lower():
                continue
            candidate = (bug_dir / entry).resolve()
            if candidate.exists():
                source_roots.append(candidate)

    # Fallback conventions if nothing found yet
    if not source_roots:
        for fallback in (
            bug_dir / "buggy" / "source",
            bug_dir / "buggy" / "src" / "main" / "java",
            bug_dir / "buggy" / "src",
        ):
            if fallback.exists():
                source_roots.append(fallback)
                break

    return source_roots


def _parse_fault_locations(fault_locs_path: Path, source_roots: List[Path]) -> List[dict]:
    """Parse result/fault_locs.txt into a list of fault-location dicts.

    Tries each source root in order; falls back to a recursive glob search.
    """
    locations: List[dict] = []
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
            file_path: Path | None = None
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
                # Still not found — use first root as best guess (file may be generated)
                file_path = _class_to_file_path(class_name, source_roots[0])

            file_path_resolved = file_path or Path(class_name.replace(".", "/") + ".java")
            
            # P3: Filter test-class fault locations
            if "test" in class_name.lower() or "test" in file_path_resolved.name.lower() or "junit" in class_name.lower():
                continue
                
            locations.append({
                "class": class_name,
                "line": line_no,
                "file_path": file_path_resolved,
            })
            
    # P3: Deduplicate by method bounds to avoid overwhelming the LLM
    from pipeline.code_extractor import _find_method_bounds
    
    deduped_locations: List[dict] = []
    seen_methods: set[tuple[Path, int, int]] = set()
    
    for loc in locations:
        fp = loc["file_path"]
        target_line = loc["line"]
        if not fp.exists():
            deduped_locations.append(loc)
            continue
            
        try:
            lines = fp.read_text(encoding="utf-8", errors="replace").splitlines()
            bounds = _find_method_bounds(lines, target_line)
            if bounds:
                start_1, end_1 = bounds
                method_key = (fp, start_1, end_1)
                if method_key not in seen_methods:
                    seen_methods.add(method_key)
                    deduped_locations.append(loc)
            else:
                # If we can't find bounds, deduplicate by file+line to be safe
                method_key = (fp, target_line, target_line)
                if method_key not in seen_methods:
                    seen_methods.add(method_key)
                    deduped_locations.append(loc)
        except Exception:
            deduped_locations.append(loc)
            
    # P3: Limit to max 15 fault locations to prevent context overflow while keeping breadth
    return deduped_locations[:15]


def _parse_root_cause(root_cause_path: Path) -> tuple[str, List[str]]:
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
        # Skip the header line "Fault Localization Results" if it appears alone
        if block and block != "Fault Localization Results":
            # If the block starts with the header, strip it
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

    The Defects4J tests.json uses 'name' as the method key and 'failed.tests'
    as the list key.
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
        # Try common keys in priority order
        for key in ("failed.tests", "tests", "failingTests", "failing_tests"):
            if key in data:
                raw_entries = data[key]
                break
        if not raw_entries:
            # Fallback: collect all list values
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
        # Defects4J uses "name"; generic format uses "method"
        method = entry.get("name") or entry.get("method", "")
        if cls:
            tests.append({"class": cls, "method": method})

    return tests


def extract_fault_from_stack_trace(
    stack_traces: str,
    source_roots: List[Path],
) -> dict | None:
    """Derive a fault location from a raw stack trace when LogicFL finds nothing.

    Scans the stack trace for the first `at` frame that:
    - is NOT a JUnit / Hamcrest / java.* / sun.* framework class
    - resolves to an actual Java source file on disk

    Returns a fault-location dict compatible with the rest of the pipeline,
    or None if no valid location is found.
    """
    if not stack_traces:
        return None

    skip_prefixes = (
        "junit.", "org.junit.", "sun.", "java.", "javax.",
        "com.sun.", "org.hamcrest.", "org.mockito.internal.runners.",
        "org.apache.maven.", "org.gradle.",
    )

    def _resolve(fqcn: str) -> "Path | None":
        """Try to find the source file for a fully-qualified class name."""
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

    # ── Strategy 1: Parse explicit `at` frames ───────────────────────────────
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
            return {"class": fqcn, "line": line_no, "file_path": file_path}

    # ── Strategy 2: Parse Java 17 verbose NPE messages ───────────────────────
    # e.g. 'because the return value of "org.example.Foo.bar()" is null'
    # or   'because "this.field" is null'  → look for the class in the message
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
            # Use line 1 as a placeholder — LLM will explore the method
            print(
                f"  [logicfl_parser] Fallback FL from NPE message: "
                f"{fqcn} → {file_path} (line inferred from message)"
            )
            return {"class": fqcn, "line": 1, "file_path": file_path}

    return None


def parse_logicfl_output(bug_dir: Path) -> LogicFLResult:
    """Parse all LogicFL output files for a given bug directory.

    Automatically detects the source root from config.properties,
    supporting both flat (buggy/source) and Maven (buggy/src/main/java) layouts.

    Args:
        bug_dir: Path to the bug directory (e.g., .../defects4j/Chart-2)

    Returns:
        A fully populated LogicFLResult.
    """
    bug_id = bug_dir.name
    result_dir = bug_dir / "result"

    print(f"  [logicfl_parser] Parsing output for {bug_id} from {result_dir}")

    # Detect source roots dynamically from config.properties
    source_roots = _read_source_roots(bug_dir)
    if source_roots:
        print(f"  [logicfl_parser] Source roots: {[str(r) for r in source_roots]}")
    else:
        print(f"  [logicfl_parser] WARNING: no source roots found for {bug_id}")

    # 1. Fault locations
    fault_locations = _parse_fault_locations(
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

    return LogicFLResult(
        bug_id=bug_id,
        fault_locations=fault_locations,
        root_cause_text=root_cause_text,
        causal_chains=causal_chains,
        failing_tests=failing_tests,
        stack_traces=stack_traces,
    )
