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
package com.google.javascript.jscomp;

import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.javascript.jscomp.NodeTraversal.AbstractPostOrderCallback;
import com.google.javascript.jscomp.Scope.Var;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;

import java.util.Set;

/**
 * Checks that the code obeys the static restrictions of strict mode:
 * <ol>
 * <li> No use of "with".
 * <li> No deleting variables, functions, or arguments.
 * <li> No re-declarations or assignments of "eval" or arguments.
 * <li> No use of "eval" (optional check for Caja).
 * </ol>
 *
 */
class StrictModeCheck extends AbstractPostOrderCallback
    implements CompilerPass {

  int PROBE_START_LINE_40 = 41;

	static final com.google.javascript.jscomp.DiagnosticType strict_mode_check_1_expr1_line_40 = DiagnosticType
			.warning("JSC_UNKNOWN_VARIABLE", "unknown variable {0}");

	int PROBE_END_LINE_40 = 41;

static final DiagnosticType UNKNOWN_VARIABLE = strict_mode_check_1_expr1_line_40;

  int PROBE_START_LINE_43 = 44;

static final com.google.javascript.jscomp.DiagnosticType strict_mode_check_1_expr2_line_43 = DiagnosticType
		.error("JSC_EVAL_USE", "\"eval\" cannot be used in Caja");

int PROBE_END_LINE_43 = 44;

static final DiagnosticType EVAL_USE = strict_mode_check_1_expr2_line_43;

  int PROBE_START_LINE_46 = 48;

static final com.google.javascript.jscomp.DiagnosticType strict_mode_check_1_expr3_line_46 = DiagnosticType
		.warning("JSC_EVAL_DECLARATION", "\"eval\" cannot be redeclared in ES5 strict mode");

int PROBE_END_LINE_46 = 48;

static final DiagnosticType EVAL_DECLARATION = strict_mode_check_1_expr3_line_46;

  int PROBE_START_LINE_50 = 52;

static final com.google.javascript.jscomp.DiagnosticType strict_mode_check_1_expr4_line_50 = DiagnosticType
		.warning("JSC_EVAL_ASSIGNMENT", "the \"eval\" object cannot be reassigned in ES5 strict mode");

int PROBE_END_LINE_50 = 52;

static final DiagnosticType EVAL_ASSIGNMENT = strict_mode_check_1_expr4_line_50;

  int PROBE_START_LINE_54 = 56;

static final com.google.javascript.jscomp.DiagnosticType strict_mode_check_1_expr5_line_54 = DiagnosticType
		.warning("JSC_ARGUMENTS_DECLARATION", "\"arguments\" cannot be redeclared in ES5 strict mode");

int PROBE_END_LINE_54 = 56;

static final DiagnosticType ARGUMENTS_DECLARATION = strict_mode_check_1_expr5_line_54;

  int PROBE_START_LINE_58 = 60;

static final com.google.javascript.jscomp.DiagnosticType strict_mode_check_1_expr6_line_58 = DiagnosticType
		.warning("JSC_ARGUMENTS_ASSIGNMENT", "the \"arguments\" object cannot be reassigned in ES5 strict mode");

int PROBE_END_LINE_58 = 60;

static final DiagnosticType ARGUMENTS_ASSIGNMENT = strict_mode_check_1_expr6_line_58;

  int PROBE_START_LINE_62 = 65;

static final com.google.javascript.jscomp.DiagnosticType strict_mode_check_1_expr7_line_62 = DiagnosticType.warning(
		"JSC_DELETE_VARIABLE", "variables, functions, and arguments cannot be deleted in " + "ES5 strict mode");

int PROBE_END_LINE_62 = 65;

static final DiagnosticType DELETE_VARIABLE = strict_mode_check_1_expr7_line_62;

  int PROBE_START_LINE_67 = 69;

static final com.google.javascript.jscomp.DiagnosticType strict_mode_check_1_expr9_line_67 = DiagnosticType
		.error("JSC_ILLEGAL_NAME", "identifiers ending in '__' cannot be used in Caja");

int PROBE_END_LINE_67 = 69;

static final DiagnosticType ILLEGAL_NAME = strict_mode_check_1_expr9_line_67;

  int PROBE_START_LINE_71 = 73;

static final com.google.javascript.jscomp.DiagnosticType strict_mode_check_1_expr10_line_71 = DiagnosticType
		.warning("JSC_DUPLICATE_OBJECT_KEY", "object literals cannot contain duplicate keys in ES5 strict mode");

int PROBE_END_LINE_71 = 73;

static final DiagnosticType DUPLICATE_OBJECT_KEY = strict_mode_check_1_expr10_line_71;

  private final AbstractCompiler compiler;
  private final boolean noVarCheck;
  private final boolean noCajaChecks;

  StrictModeCheck(AbstractCompiler compiler) {
    this(compiler, false, false);
  }

  StrictModeCheck(
      AbstractCompiler compiler, boolean noVarCheck, boolean noCajaChecks) {
    this.compiler = compiler;
    this.noVarCheck = noVarCheck;
    this.noCajaChecks = noCajaChecks;
  }

  @Override public void process(Node externs, Node root) {
    NodeTraversal.traverseRoots(
        compiler, Lists.newArrayList(externs, root), this);
    NodeTraversal.traverse(compiler, root, new NonExternChecks());
  }

  @Override public void visit(NodeTraversal t, Node n, Node parent) {
    if (n.isName()) {
      if (!isDeclaration(n)) {
        checkNameUse(t, n);
      }
    } else if (n.isAssign()) {
      checkAssignment(t, n);
    } else if (n.isDelProp()) {
      checkDelete(t, n);
    } else if (n.isObjectLit()) {
      checkObjectLiteral(t, n);
    } else if (n.isLabel()) {
      checkLabel(t, n);
    }
  }

  /**
   * Determines if the given name is a declaration, which can be a declaration
   * of a variable, function, or argument.
   */
  private static boolean isDeclaration(Node n) {
    switch (n.getParent().getType()) {
      case Token.VAR:
      case Token.FUNCTION:
      case Token.CATCH:
        return true;

      case Token.PARAM_LIST:
        return n.getParent().getParent().isFunction();

      default:
        return false;
    }
  }

  /** Checks that the given name is used legally. */
  private void checkNameUse(NodeTraversal t, Node n) {
    Var v = t.getScope().getVar(n.getString());
    if (v == null) {
      // In particular, this prevents creating a global variable by assigning
      // to it without a declaration.
      if (!noVarCheck) {
        t.report(n, UNKNOWN_VARIABLE, n.getString());
      }
    }

    if (!noCajaChecks) {
      if ("eval".equals(n.getString())) {
        t.report(n, EVAL_USE);
      } else if (n.getString().endsWith("__")) {
        t.report(n, ILLEGAL_NAME);
      }
    }
  }

  /** Checks that an assignment is not to the "arguments" object. */
  private void checkAssignment(NodeTraversal t, Node n) {
    if (n.getFirstChild().isName()) {
      if ("arguments".equals(n.getFirstChild().getString())) {
        t.report(n, ARGUMENTS_ASSIGNMENT);
      } else if ("eval".equals(n.getFirstChild().getString())) {
        // Note that assignment to eval is already illegal because any use of
        // that name is illegal.
        if (noCajaChecks) {
          t.report(n, EVAL_ASSIGNMENT);
        }
      }
    }
  }

  /** Checks that variables, functions, and arguments are not deleted. */
  private void checkDelete(NodeTraversal t, Node n) {
    if (n.getFirstChild().isName()) {
      Var v = t.getScope().getVar(n.getFirstChild().getString());
      if (v != null) {
        t.report(n, DELETE_VARIABLE);
      }
    }
  }

  /** Checks that object literal keys are valid. */
  private void checkObjectLiteral(NodeTraversal t, Node n) {
    Set<String> getters = Sets.newHashSet();
    Set<String> setters = Sets.newHashSet();
    for (Node key = n.getFirstChild();
         key != null;
         key = key.getNext()) {
      if (!noCajaChecks && key.getString().endsWith("__")) {
        t.report(key, ILLEGAL_NAME);
      }
      if (!key.isSetterDef()) {
        // normal property and getter cases
        if (getters.contains(key.getString())) {
          t.report(key, DUPLICATE_OBJECT_KEY);
        } else {
          getters.add(key.getString());
        }
      }
      if (!key.isGetterDef()) {
        // normal property and setter cases
        if (setters.contains(key.getString())) {
          t.report(key, DUPLICATE_OBJECT_KEY);
        } else {
          setters.add(key.getString());
        }
      }
    }
  }

  /** Checks that label names are valid. */
  private void checkLabel(NodeTraversal t, Node n) {
    if (n.getFirstChild().getString().endsWith("__")) {
      if (!noCajaChecks) {
        t.report(n.getFirstChild(), ILLEGAL_NAME);
      }
    }
  }

  /** Checks that are performed on non-extern code only. */
  private class NonExternChecks extends AbstractPostOrderCallback {
    @Override public void visit(NodeTraversal t, Node n, Node parent) {
      if ((n.isName()) && isDeclaration(n)) {
        checkDeclaration(t, n);
      } else if (n.isGetProp()) {
        checkProperty(t, n);
      }
    }

    /** Checks for illegal declarations. */
    private void checkDeclaration(NodeTraversal t, Node n) {
      if ("eval".equals(n.getString())) {
        t.report(n, EVAL_DECLARATION);
      } else if ("arguments".equals(n.getString())) {
        t.report(n, ARGUMENTS_DECLARATION);
      } else if (n.getString().endsWith("__")) {
        if (!noCajaChecks) {
          t.report(n, ILLEGAL_NAME);
        }
      }
    }

    /** Checks for illegal property accesses. */
    private void checkProperty(NodeTraversal t, Node n) {
      if (n.getLastChild().getString().endsWith("__")) {
        if (!noCajaChecks) {
          t.report(n.getLastChild(), ILLEGAL_NAME);
        }
      }
    }
  }
}
