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
import com.google.javascript.rhino.SimpleErrorReporter;
import com.google.javascript.rhino.Token;
import com.google.javascript.rhino.head.ErrorReporter;
import com.google.javascript.rhino.head.ast.Comment;
import com.google.javascript.rhino.jstype.StaticSourceFile;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import com.google.javascript.rhino.Node.FileLevelJsDocBuilder;
import java.util.ArrayList;

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
      errorReporter.warning(
          SimpleErrorReporter.getMessage1(messageId, messageArg),
          getSourceName(), lineno, null, charno);
    }

    void addParserWarning(String messageId, int lineno, int charno) {
      errorReporter.warning(SimpleErrorReporter.getMessage0(messageId),
          getSourceName(), lineno, null, charno);
    }

    void addTypeWarning(String messageId, String messageArg, int lineno,
                    int charno) {
      errorReporter.warning(
          "Bad type annotation. " +
          SimpleErrorReporter.getMessage1(messageId, messageArg),
          getSourceName(), lineno, null, charno);
    }

    void addTypeWarning(String messageId, int lineno, int charno) {
      errorReporter.warning(
          "Bad type annotation. " +
          SimpleErrorReporter.getMessage0(messageId),
          getSourceName(), lineno, null, charno);
    }
  }

  // The DocInfo with the fileoverview tag for the whole file.
  private JSDocInfo fileOverviewJSDocInfo = null;
  private State state;

  private final Map<String, Annotation> annotationNames;
  private final Set<String> suppressionNames;
  private static final Set<String> modifiesAnnotationKeywords =
      ImmutableSet.<String>of("this", "arguments");
  private static final Set<String> idGeneratorAnnotationKeywords =
      ImmutableSet.<String>of("unique", "consistent", "stable", "mapped");

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
    int PROBE_START_LINE_112 = 112;
		com.google.javascript.rhino.Node.FileLevelJsDocBuilder p_file_level_js_doc_builder_4354_line_112 = fileLevelJsDocBuilder;
		int PROBE_END_LINE_112 = 112;
	this.fileLevelJsDocBuilder = p_file_level_js_doc_builder_4354_line_112;
  }

  /**
   * Sets the file overview JSDocInfo, in order to warn about multiple uses of
   * the @fileoverview tag in a file.
   */
  void setFileOverviewJSDocInfo(JSDocInfo fileOverviewJSDocInfo) {
    int PROBE_START_LINE_120 = 120;
	com.google.javascript.rhino.JSDocInfo p_file_overview_jsdoc_info_4356_line_120 = fileOverviewJSDocInfo;
	int PROBE_END_LINE_120 = 120;
	this.fileOverviewJSDocInfo = p_file_overview_jsdoc_info_4356_line_120;
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
    int PROBE_START_LINE_134 = 134;
					com.google.javascript.jscomp.parsing.JsDocTokenStream p_stream_4360_line_134 = stream;
					int PROBE_END_LINE_134 = 134;
	this.stream = p_stream_4360_line_134;
    int PROBE_START_LINE_135 = 135;
	com.google.javascript.rhino.Node p_associated_node_4362_line_135 = associatedNode;
	int PROBE_END_LINE_135 = 135;
	this.associatedNode = p_associated_node_4362_line_135;

    int PROBE_START_LINE_138 = 139;
	com.google.javascript.rhino.Node p_associated_node_4362_line_138 = associatedNode;
	boolean js_doc_info_parser_1_expr20_line_138 = p_associated_node_4362_line_138 == null;
	com.google.javascript.rhino.jstype.StaticSourceFile js_doc_info_parser_1_expr18_line_138 = js_doc_info_parser_1_expr20_line_138
			? null
			: associatedNode.getStaticSourceFile();
	int PROBE_END_LINE_138 = 139;
	// Sometimes this will be null in tests.
    this.sourceFile = js_doc_info_parser_1_expr18_line_138;

    int PROBE_START_LINE_141 = 141;
	com.google.javascript.jscomp.parsing.Config p_config_4363_line_141 = config;
	boolean q_parse_js_doc_documentation_116_line_141 = p_config_4363_line_141.parseJsDocDocumentation;
	int PROBE_END_LINE_141 = 141;
	this.jsdocBuilder = new JSDocInfoBuilder(q_parse_js_doc_documentation_116_line_141);
    int PROBE_START_LINE_142 = 145;
	com.google.javascript.rhino.head.ast.Comment p_comment_node_4361_line_142 = commentNode;
	boolean js_doc_info_parser_1_expr26_line_142 = p_comment_node_4361_line_142 != null;
	int PROBE_END_LINE_142 = 145;
	if (js_doc_info_parser_1_expr26_line_142) {
      int PROBE_START_LINE_143 = 143;
		com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_4368_line_143 = this.jsdocBuilder;
		com.google.javascript.rhino.head.ast.Comment p_comment_node_4361_line_143 = commentNode;
		String js_doc_info_parser_1_expr28_line_143 = p_comment_node_4361_line_143.getValue();
		int PROBE_END_LINE_143 = 143;
	f_jsdoc_builder_4368_line_143.recordOriginalCommentString(js_doc_info_parser_1_expr28_line_143);
      int PROBE_START_LINE_144 = 144;
	com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_4368_line_144 = this.jsdocBuilder;
	com.google.javascript.rhino.head.ast.Comment p_comment_node_4361_line_144 = commentNode;
	int js_doc_info_parser_1_expr32_line_144 = p_comment_node_4361_line_144.getPosition();
	int PROBE_END_LINE_144 = 144;
	f_jsdoc_builder_4368_line_144.recordOriginalCommentPosition(js_doc_info_parser_1_expr32_line_144);
    }
    int PROBE_START_LINE_146 = 146;
	com.google.javascript.jscomp.parsing.Config p_config_4363_line_146 = config;
	Map<String, com.google.javascript.jscomp.parsing.Annotation> q_annotation_names_117_line_146 = p_config_4363_line_146.annotationNames;
	int PROBE_END_LINE_146 = 146;
	this.annotationNames = q_annotation_names_117_line_146;
    int PROBE_START_LINE_147 = 147;
	com.google.javascript.jscomp.parsing.Config p_config_4363_line_147 = config;
	Set<String> q_suppression_names_118_line_147 = p_config_4363_line_147.suppressionNames;
	int PROBE_END_LINE_147 = 147;
	this.suppressionNames = q_suppression_names_118_line_147;

    int PROBE_START_LINE_149 = 149;
	com.google.javascript.rhino.head.ErrorReporter p_error_reporter_4364_line_149 = errorReporter;
	int PROBE_END_LINE_149 = 149;
	this.errorReporter = p_error_reporter_4364_line_149;
    int PROBE_START_LINE_150 = 150;
	com.google.javascript.rhino.Node js_doc_info_parser_1_expr46_line_150 = this.createTemplateNode();
	int PROBE_END_LINE_150 = 150;
	this.templateNode = js_doc_info_parser_1_expr46_line_150;
  }

  private String getSourceName() {
    int PROBE_START_LINE_154 = 154;
	com.google.javascript.rhino.jstype.StaticSourceFile f_source_file_4367_line_154 = sourceFile;
	boolean js_doc_info_parser_1_expr50_line_154 = f_source_file_4367_line_154 == null;
	String js_doc_info_parser_1_expr51_line_154 = null;
	if (!js_doc_info_parser_1_expr50_line_154) {
		com.google.javascript.rhino.jstype.StaticSourceFile f_source_file_4367_line_154_v1 = sourceFile;
		js_doc_info_parser_1_expr51_line_154 = f_source_file_4367_line_154_v1.getName();
	}
	String js_doc_info_parser_1_expr49_line_154 = js_doc_info_parser_1_expr50_line_154
			? null
			: js_doc_info_parser_1_expr51_line_154;
	int PROBE_END_LINE_154 = 154;
	return js_doc_info_parser_1_expr49_line_154;
  }

  /**
   * Parse a description as a {@code @type}.
   */
  public JSDocInfo parseInlineTypeDoc() {
    skipEOLs();

    Node typeAst = parseAndRecordTypeNode(next());
    JSTypeExpression expr = createJSTypeExpression(typeAst);
    if (expr != null) {
      jsdocBuilder.recordType(expr);
      return retrieveAndResetParsedJSDocInfo();
    }
    return null;
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
    int PROBE_START_LINE_202 = 202;
	com.google.javascript.jscomp.parsing.JsDocInfoParser.State q_searching_annotation_119_line_202 = State.SEARCHING_ANNOTATION;
	int PROBE_END_LINE_202 = 202;
	state = q_searching_annotation_119_line_202;
    skipEOLs();

    int PROBE_START_LINE_205 = 205;
	JsDocToken js_doc_info_parser_1_expr54_line_205 = next();
	int PROBE_END_LINE_205 = 205;
	JsDocToken token = js_doc_info_parser_1_expr54_line_205;

    int PROBE_START_LINE_208 = 221;
	com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_4368_line_208 = jsdocBuilder;
	boolean js_doc_info_parser_1_expr55_line_208 = f_jsdoc_builder_4368_line_208.shouldParseDocumentation();
	int PROBE_END_LINE_208 = 221;
	// Always record that we have a comment.
    if (js_doc_info_parser_1_expr55_line_208) {
      ExtractionInfo blockInfo = extractBlockComment(token);
      token = blockInfo.token;
      if (!blockInfo.string.isEmpty()) {
        jsdocBuilder.recordBlockDescription(blockInfo.string);
      }
    } else {
      int PROBE_START_LINE_215 = 220;
		com.google.javascript.jscomp.parsing.JsDocToken v_token_4375_line_215 = token;
		com.google.javascript.jscomp.parsing.JsDocToken q_annotation_120_line_215 = JsDocToken.ANNOTATION;
		boolean js_doc_info_parser_1_expr57_line_215 = v_token_4375_line_215 != q_annotation_120_line_215;
		boolean js_doc_info_parser_1_expr56_line_215 = js_doc_info_parser_1_expr57_line_215 && token != JsDocToken.EOC;
		int PROBE_END_LINE_215 = 220;
	if (js_doc_info_parser_1_expr56_line_215) {
        // Mark that there was a description, but don't bother marking
        // what it was.
        jsdocBuilder.recordBlockDescription("");
      }
    }

    int PROBE_START_LINE_223 = 223;
	com.google.javascript.jscomp.parsing.JsDocToken v_token_4375_line_223 = token;
	ArrayList<com.google.javascript.jscomp.parsing.JsDocInfoParser.ExtendedTypeInfo> js_doc_info_parser_1_expr59_line_223 = Lists
			.<ExtendedTypeInfo>newArrayList();
	boolean js_doc_info_parser_1_expr58_line_223 = parseHelperLoop(v_token_4375_line_223,
			js_doc_info_parser_1_expr59_line_223);
	int PROBE_END_LINE_223 = 223;
	return js_doc_info_parser_1_expr58_line_223;
  }

  private boolean parseHelperLoop(JsDocToken token,
                                  List<ExtendedTypeInfo> extendedTypes) {
    while (true) {
      int PROBE_START_LINE_229 = 269;
		com.google.javascript.jscomp.parsing.JsDocToken p_token_4376_line_229 = token;
		int PROBE_END_LINE_229 = 269;
	switch (p_token_4376_line_229) {
        case ANNOTATION:
	int PROBE_START_LINE_231 = 236;
	com.google.javascript.jscomp.parsing.JsDocInfoParser.State f_state_4374_line_231 = state;
	com.google.javascript.jscomp.parsing.JsDocInfoParser.State q_searching_annotation_121_line_231 = State.SEARCHING_ANNOTATION;
	boolean js_doc_info_parser_1_expr60_line_231 = f_state_4374_line_231 == q_searching_annotation_121_line_231;
	int PROBE_END_LINE_231 = 236;
	if (js_doc_info_parser_1_expr60_line_231) {
            int PROBE_START_LINE_232 = 232;
			com.google.javascript.jscomp.parsing.JsDocInfoParser.State q_searching_newline_121_line_232 = State.SEARCHING_NEWLINE;
			int PROBE_END_LINE_232 = 232;
			state = q_searching_newline_121_line_232;
            int PROBE_START_LINE_233 = 233;
			com.google.javascript.jscomp.parsing.JsDocToken p_token_4376_line_233 = token;
			List<com.google.javascript.jscomp.parsing.JsDocInfoParser.ExtendedTypeInfo> p_extended_types_4377_line_233 = extendedTypes;
			com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr63_line_233 = parseAnnotation(
					p_token_4376_line_233, p_extended_types_4377_line_233);
			int PROBE_END_LINE_233 = 233;
			token = js_doc_info_parser_1_expr63_line_233;
          } else {
            token = next();
          }
          break;

        case EOC:
	int PROBE_START_LINE_240 = 242;
	boolean js_doc_info_parser_1_expr64_line_240 = hasParsedFileOverviewDocInfo();
	int PROBE_END_LINE_240 = 242;
	if (js_doc_info_parser_1_expr64_line_240) {
            fileOverviewJSDocInfo = retrieveAndResetParsedJSDocInfo();
          }
	int PROBE_START_LINE_243 = 243;
	List<com.google.javascript.jscomp.parsing.JsDocInfoParser.ExtendedTypeInfo> p_extended_types_4377_line_243 = extendedTypes;
	int PROBE_END_LINE_243 = 243;
	checkExtendedTypes(p_extended_types_4377_line_243);
          return true;

        case EOF:
          // discard any accumulated information
          jsdocBuilder.build(null);
          parser.addParserWarning("msg.unexpected.eof",
              stream.getLineno(), stream.getCharno());
          checkExtendedTypes(extendedTypes);
          return false;

        case EOL:
          if (state == State.SEARCHING_NEWLINE) {
            state = State.SEARCHING_ANNOTATION;
          }
          token = next();
          break;

        default:
          if (token == JsDocToken.STAR && state == State.SEARCHING_ANNOTATION) {
            token = next();
          } else {
            state = State.SEARCHING_NEWLINE;
            token = eatTokensUntilEOL();
          }
          break;
      }
    }
  }

  private JsDocToken parseAnnotation(JsDocToken token,
      List<ExtendedTypeInfo> extendedTypes) {
    // JSTypes are represented as Rhino AST nodes, and then resolved later.
    JSTypeExpression type = null;
    int PROBE_START_LINE_277 = 277;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_277 = stream;
	int js_doc_info_parser_1_expr66_line_277 = f_stream_4365_line_277.getLineno();
	int PROBE_END_LINE_277 = 277;
	int lineno = js_doc_info_parser_1_expr66_line_277;
    int PROBE_START_LINE_278 = 278;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_278 = stream;
	int js_doc_info_parser_1_expr67_line_278 = f_stream_4365_line_278.getCharno();
	int PROBE_END_LINE_278 = 278;
	int charno = js_doc_info_parser_1_expr67_line_278;

    int PROBE_START_LINE_280 = 280;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_280 = stream;
	String js_doc_info_parser_1_expr68_line_280 = f_stream_4365_line_280.getString();
	int PROBE_END_LINE_280 = 280;
	String annotationName = js_doc_info_parser_1_expr68_line_280;
    int PROBE_START_LINE_281 = 281;
	Map<String, com.google.javascript.jscomp.parsing.Annotation> f_annotation_names_4369_line_281 = annotationNames;
	String v_annotation_name_4382_line_281 = annotationName;
	Annotation js_doc_info_parser_1_expr69_line_281 = f_annotation_names_4369_line_281
			.get(v_annotation_name_4382_line_281);
	int PROBE_END_LINE_281 = 281;
	Annotation annotation = js_doc_info_parser_1_expr69_line_281;
    int PROBE_START_LINE_282 = 998;
	com.google.javascript.jscomp.parsing.Annotation v_annotation_4383_line_282 = annotation;
	boolean js_doc_info_parser_1_expr70_line_282 = v_annotation_4383_line_282 == null;
	int PROBE_END_LINE_282 = 998;
	if (js_doc_info_parser_1_expr70_line_282) {
      parser.addParserWarning("msg.bad.jsdoc.tag", annotationName,
          stream.getLineno(), stream.getCharno());
    } else {
      int PROBE_START_LINE_287 = 287;
		com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_4368_line_287 = jsdocBuilder;
		String v_annotation_name_4382_line_287 = annotationName;
		int v_lineno_4380_line_287 = lineno;
		int v_charno_4381_line_287 = charno;
		int PROBE_END_LINE_287 = 287;
	// Mark the beginning of the annotation.
      f_jsdoc_builder_4368_line_287.markAnnotation(v_annotation_name_4382_line_287, v_lineno_4380_line_287, v_charno_4381_line_287);

      int PROBE_START_LINE_289 = 997;
	com.google.javascript.jscomp.parsing.Annotation v_annotation_4383_line_289 = annotation;
	int PROBE_END_LINE_289 = 997;
	switch (v_annotation_4383_line_289) {
        case NG_INJECT:
          if (jsdocBuilder.isNgInjectRecorded()) {
            parser.addParserWarning("msg.jsdoc.nginject.extra",
              stream.getLineno(), stream.getCharno());
          } else {
            jsdocBuilder.recordNgInject(true);
          }
          return eatTokensUntilEOL();

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
          return token;

        case CONSISTENTIDGENERATOR:
          if (!jsdocBuilder.recordConsistentIdGenerator()) {
            parser.addParserWarning("msg.jsdoc.consistidgen",
              stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case STRUCT:
          if (!jsdocBuilder.recordStruct()) {
            parser.addTypeWarning("msg.jsdoc.incompat.type",
                                  stream.getLineno(),
                                  stream.getCharno());
          }
          return eatTokensUntilEOL();

        case DICT:
          if (!jsdocBuilder.recordDict()) {
            parser.addTypeWarning("msg.jsdoc.incompat.type",
                                  stream.getLineno(),
                                  stream.getCharno());
          }
          return eatTokensUntilEOL();

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
          return eatTokensUntilEOL();

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
          return token;

        case INTERFACE:
	int PROBE_START_LINE_371 = 379;
	com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_4368_line_371 = jsdocBuilder;
	boolean js_doc_info_parser_1_expr73_line_371 = f_jsdoc_builder_4368_line_371.recordInterface();
	boolean js_doc_info_parser_1_expr72_line_371 = !js_doc_info_parser_1_expr73_line_371;
	int PROBE_END_LINE_371 = 379;
	if (js_doc_info_parser_1_expr72_line_371) {
            if (jsdocBuilder.isConstructorRecorded()) {
              parser.addTypeWarning("msg.jsdoc.interface.constructor",
                  stream.getLineno(), stream.getCharno());
            } else {
              parser.addTypeWarning("msg.jsdoc.incompat.type",
                  stream.getLineno(), stream.getCharno());
            }
          }
	int PROBE_START_LINE_380 = 380;
	com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr74_line_380 = eatTokensUntilEOL();
	int PROBE_END_LINE_380 = 380;
	return js_doc_info_parser_1_expr74_line_380;

        case DESC:
          if (jsdocBuilder.isDescriptionRecorded()) {
            parser.addParserWarning("msg.jsdoc.desc.extra",
                stream.getLineno(), stream.getCharno());
            return eatTokensUntilEOL();
          } else {
            ExtractionInfo descriptionInfo =
                extractMultilineTextualBlock(token);

            String description = descriptionInfo.string;

            jsdocBuilder.recordDescription(description);
            token = descriptionInfo.token;
            return token;
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
          return token;

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
          return token;

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
          return token;

        case EXPORT:
          if (!jsdocBuilder.recordExport()) {
            parser.addParserWarning("msg.jsdoc.export",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case EXPOSE:
          if (!jsdocBuilder.recordExpose()) {
            parser.addParserWarning("msg.jsdoc.expose",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case EXTERNS:
          if (!jsdocBuilder.recordExterns()) {
            parser.addParserWarning("msg.jsdoc.externs",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case JAVA_DISPATCH:
          if (!jsdocBuilder.recordJavaDispatch()) {
            parser.addParserWarning("msg.jsdoc.javadispatch",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case EXTENDS:
        case IMPLEMENTS:
          skipEOLs();
          token = next();
          lineno = stream.getLineno();
          charno = stream.getCharno();
          boolean matchingRc = false;

          if (token == JsDocToken.LC) {
            token = next();
            matchingRc = true;
          }

          if (token == JsDocToken.STRING) {
            Node typeNode = parseAndRecordTypeNameNode(
                token, lineno, charno, matchingRc);

            lineno = stream.getLineno();
            charno = stream.getCharno();

            typeNode = wrapNode(Token.BANG, typeNode);
            type = createJSTypeExpression(typeNode);

            if (annotation == Annotation.EXTENDS) {
              // record the extended type, check later
              extendedTypes.add(new ExtendedTypeInfo(
                  type, stream.getLineno(), stream.getCharno()));
            } else {
              Preconditions.checkState(
                  annotation == Annotation.IMPLEMENTS);
              if (!jsdocBuilder.recordImplementedInterface(type)) {
                parser.addTypeWarning("msg.jsdoc.implements.duplicate",
                    lineno, charno);
              }
            }
            token = next();
            if (matchingRc) {
              if (token != JsDocToken.RC) {
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
          token = eatTokensUntilEOL(token);
          return token;

        case HIDDEN:
          if (!jsdocBuilder.recordHiddenness()) {
            parser.addParserWarning("msg.jsdoc.hidden",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

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
          return eatTokensUntilEOL();

        case MEANING:
          ExtractionInfo meaningInfo =
              extractMultilineTextualBlock(token);
          String meaning = meaningInfo.string;
          token = meaningInfo.token;
          if (!jsdocBuilder.recordMeaning(meaning)) {
            parser.addParserWarning("msg.jsdoc.meaning.extra",
                stream.getLineno(), stream.getCharno());
          }
          return token;

        case NO_ALIAS:
          if (!jsdocBuilder.recordNoAlias()) {
            parser.addParserWarning("msg.jsdoc.noalias",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case NO_COMPILE:
          if (!jsdocBuilder.recordNoCompile()) {
            parser.addParserWarning("msg.jsdoc.nocompile",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case NO_TYPE_CHECK:
          if (!jsdocBuilder.recordNoTypeCheck()) {
            parser.addParserWarning("msg.jsdoc.nocheck",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case NOT_IMPLEMENTED:
          return eatTokensUntilEOL();

        case INHERIT_DOC:
        case OVERRIDE:
          if (!jsdocBuilder.recordOverride()) {
            parser.addTypeWarning("msg.jsdoc.override",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

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
              return eatTokensUntilEOL();
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
          return token;

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
              return eatTokensUntilEOL();
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
            return token;
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
          return token;

        case PRESERVE_TRY:
          if (!jsdocBuilder.recordPreserveTry()) {
            parser.addParserWarning("msg.jsdoc.preservertry",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case NO_SHADOW:
          if (!jsdocBuilder.recordNoShadow()) {
            parser.addParserWarning("msg.jsdoc.noshadow",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case NO_SIDE_EFFECTS:
          if (!jsdocBuilder.recordNoSideEffects()) {
            parser.addParserWarning("msg.jsdoc.nosideeffects",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case MODIFIES:
          token = parseModifiesTag(next());
          return token;

        case IMPLICIT_CAST:
          if (!jsdocBuilder.recordImplicitCast()) {
            parser.addTypeWarning("msg.jsdoc.implicitcast",
                stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

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
          return token;

        case STABLEIDGENERATOR:
          if (!jsdocBuilder.recordStableIdGenerator()) {
            parser.addParserWarning("msg.jsdoc.stableidgen",
              stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

        case SUPPRESS:
          token = parseSuppressTag(next());
          return token;

        case TEMPLATE: {
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
          return token;
        }

        case IDGENERATOR:
          token = parseIdGeneratorTag(next());
          return token;

        case WIZACTION:
          if (!jsdocBuilder.recordWizaction()) {
            parser.addParserWarning("msg.jsdoc.wizaction",
              stream.getLineno(), stream.getCharno());
          }
          return eatTokensUntilEOL();

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
          return token;

        case CONSTANT:
        case DEFINE:
        case RETURN:
        case PRIVATE:
        case PROTECTED:
        case PUBLIC:
        case THIS:
        case TYPE:
        case TYPEDEF:
	int PROBE_START_LINE_867 = 867;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_867 = stream;
	int js_doc_info_parser_1_expr76_line_867 = f_stream_4365_line_867.getLineno();
	int PROBE_END_LINE_867 = 867;
	lineno = js_doc_info_parser_1_expr76_line_867;
	int PROBE_START_LINE_868 = 868;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_868 = stream;
	int js_doc_info_parser_1_expr78_line_868 = f_stream_4365_line_868.getCharno();
	int PROBE_END_LINE_868 = 868;
	charno = js_doc_info_parser_1_expr78_line_868;

          Node typeNode = null;
	int PROBE_START_LINE_871 = 871;
	boolean js_doc_info_parser_1_expr79_line_871 = lookAheadForTypeAnnotation();
	int PROBE_END_LINE_871 = 871;
	boolean hasType = js_doc_info_parser_1_expr79_line_871;
          boolean isAlternateTypeAnnotation =
              (annotation == Annotation.PRIVATE ||
               annotation == Annotation.PROTECTED ||
               annotation == Annotation.PUBLIC ||
               annotation == Annotation.CONSTANT);
          boolean canSkipTypeAnnotation =
              (isAlternateTypeAnnotation ||
               annotation == Annotation.RETURN);
          type = null;
	int PROBE_START_LINE_881 = 890;
	boolean v_has_type_4385_line_881 = hasType;
	boolean js_doc_info_parser_1_expr84_line_881 = false;
	if (!v_has_type_4385_line_881) {
		boolean v_can_skip_type_annotation_4387_line_881 = canSkipTypeAnnotation;
		js_doc_info_parser_1_expr84_line_881 = !v_can_skip_type_annotation_4387_line_881;
	}
	boolean js_doc_info_parser_1_expr83_line_881 = v_has_type_4385_line_881 || js_doc_info_parser_1_expr84_line_881;
	int PROBE_END_LINE_881 = 890;
	if (js_doc_info_parser_1_expr83_line_881) {
            skipEOLs();
            int PROBE_START_LINE_883 = 883;
			com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr87_line_883 = next();
			int PROBE_END_LINE_883 = 883;
			token = js_doc_info_parser_1_expr87_line_883;
            int PROBE_START_LINE_884 = 884;
			com.google.javascript.jscomp.parsing.JsDocToken p_token_4378_line_884 = token;
			com.google.javascript.rhino.Node js_doc_info_parser_1_expr89_line_884 = parseAndRecordTypeNode(
					p_token_4378_line_884);
			int PROBE_END_LINE_884 = 884;
			typeNode = js_doc_info_parser_1_expr89_line_884;

            int PROBE_START_LINE_886 = 888;
			com.google.javascript.jscomp.parsing.Annotation v_annotation_4383_line_886 = annotation;
			com.google.javascript.jscomp.parsing.Annotation q_this_122_line_886 = Annotation.THIS;
			boolean js_doc_info_parser_1_expr90_line_886 = v_annotation_4383_line_886 == q_this_122_line_886;
			int PROBE_END_LINE_886 = 888;
			if (js_doc_info_parser_1_expr90_line_886) {
              typeNode = wrapNode(Token.BANG, typeNode);
            }
            int PROBE_START_LINE_889 = 889;
			com.google.javascript.rhino.Node v_type_node_4384_line_889 = typeNode;
			com.google.javascript.rhino.JSTypeExpression js_doc_info_parser_1_expr92_line_889 = createJSTypeExpression(
					v_type_node_4384_line_889);
			int PROBE_END_LINE_889 = 889;
			type = js_doc_info_parser_1_expr92_line_889;
          }

	int PROBE_START_LINE_894 = 894;
	com.google.javascript.rhino.JSTypeExpression v_type_4388_line_894 = type;
	boolean js_doc_info_parser_1_expr94_line_894 = v_type_4388_line_894 == null;
	boolean js_doc_info_parser_1_expr95_line_894 = true;
	if (js_doc_info_parser_1_expr94_line_894) {
		boolean v_can_skip_type_annotation_4387_line_894 = canSkipTypeAnnotation;
		js_doc_info_parser_1_expr95_line_894 = !v_can_skip_type_annotation_4387_line_894;
	}
	boolean js_doc_info_parser_1_expr93_line_894 = js_doc_info_parser_1_expr94_line_894
			&& js_doc_info_parser_1_expr95_line_894;
	int PROBE_END_LINE_894 = 894;
	// The error was reported during recursive descent
          // recovering parsing
          boolean hasError = js_doc_info_parser_1_expr93_line_894;
	int PROBE_START_LINE_895 = 994;
	boolean v_has_error_4389_line_895 = hasError;
	boolean js_doc_info_parser_1_expr96_line_895 = !v_has_error_4389_line_895;
	int PROBE_END_LINE_895 = 994;
	if (js_doc_info_parser_1_expr96_line_895) {
            int PROBE_START_LINE_903 = 909;
			com.google.javascript.rhino.JSTypeExpression v_type_4388_line_903 = type;
			boolean js_doc_info_parser_1_expr100_line_903 = v_type_4388_line_903 != null;
			boolean v_is_alternate_type_annotation_4386_line_903 = true;
			if (js_doc_info_parser_1_expr100_line_903) {
				v_is_alternate_type_annotation_4386_line_903 = isAlternateTypeAnnotation;
			}
			boolean js_doc_info_parser_1_expr99_line_903 = js_doc_info_parser_1_expr100_line_903
					&& v_is_alternate_type_annotation_4386_line_903;
			boolean js_doc_info_parser_1_expr98_line_903 = (js_doc_info_parser_1_expr99_line_903);
			boolean js_doc_info_parser_1_expr97_line_903 = js_doc_info_parser_1_expr98_line_903
					|| annotation == Annotation.TYPE;
			int PROBE_END_LINE_903 = 909;
			// Record types for @type.
            // If the @private, @protected, or @public annotations
            // have a type attached, pretend that they actually wrote:
            // @type {type}\n@private
            // This will have some weird behavior in some cases
            // (for example, @private can now be used as a type-cast),
            // but should be mostly OK.
            if (js_doc_info_parser_1_expr97_line_903) {
              int PROBE_START_LINE_905 = 908;
					com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_4368_line_905 = jsdocBuilder;
					com.google.javascript.rhino.JSTypeExpression v_type_4388_line_905 = type;
					boolean js_doc_info_parser_1_expr102_line_905 = f_jsdoc_builder_4368_line_905
							.recordType(v_type_4388_line_905);
					boolean js_doc_info_parser_1_expr101_line_905 = !js_doc_info_parser_1_expr102_line_905;
					int PROBE_END_LINE_905 = 908;
			if (js_doc_info_parser_1_expr101_line_905) {
                parser.addTypeWarning(
                    "msg.jsdoc.incompat.type", lineno, charno);
              }
            }

            int PROBE_START_LINE_911 = 993;
			com.google.javascript.jscomp.parsing.Annotation v_annotation_4383_line_911 = annotation;
			int PROBE_END_LINE_911 = 993;
			switch (v_annotation_4383_line_911) {
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
                return recordDescription(token);

              case PRIVATE:
                if (!jsdocBuilder.recordVisibility(Visibility.PRIVATE)) {
                  parser.addParserWarning(
                      "msg.jsdoc.visibility.private",
                      lineno, charno);
                }
                return recordDescription(token);

              case PROTECTED:
                if (!jsdocBuilder.recordVisibility(Visibility.PROTECTED)) {
                  parser.addParserWarning(
                      "msg.jsdoc.visibility.protected",
                      lineno, charno);
                }
                return recordDescription(token);

              case PUBLIC:
                if (!jsdocBuilder.recordVisibility(Visibility.PUBLIC)) {
                  parser.addParserWarning(
                      "msg.jsdoc.visibility.public",
                      lineno, charno);
                }
                return recordDescription(token);

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
                return token;

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

	int PROBE_START_LINE_996 = 996;
	com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr103_line_996 = eatTokensUntilEOL();
	int PROBE_END_LINE_996 = 996;
	return js_doc_info_parser_1_expr103_line_996;
      }
    }

    return next();
  }

  /**
   * Records a marker's description if there is one available and record it in
   * the current marker.
   */
  private JsDocToken recordDescription(JsDocToken token) {
    // Find marker's description (if applicable).
    if (jsdocBuilder.shouldParseDocumentation()) {
      ExtractionInfo descriptionInfo = extractMultilineTextualBlock(token);
      token = descriptionInfo.token;
    } else {
      token = eatTokensUntilEOL(token);
    }
    return token;
  }

  private void checkExtendedTypes(List<ExtendedTypeInfo> extendedTypes) {
    int PROBE_START_LINE_1019 = 1032;
	List<com.google.javascript.jscomp.parsing.JsDocInfoParser.ExtendedTypeInfo> p_extended_types_4391_line_1019 = extendedTypes;
	int PROBE_END_LINE_1019 = 1032;
	for (ExtendedTypeInfo typeInfo : p_extended_types_4391_line_1019) {
      // If interface, record the multiple extended interfaces
      if (jsdocBuilder.isInterfaceRecorded()) {
        if (!jsdocBuilder.recordExtendedInterface(typeInfo.type)) {
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

        if (match(JsDocToken.PIPE, JsDocToken.COMMA)) {
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
   * Parse a {@code @idgenerator} tag of the form
   * {@code @idgenerator} or
   * {@code @idgenerator&#123;consistent&#125;}.
   *
   * @param token The current token.
   */
  private JsDocToken parseIdGeneratorTag(JsDocToken token) {
    String idgenKind = "unique";
    if (token == JsDocToken.LC) {
      if (match(JsDocToken.STRING)) {
        String name = stream.getString();
        if (!idGeneratorAnnotationKeywords.contains(name)
            && !jsdocBuilder.hasParameter(name)) {
            parser.addParserWarning("msg.jsdoc.idgen.unknown", name,
                stream.getLineno(), stream.getCharno());
        }

        idgenKind = name;
        token = next();
      } else {
        parser.addParserWarning("msg.jsdoc.idgen.bad",
            stream.getLineno(), stream.getCharno());
        return token;
      }

      if (!match(JsDocToken.RC)) {
        parser.addParserWarning("msg.jsdoc.idgen.bad",
            stream.getLineno(), stream.getCharno());
      } else {
        token = next();
      }
    }

    if (idgenKind.equals("unique")) {
      if (!jsdocBuilder.recordIdGenerator()) {
        parser.addParserWarning("msg.jsdoc.idgen.duplicate",
            stream.getLineno(), stream.getCharno());
      }
    } else if (idgenKind.equals("consistent")) {
      if (!jsdocBuilder.recordConsistentIdGenerator()) {
        parser.addParserWarning("msg.jsdoc.idgen.duplicate",
            stream.getLineno(), stream.getCharno());
      }
    } else if (idgenKind.equals("stable")) {
      if (!jsdocBuilder.recordStableIdGenerator()) {
        parser.addParserWarning("msg.jsdoc.idgen.duplicate",
            stream.getLineno(), stream.getCharno());
      }
    } else if (idgenKind.equals("mapped")) {
      if (!jsdocBuilder.recordMappedIdGenerator()) {
        parser.addParserWarning("msg.jsdoc.idgen.duplicate",
            stream.getLineno(), stream.getCharno());
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
  Node parseAndRecordTypeNode(JsDocToken token) {
    int PROBE_START_LINE_1195 = 1195;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_4396_line_1195 = token;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_4396_line_1195_v1 = token;
	com.google.javascript.jscomp.parsing.JsDocToken q_lc_123_line_1195 = JsDocToken.LC;
	boolean js_doc_info_parser_1_expr105_line_1195 = p_token_4396_line_1195_v1 == q_lc_123_line_1195;
	com.google.javascript.rhino.Node js_doc_info_parser_1_expr104_line_1195 = parseAndRecordTypeNode(
			p_token_4396_line_1195, js_doc_info_parser_1_expr105_line_1195);
	int PROBE_END_LINE_1195 = 1195;
	return js_doc_info_parser_1_expr104_line_1195;
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
    int PROBE_START_LINE_1207 = 1208;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_4397_line_1207 = token;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_1207 = stream;
	int js_doc_info_parser_1_expr107_line_1207 = f_stream_4365_line_1207.getLineno();
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_1207_v1 = stream;
	int js_doc_info_parser_1_expr108_line_1207 = f_stream_4365_line_1207_v1.getCharno();
	com.google.javascript.rhino.Node js_doc_info_parser_1_expr106_line_1207 = parseAndRecordTypeNode(
			p_token_4397_line_1207, js_doc_info_parser_1_expr107_line_1207, js_doc_info_parser_1_expr108_line_1207,
			matchingLC, false);
	int PROBE_END_LINE_1207 = 1208;
	return js_doc_info_parser_1_expr106_line_1207;
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
    return parseAndRecordTypeNode(token, lineno, startCharno, matchingLC, true);
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

    int PROBE_START_LINE_1274 = 1278;
	boolean p_only_parse_simple_names_4408_line_1274 = onlyParseSimpleNames;
	int PROBE_END_LINE_1274 = 1278;
	if (p_only_parse_simple_names_4408_line_1274) {
      typeNode = parseTypeNameAnnotation(token);
    } else {
      int PROBE_START_LINE_1277 = 1277;
		com.google.javascript.jscomp.parsing.JsDocToken p_token_4404_line_1277 = token;
		com.google.javascript.rhino.Node js_doc_info_parser_1_expr110_line_1277 = parseTypeExpressionAnnotation(
				p_token_4404_line_1277);
		int PROBE_END_LINE_1277 = 1277;
	typeNode = js_doc_info_parser_1_expr110_line_1277;
    }

    int PROBE_START_LINE_1280 = 1286;
	com.google.javascript.rhino.Node v_type_node_4409_line_1280 = typeNode;
	boolean js_doc_info_parser_1_expr111_line_1280 = v_type_node_4409_line_1280 != null;
	int PROBE_END_LINE_1280 = 1286;
	if (js_doc_info_parser_1_expr111_line_1280) {
      int PROBE_START_LINE_1281 = 1281;
		com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_1281 = stream;
		int js_doc_info_parser_1_expr112_line_1281 = f_stream_4365_line_1281.getLineno();
		int PROBE_END_LINE_1281 = 1281;
	int endLineno = js_doc_info_parser_1_expr112_line_1281;
      int PROBE_START_LINE_1282 = 1282;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_1282 = stream;
	int js_doc_info_parser_1_expr113_line_1282 = f_stream_4365_line_1282.getCharno();
	int PROBE_END_LINE_1282 = 1282;
	int endCharno = js_doc_info_parser_1_expr113_line_1282;

      int PROBE_START_LINE_1284 = 1285;
	com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_4368_line_1284 = jsdocBuilder;
	int PROBE_END_LINE_1284 = 1285;
	f_jsdoc_builder_4368_line_1284.markTypeNode(
          typeNode, lineno, startCharno, endLineno, endCharno, matchingLC);
    }

    int PROBE_START_LINE_1288 = 1288;
	com.google.javascript.rhino.Node v_type_node_4409_line_1288 = typeNode;
	int PROBE_END_LINE_1288 = 1288;
	return v_type_node_4409_line_1288;
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
  JSTypeExpression createJSTypeExpression(Node n) {
    int PROBE_START_LINE_1360 = 1361;
	com.google.javascript.rhino.Node p_n_4413_line_1360 = n;
	boolean js_doc_info_parser_1_expr116_line_1360 = p_n_4413_line_1360 == null;
	com.google.javascript.rhino.JSTypeExpression js_doc_info_parser_1_expr115_line_1360 = js_doc_info_parser_1_expr116_line_1360
			? null
			: new JSTypeExpression(n, getSourceName());
	int PROBE_END_LINE_1360 = 1361;
	return js_doc_info_parser_1_expr115_line_1360;
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
      this.type = type;
      this.lineno = lineno;
      this.charno = charno;
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

    String line = getRemainingJSDocLine().trim();

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
    String line = getRemainingJSDocLine();
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

          line = getRemainingJSDocLine();

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

          String line = getRemainingJSDocLine();
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
    int PROBE_START_LINE_1665 = 1680;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_4424_line_1665 = token;
	com.google.javascript.jscomp.parsing.JsDocToken q_lc_124_line_1665 = JsDocToken.LC;
	boolean js_doc_info_parser_1_expr118_line_1665 = p_token_4424_line_1665 == q_lc_124_line_1665;
	int PROBE_END_LINE_1665 = 1680;
	if (js_doc_info_parser_1_expr118_line_1665) {
      skipEOLs();
      int PROBE_START_LINE_1667 = 1667;
	com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr121_line_1667 = next();
	Node js_doc_info_parser_1_expr120_line_1667 = parseTopLevelTypeExpression(js_doc_info_parser_1_expr121_line_1667);
	int PROBE_END_LINE_1667 = 1667;
	Node typeNode = js_doc_info_parser_1_expr120_line_1667;
      int PROBE_START_LINE_1668 = 1675;
	com.google.javascript.rhino.Node v_type_node_4425_line_1668 = typeNode;
	boolean js_doc_info_parser_1_expr122_line_1668 = v_type_node_4425_line_1668 != null;
	int PROBE_END_LINE_1668 = 1675;
	if (js_doc_info_parser_1_expr122_line_1668) {
        skipEOLs();
        int PROBE_START_LINE_1670 = 1674;
		com.google.javascript.jscomp.parsing.JsDocToken q_rc_124_line_1670 = JsDocToken.RC;
		boolean js_doc_info_parser_1_expr125_line_1670 = match(q_rc_124_line_1670);
		boolean js_doc_info_parser_1_expr124_line_1670 = !js_doc_info_parser_1_expr125_line_1670;
		int PROBE_END_LINE_1670 = 1674;
		if (js_doc_info_parser_1_expr124_line_1670) {
          reportTypeSyntaxWarning("msg.jsdoc.missing.rc");
        } else {
          next();
        }
      }

      int PROBE_START_LINE_1677 = 1677;
	com.google.javascript.rhino.Node v_type_node_4425_line_1677 = typeNode;
	int PROBE_END_LINE_1677 = 1677;
	return v_type_node_4425_line_1677;
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
    if (token == JsDocToken.LC) {
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
      return parseTypeName(token);
    }
  }

  /**
   * TopLevelTypeExpression := TypeExpression
   *     | TypeUnionList
   *
   * We made this rule up, for the sake of backwards compatibility.
   */
  private Node parseTopLevelTypeExpression(JsDocToken token) {
    int PROBE_START_LINE_1758 = 1758;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_4428_line_1758 = token;
	Node js_doc_info_parser_1_expr127_line_1758 = parseTypeExpression(p_token_4428_line_1758);
	int PROBE_END_LINE_1758 = 1758;
	Node typeExpr = js_doc_info_parser_1_expr127_line_1758;
    int PROBE_START_LINE_1759 = 1771;
	com.google.javascript.rhino.Node v_type_expr_4429_line_1759 = typeExpr;
	boolean js_doc_info_parser_1_expr128_line_1759 = v_type_expr_4429_line_1759 != null;
	int PROBE_END_LINE_1759 = 1771;
	if (js_doc_info_parser_1_expr128_line_1759) {
      int PROBE_START_LINE_1761 = 1770;
		com.google.javascript.jscomp.parsing.JsDocToken q_pipe_125_line_1761 = JsDocToken.PIPE;
		boolean js_doc_info_parser_1_expr129_line_1761 = match(q_pipe_125_line_1761);
		int PROBE_END_LINE_1761 = 1770;
	// top-level unions are allowed
      if (js_doc_info_parser_1_expr129_line_1761) {
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
    int PROBE_START_LINE_1772 = 1772;
	com.google.javascript.rhino.Node v_type_expr_4429_line_1772 = typeExpr;
	int PROBE_END_LINE_1772 = 1772;
	return v_type_expr_4429_line_1772;
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
    int PROBE_START_LINE_1807 = 1848;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_4431_line_1807 = token;
	com.google.javascript.jscomp.parsing.JsDocToken q_qmark_126_line_1807 = JsDocToken.QMARK;
	boolean js_doc_info_parser_1_expr130_line_1807 = p_token_4431_line_1807 == q_qmark_126_line_1807;
	int PROBE_END_LINE_1807 = 1848;
	if (js_doc_info_parser_1_expr130_line_1807) {
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
    } else {
		int PROBE_START_LINE_1833 = 1848;
		com.google.javascript.jscomp.parsing.JsDocToken p_token_4431_line_1833 = token;
		com.google.javascript.jscomp.parsing.JsDocToken q_bang_127_line_1833 = JsDocToken.BANG;
		boolean js_doc_info_parser_1_expr131_line_1833 = p_token_4431_line_1833 == q_bang_127_line_1833;
		int PROBE_END_LINE_1833 = 1848;
		if (js_doc_info_parser_1_expr131_line_1833) {
			return wrapNode(Token.BANG, parseBasicTypeExpression(next()));
		} else {
			int PROBE_START_LINE_1836 = 1836;
			com.google.javascript.jscomp.parsing.JsDocToken p_token_4431_line_1836 = token;
			Node js_doc_info_parser_1_expr132_line_1836 = parseBasicTypeExpression(p_token_4431_line_1836);
			int PROBE_END_LINE_1836 = 1836;
			Node basicTypeExpr = js_doc_info_parser_1_expr132_line_1836;
			int PROBE_START_LINE_1837 = 1845;
			com.google.javascript.rhino.Node v_basic_type_expr_4432_line_1837 = basicTypeExpr;
			boolean js_doc_info_parser_1_expr133_line_1837 = v_basic_type_expr_4432_line_1837 != null;
			int PROBE_END_LINE_1837 = 1845;
			if (js_doc_info_parser_1_expr133_line_1837) {
				int PROBE_START_LINE_1838 = 1844;
				com.google.javascript.jscomp.parsing.JsDocToken q_qmark_128_line_1838 = JsDocToken.QMARK;
				boolean js_doc_info_parser_1_expr134_line_1838 = match(q_qmark_128_line_1838);
				int PROBE_END_LINE_1838 = 1844;
				if (js_doc_info_parser_1_expr134_line_1838) {
					next();
					return wrapNode(Token.QMARK, basicTypeExpr);
				} else {
					int PROBE_START_LINE_1841 = 1844;
					com.google.javascript.jscomp.parsing.JsDocToken q_bang_128_line_1841 = JsDocToken.BANG;
					boolean js_doc_info_parser_1_expr135_line_1841 = match(q_bang_128_line_1841);
					int PROBE_END_LINE_1841 = 1844;
					if (js_doc_info_parser_1_expr135_line_1841) {
						next();
						return wrapNode(Token.BANG, basicTypeExpr);
					}
				}
			}
			int PROBE_START_LINE_1847 = 1847;
			com.google.javascript.rhino.Node v_basic_type_expr_4432_line_1847 = basicTypeExpr;
			int PROBE_END_LINE_1847 = 1847;
			return v_basic_type_expr_4432_line_1847;
		}
	}
  }

  /**
   * BasicTypeExpression := '*' | 'null' | 'undefined' | TypeName
   *     | FunctionType | UnionType | RecordType | ArrayType
   */
  private Node parseBasicTypeExpression(JsDocToken token) {
    int PROBE_START_LINE_1856 = 1877;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_4433_line_1856 = token;
	com.google.javascript.jscomp.parsing.JsDocToken q_star_128_line_1856 = JsDocToken.STAR;
	boolean js_doc_info_parser_1_expr136_line_1856 = p_token_4433_line_1856 == q_star_128_line_1856;
	int PROBE_END_LINE_1856 = 1877;
	if (js_doc_info_parser_1_expr136_line_1856) {
      return newNode(Token.STAR);
    } else {
		int PROBE_START_LINE_1858 = 1877;
		com.google.javascript.jscomp.parsing.JsDocToken p_token_4433_line_1858 = token;
		com.google.javascript.jscomp.parsing.JsDocToken q_lb_129_line_1858 = JsDocToken.LB;
		boolean js_doc_info_parser_1_expr137_line_1858 = p_token_4433_line_1858 == q_lb_129_line_1858;
		int PROBE_END_LINE_1858 = 1877;
		if (js_doc_info_parser_1_expr137_line_1858) {
			skipEOLs();
			return parseArrayType(next());
		} else {
			int PROBE_START_LINE_1861 = 1877;
			com.google.javascript.jscomp.parsing.JsDocToken p_token_4433_line_1861 = token;
			com.google.javascript.jscomp.parsing.JsDocToken q_lc_130_line_1861 = JsDocToken.LC;
			boolean js_doc_info_parser_1_expr138_line_1861 = p_token_4433_line_1861 == q_lc_130_line_1861;
			int PROBE_END_LINE_1861 = 1877;
			if (js_doc_info_parser_1_expr138_line_1861) {
				skipEOLs();
				return parseRecordType(next());
			} else {
				int PROBE_START_LINE_1864 = 1877;
				com.google.javascript.jscomp.parsing.JsDocToken p_token_4433_line_1864 = token;
				com.google.javascript.jscomp.parsing.JsDocToken q_lp_130_line_1864 = JsDocToken.LP;
				boolean js_doc_info_parser_1_expr139_line_1864 = p_token_4433_line_1864 == q_lp_130_line_1864;
				int PROBE_END_LINE_1864 = 1877;
				if (js_doc_info_parser_1_expr139_line_1864) {
					skipEOLs();
					return parseUnionType(next());
				} else {
					int PROBE_START_LINE_1867 = 1877;
					com.google.javascript.jscomp.parsing.JsDocToken p_token_4433_line_1867 = token;
					com.google.javascript.jscomp.parsing.JsDocToken q_string_131_line_1867 = JsDocToken.STRING;
					boolean js_doc_info_parser_1_expr140_line_1867 = p_token_4433_line_1867 == q_string_131_line_1867;
					int PROBE_END_LINE_1867 = 1877;
					if (js_doc_info_parser_1_expr140_line_1867) {
						int PROBE_START_LINE_1868 = 1868;
						com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_1868 = stream;
						String js_doc_info_parser_1_expr141_line_1868 = f_stream_4365_line_1868.getString();
						int PROBE_END_LINE_1868 = 1868;
						String string = js_doc_info_parser_1_expr141_line_1868;
						int PROBE_START_LINE_1869 = 1876;
						String v_string_4434_line_1869 = string;
						boolean js_doc_info_parser_1_expr142_line_1869 = "function".equals(v_string_4434_line_1869);
						int PROBE_END_LINE_1869 = 1876;
						if (js_doc_info_parser_1_expr142_line_1869) {
							skipEOLs();
							return parseFunctionType(next());
						} else {
							int PROBE_START_LINE_1872 = 1876;
							String v_string_4434_line_1872 = string;
							boolean js_doc_info_parser_1_expr144_line_1872 = "null".equals(v_string_4434_line_1872);
							boolean js_doc_info_parser_1_expr145_line_1872 = false;
							if (!js_doc_info_parser_1_expr144_line_1872) {
								String v_string_4434_line_1872_v1 = string;
								js_doc_info_parser_1_expr145_line_1872 = "undefined".equals(v_string_4434_line_1872_v1);
							}
							boolean js_doc_info_parser_1_expr143_line_1872 = js_doc_info_parser_1_expr144_line_1872
									|| js_doc_info_parser_1_expr145_line_1872;
							int PROBE_END_LINE_1872 = 1876;
							if (js_doc_info_parser_1_expr143_line_1872) {
								return newStringNode(string);
							} else {
								int PROBE_START_LINE_1875 = 1875;
								com.google.javascript.jscomp.parsing.JsDocToken p_token_4433_line_1875 = token;
								com.google.javascript.rhino.Node js_doc_info_parser_1_expr146_line_1875 = parseTypeName(
										p_token_4433_line_1875);
								int PROBE_END_LINE_1875 = 1875;
								return js_doc_info_parser_1_expr146_line_1875;
							}
						}
					}
				}
			}
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
    int PROBE_START_LINE_1888 = 1890;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_4435_line_1888 = token;
	com.google.javascript.jscomp.parsing.JsDocToken q_string_132_line_1888 = JsDocToken.STRING;
	boolean js_doc_info_parser_1_expr147_line_1888 = p_token_4435_line_1888 != q_string_132_line_1888;
	int PROBE_END_LINE_1888 = 1890;
	if (js_doc_info_parser_1_expr147_line_1888) {
      return reportGenericTypeSyntaxWarning();
    }

    int PROBE_START_LINE_1892 = 1892;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_1892 = stream;
	String js_doc_info_parser_1_expr148_line_1892 = f_stream_4365_line_1892.getString();
	int PROBE_END_LINE_1892 = 1892;
	String typeName = js_doc_info_parser_1_expr148_line_1892;
    int PROBE_START_LINE_1893 = 1893;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_1893 = stream;
	int js_doc_info_parser_1_expr149_line_1893 = f_stream_4365_line_1893.getLineno();
	int PROBE_END_LINE_1893 = 1893;
	int lineno = js_doc_info_parser_1_expr149_line_1893;
    int PROBE_START_LINE_1894 = 1894;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_1894 = stream;
	int js_doc_info_parser_1_expr150_line_1894 = f_stream_4365_line_1894.getCharno();
	int PROBE_END_LINE_1894 = 1894;
	int charno = js_doc_info_parser_1_expr150_line_1894;
    while (true) {
      int PROBE_START_LINE_1895 = 1896;
			com.google.javascript.jscomp.parsing.JsDocToken q_eol_132_line_1895 = JsDocToken.EOL;
			boolean js_doc_info_parser_1_expr152_line_1895 = match(q_eol_132_line_1895);
			boolean js_doc_info_parser_1_expr151_line_1895 = js_doc_info_parser_1_expr152_line_1895
					&& typeName.charAt(typeName.length() - 1) == '.';
			if (!(js_doc_info_parser_1_expr151_line_1895)) {
				break;
			}
			int PROBE_END_LINE_1895 = 1896;
	skipEOLs();
      if (match(JsDocToken.STRING)) {
        next();
        typeName += stream.getString();
      }
    }

    int PROBE_START_LINE_1904 = 1904;
	String v_type_name_4436_line_1904 = typeName;
	int v_lineno_4437_line_1904 = lineno;
	int v_charno_4438_line_1904 = charno;
	Node js_doc_info_parser_1_expr153_line_1904 = newStringNode(v_type_name_4436_line_1904, v_lineno_4437_line_1904,
			v_charno_4438_line_1904);
	int PROBE_END_LINE_1904 = 1904;
	Node typeNameNode = js_doc_info_parser_1_expr153_line_1904;

    int PROBE_START_LINE_1906 = 1920;
	com.google.javascript.jscomp.parsing.JsDocToken q_lt_133_line_1906 = JsDocToken.LT;
	boolean js_doc_info_parser_1_expr154_line_1906 = match(q_lt_133_line_1906);
	int PROBE_END_LINE_1906 = 1920;
	if (js_doc_info_parser_1_expr154_line_1906) {
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
    int PROBE_START_LINE_1921 = 1921;
	com.google.javascript.rhino.Node v_type_name_node_4439_line_1921 = typeNameNode;
	int PROBE_END_LINE_1921 = 1921;
	return v_type_name_node_4439_line_1921;
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
    return n == null ? null :
        new Node(type, n, stream.getLineno(),
            stream.getCharno()).clonePropsFrom(templateNode);
  }

  private Node newNode(int type) {
    return new Node(type, stream.getLineno(),
        stream.getCharno()).clonePropsFrom(templateNode);
  }

  private Node newStringNode(String s) {
    return newStringNode(s, stream.getLineno(), stream.getCharno());
  }

  private Node newStringNode(String s, int lineno, int charno) {
    int PROBE_START_LINE_2321 = 2321;
	String p_s_4455_line_2321 = s;
	int p_lineno_4456_line_2321 = lineno;
	int p_charno_4457_line_2321 = charno;
	com.google.javascript.rhino.Node js_doc_info_parser_1_expr156_line_2321 = Node.newString(p_s_4455_line_2321,
			p_lineno_4456_line_2321, p_charno_4457_line_2321);
	com.google.javascript.rhino.Node f_template_node_4372_line_2321 = templateNode;
	Node js_doc_info_parser_1_expr155_line_2321 = js_doc_info_parser_1_expr156_line_2321
			.clonePropsFrom(f_template_node_4372_line_2321);
	int PROBE_END_LINE_2321 = 2321;
	Node n = js_doc_info_parser_1_expr155_line_2321;
    int PROBE_START_LINE_2322 = 2322;
	com.google.javascript.rhino.Node v_n_4458_line_2322 = n;
	String p_s_4455_line_2322 = s;
	int js_doc_info_parser_1_expr158_line_2322 = p_s_4455_line_2322.length();
	int PROBE_END_LINE_2322 = 2322;
	v_n_4458_line_2322.setLength(js_doc_info_parser_1_expr158_line_2322);
    int PROBE_START_LINE_2323 = 2323;
	com.google.javascript.rhino.Node v_n_4458_line_2323 = n;
	int PROBE_END_LINE_2323 = 2323;
	return v_n_4458_line_2323;
  }

  // This is similar to IRFactory.createTemplateNode to share common props
  // e.g., source-name, between all nodes.
  private Node createTemplateNode() {
    int PROBE_START_LINE_2330 = 2330;
	Node js_doc_info_parser_1_expr159_line_2330 = IR.script();
	int PROBE_END_LINE_2330 = 2330;
	// The Node type choice is arbitrary.
    Node templateNode = js_doc_info_parser_1_expr159_line_2330;
    int PROBE_START_LINE_2331 = 2334;
	com.google.javascript.rhino.Node v_template_node_4459_line_2331 = templateNode;
	int PROBE_END_LINE_2331 = 2334;
	v_template_node_4459_line_2331.setStaticSourceFile(
      this.associatedNode != null ?
      this.associatedNode.getStaticSourceFile() :
      null);
    int PROBE_START_LINE_2335 = 2335;
	com.google.javascript.rhino.Node v_template_node_4459_line_2335 = templateNode;
	int PROBE_END_LINE_2335 = 2335;
	return v_template_node_4459_line_2335;
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
    int PROBE_START_LINE_2352 = 2352;
	com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr163_line_2352 = next();
	com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr162_line_2352 = eatTokensUntilEOL(
			js_doc_info_parser_1_expr163_line_2352);
	int PROBE_END_LINE_2352 = 2352;
	return js_doc_info_parser_1_expr162_line_2352;
  }

  /**
   * Eats tokens until {@link JsDocToken#EOL} included, and switches back the
   * state to {@link State#SEARCHING_ANNOTATION}.
   */
  private JsDocToken eatTokensUntilEOL(JsDocToken token) {
    do {
      int PROBE_START_LINE_2361 = 2365;
		com.google.javascript.jscomp.parsing.JsDocToken p_token_4461_line_2361 = token;
		com.google.javascript.jscomp.parsing.JsDocToken q_eol_134_line_2361 = JsDocToken.EOL;
		boolean js_doc_info_parser_1_expr166_line_2361 = p_token_4461_line_2361 == q_eol_134_line_2361;
		boolean js_doc_info_parser_1_expr167_line_2361 = false;
		if (!js_doc_info_parser_1_expr166_line_2361) {
			com.google.javascript.jscomp.parsing.JsDocToken p_token_4461_line_2361_v1 = token;
			com.google.javascript.jscomp.parsing.JsDocToken q_eoc_134_line_2361 = JsDocToken.EOC;
			js_doc_info_parser_1_expr167_line_2361 = p_token_4461_line_2361_v1 == q_eoc_134_line_2361;
		}
		boolean js_doc_info_parser_1_expr165_line_2361 = js_doc_info_parser_1_expr166_line_2361
				|| js_doc_info_parser_1_expr167_line_2361;
		boolean js_doc_info_parser_1_expr164_line_2361 = js_doc_info_parser_1_expr165_line_2361
				|| token == JsDocToken.EOF;
		int PROBE_END_LINE_2361 = 2365;
	if (js_doc_info_parser_1_expr164_line_2361) {
        int PROBE_START_LINE_2363 = 2363;
			com.google.javascript.jscomp.parsing.JsDocInfoParser.State q_searching_annotation_135_line_2363 = State.SEARCHING_ANNOTATION;
			int PROBE_END_LINE_2363 = 2363;
		state = q_searching_annotation_135_line_2363;
        int PROBE_START_LINE_2364 = 2364;
		com.google.javascript.jscomp.parsing.JsDocToken p_token_4461_line_2364 = token;
		int PROBE_END_LINE_2364 = 2364;
		return p_token_4461_line_2364;
      }
      token = next();
    } while (true);
  }

  /**
   * Specific value indicating that the {@link #unreadToken} contains no token.
   */
  private static final JsDocToken NO_UNREAD_TOKEN = null;

  int PROBE_START_LINE_2375 = 2378;

private com.google.javascript.jscomp.parsing.JsDocToken f_no_unread_token_4462_line_2378 = NO_UNREAD_TOKEN;

int PROBE_END_LINE_2375 = 2378;

/**
   * One token buffer.
   */
  private JsDocToken unreadToken = f_no_unread_token_4462_line_2378;

  /** Restores the lookahead token to the token stream */
  private void restoreLookAhead(JsDocToken token) {
    unreadToken = token;
  }

  /**
   * Tests whether the next symbol of the token stream matches the specific
   * token.
   */
  private boolean match(JsDocToken token) {
    int PROBE_START_LINE_2390 = 2390;
	com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr170_line_2390 = next();
	int PROBE_END_LINE_2390 = 2390;
	unreadToken = js_doc_info_parser_1_expr170_line_2390;
    int PROBE_START_LINE_2391 = 2391;
	com.google.javascript.jscomp.parsing.JsDocToken f_unread_token_4463_line_2391 = unreadToken;
	com.google.javascript.jscomp.parsing.JsDocToken p_token_4465_line_2391 = token;
	boolean js_doc_info_parser_1_expr171_line_2391 = f_unread_token_4463_line_2391 == p_token_4465_line_2391;
	int PROBE_END_LINE_2391 = 2391;
	return js_doc_info_parser_1_expr171_line_2391;
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
    int PROBE_START_LINE_2408 = 2412;
	com.google.javascript.jscomp.parsing.JsDocToken f_unread_token_4463_line_2408 = unreadToken;
	com.google.javascript.jscomp.parsing.JsDocToken f_no_unread_token_4462_line_2408 = NO_UNREAD_TOKEN;
	boolean js_doc_info_parser_1_expr172_line_2408 = f_unread_token_4463_line_2408 == f_no_unread_token_4462_line_2408;
	int PROBE_END_LINE_2408 = 2412;
	if (js_doc_info_parser_1_expr172_line_2408) {
      int PROBE_START_LINE_2409 = 2409;
		com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_2409 = stream;
		com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr173_line_2409 = f_stream_4365_line_2409
				.getJsDocToken();
		int PROBE_END_LINE_2409 = 2409;
	return js_doc_info_parser_1_expr173_line_2409;
    } else {
      int PROBE_START_LINE_2411 = 2411;
		com.google.javascript.jscomp.parsing.JsDocToken js_doc_info_parser_1_expr174_line_2411 = current();
		int PROBE_END_LINE_2411 = 2411;
	return js_doc_info_parser_1_expr174_line_2411;
    }
  }

  /**
   * Gets the current token, invalidating it in the process.
   */
  private JsDocToken current() {
    int PROBE_START_LINE_2419 = 2419;
	JsDocToken f_unread_token_4463_line_2419 = unreadToken;
	int PROBE_END_LINE_2419 = 2419;
	JsDocToken t = f_unread_token_4463_line_2419;
    int PROBE_START_LINE_2420 = 2420;
	com.google.javascript.jscomp.parsing.JsDocToken f_no_unread_token_4462_line_2420 = NO_UNREAD_TOKEN;
	int PROBE_END_LINE_2420 = 2420;
	unreadToken = f_no_unread_token_4462_line_2420;
    int PROBE_START_LINE_2421 = 2421;
	com.google.javascript.jscomp.parsing.JsDocToken v_t_4468_line_2421 = t;
	int PROBE_END_LINE_2421 = 2421;
	return v_t_4468_line_2421;
  }

  /**
   * Skips all EOLs and all empty lines in the JSDoc. Call this method if you
   * want the JSDoc entry to span multiple lines.
   */
  private void skipEOLs() {
    while (true) {
      int PROBE_START_LINE_2429 = 2429;
		com.google.javascript.jscomp.parsing.JsDocToken q_eol_135_line_2429 = JsDocToken.EOL;
		boolean js_doc_info_parser_1_expr176_line_2429 = match(q_eol_135_line_2429);
		if (!(js_doc_info_parser_1_expr176_line_2429)) {
			break;
		}
		int PROBE_END_LINE_2429 = 2429;
	next();
      if (match(JsDocToken.STAR)) {
        next();
      }
    }
  }

  /**
   * Returns the remainder of the line.
   */
  private String getRemainingJSDocLine() {
    String result = stream.getRemainingJSDocLine();
    unreadToken = NO_UNREAD_TOKEN;
    return result;
  }

  /**
   * Determines whether the parser has been populated with docinfo with a
   * fileoverview tag.
   */
  private boolean hasParsedFileOverviewDocInfo() {
    int PROBE_START_LINE_2451 = 2451;
	com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_4368_line_2451 = jsdocBuilder;
	boolean js_doc_info_parser_1_expr177_line_2451 = f_jsdoc_builder_4368_line_2451.isPopulatedWithFileOverview();
	int PROBE_END_LINE_2451 = 2451;
	return js_doc_info_parser_1_expr177_line_2451;
  }

  boolean hasParsedJSDocInfo() {
    return jsdocBuilder.isPopulated();
  }

  JSDocInfo retrieveAndResetParsedJSDocInfo() {
    int PROBE_START_LINE_2459 = 2459;
	com.google.javascript.rhino.JSDocInfoBuilder f_jsdoc_builder_4368_line_2459 = jsdocBuilder;
	com.google.javascript.rhino.Node f_associated_node_4366_line_2459 = associatedNode;
	com.google.javascript.rhino.JSDocInfo js_doc_info_parser_1_expr178_line_2459 = f_jsdoc_builder_4368_line_2459
			.build(f_associated_node_4366_line_2459);
	int PROBE_END_LINE_2459 = 2459;
	return js_doc_info_parser_1_expr178_line_2459;
  }

  /**
   * Gets the fileoverview JSDocInfo, if any.
   */
  JSDocInfo getFileOverviewJSDocInfo() {
    int PROBE_START_LINE_2466 = 2466;
	com.google.javascript.rhino.JSDocInfo f_file_overview_jsdoc_info_4351_line_2466 = fileOverviewJSDocInfo;
	int PROBE_END_LINE_2466 = 2466;
	return f_file_overview_jsdoc_info_4351_line_2466;
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
    int c = 0;
    while (true) {
      int PROBE_START_LINE_2481 = 2481;
		com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_2481 = stream;
		int js_doc_info_parser_1_expr180_line_2481 = f_stream_4365_line_2481.getChar();
		int PROBE_END_LINE_2481 = 2481;
	c = js_doc_info_parser_1_expr180_line_2481;
      int PROBE_START_LINE_2482 = 2489;
	int v_c_4470_line_2482 = c;
	boolean js_doc_info_parser_1_expr181_line_2482 = v_c_4470_line_2482 == ' ';
	int PROBE_END_LINE_2482 = 2489;
	if (js_doc_info_parser_1_expr181_line_2482) {
        continue;
      } else {
		int PROBE_START_LINE_2484 = 2489;
		int v_c_4470_line_2484 = c;
		boolean js_doc_info_parser_1_expr182_line_2484 = v_c_4470_line_2484 == '{';
		int PROBE_END_LINE_2484 = 2489;
		if (js_doc_info_parser_1_expr182_line_2484) {
			matchedLc = true;
			break;
		} else {
			break;
		}
	}
    }
    int PROBE_START_LINE_2491 = 2491;
	com.google.javascript.jscomp.parsing.JsDocTokenStream f_stream_4365_line_2491 = stream;
	int v_c_4470_line_2491 = c;
	int PROBE_END_LINE_2491 = 2491;
	f_stream_4365_line_2491.ungetChar(v_c_4470_line_2491);
    int PROBE_START_LINE_2492 = 2492;
	boolean v_matched_lc_4469_line_2492 = matchedLc;
	int PROBE_END_LINE_2492 = 2492;
	return v_matched_lc_4469_line_2492;
  }
}
