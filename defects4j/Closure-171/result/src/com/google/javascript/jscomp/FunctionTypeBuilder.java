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

import static com.google.javascript.jscomp.TypeCheck.BAD_IMPLEMENTED_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.FUNCTION_FUNCTION_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.UNKNOWN_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.VOID_TYPE;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.HashMultiset;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.Multiset;
import com.google.common.collect.Sets;
import com.google.javascript.jscomp.Scope.Var;
import com.google.javascript.rhino.IR;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.JSTypeExpression;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.jstype.FunctionBuilder;
import com.google.javascript.rhino.jstype.FunctionParamBuilder;
import com.google.javascript.rhino.jstype.FunctionType;
import com.google.javascript.rhino.jstype.JSType;
import com.google.javascript.rhino.jstype.JSTypeRegistry;
import com.google.javascript.rhino.jstype.ObjectType;
import com.google.javascript.rhino.jstype.TemplateType;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Nullable;
import com.google.javascript.rhino.jstype.JSTypeNative;
import java.util.ArrayList;

/**
 * A builder for FunctionTypes, because FunctionTypes are so
 * ridiculously complex. All methods return {@code this} for ease of use.
 *
 * Right now, this mostly uses JSDocInfo to infer type information about
 * functions. In the long term, developers should extend it to use other
 * signals by overloading the various "inferXXX" methods. For example, we
 * might want to use {@code goog.inherits} calls as a signal for inheritance, or
 * {@code return} statements as a signal for return type.
 *
 * NOTE(nicksantos): Organizationally, this feels like it should be in Rhino.
 * But it depends on some coding convention stuff that's really part
 * of JSCompiler.
 *
 * @author nicksantos@google.com (Nick Santos)
 * @author pascallouis@google.com (Pascal-Louis Perez)
 */
final class FunctionTypeBuilder {

  private final String fnName;
  private final AbstractCompiler compiler;
  private final CodingConvention codingConvention;
  private final JSTypeRegistry typeRegistry;
  private final Node errorRoot;
  private final String sourceName;
  private final Scope scope;

  int PROBE_START_LINE_80 = 80;

private com.google.javascript.jscomp.FunctionTypeBuilder.FunctionContents function_type_builder_1_expr1_line_80 = UnknownFunctionContents
		.get();

int PROBE_END_LINE_80 = 80;

private FunctionContents contents = function_type_builder_1_expr1_line_80;

  private JSType returnType = null;
  private boolean returnTypeInferred = false;
  private List<ObjectType> implementedInterfaces = null;
  private List<ObjectType> extendedInterfaces = null;
  private ObjectType baseType = null;
  private JSType thisType = null;
  private boolean isConstructor = false;
  private boolean makesStructs = false;
  private boolean makesDicts = false;
  private boolean isInterface = false;
  private Node parametersNode = null;
  int PROBE_START_LINE_93 = 93;

private ImmutableList<com.google.javascript.rhino.jstype.TemplateType> function_type_builder_1_expr2_line_93 = ImmutableList
		.of();

int PROBE_END_LINE_93 = 93;

private ImmutableList<TemplateType> templateTypeNames = function_type_builder_1_expr2_line_93;
  int PROBE_START_LINE_96 = 96;

private ImmutableList<com.google.javascript.rhino.jstype.TemplateType> function_type_builder_1_expr3_line_96 = ImmutableList
		.of();

int PROBE_END_LINE_96 = 96;

// TODO(johnlenz): verify we want both template and class template lists instead of a unified
  // list.
  private ImmutableList<TemplateType> classTemplateTypeNames = function_type_builder_1_expr3_line_96;

  int PROBE_START_LINE_98 = 100;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr4_line_98 = DiagnosticType
		.warning("JSC_EXTENDS_WITHOUT_TYPEDEF", "@extends used without @constructor or @interface for {0}");

int PROBE_END_LINE_98 = 100;

static final DiagnosticType EXTENDS_WITHOUT_TYPEDEF = function_type_builder_1_expr4_line_98;

  int PROBE_START_LINE_102 = 104;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr5_line_102 = DiagnosticType
		.warning("JSC_EXTENDS_NON_OBJECT", "{0} @extends non-object type {1}");

int PROBE_END_LINE_102 = 104;

static final DiagnosticType EXTENDS_NON_OBJECT = function_type_builder_1_expr5_line_102;

  int PROBE_START_LINE_106 = 108;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr6_line_106 = DiagnosticType
		.warning("JSC_RESOLVED_TAG_EMPTY", "Could not resolve type in {0} tag of {1}");

int PROBE_END_LINE_106 = 108;

static final DiagnosticType RESOLVED_TAG_EMPTY = function_type_builder_1_expr6_line_106;

  static final DiagnosticType IMPLEMENTS_WITHOUT_CONSTRUCTOR =
      DiagnosticType.warning(
          "JSC_IMPLEMENTS_WITHOUT_CONSTRUCTOR",
          "@implements used without @constructor or @interface for {0}");

  static final DiagnosticType CONSTRUCTOR_REQUIRED =
      DiagnosticType.warning("JSC_CONSTRUCTOR_REQUIRED",
                             "{0} used without @constructor for {1}");

  int PROBE_START_LINE_119 = 121;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr9_line_119 = DiagnosticType
		.warning("JSC_VAR_ARGS_MUST_BE_LAST", "variable length argument must be last");

int PROBE_END_LINE_119 = 121;

static final DiagnosticType VAR_ARGS_MUST_BE_LAST = function_type_builder_1_expr9_line_119;

  int PROBE_START_LINE_123 = 125;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr10_line_123 = DiagnosticType
		.warning("JSC_OPTIONAL_ARG_AT_END", "optional arguments must be at the end");

int PROBE_END_LINE_123 = 125;

static final DiagnosticType OPTIONAL_ARG_AT_END = function_type_builder_1_expr10_line_123;

  int PROBE_START_LINE_127 = 129;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr11_line_127 = DiagnosticType
		.warning("JSC_INEXISTANT_PARAM", "parameter {0} does not appear in {1}''s parameter list");

int PROBE_END_LINE_127 = 129;

static final DiagnosticType INEXISTANT_PARAM = function_type_builder_1_expr11_line_127;

  int PROBE_START_LINE_131 = 135;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr12_line_131 = DiagnosticType
		.warning("JSC_TYPE_REDEFINITION",
				"attempted re-definition of type {0}\n" + "found   : {1}\n" + "expected: {2}");

int PROBE_END_LINE_131 = 135;

static final DiagnosticType TYPE_REDEFINITION = function_type_builder_1_expr12_line_131;

  int PROBE_START_LINE_137 = 139;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr14_line_137 = DiagnosticType
		.warning("JSC_TEMPLATE_TYPE_DUPLICATED", "Only one parameter type must be the template type");

int PROBE_END_LINE_137 = 139;

static final DiagnosticType TEMPLATE_TYPE_DUPLICATED = function_type_builder_1_expr14_line_137;

  int PROBE_START_LINE_141 = 143;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr15_line_141 = DiagnosticType
		.warning("JSC_TEMPLATE_TYPE_EXPECTED", "The template type must be a parameter type");

int PROBE_END_LINE_141 = 143;

static final DiagnosticType TEMPLATE_TYPE_EXPECTED = function_type_builder_1_expr15_line_141;

  static final DiagnosticType THIS_TYPE_NON_OBJECT =
      DiagnosticType.warning(
          "JSC_THIS_TYPE_NON_OBJECT",
          "@this type of a function must be an object\n" +
          "Actual type: {0}");

  static final DiagnosticType SAME_INTERFACE_MULTIPLE_IMPLEMENTS =
      DiagnosticType.warning(
          "JSC_SAME_INTERFACE_MULTIPLE_IMPLEMENTS",
          "Cannot @implement the same interface more than once\n" +
          "Repeated interface: {0}");

  private class ExtendedTypeValidator implements Predicate<JSType> {
    @Override
    public boolean apply(JSType type) {
      ObjectType objectType = ObjectType.cast(type);
      if (objectType == null) {
        reportWarning(EXTENDS_NON_OBJECT, formatFnName(), type.toString());
        return false;
      } else if (objectType.isEmptyType()) {
        reportWarning(RESOLVED_TAG_EMPTY, "@extends", formatFnName());
        return false;
      } else if (objectType.isUnknownType()) {
        if (hasMoreTagsToResolve(objectType)) {
          return true;
        } else {
          reportWarning(RESOLVED_TAG_EMPTY, "@extends", fnName);
          return false;
        }
      } else {
        return true;
      }
    }
  }

  private class ImplementedTypeValidator implements Predicate<JSType> {
    @Override
    public boolean apply(JSType type) {
      ObjectType objectType = ObjectType.cast(type);
      if (objectType == null) {
        reportError(BAD_IMPLEMENTED_TYPE, fnName);
        return false;
      } else if (objectType.isEmptyType()) {
        reportWarning(RESOLVED_TAG_EMPTY, "@implements", fnName);
        return false;
      } else if (objectType.isUnknownType()) {
        if (hasMoreTagsToResolve(objectType)) {
          return true;
        } else {
          reportWarning(RESOLVED_TAG_EMPTY, "@implements", fnName);
          return false;
        }
      } else {
        return true;
      }
    }
  }

  /**
   * @param fnName The function name.
   * @param compiler The compiler.
   * @param errorRoot The node to associate with any warning generated by
   *     this builder.
   * @param sourceName A source name for associating any warnings that
   *     we have to emit.
   * @param scope The syntactic scope.
   */
  FunctionTypeBuilder(String fnName, AbstractCompiler compiler,
      Node errorRoot, String sourceName, Scope scope) {
    int PROBE_START_LINE_214 = 214;
		com.google.javascript.rhino.Node p_error_root_1873_line_214 = errorRoot;
		int PROBE_END_LINE_214 = 214;
	Preconditions.checkNotNull(p_error_root_1873_line_214);

    int PROBE_START_LINE_216 = 216;
	String p_fn_name_1871_line_216 = fnName;
	boolean function_type_builder_1_expr23_line_216 = p_fn_name_1871_line_216 == null;
	String p_fn_name_1871_line_216_v1 = null;
	if (!function_type_builder_1_expr23_line_216) {
		p_fn_name_1871_line_216_v1 = fnName;
	}
	String function_type_builder_1_expr21_line_216 = function_type_builder_1_expr23_line_216
			? ""
			: p_fn_name_1871_line_216_v1;
	int PROBE_END_LINE_216 = 216;
	this.fnName = function_type_builder_1_expr21_line_216;
    int PROBE_START_LINE_217 = 217;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_1872_line_217 = compiler;
	com.google.javascript.jscomp.CodingConvention function_type_builder_1_expr26_line_217 = p_compiler_1872_line_217
			.getCodingConvention();
	int PROBE_END_LINE_217 = 217;
	this.codingConvention = function_type_builder_1_expr26_line_217;
    int PROBE_START_LINE_218 = 218;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_1872_line_218 = compiler;
	com.google.javascript.rhino.jstype.JSTypeRegistry function_type_builder_1_expr30_line_218 = p_compiler_1872_line_218
			.getTypeRegistry();
	int PROBE_END_LINE_218 = 218;
	this.typeRegistry = function_type_builder_1_expr30_line_218;
    int PROBE_START_LINE_219 = 219;
	com.google.javascript.rhino.Node p_error_root_1873_line_219 = errorRoot;
	int PROBE_END_LINE_219 = 219;
	this.errorRoot = p_error_root_1873_line_219;
    int PROBE_START_LINE_220 = 220;
	String p_source_name_1874_line_220 = sourceName;
	int PROBE_END_LINE_220 = 220;
	this.sourceName = p_source_name_1874_line_220;
    int PROBE_START_LINE_221 = 221;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_1872_line_221 = compiler;
	int PROBE_END_LINE_221 = 221;
	this.compiler = p_compiler_1872_line_221;
    int PROBE_START_LINE_222 = 222;
	com.google.javascript.jscomp.Scope p_scope_1875_line_222 = scope;
	int PROBE_END_LINE_222 = 222;
	this.scope = p_scope_1875_line_222;
  }

  /** Format the function name for use in warnings. */
  String formatFnName() {
    return fnName.isEmpty() ? "<anonymous>" : fnName;
  }

  /**
   * Sets the contents of this function.
   */
  FunctionTypeBuilder setContents(@Nullable FunctionContents contents) {
    int PROBE_START_LINE_234 = 236;
	com.google.javascript.jscomp.FunctionTypeBuilder.FunctionContents p_contents_1883_line_234 = contents;
	boolean function_type_builder_1_expr44_line_234 = p_contents_1883_line_234 != null;
	int PROBE_END_LINE_234 = 236;
	if (function_type_builder_1_expr44_line_234) {
      int PROBE_START_LINE_235 = 235;
		com.google.javascript.jscomp.FunctionTypeBuilder.FunctionContents p_contents_1883_line_235 = contents;
		int PROBE_END_LINE_235 = 235;
	this.contents = p_contents_1883_line_235;
    }
    return this;
  }

  /**
   * Infer the parameter and return types of a function from
   * the parameter and return types of the function it is overriding.
   *
   * @param oldType The function being overridden. Does nothing if this is null.
   * @param paramsParent The LP node of the function that we're assigning to.
   *     If null, that just means we're not initializing this to a function
   *     literal.
   */
  FunctionTypeBuilder inferFromOverriddenFunction(
      @Nullable FunctionType oldType, @Nullable Node paramsParent) {
    int PROBE_START_LINE_251 = 253;
		com.google.javascript.rhino.jstype.FunctionType p_old_type_1884_line_251 = oldType;
		boolean function_type_builder_1_expr49_line_251 = p_old_type_1884_line_251 == null;
		int PROBE_END_LINE_251 = 253;
	if (function_type_builder_1_expr49_line_251) {
      return this;
    }

    returnType = oldType.getReturnType();
    returnTypeInferred = oldType.isReturnTypeInferred();
    if (paramsParent == null) {
      // Not a function literal.
      parametersNode = oldType.getParametersNode();
      if (parametersNode == null) {
        parametersNode = new FunctionParamBuilder(typeRegistry).build();
      }
    } else {
      // We're overriding with a function literal. Apply type information
      // to each parameter of the literal.
      FunctionParamBuilder paramBuilder =
          new FunctionParamBuilder(typeRegistry);
      Iterator<Node> oldParams = oldType.getParameters().iterator();
      boolean warnedAboutArgList = false;
      boolean oldParamsListHitOptArgs = false;
      for (Node currentParam = paramsParent.getFirstChild();
           currentParam != null; currentParam = currentParam.getNext()) {
        if (oldParams.hasNext()) {
          Node oldParam = oldParams.next();
          Node newParam = paramBuilder.newParameterFromNode(oldParam);

          oldParamsListHitOptArgs = oldParamsListHitOptArgs ||
              oldParam.isVarArgs() ||
              oldParam.isOptionalArg();

          // The subclass method might write its var_args as individual
          // arguments.
          if (currentParam.getNext() != null && newParam.isVarArgs()) {
            newParam.setVarArgs(false);
            newParam.setOptionalArg(true);
          }
        } else {
          warnedAboutArgList |= addParameter(
              paramBuilder,
              typeRegistry.getNativeType(UNKNOWN_TYPE),
              warnedAboutArgList,
              codingConvention.isOptionalParameter(currentParam) ||
                  oldParamsListHitOptArgs,
              codingConvention.isVarArgsParameter(currentParam));
        }
      }

      // Clone any remaining params that aren't in the function literal,
      // but make them optional.
      while (oldParams.hasNext()) {
        paramBuilder.newOptionalParameterFromNode(oldParams.next());
      }

      parametersNode = paramBuilder.build();
    }
    return this;
  }

  /**
   * Infer the return type from JSDocInfo.
   */
  FunctionTypeBuilder inferReturnType(@Nullable JSDocInfo info) {
    int PROBE_START_LINE_313 = 316;
	com.google.javascript.rhino.JSDocInfo p_info_1886_line_313 = info;
	boolean function_type_builder_1_expr52_line_313 = p_info_1886_line_313 != null;
	boolean function_type_builder_1_expr53_line_313 = true;
	if (function_type_builder_1_expr52_line_313) {
		com.google.javascript.rhino.JSDocInfo p_info_1886_line_313_v1 = info;
		function_type_builder_1_expr53_line_313 = p_info_1886_line_313_v1.hasReturnType();
	}
	boolean function_type_builder_1_expr51_line_313 = function_type_builder_1_expr52_line_313
			&& function_type_builder_1_expr53_line_313;
	int PROBE_END_LINE_313 = 316;
	if (function_type_builder_1_expr51_line_313) {
      returnType = info.getReturnType().evaluate(scope, typeRegistry);
      returnTypeInferred = false;
    }

    return this;
  }

  /**
   * Infer the role of the function (whether it's a constructor or interface)
   * and what it inherits from in JSDocInfo.
   */
  FunctionTypeBuilder inferInheritance(@Nullable JSDocInfo info) {
    int PROBE_START_LINE_326 = 413;
	com.google.javascript.rhino.JSDocInfo p_info_1887_line_326 = info;
	boolean function_type_builder_1_expr55_line_326 = p_info_1887_line_326 != null;
	int PROBE_END_LINE_326 = 413;
	if (function_type_builder_1_expr55_line_326) {
      int PROBE_START_LINE_327 = 327;
		com.google.javascript.rhino.JSDocInfo p_info_1887_line_327 = info;
		boolean function_type_builder_1_expr57_line_327 = p_info_1887_line_327.isConstructor();
		int PROBE_END_LINE_327 = 327;
	isConstructor = function_type_builder_1_expr57_line_327;
      int PROBE_START_LINE_328 = 328;
	com.google.javascript.rhino.JSDocInfo p_info_1887_line_328 = info;
	boolean function_type_builder_1_expr59_line_328 = p_info_1887_line_328.makesStructs();
	int PROBE_END_LINE_328 = 328;
	makesStructs = function_type_builder_1_expr59_line_328;
      int PROBE_START_LINE_329 = 329;
	com.google.javascript.rhino.JSDocInfo p_info_1887_line_329 = info;
	boolean function_type_builder_1_expr61_line_329 = p_info_1887_line_329.makesDicts();
	int PROBE_END_LINE_329 = 329;
	makesDicts = function_type_builder_1_expr61_line_329;
      int PROBE_START_LINE_330 = 330;
	com.google.javascript.rhino.JSDocInfo p_info_1887_line_330 = info;
	boolean function_type_builder_1_expr63_line_330 = p_info_1887_line_330.isInterface();
	int PROBE_END_LINE_330 = 330;
	isInterface = function_type_builder_1_expr63_line_330;

      int PROBE_START_LINE_332 = 336;
	boolean f_makes_structs_1850_line_332 = makesStructs;
	boolean function_type_builder_1_expr65_line_332 = true;
	if (f_makes_structs_1850_line_332) {
		boolean f_is_constructor_1849_line_332 = isConstructor;
		function_type_builder_1_expr65_line_332 = !f_is_constructor_1849_line_332;
	}
	boolean function_type_builder_1_expr64_line_332 = f_makes_structs_1850_line_332
			&& function_type_builder_1_expr65_line_332;
	int PROBE_END_LINE_332 = 336;
	if (function_type_builder_1_expr64_line_332) {
        reportWarning(CONSTRUCTOR_REQUIRED, "@struct", formatFnName());
      } else {
		int PROBE_START_LINE_334 = 336;
		boolean f_makes_dicts_1851_line_334 = makesDicts;
		boolean function_type_builder_1_expr67_line_334 = true;
		if (f_makes_dicts_1851_line_334) {
			boolean f_is_constructor_1849_line_334 = isConstructor;
			function_type_builder_1_expr67_line_334 = !f_is_constructor_1849_line_334;
		}
		boolean function_type_builder_1_expr66_line_334 = f_makes_dicts_1851_line_334
				&& function_type_builder_1_expr67_line_334;
		int PROBE_END_LINE_334 = 336;
		if (function_type_builder_1_expr66_line_334) {
			reportWarning(CONSTRUCTOR_REQUIRED, "@dict", formatFnName());
		}
	}

      int PROBE_START_LINE_340 = 340;
	com.google.javascript.rhino.JSDocInfo p_info_1887_line_340 = info;
	ImmutableList<String> function_type_builder_1_expr68_line_340 = p_info_1887_line_340.getTemplateTypeNames();
	int PROBE_END_LINE_340 = 340;
	// Class template types, which can be used in the scope of a constructor
      // definition.
      ImmutableList<String> typeParameters = function_type_builder_1_expr68_line_340;
      int PROBE_START_LINE_341 = 350;
	ImmutableList<String> v_type_parameters_1888_line_341 = typeParameters;
	boolean function_type_builder_1_expr70_line_341 = v_type_parameters_1888_line_341.isEmpty();
	boolean function_type_builder_1_expr69_line_341 = !function_type_builder_1_expr70_line_341;
	int PROBE_END_LINE_341 = 350;
	if (function_type_builder_1_expr69_line_341) {
        if (isConstructor || isInterface) {
          ImmutableList.Builder<TemplateType> builder = ImmutableList.builder();
          for (String typeParameter : typeParameters) {
            builder.add(typeRegistry.createTemplateType(typeParameter));
          }
          classTemplateTypeNames = builder.build();
          typeRegistry.setTemplateTypeNames(classTemplateTypeNames);
        }
      }

      int PROBE_START_LINE_353 = 364;
	com.google.javascript.rhino.JSDocInfo p_info_1887_line_353 = info;
	boolean function_type_builder_1_expr71_line_353 = p_info_1887_line_353.hasBaseType();
	int PROBE_END_LINE_353 = 364;
	// base type
      if (function_type_builder_1_expr71_line_353) {
        if (isConstructor) {
          JSType maybeBaseType =
              info.getBaseType().evaluate(scope, typeRegistry);
          if (maybeBaseType != null &&
              maybeBaseType.setValidator(new ExtendedTypeValidator())) {
            baseType = (ObjectType) maybeBaseType;
          }
        } else {
          reportWarning(EXTENDS_WITHOUT_TYPEDEF, formatFnName());
        }
      }

      int PROBE_START_LINE_367 = 399;
	com.google.javascript.rhino.JSDocInfo p_info_1887_line_367 = info;
	int function_type_builder_1_expr73_line_367 = p_info_1887_line_367.getImplementedInterfaceCount();
	boolean function_type_builder_1_expr72_line_367 = function_type_builder_1_expr73_line_367 > 0;
	int PROBE_END_LINE_367 = 399;
	// Implemented interfaces (for constructors only).
      if (function_type_builder_1_expr72_line_367) {
        if (isConstructor) {
          implementedInterfaces = Lists.newArrayList();
          Set<JSType> baseInterfaces = new HashSet<JSType>();
          for (JSTypeExpression t : info.getImplementedInterfaces()) {
            JSType maybeInterType = t.evaluate(scope, typeRegistry);

            if (maybeInterType != null &&
                maybeInterType.setValidator(new ImplementedTypeValidator())) {
              // Disallow implementing the same base (not templatized) interface
              // type more than once.
              JSType baseInterface = maybeInterType;
              if (baseInterface.toMaybeTemplatizedType() != null) {
                baseInterface =
                    baseInterface.toMaybeTemplatizedType().getReferencedType();
              }
              if (baseInterfaces.contains(baseInterface)) {
                reportWarning(SAME_INTERFACE_MULTIPLE_IMPLEMENTS,
                              baseInterface.toString());
              } else {
                baseInterfaces.add(baseInterface);
              }

              implementedInterfaces.add((ObjectType) maybeInterType);
            }
          }
        } else if (isInterface) {
          reportWarning(
              TypeCheck.CONFLICTING_IMPLEMENTED_TYPE, formatFnName());
        } else {
          reportWarning(CONSTRUCTOR_REQUIRED, "@implements", formatFnName());
        }
      }

      int PROBE_START_LINE_403 = 412;
	boolean f_is_interface_1852_line_403 = isInterface;
	int PROBE_END_LINE_403 = 412;
	// extended interfaces (for interfaces only)
      // We've already emitted a warning if this is not an interface.
      if (f_is_interface_1852_line_403) {
        int PROBE_START_LINE_404 = 404;
		ArrayList<com.google.javascript.rhino.jstype.ObjectType> function_type_builder_1_expr75_line_404 = Lists
				.newArrayList();
		int PROBE_END_LINE_404 = 404;
		extendedInterfaces = function_type_builder_1_expr75_line_404;
        int PROBE_START_LINE_405 = 411;
		com.google.javascript.rhino.JSDocInfo p_info_1887_line_405 = info;
		List<com.google.javascript.rhino.JSTypeExpression> function_type_builder_1_expr76_line_405 = p_info_1887_line_405
				.getExtendedInterfaces();
		int PROBE_END_LINE_405 = 411;
		for (JSTypeExpression t : function_type_builder_1_expr76_line_405) {
          JSType maybeInterfaceType = t.evaluate(scope, typeRegistry);
          if (maybeInterfaceType != null &&
              maybeInterfaceType.setValidator(new ExtendedTypeValidator())) {
            extendedInterfaces.add((ObjectType) maybeInterfaceType);
          }
        }
      }
    }

    return this;
  }

  /**
   * Infers the type of {@code this}.
   * @param type The type of this if the info is missing.
   */
  FunctionTypeBuilder inferThisType(JSDocInfo info, JSType type) {
    int PROBE_START_LINE_424 = 424;
	com.google.javascript.rhino.JSDocInfo p_info_1890_line_424 = info;
	int PROBE_END_LINE_424 = 424;
	// Look at the @this annotation first.
    inferThisType(p_info_1890_line_424);

    int PROBE_START_LINE_426 = 431;
	com.google.javascript.rhino.jstype.JSType f_this_type_1848_line_426 = thisType;
	boolean function_type_builder_1_expr79_line_426 = f_this_type_1848_line_426 == null;
	int PROBE_END_LINE_426 = 431;
	if (function_type_builder_1_expr79_line_426) {
      int PROBE_START_LINE_427 = 427;
		com.google.javascript.rhino.jstype.JSType p_type_1891_line_427 = type;
		ObjectType function_type_builder_1_expr80_line_427 = ObjectType.cast(p_type_1891_line_427);
		int PROBE_END_LINE_427 = 427;
	ObjectType objType = function_type_builder_1_expr80_line_427;
      int PROBE_START_LINE_428 = 430;
	com.google.javascript.rhino.jstype.ObjectType v_obj_type_1892_line_428 = objType;
	boolean function_type_builder_1_expr82_line_428 = v_obj_type_1892_line_428 != null;
	boolean function_type_builder_1_expr83_line_428 = true;
	if (function_type_builder_1_expr82_line_428) {
		com.google.javascript.rhino.JSDocInfo p_info_1890_line_428 = info;
		boolean function_type_builder_1_expr85_line_428 = p_info_1890_line_428 == null;
		boolean function_type_builder_1_expr86_line_428 = false;
		if (!function_type_builder_1_expr85_line_428) {
			com.google.javascript.rhino.JSDocInfo p_info_1890_line_428_v1 = info;
			boolean function_type_builder_1_expr87_line_428 = p_info_1890_line_428_v1.hasType();
			function_type_builder_1_expr86_line_428 = !function_type_builder_1_expr87_line_428;
		}
		boolean function_type_builder_1_expr84_line_428 = function_type_builder_1_expr85_line_428
				|| function_type_builder_1_expr86_line_428;
		function_type_builder_1_expr83_line_428 = (function_type_builder_1_expr84_line_428);
	}
	boolean function_type_builder_1_expr81_line_428 = function_type_builder_1_expr82_line_428
			&& function_type_builder_1_expr83_line_428;
	int PROBE_END_LINE_428 = 430;
	if (function_type_builder_1_expr81_line_428) {
        int PROBE_START_LINE_429 = 429;
		com.google.javascript.rhino.jstype.ObjectType v_obj_type_1892_line_429 = objType;
		int PROBE_END_LINE_429 = 429;
		thisType = v_obj_type_1892_line_429;
      }
    }

    return this;
  }

  /**
   * Infers the type of {@code this}.
   * @param info The JSDocInfo for this function.
   */
  FunctionTypeBuilder inferThisType(JSDocInfo info) {
    JSType maybeThisType = null;
    int PROBE_START_LINE_442 = 448;
	com.google.javascript.rhino.JSDocInfo p_info_1893_line_442 = info;
	boolean function_type_builder_1_expr91_line_442 = p_info_1893_line_442 != null;
	boolean function_type_builder_1_expr92_line_442 = true;
	if (function_type_builder_1_expr91_line_442) {
		com.google.javascript.rhino.JSDocInfo p_info_1893_line_442_v1 = info;
		function_type_builder_1_expr92_line_442 = p_info_1893_line_442_v1.hasThisType();
	}
	boolean function_type_builder_1_expr90_line_442 = function_type_builder_1_expr91_line_442
			&& function_type_builder_1_expr92_line_442;
	int PROBE_END_LINE_442 = 448;
	if (function_type_builder_1_expr90_line_442) {
      // TODO(johnlenz): In ES5 strict mode a function can have a null or
      // undefined "this" value, but all the existing "@this" annotations
      // don't declare restricted types.
      maybeThisType = info.getThisType().evaluate(scope, typeRegistry)
          .restrictByNotNullOrUndefined();
    }
    int PROBE_START_LINE_449 = 451;
	com.google.javascript.rhino.jstype.JSType v_maybe_this_type_1894_line_449 = maybeThisType;
	boolean function_type_builder_1_expr93_line_449 = v_maybe_this_type_1894_line_449 != null;
	int PROBE_END_LINE_449 = 451;
	if (function_type_builder_1_expr93_line_449) {
      thisType = maybeThisType;
    }

    return this;
  }

  /**
   * Infer the parameter types from the doc info alone.
   */
  FunctionTypeBuilder inferParameterTypes(JSDocInfo info) {
    // Create a fake args parent.
    Node lp = IR.paramList();
    for (String name : info.getParameterNames()) {
      lp.addChildToBack(IR.name(name));
    }

    return inferParameterTypes(lp, info);
  }

  /**
   * Infer the parameter types from the list of argument names and
   * the doc info.
   */
  FunctionTypeBuilder inferParameterTypes(@Nullable Node argsParent,
      @Nullable JSDocInfo info) {
    int PROBE_START_LINE_475 = 481;
		com.google.javascript.rhino.Node p_args_parent_1896_line_475 = argsParent;
		boolean function_type_builder_1_expr95_line_475 = p_args_parent_1896_line_475 == null;
		int PROBE_END_LINE_475 = 481;
	if (function_type_builder_1_expr95_line_475) {
      if (info == null) {
        return this;
      } else {
        return inferParameterTypes(info);
      }
    }

    // arguments
    Node oldParameterType = null;
    int PROBE_START_LINE_485 = 487;
	com.google.javascript.rhino.Node f_parameters_node_1853_line_485 = parametersNode;
	boolean function_type_builder_1_expr96_line_485 = f_parameters_node_1853_line_485 != null;
	int PROBE_END_LINE_485 = 487;
	if (function_type_builder_1_expr96_line_485) {
      oldParameterType = parametersNode.getFirstChild();
    }

    int PROBE_START_LINE_489 = 489;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1878_line_489 = typeRegistry;
	int PROBE_END_LINE_489 = 489;
	FunctionParamBuilder builder = new FunctionParamBuilder(f_type_registry_1878_line_489);
    boolean warnedAboutArgList = false;
    int PROBE_START_LINE_491 = 493;
	com.google.javascript.rhino.JSDocInfo p_info_1897_line_491 = info;
	boolean function_type_builder_1_expr102_line_491 = p_info_1897_line_491 == null;
	boolean function_type_builder_1_expr99_line_491 = (function_type_builder_1_expr102_line_491);
	Set<String> function_type_builder_1_expr98_line_491 = function_type_builder_1_expr99_line_491
			? Sets.<String>newHashSet()
			: Sets.newHashSet(info.getParameterNames());
	int PROBE_END_LINE_491 = 493;
	Set<String> allJsDocParams = function_type_builder_1_expr98_line_491;
    boolean isVarArgs = false;
    int PROBE_START_LINE_495 = 527;
	com.google.javascript.rhino.Node p_args_parent_1896_line_495 = argsParent;
	Iterable<com.google.javascript.rhino.Node> function_type_builder_1_expr103_line_495 = p_args_parent_1896_line_495
			.children();
	int PROBE_END_LINE_495 = 527;
	for (Node arg : function_type_builder_1_expr103_line_495) {
      String argumentName = arg.getString();
      allJsDocParams.remove(argumentName);

      // type from JSDocInfo
      JSType parameterType = null;
      boolean isOptionalParam = isOptionalParameter(arg, info);
      isVarArgs = isVarArgsParameter(arg, info);

      if (info != null && info.hasParameterType(argumentName)) {
        parameterType =
            info.getParameterType(argumentName).evaluate(scope, typeRegistry);
      } else if (arg.getJSDocInfo() != null && arg.getJSDocInfo().hasType()) {
        parameterType =
            arg.getJSDocInfo().getType().evaluate(scope, typeRegistry);
      } else if (oldParameterType != null &&
          oldParameterType.getJSType() != null) {
        parameterType = oldParameterType.getJSType();
        isOptionalParam = oldParameterType.isOptionalArg();
        isVarArgs = oldParameterType.isVarArgs();
      } else {
        parameterType = typeRegistry.getNativeType(UNKNOWN_TYPE);
      }

      warnedAboutArgList |= addParameter(
          builder, parameterType, warnedAboutArgList,
          isOptionalParam,
          isVarArgs);

      if (oldParameterType != null) {
        oldParameterType = oldParameterType.getNext();
      }
    }

    int PROBE_START_LINE_530 = 535;
	boolean v_is_var_args_1902_line_530 = isVarArgs;
	boolean function_type_builder_1_expr104_line_530 = !v_is_var_args_1902_line_530;
	int PROBE_END_LINE_530 = 535;
	// Copy over any old parameters that aren't in the param list.
    if (function_type_builder_1_expr104_line_530) {
      while (true) {
        int PROBE_START_LINE_531 = 531;
		com.google.javascript.rhino.Node v_old_parameter_type_1898_line_531 = oldParameterType;
		boolean function_type_builder_1_expr106_line_531 = v_old_parameter_type_1898_line_531 != null;
		boolean function_type_builder_1_expr107_line_531 = true;
		if (function_type_builder_1_expr106_line_531) {
			boolean v_is_var_args_1902_line_531 = isVarArgs;
			function_type_builder_1_expr107_line_531 = !v_is_var_args_1902_line_531;
		}
		boolean function_type_builder_1_expr105_line_531 = function_type_builder_1_expr106_line_531
				&& function_type_builder_1_expr107_line_531;
		if (!(function_type_builder_1_expr105_line_531)) {
			break;
		}
		int PROBE_END_LINE_531 = 531;
		builder.newParameterFromNode(oldParameterType);
        oldParameterType = oldParameterType.getNext();
      }
    }

    int PROBE_START_LINE_537 = 539;
	Set<String> v_all_js_doc_params_1901_line_537 = allJsDocParams;
	int PROBE_END_LINE_537 = 539;
	for (String inexistentName : v_all_js_doc_params_1901_line_537) {
      reportWarning(INEXISTANT_PARAM, inexistentName, formatFnName());
    }

    int PROBE_START_LINE_541 = 541;
	com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_1899_line_541 = builder;
	com.google.javascript.rhino.Node function_type_builder_1_expr109_line_541 = v_builder_1899_line_541.build();
	int PROBE_END_LINE_541 = 541;
	parametersNode = function_type_builder_1_expr109_line_541;
    return this;
  }

  /**
   * @return Whether the given param is an optional param.
   */
  private boolean isOptionalParameter(
      Node param, @Nullable JSDocInfo info) {
    if (codingConvention.isOptionalParameter(param)) {
      return true;
    }

    String paramName = param.getString();
    return info != null && info.hasParameterType(paramName) &&
        info.getParameterType(paramName).isOptionalArg();
  }

  /**
   * Determine whether this is a var args parameter.
   * @return Whether the given param is a var args param.
   */
  private boolean isVarArgsParameter(
      Node param, @Nullable JSDocInfo info) {
    if (codingConvention.isVarArgsParameter(param)) {
      return true;
    }

    String paramName = param.getString();
    return info != null && info.hasParameterType(paramName) &&
        info.getParameterType(paramName).isVarArgs();
  }

  /**
   * Infer the template type from the doc info.
   */
  FunctionTypeBuilder inferTemplateTypeName(
      @Nullable JSDocInfo info, JSType ownerType) {
    int PROBE_START_LINE_579 = 587;
		com.google.javascript.rhino.JSDocInfo p_info_1909_line_579 = info;
		boolean function_type_builder_1_expr112_line_579 = p_info_1909_line_579 != null;
		boolean function_type_builder_1_expr113_line_579 = true;
		if (function_type_builder_1_expr112_line_579) {
			com.google.javascript.rhino.JSDocInfo p_info_1909_line_579_v1 = info;
			ImmutableList<String> function_type_builder_1_expr115_line_579 = p_info_1909_line_579_v1
					.getTemplateTypeNames();
			boolean function_type_builder_1_expr114_line_579 = function_type_builder_1_expr115_line_579.isEmpty();
			function_type_builder_1_expr113_line_579 = !function_type_builder_1_expr114_line_579;
		}
		boolean function_type_builder_1_expr111_line_579 = function_type_builder_1_expr112_line_579
				&& function_type_builder_1_expr113_line_579;
		int PROBE_END_LINE_579 = 587;
	if (function_type_builder_1_expr111_line_579) {
      ImmutableList.Builder<TemplateType> builder = ImmutableList.builder();
      for (String key : info.getTemplateTypeNames()) {
        builder.add(typeRegistry.createTemplateType(key));
      }
      templateTypeNames = builder.build();
    } else {
      int PROBE_START_LINE_586 = 586;
		ImmutableList<com.google.javascript.rhino.jstype.TemplateType> function_type_builder_1_expr117_line_586 = ImmutableList
				.of();
		int PROBE_END_LINE_586 = 586;
	templateTypeNames = function_type_builder_1_expr117_line_586;
    }

    int PROBE_START_LINE_589 = 589;
	ImmutableList<TemplateType> f_template_type_names_1854_line_589 = templateTypeNames;
	int PROBE_END_LINE_589 = 589;
	ImmutableList<TemplateType> keys = f_template_type_names_1854_line_589;
    int PROBE_START_LINE_590 = 599;
	com.google.javascript.rhino.jstype.JSType p_owner_type_1910_line_590 = ownerType;
	boolean function_type_builder_1_expr118_line_590 = p_owner_type_1910_line_590 != null;
	int PROBE_END_LINE_590 = 599;
	if (function_type_builder_1_expr118_line_590) {
      ImmutableList<TemplateType> ownerTypeKeys =
          ownerType.getTemplateTypeMap().getTemplateKeys();
      int PROBE_START_LINE_593 = 598;
	ImmutableList<com.google.javascript.rhino.jstype.TemplateType> v_owner_type_keys_1912_line_593 = ownerTypeKeys;
	boolean function_type_builder_1_expr121_line_593 = v_owner_type_keys_1912_line_593.isEmpty();
	boolean function_type_builder_1_expr120_line_593 = !function_type_builder_1_expr121_line_593;
	int PROBE_END_LINE_593 = 598;
	if (function_type_builder_1_expr120_line_593) {
        ImmutableList.Builder<TemplateType> builder = ImmutableList.builder();
        builder.addAll(templateTypeNames);
        builder.addAll(ownerTypeKeys);
        keys = builder.build();
      }
    }

    int PROBE_START_LINE_601 = 603;
	ImmutableList<com.google.javascript.rhino.jstype.TemplateType> v_keys_1911_line_601 = keys;
	boolean function_type_builder_1_expr123_line_601 = v_keys_1911_line_601.isEmpty();
	boolean function_type_builder_1_expr122_line_601 = !function_type_builder_1_expr123_line_601;
	int PROBE_END_LINE_601 = 603;
	if (function_type_builder_1_expr122_line_601) {
      typeRegistry.setTemplateTypeNames(keys);
    }
    return this;
  }

  /**
   * Add a parameter to the param list.
   * @param builder A builder.
   * @param paramType The parameter type.
   * @param warnedAboutArgList Whether we've already warned about arg ordering
   *     issues (like if optional args appeared before required ones).
   * @param isOptional Is this an optional parameter?
   * @param isVarArgs Is this a var args parameter?
   * @return Whether a warning was emitted.
   */
  private boolean addParameter(FunctionParamBuilder builder,
      JSType paramType, boolean warnedAboutArgList,
      boolean isOptional, boolean isVarArgs) {
    boolean emittedWarning = false;
    if (isOptional) {
      // Remembering that an optional parameter has been encountered
      // so that if a non optional param is encountered later, an
      // error can be reported.
      if (!builder.addOptionalParams(paramType) && !warnedAboutArgList) {
        reportWarning(VAR_ARGS_MUST_BE_LAST);
        emittedWarning = true;
      }
    } else if (isVarArgs) {
      if (!builder.addVarArgs(paramType) && !warnedAboutArgList) {
        reportWarning(VAR_ARGS_MUST_BE_LAST);
        emittedWarning = true;
      }
    } else {
      if (!builder.addRequiredParams(paramType) && !warnedAboutArgList) {
        // An optional parameter was seen and this argument is not an optional
        // or var arg so it is an error.
        if (builder.hasVarArgs()) {
          reportWarning(VAR_ARGS_MUST_BE_LAST);
        } else {
          reportWarning(OPTIONAL_ARG_AT_END);
        }
        emittedWarning = true;
      }
    }
    return emittedWarning;
  }

  /**
   * Builds the function type, and puts it in the registry.
   */
  FunctionType buildAndRegister() {
    int PROBE_START_LINE_653 = 670;
	com.google.javascript.rhino.jstype.JSType f_return_type_1843_line_653 = returnType;
	boolean function_type_builder_1_expr125_line_653 = f_return_type_1843_line_653 == null;
	int PROBE_END_LINE_653 = 670;
	if (function_type_builder_1_expr125_line_653) {
      int PROBE_START_LINE_664 = 669;
		com.google.javascript.jscomp.FunctionTypeBuilder.FunctionContents f_contents_1842_line_664 = contents;
		boolean function_type_builder_1_expr128_line_664 = f_contents_1842_line_664.mayHaveNonEmptyReturns();
		boolean function_type_builder_1_expr127_line_664 = !function_type_builder_1_expr128_line_664;
		boolean function_type_builder_1_expr126_line_664 = function_type_builder_1_expr127_line_664
				&& !contents.mayHaveSingleThrow() && !contents.mayBeFromExterns();
		int PROBE_END_LINE_664 = 669;
	// Infer return types.
      // We need to be extremely conservative about this, because of two
      // competing needs.
      // 1) If we infer the return type of f too widely, then we won't be able
      //    to assign f to other functions.
      // 2) If we infer the return type of f too narrowly, then we won't be
      //    able to override f in subclasses.
      // So we only infer in cases where the user doesn't expect to write
      // @return annotations--when it's very obvious that the function returns
      // nothing.
      if (function_type_builder_1_expr126_line_664) {
        int PROBE_START_LINE_667 = 667;
			com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1878_line_667 = typeRegistry;
			com.google.javascript.rhino.jstype.JSTypeNative f_void_type_1918_line_667 = VOID_TYPE;
			com.google.javascript.rhino.jstype.JSType function_type_builder_1_expr130_line_667 = f_type_registry_1878_line_667
					.getNativeType(f_void_type_1918_line_667);
			int PROBE_END_LINE_667 = 667;
		returnType = function_type_builder_1_expr130_line_667;
        returnTypeInferred = true;
      }
    }

    int PROBE_START_LINE_672 = 674;
	com.google.javascript.rhino.jstype.JSType f_return_type_1843_line_672 = returnType;
	boolean function_type_builder_1_expr132_line_672 = f_return_type_1843_line_672 == null;
	int PROBE_END_LINE_672 = 674;
	if (function_type_builder_1_expr132_line_672) {
      returnType = typeRegistry.getNativeType(UNKNOWN_TYPE);
    }

    int PROBE_START_LINE_676 = 679;
	com.google.javascript.rhino.Node f_parameters_node_1853_line_676 = parametersNode;
	boolean function_type_builder_1_expr133_line_676 = f_parameters_node_1853_line_676 == null;
	int PROBE_END_LINE_676 = 679;
	if (function_type_builder_1_expr133_line_676) {
      throw new IllegalStateException(
          "All Function types must have params and a return type");
    }

    FunctionType fnType = null;
    int PROBE_START_LINE_682 = 701;
	boolean f_is_constructor_1849_line_682 = isConstructor;
	int PROBE_END_LINE_682 = 701;
	if (f_is_constructor_1849_line_682) {
      fnType = getOrCreateConstructor();
    } else {
		int PROBE_START_LINE_684 = 701;
		boolean f_is_interface_1852_line_684 = isInterface;
		int PROBE_END_LINE_684 = 701;
		if (f_is_interface_1852_line_684) {
			int PROBE_START_LINE_685 = 686;
			com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1878_line_685 = typeRegistry;
			com.google.javascript.rhino.jstype.FunctionType function_type_builder_1_expr135_line_685 = f_type_registry_1878_line_685
					.createInterfaceType(fnName, contents.getSourceNode(), classTemplateTypeNames);
			int PROBE_END_LINE_685 = 686;
			fnType = function_type_builder_1_expr135_line_685;
			int PROBE_START_LINE_687 = 689;
			com.google.javascript.jscomp.Scope function_type_builder_1_expr139_line_687 = getScopeDeclaredIn();
			boolean function_type_builder_1_expr138_line_687 = function_type_builder_1_expr139_line_687.isGlobal();
			boolean function_type_builder_1_expr140_line_687 = true;
			if (function_type_builder_1_expr138_line_687) {
				String f_fn_name_1876_line_687 = fnName;
				boolean function_type_builder_1_expr141_line_687 = f_fn_name_1876_line_687.isEmpty();
				function_type_builder_1_expr140_line_687 = !function_type_builder_1_expr141_line_687;
			}
			boolean function_type_builder_1_expr137_line_687 = function_type_builder_1_expr138_line_687
					&& function_type_builder_1_expr140_line_687;
			int PROBE_END_LINE_687 = 689;
			if (function_type_builder_1_expr137_line_687) {
				int PROBE_START_LINE_688 = 688;
				com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1878_line_688 = typeRegistry;
				String f_fn_name_1876_line_688 = fnName;
				com.google.javascript.rhino.jstype.FunctionType v_fn_type_1919_line_688 = fnType;
				com.google.javascript.rhino.jstype.ObjectType function_type_builder_1_expr143_line_688 = v_fn_type_1919_line_688
						.getInstanceType();
				int PROBE_END_LINE_688 = 688;
				f_type_registry_1878_line_688.declareType(f_fn_name_1876_line_688,
						function_type_builder_1_expr143_line_688);
			}
			int PROBE_START_LINE_690 = 690;
			com.google.javascript.rhino.jstype.FunctionType v_fn_type_1919_line_690 = fnType;
			int PROBE_END_LINE_690 = 690;
			maybeSetBaseType(v_fn_type_1919_line_690);
		} else {
			int PROBE_START_LINE_692 = 699;
			com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1878_line_692 = typeRegistry;
			com.google.javascript.rhino.jstype.FunctionBuilder function_type_builder_1_expr153_line_692 = new FunctionBuilder(
					f_type_registry_1878_line_692).withName(fnName);
			com.google.javascript.rhino.jstype.FunctionBuilder function_type_builder_1_expr151_line_692 = function_type_builder_1_expr153_line_692
					.withSourceNode(contents.getSourceNode());
			com.google.javascript.rhino.jstype.FunctionBuilder function_type_builder_1_expr150_line_692 = function_type_builder_1_expr151_line_692
					.withParamsNode(parametersNode);
			com.google.javascript.rhino.jstype.FunctionBuilder function_type_builder_1_expr149_line_692 = function_type_builder_1_expr150_line_692
					.withReturnType(returnType, returnTypeInferred);
			com.google.javascript.rhino.jstype.FunctionBuilder function_type_builder_1_expr148_line_692 = function_type_builder_1_expr149_line_692
					.withTypeOfThis(thisType);
			com.google.javascript.rhino.jstype.FunctionBuilder function_type_builder_1_expr147_line_692 = function_type_builder_1_expr148_line_692
					.withTemplateKeys(templateTypeNames);
			com.google.javascript.rhino.jstype.FunctionType function_type_builder_1_expr146_line_692 = function_type_builder_1_expr147_line_692
					.build();
			int PROBE_END_LINE_692 = 699;
			fnType = function_type_builder_1_expr146_line_692;
			int PROBE_START_LINE_700 = 700;
			com.google.javascript.rhino.jstype.FunctionType v_fn_type_1919_line_700 = fnType;
			int PROBE_END_LINE_700 = 700;
			maybeSetBaseType(v_fn_type_1919_line_700);
		}
	}

    int PROBE_START_LINE_703 = 705;
	List<com.google.javascript.rhino.jstype.ObjectType> f_implemented_interfaces_1845_line_703 = implementedInterfaces;
	boolean function_type_builder_1_expr156_line_703 = f_implemented_interfaces_1845_line_703 != null;
	int PROBE_END_LINE_703 = 705;
	if (function_type_builder_1_expr156_line_703) {
      fnType.setImplementedInterfaces(implementedInterfaces);
    }

    int PROBE_START_LINE_707 = 709;
	List<com.google.javascript.rhino.jstype.ObjectType> f_extended_interfaces_1846_line_707 = extendedInterfaces;
	boolean function_type_builder_1_expr157_line_707 = f_extended_interfaces_1846_line_707 != null;
	int PROBE_END_LINE_707 = 709;
	if (function_type_builder_1_expr157_line_707) {
      int PROBE_START_LINE_708 = 708;
		com.google.javascript.rhino.jstype.FunctionType v_fn_type_1919_line_708 = fnType;
		List<com.google.javascript.rhino.jstype.ObjectType> f_extended_interfaces_1846_line_708 = extendedInterfaces;
		int PROBE_END_LINE_708 = 708;
	v_fn_type_1919_line_708.setExtendedInterfaces(f_extended_interfaces_1846_line_708);
    }

    int PROBE_START_LINE_711 = 711;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1878_line_711 = typeRegistry;
	int PROBE_END_LINE_711 = 711;
	f_type_registry_1878_line_711.clearTemplateTypeNames();

    int PROBE_START_LINE_713 = 713;
	com.google.javascript.rhino.jstype.FunctionType v_fn_type_1919_line_713 = fnType;
	int PROBE_END_LINE_713 = 713;
	return v_fn_type_1919_line_713;
  }

  private void maybeSetBaseType(FunctionType fnType) {
    int PROBE_START_LINE_717 = 719;
	com.google.javascript.rhino.jstype.FunctionType p_fn_type_1920_line_717 = fnType;
	boolean function_type_builder_1_expr162_line_717 = p_fn_type_1920_line_717.isInterface();
	boolean function_type_builder_1_expr161_line_717 = !function_type_builder_1_expr162_line_717;
	boolean function_type_builder_1_expr163_line_717 = true;
	if (function_type_builder_1_expr161_line_717) {
		com.google.javascript.rhino.jstype.ObjectType f_base_type_1847_line_717 = baseType;
		function_type_builder_1_expr163_line_717 = f_base_type_1847_line_717 != null;
	}
	boolean function_type_builder_1_expr160_line_717 = function_type_builder_1_expr161_line_717
			&& function_type_builder_1_expr163_line_717;
	int PROBE_END_LINE_717 = 719;
	if (function_type_builder_1_expr160_line_717) {
      fnType.setPrototypeBasedOn(baseType);
    }
  }

  /**
   * Returns a constructor function either by returning it from the
   * registry if it exists or creating and registering a new type. If
   * there is already a type, then warn if the existing type is
   * different than the one we are creating, though still return the
   * existing function if possible.  The primary purpose of this is
   * that registering a constructor will fail for all built-in types
   * that are initialized in {@link JSTypeRegistry}.  We a) want to
   * make sure that the type information specified in the externs file
   * matches what is in the registry and b) annotate the externs with
   * the {@link JSType} from the registry so that there are not two
   * separate JSType objects for one type.
   */
  private FunctionType getOrCreateConstructor() {
    FunctionType fnType = typeRegistry.createConstructorType(
        fnName, contents.getSourceNode(), parametersNode, returnType,
        classTemplateTypeNames);
    JSType existingType = typeRegistry.getType(fnName);

    if (makesStructs) {
      fnType.setStruct();
    } else if (makesDicts) {
      fnType.setDict();
    }
    if (existingType != null) {
      boolean isInstanceObject = existingType.isInstanceType();
      if (isInstanceObject || fnName.equals("Function")) {
        FunctionType existingFn =
            isInstanceObject ?
            existingType.toObjectType().getConstructor() :
            typeRegistry.getNativeFunctionType(FUNCTION_FUNCTION_TYPE);

        if (existingFn.getSource() == null) {
          existingFn.setSource(contents.getSourceNode());
        }

        if (!existingFn.hasEqualCallType(fnType)) {
          reportWarning(TYPE_REDEFINITION, formatFnName(),
              fnType.toString(), existingFn.toString());
        }

        return existingFn;
      } else {
        // We fall through and return the created type, even though it will fail
        // to register. We have no choice as we have to return a function. We
        // issue an error elsewhere though, so the user should fix it.
      }
    }

    maybeSetBaseType(fnType);

    if (getScopeDeclaredIn().isGlobal() && !fnName.isEmpty()) {
      typeRegistry.declareType(fnName, fnType.getInstanceType());
    }
    return fnType;
  }

  private void reportWarning(DiagnosticType warning, String ... args) {
    compiler.report(JSError.make(sourceName, errorRoot, warning, args));
  }

  private void reportError(DiagnosticType error, String ... args) {
    compiler.report(JSError.make(sourceName, errorRoot, error, args));
  }

  /**
   * Determines whether the given JsDoc info declares a function type.
   */
  static boolean isFunctionTypeDeclaration(JSDocInfo info) {
    return info.getParameterCount() > 0 ||
        info.hasReturnType() ||
        info.hasThisType() ||
        info.isConstructor() ||
        info.isInterface();
  }

  /**
   * The scope that we should declare this function in, if it needs
   * to be declared in a scope. Notice that TypedScopeCreator takes
   * care of most scope-declaring.
   */
  private Scope getScopeDeclaredIn() {
    int PROBE_START_LINE_804 = 804;
	String f_fn_name_1876_line_804 = fnName;
	int function_type_builder_1_expr164_line_804 = f_fn_name_1876_line_804.indexOf(".");
	int PROBE_END_LINE_804 = 804;
	int dotIndex = function_type_builder_1_expr164_line_804;
    int PROBE_START_LINE_805 = 811;
	int v_dot_index_1926_line_805 = dotIndex;
	int function_type_builder_1_expr166_line_805 = -1;
	boolean function_type_builder_1_expr165_line_805 = v_dot_index_1926_line_805 != function_type_builder_1_expr166_line_805;
	int PROBE_END_LINE_805 = 811;
	if (function_type_builder_1_expr165_line_805) {
      String rootVarName = fnName.substring(0, dotIndex);
      Var rootVar = scope.getVar(rootVarName);
      if (rootVar != null) {
        return rootVar.getScope();
      }
    }
    int PROBE_START_LINE_812 = 812;
	com.google.javascript.jscomp.Scope f_scope_1882_line_812 = scope;
	int PROBE_END_LINE_812 = 812;
	return f_scope_1882_line_812;
  }

  /**
   * Check whether a type is resolvable in the future
   * If this has a supertype that hasn't been resolved yet, then we can assume
   * this type will be OK once the super type resolves.
   * @param objectType
   * @return true if objectType is resolvable in the future
   */
  private static boolean hasMoreTagsToResolve(ObjectType objectType) {
    Preconditions.checkArgument(objectType.isUnknownType());
    if (objectType.getImplicitPrototype() != null) {
      // constructor extends class
      if (objectType.getImplicitPrototype().isResolved()) {
        return false;
      } else {
        return true;
      }
    } else {
      // interface extends interfaces
      FunctionType ctor = objectType.getConstructor();
      if (ctor != null) {
        for (ObjectType interfaceType : ctor.getExtendedInterfaces()) {
          if (!interfaceType.isResolved()) {
            return true;
          }
        }
      }
      return false;
    }
  }

  /** Holds data dynamically inferred about functions. */
  static interface FunctionContents {
    /** Returns the source node of this function. May be null. */
    Node getSourceNode();

    /** Returns if the function may be in externs. */
    boolean mayBeFromExterns();

    /** Returns if a return of a real value (not undefined) appears. */
    boolean mayHaveNonEmptyReturns();

    /** Returns if this consists of a single throw. */
    boolean mayHaveSingleThrow();

    /** Gets a list of variables in this scope that are escaped. */
    Iterable<String> getEscapedVarNames();

    /** Gets a list of variables whose properties are escaped. */
    Set<String> getEscapedQualifiedNames();

    /** Gets the number of times each variable has been assigned. */
    Multiset<String> getAssignedNameCounts();
  }

  static class UnknownFunctionContents implements FunctionContents {
    private static UnknownFunctionContents singleton =
        new UnknownFunctionContents();

    static FunctionContents get() {
      int PROBE_START_LINE_874 = 874;
		com.google.javascript.jscomp.FunctionTypeBuilder.UnknownFunctionContents f_singleton_1928_line_874 = singleton;
		int PROBE_END_LINE_874 = 874;
	return f_singleton_1928_line_874;
    }

    @Override
    public Node getSourceNode() {
      return null;
    }

    @Override
    public boolean mayBeFromExterns() {
      return true;
    }

    @Override
    public boolean mayHaveNonEmptyReturns() {
      return true;
    }

    @Override
    public boolean mayHaveSingleThrow() {
      return true;
    }

    @Override
    public Iterable<String> getEscapedVarNames() {
      return ImmutableList.of();
    }

    @Override
    public Set<String> getEscapedQualifiedNames() {
      return ImmutableSet.of();
    }

    @Override
    public Multiset<String> getAssignedNameCounts() {
      return ImmutableMultiset.of();
    }
  }

  static class AstFunctionContents implements FunctionContents {
    private final Node n;
    private boolean hasNonEmptyReturns = false;
    private Set<String> escapedVarNames;
    private Set<String> escapedQualifiedNames;
    int PROBE_START_LINE_918 = 918;

	private final HashMultiset<String> function_type_builder_1_expr168_line_918 = HashMultiset.create();

	int PROBE_END_LINE_918 = 918;

	private final Multiset<String> assignedVarNames = function_type_builder_1_expr168_line_918;

    AstFunctionContents(Node n) {
      int PROBE_START_LINE_921 = 921;
		com.google.javascript.rhino.Node p_n_1931_line_921 = n;
		int PROBE_END_LINE_921 = 921;
	this.n = p_n_1931_line_921;
    }

    @Override
    public Node getSourceNode() {
      int PROBE_START_LINE_926 = 926;
		com.google.javascript.rhino.Node f_n_1932_line_926 = n;
		int PROBE_END_LINE_926 = 926;
	return f_n_1932_line_926;
    }

    @Override
    public boolean mayBeFromExterns() {
      int PROBE_START_LINE_931 = 931;
		com.google.javascript.rhino.Node f_n_1932_line_931 = n;
		boolean function_type_builder_1_expr172_line_931 = f_n_1932_line_931.isFromExterns();
		int PROBE_END_LINE_931 = 931;
	return function_type_builder_1_expr172_line_931;
    }

    @Override
    public boolean mayHaveNonEmptyReturns() {
      int PROBE_START_LINE_936 = 936;
		boolean f_has_non_empty_returns_1929_line_936 = hasNonEmptyReturns;
		int PROBE_END_LINE_936 = 936;
	return f_has_non_empty_returns_1929_line_936;
    }

    void recordNonEmptyReturn() {
      hasNonEmptyReturns = true;
    }

    @Override
    public boolean mayHaveSingleThrow() {
      int PROBE_START_LINE_945 = 945;
		com.google.javascript.rhino.Node f_n_1932_line_945 = n;
		Node function_type_builder_1_expr173_line_945 = f_n_1932_line_945.getLastChild();
		int PROBE_END_LINE_945 = 945;
	Node block = function_type_builder_1_expr173_line_945;
      int PROBE_START_LINE_946 = 946;
	com.google.javascript.rhino.Node v_block_1933_line_946 = block;
	boolean function_type_builder_1_expr175_line_946 = v_block_1933_line_946.hasOneChild();
	boolean function_type_builder_1_expr176_line_946 = true;
	if (function_type_builder_1_expr175_line_946) {
		com.google.javascript.rhino.Node v_block_1933_line_946_v1 = block;
		com.google.javascript.rhino.Node function_type_builder_1_expr177_line_946 = v_block_1933_line_946_v1
				.getFirstChild();
		function_type_builder_1_expr176_line_946 = function_type_builder_1_expr177_line_946.isThrow();
	}
	boolean function_type_builder_1_expr174_line_946 = function_type_builder_1_expr175_line_946
			&& function_type_builder_1_expr176_line_946;
	int PROBE_END_LINE_946 = 946;
	return function_type_builder_1_expr174_line_946;
    }

    @Override
    public Iterable<String> getEscapedVarNames() {
      int PROBE_START_LINE_951 = 952;
		Set<String> f_escaped_var_names_1934_line_951 = escapedVarNames;
		boolean function_type_builder_1_expr179_line_951 = f_escaped_var_names_1934_line_951 == null;
		Iterable<String> function_type_builder_1_expr178_line_951 = function_type_builder_1_expr179_line_951
				? ImmutableList.<String>of()
				: escapedVarNames;
		int PROBE_END_LINE_951 = 952;
	return function_type_builder_1_expr178_line_951;
    }

    void recordEscapedVarName(String name) {
      if (escapedVarNames == null) {
        escapedVarNames = Sets.newHashSet();
      }
      escapedVarNames.add(name);
    }

    @Override
    public Set<String> getEscapedQualifiedNames() {
      return escapedQualifiedNames == null
          ? ImmutableSet.<String>of() : escapedQualifiedNames;
    }

    void recordEscapedQualifiedName(String name) {
      if (escapedQualifiedNames == null) {
        escapedQualifiedNames = Sets.newHashSet();
      }
      escapedQualifiedNames.add(name);
    }

    @Override
    public Multiset<String> getAssignedNameCounts() {
      int PROBE_START_LINE_977 = 977;
		Multiset<String> f_assigned_var_names_1930_line_977 = assignedVarNames;
		int PROBE_END_LINE_977 = 977;
	return f_assigned_var_names_1930_line_977;
    }

    void recordAssignedName(String name) {
      assignedVarNames.add(name);
    }
  }
}
