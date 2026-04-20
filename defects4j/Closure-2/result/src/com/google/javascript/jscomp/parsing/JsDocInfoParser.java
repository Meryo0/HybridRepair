/*
 * Copyright 2007 The Closure Compiler Authors.
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

import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.javascript.jscomp.parsing.Config.LanguageMode;
import com.google.javascript.rhino.IR;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.JSDocInfo.Visibility;
import com.google.javascript.rhino.JSDocInfoBuilder;
import com.google.javascript.rhino.JSTypeExpression;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.ScriptRuntime;
import com.google.javascript.rhino.Token;
import com.google.javascript.rhino.head.ErrorReporter;
import com.google.javascript.rhino.head.ast.Comment;
import com.google.javascript.rhino.jstype.StaticSourceFile;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import com.google.javascript.rhino.Node.FileLevelJsDocBuilder;

/**
 * A parser for JSDoc comments.
 *
 */
// TODO(nicksantos): Unify all the JSDocInfo stuff into one package, instead of
// spreading it across multiple packages.
public final class JsDocInfoParser {

  private final JsDocTokenStream stream;
  private final JSDocInfoBuilder jsdocBuilder;
  private final StaticSourceFile sourceFile;
  private final Node associatedNode;
  private final ErrorReporter errorReporter;
  private final ErrorReporterParser parser = new ErrorReporterParser();

  // Use a template node for properties set on all nodes to minimize the
  // memory footprint associated with these (similar to IRFactory).
  private final Node templateNode;

  private class ErrorReporterParser {
    void addParserWarning(String messageId, String messageArg, int lineno,
        int charno) {
      errorReporter.warning(ScriptRuntime.getMessage1(messageId, messageArg),
          getSourceName(), lineno, null, charno);
    }

    void addParserWarning(String messageId, int lineno, int charno) {
      errorReporter.warning(ScriptRuntime.getMessage0(messageId),
          getSourceName(), lineno, null, charno);
    }

    void addTypeWarning(String messageId, String messageArg, int lineno,
                    int charno) {
      errorReporter.warning(
          "Bad type annotation. " +
          ScriptRuntime.getMessage1(messageId, messageArg),
          getSourceName(), lineno, null, charno);
    }

    void addTypeWarning(String messageId, int lineno, int charno) {
      errorReporter.warning(
          "Bad type annotation. " +
          ScriptRuntime.getMessage0(messageId),
          getSourceName(), lineno, null, charno);
    }
  }

  // The DocInfo with the fileoverview tag for the whole file.
  private JSDocInfo fileOverviewJSDocInfo = null;
  private State state;

  private final Map<String, Annotation> annotationNames;
  private final Set<String> suppressionNames;
  static private final Set<String> modifiesAnnotationKeywords =
      ImmutableSet.<String>of("this", "arguments");

  private Node.FileLevelJsDocBuilder fileLevelJsDocBuilder;

  /**
   * Sets the JsDocBuilder for the file-level (root) node of this parse. The
   * parser uses the builder to append any preserve annotations it encounters
   * in JsDoc comments.
   *
   * @param fileLevelJsDocBuilder
   */
  void setFileLevelJsDocBuilder(
      Node.FileLevelJsDocBuilder fileLevelJsDocBuilder) {
    int PROBE_START_LINE_109 = 109;
		com.google.javascript.rhino.Node.FileLevelJsDocBuilder p_file_level_js_doc_builder_3738_line_109 = fileLevelJsDocBuilder;
		int PROBE_END_LINE_109 = 109;
	this.fileLevelJsDocBuilder = p_file_level_js_doc_builder_3738_line_109;
  }

  /**
   * Sets the file overview JSDocInfo, in order to warn about multiple uses of
   * the @fileoverview tag in a file.
   */
  void setFileOverviewJSDocInfo(JSDocInfo fileOverviewJSDocInfo) {
    int PROBE_START_LINE_117 = 117;
	com.google.javascript.rhino.JSDocInfo p_file_overview_jsdoc_info_3740_line_117 = fileOverviewJSDocInfo;
	int PROBE_END_LINE_117 = 117;
	this.fileOverviewJSDocInfo = p_file_overview_jsdoc_info_3740_line_117;
  }

  private enum State {
    SEARCHING_ANNOTATION,
    SEARCHING_NEWLINE,
    NEXT_IS_ANNOTATION
  }

  JsDocInfoParser(JsDocTokenStream stream,
                  Comment commentNode,
                  Node associatedNode,
                  Config config,
                  ErrorReporter errorReporter) {
    int PROBE_START_LINE_131 = 131;
					com.google.javascript.jscomp.parsing.JsDocTokenStream p_stream_3744_line_131 = stream;
					int PROBE_END_LINE_131 = 131;
	this.stream = p_stream_3744_line_131;
    int PROBE_START_LINE_132 = 132;
	com.google.javascript.rhino.Node p_associated_node_3746_line_132 = associatedNode;
	int PROBE_END_LINE_132 = 132;
	this.associatedNode = p_associated_node_3746_line_132;

    int PROBE_START_LINE_135 = 136;
	com.google.javascript.rhino.Node p_associated_node_3746_line_135 = associatedNode;
	boolean js_doc_info_parser_1_expr19_line_135 = p_associated_node_3746_line_135 == null;
	com.google.javascript.rhino.jstype.StaticSourceFile js_doc_info_parser_1_expr17_line_135 = js_doc_info_parser_1_expr19_line_135
			? null
			: associatedNode.getStaticSourceFile();
	int PROBE_END_LINE_135 = 136;
	// Sometimes this will be null in tests.
    this.sourceFile = js_doc_info_parser_1_expr17_line_135;

    int PROBE_START_LINE_138 = 138;
	com.google.javascript.jscomp.parsing.Config p_config_3747_line_138 = config;
	boolean q_parse_js_doc_documentation_92_line_138 = p_config_3747_line_138.parseJsDocDocumentation;
	int PROBE_END_LINE_138 = 138;
	this.jsdocBuilder = new JSDocInfoBuilder(q_parse_js_doc_documentation_92_line_138);
    int PROBE_START_LINE_139 = 141;
	com.google.javascript.rhino.head.ast.Comment p_comment_node_3745_line_139 = commentNode;
	boolean js_doc_info_parser_1_expr25_line_139 = p_comment_node_3745_line_139 != null;
	int PROBE_END_LINE_139 = 141;
	if (js_doc_info_parser_1_expr25_line_139) {
      int PROBE_START_LINE_140 = 140;
		com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_3752_line_140 = this.jsdocBuilder;
		com.google.javascript.rhino.head.ast.Comment p_comment_node_3745_line_140 = commentNode;
		String js_doc_info_parser_1_expr27_line_140 = p_comment_node_3745_line_140.getValue();
		int PROBE_END_LINE_140 = 140;
	f_jsdoc_builder_3752_line_140.recordOriginalCommentString(js_doc_info_parser_1_expr27_line_140);
    }
    int PROBE_START_LINE_142 = 142;
	com.google.javascript.jscomp.parsing.Config p_config_3747_line_142 = config;
	Map<String, com.google.javascript.jscomp.parsing.Annotation> q_annotation_names_93_line_142 = p_config_3747_line_142.annotationNames;
	int PROBE_END_LINE_142 = 142;
	this.annotationNames = q_annotation_names_93_line_142;
    int PROBE_START_LINE_143 = 143;
	com.google.javascript.jscomp.parsing.Config p_config_3747_line_143 = config;
	Set<String> q_suppression_names_94_line_143 = p_config_3747_line_143.suppressionNames;
	int PROBE_END_LINE_143 = 143;
	this.suppressionNames = q_suppression_names_94_line_143;

    int PROBE_START_LINE_145 = 145;
	com.google.javascript.rhino.head.ErrorReporter p_error_reporter_3748_line_145 = errorReporter;
	int PROBE_END_LINE_145 = 145;
	this.errorReporter = p_error_reporter_3748_line_145;
    int PROBE_START_LINE_146 = 146;
	com.google.javascript.rhino.Node js_doc_info_parser_1_expr41_line_146 = this.createTemplateNode();
	int PROBE_END_LINE_146 = 146;
	this.templateNode = js_doc_info_parser_1_expr41_line_146;
  }

  private String getSourceName() {
    int PROBE_START_LINE_150 = 150;
	com.google.javascript.rhino.jstype.StaticSourceFile f_source_file_3751_line_150 = sourceFile;
	boolean js_doc_info_parser_1_expr45_line_150 = f_source_file_3751_line_150 == null;
	String js_doc_info_parser_1_expr46_line_150 = null;
	if (!js_doc_info_parser_1_expr45_line_150) {
		com.google.javascript.rhino.jstype.StaticSourceFile f_source_file_3751_line_150_v1 = sourceFile;
		js_doc_info_parser_1_expr46_line_150 = f_source_file_3751_line_150_v1.getName();
	}
	String js_doc_info_parser_1_expr44_line_150 = js_doc_info_parser_1_expr45_line_150
			? null
			: js_doc_info_parser_1_expr46_line_150;
	int PROBE_END_LINE_150 = 150;
	return js_doc_info_parser_1_expr44_line_150;
  }

  /**
   * Parses a string containing a JsDoc type declaration, returning the
   * type if the parsing succeeded or {@code null} if it failed.
   */
  public static Node parseTypeString(String typeString) {
    Config config = new Config(
        Sets.<String>newHashSet(),
        Sets.<String>newHashSet(),
        false,
        LanguageMode.ECMASCRIPT3,
        false);
    JsDocInfoParser parser = new JsDocInfoParser(
        new JsDocTokenStream(typeString),
        null,
        null,
        config,
        NullErrorReporter.forNewRhino());

    return parser.parseTopLevelTypeExpression(parser.next());
  }

  /**
   * Parses a {@link JSDocInfo} object. This parsing method reads all tokens
   * returned by the {@link JsDocTokenStream#getJsDocToken()} method until the
   * {@link JsDocToken#EOC} is returned.
   *
   * @return {@code true} if JSDoc information was correctly parsed,
   *     {@code false} otherwise
   */
  boolean parse() {
    int lineno = 0;
    int charno = 0;

    // JSTypes are represented as Rhino AST nodes, and then resolved later.
    JSTypeExpression type;

    int PROBE_START_LINE_189 = 189;
	com.google.javascript.jscomp.parsing.JsDocInfoParser.State q_searching_annotation_95_line_189 = State.SEARCHING_ANNOTATION;
	int PROBE_END_LINE_189 = 189;
	state = q_searching_annotation_95_line_189;
    skipEOLs();

    int PROBE_START_LINE_192 = 192;
	JsDocToken js_doc_info_parser_1_expr49_line_192 = next();
	int PROBE_END_LINE_192 = 192;
	JsDocToken token = js_doc_info_parser_1_expr49_line_192;

    int PROBE_START_LINE_194 = 194;
	List<ExtendedTypeInfo> js_doc_info_parser_1_expr50_line_194 = Lists.newArrayList();
	int PROBE_END_LINE_194 = 194;
	List<ExtendedTypeInfo> extendedTypes = js_doc_info_parser_1_expr50_line_194;

    int PROBE_START_LINE_197 = 210;
	com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_3752_line_197 = jsdocBuilder;
	boolean js_doc_info_parser_1_expr51_line_197 = f_jsdoc_builder_3752_line_197.shouldParseDocumentation();
	int PROBE_END_LINE_197 = 210;
	// Always record that we have a comment.
    if (js_doc_info_parser_1_expr51_line_197) {
      ExtractionInfo blockInfo = extractBlockComment(token);
      token = blockInfo.token;
      if (!blockInfo.string.isEmpty()) {
        jsdocBuilder.recordBlockDescription(blockInfo.string);
      }
    } else {
      int PROBE_START_LINE_204 = 209;
		com.google.javascript.jscomp.parsing.JsDocToken v_token_3759_line_204 = token;
		com.google.javascript.jscomp.parsing.JsDocToken q_annotation_96_line_204 = JsDocToken.ANNOTATION;
		boolean js_doc_info_parser_1_expr53_line_204 = v_token_3759_line_204 != q_annotation_96_line_204;
		boolean js_doc_info_parser_1_expr52_line_204 = js_doc_info_parser_1_expr53_line_204 && token != JsDocToken.EOC;
		int PROBE_END_LINE_204 = 209;
	if (js_doc_info_parser_1_expr52_line_204) {
        // Mark that there was a description, but don't bother marking
        // what it was.
        jsdocBuilder.recordBlockDescription("");
      }
    }

    // Parse the actual JsDoc.
    retry: for (;;) {
      int PROBE_START_LINE_214 = 986;
		com.google.javascript.jscomp.parsing.JsDocToken v_token_3759_line_214 = token;
		int PROBE_END_LINE_214 = 986;
	switch (v_token_3759_line_214) {
        case ANNOTATION:
	int PROBE_START_LINE_216 = 952;
	com.google.javascript.jscomp.parsing.JsDocInfoParser.State f_state_3758_line_216 = state;
	com.google.javascript.jscomp.parsing.JsDocInfoParser.State q_searching_annotation_97_line_216 = State.SEARCHING_ANNOTATION;
	boolean js_doc_info_parser_1_expr54_line_216 = f_state_3758_line_216 == q_searching_annotation_97_line_216;
	int PROBE_END_LINE_216 = 952;
	if (js_doc_info_parser_1_expr54_line_216) {
            int PROBE_START_LINE_217 = 217;
			com.google.javascript.jscomp.parsing.JsDocInfoParser.State q_searching_newline_97_line_217 = State.SEARCHING_NEWLINE;
			int PROBE_END_LINE_217 = 217;
			state = q_searching_newline_97_line_217;
            int PROBE_START_LINE_218 = 218;
			com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_218 = stream;
			int js_doc_info_parser_1_expr57_line_218 = f_stream_3749_line_218.getLineno();
			int PROBE_END_LINE_218 = 218;
			lineno = js_doc_info_parser_1_expr57_line_218;
            int PROBE_START_LINE_219 = 219;
			com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_219 = stream;
			int js_doc_info_parser_1_expr59_line_219 = f_stream_3749_line_219.getCharno();
			int PROBE_END_LINE_219 = 219;
			charno = js_doc_info_parser_1_expr59_line_219;

            int PROBE_START_LINE_221 = 221;
			com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_221 = stream;
			String js_doc_info_parser_1_expr60_line_221 = f_stream_3749_line_221.getString();
			int PROBE_END_LINE_221 = 221;
			String annotationName = js_doc_info_parser_1_expr60_line_221;
            int PROBE_START_LINE_222 = 222;
			Map<String, com.google.javascript.jscomp.parsing.Annotation> f_annotation_names_3753_line_222 = annotationNames;
			String v_annotation_name_3763_line_222 = annotationName;
			Annotation js_doc_info_parser_1_expr61_line_222 = f_annotation_names_3753_line_222
					.get(v_annotation_name_3763_line_222);
			int PROBE_END_LINE_222 = 222;
			Annotation annotation = js_doc_info_parser_1_expr61_line_222;
            int PROBE_START_LINE_223 = 951;
			com.google.javascript.jscomp.parsing.Annotation v_annotation_3764_line_223 = annotation;
			boolean js_doc_info_parser_1_expr62_line_223 = v_annotation_3764_line_223 == null;
			int PROBE_END_LINE_223 = 951;
			if (js_doc_info_parser_1_expr62_line_223) {
              parser.addParserWarning("msg.bad.jsdoc.tag", annotationName,
                  stream.getLineno(), stream.getCharno());
            } else {
              int PROBE_START_LINE_228 = 228;
				com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_3752_line_228 = jsdocBuilder;
				String v_annotation_name_3763_line_228 = annotationName;
				int v_lineno_3761_line_228 = lineno;
				int v_charno_3762_line_228 = charno;
				int PROBE_END_LINE_228 = 228;
			// Mark the beginning of the annotation.
              f_jsdoc_builder_3752_line_228.markAnnotation(v_annotation_name_3763_line_228, v_lineno_3761_line_228, v_charno_3762_line_228);

              int PROBE_START_LINE_230 = 950;
			com.google.javascript.jscomp.parsing.Annotation v_annotation_3764_line_230 = annotation;
			int PROBE_END_LINE_230 = 950;
			switch (v_annotation_3764_line_230) {
                case AUTHOR:
                  if (jsdocBuilder.shouldParseDocumentation()) {
                    ExtractionInfo authorInfo = extractSingleLineBlock();
                    String author = authorInfo.string;

                    if (author.length() == 0) {
                      parser.addParserWarning("msg.jsdoc.authormissing",
                          stream.getLineno(), stream.getCharno());
                    } else {
                      jsdocBuilder.addAuthor(author);
                    }
                    token = authorInfo.token;
                  } else {
                    token = eatTokensUntilEOL(token);
                  }
                  continue retry;

                case CONSISTENTIDGENERATOR:
                  if (!jsdocBuilder.recordConsistentIdGenerator()) {
                    parser.addParserWarning("msg.jsdoc.consistidgen",
                      stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case STRUCT:
                  if (!jsdocBuilder.recordStruct()) {
                    parser.addTypeWarning("msg.jsdoc.incompat.type",
                                          stream.getLineno(),
                                          stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case DICT:
                  if (!jsdocBuilder.recordDict()) {
                    parser.addTypeWarning("msg.jsdoc.incompat.type",
                                          stream.getLineno(),
                                          stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case CONSTRUCTOR:
                  if (!jsdocBuilder.recordConstructor()) {
                    if (jsdocBuilder.isInterfaceRecorded()) {
                      parser.addTypeWarning("msg.jsdoc.interface.constructor",
                          stream.getLineno(), stream.getCharno());
                    } else {
                      parser.addTypeWarning("msg.jsdoc.incompat.type",
                          stream.getLineno(), stream.getCharno());
                    }
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case DEPRECATED:
                  if (!jsdocBuilder.recordDeprecated()) {
                    parser.addParserWarning("msg.jsdoc.deprecated",
                        stream.getLineno(), stream.getCharno());
                  }

                  // Find the reason/description, if any.
                  ExtractionInfo reasonInfo =
                      extractMultilineTextualBlock(token);

                  String reason = reasonInfo.string;

                  if (reason.length() > 0) {
                    jsdocBuilder.recordDeprecationReason(reason);
                  }

                  token = reasonInfo.token;
                  continue retry;

                case INTERFACE:
			int PROBE_START_LINE_307 = 315;
			com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_3752_line_307 = jsdocBuilder;
			boolean js_doc_info_parser_1_expr65_line_307 = f_jsdoc_builder_3752_line_307.recordInterface();
			boolean js_doc_info_parser_1_expr64_line_307 = !js_doc_info_parser_1_expr65_line_307;
			int PROBE_END_LINE_307 = 315;
			if (js_doc_info_parser_1_expr64_line_307) {
                    if (jsdocBuilder.isConstructorRecorded()) {
                      parser.addTypeWarning("msg.jsdoc.interface.constructor",
                          stream.getLineno(), stream.getCharno());
                    } else {
                      parser.addTypeWarning("msg.jsdoc.incompat.type",
                          stream.getLineno(), stream.getCharno());
                    }
                  }
			int PROBE_START_LINE_316 = 316;
			com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr67_line_316 = eatTokensUntilEOL();
			int PROBE_END_LINE_316 = 316;
			token = js_doc_info_parser_1_expr67_line_316;
                  continue retry;

                case DESC:
                  if (jsdocBuilder.isDescriptionRecorded()) {
                    parser.addParserWarning("msg.jsdoc.desc.extra",
                        stream.getLineno(), stream.getCharno());
                    token = eatTokensUntilEOL();
                    continue retry;
                  } else {
                    ExtractionInfo descriptionInfo =
                        extractMultilineTextualBlock(token);

                    String description = descriptionInfo.string;

                    jsdocBuilder.recordDescription(description);
                    token = descriptionInfo.token;
                    continue retry;
                  }

                case FILE_OVERVIEW:
                  String fileOverview = "";
                  if (jsdocBuilder.shouldParseDocumentation()) {
                    ExtractionInfo fileOverviewInfo =
                        extractMultilineTextualBlock(token,
                            WhitespaceOption.TRIM);

                    fileOverview = fileOverviewInfo.string;

                    token = fileOverviewInfo.token;
                  } else {
                    token = eatTokensUntilEOL(token);
                  }

                  if (!jsdocBuilder.recordFileOverview(fileOverview)) {
                    parser.addParserWarning("msg.jsdoc.fileoverview.extra",
                        stream.getLineno(), stream.getCharno());
                  }
                  continue retry;

                case LICENSE:
                case PRESERVE:
                  ExtractionInfo preserveInfo =
                      extractMultilineTextualBlock(token,
                                                   WhitespaceOption.PRESERVE);

                  String preserve = preserveInfo.string;

                  if (preserve.length() > 0) {
                    if (fileLevelJsDocBuilder != null) {
                      fileLevelJsDocBuilder.append(preserve);
                    }
                  }

                  token = preserveInfo.token;
                  continue retry;

                case ENUM:
                  token = next();
                  lineno = stream.getLineno();
                  charno = stream.getCharno();

                  type = null;
                  if (token != JsDocToken.EOL && token != JsDocToken.EOC) {
                    type = createJSTypeExpression(
                        parseAndRecordTypeNode(token));
                  }

                  if (type == null) {
                    type = createJSTypeExpression(newStringNode("number"));
                  }
                  if (!jsdocBuilder.recordEnumParameterType(type)) {
                    parser.addTypeWarning(
                        "msg.jsdoc.incompat.type", lineno, charno);
                  }
                  token = eatTokensUntilEOL(token);
                  continue retry;

                case EXPORT:
                  if (!jsdocBuilder.recordExport()) {
                    parser.addParserWarning("msg.jsdoc.export",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case EXPOSE:
                  if (!jsdocBuilder.recordExpose()) {
                    parser.addParserWarning("msg.jsdoc.expose",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case EXTERNS:
                  if (!jsdocBuilder.recordExterns()) {
                    parser.addParserWarning("msg.jsdoc.externs",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case JAVA_DISPATCH:
                  if (!jsdocBuilder.recordJavaDispatch()) {
                    parser.addParserWarning("msg.jsdoc.javadispatch",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case EXTENDS:
                case IMPLEMENTS:
                  skipEOLs();
			int PROBE_START_LINE_429 = 429;
			com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr70_line_429 = next();
			int PROBE_END_LINE_429 = 429;
			token = js_doc_info_parser_1_expr70_line_429;
			int PROBE_START_LINE_430 = 430;
			com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_430 = stream;
			int js_doc_info_parser_1_expr72_line_430 = f_stream_3749_line_430.getLineno();
			int PROBE_END_LINE_430 = 430;
			lineno = js_doc_info_parser_1_expr72_line_430;
			int PROBE_START_LINE_431 = 431;
			com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_431 = stream;
			int js_doc_info_parser_1_expr74_line_431 = f_stream_3749_line_431.getCharno();
			int PROBE_END_LINE_431 = 431;
			charno = js_doc_info_parser_1_expr74_line_431;
                  boolean matchingRc = false;

			int PROBE_START_LINE_434 = 437;
			com.google.javascript.jscomp.parsing.JsDocToken v_token_3759_line_434 = token;
			com.google.javascript.jscomp.parsing.JsDocToken q_lc_98_line_434 = JsDocToken.LC;
			boolean js_doc_info_parser_1_expr75_line_434 = v_token_3759_line_434 == q_lc_98_line_434;
			int PROBE_END_LINE_434 = 437;
			if (js_doc_info_parser_1_expr75_line_434) {
                    int PROBE_START_LINE_435 = 435;
					com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr77_line_435 = next();
					int PROBE_END_LINE_435 = 435;
					token = js_doc_info_parser_1_expr77_line_435;
                    matchingRc = true;
                  }

			int PROBE_START_LINE_439 = 474;
			com.google.javascript.jscomp.parsing.JsDocToken v_token_3759_line_439 = token;
			com.google.javascript.jscomp.parsing.JsDocToken q_string_99_line_439 = JsDocToken.STRING;
			boolean js_doc_info_parser_1_expr79_line_439 = v_token_3759_line_439 == q_string_99_line_439;
			int PROBE_END_LINE_439 = 474;
			if (js_doc_info_parser_1_expr79_line_439) {
                    int PROBE_START_LINE_440 = 441;
					Node js_doc_info_parser_1_expr80_line_440 = parseAndRecordTypeNameNode(token, lineno, charno,
							matchingRc);
					int PROBE_END_LINE_440 = 441;
					Node typeNode = js_doc_info_parser_1_expr80_line_440;

                    int PROBE_START_LINE_443 = 443;
					com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_443 = stream;
					int js_doc_info_parser_1_expr82_line_443 = f_stream_3749_line_443.getLineno();
					int PROBE_END_LINE_443 = 443;
					lineno = js_doc_info_parser_1_expr82_line_443;
                    int PROBE_START_LINE_444 = 444;
					com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_444 = stream;
					int js_doc_info_parser_1_expr84_line_444 = f_stream_3749_line_444.getCharno();
					int PROBE_END_LINE_444 = 444;
					charno = js_doc_info_parser_1_expr84_line_444;

                    int PROBE_START_LINE_446 = 446;
					int q_bang_100_line_446 = Token.BANG;
					com.google.javascript.rhino.Node v_type_node_3766_line_446 = typeNode;
					com.google.javascript.rhino.Node js_doc_info_parser_1_expr86_line_446 = wrapNode(
							q_bang_100_line_446, v_type_node_3766_line_446);
					int PROBE_END_LINE_446 = 446;
					typeNode = js_doc_info_parser_1_expr86_line_446;
                    int PROBE_START_LINE_447 = 447;
					com.google.javascript.rhino.Node v_type_node_3766_line_447 = typeNode;
					com.google.javascript.rhino.JSTypeExpression js_doc_info_parser_1_expr88_line_447 = createJSTypeExpression(
							v_type_node_3766_line_447);
					int PROBE_END_LINE_447 = 447;
					type = js_doc_info_parser_1_expr88_line_447;

                    int PROBE_START_LINE_449 = 460;
					com.google.javascript.jscomp.parsing.Annotation v_annotation_3764_line_449 = annotation;
					com.google.javascript.jscomp.parsing.Annotation q_extends_101_line_449 = Annotation.EXTENDS;
					boolean js_doc_info_parser_1_expr89_line_449 = v_annotation_3764_line_449 == q_extends_101_line_449;
					int PROBE_END_LINE_449 = 460;
					if (js_doc_info_parser_1_expr89_line_449) {
                      int PROBE_START_LINE_451 = 452;
						List<com.google.javascript.jscomp.parsing.JsDocInfoParser.ExtendedTypeInfo> v_extended_types_3760_line_451 = extendedTypes;
						int PROBE_END_LINE_451 = 452;
					// record the extended type, check later
                      v_extended_types_3760_line_451.add(new ExtendedTypeInfo(
                          type, stream.getLineno(), stream.getCharno()));
                    } else {
                      Preconditions.checkState(
                          annotation == Annotation.IMPLEMENTS);
                      if (!jsdocBuilder.recordImplementedInterface(type)) {
                        parser.addTypeWarning("msg.jsdoc.implements.duplicate",
                            lineno, charno);
                      }
                    }
                    int PROBE_START_LINE_461 = 461;
					com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr95_line_461 = next();
					int PROBE_END_LINE_461 = 461;
					token = js_doc_info_parser_1_expr95_line_461;
                    int PROBE_START_LINE_462 = 471;
					boolean v_matching_rc_3765_line_462 = matchingRc;
					int PROBE_END_LINE_462 = 471;
					if (v_matching_rc_3765_line_462) {
                      int PROBE_START_LINE_463 = 466;
						com.google.javascript.jscomp.parsing.JsDocToken v_token_3759_line_463 = token;
						com.google.javascript.jscomp.parsing.JsDocToken q_rc_102_line_463 = JsDocToken.RC;
						boolean js_doc_info_parser_1_expr96_line_463 = v_token_3759_line_463 != q_rc_102_line_463;
						int PROBE_END_LINE_463 = 466;
					if (js_doc_info_parser_1_expr96_line_463) {
                        parser.addTypeWarning("msg.jsdoc.missing.rc",
                            stream.getLineno(), stream.getCharno());
                      }
                    } else if (token != JsDocToken.EOL &&
                        token != JsDocToken.EOF && token != JsDocToken.EOC) {
                      parser.addTypeWarning("msg.end.annotation.expected",
                          stream.getLineno(), stream.getCharno());
                    }
                  } else {
                    parser.addTypeWarning("msg.no.type.name", lineno, charno);
                  }
			int PROBE_START_LINE_475 = 475;
			com.google.javascript.jscomp.parsing.JsDocToken v_token_3759_line_475 = token;
			com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr98_line_475 = eatTokensUntilEOL(
					v_token_3759_line_475);
			int PROBE_END_LINE_475 = 475;
			token = js_doc_info_parser_1_expr98_line_475;
                  continue retry;

                case HIDDEN:
                  if (!jsdocBuilder.recordHiddenness()) {
                    parser.addParserWarning("msg.jsdoc.hidden",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case LENDS:
                  skipEOLs();

                  matchingRc = false;
                  if (match(JsDocToken.LC)) {
                    token = next();
                    matchingRc = true;
                  }

                  if (match(JsDocToken.STRING)) {
                    token = next();
                    if (!jsdocBuilder.recordLends(stream.getString())) {
                      parser.addTypeWarning("msg.jsdoc.lends.incompatible",
                          stream.getLineno(), stream.getCharno());
                    }
                  } else {
                    parser.addTypeWarning("msg.jsdoc.lends.missing",
                        stream.getLineno(), stream.getCharno());
                  }

                  if (matchingRc && !match(JsDocToken.RC)) {
                    parser.addTypeWarning("msg.jsdoc.missing.rc",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case MEANING:
                  ExtractionInfo meaningInfo =
                      extractMultilineTextualBlock(token);
                  String meaning = meaningInfo.string;
                  token = meaningInfo.token;
                  if (!jsdocBuilder.recordMeaning(meaning)) {
                    parser.addParserWarning("msg.jsdoc.meaning.extra",
                        stream.getLineno(), stream.getCharno());
                  }
                  continue retry;

                case NO_ALIAS:
                  if (!jsdocBuilder.recordNoAlias()) {
                    parser.addParserWarning("msg.jsdoc.noalias",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case NO_COMPILE:
                  if (!jsdocBuilder.recordNoCompile()) {
                    parser.addParserWarning("msg.jsdoc.nocompile",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case NO_TYPE_CHECK:
                  if (!jsdocBuilder.recordNoTypeCheck()) {
                    parser.addParserWarning("msg.jsdoc.nocheck",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case NOT_IMPLEMENTED:
                  token = eatTokensUntilEOL();
                  continue retry;

                case INHERIT_DOC:
                case OVERRIDE:
                  if (!jsdocBuilder.recordOverride()) {
                    parser.addTypeWarning("msg.jsdoc.override",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case THROWS:
                  skipEOLs();
                  token = next();
                  lineno = stream.getLineno();
                  charno = stream.getCharno();
                  type = null;

                  if (token == JsDocToken.LC) {
                    type = createJSTypeExpression(
                        parseAndRecordTypeNode(token));

                    if (type == null) {
                      // parsing error reported during recursive descent
                      // recovering parsing
                      token = eatTokensUntilEOL();
                      continue retry;
                    }
                  }

                  // *Update* the token to that after the type annotation.
                  token = current();

                  // Save the throw type.
                  jsdocBuilder.recordThrowType(type);

                  // Find the throw's description (if applicable).
                  if (jsdocBuilder.shouldParseDocumentation()) {
                    ExtractionInfo descriptionInfo =
                        extractMultilineTextualBlock(token);

                    String description = descriptionInfo.string;

                    if (description.length() > 0) {
                      jsdocBuilder.recordThrowDescription(type, description);
                    }

                    token = descriptionInfo.token;
                  } else {
                    token = eatTokensUntilEOL(token);
                  }
                  continue retry;

                case PARAM:
                  skipEOLs();
                  token = next();
                  lineno = stream.getLineno();
                  charno = stream.getCharno();
                  type = null;

                  if (token == JsDocToken.LC) {
                    type = createJSTypeExpression(
                        parseAndRecordParamTypeNode(token));

                    if (type == null) {
                      // parsing error reported during recursive descent
                      // recovering parsing
                      token = eatTokensUntilEOL();
                      continue retry;
                    }
                    skipEOLs();
                    token = next();
                    lineno = stream.getLineno();
                    charno = stream.getCharno();
                  }

                  String name = null;
                  boolean isBracketedParam = JsDocToken.LB == token;
                  if (isBracketedParam) {
                    token = next();
                  }

                  if (JsDocToken.STRING != token) {
                    parser.addTypeWarning("msg.missing.variable.name",
                        lineno, charno);
                  } else {
                    name = stream.getString();

                    if (isBracketedParam) {
                      token = next();

                      // Throw out JsDocToolkit's "default" parameter
                      // annotation.  It makes no sense under our type
                      // system.
                      if (JsDocToken.EQUALS == token) {
                        token = next();
                        if (JsDocToken.STRING == token) {
                          token = next();
                        }
                      }

                      if (JsDocToken.RB != token) {
                        reportTypeSyntaxWarning("msg.jsdoc.missing.rb");
                      } else if (type != null) {
                        // Make the type expression optional, if it isn't
                        // already.
                        type = JSTypeExpression.makeOptionalArg(type);
                      }
                    }

                    // If the param name has a DOT in it, just throw it out
                    // quietly. We do not handle the JsDocToolkit method
                    // for handling properties of params.
                    if (name.indexOf('.') > -1) {
                      name = null;
                    } else if (!jsdocBuilder.recordParameter(name, type)) {
                      if (jsdocBuilder.hasParameter(name)) {
                        parser.addTypeWarning("msg.dup.variable.name", name,
                            lineno, charno);
                      } else {
                        parser.addTypeWarning("msg.jsdoc.incompat.type", name,
                            lineno, charno);
                      }
                    }
                  }

                  if (name == null) {
                    token = eatTokensUntilEOL(token);
                    continue retry;
                  }

                  jsdocBuilder.markName(name, sourceFile, lineno, charno);

                  // Find the parameter's description (if applicable).
                  if (jsdocBuilder.shouldParseDocumentation()) {
                    ExtractionInfo paramDescriptionInfo =
                        extractMultilineTextualBlock(token);

                    String paramDescription = paramDescriptionInfo.string;

                    if (paramDescription.length() > 0) {
                      jsdocBuilder.recordParameterDescription(name,
                          paramDescription);
                    }

                    token = paramDescriptionInfo.token;
                  } else {
                    token = eatTokensUntilEOL(token);
                  }
                  continue retry;

                case PRESERVE_TRY:
                  if (!jsdocBuilder.recordPreserveTry()) {
                    parser.addParserWarning("msg.jsdoc.preservertry",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case NO_SHADOW:
                  if (!jsdocBuilder.recordNoShadow()) {
                    parser.addParserWarning("msg.jsdoc.noshadow",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case NO_SIDE_EFFECTS:
                  if (!jsdocBuilder.recordNoSideEffects()) {
                    parser.addParserWarning("msg.jsdoc.nosideeffects",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case MODIFIES:
                  token = parseModifiesTag(next());
                  continue retry;

                case IMPLICIT_CAST:
                  if (!jsdocBuilder.recordImplicitCast()) {
                    parser.addTypeWarning("msg.jsdoc.implicitcast",
                        stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case SEE:
                  if (jsdocBuilder.shouldParseDocumentation()) {
                    ExtractionInfo referenceInfo = extractSingleLineBlock();
                    String reference = referenceInfo.string;

                    if (reference.length() == 0) {
                      parser.addParserWarning("msg.jsdoc.seemissing",
                          stream.getLineno(), stream.getCharno());
                    } else {
                      jsdocBuilder.addReference(reference);
                    }

                    token = referenceInfo.token;
                  } else {
                    token = eatTokensUntilEOL(token);
                  }
                  continue retry;

                case STABLEIDGENERATOR:
                  if (!jsdocBuilder.recordStableIdGenerator()) {
                    parser.addParserWarning("msg.jsdoc.stableidgen",
                      stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case SUPPRESS:
                  token = parseSuppressTag(next());
                  continue retry;

                case TEMPLATE:
                  ExtractionInfo templateInfo = extractSingleLineBlock();
                  List<String> names = Lists.newArrayList(
                      Splitter.on(',')
                          .trimResults()
                          .split(templateInfo.string));

                  if (names.size() == 0 || names.get(0).length() == 0) {
                    parser.addTypeWarning("msg.jsdoc.templatemissing",
                          stream.getLineno(), stream.getCharno());
                  } else if (!jsdocBuilder.recordTemplateTypeNames(names)) {
                    parser.addTypeWarning("msg.jsdoc.template.at.most.once",
                        stream.getLineno(), stream.getCharno());
                  }

                  token = templateInfo.token;
                  continue retry;

                case IDGENERATOR:
                  if (!jsdocBuilder.recordIdGenerator()) {
                    parser.addParserWarning("msg.jsdoc.idgen",
                      stream.getLineno(), stream.getCharno());
                  }
                  token = eatTokensUntilEOL();
                  continue retry;

                case VERSION:
                  ExtractionInfo versionInfo = extractSingleLineBlock();
                  String version = versionInfo.string;

                  if (version.length() == 0) {
                    parser.addParserWarning("msg.jsdoc.versionmissing",
                          stream.getLineno(), stream.getCharno());
                  } else {
                    if (!jsdocBuilder.recordVersion(version)) {
                       parser.addParserWarning("msg.jsdoc.extraversion",
                          stream.getLineno(), stream.getCharno());
                    }
                  }

                  token = versionInfo.token;
                  continue retry;

                case CONSTANT:
                case DEFINE:
                case RETURN:
                case PRIVATE:
                case PROTECTED:
                case PUBLIC:
                case THIS:
                case TYPE:
                case TYPEDEF:
                  lineno = stream.getLineno();
                  charno = stream.getCharno();

                  Node typeNode = null;
                  boolean hasType = lookAheadForTypeAnnotation();
                  boolean isAlternateTypeAnnotation =
                      (annotation == Annotation.PRIVATE ||
                       annotation == Annotation.PROTECTED ||
                       annotation == Annotation.PUBLIC ||
                       annotation == Annotation.CONSTANT);
                  boolean canSkipTypeAnnotation =
                      (isAlternateTypeAnnotation ||
                       annotation == Annotation.RETURN);
                  type = null;
                  if (hasType || !canSkipTypeAnnotation) {
                    skipEOLs();
                    token = next();
                    typeNode = parseAndRecordTypeNode(token);

                    if (annotation == Annotation.THIS) {
                      typeNode = wrapNode(Token.BANG, typeNode);
                    }
                    type = createJSTypeExpression(typeNode);
                  }

                  // The error was reported during recursive descent
                  // recovering parsing
                  boolean hasError = type == null && !canSkipTypeAnnotation;
                  if (!hasError) {
                    // Record types for @type.
                    // If the @private, @protected, or @public annotations
                    // have a type attached, pretend that they actually wrote:
                    // @type {type}\n@private
                    // This will have some weird behavior in some cases
                    // (for example, @private can now be used as a type-cast),
                    // but should be mostly OK.
                    if ((type != null && isAlternateTypeAnnotation)
                        || annotation == Annotation.TYPE) {
                      if (!jsdocBuilder.recordType(type)) {
                        parser.addTypeWarning(
                            "msg.jsdoc.incompat.type", lineno, charno);
                      }
                    }

                    switch (annotation) {
                      case CONSTANT:
                        if (!jsdocBuilder.recordConstancy()) {
                          parser.addParserWarning("msg.jsdoc.const",
                              stream.getLineno(), stream.getCharno());
                        }
                        break;

                      case DEFINE:
                        if (!jsdocBuilder.recordDefineType(type)) {
                          parser.addParserWarning("msg.jsdoc.define",
                              lineno, charno);
                        }
                        break;

                      case PRIVATE:
                        if (!jsdocBuilder.recordVisibility(Visibility.PRIVATE)) {
                          parser.addParserWarning(
                              "msg.jsdoc.visibility.private",
                              lineno, charno);
                        }
                        break;

                      case PROTECTED:
                        if (!jsdocBuilder.recordVisibility(Visibility.PROTECTED)) {
                          parser.addParserWarning(
                              "msg.jsdoc.visibility.protected",
                              lineno, charno);
                        }
                        break;

                      case PUBLIC:
                        if (!jsdocBuilder.recordVisibility(Visibility.PUBLIC)) {
                          parser.addParserWarning(
                              "msg.jsdoc.visibility.public",
                              lineno, charno);
                        }
                        break;

                      case RETURN:
                        if (type == null) {
                          type = createJSTypeExpression(newNode(Token.QMARK));
                        }

                        if (!jsdocBuilder.recordReturnType(type)) {
                          parser.addTypeWarning(
                              "msg.jsdoc.incompat.type", lineno, charno);
                          break;
                        }

                        // Find the return's description (if applicable).
                        if (jsdocBuilder.shouldParseDocumentation()) {
                          ExtractionInfo returnDescriptionInfo =
                              extractMultilineTextualBlock(token);

                          String returnDescription =
                              returnDescriptionInfo.string;

                          if (returnDescription.length() > 0) {
                            jsdocBuilder.recordReturnDescription(
                                returnDescription);
                          }

                          token = returnDescriptionInfo.token;
                        } else {
                          token = eatTokensUntilEOL(token);
                        }
                        continue retry;

                      case THIS:
                        if (!jsdocBuilder.recordThisType(type)) {
                          parser.addTypeWarning(
                              "msg.jsdoc.incompat.type", lineno, charno);
                        }
                        break;

                      case TYPEDEF:
                        if (!jsdocBuilder.recordTypedef(type)) {
                          parser.addTypeWarning(
                              "msg.jsdoc.incompat.type", lineno, charno);
                        }
                        break;
                    }
                  }

                  token = eatTokensUntilEOL();
                  continue retry;
              }
            }
          }
          break;

        case EOC:
	int PROBE_START_LINE_956 = 958;
	boolean js_doc_info_parser_1_expr99_line_956 = hasParsedFileOverviewDocInfo();
	int PROBE_END_LINE_956 = 958;
	if (js_doc_info_parser_1_expr99_line_956) {
            fileOverviewJSDocInfo = retrieveAndResetParsedJSDocInfo();
          }
	int PROBE_START_LINE_959 = 959;
	List<com.google.javascript.jscomp.parsing.JsDocInfoParser.ExtendedTypeInfo> v_extended_types_3760_line_959 = extendedTypes;
	int PROBE_END_LINE_959 = 959;
	checkExtendedTypes(v_extended_types_3760_line_959);
          return true;

        case EOF:
          // discard any accumulated information
          jsdocBuilder.build(null);
          parser.addParserWarning("msg.unexpected.eof",
              stream.getLineno(), stream.getCharno());
          checkExtendedTypes(extendedTypes);
          return false;

        case EOL:
	int PROBE_START_LINE_971 = 973;
	com.google.javascript.jscomp.parsing.JsDocInfoParser.State f_state_3758_line_971 = state;
	com.google.javascript.jscomp.parsing.JsDocInfoParser.State q_searching_newline_103_line_971 = State.SEARCHING_NEWLINE;
	boolean js_doc_info_parser_1_expr101_line_971 = f_state_3758_line_971 == q_searching_newline_103_line_971;
	int PROBE_END_LINE_971 = 973;
	if (js_doc_info_parser_1_expr101_line_971) {
            state = State.SEARCHING_ANNOTATION;
          }
	int PROBE_START_LINE_974 = 974;
	com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr103_line_974 = next();
	int PROBE_END_LINE_974 = 974;
	token = js_doc_info_parser_1_expr103_line_974;
          continue retry;

        default:
	int PROBE_START_LINE_978 = 985;
	com.google.javascript.jscomp.parsing.JsDocToken v_token_3759_line_978 = token;
	com.google.javascript.jscomp.parsing.JsDocToken q_star_103_line_978 = JsDocToken.STAR;
	boolean js_doc_info_parser_1_expr105_line_978 = v_token_3759_line_978 == q_star_103_line_978;
	boolean js_doc_info_parser_1_expr106_line_978 = true;
	if (js_doc_info_parser_1_expr105_line_978) {
		com.google.javascript.jscomp.parsing.JsDocInfoParser.State f_state_3758_line_978 = state;
		com.google.javascript.jscomp.parsing.JsDocInfoParser.State q_searching_annotation_104_line_978 = State.SEARCHING_ANNOTATION;
		js_doc_info_parser_1_expr106_line_978 = f_state_3758_line_978 == q_searching_annotation_104_line_978;
	}
	boolean js_doc_info_parser_1_expr104_line_978 = js_doc_info_parser_1_expr105_line_978
			&& js_doc_info_parser_1_expr106_line_978;
	int PROBE_END_LINE_978 = 985;
	if (js_doc_info_parser_1_expr104_line_978) {
            int PROBE_START_LINE_979 = 979;
			com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr108_line_979 = next();
			int PROBE_END_LINE_979 = 979;
			token = js_doc_info_parser_1_expr108_line_979;
            continue retry;
          } else {
            state = State.SEARCHING_NEWLINE;
            token = eatTokensUntilEOL();
            continue retry;
          }
      }

      // next token
      token = next();
    }
  }

  private void checkExtendedTypes(List<ExtendedTypeInfo> extendedTypes) {
    int PROBE_START_LINE_994 = 1007;
	List<com.google.javascript.jscomp.parsing.JsDocInfoParser.ExtendedTypeInfo> p_extended_types_3768_line_994 = extendedTypes;
	int PROBE_END_LINE_994 = 1007;
	for (ExtendedTypeInfo typeInfo : p_extended_types_3768_line_994) {
      int PROBE_START_LINE_996 = 1006;
		com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_3752_line_996 = jsdocBuilder;
		boolean js_doc_info_parser_1_expr109_line_996 = f_jsdoc_builder_3752_line_996.isInterfaceRecorded();
		int PROBE_END_LINE_996 = 1006;
	// If interface, record the multiple extended interfaces
      if (js_doc_info_parser_1_expr109_line_996) {
        int PROBE_START_LINE_997 = 1000;
		com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_3752_line_997 = jsdocBuilder;
		com.google.javascript.jscomp.parsing.JsDocInfoParser.ExtendedTypeInfo v_type_info_3769_line_997 = typeInfo;
		com.google.javascript.rhino.JSTypeExpression q_type_104_line_997 = v_type_info_3769_line_997.type;
		boolean js_doc_info_parser_1_expr111_line_997 = f_jsdoc_builder_3752_line_997
				.recordExtendedInterface(q_type_104_line_997);
		boolean js_doc_info_parser_1_expr110_line_997 = !js_doc_info_parser_1_expr111_line_997;
		int PROBE_END_LINE_997 = 1000;
		if (js_doc_info_parser_1_expr110_line_997) {
          parser.addParserWarning("msg.jsdoc.extends.duplicate",
              typeInfo.lineno, typeInfo.charno);
        }
      } else {
        if (!jsdocBuilder.recordBaseType(typeInfo.type)) {
          parser.addTypeWarning("msg.jsdoc.incompat.type",
              typeInfo.lineno, typeInfo.charno);
        }
      }
    }
  }

  /**
   * Parse a {@code @suppress} tag of the form
   * {@code @suppress&#123;warning1|warning2&#125;}.
   *
   * @param token The current token.
   */
  private JsDocToken parseSuppressTag(JsDocToken token) {
    if (token == JsDocToken.LC) {
      Set<String> suppressions = new HashSet<String>();
      while (true) {
        if (match(JsDocToken.STRING)) {
          String name = stream.getString();
          if (!suppressionNames.contains(name)) {
            parser.addParserWarning("msg.jsdoc.suppress.unknown", name,
                stream.getLineno(), stream.getCharno());
          }

          suppressions.add(stream.getString());
          token = next();
        } else {
          parser.addParserWarning("msg.jsdoc.suppress",
              stream.getLineno(), stream.getCharno());
          return token;
        }

        if (match(JsDocToken.PIPE)) {
          token = next();
        } else {
          break;
        }
      }

      if (!match(JsDocToken.RC)) {
        parser.addParserWarning("msg.jsdoc.suppress",
            stream.getLineno(), stream.getCharno());
      } else {
        token = next();
        if (!jsdocBuilder.recordSuppressions(suppressions)) {
          parser.addParserWarning("msg.jsdoc.suppress.duplicate",
              stream.getLineno(), stream.getCharno());
        }
      }
    }
    return token;
  }

  /**
   * Parse a {@code @modifies} tag of the form
   * {@code @modifies&#123;this|arguments|param&#125;}.
   *
   * @param token The current token.
   */
  private JsDocToken parseModifiesTag(JsDocToken token) {
    if (token == JsDocToken.LC) {
      Set<String> modifies = new HashSet<String>();
      while (true) {
        if (match(JsDocToken.STRING)) {
          String name = stream.getString();
          if (!modifiesAnnotationKeywords.contains(name)
              && !jsdocBuilder.hasParameter(name)) {
              parser.addParserWarning("msg.jsdoc.modifies.unknown", name,
                  stream.getLineno(), stream.getCharno());
          }

          modifies.add(stream.getString());
          token = next();
        } else {
          parser.addParserWarning("msg.jsdoc.modifies",
              stream.getLineno(), stream.getCharno());
          return token;
        }

        if (match(JsDocToken.PIPE)) {
          token = next();
        } else {
          break;
        }
      }

      if (!match(JsDocToken.RC)) {
        parser.addParserWarning("msg.jsdoc.modifies",
            stream.getLineno(), stream.getCharno());
      } else {
        token = next();
        if (!jsdocBuilder.recordModifies(modifies)) {
          parser.addParserWarning("msg.jsdoc.modifies.duplicate",
              stream.getLineno(), stream.getCharno());
        }
      }
    }
    return token;
  }

  /**
   * Looks for a type expression at the current token and if found,
   * returns it. Note that this method consumes input.
   *
   * @param token The current token.
   * @return The type expression found or null if none.
   */
  private Node parseAndRecordTypeNode(JsDocToken token) {
    return parseAndRecordTypeNode(token, token == JsDocToken.LC);
  }

  /**
   * Looks for a type expression at the current token and if found,
   * returns it. Note that this method consumes input.
   *
   * @param token The current token.
   * @param matchingLC Whether the type expression starts with a "{".
   * @return The type expression found or null if none.
   */
  private Node parseAndRecordTypeNode(JsDocToken token, boolean matchingLC) {
    return parseAndRecordTypeNode(token, stream.getLineno(), stream.getCharno(),
        matchingLC, false);
  }

  /**
   * Looks for a type expression at the current token and if found,
   * returns it. Note that this method consumes input.
   *
   * @param token The current token.
   * @param lineno The line of the type expression.
   * @param startCharno The starting character position of the type expression.
   * @param matchingLC Whether the type expression starts with a "{".
   * @return The type expression found or null if none.
   */
  private Node parseAndRecordTypeNameNode(JsDocToken token, int lineno,
                                          int startCharno, boolean matchingLC) {
    int PROBE_START_LINE_1139 = 1139;
											com.google.javascript.jscomp.parsing.JsDocToken p_token_3775_line_1139 = token;
											int p_lineno_3776_line_1139 = lineno;
											int p_start_charno_3777_line_1139 = startCharno;
											boolean p_matching_lc_3778_line_1139 = matchingLC;
											com.google.javascript.rhino.Node js_doc_info_parser_1_expr112_line_1139 = parseAndRecordTypeNode(
													p_token_3775_line_1139, p_lineno_3776_line_1139,
													p_start_charno_3777_line_1139, p_matching_lc_3778_line_1139, true);
											int PROBE_END_LINE_1139 = 1139;
	return js_doc_info_parser_1_expr112_line_1139;
  }

  /**
   * Looks for a type expression at the current token and if found,
   * returns it. Note that this method consumes input.
   *
   * Parameter type expressions are special for two reasons:
   * <ol>
   *   <li>They must begin with '{', to distinguish type names from param names.
   *   <li>They may end in '=', to denote optionality.
   * </ol>
   *
   * @param token The current token.
   * @return The type expression found or null if none.
   */
  private Node parseAndRecordParamTypeNode(JsDocToken token) {
    Preconditions.checkArgument(token == JsDocToken.LC);
    int lineno = stream.getLineno();
    int startCharno = stream.getCharno();

    Node typeNode = parseParamTypeExpressionAnnotation(token);
    if (typeNode != null) {
      int endLineno = stream.getLineno();
      int endCharno = stream.getCharno();

      jsdocBuilder.markTypeNode(typeNode, lineno, startCharno,
          endLineno, endCharno, true);
    }
    return typeNode;
  }

  /**
   * Looks for a parameter type expression at the current token and if found,
   * returns it. Note that this method consumes input.
   *
   * @param token The current token.
   * @param lineno The line of the type expression.
   * @param startCharno The starting character position of the type expression.
   * @param matchingLC Whether the type expression starts with a "{".
   * @param onlyParseSimpleNames If true, only simple type names are parsed
   *     (via a call to parseTypeNameAnnotation instead of
   *     parseTypeExpressionAnnotation).
   * @return The type expression found or null if none.
   */
  private Node parseAndRecordTypeNode(JsDocToken token, int lineno,
                                      int startCharno,
                                      boolean matchingLC,
                                      boolean onlyParseSimpleNames) {
    Node typeNode = null;

    int PROBE_START_LINE_1190 = 1194;
	boolean p_only_parse_simple_names_3784_line_1190 = onlyParseSimpleNames;
	int PROBE_END_LINE_1190 = 1194;
	if (p_only_parse_simple_names_3784_line_1190) {
      int PROBE_START_LINE_1191 = 1191;
		com.google.javascript.jscomp.parsing.JsDocToken p_token_3780_line_1191 = token;
		com.google.javascript.rhino.Node js_doc_info_parser_1_expr114_line_1191 = parseTypeNameAnnotation(
				p_token_3780_line_1191);
		int PROBE_END_LINE_1191 = 1191;
	typeNode = js_doc_info_parser_1_expr114_line_1191;
    } else {
      typeNode = parseTypeExpressionAnnotation(token);
    }

    int PROBE_START_LINE_1196 = 1202;
	com.google.javascript.rhino.Node v_type_node_3785_line_1196 = typeNode;
	boolean js_doc_info_parser_1_expr115_line_1196 = v_type_node_3785_line_1196 != null;
	int PROBE_END_LINE_1196 = 1202;
	if (js_doc_info_parser_1_expr115_line_1196) {
      int PROBE_START_LINE_1197 = 1197;
		com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_1197 = stream;
		int js_doc_info_parser_1_expr116_line_1197 = f_stream_3749_line_1197.getLineno();
		int PROBE_END_LINE_1197 = 1197;
	int endLineno = js_doc_info_parser_1_expr116_line_1197;
      int PROBE_START_LINE_1198 = 1198;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_1198 = stream;
	int js_doc_info_parser_1_expr117_line_1198 = f_stream_3749_line_1198.getCharno();
	int PROBE_END_LINE_1198 = 1198;
	int endCharno = js_doc_info_parser_1_expr117_line_1198;

      int PROBE_START_LINE_1200 = 1201;
	com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_3752_line_1200 = jsdocBuilder;
	int PROBE_END_LINE_1200 = 1201;
	f_jsdoc_builder_3752_line_1200.markTypeNode(
          typeNode, lineno, startCharno, endLineno, endCharno, matchingLC);
    }

    int PROBE_START_LINE_1204 = 1204;
	com.google.javascript.rhino.Node v_type_node_3785_line_1204 = typeNode;
	int PROBE_END_LINE_1204 = 1204;
	return v_type_node_3785_line_1204;
  }

  /**
   * Converts a JSDoc token to its string representation.
   */
  private String toString(JsDocToken token) {
    switch (token) {
      case ANNOTATION:
        return "@" + stream.getString();

      case BANG:
        return "!";

      case COMMA:
        return ",";

      case COLON:
        return ":";

      case GT:
        return ">";

      case LB:
        return "[";

      case LC:
        return "{";

      case LP:
        return "(";

      case LT:
        return ".<";

      case QMARK:
        return "?";

      case PIPE:
        return "|";

      case RB:
        return "]";

      case RC:
        return "}";

      case RP:
        return ")";

      case STAR:
        return "*";

      case ELLIPSIS:
        return "...";

      case EQUALS:
        return "=";

      case STRING:
        return stream.getString();

      default:
        throw new IllegalStateException(token.toString());
    }
  }

  /**
   * Constructs a new {@code JSTypeExpression}.
   * @param n A node. May be null.
   */
  private JSTypeExpression createJSTypeExpression(Node n) {
    int PROBE_START_LINE_1276 = 1277;
	com.google.javascript.rhino.Node p_n_3789_line_1276 = n;
	boolean js_doc_info_parser_1_expr120_line_1276 = p_n_3789_line_1276 == null;
	com.google.javascript.rhino.JSTypeExpression js_doc_info_parser_1_expr119_line_1276 = js_doc_info_parser_1_expr120_line_1276
			? null
			: new JSTypeExpression(n, getSourceName());
	int PROBE_END_LINE_1276 = 1277;
	return js_doc_info_parser_1_expr119_line_1276;
  }

  /**
   * Tuple for returning both the string extracted and the
   * new token following a call to any of the extract*Block
   * methods.
   */
  private static class ExtractionInfo {
    private final String string;
    private final JsDocToken token;

    public ExtractionInfo(String string, JsDocToken token) {
      this.string = string;
      this.token = token;
    }
  }

  /**
   * Tuple for recording extended types
   */
  private static class ExtendedTypeInfo {
    final JSTypeExpression type;
    final int lineno;
    final int charno;

    public ExtendedTypeInfo(JSTypeExpression type, int lineno, int charno) {
      int PROBE_START_LINE_1304 = 1304;
		com.google.javascript.rhino.JSTypeExpression p_type_3792_line_1304 = type;
		int PROBE_END_LINE_1304 = 1304;
	this.type = p_type_3792_line_1304;
      int PROBE_START_LINE_1305 = 1305;
	int p_lineno_3793_line_1305 = lineno;
	int PROBE_END_LINE_1305 = 1305;
	this.lineno = p_lineno_3793_line_1305;
      int PROBE_START_LINE_1306 = 1306;
	int p_charno_3794_line_1306 = charno;
	int PROBE_END_LINE_1306 = 1306;
	this.charno = p_charno_3794_line_1306;
    }
  }

  /**
   * Extracts the text found on the current line starting at token. Note that
   * token = token.info; should be called after this method is used to update
   * the token properly in the parser.
   *
   * @return The extraction information.
   */
  private ExtractionInfo extractSingleLineBlock() {

    // Get the current starting point.
    stream.update();
    int lineno = stream.getLineno();
    int charno = stream.getCharno() + 1;

    String line = stream.getRemainingJSDocLine().trim();

    // Record the textual description.
    if (line.length() > 0) {
      jsdocBuilder.markText(line, lineno, charno, lineno,
                            charno + line.length());
    }

    return new ExtractionInfo(line, next());
  }

  private ExtractionInfo extractMultilineTextualBlock(JsDocToken token) {
    return extractMultilineTextualBlock(token, WhitespaceOption.SINGLE_LINE);
  }

  private enum WhitespaceOption {
    /**
     * Preserves all whitespace and formatting. Needed for licenses and
     * purposely formatted text.
     */
    PRESERVE,

    /** Preserves newlines but trims the output. */
    TRIM,

    /** Removes newlines and turns the output into a single line string. */
    SINGLE_LINE
  }

  /**
   * Extracts the text found on the current line and all subsequent
   * until either an annotation, end of comment or end of file is reached.
   * Note that if this method detects an end of line as the first token, it
   * will quit immediately (indicating that there is no text where it was
   * expected).  Note that token = info.token; should be called after this
   * method is used to update the token properly in the parser.
   *
   * @param token The start token.
   * @param option How to handle whitespace.
   *
   * @return The extraction information.
   */
  @SuppressWarnings("fallthrough")
  private ExtractionInfo extractMultilineTextualBlock(JsDocToken token,
                                                      WhitespaceOption option) {

    if (token == JsDocToken.EOC || token == JsDocToken.EOL ||
        token == JsDocToken.EOF) {
      return new ExtractionInfo("", token);
    }

    stream.update();
    int startLineno = stream.getLineno();
    int startCharno = stream.getCharno() + 1;

    // Read the content from the first line.
    String line = stream.getRemainingJSDocLine();
    if (option != WhitespaceOption.PRESERVE) {
      line = line.trim();
    }

    StringBuilder builder = new StringBuilder();
    builder.append(line);

    state = State.SEARCHING_ANNOTATION;
    token = next();

    boolean ignoreStar = false;

    // Track the start of the line to count whitespace that
    // the tokenizer skipped. Because this case is rare, it's easier
    // to do this here than in the tokenizer.
    int lineStartChar = -1;

    do {
      switch (token) {
        case STAR:
          if (ignoreStar) {
            // Mark the position after the star as the new start of the line.
            lineStartChar = stream.getCharno() + 1;
          } else {
            // The star is part of the comment.
            if (builder.length() > 0) {
              builder.append(' ');
            }

            builder.append('*');
          }

          token = next();
          continue;

        case EOL:
          if (option != WhitespaceOption.SINGLE_LINE) {
            builder.append("\n");
          }

          ignoreStar = true;
          lineStartChar = 0;
          token = next();
          continue;

        default:
          ignoreStar = false;
          state = State.SEARCHING_ANNOTATION;

          boolean isEOC = token == JsDocToken.EOC;
          if (!isEOC) {
            if (lineStartChar != -1 && option == WhitespaceOption.PRESERVE) {
              int numSpaces = stream.getCharno() - lineStartChar;
              for (int i = 0; i < numSpaces; i++) {
                builder.append(' ');
              }
              lineStartChar = -1;
            } else if (builder.length() > 0) {
              // All tokens must be separated by a space.
              builder.append(' ');
            }
          }

          if (token == JsDocToken.EOC ||
              token == JsDocToken.EOF ||
              // When we're capturing a license block, annotations
              // in the block are OK.
              (token == JsDocToken.ANNOTATION &&
               option != WhitespaceOption.PRESERVE)) {
            String multilineText = builder.toString();

            if (option != WhitespaceOption.PRESERVE) {
              multilineText = multilineText.trim();
            }

            int endLineno = stream.getLineno();
            int endCharno = stream.getCharno();

            if (multilineText.length() > 0) {
              jsdocBuilder.markText(multilineText, startLineno, startCharno,
                  endLineno, endCharno);
            }

            return new ExtractionInfo(multilineText, token);
          }

          builder.append(toString(token));

          line = stream.getRemainingJSDocLine();

          if (option != WhitespaceOption.PRESERVE) {
            line = trimEnd(line);
          }

          builder.append(line);
          token = next();
      }
    } while (true);
  }


  /**
   * Extracts the top-level block comment from the JsDoc comment, if any.
   * This method differs from the extractMultilineTextualBlock in that it
   * terminates under different conditions (it doesn't have the same
   * prechecks), it does not first read in the remaining of the current
   * line and its conditions for ignoring the "*" (STAR) are different.
   *
   * @param token The starting token.
   *
   * @return The extraction information.
   */
  private ExtractionInfo extractBlockComment(JsDocToken token) {
    StringBuilder builder = new StringBuilder();

    boolean ignoreStar = true;

    do {
      switch (token) {
        case ANNOTATION:
        case EOC:
        case EOF:
          return new ExtractionInfo(builder.toString().trim(), token);

        case STAR:
          if (!ignoreStar) {
            if (builder.length() > 0) {
              builder.append(' ');
            }

            builder.append('*');
          }

          token = next();
          continue;

        case EOL:
          ignoreStar = true;
          builder.append('\n');
          token = next();
          continue;

        default:
          if (!ignoreStar && builder.length() > 0) {
            builder.append(' ');
          }

          ignoreStar = false;

          builder.append(toString(token));

          String line = stream.getRemainingJSDocLine();
          line = trimEnd(line);
          builder.append(line);
          token = next();
      }
    } while (true);
  }

  /**
   * Trim characters from only the end of a string.
   * This method will remove all whitespace characters
   * (defined by Character.isWhitespace(char), in addition to the characters
   * provided, from the end of the provided string.
   *
   * @param s String to be trimmed
   * @return String with whitespace and characters in extraChars removed
   *                   from the end.
   */
  private static String trimEnd(String s) {
    int trimCount = 0;
    while (trimCount < s.length()) {
      char ch = s.charAt(s.length() - trimCount - 1);
      if (Character.isWhitespace(ch)) {
        trimCount++;
      } else {
        break;
      }
    }

    if (trimCount == 0) {
      return s;
    }
    return s.substring(0, s.length() - trimCount);
  }

  // Based on ES4 grammar proposed on July 10, 2008.
  // http://wiki.ecmascript.org/doku.php?id=spec:spec
  // Deliberately written to line up with the actual grammar rules,
  // for maximum flexibility.

  // TODO(nicksantos): The current implementation tries to maintain backwards
  // compatibility with previous versions of the spec whenever we can.
  // We should try to gradually withdraw support for these.

  /**
   * TypeExpressionAnnotation := TypeExpression |
   *     '{' TopLevelTypeExpression '}'
   */
  private Node parseTypeExpressionAnnotation(JsDocToken token) {
    if (token == JsDocToken.LC) {
      skipEOLs();
      Node typeNode = parseTopLevelTypeExpression(next());
      if (typeNode != null) {
        skipEOLs();
        if (!match(JsDocToken.RC)) {
          reportTypeSyntaxWarning("msg.jsdoc.missing.rc");
        } else {
          next();
        }
      }

      return typeNode;
    } else {
      return parseTypeExpression(token);
    }
  }

  /**
   * ParamTypeExpressionAnnotation :=
   *     '{' OptionalParameterType '}' |
   *     '{' TopLevelTypeExpression '}' |
   *     '{' '...' TopLevelTypeExpression '}'
   *
   * OptionalParameterType :=
   *     TopLevelTypeExpression '='
   */
  private Node parseParamTypeExpressionAnnotation(JsDocToken token) {
    Preconditions.checkArgument(token == JsDocToken.LC);

    skipEOLs();

    boolean restArg = false;
    token = next();
    if (token == JsDocToken.ELLIPSIS) {
      token = next();
      if (token == JsDocToken.RC) {
        // EMPTY represents the UNKNOWN type in the Type AST.
        return wrapNode(Token.ELLIPSIS, IR.empty());
      }
      restArg = true;
    }

    Node typeNode = parseTopLevelTypeExpression(token);
    if (typeNode != null) {
      skipEOLs();
      if (restArg) {
        typeNode = wrapNode(Token.ELLIPSIS, typeNode);
      } else if (match(JsDocToken.EQUALS)) {
        next();
        skipEOLs();
        typeNode = wrapNode(Token.EQUALS, typeNode);
      }

      if (!match(JsDocToken.RC)) {
        reportTypeSyntaxWarning("msg.jsdoc.missing.rc");
      } else {
        next();
      }
    }

    return typeNode;
  }

  /**
   * TypeNameAnnotation := TypeName | '{' TypeName '}'
   */
  private Node parseTypeNameAnnotation(JsDocToken token) {
    int PROBE_START_LINE_1649 = 1664;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_3805_line_1649 = token;
	com.google.javascript.jscomp.parsing.JsDocToken q_lc_105_line_1649 = JsDocToken.LC;
	boolean js_doc_info_parser_1_expr131_line_1649 = p_token_3805_line_1649 == q_lc_105_line_1649;
	int PROBE_END_LINE_1649 = 1664;
	if (js_doc_info_parser_1_expr131_line_1649) {
      skipEOLs();
      Node typeNode = parseTypeName(next());
      if (typeNode != null) {
        skipEOLs();
        if (!match(JsDocToken.RC)) {
          reportTypeSyntaxWarning("msg.jsdoc.missing.rc");
        } else {
          next();
        }
      }

      return typeNode;
    } else {
      int PROBE_START_LINE_1663 = 1663;
		com.google.javascript.jscomp.parsing.JsDocToken p_token_3805_line_1663 = token;
		com.google.javascript.rhino.Node js_doc_info_parser_1_expr132_line_1663 = parseTypeName(p_token_3805_line_1663);
		int PROBE_END_LINE_1663 = 1663;
	return js_doc_info_parser_1_expr132_line_1663;
    }
  }

  /**
   * TopLevelTypeExpression := TypeExpression
   *     | TypeUnionList
   *
   * We made this rule up, for the sake of backwards compatibility.
   */
  private Node parseTopLevelTypeExpression(JsDocToken token) {
    Node typeExpr = parseTypeExpression(token);
    if (typeExpr != null) {
      // top-level unions are allowed
      if (match(JsDocToken.PIPE)) {
        next();
        if (match(JsDocToken.PIPE)) {
          // We support double pipes for backwards-compatibility.
          next();
        }
        skipEOLs();
        token = next();
        return parseUnionTypeWithAlternate(token, typeExpr);
      }
    }
    return typeExpr;
  }

  /**
   * TypeExpressionList := TopLevelTypeExpression
   *     | TopLevelTypeExpression ',' TypeExpressionList
   */
  private Node parseTypeExpressionList(JsDocToken token) {
    Node typeExpr = parseTopLevelTypeExpression(token);
    if (typeExpr == null) {
      return null;
    }
    Node typeList = IR.block();
    typeList.addChildToBack(typeExpr);
    while (match(JsDocToken.COMMA)) {
      next();
      skipEOLs();
      typeExpr = parseTopLevelTypeExpression(next());
      if (typeExpr == null) {
        return null;
      }
      typeList.addChildToBack(typeExpr);
    }
    return typeList;
  }

  /**
   * TypeExpression := BasicTypeExpression
   *     | '?' BasicTypeExpression
   *     | '!' BasicTypeExpression
   *     | BasicTypeExpression '?'
   *     | BasicTypeExpression '!'
   *     | '?'
   */
  private Node parseTypeExpression(JsDocToken token) {
    if (token == JsDocToken.QMARK) {
      // A QMARK could mean that a type is nullable, or that it's unknown.
      // We use look-ahead 1 to determine whether it's unknown. Otherwise,
      // we assume it means nullable. There are 5 cases:
      // {?} - right curly
      // {?=} - equals
      // {function(?, number)} - comma
      // {function(number, ?)} - right paren
      // {function(number, ...[?])} - right bracket
      // {function(): ?|number} - pipe
      // {Array.<?>} - greater than
      // I'm not a big fan of using look-ahead for this, but it makes
      // the type language a lot nicer.
      token = next();
      if (token == JsDocToken.COMMA ||
          token == JsDocToken.EQUALS ||
          token == JsDocToken.RB ||
          token == JsDocToken.RC ||
          token == JsDocToken.RP ||
          token == JsDocToken.PIPE ||
          token == JsDocToken.GT) {
        restoreLookAhead(token);
        return newNode(Token.QMARK);
      }

      return wrapNode(Token.QMARK, parseBasicTypeExpression(token));
    } else if (token == JsDocToken.BANG) {
      return wrapNode(Token.BANG, parseBasicTypeExpression(next()));
    } else {
      Node basicTypeExpr = parseBasicTypeExpression(token);
      if (basicTypeExpr != null) {
        if (match(JsDocToken.QMARK)) {
          next();
          return wrapNode(Token.QMARK, basicTypeExpr);
        } else if (match(JsDocToken.BANG)) {
          next();
          return wrapNode(Token.BANG, basicTypeExpr);
        }
      }

      return basicTypeExpr;
    }
  }

  /**
   * BasicTypeExpression := '*' | 'null' | 'undefined' | TypeName
   *     | FunctionType | UnionType | RecordType | ArrayType
   */
  private Node parseBasicTypeExpression(JsDocToken token) {
    if (token == JsDocToken.STAR) {
      return newNode(Token.STAR);
    } else if (token == JsDocToken.LB) {
      skipEOLs();
      return parseArrayType(next());
    } else if (token == JsDocToken.LC) {
      skipEOLs();
      return parseRecordType(next());
    } else if (token == JsDocToken.LP) {
      skipEOLs();
      return parseUnionType(next());
    } else if (token == JsDocToken.STRING) {
      String string = stream.getString();
      if ("function".equals(string)) {
        skipEOLs();
        return parseFunctionType(next());
      } else if ("null".equals(string) || "undefined".equals(string)) {
        return newStringNode(string);
      } else {
        return parseTypeName(token);
      }
    }

    restoreLookAhead(token);
    return reportGenericTypeSyntaxWarning();
  }

  /**
   * TypeName := NameExpression | NameExpression TypeApplication
   * TypeApplication := '.<' TypeExpressionList '>'
   */
  private Node parseTypeName(JsDocToken token) {
    int PROBE_START_LINE_1804 = 1806;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_3810_line_1804 = token;
	com.google.javascript.jscomp.parsing.JsDocToken q_string_105_line_1804 = JsDocToken.STRING;
	boolean js_doc_info_parser_1_expr133_line_1804 = p_token_3810_line_1804 != q_string_105_line_1804;
	int PROBE_END_LINE_1804 = 1806;
	if (js_doc_info_parser_1_expr133_line_1804) {
      return reportGenericTypeSyntaxWarning();
    }

    int PROBE_START_LINE_1808 = 1808;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_1808 = stream;
	String js_doc_info_parser_1_expr134_line_1808 = f_stream_3749_line_1808.getString();
	int PROBE_END_LINE_1808 = 1808;
	String typeName = js_doc_info_parser_1_expr134_line_1808;
    int PROBE_START_LINE_1809 = 1809;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_1809 = stream;
	int js_doc_info_parser_1_expr135_line_1809 = f_stream_3749_line_1809.getLineno();
	int PROBE_END_LINE_1809 = 1809;
	int lineno = js_doc_info_parser_1_expr135_line_1809;
    int PROBE_START_LINE_1810 = 1810;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_1810 = stream;
	int js_doc_info_parser_1_expr136_line_1810 = f_stream_3749_line_1810.getCharno();
	int PROBE_END_LINE_1810 = 1810;
	int charno = js_doc_info_parser_1_expr136_line_1810;
    while (true) {
      int PROBE_START_LINE_1811 = 1812;
			com.google.javascript.jscomp.parsing.JsDocToken q_eol_105_line_1811 = JsDocToken.EOL;
			boolean js_doc_info_parser_1_expr138_line_1811 = match(q_eol_105_line_1811);
			boolean js_doc_info_parser_1_expr137_line_1811 = js_doc_info_parser_1_expr138_line_1811
					&& typeName.charAt(typeName.length() - 1) == '.';
			if (!(js_doc_info_parser_1_expr137_line_1811)) {
				break;
			}
			int PROBE_END_LINE_1811 = 1812;
	skipEOLs();
      if (match(JsDocToken.STRING)) {
        next();
        typeName += stream.getString();
      }
    }

    int PROBE_START_LINE_1820 = 1820;
	String v_type_name_3811_line_1820 = typeName;
	int v_lineno_3812_line_1820 = lineno;
	int v_charno_3813_line_1820 = charno;
	Node js_doc_info_parser_1_expr139_line_1820 = newStringNode(v_type_name_3811_line_1820, v_lineno_3812_line_1820,
			v_charno_3813_line_1820);
	int PROBE_END_LINE_1820 = 1820;
	Node typeNameNode = js_doc_info_parser_1_expr139_line_1820;

    int PROBE_START_LINE_1822 = 1836;
	com.google.javascript.jscomp.parsing.JsDocToken q_lt_106_line_1822 = JsDocToken.LT;
	boolean js_doc_info_parser_1_expr140_line_1822 = match(q_lt_106_line_1822);
	int PROBE_END_LINE_1822 = 1836;
	if (js_doc_info_parser_1_expr140_line_1822) {
      next();
      skipEOLs();
      Node memberType = parseTypeExpressionList(next());
      if (memberType != null) {
        typeNameNode.addChildToFront(memberType);

        skipEOLs();
        if (!match(JsDocToken.GT)) {
          return reportTypeSyntaxWarning("msg.jsdoc.missing.gt");
        }

        next();
      }
    }
    int PROBE_START_LINE_1837 = 1837;
	com.google.javascript.rhino.Node v_type_name_node_3814_line_1837 = typeNameNode;
	int PROBE_END_LINE_1837 = 1837;
	return v_type_name_node_3814_line_1837;
  }

  /**
   * FunctionType := 'function' FunctionSignatureType
   * FunctionSignatureType :=
   *    TypeParameters '(' 'this' ':' TypeName, ParametersType ')' ResultType
   */
  private Node parseFunctionType(JsDocToken token) {
    // NOTE(nicksantos): We're not implementing generics at the moment, so
    // just throw out TypeParameters.
    if (token != JsDocToken.LP) {
      restoreLookAhead(token);
      return reportTypeSyntaxWarning("msg.jsdoc.missing.lp");
    }

    Node functionType = newNode(Token.FUNCTION);
    Node parameters = null;
    skipEOLs();
    if (!match(JsDocToken.RP)) {
      token = next();

      boolean hasParams = true;
      if (token == JsDocToken.STRING) {
        String tokenStr = stream.getString();
        boolean isThis = "this".equals(tokenStr);
        boolean isNew = "new".equals(tokenStr);
        if (isThis || isNew) {
          if (match(JsDocToken.COLON)) {
            next();
            skipEOLs();
            Node contextType = wrapNode(
                isThis ? Token.THIS : Token.NEW,
                parseTypeName(next()));
            if (contextType == null) {
              return null;
            }

            functionType.addChildToFront(contextType);
          } else {
            return reportTypeSyntaxWarning("msg.jsdoc.missing.colon");
          }

          if (match(JsDocToken.COMMA)) {
            next();
            skipEOLs();
            token = next();
          } else {
            hasParams = false;
          }
        }
      }

      if (hasParams) {
        parameters = parseParametersType(token);
        if (parameters == null) {
          return null;
        }
      }
    }

    if (parameters != null) {
      functionType.addChildToBack(parameters);
    }

    skipEOLs();
    if (!match(JsDocToken.RP)) {
      return reportTypeSyntaxWarning("msg.jsdoc.missing.rp");
    }

    skipEOLs();
    Node resultType = parseResultType(next());
    if (resultType == null) {
      return null;
    } else {
      functionType.addChildToBack(resultType);
    }
    return functionType;
  }

  /**
   * ParametersType := RestParameterType | NonRestParametersType
   *     | NonRestParametersType ',' RestParameterType
   * RestParameterType := '...' Identifier
   * NonRestParametersType := ParameterType ',' NonRestParametersType
   *     | ParameterType
   *     | OptionalParametersType
   * OptionalParametersType := OptionalParameterType
   *     | OptionalParameterType, OptionalParametersType
   * OptionalParameterType := ParameterType=
   * ParameterType := TypeExpression | Identifier ':' TypeExpression
   */
  // NOTE(nicksantos): The official ES4 grammar forces optional and rest
  // arguments to come after the required arguments. Our parser does not
  // enforce this. Instead we allow them anywhere in the function at parse-time,
  // and then warn about them during type resolution.
  //
  // In theory, it might be mathematically nicer to do the order-checking here.
  // But in practice, the order-checking for structural functions is exactly
  // the same as the order-checking for @param annotations. And the latter
  // has to happen during type resolution. Rather than duplicate the
  // order-checking in two places, we just do all of it in type resolution.
  private Node parseParametersType(JsDocToken token) {
    Node paramsType = newNode(Token.PARAM_LIST);
    boolean isVarArgs = false;
    Node paramType = null;
    if (token != JsDocToken.RP) {
      do {
        if (paramType != null) {
          // skip past the comma
          next();
          skipEOLs();
          token = next();
        }

        if (token == JsDocToken.ELLIPSIS) {
          // In the latest ES4 proposal, there are no type constraints allowed
          // on variable arguments. We support the old syntax for backwards
          // compatibility, but we should gradually tear it out.
          skipEOLs();
          if (match(JsDocToken.RP)) {
            paramType = newNode(Token.ELLIPSIS);
          } else {
            skipEOLs();
            if (!match(JsDocToken.LB)) {
              return reportTypeSyntaxWarning("msg.jsdoc.missing.lb");
            }

            next();
            skipEOLs();
            paramType = wrapNode(Token.ELLIPSIS, parseTypeExpression(next()));
            skipEOLs();
            if (!match(JsDocToken.RB)) {
              return reportTypeSyntaxWarning("msg.jsdoc.missing.rb");
            }
            skipEOLs();
            next();
          }

          isVarArgs = true;
        } else {
          paramType = parseTypeExpression(token);
          if (match(JsDocToken.EQUALS)) {
            skipEOLs();
            next();
            paramType = wrapNode(Token.EQUALS, paramType);
          }
        }

        if (paramType == null) {
          return null;
        }
        paramsType.addChildToBack(paramType);
        if (isVarArgs) {
          break;
        }
      } while (match(JsDocToken.COMMA));
    }

    if (isVarArgs && match(JsDocToken.COMMA)) {
      return reportTypeSyntaxWarning("msg.jsdoc.function.varargs");
    }

    // The right paren will be checked by parseFunctionType

    return paramsType;
  }

  /**
   * ResultType := <empty> | ':' void | ':' TypeExpression
   */
  private Node parseResultType(JsDocToken token) {
    skipEOLs();
    if (!match(JsDocToken.COLON)) {
      return newNode(Token.EMPTY);
    }

    token = next();
    skipEOLs();
    if (match(JsDocToken.STRING) && "void".equals(stream.getString())) {
      next();
      return newNode(Token.VOID);
    } else {
      return parseTypeExpression(next());
    }
  }

  /**
   * UnionType := '(' TypeUnionList ')'
   * TypeUnionList := TypeExpression | TypeExpression '|' TypeUnionList
   *
   * We've removed the empty union type.
   */
  private Node parseUnionType(JsDocToken token) {
    return parseUnionTypeWithAlternate(token, null);
  }

  /**
   * Create a new union type, with an alternate that has already been
   * parsed. The alternate may be null.
   */
  private Node parseUnionTypeWithAlternate(JsDocToken token, Node alternate) {
    Node union = newNode(Token.PIPE);
    if (alternate != null) {
      union.addChildToBack(alternate);
    }

    Node expr = null;
    do {
      if (expr != null) {
        skipEOLs();
        token = next();
        Preconditions.checkState(
            token == JsDocToken.PIPE || token == JsDocToken.COMMA);

        boolean isPipe = token == JsDocToken.PIPE;
        if (isPipe && match(JsDocToken.PIPE)) {
          // We support double pipes for backwards compatibility.
          next();
        }
        skipEOLs();
        token = next();
      }
      expr = parseTypeExpression(token);
      if (expr == null) {
        return null;
      }

      union.addChildToBack(expr);
      // We support commas for backwards compatibility.
    } while (match(JsDocToken.PIPE, JsDocToken.COMMA));

    if (alternate == null) {
      skipEOLs();
      if (!match(JsDocToken.RP)) {
        return reportTypeSyntaxWarning("msg.jsdoc.missing.rp");
      }
      next();
    }
    return union;
  }

  /**
   * ArrayType := '[' ElementTypeList ']'
   * ElementTypeList := <empty> | TypeExpression | '...' TypeExpression
   *     | TypeExpression ',' ElementTypeList
   */
  private Node parseArrayType(JsDocToken token) {
    Node array = newNode(Token.LB);
    Node arg = null;
    boolean hasVarArgs = false;

    do {
      if (arg != null) {
        next();
        skipEOLs();
        token = next();
      }
      if (token == JsDocToken.ELLIPSIS) {
        arg = wrapNode(Token.ELLIPSIS, parseTypeExpression(next()));
        hasVarArgs = true;
      } else {
        arg = parseTypeExpression(token);
      }

      if (arg == null) {
        return null;
      }

      array.addChildToBack(arg);
      if (hasVarArgs) {
        break;
      }
      skipEOLs();
    } while (match(JsDocToken.COMMA));

    if (!match(JsDocToken.RB)) {
      return reportTypeSyntaxWarning("msg.jsdoc.missing.rb");
    }
    next();
    return array;
  }

  /**
   * RecordType := '{' FieldTypeList '}'
   */
  private Node parseRecordType(JsDocToken token) {
    Node recordType = newNode(Token.LC);
    Node fieldTypeList = parseFieldTypeList(token);

    if (fieldTypeList == null) {
      return reportGenericTypeSyntaxWarning();
    }

    skipEOLs();
    if (!match(JsDocToken.RC)) {
      return reportTypeSyntaxWarning("msg.jsdoc.missing.rc");
    }

    next();

    recordType.addChildToBack(fieldTypeList);
    return recordType;
  }

  /**
   * FieldTypeList := FieldType | FieldType ',' FieldTypeList
   */
  private Node parseFieldTypeList(JsDocToken token) {
    Node fieldTypeList = newNode(Token.LB);

    do {
      Node fieldType = parseFieldType(token);

      if (fieldType == null) {
        return null;
      }

      fieldTypeList.addChildToBack(fieldType);

      skipEOLs();
      if (!match(JsDocToken.COMMA)) {
        break;
      }

      // Move to the comma token.
      next();

      // Move to the token passed the comma.
      skipEOLs();
      token = next();
    } while (true);

    return fieldTypeList;
  }

  /**
   * FieldType := FieldName | FieldName ':' TypeExpression
   */
  private Node parseFieldType(JsDocToken token) {
    Node fieldName = parseFieldName(token);

    if (fieldName == null) {
      return null;
    }

    skipEOLs();
    if (!match(JsDocToken.COLON)) {
      return fieldName;
    }

    // Move to the colon.
    next();

    // Move to the token after the colon and parse
    // the type expression.
    skipEOLs();
    Node typeExpression = parseTypeExpression(next());

    if (typeExpression == null) {
      return null;
    }

    Node fieldType = newNode(Token.COLON);
    fieldType.addChildToBack(fieldName);
    fieldType.addChildToBack(typeExpression);
    return fieldType;
  }

  /**
   * FieldName := NameExpression | StringLiteral | NumberLiteral |
   * ReservedIdentifier
   */
  private Node parseFieldName(JsDocToken token) {
    switch (token) {
      case STRING:
        String string = stream.getString();
        return newStringNode(string);

      default:
        return null;
    }
  }

  private Node wrapNode(int type, Node n) {
    int PROBE_START_LINE_2222 = 2224;
	com.google.javascript.rhino.Node p_n_3827_line_2222 = n;
	boolean js_doc_info_parser_1_expr142_line_2222 = p_n_3827_line_2222 == null;
	com.google.javascript.rhino.Node js_doc_info_parser_1_expr141_line_2222 = js_doc_info_parser_1_expr142_line_2222
			? null
			: new Node(type, n, stream.getLineno(), stream.getCharno()).clonePropsFrom(templateNode);
	int PROBE_END_LINE_2222 = 2224;
	return js_doc_info_parser_1_expr141_line_2222;
  }

  private Node newNode(int type) {
    return new Node(type, stream.getLineno(),
        stream.getCharno()).clonePropsFrom(templateNode);
  }

  private Node newStringNode(String s) {
    return newStringNode(s, stream.getLineno(), stream.getCharno());
  }

  private Node newStringNode(String s, int lineno, int charno) {
    int PROBE_START_LINE_2237 = 2237;
	String p_s_3830_line_2237 = s;
	int p_lineno_3831_line_2237 = lineno;
	int p_charno_3832_line_2237 = charno;
	com.google.javascript.rhino.Node js_doc_info_parser_1_expr145_line_2237 = Node.newString(p_s_3830_line_2237,
			p_lineno_3831_line_2237, p_charno_3832_line_2237);
	com.google.javascript.rhino.Node f_template_node_3756_line_2237 = templateNode;
	Node js_doc_info_parser_1_expr144_line_2237 = js_doc_info_parser_1_expr145_line_2237
			.clonePropsFrom(f_template_node_3756_line_2237);
	int PROBE_END_LINE_2237 = 2237;
	Node n = js_doc_info_parser_1_expr144_line_2237;
    int PROBE_START_LINE_2238 = 2238;
	com.google.javascript.rhino.Node v_n_3833_line_2238 = n;
	String p_s_3830_line_2238 = s;
	int js_doc_info_parser_1_expr147_line_2238 = p_s_3830_line_2238.length();
	int PROBE_END_LINE_2238 = 2238;
	v_n_3833_line_2238.setLength(js_doc_info_parser_1_expr147_line_2238);
    int PROBE_START_LINE_2239 = 2239;
	com.google.javascript.rhino.Node v_n_3833_line_2239 = n;
	int PROBE_END_LINE_2239 = 2239;
	return v_n_3833_line_2239;
  }

  // This is similar to IRFactory.createTemplateNode to share common props
  // e.g., source-name, between all nodes.
  private Node createTemplateNode() {
    int PROBE_START_LINE_2246 = 2246;
	Node js_doc_info_parser_1_expr148_line_2246 = IR.script();
	int PROBE_END_LINE_2246 = 2246;
	// The Node type choice is arbitrary.
    Node templateNode = js_doc_info_parser_1_expr148_line_2246;
    int PROBE_START_LINE_2247 = 2250;
	com.google.javascript.rhino.Node v_template_node_3834_line_2247 = templateNode;
	int PROBE_END_LINE_2247 = 2250;
	v_template_node_3834_line_2247.setStaticSourceFile(
      this.associatedNode != null ?
      this.associatedNode.getStaticSourceFile() :
      null);
    int PROBE_START_LINE_2251 = 2251;
	com.google.javascript.rhino.Node v_template_node_3834_line_2251 = templateNode;
	int PROBE_END_LINE_2251 = 2251;
	return v_template_node_3834_line_2251;
  }

  private Node reportTypeSyntaxWarning(String warning) {
    parser.addTypeWarning(warning, stream.getLineno(), stream.getCharno());
    return null;
  }

  private Node reportGenericTypeSyntaxWarning() {
    return reportTypeSyntaxWarning("msg.jsdoc.type.syntax");
  }

  /**
   * Eats tokens until {@link JsDocToken#EOL} included, and switches back the
   * state to {@link State#SEARCHING_ANNOTATION}.
   */
  private JsDocToken eatTokensUntilEOL() {
    int PROBE_START_LINE_2268 = 2268;
	com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr152_line_2268 = next();
	com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr151_line_2268 = eatTokensUntilEOL(
			js_doc_info_parser_1_expr152_line_2268);
	int PROBE_END_LINE_2268 = 2268;
	return js_doc_info_parser_1_expr151_line_2268;
  }

  /**
   * Eats tokens until {@link JsDocToken#EOL} included, and switches back the
   * state to {@link State#SEARCHING_ANNOTATION}.
   */
  private JsDocToken eatTokensUntilEOL(JsDocToken token) {
    do {
      int PROBE_START_LINE_2277 = 2281;
		com.google.javascript.jscomp.parsing.JsDocToken p_token_3836_line_2277 = token;
		com.google.javascript.jscomp.parsing.JsDocToken q_eol_107_line_2277 = JsDocToken.EOL;
		boolean js_doc_info_parser_1_expr155_line_2277 = p_token_3836_line_2277 == q_eol_107_line_2277;
		boolean js_doc_info_parser_1_expr156_line_2277 = false;
		if (!js_doc_info_parser_1_expr155_line_2277) {
			com.google.javascript.jscomp.parsing.JsDocToken p_token_3836_line_2277_v1 = token;
			com.google.javascript.jscomp.parsing.JsDocToken q_eoc_107_line_2277 = JsDocToken.EOC;
			js_doc_info_parser_1_expr156_line_2277 = p_token_3836_line_2277_v1 == q_eoc_107_line_2277;
		}
		boolean js_doc_info_parser_1_expr154_line_2277 = js_doc_info_parser_1_expr155_line_2277
				|| js_doc_info_parser_1_expr156_line_2277;
		boolean js_doc_info_parser_1_expr153_line_2277 = js_doc_info_parser_1_expr154_line_2277
				|| token == JsDocToken.EOF;
		int PROBE_END_LINE_2277 = 2281;
	if (js_doc_info_parser_1_expr153_line_2277) {
        int PROBE_START_LINE_2279 = 2279;
			com.google.javascript.jscomp.parsing.JsDocInfoParser.State q_searching_annotation_108_line_2279 = State.SEARCHING_ANNOTATION;
			int PROBE_END_LINE_2279 = 2279;
		state = q_searching_annotation_108_line_2279;
        int PROBE_START_LINE_2280 = 2280;
		com.google.javascript.jscomp.parsing.JsDocToken p_token_3836_line_2280 = token;
		int PROBE_END_LINE_2280 = 2280;
		return p_token_3836_line_2280;
      }
      int PROBE_START_LINE_2282 = 2282;
	com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr159_line_2282 = next();
	int PROBE_END_LINE_2282 = 2282;
	token = js_doc_info_parser_1_expr159_line_2282;
    } while (true);
  }

  /**
   * Specific value indicating that the {@link #unreadToken} contains no token.
   */
  private static final JsDocToken NO_UNREAD_TOKEN = null;

  int PROBE_START_LINE_2291 = 2294;

private com.google.javascript.jscomp.parsing.JsDocToken f_no_unread_token_3837_line_2294 = NO_UNREAD_TOKEN;

int PROBE_END_LINE_2291 = 2294;

/**
   * One token buffer.
   */
  private JsDocToken unreadToken = f_no_unread_token_3837_line_2294;

  /** Restores the lookahead token to the token stream */
  private void restoreLookAhead(JsDocToken token) {
    unreadToken = token;
  }

  /**
   * Tests whether the next symbol of the token stream matches the specific
   * token.
   */
  private boolean match(JsDocToken token) {
    int PROBE_START_LINE_2306 = 2306;
	com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr161_line_2306 = next();
	int PROBE_END_LINE_2306 = 2306;
	unreadToken = js_doc_info_parser_1_expr161_line_2306;
    int PROBE_START_LINE_2307 = 2307;
	com.google.javascript.jscomp.parsing.JsDocToken f_unread_token_3838_line_2307 = unreadToken;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_3840_line_2307 = token;
	boolean js_doc_info_parser_1_expr162_line_2307 = f_unread_token_3838_line_2307 == p_token_3840_line_2307;
	int PROBE_END_LINE_2307 = 2307;
	return js_doc_info_parser_1_expr162_line_2307;
  }

  /**
   * Tests that the next symbol of the token stream matches one of the specified
   * tokens.
   */
  private boolean match(JsDocToken token1, JsDocToken token2) {
    unreadToken = next();
    return unreadToken == token1 || unreadToken == token2;
  }

  /**
   * Gets the next token of the token stream or the buffered token if a matching
   * was previously made.
   */
  private JsDocToken next() {
    int PROBE_START_LINE_2324 = 2328;
	com.google.javascript.jscomp.parsing.JsDocToken f_unread_token_3838_line_2324 = unreadToken;
	com.google.javascript.jscomp.parsing.JsDocToken f_no_unread_token_3837_line_2324 = NO_UNREAD_TOKEN;
	boolean js_doc_info_parser_1_expr163_line_2324 = f_unread_token_3838_line_2324 == f_no_unread_token_3837_line_2324;
	int PROBE_END_LINE_2324 = 2328;
	if (js_doc_info_parser_1_expr163_line_2324) {
      int PROBE_START_LINE_2325 = 2325;
		com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_3749_line_2325 = stream;
		com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr164_line_2325 = f_stream_3749_line_2325
				.getJsDocToken();
		int PROBE_END_LINE_2325 = 2325;
	return js_doc_info_parser_1_expr164_line_2325;
    } else {
      int PROBE_START_LINE_2327 = 2327;
		com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr165_line_2327 = current();
		int PROBE_END_LINE_2327 = 2327;
	return js_doc_info_parser_1_expr165_line_2327;
    }
  }

  /**
   * Gets the current token, invalidating it in the process.
   */
  private JsDocToken current() {
    int PROBE_START_LINE_2335 = 2335;
	JsDocToken f_unread_token_3838_line_2335 = unreadToken;
	int PROBE_END_LINE_2335 = 2335;
	JsDocToken t = f_unread_token_3838_line_2335;
    int PROBE_START_LINE_2336 = 2336;
	com.google.javascript.jscomp.parsing.JsDocToken f_no_unread_token_3837_line_2336 = NO_UNREAD_TOKEN;
	int PROBE_END_LINE_2336 = 2336;
	unreadToken = f_no_unread_token_3837_line_2336;
    int PROBE_START_LINE_2337 = 2337;
	com.google.javascript.jscomp.parsing.JsDocToken v_t_3843_line_2337 = t;
	int PROBE_END_LINE_2337 = 2337;
	return v_t_3843_line_2337;
  }

  /**
   * Skips all EOLs and all empty lines in the JSDoc. Call this method if you
   * want the JSDoc entry to span multiple lines.
   */
  private void skipEOLs() {
    while (true) {
      int PROBE_START_LINE_2345 = 2345;
		com.google.javascript.jscomp.parsing.JsDocToken q_eol_108_line_2345 = JsDocToken.EOL;
		boolean js_doc_info_parser_1_expr167_line_2345 = match(q_eol_108_line_2345);
		if (!(js_doc_info_parser_1_expr167_line_2345)) {
			break;
		}
		int PROBE_END_LINE_2345 = 2345;
	next();
      if (match(JsDocToken.STAR)) {
        next();
      }
    }
  }

  /**
   * Determines whether the parser has been populated with docinfo with a
   * fileoverview tag.
   */
  private boolean hasParsedFileOverviewDocInfo() {
    int PROBE_START_LINE_2358 = 2358;
	com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_3752_line_2358 = jsdocBuilder;
	boolean js_doc_info_parser_1_expr168_line_2358 = f_jsdoc_builder_3752_line_2358.isPopulatedWithFileOverview();
	int PROBE_END_LINE_2358 = 2358;
	return js_doc_info_parser_1_expr168_line_2358;
  }

  boolean hasParsedJSDocInfo() {
    return jsdocBuilder.isPopulated();
  }

  JSDocInfo retrieveAndResetParsedJSDocInfo() {
    int PROBE_START_LINE_2366 = 2366;
	com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_3752_line_2366 = jsdocBuilder;
	com.google.javascript.rhino.Node f_associated_node_3750_line_2366 = associatedNode;
	com.google.javascript.rhino.JSDocInfo js_doc_info_parser_1_expr169_line_2366 = f_jsdoc_builder_3752_line_2366
			.build(f_associated_node_3750_line_2366);
	int PROBE_END_LINE_2366 = 2366;
	return js_doc_info_parser_1_expr169_line_2366;
  }

  /**
   * Gets the fileoverview JSDocInfo, if any.
   */
  JSDocInfo getFileOverviewJSDocInfo() {
    int PROBE_START_LINE_2373 = 2373;
	com.google.javascript.rhino.JSDocInfo f_file_overview_jsdoc_info_3736_line_2373 = fileOverviewJSDocInfo;
	int PROBE_END_LINE_2373 = 2373;
	return f_file_overview_jsdoc_info_3736_line_2373;
  }

  /**
   * Look ahead for a type annotation by advancing the character stream.
   * Does not modify the token stream.
   * This is kind of a hack, and is only necessary because we use the token
   * stream to parse types, but need the underlying character stream to get
   * JsDoc descriptions.
   * @return Whether we found a type annotation.
   */
  private boolean lookAheadForTypeAnnotation() {
    boolean matchedLc = false;
    int c;
    while (true) {
      c = stream.getChar();
      if (c == ' ') {
        continue;
      } else if (c == '{') {
        matchedLc = true;
        break;
      } else {
        break;
      }
    }
    stream.ungetChar(c);
    return matchedLc;
  }
}
