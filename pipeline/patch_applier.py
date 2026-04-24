"""Apply a unified diff patch to a copy of the buggy source tree.

Tries system 'patch' CLI first (both -p1 and -p0), then falls back to a
pure-Python unified diff parser so the pipeline works even without the
'patch' binary.
"""

from __future__ import annotations

import re
import shutil
import subprocess
from pathlib import Path
from typing import List

from pipeline import config

# ── Common Java imports the LLM often forgets ─────────────────────────────────

_COMMON_IMPORTS: dict[str, str] = {
    "HashSet": "java.util.HashSet",
    "LinkedHashSet": "java.util.LinkedHashSet",
    "TreeSet": "java.util.TreeSet",
    "ArrayList": "java.util.ArrayList",
    "LinkedList": "java.util.LinkedList",
    "HashMap": "java.util.HashMap",
    "LinkedHashMap": "java.util.LinkedHashMap",
    "TreeMap": "java.util.TreeMap",
    "Arrays": "java.util.Arrays",
    "Collections": "java.util.Collections",
    "Objects": "java.util.Objects",
    "Optional": "java.util.Optional",
    "Iterator": "java.util.Iterator",
    "List": "java.util.List",
    "Map": "java.util.Map",
    "Set": "java.util.Set",
}


# ── Auto-import helper ────────────────────────────────────────────────────────

def _ensure_standard_imports(patched_file: Path) -> None:
    """Add missing standard Java imports to a patched source file.

    Scans the file for bare class names from _COMMON_IMPORTS that are used
    without a matching import.  Only adds an import when ALL conditions hold:
      1. The class name appears in the file (as a word boundary match).
      2. No existing `import ...ClassName;` line is present.
      3. The file has at least one `import` or `package` statement (i.e., it
         looks like a real Java source file, not a generated artefact).
    """
    try:
        source = patched_file.read_text(encoding="utf-8", errors="replace")
    except Exception:
        return

    lines = source.splitlines(keepends=True)

    # Detect EOL style
    eol = "\r\n" if lines and lines[0].endswith("\r\n") else "\n"

    # Find insertion point (after last import, or after package, whichever is later)
    last_import_idx = -1
    package_idx = -1
    has_any_import_or_package = False
    for i, raw in enumerate(lines):
        s = raw.strip()
        if s.startswith("import "):
            last_import_idx = i
            has_any_import_or_package = True
        elif s.startswith("package "):
            package_idx = i
            has_any_import_or_package = True

    if not has_any_import_or_package:
        return  # not a standard Java file

    insert_after = last_import_idx if last_import_idx >= 0 else package_idx

    new_imports: list[str] = []
    for simple_name, fqcn in _COMMON_IMPORTS.items():
        # Check if the class is used in the file (word boundary)
        if not re.search(r'\b' + re.escape(simple_name) + r'\b', source):
            continue
        # Check if already imported (any variant)
        already = re.search(r'import\s+[\w.]*\b' + re.escape(simple_name) + r'\s*;', source)
        if already:
            continue
        new_imports.append(f"import {fqcn};{eol}")

    if new_imports:
        idx = insert_after + 1 if insert_after >= 0 else 0
        lines[idx:idx] = new_imports
        patched_file.write_text("".join(lines), encoding="utf-8")
        print(
            f"  [patch_applier] Auto-imported {len(new_imports)} class(es) into "
            f"{patched_file.name}: {[l.strip() for l in new_imports]}"
        )


# ── Directory helpers ─────────────────────────────────────────────────────────

def _attempt_dir(bug_id: str, attempt: int) -> Path:
    return config.PIPELINE_RESULTS_DIR / bug_id / f"attempt_{attempt}"


def _prepare_working_dir(bug_dir: Path, attempt: int) -> tuple[Path, Path]:
    """Create the attempt directory and copy buggy source into it.

    Returns:
        (attempt_dir, patched_source_dir)
    """
    bug_id = bug_dir.name
    attempt_dir = _attempt_dir(bug_id, attempt)
    patched_source_dir = attempt_dir / "patched_source"

    # Clean any previous attempt with the same number
    if patched_source_dir.exists():
        shutil.rmtree(patched_source_dir)

    from pipeline.logicfl_parser import _read_source_roots
    source_roots = _read_source_roots(bug_dir)
    buggy_source = source_roots[0] if source_roots else (bug_dir / "buggy" / "source")

    if buggy_source.exists():
        shutil.copytree(buggy_source, patched_source_dir)
    else:
        patched_source_dir.mkdir(parents=True, exist_ok=True)
        print(f"  [patch_applier] WARNING: {buggy_source} not found; patching empty dir")

    return attempt_dir, patched_source_dir


# ── Diff normalization ────────────────────────────────────────────────────────

def _normalize_diff(diff_content: str) -> str:
    """Normalize an LLM-generated diff for use with the system 'patch' tool.

    Handles:
    - Git diff headers (diff --git a/ b/, index ..., etc.)
    - Stripping path prefixes that won't resolve (src/, a/, b/)
    - Windows line endings
    - Missing trailing newline
    """
    lines = diff_content.replace("\r\n", "\n").splitlines()
    out: List[str] = []
    skip_next = False

    for line in lines:
        # Skip git diff headers
        if line.startswith("diff --git "):
            skip_next = False
            continue
        if line.startswith("index ") and re.match(r"index [0-9a-f]+\.\.[0-9a-f]+", line):
            continue
        if line.startswith(("--- a/", "+++ b/")):
            # Convert git format to standard format
            line = line.replace("--- a/", "--- ", 1).replace("+++ b/", "+++ ", 1)
        if line.startswith(("--- src/", "+++ src/")):
            # Strip 'src/' prefix so -p0 can resolve the path
            line = line.replace("--- src/", "--- ", 1).replace("+++ src/", "+++ ", 1)
        out.append(line)

    result = "\n".join(out)
    if result and not result.endswith("\n"):
        result += "\n"
    return result


# ── patch CLI ─────────────────────────────────────────────────────────────────

def _run_patch_cli(
    patched_source_dir: Path,
    diff_path: Path,
    strip: int,
) -> tuple[bool, str]:
    """Try to apply a patch using the system 'patch' binary.

    Returns:
        (success: bool, output: str)
    """
    try:
        result = subprocess.run(
            ["patch", f"-p{strip}", "--batch", "--forward",
             "--fuzz=3",   # allow 3-line context fuzz
             "-i", str(diff_path)],
            cwd=str(patched_source_dir),
            capture_output=True,
            text=True,
            timeout=60,
        )
        combined = result.stdout + result.stderr
        if result.returncode == 0:
            return True, combined
        return False, combined
    except FileNotFoundError:
        return False, "'patch' binary not found on PATH"
    except subprocess.TimeoutExpired:
        return False, "patch timed out"


# ── Pure-Python unified diff applier (fallback) ───────────────────────────────

def _parse_unified_diff(diff_content: str) -> List[dict]:
    """Parse a unified diff into a list of file-patch dicts.

    Each dict has:
        "old_path": str
        "new_path": str
        "hunks":    list of hunk dicts with keys
                    "old_start", "old_count", "new_start", "new_count", "lines"
    """
    patches: List[dict] = []
    current_patch: dict | None = None
    current_hunk: dict | None = None

    for line in diff_content.splitlines():
        # Skip git diff headers
        if line.startswith("diff --git ") or re.match(r"^index [0-9a-f]+\.\.", line):
            continue

        if line.startswith("--- "):
            old_path = line[4:].split("\t")[0].strip()
            # Strip known prefixes
            for prefix in ("a/", "b/", "src/"):
                if old_path.startswith(prefix):
                    old_path = old_path[len(prefix):]
                    break
            current_patch = {"old_path": old_path, "new_path": "", "hunks": []}
            current_hunk = None
        elif line.startswith("+++ ") and current_patch is not None:
            new_path = line[4:].split("\t")[0].strip()
            for prefix in ("a/", "b/", "src/"):
                if new_path.startswith(prefix):
                    new_path = new_path[len(prefix):]
                    break
            current_patch["new_path"] = new_path
            patches.append(current_patch)
        elif line.startswith("@@ ") and current_patch is not None:
            m = re.match(r"@@ -(\d+)(?:,(\d+))? \+(\d+)(?:,(\d+))? @@", line)
            if m:
                current_hunk = {
                    "old_start": int(m.group(1)),
                    "old_count": int(m.group(2) or 1),
                    "new_start": int(m.group(3)),
                    "new_count": int(m.group(4) or 1),
                    "lines": [],
                }
                current_patch["hunks"].append(current_hunk)
        elif current_hunk is not None:
            if line.startswith(("+", "-", " ")):
                current_hunk["lines"].append(line)

    return patches


def _resolve_file_path(source_dir: Path, diff_path: str, strip: int) -> Path | None:
    """Strip leading path components and resolve against source_dir."""
    # Also strip common prefixes before component-stripping
    for prefix in ("a/", "b/", "src/"):
        if diff_path.startswith(prefix):
            diff_path = diff_path[len(prefix):]
            break

    parts = Path(diff_path.lstrip("/")).parts
    stripped = parts[strip:] if strip < len(parts) else parts
    candidate = source_dir / Path(*stripped) if stripped else None
    if candidate and candidate.exists():
        return candidate

    # Try the path directly relative to source_dir (strip=0 equivalent)
    direct = source_dir / diff_path.lstrip("/")
    if direct.exists():
        return direct

    # Recursive search by filename
    filename = Path(diff_path).name
    if filename:
        matches = list(source_dir.rglob(filename))
        if len(matches) == 1:
            return matches[0]

    return None


_MARKER_RE = re.compile(r"\s*//\s*[←►✗✓]\s*FAULT LOCATION.*$")

def _strip_markers(line: str) -> str:
    """Remove fault-location marker annotations that the LLM may have copied."""
    return _MARKER_RE.sub("", line)

def _lines_match(a: str, b: str) -> bool:
    """Compare two source lines, ignoring trailing whitespace and marker annotations."""
    return _strip_markers(a).rstrip() == _strip_markers(b).rstrip()


def _apply_hunk(file_lines: List[str], hunk: dict) -> List[str] | None:
    """Apply a single hunk to a list of file lines.

    Uses fuzzy offset search (±20 lines) and whitespace-insensitive
    context matching.

    Returns the modified lines, or None if the hunk cannot be applied.
    """
    old_start = hunk["old_start"] - 1  # convert to 0-indexed
    hunk_lines = hunk["lines"]

    # Build expected old and new sequences
    old_seq: List[str] = []
    new_seq: List[str] = []
    for hl in hunk_lines:
        if hl.startswith("-"):
            old_seq.append(hl[1:])
        elif hl.startswith("+"):
            new_seq.append(hl[1:])
        else:
            ctx = hl[1:] if hl.startswith(" ") else hl
            old_seq.append(ctx)
            new_seq.append(ctx)

    if not old_seq:
        return None, -1

    # Try to find old_seq with generous fuzzy offset (±20 lines)
    for offset in range(-20, 21):
        start = old_start + offset
        if start < 0 or start + len(old_seq) > len(file_lines):
            continue
        window = file_lines[start: start + len(old_seq)]
        if all(_lines_match(w, o) for w, o in zip(window, old_seq)):
            # Detect line ending from the matched window (preserve \r\n vs \n)
            eol = "\r\n" if window and window[0].endswith("\r\n") else "\n"

            # Build new_seq with proper line endings
            new_seq_with_eol: List[str] = []
            for line in new_seq:
                stripped = line.rstrip("\r\n")
                new_seq_with_eol.append(stripped + eol)

            return (
                file_lines[:start] + new_seq_with_eol + file_lines[start + len(old_seq):],
                start,
            )

    return None, -1


def _apply_patch_manually(source_dir: Path, diff_content: str) -> bool:
    """Apply a unified diff purely in Python.

    Args:
        source_dir:   Directory whose files will be modified.
        diff_content: Raw unified diff string.

    Returns:
        True if at least one hunk was applied successfully.
    """
    patches = _parse_unified_diff(diff_content)
    if not patches:
        print("  [patch_applier] Manual apply: no patch hunks found in diff")
        return False

    any_success = False

    for patch in patches:
        # Try increasing strip levels to locate the target file
        target_file: Path | None = None
        for strip in range(4):
            target_file = _resolve_file_path(source_dir, patch["new_path"], strip)
            if target_file:
                break
        if target_file is None:
            for strip in range(4):
                target_file = _resolve_file_path(source_dir, patch["old_path"], strip)
                if target_file:
                    break

        if target_file is None or not target_file.exists():
            print(
                f"  [patch_applier] Manual apply: could not locate file for "
                f"{patch['new_path']!r} in {source_dir}"
            )
            continue

        file_lines = target_file.read_text(encoding="utf-8", errors="replace").splitlines(True)
        patch_applied = False
        cumulative_delta = 0  # tracks line offset from previous hunks

        for hunk in patch["hunks"]:
            # Adjust old_start by cumulative delta from previous hunks
            adjusted_hunk = dict(hunk)
            adjusted_hunk["old_start"] = hunk["old_start"] + cumulative_delta

            result, match_start = _apply_hunk(file_lines, adjusted_hunk)
            if result is None:
                print(
                    f"  [patch_applier] Manual apply: hunk at line "
                    f"{hunk['old_start']} could not be applied to {target_file.name}"
                )
            else:
                # Update delta: new_count - old_count lines were added/removed
                hunk_old_count = len([l for l in hunk["lines"] if not l.startswith("+")])
                hunk_new_count = len([l for l in hunk["lines"] if not l.startswith("-")])
                cumulative_delta += hunk_new_count - hunk_old_count
                file_lines = result
                any_success = True
                patch_applied = True

        if patch_applied:
            target_file.write_text("".join(file_lines), encoding="utf-8")
            print(f"  [patch_applier] Manual apply: patched {target_file}")
        else:
            print(f"  [patch_applier] Manual apply: no hunks applied to {target_file.name}")

    return any_success


# ── Public API ────────────────────────────────────────────────────────────────

def apply_patch(bug_dir: Path, diff_content: str, attempt: int) -> Path:
    """Apply a unified diff to a copy of the buggy source.

    Tries (in order):
      1. System 'patch' with normalized diff, -p0 (after stripping path prefixes)
      2. System 'patch' with -p1
      3. Pure-Python fallback with whitespace-tolerant fuzzy matching

    Args:
        bug_dir:      Path to the bug directory (e.g., .../defects4j/Chart-2).
        diff_content: Unified diff string from the LLM.
        attempt:      Attempt number (for naming the output directory).

    Returns:
        Path to the patched_source/ directory.
    """
    bug_id = bug_dir.name
    attempt_dir, patched_source_dir = _prepare_working_dir(bug_dir, attempt)

    # Save the raw diff as received
    diff_path = attempt_dir / "patch.diff"
    diff_path.write_text(diff_content, encoding="utf-8")
    print(f"  [patch_applier] Diff saved to {diff_path}")

    if not diff_content.strip():
        print("  [patch_applier] WARNING: empty diff received; skipping patch application")
        return patched_source_dir

    # Normalize diff: strip git headers, normalize path prefixes
    normalized = _normalize_diff(diff_content)
    norm_path = attempt_dir / "patch_normalized.diff"
    norm_path.write_text(normalized, encoding="utf-8")

    # Try patch CLI with normalized diff: -p0 first (paths already stripped), then -p1
    for strip in (0, 1, 2):
        success, output = _run_patch_cli(patched_source_dir, norm_path, strip)
        if success:
            print(f"  [patch_applier] Patch applied with -p{strip} (normalized)")
            _post_process_imports(patched_source_dir, diff_content)
            return patched_source_dir
        print(f"  [patch_applier] patch -p{strip} failed: {output.strip()[:200]}")

    # Python fallback with improved fuzzy matching
    print("  [patch_applier] Falling back to Python manual patch application")
    ok = _apply_patch_manually(patched_source_dir, diff_content)
    if not ok:
        print("  [patch_applier] WARNING: manual application also failed; "
              "patched_source may be unmodified")

    # P3: Ensure standard imports are present in all modified files
    _post_process_imports(patched_source_dir, diff_content)

    return patched_source_dir


def _post_process_imports(patched_source_dir: Path, diff_content: str) -> None:
    """Run auto-import fix on every .java file touched by the diff."""
    touched: set[str] = set()
    for line in diff_content.splitlines():
        if line.startswith("+++ "):
            path_part = line[4:].split("\t")[0].strip()
            for prefix in ("a/", "b/", "src/"):
                if path_part.startswith(prefix):
                    path_part = path_part[len(prefix):]
                    break
            touched.add(Path(path_part).name)

    for java_file in patched_source_dir.rglob("*.java"):
        if java_file.name in touched:
            _ensure_standard_imports(java_file)
