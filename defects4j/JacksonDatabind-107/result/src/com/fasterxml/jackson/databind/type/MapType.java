package com.fasterxml.jackson.databind.type;

import java.lang.reflect.TypeVariable;

import com.fasterxml.jackson.databind.JavaType;

/**
 * Type that represents "true" Java Map types.
 */
public final class MapType extends MapLikeType
{
    private static final long serialVersionUID = 1L;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    private MapType(Class<?> mapType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInts, JavaType keyT, JavaType valueT,
            Object valueHandler, Object typeHandler, boolean asStatic) {
        super(mapType, bindings, superClass, superInts,
                keyT, valueT, valueHandler, typeHandler, asStatic);
    }

    /**
     * @since 2.7
     */
    protected MapType(TypeBase base, JavaType keyT, JavaType valueT) {
        super(base, keyT, valueT);
    }

    /**
     * @since 2.7
     */
    public static MapType construct(Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInts,
            JavaType keyT, JavaType valueT) {
        int PROBE_START_LINE_40 = 40;
				Class<?> p_raw_type_5464_line_40 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5465_line_40 = bindings;
				com.fasterxml.jackson.databind.JavaType p_super_class_5466_line_40 = superClass;
				com.fasterxml.jackson.databind.JavaType[] p_super_ints_5467_line_40 = superInts;
				com.fasterxml.jackson.databind.JavaType p_key_t_5468_line_40 = keyT;
				com.fasterxml.jackson.databind.JavaType p_value_t_5469_line_40 = valueT;
				int PROBE_END_LINE_40 = 40;
		return new MapType(p_raw_type_5464_line_40, p_bindings_5465_line_40, p_super_class_5466_line_40, p_super_ints_5467_line_40, p_key_t_5468_line_40, p_value_t_5469_line_40, null, null, false);
    }
    
    @Deprecated // since 2.7
    public static MapType construct(Class<?> rawType, JavaType keyT, JavaType valueT)
    {
        // First: may need to fabricate TypeBindings (needed for refining into
        // concrete collection types, as per [databind#1102])
        TypeVariable<?>[] vars = rawType.getTypeParameters();
        TypeBindings bindings;
        if ((vars == null) || (vars.length != 2)) {
            bindings = TypeBindings.emptyBindings();
        } else {
            bindings = TypeBindings.create(rawType, keyT, valueT);
        }
        // !!! TODO: Wrong, does have supertypes
        return new MapType(rawType, bindings, _bogusSuperClass(rawType), null,
                keyT, valueT, null, null, false);
    }

    @Deprecated // since 2.7
    @Override
    protected JavaType _narrow(Class<?> subclass) {
        return new MapType(subclass, _bindings,
                _superClass, _superInterfaces, _keyType, _valueType,
                _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    public MapType withTypeHandler(Object h) {
        return new MapType(_class, _bindings,
                _superClass, _superInterfaces, _keyType, _valueType, _valueHandler, h, _asStatic);
    }

    @Override
    public MapType withContentTypeHandler(Object h)
    {
        return new MapType(_class, _bindings,
                _superClass, _superInterfaces, _keyType, _valueType.withTypeHandler(h),
                _valueHandler, _typeHandler, _asStatic);
    }
    
    @Override
    public MapType withValueHandler(Object h) {
        return new MapType(_class, _bindings,
                _superClass, _superInterfaces, _keyType, _valueType, h, _typeHandler, _asStatic);
    }

    @Override
    public MapType withContentValueHandler(Object h) {
        return new MapType(_class, _bindings,
                _superClass, _superInterfaces, _keyType, _valueType.withValueHandler(h),
                _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    public MapType withStaticTyping() {
        if (_asStatic) {
            return this;
        }
        return new MapType(_class, _bindings,
                _superClass, _superInterfaces, _keyType.withStaticTyping(), _valueType.withStaticTyping(),
                _valueHandler, _typeHandler, true);
    }

    @Override
    public JavaType withContentType(JavaType contentType) {
        if (_valueType == contentType) {
            return this;
        }
        return new MapType(_class, _bindings, _superClass, _superInterfaces,
                _keyType, contentType, _valueHandler, _typeHandler, _asStatic);
    }
    
    @Override
    public MapType withKeyType(JavaType keyType) {
        if (keyType == _keyType) {
            return this;
        }
        return new MapType(_class, _bindings, _superClass, _superInterfaces,
                keyType, _valueType, _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    public JavaType refine(Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces) {
        int PROBE_START_LINE_126 = 128;
				Class<?> p_raw_type_5480_line_126 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5481_line_126 = bindings;
				int PROBE_END_LINE_126 = 128;
		return new MapType(p_raw_type_5480_line_126, p_bindings_5481_line_126,
                superClass, superInterfaces, _keyType, _valueType,
                _valueHandler, _typeHandler, _asStatic);
    }

    /*
    /**********************************************************
    /* Extended API
    /**********************************************************
     */
    
    @Override
    public MapType withKeyTypeHandler(Object h)
    {
        return new MapType(_class, _bindings,
                _superClass, _superInterfaces, _keyType.withTypeHandler(h), _valueType,
                _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    public MapType withKeyValueHandler(Object h) {
        return new MapType(_class, _bindings,
                _superClass, _superInterfaces, _keyType.withValueHandler(h), _valueType,
                _valueHandler, _typeHandler, _asStatic);
    }

    /*
    /**********************************************************
    /* Standard methods
    /**********************************************************
     */

    @Override
    public String toString()
    {
        int PROBE_START_LINE_161 = 161;
		Class<?> f__class_484_line_161 = _class;
		String map_type_1_expr5_line_161 = f__class_484_line_161.getName();
		com.fasterxml.jackson.databind.JavaType f__key_type_5418_line_161 = _keyType;
		com.fasterxml.jackson.databind.JavaType f__value_type_5419_line_161 = _valueType;
		String map_type_1_expr4_line_161 = "[map type; class " + map_type_1_expr5_line_161 + ", "
				+ f__key_type_5418_line_161 + " -> " + f__value_type_5419_line_161 + "]";
		int PROBE_END_LINE_161 = 161;
		return map_type_1_expr4_line_161;
    }
}
