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

import static com.google.javascript.rhino.jstype.TernaryValue.UNKNOWN;

import com.google.common.base.Predicate;
import com.google.common.collect.ImmutableList;
import com.google.javascript.rhino.ErrorReporter;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.jstype.JSTypeRegistry.ResolveMode;

import java.io.Serializable;
import java.util.Comparator;

/**
 * Represents JavaScript value types.<p>
 *
 * Types are split into two separate families: value types and object types.
 *
 * A special {@link UnknownType} exists to represent a wildcard type on which
 * no information can be gathered. In particular, it can assign to everyone,
 * is a subtype of everyone (and everyone is a subtype of it).<p>
 *
 * If you remove the {@link UnknownType}, the set of types in the type system
 * forms a lattice with the {@link #isSubtype} relation defining the partial
 * order of types. All types are united at the top of the lattice by the
 * {@link AllType} and at the bottom by the {@link NoType}.<p>
 *
 */
public abstract class JSType implements Serializable {
  private static final long serialVersionUID = 1L;

  private boolean resolved = false;
  private JSType resolveResult = null;
  private final ImmutableList<String> templateKeys;
  private final ImmutableList<JSType> templatizedTypes;

  private boolean inTemplatedCheckVisit = false;
  private static final CanCastToVisitor CAN_CAST_TO_VISITOR =
      new CanCastToVisitor();

  public static final String UNKNOWN_NAME =
      "Unknown class name";

  public static final String NOT_A_CLASS =
      "Not declared as a constructor";

  public static final String NOT_A_TYPE =
      "Not declared as a type name";

  public static final String EMPTY_TYPE_COMPONENT =
      "Named type with empty name component";

  /**
   * Total ordering on types based on their textual representation.
   * This is used to have a deterministic output of the toString
   * method of the union type since this output is used in tests.
   */
  static final Comparator<JSType> ALPHA = new Comparator<JSType>() {
    @Override
    public int compare(JSType t1, JSType t2) {
      return t1.toString().compareTo(t2.toString());
    }
  };

  // A flag set on enum definition tree nodes
  public static final int ENUMDECL = 1;
  public static final int NOT_ENUMDECL = 0;

  final JSTypeRegistry registry;

  JSType(JSTypeRegistry registry) {
    this(registry, null, null);
  }

  JSType(JSTypeRegistry registry, ImmutableList<String> templateKeys,
      ImmutableList<JSType> templatizedTypes) {
    int PROBE_START_LINE_116 = 116;
		com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_4868_line_116 = registry;
		int PROBE_END_LINE_116 = 116;
	this.registry = p_registry_4868_line_116;

    int PROBE_START_LINE_119 = 119;
	ImmutableList<String> p_template_keys_4869_line_119 = templateKeys;
	boolean jstype_1_expr8_line_119 = p_template_keys_4869_line_119 == null;
	int jstype_1_expr9_line_119 = 0;
	if (!jstype_1_expr8_line_119) {
		ImmutableList<String> p_template_keys_4869_line_119_v1 = templateKeys;
		jstype_1_expr9_line_119 = p_template_keys_4869_line_119_v1.size();
	}
	int jstype_1_expr7_line_119 = jstype_1_expr8_line_119 ? 0 : jstype_1_expr9_line_119;
	int PROBE_END_LINE_119 = 119;
	// Do sanity checking on the specified keys and templatized types.
    int keysLength = jstype_1_expr7_line_119;
    int PROBE_START_LINE_120 = 120;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> p_templatized_types_4870_line_120 = templatizedTypes;
	boolean jstype_1_expr11_line_120 = p_templatized_types_4870_line_120 == null;
	int jstype_1_expr12_line_120 = 0;
	if (!jstype_1_expr11_line_120) {
		ImmutableList<com.google.javascript.rhino.jstype.JSType> p_templatized_types_4870_line_120_v1 = templatizedTypes;
		jstype_1_expr12_line_120 = p_templatized_types_4870_line_120_v1.size();
	}
	int jstype_1_expr10_line_120 = jstype_1_expr11_line_120 ? 0 : jstype_1_expr12_line_120;
	int PROBE_END_LINE_120 = 120;
	int typesLength = jstype_1_expr10_line_120;
    int PROBE_START_LINE_121 = 140;
	int v_types_length_4872_line_121 = typesLength;
	int v_keys_length_4871_line_121 = keysLength;
	boolean jstype_1_expr13_line_121 = v_types_length_4872_line_121 > v_keys_length_4871_line_121;
	int PROBE_END_LINE_121 = 140;
	if (jstype_1_expr13_line_121) {
      throw new IllegalArgumentException(
          "Cannot have more templatized types than template keys");
    } else {
		int PROBE_START_LINE_124 = 140;
		int v_types_length_4872_line_124 = typesLength;
		int v_keys_length_4871_line_124 = keysLength;
		boolean jstype_1_expr14_line_124 = v_types_length_4872_line_124 < v_keys_length_4871_line_124;
		int PROBE_END_LINE_124 = 140;
		if (jstype_1_expr14_line_124) {
			ImmutableList.Builder<JSType> builder = ImmutableList.builder();
			if (typesLength > 0) {
				builder.addAll(templatizedTypes);
			}
			for (int i = 0; i < keysLength - typesLength; i++) {
				builder.add(registry.getNativeType(JSTypeNative.UNKNOWN_TYPE));
			}
			templatizedTypes = builder.build();
		} else {
			int PROBE_START_LINE_136 = 140;
			int v_keys_length_4871_line_136 = keysLength;
			boolean jstype_1_expr16_line_136 = v_keys_length_4871_line_136 == 0;
			boolean jstype_1_expr17_line_136 = true;
			if (jstype_1_expr16_line_136) {
				int v_types_length_4872_line_136 = typesLength;
				jstype_1_expr17_line_136 = v_types_length_4872_line_136 == 0;
			}
			boolean jstype_1_expr15_line_136 = jstype_1_expr16_line_136 && jstype_1_expr17_line_136;
			int PROBE_END_LINE_136 = 140;
			if (jstype_1_expr15_line_136) {
				int PROBE_START_LINE_138 = 138;
				ImmutableList<String> jstype_1_expr19_line_138 = ImmutableList.of();
				int PROBE_END_LINE_138 = 138;
				templateKeys = jstype_1_expr19_line_138;
				int PROBE_START_LINE_139 = 139;
				ImmutableList<com.google.javascript.rhino.jstype.JSType> jstype_1_expr21_line_139 = ImmutableList.of();
				int PROBE_END_LINE_139 = 139;
				templatizedTypes = jstype_1_expr21_line_139;
			}
		}
	}

    int PROBE_START_LINE_142 = 142;
	ImmutableList<String> p_template_keys_4869_line_142 = templateKeys;
	int PROBE_END_LINE_142 = 142;
	this.templateKeys = p_template_keys_4869_line_142;
    int PROBE_START_LINE_143 = 143;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> p_templatized_types_4870_line_143 = templatizedTypes;
	int PROBE_END_LINE_143 = 143;
	this.templatizedTypes = p_templatized_types_4870_line_143;
  }

  /**
   * Utility method for less verbose code.
   */
  JSType getNativeType(JSTypeNative typeId) {
    int PROBE_START_LINE_150 = 150;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_4786_line_150 = registry;
	com.google.javascript.rhino.jstype.JSTypeNative p_type_id_4875_line_150 = typeId;
	com.google.javascript.rhino.jstype.JSType jstype_1_expr28_line_150 = f_registry_4786_line_150
			.getNativeType(p_type_id_4875_line_150);
	int PROBE_END_LINE_150 = 150;
	return jstype_1_expr28_line_150;
  }

  /**
   * Gets the docInfo for this type. By default, documentation cannot be
   * attached to arbitrary types. This must be overridden for
   * programmer-defined types.
   */
  public JSDocInfo getJSDocInfo() {
    return null;
  }

  /**
   * Returns a user meaningful label for the JSType instance.  For example,
   * Functions and Enums will return their declaration name (if they have one).
   * Some types will not have a meaningful display name.  Calls to
   * hasDisplayName() will return true IFF getDisplayName() will return null
   * or a zero length string.
   *
   * @return the display name of the type, or null if one is not available
   */
  public String getDisplayName() {
    return null;
  }

  /**
   * @return true if the JSType has a user meaningful label.
   */
  public boolean hasDisplayName() {
    String displayName = getDisplayName();
    return displayName != null && !displayName.isEmpty();
  }

  /** Checks whether the property pname is present on the object. */
  public boolean hasProperty(String pname) {
    return false;
  }

  public boolean isNoType() {
    return false;
  }

  public boolean isNoResolvedType() {
    return false;
  }

  public boolean isNoObjectType() {
    return false;
  }

  public final boolean isEmptyType() {
    int PROBE_START_LINE_201 = 203;
	boolean jstype_1_expr30_line_201 = isNoType();
	boolean jstype_1_expr31_line_201 = false;
	boolean jstype_1_expr32_line_201 = false;
	if (!jstype_1_expr30_line_201) {
		jstype_1_expr31_line_201 = isNoObjectType();
		if (!jstype_1_expr31_line_201) {
			jstype_1_expr32_line_201 = isNoResolvedType();
		}
	}
	boolean jstype_1_expr29_line_201 = jstype_1_expr30_line_201 || jstype_1_expr31_line_201 || jstype_1_expr32_line_201
			|| (registry.getNativeFunctionType(JSTypeNative.LEAST_FUNCTION_TYPE) == this);
	int PROBE_END_LINE_201 = 203;
	return jstype_1_expr29_line_201;
  }

  public boolean isNumberObjectType() {
    return false;
  }

  public boolean isNumberValueType() {
    return false;
  }

  /** Whether this is the prototype of a function. */
  public boolean isFunctionPrototypeType() {
    return false;
  }

  public boolean isStringObjectType() {
    return false;
  }

  boolean isTheObjectType() {
    return false;
  }

  public boolean isStringValueType() {
    return false;
  }

  /**
   * Tests whether the type is a string (value or Object).
   * @return {@code this &lt;: (String, string)}
   */
  public final boolean isString() {
    return isSubtype(
        getNativeType(JSTypeNative.STRING_VALUE_OR_OBJECT_TYPE));
  }

  /**
   * Tests whether the type is a number (value or Object).
   * @return {@code this &lt;: (Number, number)}
   */
  public final boolean isNumber() {
    return isSubtype(
        getNativeType(JSTypeNative.NUMBER_VALUE_OR_OBJECT_TYPE));
  }

  public boolean isArrayType() {
    return false;
  }

  public boolean isBooleanObjectType() {
    return false;
  }

  public boolean isBooleanValueType() {
    return false;
  }

  public boolean isRegexpType() {
    return false;
  }

  public boolean isDateType() {
    return false;
  }

  public boolean isNullType() {
    return false;
  }

  public boolean isVoidType() {
    return false;
  }

  public boolean isAllType() {
    return false;
  }

  public boolean isUnknownType() {
    return false;
  }

  public boolean isCheckedUnknownType() {
    return false;
  }

  public final boolean isUnionType() {
    int PROBE_START_LINE_290 = 290;
	com.google.javascript.rhino.jstype.UnionType jstype_1_expr34_line_290 = toMaybeUnionType();
	boolean jstype_1_expr33_line_290 = jstype_1_expr34_line_290 != null;
	int PROBE_END_LINE_290 = 290;
	return jstype_1_expr33_line_290;
  }

  /**
   * Returns true iff {@code this} can be a {@code struct}.
   * UnionType overrides the method, assume {@code this} is not a union here.
   */
  public boolean isStruct() {
    if (isObject()) {
      ObjectType objType = toObjectType();
      ObjectType iproto = objType.getImplicitPrototype();
      // For the case when a @struct constructor is assigned to a function's
      // prototype property
      if (iproto != null && iproto.isStruct()) {
        return true;
      }
      FunctionType ctor = objType.getConstructor();
      // This test is true for object literals
      if (ctor == null) {
        JSDocInfo info = objType.getJSDocInfo();
        return info != null && info.makesStructs();
      } else {
        return ctor.makesStructs();
      }
    }
    return false;
  }

  /**
   * Returns true iff {@code this} can be a {@code dict}.
   * UnionType overrides the method, assume {@code this} is not a union here.
   */
  public boolean isDict() {
    if (isObject()) {
      ObjectType objType = toObjectType();
      ObjectType iproto = objType.getImplicitPrototype();
      // For the case when a @dict constructor is assigned to a function's
      // prototype property
      if (iproto != null && iproto.isDict()) {
        return true;
      }
      FunctionType ctor = objType.getConstructor();
      // This test is true for object literals
      if (ctor == null) {
        JSDocInfo info = objType.getJSDocInfo();
        return info != null && info.makesDicts();
      } else {
        return ctor.makesDicts();
      }
    }
    return false;
  }

  /**
   * Downcasts this to a UnionType, or returns null if this is not a UnionType.
   *
   * Named in honor of Haskell's Maybe type constructor.
   */
  public UnionType toMaybeUnionType() {
    return null;
  }

  /** Returns true if this is a global this type. */
  public final boolean isGlobalThisType() {
    return this == registry.getNativeType(JSTypeNative.GLOBAL_THIS);
  }

  /** Returns true if toMaybeFunctionType returns a non-null FunctionType. */
  public final boolean isFunctionType() {
    int PROBE_START_LINE_359 = 359;
	com.google.javascript.rhino.jstype.FunctionType jstype_1_expr36_line_359 = toMaybeFunctionType();
	boolean jstype_1_expr35_line_359 = jstype_1_expr36_line_359 != null;
	int PROBE_END_LINE_359 = 359;
	return jstype_1_expr35_line_359;
  }

  /**
   * Downcasts this to a FunctionType, or returns null if this is not
   * a function.
   *
   * For the purposes of this function, we define a MaybeFunctionType as any
   * type in the sub-lattice
   * { x | LEAST_FUNCTION_TYPE <= x <= GREATEST_FUNCTION_TYPE }
   * This definition excludes bottom types like NoType and NoObjectType.
   *
   * This definition is somewhat arbitrary and axiomatic, but this is the
   * definition that makes the most sense for the most callers.
   */
  public FunctionType toMaybeFunctionType() {
    return null;
  }

  /**
   * Null-safe version of toMaybeFunctionType().
   */
  public static FunctionType toMaybeFunctionType(JSType type) {
    int PROBE_START_LINE_382 = 382;
	com.google.javascript.rhino.jstype.JSType p_type_4877_line_382 = type;
	boolean jstype_1_expr38_line_382 = p_type_4877_line_382 == null;
	com.google.javascript.rhino.jstype.FunctionType jstype_1_expr39_line_382 = null;
	if (!jstype_1_expr38_line_382) {
		com.google.javascript.rhino.jstype.JSType p_type_4877_line_382_v1 = type;
		jstype_1_expr39_line_382 = p_type_4877_line_382_v1.toMaybeFunctionType();
	}
	com.google.javascript.rhino.jstype.FunctionType jstype_1_expr37_line_382 = jstype_1_expr38_line_382
			? null
			: jstype_1_expr39_line_382;
	int PROBE_END_LINE_382 = 382;
	return jstype_1_expr37_line_382;
  }

  public final boolean isEnumElementType() {
    return toMaybeEnumElementType() != null;
  }

  /**
   * Downcasts this to an EnumElementType, or returns null if this is not an EnumElementType.
   */
  public EnumElementType toMaybeEnumElementType() {
    return null;
  }

  public boolean isEnumType() {
    return toMaybeEnumType() != null;
  }

  /**
   * Downcasts this to an EnumType, or returns null if this is not an EnumType.
   */
  public EnumType toMaybeEnumType() {
    return null;
  }

  boolean isNamedType() {
    return false;
  }

  public boolean isRecordType() {
    int PROBE_START_LINE_412 = 412;
	com.google.javascript.rhino.jstype.RecordType jstype_1_expr41_line_412 = toMaybeRecordType();
	boolean jstype_1_expr40_line_412 = jstype_1_expr41_line_412 != null;
	int PROBE_END_LINE_412 = 412;
	return jstype_1_expr40_line_412;
  }

  /**
   * Downcasts this to a RecordType, or returns null if this is not
   * a RecordType.
   */
  RecordType toMaybeRecordType() {
    return null;
  }

  public final boolean isParameterizedType() {
    int PROBE_START_LINE_424 = 424;
	com.google.javascript.rhino.jstype.ParameterizedType jstype_1_expr43_line_424 = toMaybeParameterizedType();
	boolean jstype_1_expr42_line_424 = jstype_1_expr43_line_424 != null;
	int PROBE_END_LINE_424 = 424;
	return jstype_1_expr42_line_424;
  }

  /**
   * Downcasts this to a ParameterizedType, or returns null if this is not
   * a function.
   */
  public ParameterizedType toMaybeParameterizedType() {
    return null;
  }

  /**
   * Null-safe version of toMaybeParameterizedType().
   */
  public static ParameterizedType toMaybeParameterizedType(JSType type) {
    return type == null ? null : type.toMaybeParameterizedType();
  }

  public final boolean isTemplateType() {
    int PROBE_START_LINE_443 = 443;
	com.google.javascript.rhino.jstype.TemplateType jstype_1_expr45_line_443 = toMaybeTemplateType();
	boolean jstype_1_expr44_line_443 = jstype_1_expr45_line_443 != null;
	int PROBE_END_LINE_443 = 443;
	return jstype_1_expr44_line_443;
  }

  /**
   * Downcasts this to a TemplateType, or returns null if this is not
   * a function.
   */
  public TemplateType toMaybeTemplateType() {
    return null;
  }

  /**
   * Null-safe version of toMaybeTemplateType().
   */
  public static TemplateType toMaybeTemplateType(JSType type) {
    return type == null ? null : type.toMaybeTemplateType();
  }

  public boolean hasAnyTemplateTypes() {
    int PROBE_START_LINE_462 = 470;
	boolean f_in_templated_check_visit_4862_line_462 = this.inTemplatedCheckVisit;
	boolean jstype_1_expr46_line_462 = !f_in_templated_check_visit_4862_line_462;
	int PROBE_END_LINE_462 = 470;
	if (jstype_1_expr46_line_462) {
      this.inTemplatedCheckVisit = true;
      int PROBE_START_LINE_464 = 464;
	boolean jstype_1_expr52_line_464 = hasAnyTemplateTypesInternal();
	int PROBE_END_LINE_464 = 464;
	boolean result = jstype_1_expr52_line_464;
      this.inTemplatedCheckVisit = false;
      int PROBE_START_LINE_466 = 466;
	boolean v_result_4880_line_466 = result;
	int PROBE_END_LINE_466 = 466;
	return v_result_4880_line_466;
    } else {
      // prevent infinite recursion, this is "not yet".
      return false;
    }
  }

  boolean hasAnyTemplateTypesInternal() {
    int PROBE_START_LINE_474 = 480;
	boolean jstype_1_expr56_line_474 = isTemplatized();
	int PROBE_END_LINE_474 = 480;
	if (jstype_1_expr56_line_474) {
      for (JSType templatizedType : templatizedTypes) {
        if (templatizedType.hasAnyTemplateTypes()) {
          return true;
        }
      }
    }
    return false;
  }

  /**
   * Returns true if this type is templatized; false otherwise.
   */
  public boolean isTemplatized() {
    int PROBE_START_LINE_488 = 488;
	ImmutableList<String> f_template_keys_4873_line_488 = templateKeys;
	boolean jstype_1_expr58_line_488 = f_template_keys_4873_line_488.isEmpty();
	boolean jstype_1_expr57_line_488 = !jstype_1_expr58_line_488;
	int PROBE_END_LINE_488 = 488;
	return jstype_1_expr57_line_488;
  }

  /**
   * Returns the template keys associated with this type.
   */
  public ImmutableList<String> getTemplateKeys() {
    int PROBE_START_LINE_495 = 495;
	ImmutableList<String> f_template_keys_4873_line_495 = templateKeys;
	int PROBE_END_LINE_495 = 495;
	return f_template_keys_4873_line_495;
  }

  public ImmutableList<JSType> getTemplatizedTypes() {
    int PROBE_START_LINE_499 = 499;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> f_templatized_types_4874_line_499 = templatizedTypes;
	int PROBE_END_LINE_499 = 499;
	return f_templatized_types_4874_line_499;
  }

  /**
   * Returns true if this type is templatized for the specified key; false
   * otherwise.
   */
  public boolean hasTemplatizedType(String key) {
    return templateKeys.contains(key);
  }

  /**
   * Returns the type associated with a given template key. Will return
   * the UNKNOWN_TYPE if there is no template type associated with that
   * template key.
   */
  public JSType getTemplatizedType(String key) {
     int index = templateKeys.indexOf(key);
     if (index < 0) {
       return registry.getNativeType(JSTypeNative.UNKNOWN_TYPE);
     }
     return templatizedTypes.get(index);
  }

  /**
   * Determines if the two specified JSTypes have equivalent, invariant
   * templatized types.
   */
  static boolean hasEquivalentTemplateTypes(
      JSType type1, JSType type2, EquivalenceMethod eqMethod) {
    ImmutableList<JSType> templatizedTypes1 = type1.getTemplatizedTypes();
    ImmutableList<JSType> templatizedTypes2 = type2.getTemplatizedTypes();
    int nTemplatizedTypes1 = templatizedTypes1.size();
    int nTemplatizedTypes2 = templatizedTypes2.size();

    if (nTemplatizedTypes1 != nTemplatizedTypes2) {
      return false;
    }

    for (int i = 0; i < nTemplatizedTypes1; i++) {
      JSType templatizedType1 = templatizedTypes1.get(i);
      JSType templatizedType2 = templatizedTypes2.get(i);
      if (templatizedType1.checkEquivalenceHelper(templatizedType2, eqMethod)) {
        return false;
      }
    }

    return true;
  }


  /**
   * Tests whether this type is an {@code Object}, or any subtype thereof.
   * @return {@code this &lt;: Object}
   */
  public boolean isObject() {
    return false;
  }

  /**
   * Whether this type is a {@link FunctionType} that is a constructor or a
   * named type that points to such a type.
   */
  public boolean isConstructor() {
    return false;
  }

  /**
   * Whether this type is a nominal type (a named instance object or
   * a named enum).
   */
  public boolean isNominalType() {
    return false;
  }

  /**
   * Whether this type is the original constructor of a nominal type.
   * Does not include structural constructors.
   */
  public final boolean isNominalConstructor() {
    if (isConstructor() || isInterface()) {
      FunctionType fn = toMaybeFunctionType();
      if (fn == null) {
        return false;
      }

      // Programmer-defined constructors will have a link
      // back to the original function in the source tree.
      // Structural constructors will not.
      if (fn.getSource() != null) {
        return true;
      }

      // Native constructors are always nominal.
      return fn.isNativeObjectType();
    }
    return false;
  }

  /**
   * Whether this type is an Instance object of some constructor.
   * Does not necessarily mean this is an {@link InstanceObjectType}.
   */
  public boolean isInstanceType() {
    return false;
  }

  /**
   * Whether this type is a {@link FunctionType} that is an interface or a named
   * type that points to such a type.
   */
  public boolean isInterface() {
    return false;
  }

  /**
   * Whether this type is a {@link FunctionType} that is an ordinary function or
   * a named type that points to such a type.
   */
  public boolean isOrdinaryFunction() {
    return false;
  }

  /**
   * Checks if two types are equivalent.
   */
  public final boolean isEquivalentTo(JSType that) {
    int PROBE_START_LINE_626 = 626;
	com.google.javascript.rhino.jstype.JSType p_that_4886_line_626 = that;
	com.google.javascript.rhino.jstype.EquivalenceMethod q_identity_145_line_626 = EquivalenceMethod.IDENTITY;
	boolean jstype_1_expr59_line_626 = checkEquivalenceHelper(p_that_4886_line_626, q_identity_145_line_626);
	int PROBE_END_LINE_626 = 626;
	return jstype_1_expr59_line_626;
  }

  /**
   * Checks if two types are invariant.
   * @see EquivalenceMethod
   */
  public final boolean isInvariant(JSType that) {
    return checkEquivalenceHelper(that, EquivalenceMethod.INVARIANT);
  }

  /**
   * Whether this type is meaningfully different from {@code that} type for
   * the purposes of data flow analysis.
   *
   * This is a trickier check than pure equality, because it has to properly
   * handle unknown types. See {@code EquivalenceMethod} for more info.
   *
   * @see <a href="http://www.youtube.com/watch?v=_RpSv3HjpEw">Unknown
   *     unknowns</a>
   */
  public final boolean differsFrom(JSType that) {
    return !checkEquivalenceHelper(that, EquivalenceMethod.DATA_FLOW);
  }

  /**
   * An equivalence visitor.
   */
  boolean checkEquivalenceHelper(JSType that, EquivalenceMethod eqMethod) {
    int PROBE_START_LINE_655 = 657;
	com.google.javascript.rhino.jstype.JSType p_that_4889_line_655 = that;
	boolean jstype_1_expr60_line_655 = this == p_that_4889_line_655;
	int PROBE_END_LINE_655 = 657;
	if (jstype_1_expr60_line_655) {
      return true;
    }

    int PROBE_START_LINE_659 = 659;
	boolean jstype_1_expr62_line_659 = isUnknownType();
	int PROBE_END_LINE_659 = 659;
	boolean thisUnknown = jstype_1_expr62_line_659;
    int PROBE_START_LINE_660 = 660;
	com.google.javascript.rhino.jstype.JSType p_that_4889_line_660 = that;
	boolean jstype_1_expr63_line_660 = p_that_4889_line_660.isUnknownType();
	int PROBE_END_LINE_660 = 660;
	boolean thatUnknown = jstype_1_expr63_line_660;
    int PROBE_START_LINE_661 = 677;
	boolean v_this_unknown_4891_line_661 = thisUnknown;
	boolean v_that_unknown_4892_line_661 = false;
	if (!v_this_unknown_4891_line_661) {
		v_that_unknown_4892_line_661 = thatUnknown;
	}
	boolean jstype_1_expr64_line_661 = v_this_unknown_4891_line_661 || v_that_unknown_4892_line_661;
	int PROBE_END_LINE_661 = 677;
	if (jstype_1_expr64_line_661) {
      int PROBE_START_LINE_662 = 676;
		com.google.javascript.rhino.jstype.EquivalenceMethod p_eq_method_4890_line_662 = eqMethod;
		com.google.javascript.rhino.jstype.EquivalenceMethod q_invariant_146_line_662 = EquivalenceMethod.INVARIANT;
		boolean jstype_1_expr65_line_662 = p_eq_method_4890_line_662 == q_invariant_146_line_662;
		int PROBE_END_LINE_662 = 676;
	if (jstype_1_expr65_line_662) {
        // If we're checking for invariance, the unknown type is invariant
        // with everyone.
        return true;
      } else {
		int PROBE_START_LINE_666 = 676;
		com.google.javascript.rhino.jstype.EquivalenceMethod p_eq_method_4890_line_666 = eqMethod;
		com.google.javascript.rhino.jstype.EquivalenceMethod q_data_flow_147_line_666 = EquivalenceMethod.DATA_FLOW;
		boolean jstype_1_expr66_line_666 = p_eq_method_4890_line_666 == q_data_flow_147_line_666;
		int PROBE_END_LINE_666 = 676;
		if (jstype_1_expr66_line_666) {
			return thisUnknown && thatUnknown;
		} else {
			int PROBE_START_LINE_670 = 676;
			boolean v_this_unknown_4891_line_670 = thisUnknown;
			boolean v_that_unknown_4892_line_670 = true;
			if (v_this_unknown_4891_line_670) {
				v_that_unknown_4892_line_670 = thatUnknown;
			}
			boolean jstype_1_expr67_line_670 = v_this_unknown_4891_line_670 && v_that_unknown_4892_line_670
					&& (isNominalType() ^ that.isNominalType());
			int PROBE_END_LINE_670 = 676;
			if (jstype_1_expr67_line_670) {
				return false;
			}
		}
	}
    }

    int PROBE_START_LINE_679 = 682;
	boolean jstype_1_expr69_line_679 = isUnionType();
	boolean jstype_1_expr70_line_679 = true;
	if (jstype_1_expr69_line_679) {
		com.google.javascript.rhino.jstype.JSType p_that_4889_line_679 = that;
		jstype_1_expr70_line_679 = p_that_4889_line_679.isUnionType();
	}
	boolean jstype_1_expr68_line_679 = jstype_1_expr69_line_679 && jstype_1_expr70_line_679;
	int PROBE_END_LINE_679 = 682;
	if (jstype_1_expr68_line_679) {
      return toMaybeUnionType().checkUnionEquivalenceHelper(
          that.toMaybeUnionType(), eqMethod);
    }

    int PROBE_START_LINE_684 = 687;
	boolean jstype_1_expr72_line_684 = isFunctionType();
	boolean jstype_1_expr73_line_684 = true;
	if (jstype_1_expr72_line_684) {
		com.google.javascript.rhino.jstype.JSType p_that_4889_line_684 = that;
		jstype_1_expr73_line_684 = p_that_4889_line_684.isFunctionType();
	}
	boolean jstype_1_expr71_line_684 = jstype_1_expr72_line_684 && jstype_1_expr73_line_684;
	int PROBE_END_LINE_684 = 687;
	if (jstype_1_expr71_line_684) {
      return toMaybeFunctionType().checkFunctionEquivalenceHelper(
          that.toMaybeFunctionType(), eqMethod);
    }

    int PROBE_START_LINE_689 = 692;
	boolean jstype_1_expr75_line_689 = isRecordType();
	boolean jstype_1_expr76_line_689 = true;
	if (jstype_1_expr75_line_689) {
		com.google.javascript.rhino.jstype.JSType p_that_4889_line_689 = that;
		jstype_1_expr76_line_689 = p_that_4889_line_689.isRecordType();
	}
	boolean jstype_1_expr74_line_689 = jstype_1_expr75_line_689 && jstype_1_expr76_line_689;
	int PROBE_END_LINE_689 = 692;
	if (jstype_1_expr74_line_689) {
      return toMaybeRecordType().checkRecordEquivalenceHelper(
          that.toMaybeRecordType(), eqMethod);
    }

    int PROBE_START_LINE_694 = 694;
	ParameterizedType jstype_1_expr77_line_694 = toMaybeParameterizedType();
	int PROBE_END_LINE_694 = 694;
	ParameterizedType thisParamType = jstype_1_expr77_line_694;
    int PROBE_START_LINE_695 = 695;
	com.google.javascript.rhino.jstype.JSType p_that_4889_line_695 = that;
	ParameterizedType jstype_1_expr78_line_695 = p_that_4889_line_695.toMaybeParameterizedType();
	int PROBE_END_LINE_695 = 695;
	ParameterizedType thatParamType = jstype_1_expr78_line_695;
    int PROBE_START_LINE_696 = 717;
	com.google.javascript.rhino.jstype.ParameterizedType v_this_param_type_4893_line_696 = thisParamType;
	boolean jstype_1_expr80_line_696 = v_this_param_type_4893_line_696 != null;
	boolean jstype_1_expr81_line_696 = false;
	if (!jstype_1_expr80_line_696) {
		com.google.javascript.rhino.jstype.ParameterizedType v_that_param_type_4894_line_696 = thatParamType;
		jstype_1_expr81_line_696 = v_that_param_type_4894_line_696 != null;
	}
	boolean jstype_1_expr79_line_696 = jstype_1_expr80_line_696 || jstype_1_expr81_line_696;
	int PROBE_END_LINE_696 = 717;
	if (jstype_1_expr79_line_696) {
      // Check if one type is parameterized, but the other is not.
      boolean paramsMatch = false;
      if (thisParamType != null && thatParamType != null) {
        paramsMatch = thisParamType.getParameterType().checkEquivalenceHelper(
            thatParamType.getParameterType(), eqMethod);
      } else if (eqMethod == EquivalenceMethod.IDENTITY) {
        paramsMatch = false;
      } else {
        // If one of the type parameters is unknown, but the other is not,
        // then we consider these the same for the purposes of data flow
        // and invariance.
        paramsMatch = true;
      }

      JSType thisRootType = thisParamType == null ?
          this : thisParamType.getReferencedTypeInternal();
      JSType thatRootType = thatParamType == null ?
          that : thatParamType.getReferencedTypeInternal();
      return paramsMatch &&
          thisRootType.checkEquivalenceHelper(thatRootType, eqMethod);
    }

    int PROBE_START_LINE_719 = 722;
	boolean jstype_1_expr83_line_719 = isNominalType();
	boolean jstype_1_expr84_line_719 = true;
	if (jstype_1_expr83_line_719) {
		com.google.javascript.rhino.jstype.JSType p_that_4889_line_719 = that;
		jstype_1_expr84_line_719 = p_that_4889_line_719.isNominalType();
	}
	boolean jstype_1_expr82_line_719 = jstype_1_expr83_line_719 && jstype_1_expr84_line_719;
	int PROBE_END_LINE_719 = 722;
	if (jstype_1_expr82_line_719) {
      int PROBE_START_LINE_720 = 721;
		com.google.javascript.rhino.jstype.ObjectType jstype_1_expr88_line_720 = toObjectType();
		String jstype_1_expr87_line_720 = jstype_1_expr88_line_720.getReferenceName();
		boolean jstype_1_expr85_line_720 = jstype_1_expr87_line_720.equals(that.toObjectType().getReferenceName());
		int PROBE_END_LINE_720 = 721;
	return jstype_1_expr85_line_720;
    }

    int PROBE_START_LINE_725 = 729;
	boolean jstype_1_expr89_line_725 = this instanceof ProxyObjectType;
	int PROBE_END_LINE_725 = 729;
	// Unbox other proxies.
    if (jstype_1_expr89_line_725) {
      return ((ProxyObjectType) this)
          .getReferencedTypeInternal().checkEquivalenceHelper(
              that, eqMethod);
    }

    int PROBE_START_LINE_731 = 735;
	com.google.javascript.rhino.jstype.JSType p_that_4889_line_731 = that;
	boolean jstype_1_expr91_line_731 = p_that_4889_line_731 instanceof ProxyObjectType;
	int PROBE_END_LINE_731 = 735;
	if (jstype_1_expr91_line_731) {
      int PROBE_START_LINE_732 = 734;
		boolean jstype_1_expr92_line_732 = checkEquivalenceHelper(((ProxyObjectType) that).getReferencedTypeInternal(),
				eqMethod);
		int PROBE_END_LINE_732 = 734;
	return jstype_1_expr92_line_732;
    }

    int PROBE_START_LINE_741 = 741;
	com.google.javascript.rhino.jstype.JSType p_that_4889_line_741 = that;
	boolean jstype_1_expr94_line_741 = this == p_that_4889_line_741;
	int PROBE_END_LINE_741 = 741;
	// Relies on the fact that for the base {@link JSType}, only one
    // instance of each sub-type will ever be created in a given registry, so
    // there is no need to verify members. If the object pointers are not
    // identical, then the type member must be different.
    return jstype_1_expr94_line_741;
  }

  public static boolean isEquivalent(JSType typeA, JSType typeB) {
    return (typeA == null || typeB == null) ?
        typeA == typeB : typeA.isEquivalentTo(typeB);
  }

  @Override
  public boolean equals(Object jsType) {
    return (jsType instanceof JSType) ?
        isEquivalentTo((JSType) jsType) : false;
  }

  @Override
  public int hashCode() {
    int PROBE_START_LINE_757 = 757;
	int jstype_1_expr96_line_757 = System.identityHashCode(this);
	int PROBE_END_LINE_757 = 757;
	return jstype_1_expr96_line_757;
  }

  /**
   * This predicate is used to test whether a given type can appear in a
   * 'Int32' context.  This context includes, for example, the operands of a
   * bitwise or operator.  Since we do not currently support integer types,
   * this is a synonym for {@code Number}.
   */
  public final boolean matchesInt32Context() {
    return matchesNumberContext();
  }

  /**
   * This predicate is used to test whether a given type can appear in a
   * 'Uint32' context.  This context includes the right-hand operand of a shift
   * operator.
   */
  public final boolean matchesUint32Context() {
    return matchesNumberContext();
  }

  /**
   * This predicate is used to test whether a given type can appear in a
   * numeric context, such as an operand of a multiply operator.
   */
  public boolean matchesNumberContext() {
    return false;
  }

  /**
   * This predicate is used to test whether a given type can appear in a
   * {@code String} context, such as an operand of a string concat (+) operator.
   *
   * All types have at least the potential for converting to {@code String}.
   * When we add externally defined types, such as a browser OM, we may choose
   * to add types that do not automatically convert to {@code String}.
   */
  public boolean matchesStringContext() {
    return false;
  }

  /**
   * This predicate is used to test whether a given type can appear in an
   * {@code Object} context, such as the expression in a with statement.
   *
   * Most types we will encounter, except notably {@code null}, have at least
   * the potential for converting to {@code Object}.  Host defined objects can
   * get peculiar.
   */
  public boolean matchesObjectContext() {
    return false;
  }

  /**
   * Coerces this type to an Object type, then gets the type of the property
   * whose name is given.
   *
   * Unlike {@link ObjectType#getPropertyType}, returns null if the property
   * is not found.
   *
   * @return The property's type. {@code null} if the current type cannot
   *     have properties, or if the type is not found.
   */
  public JSType findPropertyType(String propertyName) {
    ObjectType autoboxObjType = ObjectType.cast(autoboxesTo());
    if (autoboxObjType != null) {
      return autoboxObjType.findPropertyType(propertyName);
    }

    return null;
  }

  /**
   * This predicate is used to test whether a given type can be used as the
   * 'function' in a function call.
   *
   * @return {@code true} if this type might be callable.
   */
  public boolean canBeCalled() {
    return false;
  }

  /**
   * Tests whether values of {@code this} type can be safely assigned
   * to values of {@code that} type.<p>
   *
   * The default implementation verifies that {@code this} is a subtype
   * of {@code that}.<p>
   */
  public boolean canCastTo(JSType that) {
    return this.visit(CAN_CAST_TO_VISITOR, that);
  }

  /**
   * Turn a scalar type to the corresponding object type.
   *
   * @return the auto-boxed type or {@code null} if this type is not a scalar.
   */
  public JSType autoboxesTo() {
    return null;
  }

  /**
   * Turn an object type to its corresponding scalar type.
   *
   * @return the unboxed type or {@code null} if this type does not unbox.
   */
  public JSType unboxesTo() {
    return null;
  }

  /**
   * Casts this to an ObjectType, or returns null if this is not an ObjectType.
   * If this is a scalar type, it will *not* be converted to an object type.
   * If you want to simulate JS autoboxing or dereferencing, you should use
   * autoboxesTo() or dereference().
   */
  public ObjectType toObjectType() {
    int PROBE_START_LINE_876 = 876;
	boolean jstype_1_expr99_line_876 = this instanceof ObjectType;
	com.google.javascript.rhino.jstype.ObjectType jstype_1_expr98_line_876 = jstype_1_expr99_line_876
			? (ObjectType) this
			: null;
	int PROBE_END_LINE_876 = 876;
	return jstype_1_expr98_line_876;
  }

  /**
   * Dereference a type for property access.
   *
   * Filters null/undefined and autoboxes the resulting type.
   * Never returns null.
   */
  public JSType autobox() {
    JSType restricted = restrictByNotNullOrUndefined();
    JSType autobox = restricted.autoboxesTo();
    return autobox == null ? restricted : autobox;
  }

  /**
   * Dereference a type for property access.
   *
   * Filters null/undefined, autoboxes the resulting type, and returns it
   * iff it's an object.
   */
  public final ObjectType dereference() {
    return autobox().toObjectType();
  }

  /**
   * Tests whether {@code this} and {@code that} are meaningfully
   * comparable. By meaningfully, we mean compatible types that do not lead
   * to step 22 of the definition of the Abstract Equality Comparison
   * Algorithm (11.9.3, page 55&ndash;56) of the ECMA-262 specification.<p>
   */
  public final boolean canTestForEqualityWith(JSType that) {
    return testForEquality(that).equals(UNKNOWN);
  }

  /**
   * Compares {@code this} and {@code that}.
   * @return <ul>
   * <li>{@link TernaryValue#TRUE} if the comparison of values of
   *   {@code this} type and {@code that} always succeed (such as
   *   {@code undefined} compared to {@code null})</li>
   * <li>{@link TernaryValue#FALSE} if the comparison of values of
   *   {@code this} type and {@code that} always fails (such as
   *   {@code undefined} compared to {@code number})</li>
   * <li>{@link TernaryValue#UNKNOWN} if the comparison can succeed or
   *   fail depending on the concrete values</li>
   * </ul>
   */
  public TernaryValue testForEquality(JSType that) {
    return testForEqualityHelper(this, that);
  }

  TernaryValue testForEqualityHelper(JSType aType, JSType bType) {
    if (bType.isAllType() || bType.isUnknownType() ||
        bType.isNoResolvedType() ||
        aType.isAllType() || aType.isUnknownType() ||
        aType.isNoResolvedType()) {
      return UNKNOWN;
    }

    boolean aIsEmpty = aType.isEmptyType();
    boolean bIsEmpty = bType.isEmptyType();
    if (aIsEmpty || bIsEmpty) {
      if (aIsEmpty && bIsEmpty) {
        return TernaryValue.TRUE;
      } else {
        return UNKNOWN;
      }
    }

    if (aType.isFunctionType() || bType.isFunctionType()) {
      JSType otherType = aType.isFunctionType() ? bType : aType;
      // In theory, functions are comparable to anything except
      // null/undefined. For example, on FF3:
      // function() {} == 'function () {\n}'
      // In practice, how a function serializes to a string is
      // implementation-dependent, so it does not really make sense to test
      // for equality with a string.
      JSType meet = otherType.getGreatestSubtype(
          getNativeType(JSTypeNative.OBJECT_TYPE));
      if (meet.isNoType() || meet.isNoObjectType()) {
        return TernaryValue.FALSE;
      } else {
        return TernaryValue.UNKNOWN;
      }
    }
    if (bType.isEnumElementType() || bType.isUnionType()) {
      return bType.testForEquality(aType);
    }
    return null;
  }

  /**
   * Tests whether {@code this} and {@code that} are meaningfully
   * comparable using shallow comparison. By meaningfully, we mean compatible
   * types that are not rejected by step 1 of the definition of the Strict
   * Equality Comparison Algorithm (11.9.6, page 56&ndash;57) of the
   * ECMA-262 specification.<p>
   */
  public final boolean canTestForShallowEqualityWith(JSType that) {
    if (isEmptyType() || that.isEmptyType()) {
      return isSubtype(that) || that.isSubtype(this);
    }

    JSType inf = getGreatestSubtype(that);
    return !inf.isEmptyType() ||
        // Our getGreatestSubtype relation on functions is pretty bad.
        // Let's just say it's always ok to compare two functions.
        // Once the TODO in FunctionType is fixed, we should be able to
        // remove this.
        inf == registry.getNativeType(JSTypeNative.LEAST_FUNCTION_TYPE);
  }

  /**
   * Tests whether this type is nullable.
   */
  public boolean isNullable() {
    return isSubtype(getNativeType(JSTypeNative.NULL_TYPE));
  }

  /**
   * Gets the least supertype of this that's not a union.
   */
  public JSType collapseUnion() {
    return this;
  }

  /**
   * Gets the least supertype of {@code this} and {@code that}.
   * The least supertype is the join (&#8744;) or supremum of both types in the
   * type lattice.<p>
   * Examples:
   * <ul>
   * <li>{@code number &#8744; *} = {@code *}</li>
   * <li>{@code number &#8744; Object} = {@code (number, Object)}</li>
   * <li>{@code Number &#8744; Object} = {@code Object}</li>
   * </ul>
   * @return {@code this &#8744; that}
   */
  public JSType getLeastSupertype(JSType that) {
    if (that.isUnionType()) {
      // Union types have their own implementation of getLeastSupertype.
      return that.toMaybeUnionType().getLeastSupertype(this);
    }
    return getLeastSupertype(this, that);
  }

  /**
   * A generic implementation meant to be used as a helper for common
   * getLeastSupertype implementations.
   */
  static JSType getLeastSupertype(JSType thisType, JSType thatType) {
    boolean areEquivalent = thisType.isEquivalentTo(thatType);
    return areEquivalent ? thisType :
        filterNoResolvedType(
            thisType.registry.createUnionType(thisType, thatType));
  }

  /**
   * Gets the greatest subtype of {@code this} and {@code that}.
   * The greatest subtype is the meet (&#8743;) or infimum of both types in the
   * type lattice.<p>
   * Examples
   * <ul>
   * <li>{@code Number &#8743; Any} = {@code Any}</li>
   * <li>{@code number &#8743; Object} = {@code Any}</li>
   * <li>{@code Number &#8743; Object} = {@code Number}</li>
   * </ul>
   * @return {@code this &#8744; that}
   */
  public JSType getGreatestSubtype(JSType that) {
    return getGreatestSubtype(this, that);
  }

  /**
   * A generic implementation meant to be used as a helper for common
   * getGreatestSubtype implementations.
   */
  static JSType getGreatestSubtype(JSType thisType, JSType thatType) {
    if (thisType.isFunctionType() && thatType.isFunctionType()) {
      // The FunctionType sub-lattice is not well-defined. i.e., the
      // proposition
      // A < B => sup(A, B) == B
      // does not hold because of unknown parameters and return types.
      // See the comment in supAndInfHelper for more info on this.
      return thisType.toMaybeFunctionType().supAndInfHelper(
          thatType.toMaybeFunctionType(), false);
    } else if (thisType.isEquivalentTo(thatType)) {
      return thisType;
    } else if (thisType.isUnknownType() || thatType.isUnknownType()) {
      // The greatest subtype with any unknown type is the universal
      // unknown type, unless the two types are equal.
      return thisType.isEquivalentTo(thatType) ? thisType :
          thisType.getNativeType(JSTypeNative.UNKNOWN_TYPE);
    } else if (thisType.isUnionType()) {
      return thisType.toMaybeUnionType().meet(thatType);
    } else if (thatType.isUnionType()) {
      return thatType.toMaybeUnionType().meet(thisType);
    } else if (thisType.isParameterizedType()) {
      return thisType.toMaybeParameterizedType().getGreatestSubtypeHelper(
          thatType);
    }  else if (thatType.isParameterizedType()) {
      return thatType.toMaybeParameterizedType().getGreatestSubtypeHelper(
          thisType);
    } else if (thisType.isSubtype(thatType)) {
      return filterNoResolvedType(thisType);
    } else if (thatType.isSubtype(thisType)) {
      return filterNoResolvedType(thatType);
    } else if (thisType.isRecordType()) {
      return thisType.toMaybeRecordType().getGreatestSubtypeHelper(thatType);
    } else if (thatType.isRecordType()) {
      return thatType.toMaybeRecordType().getGreatestSubtypeHelper(thisType);
    }

    if (thisType.isEnumElementType()) {
      JSType inf = thisType.toMaybeEnumElementType().meet(thatType);
      if (inf != null) {
        return inf;
      }
    } else if (thatType.isEnumElementType()) {
      JSType inf = thatType.toMaybeEnumElementType().meet(thisType);
      if (inf != null) {
        return inf;
      }
    }

    if (thisType.isObject() && thatType.isObject()) {
      return thisType.getNativeType(JSTypeNative.NO_OBJECT_TYPE);
    }
    return thisType.getNativeType(JSTypeNative.NO_TYPE);
  }

  /**
   * When computing infima, we may get a situation like
   * inf(Type1, Type2)
   * where both types are unresolved, so they're technically
   * subtypes of one another.
   *
   * If this happens, filter them down to NoResolvedType.
   */
  static JSType filterNoResolvedType(JSType type) {
    if (type.isNoResolvedType()) {
      // inf(UnresolvedType1, UnresolvedType2) needs to resolve
      // to the base unresolved type, so that the relation is symmetric.
      return type.getNativeType(JSTypeNative.NO_RESOLVED_TYPE);
    } else if (type.isUnionType()) {
      UnionType unionType = type.toMaybeUnionType();
      boolean needsFiltering = false;
      for (JSType alt : unionType.getAlternates()) {
        if (alt.isNoResolvedType()) {
          needsFiltering = true;
          break;
        }
      }

      if (needsFiltering) {
        UnionTypeBuilder builder = new UnionTypeBuilder(type.registry);
        builder.addAlternate(type.getNativeType(JSTypeNative.NO_RESOLVED_TYPE));
        for (JSType alt : unionType.getAlternates()) {
          if (!alt.isNoResolvedType()) {
            builder.addAlternate(alt);
          }
        }
        return builder.build();
      }
    }
    return type;
  }

  /**
   * Computes the restricted type of this type knowing that the
   * {@code ToBoolean} predicate has a specific value. For more information
   * about the {@code ToBoolean} predicate, see
   * {@link #getPossibleToBooleanOutcomes}.
   *
   * @param outcome the value of the {@code ToBoolean} predicate
   *
   * @return the restricted type, or the Any Type if the underlying type could
   *         not have yielded this ToBoolean value
   *
   * TODO(user): Move this method to the SemanticRAI and use the visit
   * method of types to get the restricted type.
   */
  public JSType getRestrictedTypeGivenToBooleanOutcome(boolean outcome) {
    if (outcome && this == getNativeType(JSTypeNative.UNKNOWN_TYPE)) {
      return getNativeType(JSTypeNative.CHECKED_UNKNOWN_TYPE);
    }

    BooleanLiteralSet literals = getPossibleToBooleanOutcomes();
    if (literals.contains(outcome)) {
      return this;
    } else {
      return getNativeType(JSTypeNative.NO_TYPE);
    }
  }

  /**
   * Computes the set of possible outcomes of the {@code ToBoolean} predicate
   * for this type. The {@code ToBoolean} predicate is defined by the ECMA-262
   * standard, 3<sup>rd</sup> edition. Its behavior for simple types can be
   * summarized by the following table:
   * <table>
   * <tr><th>type</th><th>result</th></tr>
   * <tr><td>{@code undefined}</td><td>{false}</td></tr>
   * <tr><td>{@code null}</td><td>{false}</td></tr>
   * <tr><td>{@code boolean}</td><td>{true, false}</td></tr>
   * <tr><td>{@code number}</td><td>{true, false}</td></tr>
   * <tr><td>{@code string}</td><td>{true, false}</td></tr>
   * <tr><td>{@code Object}</td><td>{true}</td></tr>
   * </table>
   * @return the set of boolean literals for this type
   */
  public abstract BooleanLiteralSet getPossibleToBooleanOutcomes();

  /**
   * Computes the subset of {@code this} and {@code that} types if equality
   * is observed. If a value {@code v1} of type {@code null} is equal to a value
   * {@code v2} of type {@code (undefined,number)}, we can infer that the
   * type of {@code v1} is {@code null} and the type of {@code v2} is
   * {@code undefined}.
   *
   * @return a pair containing the restricted type of {@code this} as the first
   *         component and the restricted type of {@code that} as the second
   *         element. The returned pair is never {@code null} even though its
   *         components may be {@code null}
   */
  public TypePair getTypesUnderEquality(JSType that) {
    // unions types
    if (that.isUnionType()) {
      TypePair p = that.toMaybeUnionType().getTypesUnderEquality(this);
      return new TypePair(p.typeB, p.typeA);
    }

    // other types
    switch (testForEquality(that)) {
      case FALSE:
        return new TypePair(null, null);

      case TRUE:
      case UNKNOWN:
        return new TypePair(this, that);
    }

    // switch case is exhaustive
    throw new IllegalStateException();
  }

  /**
   * Computes the subset of {@code this} and {@code that} types if inequality
   * is observed. If a value {@code v1} of type {@code number} is not equal to a
   * value {@code v2} of type {@code (undefined,number)}, we can infer that the
   * type of {@code v1} is {@code number} and the type of {@code v2} is
   * {@code number} as well.
   *
   * @return a pair containing the restricted type of {@code this} as the first
   *         component and the restricted type of {@code that} as the second
   *         element. The returned pair is never {@code null} even though its
   *         components may be {@code null}
   */
  public TypePair getTypesUnderInequality(JSType that) {
    // unions types
    if (that.isUnionType()) {
      TypePair p = that.toMaybeUnionType().getTypesUnderInequality(this);
      return new TypePair(p.typeB, p.typeA);
    }

    // other types
    switch (testForEquality(that)) {
      case TRUE:
        JSType noType = getNativeType(JSTypeNative.NO_TYPE);
        return new TypePair(noType, noType);

      case FALSE:
      case UNKNOWN:
        return new TypePair(this, that);
    }

    // switch case is exhaustive
    throw new IllegalStateException();
  }

  /**
   * Computes the subset of {@code this} and {@code that} types under shallow
   * equality.
   *
   * @return a pair containing the restricted type of {@code this} as the first
   *         component and the restricted type of {@code that} as the second
   *         element. The returned pair is never {@code null} even though its
   *         components may be {@code null}.
   */
  public TypePair getTypesUnderShallowEquality(JSType that) {
    JSType commonType = getGreatestSubtype(that);
    return new TypePair(commonType, commonType);
  }

  /**
   * Computes the subset of {@code this} and {@code that} types under
   * shallow inequality.
   *
   * @return A pair containing the restricted type of {@code this} as the first
   *         component and the restricted type of {@code that} as the second
   *         element. The returned pair is never {@code null} even though its
   *         components may be {@code null}
   */
  public TypePair getTypesUnderShallowInequality(JSType that) {
    // union types
    if (that.isUnionType()) {
      TypePair p = that.toMaybeUnionType().getTypesUnderShallowInequality(this);
      return new TypePair(p.typeB, p.typeA);
    }

    // Other types.
    // There are only two types whose shallow inequality is deterministically
    // true -- null and undefined. We can just enumerate them.
    if (isNullType() && that.isNullType() ||
        isVoidType() && that.isVoidType()) {
      return new TypePair(null, null);
    } else {
      return new TypePair(this, that);
    }
  }

  /**
   * If this is a union type, returns a union type that does not include
   * the null or undefined type.
   */
  public JSType restrictByNotNullOrUndefined() {
    return this;
  }

  /**
   * Checks whether {@code this} is a subtype of {@code that}.<p>
   *
   * Subtyping rules:
   * <ul>
   * <li>(unknown) &mdash; every type is a subtype of the Unknown type.</li>
   * <li>(no) &mdash; the No type is a subtype of every type.</li>
   * <li>(no-object) &mdash; the NoObject type is a subtype of every object
   * type (i.e. subtypes of the Object type).</li>
   * <li>(ref) &mdash; a type is a subtype of itself.</li>
   * <li>(union-l) &mdash; A union type is a subtype of a type U if all the
   * union type's constituents are a subtype of U. Formally<br>
   * {@code (T<sub>1</sub>, &hellip;, T<sub>n</sub>) &lt;: U} if and only
   * {@code T<sub>k</sub> &lt;: U} for all {@code k &isin; 1..n}.</li>
   * <li>(union-r) &mdash; A type U is a subtype of a union type if it is a
   * subtype of one of the union type's constituents. Formally<br>
   * {@code U &lt;: (T<sub>1</sub>, &hellip;, T<sub>n</sub>)} if and only
   * if {@code U &lt;: T<sub>k</sub>} for some index {@code k}.</li>
   * <li>(objects) &mdash; an Object {@code O<sub>1</sub>} is a subtype
   * of an object {@code O<sub>2</sub>} if it has more properties
   * than {@code O<sub>2</sub>} and all common properties are
   * pairwise subtypes.</li>
   * </ul>
   *
   * @return {@code this &lt;: that}
   */
  public boolean isSubtype(JSType that) {
    int PROBE_START_LINE_1333 = 1333;
	com.google.javascript.rhino.jstype.JSType p_that_4917_line_1333 = that;
	boolean jstype_1_expr104_line_1333 = isSubtypeHelper(this, p_that_4917_line_1333);
	int PROBE_END_LINE_1333 = 1333;
	return jstype_1_expr104_line_1333;
  }

  /**
   * A generic implementation meant to be used as a helper for common subtyping
   * cases.
   */
  static boolean isSubtypeHelper(JSType thisType, JSType thatType) {
    int PROBE_START_LINE_1342 = 1344;
	com.google.javascript.rhino.jstype.JSType p_that_type_4919_line_1342 = thatType;
	boolean jstype_1_expr106_line_1342 = p_that_type_4919_line_1342.isUnknownType();
	int PROBE_END_LINE_1342 = 1344;
	// unknown
    if (jstype_1_expr106_line_1342) {
      return true;
    }
    int PROBE_START_LINE_1346 = 1348;
	com.google.javascript.rhino.jstype.JSType p_that_type_4919_line_1346 = thatType;
	boolean jstype_1_expr107_line_1346 = p_that_type_4919_line_1346.isAllType();
	int PROBE_END_LINE_1346 = 1348;
	// all type
    if (jstype_1_expr107_line_1346) {
      return true;
    }
    int PROBE_START_LINE_1350 = 1352;
	com.google.javascript.rhino.jstype.JSType p_this_type_4918_line_1350 = thisType;
	com.google.javascript.rhino.jstype.JSType p_that_type_4919_line_1350 = thatType;
	boolean jstype_1_expr108_line_1350 = p_this_type_4918_line_1350.isEquivalentTo(p_that_type_4919_line_1350);
	int PROBE_END_LINE_1350 = 1352;
	// equality
    if (jstype_1_expr108_line_1350) {
      return true;
    }
    int PROBE_START_LINE_1354 = 1362;
	com.google.javascript.rhino.jstype.JSType p_that_type_4919_line_1354 = thatType;
	boolean jstype_1_expr109_line_1354 = p_that_type_4919_line_1354.isUnionType();
	int PROBE_END_LINE_1354 = 1362;
	// unions
    if (jstype_1_expr109_line_1354) {
      UnionType union = thatType.toMaybeUnionType();
      for (JSType element : union.alternates) {
        if (thisType.isSubtype(element)) {
          return true;
        }
      }
      return false;
    }

    int PROBE_START_LINE_1365 = 1368;
	com.google.javascript.rhino.jstype.JSType p_this_type_4918_line_1365 = thisType;
	boolean jstype_1_expr110_line_1365 = p_this_type_4918_line_1365.isParameterizedType();
	int PROBE_END_LINE_1365 = 1368;
	// parameterized types.
    if (jstype_1_expr110_line_1365) {
      return thisType.toMaybeParameterizedType().isParameterizeSubtypeOf(
          thatType);
    }

    int PROBE_START_LINE_1371 = 1374;
	com.google.javascript.rhino.jstype.JSType p_that_type_4919_line_1371 = thatType;
	boolean jstype_1_expr111_line_1371 = p_that_type_4919_line_1371 instanceof ProxyObjectType;
	int PROBE_END_LINE_1371 = 1374;
	// proxy types
    if (jstype_1_expr111_line_1371) {
      return thisType.isSubtype(
          ((ProxyObjectType) thatType).getReferencedTypeInternal());
    }
    return false;
  }

  /**
   * Visit this type with the given visitor.
   * @see com.google.javascript.rhino.jstype.Visitor
   * @return the value returned by the visitor
   */
  public abstract <T> T visit(Visitor<T> visitor);

  /**
   * Visit the types with the given visitor.
   * @see com.google.javascript.rhino.jstype.RelationshipVisitor
   * @return the value returned by the visitor
   */
  abstract <T> T visit(RelationshipVisitor<T> visitor, JSType that);

  /**
   * Force this type to resolve, even if the registry is in a lazy
   * resolving mode.
   * @see #resolve
   */
  public final JSType forceResolve(ErrorReporter t, StaticScope<JSType> scope) {
    ResolveMode oldResolveMode = registry.getResolveMode();
    registry.setResolveMode(ResolveMode.IMMEDIATE);
    JSType result = resolve(t, scope);
    registry.setResolveMode(oldResolveMode);
    return result;
  }


  /**
   * Resolve this type in the given scope.
   *
   * The returned value must be equal to {@code this}, as defined by
   * {@link #isEquivalentTo}. It may or may not be the same object. This method
   * may modify the internal state of {@code this}, as long as it does
   * so in a way that preserves Object equality.
   *
   * For efficiency, we should only resolve a type once per compilation job.
   * For incremental compilations, one compilation job may need the
   * artifacts from a previous generation, so we will eventually need
   * a generational flag instead of a boolean one.
   */
  public final JSType resolve(ErrorReporter t, StaticScope<JSType> scope) {
    int PROBE_START_LINE_1420 = 1427;
	boolean f_resolved_4860_line_1420 = resolved;
	int PROBE_END_LINE_1420 = 1427;
	if (f_resolved_4860_line_1420) {
      int PROBE_START_LINE_1423 = 1425;
		com.google.javascript.rhino.jstype.JSType f_resolve_result_4861_line_1423 = resolveResult;
		boolean jstype_1_expr112_line_1423 = f_resolve_result_4861_line_1423 == null;
		int PROBE_END_LINE_1423 = 1425;
	// TODO(nicksantos): Check to see if resolve() looped back on itself.
      // Preconditions.checkNotNull(resolveResult);
      if (jstype_1_expr112_line_1423) {
        return registry.getNativeType(JSTypeNative.UNKNOWN_TYPE);
      }
      int PROBE_START_LINE_1426 = 1426;
	com.google.javascript.rhino.jstype.JSType f_resolve_result_4861_line_1426 = resolveResult;
	int PROBE_END_LINE_1426 = 1426;
	return f_resolve_result_4861_line_1426;
    }
    resolved = true;
    int PROBE_START_LINE_1429 = 1429;
	com.google.javascript.rhino.ErrorReporter p_t_4925_line_1429 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_4926_line_1429 = scope;
	com.google.javascript.rhino.jstype.JSType jstype_1_expr115_line_1429 = resolveInternal(p_t_4925_line_1429,
			p_scope_4926_line_1429);
	int PROBE_END_LINE_1429 = 1429;
	resolveResult = jstype_1_expr115_line_1429;
    int PROBE_START_LINE_1430 = 1430;
	com.google.javascript.rhino.jstype.JSType f_resolve_result_4861_line_1430 = resolveResult;
	com.google.javascript.rhino.jstype.JSType f_resolve_result_4861_line_1430_v1 = resolveResult;
	int PROBE_END_LINE_1430 = 1430;
	f_resolve_result_4861_line_1430.setResolvedTypeInternal(f_resolve_result_4861_line_1430_v1);
    int PROBE_START_LINE_1431 = 1431;
	com.google.javascript.rhino.jstype.JSType f_resolve_result_4861_line_1431 = resolveResult;
	int PROBE_END_LINE_1431 = 1431;
	return f_resolve_result_4861_line_1431;
  }

  /**
   * @see #resolve
   */
  abstract JSType resolveInternal(ErrorReporter t, StaticScope<JSType> scope);

  void setResolvedTypeInternal(JSType type) {
    int PROBE_START_LINE_1440 = 1440;
	com.google.javascript.rhino.jstype.JSType p_type_4929_line_1440 = type;
	int PROBE_END_LINE_1440 = 1440;
	resolveResult = p_type_4929_line_1440;
    resolved = true;
  }

  /** Whether the type has been resolved. */
  public final boolean isResolved() {
    int PROBE_START_LINE_1446 = 1446;
	boolean f_resolved_4860_line_1446 = resolved;
	int PROBE_END_LINE_1446 = 1446;
	return f_resolved_4860_line_1446;
  }

  /** Clears the resolved field. */
  public final void clearResolved() {
    resolved = false;
    resolveResult = null;
  }

  /**
   * A null-safe resolve.
   * @see #resolve
   */
  static final JSType safeResolve(
      JSType type, ErrorReporter t, StaticScope<JSType> scope) {
    int PROBE_START_LINE_1461 = 1461;
		com.google.javascript.rhino.jstype.JSType p_type_4930_line_1461 = type;
		boolean jstype_1_expr120_line_1461 = p_type_4930_line_1461 == null;
		com.google.javascript.rhino.jstype.JSType jstype_1_expr121_line_1461 = null;
		if (!jstype_1_expr120_line_1461) {
			com.google.javascript.rhino.jstype.JSType p_type_4930_line_1461_v1 = type;
			com.google.javascript.rhino.ErrorReporter p_t_4931_line_1461 = t;
			StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_4932_line_1461 = scope;
			jstype_1_expr121_line_1461 = p_type_4930_line_1461_v1.resolve(p_t_4931_line_1461, p_scope_4932_line_1461);
		}
		com.google.javascript.rhino.jstype.JSType jstype_1_expr119_line_1461 = jstype_1_expr120_line_1461
				? null
				: jstype_1_expr121_line_1461;
		int PROBE_END_LINE_1461 = 1461;
	return jstype_1_expr119_line_1461;
  }

  /**
   * Certain types have constraints on them at resolution-time.
   * For example, a type in an {@code @extends} annotation must be an
   * object. Clients should inject a validator that emits a warning
   * if the type does not validate, and return false.
   */
  public boolean setValidator(Predicate<JSType> validator) {
    return validator.apply(this);
  }

  public static class TypePair {
    public final JSType typeA;
    public final JSType typeB;

    public TypePair(JSType typeA, JSType typeB) {
      this.typeA = typeA;
      this.typeB = typeB;
    }
  }

  /**
   * A string representation of this type, suitable for printing
   * in warnings.
   */
  @Override
  public String toString() {
    int PROBE_START_LINE_1490 = 1490;
	String jstype_1_expr122_line_1490 = toStringHelper(false);
	int PROBE_END_LINE_1490 = 1490;
	return jstype_1_expr122_line_1490;
  }

  /**
   * A hash code function for diagnosing complicated issues
   * around type-identity.
   */
  public String toDebugHashCodeString() {
    return "{" + hashCode() + "}";
  }

  /**
   * A string representation of this type, suitable for printing
   * in type annotations at code generation time.
   */
  public final String toAnnotationString() {
    return toStringHelper(true);
  }

  /**
   * @param forAnnotations Whether this is for use in code generator
   *     annotations. Otherwise, it's for warnings.
   */
  abstract String toStringHelper(boolean forAnnotations);

  /**
   * Modify this type so that it matches the specified type.
   *
   * This is useful for reverse type-inference, where we want to
   * infer that an object literal matches its constraint (much like
   * how the java compiler does reverse-inference to figure out generics).
   */
  public void matchConstraint(JSType constraint) {}
}
