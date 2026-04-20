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

/** parser runner */
public class ParserRunner {

  private static final String CONFIG_RESOURCE =
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
    int PROBE_START_LINE_68 = 73;
	Set<String> p_extra_annotation_names_4541_line_68 = extraAnnotationNames;
	boolean parser_runner_1_expr2_line_68 = p_extra_annotation_names_4541_line_68 == null;
	int PROBE_END_LINE_68 = 73;
	if (parser_runner_1_expr2_line_68) {
      int PROBE_START_LINE_69 = 69;
		Set<String> f_annotation_names_4531_line_69 = annotationNames;
		int PROBE_END_LINE_69 = 69;
	effectiveAnnotationNames = f_annotation_names_4531_line_69;
    } else {
      effectiveAnnotationNames = new HashSet<String>(annotationNames);
      effectiveAnnotationNames.addAll(extraAnnotationNames);
    }
    int PROBE_START_LINE_74 = 75;
	Set<String> v_effective_annotation_names_4542_line_74 = effectiveAnnotationNames;
	Set<String> f_suppression_names_4532_line_74 = suppressionNames;
	int PROBE_END_LINE_74 = 75;
	return new Config(v_effective_annotation_names_4542_line_74, f_suppression_names_4532_line_74,
        isIdeMode, languageMode, acceptConstKeyword);
  }

  public static Set<String> getReservedVars() {
    initResourceConfig();
    return reservedVars;
  }

  private static synchronized void initResourceConfig() {
    int PROBE_START_LINE_84 = 86;
	Set<String> f_annotation_names_4531_line_84 = annotationNames;
	boolean parser_runner_1_expr5_line_84 = f_annotation_names_4531_line_84 != null;
	int PROBE_END_LINE_84 = 86;
	if (parser_runner_1_expr5_line_84) {
      return;
    }

    int PROBE_START_LINE_88 = 88;
	String f_config_resource_4544_line_88 = CONFIG_RESOURCE;
	ResourceBundle parser_runner_1_expr6_line_88 = ResourceBundle.getBundle(f_config_resource_4544_line_88);
	int PROBE_END_LINE_88 = 88;
	ResourceBundle config = parser_runner_1_expr6_line_88;
    int PROBE_START_LINE_89 = 89;
	java.util.ResourceBundle v_config_4543_line_89 = config;
	String parser_runner_1_expr9_line_89 = v_config_4543_line_89.getString("jsdoc.annotations");
	Set<String> parser_runner_1_expr8_line_89 = extractList(parser_runner_1_expr9_line_89);
	int PROBE_END_LINE_89 = 89;
	annotationNames = parser_runner_1_expr8_line_89;
    int PROBE_START_LINE_90 = 90;
	java.util.ResourceBundle v_config_4543_line_90 = config;
	String parser_runner_1_expr12_line_90 = v_config_4543_line_90.getString("jsdoc.suppressions");
	Set<String> parser_runner_1_expr11_line_90 = extractList(parser_runner_1_expr12_line_90);
	int PROBE_END_LINE_90 = 90;
	suppressionNames = parser_runner_1_expr11_line_90;
    int PROBE_START_LINE_91 = 91;
	java.util.ResourceBundle v_config_4543_line_91 = config;
	String parser_runner_1_expr15_line_91 = v_config_4543_line_91.getString("compiler.reserved.vars");
	Set<String> parser_runner_1_expr14_line_91 = extractList(parser_runner_1_expr15_line_91);
	int PROBE_END_LINE_91 = 91;
	reservedVars = parser_runner_1_expr14_line_91;
  }

  private static Set<String> extractList(String configProp) {
    int PROBE_START_LINE_95 = 95;
	String p_config_prop_4545_line_95 = configProp;
	String[] parser_runner_1_expr16_line_95 = p_config_prop_4545_line_95.split(",");
	int PROBE_END_LINE_95 = 95;
	String[] names = parser_runner_1_expr16_line_95;
    int PROBE_START_LINE_96 = 96;
	Set<String> parser_runner_1_expr17_line_96 = Sets.newHashSet();
	int PROBE_END_LINE_96 = 96;
	Set<String> trimmedNames = parser_runner_1_expr17_line_96;
    int PROBE_START_LINE_97 = 99;
	String[] v_names_4546_line_97 = names;
	int PROBE_END_LINE_97 = 99;
	for (String name : v_names_4546_line_97) {
      int PROBE_START_LINE_98 = 98;
		Set<String> v_trimmed_names_4547_line_98 = trimmedNames;
		String v_name_4548_line_98 = name;
		String parser_runner_1_expr19_line_98 = v_name_4548_line_98.trim();
		int PROBE_END_LINE_98 = 98;
	v_trimmed_names_4547_line_98.add(parser_runner_1_expr19_line_98);
    }
    int PROBE_START_LINE_100 = 100;
	Set<String> v_trimmed_names_4547_line_100 = trimmedNames;
	ImmutableSet<String> parser_runner_1_expr20_line_100 = ImmutableSet.copyOf(v_trimmed_names_4547_line_100);
	int PROBE_END_LINE_100 = 100;
	return parser_runner_1_expr20_line_100;
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
    int PROBE_START_LINE_117 = 117;
									Context parser_runner_1_expr21_line_117 = Context.enter();
									int PROBE_END_LINE_117 = 117;
	Context cx = parser_runner_1_expr21_line_117;
    int PROBE_START_LINE_118 = 118;
	com.google.javascript.rhino.head.Context v_cx_4554_line_118 = cx;
	com.google.javascript.rhino.head.ErrorReporter p_error_reporter_4552_line_118 = errorReporter;
	int PROBE_END_LINE_118 = 118;
	v_cx_4554_line_118.setErrorReporter(p_error_reporter_4552_line_118);
    int PROBE_START_LINE_119 = 119;
	com.google.javascript.rhino.head.Context v_cx_4554_line_119 = cx;
	int q_version_1_5_136_line_119 = Context.VERSION_1_5;
	int PROBE_END_LINE_119 = 119;
	v_cx_4554_line_119.setLanguageVersion(q_version_1_5_136_line_119);
    CompilerEnvirons compilerEnv = new CompilerEnvirons();
    int PROBE_START_LINE_121 = 121;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_4555_line_121 = compilerEnv;
	com.google.javascript.rhino.head.Context v_cx_4554_line_121 = cx;
	int PROBE_END_LINE_121 = 121;
	v_compiler_env_4555_line_121.initFromContext(v_cx_4554_line_121);
    int PROBE_START_LINE_122 = 122;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_4555_line_122 = compilerEnv;
	int PROBE_END_LINE_122 = 122;
	v_compiler_env_4555_line_122.setRecordingComments(true);
    int PROBE_START_LINE_123 = 123;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_4555_line_123 = compilerEnv;
	int PROBE_END_LINE_123 = 123;
	v_compiler_env_4555_line_123.setRecordingLocalJsDocComments(true);

    int PROBE_START_LINE_126 = 127;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_4555_line_126 = compilerEnv;
	int PROBE_END_LINE_126 = 127;
	// ES5 specifically allows trailing commas
    v_compiler_env_4555_line_126.setWarnTrailingComma(
        config.languageMode == LanguageMode.ECMASCRIPT3);

    // Do our own identifier check for ECMASCRIPT 5
    boolean acceptEs5 =
        config.isIdeMode || config.languageMode != LanguageMode.ECMASCRIPT3;
    int PROBE_START_LINE_132 = 132;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_4555_line_132 = compilerEnv;
	boolean v_accept_es5_4556_line_132 = acceptEs5;
	int PROBE_END_LINE_132 = 132;
	v_compiler_env_4555_line_132.setReservedKeywordAsIdentifier(v_accept_es5_4556_line_132);

    int PROBE_START_LINE_134 = 134;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_4555_line_134 = compilerEnv;
	int PROBE_END_LINE_134 = 134;
	v_compiler_env_4555_line_134.setAllowMemberExprAsFunctionName(false);
    int PROBE_START_LINE_135 = 135;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_4555_line_135 = compilerEnv;
	com.google.javascript.jscomp.parsing.Config p_config_4551_line_135 = config;
	boolean q_is_ide_mode_137_line_135 = p_config_4551_line_135.isIdeMode;
	int PROBE_END_LINE_135 = 135;
	v_compiler_env_4555_line_135.setIdeMode(q_is_ide_mode_137_line_135);
    int PROBE_START_LINE_136 = 136;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_4555_line_136 = compilerEnv;
	com.google.javascript.jscomp.parsing.Config p_config_4551_line_136 = config;
	boolean q_is_ide_mode_138_line_136 = p_config_4551_line_136.isIdeMode;
	int PROBE_END_LINE_136 = 136;
	v_compiler_env_4555_line_136.setRecoverFromErrors(q_is_ide_mode_138_line_136);

    int PROBE_START_LINE_138 = 138;
	com.google.javascript.rhino.head.CompilerEnvirons v_compiler_env_4555_line_138 = compilerEnv;
	com.google.javascript.rhino.head.ErrorReporter p_error_reporter_4552_line_138 = errorReporter;
	int PROBE_END_LINE_138 = 138;
	Parser p = new Parser(v_compiler_env_4555_line_138, p_error_reporter_4552_line_138);
    AstRoot astRoot = null;
    try {
      int PROBE_START_LINE_141 = 141;
		com.google.javascript.rhino.head.Parser v_p_4557_line_141 = p;
		String p_source_string_4550_line_141 = sourceString;
		com.google.javascript.rhino.jstype.StaticSourceFile p_source_file_4549_line_141 = sourceFile;
		String parser_runner_1_expr38_line_141 = p_source_file_4549_line_141.getName();
		com.google.javascript.rhino.head.ast.AstRoot parser_runner_1_expr37_line_141 = v_p_4557_line_141
				.parse(p_source_string_4550_line_141, parser_runner_1_expr38_line_141, 1);
		int PROBE_END_LINE_141 = 141;
	astRoot = parser_runner_1_expr37_line_141;
    } catch (EvaluatorException e) {
      logger.info(
          "Error parsing " + sourceFile.getName() + ": " + e.getMessage());
    } finally {
      Context.exit();
    }
    Node root = null;
    int PROBE_START_LINE_149 = 153;
	com.google.javascript.rhino.head.ast.AstRoot v_ast_root_4558_line_149 = astRoot;
	boolean parser_runner_1_expr40_line_149 = v_ast_root_4558_line_149 != null;
	int PROBE_END_LINE_149 = 153;
	if (parser_runner_1_expr40_line_149) {
      int PROBE_START_LINE_150 = 151;
		com.google.javascript.rhino.Node parser_runner_1_expr42_line_150 = IRFactory.transformTree(astRoot, sourceFile,
				sourceString, config, errorReporter);
		int PROBE_END_LINE_150 = 151;
	root = parser_runner_1_expr42_line_150;
      int PROBE_START_LINE_152 = 152;
	com.google.javascript.rhino.Node v_root_4559_line_152 = root;
	int PROBE_END_LINE_152 = 152;
	v_root_4559_line_152.setIsSyntheticBlock(true);
    }
    int PROBE_START_LINE_154 = 154;
	com.google.javascript.rhino.Node v_root_4559_line_154 = root;
	com.google.javascript.rhino.head.ast.AstRoot v_ast_root_4558_line_154 = astRoot;
	int PROBE_END_LINE_154 = 154;
	return new ParseResult(v_root_4559_line_154, v_ast_root_4558_line_154);
  }

  /**
   * Holds results of parsing. Includes both ast formats.
   */
  public static class ParseResult {
    public final Node ast;
    public final AstRoot oldAst;

    public ParseResult(Node ast, AstRoot oldAst) {
      int PROBE_START_LINE_165 = 165;
		com.google.javascript.rhino.Node p_ast_4560_line_165 = ast;
		int PROBE_END_LINE_165 = 165;
	this.ast = p_ast_4560_line_165;
      int PROBE_START_LINE_166 = 166;
	com.google.javascript.rhino.head.ast.AstRoot p_old_ast_4561_line_166 = oldAst;
	int PROBE_END_LINE_166 = 166;
	this.oldAst = p_old_ast_4561_line_166;
    }
  }
}
