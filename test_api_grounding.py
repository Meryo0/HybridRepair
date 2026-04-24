"""Regression test for pipeline.api_grounding.parse_compile_errors.

Root cause of S3 silent failure (run of 2026-04-24): the previous regex
required `symbol:` to be on the line immediately after `cannot find symbol`,
but real javac output interleaves a code line and a caret line. As a
consequence, API grounding never fired on Cli-30 / Closure-171 / JacksonDB.

This test guards against that class of bug.
"""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))

from pipeline.api_grounding import parse_compile_errors


def _assert_eq(actual, expected, case):
    if actual != expected:
        raise AssertionError(
            f"[{case}] expected={expected!r}\n          actual  ={actual!r}"
        )


def test_cli30_real_javac_output():
    text = (
        "Parser.java:274: error: cannot find symbol\n"
        "            if (opt.getOptionGroup() != null && opt.getOptionGroup().getSelected() != null)\n"
        "                   ^\n"
        "  symbol:   method getOptionGroup()\n"
        "  location: variable opt of type Option\n"
    )
    errs = parse_compile_errors(text)
    _assert_eq(len(errs), 1, "Cli-30 count")
    _assert_eq(errs[0].symbol_name, "getOptionGroup", "Cli-30 symbol")
    _assert_eq(errs[0].class_fqcn, "Option", "Cli-30 fqcn")
    _assert_eq(errs[0].kind, "method", "Cli-30 kind")


def test_closure171_method_with_args():
    text = (
        "Scope.java:541: error: cannot find symbol\n"
        "      return Var.createDefault(name);\n"
        "                ^\n"
        "  symbol:   method createDefault(String)\n"
        "  location: class Var\n"
        "Note: Recompile with -Xlint:deprecation for details.\n"
    )
    errs = parse_compile_errors(text)
    _assert_eq(len(errs), 1, "Closure-171 count")
    _assert_eq(errs[0].symbol_name, "createDefault", "Closure-171 symbol")
    _assert_eq(errs[0].class_fqcn, "Var", "Closure-171 fqcn")


def test_multiple_errors():
    text = (
        "Foo.java:1: error: cannot find symbol\n"
        "    x.bar();\n"
        "     ^\n"
        "  symbol:   method bar()\n"
        "  location: variable x of type Foo\n"
        "Foo.java:2: error: cannot find symbol\n"
        "    y.baz(1,2);\n"
        "     ^\n"
        "  symbol:   method baz(int,int)\n"
        "  location: variable y of type Bar\n"
    )
    errs = parse_compile_errors(text)
    _assert_eq(len(errs), 2, "multi count")
    _assert_eq(errs[0].symbol_name, "bar", "multi-0 symbol")
    _assert_eq(errs[1].symbol_name, "baz", "multi-1 symbol")
    _assert_eq(errs[1].class_fqcn, "Bar", "multi-1 fqcn")


def test_fqcn_dotted():
    text = (
        "X.java:1: error: cannot find symbol\n"
        "    a.unknownMethod();\n"
        "      ^\n"
        "  symbol:   method unknownMethod()\n"
        "  location: variable a of type org.apache.commons.cli.Option\n"
    )
    errs = parse_compile_errors(text)
    _assert_eq(len(errs), 1, "fqcn count")
    _assert_eq(
        errs[0].class_fqcn, "org.apache.commons.cli.Option", "fqcn dotted"
    )


def test_constructor_mismatch():
    text = (
        "X.java:10: error: constructor Var in class Var cannot be applied "
        "to given types;\n  required: String,Node\n  found:    String\n"
    )
    errs = parse_compile_errors(text)
    _assert_eq(len(errs), 1, "ctor count")
    _assert_eq(errs[0].kind, "constructor", "ctor kind")
    _assert_eq(errs[0].symbol_name, "Var", "ctor symbol")


def test_no_errors_returns_empty():
    _assert_eq(parse_compile_errors(""), [], "empty")
    _assert_eq(
        parse_compile_errors("some unrelated output"), [], "unrelated"
    )


def test_does_not_confuse_across_errors():
    """Ensure a non-greedy regex does not match symbol of block A with location of block B."""
    text = (
        "A.java:1: error: cannot find symbol\n"
        "  symbol:   method alpha()\n"
        "  location: variable a of type A\n"
        "A.java:2: error: cannot find symbol\n"
        "  symbol:   method beta()\n"
        "  location: variable b of type B\n"
    )
    errs = parse_compile_errors(text)
    _assert_eq([(e.symbol_name, e.class_fqcn) for e in errs],
               [("alpha", "A"), ("beta", "B")], "cross-block")


if __name__ == "__main__":
    tests = [v for k, v in sorted(globals().items()) if k.startswith("test_")]
    failed = 0
    for t in tests:
        try:
            t()
            print(f"  PASS  {t.__name__}")
        except AssertionError as e:
            failed += 1
            print(f"  FAIL  {t.__name__}\n        {e}")
    print(f"\n{len(tests) - failed}/{len(tests)} passed")
    sys.exit(1 if failed else 0)
