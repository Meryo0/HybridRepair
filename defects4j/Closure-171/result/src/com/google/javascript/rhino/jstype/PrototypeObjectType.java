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
    this(registry, className, implicitPrototype, false, null);
  }

  /**
   * Creates an object type, allowing specification of the implicit prototype,
   * whether the object is native, and any templatized types.
   */
  PrototypeObjectType(JSTypeRegistry registry, String className,
      ObjectType implicitPrototype, boolean nativeType,
      TemplateTypeMap templateTypeMap) {
    super(registry, templateTypeMap);
    this.properties = new PropertyMap();
    int PROBE_START_LINE_117 = 117;
	com.google.javascript.rhino.jstype.PropertyMap f_properties_6021_line_117 = this.properties;
	int PROBE_END_LINE_117 = 117;
	f_properties_6021_line_117.setParentSource(this);

    int PROBE_START_LINE_119 = 119;
	String p_class_name_6017_line_119 = className;
	int PROBE_END_LINE_119 = 119;
	this.className = p_class_name_6017_line_119;
    int PROBE_START_LINE_120 = 120;
	boolean p_native_type_6019_line_120 = nativeType;
	int PROBE_END_LINE_120 = 120;
	this.nativeType = p_native_type_6019_line_120;
    int PROBE_START_LINE_121 = 126;
	boolean p_native_type_6019_line_121 = nativeType;
	boolean prototype_object_type_1_expr18_line_121 = false;
	if (!p_native_type_6019_line_121) {
		com.google.javascript.rhino.jstype.ObjectType p_implicit_prototype_6018_line_121 = implicitPrototype;
		prototype_object_type_1_expr18_line_121 = p_implicit_prototype_6018_line_121 != null;
	}
	boolean prototype_object_type_1_expr17_line_121 = p_native_type_6019_line_121
			|| prototype_object_type_1_expr18_line_121;
	int PROBE_END_LINE_121 = 126;
	if (prototype_object_type_1_expr17_line_121) {
      int PROBE_START_LINE_122 = 122;
		com.google.javascript.rhino.jstype.ObjectType p_implicit_prototype_6018_line_122 = implicitPrototype;
		int PROBE_END_LINE_122 = 122;
	setImplicitPrototype(p_implicit_prototype_6018_line_122);
    } else {
      setImplicitPrototype(
          registry.getNativeObjectType(JSTypeNative.OBJECT_TYPE));
    }
  }

  @Override
  PropertyMap getPropertyMap() {
    int PROBE_START_LINE_131 = 131;
	com.google.javascript.rhino.jstype.PropertyMap f_properties_6021_line_131 = properties;
	int PROBE_END_LINE_131 = 131;
	return f_properties_6021_line_131;
  }

  @Override
  boolean defineProperty(String name, JSType type, boolean inferred,
      Node propertyNode) {
    int PROBE_START_LINE_137 = 139;
		String p_name_6024_line_137 = name;
		boolean prototype_object_type_1_expr22_line_137 = hasOwnDeclaredProperty(p_name_6024_line_137);
		int PROBE_END_LINE_137 = 139;
	if (prototype_object_type_1_expr22_line_137) {
      return false;
    }
    Property newProp = new Property(
        name, type, inferred, propertyNode);
    int PROBE_START_LINE_142 = 142;
	com.google.javascript.rhino.jstype.PropertyMap f_properties_6021_line_142 = properties;
	String p_name_6024_line_142 = name;
	com.google.javascript.rhino.jstype.Property v_new_prop_6028_line_142 = newProp;
	int PROBE_END_LINE_142 = 142;
	f_properties_6021_line_142.putProperty(p_name_6024_line_142, v_new_prop_6028_line_142);
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
    int PROBE_START_LINE_227 = 268;
	boolean prototype_object_type_1_expr25_line_227 = hasReferenceName();
	int PROBE_END_LINE_227 = 268;
	if (prototype_object_type_1_expr25_line_227) {
      int PROBE_START_LINE_228 = 228;
		String prototype_object_type_1_expr26_line_228 = getReferenceName();
		int PROBE_END_LINE_228 = 228;
	return prototype_object_type_1_expr26_line_228;
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
    int PROBE_START_LINE_272 = 272;
	boolean p_pretty_print_6034_line_272 = prettyPrint;
	int PROBE_END_LINE_272 = 272;
	this.prettyPrint = p_pretty_print_6034_line_272;
  }

  boolean isPrettyPrint() {
    int PROBE_START_LINE_276 = 276;
	boolean f_pretty_print_6012_line_276 = prettyPrint;
	int PROBE_END_LINE_276 = 276;
	return f_pretty_print_6012_line_276;
  }

  @Override
  public FunctionType getConstructor() {
    return null;
  }

  @Override
  public ObjectType getImplicitPrototype() {
    int PROBE_START_LINE_286 = 286;
	com.google.javascript.rhino.jstype.ObjectType f_implicit_prototype_fallback_6035_line_286 = implicitPrototypeFallback;
	int PROBE_END_LINE_286 = 286;
	return f_implicit_prototype_fallback_6035_line_286;
  }

  /**
   * This should only be reset on the FunctionPrototypeType, only to fix an
   * incorrectly established prototype chain due to the user having a mismatch
   * in super class declaration, and only before properties on that type are
   * processed.
   */
  final void setImplicitPrototype(ObjectType implicitPrototype) {
    int PROBE_START_LINE_296 = 296;
	boolean prototype_object_type_1_expr32_line_296 = hasCachedValues();
	boolean prototype_object_type_1_expr31_line_296 = !prototype_object_type_1_expr32_line_296;
	int PROBE_END_LINE_296 = 296;
	checkState(prototype_object_type_1_expr31_line_296);
    int PROBE_START_LINE_297 = 297;
	com.google.javascript.rhino.jstype.ObjectType p_implicit_prototype_6036_line_297 = implicitPrototype;
	int PROBE_END_LINE_297 = 297;
	this.implicitPrototypeFallback = p_implicit_prototype_6036_line_297;
  }

  @Override
  public String getReferenceName() {
    int PROBE_START_LINE_302 = 308;
	String f_class_name_6022_line_302 = className;
	boolean prototype_object_type_1_expr36_line_302 = f_class_name_6022_line_302 != null;
	int PROBE_END_LINE_302 = 308;
	if (prototype_object_type_1_expr36_line_302) {
      int PROBE_START_LINE_303 = 303;
		String f_class_name_6022_line_303 = className;
		int PROBE_END_LINE_303 = 303;
	return f_class_name_6022_line_303;
    } else {
		int PROBE_START_LINE_304 = 308;
		com.google.javascript.rhino.jstype.FunctionType f_owner_function_6011_line_304 = ownerFunction;
		boolean prototype_object_type_1_expr37_line_304 = f_owner_function_6011_line_304 != null;
		int PROBE_END_LINE_304 = 308;
		if (prototype_object_type_1_expr37_line_304) {
			int PROBE_START_LINE_305 = 305;
			com.google.javascript.rhino.jstype.FunctionType f_owner_function_6011_line_305 = ownerFunction;
			String prototype_object_type_1_expr39_line_305 = f_owner_function_6011_line_305.getReferenceName();
			String prototype_object_type_1_expr38_line_305 = prototype_object_type_1_expr39_line_305 + ".prototype";
			int PROBE_END_LINE_305 = 305;
			return prototype_object_type_1_expr38_line_305;
		} else {
			return null;
		}
	}
  }

  @Override
  public boolean hasReferenceName() {
    int PROBE_START_LINE_313 = 313;
	String f_class_name_6022_line_313 = className;
	boolean prototype_object_type_1_expr41_line_313 = f_class_name_6022_line_313 != null;
	boolean prototype_object_type_1_expr42_line_313 = false;
	if (!prototype_object_type_1_expr41_line_313) {
		com.google.javascript.rhino.jstype.FunctionType f_owner_function_6011_line_313 = ownerFunction;
		prototype_object_type_1_expr42_line_313 = f_owner_function_6011_line_313 != null;
	}
	boolean prototype_object_type_1_expr40_line_313 = prototype_object_type_1_expr41_line_313
			|| prototype_object_type_1_expr42_line_313;
	int PROBE_END_LINE_313 = 313;
	return prototype_object_type_1_expr40_line_313;
  }

  @Override
  public boolean isSubtype(JSType that) {
    int PROBE_START_LINE_318 = 320;
	com.google.javascript.rhino.jstype.JSType p_that_6037_line_318 = that;
	boolean prototype_object_type_1_expr43_line_318 = JSType.isSubtypeHelper(this, p_that_6037_line_318);
	int PROBE_END_LINE_318 = 320;
	if (prototype_object_type_1_expr43_line_318) {
      return true;
    }

    int PROBE_START_LINE_323 = 327;
	com.google.javascript.rhino.jstype.JSType p_that_6037_line_323 = that;
	boolean prototype_object_type_1_expr45_line_323 = p_that_6037_line_323.isUnionType();
	int PROBE_END_LINE_323 = 327;
	// Union types
    if (prototype_object_type_1_expr45_line_323) {
      // The static {@code JSType.isSubtype} check already decomposed
      // union types, so we don't need to check those again.
      return false;
    }

    int PROBE_START_LINE_330 = 332;
	com.google.javascript.rhino.jstype.JSType p_that_6037_line_330 = that;
	boolean prototype_object_type_1_expr46_line_330 = p_that_6037_line_330.isRecordType();
	int PROBE_END_LINE_330 = 332;
	// record types
    if (prototype_object_type_1_expr46_line_330) {
      return RecordType.isSubtype(this, that.toMaybeRecordType());
    }

    int PROBE_START_LINE_337 = 337;
	com.google.javascript.rhino.jstype.JSType p_that_6037_line_337 = that;
	ObjectType prototype_object_type_1_expr47_line_337 = p_that_6037_line_337.toObjectType();
	int PROBE_END_LINE_337 = 337;
	// Interfaces
    // Find all the interfaces implemented by this class and compare each one
    // to the interface instance.
    ObjectType thatObj = prototype_object_type_1_expr47_line_337;
    int PROBE_START_LINE_338 = 338;
	com.google.javascript.rhino.jstype.ObjectType v_that_obj_6038_line_338 = thatObj;
	boolean prototype_object_type_1_expr49_line_338 = v_that_obj_6038_line_338 == null;
	com.google.javascript.rhino.jstype.FunctionType prototype_object_type_1_expr50_line_338 = null;
	if (!prototype_object_type_1_expr49_line_338) {
		com.google.javascript.rhino.jstype.ObjectType v_that_obj_6038_line_338_v1 = thatObj;
		prototype_object_type_1_expr50_line_338 = v_that_obj_6038_line_338_v1.getConstructor();
	}
	FunctionType prototype_object_type_1_expr48_line_338 = prototype_object_type_1_expr49_line_338
			? null
			: prototype_object_type_1_expr50_line_338;
	int PROBE_END_LINE_338 = 338;
	FunctionType thatCtor = prototype_object_type_1_expr48_line_338;

    int PROBE_START_LINE_340 = 353;
	com.google.javascript.rhino.jstype.FunctionType prototype_object_type_1_expr53_line_340 = getConstructor();
	boolean prototype_object_type_1_expr52_line_340 = prototype_object_type_1_expr53_line_340 != null;
	boolean prototype_object_type_1_expr54_line_340 = true;
	if (prototype_object_type_1_expr52_line_340) {
		com.google.javascript.rhino.jstype.FunctionType prototype_object_type_1_expr55_line_340 = getConstructor();
		prototype_object_type_1_expr54_line_340 = prototype_object_type_1_expr55_line_340.isInterface();
	}
	boolean prototype_object_type_1_expr51_line_340 = prototype_object_type_1_expr52_line_340
			&& prototype_object_type_1_expr54_line_340;
	int PROBE_END_LINE_340 = 353;
	if (prototype_object_type_1_expr51_line_340) {
      for (ObjectType thisInterface : getCtorExtendedInterfaces()) {
        if (thisInterface.isSubtype(that)) {
          return true;
        }
      }
    } else {
		int PROBE_START_LINE_346 = 353;
		com.google.javascript.rhino.jstype.FunctionType v_that_ctor_6039_line_346 = thatCtor;
		boolean prototype_object_type_1_expr57_line_346 = v_that_ctor_6039_line_346 != null;
		boolean prototype_object_type_1_expr58_line_346 = true;
		if (prototype_object_type_1_expr57_line_346) {
			com.google.javascript.rhino.jstype.FunctionType v_that_ctor_6039_line_346_v1 = thatCtor;
			prototype_object_type_1_expr58_line_346 = v_that_ctor_6039_line_346_v1.isInterface();
		}
		boolean prototype_object_type_1_expr56_line_346 = prototype_object_type_1_expr57_line_346
				&& prototype_object_type_1_expr58_line_346;
		int PROBE_END_LINE_346 = 353;
		if (prototype_object_type_1_expr56_line_346) {
			Iterable<ObjectType> thisInterfaces = getCtorImplementedInterfaces();
			for (ObjectType thisInterface : thisInterfaces) {
				if (thisInterface.isSubtype(that)) {
					return true;
				}
			}
		}
	}

    int PROBE_START_LINE_356 = 361;
	boolean prototype_object_type_1_expr60_line_356 = isUnknownType();
	boolean prototype_object_type_1_expr61_line_356 = false;
	if (!prototype_object_type_1_expr60_line_356) {
		prototype_object_type_1_expr61_line_356 = implicitPrototypeChainIsUnknown();
	}
	boolean prototype_object_type_1_expr59_line_356 = prototype_object_type_1_expr60_line_356
			|| prototype_object_type_1_expr61_line_356;
	int PROBE_END_LINE_356 = 361;
	// other prototype based objects
    if (prototype_object_type_1_expr59_line_356) {
      // If unsure, say 'yes', to avoid spurious warnings.
      // TODO(user): resolve the prototype chain completely in all cases,
      // to avoid guessing.
      return true;
    }
    int PROBE_START_LINE_362 = 362;
	com.google.javascript.rhino.jstype.ObjectType v_that_obj_6038_line_362 = thatObj;
	boolean prototype_object_type_1_expr63_line_362 = v_that_obj_6038_line_362 != null;
	boolean prototype_object_type_1_expr64_line_362 = true;
	if (prototype_object_type_1_expr63_line_362) {
		com.google.javascript.rhino.jstype.ObjectType v_that_obj_6038_line_362_v1 = thatObj;
		prototype_object_type_1_expr64_line_362 = isImplicitPrototype(v_that_obj_6038_line_362_v1);
	}
	boolean prototype_object_type_1_expr62_line_362 = prototype_object_type_1_expr63_line_362
			&& prototype_object_type_1_expr64_line_362;
	int PROBE_END_LINE_362 = 362;
	return prototype_object_type_1_expr62_line_362;
  }

  private boolean implicitPrototypeChainIsUnknown() {
    int PROBE_START_LINE_366 = 366;
	ObjectType prototype_object_type_1_expr65_line_366 = getImplicitPrototype();
	int PROBE_END_LINE_366 = 366;
	ObjectType p = prototype_object_type_1_expr65_line_366;
    while (true) {
      int PROBE_START_LINE_367 = 367;
		com.google.javascript.rhino.jstype.ObjectType v_p_6040_line_367 = p;
		boolean prototype_object_type_1_expr66_line_367 = v_p_6040_line_367 != null;
		if (!(prototype_object_type_1_expr66_line_367)) {
			break;
		}
		int PROBE_END_LINE_367 = 367;
		int PROBE_START_LINE_368 = 370;
		com.google.javascript.rhino.jstype.ObjectType v_p_6040_line_368 = p;
		boolean prototype_object_type_1_expr67_line_368 = v_p_6040_line_368.isUnknownType();
		int PROBE_END_LINE_368 = 370;
	if (prototype_object_type_1_expr67_line_368) {
        return true;
      }
      int PROBE_START_LINE_371 = 371;
	com.google.javascript.rhino.jstype.ObjectType v_p_6040_line_371 = p;
	com.google.javascript.rhino.jstype.ObjectType prototype_object_type_1_expr69_line_371 = v_p_6040_line_371
			.getImplicitPrototype();
	int PROBE_END_LINE_371 = 371;
	p = prototype_object_type_1_expr69_line_371;
    }
    return false;
  }

  @Override
  public boolean hasCachedValues() {
    int PROBE_START_LINE_378 = 378;
	boolean prototype_object_type_1_expr70_line_378 = super.hasCachedValues();
	int PROBE_END_LINE_378 = 378;
	return prototype_object_type_1_expr70_line_378;
  }

  /** Whether this is a built-in object. */
  @Override
  public boolean isNativeObjectType() {
    int PROBE_START_LINE_384 = 384;
	boolean f_native_type_6023_line_384 = nativeType;
	int PROBE_END_LINE_384 = 384;
	return f_native_type_6023_line_384;
  }

  @Override
  void setOwnerFunction(FunctionType type) {
    int PROBE_START_LINE_389 = 389;
	com.google.javascript.rhino.jstype.FunctionType f_owner_function_6011_line_389 = ownerFunction;
	boolean prototype_object_type_1_expr73_line_389 = f_owner_function_6011_line_389 == null;
	boolean prototype_object_type_1_expr74_line_389 = false;
	if (!prototype_object_type_1_expr73_line_389) {
		com.google.javascript.rhino.jstype.FunctionType p_type_6041_line_389 = type;
		prototype_object_type_1_expr74_line_389 = p_type_6041_line_389 == null;
	}
	boolean prototype_object_type_1_expr72_line_389 = prototype_object_type_1_expr73_line_389
			|| prototype_object_type_1_expr74_line_389;
	int PROBE_END_LINE_389 = 389;
	Preconditions.checkState(prototype_object_type_1_expr72_line_389);
    int PROBE_START_LINE_390 = 390;
	com.google.javascript.rhino.jstype.FunctionType p_type_6041_line_390 = type;
	int PROBE_END_LINE_390 = 390;
	ownerFunction = p_type_6041_line_390;
  }

  @Override
  public FunctionType getOwnerFunction() {
    int PROBE_START_LINE_395 = 395;
	com.google.javascript.rhino.jstype.FunctionType f_owner_function_6011_line_395 = ownerFunction;
	int PROBE_END_LINE_395 = 395;
	return f_owner_function_6011_line_395;
  }

  @Override
  public Iterable<ObjectType> getCtorImplementedInterfaces() {
    int PROBE_START_LINE_400 = 402;
	boolean prototype_object_type_1_expr77_line_400 = isFunctionPrototypeType();
	Iterable<com.google.javascript.rhino.jstype.ObjectType> prototype_object_type_1_expr76_line_400 = prototype_object_type_1_expr77_line_400
			? getOwnerFunction().getImplementedInterfaces()
			: ImmutableList.<ObjectType>of();
	int PROBE_END_LINE_400 = 402;
	return prototype_object_type_1_expr76_line_400;
  }

  @Override
  public Iterable<ObjectType> getCtorExtendedInterfaces() {
    int PROBE_START_LINE_407 = 409;
	boolean prototype_object_type_1_expr81_line_407 = isFunctionPrototypeType();
	Iterable<com.google.javascript.rhino.jstype.ObjectType> prototype_object_type_1_expr80_line_407 = prototype_object_type_1_expr81_line_407
			? getOwnerFunction().getExtendedInterfaces()
			: ImmutableList.<ObjectType>of();
	int PROBE_END_LINE_407 = 409;
	return prototype_object_type_1_expr80_line_407;
  }

  @Override
  JSType resolveInternal(ErrorReporter t, StaticScope<JSType> scope) {
    setResolvedTypeInternal(this);

    int PROBE_START_LINE_416 = 416;
	ObjectType prototype_object_type_1_expr86_line_416 = getImplicitPrototype();
	int PROBE_END_LINE_416 = 416;
	ObjectType implicitPrototype = prototype_object_type_1_expr86_line_416;
    int PROBE_START_LINE_417 = 420;
	com.google.javascript.rhino.jstype.ObjectType v_implicit_prototype_6044_line_417 = implicitPrototype;
	boolean prototype_object_type_1_expr87_line_417 = v_implicit_prototype_6044_line_417 != null;
	int PROBE_END_LINE_417 = 420;
	if (prototype_object_type_1_expr87_line_417) {
      implicitPrototypeFallback =
          (ObjectType) implicitPrototype.resolve(t, scope);
    }
    int PROBE_START_LINE_421 = 423;
	com.google.javascript.rhino.jstype.PropertyMap f_properties_6021_line_421 = properties;
	Iterable<com.google.javascript.rhino.jstype.Property> prototype_object_type_1_expr90_line_421 = f_properties_6021_line_421
			.values();
	int PROBE_END_LINE_421 = 423;
	for (Property prop : prototype_object_type_1_expr90_line_421) {
      int PROBE_START_LINE_422 = 422;
		com.google.javascript.rhino.jstype.Property v_prop_6045_line_422 = prop;
		com.google.javascript.rhino.jstype.Property v_prop_6045_line_422_v1 = prop;
		com.google.javascript.rhino.jstype.JSType prototype_object_type_1_expr93_line_422 = v_prop_6045_line_422_v1
				.getType();
		com.google.javascript.rhino.ErrorReporter p_t_6042_line_422 = t;
		StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_6043_line_422 = scope;
		com.google.javascript.rhino.jstype.JSType prototype_object_type_1_expr92_line_422 = safeResolve(
				prototype_object_type_1_expr93_line_422, p_t_6042_line_422, p_scope_6043_line_422);
		int PROBE_END_LINE_422 = 422;
	v_prop_6045_line_422.setType(prototype_object_type_1_expr92_line_422);
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
