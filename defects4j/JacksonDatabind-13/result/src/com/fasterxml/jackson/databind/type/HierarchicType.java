package com.fasterxml.jackson.databind.type;

import java.lang.reflect.*;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/**
 * Simple replacement for {@link java.lang.Class} (and/or various Type subtypes)
 * that is used as part of single-path extends/implements chain to express
 * specific relationship between one subtype and one supertype. This is needed
 * for resolving type parameters. Instances are doubly-linked so that chain
 * can be traversed in both directions
 */
public class HierarchicType
{
    /**
     * Type which will be either plain {@link java.lang.Class} or
     * {@link java.lang.reflect.ParameterizedType}.
     */
    protected final Type _actualType;
    
    protected final Class<?> _rawClass;

    protected final ParameterizedType _genericType;
    
    protected HierarchicType _superType;

    protected HierarchicType _subType;
    
    public HierarchicType(Type type)
    {
        int PROBE_START_LINE_30 = 30;
		java.lang.reflect.Type p_type_3915_line_30 = type;
		int PROBE_END_LINE_30 = 30;
		this._actualType = p_type_3915_line_30;
        int PROBE_START_LINE_31 = 39;
		java.lang.reflect.Type p_type_3915_line_31 = type;
		boolean hierarchic_type_1_expr4_line_31 = p_type_3915_line_31 instanceof Class<?>;
		int PROBE_END_LINE_31 = 39;
		if (hierarchic_type_1_expr4_line_31) {
            int PROBE_START_LINE_32 = 32;
			java.lang.reflect.Type p_type_3915_line_32 = type;
			int PROBE_END_LINE_32 = 32;
			_rawClass = (Class<?>) p_type_3915_line_32;
            _genericType = null;
        } else {
			int PROBE_START_LINE_34 = 39;
			java.lang.reflect.Type p_type_3915_line_34 = type;
			boolean hierarchic_type_1_expr8_line_34 = p_type_3915_line_34 instanceof ParameterizedType;
			int PROBE_END_LINE_34 = 39;
			if (hierarchic_type_1_expr8_line_34) {
				int PROBE_START_LINE_35 = 35;
				java.lang.reflect.Type p_type_3915_line_35 = type;
				int PROBE_END_LINE_35 = 35;
				_genericType = (ParameterizedType) p_type_3915_line_35;
				int PROBE_START_LINE_36 = 36;
				java.lang.reflect.ParameterizedType f__generic_type_3918_line_36 = _genericType;
				java.lang.reflect.Type hierarchic_type_1_expr13_line_36 = f__generic_type_3918_line_36.getRawType();
				int PROBE_END_LINE_36 = 36;
				_rawClass = (Class<?>) hierarchic_type_1_expr13_line_36;
			} else {
				throw new IllegalArgumentException(
						"Type " + type.getClass().getName() + " can not be used to construct HierarchicType");
			}
		}
    }

    private HierarchicType(Type actualType, Class<?> rawClass, ParameterizedType genericType,
        HierarchicType superType, HierarchicType subType)
    {
        _actualType = actualType;
        _rawClass = rawClass;
        _genericType = genericType;
        _superType = superType;
        _subType = subType;
    }
    
    /**
     * Method that can be used to create a deep clone of this hierarchic type, including
     * super types (but not subtypes)
     */
    public HierarchicType deepCloneWithoutSubtype()
    {
        HierarchicType sup = (_superType == null) ? null : _superType.deepCloneWithoutSubtype();
        HierarchicType result = new HierarchicType(_actualType, _rawClass, _genericType, sup, null);
        if (sup != null) {
            sup.setSubType(result);
        }
        return result;
    }
    
    public void setSuperType(HierarchicType sup) { int PROBE_START_LINE_66 = 66;
		com.fasterxml.jackson.databind.type.HierarchicType p_sup_3924_line_66 = sup;
		int PROBE_END_LINE_66 = 66;
	_superType = p_sup_3924_line_66; }
    public final HierarchicType getSuperType() { int PROBE_START_LINE_67 = 67;
		com.fasterxml.jackson.databind.type.HierarchicType f__super_type_3925_line_67 = _superType;
		int PROBE_END_LINE_67 = 67;
	return f__super_type_3925_line_67; }
    public void setSubType(HierarchicType sub) { int PROBE_START_LINE_68 = 68;
		com.fasterxml.jackson.databind.type.HierarchicType p_sub_3926_line_68 = sub;
		int PROBE_END_LINE_68 = 68;
	_subType = p_sub_3926_line_68; }
    public final HierarchicType getSubType() { return _subType; }
    
    public final boolean isGeneric() { int PROBE_START_LINE_71 = 71;
		java.lang.reflect.ParameterizedType f__generic_type_3918_line_71 = _genericType;
		boolean hierarchic_type_1_expr16_line_71 = f__generic_type_3918_line_71 != null;
		int PROBE_END_LINE_71 = 71;
	return hierarchic_type_1_expr16_line_71; }
    public final ParameterizedType asGeneric() { int PROBE_START_LINE_72 = 72;
		java.lang.reflect.ParameterizedType f__generic_type_3918_line_72 = _genericType;
		int PROBE_END_LINE_72 = 72;
	return f__generic_type_3918_line_72; }

    public final Class<?> getRawClass() { int PROBE_START_LINE_74 = 74;
		Class<?> f__raw_class_3917_line_74 = _rawClass;
		int PROBE_END_LINE_74 = 74;
	return f__raw_class_3917_line_74; }
    
    @Override
    public String toString() {
        if (_genericType != null) {
            return _genericType.toString();
        }
        return _rawClass.getName();
    }
    
}
