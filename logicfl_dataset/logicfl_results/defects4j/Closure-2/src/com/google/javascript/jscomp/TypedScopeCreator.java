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

import static com.google.javascript.jscomp.TypeCheck.ENUM_NOT_CONSTANT;
import static com.google.javascript.jscomp.TypeCheck.MULTIPLE_VAR_DEF;
import static com.google.javascript.rhino.jstype.JSTypeNative.ARRAY_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.BOOLEAN_OBJECT_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.BOOLEAN_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.DATE_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.ERROR_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.EVAL_ERROR_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.FUNCTION_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.FUNCTION_INSTANCE_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.GLOBAL_THIS;
import static com.google.javascript.rhino.jstype.JSTypeNative.NO_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.NULL_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.NUMBER_OBJECT_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.NUMBER_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.OBJECT_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.OBJECT_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.RANGE_ERROR_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.REFERENCE_ERROR_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.REGEXP_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.REGEXP_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.STRING_OBJECT_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.STRING_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.SYNTAX_ERROR_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.TYPE_ERROR_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.U2U_CONSTRUCTOR_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.UNKNOWN_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.URI_ERROR_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.VOID_TYPE;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Multiset;
import com.google.javascript.jscomp.CodingConvention.DelegateRelationship;
import com.google.javascript.jscomp.CodingConvention.ObjectLiteralCast;
import com.google.javascript.jscomp.CodingConvention.SubclassRelationship;
import com.google.javascript.jscomp.CodingConvention.SubclassType;
import com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents;
import com.google.javascript.jscomp.NodeTraversal.AbstractScopedCallback;
import com.google.javascript.jscomp.NodeTraversal.AbstractShallowStatementCallback;
import com.google.javascript.jscomp.Scope.Var;
import com.google.javascript.rhino.ErrorReporter;
import com.google.javascript.rhino.InputId;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;
import com.google.javascript.rhino.jstype.EnumType;
import com.google.javascript.rhino.jstype.FunctionParamBuilder;
import com.google.javascript.rhino.jstype.FunctionType;
import com.google.javascript.rhino.jstype.JSType;
import com.google.javascript.rhino.jstype.JSTypeNative;
import com.google.javascript.rhino.jstype.JSTypeRegistry;
import com.google.javascript.rhino.jstype.ObjectType;
import com.google.javascript.rhino.jstype.Property;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Nullable;
import com.google.common.collect.Multiset.Entry;
import java.util.Set;
import java.util.ArrayList;

/**
 * Creates the symbol table of variables available in the current scope and
 * their types.
 *
 * Scopes created by this class are very different from scopes created
 * by the syntactic scope creator. These scopes have type information, and
 * include some qualified names in addition to variables
 * (like Class.staticMethod).
 *
 * When building scope information, also declares relevant information
 * about types in the type registry.
 *
 * @author nicksantos@google.com (Nick Santos)
 */
final class TypedScopeCreator implements ScopeCreator {
  /**
   * A suffix for naming delegate proxies differently from their base.
   */
  static final String DELEGATE_PROXY_SUFFIX =
      ObjectType.createDelegateSuffix("Proxy");

  static final DiagnosticType MALFORMED_TYPEDEF =
      DiagnosticType.warning(
          "JSC_MALFORMED_TYPEDEF",
          "Typedef for {0} does not have any type information");

  static final DiagnosticType ENUM_INITIALIZER =
      DiagnosticType.warning(
          "JSC_ENUM_INITIALIZER_NOT_ENUM",
          "enum initializer must be an object literal or an enum");

  static final DiagnosticType CTOR_INITIALIZER =
      DiagnosticType.warning(
          "JSC_CTOR_INITIALIZER_NOT_CTOR",
          "Constructor {0} must be initialized at declaration");

  static final DiagnosticType IFACE_INITIALIZER =
      DiagnosticType.warning(
          "JSC_IFACE_INITIALIZER_NOT_IFACE",
          "Interface {0} must be initialized at declaration");

  static final DiagnosticType CONSTRUCTOR_EXPECTED =
      DiagnosticType.warning(
          "JSC_REFLECT_CONSTRUCTOR_EXPECTED",
          "Constructor expected as first argument");

  static final DiagnosticType UNKNOWN_LENDS =
      DiagnosticType.warning(
          "JSC_UNKNOWN_LENDS",
          "Variable {0} not declared before @lends annotation.");

  static final DiagnosticType LENDS_ON_NON_OBJECT =
      DiagnosticType.warning(
          "JSC_LENDS_ON_NON_OBJECT",
          "May only lend properties to object types. {0} has type {1}.");

  private final AbstractCompiler compiler;
  private final ErrorReporter typeParsingErrorReporter;
  private final TypeValidator validator;
  private final CodingConvention codingConvention;
  private final JSTypeRegistry typeRegistry;
  int PROBE_START_LINE_144 = 144;

private final ArrayList<com.google.javascript.rhino.jstype.ObjectType> typed_scope_creator_1_expr9_line_144 = Lists
		.newArrayList();

int PROBE_END_LINE_144 = 144;

private final List<ObjectType> delegateProxyPrototypes = typed_scope_creator_1_expr9_line_144;
  private final Map<String, String> delegateCallingConventions =
      Maps.newHashMap();

  // Simple properties inferred about functions.
  private final Map<Node, AstFunctionContents> functionAnalysisResults =
      Maps.newHashMap();

  // For convenience
  private final ObjectType unknownType;

  /**
   * Defer attachment of types to nodes until all type names
   * have been resolved. Then, we can resolve the type and attach it.
   */
  private class DeferredSetType {
    final Node node;
    final JSType type;

    DeferredSetType(Node node, JSType type) {
      int PROBE_START_LINE_164 = 164;
		com.google.javascript.rhino.Node p_node_3073_line_164 = node;
		int PROBE_END_LINE_164 = 164;
	Preconditions.checkNotNull(p_node_3073_line_164);
      int PROBE_START_LINE_165 = 165;
	com.google.javascript.rhino.jstype.JSType p_type_3074_line_165 = type;
	int PROBE_END_LINE_165 = 165;
	Preconditions.checkNotNull(p_type_3074_line_165);
      int PROBE_START_LINE_166 = 166;
	com.google.javascript.rhino.Node p_node_3073_line_166 = node;
	int PROBE_END_LINE_166 = 166;
	this.node = p_node_3073_line_166;
      int PROBE_START_LINE_167 = 167;
	com.google.javascript.rhino.jstype.JSType p_type_3074_line_167 = type;
	int PROBE_END_LINE_167 = 167;
	this.type = p_type_3074_line_167;

      int PROBE_START_LINE_171 = 171;
	com.google.javascript.rhino.Node p_node_3073_line_171 = node;
	com.google.javascript.rhino.jstype.JSType p_type_3074_line_171 = type;
	int PROBE_END_LINE_171 = 171;
	// Other parts of this pass may read off the node.
      // (like when we set the LHS of an assign with a typed RHS function.)
      p_node_3073_line_171.setJSType(p_type_3074_line_171);
    }

    void resolve(Scope scope) {
      int PROBE_START_LINE_175 = 175;
		com.google.javascript.rhino.Node f_node_3075_line_175 = node;
		com.google.javascript.rhino.jstype.JSType f_type_3076_line_175 = type;
		com.google.javascript.rhino.ErrorReporter f_type_parsing_error_reporter_3078_line_175 = typeParsingErrorReporter;
		com.google.javascript.jscomp.Scope p_scope_3077_line_175 = scope;
		com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr22_line_175 = f_type_3076_line_175
				.resolve(f_type_parsing_error_reporter_3078_line_175, p_scope_3077_line_175);
		int PROBE_END_LINE_175 = 175;
	f_node_3075_line_175.setJSType(typed_scope_creator_1_expr22_line_175);
    }
  }

  TypedScopeCreator(AbstractCompiler compiler) {
    this(compiler, compiler.getCodingConvention());
  }

  TypedScopeCreator(AbstractCompiler compiler,
      CodingConvention codingConvention) {
    int PROBE_START_LINE_185 = 185;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_3080_line_185 = compiler;
		int PROBE_END_LINE_185 = 185;
	this.compiler = p_compiler_3080_line_185;
    int PROBE_START_LINE_186 = 186;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_3080_line_186 = compiler;
	com.google.javascript.jscomp.TypeValidator typed_scope_creator_1_expr30_line_186 = p_compiler_3080_line_186
			.getTypeValidator();
	int PROBE_END_LINE_186 = 186;
	this.validator = typed_scope_creator_1_expr30_line_186;
    int PROBE_START_LINE_187 = 187;
	com.google.javascript.jscomp.CodingConvention p_coding_convention_3081_line_187 = codingConvention;
	int PROBE_END_LINE_187 = 187;
	this.codingConvention = p_coding_convention_3081_line_187;
    int PROBE_START_LINE_188 = 188;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_3080_line_188 = compiler;
	com.google.javascript.rhino.jstype.JSTypeRegistry typed_scope_creator_1_expr37_line_188 = p_compiler_3080_line_188
			.getTypeRegistry();
	int PROBE_END_LINE_188 = 188;
	this.typeRegistry = typed_scope_creator_1_expr37_line_188;
    int PROBE_START_LINE_189 = 189;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3085_line_189 = typeRegistry;
	com.google.javascript.rhino.ErrorReporter typed_scope_creator_1_expr41_line_189 = f_type_registry_3085_line_189
			.getErrorReporter();
	int PROBE_END_LINE_189 = 189;
	this.typeParsingErrorReporter = typed_scope_creator_1_expr41_line_189;
    int PROBE_START_LINE_190 = 190;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3085_line_190 = typeRegistry;
	com.google.javascript.rhino.jstype.JSTypeNative f_unknown_type_2754_line_190 = UNKNOWN_TYPE;
	com.google.javascript.rhino.jstype.ObjectType typed_scope_creator_1_expr45_line_190 = f_type_registry_3085_line_190
			.getNativeObjectType(f_unknown_type_2754_line_190);
	int PROBE_END_LINE_190 = 190;
	this.unknownType = typed_scope_creator_1_expr45_line_190;
  }

  /**
   * Creates a scope with all types declared. Declares newly discovered types
   * and type properties in the type registry.
   */
  @Override
  public Scope createScope(Node root, Scope parent) {
    // Constructing the global scope is very different than constructing
    // inner scopes, because only global scopes can contain named classes that
    // show up in the type registry.
    Scope newScope = null;
    AbstractScopeBuilder scopeBuilder = null;
    int PROBE_START_LINE_204 = 229;
	com.google.javascript.jscomp.Scope p_parent_3088_line_204 = parent;
	boolean typed_scope_creator_1_expr47_line_204 = p_parent_3088_line_204 == null;
	int PROBE_END_LINE_204 = 229;
	if (typed_scope_creator_1_expr47_line_204) {
      JSType globalThis =
          typeRegistry.getNativeObjectType(JSTypeNative.GLOBAL_THIS);

      int PROBE_START_LINE_210 = 210;
	com.google.javascript.rhino.Node p_root_3087_line_210 = root;
	com.google.javascript.rhino.jstype.JSType v_global_this_3091_line_210 = globalThis;
	int PROBE_END_LINE_210 = 210;
	// Mark the main root, the externs root, and the src root
      // with the global this type.
      p_root_3087_line_210.setJSType(v_global_this_3091_line_210);
      int PROBE_START_LINE_211 = 211;
	com.google.javascript.rhino.Node p_root_3087_line_211 = root;
	com.google.javascript.rhino.Node typed_scope_creator_1_expr51_line_211 = p_root_3087_line_211.getFirstChild();
	com.google.javascript.rhino.jstype.JSType v_global_this_3091_line_211 = globalThis;
	int PROBE_END_LINE_211 = 211;
	typed_scope_creator_1_expr51_line_211.setJSType(v_global_this_3091_line_211);
      int PROBE_START_LINE_212 = 212;
	com.google.javascript.rhino.Node p_root_3087_line_212 = root;
	com.google.javascript.rhino.Node typed_scope_creator_1_expr53_line_212 = p_root_3087_line_212.getLastChild();
	com.google.javascript.rhino.jstype.JSType v_global_this_3091_line_212 = globalThis;
	int PROBE_END_LINE_212 = 212;
	typed_scope_creator_1_expr53_line_212.setJSType(v_global_this_3091_line_212);

      int PROBE_START_LINE_215 = 216;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_3082_line_215 = compiler;
	Map<com.google.javascript.rhino.Node, com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents> f_function_analysis_results_3072_line_215 = functionAnalysisResults;
	com.google.javascript.jscomp.TypedScopeCreator.FirstOrderFunctionAnalyzer typed_scope_creator_1_expr57_line_215 = (new FirstOrderFunctionAnalyzer(
			f_compiler_3082_line_215, f_function_analysis_results_3072_line_215));
	int PROBE_END_LINE_215 = 216;
	// Run a first-order analysis over the syntax tree.
      typed_scope_creator_1_expr57_line_215
          .process(root.getFirstChild(), root.getLastChild());

      int PROBE_START_LINE_219 = 219;
	com.google.javascript.rhino.Node p_root_3087_line_219 = root;
	com.google.javascript.jscomp.Scope typed_scope_creator_1_expr60_line_219 = createInitialScope(p_root_3087_line_219);
	int PROBE_END_LINE_219 = 219;
	// Find all the classes in the global scope.
      newScope = typed_scope_creator_1_expr60_line_219;

      int PROBE_START_LINE_221 = 221;
	com.google.javascript.jscomp.Scope v_new_scope_3089_line_221 = newScope;
	int PROBE_END_LINE_221 = 221;
	GlobalScopeBuilder globalScopeBuilder = new GlobalScopeBuilder(v_new_scope_3089_line_221);
      int PROBE_START_LINE_222 = 222;
	com.google.javascript.jscomp.TypedScopeCreator.GlobalScopeBuilder v_global_scope_builder_3092_line_222 = globalScopeBuilder;
	int PROBE_END_LINE_222 = 222;
	scopeBuilder = v_global_scope_builder_3092_line_222;
      int PROBE_START_LINE_223 = 223;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_3082_line_223 = compiler;
	com.google.javascript.rhino.Node p_root_3087_line_223 = root;
	com.google.javascript.jscomp.TypedScopeCreator.AbstractScopeBuilder v_scope_builder_3090_line_223 = scopeBuilder;
	int PROBE_END_LINE_223 = 223;
	NodeTraversal.traverse(f_compiler_3082_line_223, p_root_3087_line_223, v_scope_builder_3090_line_223);
    } else {
      int PROBE_START_LINE_225 = 225;
		com.google.javascript.jscomp.Scope p_parent_3088_line_225 = parent;
		com.google.javascript.rhino.Node p_root_3087_line_225 = root;
		int PROBE_END_LINE_225 = 225;
	newScope = new Scope(p_parent_3088_line_225, p_root_3087_line_225);
      int PROBE_START_LINE_226 = 226;
	com.google.javascript.jscomp.Scope v_new_scope_3089_line_226 = newScope;
	int PROBE_END_LINE_226 = 226;
	LocalScopeBuilder localScopeBuilder = new LocalScopeBuilder(v_new_scope_3089_line_226);
      int PROBE_START_LINE_227 = 227;
	com.google.javascript.jscomp.TypedScopeCreator.LocalScopeBuilder v_local_scope_builder_3093_line_227 = localScopeBuilder;
	int PROBE_END_LINE_227 = 227;
	scopeBuilder = v_local_scope_builder_3093_line_227;
      int PROBE_START_LINE_228 = 228;
	com.google.javascript.jscomp.TypedScopeCreator.LocalScopeBuilder v_local_scope_builder_3093_line_228 = localScopeBuilder;
	int PROBE_END_LINE_228 = 228;
	v_local_scope_builder_3093_line_228.build();
    }

    int PROBE_START_LINE_231 = 231;
	com.google.javascript.jscomp.TypedScopeCreator.AbstractScopeBuilder v_scope_builder_3090_line_231 = scopeBuilder;
	int PROBE_END_LINE_231 = 231;
	v_scope_builder_3090_line_231.resolveStubDeclarations();
    int PROBE_START_LINE_232 = 232;
	com.google.javascript.jscomp.TypedScopeCreator.AbstractScopeBuilder v_scope_builder_3090_line_232 = scopeBuilder;
	int PROBE_END_LINE_232 = 232;
	v_scope_builder_3090_line_232.resolveTypes();

    int PROBE_START_LINE_237 = 247;
	com.google.javascript.jscomp.TypedScopeCreator.AbstractScopeBuilder v_scope_builder_3090_line_237 = scopeBuilder;
	List<com.google.javascript.rhino.Node> q_non_extern_functions_79_line_237 = v_scope_builder_3090_line_237.nonExternFunctions;
	int PROBE_END_LINE_237 = 247;
	// Gather the properties in each function that we found in the
    // global scope, if that function has a @this type that we can
    // build properties on.
    for (Node functionNode : q_non_extern_functions_79_line_237) {
      int PROBE_START_LINE_238 = 238;
		com.google.javascript.rhino.Node v_function_node_3094_line_238 = functionNode;
		JSType typed_scope_creator_1_expr71_line_238 = v_function_node_3094_line_238.getJSType();
		int PROBE_END_LINE_238 = 238;
	JSType type = typed_scope_creator_1_expr71_line_238;
      int PROBE_START_LINE_239 = 246;
	com.google.javascript.rhino.jstype.JSType v_type_3095_line_239 = type;
	boolean typed_scope_creator_1_expr73_line_239 = v_type_3095_line_239 != null;
	boolean typed_scope_creator_1_expr74_line_239 = true;
	if (typed_scope_creator_1_expr73_line_239) {
		com.google.javascript.rhino.jstype.JSType v_type_3095_line_239_v1 = type;
		typed_scope_creator_1_expr74_line_239 = v_type_3095_line_239_v1.isFunctionType();
	}
	boolean typed_scope_creator_1_expr72_line_239 = typed_scope_creator_1_expr73_line_239
			&& typed_scope_creator_1_expr74_line_239;
	int PROBE_END_LINE_239 = 246;
	if (typed_scope_creator_1_expr72_line_239) {
        int PROBE_START_LINE_240 = 240;
		com.google.javascript.rhino.jstype.JSType v_type_3095_line_240 = type;
		FunctionType typed_scope_creator_1_expr75_line_240 = v_type_3095_line_240.toMaybeFunctionType();
		int PROBE_END_LINE_240 = 240;
		FunctionType fnType = typed_scope_creator_1_expr75_line_240;
        int PROBE_START_LINE_241 = 241;
		com.google.javascript.rhino.jstype.FunctionType v_fn_type_3096_line_241 = fnType;
		JSType typed_scope_creator_1_expr76_line_241 = v_fn_type_3096_line_241.getTypeOfThis();
		int PROBE_END_LINE_241 = 241;
		JSType fnThisType = typed_scope_creator_1_expr76_line_241;
        int PROBE_START_LINE_242 = 245;
		com.google.javascript.rhino.jstype.JSType v_fn_this_type_3097_line_242 = fnThisType;
		boolean typed_scope_creator_1_expr78_line_242 = v_fn_this_type_3097_line_242.isUnknownType();
		boolean typed_scope_creator_1_expr77_line_242 = !typed_scope_creator_1_expr78_line_242;
		int PROBE_END_LINE_242 = 245;
		if (typed_scope_creator_1_expr77_line_242) {
          NodeTraversal.traverse(compiler, functionNode.getLastChild(),
              scopeBuilder.new CollectProperties(fnThisType));
        }
      }
    }

    int PROBE_START_LINE_249 = 253;
	com.google.javascript.jscomp.Scope p_parent_3088_line_249 = parent;
	boolean typed_scope_creator_1_expr79_line_249 = p_parent_3088_line_249 == null;
	int PROBE_END_LINE_249 = 253;
	if (typed_scope_creator_1_expr79_line_249) {
      int PROBE_START_LINE_250 = 252;
		com.google.javascript.jscomp.CodingConvention f_coding_convention_3084_line_250 = codingConvention;
		int PROBE_END_LINE_250 = 252;
	f_coding_convention_3084_line_250.defineDelegateProxyPrototypeProperties(
          typeRegistry, newScope, delegateProxyPrototypes,
          delegateCallingConventions);
    }
    int PROBE_START_LINE_254 = 254;
	com.google.javascript.jscomp.Scope v_new_scope_3089_line_254 = newScope;
	int PROBE_END_LINE_254 = 254;
	return v_new_scope_3089_line_254;
  }

  /**
   * Patches a given global scope by removing variables previously declared in
   * a script and re-traversing a new version of that script.
   *
   * @param globalScope The global scope generated by {@code createScope}.
   * @param scriptRoot The script that is modified.
   */
  void patchGlobalScope(Scope globalScope, Node scriptRoot) {
    // Preconditions: This is supposed to be called only on (named) SCRIPT nodes
    // and a global typed scope should have been generated already.
    Preconditions.checkState(scriptRoot.isScript());
    Preconditions.checkNotNull(globalScope);
    Preconditions.checkState(globalScope.isGlobal());

    String scriptName = NodeUtil.getSourceName(scriptRoot);
    Preconditions.checkNotNull(scriptName);
    for (Node node : ImmutableList.copyOf(functionAnalysisResults.keySet())) {
      if (scriptName.equals(NodeUtil.getSourceName(node))) {
        functionAnalysisResults.remove(node);
      }
    }

    (new FirstOrderFunctionAnalyzer(
        compiler, functionAnalysisResults)).process(null, scriptRoot);

    // TODO(bashir): Variable declaration is not the only side effect of last
    // global scope generation but here we only wipe that part off!

    // Remove all variables that were previously declared in this scripts.
    // First find all vars to remove then remove them because of iterator!
    Iterator<Var> varIter = globalScope.getVars();
    List<Var> varsToRemove = Lists.newArrayList();
    while (varIter.hasNext()) {
      Var oldVar = varIter.next();
      if (scriptName.equals(oldVar.getInputName())) {
        varsToRemove.add(oldVar);
      }
    }
    for (Var var : varsToRemove) {
      globalScope.undeclare(var);
      globalScope.getTypeOfThis().toObjectType().removeProperty(var.getName());
    }

    // Now re-traverse the given script.
    GlobalScopeBuilder scopeBuilder = new GlobalScopeBuilder(globalScope);
    NodeTraversal.traverse(compiler, scriptRoot, scopeBuilder);
  }

  /**
   * Create the outermost scope. This scope contains native binding such as
   * {@code Object}, {@code Date}, etc.
   */
  @VisibleForTesting
  Scope createInitialScope(Node root) {

    NodeTraversal.traverse(
        compiler, root, new DiscoverEnumsAndTypedefs(typeRegistry));

    int PROBE_START_LINE_315 = 315;
	com.google.javascript.rhino.Node p_root_3100_line_315 = root;
	Scope typed_scope_creator_1_expr83_line_315 = Scope.createGlobalScope(p_root_3100_line_315);
	int PROBE_END_LINE_315 = 315;
	Scope s = typed_scope_creator_1_expr83_line_315;
    int PROBE_START_LINE_316 = 316;
	com.google.javascript.jscomp.Scope v_s_3101_line_316 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_array_function_type_3102_line_316 = ARRAY_FUNCTION_TYPE;
	int PROBE_END_LINE_316 = 316;
	declareNativeFunctionType(v_s_3101_line_316, f_array_function_type_3102_line_316);
    int PROBE_START_LINE_317 = 317;
	com.google.javascript.jscomp.Scope v_s_3101_line_317 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_boolean_object_function_type_3103_line_317 = BOOLEAN_OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_317 = 317;
	declareNativeFunctionType(v_s_3101_line_317, f_boolean_object_function_type_3103_line_317);
    int PROBE_START_LINE_318 = 318;
	com.google.javascript.jscomp.Scope v_s_3101_line_318 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_date_function_type_3104_line_318 = DATE_FUNCTION_TYPE;
	int PROBE_END_LINE_318 = 318;
	declareNativeFunctionType(v_s_3101_line_318, f_date_function_type_3104_line_318);
    int PROBE_START_LINE_319 = 319;
	com.google.javascript.jscomp.Scope v_s_3101_line_319 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_error_function_type_3105_line_319 = ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_319 = 319;
	declareNativeFunctionType(v_s_3101_line_319, f_error_function_type_3105_line_319);
    int PROBE_START_LINE_320 = 320;
	com.google.javascript.jscomp.Scope v_s_3101_line_320 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_eval_error_function_type_3106_line_320 = EVAL_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_320 = 320;
	declareNativeFunctionType(v_s_3101_line_320, f_eval_error_function_type_3106_line_320);
    int PROBE_START_LINE_321 = 321;
	com.google.javascript.jscomp.Scope v_s_3101_line_321 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_function_function_type_3107_line_321 = FUNCTION_FUNCTION_TYPE;
	int PROBE_END_LINE_321 = 321;
	declareNativeFunctionType(v_s_3101_line_321, f_function_function_type_3107_line_321);
    int PROBE_START_LINE_322 = 322;
	com.google.javascript.jscomp.Scope v_s_3101_line_322 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_number_object_function_type_3108_line_322 = NUMBER_OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_322 = 322;
	declareNativeFunctionType(v_s_3101_line_322, f_number_object_function_type_3108_line_322);
    int PROBE_START_LINE_323 = 323;
	com.google.javascript.jscomp.Scope v_s_3101_line_323 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_object_function_type_3109_line_323 = OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_323 = 323;
	declareNativeFunctionType(v_s_3101_line_323, f_object_function_type_3109_line_323);
    int PROBE_START_LINE_324 = 324;
	com.google.javascript.jscomp.Scope v_s_3101_line_324 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_range_error_function_type_3110_line_324 = RANGE_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_324 = 324;
	declareNativeFunctionType(v_s_3101_line_324, f_range_error_function_type_3110_line_324);
    int PROBE_START_LINE_325 = 325;
	com.google.javascript.jscomp.Scope v_s_3101_line_325 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_reference_error_function_type_3111_line_325 = REFERENCE_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_325 = 325;
	declareNativeFunctionType(v_s_3101_line_325, f_reference_error_function_type_3111_line_325);
    int PROBE_START_LINE_326 = 326;
	com.google.javascript.jscomp.Scope v_s_3101_line_326 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_regexp_function_type_3112_line_326 = REGEXP_FUNCTION_TYPE;
	int PROBE_END_LINE_326 = 326;
	declareNativeFunctionType(v_s_3101_line_326, f_regexp_function_type_3112_line_326);
    int PROBE_START_LINE_327 = 327;
	com.google.javascript.jscomp.Scope v_s_3101_line_327 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_string_object_function_type_3113_line_327 = STRING_OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_327 = 327;
	declareNativeFunctionType(v_s_3101_line_327, f_string_object_function_type_3113_line_327);
    int PROBE_START_LINE_328 = 328;
	com.google.javascript.jscomp.Scope v_s_3101_line_328 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_syntax_error_function_type_3114_line_328 = SYNTAX_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_328 = 328;
	declareNativeFunctionType(v_s_3101_line_328, f_syntax_error_function_type_3114_line_328);
    int PROBE_START_LINE_329 = 329;
	com.google.javascript.jscomp.Scope v_s_3101_line_329 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_type_error_function_type_3115_line_329 = TYPE_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_329 = 329;
	declareNativeFunctionType(v_s_3101_line_329, f_type_error_function_type_3115_line_329);
    int PROBE_START_LINE_330 = 330;
	com.google.javascript.jscomp.Scope v_s_3101_line_330 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_uri_error_function_type_3116_line_330 = URI_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_330 = 330;
	declareNativeFunctionType(v_s_3101_line_330, f_uri_error_function_type_3116_line_330);
    int PROBE_START_LINE_331 = 331;
	com.google.javascript.jscomp.Scope v_s_3101_line_331 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_void_type_1494_line_331 = VOID_TYPE;
	int PROBE_END_LINE_331 = 331;
	declareNativeValueType(v_s_3101_line_331, "undefined", f_void_type_1494_line_331);

    int PROBE_START_LINE_336 = 336;
	com.google.javascript.jscomp.Scope v_s_3101_line_336 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_function_instance_type_3117_line_336 = FUNCTION_INSTANCE_TYPE;
	int PROBE_END_LINE_336 = 336;
	// There is no longer a need to special case ActiveXObject
    // but this remains here until we can get the extern forks
    // cleaned up.
    declareNativeValueType(v_s_3101_line_336, "ActiveXObject", f_function_instance_type_3117_line_336);

    int PROBE_START_LINE_338 = 338;
	com.google.javascript.jscomp.Scope v_s_3101_line_338 = s;
	int PROBE_END_LINE_338 = 338;
	return v_s_3101_line_338;
  }

  private void declareNativeFunctionType(Scope scope, JSTypeNative tId) {
    int PROBE_START_LINE_342 = 342;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3085_line_342 = typeRegistry;
	com.google.javascript.rhino.jstype.JSTypeNative p_t_id_3119_line_342 = tId;
	FunctionType typed_scope_creator_1_expr101_line_342 = f_type_registry_3085_line_342
			.getNativeFunctionType(p_t_id_3119_line_342);
	int PROBE_END_LINE_342 = 342;
	FunctionType t = typed_scope_creator_1_expr101_line_342;
    int PROBE_START_LINE_343 = 343;
	com.google.javascript.jscomp.Scope p_scope_3118_line_343 = scope;
	com.google.javascript.rhino.jstype.FunctionType v_t_3120_line_343 = t;
	com.google.javascript.rhino.jstype.ObjectType typed_scope_creator_1_expr104_line_343 = v_t_3120_line_343
			.getInstanceType();
	String typed_scope_creator_1_expr103_line_343 = typed_scope_creator_1_expr104_line_343.getReferenceName();
	com.google.javascript.rhino.jstype.FunctionType v_t_3120_line_343_v1 = t;
	int PROBE_END_LINE_343 = 343;
	declareNativeType(p_scope_3118_line_343, typed_scope_creator_1_expr103_line_343, v_t_3120_line_343_v1);
    declareNativeType(
        scope, t.getPrototype().getReferenceName(), t.getPrototype());
  }

  private void declareNativeValueType(Scope scope, String name,
      JSTypeNative tId) {
    int PROBE_START_LINE_350 = 350;
		com.google.javascript.jscomp.Scope p_scope_3121_line_350 = scope;
		String p_name_3122_line_350 = name;
		com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3085_line_350 = typeRegistry;
		com.google.javascript.rhino.jstype.JSTypeNative p_t_id_3123_line_350 = tId;
		com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr109_line_350 = f_type_registry_3085_line_350
				.getNativeType(p_t_id_3123_line_350);
		int PROBE_END_LINE_350 = 350;
	declareNativeType(p_scope_3121_line_350, p_name_3122_line_350, typed_scope_creator_1_expr109_line_350);
  }

  private void declareNativeType(Scope scope, String name, JSType t) {
    int PROBE_START_LINE_354 = 354;
	com.google.javascript.jscomp.Scope p_scope_3124_line_354 = scope;
	String p_name_3125_line_354 = name;
	com.google.javascript.rhino.jstype.JSType p_t_3126_line_354 = t;
	int PROBE_END_LINE_354 = 354;
	p_scope_3124_line_354.declare(p_name_3125_line_354, null, p_t_3126_line_354, null, false);
  }

  private static class DiscoverEnumsAndTypedefs
      extends AbstractShallowStatementCallback {
    private final JSTypeRegistry registry;

    DiscoverEnumsAndTypedefs(JSTypeRegistry registry) {
      int PROBE_START_LINE_362 = 362;
		com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_3127_line_362 = registry;
		int PROBE_END_LINE_362 = 362;
	this.registry = p_registry_3127_line_362;
    }

    @Override
    public void visit(NodeTraversal t, Node node, Node parent) {
      Node nameNode = null;
      int PROBE_START_LINE_368 = 388;
	com.google.javascript.rhino.Node p_node_3130_line_368 = node;
	int typed_scope_creator_1_expr114_line_368 = p_node_3130_line_368.getType();
	int PROBE_END_LINE_368 = 388;
	switch (typed_scope_creator_1_expr114_line_368) {
        case Token.VAR:
          for (Node child = node.getFirstChild();
               child != null; child = child.getNext()) {
            identifyNameNode(
                child, child.getFirstChild(),
                NodeUtil.getBestJSDocInfo(child));
          }
          break;
        case Token.EXPR_RESULT:
          Node firstChild = node.getFirstChild();
          if (firstChild.isAssign()) {
            identifyNameNode(
                firstChild.getFirstChild(), firstChild.getLastChild(),
                firstChild.getJSDocInfo());
          } else {
            identifyNameNode(
                firstChild, null, firstChild.getJSDocInfo());
          }
          break;
      }
    }

    private void identifyNameNode(
        Node nameNode, Node valueNode, JSDocInfo info) {
      if (nameNode.isQualifiedName()) {
        if (info != null) {
          if (info.hasEnumParameterType()) {
            registry.identifyNonNullableName(nameNode.getQualifiedName());
          } else if (info.hasTypedefType()) {
            registry.identifyNonNullableName(nameNode.getQualifiedName());
          }
        }
      }
    }
  }

  private JSType getNativeType(JSTypeNative nativeType) {
    int PROBE_START_LINE_406 = 406;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3085_line_406 = typeRegistry;
	com.google.javascript.rhino.jstype.JSTypeNative p_native_type_3136_line_406 = nativeType;
	com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr115_line_406 = f_type_registry_3085_line_406
			.getNativeType(p_native_type_3136_line_406);
	int PROBE_END_LINE_406 = 406;
	return typed_scope_creator_1_expr115_line_406;
  }

  private abstract class AbstractScopeBuilder
      implements NodeTraversal.Callback {

    /**
     * The scope that we're building.
     */
    final Scope scope;

    private final List<DeferredSetType> deferredSetTypes =
        Lists.newArrayList();

    int PROBE_START_LINE_420 = 423;

	private final ArrayList<com.google.javascript.rhino.Node> typed_scope_creator_1_expr117_line_423 = Lists
			.newArrayList();

	int PROBE_END_LINE_420 = 423;

	/**
     * Functions that we found in the global scope and not in externs.
     */
    private final List<Node> nonExternFunctions = typed_scope_creator_1_expr117_line_423;

    /**
     * Object literals with a @lends annotation aren't analyzed until we
     * reach the root of the statement they're defined in.
     *
     * This ensures that if there are any @lends annotations on the object
     * literals, the type on the @lends annotation resolves correctly.
     *
     * For more information, see
     * http://code.google.com/p/closure-compiler/issues/detail?id=314
     */
    private List<Node> lentObjectLiterals = null;

    /**
     * Type-less stubs.
     *
     * If at the end of traversal, we still don't have types for these
     * stubs, then we should declare UNKNOWN types.
     */
    private final List<StubDeclaration> stubDeclarations =
        Lists.newArrayList();

    /**
     * The current source file that we're in.
     */
    private String sourceName = null;

    /**
     * The InputId of the current node.
     */
    private InputId inputId;

    private AbstractScopeBuilder(Scope scope) {
      int PROBE_START_LINE_457 = 457;
		com.google.javascript.jscomp.Scope p_scope_3142_line_457 = scope;
		int PROBE_END_LINE_457 = 457;
	this.scope = p_scope_3142_line_457;
    }

    void setDeferredType(Node node, JSType type) {
      int PROBE_START_LINE_461 = 461;
		List<com.google.javascript.jscomp.TypedScopeCreator.DeferredSetType> f_deferred_set_types_3137_line_461 = deferredSetTypes;
		com.google.javascript.rhino.Node p_node_3144_line_461 = node;
		com.google.javascript.rhino.jstype.JSType p_type_3145_line_461 = type;
		int PROBE_END_LINE_461 = 461;
	f_deferred_set_types_3137_line_461.add(new DeferredSetType(p_node_3144_line_461, p_type_3145_line_461));
    }

    void resolveTypes() {
      int PROBE_START_LINE_466 = 468;
		List<com.google.javascript.jscomp.TypedScopeCreator.DeferredSetType> f_deferred_set_types_3137_line_466 = deferredSetTypes;
		int PROBE_END_LINE_466 = 468;
	// Resolve types and attach them to nodes.
      for (DeferredSetType deferred : f_deferred_set_types_3137_line_466) {
        int PROBE_START_LINE_467 = 467;
		com.google.javascript.jscomp.TypedScopeCreator.DeferredSetType v_deferred_3146_line_467 = deferred;
		com.google.javascript.jscomp.Scope f_scope_3143_line_467 = scope;
		int PROBE_END_LINE_467 = 467;
		v_deferred_3146_line_467.resolve(f_scope_3143_line_467);
      }

      int PROBE_START_LINE_471 = 471;
	com.google.javascript.jscomp.Scope f_scope_3143_line_471 = scope;
	Iterator<Var> typed_scope_creator_1_expr125_line_471 = f_scope_3143_line_471.getVars();
	int PROBE_END_LINE_471 = 471;
	// Resolve types and attach them to scope slots.
      Iterator<Var> vars = typed_scope_creator_1_expr125_line_471;
      while (true) {
        int PROBE_START_LINE_472 = 472;
		Iterator<com.google.javascript.jscomp.Scope.Var> v_vars_3147_line_472 = vars;
		boolean typed_scope_creator_1_expr126_line_472 = v_vars_3147_line_472.hasNext();
		if (!(typed_scope_creator_1_expr126_line_472)) {
			break;
		}
		int PROBE_END_LINE_472 = 472;
		int PROBE_START_LINE_473 = 473;
		Iterator<com.google.javascript.jscomp.Scope.Var> v_vars_3147_line_473 = vars;
		com.google.javascript.jscomp.Scope.Var typed_scope_creator_1_expr128_line_473 = v_vars_3147_line_473.next();
		com.google.javascript.rhino.ErrorReporter f_type_parsing_error_reporter_3078_line_473 = typeParsingErrorReporter;
		int PROBE_END_LINE_473 = 473;
		typed_scope_creator_1_expr128_line_473.resolveType(f_type_parsing_error_reporter_3078_line_473);
      }

      int PROBE_START_LINE_478 = 478;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3085_line_478 = typeRegistry;
	com.google.javascript.jscomp.Scope f_scope_3143_line_478 = scope;
	int PROBE_END_LINE_478 = 478;
	// Tell the type registry that any remaining types
      // are unknown.
      f_type_registry_3085_line_478.resolveTypesInScope(f_scope_3143_line_478);
    }

    @Override
    public final boolean shouldTraverse(NodeTraversal t, Node n, Node parent) {
      int PROBE_START_LINE_483 = 483;
		com.google.javascript.jscomp.NodeTraversal p_t_3148_line_483 = t;
		com.google.javascript.rhino.InputId typed_scope_creator_1_expr131_line_483 = p_t_3148_line_483.getInputId();
		int PROBE_END_LINE_483 = 483;
	inputId = typed_scope_creator_1_expr131_line_483;
      int PROBE_START_LINE_484 = 488;
	com.google.javascript.rhino.Node p_n_3149_line_484 = n;
	boolean typed_scope_creator_1_expr133_line_484 = p_n_3149_line_484.isFunction();
	boolean typed_scope_creator_1_expr132_line_484 = typed_scope_creator_1_expr133_line_484 || n.isScript();
	int PROBE_END_LINE_484 = 488;
	if (typed_scope_creator_1_expr132_line_484) {
        int PROBE_START_LINE_486 = 486;
			com.google.javascript.rhino.InputId f_input_id_3151_line_486 = inputId;
			int PROBE_END_LINE_486 = 486;
		Preconditions.checkNotNull(f_input_id_3151_line_486);
        int PROBE_START_LINE_487 = 487;
		com.google.javascript.rhino.Node p_n_3149_line_487 = n;
		String typed_scope_creator_1_expr136_line_487 = NodeUtil.getSourceName(p_n_3149_line_487);
		int PROBE_END_LINE_487 = 487;
		sourceName = typed_scope_creator_1_expr136_line_487;
      }

      int PROBE_START_LINE_492 = 493;
	com.google.javascript.rhino.Node p_parent_3150_line_492 = parent;
	boolean typed_scope_creator_1_expr140_line_492 = p_parent_3150_line_492 == null;
	boolean typed_scope_creator_1_expr141_line_492 = false;
	if (!typed_scope_creator_1_expr140_line_492) {
		com.google.javascript.rhino.Node p_parent_3150_line_492_v1 = parent;
		boolean typed_scope_creator_1_expr142_line_492 = p_parent_3150_line_492_v1.isFunction();
		typed_scope_creator_1_expr141_line_492 = !typed_scope_creator_1_expr142_line_492;
	}
	boolean typed_scope_creator_1_expr139_line_492 = typed_scope_creator_1_expr140_line_492
			|| typed_scope_creator_1_expr141_line_492;
	boolean typed_scope_creator_1_expr138_line_492 = typed_scope_creator_1_expr139_line_492
			|| n == parent.getFirstChild();
	boolean typed_scope_creator_1_expr137_line_492 = typed_scope_creator_1_expr138_line_492
			|| parent == scope.getRootNode();
	int PROBE_END_LINE_492 = 493;
	// We do want to traverse the name of a named function, but we don't
      // want to traverse the arguments or body.
      boolean descend = typed_scope_creator_1_expr137_line_492;

      int PROBE_START_LINE_495 = 507;
	boolean v_descend_3152_line_495 = descend;
	int PROBE_END_LINE_495 = 507;
	if (v_descend_3152_line_495) {
        int PROBE_START_LINE_498 = 506;
		com.google.javascript.rhino.Node p_n_3149_line_498 = n;
		boolean typed_scope_creator_1_expr143_line_498 = NodeUtil.isStatementParent(p_n_3149_line_498);
		// Handle hoisted functions on pre-order traversal, so that they
        // get hit before other things in the scope.
        if (typed_scope_creator_1_expr143_line_498) {
          boolean FOR_STMT_TOGGLE_LINE_499 = false;
			int PROBE_END_LINE_498 = 498;
		for (Node child = null;
               true;) {
            int PROBE_START_LINE_502 = 504;
				if (!FOR_STMT_TOGGLE_LINE_499) {
					FOR_STMT_TOGGLE_LINE_499 = true;
					com.google.javascript.rhino.Node p_n_3149_line_499 = n;
					Node typed_scope_creator_1_expr145_line_499 = p_n_3149_line_499.getFirstChild();
					child = typed_scope_creator_1_expr145_line_499;
				} else {
					if (FOR_STMT_TOGGLE_LINE_499) {
						com.google.javascript.rhino.Node v_child_3153_line_501 = child;
						com.google.javascript.rhino.Node typed_scope_creator_1_expr148_line_501 = v_child_3153_line_501
								.getNext();
						child = typed_scope_creator_1_expr148_line_501;
					} else {
						FOR_STMT_TOGGLE_LINE_499 = true;
					}
				}
				com.google.javascript.rhino.Node v_child_3153_line_500 = child;
				boolean typed_scope_creator_1_expr146_line_500 = v_child_3153_line_500 != null;
				if (!(typed_scope_creator_1_expr146_line_500)) {
					break;
				}
				com.google.javascript.rhino.Node v_child_3153_line_502 = child;
				boolean typed_scope_creator_1_expr149_line_502 = NodeUtil
						.isHoistedFunctionDeclaration(v_child_3153_line_502);
				int PROBE_END_LINE_502 = 504;
			if (typed_scope_creator_1_expr149_line_502) {
              int PROBE_START_LINE_503 = 503;
				com.google.javascript.rhino.Node v_child_3153_line_503 = child;
				int PROBE_END_LINE_503 = 503;
			defineFunctionLiteral(v_child_3153_line_503);
            }
          }
        }
      }

      int PROBE_START_LINE_509 = 509;
	boolean v_descend_3152_line_509 = descend;
	int PROBE_END_LINE_509 = 509;
	return v_descend_3152_line_509;
    }

    @Override
    public void visit(NodeTraversal t, Node n, Node parent) {
      int PROBE_START_LINE_514 = 514;
		com.google.javascript.jscomp.NodeTraversal p_t_3154_line_514 = t;
		com.google.javascript.rhino.InputId typed_scope_creator_1_expr152_line_514 = p_t_3154_line_514.getInputId();
		int PROBE_END_LINE_514 = 514;
	inputId = typed_scope_creator_1_expr152_line_514;
      int PROBE_START_LINE_515 = 515;
	com.google.javascript.jscomp.NodeTraversal p_t_3154_line_515 = t;
	com.google.javascript.rhino.Node p_n_3155_line_515 = n;
	int PROBE_END_LINE_515 = 515;
	attachLiteralTypes(p_t_3154_line_515, p_n_3155_line_515);

      int PROBE_START_LINE_517 = 559;
	com.google.javascript.rhino.Node p_n_3155_line_517 = n;
	int typed_scope_creator_1_expr154_line_517 = p_n_3155_line_517.getType();
	int PROBE_END_LINE_517 = 559;
	switch (typed_scope_creator_1_expr154_line_517) {
        case Token.CALL:
          checkForClassDefiningCalls(t, n, parent);
          checkForCallingConventionDefiningCalls(n, delegateCallingConventions);
          break;

        case Token.FUNCTION:
	int PROBE_START_LINE_524 = 526;
	com.google.javascript.jscomp.NodeTraversal p_t_3154_line_524 = t;
	com.google.javascript.jscomp.CompilerInput typed_scope_creator_1_expr157_line_524 = p_t_3154_line_524.getInput();
	boolean typed_scope_creator_1_expr156_line_524 = typed_scope_creator_1_expr157_line_524 == null;
	boolean typed_scope_creator_1_expr158_line_524 = false;
	if (!typed_scope_creator_1_expr156_line_524) {
		com.google.javascript.jscomp.NodeTraversal p_t_3154_line_524_v1 = t;
		com.google.javascript.jscomp.CompilerInput typed_scope_creator_1_expr160_line_524 = p_t_3154_line_524_v1
				.getInput();
		boolean typed_scope_creator_1_expr159_line_524 = typed_scope_creator_1_expr160_line_524.isExtern();
		typed_scope_creator_1_expr158_line_524 = !typed_scope_creator_1_expr159_line_524;
	}
	boolean typed_scope_creator_1_expr155_line_524 = typed_scope_creator_1_expr156_line_524
			|| typed_scope_creator_1_expr158_line_524;
	int PROBE_END_LINE_524 = 526;
	if (typed_scope_creator_1_expr155_line_524) {
            int PROBE_START_LINE_525 = 525;
			List<com.google.javascript.rhino.Node> f_non_extern_functions_3138_line_525 = nonExternFunctions;
			com.google.javascript.rhino.Node p_n_3155_line_525 = n;
			int PROBE_END_LINE_525 = 525;
			f_non_extern_functions_3138_line_525.add(p_n_3155_line_525);
          }

	int PROBE_START_LINE_529 = 531;
	com.google.javascript.rhino.Node p_n_3155_line_529 = n;
	boolean typed_scope_creator_1_expr163_line_529 = NodeUtil.isHoistedFunctionDeclaration(p_n_3155_line_529);
	boolean typed_scope_creator_1_expr162_line_529 = !typed_scope_creator_1_expr163_line_529;
	int PROBE_END_LINE_529 = 531;
	// Hoisted functions are handled during pre-traversal.
          if (typed_scope_creator_1_expr162_line_529) {
            defineFunctionLiteral(n);
          }
          break;

        case Token.ASSIGN:
          // Handle initialization of properties.
          Node firstChild = n.getFirstChild();
          if (firstChild.isGetProp() &&
              firstChild.isQualifiedName()) {
            maybeDeclareQualifiedName(t, n.getJSDocInfo(),
                firstChild, n, firstChild.getNext());
          }
          break;

        case Token.CATCH:
          defineCatch(n);
          break;

        case Token.VAR:
          defineVar(n);
          break;

        case Token.GETPROP:
          // Handle stubbed properties.
          if (parent.isExprResult() &&
              n.isQualifiedName()) {
            maybeDeclareQualifiedName(t, n.getJSDocInfo(), n, parent, null);
          }
          break;
      }

      int PROBE_START_LINE_562 = 568;
	com.google.javascript.rhino.Node p_n_3155_line_562 = n;
	com.google.javascript.rhino.Node typed_scope_creator_1_expr167_line_562 = p_n_3155_line_562.getParent();
	boolean typed_scope_creator_1_expr166_line_562 = typed_scope_creator_1_expr167_line_562 != null;
	boolean typed_scope_creator_1_expr168_line_562 = true;
	if (typed_scope_creator_1_expr166_line_562) {
		com.google.javascript.rhino.Node p_n_3155_line_562_v1 = n;
		typed_scope_creator_1_expr168_line_562 = NodeUtil.isStatement(p_n_3155_line_562_v1);
	}
	boolean typed_scope_creator_1_expr165_line_562 = typed_scope_creator_1_expr166_line_562
			&& typed_scope_creator_1_expr168_line_562;
	boolean typed_scope_creator_1_expr164_line_562 = typed_scope_creator_1_expr165_line_562
			&& lentObjectLiterals != null;
	int PROBE_END_LINE_562 = 568;
	// Analyze any @lends object literals in this statement.
      if (typed_scope_creator_1_expr164_line_562) {
        for (Node objLit : lentObjectLiterals) {
          defineObjectLiteral(objLit);
        }
        lentObjectLiterals.clear();
      }
    }

    private void attachLiteralTypes(NodeTraversal t, Node n) {
      int PROBE_START_LINE_572 = 613;
		com.google.javascript.rhino.Node p_n_3158_line_572 = n;
		int typed_scope_creator_1_expr169_line_572 = p_n_3158_line_572.getType();
		int PROBE_END_LINE_572 = 613;
	switch (typed_scope_creator_1_expr169_line_572) {
        case Token.NULL:
          n.setJSType(getNativeType(NULL_TYPE));
          break;

        case Token.VOID:
          n.setJSType(getNativeType(VOID_TYPE));
          break;

        case Token.STRING:
          n.setJSType(getNativeType(STRING_TYPE));
          break;

        case Token.NUMBER:
          n.setJSType(getNativeType(NUMBER_TYPE));
          break;

        case Token.TRUE:
        case Token.FALSE:
          n.setJSType(getNativeType(BOOLEAN_TYPE));
          break;

        case Token.REGEXP:
          n.setJSType(getNativeType(REGEXP_TYPE));
          break;

        case Token.OBJECTLIT:
          JSDocInfo info = n.getJSDocInfo();
          if (info != null &&
              info.getLendsName() != null) {
            if (lentObjectLiterals == null) {
              lentObjectLiterals = Lists.newArrayList();
            }
            lentObjectLiterals.add(n);
          } else {
            defineObjectLiteral(n);
          }
          break;

          // NOTE(nicksantos): If we ever support Array tuples,
          // we will need to put ARRAYLIT here as well.
      }
    }

    private void defineObjectLiteral(Node objectLit) {
      // Handle the @lends annotation.
      JSType type = null;
      JSDocInfo info = objectLit.getJSDocInfo();
      if (info != null && info.getLendsName() != null) {
        String lendsName = info.getLendsName();
        Var lendsVar = scope.getVar(lendsName);
        if (lendsVar == null) {
          compiler.report(
              JSError.make(sourceName, objectLit, UNKNOWN_LENDS, lendsName));
        } else {
          type = lendsVar.getType();
          if (type == null) {
            type = unknownType;
          }
          if (!type.isSubtype(typeRegistry.getNativeType(OBJECT_TYPE))) {
            compiler.report(
                JSError.make(sourceName, objectLit, LENDS_ON_NON_OBJECT,
                    lendsName, type.toString()));
            type = null;
          } else {
            objectLit.setJSType(type);
          }
        }
      }

      info = NodeUtil.getBestJSDocInfo(objectLit);
      Node lValue = NodeUtil.getBestLValue(objectLit);
      String lValueName = NodeUtil.getBestLValueName(lValue);
      boolean createdEnumType = false;
      if (info != null && info.hasEnumParameterType()) {
        type = createEnumTypeFromNodes(objectLit, lValueName, info, lValue);
        createdEnumType = true;
      }

      if (type == null) {
        type = typeRegistry.createAnonymousObjectType(info);
      }

      setDeferredType(objectLit, type);

      // If this is an enum, the properties were already taken care of above.
      processObjectLitProperties(
          objectLit, ObjectType.cast(objectLit.getJSType()), !createdEnumType);
    }

    /**
     * Process an object literal and all the types on it.
     * @param objLit The OBJECTLIT node.
     * @param objLitType The type of the OBJECTLIT node. This might be a named
     *     type, because of the lends annotation.
     * @param declareOnOwner If true, declare properties on the objLitType as
     *     well. If false, the caller should take care of this.
     */
    void processObjectLitProperties(
        Node objLit, ObjectType objLitType,
        boolean declareOnOwner) {
      for (Node keyNode = objLit.getFirstChild(); keyNode != null;
           keyNode = keyNode.getNext()) {
        Node value = keyNode.getFirstChild();
        String memberName = NodeUtil.getObjectLitKeyName(keyNode);
        JSDocInfo info = keyNode.getJSDocInfo();
        JSType valueType =
            getDeclaredType(keyNode.getSourceFileName(), info, keyNode, value);
        JSType keyType =  objLitType.isEnumType() ?
            objLitType.toMaybeEnumType().getElementsType() :
            NodeUtil.getObjectLitKeyTypeFromValueType(keyNode, valueType);

        // Try to declare this property in the current scope if it
        // has an authoritative name.
        String qualifiedName = NodeUtil.getBestLValueName(keyNode);
        if (qualifiedName != null) {
          boolean inferred = keyType == null;
          defineSlot(keyNode, objLit, qualifiedName, keyType, inferred);
        } else if (keyType != null) {
          setDeferredType(keyNode, keyType);
        }

        if (keyType != null && objLitType != null && declareOnOwner) {
          // Declare this property on its object literal.
          boolean isExtern = keyNode.isFromExterns();
          objLitType.defineDeclaredProperty(memberName, keyType, keyNode);
        }
      }
    }

    /**
     * Returns the type specified in a JSDoc annotation near a GETPROP or NAME.
     *
     * Extracts type information from either the {@code @type} tag or from
     * the {@code @return} and {@code @param} tags.
     */
    private JSType getDeclaredTypeInAnnotation(String sourceName,
        Node node, JSDocInfo info) {
      JSType jsType = null;
      Node objNode =
          node.isGetProp() ? node.getFirstChild() :
          NodeUtil.isObjectLitKey(node, node.getParent()) ? node.getParent() :
          null;
      if (info != null) {
        if (info.hasType()) {
          jsType = info.getType().evaluate(scope, typeRegistry);
        } else if (FunctionTypeBuilder.isFunctionTypeDeclaration(info)) {
          String fnName = node.getQualifiedName();
          jsType = createFunctionTypeFromNodes(
              null, fnName, info, node);
        }
      }
      return jsType;
    }

    /**
     * Asserts that it's OK to define this node's name.
     * The node should have a source name and be of the specified type.
     */
    void assertDefinitionNode(Node n, int type) {
      int PROBE_START_LINE_732 = 732;
		String f_source_name_3141_line_732 = sourceName;
		boolean typed_scope_creator_1_expr171_line_732 = f_source_name_3141_line_732 != null;
		int PROBE_END_LINE_732 = 732;
	Preconditions.checkState(typed_scope_creator_1_expr171_line_732);
      int PROBE_START_LINE_733 = 733;
	com.google.javascript.rhino.Node p_n_3166_line_733 = n;
	int typed_scope_creator_1_expr174_line_733 = p_n_3166_line_733.getType();
	int p_type_3167_line_733 = type;
	boolean typed_scope_creator_1_expr173_line_733 = typed_scope_creator_1_expr174_line_733 == p_type_3167_line_733;
	int PROBE_END_LINE_733 = 733;
	Preconditions.checkState(typed_scope_creator_1_expr173_line_733);
    }

    /**
     * Defines a catch parameter.
     */
    void defineCatch(Node n) {
      assertDefinitionNode(n, Token.CATCH);
      Node catchName = n.getFirstChild();
      defineSlot(catchName, n,
          getDeclaredType(
              sourceName, catchName.getJSDocInfo(), catchName, null));
    }

    /**
     * Defines a VAR initialization.
     */
    void defineVar(Node n) {
      assertDefinitionNode(n, Token.VAR);
      JSDocInfo info = n.getJSDocInfo();
      if (n.hasMoreThanOneChild()) {
        if (info != null) {
          // multiple children
          compiler.report(JSError.make(sourceName, n, MULTIPLE_VAR_DEF));
        }
        for (Node name : n.children()) {
          defineName(name, n, name.getJSDocInfo());
        }
      } else {
        Node name = n.getFirstChild();
        defineName(name, n, (info != null) ? info : name.getJSDocInfo());
      }
    }

    /**
     * Defines a function literal.
     */
    void defineFunctionLiteral(Node n) {
      int PROBE_START_LINE_771 = 771;
		com.google.javascript.rhino.Node p_n_3170_line_771 = n;
		int q_function_80_line_771 = Token.FUNCTION;
		int PROBE_END_LINE_771 = 771;
	assertDefinitionNode(p_n_3170_line_771, q_function_80_line_771);

      int PROBE_START_LINE_775 = 775;
	com.google.javascript.rhino.Node p_n_3170_line_775 = n;
	Node typed_scope_creator_1_expr176_line_775 = NodeUtil.getBestLValue(p_n_3170_line_775);
	int PROBE_END_LINE_775 = 775;
	// Determine the name and JSDocInfo and l-value for the function.
      // Any of these may be null.
      Node lValue = typed_scope_creator_1_expr176_line_775;
      int PROBE_START_LINE_776 = 776;
	com.google.javascript.rhino.Node p_n_3170_line_776 = n;
	JSDocInfo typed_scope_creator_1_expr177_line_776 = NodeUtil.getBestJSDocInfo(p_n_3170_line_776);
	int PROBE_END_LINE_776 = 776;
	JSDocInfo info = typed_scope_creator_1_expr177_line_776;
      int PROBE_START_LINE_777 = 777;
	com.google.javascript.rhino.Node v_l_value_3171_line_777 = lValue;
	String typed_scope_creator_1_expr178_line_777 = NodeUtil.getBestLValueName(v_l_value_3171_line_777);
	int PROBE_END_LINE_777 = 777;
	String functionName = typed_scope_creator_1_expr178_line_777;
      FunctionType functionType =
          createFunctionTypeFromNodes(n, functionName, info, lValue);

      int PROBE_START_LINE_782 = 782;
	com.google.javascript.rhino.Node p_n_3170_line_782 = n;
	com.google.javascript.rhino.jstype.FunctionType v_function_type_3174_line_782 = functionType;
	int PROBE_END_LINE_782 = 782;
	// Assigning the function type to the function node
      setDeferredType(p_n_3170_line_782, v_function_type_3174_line_782);

      int PROBE_START_LINE_787 = 789;
	com.google.javascript.rhino.Node p_n_3170_line_787 = n;
	boolean typed_scope_creator_1_expr181_line_787 = NodeUtil.isFunctionDeclaration(p_n_3170_line_787);
	int PROBE_END_LINE_787 = 789;
	// Declare this symbol in the current scope iff it's a function
      // declaration. Otherwise, the declaration will happen in other
      // code paths.
      if (typed_scope_creator_1_expr181_line_787) {
        int PROBE_START_LINE_788 = 788;
		com.google.javascript.rhino.Node p_n_3170_line_788 = n;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr183_line_788 = p_n_3170_line_788.getFirstChild();
		com.google.javascript.rhino.Node p_n_3170_line_788_v1 = n;
		com.google.javascript.rhino.jstype.FunctionType v_function_type_3174_line_788 = functionType;
		int PROBE_END_LINE_788 = 788;
		defineSlot(typed_scope_creator_1_expr183_line_788, p_n_3170_line_788_v1, v_function_type_3174_line_788);
      }
    }

    /**
     * Defines a variable based on the {@link Token#NAME} node passed.
     * @param name The {@link Token#NAME} node.
     * @param var The parent of the {@code name} node, which must be a
     *     {@link Token#VAR} node.
     * @param info the {@link JSDocInfo} information relating to this
     *     {@code name} node.
     */
    private void defineName(Node name, Node var, JSDocInfo info) {
      Node value = name.getFirstChild();

      // variable's type
      JSType type = getDeclaredType(sourceName, info, name, value);
      if (type == null) {
        // The variable's type will be inferred.
        type = name.isFromExterns() ? unknownType : null;
      }
      defineSlot(name, var, type);
    }

    /**
     * If a variable is assigned a function literal in the global scope,
     * make that a declared type (even if there's no doc info).
     * There's only one exception to this rule:
     * if the return type is inferred, and we're in a local
     * scope, we should assume the whole function is inferred.
     */
    private boolean shouldUseFunctionLiteralType(
        FunctionType type, JSDocInfo info, Node lValue) {
      if (info != null) {
        return true;
      }
      if (lValue != null &&
          NodeUtil.isObjectLitKey(lValue, lValue.getParent())) {
        return false;
      }
      return scope.isGlobal() || !type.isReturnTypeInferred();
    }

    /**
     * Creates a new function type, based on the given nodes.
     *
     * This handles two cases that are semantically very different, but
     * are not mutually exclusive:
     * - A function literal that needs a type attached to it.
     * - An assignment expression with function-type info in the JsDoc.
     *
     * All parameters are optional, and we will do the best we can to create
     * a function type.
     *
     * This function will always create a function type, so only call it if
     * you're sure that's what you want.
     *
     * @param rValue The function node.
     * @param name the function's name
     * @param info the {@link JSDocInfo} attached to the function definition
     * @param lvalueNode The node where this function is being
     *     assigned. For example, {@code A.prototype.foo = ...} would be used to
     *     determine that this function is a method of A.prototype. May be
     *     null to indicate that this is not being assigned to a qualified name.
     */
    private FunctionType createFunctionTypeFromNodes(
        @Nullable Node rValue,
        @Nullable String name,
        @Nullable JSDocInfo info,
        @Nullable Node lvalueNode) {

      FunctionType functionType = null;

      int PROBE_START_LINE_862 = 876;
	com.google.javascript.rhino.Node p_r_value_3181_line_862 = rValue;
	boolean typed_scope_creator_1_expr186_line_862 = p_r_value_3181_line_862 != null;
	boolean typed_scope_creator_1_expr187_line_862 = true;
	if (typed_scope_creator_1_expr186_line_862) {
		com.google.javascript.rhino.Node p_r_value_3181_line_862_v1 = rValue;
		typed_scope_creator_1_expr187_line_862 = p_r_value_3181_line_862_v1.isQualifiedName();
	}
	boolean typed_scope_creator_1_expr185_line_862 = typed_scope_creator_1_expr186_line_862
			&& typed_scope_creator_1_expr187_line_862;
	boolean typed_scope_creator_1_expr188_line_862 = true;
	if (typed_scope_creator_1_expr185_line_862) {
		com.google.javascript.jscomp.Scope f_scope_3143_line_862 = scope;
		typed_scope_creator_1_expr188_line_862 = f_scope_3143_line_862.isGlobal();
	}
	boolean typed_scope_creator_1_expr184_line_862 = typed_scope_creator_1_expr185_line_862
			&& typed_scope_creator_1_expr188_line_862;
	int PROBE_END_LINE_862 = 876;
	// Global ctor aliases should be registered with the type registry.
      if (typed_scope_creator_1_expr184_line_862) {
        Var var = scope.getVar(rValue.getQualifiedName());
        if (var != null && var.getType() != null &&
            var.getType().isFunctionType()) {
          FunctionType aliasedType  = var.getType().toMaybeFunctionType();
          if ((aliasedType.isConstructor() || aliasedType.isInterface()) &&
              !aliasedType.isNativeObjectType()) {
            functionType = aliasedType;

            if (name != null && scope.isGlobal()) {
              typeRegistry.declareType(name, functionType.getInstanceType());
            }
          }
        }
      }

      int PROBE_START_LINE_878 = 957;
	com.google.javascript.rhino.jstype.FunctionType v_function_type_3185_line_878 = functionType;
	boolean typed_scope_creator_1_expr189_line_878 = v_function_type_3185_line_878 == null;
	int PROBE_END_LINE_878 = 957;
	if (typed_scope_creator_1_expr189_line_878) {
        int PROBE_START_LINE_879 = 879;
		com.google.javascript.rhino.Node p_r_value_3181_line_879 = rValue;
		boolean typed_scope_creator_1_expr191_line_879 = p_r_value_3181_line_879 == null;
		com.google.javascript.rhino.Node p_lvalue_node_3184_line_879 = null;
		com.google.javascript.rhino.Node p_r_value_3181_line_879_v1 = null;
		if (typed_scope_creator_1_expr191_line_879) {
			p_lvalue_node_3184_line_879 = lvalueNode;
		} else {
			p_r_value_3181_line_879_v1 = rValue;
		}
		Node typed_scope_creator_1_expr190_line_879 = typed_scope_creator_1_expr191_line_879
				? p_lvalue_node_3184_line_879
				: p_r_value_3181_line_879_v1;
		int PROBE_END_LINE_879 = 879;
		Node errorRoot = typed_scope_creator_1_expr190_line_879;
        boolean isFnLiteral =
            rValue != null && rValue.isFunction();
        int PROBE_START_LINE_882 = 882;
		boolean v_is_fn_literal_3187_line_882 = isFnLiteral;
		com.google.javascript.rhino.Node p_r_value_3181_line_882 = null;
		if (v_is_fn_literal_3187_line_882) {
			p_r_value_3181_line_882 = rValue;
		}
		Node typed_scope_creator_1_expr193_line_882 = v_is_fn_literal_3187_line_882 ? p_r_value_3181_line_882 : null;
		int PROBE_END_LINE_882 = 882;
		Node fnRoot = typed_scope_creator_1_expr193_line_882;
        int PROBE_START_LINE_883 = 884;
		boolean v_is_fn_literal_3187_line_883 = isFnLiteral;
		Node typed_scope_creator_1_expr194_line_883 = v_is_fn_literal_3187_line_883
				? rValue.getFirstChild().getNext()
				: null;
		int PROBE_END_LINE_883 = 884;
		Node parametersNode = typed_scope_creator_1_expr194_line_883;
        int PROBE_START_LINE_885 = 885;
		boolean v_is_fn_literal_3187_line_885 = isFnLiteral;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr197_line_885 = null;
		if (v_is_fn_literal_3187_line_885) {
			com.google.javascript.rhino.Node v_parameters_node_3189_line_885 = parametersNode;
			typed_scope_creator_1_expr197_line_885 = v_parameters_node_3189_line_885.getNext();
		}
		Node typed_scope_creator_1_expr196_line_885 = v_is_fn_literal_3187_line_885
				? typed_scope_creator_1_expr197_line_885
				: null;
		int PROBE_END_LINE_885 = 885;
		Node fnBlock = typed_scope_creator_1_expr196_line_885;

        int PROBE_START_LINE_887 = 896;
		com.google.javascript.rhino.JSDocInfo p_info_3183_line_887 = info;
		boolean typed_scope_creator_1_expr199_line_887 = p_info_3183_line_887 != null;
		boolean typed_scope_creator_1_expr200_line_887 = true;
		if (typed_scope_creator_1_expr199_line_887) {
			com.google.javascript.rhino.JSDocInfo p_info_3183_line_887_v1 = info;
			typed_scope_creator_1_expr200_line_887 = p_info_3183_line_887_v1.hasType();
		}
		boolean typed_scope_creator_1_expr198_line_887 = typed_scope_creator_1_expr199_line_887
				&& typed_scope_creator_1_expr200_line_887;
		int PROBE_END_LINE_887 = 896;
		if (typed_scope_creator_1_expr198_line_887) {
          JSType type = info.getType().evaluate(scope, typeRegistry);

          // Known to be not null since we have the FUNCTION token there.
          type = type.restrictByNotNullOrUndefined();
          if (type.isFunctionType()) {
            functionType = type.toMaybeFunctionType();
            functionType.setJSDocInfo(info);
          }
        }

        int PROBE_START_LINE_898 = 956;
		com.google.javascript.rhino.jstype.FunctionType v_function_type_3185_line_898 = functionType;
		boolean typed_scope_creator_1_expr201_line_898 = v_function_type_3185_line_898 == null;
		int PROBE_END_LINE_898 = 956;
		if (typed_scope_creator_1_expr201_line_898) {
          int PROBE_START_LINE_900 = 900;
			com.google.javascript.rhino.Node p_lvalue_node_3184_line_900 = lvalueNode;
			Node typed_scope_creator_1_expr202_line_900 = NodeUtil.getBestLValueOwner(p_lvalue_node_3184_line_900);
			int PROBE_END_LINE_900 = 900;
		// Find the type of any overridden function.
          Node ownerNode = typed_scope_creator_1_expr202_line_900;
          int PROBE_START_LINE_901 = 901;
		com.google.javascript.rhino.Node v_owner_node_3191_line_901 = ownerNode;
		String typed_scope_creator_1_expr203_line_901 = NodeUtil.getBestLValueName(v_owner_node_3191_line_901);
		int PROBE_END_LINE_901 = 901;
		String ownerName = typed_scope_creator_1_expr203_line_901;
          Var ownerVar = null;
          String propName = null;
          ObjectType ownerType = null;
          int PROBE_START_LINE_905 = 913;
		String v_owner_name_3192_line_905 = ownerName;
		boolean typed_scope_creator_1_expr204_line_905 = v_owner_name_3192_line_905 != null;
		int PROBE_END_LINE_905 = 913;
		if (typed_scope_creator_1_expr204_line_905) {
            ownerVar = scope.getVar(ownerName);
            if (ownerVar != null) {
              ownerType = ObjectType.cast(ownerVar.getType());
            }
            if (name != null) {
              propName = name.substring(ownerName.length() + 1);
            }
          }

          FunctionType overriddenType = null;
          int PROBE_START_LINE_916 = 918;
		com.google.javascript.rhino.jstype.ObjectType v_owner_type_3195_line_916 = ownerType;
		boolean typed_scope_creator_1_expr206_line_916 = v_owner_type_3195_line_916 != null;
		boolean typed_scope_creator_1_expr207_line_916 = true;
		if (typed_scope_creator_1_expr206_line_916) {
			String v_prop_name_3194_line_916 = propName;
			typed_scope_creator_1_expr207_line_916 = v_prop_name_3194_line_916 != null;
		}
		boolean typed_scope_creator_1_expr205_line_916 = typed_scope_creator_1_expr206_line_916
				&& typed_scope_creator_1_expr207_line_916;
		int PROBE_END_LINE_916 = 918;
		if (typed_scope_creator_1_expr205_line_916) {
            overriddenType = findOverriddenFunction(ownerType, propName);
          }

          FunctionTypeBuilder builder =
              new FunctionTypeBuilder(name, compiler, errorRoot, sourceName,
                  scope)
              .setContents(getFunctionAnalysisResults(fnRoot))
              .inferFromOverriddenFunction(overriddenType, parametersNode)
              .inferTemplateTypeName(info)
              .inferReturnType(info)
              .inferInheritance(info);

          // Infer the context type.
          boolean searchedForThisType = false;
          int PROBE_START_LINE_931 = 947;
		com.google.javascript.rhino.jstype.ObjectType v_owner_type_3195_line_931 = ownerType;
		boolean typed_scope_creator_1_expr211_line_931 = v_owner_type_3195_line_931 != null;
		boolean typed_scope_creator_1_expr212_line_931 = true;
		if (typed_scope_creator_1_expr211_line_931) {
			com.google.javascript.rhino.jstype.ObjectType v_owner_type_3195_line_931_v1 = ownerType;
			typed_scope_creator_1_expr212_line_931 = v_owner_type_3195_line_931_v1.isFunctionPrototypeType();
		}
		boolean typed_scope_creator_1_expr210_line_931 = typed_scope_creator_1_expr211_line_931
				&& typed_scope_creator_1_expr212_line_931;
		boolean typed_scope_creator_1_expr209_line_931 = typed_scope_creator_1_expr210_line_931
				&& ownerType.getOwnerFunction().hasInstanceType();
		int PROBE_END_LINE_931 = 947;
		if (typed_scope_creator_1_expr209_line_931) {
            builder.inferThisType(
                info, ownerType.getOwnerFunction().getInstanceType());
            searchedForThisType = true;
          } else {
			int PROBE_START_LINE_936 = 947;
			com.google.javascript.rhino.Node v_owner_node_3191_line_936 = ownerNode;
			boolean typed_scope_creator_1_expr214_line_936 = v_owner_node_3191_line_936 != null;
			boolean typed_scope_creator_1_expr215_line_936 = true;
			if (typed_scope_creator_1_expr214_line_936) {
				com.google.javascript.rhino.Node v_owner_node_3191_line_936_v1 = ownerNode;
				typed_scope_creator_1_expr215_line_936 = v_owner_node_3191_line_936_v1.isThis();
			}
			boolean typed_scope_creator_1_expr213_line_936 = typed_scope_creator_1_expr214_line_936
					&& typed_scope_creator_1_expr215_line_936;
			int PROBE_END_LINE_936 = 947;
			if (typed_scope_creator_1_expr213_line_936) {
				JSType injectedThisType = ownerNode.getJSType();
				builder.inferThisType(info, injectedThisType == null ? scope.getTypeOfThis() : injectedThisType);
				searchedForThisType = true;
			}
		}

          int PROBE_START_LINE_949 = 951;
		boolean v_searched_for_this_type_3198_line_949 = searchedForThisType;
		boolean typed_scope_creator_1_expr216_line_949 = !v_searched_for_this_type_3198_line_949;
		int PROBE_END_LINE_949 = 951;
		if (typed_scope_creator_1_expr216_line_949) {
            int PROBE_START_LINE_950 = 950;
			com.google.javascript.jscomp.FunctionTypeBuilder v_builder_3197_line_950 = builder;
			com.google.javascript.rhino.JSDocInfo p_info_3183_line_950 = info;
			int PROBE_END_LINE_950 = 950;
			v_builder_3197_line_950.inferThisType(p_info_3183_line_950);
          }

          int PROBE_START_LINE_953 = 955;
		com.google.javascript.jscomp.FunctionTypeBuilder v_builder_3197_line_953 = builder;
		com.google.javascript.jscomp.FunctionTypeBuilder typed_scope_creator_1_expr220_line_953 = v_builder_3197_line_953
				.inferParameterTypes(parametersNode, info);
		com.google.javascript.rhino.jstype.FunctionType typed_scope_creator_1_expr219_line_953 = typed_scope_creator_1_expr220_line_953
				.buildAndRegister();
		int PROBE_END_LINE_953 = 955;
		functionType = typed_scope_creator_1_expr219_line_953;
        }
      }

      int PROBE_START_LINE_960 = 960;
	com.google.javascript.rhino.jstype.FunctionType v_function_type_3185_line_960 = functionType;
	int PROBE_END_LINE_960 = 960;
	// all done
      return v_function_type_3185_line_960;
    }

    /**
     * Find the function that's being overridden on this type, if any.
     */
    private FunctionType findOverriddenFunction(
        ObjectType ownerType, String propName) {
      // First, check to see if the property is implemented
      // on a superclass.
      JSType propType = ownerType.getPropertyType(propName);
      if (propType != null && propType.isFunctionType()) {
        return propType.toMaybeFunctionType();
      } else {
        // If it's not, then check to see if it's implemented
        // on an implemented interface.
        for (ObjectType iface :
                 ownerType.getCtorImplementedInterfaces()) {
          propType = iface.getPropertyType(propName);
          if (propType != null && propType.isFunctionType()) {
            return propType.toMaybeFunctionType();
          }
        }
      }

      return null;
    }

    /**
     * Creates a new enum type, based on the given nodes.
     *
     * This handles two cases that are semantically very different, but
     * are not mutually exclusive:
     * - An object literal that needs an enum type attached to it.
     * - An assignment expression with an enum tag in the JsDoc.
     *
     * This function will always create an enum type, so only call it if
     * you're sure that's what you want.
     *
     * @param rValue The node of the enum.
     * @param name The enum's name
     * @param info The {@link JSDocInfo} attached to the enum definition.
     * @param lValueNode The node where this function is being
     *     assigned.
     */
    private EnumType createEnumTypeFromNodes(Node rValue, String name,
        JSDocInfo info, Node lValueNode) {
      Preconditions.checkNotNull(info);
      Preconditions.checkState(info.hasEnumParameterType());

      EnumType enumType = null;
      if (rValue != null && rValue.isQualifiedName()) {
        // Handle an aliased enum.
        Var var = scope.getVar(rValue.getQualifiedName());
        if (var != null && var.getType() instanceof EnumType) {
          enumType = (EnumType) var.getType();
        }
      }

      if (enumType == null) {
        JSType elementsType =
            info.getEnumParameterType().evaluate(scope, typeRegistry);
        enumType = typeRegistry.createEnumType(name, rValue, elementsType);

        if (rValue != null && rValue.isObjectLit()) {
          // collect enum elements
          Node key = rValue.getFirstChild();
          while (key != null) {
            String keyName = NodeUtil.getStringValue(key);
            if (keyName == null) {
              // GET and SET don't have a String value;
              compiler.report(
                  JSError.make(sourceName, key, ENUM_NOT_CONSTANT, keyName));
            } else if (!codingConvention.isValidEnumKey(keyName)) {
              compiler.report(
                  JSError.make(sourceName, key, ENUM_NOT_CONSTANT, keyName));
            } else {
              enumType.defineElement(keyName, key);
            }
            key = key.getNext();
          }
        }
      }

      if (name != null && scope.isGlobal()) {
        typeRegistry.declareType(name, enumType.getElementsType());
      }

      return enumType;
    }

    /**
     * Defines a typed variable. The defining node will be annotated with the
     * variable's type or {@code null} if its type is inferred.
     * @param name the defining node. It must be a {@link Token#NAME}.
     * @param parent the {@code name}'s parent.
     * @param type the variable's type. It may be {@code null}, in which case
     *     the variable's type will be inferred.
     */
    private void defineSlot(Node name, Node parent, JSType type) {
      int PROBE_START_LINE_1060 = 1060;
		com.google.javascript.rhino.Node p_name_3205_line_1060 = name;
		com.google.javascript.rhino.Node p_parent_3206_line_1060 = parent;
		com.google.javascript.rhino.jstype.JSType p_type_3207_line_1060 = type;
		com.google.javascript.rhino.jstype.JSType p_type_3207_line_1060_v1 = type;
		boolean typed_scope_creator_1_expr222_line_1060 = p_type_3207_line_1060_v1 == null;
		int PROBE_END_LINE_1060 = 1060;
	defineSlot(p_name_3205_line_1060, p_parent_3206_line_1060, p_type_3207_line_1060, typed_scope_creator_1_expr222_line_1060);
    }

    /**
     * Defines a typed variable. The defining node will be annotated with the
     * variable's type of {@link JSTypeNative#UNKNOWN_TYPE} if its type is
     * inferred.
     *
     * Slots may be any variable or any qualified name in the global scope.
     *
     * @param n the defining NAME or GETPROP node.
     * @param parent the {@code n}'s parent.
     * @param type the variable's type. It may be {@code null} if
     *     {@code inferred} is {@code true}.
     */
    void defineSlot(Node n, Node parent, JSType type, boolean inferred) {
      int PROBE_START_LINE_1076 = 1076;
		boolean p_inferred_3211_line_1076 = inferred;
		boolean typed_scope_creator_1_expr225_line_1076 = false;
		if (!p_inferred_3211_line_1076) {
			com.google.javascript.rhino.jstype.JSType p_type_3210_line_1076 = type;
			typed_scope_creator_1_expr225_line_1076 = p_type_3210_line_1076 != null;
		}
		boolean typed_scope_creator_1_expr224_line_1076 = p_inferred_3211_line_1076
				|| typed_scope_creator_1_expr225_line_1076;
		int PROBE_END_LINE_1076 = 1076;
	Preconditions.checkArgument(typed_scope_creator_1_expr224_line_1076);

      int PROBE_START_LINE_1080 = 1091;
	com.google.javascript.rhino.Node p_n_3208_line_1080 = n;
	boolean typed_scope_creator_1_expr226_line_1080 = p_n_3208_line_1080.isName();
	int PROBE_END_LINE_1080 = 1091;
	// Only allow declarations of NAMEs and qualified names.
      // Object literal keys will have to compute their names themselves.
      if (typed_scope_creator_1_expr226_line_1080) {
        Preconditions.checkArgument(
            parent.isFunction() ||
            parent.isVar() ||
            parent.isParamList() ||
            parent.isCatch());
      } else {
        Preconditions.checkArgument(
            n.isGetProp() &&
            (parent.isAssign() ||
             parent.isExprResult()));
      }
      int PROBE_START_LINE_1092 = 1092;
	com.google.javascript.rhino.Node p_n_3208_line_1092 = n;
	com.google.javascript.rhino.Node p_parent_3209_line_1092 = parent;
	com.google.javascript.rhino.Node p_n_3208_line_1092_v1 = n;
	String typed_scope_creator_1_expr230_line_1092 = p_n_3208_line_1092_v1.getQualifiedName();
	com.google.javascript.rhino.jstype.JSType p_type_3210_line_1092 = type;
	boolean p_inferred_3211_line_1092 = inferred;
	int PROBE_END_LINE_1092 = 1092;
	defineSlot(p_n_3208_line_1092, p_parent_3209_line_1092, typed_scope_creator_1_expr230_line_1092, p_type_3210_line_1092, p_inferred_3211_line_1092);
    }


    /**
     * Defines a symbol in the current scope.
     *
     * @param n the defining NAME or GETPROP or object literal key node.
     * @param parent the {@code n}'s parent.
     * @param variableName The name that this should be known by.
     * @param type the variable's type. It may be {@code null} if
     *     {@code inferred} is {@code true}.
     * @param inferred Whether the type is inferred or declared.
     */
    void defineSlot(Node n, Node parent, String variableName,
        JSType type, boolean inferred) {
      int PROBE_START_LINE_1108 = 1108;
			String p_variable_name_3214_line_1108 = variableName;
			boolean typed_scope_creator_1_expr233_line_1108 = p_variable_name_3214_line_1108.isEmpty();
			boolean typed_scope_creator_1_expr232_line_1108 = !typed_scope_creator_1_expr233_line_1108;
			int PROBE_END_LINE_1108 = 1108;
	Preconditions.checkArgument(typed_scope_creator_1_expr232_line_1108);

      int PROBE_START_LINE_1110 = 1110;
	com.google.javascript.rhino.Node p_n_3212_line_1110 = n;
	boolean typed_scope_creator_1_expr235_line_1110 = p_n_3212_line_1110.isName();
	boolean typed_scope_creator_1_expr236_line_1110 = true;
	if (typed_scope_creator_1_expr235_line_1110) {
		com.google.javascript.jscomp.Scope f_scope_3143_line_1110 = scope;
		typed_scope_creator_1_expr236_line_1110 = f_scope_3143_line_1110.isGlobal();
	}
	boolean typed_scope_creator_1_expr234_line_1110 = typed_scope_creator_1_expr235_line_1110
			&& typed_scope_creator_1_expr236_line_1110;
	int PROBE_END_LINE_1110 = 1110;
	boolean isGlobalVar = typed_scope_creator_1_expr234_line_1110;
      boolean shouldDeclareOnGlobalThis =
          isGlobalVar &&
          (parent.isVar() ||
           parent.isFunction());

      int PROBE_START_LINE_1119 = 1119;
	Scope f_scope_3143_line_1119 = scope;
	int PROBE_END_LINE_1119 = 1119;
	// If n is a property, then we should really declare it in the
      // scope where the root object appears. This helps out people
      // who declare "global" names in an anonymous namespace.
      Scope scopeToDeclareIn = f_scope_3143_line_1119;
      int PROBE_START_LINE_1120 = 1129;
	com.google.javascript.rhino.Node p_n_3212_line_1120 = n;
	boolean typed_scope_creator_1_expr239_line_1120 = p_n_3212_line_1120.isGetProp();
	boolean typed_scope_creator_1_expr240_line_1120 = true;
	if (typed_scope_creator_1_expr239_line_1120) {
		com.google.javascript.jscomp.Scope f_scope_3143_line_1120 = scope;
		boolean typed_scope_creator_1_expr241_line_1120 = f_scope_3143_line_1120.isGlobal();
		typed_scope_creator_1_expr240_line_1120 = !typed_scope_creator_1_expr241_line_1120;
	}
	boolean typed_scope_creator_1_expr238_line_1120 = typed_scope_creator_1_expr239_line_1120
			&& typed_scope_creator_1_expr240_line_1120 && isQnameRootedInGlobalScope(n);
	int PROBE_END_LINE_1120 = 1129;
	if (typed_scope_creator_1_expr238_line_1120) {
        Scope globalScope = scope.getGlobalScope();

        // don't try to declare in the global scope if there's
        // already a symbol there with this name.
        if (!globalScope.isDeclared(variableName, false)) {
          scopeToDeclareIn = scope.getGlobalScope();
        }
      }

      int PROBE_START_LINE_1133 = 1133;
	com.google.javascript.rhino.Node p_n_3212_line_1133 = n;
	boolean typed_scope_creator_1_expr242_line_1133 = p_n_3212_line_1133.isFromExterns();
	int PROBE_END_LINE_1133 = 1133;
	// The input may be null if we are working with a AST snippet. So read
      // the extern info from the node.
      boolean isExtern = typed_scope_creator_1_expr242_line_1133;
      Var newVar = null;

      int PROBE_START_LINE_1137 = 1137;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_3082_line_1137 = compiler;
	com.google.javascript.rhino.InputId f_input_id_3151_line_1137 = inputId;
	CompilerInput typed_scope_creator_1_expr243_line_1137 = f_compiler_3082_line_1137
			.getInput(f_input_id_3151_line_1137);
	int PROBE_END_LINE_1137 = 1137;
	// declared in closest scope?
      CompilerInput input = typed_scope_creator_1_expr243_line_1137;
      int PROBE_START_LINE_1138 = 1159;
	com.google.javascript.jscomp.Scope v_scope_to_declare_in_3219_line_1138 = scopeToDeclareIn;
	String p_variable_name_3214_line_1138 = variableName;
	boolean typed_scope_creator_1_expr244_line_1138 = v_scope_to_declare_in_3219_line_1138
			.isDeclared(p_variable_name_3214_line_1138, false);
	int PROBE_END_LINE_1138 = 1159;
	if (typed_scope_creator_1_expr244_line_1138) {
        Var oldVar = scopeToDeclareIn.getVar(variableName);
        newVar = validator.expectUndeclaredVariable(
            sourceName, input, n, parent, oldVar, variableName, type);
      } else {
        int PROBE_START_LINE_1143 = 1145;
		com.google.javascript.rhino.jstype.JSType p_type_3215_line_1143 = type;
		boolean typed_scope_creator_1_expr245_line_1143 = p_type_3215_line_1143 != null;
		int PROBE_END_LINE_1143 = 1145;
		if (typed_scope_creator_1_expr245_line_1143) {
          int PROBE_START_LINE_1144 = 1144;
			com.google.javascript.rhino.Node p_n_3212_line_1144 = n;
			com.google.javascript.rhino.jstype.JSType p_type_3215_line_1144 = type;
			int PROBE_END_LINE_1144 = 1144;
		setDeferredType(p_n_3212_line_1144, p_type_3215_line_1144);
        }

        newVar =
          scopeToDeclareIn.declare(variableName, n, type, input, inferred);

        int PROBE_START_LINE_1150 = 1158;
		com.google.javascript.rhino.jstype.JSType p_type_3215_line_1150 = type;
		boolean typed_scope_creator_1_expr249_line_1150 = p_type_3215_line_1150 instanceof EnumType;
		int PROBE_END_LINE_1150 = 1158;
		if (typed_scope_creator_1_expr249_line_1150) {
          Node initialValue = newVar.getInitialValue();
          boolean isValidValue = initialValue != null &&
              (initialValue.isObjectLit() ||
               initialValue.isQualifiedName());
          if (!isValidValue) {
            compiler.report(JSError.make(sourceName, n, ENUM_INITIALIZER));
          }
        }
      }

      int PROBE_START_LINE_1162 = 1162;
	com.google.javascript.rhino.jstype.JSType p_type_3215_line_1162 = type;
	FunctionType typed_scope_creator_1_expr250_line_1162 = JSType.toMaybeFunctionType(p_type_3215_line_1162);
	int PROBE_END_LINE_1162 = 1162;
	// We need to do some additional work for constructors and interfaces.
      FunctionType fnType = typed_scope_creator_1_expr250_line_1162;
      int PROBE_START_LINE_1163 = 1177;
	com.google.javascript.rhino.jstype.FunctionType v_fn_type_3223_line_1163 = fnType;
	boolean typed_scope_creator_1_expr252_line_1163 = v_fn_type_3223_line_1163 != null;
	boolean typed_scope_creator_1_expr251_line_1163 = typed_scope_creator_1_expr252_line_1163 && !type.isEmptyType();
	int PROBE_END_LINE_1163 = 1177;
	if (typed_scope_creator_1_expr251_line_1163) {

        int PROBE_START_LINE_1172 = 1176;
			com.google.javascript.rhino.jstype.FunctionType v_fn_type_3223_line_1172 = fnType;
			boolean typed_scope_creator_1_expr256_line_1172 = v_fn_type_3223_line_1172.isConstructor();
			boolean typed_scope_creator_1_expr257_line_1172 = false;
			if (!typed_scope_creator_1_expr256_line_1172) {
				com.google.javascript.rhino.jstype.FunctionType v_fn_type_3223_line_1172_v1 = fnType;
				typed_scope_creator_1_expr257_line_1172 = v_fn_type_3223_line_1172_v1.isInterface();
			}
			boolean typed_scope_creator_1_expr255_line_1172 = typed_scope_creator_1_expr256_line_1172
					|| typed_scope_creator_1_expr257_line_1172;
			boolean typed_scope_creator_1_expr254_line_1172 = (typed_scope_creator_1_expr255_line_1172);
			boolean typed_scope_creator_1_expr253_line_1172 = typed_scope_creator_1_expr254_line_1172
					&& variableName.equals(fnType.getReferenceName());
			int PROBE_END_LINE_1172 = 1176;
		// We want to make sure that when we declare a new instance type
        // (with @constructor) that there's actually a ctor for it.
        // This doesn't apply to structural constructors (like
        // function(new:Array). Checking the constructed type against
        // the variable name is a sufficient check for this.
        if (typed_scope_creator_1_expr253_line_1172) {
          int PROBE_START_LINE_1174 = 1175;
				com.google.javascript.rhino.Node p_n_3212_line_1174 = n;
				String p_variable_name_3214_line_1174 = variableName;
				com.google.javascript.rhino.jstype.FunctionType v_fn_type_3223_line_1174 = fnType;
				com.google.javascript.jscomp.Scope v_scope_to_declare_in_3219_line_1174 = scopeToDeclareIn;
				int PROBE_END_LINE_1174 = 1175;
		finishConstructorDefinition(p_n_3212_line_1174, p_variable_name_3214_line_1174, v_fn_type_3223_line_1174, v_scope_to_declare_in_3219_line_1174,
                                      input, newVar);
        }
      }

      int PROBE_START_LINE_1179 = 1191;
	boolean v_should_declare_on_global_this_3218_line_1179 = shouldDeclareOnGlobalThis;
	int PROBE_END_LINE_1179 = 1191;
	if (v_should_declare_on_global_this_3218_line_1179) {
        ObjectType globalThis =
            typeRegistry.getNativeObjectType(GLOBAL_THIS);
        int PROBE_START_LINE_1182 = 1190;
		boolean p_inferred_3216_line_1182 = inferred;
		int PROBE_END_LINE_1182 = 1190;
		if (p_inferred_3216_line_1182) {
          globalThis.defineInferredProperty(variableName,
              type == null ?
              getNativeType(JSTypeNative.NO_TYPE) :
              type,
              n);
        } else {
          int PROBE_START_LINE_1189 = 1189;
			com.google.javascript.rhino.jstype.ObjectType v_global_this_3224_line_1189 = globalThis;
			String p_variable_name_3214_line_1189 = variableName;
			com.google.javascript.rhino.jstype.JSType p_type_3215_line_1189 = type;
			com.google.javascript.rhino.Node p_n_3212_line_1189 = n;
			int PROBE_END_LINE_1189 = 1189;
		v_global_this_3224_line_1189.defineDeclaredProperty(p_variable_name_3214_line_1189, p_type_3215_line_1189, p_n_3212_line_1189);
        }
      }

      int PROBE_START_LINE_1193 = 1203;
	boolean v_is_global_var_3217_line_1193 = isGlobalVar;
	boolean typed_scope_creator_1_expr264_line_1193 = true;
	if (v_is_global_var_3217_line_1193) {
		String p_variable_name_3214_line_1193 = variableName;
		typed_scope_creator_1_expr264_line_1193 = "Window".equals(p_variable_name_3214_line_1193);
	}
	boolean typed_scope_creator_1_expr263_line_1193 = v_is_global_var_3217_line_1193
			&& typed_scope_creator_1_expr264_line_1193 && type != null;
	boolean typed_scope_creator_1_expr262_line_1193 = typed_scope_creator_1_expr263_line_1193 && type.isFunctionType();
	boolean typed_scope_creator_1_expr261_line_1193 = typed_scope_creator_1_expr262_line_1193 && type.isConstructor();
	int PROBE_END_LINE_1193 = 1203;
	if (typed_scope_creator_1_expr261_line_1193) {
        FunctionType globalThisCtor =
            typeRegistry.getNativeObjectType(GLOBAL_THIS).getConstructor();
        globalThisCtor.getInstanceType().clearCachedValues();
        globalThisCtor.getPrototype().clearCachedValues();
        globalThisCtor
            .setPrototypeBasedOn((type.toMaybeFunctionType()).getInstanceType());
      }
    }

    private void finishConstructorDefinition(
        Node n, String variableName, FunctionType fnType,
        Scope scopeToDeclareIn, CompilerInput input, Var newVar) {
      int PROBE_START_LINE_1210 = 1210;
			com.google.javascript.rhino.jstype.FunctionType p_fn_type_3227_line_1210 = fnType;
			FunctionType typed_scope_creator_1_expr265_line_1210 = p_fn_type_3227_line_1210.getSuperClassConstructor();
			int PROBE_END_LINE_1210 = 1210;
	// Declare var.prototype in the scope chain.
      FunctionType superClassCtor = typed_scope_creator_1_expr265_line_1210;
      int PROBE_START_LINE_1211 = 1211;
	com.google.javascript.rhino.jstype.FunctionType p_fn_type_3227_line_1211 = fnType;
	Property typed_scope_creator_1_expr266_line_1211 = p_fn_type_3227_line_1211.getSlot("prototype");
	int PROBE_END_LINE_1211 = 1211;
	Property prototypeSlot = typed_scope_creator_1_expr266_line_1211;

      int PROBE_START_LINE_1221 = 1221;
	com.google.javascript.rhino.jstype.Property v_prototype_slot_3232_line_1221 = prototypeSlot;
	com.google.javascript.rhino.Node p_n_3225_line_1221 = n;
	int PROBE_END_LINE_1221 = 1221;
	// When we declare the function prototype implicitly, we
      // want to make sure that the function and its prototype
      // are declared at the same node. We also want to make sure
      // that the if a symbol has both a Var and a JSType, they have
      // the same node.
      //
      // This consistency is helpful to users of SymbolTable,
      // because everything gets declared at the same place.
      v_prototype_slot_3232_line_1221.setNode(p_n_3225_line_1221);

      int PROBE_START_LINE_1223 = 1223;
	String p_variable_name_3226_line_1223 = variableName;
	String typed_scope_creator_1_expr268_line_1223 = p_variable_name_3226_line_1223 + ".prototype";
	int PROBE_END_LINE_1223 = 1223;
	String prototypeName = typed_scope_creator_1_expr268_line_1223;

      int PROBE_START_LINE_1228 = 1228;
	com.google.javascript.jscomp.Scope p_scope_to_declare_in_3228_line_1228 = scopeToDeclareIn;
	String v_prototype_name_3233_line_1228 = prototypeName;
	Var typed_scope_creator_1_expr269_line_1228 = p_scope_to_declare_in_3228_line_1228
			.getVar(v_prototype_name_3233_line_1228);
	int PROBE_END_LINE_1228 = 1228;
	// There are some rare cases where the prototype will already
      // be declared. See TypedScopeCreatorTest#testBogusPrototypeInit.
      // Fortunately, other warnings will complain if this happens.
      Var prototypeVar = typed_scope_creator_1_expr269_line_1228;
      int PROBE_START_LINE_1229 = 1231;
	com.google.javascript.jscomp.Scope.Var v_prototype_var_3234_line_1229 = prototypeVar;
	boolean typed_scope_creator_1_expr271_line_1229 = v_prototype_var_3234_line_1229 != null;
	boolean typed_scope_creator_1_expr272_line_1229 = true;
	if (typed_scope_creator_1_expr271_line_1229) {
		com.google.javascript.jscomp.Scope.Var v_prototype_var_3234_line_1229_v1 = prototypeVar;
		com.google.javascript.jscomp.Scope q_scope_80_line_1229 = v_prototype_var_3234_line_1229_v1.scope;
		com.google.javascript.jscomp.Scope p_scope_to_declare_in_3228_line_1229 = scopeToDeclareIn;
		typed_scope_creator_1_expr272_line_1229 = q_scope_80_line_1229 == p_scope_to_declare_in_3228_line_1229;
	}
	boolean typed_scope_creator_1_expr270_line_1229 = typed_scope_creator_1_expr271_line_1229
			&& typed_scope_creator_1_expr272_line_1229;
	int PROBE_END_LINE_1229 = 1231;
	if (typed_scope_creator_1_expr270_line_1229) {
        scopeToDeclareIn.undeclare(prototypeVar);
      }

      int PROBE_START_LINE_1233 = 1238;
	com.google.javascript.jscomp.Scope p_scope_to_declare_in_3228_line_1233 = scopeToDeclareIn;
	String v_prototype_name_3233_line_1233 = prototypeName;
	int PROBE_END_LINE_1233 = 1238;
	p_scope_to_declare_in_3228_line_1233.declare(v_prototype_name_3233_line_1233,
          n, prototypeSlot.getType(), input,
          /* declared iff there's an explicit supertype */
          superClassCtor == null ||
          superClassCtor.getInstanceType().isEquivalentTo(
              getNativeType(OBJECT_TYPE)));

      int PROBE_START_LINE_1242 = 1249;
	com.google.javascript.jscomp.Scope.Var p_new_var_3230_line_1242 = newVar;
	com.google.javascript.rhino.Node typed_scope_creator_1_expr278_line_1242 = p_new_var_3230_line_1242
			.getInitialValue();
	boolean typed_scope_creator_1_expr277_line_1242 = typed_scope_creator_1_expr278_line_1242 == null;
	boolean typed_scope_creator_1_expr276_line_1242 = typed_scope_creator_1_expr277_line_1242 && !n.isFromExterns();
	int PROBE_END_LINE_1242 = 1249;
	// Make sure the variable is initialized to something if
      // it constructs itself.
      if (typed_scope_creator_1_expr276_line_1242) {
        compiler.report(
            JSError.make(sourceName, n,
                fnType.isConstructor() ?
                CTOR_INITIALIZER : IFACE_INITIALIZER,
                variableName));
      }
    }

    /**
     * Check if the given node is a property of a name in the global scope.
     */
    private boolean isQnameRootedInGlobalScope(Node n) {
      Scope scope = getQnameRootScope(n);
      return scope != null && scope.isGlobal();
    }

    /**
     * Return the scope for the name of the given node.
     */
    private Scope getQnameRootScope(Node n) {
      Node root = NodeUtil.getRootOfQualifiedName(n);
      if (root.isName()) {
        Var var = scope.getVar(root.getString());
        if (var != null) {
          return var.getScope();
        }
      }
      return null;
    }

    /**
     * Look for a type declaration on a property assignment
     * (in an ASSIGN or an object literal key).
     *
     * @param info The doc info for this property.
     * @param lValue The l-value node.
     * @param rValue The node that {@code n} is being initialized to,
     *     or {@code null} if this is a stub declaration.
     */
    private JSType getDeclaredType(String sourceName, JSDocInfo info,
        Node lValue, @Nullable Node rValue) {
      if (info != null && info.hasType()) {
        return getDeclaredTypeInAnnotation(sourceName, lValue, info);
      } else if (rValue != null && rValue.isFunction() &&
          shouldUseFunctionLiteralType(
              JSType.toMaybeFunctionType(rValue.getJSType()), info, lValue)) {
        return rValue.getJSType();
      } else if (info != null) {
        if (info.hasEnumParameterType()) {
          if (rValue != null && rValue.isObjectLit()) {
            return rValue.getJSType();
          } else {
            return createEnumTypeFromNodes(
                rValue, lValue.getQualifiedName(), info, lValue);
          }
        } else if (info.isConstructor() || info.isInterface()) {
          return createFunctionTypeFromNodes(
              rValue, lValue.getQualifiedName(), info, lValue);
        } else {
          // Check if this is constant, and if it has a known type.
          if (info.isConstant()) {
            JSType knownType = null;
            if (rValue != null) {
              JSDocInfo rValueInfo = rValue.getJSDocInfo();
              if (rValueInfo != null && rValueInfo.hasType()) {
                // If rValue has a type-cast, we use the type in the type-cast.
                return rValueInfo.getType().evaluate(scope, typeRegistry);
              } else if (rValue.getJSType() != null
                  && !rValue.getJSType().isUnknownType()) {
                // If rValue's type was already computed during scope creation,
                // then we can safely use that.
                return rValue.getJSType();
              } else if (rValue.isOr()) {
                // Check for a very specific JS idiom:
                // var x = x || TYPE;
                // This is used by Closure's base namespace for esoteric
                // reasons.
                Node firstClause = rValue.getFirstChild();
                Node secondClause = firstClause.getNext();
                boolean namesMatch = firstClause.isName()
                    && lValue.isName()
                    && firstClause.getString().equals(lValue.getString());
                if (namesMatch && secondClause.getJSType() != null
                    && !secondClause.getJSType().isUnknownType()) {
                  return secondClause.getJSType();
                }
              }
            }
          }
        }
      }

      return getDeclaredTypeInAnnotation(sourceName, lValue, info);
    }

    private FunctionType getFunctionType(@Nullable Var v) {
      JSType t = v == null ? null : v.getType();
      ObjectType o = t == null ? null : t.dereference();
      return JSType.toMaybeFunctionType(o);
    }

    /**
     * Look for calls that set a delegate method's calling convention.
     */
    private void checkForCallingConventionDefiningCalls(
        Node n, Map<String, String> delegateCallingConventions) {
      codingConvention.checkForCallingConventionDefiningCalls(n,
          delegateCallingConventions);
    }

    /**
     * Look for class-defining calls.
     * Because JS has no 'native' syntax for defining classes,
     * this is often very coding-convention dependent and business-logic heavy.
     */
    private void checkForClassDefiningCalls(
        NodeTraversal t, Node n, Node parent) {
      SubclassRelationship relationship =
          codingConvention.getClassesDefinedByCall(n);
      if (relationship != null) {
        FunctionType superCtor = getFunctionType(
            scope.getVar(relationship.superclassName));
        FunctionType subCtor = getFunctionType(
            scope.getVar(relationship.subclassName));
        if (superCtor != null && superCtor.isConstructor() &&
            subCtor != null && subCtor.isConstructor()) {
          ObjectType superClass = superCtor.getInstanceType();
          ObjectType subClass = subCtor.getInstanceType();

          // superCtor and subCtor might be structural constructors
          // (like {function(new:Object)}) so we need to resolve them back
          // to the original ctor objects.
          superCtor = superClass.getConstructor();
          subCtor = subClass.getConstructor();

          if (relationship.type == SubclassType.INHERITS &&
              !superClass.isEmptyType() && !subClass.isEmptyType()) {
            validator.expectSuperType(t, n, superClass, subClass);
          }

          if (superCtor != null && subCtor != null) {
            codingConvention.applySubclassRelationship(
                superCtor, subCtor, relationship.type);
          }
        }
      }

      String singletonGetterClassName =
          codingConvention.getSingletonGetterClassName(n);
      if (singletonGetterClassName != null) {
        ObjectType objectType = ObjectType.cast(
            typeRegistry.getType(singletonGetterClassName));
        if (objectType != null) {
          FunctionType functionType = objectType.getConstructor();

          if (functionType != null) {
            FunctionType getterType =
                typeRegistry.createFunctionType(objectType);
            codingConvention.applySingletonGetter(functionType, getterType,
                objectType);
          }
        }
      }

      DelegateRelationship delegateRelationship =
          codingConvention.getDelegateRelationship(n);
      if (delegateRelationship != null) {
        applyDelegateRelationship(delegateRelationship);
      }

      ObjectLiteralCast objectLiteralCast =
          codingConvention.getObjectLiteralCast(n);
      if (objectLiteralCast != null) {
        if (objectLiteralCast.diagnosticType == null) {
          ObjectType type = ObjectType.cast(
              typeRegistry.getType(objectLiteralCast.typeName));
          if (type != null && type.getConstructor() != null) {
            setDeferredType(objectLiteralCast.objectNode, type);
          } else {
            compiler.report(JSError.make(t.getSourceName(), n,
                    CONSTRUCTOR_EXPECTED));
          }
        } else {
          compiler.report(JSError.make(t.getSourceName(), n,
                  objectLiteralCast.diagnosticType));
        }
      }
    }

    /**
     * Apply special properties that only apply to delegates.
     */
    private void applyDelegateRelationship(
        DelegateRelationship delegateRelationship) {
      ObjectType delegatorObject = ObjectType.cast(
          typeRegistry.getType(delegateRelationship.delegator));
      ObjectType delegateBaseObject = ObjectType.cast(
          typeRegistry.getType(delegateRelationship.delegateBase));
      ObjectType delegateSuperObject = ObjectType.cast(
          typeRegistry.getType(codingConvention.getDelegateSuperclassName()));
      if (delegatorObject != null &&
          delegateBaseObject != null &&
          delegateSuperObject != null) {
        FunctionType delegatorCtor = delegatorObject.getConstructor();
        FunctionType delegateBaseCtor = delegateBaseObject.getConstructor();
        FunctionType delegateSuperCtor = delegateSuperObject.getConstructor();

        if (delegatorCtor != null && delegateBaseCtor != null &&
            delegateSuperCtor != null) {
          FunctionParamBuilder functionParamBuilder =
              new FunctionParamBuilder(typeRegistry);
          functionParamBuilder.addRequiredParams(
              getNativeType(U2U_CONSTRUCTOR_TYPE));
          FunctionType findDelegate = typeRegistry.createFunctionType(
              typeRegistry.createDefaultObjectUnion(delegateBaseObject),
              functionParamBuilder.build());

          FunctionType delegateProxy = typeRegistry.createConstructorType(
              delegateBaseObject.getReferenceName() + DELEGATE_PROXY_SUFFIX,
              null, null, null, null);
          delegateProxy.setPrototypeBasedOn(delegateBaseObject);

          codingConvention.applyDelegateRelationship(
              delegateSuperObject, delegateBaseObject, delegatorObject,
              delegateProxy, findDelegate);
          delegateProxyPrototypes.add(delegateProxy.getPrototype());
        }
      }
    }

    /**
     * Declare the symbol for a qualified name in the global scope.
     *
     * @param info The doc info for this property.
     * @param n A top-level GETPROP node (it should not be contained inside
     *     another GETPROP).
     * @param parent The parent of {@code n}.
     * @param rhsValue The node that {@code n} is being initialized to,
     *     or {@code null} if this is a stub declaration.
     */
    void maybeDeclareQualifiedName(NodeTraversal t, JSDocInfo info,
        Node n, Node parent, Node rhsValue) {
      Node ownerNode = n.getFirstChild();
      String ownerName = ownerNode.getQualifiedName();
      String qName = n.getQualifiedName();
      String propName = n.getLastChild().getString();
      Preconditions.checkArgument(qName != null && ownerName != null);

      // Precedence of type information on GETPROPs:
      // 1) @type annotation / @enum annotation
      // 2) ASSIGN to FUNCTION literal
      // 3) @param/@return annotation (with no function literal)
      // 4) ASSIGN to something marked @const
      // 5) ASSIGN to anything else
      //
      // 1, 3, and 4 are declarations, 5 is inferred, and 2 is a declaration iff
      // the function has JsDoc or has not been declared before.
      //
      // FUNCTION literals are special because TypedScopeCreator is very smart
      // about getting as much type information as possible for them.

      // Determining type for #1 + #2 + #3 + #4
      JSType valueType = getDeclaredType(t.getSourceName(), info, n, rhsValue);
      if (valueType == null && rhsValue != null) {
        // Determining type for #5
        valueType = rhsValue.getJSType();
      }

      // Function prototypes are special.
      // It's a common JS idiom to do:
      // F.prototype = { ... };
      // So if F does not have an explicitly declared super type,
      // allow F.prototype to be redefined arbitrarily.
      if ("prototype".equals(propName)) {
        Var qVar = scope.getVar(qName);
        if (qVar != null) {
          // If the programmer has declared that F inherits from Super,
          // and they assign F.prototype to an object literal,
          // then they are responsible for making sure that the object literal's
          // implicit prototype is set up appropriately. We just obey
          // the @extends tag.
          ObjectType qVarType = ObjectType.cast(qVar.getType());
          if (qVarType != null &&
              rhsValue != null &&
              rhsValue.isObjectLit()) {
            typeRegistry.resetImplicitPrototype(
                rhsValue.getJSType(), qVarType.getImplicitPrototype());
          } else if (!qVar.isTypeInferred()) {
            // If the programmer has declared that F inherits from Super,
            // and they assign F.prototype to some arbitrary expression,
            // there's not much we can do. We just ignore the expression,
            // and hope they've annotated their code in a way to tell us
            // what props are going to be on that prototype.
            return;
          }
          if (qVar.getScope() == scope) {
            scope.undeclare(qVar);
          }
        }
      }

      if (valueType == null) {
        if (parent.isExprResult()) {
          stubDeclarations.add(new StubDeclaration(
              n,
              t.getInput() != null && t.getInput().isExtern(),
              ownerName));
        }

        return;
      }

      boolean inferred = isQualifiedNameInferred(
          qName, n, info, rhsValue, valueType);
      if (!inferred) {
        ObjectType ownerType = getObjectSlot(ownerName);
        if (ownerType != null) {
          // Only declare this as an official property if it has not been
          // declared yet.
          boolean isExtern = t.getInput() != null && t.getInput().isExtern();
          if ((!ownerType.hasOwnProperty(propName) ||
               ownerType.isPropertyTypeInferred(propName)) &&
              ((isExtern && !ownerType.isNativeObjectType()) ||
               !ownerType.isInstanceType())) {
            // If the property is undeclared or inferred, declare it now.
            ownerType.defineDeclaredProperty(propName, valueType, n);
          }
        }

        // If the property is already declared, the error will be
        // caught when we try to declare it in the current scope.
        defineSlot(n, parent, valueType, inferred);
      } else if (rhsValue != null && rhsValue.isTrue()) {
        // We declare these for delegate proxy method properties.
        FunctionType ownerType =
            JSType.toMaybeFunctionType(getObjectSlot(ownerName));
        if (ownerType != null) {
          JSType ownerTypeOfThis = ownerType.getTypeOfThis();
          String delegateName = codingConvention.getDelegateSuperclassName();
          JSType delegateType = delegateName == null ?
              null : typeRegistry.getType(delegateName);
          if (delegateType != null &&
              ownerTypeOfThis.isSubtype(delegateType)) {
            defineSlot(n, parent, getNativeType(BOOLEAN_TYPE), true);
          }
        }
      }
    }

    /**
     * Determines whether a qualified name is inferred.
     * NOTE(nicksantos): Determining whether a property is declared or not
     * is really really obnoxious.
     *
     * The problem is that there are two (equally valid) coding styles:
     *
     * (function() {
     *   /* The authoritative definition of goog.bar. /
     *   goog.bar = function() {};
     * })();
     *
     * function f() {
     *   goog.bar();
     *   /* Reset goog.bar to a no-op. /
     *   goog.bar = function() {};
     * }
     *
     * In a dynamic language with first-class functions, it's very difficult
     * to know which one the user intended without looking at lots of
     * contextual information (the second example demonstrates a small case
     * of this, but there are some really pathological cases as well).
     *
     * The current algorithm checks if either the declaration has
     * JsDoc type information, or @const with a known type,
     * or a function literal with a name we haven't seen before.
     */
    private boolean isQualifiedNameInferred(
        String qName, Node n, JSDocInfo info,
        Node rhsValue, JSType valueType) {
      if (valueType == null) {
        return true;
      }

      boolean inferred = true;
      if (info != null) {
        inferred = !(info.hasType()
            || info.hasEnumParameterType()
            || (info.isConstant() && valueType != null
                && !valueType.isUnknownType())
            || FunctionTypeBuilder.isFunctionTypeDeclaration(info));
      }

      if (inferred && rhsValue != null && rhsValue.isFunction()) {
        if (info != null) {
          return false;
        } else if (!scope.isDeclared(qName, false) &&
            n.isUnscopedQualifiedName()) {

          // Check if this is in a conditional block.
          // Functions assigned in conditional blocks are inferred.
          for (Node current = n.getParent();
               !(current.isScript() || current.isFunction());
               current = current.getParent()) {
            if (NodeUtil.isControlStructure(current)) {
              return true;
            }
          }

          // Check if this is assigned in an inner scope.
          // Functions assigned in inner scopes are inferred.
          AstFunctionContents contents =
              getFunctionAnalysisResults(scope.getRootNode());
          if (contents == null ||
              !contents.getEscapedQualifiedNames().contains(qName)) {
            return false;
          }
        }
      }
      return inferred;
    }

    /**
     * Find the ObjectType associated with the given slot.
     * @param slotName The name of the slot to find the type in.
     * @return An object type, or null if this slot does not contain an object.
     */
    private ObjectType getObjectSlot(String slotName) {
      Var ownerVar = scope.getVar(slotName);
      if (ownerVar != null) {
        JSType ownerVarType = ownerVar.getType();
        return ObjectType.cast(ownerVarType == null ?
            null : ownerVarType.restrictByNotNullOrUndefined());
      }
      return null;
    }

    /**
     * Resolve any stub declarations to unknown types if we could not
     * find types for them during traversal.
     */
    void resolveStubDeclarations() {
      int PROBE_START_LINE_1685 = 1712;
		List<com.google.javascript.jscomp.TypedScopeCreator.StubDeclaration> f_stub_declarations_3140_line_1685 = stubDeclarations;
		int PROBE_END_LINE_1685 = 1712;
	for (StubDeclaration stub : f_stub_declarations_3140_line_1685) {
        Node n = stub.node;
        Node parent = n.getParent();
        String qName = n.getQualifiedName();
        String propName = n.getLastChild().getString();
        String ownerName = stub.ownerName;
        boolean isExtern = stub.isExtern;

        if (scope.isDeclared(qName, false)) {
          continue;
        }

        // If we see a stub property, make sure to register this property
        // in the type registry.
        ObjectType ownerType = getObjectSlot(ownerName);
        defineSlot(n, parent, unknownType, true);

        if (ownerType != null &&
            (isExtern || ownerType.isFunctionPrototypeType())) {
          // If this is a stub for a prototype, just declare it
          // as an unknown type. These are seen often in externs.
          ownerType.defineInferredProperty(
              propName, unknownType, n);
        } else {
          typeRegistry.registerPropertyOnType(
              propName, ownerType == null ? unknownType : ownerType);
        }
      }
    }

    /**
     * Collects all declared properties in a function, and
     * resolves them relative to the global scope.
     */
    private final class CollectProperties
        extends AbstractShallowStatementCallback {
      private final JSType thisType;

      CollectProperties(JSType thisType) {
        this.thisType = thisType;
      }

      @Override
      public void visit(NodeTraversal t, Node n, Node parent) {
        if (n.isExprResult()) {
          Node child = n.getFirstChild();
          switch (child.getType()) {
            case Token.ASSIGN:
              maybeCollectMember(t, child.getFirstChild(), child,
                  child.getLastChild());
              break;
            case Token.GETPROP:
              maybeCollectMember(t, child, child, null);
              break;
          }
        }
      }

      private void maybeCollectMember(NodeTraversal t,
          Node member, Node nodeWithJsDocInfo, @Nullable Node value) {
        JSDocInfo info = nodeWithJsDocInfo.getJSDocInfo();

        // Do nothing if there is no JSDoc type info, or
        // if the node is not a member expression, or
        // if the member expression is not of the form: this.someProperty.
        if (info == null ||
            !member.isGetProp() ||
            !member.getFirstChild().isThis()) {
          return;
        }

        member.getFirstChild().setJSType(thisType);
        JSType jsType = getDeclaredType(t.getSourceName(), info, member, value);
        Node name = member.getLastChild();
        if (jsType != null &&
            (name.isName() || name.isString()) &&
            thisType.toObjectType() != null) {
          thisType.toObjectType().defineDeclaredProperty(
              name.getString(),
              jsType,
              member);
        }
      }
    } // end CollectProperties
  }

  /**
   * A stub declaration without any type information.
   */
  private static final class StubDeclaration {
    private final Node node;
    private final boolean isExtern;
    private final String ownerName;

    private StubDeclaration(Node node, boolean isExtern, String ownerName) {
      this.node = node;
      this.isExtern = isExtern;
      this.ownerName = ownerName;
    }
  }

  /**
   * A shallow traversal of the global scope to build up all classes,
   * functions, and methods.
   */
  private final class GlobalScopeBuilder extends AbstractScopeBuilder {

    private GlobalScopeBuilder(Scope scope) {
      super(scope);
    }

    /**
     * Visit a node in the global scope, and add anything it declares to the
     * global symbol table.
     *
     * @param t The current traversal.
     * @param n The node being visited.
     * @param parent The parent of n
     */
    @Override public void visit(NodeTraversal t, Node n, Node parent) {
      int PROBE_START_LINE_1805 = 1805;
		com.google.javascript.jscomp.NodeTraversal p_t_3272_line_1805 = t;
		com.google.javascript.rhino.Node p_n_3273_line_1805 = n;
		com.google.javascript.rhino.Node p_parent_3274_line_1805 = parent;
		int PROBE_END_LINE_1805 = 1805;
	super.visit(p_t_3272_line_1805, p_n_3273_line_1805, p_parent_3274_line_1805);

      int PROBE_START_LINE_1807 = 1815;
	com.google.javascript.rhino.Node p_n_3273_line_1807 = n;
	int typed_scope_creator_1_expr281_line_1807 = p_n_3273_line_1807.getType();
	int PROBE_END_LINE_1807 = 1815;
	switch (typed_scope_creator_1_expr281_line_1807) {

        case Token.VAR:
          // Handle typedefs.
          if (n.hasOneChild()) {
            checkForTypedef(t, n.getFirstChild(), n.getJSDocInfo());
          }
          break;
      }
    }

    @Override
    void maybeDeclareQualifiedName(
        NodeTraversal t, JSDocInfo info,
        Node n, Node parent, Node rhsValue) {
      checkForTypedef(t, n, info);
      super.maybeDeclareQualifiedName(t, info, n, parent, rhsValue);
    }

    /**
     * Handle typedefs.
     * @param t The current traversal.
     * @param candidate A qualified name node.
     * @param info JSDoc comments.
     */
    private void checkForTypedef(
        NodeTraversal t, Node candidate, JSDocInfo info) {
      if (info == null || !info.hasTypedefType()) {
        return;
      }

      String typedef = candidate.getQualifiedName();
      if (typedef == null) {
        return;
      }

      // TODO(nicksantos|user): This is a terrible, terrible hack
      // to bail out on recursive typedefs. We'll eventually need
      // to handle these properly.
      typeRegistry.declareType(typedef, unknownType);

      JSType realType = info.getTypedefType().evaluate(scope, typeRegistry);
      if (realType == null) {
        compiler.report(
            JSError.make(
                t.getSourceName(), candidate, MALFORMED_TYPEDEF, typedef));
      }

      typeRegistry.overwriteDeclaredType(typedef, realType);
      if (candidate.isGetProp()) {
        defineSlot(candidate, candidate.getParent(),
            getNativeType(NO_TYPE), false);
      }
    }
  } // end GlobalScopeBuilder

  /**
   * A shallow traversal of a local scope to find all arguments and
   * local variables.
   */
  private final class LocalScopeBuilder extends AbstractScopeBuilder {
    /**
     * @param scope The scope that we're building.
     */
    private LocalScopeBuilder(Scope scope) {
      super(scope);
    }

    /**
     * Traverse the scope root and build it.
     */
    void build() {
      int PROBE_START_LINE_1879 = 1879;
		com.google.javascript.jscomp.AbstractCompiler f_compiler_3082_line_1879 = compiler;
		com.google.javascript.jscomp.Scope f_scope_3143_line_1879 = scope;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr284_line_1879 = f_scope_3143_line_1879.getRootNode();
		int PROBE_END_LINE_1879 = 1879;
	NodeTraversal.traverse(f_compiler_3082_line_1879, typed_scope_creator_1_expr284_line_1879, this);

      AstFunctionContents contents =
          getFunctionAnalysisResults(scope.getRootNode());
      int PROBE_START_LINE_1883 = 1898;
	com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents v_contents_3284_line_1883 = contents;
	boolean typed_scope_creator_1_expr287_line_1883 = v_contents_3284_line_1883 != null;
	int PROBE_END_LINE_1883 = 1898;
	if (typed_scope_creator_1_expr287_line_1883) {
        int PROBE_START_LINE_1884 = 1888;
		com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents v_contents_3284_line_1884 = contents;
		Iterable<String> typed_scope_creator_1_expr288_line_1884 = v_contents_3284_line_1884.getEscapedVarNames();
		int PROBE_END_LINE_1884 = 1888;
		for (String varName : typed_scope_creator_1_expr288_line_1884) {
          Var v = scope.getVar(varName);
          Preconditions.checkState(v.getScope() == scope);
          v.markEscaped();
        }

        int PROBE_START_LINE_1890 = 1897;
		com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents v_contents_3284_line_1891 = contents;
		Multiset<String> typed_scope_creator_1_expr290_line_1891 = v_contents_3284_line_1891.getAssignedNameCounts();
		Set<com.google.common.collect.Multiset.Entry<String>> typed_scope_creator_1_expr289_line_1891 = typed_scope_creator_1_expr290_line_1891
				.entrySet();
		int PROBE_END_LINE_1890 = 1897;
		for (Multiset.Entry<String> entry :
                 typed_scope_creator_1_expr289_line_1891) {
          Var v = scope.getVar(entry.getElement());
          Preconditions.checkState(v.getScope() == scope);
          if (entry.getCount() == 1) {
            v.markAssignedExactlyOnce();
          }
        }
      }
    }

    /**
     * Visit a node in a local scope, and add any local variables or catch
     * parameters into the local symbol table.
     *
     * @param t The node traversal.
     * @param n The node being visited.
     * @param parent The parent of n
     */
    @Override public void visit(NodeTraversal t, Node n, Node parent) {
      int PROBE_START_LINE_1910 = 1910;
		com.google.javascript.rhino.Node p_n_3287_line_1910 = n;
		com.google.javascript.jscomp.Scope f_scope_3143_line_1910 = scope;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr292_line_1910 = f_scope_3143_line_1910.getRootNode();
		boolean typed_scope_creator_1_expr291_line_1910 = p_n_3287_line_1910 == typed_scope_creator_1_expr292_line_1910;
		int PROBE_END_LINE_1910 = 1910;
	if (typed_scope_creator_1_expr291_line_1910) return;

      int PROBE_START_LINE_1912 = 1915;
	com.google.javascript.rhino.Node p_n_3287_line_1912 = n;
	boolean typed_scope_creator_1_expr294_line_1912 = p_n_3287_line_1912.isParamList();
	boolean typed_scope_creator_1_expr295_line_1912 = true;
	if (typed_scope_creator_1_expr294_line_1912) {
		com.google.javascript.rhino.Node p_parent_3288_line_1912 = parent;
		com.google.javascript.jscomp.Scope f_scope_3143_line_1912 = scope;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr296_line_1912 = f_scope_3143_line_1912.getRootNode();
		typed_scope_creator_1_expr295_line_1912 = p_parent_3288_line_1912 == typed_scope_creator_1_expr296_line_1912;
	}
	boolean typed_scope_creator_1_expr293_line_1912 = typed_scope_creator_1_expr294_line_1912
			&& typed_scope_creator_1_expr295_line_1912;
	int PROBE_END_LINE_1912 = 1915;
	if (typed_scope_creator_1_expr293_line_1912) {
        int PROBE_START_LINE_1913 = 1913;
		com.google.javascript.rhino.Node p_parent_3288_line_1913 = parent;
		int PROBE_END_LINE_1913 = 1913;
		handleFunctionInputs(p_parent_3288_line_1913);
        return;
      }

      int PROBE_START_LINE_1917 = 1917;
	com.google.javascript.jscomp.NodeTraversal p_t_3286_line_1917 = t;
	com.google.javascript.rhino.Node p_n_3287_line_1917 = n;
	com.google.javascript.rhino.Node p_parent_3288_line_1917 = parent;
	int PROBE_END_LINE_1917 = 1917;
	super.visit(p_t_3286_line_1917, p_n_3287_line_1917, p_parent_3288_line_1917);
    }

    /** Handle bleeding functions and function parameters. */
    private void handleFunctionInputs(Node fnNode) {
      int PROBE_START_LINE_1923 = 1923;
		com.google.javascript.rhino.Node p_fn_node_3289_line_1923 = fnNode;
		Node typed_scope_creator_1_expr299_line_1923 = p_fn_node_3289_line_1923.getFirstChild();
		int PROBE_END_LINE_1923 = 1923;
	// Handle bleeding functions.
      Node fnNameNode = typed_scope_creator_1_expr299_line_1923;
      int PROBE_START_LINE_1924 = 1924;
	com.google.javascript.rhino.Node v_fn_name_node_3290_line_1924 = fnNameNode;
	String typed_scope_creator_1_expr300_line_1924 = v_fn_name_node_3290_line_1924.getString();
	int PROBE_END_LINE_1924 = 1924;
	String fnName = typed_scope_creator_1_expr300_line_1924;
      int PROBE_START_LINE_1925 = 1937;
	String v_fn_name_3291_line_1925 = fnName;
	boolean typed_scope_creator_1_expr302_line_1925 = v_fn_name_3291_line_1925.isEmpty();
	boolean typed_scope_creator_1_expr301_line_1925 = !typed_scope_creator_1_expr302_line_1925;
	int PROBE_END_LINE_1925 = 1937;
	if (typed_scope_creator_1_expr301_line_1925) {
        int PROBE_START_LINE_1926 = 1926;
		com.google.javascript.jscomp.Scope f_scope_3143_line_1926 = scope;
		String v_fn_name_3291_line_1926 = fnName;
		Scope.Var typed_scope_creator_1_expr303_line_1926 = f_scope_3143_line_1926.getVar(v_fn_name_3291_line_1926);
		int PROBE_END_LINE_1926 = 1926;
		Scope.Var fnVar = typed_scope_creator_1_expr303_line_1926;
        int PROBE_START_LINE_1927 = 1936;
		com.google.javascript.jscomp.Scope.Var v_fn_var_3292_line_1927 = fnVar;
		boolean typed_scope_creator_1_expr305_line_1927 = v_fn_var_3292_line_1927 == null;
		boolean typed_scope_creator_1_expr304_line_1927 = typed_scope_creator_1_expr305_line_1927
				|| (fnVar.getNameNode() != null && fnVar.getInitialValue() != fnNode);
		int PROBE_END_LINE_1927 = 1936;
		if (typed_scope_creator_1_expr304_line_1927) {
          defineSlot(fnNameNode, fnNode, fnNode.getJSType(), false);
        }
      }

      int PROBE_START_LINE_1939 = 1939;
	com.google.javascript.rhino.Node p_fn_node_3289_line_1939 = fnNode;
	int PROBE_END_LINE_1939 = 1939;
	declareArguments(p_fn_node_3289_line_1939);
    }

    /**
     * Declares all of a function's arguments.
     */
    private void declareArguments(Node functionNode) {
      int PROBE_START_LINE_1946 = 1946;
		com.google.javascript.rhino.Node p_function_node_3293_line_1946 = functionNode;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr308_line_1946 = p_function_node_3293_line_1946
				.getFirstChild();
		Node typed_scope_creator_1_expr307_line_1946 = typed_scope_creator_1_expr308_line_1946.getNext();
		int PROBE_END_LINE_1946 = 1946;
	Node astParameters = typed_scope_creator_1_expr307_line_1946;
      Node iifeArgumentNode = null;

      int PROBE_START_LINE_1949 = 1951;
	com.google.javascript.rhino.Node p_function_node_3293_line_1949 = functionNode;
	boolean typed_scope_creator_1_expr309_line_1949 = NodeUtil.isCallOrNewTarget(p_function_node_3293_line_1949);
	int PROBE_END_LINE_1949 = 1951;
	if (typed_scope_creator_1_expr309_line_1949) {
        iifeArgumentNode = functionNode.getNext();
      }

      int PROBE_START_LINE_1953 = 1953;
	com.google.javascript.rhino.Node v_ast_parameters_3294_line_1953 = astParameters;
	Node typed_scope_creator_1_expr310_line_1953 = v_ast_parameters_3294_line_1953.getNext();
	int PROBE_END_LINE_1953 = 1953;
	Node body = typed_scope_creator_1_expr310_line_1953;
      FunctionType functionType =
          JSType.toMaybeFunctionType(functionNode.getJSType());
      int PROBE_START_LINE_1956 = 1989;
	com.google.javascript.rhino.jstype.FunctionType v_function_type_3297_line_1956 = functionType;
	boolean typed_scope_creator_1_expr312_line_1956 = v_function_type_3297_line_1956 != null;
	int PROBE_END_LINE_1956 = 1989;
	if (typed_scope_creator_1_expr312_line_1956) {
        int PROBE_START_LINE_1957 = 1957;
		com.google.javascript.rhino.jstype.FunctionType v_function_type_3297_line_1957 = functionType;
		Node typed_scope_creator_1_expr313_line_1957 = v_function_type_3297_line_1957.getParametersNode();
		int PROBE_END_LINE_1957 = 1957;
		Node jsDocParameters = typed_scope_creator_1_expr313_line_1957;
        int PROBE_START_LINE_1958 = 1988;
		com.google.javascript.rhino.Node v_js_doc_parameters_3298_line_1958 = jsDocParameters;
		boolean typed_scope_creator_1_expr314_line_1958 = v_js_doc_parameters_3298_line_1958 != null;
		int PROBE_END_LINE_1958 = 1988;
		if (typed_scope_creator_1_expr314_line_1958) {
          int PROBE_START_LINE_1959 = 1959;
			com.google.javascript.rhino.Node v_js_doc_parameters_3298_line_1959 = jsDocParameters;
			Node typed_scope_creator_1_expr315_line_1959 = v_js_doc_parameters_3298_line_1959.getFirstChild();
			int PROBE_END_LINE_1959 = 1959;
		Node jsDocParameter = typed_scope_creator_1_expr315_line_1959;
          int PROBE_START_LINE_1960 = 1987;
		com.google.javascript.rhino.Node v_ast_parameters_3294_line_1960 = astParameters;
		Iterable<com.google.javascript.rhino.Node> typed_scope_creator_1_expr316_line_1960 = v_ast_parameters_3294_line_1960
				.children();
		int PROBE_END_LINE_1960 = 1987;
		for (Node astParameter : typed_scope_creator_1_expr316_line_1960) {
            JSType paramType = jsDocParameter == null ?
                unknownType : jsDocParameter.getJSType();
            boolean inferred = paramType == null || paramType == unknownType;

            if (iifeArgumentNode != null && inferred) {
              String argumentName = iifeArgumentNode.getQualifiedName();
              Var argumentVar =
                  argumentName == null || scope.getParent() == null
                  ? null : scope.getParent().getVar(argumentName);
              if (argumentVar != null && !argumentVar.isTypeInferred()) {
                paramType = argumentVar.getType();
              }
            }

            if (paramType == null) {
              paramType = unknownType;
            }

            defineSlot(astParameter, functionNode, paramType, inferred);

            if (jsDocParameter != null) {
              jsDocParameter = jsDocParameter.getNext();
            }
            if (iifeArgumentNode != null) {
              iifeArgumentNode = iifeArgumentNode.getNext();
            }
          }
        }
      }
    } // end declareArguments
  } // end LocalScopeBuilder

  /**
   * Does a first-order function analysis that just looks at simple things
   * like what variables are escaped, and whether 'this' is used.
   */
  private static class FirstOrderFunctionAnalyzer
      extends AbstractScopedCallback implements CompilerPass {
    private final AbstractCompiler compiler;
    private final Map<Node, AstFunctionContents> data;

    FirstOrderFunctionAnalyzer(
        AbstractCompiler compiler, Map<Node, AstFunctionContents> outParam) {
      int PROBE_START_LINE_2004 = 2004;
			com.google.javascript.jscomp.AbstractCompiler p_compiler_3301_line_2004 = compiler;
			int PROBE_END_LINE_2004 = 2004;
	this.compiler = p_compiler_3301_line_2004;
      int PROBE_START_LINE_2005 = 2005;
	Map<com.google.javascript.rhino.Node, com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents> p_out_param_3302_line_2005 = outParam;
	int PROBE_END_LINE_2005 = 2005;
	this.data = p_out_param_3302_line_2005;
    }

    @Override public void process(Node externs, Node root) {
      int PROBE_START_LINE_2009 = 2014;
		com.google.javascript.rhino.Node p_externs_3305_line_2009 = externs;
		boolean typed_scope_creator_1_expr323_line_2009 = p_externs_3305_line_2009 == null;
		int PROBE_END_LINE_2009 = 2014;
	if (typed_scope_creator_1_expr323_line_2009) {
        NodeTraversal.traverse(compiler, root, this);
      } else {
        NodeTraversal.traverseRoots(
            compiler, ImmutableList.of(externs, root), this);
      }
    }

    @Override public void enterScope(NodeTraversal t) {
      int PROBE_START_LINE_2018 = 2021;
		com.google.javascript.jscomp.NodeTraversal p_t_3307_line_2018 = t;
		boolean typed_scope_creator_1_expr328_line_2018 = p_t_3307_line_2018.inGlobalScope();
		boolean typed_scope_creator_1_expr327_line_2018 = !typed_scope_creator_1_expr328_line_2018;
		int PROBE_END_LINE_2018 = 2021;
	if (typed_scope_creator_1_expr327_line_2018) {
        int PROBE_START_LINE_2019 = 2019;
		com.google.javascript.jscomp.NodeTraversal p_t_3307_line_2019 = t;
		Node typed_scope_creator_1_expr329_line_2019 = p_t_3307_line_2019.getScopeRoot();
		int PROBE_END_LINE_2019 = 2019;
		Node n = typed_scope_creator_1_expr329_line_2019;
        int PROBE_START_LINE_2020 = 2020;
		Map<com.google.javascript.rhino.Node, com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents> f_data_3304_line_2020 = data;
		com.google.javascript.rhino.Node v_n_3308_line_2020 = n;
		com.google.javascript.rhino.Node v_n_3308_line_2020_v1 = n;
		int PROBE_END_LINE_2020 = 2020;
		f_data_3304_line_2020.put(v_n_3308_line_2020, new AstFunctionContents(v_n_3308_line_2020_v1));
      }
    }

    @Override public void visit(NodeTraversal t, Node n, Node parent) {
      int PROBE_START_LINE_2025 = 2027;
		com.google.javascript.jscomp.NodeTraversal p_t_3309_line_2025 = t;
		boolean typed_scope_creator_1_expr332_line_2025 = p_t_3309_line_2025.inGlobalScope();
		int PROBE_END_LINE_2025 = 2027;
	if (typed_scope_creator_1_expr332_line_2025) {
        return;
      }

      int PROBE_START_LINE_2029 = 2031;
	com.google.javascript.rhino.Node p_n_3310_line_2029 = n;
	boolean typed_scope_creator_1_expr334_line_2029 = p_n_3310_line_2029.isReturn();
	boolean typed_scope_creator_1_expr335_line_2029 = true;
	if (typed_scope_creator_1_expr334_line_2029) {
		com.google.javascript.rhino.Node p_n_3310_line_2029_v1 = n;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr336_line_2029 = p_n_3310_line_2029_v1
				.getFirstChild();
		typed_scope_creator_1_expr335_line_2029 = typed_scope_creator_1_expr336_line_2029 != null;
	}
	boolean typed_scope_creator_1_expr333_line_2029 = typed_scope_creator_1_expr334_line_2029
			&& typed_scope_creator_1_expr335_line_2029;
	int PROBE_END_LINE_2029 = 2031;
	if (typed_scope_creator_1_expr333_line_2029) {
        data.get(t.getScopeRoot()).recordNonEmptyReturn();
      }

      int PROBE_START_LINE_2033 = 2043;
	com.google.javascript.jscomp.NodeTraversal p_t_3309_line_2033 = t;
	int typed_scope_creator_1_expr338_line_2033 = p_t_3309_line_2033.getScopeDepth();
	boolean typed_scope_creator_1_expr337_line_2033 = typed_scope_creator_1_expr338_line_2033 <= 1;
	int PROBE_END_LINE_2033 = 2043;
	if (typed_scope_creator_1_expr337_line_2033) {
        // The first-order function analyzer looks at two types of variables:
        //
        // 1) Local variables that are assigned in inner scopes ("escaped vars")
        //
        // 2) Local variables that are assigned more than once.
        //
        // We treat all global variables as escaped by default, so there's
        // no reason to do this extra computation for them.
        return;
      }

      int PROBE_START_LINE_2045 = 2074;
	com.google.javascript.rhino.Node p_n_3310_line_2045 = n;
	boolean typed_scope_creator_1_expr340_line_2045 = p_n_3310_line_2045.isName();
	boolean typed_scope_creator_1_expr341_line_2045 = true;
	if (typed_scope_creator_1_expr340_line_2045) {
		com.google.javascript.rhino.Node p_n_3310_line_2045_v1 = n;
		typed_scope_creator_1_expr341_line_2045 = NodeUtil.isLValue(p_n_3310_line_2045_v1);
	}
	boolean typed_scope_creator_1_expr339_line_2045 = typed_scope_creator_1_expr340_line_2045
			&& typed_scope_creator_1_expr341_line_2045 && !NodeUtil.isBleedingFunctionName(n);
	int PROBE_END_LINE_2045 = 2074;
	if (typed_scope_creator_1_expr339_line_2045) {
        String name = n.getString();
        Scope scope = t.getScope();
        Var var = scope.getVar(name);
        if (var != null) {
          Scope ownerScope = var.getScope();
          if (ownerScope.isLocal()) {
            data.get(ownerScope.getRootNode()).recordAssignedName(name);
          }

          if (scope != ownerScope && ownerScope.isLocal()) {
            data.get(ownerScope.getRootNode()).recordEscapedVarName(name);
          }
        }
      } else {
		int PROBE_START_LINE_2062 = 2074;
		com.google.javascript.rhino.Node p_n_3310_line_2062 = n;
		boolean typed_scope_creator_1_expr343_line_2062 = p_n_3310_line_2062.isGetProp();
		boolean typed_scope_creator_1_expr344_line_2062 = true;
		if (typed_scope_creator_1_expr343_line_2062) {
			com.google.javascript.rhino.Node p_n_3310_line_2062_v1 = n;
			typed_scope_creator_1_expr344_line_2062 = p_n_3310_line_2062_v1.isUnscopedQualifiedName();
		}
		boolean typed_scope_creator_1_expr342_line_2062 = typed_scope_creator_1_expr343_line_2062
				&& typed_scope_creator_1_expr344_line_2062 && NodeUtil.isLValue(n);
		int PROBE_END_LINE_2062 = 2074;
		if (typed_scope_creator_1_expr342_line_2062) {
			String name = NodeUtil.getRootOfQualifiedName(n).getString();
			Scope scope = t.getScope();
			Var var = scope.getVar(name);
			if (var != null) {
				Scope ownerScope = var.getScope();
				if (scope != ownerScope && ownerScope.isLocal()) {
					data.get(ownerScope.getRootNode()).recordEscapedQualifiedName(n.getQualifiedName());
				}
			}
		}
	}
    }
  }

  private AstFunctionContents getFunctionAnalysisResults(@Nullable Node n) {
    int PROBE_START_LINE_2079 = 2081;
	com.google.javascript.rhino.Node p_n_3312_line_2079 = n;
	boolean typed_scope_creator_1_expr345_line_2079 = p_n_3312_line_2079 == null;
	int PROBE_END_LINE_2079 = 2081;
	if (typed_scope_creator_1_expr345_line_2079) {
      return null;
    }

    int PROBE_START_LINE_2085 = 2085;
	Map<com.google.javascript.rhino.Node, com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents> f_function_analysis_results_3072_line_2085 = functionAnalysisResults;
	com.google.javascript.rhino.Node p_n_3312_line_2085 = n;
	com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents typed_scope_creator_1_expr346_line_2085 = f_function_analysis_results_3072_line_2085
			.get(p_n_3312_line_2085);
	int PROBE_END_LINE_2085 = 2085;
	// Sometimes this will return null in things like
    // NameReferenceGraphConstruction that build partial scopes.
    return typed_scope_creator_1_expr346_line_2085;
  }
}
