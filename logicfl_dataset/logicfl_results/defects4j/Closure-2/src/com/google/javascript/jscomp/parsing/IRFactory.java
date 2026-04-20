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

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.javascript.jscomp.parsing.Config.LanguageMode;
import com.google.javascript.rhino.IR;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;
import com.google.javascript.rhino.head.ErrorReporter;
import com.google.javascript.rhino.head.Token.CommentType;
import com.google.javascript.rhino.head.ast.ArrayLiteral;
import com.google.javascript.rhino.head.ast.Assignment;
import com.google.javascript.rhino.head.ast.AstNode;
import com.google.javascript.rhino.head.ast.AstRoot;
import com.google.javascript.rhino.head.ast.Block;
import com.google.javascript.rhino.head.ast.BreakStatement;
import com.google.javascript.rhino.head.ast.CatchClause;
import com.google.javascript.rhino.head.ast.Comment;
import com.google.javascript.rhino.head.ast.ConditionalExpression;
import com.google.javascript.rhino.head.ast.ContinueStatement;
import com.google.javascript.rhino.head.ast.DoLoop;
import com.google.javascript.rhino.head.ast.ElementGet;
import com.google.javascript.rhino.head.ast.EmptyExpression;
import com.google.javascript.rhino.head.ast.EmptyStatement;
import com.google.javascript.rhino.head.ast.ExpressionStatement;
import com.google.javascript.rhino.head.ast.ForInLoop;
import com.google.javascript.rhino.head.ast.ForLoop;
import com.google.javascript.rhino.head.ast.FunctionCall;
import com.google.javascript.rhino.head.ast.FunctionNode;
import com.google.javascript.rhino.head.ast.IfStatement;
import com.google.javascript.rhino.head.ast.InfixExpression;
import com.google.javascript.rhino.head.ast.KeywordLiteral;
import com.google.javascript.rhino.head.ast.Label;
import com.google.javascript.rhino.head.ast.LabeledStatement;
import com.google.javascript.rhino.head.ast.Name;
import com.google.javascript.rhino.head.ast.NewExpression;
import com.google.javascript.rhino.head.ast.NumberLiteral;
import com.google.javascript.rhino.head.ast.ObjectLiteral;
import com.google.javascript.rhino.head.ast.ObjectProperty;
import com.google.javascript.rhino.head.ast.ParenthesizedExpression;
import com.google.javascript.rhino.head.ast.PropertyGet;
import com.google.javascript.rhino.head.ast.RegExpLiteral;
import com.google.javascript.rhino.head.ast.ReturnStatement;
import com.google.javascript.rhino.head.ast.Scope;
import com.google.javascript.rhino.head.ast.StringLiteral;
import com.google.javascript.rhino.head.ast.SwitchCase;
import com.google.javascript.rhino.head.ast.SwitchStatement;
import com.google.javascript.rhino.head.ast.ThrowStatement;
import com.google.javascript.rhino.head.ast.TryStatement;
import com.google.javascript.rhino.head.ast.UnaryExpression;
import com.google.javascript.rhino.head.ast.VariableDeclaration;
import com.google.javascript.rhino.head.ast.VariableInitializer;
import com.google.javascript.rhino.head.ast.WhileLoop;
import com.google.javascript.rhino.head.ast.WithStatement;
import com.google.javascript.rhino.jstype.StaticSourceFile;

import java.util.Set;
import java.util.HashSet;
import com.google.javascript.rhino.Node.FileLevelJsDocBuilder;
import java.util.List;
import java.util.SortedSet;

/**
 * IRFactory transforms the new AST to the old AST.
 *
 */
class IRFactory {

  static final String GETTER_ERROR_MESSAGE =
      "getters are not supported in older versions of JS. " +
      "If you are targeting newer versions of JS, " +
      "set the appropriate language_in option.";

  static final String SETTER_ERROR_MESSAGE =
      "setters are not supported in older versions of JS. " +
      "If you are targeting newer versions of JS, " +
      "set the appropriate language_in option.";

  static final String SUSPICIOUS_COMMENT_WARNING =
      "Non-JSDoc comment has annotations. " +
      "Did you mean to start it with '/**'?";

  static final String MISPLACED_TYPE_ANNOTATION =
      "Type annotations are not allowed here. Are you missing parentheses?";

  private final String sourceString;
  private final StaticSourceFile sourceFile;
  private final String sourceName;
  private final Config config;
  private final ErrorReporter errorReporter;
  private final TransformDispatcher transformDispatcher;

  private static final ImmutableSet<String> ALLOWED_DIRECTIVES =
      ImmutableSet.of("use strict");

  private static final ImmutableSet<String> ES5_RESERVED_KEYWORDS =
      ImmutableSet.of(
          // From Section 7.6.1.2
          "class", "const", "enum", "export", "extends", "import", "super");
  private static final ImmutableSet<String> ES5_STRICT_RESERVED_KEYWORDS =
      ImmutableSet.of(
          // From Section 7.6.1.2
          "class", "const", "enum", "export", "extends", "import", "super",
          "implements", "interface", "let", "package", "private", "protected",
          "public", "static", "yield");

  private final Set<String> reservedKeywords;
  int PROBE_START_LINE_122 = 122;

private final HashSet<com.google.javascript.rhino.head.ast.Comment> irfactory_1_expr4_line_122 = Sets.newHashSet();

int PROBE_END_LINE_122 = 122;

private final Set<Comment> parsedComments = irfactory_1_expr4_line_122;

  int PROBE_START_LINE_126 = 126;

int q_script_84_line_126 = Token.SCRIPT;

int PROBE_END_LINE_126 = 126;

// @license text gets appended onto the fileLevelJsDocBuilder as found,
  // and stored in JSDocInfo for placeholder node.
  Node rootNodeJsDocHolder = new Node(q_script_84_line_126);
  Node.FileLevelJsDocBuilder fileLevelJsDocBuilder =
      rootNodeJsDocHolder.getJsDocBuilderForNode();
  JSDocInfo fileOverviewInfo = null;

  // Use a template node for properties set on all nodes to minimize the
  // memory footprint associated with these.
  private Node templateNode;

  // TODO(johnlenz): Consider creating a template pool for ORIGINALNAME_PROP.

  private IRFactory(String sourceString,
                    StaticSourceFile sourceFile,
                    Config config,
                    ErrorReporter errorReporter) {
    int PROBE_START_LINE_141 = 141;
						String p_source_string_3571_line_141 = sourceString;
						int PROBE_END_LINE_141 = 141;
	this.sourceString = p_source_string_3571_line_141;
    int PROBE_START_LINE_142 = 142;
	com.google.javascript.rhino.jstype.StaticSourceFile p_source_file_3572_line_142 = sourceFile;
	int PROBE_END_LINE_142 = 142;
	this.sourceFile = p_source_file_3572_line_142;

    int PROBE_START_LINE_145 = 145;
	com.google.javascript.rhino.jstype.StaticSourceFile p_source_file_3572_line_145 = sourceFile;
	boolean irfactory_1_expr17_line_145 = p_source_file_3572_line_145 == null;
	String irfactory_1_expr18_line_145 = null;
	if (!irfactory_1_expr17_line_145) {
		com.google.javascript.rhino.jstype.StaticSourceFile p_source_file_3572_line_145_v1 = sourceFile;
		irfactory_1_expr18_line_145 = p_source_file_3572_line_145_v1.getName();
	}
	String irfactory_1_expr15_line_145 = irfactory_1_expr17_line_145 ? null : irfactory_1_expr18_line_145;
	int PROBE_END_LINE_145 = 145;
	// Sometimes this will be null in tests.
    this.sourceName = irfactory_1_expr15_line_145;

    int PROBE_START_LINE_147 = 147;
	com.google.javascript.jscomp.parsing.Config p_config_3573_line_147 = config;
	int PROBE_END_LINE_147 = 147;
	this.config = p_config_3573_line_147;
    int PROBE_START_LINE_148 = 148;
	com.google.javascript.rhino.head.ErrorReporter p_error_reporter_3574_line_148 = errorReporter;
	int PROBE_END_LINE_148 = 148;
	this.errorReporter = p_error_reporter_3574_line_148;
    this.transformDispatcher = new TransformDispatcher();
    int PROBE_START_LINE_151 = 151;
	com.google.javascript.rhino.Node irfactory_1_expr31_line_151 = createTemplateNode();
	int PROBE_END_LINE_151 = 151;
	// The template node properties are applied to all nodes in this transform.
    this.templateNode = irfactory_1_expr31_line_151;

    int PROBE_START_LINE_153 = 166;
	com.google.javascript.jscomp.parsing.Config p_config_3573_line_153 = config;
	com.google.javascript.jscomp.parsing.Config.LanguageMode q_language_mode_84_line_153 = p_config_3573_line_153.languageMode;
	int PROBE_END_LINE_153 = 166;
	switch (q_language_mode_84_line_153) {
      case ECMASCRIPT3:
        // Reserved words are handled by the Rhino parser.
        reservedKeywords = null;
        break;
      case ECMASCRIPT5:
	int PROBE_START_LINE_159 = 159;
	ImmutableSet<String> f_es5_reserved_keywords_3565_line_159 = ES5_RESERVED_KEYWORDS;
	int PROBE_END_LINE_159 = 159;
	reservedKeywords = f_es5_reserved_keywords_3565_line_159;
        break;
      case ECMASCRIPT5_STRICT:
        reservedKeywords = ES5_STRICT_RESERVED_KEYWORDS;
        break;
      default:
        throw new IllegalStateException("unknown language mode");
    }
  }

  // Create a template node to use as a source of common attributes, this allows
  // the prop structure to be shared among all the node from this source file.
  // This reduces the cost of these properties to O(nodes) to O(files).
  private Node createTemplateNode() {
    int PROBE_START_LINE_174 = 174;
	int q_script_85_line_174 = Token.SCRIPT;
	int PROBE_END_LINE_174 = 174;
	// The Node type choice is arbitrary.
    Node templateNode = new Node(q_script_85_line_174);
    int PROBE_START_LINE_175 = 175;
	com.google.javascript.rhino.Node v_template_node_3583_line_175 = templateNode;
	com.google.javascript.rhino.jstype.StaticSourceFile f_source_file_3576_line_175 = sourceFile;
	int PROBE_END_LINE_175 = 175;
	v_template_node_3583_line_175.setStaticSourceFile(f_source_file_3576_line_175);
    int PROBE_START_LINE_176 = 176;
	com.google.javascript.rhino.Node v_template_node_3583_line_176 = templateNode;
	int PROBE_END_LINE_176 = 176;
	return v_template_node_3583_line_176;
  }

  public static Node transformTree(AstRoot node,
                                   StaticSourceFile sourceFile,
                                   String sourceString,
                                   Config config,
                                   ErrorReporter errorReporter) {
    int PROBE_START_LINE_184 = 185;
									String p_source_string_3586_line_184 = sourceString;
									com.google.javascript.rhino.jstype.StaticSourceFile p_source_file_3585_line_184 = sourceFile;
									int PROBE_END_LINE_184 = 185;
	IRFactory irFactory = new IRFactory(p_source_string_3586_line_184, p_source_file_3585_line_184,
        config, errorReporter);
    int PROBE_START_LINE_186 = 186;
	com.google.javascript.jscomp.parsing.IRFactory v_ir_factory_3589_line_186 = irFactory;
	com.google.javascript.rhino.head.ast.AstRoot p_node_3584_line_186 = node;
	Node irfactory_1_expr37_line_186 = v_ir_factory_3589_line_186.transform(p_node_3584_line_186);
	int PROBE_END_LINE_186 = 186;
	Node irNode = irfactory_1_expr37_line_186;

    int PROBE_START_LINE_188 = 197;
	com.google.javascript.rhino.head.ast.AstRoot p_node_3584_line_188 = node;
	SortedSet<com.google.javascript.rhino.head.ast.Comment> irfactory_1_expr39_line_188 = p_node_3584_line_188
			.getComments();
	boolean irfactory_1_expr38_line_188 = irfactory_1_expr39_line_188 != null;
	int PROBE_END_LINE_188 = 197;
	if (irfactory_1_expr38_line_188) {
      int PROBE_START_LINE_189 = 196;
		com.google.javascript.rhino.head.ast.AstRoot p_node_3584_line_189 = node;
		SortedSet<com.google.javascript.rhino.head.ast.Comment> irfactory_1_expr40_line_189 = p_node_3584_line_189
				.getComments();
		int PROBE_END_LINE_189 = 196;
	for (Comment comment : irfactory_1_expr40_line_189) {
        int PROBE_START_LINE_190 = 195;
		com.google.javascript.rhino.head.ast.Comment v_comment_3591_line_190 = comment;
		com.google.javascript.rhino.head.Token.CommentType irfactory_1_expr43_line_190 = v_comment_3591_line_190
				.getCommentType();
		com.google.javascript.rhino.head.Token.CommentType q_jsdoc_85_line_190 = CommentType.JSDOC;
		boolean irfactory_1_expr42_line_190 = irfactory_1_expr43_line_190 == q_jsdoc_85_line_190;
		boolean irfactory_1_expr41_line_190 = irfactory_1_expr42_line_190
				&& !irFactory.parsedComments.contains(comment);
		int PROBE_END_LINE_190 = 195;
		if (irfactory_1_expr41_line_190) {
          irFactory.handlePossibleFileOverviewJsDoc(comment, irNode);
        } else {
			int PROBE_START_LINE_193 = 195;
			com.google.javascript.rhino.head.ast.Comment v_comment_3591_line_193 = comment;
			com.google.javascript.rhino.head.Token.CommentType irfactory_1_expr45_line_193 = v_comment_3591_line_193
					.getCommentType();
			com.google.javascript.rhino.head.Token.CommentType q_block_comment_86_line_193 = CommentType.BLOCK_COMMENT;
			boolean irfactory_1_expr44_line_193 = irfactory_1_expr45_line_193 == q_block_comment_86_line_193;
			int PROBE_END_LINE_193 = 195;
			if (irfactory_1_expr44_line_193) {
				irFactory.handleBlockComment(comment);
			}
		}
      }
    }

    int PROBE_START_LINE_199 = 199;
	com.google.javascript.jscomp.parsing.IRFactory v_ir_factory_3589_line_199 = irFactory;
	com.google.javascript.rhino.Node v_ir_node_3590_line_199 = irNode;
	int PROBE_END_LINE_199 = 199;
	v_ir_factory_3589_line_199.setFileOverviewJsDoc(v_ir_node_3590_line_199);

    int PROBE_START_LINE_201 = 201;
	com.google.javascript.rhino.Node v_ir_node_3590_line_201 = irNode;
	int PROBE_END_LINE_201 = 201;
	return v_ir_node_3590_line_201;
  }

  private void setFileOverviewJsDoc(Node irNode) {
    int PROBE_START_LINE_208 = 208;
	com.google.javascript.rhino.Node f_root_node_js_doc_holder_3568_line_208 = rootNodeJsDocHolder;
	JSDocInfo irfactory_1_expr47_line_208 = f_root_node_js_doc_holder_3568_line_208.getJSDocInfo();
	int PROBE_END_LINE_208 = 208;
	// Only after we've seen all @fileoverview entries, attach the
    // last one to the root node, and copy the found license strings
    // to that node.
    JSDocInfo rootNodeJsDoc = irfactory_1_expr47_line_208;
    int PROBE_START_LINE_209 = 212;
	com.google.javascript.rhino.JSDocInfo v_root_node_js_doc_3593_line_209 = rootNodeJsDoc;
	boolean irfactory_1_expr48_line_209 = v_root_node_js_doc_3593_line_209 != null;
	int PROBE_END_LINE_209 = 212;
	if (irfactory_1_expr48_line_209) {
      irNode.setJSDocInfo(rootNodeJsDoc);
      rootNodeJsDoc.setAssociatedNode(irNode);
    }

    int PROBE_START_LINE_214 = 221;
	com.google.javascript.rhino.JSDocInfo f_file_overview_info_3570_line_214 = fileOverviewInfo;
	boolean irfactory_1_expr49_line_214 = f_file_overview_info_3570_line_214 != null;
	int PROBE_END_LINE_214 = 221;
	if (irfactory_1_expr49_line_214) {
      if ((irNode.getJSDocInfo() != null) &&
          (irNode.getJSDocInfo().getLicense() != null)) {
        fileOverviewInfo.setLicense(irNode.getJSDocInfo().getLicense());
      }
      irNode.setJSDocInfo(fileOverviewInfo);
      fileOverviewInfo.setAssociatedNode(irNode);
    }
  }

  private Node transformBlock(AstNode node) {
    Node irNode = transform(node);
    if (!irNode.isBlock()) {
      if (irNode.isEmpty()) {
        irNode.setType(Token.BLOCK);
        irNode.setWasEmptyNode(true);
      } else {
        Node newBlock = newNode(Token.BLOCK, irNode);
        newBlock.setLineno(irNode.getLineno());
        newBlock.setCharno(irNode.getCharno());
        maybeSetLengthFrom(newBlock, node);
        irNode = newBlock;
      }
    }
    return irNode;
  }

  /**
   * Check to see if the given block comment looks like it should be JSDoc.
   */
  private void handleBlockComment(Comment comment) {
    String value = comment.getValue();
    if (value.indexOf("/* @") != -1 ||
        value.indexOf("\n * @") != -1) {
      errorReporter.warning(
          SUSPICIOUS_COMMENT_WARNING,
          sourceName,
          comment.getLineno(), "", 0);
    }
  }

  /**
   * @return true if the jsDocParser represents a fileoverview.
   */
  private boolean handlePossibleFileOverviewJsDoc(
      JsDocInfoParser jsDocParser) {
    int PROBE_START_LINE_260 = 263;
		com.google.javascript.jscomp.parsing.JsDocInfoParser p_js_doc_parser_3596_line_260 = jsDocParser;
		com.google.javascript.rhino.JSDocInfo irfactory_1_expr51_line_260 = p_js_doc_parser_3596_line_260
				.getFileOverviewJSDocInfo();
		com.google.javascript.rhino.JSDocInfo f_file_overview_info_3570_line_260 = fileOverviewInfo;
		boolean irfactory_1_expr50_line_260 = irfactory_1_expr51_line_260 != f_file_overview_info_3570_line_260;
		int PROBE_END_LINE_260 = 263;
	if (irfactory_1_expr50_line_260) {
      fileOverviewInfo = jsDocParser.getFileOverviewJSDocInfo();
      return true;
    }
    return false;
  }

  private void handlePossibleFileOverviewJsDoc(Comment comment, Node irNode) {
    JsDocInfoParser jsDocParser = createJsDocInfoParser(comment, irNode);
    parsedComments.add(comment);
    handlePossibleFileOverviewJsDoc(jsDocParser);
  }

  private JSDocInfo handleJsDoc(AstNode node, Node irNode) {
    int PROBE_START_LINE_274 = 274;
	com.google.javascript.rhino.head.ast.AstNode p_node_3599_line_274 = node;
	Comment irfactory_1_expr52_line_274 = p_node_3599_line_274.getJsDocNode();
	int PROBE_END_LINE_274 = 274;
	Comment comment = irfactory_1_expr52_line_274;
    int PROBE_START_LINE_275 = 285;
	com.google.javascript.rhino.head.ast.Comment v_comment_3601_line_275 = comment;
	boolean irfactory_1_expr53_line_275 = v_comment_3601_line_275 != null;
	int PROBE_END_LINE_275 = 285;
	if (irfactory_1_expr53_line_275) {
      int PROBE_START_LINE_276 = 276;
		com.google.javascript.rhino.head.ast.Comment v_comment_3601_line_276 = comment;
		com.google.javascript.rhino.Node p_ir_node_3600_line_276 = irNode;
		JsDocInfoParser irfactory_1_expr54_line_276 = createJsDocInfoParser(v_comment_3601_line_276,
				p_ir_node_3600_line_276);
		int PROBE_END_LINE_276 = 276;
	JsDocInfoParser jsDocParser = irfactory_1_expr54_line_276;
      int PROBE_START_LINE_277 = 277;
	Set<com.google.javascript.rhino.head.ast.Comment> f_parsed_comments_3567_line_277 = parsedComments;
	com.google.javascript.rhino.head.ast.Comment v_comment_3601_line_277 = comment;
	int PROBE_END_LINE_277 = 277;
	f_parsed_comments_3567_line_277.add(v_comment_3601_line_277);
      int PROBE_START_LINE_278 = 284;
	com.google.javascript.jscomp.parsing.JsDocInfoParser v_js_doc_parser_3602_line_278 = jsDocParser;
	boolean irfactory_1_expr57_line_278 = handlePossibleFileOverviewJsDoc(v_js_doc_parser_3602_line_278);
	boolean irfactory_1_expr56_line_278 = !irfactory_1_expr57_line_278;
	int PROBE_END_LINE_278 = 284;
	if (irfactory_1_expr56_line_278) {
        int PROBE_START_LINE_279 = 279;
		com.google.javascript.jscomp.parsing.JsDocInfoParser v_js_doc_parser_3602_line_279 = jsDocParser;
		JSDocInfo irfactory_1_expr58_line_279 = v_js_doc_parser_3602_line_279.retrieveAndResetParsedJSDocInfo();
		int PROBE_END_LINE_279 = 279;
		JSDocInfo info = irfactory_1_expr58_line_279;
        int PROBE_START_LINE_280 = 282;
		com.google.javascript.rhino.JSDocInfo v_info_3603_line_280 = info;
		boolean irfactory_1_expr59_line_280 = v_info_3603_line_280 != null;
		int PROBE_END_LINE_280 = 282;
		if (irfactory_1_expr59_line_280) {
          int PROBE_START_LINE_281 = 281;
			com.google.javascript.rhino.JSDocInfo v_info_3603_line_281 = info;
			com.google.javascript.rhino.head.ast.AstNode p_node_3599_line_281 = node;
			com.google.javascript.rhino.Node p_ir_node_3600_line_281 = irNode;
			int PROBE_END_LINE_281 = 281;
		validateTypeAnnotations(v_info_3603_line_281, p_node_3599_line_281, p_ir_node_3600_line_281);
        }
        int PROBE_START_LINE_283 = 283;
		com.google.javascript.rhino.JSDocInfo v_info_3603_line_283 = info;
		int PROBE_END_LINE_283 = 283;
		return v_info_3603_line_283;
      }
    }
    return null;
  }

  private void validateTypeAnnotations(
      JSDocInfo info, AstNode node, Node irNode) {
    int PROBE_START_LINE_291 = 340;
		com.google.javascript.rhino.JSDocInfo p_info_3604_line_291 = info;
		boolean irfactory_1_expr61_line_291 = p_info_3604_line_291.hasType();
		int PROBE_END_LINE_291 = 340;
	if (irfactory_1_expr61_line_291) {
      boolean valid = false;
      switch (node.getType()) {
        // Casts are valid
        case com.google.javascript.rhino.head.Token.LP:
          valid = node instanceof ParenthesizedExpression;
          break;
        // Variable declarations are valid
        case com.google.javascript.rhino.head.Token.VAR:
          valid = true;
          break;
        // Function declarations are valid
        case com.google.javascript.rhino.head.Token.FUNCTION:
          FunctionNode fnNode = (FunctionNode)node;
          valid = fnNode.getFunctionType() == FunctionNode.FUNCTION_STATEMENT;
          break;
        // Object literal properties and catch declarations are valid.
        case com.google.javascript.rhino.head.Token.NAME:
          valid = node.getParent() instanceof ObjectProperty
              || node.getParent() instanceof CatchClause
              || node.getParent() instanceof FunctionNode;
          break;
        // Object literal properties are valid
        case com.google.javascript.rhino.head.Token.GET:
        case com.google.javascript.rhino.head.Token.SET:
        case com.google.javascript.rhino.head.Token.NUMBER:
        case com.google.javascript.rhino.head.Token.STRING:
          valid = node.getParent() instanceof ObjectProperty;
          break;

        // Property assignments are valid, if at the root of an expression.
        case com.google.javascript.rhino.head.Token.ASSIGN:
          if (node instanceof Assignment) {
            valid = isExprStmt(node.getParent())
                && isPropAccess(((Assignment)node).getLeft());
          }
          break;

        // Property definitions are valid, if at the root of an expression.
        case com.google.javascript.rhino.head.Token.GETPROP:
        case com.google.javascript.rhino.head.Token.GETELEM:
          valid = isExprStmt(node.getParent());
          break;
      }
      if (!valid) {
        errorReporter.warning(MISPLACED_TYPE_ANNOTATION,
            sourceName,
            node.getLineno(), "", 0);
      }
    }
  }

  private boolean isPropAccess(AstNode node) {
    return node.getType() == com.google.javascript.rhino.head.Token.GETPROP
        || node.getType() == com.google.javascript.rhino.head.Token.GETELEM;
  }

  private boolean isExprStmt(AstNode node) {
    return node.getType() == com.google.javascript.rhino.head.Token.EXPR_RESULT
        || node.getType() == com.google.javascript.rhino.head.Token.EXPR_VOID;
  }

  private Node transform(AstNode node) {
    int PROBE_START_LINE_354 = 354;
	com.google.javascript.rhino.head.ast.AstNode p_node_3609_line_354 = node;
	Node irfactory_1_expr62_line_354 = justTransform(p_node_3609_line_354);
	int PROBE_END_LINE_354 = 354;
	Node irNode = irfactory_1_expr62_line_354;
    int PROBE_START_LINE_355 = 355;
	com.google.javascript.rhino.head.ast.AstNode p_node_3609_line_355 = node;
	com.google.javascript.rhino.Node v_ir_node_3610_line_355 = irNode;
	JSDocInfo irfactory_1_expr63_line_355 = handleJsDoc(p_node_3609_line_355, v_ir_node_3610_line_355);
	int PROBE_END_LINE_355 = 355;
	JSDocInfo jsDocInfo = irfactory_1_expr63_line_355;
    int PROBE_START_LINE_356 = 359;
	com.google.javascript.rhino.JSDocInfo v_js_doc_info_3611_line_356 = jsDocInfo;
	boolean irfactory_1_expr64_line_356 = v_js_doc_info_3611_line_356 != null;
	int PROBE_END_LINE_356 = 359;
	if (irfactory_1_expr64_line_356) {
      int PROBE_START_LINE_357 = 357;
		com.google.javascript.rhino.head.ast.AstNode p_node_3609_line_357 = node;
		com.google.javascript.rhino.JSDocInfo v_js_doc_info_3611_line_357 = jsDocInfo;
		com.google.javascript.rhino.Node v_ir_node_3610_line_357 = irNode;
		com.google.javascript.rhino.Node irfactory_1_expr66_line_357 = maybeInjectCastNode(p_node_3609_line_357,
				v_js_doc_info_3611_line_357, v_ir_node_3610_line_357);
		int PROBE_END_LINE_357 = 357;
	irNode = irfactory_1_expr66_line_357;
      int PROBE_START_LINE_358 = 358;
	com.google.javascript.rhino.Node v_ir_node_3610_line_358 = irNode;
	com.google.javascript.rhino.JSDocInfo v_js_doc_info_3611_line_358 = jsDocInfo;
	int PROBE_END_LINE_358 = 358;
	v_ir_node_3610_line_358.setJSDocInfo(v_js_doc_info_3611_line_358);
    }
    int PROBE_START_LINE_360 = 360;
	com.google.javascript.rhino.Node v_ir_node_3610_line_360 = irNode;
	com.google.javascript.rhino.head.ast.AstNode p_node_3609_line_360 = node;
	int PROBE_END_LINE_360 = 360;
	setSourceInfo(v_ir_node_3610_line_360, p_node_3609_line_360);
    int PROBE_START_LINE_361 = 361;
	com.google.javascript.rhino.Node v_ir_node_3610_line_361 = irNode;
	int PROBE_END_LINE_361 = 361;
	return v_ir_node_3610_line_361;
  }

  private Node maybeInjectCastNode(AstNode node, JSDocInfo info, Node irNode) {
    int PROBE_START_LINE_365 = 371;
	com.google.javascript.rhino.head.ast.AstNode p_node_3612_line_365 = node;
	int irfactory_1_expr73_line_365 = p_node_3612_line_365.getType();
	int q_lp_87_line_365 = com.google.javascript.rhino.head.Token.LP;
	boolean irfactory_1_expr72_line_365 = irfactory_1_expr73_line_365 == q_lp_87_line_365;
	boolean irfactory_1_expr71_line_365 = irfactory_1_expr72_line_365 && node instanceof ParenthesizedExpression;
	boolean irfactory_1_expr70_line_365 = irfactory_1_expr71_line_365 && info.hasType();
	boolean irfactory_1_expr69_line_365 = irfactory_1_expr70_line_365 && !irNode.isObjectLit();
	int PROBE_END_LINE_365 = 371;
	if (irfactory_1_expr69_line_365) {
      irNode = newNode(Token.CAST, irNode);
    }
    int PROBE_START_LINE_372 = 372;
	com.google.javascript.rhino.Node p_ir_node_3614_line_372 = irNode;
	int PROBE_END_LINE_372 = 372;
	return p_ir_node_3614_line_372;
  }

  private Node transformNameAsString(Name node) {
    Node irNode = transformDispatcher.processName(node, true);
    JSDocInfo jsDocInfo = handleJsDoc(node, irNode);
    if (jsDocInfo != null) {
      irNode.setJSDocInfo(jsDocInfo);
    }
    setSourceInfo(irNode, node);
    return irNode;
  }

  private Node transformNumberAsString(NumberLiteral literalNode) {
    Node irNode = newStringNode(getStringValue(literalNode.getNumber()));
    JSDocInfo jsDocInfo = handleJsDoc(literalNode, irNode);
    if (jsDocInfo != null) {
      irNode.setJSDocInfo(jsDocInfo);
    }
    setSourceInfo(irNode, literalNode);
    return irNode;
  }

  private static String getStringValue(double value) {
    long longValue = (long) value;

    // Return "1" instead of "1.0"
    if (longValue == value) {
      return Long.toString(longValue);
    } else {
      return Double.toString(value);
    }
  }

  private void setSourceInfo(Node irNode, AstNode node) {
    int PROBE_START_LINE_407 = 416;
	com.google.javascript.rhino.Node p_ir_node_3618_line_407 = irNode;
	int irfactory_1_expr75_line_407 = p_ir_node_3618_line_407.getLineno();
	int irfactory_1_expr76_line_407 = -1;
	boolean irfactory_1_expr74_line_407 = irfactory_1_expr75_line_407 == irfactory_1_expr76_line_407;
	int PROBE_END_LINE_407 = 416;
	if (irfactory_1_expr74_line_407) {
      int PROBE_START_LINE_411 = 411;
		com.google.javascript.rhino.head.ast.AstNode p_node_3619_line_411 = node;
		int irfactory_1_expr77_line_411 = p_node_3619_line_411.getLineno();
		int PROBE_END_LINE_411 = 411;
	// If we didn't already set the line, then set it now. This avoids
      // cases like ParenthesizedExpression where we just return a previous
      // node, but don't want the new node to get its parent's line number.
      int lineno = irfactory_1_expr77_line_411;
      int PROBE_START_LINE_412 = 412;
	com.google.javascript.rhino.Node p_ir_node_3618_line_412 = irNode;
	int v_lineno_3620_line_412 = lineno;
	int PROBE_END_LINE_412 = 412;
	p_ir_node_3618_line_412.setLineno(v_lineno_3620_line_412);
      int PROBE_START_LINE_413 = 413;
	com.google.javascript.rhino.head.ast.AstNode p_node_3619_line_413 = node;
	int irfactory_1_expr80_line_413 = p_node_3619_line_413.getAbsolutePosition();
	int irfactory_1_expr79_line_413 = position2charno(irfactory_1_expr80_line_413);
	int PROBE_END_LINE_413 = 413;
	int charno = irfactory_1_expr79_line_413;
      int PROBE_START_LINE_414 = 414;
	com.google.javascript.rhino.Node p_ir_node_3618_line_414 = irNode;
	int v_charno_3621_line_414 = charno;
	int PROBE_END_LINE_414 = 414;
	p_ir_node_3618_line_414.setCharno(v_charno_3621_line_414);
      int PROBE_START_LINE_415 = 415;
	com.google.javascript.rhino.Node p_ir_node_3618_line_415 = irNode;
	com.google.javascript.rhino.head.ast.AstNode p_node_3619_line_415 = node;
	int PROBE_END_LINE_415 = 415;
	maybeSetLengthFrom(p_ir_node_3618_line_415, p_node_3619_line_415);
    }
  }

  /**
   * Creates a JsDocInfoParser and parses the JsDoc string.
   *
   * Used both for handling individual JSDoc comments and for handling
   * file-level JSDoc comments (@fileoverview and @license).
   *
   * @param node The JsDoc Comment node to parse.
   * @param irNode
   * @return A JsDocInfoParser. Will contain either fileoverview JsDoc, or
   *     normal JsDoc, or no JsDoc (if the method parses to the wrong level).
   */
  private JsDocInfoParser createJsDocInfoParser(Comment node, Node irNode) {
    int PROBE_START_LINE_431 = 431;
	com.google.javascript.rhino.head.ast.Comment p_node_3622_line_431 = node;
	String irfactory_1_expr83_line_431 = p_node_3622_line_431.getValue();
	int PROBE_END_LINE_431 = 431;
	String comment = irfactory_1_expr83_line_431;
    int PROBE_START_LINE_432 = 432;
	com.google.javascript.rhino.head.ast.Comment p_node_3622_line_432 = node;
	int irfactory_1_expr84_line_432 = p_node_3622_line_432.getLineno();
	int PROBE_END_LINE_432 = 432;
	int lineno = irfactory_1_expr84_line_432;
    int PROBE_START_LINE_433 = 433;
	com.google.javascript.rhino.head.ast.Comment p_node_3622_line_433 = node;
	int irfactory_1_expr85_line_433 = p_node_3622_line_433.getAbsolutePosition();
	int PROBE_END_LINE_433 = 433;
	int position = irfactory_1_expr85_line_433;

    // The JsDocInfoParser expects the comment without the initial '/**'.
    int numOpeningChars = 3;
    JsDocInfoParser jsdocParser =
      new JsDocInfoParser(
          new JsDocTokenStream(comment.substring(numOpeningChars),
                               lineno,
                               position2charno(position) + numOpeningChars),
          node,
          irNode,
          config,
          errorReporter);
    int PROBE_START_LINE_446 = 446;
	com.google.javascript.jscomp.parsing.JsDocInfoParser v_jsdoc_parser_3628_line_446 = jsdocParser;
	com.google.javascript.rhino.Node.FileLevelJsDocBuilder f_file_level_js_doc_builder_3569_line_446 = fileLevelJsDocBuilder;
	int PROBE_END_LINE_446 = 446;
	v_jsdoc_parser_3628_line_446.setFileLevelJsDocBuilder(f_file_level_js_doc_builder_3569_line_446);
    int PROBE_START_LINE_447 = 447;
	com.google.javascript.jscomp.parsing.JsDocInfoParser v_jsdoc_parser_3628_line_447 = jsdocParser;
	com.google.javascript.rhino.JSDocInfo f_file_overview_info_3570_line_447 = fileOverviewInfo;
	int PROBE_END_LINE_447 = 447;
	v_jsdoc_parser_3628_line_447.setFileOverviewJSDocInfo(f_file_overview_info_3570_line_447);
    int PROBE_START_LINE_448 = 448;
	com.google.javascript.jscomp.parsing.JsDocInfoParser v_jsdoc_parser_3628_line_448 = jsdocParser;
	int PROBE_END_LINE_448 = 448;
	v_jsdoc_parser_3628_line_448.parse();
    int PROBE_START_LINE_449 = 449;
	com.google.javascript.jscomp.parsing.JsDocInfoParser v_jsdoc_parser_3628_line_449 = jsdocParser;
	int PROBE_END_LINE_449 = 449;
	return v_jsdoc_parser_3628_line_449;
  }

  // Set the length on the node if we're in IDE mode.
  private void maybeSetLengthFrom(Node node, AstNode source) {
    int PROBE_START_LINE_454 = 456;
	com.google.javascript.jscomp.parsing.Config f_config_3578_line_454 = config;
	boolean q_is_ide_mode_88_line_454 = f_config_3578_line_454.isIdeMode;
	int PROBE_END_LINE_454 = 456;
	if (q_is_ide_mode_88_line_454) {
      node.setLength(source.getLength());
    }
  }

  private int position2charno(int position) {
    int PROBE_START_LINE_460 = 460;
	String f_source_string_3575_line_460 = sourceString;
	int p_position_3631_line_460 = position;
	int irfactory_1_expr90_line_460 = f_source_string_3575_line_460.lastIndexOf('\n', p_position_3631_line_460);
	int PROBE_END_LINE_460 = 460;
	int lineIndex = irfactory_1_expr90_line_460;
    int PROBE_START_LINE_461 = 466;
	int v_line_index_3632_line_461 = lineIndex;
	int irfactory_1_expr92_line_461 = -1;
	boolean irfactory_1_expr91_line_461 = v_line_index_3632_line_461 == irfactory_1_expr92_line_461;
	int PROBE_END_LINE_461 = 466;
	if (irfactory_1_expr91_line_461) {
      int PROBE_START_LINE_462 = 462;
		int p_position_3631_line_462 = position;
		int PROBE_END_LINE_462 = 462;
	return p_position_3631_line_462;
    } else {
      int PROBE_START_LINE_465 = 465;
		int p_position_3631_line_465 = position;
		int v_line_index_3632_line_465 = lineIndex;
		int irfactory_1_expr93_line_465 = p_position_3631_line_465 - v_line_index_3632_line_465 - 1;
		int PROBE_END_LINE_465 = 465;
	// Subtract one for initial position being 0.
      return irfactory_1_expr93_line_465;
    }
  }

  private Node justTransform(AstNode node) {
    int PROBE_START_LINE_470 = 470;
	com.google.javascript.jscomp.parsing.IRFactory.TransformDispatcher f_transform_dispatcher_3580_line_470 = transformDispatcher;
	com.google.javascript.rhino.head.ast.AstNode p_node_3633_line_470 = node;
	com.google.javascript.rhino.Node irfactory_1_expr94_line_470 = f_transform_dispatcher_3580_line_470
			.process(p_node_3633_line_470);
	int PROBE_END_LINE_470 = 470;
	return irfactory_1_expr94_line_470;
  }

  private class TransformDispatcher extends TypeSafeDispatcher<Node> {
    private Node processGeneric(
        com.google.javascript.rhino.head.Node n) {
      int PROBE_START_LINE_476 = 476;
			com.google.javascript.rhino.head.Node p_n_3634_line_476 = n;
			int irfactory_1_expr97_line_476 = p_n_3634_line_476.getType();
			int irfactory_1_expr96_line_476 = transformTokenType(irfactory_1_expr97_line_476);
			Node irfactory_1_expr95_line_476 = newNode(irfactory_1_expr96_line_476);
			int PROBE_END_LINE_476 = 476;
	Node node = irfactory_1_expr95_line_476;
      int PROBE_START_LINE_477 = 479;
	com.google.javascript.rhino.head.Node p_n_3634_line_477 = n;
	int PROBE_END_LINE_477 = 479;
	for (com.google.javascript.rhino.head.Node child : p_n_3634_line_477) {
        node.addChildToBack(transform((AstNode)child));
      }
      int PROBE_START_LINE_480 = 480;
	com.google.javascript.rhino.Node v_node_3635_line_480 = node;
	int PROBE_END_LINE_480 = 480;
	return v_node_3635_line_480;
    }

    /**
     * Transforms the given node and then sets its type to Token.STRING if it
     * was Token.NAME. If its type was already Token.STRING, then quotes it.
     * Used for properties, as the old AST uses String tokens, while the new one
     * uses Name tokens for unquoted strings. For example, in
     * var o = {'a' : 1, b: 2};
     * the string 'a' is quoted, while the name b is turned into a string, but
     * unquoted.
     */
    private Node transformAsString(AstNode n) {
      Node ret;
      if (n instanceof Name) {
        ret = transformNameAsString((Name)n);
      } else if (n instanceof NumberLiteral) {
        ret = transformNumberAsString((NumberLiteral)n);
        ret.putBooleanProp(Node.QUOTED_PROP, true);
      } else {
        ret = transform(n);
        ret.putBooleanProp(Node.QUOTED_PROP, true);
      }
      Preconditions.checkState(ret.isString());
      return ret;
    }

    @Override
    Node processArrayLiteral(ArrayLiteral literalNode) {
      if (literalNode.isDestructuring()) {
        reportDestructuringAssign(literalNode);
      }

      Node node = newNode(Token.ARRAYLIT);
      for (AstNode child : literalNode.getElements()) {
        Node c = transform(child);
        node.addChildToBack(c);
      }
      return node;
    }

    @Override
    Node processAssignment(Assignment assignmentNode) {
      Node assign = processInfixExpression(assignmentNode);
      Node target = assign.getFirstChild();
      if (!validAssignmentTarget(target)) {
        errorReporter.error(
          "invalid assignment target",
          sourceName,
          target.getLineno(), "", 0);
      }
      return assign;
    }

    @Override
    Node processAstRoot(AstRoot rootNode) {
      int PROBE_START_LINE_536 = 536;
		int q_script_89_line_536 = Token.SCRIPT;
		Node irfactory_1_expr98_line_536 = newNode(q_script_89_line_536);
		int PROBE_END_LINE_536 = 536;
	Node node = irfactory_1_expr98_line_536;
      int PROBE_START_LINE_537 = 539;
	com.google.javascript.rhino.head.ast.AstRoot p_root_node_3640_line_537 = rootNode;
	int PROBE_END_LINE_537 = 539;
	for (com.google.javascript.rhino.head.Node child : p_root_node_3640_line_537) {
        int PROBE_START_LINE_538 = 538;
		com.google.javascript.rhino.Node v_node_3641_line_538 = node;
		com.google.javascript.rhino.head.Node v_child_3642_line_538 = child;
		com.google.javascript.rhino.Node irfactory_1_expr100_line_538 = transform((AstNode) v_child_3642_line_538);
		int PROBE_END_LINE_538 = 538;
		v_node_3641_line_538.addChildToBack(irfactory_1_expr100_line_538);
      }
      int PROBE_START_LINE_540 = 540;
	com.google.javascript.rhino.Node v_node_3641_line_540 = node;
	int PROBE_END_LINE_540 = 540;
	parseDirectives(v_node_3641_line_540);
      int PROBE_START_LINE_541 = 541;
	com.google.javascript.rhino.Node v_node_3641_line_541 = node;
	int PROBE_END_LINE_541 = 541;
	return v_node_3641_line_541;
    }

    /**
     * Parse the directives, encode them in the AST, and remove their nodes.
     *
     * For information on ES5 directives, see section 14.1 of
     * ECMA-262, Edition 5.
     *
     * It would be nice if Rhino would eventually take care of this for
     * us, but right now their directive-processing is a one-off.
     */
    private void parseDirectives(Node node) {
      // Remove all the directives, and encode them in the AST.
      Set<String> directives = null;
      while (true) {
        int PROBE_START_LINE_556 = 556;
		com.google.javascript.rhino.Node p_node_3643_line_556 = node;
		com.google.javascript.rhino.Node irfactory_1_expr104_line_556 = p_node_3643_line_556.getFirstChild();
		boolean irfactory_1_expr103_line_556 = isDirective(irfactory_1_expr104_line_556);
		if (!(irfactory_1_expr103_line_556)) {
			break;
		}
		int PROBE_END_LINE_556 = 556;
		String directive = node.removeFirstChild().getFirstChild().getString();
        if (directives == null) {
          directives = Sets.newHashSet(directive);
        } else {
          directives.add(directive);
        }
      }

      int PROBE_START_LINE_565 = 567;
	Set<String> v_directives_3644_line_565 = directives;
	boolean irfactory_1_expr105_line_565 = v_directives_3644_line_565 != null;
	int PROBE_END_LINE_565 = 567;
	if (irfactory_1_expr105_line_565) {
        node.setDirectives(directives);
      }
    }

    private boolean isDirective(Node n) {
      int PROBE_START_LINE_571 = 571;
		com.google.javascript.rhino.Node p_n_3645_line_571 = n;
		boolean irfactory_1_expr106_line_571 = p_n_3645_line_571 == null;
		int PROBE_END_LINE_571 = 571;
	if (irfactory_1_expr106_line_571) return false;

      int PROBE_START_LINE_573 = 573;
	com.google.javascript.rhino.Node p_n_3645_line_573 = n;
	int irfactory_1_expr107_line_573 = p_n_3645_line_573.getType();
	int PROBE_END_LINE_573 = 573;
	int nType = irfactory_1_expr107_line_573;
      int PROBE_START_LINE_574 = 576;
	int v_n_type_3646_line_574 = nType;
	int q_expr_result_89_line_574 = Token.EXPR_RESULT;
	boolean irfactory_1_expr110_line_574 = v_n_type_3646_line_574 == q_expr_result_89_line_574;
	boolean irfactory_1_expr109_line_574 = irfactory_1_expr110_line_574 && n.getFirstChild().isString();
	boolean irfactory_1_expr108_line_574 = irfactory_1_expr109_line_574
			&& ALLOWED_DIRECTIVES.contains(n.getFirstChild().getString());
	int PROBE_END_LINE_574 = 576;
	return irfactory_1_expr108_line_574;
    }

    @Override
    Node processBlock(Block blockNode) {
      int PROBE_START_LINE_581 = 581;
		com.google.javascript.rhino.head.ast.Block p_block_node_3647_line_581 = blockNode;
		com.google.javascript.rhino.Node irfactory_1_expr111_line_581 = processGeneric(p_block_node_3647_line_581);
		int PROBE_END_LINE_581 = 581;
	return irfactory_1_expr111_line_581;
    }

    @Override
    Node processBreakStatement(BreakStatement statementNode) {
      Node node = newNode(Token.BREAK);
      if (statementNode.getBreakLabel() != null) {
        Node labelName = transform(statementNode.getBreakLabel());
        // Change the NAME to LABEL_NAME
        labelName.setType(Token.LABEL_NAME);
        node.addChildToBack(labelName);
      }
      return node;
    }

    @Override
    Node processCatchClause(CatchClause clauseNode) {
      AstNode catchVar = clauseNode.getVarName();
      Node node = newNode(Token.CATCH, transform(catchVar));
      if (clauseNode.getCatchCondition() != null) {
        errorReporter.error(
            "Catch clauses are not supported",
            sourceName,
            clauseNode.getCatchCondition().getLineno(), "", 0);
      }
      node.addChildToBack(transformBlock(clauseNode.getBody()));
      return node;
    }

    @Override
    Node processConditionalExpression(ConditionalExpression exprNode) {
      return newNode(
          Token.HOOK,
          transform(exprNode.getTestExpression()),
          transform(exprNode.getTrueExpression()),
          transform(exprNode.getFalseExpression()));
    }

    @Override
    Node processContinueStatement(ContinueStatement statementNode) {
      Node node = newNode(Token.CONTINUE);
      if (statementNode.getLabel() != null) {
        Node labelName = transform(statementNode.getLabel());
        // Change the NAME to LABEL_NAME
        labelName.setType(Token.LABEL_NAME);
        node.addChildToBack(labelName);
      }
      return node;
    }

    @Override
    Node processDoLoop(DoLoop loopNode) {
      return newNode(
          Token.DO,
          transformBlock(loopNode.getBody()),
          transform(loopNode.getCondition()));
    }

    @Override
    Node processElementGet(ElementGet getNode) {
      return newNode(
          Token.GETELEM,
          transform(getNode.getTarget()),
          transform(getNode.getElement()));
    }

    @Override
    Node processEmptyExpression(EmptyExpression exprNode) {
      Node node = newNode(Token.EMPTY);
      return node;
    }

    @Override
    Node processEmptyStatement(EmptyStatement exprNode) {
      Node node = newNode(Token.EMPTY);
      return node;
    }

    @Override
    Node processExpressionStatement(ExpressionStatement statementNode) {
      Node node = newNode(transformTokenType(statementNode.getType()));
      node.addChildToBack(transform(statementNode.getExpression()));
      return node;
    }

    @Override
    Node processForInLoop(ForInLoop loopNode) {
      if (loopNode.isForEach()) {
        errorReporter.error(
            "unsupported language extension: for each",
            sourceName,
            loopNode.getLineno(), "", 0);

        // Return the bare minimum to put the AST in a valid state.
        return newNode(Token.EXPR_RESULT, Node.newNumber(0));
      }
      return newNode(
          Token.FOR,
          transform(loopNode.getIterator()),
          transform(loopNode.getIteratedObject()),
          transformBlock(loopNode.getBody()));
    }

    @Override
    Node processForLoop(ForLoop loopNode) {
      Node node = newNode(
          Token.FOR,
          transform(loopNode.getInitializer()),
          transform(loopNode.getCondition()),
          transform(loopNode.getIncrement()));
      node.addChildToBack(transformBlock(loopNode.getBody()));
      return node;
    }

    @Override
    Node processFunctionCall(FunctionCall callNode) {
      Node node = newNode(transformTokenType(callNode.getType()),
                           transform(callNode.getTarget()));
      for (AstNode child : callNode.getArguments()) {
        node.addChildToBack(transform(child));
      }

      node.setLineno(node.getFirstChild().getLineno());
      node.setCharno(node.getFirstChild().getCharno());
      maybeSetLengthFrom(node, callNode);
      return node;
    }

    @Override
    Node processFunctionNode(FunctionNode functionNode) {
      int PROBE_START_LINE_711 = 711;
		com.google.javascript.rhino.head.ast.FunctionNode p_function_node_3660_line_711 = functionNode;
		Name irfactory_1_expr112_line_711 = p_function_node_3660_line_711.getFunctionName();
		int PROBE_END_LINE_711 = 711;
	Name name = irfactory_1_expr112_line_711;
      Boolean isUnnamedFunction = false;
      int PROBE_START_LINE_713 = 727;
	com.google.javascript.rhino.head.ast.Name v_name_3661_line_713 = name;
	boolean irfactory_1_expr113_line_713 = v_name_3661_line_713 == null;
	int PROBE_END_LINE_713 = 727;
	if (irfactory_1_expr113_line_713) {
        int functionType = functionNode.getFunctionType();
        if (functionType != FunctionNode.FUNCTION_EXPRESSION) {
          errorReporter.error(
            "unnamed function statement",
            sourceName,
            functionNode.getLineno(), "", 0);

          // Return the bare minimum to put the AST in a valid state.
          return newNode(Token.EXPR_RESULT, Node.newNumber(0));
        }
        name = new Name();
        name.setIdentifier("");
        isUnnamedFunction = true;
      }
      int PROBE_START_LINE_728 = 728;
	int q_function_90_line_728 = Token.FUNCTION;
	Node irfactory_1_expr114_line_728 = newNode(q_function_90_line_728);
	int PROBE_END_LINE_728 = 728;
	Node node = irfactory_1_expr114_line_728;
      int PROBE_START_LINE_729 = 729;
	com.google.javascript.rhino.head.ast.Name v_name_3661_line_729 = name;
	Node irfactory_1_expr115_line_729 = transform(v_name_3661_line_729);
	int PROBE_END_LINE_729 = 729;
	Node newName = irfactory_1_expr115_line_729;
      int PROBE_START_LINE_730 = 741;
	Boolean v_is_unnamed_function_3662_line_730 = isUnnamedFunction;
	int PROBE_END_LINE_730 = 741;
	if (v_is_unnamed_function_3662_line_730) {
        // Old Rhino tagged the empty name node with the line number of the
        // declaration.
        newName.setLineno(functionNode.getLineno());
        // TODO(bowdidge) Mark line number of paren correctly.
        // Same problem as below - the left paren might not be on the
        // same line as the function keyword.
        int lpColumn = functionNode.getAbsolutePosition() +
            functionNode.getLp();
        newName.setCharno(position2charno(lpColumn));
        maybeSetLengthFrom(newName, name);
      }

      int PROBE_START_LINE_743 = 743;
	com.google.javascript.rhino.Node v_node_3663_line_743 = node;
	com.google.javascript.rhino.Node v_new_name_3664_line_743 = newName;
	int PROBE_END_LINE_743 = 743;
	v_node_3663_line_743.addChildToBack(v_new_name_3664_line_743);
      int PROBE_START_LINE_744 = 744;
	int q_param_list_90_line_744 = Token.PARAM_LIST;
	Node irfactory_1_expr117_line_744 = newNode(q_param_list_90_line_744);
	int PROBE_END_LINE_744 = 744;
	Node lp = irfactory_1_expr117_line_744;
      int PROBE_START_LINE_751 = 751;
	com.google.javascript.rhino.head.ast.FunctionNode p_function_node_3660_line_751 = functionNode;
	Name irfactory_1_expr118_line_751 = p_function_node_3660_line_751.getFunctionName();
	int PROBE_END_LINE_751 = 751;
	// The left paren's complicated because it's not represented by an
      // AstNode, so there's nothing that has the actual line number that it
      // appeared on.  We know the paren has to appear on the same line as the
      // function name (or else a semicolon will be inserted.)  If there's no
      // function name, assume the paren was on the same line as the function.
      // TODO(bowdidge): Mark line number of paren correctly.
      Name fnName = irfactory_1_expr118_line_751;
      int PROBE_START_LINE_752 = 756;
	com.google.javascript.rhino.head.ast.Name v_fn_name_3666_line_752 = fnName;
	boolean irfactory_1_expr119_line_752 = v_fn_name_3666_line_752 != null;
	int PROBE_END_LINE_752 = 756;
	if (irfactory_1_expr119_line_752) {
        int PROBE_START_LINE_753 = 753;
		com.google.javascript.rhino.Node v_lp_3665_line_753 = lp;
		com.google.javascript.rhino.head.ast.Name v_fn_name_3666_line_753 = fnName;
		int irfactory_1_expr121_line_753 = v_fn_name_3666_line_753.getLineno();
		int PROBE_END_LINE_753 = 753;
		v_lp_3665_line_753.setLineno(irfactory_1_expr121_line_753);
      } else {
        lp.setLineno(functionNode.getLineno());
      }
      int PROBE_START_LINE_757 = 758;
	com.google.javascript.rhino.head.ast.FunctionNode p_function_node_3660_line_757 = functionNode;
	int irfactory_1_expr123_line_757 = p_function_node_3660_line_757.getLp();
	int irfactory_1_expr122_line_757 = irfactory_1_expr123_line_757 + functionNode.getAbsolutePosition();
	int PROBE_END_LINE_757 = 758;
	int lparenCharno = irfactory_1_expr122_line_757;

      int PROBE_START_LINE_760 = 760;
	com.google.javascript.rhino.Node v_lp_3665_line_760 = lp;
	int v_lparen_charno_3667_line_760 = lparenCharno;
	int irfactory_1_expr125_line_760 = position2charno(v_lparen_charno_3667_line_760);
	int PROBE_END_LINE_760 = 760;
	v_lp_3665_line_760.setCharno(irfactory_1_expr125_line_760);
      int PROBE_START_LINE_761 = 777;
	com.google.javascript.rhino.head.ast.FunctionNode p_function_node_3660_line_761 = functionNode;
	List<com.google.javascript.rhino.head.ast.AstNode> irfactory_1_expr126_line_761 = p_function_node_3660_line_761
			.getParams();
	int PROBE_END_LINE_761 = 777;
	for (AstNode param : irfactory_1_expr126_line_761) {
        Node paramNode = transform(param);
        // When in ideMode Rhino can generate a param list with only a single
        // ErrorNode. This is transformed into an EMPTY node. Drop this node in
        // ideMode to keep the AST in a valid state.
        if (paramNode.isName()) {
          lp.addChildToBack(paramNode);
        } else {
          // We expect this in ideMode or when there is an error handling
          // destructuring parameter assignments which aren't supported
          // (an error has already been reported).
          Preconditions.checkState(
              config.isIdeMode
              || paramNode.isObjectLit()
              || paramNode.isArrayLit());
        }
      }
      int PROBE_START_LINE_778 = 778;
	com.google.javascript.rhino.Node v_node_3663_line_778 = node;
	com.google.javascript.rhino.Node v_lp_3665_line_778 = lp;
	int PROBE_END_LINE_778 = 778;
	v_node_3663_line_778.addChildToBack(v_lp_3665_line_778);

      int PROBE_START_LINE_780 = 780;
	com.google.javascript.rhino.head.ast.FunctionNode p_function_node_3660_line_780 = functionNode;
	com.google.javascript.rhino.head.ast.AstNode irfactory_1_expr129_line_780 = p_function_node_3660_line_780.getBody();
	Node irfactory_1_expr128_line_780 = transform(irfactory_1_expr129_line_780);
	int PROBE_END_LINE_780 = 780;
	Node bodyNode = irfactory_1_expr128_line_780;
      int PROBE_START_LINE_781 = 787;
	com.google.javascript.rhino.Node v_body_node_3669_line_781 = bodyNode;
	boolean irfactory_1_expr131_line_781 = v_body_node_3669_line_781.isBlock();
	boolean irfactory_1_expr130_line_781 = !irfactory_1_expr131_line_781;
	int PROBE_END_LINE_781 = 787;
	if (irfactory_1_expr130_line_781) {
        // When in ideMode Rhino tries to parse some constructs the compiler
        // doesn't support, repair it here. see Rhino's
        // Parser#parseFunctionBodyExpr.
        Preconditions.checkState(config.isIdeMode);
        bodyNode = IR.block();
      }
      int PROBE_START_LINE_788 = 788;
	com.google.javascript.rhino.Node v_body_node_3669_line_788 = bodyNode;
	int PROBE_END_LINE_788 = 788;
	parseDirectives(v_body_node_3669_line_788);
      int PROBE_START_LINE_789 = 789;
	com.google.javascript.rhino.Node v_node_3663_line_789 = node;
	com.google.javascript.rhino.Node v_body_node_3669_line_789 = bodyNode;
	int PROBE_END_LINE_789 = 789;
	v_node_3663_line_789.addChildToBack(v_body_node_3669_line_789);
     int PROBE_START_LINE_790 = 790;
	com.google.javascript.rhino.Node v_node_3663_line_790 = node;
	int PROBE_END_LINE_790 = 790;
	return v_node_3663_line_790;
    }

    @Override
    Node processIfStatement(IfStatement statementNode) {
      Node node = newNode(Token.IF);
      node.addChildToBack(transform(statementNode.getCondition()));
      node.addChildToBack(transformBlock(statementNode.getThenPart()));
      if (statementNode.getElsePart() != null) {
        node.addChildToBack(transformBlock(statementNode.getElsePart()));
      }
      return node;
    }

    @Override
    Node processInfixExpression(InfixExpression exprNode) {
      Node n =  newNode(
          transformTokenType(exprNode.getType()),
          transform(exprNode.getLeft()),
          transform(exprNode.getRight()));
      n.setLineno(exprNode.getLineno());
      n.setCharno(position2charno(exprNode.getAbsolutePosition()));
      maybeSetLengthFrom(n, exprNode);
      return n;
    }

    @Override
    Node processKeywordLiteral(KeywordLiteral literalNode) {
      return newNode(transformTokenType(literalNode.getType()));
    }

    @Override
    Node processLabel(Label labelNode) {
      return newStringNode(Token.LABEL_NAME, labelNode.getName());
    }

    @Override
    Node processLabeledStatement(LabeledStatement statementNode) {
      Node node = newNode(Token.LABEL);
      Node prev = null;
      Node cur = node;
      for (Label label : statementNode.getLabels()) {
        if (prev != null) {
          prev.addChildToBack(cur);
        }
        cur.addChildToBack(transform(label));

        cur.setLineno(label.getLineno());
        maybeSetLengthFrom(cur, label);

        int clauseAbsolutePosition =
            position2charno(label.getAbsolutePosition());
        cur.setCharno(clauseAbsolutePosition);

        prev = cur;
        cur = newNode(Token.LABEL);
      }
      prev.addChildToBack(transform(statementNode.getStatement()));
      return node;
    }

    @Override
    Node processName(Name nameNode) {
      int PROBE_START_LINE_853 = 853;
		com.google.javascript.rhino.head.ast.Name p_name_node_3675_line_853 = nameNode;
		com.google.javascript.rhino.Node irfactory_1_expr134_line_853 = processName(p_name_node_3675_line_853, false);
		int PROBE_END_LINE_853 = 853;
	return irfactory_1_expr134_line_853;
    }

    Node processName(Name nameNode, boolean asString) {
      int PROBE_START_LINE_857 = 867;
		boolean p_as_string_3677_line_857 = asString;
		int PROBE_END_LINE_857 = 867;
	if (p_as_string_3677_line_857) {
        return newStringNode(Token.STRING, nameNode.getIdentifier());
      } else {
        int PROBE_START_LINE_860 = 865;
		com.google.javascript.rhino.head.ast.Name p_name_node_3676_line_860 = nameNode;
		String irfactory_1_expr136_line_860 = p_name_node_3676_line_860.getIdentifier();
		boolean irfactory_1_expr135_line_860 = isReservedKeyword(irfactory_1_expr136_line_860);
		int PROBE_END_LINE_860 = 865;
		if (irfactory_1_expr135_line_860) {
          errorReporter.error(
            "identifier is a reserved word",
            sourceName,
            nameNode.getLineno(), "", 0);
        }
        int PROBE_START_LINE_866 = 866;
		int q_name_91_line_866 = Token.NAME;
		com.google.javascript.rhino.head.ast.Name p_name_node_3676_line_866 = nameNode;
		String irfactory_1_expr138_line_866 = p_name_node_3676_line_866.getIdentifier();
		com.google.javascript.rhino.Node irfactory_1_expr137_line_866 = newStringNode(q_name_91_line_866,
				irfactory_1_expr138_line_866);
		int PROBE_END_LINE_866 = 866;
		return irfactory_1_expr137_line_866;
      }
    }

    /**
     * @return Whether the
     */
    private boolean isReservedKeyword(String identifier) {
      int PROBE_START_LINE_874 = 874;
		Set<String> f_reserved_keywords_3582_line_874 = reservedKeywords;
		boolean irfactory_1_expr140_line_874 = f_reserved_keywords_3582_line_874 != null;
		boolean irfactory_1_expr141_line_874 = true;
		if (irfactory_1_expr140_line_874) {
			Set<String> f_reserved_keywords_3582_line_874_v1 = reservedKeywords;
			String p_identifier_3678_line_874 = identifier;
			irfactory_1_expr141_line_874 = f_reserved_keywords_3582_line_874_v1.contains(p_identifier_3678_line_874);
		}
		boolean irfactory_1_expr139_line_874 = irfactory_1_expr140_line_874 && irfactory_1_expr141_line_874;
		int PROBE_END_LINE_874 = 874;
	return irfactory_1_expr139_line_874;
    }

    @Override
    Node processNewExpression(NewExpression exprNode) {
      Node node = newNode(
          transformTokenType(exprNode.getType()),
          transform(exprNode.getTarget()));
      for (AstNode child : exprNode.getArguments()) {
        node.addChildToBack(transform(child));
      }
      node.setLineno(exprNode.getLineno());
      node.setCharno(position2charno(exprNode.getAbsolutePosition()));
      maybeSetLengthFrom(node, exprNode);
      return node;
    }

    @Override
    Node processNumberLiteral(NumberLiteral literalNode) {
      return newNumberNode(literalNode.getNumber());
    }

    @Override
    Node processObjectLiteral(ObjectLiteral literalNode) {
      if (literalNode.isDestructuring()) {
        reportDestructuringAssign(literalNode);
      }

      Node node = newNode(Token.OBJECTLIT);
      for (ObjectProperty el : literalNode.getElements()) {
        if (config.languageMode == LanguageMode.ECMASCRIPT3) {
          if (el.isGetter()) {
            reportGetter(el);
            continue;
          } else if (el.isSetter()) {
            reportSetter(el);
            continue;
          }
        }

        Node key = transformAsString(el.getLeft());
        key.setType(Token.STRING_KEY);

        Node value = transform(el.getRight());
        if (el.isGetter()) {
          key.setType(Token.GETTER_DEF);
          Preconditions.checkState(value.isFunction());
          if (getFnParamNode(value).hasChildren()) {
            reportGetterParam(el.getLeft());
          }
        } else if (el.isSetter()) {
          key.setType(Token.SETTER_DEF);
          Preconditions.checkState(value.isFunction());
          if (!getFnParamNode(value).hasOneChild()) {
            reportSetterParam(el.getLeft());
          }
        }
        key.addChildToFront(value);
        node.addChildToBack(key);
      }
      return node;
    }

    /**
     * @param fnNode The function.
     * @return The Node containing the Function parameters.
     */
   Node getFnParamNode(Node fnNode) {
     // Function NODE: [ FUNCTION -> NAME, LP -> ARG1, ARG2, ... ]
     Preconditions.checkArgument(fnNode.isFunction());
     return fnNode.getFirstChild().getNext();
   }

    @Override
    Node processObjectProperty(ObjectProperty propertyNode) {
      return processInfixExpression(propertyNode);
    }

    @Override
    Node processParenthesizedExpression(ParenthesizedExpression exprNode) {
      Node node = transform(exprNode.getExpression());
      return node;
    }

    @Override
    Node processPropertyGet(PropertyGet getNode) {
      Node leftChild = transform(getNode.getTarget());
      Node newNode = newNode(
          Token.GETPROP, leftChild, transformAsString(getNode.getProperty()));
      newNode.setLineno(leftChild.getLineno());
      newNode.setCharno(leftChild.getCharno());
      maybeSetLengthFrom(newNode, getNode);
      return newNode;
    }

    @Override
    Node processRegExpLiteral(RegExpLiteral literalNode) {
      Node literalStringNode = newStringNode(literalNode.getValue());
      // assume it's on the same line.
      literalStringNode.setLineno(literalNode.getLineno());
      maybeSetLengthFrom(literalStringNode, literalNode);
      Node node = newNode(Token.REGEXP, literalStringNode);
      String flags = literalNode.getFlags();
      if (flags != null && !flags.isEmpty()) {
        Node flagsNode = newStringNode(flags);
        // Assume the flags are on the same line as the literal node.
        flagsNode.setLineno(literalNode.getLineno());
        maybeSetLengthFrom(flagsNode, literalNode);
        node.addChildToBack(flagsNode);
      }
      return node;
    }

    @Override
    Node processReturnStatement(ReturnStatement statementNode) {
      Node node = newNode(Token.RETURN);
      if (statementNode.getReturnValue() != null) {
        node.addChildToBack(transform(statementNode.getReturnValue()));
      }
      return node;
    }

    @Override
    Node processScope(Scope scopeNode) {
      return processGeneric(scopeNode);
    }

    @Override
    Node processStringLiteral(StringLiteral literalNode) {
      String value = literalNode.getValue();
      Node n = newStringNode(value);
      if (value.indexOf('\u000B') != -1) {
        // NOTE(nicksantos): In JavaScript, there are 3 ways to
        // represent a vertical tab: \v, \x0B, \u000B.
        // The \v notation was added later, and is not understood
        // on IE. So we need to preserve it as-is. This is really
        // obnoxious, because we do not have a good way to represent
        // how the original string was encoded without making the
        // representation of strings much more complicated.
        //
        // To handle this, we look at the original source test, and
        // mark the string as \v-encoded or not. If a string is
        // \v encoded, then all the vertical tabs in that string
        // will be encoded with a \v.
        int start = literalNode.getAbsolutePosition();
        int end = start + literalNode.getLength();
        if (start < sourceString.length() &&
            (sourceString.substring(
                 start, Math.min(sourceString.length(), end))
             .indexOf("\\v") != -1)) {
          n.putBooleanProp(Node.SLASH_V, true);
        }
      }
      return n;
    }

    @Override
    Node processSwitchCase(SwitchCase caseNode) {
      Node node;
      if (caseNode.isDefault()) {
        node = newNode(Token.DEFAULT_CASE);
      } else {
        AstNode expr = caseNode.getExpression();
        node = newNode(Token.CASE, transform(expr));
      }
      Node block = newNode(Token.BLOCK);
      block.putBooleanProp(Node.SYNTHETIC_BLOCK_PROP, true);
      block.setLineno(caseNode.getLineno());
      block.setCharno(position2charno(caseNode.getAbsolutePosition()));
      maybeSetLengthFrom(block, caseNode);
      if (caseNode.getStatements() != null) {
        for (AstNode child : caseNode.getStatements()) {
          block.addChildToBack(transform(child));
        }
      }
      node.addChildToBack(block);
      return node;
    }

    @Override
    Node processSwitchStatement(SwitchStatement statementNode) {
      Node node = newNode(Token.SWITCH,
          transform(statementNode.getExpression()));
      for (AstNode child : statementNode.getCases()) {
        node.addChildToBack(transform(child));
      }
      return node;
    }

    @Override
    Node processThrowStatement(ThrowStatement statementNode) {
      return newNode(Token.THROW,
          transform(statementNode.getExpression()));
    }

    @Override
    Node processTryStatement(TryStatement statementNode) {
      Node node = newNode(Token.TRY,
          transformBlock(statementNode.getTryBlock()));
      Node block = newNode(Token.BLOCK);
      boolean lineSet = false;

      for (CatchClause cc : statementNode.getCatchClauses()) {
        // Mark the enclosing block at the same line as the first catch
        // clause.
        if (lineSet == false) {
          block.setLineno(cc.getLineno());
          maybeSetLengthFrom(block, cc);
          lineSet = true;
        }
        block.addChildToBack(transform(cc));
      }
      node.addChildToBack(block);

      AstNode finallyBlock = statementNode.getFinallyBlock();
      if (finallyBlock != null) {
        node.addChildToBack(transformBlock(finallyBlock));
      }

      // If we didn't set the line on the catch clause, then
      // we've got an empty catch clause.  Set its line to be the same
      // as the finally block (to match Old Rhino's behavior.)
      if ((lineSet == false) && (finallyBlock != null)) {
        block.setLineno(finallyBlock.getLineno());
        maybeSetLengthFrom(block, finallyBlock);
      }

      return node;
    }

    @Override
    Node processUnaryExpression(UnaryExpression exprNode) {
      int type = transformTokenType(exprNode.getType());
      Node operand = transform(exprNode.getOperand());
      if (type == Token.NEG && operand.isNumber()) {
        operand.setDouble(-operand.getDouble());
        return operand;
      } else {
        if (type == Token.DELPROP &&
            !(operand.isGetProp() ||
              operand.isGetElem() ||
              operand.isName())) {
          String msg =
              "Invalid delete operand. Only properties can be deleted.";
          errorReporter.error(
              msg,
              sourceName,
              operand.getLineno(), "", 0);
        } else  if (type == Token.INC || type == Token.DEC) {
          if (!validAssignmentTarget(operand)) {
            String msg = (type == Token.INC)
                ? "invalid increment target"
                : "invalid decrement target";
            errorReporter.error(
                msg,
                sourceName,
                operand.getLineno(), "", 0);
          }
        }

        Node node = newNode(type, operand);
        if (exprNode.isPostfix()) {
          node.putBooleanProp(Node.INCRDECR_PROP, true);
        }
        return node;
      }
    }

    private boolean validAssignmentTarget(Node target) {
      switch (target.getType()) {
        case Token.NAME:
        case Token.GETPROP:
        case Token.GETELEM:
          return true;
      }
      return false;
    }

    @Override
    Node processVariableDeclaration(VariableDeclaration declarationNode) {
      if (!config.acceptConstKeyword && declarationNode.getType() ==
          com.google.javascript.rhino.head.Token.CONST) {
        processIllegalToken(declarationNode);
      }

      Node node = newNode(Token.VAR);
      for (VariableInitializer child : declarationNode.getVariables()) {
        node.addChildToBack(transform(child));
      }
      return node;
    }

    @Override
    Node processVariableInitializer(VariableInitializer initializerNode) {
      Node node = transform(initializerNode.getTarget());
      if (initializerNode.getInitializer() != null) {
        Node initalizer = transform(initializerNode.getInitializer());
        node.addChildToBack(initalizer);
      }
      return node;
    }

    @Override
    Node processWhileLoop(WhileLoop loopNode) {
      return newNode(
          Token.WHILE,
          transform(loopNode.getCondition()),
          transformBlock(loopNode.getBody()));
    }

    @Override
    Node processWithStatement(WithStatement statementNode) {
      return newNode(
          Token.WITH,
          transform(statementNode.getExpression()),
          transformBlock(statementNode.getStatement()));
    }

    @Override
    Node processIllegalToken(AstNode node) {
      errorReporter.error(
          "Unsupported syntax: " +
          com.google.javascript.rhino.head.Token.typeToName(
              node.getType()),
          sourceName,
          node.getLineno(), "", 0);
      return newNode(Token.EMPTY);
    }

    void reportDestructuringAssign(AstNode node) {
      errorReporter.error(
          "destructuring assignment forbidden",
          sourceName,
          node.getLineno(), "", 0);
    }

    void reportGetter(AstNode node) {
      errorReporter.error(
          GETTER_ERROR_MESSAGE,
          sourceName,
          node.getLineno(), "", 0);
    }

    void reportSetter(AstNode node) {
      errorReporter.error(
          SETTER_ERROR_MESSAGE,
          sourceName,
          node.getLineno(), "", 0);
    }

    void reportGetterParam(AstNode node) {
      errorReporter.error(
          "getters may not have parameters",
          sourceName,
          node.getLineno(), "", 0);
    }

    void reportSetterParam(AstNode node) {
      errorReporter.error(
          "setters must have exactly one parameter",
          sourceName,
          node.getLineno(), "", 0);
    }
  }

  private static int transformTokenType(int token) {
    int PROBE_START_LINE_1240 = 1415;
	int p_token_3706_line_1240 = token;
	int PROBE_END_LINE_1240 = 1415;
	switch (p_token_3706_line_1240) {
      case com.google.javascript.rhino.head.Token.RETURN:
        return Token.RETURN;
      case com.google.javascript.rhino.head.Token.BITOR:
        return Token.BITOR;
      case com.google.javascript.rhino.head.Token.BITXOR:
        return Token.BITXOR;
      case com.google.javascript.rhino.head.Token.BITAND:
        return Token.BITAND;
      case com.google.javascript.rhino.head.Token.EQ:
        return Token.EQ;
      case com.google.javascript.rhino.head.Token.NE:
        return Token.NE;
      case com.google.javascript.rhino.head.Token.LT:
        return Token.LT;
      case com.google.javascript.rhino.head.Token.LE:
        return Token.LE;
      case com.google.javascript.rhino.head.Token.GT:
        return Token.GT;
      case com.google.javascript.rhino.head.Token.GE:
        return Token.GE;
      case com.google.javascript.rhino.head.Token.LSH:
        return Token.LSH;
      case com.google.javascript.rhino.head.Token.RSH:
        return Token.RSH;
      case com.google.javascript.rhino.head.Token.URSH:
        return Token.URSH;
      case com.google.javascript.rhino.head.Token.ADD:
        return Token.ADD;
      case com.google.javascript.rhino.head.Token.SUB:
        return Token.SUB;
      case com.google.javascript.rhino.head.Token.MUL:
        return Token.MUL;
      case com.google.javascript.rhino.head.Token.DIV:
        return Token.DIV;
      case com.google.javascript.rhino.head.Token.MOD:
        return Token.MOD;
      case com.google.javascript.rhino.head.Token.NOT:
        return Token.NOT;
      case com.google.javascript.rhino.head.Token.BITNOT:
        return Token.BITNOT;
      case com.google.javascript.rhino.head.Token.POS:
        return Token.POS;
      case com.google.javascript.rhino.head.Token.NEG:
        return Token.NEG;
      case com.google.javascript.rhino.head.Token.NEW:
        return Token.NEW;
      case com.google.javascript.rhino.head.Token.DELPROP:
        return Token.DELPROP;
      case com.google.javascript.rhino.head.Token.TYPEOF:
        return Token.TYPEOF;
      case com.google.javascript.rhino.head.Token.GETPROP:
        return Token.GETPROP;
      case com.google.javascript.rhino.head.Token.GETELEM:
        return Token.GETELEM;
      case com.google.javascript.rhino.head.Token.CALL:
        return Token.CALL;
      case com.google.javascript.rhino.head.Token.NAME:
        return Token.NAME;
      case com.google.javascript.rhino.head.Token.NUMBER:
        return Token.NUMBER;
      case com.google.javascript.rhino.head.Token.STRING:
        return Token.STRING;
      case com.google.javascript.rhino.head.Token.NULL:
        return Token.NULL;
      case com.google.javascript.rhino.head.Token.THIS:
        return Token.THIS;
      case com.google.javascript.rhino.head.Token.FALSE:
        return Token.FALSE;
      case com.google.javascript.rhino.head.Token.TRUE:
        return Token.TRUE;
      case com.google.javascript.rhino.head.Token.SHEQ:
        return Token.SHEQ;
      case com.google.javascript.rhino.head.Token.SHNE:
        return Token.SHNE;
      case com.google.javascript.rhino.head.Token.REGEXP:
        return Token.REGEXP;
      case com.google.javascript.rhino.head.Token.THROW:
        return Token.THROW;
      case com.google.javascript.rhino.head.Token.IN:
        return Token.IN;
      case com.google.javascript.rhino.head.Token.INSTANCEOF:
        return Token.INSTANCEOF;
      case com.google.javascript.rhino.head.Token.ARRAYLIT:
        return Token.ARRAYLIT;
      case com.google.javascript.rhino.head.Token.OBJECTLIT:
        return Token.OBJECTLIT;
      case com.google.javascript.rhino.head.Token.TRY:
        return Token.TRY;
      // The LP represents a parameter list
      case com.google.javascript.rhino.head.Token.LP:
        return Token.PARAM_LIST;
      case com.google.javascript.rhino.head.Token.COMMA:
        return Token.COMMA;
      case com.google.javascript.rhino.head.Token.ASSIGN:
        return Token.ASSIGN;
      case com.google.javascript.rhino.head.Token.ASSIGN_BITOR:
        return Token.ASSIGN_BITOR;
      case com.google.javascript.rhino.head.Token.ASSIGN_BITXOR:
        return Token.ASSIGN_BITXOR;
      case com.google.javascript.rhino.head.Token.ASSIGN_BITAND:
        return Token.ASSIGN_BITAND;
      case com.google.javascript.rhino.head.Token.ASSIGN_LSH:
        return Token.ASSIGN_LSH;
      case com.google.javascript.rhino.head.Token.ASSIGN_RSH:
        return Token.ASSIGN_RSH;
      case com.google.javascript.rhino.head.Token.ASSIGN_URSH:
        return Token.ASSIGN_URSH;
      case com.google.javascript.rhino.head.Token.ASSIGN_ADD:
        return Token.ASSIGN_ADD;
      case com.google.javascript.rhino.head.Token.ASSIGN_SUB:
        return Token.ASSIGN_SUB;
      case com.google.javascript.rhino.head.Token.ASSIGN_MUL:
        return Token.ASSIGN_MUL;
      case com.google.javascript.rhino.head.Token.ASSIGN_DIV:
        return Token.ASSIGN_DIV;
      case com.google.javascript.rhino.head.Token.ASSIGN_MOD:
        return Token.ASSIGN_MOD;
      case com.google.javascript.rhino.head.Token.HOOK:
        return Token.HOOK;
      case com.google.javascript.rhino.head.Token.OR:
        return Token.OR;
      case com.google.javascript.rhino.head.Token.AND:
        return Token.AND;
      case com.google.javascript.rhino.head.Token.INC:
        return Token.INC;
      case com.google.javascript.rhino.head.Token.DEC:
        return Token.DEC;
      case com.google.javascript.rhino.head.Token.FUNCTION:
        return Token.FUNCTION;
      case com.google.javascript.rhino.head.Token.IF:
        return Token.IF;
      case com.google.javascript.rhino.head.Token.SWITCH:
        return Token.SWITCH;
      case com.google.javascript.rhino.head.Token.CASE:
        return Token.CASE;
      case com.google.javascript.rhino.head.Token.DEFAULT:
        return Token.DEFAULT_CASE;
      case com.google.javascript.rhino.head.Token.WHILE:
        return Token.WHILE;
      case com.google.javascript.rhino.head.Token.DO:
        return Token.DO;
      case com.google.javascript.rhino.head.Token.FOR:
        return Token.FOR;
      case com.google.javascript.rhino.head.Token.BREAK:
        return Token.BREAK;
      case com.google.javascript.rhino.head.Token.CONTINUE:
        return Token.CONTINUE;
      case com.google.javascript.rhino.head.Token.VAR:
        return Token.VAR;
      case com.google.javascript.rhino.head.Token.WITH:
        return Token.WITH;
      case com.google.javascript.rhino.head.Token.CATCH:
        return Token.CATCH;
      case com.google.javascript.rhino.head.Token.VOID:
        return Token.VOID;
      case com.google.javascript.rhino.head.Token.EMPTY:
        return Token.EMPTY;
      case com.google.javascript.rhino.head.Token.BLOCK:
	int PROBE_START_LINE_1399 = 1399;
	int q_block_92_line_1399 = Token.BLOCK;
	int PROBE_END_LINE_1399 = 1399;
	return q_block_92_line_1399;
      case com.google.javascript.rhino.head.Token.LABEL:
        return Token.LABEL;
      case com.google.javascript.rhino.head.Token.EXPR_VOID:
      case com.google.javascript.rhino.head.Token.EXPR_RESULT:
        return Token.EXPR_RESULT;
      case com.google.javascript.rhino.head.Token.SCRIPT:
        return Token.SCRIPT;
      case com.google.javascript.rhino.head.Token.GET:
        return Token.GETTER_DEF;
      case com.google.javascript.rhino.head.Token.SET:
        return Token.SETTER_DEF;
      case com.google.javascript.rhino.head.Token.CONST:
        return Token.CONST;
      case com.google.javascript.rhino.head.Token.DEBUGGER:
        return Token.DEBUGGER;
    }

    // Token without name
    throw new IllegalStateException(String.valueOf(token));
  }

  // Simple helper to create nodes and set the initial node properties.
  private Node newNode(int type) {
    int PROBE_START_LINE_1423 = 1423;
	int p_type_3707_line_1423 = type;
	com.google.javascript.rhino.Node f_template_node_3581_line_1423 = templateNode;
	com.google.javascript.rhino.Node irfactory_1_expr142_line_1423 = new Node(p_type_3707_line_1423)
			.clonePropsFrom(f_template_node_3581_line_1423);
	int PROBE_END_LINE_1423 = 1423;
	return irfactory_1_expr142_line_1423;
  }

  private Node newNode(int type, Node child1) {
    return new Node(type, child1).clonePropsFrom(templateNode);
  }

  private Node newNode(int type, Node child1, Node child2) {
    return new Node(type, child1, child2).clonePropsFrom(templateNode);
  }

  private Node newNode(int type, Node child1, Node child2, Node child3) {
    return new Node(type, child1, child2, child3).clonePropsFrom(templateNode);
  }

  private Node newStringNode(String value) {
    return IR.string(value).clonePropsFrom(templateNode);
  }

  private Node newStringNode(int type, String value) {
    int PROBE_START_LINE_1443 = 1443;
	int p_type_3718_line_1443 = type;
	String p_value_3719_line_1443 = value;
	com.google.javascript.rhino.Node irfactory_1_expr145_line_1443 = Node.newString(p_type_3718_line_1443,
			p_value_3719_line_1443);
	com.google.javascript.rhino.Node f_template_node_3581_line_1443 = templateNode;
	com.google.javascript.rhino.Node irfactory_1_expr144_line_1443 = irfactory_1_expr145_line_1443
			.clonePropsFrom(f_template_node_3581_line_1443);
	int PROBE_END_LINE_1443 = 1443;
	return irfactory_1_expr144_line_1443;
  }

  private Node newNumberNode(Double value) {
    return IR.number(value).clonePropsFrom(templateNode);
  }
}
