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
import com.google.javascript.rhino.jstype.TemplateType;
import com.google.javascript.rhino.jstype.TemplateTypeMap;
import com.google.javascript.rhino.jstype.TemplateTypeMapReplacer;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Nullable;
import com.google.javascript.rhino.JSTypeExpression;
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
  int PROBE_START_LINE_147 = 147;

private final ArrayList<com.google.javascript.rhino.jstype.ObjectType> typed_scope_creator_1_expr9_line_147 = Lists
		.newArrayList();

int PROBE_END_LINE_147 = 147;

private final List<ObjectType> delegateProxyPrototypes = typed_scope_creator_1_expr9_line_147;
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
      int PROBE_START_LINE_167 = 167;
		com.google.javascript.rhino.Node p_node_3603_line_167 = node;
		int PROBE_END_LINE_167 = 167;
	Preconditions.checkNotNull(p_node_3603_line_167);
      int PROBE_START_LINE_168 = 168;
	com.google.javascript.rhino.jstype.JSType p_type_3604_line_168 = type;
	int PROBE_END_LINE_168 = 168;
	Preconditions.checkNotNull(p_type_3604_line_168);
      int PROBE_START_LINE_169 = 169;
	com.google.javascript.rhino.Node p_node_3603_line_169 = node;
	int PROBE_END_LINE_169 = 169;
	this.node = p_node_3603_line_169;
      int PROBE_START_LINE_170 = 170;
	com.google.javascript.rhino.jstype.JSType p_type_3604_line_170 = type;
	int PROBE_END_LINE_170 = 170;
	this.type = p_type_3604_line_170;

      int PROBE_START_LINE_174 = 174;
	com.google.javascript.rhino.Node p_node_3603_line_174 = node;
	com.google.javascript.rhino.jstype.JSType p_type_3604_line_174 = type;
	int PROBE_END_LINE_174 = 174;
	// Other parts of this pass may read off the node.
      // (like when we set the LHS of an assign with a typed RHS function.)
      p_node_3603_line_174.setJSType(p_type_3604_line_174);
    }

    void resolve(Scope scope) {
      int PROBE_START_LINE_178 = 178;
		com.google.javascript.rhino.Node f_node_3605_line_178 = node;
		com.google.javascript.rhino.jstype.JSType f_type_3606_line_178 = type;
		com.google.javascript.rhino.ErrorReporter f_type_parsing_error_reporter_3608_line_178 = typeParsingErrorReporter;
		com.google.javascript.jscomp.Scope p_scope_3607_line_178 = scope;
		com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr22_line_178 = f_type_3606_line_178
				.resolve(f_type_parsing_error_reporter_3608_line_178, p_scope_3607_line_178);
		int PROBE_END_LINE_178 = 178;
	f_node_3605_line_178.setJSType(typed_scope_creator_1_expr22_line_178);
    }
  }

  TypedScopeCreator(AbstractCompiler compiler) {
    this(compiler, compiler.getCodingConvention());
  }

  TypedScopeCreator(AbstractCompiler compiler,
      CodingConvention codingConvention) {
    int PROBE_START_LINE_188 = 188;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_3610_line_188 = compiler;
		int PROBE_END_LINE_188 = 188;
	this.compiler = p_compiler_3610_line_188;
    int PROBE_START_LINE_189 = 189;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_3610_line_189 = compiler;
	com.google.javascript.jscomp.TypeValidator typed_scope_creator_1_expr30_line_189 = p_compiler_3610_line_189
			.getTypeValidator();
	int PROBE_END_LINE_189 = 189;
	this.validator = typed_scope_creator_1_expr30_line_189;
    int PROBE_START_LINE_190 = 190;
	com.google.javascript.jscomp.CodingConvention p_coding_convention_3611_line_190 = codingConvention;
	int PROBE_END_LINE_190 = 190;
	this.codingConvention = p_coding_convention_3611_line_190;
    int PROBE_START_LINE_191 = 191;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_3610_line_191 = compiler;
	com.google.javascript.rhino.jstype.JSTypeRegistry typed_scope_creator_1_expr37_line_191 = p_compiler_3610_line_191
			.getTypeRegistry();
	int PROBE_END_LINE_191 = 191;
	this.typeRegistry = typed_scope_creator_1_expr37_line_191;
    int PROBE_START_LINE_192 = 192;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3615_line_192 = typeRegistry;
	com.google.javascript.rhino.ErrorReporter typed_scope_creator_1_expr41_line_192 = f_type_registry_3615_line_192
			.getErrorReporter();
	int PROBE_END_LINE_192 = 192;
	this.typeParsingErrorReporter = typed_scope_creator_1_expr41_line_192;
    int PROBE_START_LINE_193 = 193;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3615_line_193 = typeRegistry;
	com.google.javascript.rhino.jstype.JSTypeNative f_unknown_type_3236_line_193 = UNKNOWN_TYPE;
	com.google.javascript.rhino.jstype.ObjectType typed_scope_creator_1_expr45_line_193 = f_type_registry_3615_line_193
			.getNativeObjectType(f_unknown_type_3236_line_193);
	int PROBE_END_LINE_193 = 193;
	this.unknownType = typed_scope_creator_1_expr45_line_193;
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
    int PROBE_START_LINE_207 = 232;
	com.google.javascript.jscomp.Scope p_parent_3618_line_207 = parent;
	boolean typed_scope_creator_1_expr47_line_207 = p_parent_3618_line_207 == null;
	int PROBE_END_LINE_207 = 232;
	if (typed_scope_creator_1_expr47_line_207) {
      JSType globalThis =
          typeRegistry.getNativeObjectType(JSTypeNative.GLOBAL_THIS);

      int PROBE_START_LINE_213 = 213;
	com.google.javascript.rhino.Node p_root_3617_line_213 = root;
	com.google.javascript.rhino.jstype.JSType v_global_this_3621_line_213 = globalThis;
	int PROBE_END_LINE_213 = 213;
	// Mark the main root, the externs root, and the src root
      // with the global this type.
      p_root_3617_line_213.setJSType(v_global_this_3621_line_213);
      int PROBE_START_LINE_214 = 214;
	com.google.javascript.rhino.Node p_root_3617_line_214 = root;
	com.google.javascript.rhino.Node typed_scope_creator_1_expr51_line_214 = p_root_3617_line_214.getFirstChild();
	com.google.javascript.rhino.jstype.JSType v_global_this_3621_line_214 = globalThis;
	int PROBE_END_LINE_214 = 214;
	typed_scope_creator_1_expr51_line_214.setJSType(v_global_this_3621_line_214);
      int PROBE_START_LINE_215 = 215;
	com.google.javascript.rhino.Node p_root_3617_line_215 = root;
	com.google.javascript.rhino.Node typed_scope_creator_1_expr53_line_215 = p_root_3617_line_215.getLastChild();
	com.google.javascript.rhino.jstype.JSType v_global_this_3621_line_215 = globalThis;
	int PROBE_END_LINE_215 = 215;
	typed_scope_creator_1_expr53_line_215.setJSType(v_global_this_3621_line_215);

      int PROBE_START_LINE_218 = 219;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_3612_line_218 = compiler;
	Map<com.google.javascript.rhino.Node, com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents> f_function_analysis_results_3602_line_218 = functionAnalysisResults;
	com.google.javascript.jscomp.TypedScopeCreator.FirstOrderFunctionAnalyzer typed_scope_creator_1_expr57_line_218 = (new FirstOrderFunctionAnalyzer(
			f_compiler_3612_line_218, f_function_analysis_results_3602_line_218));
	int PROBE_END_LINE_218 = 219;
	// Run a first-order analysis over the syntax tree.
      typed_scope_creator_1_expr57_line_218
          .process(root.getFirstChild(), root.getLastChild());

      int PROBE_START_LINE_222 = 222;
	com.google.javascript.rhino.Node p_root_3617_line_222 = root;
	com.google.javascript.jscomp.Scope typed_scope_creator_1_expr60_line_222 = createInitialScope(p_root_3617_line_222);
	int PROBE_END_LINE_222 = 222;
	// Find all the classes in the global scope.
      newScope = typed_scope_creator_1_expr60_line_222;

      int PROBE_START_LINE_224 = 224;
	com.google.javascript.jscomp.Scope v_new_scope_3619_line_224 = newScope;
	int PROBE_END_LINE_224 = 224;
	GlobalScopeBuilder globalScopeBuilder = new GlobalScopeBuilder(v_new_scope_3619_line_224);
      int PROBE_START_LINE_225 = 225;
	com.google.javascript.jscomp.TypedScopeCreator.GlobalScopeBuilder v_global_scope_builder_3622_line_225 = globalScopeBuilder;
	int PROBE_END_LINE_225 = 225;
	scopeBuilder = v_global_scope_builder_3622_line_225;
      int PROBE_START_LINE_226 = 226;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_3612_line_226 = compiler;
	com.google.javascript.rhino.Node p_root_3617_line_226 = root;
	com.google.javascript.jscomp.TypedScopeCreator.AbstractScopeBuilder v_scope_builder_3620_line_226 = scopeBuilder;
	int PROBE_END_LINE_226 = 226;
	NodeTraversal.traverse(f_compiler_3612_line_226, p_root_3617_line_226, v_scope_builder_3620_line_226);
    } else {
      int PROBE_START_LINE_228 = 228;
		com.google.javascript.jscomp.Scope p_parent_3618_line_228 = parent;
		com.google.javascript.rhino.Node p_root_3617_line_228 = root;
		int PROBE_END_LINE_228 = 228;
	newScope = new Scope(p_parent_3618_line_228, p_root_3617_line_228);
      int PROBE_START_LINE_229 = 229;
	com.google.javascript.jscomp.Scope v_new_scope_3619_line_229 = newScope;
	int PROBE_END_LINE_229 = 229;
	LocalScopeBuilder localScopeBuilder = new LocalScopeBuilder(v_new_scope_3619_line_229);
      int PROBE_START_LINE_230 = 230;
	com.google.javascript.jscomp.TypedScopeCreator.LocalScopeBuilder v_local_scope_builder_3623_line_230 = localScopeBuilder;
	int PROBE_END_LINE_230 = 230;
	scopeBuilder = v_local_scope_builder_3623_line_230;
      int PROBE_START_LINE_231 = 231;
	com.google.javascript.jscomp.TypedScopeCreator.LocalScopeBuilder v_local_scope_builder_3623_line_231 = localScopeBuilder;
	int PROBE_END_LINE_231 = 231;
	v_local_scope_builder_3623_line_231.build();
    }

    int PROBE_START_LINE_234 = 234;
	com.google.javascript.jscomp.TypedScopeCreator.AbstractScopeBuilder v_scope_builder_3620_line_234 = scopeBuilder;
	int PROBE_END_LINE_234 = 234;
	v_scope_builder_3620_line_234.resolveStubDeclarations();

    int PROBE_START_LINE_239 = 249;
	com.google.javascript.jscomp.TypedScopeCreator.AbstractScopeBuilder v_scope_builder_3620_line_239 = scopeBuilder;
	List<com.google.javascript.rhino.Node> q_non_extern_functions_101_line_239 = v_scope_builder_3620_line_239.nonExternFunctions;
	int PROBE_END_LINE_239 = 249;
	// Gather the properties in each function that we found in the
    // global scope, if that function has a @this type that we can
    // build properties on.
    for (Node functionNode : q_non_extern_functions_101_line_239) {
      int PROBE_START_LINE_240 = 240;
		com.google.javascript.rhino.Node v_function_node_3624_line_240 = functionNode;
		JSType typed_scope_creator_1_expr70_line_240 = v_function_node_3624_line_240.getJSType();
		int PROBE_END_LINE_240 = 240;
	JSType type = typed_scope_creator_1_expr70_line_240;
      int PROBE_START_LINE_241 = 248;
	com.google.javascript.rhino.jstype.JSType v_type_3625_line_241 = type;
	boolean typed_scope_creator_1_expr72_line_241 = v_type_3625_line_241 != null;
	boolean typed_scope_creator_1_expr73_line_241 = true;
	if (typed_scope_creator_1_expr72_line_241) {
		com.google.javascript.rhino.jstype.JSType v_type_3625_line_241_v1 = type;
		typed_scope_creator_1_expr73_line_241 = v_type_3625_line_241_v1.isFunctionType();
	}
	boolean typed_scope_creator_1_expr71_line_241 = typed_scope_creator_1_expr72_line_241
			&& typed_scope_creator_1_expr73_line_241;
	int PROBE_END_LINE_241 = 248;
	if (typed_scope_creator_1_expr71_line_241) {
        int PROBE_START_LINE_242 = 242;
		com.google.javascript.rhino.jstype.JSType v_type_3625_line_242 = type;
		FunctionType typed_scope_creator_1_expr74_line_242 = v_type_3625_line_242.toMaybeFunctionType();
		int PROBE_END_LINE_242 = 242;
		FunctionType fnType = typed_scope_creator_1_expr74_line_242;
        int PROBE_START_LINE_243 = 243;
		com.google.javascript.rhino.jstype.FunctionType v_fn_type_3626_line_243 = fnType;
		JSType typed_scope_creator_1_expr75_line_243 = v_fn_type_3626_line_243.getTypeOfThis();
		int PROBE_END_LINE_243 = 243;
		JSType fnThisType = typed_scope_creator_1_expr75_line_243;
        int PROBE_START_LINE_244 = 247;
		com.google.javascript.rhino.jstype.JSType v_fn_this_type_3627_line_244 = fnThisType;
		boolean typed_scope_creator_1_expr77_line_244 = v_fn_this_type_3627_line_244.isUnknownType();
		boolean typed_scope_creator_1_expr76_line_244 = !typed_scope_creator_1_expr77_line_244;
		int PROBE_END_LINE_244 = 247;
		if (typed_scope_creator_1_expr76_line_244) {
          int PROBE_START_LINE_245 = 246;
			com.google.javascript.jscomp.AbstractCompiler f_compiler_3612_line_245 = compiler;
			com.google.javascript.rhino.Node v_function_node_3624_line_245 = functionNode;
			com.google.javascript.rhino.Node typed_scope_creator_1_expr79_line_245 = v_function_node_3624_line_245
					.getLastChild();
			int PROBE_END_LINE_245 = 246;
		NodeTraversal.traverse(f_compiler_3612_line_245, typed_scope_creator_1_expr79_line_245,
              scopeBuilder.new CollectProperties(fnThisType));
        }
      }
    }

    int PROBE_START_LINE_251 = 255;
	com.google.javascript.jscomp.Scope p_parent_3618_line_251 = parent;
	boolean typed_scope_creator_1_expr81_line_251 = p_parent_3618_line_251 == null;
	int PROBE_END_LINE_251 = 255;
	if (typed_scope_creator_1_expr81_line_251) {
      int PROBE_START_LINE_252 = 254;
		com.google.javascript.jscomp.CodingConvention f_coding_convention_3614_line_252 = codingConvention;
		int PROBE_END_LINE_252 = 254;
	f_coding_convention_3614_line_252.defineDelegateProxyPrototypeProperties(
          typeRegistry, newScope, delegateProxyPrototypes,
          delegateCallingConventions);
    }

    int PROBE_START_LINE_257 = 257;
	com.google.javascript.jscomp.Scope v_new_scope_3619_line_257 = newScope;
	com.google.javascript.jscomp.TypedScopeCreator.AbstractScopeBuilder v_scope_builder_3620_line_257 = scopeBuilder;
	int PROBE_END_LINE_257 = 257;
	v_new_scope_3619_line_257.setTypeResolver(v_scope_builder_3620_line_257);
    int PROBE_START_LINE_258 = 258;
	com.google.javascript.jscomp.Scope v_new_scope_3619_line_258 = newScope;
	int PROBE_END_LINE_258 = 258;
	return v_new_scope_3619_line_258;
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

    int PROBE_START_LINE_319 = 319;
	com.google.javascript.rhino.Node p_root_3630_line_319 = root;
	Scope typed_scope_creator_1_expr86_line_319 = Scope.createGlobalScope(p_root_3630_line_319);
	int PROBE_END_LINE_319 = 319;
	Scope s = typed_scope_creator_1_expr86_line_319;
    int PROBE_START_LINE_320 = 320;
	com.google.javascript.jscomp.Scope v_s_3631_line_320 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_array_function_type_3632_line_320 = ARRAY_FUNCTION_TYPE;
	int PROBE_END_LINE_320 = 320;
	declareNativeFunctionType(v_s_3631_line_320, f_array_function_type_3632_line_320);
    int PROBE_START_LINE_321 = 321;
	com.google.javascript.jscomp.Scope v_s_3631_line_321 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_boolean_object_function_type_3633_line_321 = BOOLEAN_OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_321 = 321;
	declareNativeFunctionType(v_s_3631_line_321, f_boolean_object_function_type_3633_line_321);
    int PROBE_START_LINE_322 = 322;
	com.google.javascript.jscomp.Scope v_s_3631_line_322 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_date_function_type_3634_line_322 = DATE_FUNCTION_TYPE;
	int PROBE_END_LINE_322 = 322;
	declareNativeFunctionType(v_s_3631_line_322, f_date_function_type_3634_line_322);
    int PROBE_START_LINE_323 = 323;
	com.google.javascript.jscomp.Scope v_s_3631_line_323 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_error_function_type_3635_line_323 = ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_323 = 323;
	declareNativeFunctionType(v_s_3631_line_323, f_error_function_type_3635_line_323);
    int PROBE_START_LINE_324 = 324;
	com.google.javascript.jscomp.Scope v_s_3631_line_324 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_eval_error_function_type_3636_line_324 = EVAL_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_324 = 324;
	declareNativeFunctionType(v_s_3631_line_324, f_eval_error_function_type_3636_line_324);
    int PROBE_START_LINE_325 = 325;
	com.google.javascript.jscomp.Scope v_s_3631_line_325 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_function_function_type_3637_line_325 = FUNCTION_FUNCTION_TYPE;
	int PROBE_END_LINE_325 = 325;
	declareNativeFunctionType(v_s_3631_line_325, f_function_function_type_3637_line_325);
    int PROBE_START_LINE_326 = 326;
	com.google.javascript.jscomp.Scope v_s_3631_line_326 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_number_object_function_type_3638_line_326 = NUMBER_OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_326 = 326;
	declareNativeFunctionType(v_s_3631_line_326, f_number_object_function_type_3638_line_326);
    int PROBE_START_LINE_327 = 327;
	com.google.javascript.jscomp.Scope v_s_3631_line_327 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_object_function_type_3639_line_327 = OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_327 = 327;
	declareNativeFunctionType(v_s_3631_line_327, f_object_function_type_3639_line_327);
    int PROBE_START_LINE_328 = 328;
	com.google.javascript.jscomp.Scope v_s_3631_line_328 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_range_error_function_type_3640_line_328 = RANGE_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_328 = 328;
	declareNativeFunctionType(v_s_3631_line_328, f_range_error_function_type_3640_line_328);
    int PROBE_START_LINE_329 = 329;
	com.google.javascript.jscomp.Scope v_s_3631_line_329 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_reference_error_function_type_3641_line_329 = REFERENCE_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_329 = 329;
	declareNativeFunctionType(v_s_3631_line_329, f_reference_error_function_type_3641_line_329);
    int PROBE_START_LINE_330 = 330;
	com.google.javascript.jscomp.Scope v_s_3631_line_330 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_regexp_function_type_3642_line_330 = REGEXP_FUNCTION_TYPE;
	int PROBE_END_LINE_330 = 330;
	declareNativeFunctionType(v_s_3631_line_330, f_regexp_function_type_3642_line_330);
    int PROBE_START_LINE_331 = 331;
	com.google.javascript.jscomp.Scope v_s_3631_line_331 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_string_object_function_type_3643_line_331 = STRING_OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_331 = 331;
	declareNativeFunctionType(v_s_3631_line_331, f_string_object_function_type_3643_line_331);
    int PROBE_START_LINE_332 = 332;
	com.google.javascript.jscomp.Scope v_s_3631_line_332 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_syntax_error_function_type_3644_line_332 = SYNTAX_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_332 = 332;
	declareNativeFunctionType(v_s_3631_line_332, f_syntax_error_function_type_3644_line_332);
    int PROBE_START_LINE_333 = 333;
	com.google.javascript.jscomp.Scope v_s_3631_line_333 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_type_error_function_type_3645_line_333 = TYPE_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_333 = 333;
	declareNativeFunctionType(v_s_3631_line_333, f_type_error_function_type_3645_line_333);
    int PROBE_START_LINE_334 = 334;
	com.google.javascript.jscomp.Scope v_s_3631_line_334 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_uri_error_function_type_3646_line_334 = URI_ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_334 = 334;
	declareNativeFunctionType(v_s_3631_line_334, f_uri_error_function_type_3646_line_334);
    int PROBE_START_LINE_335 = 335;
	com.google.javascript.jscomp.Scope v_s_3631_line_335 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_void_type_1918_line_335 = VOID_TYPE;
	int PROBE_END_LINE_335 = 335;
	declareNativeValueType(v_s_3631_line_335, "undefined", f_void_type_1918_line_335);

    int PROBE_START_LINE_340 = 340;
	com.google.javascript.jscomp.Scope v_s_3631_line_340 = s;
	com.google.javascript.rhino.jstype.JSTypeNative f_function_instance_type_3647_line_340 = FUNCTION_INSTANCE_TYPE;
	int PROBE_END_LINE_340 = 340;
	// There is no longer a need to special case ActiveXObject
    // but this remains here until we can get the extern forks
    // cleaned up.
    declareNativeValueType(v_s_3631_line_340, "ActiveXObject", f_function_instance_type_3647_line_340);

    int PROBE_START_LINE_342 = 342;
	com.google.javascript.jscomp.Scope v_s_3631_line_342 = s;
	int PROBE_END_LINE_342 = 342;
	return v_s_3631_line_342;
  }

  private void declareNativeFunctionType(Scope scope, JSTypeNative tId) {
    int PROBE_START_LINE_346 = 346;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3615_line_346 = typeRegistry;
	com.google.javascript.rhino.jstype.JSTypeNative p_t_id_3649_line_346 = tId;
	FunctionType typed_scope_creator_1_expr104_line_346 = f_type_registry_3615_line_346
			.getNativeFunctionType(p_t_id_3649_line_346);
	int PROBE_END_LINE_346 = 346;
	FunctionType t = typed_scope_creator_1_expr104_line_346;
    int PROBE_START_LINE_347 = 347;
	com.google.javascript.jscomp.Scope p_scope_3648_line_347 = scope;
	com.google.javascript.rhino.jstype.FunctionType v_t_3650_line_347 = t;
	com.google.javascript.rhino.jstype.ObjectType typed_scope_creator_1_expr107_line_347 = v_t_3650_line_347
			.getInstanceType();
	String typed_scope_creator_1_expr106_line_347 = typed_scope_creator_1_expr107_line_347.getReferenceName();
	com.google.javascript.rhino.jstype.FunctionType v_t_3650_line_347_v1 = t;
	int PROBE_END_LINE_347 = 347;
	declareNativeType(p_scope_3648_line_347, typed_scope_creator_1_expr106_line_347, v_t_3650_line_347_v1);
    declareNativeType(
        scope, t.getPrototype().getReferenceName(), t.getPrototype());
  }

  private void declareNativeValueType(Scope scope, String name,
      JSTypeNative tId) {
    int PROBE_START_LINE_354 = 354;
		com.google.javascript.jscomp.Scope p_scope_3651_line_354 = scope;
		String p_name_3652_line_354 = name;
		com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3615_line_354 = typeRegistry;
		com.google.javascript.rhino.jstype.JSTypeNative p_t_id_3653_line_354 = tId;
		com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr112_line_354 = f_type_registry_3615_line_354
				.getNativeType(p_t_id_3653_line_354);
		int PROBE_END_LINE_354 = 354;
	declareNativeType(p_scope_3651_line_354, p_name_3652_line_354, typed_scope_creator_1_expr112_line_354);
  }

  private void declareNativeType(Scope scope, String name, JSType t) {
    int PROBE_START_LINE_358 = 358;
	com.google.javascript.jscomp.Scope p_scope_3654_line_358 = scope;
	String p_name_3655_line_358 = name;
	com.google.javascript.rhino.jstype.JSType p_t_3656_line_358 = t;
	int PROBE_END_LINE_358 = 358;
	p_scope_3654_line_358.declare(p_name_3655_line_358, null, p_t_3656_line_358, null, false);
  }

  private static class DiscoverEnumsAndTypedefs
      extends AbstractShallowStatementCallback {
    private final JSTypeRegistry registry;

    DiscoverEnumsAndTypedefs(JSTypeRegistry registry) {
      int PROBE_START_LINE_366 = 366;
		com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_3657_line_366 = registry;
		int PROBE_END_LINE_366 = 366;
	this.registry = p_registry_3657_line_366;
    }

    @Override
    public void visit(NodeTraversal t, Node node, Node parent) {
      int PROBE_START_LINE_371 = 389;
		com.google.javascript.rhino.Node p_node_3660_line_371 = node;
		int typed_scope_creator_1_expr117_line_371 = p_node_3660_line_371.getType();
		int PROBE_END_LINE_371 = 389;
	switch (typed_scope_creator_1_expr117_line_371) {
        case Token.VAR:
	int PROBE_START_LINE_372 = 372;
	boolean FOR_STMT_TOGGLE_LINE_373 = false;
	int PROBE_END_LINE_372 = 372;
	for (Node child = null;
               true;) {
            int PROBE_START_LINE_375 = 376;
				if (!FOR_STMT_TOGGLE_LINE_373) {
					FOR_STMT_TOGGLE_LINE_373 = true;
					com.google.javascript.rhino.Node p_node_3660_line_373 = node;
					Node typed_scope_creator_1_expr119_line_373 = p_node_3660_line_373.getFirstChild();
					child = typed_scope_creator_1_expr119_line_373;
				} else {
					if (FOR_STMT_TOGGLE_LINE_373) {
						com.google.javascript.rhino.Node v_child_3662_line_374_v1 = child;
						com.google.javascript.rhino.Node typed_scope_creator_1_expr122_line_374 = v_child_3662_line_374_v1
								.getNext();
						child = typed_scope_creator_1_expr122_line_374;
					} else {
						FOR_STMT_TOGGLE_LINE_373 = true;
					}
				}
				com.google.javascript.rhino.Node v_child_3662_line_374 = child;
				boolean typed_scope_creator_1_expr120_line_374 = v_child_3662_line_374 != null;
				if (!(typed_scope_creator_1_expr120_line_374)) {
					break;
				}
				int PROBE_END_LINE_375 = 376;
			identifyNameNode(
                child, NodeUtil.getBestJSDocInfo(child));
          }
          break;
        case Token.EXPR_RESULT:
	int PROBE_START_LINE_380 = 380;
	com.google.javascript.rhino.Node p_node_3660_line_380 = node;
	Node typed_scope_creator_1_expr125_line_380 = p_node_3660_line_380.getFirstChild();
	int PROBE_END_LINE_380 = 380;
	Node firstChild = typed_scope_creator_1_expr125_line_380;
	int PROBE_START_LINE_381 = 387;
	com.google.javascript.rhino.Node v_first_child_3663_line_381 = firstChild;
	boolean typed_scope_creator_1_expr126_line_381 = v_first_child_3663_line_381.isAssign();
	int PROBE_END_LINE_381 = 387;
	if (typed_scope_creator_1_expr126_line_381) {
            identifyNameNode(
                firstChild.getFirstChild(), firstChild.getJSDocInfo());
          } else {
            identifyNameNode(
                firstChild, firstChild.getJSDocInfo());
          }
          break;
      }
    }

    private void identifyNameNode(
        Node nameNode, JSDocInfo info) {
      int PROBE_START_LINE_394 = 402;
			com.google.javascript.rhino.Node p_name_node_3664_line_394 = nameNode;
			boolean typed_scope_creator_1_expr132_line_394 = p_name_node_3664_line_394.isQualifiedName();
			int PROBE_END_LINE_394 = 402;
	if (typed_scope_creator_1_expr132_line_394) {
        int PROBE_START_LINE_395 = 401;
		com.google.javascript.rhino.JSDocInfo p_info_3665_line_395 = info;
		boolean typed_scope_creator_1_expr133_line_395 = p_info_3665_line_395 != null;
		int PROBE_END_LINE_395 = 401;
		if (typed_scope_creator_1_expr133_line_395) {
          int PROBE_START_LINE_396 = 400;
			com.google.javascript.rhino.JSDocInfo p_info_3665_line_396 = info;
			boolean typed_scope_creator_1_expr134_line_396 = p_info_3665_line_396.hasEnumParameterType();
			int PROBE_END_LINE_396 = 400;
		if (typed_scope_creator_1_expr134_line_396) {
            registry.identifyNonNullableName(nameNode.getQualifiedName());
          } else {
			int PROBE_START_LINE_398 = 400;
			com.google.javascript.rhino.JSDocInfo p_info_3665_line_398 = info;
			boolean typed_scope_creator_1_expr135_line_398 = p_info_3665_line_398.hasTypedefType();
			int PROBE_END_LINE_398 = 400;
			if (typed_scope_creator_1_expr135_line_398) {
				registry.identifyNonNullableName(nameNode.getQualifiedName());
			}
		}
        }
      }
    }
  }

  private JSType getNativeType(JSTypeNative nativeType) {
    int PROBE_START_LINE_407 = 407;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3615_line_407 = typeRegistry;
	com.google.javascript.rhino.jstype.JSTypeNative p_native_type_3666_line_407 = nativeType;
	com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr136_line_407 = f_type_registry_3615_line_407
			.getNativeType(p_native_type_3666_line_407);
	int PROBE_END_LINE_407 = 407;
	return typed_scope_creator_1_expr136_line_407;
  }

  private abstract class AbstractScopeBuilder
      implements NodeTraversal.Callback, Scope.TypeResolver {

    /**
     * The scope that we're building.
     */
    final Scope scope;

    private final List<DeferredSetType> deferredSetTypes =
        Lists.newArrayList();

    int PROBE_START_LINE_421 = 424;

	private final ArrayList<com.google.javascript.rhino.Node> typed_scope_creator_1_expr138_line_424 = Lists
			.newArrayList();

	int PROBE_END_LINE_421 = 424;

	/**
     * Functions that we found in the global scope and not in externs.
     */
    private final List<Node> nonExternFunctions = typed_scope_creator_1_expr138_line_424;

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
      int PROBE_START_LINE_458 = 458;
		com.google.javascript.jscomp.Scope p_scope_3672_line_458 = scope;
		int PROBE_END_LINE_458 = 458;
	this.scope = p_scope_3672_line_458;
    }

    void setDeferredType(Node node, JSType type) {
      int PROBE_START_LINE_462 = 462;
		List<com.google.javascript.jscomp.TypedScopeCreator.DeferredSetType> f_deferred_set_types_3667_line_462 = deferredSetTypes;
		com.google.javascript.rhino.Node p_node_3674_line_462 = node;
		com.google.javascript.rhino.jstype.JSType p_type_3675_line_462 = type;
		int PROBE_END_LINE_462 = 462;
	f_deferred_set_types_3667_line_462.add(new DeferredSetType(p_node_3674_line_462, p_type_3675_line_462));
    }

    @Override
    public void resolveTypes() {
      int PROBE_START_LINE_468 = 470;
		List<com.google.javascript.jscomp.TypedScopeCreator.DeferredSetType> f_deferred_set_types_3667_line_468 = deferredSetTypes;
		int PROBE_END_LINE_468 = 470;
	// Resolve types and attach them to nodes.
      for (DeferredSetType deferred : f_deferred_set_types_3667_line_468) {
        int PROBE_START_LINE_469 = 469;
		com.google.javascript.jscomp.TypedScopeCreator.DeferredSetType v_deferred_3676_line_469 = deferred;
		com.google.javascript.jscomp.Scope f_scope_3673_line_469 = scope;
		int PROBE_END_LINE_469 = 469;
		v_deferred_3676_line_469.resolve(f_scope_3673_line_469);
      }

      int PROBE_START_LINE_473 = 473;
	com.google.javascript.jscomp.Scope f_scope_3673_line_473 = scope;
	Iterator<Var> typed_scope_creator_1_expr146_line_473 = f_scope_3673_line_473.getVars();
	int PROBE_END_LINE_473 = 473;
	// Resolve types and attach them to scope slots.
      Iterator<Var> vars = typed_scope_creator_1_expr146_line_473;
      while (true) {
        int PROBE_START_LINE_474 = 474;
		Iterator<com.google.javascript.jscomp.Scope.Var> v_vars_3677_line_474 = vars;
		boolean typed_scope_creator_1_expr147_line_474 = v_vars_3677_line_474.hasNext();
		if (!(typed_scope_creator_1_expr147_line_474)) {
			break;
		}
		int PROBE_END_LINE_474 = 474;
		int PROBE_START_LINE_475 = 475;
		Iterator<com.google.javascript.jscomp.Scope.Var> v_vars_3677_line_475 = vars;
		com.google.javascript.jscomp.Scope.Var typed_scope_creator_1_expr149_line_475 = v_vars_3677_line_475.next();
		com.google.javascript.rhino.ErrorReporter f_type_parsing_error_reporter_3608_line_475 = typeParsingErrorReporter;
		int PROBE_END_LINE_475 = 475;
		typed_scope_creator_1_expr149_line_475.resolveType(f_type_parsing_error_reporter_3608_line_475);
      }

      int PROBE_START_LINE_480 = 480;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3615_line_480 = typeRegistry;
	com.google.javascript.jscomp.Scope f_scope_3673_line_480 = scope;
	int PROBE_END_LINE_480 = 480;
	// Tell the type registry that any remaining types
      // are unknown.
      f_type_registry_3615_line_480.resolveTypesInScope(f_scope_3673_line_480);
    }

    @Override
    public final boolean shouldTraverse(NodeTraversal t, Node n, Node parent) {
      int PROBE_START_LINE_485 = 485;
		com.google.javascript.jscomp.NodeTraversal p_t_3678_line_485 = t;
		com.google.javascript.rhino.InputId typed_scope_creator_1_expr152_line_485 = p_t_3678_line_485.getInputId();
		int PROBE_END_LINE_485 = 485;
	inputId = typed_scope_creator_1_expr152_line_485;
      int PROBE_START_LINE_486 = 490;
	com.google.javascript.rhino.Node p_n_3679_line_486 = n;
	boolean typed_scope_creator_1_expr154_line_486 = p_n_3679_line_486.isFunction();
	boolean typed_scope_creator_1_expr153_line_486 = typed_scope_creator_1_expr154_line_486 || n.isScript();
	int PROBE_END_LINE_486 = 490;
	if (typed_scope_creator_1_expr153_line_486) {
        int PROBE_START_LINE_488 = 488;
			com.google.javascript.rhino.InputId f_input_id_3681_line_488 = inputId;
			int PROBE_END_LINE_488 = 488;
		Preconditions.checkNotNull(f_input_id_3681_line_488);
        int PROBE_START_LINE_489 = 489;
		com.google.javascript.rhino.Node p_n_3679_line_489 = n;
		String typed_scope_creator_1_expr157_line_489 = NodeUtil.getSourceName(p_n_3679_line_489);
		int PROBE_END_LINE_489 = 489;
		sourceName = typed_scope_creator_1_expr157_line_489;
      }

      int PROBE_START_LINE_494 = 495;
	com.google.javascript.rhino.Node p_parent_3680_line_494 = parent;
	boolean typed_scope_creator_1_expr161_line_494 = p_parent_3680_line_494 == null;
	boolean typed_scope_creator_1_expr162_line_494 = false;
	if (!typed_scope_creator_1_expr161_line_494) {
		com.google.javascript.rhino.Node p_parent_3680_line_494_v1 = parent;
		boolean typed_scope_creator_1_expr163_line_494 = p_parent_3680_line_494_v1.isFunction();
		typed_scope_creator_1_expr162_line_494 = !typed_scope_creator_1_expr163_line_494;
	}
	boolean typed_scope_creator_1_expr160_line_494 = typed_scope_creator_1_expr161_line_494
			|| typed_scope_creator_1_expr162_line_494;
	boolean typed_scope_creator_1_expr159_line_494 = typed_scope_creator_1_expr160_line_494
			|| n == parent.getFirstChild();
	boolean typed_scope_creator_1_expr158_line_494 = typed_scope_creator_1_expr159_line_494
			|| parent == scope.getRootNode();
	int PROBE_END_LINE_494 = 495;
	// We do want to traverse the name of a named function, but we don't
      // want to traverse the arguments or body.
      boolean descend = typed_scope_creator_1_expr158_line_494;

      int PROBE_START_LINE_497 = 509;
	boolean v_descend_3682_line_497 = descend;
	int PROBE_END_LINE_497 = 509;
	if (v_descend_3682_line_497) {
        int PROBE_START_LINE_500 = 508;
		com.google.javascript.rhino.Node p_n_3679_line_500 = n;
		boolean typed_scope_creator_1_expr164_line_500 = NodeUtil.isStatementParent(p_n_3679_line_500);
		// Handle hoisted functions on pre-order traversal, so that they
        // get hit before other things in the scope.
        if (typed_scope_creator_1_expr164_line_500) {
          boolean FOR_STMT_TOGGLE_LINE_501 = false;
			int PROBE_END_LINE_500 = 500;
		for (Node child = null;
               true;) {
            int PROBE_START_LINE_504 = 506;
				if (!FOR_STMT_TOGGLE_LINE_501) {
					FOR_STMT_TOGGLE_LINE_501 = true;
					com.google.javascript.rhino.Node p_n_3679_line_501 = n;
					Node typed_scope_creator_1_expr166_line_501 = p_n_3679_line_501.getFirstChild();
					child = typed_scope_creator_1_expr166_line_501;
				} else {
					if (FOR_STMT_TOGGLE_LINE_501) {
						com.google.javascript.rhino.Node v_child_3683_line_503 = child;
						com.google.javascript.rhino.Node typed_scope_creator_1_expr169_line_503 = v_child_3683_line_503
								.getNext();
						child = typed_scope_creator_1_expr169_line_503;
					} else {
						FOR_STMT_TOGGLE_LINE_501 = true;
					}
				}
				com.google.javascript.rhino.Node v_child_3683_line_502 = child;
				boolean typed_scope_creator_1_expr167_line_502 = v_child_3683_line_502 != null;
				if (!(typed_scope_creator_1_expr167_line_502)) {
					break;
				}
				com.google.javascript.rhino.Node v_child_3683_line_504 = child;
				boolean typed_scope_creator_1_expr170_line_504 = NodeUtil
						.isHoistedFunctionDeclaration(v_child_3683_line_504);
				int PROBE_END_LINE_504 = 506;
			if (typed_scope_creator_1_expr170_line_504) {
              defineFunctionLiteral(child);
            }
          }
        }
      }

      int PROBE_START_LINE_511 = 511;
	boolean v_descend_3682_line_511 = descend;
	int PROBE_END_LINE_511 = 511;
	return v_descend_3682_line_511;
    }

    @Override
    public void visit(NodeTraversal t, Node n, Node parent) {
      int PROBE_START_LINE_516 = 516;
		com.google.javascript.jscomp.NodeTraversal p_t_3684_line_516 = t;
		com.google.javascript.rhino.InputId typed_scope_creator_1_expr172_line_516 = p_t_3684_line_516.getInputId();
		int PROBE_END_LINE_516 = 516;
	inputId = typed_scope_creator_1_expr172_line_516;
      int PROBE_START_LINE_517 = 517;
	com.google.javascript.rhino.Node p_n_3685_line_517 = n;
	int PROBE_END_LINE_517 = 517;
	attachLiteralTypes(p_n_3685_line_517);

      int PROBE_START_LINE_519 = 561;
	com.google.javascript.rhino.Node p_n_3685_line_519 = n;
	int typed_scope_creator_1_expr174_line_519 = p_n_3685_line_519.getType();
	int PROBE_END_LINE_519 = 561;
	switch (typed_scope_creator_1_expr174_line_519) {
        case Token.CALL:
          checkForClassDefiningCalls(t, n);
          checkForCallingConventionDefiningCalls(n, delegateCallingConventions);
          break;

        case Token.FUNCTION:
	int PROBE_START_LINE_526 = 528;
	com.google.javascript.jscomp.NodeTraversal p_t_3684_line_526 = t;
	com.google.javascript.jscomp.CompilerInput typed_scope_creator_1_expr177_line_526 = p_t_3684_line_526.getInput();
	boolean typed_scope_creator_1_expr176_line_526 = typed_scope_creator_1_expr177_line_526 == null;
	boolean typed_scope_creator_1_expr178_line_526 = false;
	if (!typed_scope_creator_1_expr176_line_526) {
		com.google.javascript.jscomp.NodeTraversal p_t_3684_line_526_v1 = t;
		com.google.javascript.jscomp.CompilerInput typed_scope_creator_1_expr180_line_526 = p_t_3684_line_526_v1
				.getInput();
		boolean typed_scope_creator_1_expr179_line_526 = typed_scope_creator_1_expr180_line_526.isExtern();
		typed_scope_creator_1_expr178_line_526 = !typed_scope_creator_1_expr179_line_526;
	}
	boolean typed_scope_creator_1_expr175_line_526 = typed_scope_creator_1_expr176_line_526
			|| typed_scope_creator_1_expr178_line_526;
	int PROBE_END_LINE_526 = 528;
	if (typed_scope_creator_1_expr175_line_526) {
            int PROBE_START_LINE_527 = 527;
			List<com.google.javascript.rhino.Node> f_non_extern_functions_3668_line_527 = nonExternFunctions;
			com.google.javascript.rhino.Node p_n_3685_line_527 = n;
			int PROBE_END_LINE_527 = 527;
			f_non_extern_functions_3668_line_527.add(p_n_3685_line_527);
          }

	int PROBE_START_LINE_531 = 533;
	com.google.javascript.rhino.Node p_n_3685_line_531 = n;
	boolean typed_scope_creator_1_expr183_line_531 = NodeUtil.isHoistedFunctionDeclaration(p_n_3685_line_531);
	boolean typed_scope_creator_1_expr182_line_531 = !typed_scope_creator_1_expr183_line_531;
	int PROBE_END_LINE_531 = 533;
	// Hoisted functions are handled during pre-traversal.
          if (typed_scope_creator_1_expr182_line_531) {
            int PROBE_START_LINE_532 = 532;
			com.google.javascript.rhino.Node p_n_3685_line_532 = n;
			int PROBE_END_LINE_532 = 532;
			defineFunctionLiteral(p_n_3685_line_532);
          }
          break;

        case Token.ASSIGN:
	int PROBE_START_LINE_538 = 538;
	com.google.javascript.rhino.Node p_n_3685_line_538 = n;
	Node typed_scope_creator_1_expr185_line_538 = p_n_3685_line_538.getFirstChild();
	int PROBE_END_LINE_538 = 538;
	// Handle initialization of properties.
          Node firstChild = typed_scope_creator_1_expr185_line_538;
	int PROBE_START_LINE_539 = 543;
	com.google.javascript.rhino.Node v_first_child_3687_line_539 = firstChild;
	boolean typed_scope_creator_1_expr187_line_539 = v_first_child_3687_line_539.isGetProp();
	boolean typed_scope_creator_1_expr186_line_539 = typed_scope_creator_1_expr187_line_539
			&& firstChild.isQualifiedName();
	int PROBE_END_LINE_539 = 543;
	if (typed_scope_creator_1_expr186_line_539) {
            int PROBE_START_LINE_541 = 542;
				com.google.javascript.jscomp.NodeTraversal p_t_3684_line_541 = t;
				com.google.javascript.rhino.Node p_n_3685_line_541 = n;
				com.google.javascript.rhino.JSDocInfo typed_scope_creator_1_expr189_line_541 = p_n_3685_line_541
						.getJSDocInfo();
				int PROBE_END_LINE_541 = 542;
			maybeDeclareQualifiedName(p_t_3684_line_541, typed_scope_creator_1_expr189_line_541,
                firstChild, n, firstChild.getNext());
          }
          break;

        case Token.CATCH:
          defineCatch(n);
          break;

        case Token.VAR:
	int PROBE_START_LINE_551 = 551;
	com.google.javascript.rhino.Node p_n_3685_line_551 = n;
	int PROBE_END_LINE_551 = 551;
	defineVar(p_n_3685_line_551);
          break;

        case Token.GETPROP:
	int PROBE_START_LINE_556 = 559;
	com.google.javascript.rhino.Node p_parent_3686_line_556 = parent;
	boolean typed_scope_creator_1_expr193_line_556 = p_parent_3686_line_556.isExprResult();
	boolean typed_scope_creator_1_expr192_line_556 = typed_scope_creator_1_expr193_line_556 && n.isQualifiedName();
	int PROBE_END_LINE_556 = 559;
	// Handle stubbed properties.
          if (typed_scope_creator_1_expr192_line_556) {
            int PROBE_START_LINE_558 = 558;
				com.google.javascript.jscomp.NodeTraversal p_t_3684_line_558 = t;
				com.google.javascript.rhino.Node p_n_3685_line_558 = n;
				com.google.javascript.rhino.JSDocInfo typed_scope_creator_1_expr195_line_558 = p_n_3685_line_558
						.getJSDocInfo();
				com.google.javascript.rhino.Node p_n_3685_line_558_v1 = n;
				com.google.javascript.rhino.Node p_parent_3686_line_558 = parent;
				int PROBE_END_LINE_558 = 558;
			maybeDeclareQualifiedName(p_t_3684_line_558, typed_scope_creator_1_expr195_line_558, p_n_3685_line_558_v1, p_parent_3686_line_558, null);
          }
          break;
      }

      int PROBE_START_LINE_564 = 570;
	com.google.javascript.rhino.Node p_n_3685_line_564 = n;
	com.google.javascript.rhino.Node typed_scope_creator_1_expr199_line_564 = p_n_3685_line_564.getParent();
	boolean typed_scope_creator_1_expr198_line_564 = typed_scope_creator_1_expr199_line_564 != null;
	boolean typed_scope_creator_1_expr200_line_564 = true;
	if (typed_scope_creator_1_expr198_line_564) {
		com.google.javascript.rhino.Node p_n_3685_line_564_v1 = n;
		typed_scope_creator_1_expr200_line_564 = NodeUtil.isStatement(p_n_3685_line_564_v1);
	}
	boolean typed_scope_creator_1_expr197_line_564 = typed_scope_creator_1_expr198_line_564
			&& typed_scope_creator_1_expr200_line_564;
	boolean typed_scope_creator_1_expr196_line_564 = typed_scope_creator_1_expr197_line_564
			&& lentObjectLiterals != null;
	int PROBE_END_LINE_564 = 570;
	// Analyze any @lends object literals in this statement.
      if (typed_scope_creator_1_expr196_line_564) {
        for (Node objLit : lentObjectLiterals) {
          defineObjectLiteral(objLit);
        }
        lentObjectLiterals.clear();
      }
    }

    private void attachLiteralTypes(Node n) {
      int PROBE_START_LINE_574 = 615;
		com.google.javascript.rhino.Node p_n_3688_line_574 = n;
		int typed_scope_creator_1_expr201_line_574 = p_n_3688_line_574.getType();
		int PROBE_END_LINE_574 = 615;
	switch (typed_scope_creator_1_expr201_line_574) {
        case Token.NULL:
          n.setJSType(getNativeType(NULL_TYPE));
          break;

        case Token.VOID:
          n.setJSType(getNativeType(VOID_TYPE));
          break;

        case Token.STRING:
	int PROBE_START_LINE_584 = 584;
	com.google.javascript.rhino.Node p_n_3688_line_584 = n;
	com.google.javascript.rhino.jstype.JSTypeNative f_string_type_3462_line_584 = STRING_TYPE;
	com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr203_line_584 = getNativeType(
			f_string_type_3462_line_584);
	int PROBE_END_LINE_584 = 584;
	p_n_3688_line_584.setJSType(typed_scope_creator_1_expr203_line_584);
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
	int PROBE_START_LINE_601 = 601;
	com.google.javascript.rhino.Node p_n_3688_line_601 = n;
	JSDocInfo typed_scope_creator_1_expr204_line_601 = p_n_3688_line_601.getJSDocInfo();
	int PROBE_END_LINE_601 = 601;
	JSDocInfo info = typed_scope_creator_1_expr204_line_601;
	int PROBE_START_LINE_602 = 610;
	com.google.javascript.rhino.JSDocInfo v_info_3689_line_602 = info;
	boolean typed_scope_creator_1_expr206_line_602 = v_info_3689_line_602 != null;
	boolean typed_scope_creator_1_expr205_line_602 = typed_scope_creator_1_expr206_line_602
			&& info.getLendsName() != null;
	int PROBE_END_LINE_602 = 610;
	if (typed_scope_creator_1_expr205_line_602) {
            if (lentObjectLiterals == null) {
              lentObjectLiterals = Lists.newArrayList();
            }
            lentObjectLiterals.add(n);
          } else {
            int PROBE_START_LINE_609 = 609;
			com.google.javascript.rhino.Node p_n_3688_line_609 = n;
			int PROBE_END_LINE_609 = 609;
			defineObjectLiteral(p_n_3688_line_609);
          }
          break;

          // NOTE(nicksantos): If we ever support Array tuples,
          // we will need to put ARRAYLIT here as well.
      }
    }

    private void defineObjectLiteral(Node objectLit) {
      // Handle the @lends annotation.
      JSType type = null;
      int PROBE_START_LINE_621 = 621;
	com.google.javascript.rhino.Node p_object_lit_3690_line_621 = objectLit;
	JSDocInfo typed_scope_creator_1_expr208_line_621 = p_object_lit_3690_line_621.getJSDocInfo();
	int PROBE_END_LINE_621 = 621;
	JSDocInfo info = typed_scope_creator_1_expr208_line_621;
      int PROBE_START_LINE_622 = 642;
	com.google.javascript.rhino.JSDocInfo v_info_3692_line_622 = info;
	boolean typed_scope_creator_1_expr210_line_622 = v_info_3692_line_622 != null;
	boolean typed_scope_creator_1_expr211_line_622 = true;
	if (typed_scope_creator_1_expr210_line_622) {
		com.google.javascript.rhino.JSDocInfo v_info_3692_line_622_v1 = info;
		String typed_scope_creator_1_expr212_line_622 = v_info_3692_line_622_v1.getLendsName();
		typed_scope_creator_1_expr211_line_622 = typed_scope_creator_1_expr212_line_622 != null;
	}
	boolean typed_scope_creator_1_expr209_line_622 = typed_scope_creator_1_expr210_line_622
			&& typed_scope_creator_1_expr211_line_622;
	int PROBE_END_LINE_622 = 642;
	if (typed_scope_creator_1_expr209_line_622) {
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

      int PROBE_START_LINE_644 = 644;
	com.google.javascript.rhino.Node p_object_lit_3690_line_644 = objectLit;
	com.google.javascript.rhino.JSDocInfo typed_scope_creator_1_expr214_line_644 = NodeUtil
			.getBestJSDocInfo(p_object_lit_3690_line_644);
	int PROBE_END_LINE_644 = 644;
	info = typed_scope_creator_1_expr214_line_644;
      int PROBE_START_LINE_645 = 645;
	com.google.javascript.rhino.Node p_object_lit_3690_line_645 = objectLit;
	Node typed_scope_creator_1_expr215_line_645 = NodeUtil.getBestLValue(p_object_lit_3690_line_645);
	int PROBE_END_LINE_645 = 645;
	Node lValue = typed_scope_creator_1_expr215_line_645;
      int PROBE_START_LINE_646 = 646;
	com.google.javascript.rhino.Node v_l_value_3693_line_646 = lValue;
	String typed_scope_creator_1_expr216_line_646 = NodeUtil.getBestLValueName(v_l_value_3693_line_646);
	int PROBE_END_LINE_646 = 646;
	String lValueName = typed_scope_creator_1_expr216_line_646;
      boolean createdEnumType = false;
      int PROBE_START_LINE_648 = 651;
	com.google.javascript.rhino.JSDocInfo v_info_3692_line_648 = info;
	boolean typed_scope_creator_1_expr218_line_648 = v_info_3692_line_648 != null;
	boolean typed_scope_creator_1_expr219_line_648 = true;
	if (typed_scope_creator_1_expr218_line_648) {
		com.google.javascript.rhino.JSDocInfo v_info_3692_line_648_v1 = info;
		typed_scope_creator_1_expr219_line_648 = v_info_3692_line_648_v1.hasEnumParameterType();
	}
	boolean typed_scope_creator_1_expr217_line_648 = typed_scope_creator_1_expr218_line_648
			&& typed_scope_creator_1_expr219_line_648;
	int PROBE_END_LINE_648 = 651;
	if (typed_scope_creator_1_expr217_line_648) {
        type = createEnumTypeFromNodes(objectLit, lValueName, info, lValue);
        createdEnumType = true;
      }

      int PROBE_START_LINE_653 = 655;
	com.google.javascript.rhino.jstype.JSType v_type_3691_line_653 = type;
	boolean typed_scope_creator_1_expr220_line_653 = v_type_3691_line_653 == null;
	int PROBE_END_LINE_653 = 655;
	if (typed_scope_creator_1_expr220_line_653) {
        int PROBE_START_LINE_654 = 654;
		com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3615_line_654 = typeRegistry;
		com.google.javascript.rhino.JSDocInfo v_info_3692_line_654 = info;
		com.google.javascript.rhino.jstype.ObjectType typed_scope_creator_1_expr222_line_654 = f_type_registry_3615_line_654
				.createAnonymousObjectType(v_info_3692_line_654);
		int PROBE_END_LINE_654 = 654;
		type = typed_scope_creator_1_expr222_line_654;
      }

      int PROBE_START_LINE_657 = 657;
	com.google.javascript.rhino.Node p_object_lit_3690_line_657 = objectLit;
	com.google.javascript.rhino.jstype.JSType v_type_3691_line_657 = type;
	int PROBE_END_LINE_657 = 657;
	setDeferredType(p_object_lit_3690_line_657, v_type_3691_line_657);

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
      int PROBE_START_LINE_674 = 674;
			boolean FOR_STMT_TOGGLE_LINE_675 = false;
			int PROBE_END_LINE_674 = 674;
	for (Node keyNode = null; true;) {
        int PROBE_START_LINE_677 = 677;
			if (!FOR_STMT_TOGGLE_LINE_675) {
				FOR_STMT_TOGGLE_LINE_675 = true;
				com.google.javascript.rhino.Node p_obj_lit_3696_line_675 = objLit;
				Node typed_scope_creator_1_expr228_line_675 = p_obj_lit_3696_line_675.getFirstChild();
				keyNode = typed_scope_creator_1_expr228_line_675;
			} else {
				if (FOR_STMT_TOGGLE_LINE_675) {
					com.google.javascript.rhino.Node v_key_node_3699_line_676 = keyNode;
					com.google.javascript.rhino.Node typed_scope_creator_1_expr231_line_676 = v_key_node_3699_line_676
							.getNext();
					keyNode = typed_scope_creator_1_expr231_line_676;
				} else {
					FOR_STMT_TOGGLE_LINE_675 = true;
				}
			}
			com.google.javascript.rhino.Node v_key_node_3699_line_675 = keyNode;
			boolean typed_scope_creator_1_expr229_line_675 = v_key_node_3699_line_675 != null;
			if (!(typed_scope_creator_1_expr229_line_675)) {
				break;
			}
			com.google.javascript.rhino.Node v_key_node_3699_line_677 = keyNode;
			Node typed_scope_creator_1_expr232_line_677 = v_key_node_3699_line_677.getFirstChild();
			int PROBE_END_LINE_677 = 677;
		Node value = typed_scope_creator_1_expr232_line_677;
        int PROBE_START_LINE_678 = 678;
		com.google.javascript.rhino.Node v_key_node_3699_line_678 = keyNode;
		String typed_scope_creator_1_expr233_line_678 = NodeUtil.getObjectLitKeyName(v_key_node_3699_line_678);
		int PROBE_END_LINE_678 = 678;
		String memberName = typed_scope_creator_1_expr233_line_678;
        int PROBE_START_LINE_679 = 679;
		com.google.javascript.rhino.Node v_key_node_3699_line_679 = keyNode;
		JSDocInfo typed_scope_creator_1_expr234_line_679 = v_key_node_3699_line_679.getJSDocInfo();
		int PROBE_END_LINE_679 = 679;
		JSDocInfo info = typed_scope_creator_1_expr234_line_679;
        int PROBE_START_LINE_680 = 680;
		com.google.javascript.rhino.JSDocInfo v_info_3702_line_680 = info;
		com.google.javascript.rhino.Node v_key_node_3699_line_680 = keyNode;
		com.google.javascript.rhino.Node v_value_3700_line_680 = value;
		JSType typed_scope_creator_1_expr235_line_680 = getDeclaredType(v_info_3702_line_680, v_key_node_3699_line_680,
				v_value_3700_line_680);
		int PROBE_END_LINE_680 = 680;
		JSType valueType = typed_scope_creator_1_expr235_line_680;
        int PROBE_START_LINE_681 = 683;
		com.google.javascript.rhino.jstype.ObjectType p_obj_lit_type_3697_line_681 = objLitType;
		boolean typed_scope_creator_1_expr237_line_681 = p_obj_lit_type_3697_line_681.isEnumType();
		JSType typed_scope_creator_1_expr236_line_681 = typed_scope_creator_1_expr237_line_681
				? objLitType.toMaybeEnumType().getElementsType()
				: NodeUtil.getObjectLitKeyTypeFromValueType(keyNode, valueType);
		int PROBE_END_LINE_681 = 683;
		JSType keyType =  typed_scope_creator_1_expr236_line_681;

        int PROBE_START_LINE_687 = 687;
		com.google.javascript.rhino.Node v_key_node_3699_line_687 = keyNode;
		String typed_scope_creator_1_expr240_line_687 = NodeUtil.getBestLValueName(v_key_node_3699_line_687);
		int PROBE_END_LINE_687 = 687;
		// Try to declare this property in the current scope if it
        // has an authoritative name.
        String qualifiedName = typed_scope_creator_1_expr240_line_687;
        int PROBE_START_LINE_688 = 693;
		String v_qualified_name_3705_line_688 = qualifiedName;
		boolean typed_scope_creator_1_expr241_line_688 = v_qualified_name_3705_line_688 != null;
		int PROBE_END_LINE_688 = 693;
		if (typed_scope_creator_1_expr241_line_688) {
          int PROBE_START_LINE_689 = 689;
			com.google.javascript.rhino.jstype.JSType v_key_type_3704_line_689 = keyType;
			boolean typed_scope_creator_1_expr242_line_689 = v_key_type_3704_line_689 == null;
			int PROBE_END_LINE_689 = 689;
		boolean inferred = typed_scope_creator_1_expr242_line_689;
          int PROBE_START_LINE_690 = 690;
		com.google.javascript.rhino.Node v_key_node_3699_line_690 = keyNode;
		com.google.javascript.rhino.Node p_obj_lit_3696_line_690 = objLit;
		String v_qualified_name_3705_line_690 = qualifiedName;
		com.google.javascript.rhino.jstype.JSType v_key_type_3704_line_690 = keyType;
		boolean v_inferred_3706_line_690 = inferred;
		int PROBE_END_LINE_690 = 690;
		defineSlot(v_key_node_3699_line_690, p_obj_lit_3696_line_690, v_qualified_name_3705_line_690, v_key_type_3704_line_690, v_inferred_3706_line_690);
        } else {
			int PROBE_START_LINE_691 = 693;
			com.google.javascript.rhino.jstype.JSType v_key_type_3704_line_691 = keyType;
			boolean typed_scope_creator_1_expr244_line_691 = v_key_type_3704_line_691 != null;
			int PROBE_END_LINE_691 = 693;
			if (typed_scope_creator_1_expr244_line_691) {
				setDeferredType(keyNode, keyType);
			}
		}

        int PROBE_START_LINE_695 = 698;
		com.google.javascript.rhino.jstype.JSType v_key_type_3704_line_695 = keyType;
		boolean typed_scope_creator_1_expr247_line_695 = v_key_type_3704_line_695 != null;
		boolean typed_scope_creator_1_expr248_line_695 = true;
		if (typed_scope_creator_1_expr247_line_695) {
			com.google.javascript.rhino.jstype.ObjectType p_obj_lit_type_3697_line_695 = objLitType;
			typed_scope_creator_1_expr248_line_695 = p_obj_lit_type_3697_line_695 != null;
		}
		boolean typed_scope_creator_1_expr246_line_695 = typed_scope_creator_1_expr247_line_695
				&& typed_scope_creator_1_expr248_line_695;
		boolean p_declare_on_owner_3698_line_695 = true;
		if (typed_scope_creator_1_expr246_line_695) {
			p_declare_on_owner_3698_line_695 = declareOnOwner;
		}
		boolean typed_scope_creator_1_expr245_line_695 = typed_scope_creator_1_expr246_line_695
				&& p_declare_on_owner_3698_line_695;
		int PROBE_END_LINE_695 = 698;
		if (typed_scope_creator_1_expr245_line_695) {
          // Declare this property on its object literal.
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
    private JSType getDeclaredTypeInAnnotation(Node node, JSDocInfo info) {
      JSType jsType = null;
      int PROBE_START_LINE_710 = 743;
	com.google.javascript.rhino.JSDocInfo p_info_3708_line_710 = info;
	boolean typed_scope_creator_1_expr249_line_710 = p_info_3708_line_710 != null;
	int PROBE_END_LINE_710 = 743;
	if (typed_scope_creator_1_expr249_line_710) {
        int PROBE_START_LINE_711 = 742;
		com.google.javascript.rhino.JSDocInfo p_info_3708_line_711 = info;
		boolean typed_scope_creator_1_expr250_line_711 = p_info_3708_line_711.hasType();
		int PROBE_END_LINE_711 = 742;
		if (typed_scope_creator_1_expr250_line_711) {

          int PROBE_START_LINE_713 = 713;
			ImmutableList<TemplateType> typed_scope_creator_1_expr251_line_713 = ImmutableList.of();
			int PROBE_END_LINE_713 = 713;
		ImmutableList<TemplateType> ownerTypeKeys = typed_scope_creator_1_expr251_line_713;
          int PROBE_START_LINE_714 = 714;
		com.google.javascript.rhino.Node p_node_3707_line_714 = node;
		Node typed_scope_creator_1_expr252_line_714 = NodeUtil.getBestLValueOwner(p_node_3707_line_714);
		int PROBE_END_LINE_714 = 714;
		Node ownerNode = typed_scope_creator_1_expr252_line_714;
          int PROBE_START_LINE_715 = 715;
		com.google.javascript.rhino.Node v_owner_node_3711_line_715 = ownerNode;
		String typed_scope_creator_1_expr253_line_715 = NodeUtil.getBestLValueName(v_owner_node_3711_line_715);
		int PROBE_END_LINE_715 = 715;
		String ownerName = typed_scope_creator_1_expr253_line_715;
          ObjectType ownerType = null;
          int PROBE_START_LINE_717 = 727;
		String v_owner_name_3712_line_717 = ownerName;
		boolean typed_scope_creator_1_expr254_line_717 = v_owner_name_3712_line_717 != null;
		int PROBE_END_LINE_717 = 727;
		if (typed_scope_creator_1_expr254_line_717) {
            int PROBE_START_LINE_718 = 718;
			com.google.javascript.jscomp.Scope f_scope_3673_line_718 = scope;
			String v_owner_name_3712_line_718 = ownerName;
			Var typed_scope_creator_1_expr255_line_718 = f_scope_3673_line_718.getVar(v_owner_name_3712_line_718);
			int PROBE_END_LINE_718 = 718;
			Var ownerVar = typed_scope_creator_1_expr255_line_718;
            int PROBE_START_LINE_719 = 726;
			com.google.javascript.jscomp.Scope.Var v_owner_var_3714_line_719 = ownerVar;
			boolean typed_scope_creator_1_expr256_line_719 = v_owner_var_3714_line_719 != null;
			int PROBE_END_LINE_719 = 726;
			if (typed_scope_creator_1_expr256_line_719) {
              ownerType = getPrototypeOwnerType(
                  ObjectType.cast(ownerVar.getType()));
              if (ownerType != null) {
                ownerTypeKeys =
                    ownerType.getTemplateTypeMap().getTemplateKeys();
              }
            }
          }

          int PROBE_START_LINE_729 = 731;
		ImmutableList<com.google.javascript.rhino.jstype.TemplateType> v_owner_type_keys_3710_line_729 = ownerTypeKeys;
		boolean typed_scope_creator_1_expr258_line_729 = v_owner_type_keys_3710_line_729.isEmpty();
		boolean typed_scope_creator_1_expr257_line_729 = !typed_scope_creator_1_expr258_line_729;
		int PROBE_END_LINE_729 = 731;
		if (typed_scope_creator_1_expr257_line_729) {
            typeRegistry.setTemplateTypeNames(ownerTypeKeys);
          }

          int PROBE_START_LINE_733 = 733;
		com.google.javascript.rhino.JSDocInfo p_info_3708_line_733 = info;
		com.google.javascript.rhino.JSTypeExpression typed_scope_creator_1_expr261_line_733 = p_info_3708_line_733
				.getType();
		com.google.javascript.jscomp.Scope f_scope_3673_line_733 = scope;
		com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3615_line_733 = typeRegistry;
		com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr260_line_733 = typed_scope_creator_1_expr261_line_733
				.evaluate(f_scope_3673_line_733, f_type_registry_3615_line_733);
		int PROBE_END_LINE_733 = 733;
		jsType = typed_scope_creator_1_expr260_line_733;

          int PROBE_START_LINE_735 = 737;
		ImmutableList<com.google.javascript.rhino.jstype.TemplateType> v_owner_type_keys_3710_line_735 = ownerTypeKeys;
		boolean typed_scope_creator_1_expr263_line_735 = v_owner_type_keys_3710_line_735.isEmpty();
		boolean typed_scope_creator_1_expr262_line_735 = !typed_scope_creator_1_expr263_line_735;
		int PROBE_END_LINE_735 = 737;
		if (typed_scope_creator_1_expr262_line_735) {
            typeRegistry.clearTemplateTypeNames();
          }
        } else {
			int PROBE_START_LINE_738 = 742;
			com.google.javascript.rhino.JSDocInfo p_info_3708_line_738 = info;
			boolean typed_scope_creator_1_expr264_line_738 = FunctionTypeBuilder
					.isFunctionTypeDeclaration(p_info_3708_line_738);
			int PROBE_END_LINE_738 = 742;
			if (typed_scope_creator_1_expr264_line_738) {
				String fnName = node.getQualifiedName();
				jsType = createFunctionTypeFromNodes(null, fnName, info, node);
			}
		}
      }
      int PROBE_START_LINE_744 = 744;
	com.google.javascript.rhino.jstype.JSType v_js_type_3709_line_744 = jsType;
	int PROBE_END_LINE_744 = 744;
	return v_js_type_3709_line_744;
    }

    /**
     * Asserts that it's OK to define this node's name.
     * The node should have a source name and be of the specified type.
     */
    void assertDefinitionNode(Node n, int type) {
      int PROBE_START_LINE_752 = 752;
		String f_source_name_3671_line_752 = sourceName;
		boolean typed_scope_creator_1_expr266_line_752 = f_source_name_3671_line_752 != null;
		int PROBE_END_LINE_752 = 752;
	Preconditions.checkState(typed_scope_creator_1_expr266_line_752);
      int PROBE_START_LINE_753 = 753;
	com.google.javascript.rhino.Node p_n_3715_line_753 = n;
	int typed_scope_creator_1_expr269_line_753 = p_n_3715_line_753.getType();
	int p_type_3716_line_753 = type;
	boolean typed_scope_creator_1_expr268_line_753 = typed_scope_creator_1_expr269_line_753 == p_type_3716_line_753;
	int PROBE_END_LINE_753 = 753;
	Preconditions.checkState(typed_scope_creator_1_expr268_line_753);
    }

    /**
     * Defines a catch parameter.
     */
    void defineCatch(Node n) {
      assertDefinitionNode(n, Token.CATCH);
      Node catchName = n.getFirstChild();
      defineSlot(catchName, n,
          getDeclaredType(
              catchName.getJSDocInfo(), catchName, null));
    }

    /**
     * Defines a VAR initialization.
     */
    void defineVar(Node n) {
      int PROBE_START_LINE_771 = 771;
		com.google.javascript.rhino.Node p_n_3718_line_771 = n;
		int q_var_102_line_771 = Token.VAR;
		int PROBE_END_LINE_771 = 771;
	assertDefinitionNode(p_n_3718_line_771, q_var_102_line_771);
      int PROBE_START_LINE_772 = 772;
	com.google.javascript.rhino.Node p_n_3718_line_772 = n;
	JSDocInfo typed_scope_creator_1_expr271_line_772 = p_n_3718_line_772.getJSDocInfo();
	int PROBE_END_LINE_772 = 772;
	JSDocInfo info = typed_scope_creator_1_expr271_line_772;
      int PROBE_START_LINE_773 = 784;
	com.google.javascript.rhino.Node p_n_3718_line_773 = n;
	boolean typed_scope_creator_1_expr272_line_773 = p_n_3718_line_773.hasMoreThanOneChild();
	int PROBE_END_LINE_773 = 784;
	if (typed_scope_creator_1_expr272_line_773) {
        if (info != null) {
          // multiple children
          compiler.report(JSError.make(sourceName, n, MULTIPLE_VAR_DEF));
        }
        for (Node name : n.children()) {
          defineName(name, n, name.getJSDocInfo());
        }
      } else {
        int PROBE_START_LINE_782 = 782;
		com.google.javascript.rhino.Node p_n_3718_line_782 = n;
		Node typed_scope_creator_1_expr273_line_782 = p_n_3718_line_782.getFirstChild();
		int PROBE_END_LINE_782 = 782;
		Node name = typed_scope_creator_1_expr273_line_782;
        int PROBE_START_LINE_783 = 783;
		com.google.javascript.rhino.Node v_name_3720_line_783 = name;
		com.google.javascript.rhino.Node p_n_3718_line_783 = n;
		com.google.javascript.rhino.JSDocInfo v_info_3719_line_783 = info;
		boolean typed_scope_creator_1_expr278_line_783 = v_info_3719_line_783 != null;
		boolean typed_scope_creator_1_expr276_line_783 = (typed_scope_creator_1_expr278_line_783);
		com.google.javascript.rhino.JSDocInfo v_info_3719_line_783_v1 = null;
		com.google.javascript.rhino.JSDocInfo typed_scope_creator_1_expr277_line_783 = null;
		if (typed_scope_creator_1_expr276_line_783) {
			v_info_3719_line_783_v1 = info;
		} else {
			com.google.javascript.rhino.Node v_name_3720_line_783_v1 = name;
			typed_scope_creator_1_expr277_line_783 = v_name_3720_line_783_v1.getJSDocInfo();
		}
		com.google.javascript.rhino.JSDocInfo typed_scope_creator_1_expr275_line_783 = typed_scope_creator_1_expr276_line_783
				? v_info_3719_line_783_v1
				: typed_scope_creator_1_expr277_line_783;
		int PROBE_END_LINE_783 = 783;
		defineName(v_name_3720_line_783, p_n_3718_line_783, typed_scope_creator_1_expr275_line_783);
      }
    }

    /**
     * Defines a function literal.
     */
    void defineFunctionLiteral(Node n) {
      int PROBE_START_LINE_791 = 791;
		com.google.javascript.rhino.Node p_n_3721_line_791 = n;
		int q_function_102_line_791 = Token.FUNCTION;
		int PROBE_END_LINE_791 = 791;
	assertDefinitionNode(p_n_3721_line_791, q_function_102_line_791);

      int PROBE_START_LINE_795 = 795;
	com.google.javascript.rhino.Node p_n_3721_line_795 = n;
	Node typed_scope_creator_1_expr280_line_795 = NodeUtil.getBestLValue(p_n_3721_line_795);
	int PROBE_END_LINE_795 = 795;
	// Determine the name and JSDocInfo and l-value for the function.
      // Any of these may be null.
      Node lValue = typed_scope_creator_1_expr280_line_795;
      int PROBE_START_LINE_796 = 796;
	com.google.javascript.rhino.Node p_n_3721_line_796 = n;
	JSDocInfo typed_scope_creator_1_expr281_line_796 = NodeUtil.getBestJSDocInfo(p_n_3721_line_796);
	int PROBE_END_LINE_796 = 796;
	JSDocInfo info = typed_scope_creator_1_expr281_line_796;
      int PROBE_START_LINE_797 = 797;
	com.google.javascript.rhino.Node v_l_value_3722_line_797 = lValue;
	String typed_scope_creator_1_expr282_line_797 = NodeUtil.getBestLValueName(v_l_value_3722_line_797);
	int PROBE_END_LINE_797 = 797;
	String functionName = typed_scope_creator_1_expr282_line_797;
      FunctionType functionType =
          createFunctionTypeFromNodes(n, functionName, info, lValue);

      int PROBE_START_LINE_802 = 802;
	com.google.javascript.rhino.Node p_n_3721_line_802 = n;
	com.google.javascript.rhino.jstype.FunctionType v_function_type_3725_line_802 = functionType;
	int PROBE_END_LINE_802 = 802;
	// Assigning the function type to the function node
      setDeferredType(p_n_3721_line_802, v_function_type_3725_line_802);

      int PROBE_START_LINE_807 = 809;
	com.google.javascript.rhino.Node p_n_3721_line_807 = n;
	boolean typed_scope_creator_1_expr285_line_807 = NodeUtil.isFunctionDeclaration(p_n_3721_line_807);
	int PROBE_END_LINE_807 = 809;
	// Declare this symbol in the current scope iff it's a function
      // declaration. Otherwise, the declaration will happen in other
      // code paths.
      if (typed_scope_creator_1_expr285_line_807) {
        defineSlot(n.getFirstChild(), n, functionType);
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
      int PROBE_START_LINE_821 = 821;
		com.google.javascript.rhino.Node p_name_3726_line_821 = name;
		Node typed_scope_creator_1_expr286_line_821 = p_name_3726_line_821.getFirstChild();
		int PROBE_END_LINE_821 = 821;
	Node value = typed_scope_creator_1_expr286_line_821;

      int PROBE_START_LINE_824 = 824;
	com.google.javascript.rhino.JSDocInfo p_info_3728_line_824 = info;
	com.google.javascript.rhino.Node p_name_3726_line_824 = name;
	com.google.javascript.rhino.Node v_value_3729_line_824 = value;
	JSType typed_scope_creator_1_expr287_line_824 = getDeclaredType(p_info_3728_line_824, p_name_3726_line_824,
			v_value_3729_line_824);
	int PROBE_END_LINE_824 = 824;
	// variable's type
      JSType type = typed_scope_creator_1_expr287_line_824;
      int PROBE_START_LINE_825 = 828;
	com.google.javascript.rhino.jstype.JSType v_type_3730_line_825 = type;
	boolean typed_scope_creator_1_expr288_line_825 = v_type_3730_line_825 == null;
	int PROBE_END_LINE_825 = 828;
	if (typed_scope_creator_1_expr288_line_825) {
        // The variable's type will be inferred.
        type = name.isFromExterns() ? unknownType : null;
      }
      int PROBE_START_LINE_829 = 829;
	com.google.javascript.rhino.Node p_name_3726_line_829 = name;
	com.google.javascript.rhino.Node p_var_3727_line_829 = var;
	com.google.javascript.rhino.jstype.JSType v_type_3730_line_829 = type;
	int PROBE_END_LINE_829 = 829;
	defineSlot(p_name_3726_line_829, p_var_3727_line_829, v_type_3730_line_829);
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
      int PROBE_START_LINE_841 = 843;
			com.google.javascript.rhino.JSDocInfo p_info_3732_line_841 = info;
			boolean typed_scope_creator_1_expr290_line_841 = p_info_3732_line_841 != null;
			int PROBE_END_LINE_841 = 843;
	if (typed_scope_creator_1_expr290_line_841) {
        return true;
      }
      int PROBE_START_LINE_844 = 847;
	com.google.javascript.rhino.Node p_l_value_3733_line_844 = lValue;
	boolean typed_scope_creator_1_expr292_line_844 = p_l_value_3733_line_844 != null;
	boolean typed_scope_creator_1_expr291_line_844 = typed_scope_creator_1_expr292_line_844
			&& NodeUtil.isObjectLitKey(lValue);
	int PROBE_END_LINE_844 = 847;
	if (typed_scope_creator_1_expr291_line_844) {
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

      int PROBE_START_LINE_882 = 896;
	com.google.javascript.rhino.Node p_r_value_3734_line_882 = rValue;
	boolean typed_scope_creator_1_expr295_line_882 = p_r_value_3734_line_882 != null;
	boolean typed_scope_creator_1_expr296_line_882 = true;
	if (typed_scope_creator_1_expr295_line_882) {
		com.google.javascript.rhino.Node p_r_value_3734_line_882_v1 = rValue;
		typed_scope_creator_1_expr296_line_882 = p_r_value_3734_line_882_v1.isQualifiedName();
	}
	boolean typed_scope_creator_1_expr294_line_882 = typed_scope_creator_1_expr295_line_882
			&& typed_scope_creator_1_expr296_line_882;
	boolean typed_scope_creator_1_expr297_line_882 = true;
	if (typed_scope_creator_1_expr294_line_882) {
		com.google.javascript.jscomp.Scope f_scope_3673_line_882 = scope;
		typed_scope_creator_1_expr297_line_882 = f_scope_3673_line_882.isGlobal();
	}
	boolean typed_scope_creator_1_expr293_line_882 = typed_scope_creator_1_expr294_line_882
			&& typed_scope_creator_1_expr297_line_882;
	int PROBE_END_LINE_882 = 896;
	// Global ctor aliases should be registered with the type registry.
      if (typed_scope_creator_1_expr293_line_882) {
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

      int PROBE_START_LINE_898 = 985;
	com.google.javascript.rhino.jstype.FunctionType v_function_type_3738_line_898 = functionType;
	boolean typed_scope_creator_1_expr298_line_898 = v_function_type_3738_line_898 == null;
	int PROBE_END_LINE_898 = 985;
	if (typed_scope_creator_1_expr298_line_898) {
        int PROBE_START_LINE_899 = 899;
		com.google.javascript.rhino.Node p_r_value_3734_line_899 = rValue;
		boolean typed_scope_creator_1_expr300_line_899 = p_r_value_3734_line_899 == null;
		com.google.javascript.rhino.Node p_lvalue_node_3737_line_899 = null;
		com.google.javascript.rhino.Node p_r_value_3734_line_899_v1 = null;
		if (typed_scope_creator_1_expr300_line_899) {
			p_lvalue_node_3737_line_899 = lvalueNode;
		} else {
			p_r_value_3734_line_899_v1 = rValue;
		}
		Node typed_scope_creator_1_expr299_line_899 = typed_scope_creator_1_expr300_line_899
				? p_lvalue_node_3737_line_899
				: p_r_value_3734_line_899_v1;
		int PROBE_END_LINE_899 = 899;
		Node errorRoot = typed_scope_creator_1_expr299_line_899;
        boolean isFnLiteral =
            rValue != null && rValue.isFunction();
        int PROBE_START_LINE_902 = 902;
		boolean v_is_fn_literal_3740_line_902 = isFnLiteral;
		com.google.javascript.rhino.Node p_r_value_3734_line_902 = null;
		if (v_is_fn_literal_3740_line_902) {
			p_r_value_3734_line_902 = rValue;
		}
		Node typed_scope_creator_1_expr302_line_902 = v_is_fn_literal_3740_line_902 ? p_r_value_3734_line_902 : null;
		int PROBE_END_LINE_902 = 902;
		Node fnRoot = typed_scope_creator_1_expr302_line_902;
        int PROBE_START_LINE_903 = 904;
		boolean v_is_fn_literal_3740_line_903 = isFnLiteral;
		Node typed_scope_creator_1_expr303_line_903 = v_is_fn_literal_3740_line_903
				? rValue.getFirstChild().getNext()
				: null;
		int PROBE_END_LINE_903 = 904;
		Node parametersNode = typed_scope_creator_1_expr303_line_903;

        int PROBE_START_LINE_906 = 915;
		com.google.javascript.rhino.JSDocInfo p_info_3736_line_906 = info;
		boolean typed_scope_creator_1_expr306_line_906 = p_info_3736_line_906 != null;
		boolean typed_scope_creator_1_expr307_line_906 = true;
		if (typed_scope_creator_1_expr306_line_906) {
			com.google.javascript.rhino.JSDocInfo p_info_3736_line_906_v1 = info;
			typed_scope_creator_1_expr307_line_906 = p_info_3736_line_906_v1.hasType();
		}
		boolean typed_scope_creator_1_expr305_line_906 = typed_scope_creator_1_expr306_line_906
				&& typed_scope_creator_1_expr307_line_906;
		int PROBE_END_LINE_906 = 915;
		if (typed_scope_creator_1_expr305_line_906) {
          JSType type = info.getType().evaluate(scope, typeRegistry);

          // Known to be not null since we have the FUNCTION token there.
          type = type.restrictByNotNullOrUndefined();
          if (type.isFunctionType()) {
            functionType = type.toMaybeFunctionType();
            functionType.setJSDocInfo(info);
          }
        }

        int PROBE_START_LINE_917 = 984;
		com.google.javascript.rhino.jstype.FunctionType v_function_type_3738_line_917 = functionType;
		boolean typed_scope_creator_1_expr308_line_917 = v_function_type_3738_line_917 == null;
		int PROBE_END_LINE_917 = 984;
		if (typed_scope_creator_1_expr308_line_917) {
          int PROBE_START_LINE_919 = 919;
			com.google.javascript.rhino.Node p_lvalue_node_3737_line_919 = lvalueNode;
			Node typed_scope_creator_1_expr309_line_919 = NodeUtil.getBestLValueOwner(p_lvalue_node_3737_line_919);
			int PROBE_END_LINE_919 = 919;
		// Find the type of any overridden function.
          Node ownerNode = typed_scope_creator_1_expr309_line_919;
          int PROBE_START_LINE_920 = 920;
		com.google.javascript.rhino.Node v_owner_node_3743_line_920 = ownerNode;
		String typed_scope_creator_1_expr310_line_920 = NodeUtil.getBestLValueName(v_owner_node_3743_line_920);
		int PROBE_END_LINE_920 = 920;
		String ownerName = typed_scope_creator_1_expr310_line_920;
          Var ownerVar = null;
          String propName = null;
          ObjectType ownerType = null;
          int PROBE_START_LINE_924 = 932;
		String v_owner_name_3744_line_924 = ownerName;
		boolean typed_scope_creator_1_expr311_line_924 = v_owner_name_3744_line_924 != null;
		int PROBE_END_LINE_924 = 932;
		if (typed_scope_creator_1_expr311_line_924) {
            int PROBE_START_LINE_925 = 925;
			com.google.javascript.jscomp.Scope f_scope_3673_line_925 = scope;
			String v_owner_name_3744_line_925 = ownerName;
			com.google.javascript.jscomp.Scope.Var typed_scope_creator_1_expr313_line_925 = f_scope_3673_line_925
					.getVar(v_owner_name_3744_line_925);
			int PROBE_END_LINE_925 = 925;
			ownerVar = typed_scope_creator_1_expr313_line_925;
            int PROBE_START_LINE_926 = 928;
			com.google.javascript.jscomp.Scope.Var v_owner_var_3745_line_926 = ownerVar;
			boolean typed_scope_creator_1_expr314_line_926 = v_owner_var_3745_line_926 != null;
			int PROBE_END_LINE_926 = 928;
			if (typed_scope_creator_1_expr314_line_926) {
              int PROBE_START_LINE_927 = 927;
				com.google.javascript.jscomp.Scope.Var v_owner_var_3745_line_927 = ownerVar;
				com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr317_line_927 = v_owner_var_3745_line_927
						.getType();
				com.google.javascript.rhino.jstype.ObjectType typed_scope_creator_1_expr316_line_927 = ObjectType
						.cast(typed_scope_creator_1_expr317_line_927);
				int PROBE_END_LINE_927 = 927;
			ownerType = typed_scope_creator_1_expr316_line_927;
            }
            int PROBE_START_LINE_929 = 931;
			String p_name_3735_line_929 = name;
			boolean typed_scope_creator_1_expr318_line_929 = p_name_3735_line_929 != null;
			int PROBE_END_LINE_929 = 931;
			if (typed_scope_creator_1_expr318_line_929) {
              int PROBE_START_LINE_930 = 930;
				String p_name_3735_line_930 = name;
				String v_owner_name_3744_line_930 = ownerName;
				int typed_scope_creator_1_expr322_line_930 = v_owner_name_3744_line_930.length();
				int typed_scope_creator_1_expr321_line_930 = typed_scope_creator_1_expr322_line_930 + 1;
				String typed_scope_creator_1_expr320_line_930 = p_name_3735_line_930
						.substring(typed_scope_creator_1_expr321_line_930);
				int PROBE_END_LINE_930 = 930;
			propName = typed_scope_creator_1_expr320_line_930;
            }
          }

          int PROBE_START_LINE_934 = 934;
		com.google.javascript.rhino.jstype.ObjectType v_owner_type_3747_line_934 = ownerType;
		ObjectType typed_scope_creator_1_expr323_line_934 = getPrototypeOwnerType(v_owner_type_3747_line_934);
		int PROBE_END_LINE_934 = 934;
		ObjectType prototypeOwner = typed_scope_creator_1_expr323_line_934;
          TemplateTypeMap prototypeOwnerTypeMap = null;
          int PROBE_START_LINE_936 = 940;
		com.google.javascript.rhino.jstype.ObjectType v_prototype_owner_3748_line_936 = prototypeOwner;
		boolean typed_scope_creator_1_expr325_line_936 = v_prototype_owner_3748_line_936 != null;
		boolean typed_scope_creator_1_expr324_line_936 = typed_scope_creator_1_expr325_line_936
				&& prototypeOwner.getTypeOfThis() != null;
		int PROBE_END_LINE_936 = 940;
		if (typed_scope_creator_1_expr324_line_936) {
              prototypeOwnerTypeMap =
                  prototypeOwner.getTypeOfThis().getTemplateTypeMap();
          }

          FunctionType overriddenType = null;
          int PROBE_START_LINE_943 = 946;
		com.google.javascript.rhino.jstype.ObjectType v_owner_type_3747_line_943 = ownerType;
		boolean typed_scope_creator_1_expr329_line_943 = v_owner_type_3747_line_943 != null;
		boolean typed_scope_creator_1_expr330_line_943 = true;
		if (typed_scope_creator_1_expr329_line_943) {
			String v_prop_name_3746_line_943 = propName;
			typed_scope_creator_1_expr330_line_943 = v_prop_name_3746_line_943 != null;
		}
		boolean typed_scope_creator_1_expr328_line_943 = typed_scope_creator_1_expr329_line_943
				&& typed_scope_creator_1_expr330_line_943;
		int PROBE_END_LINE_943 = 946;
		if (typed_scope_creator_1_expr328_line_943) {
            int PROBE_START_LINE_944 = 945;
			com.google.javascript.rhino.jstype.FunctionType typed_scope_creator_1_expr332_line_944 = findOverriddenFunction(
					ownerType, propName, prototypeOwnerTypeMap);
			int PROBE_END_LINE_944 = 945;
			overriddenType = typed_scope_creator_1_expr332_line_944;
          }

          FunctionTypeBuilder builder =
              new FunctionTypeBuilder(name, compiler, errorRoot, sourceName,
                  scope)
              .setContents(getFunctionAnalysisResults(fnRoot))
              .inferFromOverriddenFunction(overriddenType, parametersNode)
              .inferTemplateTypeName(info, prototypeOwner)
              .inferReturnType(info)
              .inferInheritance(info);

          // Infer the context type.
          boolean searchedForThisType = false;
          int PROBE_START_LINE_959 = 975;
		com.google.javascript.rhino.jstype.ObjectType v_owner_type_3747_line_959 = ownerType;
		boolean typed_scope_creator_1_expr336_line_959 = v_owner_type_3747_line_959 != null;
		boolean typed_scope_creator_1_expr337_line_959 = true;
		if (typed_scope_creator_1_expr336_line_959) {
			com.google.javascript.rhino.jstype.ObjectType v_owner_type_3747_line_959_v1 = ownerType;
			typed_scope_creator_1_expr337_line_959 = v_owner_type_3747_line_959_v1.isFunctionPrototypeType();
		}
		boolean typed_scope_creator_1_expr335_line_959 = typed_scope_creator_1_expr336_line_959
				&& typed_scope_creator_1_expr337_line_959;
		boolean typed_scope_creator_1_expr334_line_959 = typed_scope_creator_1_expr335_line_959
				&& ownerType.getOwnerFunction().hasInstanceType();
		int PROBE_END_LINE_959 = 975;
		if (typed_scope_creator_1_expr334_line_959) {
            int PROBE_START_LINE_961 = 962;
				com.google.javascript.jscomp.FunctionTypeBuilder v_builder_3751_line_961 = builder;
				int PROBE_END_LINE_961 = 962;
			v_builder_3751_line_961.inferThisType(
                info, ownerType.getOwnerFunction().getInstanceType());
            searchedForThisType = true;
          } else {
			int PROBE_START_LINE_964 = 975;
			com.google.javascript.rhino.Node v_owner_node_3743_line_964 = ownerNode;
			boolean typed_scope_creator_1_expr342_line_964 = v_owner_node_3743_line_964 != null;
			boolean typed_scope_creator_1_expr343_line_964 = true;
			if (typed_scope_creator_1_expr342_line_964) {
				com.google.javascript.rhino.Node v_owner_node_3743_line_964_v1 = ownerNode;
				typed_scope_creator_1_expr343_line_964 = v_owner_node_3743_line_964_v1.isThis();
			}
			boolean typed_scope_creator_1_expr341_line_964 = typed_scope_creator_1_expr342_line_964
					&& typed_scope_creator_1_expr343_line_964;
			int PROBE_END_LINE_964 = 975;
			if (typed_scope_creator_1_expr341_line_964) {
				JSType injectedThisType = ownerNode.getJSType();
				builder.inferThisType(info, injectedThisType == null ? scope.getTypeOfThis() : injectedThisType);
				searchedForThisType = true;
			}
		}

          int PROBE_START_LINE_977 = 979;
		boolean v_searched_for_this_type_3752_line_977 = searchedForThisType;
		boolean typed_scope_creator_1_expr344_line_977 = !v_searched_for_this_type_3752_line_977;
		int PROBE_END_LINE_977 = 979;
		if (typed_scope_creator_1_expr344_line_977) {
            int PROBE_START_LINE_978 = 978;
			com.google.javascript.jscomp.FunctionTypeBuilder v_builder_3751_line_978 = builder;
			com.google.javascript.rhino.JSDocInfo p_info_3736_line_978 = info;
			int PROBE_END_LINE_978 = 978;
			v_builder_3751_line_978.inferThisType(p_info_3736_line_978);
          }

          int PROBE_START_LINE_981 = 983;
		com.google.javascript.jscomp.FunctionTypeBuilder v_builder_3751_line_981 = builder;
		com.google.javascript.jscomp.FunctionTypeBuilder typed_scope_creator_1_expr348_line_981 = v_builder_3751_line_981
				.inferParameterTypes(parametersNode, info);
		com.google.javascript.rhino.jstype.FunctionType typed_scope_creator_1_expr347_line_981 = typed_scope_creator_1_expr348_line_981
				.buildAndRegister();
		int PROBE_END_LINE_981 = 983;
		functionType = typed_scope_creator_1_expr347_line_981;
        }
      }

      int PROBE_START_LINE_988 = 988;
	com.google.javascript.rhino.jstype.FunctionType v_function_type_3738_line_988 = functionType;
	int PROBE_END_LINE_988 = 988;
	// all done
      return v_function_type_3738_line_988;
    }

    private ObjectType getPrototypeOwnerType(ObjectType ownerType) {
      int PROBE_START_LINE_992 = 994;
		com.google.javascript.rhino.jstype.ObjectType p_owner_type_3753_line_992 = ownerType;
		boolean typed_scope_creator_1_expr350_line_992 = p_owner_type_3753_line_992 != null;
		boolean typed_scope_creator_1_expr351_line_992 = true;
		if (typed_scope_creator_1_expr350_line_992) {
			com.google.javascript.rhino.jstype.ObjectType p_owner_type_3753_line_992_v1 = ownerType;
			typed_scope_creator_1_expr351_line_992 = p_owner_type_3753_line_992_v1.isFunctionPrototypeType();
		}
		boolean typed_scope_creator_1_expr349_line_992 = typed_scope_creator_1_expr350_line_992
				&& typed_scope_creator_1_expr351_line_992;
		int PROBE_END_LINE_992 = 994;
	if (typed_scope_creator_1_expr349_line_992) {
        int PROBE_START_LINE_993 = 993;
		com.google.javascript.rhino.jstype.ObjectType p_owner_type_3753_line_993 = ownerType;
		com.google.javascript.rhino.jstype.FunctionType typed_scope_creator_1_expr352_line_993 = p_owner_type_3753_line_993
				.getOwnerFunction();
		int PROBE_END_LINE_993 = 993;
		return typed_scope_creator_1_expr352_line_993;
      }
      return null;
    }

    /**
     * Find the function that's being overridden on this type, if any.
     */
    private FunctionType findOverriddenFunction(
        ObjectType ownerType, String propName, TemplateTypeMap typeMap) {
      FunctionType result = null;

      int PROBE_START_LINE_1007 = 1007;
	com.google.javascript.rhino.jstype.ObjectType p_owner_type_3754_line_1007 = ownerType;
	String p_prop_name_3755_line_1007 = propName;
	JSType typed_scope_creator_1_expr353_line_1007 = p_owner_type_3754_line_1007
			.getPropertyType(p_prop_name_3755_line_1007);
	int PROBE_END_LINE_1007 = 1007;
	// First, check to see if the property is implemented
      // on a superclass.
      JSType propType = typed_scope_creator_1_expr353_line_1007;
      int PROBE_START_LINE_1008 = 1021;
	com.google.javascript.rhino.jstype.JSType v_prop_type_3758_line_1008 = propType;
	boolean typed_scope_creator_1_expr355_line_1008 = v_prop_type_3758_line_1008 != null;
	boolean typed_scope_creator_1_expr356_line_1008 = true;
	if (typed_scope_creator_1_expr355_line_1008) {
		com.google.javascript.rhino.jstype.JSType v_prop_type_3758_line_1008_v1 = propType;
		typed_scope_creator_1_expr356_line_1008 = v_prop_type_3758_line_1008_v1.isFunctionType();
	}
	boolean typed_scope_creator_1_expr354_line_1008 = typed_scope_creator_1_expr355_line_1008
			&& typed_scope_creator_1_expr356_line_1008;
	int PROBE_END_LINE_1008 = 1021;
	if (typed_scope_creator_1_expr354_line_1008) {
        result =  propType.toMaybeFunctionType();
      } else {
        int PROBE_START_LINE_1013 = 1020;
		com.google.javascript.rhino.jstype.ObjectType p_owner_type_3754_line_1014 = ownerType;
		Iterable<com.google.javascript.rhino.jstype.ObjectType> typed_scope_creator_1_expr357_line_1014 = p_owner_type_3754_line_1014
				.getCtorImplementedInterfaces();
		int PROBE_END_LINE_1013 = 1020;
		// If it's not, then check to see if it's implemented
        // on an implemented interface.
        for (ObjectType iface :
                 typed_scope_creator_1_expr357_line_1014) {
          propType = iface.getPropertyType(propName);
          if (propType != null && propType.isFunctionType()) {
            result = propType.toMaybeFunctionType();
            break;
          }
        }
      }

      int PROBE_START_LINE_1023 = 1027;
	com.google.javascript.rhino.jstype.FunctionType v_result_3757_line_1023 = result;
	boolean typed_scope_creator_1_expr360_line_1023 = v_result_3757_line_1023 != null;
	boolean typed_scope_creator_1_expr361_line_1023 = true;
	if (typed_scope_creator_1_expr360_line_1023) {
		com.google.javascript.rhino.jstype.TemplateTypeMap p_type_map_3756_line_1023 = typeMap;
		typed_scope_creator_1_expr361_line_1023 = p_type_map_3756_line_1023 != null;
	}
	boolean typed_scope_creator_1_expr359_line_1023 = typed_scope_creator_1_expr360_line_1023
			&& typed_scope_creator_1_expr361_line_1023;
	boolean typed_scope_creator_1_expr362_line_1023 = true;
	if (typed_scope_creator_1_expr359_line_1023) {
		com.google.javascript.rhino.jstype.TemplateTypeMap p_type_map_3756_line_1023_v1 = typeMap;
		boolean typed_scope_creator_1_expr363_line_1023 = p_type_map_3756_line_1023_v1.isEmpty();
		typed_scope_creator_1_expr362_line_1023 = !typed_scope_creator_1_expr363_line_1023;
	}
	boolean typed_scope_creator_1_expr358_line_1023 = typed_scope_creator_1_expr359_line_1023
			&& typed_scope_creator_1_expr362_line_1023;
	int PROBE_END_LINE_1023 = 1027;
	if (typed_scope_creator_1_expr358_line_1023) {
        result = result.visit(
            new TemplateTypeMapReplacer(typeRegistry, typeMap))
            .toMaybeFunctionType();
      }

      int PROBE_START_LINE_1029 = 1029;
	com.google.javascript.rhino.jstype.FunctionType v_result_3757_line_1029 = result;
	int PROBE_END_LINE_1029 = 1029;
	return v_result_3757_line_1029;
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
      int PROBE_START_LINE_1104 = 1104;
		com.google.javascript.rhino.Node p_name_3763_line_1104 = name;
		com.google.javascript.rhino.Node p_parent_3764_line_1104 = parent;
		com.google.javascript.rhino.jstype.JSType p_type_3765_line_1104 = type;
		com.google.javascript.rhino.jstype.JSType p_type_3765_line_1104_v1 = type;
		boolean typed_scope_creator_1_expr365_line_1104 = p_type_3765_line_1104_v1 == null;
		int PROBE_END_LINE_1104 = 1104;
	defineSlot(p_name_3763_line_1104, p_parent_3764_line_1104, p_type_3765_line_1104, typed_scope_creator_1_expr365_line_1104);
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
      int PROBE_START_LINE_1120 = 1120;
		boolean p_inferred_3769_line_1120 = inferred;
		boolean typed_scope_creator_1_expr368_line_1120 = false;
		if (!p_inferred_3769_line_1120) {
			com.google.javascript.rhino.jstype.JSType p_type_3768_line_1120 = type;
			typed_scope_creator_1_expr368_line_1120 = p_type_3768_line_1120 != null;
		}
		boolean typed_scope_creator_1_expr367_line_1120 = p_inferred_3769_line_1120
				|| typed_scope_creator_1_expr368_line_1120;
		int PROBE_END_LINE_1120 = 1120;
	Preconditions.checkArgument(typed_scope_creator_1_expr367_line_1120);

      int PROBE_START_LINE_1124 = 1135;
	com.google.javascript.rhino.Node p_n_3766_line_1124 = n;
	boolean typed_scope_creator_1_expr369_line_1124 = p_n_3766_line_1124.isName();
	int PROBE_END_LINE_1124 = 1135;
	// Only allow declarations of NAMEs and qualified names.
      // Object literal keys will have to compute their names themselves.
      if (typed_scope_creator_1_expr369_line_1124) {
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
      int PROBE_START_LINE_1136 = 1136;
	com.google.javascript.rhino.Node p_n_3766_line_1136 = n;
	com.google.javascript.rhino.Node p_parent_3767_line_1136 = parent;
	com.google.javascript.rhino.Node p_n_3766_line_1136_v1 = n;
	String typed_scope_creator_1_expr375_line_1136 = p_n_3766_line_1136_v1.getQualifiedName();
	com.google.javascript.rhino.jstype.JSType p_type_3768_line_1136 = type;
	boolean p_inferred_3769_line_1136 = inferred;
	int PROBE_END_LINE_1136 = 1136;
	defineSlot(p_n_3766_line_1136, p_parent_3767_line_1136, typed_scope_creator_1_expr375_line_1136, p_type_3768_line_1136, p_inferred_3769_line_1136);
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
      int PROBE_START_LINE_1152 = 1152;
			String p_variable_name_3772_line_1152 = variableName;
			boolean typed_scope_creator_1_expr378_line_1152 = p_variable_name_3772_line_1152.isEmpty();
			boolean typed_scope_creator_1_expr377_line_1152 = !typed_scope_creator_1_expr378_line_1152;
			int PROBE_END_LINE_1152 = 1152;
	Preconditions.checkArgument(typed_scope_creator_1_expr377_line_1152);

      int PROBE_START_LINE_1154 = 1154;
	com.google.javascript.rhino.Node p_n_3770_line_1154 = n;
	boolean typed_scope_creator_1_expr380_line_1154 = p_n_3770_line_1154.isName();
	boolean typed_scope_creator_1_expr381_line_1154 = true;
	if (typed_scope_creator_1_expr380_line_1154) {
		com.google.javascript.jscomp.Scope f_scope_3673_line_1154 = scope;
		typed_scope_creator_1_expr381_line_1154 = f_scope_3673_line_1154.isGlobal();
	}
	boolean typed_scope_creator_1_expr379_line_1154 = typed_scope_creator_1_expr380_line_1154
			&& typed_scope_creator_1_expr381_line_1154;
	int PROBE_END_LINE_1154 = 1154;
	boolean isGlobalVar = typed_scope_creator_1_expr379_line_1154;
      boolean shouldDeclareOnGlobalThis =
          isGlobalVar &&
          (parent.isVar() ||
           parent.isFunction());

      int PROBE_START_LINE_1163 = 1163;
	Scope f_scope_3673_line_1163 = scope;
	int PROBE_END_LINE_1163 = 1163;
	// If n is a property, then we should really declare it in the
      // scope where the root object appears. This helps out people
      // who declare "global" names in an anonymous namespace.
      Scope scopeToDeclareIn = f_scope_3673_line_1163;
      int PROBE_START_LINE_1164 = 1173;
	com.google.javascript.rhino.Node p_n_3770_line_1164 = n;
	boolean typed_scope_creator_1_expr384_line_1164 = p_n_3770_line_1164.isGetProp();
	boolean typed_scope_creator_1_expr385_line_1164 = true;
	if (typed_scope_creator_1_expr384_line_1164) {
		com.google.javascript.jscomp.Scope f_scope_3673_line_1164 = scope;
		boolean typed_scope_creator_1_expr386_line_1164 = f_scope_3673_line_1164.isGlobal();
		typed_scope_creator_1_expr385_line_1164 = !typed_scope_creator_1_expr386_line_1164;
	}
	boolean typed_scope_creator_1_expr383_line_1164 = typed_scope_creator_1_expr384_line_1164
			&& typed_scope_creator_1_expr385_line_1164 && isQnameRootedInGlobalScope(n);
	int PROBE_END_LINE_1164 = 1173;
	if (typed_scope_creator_1_expr383_line_1164) {
        Scope globalScope = scope.getGlobalScope();

        // don't try to declare in the global scope if there's
        // already a symbol there with this name.
        if (!globalScope.isDeclared(variableName, false)) {
          scopeToDeclareIn = scope.getGlobalScope();
        }
      }

      // The input may be null if we are working with a AST snippet. So read
      // the extern info from the node.
      Var newVar = null;

      int PROBE_START_LINE_1180 = 1180;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_3612_line_1180 = compiler;
	com.google.javascript.rhino.InputId f_input_id_3681_line_1180 = inputId;
	CompilerInput typed_scope_creator_1_expr387_line_1180 = f_compiler_3612_line_1180
			.getInput(f_input_id_3681_line_1180);
	int PROBE_END_LINE_1180 = 1180;
	// declared in closest scope?
      CompilerInput input = typed_scope_creator_1_expr387_line_1180;
      int PROBE_START_LINE_1181 = 1202;
	com.google.javascript.jscomp.Scope v_scope_to_declare_in_3777_line_1181 = scopeToDeclareIn;
	String p_variable_name_3772_line_1181 = variableName;
	boolean typed_scope_creator_1_expr388_line_1181 = v_scope_to_declare_in_3777_line_1181
			.isDeclared(p_variable_name_3772_line_1181, false);
	int PROBE_END_LINE_1181 = 1202;
	if (typed_scope_creator_1_expr388_line_1181) {
        Var oldVar = scopeToDeclareIn.getVar(variableName);
        newVar = validator.expectUndeclaredVariable(
            sourceName, input, n, parent, oldVar, variableName, type);
      } else {
        int PROBE_START_LINE_1186 = 1188;
		com.google.javascript.rhino.jstype.JSType p_type_3773_line_1186 = type;
		boolean typed_scope_creator_1_expr389_line_1186 = p_type_3773_line_1186 != null;
		int PROBE_END_LINE_1186 = 1188;
		if (typed_scope_creator_1_expr389_line_1186) {
          int PROBE_START_LINE_1187 = 1187;
			com.google.javascript.rhino.Node p_n_3770_line_1187 = n;
			com.google.javascript.rhino.jstype.JSType p_type_3773_line_1187 = type;
			int PROBE_END_LINE_1187 = 1187;
		setDeferredType(p_n_3770_line_1187, p_type_3773_line_1187);
        }

        newVar =
          scopeToDeclareIn.declare(variableName, n, type, input, inferred);

        int PROBE_START_LINE_1193 = 1201;
		com.google.javascript.rhino.jstype.JSType p_type_3773_line_1193 = type;
		boolean typed_scope_creator_1_expr393_line_1193 = p_type_3773_line_1193 instanceof EnumType;
		int PROBE_END_LINE_1193 = 1201;
		if (typed_scope_creator_1_expr393_line_1193) {
          Node initialValue = newVar.getInitialValue();
          boolean isValidValue = initialValue != null &&
              (initialValue.isObjectLit() ||
               initialValue.isQualifiedName());
          if (!isValidValue) {
            compiler.report(JSError.make(sourceName, n, ENUM_INITIALIZER));
          }
        }
      }

      int PROBE_START_LINE_1205 = 1205;
	com.google.javascript.rhino.jstype.JSType p_type_3773_line_1205 = type;
	FunctionType typed_scope_creator_1_expr394_line_1205 = JSType.toMaybeFunctionType(p_type_3773_line_1205);
	int PROBE_END_LINE_1205 = 1205;
	// We need to do some additional work for constructors and interfaces.
      FunctionType fnType = typed_scope_creator_1_expr394_line_1205;
      int PROBE_START_LINE_1206 = 1220;
	com.google.javascript.rhino.jstype.FunctionType v_fn_type_3780_line_1206 = fnType;
	boolean typed_scope_creator_1_expr396_line_1206 = v_fn_type_3780_line_1206 != null;
	boolean typed_scope_creator_1_expr395_line_1206 = typed_scope_creator_1_expr396_line_1206 && !type.isEmptyType();
	int PROBE_END_LINE_1206 = 1220;
	if (typed_scope_creator_1_expr395_line_1206) {

        int PROBE_START_LINE_1215 = 1219;
			com.google.javascript.rhino.jstype.FunctionType v_fn_type_3780_line_1215 = fnType;
			boolean typed_scope_creator_1_expr400_line_1215 = v_fn_type_3780_line_1215.isConstructor();
			boolean typed_scope_creator_1_expr401_line_1215 = false;
			if (!typed_scope_creator_1_expr400_line_1215) {
				com.google.javascript.rhino.jstype.FunctionType v_fn_type_3780_line_1215_v1 = fnType;
				typed_scope_creator_1_expr401_line_1215 = v_fn_type_3780_line_1215_v1.isInterface();
			}
			boolean typed_scope_creator_1_expr399_line_1215 = typed_scope_creator_1_expr400_line_1215
					|| typed_scope_creator_1_expr401_line_1215;
			boolean typed_scope_creator_1_expr398_line_1215 = (typed_scope_creator_1_expr399_line_1215);
			boolean typed_scope_creator_1_expr397_line_1215 = typed_scope_creator_1_expr398_line_1215
					&& variableName.equals(fnType.getReferenceName());
			int PROBE_END_LINE_1215 = 1219;
		// We want to make sure that when we declare a new instance type
        // (with @constructor) that there's actually a ctor for it.
        // This doesn't apply to structural constructors (like
        // function(new:Array). Checking the constructed type against
        // the variable name is a sufficient check for this.
        if (typed_scope_creator_1_expr397_line_1215) {
          int PROBE_START_LINE_1217 = 1218;
				com.google.javascript.rhino.Node p_n_3770_line_1217 = n;
				String p_variable_name_3772_line_1217 = variableName;
				com.google.javascript.rhino.jstype.FunctionType v_fn_type_3780_line_1217 = fnType;
				com.google.javascript.jscomp.Scope v_scope_to_declare_in_3777_line_1217 = scopeToDeclareIn;
				int PROBE_END_LINE_1217 = 1218;
		finishConstructorDefinition(p_n_3770_line_1217, p_variable_name_3772_line_1217, v_fn_type_3780_line_1217, v_scope_to_declare_in_3777_line_1217,
                                      input, newVar);
        }
      }

      int PROBE_START_LINE_1222 = 1234;
	boolean v_should_declare_on_global_this_3776_line_1222 = shouldDeclareOnGlobalThis;
	int PROBE_END_LINE_1222 = 1234;
	if (v_should_declare_on_global_this_3776_line_1222) {
        ObjectType globalThis =
            typeRegistry.getNativeObjectType(GLOBAL_THIS);
        int PROBE_START_LINE_1225 = 1233;
		boolean p_inferred_3774_line_1225 = inferred;
		int PROBE_END_LINE_1225 = 1233;
		if (p_inferred_3774_line_1225) {
          globalThis.defineInferredProperty(variableName,
              type == null ?
              getNativeType(JSTypeNative.NO_TYPE) :
              type,
              n);
        } else {
          int PROBE_START_LINE_1232 = 1232;
			com.google.javascript.rhino.jstype.ObjectType v_global_this_3781_line_1232 = globalThis;
			String p_variable_name_3772_line_1232 = variableName;
			com.google.javascript.rhino.jstype.JSType p_type_3773_line_1232 = type;
			com.google.javascript.rhino.Node p_n_3770_line_1232 = n;
			int PROBE_END_LINE_1232 = 1232;
		v_global_this_3781_line_1232.defineDeclaredProperty(p_variable_name_3772_line_1232, p_type_3773_line_1232, p_n_3770_line_1232);
        }
      }

      int PROBE_START_LINE_1236 = 1246;
	boolean v_is_global_var_3775_line_1236 = isGlobalVar;
	boolean typed_scope_creator_1_expr408_line_1236 = true;
	if (v_is_global_var_3775_line_1236) {
		String p_variable_name_3772_line_1236 = variableName;
		typed_scope_creator_1_expr408_line_1236 = "Window".equals(p_variable_name_3772_line_1236);
	}
	boolean typed_scope_creator_1_expr407_line_1236 = v_is_global_var_3775_line_1236
			&& typed_scope_creator_1_expr408_line_1236 && type != null;
	boolean typed_scope_creator_1_expr406_line_1236 = typed_scope_creator_1_expr407_line_1236 && type.isFunctionType();
	boolean typed_scope_creator_1_expr405_line_1236 = typed_scope_creator_1_expr406_line_1236 && type.isConstructor();
	int PROBE_END_LINE_1236 = 1246;
	if (typed_scope_creator_1_expr405_line_1236) {
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
      int PROBE_START_LINE_1253 = 1253;
			com.google.javascript.rhino.jstype.FunctionType p_fn_type_3784_line_1253 = fnType;
			FunctionType typed_scope_creator_1_expr409_line_1253 = p_fn_type_3784_line_1253.getSuperClassConstructor();
			int PROBE_END_LINE_1253 = 1253;
	// Declare var.prototype in the scope chain.
      FunctionType superClassCtor = typed_scope_creator_1_expr409_line_1253;
      int PROBE_START_LINE_1254 = 1254;
	com.google.javascript.rhino.jstype.FunctionType p_fn_type_3784_line_1254 = fnType;
	Property typed_scope_creator_1_expr410_line_1254 = p_fn_type_3784_line_1254.getSlot("prototype");
	int PROBE_END_LINE_1254 = 1254;
	Property prototypeSlot = typed_scope_creator_1_expr410_line_1254;

      int PROBE_START_LINE_1264 = 1264;
	com.google.javascript.rhino.jstype.Property v_prototype_slot_3789_line_1264 = prototypeSlot;
	com.google.javascript.rhino.Node p_n_3782_line_1264 = n;
	int PROBE_END_LINE_1264 = 1264;
	// When we declare the function prototype implicitly, we
      // want to make sure that the function and its prototype
      // are declared at the same node. We also want to make sure
      // that the if a symbol has both a Var and a JSType, they have
      // the same node.
      //
      // This consistency is helpful to users of SymbolTable,
      // because everything gets declared at the same place.
      v_prototype_slot_3789_line_1264.setNode(p_n_3782_line_1264);

      int PROBE_START_LINE_1266 = 1266;
	String p_variable_name_3783_line_1266 = variableName;
	String typed_scope_creator_1_expr412_line_1266 = p_variable_name_3783_line_1266 + ".prototype";
	int PROBE_END_LINE_1266 = 1266;
	String prototypeName = typed_scope_creator_1_expr412_line_1266;

      int PROBE_START_LINE_1271 = 1271;
	com.google.javascript.jscomp.Scope p_scope_to_declare_in_3785_line_1271 = scopeToDeclareIn;
	String v_prototype_name_3790_line_1271 = prototypeName;
	Var typed_scope_creator_1_expr413_line_1271 = p_scope_to_declare_in_3785_line_1271
			.getVar(v_prototype_name_3790_line_1271);
	int PROBE_END_LINE_1271 = 1271;
	// There are some rare cases where the prototype will already
      // be declared. See TypedScopeCreatorTest#testBogusPrototypeInit.
      // Fortunately, other warnings will complain if this happens.
      Var prototypeVar = typed_scope_creator_1_expr413_line_1271;
      int PROBE_START_LINE_1272 = 1274;
	com.google.javascript.jscomp.Scope.Var v_prototype_var_3791_line_1272 = prototypeVar;
	boolean typed_scope_creator_1_expr415_line_1272 = v_prototype_var_3791_line_1272 != null;
	boolean typed_scope_creator_1_expr416_line_1272 = true;
	if (typed_scope_creator_1_expr415_line_1272) {
		com.google.javascript.jscomp.Scope.Var v_prototype_var_3791_line_1272_v1 = prototypeVar;
		com.google.javascript.jscomp.Scope q_scope_102_line_1272 = v_prototype_var_3791_line_1272_v1.scope;
		com.google.javascript.jscomp.Scope p_scope_to_declare_in_3785_line_1272 = scopeToDeclareIn;
		typed_scope_creator_1_expr416_line_1272 = q_scope_102_line_1272 == p_scope_to_declare_in_3785_line_1272;
	}
	boolean typed_scope_creator_1_expr414_line_1272 = typed_scope_creator_1_expr415_line_1272
			&& typed_scope_creator_1_expr416_line_1272;
	int PROBE_END_LINE_1272 = 1274;
	if (typed_scope_creator_1_expr414_line_1272) {
        scopeToDeclareIn.undeclare(prototypeVar);
      }

      int PROBE_START_LINE_1276 = 1281;
	com.google.javascript.jscomp.Scope p_scope_to_declare_in_3785_line_1276 = scopeToDeclareIn;
	String v_prototype_name_3790_line_1276 = prototypeName;
	int PROBE_END_LINE_1276 = 1281;
	p_scope_to_declare_in_3785_line_1276.declare(v_prototype_name_3790_line_1276,
          n, prototypeSlot.getType(), input,
          /* declared iff there's an explicit supertype */
          superClassCtor == null ||
          superClassCtor.getInstanceType().isEquivalentTo(
              getNativeType(OBJECT_TYPE)));

      int PROBE_START_LINE_1285 = 1292;
	com.google.javascript.jscomp.Scope.Var p_new_var_3787_line_1285 = newVar;
	com.google.javascript.rhino.Node typed_scope_creator_1_expr422_line_1285 = p_new_var_3787_line_1285
			.getInitialValue();
	boolean typed_scope_creator_1_expr421_line_1285 = typed_scope_creator_1_expr422_line_1285 == null;
	boolean typed_scope_creator_1_expr420_line_1285 = typed_scope_creator_1_expr421_line_1285 && !n.isFromExterns();
	int PROBE_END_LINE_1285 = 1292;
	// Make sure the variable is initialized to something if
      // it constructs itself.
      if (typed_scope_creator_1_expr420_line_1285) {
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
     * @param info The doc info for this property.
     * @param lValue The l-value node.
     * @param rValue The node that {@code n} is being initialized to,
     *     or {@code null} if this is a stub declaration.
     */
    private JSType getDeclaredType(JSDocInfo info, Node lValue,
        @Nullable Node rValue) {
      int PROBE_START_LINE_1327 = 1345;
			com.google.javascript.rhino.JSDocInfo p_info_3794_line_1327 = info;
			boolean typed_scope_creator_1_expr424_line_1327 = p_info_3794_line_1327 != null;
			boolean typed_scope_creator_1_expr425_line_1327 = true;
			if (typed_scope_creator_1_expr424_line_1327) {
				com.google.javascript.rhino.JSDocInfo p_info_3794_line_1327_v1 = info;
				typed_scope_creator_1_expr425_line_1327 = p_info_3794_line_1327_v1.hasType();
			}
			boolean typed_scope_creator_1_expr423_line_1327 = typed_scope_creator_1_expr424_line_1327
					&& typed_scope_creator_1_expr425_line_1327;
			int PROBE_END_LINE_1327 = 1345;
	if (typed_scope_creator_1_expr423_line_1327) {
        int PROBE_START_LINE_1328 = 1328;
		com.google.javascript.rhino.Node p_l_value_3795_line_1328 = lValue;
		com.google.javascript.rhino.JSDocInfo p_info_3794_line_1328 = info;
		com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr426_line_1328 = getDeclaredTypeInAnnotation(
				p_l_value_3795_line_1328, p_info_3794_line_1328);
		int PROBE_END_LINE_1328 = 1328;
		return typed_scope_creator_1_expr426_line_1328;
      } else {
		int PROBE_START_LINE_1329 = 1345;
		com.google.javascript.rhino.Node p_r_value_3796_line_1329 = rValue;
		boolean typed_scope_creator_1_expr429_line_1329 = p_r_value_3796_line_1329 != null;
		boolean typed_scope_creator_1_expr430_line_1329 = true;
		if (typed_scope_creator_1_expr429_line_1329) {
			com.google.javascript.rhino.Node p_r_value_3796_line_1329_v1 = rValue;
			typed_scope_creator_1_expr430_line_1329 = p_r_value_3796_line_1329_v1.isFunction();
		}
		boolean typed_scope_creator_1_expr428_line_1329 = typed_scope_creator_1_expr429_line_1329
				&& typed_scope_creator_1_expr430_line_1329;
		boolean typed_scope_creator_1_expr427_line_1329 = typed_scope_creator_1_expr428_line_1329
				&& shouldUseFunctionLiteralType(JSType.toMaybeFunctionType(rValue.getJSType()), info, lValue);
		int PROBE_END_LINE_1329 = 1345;
		if (typed_scope_creator_1_expr427_line_1329) {
			int PROBE_START_LINE_1332 = 1332;
			com.google.javascript.rhino.Node p_r_value_3796_line_1332 = rValue;
			com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr431_line_1332 = p_r_value_3796_line_1332
					.getJSType();
			int PROBE_END_LINE_1332 = 1332;
			return typed_scope_creator_1_expr431_line_1332;
		} else {
			int PROBE_START_LINE_1333 = 1345;
			com.google.javascript.rhino.JSDocInfo p_info_3794_line_1333 = info;
			boolean typed_scope_creator_1_expr432_line_1333 = p_info_3794_line_1333 != null;
			int PROBE_END_LINE_1333 = 1345;
			if (typed_scope_creator_1_expr432_line_1333) {
				if (info.hasEnumParameterType()) {
					if (rValue != null && rValue.isObjectLit()) {
						return rValue.getJSType();
					} else {
						return createEnumTypeFromNodes(rValue, lValue.getQualifiedName(), info, lValue);
					}
				} else if (info.isConstructor() || info.isInterface()) {
					return createFunctionTypeFromNodes(rValue, lValue.getQualifiedName(), info, lValue);
				}
			}
		}
	}

      int PROBE_START_LINE_1348 = 1375;
	com.google.javascript.rhino.JSDocInfo p_info_3794_line_1348 = info;
	com.google.javascript.rhino.Node p_l_value_3795_line_1348 = lValue;
	boolean typed_scope_creator_1_expr433_line_1348 = isConstantSymbol(p_info_3794_line_1348, p_l_value_3795_line_1348);
	int PROBE_END_LINE_1348 = 1375;
	// Check if this is constant, and if it has a known type.
      if (typed_scope_creator_1_expr433_line_1348) {
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

      int PROBE_START_LINE_1377 = 1377;
	com.google.javascript.rhino.Node p_l_value_3795_line_1377 = lValue;
	com.google.javascript.rhino.JSDocInfo p_info_3794_line_1377 = info;
	com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr434_line_1377 = getDeclaredTypeInAnnotation(
			p_l_value_3795_line_1377, p_info_3794_line_1377);
	int PROBE_END_LINE_1377 = 1377;
	return typed_scope_creator_1_expr434_line_1377;
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
    private void checkForClassDefiningCalls(NodeTraversal t, Node n) {
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
            objectLiteralCast.objectNode.putBooleanProp(
                Node.REFLECTED_OBJECT, true);
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
      int PROBE_START_LINE_1528 = 1528;
			com.google.javascript.rhino.Node p_n_3805_line_1528 = n;
			Node typed_scope_creator_1_expr435_line_1528 = p_n_3805_line_1528.getFirstChild();
			int PROBE_END_LINE_1528 = 1528;
	Node ownerNode = typed_scope_creator_1_expr435_line_1528;
      int PROBE_START_LINE_1529 = 1529;
	com.google.javascript.rhino.Node v_owner_node_3808_line_1529 = ownerNode;
	String typed_scope_creator_1_expr436_line_1529 = v_owner_node_3808_line_1529.getQualifiedName();
	int PROBE_END_LINE_1529 = 1529;
	String ownerName = typed_scope_creator_1_expr436_line_1529;
      int PROBE_START_LINE_1530 = 1530;
	com.google.javascript.rhino.Node p_n_3805_line_1530 = n;
	String typed_scope_creator_1_expr437_line_1530 = p_n_3805_line_1530.getQualifiedName();
	int PROBE_END_LINE_1530 = 1530;
	String qName = typed_scope_creator_1_expr437_line_1530;
      int PROBE_START_LINE_1531 = 1531;
	com.google.javascript.rhino.Node p_n_3805_line_1531 = n;
	com.google.javascript.rhino.Node typed_scope_creator_1_expr439_line_1531 = p_n_3805_line_1531.getLastChild();
	String typed_scope_creator_1_expr438_line_1531 = typed_scope_creator_1_expr439_line_1531.getString();
	int PROBE_END_LINE_1531 = 1531;
	String propName = typed_scope_creator_1_expr438_line_1531;
      int PROBE_START_LINE_1532 = 1532;
	String v_q_name_3810_line_1532 = qName;
	boolean typed_scope_creator_1_expr442_line_1532 = v_q_name_3810_line_1532 != null;
	boolean typed_scope_creator_1_expr443_line_1532 = true;
	if (typed_scope_creator_1_expr442_line_1532) {
		String v_owner_name_3809_line_1532 = ownerName;
		typed_scope_creator_1_expr443_line_1532 = v_owner_name_3809_line_1532 != null;
	}
	boolean typed_scope_creator_1_expr441_line_1532 = typed_scope_creator_1_expr442_line_1532
			&& typed_scope_creator_1_expr443_line_1532;
	int PROBE_END_LINE_1532 = 1532;
	Preconditions.checkArgument(typed_scope_creator_1_expr441_line_1532);

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

      int PROBE_START_LINE_1548 = 1548;
	com.google.javascript.rhino.JSDocInfo p_info_3804_line_1548 = info;
	com.google.javascript.rhino.Node p_n_3805_line_1548 = n;
	com.google.javascript.rhino.Node p_rhs_value_3807_line_1548 = rhsValue;
	JSType typed_scope_creator_1_expr444_line_1548 = getDeclaredType(p_info_3804_line_1548, p_n_3805_line_1548,
			p_rhs_value_3807_line_1548);
	int PROBE_END_LINE_1548 = 1548;
	// Determining type for #1 + #2 + #3 + #4
      JSType valueType = typed_scope_creator_1_expr444_line_1548;
      int PROBE_START_LINE_1549 = 1552;
	com.google.javascript.rhino.jstype.JSType v_value_type_3812_line_1549 = valueType;
	boolean typed_scope_creator_1_expr446_line_1549 = v_value_type_3812_line_1549 == null;
	boolean typed_scope_creator_1_expr447_line_1549 = true;
	if (typed_scope_creator_1_expr446_line_1549) {
		com.google.javascript.rhino.Node p_rhs_value_3807_line_1549 = rhsValue;
		typed_scope_creator_1_expr447_line_1549 = p_rhs_value_3807_line_1549 != null;
	}
	boolean typed_scope_creator_1_expr445_line_1549 = typed_scope_creator_1_expr446_line_1549
			&& typed_scope_creator_1_expr447_line_1549;
	int PROBE_END_LINE_1549 = 1552;
	if (typed_scope_creator_1_expr445_line_1549) {
        int PROBE_START_LINE_1551 = 1551;
		com.google.javascript.rhino.Node p_rhs_value_3807_line_1551 = rhsValue;
		com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr449_line_1551 = p_rhs_value_3807_line_1551
				.getJSType();
		int PROBE_END_LINE_1551 = 1551;
		// Determining type for #5
        valueType = typed_scope_creator_1_expr449_line_1551;
      }

      int PROBE_START_LINE_1559 = 1584;
	String v_prop_name_3811_line_1559 = propName;
	boolean typed_scope_creator_1_expr450_line_1559 = "prototype".equals(v_prop_name_3811_line_1559);
	int PROBE_END_LINE_1559 = 1584;
	// Function prototypes are special.
      // It's a common JS idiom to do:
      // F.prototype = { ... };
      // So if F does not have an explicitly declared super type,
      // allow F.prototype to be redefined arbitrarily.
      if (typed_scope_creator_1_expr450_line_1559) {
        int PROBE_START_LINE_1560 = 1560;
		com.google.javascript.jscomp.Scope f_scope_3673_line_1560 = scope;
		String v_q_name_3810_line_1560 = qName;
		Var typed_scope_creator_1_expr451_line_1560 = f_scope_3673_line_1560.getVar(v_q_name_3810_line_1560);
		int PROBE_END_LINE_1560 = 1560;
		Var qVar = typed_scope_creator_1_expr451_line_1560;
        int PROBE_START_LINE_1561 = 1583;
		com.google.javascript.jscomp.Scope.Var v_q_var_3813_line_1561 = qVar;
		boolean typed_scope_creator_1_expr452_line_1561 = v_q_var_3813_line_1561 != null;
		int PROBE_END_LINE_1561 = 1583;
		if (typed_scope_creator_1_expr452_line_1561) {
          int PROBE_START_LINE_1567 = 1567;
			com.google.javascript.jscomp.Scope.Var v_q_var_3813_line_1567 = qVar;
			com.google.javascript.rhino.jstype.JSType typed_scope_creator_1_expr454_line_1567 = v_q_var_3813_line_1567
					.getType();
			ObjectType typed_scope_creator_1_expr453_line_1567 = ObjectType
					.cast(typed_scope_creator_1_expr454_line_1567);
			int PROBE_END_LINE_1567 = 1567;
		// If the programmer has declared that F inherits from Super,
          // and they assign F.prototype to an object literal,
          // then they are responsible for making sure that the object literal's
          // implicit prototype is set up appropriately. We just obey
          // the @extends tag.
          ObjectType qVarType = typed_scope_creator_1_expr453_line_1567;
          int PROBE_START_LINE_1568 = 1580;
		com.google.javascript.rhino.jstype.ObjectType v_q_var_type_3814_line_1568 = qVarType;
		boolean typed_scope_creator_1_expr457_line_1568 = v_q_var_type_3814_line_1568 != null;
		boolean typed_scope_creator_1_expr456_line_1568 = typed_scope_creator_1_expr457_line_1568 && rhsValue != null;
		boolean typed_scope_creator_1_expr455_line_1568 = typed_scope_creator_1_expr456_line_1568
				&& rhsValue.isObjectLit();
		int PROBE_END_LINE_1568 = 1580;
		if (typed_scope_creator_1_expr455_line_1568) {
            int PROBE_START_LINE_1571 = 1572;
				com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_3615_line_1571 = typeRegistry;
				int PROBE_END_LINE_1571 = 1572;
			f_type_registry_3615_line_1571.resetImplicitPrototype(
                rhsValue.getJSType(), qVarType.getImplicitPrototype());
          } else if (!qVar.isTypeInferred()) {
            // If the programmer has declared that F inherits from Super,
            // and they assign F.prototype to some arbitrary expression,
            // there's not much we can do. We just ignore the expression,
            // and hope they've annotated their code in a way to tell us
            // what props are going to be on that prototype.
            return;
          }

          int PROBE_START_LINE_1582 = 1582;
		com.google.javascript.jscomp.Scope.Var v_q_var_3813_line_1582 = qVar;
		com.google.javascript.jscomp.Scope typed_scope_creator_1_expr462_line_1582 = v_q_var_3813_line_1582.getScope();
		com.google.javascript.jscomp.Scope.Var v_q_var_3813_line_1582_v1 = qVar;
		int PROBE_END_LINE_1582 = 1582;
		typed_scope_creator_1_expr462_line_1582.undeclare(v_q_var_3813_line_1582_v1);
        }
      }

      int PROBE_START_LINE_1586 = 1595;
	com.google.javascript.rhino.jstype.JSType v_value_type_3812_line_1586 = valueType;
	boolean typed_scope_creator_1_expr463_line_1586 = v_value_type_3812_line_1586 == null;
	int PROBE_END_LINE_1586 = 1595;
	if (typed_scope_creator_1_expr463_line_1586) {
        if (parent.isExprResult()) {
          stubDeclarations.add(new StubDeclaration(
              n,
              t.getInput() != null && t.getInput().isExtern(),
              ownerName));
        }

        return;
      }

      int PROBE_START_LINE_1597 = 1598;
	boolean typed_scope_creator_1_expr464_line_1597 = isQualifiedNameInferred(qName, n, info, rhsValue, valueType);
	int PROBE_END_LINE_1597 = 1598;
	boolean inferred = typed_scope_creator_1_expr464_line_1597;
      int PROBE_START_LINE_1599 = 1631;
	boolean v_inferred_3815_line_1599 = inferred;
	boolean typed_scope_creator_1_expr465_line_1599 = !v_inferred_3815_line_1599;
	int PROBE_END_LINE_1599 = 1631;
	if (typed_scope_creator_1_expr465_line_1599) {
        int PROBE_START_LINE_1600 = 1600;
		String v_owner_name_3809_line_1600 = ownerName;
		ObjectType typed_scope_creator_1_expr466_line_1600 = getObjectSlot(v_owner_name_3809_line_1600);
		int PROBE_END_LINE_1600 = 1600;
		ObjectType ownerType = typed_scope_creator_1_expr466_line_1600;
        int PROBE_START_LINE_1601 = 1612;
		com.google.javascript.rhino.jstype.ObjectType v_owner_type_3816_line_1601 = ownerType;
		boolean typed_scope_creator_1_expr467_line_1601 = v_owner_type_3816_line_1601 != null;
		int PROBE_END_LINE_1601 = 1612;
		if (typed_scope_creator_1_expr467_line_1601) {
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

        int PROBE_START_LINE_1616 = 1616;
		com.google.javascript.rhino.Node p_n_3805_line_1616 = n;
		com.google.javascript.rhino.Node p_parent_3806_line_1616 = parent;
		com.google.javascript.rhino.jstype.JSType v_value_type_3812_line_1616 = valueType;
		boolean v_inferred_3815_line_1616 = inferred;
		int PROBE_END_LINE_1616 = 1616;
		// If the property is already declared, the error will be
        // caught when we try to declare it in the current scope.
        defineSlot(p_n_3805_line_1616, p_parent_3806_line_1616, v_value_type_3812_line_1616, v_inferred_3815_line_1616);
      } else {
		int PROBE_START_LINE_1617 = 1631;
		com.google.javascript.rhino.Node p_rhs_value_3807_line_1617 = rhsValue;
		boolean typed_scope_creator_1_expr470_line_1617 = p_rhs_value_3807_line_1617 != null;
		boolean typed_scope_creator_1_expr471_line_1617 = true;
		if (typed_scope_creator_1_expr470_line_1617) {
			com.google.javascript.rhino.Node p_rhs_value_3807_line_1617_v1 = rhsValue;
			typed_scope_creator_1_expr471_line_1617 = p_rhs_value_3807_line_1617_v1.isTrue();
		}
		boolean typed_scope_creator_1_expr469_line_1617 = typed_scope_creator_1_expr470_line_1617
				&& typed_scope_creator_1_expr471_line_1617;
		int PROBE_END_LINE_1617 = 1631;
		if (typed_scope_creator_1_expr469_line_1617) {
			ObjectType ownerType = getObjectSlot(ownerName);
			FunctionType ownerFnType = JSType.toMaybeFunctionType(ownerType);
			if (ownerFnType != null) {
				JSType ownerTypeOfThis = ownerFnType.getTypeOfThis();
				String delegateName = codingConvention.getDelegateSuperclassName();
				JSType delegateType = delegateName == null ? null : typeRegistry.getType(delegateName);
				if (delegateType != null && ownerTypeOfThis.isSubtype(delegateType)) {
					defineSlot(n, parent, getNativeType(BOOLEAN_TYPE), true);
				}
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
      int PROBE_START_LINE_1664 = 1666;
			com.google.javascript.rhino.jstype.JSType p_value_type_3821_line_1664 = valueType;
			boolean typed_scope_creator_1_expr472_line_1664 = p_value_type_3821_line_1664 == null;
			int PROBE_END_LINE_1664 = 1666;
	if (typed_scope_creator_1_expr472_line_1664) {
        return true;
      }

      // Prototype sets are always declared.

      boolean inferred = true;
      int PROBE_START_LINE_1671 = 1677;
	com.google.javascript.rhino.JSDocInfo p_info_3819_line_1671 = info;
	boolean typed_scope_creator_1_expr473_line_1671 = p_info_3819_line_1671 != null;
	int PROBE_END_LINE_1671 = 1677;
	if (typed_scope_creator_1_expr473_line_1671) {
        int PROBE_START_LINE_1672 = 1676;
		com.google.javascript.rhino.JSDocInfo p_info_3819_line_1672 = info;
		boolean typed_scope_creator_1_expr478_line_1672 = p_info_3819_line_1672.hasType();
		boolean typed_scope_creator_1_expr477_line_1672 = typed_scope_creator_1_expr478_line_1672
				|| info.hasEnumParameterType()
				|| (isConstantSymbol(info, n) && valueType != null && !valueType.isUnknownType())
				|| FunctionTypeBuilder.isFunctionTypeDeclaration(info);
		boolean typed_scope_creator_1_expr476_line_1672 = (typed_scope_creator_1_expr477_line_1672);
		boolean typed_scope_creator_1_expr475_line_1672 = !typed_scope_creator_1_expr476_line_1672;
		int PROBE_END_LINE_1672 = 1676;
		inferred = typed_scope_creator_1_expr475_line_1672;
      }

      int PROBE_START_LINE_1679 = 1704;
	boolean v_inferred_3822_line_1679 = inferred;
	boolean typed_scope_creator_1_expr481_line_1679 = true;
	if (v_inferred_3822_line_1679) {
		com.google.javascript.rhino.Node p_rhs_value_3820_line_1679 = rhsValue;
		typed_scope_creator_1_expr481_line_1679 = p_rhs_value_3820_line_1679 != null;
	}
	boolean typed_scope_creator_1_expr480_line_1679 = v_inferred_3822_line_1679
			&& typed_scope_creator_1_expr481_line_1679;
	boolean typed_scope_creator_1_expr482_line_1679 = true;
	if (typed_scope_creator_1_expr480_line_1679) {
		com.google.javascript.rhino.Node p_rhs_value_3820_line_1679_v1 = rhsValue;
		typed_scope_creator_1_expr482_line_1679 = p_rhs_value_3820_line_1679_v1.isFunction();
	}
	boolean typed_scope_creator_1_expr479_line_1679 = typed_scope_creator_1_expr480_line_1679
			&& typed_scope_creator_1_expr482_line_1679;
	int PROBE_END_LINE_1679 = 1704;
	if (typed_scope_creator_1_expr479_line_1679) {
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
      int PROBE_START_LINE_1705 = 1705;
	boolean v_inferred_3822_line_1705 = inferred;
	int PROBE_END_LINE_1705 = 1705;
	return v_inferred_3822_line_1705;
    }

    private boolean isConstantSymbol(JSDocInfo info, Node node) {
      int PROBE_START_LINE_1709 = 1711;
		com.google.javascript.rhino.JSDocInfo p_info_3823_line_1709 = info;
		boolean typed_scope_creator_1_expr484_line_1709 = p_info_3823_line_1709 != null;
		boolean typed_scope_creator_1_expr485_line_1709 = true;
		if (typed_scope_creator_1_expr484_line_1709) {
			com.google.javascript.rhino.JSDocInfo p_info_3823_line_1709_v1 = info;
			typed_scope_creator_1_expr485_line_1709 = p_info_3823_line_1709_v1.isConstant();
		}
		boolean typed_scope_creator_1_expr483_line_1709 = typed_scope_creator_1_expr484_line_1709
				&& typed_scope_creator_1_expr485_line_1709;
		int PROBE_END_LINE_1709 = 1711;
	if (typed_scope_creator_1_expr483_line_1709) {
        return true;
      }

      int PROBE_START_LINE_1713 = 1720;
	com.google.javascript.rhino.Node p_node_3824_line_1713 = node;
	int typed_scope_creator_1_expr486_line_1713 = p_node_3824_line_1713.getType();
	int PROBE_END_LINE_1713 = 1720;
	switch (typed_scope_creator_1_expr486_line_1713) {
        case Token.NAME:
          return NodeUtil.isConstantByConvention(
              compiler.getCodingConvention(), node, node.getParent());
        case Token.GETPROP:
	int PROBE_START_LINE_1718 = 1719;
	com.google.javascript.rhino.Node p_node_3824_line_1718 = node;
	boolean typed_scope_creator_1_expr488_line_1718 = p_node_3824_line_1718.isQualifiedName();
	boolean typed_scope_creator_1_expr489_line_1718 = true;
	if (typed_scope_creator_1_expr488_line_1718) {
		typed_scope_creator_1_expr489_line_1718 = NodeUtil.isConstantByConvention(compiler.getCodingConvention(),
				node.getLastChild(), node);
	}
	boolean typed_scope_creator_1_expr487_line_1718 = typed_scope_creator_1_expr488_line_1718
			&& typed_scope_creator_1_expr489_line_1718;
	int PROBE_END_LINE_1718 = 1719;
	return typed_scope_creator_1_expr487_line_1718;
      }
      return false;
    }

    /**
     * Find the ObjectType associated with the given slot.
     * @param slotName The name of the slot to find the type in.
     * @return An object type, or null if this slot does not contain an object.
     */
    private ObjectType getObjectSlot(String slotName) {
      int PROBE_START_LINE_1730 = 1730;
		com.google.javascript.jscomp.Scope f_scope_3673_line_1730 = scope;
		String p_slot_name_3825_line_1730 = slotName;
		Var typed_scope_creator_1_expr492_line_1730 = f_scope_3673_line_1730.getVar(p_slot_name_3825_line_1730);
		int PROBE_END_LINE_1730 = 1730;
	Var ownerVar = typed_scope_creator_1_expr492_line_1730;
      int PROBE_START_LINE_1731 = 1735;
	com.google.javascript.jscomp.Scope.Var v_owner_var_3826_line_1731 = ownerVar;
	boolean typed_scope_creator_1_expr493_line_1731 = v_owner_var_3826_line_1731 != null;
	int PROBE_END_LINE_1731 = 1735;
	if (typed_scope_creator_1_expr493_line_1731) {
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
      int PROBE_START_LINE_1744 = 1771;
		List<com.google.javascript.jscomp.TypedScopeCreator.StubDeclaration> f_stub_declarations_3670_line_1744 = stubDeclarations;
		int PROBE_END_LINE_1744 = 1771;
	for (StubDeclaration stub : f_stub_declarations_3670_line_1744) {
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
        int PROBE_START_LINE_1783 = 1783;
		com.google.javascript.rhino.jstype.JSType p_this_type_3828_line_1783 = thisType;
		int PROBE_END_LINE_1783 = 1783;
		this.thisType = p_this_type_3828_line_1783;
      }

      @Override
      public void visit(NodeTraversal t, Node n, Node parent) {
        int PROBE_START_LINE_1788 = 1799;
		com.google.javascript.rhino.Node p_n_3831_line_1788 = n;
		boolean typed_scope_creator_1_expr497_line_1788 = p_n_3831_line_1788.isExprResult();
		int PROBE_END_LINE_1788 = 1799;
		if (typed_scope_creator_1_expr497_line_1788) {
          Node child = n.getFirstChild();
          switch (child.getType()) {
            case Token.ASSIGN:
              maybeCollectMember(child.getFirstChild(), child,
                  child.getLastChild());
              break;
            case Token.GETPROP:
              maybeCollectMember(child, child, null);
              break;
          }
        }
      }

      private void maybeCollectMember(Node member,
          Node nodeWithJsDocInfo, @Nullable Node value) {
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

        // TODO(johnlenz): We are evaluating these values in the wrong scope:
        // https://code.google.com/p/closure-compiler/issues/detail?id=926
        JSType thisObjectType = thisType.toObjectType();
        if (thisObjectType != null) {
          ImmutableList<TemplateType> keys =
              thisObjectType.getTemplateTypeMap().getTemplateKeys();
          typeRegistry.setTemplateTypeNames(keys);
        }

        JSType jsType = getDeclaredType(info, member, value);

        if (thisObjectType != null) {
          typeRegistry.clearTemplateTypeNames();
        }

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
      int PROBE_START_LINE_1879 = 1879;
		com.google.javascript.jscomp.NodeTraversal p_t_3840_line_1879 = t;
		com.google.javascript.rhino.Node p_n_3841_line_1879 = n;
		com.google.javascript.rhino.Node p_parent_3842_line_1879 = parent;
		int PROBE_END_LINE_1879 = 1879;
	super.visit(p_t_3840_line_1879, p_n_3841_line_1879, p_parent_3842_line_1879);

      int PROBE_START_LINE_1881 = 1889;
	com.google.javascript.rhino.Node p_n_3841_line_1881 = n;
	int typed_scope_creator_1_expr500_line_1881 = p_n_3841_line_1881.getType();
	int PROBE_END_LINE_1881 = 1889;
	switch (typed_scope_creator_1_expr500_line_1881) {

        case Token.VAR:
	int PROBE_START_LINE_1885 = 1887;
	com.google.javascript.rhino.Node p_n_3841_line_1885 = n;
	boolean typed_scope_creator_1_expr501_line_1885 = p_n_3841_line_1885.hasOneChild();
	int PROBE_END_LINE_1885 = 1887;
	// Handle typedefs.
          if (typed_scope_creator_1_expr501_line_1885) {
            int PROBE_START_LINE_1886 = 1886;
			com.google.javascript.jscomp.NodeTraversal p_t_3840_line_1886 = t;
			com.google.javascript.rhino.Node p_n_3841_line_1886 = n;
			com.google.javascript.rhino.Node typed_scope_creator_1_expr503_line_1886 = p_n_3841_line_1886
					.getFirstChild();
			com.google.javascript.rhino.Node p_n_3841_line_1886_v1 = n;
			com.google.javascript.rhino.JSDocInfo typed_scope_creator_1_expr504_line_1886 = p_n_3841_line_1886_v1
					.getJSDocInfo();
			int PROBE_END_LINE_1886 = 1886;
			checkForTypedef(p_t_3840_line_1886, typed_scope_creator_1_expr503_line_1886, typed_scope_creator_1_expr504_line_1886);
          }
          break;
      }
    }

    @Override
    void maybeDeclareQualifiedName(
        NodeTraversal t, JSDocInfo info,
        Node n, Node parent, Node rhsValue) {
      int PROBE_START_LINE_1896 = 1896;
			com.google.javascript.jscomp.NodeTraversal p_t_3843_line_1896 = t;
			com.google.javascript.rhino.Node p_n_3845_line_1896 = n;
			com.google.javascript.rhino.JSDocInfo p_info_3844_line_1896 = info;
			int PROBE_END_LINE_1896 = 1896;
	checkForTypedef(p_t_3843_line_1896, p_n_3845_line_1896, p_info_3844_line_1896);
      int PROBE_START_LINE_1897 = 1897;
	com.google.javascript.jscomp.NodeTraversal p_t_3843_line_1897 = t;
	com.google.javascript.rhino.JSDocInfo p_info_3844_line_1897 = info;
	com.google.javascript.rhino.Node p_n_3845_line_1897 = n;
	com.google.javascript.rhino.Node p_parent_3846_line_1897 = parent;
	com.google.javascript.rhino.Node p_rhs_value_3847_line_1897 = rhsValue;
	int PROBE_END_LINE_1897 = 1897;
	super.maybeDeclareQualifiedName(p_t_3843_line_1897, p_info_3844_line_1897, p_n_3845_line_1897, p_parent_3846_line_1897, p_rhs_value_3847_line_1897);
    }

    /**
     * Handle typedefs.
     * @param t The current traversal.
     * @param candidate A qualified name node.
     * @param info JSDoc comments.
     */
    private void checkForTypedef(
        NodeTraversal t, Node candidate, JSDocInfo info) {
      int PROBE_START_LINE_1908 = 1910;
			com.google.javascript.rhino.JSDocInfo p_info_3850_line_1908 = info;
			boolean typed_scope_creator_1_expr508_line_1908 = p_info_3850_line_1908 == null;
			boolean typed_scope_creator_1_expr509_line_1908 = false;
			if (!typed_scope_creator_1_expr508_line_1908) {
				com.google.javascript.rhino.JSDocInfo p_info_3850_line_1908_v1 = info;
				boolean typed_scope_creator_1_expr510_line_1908 = p_info_3850_line_1908_v1.hasTypedefType();
				typed_scope_creator_1_expr509_line_1908 = !typed_scope_creator_1_expr510_line_1908;
			}
			boolean typed_scope_creator_1_expr507_line_1908 = typed_scope_creator_1_expr508_line_1908
					|| typed_scope_creator_1_expr509_line_1908;
			int PROBE_END_LINE_1908 = 1910;
	if (typed_scope_creator_1_expr507_line_1908) {
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
      int PROBE_START_LINE_1953 = 1953;
		com.google.javascript.jscomp.AbstractCompiler f_compiler_3612_line_1953 = compiler;
		com.google.javascript.jscomp.Scope f_scope_3673_line_1953 = scope;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr513_line_1953 = f_scope_3673_line_1953.getRootNode();
		int PROBE_END_LINE_1953 = 1953;
	NodeTraversal.traverse(f_compiler_3612_line_1953, typed_scope_creator_1_expr513_line_1953, this);

      AstFunctionContents contents =
          getFunctionAnalysisResults(scope.getRootNode());
      int PROBE_START_LINE_1957 = 1972;
	com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents v_contents_3852_line_1957 = contents;
	boolean typed_scope_creator_1_expr516_line_1957 = v_contents_3852_line_1957 != null;
	int PROBE_END_LINE_1957 = 1972;
	if (typed_scope_creator_1_expr516_line_1957) {
        int PROBE_START_LINE_1958 = 1962;
		com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents v_contents_3852_line_1958 = contents;
		Iterable<String> typed_scope_creator_1_expr517_line_1958 = v_contents_3852_line_1958.getEscapedVarNames();
		int PROBE_END_LINE_1958 = 1962;
		for (String varName : typed_scope_creator_1_expr517_line_1958) {
          Var v = scope.getVar(varName);
          Preconditions.checkState(v.getScope() == scope);
          v.markEscaped();
        }

        int PROBE_START_LINE_1964 = 1971;
		com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents v_contents_3852_line_1965 = contents;
		Multiset<String> typed_scope_creator_1_expr519_line_1965 = v_contents_3852_line_1965.getAssignedNameCounts();
		Set<com.google.common.collect.Multiset.Entry<String>> typed_scope_creator_1_expr518_line_1965 = typed_scope_creator_1_expr519_line_1965
				.entrySet();
		int PROBE_END_LINE_1964 = 1971;
		for (Multiset.Entry<String> entry :
                 typed_scope_creator_1_expr518_line_1965) {
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
      int PROBE_START_LINE_1984 = 1986;
		com.google.javascript.rhino.Node p_n_3855_line_1984 = n;
		com.google.javascript.jscomp.Scope f_scope_3673_line_1984 = scope;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr521_line_1984 = f_scope_3673_line_1984.getRootNode();
		boolean typed_scope_creator_1_expr520_line_1984 = p_n_3855_line_1984 == typed_scope_creator_1_expr521_line_1984;
		int PROBE_END_LINE_1984 = 1986;
	if (typed_scope_creator_1_expr520_line_1984) {
        return;
      }
      int PROBE_START_LINE_1987 = 1990;
	com.google.javascript.rhino.Node p_n_3855_line_1987 = n;
	boolean typed_scope_creator_1_expr523_line_1987 = p_n_3855_line_1987.isParamList();
	boolean typed_scope_creator_1_expr524_line_1987 = true;
	if (typed_scope_creator_1_expr523_line_1987) {
		com.google.javascript.rhino.Node p_parent_3856_line_1987 = parent;
		com.google.javascript.jscomp.Scope f_scope_3673_line_1987 = scope;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr525_line_1987 = f_scope_3673_line_1987.getRootNode();
		typed_scope_creator_1_expr524_line_1987 = p_parent_3856_line_1987 == typed_scope_creator_1_expr525_line_1987;
	}
	boolean typed_scope_creator_1_expr522_line_1987 = typed_scope_creator_1_expr523_line_1987
			&& typed_scope_creator_1_expr524_line_1987;
	int PROBE_END_LINE_1987 = 1990;
	if (typed_scope_creator_1_expr522_line_1987) {
        int PROBE_START_LINE_1988 = 1988;
		com.google.javascript.rhino.Node p_parent_3856_line_1988 = parent;
		int PROBE_END_LINE_1988 = 1988;
		handleFunctionInputs(p_parent_3856_line_1988);
        return;
      }

      int PROBE_START_LINE_1992 = 1992;
	com.google.javascript.jscomp.NodeTraversal p_t_3854_line_1992 = t;
	com.google.javascript.rhino.Node p_n_3855_line_1992 = n;
	com.google.javascript.rhino.Node p_parent_3856_line_1992 = parent;
	int PROBE_END_LINE_1992 = 1992;
	super.visit(p_t_3854_line_1992, p_n_3855_line_1992, p_parent_3856_line_1992);
    }

    /** Handle bleeding functions and function parameters. */
    private void handleFunctionInputs(Node fnNode) {
      int PROBE_START_LINE_1998 = 1998;
		com.google.javascript.rhino.Node p_fn_node_3857_line_1998 = fnNode;
		Node typed_scope_creator_1_expr528_line_1998 = p_fn_node_3857_line_1998.getFirstChild();
		int PROBE_END_LINE_1998 = 1998;
	// Handle bleeding functions.
      Node fnNameNode = typed_scope_creator_1_expr528_line_1998;
      int PROBE_START_LINE_1999 = 1999;
	com.google.javascript.rhino.Node v_fn_name_node_3858_line_1999 = fnNameNode;
	String typed_scope_creator_1_expr529_line_1999 = v_fn_name_node_3858_line_1999.getString();
	int PROBE_END_LINE_1999 = 1999;
	String fnName = typed_scope_creator_1_expr529_line_1999;
      int PROBE_START_LINE_2000 = 2012;
	String v_fn_name_3859_line_2000 = fnName;
	boolean typed_scope_creator_1_expr531_line_2000 = v_fn_name_3859_line_2000.isEmpty();
	boolean typed_scope_creator_1_expr530_line_2000 = !typed_scope_creator_1_expr531_line_2000;
	int PROBE_END_LINE_2000 = 2012;
	if (typed_scope_creator_1_expr530_line_2000) {
        Scope.Var fnVar = scope.getVar(fnName);
        if (fnVar == null ||
            // Make sure we're not touching a native function. Native
            // functions aren't bleeding, but may not have a declaration
            // node.
            (fnVar.getNameNode() != null &&
                // Make sure that the function is actually bleeding by checking
                // if has already been declared.
                fnVar.getInitialValue() != fnNode)) {
          defineSlot(fnNameNode, fnNode, fnNode.getJSType(), false);
        }
      }

      int PROBE_START_LINE_2014 = 2014;
	com.google.javascript.rhino.Node p_fn_node_3857_line_2014 = fnNode;
	int PROBE_END_LINE_2014 = 2014;
	declareArguments(p_fn_node_3857_line_2014);
    }

    /**
     * Declares all of a function's arguments.
     */
    private void declareArguments(Node functionNode) {
      int PROBE_START_LINE_2021 = 2021;
		com.google.javascript.rhino.Node p_function_node_3860_line_2021 = functionNode;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr534_line_2021 = p_function_node_3860_line_2021
				.getFirstChild();
		Node typed_scope_creator_1_expr533_line_2021 = typed_scope_creator_1_expr534_line_2021.getNext();
		int PROBE_END_LINE_2021 = 2021;
	Node astParameters = typed_scope_creator_1_expr533_line_2021;
      Node iifeArgumentNode = null;

      int PROBE_START_LINE_2024 = 2026;
	com.google.javascript.rhino.Node p_function_node_3860_line_2024 = functionNode;
	boolean typed_scope_creator_1_expr535_line_2024 = NodeUtil.isCallOrNewTarget(p_function_node_3860_line_2024);
	int PROBE_END_LINE_2024 = 2026;
	if (typed_scope_creator_1_expr535_line_2024) {
        iifeArgumentNode = functionNode.getNext();
      }

      FunctionType functionType =
          JSType.toMaybeFunctionType(functionNode.getJSType());
      int PROBE_START_LINE_2030 = 2063;
	com.google.javascript.rhino.jstype.FunctionType v_function_type_3863_line_2030 = functionType;
	boolean typed_scope_creator_1_expr537_line_2030 = v_function_type_3863_line_2030 != null;
	int PROBE_END_LINE_2030 = 2063;
	if (typed_scope_creator_1_expr537_line_2030) {
        int PROBE_START_LINE_2031 = 2031;
		com.google.javascript.rhino.jstype.FunctionType v_function_type_3863_line_2031 = functionType;
		Node typed_scope_creator_1_expr538_line_2031 = v_function_type_3863_line_2031.getParametersNode();
		int PROBE_END_LINE_2031 = 2031;
		Node jsDocParameters = typed_scope_creator_1_expr538_line_2031;
        int PROBE_START_LINE_2032 = 2062;
		com.google.javascript.rhino.Node v_js_doc_parameters_3864_line_2032 = jsDocParameters;
		boolean typed_scope_creator_1_expr539_line_2032 = v_js_doc_parameters_3864_line_2032 != null;
		int PROBE_END_LINE_2032 = 2062;
		if (typed_scope_creator_1_expr539_line_2032) {
          int PROBE_START_LINE_2033 = 2033;
			com.google.javascript.rhino.Node v_js_doc_parameters_3864_line_2033 = jsDocParameters;
			Node typed_scope_creator_1_expr540_line_2033 = v_js_doc_parameters_3864_line_2033.getFirstChild();
			int PROBE_END_LINE_2033 = 2033;
		Node jsDocParameter = typed_scope_creator_1_expr540_line_2033;
          int PROBE_START_LINE_2034 = 2061;
		com.google.javascript.rhino.Node v_ast_parameters_3861_line_2034 = astParameters;
		Iterable<com.google.javascript.rhino.Node> typed_scope_creator_1_expr541_line_2034 = v_ast_parameters_3861_line_2034
				.children();
		int PROBE_END_LINE_2034 = 2061;
		for (Node astParameter : typed_scope_creator_1_expr541_line_2034) {
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
      int PROBE_START_LINE_2078 = 2078;
			com.google.javascript.jscomp.AbstractCompiler p_compiler_3867_line_2078 = compiler;
			int PROBE_END_LINE_2078 = 2078;
	this.compiler = p_compiler_3867_line_2078;
      int PROBE_START_LINE_2079 = 2079;
	Map<com.google.javascript.rhino.Node, com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents> p_out_param_3868_line_2079 = outParam;
	int PROBE_END_LINE_2079 = 2079;
	this.data = p_out_param_3868_line_2079;
    }

    @Override public void process(Node externs, Node root) {
      int PROBE_START_LINE_2083 = 2088;
		com.google.javascript.rhino.Node p_externs_3871_line_2083 = externs;
		boolean typed_scope_creator_1_expr548_line_2083 = p_externs_3871_line_2083 == null;
		int PROBE_END_LINE_2083 = 2088;
	if (typed_scope_creator_1_expr548_line_2083) {
        NodeTraversal.traverse(compiler, root, this);
      } else {
        NodeTraversal.traverseRoots(
            compiler, ImmutableList.of(externs, root), this);
      }
    }

    @Override public void enterScope(NodeTraversal t) {
      int PROBE_START_LINE_2092 = 2095;
		com.google.javascript.jscomp.NodeTraversal p_t_3873_line_2092 = t;
		boolean typed_scope_creator_1_expr553_line_2092 = p_t_3873_line_2092.inGlobalScope();
		boolean typed_scope_creator_1_expr552_line_2092 = !typed_scope_creator_1_expr553_line_2092;
		int PROBE_END_LINE_2092 = 2095;
	if (typed_scope_creator_1_expr552_line_2092) {
        int PROBE_START_LINE_2093 = 2093;
		com.google.javascript.jscomp.NodeTraversal p_t_3873_line_2093 = t;
		Node typed_scope_creator_1_expr554_line_2093 = p_t_3873_line_2093.getScopeRoot();
		int PROBE_END_LINE_2093 = 2093;
		Node n = typed_scope_creator_1_expr554_line_2093;
        int PROBE_START_LINE_2094 = 2094;
		Map<com.google.javascript.rhino.Node, com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents> f_data_3870_line_2094 = data;
		com.google.javascript.rhino.Node v_n_3874_line_2094 = n;
		com.google.javascript.rhino.Node v_n_3874_line_2094_v1 = n;
		int PROBE_END_LINE_2094 = 2094;
		f_data_3870_line_2094.put(v_n_3874_line_2094, new AstFunctionContents(v_n_3874_line_2094_v1));
      }
    }

    @Override public void visit(NodeTraversal t, Node n, Node parent) {
      int PROBE_START_LINE_2099 = 2101;
		com.google.javascript.jscomp.NodeTraversal p_t_3875_line_2099 = t;
		boolean typed_scope_creator_1_expr557_line_2099 = p_t_3875_line_2099.inGlobalScope();
		int PROBE_END_LINE_2099 = 2101;
	if (typed_scope_creator_1_expr557_line_2099) {
        return;
      }

      int PROBE_START_LINE_2103 = 2105;
	com.google.javascript.rhino.Node p_n_3876_line_2103 = n;
	boolean typed_scope_creator_1_expr559_line_2103 = p_n_3876_line_2103.isReturn();
	boolean typed_scope_creator_1_expr560_line_2103 = true;
	if (typed_scope_creator_1_expr559_line_2103) {
		com.google.javascript.rhino.Node p_n_3876_line_2103_v1 = n;
		com.google.javascript.rhino.Node typed_scope_creator_1_expr561_line_2103 = p_n_3876_line_2103_v1
				.getFirstChild();
		typed_scope_creator_1_expr560_line_2103 = typed_scope_creator_1_expr561_line_2103 != null;
	}
	boolean typed_scope_creator_1_expr558_line_2103 = typed_scope_creator_1_expr559_line_2103
			&& typed_scope_creator_1_expr560_line_2103;
	int PROBE_END_LINE_2103 = 2105;
	if (typed_scope_creator_1_expr558_line_2103) {
        data.get(t.getScopeRoot()).recordNonEmptyReturn();
      }

      int PROBE_START_LINE_2107 = 2117;
	com.google.javascript.jscomp.NodeTraversal p_t_3875_line_2107 = t;
	int typed_scope_creator_1_expr563_line_2107 = p_t_3875_line_2107.getScopeDepth();
	boolean typed_scope_creator_1_expr562_line_2107 = typed_scope_creator_1_expr563_line_2107 <= 1;
	int PROBE_END_LINE_2107 = 2117;
	if (typed_scope_creator_1_expr562_line_2107) {
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

      int PROBE_START_LINE_2119 = 2148;
	com.google.javascript.rhino.Node p_n_3876_line_2119 = n;
	boolean typed_scope_creator_1_expr565_line_2119 = p_n_3876_line_2119.isName();
	boolean typed_scope_creator_1_expr566_line_2119 = true;
	if (typed_scope_creator_1_expr565_line_2119) {
		com.google.javascript.rhino.Node p_n_3876_line_2119_v1 = n;
		typed_scope_creator_1_expr566_line_2119 = NodeUtil.isLValue(p_n_3876_line_2119_v1);
	}
	boolean typed_scope_creator_1_expr564_line_2119 = typed_scope_creator_1_expr565_line_2119
			&& typed_scope_creator_1_expr566_line_2119 && !NodeUtil.isBleedingFunctionName(n);
	int PROBE_END_LINE_2119 = 2148;
	if (typed_scope_creator_1_expr564_line_2119) {
        int PROBE_START_LINE_2123 = 2123;
			com.google.javascript.rhino.Node p_n_3876_line_2123 = n;
			String typed_scope_creator_1_expr567_line_2123 = p_n_3876_line_2123.getString();
			int PROBE_END_LINE_2123 = 2123;
		String name = typed_scope_creator_1_expr567_line_2123;
        int PROBE_START_LINE_2124 = 2124;
		com.google.javascript.jscomp.NodeTraversal p_t_3875_line_2124 = t;
		Scope typed_scope_creator_1_expr568_line_2124 = p_t_3875_line_2124.getScope();
		int PROBE_END_LINE_2124 = 2124;
		Scope scope = typed_scope_creator_1_expr568_line_2124;
        int PROBE_START_LINE_2125 = 2125;
		com.google.javascript.jscomp.Scope v_scope_3879_line_2125 = scope;
		String v_name_3878_line_2125 = name;
		Var typed_scope_creator_1_expr569_line_2125 = v_scope_3879_line_2125.getVar(v_name_3878_line_2125);
		int PROBE_END_LINE_2125 = 2125;
		Var var = typed_scope_creator_1_expr569_line_2125;
        int PROBE_START_LINE_2126 = 2135;
		com.google.javascript.jscomp.Scope.Var v_var_3880_line_2126 = var;
		boolean typed_scope_creator_1_expr570_line_2126 = v_var_3880_line_2126 != null;
		int PROBE_END_LINE_2126 = 2135;
		if (typed_scope_creator_1_expr570_line_2126) {
          Scope ownerScope = var.getScope();
          if (ownerScope.isLocal()) {
            data.get(ownerScope.getRootNode()).recordAssignedName(name);
          }

          if (scope != ownerScope && ownerScope.isLocal()) {
            data.get(ownerScope.getRootNode()).recordEscapedVarName(name);
          }
        }
      } else {
		int PROBE_START_LINE_2136 = 2148;
		com.google.javascript.rhino.Node p_n_3876_line_2136 = n;
		boolean typed_scope_creator_1_expr572_line_2136 = p_n_3876_line_2136.isGetProp();
		boolean typed_scope_creator_1_expr573_line_2136 = true;
		if (typed_scope_creator_1_expr572_line_2136) {
			com.google.javascript.rhino.Node p_n_3876_line_2136_v1 = n;
			typed_scope_creator_1_expr573_line_2136 = p_n_3876_line_2136_v1.isUnscopedQualifiedName();
		}
		boolean typed_scope_creator_1_expr571_line_2136 = typed_scope_creator_1_expr572_line_2136
				&& typed_scope_creator_1_expr573_line_2136 && NodeUtil.isLValue(n);
		int PROBE_END_LINE_2136 = 2148;
		if (typed_scope_creator_1_expr571_line_2136) {
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
    int PROBE_START_LINE_2153 = 2155;
	com.google.javascript.rhino.Node p_n_3881_line_2153 = n;
	boolean typed_scope_creator_1_expr574_line_2153 = p_n_3881_line_2153 == null;
	int PROBE_END_LINE_2153 = 2155;
	if (typed_scope_creator_1_expr574_line_2153) {
      return null;
    }

    int PROBE_START_LINE_2159 = 2159;
	Map<com.google.javascript.rhino.Node, com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents> f_function_analysis_results_3602_line_2159 = functionAnalysisResults;
	com.google.javascript.rhino.Node p_n_3881_line_2159 = n;
	com.google.javascript.jscomp.FunctionTypeBuilder.AstFunctionContents typed_scope_creator_1_expr575_line_2159 = f_function_analysis_results_3602_line_2159
			.get(p_n_3881_line_2159);
	int PROBE_END_LINE_2159 = 2159;
	// Sometimes this will return null in things like
    // NameReferenceGraphConstruction that build partial scopes.
    return typed_scope_creator_1_expr575_line_2159;
  }
}
