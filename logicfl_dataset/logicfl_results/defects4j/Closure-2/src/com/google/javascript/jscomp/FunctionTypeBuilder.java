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

  int PROBE_START_LINE_78 = 78;

private com.google.javascript.jscomp.FunctionTypeBuilder.FunctionContents function_type_builder_1_expr1_line_78 = UnknownFunctionContents
		.get();

int PROBE_END_LINE_78 = 78;

private FunctionContents contents = function_type_builder_1_expr1_line_78;

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
  int PROBE_START_LINE_91 = 91;

private ImmutableList<String> function_type_builder_1_expr2_line_91 = ImmutableList.of();

int PROBE_END_LINE_91 = 91;

private ImmutableList<String> templateTypeNames = function_type_builder_1_expr2_line_91;

  int PROBE_START_LINE_93 = 95;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr3_line_93 = DiagnosticType
		.warning("JSC_EXTENDS_WITHOUT_TYPEDEF", "@extends used without @constructor or @interface for {0}");

int PROBE_END_LINE_93 = 95;

static final DiagnosticType EXTENDS_WITHOUT_TYPEDEF = function_type_builder_1_expr3_line_93;

  int PROBE_START_LINE_97 = 99;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr4_line_97 = DiagnosticType
		.warning("JSC_EXTENDS_NON_OBJECT", "{0} @extends non-object type {1}");

int PROBE_END_LINE_97 = 99;

static final DiagnosticType EXTENDS_NON_OBJECT = function_type_builder_1_expr4_line_97;

  int PROBE_START_LINE_101 = 103;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr5_line_101 = DiagnosticType
		.warning("JSC_RESOLVED_TAG_EMPTY", "Could not resolve type in {0} tag of {1}");

int PROBE_END_LINE_101 = 103;

static final DiagnosticType RESOLVED_TAG_EMPTY = function_type_builder_1_expr5_line_101;

  static final DiagnosticType IMPLEMENTS_WITHOUT_CONSTRUCTOR =
      DiagnosticType.warning(
          "JSC_IMPLEMENTS_WITHOUT_CONSTRUCTOR",
          "@implements used without @constructor or @interface for {0}");

  static final DiagnosticType CONSTRUCTOR_REQUIRED =
      DiagnosticType.warning("JSC_CONSTRUCTOR_REQUIRED",
                             "{0} used without @constructor for {1}");

  int PROBE_START_LINE_114 = 116;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr8_line_114 = DiagnosticType
		.warning("JSC_VAR_ARGS_MUST_BE_LAST", "variable length argument must be last");

int PROBE_END_LINE_114 = 116;

static final DiagnosticType VAR_ARGS_MUST_BE_LAST = function_type_builder_1_expr8_line_114;

  int PROBE_START_LINE_118 = 120;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr9_line_118 = DiagnosticType
		.warning("JSC_OPTIONAL_ARG_AT_END", "optional arguments must be at the end");

int PROBE_END_LINE_118 = 120;

static final DiagnosticType OPTIONAL_ARG_AT_END = function_type_builder_1_expr9_line_118;

  int PROBE_START_LINE_122 = 124;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr10_line_122 = DiagnosticType
		.warning("JSC_INEXISTANT_PARAM", "parameter {0} does not appear in {1}''s parameter list");

int PROBE_END_LINE_122 = 124;

static final DiagnosticType INEXISTANT_PARAM = function_type_builder_1_expr10_line_122;

  int PROBE_START_LINE_126 = 130;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr11_line_126 = DiagnosticType
		.warning("JSC_TYPE_REDEFINITION",
				"attempted re-definition of type {0}\n" + "found   : {1}\n" + "expected: {2}");

int PROBE_END_LINE_126 = 130;

static final DiagnosticType TYPE_REDEFINITION = function_type_builder_1_expr11_line_126;

  int PROBE_START_LINE_132 = 134;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr13_line_132 = DiagnosticType
		.warning("JSC_TEMPLATE_TYPE_DUPLICATED", "Only one parameter type must be the template type");

int PROBE_END_LINE_132 = 134;

static final DiagnosticType TEMPLATE_TYPE_DUPLICATED = function_type_builder_1_expr13_line_132;

  int PROBE_START_LINE_136 = 138;

static final com.google.javascript.jscomp.DiagnosticType function_type_builder_1_expr14_line_136 = DiagnosticType
		.warning("JSC_TEMPLATE_TYPE_EXPECTED", "The template type must be a parameter type");

int PROBE_END_LINE_136 = 138;

static final DiagnosticType TEMPLATE_TYPE_EXPECTED = function_type_builder_1_expr14_line_136;

  static final DiagnosticType THIS_TYPE_NON_OBJECT =
      DiagnosticType.warning(
          "JSC_THIS_TYPE_NON_OBJECT",
          "@this type of a function must be an object\n" +
          "Actual type: {0}");

  private class ExtendedTypeValidator implements Predicate<JSType> {
    @Override
    public boolean apply(JSType type) {
      ObjectType objectType = ObjectType.cast(type);
      if (objectType == null) {
        reportWarning(EXTENDS_NON_OBJECT, fnName, type.toString());
        return false;
      } else if (objectType.isEmptyType()) {
        reportWarning(RESOLVED_TAG_EMPTY, "@extends", fnName);
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
    int PROBE_START_LINE_203 = 203;
		com.google.javascript.rhino.Node p_error_root_1452_line_203 = errorRoot;
		int PROBE_END_LINE_203 = 203;
	Preconditions.checkNotNull(p_error_root_1452_line_203);

    int PROBE_START_LINE_205 = 205;
	String p_fn_name_1450_line_205 = fnName;
	boolean function_type_builder_1_expr21_line_205 = p_fn_name_1450_line_205 == null;
	String p_fn_name_1450_line_205_v1 = null;
	if (!function_type_builder_1_expr21_line_205) {
		p_fn_name_1450_line_205_v1 = fnName;
	}
	String function_type_builder_1_expr19_line_205 = function_type_builder_1_expr21_line_205
			? ""
			: p_fn_name_1450_line_205_v1;
	int PROBE_END_LINE_205 = 205;
	this.fnName = function_type_builder_1_expr19_line_205;
    int PROBE_START_LINE_206 = 206;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_1451_line_206 = compiler;
	com.google.javascript.jscomp.CodingConvention function_type_builder_1_expr24_line_206 = p_compiler_1451_line_206
			.getCodingConvention();
	int PROBE_END_LINE_206 = 206;
	this.codingConvention = function_type_builder_1_expr24_line_206;
    int PROBE_START_LINE_207 = 207;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_1451_line_207 = compiler;
	com.google.javascript.rhino.jstype.JSTypeRegistry function_type_builder_1_expr28_line_207 = p_compiler_1451_line_207
			.getTypeRegistry();
	int PROBE_END_LINE_207 = 207;
	this.typeRegistry = function_type_builder_1_expr28_line_207;
    int PROBE_START_LINE_208 = 208;
	com.google.javascript.rhino.Node p_error_root_1452_line_208 = errorRoot;
	int PROBE_END_LINE_208 = 208;
	this.errorRoot = p_error_root_1452_line_208;
    int PROBE_START_LINE_209 = 209;
	String p_source_name_1453_line_209 = sourceName;
	int PROBE_END_LINE_209 = 209;
	this.sourceName = p_source_name_1453_line_209;
    int PROBE_START_LINE_210 = 210;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_1451_line_210 = compiler;
	int PROBE_END_LINE_210 = 210;
	this.compiler = p_compiler_1451_line_210;
    int PROBE_START_LINE_211 = 211;
	com.google.javascript.jscomp.Scope p_scope_1454_line_211 = scope;
	int PROBE_END_LINE_211 = 211;
	this.scope = p_scope_1454_line_211;
  }

  /**
   * Sets the contents of this function.
   */
  FunctionTypeBuilder setContents(@Nullable FunctionContents contents) {
    int PROBE_START_LINE_218 = 220;
	com.google.javascript.jscomp.FunctionTypeBuilder.FunctionContents p_contents_1462_line_218 = contents;
	boolean function_type_builder_1_expr42_line_218 = p_contents_1462_line_218 != null;
	int PROBE_END_LINE_218 = 220;
	if (function_type_builder_1_expr42_line_218) {
      int PROBE_START_LINE_219 = 219;
		com.google.javascript.jscomp.FunctionTypeBuilder.FunctionContents p_contents_1462_line_219 = contents;
		int PROBE_END_LINE_219 = 219;
	this.contents = p_contents_1462_line_219;
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
    int PROBE_START_LINE_235 = 237;
		com.google.javascript.rhino.jstype.FunctionType p_old_type_1463_line_235 = oldType;
		boolean function_type_builder_1_expr47_line_235 = p_old_type_1463_line_235 == null;
		int PROBE_END_LINE_235 = 237;
	if (function_type_builder_1_expr47_line_235) {
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
    int PROBE_START_LINE_297 = 300;
	com.google.javascript.rhino.JSDocInfo p_info_1465_line_297 = info;
	boolean function_type_builder_1_expr50_line_297 = p_info_1465_line_297 != null;
	boolean function_type_builder_1_expr51_line_297 = true;
	if (function_type_builder_1_expr50_line_297) {
		com.google.javascript.rhino.JSDocInfo p_info_1465_line_297_v1 = info;
		function_type_builder_1_expr51_line_297 = p_info_1465_line_297_v1.hasReturnType();
	}
	boolean function_type_builder_1_expr49_line_297 = function_type_builder_1_expr50_line_297
			&& function_type_builder_1_expr51_line_297;
	int PROBE_END_LINE_297 = 300;
	if (function_type_builder_1_expr49_line_297) {
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
    int PROBE_START_LINE_310 = 367;
	com.google.javascript.rhino.JSDocInfo p_info_1466_line_310 = info;
	boolean function_type_builder_1_expr53_line_310 = p_info_1466_line_310 != null;
	int PROBE_END_LINE_310 = 367;
	if (function_type_builder_1_expr53_line_310) {
      int PROBE_START_LINE_311 = 311;
		com.google.javascript.rhino.JSDocInfo p_info_1466_line_311 = info;
		boolean function_type_builder_1_expr55_line_311 = p_info_1466_line_311.isConstructor();
		int PROBE_END_LINE_311 = 311;
	isConstructor = function_type_builder_1_expr55_line_311;
      int PROBE_START_LINE_312 = 312;
	com.google.javascript.rhino.JSDocInfo p_info_1466_line_312 = info;
	boolean function_type_builder_1_expr57_line_312 = p_info_1466_line_312.makesStructs();
	int PROBE_END_LINE_312 = 312;
	makesStructs = function_type_builder_1_expr57_line_312;
      int PROBE_START_LINE_313 = 313;
	com.google.javascript.rhino.JSDocInfo p_info_1466_line_313 = info;
	boolean function_type_builder_1_expr59_line_313 = p_info_1466_line_313.makesDicts();
	int PROBE_END_LINE_313 = 313;
	makesDicts = function_type_builder_1_expr59_line_313;
      int PROBE_START_LINE_314 = 314;
	com.google.javascript.rhino.JSDocInfo p_info_1466_line_314 = info;
	boolean function_type_builder_1_expr61_line_314 = p_info_1466_line_314.isInterface();
	int PROBE_END_LINE_314 = 314;
	isInterface = function_type_builder_1_expr61_line_314;

      int PROBE_START_LINE_316 = 320;
	boolean f_makes_structs_1431_line_316 = makesStructs;
	boolean function_type_builder_1_expr63_line_316 = true;
	if (f_makes_structs_1431_line_316) {
		boolean f_is_constructor_1430_line_316 = isConstructor;
		function_type_builder_1_expr63_line_316 = !f_is_constructor_1430_line_316;
	}
	boolean function_type_builder_1_expr62_line_316 = f_makes_structs_1431_line_316
			&& function_type_builder_1_expr63_line_316;
	int PROBE_END_LINE_316 = 320;
	if (function_type_builder_1_expr62_line_316) {
        reportWarning(CONSTRUCTOR_REQUIRED, "@struct", fnName);
      } else {
		int PROBE_START_LINE_318 = 320;
		boolean f_makes_dicts_1432_line_318 = makesDicts;
		boolean function_type_builder_1_expr65_line_318 = true;
		if (f_makes_dicts_1432_line_318) {
			boolean f_is_constructor_1430_line_318 = isConstructor;
			function_type_builder_1_expr65_line_318 = !f_is_constructor_1430_line_318;
		}
		boolean function_type_builder_1_expr64_line_318 = f_makes_dicts_1432_line_318
				&& function_type_builder_1_expr65_line_318;
		int PROBE_END_LINE_318 = 320;
		if (function_type_builder_1_expr64_line_318) {
			reportWarning(CONSTRUCTOR_REQUIRED, "@dict", fnName);
		}
	}

      int PROBE_START_LINE_323 = 334;
	com.google.javascript.rhino.JSDocInfo p_info_1466_line_323 = info;
	boolean function_type_builder_1_expr66_line_323 = p_info_1466_line_323.hasBaseType();
	int PROBE_END_LINE_323 = 334;
	// base type
      if (function_type_builder_1_expr66_line_323) {
        if (isConstructor) {
          JSType maybeBaseType =
              info.getBaseType().evaluate(scope, typeRegistry);
          if (maybeBaseType != null &&
              maybeBaseType.setValidator(new ExtendedTypeValidator())) {
            baseType = (ObjectType) maybeBaseType;
          }
        } else {
          reportWarning(EXTENDS_WITHOUT_TYPEDEF, fnName);
        }
      }

      int PROBE_START_LINE_337 = 353;
	com.google.javascript.rhino.JSDocInfo p_info_1466_line_337 = info;
	int function_type_builder_1_expr68_line_337 = p_info_1466_line_337.getImplementedInterfaceCount();
	boolean function_type_builder_1_expr67_line_337 = function_type_builder_1_expr68_line_337 > 0;
	int PROBE_END_LINE_337 = 353;
	// Implemented interfaces (for constructors only).
      if (function_type_builder_1_expr67_line_337) {
        if (isConstructor) {
          implementedInterfaces = Lists.newArrayList();
          for (JSTypeExpression t : info.getImplementedInterfaces()) {
            JSType maybeInterType = t.evaluate(scope, typeRegistry);
            if (maybeInterType != null &&
                maybeInterType.setValidator(new ImplementedTypeValidator())) {
              implementedInterfaces.add((ObjectType) maybeInterType);
            }
          }
        } else if (isInterface) {
          reportWarning(
              TypeCheck.CONFLICTING_IMPLEMENTED_TYPE, fnName);
        } else {
          reportWarning(CONSTRUCTOR_REQUIRED, "@implements", fnName);
        }
      }

      int PROBE_START_LINE_357 = 366;
	boolean f_is_interface_1433_line_357 = isInterface;
	int PROBE_END_LINE_357 = 366;
	// extended interfaces (for interfaces only)
      // We've already emitted a warning if this is not an interface.
      if (f_is_interface_1433_line_357) {
        int PROBE_START_LINE_358 = 358;
		ArrayList<com.google.javascript.rhino.jstype.ObjectType> function_type_builder_1_expr70_line_358 = Lists
				.newArrayList();
		int PROBE_END_LINE_358 = 358;
		extendedInterfaces = function_type_builder_1_expr70_line_358;
        int PROBE_START_LINE_359 = 365;
		com.google.javascript.rhino.JSDocInfo p_info_1466_line_359 = info;
		List<com.google.javascript.rhino.JSTypeExpression> function_type_builder_1_expr71_line_359 = p_info_1466_line_359
				.getExtendedInterfaces();
		int PROBE_END_LINE_359 = 365;
		for (JSTypeExpression t : function_type_builder_1_expr71_line_359) {
          int PROBE_START_LINE_360 = 360;
			com.google.javascript.rhino.JSTypeExpression v_t_1467_line_360 = t;
			com.google.javascript.jscomp.Scope f_scope_1461_line_360 = scope;
			com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1457_line_360 = typeRegistry;
			JSType function_type_builder_1_expr72_line_360 = v_t_1467_line_360.evaluate(f_scope_1461_line_360,
					f_type_registry_1457_line_360);
			int PROBE_END_LINE_360 = 360;
		JSType maybeInterfaceType = function_type_builder_1_expr72_line_360;
          int PROBE_START_LINE_361 = 364;
		com.google.javascript.rhino.jstype.JSType v_maybe_interface_type_1468_line_361 = maybeInterfaceType;
		boolean function_type_builder_1_expr74_line_361 = v_maybe_interface_type_1468_line_361 != null;
		boolean function_type_builder_1_expr73_line_361 = function_type_builder_1_expr74_line_361
				&& maybeInterfaceType.setValidator(new ExtendedTypeValidator());
		int PROBE_END_LINE_361 = 364;
		if (function_type_builder_1_expr73_line_361) {
            int PROBE_START_LINE_363 = 363;
				List<com.google.javascript.rhino.jstype.ObjectType> f_extended_interfaces_1427_line_363 = extendedInterfaces;
				com.google.javascript.rhino.jstype.JSType v_maybe_interface_type_1468_line_363 = maybeInterfaceType;
				int PROBE_END_LINE_363 = 363;
			f_extended_interfaces_1427_line_363.add((ObjectType) v_maybe_interface_type_1468_line_363);
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
    // Look at the @this annotation first.
    inferThisType(info);

    if (thisType == null) {
      ObjectType objType = ObjectType.cast(type);
      if (objType != null && (info == null || !info.hasType())) {
        thisType = objType;
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
    int PROBE_START_LINE_396 = 402;
	com.google.javascript.rhino.JSDocInfo p_info_1471_line_396 = info;
	boolean function_type_builder_1_expr79_line_396 = p_info_1471_line_396 != null;
	boolean function_type_builder_1_expr80_line_396 = true;
	if (function_type_builder_1_expr79_line_396) {
		com.google.javascript.rhino.JSDocInfo p_info_1471_line_396_v1 = info;
		function_type_builder_1_expr80_line_396 = p_info_1471_line_396_v1.hasThisType();
	}
	boolean function_type_builder_1_expr78_line_396 = function_type_builder_1_expr79_line_396
			&& function_type_builder_1_expr80_line_396;
	int PROBE_END_LINE_396 = 402;
	if (function_type_builder_1_expr78_line_396) {
      // TODO(johnlenz): In ES5 strict mode a function can have a null or
      // undefined "this" value, but all the existing "@this" annotations
      // don't declare restricted types.
      maybeThisType = info.getThisType().evaluate(scope, typeRegistry)
          .restrictByNotNullOrUndefined();
    }
    int PROBE_START_LINE_403 = 405;
	com.google.javascript.rhino.jstype.JSType v_maybe_this_type_1472_line_403 = maybeThisType;
	boolean function_type_builder_1_expr81_line_403 = v_maybe_this_type_1472_line_403 != null;
	int PROBE_END_LINE_403 = 405;
	if (function_type_builder_1_expr81_line_403) {
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
    int PROBE_START_LINE_429 = 435;
		com.google.javascript.rhino.Node p_args_parent_1474_line_429 = argsParent;
		boolean function_type_builder_1_expr83_line_429 = p_args_parent_1474_line_429 == null;
		int PROBE_END_LINE_429 = 435;
	if (function_type_builder_1_expr83_line_429) {
      if (info == null) {
        return this;
      } else {
        return inferParameterTypes(info);
      }
    }

    // arguments
    Node oldParameterType = null;
    int PROBE_START_LINE_439 = 441;
	com.google.javascript.rhino.Node f_parameters_node_1434_line_439 = parametersNode;
	boolean function_type_builder_1_expr84_line_439 = f_parameters_node_1434_line_439 != null;
	int PROBE_END_LINE_439 = 441;
	if (function_type_builder_1_expr84_line_439) {
      oldParameterType = parametersNode.getFirstChild();
    }

    int PROBE_START_LINE_443 = 443;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1457_line_443 = typeRegistry;
	int PROBE_END_LINE_443 = 443;
	FunctionParamBuilder builder = new FunctionParamBuilder(f_type_registry_1457_line_443);
    boolean warnedAboutArgList = false;
    int PROBE_START_LINE_445 = 447;
	com.google.javascript.rhino.JSDocInfo p_info_1475_line_445 = info;
	boolean function_type_builder_1_expr90_line_445 = p_info_1475_line_445 == null;
	boolean function_type_builder_1_expr87_line_445 = (function_type_builder_1_expr90_line_445);
	Set<String> function_type_builder_1_expr86_line_445 = function_type_builder_1_expr87_line_445
			? Sets.<String>newHashSet()
			: Sets.newHashSet(info.getParameterNames());
	int PROBE_END_LINE_445 = 447;
	Set<String> allJsDocParams = function_type_builder_1_expr86_line_445;
    boolean foundTemplateType = false;
    boolean isVarArgs = false;
    int PROBE_START_LINE_450 = 479;
	com.google.javascript.rhino.Node p_args_parent_1474_line_450 = argsParent;
	Iterable<com.google.javascript.rhino.Node> function_type_builder_1_expr91_line_450 = p_args_parent_1474_line_450
			.children();
	int PROBE_END_LINE_450 = 479;
	for (Node arg : function_type_builder_1_expr91_line_450) {
      String argumentName = arg.getString();
      allJsDocParams.remove(argumentName);

      // type from JSDocInfo
      JSType parameterType = null;
      boolean isOptionalParam = isOptionalParameter(arg, info);
      isVarArgs = isVarArgsParameter(arg, info);

      if (info != null && info.hasParameterType(argumentName)) {
        parameterType =
            info.getParameterType(argumentName).evaluate(scope, typeRegistry);
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

    int PROBE_START_LINE_482 = 487;
	boolean v_is_var_args_1481_line_482 = isVarArgs;
	boolean function_type_builder_1_expr92_line_482 = !v_is_var_args_1481_line_482;
	int PROBE_END_LINE_482 = 487;
	// Copy over any old parameters that aren't in the param list.
    if (function_type_builder_1_expr92_line_482) {
      while (true) {
        int PROBE_START_LINE_483 = 483;
		com.google.javascript.rhino.Node v_old_parameter_type_1476_line_483 = oldParameterType;
		boolean function_type_builder_1_expr94_line_483 = v_old_parameter_type_1476_line_483 != null;
		boolean function_type_builder_1_expr95_line_483 = true;
		if (function_type_builder_1_expr94_line_483) {
			boolean v_is_var_args_1481_line_483 = isVarArgs;
			function_type_builder_1_expr95_line_483 = !v_is_var_args_1481_line_483;
		}
		boolean function_type_builder_1_expr93_line_483 = function_type_builder_1_expr94_line_483
				&& function_type_builder_1_expr95_line_483;
		if (!(function_type_builder_1_expr93_line_483)) {
			break;
		}
		int PROBE_END_LINE_483 = 483;
		builder.newParameterFromNode(oldParameterType);
        oldParameterType = oldParameterType.getNext();
      }
    }

    int PROBE_START_LINE_489 = 491;
	Set<String> v_all_js_doc_params_1479_line_489 = allJsDocParams;
	int PROBE_END_LINE_489 = 491;
	for (String inexistentName : v_all_js_doc_params_1479_line_489) {
      reportWarning(INEXISTANT_PARAM, inexistentName, fnName);
    }

    int PROBE_START_LINE_493 = 493;
	com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_1477_line_493 = builder;
	com.google.javascript.rhino.Node function_type_builder_1_expr97_line_493 = v_builder_1477_line_493.build();
	int PROBE_END_LINE_493 = 493;
	parametersNode = function_type_builder_1_expr97_line_493;
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
  FunctionTypeBuilder inferTemplateTypeName(@Nullable JSDocInfo info) {
    int PROBE_START_LINE_530 = 533;
	com.google.javascript.rhino.JSDocInfo p_info_1488_line_530 = info;
	boolean function_type_builder_1_expr99_line_530 = p_info_1488_line_530 != null;
	int PROBE_END_LINE_530 = 533;
	if (function_type_builder_1_expr99_line_530) {
      int PROBE_START_LINE_531 = 531;
		com.google.javascript.rhino.JSDocInfo p_info_1488_line_531 = info;
		ImmutableList<String> function_type_builder_1_expr101_line_531 = p_info_1488_line_531.getTemplateTypeNames();
		int PROBE_END_LINE_531 = 531;
	templateTypeNames = function_type_builder_1_expr101_line_531;
      int PROBE_START_LINE_532 = 532;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1457_line_532 = typeRegistry;
	ImmutableList<String> f_template_type_names_1435_line_532 = templateTypeNames;
	int PROBE_END_LINE_532 = 532;
	f_type_registry_1457_line_532.setTemplateTypeNames(f_template_type_names_1435_line_532);
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
    int PROBE_START_LINE_583 = 600;
	com.google.javascript.rhino.jstype.JSType f_return_type_1424_line_583 = returnType;
	boolean function_type_builder_1_expr104_line_583 = f_return_type_1424_line_583 == null;
	int PROBE_END_LINE_583 = 600;
	if (function_type_builder_1_expr104_line_583) {
      int PROBE_START_LINE_594 = 599;
		com.google.javascript.jscomp.FunctionTypeBuilder.FunctionContents f_contents_1423_line_594 = contents;
		boolean function_type_builder_1_expr107_line_594 = f_contents_1423_line_594.mayHaveNonEmptyReturns();
		boolean function_type_builder_1_expr106_line_594 = !function_type_builder_1_expr107_line_594;
		boolean function_type_builder_1_expr105_line_594 = function_type_builder_1_expr106_line_594
				&& !contents.mayHaveSingleThrow() && !contents.mayBeFromExterns();
		int PROBE_END_LINE_594 = 599;
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
      if (function_type_builder_1_expr105_line_594) {
        int PROBE_START_LINE_597 = 597;
			com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1457_line_597 = typeRegistry;
			com.google.javascript.rhino.jstype.JSTypeNative f_void_type_1494_line_597 = VOID_TYPE;
			com.google.javascript.rhino.jstype.JSType function_type_builder_1_expr109_line_597 = f_type_registry_1457_line_597
					.getNativeType(f_void_type_1494_line_597);
			int PROBE_END_LINE_597 = 597;
		returnType = function_type_builder_1_expr109_line_597;
        returnTypeInferred = true;
      }
    }

    int PROBE_START_LINE_602 = 604;
	com.google.javascript.rhino.jstype.JSType f_return_type_1424_line_602 = returnType;
	boolean function_type_builder_1_expr111_line_602 = f_return_type_1424_line_602 == null;
	int PROBE_END_LINE_602 = 604;
	if (function_type_builder_1_expr111_line_602) {
      returnType = typeRegistry.getNativeType(UNKNOWN_TYPE);
    }

    int PROBE_START_LINE_606 = 609;
	com.google.javascript.rhino.Node f_parameters_node_1434_line_606 = parametersNode;
	boolean function_type_builder_1_expr112_line_606 = f_parameters_node_1434_line_606 == null;
	int PROBE_END_LINE_606 = 609;
	if (function_type_builder_1_expr112_line_606) {
      throw new IllegalStateException(
          "All Function types must have params and a return type");
    }

    FunctionType fnType = null;
    int PROBE_START_LINE_612 = 631;
	boolean f_is_constructor_1430_line_612 = isConstructor;
	int PROBE_END_LINE_612 = 631;
	if (f_is_constructor_1430_line_612) {
      fnType = getOrCreateConstructor();
    } else {
		int PROBE_START_LINE_614 = 631;
		boolean f_is_interface_1433_line_614 = isInterface;
		int PROBE_END_LINE_614 = 631;
		if (f_is_interface_1433_line_614) {
			int PROBE_START_LINE_615 = 616;
			com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1457_line_615 = typeRegistry;
			com.google.javascript.rhino.jstype.FunctionType function_type_builder_1_expr114_line_615 = f_type_registry_1457_line_615
					.createInterfaceType(fnName, contents.getSourceNode());
			int PROBE_END_LINE_615 = 616;
			fnType = function_type_builder_1_expr114_line_615;
			int PROBE_START_LINE_617 = 619;
			com.google.javascript.jscomp.Scope function_type_builder_1_expr118_line_617 = getScopeDeclaredIn();
			boolean function_type_builder_1_expr117_line_617 = function_type_builder_1_expr118_line_617.isGlobal();
			boolean function_type_builder_1_expr119_line_617 = true;
			if (function_type_builder_1_expr117_line_617) {
				String f_fn_name_1455_line_617 = fnName;
				boolean function_type_builder_1_expr120_line_617 = f_fn_name_1455_line_617.isEmpty();
				function_type_builder_1_expr119_line_617 = !function_type_builder_1_expr120_line_617;
			}
			boolean function_type_builder_1_expr116_line_617 = function_type_builder_1_expr117_line_617
					&& function_type_builder_1_expr119_line_617;
			int PROBE_END_LINE_617 = 619;
			if (function_type_builder_1_expr116_line_617) {
				int PROBE_START_LINE_618 = 618;
				com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1457_line_618 = typeRegistry;
				String f_fn_name_1455_line_618 = fnName;
				com.google.javascript.rhino.jstype.FunctionType v_fn_type_1495_line_618 = fnType;
				com.google.javascript.rhino.jstype.ObjectType function_type_builder_1_expr122_line_618 = v_fn_type_1495_line_618
						.getInstanceType();
				int PROBE_END_LINE_618 = 618;
				f_type_registry_1457_line_618.declareType(f_fn_name_1455_line_618,
						function_type_builder_1_expr122_line_618);
			}
			int PROBE_START_LINE_620 = 620;
			com.google.javascript.rhino.jstype.FunctionType v_fn_type_1495_line_620 = fnType;
			int PROBE_END_LINE_620 = 620;
			maybeSetBaseType(v_fn_type_1495_line_620);
		} else {
			fnType = new FunctionBuilder(typeRegistry).withName(fnName).withSourceNode(contents.getSourceNode())
					.withParamsNode(parametersNode).withReturnType(returnType, returnTypeInferred)
					.withTypeOfThis(thisType).withTemplateKeys(templateTypeNames).build();
			maybeSetBaseType(fnType);
		}
	}

    int PROBE_START_LINE_633 = 635;
	List<com.google.javascript.rhino.jstype.ObjectType> f_implemented_interfaces_1426_line_633 = implementedInterfaces;
	boolean function_type_builder_1_expr124_line_633 = f_implemented_interfaces_1426_line_633 != null;
	int PROBE_END_LINE_633 = 635;
	if (function_type_builder_1_expr124_line_633) {
      fnType.setImplementedInterfaces(implementedInterfaces);
    }

    int PROBE_START_LINE_637 = 639;
	List<com.google.javascript.rhino.jstype.ObjectType> f_extended_interfaces_1427_line_637 = extendedInterfaces;
	boolean function_type_builder_1_expr125_line_637 = f_extended_interfaces_1427_line_637 != null;
	int PROBE_END_LINE_637 = 639;
	if (function_type_builder_1_expr125_line_637) {
      int PROBE_START_LINE_638 = 638;
		com.google.javascript.rhino.jstype.FunctionType v_fn_type_1495_line_638 = fnType;
		List<com.google.javascript.rhino.jstype.ObjectType> f_extended_interfaces_1427_line_638 = extendedInterfaces;
		int PROBE_END_LINE_638 = 638;
	v_fn_type_1495_line_638.setExtendedInterfaces(f_extended_interfaces_1427_line_638);
    }

    int PROBE_START_LINE_641 = 641;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_1457_line_641 = typeRegistry;
	int PROBE_END_LINE_641 = 641;
	f_type_registry_1457_line_641.clearTemplateTypeNames();

    int PROBE_START_LINE_643 = 643;
	com.google.javascript.rhino.jstype.FunctionType v_fn_type_1495_line_643 = fnType;
	int PROBE_END_LINE_643 = 643;
	return v_fn_type_1495_line_643;
  }

  private void maybeSetBaseType(FunctionType fnType) {
    int PROBE_START_LINE_647 = 649;
	com.google.javascript.rhino.jstype.FunctionType p_fn_type_1496_line_647 = fnType;
	boolean function_type_builder_1_expr130_line_647 = p_fn_type_1496_line_647.isInterface();
	boolean function_type_builder_1_expr129_line_647 = !function_type_builder_1_expr130_line_647;
	boolean function_type_builder_1_expr131_line_647 = true;
	if (function_type_builder_1_expr129_line_647) {
		com.google.javascript.rhino.jstype.ObjectType f_base_type_1428_line_647 = baseType;
		function_type_builder_1_expr131_line_647 = f_base_type_1428_line_647 != null;
	}
	boolean function_type_builder_1_expr128_line_647 = function_type_builder_1_expr129_line_647
			&& function_type_builder_1_expr131_line_647;
	int PROBE_END_LINE_647 = 649;
	if (function_type_builder_1_expr128_line_647) {
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
        fnName, contents.getSourceNode(), parametersNode, returnType, null);
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
          reportWarning(TYPE_REDEFINITION, fnName,
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
    int PROBE_START_LINE_733 = 733;
	String f_fn_name_1455_line_733 = fnName;
	int function_type_builder_1_expr132_line_733 = f_fn_name_1455_line_733.indexOf(".");
	int PROBE_END_LINE_733 = 733;
	int dotIndex = function_type_builder_1_expr132_line_733;
    int PROBE_START_LINE_734 = 740;
	int v_dot_index_1502_line_734 = dotIndex;
	int function_type_builder_1_expr134_line_734 = -1;
	boolean function_type_builder_1_expr133_line_734 = v_dot_index_1502_line_734 != function_type_builder_1_expr134_line_734;
	int PROBE_END_LINE_734 = 740;
	if (function_type_builder_1_expr133_line_734) {
      String rootVarName = fnName.substring(0, dotIndex);
      Var rootVar = scope.getVar(rootVarName);
      if (rootVar != null) {
        return rootVar.getScope();
      }
    }
    int PROBE_START_LINE_741 = 741;
	com.google.javascript.jscomp.Scope f_scope_1461_line_741 = scope;
	int PROBE_END_LINE_741 = 741;
	return f_scope_1461_line_741;
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
      int PROBE_START_LINE_803 = 803;
		com.google.javascript.jscomp.FunctionTypeBuilder.UnknownFunctionContents f_singleton_1504_line_803 = singleton;
		int PROBE_END_LINE_803 = 803;
	return f_singleton_1504_line_803;
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
    int PROBE_START_LINE_847 = 847;

	private final HashMultiset<String> function_type_builder_1_expr136_line_847 = HashMultiset.create();

	int PROBE_END_LINE_847 = 847;

	private final Multiset<String> assignedVarNames = function_type_builder_1_expr136_line_847;

    AstFunctionContents(Node n) {
      int PROBE_START_LINE_850 = 850;
		com.google.javascript.rhino.Node p_n_1507_line_850 = n;
		int PROBE_END_LINE_850 = 850;
	this.n = p_n_1507_line_850;
    }

    @Override
    public Node getSourceNode() {
      int PROBE_START_LINE_855 = 855;
		com.google.javascript.rhino.Node f_n_1508_line_855 = n;
		int PROBE_END_LINE_855 = 855;
	return f_n_1508_line_855;
    }

    @Override
    public boolean mayBeFromExterns() {
      int PROBE_START_LINE_860 = 860;
		com.google.javascript.rhino.Node f_n_1508_line_860 = n;
		boolean function_type_builder_1_expr140_line_860 = f_n_1508_line_860.isFromExterns();
		int PROBE_END_LINE_860 = 860;
	return function_type_builder_1_expr140_line_860;
    }

    @Override
    public boolean mayHaveNonEmptyReturns() {
      int PROBE_START_LINE_865 = 865;
		boolean f_has_non_empty_returns_1505_line_865 = hasNonEmptyReturns;
		int PROBE_END_LINE_865 = 865;
	return f_has_non_empty_returns_1505_line_865;
    }

    void recordNonEmptyReturn() {
      hasNonEmptyReturns = true;
    }

    @Override
    public boolean mayHaveSingleThrow() {
      int PROBE_START_LINE_874 = 874;
		com.google.javascript.rhino.Node f_n_1508_line_874 = n;
		Node function_type_builder_1_expr141_line_874 = f_n_1508_line_874.getLastChild();
		int PROBE_END_LINE_874 = 874;
	Node block = function_type_builder_1_expr141_line_874;
      int PROBE_START_LINE_875 = 875;
	com.google.javascript.rhino.Node v_block_1509_line_875 = block;
	boolean function_type_builder_1_expr143_line_875 = v_block_1509_line_875.hasOneChild();
	boolean function_type_builder_1_expr144_line_875 = true;
	if (function_type_builder_1_expr143_line_875) {
		com.google.javascript.rhino.Node v_block_1509_line_875_v1 = block;
		com.google.javascript.rhino.Node function_type_builder_1_expr145_line_875 = v_block_1509_line_875_v1
				.getFirstChild();
		function_type_builder_1_expr144_line_875 = function_type_builder_1_expr145_line_875.isThrow();
	}
	boolean function_type_builder_1_expr142_line_875 = function_type_builder_1_expr143_line_875
			&& function_type_builder_1_expr144_line_875;
	int PROBE_END_LINE_875 = 875;
	return function_type_builder_1_expr142_line_875;
    }

    @Override
    public Iterable<String> getEscapedVarNames() {
      int PROBE_START_LINE_880 = 881;
		Set<String> f_escaped_var_names_1510_line_880 = escapedVarNames;
		boolean function_type_builder_1_expr147_line_880 = f_escaped_var_names_1510_line_880 == null;
		Iterable<String> function_type_builder_1_expr146_line_880 = function_type_builder_1_expr147_line_880
				? ImmutableList.<String>of()
				: escapedVarNames;
		int PROBE_END_LINE_880 = 881;
	return function_type_builder_1_expr146_line_880;
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
      int PROBE_START_LINE_906 = 906;
		Multiset<String> f_assigned_var_names_1506_line_906 = assignedVarNames;
		int PROBE_END_LINE_906 = 906;
	return f_assigned_var_names_1506_line_906;
    }

    void recordAssignedName(String name) {
      assignedVarNames.add(name);
    }
  }
}
