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
import com.google.javascript.rhino.SimpleErrorReporter;
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
   * The name associated with the template variable corresponding to the
   * property key type of the built-in Javascript object.
   */
  public static final String OBJECT_INDEX_TEMPLATE = "Object#Key";

  private TemplateType objectIndexTemplateKey;

  /**
   * The name associated with the template variable corresponding to the
   * property value type for Javascript Objects and Arrays.
   */
  public static final String OBJECT_ELEMENT_TEMPLATE = "Object#Element";

  private TemplateType objectElementTemplateKey;

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

  int PROBE_START_LINE_175 = 175;

private HashMap<String, com.google.javascript.rhino.jstype.TemplateType> jstype_registry_1_expr9_line_175 = Maps
		.newHashMap();

int PROBE_END_LINE_175 = 175;

// The template type name.
  private Map<String, TemplateType> templateTypes = jstype_registry_1_expr9_line_175;

  // A single empty TemplateTypeMap, which can be safely reused in cases where
  // there are no template types.
  private final TemplateTypeMap emptyTemplateTypeMap;

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

  int PROBE_START_LINE_211 = 211;

private com.google.javascript.rhino.jstype.JSTypeRegistry.ResolveMode q_lazy_names_203_line_211 = ResolveMode.LAZY_NAMES;

int PROBE_END_LINE_211 = 211;

private ResolveMode resolveMode = q_lazy_names_203_line_211;

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
    int PROBE_START_LINE_225 = 225;
		com.google.javascript.rhino.ErrorReporter p_reporter_5651_line_225 = reporter;
		int PROBE_END_LINE_225 = 225;
	this.reporter = p_reporter_5651_line_225;
    this.emptyTemplateTypeMap = new TemplateTypeMap(
        this, ImmutableList.<TemplateType>of(), ImmutableList.<JSType>of());
    int PROBE_START_LINE_228 = 228;
	com.google.javascript.rhino.jstype.JSTypeNative[] jstype_registry_1_expr23_line_228 = JSTypeNative.values();
	int jstype_registry_1_expr22_line_228 = jstype_registry_1_expr23_line_228.length;
	int PROBE_END_LINE_228 = 228;
	nativeTypes = new JSType[jstype_registry_1_expr22_line_228];
    namesToTypes = new HashMap<String, JSType>();
    resetForTypeCheck();
    int PROBE_START_LINE_231 = 231;
	boolean p_tolerate_undefined_values_5652_line_231 = tolerateUndefinedValues;
	int PROBE_END_LINE_231 = 231;
	this.tolerateUndefinedValues = p_tolerate_undefined_values_5652_line_231;
  }

  /**
   * @return The template variable corresponding to the property value type for
   * Javascript Objects and Arrays.
   */
  public TemplateType getObjectElementKey() {
    int PROBE_START_LINE_239 = 239;
	com.google.javascript.rhino.jstype.TemplateType f_object_element_template_key_5659_line_239 = this.objectElementTemplateKey;
	int PROBE_END_LINE_239 = 239;
	return f_object_element_template_key_5659_line_239;
  }

  /**
   * @return The template variable corresponding to the
   * property key type of the built-in Javascript object.
   */
  public TemplateType getObjectIndexKey() {
    Preconditions.checkNotNull(objectIndexTemplateKey);
    return objectIndexTemplateKey;
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
    int PROBE_START_LINE_264 = 264;
	com.google.javascript.rhino.ErrorReporter f_reporter_5653_line_264 = reporter;
	int PROBE_END_LINE_264 = 264;
	return f_reporter_5653_line_264;
  }

  public boolean shouldTolerateUndefinedValues() {
    return tolerateUndefinedValues;
  }

  /**
   * Reset to run the TypeCheck pass.
   */
  public void resetForTypeCheck() {
    int PROBE_START_LINE_275 = 275;
	Map<String, com.google.javascript.rhino.jstype.UnionTypeBuilder> f_types_indexed_by_property_5639_line_275 = typesIndexedByProperty;
	int PROBE_END_LINE_275 = 275;
	f_types_indexed_by_property_5639_line_275.clear();
    int PROBE_START_LINE_276 = 276;
	Map<String, Map<String, com.google.javascript.rhino.jstype.ObjectType>> f_each_ref_type_indexed_by_property_5661_line_276 = eachRefTypeIndexedByProperty;
	int PROBE_END_LINE_276 = 276;
	f_each_ref_type_indexed_by_property_5661_line_276.clear();
    initializeBuiltInTypes();
    int PROBE_START_LINE_278 = 278;
	Map<String, com.google.javascript.rhino.jstype.JSType> f_names_to_types_5657_line_278 = namesToTypes;
	int PROBE_END_LINE_278 = 278;
	f_names_to_types_5657_line_278.clear();
    int PROBE_START_LINE_279 = 279;
	Set<String> f_namespaces_5636_line_279 = namespaces;
	int PROBE_END_LINE_279 = 279;
	f_namespaces_5636_line_279.clear();
    initializeRegistry();
  }

  private void initializeBuiltInTypes() {
    int PROBE_START_LINE_284 = 284;
	String f_object_index_template_5663_line_284 = OBJECT_INDEX_TEMPLATE;
	int PROBE_END_LINE_284 = 284;
	objectIndexTemplateKey = new TemplateType(this, f_object_index_template_5663_line_284);
    int PROBE_START_LINE_285 = 285;
	String f_object_element_template_5664_line_285 = OBJECT_ELEMENT_TEMPLATE;
	int PROBE_END_LINE_285 = 285;
	objectElementTemplateKey = new TemplateType(this, f_object_element_template_5664_line_285);

    // These locals shouldn't be all caps.
    BooleanType BOOLEAN_TYPE = new BooleanType(this);
    int PROBE_START_LINE_289 = 289;
	com.google.javascript.rhino.jstype.JSTypeNative q_boolean_type_204_line_289 = JSTypeNative.BOOLEAN_TYPE;
	com.google.javascript.rhino.jstype.BooleanType v_boolean_type_5665_line_289 = BOOLEAN_TYPE;
	int PROBE_END_LINE_289 = 289;
	registerNativeType(q_boolean_type_204_line_289, v_boolean_type_5665_line_289);

    NullType NULL_TYPE = new NullType(this);
    int PROBE_START_LINE_292 = 292;
	com.google.javascript.rhino.jstype.JSTypeNative q_null_type_205_line_292 = JSTypeNative.NULL_TYPE;
	com.google.javascript.rhino.jstype.NullType v_null_type_5666_line_292 = NULL_TYPE;
	int PROBE_END_LINE_292 = 292;
	registerNativeType(q_null_type_205_line_292, v_null_type_5666_line_292);

    NumberType NUMBER_TYPE = new NumberType(this);
    int PROBE_START_LINE_295 = 295;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_type_206_line_295 = JSTypeNative.NUMBER_TYPE;
	com.google.javascript.rhino.jstype.NumberType v_number_type_5667_line_295 = NUMBER_TYPE;
	int PROBE_END_LINE_295 = 295;
	registerNativeType(q_number_type_206_line_295, v_number_type_5667_line_295);

    StringType STRING_TYPE = new StringType(this);
    int PROBE_START_LINE_298 = 298;
	com.google.javascript.rhino.jstype.JSTypeNative q_string_type_207_line_298 = JSTypeNative.STRING_TYPE;
	com.google.javascript.rhino.jstype.StringType v_string_type_5668_line_298 = STRING_TYPE;
	int PROBE_END_LINE_298 = 298;
	registerNativeType(q_string_type_207_line_298, v_string_type_5668_line_298);

    UnknownType UNKNOWN_TYPE = new UnknownType(this, false);
    int PROBE_START_LINE_301 = 301;
	com.google.javascript.rhino.jstype.JSTypeNative q_unknown_type_208_line_301 = JSTypeNative.UNKNOWN_TYPE;
	com.google.javascript.rhino.jstype.UnknownType v_unknown_type_5669_line_301 = UNKNOWN_TYPE;
	int PROBE_END_LINE_301 = 301;
	registerNativeType(q_unknown_type_208_line_301, v_unknown_type_5669_line_301);
    UnknownType checkedUnknownType = new UnknownType(this, true);
    registerNativeType(
        JSTypeNative.CHECKED_UNKNOWN_TYPE, checkedUnknownType);

    VoidType VOID_TYPE = new VoidType(this);
    int PROBE_START_LINE_307 = 307;
	com.google.javascript.rhino.jstype.JSTypeNative q_void_type_210_line_307 = JSTypeNative.VOID_TYPE;
	com.google.javascript.rhino.jstype.VoidType v_void_type_5671_line_307 = VOID_TYPE;
	int PROBE_END_LINE_307 = 307;
	registerNativeType(q_void_type_210_line_307, v_void_type_5671_line_307);

    AllType ALL_TYPE = new AllType(this);
    int PROBE_START_LINE_310 = 310;
	com.google.javascript.rhino.jstype.JSTypeNative q_all_type_211_line_310 = JSTypeNative.ALL_TYPE;
	com.google.javascript.rhino.jstype.AllType v_all_type_5672_line_310 = ALL_TYPE;
	int PROBE_END_LINE_310 = 310;
	registerNativeType(q_all_type_211_line_310, v_all_type_5672_line_310);

    // Top Level Prototype (the One)
    // The initializations of TOP_LEVEL_PROTOTYPE and OBJECT_FUNCTION_TYPE
    // use each other's results, so at least one of them will get null
    // instead of an actual type; however, this seems to be benign.
    PrototypeObjectType TOP_LEVEL_PROTOTYPE =
        new PrototypeObjectType(this, null, null, true, null);
    int PROBE_START_LINE_318 = 318;
	com.google.javascript.rhino.jstype.JSTypeNative q_top_level_prototype_212_line_318 = JSTypeNative.TOP_LEVEL_PROTOTYPE;
	com.google.javascript.rhino.jstype.PrototypeObjectType v_top_level_prototype_5673_line_318 = TOP_LEVEL_PROTOTYPE;
	int PROBE_END_LINE_318 = 318;
	registerNativeType(q_top_level_prototype_212_line_318, v_top_level_prototype_5673_line_318);

    // Object
    FunctionType OBJECT_FUNCTION_TYPE =
        new FunctionType(this, "Object", null,
            createArrowType(createOptionalParameters(ALL_TYPE), UNKNOWN_TYPE),
            null,
            createTemplateTypeMap(ImmutableList.of(
                objectIndexTemplateKey, objectElementTemplateKey), null),
            true, true);

    int PROBE_START_LINE_329 = 329;
	com.google.javascript.rhino.jstype.FunctionType v_object_function_type_5674_line_329 = OBJECT_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.PrototypeObjectType v_top_level_prototype_5673_line_329 = TOP_LEVEL_PROTOTYPE;
	int PROBE_END_LINE_329 = 329;
	v_object_function_type_5674_line_329.setPrototype(v_top_level_prototype_5673_line_329, null);
    int PROBE_START_LINE_330 = 330;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_function_type_213_line_330 = JSTypeNative.OBJECT_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_object_function_type_5674_line_330 = OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_330 = 330;
	registerNativeType(q_object_function_type_213_line_330, v_object_function_type_5674_line_330);

    int PROBE_START_LINE_332 = 332;
	com.google.javascript.rhino.jstype.FunctionType v_object_function_type_5674_line_332 = OBJECT_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr73_line_332 = v_object_function_type_5674_line_332.getInstanceType();
	int PROBE_END_LINE_332 = 332;
	ObjectType OBJECT_TYPE = jstype_registry_1_expr73_line_332;
    int PROBE_START_LINE_333 = 333;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_type_214_line_333 = JSTypeNative.OBJECT_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_object_type_5675_line_333 = OBJECT_TYPE;
	int PROBE_END_LINE_333 = 333;
	registerNativeType(q_object_type_214_line_333, v_object_type_5675_line_333);

    int PROBE_START_LINE_335 = 335;
	com.google.javascript.rhino.jstype.FunctionType v_object_function_type_5674_line_335 = OBJECT_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr75_line_335 = v_object_function_type_5674_line_335.getPrototype();
	int PROBE_END_LINE_335 = 335;
	ObjectType OBJECT_PROTOTYPE = jstype_registry_1_expr75_line_335;
    int PROBE_START_LINE_336 = 336;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_prototype_214_line_336 = JSTypeNative.OBJECT_PROTOTYPE;
	com.google.javascript.rhino.jstype.ObjectType v_object_prototype_5676_line_336 = OBJECT_PROTOTYPE;
	int PROBE_END_LINE_336 = 336;
	registerNativeType(q_object_prototype_214_line_336, v_object_prototype_5676_line_336);

    // Function
    FunctionType FUNCTION_FUNCTION_TYPE =
        new FunctionType(this, "Function", null,
            createArrowType(
                createParametersWithVarArgs(ALL_TYPE), UNKNOWN_TYPE),
            null, null, true, true);
    int PROBE_START_LINE_344 = 344;
	com.google.javascript.rhino.jstype.FunctionType v_function_function_type_5677_line_344 = FUNCTION_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_object_type_5675_line_344 = OBJECT_TYPE;
	int PROBE_END_LINE_344 = 344;
	v_function_function_type_5677_line_344.setPrototypeBasedOn(v_object_type_5675_line_344);
    registerNativeType(
        JSTypeNative.FUNCTION_FUNCTION_TYPE, FUNCTION_FUNCTION_TYPE);

    int PROBE_START_LINE_348 = 348;
	com.google.javascript.rhino.jstype.FunctionType v_function_function_type_5677_line_348 = FUNCTION_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr80_line_348 = v_function_function_type_5677_line_348.getPrototype();
	int PROBE_END_LINE_348 = 348;
	ObjectType FUNCTION_PROTOTYPE = jstype_registry_1_expr80_line_348;
    int PROBE_START_LINE_349 = 349;
	com.google.javascript.rhino.jstype.JSTypeNative q_function_prototype_216_line_349 = JSTypeNative.FUNCTION_PROTOTYPE;
	com.google.javascript.rhino.jstype.ObjectType v_function_prototype_5678_line_349 = FUNCTION_PROTOTYPE;
	int PROBE_END_LINE_349 = 349;
	registerNativeType(q_function_prototype_216_line_349, v_function_prototype_5678_line_349);

    NoType NO_TYPE = new NoType(this);
    int PROBE_START_LINE_352 = 352;
	com.google.javascript.rhino.jstype.JSTypeNative q_no_type_217_line_352 = JSTypeNative.NO_TYPE;
	com.google.javascript.rhino.jstype.NoType v_no_type_5679_line_352 = NO_TYPE;
	int PROBE_END_LINE_352 = 352;
	registerNativeType(q_no_type_217_line_352, v_no_type_5679_line_352);

    NoObjectType NO_OBJECT_TYPE = new NoObjectType(this);
    int PROBE_START_LINE_355 = 355;
	com.google.javascript.rhino.jstype.JSTypeNative q_no_object_type_218_line_355 = JSTypeNative.NO_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.NoObjectType v_no_object_type_5680_line_355 = NO_OBJECT_TYPE;
	int PROBE_END_LINE_355 = 355;
	registerNativeType(q_no_object_type_218_line_355, v_no_object_type_5680_line_355);

    NoObjectType NO_RESOLVED_TYPE = new NoResolvedType(this);
    int PROBE_START_LINE_358 = 358;
	com.google.javascript.rhino.jstype.JSTypeNative q_no_resolved_type_219_line_358 = JSTypeNative.NO_RESOLVED_TYPE;
	com.google.javascript.rhino.jstype.NoObjectType v_no_resolved_type_5681_line_358 = NO_RESOLVED_TYPE;
	int PROBE_END_LINE_358 = 358;
	registerNativeType(q_no_resolved_type_219_line_358, v_no_resolved_type_5681_line_358);

    // Array
    FunctionType ARRAY_FUNCTION_TYPE =
      new FunctionType(this, "Array", null,
          createArrowType(createParametersWithVarArgs(ALL_TYPE), null),
          null,
          createTemplateTypeMap(ImmutableList.of(
              objectElementTemplateKey), null),
          true, true);
    int PROBE_START_LINE_368 = 369;
	com.google.javascript.rhino.jstype.FunctionType v_array_function_type_5682_line_368 = ARRAY_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ArrowType jstype_registry_1_expr95_line_368 = v_array_function_type_5682_line_368
			.getInternalArrowType();
	int PROBE_END_LINE_368 = 369;
	jstype_registry_1_expr95_line_368.returnType =
        ARRAY_FUNCTION_TYPE.getInstanceType();

    int PROBE_START_LINE_371 = 371;
	com.google.javascript.rhino.jstype.FunctionType v_array_function_type_5682_line_371 = ARRAY_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr96_line_371 = v_array_function_type_5682_line_371.getPrototype();
	int PROBE_END_LINE_371 = 371;
	ObjectType arrayPrototype = jstype_registry_1_expr96_line_371;
    int PROBE_START_LINE_372 = 372;
	com.google.javascript.rhino.jstype.JSTypeNative q_array_function_type_220_line_372 = JSTypeNative.ARRAY_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_array_function_type_5682_line_372 = ARRAY_FUNCTION_TYPE;
	int PROBE_END_LINE_372 = 372;
	registerNativeType(q_array_function_type_220_line_372, v_array_function_type_5682_line_372);

    int PROBE_START_LINE_374 = 374;
	com.google.javascript.rhino.jstype.FunctionType v_array_function_type_5682_line_374 = ARRAY_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr98_line_374 = v_array_function_type_5682_line_374.getInstanceType();
	int PROBE_END_LINE_374 = 374;
	ObjectType ARRAY_TYPE = jstype_registry_1_expr98_line_374;
    int PROBE_START_LINE_375 = 375;
	com.google.javascript.rhino.jstype.JSTypeNative q_array_type_221_line_375 = JSTypeNative.ARRAY_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_array_type_5684_line_375 = ARRAY_TYPE;
	int PROBE_END_LINE_375 = 375;
	registerNativeType(q_array_type_221_line_375, v_array_type_5684_line_375);

    // Boolean
    FunctionType BOOLEAN_OBJECT_FUNCTION_TYPE =
        new FunctionType(this, "Boolean", null,
            createArrowType(createOptionalParameters(ALL_TYPE), BOOLEAN_TYPE),
            null, null, true, true);
    int PROBE_START_LINE_382 = 382;
	com.google.javascript.rhino.jstype.FunctionType v_boolean_object_function_type_5685_line_382 = BOOLEAN_OBJECT_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr101_line_382 = v_boolean_object_function_type_5685_line_382.getPrototype();
	int PROBE_END_LINE_382 = 382;
	ObjectType booleanPrototype = jstype_registry_1_expr101_line_382;
    registerNativeType(
        JSTypeNative.BOOLEAN_OBJECT_FUNCTION_TYPE,
        BOOLEAN_OBJECT_FUNCTION_TYPE);

    ObjectType BOOLEAN_OBJECT_TYPE =
        BOOLEAN_OBJECT_FUNCTION_TYPE.getInstanceType();
    int PROBE_START_LINE_389 = 389;
	com.google.javascript.rhino.jstype.JSTypeNative q_boolean_object_type_223_line_389 = JSTypeNative.BOOLEAN_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_boolean_object_type_5687_line_389 = BOOLEAN_OBJECT_TYPE;
	int PROBE_END_LINE_389 = 389;
	registerNativeType(q_boolean_object_type_223_line_389, v_boolean_object_type_5687_line_389);

    // Date
    FunctionType DATE_FUNCTION_TYPE =
      new FunctionType(this, "Date", null,
          createArrowType(
              createOptionalParameters(UNKNOWN_TYPE, UNKNOWN_TYPE, UNKNOWN_TYPE,
                  UNKNOWN_TYPE, UNKNOWN_TYPE, UNKNOWN_TYPE, UNKNOWN_TYPE),
              STRING_TYPE),
          null, null, true, true);
    int PROBE_START_LINE_399 = 399;
	com.google.javascript.rhino.jstype.FunctionType v_date_function_type_5688_line_399 = DATE_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr106_line_399 = v_date_function_type_5688_line_399.getPrototype();
	int PROBE_END_LINE_399 = 399;
	ObjectType datePrototype = jstype_registry_1_expr106_line_399;
    int PROBE_START_LINE_400 = 400;
	com.google.javascript.rhino.jstype.JSTypeNative q_date_function_type_224_line_400 = JSTypeNative.DATE_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_date_function_type_5688_line_400 = DATE_FUNCTION_TYPE;
	int PROBE_END_LINE_400 = 400;
	registerNativeType(q_date_function_type_224_line_400, v_date_function_type_5688_line_400);

    int PROBE_START_LINE_402 = 402;
	com.google.javascript.rhino.jstype.FunctionType v_date_function_type_5688_line_402 = DATE_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr108_line_402 = v_date_function_type_5688_line_402.getInstanceType();
	int PROBE_END_LINE_402 = 402;
	ObjectType DATE_TYPE = jstype_registry_1_expr108_line_402;
    int PROBE_START_LINE_403 = 403;
	com.google.javascript.rhino.jstype.JSTypeNative q_date_type_225_line_403 = JSTypeNative.DATE_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_date_type_5690_line_403 = DATE_TYPE;
	int PROBE_END_LINE_403 = 403;
	registerNativeType(q_date_type_225_line_403, v_date_type_5690_line_403);

    // Error
    FunctionType ERROR_FUNCTION_TYPE = new ErrorFunctionType(this, "Error");
    int PROBE_START_LINE_407 = 407;
	com.google.javascript.rhino.jstype.JSTypeNative q_error_function_type_226_line_407 = JSTypeNative.ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_error_function_type_5691_line_407 = ERROR_FUNCTION_TYPE;
	int PROBE_END_LINE_407 = 407;
	registerNativeType(q_error_function_type_226_line_407, v_error_function_type_5691_line_407);

    int PROBE_START_LINE_409 = 409;
	com.google.javascript.rhino.jstype.FunctionType v_error_function_type_5691_line_409 = ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr113_line_409 = v_error_function_type_5691_line_409.getInstanceType();
	int PROBE_END_LINE_409 = 409;
	ObjectType ERROR_TYPE = jstype_registry_1_expr113_line_409;
    int PROBE_START_LINE_410 = 410;
	com.google.javascript.rhino.jstype.JSTypeNative q_error_type_227_line_410 = JSTypeNative.ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5692_line_410 = ERROR_TYPE;
	int PROBE_END_LINE_410 = 410;
	registerNativeType(q_error_type_227_line_410, v_error_type_5692_line_410);

    // EvalError
    FunctionType EVAL_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "EvalError");
    int PROBE_START_LINE_415 = 415;
	com.google.javascript.rhino.jstype.FunctionType v_eval_error_function_type_5693_line_415 = EVAL_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5692_line_415 = ERROR_TYPE;
	int PROBE_END_LINE_415 = 415;
	v_eval_error_function_type_5693_line_415.setPrototypeBasedOn(v_error_type_5692_line_415);
    registerNativeType(
        JSTypeNative.EVAL_ERROR_FUNCTION_TYPE, EVAL_ERROR_FUNCTION_TYPE);

    int PROBE_START_LINE_419 = 419;
	com.google.javascript.rhino.jstype.FunctionType v_eval_error_function_type_5693_line_419 = EVAL_ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr118_line_419 = v_eval_error_function_type_5693_line_419.getInstanceType();
	int PROBE_END_LINE_419 = 419;
	ObjectType EVAL_ERROR_TYPE = jstype_registry_1_expr118_line_419;
    int PROBE_START_LINE_420 = 420;
	com.google.javascript.rhino.jstype.JSTypeNative q_eval_error_type_229_line_420 = JSTypeNative.EVAL_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_eval_error_type_5694_line_420 = EVAL_ERROR_TYPE;
	int PROBE_END_LINE_420 = 420;
	registerNativeType(q_eval_error_type_229_line_420, v_eval_error_type_5694_line_420);

    // RangeError
    FunctionType RANGE_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "RangeError");
    int PROBE_START_LINE_425 = 425;
	com.google.javascript.rhino.jstype.FunctionType v_range_error_function_type_5695_line_425 = RANGE_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5692_line_425 = ERROR_TYPE;
	int PROBE_END_LINE_425 = 425;
	v_range_error_function_type_5695_line_425.setPrototypeBasedOn(v_error_type_5692_line_425);
    registerNativeType(
        JSTypeNative.RANGE_ERROR_FUNCTION_TYPE, RANGE_ERROR_FUNCTION_TYPE);

    int PROBE_START_LINE_429 = 429;
	com.google.javascript.rhino.jstype.FunctionType v_range_error_function_type_5695_line_429 = RANGE_ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr123_line_429 = v_range_error_function_type_5695_line_429.getInstanceType();
	int PROBE_END_LINE_429 = 429;
	ObjectType RANGE_ERROR_TYPE = jstype_registry_1_expr123_line_429;
    int PROBE_START_LINE_430 = 430;
	com.google.javascript.rhino.jstype.JSTypeNative q_range_error_type_231_line_430 = JSTypeNative.RANGE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_range_error_type_5696_line_430 = RANGE_ERROR_TYPE;
	int PROBE_END_LINE_430 = 430;
	registerNativeType(q_range_error_type_231_line_430, v_range_error_type_5696_line_430);

    // ReferenceError
    FunctionType REFERENCE_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "ReferenceError");
    int PROBE_START_LINE_435 = 435;
	com.google.javascript.rhino.jstype.FunctionType v_reference_error_function_type_5697_line_435 = REFERENCE_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5692_line_435 = ERROR_TYPE;
	int PROBE_END_LINE_435 = 435;
	v_reference_error_function_type_5697_line_435.setPrototypeBasedOn(v_error_type_5692_line_435);
    registerNativeType(
        JSTypeNative.REFERENCE_ERROR_FUNCTION_TYPE,
        REFERENCE_ERROR_FUNCTION_TYPE);

    ObjectType REFERENCE_ERROR_TYPE =
        REFERENCE_ERROR_FUNCTION_TYPE.getInstanceType();
    int PROBE_START_LINE_442 = 442;
	com.google.javascript.rhino.jstype.JSTypeNative q_reference_error_type_233_line_442 = JSTypeNative.REFERENCE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_reference_error_type_5698_line_442 = REFERENCE_ERROR_TYPE;
	int PROBE_END_LINE_442 = 442;
	registerNativeType(q_reference_error_type_233_line_442, v_reference_error_type_5698_line_442);

    // SyntaxError
    FunctionType SYNTAX_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "SyntaxError");
    int PROBE_START_LINE_447 = 447;
	com.google.javascript.rhino.jstype.FunctionType v_syntax_error_function_type_5699_line_447 = SYNTAX_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5692_line_447 = ERROR_TYPE;
	int PROBE_END_LINE_447 = 447;
	v_syntax_error_function_type_5699_line_447.setPrototypeBasedOn(v_error_type_5692_line_447);
    registerNativeType(
        JSTypeNative.SYNTAX_ERROR_FUNCTION_TYPE, SYNTAX_ERROR_FUNCTION_TYPE);

    int PROBE_START_LINE_451 = 451;
	com.google.javascript.rhino.jstype.FunctionType v_syntax_error_function_type_5699_line_451 = SYNTAX_ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr133_line_451 = v_syntax_error_function_type_5699_line_451.getInstanceType();
	int PROBE_END_LINE_451 = 451;
	ObjectType SYNTAX_ERROR_TYPE = jstype_registry_1_expr133_line_451;
    int PROBE_START_LINE_452 = 452;
	com.google.javascript.rhino.jstype.JSTypeNative q_syntax_error_type_235_line_452 = JSTypeNative.SYNTAX_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_syntax_error_type_5700_line_452 = SYNTAX_ERROR_TYPE;
	int PROBE_END_LINE_452 = 452;
	registerNativeType(q_syntax_error_type_235_line_452, v_syntax_error_type_5700_line_452);

    // TypeError
    FunctionType TYPE_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "TypeError");
    int PROBE_START_LINE_457 = 457;
	com.google.javascript.rhino.jstype.FunctionType v_type_error_function_type_5701_line_457 = TYPE_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5692_line_457 = ERROR_TYPE;
	int PROBE_END_LINE_457 = 457;
	v_type_error_function_type_5701_line_457.setPrototypeBasedOn(v_error_type_5692_line_457);
    registerNativeType(
        JSTypeNative.TYPE_ERROR_FUNCTION_TYPE, TYPE_ERROR_FUNCTION_TYPE);

    int PROBE_START_LINE_461 = 461;
	com.google.javascript.rhino.jstype.FunctionType v_type_error_function_type_5701_line_461 = TYPE_ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr138_line_461 = v_type_error_function_type_5701_line_461.getInstanceType();
	int PROBE_END_LINE_461 = 461;
	ObjectType TYPE_ERROR_TYPE = jstype_registry_1_expr138_line_461;
    int PROBE_START_LINE_462 = 462;
	com.google.javascript.rhino.jstype.JSTypeNative q_type_error_type_237_line_462 = JSTypeNative.TYPE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_type_error_type_5702_line_462 = TYPE_ERROR_TYPE;
	int PROBE_END_LINE_462 = 462;
	registerNativeType(q_type_error_type_237_line_462, v_type_error_type_5702_line_462);

    // URIError
    FunctionType URI_ERROR_FUNCTION_TYPE =
        new ErrorFunctionType(this, "URIError");
    int PROBE_START_LINE_467 = 467;
	com.google.javascript.rhino.jstype.FunctionType v_uri_error_function_type_5703_line_467 = URI_ERROR_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_error_type_5692_line_467 = ERROR_TYPE;
	int PROBE_END_LINE_467 = 467;
	v_uri_error_function_type_5703_line_467.setPrototypeBasedOn(v_error_type_5692_line_467);
    registerNativeType(
        JSTypeNative.URI_ERROR_FUNCTION_TYPE, URI_ERROR_FUNCTION_TYPE);

    int PROBE_START_LINE_471 = 471;
	com.google.javascript.rhino.jstype.FunctionType v_uri_error_function_type_5703_line_471 = URI_ERROR_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr143_line_471 = v_uri_error_function_type_5703_line_471.getInstanceType();
	int PROBE_END_LINE_471 = 471;
	ObjectType URI_ERROR_TYPE = jstype_registry_1_expr143_line_471;
    int PROBE_START_LINE_472 = 472;
	com.google.javascript.rhino.jstype.JSTypeNative q_uri_error_type_239_line_472 = JSTypeNative.URI_ERROR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_uri_error_type_5704_line_472 = URI_ERROR_TYPE;
	int PROBE_END_LINE_472 = 472;
	registerNativeType(q_uri_error_type_239_line_472, v_uri_error_type_5704_line_472);

    // Number
    FunctionType NUMBER_OBJECT_FUNCTION_TYPE =
        new FunctionType(this, "Number", null,
            createArrowType(createOptionalParameters(ALL_TYPE), NUMBER_TYPE),
            null, null, true, true);
    int PROBE_START_LINE_479 = 479;
	com.google.javascript.rhino.jstype.FunctionType v_number_object_function_type_5705_line_479 = NUMBER_OBJECT_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr146_line_479 = v_number_object_function_type_5705_line_479.getPrototype();
	int PROBE_END_LINE_479 = 479;
	ObjectType numberPrototype = jstype_registry_1_expr146_line_479;
    registerNativeType(
        JSTypeNative.NUMBER_OBJECT_FUNCTION_TYPE, NUMBER_OBJECT_FUNCTION_TYPE);

    ObjectType NUMBER_OBJECT_TYPE =
        NUMBER_OBJECT_FUNCTION_TYPE.getInstanceType();
    int PROBE_START_LINE_485 = 485;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_object_type_241_line_485 = JSTypeNative.NUMBER_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_number_object_type_5707_line_485 = NUMBER_OBJECT_TYPE;
	int PROBE_END_LINE_485 = 485;
	registerNativeType(q_number_object_type_241_line_485, v_number_object_type_5707_line_485);

    // RegExp
    FunctionType REGEXP_FUNCTION_TYPE =
      new FunctionType(this, "RegExp", null,
          createArrowType(createOptionalParameters(ALL_TYPE, ALL_TYPE)),
          null, null, true, true);
    int PROBE_START_LINE_492 = 493;
	com.google.javascript.rhino.jstype.FunctionType v_regexp_function_type_5708_line_492 = REGEXP_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.ArrowType jstype_registry_1_expr154_line_492 = v_regexp_function_type_5708_line_492
			.getInternalArrowType();
	int PROBE_END_LINE_492 = 493;
	jstype_registry_1_expr154_line_492.returnType =
        REGEXP_FUNCTION_TYPE.getInstanceType();

    int PROBE_START_LINE_495 = 495;
	com.google.javascript.rhino.jstype.FunctionType v_regexp_function_type_5708_line_495 = REGEXP_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr155_line_495 = v_regexp_function_type_5708_line_495.getPrototype();
	int PROBE_END_LINE_495 = 495;
	ObjectType regexpPrototype = jstype_registry_1_expr155_line_495;
    int PROBE_START_LINE_496 = 496;
	com.google.javascript.rhino.jstype.JSTypeNative q_regexp_function_type_242_line_496 = JSTypeNative.REGEXP_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_regexp_function_type_5708_line_496 = REGEXP_FUNCTION_TYPE;
	int PROBE_END_LINE_496 = 496;
	registerNativeType(q_regexp_function_type_242_line_496, v_regexp_function_type_5708_line_496);

    int PROBE_START_LINE_498 = 498;
	com.google.javascript.rhino.jstype.FunctionType v_regexp_function_type_5708_line_498 = REGEXP_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr157_line_498 = v_regexp_function_type_5708_line_498.getInstanceType();
	int PROBE_END_LINE_498 = 498;
	ObjectType REGEXP_TYPE = jstype_registry_1_expr157_line_498;
    int PROBE_START_LINE_499 = 499;
	com.google.javascript.rhino.jstype.JSTypeNative q_regexp_type_243_line_499 = JSTypeNative.REGEXP_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_regexp_type_5710_line_499 = REGEXP_TYPE;
	int PROBE_END_LINE_499 = 499;
	registerNativeType(q_regexp_type_243_line_499, v_regexp_type_5710_line_499);

    // String
    FunctionType STRING_OBJECT_FUNCTION_TYPE =
        new FunctionType(this, "String", null,
            createArrowType(createOptionalParameters(ALL_TYPE), STRING_TYPE),
            null, null, true, true);
    int PROBE_START_LINE_506 = 506;
	com.google.javascript.rhino.jstype.FunctionType v_string_object_function_type_5711_line_506 = STRING_OBJECT_FUNCTION_TYPE;
	ObjectType jstype_registry_1_expr160_line_506 = v_string_object_function_type_5711_line_506.getPrototype();
	int PROBE_END_LINE_506 = 506;
	ObjectType stringPrototype = jstype_registry_1_expr160_line_506;
    registerNativeType(
        JSTypeNative.STRING_OBJECT_FUNCTION_TYPE, STRING_OBJECT_FUNCTION_TYPE);

    ObjectType STRING_OBJECT_TYPE =
        STRING_OBJECT_FUNCTION_TYPE.getInstanceType();
    registerNativeType(
        JSTypeNative.STRING_OBJECT_TYPE, STRING_OBJECT_TYPE);

    // (null,void)
    JSType NULL_VOID =
        createUnionType(NULL_TYPE, VOID_TYPE);
    int PROBE_START_LINE_518 = 518;
	com.google.javascript.rhino.jstype.JSTypeNative q_null_void_246_line_518 = JSTypeNative.NULL_VOID;
	com.google.javascript.rhino.jstype.JSType v_null_void_5714_line_518 = NULL_VOID;
	int PROBE_END_LINE_518 = 518;
	registerNativeType(q_null_void_246_line_518, v_null_void_5714_line_518);

    // (Object,string,number)
    JSType OBJECT_NUMBER_STRING =
        createUnionType(OBJECT_TYPE, NUMBER_TYPE, STRING_TYPE);
    int PROBE_START_LINE_523 = 523;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_number_string_247_line_523 = JSTypeNative.OBJECT_NUMBER_STRING;
	com.google.javascript.rhino.jstype.JSType v_object_number_string_5715_line_523 = OBJECT_NUMBER_STRING;
	int PROBE_END_LINE_523 = 523;
	registerNativeType(q_object_number_string_247_line_523, v_object_number_string_5715_line_523);

    // (Object,string,number,boolean)
    JSType OBJECT_NUMBER_STRING_BOOLEAN =
        createUnionType(OBJECT_TYPE, NUMBER_TYPE, STRING_TYPE, BOOLEAN_TYPE);
    int PROBE_START_LINE_528 = 529;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_number_string_boolean_248_line_528 = JSTypeNative.OBJECT_NUMBER_STRING_BOOLEAN;
	int PROBE_END_LINE_528 = 529;
	registerNativeType(q_object_number_string_boolean_248_line_528,
        OBJECT_NUMBER_STRING_BOOLEAN);

    // (string,number,boolean)
    JSType NUMBER_STRING_BOOLEAN =
        createUnionType(NUMBER_TYPE, STRING_TYPE, BOOLEAN_TYPE);
    int PROBE_START_LINE_534 = 535;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_string_boolean_249_line_534 = JSTypeNative.NUMBER_STRING_BOOLEAN;
	int PROBE_END_LINE_534 = 535;
	registerNativeType(q_number_string_boolean_249_line_534,
        NUMBER_STRING_BOOLEAN);

    int PROBE_START_LINE_538 = 538;
	com.google.javascript.rhino.jstype.NumberType v_number_type_5667_line_538 = NUMBER_TYPE;
	com.google.javascript.rhino.jstype.StringType v_string_type_5668_line_538 = STRING_TYPE;
	JSType jstype_registry_1_expr172_line_538 = createUnionType(v_number_type_5667_line_538,
			v_string_type_5668_line_538);
	int PROBE_END_LINE_538 = 538;
	// (string,number)
    JSType NUMBER_STRING = jstype_registry_1_expr172_line_538;
    int PROBE_START_LINE_539 = 539;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_string_250_line_539 = JSTypeNative.NUMBER_STRING;
	com.google.javascript.rhino.jstype.JSType v_number_string_5718_line_539 = NUMBER_STRING;
	int PROBE_END_LINE_539 = 539;
	registerNativeType(q_number_string_250_line_539, v_number_string_5718_line_539);

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
    int PROBE_START_LINE_558 = 558;
	com.google.javascript.rhino.jstype.JSTypeNative q_u2u_function_type_253_line_558 = JSTypeNative.U2U_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_u2u_function_type_5721_line_558 = U2U_FUNCTION_TYPE;
	int PROBE_END_LINE_558 = 558;
	registerNativeType(q_u2u_function_type_253_line_558, v_u2u_function_type_5721_line_558);

    int PROBE_START_LINE_562 = 578;
	com.google.javascript.rhino.jstype.UnknownType v_unknown_type_5669_line_571 = UNKNOWN_TYPE;
	int PROBE_END_LINE_562 = 578;
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
            v_unknown_type_5669_line_571, null, true, true) {
          private static final long serialVersionUID = 1L;

          @Override public FunctionType getConstructor() {
            int PROBE_START_LINE_575 = 576;
			com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_5441_line_575 = registry;
			com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr183_line_575 = f_registry_5441_line_575
					.getNativeFunctionType(JSTypeNative.FUNCTION_FUNCTION_TYPE);
			int PROBE_END_LINE_575 = 576;
			return jstype_registry_1_expr183_line_575;
          }
        };

    int PROBE_START_LINE_582 = 582;
	com.google.javascript.rhino.jstype.JSTypeNative q_u2u_constructor_type_254_line_582 = JSTypeNative.U2U_CONSTRUCTOR_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_u2u_constructor_type_5722_line_582 = U2U_CONSTRUCTOR_TYPE;
	int PROBE_END_LINE_582 = 582;
	// The U2U_CONSTRUCTOR is weird, because it's the supertype of its
    // own constructor.
    registerNativeType(q_u2u_constructor_type_254_line_582, v_u2u_constructor_type_5722_line_582);
    registerNativeType(
        JSTypeNative.FUNCTION_INSTANCE_TYPE, U2U_CONSTRUCTOR_TYPE);

    int PROBE_START_LINE_586 = 586;
	com.google.javascript.rhino.jstype.FunctionType v_function_function_type_5677_line_586 = FUNCTION_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_u2u_constructor_type_5722_line_586 = U2U_CONSTRUCTOR_TYPE;
	int PROBE_END_LINE_586 = 586;
	v_function_function_type_5677_line_586.setInstanceType(v_u2u_constructor_type_5722_line_586);
    int PROBE_START_LINE_587 = 587;
	com.google.javascript.rhino.jstype.FunctionType v_u2u_constructor_type_5722_line_587 = U2U_CONSTRUCTOR_TYPE;
	com.google.javascript.rhino.jstype.ObjectType v_function_prototype_5678_line_587 = FUNCTION_PROTOTYPE;
	int PROBE_END_LINE_587 = 587;
	v_u2u_constructor_type_5722_line_587.setImplicitPrototype(v_function_prototype_5678_line_587);

    // least function type, i.e. (All...) -> NoType
    FunctionType LEAST_FUNCTION_TYPE =
        createNativeFunctionTypeWithVarArgs(NO_TYPE, ALL_TYPE);
    int PROBE_START_LINE_592 = 592;
	com.google.javascript.rhino.jstype.JSTypeNative q_least_function_type_255_line_592 = JSTypeNative.LEAST_FUNCTION_TYPE;
	com.google.javascript.rhino.jstype.FunctionType v_least_function_type_5723_line_592 = LEAST_FUNCTION_TYPE;
	int PROBE_END_LINE_592 = 592;
	registerNativeType(q_least_function_type_255_line_592, v_least_function_type_5723_line_592);

    // the 'this' object in the global scope
    FunctionType GLOBAL_THIS_CTOR =
        new FunctionType(this, "global this", null,
            createArrowType(createParameters(false, ALL_TYPE), NUMBER_TYPE),
            null, null, true, true);
    int PROBE_START_LINE_599 = 599;
	com.google.javascript.rhino.jstype.FunctionType v_global_this_ctor_5724_line_599 = GLOBAL_THIS_CTOR;
	ObjectType jstype_registry_1_expr191_line_599 = v_global_this_ctor_5724_line_599.getInstanceType();
	int PROBE_END_LINE_599 = 599;
	ObjectType GLOBAL_THIS = jstype_registry_1_expr191_line_599;
    int PROBE_START_LINE_600 = 600;
	com.google.javascript.rhino.jstype.JSTypeNative q_global_this_256_line_600 = JSTypeNative.GLOBAL_THIS;
	com.google.javascript.rhino.jstype.ObjectType v_global_this_5725_line_600 = GLOBAL_THIS;
	int PROBE_END_LINE_600 = 600;
	registerNativeType(q_global_this_256_line_600, v_global_this_5725_line_600);

    // greatest function type, i.e. (NoType...) -> All
    FunctionType GREATEST_FUNCTION_TYPE =
        createNativeFunctionTypeWithVarArgs(ALL_TYPE, NO_TYPE);
    int PROBE_START_LINE_605 = 606;
	com.google.javascript.rhino.jstype.JSTypeNative q_greatest_function_type_257_line_605 = JSTypeNative.GREATEST_FUNCTION_TYPE;
	int PROBE_END_LINE_605 = 606;
	registerNativeType(q_greatest_function_type_257_line_605,
        GREATEST_FUNCTION_TYPE);

    int PROBE_START_LINE_610 = 610;
	com.google.javascript.rhino.jstype.FunctionType v_object_function_type_5674_line_610 = OBJECT_FUNCTION_TYPE;
	int PROBE_END_LINE_610 = 610;
	// Register the prototype property. See the comments below in
    // registerPropertyOnType about the bootstrapping process.
    registerPropertyOnType("prototype", v_object_function_type_5674_line_610);
  }

  private void initializeRegistry() {
    int PROBE_START_LINE_614 = 614;
	com.google.javascript.rhino.jstype.JSTypeNative q_array_type_258_line_614 = JSTypeNative.ARRAY_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr197_line_614 = getNativeType(
			q_array_type_258_line_614);
	int PROBE_END_LINE_614 = 614;
	register(jstype_registry_1_expr197_line_614);
    int PROBE_START_LINE_615 = 615;
	com.google.javascript.rhino.jstype.JSTypeNative q_boolean_object_type_258_line_615 = JSTypeNative.BOOLEAN_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr199_line_615 = getNativeType(
			q_boolean_object_type_258_line_615);
	int PROBE_END_LINE_615 = 615;
	register(jstype_registry_1_expr199_line_615);
    int PROBE_START_LINE_616 = 616;
	com.google.javascript.rhino.jstype.JSTypeNative q_boolean_type_258_line_616 = JSTypeNative.BOOLEAN_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr201_line_616 = getNativeType(
			q_boolean_type_258_line_616);
	int PROBE_END_LINE_616 = 616;
	register(jstype_registry_1_expr201_line_616);
    int PROBE_START_LINE_617 = 617;
	com.google.javascript.rhino.jstype.JSTypeNative q_date_type_258_line_617 = JSTypeNative.DATE_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr203_line_617 = getNativeType(
			q_date_type_258_line_617);
	int PROBE_END_LINE_617 = 617;
	register(jstype_registry_1_expr203_line_617);
    int PROBE_START_LINE_618 = 618;
	com.google.javascript.rhino.jstype.JSTypeNative q_null_type_258_line_618 = JSTypeNative.NULL_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr205_line_618 = getNativeType(
			q_null_type_258_line_618);
	int PROBE_END_LINE_618 = 618;
	register(jstype_registry_1_expr205_line_618);
    int PROBE_START_LINE_619 = 619;
	com.google.javascript.rhino.jstype.JSTypeNative q_null_type_258_line_619 = JSTypeNative.NULL_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr207_line_619 = getNativeType(
			q_null_type_258_line_619);
	int PROBE_END_LINE_619 = 619;
	register(jstype_registry_1_expr207_line_619, "Null");
    int PROBE_START_LINE_620 = 620;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_object_type_258_line_620 = JSTypeNative.NUMBER_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr209_line_620 = getNativeType(
			q_number_object_type_258_line_620);
	int PROBE_END_LINE_620 = 620;
	register(jstype_registry_1_expr209_line_620);
    int PROBE_START_LINE_621 = 621;
	com.google.javascript.rhino.jstype.JSTypeNative q_number_type_258_line_621 = JSTypeNative.NUMBER_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr211_line_621 = getNativeType(
			q_number_type_258_line_621);
	int PROBE_END_LINE_621 = 621;
	register(jstype_registry_1_expr211_line_621);
    int PROBE_START_LINE_622 = 622;
	com.google.javascript.rhino.jstype.JSTypeNative q_object_type_258_line_622 = JSTypeNative.OBJECT_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr213_line_622 = getNativeType(
			q_object_type_258_line_622);
	int PROBE_END_LINE_622 = 622;
	register(jstype_registry_1_expr213_line_622);
    int PROBE_START_LINE_623 = 623;
	com.google.javascript.rhino.jstype.JSTypeNative q_error_type_258_line_623 = JSTypeNative.ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr215_line_623 = getNativeType(
			q_error_type_258_line_623);
	int PROBE_END_LINE_623 = 623;
	register(jstype_registry_1_expr215_line_623);
    int PROBE_START_LINE_624 = 624;
	com.google.javascript.rhino.jstype.JSTypeNative q_uri_error_type_258_line_624 = JSTypeNative.URI_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr217_line_624 = getNativeType(
			q_uri_error_type_258_line_624);
	int PROBE_END_LINE_624 = 624;
	register(jstype_registry_1_expr217_line_624);
    int PROBE_START_LINE_625 = 625;
	com.google.javascript.rhino.jstype.JSTypeNative q_eval_error_type_258_line_625 = JSTypeNative.EVAL_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr219_line_625 = getNativeType(
			q_eval_error_type_258_line_625);
	int PROBE_END_LINE_625 = 625;
	register(jstype_registry_1_expr219_line_625);
    int PROBE_START_LINE_626 = 626;
	com.google.javascript.rhino.jstype.JSTypeNative q_type_error_type_258_line_626 = JSTypeNative.TYPE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr221_line_626 = getNativeType(
			q_type_error_type_258_line_626);
	int PROBE_END_LINE_626 = 626;
	register(jstype_registry_1_expr221_line_626);
    int PROBE_START_LINE_627 = 627;
	com.google.javascript.rhino.jstype.JSTypeNative q_range_error_type_258_line_627 = JSTypeNative.RANGE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr223_line_627 = getNativeType(
			q_range_error_type_258_line_627);
	int PROBE_END_LINE_627 = 627;
	register(jstype_registry_1_expr223_line_627);
    int PROBE_START_LINE_628 = 628;
	com.google.javascript.rhino.jstype.JSTypeNative q_reference_error_type_258_line_628 = JSTypeNative.REFERENCE_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr225_line_628 = getNativeType(
			q_reference_error_type_258_line_628);
	int PROBE_END_LINE_628 = 628;
	register(jstype_registry_1_expr225_line_628);
    int PROBE_START_LINE_629 = 629;
	com.google.javascript.rhino.jstype.JSTypeNative q_syntax_error_type_258_line_629 = JSTypeNative.SYNTAX_ERROR_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr227_line_629 = getNativeType(
			q_syntax_error_type_258_line_629);
	int PROBE_END_LINE_629 = 629;
	register(jstype_registry_1_expr227_line_629);
    int PROBE_START_LINE_630 = 630;
	com.google.javascript.rhino.jstype.JSTypeNative q_regexp_type_258_line_630 = JSTypeNative.REGEXP_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr229_line_630 = getNativeType(
			q_regexp_type_258_line_630);
	int PROBE_END_LINE_630 = 630;
	register(jstype_registry_1_expr229_line_630);
    int PROBE_START_LINE_631 = 631;
	com.google.javascript.rhino.jstype.JSTypeNative q_string_object_type_258_line_631 = JSTypeNative.STRING_OBJECT_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr231_line_631 = getNativeType(
			q_string_object_type_258_line_631);
	int PROBE_END_LINE_631 = 631;
	register(jstype_registry_1_expr231_line_631);
    int PROBE_START_LINE_632 = 632;
	com.google.javascript.rhino.jstype.JSTypeNative q_string_type_258_line_632 = JSTypeNative.STRING_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr233_line_632 = getNativeType(
			q_string_type_258_line_632);
	int PROBE_END_LINE_632 = 632;
	register(jstype_registry_1_expr233_line_632);
    int PROBE_START_LINE_633 = 633;
	com.google.javascript.rhino.jstype.JSTypeNative q_void_type_258_line_633 = JSTypeNative.VOID_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr235_line_633 = getNativeType(
			q_void_type_258_line_633);
	int PROBE_END_LINE_633 = 633;
	register(jstype_registry_1_expr235_line_633);
    int PROBE_START_LINE_634 = 634;
	com.google.javascript.rhino.jstype.JSTypeNative q_void_type_258_line_634 = JSTypeNative.VOID_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr237_line_634 = getNativeType(
			q_void_type_258_line_634);
	int PROBE_END_LINE_634 = 634;
	register(jstype_registry_1_expr237_line_634, "Undefined");
    int PROBE_START_LINE_635 = 635;
	com.google.javascript.rhino.jstype.JSTypeNative q_void_type_258_line_635 = JSTypeNative.VOID_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr239_line_635 = getNativeType(
			q_void_type_258_line_635);
	int PROBE_END_LINE_635 = 635;
	register(jstype_registry_1_expr239_line_635, "void");
    int PROBE_START_LINE_636 = 636;
	com.google.javascript.rhino.jstype.JSTypeNative q_function_instance_type_258_line_636 = JSTypeNative.FUNCTION_INSTANCE_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr241_line_636 = getNativeType(
			q_function_instance_type_258_line_636);
	int PROBE_END_LINE_636 = 636;
	register(jstype_registry_1_expr241_line_636, "Function");
  }

  private void register(JSType type) {
    int PROBE_START_LINE_640 = 640;
	com.google.javascript.rhino.jstype.JSType p_type_5727_line_640 = type;
	com.google.javascript.rhino.jstype.JSType p_type_5727_line_640_v1 = type;
	String jstype_registry_1_expr243_line_640 = p_type_5727_line_640_v1.toString();
	int PROBE_END_LINE_640 = 640;
	register(p_type_5727_line_640, jstype_registry_1_expr243_line_640);
  }

  private void register(JSType type, String name) {
    Preconditions.checkArgument(
        !name.contains("<"), "Type names cannot contain template annotations.");

    int PROBE_START_LINE_647 = 647;
	Map<String, com.google.javascript.rhino.jstype.JSType> f_names_to_types_5657_line_647 = namesToTypes;
	String p_name_5729_line_647 = name;
	com.google.javascript.rhino.jstype.JSType p_type_5728_line_647 = type;
	int PROBE_END_LINE_647 = 647;
	f_names_to_types_5657_line_647.put(p_name_5729_line_647, p_type_5728_line_647);

    // Add all the namespaces in which this name lives.
    while (true) {
      int PROBE_START_LINE_650 = 650;
		String p_name_5729_line_650 = name;
		int jstype_registry_1_expr248_line_650 = p_name_5729_line_650.indexOf('.');
		boolean jstype_registry_1_expr247_line_650 = jstype_registry_1_expr248_line_650 > 0;
		if (!(jstype_registry_1_expr247_line_650)) {
			break;
		}
		int PROBE_END_LINE_650 = 650;
	name = name.substring(0, name.lastIndexOf('.'));
      namespaces.add(name);
    }
  }

  private void registerNativeType(JSTypeNative typeId, JSType type) {
    int PROBE_START_LINE_657 = 657;
	com.google.javascript.rhino.jstype.JSType[] f_native_types_5655_line_657 = nativeTypes;
	com.google.javascript.rhino.jstype.JSTypeNative p_type_id_5730_line_657 = typeId;
	int jstype_registry_1_expr251_line_657 = p_type_id_5730_line_657.ordinal();
	com.google.javascript.rhino.jstype.JSType p_type_5731_line_657 = type;
	int PROBE_END_LINE_657 = 657;
	f_native_types_5655_line_657[jstype_registry_1_expr251_line_657] = p_type_5731_line_657;
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
    int PROBE_START_LINE_673 = 673;
	Map<String, com.google.javascript.rhino.jstype.UnionTypeBuilder> f_types_indexed_by_property_5639_line_673 = typesIndexedByProperty;
	String p_property_name_5732_line_673 = propertyName;
	UnionTypeBuilder jstype_registry_1_expr252_line_673 = f_types_indexed_by_property_5639_line_673
			.get(p_property_name_5732_line_673);
	int PROBE_END_LINE_673 = 673;
	UnionTypeBuilder typeSet = jstype_registry_1_expr252_line_673;
    int PROBE_START_LINE_674 = 677;
	com.google.javascript.rhino.jstype.UnionTypeBuilder v_type_set_5734_line_674 = typeSet;
	boolean jstype_registry_1_expr253_line_674 = v_type_set_5734_line_674 == null;
	int PROBE_END_LINE_674 = 677;
	if (jstype_registry_1_expr253_line_674) {
      int PROBE_START_LINE_675 = 675;
		int f_property_checking_union_size_5735_line_675 = PROPERTY_CHECKING_UNION_SIZE;
		int PROBE_END_LINE_675 = 675;
	typeSet = new UnionTypeBuilder(this, f_property_checking_union_size_5735_line_675);
      int PROBE_START_LINE_676 = 676;
	Map<String, com.google.javascript.rhino.jstype.UnionTypeBuilder> f_types_indexed_by_property_5639_line_676 = typesIndexedByProperty;
	String p_property_name_5732_line_676 = propertyName;
	com.google.javascript.rhino.jstype.UnionTypeBuilder v_type_set_5734_line_676 = typeSet;
	int PROBE_END_LINE_676 = 676;
	f_types_indexed_by_property_5639_line_676.put(p_property_name_5732_line_676, v_type_set_5734_line_676);
    }

    int PROBE_START_LINE_679 = 679;
	com.google.javascript.rhino.jstype.UnionTypeBuilder v_type_set_5734_line_679 = typeSet;
	com.google.javascript.rhino.jstype.JSType p_type_5733_line_679 = type;
	int PROBE_END_LINE_679 = 679;
	v_type_set_5734_line_679.addAlternate(p_type_5733_line_679);
    int PROBE_START_LINE_680 = 680;
	String p_property_name_5732_line_680 = propertyName;
	com.google.javascript.rhino.jstype.JSType p_type_5733_line_680 = type;
	int PROBE_END_LINE_680 = 680;
	addReferenceTypeIndexedByProperty(p_property_name_5732_line_680, p_type_5733_line_680);

    int PROBE_START_LINE_683 = 683;
	Map<String, com.google.javascript.rhino.jstype.JSType> f_greatest_subtype_by_property_5640_line_683 = greatestSubtypeByProperty;
	String p_property_name_5732_line_683 = propertyName;
	int PROBE_END_LINE_683 = 683;
	// Clear cached values that depend on typesIndexedByProperty.
    f_greatest_subtype_by_property_5640_line_683.remove(p_property_name_5732_line_683);
  }

  private void addReferenceTypeIndexedByProperty(
      String propertyName, JSType type) {
    int PROBE_START_LINE_688 = 704;
		com.google.javascript.rhino.jstype.JSType p_type_5737_line_688 = type;
		boolean jstype_registry_1_expr262_line_688 = p_type_5737_line_688 instanceof ObjectType;
		boolean jstype_registry_1_expr263_line_688 = true;
		if (jstype_registry_1_expr262_line_688) {
			com.google.javascript.rhino.jstype.JSType p_type_5737_line_688_v1 = type;
			com.google.javascript.rhino.jstype.ObjectType jstype_registry_1_expr264_line_688 = ((ObjectType) p_type_5737_line_688_v1);
			jstype_registry_1_expr263_line_688 = jstype_registry_1_expr264_line_688.hasReferenceName();
		}
		boolean jstype_registry_1_expr261_line_688 = jstype_registry_1_expr262_line_688
				&& jstype_registry_1_expr263_line_688;
		int PROBE_END_LINE_688 = 704;
	if (jstype_registry_1_expr261_line_688) {
      Map<String, ObjectType> typeSet =
          eachRefTypeIndexedByProperty.get(propertyName);
      int PROBE_START_LINE_691 = 694;
	Map<String, com.google.javascript.rhino.jstype.ObjectType> v_type_set_5738_line_691 = typeSet;
	boolean jstype_registry_1_expr267_line_691 = v_type_set_5738_line_691 == null;
	int PROBE_END_LINE_691 = 694;
	if (jstype_registry_1_expr267_line_691) {
        int PROBE_START_LINE_692 = 692;
		HashMap<String, com.google.javascript.rhino.jstype.ObjectType> jstype_registry_1_expr269_line_692 = Maps
				.newHashMap();
		int PROBE_END_LINE_692 = 692;
		typeSet = jstype_registry_1_expr269_line_692;
        int PROBE_START_LINE_693 = 693;
		Map<String, Map<String, com.google.javascript.rhino.jstype.ObjectType>> f_each_ref_type_indexed_by_property_5661_line_693 = eachRefTypeIndexedByProperty;
		String p_property_name_5736_line_693 = propertyName;
		Map<String, com.google.javascript.rhino.jstype.ObjectType> v_type_set_5738_line_693 = typeSet;
		int PROBE_END_LINE_693 = 693;
		f_each_ref_type_indexed_by_property_5661_line_693.put(p_property_name_5736_line_693, v_type_set_5738_line_693);
      }
      int PROBE_START_LINE_695 = 695;
	com.google.javascript.rhino.jstype.JSType p_type_5737_line_695 = type;
	int PROBE_END_LINE_695 = 695;
	ObjectType objType = (ObjectType) p_type_5737_line_695;
      int PROBE_START_LINE_696 = 696;
	Map<String, com.google.javascript.rhino.jstype.ObjectType> v_type_set_5738_line_696 = typeSet;
	com.google.javascript.rhino.jstype.ObjectType v_obj_type_5739_line_696 = objType;
	String jstype_registry_1_expr273_line_696 = v_obj_type_5739_line_696.getReferenceName();
	com.google.javascript.rhino.jstype.ObjectType v_obj_type_5739_line_696_v1 = objType;
	int PROBE_END_LINE_696 = 696;
	v_type_set_5738_line_696.put(jstype_registry_1_expr273_line_696, v_obj_type_5739_line_696_v1);
    } else {
		int PROBE_START_LINE_697 = 704;
		com.google.javascript.rhino.jstype.JSType p_type_5737_line_697 = type;
		boolean jstype_registry_1_expr274_line_697 = p_type_5737_line_697 instanceof NamedType;
		int PROBE_END_LINE_697 = 704;
		if (jstype_registry_1_expr274_line_697) {
			addReferenceTypeIndexedByProperty(propertyName, ((NamedType) type).getReferencedType());
		} else {
			int PROBE_START_LINE_700 = 704;
			com.google.javascript.rhino.jstype.JSType p_type_5737_line_700 = type;
			boolean jstype_registry_1_expr275_line_700 = p_type_5737_line_700.isUnionType();
			int PROBE_END_LINE_700 = 704;
			if (jstype_registry_1_expr275_line_700) {
				for (JSType alternate : type.toMaybeUnionType().getAlternates()) {
					addReferenceTypeIndexedByProperty(propertyName, alternate);
				}
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
    return lastGeneration;
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
    int PROBE_START_LINE_886 = 888;
	Map<String, com.google.javascript.rhino.jstype.JSType> f_names_to_types_5657_line_886 = namesToTypes;
	String p_name_5755_line_886 = name;
	boolean jstype_registry_1_expr276_line_886 = f_names_to_types_5657_line_886.containsKey(p_name_5755_line_886);
	int PROBE_END_LINE_886 = 888;
	if (jstype_registry_1_expr276_line_886) {
      return false;
    }
    int PROBE_START_LINE_889 = 889;
	com.google.javascript.rhino.jstype.JSType p_t_5756_line_889 = t;
	String p_name_5755_line_889 = name;
	int PROBE_END_LINE_889 = 889;
	register(p_t_5756_line_889, p_name_5755_line_889);
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
    return forwardDeclaredTypes.contains(name);
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
    int PROBE_START_LINE_931 = 931;
	Map<String, com.google.javascript.rhino.jstype.TemplateType> f_template_types_5645_line_931 = templateTypes;
	String p_js_type_name_5762_line_931 = jsTypeName;
	TemplateType jstype_registry_1_expr278_line_931 = f_template_types_5645_line_931.get(p_js_type_name_5762_line_931);
	int PROBE_END_LINE_931 = 931;
	// TODO(user): Push every local type name out of namesToTypes so that
    // NamedType#resolve is correct.
    TemplateType templateType = jstype_registry_1_expr278_line_931;
    int PROBE_START_LINE_932 = 934;
	com.google.javascript.rhino.jstype.TemplateType v_template_type_5763_line_932 = templateType;
	boolean jstype_registry_1_expr279_line_932 = v_template_type_5763_line_932 != null;
	int PROBE_END_LINE_932 = 934;
	if (jstype_registry_1_expr279_line_932) {
      return templateType;
    }
    int PROBE_START_LINE_935 = 935;
	Map<String, com.google.javascript.rhino.jstype.JSType> f_names_to_types_5657_line_935 = namesToTypes;
	String p_js_type_name_5762_line_935 = jsTypeName;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr280_line_935 = f_names_to_types_5657_line_935
			.get(p_js_type_name_5762_line_935);
	int PROBE_END_LINE_935 = 935;
	return jstype_registry_1_expr280_line_935;
  }

  public JSType getNativeType(JSTypeNative typeId) {
    int PROBE_START_LINE_939 = 939;
	com.google.javascript.rhino.jstype.JSType[] f_native_types_5655_line_939 = nativeTypes;
	com.google.javascript.rhino.jstype.JSTypeNative p_type_id_5764_line_939 = typeId;
	int jstype_registry_1_expr282_line_939 = p_type_id_5764_line_939.ordinal();
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr281_line_939 = f_native_types_5655_line_939[jstype_registry_1_expr282_line_939];
	int PROBE_END_LINE_939 = 939;
	return jstype_registry_1_expr281_line_939;
  }

  public ObjectType getNativeObjectType(JSTypeNative typeId) {
    int PROBE_START_LINE_943 = 943;
	com.google.javascript.rhino.jstype.JSTypeNative p_type_id_5765_line_943 = typeId;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr284_line_943 = getNativeType(
			p_type_id_5765_line_943);
	int PROBE_END_LINE_943 = 943;
	return (ObjectType) jstype_registry_1_expr284_line_943;
  }

  public FunctionType getNativeFunctionType(JSTypeNative typeId) {
    int PROBE_START_LINE_947 = 947;
	com.google.javascript.rhino.jstype.JSTypeNative p_type_id_5766_line_947 = typeId;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr286_line_947 = getNativeType(
			p_type_id_5766_line_947);
	int PROBE_END_LINE_947 = 947;
	return (FunctionType) jstype_registry_1_expr286_line_947;
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
    // Resolve template type names
    JSType type = null;
    JSType thisType = null;
    int PROBE_START_LINE_967 = 969;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5767_line_967 = scope;
	boolean jstype_registry_1_expr288_line_967 = p_scope_5767_line_967 != null;
	boolean jstype_registry_1_expr289_line_967 = true;
	if (jstype_registry_1_expr288_line_967) {
		StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5767_line_967_v1 = scope;
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr290_line_967 = p_scope_5767_line_967_v1
				.getTypeOfThis();
		jstype_registry_1_expr289_line_967 = jstype_registry_1_expr290_line_967 != null;
	}
	boolean jstype_registry_1_expr287_line_967 = jstype_registry_1_expr288_line_967
			&& jstype_registry_1_expr289_line_967;
	int PROBE_END_LINE_967 = 969;
	if (jstype_registry_1_expr287_line_967) {
      int PROBE_START_LINE_968 = 968;
		StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5767_line_968 = scope;
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr293_line_968 = p_scope_5767_line_968
				.getTypeOfThis();
		com.google.javascript.rhino.jstype.ObjectType jstype_registry_1_expr292_line_968 = jstype_registry_1_expr293_line_968
				.toObjectType();
		int PROBE_END_LINE_968 = 968;
	thisType = jstype_registry_1_expr292_line_968;
    }
    int PROBE_START_LINE_970 = 976;
	com.google.javascript.rhino.jstype.JSType v_this_type_5773_line_970 = thisType;
	boolean jstype_registry_1_expr294_line_970 = v_this_type_5773_line_970 != null;
	int PROBE_END_LINE_970 = 976;
	if (jstype_registry_1_expr294_line_970) {
      int PROBE_START_LINE_971 = 971;
		com.google.javascript.rhino.jstype.JSType v_this_type_5773_line_971 = thisType;
		com.google.javascript.rhino.jstype.TemplateTypeMap jstype_registry_1_expr297_line_971 = v_this_type_5773_line_971
				.getTemplateTypeMap();
		String p_js_type_name_5768_line_971 = jsTypeName;
		com.google.javascript.rhino.jstype.TemplateType jstype_registry_1_expr296_line_971 = jstype_registry_1_expr297_line_971
				.getTemplateTypeKeyByName(p_js_type_name_5768_line_971);
		int PROBE_END_LINE_971 = 971;
	type = jstype_registry_1_expr296_line_971;
      int PROBE_START_LINE_972 = 975;
	com.google.javascript.rhino.jstype.JSType v_type_5772_line_972 = type;
	boolean jstype_registry_1_expr298_line_972 = v_type_5772_line_972 != null;
	int PROBE_END_LINE_972 = 975;
	if (jstype_registry_1_expr298_line_972) {
        Preconditions.checkState(type.isTemplateType(), "expected:" + type);
        return type;
      }
    }

    int PROBE_START_LINE_978 = 978;
	String p_js_type_name_5768_line_978 = jsTypeName;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr300_line_978 = getType(
			p_js_type_name_5768_line_978);
	int PROBE_END_LINE_978 = 978;
	type = jstype_registry_1_expr300_line_978;
    int PROBE_START_LINE_979 = 986;
	com.google.javascript.rhino.jstype.JSType v_type_5772_line_979 = type;
	boolean jstype_registry_1_expr301_line_979 = v_type_5772_line_979 == null;
	int PROBE_END_LINE_979 = 986;
	if (jstype_registry_1_expr301_line_979) {
      // TODO(user): Each instance should support named type creation using
      // interning.
      NamedType namedType =
          new NamedType(this, jsTypeName, sourceName, lineno, charno);
      unresolvedNamedTypes.put(scope, namedType);
      type = namedType;
    }
    int PROBE_START_LINE_987 = 987;
	com.google.javascript.rhino.jstype.JSType v_type_5772_line_987 = type;
	int PROBE_END_LINE_987 = 987;
	return v_type_5772_line_987;
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
    int PROBE_START_LINE_1004 = 1006;
	Multimap<StaticScope<com.google.javascript.rhino.jstype.JSType>, com.google.javascript.rhino.jstype.NamedType> f_unresolved_named_types_5642_line_1004 = unresolvedNamedTypes;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5774_line_1004 = scope;
	Collection<com.google.javascript.rhino.jstype.NamedType> jstype_registry_1_expr302_line_1004 = f_unresolved_named_types_5642_line_1004
			.get(p_scope_5774_line_1004);
	int PROBE_END_LINE_1004 = 1006;
	for (NamedType type : jstype_registry_1_expr302_line_1004) {
      type.resolve(reporter, scope);
    }

    int PROBE_START_LINE_1008 = 1008;
	Multimap<StaticScope<com.google.javascript.rhino.jstype.JSType>, com.google.javascript.rhino.jstype.NamedType> f_resolved_named_types_5643_line_1008 = resolvedNamedTypes;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5774_line_1008 = scope;
	Multimap<StaticScope<com.google.javascript.rhino.jstype.JSType>, com.google.javascript.rhino.jstype.NamedType> f_unresolved_named_types_5642_line_1008 = unresolvedNamedTypes;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5774_line_1008_v1 = scope;
	Collection<com.google.javascript.rhino.jstype.NamedType> jstype_registry_1_expr304_line_1008 = f_unresolved_named_types_5642_line_1008
			.removeAll(p_scope_5774_line_1008_v1);
	int PROBE_END_LINE_1008 = 1008;
	f_resolved_named_types_5643_line_1008.putAll(p_scope_5774_line_1008, jstype_registry_1_expr304_line_1008);

    int PROBE_START_LINE_1010 = 1026;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5774_line_1010 = scope;
	boolean jstype_registry_1_expr306_line_1010 = p_scope_5774_line_1010 != null;
	boolean jstype_registry_1_expr307_line_1010 = true;
	if (jstype_registry_1_expr306_line_1010) {
		StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5774_line_1010_v1 = scope;
		StaticScope<com.google.javascript.rhino.jstype.JSType> jstype_registry_1_expr308_line_1010 = p_scope_5774_line_1010_v1
				.getParentScope();
		jstype_registry_1_expr307_line_1010 = jstype_registry_1_expr308_line_1010 == null;
	}
	boolean jstype_registry_1_expr305_line_1010 = jstype_registry_1_expr306_line_1010
			&& jstype_registry_1_expr307_line_1010;
	int PROBE_END_LINE_1010 = 1026;
	if (jstype_registry_1_expr305_line_1010) {
      int PROBE_START_LINE_1014 = 1015;
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr310_line_1014 = getNativeType(
				JSTypeNative.GLOBAL_THIS);
		int PROBE_END_LINE_1014 = 1015;
	// By default, the global "this" type is just an anonymous object.
      // If the user has defined a Window type, make the Window the
      // implicit prototype of "this".
      PrototypeObjectType globalThis = (PrototypeObjectType) jstype_registry_1_expr310_line_1014;
      int PROBE_START_LINE_1016 = 1016;
	JSType jstype_registry_1_expr311_line_1016 = getType("Window");
	int PROBE_END_LINE_1016 = 1016;
	JSType windowType = jstype_registry_1_expr311_line_1016;
      int PROBE_START_LINE_1017 = 1025;
	com.google.javascript.rhino.jstype.PrototypeObjectType v_global_this_5776_line_1017 = globalThis;
	boolean jstype_registry_1_expr312_line_1017 = v_global_this_5776_line_1017.isUnknownType();
	int PROBE_END_LINE_1017 = 1025;
	if (jstype_registry_1_expr312_line_1017) {
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
    int PROBE_START_LINE_1034 = 1038;
	com.google.javascript.rhino.jstype.JSType p_type_5778_line_1034 = type;
	boolean jstype_registry_1_expr314_line_1034 = p_type_5778_line_1034 instanceof UnknownType;
	boolean jstype_registry_1_expr315_line_1034 = false;
	if (!jstype_registry_1_expr314_line_1034) {
		com.google.javascript.rhino.jstype.JSType p_type_5778_line_1034_v1 = type;
		jstype_registry_1_expr315_line_1034 = p_type_5778_line_1034_v1.isAllType();
	}
	boolean jstype_registry_1_expr313_line_1034 = jstype_registry_1_expr314_line_1034
			|| jstype_registry_1_expr315_line_1034;
	int PROBE_END_LINE_1034 = 1038;
	if (jstype_registry_1_expr313_line_1034) {
      int PROBE_START_LINE_1035 = 1035;
		com.google.javascript.rhino.jstype.JSType p_type_5778_line_1035 = type;
		int PROBE_END_LINE_1035 = 1035;
	return p_type_5778_line_1035;
    } else {
      return createUnionType(type, getNativeType(JSTypeNative.VOID_TYPE));
    }
  }

  /**
   * Creates a type representing nullable values of the given type.
   * @return the union of the type and the Null type
   */
  public JSType createDefaultObjectUnion(JSType type) {
    if (type.isTemplateType()) {
      // Template types represent the substituted type exactly and should
      // not be wrapped.
      return type;
    } else {
      return shouldTolerateUndefinedValues()
        ? createOptionalNullableType(type)
        : createNullableType(type);
    }
  }

  /**
   * Creates a type representing nullable values of the given type.
   * @return the union of the type and the Null type
   */
  public JSType createNullableType(JSType type) {
    int PROBE_START_LINE_1062 = 1062;
	com.google.javascript.rhino.jstype.JSType p_type_5780_line_1062 = type;
	com.google.javascript.rhino.jstype.JSTypeNative q_null_type_258_line_1062 = JSTypeNative.NULL_TYPE;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr317_line_1062 = getNativeType(
			q_null_type_258_line_1062);
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr316_line_1062 = createUnionType(
			p_type_5780_line_1062, jstype_registry_1_expr317_line_1062);
	int PROBE_END_LINE_1062 = 1062;
	return jstype_registry_1_expr316_line_1062;
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
    int PROBE_START_LINE_1079 = 1081;
	com.google.javascript.rhino.jstype.JSType[] p_variants_5782_line_1079 = variants;
	int PROBE_END_LINE_1079 = 1081;
	for (JSType type : p_variants_5782_line_1079) {
      int PROBE_START_LINE_1080 = 1080;
		com.google.javascript.rhino.jstype.UnionTypeBuilder v_builder_5783_line_1080 = builder;
		com.google.javascript.rhino.jstype.JSType v_type_5784_line_1080 = type;
		int PROBE_END_LINE_1080 = 1080;
	v_builder_5783_line_1080.addAlternate(v_type_5784_line_1080);
    }
    int PROBE_START_LINE_1082 = 1082;
	com.google.javascript.rhino.jstype.UnionTypeBuilder v_builder_5783_line_1082 = builder;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr321_line_1082 = v_builder_5783_line_1082.build();
	int PROBE_END_LINE_1082 = 1082;
	return jstype_registry_1_expr321_line_1082;
  }

  /**
   * Creates a union type whose variants are the built-in types specified
   * by the arguments.
   */
  public JSType createUnionType(JSTypeNative... variants) {
    UnionTypeBuilder builder = new UnionTypeBuilder(this);
    int PROBE_START_LINE_1091 = 1093;
	com.google.javascript.rhino.jstype.JSTypeNative[] p_variants_5785_line_1091 = variants;
	int PROBE_END_LINE_1091 = 1093;
	for (JSTypeNative typeId : p_variants_5785_line_1091) {
      int PROBE_START_LINE_1092 = 1092;
		com.google.javascript.rhino.jstype.UnionTypeBuilder v_builder_5786_line_1092 = builder;
		com.google.javascript.rhino.jstype.JSTypeNative v_type_id_5787_line_1092 = typeId;
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr325_line_1092 = getNativeType(
				v_type_id_5787_line_1092);
		int PROBE_END_LINE_1092 = 1092;
	v_builder_5786_line_1092.addAlternate(jstype_registry_1_expr325_line_1092);
    }
    int PROBE_START_LINE_1094 = 1094;
	com.google.javascript.rhino.jstype.UnionTypeBuilder v_builder_5786_line_1094 = builder;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr326_line_1094 = v_builder_5786_line_1094.build();
	int PROBE_END_LINE_1094 = 1094;
	return jstype_registry_1_expr326_line_1094;
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
    int PROBE_START_LINE_1114 = 1114;
	com.google.javascript.rhino.Node p_parameters_node_5791_line_1114 = parametersNode;
	com.google.javascript.rhino.jstype.JSType p_return_type_5792_line_1114 = returnType;
	int PROBE_END_LINE_1114 = 1114;
	return new ArrowType(this, p_parameters_node_5791_line_1114, p_return_type_5792_line_1114);
  }

  /**
   * Creates an arrow type with an unknown return type.
   *
   * @param parametersNode the parameters' types, formatted as a Node with
   *     param names and optionality info.
   */
  ArrowType createArrowType(Node parametersNode) {
    int PROBE_START_LINE_1124 = 1124;
	com.google.javascript.rhino.Node p_parameters_node_5793_line_1124 = parametersNode;
	int PROBE_END_LINE_1124 = 1124;
	return new ArrowType(this, p_parameters_node_5793_line_1124, null);
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
    int PROBE_START_LINE_1171 = 1172;
		com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr331_line_1171 = createFunctionType(
				returnType, createParametersWithVarArgs(parameterTypes));
		int PROBE_END_LINE_1171 = 1172;
	return jstype_registry_1_expr331_line_1171;
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
    int PROBE_START_LINE_1184 = 1185;
		com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr333_line_1184 = createNativeFunctionType(
				returnType, createParametersWithVarArgs(parameterTypes));
		int PROBE_END_LINE_1184 = 1185;
	return jstype_registry_1_expr333_line_1184;
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
    int PROBE_START_LINE_1291 = 1291;
	com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5817_line_1291 = parameterTypes;
	com.google.javascript.rhino.Node jstype_registry_1_expr335_line_1291 = createParameters(true,
			p_parameter_types_5817_line_1291);
	int PROBE_END_LINE_1291 = 1291;
	return jstype_registry_1_expr335_line_1291;
  }

  /**
   * Creates a tree hierarchy representing a typed parameter list in which
   * every parameter is optional.
   */
  public Node createOptionalParameters(JSType... parameterTypes) {
    FunctionParamBuilder builder = new FunctionParamBuilder(this);
    int PROBE_START_LINE_1300 = 1300;
	com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_5819_line_1300 = builder;
	com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5818_line_1300 = parameterTypes;
	int PROBE_END_LINE_1300 = 1300;
	v_builder_5819_line_1300.addOptionalParams(p_parameter_types_5818_line_1300);
    int PROBE_START_LINE_1301 = 1301;
	com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_5819_line_1301 = builder;
	com.google.javascript.rhino.Node jstype_registry_1_expr339_line_1301 = v_builder_5819_line_1301.build();
	int PROBE_END_LINE_1301 = 1301;
	return jstype_registry_1_expr339_line_1301;
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
    int PROBE_START_LINE_1316 = 1316;
	com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5821_line_1316 = parameterTypes;
	int q_length_258_line_1316 = p_parameter_types_5821_line_1316.length;
	int jstype_registry_1_expr342_line_1316 = q_length_258_line_1316 - 1;
	int PROBE_END_LINE_1316 = 1316;
	int max = jstype_registry_1_expr342_line_1316;
    for (int i = 0; true; i++) {
      int PROBE_START_LINE_1318 = 1322;
		int v_i_5824_line_1317 = i;
		int v_max_5823_line_1317 = max;
		boolean jstype_registry_1_expr344_line_1317 = v_i_5824_line_1317 <= v_max_5823_line_1317;
		if (!(jstype_registry_1_expr344_line_1317)) {
			break;
		}
		boolean p_last_var_args_5820_line_1318 = lastVarArgs;
		boolean jstype_registry_1_expr347_line_1318 = true;
		if (p_last_var_args_5820_line_1318) {
			int v_i_5824_line_1318 = i;
			int v_max_5823_line_1318 = max;
			jstype_registry_1_expr347_line_1318 = v_i_5824_line_1318 == v_max_5823_line_1318;
		}
		boolean jstype_registry_1_expr346_line_1318 = p_last_var_args_5820_line_1318
				&& jstype_registry_1_expr347_line_1318;
		int PROBE_END_LINE_1318 = 1322;
	if (jstype_registry_1_expr346_line_1318) {
        int PROBE_START_LINE_1319 = 1319;
		com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_5822_line_1319 = builder;
		com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5821_line_1319 = parameterTypes;
		int v_i_5824_line_1319 = i;
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr349_line_1319 = p_parameter_types_5821_line_1319[v_i_5824_line_1319];
		int PROBE_END_LINE_1319 = 1319;
		v_builder_5822_line_1319.addVarArgs(jstype_registry_1_expr349_line_1319);
      } else {
        int PROBE_START_LINE_1321 = 1321;
		com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_5822_line_1321 = builder;
		com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5821_line_1321 = parameterTypes;
		int v_i_5824_line_1321 = i;
		com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr351_line_1321 = p_parameter_types_5821_line_1321[v_i_5824_line_1321];
		int PROBE_END_LINE_1321 = 1321;
		v_builder_5822_line_1321.addRequiredParams(jstype_registry_1_expr351_line_1321);
      }
    }
    int PROBE_START_LINE_1324 = 1324;
	com.google.javascript.rhino.jstype.FunctionParamBuilder v_builder_5822_line_1324 = builder;
	com.google.javascript.rhino.Node jstype_registry_1_expr352_line_1324 = v_builder_5822_line_1324.build();
	int PROBE_END_LINE_1324 = 1324;
	return jstype_registry_1_expr352_line_1324;
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
    int PROBE_START_LINE_1336 = 1340;
		boolean p_last_var_args_5826_line_1336 = lastVarArgs;
		int PROBE_END_LINE_1336 = 1340;
	if (p_last_var_args_5826_line_1336) {
      int PROBE_START_LINE_1337 = 1337;
		com.google.javascript.rhino.jstype.JSType p_return_type_5825_line_1337 = returnType;
		com.google.javascript.rhino.jstype.JSType[] p_parameter_types_5827_line_1337 = parameterTypes;
		com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr353_line_1337 = createFunctionTypeWithVarArgs(
				p_return_type_5825_line_1337, p_parameter_types_5827_line_1337);
		int PROBE_END_LINE_1337 = 1337;
	return jstype_registry_1_expr353_line_1337;
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
    int PROBE_START_LINE_1379 = 1382;
		com.google.javascript.rhino.jstype.FunctionBuilder jstype_registry_1_expr356_line_1379 = new FunctionBuilder(
				this).withParamsNode(parameters);
		com.google.javascript.rhino.jstype.FunctionBuilder jstype_registry_1_expr355_line_1379 = jstype_registry_1_expr356_line_1379
				.withReturnType(returnType);
		com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr354_line_1379 = jstype_registry_1_expr355_line_1379
				.build();
		int PROBE_END_LINE_1379 = 1382;
	return jstype_registry_1_expr354_line_1379;
  }

  private FunctionType createNativeFunctionType(
      JSType returnType, Node parameters) {
    int PROBE_START_LINE_1387 = 1391;
		com.google.javascript.rhino.jstype.FunctionBuilder jstype_registry_1_expr362_line_1387 = new FunctionBuilder(
				this).withParamsNode(parameters);
		com.google.javascript.rhino.jstype.FunctionBuilder jstype_registry_1_expr361_line_1387 = jstype_registry_1_expr362_line_1387
				.withReturnType(returnType);
		com.google.javascript.rhino.jstype.FunctionBuilder jstype_registry_1_expr360_line_1387 = jstype_registry_1_expr361_line_1387
				.forNativeType();
		com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr359_line_1387 = jstype_registry_1_expr360_line_1387
				.build();
		int PROBE_END_LINE_1387 = 1391;
	return jstype_registry_1_expr359_line_1387;
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
    int PROBE_START_LINE_1438 = 1438;
	com.google.javascript.rhino.jstype.PrototypeObjectType v_type_5845_line_1438 = type;
	int PROBE_END_LINE_1438 = 1438;
	v_type_5845_line_1438.setPrettyPrint(true);
    int PROBE_START_LINE_1439 = 1439;
	com.google.javascript.rhino.jstype.PrototypeObjectType v_type_5845_line_1439 = type;
	com.google.javascript.rhino.JSDocInfo p_info_5844_line_1439 = info;
	int PROBE_END_LINE_1439 = 1439;
	v_type_5845_line_1439.setJSDocInfo(p_info_5844_line_1439);
    int PROBE_START_LINE_1440 = 1440;
	com.google.javascript.rhino.jstype.PrototypeObjectType v_type_5845_line_1440 = type;
	int PROBE_END_LINE_1440 = 1440;
	return v_type_5845_line_1440;
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
    int PROBE_START_LINE_1453 = 1458;
		com.google.javascript.rhino.jstype.JSType p_type_5846_line_1453 = type;
		boolean jstype_registry_1_expr369_line_1453 = p_type_5846_line_1453 instanceof PrototypeObjectType;
		int PROBE_END_LINE_1453 = 1458;
	if (jstype_registry_1_expr369_line_1453) {
      int PROBE_START_LINE_1454 = 1454;
		com.google.javascript.rhino.jstype.JSType p_type_5846_line_1454 = type;
		int PROBE_END_LINE_1454 = 1454;
	PrototypeObjectType poType = (PrototypeObjectType) p_type_5846_line_1454;
      int PROBE_START_LINE_1455 = 1455;
	com.google.javascript.rhino.jstype.PrototypeObjectType v_po_type_5848_line_1455 = poType;
	int PROBE_END_LINE_1455 = 1455;
	v_po_type_5848_line_1455.clearCachedValues();
      int PROBE_START_LINE_1456 = 1456;
	com.google.javascript.rhino.jstype.PrototypeObjectType v_po_type_5848_line_1456 = poType;
	com.google.javascript.rhino.jstype.ObjectType p_new_implicit_proto_5847_line_1456 = newImplicitProto;
	int PROBE_END_LINE_1456 = 1456;
	v_po_type_5848_line_1456.setImplicitPrototype(p_new_implicit_proto_5847_line_1456);
      return true;
    }
    return false;
  }

  /**
   * Create an anonymous object type for a native type.
   */
  ObjectType createNativeAnonymousObjectType() {
    PrototypeObjectType type =
        new PrototypeObjectType(this, null, null, true, null);
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
   * @param templateKeys the templatized types for the class.
   */
  public FunctionType createConstructorType(String name, Node source,
      Node parameters, JSType returnType, ImmutableList<TemplateType> templateKeys) {
    return new FunctionType(this, name, source,
        createArrowType(parameters, returnType), null,
        createTemplateTypeMap(templateKeys, null), true, false);
  }

  ImmutableList<TemplateType> createTemplateMapKeys(ImmutableList<String> keys) {
    ImmutableList.Builder<TemplateType> builder = ImmutableList.builder();
    if (keys != null) {
      for (String key : keys) {
        builder.add(new TemplateType(this, key));
      }
    }
    return builder.build();
  }

  /**
   * Creates an interface function type.
   * @param name the function's name
   * @param source the node defining this function. Its type
   *     ({@link Node#getType()}) must be {@link Token#FUNCTION}.
   * @param templateKeys the templatized types for the interface.
   */
  public FunctionType createInterfaceType(String name, Node source,
      ImmutableList<TemplateType> templateKeys) {
    int PROBE_START_LINE_1510 = 1511;
		String p_name_5855_line_1510 = name;
		com.google.javascript.rhino.Node p_source_5856_line_1510 = source;
		com.google.javascript.rhino.jstype.FunctionType jstype_registry_1_expr373_line_1510 = FunctionType.forInterface(
				this, p_name_5855_line_1510, p_source_5856_line_1510, createTemplateTypeMap(templateKeys, null));
		int PROBE_END_LINE_1510 = 1511;
	return jstype_registry_1_expr373_line_1510;
  }

  public TemplateType createTemplateType(String name) {
    return new TemplateType(this, name);
  }

  /**
   * Creates a template type map from the specified list of template keys and
   * template value types.
   */
  public TemplateTypeMap createTemplateTypeMap(
      ImmutableList<TemplateType> templateKeys,
      ImmutableList<JSType> templateValues) {
    int PROBE_START_LINE_1525 = 1526;
		ImmutableList<com.google.javascript.rhino.jstype.TemplateType> p_template_keys_5859_line_1525 = templateKeys;
		boolean jstype_registry_1_expr378_line_1525 = p_template_keys_5859_line_1525 == null;
		ImmutableList<com.google.javascript.rhino.jstype.TemplateType> jstype_registry_1_expr377_line_1525 = jstype_registry_1_expr378_line_1525
				? ImmutableList.<TemplateType>of()
				: templateKeys;
		int PROBE_END_LINE_1525 = 1526;
	templateKeys = jstype_registry_1_expr377_line_1525;
    int PROBE_START_LINE_1527 = 1528;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> p_template_values_5860_line_1527 = templateValues;
	boolean jstype_registry_1_expr382_line_1527 = p_template_values_5860_line_1527 == null;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> jstype_registry_1_expr381_line_1527 = jstype_registry_1_expr382_line_1527
			? ImmutableList.<JSType>of()
			: templateValues;
	int PROBE_END_LINE_1527 = 1528;
	templateValues = jstype_registry_1_expr381_line_1527;

    int PROBE_START_LINE_1530 = 1532;
	ImmutableList<com.google.javascript.rhino.jstype.TemplateType> p_template_keys_5859_line_1530 = templateKeys;
	boolean jstype_registry_1_expr388_line_1530 = p_template_keys_5859_line_1530.isEmpty();
	boolean jstype_registry_1_expr389_line_1530 = true;
	if (jstype_registry_1_expr388_line_1530) {
		ImmutableList<com.google.javascript.rhino.jstype.JSType> p_template_values_5860_line_1530 = templateValues;
		jstype_registry_1_expr389_line_1530 = p_template_values_5860_line_1530.isEmpty();
	}
	boolean jstype_registry_1_expr387_line_1530 = jstype_registry_1_expr388_line_1530
			&& jstype_registry_1_expr389_line_1530;
	boolean jstype_registry_1_expr385_line_1530 = (jstype_registry_1_expr387_line_1530);
	com.google.javascript.rhino.jstype.TemplateTypeMap jstype_registry_1_expr384_line_1530 = jstype_registry_1_expr385_line_1530
			? emptyTemplateTypeMap
			: new TemplateTypeMap(this, templateKeys, templateValues);
	int PROBE_END_LINE_1530 = 1532;
	return jstype_registry_1_expr384_line_1530;
  }

  /**
   * Creates a templatized instance of the specified type.  Only ObjectTypes
   * can currently be templatized; extend the logic in this function when
   * more types can be templatized.
   * @param baseType the type to be templatized.
   * @param templatizedTypes a list of the template JSTypes. Will be matched by
   *     list order to the template keys on the base type.
   */
  public TemplatizedType createTemplatizedType(
      ObjectType baseType, ImmutableList<JSType> templatizedTypes) {
    // Only ObjectTypes can currently be templatized; extend this logic when
    // more types can be templatized.
    return new TemplatizedType(this, baseType, templatizedTypes);
  }

  /**
   * Creates a templatized instance of the specified type.  Only ObjectTypes
   * can currently be templatized; extend the logic in this function when
   * more types can be templatized.
   * @param baseType the type to be templatized.
   * @param templatizedTypes a map from TemplateType to corresponding JSType
   *     value. Any unfilled TemplateTypes on the baseType that are *not*
   *     contained in this map will have UNKNOWN_TYPE used as their value.
   */
  public TemplatizedType createTemplatizedType(
      ObjectType baseType, Map<TemplateType, JSType> templatizedTypes) {
    ImmutableList.Builder<JSType> builder = ImmutableList.builder();
    TemplateTypeMap baseTemplateTypeMap = baseType.getTemplateTypeMap();
    for (TemplateType key : baseTemplateTypeMap.getUnfilledTemplateKeys()) {
      JSType templatizedType = templatizedTypes.containsKey(key) ?
          templatizedTypes.get(key) : getNativeType(UNKNOWN_TYPE);
      builder.add(templatizedType);
    }
    return createTemplatizedType(baseType, builder.build());
  }

  /**
   * Creates a templatized instance of the specified type.  Only ObjectTypes
   * can currently be templatized; extend the logic in this function when
   * more types can be templatized.
   * @param baseType the type to be templatized.
   * @param templatizedTypes a list of the template JSTypes. Will be matched by
   *     list order to the template keys on the base type.
   */
  public TemplatizedType createTemplatizedType(
      ObjectType baseType, JSType... templatizedTypes) {
    return createTemplatizedType(
        baseType, ImmutableList.copyOf(templatizedTypes));
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
    int PROBE_START_LINE_1610 = 1617;
		com.google.javascript.rhino.jstype.JSTypeRegistry.ResolveMode f_resolve_mode_5649_line_1610 = resolveMode;
		com.google.javascript.rhino.jstype.JSTypeRegistry.ResolveMode q_lazy_expressions_259_line_1610 = ResolveMode.LAZY_EXPRESSIONS;
		boolean jstype_registry_1_expr390_line_1610 = f_resolve_mode_5649_line_1610 == q_lazy_expressions_259_line_1610;
		int PROBE_END_LINE_1610 = 1617;
	if (jstype_registry_1_expr390_line_1610) {
      // If the type expression doesn't contain any names, just
      // resolve it anyway.
      boolean hasNames = hasTypeName(n);
      if (hasNames) {
        return new UnresolvedTypeExpression(this, n, sourceName);
      }
    }
    int PROBE_START_LINE_1618 = 1618;
	com.google.javascript.rhino.Node p_n_5872_line_1618 = n;
	String p_source_name_5873_line_1618 = sourceName;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5874_line_1618 = scope;
	com.google.javascript.rhino.jstype.JSType jstype_registry_1_expr391_line_1618 = createFromTypeNodesInternal(
			p_n_5872_line_1618, p_source_name_5873_line_1618, p_scope_5874_line_1618);
	int PROBE_END_LINE_1618 = 1618;
	return jstype_registry_1_expr391_line_1618;
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
    int PROBE_START_LINE_1639 = 1806;
		com.google.javascript.rhino.Node p_n_5876_line_1639 = n;
		int jstype_registry_1_expr392_line_1639 = p_n_5876_line_1639.getType();
		int PROBE_END_LINE_1639 = 1806;
	switch (jstype_registry_1_expr392_line_1639) {
      case Token.LC: // Record type.
        return createRecordTypeFromNodes(
            n.getFirstChild(), sourceName, scope);

      case Token.BANG: // Not nullable
        return createFromTypeNodesInternal(
            n.getFirstChild(), sourceName, scope)
            .restrictByNotNullOrUndefined();

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
	int PROBE_START_LINE_1691 = 1692;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5878_line_1691 = scope;
	com.google.javascript.rhino.Node p_n_5876_line_1691 = n;
	String jstype_registry_1_expr394_line_1691 = p_n_5876_line_1691.getString();
	String p_source_name_5877_line_1691 = sourceName;
	JSType jstype_registry_1_expr393_line_1691 = getType(p_scope_5878_line_1691, jstype_registry_1_expr394_line_1691,
			p_source_name_5877_line_1691, n.getLineno(), n.getCharno());
	int PROBE_END_LINE_1691 = 1692;
	JSType namedType = jstype_registry_1_expr393_line_1691;
	int PROBE_START_LINE_1693 = 1695;
	com.google.javascript.rhino.jstype.JSTypeRegistry.ResolveMode f_resolve_mode_5649_line_1693 = resolveMode;
	com.google.javascript.rhino.jstype.JSTypeRegistry.ResolveMode q_lazy_names_260_line_1693 = ResolveMode.LAZY_NAMES;
	boolean jstype_registry_1_expr397_line_1693 = f_resolve_mode_5649_line_1693 != q_lazy_names_260_line_1693;
	int PROBE_END_LINE_1693 = 1695;
	if (jstype_registry_1_expr397_line_1693) {
          namedType = namedType.resolveInternal(reporter, scope);
        }
	int PROBE_START_LINE_1696 = 1737;
	com.google.javascript.rhino.jstype.JSType v_named_type_5879_line_1696 = namedType;
	boolean jstype_registry_1_expr400_line_1696 = v_named_type_5879_line_1696 instanceof ObjectType;
	boolean jstype_registry_1_expr399_line_1696 = (jstype_registry_1_expr400_line_1696);
	boolean jstype_registry_1_expr398_line_1696 = jstype_registry_1_expr399_line_1696
			&& !(nonNullableTypeNames.contains(n.getString()));
	int PROBE_END_LINE_1696 = 1737;
	if (jstype_registry_1_expr398_line_1696) {
          Node typeList = n.getFirstChild();
          int nAllowedTypes =
              namedType.getTemplateTypeMap().numUnfilledTemplateKeys();
          if (typeList != null && nAllowedTypes > 0) {
            // Templatized types.
            ImmutableList.Builder<JSType> templateTypes =
                ImmutableList.builder();

            // Special case for Object, where Object.<X> implies Object.<?,X>.
            if (n.getString().equals("Object") &&
                typeList.getFirstChild() == typeList.getLastChild()) {
              templateTypes.add(getNativeType(UNKNOWN_TYPE));
            }

            int templateNodeIndex = 0;
            for (Node templateNode : typeList.getFirstChild().siblings()) {
              // Don't parse more templatized type nodes than the type can
              // accommodate. This is because some existing clients have
              // template annotations on non-templatized classes, for instance:
              //   goog.structs.Set.<SomeType>
              // The problem in these cases is that the previously-unparsed
              // SomeType is not actually a valid type. To prevent these clients
              // from seeing unknown type errors, we explicitly don't parse
              // these types.
              // TODO(user): Address this issue by removing bad template
              // annotations on non-templatized classes.
              if (++templateNodeIndex > nAllowedTypes) {
                break;
              }
              templateTypes.add(createFromTypeNodesInternal(
                  templateNode, sourceName, scope));
            }
            namedType = createTemplatizedType(
                (ObjectType) namedType, templateTypes.build());
            Preconditions.checkNotNull(namedType);
          }
          return createDefaultObjectUnion(namedType);
        } else {
          int PROBE_START_LINE_1736 = 1736;
			com.google.javascript.rhino.jstype.JSType v_named_type_5879_line_1736 = namedType;
			int PROBE_END_LINE_1736 = 1736;
		return v_named_type_5879_line_1736;
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
                SimpleErrorReporter.getMessage0(
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
                      SimpleErrorReporter.getMessage0(
                          "msg.jsdoc.function.varargs"),
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
  public void setTemplateTypeNames(List<TemplateType> keys) {
    Preconditions.checkNotNull(keys);
    for (TemplateType key : keys) {
      templateTypes.put(key.getReferenceName(), key);
    }
  }

  /**
   * Clears the template type name.
   */
  public void clearTemplateTypeNames() {
    int PROBE_START_LINE_1885 = 1885;
	Map<String, com.google.javascript.rhino.jstype.TemplateType> f_template_types_5645_line_1885 = templateTypes;
	int PROBE_END_LINE_1885 = 1885;
	f_template_types_5645_line_1885.clear();
  }
}
