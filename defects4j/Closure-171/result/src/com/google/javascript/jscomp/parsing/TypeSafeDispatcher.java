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

import com.google.javascript.rhino.head.Token;
import com.google.javascript.rhino.head.ast.ArrayLiteral;
import com.google.javascript.rhino.head.ast.Assignment;
import com.google.javascript.rhino.head.ast.AstNode;
import com.google.javascript.rhino.head.ast.AstRoot;
import com.google.javascript.rhino.head.ast.Block;
import com.google.javascript.rhino.head.ast.BreakStatement;
import com.google.javascript.rhino.head.ast.CatchClause;
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

/**
 * Type safe dispatcher interface for use with new-style Rhino ASTs.
 *
 * The contents of this file was generated using a script; it is
 * likely that the implementation below really belongs in a virtual
 * typeSafeProcess(TypeSafeDispatcher) method implemented by all AST
 * classes - which would make switching based on types and casting
 * unnecessary.
 *
 */
abstract class TypeSafeDispatcher<T> {
  abstract T processArrayLiteral(ArrayLiteral literalNode);
  abstract T processAssignment(Assignment assignmentNode);
  abstract T processAstRoot(AstRoot rootNode);
  abstract T processBlock(Block blockNode);
  abstract T processBreakStatement(BreakStatement statementNode);
  abstract T processCatchClause(CatchClause clauseNode);
  abstract T processConditionalExpression(ConditionalExpression exprNode);
  abstract T processContinueStatement(ContinueStatement statementNode);
  abstract T processDoLoop(DoLoop loopNode);
  abstract T processElementGet(ElementGet getNode);
  abstract T processEmptyExpression(EmptyExpression exprNode);
  abstract T processEmptyStatement(EmptyStatement exprNode);
  abstract T processExpressionStatement(ExpressionStatement statementNode);
  abstract T processForInLoop(ForInLoop loopNode);
  abstract T processForLoop(ForLoop loopNode);
  abstract T processFunctionCall(FunctionCall callNode);
  abstract T processFunctionNode(FunctionNode functionNode);
  abstract T processIfStatement(IfStatement statementNode);
  abstract T processInfixExpression(InfixExpression exprNode);
  abstract T processKeywordLiteral(KeywordLiteral literalNode);
  abstract T processLabel(Label labelNode);
  abstract T processLabeledStatement(LabeledStatement statementNode);
  abstract T processName(Name nameNode);
  abstract T processNewExpression(NewExpression exprNode);
  abstract T processNumberLiteral(NumberLiteral literalNode);
  abstract T processObjectLiteral(ObjectLiteral literalNode);
  abstract T processObjectProperty(ObjectProperty propertyNode);
  abstract T processParenthesizedExpression(ParenthesizedExpression exprNode);
  abstract T processPropertyGet(PropertyGet getNode);
  abstract T processRegExpLiteral(RegExpLiteral literalNode);
  abstract T processReturnStatement(ReturnStatement statementNode);
  abstract T processScope(Scope scopeNode);
  abstract T processStringLiteral(StringLiteral literalNode);
  abstract T processSwitchCase(SwitchCase caseNode);
  abstract T processSwitchStatement(SwitchStatement statementNode);
  abstract T processThrowStatement(ThrowStatement statementNode);
  abstract T processTryStatement(TryStatement statementNode);
  abstract T processUnaryExpression(UnaryExpression exprNode);
  abstract T processVariableDeclaration(VariableDeclaration declarationNode);
  abstract T processVariableInitializer(VariableInitializer initializerNode);
  abstract T processWhileLoop(WhileLoop loopNode);
  abstract T processWithStatement(WithStatement statementNode);

  abstract T processIllegalToken(AstNode node);

  public T process(AstNode node) {
    int PROBE_START_LINE_121 = 283;
	com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_121 = node;
	int type_safe_dispatcher_1_expr1_line_121 = p_node_4607_line_121.getType();
	int PROBE_END_LINE_121 = 283;
	switch (type_safe_dispatcher_1_expr1_line_121) {
      case Token.ADD:
      case Token.AND:
      case Token.BITAND:
      case Token.BITOR:
      case Token.BITXOR:
      case Token.COMMA:
      case Token.DIV:
      case Token.EQ:
      case Token.GE:
      case Token.GT:
      case Token.IN:
      case Token.INSTANCEOF:
      case Token.LE:
      case Token.LSH:
      case Token.LT:
      case Token.MOD:
      case Token.MUL:
      case Token.NE:
      case Token.OR:
      case Token.RSH:
      case Token.SHEQ:
      case Token.SHNE:
      case Token.SUB:
      case Token.URSH:
        return processInfixExpression((InfixExpression) node);
      case Token.ARRAYLIT:
        return processArrayLiteral((ArrayLiteral) node);
      case Token.ASSIGN:
      case Token.ASSIGN_ADD:
      case Token.ASSIGN_BITAND:
      case Token.ASSIGN_BITOR:
      case Token.ASSIGN_BITXOR:
      case Token.ASSIGN_DIV:
      case Token.ASSIGN_LSH:
      case Token.ASSIGN_MOD:
      case Token.ASSIGN_MUL:
      case Token.ASSIGN_RSH:
      case Token.ASSIGN_SUB:
      case Token.ASSIGN_URSH:
	int PROBE_START_LINE_161 = 161;
	com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_161 = node;
	T type_safe_dispatcher_1_expr2_line_161 = processAssignment((Assignment) p_node_4607_line_161);
	int PROBE_END_LINE_161 = 161;
	return type_safe_dispatcher_1_expr2_line_161;
      case Token.BITNOT:
      case Token.DEC:
      case Token.DELPROP:
      case Token.INC:
      case Token.NEG:
      case Token.NOT:
      case Token.POS:
      case Token.TYPEOF:
      case Token.VOID:
        return processUnaryExpression((UnaryExpression) node);
      case Token.BLOCK:
	int PROBE_START_LINE_173 = 182;
	com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_173 = node;
	boolean type_safe_dispatcher_1_expr4_line_173 = p_node_4607_line_173 instanceof Block;
	int PROBE_END_LINE_173 = 182;
	if (type_safe_dispatcher_1_expr4_line_173) {
          int PROBE_START_LINE_174 = 174;
			com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_174 = node;
			T type_safe_dispatcher_1_expr5_line_174 = processBlock((Block) p_node_4607_line_174);
			int PROBE_END_LINE_174 = 174;
		return type_safe_dispatcher_1_expr5_line_174;
        } else  if (node instanceof Scope) {
          return processScope((Scope) node);
        } else {
          throw new IllegalStateException("Unexpected node type.  class: " +
                                          node.getClass() +
                                          " type: " +
                                          Token.typeToName(node.getType()));
        }
      case Token.BREAK:
        return processBreakStatement((BreakStatement) node);
      case Token.CALL:
        return processFunctionCall((FunctionCall) node);
      case Token.CASE:
      case Token.DEFAULT:
        return processSwitchCase((SwitchCase) node);
      case Token.CATCH:
        return processCatchClause((CatchClause) node);
      case Token.COLON:
        return processObjectProperty((ObjectProperty) node);
      case Token.CONTINUE:
        return processContinueStatement((ContinueStatement) node);
      case Token.DO:
        return processDoLoop((DoLoop) node);
      case Token.EMPTY:
        return (node instanceof EmptyExpression) ?
            processEmptyExpression((EmptyExpression) node) :
            processEmptyStatement((EmptyStatement) node);
      case Token.EXPR_RESULT:
      case Token.EXPR_VOID:
	int PROBE_START_LINE_204 = 213;
	com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_204 = node;
	boolean type_safe_dispatcher_1_expr7_line_204 = p_node_4607_line_204 instanceof ExpressionStatement;
	int PROBE_END_LINE_204 = 213;
	if (type_safe_dispatcher_1_expr7_line_204) {
          int PROBE_START_LINE_205 = 205;
			com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_205 = node;
			T type_safe_dispatcher_1_expr8_line_205 = processExpressionStatement(
					(ExpressionStatement) p_node_4607_line_205);
			int PROBE_END_LINE_205 = 205;
		return type_safe_dispatcher_1_expr8_line_205;
        } else  if (node instanceof LabeledStatement) {
          return processLabeledStatement((LabeledStatement) node);
        } else {
          throw new IllegalStateException("Unexpected node type.  class: " +
                                          node.getClass() +
                                          " type: " +
                                          Token.typeToName(node.getType()));
        }
      case Token.DEBUGGER:
      case Token.FALSE:
      case Token.NULL:
      case Token.THIS:
      case Token.TRUE:
        return processKeywordLiteral((KeywordLiteral) node);
      case Token.FOR:
        if (node instanceof ForInLoop) {
          return processForInLoop((ForInLoop) node);
        } else  if (node instanceof ForLoop) {
          return processForLoop((ForLoop) node);
        } else {
          throw new IllegalStateException("Unexpected node type.  class: " +
                                          node.getClass() +
                                          " type: " +
                                          Token.typeToName(node.getType()));
        }
      case Token.FUNCTION:
	int PROBE_START_LINE_232 = 232;
	com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_232 = node;
	T type_safe_dispatcher_1_expr10_line_232 = processFunctionNode((FunctionNode) p_node_4607_line_232);
	int PROBE_END_LINE_232 = 232;
	return type_safe_dispatcher_1_expr10_line_232;
      case Token.GETELEM:
        return processElementGet((ElementGet) node);
      case Token.GETPROP:
	int PROBE_START_LINE_236 = 236;
	com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_236 = node;
	T type_safe_dispatcher_1_expr12_line_236 = processPropertyGet((PropertyGet) p_node_4607_line_236);
	int PROBE_END_LINE_236 = 236;
	return type_safe_dispatcher_1_expr12_line_236;
      case Token.HOOK:
        return processConditionalExpression((ConditionalExpression) node);
      case Token.IF:
        return processIfStatement((IfStatement) node);
      case Token.LABEL:
        return processLabel((Label) node);
      case Token.LP:
        return processParenthesizedExpression((ParenthesizedExpression) node);
      case Token.NAME:
	int PROBE_START_LINE_246 = 246;
	com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_246 = node;
	T type_safe_dispatcher_1_expr14_line_246 = processName((Name) p_node_4607_line_246);
	int PROBE_END_LINE_246 = 246;
	return type_safe_dispatcher_1_expr14_line_246;
      case Token.NEW:
        return processNewExpression((NewExpression) node);
      case Token.NUMBER:
        return processNumberLiteral((NumberLiteral) node);
      case Token.OBJECTLIT:
	int PROBE_START_LINE_252 = 252;
	com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_252 = node;
	T type_safe_dispatcher_1_expr16_line_252 = processObjectLiteral((ObjectLiteral) p_node_4607_line_252);
	int PROBE_END_LINE_252 = 252;
	return type_safe_dispatcher_1_expr16_line_252;
      case Token.REGEXP:
        return processRegExpLiteral((RegExpLiteral) node);
      case Token.RETURN:
        return processReturnStatement((ReturnStatement) node);
      case Token.SCRIPT:
	int PROBE_START_LINE_258 = 258;
	com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_258 = node;
	T type_safe_dispatcher_1_expr18_line_258 = processAstRoot((AstRoot) p_node_4607_line_258);
	int PROBE_END_LINE_258 = 258;
	return type_safe_dispatcher_1_expr18_line_258;
      case Token.STRING:
        return processStringLiteral((StringLiteral) node);
      case Token.SWITCH:
        return processSwitchStatement((SwitchStatement) node);
      case Token.THROW:
        return processThrowStatement((ThrowStatement) node);
      case Token.TRY:
        return processTryStatement((TryStatement) node);
      case Token.CONST:
      case Token.VAR:
	int PROBE_START_LINE_269 = 278;
	com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_269 = node;
	boolean type_safe_dispatcher_1_expr20_line_269 = p_node_4607_line_269 instanceof VariableDeclaration;
	int PROBE_END_LINE_269 = 278;
	if (type_safe_dispatcher_1_expr20_line_269) {
          int PROBE_START_LINE_270 = 270;
			com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_270 = node;
			T type_safe_dispatcher_1_expr21_line_270 = processVariableDeclaration(
					(VariableDeclaration) p_node_4607_line_270);
			int PROBE_END_LINE_270 = 270;
		return type_safe_dispatcher_1_expr21_line_270;
        } else {
			int PROBE_START_LINE_271 = 278;
			com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_271 = node;
			boolean type_safe_dispatcher_1_expr23_line_271 = p_node_4607_line_271 instanceof VariableInitializer;
			int PROBE_END_LINE_271 = 278;
			if (type_safe_dispatcher_1_expr23_line_271) {
				int PROBE_START_LINE_272 = 272;
				com.google.javascript.rhino.head.ast.AstNode p_node_4607_line_272 = node;
				T type_safe_dispatcher_1_expr24_line_272 = processVariableInitializer(
						(VariableInitializer) p_node_4607_line_272);
				int PROBE_END_LINE_272 = 272;
				return type_safe_dispatcher_1_expr24_line_272;
			} else {
				throw new IllegalStateException("Unexpected node type.  class: " + node.getClass() + " type: "
						+ Token.typeToName(node.getType()));
			}
		}
      case Token.WHILE:
        return processWhileLoop((WhileLoop) node);
      case Token.WITH:
        return processWithStatement((WithStatement) node);
    }
    return processIllegalToken(node);
  }
}
