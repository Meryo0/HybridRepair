package com.fasterxml.jackson.databind.type;

import java.lang.reflect.TypeVariable;

import com.fasterxml.jackson.databind.JavaType;

/**
 * Type that represents Java Collection types (Lists, Sets).
 */
public final class CollectionType
    extends CollectionLikeType
{
    private static final long serialVersionUID = 1L;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    private CollectionType(Class<?> collT, TypeBindings bindings,
            JavaType superClass, JavaType[] superInts, JavaType elemT,
            Object valueHandler, Object typeHandler, boolean asStatic)
    {
        super(collT, bindings, superClass, superInts, elemT, valueHandler, typeHandler, asStatic);
    }

    /**
     * @since 2.7
     */
    protected CollectionType(TypeBase base, JavaType elemT) {
        super(base, elemT);
    }

    /**
     * @since 2.7
     */
    public static CollectionType construct(Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInts, JavaType elemT) {
        int PROBE_START_LINE_40 = 41;
				Class<?> p_raw_type_91_line_40 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_92_line_40 = bindings;
				com.fasterxml.jackson.databind.JavaType p_super_class_93_line_40 = superClass;
				com.fasterxml.jackson.databind.JavaType[] p_super_ints_94_line_40 = superInts;
				com.fasterxml.jackson.databind.JavaType p_elem_t_95_line_40 = elemT;
				int PROBE_END_LINE_40 = 41;
		return new CollectionType(p_raw_type_91_line_40, p_bindings_92_line_40, p_super_class_93_line_40, p_super_ints_94_line_40, p_elem_t_95_line_40,
                null, null, false);
    }

    /**
     * @deprecated Since 2.7, remove from 2.9
     */
    @Deprecated // since 2.7
    public static CollectionType construct(Class<?> rawType, JavaType elemT) {
        // First: may need to fabricate TypeBindings (needed for refining into
        // concrete collection types, as per [databind#1102])
        TypeVariable<?>[] vars = rawType.getTypeParameters();
        TypeBindings bindings;
        if ((vars == null) || (vars.length != 1)) {
            bindings = TypeBindings.emptyBindings();
        } else {
            bindings = TypeBindings.create(rawType, elemT);
        }
        return new CollectionType(rawType, bindings,
                // !!! TODO: Wrong, does have supertypes, but:
                _bogusSuperClass(rawType), null, elemT,
                null, null, false);
    }

    @Deprecated // since 2.7
    @Override
    protected JavaType _narrow(Class<?> subclass) {
        return new CollectionType(subclass, _bindings,
                _superClass, _superInterfaces, _elementType, null, null, _asStatic);
    }

    @Override
    public JavaType withContentType(JavaType contentType) {
        if (_elementType == contentType) {
            return this;
        }
        return new CollectionType(_class, _bindings, _superClass, _superInterfaces,
                contentType, _valueHandler, _typeHandler, _asStatic);
    }
    
    @Override
    public CollectionType withTypeHandler(Object h) {
        return new CollectionType(_class, _bindings,
                _superClass, _superInterfaces, _elementType, _valueHandler, h, _asStatic);
    }

    @Override
    public CollectionType withContentTypeHandler(Object h)
    {
        return new CollectionType(_class, _bindings,
                _superClass, _superInterfaces, _elementType.withTypeHandler(h),
                _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    public CollectionType withValueHandler(Object h) {
        return new CollectionType(_class, _bindings,
                _superClass, _superInterfaces, _elementType, h, _typeHandler, _asStatic);
    }

    @Override
    public  CollectionType withContentValueHandler(Object h) {
        return new CollectionType(_class, _bindings,
                _superClass, _superInterfaces, _elementType.withValueHandler(h),
                _valueHandler, _typeHandler, _asStatic);
    }

    @Override
    public CollectionType withStaticTyping() {
        if (_asStatic) {
            return this;
        }
        return new CollectionType(_class, _bindings,
                _superClass, _superInterfaces, _elementType.withStaticTyping(),
                _valueHandler, _typeHandler, true);
    }

    @Override
    public JavaType refine(Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces) {
        int PROBE_START_LINE_120 = 122;
				Class<?> p_raw_type_104_line_120 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_105_line_120 = bindings;
				int PROBE_END_LINE_120 = 122;
		return new CollectionType(p_raw_type_104_line_120, p_bindings_105_line_120,
                superClass, superInterfaces, _elementType,
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
        return "[collection type; class "+_class.getName()+", contains "+_elementType+"]";
    }
}
