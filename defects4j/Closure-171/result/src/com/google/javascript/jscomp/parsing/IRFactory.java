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

int q_script_106_line_126 = Token.SCRIPT;

int PROBE_END_LINE_126 = 126;

// @license text gets appended onto the fileLevelJsDocBuilder as found,
  // and stored in JSDocInfo for placeholder node.
  Node rootNodeJsDocHolder = new Node(q_script_106_line_126);
  Node.FileLevelJsDocBuilder fileLevelJsDocBuilder =
      rootNodeJsDocHolder.getJsDocBuilderForNode();
  JSDocInfo fileOverviewInfo = null;

  // Use a template node for properties set on all nodes to minimize the
  // memory footprint associated with these.
  private final Node templateNode;

  // TODO(johnlenz): Consider creating a template pool for ORIGINALNAME_PROP.

  private IRFactory(String sourceString,
                    StaticSourceFile sourceFile,
                    Config config,
                    ErrorReporter errorReporter) {
    int PROBE_START_LINE_141 = 141;
						String p_source_string_4164_line_141 = sourceString;
						int PROBE_END_LINE_141 = 141;
	this.sourceString = p_source_string_4164_line_141;
    int PROBE_START_LINE_142 = 142;
	com.google.javascript.rhino.jstype.StaticSourceFile p_source_file_4165_line_142 = sourceFile;
	int PROBE_END_LINE_142 = 142;
	this.sourceFile = p_source_file_4165_line_142;

    int PROBE_START_LINE_145 = 145;
	com.google.javascript.rhino.jstype.StaticSourceFile p_source_file_4165_line_145 = sourceFile;
	boolean irfactory_1_expr17_line_145 = p_source_file_4165_line_145 == null;
	String irfactory_1_expr18_line_145 = null;
	if (!irfactory_1_expr17_line_145) {
		com.google.javascript.rhino.jstype.StaticSourceFile p_source_file_4165_line_145_v1 = sourceFile;
		irfactory_1_expr18_line_145 = p_source_file_4165_line_145_v1.getName();
	}
	String irfactory_1_expr15_line_145 = irfactory_1_expr17_line_145 ? null : irfactory_1_expr18_line_145;
	int PROBE_END_LINE_145 = 145;
	// Sometimes this will be null in tests.
    this.sourceName = irfactory_1_expr15_line_145;

    int PROBE_START_LINE_147 = 147;
	com.google.javascript.jscomp.parsing.Config p_config_4166_line_147 = config;
	int PROBE_END_LINE_147 = 147;
	this.config = p_config_4166_line_147;
    int PROBE_START_LINE_148 = 148;
	com.google.javascript.rhino.head.ErrorReporter p_error_reporter_4167_line_148 = errorReporter;
	int PROBE_END_LINE_148 = 148;
	this.errorReporter = p_error_reporter_4167_line_148;
    this.transformDispatcher = new TransformDispatcher();
    int PROBE_START_LINE_151 = 151;
	com.google.javascript.rhino.Node irfactory_1_expr31_line_151 = createTemplateNode();
	int PROBE_END_LINE_151 = 151;
	// The template node properties are applied to all nodes in this transform.
    this.templateNode = irfactory_1_expr31_line_151;

    int PROBE_START_LINE_153 = 166;
	com.google.javascript.jscomp.parsing.Config p_config_4166_line_153 = config;
	com.google.javascript.jscomp.parsing.Config.LanguageMode q_language_mode_106_line_153 = p_config_4166_line_153.languageMode;
	int PROBE_END_LINE_153 = 166;
	switch (q_language_mode_106_line_153) {
      case ECMASCRIPT3:
        // Reserved words are handled by the Rhino parser.
        reservedKeywords = null;
        break;
      case ECMASCRIPT5:
	int PROBE_START_LINE_159 = 159;
	ImmutableSet<String> f_es5_reserved_keywords_4158_line_159 = ES5_RESERVED_KEYWORDS;
	int PROBE_END_LINE_159 = 159;
	reservedKeywords = f_es5_reserved_keywords_4158_line_159;
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
	int q_script_107_line_174 = Token.SCRIPT;
	int PROBE_END_LINE_174 = 174;
	// The Node type choice is arbitrary.
    Node templateNode = new Node(q_script_107_line_174);
    int PROBE_START_LINE_175 = 175;
	com.google.javascript.rhino.Node v_template_node_4176_line_175 = templateNode;
	com.google.javascript.rhino.jstype.StaticSourceFile f_source_file_4169_line_175 = sourceFile;
	int PROBE_END_LINE_175 = 175;
	v_template_node_4176_line_175.setStaticSourceFile(f_source_file_4169_line_175);
    int PROBE_START_LINE_176 = 176;
	com.google.javascript.rhino.Node v_template_node_4176_line_176 = templateNode;
	int PROBE_END_LINE_176 = 176;
	return v_template_node_4176_line_176;
  }

  public static Node transformTree(AstRoot node,
                                   StaticSourceFile sourceFile,
                                   String sourceString,
                                   Config config,
                                   ErrorReporter errorReporter) {
    int PROBE_START_LINE_184 = 185;
									String p_source_string_4179_line_184 = sourceString;
									com.google.javascript.rhino.jstype.StaticSourceFile p_source_file_4178_line_184 = sourceFile;
									int PROBE_END_LINE_184 = 185;
	IRFactory irFactory = new IRFactory(p_source_string_4179_line_184, p_source_file_4178_line_184,
        config, errorReporter);
    int PROBE_START_LINE_186 = 186;
	com.google.javascript.jscomp.parsing.IRFactory v_ir_factory_4182_line_186 = irFactory;
	com.google.javascript.rhino.head.ast.AstRoot p_node_4177_line_186 = node;
	Node irfactory_1_expr37_line_186 = v_ir_factory_4182_line_186.transform(p_node_4177_line_186);
	int PROBE_END_LINE_186 = 186;
	Node irNode = irfactory_1_expr37_line_186;

    int PROBE_START_LINE_188 = 197;
	com.google.javascript.rhino.head.ast.AstRoot p_node_4177_line_188 = node;
	SortedSet<com.google.javascript.rhino.head.ast.Comment> irfactory_1_expr39_line_188 = p_node_4177_line_188
			.getComments();
	boolean irfactory_1_expr38_line_188 = irfactory_1_expr39_line_188 != null;
	int PROBE_END_LINE_188 = 197;
	if (irfactory_1_expr38_line_188) {
      int PROBE_START_LINE_189 = 196;
		com.google.javascript.rhino.head.ast.AstRoot p_node_4177_line_189 = node;
		SortedSet<com.google.javascript.rhino.head.ast.Comment> irfactory_1_expr40_line_189 = p_node_4177_line_189
				.getComments();
		int PROBE_END_LINE_189 = 196;
	for (Comment comment : irfactory_1_expr40_line_189) {
        int PROBE_START_LINE_190 = 195;
		com.google.javascript.rhino.head.ast.Comment v_comment_4184_line_190 = comment;
		com.google.javascript.rhino.head.Token.CommentType irfactory_1_expr43_line_190 = v_comment_4184_line_190
				.getCommentType();
		com.google.javascript.rhino.head.Token.CommentType q_jsdoc_107_line_190 = CommentType.JSDOC;
		boolean irfactory_1_expr42_line_190 = irfactory_1_expr43_line_190 == q_jsdoc_107_line_190;
		boolean irfactory_1_expr41_line_190 = irfactory_1_expr42_line_190
				&& !irFactory.parsedComments.contains(comment);
		int PROBE_END_LINE_190 = 195;
		if (irfactory_1_expr41_line_190) {
          irFactory.handlePossibleFileOverviewJsDoc(comment, irNode);
        } else {
			int PROBE_START_LINE_193 = 195;
			com.google.javascript.rhino.head.ast.Comment v_comment_4184_line_193 = comment;
			com.google.javascript.rhino.head.Token.CommentType irfactory_1_expr45_line_193 = v_comment_4184_line_193
					.getCommentType();
			com.google.javascript.rhino.head.Token.CommentType q_block_comment_108_line_193 = CommentType.BLOCK_COMMENT;
			boolean irfactory_1_expr44_line_193 = irfactory_1_expr45_line_193 == q_block_comment_108_line_193;
			int PROBE_END_LINE_193 = 195;
			if (irfactory_1_expr44_line_193) {
				irFactory.handleBlockComment(comment);
			}
		}
      }
    }

    int PROBE_START_LINE_199 = 199;
	com.google.javascript.jscomp.parsing.IRFactory v_ir_factory_4182_line_199 = irFactory;
	com.google.javascript.rhino.Node v_ir_node_4183_line_199 = irNode;
	int PROBE_END_LINE_199 = 199;
	v_ir_factory_4182_line_199.setFileOverviewJsDoc(v_ir_node_4183_line_199);

    int PROBE_START_LINE_201 = 201;
	com.google.javascript.rhino.Node v_ir_node_4183_line_201 = irNode;
	int PROBE_END_LINE_201 = 201;
	return v_ir_node_4183_line_201;
  }

  private void setFileOverviewJsDoc(Node irNode) {
    int PROBE_START_LINE_208 = 208;
	com.google.javascript.rhino.Node f_root_node_js_doc_holder_4161_line_208 = rootNodeJsDocHolder;
	JSDocInfo irfactory_1_expr47_line_208 = f_root_node_js_doc_holder_4161_line_208.getJSDocInfo();
	int PROBE_END_LINE_208 = 208;
	// Only after we've seen all @fileoverview entries, attach the
    // last one to the root node, and copy the found license strings
    // to that node.
    JSDocInfo rootNodeJsDoc = irfactory_1_expr47_line_208;
    int PROBE_START_LINE_209 = 212;
	com.google.javascript.rhino.JSDocInfo v_root_node_js_doc_4186_line_209 = rootNodeJsDoc;
	boolean irfactory_1_expr48_line_209 = v_root_node_js_doc_4186_line_209 != null;
	int PROBE_END_LINE_209 = 212;
	if (irfactory_1_expr48_line_209) {
      irNode.setJSDocInfo(rootNodeJsDoc);
      rootNodeJsDoc.setAssociatedNode(irNode);
    }

    int PROBE_START_LINE_214 = 221;
	com.google.javascript.rhino.JSDocInfo f_file_overview_info_4163_line_214 = fileOverviewInfo;
	boolean irfactory_1_expr49_line_214 = f_file_overview_info_4163_line_214 != null;
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
		com.google.javascript.jscomp.parsing.JsDocInfoParser p_js_doc_parser_4189_line_260 = jsDocParser;
		com.google.javascript.rhino.JSDocInfo irfactory_1_expr51_line_260 = p_js_doc_parser_4189_line_260
				.getFileOverviewJSDocInfo();
		com.google.javascript.rhino.JSDocInfo f_file_overview_info_4163_line_260 = fileOverviewInfo;
		boolean irfactory_1_expr50_line_260 = irfactory_1_expr51_line_260 != f_file_overview_info_4163_line_260;
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
	com.google.javascript.rhino.head.ast.AstNode p_node_4192_line_274 = node;
	Comment irfactory_1_expr52_line_274 = p_node_4192_line_274.getJsDocNode();
	int PROBE_END_LINE_274 = 274;
	Comment comment = irfactory_1_expr52_line_274;
    int PROBE_START_LINE_275 = 285;
	com.google.javascript.rhino.head.ast.Comment v_comment_4194_line_275 = comment;
	boolean irfactory_1_expr53_line_275 = v_comment_4194_line_275 != null;
	int PROBE_END_LINE_275 = 285;
	if (irfactory_1_expr53_line_275) {
      int PROBE_START_LINE_276 = 276;
		com.google.javascript.rhino.head.ast.Comment v_comment_4194_line_276 = comment;
		com.google.javascript.rhino.Node p_ir_node_4193_line_276 = irNode;
		JsDocInfoParser irfactory_1_expr54_line_276 = createJsDocInfoParser(v_comment_4194_line_276,
				p_ir_node_4193_line_276);
		int PROBE_END_LINE_276 = 276;
	JsDocInfoParser jsDocParser = irfactory_1_expr54_line_276;
      int PROBE_START_LINE_277 = 277;
	Set<com.google.javascript.rhino.head.ast.Comment> f_parsed_comments_4160_line_277 = parsedComments;
	com.google.javascript.rhino.head.ast.Comment v_comment_4194_line_277 = comment;
	int PROBE_END_LINE_277 = 277;
	f_parsed_comments_4160_line_277.add(v_comment_4194_line_277);
      int PROBE_START_LINE_278 = 284;
	com.google.javascript.jscomp.parsing.JsDocInfoParser v_js_doc_parser_4195_line_278 = jsDocParser;
	boolean irfactory_1_expr57_line_278 = handlePossibleFileOverviewJsDoc(v_js_doc_parser_4195_line_278);
	boolean irfactory_1_expr56_line_278 = !irfactory_1_expr57_line_278;
	int PROBE_END_LINE_278 = 284;
	if (irfactory_1_expr56_line_278) {
        int PROBE_START_LINE_279 = 279;
		com.google.javascript.jscomp.parsing.JsDocInfoParser v_js_doc_parser_4195_line_279 = jsDocParser;
		JSDocInfo irfactory_1_expr58_line_279 = v_js_doc_parser_4195_line_279.retrieveAndResetParsedJSDocInfo();
		int PROBE_END_LINE_279 = 279;
		JSDocInfo info = irfactory_1_expr58_line_279;
        int PROBE_START_LINE_280 = 282;
		com.google.javascript.rhino.JSDocInfo v_info_4196_line_280 = info;
		boolean irfactory_1_expr59_line_280 = v_info_4196_line_280 != null;
		int PROBE_END_LINE_280 = 282;
		if (irfactory_1_expr59_line_280) {
          int PROBE_START_LINE_281 = 281;
			com.google.javascript.rhino.JSDocInfo v_info_4196_line_281 = info;
			com.google.javascript.rhino.head.ast.AstNode p_node_4192_line_281 = node;
			int PROBE_END_LINE_281 = 281;
		validateTypeAnnotations(v_info_4196_line_281, p_node_4192_line_281);
        }
        int PROBE_START_LINE_283 = 283;
		com.google.javascript.rhino.JSDocInfo v_info_4196_line_283 = info;
		int PROBE_END_LINE_283 = 283;
		return v_info_4196_line_283;
      }
    }
    return null;
  }

  private void validateTypeAnnotations(JSDocInfo info, AstNode node) {
    int PROBE_START_LINE_290 = 347;
	com.google.javascript.rhino.JSDocInfo p_info_4197_line_290 = info;
	boolean irfactory_1_expr61_line_290 = p_info_4197_line_290.hasType();
	int PROBE_END_LINE_290 = 347;
	if (irfactory_1_expr61_line_290) {
      boolean valid = false;
      int PROBE_START_LINE_292 = 341;
	com.google.javascript.rhino.head.ast.AstNode p_node_4198_line_292 = node;
	int irfactory_1_expr62_line_292 = p_node_4198_line_292.getType();
	int PROBE_END_LINE_292 = 341;
	switch (irfactory_1_expr62_line_292) {
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
          FunctionNode fnNode = (FunctionNode) node;
          valid = fnNode.getFunctionType() == FunctionNode.FUNCTION_STATEMENT;
          break;
        // Object literal properties, catch declarations and variable
        // initializers are valid.
        case com.google.javascript.rhino.head.Token.NAME:
          AstNode parent = node.getParent();
          valid = parent instanceof ObjectProperty
              || parent instanceof CatchClause
              || parent instanceof FunctionNode
              || (parent instanceof VariableInitializer &&
                  node == ((VariableInitializer) parent).getTarget());
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
                && isPropAccess(((Assignment) node).getLeft());
          }
          break;

        // Property definitions are valid, if at the root of an expression.
        case com.google.javascript.rhino.head.Token.GETPROP:
        case com.google.javascript.rhino.head.Token.GETELEM:
	int PROBE_START_LINE_335 = 335;
	com.google.javascript.rhino.head.ast.AstNode p_node_4198_line_335 = node;
	com.google.javascript.rhino.head.ast.AstNode irfactory_1_expr65_line_335 = p_node_4198_line_335.getParent();
	boolean irfactory_1_expr64_line_335 = isExprStmt(irfactory_1_expr65_line_335);
	int PROBE_END_LINE_335 = 335;
	valid = irfactory_1_expr64_line_335;
          break;

        case com.google.javascript.rhino.head.Token.CALL:
          valid = info.isDefine();
          break;
      }
      int PROBE_START_LINE_342 = 346;
	boolean v_valid_4199_line_342 = valid;
	boolean irfactory_1_expr66_line_342 = !v_valid_4199_line_342;
	int PROBE_END_LINE_342 = 346;
	if (irfactory_1_expr66_line_342) {
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
    int PROBE_START_LINE_356 = 357;
	com.google.javascript.rhino.head.ast.AstNode p_node_4201_line_356 = node;
	int irfactory_1_expr69_line_356 = p_node_4201_line_356.getType();
	int q_expr_result_109_line_356 = com.google.javascript.rhino.head.Token.EXPR_RESULT;
	boolean irfactory_1_expr68_line_356 = irfactory_1_expr69_line_356 == q_expr_result_109_line_356;
	boolean irfactory_1_expr67_line_356 = irfactory_1_expr68_line_356
			|| node.getType() == com.google.javascript.rhino.head.Token.EXPR_VOID;
	int PROBE_END_LINE_356 = 357;
	return irfactory_1_expr67_line_356;
  }

  private Node transform(AstNode node) {
    int PROBE_START_LINE_361 = 361;
	com.google.javascript.rhino.head.ast.AstNode p_node_4202_line_361 = node;
	Node irfactory_1_expr70_line_361 = justTransform(p_node_4202_line_361);
	int PROBE_END_LINE_361 = 361;
	Node irNode = irfactory_1_expr70_line_361;
    int PROBE_START_LINE_362 = 362;
	com.google.javascript.rhino.head.ast.AstNode p_node_4202_line_362 = node;
	com.google.javascript.rhino.Node v_ir_node_4203_line_362 = irNode;
	JSDocInfo irfactory_1_expr71_line_362 = handleJsDoc(p_node_4202_line_362, v_ir_node_4203_line_362);
	int PROBE_END_LINE_362 = 362;
	JSDocInfo jsDocInfo = irfactory_1_expr71_line_362;
    int PROBE_START_LINE_363 = 366;
	com.google.javascript.rhino.JSDocInfo v_js_doc_info_4204_line_363 = jsDocInfo;
	boolean irfactory_1_expr72_line_363 = v_js_doc_info_4204_line_363 != null;
	int PROBE_END_LINE_363 = 366;
	if (irfactory_1_expr72_line_363) {
      int PROBE_START_LINE_364 = 364;
		com.google.javascript.rhino.head.ast.AstNode p_node_4202_line_364 = node;
		com.google.javascript.rhino.JSDocInfo v_js_doc_info_4204_line_364 = jsDocInfo;
		com.google.javascript.rhino.Node v_ir_node_4203_line_364 = irNode;
		com.google.javascript.rhino.Node irfactory_1_expr74_line_364 = maybeInjectCastNode(p_node_4202_line_364,
				v_js_doc_info_4204_line_364, v_ir_node_4203_line_364);
		int PROBE_END_LINE_364 = 364;
	irNode = irfactory_1_expr74_line_364;
      int PROBE_START_LINE_365 = 365;
	com.google.javascript.rhino.Node v_ir_node_4203_line_365 = irNode;
	com.google.javascript.rhino.JSDocInfo v_js_doc_info_4204_line_365 = jsDocInfo;
	int PROBE_END_LINE_365 = 365;
	v_ir_node_4203_line_365.setJSDocInfo(v_js_doc_info_4204_line_365);
    }
    int PROBE_START_LINE_367 = 367;
	com.google.javascript.rhino.Node v_ir_node_4203_line_367 = irNode;
	com.google.javascript.rhino.head.ast.AstNode p_node_4202_line_367 = node;
	int PROBE_END_LINE_367 = 367;
	setSourceInfo(v_ir_node_4203_line_367, p_node_4202_line_367);
    int PROBE_START_LINE_368 = 368;
	com.google.javascript.rhino.Node v_ir_node_4203_line_368 = irNode;
	int PROBE_END_LINE_368 = 368;
	return v_ir_node_4203_line_368;
  }

  private Node maybeInjectCastNode(AstNode node, JSDocInfo info, Node irNode) {
    int PROBE_START_LINE_372 = 376;
	com.google.javascript.rhino.head.ast.AstNode p_node_4205_line_372 = node;
	int irfactory_1_expr80_line_372 = p_node_4205_line_372.getType();
	int q_lp_110_line_372 = com.google.javascript.rhino.head.Token.LP;
	boolean irfactory_1_expr79_line_372 = irfactory_1_expr80_line_372 == q_lp_110_line_372;
	boolean irfactory_1_expr78_line_372 = irfactory_1_expr79_line_372 && node instanceof ParenthesizedExpression;
	boolean irfactory_1_expr77_line_372 = irfactory_1_expr78_line_372 && info.hasType();
	int PROBE_END_LINE_372 = 376;
	if (irfactory_1_expr77_line_372) {
      irNode = newNode(Token.CAST, irNode);
    }
    int PROBE_START_LINE_377 = 377;
	com.google.javascript.rhino.Node p_ir_node_4207_line_377 = irNode;
	int PROBE_END_LINE_377 = 377;
	return p_ir_node_4207_line_377;
  }

  /**
   * Parameter NAMEs are special, because they can have inline type docs
   * attached.
   *
   * function f(/** string &#42;/ x) {}
   * annotates 'x' as a string.
   *
   * @see <a href="http://code.google.com/p/jsdoc-toolkit/wiki/InlineDocs">
   *   Using Inline Doc Comments</a>
   */
  private Node transformParameter(AstNode node) {
    Node irNode = justTransform(node);
    Comment comment = node.getJsDocNode();
    if (comment != null) {
      JSDocInfo info = parseInlineTypeDoc(comment, irNode);
      if (info != null) {
        irNode.setJSDocInfo(info);
      }
    }
    setSourceInfo(irNode, node);
    return irNode;
  }

  private Node transformNameAsString(Name node) {
    int PROBE_START_LINE_404 = 404;
	com.google.javascript.jscomp.parsing.IRFactory.TransformDispatcher f_transform_dispatcher_4173_line_404 = transformDispatcher;
	com.google.javascript.rhino.head.ast.Name p_node_4209_line_404 = node;
	Node irfactory_1_expr81_line_404 = f_transform_dispatcher_4173_line_404.processName(p_node_4209_line_404, true);
	int PROBE_END_LINE_404 = 404;
	Node irNode = irfactory_1_expr81_line_404;
    int PROBE_START_LINE_405 = 405;
	com.google.javascript.rhino.head.ast.Name p_node_4209_line_405 = node;
	com.google.javascript.rhino.Node v_ir_node_4210_line_405 = irNode;
	JSDocInfo irfactory_1_expr82_line_405 = handleJsDoc(p_node_4209_line_405, v_ir_node_4210_line_405);
	int PROBE_END_LINE_405 = 405;
	JSDocInfo jsDocInfo = irfactory_1_expr82_line_405;
    int PROBE_START_LINE_406 = 408;
	com.google.javascript.rhino.JSDocInfo v_js_doc_info_4211_line_406 = jsDocInfo;
	boolean irfactory_1_expr83_line_406 = v_js_doc_info_4211_line_406 != null;
	int PROBE_END_LINE_406 = 408;
	if (irfactory_1_expr83_line_406) {
      irNode.setJSDocInfo(jsDocInfo);
    }
    int PROBE_START_LINE_409 = 409;
	com.google.javascript.rhino.Node v_ir_node_4210_line_409 = irNode;
	com.google.javascript.rhino.head.ast.Name p_node_4209_line_409 = node;
	int PROBE_END_LINE_409 = 409;
	setSourceInfo(v_ir_node_4210_line_409, p_node_4209_line_409);
    int PROBE_START_LINE_410 = 410;
	com.google.javascript.rhino.Node v_ir_node_4210_line_410 = irNode;
	int PROBE_END_LINE_410 = 410;
	return v_ir_node_4210_line_410;
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
    int PROBE_START_LINE_435 = 444;
	com.google.javascript.rhino.Node p_ir_node_4214_line_435 = irNode;
	int irfactory_1_expr86_line_435 = p_ir_node_4214_line_435.getLineno();
	int irfactory_1_expr87_line_435 = -1;
	boolean irfactory_1_expr85_line_435 = irfactory_1_expr86_line_435 == irfactory_1_expr87_line_435;
	int PROBE_END_LINE_435 = 444;
	if (irfactory_1_expr85_line_435) {
      int PROBE_START_LINE_439 = 439;
		com.google.javascript.rhino.head.ast.AstNode p_node_4215_line_439 = node;
		int irfactory_1_expr88_line_439 = p_node_4215_line_439.getLineno();
		int PROBE_END_LINE_439 = 439;
	// If we didn't already set the line, then set it now. This avoids
      // cases like ParenthesizedExpression where we just return a previous
      // node, but don't want the new node to get its parent's line number.
      int lineno = irfactory_1_expr88_line_439;
      int PROBE_START_LINE_440 = 440;
	com.google.javascript.rhino.Node p_ir_node_4214_line_440 = irNode;
	int v_lineno_4216_line_440 = lineno;
	int PROBE_END_LINE_440 = 440;
	p_ir_node_4214_line_440.setLineno(v_lineno_4216_line_440);
      int PROBE_START_LINE_441 = 441;
	com.google.javascript.rhino.head.ast.AstNode p_node_4215_line_441 = node;
	int irfactory_1_expr91_line_441 = p_node_4215_line_441.getAbsolutePosition();
	int irfactory_1_expr90_line_441 = position2charno(irfactory_1_expr91_line_441);
	int PROBE_END_LINE_441 = 441;
	int charno = irfactory_1_expr90_line_441;
      int PROBE_START_LINE_442 = 442;
	com.google.javascript.rhino.Node p_ir_node_4214_line_442 = irNode;
	int v_charno_4217_line_442 = charno;
	int PROBE_END_LINE_442 = 442;
	p_ir_node_4214_line_442.setCharno(v_charno_4217_line_442);
      int PROBE_START_LINE_443 = 443;
	com.google.javascript.rhino.Node p_ir_node_4214_line_443 = irNode;
	com.google.javascript.rhino.head.ast.AstNode p_node_4215_line_443 = node;
	int PROBE_END_LINE_443 = 443;
	maybeSetLengthFrom(p_ir_node_4214_line_443, p_node_4215_line_443);
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
    int PROBE_START_LINE_459 = 459;
	com.google.javascript.rhino.head.ast.Comment p_node_4218_line_459 = node;
	String irfactory_1_expr94_line_459 = p_node_4218_line_459.getValue();
	int PROBE_END_LINE_459 = 459;
	String comment = irfactory_1_expr94_line_459;
    int PROBE_START_LINE_460 = 460;
	com.google.javascript.rhino.head.ast.Comment p_node_4218_line_460 = node;
	int irfactory_1_expr95_line_460 = p_node_4218_line_460.getLineno();
	int PROBE_END_LINE_460 = 460;
	int lineno = irfactory_1_expr95_line_460;
    int PROBE_START_LINE_461 = 461;
	com.google.javascript.rhino.head.ast.Comment p_node_4218_line_461 = node;
	int irfactory_1_expr96_line_461 = p_node_4218_line_461.getAbsolutePosition();
	int PROBE_END_LINE_461 = 461;
	int position = irfactory_1_expr96_line_461;

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
    int PROBE_START_LINE_474 = 474;
	com.google.javascript.jscomp.parsing.JsDocInfoParser v_jsdoc_parser_4224_line_474 = jsdocParser;
	com.google.javascript.rhino.Node.FileLevelJsDocBuilder f_file_level_js_doc_builder_4162_line_474 = fileLevelJsDocBuilder;
	int PROBE_END_LINE_474 = 474;
	v_jsdoc_parser_4224_line_474.setFileLevelJsDocBuilder(f_file_level_js_doc_builder_4162_line_474);
    int PROBE_START_LINE_475 = 475;
	com.google.javascript.jscomp.parsing.JsDocInfoParser v_jsdoc_parser_4224_line_475 = jsdocParser;
	com.google.javascript.rhino.JSDocInfo f_file_overview_info_4163_line_475 = fileOverviewInfo;
	int PROBE_END_LINE_475 = 475;
	v_jsdoc_parser_4224_line_475.setFileOverviewJSDocInfo(f_file_overview_info_4163_line_475);
    int PROBE_START_LINE_476 = 476;
	com.google.javascript.jscomp.parsing.JsDocInfoParser v_jsdoc_parser_4224_line_476 = jsdocParser;
	int PROBE_END_LINE_476 = 476;
	v_jsdoc_parser_4224_line_476.parse();
    int PROBE_START_LINE_477 = 477;
	com.google.javascript.jscomp.parsing.JsDocInfoParser v_jsdoc_parser_4224_line_477 = jsdocParser;
	int PROBE_END_LINE_477 = 477;
	return v_jsdoc_parser_4224_line_477;
  }

  /**
   * Parses inline type info.
   */
  private JSDocInfo parseInlineTypeDoc(Comment node, Node irNode) {
    String comment = node.getValue();
    int lineno = node.getLineno();
    int position = node.getAbsolutePosition();

    // The JsDocInfoParser expects the comment without the initial '/**'.
    int numOpeningChars = 3;
    JsDocInfoParser parser =
      new JsDocInfoParser(
          new JsDocTokenStream(comment.substring(numOpeningChars),
                               lineno,
                               position2charno(position) + numOpeningChars),
          node,
          irNode,
          config,
          errorReporter);
    return parser.parseInlineTypeDoc();
  }

  // Set the length on the node if we're in IDE mode.
  private void maybeSetLengthFrom(Node node, AstNode source) {
    int PROBE_START_LINE_504 = 506;
	com.google.javascript.jscomp.parsing.Config f_config_4171_line_504 = config;
	boolean q_is_ide_mode_111_line_504 = f_config_4171_line_504.isIdeMode;
	int PROBE_END_LINE_504 = 506;
	if (q_is_ide_mode_111_line_504) {
      node.setLength(source.getLength());
    }
  }

  private int position2charno(int position) {
    int PROBE_START_LINE_510 = 510;
	String f_source_string_4168_line_510 = sourceString;
	int p_position_4229_line_510 = position;
	int irfactory_1_expr101_line_510 = f_source_string_4168_line_510.lastIndexOf('\n', p_position_4229_line_510);
	int PROBE_END_LINE_510 = 510;
	int lineIndex = irfactory_1_expr101_line_510;
    int PROBE_START_LINE_511 = 516;
	int v_line_index_4230_line_511 = lineIndex;
	int irfactory_1_expr103_line_511 = -1;
	boolean irfactory_1_expr102_line_511 = v_line_index_4230_line_511 == irfactory_1_expr103_line_511;
	int PROBE_END_LINE_511 = 516;
	if (irfactory_1_expr102_line_511) {
      int PROBE_START_LINE_512 = 512;
		int p_position_4229_line_512 = position;
		int PROBE_END_LINE_512 = 512;
	return p_position_4229_line_512;
    } else {
      // Subtract one for initial position being 0.
      return position - lineIndex - 1;
    }
  }

  private Node justTransform(AstNode node) {
    int PROBE_START_LINE_520 = 520;
	com.google.javascript.jscomp.parsing.IRFactory.TransformDispatcher f_transform_dispatcher_4173_line_520 = transformDispatcher;
	com.google.javascript.rhino.head.ast.AstNode p_node_4231_line_520 = node;
	com.google.javascript.rhino.Node irfactory_1_expr104_line_520 = f_transform_dispatcher_4173_line_520
			.process(p_node_4231_line_520);
	int PROBE_END_LINE_520 = 520;
	return irfactory_1_expr104_line_520;
  }

  private class TransformDispatcher extends TypeSafeDispatcher<Node> {
    private Node processGeneric(
        com.google.javascript.rhino.head.Node n) {
      int PROBE_START_LINE_526 = 526;
			com.google.javascript.rhino.head.Node p_n_4232_line_526 = n;
			int irfactory_1_expr107_line_526 = p_n_4232_line_526.getType();
			int irfactory_1_expr106_line_526 = transformTokenType(irfactory_1_expr107_line_526);
			Node irfactory_1_expr105_line_526 = newNode(irfactory_1_expr106_line_526);
			int PROBE_END_LINE_526 = 526;
	Node node = irfactory_1_expr105_line_526;
      int PROBE_START_LINE_527 = 529;
	com.google.javascript.rhino.head.Node p_n_4232_line_527 = n;
	int PROBE_END_LINE_527 = 529;
	for (com.google.javascript.rhino.head.Node child : p_n_4232_line_527) {
        node.addChildToBack(transform((AstNode) child));
      }
      int PROBE_START_LINE_530 = 530;
	com.google.javascript.rhino.Node v_node_4233_line_530 = node;
	int PROBE_END_LINE_530 = 530;
	return v_node_4233_line_530;
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
      Node ret = null;
      int PROBE_START_LINE_544 = 552;
	com.google.javascript.rhino.head.ast.AstNode p_n_4235_line_544 = n;
	boolean irfactory_1_expr108_line_544 = p_n_4235_line_544 instanceof Name;
	int PROBE_END_LINE_544 = 552;
	if (irfactory_1_expr108_line_544) {
        int PROBE_START_LINE_545 = 545;
		com.google.javascript.rhino.head.ast.AstNode p_n_4235_line_545 = n;
		com.google.javascript.rhino.Node irfactory_1_expr110_line_545 = transformNameAsString((Name) p_n_4235_line_545);
		int PROBE_END_LINE_545 = 545;
		ret = irfactory_1_expr110_line_545;
      } else if (n instanceof NumberLiteral) {
        ret = transformNumberAsString((NumberLiteral) n);
        ret.putBooleanProp(Node.QUOTED_PROP, true);
      } else {
        ret = transform(n);
        ret.putBooleanProp(Node.QUOTED_PROP, true);
      }
      int PROBE_START_LINE_553 = 553;
	com.google.javascript.rhino.Node v_ret_4236_line_553 = ret;
	boolean irfactory_1_expr113_line_553 = v_ret_4236_line_553.isString();
	int PROBE_END_LINE_553 = 553;
	Preconditions.checkState(irfactory_1_expr113_line_553);
      int PROBE_START_LINE_554 = 554;
	com.google.javascript.rhino.Node v_ret_4236_line_554 = ret;
	int PROBE_END_LINE_554 = 554;
	return v_ret_4236_line_554;
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
      int PROBE_START_LINE_573 = 573;
		com.google.javascript.rhino.head.ast.Assignment p_assignment_node_4238_line_573 = assignmentNode;
		Node irfactory_1_expr114_line_573 = processInfixExpression(p_assignment_node_4238_line_573);
		int PROBE_END_LINE_573 = 573;
	Node assign = irfactory_1_expr114_line_573;
      int PROBE_START_LINE_574 = 574;
	com.google.javascript.rhino.Node v_assign_4239_line_574 = assign;
	Node irfactory_1_expr115_line_574 = v_assign_4239_line_574.getFirstChild();
	int PROBE_END_LINE_574 = 574;
	Node target = irfactory_1_expr115_line_574;
      int PROBE_START_LINE_575 = 580;
	com.google.javascript.rhino.Node v_target_4240_line_575 = target;
	boolean irfactory_1_expr117_line_575 = validAssignmentTarget(v_target_4240_line_575);
	boolean irfactory_1_expr116_line_575 = !irfactory_1_expr117_line_575;
	int PROBE_END_LINE_575 = 580;
	if (irfactory_1_expr116_line_575) {
        errorReporter.error(
          "invalid assignment target",
          sourceName,
          target.getLineno(), "", 0);
      }
      int PROBE_START_LINE_581 = 581;
	com.google.javascript.rhino.Node v_assign_4239_line_581 = assign;
	int PROBE_END_LINE_581 = 581;
	return v_assign_4239_line_581;
    }

    @Override
    Node processAstRoot(AstRoot rootNode) {
      int PROBE_START_LINE_586 = 586;
		int q_script_112_line_586 = Token.SCRIPT;
		Node irfactory_1_expr118_line_586 = newNode(q_script_112_line_586);
		int PROBE_END_LINE_586 = 586;
	Node node = irfactory_1_expr118_line_586;
      int PROBE_START_LINE_587 = 589;
	com.google.javascript.rhino.head.ast.AstRoot p_root_node_4241_line_587 = rootNode;
	int PROBE_END_LINE_587 = 589;
	for (com.google.javascript.rhino.head.Node child : p_root_node_4241_line_587) {
        int PROBE_START_LINE_588 = 588;
		com.google.javascript.rhino.Node v_node_4242_line_588 = node;
		com.google.javascript.rhino.head.Node v_child_4243_line_588 = child;
		com.google.javascript.rhino.Node irfactory_1_expr120_line_588 = transform((AstNode) v_child_4243_line_588);
		int PROBE_END_LINE_588 = 588;
		v_node_4242_line_588.addChildToBack(irfactory_1_expr120_line_588);
      }
      int PROBE_START_LINE_590 = 590;
	com.google.javascript.rhino.Node v_node_4242_line_590 = node;
	int PROBE_END_LINE_590 = 590;
	parseDirectives(v_node_4242_line_590);
      int PROBE_START_LINE_591 = 591;
	com.google.javascript.rhino.Node v_node_4242_line_591 = node;
	int PROBE_END_LINE_591 = 591;
	return v_node_4242_line_591;
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
        int PROBE_START_LINE_606 = 606;
		com.google.javascript.rhino.Node p_node_4244_line_606 = node;
		com.google.javascript.rhino.Node irfactory_1_expr124_line_606 = p_node_4244_line_606.getFirstChild();
		boolean irfactory_1_expr123_line_606 = isDirective(irfactory_1_expr124_line_606);
		if (!(irfactory_1_expr123_line_606)) {
			break;
		}
		int PROBE_END_LINE_606 = 606;
		String directive = node.removeFirstChild().getFirstChild().getString();
        if (directives == null) {
          directives = Sets.newHashSet(directive);
        } else {
          directives.add(directive);
        }
      }

      int PROBE_START_LINE_615 = 617;
	Set<String> v_directives_4245_line_615 = directives;
	boolean irfactory_1_expr125_line_615 = v_directives_4245_line_615 != null;
	int PROBE_END_LINE_615 = 617;
	if (irfactory_1_expr125_line_615) {
        node.setDirectives(directives);
      }
    }

    private boolean isDirective(Node n) {
      int PROBE_START_LINE_621 = 623;
		com.google.javascript.rhino.Node p_n_4246_line_621 = n;
		boolean irfactory_1_expr126_line_621 = p_n_4246_line_621 == null;
		int PROBE_END_LINE_621 = 623;
	if (irfactory_1_expr126_line_621) {
        return false;
      }
      int PROBE_START_LINE_624 = 624;
	com.google.javascript.rhino.Node p_n_4246_line_624 = n;
	int irfactory_1_expr127_line_624 = p_n_4246_line_624.getType();
	int PROBE_END_LINE_624 = 624;
	int nType = irfactory_1_expr127_line_624;
      int PROBE_START_LINE_625 = 627;
	int v_n_type_4247_line_625 = nType;
	int q_expr_result_112_line_625 = Token.EXPR_RESULT;
	boolean irfactory_1_expr130_line_625 = v_n_type_4247_line_625 == q_expr_result_112_line_625;
	boolean irfactory_1_expr129_line_625 = irfactory_1_expr130_line_625 && n.getFirstChild().isString();
	boolean irfactory_1_expr128_line_625 = irfactory_1_expr129_line_625
			&& ALLOWED_DIRECTIVES.contains(n.getFirstChild().getString());
	int PROBE_END_LINE_625 = 627;
	return irfactory_1_expr128_line_625;
    }

    @Override
    Node processBlock(Block blockNode) {
      int PROBE_START_LINE_632 = 632;
		com.google.javascript.rhino.head.ast.Block p_block_node_4248_line_632 = blockNode;
		com.google.javascript.rhino.Node irfactory_1_expr131_line_632 = processGeneric(p_block_node_4248_line_632);
		int PROBE_END_LINE_632 = 632;
	return irfactory_1_expr131_line_632;
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
      int PROBE_START_LINE_712 = 712;
		com.google.javascript.rhino.head.ast.ExpressionStatement p_statement_node_4257_line_712 = statementNode;
		int irfactory_1_expr134_line_712 = p_statement_node_4257_line_712.getType();
		int irfactory_1_expr133_line_712 = transformTokenType(irfactory_1_expr134_line_712);
		Node irfactory_1_expr132_line_712 = newNode(irfactory_1_expr133_line_712);
		int PROBE_END_LINE_712 = 712;
	Node node = irfactory_1_expr132_line_712;
      int PROBE_START_LINE_713 = 713;
	com.google.javascript.rhino.Node v_node_4258_line_713 = node;
	com.google.javascript.rhino.head.ast.ExpressionStatement p_statement_node_4257_line_713 = statementNode;
	com.google.javascript.rhino.head.ast.AstNode irfactory_1_expr137_line_713 = p_statement_node_4257_line_713
			.getExpression();
	com.google.javascript.rhino.Node irfactory_1_expr136_line_713 = transform(irfactory_1_expr137_line_713);
	int PROBE_END_LINE_713 = 713;
	v_node_4258_line_713.addChildToBack(irfactory_1_expr136_line_713);
      int PROBE_START_LINE_714 = 714;
	com.google.javascript.rhino.Node v_node_4258_line_714 = node;
	int PROBE_END_LINE_714 = 714;
	return v_node_4258_line_714;
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
      int PROBE_START_LINE_762 = 762;
		com.google.javascript.rhino.head.ast.FunctionNode p_function_node_4262_line_762 = functionNode;
		Name irfactory_1_expr138_line_762 = p_function_node_4262_line_762.getFunctionName();
		int PROBE_END_LINE_762 = 762;
	Name name = irfactory_1_expr138_line_762;
      Boolean isUnnamedFunction = false;
      int PROBE_START_LINE_764 = 778;
	com.google.javascript.rhino.head.ast.Name v_name_4263_line_764 = name;
	boolean irfactory_1_expr139_line_764 = v_name_4263_line_764 == null;
	int PROBE_END_LINE_764 = 778;
	if (irfactory_1_expr139_line_764) {
        int PROBE_START_LINE_765 = 765;
		com.google.javascript.rhino.head.ast.FunctionNode p_function_node_4262_line_765 = functionNode;
		int irfactory_1_expr140_line_765 = p_function_node_4262_line_765.getFunctionType();
		int PROBE_END_LINE_765 = 765;
		int functionType = irfactory_1_expr140_line_765;
        int PROBE_START_LINE_766 = 774;
		int v_function_type_4265_line_766 = functionType;
		int q_function_expression_112_line_766 = FunctionNode.FUNCTION_EXPRESSION;
		boolean irfactory_1_expr141_line_766 = v_function_type_4265_line_766 != q_function_expression_112_line_766;
		int PROBE_END_LINE_766 = 774;
		if (irfactory_1_expr141_line_766) {
          errorReporter.error(
            "unnamed function statement",
            sourceName,
            functionNode.getLineno(), "", 0);

          // Return the bare minimum to put the AST in a valid state.
          return newNode(Token.EXPR_RESULT, Node.newNumber(0));
        }
        name = new Name();
        int PROBE_START_LINE_776 = 776;
		com.google.javascript.rhino.head.ast.Name v_name_4263_line_776 = name;
		int PROBE_END_LINE_776 = 776;
		v_name_4263_line_776.setIdentifier("");
        isUnnamedFunction = true;
      }
      int PROBE_START_LINE_779 = 779;
	int q_function_113_line_779 = Token.FUNCTION;
	Node irfactory_1_expr146_line_779 = newNode(q_function_113_line_779);
	int PROBE_END_LINE_779 = 779;
	Node node = irfactory_1_expr146_line_779;
      int PROBE_START_LINE_780 = 780;
	com.google.javascript.rhino.head.ast.Name v_name_4263_line_780 = name;
	Node irfactory_1_expr147_line_780 = transform(v_name_4263_line_780);
	int PROBE_END_LINE_780 = 780;
	Node newName = irfactory_1_expr147_line_780;
      int PROBE_START_LINE_781 = 792;
	Boolean v_is_unnamed_function_4264_line_781 = isUnnamedFunction;
	int PROBE_END_LINE_781 = 792;
	if (v_is_unnamed_function_4264_line_781) {
        int PROBE_START_LINE_784 = 784;
		com.google.javascript.rhino.Node v_new_name_4267_line_784 = newName;
		com.google.javascript.rhino.head.ast.FunctionNode p_function_node_4262_line_784 = functionNode;
		int irfactory_1_expr149_line_784 = p_function_node_4262_line_784.getLineno();
		int PROBE_END_LINE_784 = 784;
		// Old Rhino tagged the empty name node with the line number of the
        // declaration.
        v_new_name_4267_line_784.setLineno(irfactory_1_expr149_line_784);
        int PROBE_START_LINE_788 = 789;
		com.google.javascript.rhino.head.ast.FunctionNode p_function_node_4262_line_788 = functionNode;
		int irfactory_1_expr151_line_788 = p_function_node_4262_line_788.getAbsolutePosition();
		int irfactory_1_expr150_line_788 = irfactory_1_expr151_line_788 + functionNode.getLp();
		int PROBE_END_LINE_788 = 789;
		// TODO(bowdidge) Mark line number of paren correctly.
        // Same problem as below - the left paren might not be on the
        // same line as the function keyword.
        int lpColumn = irfactory_1_expr150_line_788;
        int PROBE_START_LINE_790 = 790;
		com.google.javascript.rhino.Node v_new_name_4267_line_790 = newName;
		int v_lp_column_4268_line_790 = lpColumn;
		int irfactory_1_expr153_line_790 = position2charno(v_lp_column_4268_line_790);
		int PROBE_END_LINE_790 = 790;
		v_new_name_4267_line_790.setCharno(irfactory_1_expr153_line_790);
        int PROBE_START_LINE_791 = 791;
		com.google.javascript.rhino.Node v_new_name_4267_line_791 = newName;
		com.google.javascript.rhino.head.ast.Name v_name_4263_line_791 = name;
		int PROBE_END_LINE_791 = 791;
		maybeSetLengthFrom(v_new_name_4267_line_791, v_name_4263_line_791);
      }

      int PROBE_START_LINE_794 = 794;
	com.google.javascript.rhino.Node v_node_4266_line_794 = node;
	com.google.javascript.rhino.Node v_new_name_4267_line_794 = newName;
	int PROBE_END_LINE_794 = 794;
	v_node_4266_line_794.addChildToBack(v_new_name_4267_line_794);
      int PROBE_START_LINE_795 = 795;
	int q_param_list_113_line_795 = Token.PARAM_LIST;
	Node irfactory_1_expr156_line_795 = newNode(q_param_list_113_line_795);
	int PROBE_END_LINE_795 = 795;
	Node lp = irfactory_1_expr156_line_795;
      int PROBE_START_LINE_802 = 802;
	com.google.javascript.rhino.head.ast.FunctionNode p_function_node_4262_line_802 = functionNode;
	Name irfactory_1_expr157_line_802 = p_function_node_4262_line_802.getFunctionName();
	int PROBE_END_LINE_802 = 802;
	// The left paren's complicated because it's not represented by an
      // AstNode, so there's nothing that has the actual line number that it
      // appeared on.  We know the paren has to appear on the same line as the
      // function name (or else a semicolon will be inserted.)  If there's no
      // function name, assume the paren was on the same line as the function.
      // TODO(bowdidge): Mark line number of paren correctly.
      Name fnName = irfactory_1_expr157_line_802;
      int PROBE_START_LINE_803 = 807;
	com.google.javascript.rhino.head.ast.Name v_fn_name_4270_line_803 = fnName;
	boolean irfactory_1_expr158_line_803 = v_fn_name_4270_line_803 != null;
	int PROBE_END_LINE_803 = 807;
	if (irfactory_1_expr158_line_803) {
        lp.setLineno(fnName.getLineno());
      } else {
        int PROBE_START_LINE_806 = 806;
		com.google.javascript.rhino.Node v_lp_4269_line_806 = lp;
		com.google.javascript.rhino.head.ast.FunctionNode p_function_node_4262_line_806 = functionNode;
		int irfactory_1_expr160_line_806 = p_function_node_4262_line_806.getLineno();
		int PROBE_END_LINE_806 = 806;
		v_lp_4269_line_806.setLineno(irfactory_1_expr160_line_806);
      }
      int PROBE_START_LINE_808 = 809;
	com.google.javascript.rhino.head.ast.FunctionNode p_function_node_4262_line_808 = functionNode;
	int irfactory_1_expr162_line_808 = p_function_node_4262_line_808.getLp();
	int irfactory_1_expr161_line_808 = irfactory_1_expr162_line_808 + functionNode.getAbsolutePosition();
	int PROBE_END_LINE_808 = 809;
	int lparenCharno = irfactory_1_expr161_line_808;

      int PROBE_START_LINE_811 = 811;
	com.google.javascript.rhino.Node v_lp_4269_line_811 = lp;
	int v_lparen_charno_4271_line_811 = lparenCharno;
	int irfactory_1_expr164_line_811 = position2charno(v_lparen_charno_4271_line_811);
	int PROBE_END_LINE_811 = 811;
	v_lp_4269_line_811.setCharno(irfactory_1_expr164_line_811);
      int PROBE_START_LINE_812 = 828;
	com.google.javascript.rhino.head.ast.FunctionNode p_function_node_4262_line_812 = functionNode;
	List<com.google.javascript.rhino.head.ast.AstNode> irfactory_1_expr165_line_812 = p_function_node_4262_line_812
			.getParams();
	int PROBE_END_LINE_812 = 828;
	for (AstNode param : irfactory_1_expr165_line_812) {
        Node paramNode = transformParameter(param);
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
      int PROBE_START_LINE_829 = 829;
	com.google.javascript.rhino.Node v_node_4266_line_829 = node;
	com.google.javascript.rhino.Node v_lp_4269_line_829 = lp;
	int PROBE_END_LINE_829 = 829;
	v_node_4266_line_829.addChildToBack(v_lp_4269_line_829);

      int PROBE_START_LINE_831 = 831;
	com.google.javascript.rhino.head.ast.FunctionNode p_function_node_4262_line_831 = functionNode;
	com.google.javascript.rhino.head.ast.AstNode irfactory_1_expr168_line_831 = p_function_node_4262_line_831.getBody();
	Node irfactory_1_expr167_line_831 = transform(irfactory_1_expr168_line_831);
	int PROBE_END_LINE_831 = 831;
	Node bodyNode = irfactory_1_expr167_line_831;
      int PROBE_START_LINE_832 = 838;
	com.google.javascript.rhino.Node v_body_node_4273_line_832 = bodyNode;
	boolean irfactory_1_expr170_line_832 = v_body_node_4273_line_832.isBlock();
	boolean irfactory_1_expr169_line_832 = !irfactory_1_expr170_line_832;
	int PROBE_END_LINE_832 = 838;
	if (irfactory_1_expr169_line_832) {
        // When in ideMode Rhino tries to parse some constructs the compiler
        // doesn't support, repair it here. see Rhino's
        // Parser#parseFunctionBodyExpr.
        Preconditions.checkState(config.isIdeMode);
        bodyNode = IR.block();
      }
      int PROBE_START_LINE_839 = 839;
	com.google.javascript.rhino.Node v_body_node_4273_line_839 = bodyNode;
	int PROBE_END_LINE_839 = 839;
	parseDirectives(v_body_node_4273_line_839);
      int PROBE_START_LINE_840 = 840;
	com.google.javascript.rhino.Node v_node_4266_line_840 = node;
	com.google.javascript.rhino.Node v_body_node_4273_line_840 = bodyNode;
	int PROBE_END_LINE_840 = 840;
	v_node_4266_line_840.addChildToBack(v_body_node_4273_line_840);
     int PROBE_START_LINE_841 = 841;
	com.google.javascript.rhino.Node v_node_4266_line_841 = node;
	int PROBE_END_LINE_841 = 841;
	return v_node_4266_line_841;
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
      int PROBE_START_LINE_857 = 860;
		Node irfactory_1_expr173_line_857 = newNode(transformTokenType(exprNode.getType()),
				transform(exprNode.getLeft()), transform(exprNode.getRight()));
		int PROBE_END_LINE_857 = 860;
	Node n =  irfactory_1_expr173_line_857;
      int PROBE_START_LINE_861 = 861;
	com.google.javascript.rhino.Node v_n_4276_line_861 = n;
	com.google.javascript.rhino.head.ast.InfixExpression p_expr_node_4275_line_861 = exprNode;
	int irfactory_1_expr178_line_861 = p_expr_node_4275_line_861.getLineno();
	int PROBE_END_LINE_861 = 861;
	v_n_4276_line_861.setLineno(irfactory_1_expr178_line_861);
      int PROBE_START_LINE_862 = 862;
	com.google.javascript.rhino.Node v_n_4276_line_862 = n;
	com.google.javascript.rhino.head.ast.InfixExpression p_expr_node_4275_line_862 = exprNode;
	int irfactory_1_expr181_line_862 = p_expr_node_4275_line_862.getAbsolutePosition();
	int irfactory_1_expr180_line_862 = position2charno(irfactory_1_expr181_line_862);
	int PROBE_END_LINE_862 = 862;
	v_n_4276_line_862.setCharno(irfactory_1_expr180_line_862);
      int PROBE_START_LINE_863 = 863;
	com.google.javascript.rhino.Node v_n_4276_line_863 = n;
	com.google.javascript.rhino.head.ast.InfixExpression p_expr_node_4275_line_863 = exprNode;
	int PROBE_END_LINE_863 = 863;
	maybeSetLengthFrom(v_n_4276_line_863, p_expr_node_4275_line_863);
      int PROBE_START_LINE_864 = 864;
	com.google.javascript.rhino.Node v_n_4276_line_864 = n;
	int PROBE_END_LINE_864 = 864;
	return v_n_4276_line_864;
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
      int PROBE_START_LINE_904 = 904;
		com.google.javascript.rhino.head.ast.Name p_name_node_4280_line_904 = nameNode;
		com.google.javascript.rhino.Node irfactory_1_expr183_line_904 = processName(p_name_node_4280_line_904, false);
		int PROBE_END_LINE_904 = 904;
	return irfactory_1_expr183_line_904;
    }

    Node processName(Name nameNode, boolean asString) {
      int PROBE_START_LINE_908 = 918;
		boolean p_as_string_4282_line_908 = asString;
		int PROBE_END_LINE_908 = 918;
	if (p_as_string_4282_line_908) {
        int PROBE_START_LINE_909 = 909;
		int q_string_113_line_909 = Token.STRING;
		com.google.javascript.rhino.head.ast.Name p_name_node_4281_line_909 = nameNode;
		String irfactory_1_expr185_line_909 = p_name_node_4281_line_909.getIdentifier();
		com.google.javascript.rhino.Node irfactory_1_expr184_line_909 = newStringNode(q_string_113_line_909,
				irfactory_1_expr185_line_909);
		int PROBE_END_LINE_909 = 909;
		return irfactory_1_expr184_line_909;
      } else {
        int PROBE_START_LINE_911 = 916;
		com.google.javascript.rhino.head.ast.Name p_name_node_4281_line_911 = nameNode;
		String irfactory_1_expr187_line_911 = p_name_node_4281_line_911.getIdentifier();
		boolean irfactory_1_expr186_line_911 = isReservedKeyword(irfactory_1_expr187_line_911);
		int PROBE_END_LINE_911 = 916;
		if (irfactory_1_expr186_line_911) {
          errorReporter.error(
            "identifier is a reserved word",
            sourceName,
            nameNode.getLineno(), "", 0);
        }
        int PROBE_START_LINE_917 = 917;
		int q_name_113_line_917 = Token.NAME;
		com.google.javascript.rhino.head.ast.Name p_name_node_4281_line_917 = nameNode;
		String irfactory_1_expr189_line_917 = p_name_node_4281_line_917.getIdentifier();
		com.google.javascript.rhino.Node irfactory_1_expr188_line_917 = newStringNode(q_name_113_line_917,
				irfactory_1_expr189_line_917);
		int PROBE_END_LINE_917 = 917;
		return irfactory_1_expr188_line_917;
      }
    }

    /**
     * @return Whether the
     */
    private boolean isReservedKeyword(String identifier) {
      int PROBE_START_LINE_925 = 925;
		Set<String> f_reserved_keywords_4175_line_925 = reservedKeywords;
		boolean irfactory_1_expr191_line_925 = f_reserved_keywords_4175_line_925 != null;
		boolean irfactory_1_expr192_line_925 = true;
		if (irfactory_1_expr191_line_925) {
			Set<String> f_reserved_keywords_4175_line_925_v1 = reservedKeywords;
			String p_identifier_4283_line_925 = identifier;
			irfactory_1_expr192_line_925 = f_reserved_keywords_4175_line_925_v1.contains(p_identifier_4283_line_925);
		}
		boolean irfactory_1_expr190_line_925 = irfactory_1_expr191_line_925 && irfactory_1_expr192_line_925;
		int PROBE_END_LINE_925 = 925;
	return irfactory_1_expr190_line_925;
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
      int PROBE_START_LINE_949 = 951;
		com.google.javascript.rhino.head.ast.ObjectLiteral p_literal_node_4286_line_949 = literalNode;
		boolean irfactory_1_expr193_line_949 = p_literal_node_4286_line_949.isDestructuring();
		int PROBE_END_LINE_949 = 951;
	if (irfactory_1_expr193_line_949) {
        reportDestructuringAssign(literalNode);
      }

      int PROBE_START_LINE_953 = 953;
	int q_objectlit_113_line_953 = Token.OBJECTLIT;
	Node irfactory_1_expr194_line_953 = newNode(q_objectlit_113_line_953);
	int PROBE_END_LINE_953 = 953;
	Node node = irfactory_1_expr194_line_953;
      int PROBE_START_LINE_954 = 984;
	com.google.javascript.rhino.head.ast.ObjectLiteral p_literal_node_4286_line_954 = literalNode;
	List<com.google.javascript.rhino.head.ast.ObjectProperty> irfactory_1_expr195_line_954 = p_literal_node_4286_line_954
			.getElements();
	int PROBE_END_LINE_954 = 984;
	for (ObjectProperty el : irfactory_1_expr195_line_954) {
        int PROBE_START_LINE_955 = 963;
		com.google.javascript.jscomp.parsing.Config f_config_4171_line_955 = config;
		com.google.javascript.jscomp.parsing.Config.LanguageMode q_language_mode_113_line_955 = f_config_4171_line_955.languageMode;
		com.google.javascript.jscomp.parsing.Config.LanguageMode q_ecmascript3_114_line_955 = LanguageMode.ECMASCRIPT3;
		boolean irfactory_1_expr196_line_955 = q_language_mode_113_line_955 == q_ecmascript3_114_line_955;
		int PROBE_END_LINE_955 = 963;
		if (irfactory_1_expr196_line_955) {
          if (el.isGetter()) {
            reportGetter(el);
            continue;
          } else if (el.isSetter()) {
            reportSetter(el);
            continue;
          }
        }

        int PROBE_START_LINE_965 = 965;
		com.google.javascript.rhino.head.ast.ObjectProperty v_el_4288_line_965 = el;
		com.google.javascript.rhino.head.ast.AstNode irfactory_1_expr198_line_965 = v_el_4288_line_965.getLeft();
		Node irfactory_1_expr197_line_965 = transformAsString(irfactory_1_expr198_line_965);
		int PROBE_END_LINE_965 = 965;
		Node key = irfactory_1_expr197_line_965;
        int PROBE_START_LINE_966 = 966;
		com.google.javascript.rhino.Node v_key_4289_line_966 = key;
		int q_string_key_115_line_966 = Token.STRING_KEY;
		int PROBE_END_LINE_966 = 966;
		v_key_4289_line_966.setType(q_string_key_115_line_966);

        int PROBE_START_LINE_968 = 968;
		com.google.javascript.rhino.head.ast.ObjectProperty v_el_4288_line_968 = el;
		com.google.javascript.rhino.head.ast.AstNode irfactory_1_expr201_line_968 = v_el_4288_line_968.getRight();
		Node irfactory_1_expr200_line_968 = transform(irfactory_1_expr201_line_968);
		int PROBE_END_LINE_968 = 968;
		Node value = irfactory_1_expr200_line_968;
        int PROBE_START_LINE_969 = 981;
		com.google.javascript.rhino.head.ast.ObjectProperty v_el_4288_line_969 = el;
		boolean irfactory_1_expr202_line_969 = v_el_4288_line_969.isGetter();
		int PROBE_END_LINE_969 = 981;
		if (irfactory_1_expr202_line_969) {
          key.setType(Token.GETTER_DEF);
          Preconditions.checkState(value.isFunction());
          if (getFnParamNode(value).hasChildren()) {
            reportGetterParam(el.getLeft());
          }
        } else {
			int PROBE_START_LINE_975 = 981;
			com.google.javascript.rhino.head.ast.ObjectProperty v_el_4288_line_975 = el;
			boolean irfactory_1_expr203_line_975 = v_el_4288_line_975.isSetter();
			int PROBE_END_LINE_975 = 981;
			if (irfactory_1_expr203_line_975) {
				key.setType(Token.SETTER_DEF);
				Preconditions.checkState(value.isFunction());
				if (!getFnParamNode(value).hasOneChild()) {
					reportSetterParam(el.getLeft());
				}
			}
		}
        int PROBE_START_LINE_982 = 982;
		com.google.javascript.rhino.Node v_key_4289_line_982 = key;
		com.google.javascript.rhino.Node v_value_4290_line_982 = value;
		int PROBE_END_LINE_982 = 982;
		v_key_4289_line_982.addChildToFront(v_value_4290_line_982);
        int PROBE_START_LINE_983 = 983;
		com.google.javascript.rhino.Node v_node_4287_line_983 = node;
		com.google.javascript.rhino.Node v_key_4289_line_983 = key;
		int PROBE_END_LINE_983 = 983;
		v_node_4287_line_983.addChildToBack(v_key_4289_line_983);
      }
      int PROBE_START_LINE_985 = 985;
	com.google.javascript.rhino.Node v_node_4287_line_985 = node;
	int PROBE_END_LINE_985 = 985;
	return v_node_4287_line_985;
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
      int PROBE_START_LINE_1011 = 1011;
		com.google.javascript.rhino.head.ast.PropertyGet p_get_node_4294_line_1011 = getNode;
		com.google.javascript.rhino.head.ast.AstNode irfactory_1_expr207_line_1011 = p_get_node_4294_line_1011
				.getTarget();
		Node irfactory_1_expr206_line_1011 = transform(irfactory_1_expr207_line_1011);
		int PROBE_END_LINE_1011 = 1011;
	Node leftChild = irfactory_1_expr206_line_1011;
      int PROBE_START_LINE_1012 = 1013;
	Node irfactory_1_expr208_line_1012 = newNode(Token.GETPROP, leftChild, transformAsString(getNode.getProperty()));
	int PROBE_END_LINE_1012 = 1013;
	Node newNode = irfactory_1_expr208_line_1012;
      int PROBE_START_LINE_1014 = 1014;
	com.google.javascript.rhino.Node v_new_node_4296_line_1014 = newNode;
	com.google.javascript.rhino.Node v_left_child_4295_line_1014 = leftChild;
	int irfactory_1_expr211_line_1014 = v_left_child_4295_line_1014.getLineno();
	int PROBE_END_LINE_1014 = 1014;
	v_new_node_4296_line_1014.setLineno(irfactory_1_expr211_line_1014);
      int PROBE_START_LINE_1015 = 1015;
	com.google.javascript.rhino.Node v_new_node_4296_line_1015 = newNode;
	com.google.javascript.rhino.Node v_left_child_4295_line_1015 = leftChild;
	int irfactory_1_expr213_line_1015 = v_left_child_4295_line_1015.getCharno();
	int PROBE_END_LINE_1015 = 1015;
	v_new_node_4296_line_1015.setCharno(irfactory_1_expr213_line_1015);
      int PROBE_START_LINE_1016 = 1016;
	com.google.javascript.rhino.Node v_new_node_4296_line_1016 = newNode;
	com.google.javascript.rhino.head.ast.PropertyGet p_get_node_4294_line_1016 = getNode;
	int PROBE_END_LINE_1016 = 1016;
	maybeSetLengthFrom(v_new_node_4296_line_1016, p_get_node_4294_line_1016);
      int PROBE_START_LINE_1017 = 1017;
	com.google.javascript.rhino.Node v_new_node_4296_line_1017 = newNode;
	int PROBE_END_LINE_1017 = 1017;
	return v_new_node_4296_line_1017;
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
      int PROBE_START_LINE_1194 = 1200;
		com.google.javascript.rhino.Node p_target_4306_line_1194 = target;
		int irfactory_1_expr215_line_1194 = p_target_4306_line_1194.getType();
		int PROBE_END_LINE_1194 = 1200;
	switch (irfactory_1_expr215_line_1194) {
        case Token.CAST: // CAST is a bit weird, but syntactically valid.
        case Token.NAME:
        case Token.GETPROP:
        case Token.GETELEM:
          return true;
      }
      return false;
    }

    @Override
    Node processVariableDeclaration(VariableDeclaration declarationNode) {
      int PROBE_START_LINE_1206 = 1209;
		com.google.javascript.jscomp.parsing.Config f_config_4171_line_1206 = config;
		boolean q_accept_const_keyword_115_line_1206 = f_config_4171_line_1206.acceptConstKeyword;
		boolean irfactory_1_expr217_line_1206 = !q_accept_const_keyword_115_line_1206;
		boolean irfactory_1_expr218_line_1206 = true;
		if (irfactory_1_expr217_line_1206) {
			com.google.javascript.rhino.head.ast.VariableDeclaration p_declaration_node_4307_line_1206 = declarationNode;
			int irfactory_1_expr219_line_1206 = p_declaration_node_4307_line_1206.getType();
			irfactory_1_expr218_line_1206 = irfactory_1_expr219_line_1206 == com.google.javascript.rhino.head.Token.CONST;
		}
		boolean irfactory_1_expr216_line_1206 = irfactory_1_expr217_line_1206 && irfactory_1_expr218_line_1206;
		int PROBE_END_LINE_1206 = 1209;
	if (irfactory_1_expr216_line_1206) {
        processIllegalToken(declarationNode);
      }

      int PROBE_START_LINE_1211 = 1211;
	int q_var_116_line_1211 = Token.VAR;
	Node irfactory_1_expr220_line_1211 = newNode(q_var_116_line_1211);
	int PROBE_END_LINE_1211 = 1211;
	Node node = irfactory_1_expr220_line_1211;
      int PROBE_START_LINE_1212 = 1214;
	com.google.javascript.rhino.head.ast.VariableDeclaration p_declaration_node_4307_line_1212 = declarationNode;
	List<com.google.javascript.rhino.head.ast.VariableInitializer> irfactory_1_expr221_line_1212 = p_declaration_node_4307_line_1212
			.getVariables();
	int PROBE_END_LINE_1212 = 1214;
	for (VariableInitializer child : irfactory_1_expr221_line_1212) {
        int PROBE_START_LINE_1213 = 1213;
		com.google.javascript.rhino.Node v_node_4308_line_1213 = node;
		com.google.javascript.rhino.head.ast.VariableInitializer v_child_4309_line_1213 = child;
		com.google.javascript.rhino.Node irfactory_1_expr223_line_1213 = transform(v_child_4309_line_1213);
		int PROBE_END_LINE_1213 = 1213;
		v_node_4308_line_1213.addChildToBack(irfactory_1_expr223_line_1213);
      }
      int PROBE_START_LINE_1215 = 1215;
	com.google.javascript.rhino.Node v_node_4308_line_1215 = node;
	int PROBE_END_LINE_1215 = 1215;
	return v_node_4308_line_1215;
    }

    @Override
    Node processVariableInitializer(VariableInitializer initializerNode) {
      int PROBE_START_LINE_1220 = 1220;
		com.google.javascript.rhino.head.ast.VariableInitializer p_initializer_node_4310_line_1220 = initializerNode;
		com.google.javascript.rhino.head.ast.AstNode irfactory_1_expr225_line_1220 = p_initializer_node_4310_line_1220
				.getTarget();
		Node irfactory_1_expr224_line_1220 = transform(irfactory_1_expr225_line_1220);
		int PROBE_END_LINE_1220 = 1220;
	Node node = irfactory_1_expr224_line_1220;
      int PROBE_START_LINE_1221 = 1224;
	com.google.javascript.rhino.head.ast.VariableInitializer p_initializer_node_4310_line_1221 = initializerNode;
	com.google.javascript.rhino.head.ast.AstNode irfactory_1_expr227_line_1221 = p_initializer_node_4310_line_1221
			.getInitializer();
	boolean irfactory_1_expr226_line_1221 = irfactory_1_expr227_line_1221 != null;
	int PROBE_END_LINE_1221 = 1224;
	if (irfactory_1_expr226_line_1221) {
        int PROBE_START_LINE_1222 = 1222;
		com.google.javascript.rhino.head.ast.VariableInitializer p_initializer_node_4310_line_1222 = initializerNode;
		com.google.javascript.rhino.head.ast.AstNode irfactory_1_expr229_line_1222 = p_initializer_node_4310_line_1222
				.getInitializer();
		Node irfactory_1_expr228_line_1222 = transform(irfactory_1_expr229_line_1222);
		int PROBE_END_LINE_1222 = 1222;
		Node initalizer = irfactory_1_expr228_line_1222;
        int PROBE_START_LINE_1223 = 1223;
		com.google.javascript.rhino.Node v_node_4311_line_1223 = node;
		com.google.javascript.rhino.Node v_initalizer_4312_line_1223 = initalizer;
		int PROBE_END_LINE_1223 = 1223;
		v_node_4311_line_1223.addChildToBack(v_initalizer_4312_line_1223);
      }
      int PROBE_START_LINE_1225 = 1225;
	com.google.javascript.rhino.Node v_node_4311_line_1225 = node;
	int PROBE_END_LINE_1225 = 1225;
	return v_node_4311_line_1225;
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
    int PROBE_START_LINE_1292 = 1467;
	int p_token_4321_line_1292 = token;
	int PROBE_END_LINE_1292 = 1467;
	switch (p_token_4321_line_1292) {
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
	int PROBE_START_LINE_1387 = 1387;
	int q_assign_116_line_1387 = Token.ASSIGN;
	int PROBE_END_LINE_1387 = 1387;
	return q_assign_116_line_1387;
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
	int PROBE_START_LINE_1451 = 1451;
	int q_block_116_line_1451 = Token.BLOCK;
	int PROBE_END_LINE_1451 = 1451;
	return q_block_116_line_1451;
      case com.google.javascript.rhino.head.Token.LABEL:
        return Token.LABEL;
      case com.google.javascript.rhino.head.Token.EXPR_VOID:
      case com.google.javascript.rhino.head.Token.EXPR_RESULT:
	int PROBE_START_LINE_1456 = 1456;
	int q_expr_result_116_line_1456 = Token.EXPR_RESULT;
	int PROBE_END_LINE_1456 = 1456;
	return q_expr_result_116_line_1456;
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
    int PROBE_START_LINE_1475 = 1475;
	int p_type_4322_line_1475 = type;
	com.google.javascript.rhino.Node f_template_node_4174_line_1475 = templateNode;
	com.google.javascript.rhino.Node irfactory_1_expr231_line_1475 = new Node(p_type_4322_line_1475)
			.clonePropsFrom(f_template_node_4174_line_1475);
	int PROBE_END_LINE_1475 = 1475;
	return irfactory_1_expr231_line_1475;
  }

  private Node newNode(int type, Node child1) {
    return new Node(type, child1).clonePropsFrom(templateNode);
  }

  private Node newNode(int type, Node child1, Node child2) {
    int PROBE_START_LINE_1483 = 1483;
	int p_type_4325_line_1483 = type;
	com.google.javascript.rhino.Node p_child_1_4326_line_1483 = child1;
	com.google.javascript.rhino.Node p_child_2_4327_line_1483 = child2;
	com.google.javascript.rhino.Node f_template_node_4174_line_1483 = templateNode;
	com.google.javascript.rhino.Node irfactory_1_expr233_line_1483 = new Node(p_type_4325_line_1483,
			p_child_1_4326_line_1483, p_child_2_4327_line_1483).clonePropsFrom(f_template_node_4174_line_1483);
	int PROBE_END_LINE_1483 = 1483;
	return irfactory_1_expr233_line_1483;
  }

  private Node newNode(int type, Node child1, Node child2, Node child3) {
    return new Node(type, child1, child2, child3).clonePropsFrom(templateNode);
  }

  private Node newStringNode(String value) {
    return IR.string(value).clonePropsFrom(templateNode);
  }

  private Node newStringNode(int type, String value) {
    int PROBE_START_LINE_1495 = 1495;
	int p_type_4333_line_1495 = type;
	String p_value_4334_line_1495 = value;
	com.google.javascript.rhino.Node irfactory_1_expr236_line_1495 = Node.newString(p_type_4333_line_1495,
			p_value_4334_line_1495);
	com.google.javascript.rhino.Node f_template_node_4174_line_1495 = templateNode;
	com.google.javascript.rhino.Node irfactory_1_expr235_line_1495 = irfactory_1_expr236_line_1495
			.clonePropsFrom(f_template_node_4174_line_1495);
	int PROBE_END_LINE_1495 = 1495;
	return irfactory_1_expr235_line_1495;
  }

  private Node newNumberNode(Double value) {
    return IR.number(value).clonePropsFrom(templateNode);
  }
}
