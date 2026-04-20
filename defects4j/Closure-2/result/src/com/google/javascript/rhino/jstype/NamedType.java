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

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.Lists;
import com.google.javascript.rhino.ErrorReporter;
import com.google.javascript.rhino.Node;

import java.util.List;

/**
 * A {@code NamedType} is a named reference to some other type.  This provides
 * a convenient mechanism for implementing forward references to types; a
 * {@code NamedType} can be used as a placeholder until its reference is
 * resolved.  It is also useful for representing type names in JsDoc type
 * annotations, some of which may never be resolved (as they may refer to
 * types in host systems not yet supported by JSCompiler, such as the JVM.)<p>
 *
 * An important distinction: {@code NamedType} is a type name reference,
 * whereas {@link ObjectType} is a named type object, such as an Enum name.
 * The Enum itself is typically used only in a dot operator to name one of its
 * constants, or in a declaration, where its name will appear in a
 * NamedType.<p>
 *
 * A {@code NamedType} is not currently a full-fledged typedef, because it
 * cannot resolve to any JavaScript type.  It can only resolve to a named
 * {@link JSTypeRegistry} type, or to {@link FunctionType} or
 * {@link EnumType}.<p>
 *
 * If full typedefs are to be supported, then each method on each type class
 * needs to be reviewed to make sure that everything works correctly through
 * typedefs.  Alternatively, we would need to walk through the parse tree and
 * unroll each reference to a {@code NamedType} to its resolved type before
 * applying the rest of the analysis.<p>
 *
 * TODO(user): Revisit all of this logic.<p>
 *
 * The existing typing logic is hacky.  Unresolved types should get processed
 * in a more consistent way, but with the Rhino merge coming, there will be
 * much that has to be changed.<p>
 *
 */
class NamedType extends ProxyObjectType {
  private static final long serialVersionUID = 1L;

  private final String reference;
  private final String sourceName;
  private final int lineno;
  private final int charno;

  /**
   * Validates the type resolution.
   */
  private Predicate<JSType> validator;

  /**
   * Property-defining continuations.
   */
  private List<PropertyContinuation> propertyContinuations = null;

  /**
   * Create a named type based on the reference.
   */
  NamedType(JSTypeRegistry registry, String reference,
      String sourceName, int lineno, int charno) {
    super(registry, registry.getNativeObjectType(JSTypeNative.UNKNOWN_TYPE));

    int PROBE_START_LINE_107 = 107;
	String p_reference_5209_line_107 = reference;
	int PROBE_END_LINE_107 = 107;
	Preconditions.checkNotNull(p_reference_5209_line_107);
    int PROBE_START_LINE_108 = 108;
	String p_reference_5209_line_108 = reference;
	int PROBE_END_LINE_108 = 108;
	this.reference = p_reference_5209_line_108;
    int PROBE_START_LINE_109 = 109;
	String p_source_name_5210_line_109 = sourceName;
	int PROBE_END_LINE_109 = 109;
	this.sourceName = p_source_name_5210_line_109;
    int PROBE_START_LINE_110 = 110;
	int p_lineno_5211_line_110 = lineno;
	int PROBE_END_LINE_110 = 110;
	this.lineno = p_lineno_5211_line_110;
    int PROBE_START_LINE_111 = 111;
	int p_charno_5212_line_111 = charno;
	int PROBE_END_LINE_111 = 111;
	this.charno = p_charno_5212_line_111;
  }

  @Override
  boolean defineProperty(String propertyName, JSType type,
      boolean inferred, Node propertyNode) {
    if (!isResolved()) {
      // If this is an unresolved object type, we need to save all its
      // properties and define them when it is resolved.
      if (propertyContinuations == null) {
        propertyContinuations = Lists.newArrayList();
      }
      propertyContinuations.add(
          new PropertyContinuation(
              propertyName, type, inferred, propertyNode));
      return true;
    } else {
      return super.defineProperty(
          propertyName, type, inferred, propertyNode);
    }
  }

  private void finishPropertyContinuations() {
    int PROBE_START_LINE_134 = 134;
	ObjectType named_type_1_expr16_line_134 = getReferencedObjTypeInternal();
	int PROBE_END_LINE_134 = 134;
	ObjectType referencedObjType = named_type_1_expr16_line_134;
    int PROBE_START_LINE_135 = 141;
	com.google.javascript.rhino.jstype.ObjectType v_referenced_obj_type_5221_line_135 = referencedObjType;
	boolean named_type_1_expr18_line_135 = v_referenced_obj_type_5221_line_135 != null;
	boolean named_type_1_expr19_line_135 = true;
	if (named_type_1_expr18_line_135) {
		com.google.javascript.rhino.jstype.ObjectType v_referenced_obj_type_5221_line_135_v1 = referencedObjType;
		boolean named_type_1_expr20_line_135 = v_referenced_obj_type_5221_line_135_v1.isUnknownType();
		named_type_1_expr19_line_135 = !named_type_1_expr20_line_135;
	}
	boolean named_type_1_expr17_line_135 = named_type_1_expr18_line_135 && named_type_1_expr19_line_135;
	int PROBE_END_LINE_135 = 141;
	if (named_type_1_expr17_line_135) {
      if (propertyContinuations != null) {
        for (PropertyContinuation c : propertyContinuations) {
          c.commit(this);
        }
      }
    }
    propertyContinuations = null;
  }

  /** Returns the type to which this refers (which is unknown if unresolved). */
  public JSType getReferencedType() {
    int PROBE_START_LINE_147 = 147;
	com.google.javascript.rhino.jstype.JSType named_type_1_expr22_line_147 = getReferencedTypeInternal();
	int PROBE_END_LINE_147 = 147;
	return named_type_1_expr22_line_147;
  }

  @Override
  public String getReferenceName() {
    return reference;
  }

  @Override
  String toStringHelper(boolean forAnnotations) {
    return reference;
  }

  @Override
  public boolean hasReferenceName() {
    return true;
  }

  @Override
  boolean isNamedType() {
    return true;
  }

  @Override
  public boolean isNominalType() {
    return true;
  }

  @Override
  public int hashCode() {
    int PROBE_START_LINE_177 = 177;
	String f_reference_5213_line_177 = reference;
	int named_type_1_expr23_line_177 = f_reference_5213_line_177.hashCode();
	int PROBE_END_LINE_177 = 177;
	return named_type_1_expr23_line_177;
  }

  /**
   * Resolve the referenced type within the enclosing scope.
   */
  @Override
  JSType resolveInternal(ErrorReporter t, StaticScope<JSType> enclosing) {
    int PROBE_START_LINE_189 = 189;
	com.google.javascript.rhino.ErrorReporter p_t_5223_line_189 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_enclosing_5224_line_189 = enclosing;
	boolean named_type_1_expr24_line_189 = resolveViaRegistry(p_t_5223_line_189, p_enclosing_5224_line_189);
	int PROBE_END_LINE_189 = 189;
	// TODO(user): Investigate whether it is really necessary to keep two
    // different mechanisms for resolving named types, and if so, which order
    // makes more sense. Now, resolution via registry is first in order to
    // avoid triggering the warnings built into the resolution via properties.
    boolean resolved = named_type_1_expr24_line_189;
    int PROBE_START_LINE_190 = 192;
	boolean named_type_1_expr25_line_190 = detectInheritanceCycle();
	int PROBE_END_LINE_190 = 192;
	if (named_type_1_expr25_line_190) {
      handleTypeCycle(t);
    }

    int PROBE_START_LINE_194 = 199;
	boolean v_resolved_5225_line_194 = resolved;
	int PROBE_END_LINE_194 = 199;
	if (v_resolved_5225_line_194) {
      super.resolveInternal(t, enclosing);
      finishPropertyContinuations();
      return registry.isLastGeneration() ?
          getReferencedType() : this;
    }

    int PROBE_START_LINE_201 = 201;
	com.google.javascript.rhino.ErrorReporter p_t_5223_line_201 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_enclosing_5224_line_201 = enclosing;
	int PROBE_END_LINE_201 = 201;
	resolveViaProperties(p_t_5223_line_201, p_enclosing_5224_line_201);
    int PROBE_START_LINE_202 = 204;
	boolean named_type_1_expr27_line_202 = detectInheritanceCycle();
	int PROBE_END_LINE_202 = 204;
	if (named_type_1_expr27_line_202) {
      handleTypeCycle(t);
    }

    int PROBE_START_LINE_206 = 206;
	com.google.javascript.rhino.ErrorReporter p_t_5223_line_206 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_enclosing_5224_line_206 = enclosing;
	int PROBE_END_LINE_206 = 206;
	super.resolveInternal(p_t_5223_line_206, p_enclosing_5224_line_206);
    int PROBE_START_LINE_207 = 209;
	boolean named_type_1_expr29_line_207 = isResolved();
	int PROBE_END_LINE_207 = 209;
	if (named_type_1_expr29_line_207) {
      finishPropertyContinuations();
    }
    int PROBE_START_LINE_210 = 211;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_4786_line_210 = registry;
	boolean named_type_1_expr32_line_210 = f_registry_4786_line_210.isLastGeneration();
	com.google.javascript.rhino.jstype.JSType named_type_1_expr31_line_210 = named_type_1_expr32_line_210
			? getReferencedType()
			: this;
	int PROBE_END_LINE_210 = 211;
	return named_type_1_expr31_line_210;
  }

  /**
   * Resolves a named type by looking it up in the registry.
   * @return True if we resolved successfully.
   */
  private boolean resolveViaRegistry(
      ErrorReporter t, StaticScope<JSType> enclosing) {
    int PROBE_START_LINE_220 = 220;
		com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_4786_line_220 = registry;
		String f_reference_5213_line_220 = reference;
		JSType named_type_1_expr35_line_220 = f_registry_4786_line_220.getType(f_reference_5213_line_220);
		int PROBE_END_LINE_220 = 220;
	JSType type = named_type_1_expr35_line_220;
    int PROBE_START_LINE_221 = 224;
	com.google.javascript.rhino.jstype.JSType v_type_5228_line_221 = type;
	boolean named_type_1_expr36_line_221 = v_type_5228_line_221 != null;
	int PROBE_END_LINE_221 = 224;
	if (named_type_1_expr36_line_221) {
      setReferencedAndResolvedType(type, t, enclosing);
      return true;
    }
    return false;
  }

  /**
   * Resolves a named type by looking up its first component in the scope, and
   * subsequent components as properties. The scope must have been fully
   * parsed and a symbol table constructed.
   */
  private void resolveViaProperties(ErrorReporter t,
                                    StaticScope<JSType> enclosing) {
    int PROBE_START_LINE_235 = 235;
										com.google.javascript.rhino.ErrorReporter p_t_5229_line_235 = t;
										StaticScope<com.google.javascript.rhino.jstype.JSType> p_enclosing_5230_line_235 = enclosing;
										JSType named_type_1_expr37_line_235 = lookupViaProperties(p_t_5229_line_235,
												p_enclosing_5230_line_235);
										int PROBE_END_LINE_235 = 235;
	JSType value = named_type_1_expr37_line_235;
    int PROBE_START_LINE_237 = 257;
	com.google.javascript.rhino.jstype.JSType v_value_5231_line_237 = value;
	boolean named_type_1_expr40_line_237 = v_value_5231_line_237 != null;
	boolean named_type_1_expr41_line_237 = true;
	if (named_type_1_expr40_line_237) {
		com.google.javascript.rhino.jstype.JSType v_value_5231_line_237_v1 = value;
		named_type_1_expr41_line_237 = v_value_5231_line_237_v1.isFunctionType();
	}
	boolean named_type_1_expr39_line_237 = named_type_1_expr40_line_237 && named_type_1_expr41_line_237;
	boolean named_type_1_expr38_line_237 = named_type_1_expr39_line_237
			&& (value.isConstructor() || value.isInterface());
	int PROBE_END_LINE_237 = 257;
	// last component of the chain
    if (named_type_1_expr38_line_237) {
      FunctionType functionType = value.toMaybeFunctionType();
      setReferencedAndResolvedType(
          functionType.getInstanceType(), t, enclosing);
    } else {
		int PROBE_START_LINE_242 = 257;
		com.google.javascript.rhino.jstype.JSType v_value_5231_line_242 = value;
		boolean named_type_1_expr43_line_242 = v_value_5231_line_242 != null;
		boolean named_type_1_expr44_line_242 = true;
		if (named_type_1_expr43_line_242) {
			com.google.javascript.rhino.jstype.JSType v_value_5231_line_242_v1 = value;
			named_type_1_expr44_line_242 = v_value_5231_line_242_v1.isNoObjectType();
		}
		boolean named_type_1_expr42_line_242 = named_type_1_expr43_line_242 && named_type_1_expr44_line_242;
		int PROBE_END_LINE_242 = 257;
		if (named_type_1_expr42_line_242) {
			setReferencedAndResolvedType(registry.getNativeFunctionType(JSTypeNative.NO_OBJECT_TYPE).getInstanceType(),
					t, enclosing);
		} else {
			int PROBE_START_LINE_246 = 257;
			com.google.javascript.rhino.jstype.JSType v_value_5231_line_246 = value;
			boolean named_type_1_expr45_line_246 = v_value_5231_line_246 instanceof EnumType;
			int PROBE_END_LINE_246 = 257;
			if (named_type_1_expr45_line_246) {
				setReferencedAndResolvedType(((EnumType) value).getElementsType(), t, enclosing);
			} else {
				int PROBE_START_LINE_256 = 256;
				com.google.javascript.rhino.ErrorReporter p_t_5229_line_256 = t;
				com.google.javascript.rhino.jstype.JSType v_value_5231_line_256 = value;
				boolean named_type_1_expr48_line_256 = v_value_5231_line_256 == null;
				boolean named_type_1_expr49_line_256 = false;
				if (!named_type_1_expr48_line_256) {
					com.google.javascript.rhino.jstype.JSType v_value_5231_line_256_v1 = value;
					named_type_1_expr49_line_256 = v_value_5231_line_256_v1.isUnknownType();
				}
				boolean named_type_1_expr47_line_256 = named_type_1_expr48_line_256 || named_type_1_expr49_line_256;
				int PROBE_END_LINE_256 = 256;
				handleUnresolvedType(p_t_5229_line_256, named_type_1_expr47_line_256);
			}
		}
	}
  }

  /**
   * Resolves a type by looking up its first component in the scope, and
   * subsequent components as properties. The scope must have been fully
   * parsed and a symbol table constructed.
   * @return The type of the symbol, or null if the type could not be found.
   */
  private JSType lookupViaProperties( ErrorReporter t,
      StaticScope<JSType> enclosing) {
    int PROBE_START_LINE_268 = 268;
		String f_reference_5213_line_268 = reference;
		int named_type_1_expr51_line_268 = -1;
		String[] named_type_1_expr50_line_268 = f_reference_5213_line_268.split("\\.", named_type_1_expr51_line_268);
		int PROBE_END_LINE_268 = 268;
	String[] componentNames = named_type_1_expr50_line_268;
    int PROBE_START_LINE_269 = 271;
	String[] v_component_names_5234_line_269 = componentNames;
	String named_type_1_expr54_line_269 = v_component_names_5234_line_269[0];
	int named_type_1_expr53_line_269 = named_type_1_expr54_line_269.length();
	boolean named_type_1_expr52_line_269 = named_type_1_expr53_line_269 == 0;
	int PROBE_END_LINE_269 = 271;
	if (named_type_1_expr52_line_269) {
      return null;
    }
    int PROBE_START_LINE_272 = 272;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_enclosing_5233_line_272 = enclosing;
	String[] v_component_names_5234_line_272 = componentNames;
	String named_type_1_expr56_line_272 = v_component_names_5234_line_272[0];
	StaticSlot<JSType> named_type_1_expr55_line_272 = p_enclosing_5233_line_272.getSlot(named_type_1_expr56_line_272);
	int PROBE_END_LINE_272 = 272;
	StaticSlot<JSType> slot = named_type_1_expr55_line_272;
    int PROBE_START_LINE_273 = 275;
	StaticSlot<com.google.javascript.rhino.jstype.JSType> v_slot_5235_line_273 = slot;
	boolean named_type_1_expr57_line_273 = v_slot_5235_line_273 == null;
	int PROBE_END_LINE_273 = 275;
	if (named_type_1_expr57_line_273) {
      return null;
    }
    // If the first component has a type of 'Unknown', then any type
    // names using it should be regarded as silently 'Unknown' rather than be
    // noisy about it.
    JSType slotType = slot.getType();
    if (slotType == null || slotType.isAllType() || slotType.isNoType()) {
      return null;
    }
    JSType value = getTypedefType(t, slot, componentNames[0]);
    if (value == null) {
      return null;
    }

    // resolving component by component
    for (int i = 1; i < componentNames.length; i++) {
      ObjectType parentClass = ObjectType.cast(value);
      if (parentClass == null) {
        return null;
      }
      if (componentNames[i].length() == 0) {
        return null;
      }
      value = parentClass.getPropertyType(componentNames[i]);
    }
    return value;
  }

  private void setReferencedAndResolvedType(JSType type, ErrorReporter t,
      StaticScope<JSType> enclosing) {
    if (validator != null) {
      validator.apply(type);
    }
    setReferencedType(type);
    checkEnumElementCycle(t);
    checkProtoCycle(t);
    setResolvedTypeInternal(getReferencedType());
  }

  private void handleTypeCycle(ErrorReporter t) {
    setReferencedType(
        registry.getNativeObjectType(JSTypeNative.UNKNOWN_TYPE));
    t.warning("Cycle detected in inheritance chain of type " + reference,
        sourceName, lineno, charno);
    setResolvedTypeInternal(getReferencedType());
  }

  private void checkEnumElementCycle(ErrorReporter t) {
    JSType referencedType = getReferencedType();
    if (referencedType instanceof EnumElementType &&
        ((EnumElementType) referencedType).getPrimitiveType() == this) {
      handleTypeCycle(t);
    }
  }

  private void checkProtoCycle(ErrorReporter t) {
    JSType referencedType = getReferencedType();
    if (referencedType == this) {
      handleTypeCycle(t);
    }
  }

  // Warns about this type being unresolved iff it's not a forward-declared
  // type name.
  private void handleUnresolvedType(
      ErrorReporter t, boolean ignoreForwardReferencedTypes) {
    int PROBE_START_LINE_340 = 360;
		com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_4786_line_340 = registry;
		boolean named_type_1_expr58_line_340 = f_registry_4786_line_340.isLastGeneration();
		int PROBE_END_LINE_340 = 360;
	if (named_type_1_expr58_line_340) {
      boolean isForwardDeclared =
          ignoreForwardReferencedTypes &&
          registry.isForwardDeclaredType(reference);
      int PROBE_START_LINE_344 = 355;
	boolean v_is_forward_declared_5244_line_344 = isForwardDeclared;
	boolean named_type_1_expr61_line_344 = !v_is_forward_declared_5244_line_344;
	boolean named_type_1_expr62_line_344 = true;
	if (named_type_1_expr61_line_344) {
		com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_4786_line_344 = registry;
		named_type_1_expr62_line_344 = f_registry_4786_line_344.isLastGeneration();
	}
	boolean named_type_1_expr60_line_344 = named_type_1_expr61_line_344 && named_type_1_expr62_line_344;
	int PROBE_END_LINE_344 = 355;
	if (named_type_1_expr60_line_344) {
        int PROBE_START_LINE_345 = 346;
		com.google.javascript.rhino.ErrorReporter p_t_5242_line_345 = t;
		String f_reference_5213_line_345 = reference;
		String named_type_1_expr64_line_345 = "Bad type annotation. Unknown type " + f_reference_5213_line_345;
		int PROBE_END_LINE_345 = 346;
		p_t_5242_line_345.warning(named_type_1_expr64_line_345,
            sourceName, lineno, charno);
      } else {
        setReferencedType(
            registry.getNativeObjectType(
                JSTypeNative.NO_RESOLVED_TYPE));

        if (registry.isLastGeneration() && validator != null) {
          validator.apply(getReferencedType());
        }
      }

      int PROBE_START_LINE_357 = 357;
	com.google.javascript.rhino.jstype.JSType named_type_1_expr66_line_357 = getReferencedType();
	int PROBE_END_LINE_357 = 357;
	setResolvedTypeInternal(named_type_1_expr66_line_357);
    } else {
      setResolvedTypeInternal(this);
    }
  }

  JSType getTypedefType(ErrorReporter t, StaticSlot<JSType> slot, String name) {
    JSType type = slot.getType();
    if (type != null) {
      return type;
    }
    handleUnresolvedType(t, true);
    return null;
  }

  @Override
  public boolean setValidator(Predicate<JSType> validator) {
    int PROBE_START_LINE_377 = 382;
	boolean named_type_1_expr67_line_377 = this.isResolved();
	int PROBE_END_LINE_377 = 382;
	// If the type is already resolved, we can validate it now. If
    // the type has not been resolved yet, we need to wait till its
    // resolved before we can validate it.
    if (named_type_1_expr67_line_377) {
      return super.setValidator(validator);
    } else {
      int PROBE_START_LINE_380 = 380;
		Predicate<com.google.javascript.rhino.jstype.JSType> p_validator_5248_line_380 = validator;
		int PROBE_END_LINE_380 = 380;
	this.validator = p_validator_5248_line_380;
      return true;
    }
  }

  /** Store enough information to define a property at a later time. */
  private static final class PropertyContinuation {
    private final String propertyName;
    private final JSType type;
    private final boolean inferred;
    private final Node propertyNode;

    private PropertyContinuation(
        String propertyName,
        JSType type,
        boolean inferred,
        Node propertyNode) {
      this.propertyName = propertyName;
      this.type = type;
      this.inferred = inferred;
      this.propertyNode = propertyNode;
    }

    void commit(ObjectType target) {
      target.defineProperty(
          propertyName, type, inferred, propertyNode);
    }
  }
}
