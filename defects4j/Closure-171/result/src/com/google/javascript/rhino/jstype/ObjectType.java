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

import static com.google.javascript.rhino.jstype.TernaryValue.FALSE;
import static com.google.javascript.rhino.jstype.TernaryValue.UNKNOWN;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.Sets;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;

import java.util.Set;

/**
 * Object type.
 *
 * In JavaScript, all object types have properties, and each of those
 * properties has a type. Property types may be DECLARED, INFERRED, or
 * UNKNOWN.
 *
 * DECLARED properties have an explicit type annotation, as in:
 * <code>
 * /xx @type {number} x/
 * Foo.prototype.bar = 1;
 * </code>
 * This property may only hold number values, and an assignment to any
 * other type of value is an error.
 *
 * INFERRED properties do not have an explicit type annotation. Rather,
 * we try to find all the possible types that this property can hold.
 * <code>
 * Foo.prototype.bar = 1;
 * </code>
 * If the programmer assigns other types of values to this property,
 * the property will take on the union of all these types.
 *
 * UNKNOWN properties are properties on the UNKNOWN type. The UNKNOWN
 * type has all properties, but we do not know whether they are
 * declared or inferred.
 *
 */
public abstract class ObjectType extends JSType implements StaticScope<JSType> {
  private boolean visited;
  private JSDocInfo docInfo = null;
  private boolean unknown = true;

  ObjectType(JSTypeRegistry registry) {
    super(registry);
  }

  ObjectType(JSTypeRegistry registry, TemplateTypeMap templateTypeMap) {
    super(registry, templateTypeMap);
  }

  @Override
  public Node getRootNode() { return null; }

  @Override
  public ObjectType getParentScope() {
    return getImplicitPrototype();
  }

  /**
   * Returns the property map that manages the set of properties for an object.
   */
  PropertyMap getPropertyMap() {
    return PropertyMap.immutableEmptyMap();
  }

  /**
   * Default getSlot implementation. This gets overridden by FunctionType
   * for lazily-resolved prototypes.
   */
  @Override
  public Property getSlot(String name) {
    int PROBE_START_LINE_116 = 116;
	com.google.javascript.rhino.jstype.PropertyMap object_type_1_expr4_line_116 = getPropertyMap();
	String p_name_5932_line_116 = name;
	com.google.javascript.rhino.jstype.Property object_type_1_expr3_line_116 = object_type_1_expr4_line_116
			.getSlot(p_name_5932_line_116);
	int PROBE_END_LINE_116 = 116;
	return object_type_1_expr3_line_116;
  }

  @Override
  public Property getOwnSlot(String name) {
    int PROBE_START_LINE_121 = 121;
	com.google.javascript.rhino.jstype.PropertyMap object_type_1_expr6_line_121 = getPropertyMap();
	String p_name_5933_line_121 = name;
	com.google.javascript.rhino.jstype.Property object_type_1_expr5_line_121 = object_type_1_expr6_line_121
			.getOwnProperty(p_name_5933_line_121);
	int PROBE_END_LINE_121 = 121;
	return object_type_1_expr5_line_121;
  }

  @Override
  public JSType getTypeOfThis() {
    return null;
  }

  /**
   * Gets the declared default element type.
   * @see TemplatizedType
   */
  public ImmutableList<JSType> getTemplateTypes() {
    return null;
  }

  /**
   * Gets the docInfo for this type.
   */
  @Override
  public JSDocInfo getJSDocInfo() {
    int PROBE_START_LINE_142 = 142;
	com.google.javascript.rhino.JSDocInfo f_doc_info_5927_line_142 = docInfo;
	int PROBE_END_LINE_142 = 142;
	return f_doc_info_5927_line_142;
  }

  /**
   * Sets the docInfo for this type from the given
   * {@link JSDocInfo}. The {@code JSDocInfo} may be {@code null}.
   */
  public void setJSDocInfo(JSDocInfo info) {
    int PROBE_START_LINE_150 = 150;
	com.google.javascript.rhino.JSDocInfo p_info_5934_line_150 = info;
	int PROBE_END_LINE_150 = 150;
	docInfo = p_info_5934_line_150;
  }

  /**
   * Detects a cycle in the implicit prototype chain. This method accesses
   * the {@link #getImplicitPrototype()} method and must therefore be
   * invoked only after the object is sufficiently initialized to respond to
   * calls to this method.<p>
   *
   * @return True iff an implicit prototype cycle was detected.
   */
  final boolean detectImplicitPrototypeCycle() {
    // detecting cycle
    this.visited = true;
    ObjectType p = getImplicitPrototype();
    while (p != null) {
      if (p.visited) {
        return true;
      } else {
        p.visited = true;
      }
      p = p.getImplicitPrototype();
    }

    // clean up
    p = this;
    do {
      p.visited = false;
      p = p.getImplicitPrototype();
    } while (p != null);
    return false;
  }

  /**
   * Detects cycles in either the implicit prototype chain, or the implemented/extended
   * interfaces.<p>
   *
   * @return True iff a cycle was detected.
   */
  final boolean detectInheritanceCycle() {
    // TODO(user): This should get moved to preventing cycles in FunctionTypeBuilder
    // rather than removing them here after they have been created.
    // Also, this doesn't do the right thing for extended interfaces, though that is
    // masked by another bug.
    return detectImplicitPrototypeCycle()
        || Iterables.contains(this.getCtorImplementedInterfaces(), this)
        || Iterables.contains(this.getCtorExtendedInterfaces(), this);
  }

  /**
   * Gets the reference name for this object. This includes named types
   * like constructors, prototypes, and enums. It notably does not include
   * literal types like strings and booleans and structural types.
   * @return the object's name or {@code null} if this is an anonymous
   *         object
   */
  public abstract String getReferenceName();

  /**
   * Due to the complexity of some of our internal type systems, sometimes
   * we have different types constructed by the same constructor.
   * In other parts of the type system, these are called delegates.
   * We construct these types by appending suffixes to the constructor name.
   *
   * The normalized reference name does not have these suffixes, and as such,
   * recollapses these implicit types back to their real type.
   */
  public String getNormalizedReferenceName() {
    String name = getReferenceName();
    if (name != null) {
      int pos = name.indexOf("(");
      if (pos != -1) {
        return name.substring(0, pos);
      }
    }
    return name;
  }

  @Override
  public String getDisplayName() {
    return getNormalizedReferenceName();
  }

  /**
   * Creates a suffix for a proxy delegate.
   * @see #getNormalizedReferenceName
   */
  public static String createDelegateSuffix(String suffix) {
    int PROBE_START_LINE_238 = 238;
	String p_suffix_5935_line_238 = suffix;
	String object_type_1_expr8_line_238 = "(" + p_suffix_5935_line_238 + ")";
	int PROBE_END_LINE_238 = 238;
	return object_type_1_expr8_line_238;
  }

  /**
   * Returns true if the object is named.
   * @return true if the object is named, false if it is anonymous
   */
  public boolean hasReferenceName() {
    return false;
  }

  @Override
  public TernaryValue testForEquality(JSType that) {
    // super
    TernaryValue result = super.testForEquality(that);
    if (result != null) {
      return result;
    }
    // objects are comparable to everything but null/undefined
    if (that.isSubtype(
            getNativeType(JSTypeNative.OBJECT_NUMBER_STRING_BOOLEAN))) {
      return UNKNOWN;
    } else {
      return FALSE;
    }
  }

  /**
   * Gets this object's constructor.
   * @return this object's constructor or {@code null} if it is a native
   * object (constructed natively v.s. by instantiation of a function)
   */
  public abstract FunctionType getConstructor();

  /**
   * Gets the implicit prototype (a.k.a. the {@code [[Prototype]]} property).
   */
  public abstract ObjectType getImplicitPrototype();

  /**
   * Defines a property whose type is explicitly declared by the programmer.
   * @param propertyName the property's name
   * @param type the type
   * @param propertyNode the node corresponding to the declaration of property
   *        which might later be accessed using {@code getPropertyNode}.
   */
  public final boolean defineDeclaredProperty(String propertyName,
      JSType type, Node propertyNode) {
    int PROBE_START_LINE_286 = 286;
		String p_property_name_5937_line_286 = propertyName;
		com.google.javascript.rhino.jstype.JSType p_type_5938_line_286 = type;
		com.google.javascript.rhino.Node p_property_node_5939_line_286 = propertyNode;
		boolean object_type_1_expr9_line_286 = defineProperty(p_property_name_5937_line_286, p_type_5938_line_286,
				false, p_property_node_5939_line_286);
		int PROBE_END_LINE_286 = 286;
	boolean result = object_type_1_expr9_line_286;
    int PROBE_START_LINE_291 = 291;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_5441_line_291 = registry;
	String p_property_name_5937_line_291 = propertyName;
	int PROBE_END_LINE_291 = 291;
	// All property definitions go through this method
    // or defineInferredProperty. Because the properties defined an an
    // object can affect subtyping, it's slightly more efficient
    // to register this after defining the property.
    f_registry_5441_line_291.registerPropertyOnType(p_property_name_5937_line_291, this);
    int PROBE_START_LINE_292 = 292;
	boolean v_result_5940_line_292 = result;
	int PROBE_END_LINE_292 = 292;
	return v_result_5940_line_292;
  }

  /**
   * Defines a property whose type is on a synthesized object. These objects
   * don't actually exist in the user's program. They're just used for
   * bookkeeping in the type system.
   */
  public final boolean defineSynthesizedProperty(String propertyName,
      JSType type, Node propertyNode) {
    return defineProperty(propertyName, type, false, propertyNode);
  }

  /**
   * Defines a property whose type is inferred.
   * @param propertyName the property's name
   * @param type the type
   * @param propertyNode the node corresponding to the inferred definition of
   *        property that might later be accessed using {@code getPropertyNode}.
   */
  public final boolean defineInferredProperty(String propertyName,
      JSType type, Node propertyNode) {
    int PROBE_START_LINE_314 = 314;
		String p_property_name_5944_line_314 = propertyName;
		StaticSlot<JSType> object_type_1_expr12_line_314 = getSlot(p_property_name_5944_line_314);
		int PROBE_END_LINE_314 = 314;
	StaticSlot<JSType> originalSlot = object_type_1_expr12_line_314;
    int PROBE_START_LINE_315 = 323;
	String p_property_name_5944_line_315 = propertyName;
	boolean object_type_1_expr13_line_315 = hasProperty(p_property_name_5944_line_315);
	int PROBE_END_LINE_315 = 323;
	if (object_type_1_expr13_line_315) {
      if (isPropertyTypeDeclared(propertyName)) {
        // We never want to hide a declared property with an inferred property.
        return true;
      }
      JSType originalType = getPropertyType(propertyName);
      type = originalType == null ? type :
          originalType.getLeastSupertype(type);
    }

    int PROBE_START_LINE_325 = 326;
	String p_property_name_5944_line_325 = propertyName;
	com.google.javascript.rhino.jstype.JSType p_type_5945_line_325 = type;
	boolean object_type_1_expr14_line_325 = defineProperty(p_property_name_5944_line_325, p_type_5945_line_325, true,
			propertyNode);
	int PROBE_END_LINE_325 = 326;
	boolean result = object_type_1_expr14_line_325;

    int PROBE_START_LINE_332 = 332;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_5441_line_332 = registry;
	String p_property_name_5944_line_332 = propertyName;
	int PROBE_END_LINE_332 = 332;
	// All property definitions go through this method
    // or defineDeclaredProperty. Because the properties defined an an
    // object can affect subtyping, it's slightly more efficient
    // to register this after defining the property.
    f_registry_5441_line_332.registerPropertyOnType(p_property_name_5944_line_332, this);

    int PROBE_START_LINE_334 = 334;
	boolean v_result_5948_line_334 = result;
	int PROBE_END_LINE_334 = 334;
	return v_result_5948_line_334;
  }

  /**
   * Defines a property.<p>
   *
   * For clarity, callers should prefer {@link #defineDeclaredProperty} and
   * {@link #defineInferredProperty}.
   *
   * @param propertyName the property's name
   * @param type the type
   * @param inferred {@code true} if this property's type is inferred
   * @param propertyNode the node that represents the definition of property.
   *        Depending on the actual sub-type the node type might be different.
   *        The general idea is to have an estimate of where in the source code
   *        this property is defined.
   * @return True if the property was registered successfully, false if this
   *        conflicts with a previous property type declaration.
   */
  abstract boolean defineProperty(String propertyName, JSType type,
      boolean inferred, Node propertyNode);

  /**
   * Removes the declared or inferred property from this ObjectType.
   *
   * @param propertyName the property's name
   * @return true if the property was removed successfully. False if the
   *         property did not exist, or could not be removed.
   */
  public boolean removeProperty(String propertyName) {
    return false;
  }

  /**
   * Gets the node corresponding to the definition of the specified property.
   * This could be the node corresponding to declaration of the property or the
   * node corresponding to the first reference to this property, e.g.,
   * "this.propertyName" in a constructor. Note this is mainly intended to be
   * an estimate of where in the source code a property is defined. Sometime
   * the returned node is not even part of the global AST but in the AST of the
   * JsDoc that defines a type.
   *
   * @param propertyName the name of the property
   * @return the {@code Node} corresponding to the property or null.
   */
  public Node getPropertyNode(String propertyName) {
    Property p = getSlot(propertyName);
    return p == null ? null : p.getNode();
  }

  /**
   * Gets the docInfo on the specified property on this type.  This should not
   * be implemented recursively, as you generally need to know exactly on
   * which type in the prototype chain the JSDocInfo exists.
   */
  public JSDocInfo getOwnPropertyJSDocInfo(String propertyName) {
    Property p = getOwnSlot(propertyName);
    return p == null ? null : p.getJSDocInfo();
  }

  /**
   * Sets the docInfo for the specified property from the
   * {@link JSDocInfo} on its definition.
   * @param info {@code JSDocInfo} for the property definition. May be
   *        {@code null}.
   */
  public void setPropertyJSDocInfo(String propertyName, JSDocInfo info) {
    // by default, do nothing
  }

  @Override
  public JSType findPropertyType(String propertyName) {
    int PROBE_START_LINE_406 = 407;
	String p_property_name_5958_line_406 = propertyName;
	boolean object_type_1_expr18_line_406 = hasProperty(p_property_name_5958_line_406);
	com.google.javascript.rhino.jstype.JSType object_type_1_expr17_line_406 = object_type_1_expr18_line_406
			? getPropertyType(propertyName)
			: null;
	int PROBE_END_LINE_406 = 407;
	return object_type_1_expr17_line_406;
  }

  /**
   * Gets the property type of the property whose name is given. If the
   * underlying object does not have this property, the Unknown type is
   * returned to indicate that no information is available on this property.
   *
   * This gets overridden by FunctionType for lazily-resolved call() and
   * bind() functions.
   *
   * @return the property's type or {@link UnknownType}. This method never
   *         returns {@code null}.
   */
  public JSType getPropertyType(String propertyName) {
    int PROBE_START_LINE_422 = 422;
	String p_property_name_5959_line_422 = propertyName;
	StaticSlot<JSType> object_type_1_expr20_line_422 = getSlot(p_property_name_5959_line_422);
	int PROBE_END_LINE_422 = 422;
	StaticSlot<JSType> slot = object_type_1_expr20_line_422;
    int PROBE_START_LINE_423 = 430;
	StaticSlot<com.google.javascript.rhino.jstype.JSType> v_slot_5960_line_423 = slot;
	boolean object_type_1_expr21_line_423 = v_slot_5960_line_423 == null;
	int PROBE_END_LINE_423 = 430;
	if (object_type_1_expr21_line_423) {
      int PROBE_START_LINE_424 = 428;
		boolean object_type_1_expr23_line_424 = isNoResolvedType();
		boolean object_type_1_expr24_line_424 = false;
		if (!object_type_1_expr23_line_424) {
			object_type_1_expr24_line_424 = isCheckedUnknownType();
		}
		boolean object_type_1_expr22_line_424 = object_type_1_expr23_line_424 || object_type_1_expr24_line_424;
		int PROBE_END_LINE_424 = 428;
	if (object_type_1_expr22_line_424) {
        return getNativeType(JSTypeNative.CHECKED_UNKNOWN_TYPE);
      } else {
		int PROBE_START_LINE_426 = 428;
		boolean object_type_1_expr25_line_426 = isEmptyType();
		int PROBE_END_LINE_426 = 428;
		if (object_type_1_expr25_line_426) {
			return getNativeType(JSTypeNative.NO_TYPE);
		}
	}
      int PROBE_START_LINE_429 = 429;
	com.google.javascript.rhino.jstype.JSTypeNative q_unknown_type_260_line_429 = JSTypeNative.UNKNOWN_TYPE;
	com.google.javascript.rhino.jstype.JSType object_type_1_expr26_line_429 = getNativeType(
			q_unknown_type_260_line_429);
	int PROBE_END_LINE_429 = 429;
	return object_type_1_expr26_line_429;
    }
    int PROBE_START_LINE_431 = 431;
	StaticSlot<com.google.javascript.rhino.jstype.JSType> v_slot_5960_line_431 = slot;
	com.google.javascript.rhino.jstype.JSType object_type_1_expr27_line_431 = v_slot_5960_line_431.getType();
	int PROBE_END_LINE_431 = 431;
	return object_type_1_expr27_line_431;
  }

  @Override
  public boolean hasProperty(String propertyName) {
    int PROBE_START_LINE_437 = 437;
	boolean object_type_1_expr29_line_437 = isEmptyType();
	boolean object_type_1_expr30_line_437 = false;
	boolean object_type_1_expr31_line_437 = false;
	if (!object_type_1_expr29_line_437) {
		object_type_1_expr30_line_437 = isUnknownType();
		if (!object_type_1_expr30_line_437) {
			String p_property_name_5961_line_437 = propertyName;
			com.google.javascript.rhino.jstype.Property object_type_1_expr32_line_437 = getSlot(
					p_property_name_5961_line_437);
			object_type_1_expr31_line_437 = object_type_1_expr32_line_437 != null;
		}
	}
	boolean object_type_1_expr28_line_437 = object_type_1_expr29_line_437 || object_type_1_expr30_line_437
			|| object_type_1_expr31_line_437;
	int PROBE_END_LINE_437 = 437;
	// Unknown types have all properties.
    return object_type_1_expr28_line_437;
  }

  /**
   * Checks whether the property whose name is given is present directly on
   * the object.  Returns false even if it is declared on a supertype.
   */
  public boolean hasOwnProperty(String propertyName) {
    int PROBE_START_LINE_445 = 445;
	String p_property_name_5962_line_445 = propertyName;
	com.google.javascript.rhino.jstype.Property object_type_1_expr34_line_445 = getOwnSlot(
			p_property_name_5962_line_445);
	boolean object_type_1_expr33_line_445 = object_type_1_expr34_line_445 != null;
	int PROBE_END_LINE_445 = 445;
	return object_type_1_expr33_line_445;
  }

  /**
   * Returns the names of all the properties directly on this type.
   *
   * Overridden by FunctionType to add "prototype".
   */
  public Set<String> getOwnPropertyNames() {
    return getPropertyMap().getOwnPropertyNames();
  }

  /**
   * Checks whether the property's type is inferred.
   */
  public boolean isPropertyTypeInferred(String propertyName) {
    StaticSlot<JSType> slot = getSlot(propertyName);
    return slot == null ? false : slot.isTypeInferred();
  }

  /**
   * Checks whether the property's type is declared.
   */
  public boolean isPropertyTypeDeclared(String propertyName) {
    int PROBE_START_LINE_469 = 469;
	String p_property_name_5964_line_469 = propertyName;
	StaticSlot<JSType> object_type_1_expr35_line_469 = getSlot(p_property_name_5964_line_469);
	int PROBE_END_LINE_469 = 469;
	StaticSlot<JSType> slot = object_type_1_expr35_line_469;
    int PROBE_START_LINE_470 = 470;
	StaticSlot<com.google.javascript.rhino.jstype.JSType> v_slot_5965_line_470 = slot;
	boolean object_type_1_expr37_line_470 = v_slot_5965_line_470 == null;
	boolean object_type_1_expr38_line_470 = false;
	if (!object_type_1_expr37_line_470) {
		StaticSlot<com.google.javascript.rhino.jstype.JSType> v_slot_5965_line_470_v1 = slot;
		boolean object_type_1_expr39_line_470 = v_slot_5965_line_470_v1.isTypeInferred();
		object_type_1_expr38_line_470 = !object_type_1_expr39_line_470;
	}
	boolean object_type_1_expr36_line_470 = object_type_1_expr37_line_470 ? false : object_type_1_expr38_line_470;
	int PROBE_END_LINE_470 = 470;
	return object_type_1_expr36_line_470;
  }

  /**
   * Whether the given property is declared on this object.
   */
  final boolean hasOwnDeclaredProperty(String name) {
    int PROBE_START_LINE_477 = 477;
	String p_name_5966_line_477 = name;
	boolean object_type_1_expr41_line_477 = hasOwnProperty(p_name_5966_line_477);
	boolean object_type_1_expr42_line_477 = true;
	if (object_type_1_expr41_line_477) {
		String p_name_5966_line_477_v1 = name;
		object_type_1_expr42_line_477 = isPropertyTypeDeclared(p_name_5966_line_477_v1);
	}
	boolean object_type_1_expr40_line_477 = object_type_1_expr41_line_477 && object_type_1_expr42_line_477;
	int PROBE_END_LINE_477 = 477;
	return object_type_1_expr40_line_477;
  }

  /** Checks whether the property was defined in the externs. */
  public boolean isPropertyInExterns(String propertyName) {
    Property p = getSlot(propertyName);
    return p == null ? false : p.isFromExterns();
  }

  /**
   * Gets the number of properties of this object.
   */
  public int getPropertiesCount() {
    return getPropertyMap().getPropertiesCount();
  }

  /**
   * Returns a list of properties defined or inferred on this type and any of
   * its supertypes.
   */
  public Set<String> getPropertyNames() {
    Set<String> props = Sets.newTreeSet();
    collectPropertyNames(props);
    return props;
  }

  /**
   * Adds any properties defined on this type or its supertypes to the set.
   */
  final void collectPropertyNames(Set<String> props) {
    getPropertyMap().collectPropertyNames(props);
  }

  @Override
  public <T> T visit(Visitor<T> visitor) {
    return visitor.caseObjectType(this);
  }

  @Override <T> T visit(RelationshipVisitor<T> visitor, JSType that) {
    return visitor.caseObjectType(this, that);
  }

  /**
   * Checks that the prototype is an implicit prototype of this object. Since
   * each object has an implicit prototype, an implicit prototype's
   * implicit prototype is also this implicit prototype's.
   *
   * @param prototype any prototype based object
   *
   * @return {@code true} if {@code prototype} is {@code equal} to any
   *         object in this object's implicit prototype chain.
   */
  final boolean isImplicitPrototype(ObjectType prototype) {
    int PROBE_START_LINE_529 = 529;
	boolean FOR_STMT_TOGGLE_LINE_530 = false;
	int PROBE_END_LINE_529 = 529;
	for (ObjectType current = this;
         true;) {
      int PROBE_START_LINE_533 = 535;
			if (FOR_STMT_TOGGLE_LINE_530) {
				com.google.javascript.rhino.jstype.ObjectType v_current_5973_line_532 = current;
				com.google.javascript.rhino.jstype.ObjectType object_type_1_expr47_line_532 = v_current_5973_line_532
						.getImplicitPrototype();
				current = object_type_1_expr47_line_532;
			} else {
				FOR_STMT_TOGGLE_LINE_530 = true;
			}
			com.google.javascript.rhino.jstype.ObjectType v_current_5973_line_531 = current;
			boolean object_type_1_expr45_line_531 = v_current_5973_line_531 != null;
			if (!(object_type_1_expr45_line_531)) {
				break;
			}
			com.google.javascript.rhino.jstype.ObjectType v_current_5973_line_533 = current;
			boolean object_type_1_expr48_line_533 = v_current_5973_line_533.isTemplatizedType();
			int PROBE_END_LINE_533 = 535;
	if (object_type_1_expr48_line_533) {
        current = current.toMaybeTemplatizedType().getReferencedType();
      }
      int PROBE_START_LINE_536 = 538;
	com.google.javascript.rhino.jstype.ObjectType v_current_5973_line_536 = current;
	com.google.javascript.rhino.jstype.ObjectType p_prototype_5972_line_536 = prototype;
	boolean object_type_1_expr49_line_536 = v_current_5973_line_536.isEquivalentTo(p_prototype_5972_line_536);
	int PROBE_END_LINE_536 = 538;
	if (object_type_1_expr49_line_536) {
        return true;
      }
    }
    return false;
  }

  @Override
  public BooleanLiteralSet getPossibleToBooleanOutcomes() {
    return BooleanLiteralSet.TRUE;
  }

  /**
   * We treat this as the unknown type if any of its implicit prototype
   * properties is unknown.
   */
  @Override
  public boolean isUnknownType() {
    int PROBE_START_LINE_556 = 570;
	boolean f_unknown_5928_line_556 = unknown;
	int PROBE_END_LINE_556 = 570;
	// If the object is unknown now, check the supertype again,
    // because it might have been resolved since the last check.
    if (f_unknown_5928_line_556) {
      int PROBE_START_LINE_557 = 557;
		ObjectType object_type_1_expr50_line_557 = getImplicitPrototype();
		int PROBE_END_LINE_557 = 557;
	ObjectType implicitProto = object_type_1_expr50_line_557;
      int PROBE_START_LINE_558 = 569;
	com.google.javascript.rhino.jstype.ObjectType v_implicit_proto_5974_line_558 = implicitProto;
	boolean object_type_1_expr52_line_558 = v_implicit_proto_5974_line_558 == null;
	boolean object_type_1_expr51_line_558 = object_type_1_expr52_line_558 || implicitProto.isNativeObjectType();
	int PROBE_END_LINE_558 = 569;
	if (object_type_1_expr51_line_558) {
        unknown = false;
        int PROBE_START_LINE_561 = 566;
		Iterable<com.google.javascript.rhino.jstype.ObjectType> object_type_1_expr54_line_561 = getCtorExtendedInterfaces();
		int PROBE_END_LINE_561 = 566;
		for (ObjectType interfaceType : object_type_1_expr54_line_561) {
          if (interfaceType.isUnknownType()) {
            unknown = true;
            break;
          }
        }
      } else {
        int PROBE_START_LINE_568 = 568;
		com.google.javascript.rhino.jstype.ObjectType v_implicit_proto_5974_line_568 = implicitProto;
		boolean object_type_1_expr56_line_568 = v_implicit_proto_5974_line_568.isUnknownType();
		int PROBE_END_LINE_568 = 568;
		unknown = object_type_1_expr56_line_568;
      }
    }
    int PROBE_START_LINE_571 = 571;
	boolean f_unknown_5928_line_571 = unknown;
	int PROBE_END_LINE_571 = 571;
	return f_unknown_5928_line_571;
  }

  @Override
  public boolean isObject() {
    return true;
  }

  /**
   * Returns true if any cached values have been set for this type.  If true,
   * then the prototype chain should not be changed, as it might invalidate the
   * cached values.
   */
  public boolean hasCachedValues() {
    int PROBE_START_LINE_585 = 585;
	boolean f_unknown_5928_line_585 = unknown;
	boolean object_type_1_expr57_line_585 = !f_unknown_5928_line_585;
	int PROBE_END_LINE_585 = 585;
	return object_type_1_expr57_line_585;
  }

  /**
   * Clear cached values. Should be called before making changes to a prototype
   * that may have been changed since creation.
   */
  public void clearCachedValues() {
    unknown = true;
  }

  /** Whether this is a built-in object. */
  public boolean isNativeObjectType() {
    return false;
  }

  /**
   * A null-safe version of JSType#toObjectType.
   */
  public static ObjectType cast(JSType type) {
    int PROBE_START_LINE_605 = 605;
	com.google.javascript.rhino.jstype.JSType p_type_5976_line_605 = type;
	boolean object_type_1_expr60_line_605 = p_type_5976_line_605 == null;
	com.google.javascript.rhino.jstype.ObjectType object_type_1_expr61_line_605 = null;
	if (!object_type_1_expr60_line_605) {
		com.google.javascript.rhino.jstype.JSType p_type_5976_line_605_v1 = type;
		object_type_1_expr61_line_605 = p_type_5976_line_605_v1.toObjectType();
	}
	com.google.javascript.rhino.jstype.ObjectType object_type_1_expr59_line_605 = object_type_1_expr60_line_605
			? null
			: object_type_1_expr61_line_605;
	int PROBE_END_LINE_605 = 605;
	return object_type_1_expr59_line_605;
  }

  @Override
  public final boolean isFunctionPrototypeType() {
    int PROBE_START_LINE_610 = 610;
	com.google.javascript.rhino.jstype.FunctionType object_type_1_expr63_line_610 = getOwnerFunction();
	boolean object_type_1_expr62_line_610 = object_type_1_expr63_line_610 != null;
	int PROBE_END_LINE_610 = 610;
	return object_type_1_expr62_line_610;
  }

  /** Gets the owner of this if it's a function prototype. */
  public FunctionType getOwnerFunction() {
    return null;
  }

  /** Sets the owner function. By default, does nothing. */
  void setOwnerFunction(FunctionType type) {}

  /**
   * Gets the interfaces implemented by the ctor associated with this type.
   * Intended to be overridden by subclasses.
   */
  public Iterable<ObjectType> getCtorImplementedInterfaces() {
    return ImmutableSet.of();
  }

  /**
   * Gets the interfaces extended by the interface associated with this type.
   * Intended to be overridden by subclasses.
   */
  public Iterable<ObjectType> getCtorExtendedInterfaces() {
    return ImmutableSet.of();
  }
}
