/*
 *
 * ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is Rhino code, released
 * May 6, 1999.
 *
 * The Initial Developer of the Original Code is
 * Netscape Communications Corporation.
 * Portions created by the Initial Developer are Copyright (C) 1997-1999
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *   Bob Jervis
 *   Google Inc.
 *
 * Alternatively, the contents of this file may be used under the terms of
 * the GNU General Public License Version 2 or later (the "GPL"), in which
 * case the provisions of the GPL are applicable instead of those above. If
 * you wish to allow use of your version of this file only under the terms of
 * the GPL and not to allow others to use your version of this file under the
 * MPL, indicate your decision by deleting the provisions above and replacing
 * them with the notice and other provisions required by the GPL. If you do
 * not delete the provisions above, a recipient may use your version of this
 * file under either the MPL or the GPL.
 *
 * ***** END LICENSE BLOCK ***** */

package com.google.javascript.rhino.jstype;

import static com.google.javascript.rhino.jstype.JSTypeNative.ALL_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.ARRAY_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.NO_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.UNKNOWN_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.VOID_TYPE;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.LinkedHashMultimap;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.javascript.rhino.ErrorReporter;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.ScriptRuntime;
import com.google.javascript.rhino.Token;
import com.google.javascript.rhino.jstype.RecordTypeBuilder.RecordProperty;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * The type registry is used to resolve named types.
 *
 * <p>This class is not thread-safe.
 *
 */
public class JSTypeRegistry implements Serializable {
  private static final long serialVersionUID = 1L;

  /**
   * The UnionTypeBuilder caps the maximum number of alternate types it
   * remembers and then defaults to "?" (unknown type). By default this max
   * is 20, but it's very easy for the same property to appear on more than 20
   * types. Use larger unions for property checking. 3000 was picked
   * semi-randomly for use by the Google+ FE project.
   */
  private static final int PROPERTY_CHECKING_UNION_SIZE = 3000;

  // TODO(user): An instance of this class should be used during
  // compilation. We also want to make all types' constructors package private
  // and force usage of this registry instead. This will allow us to evolve the
  // types without being tied by an open API.

  private final transient ErrorReporter reporter;

  // We use an Array instead of an immutable list because this lookup needs
  // to be very fast. When it was an immutable list, we were spending 5% of
  // CPU time on bounds checking inside get().
  private final JSType[] nativeTypes;

  private final Map<String, JSType> namesToTypes;

  // Set of namespaces in which types (or other namespaces) exist.
  private final Set<String> namespaces = new HashSet<String>();

  // NOTE(nicksantos): This is a terrible terrible hack. When type expressions
  // are evaluated, we need to be able to decide whether that type name
  // resolves to a nullable type or a non-nullable type. Object types are
  // nullable, but enum types are not.
  //
  // Notice that it's not good enough to just declare enum types sooner.
  // For example, if we have
  // /** @enum {MyObject} */ var MyEnum = ...;
  // we won't be to declare "MyEnum" without evaluating the expression
  // {MyObject}, and following those dependencies starts to lead us into
  // undecidable territory. Instead, we "pre-declare" enum types and typedefs,
  // so that the expression resolver can decide whether a given name is
  // nullable or not.
  private final Set<String> nonNullableTypeNames = new HashSet<String>();

  // Types that have been "forward-declared."
  // If these types are not declared anywhere in the binary, we shouldn't
  // try to type-check them at all.
  private final Set<String> forwardDeclaredTypes = new HashSet<String>();

  // A map of properties to the types on which those properties have been
  // declared.
  private final Map<String, UnionTypeBuilder> typesIndexedByProperty =
      Maps.newHashMap();

  // A map of properties to each reference type on which those
  // properties have been declared. Each type has a unique name used
  // for de-duping.
  private final Map<String, Map<String, ObjectType>>
      eachRefTypeIndexedByProperty = Maps.newHashMap();

  // A map of properties to the greatest subtype on which those properties have
  // been declared. This is filled lazily from the types declared in
  // typesIndexedByProperty.
  private final Map<String, JSType> greatestSubtypeByProperty =
      Maps.newHashMap();

  // A map from interface name to types that implement it.
  private final Multimap<String, FunctionType> interfaceToImplementors =
      LinkedHashMultimap.create();

  // All the unresolved named types.
  private final Multimap<StaticScope<JSType>, NamedType> unresolvedNamedTypes =
      ArrayListMultimap.create();

  // All the resolved named types.
  private final Multimap<StaticScope<JSType>, NamedType> resolvedNamedTypes =
      ArrayListMultimap.create();

  // NamedType warns about unresolved types in the last generation.
  private boolean lastGeneration = true;

  int PROBE_START_LINE_159 = 159;

private HashMap<String, com.google.javascript.rhino.jstype.TemplateType> jstype_registry_1_expr9_line_159 = Maps
		.newHashMap();

int PROBE_END_LINE_159 = 159;

// The template type name.
  private Map<String, TemplateType> templateTypes = jstype_registry_1_expr9_line_159;

  private final boolean tolerateUndefinedValues;

  /**
   * The type registry has three modes, which control how type ASTs are
   * converted to types in {@link #createFromTypeNodes}.
   */
  public static enum ResolveMode {
    /**
     * Expressions are converted into Unknown blobs that can be
     * resolved into complex types.
     */
    LAZY_EXPRESSIONS,

    /**
     * Expressions are evaluated. If any names in the expression point to
     * unknown types, then we create a proxy {@code NamedType} structure
     * until the type can be resolved.
     *
     * This is the legacy way of resolving ways, and may not exist in the
     * future.
     */
    LAZY_NAMES,

    /**
     * Expressions and type names are evaluated aggressively. A warning
     * will be emitted if a type name fails to resolve to a real type.
     */
    IMMEDIATE
  }

  int PROBE_START_LINE_191 = 191;

private com.google.javascript.rhino.jstype.JSTypeRegistry.ResolveMode q_lazy_names_148_line_191 = ResolveMode.LAZY_NAMES;

int PROBE_END_LINE_191 = 191;

private ResolveMode resolveMode = q_lazy_names_148_line_191;

  /**
   * Constructs a new type registry populated with the built-in types.
   */
  public JSTypeRegistry(ErrorReporter reporter) {
    this(reporter, false);
  }

  /**
   * Constructs a new type registry populated with the built-in types.
   */
  public JSTypeRegistry(
      ErrorReporter reporter, boolean tolerateUndefinedValues) {
    int PROBE_START_LINE_205 = 205;
		com.google.javascript.rhino.ErrorReporter p_reporter_4986_line_205 = reporter;
		int PROBE_END_LINE_205 = 205;
	this.reporter = p_reporter_4986_line_205;
    int PROBE_START_LINE_206 = 206;
	com.google.javascript.rhino.jstype.JSTypeNative[] jstype_registry_1_expr16_line_206 = JSTypeNative.values();
	int jstype_registry_1_expr15_line_206 = jstype_registry_1_expr16_line_206.length;
	int PROBE_END_LINE_206 = 206;
	nativeTypes = new JSType[jstype_registry_1_expr15_line_206];
    namesToTypes = new HashMap<String, JSType>();
    resetForTypeCheck();
    int PROBE_START_LINE_209 = 209;
	boolean p_tolerate_undefined_values_4987_line_209 = tolerateUndefinedValues;
	int PROBE_END_LINE_209 = 209;
	this.tolerateUndefinedValues = p_tolerate_undefined_values_4987_line_209;
  }

  /**
   * Set the current resolving mode of the type registry.
   * @see ResolveMode
   */
  public void setResolveMode(ResolveMode mode) {
    this.resolveMode = mode;
  }

  ResolveMode getResolveMode() {
    return resolveMode;
  }

  public ErrorReporter getErrorReporter() {
    int PROBE_START_LINE_225 = 225;
	com.google.javascript.rhino.ErrorReporter f_reporter_4988_line_225 = reporter;
	int PROBE_END_LINE_225 = 225;
	return f_reporter_4988_line_225;
  }

  public boolean shouldTolerateUndefinedValues() {
    int PROBE_START_LINE_229 = 229;
	boolean f_tolerate_undefined_values_4992_line_229 = tolerateUndefinedValues;
	int PROBE_END_LINE_229 = 229;
	return f_tolerate_undefined_values_4992_line_229;
  }

  /**
   * Reset to run the TypeCheck pass.
   */
  public void resetForTypeCheck() {
    int PROBE_START_LINE_236 = 236;
	Map<String, com.google.javascript.rhino.jstype.UnionTypeBuilder> f_types_indexed_by_property_4974_line_236 = typesIndexedByProperty;
	int PROBE_END_LINE_236 = 236;
	f_types_indexed_by_property_4974_line_236.clear();
    int PROBE_START_LINE_237 = 237;
	Map<String, Map<String, com.google.javascript.rhino.jstype.ObjectType>> f_each_ref_type_indexed_by_property_4994_line_237 = eachRefTypeIndexedByProperty;
	int PROBE_END_LINE_237 = 237;
	f_each_ref_type_indexed_by_property_4994_line_237.clear();
    initializeBuiltInTypes();
    int PROBE_START_LINE_239 = 239;
	Map<String, com.google.javascript.rhino.jstype.JSType> f_names_to_types_4991_line_239 = namesToTypes;
	int PROBE_END_LINE_239 = 239;
	f_names_to_types_4991_line_239.clear();
    int PROBE_START_LINE_240 = 240;
	Set<String> f_namespaces_4971_line_240 = namespaces;
	int PROBE_END_LINE_240 = 240;
	f_namespaces_4971_line_240.clear();
    initializeRegistry();
  }

  private void initializeBuiltInTypes() {
    // These locals shouldn't be all caps.
    BooleanType BOOLEAN_TYPE = new BooleanType(this);
    int PROBE_START_LINE_247 = 247;
	com.google.javascript.rhino.jstype.JSTypeNative q_boolean_type_149_line_247 = JSTypeNative.BOOLEAN_TYPE;
	com.google.javascript.rhino.jstype.BooleanType v_boolean_type_4995_line_247 = BOOLEAN_TYPE;
	int PROBE_END_LINE_247 = 247;
	registerNativeType(q_boolean_type_149_line_247, v_boolean_type_4995_line_247);

    NullType NULL_TYPE = new NullType(this);
    int PROBE_START_LINE_250 = 250;
	com.google.javascript.rhino.jstype.JSTypeNative q_null_type_150_line_250 = JSTypeNative.NULL_TYPE;
	com.google.javascript.rhino.jstype.NullType v_null_type_4996_line_250 = NULL_TYPE;
	int PROBE_END_LINE_250 = 250;
	registerNativeType(q_null_type_150_line_250, v_null_type_4996_line_250);

    NumberType NUMBER_TYPE = new NumberType(this);
    int PROBE_START_LINE_253 = 253;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_type_151_line_253 = JSTypeNative.NUMBER_TYPE;
	com.google.javascript.rhino.jstype.NumberType v_number_type_4997_line_253 = NUMBER_TYPE;
	int PROBE_END_LINE_253 = 253;
	registerNativeType(q_number_type_151_line_253, v_number_type_4997_line_253);

    StringType STRING_TYPE = new StringType(this);
    int PROBE_START_LINE_256 = 256;
	com.google.javascript.rhino.jstype.JSTypeNative q_string_type_152_line_256 = JSTypeNative.STRING_TYPE;
	com.google.javascript.rhino.jstype.StringType v_string_type_4998_line_256 = STRING_TYPE;
	int PROBE_END_LINE_256 = 256;
	registerNativeType(q_string_type_152_line_256, v_string_type_4998_line_256);

    UnknownType UNKNOWN_TYPE = new UnknownType(this, false);
    int PROBE_START_LINE_259 = 259;
	com.google.javascript.rhino.jstype.JSTypeNative q_unknown_type_153_line_259 = JSTypeNative.UNKNOWN_TYPE;
	com.google.javascript.rhino.jstype.UnknownType v_unknown_type_4999_line_259 = UNKNOWN_TYPE;
	int PROBE_END_LINE_259 = 259;
	registerNativeType(q_unknown_type_153_line_259, v_unknown_type_4999_line_259);
    UnknownType checkedUnknownType = new UnknownType(this, true);
    registerNativeType(
        JSTypeNative.CHECKED_UNKNOWN_TYPE, checkedUnknownType);

    VoidType VOID_TYPE = new VoidType(this);
    int PROBE_START_LINE_265 = 265;
	com.google.javascript.rhino.jstype.JSTypeNative q_void_type_155_line_265 = JSTypeNative.VOID_TYPE;
	com.google.javascript.rhino.jstype.VoidType v_void_type_5001_line_265 = VOID_TYPE;
	int PROBE_END_LINE_265 = 265;
	registerNativeType(q_void_type_155_line_265, v_void_type_5001_line_265);

    AllType ALL_TYPE = new AllType(this);
    int PROBE_START_LINE_268 = 268;
	com.google.javascript.rhino.jstype.JSTypeNative q_all_type_156_line_268 = JSTypeNative.ALL_TYPE;
	com.google.javascript.rhino.jstype.AllType v_all_type_5002_line_268 = ALL_TYPE;
	int PROBE_END_LINE_268 = 268;
	registerNativeType(q_all_type_156_line_268, v_all_type_5002_line_268);

    // Top Level Prototype (the One)
    // The initializations of TOP_LEVEL_PROTOTYPE and OBJECT_FUNCTION_TYPE
    // use each other's results, so at least one of them will get null
    // instead of an actual type; however, this seems to be benign.
    PrototypeObjectType TOP_LEVEL_PROTOTYPE =
        new PrototypeObjectType(this, null, null, true, null, null);
    int PROBE_START_LINE_276 = 276;
	com.google.javascript.rhino.jstype.JSTypeNative q_top_level_prototype_157_line_276 = JSTypeNative.TOP_LEVEL_PROTOTYPE;
	com.google.javascript.rhino.jstype.PrototypeObjectType v_top_level_prototype_5003_line_276 = TOP_LEVEL_PROTOTYPE;
	int PROBE_END_LINE_276 = 276;
	registerNativeType(q_top_level_prototype_157_line_276, v_top_level_prototype_5003_line_276);

    // Object
    FunctionType OBJECT_FUNCTION_TYPE =
        new FunctionType(this, "Object", null,
            createArrowType(createOptionalParameters(ALL_TYPE), UNKNOWN_TYPE),
            null, null, true, true);

    int PROBE_START_LINE_284 = 284;
	com.google.javascript.rhino.jstype.FunctionType v_object_function_type_5004_line_284 = OBJECT_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.PrototypeObjectType v_top_level_prototype_5003_line_284 = TOP_LEVEL_PROTOTYPE;
	int PROBE_END_LINE_284 = 284;
	v_object_function_type_5004_line_284.setPrototype(v_top_level_prototype_5003_line_284, null);
    int PROBE_START_LINE_285 = 285;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_function_type_158_line_285 = JSTypeNative.OBJECT_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_object_function_type_5004_line_285 = OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_285 = 285;
	registerNativeType(q_object_function_type_158_line_285, v_object_function_type_5004_line_285);

    int PROBE_START_LINE_287 = 287;
	com.google.javascript.rhino.jstype.FunctionType v_object_function_type_5004_line_287 = OBJECT_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr58_line_287 = v_object_function_type_5004_line_287.getInstanceType();
	int PROBE_END_LINE_287 = 287;
	ObjectType OBJECT_TYPE = jstype_registry_1_expr58_line_287;
    int PROBE_START_LINE_288 = 288;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_type_159_line_288 = JSTypeNative.OBJECT_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_object_type_5005_line_288 = OBJECT_TYPE;
	int PROBE_END_LINE_288 = 288;
	registerNativeType(q_object_type_159_line_288, v_object_type_5005_line_288);

    int PROBE_START_LINE_290 = 290;
	com.google.javascript.rhino.jstype.FunctionType v_object_function_type_5004_line_290 = OBJECT_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr60_line_290 = v_object_function_type_5004_line_290.getPrototype();
	int PROBE_END_LINE_290 = 290;
	ObjectType OBJECT_PROTOTYPE = jstype_registry_1_expr60_line_290;
    int PROBE_START_LINE_291 = 291;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_prototype_159_line_291 = JSTypeNative.OBJECT_PROTOTYPE;
	com.google.javascript.rhino.jstype.ObjectType v_object_prototype_5006_line_291 = OBJECT_PROTOTYPE;
	int PROBE_END_LINE_291 = 291;
	registerNativeType(q_object_prototype_159_line_291, v_object_prototype_5006_line_291);

    // Function
    FunctionType FUNCTION_FUNCTION_TYPE =
        new FunctionType(this, "Function", null,
            createArrowType(
                createParametersWithVarArgs(ALL_TYPE), UNKNOWN_TYPE),
            null, null, true, true);
    int PROBE_START_LINE_299 = 299;
	com.google.javascript.rhino.jstype.FunctionType v_function_function_type_5007_line_299 = FUNCTION_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_object_type_5005_line_299 = OBJECT_TYPE;
	int PROBE_END_LINE_299 = 299;
	v_function_function_type_5007_line_299.setPrototypeBasedOn(v_object_type_5005_line_299);
    registerNativeType(
        JSTypeNative.FUNCTION_FUNCTION_TYPE, FUNCTION_FUNCTION_TYPE);

    int PROBE_START_LINE_303 = 303;
	com.google.javascript.rhino.jstype.FunctionType v_function_function_type_5007_line_303 = FUNCTION_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr65_line_303 = v_function_function_type_5007_line_303.getPrototype();
	int PROBE_END_LINE_303 = 303;
	ObjectType FUNCTION_PROTOTYPE = jstype_registry_1_expr65_line_303;
    int PROBE_START_LINE_304 = 304;
	com.google.javascript.rhino.jstype.JSTypeNative q_function_prototype_161_line_304 = JSTypeNative.FUNCTION_PROTOTYPE;
	com.google.javascript.rhino.jstype.ObjectType v_function_prototype_5008_line_304 = FUNCTION_PROTOTYPE;
	int PROBE_END_LINE_304 = 304;
	registerNativeType(q_function_prototype_161_line_304, v_function_prototype_5008_line_304);

    NoType NO_TYPE = new NoType(this);
    int PROBE_START_LINE_307 = 307;
	com.google.javascript.rhino.jstype.JSTypeNative q_no_type_162_line_307 = JSTypeNative.NO_TYPE;
	com.google.javascript.rhino.jstype.NoType v_no_type_5009_line_307 = NO_TYPE;
	int PROBE_END_LINE_307 = 307;
	registerNativeType(q_no_type_162_line_307, v_no_type_5009_line_307);

    NoObjectType NO_OBJECT_TYPE = new NoObjectType(this);
    int PROBE_START_LINE_310 = 310;
	com.google.javascript.rhino.jstype.JSTypeNative q_no_object_type_163_line_310 = JSTypeNative.NO_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.NoObjectType v_no_object_type_5010_line_310 = NO_OBJECT_TYPE;
	int PROBE_END_LINE_310 = 310;
	registerNativeType(q_no_object_type_163_line_310, v_no_object_type_5010_line_310);

    NoObjectType NO_RESOLVED_TYPE = new NoResolvedType(this);
    int PROBE_START_LINE_313 = 313;
	com.google.javascript.rhino.jstype.JSTypeNative q_no_resolved_type_164_line_313 = JSTypeNative.NO_RESOLVED_TYPE;
	com.google.javascript.rhino.jstype.NoObjectType v_no_resolved_type_5011_line_313 = NO_RESOLVED_TYPE;
	int PROBE_END_LINE_313 = 313;
	registerNativeType(q_no_resolved_type_164_line_313, v_no_resolved_type_5011_line_313);

    // Array
    FunctionType ARRAY_FUNCTION_TYPE =
      new FunctionType(this, "Array", null,
          createArrowType(createParametersWithVarArgs(ALL_TYPE), null),
          null, null, true, true);
    int PROBE_START_LINE_320 = 321;
	com.google.javascript.rhino.jstype.FunctionType v_array_function_type_5012_line_320 = ARRAY_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ArrowType jstype_registry_1_expr80_line_320 = v_array_function_type_5012_line_320
			.getInternalArrowType();
	int PROBE_END_LINE_320 = 321;
	jstype_registry_1_expr80_line_320.returnType =
        ARRAY_FUNCTION_TYPE.getInstanceType();

    int PROBE_START_LINE_323 = 323;
	com.google.javascript.rhino.jstype.FunctionType v_array_function_type_5012_line_323 = ARRAY_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr81_line_323 = v_array_function_type_5012_line_323.getPrototype();
	int PROBE_END_LINE_323 = 323;
	ObjectType arrayPrototype = jstype_registry_1_expr81_line_323;
    int PROBE_START_LINE_324 = 324;
	com.google.javascript.rhino.jstype.JSTypeNative q_array_function_type_165_line_324 = JSTypeNative.ARRAY_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_array_function_type_5012_line_324 = ARRAY_FUNCTION_TYPE;
	int PROBE_END_LINE_324 = 324;
	registerNativeType(q_array_function_type_165_line_324, v_array_function_type_5012_line_324);

    int PROBE_START_LINE_326 = 326;
	com.google.javascript.rhino.jstype.FunctionType v_array_function_type_5012_line_326 = ARRAY_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr83_line_326 = v_array_function_type_5012_line_326.getInstanceType();
	int PROBE_END_LINE_326 = 326;
	ObjectType ARRAY_TYPE = jstype_registry_1_expr83_line_326;
    int PROBE_START_LINE_327 = 327;
	com.google.javascript.rhino.jstype.JSTypeNative q_array_type_166_line_327 = JSTypeNative.ARRAY_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_array_type_5014_line_327 = ARRAY_TYPE;
	int PROBE_END_LINE_327 = 327;
	registerNativeType(q_array_type_166_line_327, v_array_type_5014_line_327);

    // Boolean
    FunctionType BOOLEAN_OBJECT_FUNCTION_TYPE =
        new FunctionType(this, "Boolean", null,
            createArrowType(createOptionalParameters(ALL_TYPE), BOOLEAN_TYPE),
            null, null, true, true);
    int PROBE_START_LINE_334 = 334;
	com.google.javascript.rhino.jstype.FunctionType v_boolean_object_function_type_5015_line_334 = BOOLEAN_OBJECT_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr86_line_334 = v_boolean_object_function_type_5015_line_334.getPrototype();
	int PROBE_END_LINE_334 = 334;
	ObjectType booleanPrototype = jstype_registry_1_expr86_line_334;
    registerNativeType(
        JSTypeNative.BOOLEAN_OBJECT_FUNCTION_TYPE,
        BOOLEAN_OBJECT_FUNCTION_TYPE);

    ObjectType BOOLEAN_OBJECT_TYPE =
        BOOLEAN_OBJECT_FUNCTION_TYPE.getInstanceType();
    int PROBE_START_LINE_341 = 341;
	com.google.javascript.rhino.jstype.JSTypeNative q_boolean_object_type_168_line_341 = JSTypeNative.BOOLEAN_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_boolean_object_type_5017_line_341 = BOOLEAN_OBJECT_TYPE;
	int PROBE_END_LINE_341 = 341;
	registerNativeType(q_boolean_object_type_168_line_341, v_boolean_object_type_5017_line_341);

    // Date
    FunctionType DATE_FUNCTION_TYPE =
      new FunctionType(this, "Date", null,
          createArrowType(
              createOptionalParameters(UNKNOWN_TYPE, UNKNOWN_TYPE, UNKNOWN_TYPE,
                  UNKNOWN_TYPE, UNKNOWN_TYPE, UNKNOWN_TYPE, UNKNOWN_TYPE),
              STRING_TYPE),
          null, null, true, true);
    int PROBE_START_LINE_351 = 351;
	com.google.javascript.rhino.jstype.FunctionType v_date_function_type_5018_line_351 = DATE_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr91_line_351 = v_date_function_type_5018_line_351.getPrototype();
	int PROBE_END_LINE_351 = 351;
	ObjectType datePrototype = jstype_registry_1_expr91_line_351;
    int PROBE_START_LINE_352 = 352;
	com.google.javascript.rhino.jstype.JSTypeNative q_date_function_type_169_line_352 = JSTypeNative.DATE_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_date_function_type_5018_line_352 = DATE_FUNCTION_TYPE;
	int PROBE_END_LINE_352 = 352;
	registerNativeType(q_date_function_type_169_line_352, v_date_function_type_5018_line_352);

    int PROBE_START_LINE_354 = 354;
	com.google.javascript.rhino.jstype.FunctionType v_date_function_type_5018_line_354 = DATE_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr93_line_354 = v_date_function_type_5018_line_354.getInstanceType();
	int PROBE_END_LINE_354 = 354;
	ObjectType DATE_TYPE = jstype_registry_1_expr93_line_354;
    int PROBE_START_LINE_355 = 355;
	com.google.javascript.rhino.jstype.JSTypeNative q_date_type_170_line_355 = JSTypeNative.DATE_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_date_type_5020_line_355 = DATE_TYPE;
	int PROBE_END_LINE_355 = 355;
	registerNativeType(q_date_type_170_line_355, v_date_type_5020_line_355);

    // Error
    FunctionType ERROR_FUNCTION_TYPE = new ErrorFunctionType(this, "Error");
    int PROBE_START_LINE_359 = 359;
	com.google.javascript.rhino.jstype.JSTypeNative q_error_function_type_171_line_359 = JSTypeNative.ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_error_function_type_5021_line_359 = ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_359 = 359;
	registerNativeType(q_error_function_type_171_line_359, v_error_function_type_5021_line_359);

    int PROBE_START_LINE_361 = 361;
	com.google.javascript.rhino.jstype.FunctionType v_error_function_type_5021_line_361 = ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr98_line_361 = v_error_function_type_5021_line_361.getInstanceType();
	int PROBE_END_LINE_361 = 361;
	ObjectType ERROR_TYPE = jstype_registry_1_expr98_line_361;
    int PROBE_START_LINE_362 = 362;
	com.google.javascript.rhino.jstype.JSTypeNative q_error_type_172_line_362 = JSTypeNative.ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5022_line_362 = ERROR_TYPE;
	int PROBE_END_LINE_362 = 362;
	registerNativeType(q_error_type_172_line_362, v_error_type_5022_line_362);

    // EvalError
    FunctionType EVAL_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "EvalError");
    int PROBE_START_LINE_367 = 367;
	com.google.javascript.rhino.jstype.FunctionType v_eval_error_function_type_5023_line_367 = EVAL_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5022_line_367 = ERROR_TYPE;
	int PROBE_END_LINE_367 = 367;
	v_eval_error_function_type_5023_line_367.setPrototypeBasedOn(v_error_type_5022_line_367);
    registerNativeType(
        JSTypeNative.EVAL_ERROR_FUNCTION_TYPE, EVAL_ERROR_FUNCTION_TYPE);

    int PROBE_START_LINE_371 = 371;
	com.google.javascript.rhino.jstype.FunctionType v_eval_error_function_type_5023_line_371 = EVAL_ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr103_line_371 = v_eval_error_function_type_5023_line_371.getInstanceType();
	int PROBE_END_LINE_371 = 371;
	ObjectType EVAL_ERROR_TYPE = jstype_registry_1_expr103_line_371;
    int PROBE_START_LINE_372 = 372;
	com.google.javascript.rhino.jstype.JSTypeNative q_eval_error_type_174_line_372 = JSTypeNative.EVAL_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_eval_error_type_5024_line_372 = EVAL_ERROR_TYPE;
	int PROBE_END_LINE_372 = 372;
	registerNativeType(q_eval_error_type_174_line_372, v_eval_error_type_5024_line_372);

    // RangeError
    FunctionType RANGE_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "RangeError");
    int PROBE_START_LINE_377 = 377;
	com.google.javascript.rhino.jstype.FunctionType v_range_error_function_type_5025_line_377 = RANGE_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5022_line_377 = ERROR_TYPE;
	int PROBE_END_LINE_377 = 377;
	v_range_error_function_type_5025_line_377.setPrototypeBasedOn(v_error_type_5022_line_377);
    registerNativeType(
        JSTypeNative.RANGE_ERROR_FUNCTION_TYPE, RANGE_ERROR_FUNCTION_TYPE);

    int PROBE_START_LINE_381 = 381;
	com.google.javascript.rhino.jstype.FunctionType v_range_error_function_type_5025_line_381 = RANGE_ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr108_line_381 = v_range_error_function_type_5025_line_381.getInstanceType();
	int PROBE_END_LINE_381 = 381;
	ObjectType RANGE_ERROR_TYPE = jstype_registry_1_expr108_line_381;
    int PROBE_START_LINE_382 = 382;
	com.google.javascript.rhino.jstype.JSTypeNative q_range_error_type_176_line_382 = JSTypeNative.RANGE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_range_error_type_5026_line_382 = RANGE_ERROR_TYPE;
	int PROBE_END_LINE_382 = 382;
	registerNativeType(q_range_error_type_176_line_382, v_range_error_type_5026_line_382);

    // ReferenceError
    FunctionType REFERENCE_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "ReferenceError");
    int PROBE_START_LINE_387 = 387;
	com.google.javascript.rhino.jstype.FunctionType v_reference_error_function_type_5027_line_387 = REFERENCE_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5022_line_387 = ERROR_TYPE;
	int PROBE_END_LINE_387 = 387;
	v_reference_error_function_type_5027_line_387.setPrototypeBasedOn(v_error_type_5022_line_387);
    registerNativeType(
        JSTypeNative.REFERENCE_ERROR_FUNCTION_TYPE,
        REFERENCE_ERROR_FUNCTION_TYPE);

    ObjectType REFERENCE_ERROR_TYPE =
        REFERENCE_ERROR_FUNCTION_TYPE.getInstanceType();
    int PROBE_START_LINE_394 = 394;
	com.google.javascript.rhino.jstype.JSTypeNative q_reference_error_type_178_line_394 = JSTypeNative.REFERENCE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_reference_error_type_5028_line_394 = REFERENCE_ERROR_TYPE;
	int PROBE_END_LINE_394 = 394;
	registerNativeType(q_reference_error_type_178_line_394, v_reference_error_type_5028_line_394);

    // SyntaxError
    FunctionType SYNTAX_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "SyntaxError");
    int PROBE_START_LINE_399 = 399;
	com.google.javascript.rhino.jstype.FunctionType v_syntax_error_function_type_5029_line_399 = SYNTAX_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5022_line_399 = ERROR_TYPE;
	int PROBE_END_LINE_399 = 399;
	v_syntax_error_function_type_5029_line_399.setPrototypeBasedOn(v_error_type_5022_line_399);
    registerNativeType(
        JSTypeNative.SYNTAX_ERROR_FUNCTION_TYPE, SYNTAX_ERROR_FUNCTION_TYPE);

    int PROBE_START_LINE_403 = 403;
	com.google.javascript.rhino.jstype.FunctionType v_syntax_error_function_type_5029_line_403 = SYNTAX_ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr118_line_403 = v_syntax_error_function_type_5029_line_403.getInstanceType();
	int PROBE_END_LINE_403 = 403;
	ObjectType SYNTAX_ERROR_TYPE = jstype_registry_1_expr118_line_403;
    int PROBE_START_LINE_404 = 404;
	com.google.javascript.rhino.jstype.JSTypeNative q_syntax_error_type_180_line_404 = JSTypeNative.SYNTAX_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_syntax_error_type_5030_line_404 = SYNTAX_ERROR_TYPE;
	int PROBE_END_LINE_404 = 404;
	registerNativeType(q_syntax_error_type_180_line_404, v_syntax_error_type_5030_line_404);

    // TypeError
    FunctionType TYPE_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "TypeError");
    int PROBE_START_LINE_409 = 409;
	com.google.javascript.rhino.jstype.FunctionType v_type_error_function_type_5031_line_409 = TYPE_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5022_line_409 = ERROR_TYPE;
	int PROBE_END_LINE_409 = 409;
	v_type_error_function_type_5031_line_409.setPrototypeBasedOn(v_error_type_5022_line_409);
    registerNativeType(
        JSTypeNative.TYPE_ERROR_FUNCTION_TYPE, TYPE_ERROR_FUNCTION_TYPE);

    int PROBE_START_LINE_413 = 413;
	com.google.javascript.rhino.jstype.FunctionType v_type_error_function_type_5031_line_413 = TYPE_ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr123_line_413 = v_type_error_function_type_5031_line_413.getInstanceType();
	int PROBE_END_LINE_413 = 413;
	ObjectType TYPE_ERROR_TYPE = jstype_registry_1_expr123_line_413;
    int PROBE_START_LINE_414 = 414;
	com.google.javascript.rhino.jstype.JSTypeNative q_type_error_type_182_line_414 = JSTypeNative.TYPE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_type_error_type_5032_line_414 = TYPE_ERROR_TYPE;
	int PROBE_END_LINE_414 = 414;
	registerNativeType(q_type_error_type_182_line_414, v_type_error_type_5032_line_414);

    // URIError
    FunctionType URI_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "URIError");
    int PROBE_START_LINE_419 = 419;
	com.google.javascript.rhino.jstype.FunctionType v_uri_error_function_type_5033_line_419 = URI_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5022_line_419 = ERROR_TYPE;
	int PROBE_END_LINE_419 = 419;
	v_uri_error_function_type_5033_line_419.setPrototypeBasedOn(v_error_type_5022_line_419);
    registerNativeType(
        JSTypeNative.URI_ERROR_FUNCTION_TYPE, URI_ERROR_FUNCTION_TYPE);

    int PROBE_START_LINE_423 = 423;
	com.google.javascript.rhino.jstype.FunctionType v_uri_error_function_type_5033_line_423 = URI_ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr128_line_423 = v_uri_error_function_type_5033_line_423.getInstanceType();
	int PROBE_END_LINE_423 = 423;
	ObjectType URI_ERROR_TYPE = jstype_registry_1_expr128_line_423;
    int PROBE_START_LINE_424 = 424;
	com.google.javascript.rhino.jstype.JSTypeNative q_uri_error_type_184_line_424 = JSTypeNative.URI_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_uri_error_type_5034_line_424 = URI_ERROR_TYPE;
	int PROBE_END_LINE_424 = 424;
	registerNativeType(q_uri_error_type_184_line_424, v_uri_error_type_5034_line_424);

    // Number
    FunctionType NUMBER_OBJECT_FUNCTION_TYPE =
        new FunctionType(this, "Number", null,
            createArrowType(createOptionalParameters(ALL_TYPE), NUMBER_TYPE),
            null, null, true, true);
    int PROBE_START_LINE_431 = 431;
	com.google.javascript.rhino.jstype.FunctionType v_number_object_function_type_5035_line_431 = NUMBER_OBJECT_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr131_line_431 = v_number_object_function_type_5035_line_431.getPrototype();
	int PROBE_END_LINE_431 = 431;
	ObjectType numberPrototype = jstype_registry_1_expr131_line_431;
    registerNativeType(
        JSTypeNative.NUMBER_OBJECT_FUNCTION_TYPE, NUMBER_OBJECT_FUNCTION_TYPE);

    ObjectType NUMBER_OBJECT_TYPE =
        NUMBER_OBJECT_FUNCTION_TYPE.getInstanceType();
    int PROBE_START_LINE_437 = 437;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_object_type_186_line_437 = JSTypeNative.NUMBER_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_number_object_type_5037_line_437 = NUMBER_OBJECT_TYPE;
	int PROBE_END_LINE_437 = 437;
	registerNativeType(q_number_object_type_186_line_437, v_number_object_type_5037_line_437);

    // RegExp
    FunctionType REGEXP_FUNCTION_TYPE =
      new FunctionType(this, "RegExp", null,
          createArrowType(createOptionalParameters(ALL_TYPE, ALL_TYPE)),
          null, null, true, true);
    int PROBE_START_LINE_444 = 445;
	com.google.javascript.rhino.jstype.FunctionType v_regexp_function_type_5038_line_444 = REGEXP_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ArrowType jstype_registry_1_expr139_line_444 = v_regexp_function_type_5038_line_444
			.getInternalArrowType();
	int PROBE_END_LINE_444 = 445;
	jstype_registry_1_expr139_line_444.returnType =
        REGEXP_FUNCTION_TYPE.getInstanceType();

    int PROBE_START_LINE_447 = 447;
	com.google.javascript.rhino.jstype.FunctionType v_regexp_function_type_5038_line_447 = REGEXP_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr140_line_447 = v_regexp_function_type_5038_line_447.getPrototype();
	int PROBE_END_LINE_447 = 447;
	ObjectType regexpPrototype = jstype_registry_1_expr140_line_447;
    int PROBE_START_LINE_448 = 448;
	com.google.javascript.rhino.jstype.JSTypeNative q_regexp_function_type_187_line_448 = JSTypeNative.REGEXP_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_regexp_function_type_5038_line_448 = REGEXP_FUNCTION_TYPE;
	int PROBE_END_LINE_448 = 448;
	registerNativeType(q_regexp_function_type_187_line_448, v_regexp_function_type_5038_line_448);

    int PROBE_START_LINE_450 = 450;
	com.google.javascript.rhino.jstype.FunctionType v_regexp_function_type_5038_line_450 = REGEXP_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr142_line_450 = v_regexp_function_type_5038_line_450.getInstanceType();
	int PROBE_END_LINE_450 = 450;
	ObjectType REGEXP_TYPE = jstype_registry_1_expr142_line_450;
    int PROBE_START_LINE_451 = 451;
	com.google.javascript.rhino.jstype.JSTypeNative q_regexp_type_188_line_451 = JSTypeNative.REGEXP_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_regexp_type_5040_line_451 = REGEXP_TYPE;
	int PROBE_END_LINE_451 = 451;
	registerNativeType(q_regexp_type_188_line_451, v_regexp_type_5040_line_451);

    // String
    FunctionType STRING_OBJECT_FUNCTION_TYPE =
        new FunctionType(this, "String", null,
            createArrowType(createOptionalParameters(ALL_TYPE), STRING_TYPE),
            null, null, true, true);
    int PROBE_START_LINE_458 = 458;
	com.google.javascript.rhino.jstype.FunctionType v_string_object_function_type_5041_line_458 = STRING_OBJECT_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr145_line_458 = v_string_object_function_type_5041_line_458.getPrototype();
	int PROBE_END_LINE_458 = 458;
	ObjectType stringPrototype = jstype_registry_1_expr145_line_458;
    registerNativeType(
        JSTypeNative.STRING_OBJECT_FUNCTION_TYPE, STRING_OBJECT_FUNCTION_TYPE);

    ObjectType STRING_OBJECT_TYPE =
        STRING_OBJECT_FUNCTION_TYPE.getInstanceType();
    registerNativeType(
        JSTypeNative.STRING_OBJECT_TYPE, STRING_OBJECT_TYPE);

    // (null,void)
    JSType NULL_VOID =
        createUnionType(NULL_TYPE, VOID_TYPE);
    int PROBE_START_LINE_470 = 470;
	com.google.javascript.rhino.jstype.JSTypeNative q_null_void_191_line_470 = JSTypeNative.NULL_VOID;
	com.google.javascript.rhino.jstype.JSType v_null_void_5044_line_470 = NULL_VOID;
	int PROBE_END_LINE_470 = 470;
	registerNativeType(q_null_void_191_line_470, v_null_void_5044_line_470);

    // (Object,string,number)
    JSType OBJECT_NUMBER_STRING =
        createUnionType(OBJECT_TYPE, NUMBER_TYPE, STRING_TYPE);
    int PROBE_START_LINE_475 = 475;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_number_string_192_line_475 = JSTypeNative.OBJECT_NUMBER_STRING;
	com.google.javascript.rhino.jstype.JSType v_object_number_string_5045_line_475 = OBJECT_NUMBER_STRING;
	int PROBE_END_LINE_475 = 475;
	registerNativeType(q_object_number_string_192_line_475, v_object_number_string_5045_line_475);

    // (Object,string,number,boolean)
    JSType OBJECT_NUMBER_STRING_BOOLEAN =
        createUnionType(OBJECT_TYPE, NUMBER_TYPE, STRING_TYPE, BOOLEAN_TYPE);
    int PROBE_START_LINE_480 = 481;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_number_string_boolean_193_line_480 = JSTypeNative.OBJECT_NUMBER_STRING_BOOLEAN;
	int PROBE_END_LINE_480 = 481;
	registerNativeType(q_object_number_string_boolean_193_line_480,
        OBJECT_NUMBER_STRING_BOOLEAN);

    // (string,number,boolean)
    JSType NUMBER_STRING_BOOLEAN =
        createUnionType(NUMBER_TYPE, STRING_TYPE, BOOLEAN_TYPE);
    int PROBE_START_LINE_486 = 487;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_string_boolean_194_line_486 = JSTypeNative.NUMBER_STRING_BOOLEAN;
	int PROBE_END_LINE_486 = 487;
	registerNativeType(q_number_string_boolean_194_line_486,
        NUMBER_STRING_BOOLEAN);

    int PROBE_START_LINE_490 = 490;
	com.google.javascript.rhino.jstype.NumberType v_number_type_4997_line_490 = NUMBER_TYPE;
	com.google.javascript.rhino.jstype.StringType v_string_type_4998_line_490 = STRING_TYPE;
	JSType jstype_registry_1_expr157_line_490 = createUnionType(v_number_type_4997_line_490,
			v_string_type_4998_line_490);
	int PROBE_END_LINE_490 = 490;
	// (string,number)
    JSType NUMBER_STRING = jstype_registry_1_expr157_line_490;
    int PROBE_START_LINE_491 = 491;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_string_195_line_491 = JSTypeNative.NUMBER_STRING;
	com.google.javascript.rhino.jstype.JSType v_number_string_5048_line_491 = NUMBER_STRING;
	int PROBE_END_LINE_491 = 491;
	registerNativeType(q_number_string_195_line_491, v_number_string_5048_line_491);

    // Native object properties are filled in by externs...

    // (String, string)
    JSType STRING_VALUE_OR_OBJECT_TYPE =
        createUnionType(STRING_OBJECT_TYPE, STRING_TYPE);
    registerNativeType(
        JSTypeNative.STRING_VALUE_OR_OBJECT_TYPE, STRING_VALUE_OR_OBJECT_TYPE);

    // (Number, number)
    JSType NUMBER_VALUE_OR_OBJECT_TYPE =
        createUnionType(NUMBER_OBJECT_TYPE, NUMBER_TYPE);
    registerNativeType(
        JSTypeNative.NUMBER_VALUE_OR_OBJECT_TYPE, NUMBER_VALUE_OR_OBJECT_TYPE);

    // unknown function type, i.e. (?...) -> ?
    FunctionType U2U_FUNCTION_TYPE =
        createFunctionType(UNKNOWN_TYPE, true, UNKNOWN_TYPE);
    int PROBE_START_LINE_510 = 510;
	com.google.javascript.rhino.jstype.JSTypeNative q_u2u_function_type_198_line_510 = JSTypeNative.U2U_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_u2u_function_type_5051_line_510 = U2U_FUNCTION_TYPE;
	int PROBE_END_LINE_510 = 510;
	registerNativeType(q_u2u_function_type_198_line_510, v_u2u_function_type_5051_line_510);

    int PROBE_START_LINE_514 = 530;
	com.google.javascript.rhino.jstype.UnknownType v_unknown_type_4999_line_523 = UNKNOWN_TYPE;
	int PROBE_END_LINE_514 = 530;
	// unknown constructor type, i.e. (?...) -> ? with the Unknown type
    // as instance type
    FunctionType U2U_CONSTRUCTOR_TYPE =
        // This is equivalent to
        // createConstructorType(UNKNOWN_TYPE, true, UNKNOWN_TYPE), but,
        // in addition, overrides getInstanceType() to return the NoObject type
        // instead of a new anonymous object.
        new FunctionType(this, "Function", null,
            createArrowType(
                createParametersWithVarArgs(UNKNOWN_TYPE),
                UNKNOWN_TYPE),
            v_unknown_type_4999_line_523, null, true, true) {
          private static final long serialVersionUID = 1L;

          @Override public FunctionType getConstructor() {
            return registry.getNativeFunctionType(
                JSTypeNative.FUNCTION_FUNCTION_TYPE);
          }
        };

    int PROBE_START_LINE_534 = 534;
	com.google.javascript.rhino.jstype.JSTypeNative q_u2u_constructor_type_199_line_534 = JSTypeNative.U2U_CONSTRUCTOR_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_u2u_constructor_type_5052_line_534 = U2U_CONSTRUCTOR_TYPE;
	int PROBE_END_LINE_534 = 534;
	// The U2U_CONSTRUCTOR is weird, because it's the supertype of its
    // own constructor.
    registerNativeType(q_u2u_constructor_type_199_line_534, v_u2u_constructor_type_5052_line_534);
    registerNativeType(
        JSTypeNative.FUNCTION_INSTANCE_TYPE, U2U_CONSTRUCTOR_TYPE);

    int PROBE_START_LINE_538 = 538;
	com.google.javascript.rhino.jstype.FunctionType v_function_function_type_5007_line_538 = FUNCTION_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_u2u_constructor_type_5052_line_538 = U2U_CONSTRUCTOR_TYPE;
	int PROBE_END_LINE_538 = 538;
	v_function_function_type_5007_line_538.setInstanceType(v_u2u_constructor_type_5052_line_538);
    int PROBE_START_LINE_539 = 539;
	com.google.javascript.rhino.jstype.FunctionType v_u2u_constructor_type_5052_line_539 = U2U_CONSTRUCTOR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_function_prototype_5008_line_539 = FUNCTION_PROTOTYPE;
	int PROBE_END_LINE_539 = 539;
	v_u2u_constructor_type_5052_line_539.setImplicitPrototype(v_function_prototype_5008_line_539);

    // least function type, i.e. (All...) -> NoType
    FunctionType LEAST_FUNCTION_TYPE =
        createNativeFunctionTypeWithVarArgs(NO_TYPE, ALL_TYPE);
    int PROBE_START_LINE_544 = 544;
	com.google.javascript.rhino.jstype.JSTypeNative q_least_function_type_201_line_544 = JSTypeNative.LEAST_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_least_function_type_5053_line_544 = LEAST_FUNCTION_TYPE;
	int PROBE_END_LINE_544 = 544;
	registerNativeType(q_least_function_type_201_line_544, v_least_function_type_5053_line_544);

    // the 'this' object in the global scope
    FunctionType GLOBAL_THIS_CTOR =
        new FunctionType(this, "global this", null,
            createArrowType(createParameters(false, ALL_TYPE), NUMBER_TYPE),
            null, null, true, true);
    int PROBE_START_LINE_551 = 551;
	com.google.javascript.rhino.jstype.FunctionType v_global_this_ctor_5054_line_551 = GLOBAL_THIS_CTOR;
	ObjectType jstype_registry_1_expr175_line_551 = v_global_this_ctor_5054_line_551.getInstanceType();
	int PROBE_END_LINE_551 = 551;
	ObjectType GLOBAL_THIS = jstype_registry_1_expr175_line_551;
    int PROBE_START_LINE_552 = 552;
	com.google.javascript.rhino.jstype.JSTypeNative q_global_this_202_line_552 = JSTypeNative.GLOBAL_THIS;
	com.google.javascript.rhino.jstype.ObjectType v_global_this_5055_line_552 = GLOBAL_THIS;
	int PROBE_END_LINE_552 = 552;
	registerNativeType(q_global_this_202_line_552, v_global_this_5055_line_552);

    // greatest function type, i.e. (NoType...) -> All
    FunctionType GREATEST_FUNCTION_TYPE =
        createNativeFunctionTypeWithVarArgs(ALL_TYPE, NO_TYPE);
    int PROBE_START_LINE_557 = 558;
	com.google.javascript.rhino.jstype.JSTypeNative q_greatest_function_type_203_line_557 = JSTypeNative.GREATEST_FUNCTION_TYPE;
	int PROBE_END_LINE_557 = 558;
	registerNativeType(q_greatest_function_type_203_line_557,
        GREATEST_FUNCTION_TYPE);

    int PROBE_START_LINE_562 = 562;
	com.google.javascript.rhino.jstype.FunctionType v_object_function_type_5004_line_562 = OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_562 = 562;
	// Register the prototype property. See the comments below in
    // registerPropertyOnType about the bootstrapping process.
    registerPropertyOnType("prototype", v_object_function_type_5004_line_562);
  }

  private void initializeRegistry() {
    int PROBE_START_LINE_566 = 566;
	com.google.javascript.rhino.jstype.JSTypeNative q_array_type_204_line_566 = JSTypeNative.ARRAY_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr181_line_566 = getNativeType(
			q_array_type_204_line_566);
	int PROBE_END_LINE_566 = 566;
	register(jstype_registry_1_expr181_line_566);
    int PROBE_START_LINE_567 = 567;
	com.google.javascript.rhino.jstype.JSTypeNative q_boolean_object_type_204_line_567 = JSTypeNative.BOOLEAN_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr183_line_567 = getNativeType(
			q_boolean_object_type_204_line_567);
	int PROBE_END_LINE_567 = 567;
	register(jstype_registry_1_expr183_line_567);
    int PROBE_START_LINE_568 = 568;
	com.google.javascript.rhino.jstype.JSTypeNative q_boolean_type_204_line_568 = JSTypeNative.BOOLEAN_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr185_line_568 = getNativeType(
			q_boolean_type_204_line_568);
	int PROBE_END_LINE_568 = 568;
	register(jstype_registry_1_expr185_line_568);
    int PROBE_START_LINE_569 = 569;
	com.google.javascript.rhino.jstype.JSTypeNative q_date_type_204_line_569 = JSTypeNative.DATE_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr187_line_569 = getNativeType(
			q_date_type_204_line_569);
	int PROBE_END_LINE_569 = 569;
	register(jstype_registry_1_expr187_line_569);
    int PROBE_START_LINE_570 = 570;
	com.google.javascript.rhino.jstype.JSTypeNative q_null_type_204_line_570 = JSTypeNative.NULL_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr189_line_570 = getNativeType(
			q_null_type_204_line_570);
	int PROBE_END_LINE_570 = 570;
	register(jstype_registry_1_expr189_line_570);
    int PROBE_START_LINE_571 = 571;
	com.google.javascript.rhino.jstype.JSTypeNative q_null_type_204_line_571 = JSTypeNative.NULL_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr191_line_571 = getNativeType(
			q_null_type_204_line_571);
	int PROBE_END_LINE_571 = 571;
	register(jstype_registry_1_expr191_line_571, "Null");
    int PROBE_START_LINE_572 = 572;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_object_type_204_line_572 = JSTypeNative.NUMBER_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr193_line_572 = getNativeType(
			q_number_object_type_204_line_572);
	int PROBE_END_LINE_572 = 572;
	register(jstype_registry_1_expr193_line_572);
    int PROBE_START_LINE_573 = 573;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_type_204_line_573 = JSTypeNative.NUMBER_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr195_line_573 = getNativeType(
			q_number_type_204_line_573);
	int PROBE_END_LINE_573 = 573;
	register(jstype_registry_1_expr195_line_573);
    int PROBE_START_LINE_574 = 574;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_type_204_line_574 = JSTypeNative.OBJECT_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr197_line_574 = getNativeType(
			q_object_type_204_line_574);
	int PROBE_END_LINE_574 = 574;
	register(jstype_registry_1_expr197_line_574);
    int PROBE_START_LINE_575 = 575;
	com.google.javascript.rhino.jstype.JSTypeNative q_error_type_204_line_575 = JSTypeNative.ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr199_line_575 = getNativeType(
			q_error_type_204_line_575);
	int PROBE_END_LINE_575 = 575;
	register(jstype_registry_1_expr199_line_575);
    int PROBE_START_LINE_576 = 576;
	com.google.javascript.rhino.jstype.JSTypeNative q_uri_error_type_204_line_576 = JSTypeNative.URI_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr201_line_576 = getNativeType(
			q_uri_error_type_204_line_576);
	int PROBE_END_LINE_576 = 576;
	register(jstype_registry_1_expr201_line_576);
    int PROBE_START_LINE_577 = 577;
	com.google.javascript.rhino.jstype.JSTypeNative q_eval_error_type_204_line_577 = JSTypeNative.EVAL_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr203_line_577 = getNativeType(
			q_eval_error_type_204_line_577);
	int PROBE_END_LINE_577 = 577;
	register(jstype_registry_1_expr203_line_577);
    int PROBE_START_LINE_578 = 578;
	com.google.javascript.rhino.jstype.JSTypeNative q_type_error_type_204_line_578 = JSTypeNative.TYPE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr205_line_578 = getNativeType(
			q_type_error_type_204_line_578);
	int PROBE_END_LINE_578 = 578;
	register(jstype_registry_1_expr205_line_578);
    int PROBE_START_LINE_579 = 579;
	com.google.javascript.rhino.jstype.JSTypeNative q_range_error_type_204_line_579 = JSTypeNative.RANGE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr207_line_579 = getNativeType(
			q_range_error_type_204_line_579);
	int PROBE_END_LINE_579 = 579;
	register(jstype_registry_1_expr207_line_579);
    int PROBE_START_LINE_580 = 580;
	com.google.javascript.rhino.jstype.JSTypeNative q_reference_error_type_204_line_580 = JSTypeNative.REFERENCE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr209_line_580 = getNativeType(
			q_reference_error_type_204_line_580);
	int PROBE_END_LINE_580 = 580;
	register(jstype_registry_1_expr209_line_580);
    int PROBE_START_LINE_581 = 581;
	com.google.javascript.rhino.jstype.JSTypeNative q_syntax_error_type_204_line_581 = JSTypeNative.SYNTAX_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr211_line_581 = getNativeType(
			q_syntax_error_type_204_line_581);
	int PROBE_END_LINE_581 = 581;
	register(jstype_registry_1_expr211_line_581);
    int PROBE_START_LINE_582 = 582;
	com.google.javascript.rhino.jstype.JSTypeNative q_regexp_type_204_line_582 = JSTypeNative.REGEXP_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr213_line_582 = getNativeType(
			q_regexp_type_204_line_582);
	int PROBE_END_LINE_582 = 582;
	register(jstype_registry_1_expr213_line_582);
    int PROBE_START_LINE_583 = 583;
	com.google.javascript.rhino.jstype.JSTypeNative q_string_object_type_204_line_583 = JSTypeNative.STRING_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr215_line_583 = getNativeType(
			q_string_object_type_204_line_583);
	int PROBE_END_LINE_583 = 583;
	register(jstype_registry_1_expr215_line_583);
    int PROBE_START_LINE_584 = 584;
	com.google.javascript.rhino.jstype.JSTypeNative q_string_type_204_line_584 = JSTypeNative.STRING_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr217_line_584 = getNativeType(
			q_string_type_204_line_584);
	int PROBE_END_LINE_584 = 584;
	register(jstype_registry_1_expr217_line_584);
    int PROBE_START_LINE_585 = 585;
	com.google.javascript.rhino.jstype.JSTypeNative q_void_type_204_line_585 = JSTypeNative.VOID_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr219_line_585 = getNativeType(
			q_void_type_204_line_585);
	int PROBE_END_LINE_585 = 585;
	register(jstype_registry_1_expr219_line_585);
    int PROBE_START_LINE_586 = 586;
	com.google.javascript.rhino.jstype.JSTypeNative q_void_type_204_line_586 = JSTypeNative.VOID_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr221_line_586 = getNativeType(
			q_void_type_204_line_586);
	int PROBE_END_LINE_586 = 586;
	register(jstype_registry_1_expr221_line_586, "Undefined");
    int PROBE_START_LINE_587 = 587;
	com.google.javascript.rhino.jstype.JSTypeNative q_void_type_204_line_587 = JSTypeNative.VOID_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr223_line_587 = getNativeType(
			q_void_type_204_line_587);
	int PROBE_END_LINE_587 = 587;
	register(jstype_registry_1_expr223_line_587, "void");
    int PROBE_START_LINE_588 = 588;
	com.google.javascript.rhino.jstype.JSTypeNative q_function_instance_type_204_line_588 = JSTypeNative.FUNCTION_INSTANCE_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr225_line_588 = getNativeType(
			q_function_instance_type_204_line_588);
	int PROBE_END_LINE_588 = 588;
	register(jstype_registry_1_expr225_line_588, "Function");
  }

  private void register(JSType type) {
    int PROBE_START_LINE_592 = 592;
	com.google.javascript.rhino.jstype.JSType p_type_5057_line_592 = type;
	com.google.javascript.rhino.jstype.JSType p_type_5057_line_592_v1 = type;
	String jstype_registry_1_expr227_line_592 = p_type_5057_line_592_v1.toString();
	int PROBE_END_LINE_592 = 592;
	register(p_type_5057_line_592, jstype_registry_1_expr227_line_592);
  }

  private void register(JSType type, String name) {
    Preconditions.checkArgument(
        !name.contains("<"), "Type names cannot contain template annotations.");

    int PROBE_START_LINE_599 = 599;
	Map<String, com.google.javascript.rhino.jstype.JSType> f_names_to_types_4991_line_599 = namesToTypes;
	String p_name_5059_line_599 = name;
	com.google.javascript.rhino.jstype.JSType p_type_5058_line_599 = type;
	int PROBE_END_LINE_599 = 599;
	f_names_to_types_4991_line_599.put(p_name_5059_line_599, p_type_5058_line_599);

    // Add all the namespaces in which this name lives.
    while (true) {
      int PROBE_START_LINE_602 = 602;
		String p_name_5059_line_602 = name;
		int jstype_registry_1_expr232_line_602 = p_name_5059_line_602.indexOf('.');
		boolean jstype_registry_1_expr231_line_602 = jstype_registry_1_expr232_line_602 > 0;
		if (!(jstype_registry_1_expr231_line_602)) {
			break;
		}
		int PROBE_END_LINE_602 = 602;
	name = name.substring(0, name.lastIndexOf('.'));
      namespaces.add(name);
    }
  }

  private void registerNativeType(JSTypeNative typeId, JSType type) {
    int PROBE_START_LINE_609 = 609;
	com.google.javascript.rhino.jstype.JSType[] f_native_types_4989_line_609 = nativeTypes;
	com.google.javascript.rhino.jstype.JSTypeNative p_type_id_5060_line_609 = typeId;
	int jstype_registry_1_expr235_line_609 = p_type_id_5060_line_609.ordinal();
	com.google.javascript.rhino.jstype.JSType p_type_5061_line_609 = type;
	int PROBE_END_LINE_609 = 609;
	f_native_types_4989_line_609[jstype_registry_1_expr235_line_609] = p_type_5061_line_609;
  }

  /**
   * Tells the type system that {@code owner} may have a property named
   * {@code propertyName}. This allows the registry to keep track of what
   * types a property is defined upon.
   *
   * This is NOT the same as saying that {@code owner} must have a property
   * named type. ObjectType#hasProperty attempts to minimize false positives
   * ("if we're not sure, then don't type check this property"). The type
   * registry, on the other hand, should attempt to minimize false negatives
   * ("if this property is assigned anywhere in the program, it must
   * show up in the type registry").
   */
  public void registerPropertyOnType(String propertyName, JSType type) {
    int PROBE_START_LINE_625 = 625;
	Map<String, com.google.javascript.rhino.jstype.UnionTypeBuilder> f_types_indexed_by_property_4974_line_625 = typesIndexedByProperty;
	String p_property_name_5062_line_625 = propertyName;
	UnionTypeBuilder jstype_registry_1_expr236_line_625 = f_types_indexed_by_property_4974_line_625
			.get(p_property_name_5062_line_625);
	int PROBE_END_LINE_625 = 625;
	UnionTypeBuilder typeSet = jstype_registry_1_expr236_line_625;
    int PROBE_START_LINE_626 = 629;
	com.google.javascript.rhino.jstype.UnionTypeBuilder v_type_set_5064_line_626 = typeSet;
	boolean jstype_registry_1_expr237_line_626 = v_type_set_5064_line_626 == null;
	int PROBE_END_LINE_626 = 629;
	if (jstype_registry_1_expr237_line_626) {
      int PROBE_START_LINE_627 = 627;
		int f_property_checking_union_size_5065_line_627 = PROPERTY_CHECKING_UNION_SIZE;
		int PROBE_END_LINE_627 = 627;
	typeSet = new UnionTypeBuilder(this, f_property_checking_union_size_5065_line_627);
      int PROBE_START_LINE_628 = 628;
	Map<String, com.google.javascript.rhino.jstype.UnionTypeBuilder> f_types_indexed_by_property_4974_line_628 = typesIndexedByProperty;
	String p_property_name_5062_line_628 = propertyName;
	com.google.javascript.rhino.jstype.UnionTypeBuilder v_type_set_5064_line_628 = typeSet;
	int PROBE_END_LINE_628 = 628;
	f_types_indexed_by_property_4974_line_628.put(p_property_name_5062_line_628, v_type_set_5064_line_628);
    }

    int PROBE_START_LINE_631 = 631;
	com.google.javascript.rhino.jstype.UnionTypeBuilder v_type_set_5064_line_631 = typeSet;
	com.google.javascript.rhino.jstype.JSType p_type_5063_line_631 = type;
	int PROBE_END_LINE_631 = 631;
	v_type_set_5064_line_631.addAlternate(p_type_5063_line_631);
    int PROBE_START_LINE_632 = 632;
	String p_property_name_5062_line_632 = propertyName;
	com.google.javascript.rhino.jstype.JSType p_type_5063_line_632 = type;
	int PROBE_END_LINE_632 = 632;
	addReferenceTypeIndexedByProperty(p_property_name_5062_line_632, p_type_5063_line_632);

    int PROBE_START_LINE_635 = 635;
	Map<String, com.google.javascript.rhino.jstype.JSType> f_greatest_subtype_by_property_4975_line_635 = greatestSubtypeByProperty;
	String p_property_name_5062_line_635 = propertyName;
	int PROBE_END_LINE_635 = 635;
	// Clear cached values that depend on typesIndexedByProperty.
    f_greatest_subtype_by_property_4975_line_635.remove(p_property_name_5062_line_635);
  }

  private void addReferenceTypeIndexedByProperty(
      String propertyName, JSType type) {
    int PROBE_START_LINE_640 = 656;
		com.google.javascript.rhino.jstype.JSType p_type_5067_line_640 = type;
		boolean jstype_registry_1_expr246_line_640 = p_type_5067_line_640 instanceof ObjectType;
		boolean jstype_registry_1_expr247_line_640 = true;
		if (jstype_registry_1_expr246_line_640) {
			com.google.javascript.rhino.jstype.JSType p_type_5067_line_640_v1 = type;
			com.google.javascript.rhino.jstype.ObjectType jstype_registry_1_expr248_line_640 = ((ObjectType) p_type_5067_line_640_v1);
			jstype_registry_1_expr247_line_640 = jstype_registry_1_expr248_line_640.hasReferenceName();
		}
		boolean jstype_registry_1_expr245_line_640 = jstype_registry_1_expr246_line_640
				&& jstype_registry_1_expr247_line_640;
		int PROBE_END_LINE_640 = 656;
	if (jstype_registry_1_expr245_line_640) {
      Map<String, ObjectType> typeSet =
          eachRefTypeIndexedByProperty.get(propertyName);
      int PROBE_START_LINE_643 = 646;
	Map<String, com.google.javascript.rhino.jstype.ObjectType> v_type_set_5068_line_643 = typeSet;
	boolean jstype_registry_1_expr251_line_643 = v_type_set_5068_line_643 == null;
	int PROBE_END_LINE_643 = 646;
	if (jstype_registry_1_expr251_line_643) {
        int PROBE_START_LINE_644 = 644;
		HashMap<String, com.google.javascript.rhino.jstype.ObjectType> jstype_registry_1_expr253_line_644 = Maps
				.newHashMap();
		int PROBE_END_LINE_644 = 644;
		typeSet = jstype_registry_1_expr253_line_644;
        int PROBE_START_LINE_645 = 645;
		Map<String, Map<String, com.google.javascript.rhino.jstype.ObjectType>> f_each_ref_type_indexed_by_property_4994_line_645 = eachRefTypeIndexedByProperty;
		String p_property_name_5066_line_645 = propertyName;
		Map<String, com.google.javascript.rhino.jstype.ObjectType> v_type_set_5068_line_645 = typeSet;
		int PROBE_END_LINE_645 = 645;
		f_each_ref_type_indexed_by_property_4994_line_645.put(p_property_name_5066_line_645, v_type_set_5068_line_645);
      }
      int PROBE_START_LINE_647 = 647;
	com.google.javascript.rhino.jstype.JSType p_type_5067_line_647 = type;
	int PROBE_END_LINE_647 = 647;
	ObjectType objType = (ObjectType) p_type_5067_line_647;
      int PROBE_START_LINE_648 = 648;
	Map<String, com.google.javascript.rhino.jstype.ObjectType> v_type_set_5068_line_648 = typeSet;
	com.google.javascript.rhino.jstype.ObjectType v_obj_type_5069_line_648 = objType;
	String jstype_registry_1_expr257_line_648 = v_obj_type_5069_line_648.getReferenceName();
	com.google.javascript.rhino.jstype.ObjectType v_obj_type_5069_line_648_v1 = objType;
	int PROBE_END_LINE_648 = 648;
	v_type_set_5068_line_648.put(jstype_registry_1_expr257_line_648, v_obj_type_5069_line_648_v1);
    } else {
		int PROBE_START_LINE_649 = 656;
		com.google.javascript.rhino.jstype.JSType p_type_5067_line_649 = type;
		boolean jstype_registry_1_expr258_line_649 = p_type_5067_line_649 instanceof NamedType;
		int PROBE_END_LINE_649 = 656;
		if (jstype_registry_1_expr258_line_649) {
			addReferenceTypeIndexedByProperty(propertyName, ((NamedType) type).getReferencedType());
		} else if (type.isUnionType()) {
			for (JSType alternate : type.toMaybeUnionType().getAlternates()) {
				addReferenceTypeIndexedByProperty(propertyName, alternate);
			}
		}
	}
  }

  /**
   * Removes the index's reference to a property on the given type (if it is
   * currently registered). If the property is not registered on the type yet,
   * this method will not change internal state.
   *
   * @param propertyName the name of the property to unregister
   * @param type the type to unregister the property on.
   */
  public void unregisterPropertyOnType(String propertyName, JSType type) {
    // TODO(bashir): typesIndexedByProperty should also be updated!
    Map<String, ObjectType> typeSet =
        eachRefTypeIndexedByProperty.get(propertyName);
    if (typeSet != null) {
      typeSet.remove(type.toObjectType().getReferenceName());
    }
  }

  /**
   * Gets the greatest subtype of the {@code type} that has a property
   * {@code propertyName} defined on it.
   */
  public JSType getGreatestSubtypeWithProperty(
      JSType type, String propertyName) {
    if (greatestSubtypeByProperty.containsKey(propertyName)) {
      return greatestSubtypeByProperty.get(propertyName)
          .getGreatestSubtype(type);
    }
    if (typesIndexedByProperty.containsKey(propertyName)) {
      JSType built = typesIndexedByProperty.get(propertyName).build();
      greatestSubtypeByProperty.put(propertyName, built);
      return built.getGreatestSubtype(type);
    }
    return getNativeType(NO_TYPE);
  }

  /**
   * Returns whether the given property can possibly be set on the given type.
   */
  public boolean canPropertyBeDefined(JSType type, String propertyName) {
    if (typesIndexedByProperty.containsKey(propertyName)) {
      for (JSType alt :
               typesIndexedByProperty.get(propertyName).getAlternates()) {
        JSType greatestSubtype = alt.getGreatestSubtype(type);
        if (!greatestSubtype.isEmptyType()) {
          // We've found a type with this property. Now we just have to make
          // sure it's not a type used for internal bookkeeping.
          RecordType maybeRecordType = greatestSubtype.toMaybeRecordType();
          if (maybeRecordType != null && maybeRecordType.isSynthetic()) {
            continue;
          }

          return true;
        }
      }
    }
    return false;
  }

  /**
   * Returns each type that has a property {@code propertyName} defined on it.
   *
   * Like most types in our type system, the collection of types returned
   * will be collapsed. This means that if a type is defined on
   * {@code Object} and on {@code Array}, it would be reasonable for this
   * method to return either {@code [Object, Array]} or just {@code [Object]}.
   */
  public Iterable<JSType> getTypesWithProperty(String propertyName) {
    if (typesIndexedByProperty.containsKey(propertyName)) {
      return typesIndexedByProperty.get(propertyName).getAlternates();
    } else {
      return ImmutableList.of();
    }
  }

  /**
   * Returns each reference type that has a property {@code propertyName}
   * defined on it.
   *
   * Unlike most types in our type system, the collection of types returned
   * will not be collapsed. This means that if a type is defined on
   * {@code Object} and on {@code Array}, this method must return
   * {@code [Object, Array]}. It would not be correct to collapse them to
   * {@code [Object]}.
   */
  public Iterable<ObjectType> getEachReferenceTypeWithProperty(
      String propertyName) {
    if (eachRefTypeIndexedByProperty.containsKey(propertyName)) {
      return eachRefTypeIndexedByProperty.get(propertyName).values();
    } else {
      return ImmutableList.of();
    }
  }

  /**
   * Finds the common supertype of the two given object types.
   */
  ObjectType findCommonSuperObject(ObjectType a, ObjectType b) {
    List<ObjectType> stackA = getSuperStack(a);
    List<ObjectType> stackB = getSuperStack(b);

    ObjectType result = getNativeObjectType(JSTypeNative.OBJECT_TYPE);
    while (!stackA.isEmpty() && !stackB.isEmpty()) {
      ObjectType currentA = stackA.remove(stackA.size() - 1);
      ObjectType currentB = stackB.remove(stackB.size() - 1);
      if (currentA.isEquivalentTo(currentB)) {
        result = currentA;
      } else {
        return result;
      }
    }
    return result;
  }

  private static List<ObjectType> getSuperStack(ObjectType a) {
    List<ObjectType> stack = Lists.newArrayListWithExpectedSize(5);
    for (ObjectType current = a;
         current != null;
         current = current.getImplicitPrototype()) {
      stack.add(current);
    }
    return stack;
  }

  /**
   * Increments the current generation. Clients must call this in order to
   * move to the next generation of type resolution, allowing types to attempt
   * resolution again.
   */
  public void incrementGeneration() {
    for (NamedType type : resolvedNamedTypes.values()) {
      type.clearResolved();
    }
    unresolvedNamedTypes.putAll(resolvedNamedTypes);
    resolvedNamedTypes.clear();
  }

  boolean isLastGeneration() {
    int PROBE_START_LINE_796 = 796;
	boolean f_last_generation_4979_line_796 = lastGeneration;
	int PROBE_END_LINE_796 = 796;
	return f_last_generation_4979_line_796;
  }

  /**
   * Sets whether this is the last generation. In the last generation,
   * {@link NamedType} warns about unresolved types.
   */
  public void setLastGeneration(boolean lastGeneration) {
    this.lastGeneration = lastGeneration;
  }

  /**
   * Tells the type system that {@code type} implements interface {@code
   * interfaceInstance}.
   * {@code inter} must be an ObjectType for the instance of the interface as it
   * could be a named type and not yet have the constructor.
   */
  void registerTypeImplementingInterface(
      FunctionType type, ObjectType interfaceInstance) {
    interfaceToImplementors.put(interfaceInstance.getReferenceName(), type);
  }

  /**
   * Returns a collection of types that directly implement {@code
   * interfaceInstance}.  Subtypes of implementing types are not guaranteed to
   * be returned.  {@code interfaceInstance} must be an ObjectType for the
   * instance of the interface.
   */
  public Collection<FunctionType> getDirectImplementors(
      ObjectType interfaceInstance) {
    return interfaceToImplementors.get(interfaceInstance.getReferenceName());
  }

  /**
   * Records declared global type names. This makes resolution faster
   * and more robust in the common case.
   *
   * @param name The name of the type to be recorded.
   * @param t The actual type being associated with the name.
   * @return True if this name is not already defined, false otherwise.
   */
  public boolean declareType(String name, JSType t) {
    int PROBE_START_LINE_838 = 840;
	Map<String, com.google.javascript.rhino.jstype.JSType> f_names_to_types_4991_line_838 = namesToTypes;
	String p_name_5085_line_838 = name;
	boolean jstype_registry_1_expr259_line_838 = f_names_to_types_4991_line_838.containsKey(p_name_5085_line_838);
	int PROBE_END_LINE_838 = 840;
	if (jstype_registry_1_expr259_line_838) {
      return false;
    }
    int PROBE_START_LINE_841 = 841;
	com.google.javascript.rhino.jstype.JSType p_t_5086_line_841 = t;
	String p_name_5085_line_841 = name;
	int PROBE_END_LINE_841 = 841;
	register(p_t_5086_line_841, p_name_5085_line_841);
    return true;
  }

  /**
   * Overrides a declared global type name. Throws an exception if this
   * type name hasn't been declared yet.
   */
  public void overwriteDeclaredType(String name, JSType t) {
    Preconditions.checkState(namesToTypes.containsKey(name));
    register(t, name);
  }

  /**
   * Records a forward-declared type name. We will not emit errors if this
   * type name never resolves to anything.
   */
  public void forwardDeclareType(String name) {
    forwardDeclaredTypes.add(name);
  }

  /**
   * Whether this is a forward-declared type name.
   */
  public boolean isForwardDeclaredType(String name) {
    int PROBE_START_LINE_866 = 866;
	Set<String> f_forward_declared_types_4973_line_866 = forwardDeclaredTypes;
	String p_name_5090_line_866 = name;
	boolean jstype_registry_1_expr261_line_866 = f_forward_declared_types_4973_line_866.contains(p_name_5090_line_866);
	int PROBE_END_LINE_866 = 866;
	return jstype_registry_1_expr261_line_866;
  }

  /** Determines whether the given JS package exists. */
  public boolean hasNamespace(String name) {
    return namespaces.contains(name);
  }

  /**
   * Looks up a type by name.
   *
   * @param jsTypeName The name string.
   * @return the corresponding JSType object or {@code null} it cannot be found
   */
  public JSType getType(String jsTypeName) {
    int PROBE_START_LINE_883 = 883;
	Map<String, com.google.javascript.rhino.jstype.TemplateType> f_template_types_4980_line_883 = templateTypes;
	String p_js_type_name_5092_line_883 = jsTypeName;
	TemplateType jstype_registry_1_expr262_line_883 = f_template_types_4980_line_883.get(p_js_type_name_5092_line_883);
	int PROBE_END_LINE_883 = 883;
	// TODO(user): Push every local type name out of namesToTypes so that
    // NamedType#resolve is correct.
    TemplateType templateType = jstype_registry_1_expr262_line_883;
    int PROBE_START_LINE_884 = 886;
	com.google.javascript.rhino.jstype.TemplateType v_template_type_5093_line_884 = templateType;
	boolean jstype_registry_1_expr263_line_884 = v_template_type_5093_line_884 != null;
	int PROBE_END_LINE_884 = 886;
	if (jstype_registry_1_expr263_line_884) {
      return templateType;
    }
    int PROBE_START_LINE_887 = 887;
	Map<String, com.google.javascript.rhino.jstype.JSType> f_names_to_types_4991_line_887 = namesToTypes;
	String p_js_type_name_5092_line_887 = jsTypeName;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr264_line_887 = f_names_to_types_4991_line_887
			.get(p_js_type_name_5092_line_887);
	int PROBE_END_LINE_887 = 887;
	return jstype_registry_1_expr264_line_887;
  }

  public JSType getNativeType(JSTypeNative typeId) {
    int PROBE_START_LINE_891 = 891;
	com.google.javascript.rhino.jstype.JSType[] f_native_types_4989_line_891 = nativeTypes;
	com.google.javascript.rhino.jstype.JSTypeNative p_type_id_5094_line_891 = typeId;
	int jstype_registry_1_expr266_line_891 = p_type_id_5094_line_891.ordinal();
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr265_line_891 = f_native_types_4989_line_891[jstype_registry_1_expr266_line_891];
	int PROBE_END_LINE_891 = 891;
	return jstype_registry_1_expr265_line_891;
  }

  public ObjectType getNativeObjectType(JSTypeNative typeId) {
    int PROBE_START_LINE_895 = 895;
	com.google.javascript.rhino.jstype.JSTypeNative p_type_id_5095_line_895 = typeId;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr268_line_895 = getNativeType(
			p_type_id_5095_line_895);
	int PROBE_END_LINE_895 = 895;
	return (ObjectType) jstype_registry_1_expr268_line_895;
  }

  public FunctionType getNativeFunctionType(JSTypeNative typeId) {
    int PROBE_START_LINE_899 = 899;
	com.google.javascript.rhino.jstype.JSTypeNative p_type_id_5096_line_899 = typeId;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr270_line_899 = getNativeType(
			p_type_id_5096_line_899);
	int PROBE_END_LINE_899 = 899;
	return (FunctionType) jstype_registry_1_expr270_line_899;
  }

  /**
   * Looks up a type by name. To allow for forward references to types, an
   * unrecognized string has to be bound to a NamedType object that will be
   * resolved later.
   *
   * @param scope A scope for doing type name resolution.
   * @param jsTypeName The name string.
   * @param sourceName The name of the source file where this reference appears.
   * @param lineno The line number of the reference.
   * @return a NamedType if the string argument is not one of the known types,
   *     otherwise the corresponding JSType object.
   */
  public JSType getType(StaticScope<JSType> scope, String jsTypeName,
      String sourceName, int lineno, int charno) {
    int PROBE_START_LINE_916 = 916;
		String p_js_type_name_5098_line_916 = jsTypeName;
		JSType jstype_registry_1_expr271_line_916 = getType(p_js_type_name_5098_line_916);
		int PROBE_END_LINE_916 = 916;
	JSType type = jstype_registry_1_expr271_line_916;
    int PROBE_START_LINE_917 = 924;
	com.google.javascript.rhino.jstype.JSType v_type_5102_line_917 = type;
	boolean jstype_registry_1_expr272_line_917 = v_type_5102_line_917 == null;
	int PROBE_END_LINE_917 = 924;
	if (jstype_registry_1_expr272_line_917) {
      // TODO(user): Each instance should support named type creation using
      // interning.
      NamedType namedType =
          new NamedType(this, jsTypeName, sourceName, lineno, charno);
      int PROBE_START_LINE_922 = 922;
	Multimap<StaticScope<com.google.javascript.rhino.jstype.JSType>, com.google.javascript.rhino.jstype.NamedType> f_unresolved_named_types_4977_line_922 = unresolvedNamedTypes;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5097_line_922 = scope;
	com.google.javascript.rhino.jstype.NamedType v_named_type_5103_line_922 = namedType;
	int PROBE_END_LINE_922 = 922;
	f_unresolved_named_types_4977_line_922.put(p_scope_5097_line_922, v_named_type_5103_line_922);
      int PROBE_START_LINE_923 = 923;
	com.google.javascript.rhino.jstype.NamedType v_named_type_5103_line_923 = namedType;
	int PROBE_END_LINE_923 = 923;
	type = v_named_type_5103_line_923;
    }
    int PROBE_START_LINE_925 = 925;
	com.google.javascript.rhino.jstype.JSType v_type_5102_line_925 = type;
	int PROBE_END_LINE_925 = 925;
	return v_type_5102_line_925;
  }

  /**
   * Flushes out the current resolved and unresolved Named Types from
   * the type registry.  This is intended to be used ONLY before a
   * compile is run.
   */
  public void clearNamedTypes() {
    resolvedNamedTypes.clear();
    unresolvedNamedTypes.clear();
  }

  /**
   * Resolve all the unresolved types in the given scope.
   */
  public void resolveTypesInScope(StaticScope<JSType> scope) {
    int PROBE_START_LINE_942 = 944;
	Multimap<StaticScope<com.google.javascript.rhino.jstype.JSType>, com.google.javascript.rhino.jstype.NamedType> f_unresolved_named_types_4977_line_942 = unresolvedNamedTypes;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5104_line_942 = scope;
	Collection<com.google.javascript.rhino.jstype.NamedType> jstype_registry_1_expr276_line_942 = f_unresolved_named_types_4977_line_942
			.get(p_scope_5104_line_942);
	int PROBE_END_LINE_942 = 944;
	for (NamedType type : jstype_registry_1_expr276_line_942) {
      int PROBE_START_LINE_943 = 943;
		com.google.javascript.rhino.jstype.NamedType v_type_5105_line_943 = type;
		com.google.javascript.rhino.ErrorReporter f_reporter_4988_line_943 = reporter;
		StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5104_line_943 = scope;
		int PROBE_END_LINE_943 = 943;
	v_type_5105_line_943.resolve(f_reporter_4988_line_943, p_scope_5104_line_943);
    }

    int PROBE_START_LINE_946 = 946;
	Multimap<StaticScope<com.google.javascript.rhino.jstype.JSType>, com.google.javascript.rhino.jstype.NamedType> f_resolved_named_types_4978_line_946 = resolvedNamedTypes;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5104_line_946 = scope;
	Multimap<StaticScope<com.google.javascript.rhino.jstype.JSType>, com.google.javascript.rhino.jstype.NamedType> f_unresolved_named_types_4977_line_946 = unresolvedNamedTypes;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5104_line_946_v1 = scope;
	Collection<com.google.javascript.rhino.jstype.NamedType> jstype_registry_1_expr279_line_946 = f_unresolved_named_types_4977_line_946
			.removeAll(p_scope_5104_line_946_v1);
	int PROBE_END_LINE_946 = 946;
	f_resolved_named_types_4978_line_946.putAll(p_scope_5104_line_946, jstype_registry_1_expr279_line_946);

    int PROBE_START_LINE_948 = 964;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5104_line_948 = scope;
	boolean jstype_registry_1_expr281_line_948 = p_scope_5104_line_948 != null;
	boolean jstype_registry_1_expr282_line_948 = true;
	if (jstype_registry_1_expr281_line_948) {
		StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5104_line_948_v1 = scope;
		StaticScope<com.google.javascript.rhino.jstype.JSType> jstype_registry_1_expr283_line_948 = p_scope_5104_line_948_v1
				.getParentScope();
		jstype_registry_1_expr282_line_948 = jstype_registry_1_expr283_line_948 == null;
	}
	boolean jstype_registry_1_expr280_line_948 = jstype_registry_1_expr281_line_948
			&& jstype_registry_1_expr282_line_948;
	int PROBE_END_LINE_948 = 964;
	if (jstype_registry_1_expr280_line_948) {
      int PROBE_START_LINE_952 = 953;
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr285_line_952 = getNativeType(
				JSTypeNative.GLOBAL_THIS);
		int PROBE_END_LINE_952 = 953;
	// By default, the global "this" type is just an anonymous object.
      // If the user has defined a Window type, make the Window the
      // implicit prototype of "this".
      PrototypeObjectType globalThis = (PrototypeObjectType) jstype_registry_1_expr285_line_952;
      int PROBE_START_LINE_954 = 954;
	JSType jstype_registry_1_expr286_line_954 = getType("Window");
	int PROBE_END_LINE_954 = 954;
	JSType windowType = jstype_registry_1_expr286_line_954;
      int PROBE_START_LINE_955 = 963;
	com.google.javascript.rhino.jstype.PrototypeObjectType v_global_this_5106_line_955 = globalThis;
	boolean jstype_registry_1_expr287_line_955 = v_global_this_5106_line_955.isUnknownType();
	int PROBE_END_LINE_955 = 963;
	if (jstype_registry_1_expr287_line_955) {
        ObjectType windowObjType = ObjectType.cast(windowType);
        if (windowObjType != null) {
          globalThis.setImplicitPrototype(windowObjType);
        } else {
          globalThis.setImplicitPrototype(
              getNativeObjectType(JSTypeNative.OBJECT_TYPE));
        }
      }
    }
  }

  /**
   * Creates a type representing optional values of the given type.
   * @return the union of the type and the void type
   */
  public JSType createOptionalType(JSType type) {
    int PROBE_START_LINE_972 = 976;
	com.google.javascript.rhino.jstype.JSType p_type_5108_line_972 = type;
	boolean jstype_registry_1_expr289_line_972 = p_type_5108_line_972 instanceof UnknownType;
	boolean jstype_registry_1_expr290_line_972 = false;
	if (!jstype_registry_1_expr289_line_972) {
		com.google.javascript.rhino.jstype.JSType p_type_5108_line_972_v1 = type;
		jstype_registry_1_expr290_line_972 = p_type_5108_line_972_v1.isAllType();
	}
	boolean jstype_registry_1_expr288_line_972 = jstype_registry_1_expr289_line_972
			|| jstype_registry_1_expr290_line_972;
	int PROBE_END_LINE_972 = 976;
	if (jstype_registry_1_expr288_line_972) {
      int PROBE_START_LINE_973 = 973;
		com.google.javascript.rhino.jstype.JSType p_type_5108_line_973 = type;
		int PROBE_END_LINE_973 = 973;
	return p_type_5108_line_973;
    } else {
      return createUnionType(type, getNativeType(JSTypeNative.VOID_TYPE));
    }
  }

  /**
   * Creates a type representing nullable values of the given type.
   * @return the union of the type and the Null type
   */
  public JSType createDefaultObjectUnion(JSType type) {
    int PROBE_START_LINE_984 = 992;
	com.google.javascript.rhino.jstype.JSType p_type_5109_line_984 = type;
	boolean jstype_registry_1_expr291_line_984 = p_type_5109_line_984.isTemplateType();
	int PROBE_END_LINE_984 = 992;
	if (jstype_registry_1_expr291_line_984) {
      // Template types represent the substituted type exactly and should
      // not be wrapped.
      return type;
    } else {
      int PROBE_START_LINE_989 = 991;
		boolean jstype_registry_1_expr293_line_989 = shouldTolerateUndefinedValues();
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr292_line_989 = jstype_registry_1_expr293_line_989
				? createOptionalNullableType(type)
				: createNullableType(type);
		int PROBE_END_LINE_989 = 991;
	return jstype_registry_1_expr292_line_989;
    }
  }

  /**
   * Creates a type representing nullable values of the given type.
   * @return the union of the type and the Null type
   */
  public JSType createNullableType(JSType type) {
    int PROBE_START_LINE_1000 = 1000;
	com.google.javascript.rhino.jstype.JSType p_type_5110_line_1000 = type;
	com.google.javascript.rhino.jstype.JSTypeNative q_null_type_204_line_1000 = JSTypeNative.NULL_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr297_line_1000 = getNativeType(
			q_null_type_204_line_1000);
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr296_line_1000 = createUnionType(
			p_type_5110_line_1000, jstype_registry_1_expr297_line_1000);
	int PROBE_END_LINE_1000 = 1000;
	return jstype_registry_1_expr296_line_1000;
  }

  /**
   * Creates a nullable and undefine-able value of the given type.
   * @return The union of the type and null and undefined.
   */
  public JSType createOptionalNullableType(JSType type) {
    return createUnionType(type, getNativeType(JSTypeNative.VOID_TYPE),
        getNativeType(JSTypeNative.NULL_TYPE));
  }

  /**
   * Creates a union type whose variants are the arguments.
   */
  public JSType createUnionType(JSType... variants) {
    UnionTypeBuilder builder = new UnionTypeBuilder(this);
    int PROBE_START_LINE_1017 = 1019;
	com.google.javascript.rhino.jstype.JSType[] p_variants_5112_line_1017 = variants;
	int PROBE_END_LINE_1017 = 1019;
	for (JSType type : p_variants_5112_line_1017) {
      int PROBE_START_LINE_1018 = 1018;
		com.google.javascript.rhino.jstype.UnionTypeBuilder v_builder_5113_line_1018 = builder;
		com.google.javascript.rhino.jstype.JSType v_type_5114_line_1018 = type;
		int PROBE_END_LINE_1018 = 1018;
	v_builder_5113_line_1018.addAlternate(v_type_5114_line_1018);
    }
    int PROBE_START_LINE_1020 = 1020;
	com.google.javascript.rhino.jstype.UnionTypeBuilder v_builder_5113_line_1020 = builder;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr301_line_1020 = v_builder_5113_line_1020.build();
	int PROBE_END_LINE_1020 = 1020;
	return jstype_registry_1_expr301_line_1020;
  }

  /**
   * Creates a union type whose variants are the built-in types specified
   * by the arguments.
   */
  public JSType createUnionType(JSTypeNative... variants) {
    UnionTypeBuilder builder = new UnionTypeBuilder(this);
    int PROBE_START_LINE_1029 = 1031;
	com.google.javascript.rhino.jstype.JSTypeNative[] p_variants_5115_line_1029 = variants;
	int PROBE_END_LINE_1029 = 1031;
	for (JSTypeNative typeId : p_variants_5115_line_1029) {
      int PROBE_START_LINE_1030 = 1030;
		com.google.javascript.rhino.jstype.UnionTypeBuilder v_builder_5116_line_1030 = builder;
		com.google.javascript.rhino.jstype.JSTypeNative v_type_id_5117_line_1030 = typeId;
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr305_line_1030 = getNativeType(
				v_type_id_5117_line_1030);
		int PROBE_END_LINE_1030 = 1030;
	v_builder_5116_line_1030.addAlternate(jstype_registry_1_expr305_line_1030);
    }
    int PROBE_START_LINE_1032 = 1032;
	com.google.javascript.rhino.jstype.UnionTypeBuilder v_builder_5116_line_1032 = builder;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr306_line_1032 = v_builder_5116_line_1032.build();
	int PROBE_END_LINE_1032 = 1032;
	return jstype_registry_1_expr306_line_1032;
  }

  /**
   * Creates an enum type.
   */
  public EnumType createEnumType(
      String name, Node source, JSType elementsType) {
    return new EnumType(this, name, source, elementsType);
  }

  /**
   * Creates an arrow type, an abstract representation of the parameters
   * and return value of a function.
   *
   * @param parametersNode the parameters' types, formatted as a Node with
   *     param names and optionality info.
   * @param returnType the function's return type
   */
  ArrowType createArrowType(Node parametersNode, JSType returnType) {
    int PROBE_START_LINE_1052 = 1052;
	com.google.javascript.rhino.Node p_parameters_node_5121_line_1052 = parametersNode;
	com.google.javascript.rhino.jstype.JSType p_return_type_5122_line_1052 = returnType;
	int PROBE_END_LINE_1052 = 1052;
	return new ArrowType(this, p_parameters_node_5121_line_1052, p_return_type_5122_line_1052);
  }

  /**
   * Creates an arrow type with an unknown return type.
   *
   * @param parametersNode the parameters' types, formatted as a Node with
   *     param names and optionality info.
   */
  ArrowType createArrowType(Node parametersNode) {
    int PROBE_START_LINE_1062 = 1062;
	com.google.javascript.rhino.Node p_parameters_node_5123_line_1062 = parametersNode;
	int PROBE_END_LINE_1062 = 1062;
	return new ArrowType(this, p_parameters_node_5123_line_1062, null);
  }

  /**
   * Creates a function type.
   *
   * @param returnType the function's return type
   * @param parameterTypes the parameters' types
   */
  public FunctionType createFunctionType(
      JSType returnType, JSType... parameterTypes) {
    return createFunctionType(returnType, createParameters(parameterTypes));
  }

  /**
   * Creates a function type. The last parameter type of the function is
   * considered a variable length argument.
   *
   * @param returnType the function's return type
   * @param parameterTypes the parameters' types
   */
  public FunctionType createFunctionTypeWithVarArgs(
      JSType returnType, List<JSType> parameterTypes) {
    return createFunctionType(
        returnType, createParametersWithVarArgs(parameterTypes));
  }

  /**
   * Creates a function type.
   *
   * @param returnType the function's return type
   * @param parameterTypes the parameters' types
   */
  public FunctionType createFunctionType(
      JSType returnType, List<JSType> parameterTypes) {
    return createFunctionType(returnType, createParameters(parameterTypes));
  }

  /**
   * Creates a function type. The last parameter type of the function is
   * considered a variable length argument.
   *
   * @param returnType the function's return type
   * @param parameterTypes the parameters' types
   */
  public FunctionType createFunctionTypeWithVarArgs(
      JSType returnType, JSType... parameterTypes) {
    int PROBE_START_LINE_1109 = 1110;
		com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr311_line_1109 = createFunctionType(
				returnType, createParametersWithVarArgs(parameterTypes));
		int PROBE_END_LINE_1109 = 1110;
	return jstype_registry_1_expr311_line_1109;
  }

  /**
   * Creates a function type. The last parameter type of the function is
   * considered a variable length argument.
   *
   * @param returnType the function's return type
   * @param parameterTypes the parameters' types
   */
  private FunctionType createNativeFunctionTypeWithVarArgs(
      JSType returnType, JSType... parameterTypes) {
    int PROBE_START_LINE_1122 = 1123;
		com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr313_line_1122 = createNativeFunctionType(
				returnType, createParametersWithVarArgs(parameterTypes));
		int PROBE_END_LINE_1122 = 1123;
	return jstype_registry_1_expr313_line_1122;
  }

  /**
   * Creates a function type which can act as a constructor.
   *
   * @param returnType the function's return type
   * @param parameterTypes the parameters' types
   */
  public FunctionType createConstructorType(
      JSType returnType, JSType... parameterTypes) {
    return createConstructorType(
        null, null, createParameters(parameterTypes), returnType, null);
  }

  /**
   * Creates a function type which can act as a constructor. The last
   * parameter type of the constructor is considered a variable length argument.
   *
   * @param returnType the function's return type
   * @param parameterTypes the parameters' types
   */
  private FunctionType createConstructorTypeWithVarArgs(
      JSType returnType, JSType... parameterTypes) {
    return createConstructorType(
        null, null, createParametersWithVarArgs(parameterTypes), returnType,
        null);
  }

  /**
   * Creates a function type in which {@code this} refers to an object instance.
   *
   * @param instanceType the type of {@code this}
   * @param returnType the function's return type
   * @param parameterTypes the parameters' types
   */
  public JSType createFunctionType(ObjectType instanceType,
      JSType returnType, List<JSType> parameterTypes) {
    return new FunctionBuilder(this)
        .withParamsNode(createParameters(parameterTypes))
        .withReturnType(returnType)
        .withTypeOfThis(instanceType)
        .build();
  }

  /**
   * Creates a function type in which {@code this} refers to an object instance.
   * The last parameter type of the function is considered a variable length
   * argument.
   *
   * @param instanceType the type of {@code this}
   * @param returnType the function's return type
   * @param parameterTypes the parameters' types
   */
  public JSType createFunctionTypeWithVarArgs(ObjectType instanceType,
      JSType returnType, List<JSType> parameterTypes) {
    return new FunctionBuilder(this)
        .withParamsNode(createParametersWithVarArgs(parameterTypes))
        .withReturnType(returnType)
        .withTypeOfThis(instanceType)
        .build();
  }

  /**
   * Creates a tree hierarchy representing a typed argument list.
   *
   * @param parameterTypes the parameter types.
   * @return a tree hierarchy representing a typed argument list.
   */
  public Node createParameters(List<JSType> parameterTypes) {
    return createParameters(
        parameterTypes.toArray(new JSType[parameterTypes.size()]));
  }

  /**
   * Creates a tree hierarchy representing a typed argument list. The last
   * parameter type is considered a variable length argument.
   *
   * @param parameterTypes the parameter types. The last element of this array
   *     is considered a variable length argument.
   * @return a tree hierarchy representing a typed argument list.
   */
  public Node createParametersWithVarArgs(List<JSType> parameterTypes) {
    return createParametersWithVarArgs(
        parameterTypes.toArray(new JSType[parameterTypes.size()]));
  }

  /**
   * Creates a tree hierarchy representing a typed argument list.
   *
   * @param parameterTypes the parameter types.
   * @return a tree hierarchy representing a typed argument list.
   */
  public Node createParameters(JSType... parameterTypes) {
    return createParameters(false, parameterTypes);
  }

  /**
   * Creates a tree hierarchy representing a typed argument list. The last
   * parameter type is considered a variable length argument.
   *
   * @param parameterTypes the parameter types. The last element of this array
   *     is considered a variable length argument.
   * @return a tree hierarchy representing a typed argument list.
   */
  public Node createParametersWithVarArgs(JSType... parameterTypes) {
    int PROBE_START_LINE_1229 = 1229;
	com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5147_line_1229 = parameterTypes;
	com.google.javascript.rhino.Node jstype_registry_1_expr315_line_1229 = createParameters(true,
			p_parameter_types_5147_line_1229);
	int PROBE_END_LINE_1229 = 1229;
	return jstype_registry_1_expr315_line_1229;
  }

  /**
   * Creates a tree hierarchy representing a typed parameter list in which
   * every parameter is optional.
   */
  public Node createOptionalParameters(JSType... parameterTypes) {
    FunctionParamBuilder builder = new FunctionParamBuilder(this);
    int PROBE_START_LINE_1238 = 1238;
	com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_5149_line_1238 = builder;
	com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5148_line_1238 = parameterTypes;
	int PROBE_END_LINE_1238 = 1238;
	v_builder_5149_line_1238.addOptionalParams(p_parameter_types_5148_line_1238);
    int PROBE_START_LINE_1239 = 1239;
	com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_5149_line_1239 = builder;
	com.google.javascript.rhino.Node jstype_registry_1_expr319_line_1239 = v_builder_5149_line_1239.build();
	int PROBE_END_LINE_1239 = 1239;
	return jstype_registry_1_expr319_line_1239;
  }

  /**
   * Creates a tree hierarchy representing a typed argument list.
   *
   * @param lastVarArgs whether the last type should considered as a variable
   *     length argument.
   * @param parameterTypes the parameter types. The last element of this array
   *     is considered a variable length argument is {@code lastVarArgs} is
   *     {@code true}.
   * @return a tree hierarchy representing a typed argument list
   */
  private Node createParameters(boolean lastVarArgs, JSType... parameterTypes) {
    FunctionParamBuilder builder = new FunctionParamBuilder(this);
    int PROBE_START_LINE_1254 = 1254;
	com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5151_line_1254 = parameterTypes;
	int q_length_204_line_1254 = p_parameter_types_5151_line_1254.length;
	int jstype_registry_1_expr322_line_1254 = q_length_204_line_1254 - 1;
	int PROBE_END_LINE_1254 = 1254;
	int max = jstype_registry_1_expr322_line_1254;
    for (int i = 0; true; i++) {
      int PROBE_START_LINE_1256 = 1260;
		int v_i_5154_line_1255 = i;
		int v_max_5153_line_1255 = max;
		boolean jstype_registry_1_expr324_line_1255 = v_i_5154_line_1255 <= v_max_5153_line_1255;
		if (!(jstype_registry_1_expr324_line_1255)) {
			break;
		}
		boolean p_last_var_args_5150_line_1256 = lastVarArgs;
		boolean jstype_registry_1_expr327_line_1256 = true;
		if (p_last_var_args_5150_line_1256) {
			int v_i_5154_line_1256 = i;
			int v_max_5153_line_1256 = max;
			jstype_registry_1_expr327_line_1256 = v_i_5154_line_1256 == v_max_5153_line_1256;
		}
		boolean jstype_registry_1_expr326_line_1256 = p_last_var_args_5150_line_1256
				&& jstype_registry_1_expr327_line_1256;
		int PROBE_END_LINE_1256 = 1260;
	if (jstype_registry_1_expr326_line_1256) {
        int PROBE_START_LINE_1257 = 1257;
		com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_5152_line_1257 = builder;
		com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5151_line_1257 = parameterTypes;
		int v_i_5154_line_1257 = i;
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr329_line_1257 = p_parameter_types_5151_line_1257[v_i_5154_line_1257];
		int PROBE_END_LINE_1257 = 1257;
		v_builder_5152_line_1257.addVarArgs(jstype_registry_1_expr329_line_1257);
      } else {
        int PROBE_START_LINE_1259 = 1259;
		com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_5152_line_1259 = builder;
		com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5151_line_1259 = parameterTypes;
		int v_i_5154_line_1259 = i;
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr331_line_1259 = p_parameter_types_5151_line_1259[v_i_5154_line_1259];
		int PROBE_END_LINE_1259 = 1259;
		v_builder_5152_line_1259.addRequiredParams(jstype_registry_1_expr331_line_1259);
      }
    }
    int PROBE_START_LINE_1262 = 1262;
	com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_5152_line_1262 = builder;
	com.google.javascript.rhino.Node jstype_registry_1_expr332_line_1262 = v_builder_5152_line_1262.build();
	int PROBE_END_LINE_1262 = 1262;
	return jstype_registry_1_expr332_line_1262;
  }

  /**
   * Creates a function type.
   * @param returnType the function's return type
   * @param lastVarArgs whether the last parameter type should be considered as
   * an extensible var_args parameter
   * @param parameterTypes the parameters' types
   */
  public FunctionType createFunctionType(JSType returnType,
      boolean lastVarArgs, JSType... parameterTypes) {
    int PROBE_START_LINE_1274 = 1278;
		boolean p_last_var_args_5156_line_1274 = lastVarArgs;
		int PROBE_END_LINE_1274 = 1278;
	if (p_last_var_args_5156_line_1274) {
      int PROBE_START_LINE_1275 = 1275;
		com.google.javascript.rhino.jstype.JSType p_return_type_5155_line_1275 = returnType;
		com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5157_line_1275 = parameterTypes;
		com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr333_line_1275 = createFunctionTypeWithVarArgs(
				p_return_type_5155_line_1275, p_parameter_types_5157_line_1275);
		int PROBE_END_LINE_1275 = 1275;
	return jstype_registry_1_expr333_line_1275;
    } else {
      return createFunctionType(returnType, parameterTypes);
    }
  }

  /**
   * Creates a new function type based on an existing function type but
   * with a new return type.
   * @param existingFunctionType the existing function type.
   * @param returnType the new return type.
   */
  public FunctionType createFunctionTypeWithNewReturnType(
      FunctionType existingFunctionType, JSType returnType) {
    return new FunctionBuilder(this)
        .copyFromOtherFunction(existingFunctionType)
        .withReturnType(returnType)
        .build();
  }

  /**
   * Creates a new function type based on an existing function type but
   * with a new {@code this} type.
   * @param existingFunctionType the existing function type.
   * @param thisType the new this type.
   */
  public FunctionType createFunctionTypeWithNewThisType(
      FunctionType existingFunctionType, ObjectType thisType) {
    return new FunctionBuilder(this)
        .copyFromOtherFunction(existingFunctionType)
        .withTypeOfThis(thisType)
        .build();
  }

  /**
   * @param parameters the function's parameters or {@code null}
   *        to indicate that the parameter types are unknown.
   * @param returnType the function's return type or {@code null} to indicate
   *        that the return type is unknown.
   */
  public FunctionType createFunctionType(
      JSType returnType, Node parameters) {
    int PROBE_START_LINE_1317 = 1320;
		com.google.javascript.rhino.jstype.FunctionBuilder jstype_registry_1_expr336_line_1317 = new FunctionBuilder(
				this).withParamsNode(parameters);
		com.google.javascript.rhino.jstype.FunctionBuilder jstype_registry_1_expr335_line_1317 = jstype_registry_1_expr336_line_1317
				.withReturnType(returnType);
		com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr334_line_1317 = jstype_registry_1_expr335_line_1317
				.build();
		int PROBE_END_LINE_1317 = 1320;
	return jstype_registry_1_expr334_line_1317;
  }

  private FunctionType createNativeFunctionType(
      JSType returnType, Node parameters) {
    int PROBE_START_LINE_1325 = 1329;
		com.google.javascript.rhino.jstype.FunctionBuilder jstype_registry_1_expr342_line_1325 = new FunctionBuilder(
				this).withParamsNode(parameters);
		com.google.javascript.rhino.jstype.FunctionBuilder jstype_registry_1_expr341_line_1325 = jstype_registry_1_expr342_line_1325
				.withReturnType(returnType);
		com.google.javascript.rhino.jstype.FunctionBuilder jstype_registry_1_expr340_line_1325 = jstype_registry_1_expr341_line_1325
				.forNativeType();
		com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr339_line_1325 = jstype_registry_1_expr340_line_1325
				.build();
		int PROBE_END_LINE_1325 = 1329;
	return jstype_registry_1_expr339_line_1325;
  }

  /**
   * Creates a function type which can act as a constructor.
   * @param returnType the function's return type
   * @param lastVarArgs whether the last parameter type should be considered as
   * an extensible var_args parameter
   * @param parameterTypes the parameters' types
   */
  public FunctionType createConstructorType(JSType returnType,
      boolean lastVarArgs, JSType... parameterTypes) {
    if (lastVarArgs) {
      return createConstructorTypeWithVarArgs(returnType, parameterTypes);
    } else {
      return createConstructorType(returnType, parameterTypes);
    }
  }

  /**
   * Create an object type.
   */
  public ObjectType createObjectType(ObjectType implicitPrototype) {
    return createObjectType(null, null, implicitPrototype);
  }

  /**
   * Creates a record type.
   */
  public RecordType createRecordType(Map<String, RecordProperty> properties) {
    return new RecordType(this, properties);
  }

  /**
   * Create an object type.
   */
  public ObjectType createObjectType(String name, Node n,
      ObjectType implicitPrototype) {
    return new PrototypeObjectType(this, name, implicitPrototype);
  }

  /**
   * Create an anonymous object type.
   * @param info Used to mark object literals as structs; can be {@code null}
   */
  public ObjectType createAnonymousObjectType(JSDocInfo info) {
    PrototypeObjectType type = new PrototypeObjectType(this, null, null);
    type.setPrettyPrint(true);
    type.setJSDocInfo(info);
    return type;
  }

  /**
   * Set the implicit prototype if it's possible to do so.
   * @return True if we were able to set the implicit prototype successfully,
   *     false if it was not possible to do so for some reason. There are
   *     a few different reasons why this could fail: for example, numbers
   *     can't be implicit prototypes, and we don't want to change the implicit
   *     prototype if other classes have already subclassed this one.
   */
  public boolean resetImplicitPrototype(
      JSType type, ObjectType newImplicitProto) {
    if (type instanceof PrototypeObjectType) {
      PrototypeObjectType poType = (PrototypeObjectType) type;
      poType.clearCachedValues();
      poType.setImplicitPrototype(newImplicitProto);
      return true;
    }
    return false;
  }

  /**
   * Create an anonymous object type for a native type.
   */
  ObjectType createNativeAnonymousObjectType() {
    PrototypeObjectType type =
        new PrototypeObjectType(this, null, null, true, null, null);
    type.setPrettyPrint(true);
    return type;
  }

  /**
   * Creates a constructor function type.
   * @param name the function's name or {@code null} to indicate that the
   *     function is anonymous.
   * @param source the node defining this function. Its type
   *     ({@link Node#getType()}) must be {@link Token#FUNCTION}.
   * @param parameters the function's parameters or {@code null}
   *     to indicate that the parameter types are unknown.
   * @param returnType the function's return type or {@code null} to indicate
   *     that the return type is unknown.
   * @param templateKeys the templatized type keys for the class.
   */
  public FunctionType createConstructorType(String name, Node source,
      Node parameters, JSType returnType, ImmutableList<String> templateKeys) {
    return new FunctionType(this, name, source,
        createArrowType(parameters, returnType), null,
        templateKeys, true, false);
  }

  /**
   * Creates an interface function type.
   * @param name the function's name
   * @param source the node defining this function. Its type
   *     ({@link Node#getType()}) must be {@link Token#FUNCTION}.
   */
  public FunctionType createInterfaceType(String name, Node source) {
    int PROBE_START_LINE_1436 = 1436;
	String p_name_5182_line_1436 = name;
	com.google.javascript.rhino.Node p_source_5183_line_1436 = source;
	com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr345_line_1436 = FunctionType
			.forInterface(this, p_name_5182_line_1436, p_source_5183_line_1436);
	int PROBE_END_LINE_1436 = 1436;
	return jstype_registry_1_expr345_line_1436;
  }

  /**
   * Creates a parameterized type.
   */
  public ParameterizedType createParameterizedType(
      ObjectType objectType, JSType parameterType) {
    return new ParameterizedType(this, objectType, parameterType);
  }

  /**
   * Creates a templatized instance of the specified type.
   * @param baseType the type to be templatized.
   * @param templatizedTypes a list of the template JSTypes. Will be matched by
   *     list order to the template keys specified in the constructor function.
   */
  public JSType createTemplatizedType(
      JSType baseType, ImmutableList<JSType> templatizedTypes) {
    // Only instance object types can currently be templatized; extend this
    // logic when more types can be templatized.
    if (baseType instanceof InstanceObjectType) {
      ObjectType baseObjType = baseType.toObjectType();
      return new InstanceObjectType(
          this, baseObjType.getConstructor(), baseObjType.isNativeObjectType(),
          templatizedTypes);
    } else {
      throw new IllegalArgumentException(
          "Only instance object types can be templatized");
    }
  }

  /**
   * Creates a named type.
   */
  @VisibleForTesting
  public JSType createNamedType(String reference,
      String sourceName, int lineno, int charno) {
    return new NamedType(this, reference, sourceName, lineno, charno);
  }

  /**
   * Identifies the name of a typedef or enum before we actually declare it.
   */
  public void identifyNonNullableName(String name) {
    Preconditions.checkNotNull(name);
    nonNullableTypeNames.add(name);
  }

  /**
   * Creates a JSType from the nodes representing a type.
   * @param n The node with type info.
   * @param sourceName The source file name.
   * @param scope A scope for doing type name lookups.
   */
  public JSType createFromTypeNodes(Node n, String sourceName,
      StaticScope<JSType> scope) {
    int PROBE_START_LINE_1493 = 1500;
		com.google.javascript.rhino.jstype.JSTypeRegistry.ResolveMode f_resolve_mode_4984_line_1493 = resolveMode;
		com.google.javascript.rhino.jstype.JSTypeRegistry.ResolveMode q_lazy_expressions_205_line_1493 = ResolveMode.LAZY_EXPRESSIONS;
		boolean jstype_registry_1_expr347_line_1493 = f_resolve_mode_4984_line_1493 == q_lazy_expressions_205_line_1493;
		int PROBE_END_LINE_1493 = 1500;
	if (jstype_registry_1_expr347_line_1493) {
      // If the type expression doesn't contain any names, just
      // resolve it anyway.
      boolean hasNames = hasTypeName(n);
      if (hasNames) {
        return new UnresolvedTypeExpression(this, n, sourceName);
      }
    }
    int PROBE_START_LINE_1501 = 1501;
	com.google.javascript.rhino.Node p_n_5193_line_1501 = n;
	String p_source_name_5194_line_1501 = sourceName;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5195_line_1501 = scope;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr348_line_1501 = createFromTypeNodesInternal(
			p_n_5193_line_1501, p_source_name_5194_line_1501, p_scope_5195_line_1501);
	int PROBE_END_LINE_1501 = 1501;
	return jstype_registry_1_expr348_line_1501;
  }

  private boolean hasTypeName(Node n) {
    if (n.getType() == Token.STRING) {
      return true;
    }

    for (Node child = n.getFirstChild();
         child != null; child = child.getNext()) {
      if (hasTypeName(child)) {
        return true;
      }
    }

    return false;
  }

  /** @see #createFromTypeNodes(Node, String, StaticScope) */
  private JSType createFromTypeNodesInternal(Node n, String sourceName,
      StaticScope<JSType> scope) {
    int PROBE_START_LINE_1522 = 1670;
		com.google.javascript.rhino.Node p_n_5197_line_1522 = n;
		int jstype_registry_1_expr349_line_1522 = p_n_5197_line_1522.getType();
		int PROBE_END_LINE_1522 = 1670;
	switch (jstype_registry_1_expr349_line_1522) {
      case Token.LC: // Record type.
        return createRecordTypeFromNodes(
            n.getFirstChild(), sourceName, scope);

      case Token.BANG: // Not nullable
	int PROBE_START_LINE_1528 = 1530;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr351_line_1528 = createFromTypeNodesInternal(
			n.getFirstChild(), sourceName, scope);
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr350_line_1528 = jstype_registry_1_expr351_line_1528
			.restrictByNotNullOrUndefined();
	int PROBE_END_LINE_1528 = 1530;
	return jstype_registry_1_expr350_line_1528;

      case Token.QMARK: // Nullable or unknown
        Node firstChild = n.getFirstChild();
        if (firstChild == null) {
          return getNativeType(UNKNOWN_TYPE);
        }
        return createDefaultObjectUnion(
            createFromTypeNodesInternal(
                firstChild, sourceName, scope));

      case Token.EQUALS: // Optional
        return createOptionalType(
            createFromTypeNodesInternal(
                n.getFirstChild(), sourceName, scope));

      case Token.ELLIPSIS: // Var args
        return createOptionalType(
            createFromTypeNodesInternal(
                n.getFirstChild(), sourceName, scope));

      case Token.STAR: // The AllType
        return getNativeType(ALL_TYPE);

      case Token.LB: // Array type
        // TODO(nicksantos): Enforce membership restrictions on the Array.
        return getNativeType(ARRAY_TYPE);

      case Token.PIPE: // Union type
        UnionTypeBuilder builder = new UnionTypeBuilder(this);
        for (Node child = n.getFirstChild(); child != null;
             child = child.getNext()) {
          builder.addAlternate(
              createFromTypeNodesInternal(child, sourceName, scope));
        }
        return builder.build();

      case Token.EMPTY: // When the return value of a function is not specified
        return getNativeType(UNKNOWN_TYPE);

      case Token.VOID: // Only allowed in the return value of a function.
        return getNativeType(VOID_TYPE);

      case Token.STRING:
	int PROBE_START_LINE_1574 = 1575;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5199_line_1574 = scope;
	com.google.javascript.rhino.Node p_n_5197_line_1574 = n;
	String jstype_registry_1_expr354_line_1574 = p_n_5197_line_1574.getString();
	String p_source_name_5198_line_1574 = sourceName;
	JSType jstype_registry_1_expr353_line_1574 = getType(p_scope_5199_line_1574, jstype_registry_1_expr354_line_1574,
			p_source_name_5198_line_1574, n.getLineno(), n.getCharno());
	int PROBE_END_LINE_1574 = 1575;
	JSType namedType = jstype_registry_1_expr353_line_1574;
	int PROBE_START_LINE_1576 = 1578;
	com.google.javascript.rhino.jstype.JSTypeRegistry.ResolveMode f_resolve_mode_4984_line_1576 = resolveMode;
	com.google.javascript.rhino.jstype.JSTypeRegistry.ResolveMode q_lazy_names_206_line_1576 = ResolveMode.LAZY_NAMES;
	boolean jstype_registry_1_expr357_line_1576 = f_resolve_mode_4984_line_1576 != q_lazy_names_206_line_1576;
	int PROBE_END_LINE_1576 = 1578;
	if (jstype_registry_1_expr357_line_1576) {
          namedType = namedType.resolveInternal(reporter, scope);
        }
	int PROBE_START_LINE_1579 = 1601;
	com.google.javascript.rhino.jstype.JSType v_named_type_5200_line_1579 = namedType;
	boolean jstype_registry_1_expr360_line_1579 = v_named_type_5200_line_1579 instanceof ObjectType;
	boolean jstype_registry_1_expr359_line_1579 = (jstype_registry_1_expr360_line_1579);
	boolean jstype_registry_1_expr358_line_1579 = jstype_registry_1_expr359_line_1579
			&& !(nonNullableTypeNames.contains(n.getString()));
	int PROBE_END_LINE_1579 = 1601;
	if (jstype_registry_1_expr358_line_1579) {
          int PROBE_START_LINE_1581 = 1581;
				com.google.javascript.rhino.Node p_n_5197_line_1581 = n;
				Node jstype_registry_1_expr361_line_1581 = p_n_5197_line_1581.getFirstChild();
				int PROBE_END_LINE_1581 = 1581;
		Node typeList = jstype_registry_1_expr361_line_1581;
          int PROBE_START_LINE_1582 = 1597;
		com.google.javascript.rhino.Node v_type_list_5201_line_1582 = typeList;
		boolean jstype_registry_1_expr363_line_1582 = v_type_list_5201_line_1582 != null;
		boolean jstype_registry_1_expr362_line_1582 = jstype_registry_1_expr363_line_1582
				&& ("Array".equals(n.getString()) || "Object".equals(n.getString()));
		int PROBE_END_LINE_1582 = 1597;
		if (jstype_registry_1_expr362_line_1582) {
            JSType parameterType =
                createFromTypeNodesInternal(
                    typeList.getLastChild(), sourceName, scope);
            namedType = new ParameterizedType(
                this, (ObjectType) namedType, parameterType);
            if (typeList.hasMoreThanOneChild()) {
              JSType indexType =
                  createFromTypeNodesInternal(
                      typeList.getFirstChild(), sourceName, scope);
              namedType = new IndexedType(
                  this, (ObjectType) namedType, indexType);
            }
          }
          int PROBE_START_LINE_1598 = 1598;
		com.google.javascript.rhino.jstype.JSType v_named_type_5200_line_1598 = namedType;
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr364_line_1598 = createDefaultObjectUnion(
				v_named_type_5200_line_1598);
		int PROBE_END_LINE_1598 = 1598;
		return jstype_registry_1_expr364_line_1598;
        } else {
          return namedType;
        }

      case Token.FUNCTION:
        ObjectType thisType = null;
        boolean isConstructor = false;
        Node current = n.getFirstChild();
        if (current.getType() == Token.THIS ||
            current.getType() == Token.NEW) {
          Node contextNode = current.getFirstChild();
          thisType =
              ObjectType.cast(
                  createFromTypeNodesInternal(
                      contextNode, sourceName, scope)
                  .restrictByNotNullOrUndefined());
          if (thisType == null) {
            reporter.warning(
                ScriptRuntime.getMessage0(
                    current.getType() == Token.THIS ?
                    "msg.jsdoc.function.thisnotobject" :
                    "msg.jsdoc.function.newnotobject"),
                sourceName,
                contextNode.getLineno(), contextNode.getCharno());
          }

          isConstructor = current.getType() == Token.NEW;
          current = current.getNext();
        }

        FunctionParamBuilder paramBuilder = new FunctionParamBuilder(this);

        if (current.getType() == Token.PARAM_LIST) {
          Node args = current.getFirstChild();
          for (Node arg = current.getFirstChild(); arg != null;
               arg = arg.getNext()) {
            if (arg.getType() == Token.ELLIPSIS) {
              if (arg.getChildCount() == 0) {
                paramBuilder.addVarArgs(getNativeType(UNKNOWN_TYPE));
              } else {
                paramBuilder.addVarArgs(
                    createFromTypeNodesInternal(
                        arg.getFirstChild(), sourceName, scope));
              }
            } else {
              JSType type = createFromTypeNodesInternal(
                  arg, sourceName, scope);
              if (arg.getType() == Token.EQUALS) {
                boolean addSuccess = paramBuilder.addOptionalParams(type);
                if (!addSuccess) {
                  reporter.warning(
                      ScriptRuntime.getMessage0("msg.jsdoc.function.varargs"),
                      sourceName, arg.getLineno(), arg.getCharno());
                }
              } else {
                paramBuilder.addRequiredParams(type);
              }
            }
          }
          current = current.getNext();
        }

        JSType returnType =
            createFromTypeNodesInternal(current, sourceName, scope);

        return new FunctionBuilder(this)
            .withParams(paramBuilder)
            .withReturnType(returnType)
            .withTypeOfThis(thisType)
            .setIsConstructor(isConstructor)
            .build();
    }

    throw new IllegalStateException(
        "Unexpected node in type expression: " + n.toString());
  }

  /**
   * Creates a RecordType from the nodes representing said record type.
   * @param n The node with type info.
   * @param sourceName The source file name.
   * @param scope A scope for doing type name lookups.
   */
  private JSType createRecordTypeFromNodes(Node n, String sourceName,
      StaticScope<JSType> scope) {

    RecordTypeBuilder builder = new RecordTypeBuilder(this);

    // For each of the fields in the record type.
    for (Node fieldTypeNode = n.getFirstChild();
         fieldTypeNode != null;
         fieldTypeNode = fieldTypeNode.getNext()) {

      // Get the property's name.
      Node fieldNameNode = fieldTypeNode;
      boolean hasType = false;

      if (fieldTypeNode.getType() == Token.COLON) {
        fieldNameNode = fieldTypeNode.getFirstChild();
        hasType = true;
      }

      String fieldName = fieldNameNode.getString();

      // TODO(user): Move this into the lexer/parser.
      // Remove the string literal characters around a field name,
      // if any.
      if (fieldName.startsWith("'") || fieldName.startsWith("\"")) {
        fieldName = fieldName.substring(1, fieldName.length() - 1);
      }

      // Get the property's type.
      JSType fieldType = null;

      if (hasType) {
        // We have a declared type.
        fieldType = createFromTypeNodesInternal(
            fieldTypeNode.getLastChild(), sourceName, scope);
      } else {
        // Otherwise, the type is UNKNOWN.
        fieldType = getNativeType(JSTypeNative.UNKNOWN_TYPE);
      }

      // Add the property to the record.
      if (builder.addProperty(fieldName, fieldType, fieldNameNode) == null) {
        // Duplicate field name, warning and skip
        reporter.warning(
            "Duplicate record field " + fieldName,
            sourceName,
            n.getLineno(), fieldNameNode.getCharno());
      }
    }

    return builder.build();
  }

  /**
   * Sets the template type name.
   */
  public void setTemplateTypeNames(List<String> names) {
    int PROBE_START_LINE_1739 = 1739;
	List<String> p_names_5205_line_1739 = names;
	int PROBE_END_LINE_1739 = 1739;
	Preconditions.checkNotNull(p_names_5205_line_1739);
    int PROBE_START_LINE_1740 = 1742;
	List<String> p_names_5205_line_1740 = names;
	int PROBE_END_LINE_1740 = 1742;
	for (String name : p_names_5205_line_1740) {
      templateTypes.put(name, new TemplateType(this, name));
    }
  }

  /**
   * Clears the template type name.
   */
  public void clearTemplateTypeNames() {
    int PROBE_START_LINE_1749 = 1749;
	Map<String, com.google.javascript.rhino.jstype.TemplateType> f_template_types_4980_line_1749 = templateTypes;
	int PROBE_END_LINE_1749 = 1749;
	f_template_types_4980_line_1749.clear();
  }
}
