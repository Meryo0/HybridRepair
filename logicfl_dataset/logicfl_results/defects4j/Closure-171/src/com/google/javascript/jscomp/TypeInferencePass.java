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

import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.javascript.jscomp.CodingConvention.AssertionFunctionSpec;
import com.google.javascript.jscomp.NodeTraversal.AbstractScopedCallback;
import com.google.javascript.jscomp.type.ReverseAbstractInterpreter;
import com.google.javascript.rhino.Node;

import java.util.Map;
import java.util.Collection;
import java.util.HashMap;
import com.google.javascript.rhino.jstype.JSTypeRegistry;

/**
 * A compiler pass to run the type inference analysis.
 *
 */
class TypeInferencePass implements CompilerPass {

  int PROBE_START_LINE_34 = 36;

	static final com.google.javascript.jscomp.DiagnosticType type_inference_pass_1_expr1_line_34 = DiagnosticType
			.warning("JSC_INTERNAL_ERROR_DATAFLOW", "non-monotonic data-flow analysis");

	int PROBE_END_LINE_34 = 36;

static final DiagnosticType DATAFLOW_ERROR = type_inference_pass_1_expr1_line_34;

  private final AbstractCompiler compiler;
  private final ReverseAbstractInterpreter reverseInterpreter;
  private final Scope topScope;
  private final MemoizedScopeCreator scopeCreator;
  private final Map<String, AssertionFunctionSpec> assertionFunctionsMap;

  TypeInferencePass(AbstractCompiler compiler,
      ReverseAbstractInterpreter reverseInterpreter,
      Scope topScope, MemoizedScopeCreator scopeCreator) {
    int PROBE_START_LINE_47 = 47;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_3418_line_47 = compiler;
		int PROBE_END_LINE_47 = 47;
	this.compiler = p_compiler_3418_line_47;
    int PROBE_START_LINE_48 = 48;
	com.google.javascript.jscomp.type.ReverseAbstractInterpreter p_reverse_interpreter_3419_line_48 = reverseInterpreter;
	int PROBE_END_LINE_48 = 48;
	this.reverseInterpreter = p_reverse_interpreter_3419_line_48;
    int PROBE_START_LINE_49 = 49;
	com.google.javascript.jscomp.Scope p_top_scope_3420_line_49 = topScope;
	int PROBE_END_LINE_49 = 49;
	this.topScope = p_top_scope_3420_line_49;
    int PROBE_START_LINE_50 = 50;
	com.google.javascript.jscomp.MemoizedScopeCreator p_scope_creator_3421_line_50 = scopeCreator;
	int PROBE_END_LINE_50 = 50;
	this.scopeCreator = p_scope_creator_3421_line_50;

    int PROBE_START_LINE_52 = 52;
	HashMap<String, com.google.javascript.jscomp.CodingConvention.AssertionFunctionSpec> type_inference_pass_1_expr15_line_52 = Maps
			.newHashMap();
	int PROBE_END_LINE_52 = 52;
	assertionFunctionsMap = type_inference_pass_1_expr15_line_52;
    int PROBE_START_LINE_53 = 57;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_3418_line_54 = compiler;
	com.google.javascript.jscomp.CodingConvention type_inference_pass_1_expr17_line_54 = p_compiler_3418_line_54
			.getCodingConvention();
	Collection<com.google.javascript.jscomp.CodingConvention.AssertionFunctionSpec> type_inference_pass_1_expr16_line_54 = type_inference_pass_1_expr17_line_54
			.getAssertionFunctions();
	int PROBE_END_LINE_53 = 57;
	for (AssertionFunctionSpec assertionFucntion :
        type_inference_pass_1_expr16_line_54) {
      int PROBE_START_LINE_55 = 56;
			Map<String, com.google.javascript.jscomp.CodingConvention.AssertionFunctionSpec> f_assertion_functions_map_3426_line_55 = assertionFunctionsMap;
			com.google.javascript.jscomp.CodingConvention.AssertionFunctionSpec v_assertion_fucntion_3427_line_55 = assertionFucntion;
			String type_inference_pass_1_expr19_line_55 = v_assertion_fucntion_3427_line_55.getFunctionName();
			int PROBE_END_LINE_55 = 56;
	f_assertion_functions_map_3426_line_55.put(type_inference_pass_1_expr19_line_55,
          assertionFucntion);
    }
  }

  /**
   * Main entry point for type inference when running over the whole tree.
   *
   * @param externsRoot The root of the externs parse tree.
   * @param jsRoot The root of the input parse tree to be checked.
   */
  @Override
  public void process(Node externsRoot, Node jsRoot) {
    int PROBE_START_LINE_68 = 68;
	com.google.javascript.rhino.Node p_js_root_3429_line_68 = jsRoot;
	Node type_inference_pass_1_expr20_line_68 = p_js_root_3429_line_68.getParent();
	int PROBE_END_LINE_68 = 68;
	Node externsAndJs = type_inference_pass_1_expr20_line_68;
    int PROBE_START_LINE_69 = 69;
	com.google.javascript.rhino.Node v_externs_and_js_3430_line_69 = externsAndJs;
	boolean type_inference_pass_1_expr22_line_69 = v_externs_and_js_3430_line_69 != null;
	int PROBE_END_LINE_69 = 69;
	Preconditions.checkState(type_inference_pass_1_expr22_line_69);
    Preconditions.checkState(
        externsRoot == null || externsAndJs.hasChild(externsRoot));

    int PROBE_START_LINE_73 = 73;
	com.google.javascript.rhino.Node v_externs_and_js_3430_line_73 = externsAndJs;
	int PROBE_END_LINE_73 = 73;
	inferAllScopes(v_externs_and_js_3430_line_73);
  }

  /** Entry point for type inference when running over part of the tree. */
  void inferAllScopes(Node node) {
    int PROBE_START_LINE_101 = 103;
	com.google.javascript.jscomp.NodeTraversal type_inference_pass_1_expr27_line_101 = (new NodeTraversal(compiler,
			new FirstScopeBuildingCallback(), scopeCreator));
	int PROBE_END_LINE_101 = 103;
	// Type analysis happens in two major phases.
    // 1) Finding all the symbols.
    // 2) Propagating all the inferred types.
    //
    // The order of this analysis is non-obvious. In a complete inference
    // system, we may need to backtrack arbitrarily far. But the compile-time
    // costs would be unacceptable.
    //
    // We do one pass where we do typed scope creation for all scopes
    // in pre-order.
    //
    // Then we do a second pass where we do all type inference
    // (type propagation) in pre-order.
    //
    // We use a memoized scope creator so that we never create a scope
    // more than once.
    //
    // This will allow us to handle cases like:
    // var ns = {};
    // (function() { /** JSDoc */ ns.method = function() {}; })();
    // ns.method();
    // In this code, we need to build the symbol table for the inner scope in
    // order to propagate the type of ns.method in the outer scope.
    type_inference_pass_1_expr27_line_101
        .traverseWithScope(node, topScope);

    int PROBE_START_LINE_105 = 107;
	com.google.javascript.jscomp.MemoizedScopeCreator f_scope_creator_3425_line_105 = scopeCreator;
	Collection<com.google.javascript.jscomp.Scope> type_inference_pass_1_expr30_line_105 = f_scope_creator_3425_line_105
			.getAllMemoizedScopes();
	int PROBE_END_LINE_105 = 107;
	for (Scope s : type_inference_pass_1_expr30_line_105) {
      int PROBE_START_LINE_106 = 106;
		com.google.javascript.jscomp.Scope v_s_3432_line_106 = s;
		int PROBE_END_LINE_106 = 106;
	v_s_3432_line_106.resolveTypes();
    }

    int PROBE_START_LINE_109 = 111;
	com.google.javascript.jscomp.NodeTraversal type_inference_pass_1_expr33_line_109 = (new NodeTraversal(compiler,
			new SecondScopeBuildingCallback(), scopeCreator));
	int PROBE_END_LINE_109 = 111;
	type_inference_pass_1_expr33_line_109
        .traverseWithScope(node, topScope);
  }

  void inferScope(Node n, Scope scope) {
    TypeInference typeInference =
        new TypeInference(
            compiler, computeCfg(n), reverseInterpreter, scope,
            assertionFunctionsMap);
    try {
      int PROBE_START_LINE_120 = 120;
		com.google.javascript.jscomp.TypeInference v_type_inference_3435_line_120 = typeInference;
		int PROBE_END_LINE_120 = 120;
	v_type_inference_3435_line_120.analyze();

      int PROBE_START_LINE_123 = 123;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_3422_line_123 = compiler;
	com.google.javascript.rhino.jstype.JSTypeRegistry type_inference_pass_1_expr39_line_123 = f_compiler_3422_line_123
			.getTypeRegistry();
	com.google.javascript.jscomp.Scope p_scope_3434_line_123 = scope;
	int PROBE_END_LINE_123 = 123;
	// Resolve any new type names found during the inference.
      type_inference_pass_1_expr39_line_123.resolveTypesInScope(p_scope_3434_line_123);

    } catch (DataFlowAnalysis.MaxIterationsExceededException e) {
      compiler.report(JSError.make(n.getSourceFileName(), n, DATAFLOW_ERROR));
    }
  }

  private class FirstScopeBuildingCallback extends AbstractScopedCallback {
    @Override
    public void enterScope(NodeTraversal t) {
      int PROBE_START_LINE_133 = 133;
		com.google.javascript.jscomp.NodeTraversal p_t_3436_line_133 = t;
		int PROBE_END_LINE_133 = 133;
	p_t_3436_line_133.getScope();
    }

    @Override
    public void visit(NodeTraversal t, Node n, Node parent) {
      // Do nothing
    }
  }

  private class SecondScopeBuildingCallback extends AbstractScopedCallback {
    @Override
    public void enterScope(NodeTraversal t) {
      int PROBE_START_LINE_148 = 148;
		com.google.javascript.jscomp.NodeTraversal p_t_3440_line_148 = t;
		com.google.javascript.rhino.Node type_inference_pass_1_expr42_line_148 = p_t_3440_line_148.getCurrentNode();
		com.google.javascript.jscomp.NodeTraversal p_t_3440_line_148_v1 = t;
		com.google.javascript.jscomp.Scope type_inference_pass_1_expr43_line_148 = p_t_3440_line_148_v1.getScope();
		int PROBE_END_LINE_148 = 148;
	// Only infer the entry root, rather than the scope root.
      // This ensures that incremental compilation only touches the root
      // that's been swapped out.
      inferScope(type_inference_pass_1_expr42_line_148, type_inference_pass_1_expr43_line_148);
    }

    @Override
    public void visit(NodeTraversal t, Node n, Node parent) {
      // Do nothing
    }
  }

  private ControlFlowGraph<Node> computeCfg(Node n) {
    int PROBE_START_LINE_158 = 158;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_3422_line_158 = compiler;
	int PROBE_END_LINE_158 = 158;
	ControlFlowAnalysis cfa = new ControlFlowAnalysis(f_compiler_3422_line_158, false, false);
    int PROBE_START_LINE_159 = 159;
	com.google.javascript.jscomp.ControlFlowAnalysis v_cfa_3445_line_159 = cfa;
	com.google.javascript.rhino.Node p_n_3444_line_159 = n;
	int PROBE_END_LINE_159 = 159;
	v_cfa_3445_line_159.process(null, p_n_3444_line_159);
    int PROBE_START_LINE_160 = 160;
	com.google.javascript.jscomp.ControlFlowAnalysis v_cfa_3445_line_160 = cfa;
	ControlFlowGraph<com.google.javascript.rhino.Node> type_inference_pass_1_expr46_line_160 = v_cfa_3445_line_160
			.getCfg();
	int PROBE_END_LINE_160 = 160;
	return type_inference_pass_1_expr46_line_160;
  }
}
