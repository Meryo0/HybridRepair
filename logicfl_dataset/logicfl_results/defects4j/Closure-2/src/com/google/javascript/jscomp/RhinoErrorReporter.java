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
import com.google.javascript.jscomp.CheckLevel;
import com.google.javascript.rhino.ErrorReporter;
import com.google.javascript.rhino.ScriptRuntime;

import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.util.Set;

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

  // A map of Rhino messages to their DiagnosticType.
  private final Map<Pattern, DiagnosticType> typeMap;

  final AbstractCompiler compiler;

  /**
   * For each message such as "Not a good use of {0}", replace the place
   * holder {0} with a wild card that matches all possible strings.
   * Also put the any non-place-holder in quotes for regex matching later.
   */
  private Pattern replacePlaceHolders(String s) {
    int PROBE_START_LINE_71 = 71;
	String p_s_2235_line_71 = s;
	String rhino_error_reporter_1_expr8_line_71 = Pattern.quote(p_s_2235_line_71);
	int PROBE_END_LINE_71 = 71;
	s = rhino_error_reporter_1_expr8_line_71;
    int PROBE_START_LINE_72 = 72;
	String p_s_2235_line_72 = s;
	String rhino_error_reporter_1_expr10_line_72 = p_s_2235_line_72.replaceAll("\\{\\d+\\}", "\\\\E.*\\\\Q");
	java.util.regex.Pattern rhino_error_reporter_1_expr9_line_72 = Pattern
			.compile(rhino_error_reporter_1_expr10_line_72);
	int PROBE_END_LINE_72 = 72;
	return rhino_error_reporter_1_expr9_line_72;
  }

  private RhinoErrorReporter(AbstractCompiler compiler) {
    int PROBE_START_LINE_76 = 76;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_2236_line_76 = compiler;
	int PROBE_END_LINE_76 = 76;
	this.compiler = p_compiler_2236_line_76;
    int PROBE_START_LINE_77 = 100;
	ImmutableMap<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType> rhino_error_reporter_1_expr15_line_77 = ImmutableMap
			.of(replacePlaceHolders(
					com.google.javascript.rhino.head.ScriptRuntime.getMessage0("msg.extra.trailing.comma")),
					TRAILING_COMMA,
					replacePlaceHolders(com.google.javascript.rhino.head.ScriptRuntime.getMessage0("msg.dup.parms")),
					DUPLICATE_PARAM, replacePlaceHolders(ScriptRuntime.getMessage0("msg.bad.jsdoc.tag")),
					BAD_JSDOC_ANNOTATION, Pattern.compile("^Type annotations are not allowed here.*"),
					MISPLACED_TYPE_ANNOTATION, Pattern.compile("^Bad type annotation.*"), TYPE_PARSE_ERROR);
	int PROBE_END_LINE_77 = 100;
	typeMap = rhino_error_reporter_1_expr15_line_77;
  }

  public static com.google.javascript.rhino.head.ErrorReporter
      forNewRhino(AbstractCompiler compiler) {
    int PROBE_START_LINE_105 = 105;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_2239_line_105 = compiler;
		int PROBE_END_LINE_105 = 105;
	return new NewRhinoErrorReporter(p_compiler_2239_line_105);
  }

  public static ErrorReporter forOldRhino(AbstractCompiler compiler) {
    int PROBE_START_LINE_109 = 109;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_2240_line_109 = compiler;
	int PROBE_END_LINE_109 = 109;
	return new OldRhinoErrorReporter(p_compiler_2240_line_109);
  }

  void warningAtLine(String message, String sourceName, int line,
      int lineOffset) {
    int PROBE_START_LINE_114 = 115;
		com.google.javascript.jscomp.AbstractCompiler f_compiler_2237_line_114 = compiler;
		int PROBE_END_LINE_114 = 115;
	f_compiler_2237_line_114.report(
        makeError(message, sourceName, line, lineOffset, CheckLevel.WARNING));
  }

  void errorAtLine(String message, String sourceName, int line,
      int lineOffset) {
    compiler.report(
        makeError(message, sourceName, line, lineOffset, CheckLevel.ERROR));
  }

  private JSError makeError(String message, String sourceName, int line,
      int lineOffset, CheckLevel defaultLevel) {

    int PROBE_START_LINE_129 = 134;
		Map<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType> f_type_map_2238_line_129 = typeMap;
		Set<java.util.Map.Entry<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType>> rhino_error_reporter_1_expr25_line_129 = f_type_map_2238_line_129
				.entrySet();
		int PROBE_END_LINE_129 = 134;
	// Try to see if the message is one of the rhino errors we want to
    // expose as DiagnosticType by matching it with the regex key.
    for (Entry<Pattern, DiagnosticType> entry : rhino_error_reporter_1_expr25_line_129) {
      int PROBE_START_LINE_130 = 133;
		java.util.Map.Entry<java.util.regex.Pattern, com.google.javascript.jscomp.DiagnosticType> v_entry_2254_line_130 = entry;
		java.util.regex.Pattern rhino_error_reporter_1_expr28_line_130 = v_entry_2254_line_130.getKey();
		String p_message_2249_line_130 = message;
		java.util.regex.Matcher rhino_error_reporter_1_expr27_line_130 = rhino_error_reporter_1_expr28_line_130
				.matcher(p_message_2249_line_130);
		boolean rhino_error_reporter_1_expr26_line_130 = rhino_error_reporter_1_expr27_line_130.matches();
		int PROBE_END_LINE_130 = 133;
	if (rhino_error_reporter_1_expr26_line_130) {
        int PROBE_START_LINE_131 = 132;
		com.google.javascript.jscomp.JSError rhino_error_reporter_1_expr29_line_131 = JSError.make(sourceName, line,
				lineOffset, entry.getValue(), message);
		int PROBE_END_LINE_131 = 132;
		return rhino_error_reporter_1_expr29_line_131;
      }
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
      int PROBE_START_LINE_156 = 156;
			String p_message_2260_line_156 = message;
			String p_source_name_2261_line_156 = sourceName;
			int p_line_2262_line_156 = line;
			int p_line_offset_2263_line_156 = lineOffset;
			int PROBE_END_LINE_156 = 156;
	super.warningAtLine(p_message_2260_line_156, p_source_name_2261_line_156, p_line_2262_line_156, p_line_offset_2263_line_156);
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
