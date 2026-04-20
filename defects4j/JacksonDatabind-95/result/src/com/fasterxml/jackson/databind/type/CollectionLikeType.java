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
		com.fasterxml.jackson.databind.JavaType p_elem_t_49_line_36 = elemT;
		int PROBE_END_LINE_36 = 36;
		_elementType = p_elem_t_49_line_36;
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
        throw new IllegalArgumentException("Can not upgrade from an instance of "+baseType.getClass());
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
        JavaType type = super.withHandlersFrom(src);
        JavaType srcCt = src.getContentType();
        if (srcCt != null) {
            JavaType ct = _elementType.withHandlersFrom(srcCt);
            if (ct != _elementType) {
                type = type.withContentType(ct);
            }
        }
        return type;
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
    public JavaType getContentType() { return _elementType; }

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
		boolean collection_like_type_1_expr5_line_194 = super.hasHandlers();
		boolean collection_like_type_1_expr6_line_194 = false;
		if (!collection_like_type_1_expr5_line_194) {
			com.fasterxml.jackson.databind.JavaType f__element_type_53_line_194 = _elementType;
			collection_like_type_1_expr6_line_194 = f__element_type_53_line_194.hasHandlers();
		}
		boolean collection_like_type_1_expr4_line_194 = collection_like_type_1_expr5_line_194
				|| collection_like_type_1_expr6_line_194;
		int PROBE_END_LINE_194 = 194;
		return collection_like_type_1_expr4_line_194;
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
        int PROBE_START_LINE_214 = 214;
		StringBuilder v_sb_78_line_214 = sb;
		Class<?> f__class_6_line_214 = _class;
		String collection_like_type_1_expr9_line_214 = f__class_6_line_214.getName();
		int PROBE_END_LINE_214 = 214;
		v_sb_78_line_214.append(collection_like_type_1_expr9_line_214);
        int PROBE_START_LINE_215 = 219;
		com.fasterxml.jackson.databind.JavaType f__element_type_53_line_215 = _elementType;
		boolean collection_like_type_1_expr10_line_215 = f__element_type_53_line_215 != null;
		int PROBE_END_LINE_215 = 219;
		if (collection_like_type_1_expr10_line_215) {
            int PROBE_START_LINE_216 = 216;
			StringBuilder v_sb_78_line_216 = sb;
			int PROBE_END_LINE_216 = 216;
			v_sb_78_line_216.append('<');
            int PROBE_START_LINE_217 = 217;
			StringBuilder v_sb_78_line_217 = sb;
			com.fasterxml.jackson.databind.JavaType f__element_type_53_line_217 = _elementType;
			String collection_like_type_1_expr13_line_217 = f__element_type_53_line_217.toCanonical();
			int PROBE_END_LINE_217 = 217;
			v_sb_78_line_217.append(collection_like_type_1_expr13_line_217);
            int PROBE_START_LINE_218 = 218;
			StringBuilder v_sb_78_line_218 = sb;
			int PROBE_END_LINE_218 = 218;
			v_sb_78_line_218.append('>');
        }
        int PROBE_START_LINE_220 = 220;
		StringBuilder v_sb_78_line_220 = sb;
		String collection_like_type_1_expr15_line_220 = v_sb_78_line_220.toString();
		int PROBE_END_LINE_220 = 220;
		return collection_like_type_1_expr15_line_220;
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
        return Collection.class.isAssignableFrom(_class);
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
		Object p_o_79_line_248 = o;
		boolean collection_like_type_1_expr16_line_248 = p_o_79_line_248 == this;
		int PROBE_END_LINE_248 = 248;
		if (collection_like_type_1_expr16_line_248) return true;
        int PROBE_START_LINE_249 = 249;
		Object p_o_79_line_249 = o;
		boolean collection_like_type_1_expr18_line_249 = p_o_79_line_249 == null;
		int PROBE_END_LINE_249 = 249;
		if (collection_like_type_1_expr18_line_249) return false;
        int PROBE_START_LINE_250 = 250;
		Object p_o_79_line_250 = o;
		Class<? extends Object> collection_like_type_1_expr20_line_250 = p_o_79_line_250.getClass();
		Class<? extends com.fasterxml.jackson.databind.type.CollectionLikeType> collection_like_type_1_expr21_line_250 = getClass();
		boolean collection_like_type_1_expr19_line_250 = collection_like_type_1_expr20_line_250 != collection_like_type_1_expr21_line_250;
		int PROBE_END_LINE_250 = 250;
		if (collection_like_type_1_expr19_line_250) return false;

        int PROBE_START_LINE_252 = 252;
		Object p_o_79_line_252 = o;
		int PROBE_END_LINE_252 = 252;
		CollectionLikeType other = (CollectionLikeType) p_o_79_line_252;
        int PROBE_START_LINE_253 = 253;
		Class<?> f__class_6_line_253 = _class;
		com.fasterxml.jackson.databind.type.CollectionLikeType v_other_80_line_253 = other;
		Class<?> q__class_3_line_253 = v_other_80_line_253._class;
		boolean collection_like_type_1_expr25_line_253 = f__class_6_line_253 == q__class_3_line_253;
		boolean collection_like_type_1_expr24_line_253 = (collection_like_type_1_expr25_line_253);
		boolean collection_like_type_1_expr26_line_253 = true;
		if (collection_like_type_1_expr24_line_253) {
			com.fasterxml.jackson.databind.JavaType f__element_type_53_line_253 = _elementType;
			com.fasterxml.jackson.databind.type.CollectionLikeType v_other_80_line_253_v1 = other;
			com.fasterxml.jackson.databind.JavaType q__element_type_4_line_253 = v_other_80_line_253_v1._elementType;
			collection_like_type_1_expr26_line_253 = f__element_type_53_line_253.equals(q__element_type_4_line_253);
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
