"""Regression tests for the anti-overfitting fixes (interventi A–D).

Runnable standalone (no pytest required):
    .venv/bin/python tests/test_fixes.py

Uses real Defects4J checkouts in defects4j/ and real run artifacts in
pipeline_results/ as fixtures, so it must run from the repo root.
"""

from __future__ import annotations

import shutil
import sys
import tempfile
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from patch_agent.ast_applier import apply_method_replacement  # noqa: E402

REPO = Path(__file__).resolve().parent.parent
JD80_FILE = (
    REPO / "defects4j/JacksonDatabind-80/buggy/src/main/java/com/fasterxml/"
           "jackson/databind/jsontype/impl/StdSubtypeResolver.java"
)

BODY_3PARAM = """\
@Override
public Collection<NamedType> collectAndResolveSubtypesByTypeId(MapperConfig<?> config,
        AnnotatedMember property, JavaType baseType)
{
    if (property != null) { }
    return null;
}"""


def _fixture() -> Path:
    tmp = Path(tempfile.mkdtemp()) / "StdSubtypeResolver.java"
    shutil.copy(JD80_FILE, tmp)
    return tmp


# ── Intervento A: ast_applier ─────────────────────────────────────────────────

def test_overload_disambiguated_by_param_count():
    """Without target_line, the 3-param body must select the 3-param overload."""
    ok, patched, _ = apply_method_replacement(
        _fixture(), "collectAndResolveSubtypesByTypeId", BODY_3PARAM, None
    )
    assert ok
    # The 2-param AnnotatedClass overload must survive untouched
    assert "AnnotatedClass baseType" in patched


def test_overload_disambiguated_by_target_line_keeps_indentation():
    ok, patched, _ = apply_method_replacement(
        _fixture(), "collectAndResolveSubtypesByTypeId", BODY_3PARAM, 145
    )
    assert ok
    sig_lines = [l for l in patched.splitlines()
                 if "collectAndResolveSubtypesByTypeId(MapperConfig" in l]
    assert all(l.startswith("    public") for l in sig_lines), \
        "patched method must keep the class-body indentation"


def test_duplicate_signature_rejected():
    """Replacing the 2-param overload with a 3-param body would duplicate it."""
    ok, _, msg = apply_method_replacement(
        _fixture(), "collectAndResolveSubtypesByTypeId", BODY_3PARAM, 170
    )
    assert not ok and "DUPLICATE" in msg


def test_wrong_method_name_in_body_rejected():
    """A new_body that does not contain method_name would delete the method."""
    ok, _, msg = apply_method_replacement(
        _fixture(), "collectAndResolveSubtypesByTypeId",
        "public void somethingElse() { }", 145,
    )
    assert not ok and "does not contain" in msg


def test_truly_ambiguous_overload_is_an_error():
    """registerSubtypes has 2 overloads, both 1-param: must ask for target_line."""
    ok, _, msg = apply_method_replacement(
        _fixture(), "registerSubtypes", "public void registerSubtypes() { }", None
    )
    assert not ok and "Ambiguous" in msg


def test_syntax_error_rejected():
    broken = ("public Collection<NamedType> collectAndResolveSubtypesByTypeId("
              "MapperConfig<?> config, AnnotatedMember property, JavaType baseType)"
              " { return null")  # missing braces
    ok, _, msg = apply_method_replacement(
        _fixture(), "collectAndResolveSubtypesByTypeId", broken, 145
    )
    assert not ok and "syntactically" in msg


# ── Intervento B1: javadoc extraction ─────────────────────────────────────────

def test_javadoc_extraction():
    from fault_oracle.ast_extractor import (
        extract_javadoc_for_method, find_method_bounds_ast,
    )

    csv4 = REPO / "defects4j/Csv-4/buggy/src/main/java/org/apache/commons/csv/CSVParser.java"
    bounds = find_method_bounds_ast(csv4, 288)
    javadoc = extract_javadoc_for_method(csv4, bounds[0])
    assert "copy of the header map" in javadoc

    # No Javadoc → empty string, never the preceding code
    tf = REPO / ("defects4j/JacksonDatabind-95/buggy/src/main/java/com/"
                 "fasterxml/jackson/databind/type/TypeFactory.java")
    bounds = find_method_bounds_ast(tf, 1413)
    assert extract_javadoc_for_method(tf, bounds[0]) == ""


# ── Intervento D2: guard rails ────────────────────────────────────────────────
#
# The "plausible" patches are SYNTHESIZED here from the audited bad edits
# (AnalisiPatch/Analisi_1), because pipeline_results/ gets overwritten by new
# runs — and after the fixes the pipeline produces good patches for these bugs.

def _rails_on_edit(bug: str, rel_path: str, old: str, new: str):
    """Apply a known-bad edit to a temp mirror and run the guard rails on it."""
    from patch_agent import guard_rails
    from services.sandbox_evaluator import read_source_roots

    roots = read_source_roots(REPO / "defects4j" / bug)
    original_file = roots[0] / rel_path
    source = original_file.read_text(encoding="utf-8")
    assert old in source, f"fixture drift: edit target not found in {rel_path}"

    patched_dir = Path(tempfile.mkdtemp())
    target = patched_dir / rel_path
    target.parent.mkdir(parents=True)
    target.write_text(source.replace(old, new, 1), encoding="utf-8")
    return guard_rails.check(roots[0], patched_dir)


def test_guard_rails_reject_csv4_encapsulation_break():
    # Audited Csv-4 patch: returns the internal map instead of a copy
    report = _rails_on_edit(
        "Csv-4", "org/apache/commons/csv/CSVParser.java",
        "return new LinkedHashMap<String, Integer>(this.headerMap);",
        "return this.headerMap;",
    )
    assert not report.passed
    assert any("headerMap" in v for v in report.violations)


def test_guard_rails_reject_jsoup8_undocumented_throw():
    # Audited Jsoup-8 patch: ownerDocument() throws instead of returning null
    report = _rails_on_edit(
        "Jsoup-8", "org/jsoup/nodes/Node.java",
        "        else\n            return parentNode.ownerDocument();",
        "        else {\n"
        "            Document doc = parentNode.ownerDocument();\n"
        "            if (doc == null) {\n"
        "                throw new IllegalStateException(\"Node is not associated with a Document.\");\n"
        "            }\n"
        "            return doc;\n"
        "        }",
    )
    assert not report.passed
    assert any("IllegalStateException" in v for v in report.violations)


def test_guard_rails_warn_jacksondatabind95_default_return():
    # Audited JacksonDatabind-95 patch: early-return CORE_TYPE_OBJECT
    report = _rails_on_edit(
        "JacksonDatabind-95",
        "com/fasterxml/jackson/databind/type/TypeFactory.java",
        "        final String name = var.getName();",
        "        if (bindings == null) {\n"
        "            return CORE_TYPE_OBJECT;\n"
        "        }\n"
        "        final String name = var.getName();",
    )
    assert report.passed  # soft signal only (no Javadoc on _fromVariable)
    assert any("CORE_TYPE_OBJECT" in w
               for ws in report.warnings.values() for w in ws)


def test_guard_rails_warn_csv11_silent_skip():
    # Audited Csv-11 patch: null/empty headers silently skipped via continue
    report = _rails_on_edit(
        "Csv-11", "org/apache/commons/csv/CSVParser.java",
        "                    final String header = headerRecord[i];",
        "                    final String header = headerRecord[i];\n"
        "                    if (header == null) {\n"
        "                        continue;\n"
        "                    }",
    )
    assert report.passed  # soft signal, escalated by the LLM judge
    assert any("continue" in w
               for ws in report.warnings.values() for w in ws)


def test_guard_rails_do_not_reject_good_patches():
    """The latest pipeline_results artifacts must never be hard-rejected.

    After the fixes these are expected to be good patches; a hard violation
    here means a guard-rail false positive.
    """
    import glob

    from patch_agent import guard_rails
    from services.sandbox_evaluator import read_source_roots

    for bug in ("Csv-9", "Codec-17", "Lang-39", "Jsoup-26", "Chart-4",
                "Closure-2", "Cli-5", "JacksonCore-8", "Jsoup-89",
                "JacksonDatabind-13", "JacksonDatabind-93"):
        attempts = sorted(glob.glob(
            str(REPO / f"pipeline_results/{bug}/attempt_*/patched_source")))
        if not attempts:
            continue
        roots = read_source_roots(REPO / "defects4j" / bug)
        report = guard_rails.check(roots[0], Path(attempts[-1]))
        assert report.passed, f"good patch {bug} must not be hard-rejected"


# ── Intervento C: multi-location prompts + sibling scan ───────────────────────

def test_sibling_scan_finds_jacksondatabind80_twin():
    from fault_oracle.logicfl_parser import parse_logicfl_output
    from reasoner.ingredient_forge import collect

    report = parse_logicfl_output(REPO / "defects4j/JacksonDatabind-80")
    ingredients = collect(report)
    assert any("findSubtypes" in s for s in ingredients.sibling_occurrences)


def test_spec_prompt_renders_all_locations():
    from fault_oracle.logicfl_parser import parse_logicfl_output
    from reasoner.ingredient_forge import collect
    from reasoner.spec_builder import _build_spec_prompt

    report = parse_logicfl_output(REPO / "defects4j/JacksonDatabind-3")
    prompt = _build_spec_prompt(report, collect(report))
    assert prompt.count("#### Location") == 2  # crash line 66 + origin line 34
    assert "<fix_locations>" in prompt


def main() -> int:
    failures = 0
    for name, fn in sorted(globals().items()):
        if name.startswith("test_") and callable(fn):
            try:
                fn()
                print(f"PASS {name}")
            except AssertionError as exc:
                failures += 1
                print(f"FAIL {name}: {exc}")
            except Exception as exc:
                failures += 1
                print(f"ERROR {name}: {exc}")
    print("=" * 40)
    print("OK" if failures == 0 else f"{failures} FAILURE(S)")
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
