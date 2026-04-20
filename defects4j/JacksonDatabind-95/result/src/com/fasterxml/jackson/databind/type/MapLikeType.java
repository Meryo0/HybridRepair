package com.fasterxml.jackson.databind.type;

import java.lang.reflect.TypeVariable;
import java.util.*;

import com.fasterxml.jackson.databind.JavaType;

/**
 * Type that represents Map-like types; things that consist of key/value pairs
 * but that do not necessarily implement {@link java.util.Map}, but that do not
 * have enough introspection functionality to allow for some level of generic
 * handling. This specifically allows framework to check for configuration and
 * annotation settings used for Map types, and pass these to custom handlers
 * that may be more familiar with actual type.
 */
public class MapLikeType extends TypeBase {
    private static final long serialVersionUID = 1L;

    /**
     * Type of keys of Map.
     */
    protected final JavaType _keyType;

    /**
     * Type of values of Map.
     */
    protected final JavaType _valueType;

    /*
    /**********************************************************
    * Life-cycle
    /**********************************************************
     */

    protected MapLikeType(Class<?> mapType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInts, JavaType keyT,
            JavaType valueT, Object valueHandler, Object typeHandler,
            boolean asStatic) {
        super(mapType, bindings, superClass, superInts, keyT.hashCode()
                ^ valueT.hashCode(), valueHandler, typeHandler, asStatic);
        int PROBE_START_LINE_41 = 41;
		com.fasterxml.jackson.databind.JavaType p_key_t_112_line_41 = keyT;
		int PROBE_END_LINE_41 = 41;
		_keyType = p_key_t_112_line_41;
        int PROBE_START_LINE_42 = 42;
		com.fasterxml.jackson.databind.JavaType p_value_t_113_line_42 = valueT;
		int PROBE_END_LINE_42 = 42;
		_valueType = p_value_t_113_line_42;
    }

    /**
     * @since 2.7
     */
    protected MapLikeType(TypeBase base, JavaType keyT, JavaType valueT) {
        super(base);
        _keyType = keyT;
        _valueType = valueT;
    }

    /**
     * Factory method that can be used to "upgrade" a basic type into
     * collection-like one; usually done via {@link TypeModifier}
     *
     * @since 2.7
     */
    public static MapLikeType upgradeFrom(JavaType baseType, JavaType keyT,
            JavaType valueT) {
        // 19-Oct-2015, tatu: Not sure if and how other types could be used as
        // base;
        // will cross that bridge if and when need be
        if (baseType instanceof TypeBase) {
            return new MapLikeType((TypeBase) baseType, keyT, valueT);
        }
        throw new IllegalArgumentException(
                "Can not upgrade from an instance of " + baseType.getClass());
    }

    @Deprecated
    // since 2.7; remove from 2.8
    public static MapLikeType construct(Class<?> rawType, JavaType keyT,
            JavaType valueT) {
        // First: may need to fabricate TypeBindings (needed for refining into
        // concrete collection types, as per [databind#1102])
        TypeVariable<?>[] vars = rawType.getTypeParameters();
        TypeBindings bindings;
        if ((vars == null) || (vars.length != 2)) {
            bindings = TypeBindings.emptyBindings();
        } else {
            bindings = TypeBindings.create(rawType, keyT, valueT);
        }
        return new MapLikeType(rawType, bindings, _bogusSuperClass(rawType),
                null, keyT, valueT, null, null, false);
    }

    @Deprecated
    // since 2.7
    @Override
    protected JavaType _narrow(Class<?> subclass) {
        return new MapLikeType(subclass, _bindings, _superClass,
                _superInterfaces, _keyType, _valueType, _valueHandler,
                _typeHandler, _asStatic);
    }

    /**
     * @since 2.7
     */
    public MapLikeType withKeyType(JavaType keyType) {
        if (keyType == _keyType) {
            return this;
        }
        return new MapLikeType(_class, _bindings, _superClass,
                _superInterfaces, keyType, _valueType, _valueHandler,
                _typeHandler, _asStatic);
    }

    @Override
    public JavaType withContentType(JavaType contentType) {
        if (_valueType == contentType) {
            return this;
        }
        return new MapLikeType(_class, _bindings, _superClass,
                _superInterfaces, _keyType, contentType, _valueHandler,
                _typeHandler, _asStatic);
    }

    @Override
    public MapLikeType withTypeHandler(Object h) {
        return new MapLikeType(_class, _bindings, _superClass,
                _superInterfaces, _keyType, _valueType, _valueHandler, h,
                _asStatic);
    }

    @Override
    public MapLikeType withContentTypeHandler(Object h) {
        return new MapLikeType(_class, _bindings, _superClass,
                _superInterfaces, _keyType, _valueType.withTypeHandler(h),
                _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    public MapLikeType withValueHandler(Object h) {
        return new MapLikeType(_class, _bindings, _superClass,
                _superInterfaces, _keyType, _valueType, h, _typeHandler,
                _asStatic);
    }

    @Override
    public MapLikeType withContentValueHandler(Object h) {
        return new MapLikeType(_class, _bindings, _superClass,
                _superInterfaces, _keyType, _valueType.withValueHandler(h),
                _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    public JavaType withHandlersFrom(JavaType src) {
        JavaType type = super.withHandlersFrom(src);
        JavaType srcKeyType = src.getKeyType();
        // "withKeyType()" not part of JavaType, hence must verify:
        if (type instanceof MapLikeType) {
            if (srcKeyType != null) {
                JavaType ct = _keyType.withHandlersFrom(srcKeyType);
                if (ct != _keyType) {
                    type = ((MapLikeType) type).withKeyType(ct);
                }
            }
        }
        JavaType srcCt = src.getContentType();
        if (srcCt != null) {
            JavaType ct = _valueType.withHandlersFrom(srcCt);
            if (ct != _valueType) {
                type = type.withContentType(ct);
            }
        }
        return type;
    }

    @Override
    public MapLikeType withStaticTyping() {
        if (_asStatic) {
            return this;
        }
        return new MapLikeType(_class, _bindings, _superClass,
                _superInterfaces, _keyType, _valueType.withStaticTyping(),
                _valueHandler, _typeHandler, true);
    }

    @Override
    public JavaType refine(Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces) {
        return new MapLikeType(rawType, bindings, superClass, superInterfaces,
                _keyType, _valueType, _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    protected String buildCanonicalName() {
        StringBuilder sb = new StringBuilder();
        int PROBE_START_LINE_191 = 191;
		StringBuilder v_sb_140_line_191 = sb;
		Class<?> f__class_6_line_191 = _class;
		String map_like_type_1_expr8_line_191 = f__class_6_line_191.getName();
		int PROBE_END_LINE_191 = 191;
		v_sb_140_line_191.append(map_like_type_1_expr8_line_191);
        int PROBE_START_LINE_192 = 198;
		com.fasterxml.jackson.databind.JavaType f__key_type_117_line_192 = _keyType;
		boolean map_like_type_1_expr9_line_192 = f__key_type_117_line_192 != null;
		int PROBE_END_LINE_192 = 198;
		if (map_like_type_1_expr9_line_192) {
            int PROBE_START_LINE_193 = 193;
			StringBuilder v_sb_140_line_193 = sb;
			int PROBE_END_LINE_193 = 193;
			v_sb_140_line_193.append('<');
            int PROBE_START_LINE_194 = 194;
			StringBuilder v_sb_140_line_194 = sb;
			com.fasterxml.jackson.databind.JavaType f__key_type_117_line_194 = _keyType;
			String map_like_type_1_expr12_line_194 = f__key_type_117_line_194.toCanonical();
			int PROBE_END_LINE_194 = 194;
			v_sb_140_line_194.append(map_like_type_1_expr12_line_194);
            int PROBE_START_LINE_195 = 195;
			StringBuilder v_sb_140_line_195 = sb;
			int PROBE_END_LINE_195 = 195;
			v_sb_140_line_195.append(',');
            int PROBE_START_LINE_196 = 196;
			StringBuilder v_sb_140_line_196 = sb;
			com.fasterxml.jackson.databind.JavaType f__value_type_118_line_196 = _valueType;
			String map_like_type_1_expr15_line_196 = f__value_type_118_line_196.toCanonical();
			int PROBE_END_LINE_196 = 196;
			v_sb_140_line_196.append(map_like_type_1_expr15_line_196);
            int PROBE_START_LINE_197 = 197;
			StringBuilder v_sb_140_line_197 = sb;
			int PROBE_END_LINE_197 = 197;
			v_sb_140_line_197.append('>');
        }
        int PROBE_START_LINE_199 = 199;
		StringBuilder v_sb_140_line_199 = sb;
		String map_like_type_1_expr17_line_199 = v_sb_140_line_199.toString();
		int PROBE_END_LINE_199 = 199;
		return map_like_type_1_expr17_line_199;
    }

    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    @Override
    public boolean isContainerType() {
        return true;
    }

    @Override
    public boolean isMapLikeType() {
        return true;
    }

    @Override
    public JavaType getKeyType() {
        return _keyType;
    }

    @Override
    public JavaType getContentType() {
        return _valueType;
    }

    @Override
    public Object getContentValueHandler() {
        return _valueType.getValueHandler();
    }

    @Override
    public Object getContentTypeHandler() {
        return _valueType.getTypeHandler();
    }

    @Override
    public boolean hasHandlers() {
        int PROBE_START_LINE_240 = 241;
		boolean map_like_type_1_expr19_line_240 = super.hasHandlers();
		boolean map_like_type_1_expr20_line_240 = false;
		if (!map_like_type_1_expr19_line_240) {
			com.fasterxml.jackson.databind.JavaType f__value_type_118_line_240 = _valueType;
			map_like_type_1_expr20_line_240 = f__value_type_118_line_240.hasHandlers();
		}
		boolean map_like_type_1_expr18_line_240 = map_like_type_1_expr19_line_240 || map_like_type_1_expr20_line_240
				|| _keyType.hasHandlers();
		int PROBE_END_LINE_240 = 241;
		return map_like_type_1_expr18_line_240;
    }

    @Override
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return _classSignature(_class, sb, true);
    }

    @Override
    public StringBuilder getGenericSignature(StringBuilder sb) {
        _classSignature(_class, sb, false);
        sb.append('<');
        _keyType.getGenericSignature(sb);
        _valueType.getGenericSignature(sb);
        sb.append(">;");
        return sb;
    }

    /*
    /**********************************************************
    /* Extended API
    /**********************************************************
     */

    public MapLikeType withKeyTypeHandler(Object h) {
        return new MapLikeType(_class, _bindings, _superClass,
                _superInterfaces, _keyType.withTypeHandler(h), _valueType,
                _valueHandler, _typeHandler, _asStatic);
    }

    public MapLikeType withKeyValueHandler(Object h) {
        return new MapLikeType(_class, _bindings, _superClass,
                _superInterfaces, _keyType.withValueHandler(h), _valueType,
                _valueHandler, _typeHandler, _asStatic);
    }

    /**
     * Method that can be used for checking whether this type is a "real"
     * Collection type; meaning whether it represents a parameterized subtype of
     * {@link java.util.Collection} or just something that acts like one.
     */
    public boolean isTrueMapType() {
        return Map.class.isAssignableFrom(_class);
    }

    /*
    /**********************************************************
    /* Standard methods
    /**********************************************************
     */

    @Override
    public String toString() {
        return String.format("[map-like type; class %s, %s -> %s]",
                _class.getName(), _keyType, _valueType);
    }

    @Override
    public boolean equals(Object o) {
        int PROBE_START_LINE_300 = 300;
		Object p_o_145_line_300 = o;
		boolean map_like_type_1_expr21_line_300 = p_o_145_line_300 == this;
		int PROBE_END_LINE_300 = 300;
		if (map_like_type_1_expr21_line_300) return true;
        int PROBE_START_LINE_301 = 301;
		Object p_o_145_line_301 = o;
		boolean map_like_type_1_expr23_line_301 = p_o_145_line_301 == null;
		int PROBE_END_LINE_301 = 301;
		if (map_like_type_1_expr23_line_301) return false;
        int PROBE_START_LINE_302 = 302;
		Object p_o_145_line_302 = o;
		Class<? extends Object> map_like_type_1_expr25_line_302 = p_o_145_line_302.getClass();
		Class<? extends com.fasterxml.jackson.databind.type.MapLikeType> map_like_type_1_expr26_line_302 = getClass();
		boolean map_like_type_1_expr24_line_302 = map_like_type_1_expr25_line_302 != map_like_type_1_expr26_line_302;
		int PROBE_END_LINE_302 = 302;
		if (map_like_type_1_expr24_line_302) return false;

        int PROBE_START_LINE_304 = 304;
		Object p_o_145_line_304 = o;
		int PROBE_END_LINE_304 = 304;
		MapLikeType other = (MapLikeType) p_o_145_line_304;
        int PROBE_START_LINE_305 = 306;
		Class<?> f__class_6_line_305 = _class;
		com.fasterxml.jackson.databind.type.MapLikeType v_other_146_line_305 = other;
		Class<?> q__class_5_line_305 = v_other_146_line_305._class;
		boolean map_like_type_1_expr30_line_305 = f__class_6_line_305 == q__class_5_line_305;
		boolean map_like_type_1_expr29_line_305 = (map_like_type_1_expr30_line_305);
		boolean map_like_type_1_expr31_line_305 = true;
		if (map_like_type_1_expr29_line_305) {
			com.fasterxml.jackson.databind.JavaType f__key_type_117_line_305 = _keyType;
			com.fasterxml.jackson.databind.type.MapLikeType v_other_146_line_305_v1 = other;
			com.fasterxml.jackson.databind.JavaType q__key_type_6_line_305 = v_other_146_line_305_v1._keyType;
			map_like_type_1_expr31_line_305 = f__key_type_117_line_305.equals(q__key_type_6_line_305);
		}
		boolean map_like_type_1_expr28_line_305 = map_like_type_1_expr29_line_305 && map_like_type_1_expr31_line_305
				&& _valueType.equals(other._valueType);
		int PROBE_END_LINE_305 = 306;
		return map_like_type_1_expr28_line_305;
    }
}
