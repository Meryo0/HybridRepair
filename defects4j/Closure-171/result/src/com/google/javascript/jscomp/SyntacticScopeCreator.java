/*
 * Copyright 2006 The Closure Compiler Authors.
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
import com.google.javascript.rhino.InputId;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;

/**
 * <p>The syntactic scope creator scans the parse tree to create a Scope object
 * containing all the variable declarations in that scope.</p>
 *
 * <p>This implementation is not thread-safe.</p>
 *
 */
class SyntacticScopeCreator implements ScopeCreator {
  private final AbstractCompiler compiler;
  private Scope scope;
  private InputId inputId;
  private final RedeclarationHandler redeclarationHandler;

  // The arguments variable is special, in that it's declared in every local
  // scope, but not explicitly declared.
  private static final String ARGUMENTS = "arguments";

  public static final DiagnosticType VAR_MULTIPLY_DECLARED_ERROR =
      DiagnosticType.error(
          "JSC_VAR_MULTIPLY_DECLARED_ERROR",
          "Variable {0} first declared in {1}");

  public static final DiagnosticType VAR_ARGUMENTS_SHADOWED_ERROR =
    DiagnosticType.error(
        "JSC_VAR_ARGUMENTS_SHADOWED_ERROR",
        "Shadowing \"arguments\" is not allowed");

  /**
   * Creates a ScopeCreator.
   */
  SyntacticScopeCreator(AbstractCompiler compiler) {
    int PROBE_START_LINE_56 = 56;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_2985_line_56 = compiler;
	int PROBE_END_LINE_56 = 56;
	this.compiler = p_compiler_2985_line_56;
    this.redeclarationHandler = new DefaultRedeclarationHandler();
  }

  SyntacticScopeCreator(
      AbstractCompiler compiler, RedeclarationHandler redeclarationHandler) {
    this.compiler = compiler;
    this.redeclarationHandler = redeclarationHandler;
  }

  @Override
  public Scope createScope(Node n, Scope parent) {
    inputId = null;
    int PROBE_START_LINE_69 = 73;
	com.google.javascript.jscomp.Scope p_parent_2991_line_69 = parent;
	boolean syntactic_scope_creator_1_expr11_line_69 = p_parent_2991_line_69 == null;
	int PROBE_END_LINE_69 = 73;
	if (syntactic_scope_creator_1_expr11_line_69) {
      int PROBE_START_LINE_70 = 70;
		com.google.javascript.rhino.Node p_n_2990_line_70 = n;
		com.google.javascript.jscomp.Scope syntactic_scope_creator_1_expr13_line_70 = Scope
				.createGlobalScope(p_n_2990_line_70);
		int PROBE_END_LINE_70 = 70;
	scope = syntactic_scope_creator_1_expr13_line_70;
    } else {
      int PROBE_START_LINE_72 = 72;
		com.google.javascript.jscomp.Scope p_parent_2991_line_72 = parent;
		com.google.javascript.rhino.Node p_n_2990_line_72 = n;
		int PROBE_END_LINE_72 = 72;
	scope = new Scope(p_parent_2991_line_72, p_n_2990_line_72);
    }

    int PROBE_START_LINE_75 = 75;
	com.google.javascript.rhino.Node p_n_2990_line_75 = n;
	int PROBE_END_LINE_75 = 75;
	scanRoot(p_n_2990_line_75);

    inputId = null;
    int PROBE_START_LINE_78 = 78;
	Scope f_scope_2993_line_78 = scope;
	int PROBE_END_LINE_78 = 78;
	Scope returnedScope = f_scope_2993_line_78;
    scope = null;
    int PROBE_START_LINE_80 = 80;
	com.google.javascript.jscomp.Scope v_returned_scope_2994_line_80 = returnedScope;
	int PROBE_END_LINE_80 = 80;
	return v_returned_scope_2994_line_80;
  }

  private void scanRoot(Node n) {
    int PROBE_START_LINE_84 = 117;
	com.google.javascript.rhino.Node p_n_2995_line_84 = n;
	boolean syntactic_scope_creator_1_expr19_line_84 = p_n_2995_line_84.isFunction();
	int PROBE_END_LINE_84 = 117;
	if (syntactic_scope_creator_1_expr19_line_84) {
      int PROBE_START_LINE_85 = 90;
		com.google.javascript.rhino.InputId f_input_id_2992_line_85 = inputId;
		boolean syntactic_scope_creator_1_expr20_line_85 = f_input_id_2992_line_85 == null;
		int PROBE_END_LINE_85 = 90;
	if (syntactic_scope_creator_1_expr20_line_85) {
        int PROBE_START_LINE_86 = 86;
		com.google.javascript.rhino.Node p_n_2995_line_86 = n;
		com.google.javascript.rhino.InputId syntactic_scope_creator_1_expr22_line_86 = NodeUtil
				.getInputId(p_n_2995_line_86);
		int PROBE_END_LINE_86 = 86;
		inputId = syntactic_scope_creator_1_expr22_line_86;
        // TODO(johnlenz): inputId maybe null if the FUNCTION node is detached
        // from the AST.
        // Is it meaningful to build a scope for detached FUNCTION node?
      }

      int PROBE_START_LINE_92 = 92;
	com.google.javascript.rhino.Node p_n_2995_line_92 = n;
	Node syntactic_scope_creator_1_expr23_line_92 = p_n_2995_line_92.getFirstChild();
	int PROBE_END_LINE_92 = 92;
	final Node fnNameNode = syntactic_scope_creator_1_expr23_line_92;
      int PROBE_START_LINE_93 = 93;
	com.google.javascript.rhino.Node v_fn_name_node_2996_line_93 = fnNameNode;
	Node syntactic_scope_creator_1_expr24_line_93 = v_fn_name_node_2996_line_93.getNext();
	int PROBE_END_LINE_93 = 93;
	final Node args = syntactic_scope_creator_1_expr24_line_93;
      int PROBE_START_LINE_94 = 94;
	com.google.javascript.rhino.Node v_args_2997_line_94 = args;
	Node syntactic_scope_creator_1_expr25_line_94 = v_args_2997_line_94.getNext();
	int PROBE_END_LINE_94 = 94;
	final Node body = syntactic_scope_creator_1_expr25_line_94;

      int PROBE_START_LINE_98 = 98;
	com.google.javascript.rhino.Node v_fn_name_node_2996_line_98 = fnNameNode;
	String syntactic_scope_creator_1_expr26_line_98 = v_fn_name_node_2996_line_98.getString();
	int PROBE_END_LINE_98 = 98;
	// Bleed the function name into the scope, if it hasn't
      // been declared in the outer scope.
      String fnName = syntactic_scope_creator_1_expr26_line_98;
      int PROBE_START_LINE_99 = 101;
	String v_fn_name_2999_line_99 = fnName;
	boolean syntactic_scope_creator_1_expr29_line_99 = v_fn_name_2999_line_99.isEmpty();
	boolean syntactic_scope_creator_1_expr28_line_99 = !syntactic_scope_creator_1_expr29_line_99;
	boolean syntactic_scope_creator_1_expr30_line_99 = true;
	if (syntactic_scope_creator_1_expr28_line_99) {
		com.google.javascript.rhino.Node p_n_2995_line_99 = n;
		syntactic_scope_creator_1_expr30_line_99 = NodeUtil.isFunctionExpression(p_n_2995_line_99);
	}
	boolean syntactic_scope_creator_1_expr27_line_99 = syntactic_scope_creator_1_expr28_line_99
			&& syntactic_scope_creator_1_expr30_line_99;
	int PROBE_END_LINE_99 = 101;
	if (syntactic_scope_creator_1_expr27_line_99) {
        declareVar(fnNameNode);
      }

      int PROBE_START_LINE_104 = 104;
	com.google.javascript.rhino.Node v_args_2997_line_104 = args;
	boolean syntactic_scope_creator_1_expr32_line_104 = v_args_2997_line_104.isParamList();
	// Args: Declare function variables
      Preconditions.checkState(syntactic_scope_creator_1_expr32_line_104);
      boolean FOR_STMT_TOGGLE_LINE_105 = false;
	int PROBE_END_LINE_104 = 104;
	for (Node a = null; true;) {
        int PROBE_START_LINE_107 = 107;
			if (!FOR_STMT_TOGGLE_LINE_105) {
				FOR_STMT_TOGGLE_LINE_105 = true;
				com.google.javascript.rhino.Node v_args_2997_line_105 = args;
				Node syntactic_scope_creator_1_expr34_line_105 = v_args_2997_line_105.getFirstChild();
				a = syntactic_scope_creator_1_expr34_line_105;
			} else {
				if (FOR_STMT_TOGGLE_LINE_105) {
					a = a.getNext();
				} else {
					FOR_STMT_TOGGLE_LINE_105 = true;
				}
			}
			com.google.javascript.rhino.Node v_a_3000_line_105 = a;
			boolean syntactic_scope_creator_1_expr35_line_105 = v_a_3000_line_105 != null;
			if (!(syntactic_scope_creator_1_expr35_line_105)) {
				break;
			}
			int PROBE_END_LINE_107 = 107;
		Preconditions.checkState(a.isName());
        declareVar(a);
      }

      int PROBE_START_LINE_112 = 112;
	com.google.javascript.rhino.Node v_body_2998_line_112 = body;
	int PROBE_END_LINE_112 = 112;
	// Body
      scanVars(v_body_2998_line_112);
    } else {
      int PROBE_START_LINE_115 = 115;
		com.google.javascript.jscomp.Scope f_scope_2993_line_115 = scope;
		com.google.javascript.jscomp.Scope syntactic_scope_creator_1_expr39_line_115 = f_scope_2993_line_115
				.getParent();
		boolean syntactic_scope_creator_1_expr38_line_115 = syntactic_scope_creator_1_expr39_line_115 == null;
		int PROBE_END_LINE_115 = 115;
	// It's the global block
      Preconditions.checkState(syntactic_scope_creator_1_expr38_line_115);
      int PROBE_START_LINE_116 = 116;
	com.google.javascript.rhino.Node p_n_2995_line_116 = n;
	int PROBE_END_LINE_116 = 116;
	scanVars(p_n_2995_line_116);
    }
  }

  /**
   * Scans and gather variables declarations under a Node
   */
  private void scanVars(Node n) {
    int PROBE_START_LINE_124 = 165;
	com.google.javascript.rhino.Node p_n_3001_line_124 = n;
	int syntactic_scope_creator_1_expr41_line_124 = p_n_3001_line_124.getType();
	int PROBE_END_LINE_124 = 165;
	switch (syntactic_scope_creator_1_expr41_line_124) {
      case Token.VAR:
	int PROBE_START_LINE_126 = 126;
	boolean FOR_STMT_TOGGLE_LINE_127 = false;
	int PROBE_END_LINE_126 = 126;
	// Declare all variables. e.g. var x = 1, y, z;
        for (Node child = null;
             true;) {
          int PROBE_START_LINE_129 = 129;
				if (!FOR_STMT_TOGGLE_LINE_127) {
					FOR_STMT_TOGGLE_LINE_127 = true;
					com.google.javascript.rhino.Node p_n_3001_line_127 = n;
					Node syntactic_scope_creator_1_expr43_line_127 = p_n_3001_line_127.getFirstChild();
					child = syntactic_scope_creator_1_expr43_line_127;
				} else {
					if (FOR_STMT_TOGGLE_LINE_127) {
					} else {
						FOR_STMT_TOGGLE_LINE_127 = true;
					}
				}
				com.google.javascript.rhino.Node v_child_3002_line_128 = child;
				boolean syntactic_scope_creator_1_expr44_line_128 = v_child_3002_line_128 != null;
				if (!(syntactic_scope_creator_1_expr44_line_128)) {
					break;
				}
				com.google.javascript.rhino.Node v_child_3002_line_129 = child;
				Node syntactic_scope_creator_1_expr45_line_129 = v_child_3002_line_129.getNext();
				int PROBE_END_LINE_129 = 129;
		Node next = syntactic_scope_creator_1_expr45_line_129;
          int PROBE_START_LINE_130 = 130;
		com.google.javascript.rhino.Node v_child_3002_line_130 = child;
		int PROBE_END_LINE_130 = 130;
		declareVar(v_child_3002_line_130);
          int PROBE_START_LINE_131 = 131;
		com.google.javascript.rhino.Node v_next_3003_line_131 = next;
		int PROBE_END_LINE_131 = 131;
		child = v_next_3003_line_131;
        }
        return;

      case Token.FUNCTION:
        if (NodeUtil.isFunctionExpression(n)) {
          return;
        }

        String fnName = n.getFirstChild().getString();
        if (fnName.isEmpty()) {
          // This is invalid, but allow it so the checks can catch it.
          return;
        }
        declareVar(n.getFirstChild());
        return;   // should not examine function's children

      case Token.CATCH:
        Preconditions.checkState(n.getChildCount() == 2);
        Preconditions.checkState(n.getFirstChild().isName());
        // the first child is the catch var and the third child
        // is the code block

        final Node var = n.getFirstChild();
        final Node block = var.getNext();

        declareVar(var);
        scanVars(block);
        return;  // only one child to scan

      case Token.SCRIPT:
	int PROBE_START_LINE_162 = 162;
	com.google.javascript.rhino.Node p_n_3001_line_162 = n;
	com.google.javascript.rhino.InputId syntactic_scope_creator_1_expr49_line_162 = p_n_3001_line_162.getInputId();
	int PROBE_END_LINE_162 = 162;
	inputId = syntactic_scope_creator_1_expr49_line_162;
	int PROBE_START_LINE_163 = 163;
	com.google.javascript.rhino.InputId f_input_id_2992_line_163 = inputId;
	int PROBE_END_LINE_163 = 163;
	Preconditions.checkNotNull(f_input_id_2992_line_163);
        break;
    }

    int PROBE_START_LINE_169 = 176;
	com.google.javascript.rhino.Node p_n_3001_line_169 = n;
	boolean syntactic_scope_creator_1_expr52_line_169 = NodeUtil.isControlStructure(p_n_3001_line_169);
	boolean syntactic_scope_creator_1_expr53_line_169 = false;
	if (!syntactic_scope_creator_1_expr52_line_169) {
		com.google.javascript.rhino.Node p_n_3001_line_169_v1 = n;
		syntactic_scope_creator_1_expr53_line_169 = NodeUtil.isStatementBlock(p_n_3001_line_169_v1);
	}
	boolean syntactic_scope_creator_1_expr51_line_169 = syntactic_scope_creator_1_expr52_line_169
			|| syntactic_scope_creator_1_expr53_line_169;
	// Variables can only occur in statement-level nodes, so
    // we only need to traverse children in a couple special cases.
    if (syntactic_scope_creator_1_expr51_line_169) {
      boolean FOR_STMT_TOGGLE_LINE_170 = false;
		int PROBE_END_LINE_169 = 169;
	for (Node child = null;
           true;) {
        int PROBE_START_LINE_172 = 172;
			if (!FOR_STMT_TOGGLE_LINE_170) {
				FOR_STMT_TOGGLE_LINE_170 = true;
				com.google.javascript.rhino.Node p_n_3001_line_170 = n;
				Node syntactic_scope_creator_1_expr55_line_170 = p_n_3001_line_170.getFirstChild();
				child = syntactic_scope_creator_1_expr55_line_170;
			} else {
				if (FOR_STMT_TOGGLE_LINE_170) {
				} else {
					FOR_STMT_TOGGLE_LINE_170 = true;
				}
			}
			com.google.javascript.rhino.Node v_child_3004_line_171 = child;
			boolean syntactic_scope_creator_1_expr56_line_171 = v_child_3004_line_171 != null;
			if (!(syntactic_scope_creator_1_expr56_line_171)) {
				break;
			}
			com.google.javascript.rhino.Node v_child_3004_line_172 = child;
			Node syntactic_scope_creator_1_expr57_line_172 = v_child_3004_line_172.getNext();
			int PROBE_END_LINE_172 = 172;
		Node next = syntactic_scope_creator_1_expr57_line_172;
        int PROBE_START_LINE_173 = 173;
		com.google.javascript.rhino.Node v_child_3004_line_173 = child;
		int PROBE_END_LINE_173 = 173;
		scanVars(v_child_3004_line_173);
        int PROBE_START_LINE_174 = 174;
		com.google.javascript.rhino.Node v_next_3005_line_174 = next;
		int PROBE_END_LINE_174 = 174;
		child = v_next_3005_line_174;
      }
    }
  }

  /**
   * Interface for injectable duplicate handling.
   */
  interface RedeclarationHandler {
    void onRedeclaration(
        Scope s, String name, Node n, CompilerInput input);
  }

  /**
   * The default handler for duplicate declarations.
   */
  private class DefaultRedeclarationHandler implements RedeclarationHandler {
    @Override
    public void onRedeclaration(
        Scope s, String name, Node n, CompilerInput input) {
      Node parent = n.getParent();

      // Don't allow multiple variables to be declared at the top-level scope
      if (scope.isGlobal()) {
        Scope.Var origVar = scope.getVar(name);
        Node origParent = origVar.getParentNode();
        if (origParent.isCatch() &&
            parent.isCatch()) {
          // Okay, both are 'catch(x)' variables.
          return;
        }

        boolean allowDupe = hasDuplicateDeclarationSuppression(n, origVar);

        if (!allowDupe) {
          compiler.report(
              JSError.make(NodeUtil.getSourceName(n), n,
                           VAR_MULTIPLY_DECLARED_ERROR,
                           name,
                           (origVar.input != null
                            ? origVar.input.getName()
                            : "??")));
        }
      } else if (name.equals(ARGUMENTS) && !NodeUtil.isVarDeclaration(n)) {
        // Disallow shadowing "arguments" as we can't handle with our current
        // scope modeling.
        compiler.report(
            JSError.make(NodeUtil.getSourceName(n), n,
                VAR_ARGUMENTS_SHADOWED_ERROR));
      }
    }
  }

  /**
   * Declares a variable.
   *
   * @param n The node corresponding to the variable name.
   */
  private void declareVar(Node n) {
    int PROBE_START_LINE_233 = 233;
	com.google.javascript.rhino.Node p_n_3014_line_233 = n;
	boolean syntactic_scope_creator_1_expr61_line_233 = p_n_3014_line_233.isName();
	int PROBE_END_LINE_233 = 233;
	Preconditions.checkState(syntactic_scope_creator_1_expr61_line_233);

    int PROBE_START_LINE_235 = 235;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_2986_line_235 = compiler;
	com.google.javascript.rhino.InputId f_input_id_2992_line_235 = inputId;
	CompilerInput syntactic_scope_creator_1_expr62_line_235 = f_compiler_2986_line_235
			.getInput(f_input_id_2992_line_235);
	int PROBE_END_LINE_235 = 235;
	CompilerInput input = syntactic_scope_creator_1_expr62_line_235;
    int PROBE_START_LINE_236 = 236;
	com.google.javascript.rhino.Node p_n_3014_line_236 = n;
	String syntactic_scope_creator_1_expr63_line_236 = p_n_3014_line_236.getString();
	int PROBE_END_LINE_236 = 236;
	String name = syntactic_scope_creator_1_expr63_line_236;
    int PROBE_START_LINE_237 = 243;
	com.google.javascript.jscomp.Scope f_scope_2993_line_237 = scope;
	String v_name_3016_line_237 = name;
	boolean syntactic_scope_creator_1_expr65_line_237 = f_scope_2993_line_237.isDeclared(v_name_3016_line_237, false);
	boolean syntactic_scope_creator_1_expr64_line_237 = syntactic_scope_creator_1_expr65_line_237
			|| (scope.isLocal() && name.equals(ARGUMENTS));
	int PROBE_END_LINE_237 = 243;
	if (syntactic_scope_creator_1_expr64_line_237) {
      redeclarationHandler.onRedeclaration(
          scope, name, n, input);
    } else {
      int PROBE_START_LINE_242 = 242;
		com.google.javascript.jscomp.Scope f_scope_2993_line_242 = scope;
		String v_name_3016_line_242 = name;
		com.google.javascript.rhino.Node p_n_3014_line_242 = n;
		com.google.javascript.jscomp.CompilerInput v_input_3015_line_242 = input;
		int PROBE_END_LINE_242 = 242;
	f_scope_2993_line_242.declare(v_name_3016_line_242, p_n_3014_line_242, null, v_input_3015_line_242);
    }
  }


  /**
   * @param n The name node to check.
   * @param origVar The associated Var.
   * @return Whether duplicated declarations warnings should be suppressed
   *     for the given node.
   */
  static boolean hasDuplicateDeclarationSuppression(Node n, Scope.Var origVar) {
    Preconditions.checkState(n.isName());
    Node parent = n.getParent();
    Node origParent = origVar.getParentNode();

    JSDocInfo info = n.getJSDocInfo();
    if (info == null) {
      info = parent.getJSDocInfo();
    }
    if (info != null && info.getSuppressions().contains("duplicate")) {
      return true;
    }

    info = origVar.nameNode.getJSDocInfo();
    if (info == null) {
      info = origParent.getJSDocInfo();
    }
    return (info != null && info.getSuppressions().contains("duplicate"));
  }

  /**
   * Generates an untyped global scope from the root of AST of compiler (which
   * includes externs).
   *
   * @param compiler The compiler for which the scope is generated.
   * @return The new untyped global scope generated as a result of this call.
   */
  static Scope generateUntypedTopScope(AbstractCompiler compiler) {
    return new SyntacticScopeCreator(compiler).createScope(compiler.getRoot(),
        null);
  }


}
