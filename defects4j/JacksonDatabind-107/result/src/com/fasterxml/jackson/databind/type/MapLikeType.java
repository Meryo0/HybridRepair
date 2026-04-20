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
		com.fasterxml.jackson.databind.JavaType p_key_t_5413_line_41 = keyT;
		int PROBE_END_LINE_41 = 41;
		_keyType = p_key_t_5413_line_41;
        int PROBE_START_LINE_42 = 42;
		com.fasterxml.jackson.databind.JavaType p_value_t_5414_line_42 = valueT;
		int PROBE_END_LINE_42 = 42;
		_valueType = p_value_t_5414_line_42;
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
                "Cannot upgrade from an instance of " + baseType.getClass());
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
        int PROBE_START_LINE_150 = 150;
		com.fasterxml.jackson.databind.JavaType p_src_5436_line_150 = src;
		JavaType map_like_type_1_expr6_line_150 = super.withHandlersFrom(p_src_5436_line_150);
		int PROBE_END_LINE_150 = 150;
		JavaType type = map_like_type_1_expr6_line_150;
        int PROBE_START_LINE_151 = 151;
		com.fasterxml.jackson.databind.JavaType p_src_5436_line_151 = src;
		JavaType map_like_type_1_expr7_line_151 = p_src_5436_line_151.getKeyType();
		int PROBE_END_LINE_151 = 151;
		JavaType srcKeyType = map_like_type_1_expr7_line_151;
        int PROBE_START_LINE_153 = 160;
		com.fasterxml.jackson.databind.JavaType v_type_5437_line_153 = type;
		boolean map_like_type_1_expr8_line_153 = v_type_5437_line_153 instanceof MapLikeType;
		int PROBE_END_LINE_153 = 160;
		// "withKeyType()" not part of JavaType, hence must verify:
        if (map_like_type_1_expr8_line_153) {
            int PROBE_START_LINE_154 = 159;
			com.fasterxml.jackson.databind.JavaType v_src_key_type_5438_line_154 = srcKeyType;
			boolean map_like_type_1_expr9_line_154 = v_src_key_type_5438_line_154 != null;
			int PROBE_END_LINE_154 = 159;
			if (map_like_type_1_expr9_line_154) {
                int PROBE_START_LINE_155 = 155;
				com.fasterxml.jackson.databind.JavaType f__key_type_5418_line_155 = _keyType;
				com.fasterxml.jackson.databind.JavaType v_src_key_type_5438_line_155 = srcKeyType;
				JavaType map_like_type_1_expr10_line_155 = f__key_type_5418_line_155
						.withHandlersFrom(v_src_key_type_5438_line_155);
				int PROBE_END_LINE_155 = 155;
				JavaType ct = map_like_type_1_expr10_line_155;
                int PROBE_START_LINE_156 = 158;
				com.fasterxml.jackson.databind.JavaType v_ct_5439_line_156 = ct;
				com.fasterxml.jackson.databind.JavaType f__key_type_5418_line_156 = _keyType;
				boolean map_like_type_1_expr11_line_156 = v_ct_5439_line_156 != f__key_type_5418_line_156;
				int PROBE_END_LINE_156 = 158;
				if (map_like_type_1_expr11_line_156) {
                    type = ((MapLikeType) type).withKeyType(ct);
                }
            }
        }
        int PROBE_START_LINE_161 = 161;
		com.fasterxml.jackson.databind.JavaType p_src_5436_line_161 = src;
		JavaType map_like_type_1_expr12_line_161 = p_src_5436_line_161.getContentType();
		int PROBE_END_LINE_161 = 161;
		JavaType srcCt = map_like_type_1_expr12_line_161;
        int PROBE_START_LINE_162 = 167;
		com.fasterxml.jackson.databind.JavaType v_src_ct_5440_line_162 = srcCt;
		boolean map_like_type_1_expr13_line_162 = v_src_ct_5440_line_162 != null;
		int PROBE_END_LINE_162 = 167;
		if (map_like_type_1_expr13_line_162) {
            int PROBE_START_LINE_163 = 163;
			com.fasterxml.jackson.databind.JavaType f__value_type_5419_line_163 = _valueType;
			com.fasterxml.jackson.databind.JavaType v_src_ct_5440_line_163 = srcCt;
			JavaType map_like_type_1_expr14_line_163 = f__value_type_5419_line_163
					.withHandlersFrom(v_src_ct_5440_line_163);
			int PROBE_END_LINE_163 = 163;
			JavaType ct = map_like_type_1_expr14_line_163;
            int PROBE_START_LINE_164 = 166;
			com.fasterxml.jackson.databind.JavaType v_ct_5441_line_164 = ct;
			com.fasterxml.jackson.databind.JavaType f__value_type_5419_line_164 = _valueType;
			boolean map_like_type_1_expr15_line_164 = v_ct_5441_line_164 != f__value_type_5419_line_164;
			int PROBE_END_LINE_164 = 166;
			if (map_like_type_1_expr15_line_164) {
                type = type.withContentType(ct);
            }
        }
        int PROBE_START_LINE_168 = 168;
		com.fasterxml.jackson.databind.JavaType v_type_5437_line_168 = type;
		int PROBE_END_LINE_168 = 168;
		return v_type_5437_line_168;
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
        sb.append(_class.getName());
        if (_keyType != null) {
            sb.append('<');
            sb.append(_keyType.toCanonical());
            sb.append(',');
            sb.append(_valueType.toCanonical());
            sb.append('>');
        }
        return sb.toString();
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
        int PROBE_START_LINE_220 = 220;
		com.fasterxml.jackson.databind.JavaType f__key_type_5418_line_220 = _keyType;
		int PROBE_END_LINE_220 = 220;
		return f__key_type_5418_line_220;
    }

    @Override
    public JavaType getContentType() {
        int PROBE_START_LINE_225 = 225;
		com.fasterxml.jackson.databind.JavaType f__value_type_5419_line_225 = _valueType;
		int PROBE_END_LINE_225 = 225;
		return f__value_type_5419_line_225;
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
		boolean map_like_type_1_expr17_line_240 = super.hasHandlers();
		boolean map_like_type_1_expr18_line_240 = false;
		if (!map_like_type_1_expr17_line_240) {
			com.fasterxml.jackson.databind.JavaType f__value_type_5419_line_240 = _valueType;
			map_like_type_1_expr18_line_240 = f__value_type_5419_line_240.hasHandlers();
		}
		boolean map_like_type_1_expr16_line_240 = map_like_type_1_expr17_line_240 || map_like_type_1_expr18_line_240
				|| _keyType.hasHandlers();
		int PROBE_END_LINE_240 = 241;
		return map_like_type_1_expr16_line_240;
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
        int PROBE_START_LINE_283 = 283;
		Class<?> f__class_484_line_283 = _class;
		boolean map_like_type_1_expr19_line_283 = Map.class.isAssignableFrom(f__class_484_line_283);
		int PROBE_END_LINE_283 = 283;
		return map_like_type_1_expr19_line_283;
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
		Object p_o_5450_line_300 = o;
		boolean map_like_type_1_expr21_line_300 = p_o_5450_line_300 == this;
		int PROBE_END_LINE_300 = 300;
		if (map_like_type_1_expr21_line_300) return true;
        int PROBE_START_LINE_301 = 301;
		Object p_o_5450_line_301 = o;
		boolean map_like_type_1_expr23_line_301 = p_o_5450_line_301 == null;
		int PROBE_END_LINE_301 = 301;
		if (map_like_type_1_expr23_line_301) return false;
        int PROBE_START_LINE_302 = 302;
		Object p_o_5450_line_302 = o;
		Class<? extends Object> map_like_type_1_expr25_line_302 = p_o_5450_line_302.getClass();
		Class<? extends com.fasterxml.jackson.databind.type.MapLikeType> map_like_type_1_expr26_line_302 = getClass();
		boolean map_like_type_1_expr24_line_302 = map_like_type_1_expr25_line_302 != map_like_type_1_expr26_line_302;
		int PROBE_END_LINE_302 = 302;
		if (map_like_type_1_expr24_line_302) return false;

        int PROBE_START_LINE_304 = 304;
		Object p_o_5450_line_304 = o;
		int PROBE_END_LINE_304 = 304;
		MapLikeType other = (MapLikeType) p_o_5450_line_304;
        int PROBE_START_LINE_305 = 306;
		Class<?> f__class_484_line_305 = _class;
		com.fasterxml.jackson.databind.type.MapLikeType v_other_5451_line_305 = other;
		Class<?> q__class_180_line_305 = v_other_5451_line_305._class;
		boolean map_like_type_1_expr30_line_305 = f__class_484_line_305 == q__class_180_line_305;
		boolean map_like_type_1_expr29_line_305 = (map_like_type_1_expr30_line_305);
		boolean map_like_type_1_expr31_line_305 = true;
		if (map_like_type_1_expr29_line_305) {
			com.fasterxml.jackson.databind.JavaType f__key_type_5418_line_305 = _keyType;
			com.fasterxml.jackson.databind.type.MapLikeType v_other_5451_line_305_v1 = other;
			com.fasterxml.jackson.databind.JavaType q__key_type_181_line_305 = v_other_5451_line_305_v1._keyType;
			map_like_type_1_expr31_line_305 = f__key_type_5418_line_305.equals(q__key_type_181_line_305);
		}
		boolean map_like_type_1_expr28_line_305 = map_like_type_1_expr29_line_305 && map_like_type_1_expr31_line_305
				&& _valueType.equals(other._valueType);
		int PROBE_END_LINE_305 = 306;
		return map_like_type_1_expr28_line_305;
    }
}
