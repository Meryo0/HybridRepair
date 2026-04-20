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
  protected TemplateTypeMap templateTypeMap;

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
    this(registry, null);
  }

  JSType(JSTypeRegistry registry, TemplateTypeMap templateTypeMap) {
    int PROBE_START_LINE_113 = 113;
	com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_5531_line_113 = registry;
	int PROBE_END_LINE_113 = 113;
	this.registry = p_registry_5531_line_113;

    int PROBE_START_LINE_115 = 116;
	com.google.javascript.rhino.jstype.TemplateTypeMap p_template_type_map_5532_line_115 = templateTypeMap;
	boolean jstype_1_expr11_line_115 = p_template_type_map_5532_line_115 == null;
	com.google.javascript.rhino.jstype.TemplateTypeMap jstype_1_expr9_line_115 = jstype_1_expr11_line_115
			? registry.createTemplateTypeMap(null, null)
			: templateTypeMap;
	int PROBE_END_LINE_115 = 116;
	this.templateTypeMap = jstype_1_expr9_line_115;
  }

  /**
   * Utility method for less verbose code.
   */
  JSType getNativeType(JSTypeNative typeId) {
    int PROBE_START_LINE_123 = 123;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_5441_line_123 = registry;
	com.google.javascript.rhino.jstype.JSTypeNative p_type_id_5534_line_123 = typeId;
	com.google.javascript.rhino.jstype.JSType jstype_1_expr13_line_123 = f_registry_5441_line_123
			.getNativeType(p_type_id_5534_line_123);
	int PROBE_END_LINE_123 = 123;
	return jstype_1_expr13_line_123;
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

  /**
   * Checks whether the property is present on the object.
   * @param pname The property name.
   */
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
    int PROBE_START_LINE_177 = 179;
	boolean jstype_1_expr15_line_177 = isNoType();
	boolean jstype_1_expr16_line_177 = false;
	boolean jstype_1_expr17_line_177 = false;
	if (!jstype_1_expr15_line_177) {
		jstype_1_expr16_line_177 = isNoObjectType();
		if (!jstype_1_expr16_line_177) {
			jstype_1_expr17_line_177 = isNoResolvedType();
		}
	}
	boolean jstype_1_expr14_line_177 = jstype_1_expr15_line_177 || jstype_1_expr16_line_177 || jstype_1_expr17_line_177
			|| (registry.getNativeFunctionType(JSTypeNative.LEAST_FUNCTION_TYPE) == this);
	int PROBE_END_LINE_177 = 179;
	return jstype_1_expr14_line_177;
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
    int PROBE_START_LINE_266 = 266;
	com.google.javascript.rhino.jstype.UnionType jstype_1_expr19_line_266 = toMaybeUnionType();
	boolean jstype_1_expr18_line_266 = jstype_1_expr19_line_266 != null;
	int PROBE_END_LINE_266 = 266;
	return jstype_1_expr18_line_266;
  }

  /**
   * Returns true iff {@code this} can be a {@code struct}.
   * UnionType overrides the method, assume {@code this} is not a union here.
   */
  public boolean isStruct() {
    int PROBE_START_LINE_274 = 290;
	boolean jstype_1_expr20_line_274 = isObject();
	int PROBE_END_LINE_274 = 290;
	if (jstype_1_expr20_line_274) {
      int PROBE_START_LINE_275 = 275;
		ObjectType jstype_1_expr21_line_275 = toObjectType();
		int PROBE_END_LINE_275 = 275;
	ObjectType objType = jstype_1_expr21_line_275;
      int PROBE_START_LINE_276 = 276;
	com.google.javascript.rhino.jstype.ObjectType v_obj_type_5536_line_276 = objType;
	ObjectType jstype_1_expr22_line_276 = v_obj_type_5536_line_276.getImplicitPrototype();
	int PROBE_END_LINE_276 = 276;
	ObjectType iproto = jstype_1_expr22_line_276;
      int PROBE_START_LINE_279 = 281;
	com.google.javascript.rhino.jstype.ObjectType v_iproto_5537_line_279 = iproto;
	boolean jstype_1_expr24_line_279 = v_iproto_5537_line_279 != null;
	boolean jstype_1_expr25_line_279 = true;
	if (jstype_1_expr24_line_279) {
		com.google.javascript.rhino.jstype.ObjectType v_iproto_5537_line_279_v1 = iproto;
		jstype_1_expr25_line_279 = v_iproto_5537_line_279_v1.isStruct();
	}
	boolean jstype_1_expr23_line_279 = jstype_1_expr24_line_279 && jstype_1_expr25_line_279;
	int PROBE_END_LINE_279 = 281;
	// For the case when a @struct constructor is assigned to a function's
      // prototype property
      if (jstype_1_expr23_line_279) {
        return true;
      }
      int PROBE_START_LINE_282 = 282;
	com.google.javascript.rhino.jstype.ObjectType v_obj_type_5536_line_282 = objType;
	FunctionType jstype_1_expr26_line_282 = v_obj_type_5536_line_282.getConstructor();
	int PROBE_END_LINE_282 = 282;
	FunctionType ctor = jstype_1_expr26_line_282;
      int PROBE_START_LINE_284 = 289;
	com.google.javascript.rhino.jstype.FunctionType v_ctor_5538_line_284 = ctor;
	boolean jstype_1_expr27_line_284 = v_ctor_5538_line_284 == null;
	int PROBE_END_LINE_284 = 289;
	// This test is true for object literals
      if (jstype_1_expr27_line_284) {
        int PROBE_START_LINE_285 = 285;
		com.google.javascript.rhino.jstype.ObjectType v_obj_type_5536_line_285 = objType;
		JSDocInfo jstype_1_expr28_line_285 = v_obj_type_5536_line_285.getJSDocInfo();
		int PROBE_END_LINE_285 = 285;
		JSDocInfo info = jstype_1_expr28_line_285;
        int PROBE_START_LINE_286 = 286;
		com.google.javascript.rhino.JSDocInfo v_info_5539_line_286 = info;
		boolean jstype_1_expr30_line_286 = v_info_5539_line_286 != null;
		boolean jstype_1_expr31_line_286 = true;
		if (jstype_1_expr30_line_286) {
			com.google.javascript.rhino.JSDocInfo v_info_5539_line_286_v1 = info;
			jstype_1_expr31_line_286 = v_info_5539_line_286_v1.makesStructs();
		}
		boolean jstype_1_expr29_line_286 = jstype_1_expr30_line_286 && jstype_1_expr31_line_286;
		int PROBE_END_LINE_286 = 286;
		return jstype_1_expr29_line_286;
      } else {
        int PROBE_START_LINE_288 = 288;
		com.google.javascript.rhino.jstype.FunctionType v_ctor_5538_line_288 = ctor;
		boolean jstype_1_expr32_line_288 = v_ctor_5538_line_288.makesStructs();
		int PROBE_END_LINE_288 = 288;
		return jstype_1_expr32_line_288;
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
    int PROBE_START_LINE_335 = 335;
	com.google.javascript.rhino.jstype.FunctionType jstype_1_expr34_line_335 = toMaybeFunctionType();
	boolean jstype_1_expr33_line_335 = jstype_1_expr34_line_335 != null;
	int PROBE_END_LINE_335 = 335;
	return jstype_1_expr33_line_335;
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
    int PROBE_START_LINE_358 = 358;
	com.google.javascript.rhino.jstype.JSType p_type_5540_line_358 = type;
	boolean jstype_1_expr36_line_358 = p_type_5540_line_358 == null;
	com.google.javascript.rhino.jstype.FunctionType jstype_1_expr37_line_358 = null;
	if (!jstype_1_expr36_line_358) {
		com.google.javascript.rhino.jstype.JSType p_type_5540_line_358_v1 = type;
		jstype_1_expr37_line_358 = p_type_5540_line_358_v1.toMaybeFunctionType();
	}
	com.google.javascript.rhino.jstype.FunctionType jstype_1_expr35_line_358 = jstype_1_expr36_line_358
			? null
			: jstype_1_expr37_line_358;
	int PROBE_END_LINE_358 = 358;
	return jstype_1_expr35_line_358;
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
    int PROBE_START_LINE_373 = 373;
	com.google.javascript.rhino.jstype.EnumType jstype_1_expr39_line_373 = toMaybeEnumType();
	boolean jstype_1_expr38_line_373 = jstype_1_expr39_line_373 != null;
	int PROBE_END_LINE_373 = 373;
	return jstype_1_expr38_line_373;
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
    int PROBE_START_LINE_388 = 388;
	com.google.javascript.rhino.jstype.RecordType jstype_1_expr41_line_388 = toMaybeRecordType();
	boolean jstype_1_expr40_line_388 = jstype_1_expr41_line_388 != null;
	int PROBE_END_LINE_388 = 388;
	return jstype_1_expr40_line_388;
  }

  /**
   * Downcasts this to a RecordType, or returns null if this is not
   * a RecordType.
   */
  RecordType toMaybeRecordType() {
    return null;
  }

  public final boolean isTemplatizedType() {
    int PROBE_START_LINE_400 = 400;
	com.google.javascript.rhino.jstype.TemplatizedType jstype_1_expr43_line_400 = toMaybeTemplatizedType();
	boolean jstype_1_expr42_line_400 = jstype_1_expr43_line_400 != null;
	int PROBE_END_LINE_400 = 400;
	return jstype_1_expr42_line_400;
  }

  /**
   * Downcasts this to a TemplatizedType, or returns null if this is not
   * a function.
   */
  public TemplatizedType toMaybeTemplatizedType() {
    return null;
  }

  /**
   * Null-safe version of toMaybeTemplatizedType().
   */
  public static TemplatizedType toMaybeTemplatizedType(JSType type) {
    return type == null ? null : type.toMaybeTemplatizedType();
  }

  public final boolean isTemplateType() {
    return toMaybeTemplateType() != null;
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
    int PROBE_START_LINE_438 = 446;
	boolean f_in_templated_check_visit_5525_line_438 = this.inTemplatedCheckVisit;
	boolean jstype_1_expr44_line_438 = !f_in_templated_check_visit_5525_line_438;
	int PROBE_END_LINE_438 = 446;
	if (jstype_1_expr44_line_438) {
      this.inTemplatedCheckVisit = true;
      int PROBE_START_LINE_440 = 440;
	boolean jstype_1_expr50_line_440 = hasAnyTemplateTypesInternal();
	int PROBE_END_LINE_440 = 440;
	boolean result = jstype_1_expr50_line_440;
      this.inTemplatedCheckVisit = false;
      int PROBE_START_LINE_442 = 442;
	boolean v_result_5543_line_442 = result;
	int PROBE_END_LINE_442 = 442;
	return v_result_5543_line_442;
    } else {
      // prevent infinite recursion, this is "not yet".
      return false;
    }
  }

  boolean hasAnyTemplateTypesInternal() {
    int PROBE_START_LINE_450 = 450;
	com.google.javascript.rhino.jstype.TemplateTypeMap f_template_type_map_5533_line_450 = templateTypeMap;
	boolean jstype_1_expr54_line_450 = f_template_type_map_5533_line_450.hasAnyTemplateTypesInternal();
	int PROBE_END_LINE_450 = 450;
	return jstype_1_expr54_line_450;
  }

  /**
   * Returns the template type map associated with this type.
   */
  public TemplateTypeMap getTemplateTypeMap() {
    int PROBE_START_LINE_457 = 457;
	com.google.javascript.rhino.jstype.TemplateTypeMap f_template_type_map_5533_line_457 = templateTypeMap;
	int PROBE_END_LINE_457 = 457;
	return f_template_type_map_5533_line_457;
  }

  /**
   * Extends the template type map associated with this type, merging in the
   * keys and values of the specified map.
   */
  public void extendTemplateTypeMap(TemplateTypeMap otherMap) {
    int PROBE_START_LINE_465 = 465;
	com.google.javascript.rhino.jstype.TemplateTypeMap f_template_type_map_5533_line_465 = templateTypeMap;
	com.google.javascript.rhino.jstype.TemplateTypeMap p_other_map_5544_line_465 = otherMap;
	com.google.javascript.rhino.jstype.TemplateTypeMap jstype_1_expr56_line_465 = f_template_type_map_5533_line_465
			.extend(p_other_map_5544_line_465);
	int PROBE_END_LINE_465 = 465;
	templateTypeMap = jstype_1_expr56_line_465;
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
    int PROBE_START_LINE_544 = 544;
	com.google.javascript.rhino.jstype.JSType p_that_5545_line_544 = that;
	com.google.javascript.rhino.jstype.EquivalenceMethod q_identity_199_line_544 = EquivalenceMethod.IDENTITY;
	boolean jstype_1_expr57_line_544 = checkEquivalenceHelper(p_that_5545_line_544, q_identity_199_line_544);
	int PROBE_END_LINE_544 = 544;
	return jstype_1_expr57_line_544;
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
   * @see <a href="http://www.youtube.com/watch?v=_RpSv3HjpEw">Unknown unknowns</a>
   */
  public final boolean differsFrom(JSType that) {
    return !checkEquivalenceHelper(that, EquivalenceMethod.DATA_FLOW);
  }

  /**
   * An equivalence visitor.
   */
  boolean checkEquivalenceHelper(JSType that, EquivalenceMethod eqMethod) {
    int PROBE_START_LINE_572 = 574;
	com.google.javascript.rhino.jstype.JSType p_that_5548_line_572 = that;
	boolean jstype_1_expr58_line_572 = this == p_that_5548_line_572;
	int PROBE_END_LINE_572 = 574;
	if (jstype_1_expr58_line_572) {
      return true;
    }

    int PROBE_START_LINE_576 = 576;
	boolean jstype_1_expr60_line_576 = isUnknownType();
	int PROBE_END_LINE_576 = 576;
	boolean thisUnknown = jstype_1_expr60_line_576;
    int PROBE_START_LINE_577 = 577;
	com.google.javascript.rhino.jstype.JSType p_that_5548_line_577 = that;
	boolean jstype_1_expr61_line_577 = p_that_5548_line_577.isUnknownType();
	int PROBE_END_LINE_577 = 577;
	boolean thatUnknown = jstype_1_expr61_line_577;
    int PROBE_START_LINE_578 = 594;
	boolean v_this_unknown_5550_line_578 = thisUnknown;
	boolean v_that_unknown_5551_line_578 = false;
	if (!v_this_unknown_5550_line_578) {
		v_that_unknown_5551_line_578 = thatUnknown;
	}
	boolean jstype_1_expr62_line_578 = v_this_unknown_5550_line_578 || v_that_unknown_5551_line_578;
	int PROBE_END_LINE_578 = 594;
	if (jstype_1_expr62_line_578) {
      int PROBE_START_LINE_579 = 593;
		com.google.javascript.rhino.jstype.EquivalenceMethod p_eq_method_5549_line_579 = eqMethod;
		com.google.javascript.rhino.jstype.EquivalenceMethod q_invariant_200_line_579 = EquivalenceMethod.INVARIANT;
		boolean jstype_1_expr63_line_579 = p_eq_method_5549_line_579 == q_invariant_200_line_579;
		int PROBE_END_LINE_579 = 593;
	if (jstype_1_expr63_line_579) {
        // If we're checking for invariance, the unknown type is invariant
        // with everyone.
        return true;
      } else {
		int PROBE_START_LINE_583 = 593;
		com.google.javascript.rhino.jstype.EquivalenceMethod p_eq_method_5549_line_583 = eqMethod;
		com.google.javascript.rhino.jstype.EquivalenceMethod q_data_flow_201_line_583 = EquivalenceMethod.DATA_FLOW;
		boolean jstype_1_expr64_line_583 = p_eq_method_5549_line_583 == q_data_flow_201_line_583;
		int PROBE_END_LINE_583 = 593;
		if (jstype_1_expr64_line_583) {
			return thisUnknown && thatUnknown;
		} else {
			int PROBE_START_LINE_587 = 593;
			boolean v_this_unknown_5550_line_587 = thisUnknown;
			boolean v_that_unknown_5551_line_587 = true;
			if (v_this_unknown_5550_line_587) {
				v_that_unknown_5551_line_587 = thatUnknown;
			}
			boolean jstype_1_expr65_line_587 = v_this_unknown_5550_line_587 && v_that_unknown_5551_line_587
					&& (isNominalType() ^ that.isNominalType());
			int PROBE_END_LINE_587 = 593;
			if (jstype_1_expr65_line_587) {
				return false;
			}
		}
	}
    }

    int PROBE_START_LINE_596 = 599;
	boolean jstype_1_expr67_line_596 = isUnionType();
	boolean jstype_1_expr68_line_596 = true;
	if (jstype_1_expr67_line_596) {
		com.google.javascript.rhino.jstype.JSType p_that_5548_line_596 = that;
		jstype_1_expr68_line_596 = p_that_5548_line_596.isUnionType();
	}
	boolean jstype_1_expr66_line_596 = jstype_1_expr67_line_596 && jstype_1_expr68_line_596;
	int PROBE_END_LINE_596 = 599;
	if (jstype_1_expr66_line_596) {
      return toMaybeUnionType().checkUnionEquivalenceHelper(
          that.toMaybeUnionType(), eqMethod);
    }

    int PROBE_START_LINE_601 = 604;
	boolean jstype_1_expr70_line_601 = isFunctionType();
	boolean jstype_1_expr71_line_601 = true;
	if (jstype_1_expr70_line_601) {
		com.google.javascript.rhino.jstype.JSType p_that_5548_line_601 = that;
		jstype_1_expr71_line_601 = p_that_5548_line_601.isFunctionType();
	}
	boolean jstype_1_expr69_line_601 = jstype_1_expr70_line_601 && jstype_1_expr71_line_601;
	int PROBE_END_LINE_601 = 604;
	if (jstype_1_expr69_line_601) {
      int PROBE_START_LINE_602 = 603;
		com.google.javascript.rhino.jstype.FunctionType jstype_1_expr74_line_602 = toMaybeFunctionType();
		boolean jstype_1_expr72_line_602 = jstype_1_expr74_line_602
				.checkFunctionEquivalenceHelper(that.toMaybeFunctionType(), eqMethod);
		int PROBE_END_LINE_602 = 603;
	return jstype_1_expr72_line_602;
    }

    int PROBE_START_LINE_606 = 609;
	boolean jstype_1_expr76_line_606 = isRecordType();
	boolean jstype_1_expr77_line_606 = true;
	if (jstype_1_expr76_line_606) {
		com.google.javascript.rhino.jstype.JSType p_that_5548_line_606 = that;
		jstype_1_expr77_line_606 = p_that_5548_line_606.isRecordType();
	}
	boolean jstype_1_expr75_line_606 = jstype_1_expr76_line_606 && jstype_1_expr77_line_606;
	int PROBE_END_LINE_606 = 609;
	if (jstype_1_expr75_line_606) {
      return toMaybeRecordType().checkRecordEquivalenceHelper(
          that.toMaybeRecordType(), eqMethod);
    }

    int PROBE_START_LINE_611 = 614;
	com.google.javascript.rhino.jstype.TemplateTypeMap jstype_1_expr81_line_611 = getTemplateTypeMap();
	boolean jstype_1_expr79_line_611 = jstype_1_expr81_line_611.checkEquivalenceHelper(that.getTemplateTypeMap(),
			eqMethod);
	boolean jstype_1_expr78_line_611 = !jstype_1_expr79_line_611;
	int PROBE_END_LINE_611 = 614;
	if (jstype_1_expr78_line_611) {
      return false;
    }

    int PROBE_START_LINE_616 = 619;
	boolean jstype_1_expr83_line_616 = isNominalType();
	boolean jstype_1_expr84_line_616 = true;
	if (jstype_1_expr83_line_616) {
		com.google.javascript.rhino.jstype.JSType p_that_5548_line_616 = that;
		jstype_1_expr84_line_616 = p_that_5548_line_616.isNominalType();
	}
	boolean jstype_1_expr82_line_616 = jstype_1_expr83_line_616 && jstype_1_expr84_line_616;
	int PROBE_END_LINE_616 = 619;
	if (jstype_1_expr82_line_616) {
      return toObjectType().getReferenceName().equals(
          that.toObjectType().getReferenceName());
    }

    int PROBE_START_LINE_622 = 626;
	boolean jstype_1_expr85_line_622 = this instanceof ProxyObjectType;
	int PROBE_END_LINE_622 = 626;
	// Unbox other proxies.
    if (jstype_1_expr85_line_622) {
      return ((ProxyObjectType) this)
          .getReferencedTypeInternal().checkEquivalenceHelper(
              that, eqMethod);
    }

    int PROBE_START_LINE_628 = 632;
	com.google.javascript.rhino.jstype.JSType p_that_5548_line_628 = that;
	boolean jstype_1_expr87_line_628 = p_that_5548_line_628 instanceof ProxyObjectType;
	int PROBE_END_LINE_628 = 632;
	if (jstype_1_expr87_line_628) {
      return checkEquivalenceHelper(
          ((ProxyObjectType) that).getReferencedTypeInternal(),
          eqMethod);
    }

    int PROBE_START_LINE_638 = 638;
	com.google.javascript.rhino.jstype.JSType p_that_5548_line_638 = that;
	boolean jstype_1_expr88_line_638 = this == p_that_5548_line_638;
	int PROBE_END_LINE_638 = 638;
	// Relies on the fact that for the base {@link JSType}, only one
    // instance of each sub-type will ever be created in a given registry, so
    // there is no need to verify members. If the object pointers are not
    // identical, then the type member must be different.
    return jstype_1_expr88_line_638;
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
    int PROBE_START_LINE_654 = 654;
	int jstype_1_expr90_line_654 = System.identityHashCode(this);
	int PROBE_END_LINE_654 = 654;
	return jstype_1_expr90_line_654;
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
    int PROBE_START_LINE_773 = 773;
	boolean jstype_1_expr93_line_773 = this instanceof ObjectType;
	com.google.javascript.rhino.jstype.ObjectType jstype_1_expr92_line_773 = jstype_1_expr93_line_773
			? (ObjectType) this
			: null;
	int PROBE_END_LINE_773 = 773;
	return jstype_1_expr92_line_773;
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
    } else if (thisType.isTemplatizedType()) {
      return thisType.toMaybeTemplatizedType().getGreatestSubtypeHelper(
          thatType);
    }  else if (thatType.isTemplatizedType()) {
      return thatType.toMaybeTemplatizedType().getGreatestSubtypeHelper(
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
    int PROBE_START_LINE_1230 = 1230;
	com.google.javascript.rhino.jstype.JSType p_that_5574_line_1230 = that;
	boolean jstype_1_expr98_line_1230 = isSubtypeHelper(this, p_that_5574_line_1230);
	int PROBE_END_LINE_1230 = 1230;
	return jstype_1_expr98_line_1230;
  }

  /**
   * A generic implementation meant to be used as a helper for common subtyping
   * cases.
   */
  static boolean isSubtypeHelper(JSType thisType, JSType thatType) {
    int PROBE_START_LINE_1239 = 1241;
	com.google.javascript.rhino.jstype.JSType p_that_type_5576_line_1239 = thatType;
	boolean jstype_1_expr100_line_1239 = p_that_type_5576_line_1239.isUnknownType();
	int PROBE_END_LINE_1239 = 1241;
	// unknown
    if (jstype_1_expr100_line_1239) {
      return true;
    }
    int PROBE_START_LINE_1243 = 1245;
	com.google.javascript.rhino.jstype.JSType p_that_type_5576_line_1243 = thatType;
	boolean jstype_1_expr101_line_1243 = p_that_type_5576_line_1243.isAllType();
	int PROBE_END_LINE_1243 = 1245;
	// all type
    if (jstype_1_expr101_line_1243) {
      return true;
    }
    int PROBE_START_LINE_1247 = 1249;
	com.google.javascript.rhino.jstype.JSType p_this_type_5575_line_1247 = thisType;
	com.google.javascript.rhino.jstype.JSType p_that_type_5576_line_1247 = thatType;
	boolean jstype_1_expr102_line_1247 = p_this_type_5575_line_1247.isEquivalentTo(p_that_type_5576_line_1247);
	int PROBE_END_LINE_1247 = 1249;
	// equality
    if (jstype_1_expr102_line_1247) {
      return true;
    }
    int PROBE_START_LINE_1251 = 1259;
	com.google.javascript.rhino.jstype.JSType p_that_type_5576_line_1251 = thatType;
	boolean jstype_1_expr103_line_1251 = p_that_type_5576_line_1251.isUnionType();
	int PROBE_END_LINE_1251 = 1259;
	// unions
    if (jstype_1_expr103_line_1251) {
      UnionType union = thatType.toMaybeUnionType();
      for (JSType element : union.alternates) {
        if (thisType.isSubtype(element)) {
          return true;
        }
      }
      return false;
    }

    int PROBE_START_LINE_1263 = 1263;
	com.google.javascript.rhino.jstype.JSType p_this_type_5575_line_1263 = thisType;
	TemplateTypeMap jstype_1_expr104_line_1263 = p_this_type_5575_line_1263.getTemplateTypeMap();
	int PROBE_END_LINE_1263 = 1263;
	// TemplateTypeMaps. This check only returns false if the TemplateTypeMaps
    // are not equivalent.
    TemplateTypeMap thisTypeParams = jstype_1_expr104_line_1263;
    int PROBE_START_LINE_1264 = 1264;
	com.google.javascript.rhino.jstype.JSType p_that_type_5576_line_1264 = thatType;
	TemplateTypeMap jstype_1_expr105_line_1264 = p_that_type_5576_line_1264.getTemplateTypeMap();
	int PROBE_END_LINE_1264 = 1264;
	TemplateTypeMap thatTypeParams = jstype_1_expr105_line_1264;
    boolean templateMatch = true;
    int PROBE_START_LINE_1266 = 1279;
	com.google.javascript.rhino.jstype.JSType p_that_type_5576_line_1266 = thatType;
	boolean jstype_1_expr106_line_1266 = isExemptFromTemplateTypeInvariance(p_that_type_5576_line_1266);
	int PROBE_END_LINE_1266 = 1279;
	if (jstype_1_expr106_line_1266) {
      int PROBE_START_LINE_1270 = 1270;
		com.google.javascript.rhino.jstype.JSType p_this_type_5575_line_1270 = thisType;
		com.google.javascript.rhino.jstype.JSTypeRegistry q_registry_202_line_1270 = p_this_type_5575_line_1270.registry;
		TemplateType jstype_1_expr107_line_1270 = q_registry_202_line_1270.getObjectElementKey();
		int PROBE_END_LINE_1270 = 1270;
	// Array and Object are exempt from template type invariance; their
      // template types maps are considered a match only if the ObjectElementKey
      // values are subtypes/supertypes of one another.
      TemplateType key = jstype_1_expr107_line_1270;
      int PROBE_START_LINE_1271 = 1271;
	com.google.javascript.rhino.jstype.TemplateTypeMap v_this_type_params_5577_line_1271 = thisTypeParams;
	com.google.javascript.rhino.jstype.TemplateType v_key_5580_line_1271 = key;
	JSType jstype_1_expr108_line_1271 = v_this_type_params_5577_line_1271.getTemplateType(v_key_5580_line_1271);
	int PROBE_END_LINE_1271 = 1271;
	JSType thisElement = jstype_1_expr108_line_1271;
      int PROBE_START_LINE_1272 = 1272;
	com.google.javascript.rhino.jstype.TemplateTypeMap v_that_type_params_5578_line_1272 = thatTypeParams;
	com.google.javascript.rhino.jstype.TemplateType v_key_5580_line_1272 = key;
	JSType jstype_1_expr109_line_1272 = v_that_type_params_5578_line_1272.getTemplateType(v_key_5580_line_1272);
	int PROBE_END_LINE_1272 = 1272;
	JSType thatElement = jstype_1_expr109_line_1272;

      int PROBE_START_LINE_1274 = 1275;
	com.google.javascript.rhino.jstype.JSType v_this_element_5581_line_1274 = thisElement;
	com.google.javascript.rhino.jstype.JSType v_that_element_5582_line_1274 = thatElement;
	boolean jstype_1_expr112_line_1274 = v_this_element_5581_line_1274.isSubtype(v_that_element_5582_line_1274);
	boolean jstype_1_expr111_line_1274 = jstype_1_expr112_line_1274 || thatElement.isSubtype(thisElement);
	int PROBE_END_LINE_1274 = 1275;
	templateMatch = jstype_1_expr111_line_1274;
    } else {
      int PROBE_START_LINE_1277 = 1278;
		com.google.javascript.rhino.jstype.TemplateTypeMap v_this_type_params_5577_line_1277 = thisTypeParams;
		boolean jstype_1_expr114_line_1277 = v_this_type_params_5577_line_1277.checkEquivalenceHelper(thatTypeParams,
				EquivalenceMethod.INVARIANT);
		int PROBE_END_LINE_1277 = 1278;
	templateMatch = jstype_1_expr114_line_1277;
    }
    int PROBE_START_LINE_1280 = 1282;
	boolean v_template_match_5579_line_1280 = templateMatch;
	boolean jstype_1_expr115_line_1280 = !v_template_match_5579_line_1280;
	int PROBE_END_LINE_1280 = 1282;
	if (jstype_1_expr115_line_1280) {
      return false;
    }

    int PROBE_START_LINE_1286 = 1289;
	com.google.javascript.rhino.jstype.JSType p_this_type_5575_line_1286 = thisType;
	boolean jstype_1_expr116_line_1286 = p_this_type_5575_line_1286.isTemplatizedType();
	int PROBE_END_LINE_1286 = 1289;
	// Templatized types. The above check guarantees TemplateTypeMap
    // equivalence; check if the base type is a subtype.
    if (jstype_1_expr116_line_1286) {
      return thisType.toMaybeTemplatizedType().getReferencedType().isSubtype(
              thatType);
    }

    int PROBE_START_LINE_1292 = 1295;
	com.google.javascript.rhino.jstype.JSType p_that_type_5576_line_1292 = thatType;
	boolean jstype_1_expr117_line_1292 = p_that_type_5576_line_1292 instanceof ProxyObjectType;
	int PROBE_END_LINE_1292 = 1295;
	// proxy types
    if (jstype_1_expr117_line_1292) {
      return thisType.isSubtype(
          ((ProxyObjectType) thatType).getReferencedTypeInternal());
    }
    return false;
  }

  /**
   * Determines if the specified type is exempt from standard invariant
   * templatized typing rules.
   */
  static boolean isExemptFromTemplateTypeInvariance(JSType type) {
    int PROBE_START_LINE_1304 = 1304;
	com.google.javascript.rhino.jstype.JSType p_type_5583_line_1304 = type;
	ObjectType jstype_1_expr118_line_1304 = p_type_5583_line_1304.toObjectType();
	int PROBE_END_LINE_1304 = 1304;
	ObjectType objType = jstype_1_expr118_line_1304;
    int PROBE_START_LINE_1305 = 1307;
	com.google.javascript.rhino.jstype.ObjectType v_obj_type_5584_line_1305 = objType;
	boolean jstype_1_expr121_line_1305 = v_obj_type_5584_line_1305 == null;
	boolean jstype_1_expr120_line_1305 = jstype_1_expr121_line_1305 || "Array".equals(objType.getReferenceName());
	boolean jstype_1_expr119_line_1305 = jstype_1_expr120_line_1305 || "Object".equals(objType.getReferenceName());
	int PROBE_END_LINE_1305 = 1307;
	return jstype_1_expr119_line_1305;
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
    int PROBE_START_LINE_1352 = 1359;
	boolean f_resolved_5523_line_1352 = resolved;
	int PROBE_END_LINE_1352 = 1359;
	if (f_resolved_5523_line_1352) {
      int PROBE_START_LINE_1355 = 1357;
		com.google.javascript.rhino.jstype.JSType f_resolve_result_5524_line_1355 = resolveResult;
		boolean jstype_1_expr122_line_1355 = f_resolve_result_5524_line_1355 == null;
		int PROBE_END_LINE_1355 = 1357;
	// TODO(nicksantos): Check to see if resolve() looped back on itself.
      // Preconditions.checkNotNull(resolveResult);
      if (jstype_1_expr122_line_1355) {
        return registry.getNativeType(JSTypeNative.UNKNOWN_TYPE);
      }
      int PROBE_START_LINE_1358 = 1358;
	com.google.javascript.rhino.jstype.JSType f_resolve_result_5524_line_1358 = resolveResult;
	int PROBE_END_LINE_1358 = 1358;
	return f_resolve_result_5524_line_1358;
    }
    resolved = true;
    int PROBE_START_LINE_1361 = 1361;
	com.google.javascript.rhino.ErrorReporter p_t_5590_line_1361 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5591_line_1361 = scope;
	com.google.javascript.rhino.jstype.JSType jstype_1_expr125_line_1361 = resolveInternal(p_t_5590_line_1361,
			p_scope_5591_line_1361);
	int PROBE_END_LINE_1361 = 1361;
	resolveResult = jstype_1_expr125_line_1361;
    int PROBE_START_LINE_1362 = 1362;
	com.google.javascript.rhino.jstype.JSType f_resolve_result_5524_line_1362 = resolveResult;
	com.google.javascript.rhino.jstype.JSType f_resolve_result_5524_line_1362_v1 = resolveResult;
	int PROBE_END_LINE_1362 = 1362;
	f_resolve_result_5524_line_1362.setResolvedTypeInternal(f_resolve_result_5524_line_1362_v1);
    int PROBE_START_LINE_1363 = 1363;
	com.google.javascript.rhino.jstype.JSType f_resolve_result_5524_line_1363 = resolveResult;
	int PROBE_END_LINE_1363 = 1363;
	return f_resolve_result_5524_line_1363;
  }

  /**
   * @see #resolve
   */
  abstract JSType resolveInternal(ErrorReporter t, StaticScope<JSType> scope);

  void setResolvedTypeInternal(JSType type) {
    int PROBE_START_LINE_1372 = 1372;
	com.google.javascript.rhino.jstype.JSType p_type_5594_line_1372 = type;
	int PROBE_END_LINE_1372 = 1372;
	resolveResult = p_type_5594_line_1372;
    resolved = true;
  }

  /** Whether the type has been resolved. */
  public final boolean isResolved() {
    return resolved;
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
    int PROBE_START_LINE_1393 = 1393;
		com.google.javascript.rhino.jstype.JSType p_type_5595_line_1393 = type;
		boolean jstype_1_expr130_line_1393 = p_type_5595_line_1393 == null;
		com.google.javascript.rhino.jstype.JSType jstype_1_expr131_line_1393 = null;
		if (!jstype_1_expr130_line_1393) {
			com.google.javascript.rhino.jstype.JSType p_type_5595_line_1393_v1 = type;
			com.google.javascript.rhino.ErrorReporter p_t_5596_line_1393 = t;
			StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5597_line_1393 = scope;
			jstype_1_expr131_line_1393 = p_type_5595_line_1393_v1.resolve(p_t_5596_line_1393, p_scope_5597_line_1393);
		}
		com.google.javascript.rhino.jstype.JSType jstype_1_expr129_line_1393 = jstype_1_expr130_line_1393
				? null
				: jstype_1_expr131_line_1393;
		int PROBE_END_LINE_1393 = 1393;
	return jstype_1_expr129_line_1393;
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
    int PROBE_START_LINE_1422 = 1422;
	String jstype_1_expr132_line_1422 = toStringHelper(false);
	int PROBE_END_LINE_1422 = 1422;
	return jstype_1_expr132_line_1422;
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
   * @param constraint
   */
  public void matchConstraint(JSType constraint) {}
}
