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

import static com.google.javascript.rhino.jstype.JSTypeNative.OBJECT_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.U2U_CONSTRUCTOR_TYPE;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.javascript.rhino.ErrorReporter;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.ArrayList;

/**
 * This derived type provides extended information about a function, including
 * its return type and argument types.<p>
 *
 * Note: the parameters list is the LP node that is the parent of the
 * actual NAME node containing the parsed argument list (annotated with
 * JSDOC_TYPE_PROP's for the compile-time type of each argument.
 */
public class FunctionType extends PrototypeObjectType {
  private static final long serialVersionUID = 1L;

  private enum Kind {
    ORDINARY,
    CONSTRUCTOR,
    INTERFACE
  }

  // relevant only for constructors
  private enum PropAccess { ANY, STRUCT, DICT }

  /**
   * {@code [[Call]]} property.
   */
  private ArrowType call;

  /**
   * The {@code prototype} property. This field is lazily initialized by
   * {@code #getPrototype()}. The most important reason for lazily
   * initializing this field is that there are cycles in the native types
   * graph, so some prototypes must temporarily be {@code null} during
   * the construction of the graph.
   *
   * If non-null, the type must be a PrototypeObjectType.
   */
  private Property prototypeSlot;

  /**
   * Whether a function is a constructor, an interface, or just an ordinary
   * function.
   */
  private final Kind kind;

  /**
   * Whether the instances are structs, dicts, or unrestricted.
   */
  private PropAccess propAccess;

  /**
   * The type of {@code this} in the scope of this function.
   */
  private JSType typeOfThis;

  /**
   * The function node which this type represents. It may be {@code null}.
   */
  private Node source;

  int PROBE_START_LINE_115 = 119;

private ImmutableList<com.google.javascript.rhino.jstype.ObjectType> function_type_1_expr1_line_119 = ImmutableList
		.of();

int PROBE_END_LINE_115 = 119;

/**
   * The interfaces directly implemented by this function (for constructors)
   * It is only relevant for constructors. May not be {@code null}.
   */
  private List<ObjectType> implementedInterfaces = function_type_1_expr1_line_119;

  int PROBE_START_LINE_121 = 125;

private ImmutableList<com.google.javascript.rhino.jstype.ObjectType> function_type_1_expr2_line_125 = ImmutableList
		.of();

int PROBE_END_LINE_121 = 125;

/**
   * The interfaces directly extended by this function (for interfaces)
   * It is only relevant for constructors. May not be {@code null}.
   */
  private List<ObjectType> extendedInterfaces = function_type_1_expr2_line_125;

  /**
   * The types which are subtypes of this function. It is only relevant for
   * constructors and may be {@code null}.
   */
  private List<FunctionType> subTypes;

  /** Creates an instance for a function that might be a constructor. */
  FunctionType(JSTypeRegistry registry, String name, Node source,
               ArrowType arrowType, JSType typeOfThis,
               ImmutableList<String> templateKeys,
               boolean isConstructor, boolean nativeType) {
    super(registry, name,
        registry.getNativeObjectType(JSTypeNative.FUNCTION_INSTANCE_TYPE),
        nativeType, templateKeys, null);
    setPrettyPrint(true);

    int PROBE_START_LINE_143 = 144;
	com.google.javascript.rhino.Node p_source_4763_line_143 = source;
	boolean function_type_1_expr8_line_143 = p_source_4763_line_143 == null;
	boolean function_type_1_expr7_line_143 = function_type_1_expr8_line_143 || Token.FUNCTION == source.getType();
	int PROBE_END_LINE_143 = 144;
	Preconditions.checkArgument(function_type_1_expr7_line_143);
    int PROBE_START_LINE_145 = 145;
	com.google.javascript.rhino.jstype.ArrowType p_arrow_type_4764_line_145 = arrowType;
	int PROBE_END_LINE_145 = 145;
	Preconditions.checkNotNull(p_arrow_type_4764_line_145);
    int PROBE_START_LINE_146 = 146;
	com.google.javascript.rhino.Node p_source_4763_line_146 = source;
	int PROBE_END_LINE_146 = 146;
	this.source = p_source_4763_line_146;
    int PROBE_START_LINE_147 = 157;
	boolean p_is_constructor_4767_line_147 = isConstructor;
	int PROBE_END_LINE_147 = 157;
	if (p_is_constructor_4767_line_147) {
      int PROBE_START_LINE_148 = 148;
		com.google.javascript.rhino.jstype.FunctionType.Kind q_constructor_140_line_148 = Kind.CONSTRUCTOR;
		int PROBE_END_LINE_148 = 148;
	this.kind = q_constructor_140_line_148;
      int PROBE_START_LINE_149 = 149;
	com.google.javascript.rhino.jstype.FunctionType.PropAccess q_any_141_line_149 = PropAccess.ANY;
	int PROBE_END_LINE_149 = 149;
	this.propAccess = q_any_141_line_149;
      int PROBE_START_LINE_150 = 151;
	com.google.javascript.rhino.jstype.JSType p_type_of_this_4765_line_150 = typeOfThis;
	boolean function_type_1_expr23_line_150 = p_type_of_this_4765_line_150 != null;
	com.google.javascript.rhino.jstype.JSType function_type_1_expr21_line_150 = function_type_1_expr23_line_150
			? typeOfThis
			: new InstanceObjectType(registry, this, nativeType, null);
	int PROBE_END_LINE_150 = 151;
	this.typeOfThis = function_type_1_expr21_line_150;
    } else {
      int PROBE_START_LINE_153 = 153;
		com.google.javascript.rhino.jstype.FunctionType.Kind q_ordinary_142_line_153 = Kind.ORDINARY;
		int PROBE_END_LINE_153 = 153;
	this.kind = q_ordinary_142_line_153;
      int PROBE_START_LINE_154 = 156;
	com.google.javascript.rhino.jstype.JSType p_type_of_this_4765_line_154 = typeOfThis;
	boolean function_type_1_expr32_line_154 = p_type_of_this_4765_line_154 != null;
	com.google.javascript.rhino.jstype.JSType function_type_1_expr30_line_154 = function_type_1_expr32_line_154
			? typeOfThis
			: registry.getNativeObjectType(JSTypeNative.UNKNOWN_TYPE);
	int PROBE_END_LINE_154 = 156;
	this.typeOfThis = function_type_1_expr30_line_154;
    }
    int PROBE_START_LINE_158 = 158;
	com.google.javascript.rhino.jstype.ArrowType p_arrow_type_4764_line_158 = arrowType;
	int PROBE_END_LINE_158 = 158;
	this.call = p_arrow_type_4764_line_158;
  }

  /** Creates an instance for a function that is an interface. */
  private FunctionType(JSTypeRegistry registry, String name, Node source) {
    super(registry, name,
        registry.getNativeObjectType(JSTypeNative.FUNCTION_INSTANCE_TYPE));
    setPrettyPrint(true);

    int PROBE_START_LINE_167 = 168;
	com.google.javascript.rhino.Node p_source_4776_line_167 = source;
	boolean function_type_1_expr42_line_167 = p_source_4776_line_167 == null;
	boolean function_type_1_expr41_line_167 = function_type_1_expr42_line_167 || Token.FUNCTION == source.getType();
	int PROBE_END_LINE_167 = 168;
	Preconditions.checkArgument(function_type_1_expr41_line_167);
    int PROBE_START_LINE_169 = 169;
	String p_name_4775_line_169 = name;
	boolean function_type_1_expr44_line_169 = p_name_4775_line_169 != null;
	int PROBE_END_LINE_169 = 169;
	Preconditions.checkArgument(function_type_1_expr44_line_169);
    int PROBE_START_LINE_170 = 170;
	com.google.javascript.rhino.Node p_source_4776_line_170 = source;
	int PROBE_END_LINE_170 = 170;
	this.source = p_source_4776_line_170;
    int PROBE_START_LINE_171 = 171;
	com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_4774_line_171 = registry;
	int q_param_list_143_line_171 = Token.PARAM_LIST;
	int PROBE_END_LINE_171 = 171;
	this.call = new ArrowType(p_registry_4774_line_171, new Node(q_param_list_143_line_171), null);
    int PROBE_START_LINE_172 = 172;
	com.google.javascript.rhino.jstype.FunctionType.Kind q_interface_143_line_172 = Kind.INTERFACE;
	int PROBE_END_LINE_172 = 172;
	this.kind = q_interface_143_line_172;
    int PROBE_START_LINE_173 = 173;
	com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_4774_line_173 = registry;
	int PROBE_END_LINE_173 = 173;
	this.typeOfThis = new InstanceObjectType(p_registry_4774_line_173, this);
  }

  /** Creates an instance for a function that is an interface. */
  static FunctionType forInterface(
      JSTypeRegistry registry, String name, Node source) {
    int PROBE_START_LINE_179 = 179;
		com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_4777_line_179 = registry;
		String p_name_4778_line_179 = name;
		com.google.javascript.rhino.Node p_source_4779_line_179 = source;
		int PROBE_END_LINE_179 = 179;
	return new FunctionType(p_registry_4777_line_179, p_name_4778_line_179, p_source_4779_line_179);
  }

  @Override
  public boolean isInstanceType() {
    // The universal constructor is its own instance, bizarrely. It overrides
    // getConstructor() appropriately when it's declared.
    return this == registry.getNativeType(U2U_CONSTRUCTOR_TYPE);
  }

  @Override
  public boolean isConstructor() {
    int PROBE_START_LINE_191 = 191;
	com.google.javascript.rhino.jstype.FunctionType.Kind f_kind_4770_line_191 = kind;
	com.google.javascript.rhino.jstype.FunctionType.Kind q_constructor_144_line_191 = Kind.CONSTRUCTOR;
	boolean function_type_1_expr62_line_191 = f_kind_4770_line_191 == q_constructor_144_line_191;
	int PROBE_END_LINE_191 = 191;
	return function_type_1_expr62_line_191;
  }

  @Override
  public boolean isInterface() {
    int PROBE_START_LINE_196 = 196;
	com.google.javascript.rhino.jstype.FunctionType.Kind f_kind_4770_line_196 = kind;
	com.google.javascript.rhino.jstype.FunctionType.Kind q_interface_144_line_196 = Kind.INTERFACE;
	boolean function_type_1_expr63_line_196 = f_kind_4770_line_196 == q_interface_144_line_196;
	int PROBE_END_LINE_196 = 196;
	return function_type_1_expr63_line_196;
  }

  @Override
  public boolean isOrdinaryFunction() {
    return kind == Kind.ORDINARY;
  }

  /**
   * When a class B inherits from A and A is annotated as a struct, then B
   * automatically gets the annotation, even if B's constructor is not
   * explicitly annotated.
   */
  public boolean makesStructs() {
    if (!isConstructor()) {
      return false;
    }
    if (propAccess == PropAccess.STRUCT) {
      return true;
    }
    FunctionType superc = getSuperClassConstructor();
    if (superc != null && superc.makesStructs()) {
      setStruct();
      return true;
    }
    return false;
  }

  /**
   * When a class B inherits from A and A is annotated as a dict, then B
   * automatically gets the annotation, even if B's constructor is not
   * explicitly annotated.
   */
  public boolean makesDicts() {
    if (!isConstructor()) {
      return false;
    }
    if (propAccess == PropAccess.DICT) {
      return true;
    }
    FunctionType superc = getSuperClassConstructor();
    if (superc != null && superc.makesDicts()) {
      setDict();
      return true;
    }
    return false;
  }

  public void setStruct() {
    propAccess = PropAccess.STRUCT;
  }

  public void setDict() {
    propAccess = PropAccess.DICT;
  }

  @Override
  public FunctionType toMaybeFunctionType() {
    return this;
  }

  @Override
  public boolean canBeCalled() {
    return true;
  }

  public boolean hasImplementedInterfaces() {
    if (!implementedInterfaces.isEmpty()){
      return true;
    }
    FunctionType superCtor = isConstructor() ?
        getSuperClassConstructor() : null;
    if (superCtor != null) {
      return superCtor.hasImplementedInterfaces();
    }
    return false;
  }

  public Iterable<Node> getParameters() {
    Node n = getParametersNode();
    if (n != null) {
      return n.children();
    } else {
      return Collections.emptySet();
    }
  }

  /** Gets an LP node that contains all params. May be null. */
  public Node getParametersNode() {
    int PROBE_START_LINE_285 = 285;
	com.google.javascript.rhino.jstype.ArrowType f_call_4773_line_285 = call;
	com.google.javascript.rhino.Node q_parameters_144_line_285 = f_call_4773_line_285.parameters;
	int PROBE_END_LINE_285 = 285;
	return q_parameters_144_line_285;
  }

  /** Gets the minimum number of arguments that this function requires. */
  public int getMinArguments() {
    // NOTE(nicksantos): There are some native functions that have optional
    // parameters before required parameters. This algorithm finds the position
    // of the last required parameter.
    int i = 0;
    int min = 0;
    for (Node n : getParameters()) {
      i++;
      if (!n.isOptionalArg() && !n.isVarArgs()) {
        min = i;
      }
    }
    return min;
  }

  /**
   * Gets the maximum number of arguments that this function requires,
   * or Integer.MAX_VALUE if this is a variable argument function.
   */
  public int getMaxArguments() {
    Node params = getParametersNode();
    if (params != null) {
      Node lastParam = params.getLastChild();
      if (lastParam == null || !lastParam.isVarArgs()) {
        return params.getChildCount();
      }
    }

    return Integer.MAX_VALUE;
  }

  public JSType getReturnType() {
    return call.returnType;
  }

  public boolean isReturnTypeInferred() {
    return call.returnTypeInferred;
  }

  /** Gets the internal arrow type. For use by subclasses only. */
  ArrowType getInternalArrowType() {
    int PROBE_START_LINE_330 = 330;
	com.google.javascript.rhino.jstype.ArrowType f_call_4773_line_330 = call;
	int PROBE_END_LINE_330 = 330;
	return f_call_4773_line_330;
  }

  @Override
  public Property getSlot(String name) {
    int PROBE_START_LINE_335 = 341;
	String p_name_4780_line_335 = name;
	boolean function_type_1_expr65_line_335 = "prototype".equals(p_name_4780_line_335);
	int PROBE_END_LINE_335 = 341;
	if (function_type_1_expr65_line_335) {
      // Lazy initialization of the prototype field.
      getPrototype();
      int PROBE_START_LINE_338 = 338;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_4781_line_338 = prototypeSlot;
	int PROBE_END_LINE_338 = 338;
	return f_prototype_slot_4781_line_338;
    } else {
      return super.getSlot(name);
    }
  }

  /**
   * Includes the prototype iff someone has created it. We do not want
   * to expose the prototype for ordinary functions.
   */
  @Override
  public Set<String> getOwnPropertyNames() {
    if (prototypeSlot == null) {
      return super.getOwnPropertyNames();
    } else {
      Set<String> names = Sets.newHashSet("prototype");
      names.addAll(super.getOwnPropertyNames());
      return names;
    }
  }

  /**
   * Gets the {@code prototype} property of this function type. This is
   * equivalent to {@code (ObjectType) getPropertyType("prototype")}.
   */
  public ObjectType getPrototype() {
    int PROBE_START_LINE_365 = 383;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_4781_line_365 = prototypeSlot;
	boolean function_type_1_expr67_line_365 = f_prototype_slot_4781_line_365 == null;
	int PROBE_END_LINE_365 = 383;
	// lazy initialization of the prototype field
    if (function_type_1_expr67_line_365) {
      int PROBE_START_LINE_366 = 366;
		String function_type_1_expr68_line_366 = getReferenceName();
		int PROBE_END_LINE_366 = 366;
	String refName = function_type_1_expr68_line_366;
      int PROBE_START_LINE_367 = 382;
	String v_ref_name_4782_line_367 = refName;
	boolean function_type_1_expr69_line_367 = v_ref_name_4782_line_367 == null;
	int PROBE_END_LINE_367 = 382;
	if (function_type_1_expr69_line_367) {
        // Someone is trying to access the prototype of a structural function.
        // We don't want to give real properties to this prototype, because
        // then it would propagate to all structural functions.
        setPrototypeNoCheck(
           registry.getNativeObjectType(JSTypeNative.UNKNOWN_TYPE),
           null);
      } else {
        setPrototype(
            new PrototypeObjectType(
                registry,
                getReferenceName() + ".prototype",
                registry.getNativeObjectType(OBJECT_TYPE),
                isNativeObjectType(), null, null),
            null);
      }
    }
    int PROBE_START_LINE_384 = 384;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_4781_line_384 = prototypeSlot;
	com.google.javascript.rhino.jstype.JSType function_type_1_expr73_line_384 = f_prototype_slot_4781_line_384
			.getType();
	int PROBE_END_LINE_384 = 384;
	return (ObjectType) function_type_1_expr73_line_384;
  }

  /**
   * Sets the prototype, creating the prototype object from the given
   * base type.
   * @param baseType The base type.
   */
  public void setPrototypeBasedOn(ObjectType baseType) {
    int PROBE_START_LINE_393 = 393;
	com.google.javascript.rhino.jstype.ObjectType p_base_type_4783_line_393 = baseType;
	int PROBE_END_LINE_393 = 393;
	setPrototypeBasedOn(p_base_type_4783_line_393, null);
  }

  void setPrototypeBasedOn(ObjectType baseType, Node propertyNode) {
    int PROBE_START_LINE_414 = 419;
	com.google.javascript.rhino.jstype.ObjectType p_base_type_4784_line_414 = baseType;
	boolean function_type_1_expr76_line_414 = p_base_type_4784_line_414.hasReferenceName();
	boolean function_type_1_expr75_line_414 = function_type_1_expr76_line_414 || isNativeObjectType()
			|| baseType.isFunctionPrototypeType();
	int PROBE_END_LINE_414 = 419;
	// This is a bit weird. We need to successfully handle these
    // two cases:
    // Foo.prototype = new Bar();
    // and
    // Foo.prototype = {baz: 3};
    // In the first case, we do not want new properties to get
    // added to Bar. In the second case, we do want new properties
    // to get added to the type of the anonymous object.
    //
    // We handle this by breaking it into two cases:
    //
    // In the first case, we create a new PrototypeObjectType and set
    // its implicit prototype to the type being assigned. This ensures
    // that Bar will not get any properties of Foo.prototype, but properties
    // later assigned to Bar will get inherited properly.
    //
    // In the second case, we just use the anonymous object as the prototype.
    if (function_type_1_expr75_line_414) {
      baseType = new PrototypeObjectType(
          registry, getReferenceName() + ".prototype", baseType);
    }
    int PROBE_START_LINE_420 = 420;
	com.google.javascript.rhino.jstype.ObjectType p_base_type_4784_line_420 = baseType;
	com.google.javascript.rhino.Node p_property_node_4785_line_420 = propertyNode;
	int PROBE_END_LINE_420 = 420;
	setPrototype(p_base_type_4784_line_420, p_property_node_4785_line_420);
  }

  /**
   * Sets the prototype.
   * @param prototype the prototype. If this value is {@code null} it will
   *        silently be discarded.
   */
  boolean setPrototype(ObjectType prototype, Node propertyNode) {
    int PROBE_START_LINE_429 = 431;
	com.google.javascript.rhino.jstype.ObjectType p_prototype_4787_line_429 = prototype;
	boolean function_type_1_expr81_line_429 = p_prototype_4787_line_429 == null;
	int PROBE_END_LINE_429 = 431;
	if (function_type_1_expr81_line_429) {
      return false;
    }
    int PROBE_START_LINE_433 = 435;
	boolean function_type_1_expr83_line_433 = isConstructor();
	boolean function_type_1_expr84_line_433 = true;
	if (function_type_1_expr83_line_433) {
		com.google.javascript.rhino.jstype.ObjectType p_prototype_4787_line_433 = prototype;
		com.google.javascript.rhino.jstype.ObjectType function_type_1_expr85_line_433 = getInstanceType();
		function_type_1_expr84_line_433 = p_prototype_4787_line_433 == function_type_1_expr85_line_433;
	}
	boolean function_type_1_expr82_line_433 = function_type_1_expr83_line_433 && function_type_1_expr84_line_433;
	int PROBE_END_LINE_433 = 435;
	// getInstanceType fails if the function is not a constructor
    if (function_type_1_expr82_line_433) {
      return false;
    }
    int PROBE_START_LINE_436 = 436;
	com.google.javascript.rhino.jstype.ObjectType p_prototype_4787_line_436 = prototype;
	com.google.javascript.rhino.Node p_property_node_4788_line_436 = propertyNode;
	boolean function_type_1_expr86_line_436 = setPrototypeNoCheck(p_prototype_4787_line_436,
			p_property_node_4788_line_436);
	int PROBE_END_LINE_436 = 436;
	return function_type_1_expr86_line_436;
  }

  /** Set the prototype without doing any sanity checks. */
  private boolean setPrototypeNoCheck(ObjectType prototype, Node propertyNode) {
    int PROBE_START_LINE_441 = 442;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_4781_line_441 = prototypeSlot;
	boolean function_type_1_expr88_line_441 = f_prototype_slot_4781_line_441 == null;
	ObjectType function_type_1_expr87_line_441 = function_type_1_expr88_line_441
			? null
			: (ObjectType) prototypeSlot.getType();
	int PROBE_END_LINE_441 = 442;
	ObjectType oldPrototype = function_type_1_expr87_line_441;
    int PROBE_START_LINE_443 = 443;
	com.google.javascript.rhino.jstype.ObjectType v_old_prototype_4791_line_443 = oldPrototype;
	boolean function_type_1_expr90_line_443 = v_old_prototype_4791_line_443 != null;
	int PROBE_END_LINE_443 = 443;
	boolean replacedPrototype = function_type_1_expr90_line_443;

    int PROBE_START_LINE_445 = 446;
	com.google.javascript.rhino.jstype.ObjectType p_prototype_4789_line_445 = prototype;
	int PROBE_END_LINE_445 = 446;
	this.prototypeSlot = new Property("prototype", p_prototype_4789_line_445, true,
        propertyNode == null ? source : propertyNode);
    int PROBE_START_LINE_447 = 447;
	com.google.javascript.rhino.jstype.ObjectType p_prototype_4789_line_447 = prototype;
	int PROBE_END_LINE_447 = 447;
	p_prototype_4789_line_447.setOwnerFunction(this);

    int PROBE_START_LINE_449 = 453;
	com.google.javascript.rhino.jstype.ObjectType v_old_prototype_4791_line_449 = oldPrototype;
	boolean function_type_1_expr98_line_449 = v_old_prototype_4791_line_449 != null;
	int PROBE_END_LINE_449 = 453;
	if (function_type_1_expr98_line_449) {
      // Disassociating the old prototype makes this easier to debug--
      // we don't have to worry about two prototypes running around.
      oldPrototype.setOwnerFunction(null);
    }

    int PROBE_START_LINE_455 = 468;
	boolean function_type_1_expr100_line_455 = isConstructor();
	boolean function_type_1_expr101_line_455 = false;
	if (!function_type_1_expr100_line_455) {
		function_type_1_expr101_line_455 = isInterface();
	}
	boolean function_type_1_expr99_line_455 = function_type_1_expr100_line_455 || function_type_1_expr101_line_455;
	int PROBE_END_LINE_455 = 468;
	if (function_type_1_expr99_line_455) {
      int PROBE_START_LINE_456 = 456;
		FunctionType function_type_1_expr102_line_456 = getSuperClassConstructor();
		int PROBE_END_LINE_456 = 456;
	FunctionType superClass = function_type_1_expr102_line_456;
      int PROBE_START_LINE_457 = 459;
	com.google.javascript.rhino.jstype.FunctionType v_super_class_4793_line_457 = superClass;
	boolean function_type_1_expr103_line_457 = v_super_class_4793_line_457 != null;
	int PROBE_END_LINE_457 = 459;
	if (function_type_1_expr103_line_457) {
        int PROBE_START_LINE_458 = 458;
		com.google.javascript.rhino.jstype.FunctionType v_super_class_4793_line_458 = superClass;
		int PROBE_END_LINE_458 = 458;
		v_super_class_4793_line_458.addSubType(this);
      }

      int PROBE_START_LINE_461 = 467;
	boolean function_type_1_expr106_line_461 = isInterface();
	int PROBE_END_LINE_461 = 467;
	if (function_type_1_expr106_line_461) {
        int PROBE_START_LINE_462 = 466;
		Iterable<com.google.javascript.rhino.jstype.ObjectType> function_type_1_expr107_line_462 = getExtendedInterfaces();
		int PROBE_END_LINE_462 = 466;
		for (ObjectType interfaceType : function_type_1_expr107_line_462) {
          int PROBE_START_LINE_463 = 465;
			com.google.javascript.rhino.jstype.ObjectType v_interface_type_4794_line_463 = interfaceType;
			com.google.javascript.rhino.jstype.FunctionType function_type_1_expr109_line_463 = v_interface_type_4794_line_463
					.getConstructor();
			boolean function_type_1_expr108_line_463 = function_type_1_expr109_line_463 != null;
			int PROBE_END_LINE_463 = 465;
		if (function_type_1_expr108_line_463) {
            interfaceType.getConstructor().addSubType(this);
          }
        }
      }
    }

    int PROBE_START_LINE_470 = 472;
	boolean v_replaced_prototype_4792_line_470 = replacedPrototype;
	int PROBE_END_LINE_470 = 472;
	if (v_replaced_prototype_4792_line_470) {
      clearCachedValues();
    }

    return true;
  }

  /**
   * Returns all interfaces implemented by a class or its superclass and any
   * superclasses for any of those interfaces. If this is called before all
   * types are resolved, it may return an incomplete set.
   */
  public Iterable<ObjectType> getAllImplementedInterfaces() {
    // Store them in a linked hash set, so that the compile job is
    // deterministic.
    Set<ObjectType> interfaces = Sets.newLinkedHashSet();

    for (ObjectType type : getImplementedInterfaces()) {
      addRelatedInterfaces(type, interfaces);
    }
    return interfaces;
  }

  private void addRelatedInterfaces(ObjectType instance, Set<ObjectType> set) {
    FunctionType constructor = instance.getConstructor();
    if (constructor != null) {
      if (!constructor.isInterface()) {
        return;
      }

      set.add(instance);

      for (ObjectType interfaceType : instance.getCtorExtendedInterfaces()) {
        addRelatedInterfaces(interfaceType, set);
      }
    }
  }

  /** Returns interfaces implemented directly by a class or its superclass. */
  public Iterable<ObjectType> getImplementedInterfaces() {
    FunctionType superCtor = isConstructor() ?
        getSuperClassConstructor() : null;
    if (superCtor == null) {
      return implementedInterfaces;
    } else {
      return Iterables.concat(
          implementedInterfaces, superCtor.getImplementedInterfaces());
    }
  }

  /** Returns interfaces directly implemented by the class. */
  public Iterable<ObjectType> getOwnImplementedInterfaces() {
    return implementedInterfaces;
  }

  public void setImplementedInterfaces(List<ObjectType> implementedInterfaces) {
    if (isConstructor()) {
      // Records this type for each implemented interface.
      for (ObjectType type : implementedInterfaces) {
        registry.registerTypeImplementingInterface(this, type);
      }
      this.implementedInterfaces = ImmutableList.copyOf(implementedInterfaces);
    } else {
      throw new UnsupportedOperationException();
    }
  }

  /**
   * Returns all extended interfaces declared by an interfaces or its super-
   * interfaces. If this is called before all types are resolved, it may return
   * an incomplete set.
   */
  public Iterable<ObjectType> getAllExtendedInterfaces() {
    // Store them in a linked hash set, so that the compile job is
    // deterministic.
    Set<ObjectType> extendedInterfaces = Sets.newLinkedHashSet();

    for (ObjectType interfaceType : getExtendedInterfaces()) {
      addRelatedExtendedInterfaces(interfaceType, extendedInterfaces);
    }
    return extendedInterfaces;
  }

  private void addRelatedExtendedInterfaces(ObjectType instance,
      Set<ObjectType> set) {
    FunctionType constructor = instance.getConstructor();
    if (constructor != null) {
      set.add(instance);

      for (ObjectType interfaceType : constructor.getExtendedInterfaces()) {
        addRelatedExtendedInterfaces(interfaceType, set);
      }
    }
  }

  /** Returns interfaces directly extended by an interface */
  public Iterable<ObjectType> getExtendedInterfaces() {
    int PROBE_START_LINE_567 = 567;
	List<com.google.javascript.rhino.jstype.ObjectType> f_extended_interfaces_4760_line_567 = extendedInterfaces;
	int PROBE_END_LINE_567 = 567;
	return f_extended_interfaces_4760_line_567;
  }

  /** Returns the number of interfaces directly extended by an interface */
  public int getExtendedInterfacesCount() {
    int PROBE_START_LINE_572 = 572;
	List<com.google.javascript.rhino.jstype.ObjectType> f_extended_interfaces_4760_line_572 = extendedInterfaces;
	int function_type_1_expr110_line_572 = f_extended_interfaces_4760_line_572.size();
	int PROBE_END_LINE_572 = 572;
	return function_type_1_expr110_line_572;
  }

  public void setExtendedInterfaces(List<ObjectType> extendedInterfaces)
    throws UnsupportedOperationException {
    int PROBE_START_LINE_577 = 581;
		boolean function_type_1_expr111_line_577 = isInterface();
		int PROBE_END_LINE_577 = 581;
	if (function_type_1_expr111_line_577) {
      int PROBE_START_LINE_578 = 578;
		List<com.google.javascript.rhino.jstype.ObjectType> p_extended_interfaces_4800_line_578 = extendedInterfaces;
		ImmutableList<com.google.javascript.rhino.jstype.ObjectType> function_type_1_expr114_line_578 = ImmutableList
				.copyOf(p_extended_interfaces_4800_line_578);
		int PROBE_END_LINE_578 = 578;
	this.extendedInterfaces = function_type_1_expr114_line_578;
    } else {
      throw new UnsupportedOperationException();
    }
  }

  @Override
  public JSType getPropertyType(String name) {
    if (!hasOwnProperty(name)) {
      // Define the "call", "apply", and "bind" functions lazily.
      boolean isCall = "call".equals(name);
      boolean isBind = "bind".equals(name);
      if (isCall || isBind) {
        defineDeclaredProperty(name, getCallOrBindSignature(isCall), source);
      } else if ("apply".equals(name)) {
        // Define the "apply" function lazily.
        FunctionParamBuilder builder = new FunctionParamBuilder(registry);

        // ECMA-262 says that apply's second argument must be an Array
        // or an arguments object. We don't model the arguments object,
        // so let's just be forgiving for now.
        // TODO(nicksantos): Model the Arguments object.
        builder.addOptionalParams(
            registry.createNullableType(getTypeOfThis()),
            registry.createNullableType(
                registry.getNativeType(JSTypeNative.OBJECT_TYPE)));

        defineDeclaredProperty(name,
            new FunctionBuilder(registry)
            .withParams(builder)
            .withReturnType(getReturnType())
            .withTemplateKeys(getTemplateKeys())
            .build(),
            source);
      }
    }

    return super.getPropertyType(name);
  }

  /**
   * Get the return value of calling "bind" on this function
   * with the specified number of arguments.
   *
   * If -1 is passed, then we will return a result that accepts
   * any parameters.
   */
  public FunctionType getBindReturnType(int argsToBind) {
    FunctionBuilder builder = new FunctionBuilder(registry)
        .withReturnType(getReturnType())
        .withTemplateKeys(getTemplateKeys());
    if (argsToBind >= 0) {
      Node origParams = getParametersNode();
      if (origParams != null) {
        Node params = origParams.cloneTree();
        for (int i = 1; i < argsToBind && params.getFirstChild() != null; i++) {
          if (params.getFirstChild().isVarArgs()) {
            break;
          }
          params.removeFirstChild();
        }
        builder.withParamsNode(params);
      }
    }
    return builder.build();
  }

  /**
   * Notice that "call" and "bind" have the same argument signature,
   * except that all the arguments of "bind" (except the first)
   * are optional.
   */
  private FunctionType getCallOrBindSignature(boolean isCall) {
    boolean isBind = !isCall;
    FunctionBuilder builder = new FunctionBuilder(registry)
        .withReturnType(isCall ? getReturnType() : getBindReturnType(-1))
        .withTemplateKeys(getTemplateKeys());

    Node origParams = getParametersNode();
    if (origParams != null) {
      Node params = origParams.cloneTree();

      Node thisTypeNode = Node.newString(Token.NAME, "thisType");
      thisTypeNode.setJSType(
          registry.createOptionalNullableType(getTypeOfThis()));
      params.addChildToFront(thisTypeNode);

      if (isBind) {
        // The arguments of bind() are unique in that they are all
        // optional but not undefinable.
        for (Node current = thisTypeNode.getNext();
             current != null; current = current.getNext()) {
          current.setOptionalArg(true);
        }
      } else if (isCall) {
        // The first argument of call() is optional iff all the arguments
        // are optional. It's sufficient to check the first argument.
        Node firstArg = thisTypeNode.getNext();
        if (firstArg == null
            || firstArg.isOptionalArg()
            || firstArg.isVarArgs()) {
          thisTypeNode.setOptionalArg(true);
        }
      }

      builder.withParamsNode(params);
    }

    return builder.build();
  }

  @Override
  boolean defineProperty(String name, JSType type,
      boolean inferred, Node propertyNode) {
    if ("prototype".equals(name)) {
      ObjectType objType = type.toObjectType();
      if (objType != null) {
        if (prototypeSlot != null &&
            objType.isEquivalentTo(prototypeSlot.getType())) {
          return true;
        }
        setPrototypeBasedOn(objType, propertyNode);
        return true;
      } else {
        return false;
      }
    }
    return super.defineProperty(name, type, inferred, propertyNode);
  }

  /**
   * Computes the supremum or infimum of two functions.
   * Because sup() and inf() share a lot of logic for functions, we use
   * a single helper.
   * @param leastSuper If true, compute the supremum of {@code this} with
   *     {@code that}. Otherwise, compute the infimum.
   * @return The least supertype or greatest subtype.
   */
  FunctionType supAndInfHelper(FunctionType that, boolean leastSuper) {
    // NOTE(nicksantos): When we remove the unknown type, the function types
    // form a lattice with the universal constructor at the top of the lattice,
    // and the LEAST_FUNCTION_TYPE type at the bottom of the lattice.
    //
    // When we introduce the unknown type, it's much more difficult to make
    // heads or tails of the partial ordering of types, because there's no
    // clear hierarchy between the different components (parameter types and
    // return types) in the ArrowType.
    //
    // Rather than make the situation more complicated by introducing new
    // types (like unions of functions), we just fallback on the simpler
    // approach of getting things right at the top and the bottom of the
    // lattice.
    //
    // If there are unknown parameters or return types making things
    // ambiguous, then sup(A, B) is always the top function type, and
    // inf(A, B) is always the bottom function type.
    Preconditions.checkNotNull(that);

    if (isEquivalentTo(that)) {
      return this;
    }

    // If these are ordinary functions, then merge them.
    // Don't do this if any of the params/return
    // values are unknown, because then there will be cycles in
    // their local lattice and they will merge in weird ways.
    if (isOrdinaryFunction() && that.isOrdinaryFunction() &&
        !this.call.hasUnknownParamsOrReturn() &&
        !that.call.hasUnknownParamsOrReturn()) {

      // Check for the degenerate case, but double check
      // that there's not a cycle.
      boolean isSubtypeOfThat = isSubtype(that);
      boolean isSubtypeOfThis = that.isSubtype(this);
      if (isSubtypeOfThat && !isSubtypeOfThis) {
        return leastSuper ? that : this;
      } else if (isSubtypeOfThis && !isSubtypeOfThat) {
        return leastSuper ? this : that;
      }

      // Merge the two functions component-wise.
      FunctionType merged = tryMergeFunctionPiecewise(that, leastSuper);
      if (merged != null) {
        return merged;
      }
    }

    // The function instance type is a special case
    // that lives above the rest of the lattice.
    JSType functionInstance = registry.getNativeType(
        JSTypeNative.FUNCTION_INSTANCE_TYPE);
    if (functionInstance.isEquivalentTo(that)) {
      return leastSuper ? that : this;
    } else if (functionInstance.isEquivalentTo(this)) {
      return leastSuper ? this : that;
    }

    // In theory, we should be using the GREATEST_FUNCTION_TYPE as the
    // greatest function. In practice, we don't because it's way too
    // broad. The greatest function takes var_args None parameters, which
    // means that all parameters register a type warning.
    //
    // Instead, we use the U2U ctor type, which has unknown type args.
    FunctionType greatestFn =
        registry.getNativeFunctionType(JSTypeNative.U2U_CONSTRUCTOR_TYPE);
    FunctionType leastFn =
        registry.getNativeFunctionType(JSTypeNative.LEAST_FUNCTION_TYPE);
    return leastSuper ? greatestFn : leastFn;
  }

  /**
   * Try to get the sup/inf of two functions by looking at the
   * piecewise components.
   */
  private FunctionType tryMergeFunctionPiecewise(
      FunctionType other, boolean leastSuper) {
    Node newParamsNode = null;
    if (call.hasEqualParameters(other.call, EquivalenceMethod.IDENTITY)) {
      newParamsNode = call.parameters;
    } else {
      // If the parameters are not equal, don't try to merge them.
      // Someday, we should try to merge the individual params.
      return null;
    }

    JSType newReturnType = leastSuper ?
        call.returnType.getLeastSupertype(other.call.returnType) :
        call.returnType.getGreatestSubtype(other.call.returnType);

    JSType newTypeOfThis = null;
    if (isEquivalent(typeOfThis, other.typeOfThis)) {
      newTypeOfThis = typeOfThis;
    } else {
      JSType maybeNewTypeOfThis = leastSuper ?
          typeOfThis.getLeastSupertype(other.typeOfThis) :
          typeOfThis.getGreatestSubtype(other.typeOfThis);
      newTypeOfThis = maybeNewTypeOfThis;
    }

    boolean newReturnTypeInferred =
        call.returnTypeInferred || other.call.returnTypeInferred;

    return new FunctionType(
        registry, null, null,
        new ArrowType(
            registry, newParamsNode, newReturnType, newReturnTypeInferred),
        newTypeOfThis, null, false, false);
  }

  /**
   * Given a constructor or an interface type, get its superclass constructor
   * or {@code null} if none exists.
   */
  public FunctionType getSuperClassConstructor() {
    int PROBE_START_LINE_832 = 832;
	boolean function_type_1_expr118_line_832 = isConstructor();
	boolean function_type_1_expr119_line_832 = false;
	if (!function_type_1_expr118_line_832) {
		function_type_1_expr119_line_832 = isInterface();
	}
	boolean function_type_1_expr117_line_832 = function_type_1_expr118_line_832 || function_type_1_expr119_line_832;
	int PROBE_END_LINE_832 = 832;
	Preconditions.checkArgument(function_type_1_expr117_line_832);
    int PROBE_START_LINE_833 = 833;
	com.google.javascript.rhino.jstype.ObjectType function_type_1_expr121_line_833 = getPrototype();
	ObjectType function_type_1_expr120_line_833 = function_type_1_expr121_line_833.getImplicitPrototype();
	int PROBE_END_LINE_833 = 833;
	ObjectType maybeSuperInstanceType = function_type_1_expr120_line_833;
    int PROBE_START_LINE_834 = 836;
	com.google.javascript.rhino.jstype.ObjectType v_maybe_super_instance_type_4812_line_834 = maybeSuperInstanceType;
	boolean function_type_1_expr122_line_834 = v_maybe_super_instance_type_4812_line_834 == null;
	int PROBE_END_LINE_834 = 836;
	if (function_type_1_expr122_line_834) {
      return null;
    }
    int PROBE_START_LINE_837 = 837;
	com.google.javascript.rhino.jstype.ObjectType v_maybe_super_instance_type_4812_line_837 = maybeSuperInstanceType;
	com.google.javascript.rhino.jstype.FunctionType function_type_1_expr123_line_837 = v_maybe_super_instance_type_4812_line_837
			.getConstructor();
	int PROBE_END_LINE_837 = 837;
	return function_type_1_expr123_line_837;
  }

  /**
   * Given an interface and a property, finds the top-most super interface
   * that has the property defined (including this interface).
   */
  public static ObjectType getTopDefiningInterface(ObjectType type,
      String propertyName) {
    ObjectType foundType = null;
    if (type.hasProperty(propertyName)) {
      foundType = type;
    }
    for (ObjectType interfaceType : type.getCtorExtendedInterfaces()) {
      if (interfaceType.hasProperty(propertyName)) {
        foundType = getTopDefiningInterface(interfaceType, propertyName);
      }
    }
    return foundType;
  }

  /**
   * Given a constructor or an interface type and a property, finds the
   * top-most superclass that has the property defined (including this
   * constructor).
   */
  public ObjectType getTopMostDefiningType(String propertyName) {
    Preconditions.checkState(isConstructor() || isInterface());
    Preconditions.checkArgument(getInstanceType().hasProperty(propertyName));
    FunctionType ctor = this;

    if (isInterface()) {
      return getTopDefiningInterface(getInstanceType(), propertyName);
    }

    ObjectType topInstanceType = null;
    do {
      topInstanceType = ctor.getInstanceType();
      ctor = ctor.getSuperClassConstructor();
    } while (ctor != null
        && ctor.getPrototype().hasProperty(propertyName));

    return topInstanceType;
  }

  /**
   * Two function types are equal if their signatures match. Since they don't
   * have signatures, two interfaces are equal if their names match.
   */
  boolean checkFunctionEquivalenceHelper(
      FunctionType that, EquivalenceMethod eqMethod) {
    if (isConstructor()) {
      if (that.isConstructor()) {
        return this == that;
      }
      return false;
    }
    if (isInterface()) {
      if (that.isInterface()) {
        return getReferenceName().equals(that.getReferenceName());
      }
      return false;
    }
    if (that.isInterface()) {
      return false;
    }

    return typeOfThis.checkEquivalenceHelper(that.typeOfThis, eqMethod) &&
        call.checkArrowEquivalenceHelper(that.call, eqMethod);
  }

  @Override
  public int hashCode() {
    return isInterface() ? getReferenceName().hashCode() : call.hashCode();
  }

  public boolean hasEqualCallType(FunctionType otherType) {
    return this.call.checkArrowEquivalenceHelper(
        otherType.call, EquivalenceMethod.IDENTITY);
  }

  /**
   * Informally, a function is represented by
   * {@code function (params): returnType} where the {@code params} is a comma
   * separated list of types, the first one being a special
   * {@code this:T} if the function expects a known type for {@code this}.
   */
  @Override
  String toStringHelper(boolean forAnnotations) {
    if (!isPrettyPrint() ||
        this == registry.getNativeType(JSTypeNative.FUNCTION_INSTANCE_TYPE)) {
      return "Function";
    }

    setPrettyPrint(false);

    StringBuilder b = new StringBuilder(32);
    b.append("function (");
    int paramNum = call.parameters.getChildCount();
    boolean hasKnownTypeOfThis = !(typeOfThis instanceof UnknownType);
    if (hasKnownTypeOfThis) {
      if (isConstructor()) {
        b.append("new:");
      } else {
        b.append("this:");
      }
      b.append(typeOfThis.toStringHelper(forAnnotations));
    }
    if (paramNum > 0) {
      if (hasKnownTypeOfThis) {
        b.append(", ");
      }
      Node p = call.parameters.getFirstChild();
      appendArgString(b, p, forAnnotations);

      p = p.getNext();
      while (p != null) {
        b.append(", ");
        appendArgString(b, p, forAnnotations);
        p = p.getNext();
      }
    }
    b.append("): ");
    b.append(call.returnType.toStringHelper(forAnnotations));

    setPrettyPrint(true);
    return b.toString();
  }

  private void appendArgString(
      StringBuilder b, Node p, boolean forAnnotations) {
    if (p.isVarArgs()) {
      appendVarArgsString(b, p.getJSType(), forAnnotations);
    } else if (p.isOptionalArg()) {
      appendOptionalArgString(b, p.getJSType(), forAnnotations);
    } else {
      b.append(p.getJSType().toStringHelper(forAnnotations));
    }
  }

  /** Gets the string representation of a var args param. */
  private void appendVarArgsString(StringBuilder builder, JSType paramType,
      boolean forAnnotations) {
    if (paramType.isUnionType()) {
      // Remove the optionality from the var arg.
      paramType = paramType.toMaybeUnionType().getRestrictedUnion(
          registry.getNativeType(JSTypeNative.VOID_TYPE));
    }
    builder.append("...[").append(
        paramType.toStringHelper(forAnnotations)).append("]");
  }

  /** Gets the string representation of an optional param. */
  private void appendOptionalArgString(
      StringBuilder builder, JSType paramType, boolean forAnnotations) {
    if (paramType.isUnionType()) {
      // Remove the optionality from the var arg.
      paramType = paramType.toMaybeUnionType().getRestrictedUnion(
          registry.getNativeType(JSTypeNative.VOID_TYPE));
    }
    builder.append(paramType.toStringHelper(forAnnotations)).append("=");
  }

  /**
   * A function is a subtype of another if their call methods are related via
   * subtyping and {@code this} is a subtype of {@code that} with regard to
   * the prototype chain.
   */
  @Override
  public boolean isSubtype(JSType that) {
    if (JSType.isSubtypeHelper(this, that)) {
      return true;
    }

    if (that.isFunctionType()) {
      FunctionType other = that.toMaybeFunctionType();
      if (other.isInterface()) {
        // Any function can be assigned to an interface function.
        return true;
      }
      if (isInterface()) {
        // An interface function cannot be assigned to anything.
        return false;
      }

      // If functionA is a subtype of functionB, then their "this" types
      // should be contravariant. However, this causes problems because
      // of the way we enforce overrides. Because function(this:SubFoo)
      // is not a subtype of function(this:Foo), our override check treats
      // this as an error. Let's punt on all this for now.
      // TODO(nicksantos): fix this.
      boolean treatThisTypesAsCovariant =
        // An interface 'this'-type is non-restrictive.
        // In practical terms, if C implements I, and I has a method m,
        // then any m doesn't necessarily have to C#m's 'this'
        // type doesn't need to match I.
        (other.typeOfThis.toObjectType() != null &&
             other.typeOfThis.toObjectType().getConstructor() != null &&
             other.typeOfThis.toObjectType().getConstructor().isInterface()) ||

        // If one of the 'this' types is covariant of the other,
        // then we'll treat them as covariant (see comment above).
        other.typeOfThis.isSubtype(this.typeOfThis) ||
        this.typeOfThis.isSubtype(other.typeOfThis);
      return treatThisTypesAsCovariant && this.call.isSubtype(other.call);
    }

    return getNativeType(JSTypeNative.FUNCTION_PROTOTYPE).isSubtype(that);
  }

  @Override
  public <T> T visit(Visitor<T> visitor) {
    return visitor.caseFunctionType(this);
  }

  @Override <T> T visit(RelationshipVisitor<T> visitor, JSType that) {
    return visitor.caseFunctionType(this, that);
  }

  /**
   * Gets the type of instance of this function.
   * @throws IllegalStateException if this function is not a constructor
   *         (see {@link #isConstructor()}).
   */
  public ObjectType getInstanceType() {
    int PROBE_START_LINE_1062 = 1062;
	boolean function_type_1_expr125_line_1062 = hasInstanceType();
	int PROBE_END_LINE_1062 = 1062;
	Preconditions.checkState(function_type_1_expr125_line_1062);
    int PROBE_START_LINE_1063 = 1063;
	com.google.javascript.rhino.jstype.JSType f_type_of_this_4772_line_1063 = typeOfThis;
	com.google.javascript.rhino.jstype.ObjectType function_type_1_expr126_line_1063 = f_type_of_this_4772_line_1063
			.toObjectType();
	int PROBE_END_LINE_1063 = 1063;
	return function_type_1_expr126_line_1063;
  }

  /**
   * Sets the instance type. This should only be used for special
   * native types.
   */
  void setInstanceType(ObjectType instanceType) {
    int PROBE_START_LINE_1071 = 1071;
	com.google.javascript.rhino.jstype.ObjectType p_instance_type_4833_line_1071 = instanceType;
	int PROBE_END_LINE_1071 = 1071;
	typeOfThis = p_instance_type_4833_line_1071;
  }

  /**
   * Returns whether this function type has an instance type.
   */
  public boolean hasInstanceType() {
    int PROBE_START_LINE_1078 = 1078;
	boolean function_type_1_expr129_line_1078 = isConstructor();
	boolean function_type_1_expr130_line_1078 = false;
	if (!function_type_1_expr129_line_1078) {
		function_type_1_expr130_line_1078 = isInterface();
	}
	boolean function_type_1_expr128_line_1078 = function_type_1_expr129_line_1078 || function_type_1_expr130_line_1078;
	int PROBE_END_LINE_1078 = 1078;
	return function_type_1_expr128_line_1078;
  }

  /**
   * Gets the type of {@code this} in this function.
   */
  @Override
  public JSType getTypeOfThis() {
    int PROBE_START_LINE_1086 = 1087;
	com.google.javascript.rhino.jstype.JSType f_type_of_this_4772_line_1086 = typeOfThis;
	boolean function_type_1_expr132_line_1086 = f_type_of_this_4772_line_1086.isEmptyType();
	com.google.javascript.rhino.jstype.JSType function_type_1_expr131_line_1086 = function_type_1_expr132_line_1086
			? registry.getNativeObjectType(JSTypeNative.UNKNOWN_TYPE)
			: typeOfThis;
	int PROBE_END_LINE_1086 = 1087;
	return function_type_1_expr131_line_1086;
  }

  /**
   * Gets the source node or null if this is an unknown function.
   */
  public Node getSource() {
    return source;
  }

  /**
   * Sets the source node.
   */
  public void setSource(Node source) {
    if (prototypeSlot != null) {
      // NOTE(bashir): On one hand when source is null we want to drop any
      // references to old nodes retained in prototypeSlot. On the other hand
      // we cannot simply drop prototypeSlot, so we retain all information
      // except the propertyNode for which we use an approximation! These
      // details mostly matter in hot-swap passes.
      if (source == null || prototypeSlot.getNode() == null) {
        prototypeSlot = new Property(prototypeSlot.getName(),
            prototypeSlot.getType(), prototypeSlot.isTypeInferred(), source);
      }
    }
    this.source = source;
  }

  /** Adds a type to the list of subtypes for this type. */
  private void addSubType(FunctionType subType) {
    int PROBE_START_LINE_1117 = 1119;
	List<com.google.javascript.rhino.jstype.FunctionType> f_sub_types_4836_line_1117 = subTypes;
	boolean function_type_1_expr134_line_1117 = f_sub_types_4836_line_1117 == null;
	int PROBE_END_LINE_1117 = 1119;
	if (function_type_1_expr134_line_1117) {
      int PROBE_START_LINE_1118 = 1118;
		ArrayList<com.google.javascript.rhino.jstype.FunctionType> function_type_1_expr136_line_1118 = Lists
				.newArrayList();
		int PROBE_END_LINE_1118 = 1118;
	subTypes = function_type_1_expr136_line_1118;
    }
    int PROBE_START_LINE_1120 = 1120;
	List<com.google.javascript.rhino.jstype.FunctionType> f_sub_types_4836_line_1120 = subTypes;
	com.google.javascript.rhino.jstype.FunctionType p_sub_type_4835_line_1120 = subType;
	int PROBE_END_LINE_1120 = 1120;
	f_sub_types_4836_line_1120.add(p_sub_type_4835_line_1120);
  }

  @Override
  public void clearCachedValues() {
    super.clearCachedValues();

    if (subTypes != null) {
      for (FunctionType subType : subTypes) {
        subType.clearCachedValues();
      }
    }

    if (!isNativeObjectType()) {
      if (hasInstanceType()) {
        getInstanceType().clearCachedValues();
      }

      if (prototypeSlot != null) {
        ((ObjectType) prototypeSlot.getType()).clearCachedValues();
      }
    }
  }

  /**
   * Returns a list of types that are subtypes of this type. This is only valid
   * for constructor functions, and may be null. This allows a downward
   * traversal of the subtype graph.
   */
  public List<FunctionType> getSubTypes() {
    return subTypes;
  }

  @Override
  public boolean hasCachedValues() {
    int PROBE_START_LINE_1155 = 1155;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_4781_line_1155 = prototypeSlot;
	boolean function_type_1_expr139_line_1155 = f_prototype_slot_4781_line_1155 != null;
	boolean function_type_1_expr140_line_1155 = false;
	if (!function_type_1_expr139_line_1155) {
		function_type_1_expr140_line_1155 = super.hasCachedValues();
	}
	boolean function_type_1_expr138_line_1155 = function_type_1_expr139_line_1155 || function_type_1_expr140_line_1155;
	int PROBE_END_LINE_1155 = 1155;
	return function_type_1_expr138_line_1155;
  }

  @Override
  JSType resolveInternal(ErrorReporter t, StaticScope<JSType> scope) {
    setResolvedTypeInternal(this);

    int PROBE_START_LINE_1162 = 1162;
	com.google.javascript.rhino.jstype.ArrowType f_call_4773_line_1162 = call;
	com.google.javascript.rhino.ErrorReporter p_t_4837_line_1162 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_4838_line_1162 = scope;
	com.google.javascript.rhino.jstype.JSType function_type_1_expr145_line_1162 = safeResolve(f_call_4773_line_1162,
			p_t_4837_line_1162, p_scope_4838_line_1162);
	int PROBE_END_LINE_1162 = 1162;
	call = (ArrowType) function_type_1_expr145_line_1162;
    int PROBE_START_LINE_1163 = 1166;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_4781_line_1163 = prototypeSlot;
	boolean function_type_1_expr146_line_1163 = f_prototype_slot_4781_line_1163 != null;
	int PROBE_END_LINE_1163 = 1166;
	if (function_type_1_expr146_line_1163) {
      int PROBE_START_LINE_1164 = 1165;
		com.google.javascript.rhino.jstype.Property f_prototype_slot_4781_line_1164 = prototypeSlot;
		int PROBE_END_LINE_1164 = 1165;
	f_prototype_slot_4781_line_1164.setType(
          safeResolve(prototypeSlot.getType(), t, scope));
    }

    int PROBE_START_LINE_1179 = 1179;
	com.google.javascript.rhino.jstype.JSType f_type_of_this_4772_line_1179 = typeOfThis;
	com.google.javascript.rhino.ErrorReporter p_t_4837_line_1179 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_4838_line_1179 = scope;
	JSType function_type_1_expr149_line_1179 = safeResolve(f_type_of_this_4772_line_1179, p_t_4837_line_1179,
			p_scope_4838_line_1179);
	int PROBE_END_LINE_1179 = 1179;
	// Warning about typeOfThis if it doesn't resolve to an ObjectType
    // is handled further upstream.
    //
    // TODO(nicksantos): Handle this correctly if we have a UnionType.
    //
    // TODO(nicksantos): In ES3, the run-time coerces "null" to the global
    // activation object. In ES5, it leaves it as null. Just punt on this
    // issue for now by coercing out null. This is complicated by the
    // fact that when most people write @this {Foo}, they really don't
    // mean "nullable Foo". For certain tags (like @extends) we de-nullify
    // the name for them.
    JSType maybeTypeOfThis = function_type_1_expr149_line_1179;
    int PROBE_START_LINE_1180 = 1182;
	com.google.javascript.rhino.jstype.JSType v_maybe_type_of_this_4839_line_1180 = maybeTypeOfThis;
	boolean function_type_1_expr150_line_1180 = v_maybe_type_of_this_4839_line_1180 != null;
	int PROBE_END_LINE_1180 = 1182;
	if (function_type_1_expr150_line_1180) {
      int PROBE_START_LINE_1181 = 1181;
		com.google.javascript.rhino.jstype.JSType v_maybe_type_of_this_4839_line_1181 = maybeTypeOfThis;
		com.google.javascript.rhino.jstype.JSType function_type_1_expr152_line_1181 = v_maybe_type_of_this_4839_line_1181
				.restrictByNotNullOrUndefined();
		int PROBE_END_LINE_1181 = 1181;
	maybeTypeOfThis = function_type_1_expr152_line_1181;
    }
    int PROBE_START_LINE_1183 = 1185;
	com.google.javascript.rhino.jstype.JSType v_maybe_type_of_this_4839_line_1183 = maybeTypeOfThis;
	boolean function_type_1_expr153_line_1183 = v_maybe_type_of_this_4839_line_1183 instanceof ObjectType;
	int PROBE_END_LINE_1183 = 1185;
	if (function_type_1_expr153_line_1183) {
      int PROBE_START_LINE_1184 = 1184;
		com.google.javascript.rhino.jstype.JSType v_maybe_type_of_this_4839_line_1184 = maybeTypeOfThis;
		int PROBE_END_LINE_1184 = 1184;
	typeOfThis = v_maybe_type_of_this_4839_line_1184;
    }

    boolean changed = false;
    ImmutableList.Builder<ObjectType> resolvedInterfaces =
        ImmutableList.builder();
    int PROBE_START_LINE_1190 = 1194;
	List<com.google.javascript.rhino.jstype.ObjectType> f_implemented_interfaces_4759_line_1190 = implementedInterfaces;
	int PROBE_END_LINE_1190 = 1194;
	for (ObjectType iface : f_implemented_interfaces_4759_line_1190) {
      ObjectType resolvedIface = (ObjectType) iface.resolve(t, scope);
      resolvedInterfaces.add(resolvedIface);
      changed |= (resolvedIface != iface);
    }
    int PROBE_START_LINE_1195 = 1197;
	boolean v_changed_4840_line_1195 = changed;
	int PROBE_END_LINE_1195 = 1197;
	if (v_changed_4840_line_1195) {
      implementedInterfaces = resolvedInterfaces.build();
    }

    int PROBE_START_LINE_1199 = 1204;
	List<com.google.javascript.rhino.jstype.FunctionType> f_sub_types_4836_line_1199 = subTypes;
	boolean function_type_1_expr156_line_1199 = f_sub_types_4836_line_1199 != null;
	int PROBE_END_LINE_1199 = 1204;
	if (function_type_1_expr156_line_1199) {
      for (int i = 0; true; i++) {
        int PROBE_START_LINE_1201 = 1202;
		int v_i_4843_line_1200 = i;
		List<com.google.javascript.rhino.jstype.FunctionType> f_sub_types_4836_line_1200 = subTypes;
		int function_type_1_expr159_line_1200 = f_sub_types_4836_line_1200.size();
		boolean function_type_1_expr158_line_1200 = v_i_4843_line_1200 < function_type_1_expr159_line_1200;
		if (!(function_type_1_expr158_line_1200)) {
			break;
		}
		List<com.google.javascript.rhino.jstype.FunctionType> f_sub_types_4836_line_1201 = subTypes;
		int PROBE_END_LINE_1201 = 1202;
		f_sub_types_4836_line_1201.set(
            i, JSType.toMaybeFunctionType(subTypes.get(i).resolve(t, scope)));
      }
    }

    int PROBE_START_LINE_1206 = 1206;
	com.google.javascript.rhino.ErrorReporter p_t_4837_line_1206 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_4838_line_1206 = scope;
	com.google.javascript.rhino.jstype.JSType function_type_1_expr163_line_1206 = super.resolveInternal(
			p_t_4837_line_1206, p_scope_4838_line_1206);
	int PROBE_END_LINE_1206 = 1206;
	return function_type_1_expr163_line_1206;
  }

  @Override
  public String toDebugHashCodeString() {
    if (this == registry.getNativeType(JSTypeNative.FUNCTION_INSTANCE_TYPE)) {
      return super.toDebugHashCodeString();
    }

    StringBuilder b = new StringBuilder(32);
    b.append("function (");
    int paramNum = call.parameters.getChildCount();
    boolean hasKnownTypeOfThis = !typeOfThis.isUnknownType();
    if (hasKnownTypeOfThis) {
      b.append("this:");
      b.append(getDebugHashCodeStringOf(typeOfThis));
    }
    if (paramNum > 0) {
      if (hasKnownTypeOfThis) {
        b.append(", ");
      }
      Node p = call.parameters.getFirstChild();
      b.append(getDebugHashCodeStringOf(p.getJSType()));
      p = p.getNext();
      while (p != null) {
        b.append(", ");
        b.append(getDebugHashCodeStringOf(p.getJSType()));
        p = p.getNext();
      }
    }
    b.append(")");
    b.append(": ");
    b.append(getDebugHashCodeStringOf(call.returnType));
    return b.toString();
  }

  private String getDebugHashCodeStringOf(JSType type) {
    if (type == this) {
      return "me";
    } else {
      return type.toDebugHashCodeString();
    }
  }

  /** Create a new constructor with the parameters and return type stripped. */
  public FunctionType cloneWithoutArrowType() {
    FunctionType result = new FunctionType(
        registry, getReferenceName(), source,
        registry.createArrowType(null, null), getInstanceType(),
        null, true, false);
    result.setPrototypeBasedOn(getInstanceType());
    return result;
  }

  @Override
  public boolean hasAnyTemplateTypesInternal() {
    return !getTemplateKeys().isEmpty()
        || typeOfThis.hasAnyTemplateTypes()
        || call.hasAnyTemplateTypes();
  }
}
