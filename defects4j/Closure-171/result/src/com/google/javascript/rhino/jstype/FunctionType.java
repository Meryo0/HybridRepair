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
               TemplateTypeMap templateTypeMap,
               boolean isConstructor, boolean nativeType) {
    super(registry, name,
        registry.getNativeObjectType(JSTypeNative.FUNCTION_INSTANCE_TYPE),
        nativeType, templateTypeMap);
    setPrettyPrint(true);

    int PROBE_START_LINE_143 = 144;
	com.google.javascript.rhino.Node p_source_5415_line_143 = source;
	boolean function_type_1_expr8_line_143 = p_source_5415_line_143 == null;
	boolean function_type_1_expr7_line_143 = function_type_1_expr8_line_143 || Token.FUNCTION == source.getType();
	int PROBE_END_LINE_143 = 144;
	Preconditions.checkArgument(function_type_1_expr7_line_143);
    int PROBE_START_LINE_145 = 145;
	com.google.javascript.rhino.jstype.ArrowType p_arrow_type_5416_line_145 = arrowType;
	int PROBE_END_LINE_145 = 145;
	Preconditions.checkNotNull(p_arrow_type_5416_line_145);
    int PROBE_START_LINE_146 = 146;
	com.google.javascript.rhino.Node p_source_5415_line_146 = source;
	int PROBE_END_LINE_146 = 146;
	this.source = p_source_5415_line_146;
    int PROBE_START_LINE_147 = 157;
	boolean p_is_constructor_5419_line_147 = isConstructor;
	int PROBE_END_LINE_147 = 157;
	if (p_is_constructor_5419_line_147) {
      int PROBE_START_LINE_148 = 148;
		com.google.javascript.rhino.jstype.FunctionType.Kind q_constructor_191_line_148 = Kind.CONSTRUCTOR;
		int PROBE_END_LINE_148 = 148;
	this.kind = q_constructor_191_line_148;
      int PROBE_START_LINE_149 = 149;
	com.google.javascript.rhino.jstype.FunctionType.PropAccess q_any_192_line_149 = PropAccess.ANY;
	int PROBE_END_LINE_149 = 149;
	this.propAccess = q_any_192_line_149;
      int PROBE_START_LINE_150 = 151;
	com.google.javascript.rhino.jstype.JSType p_type_of_this_5417_line_150 = typeOfThis;
	boolean function_type_1_expr23_line_150 = p_type_of_this_5417_line_150 != null;
	com.google.javascript.rhino.jstype.JSType function_type_1_expr21_line_150 = function_type_1_expr23_line_150
			? typeOfThis
			: new InstanceObjectType(registry, this, nativeType);
	int PROBE_END_LINE_150 = 151;
	this.typeOfThis = function_type_1_expr21_line_150;
    } else {
      int PROBE_START_LINE_153 = 153;
		com.google.javascript.rhino.jstype.FunctionType.Kind q_ordinary_193_line_153 = Kind.ORDINARY;
		int PROBE_END_LINE_153 = 153;
	this.kind = q_ordinary_193_line_153;
      int PROBE_START_LINE_154 = 156;
	com.google.javascript.rhino.jstype.JSType p_type_of_this_5417_line_154 = typeOfThis;
	boolean function_type_1_expr32_line_154 = p_type_of_this_5417_line_154 != null;
	com.google.javascript.rhino.jstype.JSType function_type_1_expr30_line_154 = function_type_1_expr32_line_154
			? typeOfThis
			: registry.getNativeObjectType(JSTypeNative.UNKNOWN_TYPE);
	int PROBE_END_LINE_154 = 156;
	this.typeOfThis = function_type_1_expr30_line_154;
    }
    int PROBE_START_LINE_158 = 158;
	com.google.javascript.rhino.jstype.ArrowType p_arrow_type_5416_line_158 = arrowType;
	int PROBE_END_LINE_158 = 158;
	this.call = p_arrow_type_5416_line_158;
  }

  /** Creates an instance for a function that is an interface. */
  private FunctionType(JSTypeRegistry registry, String name, Node source,
      TemplateTypeMap typeParameters) {
    super(registry, name,
        registry.getNativeObjectType(JSTypeNative.FUNCTION_INSTANCE_TYPE),
        false, typeParameters);
    setPrettyPrint(true);

    int PROBE_START_LINE_169 = 170;
	com.google.javascript.rhino.Node p_source_5428_line_169 = source;
	boolean function_type_1_expr42_line_169 = p_source_5428_line_169 == null;
	boolean function_type_1_expr41_line_169 = function_type_1_expr42_line_169 || Token.FUNCTION == source.getType();
	int PROBE_END_LINE_169 = 170;
	Preconditions.checkArgument(function_type_1_expr41_line_169);
    int PROBE_START_LINE_171 = 171;
	String p_name_5427_line_171 = name;
	boolean function_type_1_expr44_line_171 = p_name_5427_line_171 != null;
	int PROBE_END_LINE_171 = 171;
	Preconditions.checkArgument(function_type_1_expr44_line_171);
    int PROBE_START_LINE_172 = 172;
	com.google.javascript.rhino.Node p_source_5428_line_172 = source;
	int PROBE_END_LINE_172 = 172;
	this.source = p_source_5428_line_172;
    int PROBE_START_LINE_173 = 173;
	com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_5426_line_173 = registry;
	int q_param_list_194_line_173 = Token.PARAM_LIST;
	int PROBE_END_LINE_173 = 173;
	this.call = new ArrowType(p_registry_5426_line_173, new Node(q_param_list_194_line_173), null);
    int PROBE_START_LINE_174 = 174;
	com.google.javascript.rhino.jstype.FunctionType.Kind q_interface_194_line_174 = Kind.INTERFACE;
	int PROBE_END_LINE_174 = 174;
	this.kind = q_interface_194_line_174;
    int PROBE_START_LINE_175 = 175;
	com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_5426_line_175 = registry;
	int PROBE_END_LINE_175 = 175;
	this.typeOfThis = new InstanceObjectType(p_registry_5426_line_175, this);
  }

  /** Creates an instance for a function that is an interface. */
  static FunctionType forInterface(
      JSTypeRegistry registry, String name, Node source,
      TemplateTypeMap typeParameters) {
    int PROBE_START_LINE_182 = 182;
		com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_5430_line_182 = registry;
		String p_name_5431_line_182 = name;
		com.google.javascript.rhino.Node p_source_5432_line_182 = source;
		com.google.javascript.rhino.jstype.TemplateTypeMap p_type_parameters_5433_line_182 = typeParameters;
		int PROBE_END_LINE_182 = 182;
	return new FunctionType(p_registry_5430_line_182, p_name_5431_line_182, p_source_5432_line_182, p_type_parameters_5433_line_182);
  }

  @Override
  public boolean isInstanceType() {
    // The universal constructor is its own instance, bizarrely. It overrides
    // getConstructor() appropriately when it's declared.
    return this == registry.getNativeType(U2U_CONSTRUCTOR_TYPE);
  }

  @Override
  public boolean isConstructor() {
    int PROBE_START_LINE_194 = 194;
	com.google.javascript.rhino.jstype.FunctionType.Kind f_kind_5422_line_194 = kind;
	com.google.javascript.rhino.jstype.FunctionType.Kind q_constructor_195_line_194 = Kind.CONSTRUCTOR;
	boolean function_type_1_expr62_line_194 = f_kind_5422_line_194 == q_constructor_195_line_194;
	int PROBE_END_LINE_194 = 194;
	return function_type_1_expr62_line_194;
  }

  @Override
  public boolean isInterface() {
    int PROBE_START_LINE_199 = 199;
	com.google.javascript.rhino.jstype.FunctionType.Kind f_kind_5422_line_199 = kind;
	com.google.javascript.rhino.jstype.FunctionType.Kind q_interface_195_line_199 = Kind.INTERFACE;
	boolean function_type_1_expr63_line_199 = f_kind_5422_line_199 == q_interface_195_line_199;
	int PROBE_END_LINE_199 = 199;
	return function_type_1_expr63_line_199;
  }

  @Override
  public boolean isOrdinaryFunction() {
    int PROBE_START_LINE_204 = 204;
	com.google.javascript.rhino.jstype.FunctionType.Kind f_kind_5422_line_204 = kind;
	com.google.javascript.rhino.jstype.FunctionType.Kind q_ordinary_195_line_204 = Kind.ORDINARY;
	boolean function_type_1_expr64_line_204 = f_kind_5422_line_204 == q_ordinary_195_line_204;
	int PROBE_END_LINE_204 = 204;
	return function_type_1_expr64_line_204;
  }

  /**
   * When a class B inherits from A and A is annotated as a struct, then B
   * automatically gets the annotation, even if B's constructor is not
   * explicitly annotated.
   */
  public boolean makesStructs() {
    int PROBE_START_LINE_213 = 215;
	boolean function_type_1_expr66_line_213 = isConstructor();
	boolean function_type_1_expr65_line_213 = !function_type_1_expr66_line_213;
	int PROBE_END_LINE_213 = 215;
	if (function_type_1_expr65_line_213) {
      return false;
    }
    int PROBE_START_LINE_216 = 218;
	com.google.javascript.rhino.jstype.FunctionType.PropAccess f_prop_access_5423_line_216 = propAccess;
	com.google.javascript.rhino.jstype.FunctionType.PropAccess q_struct_195_line_216 = PropAccess.STRUCT;
	boolean function_type_1_expr67_line_216 = f_prop_access_5423_line_216 == q_struct_195_line_216;
	int PROBE_END_LINE_216 = 218;
	if (function_type_1_expr67_line_216) {
      return true;
    }
    int PROBE_START_LINE_219 = 219;
	FunctionType function_type_1_expr68_line_219 = getSuperClassConstructor();
	int PROBE_END_LINE_219 = 219;
	FunctionType superc = function_type_1_expr68_line_219;
    int PROBE_START_LINE_220 = 223;
	com.google.javascript.rhino.jstype.FunctionType v_superc_5434_line_220 = superc;
	boolean function_type_1_expr70_line_220 = v_superc_5434_line_220 != null;
	boolean function_type_1_expr71_line_220 = true;
	if (function_type_1_expr70_line_220) {
		com.google.javascript.rhino.jstype.FunctionType v_superc_5434_line_220_v1 = superc;
		function_type_1_expr71_line_220 = v_superc_5434_line_220_v1.makesStructs();
	}
	boolean function_type_1_expr69_line_220 = function_type_1_expr70_line_220 && function_type_1_expr71_line_220;
	int PROBE_END_LINE_220 = 223;
	if (function_type_1_expr69_line_220) {
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
    int PROBE_START_LINE_288 = 288;
	com.google.javascript.rhino.jstype.ArrowType f_call_5425_line_288 = call;
	com.google.javascript.rhino.Node q_parameters_196_line_288 = f_call_5425_line_288.parameters;
	int PROBE_END_LINE_288 = 288;
	return q_parameters_196_line_288;
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
    int PROBE_START_LINE_333 = 333;
	com.google.javascript.rhino.jstype.ArrowType f_call_5425_line_333 = call;
	int PROBE_END_LINE_333 = 333;
	return f_call_5425_line_333;
  }

  @Override
  public Property getSlot(String name) {
    int PROBE_START_LINE_338 = 344;
	String p_name_5435_line_338 = name;
	boolean function_type_1_expr73_line_338 = "prototype".equals(p_name_5435_line_338);
	int PROBE_END_LINE_338 = 344;
	if (function_type_1_expr73_line_338) {
      // Lazy initialization of the prototype field.
      getPrototype();
      int PROBE_START_LINE_341 = 341;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_5436_line_341 = prototypeSlot;
	int PROBE_END_LINE_341 = 341;
	return f_prototype_slot_5436_line_341;
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
    int PROBE_START_LINE_368 = 386;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_5436_line_368 = prototypeSlot;
	boolean function_type_1_expr75_line_368 = f_prototype_slot_5436_line_368 == null;
	int PROBE_END_LINE_368 = 386;
	// lazy initialization of the prototype field
    if (function_type_1_expr75_line_368) {
      int PROBE_START_LINE_369 = 369;
		String function_type_1_expr76_line_369 = getReferenceName();
		int PROBE_END_LINE_369 = 369;
	String refName = function_type_1_expr76_line_369;
      int PROBE_START_LINE_370 = 385;
	String v_ref_name_5437_line_370 = refName;
	boolean function_type_1_expr77_line_370 = v_ref_name_5437_line_370 == null;
	int PROBE_END_LINE_370 = 385;
	if (function_type_1_expr77_line_370) {
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
                isNativeObjectType(), null),
            null);
      }
    }
    int PROBE_START_LINE_387 = 387;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_5436_line_387 = prototypeSlot;
	com.google.javascript.rhino.jstype.JSType function_type_1_expr81_line_387 = f_prototype_slot_5436_line_387
			.getType();
	int PROBE_END_LINE_387 = 387;
	return (ObjectType) function_type_1_expr81_line_387;
  }

  /**
   * Sets the prototype, creating the prototype object from the given
   * base type.
   * @param baseType The base type.
   */
  public void setPrototypeBasedOn(ObjectType baseType) {
    int PROBE_START_LINE_396 = 396;
	com.google.javascript.rhino.jstype.ObjectType p_base_type_5438_line_396 = baseType;
	int PROBE_END_LINE_396 = 396;
	setPrototypeBasedOn(p_base_type_5438_line_396, null);
  }

  void setPrototypeBasedOn(ObjectType baseType, Node propertyNode) {
    int PROBE_START_LINE_417 = 423;
	com.google.javascript.rhino.jstype.ObjectType p_base_type_5439_line_417 = baseType;
	boolean function_type_1_expr84_line_417 = p_base_type_5439_line_417.hasReferenceName();
	boolean function_type_1_expr83_line_417 = function_type_1_expr84_line_417 || isNativeObjectType()
			|| baseType.isFunctionPrototypeType();
	int PROBE_END_LINE_417 = 423;
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
    if (function_type_1_expr83_line_417) {
      int PROBE_START_LINE_420 = 420;
			com.google.javascript.rhino.jstype.JSType f_type_of_this_5424_line_420 = typeOfThis;
			com.google.javascript.rhino.jstype.ObjectType p_base_type_5439_line_420 = baseType;
			com.google.javascript.rhino.jstype.TemplateTypeMap function_type_1_expr86_line_420 = p_base_type_5439_line_420
					.getTemplateTypeMap();
			int PROBE_END_LINE_420 = 420;
	f_type_of_this_5424_line_420.extendTemplateTypeMap(function_type_1_expr86_line_420);
      baseType = new PrototypeObjectType(
          registry, getReferenceName() + ".prototype", baseType);
    }
    int PROBE_START_LINE_424 = 424;
	com.google.javascript.rhino.jstype.ObjectType p_base_type_5439_line_424 = baseType;
	com.google.javascript.rhino.Node p_property_node_5440_line_424 = propertyNode;
	int PROBE_END_LINE_424 = 424;
	setPrototype(p_base_type_5439_line_424, p_property_node_5440_line_424);
  }

  /**
   * Sets the prototype.
   * @param prototype the prototype. If this value is {@code null} it will
   *        silently be discarded.
   */
  boolean setPrototype(ObjectType prototype, Node propertyNode) {
    int PROBE_START_LINE_433 = 435;
	com.google.javascript.rhino.jstype.ObjectType p_prototype_5442_line_433 = prototype;
	boolean function_type_1_expr91_line_433 = p_prototype_5442_line_433 == null;
	int PROBE_END_LINE_433 = 435;
	if (function_type_1_expr91_line_433) {
      return false;
    }
    int PROBE_START_LINE_437 = 439;
	boolean function_type_1_expr93_line_437 = isConstructor();
	boolean function_type_1_expr94_line_437 = true;
	if (function_type_1_expr93_line_437) {
		com.google.javascript.rhino.jstype.ObjectType p_prototype_5442_line_437 = prototype;
		com.google.javascript.rhino.jstype.ObjectType function_type_1_expr95_line_437 = getInstanceType();
		function_type_1_expr94_line_437 = p_prototype_5442_line_437 == function_type_1_expr95_line_437;
	}
	boolean function_type_1_expr92_line_437 = function_type_1_expr93_line_437 && function_type_1_expr94_line_437;
	int PROBE_END_LINE_437 = 439;
	// getInstanceType fails if the function is not a constructor
    if (function_type_1_expr92_line_437) {
      return false;
    }
    int PROBE_START_LINE_440 = 440;
	com.google.javascript.rhino.jstype.ObjectType p_prototype_5442_line_440 = prototype;
	com.google.javascript.rhino.Node p_property_node_5443_line_440 = propertyNode;
	boolean function_type_1_expr96_line_440 = setPrototypeNoCheck(p_prototype_5442_line_440,
			p_property_node_5443_line_440);
	int PROBE_END_LINE_440 = 440;
	return function_type_1_expr96_line_440;
  }

  /** Set the prototype without doing any sanity checks. */
  private boolean setPrototypeNoCheck(ObjectType prototype, Node propertyNode) {
    int PROBE_START_LINE_445 = 446;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_5436_line_445 = prototypeSlot;
	boolean function_type_1_expr98_line_445 = f_prototype_slot_5436_line_445 == null;
	ObjectType function_type_1_expr97_line_445 = function_type_1_expr98_line_445
			? null
			: (ObjectType) prototypeSlot.getType();
	int PROBE_END_LINE_445 = 446;
	ObjectType oldPrototype = function_type_1_expr97_line_445;
    int PROBE_START_LINE_447 = 447;
	com.google.javascript.rhino.jstype.ObjectType v_old_prototype_5446_line_447 = oldPrototype;
	boolean function_type_1_expr100_line_447 = v_old_prototype_5446_line_447 != null;
	int PROBE_END_LINE_447 = 447;
	boolean replacedPrototype = function_type_1_expr100_line_447;

    int PROBE_START_LINE_449 = 450;
	com.google.javascript.rhino.jstype.ObjectType p_prototype_5444_line_449 = prototype;
	int PROBE_END_LINE_449 = 450;
	this.prototypeSlot = new Property("prototype", p_prototype_5444_line_449, true,
        propertyNode == null ? source : propertyNode);
    int PROBE_START_LINE_451 = 451;
	com.google.javascript.rhino.jstype.ObjectType p_prototype_5444_line_451 = prototype;
	int PROBE_END_LINE_451 = 451;
	p_prototype_5444_line_451.setOwnerFunction(this);

    int PROBE_START_LINE_453 = 457;
	com.google.javascript.rhino.jstype.ObjectType v_old_prototype_5446_line_453 = oldPrototype;
	boolean function_type_1_expr108_line_453 = v_old_prototype_5446_line_453 != null;
	int PROBE_END_LINE_453 = 457;
	if (function_type_1_expr108_line_453) {
      int PROBE_START_LINE_456 = 456;
		com.google.javascript.rhino.jstype.ObjectType v_old_prototype_5446_line_456 = oldPrototype;
		int PROBE_END_LINE_456 = 456;
	// Disassociating the old prototype makes this easier to debug--
      // we don't have to worry about two prototypes running around.
      v_old_prototype_5446_line_456.setOwnerFunction(null);
    }

    int PROBE_START_LINE_459 = 472;
	boolean function_type_1_expr111_line_459 = isConstructor();
	boolean function_type_1_expr112_line_459 = false;
	if (!function_type_1_expr111_line_459) {
		function_type_1_expr112_line_459 = isInterface();
	}
	boolean function_type_1_expr110_line_459 = function_type_1_expr111_line_459 || function_type_1_expr112_line_459;
	int PROBE_END_LINE_459 = 472;
	if (function_type_1_expr110_line_459) {
      int PROBE_START_LINE_460 = 460;
		FunctionType function_type_1_expr113_line_460 = getSuperClassConstructor();
		int PROBE_END_LINE_460 = 460;
	FunctionType superClass = function_type_1_expr113_line_460;
      int PROBE_START_LINE_461 = 463;
	com.google.javascript.rhino.jstype.FunctionType v_super_class_5448_line_461 = superClass;
	boolean function_type_1_expr114_line_461 = v_super_class_5448_line_461 != null;
	int PROBE_END_LINE_461 = 463;
	if (function_type_1_expr114_line_461) {
        int PROBE_START_LINE_462 = 462;
		com.google.javascript.rhino.jstype.FunctionType v_super_class_5448_line_462 = superClass;
		int PROBE_END_LINE_462 = 462;
		v_super_class_5448_line_462.addSubType(this);
      }

      int PROBE_START_LINE_465 = 471;
	boolean function_type_1_expr117_line_465 = isInterface();
	int PROBE_END_LINE_465 = 471;
	if (function_type_1_expr117_line_465) {
        int PROBE_START_LINE_466 = 470;
		Iterable<com.google.javascript.rhino.jstype.ObjectType> function_type_1_expr118_line_466 = getExtendedInterfaces();
		int PROBE_END_LINE_466 = 470;
		for (ObjectType interfaceType : function_type_1_expr118_line_466) {
          if (interfaceType.getConstructor() != null) {
            interfaceType.getConstructor().addSubType(this);
          }
        }
      }
    }

    int PROBE_START_LINE_474 = 476;
	boolean v_replaced_prototype_5447_line_474 = replacedPrototype;
	int PROBE_END_LINE_474 = 476;
	if (v_replaced_prototype_5447_line_474) {
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
    int PROBE_START_LINE_514 = 515;
	boolean function_type_1_expr121_line_514 = isConstructor();
	FunctionType function_type_1_expr120_line_514 = function_type_1_expr121_line_514
			? getSuperClassConstructor()
			: null;
	int PROBE_END_LINE_514 = 515;
	FunctionType superCtor = function_type_1_expr120_line_514;
    int PROBE_START_LINE_516 = 521;
	com.google.javascript.rhino.jstype.FunctionType v_super_ctor_5452_line_516 = superCtor;
	boolean function_type_1_expr123_line_516 = v_super_ctor_5452_line_516 == null;
	int PROBE_END_LINE_516 = 521;
	if (function_type_1_expr123_line_516) {
      int PROBE_START_LINE_517 = 517;
		List<com.google.javascript.rhino.jstype.ObjectType> f_implemented_interfaces_5411_line_517 = implementedInterfaces;
		int PROBE_END_LINE_517 = 517;
	return f_implemented_interfaces_5411_line_517;
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
        typeOfThis.extendTemplateTypeMap(type.getTemplateTypeMap());
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
    int PROBE_START_LINE_572 = 572;
	List<com.google.javascript.rhino.jstype.ObjectType> f_extended_interfaces_5412_line_572 = extendedInterfaces;
	int PROBE_END_LINE_572 = 572;
	return f_extended_interfaces_5412_line_572;
  }

  /** Returns the number of interfaces directly extended by an interface */
  public int getExtendedInterfacesCount() {
    return extendedInterfaces.size();
  }

  public void setExtendedInterfaces(List<ObjectType> extendedInterfaces)
    throws UnsupportedOperationException {
    int PROBE_START_LINE_582 = 590;
		boolean function_type_1_expr124_line_582 = isInterface();
		int PROBE_END_LINE_582 = 590;
	if (function_type_1_expr124_line_582) {
      int PROBE_START_LINE_583 = 583;
		List<com.google.javascript.rhino.jstype.ObjectType> p_extended_interfaces_5456_line_583 = extendedInterfaces;
		ImmutableList<com.google.javascript.rhino.jstype.ObjectType> function_type_1_expr127_line_583 = ImmutableList
				.copyOf(p_extended_interfaces_5456_line_583);
		int PROBE_END_LINE_583 = 583;
	this.extendedInterfaces = function_type_1_expr127_line_583;
      int PROBE_START_LINE_584 = 587;
	List<com.google.javascript.rhino.jstype.ObjectType> f_extended_interfaces_5412_line_584 = this.extendedInterfaces;
	int PROBE_END_LINE_584 = 587;
	for (ObjectType extendedInterface : f_extended_interfaces_5412_line_584) {
        typeOfThis.extendTemplateTypeMap(
            extendedInterface.getTemplateTypeMap());
      }
    } else {
      throw new UnsupportedOperationException();
    }
  }

  @Override
  public JSType getPropertyType(String name) {
    int PROBE_START_LINE_595 = 622;
	String p_name_5458_line_595 = name;
	boolean function_type_1_expr132_line_595 = hasOwnProperty(p_name_5458_line_595);
	boolean function_type_1_expr131_line_595 = !function_type_1_expr132_line_595;
	int PROBE_END_LINE_595 = 622;
	if (function_type_1_expr131_line_595) {
      int PROBE_START_LINE_597 = 597;
		String p_name_5458_line_597 = name;
		boolean function_type_1_expr133_line_597 = "call".equals(p_name_5458_line_597);
		int PROBE_END_LINE_597 = 597;
	// Define the "call", "apply", and "bind" functions lazily.
      boolean isCall = function_type_1_expr133_line_597;
      int PROBE_START_LINE_598 = 598;
	String p_name_5458_line_598 = name;
	boolean function_type_1_expr134_line_598 = "bind".equals(p_name_5458_line_598);
	int PROBE_END_LINE_598 = 598;
	boolean isBind = function_type_1_expr134_line_598;
      int PROBE_START_LINE_599 = 621;
	boolean v_is_call_5459_line_599 = isCall;
	boolean v_is_bind_5460_line_599 = false;
	if (!v_is_call_5459_line_599) {
		v_is_bind_5460_line_599 = isBind;
	}
	boolean function_type_1_expr135_line_599 = v_is_call_5459_line_599 || v_is_bind_5460_line_599;
	int PROBE_END_LINE_599 = 621;
	if (function_type_1_expr135_line_599) {
        defineDeclaredProperty(name, getCallOrBindSignature(isCall), source);
      } else {
		int PROBE_START_LINE_601 = 621;
		String p_name_5458_line_601 = name;
		boolean function_type_1_expr136_line_601 = "apply".equals(p_name_5458_line_601);
		int PROBE_END_LINE_601 = 621;
		if (function_type_1_expr136_line_601) {
			FunctionParamBuilder builder = new FunctionParamBuilder(registry);
			builder.addOptionalParams(registry.createNullableType(getTypeOfThis()),
					registry.createNullableType(registry.getNativeType(JSTypeNative.OBJECT_TYPE)));
			defineDeclaredProperty(name, new FunctionBuilder(registry).withParams(builder)
					.withReturnType(getReturnType()).withTemplateKeys(getTemplateTypeMap().getTemplateKeys()).build(),
					source);
		}
	}
    }

    int PROBE_START_LINE_624 = 624;
	String p_name_5458_line_624 = name;
	com.google.javascript.rhino.jstype.JSType function_type_1_expr137_line_624 = super.getPropertyType(
			p_name_5458_line_624);
	int PROBE_END_LINE_624 = 624;
	return function_type_1_expr137_line_624;
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
        .withTemplateKeys(getTemplateTypeMap().getTemplateKeys());
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
        .withTemplateKeys(getTemplateTypeMap().getTemplateKeys());

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
    int PROBE_START_LINE_701 = 713;
		String p_name_5463_line_701 = name;
		boolean function_type_1_expr138_line_701 = "prototype".equals(p_name_5463_line_701);
		int PROBE_END_LINE_701 = 713;
	if (function_type_1_expr138_line_701) {
      int PROBE_START_LINE_702 = 702;
		com.google.javascript.rhino.jstype.JSType p_type_5464_line_702 = type;
		ObjectType function_type_1_expr139_line_702 = p_type_5464_line_702.toObjectType();
		int PROBE_END_LINE_702 = 702;
	ObjectType objType = function_type_1_expr139_line_702;
      int PROBE_START_LINE_703 = 712;
	com.google.javascript.rhino.jstype.ObjectType v_obj_type_5467_line_703 = objType;
	boolean function_type_1_expr140_line_703 = v_obj_type_5467_line_703 != null;
	int PROBE_END_LINE_703 = 712;
	if (function_type_1_expr140_line_703) {
        int PROBE_START_LINE_704 = 707;
		com.google.javascript.rhino.jstype.Property f_prototype_slot_5436_line_704 = prototypeSlot;
		boolean function_type_1_expr142_line_704 = f_prototype_slot_5436_line_704 != null;
		boolean function_type_1_expr141_line_704 = function_type_1_expr142_line_704
				&& objType.isEquivalentTo(prototypeSlot.getType());
		int PROBE_END_LINE_704 = 707;
		if (function_type_1_expr141_line_704) {
          return true;
        }
        int PROBE_START_LINE_708 = 708;
		com.google.javascript.rhino.jstype.ObjectType v_obj_type_5467_line_708 = objType;
		com.google.javascript.rhino.Node p_property_node_5466_line_708 = propertyNode;
		int PROBE_END_LINE_708 = 708;
		setPrototypeBasedOn(v_obj_type_5467_line_708, p_property_node_5466_line_708);
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
    int PROBE_START_LINE_743 = 743;
	com.google.javascript.rhino.jstype.FunctionType p_that_5468_line_743 = that;
	int PROBE_END_LINE_743 = 743;
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
    Preconditions.checkNotNull(p_that_5468_line_743);

    int PROBE_START_LINE_745 = 747;
	com.google.javascript.rhino.jstype.FunctionType p_that_5468_line_745 = that;
	boolean function_type_1_expr145_line_745 = isEquivalentTo(p_that_5468_line_745);
	int PROBE_END_LINE_745 = 747;
	if (function_type_1_expr145_line_745) {
      return this;
    }

    int PROBE_START_LINE_753 = 772;
	boolean function_type_1_expr147_line_753 = isOrdinaryFunction();
	boolean function_type_1_expr148_line_753 = true;
	if (function_type_1_expr147_line_753) {
		com.google.javascript.rhino.jstype.FunctionType p_that_5468_line_753 = that;
		function_type_1_expr148_line_753 = p_that_5468_line_753.isOrdinaryFunction();
	}
	boolean function_type_1_expr146_line_753 = function_type_1_expr147_line_753 && function_type_1_expr148_line_753
			&& !this.call.hasUnknownParamsOrReturn() && !that.call.hasUnknownParamsOrReturn();
	int PROBE_END_LINE_753 = 772;
	// If these are ordinary functions, then merge them.
    // Don't do this if any of the params/return
    // values are unknown, because then there will be cycles in
    // their local lattice and they will merge in weird ways.
    if (function_type_1_expr146_line_753) {

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

    int PROBE_START_LINE_776 = 777;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_5441_line_776 = registry;
	JSType function_type_1_expr149_line_776 = f_registry_5441_line_776
			.getNativeType(JSTypeNative.FUNCTION_INSTANCE_TYPE);
	int PROBE_END_LINE_776 = 777;
	// The function instance type is a special case
    // that lives above the rest of the lattice.
    JSType functionInstance = function_type_1_expr149_line_776;
    int PROBE_START_LINE_778 = 782;
	com.google.javascript.rhino.jstype.JSType v_function_instance_5470_line_778 = functionInstance;
	com.google.javascript.rhino.jstype.FunctionType p_that_5468_line_778 = that;
	boolean function_type_1_expr150_line_778 = v_function_instance_5470_line_778.isEquivalentTo(p_that_5468_line_778);
	int PROBE_END_LINE_778 = 782;
	if (function_type_1_expr150_line_778) {
      return leastSuper ? that : this;
    } else {
		int PROBE_START_LINE_780 = 782;
		com.google.javascript.rhino.jstype.JSType v_function_instance_5470_line_780 = functionInstance;
		boolean function_type_1_expr151_line_780 = v_function_instance_5470_line_780.isEquivalentTo(this);
		int PROBE_END_LINE_780 = 782;
		if (function_type_1_expr151_line_780) {
			return leastSuper ? this : that;
		}
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
    int PROBE_START_LINE_794 = 794;
	boolean p_least_super_5469_line_794 = leastSuper;
	com.google.javascript.rhino.jstype.FunctionType v_greatest_fn_5471_line_794 = null;
	com.google.javascript.rhino.jstype.FunctionType v_least_fn_5472_line_794 = null;
	if (p_least_super_5469_line_794) {
		v_greatest_fn_5471_line_794 = greatestFn;
	} else {
		v_least_fn_5472_line_794 = leastFn;
	}
	com.google.javascript.rhino.jstype.FunctionType function_type_1_expr155_line_794 = p_least_super_5469_line_794
			? v_greatest_fn_5471_line_794
			: v_least_fn_5472_line_794;
	int PROBE_END_LINE_794 = 794;
	return function_type_1_expr155_line_794;
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
    int PROBE_START_LINE_841 = 841;
	boolean function_type_1_expr158_line_841 = isConstructor();
	boolean function_type_1_expr159_line_841 = false;
	if (!function_type_1_expr158_line_841) {
		function_type_1_expr159_line_841 = isInterface();
	}
	boolean function_type_1_expr157_line_841 = function_type_1_expr158_line_841 || function_type_1_expr159_line_841;
	int PROBE_END_LINE_841 = 841;
	Preconditions.checkArgument(function_type_1_expr157_line_841);
    int PROBE_START_LINE_842 = 842;
	com.google.javascript.rhino.jstype.ObjectType function_type_1_expr161_line_842 = getPrototype();
	ObjectType function_type_1_expr160_line_842 = function_type_1_expr161_line_842.getImplicitPrototype();
	int PROBE_END_LINE_842 = 842;
	ObjectType maybeSuperInstanceType = function_type_1_expr160_line_842;
    int PROBE_START_LINE_843 = 845;
	com.google.javascript.rhino.jstype.ObjectType v_maybe_super_instance_type_5475_line_843 = maybeSuperInstanceType;
	boolean function_type_1_expr162_line_843 = v_maybe_super_instance_type_5475_line_843 == null;
	int PROBE_END_LINE_843 = 845;
	if (function_type_1_expr162_line_843) {
      return null;
    }
    int PROBE_START_LINE_846 = 846;
	com.google.javascript.rhino.jstype.ObjectType v_maybe_super_instance_type_5475_line_846 = maybeSuperInstanceType;
	com.google.javascript.rhino.jstype.FunctionType function_type_1_expr163_line_846 = v_maybe_super_instance_type_5475_line_846
			.getConstructor();
	int PROBE_END_LINE_846 = 846;
	return function_type_1_expr163_line_846;
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
    int PROBE_START_LINE_897 = 902;
		boolean function_type_1_expr164_line_897 = isConstructor();
		int PROBE_END_LINE_897 = 902;
	if (function_type_1_expr164_line_897) {
      int PROBE_START_LINE_898 = 900;
		com.google.javascript.rhino.jstype.FunctionType p_that_5479_line_898 = that;
		boolean function_type_1_expr165_line_898 = p_that_5479_line_898.isConstructor();
		int PROBE_END_LINE_898 = 900;
	if (function_type_1_expr165_line_898) {
        int PROBE_START_LINE_899 = 899;
		com.google.javascript.rhino.jstype.FunctionType p_that_5479_line_899 = that;
		boolean function_type_1_expr166_line_899 = this == p_that_5479_line_899;
		int PROBE_END_LINE_899 = 899;
		return function_type_1_expr166_line_899;
      }
      return false;
    }
    int PROBE_START_LINE_903 = 908;
	boolean function_type_1_expr168_line_903 = isInterface();
	int PROBE_END_LINE_903 = 908;
	if (function_type_1_expr168_line_903) {
      int PROBE_START_LINE_904 = 906;
		com.google.javascript.rhino.jstype.FunctionType p_that_5479_line_904 = that;
		boolean function_type_1_expr169_line_904 = p_that_5479_line_904.isInterface();
		int PROBE_END_LINE_904 = 906;
	if (function_type_1_expr169_line_904) {
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
    int PROBE_START_LINE_935 = 938;
	boolean function_type_1_expr172_line_935 = isPrettyPrint();
	boolean function_type_1_expr171_line_935 = !function_type_1_expr172_line_935;
	boolean function_type_1_expr170_line_935 = function_type_1_expr171_line_935
			|| this == registry.getNativeType(JSTypeNative.FUNCTION_INSTANCE_TYPE);
	int PROBE_END_LINE_935 = 938;
	if (function_type_1_expr170_line_935) {
      return "Function";
    }

    setPrettyPrint(false);

    StringBuilder b = new StringBuilder(32);
    int PROBE_START_LINE_943 = 943;
	StringBuilder v_b_5483_line_943 = b;
	int PROBE_END_LINE_943 = 943;
	v_b_5483_line_943.append("function (");
    int PROBE_START_LINE_944 = 944;
	com.google.javascript.rhino.jstype.ArrowType f_call_5425_line_944 = call;
	com.google.javascript.rhino.Node q_parameters_198_line_944 = f_call_5425_line_944.parameters;
	int function_type_1_expr176_line_944 = q_parameters_198_line_944.getChildCount();
	int PROBE_END_LINE_944 = 944;
	int paramNum = function_type_1_expr176_line_944;
    int PROBE_START_LINE_945 = 945;
	com.google.javascript.rhino.jstype.JSType f_type_of_this_5424_line_945 = typeOfThis;
	boolean function_type_1_expr179_line_945 = f_type_of_this_5424_line_945 instanceof UnknownType;
	boolean function_type_1_expr178_line_945 = (function_type_1_expr179_line_945);
	boolean function_type_1_expr177_line_945 = !function_type_1_expr178_line_945;
	int PROBE_END_LINE_945 = 945;
	boolean hasKnownTypeOfThis = function_type_1_expr177_line_945;
    int PROBE_START_LINE_946 = 953;
	boolean v_has_known_type_of_this_5485_line_946 = hasKnownTypeOfThis;
	int PROBE_END_LINE_946 = 953;
	if (v_has_known_type_of_this_5485_line_946) {
      int PROBE_START_LINE_947 = 951;
		boolean function_type_1_expr180_line_947 = isConstructor();
		int PROBE_END_LINE_947 = 951;
	if (function_type_1_expr180_line_947) {
        b.append("new:");
      } else {
        int PROBE_START_LINE_950 = 950;
		StringBuilder v_b_5483_line_950 = b;
		int PROBE_END_LINE_950 = 950;
		v_b_5483_line_950.append("this:");
      }
      int PROBE_START_LINE_952 = 952;
	StringBuilder v_b_5483_line_952 = b;
	com.google.javascript.rhino.jstype.JSType f_type_of_this_5424_line_952 = typeOfThis;
	boolean p_for_annotations_5482_line_952 = forAnnotations;
	String function_type_1_expr183_line_952 = f_type_of_this_5424_line_952
			.toStringHelper(p_for_annotations_5482_line_952);
	int PROBE_END_LINE_952 = 952;
	v_b_5483_line_952.append(function_type_1_expr183_line_952);
    }
    int PROBE_START_LINE_954 = 967;
	int v_param_num_5484_line_954 = paramNum;
	boolean function_type_1_expr184_line_954 = v_param_num_5484_line_954 > 0;
	int PROBE_END_LINE_954 = 967;
	if (function_type_1_expr184_line_954) {
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
    int PROBE_START_LINE_968 = 968;
	StringBuilder v_b_5483_line_968 = b;
	int PROBE_END_LINE_968 = 968;
	v_b_5483_line_968.append("): ");
    int PROBE_START_LINE_969 = 969;
	StringBuilder v_b_5483_line_969 = b;
	com.google.javascript.rhino.jstype.ArrowType f_call_5425_line_969 = call;
	com.google.javascript.rhino.jstype.JSType q_return_type_198_line_969 = f_call_5425_line_969.returnType;
	boolean p_for_annotations_5482_line_969 = forAnnotations;
	String function_type_1_expr187_line_969 = q_return_type_198_line_969
			.toStringHelper(p_for_annotations_5482_line_969);
	int PROBE_END_LINE_969 = 969;
	v_b_5483_line_969.append(function_type_1_expr187_line_969);

    setPrettyPrint(true);
    int PROBE_START_LINE_972 = 972;
	StringBuilder v_b_5483_line_972 = b;
	String function_type_1_expr189_line_972 = v_b_5483_line_972.toString();
	int PROBE_END_LINE_972 = 972;
	return function_type_1_expr189_line_972;
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
    int PROBE_START_LINE_1071 = 1071;
	boolean function_type_1_expr191_line_1071 = hasInstanceType();
	int PROBE_END_LINE_1071 = 1071;
	Preconditions.checkState(function_type_1_expr191_line_1071);
    int PROBE_START_LINE_1072 = 1072;
	com.google.javascript.rhino.jstype.JSType f_type_of_this_5424_line_1072 = typeOfThis;
	com.google.javascript.rhino.jstype.ObjectType function_type_1_expr192_line_1072 = f_type_of_this_5424_line_1072
			.toObjectType();
	int PROBE_END_LINE_1072 = 1072;
	return function_type_1_expr192_line_1072;
  }

  /**
   * Sets the instance type. This should only be used for special
   * native types.
   */
  void setInstanceType(ObjectType instanceType) {
    int PROBE_START_LINE_1080 = 1080;
	com.google.javascript.rhino.jstype.ObjectType p_instance_type_5499_line_1080 = instanceType;
	int PROBE_END_LINE_1080 = 1080;
	typeOfThis = p_instance_type_5499_line_1080;
  }

  /**
   * Returns whether this function type has an instance type.
   */
  public boolean hasInstanceType() {
    int PROBE_START_LINE_1087 = 1087;
	boolean function_type_1_expr195_line_1087 = isConstructor();
	boolean function_type_1_expr196_line_1087 = false;
	if (!function_type_1_expr195_line_1087) {
		function_type_1_expr196_line_1087 = isInterface();
	}
	boolean function_type_1_expr194_line_1087 = function_type_1_expr195_line_1087 || function_type_1_expr196_line_1087;
	int PROBE_END_LINE_1087 = 1087;
	return function_type_1_expr194_line_1087;
  }

  /**
   * Gets the type of {@code this} in this function.
   */
  @Override
  public JSType getTypeOfThis() {
    int PROBE_START_LINE_1095 = 1096;
	com.google.javascript.rhino.jstype.JSType f_type_of_this_5424_line_1095 = typeOfThis;
	boolean function_type_1_expr198_line_1095 = f_type_of_this_5424_line_1095.isEmptyType();
	com.google.javascript.rhino.jstype.JSType function_type_1_expr197_line_1095 = function_type_1_expr198_line_1095
			? registry.getNativeObjectType(JSTypeNative.UNKNOWN_TYPE)
			: typeOfThis;
	int PROBE_END_LINE_1095 = 1096;
	return function_type_1_expr197_line_1095;
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
    int PROBE_START_LINE_1126 = 1128;
	List<com.google.javascript.rhino.jstype.FunctionType> f_sub_types_5502_line_1126 = subTypes;
	boolean function_type_1_expr200_line_1126 = f_sub_types_5502_line_1126 == null;
	int PROBE_END_LINE_1126 = 1128;
	if (function_type_1_expr200_line_1126) {
      int PROBE_START_LINE_1127 = 1127;
		ArrayList<com.google.javascript.rhino.jstype.FunctionType> function_type_1_expr202_line_1127 = Lists
				.newArrayList();
		int PROBE_END_LINE_1127 = 1127;
	subTypes = function_type_1_expr202_line_1127;
    }
    int PROBE_START_LINE_1129 = 1129;
	List<com.google.javascript.rhino.jstype.FunctionType> f_sub_types_5502_line_1129 = subTypes;
	com.google.javascript.rhino.jstype.FunctionType p_sub_type_5501_line_1129 = subType;
	int PROBE_END_LINE_1129 = 1129;
	f_sub_types_5502_line_1129.add(p_sub_type_5501_line_1129);
  }

  @Override
  public void clearCachedValues() {
    super.clearCachedValues();

    int PROBE_START_LINE_1136 = 1140;
	List<com.google.javascript.rhino.jstype.FunctionType> f_sub_types_5502_line_1136 = subTypes;
	boolean function_type_1_expr205_line_1136 = f_sub_types_5502_line_1136 != null;
	int PROBE_END_LINE_1136 = 1140;
	if (function_type_1_expr205_line_1136) {
      for (FunctionType subType : subTypes) {
        subType.clearCachedValues();
      }
    }

    int PROBE_START_LINE_1142 = 1150;
	boolean function_type_1_expr207_line_1142 = isNativeObjectType();
	boolean function_type_1_expr206_line_1142 = !function_type_1_expr207_line_1142;
	int PROBE_END_LINE_1142 = 1150;
	if (function_type_1_expr206_line_1142) {
      int PROBE_START_LINE_1143 = 1145;
		boolean function_type_1_expr208_line_1143 = hasInstanceType();
		int PROBE_END_LINE_1143 = 1145;
	if (function_type_1_expr208_line_1143) {
        int PROBE_START_LINE_1144 = 1144;
		com.google.javascript.rhino.jstype.ObjectType function_type_1_expr210_line_1144 = getInstanceType();
		int PROBE_END_LINE_1144 = 1144;
		function_type_1_expr210_line_1144.clearCachedValues();
      }

      int PROBE_START_LINE_1147 = 1149;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_5436_line_1147 = prototypeSlot;
	boolean function_type_1_expr211_line_1147 = f_prototype_slot_5436_line_1147 != null;
	int PROBE_END_LINE_1147 = 1149;
	if (function_type_1_expr211_line_1147) {
        int PROBE_START_LINE_1148 = 1148;
		com.google.javascript.rhino.jstype.Property f_prototype_slot_5436_line_1148 = prototypeSlot;
		com.google.javascript.rhino.jstype.JSType function_type_1_expr215_line_1148 = f_prototype_slot_5436_line_1148
				.getType();
		com.google.javascript.rhino.jstype.ObjectType function_type_1_expr213_line_1148 = ((ObjectType) function_type_1_expr215_line_1148);
		int PROBE_END_LINE_1148 = 1148;
		function_type_1_expr213_line_1148.clearCachedValues();
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
    int PROBE_START_LINE_1164 = 1164;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_5436_line_1164 = prototypeSlot;
	boolean function_type_1_expr217_line_1164 = f_prototype_slot_5436_line_1164 != null;
	boolean function_type_1_expr218_line_1164 = false;
	if (!function_type_1_expr217_line_1164) {
		function_type_1_expr218_line_1164 = super.hasCachedValues();
	}
	boolean function_type_1_expr216_line_1164 = function_type_1_expr217_line_1164 || function_type_1_expr218_line_1164;
	int PROBE_END_LINE_1164 = 1164;
	return function_type_1_expr216_line_1164;
  }

  @Override
  JSType resolveInternal(ErrorReporter t, StaticScope<JSType> scope) {
    setResolvedTypeInternal(this);

    int PROBE_START_LINE_1171 = 1171;
	com.google.javascript.rhino.jstype.ArrowType f_call_5425_line_1171 = call;
	com.google.javascript.rhino.ErrorReporter p_t_5503_line_1171 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5504_line_1171 = scope;
	com.google.javascript.rhino.jstype.JSType function_type_1_expr223_line_1171 = safeResolve(f_call_5425_line_1171,
			p_t_5503_line_1171, p_scope_5504_line_1171);
	int PROBE_END_LINE_1171 = 1171;
	call = (ArrowType) function_type_1_expr223_line_1171;
    int PROBE_START_LINE_1172 = 1175;
	com.google.javascript.rhino.jstype.Property f_prototype_slot_5436_line_1172 = prototypeSlot;
	boolean function_type_1_expr224_line_1172 = f_prototype_slot_5436_line_1172 != null;
	int PROBE_END_LINE_1172 = 1175;
	if (function_type_1_expr224_line_1172) {
      int PROBE_START_LINE_1173 = 1174;
		com.google.javascript.rhino.jstype.Property f_prototype_slot_5436_line_1173 = prototypeSlot;
		int PROBE_END_LINE_1173 = 1174;
	f_prototype_slot_5436_line_1173.setType(
          safeResolve(prototypeSlot.getType(), t, scope));
    }

    int PROBE_START_LINE_1188 = 1188;
	com.google.javascript.rhino.jstype.JSType f_type_of_this_5424_line_1188 = typeOfThis;
	com.google.javascript.rhino.ErrorReporter p_t_5503_line_1188 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5504_line_1188 = scope;
	JSType function_type_1_expr227_line_1188 = safeResolve(f_type_of_this_5424_line_1188, p_t_5503_line_1188,
			p_scope_5504_line_1188);
	int PROBE_END_LINE_1188 = 1188;
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
    JSType maybeTypeOfThis = function_type_1_expr227_line_1188;
    int PROBE_START_LINE_1189 = 1191;
	com.google.javascript.rhino.jstype.JSType v_maybe_type_of_this_5505_line_1189 = maybeTypeOfThis;
	boolean function_type_1_expr228_line_1189 = v_maybe_type_of_this_5505_line_1189 != null;
	int PROBE_END_LINE_1189 = 1191;
	if (function_type_1_expr228_line_1189) {
      int PROBE_START_LINE_1190 = 1190;
		com.google.javascript.rhino.jstype.JSType v_maybe_type_of_this_5505_line_1190 = maybeTypeOfThis;
		com.google.javascript.rhino.jstype.JSType function_type_1_expr230_line_1190 = v_maybe_type_of_this_5505_line_1190
				.restrictByNotNullOrUndefined();
		int PROBE_END_LINE_1190 = 1190;
	maybeTypeOfThis = function_type_1_expr230_line_1190;
    }
    int PROBE_START_LINE_1192 = 1194;
	com.google.javascript.rhino.jstype.JSType v_maybe_type_of_this_5505_line_1192 = maybeTypeOfThis;
	boolean function_type_1_expr231_line_1192 = v_maybe_type_of_this_5505_line_1192 instanceof ObjectType;
	int PROBE_END_LINE_1192 = 1194;
	if (function_type_1_expr231_line_1192) {
      int PROBE_START_LINE_1193 = 1193;
		com.google.javascript.rhino.jstype.JSType v_maybe_type_of_this_5505_line_1193 = maybeTypeOfThis;
		int PROBE_END_LINE_1193 = 1193;
	typeOfThis = v_maybe_type_of_this_5505_line_1193;
    }

    boolean changed = false;
    ImmutableList.Builder<ObjectType> resolvedInterfaces =
        ImmutableList.builder();
    int PROBE_START_LINE_1199 = 1203;
	List<com.google.javascript.rhino.jstype.ObjectType> f_implemented_interfaces_5411_line_1199 = implementedInterfaces;
	int PROBE_END_LINE_1199 = 1203;
	for (ObjectType iface : f_implemented_interfaces_5411_line_1199) {
      ObjectType resolvedIface = (ObjectType) iface.resolve(t, scope);
      resolvedInterfaces.add(resolvedIface);
      changed |= (resolvedIface != iface);
    }
    int PROBE_START_LINE_1204 = 1206;
	boolean v_changed_5506_line_1204 = changed;
	int PROBE_END_LINE_1204 = 1206;
	if (v_changed_5506_line_1204) {
      implementedInterfaces = resolvedInterfaces.build();
    }

    int PROBE_START_LINE_1208 = 1213;
	List<com.google.javascript.rhino.jstype.FunctionType> f_sub_types_5502_line_1208 = subTypes;
	boolean function_type_1_expr234_line_1208 = f_sub_types_5502_line_1208 != null;
	int PROBE_END_LINE_1208 = 1213;
	if (function_type_1_expr234_line_1208) {
      for (int i = 0; true; i++) {
        int PROBE_START_LINE_1210 = 1211;
		int v_i_5509_line_1209 = i;
		List<com.google.javascript.rhino.jstype.FunctionType> f_sub_types_5502_line_1209 = subTypes;
		int function_type_1_expr237_line_1209 = f_sub_types_5502_line_1209.size();
		boolean function_type_1_expr236_line_1209 = v_i_5509_line_1209 < function_type_1_expr237_line_1209;
		if (!(function_type_1_expr236_line_1209)) {
			break;
		}
		List<com.google.javascript.rhino.jstype.FunctionType> f_sub_types_5502_line_1210 = subTypes;
		int PROBE_END_LINE_1210 = 1211;
		f_sub_types_5502_line_1210.set(
            i, JSType.toMaybeFunctionType(subTypes.get(i).resolve(t, scope)));
      }
    }

    int PROBE_START_LINE_1215 = 1215;
	com.google.javascript.rhino.ErrorReporter p_t_5503_line_1215 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5504_line_1215 = scope;
	com.google.javascript.rhino.jstype.JSType function_type_1_expr241_line_1215 = super.resolveInternal(
			p_t_5503_line_1215, p_scope_5504_line_1215);
	int PROBE_END_LINE_1215 = 1215;
	return function_type_1_expr241_line_1215;
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
    return getTemplateTypeMap().numUnfilledTemplateKeys() > 0
        || typeOfThis.hasAnyTemplateTypes()
        || call.hasAnyTemplateTypes();
  }
}
