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

import static com.google.javascript.rhino.jstype.JSTypeNative.ARRAY_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.BOOLEAN_OBJECT_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.BOOLEAN_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.CHECKED_UNKNOWN_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.NULL_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.NUMBER_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.NUMBER_VALUE_OR_OBJECT_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.STRING_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.UNKNOWN_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.VOID_TYPE;

import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.javascript.jscomp.CodingConvention.AssertionFunctionSpec;
import com.google.javascript.jscomp.ControlFlowGraph.Branch;
import com.google.javascript.jscomp.Scope.Var;
import com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge;
import com.google.javascript.jscomp.type.FlowScope;
import com.google.javascript.jscomp.type.ReverseAbstractInterpreter;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;
import com.google.javascript.rhino.jstype.BooleanLiteralSet;
import com.google.javascript.rhino.jstype.FunctionType;
import com.google.javascript.rhino.jstype.JSType;
import com.google.javascript.rhino.jstype.JSTypeNative;
import com.google.javascript.rhino.jstype.JSTypeRegistry;
import com.google.javascript.rhino.jstype.ModificationVisitor;
import com.google.javascript.rhino.jstype.ObjectType;
import com.google.javascript.rhino.jstype.StaticSlot;
import com.google.javascript.rhino.jstype.TemplateType;
import com.google.javascript.rhino.jstype.TemplateTypeMap;
import com.google.javascript.rhino.jstype.TemplateTypeMapReplacer;
import com.google.javascript.rhino.jstype.UnionType;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Type inference within a script node or a function body, using the data-flow
 * analysis framework.
 *
 */
class TypeInference
    extends DataFlowAnalysis.BranchedForwardDataFlowAnalysis<Node, FlowScope> {

  // TODO(johnlenz): We no longer make this check, but we should.
  static final DiagnosticType FUNCTION_LITERAL_UNDEFINED_THIS =
    DiagnosticType.warning(
        "JSC_FUNCTION_LITERAL_UNDEFINED_THIS",
        "Function literal argument refers to undefined this argument");

  private final AbstractCompiler compiler;
  private final JSTypeRegistry registry;
  private final ReverseAbstractInterpreter reverseInterpreter;
  private final Scope syntacticScope;
  private final FlowScope functionScope;
  private final FlowScope bottomScope;
  private final Map<String, AssertionFunctionSpec> assertionFunctionsMap;

  // For convenience
  private final ObjectType unknownType;

  TypeInference(AbstractCompiler compiler, ControlFlowGraph<Node> cfg,
                ReverseAbstractInterpreter reverseInterpreter,
                Scope functionScope,
                Map<String, AssertionFunctionSpec> assertionFunctionsMap) {
    super(cfg, new LinkedFlowScope.FlowScopeJoinOp());
    int PROBE_START_LINE_90 = 90;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_3227_line_90 = compiler;
	int PROBE_END_LINE_90 = 90;
	this.compiler = p_compiler_3227_line_90;
    int PROBE_START_LINE_91 = 91;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_3227_line_91 = compiler;
	com.google.javascript.rhino.jstype.JSTypeRegistry type_inference_1_expr9_line_91 = p_compiler_3227_line_91
			.getTypeRegistry();
	int PROBE_END_LINE_91 = 91;
	this.registry = type_inference_1_expr9_line_91;
    int PROBE_START_LINE_92 = 92;
	com.google.javascript.jscomp.type.ReverseAbstractInterpreter p_reverse_interpreter_3229_line_92 = reverseInterpreter;
	int PROBE_END_LINE_92 = 92;
	this.reverseInterpreter = p_reverse_interpreter_3229_line_92;
    int PROBE_START_LINE_93 = 93;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_3233_line_93 = registry;
	com.google.javascript.rhino.jstype.JSTypeNative f_unknown_type_3236_line_93 = UNKNOWN_TYPE;
	com.google.javascript.rhino.jstype.ObjectType type_inference_1_expr16_line_93 = f_registry_3233_line_93
			.getNativeObjectType(f_unknown_type_3236_line_93);
	int PROBE_END_LINE_93 = 93;
	this.unknownType = type_inference_1_expr16_line_93;

    int PROBE_START_LINE_95 = 95;
	com.google.javascript.jscomp.Scope p_function_scope_3230_line_95 = functionScope;
	int PROBE_END_LINE_95 = 95;
	this.syntacticScope = p_function_scope_3230_line_95;
    int PROBE_START_LINE_96 = 96;
	com.google.javascript.jscomp.Scope p_function_scope_3230_line_96 = functionScope;
	int PROBE_END_LINE_96 = 96;
	inferArguments(p_function_scope_3230_line_96);

    int PROBE_START_LINE_98 = 98;
	com.google.javascript.jscomp.Scope p_function_scope_3230_line_98 = functionScope;
	com.google.javascript.jscomp.LinkedFlowScope type_inference_1_expr24_line_98 = LinkedFlowScope
			.createEntryLattice(p_function_scope_3230_line_98);
	int PROBE_END_LINE_98 = 98;
	this.functionScope = type_inference_1_expr24_line_98;
    int PROBE_START_LINE_99 = 99;
	Map<String, com.google.javascript.jscomp.CodingConvention.AssertionFunctionSpec> p_assertion_functions_map_3231_line_99 = assertionFunctionsMap;
	int PROBE_END_LINE_99 = 99;
	this.assertionFunctionsMap = p_assertion_functions_map_3231_line_99;

    // For each local variable declared with the VAR keyword, the entry
    // type is VOID.
    Iterator<Var> varIt =
        functionScope.getDeclarativelyUnboundVarsWithoutTypes();
    while (true) {
      int PROBE_START_LINE_105 = 105;
		Iterator<com.google.javascript.jscomp.Scope.Var> v_var_it_3240_line_105 = varIt;
		boolean type_inference_1_expr30_line_105 = v_var_it_3240_line_105.hasNext();
		if (!(type_inference_1_expr30_line_105)) {
			break;
		}
		int PROBE_END_LINE_105 = 105;
	Var var = varIt.next();
      if (isUnflowable(var)) {
        continue;
      }

      this.functionScope.inferSlotType(
          var.getName(), getNativeType(VOID_TYPE));
    }

    int PROBE_START_LINE_115 = 116;
	com.google.javascript.jscomp.LinkedFlowScope type_inference_1_expr33_line_115 = LinkedFlowScope
			.createEntryLattice(Scope.createLatticeBottom(functionScope.getRootNode()));
	int PROBE_END_LINE_115 = 116;
	this.bottomScope = type_inference_1_expr33_line_115;
  }

  /**
   * Infers all of a function's arguments if their types aren't declared.
   */
  private void inferArguments(Scope functionScope) {
    int PROBE_START_LINE_123 = 123;
	com.google.javascript.jscomp.Scope p_function_scope_3242_line_123 = functionScope;
	Node type_inference_1_expr36_line_123 = p_function_scope_3242_line_123.getRootNode();
	int PROBE_END_LINE_123 = 123;
	Node functionNode = type_inference_1_expr36_line_123;
    int PROBE_START_LINE_124 = 124;
	com.google.javascript.rhino.Node v_function_node_3243_line_124 = functionNode;
	com.google.javascript.rhino.Node type_inference_1_expr38_line_124 = v_function_node_3243_line_124.getFirstChild();
	Node type_inference_1_expr37_line_124 = type_inference_1_expr38_line_124.getNext();
	int PROBE_END_LINE_124 = 124;
	Node astParameters = type_inference_1_expr37_line_124;
    Node iifeArgumentNode = null;

    int PROBE_START_LINE_127 = 129;
	com.google.javascript.rhino.Node v_function_node_3243_line_127 = functionNode;
	boolean type_inference_1_expr39_line_127 = NodeUtil.isCallOrNewTarget(v_function_node_3243_line_127);
	int PROBE_END_LINE_127 = 129;
	if (type_inference_1_expr39_line_127) {
      iifeArgumentNode = functionNode.getNext();
    }

    FunctionType functionType =
        JSType.toMaybeFunctionType(functionNode.getJSType());
    int PROBE_START_LINE_133 = 164;
	com.google.javascript.rhino.jstype.FunctionType v_function_type_3246_line_133 = functionType;
	boolean type_inference_1_expr41_line_133 = v_function_type_3246_line_133 != null;
	int PROBE_END_LINE_133 = 164;
	if (type_inference_1_expr41_line_133) {
      int PROBE_START_LINE_134 = 134;
		com.google.javascript.rhino.jstype.FunctionType v_function_type_3246_line_134 = functionType;
		Node type_inference_1_expr42_line_134 = v_function_type_3246_line_134.getParametersNode();
		int PROBE_END_LINE_134 = 134;
	Node parameterTypes = type_inference_1_expr42_line_134;
      int PROBE_START_LINE_135 = 163;
	com.google.javascript.rhino.Node v_parameter_types_3247_line_135 = parameterTypes;
	boolean type_inference_1_expr43_line_135 = v_parameter_types_3247_line_135 != null;
	int PROBE_END_LINE_135 = 163;
	if (type_inference_1_expr43_line_135) {
        int PROBE_START_LINE_136 = 136;
		com.google.javascript.rhino.Node v_parameter_types_3247_line_136 = parameterTypes;
		Node type_inference_1_expr44_line_136 = v_parameter_types_3247_line_136.getFirstChild();
		int PROBE_END_LINE_136 = 136;
		Node parameterTypeNode = type_inference_1_expr44_line_136;
        int PROBE_START_LINE_137 = 162;
		com.google.javascript.rhino.Node v_ast_parameters_3244_line_137 = astParameters;
		Iterable<com.google.javascript.rhino.Node> type_inference_1_expr45_line_137 = v_ast_parameters_3244_line_137
				.children();
		int PROBE_END_LINE_137 = 162;
		for (Node astParameter : type_inference_1_expr45_line_137) {
          Var var = functionScope.getVar(astParameter.getString());
          Preconditions.checkNotNull(var);
          if (var.isTypeInferred() &&
              var.getType() == unknownType) {
            JSType newType = null;

            if (iifeArgumentNode != null) {
              newType = iifeArgumentNode.getJSType();
            } else if (parameterTypeNode != null) {
              newType = parameterTypeNode.getJSType();
            }

            if (newType != null) {
              var.setType(newType);
              astParameter.setJSType(newType);
            }
          }

          if (parameterTypeNode != null) {
            parameterTypeNode = parameterTypeNode.getNext();
          }
          if (iifeArgumentNode != null) {
            iifeArgumentNode = iifeArgumentNode.getNext();
          }
        }
      }
    }
  }

  @Override
  FlowScope createInitialEstimateLattice() {
    int PROBE_START_LINE_169 = 169;
	com.google.javascript.jscomp.type.FlowScope f_bottom_scope_3241_line_169 = bottomScope;
	int PROBE_END_LINE_169 = 169;
	return f_bottom_scope_3241_line_169;
  }

  @Override
  FlowScope createEntryLattice() {
    int PROBE_START_LINE_174 = 174;
	com.google.javascript.jscomp.type.FlowScope f_function_scope_3238_line_174 = functionScope;
	int PROBE_END_LINE_174 = 174;
	return f_function_scope_3238_line_174;
  }

  @Override
  FlowScope flowThrough(Node n, FlowScope input) {
    int PROBE_START_LINE_181 = 183;
	com.google.javascript.jscomp.type.FlowScope p_input_3251_line_181 = input;
	com.google.javascript.jscomp.type.FlowScope f_bottom_scope_3241_line_181 = bottomScope;
	boolean type_inference_1_expr46_line_181 = p_input_3251_line_181 == f_bottom_scope_3241_line_181;
	int PROBE_END_LINE_181 = 183;
	// If we have not walked a path from <entry> to <n>, then we don't
    // want to infer anything about this scope.
    if (type_inference_1_expr46_line_181) {
      return input;
    }

    int PROBE_START_LINE_185 = 185;
	com.google.javascript.jscomp.type.FlowScope p_input_3251_line_185 = input;
	FlowScope type_inference_1_expr47_line_185 = p_input_3251_line_185.createChildFlowScope();
	int PROBE_END_LINE_185 = 185;
	FlowScope output = type_inference_1_expr47_line_185;
    int PROBE_START_LINE_186 = 186;
	com.google.javascript.rhino.Node p_n_3250_line_186 = n;
	com.google.javascript.jscomp.type.FlowScope v_output_3252_line_186 = output;
	com.google.javascript.jscomp.type.FlowScope type_inference_1_expr49_line_186 = traverse(p_n_3250_line_186,
			v_output_3252_line_186);
	int PROBE_END_LINE_186 = 186;
	output = type_inference_1_expr49_line_186;
    int PROBE_START_LINE_187 = 187;
	com.google.javascript.jscomp.type.FlowScope v_output_3252_line_187 = output;
	int PROBE_END_LINE_187 = 187;
	return v_output_3252_line_187;
  }

  @Override
  @SuppressWarnings({"fallthrough", "incomplete-switch"})
  List<FlowScope> branchedFlowThrough(Node source, FlowScope input) {
    int PROBE_START_LINE_198 = 198;
	com.google.javascript.rhino.Node p_source_3253_line_198 = source;
	com.google.javascript.jscomp.type.FlowScope p_input_3254_line_198 = input;
	FlowScope type_inference_1_expr50_line_198 = flowThrough(p_source_3253_line_198, p_input_3254_line_198);
	int PROBE_END_LINE_198 = 198;
	// NOTE(nicksantos): Right now, we just treat ON_EX edges like UNCOND
    // edges. If we wanted to be perfect, we'd actually JOIN all the out
    // lattices of this flow with the in lattice, and then make that the out
    // lattice for the ON_EX edge. But it's probably too expensive to be
    // worthwhile.
    FlowScope output = type_inference_1_expr50_line_198;
    Node condition = null;
    FlowScope conditionFlowScope = null;
    BooleanOutcomePair conditionOutcomes = null;

    int PROBE_START_LINE_203 = 203;
	ControlFlowGraph<com.google.javascript.rhino.Node> type_inference_1_expr52_line_203 = getCfg();
	com.google.javascript.rhino.Node p_source_3253_line_203 = source;
	List<DiGraphEdge<Node, Branch>> type_inference_1_expr51_line_203 = type_inference_1_expr52_line_203
			.getOutEdges(p_source_3253_line_203);
	int PROBE_END_LINE_203 = 203;
	List<DiGraphEdge<Node, Branch>> branchEdges = type_inference_1_expr51_line_203;
    int PROBE_START_LINE_204 = 204;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_branch_edges_3259_line_204 = branchEdges;
	int type_inference_1_expr54_line_204 = v_branch_edges_3259_line_204.size();
	List<FlowScope> type_inference_1_expr53_line_204 = Lists.newArrayListWithCapacity(type_inference_1_expr54_line_204);
	int PROBE_END_LINE_204 = 204;
	List<FlowScope> result = type_inference_1_expr53_line_204;
    int PROBE_START_LINE_205 = 301;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_branch_edges_3259_line_205 = branchEdges;
	int PROBE_END_LINE_205 = 301;
	for (DiGraphEdge<Node, Branch> branchEdge : v_branch_edges_3259_line_205) {
      int PROBE_START_LINE_206 = 206;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_branch_edge_3261_line_206 = branchEdge;
		Branch type_inference_1_expr55_line_206 = v_branch_edge_3261_line_206.getValue();
		int PROBE_END_LINE_206 = 206;
	Branch branch = type_inference_1_expr55_line_206;
      int PROBE_START_LINE_207 = 207;
	FlowScope v_output_3255_line_207 = output;
	int PROBE_END_LINE_207 = 207;
	FlowScope newScope = v_output_3255_line_207;

      int PROBE_START_LINE_209 = 298;
	com.google.javascript.jscomp.ControlFlowGraph.Branch v_branch_3262_line_209 = branch;
	int PROBE_END_LINE_209 = 298;
	switch (v_branch_3262_line_209) {
        case ON_TRUE:
          if (NodeUtil.isForIn(source)) {
            // item is assigned a property name, so its type should be string.
            Node item = source.getFirstChild();
            Node obj = item.getNext();

            FlowScope informed = traverse(obj, output.createChildFlowScope());

            if (item.isVar()) {
              item = item.getFirstChild();
            }
            if (item.isName()) {
              JSType iterKeyType = getNativeType(STRING_TYPE);
              ObjectType objType = getJSType(obj).dereference();
              JSType objIndexType = objType == null ?
                  null : objType.getTemplateTypeMap().getTemplateType(
                      registry.getObjectIndexKey());
              if (objIndexType != null && !objIndexType.isUnknownType()) {
                JSType narrowedKeyType =
                    iterKeyType.getGreatestSubtype(objIndexType);
                if (!narrowedKeyType.isEmptyType()) {
                  iterKeyType = narrowedKeyType;
                }
              }
              redeclareSimpleVar(informed, item, iterKeyType);
            }
            newScope = informed;
            break;
          }

          // FALL THROUGH

        case ON_FALSE:
          if (condition == null) {
            condition = NodeUtil.getConditionExpression(source);
            if (condition == null && source.isCase()) {
              condition = source;

              // conditionFlowScope is cached from previous iterations
              // of the loop.
              if (conditionFlowScope == null) {
                conditionFlowScope = traverse(
                    condition.getFirstChild(), output.createChildFlowScope());
              }
            }
          }

          if (condition != null) {
            if (condition.isAnd() ||
                condition.isOr()) {
              // When handling the short-circuiting binary operators,
              // the outcome scope on true can be different than the outcome
              // scope on false.
              //
              // TODO(nicksantos): The "right" way to do this is to
              // carry the known outcome all the way through the
              // recursive traversal, so that we can construct a
              // different flow scope based on the outcome. However,
              // this would require a bunch of code and a bunch of
              // extra computation for an edge case. This seems to be
              // a "good enough" approximation.

              // conditionOutcomes is cached from previous iterations
              // of the loop.
              if (conditionOutcomes == null) {
                conditionOutcomes = condition.isAnd() ?
                    traverseAnd(condition, output.createChildFlowScope()) :
                    traverseOr(condition, output.createChildFlowScope());
              }
              newScope =
                  reverseInterpreter.getPreciserScopeKnowingConditionOutcome(
                      condition,
                      conditionOutcomes.getOutcomeFlowScope(
                          condition.getType(), branch == Branch.ON_TRUE),
                      branch == Branch.ON_TRUE);
            } else {
              // conditionFlowScope is cached from previous iterations
              // of the loop.
              if (conditionFlowScope == null) {
                conditionFlowScope =
                    traverse(condition, output.createChildFlowScope());
              }
              newScope =
                  reverseInterpreter.getPreciserScopeKnowingConditionOutcome(
                      condition, conditionFlowScope, branch == Branch.ON_TRUE);
            }
          }
          break;
      }

      int PROBE_START_LINE_300 = 300;
	List<com.google.javascript.jscomp.type.FlowScope> v_result_3260_line_300 = result;
	com.google.javascript.jscomp.type.FlowScope v_new_scope_3263_line_300 = newScope;
	com.google.javascript.jscomp.type.FlowScope type_inference_1_expr57_line_300 = v_new_scope_3263_line_300.optimize();
	int PROBE_END_LINE_300 = 300;
	v_result_3260_line_300.add(type_inference_1_expr57_line_300);
    }
    int PROBE_START_LINE_302 = 302;
	List<com.google.javascript.jscomp.type.FlowScope> v_result_3260_line_302 = result;
	int PROBE_END_LINE_302 = 302;
	return v_result_3260_line_302;
  }

  private FlowScope traverse(Node n, FlowScope scope) {
    int PROBE_START_LINE_306 = 457;
	com.google.javascript.rhino.Node p_n_3264_line_306 = n;
	int type_inference_1_expr58_line_306 = p_n_3264_line_306.getType();
	int PROBE_END_LINE_306 = 457;
	switch (type_inference_1_expr58_line_306) {
      case Token.ASSIGN:
	int PROBE_START_LINE_308 = 308;
	com.google.javascript.rhino.Node p_n_3264_line_308 = n;
	com.google.javascript.jscomp.type.FlowScope p_scope_3265_line_308 = scope;
	com.google.javascript.jscomp.type.FlowScope type_inference_1_expr60_line_308 = traverseAssign(p_n_3264_line_308,
			p_scope_3265_line_308);
	int PROBE_END_LINE_308 = 308;
	scope = type_inference_1_expr60_line_308;
        break;

      case Token.NAME:
	int PROBE_START_LINE_312 = 312;
	com.google.javascript.rhino.Node p_n_3264_line_312 = n;
	com.google.javascript.jscomp.type.FlowScope p_scope_3265_line_312 = scope;
	com.google.javascript.jscomp.type.FlowScope type_inference_1_expr62_line_312 = traverseName(p_n_3264_line_312,
			p_scope_3265_line_312);
	int PROBE_END_LINE_312 = 312;
	scope = type_inference_1_expr62_line_312;
        break;

      case Token.GETPROP:
	int PROBE_START_LINE_316 = 316;
	com.google.javascript.rhino.Node p_n_3264_line_316 = n;
	com.google.javascript.jscomp.type.FlowScope p_scope_3265_line_316 = scope;
	com.google.javascript.jscomp.type.FlowScope type_inference_1_expr64_line_316 = traverseGetProp(p_n_3264_line_316,
			p_scope_3265_line_316);
	int PROBE_END_LINE_316 = 316;
	scope = type_inference_1_expr64_line_316;
        break;

      case Token.AND:
        scope = traverseAnd(n, scope).getJoinedFlowScope()
            .createChildFlowScope();
        break;

      case Token.OR:
        scope = traverseOr(n, scope).getJoinedFlowScope()
            .createChildFlowScope();
        break;

      case Token.HOOK:
        scope = traverseHook(n, scope);
        break;

      case Token.OBJECTLIT:
	int PROBE_START_LINE_334 = 334;
	com.google.javascript.rhino.Node p_n_3264_line_334 = n;
	com.google.javascript.jscomp.type.FlowScope p_scope_3265_line_334 = scope;
	com.google.javascript.jscomp.type.FlowScope type_inference_1_expr66_line_334 = traverseObjectLiteral(
			p_n_3264_line_334, p_scope_3265_line_334);
	int PROBE_END_LINE_334 = 334;
	scope = type_inference_1_expr66_line_334;
        break;

      case Token.CALL:
        scope = traverseCall(n, scope);
        break;

      case Token.NEW:
        scope = traverseNew(n, scope);
        break;

      case Token.ASSIGN_ADD:
      case Token.ADD:
        scope = traverseAdd(n, scope);
        break;

      case Token.POS:
      case Token.NEG:
        scope = traverse(n.getFirstChild(), scope);  // Find types.
        n.setJSType(getNativeType(NUMBER_TYPE));
        break;

      case Token.ARRAYLIT:
        scope = traverseArrayLiteral(n, scope);
        break;

      case Token.THIS:
        n.setJSType(scope.getTypeOfThis());
        break;

      case Token.ASSIGN_LSH:
      case Token.ASSIGN_RSH:
      case Token.LSH:
      case Token.RSH:
      case Token.ASSIGN_URSH:
      case Token.URSH:
      case Token.ASSIGN_DIV:
      case Token.ASSIGN_MOD:
      case Token.ASSIGN_BITAND:
      case Token.ASSIGN_BITXOR:
      case Token.ASSIGN_BITOR:
      case Token.ASSIGN_MUL:
      case Token.ASSIGN_SUB:
      case Token.DIV:
      case Token.MOD:
      case Token.BITAND:
      case Token.BITXOR:
      case Token.BITOR:
      case Token.MUL:
      case Token.SUB:
      case Token.DEC:
      case Token.INC:
      case Token.BITNOT:
        scope = traverseChildren(n, scope);
        n.setJSType(getNativeType(NUMBER_TYPE));
        break;

      case Token.PARAM_LIST:
        scope = traverse(n.getFirstChild(), scope);
        n.setJSType(getJSType(n.getFirstChild()));
        break;

      case Token.COMMA:
        scope = traverseChildren(n, scope);
        n.setJSType(getJSType(n.getLastChild()));
        break;

      case Token.TYPEOF:
        scope = traverseChildren(n, scope);
        n.setJSType(getNativeType(STRING_TYPE));
        break;

      case Token.DELPROP:
      case Token.LT:
      case Token.LE:
      case Token.GT:
      case Token.GE:
      case Token.NOT:
      case Token.EQ:
      case Token.NE:
      case Token.SHEQ:
      case Token.SHNE:
      case Token.INSTANCEOF:
      case Token.IN:
        scope = traverseChildren(n, scope);
        n.setJSType(getNativeType(BOOLEAN_TYPE));
        break;

      case Token.GETELEM:
        scope = traverseGetElem(n, scope);
        break;

      case Token.EXPR_RESULT:
	int PROBE_START_LINE_427 = 427;
	com.google.javascript.rhino.Node p_n_3264_line_427 = n;
	com.google.javascript.jscomp.type.FlowScope p_scope_3265_line_427 = scope;
	com.google.javascript.jscomp.type.FlowScope type_inference_1_expr68_line_427 = traverseChildren(p_n_3264_line_427,
			p_scope_3265_line_427);
	int PROBE_END_LINE_427 = 427;
	scope = type_inference_1_expr68_line_427;
	int PROBE_START_LINE_428 = 430;
	com.google.javascript.rhino.Node p_n_3264_line_428 = n;
	com.google.javascript.rhino.Node type_inference_1_expr70_line_428 = p_n_3264_line_428.getFirstChild();
	boolean type_inference_1_expr69_line_428 = type_inference_1_expr70_line_428.isGetProp();
	int PROBE_END_LINE_428 = 430;
	if (type_inference_1_expr69_line_428) {
          int PROBE_START_LINE_429 = 429;
			com.google.javascript.rhino.Node p_n_3264_line_429 = n;
			com.google.javascript.rhino.Node type_inference_1_expr72_line_429 = p_n_3264_line_429.getFirstChild();
			int PROBE_END_LINE_429 = 429;
		ensurePropertyDeclared(type_inference_1_expr72_line_429);
        }
        break;

      case Token.SWITCH:
        scope = traverse(n.getFirstChild(), scope);
        break;

      case Token.RETURN:
        scope = traverseReturn(n, scope);
        break;

      case Token.VAR:
      case Token.THROW:
	int PROBE_START_LINE_443 = 443;
	com.google.javascript.rhino.Node p_n_3264_line_443 = n;
	com.google.javascript.jscomp.type.FlowScope p_scope_3265_line_443 = scope;
	com.google.javascript.jscomp.type.FlowScope type_inference_1_expr74_line_443 = traverseChildren(p_n_3264_line_443,
			p_scope_3265_line_443);
	int PROBE_END_LINE_443 = 443;
	scope = type_inference_1_expr74_line_443;
        break;

      case Token.CATCH:
        scope = traverseCatch(n, scope);
        break;

      case Token.CAST:
        scope = traverseChildren(n, scope);
        JSDocInfo info = n.getJSDocInfo();
        if (info != null && info.hasType()) {
          n.setJSType(info.getType().evaluate(syntacticScope, registry));
        }
        break;
    }

    int PROBE_START_LINE_459 = 459;
	com.google.javascript.jscomp.type.FlowScope p_scope_3265_line_459 = scope;
	int PROBE_END_LINE_459 = 459;
	return p_scope_3265_line_459;
  }

  /**
   * Traverse a return value.
   */
  private FlowScope traverseReturn(Node n, FlowScope scope) {
    scope = traverseChildren(n, scope);

    Node retValue = n.getFirstChild();
    if (retValue != null) {
      JSType type = functionScope.getRootNode().getJSType();
      if (type != null) {
        FunctionType fnType = type.toMaybeFunctionType();
        if (fnType != null) {
          inferPropertyTypesToMatchConstraint(
              retValue.getJSType(), fnType.getReturnType());
        }
      }
    }
    return scope;
  }

  /**
   * Any value can be thrown, so it's really impossible to determine the type
   * of a CATCH param. Treat it as the UNKNOWN type.
   */
  private FlowScope traverseCatch(Node catchNode, FlowScope scope) {
    Node name = catchNode.getFirstChild();
    JSType type;
    // If the catch expression name was declared in the catch use that type,
    // otherwise use "unknown".
    JSDocInfo info = name.getJSDocInfo();
    if (info != null && info.hasType()) {
      type = info.getType().evaluate(syntacticScope, registry);
    } else {
      type = getNativeType(JSTypeNative.UNKNOWN_TYPE);
    }
    redeclareSimpleVar(scope, name, type);
    name.setJSType(type);
    return scope;
  }

  private FlowScope traverseAssign(Node n, FlowScope scope) {
    int PROBE_START_LINE_503 = 503;
	com.google.javascript.rhino.Node p_n_3270_line_503 = n;
	Node type_inference_1_expr75_line_503 = p_n_3270_line_503.getFirstChild();
	int PROBE_END_LINE_503 = 503;
	Node left = type_inference_1_expr75_line_503;
    int PROBE_START_LINE_504 = 504;
	com.google.javascript.rhino.Node p_n_3270_line_504 = n;
	Node type_inference_1_expr76_line_504 = p_n_3270_line_504.getLastChild();
	int PROBE_END_LINE_504 = 504;
	Node right = type_inference_1_expr76_line_504;
    int PROBE_START_LINE_505 = 505;
	com.google.javascript.rhino.Node p_n_3270_line_505 = n;
	com.google.javascript.jscomp.type.FlowScope p_scope_3271_line_505 = scope;
	com.google.javascript.jscomp.type.FlowScope type_inference_1_expr78_line_505 = traverseChildren(p_n_3270_line_505,
			p_scope_3271_line_505);
	int PROBE_END_LINE_505 = 505;
	scope = type_inference_1_expr78_line_505;

    int PROBE_START_LINE_507 = 507;
	com.google.javascript.rhino.Node v_left_3272_line_507 = left;
	JSType type_inference_1_expr79_line_507 = v_left_3272_line_507.getJSType();
	int PROBE_END_LINE_507 = 507;
	JSType leftType = type_inference_1_expr79_line_507;
    int PROBE_START_LINE_508 = 508;
	com.google.javascript.rhino.Node v_right_3273_line_508 = right;
	JSType type_inference_1_expr80_line_508 = getJSType(v_right_3273_line_508);
	int PROBE_END_LINE_508 = 508;
	JSType rightType = type_inference_1_expr80_line_508;
    int PROBE_START_LINE_509 = 509;
	com.google.javascript.rhino.Node p_n_3270_line_509 = n;
	com.google.javascript.rhino.jstype.JSType v_right_type_3275_line_509 = rightType;
	int PROBE_END_LINE_509 = 509;
	p_n_3270_line_509.setJSType(v_right_type_3275_line_509);

    int PROBE_START_LINE_511 = 511;
	com.google.javascript.jscomp.type.FlowScope p_scope_3271_line_511 = scope;
	com.google.javascript.rhino.Node v_left_3272_line_511 = left;
	com.google.javascript.rhino.jstype.JSType v_left_type_3274_line_511 = leftType;
	com.google.javascript.rhino.jstype.JSType v_right_type_3275_line_511 = rightType;
	int PROBE_END_LINE_511 = 511;
	updateScopeForTypeChange(p_scope_3271_line_511, v_left_3272_line_511, v_left_type_3274_line_511, v_right_type_3275_line_511);
    int PROBE_START_LINE_512 = 512;
	com.google.javascript.jscomp.type.FlowScope p_scope_3271_line_512 = scope;
	int PROBE_END_LINE_512 = 512;
	return p_scope_3271_line_512;
  }

  /**
   * Updates the scope according to the result of a type change, like
   * an assignment or a type cast.
   */
  private void updateScopeForTypeChange(
      FlowScope scope, Node left, JSType leftType, JSType resultType) {
    int PROBE_START_LINE_521 = 521;
		com.google.javascript.rhino.jstype.JSType p_result_type_3279_line_521 = resultType;
		int PROBE_END_LINE_521 = 521;
	Preconditions.checkNotNull(p_result_type_3279_line_521);
    int PROBE_START_LINE_522 = 561;
	com.google.javascript.rhino.Node p_left_3277_line_522 = left;
	int type_inference_1_expr84_line_522 = p_left_3277_line_522.getType();
	int PROBE_END_LINE_522 = 561;
	switch (type_inference_1_expr84_line_522) {
      case Token.NAME:
	int PROBE_START_LINE_524 = 524;
	com.google.javascript.rhino.Node p_left_3277_line_524 = left;
	String type_inference_1_expr85_line_524 = p_left_3277_line_524.getString();
	int PROBE_END_LINE_524 = 524;
	String varName = type_inference_1_expr85_line_524;
	int PROBE_START_LINE_525 = 525;
	com.google.javascript.jscomp.Scope f_syntactic_scope_3237_line_525 = syntacticScope;
	String v_var_name_3280_line_525 = varName;
	Var type_inference_1_expr86_line_525 = f_syntactic_scope_3237_line_525.getVar(v_var_name_3280_line_525);
	int PROBE_END_LINE_525 = 525;
	Var var = type_inference_1_expr86_line_525;

	int PROBE_START_LINE_537 = 537;
	com.google.javascript.rhino.Node p_left_3277_line_537 = left;
	boolean type_inference_1_expr87_line_537 = p_left_3277_line_537.hasChildren();
	int PROBE_END_LINE_537 = 537;
	// When looking at VAR initializers for declared VARs, we trust
        // the declared type over the type it's being initialized to.
        // This has two purposes:
        // 1) We avoid re-declaring declared variables so that built-in
        //    types defined in externs are not redeclared.
        // 2) When there's a lexical closure like
        //    /** @type {?string} */ var x = null;
        //    function f() { x = 'xyz'; }
        //    the inference will ignore the lexical closure,
        //    which is just wrong. This bug needs to be fixed eventually.
        boolean isVarDeclaration = type_inference_1_expr87_line_537;
	int PROBE_START_LINE_538 = 540;
	boolean v_is_var_declaration_3282_line_538 = isVarDeclaration;
	boolean type_inference_1_expr90_line_538 = !v_is_var_declaration_3282_line_538;
	boolean type_inference_1_expr91_line_538 = false;
	if (!type_inference_1_expr90_line_538) {
		com.google.javascript.jscomp.Scope.Var v_var_3281_line_538 = var;
		type_inference_1_expr91_line_538 = v_var_3281_line_538 == null;
	}
	boolean type_inference_1_expr89_line_538 = type_inference_1_expr90_line_538 || type_inference_1_expr91_line_538;
	boolean type_inference_1_expr92_line_538 = false;
	if (!type_inference_1_expr89_line_538) {
		com.google.javascript.jscomp.Scope.Var v_var_3281_line_538_v1 = var;
		type_inference_1_expr92_line_538 = v_var_3281_line_538_v1.isTypeInferred();
	}
	boolean type_inference_1_expr88_line_538 = type_inference_1_expr89_line_538 || type_inference_1_expr92_line_538;
	int PROBE_END_LINE_538 = 540;
	if (type_inference_1_expr88_line_538) {
          redeclareSimpleVar(scope, left, resultType);
        }
	int PROBE_START_LINE_541 = 542;
	com.google.javascript.rhino.Node p_left_3277_line_541 = left;
	boolean v_is_var_declaration_3282_line_541 = isVarDeclaration;
	boolean type_inference_1_expr96_line_541 = false;
	if (!v_is_var_declaration_3282_line_541) {
		com.google.javascript.rhino.jstype.JSType p_left_type_3278_line_541 = leftType;
		type_inference_1_expr96_line_541 = p_left_type_3278_line_541 == null;
	}
	boolean type_inference_1_expr95_line_541 = v_is_var_declaration_3282_line_541 || type_inference_1_expr96_line_541;
	com.google.javascript.rhino.jstype.JSType type_inference_1_expr94_line_541 = type_inference_1_expr95_line_541
			? resultType
			: null;
	int PROBE_END_LINE_541 = 542;
	p_left_3277_line_541.setJSType(type_inference_1_expr94_line_541);

	int PROBE_START_LINE_544 = 548;
	com.google.javascript.jscomp.Scope.Var v_var_3281_line_544 = var;
	boolean type_inference_1_expr98_line_544 = v_var_3281_line_544 != null;
	boolean type_inference_1_expr99_line_544 = true;
	if (type_inference_1_expr98_line_544) {
		com.google.javascript.jscomp.Scope.Var v_var_3281_line_544_v1 = var;
		type_inference_1_expr99_line_544 = v_var_3281_line_544_v1.isTypeInferred();
	}
	boolean type_inference_1_expr97_line_544 = type_inference_1_expr98_line_544 && type_inference_1_expr99_line_544;
	int PROBE_END_LINE_544 = 548;
	if (type_inference_1_expr97_line_544) {
          JSType oldType = var.getType();
          var.setType(oldType == null ?
              resultType : oldType.getLeastSupertype(resultType));
        }
        break;
      case Token.GETPROP:
	int PROBE_START_LINE_551 = 551;
	com.google.javascript.rhino.Node p_left_3277_line_551 = left;
	String type_inference_1_expr100_line_551 = p_left_3277_line_551.getQualifiedName();
	int PROBE_END_LINE_551 = 551;
	String qualifiedName = type_inference_1_expr100_line_551;
	int PROBE_START_LINE_552 = 556;
	String v_qualified_name_3283_line_552 = qualifiedName;
	boolean type_inference_1_expr101_line_552 = v_qualified_name_3283_line_552 != null;
	int PROBE_END_LINE_552 = 556;
	if (type_inference_1_expr101_line_552) {
          int PROBE_START_LINE_553 = 555;
			com.google.javascript.jscomp.type.FlowScope p_scope_3276_line_553 = scope;
			com.google.javascript.rhino.Node p_left_3277_line_553 = left;
			String v_qualified_name_3283_line_553 = qualifiedName;
			int PROBE_END_LINE_553 = 555;
		p_scope_3276_line_553.inferQualifiedSlot(p_left_3277_line_553, v_qualified_name_3283_line_553,
              leftType == null ? unknownType : leftType,
              resultType);
        }

	int PROBE_START_LINE_558 = 558;
	com.google.javascript.rhino.Node p_left_3277_line_558 = left;
	com.google.javascript.rhino.jstype.JSType p_result_type_3279_line_558 = resultType;
	int PROBE_END_LINE_558 = 558;
	p_left_3277_line_558.setJSType(p_result_type_3279_line_558);
	int PROBE_START_LINE_559 = 559;
	com.google.javascript.rhino.Node p_left_3277_line_559 = left;
	com.google.javascript.rhino.jstype.JSType p_result_type_3279_line_559 = resultType;
	int PROBE_END_LINE_559 = 559;
	ensurePropertyDefined(p_left_3277_line_559, p_result_type_3279_line_559);
        break;
    }
  }

  /**
   * Defines a property if the property has not been defined yet.
   */
  private void ensurePropertyDefined(Node getprop, JSType rightType) {
    int PROBE_START_LINE_568 = 568;
	com.google.javascript.rhino.Node p_getprop_3284_line_568 = getprop;
	com.google.javascript.rhino.Node type_inference_1_expr107_line_568 = p_getprop_3284_line_568.getLastChild();
	String type_inference_1_expr106_line_568 = type_inference_1_expr107_line_568.getString();
	int PROBE_END_LINE_568 = 568;
	String propName = type_inference_1_expr106_line_568;
    int PROBE_START_LINE_569 = 569;
	com.google.javascript.rhino.Node p_getprop_3284_line_569 = getprop;
	Node type_inference_1_expr108_line_569 = p_getprop_3284_line_569.getFirstChild();
	int PROBE_END_LINE_569 = 569;
	Node obj = type_inference_1_expr108_line_569;
    int PROBE_START_LINE_570 = 570;
	com.google.javascript.rhino.Node v_obj_3287_line_570 = obj;
	JSType type_inference_1_expr109_line_570 = getJSType(v_obj_3287_line_570);
	int PROBE_END_LINE_570 = 570;
	JSType nodeType = type_inference_1_expr109_line_570;
    int PROBE_START_LINE_571 = 572;
	ObjectType type_inference_1_expr110_line_571 = ObjectType.cast(nodeType.restrictByNotNullOrUndefined());
	int PROBE_END_LINE_571 = 572;
	ObjectType objectType = type_inference_1_expr110_line_571;
    int PROBE_START_LINE_573 = 614;
	com.google.javascript.rhino.jstype.ObjectType v_object_type_3289_line_573 = objectType;
	boolean type_inference_1_expr112_line_573 = v_object_type_3289_line_573 == null;
	int PROBE_END_LINE_573 = 614;
	if (type_inference_1_expr112_line_573) {
      registry.registerPropertyOnType(propName, nodeType);
    } else {
      int PROBE_START_LINE_577 = 582;
		com.google.javascript.rhino.jstype.JSType v_node_type_3288_line_577 = nodeType;
		boolean type_inference_1_expr114_line_577 = v_node_type_3288_line_577.isStruct();
		boolean type_inference_1_expr115_line_577 = true;
		if (type_inference_1_expr114_line_577) {
			com.google.javascript.rhino.jstype.ObjectType v_object_type_3289_line_577 = objectType;
			String v_prop_name_3286_line_577 = propName;
			boolean type_inference_1_expr116_line_577 = v_object_type_3289_line_577
					.hasProperty(v_prop_name_3286_line_577);
			type_inference_1_expr115_line_577 = !type_inference_1_expr116_line_577;
		}
		boolean type_inference_1_expr113_line_577 = type_inference_1_expr114_line_577
				&& type_inference_1_expr115_line_577;
		int PROBE_END_LINE_577 = 582;
	// Don't add the property to @struct objects outside a constructor
      if (type_inference_1_expr113_line_577) {
        if (!(obj.isThis() &&
              getJSType(syntacticScope.getRootNode()).isConstructor())) {
          return;
        }
      }

      int PROBE_START_LINE_584 = 586;
	com.google.javascript.rhino.Node p_getprop_3284_line_584 = getprop;
	com.google.javascript.rhino.jstype.ObjectType v_object_type_3289_line_584 = objectType;
	boolean type_inference_1_expr117_line_584 = ensurePropertyDeclaredHelper(p_getprop_3284_line_584,
			v_object_type_3289_line_584);
	int PROBE_END_LINE_584 = 586;
	if (type_inference_1_expr117_line_584) {
        return;
      }

      int PROBE_START_LINE_588 = 613;
	com.google.javascript.rhino.jstype.ObjectType v_object_type_3289_line_588 = objectType;
	String v_prop_name_3286_line_588 = propName;
	boolean type_inference_1_expr119_line_588 = v_object_type_3289_line_588
			.isPropertyTypeDeclared(v_prop_name_3286_line_588);
	boolean type_inference_1_expr118_line_588 = !type_inference_1_expr119_line_588;
	int PROBE_END_LINE_588 = 613;
	if (type_inference_1_expr118_line_588) {
        int PROBE_START_LINE_601 = 612;
		com.google.javascript.rhino.jstype.ObjectType v_object_type_3289_line_601 = objectType;
		String v_prop_name_3286_line_601 = propName;
		boolean type_inference_1_expr121_line_601 = v_object_type_3289_line_601.hasProperty(v_prop_name_3286_line_601);
		boolean type_inference_1_expr122_line_601 = false;
		if (!type_inference_1_expr121_line_601) {
			com.google.javascript.rhino.jstype.ObjectType v_object_type_3289_line_601_v1 = objectType;
			boolean type_inference_1_expr123_line_601 = v_object_type_3289_line_601_v1.isInstanceType();
			type_inference_1_expr122_line_601 = !type_inference_1_expr123_line_601;
		}
		boolean type_inference_1_expr120_line_601 = type_inference_1_expr121_line_601
				|| type_inference_1_expr122_line_601;
		int PROBE_END_LINE_601 = 612;
		// We do not want a "stray" assign to define an inferred property
        // for every object of this type in the program. So we use a heuristic
        // approach to determine whether to infer the property.
        //
        // 1) If the property is already defined, join it with the previously
        //    inferred type.
        // 2) If this isn't an instance object, define it.
        // 3) If the property of an object is being assigned in the constructor,
        //    define it.
        // 4) If this is a stub, define it.
        // 5) Otherwise, do not define the type, but declare it in the registry
        //    so that we can use it for missing property checks.
        if (type_inference_1_expr120_line_601) {
          int PROBE_START_LINE_602 = 606;
			String v_prop_name_3286_line_602 = propName;
			boolean type_inference_1_expr124_line_602 = "prototype".equals(v_prop_name_3286_line_602);
			int PROBE_END_LINE_602 = 606;
		if (type_inference_1_expr124_line_602) {
            int PROBE_START_LINE_603 = 603;
			com.google.javascript.rhino.jstype.ObjectType v_object_type_3289_line_603 = objectType;
			String v_prop_name_3286_line_603 = propName;
			com.google.javascript.rhino.jstype.JSType p_right_type_3285_line_603 = rightType;
			com.google.javascript.rhino.Node p_getprop_3284_line_603 = getprop;
			int PROBE_END_LINE_603 = 603;
			v_object_type_3289_line_603.defineDeclaredProperty(v_prop_name_3286_line_603, p_right_type_3285_line_603, p_getprop_3284_line_603);
          } else {
            objectType.defineInferredProperty(propName, rightType, getprop);
          }
        } else if (obj.isThis() &&
                   getJSType(syntacticScope.getRootNode()).isConstructor()) {
          objectType.defineInferredProperty(propName, rightType, getprop);
        } else {
          registry.registerPropertyOnType(propName, objectType);
        }
      }
    }
  }

  /**
   * Defines a declared property if it has not been defined yet.
   *
   * This handles the case where a property is declared on an object where
   * the object type is inferred, and so the object type will not
   * be known in {@code TypedScopeCreator}.
   */
  private void ensurePropertyDeclared(Node getprop) {
    int PROBE_START_LINE_625 = 626;
	ObjectType type_inference_1_expr126_line_625 = ObjectType
			.cast(getJSType(getprop.getFirstChild()).restrictByNotNullOrUndefined());
	int PROBE_END_LINE_625 = 626;
	ObjectType ownerType = type_inference_1_expr126_line_625;
    int PROBE_START_LINE_627 = 629;
	com.google.javascript.rhino.jstype.ObjectType v_owner_type_3291_line_627 = ownerType;
	boolean type_inference_1_expr128_line_627 = v_owner_type_3291_line_627 != null;
	int PROBE_END_LINE_627 = 629;
	if (type_inference_1_expr128_line_627) {
      int PROBE_START_LINE_628 = 628;
		com.google.javascript.rhino.Node p_getprop_3290_line_628 = getprop;
		com.google.javascript.rhino.jstype.ObjectType v_owner_type_3291_line_628 = ownerType;
		int PROBE_END_LINE_628 = 628;
	ensurePropertyDeclaredHelper(p_getprop_3290_line_628, v_owner_type_3291_line_628);
    }
  }

  /**
   * Declares a property on its owner, if necessary.
   * @return True if a property was declared.
   */
  private boolean ensurePropertyDeclaredHelper(
      Node getprop, ObjectType objectType) {
    int PROBE_START_LINE_638 = 638;
		com.google.javascript.rhino.Node p_getprop_3292_line_638 = getprop;
		com.google.javascript.rhino.Node type_inference_1_expr131_line_638 = p_getprop_3292_line_638.getLastChild();
		String type_inference_1_expr130_line_638 = type_inference_1_expr131_line_638.getString();
		int PROBE_END_LINE_638 = 638;
	String propName = type_inference_1_expr130_line_638;
    int PROBE_START_LINE_639 = 639;
	com.google.javascript.rhino.Node p_getprop_3292_line_639 = getprop;
	String type_inference_1_expr132_line_639 = p_getprop_3292_line_639.getQualifiedName();
	int PROBE_END_LINE_639 = 639;
	String qName = type_inference_1_expr132_line_639;
    int PROBE_START_LINE_640 = 653;
	String v_q_name_3295_line_640 = qName;
	boolean type_inference_1_expr133_line_640 = v_q_name_3295_line_640 != null;
	int PROBE_END_LINE_640 = 653;
	if (type_inference_1_expr133_line_640) {
      int PROBE_START_LINE_641 = 641;
		com.google.javascript.jscomp.Scope f_syntactic_scope_3237_line_641 = syntacticScope;
		String v_q_name_3295_line_641 = qName;
		Var type_inference_1_expr134_line_641 = f_syntactic_scope_3237_line_641.getVar(v_q_name_3295_line_641);
		int PROBE_END_LINE_641 = 641;
	Var var = type_inference_1_expr134_line_641;
      int PROBE_START_LINE_642 = 652;
	com.google.javascript.jscomp.Scope.Var v_var_3296_line_642 = var;
	boolean type_inference_1_expr136_line_642 = v_var_3296_line_642 != null;
	boolean type_inference_1_expr137_line_642 = true;
	if (type_inference_1_expr136_line_642) {
		com.google.javascript.jscomp.Scope.Var v_var_3296_line_642_v1 = var;
		boolean type_inference_1_expr138_line_642 = v_var_3296_line_642_v1.isTypeInferred();
		type_inference_1_expr137_line_642 = !type_inference_1_expr138_line_642;
	}
	boolean type_inference_1_expr135_line_642 = type_inference_1_expr136_line_642 && type_inference_1_expr137_line_642;
	int PROBE_END_LINE_642 = 652;
	if (type_inference_1_expr135_line_642) {
        int PROBE_START_LINE_644 = 651;
		String v_prop_name_3294_line_644 = propName;
		boolean type_inference_1_expr140_line_644 = v_prop_name_3294_line_644.equals("prototype");
		boolean type_inference_1_expr139_line_644 = type_inference_1_expr140_line_644
				|| (!objectType.hasOwnProperty(propName)
						&& (!objectType.isInstanceType() || (var.isExtern() && !objectType.isNativeObjectType())));
		int PROBE_END_LINE_644 = 651;
		// Handle normal declarations that could not be addressed earlier.
        if (type_inference_1_expr139_line_644) {
          int PROBE_START_LINE_649 = 650;
					com.google.javascript.rhino.jstype.ObjectType p_object_type_3293_line_649 = objectType;
					boolean type_inference_1_expr141_line_649 = p_object_type_3293_line_649
							.defineDeclaredProperty(propName, var.getType(), getprop);
					int PROBE_END_LINE_649 = 650;
		return type_inference_1_expr141_line_649;
        }
      }
    }
    return false;
  }

  private FlowScope traverseName(Node n, FlowScope scope) {
    int PROBE_START_LINE_658 = 658;
	com.google.javascript.rhino.Node p_n_3297_line_658 = n;
	String type_inference_1_expr143_line_658 = p_n_3297_line_658.getString();
	int PROBE_END_LINE_658 = 658;
	String varName = type_inference_1_expr143_line_658;
    int PROBE_START_LINE_659 = 659;
	com.google.javascript.rhino.Node p_n_3297_line_659 = n;
	Node type_inference_1_expr144_line_659 = p_n_3297_line_659.getFirstChild();
	int PROBE_END_LINE_659 = 659;
	Node value = type_inference_1_expr144_line_659;
    int PROBE_START_LINE_660 = 660;
	com.google.javascript.rhino.Node p_n_3297_line_660 = n;
	JSType type_inference_1_expr145_line_660 = p_n_3297_line_660.getJSType();
	int PROBE_END_LINE_660 = 660;
	JSType type = type_inference_1_expr145_line_660;
    int PROBE_START_LINE_661 = 707;
	com.google.javascript.rhino.Node v_value_3300_line_661 = value;
	boolean type_inference_1_expr146_line_661 = v_value_3300_line_661 != null;
	int PROBE_END_LINE_661 = 707;
	if (type_inference_1_expr146_line_661) {
      int PROBE_START_LINE_662 = 662;
		com.google.javascript.rhino.Node v_value_3300_line_662 = value;
		com.google.javascript.jscomp.type.FlowScope p_scope_3298_line_662 = scope;
		com.google.javascript.jscomp.type.FlowScope type_inference_1_expr148_line_662 = traverse(v_value_3300_line_662,
				p_scope_3298_line_662);
		int PROBE_END_LINE_662 = 662;
	scope = type_inference_1_expr148_line_662;
      int PROBE_START_LINE_663 = 664;
	com.google.javascript.jscomp.type.FlowScope p_scope_3298_line_663 = scope;
	com.google.javascript.rhino.Node p_n_3297_line_663 = n;
	com.google.javascript.rhino.Node p_n_3297_line_663_v1 = n;
	com.google.javascript.rhino.jstype.JSType type_inference_1_expr150_line_663 = p_n_3297_line_663_v1.getJSType();
	int PROBE_END_LINE_663 = 664;
	updateScopeForTypeChange(p_scope_3298_line_663, p_n_3297_line_663, type_inference_1_expr150_line_663,
          getJSType(value));
      int PROBE_START_LINE_665 = 665;
	com.google.javascript.jscomp.type.FlowScope p_scope_3298_line_665 = scope;
	int PROBE_END_LINE_665 = 665;
	return p_scope_3298_line_665;
    } else {
      int PROBE_START_LINE_667 = 667;
		com.google.javascript.jscomp.type.FlowScope p_scope_3298_line_667 = scope;
		String v_var_name_3299_line_667 = varName;
		StaticSlot<JSType> type_inference_1_expr152_line_667 = p_scope_3298_line_667.getSlot(v_var_name_3299_line_667);
		int PROBE_END_LINE_667 = 667;
	StaticSlot<JSType> var = type_inference_1_expr152_line_667;
      int PROBE_START_LINE_668 = 706;
	StaticSlot<com.google.javascript.rhino.jstype.JSType> v_var_3302_line_668 = var;
	boolean type_inference_1_expr153_line_668 = v_var_3302_line_668 != null;
	int PROBE_END_LINE_668 = 706;
	if (type_inference_1_expr153_line_668) {
        // There are two situations where we don't want to use type information
        // from the scope, even if we have it.

        int PROBE_START_LINE_674 = 674;
		StaticSlot<com.google.javascript.rhino.jstype.JSType> v_var_3302_line_674 = var;
		boolean type_inference_1_expr154_line_674 = v_var_3302_line_674.isTypeInferred();
		int PROBE_END_LINE_674 = 674;
		// 1) The var is escaped and assigned in an inner scope, e.g.,
        // function f() { var x = 3; function g() { x = null } (x); }
        boolean isInferred = type_inference_1_expr154_line_674;
        int PROBE_START_LINE_675 = 676;
		boolean v_is_inferred_3303_line_675 = isInferred;
		boolean type_inference_1_expr155_line_675 = v_is_inferred_3303_line_675
				&& isUnflowable(syntacticScope.getVar(varName));
		int PROBE_END_LINE_675 = 676;
		boolean unflowable = type_inference_1_expr155_line_675;

        // 2) We're reading type information from another scope for an
        // inferred variable. That variable is assigned more than once,
        // and we can't know which type we're getting.
        //
        // var t = null; function f() { (t); } doStuff(); t = {};
        //
        // Notice that this heuristic isn't perfect. For example, you might
        // have:
        //
        // function f() { (t); } f(); var t = 3;
        //
        // In this case, we would infer the first reference to t as
        // type {number}, even though it's undefined.
        boolean nonLocalInferredSlot = false;
        int PROBE_START_LINE_692 = 698;
		boolean v_is_inferred_3303_line_692 = isInferred;
		boolean type_inference_1_expr157_line_692 = true;
		if (v_is_inferred_3303_line_692) {
			com.google.javascript.jscomp.Scope f_syntactic_scope_3237_line_692 = syntacticScope;
			type_inference_1_expr157_line_692 = f_syntactic_scope_3237_line_692.isLocal();
		}
		boolean type_inference_1_expr156_line_692 = v_is_inferred_3303_line_692 && type_inference_1_expr157_line_692;
		int PROBE_END_LINE_692 = 698;
		if (type_inference_1_expr156_line_692) {
          Var maybeOuterVar = syntacticScope.getParent().getVar(varName);
          if (var == maybeOuterVar &&
              !maybeOuterVar.isMarkedAssignedExactlyOnce()) {
            nonLocalInferredSlot = true;
          }
        }

        int PROBE_START_LINE_700 = 705;
		boolean v_unflowable_3304_line_700 = unflowable;
		boolean type_inference_1_expr159_line_700 = !v_unflowable_3304_line_700;
		boolean type_inference_1_expr160_line_700 = true;
		if (type_inference_1_expr159_line_700) {
			boolean v_non_local_inferred_slot_3305_line_700 = nonLocalInferredSlot;
			type_inference_1_expr160_line_700 = !v_non_local_inferred_slot_3305_line_700;
		}
		boolean type_inference_1_expr158_line_700 = type_inference_1_expr159_line_700
				&& type_inference_1_expr160_line_700;
		int PROBE_END_LINE_700 = 705;
		if (type_inference_1_expr158_line_700) {
          int PROBE_START_LINE_701 = 701;
			StaticSlot<com.google.javascript.rhino.jstype.JSType> v_var_3302_line_701 = var;
			com.google.javascript.rhino.jstype.JSType type_inference_1_expr162_line_701 = v_var_3302_line_701.getType();
			int PROBE_END_LINE_701 = 701;
		type = type_inference_1_expr162_line_701;
          int PROBE_START_LINE_702 = 704;
		com.google.javascript.rhino.jstype.JSType v_type_3301_line_702 = type;
		boolean type_inference_1_expr163_line_702 = v_type_3301_line_702 == null;
		int PROBE_END_LINE_702 = 704;
		if (type_inference_1_expr163_line_702) {
            type = unknownType;
          }
        }
      }
    }
    int PROBE_START_LINE_708 = 708;
	com.google.javascript.rhino.Node p_n_3297_line_708 = n;
	com.google.javascript.rhino.jstype.JSType v_type_3301_line_708 = type;
	int PROBE_END_LINE_708 = 708;
	p_n_3297_line_708.setJSType(v_type_3301_line_708);
    int PROBE_START_LINE_709 = 709;
	com.google.javascript.jscomp.type.FlowScope p_scope_3298_line_709 = scope;
	int PROBE_END_LINE_709 = 709;
	return p_scope_3298_line_709;
  }

  /** Traverse each element of the array. */
  private FlowScope traverseArrayLiteral(Node n, FlowScope scope) {
    scope = traverseChildren(n, scope);
    n.setJSType(getNativeType(ARRAY_TYPE));
    return scope;
  }

  private FlowScope traverseObjectLiteral(Node n, FlowScope scope) {
    int PROBE_START_LINE_720 = 720;
	com.google.javascript.rhino.Node p_n_3308_line_720 = n;
	JSType type_inference_1_expr165_line_720 = p_n_3308_line_720.getJSType();
	int PROBE_END_LINE_720 = 720;
	JSType type = type_inference_1_expr165_line_720;
    int PROBE_START_LINE_721 = 721;
	com.google.javascript.rhino.jstype.JSType v_type_3310_line_721 = type;
	int PROBE_END_LINE_721 = 721;
	Preconditions.checkNotNull(v_type_3310_line_721);

    int PROBE_START_LINE_722 = 722;
	boolean FOR_STMT_TOGGLE_LINE_723 = false;
	int PROBE_END_LINE_722 = 722;
	for (Node name = null; true;) {
      int PROBE_START_LINE_724 = 724;
		if (!FOR_STMT_TOGGLE_LINE_723) {
			FOR_STMT_TOGGLE_LINE_723 = true;
			com.google.javascript.rhino.Node p_n_3308_line_723 = n;
			Node type_inference_1_expr168_line_723 = p_n_3308_line_723.getFirstChild();
			name = type_inference_1_expr168_line_723;
		} else {
			if (FOR_STMT_TOGGLE_LINE_723) {
				com.google.javascript.rhino.Node v_name_3311_line_723_v1 = name;
				com.google.javascript.rhino.Node type_inference_1_expr171_line_723 = v_name_3311_line_723_v1.getNext();
				name = type_inference_1_expr171_line_723;
			} else {
				FOR_STMT_TOGGLE_LINE_723 = true;
			}
		}
		com.google.javascript.rhino.Node v_name_3311_line_723 = name;
		boolean type_inference_1_expr169_line_723 = v_name_3311_line_723 != null;
		if (!(type_inference_1_expr169_line_723)) {
			break;
		}
		com.google.javascript.rhino.Node v_name_3311_line_724 = name;
		com.google.javascript.rhino.Node type_inference_1_expr174_line_724 = v_name_3311_line_724.getFirstChild();
		com.google.javascript.jscomp.type.FlowScope p_scope_3309_line_724 = scope;
		com.google.javascript.jscomp.type.FlowScope type_inference_1_expr173_line_724 = traverse(
				type_inference_1_expr174_line_724, p_scope_3309_line_724);
		int PROBE_END_LINE_724 = 724;
	scope = type_inference_1_expr173_line_724;
    }

    int PROBE_START_LINE_730 = 730;
	com.google.javascript.rhino.jstype.JSType v_type_3310_line_730 = type;
	ObjectType type_inference_1_expr175_line_730 = ObjectType.cast(v_type_3310_line_730);
	int PROBE_END_LINE_730 = 730;
	// Object literals can be reflected on other types.
    // See CodingConvention#getObjectLiteralCase and goog.object.reflect.
    // Ignore these types of literals.
    ObjectType objectType = type_inference_1_expr175_line_730;
    int PROBE_START_LINE_731 = 733;
	com.google.javascript.rhino.jstype.ObjectType v_object_type_3312_line_731 = objectType;
	boolean type_inference_1_expr176_line_731 = v_object_type_3312_line_731 == null;
	int PROBE_END_LINE_731 = 733;
	if (type_inference_1_expr176_line_731) {
      return scope;
    }
    int PROBE_START_LINE_734 = 735;
	com.google.javascript.rhino.Node p_n_3308_line_734 = n;
	com.google.javascript.rhino.JSDocInfo type_inference_1_expr179_line_734 = p_n_3308_line_734.getJSDocInfo();
	boolean type_inference_1_expr178_line_734 = type_inference_1_expr179_line_734 != null;
	boolean type_inference_1_expr177_line_734 = type_inference_1_expr178_line_734
			&& n.getJSDocInfo().getLendsName() != null;
	int PROBE_END_LINE_734 = 735;
	boolean hasLendsName = type_inference_1_expr177_line_734;
    int PROBE_START_LINE_736 = 738;
	com.google.javascript.rhino.jstype.ObjectType v_object_type_3312_line_736 = objectType;
	boolean type_inference_1_expr181_line_736 = v_object_type_3312_line_736.hasReferenceName();
	boolean type_inference_1_expr182_line_736 = true;
	if (type_inference_1_expr181_line_736) {
		boolean v_has_lends_name_3313_line_736 = hasLendsName;
		type_inference_1_expr182_line_736 = !v_has_lends_name_3313_line_736;
	}
	boolean type_inference_1_expr180_line_736 = type_inference_1_expr181_line_736 && type_inference_1_expr182_line_736;
	int PROBE_END_LINE_736 = 738;
	if (type_inference_1_expr180_line_736) {
      return scope;
    }

    int PROBE_START_LINE_740 = 741;
	String type_inference_1_expr183_line_740 = NodeUtil.getBestLValueName(NodeUtil.getBestLValue(n));
	int PROBE_END_LINE_740 = 741;
	String qObjName = type_inference_1_expr183_line_740;
    int PROBE_START_LINE_741 = 741;
	boolean FOR_STMT_TOGGLE_LINE_742 = false;
	int PROBE_END_LINE_741 = 741;
	for (Node name = null; true;) {
      int PROBE_START_LINE_744 = 744;
			if (!FOR_STMT_TOGGLE_LINE_742) {
				FOR_STMT_TOGGLE_LINE_742 = true;
				com.google.javascript.rhino.Node p_n_3308_line_742 = n;
				Node type_inference_1_expr186_line_742 = p_n_3308_line_742.getFirstChild();
				name = type_inference_1_expr186_line_742;
			} else {
				if (FOR_STMT_TOGGLE_LINE_742) {
					com.google.javascript.rhino.Node v_name_3315_line_743 = name;
					com.google.javascript.rhino.Node type_inference_1_expr189_line_743 = v_name_3315_line_743.getNext();
					name = type_inference_1_expr189_line_743;
				} else {
					FOR_STMT_TOGGLE_LINE_742 = true;
				}
			}
			com.google.javascript.rhino.Node v_name_3315_line_742 = name;
			boolean type_inference_1_expr187_line_742 = v_name_3315_line_742 != null;
			if (!(type_inference_1_expr187_line_742)) {
				break;
			}
			com.google.javascript.rhino.Node v_name_3315_line_744 = name;
			String type_inference_1_expr190_line_744 = NodeUtil.getObjectLitKeyName(v_name_3315_line_744);
			int PROBE_END_LINE_744 = 744;
	String memberName = type_inference_1_expr190_line_744;
      int PROBE_START_LINE_745 = 770;
	String v_member_name_3316_line_745 = memberName;
	boolean type_inference_1_expr191_line_745 = v_member_name_3316_line_745 != null;
	int PROBE_END_LINE_745 = 770;
	if (type_inference_1_expr191_line_745) {
        int PROBE_START_LINE_746 = 746;
		com.google.javascript.rhino.Node v_name_3315_line_746 = name;
		com.google.javascript.rhino.Node type_inference_1_expr193_line_746 = v_name_3315_line_746.getFirstChild();
		JSType type_inference_1_expr192_line_746 = type_inference_1_expr193_line_746.getJSType();
		int PROBE_END_LINE_746 = 746;
		JSType rawValueType =  type_inference_1_expr192_line_746;
        int PROBE_START_LINE_747 = 748;
		JSType type_inference_1_expr194_line_747 = NodeUtil.getObjectLitKeyTypeFromValueType(name, rawValueType);
		int PROBE_END_LINE_747 = 748;
		JSType valueType = type_inference_1_expr194_line_747;
        int PROBE_START_LINE_749 = 751;
		com.google.javascript.rhino.jstype.JSType v_value_type_3318_line_749 = valueType;
		boolean type_inference_1_expr195_line_749 = v_value_type_3318_line_749 == null;
		int PROBE_END_LINE_749 = 751;
		if (type_inference_1_expr195_line_749) {
          valueType = unknownType;
        }
        int PROBE_START_LINE_752 = 752;
		com.google.javascript.rhino.jstype.ObjectType v_object_type_3312_line_752 = objectType;
		String v_member_name_3316_line_752 = memberName;
		com.google.javascript.rhino.jstype.JSType v_value_type_3318_line_752 = valueType;
		com.google.javascript.rhino.Node v_name_3315_line_752 = name;
		int PROBE_END_LINE_752 = 752;
		v_object_type_3312_line_752.defineInferredProperty(v_member_name_3316_line_752, v_value_type_3318_line_752, v_name_3315_line_752);

        int PROBE_START_LINE_755 = 767;
		String v_q_obj_name_3314_line_755 = qObjName;
		boolean type_inference_1_expr198_line_755 = v_q_obj_name_3314_line_755 != null;
		boolean type_inference_1_expr199_line_755 = true;
		if (type_inference_1_expr198_line_755) {
			com.google.javascript.rhino.Node v_name_3315_line_755 = name;
			type_inference_1_expr199_line_755 = v_name_3315_line_755.isStringKey();
		}
		boolean type_inference_1_expr197_line_755 = type_inference_1_expr198_line_755
				&& type_inference_1_expr199_line_755;
		int PROBE_END_LINE_755 = 767;
		// Do normal flow inference if this is a direct property assignment.
        if (type_inference_1_expr197_line_755) {
          int PROBE_START_LINE_756 = 756;
			String v_q_obj_name_3314_line_756 = qObjName;
			String v_member_name_3316_line_756 = memberName;
			String type_inference_1_expr200_line_756 = v_q_obj_name_3314_line_756 + "." + v_member_name_3316_line_756;
			int PROBE_END_LINE_756 = 756;
		String qKeyName = type_inference_1_expr200_line_756;
          int PROBE_START_LINE_757 = 757;
		com.google.javascript.jscomp.Scope f_syntactic_scope_3237_line_757 = syntacticScope;
		String v_q_key_name_3319_line_757 = qKeyName;
		Var type_inference_1_expr201_line_757 = f_syntactic_scope_3237_line_757.getVar(v_q_key_name_3319_line_757);
		int PROBE_END_LINE_757 = 757;
		Var var = type_inference_1_expr201_line_757;
          int PROBE_START_LINE_758 = 758;
		com.google.javascript.jscomp.Scope.Var v_var_3320_line_758 = var;
		boolean type_inference_1_expr203_line_758 = v_var_3320_line_758 == null;
		com.google.javascript.rhino.jstype.JSType type_inference_1_expr204_line_758 = null;
		if (!type_inference_1_expr203_line_758) {
			com.google.javascript.jscomp.Scope.Var v_var_3320_line_758_v1 = var;
			type_inference_1_expr204_line_758 = v_var_3320_line_758_v1.getType();
		}
		JSType type_inference_1_expr202_line_758 = type_inference_1_expr203_line_758
				? null
				: type_inference_1_expr204_line_758;
		int PROBE_END_LINE_758 = 758;
		JSType oldType = type_inference_1_expr202_line_758;
          int PROBE_START_LINE_759 = 762;
		com.google.javascript.jscomp.Scope.Var v_var_3320_line_759 = var;
		boolean type_inference_1_expr206_line_759 = v_var_3320_line_759 != null;
		boolean type_inference_1_expr207_line_759 = true;
		if (type_inference_1_expr206_line_759) {
			com.google.javascript.jscomp.Scope.Var v_var_3320_line_759_v1 = var;
			type_inference_1_expr207_line_759 = v_var_3320_line_759_v1.isTypeInferred();
		}
		boolean type_inference_1_expr205_line_759 = type_inference_1_expr206_line_759
				&& type_inference_1_expr207_line_759;
		int PROBE_END_LINE_759 = 762;
		if (type_inference_1_expr205_line_759) {
            int PROBE_START_LINE_760 = 761;
			com.google.javascript.jscomp.Scope.Var v_var_3320_line_760 = var;
			com.google.javascript.rhino.jstype.JSType v_old_type_3321_line_760 = oldType;
			boolean type_inference_1_expr210_line_760 = v_old_type_3321_line_760 == null;
			com.google.javascript.rhino.jstype.JSType type_inference_1_expr209_line_760 = type_inference_1_expr210_line_760
					? valueType
					: oldType.getLeastSupertype(oldType);
			int PROBE_END_LINE_760 = 761;
			v_var_3320_line_760.setType(type_inference_1_expr209_line_760);
          }

          int PROBE_START_LINE_764 = 766;
		com.google.javascript.jscomp.type.FlowScope p_scope_3309_line_764 = scope;
		com.google.javascript.rhino.Node v_name_3315_line_764 = name;
		String v_q_key_name_3319_line_764 = qKeyName;
		int PROBE_END_LINE_764 = 766;
		p_scope_3309_line_764.inferQualifiedSlot(v_name_3315_line_764, v_q_key_name_3319_line_764,
              oldType == null ? unknownType : oldType,
              valueType);
        }
      } else {
        n.setJSType(unknownType);
      }
    }
    int PROBE_START_LINE_772 = 772;
	com.google.javascript.jscomp.type.FlowScope p_scope_3309_line_772 = scope;
	int PROBE_END_LINE_772 = 772;
	return p_scope_3309_line_772;
  }

  private FlowScope traverseAdd(Node n, FlowScope scope) {
    Node left = n.getFirstChild();
    Node right = left.getNext();
    scope = traverseChildren(n, scope);

    JSType leftType = left.getJSType();
    JSType rightType = right.getJSType();

    JSType type = unknownType;
    if (leftType != null && rightType != null) {
      boolean leftIsUnknown = leftType.isUnknownType();
      boolean rightIsUnknown = rightType.isUnknownType();
      if (leftIsUnknown && rightIsUnknown) {
        type = unknownType;
      } else if ((!leftIsUnknown && leftType.isString()) ||
                 (!rightIsUnknown && rightType.isString())) {
        type = getNativeType(STRING_TYPE);
      } else if (leftIsUnknown || rightIsUnknown) {
        type = unknownType;
      } else if (isAddedAsNumber(leftType) && isAddedAsNumber(rightType)) {
        type = getNativeType(NUMBER_TYPE);
      } else {
        type = registry.createUnionType(STRING_TYPE, NUMBER_TYPE);
      }
    }
    n.setJSType(type);

    if (n.isAssignAdd()) {
      updateScopeForTypeChange(scope, left, leftType, type);
    }

    return scope;
  }

  private boolean isAddedAsNumber(JSType type) {
    return type.isSubtype(registry.createUnionType(VOID_TYPE, NULL_TYPE,
        NUMBER_VALUE_OR_OBJECT_TYPE, BOOLEAN_TYPE, BOOLEAN_OBJECT_TYPE));
  }

  private FlowScope traverseHook(Node n, FlowScope scope) {
    Node condition = n.getFirstChild();
    Node trueNode = condition.getNext();
    Node falseNode = n.getLastChild();

    // verify the condition
    scope = traverse(condition, scope);

    // reverse abstract interpret the condition to produce two new scopes
    FlowScope trueScope = reverseInterpreter.
        getPreciserScopeKnowingConditionOutcome(
            condition, scope, true);
    FlowScope falseScope = reverseInterpreter.
        getPreciserScopeKnowingConditionOutcome(
            condition, scope, false);

    // traverse the true node with the trueScope
    traverse(trueNode, trueScope.createChildFlowScope());

    // traverse the false node with the falseScope
    traverse(falseNode, falseScope.createChildFlowScope());

    // meet true and false nodes' types and assign
    JSType trueType = trueNode.getJSType();
    JSType falseType = falseNode.getJSType();
    if (trueType != null && falseType != null) {
      n.setJSType(trueType.getLeastSupertype(falseType));
    } else {
      n.setJSType(null);
    }

    return scope.createChildFlowScope();
  }

  private FlowScope traverseCall(Node n, FlowScope scope) {
    scope = traverseChildren(n, scope);

    Node left = n.getFirstChild();
    JSType functionType = getJSType(left).restrictByNotNullOrUndefined();
    if (functionType.isFunctionType()) {
      FunctionType fnType = functionType.toMaybeFunctionType();
      n.setJSType(fnType.getReturnType());
      backwardsInferenceFromCallSite(n, fnType);
    } else if (functionType.isEquivalentTo(
        getNativeType(CHECKED_UNKNOWN_TYPE))) {
      n.setJSType(getNativeType(CHECKED_UNKNOWN_TYPE));
    }

    scope = tightenTypesAfterAssertions(scope, n);
    return scope;
  }

  private FlowScope tightenTypesAfterAssertions(FlowScope scope,
      Node callNode) {
    Node left = callNode.getFirstChild();
    Node firstParam = left.getNext();
    AssertionFunctionSpec assertionFunctionSpec =
        assertionFunctionsMap.get(left.getQualifiedName());
    if (assertionFunctionSpec == null || firstParam == null) {
      return scope;
    }
    Node assertedNode = assertionFunctionSpec.getAssertedParam(firstParam);
    if (assertedNode == null) {
      return scope;
    }
    JSType assertedType = assertionFunctionSpec.getAssertedType(
        callNode, registry);
    String assertedNodeName = assertedNode.getQualifiedName();

    JSType narrowed;
    // Handle assertions that enforce expressions evaluate to true.
    if (assertedType == null) {
      // Handle arbitrary expressions within the assert.
      scope = reverseInterpreter.getPreciserScopeKnowingConditionOutcome(
          assertedNode, scope, true);
      // Build the result of the assertExpression
      narrowed = getJSType(assertedNode).restrictByNotNullOrUndefined();
    } else {
      // Handle assertions that enforce expressions are of a certain type.
      JSType type = getJSType(assertedNode);
      narrowed = type.getGreatestSubtype(assertedType);
      if (assertedNodeName != null && type.differsFrom(narrowed)) {
        scope = narrowScope(scope, assertedNode, narrowed);
      }
    }

    callNode.setJSType(narrowed);
    return scope;
  }

  private FlowScope narrowScope(FlowScope scope, Node node, JSType narrowed) {
    if (node.isThis()) {
      // "this" references don't need to be modeled in the control flow graph.
      return scope;
    }

    scope = scope.createChildFlowScope();
    if (node.isGetProp()) {
      scope.inferQualifiedSlot(
          node, node.getQualifiedName(), getJSType(node), narrowed);
    } else {
      redeclareSimpleVar(scope, node, narrowed);
    }
    return scope;
  }

  /**
   * We only do forward type inference. We do not do full backwards
   * type inference.
   *
   * In other words, if we have,
   * <code>
   * var x = f();
   * g(x);
   * </code>
   * a forward type-inference engine would try to figure out the type
   * of "x" from the return type of "f". A backwards type-inference engine
   * would try to figure out the type of "x" from the parameter type of "g".
   *
   * However, there are a few special syntactic forms where we do some
   * some half-assed backwards type-inference, because programmers
   * expect it in this day and age. To take an example from Java,
   * <code>
   * List<String> x = Lists.newArrayList();
   * </code>
   * The Java compiler will be able to infer the generic type of the List
   * returned by newArrayList().
   *
   * In much the same way, we do some special-case backwards inference for
   * JS. Those cases are enumerated here.
   */
  private void backwardsInferenceFromCallSite(Node n, FunctionType fnType) {
    boolean updatedFnType = inferTemplatedTypesForCall(n, fnType);
    if (updatedFnType) {
      fnType = n.getFirstChild().getJSType().toMaybeFunctionType();
    }
    updateTypeOfParameters(n, fnType);
    updateBind(n);
  }

  /**
   * When "bind" is called on a function, we infer the type of the returned
   * "bound" function by looking at the number of parameters in the call site.
   */
  private void updateBind(Node n) {
    CodingConvention.Bind bind =
        compiler.getCodingConvention().describeFunctionBind(n, true);
    if (bind == null) {
      return;
    }

    FunctionType callTargetFn = getJSType(bind.target)
        .restrictByNotNullOrUndefined().toMaybeFunctionType();
    if (callTargetFn == null) {
      return;
    }

    n.setJSType(
        callTargetFn.getBindReturnType(
            // getBindReturnType expects the 'this' argument to be included.
            bind.getBoundParameterCount() + 1));
  }

  /**
   * For functions with function parameters, type inference will set the type of
   * a function literal argument from the function parameter type.
   */
  private void updateTypeOfParameters(Node n, FunctionType fnType) {
    int i = 0;
    int childCount = n.getChildCount();
    for (Node iParameter : fnType.getParameters()) {
      if (i + 1 >= childCount) {
        // TypeCheck#visitParametersList will warn so we bail.
        return;
      }

      JSType iParameterType = getJSType(iParameter);
      Node iArgument = n.getChildAtIndex(i + 1);
      JSType iArgumentType = getJSType(iArgument);
      inferPropertyTypesToMatchConstraint(iArgumentType, iParameterType);

      // TODO(johnlenz): Filter out non-function types
      // (such as null and undefined) as
      // we only care about FUNCTION subtypes here.
      JSType restrictedParameter = iParameterType
          .restrictByNotNullOrUndefined()
          .toMaybeFunctionType();
      if (restrictedParameter != null) {
        if (iArgument.isFunction() &&
            iArgumentType.isFunctionType() &&
            iArgument.getJSDocInfo() == null) {
          iArgument.setJSType(restrictedParameter);
        }
      }
      i++;
    }
  }

  private Map<TemplateType, JSType> inferTemplateTypesFromParameters(
      FunctionType fnType, Node call) {
    if (fnType.getTemplateTypeMap().getTemplateKeys().isEmpty()) {
      return Collections.emptyMap();
    }

    Map<TemplateType, JSType> resolvedTypes = Maps.newIdentityHashMap();

    Node callTarget = call.getFirstChild();
    if (NodeUtil.isGet(callTarget)) {
      Node obj = callTarget.getFirstChild();
      maybeResolveTemplatedType(
          fnType.getTypeOfThis(),
          getJSType(obj),
          resolvedTypes);
    }

    if (call.hasMoreThanOneChild()) {
      maybeResolveTemplateTypeFromNodes(
          fnType.getParameters(),
          call.getChildAtIndex(1).siblings(),
          resolvedTypes);
    }
    return resolvedTypes;
  }

  private void maybeResolveTemplatedType(
      JSType paramType,
      JSType argType,
      Map<TemplateType, JSType> resolvedTypes) {
    if (paramType.isTemplateType()) {
      // @param {T}
      resolvedTemplateType(
          resolvedTypes, paramType.toMaybeTemplateType(), argType);
    } else if (paramType.isUnionType()) {
      // @param {Array.<T>|NodeList|Arguments|{length:number}}
      UnionType unionType = paramType.toMaybeUnionType();
      for (JSType alernative : unionType.getAlternates()) {
        maybeResolveTemplatedType(alernative, argType, resolvedTypes);
      }
    } else if (paramType.isFunctionType()) {
      FunctionType paramFunctionType = paramType.toMaybeFunctionType();
      FunctionType argFunctionType = argType
          .restrictByNotNullOrUndefined()
          .collapseUnion()
          .toMaybeFunctionType();
      if (argFunctionType != null && argFunctionType.isSubtype(paramType)) {
        // infer from return type of the function type
        maybeResolveTemplatedType(
            paramFunctionType.getTypeOfThis(),
            argFunctionType.getTypeOfThis(), resolvedTypes);
        // infer from return type of the function type
        maybeResolveTemplatedType(
            paramFunctionType.getReturnType(),
            argFunctionType.getReturnType(), resolvedTypes);
        // infer from parameter types of the function type
        maybeResolveTemplateTypeFromNodes(
            paramFunctionType.getParameters(),
            argFunctionType.getParameters(), resolvedTypes);
      }
    } else if (paramType.isTemplatizedType()) {
      // @param {Array.<T>}
      ObjectType referencedParamType = paramType
          .toMaybeTemplatizedType()
          .getReferencedType();
      JSType argObjectType = argType
          .restrictByNotNullOrUndefined()
          .collapseUnion();

      if (argObjectType.isSubtype(referencedParamType)) {
        // If the argument type is a subtype of the parameter type, resolve any
        // template types amongst their templatized types.
        TemplateTypeMap paramTypeMap = paramType.getTemplateTypeMap();
        TemplateTypeMap argTypeMap = argObjectType.getTemplateTypeMap();
        for (TemplateType key : paramTypeMap.getTemplateKeys()) {
          maybeResolveTemplatedType(
              paramTypeMap.getTemplateType(key),
              argTypeMap.getTemplateType(key),
              resolvedTypes);
        }
      }
    }
  }

  private void maybeResolveTemplateTypeFromNodes(
      Iterable<Node> declParams,
      Iterable<Node> callParams,
      Map<TemplateType, JSType> resolvedTypes) {
    maybeResolveTemplateTypeFromNodes(
        declParams.iterator(), callParams.iterator(), resolvedTypes);
  }

  private void maybeResolveTemplateTypeFromNodes(
      Iterator<Node> declParams,
      Iterator<Node> callParams,
      Map<TemplateType, JSType> resolvedTypes) {
    while (declParams.hasNext() && callParams.hasNext()) {
      Node declParam = declParams.next();
      maybeResolveTemplatedType(
          getJSType(declParam),
          getJSType(callParams.next()),
          resolvedTypes);
      if (declParam.isVarArgs()) {
        while (callParams.hasNext()) {
          maybeResolveTemplatedType(
              getJSType(declParam),
              getJSType(callParams.next()),
              resolvedTypes);
        }
      }
    }
  }

  private void resolvedTemplateType(
      Map<TemplateType, JSType> map, TemplateType template, JSType resolved) {
    JSType previous = map.get(template);
    if (!resolved.isUnknownType()) {
      if (previous == null) {
        map.put(template, resolved);
      } else {
        JSType join = previous.getLeastSupertype(resolved);
        map.put(template, join);
      }
    }
  }

  private static class TemplateTypeReplacer extends ModificationVisitor {
    private final Map<TemplateType, JSType> replacements;
    private final JSTypeRegistry registry;
    boolean madeChanges = false;

    TemplateTypeReplacer(
        JSTypeRegistry registry, Map<TemplateType, JSType> replacements) {
      super(registry);
      this.registry = registry;
      this.replacements = replacements;
    }

    @Override
    public JSType caseTemplateType(TemplateType type) {
      madeChanges = true;
      JSType replacement = replacements.get(type);
      return replacement != null ?
          replacement : registry.getNativeType(UNKNOWN_TYPE);
    }
  }

  /**
   * For functions with function(this: T, ...) and T as parameters, type
   * inference will set the type of this on a function literal argument to the
   * the actual type of T.
   */
  private boolean inferTemplatedTypesForCall(
      Node n, FunctionType fnType) {
    if (fnType.getTemplateTypeMap().getTemplateKeys().isEmpty()) {
      return false;
    }

    // Try to infer the template types
    Map<TemplateType, JSType> inferred = inferTemplateTypesFromParameters(
        fnType, n);

    // Replace all template types. If we couldn't find a replacement, we
    // replace it with UNKNOWN.
    TemplateTypeReplacer replacer = new TemplateTypeReplacer(
        registry, inferred);
    Node callTarget = n.getFirstChild();

    FunctionType replacementFnType = fnType.visit(replacer)
        .toMaybeFunctionType();
    Preconditions.checkNotNull(replacementFnType);

    callTarget.setJSType(replacementFnType);
    n.setJSType(replacementFnType.getReturnType());

    return replacer.madeChanges;
  }

  private FlowScope traverseNew(Node n, FlowScope scope) {
    scope = traverseChildren(n, scope);

    Node constructor = n.getFirstChild();
    JSType constructorType = constructor.getJSType();
    JSType type = null;
    if (constructorType != null) {
      constructorType = constructorType.restrictByNotNullOrUndefined();
      if (constructorType.isUnknownType()) {
        type = unknownType;
      } else {
        FunctionType ct = constructorType.toMaybeFunctionType();
        if (ct == null && constructorType instanceof FunctionType) {
          // If constructorType is a NoObjectType, then toMaybeFunctionType will
          // return null. But NoObjectType implements the FunctionType
          // interface, precisely because it can validly construct objects.
          ct = (FunctionType) constructorType;
        }
        if (ct != null && ct.isConstructor()) {
          backwardsInferenceFromCallSite(n, ct);

          // If necessary, create a TemplatizedType wrapper around the instance
          // type, based on the types of the constructor parameters.
          ObjectType instanceType = ct.getInstanceType();
          Map<TemplateType, JSType> inferredTypes =
              inferTemplateTypesFromParameters(ct, n);
          if (inferredTypes.isEmpty()) {
            type = instanceType;
          } else {
            type = registry.createTemplatizedType(instanceType, inferredTypes);
          }
        }
      }
    }
    n.setJSType(type);
    return scope;
  }

  private BooleanOutcomePair traverseAnd(Node n, FlowScope scope) {
    return traverseShortCircuitingBinOp(n, scope, true);
  }

  private FlowScope traverseChildren(Node n, FlowScope scope) {
    int PROBE_START_LINE_1232 = 1232;
	boolean FOR_STMT_TOGGLE_LINE_1233 = false;
	int PROBE_END_LINE_1232 = 1232;
	for (Node el = null; true;) {
      int PROBE_START_LINE_1234 = 1234;
		if (!FOR_STMT_TOGGLE_LINE_1233) {
			FOR_STMT_TOGGLE_LINE_1233 = true;
			com.google.javascript.rhino.Node p_n_3362_line_1233 = n;
			Node type_inference_1_expr215_line_1233 = p_n_3362_line_1233.getFirstChild();
			el = type_inference_1_expr215_line_1233;
		} else {
			if (FOR_STMT_TOGGLE_LINE_1233) {
				com.google.javascript.rhino.Node v_el_3364_line_1233_v1 = el;
				com.google.javascript.rhino.Node type_inference_1_expr218_line_1233 = v_el_3364_line_1233_v1.getNext();
				el = type_inference_1_expr218_line_1233;
			} else {
				FOR_STMT_TOGGLE_LINE_1233 = true;
			}
		}
		com.google.javascript.rhino.Node v_el_3364_line_1233 = el;
		boolean type_inference_1_expr216_line_1233 = v_el_3364_line_1233 != null;
		if (!(type_inference_1_expr216_line_1233)) {
			break;
		}
		com.google.javascript.rhino.Node v_el_3364_line_1234 = el;
		com.google.javascript.jscomp.type.FlowScope p_scope_3363_line_1234 = scope;
		com.google.javascript.jscomp.type.FlowScope type_inference_1_expr220_line_1234 = traverse(v_el_3364_line_1234,
				p_scope_3363_line_1234);
		int PROBE_END_LINE_1234 = 1234;
	scope = type_inference_1_expr220_line_1234;
    }
    int PROBE_START_LINE_1236 = 1236;
	com.google.javascript.jscomp.type.FlowScope p_scope_3363_line_1236 = scope;
	int PROBE_END_LINE_1236 = 1236;
	return p_scope_3363_line_1236;
  }

  private FlowScope traverseGetElem(Node n, FlowScope scope) {
    scope = traverseChildren(n, scope);
    JSType type = getJSType(n.getFirstChild()).restrictByNotNullOrUndefined();
    TemplateTypeMap typeMap = type.getTemplateTypeMap();
    if (typeMap.hasTemplateType(registry.getObjectElementKey())) {
      n.setJSType(typeMap.getTemplateType(registry.getObjectElementKey()));
    }
    return dereferencePointer(n.getFirstChild(), scope);
  }

  private FlowScope traverseGetProp(Node n, FlowScope scope) {
    int PROBE_START_LINE_1250 = 1250;
	com.google.javascript.rhino.Node p_n_3367_line_1250 = n;
	Node type_inference_1_expr221_line_1250 = p_n_3367_line_1250.getFirstChild();
	int PROBE_END_LINE_1250 = 1250;
	Node objNode = type_inference_1_expr221_line_1250;
    int PROBE_START_LINE_1251 = 1251;
	com.google.javascript.rhino.Node p_n_3367_line_1251 = n;
	Node type_inference_1_expr222_line_1251 = p_n_3367_line_1251.getLastChild();
	int PROBE_END_LINE_1251 = 1251;
	Node property = type_inference_1_expr222_line_1251;
    int PROBE_START_LINE_1252 = 1252;
	com.google.javascript.rhino.Node p_n_3367_line_1252 = n;
	com.google.javascript.jscomp.type.FlowScope p_scope_3368_line_1252 = scope;
	com.google.javascript.jscomp.type.FlowScope type_inference_1_expr224_line_1252 = traverseChildren(
			p_n_3367_line_1252, p_scope_3368_line_1252);
	int PROBE_END_LINE_1252 = 1252;
	scope = type_inference_1_expr224_line_1252;

    int PROBE_START_LINE_1254 = 1256;
	com.google.javascript.rhino.Node p_n_3367_line_1254 = n;
	int PROBE_END_LINE_1254 = 1256;
	p_n_3367_line_1254.setJSType(
        getPropertyType(
            objNode.getJSType(), property.getString(), n, scope));
    int PROBE_START_LINE_1257 = 1257;
	com.google.javascript.rhino.Node p_n_3367_line_1257 = n;
	com.google.javascript.rhino.Node type_inference_1_expr228_line_1257 = p_n_3367_line_1257.getFirstChild();
	com.google.javascript.jscomp.type.FlowScope p_scope_3368_line_1257 = scope;
	com.google.javascript.jscomp.type.FlowScope type_inference_1_expr227_line_1257 = dereferencePointer(
			type_inference_1_expr228_line_1257, p_scope_3368_line_1257);
	int PROBE_END_LINE_1257 = 1257;
	return type_inference_1_expr227_line_1257;
  }

  /**
   * Suppose X is an object with inferred properties.
   * Suppose also that X is used in a way where it would only type-check
   * correctly if some of those properties are widened.
   * Then we should be polite and automatically widen X's properties for him.
   *
   * For a concrete example, consider:
   * param x {{prop: (number|undefined)}}
   * function f(x) {}
   * f({});
   *
   * If we give the anonymous object an inferred property of (number|undefined),
   * then this code will type-check appropriately.
   */
  private void inferPropertyTypesToMatchConstraint(
      JSType type, JSType constraint) {
    if (type == null || constraint == null) {
      return;
    }

    type.matchConstraint(constraint);
  }

  /**
   * If we access a property of a symbol, then that symbol is not
   * null or undefined.
   */
  private FlowScope dereferencePointer(Node n, FlowScope scope) {
    int PROBE_START_LINE_1288 = 1294;
	com.google.javascript.rhino.Node p_n_3373_line_1288 = n;
	boolean type_inference_1_expr229_line_1288 = p_n_3373_line_1288.isQualifiedName();
	int PROBE_END_LINE_1288 = 1294;
	if (type_inference_1_expr229_line_1288) {
      int PROBE_START_LINE_1289 = 1289;
		com.google.javascript.rhino.Node p_n_3373_line_1289 = n;
		JSType type_inference_1_expr230_line_1289 = getJSType(p_n_3373_line_1289);
		int PROBE_END_LINE_1289 = 1289;
	JSType type = type_inference_1_expr230_line_1289;
      int PROBE_START_LINE_1290 = 1290;
	com.google.javascript.rhino.jstype.JSType v_type_3375_line_1290 = type;
	JSType type_inference_1_expr231_line_1290 = v_type_3375_line_1290.restrictByNotNullOrUndefined();
	int PROBE_END_LINE_1290 = 1290;
	JSType narrowed = type_inference_1_expr231_line_1290;
      int PROBE_START_LINE_1291 = 1293;
	com.google.javascript.rhino.jstype.JSType v_type_3375_line_1291 = type;
	com.google.javascript.rhino.jstype.JSType v_narrowed_3376_line_1291 = narrowed;
	boolean type_inference_1_expr232_line_1291 = v_type_3375_line_1291 != v_narrowed_3376_line_1291;
	int PROBE_END_LINE_1291 = 1293;
	if (type_inference_1_expr232_line_1291) {
        scope = narrowScope(scope, n, narrowed);
      }
    }
    int PROBE_START_LINE_1295 = 1295;
	com.google.javascript.jscomp.type.FlowScope p_scope_3374_line_1295 = scope;
	int PROBE_END_LINE_1295 = 1295;
	return p_scope_3374_line_1295;
  }

  private JSType getPropertyType(JSType objType, String propName,
      Node n, FlowScope scope) {
    // We often have a couple of different types to choose from for the
    // property. Ordered by accuracy, we have
    // 1) A locally inferred qualified name (which is in the FlowScope)
    // 2) A globally declared qualified name (which is in the FlowScope)
    // 3) A property on the owner type (which is on objType)
    // 4) A name in the type registry (as a last resort)
    JSType propertyType = null;
    boolean isLocallyInferred = false;

    int PROBE_START_LINE_1310 = 1310;
	com.google.javascript.rhino.Node p_n_3379_line_1310 = n;
	String type_inference_1_expr233_line_1310 = p_n_3379_line_1310.getQualifiedName();
	int PROBE_END_LINE_1310 = 1310;
	// Scopes sometimes contain inferred type info about qualified names.
    String qualifiedName = type_inference_1_expr233_line_1310;
    int PROBE_START_LINE_1311 = 1311;
	com.google.javascript.jscomp.type.FlowScope p_scope_3380_line_1311 = scope;
	String v_qualified_name_3383_line_1311 = qualifiedName;
	StaticSlot<JSType> type_inference_1_expr234_line_1311 = p_scope_3380_line_1311
			.getSlot(v_qualified_name_3383_line_1311);
	int PROBE_END_LINE_1311 = 1311;
	StaticSlot<JSType> var = type_inference_1_expr234_line_1311;
    int PROBE_START_LINE_1312 = 1321;
	StaticSlot<com.google.javascript.rhino.jstype.JSType> v_var_3384_line_1312 = var;
	boolean type_inference_1_expr235_line_1312 = v_var_3384_line_1312 != null;
	int PROBE_END_LINE_1312 = 1321;
	if (type_inference_1_expr235_line_1312) {
      int PROBE_START_LINE_1313 = 1313;
		StaticSlot<com.google.javascript.rhino.jstype.JSType> v_var_3384_line_1313 = var;
		JSType type_inference_1_expr236_line_1313 = v_var_3384_line_1313.getType();
		int PROBE_END_LINE_1313 = 1313;
	JSType varType = type_inference_1_expr236_line_1313;
      int PROBE_START_LINE_1314 = 1320;
	com.google.javascript.rhino.jstype.JSType v_var_type_3385_line_1314 = varType;
	boolean type_inference_1_expr237_line_1314 = v_var_type_3385_line_1314 != null;
	int PROBE_END_LINE_1314 = 1320;
	if (type_inference_1_expr237_line_1314) {
        int PROBE_START_LINE_1315 = 1315;
		StaticSlot<com.google.javascript.rhino.jstype.JSType> v_var_3384_line_1315 = var;
		boolean type_inference_1_expr239_line_1315 = v_var_3384_line_1315.isTypeInferred();
		boolean type_inference_1_expr238_line_1315 = !type_inference_1_expr239_line_1315;
		int PROBE_END_LINE_1315 = 1315;
		boolean isDeclared = type_inference_1_expr238_line_1315;
        int PROBE_START_LINE_1316 = 1316;
		StaticSlot<com.google.javascript.rhino.jstype.JSType> v_var_3384_line_1316 = var;
		com.google.javascript.jscomp.Scope f_syntactic_scope_3237_line_1316 = syntacticScope;
		String v_qualified_name_3383_line_1316 = qualifiedName;
		com.google.javascript.jscomp.Scope.Var type_inference_1_expr243_line_1316 = f_syntactic_scope_3237_line_1316
				.getSlot(v_qualified_name_3383_line_1316);
		boolean type_inference_1_expr242_line_1316 = v_var_3384_line_1316 != type_inference_1_expr243_line_1316;
		boolean type_inference_1_expr241_line_1316 = (type_inference_1_expr242_line_1316);
		int PROBE_END_LINE_1316 = 1316;
		isLocallyInferred = type_inference_1_expr241_line_1316;
        int PROBE_START_LINE_1317 = 1319;
		boolean v_is_declared_3386_line_1317 = isDeclared;
		boolean v_is_locally_inferred_3382_line_1317 = false;
		if (!v_is_declared_3386_line_1317) {
			v_is_locally_inferred_3382_line_1317 = isLocallyInferred;
		}
		boolean type_inference_1_expr244_line_1317 = v_is_declared_3386_line_1317
				|| v_is_locally_inferred_3382_line_1317;
		int PROBE_END_LINE_1317 = 1319;
		if (type_inference_1_expr244_line_1317) {
          int PROBE_START_LINE_1318 = 1318;
			com.google.javascript.rhino.jstype.JSType v_var_type_3385_line_1318 = varType;
			int PROBE_END_LINE_1318 = 1318;
		propertyType = v_var_type_3385_line_1318;
        }
      }
    }

    int PROBE_START_LINE_1323 = 1328;
	com.google.javascript.rhino.jstype.JSType v_property_type_3381_line_1323 = propertyType;
	boolean type_inference_1_expr247_line_1323 = v_property_type_3381_line_1323 == null;
	boolean type_inference_1_expr248_line_1323 = true;
	if (type_inference_1_expr247_line_1323) {
		com.google.javascript.rhino.jstype.JSType p_obj_type_3377_line_1323 = objType;
		type_inference_1_expr248_line_1323 = p_obj_type_3377_line_1323 != null;
	}
	boolean type_inference_1_expr246_line_1323 = type_inference_1_expr247_line_1323
			&& type_inference_1_expr248_line_1323;
	int PROBE_END_LINE_1323 = 1328;
	if (type_inference_1_expr246_line_1323) {
      int PROBE_START_LINE_1324 = 1324;
		com.google.javascript.rhino.jstype.JSType p_obj_type_3377_line_1324 = objType;
		String p_prop_name_3378_line_1324 = propName;
		JSType type_inference_1_expr249_line_1324 = p_obj_type_3377_line_1324
				.findPropertyType(p_prop_name_3378_line_1324);
		int PROBE_END_LINE_1324 = 1324;
	JSType foundType = type_inference_1_expr249_line_1324;
      int PROBE_START_LINE_1325 = 1327;
	com.google.javascript.rhino.jstype.JSType v_found_type_3387_line_1325 = foundType;
	boolean type_inference_1_expr250_line_1325 = v_found_type_3387_line_1325 != null;
	int PROBE_END_LINE_1325 = 1327;
	if (type_inference_1_expr250_line_1325) {
        int PROBE_START_LINE_1326 = 1326;
		com.google.javascript.rhino.jstype.JSType v_found_type_3387_line_1326 = foundType;
		int PROBE_END_LINE_1326 = 1326;
		propertyType = v_found_type_3387_line_1326;
      }
    }

    int PROBE_START_LINE_1330 = 1339;
	com.google.javascript.rhino.jstype.JSType v_property_type_3381_line_1330 = propertyType;
	boolean type_inference_1_expr253_line_1330 = v_property_type_3381_line_1330 != null;
	boolean type_inference_1_expr254_line_1330 = true;
	if (type_inference_1_expr253_line_1330) {
		com.google.javascript.rhino.jstype.JSType p_obj_type_3377_line_1330 = objType;
		type_inference_1_expr254_line_1330 = p_obj_type_3377_line_1330 != null;
	}
	boolean type_inference_1_expr252_line_1330 = type_inference_1_expr253_line_1330
			&& type_inference_1_expr254_line_1330;
	int PROBE_END_LINE_1330 = 1339;
	if (type_inference_1_expr252_line_1330) {
      int PROBE_START_LINE_1331 = 1331;
		com.google.javascript.rhino.jstype.JSType p_obj_type_3377_line_1331 = objType;
		JSType type_inference_1_expr255_line_1331 = p_obj_type_3377_line_1331.restrictByNotNullOrUndefined();
		int PROBE_END_LINE_1331 = 1331;
	JSType restrictedObjType = type_inference_1_expr255_line_1331;
      int PROBE_START_LINE_1332 = 1338;
	com.google.javascript.rhino.jstype.JSType v_restricted_obj_type_3388_line_1332 = restrictedObjType;
	boolean type_inference_1_expr257_line_1332 = v_restricted_obj_type_3388_line_1332.isTemplatizedType();
	boolean type_inference_1_expr256_line_1332 = type_inference_1_expr257_line_1332
			&& propertyType.hasAnyTemplateTypes();
	int PROBE_END_LINE_1332 = 1338;
	if (type_inference_1_expr256_line_1332) {
        TemplateTypeMap typeMap = restrictedObjType.getTemplateTypeMap();
        TemplateTypeMapReplacer replacer = new TemplateTypeMapReplacer(
            registry, typeMap);
        propertyType = propertyType.visit(replacer);
      }
    }

    int PROBE_START_LINE_1341 = 1348;
	com.google.javascript.rhino.jstype.JSType v_property_type_3381_line_1341 = propertyType;
	boolean type_inference_1_expr261_line_1341 = v_property_type_3381_line_1341 == null;
	boolean type_inference_1_expr262_line_1341 = false;
	if (!type_inference_1_expr261_line_1341) {
		com.google.javascript.rhino.jstype.JSType v_property_type_3381_line_1341_v1 = propertyType;
		type_inference_1_expr262_line_1341 = v_property_type_3381_line_1341_v1.isUnknownType();
	}
	boolean type_inference_1_expr260_line_1341 = type_inference_1_expr261_line_1341
			|| type_inference_1_expr262_line_1341;
	boolean type_inference_1_expr259_line_1341 = (type_inference_1_expr260_line_1341);
	boolean type_inference_1_expr258_line_1341 = type_inference_1_expr259_line_1341 && qualifiedName != null;
	int PROBE_END_LINE_1341 = 1348;
	if (type_inference_1_expr258_line_1341) {
      // If we find this node in the registry, then we can infer its type.
      ObjectType regType = ObjectType.cast(registry.getType(qualifiedName));
      if (regType != null) {
        propertyType = regType.getConstructor();
      }
    }

    int PROBE_START_LINE_1350 = 1358;
	com.google.javascript.rhino.jstype.JSType v_property_type_3381_line_1350 = propertyType;
	boolean type_inference_1_expr263_line_1350 = v_property_type_3381_line_1350 == null;
	int PROBE_END_LINE_1350 = 1358;
	if (type_inference_1_expr263_line_1350) {
      return unknownType;
    } else {
		int PROBE_START_LINE_1352 = 1358;
		com.google.javascript.rhino.jstype.JSType v_property_type_3381_line_1352 = propertyType;
		com.google.javascript.rhino.jstype.ObjectType f_unknown_type_3235_line_1352 = unknownType;
		boolean type_inference_1_expr265_line_1352 = v_property_type_3381_line_1352
				.isEquivalentTo(f_unknown_type_3235_line_1352);
		boolean v_is_locally_inferred_3382_line_1352 = true;
		if (type_inference_1_expr265_line_1352) {
			v_is_locally_inferred_3382_line_1352 = isLocallyInferred;
		}
		boolean type_inference_1_expr264_line_1352 = type_inference_1_expr265_line_1352
				&& v_is_locally_inferred_3382_line_1352;
		int PROBE_END_LINE_1352 = 1358;
		if (type_inference_1_expr264_line_1352) {
			return getNativeType(CHECKED_UNKNOWN_TYPE);
		} else {
			int PROBE_START_LINE_1357 = 1357;
			com.google.javascript.rhino.jstype.JSType v_property_type_3381_line_1357 = propertyType;
			int PROBE_END_LINE_1357 = 1357;
			return v_property_type_3381_line_1357;
		}
	}
  }

  private BooleanOutcomePair traverseOr(Node n, FlowScope scope) {
    return traverseShortCircuitingBinOp(n, scope, false);
  }

  private BooleanOutcomePair traverseShortCircuitingBinOp(
      Node n, FlowScope scope, boolean condition) {
    Node left = n.getFirstChild();
    Node right = n.getLastChild();

    // type the left node
    BooleanOutcomePair leftLiterals =
        traverseWithinShortCircuitingBinOp(left,
            scope.createChildFlowScope());
    JSType leftType = left.getJSType();

    // reverse abstract interpret the left node to produce the correct
    // scope in which to verify the right node
    FlowScope rightScope = reverseInterpreter.
        getPreciserScopeKnowingConditionOutcome(
            left, leftLiterals.getOutcomeFlowScope(left.getType(), condition),
            condition);

    // type the right node
    BooleanOutcomePair rightLiterals =
        traverseWithinShortCircuitingBinOp(
            right, rightScope.createChildFlowScope());
    JSType rightType = right.getJSType();

    JSType type;
    BooleanOutcomePair literals;
    if (leftType != null && rightType != null) {
      leftType = leftType.getRestrictedTypeGivenToBooleanOutcome(!condition);
      if (leftLiterals.toBooleanOutcomes ==
          BooleanLiteralSet.get(!condition)) {
        // Use the restricted left type, since the right side never gets
        // evaluated.
        type = leftType;
        literals = leftLiterals;
      } else {
        // Use the join of the restricted left type knowing the outcome of the
        // ToBoolean predicate and of the right type.
        type = leftType.getLeastSupertype(rightType);
        literals =
            getBooleanOutcomePair(leftLiterals, rightLiterals, condition);
      }

      // Exclude the boolean type if the literal set is empty because a boolean
      // can never actually be returned.
      if (literals.booleanValues == BooleanLiteralSet.EMPTY &&
          getNativeType(BOOLEAN_TYPE).isSubtype(type)) {
        // Exclusion only make sense for a union type.
        if (type.isUnionType()) {
          type = type.toMaybeUnionType().getRestrictedUnion(
              getNativeType(BOOLEAN_TYPE));
        }
      }
    } else {
      type = null;
      literals = new BooleanOutcomePair(
          BooleanLiteralSet.BOTH, BooleanLiteralSet.BOTH,
          leftLiterals.getJoinedFlowScope(),
          rightLiterals.getJoinedFlowScope());
    }
    n.setJSType(type);

    return literals;
  }

  private BooleanOutcomePair traverseWithinShortCircuitingBinOp(Node n,
      FlowScope scope) {
    switch (n.getType()) {
      case Token.AND:
        return traverseAnd(n, scope);

      case Token.OR:
        return traverseOr(n, scope);

      default:
        scope = traverse(n, scope);
        return newBooleanOutcomePair(n.getJSType(), scope);
    }
  }

  /**
   * Infers the boolean outcome pair that can be taken by a
   * short-circuiting binary operation ({@code &&} or {@code ||}).
   * @see #getBooleanOutcomes(BooleanLiteralSet, BooleanLiteralSet, boolean)
   */
  BooleanOutcomePair getBooleanOutcomePair(BooleanOutcomePair left,
      BooleanOutcomePair right, boolean condition) {
    return new BooleanOutcomePair(
        getBooleanOutcomes(left.toBooleanOutcomes, right.toBooleanOutcomes,
                           condition),
        getBooleanOutcomes(left.booleanValues, right.booleanValues, condition),
        left.getJoinedFlowScope(), right.getJoinedFlowScope());
  }

  /**
   * Infers the boolean literal set that can be taken by a
   * short-circuiting binary operation ({@code &&} or {@code ||}).
   * @param left the set of possible {@code ToBoolean} predicate results for
   *    the expression on the left side of the operator
   * @param right the set of possible {@code ToBoolean} predicate results for
   *    the expression on the right side of the operator
   * @param condition the left side {@code ToBoolean} predicate result that
   *    causes the right side to get evaluated (i.e. not short-circuited)
   * @return a set of possible {@code ToBoolean} predicate results for the
   *    entire expression
   */
  static BooleanLiteralSet getBooleanOutcomes(BooleanLiteralSet left,
      BooleanLiteralSet right, boolean condition) {
    return right.union(left.intersection(BooleanLiteralSet.get(!condition)));
  }

  /**
   * When traversing short-circuiting binary operations, we need to keep track
   * of two sets of boolean literals:
   * 1. {@code toBooleanOutcomes}: boolean literals as converted from any types,
   * 2. {@code booleanValues}: boolean literals from just boolean types.
   */
  private final class BooleanOutcomePair {
    final BooleanLiteralSet toBooleanOutcomes;
    final BooleanLiteralSet booleanValues;

    // The scope if only half of the expression executed, when applicable.
    final FlowScope leftScope;

    // The scope when the whole expression executed.
    final FlowScope rightScope;

    // The scope when we don't know how much of the expression is executed.
    FlowScope joinedScope = null;

    BooleanOutcomePair(
        BooleanLiteralSet toBooleanOutcomes, BooleanLiteralSet booleanValues,
        FlowScope leftScope, FlowScope rightScope) {
      this.toBooleanOutcomes = toBooleanOutcomes;
      this.booleanValues = booleanValues;
      this.leftScope = leftScope;
      this.rightScope = rightScope;
    }

    /**
     * Gets the safe estimated scope without knowing if all of the
     * subexpressions will be evaluated.
     */
    FlowScope getJoinedFlowScope() {
      if (joinedScope == null) {
        if (leftScope == rightScope) {
          joinedScope = rightScope;
        } else {
          joinedScope = join(leftScope, rightScope);
        }
      }
      return joinedScope;
    }

    /**
     * Gets the outcome scope if we do know the outcome of the entire
     * expression.
     */
    FlowScope getOutcomeFlowScope(int nodeType, boolean outcome) {
      if (nodeType == Token.AND && outcome ||
          nodeType == Token.OR && !outcome) {
        // We know that the whole expression must have executed.
        return rightScope;
      } else {
        return getJoinedFlowScope();
      }
    }
  }

  private BooleanOutcomePair newBooleanOutcomePair(
      JSType jsType, FlowScope flowScope) {
    if (jsType == null) {
      return new BooleanOutcomePair(
          BooleanLiteralSet.BOTH, BooleanLiteralSet.BOTH, flowScope, flowScope);
    }
    return new BooleanOutcomePair(jsType.getPossibleToBooleanOutcomes(),
        registry.getNativeType(BOOLEAN_TYPE).isSubtype(jsType) ?
            BooleanLiteralSet.BOTH : BooleanLiteralSet.EMPTY,
        flowScope, flowScope);
  }

  private void redeclareSimpleVar(
      FlowScope scope, Node nameNode, JSType varType) {
    Preconditions.checkState(nameNode.isName());
    String varName = nameNode.getString();
    if (varType == null) {
      varType = getNativeType(JSTypeNative.UNKNOWN_TYPE);
    }
    if (isUnflowable(syntacticScope.getVar(varName))) {
      return;
    }
    scope.inferSlotType(varName, varType);
  }

  private boolean isUnflowable(Var v) {
    return v != null && v.isLocal() && v.isMarkedEscaped() &&
        // It's OK to flow a variable in the scope where it's escaped.
        v.getScope() == syntacticScope;
  }

  /**
   * This method gets the JSType from the Node argument and verifies that it is
   * present.
   */
  private JSType getJSType(Node n) {
    int PROBE_START_LINE_1569 = 1569;
	com.google.javascript.rhino.Node p_n_3414_line_1569 = n;
	JSType type_inference_1_expr266_line_1569 = p_n_3414_line_1569.getJSType();
	int PROBE_END_LINE_1569 = 1569;
	JSType jsType = type_inference_1_expr266_line_1569;
    int PROBE_START_LINE_1570 = 1578;
	com.google.javascript.rhino.jstype.JSType v_js_type_3415_line_1570 = jsType;
	boolean type_inference_1_expr267_line_1570 = v_js_type_3415_line_1570 == null;
	int PROBE_END_LINE_1570 = 1578;
	if (type_inference_1_expr267_line_1570) {
      // TODO(nicksantos): This branch indicates a compiler bug, not worthy of
      // halting the compilation but we should log this and analyze to track
      // down why it happens. This is not critical and will be resolved over
      // time as the type checker is extended.
      return unknownType;
    } else {
      int PROBE_START_LINE_1577 = 1577;
		com.google.javascript.rhino.jstype.JSType v_js_type_3415_line_1577 = jsType;
		int PROBE_END_LINE_1577 = 1577;
	return v_js_type_3415_line_1577;
    }
  }

  private JSType getNativeType(JSTypeNative typeId) {
    return registry.getNativeType(typeId);
  }
}
