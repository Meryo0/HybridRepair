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

import static com.google.common.base.Preconditions.checkState;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Sets;
import com.google.javascript.rhino.ErrorReporter;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;

import java.util.Set;

/**
 * The object type represents instances of JavaScript objects such as
 * {@code Object}, {@code Date}, {@code Function}.<p>
 *
 * Objects in JavaScript are unordered collections of properties.
 * Each property consists of a name, a value and a set of attributes.<p>
 *
 * Each instance has an implicit prototype property ({@code [[Prototype]]})
 * pointing to an object instance, which itself has an implicit property, thus
 * forming a chain.<p>
 *
 * A class begins life with no name.  Later, a name may be provided once it
 * can be inferred.  Note that the name in this case is strictly for
 * debugging purposes.  Looking up type name references goes through the
 * {@link JSTypeRegistry}.<p>
 */
class PrototypeObjectType extends ObjectType {
  private static final long serialVersionUID = 1L;

  private final String className;
  private final PropertyMap properties;
  private final boolean nativeType;

  // NOTE(nicksantos): The implicit prototype can change over time.
  // Modeling this is a bear. Always call getImplicitPrototype(), because
  // some subclasses override this to do special resolution handling.
  private ObjectType implicitPrototypeFallback;

  // If this is a function prototype, then this is the owner.
  // A PrototypeObjectType can only be the prototype of one function. If we try
  // to do this for multiple functions, then we'll have to create a new one.
  private FunctionType ownerFunction = null;

  // Whether the toString representation of this should be pretty-printed,
  // by printing all properties.
  private boolean prettyPrint = false;

  private static final int MAX_PRETTY_PRINTED_PROPERTIES = 4;

  /**
   * Creates an object type.
   *
   * @param className the name of the class.  May be {@code null} to
   *        denote an anonymous class.
   *
   * @param implicitPrototype the implicit prototype
   *        (a.k.a. {@code [[Prototype]]}) as defined by ECMA-262. If the
   *        implicit prototype is {@code null} the implicit prototype will be
   *        set to the {@link JSTypeNative#OBJECT_TYPE}.
   */
  PrototypeObjectType(JSTypeRegistry registry, String className,
      ObjectType implicitPrototype) {
    this(registry, className, implicitPrototype, false, null, null);
  }

  /**
   * Creates an object type, allowing specification of the implicit prototype,
   * whether the object is native, and any templatized types.
   */
  PrototypeObjectType(JSTypeRegistry registry, String className,
      ObjectType implicitPrototype, boolean nativeType,
      ImmutableList<String> templateKeys,
      ImmutableList<JSType> templatizedTypes) {
    super(registry, templateKeys, templatizedTypes);
    this.properties = new PropertyMap();
    int PROBE_START_LINE_118 = 118;
	com.google.javascript.rhino.jstype.PropertyMap f_properties_5383_line_118 = this.properties;
	int PROBE_END_LINE_118 = 118;
	f_properties_5383_line_118.setParentSource(this);

    int PROBE_START_LINE_120 = 120;
	String p_class_name_5378_line_120 = className;
	int PROBE_END_LINE_120 = 120;
	this.className = p_class_name_5378_line_120;
    int PROBE_START_LINE_121 = 121;
	boolean p_native_type_5380_line_121 = nativeType;
	int PROBE_END_LINE_121 = 121;
	this.nativeType = p_native_type_5380_line_121;
    int PROBE_START_LINE_122 = 127;
	boolean p_native_type_5380_line_122 = nativeType;
	boolean prototype_object_type_1_expr18_line_122 = false;
	if (!p_native_type_5380_line_122) {
		com.google.javascript.rhino.jstype.ObjectType p_implicit_prototype_5379_line_122 = implicitPrototype;
		prototype_object_type_1_expr18_line_122 = p_implicit_prototype_5379_line_122 != null;
	}
	boolean prototype_object_type_1_expr17_line_122 = p_native_type_5380_line_122
			|| prototype_object_type_1_expr18_line_122;
	int PROBE_END_LINE_122 = 127;
	if (prototype_object_type_1_expr17_line_122) {
      int PROBE_START_LINE_123 = 123;
		com.google.javascript.rhino.jstype.ObjectType p_implicit_prototype_5379_line_123 = implicitPrototype;
		int PROBE_END_LINE_123 = 123;
	setImplicitPrototype(p_implicit_prototype_5379_line_123);
    } else {
      setImplicitPrototype(
          registry.getNativeObjectType(JSTypeNative.OBJECT_TYPE));
    }
  }

  @Override
  PropertyMap getPropertyMap() {
    int PROBE_START_LINE_132 = 132;
	com.google.javascript.rhino.jstype.PropertyMap f_properties_5383_line_132 = properties;
	int PROBE_END_LINE_132 = 132;
	return f_properties_5383_line_132;
  }

  @Override
  boolean defineProperty(String name, JSType type, boolean inferred,
      Node propertyNode) {
    int PROBE_START_LINE_138 = 140;
		String p_name_5386_line_138 = name;
		boolean prototype_object_type_1_expr22_line_138 = hasOwnDeclaredProperty(p_name_5386_line_138);
		int PROBE_END_LINE_138 = 140;
	if (prototype_object_type_1_expr22_line_138) {
      return false;
    }
    Property newProp = new Property(
        name, type, inferred, propertyNode);
    int PROBE_START_LINE_143 = 143;
	com.google.javascript.rhino.jstype.PropertyMap f_properties_5383_line_143 = properties;
	String p_name_5386_line_143 = name;
	com.google.javascript.rhino.jstype.Property v_new_prop_5390_line_143 = newProp;
	int PROBE_END_LINE_143 = 143;
	f_properties_5383_line_143.putProperty(p_name_5386_line_143, v_new_prop_5390_line_143);
    return true;
  }

  @Override
  public boolean removeProperty(String name) {
    return properties.removeProperty(name);
  }

  @Override
  public void setPropertyJSDocInfo(String propertyName, JSDocInfo info) {
    if (info != null) {
      if (properties.getOwnProperty(propertyName) == null) {
        // If docInfo was attached, but the type of the property
        // was not defined anywhere, then we consider this an explicit
        // declaration of the property.
        defineInferredProperty(propertyName, getPropertyType(propertyName),
            null);
      }

      // The prototype property is not represented as a normal Property.
      // We probably don't want to attach any JSDoc to it anyway.
      Property property = properties.getOwnProperty(propertyName);
      if (property != null) {
        property.setJSDocInfo(info);
      }
    }
  }

  @Override
  public boolean matchesNumberContext() {
    return isNumberObjectType() || isDateType() || isBooleanObjectType() ||
        isStringObjectType() || hasOverridenNativeProperty("valueOf");
  }

  @Override
  public boolean matchesStringContext() {
    return isTheObjectType() || isStringObjectType() || isDateType() ||
        isRegexpType() || isArrayType() || isNumberObjectType() ||
        isBooleanObjectType() || hasOverridenNativeProperty("toString");
  }

  /**
   * Given the name of a native object property, checks whether the property is
   * present on the object and different from the native one.
   */
  private boolean hasOverridenNativeProperty(String propertyName) {
    if (isNativeObjectType()) {
      return false;
    }

    JSType propertyType = getPropertyType(propertyName);
    ObjectType nativeType =
        isFunctionType() ?
        registry.getNativeObjectType(JSTypeNative.FUNCTION_PROTOTYPE) :
        registry.getNativeObjectType(JSTypeNative.OBJECT_PROTOTYPE);
    JSType nativePropertyType = nativeType.getPropertyType(propertyName);
    return propertyType != nativePropertyType;
  }

  @Override
  public JSType unboxesTo() {
    if (isStringObjectType()) {
      return getNativeType(JSTypeNative.STRING_TYPE);
    } else if (isBooleanObjectType()) {
      return getNativeType(JSTypeNative.BOOLEAN_TYPE);
    } else if (isNumberObjectType()) {
      return getNativeType(JSTypeNative.NUMBER_TYPE);
    } else {
      return super.unboxesTo();
    }
  }

  @Override
  public boolean matchesObjectContext() {
    return true;
  }

  @Override
  public boolean canBeCalled() {
    return isRegexpType();
  }

  @Override
  String toStringHelper(boolean forAnnotations) {
    if (hasReferenceName()) {
      return getReferenceName();
    } else if (prettyPrint) {
      // Don't pretty print recursively.
      prettyPrint = false;

      // Use a tree set so that the properties are sorted.
      Set<String> propertyNames = Sets.newTreeSet();
      for (ObjectType current = this;
           current != null && !current.isNativeObjectType() &&
               propertyNames.size() <= MAX_PRETTY_PRINTED_PROPERTIES;
           current = current.getImplicitPrototype()) {
        propertyNames.addAll(current.getOwnPropertyNames());
      }

      StringBuilder sb = new StringBuilder();
      sb.append("{");

      int i = 0;
      for (String property : propertyNames) {
        if (i > 0) {
          sb.append(", ");
        }

        sb.append(property);
        sb.append(": ");
        sb.append(getPropertyType(property).toStringHelper(forAnnotations));

        ++i;
        if (!forAnnotations && i == MAX_PRETTY_PRINTED_PROPERTIES) {
          sb.append(", ...");
          break;
        }
      }

      sb.append("}");

      prettyPrint = true;
      return sb.toString();
    } else {
      return forAnnotations ? "?" : "{...}";
    }
  }

  void setPrettyPrint(boolean prettyPrint) {
    int PROBE_START_LINE_273 = 273;
	boolean p_pretty_print_5396_line_273 = prettyPrint;
	int PROBE_END_LINE_273 = 273;
	this.prettyPrint = p_pretty_print_5396_line_273;
  }

  boolean isPrettyPrint() {
    return prettyPrint;
  }

  @Override
  public FunctionType getConstructor() {
    return null;
  }

  @Override
  public ObjectType getImplicitPrototype() {
    int PROBE_START_LINE_287 = 287;
	com.google.javascript.rhino.jstype.ObjectType f_implicit_prototype_fallback_5397_line_287 = implicitPrototypeFallback;
	int PROBE_END_LINE_287 = 287;
	return f_implicit_prototype_fallback_5397_line_287;
  }

  /**
   * This should only be reset on the FunctionPrototypeType, only to fix an
   * incorrectly established prototype chain due to the user having a mismatch
   * in super class declaration, and only before properties on that type are
   * processed.
   */
  final void setImplicitPrototype(ObjectType implicitPrototype) {
    int PROBE_START_LINE_297 = 297;
	boolean prototype_object_type_1_expr30_line_297 = hasCachedValues();
	boolean prototype_object_type_1_expr29_line_297 = !prototype_object_type_1_expr30_line_297;
	int PROBE_END_LINE_297 = 297;
	checkState(prototype_object_type_1_expr29_line_297);
    int PROBE_START_LINE_298 = 298;
	com.google.javascript.rhino.jstype.ObjectType p_implicit_prototype_5398_line_298 = implicitPrototype;
	int PROBE_END_LINE_298 = 298;
	this.implicitPrototypeFallback = p_implicit_prototype_5398_line_298;
  }

  @Override
  public String getReferenceName() {
    int PROBE_START_LINE_303 = 309;
	String f_class_name_5384_line_303 = className;
	boolean prototype_object_type_1_expr34_line_303 = f_class_name_5384_line_303 != null;
	int PROBE_END_LINE_303 = 309;
	if (prototype_object_type_1_expr34_line_303) {
      int PROBE_START_LINE_304 = 304;
		String f_class_name_5384_line_304 = className;
		int PROBE_END_LINE_304 = 304;
	return f_class_name_5384_line_304;
    } else {
		int PROBE_START_LINE_305 = 309;
		com.google.javascript.rhino.jstype.FunctionType f_owner_function_5372_line_305 = ownerFunction;
		boolean prototype_object_type_1_expr35_line_305 = f_owner_function_5372_line_305 != null;
		int PROBE_END_LINE_305 = 309;
		if (prototype_object_type_1_expr35_line_305) {
			int PROBE_START_LINE_306 = 306;
			com.google.javascript.rhino.jstype.FunctionType f_owner_function_5372_line_306 = ownerFunction;
			String prototype_object_type_1_expr37_line_306 = f_owner_function_5372_line_306.getReferenceName();
			String prototype_object_type_1_expr36_line_306 = prototype_object_type_1_expr37_line_306 + ".prototype";
			int PROBE_END_LINE_306 = 306;
			return prototype_object_type_1_expr36_line_306;
		} else {
			return null;
		}
	}
  }

  @Override
  public boolean hasReferenceName() {
    int PROBE_START_LINE_314 = 314;
	String f_class_name_5384_line_314 = className;
	boolean prototype_object_type_1_expr39_line_314 = f_class_name_5384_line_314 != null;
	boolean prototype_object_type_1_expr40_line_314 = false;
	if (!prototype_object_type_1_expr39_line_314) {
		com.google.javascript.rhino.jstype.FunctionType f_owner_function_5372_line_314 = ownerFunction;
		prototype_object_type_1_expr40_line_314 = f_owner_function_5372_line_314 != null;
	}
	boolean prototype_object_type_1_expr38_line_314 = prototype_object_type_1_expr39_line_314
			|| prototype_object_type_1_expr40_line_314;
	int PROBE_END_LINE_314 = 314;
	return prototype_object_type_1_expr38_line_314;
  }

  @Override
  public boolean isSubtype(JSType that) {
    int PROBE_START_LINE_319 = 321;
	com.google.javascript.rhino.jstype.JSType p_that_5399_line_319 = that;
	boolean prototype_object_type_1_expr41_line_319 = JSType.isSubtypeHelper(this, p_that_5399_line_319);
	int PROBE_END_LINE_319 = 321;
	if (prototype_object_type_1_expr41_line_319) {
      return true;
    }

    int PROBE_START_LINE_324 = 328;
	com.google.javascript.rhino.jstype.JSType p_that_5399_line_324 = that;
	boolean prototype_object_type_1_expr43_line_324 = p_that_5399_line_324.isUnionType();
	int PROBE_END_LINE_324 = 328;
	// Union types
    if (prototype_object_type_1_expr43_line_324) {
      // The static {@code JSType.isSubtype} check already decomposed
      // union types, so we don't need to check those again.
      return false;
    }

    int PROBE_START_LINE_331 = 333;
	com.google.javascript.rhino.jstype.JSType p_that_5399_line_331 = that;
	boolean prototype_object_type_1_expr44_line_331 = p_that_5399_line_331.isRecordType();
	int PROBE_END_LINE_331 = 333;
	// record types
    if (prototype_object_type_1_expr44_line_331) {
      return RecordType.isSubtype(this, that.toMaybeRecordType());
    }

    int PROBE_START_LINE_338 = 338;
	com.google.javascript.rhino.jstype.JSType p_that_5399_line_338 = that;
	ObjectType prototype_object_type_1_expr45_line_338 = p_that_5399_line_338.toObjectType();
	int PROBE_END_LINE_338 = 338;
	// Interfaces
    // Find all the interfaces implemented by this class and compare each one
    // to the interface instance.
    ObjectType thatObj = prototype_object_type_1_expr45_line_338;
    int PROBE_START_LINE_339 = 339;
	com.google.javascript.rhino.jstype.ObjectType v_that_obj_5400_line_339 = thatObj;
	boolean prototype_object_type_1_expr47_line_339 = v_that_obj_5400_line_339 == null;
	com.google.javascript.rhino.jstype.FunctionType prototype_object_type_1_expr48_line_339 = null;
	if (!prototype_object_type_1_expr47_line_339) {
		com.google.javascript.rhino.jstype.ObjectType v_that_obj_5400_line_339_v1 = thatObj;
		prototype_object_type_1_expr48_line_339 = v_that_obj_5400_line_339_v1.getConstructor();
	}
	FunctionType prototype_object_type_1_expr46_line_339 = prototype_object_type_1_expr47_line_339
			? null
			: prototype_object_type_1_expr48_line_339;
	int PROBE_END_LINE_339 = 339;
	FunctionType thatCtor = prototype_object_type_1_expr46_line_339;

    int PROBE_START_LINE_341 = 354;
	com.google.javascript.rhino.jstype.FunctionType prototype_object_type_1_expr51_line_341 = getConstructor();
	boolean prototype_object_type_1_expr50_line_341 = prototype_object_type_1_expr51_line_341 != null;
	boolean prototype_object_type_1_expr52_line_341 = true;
	if (prototype_object_type_1_expr50_line_341) {
		com.google.javascript.rhino.jstype.FunctionType prototype_object_type_1_expr53_line_341 = getConstructor();
		prototype_object_type_1_expr52_line_341 = prototype_object_type_1_expr53_line_341.isInterface();
	}
	boolean prototype_object_type_1_expr49_line_341 = prototype_object_type_1_expr50_line_341
			&& prototype_object_type_1_expr52_line_341;
	int PROBE_END_LINE_341 = 354;
	if (prototype_object_type_1_expr49_line_341) {
      for (ObjectType thisInterface : getCtorExtendedInterfaces()) {
        if (thisInterface.isSubtype(that)) {
          return true;
        }
      }
    } else {
		int PROBE_START_LINE_347 = 354;
		com.google.javascript.rhino.jstype.FunctionType v_that_ctor_5401_line_347 = thatCtor;
		boolean prototype_object_type_1_expr55_line_347 = v_that_ctor_5401_line_347 != null;
		boolean prototype_object_type_1_expr56_line_347 = true;
		if (prototype_object_type_1_expr55_line_347) {
			com.google.javascript.rhino.jstype.FunctionType v_that_ctor_5401_line_347_v1 = thatCtor;
			prototype_object_type_1_expr56_line_347 = v_that_ctor_5401_line_347_v1.isInterface();
		}
		boolean prototype_object_type_1_expr54_line_347 = prototype_object_type_1_expr55_line_347
				&& prototype_object_type_1_expr56_line_347;
		int PROBE_END_LINE_347 = 354;
		if (prototype_object_type_1_expr54_line_347) {
			Iterable<ObjectType> thisInterfaces = getCtorImplementedInterfaces();
			for (ObjectType thisInterface : thisInterfaces) {
				if (thisInterface.isSubtype(that)) {
					return true;
				}
			}
		}
	}

    int PROBE_START_LINE_357 = 362;
	boolean prototype_object_type_1_expr58_line_357 = isUnknownType();
	boolean prototype_object_type_1_expr59_line_357 = false;
	if (!prototype_object_type_1_expr58_line_357) {
		prototype_object_type_1_expr59_line_357 = implicitPrototypeChainIsUnknown();
	}
	boolean prototype_object_type_1_expr57_line_357 = prototype_object_type_1_expr58_line_357
			|| prototype_object_type_1_expr59_line_357;
	int PROBE_END_LINE_357 = 362;
	// other prototype based objects
    if (prototype_object_type_1_expr57_line_357) {
      // If unsure, say 'yes', to avoid spurious warnings.
      // TODO(user): resolve the prototype chain completely in all cases,
      // to avoid guessing.
      return true;
    }
    int PROBE_START_LINE_363 = 363;
	com.google.javascript.rhino.jstype.ObjectType v_that_obj_5400_line_363 = thatObj;
	boolean prototype_object_type_1_expr61_line_363 = v_that_obj_5400_line_363 != null;
	boolean prototype_object_type_1_expr62_line_363 = true;
	if (prototype_object_type_1_expr61_line_363) {
		com.google.javascript.rhino.jstype.ObjectType v_that_obj_5400_line_363_v1 = thatObj;
		prototype_object_type_1_expr62_line_363 = isImplicitPrototype(v_that_obj_5400_line_363_v1);
	}
	boolean prototype_object_type_1_expr60_line_363 = prototype_object_type_1_expr61_line_363
			&& prototype_object_type_1_expr62_line_363;
	int PROBE_END_LINE_363 = 363;
	return prototype_object_type_1_expr60_line_363;
  }

  private boolean implicitPrototypeChainIsUnknown() {
    int PROBE_START_LINE_367 = 367;
	ObjectType prototype_object_type_1_expr63_line_367 = getImplicitPrototype();
	int PROBE_END_LINE_367 = 367;
	ObjectType p = prototype_object_type_1_expr63_line_367;
    while (true) {
      int PROBE_START_LINE_368 = 368;
		com.google.javascript.rhino.jstype.ObjectType v_p_5402_line_368 = p;
		boolean prototype_object_type_1_expr64_line_368 = v_p_5402_line_368 != null;
		if (!(prototype_object_type_1_expr64_line_368)) {
			break;
		}
		int PROBE_END_LINE_368 = 368;
		int PROBE_START_LINE_369 = 371;
		com.google.javascript.rhino.jstype.ObjectType v_p_5402_line_369 = p;
		boolean prototype_object_type_1_expr65_line_369 = v_p_5402_line_369.isUnknownType();
		int PROBE_END_LINE_369 = 371;
	if (prototype_object_type_1_expr65_line_369) {
        return true;
      }
      int PROBE_START_LINE_372 = 372;
	com.google.javascript.rhino.jstype.ObjectType v_p_5402_line_372 = p;
	com.google.javascript.rhino.jstype.ObjectType prototype_object_type_1_expr67_line_372 = v_p_5402_line_372
			.getImplicitPrototype();
	int PROBE_END_LINE_372 = 372;
	p = prototype_object_type_1_expr67_line_372;
    }
    return false;
  }

  @Override
  public boolean hasCachedValues() {
    int PROBE_START_LINE_379 = 379;
	boolean prototype_object_type_1_expr68_line_379 = super.hasCachedValues();
	int PROBE_END_LINE_379 = 379;
	return prototype_object_type_1_expr68_line_379;
  }

  /** Whether this is a built-in object. */
  @Override
  public boolean isNativeObjectType() {
    int PROBE_START_LINE_385 = 385;
	boolean f_native_type_5385_line_385 = nativeType;
	int PROBE_END_LINE_385 = 385;
	return f_native_type_5385_line_385;
  }

  @Override
  void setOwnerFunction(FunctionType type) {
    int PROBE_START_LINE_390 = 390;
	com.google.javascript.rhino.jstype.FunctionType f_owner_function_5372_line_390 = ownerFunction;
	boolean prototype_object_type_1_expr71_line_390 = f_owner_function_5372_line_390 == null;
	boolean prototype_object_type_1_expr72_line_390 = false;
	if (!prototype_object_type_1_expr71_line_390) {
		com.google.javascript.rhino.jstype.FunctionType p_type_5403_line_390 = type;
		prototype_object_type_1_expr72_line_390 = p_type_5403_line_390 == null;
	}
	boolean prototype_object_type_1_expr70_line_390 = prototype_object_type_1_expr71_line_390
			|| prototype_object_type_1_expr72_line_390;
	int PROBE_END_LINE_390 = 390;
	Preconditions.checkState(prototype_object_type_1_expr70_line_390);
    int PROBE_START_LINE_391 = 391;
	com.google.javascript.rhino.jstype.FunctionType p_type_5403_line_391 = type;
	int PROBE_END_LINE_391 = 391;
	ownerFunction = p_type_5403_line_391;
  }

  @Override
  public FunctionType getOwnerFunction() {
    int PROBE_START_LINE_396 = 396;
	com.google.javascript.rhino.jstype.FunctionType f_owner_function_5372_line_396 = ownerFunction;
	int PROBE_END_LINE_396 = 396;
	return f_owner_function_5372_line_396;
  }

  @Override
  public Iterable<ObjectType> getCtorImplementedInterfaces() {
    return isFunctionPrototypeType()
        ? getOwnerFunction().getImplementedInterfaces()
        : ImmutableList.<ObjectType>of();
  }

  @Override
  public Iterable<ObjectType> getCtorExtendedInterfaces() {
    int PROBE_START_LINE_408 = 410;
	boolean prototype_object_type_1_expr75_line_408 = isFunctionPrototypeType();
	Iterable<com.google.javascript.rhino.jstype.ObjectType> prototype_object_type_1_expr74_line_408 = prototype_object_type_1_expr75_line_408
			? getOwnerFunction().getExtendedInterfaces()
			: ImmutableList.<ObjectType>of();
	int PROBE_END_LINE_408 = 410;
	return prototype_object_type_1_expr74_line_408;
  }

  @Override
  JSType resolveInternal(ErrorReporter t, StaticScope<JSType> scope) {
    setResolvedTypeInternal(this);

    int PROBE_START_LINE_417 = 417;
	ObjectType prototype_object_type_1_expr80_line_417 = getImplicitPrototype();
	int PROBE_END_LINE_417 = 417;
	ObjectType implicitPrototype = prototype_object_type_1_expr80_line_417;
    int PROBE_START_LINE_418 = 421;
	com.google.javascript.rhino.jstype.ObjectType v_implicit_prototype_5406_line_418 = implicitPrototype;
	boolean prototype_object_type_1_expr81_line_418 = v_implicit_prototype_5406_line_418 != null;
	int PROBE_END_LINE_418 = 421;
	if (prototype_object_type_1_expr81_line_418) {
      implicitPrototypeFallback =
          (ObjectType) implicitPrototype.resolve(t, scope);
    }
    int PROBE_START_LINE_422 = 424;
	com.google.javascript.rhino.jstype.PropertyMap f_properties_5383_line_422 = properties;
	Iterable<com.google.javascript.rhino.jstype.Property> prototype_object_type_1_expr84_line_422 = f_properties_5383_line_422
			.values();
	int PROBE_END_LINE_422 = 424;
	for (Property prop : prototype_object_type_1_expr84_line_422) {
      int PROBE_START_LINE_423 = 423;
		com.google.javascript.rhino.jstype.Property v_prop_5407_line_423 = prop;
		com.google.javascript.rhino.jstype.Property v_prop_5407_line_423_v1 = prop;
		com.google.javascript.rhino.jstype.JSType prototype_object_type_1_expr87_line_423 = v_prop_5407_line_423_v1
				.getType();
		com.google.javascript.rhino.ErrorReporter p_t_5404_line_423 = t;
		StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5405_line_423 = scope;
		com.google.javascript.rhino.jstype.JSType prototype_object_type_1_expr86_line_423 = safeResolve(
				prototype_object_type_1_expr87_line_423, p_t_5404_line_423, p_scope_5405_line_423);
		int PROBE_END_LINE_423 = 423;
	v_prop_5407_line_423.setType(prototype_object_type_1_expr86_line_423);
    }
    return this;
  }

  @Override
  public void matchConstraint(JSType constraint) {
    // We only want to match constraints on anonymous types.
    if (hasReferenceName()) {
      return;
    }

    // Handle the case where the constraint object is a record type.
    //
    // param constraint {{prop: (number|undefined)}}
    // function f(constraint) {}
    // f({});
    //
    // We want to modify the object literal to match the constraint, by
    // taking any each property on the record and trying to match
    // properties on this object.
    if (constraint.isRecordType()) {
      matchRecordTypeConstraint(constraint.toObjectType());
    } else if (constraint.isUnionType()) {
      for (JSType alt : constraint.toMaybeUnionType().getAlternates()) {
        if (alt.isRecordType()) {
          matchRecordTypeConstraint(alt.toObjectType());
        }
      }
    }
  }

  public void matchRecordTypeConstraint(ObjectType constraintObj) {
    for (String prop : constraintObj.getOwnPropertyNames()) {
      JSType propType = constraintObj.getPropertyType(prop);
      if (!isPropertyTypeDeclared(prop)) {
        JSType typeToInfer = propType;
        if (!hasProperty(prop)) {
          typeToInfer = getNativeType(JSTypeNative.VOID_TYPE)
              .getLeastSupertype(propType);
        }
        defineInferredProperty(prop, typeToInfer, null);
      }
    }
  }

}
