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

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterators;
import com.google.javascript.rhino.ErrorReporter;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.jstype.JSType;
import com.google.javascript.rhino.jstype.ObjectType;
import com.google.javascript.rhino.jstype.StaticReference;
import com.google.javascript.rhino.jstype.StaticScope;
import com.google.javascript.rhino.jstype.StaticSlot;
import com.google.javascript.rhino.jstype.StaticSourceFile;
import com.google.javascript.rhino.jstype.StaticSymbolTable;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Collection;
import com.google.common.collect.UnmodifiableIterator;

/**
 * Scope contains information about a variable scope in JavaScript.
 * Scopes can be nested, a scope points back to its parent scope.
 * A Scope contains information about variables defined in that scope.
 * <p>
 * A Scope is also used as a lattice element for flow-sensitive type inference.
 * As a lattice element, a Scope is viewed as a map from names to types. A name
 * not in the map is considered to have the bottom type. The join of two maps m1
 * and m2 is the map of the union of names with {@link JSType#getLeastSupertype}
 * to meet the m1 type and m2 type.
 *
 * @see NodeTraversal
 * @see DataFlowAnalysis
 *
 */
public class Scope
    implements StaticScope<JSType>, StaticSymbolTable<Scope.Var, Scope.Var> {
  private final Map<String, Var> vars = new LinkedHashMap<String, Var>();
  private final Scope parent;
  private final int depth;
  private final Node rootNode;

  /** Whether this is a bottom scope for the purposes of type inference. */
  private final boolean isBottom;

  private Var arguments;

  private static final Predicate<Var> DECLARATIVELY_UNBOUND_VARS_WITHOUT_TYPES =
      new Predicate<Var>() {
    @Override public boolean apply(Var var) {
      int PROBE_START_LINE_69 = 72;
		com.google.javascript.jscomp.Scope.Var p_var_2787_line_69 = var;
		com.google.javascript.rhino.Node scope_1_expr7_line_69 = p_var_2787_line_69.getParentNode();
		boolean scope_1_expr6_line_69 = scope_1_expr7_line_69 != null;
		boolean scope_1_expr5_line_69 = scope_1_expr6_line_69 && var.getType() == null;
		boolean scope_1_expr4_line_69 = scope_1_expr5_line_69 && var.getParentNode().isVar();
		boolean scope_1_expr3_line_69 = scope_1_expr4_line_69 && !var.isExtern();
		int PROBE_END_LINE_69 = 72;
	return scope_1_expr3_line_69;
    }
  };

  /** Stores info about a variable */
  public static class Var
      implements StaticSlot<JSType>, StaticReference<JSType> {
    /** name */
    final String name;

    /** Var node */
    final Node nameNode;

    /**
     * The variable's type.
     */
    private JSType type;

    /**
     * Whether the variable's type has been inferred or is declared. An inferred
     * type may change over time (as more code is discovered), whereas a
     * declared type is a static contract that must be matched.
     */
    private final boolean typeInferred;

    /** Input source */
    final CompilerInput input;

    /**
     * The index at which the var is declared. e..g if it's 0, it's the first
     * declared variable in that scope
     */
    final int index;

    /** The enclosing scope */
    final Scope scope;

    /** @see #isMarkedEscaped */
    private boolean markedEscaped = false;

    /** @see #isMarkedAssignedExactlyOnce */
    private boolean markedAssignedExactlyOnce = false;

    /**
     * Creates a variable.
     *
     * @param inferred whether its type is inferred (as opposed to declared)
     */
    private Var(boolean inferred, String name, Node nameNode, JSType type,
                Scope scope, int index, CompilerInput input) {
      int PROBE_START_LINE_122 = 122;
					String p_name_2791_line_122 = name;
					int PROBE_END_LINE_122 = 122;
	this.name = p_name_2791_line_122;
      int PROBE_START_LINE_123 = 123;
	com.google.javascript.rhino.Node p_name_node_2792_line_123 = nameNode;
	int PROBE_END_LINE_123 = 123;
	this.nameNode = p_name_node_2792_line_123;
      int PROBE_START_LINE_124 = 124;
	com.google.javascript.rhino.jstype.JSType p_type_2793_line_124 = type;
	int PROBE_END_LINE_124 = 124;
	this.type = p_type_2793_line_124;
      int PROBE_START_LINE_125 = 125;
	com.google.javascript.jscomp.Scope p_scope_2794_line_125 = scope;
	int PROBE_END_LINE_125 = 125;
	this.scope = p_scope_2794_line_125;
      int PROBE_START_LINE_126 = 126;
	int p_index_2795_line_126 = index;
	int PROBE_END_LINE_126 = 126;
	this.index = p_index_2795_line_126;
      int PROBE_START_LINE_127 = 127;
	com.google.javascript.jscomp.CompilerInput p_input_2796_line_127 = input;
	int PROBE_END_LINE_127 = 127;
	this.input = p_input_2796_line_127;
      int PROBE_START_LINE_128 = 128;
	boolean p_inferred_2790_line_128 = inferred;
	int PROBE_END_LINE_128 = 128;
	this.typeInferred = p_inferred_2790_line_128;
    }

    /**
     * Gets the name of the variable.
     */
    @Override
    public String getName() {
      return name;
    }

    /**
     * Gets the node for the name of the variable.
     */
    @Override
    public Node getNode() {
      return nameNode;
    }

    CompilerInput getInput() {
      return input;
    }

    @Override
    public StaticSourceFile getSourceFile() {
      return nameNode.getStaticSourceFile();
    }

    @Override
    public Var getSymbol() {
      return this;
    }

    @Override
    public Var getDeclaration() {
      return nameNode == null ? null : this;
    }

    /**
     * Gets the parent of the name node.
     */
    public Node getParentNode() {
      int PROBE_START_LINE_170 = 170;
		com.google.javascript.rhino.Node f_name_node_2798_line_170 = nameNode;
		boolean scope_1_expr30_line_170 = f_name_node_2798_line_170 == null;
		com.google.javascript.rhino.Node scope_1_expr31_line_170 = null;
		if (!scope_1_expr30_line_170) {
			com.google.javascript.rhino.Node f_name_node_2798_line_170_v1 = nameNode;
			scope_1_expr31_line_170 = f_name_node_2798_line_170_v1.getParent();
		}
		com.google.javascript.rhino.Node scope_1_expr29_line_170 = scope_1_expr30_line_170
				? null
				: scope_1_expr31_line_170;
		int PROBE_END_LINE_170 = 170;
	return scope_1_expr29_line_170;
    }

    /**
     * Whether this is a bleeding function (an anonymous named function
     * that bleeds into the inner scope).
     */
    public boolean isBleedingFunction() {
      return NodeUtil.isFunctionExpression(getParentNode());
    }

    /**
     * Gets the scope where this variable is declared.
     */
    Scope getScope() {
      int PROBE_START_LINE_185 = 185;
		com.google.javascript.jscomp.Scope f_scope_2800_line_185 = scope;
		int PROBE_END_LINE_185 = 185;
	return f_scope_2800_line_185;
    }

    /**
     * Returns whether this is a global variable.
     */
    public boolean isGlobal() {
      return scope.isGlobal();
    }

    /**
     * Returns whether this is a local variable.
     */
    public boolean isLocal() {
      return scope.isLocal();
    }

    /**
     * Returns whether this is defined in an extern file.
     */
    boolean isExtern() {
      return input == null || input.isExtern();
    }

    /**
     * Returns {@code true} if the variable is declared as a constant,
     * based on the value reported by {@code NodeUtil}.
     */
    public boolean isConst() {
      return nameNode != null && NodeUtil.isConstantName(nameNode);
    }

    /**
     * Returns {@code true} if the variable is declared as a define.
     * A variable is a define if it is annotated by {@code @define}.
     */
    public boolean isDefine() {
      JSDocInfo info = getJSDocInfo();
      return info != null && info.isDefine();
    }

    public Node getInitialValue() {
      int PROBE_START_LINE_227 = 227;
		com.google.javascript.rhino.Node f_name_node_2798_line_227 = nameNode;
		com.google.javascript.rhino.Node scope_1_expr32_line_227 = NodeUtil
				.getRValueOfLValue(f_name_node_2798_line_227);
		int PROBE_END_LINE_227 = 227;
	return scope_1_expr32_line_227;
    }

    /**
     * Gets this variable's type. To know whether this type has been inferred,
     * see {@code #isTypeInferred()}.
     */
    @Override
    public JSType getType() {
      int PROBE_START_LINE_236 = 236;
		com.google.javascript.rhino.jstype.JSType f_type_2799_line_236 = type;
		int PROBE_END_LINE_236 = 236;
	return f_type_2799_line_236;
    }

    /**
     * Returns the name node that produced this variable.
     */
    public Node getNameNode() {
      return nameNode;
    }

    /**
     * Gets the JSDocInfo for the variable.
     */
    @Override
    public JSDocInfo getJSDocInfo() {
      return nameNode == null ? null : NodeUtil.getBestJSDocInfo(nameNode);
    }

    /**
     * Sets this variable's type.
     * @throws IllegalStateException if the variable's type is not inferred
     */
    void setType(JSType type) {
      int PROBE_START_LINE_259 = 259;
		boolean scope_1_expr34_line_259 = isTypeInferred();
		int PROBE_END_LINE_259 = 259;
	Preconditions.checkState(scope_1_expr34_line_259);
      int PROBE_START_LINE_260 = 260;
	com.google.javascript.rhino.jstype.JSType p_type_2804_line_260 = type;
	int PROBE_END_LINE_260 = 260;
	this.type = p_type_2804_line_260;
    }

    /**
     * Resolve this variable's type.
     */
    void resolveType(ErrorReporter errorReporter) {
      int PROBE_START_LINE_267 = 269;
		com.google.javascript.rhino.jstype.JSType f_type_2799_line_267 = type;
		boolean scope_1_expr38_line_267 = f_type_2799_line_267 != null;
		int PROBE_END_LINE_267 = 269;
	if (scope_1_expr38_line_267) {
        int PROBE_START_LINE_268 = 268;
		com.google.javascript.rhino.jstype.JSType f_type_2799_line_268 = type;
		com.google.javascript.rhino.ErrorReporter p_error_reporter_2805_line_268 = errorReporter;
		com.google.javascript.jscomp.Scope f_scope_2800_line_268 = scope;
		com.google.javascript.rhino.jstype.JSType scope_1_expr40_line_268 = f_type_2799_line_268
				.resolve(p_error_reporter_2805_line_268, f_scope_2800_line_268);
		int PROBE_END_LINE_268 = 268;
		type = scope_1_expr40_line_268;
      }
    }

    /**
     * Returns whether this variable's type is inferred. To get the variable's
     * type, see {@link #getType()}.
     */
    @Override
    public boolean isTypeInferred() {
      int PROBE_START_LINE_278 = 278;
		boolean f_type_inferred_2803_line_278 = typeInferred;
		int PROBE_END_LINE_278 = 278;
	return f_type_inferred_2803_line_278;
    }

    public String getInputName() {
      if (input == null) {
        return "<non-file>";
      }
      return input.getName();
    }

    public boolean isNoShadow() {
      JSDocInfo info = getJSDocInfo();
      return info != null && info.isNoShadow();
    }

    @Override public boolean equals(Object other) {
      if (!(other instanceof Var)) {
        return false;
      }

      Var otherVar = (Var) other;
      return otherVar.nameNode == nameNode;
    }

    @Override public int hashCode() {
      return nameNode.hashCode();
    }

    @Override
    public String toString() {
      return "Scope.Var " + name + "{" + type + "}";
    }

    /**
     * Record that this is escaped by an inner scope.
     *
     * In other words, it's assigned in an inner scope so that it's much harder
     * to make assertions about its value at a given point.
     */
    void markEscaped() {
      markedEscaped = true;
    }

    /**
     * Whether this is escaped by an inner scope.
     * Notice that not all scope creators record this information.
     */
    boolean isMarkedEscaped() {
      return markedEscaped;
    }

    /**
     * Record that this is assigned exactly once..
     *
     * In other words, it's assigned in an inner scope so that it's much harder
     * to make assertions about its value at a given point.
     */
    void markAssignedExactlyOnce() {
      markedAssignedExactlyOnce = true;
    }

    /**
     * Whether this is assigned exactly once.
     * Notice that not all scope creators record this information.
     */
    boolean isMarkedAssignedExactlyOnce() {
      return markedAssignedExactlyOnce;
    }
  }

  /**
   * A special subclass of Var used to distinguish "arguments" in the current
   * scope.
   */
  // TODO(johnlenz): Include this the list of Vars for the scope.
  public static class Arguments extends Var {
    Arguments(Scope scope) {
      super(
        false, // no inferred
        "arguments", // always arguments
        null,  // no declaration node
        // TODO(johnlenz): provide the type of "Arguments".
        null,  // no type info
        scope,
        -1,    // no variable index
        null   // input
        );
    }

    @Override public boolean equals(Object other) {
      if (!(other instanceof Arguments)) {
        return false;
      }

      Arguments otherVar = (Arguments) other;
      return otherVar.scope.getRootNode() == scope.getRootNode();
    }

    @Override public int hashCode() {
      return System.identityHashCode(this);
    }
  }

  /**
   * Creates a Scope given the parent Scope and the root node of the scope.
   * @param parent  The parent Scope. Cannot be null.
   * @param rootNode  Typically the FUNCTION node.
   */
  Scope(Scope parent, Node rootNode) {
    int PROBE_START_LINE_387 = 387;
	com.google.javascript.jscomp.Scope p_parent_2809_line_387 = parent;
	int PROBE_END_LINE_387 = 387;
	Preconditions.checkNotNull(p_parent_2809_line_387);
    int PROBE_START_LINE_388 = 388;
	com.google.javascript.rhino.Node p_root_node_2810_line_388 = rootNode;
	com.google.javascript.jscomp.Scope p_parent_2809_line_388 = parent;
	com.google.javascript.rhino.Node q_root_node_86_line_388 = p_parent_2809_line_388.rootNode;
	boolean scope_1_expr43_line_388 = p_root_node_2810_line_388 != q_root_node_86_line_388;
	int PROBE_END_LINE_388 = 388;
	Preconditions.checkArgument(scope_1_expr43_line_388);

    int PROBE_START_LINE_390 = 390;
	com.google.javascript.jscomp.Scope p_parent_2809_line_390 = parent;
	int PROBE_END_LINE_390 = 390;
	this.parent = p_parent_2809_line_390;
    int PROBE_START_LINE_391 = 391;
	com.google.javascript.rhino.Node p_root_node_2810_line_391 = rootNode;
	int PROBE_END_LINE_391 = 391;
	this.rootNode = p_root_node_2810_line_391;
    this.isBottom = false;
    int PROBE_START_LINE_393 = 393;
	com.google.javascript.jscomp.Scope p_parent_2809_line_393 = parent;
	int q_depth_87_line_393 = p_parent_2809_line_393.depth;
	int scope_1_expr55_line_393 = q_depth_87_line_393 + 1;
	int PROBE_END_LINE_393 = 393;
	this.depth = scope_1_expr55_line_393;
  }

  /**
   * Creates a empty Scope (bottom of the lattice).
   * @param rootNode Typically a FUNCTION node or the global BLOCK node.
   * @param isBottom Whether this is the bottom of a lattice. Otherwise,
   *     it must be a global scope.
   */
  private Scope(Node rootNode, boolean isBottom) {
    this.parent = null;
    int PROBE_START_LINE_404 = 404;
	com.google.javascript.rhino.Node p_root_node_2815_line_404 = rootNode;
	int PROBE_END_LINE_404 = 404;
	this.rootNode = p_root_node_2815_line_404;
    int PROBE_START_LINE_405 = 405;
	boolean p_is_bottom_2816_line_405 = isBottom;
	int PROBE_END_LINE_405 = 405;
	this.isBottom = p_is_bottom_2816_line_405;
    this.depth = 0;
  }

  static Scope createGlobalScope(Node rootNode) {
    int PROBE_START_LINE_410 = 410;
	com.google.javascript.rhino.Node p_root_node_2817_line_410 = rootNode;
	int PROBE_END_LINE_410 = 410;
	return new Scope(p_root_node_2817_line_410, false);
  }

  static Scope createLatticeBottom(Node rootNode) {
    int PROBE_START_LINE_414 = 414;
	com.google.javascript.rhino.Node p_root_node_2818_line_414 = rootNode;
	int PROBE_END_LINE_414 = 414;
	return new Scope(p_root_node_2818_line_414, true);
  }

  /** The depth of the scope. The global scope has depth 0. */
  int getDepth() {
    return depth;
  }

  /** Whether this is the bottom of the lattice. */
  boolean isBottom() {
    return isBottom;
  }

  /**
   * Gets the container node of the scope. This is typically the FUNCTION
   * node or the global BLOCK/SCRIPT node.
   */
  @Override
  public Node getRootNode() {
    int PROBE_START_LINE_433 = 433;
	com.google.javascript.rhino.Node f_root_node_2812_line_433 = rootNode;
	int PROBE_END_LINE_433 = 433;
	return f_root_node_2812_line_433;
  }

  public Scope getParent() {
    int PROBE_START_LINE_437 = 437;
	com.google.javascript.jscomp.Scope f_parent_2811_line_437 = parent;
	int PROBE_END_LINE_437 = 437;
	return f_parent_2811_line_437;
  }

  Scope getGlobalScope() {
    Scope result = this;
    while (result.getParent() != null) {
      result = result.getParent();
    }
    return result;
  }

  @Override
  public StaticScope<JSType> getParentScope() {
    int PROBE_START_LINE_450 = 450;
	com.google.javascript.jscomp.Scope f_parent_2811_line_450 = parent;
	int PROBE_END_LINE_450 = 450;
	return f_parent_2811_line_450;
  }

  /**
   * Gets the type of {@code this} in the current scope.
   */
  @Override
  public JSType getTypeOfThis() {
    int PROBE_START_LINE_458 = 460;
	boolean scope_1_expr71_line_458 = isGlobal();
	int PROBE_END_LINE_458 = 460;
	if (scope_1_expr71_line_458) {
      int PROBE_START_LINE_459 = 459;
		com.google.javascript.rhino.Node f_root_node_2812_line_459 = rootNode;
		com.google.javascript.rhino.jstype.JSType scope_1_expr73_line_459 = f_root_node_2812_line_459.getJSType();
		com.google.javascript.rhino.jstype.ObjectType scope_1_expr72_line_459 = ObjectType
				.cast(scope_1_expr73_line_459);
		int PROBE_END_LINE_459 = 459;
	return scope_1_expr72_line_459;
    }

    Preconditions.checkState(rootNode.isFunction());
    JSType nodeType = rootNode.getJSType();
    if (nodeType != null && nodeType.isFunctionType()) {
      return nodeType.toMaybeFunctionType().getTypeOfThis();
    } else {
      return parent.getTypeOfThis();
    }
  }

  /**
   * Declares a variable whose type is inferred.
   *
   * @param name name of the variable
   * @param nameNode the NAME node declaring the variable
   * @param type the variable's type
   * @param input the input in which this variable is defined.
   */
  Var declare(String name, Node nameNode, JSType type, CompilerInput input) {
    int PROBE_START_LINE_480 = 480;
	String p_name_2819_line_480 = name;
	com.google.javascript.rhino.Node p_name_node_2820_line_480 = nameNode;
	com.google.javascript.rhino.jstype.JSType p_type_2821_line_480 = type;
	com.google.javascript.jscomp.CompilerInput p_input_2822_line_480 = input;
	com.google.javascript.jscomp.Scope.Var scope_1_expr74_line_480 = declare(p_name_2819_line_480,
			p_name_node_2820_line_480, p_type_2821_line_480, p_input_2822_line_480, true);
	int PROBE_END_LINE_480 = 480;
	return scope_1_expr74_line_480;
  }

  /**
   * Declares a variable.
   *
   * @param name name of the variable
   * @param nameNode the NAME node declaring the variable
   * @param type the variable's type
   * @param input the input in which this variable is defined.
   * @param inferred Whether this variable's type is inferred (as opposed
   *     to declared).
   */
  Var declare(String name, Node nameNode,
      JSType type, CompilerInput input, boolean inferred) {
    int PROBE_START_LINE_495 = 495;
		String p_name_2823_line_495 = name;
		boolean scope_1_expr77_line_495 = p_name_2823_line_495 != null;
		boolean scope_1_expr78_line_495 = true;
		if (scope_1_expr77_line_495) {
			String p_name_2823_line_495_v1 = name;
			int scope_1_expr79_line_495 = p_name_2823_line_495_v1.length();
			scope_1_expr78_line_495 = scope_1_expr79_line_495 > 0;
		}
		boolean scope_1_expr76_line_495 = scope_1_expr77_line_495 && scope_1_expr78_line_495;
		int PROBE_END_LINE_495 = 495;
	Preconditions.checkState(scope_1_expr76_line_495);

    int PROBE_START_LINE_498 = 498;
	Map<String, com.google.javascript.jscomp.Scope.Var> f_vars_2785_line_498 = vars;
	String p_name_2823_line_498 = name;
	com.google.javascript.jscomp.Scope.Var scope_1_expr82_line_498 = f_vars_2785_line_498.get(p_name_2823_line_498);
	boolean scope_1_expr81_line_498 = scope_1_expr82_line_498 == null;
	int PROBE_END_LINE_498 = 498;
	// Make sure that it's declared only once
    Preconditions.checkState(scope_1_expr81_line_498);

    int PROBE_START_LINE_500 = 500;
	boolean p_inferred_2827_line_500 = inferred;
	String p_name_2823_line_500 = name;
	com.google.javascript.rhino.Node p_name_node_2824_line_500 = nameNode;
	com.google.javascript.rhino.jstype.JSType p_type_2825_line_500 = type;
	Map<String, com.google.javascript.jscomp.Scope.Var> f_vars_2785_line_500 = vars;
	int scope_1_expr85_line_500 = f_vars_2785_line_500.size();
	com.google.javascript.jscomp.CompilerInput p_input_2826_line_500 = input;
	int PROBE_END_LINE_500 = 500;
	Var var = new Var(p_inferred_2827_line_500, p_name_2823_line_500, p_name_node_2824_line_500, p_type_2825_line_500, this, scope_1_expr85_line_500, p_input_2826_line_500);
    int PROBE_START_LINE_501 = 501;
	Map<String, com.google.javascript.jscomp.Scope.Var> f_vars_2785_line_501 = vars;
	String p_name_2823_line_501 = name;
	com.google.javascript.jscomp.Scope.Var v_var_2828_line_501 = var;
	int PROBE_END_LINE_501 = 501;
	f_vars_2785_line_501.put(p_name_2823_line_501, v_var_2828_line_501);
    int PROBE_START_LINE_502 = 502;
	com.google.javascript.jscomp.Scope.Var v_var_2828_line_502 = var;
	int PROBE_END_LINE_502 = 502;
	return v_var_2828_line_502;
  }

  /**
   * Undeclares a variable, to be used when the compiler optimizes out
   * a variable and removes it from the scope.
   */
  void undeclare(Var var) {
    int PROBE_START_LINE_510 = 510;
	com.google.javascript.jscomp.Scope.Var p_var_2829_line_510 = var;
	com.google.javascript.jscomp.Scope q_scope_88_line_510 = p_var_2829_line_510.scope;
	boolean scope_1_expr88_line_510 = q_scope_88_line_510 == this;
	int PROBE_END_LINE_510 = 510;
	Preconditions.checkState(scope_1_expr88_line_510);
    int PROBE_START_LINE_511 = 511;
	Map<String, com.google.javascript.jscomp.Scope.Var> f_vars_2785_line_511 = vars;
	com.google.javascript.jscomp.Scope.Var p_var_2829_line_511 = var;
	String q_name_89_line_511 = p_var_2829_line_511.name;
	com.google.javascript.jscomp.Scope.Var scope_1_expr92_line_511 = f_vars_2785_line_511.get(q_name_89_line_511);
	com.google.javascript.jscomp.Scope.Var p_var_2829_line_511_v1 = var;
	boolean scope_1_expr91_line_511 = scope_1_expr92_line_511 == p_var_2829_line_511_v1;
	int PROBE_END_LINE_511 = 511;
	Preconditions.checkState(scope_1_expr91_line_511);
    int PROBE_START_LINE_512 = 512;
	Map<String, com.google.javascript.jscomp.Scope.Var> f_vars_2785_line_512 = vars;
	com.google.javascript.jscomp.Scope.Var p_var_2829_line_512 = var;
	String q_name_90_line_512 = p_var_2829_line_512.name;
	int PROBE_END_LINE_512 = 512;
	f_vars_2785_line_512.remove(q_name_90_line_512);
  }

  @Override
  public Var getSlot(String name) {
    int PROBE_START_LINE_517 = 517;
	String p_name_2830_line_517 = name;
	com.google.javascript.jscomp.Scope.Var scope_1_expr94_line_517 = getVar(p_name_2830_line_517);
	int PROBE_END_LINE_517 = 517;
	return scope_1_expr94_line_517;
  }

  @Override
  public Var getOwnSlot(String name) {
    return vars.get(name);
  }

  /**
   * Returns the variable, may be null
   */
  public Var getVar(String name) {
    int PROBE_START_LINE_529 = 529;
	Map<String, com.google.javascript.jscomp.Scope.Var> f_vars_2785_line_529 = vars;
	String p_name_2832_line_529 = name;
	Var scope_1_expr95_line_529 = f_vars_2785_line_529.get(p_name_2832_line_529);
	int PROBE_END_LINE_529 = 529;
	Var var = scope_1_expr95_line_529;
    int PROBE_START_LINE_530 = 536;
	com.google.javascript.jscomp.Scope.Var v_var_2833_line_530 = var;
	boolean scope_1_expr96_line_530 = v_var_2833_line_530 != null;
	int PROBE_END_LINE_530 = 536;
	if (scope_1_expr96_line_530) {
      int PROBE_START_LINE_531 = 531;
		com.google.javascript.jscomp.Scope.Var v_var_2833_line_531 = var;
		int PROBE_END_LINE_531 = 531;
	return v_var_2833_line_531;
    } else {
		int PROBE_START_LINE_532 = 536;
		com.google.javascript.jscomp.Scope f_parent_2811_line_532 = parent;
		boolean scope_1_expr97_line_532 = f_parent_2811_line_532 != null;
		int PROBE_END_LINE_532 = 536;
		if (scope_1_expr97_line_532) {
			int PROBE_START_LINE_533 = 533;
			com.google.javascript.jscomp.Scope f_parent_2811_line_533 = parent;
			String p_name_2832_line_533 = name;
			com.google.javascript.jscomp.Scope.Var scope_1_expr98_line_533 = f_parent_2811_line_533
					.getVar(p_name_2832_line_533);
			int PROBE_END_LINE_533 = 533;
			return scope_1_expr98_line_533;
		} else {
			return null;
		}
	}
  }

  /**
   * Get a unique VAR object to represents "arguments" within this scope
   */
  public Var getArgumentsVar() {
    if (arguments == null) {
      arguments = new Arguments(this);
    }
    return arguments;
  }

  /**
   * Returns true if a variable is declared.
   */
  public boolean isDeclared(String name, boolean recurse) {
    Scope scope = this;
    int PROBE_START_LINE_554 = 556;
	com.google.javascript.jscomp.Scope v_scope_2836_line_554 = scope;
	Map<String, com.google.javascript.jscomp.Scope.Var> q_vars_90_line_554 = v_scope_2836_line_554.vars;
	String p_name_2834_line_554 = name;
	boolean scope_1_expr100_line_554 = q_vars_90_line_554.containsKey(p_name_2834_line_554);
	int PROBE_END_LINE_554 = 556;
	if (scope_1_expr100_line_554) {
      return true;
    }
    int PROBE_START_LINE_557 = 559;
	com.google.javascript.jscomp.Scope v_scope_2836_line_557 = scope;
	com.google.javascript.jscomp.Scope q_parent_91_line_557 = v_scope_2836_line_557.parent;
	boolean scope_1_expr102_line_557 = q_parent_91_line_557 != null;
	boolean p_recurse_2835_line_557 = true;
	if (scope_1_expr102_line_557) {
		p_recurse_2835_line_557 = recurse;
	}
	boolean scope_1_expr101_line_557 = scope_1_expr102_line_557 && p_recurse_2835_line_557;
	int PROBE_END_LINE_557 = 559;
	if (scope_1_expr101_line_557) {
      return scope.parent.isDeclared(name, recurse);
    }
    return false;
  }

  /**
   * Return an iterator over all of the variables declared in this scope.
   */
  public Iterator<Var> getVars() {
    int PROBE_START_LINE_567 = 567;
	Map<String, com.google.javascript.jscomp.Scope.Var> f_vars_2785_line_567 = vars;
	Collection<com.google.javascript.jscomp.Scope.Var> scope_1_expr104_line_567 = f_vars_2785_line_567.values();
	Iterator<com.google.javascript.jscomp.Scope.Var> scope_1_expr103_line_567 = scope_1_expr104_line_567.iterator();
	int PROBE_END_LINE_567 = 567;
	return scope_1_expr103_line_567;
  }

  /**
   * Return an iterable over all of the variables declared in this scope.
   */
  Iterable<Var> getVarIterable() {
    return vars.values();
  }

  @Override
  public Iterable<Var> getReferences(Var var) {
    return ImmutableList.of(var);
  }

  @Override
  public StaticScope<JSType> getScope(Var var) {
    return var.scope;
  }

  @Override
  public Iterable<Var> getAllSymbols() {
    return Collections.unmodifiableCollection(vars.values());
  }

  /**
   * Returns number of variables in this scope
   */
  public int getVarCount() {
    return vars.size();
  }

  /**
   * Returns whether this is the global scope.
   */
  public boolean isGlobal() {
    int PROBE_START_LINE_603 = 603;
	com.google.javascript.jscomp.Scope f_parent_2811_line_603 = parent;
	boolean scope_1_expr105_line_603 = f_parent_2811_line_603 == null;
	int PROBE_END_LINE_603 = 603;
	return scope_1_expr105_line_603;
  }

  /**
   * Returns whether this is a local scope (i.e. not the global scope).
   */
  public boolean isLocal() {
    int PROBE_START_LINE_610 = 610;
	com.google.javascript.jscomp.Scope f_parent_2811_line_610 = parent;
	boolean scope_1_expr106_line_610 = f_parent_2811_line_610 != null;
	int PROBE_END_LINE_610 = 610;
	return scope_1_expr106_line_610;
  }

  /**
   * Gets all variables declared with "var" but without declared types attached.
   */
  public Iterator<Var> getDeclarativelyUnboundVarsWithoutTypes() {
    int PROBE_START_LINE_617 = 618;
	UnmodifiableIterator<com.google.javascript.jscomp.Scope.Var> scope_1_expr107_line_617 = Iterators.filter(getVars(),
			DECLARATIVELY_UNBOUND_VARS_WITHOUT_TYPES);
	int PROBE_END_LINE_617 = 618;
	return scope_1_expr107_line_617;
  }

  static interface TypeResolver {
    void resolveTypes();
  }

  private TypeResolver typeResolver;

  /** Resolve all type references. Only used on typed scopes. */
  void resolveTypes() {
    int PROBE_START_LINE_629 = 632;
	com.google.javascript.jscomp.Scope.TypeResolver f_type_resolver_2839_line_629 = typeResolver;
	boolean scope_1_expr109_line_629 = f_type_resolver_2839_line_629 != null;
	int PROBE_END_LINE_629 = 632;
	if (scope_1_expr109_line_629) {
      int PROBE_START_LINE_630 = 630;
		com.google.javascript.jscomp.Scope.TypeResolver f_type_resolver_2839_line_630 = typeResolver;
		int PROBE_END_LINE_630 = 630;
	f_type_resolver_2839_line_630.resolveTypes();
      typeResolver = null;
    }
  }

  void setTypeResolver(TypeResolver resolver) {
    int PROBE_START_LINE_636 = 636;
	com.google.javascript.jscomp.Scope.TypeResolver p_resolver_2840_line_636 = resolver;
	int PROBE_END_LINE_636 = 636;
	this.typeResolver = p_resolver_2840_line_636;
  }
}
