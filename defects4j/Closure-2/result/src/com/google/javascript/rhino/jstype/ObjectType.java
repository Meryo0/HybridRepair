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

  ObjectType(JSTypeRegistry registry, ImmutableList<String> templateKeys,
      ImmutableList<JSType> templatizedTypes) {
    super(registry, templateKeys, templatizedTypes);
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
    return getPropertyMap().getSlot(name);
  }

  @Override
  public Property getOwnSlot(String name) {
    int PROBE_START_LINE_122 = 122;
	com.google.javascript.rhino.jstype.PropertyMap object_type_1_expr4_line_122 = getPropertyMap();
	String p_name_5294_line_122 = name;
	com.google.javascript.rhino.jstype.Property object_type_1_expr3_line_122 = object_type_1_expr4_line_122
			.getOwnProperty(p_name_5294_line_122);
	int PROBE_END_LINE_122 = 122;
	return object_type_1_expr3_line_122;
  }

  @Override
  public JSType getTypeOfThis() {
    return null;
  }

  /**
   * Gets the declared default element type.
   * @see ParameterizedType
   */
  public JSType getParameterType() {
    return null;
  }

  /**
   * Gets the declared default index type.
   * @see IndexedType
   */
  public JSType getIndexType() {
    return null;
  }

  /**
   * Gets the docInfo for this type.
   */
  @Override
  public JSDocInfo getJSDocInfo() {
    if (docInfo != null) {
      return docInfo;
    } else if (getImplicitPrototype() != null) {
      return getImplicitPrototype().getJSDocInfo();
    } else {
      return super.getJSDocInfo();
    }
  }

  /**
   * Sets the docInfo for this type from the given
   * {@link JSDocInfo}. The {@code JSDocInfo} may be {@code null}.
   */
  public void setJSDocInfo(JSDocInfo info) {
    docInfo = info;
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
    int PROBE_START_LINE_179 = 179;
	ObjectType object_type_1_expr8_line_179 = getImplicitPrototype();
	int PROBE_END_LINE_179 = 179;
	ObjectType p = object_type_1_expr8_line_179;
    while (true) {
      int PROBE_START_LINE_180 = 180;
		com.google.javascript.rhino.jstype.ObjectType v_p_5297_line_180 = p;
		boolean object_type_1_expr9_line_180 = v_p_5297_line_180 != null;
		if (!(object_type_1_expr9_line_180)) {
			break;
		}
		int PROBE_END_LINE_180 = 180;
	if (p.visited) {
        return true;
      } else {
        p.visited = true;
      }
      p = p.getImplicitPrototype();
    }

    // clean up
    p = this;
    int PROBE_START_LINE_190 = 190;
	boolean DO_COND_TOGGLE_LINE_191 = false;
	int PROBE_END_LINE_190 = 190;
	do {
      int PROBE_START_LINE_191 = 194;
		if (DO_COND_TOGGLE_LINE_191) {
			com.google.javascript.rhino.jstype.ObjectType v_p_5297_line_194 = p;
			boolean object_type_1_expr15_line_194 = v_p_5297_line_194 != null;
			if (!(object_type_1_expr15_line_194)) {
				break;
			}
		} else {
			DO_COND_TOGGLE_LINE_191 = true;
		}
		int PROBE_END_LINE_191 = 194;
	p.visited = false;
      int PROBE_START_LINE_193 = 193;
	com.google.javascript.rhino.jstype.ObjectType v_p_5297_line_193 = p;
	com.google.javascript.rhino.jstype.ObjectType object_type_1_expr14_line_193 = v_p_5297_line_193
			.getImplicitPrototype();
	int PROBE_END_LINE_193 = 193;
	p = object_type_1_expr14_line_193;
    } while (true);
    return false;
  }

  /**
   * Detects cycles in either the implicit prototype chain, or the implemented/extended
   * interfaces.<p>
   *
   * @return True iff a cycle was detected.
   */
  final boolean detectInheritanceCycle() {
    int PROBE_START_LINE_209 = 211;
	boolean object_type_1_expr17_line_209 = detectImplicitPrototypeCycle();
	boolean object_type_1_expr16_line_209 = object_type_1_expr17_line_209
			|| Iterables.contains(this.getCtorImplementedInterfaces(), this)
			|| Iterables.contains(this.getCtorExtendedInterfaces(), this);
	int PROBE_END_LINE_209 = 211;
	// TODO(user): This should get moved to preventing cycles in FunctionTypeBuilder
    // rather than removing them here after they have been created.
    // Also, this doesn't do the right thing for extended interfaces, though that is
    // masked by another bug.
    return object_type_1_expr16_line_209;
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
    int PROBE_START_LINE_253 = 253;
	String p_suffix_5298_line_253 = suffix;
	String object_type_1_expr18_line_253 = "(" + p_suffix_5298_line_253 + ")";
	int PROBE_END_LINE_253 = 253;
	return object_type_1_expr18_line_253;
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
    int PROBE_START_LINE_301 = 301;
		String p_property_name_5300_line_301 = propertyName;
		com.google.javascript.rhino.jstype.JSType p_type_5301_line_301 = type;
		com.google.javascript.rhino.Node p_property_node_5302_line_301 = propertyNode;
		boolean object_type_1_expr19_line_301 = defineProperty(p_property_name_5300_line_301, p_type_5301_line_301,
				false, p_property_node_5302_line_301);
		int PROBE_END_LINE_301 = 301;
	boolean result = object_type_1_expr19_line_301;
    int PROBE_START_LINE_306 = 306;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_4786_line_306 = registry;
	String p_property_name_5300_line_306 = propertyName;
	int PROBE_END_LINE_306 = 306;
	// All property definitions go through this method
    // or defineInferredProperty. Because the properties defined an an
    // object can affect subtyping, it's slightly more efficient
    // to register this after defining the property.
    f_registry_4786_line_306.registerPropertyOnType(p_property_name_5300_line_306, this);
    int PROBE_START_LINE_307 = 307;
	boolean v_result_5303_line_307 = result;
	int PROBE_END_LINE_307 = 307;
	return v_result_5303_line_307;
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
    StaticSlot<JSType> originalSlot = getSlot(propertyName);
    if (hasProperty(propertyName)) {
      if (isPropertyTypeDeclared(propertyName)) {
        // We never want to hide a declared property with an inferred property.
        return true;
      }
      JSType originalType = getPropertyType(propertyName);
      type = originalType == null ? type :
          originalType.getLeastSupertype(type);
    }

    boolean result = defineProperty(propertyName, type, true,
        propertyNode);

    // All property definitions go through this method
    // or defineDeclaredProperty. Because the properties defined an an
    // object can affect subtyping, it's slightly more efficient
    // to register this after defining the property.
    registry.registerPropertyOnType(propertyName, this);

    return result;
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
    return hasProperty(propertyName) ?
        getPropertyType(propertyName) : null;
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
    StaticSlot<JSType> slot = getSlot(propertyName);
    if (slot == null) {
      if (isNoResolvedType() || isCheckedUnknownType()) {
        return getNativeType(JSTypeNative.CHECKED_UNKNOWN_TYPE);
      } else if (isEmptyType()) {
        return getNativeType(JSTypeNative.NO_TYPE);
      }
      return getNativeType(JSTypeNative.UNKNOWN_TYPE);
    }
    return slot.getType();
  }

  @Override
  public boolean hasProperty(String propertyName) {
    // Unknown types have all properties.
    return isEmptyType() || isUnknownType() || getSlot(propertyName) != null;
  }

  /**
   * Checks whether the property whose name is given is present directly on
   * the object.  Returns false even if it is declared on a supertype.
   */
  public boolean hasOwnProperty(String propertyName) {
    int PROBE_START_LINE_460 = 460;
	String p_property_name_5322_line_460 = propertyName;
	com.google.javascript.rhino.jstype.Property object_type_1_expr23_line_460 = getOwnSlot(
			p_property_name_5322_line_460);
	boolean object_type_1_expr22_line_460 = object_type_1_expr23_line_460 != null;
	int PROBE_END_LINE_460 = 460;
	return object_type_1_expr22_line_460;
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
    StaticSlot<JSType> slot = getSlot(propertyName);
    return slot == null ? false : !slot.isTypeInferred();
  }

  /**
   * Whether the given property is declared on this object.
   */
  final boolean hasOwnDeclaredProperty(String name) {
    int PROBE_START_LINE_492 = 492;
	String p_name_5325_line_492 = name;
	boolean object_type_1_expr25_line_492 = hasOwnProperty(p_name_5325_line_492);
	boolean object_type_1_expr26_line_492 = true;
	if (object_type_1_expr25_line_492) {
		String p_name_5325_line_492_v1 = name;
		object_type_1_expr26_line_492 = isPropertyTypeDeclared(p_name_5325_line_492_v1);
	}
	boolean object_type_1_expr24_line_492 = object_type_1_expr25_line_492 && object_type_1_expr26_line_492;
	int PROBE_END_LINE_492 = 492;
	return object_type_1_expr24_line_492;
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
    int PROBE_START_LINE_505 = 505;
	com.google.javascript.rhino.jstype.PropertyMap object_type_1_expr28_line_505 = getPropertyMap();
	int object_type_1_expr27_line_505 = object_type_1_expr28_line_505.getPropertiesCount();
	int PROBE_END_LINE_505 = 505;
	return object_type_1_expr27_line_505;
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
    int PROBE_START_LINE_544 = 544;
	boolean FOR_STMT_TOGGLE_LINE_545 = false;
	int PROBE_END_LINE_544 = 544;
	for (ObjectType current = this;
         true;) {
      int PROBE_START_LINE_548 = 550;
			if (FOR_STMT_TOGGLE_LINE_545) {
				com.google.javascript.rhino.jstype.ObjectType v_current_5332_line_547 = current;
				com.google.javascript.rhino.jstype.ObjectType object_type_1_expr33_line_547 = v_current_5332_line_547
						.getImplicitPrototype();
				current = object_type_1_expr33_line_547;
			} else {
				FOR_STMT_TOGGLE_LINE_545 = true;
			}
			com.google.javascript.rhino.jstype.ObjectType v_current_5332_line_546 = current;
			boolean object_type_1_expr31_line_546 = v_current_5332_line_546 != null;
			if (!(object_type_1_expr31_line_546)) {
				break;
			}
			com.google.javascript.rhino.jstype.ObjectType v_current_5332_line_548 = current;
			com.google.javascript.rhino.jstype.ObjectType p_prototype_5331_line_548 = prototype;
			boolean object_type_1_expr34_line_548 = v_current_5332_line_548.isEquivalentTo(p_prototype_5331_line_548);
			int PROBE_END_LINE_548 = 550;
	if (object_type_1_expr34_line_548) {
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
    int PROBE_START_LINE_568 = 582;
	boolean f_unknown_5288_line_568 = unknown;
	int PROBE_END_LINE_568 = 582;
	// If the object is unknown now, check the supertype again,
    // because it might have been resolved since the last check.
    if (f_unknown_5288_line_568) {
      int PROBE_START_LINE_569 = 569;
		ObjectType object_type_1_expr35_line_569 = getImplicitPrototype();
		int PROBE_END_LINE_569 = 569;
	ObjectType implicitProto = object_type_1_expr35_line_569;
      int PROBE_START_LINE_570 = 581;
	com.google.javascript.rhino.jstype.ObjectType v_implicit_proto_5333_line_570 = implicitProto;
	boolean object_type_1_expr37_line_570 = v_implicit_proto_5333_line_570 == null;
	boolean object_type_1_expr36_line_570 = object_type_1_expr37_line_570 || implicitProto.isNativeObjectType();
	int PROBE_END_LINE_570 = 581;
	if (object_type_1_expr36_line_570) {
        unknown = false;
        int PROBE_START_LINE_573 = 578;
		Iterable<com.google.javascript.rhino.jstype.ObjectType> object_type_1_expr39_line_573 = getCtorExtendedInterfaces();
		int PROBE_END_LINE_573 = 578;
		for (ObjectType interfaceType : object_type_1_expr39_line_573) {
          int PROBE_START_LINE_574 = 577;
			com.google.javascript.rhino.jstype.ObjectType v_interface_type_5334_line_574 = interfaceType;
			boolean object_type_1_expr40_line_574 = v_interface_type_5334_line_574.isUnknownType();
			int PROBE_END_LINE_574 = 577;
		if (object_type_1_expr40_line_574) {
            unknown = true;
            break;
          }
        }
      } else {
        int PROBE_START_LINE_580 = 580;
		com.google.javascript.rhino.jstype.ObjectType v_implicit_proto_5333_line_580 = implicitProto;
		boolean object_type_1_expr43_line_580 = v_implicit_proto_5333_line_580.isUnknownType();
		int PROBE_END_LINE_580 = 580;
		unknown = object_type_1_expr43_line_580;
      }
    }
    int PROBE_START_LINE_583 = 583;
	boolean f_unknown_5288_line_583 = unknown;
	int PROBE_END_LINE_583 = 583;
	return f_unknown_5288_line_583;
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
    int PROBE_START_LINE_597 = 597;
	boolean f_unknown_5288_line_597 = unknown;
	boolean object_type_1_expr44_line_597 = !f_unknown_5288_line_597;
	int PROBE_END_LINE_597 = 597;
	return object_type_1_expr44_line_597;
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
    return type == null ? null : type.toObjectType();
  }

  @Override
  public final boolean isFunctionPrototypeType() {
    int PROBE_START_LINE_622 = 622;
	com.google.javascript.rhino.jstype.FunctionType object_type_1_expr46_line_622 = getOwnerFunction();
	boolean object_type_1_expr45_line_622 = object_type_1_expr46_line_622 != null;
	int PROBE_END_LINE_622 = 622;
	return object_type_1_expr45_line_622;
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
    int PROBE_START_LINE_638 = 638;
	ImmutableSet<com.google.javascript.rhino.jstype.ObjectType> object_type_1_expr47_line_638 = ImmutableSet.of();
	int PROBE_END_LINE_638 = 638;
	return object_type_1_expr47_line_638;
  }

  /**
   * Gets the interfaces extended by the interface associated with this type.
   * Intended to be overridden by subclasses.
   */
  public Iterable<ObjectType> getCtorExtendedInterfaces() {
    int PROBE_START_LINE_646 = 646;
	ImmutableSet<com.google.javascript.rhino.jstype.ObjectType> object_type_1_expr48_line_646 = ImmutableSet.of();
	int PROBE_END_LINE_646 = 646;
	return object_type_1_expr48_line_646;
  }
}
