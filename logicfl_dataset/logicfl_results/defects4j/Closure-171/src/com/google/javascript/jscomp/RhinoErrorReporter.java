/*
 * Copyright 2009 The Closure Compiler Authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.javascript.jscomp;

import com.google.common.collect.ImmutableMap;
import com.google.javascript.rhino.ErrorReporter;
import com.google.javascript.rhino.SimpleErrorReporter;

import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Pattern;
import com.google.common.collect.ImmutableMap.Builder;

/**
 * An error reporter for serializing Rhino errors into our error format.
 * @author nicksantos@google.com (Nick Santos)
 */
class RhinoErrorReporter {

  static final DiagnosticType PARSE_ERROR =
      DiagnosticType.error("JSC_PARSE_ERROR", "Parse error. {0}");

  static final DiagnosticType TYPE_PARSE_ERROR =
      DiagnosticType.warning("JSC_TYPE_PARSE_ERROR", "{0}");

  // Special-cased errors, so that they can be configured via the
  // warnings API.
  static final DiagnosticType TRAILING_COMMA =
      DiagnosticType.error("JSC_TRAILING_COMMA",
          "Parse error. IE8 (and below) will parse trailing commas in " +
          "array and object literals incorrectly. " +
          "If you are targeting newer versions of JS, " +
          "set the appropriate language_in option.");

  static final DiagnosticType DUPLICATE_PARAM =
      DiagnosticType.error("JSC_DUPLICATE_PARAM", "Parse error. {0}");

  static final DiagnosticType BAD_JSDOC_ANNOTATION =
      DiagnosticType.warning("JSC_BAD_JSDOC_ANNOTATION", "Parse error. {0}");

  static final DiagnosticType MISPLACED_TYPE_ANNOTATION =
      DiagnosticType.warning("JSC_MISPLACED_TYPE_ANNOTATION",
          "Type annotations are not allowed here. " +
          "Are you missing parentheses?");

  static final DiagnosticType PARSE_TREE_TOO_DEEP =
      DiagnosticType.error("PARSE_TREE_TOO_DEEP",
          "Parse tree too deep.");

  // A map of Rhino messages to their DiagnosticType.
  private final Map<Pattern, DiagnosticType> typeMap;

  final AbstractCompiler compiler;

  /**
   * For each message such as "Not a good use of {0}", replace the place
   * holder {0} with a wild card that matches all possible strings.
   * Also put the any non-place-holder in quotes for regex matching later.
   */
  private Pattern replacePlaceHolders(String s) {
    int PROBE_START_LINE_74 = 74;
	String p_s_2732_line_74 = s;
	String rhino_error_reporter_1_expr9_line_74 = Pattern.quote(p_s_2732_line_74);
	int PROBE_END_LINE_74 = 74;
	s = rhino_error_reporter_1_expr9_line_74;
    int PROBE_START_LINE_75 = 75;
	String p_s_2732_line_75 = s;
	String rhino_error_reporter_1_expr11_line_75 = p_s_2732_line_75.replaceAll("\\{\\d+\\}", "\\\\E.*\\\\Q");
	java.util.regex.Pattern rhino_error_reporter_1_expr10_line_75 = Pattern
			.compile(rhino_error_reporter_1_expr11_line_75);
	int PROBE_END_LINE_75 = 75;
	return rhino_error_reporter_1_expr10_line_75;
  }

  private RhinoErrorReporter(AbstractCompiler compiler) {
    int PROBE_START_LINE_79 = 79;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_2733_line_79 = compiler;
	int PROBE_END_LINE_79 = 79;
	this.compiler = p_compiler_2733_line_79;
    int PROBE_START_LINE_80 = 110;
	com.google.common.collect.ImmutableMap.Builder<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType> rhino_error_reporter_1_expr29_line_80 = ImmutableMap
			.<Pattern, DiagnosticType>builder();
	com.google.common.collect.ImmutableMap.Builder<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType> rhino_error_reporter_1_expr27_line_80 = rhino_error_reporter_1_expr29_line_80
			.put(replacePlaceHolders(
					com.google.javascript.rhino.head.ScriptRuntime.getMessage0("msg.extra.trailing.comma")),
					TRAILING_COMMA);
	com.google.common.collect.ImmutableMap.Builder<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType> rhino_error_reporter_1_expr25_line_80 = rhino_error_reporter_1_expr27_line_80
			.put(replacePlaceHolders(com.google.javascript.rhino.head.ScriptRuntime.getMessage0("msg.dup.parms")),
					DUPLICATE_PARAM);
	com.google.common.collect.ImmutableMap.Builder<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType> rhino_error_reporter_1_expr23_line_80 = rhino_error_reporter_1_expr25_line_80
			.put(replacePlaceHolders(SimpleErrorReporter.getMessage0("msg.bad.jsdoc.tag")), BAD_JSDOC_ANNOTATION);
	com.google.common.collect.ImmutableMap.Builder<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType> rhino_error_reporter_1_expr21_line_80 = rhino_error_reporter_1_expr23_line_80
			.put(Pattern.compile("^Type annotations are not allowed here.*"), MISPLACED_TYPE_ANNOTATION);
	com.google.common.collect.ImmutableMap.Builder<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType> rhino_error_reporter_1_expr19_line_80 = rhino_error_reporter_1_expr21_line_80
			.put(Pattern.compile("^Bad type annotation.*"), TYPE_PARSE_ERROR);
	com.google.common.collect.ImmutableMap.Builder<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType> rhino_error_reporter_1_expr17_line_80 = rhino_error_reporter_1_expr19_line_80
			.put(replacePlaceHolders(
					com.google.javascript.rhino.head.ScriptRuntime.getMessage0("msg.too.deep.parser.recursion")),
					PARSE_TREE_TOO_DEEP);
	ImmutableMap<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType> rhino_error_reporter_1_expr16_line_80 = rhino_error_reporter_1_expr17_line_80
			.build();
	int PROBE_END_LINE_80 = 110;
	typeMap = rhino_error_reporter_1_expr16_line_80;
  }

  public static com.google.javascript.rhino.head.ErrorReporter
      forNewRhino(AbstractCompiler compiler) {
    int PROBE_START_LINE_115 = 115;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_2736_line_115 = compiler;
		int PROBE_END_LINE_115 = 115;
	return new NewRhinoErrorReporter(p_compiler_2736_line_115);
  }

  public static ErrorReporter forOldRhino(AbstractCompiler compiler) {
    int PROBE_START_LINE_119 = 119;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_2737_line_119 = compiler;
	int PROBE_END_LINE_119 = 119;
	return new OldRhinoErrorReporter(p_compiler_2737_line_119);
  }

  void warningAtLine(String message, String sourceName, int line,
      int lineOffset) {
    compiler.report(
        makeError(message, sourceName, line, lineOffset, CheckLevel.WARNING));
  }

  void errorAtLine(String message, String sourceName, int line,
      int lineOffset) {
    compiler.report(
        makeError(message, sourceName, line, lineOffset, CheckLevel.ERROR));
  }

  protected DiagnosticType mapError(String message) {
    for (Entry<Pattern, DiagnosticType> entry : typeMap.entrySet()) {
      if (entry.getKey().matcher(message).matches()) {
        return entry.getValue();
      }
    }
    return null;
  }

  private JSError makeError(String message, String sourceName, int line,
      int lineOffset, CheckLevel defaultLevel) {

    // Try to see if the message is one of the rhino errors we want to
    // expose as DiagnosticType by matching it with the regex key.
    DiagnosticType type = mapError(message);
    if (type != null) {
      return JSError.make(
          sourceName, line, lineOffset, type, message);
    }

    return JSError.make(sourceName, line, lineOffset, defaultLevel,
        PARSE_ERROR, message);
  }

  private static class OldRhinoErrorReporter extends RhinoErrorReporter
      implements ErrorReporter {

    private OldRhinoErrorReporter(AbstractCompiler compiler) {
      super(compiler);
    }

    @Override
    public void error(String message, String sourceName, int line,
        int lineOffset) {
      super.errorAtLine(message, sourceName, line, lineOffset);
    }

    @Override
    public void warning(String message, String sourceName, int line,
        int lineOffset) {
      super.warningAtLine(message, sourceName, line, lineOffset);
    }
  }

  private static class NewRhinoErrorReporter extends RhinoErrorReporter
      implements com.google.javascript.rhino.head.ast.IdeErrorReporter {

    private NewRhinoErrorReporter(AbstractCompiler compiler) {
      super(compiler);
    }

    @Override
    public com.google.javascript.rhino.head.EvaluatorException
        runtimeError(String message, String sourceName, int line,
            String lineSource, int lineOffset) {
      DiagnosticType type = mapError(message);
      if (type != null) {
        super.errorAtLine(message, sourceName, line, lineOffset);
      }
      return new com.google.javascript.rhino.head.EvaluatorException(
          message, sourceName, line, lineSource, lineOffset);
    }

    @Override
    public void error(String message, String sourceName, int line,
        String sourceLine, int lineOffset) {
      super.errorAtLine(message, sourceName, line, lineOffset);
    }

    @Override
    public void error(String message, String sourceName,
        int offset, int length) {
      int line = 1;
      int column = 0;
      SourceFile file = this.compiler.getSourceFileByName(sourceName);
      if (file != null) {
        line = file.getLineOfOffset(offset);
        column = file.getColumnOfOffset(offset);
      }
      super.errorAtLine(message, sourceName, line, column);
    }

    @Override
    public void warning(String message, String sourceName, int line,
        String sourceLine, int lineOffset) {
      super.warningAtLine(message, sourceName, line, lineOffset);
    }

    @Override
    public void warning(String message, String sourceName,
        int offset, int length) {
      int line = 1;
      int column = 0;
      SourceFile file = this.compiler.getSourceFileByName(sourceName);
      if (file != null) {
        line = file.getLineOfOffset(offset);
        column = file.getColumnOfOffset(offset);
      }
      super.errorAtLine(message, sourceName, line, column);
    }
  }
}
