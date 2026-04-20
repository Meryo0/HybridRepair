/*
 * Copyright 2004 The Closure Compiler Authors.
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

import com.google.common.base.Charsets;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;
import com.google.javascript.rhino.TokenStream;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Map;
import java.util.HashMap;

/**
 * CodeGenerator generates codes from a parse tree, sending it to the specified
 * CodeConsumer.
 *
 */
class CodeGenerator {
  private static final String LT_ESCAPED = "\\x3c";
  private static final String GT_ESCAPED = "\\x3e";

  int PROBE_START_LINE_41 = 41;

private final HashMap<String, String> code_generator_1_expr1_line_41 = Maps.newHashMap();

int PROBE_END_LINE_41 = 41;

// A memoizer for formatting strings as JS strings.
  private final Map<String, String> escapedJsStrings = code_generator_1_expr1_line_41;

  private static final char[] HEX_CHARS
      = { '0', '1', '2', '3', '4', '5', '6', '7',
          '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

  private final CodeConsumer cc;

  private final CharsetEncoder outputCharsetEncoder;

  private final boolean preferSingleQuotes;
  private final boolean trustedStrings;

  private CodeGenerator(CodeConsumer consumer) {
    cc = consumer;
    outputCharsetEncoder = null;
    preferSingleQuotes = false;
    trustedStrings = true;
  }

  static CodeGenerator forCostEstimation(CodeConsumer consumer) {
    return new CodeGenerator(consumer);
  }

  CodeGenerator(
      CodeConsumer consumer,
      CompilerOptions options) {
    int PROBE_START_LINE_68 = 68;
		com.google.javascript.jscomp.CodeConsumer p_consumer_467_line_68 = consumer;
		int PROBE_END_LINE_68 = 68;
	cc = p_consumer_467_line_68;

    int PROBE_START_LINE_70 = 70;
	com.google.javascript.jscomp.CompilerOptions p_options_468_line_70 = options;
	Charset code_generator_1_expr4_line_70 = p_options_468_line_70.getOutputCharset();
	int PROBE_END_LINE_70 = 70;
	Charset outputCharset = code_generator_1_expr4_line_70;
    int PROBE_START_LINE_71 = 79;
	java.nio.charset.Charset v_output_charset_470_line_71 = outputCharset;
	boolean code_generator_1_expr6_line_71 = v_output_charset_470_line_71 == null;
	boolean code_generator_1_expr7_line_71 = false;
	if (!code_generator_1_expr6_line_71) {
		java.nio.charset.Charset v_output_charset_470_line_71_v1 = outputCharset;
		java.nio.charset.Charset q_us_ascii_19_line_71 = Charsets.US_ASCII;
		code_generator_1_expr7_line_71 = v_output_charset_470_line_71_v1 == q_us_ascii_19_line_71;
	}
	boolean code_generator_1_expr5_line_71 = code_generator_1_expr6_line_71 || code_generator_1_expr7_line_71;
	int PROBE_END_LINE_71 = 79;
	if (code_generator_1_expr5_line_71) {
      // If we want our default (pretending to be UTF-8, but escaping anything
      // outside of straight ASCII), then don't use the encoder, but
      // just special-case the code.  This keeps the normal path through
      // the code identical to how it's been for years.
      this.outputCharsetEncoder = null;
    } else {
      this.outputCharsetEncoder = outputCharset.newEncoder();
    }
    int PROBE_START_LINE_80 = 80;
	com.google.javascript.jscomp.CompilerOptions p_options_468_line_80 = options;
	boolean q_prefer_single_quotes_20_line_80 = p_options_468_line_80.preferSingleQuotes;
	int PROBE_END_LINE_80 = 80;
	this.preferSingleQuotes = q_prefer_single_quotes_20_line_80;
    int PROBE_START_LINE_81 = 81;
	com.google.javascript.jscomp.CompilerOptions p_options_468_line_81 = options;
	boolean q_trusted_strings_21_line_81 = p_options_468_line_81.trustedStrings;
	int PROBE_END_LINE_81 = 81;
	this.trustedStrings = q_trusted_strings_21_line_81;
  }

  /**
   * Insert a ECMASCRIPT 5 strict annotation.
   */
  public void tagAsStrict() {
    add("'use strict';");
  }

  void add(String str) {
    int PROBE_START_LINE_92 = 92;
	com.google.javascript.jscomp.CodeConsumer f_cc_469_line_92 = cc;
	String p_str_474_line_92 = str;
	int PROBE_END_LINE_92 = 92;
	f_cc_469_line_92.add(p_str_474_line_92);
  }

  private void addIdentifier(String identifier) {
    int PROBE_START_LINE_96 = 96;
	com.google.javascript.jscomp.CodeConsumer f_cc_469_line_96 = cc;
	String p_identifier_475_line_96 = identifier;
	String code_generator_1_expr19_line_96 = identifierEscape(p_identifier_475_line_96);
	int PROBE_END_LINE_96 = 96;
	f_cc_469_line_96.addIdentifier(code_generator_1_expr19_line_96);
  }

  void add(Node n) {
    int PROBE_START_LINE_100 = 100;
	com.google.javascript.rhino.Node p_n_476_line_100 = n;
	com.google.javascript.jscomp.CodeGenerator.Context q_other_22_line_100 = Context.OTHER;
	int PROBE_END_LINE_100 = 100;
	add(p_n_476_line_100, q_other_22_line_100);
  }

  void add(Node n, Context context) {
    int PROBE_START_LINE_104 = 106;
	com.google.javascript.jscomp.CodeConsumer f_cc_469_line_104 = cc;
	boolean code_generator_1_expr22_line_104 = f_cc_469_line_104.continueProcessing();
	boolean code_generator_1_expr21_line_104 = !code_generator_1_expr22_line_104;
	int PROBE_END_LINE_104 = 106;
	if (code_generator_1_expr21_line_104) {
      return;
    }

    int PROBE_START_LINE_108 = 108;
	com.google.javascript.rhino.Node p_n_477_line_108 = n;
	int code_generator_1_expr23_line_108 = p_n_477_line_108.getType();
	int PROBE_END_LINE_108 = 108;
	int type = code_generator_1_expr23_line_108;
    int PROBE_START_LINE_109 = 109;
	int v_type_479_line_109 = type;
	String code_generator_1_expr24_line_109 = NodeUtil.opToStr(v_type_479_line_109);
	int PROBE_END_LINE_109 = 109;
	String opstr = code_generator_1_expr24_line_109;
    int PROBE_START_LINE_110 = 110;
	com.google.javascript.rhino.Node p_n_477_line_110 = n;
	int code_generator_1_expr25_line_110 = p_n_477_line_110.getChildCount();
	int PROBE_END_LINE_110 = 110;
	int childCount = code_generator_1_expr25_line_110;
    int PROBE_START_LINE_111 = 111;
	com.google.javascript.rhino.Node p_n_477_line_111 = n;
	Node code_generator_1_expr26_line_111 = p_n_477_line_111.getFirstChild();
	int PROBE_END_LINE_111 = 111;
	Node first = code_generator_1_expr26_line_111;
    int PROBE_START_LINE_112 = 112;
	com.google.javascript.rhino.Node p_n_477_line_112 = n;
	Node code_generator_1_expr27_line_112 = p_n_477_line_112.getLastChild();
	int PROBE_END_LINE_112 = 112;
	Node last = code_generator_1_expr27_line_112;

    int PROBE_START_LINE_115 = 143;
	String v_opstr_480_line_115 = opstr;
	boolean code_generator_1_expr29_line_115 = v_opstr_480_line_115 != null;
	boolean code_generator_1_expr30_line_115 = true;
	if (code_generator_1_expr29_line_115) {
		com.google.javascript.rhino.Node v_first_482_line_115 = first;
		com.google.javascript.rhino.Node v_last_483_line_115 = last;
		code_generator_1_expr30_line_115 = v_first_482_line_115 != v_last_483_line_115;
	}
	boolean code_generator_1_expr28_line_115 = code_generator_1_expr29_line_115 && code_generator_1_expr30_line_115;
	int PROBE_END_LINE_115 = 143;
	// Handle all binary operators
    if (code_generator_1_expr28_line_115) {
      Preconditions.checkState(
          childCount == 2,
          "Bad binary operator \"%s\": expected 2 arguments but got %s",
          opstr, childCount);
      int PROBE_START_LINE_120 = 120;
	int v_type_479_line_120 = type;
	int code_generator_1_expr33_line_120 = NodeUtil.precedence(v_type_479_line_120);
	int PROBE_END_LINE_120 = 120;
	int p = code_generator_1_expr33_line_120;

      int PROBE_START_LINE_124 = 124;
	com.google.javascript.jscomp.CodeGenerator.Context p_context_478_line_124 = context;
	Context code_generator_1_expr34_line_124 = getContextForNoInOperator(p_context_478_line_124);
	int PROBE_END_LINE_124 = 124;
	// For right-hand-side of operations, only pass context if it's
      // the IN_FOR_INIT_CLAUSE one.
      Context rhsContext = code_generator_1_expr34_line_124;

      int PROBE_START_LINE_129 = 141;
	com.google.javascript.rhino.Node v_last_483_line_129 = last;
	int code_generator_1_expr37_line_129 = v_last_483_line_129.getType();
	int v_type_479_line_129 = type;
	boolean code_generator_1_expr36_line_129 = code_generator_1_expr37_line_129 == v_type_479_line_129;
	boolean code_generator_1_expr35_line_129 = code_generator_1_expr36_line_129 && NodeUtil.isAssociative(type);
	int PROBE_END_LINE_129 = 141;
	// Handle associativity.
      // e.g. if the parse tree is a * (b * c),
      // we can simply generate a * b * c.
      if (code_generator_1_expr35_line_129) {
        addExpr(first, p, context);
        cc.addOp(opstr, true);
        addExpr(last, p, rhsContext);
      } else {
		int PROBE_START_LINE_134 = 141;
		com.google.javascript.rhino.Node p_n_477_line_134 = n;
		boolean code_generator_1_expr39_line_134 = NodeUtil.isAssignmentOp(p_n_477_line_134);
		boolean code_generator_1_expr40_line_134 = true;
		if (code_generator_1_expr39_line_134) {
			com.google.javascript.rhino.Node v_last_483_line_134 = last;
			code_generator_1_expr40_line_134 = NodeUtil.isAssignmentOp(v_last_483_line_134);
		}
		boolean code_generator_1_expr38_line_134 = code_generator_1_expr39_line_134 && code_generator_1_expr40_line_134;
		int PROBE_END_LINE_134 = 141;
		if (code_generator_1_expr38_line_134) {
			addExpr(first, p, context);
			cc.addOp(opstr, true);
			addExpr(last, p, rhsContext);
		} else {
			int PROBE_START_LINE_140 = 140;
			com.google.javascript.rhino.Node p_n_477_line_140 = n;
			int v_type_479_line_140 = type;
			String v_opstr_480_line_140 = opstr;
			com.google.javascript.jscomp.CodeGenerator.Context p_context_478_line_140 = context;
			com.google.javascript.jscomp.CodeGenerator.Context v_rhs_context_485_line_140 = rhsContext;
			int v_p_484_line_140 = p;
			int v_p_484_line_140_v1 = p;
			int code_generator_1_expr42_line_140 = v_p_484_line_140_v1 + 1;
			int PROBE_END_LINE_140 = 140;
			unrollBinaryOperator(p_n_477_line_140, v_type_479_line_140, v_opstr_480_line_140, p_context_478_line_140,
					v_rhs_context_485_line_140, v_p_484_line_140, code_generator_1_expr42_line_140);
		}
	}
      return;
    }

    int PROBE_START_LINE_145 = 145;
	com.google.javascript.jscomp.CodeConsumer f_cc_469_line_145 = cc;
	com.google.javascript.rhino.Node p_n_477_line_145 = n;
	int PROBE_END_LINE_145 = 145;
	f_cc_469_line_145.startSourceMapping(p_n_477_line_145);

    int PROBE_START_LINE_147 = 754;
	int v_type_479_line_147 = type;
	int PROBE_END_LINE_147 = 754;
	switch (v_type_479_line_147) {
      case Token.TRY: {
        Preconditions.checkState(first.getNext().isBlock() &&
                !first.getNext().hasMoreThanOneChild());
        Preconditions.checkState(childCount >= 2 && childCount <= 3);

        add("try");
        add(first, Context.PRESERVE_BLOCK);

        // second child contains the catch block, or nothing if there
        // isn't a catch block
        Node catchblock = first.getNext().getFirstChild();
        if (catchblock != null) {
          add(catchblock);
        }

        if (childCount == 3) {
          add("finally");
          add(last, Context.PRESERVE_BLOCK);
        }
        break;
      }

      case Token.CATCH:
        Preconditions.checkState(childCount == 2);
        add("catch(");
        add(first);
        add(")");
        add(last, Context.PRESERVE_BLOCK);
        break;

      case Token.THROW:
        Preconditions.checkState(childCount == 1);
        add("throw");
        add(first);

        // Must have a ';' after a throw statement, otherwise safari can't
        // parse this.
        cc.endStatement(true);
        break;

      case Token.RETURN:
        add("return");
        if (childCount == 1) {
          add(first);
        } else {
          Preconditions.checkState(childCount == 0);
        }
        cc.endStatement();
        break;

      case Token.VAR:
	int PROBE_START_LINE_199 = 202;
	com.google.javascript.rhino.Node v_first_482_line_199 = first;
	boolean code_generator_1_expr44_line_199 = v_first_482_line_199 != null;
	int PROBE_END_LINE_199 = 202;
	if (code_generator_1_expr44_line_199) {
          add("var ");
          int PROBE_START_LINE_201 = 201;
		com.google.javascript.rhino.Node v_first_482_line_201 = first;
		com.google.javascript.jscomp.CodeGenerator.Context p_context_478_line_201 = context;
		com.google.javascript.jscomp.CodeGenerator.Context code_generator_1_expr47_line_201 = getContextForNoInOperator(
				p_context_478_line_201);
		int PROBE_END_LINE_201 = 201;
		addList(v_first_482_line_201, false, code_generator_1_expr47_line_201);
        }
        break;

      case Token.LABEL_NAME:
        Preconditions.checkState(!n.getString().isEmpty());
        addIdentifier(n.getString());
        break;

      case Token.NAME:
	int PROBE_START_LINE_211 = 224;
	com.google.javascript.rhino.Node v_first_482_line_211 = first;
	boolean code_generator_1_expr49_line_211 = v_first_482_line_211 == null;
	boolean code_generator_1_expr50_line_211 = false;
	if (!code_generator_1_expr49_line_211) {
		com.google.javascript.rhino.Node v_first_482_line_211_v1 = first;
		code_generator_1_expr50_line_211 = v_first_482_line_211_v1.isEmpty();
	}
	boolean code_generator_1_expr48_line_211 = code_generator_1_expr49_line_211 || code_generator_1_expr50_line_211;
	int PROBE_END_LINE_211 = 224;
	if (code_generator_1_expr48_line_211) {
          int PROBE_START_LINE_212 = 212;
			com.google.javascript.rhino.Node p_n_477_line_212 = n;
			String code_generator_1_expr52_line_212 = p_n_477_line_212.getString();
			int PROBE_END_LINE_212 = 212;
		addIdentifier(code_generator_1_expr52_line_212);
        } else {
          int PROBE_START_LINE_214 = 214;
			int v_child_count_481_line_214 = childCount;
			boolean code_generator_1_expr54_line_214 = v_child_count_481_line_214 == 1;
			int PROBE_END_LINE_214 = 214;
		Preconditions.checkState(code_generator_1_expr54_line_214);
          int PROBE_START_LINE_215 = 215;
		com.google.javascript.rhino.Node p_n_477_line_215 = n;
		String code_generator_1_expr56_line_215 = p_n_477_line_215.getString();
		int PROBE_END_LINE_215 = 215;
		addIdentifier(code_generator_1_expr56_line_215);
          int PROBE_START_LINE_216 = 216;
		com.google.javascript.jscomp.CodeConsumer f_cc_469_line_216 = cc;
		int PROBE_END_LINE_216 = 216;
		f_cc_469_line_216.addOp("=", true);
          int PROBE_START_LINE_217 = 223;
		com.google.javascript.rhino.Node v_first_482_line_217 = first;
		boolean code_generator_1_expr58_line_217 = v_first_482_line_217.isComma();
		int PROBE_END_LINE_217 = 223;
		if (code_generator_1_expr58_line_217) {
            addExpr(first, NodeUtil.precedence(Token.ASSIGN), Context.OTHER);
          } else {
            int PROBE_START_LINE_222 = 222;
			com.google.javascript.rhino.Node v_first_482_line_222 = first;
			com.google.javascript.jscomp.CodeGenerator.Context p_context_478_line_222 = context;
			com.google.javascript.jscomp.CodeGenerator.Context code_generator_1_expr60_line_222 = getContextForNoInOperator(
					p_context_478_line_222);
			int PROBE_END_LINE_222 = 222;
			// Add expression, consider nearby code at lowest level of
            // precedence.
            addExpr(v_first_482_line_222, 0, code_generator_1_expr60_line_222);
          }
        }
        break;

      case Token.ARRAYLIT:
        add("[");
        addArrayList(first);
        add("]");
        break;

      case Token.PARAM_LIST:
        add("(");
	int PROBE_START_LINE_235 = 235;
	com.google.javascript.rhino.Node v_first_482_line_235 = first;
	int PROBE_END_LINE_235 = 235;
	addList(v_first_482_line_235);
        add(")");
        break;

      case Token.COMMA:
        Preconditions.checkState(childCount == 2);
        unrollBinaryOperator(n, Token.COMMA, ",", context,
            getContextForNoInOperator(context), 0, 0);
        break;

      case Token.NUMBER:
        Preconditions.checkState(childCount == 0);
        cc.addNumber(n.getDouble());
        break;

      case Token.TYPEOF:
      case Token.VOID:
      case Token.NOT:
      case Token.BITNOT:
      case Token.POS: {
        // All of these unary operators are right-associative
        Preconditions.checkState(childCount == 1);
        cc.addOp(NodeUtil.opToStrNoFail(type), false);
        addExpr(first, NodeUtil.precedence(type), Context.OTHER);
        break;
      }

      case Token.NEG: {
        Preconditions.checkState(childCount == 1);

        // It's important to our sanity checker that the code
        // we print produces the same AST as the code we parse back.
        // NEG is a weird case because Rhino parses "- -2" as "2".
        if (n.getFirstChild().isNumber()) {
          cc.addNumber(-n.getFirstChild().getDouble());
        } else {
          cc.addOp(NodeUtil.opToStrNoFail(type), false);
          addExpr(first, NodeUtil.precedence(type), Context.OTHER);
        }

        break;
      }

      case Token.HOOK: {
        Preconditions.checkState(childCount == 3);
        int p = NodeUtil.precedence(type);
        addExpr(first, p + 1, context);
        cc.addOp("?", true);
        addExpr(first.getNext(), 1, Context.OTHER);
        cc.addOp(":", true);
        addExpr(last, 1, Context.OTHER);
        break;
      }

      case Token.REGEXP:
        if (!first.isString() ||
            !last.isString()) {
          throw new Error("Expected children to be strings");
        }

        String regexp = regexpEscape(first.getString(), outputCharsetEncoder);

        // I only use one .add because whitespace matters
        if (childCount == 2) {
          add(regexp + last.getString());
        } else {
          Preconditions.checkState(childCount == 1);
          add(regexp);
        }
        break;

      case Token.FUNCTION:
	int PROBE_START_LINE_307 = 309;
	com.google.javascript.rhino.Node p_n_477_line_307 = n;
	Class<? extends com.google.javascript.rhino.Node> code_generator_1_expr65_line_307 = p_n_477_line_307.getClass();
	boolean code_generator_1_expr64_line_307 = code_generator_1_expr65_line_307 != Node.class;
	int PROBE_END_LINE_307 = 309;
	if (code_generator_1_expr64_line_307) {
          throw new Error("Unexpected Node subclass.");
        }
	int PROBE_START_LINE_310 = 310;
	int v_child_count_481_line_310 = childCount;
	boolean code_generator_1_expr68_line_310 = v_child_count_481_line_310 == 3;
	int PROBE_END_LINE_310 = 310;
	Preconditions.checkState(code_generator_1_expr68_line_310);
	int PROBE_START_LINE_311 = 311;
	com.google.javascript.jscomp.CodeGenerator.Context p_context_478_line_311 = context;
	com.google.javascript.jscomp.CodeGenerator.Context q_start_of_expr_23_line_311 = Context.START_OF_EXPR;
	boolean code_generator_1_expr70_line_311 = p_context_478_line_311 == q_start_of_expr_23_line_311;
	boolean code_generator_1_expr69_line_311 = (code_generator_1_expr70_line_311);
	int PROBE_END_LINE_311 = 311;
	boolean funcNeedsParens = code_generator_1_expr69_line_311;
	int PROBE_START_LINE_312 = 314;
	boolean v_func_needs_parens_486_line_312 = funcNeedsParens;
	int PROBE_END_LINE_312 = 314;
	if (v_func_needs_parens_486_line_312) {
          add("(");
        }

        add("function");
	int PROBE_START_LINE_317 = 317;
	com.google.javascript.rhino.Node v_first_482_line_317 = first;
	int PROBE_END_LINE_317 = 317;
	add(v_first_482_line_317);

	int PROBE_START_LINE_319 = 319;
	com.google.javascript.rhino.Node v_first_482_line_319 = first;
	com.google.javascript.rhino.Node code_generator_1_expr74_line_319 = v_first_482_line_319.getNext();
	int PROBE_END_LINE_319 = 319;
	add(code_generator_1_expr74_line_319);
	int PROBE_START_LINE_320 = 320;
	com.google.javascript.rhino.Node v_last_483_line_320 = last;
	com.google.javascript.jscomp.CodeGenerator.Context q_preserve_block_24_line_320 = Context.PRESERVE_BLOCK;
	int PROBE_END_LINE_320 = 320;
	add(v_last_483_line_320, q_preserve_block_24_line_320);
	int PROBE_START_LINE_321 = 321;
	com.google.javascript.jscomp.CodeConsumer f_cc_469_line_321 = cc;
	com.google.javascript.jscomp.CodeGenerator.Context p_context_478_line_321 = context;
	com.google.javascript.jscomp.CodeGenerator.Context q_statement_25_line_321 = Context.STATEMENT;
	boolean code_generator_1_expr77_line_321 = p_context_478_line_321 == q_statement_25_line_321;
	int PROBE_END_LINE_321 = 321;
	f_cc_469_line_321.endFunction(code_generator_1_expr77_line_321);

	int PROBE_START_LINE_323 = 325;
	boolean v_func_needs_parens_486_line_323 = funcNeedsParens;
	int PROBE_END_LINE_323 = 325;
	if (v_func_needs_parens_486_line_323) {
          add(")");
        }
        break;

      case Token.GETTER_DEF:
      case Token.SETTER_DEF:
        Preconditions.checkState(n.getParent().isObjectLit());
        Preconditions.checkState(childCount == 1);
        Preconditions.checkState(first.isFunction());

        // Get methods are unnamed
        Preconditions.checkState(first.getFirstChild().getString().isEmpty());
        if (type == Token.GETTER_DEF) {
          // Get methods have no parameters.
          Preconditions.checkState(!first.getChildAtIndex(1).hasChildren());
          add("get ");
        } else {
          // Set methods have one parameter.
          Preconditions.checkState(first.getChildAtIndex(1).hasOneChild());
          add("set ");
        }

        // The name is on the GET or SET node.
        String name = n.getString();
        Node fn = first;
        Node parameters = fn.getChildAtIndex(1);
        Node body = fn.getLastChild();

        // Add the property name.
        if (!n.isQuotedString() &&
            TokenStream.isJSIdentifier(name) &&
            // do not encode literally any non-literal characters that were
            // Unicode escaped.
            NodeUtil.isLatin(name)) {
          add(name);
        } else {
          // Determine if the string is a simple number.
          double d = getSimpleNumber(name);
          if (!Double.isNaN(d)) {
            cc.addNumber(d);
          } else {
            addJsString(n);
          }
        }

        add(parameters);
        add(body, Context.PRESERVE_BLOCK);
        break;

      case Token.SCRIPT:
      case Token.BLOCK: {
        int PROBE_START_LINE_375 = 377;
		com.google.javascript.rhino.Node p_n_477_line_375 = n;
		Class<? extends com.google.javascript.rhino.Node> code_generator_1_expr79_line_375 = p_n_477_line_375
				.getClass();
		boolean code_generator_1_expr78_line_375 = code_generator_1_expr79_line_375 != Node.class;
		int PROBE_END_LINE_375 = 377;
		if (code_generator_1_expr78_line_375) {
          throw new Error("Unexpected Node subclass.");
        }
        int PROBE_START_LINE_378 = 378;
		com.google.javascript.jscomp.CodeGenerator.Context p_context_478_line_378 = context;
		com.google.javascript.jscomp.CodeGenerator.Context q_preserve_block_26_line_378 = Context.PRESERVE_BLOCK;
		boolean code_generator_1_expr81_line_378 = p_context_478_line_378 == q_preserve_block_26_line_378;
		int PROBE_END_LINE_378 = 378;
		boolean preserveBlock = code_generator_1_expr81_line_378;
        int PROBE_START_LINE_379 = 381;
		boolean v_preserve_block_487_line_379 = preserveBlock;
		int PROBE_END_LINE_379 = 381;
		if (v_preserve_block_487_line_379) {
          int PROBE_START_LINE_380 = 380;
			com.google.javascript.jscomp.CodeConsumer f_cc_469_line_380 = cc;
			int PROBE_END_LINE_380 = 380;
		f_cc_469_line_380.beginBlock();
        }

        boolean preferLineBreaks =
            type == Token.SCRIPT ||
            (type == Token.BLOCK &&
                !preserveBlock &&
                n.getParent() != null &&
                n.getParent().isScript());
        int PROBE_START_LINE_388 = 388;
		boolean FOR_STMT_TOGGLE_LINE_389 = false;
		int PROBE_END_LINE_388 = 388;
		for (Node c = null; true;) {
          int PROBE_START_LINE_390 = 390;
			if (!FOR_STMT_TOGGLE_LINE_389) {
				FOR_STMT_TOGGLE_LINE_389 = true;
				Node v_first_482_line_389 = first;
				c = v_first_482_line_389;
			} else {
				if (FOR_STMT_TOGGLE_LINE_389) {
					com.google.javascript.rhino.Node v_c_489_line_389_v1 = c;
					com.google.javascript.rhino.Node code_generator_1_expr87_line_389 = v_c_489_line_389_v1.getNext();
					c = code_generator_1_expr87_line_389;
				} else {
					FOR_STMT_TOGGLE_LINE_389 = true;
				}
			}
			com.google.javascript.rhino.Node v_c_489_line_389 = c;
			boolean code_generator_1_expr85_line_389 = v_c_489_line_389 != null;
			if (!(code_generator_1_expr85_line_389)) {
				break;
			}
			com.google.javascript.rhino.Node v_c_489_line_390 = c;
			com.google.javascript.jscomp.CodeGenerator.Context q_statement_26_line_390 = Context.STATEMENT;
			int PROBE_END_LINE_390 = 390;
		add(v_c_489_line_390, q_statement_26_line_390);

          int PROBE_START_LINE_393 = 395;
		com.google.javascript.rhino.Node v_c_489_line_393 = c;
		boolean code_generator_1_expr89_line_393 = v_c_489_line_393.isVar();
		int PROBE_END_LINE_393 = 395;
		// VAR doesn't include ';' since it gets used in expressions
          if (code_generator_1_expr89_line_393) {
            int PROBE_START_LINE_394 = 394;
			com.google.javascript.jscomp.CodeConsumer f_cc_469_line_394 = cc;
			int PROBE_END_LINE_394 = 394;
			f_cc_469_line_394.endStatement();
          }

          int PROBE_START_LINE_397 = 399;
		com.google.javascript.rhino.Node v_c_489_line_397 = c;
		boolean code_generator_1_expr91_line_397 = v_c_489_line_397.isFunction();
		int PROBE_END_LINE_397 = 399;
		if (code_generator_1_expr91_line_397) {
            cc.maybeLineBreak();
          }

          int PROBE_START_LINE_403 = 405;
		boolean v_prefer_line_breaks_488_line_403 = preferLineBreaks;
		int PROBE_END_LINE_403 = 405;
		// Prefer to break lines in between top-level statements
          // because top-level statements are more homogeneous.
          if (v_prefer_line_breaks_488_line_403) {
            int PROBE_START_LINE_404 = 404;
			com.google.javascript.jscomp.CodeConsumer f_cc_469_line_404 = cc;
			int PROBE_END_LINE_404 = 404;
			f_cc_469_line_404.notePreferredLineBreak();
          }
        }
        int PROBE_START_LINE_407 = 409;
		boolean v_preserve_block_487_line_407 = preserveBlock;
		int PROBE_END_LINE_407 = 409;
		if (v_preserve_block_487_line_407) {
          int PROBE_START_LINE_408 = 408;
			com.google.javascript.jscomp.CodeConsumer f_cc_469_line_408 = cc;
			com.google.javascript.jscomp.CodeConsumer f_cc_469_line_408_v1 = cc;
			com.google.javascript.rhino.Node p_n_477_line_408 = n;
			com.google.javascript.jscomp.CodeGenerator.Context p_context_478_line_408 = context;
			com.google.javascript.jscomp.CodeGenerator.Context q_statement_26_line_408 = Context.STATEMENT;
			boolean code_generator_1_expr95_line_408 = p_context_478_line_408 == q_statement_26_line_408;
			boolean code_generator_1_expr94_line_408 = f_cc_469_line_408_v1.breakAfterBlockFor(p_n_477_line_408,
					code_generator_1_expr95_line_408);
			int PROBE_END_LINE_408 = 408;
		f_cc_469_line_408.endBlock(code_generator_1_expr94_line_408);
        }
        break;
      }

      case Token.FOR:
        if (childCount == 4) {
          add("for(");
          if (first.isVar()) {
            add(first, Context.IN_FOR_INIT_CLAUSE);
          } else {
            addExpr(first, 0, Context.IN_FOR_INIT_CLAUSE);
          }
          add(";");
          add(first.getNext());
          add(";");
          add(first.getNext().getNext());
          add(")");
          addNonEmptyStatement(
              last, getContextForNonEmptyExpression(context), false);
        } else {
          Preconditions.checkState(childCount == 3);
          add("for(");
          add(first);
          add("in");
          add(first.getNext());
          add(")");
          addNonEmptyStatement(
              last, getContextForNonEmptyExpression(context), false);
        }
        break;

      case Token.DO:
        Preconditions.checkState(childCount == 2);
        add("do");
        addNonEmptyStatement(first, Context.OTHER, false);
        add("while(");
        add(last);
        add(")");
        cc.endStatement();
        break;

      case Token.WHILE:
        Preconditions.checkState(childCount == 2);
        add("while(");
        add(first);
        add(")");
        addNonEmptyStatement(
            last, getContextForNonEmptyExpression(context), false);
        break;

      case Token.EMPTY:
        Preconditions.checkState(childCount == 0);
        break;

      case Token.GETPROP: {
        Preconditions.checkState(
            childCount == 2,
            "Bad GETPROP: expected 2 children, but got %s", childCount);
        Preconditions.checkState(
            last.isString(),
            "Bad GETPROP: RHS should be STRING");
        int PROBE_START_LINE_470 = 470;
		com.google.javascript.rhino.Node v_first_482_line_470 = first;
		boolean code_generator_1_expr101_line_470 = v_first_482_line_470.isNumber();
		boolean code_generator_1_expr100_line_470 = (code_generator_1_expr101_line_470);
		int PROBE_END_LINE_470 = 470;
		boolean needsParens = code_generator_1_expr100_line_470;
        int PROBE_START_LINE_471 = 473;
		boolean v_needs_parens_490_line_471 = needsParens;
		int PROBE_END_LINE_471 = 473;
		if (v_needs_parens_490_line_471) {
          add("(");
        }
        int PROBE_START_LINE_474 = 474;
		com.google.javascript.rhino.Node v_first_482_line_474 = first;
		int v_type_479_line_474 = type;
		int code_generator_1_expr103_line_474 = NodeUtil.precedence(v_type_479_line_474);
		com.google.javascript.jscomp.CodeGenerator.Context p_context_478_line_474 = context;
		int PROBE_END_LINE_474 = 474;
		addExpr(v_first_482_line_474, code_generator_1_expr103_line_474, p_context_478_line_474);
        int PROBE_START_LINE_475 = 477;
		boolean v_needs_parens_490_line_475 = needsParens;
		int PROBE_END_LINE_475 = 477;
		if (v_needs_parens_490_line_475) {
          add(")");
        }
        add(".");
        int PROBE_START_LINE_479 = 479;
		com.google.javascript.rhino.Node v_last_483_line_479 = last;
		String code_generator_1_expr106_line_479 = v_last_483_line_479.getString();
		int PROBE_END_LINE_479 = 479;
		addIdentifier(code_generator_1_expr106_line_479);
        break;
      }

      case Token.GETELEM:
        Preconditions.checkState(
            childCount == 2,
            "Bad GETELEM: expected 2 children but got %s", childCount);
        addExpr(first, NodeUtil.precedence(type), context);
        add("[");
        add(first.getNext());
        add("]");
        break;

      case Token.WITH:
        Preconditions.checkState(childCount == 2);
        add("with(");
        add(first);
        add(")");
        addNonEmptyStatement(
            last, getContextForNonEmptyExpression(context), false);
        break;

      case Token.INC:
      case Token.DEC: {
        Preconditions.checkState(childCount == 1);
        String o = type == Token.INC ? "++" : "--";
        int postProp = n.getIntProp(Node.INCRDECR_PROP);
        // A non-zero post-prop value indicates a post inc/dec, default of zero
        // is a pre-inc/dec.
        if (postProp != 0) {
          addExpr(first, NodeUtil.precedence(type), context);
          cc.addOp(o, false);
        } else {
          cc.addOp(o, false);
          add(first);
        }
        break;
      }

      case Token.CALL:
        // We have two special cases here:
        // 1) If the left hand side of the call is a direct reference to eval,
        // then it must have a DIRECT_EVAL annotation. If it does not, then
        // that means it was originally an indirect call to eval, and that
        // indirectness must be preserved.
        // 2) If the left hand side of the call is a property reference,
        // then the call must not a FREE_CALL annotation. If it does, then
        // that means it was originally an call without an explicit this and
        // that must be preserved.
        if (isIndirectEval(first)
            || n.getBooleanProp(Node.FREE_CALL) && NodeUtil.isGet(first)) {
          add("(0,");
          addExpr(first, NodeUtil.precedence(Token.COMMA), Context.OTHER);
          add(")");
        } else {
          addExpr(first, NodeUtil.precedence(type), context);
        }
        add("(");
        addList(first.getNext());
        add(")");
        break;

      case Token.IF:
        boolean hasElse = childCount == 3;
        boolean ambiguousElseClause =
            context == Context.BEFORE_DANGLING_ELSE && !hasElse;
        if (ambiguousElseClause) {
          cc.beginBlock();
        }

        add("if(");
        add(first);
        add(")");

        if (hasElse) {
          addNonEmptyStatement(
              first.getNext(), Context.BEFORE_DANGLING_ELSE, false);
          add("else");
          addNonEmptyStatement(
              last, getContextForNonEmptyExpression(context), false);
        } else {
          addNonEmptyStatement(first.getNext(), Context.OTHER, false);
          Preconditions.checkState(childCount == 2);
        }

        if (ambiguousElseClause) {
          cc.endBlock();
        }
        break;

      case Token.NULL:
        Preconditions.checkState(childCount == 0);
        cc.addConstant("null");
        break;

      case Token.THIS:
        Preconditions.checkState(childCount == 0);
        add("this");
        break;

      case Token.FALSE:
        Preconditions.checkState(childCount == 0);
        cc.addConstant("false");
        break;

      case Token.TRUE:
        Preconditions.checkState(childCount == 0);
        cc.addConstant("true");
        break;

      case Token.CONTINUE:
        Preconditions.checkState(childCount <= 1);
        add("continue");
        if (childCount == 1) {
          if (!first.isLabelName()) {
            throw new Error("Unexpected token type. Should be LABEL_NAME.");
          }
          add(" ");
          add(first);
        }
        cc.endStatement();
        break;

      case Token.DEBUGGER:
        Preconditions.checkState(childCount == 0);
        add("debugger");
        cc.endStatement();
        break;

      case Token.BREAK:
        Preconditions.checkState(childCount <= 1);
        add("break");
        if (childCount == 1) {
          if (!first.isLabelName()) {
            throw new Error("Unexpected token type. Should be LABEL_NAME.");
          }
          add(" ");
          add(first);
        }
        cc.endStatement();
        break;

      case Token.EXPR_RESULT:
	int PROBE_START_LINE_623 = 623;
	int v_child_count_481_line_623 = childCount;
	boolean code_generator_1_expr108_line_623 = v_child_count_481_line_623 == 1;
	int PROBE_END_LINE_623 = 623;
	Preconditions.checkState(code_generator_1_expr108_line_623);
	int PROBE_START_LINE_624 = 624;
	com.google.javascript.rhino.Node v_first_482_line_624 = first;
	com.google.javascript.jscomp.CodeGenerator.Context q_start_of_expr_26_line_624 = Context.START_OF_EXPR;
	int PROBE_END_LINE_624 = 624;
	add(v_first_482_line_624, q_start_of_expr_26_line_624);
	int PROBE_START_LINE_625 = 625;
	com.google.javascript.jscomp.CodeConsumer f_cc_469_line_625 = cc;
	int PROBE_END_LINE_625 = 625;
	f_cc_469_line_625.endStatement();
        break;

      case Token.NEW:
        add("new ");
        int precedence = NodeUtil.precedence(type);

        // If the first child contains a CALL, then claim higher precedence
        // to force parentheses. Otherwise, when parsed, NEW will bind to the
        // first viable parentheses (don't traverse into functions).
        if (NodeUtil.containsType(
            first, Token.CALL, NodeUtil.MATCH_NOT_FUNCTION)) {
          precedence = NodeUtil.precedence(first.getType()) + 1;
        }
        addExpr(first, precedence, Context.OTHER);

        // '()' is optional when no arguments are present
        Node next = first.getNext();
        if (next != null) {
          add("(");
          addList(next);
          add(")");
        }
        break;

      case Token.STRING_KEY:
        Preconditions.checkState(
            childCount == 1, "Object lit key must have 1 child");
        addJsString(n);
        break;

      case Token.STRING:
        Preconditions.checkState(
            childCount == 0, "A string may not have children");
        addJsString(n);
        break;

      case Token.DELPROP:
        Preconditions.checkState(childCount == 1);
        add("delete ");
        add(first);
        break;

      case Token.OBJECTLIT: {
        int PROBE_START_LINE_669 = 669;
		com.google.javascript.jscomp.CodeGenerator.Context p_context_478_line_669 = context;
		com.google.javascript.jscomp.CodeGenerator.Context q_start_of_expr_26_line_669 = Context.START_OF_EXPR;
		boolean code_generator_1_expr112_line_669 = p_context_478_line_669 == q_start_of_expr_26_line_669;
		boolean code_generator_1_expr111_line_669 = (code_generator_1_expr112_line_669);
		int PROBE_END_LINE_669 = 669;
		boolean needsParens = code_generator_1_expr111_line_669;
        int PROBE_START_LINE_670 = 672;
		boolean v_needs_parens_491_line_670 = needsParens;
		int PROBE_END_LINE_670 = 672;
		if (v_needs_parens_491_line_670) {
          add("(");
        }
        add("{");
        int PROBE_START_LINE_673 = 673;
		boolean FOR_STMT_TOGGLE_LINE_674 = false;
		int PROBE_END_LINE_673 = 673;
		for (Node c = null; true;) {
          int PROBE_START_LINE_675 = 677;
			if (!FOR_STMT_TOGGLE_LINE_674) {
				FOR_STMT_TOGGLE_LINE_674 = true;
				Node v_first_482_line_674 = first;
				c = v_first_482_line_674;
			} else {
				if (FOR_STMT_TOGGLE_LINE_674) {
					com.google.javascript.rhino.Node v_c_492_line_674_v1 = c;
					com.google.javascript.rhino.Node code_generator_1_expr117_line_674 = v_c_492_line_674_v1.getNext();
					c = code_generator_1_expr117_line_674;
				} else {
					FOR_STMT_TOGGLE_LINE_674 = true;
				}
			}
			com.google.javascript.rhino.Node v_c_492_line_674 = c;
			boolean code_generator_1_expr115_line_674 = v_c_492_line_674 != null;
			if (!(code_generator_1_expr115_line_674)) {
				break;
			}
			com.google.javascript.rhino.Node v_c_492_line_675 = c;
			com.google.javascript.rhino.Node v_first_482_line_675 = first;
			boolean code_generator_1_expr118_line_675 = v_c_492_line_675 != v_first_482_line_675;
			int PROBE_END_LINE_675 = 677;
		if (code_generator_1_expr118_line_675) {
            cc.listSeparator();
          }

          int PROBE_START_LINE_679 = 704;
		com.google.javascript.rhino.Node v_c_492_line_679 = c;
		boolean code_generator_1_expr120_line_679 = v_c_492_line_679.isGetterDef();
		boolean code_generator_1_expr121_line_679 = false;
		if (!code_generator_1_expr120_line_679) {
			com.google.javascript.rhino.Node v_c_492_line_679_v1 = c;
			code_generator_1_expr121_line_679 = v_c_492_line_679_v1.isSetterDef();
		}
		boolean code_generator_1_expr119_line_679 = code_generator_1_expr120_line_679
				|| code_generator_1_expr121_line_679;
		int PROBE_END_LINE_679 = 704;
		if (code_generator_1_expr119_line_679) {
            add(c);
          } else {
            int PROBE_START_LINE_682 = 682;
			com.google.javascript.rhino.Node v_c_492_line_682 = c;
			boolean code_generator_1_expr123_line_682 = v_c_492_line_682.isStringKey();
			int PROBE_END_LINE_682 = 682;
			Preconditions.checkState(code_generator_1_expr123_line_682);
            int PROBE_START_LINE_683 = 683;
			com.google.javascript.rhino.Node v_c_492_line_683 = c;
			String code_generator_1_expr124_line_683 = v_c_492_line_683.getString();
			int PROBE_END_LINE_683 = 683;
			String key = code_generator_1_expr124_line_683;
            int PROBE_START_LINE_686 = 701;
			com.google.javascript.rhino.Node v_c_492_line_686 = c;
			boolean code_generator_1_expr127_line_686 = v_c_492_line_686.isQuotedString();
			boolean code_generator_1_expr126_line_686 = !code_generator_1_expr127_line_686;
			boolean code_generator_1_expr125_line_686 = code_generator_1_expr126_line_686 && !TokenStream.isKeyword(key)
					&& TokenStream.isJSIdentifier(key) && NodeUtil.isLatin(key);
			int PROBE_END_LINE_686 = 701;
			// Object literal property names don't have to be quoted if they
            // are not JavaScript keywords
            if (code_generator_1_expr125_line_686) {
              int PROBE_START_LINE_692 = 692;
					String v_key_493_line_692 = key;
					int PROBE_END_LINE_692 = 692;
			add(v_key_493_line_692);
            } else {
              // Determine if the string is a simple number.
              double d = getSimpleNumber(key);
              if (!Double.isNaN(d)) {
                cc.addNumber(d);
              } else {
                addExpr(c, 1, Context.OTHER);
              }
            }
            add(":");
            int PROBE_START_LINE_703 = 703;
			com.google.javascript.rhino.Node v_c_492_line_703 = c;
			com.google.javascript.rhino.Node code_generator_1_expr131_line_703 = v_c_492_line_703.getFirstChild();
			com.google.javascript.jscomp.CodeGenerator.Context q_other_26_line_703 = Context.OTHER;
			int PROBE_END_LINE_703 = 703;
			addExpr(code_generator_1_expr131_line_703, 1, q_other_26_line_703);
          }
        }
        add("}");
        int PROBE_START_LINE_707 = 709;
		boolean v_needs_parens_491_line_707 = needsParens;
		int PROBE_END_LINE_707 = 709;
		if (v_needs_parens_491_line_707) {
          add(")");
        }
        break;
      }

      case Token.SWITCH:
        add("switch(");
        add(first);
        add(")");
        cc.beginBlock();
        addAllSiblings(first.getNext());
        cc.endBlock(context == Context.STATEMENT);
        break;

      case Token.CASE:
        Preconditions.checkState(childCount == 2);
        add("case ");
        add(first);
        addCaseBody(last);
        break;

      case Token.DEFAULT_CASE:
        Preconditions.checkState(childCount == 1);
        add("default");
        addCaseBody(first);
        break;

      case Token.LABEL:
        Preconditions.checkState(childCount == 2);
        if (!first.isLabelName()) {
          throw new Error("Unexpected token type. Should be LABEL_NAME.");
        }
        add(first);
        add(":");
        addNonEmptyStatement(
            last, getContextForNonEmptyExpression(context), true);
        break;

      case Token.CAST:
        add("(");
        add(first);
        add(")");
        break;

      default:
        throw new Error("Unknown type " + type + "\n" + n.toStringTree());
    }

    int PROBE_START_LINE_756 = 756;
	com.google.javascript.jscomp.CodeConsumer f_cc_469_line_756 = cc;
	com.google.javascript.rhino.Node p_n_477_line_756 = n;
	int PROBE_END_LINE_756 = 756;
	f_cc_469_line_756.endSourceMapping(p_n_477_line_756);
  }

  /**
   * We could use addList recursively here, but sometimes we produce
   * very deeply nested operators and run out of stack space, so we
   * just unroll the recursion when possible.
   *
   * We assume nodes are left-recursive.
   */
  private void unrollBinaryOperator(
      Node n, int op, String opStr, Context context,
      Context rhsContext, int leftPrecedence, int rightPrecedence) {
    int PROBE_START_LINE_769 = 769;
		com.google.javascript.rhino.Node p_n_494_line_769 = n;
		Node code_generator_1_expr134_line_769 = p_n_494_line_769.getFirstChild();
		int PROBE_END_LINE_769 = 769;
	Node firstNonOperator = code_generator_1_expr134_line_769;
    while (true) {
      int PROBE_START_LINE_770 = 770;
		com.google.javascript.rhino.Node v_first_non_operator_501_line_770 = firstNonOperator;
		int code_generator_1_expr136_line_770 = v_first_non_operator_501_line_770.getType();
		int p_op_495_line_770 = op;
		boolean code_generator_1_expr135_line_770 = code_generator_1_expr136_line_770 == p_op_495_line_770;
		if (!(code_generator_1_expr135_line_770)) {
			break;
		}
		int PROBE_END_LINE_770 = 770;
	firstNonOperator = firstNonOperator.getFirstChild();
    }

    int PROBE_START_LINE_774 = 774;
	com.google.javascript.rhino.Node v_first_non_operator_501_line_774 = firstNonOperator;
	int p_left_precedence_499_line_774 = leftPrecedence;
	com.google.javascript.jscomp.CodeGenerator.Context p_context_497_line_774 = context;
	int PROBE_END_LINE_774 = 774;
	addExpr(v_first_non_operator_501_line_774, p_left_precedence_499_line_774, p_context_497_line_774);

    int PROBE_START_LINE_776 = 776;
	Node v_first_non_operator_501_line_776 = firstNonOperator;
	Node current = v_first_non_operator_501_line_776;
    boolean DO_COND_TOGGLE_LINE_777 = false;
	int PROBE_END_LINE_776 = 776;
	do {
      int PROBE_START_LINE_777 = 781;
		if (DO_COND_TOGGLE_LINE_777) {
			com.google.javascript.rhino.Node v_current_502_line_781 = current;
			com.google.javascript.rhino.Node p_n_494_line_781 = n;
			boolean code_generator_1_expr144_line_781 = v_current_502_line_781 != p_n_494_line_781;
			if (!(code_generator_1_expr144_line_781)) {
				break;
			}
		} else {
			DO_COND_TOGGLE_LINE_777 = true;
		}
		int PROBE_END_LINE_777 = 781;
		int PROBE_START_LINE_778 = 778;
		com.google.javascript.rhino.Node v_current_502_line_778 = current;
		com.google.javascript.rhino.Node code_generator_1_expr139_line_778 = v_current_502_line_778.getParent();
		int PROBE_END_LINE_778 = 778;
	current = code_generator_1_expr139_line_778;
      int PROBE_START_LINE_779 = 779;
	com.google.javascript.jscomp.CodeConsumer f_cc_469_line_779 = cc;
	String p_op_str_496_line_779 = opStr;
	int PROBE_END_LINE_779 = 779;
	f_cc_469_line_779.addOp(p_op_str_496_line_779, true);
      int PROBE_START_LINE_780 = 780;
	com.google.javascript.rhino.Node v_current_502_line_780 = current;
	com.google.javascript.rhino.Node code_generator_1_expr143_line_780 = v_current_502_line_780.getFirstChild();
	com.google.javascript.rhino.Node code_generator_1_expr142_line_780 = code_generator_1_expr143_line_780.getNext();
	int p_right_precedence_500_line_780 = rightPrecedence;
	com.google.javascript.jscomp.CodeGenerator.Context p_rhs_context_498_line_780 = rhsContext;
	int PROBE_END_LINE_780 = 780;
	addExpr(code_generator_1_expr142_line_780, p_right_precedence_500_line_780, p_rhs_context_498_line_780);
    } while (true);
  }

  static boolean isSimpleNumber(String s) {
    int len = s.length();
    if (len == 0) {
      return false;
    }
    for (int index = 0; index < len; index++) {
      char c = s.charAt(index);
      if (c < '0' || c > '9') {
        return false;
      }
    }
    return len == 1 || s.charAt(0) != '0';
  }

  static double getSimpleNumber(String s) {
    if (isSimpleNumber(s)) {
      try {
        long l = Long.parseLong(s);
        if (l < NodeUtil.MAX_POSITIVE_INTEGER_NUMBER) {
          return l;
        }
      } catch (NumberFormatException e) {
        // The number was too long to parse. Fall through to NaN.
      }
    }
    return Double.NaN;
  }

  /**
   * @return Whether the name is an indirect eval.
   */
  private boolean isIndirectEval(Node n) {
    return n.isName() && "eval".equals(n.getString()) &&
        !n.getBooleanProp(Node.DIRECT_EVAL);
  }

  /**
   * Adds a block or expression, substituting a VOID with an empty statement.
   * This is used for "for (...);" and "if (...);" type statements.
   *
   * @param n The node to print.
   * @param context The context to determine how the node should be printed.
   */
  private void addNonEmptyStatement(
      Node n, Context context, boolean allowNonBlockChild) {
    Node nodeToProcess = n;

    if (!allowNonBlockChild && !n.isBlock()) {
      throw new Error("Missing BLOCK child.");
    }

    // Strip unneeded blocks, that is blocks with <2 children unless
    // the CodePrinter specifically wants to keep them.
    if (n.isBlock()) {
      int count = getNonEmptyChildCount(n, 2);
      if (count == 0) {
        if (cc.shouldPreserveExtraBlocks()) {
          cc.beginBlock();
          cc.endBlock(cc.breakAfterBlockFor(n, context == Context.STATEMENT));
        } else {
          cc.endStatement(true);
        }
        return;
      }

      if (count == 1) {
        // Hack around a couple of browser bugs:
        //   Safari needs a block around function declarations.
        //   IE6/7 needs a block around DOs.
        Node firstAndOnlyChild = getFirstNonEmptyChild(n);
        boolean alwaysWrapInBlock = cc.shouldPreserveExtraBlocks();
        if (alwaysWrapInBlock || isOneExactlyFunctionOrDo(firstAndOnlyChild)) {
          cc.beginBlock();
          add(firstAndOnlyChild, Context.STATEMENT);
          cc.maybeLineBreak();
          cc.endBlock(cc.breakAfterBlockFor(n, context == Context.STATEMENT));
          return;
        } else {
          // Continue with the only child.
          nodeToProcess = firstAndOnlyChild;
        }
      }

      if (count > 1) {
        context = Context.PRESERVE_BLOCK;
      }
    }

    if (nodeToProcess.isEmpty()) {
      cc.endStatement(true);
    } else {
      add(nodeToProcess, context);

      // VAR doesn't include ';' since it gets used in expressions - so any
      // VAR in a statement context needs a call to endStatement() here.
      if (nodeToProcess.isVar()) {
        cc.endStatement();
      }
    }
  }

  /**
   * @return Whether the Node is a DO or FUNCTION (with or without
   * labels).
   */
  private boolean isOneExactlyFunctionOrDo(Node n) {
    if (n.isLabel()) {
      Node labeledStatement = n.getLastChild();
      if (!labeledStatement.isBlock()) {
        return isOneExactlyFunctionOrDo(labeledStatement);
      } else {
        // For labels with block children, we need to ensure that a
        // labeled FUNCTION or DO isn't generated when extraneous BLOCKs
        // are skipped.
        if (getNonEmptyChildCount(n, 2) == 1) {
          return isOneExactlyFunctionOrDo(getFirstNonEmptyChild(n));
        } else {
          // Either a empty statement or an block with more than one child,
          // way it isn't a FUNCTION or DO.
          return false;
        }
      }
    } else {
      return (n.isFunction() || n.isDo());
    }
  }

  private void addExpr(Node n, int minPrecedence, Context context) {
    int PROBE_START_LINE_912 = 919;
	com.google.javascript.rhino.Node p_n_510_line_912 = n;
	int code_generator_1_expr149_line_912 = p_n_510_line_912.getType();
	int code_generator_1_expr148_line_912 = NodeUtil.precedence(code_generator_1_expr149_line_912);
	int p_min_precedence_511_line_912 = minPrecedence;
	boolean code_generator_1_expr147_line_912 = code_generator_1_expr148_line_912 < p_min_precedence_511_line_912;
	boolean code_generator_1_expr146_line_912 = (code_generator_1_expr147_line_912);
	boolean code_generator_1_expr145_line_912 = code_generator_1_expr146_line_912
			|| ((context == Context.IN_FOR_INIT_CLAUSE) && n.isIn());
	int PROBE_END_LINE_912 = 919;
	if (code_generator_1_expr145_line_912){
      add("(");
      add(n, Context.OTHER);
      add(")");
    } else {
      int PROBE_START_LINE_918 = 918;
		com.google.javascript.rhino.Node p_n_510_line_918 = n;
		com.google.javascript.jscomp.CodeGenerator.Context p_context_512_line_918 = context;
		int PROBE_END_LINE_918 = 918;
	add(p_n_510_line_918, p_context_512_line_918);
    }
  }

  void addList(Node firstInList) {
    int PROBE_START_LINE_923 = 923;
	com.google.javascript.rhino.Node p_first_in_list_513_line_923 = firstInList;
	com.google.javascript.jscomp.CodeGenerator.Context q_other_26_line_923 = Context.OTHER;
	int PROBE_END_LINE_923 = 923;
	addList(p_first_in_list_513_line_923, true, q_other_26_line_923);
  }

  void addList(Node firstInList, boolean isArrayOrFunctionArgument) {
    addList(firstInList, isArrayOrFunctionArgument, Context.OTHER);
  }

  void addList(Node firstInList, boolean isArrayOrFunctionArgument,
               Context lhsContext) {
    int PROBE_START_LINE_931 = 931;
				boolean FOR_STMT_TOGGLE_LINE_932 = false;
				int PROBE_END_LINE_931 = 931;
	for (Node n = null; true;) {
      int PROBE_START_LINE_933 = 933;
		if (!FOR_STMT_TOGGLE_LINE_932) {
			FOR_STMT_TOGGLE_LINE_932 = true;
			Node p_first_in_list_516_line_932 = firstInList;
			n = p_first_in_list_516_line_932;
		} else {
			if (FOR_STMT_TOGGLE_LINE_932) {
				com.google.javascript.rhino.Node v_n_519_line_932_v1 = n;
				com.google.javascript.rhino.Node code_generator_1_expr155_line_932 = v_n_519_line_932_v1.getNext();
				n = code_generator_1_expr155_line_932;
			} else {
				FOR_STMT_TOGGLE_LINE_932 = true;
			}
		}
		com.google.javascript.rhino.Node v_n_519_line_932 = n;
		boolean code_generator_1_expr153_line_932 = v_n_519_line_932 != null;
		if (!(code_generator_1_expr153_line_932)) {
			break;
		}
		com.google.javascript.rhino.Node v_n_519_line_933 = n;
		com.google.javascript.rhino.Node p_first_in_list_516_line_933 = firstInList;
		boolean code_generator_1_expr156_line_933 = v_n_519_line_933 == p_first_in_list_516_line_933;
		int PROBE_END_LINE_933 = 933;
	boolean isFirst = code_generator_1_expr156_line_933;
      int PROBE_START_LINE_934 = 940;
	boolean v_is_first_520_line_934 = isFirst;
	int PROBE_END_LINE_934 = 940;
	if (v_is_first_520_line_934) {
        int PROBE_START_LINE_935 = 935;
		com.google.javascript.rhino.Node v_n_519_line_935 = n;
		boolean p_is_array_or_function_argument_517_line_935 = isArrayOrFunctionArgument;
		int code_generator_1_expr158_line_935 = p_is_array_or_function_argument_517_line_935 ? 1 : 0;
		com.google.javascript.jscomp.CodeGenerator.Context p_lhs_context_518_line_935 = lhsContext;
		int PROBE_END_LINE_935 = 935;
		addExpr(v_n_519_line_935, code_generator_1_expr158_line_935, p_lhs_context_518_line_935);
      } else {
        cc.listSeparator();
        addExpr(n, isArrayOrFunctionArgument ? 1 : 0,
            getContextForNoInOperator(lhsContext));
      }
    }
  }

  /**
   * This function adds a comma-separated list as is specified by an ARRAYLIT
   * node with the associated skipIndexes array.  This is a space optimization
   * since we avoid creating a whole Node object for each empty array literal
   * slot.
   * @param firstInList The first in the node list (chained through the next
   * property).
   */
  void addArrayList(Node firstInList) {
    boolean lastWasEmpty = false;
    for (Node n = firstInList; n != null; n = n.getNext()) {
      if (n != firstInList) {
        cc.listSeparator();
      }
      addExpr(n, 1, Context.OTHER);
      lastWasEmpty = n.isEmpty();
    }

    if (lastWasEmpty) {
      cc.listSeparator();
    }
  }

  void addCaseBody(Node caseBody) {
    cc.beginCaseBody();
    add(caseBody);
    cc.endCaseBody();
  }

  void addAllSiblings(Node n) {
    for (Node c = n; c != null; c = c.getNext()) {
      add(c);
    }
  }

  /** Outputs a JS string, using the optimal (single/double) quote character */
  private void addJsString(Node n) {
    String s = n.getString();
    boolean useSlashV = n.getBooleanProp(Node.SLASH_V);
    if (useSlashV) {
      add(jsString(n.getString(), useSlashV));
    } else {
      String cached = escapedJsStrings.get(s);
      if (cached == null) {
        cached = jsString(n.getString(), useSlashV);
        escapedJsStrings.put(s, cached);
      }
      add(cached);
    }
  }

  private String jsString(String s, boolean useSlashV) {
    int singleq = 0, doubleq = 0;

    // could count the quotes and pick the optimal quote character
    for (int i = 0; i < s.length(); i++) {
      switch (s.charAt(i)) {
        case '"': doubleq++; break;
        case '\'': singleq++; break;
      }
    }

    String doublequote, singlequote;
    char quote;
    if (preferSingleQuotes ?
        (singleq <= doubleq) : (singleq < doubleq)) {
      // more double quotes so enclose in single quotes.
      quote = '\'';
      doublequote = "\"";
      singlequote = "\\\'";
    } else {
      // more single quotes so escape the doubles
      quote = '\"';
      doublequote = "\\\"";
      singlequote = "\'";
    }

    return strEscape(s, quote, doublequote, singlequote, "\\\\",
        outputCharsetEncoder, useSlashV, false);
  }

  /** Escapes regular expression */
  String regexpEscape(String s, CharsetEncoder outputCharsetEncoder) {
    return strEscape(s, '/', "\"", "'", "\\", outputCharsetEncoder, false, true);
  }

  /**
   * Escapes the given string to a double quoted (") JavaScript/JSON string
   */
  String escapeToDoubleQuotedJsString(String s) {
    return strEscape(s, '"',  "\\\"", "\'", "\\\\", null, false, false);
  }

  /* If the user doesn't want to specify an output charset encoder, assume
     they want Latin/ASCII characters only.
   */
  String regexpEscape(String s) {
    return regexpEscape(s, null);
  }

  /** Helper to escape JavaScript string as well as regular expression */
  private String strEscape(
      String s,
      char quote,
      String doublequoteEscape,
      String singlequoteEscape,
      String backslashEscape,
      CharsetEncoder outputCharsetEncoder,
      boolean useSlashV,
      boolean isRegexp) {
    StringBuilder sb = new StringBuilder(s.length() + 2);
    sb.append(quote);
    for (int i = 0; i < s.length(); i++) {
      char c = s.charAt(i);
      switch (c) {
        case '\0': sb.append("\\x00"); break;
        case '\u000B':
          if (useSlashV) {
            sb.append("\\v");
          } else {
            sb.append("\\x0B");
          }
          break;
        // From the SingleEscapeCharacter grammar production.
        case '\b': sb.append("\\b"); break;
        case '\f': sb.append("\\f"); break;
        case '\n': sb.append("\\n"); break;
        case '\r': sb.append("\\r"); break;
        case '\t': sb.append("\\t"); break;
        case '\\': sb.append(backslashEscape); break;
        case '\"': sb.append(doublequoteEscape); break;
        case '\'': sb.append(singlequoteEscape); break;

        // From LineTerminators (ES5 Section 7.3, Table 3)
        case '\u2028': sb.append("\\u2028"); break;
        case '\u2029': sb.append("\\u2029"); break;

        case '=':
          // '=' is a syntactically signficant regexp character.
          if (trustedStrings || isRegexp) {
            sb.append(c);
          } else {
            sb.append("\\x3d");
          }
          break;

        case '&':
          if (trustedStrings || isRegexp) {
            sb.append(c);
          } else {
            sb.append("\\x26");
          }
          break;

        case '>':
          if (!trustedStrings && !isRegexp) {
            sb.append(GT_ESCAPED);
            break;
          }

          // Break --> into --\> or ]]> into ]]\>
          //
          // This is just to prevent developers from shooting themselves in the
          // foot, and does not provide the level of security that you get
          // with trustedString == false.
          if (i >= 2 &&
              ((s.charAt(i - 1) == '-' && s.charAt(i - 2) == '-') ||
               (s.charAt(i - 1) == ']' && s.charAt(i - 2) == ']'))) {
            sb.append(GT_ESCAPED);
          } else {
            sb.append(c);
          }
          break;
        case '<':
          if (!trustedStrings && !isRegexp) {
            sb.append(LT_ESCAPED);
            break;
          }

          // Break </script into <\/script
          // As above, this is just to prevent developers from doing this
          // accidentally.
          final String endScript = "/script";

          // Break <!-- into <\!--
          final String startComment = "!--";

          if (s.regionMatches(true, i + 1, endScript, 0,
                              endScript.length())) {
            sb.append(LT_ESCAPED);
          } else if (s.regionMatches(false, i + 1, startComment, 0,
                                     startComment.length())) {
            sb.append(LT_ESCAPED);
          } else {
            sb.append(c);
          }
          break;
        default:
          // If we're given an outputCharsetEncoder, then check if the
          //  character can be represented in this character set.
          if (outputCharsetEncoder != null) {
            if (outputCharsetEncoder.canEncode(c)) {
              sb.append(c);
            } else {
              // Unicode-escape the character.
              appendHexJavaScriptRepresentation(sb, c);
            }
          } else {
            // No charsetEncoder provided - pass straight Latin characters
            // through, and escape the rest.  Doing the explicit character
            // check is measurably faster than using the CharsetEncoder.
            if (c > 0x1f && c < 0x7f) {
              sb.append(c);
            } else {
              // Other characters can be misinterpreted by some JS parsers,
              // or perhaps mangled by proxies along the way,
              // so we play it safe and Unicode escape them.
              appendHexJavaScriptRepresentation(sb, c);
            }
          }
      }
    }
    sb.append(quote);
    return sb.toString();
  }

  static String identifierEscape(String s) {
    int PROBE_START_LINE_1172 = 1174;
	String p_s_539_line_1172 = s;
	boolean code_generator_1_expr159_line_1172 = NodeUtil.isLatin(p_s_539_line_1172);
	int PROBE_END_LINE_1172 = 1174;
	// First check if escaping is needed at all -- in most cases it isn't.
    if (code_generator_1_expr159_line_1172) {
      int PROBE_START_LINE_1173 = 1173;
		String p_s_539_line_1173 = s;
		int PROBE_END_LINE_1173 = 1173;
	return p_s_539_line_1173;
    }

    // Now going through the string to escape non-Latin characters if needed.
    StringBuilder sb = new StringBuilder();
    for (int i = 0; i < s.length(); i++) {
      char c = s.charAt(i);
      // Identifiers should always go to Latin1/ ASCII characters because
      // different browser's rules for valid identifier characters are
      // crazy.
      if (c > 0x1F && c < 0x7F) {
        sb.append(c);
      } else {
        appendHexJavaScriptRepresentation(sb, c);
      }
    }
    return sb.toString();
  }
  /**
   * @param maxCount The maximum number of children to look for.
   * @return The number of children of this node that are non empty up to
   * maxCount.
   */
  private static int getNonEmptyChildCount(Node n, int maxCount) {
    int i = 0;
    Node c = n.getFirstChild();
    for (; c != null && i < maxCount; c = c.getNext()) {
      if (c.isBlock()) {
        i += getNonEmptyChildCount(c, maxCount - i);
      } else if (!c.isEmpty()) {
        i++;
      }
    }
    return i;
  }

  /** Gets the first non-empty child of the given node. */
  private static Node getFirstNonEmptyChild(Node n) {
    for (Node c = n.getFirstChild(); c != null; c = c.getNext()) {
      if (c.isBlock()) {
        Node result = getFirstNonEmptyChild(c);
        if (result != null) {
          return result;
        }
      } else if (!c.isEmpty()) {
        return c;
      }
    }
    return null;
  }

  // Information on the current context. Used for disambiguating special cases.
  // For example, a "{" could indicate the start of an object literal or a
  // block, depending on the current context.
  enum Context {
    STATEMENT,
    BEFORE_DANGLING_ELSE, // a hack to resolve the else-clause ambiguity
    START_OF_EXPR,
    PRESERVE_BLOCK,
    // Are we inside the init clause of a for loop?  If so, the containing
    // expression can't contain an in operator.  Pass this context flag down
    // until we reach expressions which no longer have the limitation.
    IN_FOR_INIT_CLAUSE,
    OTHER
  }

  private Context getContextForNonEmptyExpression(Context currentContext) {
    return currentContext == Context.BEFORE_DANGLING_ELSE ?
        Context.BEFORE_DANGLING_ELSE : Context.OTHER;
  }

  /**
   * If we're in a IN_FOR_INIT_CLAUSE, we can't permit in operators in the
   * expression.  Pass on the IN_FOR_INIT_CLAUSE flag through subexpressions.
   */
  private  Context getContextForNoInOperator(Context context) {
    int PROBE_START_LINE_1249 = 1250;
	com.google.javascript.jscomp.CodeGenerator.Context p_context_550_line_1249 = context;
	com.google.javascript.jscomp.CodeGenerator.Context q_in_for_init_clause_27_line_1249 = Context.IN_FOR_INIT_CLAUSE;
	boolean code_generator_1_expr162_line_1249 = p_context_550_line_1249 == q_in_for_init_clause_27_line_1249;
	com.google.javascript.jscomp.CodeGenerator.Context code_generator_1_expr161_line_1249 = code_generator_1_expr162_line_1249
			? Context.IN_FOR_INIT_CLAUSE
			: Context.OTHER;
	com.google.javascript.jscomp.CodeGenerator.Context code_generator_1_expr160_line_1249 = (code_generator_1_expr161_line_1249);
	int PROBE_END_LINE_1249 = 1250;
	return code_generator_1_expr160_line_1249;
  }

  /**
   * @see #appendHexJavaScriptRepresentation(int, Appendable)
   */
  private static void appendHexJavaScriptRepresentation(
      StringBuilder sb, char c) {
    try {
      appendHexJavaScriptRepresentation(c, sb);
    } catch (IOException ex) {
      // StringBuilder does not throw IOException.
      throw new RuntimeException(ex);
    }
  }

  /**
   * Returns a JavaScript representation of the character in a hex escaped
   * format.
   *
   * @param codePoint The code point to append.
   * @param out The buffer to which the hex representation should be appended.
   */
  private static void appendHexJavaScriptRepresentation(
      int codePoint, Appendable out)
      throws IOException {
    if (Character.isSupplementaryCodePoint(codePoint)) {
      // Handle supplementary Unicode values which are not representable in
      // JavaScript.  We deal with these by escaping them as two 4B sequences
      // so that they will round-trip properly when sent from Java to JavaScript
      // and back.
      char[] surrogates = Character.toChars(codePoint);
      appendHexJavaScriptRepresentation(surrogates[0], out);
      appendHexJavaScriptRepresentation(surrogates[1], out);
      return;
    }
    out.append("\\u")
        .append(HEX_CHARS[(codePoint >>> 12) & 0xf])
        .append(HEX_CHARS[(codePoint >>> 8) & 0xf])
        .append(HEX_CHARS[(codePoint >>> 4) & 0xf])
        .append(HEX_CHARS[codePoint & 0xf]);
  }
}
