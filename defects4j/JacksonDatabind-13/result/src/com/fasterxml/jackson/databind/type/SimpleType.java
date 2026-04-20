package com.fasterxml.jackson.databind.type;

import java.util.*;

import com.fasterxml.jackson.databind.JavaType;

/**
 * Simple types are defined as anything other than one of recognized
 * container types (arrays, Collections, Maps). For our needs we
 * need not know anything further, since we have no way of dealing
 * with generic types other than Collections and Maps.
 */
public final class SimpleType
    extends TypeBase
{
    private static final long serialVersionUID = -800374828948534376L;

    /**
     * In case there are resolved type parameters, this field stores reference
     * to that type. It must be {@link #getRawClass()} or its supertype.
     * 
     * @since 2.5
     */
    protected final Class<?> _typeParametersFor;
    
    /**
     * Generic type arguments for this type.
     */
    protected final JavaType[] _typeParameters;

    /**
     * Names of generic type arguments for this type; will
     * match values in {@link #_typeParameters}
     */
    protected final String[] _typeNames;
    
    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    protected SimpleType(Class<?> cls) {
        this(cls, null, null, null, null, false, null);
    }

    /**
     * @deprecated Since 2.5 use variant that takes one more argument
     */
    @Deprecated
    protected SimpleType(Class<?> cls, String[] typeNames, JavaType[] typeParams,
            Object valueHandler, Object typeHandler, boolean asStatic)
    {
        this(cls, typeNames, typeParams, valueHandler, typeHandler, asStatic, null);
    }

    /**
     * 
     * @param parametersFrom Interface or abstract class implemented by this type,
     *   and for which type parameters apply. It may be <code>cls</code> itself,
     *   but more commonly it is one of its supertypes.
     */
    protected SimpleType(Class<?> cls,
            String[] typeNames, JavaType[] typeParams,
            Object valueHandler, Object typeHandler, boolean asStatic,
            Class<?> parametersFrom)
    {
        super(cls, 0, valueHandler, typeHandler, asStatic);
        int PROBE_START_LINE_69 = 75;
		String[] p_type_names_3936_line_69 = typeNames;
		boolean simple_type_1_expr4_line_69 = p_type_names_3936_line_69 == null;
		boolean simple_type_1_expr5_line_69 = false;
		if (!simple_type_1_expr4_line_69) {
			String[] p_type_names_3936_line_69_v1 = typeNames;
			int q_length_141_line_69 = p_type_names_3936_line_69_v1.length;
			simple_type_1_expr5_line_69 = q_length_141_line_69 == 0;
		}
		boolean simple_type_1_expr3_line_69 = simple_type_1_expr4_line_69 || simple_type_1_expr5_line_69;
		int PROBE_END_LINE_69 = 75;
		if (simple_type_1_expr3_line_69) {
            _typeNames = null;
            _typeParameters = null;
        } else {
            _typeNames = typeNames;
            _typeParameters = typeParams;
        }
        int PROBE_START_LINE_76 = 76;
		Class<?> p_parameters_from_3941_line_76 = parametersFrom;
		int PROBE_END_LINE_76 = 76;
		_typeParametersFor = p_parameters_from_3941_line_76;
    }

    /**
     * Method used by core Jackson classes: NOT to be used by application code.
     *<p>
     * NOTE: public only because it is called by <code>ObjectMapper</code> which is
     * not in same package
     */
    public static SimpleType constructUnsafe(Class<?> raw) {
        int PROBE_START_LINE_86 = 86;
		Class<?> p_raw_3945_line_86 = raw;
		int PROBE_END_LINE_86 = 86;
		return new SimpleType(p_raw_3945_line_86, null, null, null, null, false, null);
    }

    @Override
    protected JavaType _narrow(Class<?> subclass)
    {
        // Should we check that there is a sub-class relationship?
        return new SimpleType(subclass, _typeNames, _typeParameters, _valueHandler, _typeHandler,
                _asStatic, _typeParametersFor);
    }

    @Override
    public JavaType narrowContentsBy(Class<?> subclass)
    {
        // should never get called
        throw new IllegalArgumentException("Internal error: SimpleType.narrowContentsBy() should never be called");
    }

    @Override
    public JavaType widenContentsBy(Class<?> subclass)
    {
        // should never get called
        throw new IllegalArgumentException("Internal error: SimpleType.widenContentsBy() should never be called");
    }
    
    public static SimpleType construct(Class<?> cls)
    {
        /* Let's add sanity checks, just to ensure no
         * Map/Collection entries are constructed
         */
        if (Map.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Can not construct SimpleType for a Map (class: "+cls.getName()+")");
        }
        if (Collection.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Can not construct SimpleType for a Collection (class: "+cls.getName()+")");
        }
        // ... and while we are at it, not array types either
        if (cls.isArray()) {
            throw new IllegalArgumentException("Can not construct SimpleType for an array (class: "+cls.getName()+")");
        }
        return new SimpleType(cls);
    }

    @Override
    public SimpleType withTypeHandler(Object h)
    {
        return new SimpleType(_class, _typeNames, _typeParameters, _valueHandler, h, _asStatic, _typeParametersFor);
    }

    @Override
    public JavaType withContentTypeHandler(Object h) {
        // no content type, so:
        throw new IllegalArgumentException("Simple types have no content types; can not call withContenTypeHandler()");
    }

    @Override
    public SimpleType withValueHandler(Object h) {
        if (h == _valueHandler) {
            return this;
        }
        return new SimpleType(_class, _typeNames, _typeParameters, h, _typeHandler, _asStatic, _typeParametersFor);
    }
    
    @Override
    public  SimpleType withContentValueHandler(Object h) {
        // no content type, so:
        throw new IllegalArgumentException("Simple types have no content types; can not call withContenValueHandler()");
    }

    @Override
    public SimpleType withStaticTyping() {
        return _asStatic ? this : new SimpleType(_class,
                _typeNames, _typeParameters, _valueHandler, _typeHandler, _asStatic, _typeParametersFor);
    }

    @Override
    protected String buildCanonicalName()
    {
        StringBuilder sb = new StringBuilder();
        int PROBE_START_LINE_165 = 165;
		StringBuilder v_sb_3954_line_165 = sb;
		Class<?> f__class_373_line_165 = _class;
		String simple_type_1_expr12_line_165 = f__class_373_line_165.getName();
		int PROBE_END_LINE_165 = 165;
		v_sb_3954_line_165.append(simple_type_1_expr12_line_165);
        int PROBE_START_LINE_166 = 178;
		com.fasterxml.jackson.databind.JavaType[] f__type_parameters_3943_line_166 = _typeParameters;
		boolean simple_type_1_expr14_line_166 = f__type_parameters_3943_line_166 != null;
		boolean simple_type_1_expr15_line_166 = true;
		if (simple_type_1_expr14_line_166) {
			com.fasterxml.jackson.databind.JavaType[] f__type_parameters_3943_line_166_v1 = _typeParameters;
			int q_length_142_line_166 = f__type_parameters_3943_line_166_v1.length;
			simple_type_1_expr15_line_166 = q_length_142_line_166 > 0;
		}
		boolean simple_type_1_expr13_line_166 = simple_type_1_expr14_line_166 && simple_type_1_expr15_line_166;
		int PROBE_END_LINE_166 = 178;
		if (simple_type_1_expr13_line_166) {
            sb.append('<');
            boolean first = true;
            for (JavaType t : _typeParameters) {
                if (first) {
                    first = false;
                } else {
                    sb.append(',');
                }
                sb.append(t.toCanonical());
            }
            sb.append('>');
        }
        int PROBE_START_LINE_179 = 179;
		StringBuilder v_sb_3954_line_179 = sb;
		String simple_type_1_expr16_line_179 = v_sb_3954_line_179.toString();
		int PROBE_END_LINE_179 = 179;
		return simple_type_1_expr16_line_179;
    }
    
    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    @Override
    public boolean isContainerType() { return false; }
    
    @Override
    public int containedTypeCount() {
        return (_typeParameters == null) ? 0 : _typeParameters.length;
    }

    @Override
    public JavaType containedType(int index)
    {
        if (index < 0 || _typeParameters == null || index >= _typeParameters.length) {
            return null;
        }
        return _typeParameters[index];
    }

    @Override
    public String containedTypeName(int index)
    {
        if (index < 0 || _typeNames == null || index >= _typeNames.length) {
            return null;
        }
        return _typeNames[index];
    }

    @Override
    public Class<?> getParameterSource() {
        int PROBE_START_LINE_216 = 216;
		Class<?> f__type_parameters_for_3944_line_216 = _typeParametersFor;
		int PROBE_END_LINE_216 = 216;
		return f__type_parameters_for_3944_line_216;
    }
    
    @Override
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return _classSignature(_class, sb, true);
    }
    
    @Override
    public StringBuilder getGenericSignature(StringBuilder sb)
    {
        _classSignature(_class, sb, false);
        if (_typeParameters != null) {
            sb.append('<');
            for (JavaType param : _typeParameters) {
                sb = param.getGenericSignature(sb);
            }
            sb.append('>');
        }
        sb.append(';');
        return sb;
    }
    
    /*
    /**********************************************************
    /* Standard methods
    /**********************************************************
     */

    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder(40);
        int PROBE_START_LINE_249 = 249;
		StringBuilder v_sb_3959_line_249 = sb;
		StringBuilder simple_type_1_expr21_line_249 = v_sb_3959_line_249.append("[simple type, class ");
		String simple_type_1_expr20_line_249 = buildCanonicalName();
		StringBuilder simple_type_1_expr19_line_249 = simple_type_1_expr21_line_249
				.append(simple_type_1_expr20_line_249);
		int PROBE_END_LINE_249 = 249;
		simple_type_1_expr19_line_249.append(']');
        int PROBE_START_LINE_250 = 250;
		StringBuilder v_sb_3959_line_250 = sb;
		String simple_type_1_expr22_line_250 = v_sb_3959_line_250.toString();
		int PROBE_END_LINE_250 = 250;
		return simple_type_1_expr22_line_250;
    }

    @Override
    public boolean equals(Object o)
    {
        if (o == this) return true;
        if (o == null) return false;
        if (o.getClass() != getClass()) return false;

        SimpleType other = (SimpleType) o;

        // Classes must be identical... 
        if (other._class != this._class) return false;

        // And finally, generic bindings, if any
        JavaType[] p1 = _typeParameters;
        JavaType[] p2 = other._typeParameters;
        if (p1 == null) {
            return (p2 == null) || p2.length == 0;
        }
        if (p2 == null) return false;

        if (p1.length != p2.length) return false;
        for (int i = 0, len = p1.length; i < len; ++i) {
            if (!p1[i].equals(p2[i])) {
                return false;
            }
        }
        return true;
    }
}
