package com.fasterxml.jackson.databind.type;

import java.lang.reflect.TypeVariable;
import java.util.Collection;

import com.fasterxml.jackson.databind.JavaType;

/**
 * Type that represents things that act similar to {@link java.util.Collection};
 * but may or may not be instances of that interface.
 * This specifically allows framework to check for configuration and annotation
 * settings used for Map types, and pass these to custom handlers that may be more
 * familiar with actual type.
 */
public class CollectionLikeType extends TypeBase
{
    private static final long serialVersionUID = 1L;

    /**
     * Type of elements in collection
     */
    protected final JavaType _elementType;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    protected CollectionLikeType(Class<?> collT, TypeBindings bindings,
            JavaType superClass, JavaType[] superInts, JavaType elemT,
            Object valueHandler, Object typeHandler, boolean asStatic)
    {
        super(collT, bindings, superClass, superInts,
                elemT.hashCode(), valueHandler, typeHandler, asStatic);
        int PROBE_START_LINE_36 = 36;
		com.fasterxml.jackson.databind.JavaType p_elem_t_5345_line_36 = elemT;
		int PROBE_END_LINE_36 = 36;
		_elementType = p_elem_t_5345_line_36;
    }

    /**
     * @since 2.7
     */
    protected CollectionLikeType(TypeBase base, JavaType elemT)
    {
        super(base);
        _elementType = elemT;
    }

    /**
     * @since 2.7
     */
    public static CollectionLikeType construct(Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInts, JavaType elemT) {
        return new CollectionLikeType(rawType, bindings, superClass, superInts, elemT,
                null, null, false);
    }

    /**
     * @deprecated Since 2.7, use {@link #upgradeFrom} for constructing instances, given
     *    pre-resolved {@link SimpleType}.
     */
    @Deprecated // since 2.7
    public static CollectionLikeType construct(Class<?> rawType, JavaType elemT) {
        // First: may need to fabricate TypeBindings (needed for refining into
        // concrete collection types, as per [databind#1102])
        TypeVariable<?>[] vars = rawType.getTypeParameters();
        TypeBindings bindings;
        if ((vars == null) || (vars.length != 1)) {
            bindings = TypeBindings.emptyBindings();
        } else {
            bindings = TypeBindings.create(rawType, elemT);
        }
        return new CollectionLikeType(rawType, bindings,
                _bogusSuperClass(rawType), null,
                elemT, null, null, false);
    }

    /**
     * Factory method that can be used to "upgrade" a basic type into collection-like
     * one; usually done via {@link TypeModifier}
     *
     * @since 2.7
     */
    public static CollectionLikeType upgradeFrom(JavaType baseType, JavaType elementType) {
        // 19-Oct-2015, tatu: Not sure if and how other types could be used as base;
        //    will cross that bridge if and when need be
        if (baseType instanceof TypeBase) {
            return new CollectionLikeType((TypeBase) baseType, elementType);
        }
        throw new IllegalArgumentException("Cannot upgrade from an instance of "+baseType.getClass());
    }

    @Override
    @Deprecated // since 2.7
    protected JavaType _narrow(Class<?> subclass) {
        return new CollectionLikeType(subclass, _bindings,
                _superClass, _superInterfaces, _elementType,
                _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    public JavaType withContentType(JavaType contentType) {
        if (_elementType == contentType) {
            return this;
        }
        return new CollectionLikeType(_class, _bindings, _superClass, _superInterfaces,
                contentType, _valueHandler, _typeHandler, _asStatic);
    }
    
    @Override
    public CollectionLikeType withTypeHandler(Object h) {
        return new CollectionLikeType(_class, _bindings,
                _superClass, _superInterfaces, _elementType, _valueHandler, h, _asStatic);
    }

    @Override
    public CollectionLikeType withContentTypeHandler(Object h)
    {
        return new CollectionLikeType(_class, _bindings,
                _superClass, _superInterfaces, _elementType.withTypeHandler(h),
                _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    public CollectionLikeType withValueHandler(Object h) {
        return new CollectionLikeType(_class, _bindings,
                _superClass, _superInterfaces, _elementType, h, _typeHandler, _asStatic);
    }

    @Override
    public CollectionLikeType withContentValueHandler(Object h) {
        return new CollectionLikeType(_class, _bindings,
                _superClass, _superInterfaces, _elementType.withValueHandler(h),
                _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    public JavaType withHandlersFrom(JavaType src) {
        int PROBE_START_LINE_138 = 138;
		com.fasterxml.jackson.databind.JavaType p_src_5367_line_138 = src;
		JavaType collection_like_type_1_expr4_line_138 = super.withHandlersFrom(p_src_5367_line_138);
		int PROBE_END_LINE_138 = 138;
		JavaType type = collection_like_type_1_expr4_line_138;
        int PROBE_START_LINE_139 = 139;
		com.fasterxml.jackson.databind.JavaType p_src_5367_line_139 = src;
		JavaType collection_like_type_1_expr5_line_139 = p_src_5367_line_139.getContentType();
		int PROBE_END_LINE_139 = 139;
		JavaType srcCt = collection_like_type_1_expr5_line_139;
        int PROBE_START_LINE_140 = 145;
		com.fasterxml.jackson.databind.JavaType v_src_ct_5369_line_140 = srcCt;
		boolean collection_like_type_1_expr6_line_140 = v_src_ct_5369_line_140 != null;
		int PROBE_END_LINE_140 = 145;
		if (collection_like_type_1_expr6_line_140) {
            int PROBE_START_LINE_141 = 141;
			com.fasterxml.jackson.databind.JavaType f__element_type_5349_line_141 = _elementType;
			com.fasterxml.jackson.databind.JavaType v_src_ct_5369_line_141 = srcCt;
			JavaType collection_like_type_1_expr7_line_141 = f__element_type_5349_line_141
					.withHandlersFrom(v_src_ct_5369_line_141);
			int PROBE_END_LINE_141 = 141;
			JavaType ct = collection_like_type_1_expr7_line_141;
            int PROBE_START_LINE_142 = 144;
			com.fasterxml.jackson.databind.JavaType v_ct_5370_line_142 = ct;
			com.fasterxml.jackson.databind.JavaType f__element_type_5349_line_142 = _elementType;
			boolean collection_like_type_1_expr8_line_142 = v_ct_5370_line_142 != f__element_type_5349_line_142;
			int PROBE_END_LINE_142 = 144;
			if (collection_like_type_1_expr8_line_142) {
                int PROBE_START_LINE_143 = 143;
				com.fasterxml.jackson.databind.JavaType v_type_5368_line_143 = type;
				com.fasterxml.jackson.databind.JavaType v_ct_5370_line_143 = ct;
				com.fasterxml.jackson.databind.JavaType collection_like_type_1_expr10_line_143 = v_type_5368_line_143
						.withContentType(v_ct_5370_line_143);
				int PROBE_END_LINE_143 = 143;
				type = collection_like_type_1_expr10_line_143;
            }
        }
        int PROBE_START_LINE_146 = 146;
		com.fasterxml.jackson.databind.JavaType v_type_5368_line_146 = type;
		int PROBE_END_LINE_146 = 146;
		return v_type_5368_line_146;
    }
    
    @Override
    public CollectionLikeType withStaticTyping() {
        if (_asStatic) {
            return this;
        }
        return new CollectionLikeType(_class, _bindings,
                _superClass, _superInterfaces, _elementType.withStaticTyping(),
                _valueHandler, _typeHandler, true);
    }

    @Override
    public JavaType refine(Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces) {
        return new CollectionLikeType(rawType, bindings,
                superClass, superInterfaces, _elementType,
                _valueHandler, _typeHandler, _asStatic);
    }
    
    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    @Override
    public boolean isContainerType() { return true; }

    @Override
    public boolean isCollectionLikeType() { return true; }

    @Override
    public JavaType getContentType() { int PROBE_START_LINE_180 = 180;
		com.fasterxml.jackson.databind.JavaType f__element_type_5349_line_180 = _elementType;
		int PROBE_END_LINE_180 = 180;
	return f__element_type_5349_line_180; }

    @Override
    public Object getContentValueHandler() {
        return _elementType.getValueHandler();
    }

    @Override
    public Object getContentTypeHandler() {
        return _elementType.getTypeHandler();
    }    

    @Override
    public boolean hasHandlers() {
        int PROBE_START_LINE_194 = 194;
		boolean collection_like_type_1_expr12_line_194 = super.hasHandlers();
		boolean collection_like_type_1_expr13_line_194 = false;
		if (!collection_like_type_1_expr12_line_194) {
			com.fasterxml.jackson.databind.JavaType f__element_type_5349_line_194 = _elementType;
			collection_like_type_1_expr13_line_194 = f__element_type_5349_line_194.hasHandlers();
		}
		boolean collection_like_type_1_expr11_line_194 = collection_like_type_1_expr12_line_194
				|| collection_like_type_1_expr13_line_194;
		int PROBE_END_LINE_194 = 194;
		return collection_like_type_1_expr11_line_194;
    }

    @Override
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return _classSignature(_class, sb, true);
    }
    
    @Override
    public StringBuilder getGenericSignature(StringBuilder sb) {
        _classSignature(_class, sb, false);
        sb.append('<');
        _elementType.getGenericSignature(sb);
        sb.append(">;");
        return sb;
    }
    
    @Override
    protected String buildCanonicalName() {
        StringBuilder sb = new StringBuilder();
        sb.append(_class.getName());
        if (_elementType != null) {
            sb.append('<');
            sb.append(_elementType.toCanonical());
            sb.append('>');
        }
        return sb.toString();
    }

    /*
    /**********************************************************
    /* Extended API
    /**********************************************************
     */

    /**
     * Method that can be used for checking whether this type is a
     * "real" Collection type; meaning whether it represents a parameterized
     * subtype of {@link java.util.Collection} or just something that acts
     * like one.
     */
    public boolean isTrueCollectionType() {
        int PROBE_START_LINE_236 = 236;
		Class<?> f__class_484_line_236 = _class;
		boolean collection_like_type_1_expr14_line_236 = Collection.class.isAssignableFrom(f__class_484_line_236);
		int PROBE_END_LINE_236 = 236;
		return collection_like_type_1_expr14_line_236;
    }

    /*
    /**********************************************************
    /* Standard methods
    /**********************************************************
     */

    @Override
    public boolean equals(Object o)
    {
        int PROBE_START_LINE_248 = 248;
		Object p_o_5377_line_248 = o;
		boolean collection_like_type_1_expr16_line_248 = p_o_5377_line_248 == this;
		int PROBE_END_LINE_248 = 248;
		if (collection_like_type_1_expr16_line_248) return true;
        int PROBE_START_LINE_249 = 249;
		Object p_o_5377_line_249 = o;
		boolean collection_like_type_1_expr18_line_249 = p_o_5377_line_249 == null;
		int PROBE_END_LINE_249 = 249;
		if (collection_like_type_1_expr18_line_249) return false;
        int PROBE_START_LINE_250 = 250;
		Object p_o_5377_line_250 = o;
		Class<? extends Object> collection_like_type_1_expr20_line_250 = p_o_5377_line_250.getClass();
		Class<? extends com.fasterxml.jackson.databind.type.CollectionLikeType> collection_like_type_1_expr21_line_250 = getClass();
		boolean collection_like_type_1_expr19_line_250 = collection_like_type_1_expr20_line_250 != collection_like_type_1_expr21_line_250;
		int PROBE_END_LINE_250 = 250;
		if (collection_like_type_1_expr19_line_250) return false;

        int PROBE_START_LINE_252 = 252;
		Object p_o_5377_line_252 = o;
		int PROBE_END_LINE_252 = 252;
		CollectionLikeType other = (CollectionLikeType) p_o_5377_line_252;
        int PROBE_START_LINE_253 = 253;
		Class<?> f__class_484_line_253 = _class;
		com.fasterxml.jackson.databind.type.CollectionLikeType v_other_5378_line_253 = other;
		Class<?> q__class_178_line_253 = v_other_5378_line_253._class;
		boolean collection_like_type_1_expr25_line_253 = f__class_484_line_253 == q__class_178_line_253;
		boolean collection_like_type_1_expr24_line_253 = (collection_like_type_1_expr25_line_253);
		boolean collection_like_type_1_expr26_line_253 = true;
		if (collection_like_type_1_expr24_line_253) {
			com.fasterxml.jackson.databind.JavaType f__element_type_5349_line_253 = _elementType;
			com.fasterxml.jackson.databind.type.CollectionLikeType v_other_5378_line_253_v1 = other;
			com.fasterxml.jackson.databind.JavaType q__element_type_179_line_253 = v_other_5378_line_253_v1._elementType;
			collection_like_type_1_expr26_line_253 = f__element_type_5349_line_253.equals(q__element_type_179_line_253);
		}
		boolean collection_like_type_1_expr23_line_253 = collection_like_type_1_expr24_line_253
				&& collection_like_type_1_expr26_line_253;
		int PROBE_END_LINE_253 = 253;
		return  collection_like_type_1_expr23_line_253;
    }

    @Override
    public String toString()
    {
        return "[collection-like type; class "+_class.getName()+", contains "+_elementType+"]";
    }

}
