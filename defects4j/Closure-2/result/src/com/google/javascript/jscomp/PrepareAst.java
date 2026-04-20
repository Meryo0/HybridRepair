/*
 * Copyright 2008 The Closure Compiler Authors.
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

import com.google.common.base.Preconditions;
import com.google.javascript.rhino.IR;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;
import com.google.javascript.rhino.JSDocInfo;

/**
 * Prepare the AST before we do any checks or optimizations on it.
 *
 * This pass must run. It should bring the AST into a consistent state,
 * and add annotations where necessary. It should not make any transformations
 * on the tree that would lose source information, since we need that source
 * information for checks.
 *
 * @author johnlenz@google.com (John Lenz)
 */
class PrepareAst implements CompilerPass {

  private final AbstractCompiler compiler;
  private final boolean checkOnly;

  PrepareAst(AbstractCompiler compiler) {
    this(compiler, false);
  }

  PrepareAst(AbstractCompiler compiler, boolean checkOnly) {
    int PROBE_START_LINE_44 = 44;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_2086_line_44 = compiler;
	int PROBE_END_LINE_44 = 44;
	this.compiler = p_compiler_2086_line_44;
    int PROBE_START_LINE_45 = 45;
	boolean p_check_only_2087_line_45 = checkOnly;
	int PROBE_END_LINE_45 = 45;
	this.checkOnly = p_check_only_2087_line_45;
  }

  private void reportChange() {
    if (checkOnly) {
      Preconditions.checkState(false, "normalizeNodeType constraints violated");
    }
  }

  @Override
  public void process(Node externs, Node root) {
    int PROBE_START_LINE_56 = 71;
	boolean f_check_only_2089_line_56 = checkOnly;
	int PROBE_END_LINE_56 = 71;
	if (f_check_only_2089_line_56) {
      normalizeNodeTypes(root);
    } else {
      int PROBE_START_LINE_63 = 66;
		com.google.javascript.rhino.Node p_externs_2090_line_63 = externs;
		boolean prepare_ast_1_expr8_line_63 = p_externs_2090_line_63 != null;
		int PROBE_END_LINE_63 = 66;
	// Don't perform "PrepareAnnotations" when doing checks as
      // they currently aren't valid during sanity checks.  In particular,
      // they DIRECT_EVAL shouldn't be applied after inlining has been
      // performed.
      if (prepare_ast_1_expr8_line_63) {
        NodeTraversal.traverse(
            compiler, externs, new PrepareAnnotations());
      }
      int PROBE_START_LINE_67 = 70;
	com.google.javascript.rhino.Node p_root_2091_line_67 = root;
	boolean prepare_ast_1_expr9_line_67 = p_root_2091_line_67 != null;
	int PROBE_END_LINE_67 = 70;
	if (prepare_ast_1_expr9_line_67) {
        NodeTraversal.traverse(
            compiler, root, new PrepareAnnotations());
      }
    }
  }

  /**
   * Covert EXPR_VOID to EXPR_RESULT to simplify the rest of the code.
   */
  private void normalizeNodeTypes(Node n) {
    normalizeBlocks(n);

    for (Node child = n.getFirstChild();
         child != null; child = child.getNext()) {
      // This pass is run during the CompilerTestCase validation, so this
      // parent pointer check serves as a more general check.
      Preconditions.checkState(child.getParent() == n);

      normalizeNodeTypes(child);
    }
  }

  /**
   * Add blocks to IF, WHILE, DO, etc.
   */
  private void normalizeBlocks(Node n) {
    if (NodeUtil.isControlStructure(n)
        && !n.isLabel()
        && !n.isSwitch()) {
      for (Node c = n.getFirstChild(); c != null; c = c.getNext()) {
        if (NodeUtil.isControlStructureCodeBlock(n,c) &&
            !c.isBlock()) {
          Node newBlock = IR.block().srcref(n);
          n.replaceChild(c, newBlock);
          if (!c.isEmpty()) {
            newBlock.addChildrenToFront(c);
          } else {
            newBlock.setWasEmptyNode(true);
          }
          c = newBlock;
          reportChange();
        }
      }
    }
  }

  /**
   * Normalize where annotations appear on the AST. Copies
   * around existing JSDoc annotations as well as internal annotations.
   */
  static class PrepareAnnotations
      implements NodeTraversal.Callback {

    PrepareAnnotations() {
    }

    @Override
    public boolean shouldTraverse(NodeTraversal t, Node n, Node parent) {
      int PROBE_START_LINE_126 = 128;
		com.google.javascript.rhino.Node p_n_2095_line_126 = n;
		boolean prepare_ast_1_expr12_line_126 = p_n_2095_line_126.isObjectLit();
		int PROBE_END_LINE_126 = 128;
	if (prepare_ast_1_expr12_line_126) {
        normalizeObjectLiteralAnnotations(n);
      }
      return true;
    }

    @Override
    public void visit(NodeTraversal t, Node n, Node parent) {
      int PROBE_START_LINE_134 = 142;
		com.google.javascript.rhino.Node p_n_2098_line_134 = n;
		int prepare_ast_1_expr13_line_134 = p_n_2098_line_134.getType();
		int PROBE_END_LINE_134 = 142;
	switch (prepare_ast_1_expr13_line_134) {
        case Token.CALL:
          annotateCalls(n);
          break;

        case Token.FUNCTION:
	int PROBE_START_LINE_140 = 140;
	com.google.javascript.rhino.Node p_n_2098_line_140 = n;
	com.google.javascript.rhino.Node p_parent_2099_line_140 = parent;
	int PROBE_END_LINE_140 = 140;
	annotateDispatchers(p_n_2098_line_140, p_parent_2099_line_140);
          break;
      }
    }

    private void normalizeObjectLiteralAnnotations(Node objlit) {
      Preconditions.checkState(objlit.isObjectLit());
      for (Node key = objlit.getFirstChild();
           key != null; key = key.getNext()) {
        Node value = key.getFirstChild();
        normalizeObjectLiteralKeyAnnotations(objlit, key, value);
      }
    }

    /**
     * There are two types of calls we are interested in calls without explicit
     * "this" values (what we are call "free" calls) and direct call to eval.
     */
    private void annotateCalls(Node n) {
      Preconditions.checkState(n.isCall());

      // Keep track of of the "this" context of a call.  A call without an
      // explicit "this" is a free call.
      Node first = n.getFirstChild();
      if (!NodeUtil.isGet(first)) {
        n.putBooleanProp(Node.FREE_CALL, true);
      }

      // Keep track of the context in which eval is called. It is important
      // to distinguish between "(0, eval)()" and "eval()".
      if (first.isName() &&
          "eval".equals(first.getString())) {
        first.putBooleanProp(Node.DIRECT_EVAL, true);
      }
    }

    /**
     * Translate dispatcher info into the property expected node.
     */
    private void annotateDispatchers(Node n, Node parent) {
      int PROBE_START_LINE_180 = 180;
		com.google.javascript.rhino.Node p_n_2102_line_180 = n;
		boolean prepare_ast_1_expr16_line_180 = p_n_2102_line_180.isFunction();
		int PROBE_END_LINE_180 = 180;
	Preconditions.checkState(prepare_ast_1_expr16_line_180);
      int PROBE_START_LINE_181 = 187;
	com.google.javascript.rhino.Node p_parent_2103_line_181 = parent;
	com.google.javascript.rhino.JSDocInfo prepare_ast_1_expr19_line_181 = p_parent_2103_line_181.getJSDocInfo();
	boolean prepare_ast_1_expr18_line_181 = prepare_ast_1_expr19_line_181 != null;
	boolean prepare_ast_1_expr17_line_181 = prepare_ast_1_expr18_line_181 && parent.getJSDocInfo().isJavaDispatch();
	int PROBE_END_LINE_181 = 187;
	if (prepare_ast_1_expr17_line_181) {
        if (parent.isAssign()) {
          Preconditions.checkState(parent.getLastChild() == n);
          n.putBooleanProp(Node.IS_DISPATCHER, true);
        }
      }
    }

    /**
     * In the AST that Rhino gives us, it needs to make a distinction
     * between JsDoc on the object literal node and JsDoc on the object literal
     * value. For example,
     * <pre>
     * var x = {
     *   / JSDOC /
     *   a: 'b',
     *   c: / JSDOC / 'd'
     * };
     * </pre>
     *
     * But in few narrow cases (in particular, function literals), it's
     * a lot easier for us if the doc is attached to the value.
     */
    private void normalizeObjectLiteralKeyAnnotations(
        Node objlit, Node key, Node value) {
      Preconditions.checkState(objlit.isObjectLit());
      if (key.getJSDocInfo() != null &&
          value.isFunction()) {
        value.setJSDocInfo(key.getJSDocInfo());
      }
    }
  }
}
