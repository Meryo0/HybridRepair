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

package com.google.javascript.jscomp.parsing;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.javascript.jscomp.parsing.Config.LanguageMode;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.head.CompilerEnvirons;
import com.google.javascript.rhino.head.Context;
import com.google.javascript.rhino.head.ErrorReporter;
import com.google.javascript.rhino.head.EvaluatorException;
import com.google.javascript.rhino.head.Parser;
import com.google.javascript.rhino.head.ast.AstRoot;
import com.google.javascript.rhino.jstype.StaticSourceFile;

import java.io.IOException;
import java.util.HashSet;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.logging.Logger;

public class ParserRunner {

  private static final String configResource =
      "com.google.javascript.jscomp.parsing.ParserConfig";

  private static Set<String> annotationNames = null;

  private static Set<String> suppressionNames = null;
  private static Set<String> reservedVars = null;

  // Should never need to instantiate class of static methods.
  private ParserRunner() {}

  @Deprecated
  public static Config createConfig(boolean isIdeMode) {
    return createConfig(isIdeMode, LanguageMode.ECMASCRIPT3, false);
  }

  public static Config createConfig(boolean isIdeMode,
                                    LanguageMode languageMode,
                                    boolean acceptConstKeyword) {
    return createConfig(isIdeMode, languageMode, acceptConstKeyword, null);
  }

  public static Config createConfig(boolean isIdeMode,
                                    LanguageMode languageMode,
                                    boolean acceptConstKeyword,
                                    Set<String> extraAnnotationNames) {
    initResourceConfig();
    Set<String> effectiveAnnotationNames = null;
    int PROBE_START_LINE_67 = 72;
	Set<String> p_extra_annotation_names_3914_line_67 = extraAnnotationNames;
	boolean parser_runner_1_expr2_line_67 = p_extra_annotation_names_3914_line_67 == null;
	int PROBE_END_LINE_67 = 72;
	if (parser_runner_1_expr2_line_67) {
      int PROBE_START_LINE_68 = 68;
		Set<String> f_annotation_names_3904_line_68 = annotationNames;
		int PROBE_END_LINE_68 = 68;
	effectiveAnnotationNames = f_annotation_names_3904_line_68;
    } else {
      effectiveAnnotationNames = new HashSet<String>(annotationNames);
      effectiveAnnotationNames.addAll(extraAnnotationNames);
    }
    int PROBE_START_LINE_73 = 74;
	Set<String> v_effective_annotation_names_3915_line_73 = effectiveAnnotationNames;
	Set<String> f_suppression_names_3905_line_73 = suppressionNames;
	int PROBE_END_LINE_73 = 74;
	return new Config(v_effective_annotation_names_3915_line_73, f_suppression_names_3905_line_73,
        isIdeMode, languageMode, acceptConstKeyword);
  }

  public static Set<String> getReservedVars() {
    initResourceConfig();
    return reservedVars;
  }

  private static synchronized void initResourceConfig() {
    int PROBE_START_LINE_83 = 85;
	Set<String> f_annotation_names_3904_line_83 = annotationNames;
	boolean parser_runner_1_expr5_line_83 = f_annotation_names_3904_line_83 != null;
	int PROBE_END_LINE_83 = 85;
	if (parser_runner_1_expr5_line_83) {
      return;
    }

    int PROBE_START_LINE_87 = 87;
	String f_config_resource_3917_line_87 = configResource;
	ResourceBundle parser_runner_1_expr6_line_87 = ResourceBundle.getBundle(f_config_resource_3917_line_87);
	int PROBE_END_LINE_87 = 87;
	ResourceBundle config = parser_runner_1_expr6_line_87;
    int PROBE_START_LINE_88 = 88;
	java.util.ResourceBundle v_config_3916_line_88 = config;
	String parser_runner_1_expr9_line_88 = v_config_3916_line_88.getString("jsdoc.annotations");
	Set<String> parser_runner_1_expr8_line_88 = extractList(parser_runner_1_expr9_line_88);
	int PROBE_END_LINE_88 = 88;
	annotationNames = parser_runner_1_expr8_line_88;
    int PROBE_START_LINE_89 = 89;
	java.util.ResourceBundle v_config_3916_line_89 = config;
	String parser_runner_1_expr12_line_89 = v_config_3916_line_89.getString("jsdoc.suppressions");
	Set<String> parser_runner_1_expr11_line_89 = extractList(parser_runner_1_expr12_line_89);
	int PROBE_END_LINE_89 = 89;
	suppressionNames = parser_runner_1_expr11_line_89;
    int PROBE_START_LINE_90 = 90;
	java.util.ResourceBundle v_config_3916_line_90 = config;
	String parser_runner_1_expr15_line_90 = v_config_3916_line_90.getString("compiler.reserved.vars");
	Set<String> parser_runner_1_expr14_line_90 = extractList(parser_runner_1_expr15_line_90);
	int PROBE_END_LINE_90 = 90;
	reservedVars = parser_runner_1_expr14_line_90;
  }

  private static Set<String> extractList(String configProp) {
    int PROBE_START_LINE_94 = 94;
	String p_config_prop_3918_line_94 = configProp;
	String[] parser_runner_1_expr16_line_94 = p_config_prop_3918_line_94.split(",");
	int PROBE_END_LINE_94 = 94;
	String[] names = parser_runner_1_expr16_line_94;
    int PROBE_START_LINE_95 = 95;
	Set<String> parser_runner_1_expr17_line_95 = Sets.newHashSet();
	int PROBE_END_LINE_95 = 95;
	Set<String> trimmedNames = parser_runner_1_expr17_line_95;
    int PROBE_START_LINE_96 = 98;
	String[] v_names_3919_line_96 = names;
	int PROBE_END_LINE_96 = 98;
	for (String name : v_names_3919_line_96) {
      int PROBE_START_LINE_97 = 97;
		Set<String> v_trimmed_names_3920_line_97 = trimmedNames;
		String v_name_3921_line_97 = name;
		String parser_runner_1_expr19_line_97 = v_name_3921_line_97.trim();
		int PROBE_END_LINE_97 = 97;
	v_trimmed_names_3920_line_97.add(parser_runner_1_expr19_line_97);
    }
    int PROBE_START_LINE_99 = 99;
	Set<String> v_trimmed_names_3920_line_99 = trimmedNames;
	ImmutableSet<String> parser_runner_1_expr20_line_99 = ImmutableSet.copyOf(v_trimmed_names_3920_line_99);
	int PROBE_END_LINE_99 = 99;
	return parser_runner_1_expr20_line_99;
  }

  /**
   * Parses the JavaScript text given by a reader.
   *
   * @param sourceString Source code from the file.
   * @param errorReporter An error.
   * @param logger A logger.
   * @return The AST of the given text.
   * @throws IOException
   */
  public static ParseResult parse(StaticSourceFile sourceFile,
                                  String sourceString,
                                  Config config,
                                  ErrorReporter errorReporter,
                                  Logger logger) throws IOException {
    int PROBE_START_LINE_116 = 116;
									Context parser_runner_1_expr21_line_116 = Context.enter();
									int PROBE_END_LINE_116 = 116;
	Context cx = parser_runner_1_expr21_line_116;
    int PROBE_START_LINE_117 = 117;
	com.google.javascript.rhino.head.Context v_cx_3927_line_117 = cx;
	com.google.javascript.rhino.head.ErrorReporter p_error_reporter_3925_line_117 = errorReporter;
	int PROBE_END_LINE_117 = 117;
	v_cx_3927_line_117.setErrorReporter(p_error_reporter_3925_line_117);
    int PROBE_START_LINE_118 = 118;
	com.google.javascript.rhino.head.Context v_cx_3927_line_118 = cx;
	int q_version_1_5_109_line_118 = Context.VERSION_1_5;
	int PROBE_END_LINE_118 = 118;
	v_cx_3927_line_118.setLanguageVersion(q_version_1_5_109_line_118);
    CompilerEnvirons compilerEnv = new CompilerEnvirons();
    int PROBE_START_LINE_120 = 120;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_3928_line_120 = compilerEnv;
	com.google.javascript.rhino.head.Context v_cx_3927_line_120 = cx;
	int PROBE_END_LINE_120 = 120;
	v_compiler_env_3928_line_120.initFromContext(v_cx_3927_line_120);
    int PROBE_START_LINE_121 = 121;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_3928_line_121 = compilerEnv;
	int PROBE_END_LINE_121 = 121;
	v_compiler_env_3928_line_121.setRecordingComments(true);
    int PROBE_START_LINE_122 = 122;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_3928_line_122 = compilerEnv;
	int PROBE_END_LINE_122 = 122;
	v_compiler_env_3928_line_122.setRecordingLocalJsDocComments(true);

    int PROBE_START_LINE_125 = 126;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_3928_line_125 = compilerEnv;
	int PROBE_END_LINE_125 = 126;
	// ES5 specifically allows trailing commas
    v_compiler_env_3928_line_125.setWarnTrailingComma(
        config.languageMode == LanguageMode.ECMASCRIPT3);

    // Do our own identifier check for ECMASCRIPT 5
    boolean acceptEs5 =
        config.isIdeMode || config.languageMode != LanguageMode.ECMASCRIPT3;
    int PROBE_START_LINE_131 = 131;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_3928_line_131 = compilerEnv;
	boolean v_accept_es5_3929_line_131 = acceptEs5;
	int PROBE_END_LINE_131 = 131;
	v_compiler_env_3928_line_131.setReservedKeywordAsIdentifier(v_accept_es5_3929_line_131);

    int PROBE_START_LINE_133 = 133;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_3928_line_133 = compilerEnv;
	int PROBE_END_LINE_133 = 133;
	v_compiler_env_3928_line_133.setAllowMemberExprAsFunctionName(false);
    int PROBE_START_LINE_134 = 134;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_3928_line_134 = compilerEnv;
	com.google.javascript.jscomp.parsing.Config p_config_3924_line_134 = config;
	boolean q_is_ide_mode_110_line_134 = p_config_3924_line_134.isIdeMode;
	int PROBE_END_LINE_134 = 134;
	v_compiler_env_3928_line_134.setIdeMode(q_is_ide_mode_110_line_134);
    int PROBE_START_LINE_135 = 135;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_3928_line_135 = compilerEnv;
	com.google.javascript.jscomp.parsing.Config p_config_3924_line_135 = config;
	boolean q_is_ide_mode_111_line_135 = p_config_3924_line_135.isIdeMode;
	int PROBE_END_LINE_135 = 135;
	v_compiler_env_3928_line_135.setRecoverFromErrors(q_is_ide_mode_111_line_135);

    int PROBE_START_LINE_137 = 137;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_3928_line_137 = compilerEnv;
	com.google.javascript.rhino.head.ErrorReporter p_error_reporter_3925_line_137 = errorReporter;
	int PROBE_END_LINE_137 = 137;
	Parser p = new Parser(v_compiler_env_3928_line_137, p_error_reporter_3925_line_137);
    AstRoot astRoot = null;
    try {
      int PROBE_START_LINE_140 = 140;
		com.google.javascript.rhino.head.Parser v_p_3930_line_140 = p;
		String p_source_string_3923_line_140 = sourceString;
		com.google.javascript.rhino.jstype.StaticSourceFile p_source_file_3922_line_140 = sourceFile;
		String parser_runner_1_expr38_line_140 = p_source_file_3922_line_140.getName();
		com.google.javascript.rhino.head.ast.AstRoot parser_runner_1_expr37_line_140 = v_p_3930_line_140
				.parse(p_source_string_3923_line_140, parser_runner_1_expr38_line_140, 1);
		int PROBE_END_LINE_140 = 140;
	astRoot = parser_runner_1_expr37_line_140;
    } catch (EvaluatorException e) {
      logger.info(
          "Error parsing " + sourceFile.getName() + ": " + e.getMessage());
    } finally {
      Context.exit();
    }
    Node root = null;
    int PROBE_START_LINE_148 = 152;
	com.google.javascript.rhino.head.ast.AstRoot v_ast_root_3931_line_148 = astRoot;
	boolean parser_runner_1_expr40_line_148 = v_ast_root_3931_line_148 != null;
	int PROBE_END_LINE_148 = 152;
	if (parser_runner_1_expr40_line_148) {
      int PROBE_START_LINE_149 = 150;
		com.google.javascript.rhino.Node parser_runner_1_expr42_line_149 = IRFactory.transformTree(astRoot, sourceFile,
				sourceString, config, errorReporter);
		int PROBE_END_LINE_149 = 150;
	root = parser_runner_1_expr42_line_149;
      int PROBE_START_LINE_151 = 151;
	com.google.javascript.rhino.Node v_root_3932_line_151 = root;
	int PROBE_END_LINE_151 = 151;
	v_root_3932_line_151.setIsSyntheticBlock(true);
    }
    int PROBE_START_LINE_153 = 153;
	com.google.javascript.rhino.Node v_root_3932_line_153 = root;
	com.google.javascript.rhino.head.ast.AstRoot v_ast_root_3931_line_153 = astRoot;
	int PROBE_END_LINE_153 = 153;
	return new ParseResult(v_root_3932_line_153, v_ast_root_3931_line_153);
  }

  /**
   * Holds results of parsing. Includes both ast formats.
   */
  public static class ParseResult {
    public final Node ast;
    public final AstRoot oldAst;

    public ParseResult(Node ast, AstRoot oldAst) {
      int PROBE_START_LINE_164 = 164;
		com.google.javascript.rhino.Node p_ast_3933_line_164 = ast;
		int PROBE_END_LINE_164 = 164;
	this.ast = p_ast_3933_line_164;
      int PROBE_START_LINE_165 = 165;
	com.google.javascript.rhino.head.ast.AstRoot p_old_ast_3934_line_165 = oldAst;
	int PROBE_END_LINE_165 = 165;
	this.oldAst = p_old_ast_3934_line_165;
    }
  }
}
