package com.fasterxml.jackson.databind.type;

import java.util.*;

import com.fasterxml.jackson.databind.JavaType;

/**
 * Simple types are defined as anything other than one of recognized
 * container types (arrays, Collections, Maps). For our needs we
 * need not know anything further, since we have no way of dealing
 * with generic types other than Collections and Maps.
 */
public class SimpleType // note: until 2.6 was final
    extends TypeBase
{
    private static final long serialVersionUID = 1L;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    /**
     * Constructor only used by core Jackson databind functionality;
     * should never be called by application code.
     *<p>
     * As with other direct construction that by-passes {@link TypeFactory},
     * no introspection occurs with respect to super-types; caller must be
     * aware of consequences if using this method.
     */
    protected SimpleType(Class<?> cls) {
        this(cls, TypeBindings.emptyBindings(), null, null);
    }

    protected SimpleType(Class<?> cls, TypeBindings bindings,
            JavaType superClass, JavaType[] superInts) {
        this(cls, bindings, superClass, superInts, null, null, false);
    }

    /**
     * Simple copy-constructor, usually used when upgrading/refining a simple type
     * into more specialized type.
     *
     * @since 2.7
     */
    protected SimpleType(TypeBase base) {
        super(base);
    }

    protected SimpleType(Class<?> cls, TypeBindings bindings,
            JavaType superClass, JavaType[] superInts,
            Object valueHandler, Object typeHandler, boolean asStatic)
    {
        super(cls, bindings, superClass, superInts,
                0, valueHandler, typeHandler, asStatic);
    }

    /**
     * Pass-through constructor used by {@link ReferenceType}.
     * 
     * @since 2.6
     */
    protected SimpleType(Class<?> cls, TypeBindings bindings,
            JavaType superClass, JavaType[] superInts, int extraHash,
            Object valueHandler, Object typeHandler, boolean asStatic)
    {
        super(cls, bindings, superClass, superInts, 
                extraHash, valueHandler, typeHandler, asStatic);
    }
    
    /**
     * Method used by core Jackson classes: NOT to be used by application code:
     * it does NOT properly handle inspection of super-types, so neither parent
     * Classes nor implemented Interfaces are accessible with resulting type
     * instance.
     *<p>
     * NOTE: public only because it is called by <code>ObjectMapper</code> which is
     * not in same package
     */
    public static SimpleType constructUnsafe(Class<?> raw) {
        int PROBE_START_LINE_82 = 84;
		Class<?> p_raw_5507_line_82 = raw;
		int PROBE_END_LINE_82 = 84;
		return new SimpleType(p_raw_5507_line_82, null,
                // 18-Oct-2015, tatu: Should be ok to omit possible super-types, right?
                null, null, null, null, false);
    }

    /**
     * Method that should NOT to be used by application code:
     * it does NOT properly handle inspection of super-types, so neither parent
     * Classes nor implemented Interfaces are accessible with resulting type
     * instance. Instead, please use {@link TypeFactory}'s <code>constructType</code>
     * methods which handle introspection appropriately.
     *<p>
     * Note that prior to 2.7, method usage was not limited and would typically
     * have worked acceptably: the problem comes from inability to resolve super-type
     * information, for which {@link TypeFactory} is needed.
     * 
     * @deprecated Since 2.7
     */
    @Deprecated
    public static SimpleType construct(Class<?> cls)
    {
        /* Let's add sanity checks, just to ensure no
         * Map/Collection entries are constructed
         */
        if (Map.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Cannot construct SimpleType for a Map (class: "+cls.getName()+")");
        }
        if (Collection.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Cannot construct SimpleType for a Collection (class: "+cls.getName()+")");
        }
        // ... and while we are at it, not array types either
        if (cls.isArray()) {
            throw new IllegalArgumentException("Cannot construct SimpleType for an array (class: "+cls.getName()+")");
        }
        TypeBindings b = TypeBindings.emptyBindings();
        return new SimpleType(cls, b,
                _buildSuperClass(cls.getSuperclass(), b), null, null, null, false);
    }

    @Override
    @Deprecated
    protected JavaType _narrow(Class<?> subclass)
    {
        if (_class == subclass) {
            return this;
        }
        // Should we check that there is a sub-class relationship?
        // 15-Jan-2016, tatu: Almost yes, but there are some complications with
        //    placeholder values (`Void`, `NoClass`), so cannot quite do yet.
        // TODO: fix in 2.9
        if (!_class.isAssignableFrom(subclass)) {
            /*
            throw new IllegalArgumentException("Class "+subclass.getName()+" not sub-type of "
                    +_class.getName());
                    */
            return new SimpleType(subclass, _bindings, this, _superInterfaces,
                    _valueHandler, _typeHandler, _asStatic);
        }
        // Otherwise, stitch together the hierarchy. First, super-class
        Class<?> next = subclass.getSuperclass();
        if (next == _class) { // straight up parent class? Great.
            return new SimpleType(subclass, _bindings, this,
                    _superInterfaces, _valueHandler, _typeHandler, _asStatic);
        }
        if ((next != null) && _class.isAssignableFrom(next)) {
            JavaType superb = _narrow(next);
            return new SimpleType(subclass, _bindings, superb,
                    null, _valueHandler, _typeHandler, _asStatic);
        }
        // if not found, try a super-interface
        Class<?>[] nextI = subclass.getInterfaces();
        for (Class<?> iface : nextI) {
            if (iface == _class) { // directly implemented
                return new SimpleType(subclass, _bindings, null,
                        new JavaType[] { this }, _valueHandler, _typeHandler, _asStatic);
            }
            if (_class.isAssignableFrom(iface)) { // indirect, so recurse
                JavaType superb = _narrow(iface);
                return new SimpleType(subclass, _bindings, null,
                        new JavaType[] { superb }, _valueHandler, _typeHandler, _asStatic);
            }
        }
        // should not get here but...
        throw new IllegalArgumentException("Internal error: Cannot resolve sub-type for Class "+subclass.getName()+" to "
                +_class.getName());
    }
    
    @Override
    public JavaType withContentType(JavaType contentType) {
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContentType()");
    }
    
    @Override
    public SimpleType withTypeHandler(Object h) {
        int PROBE_START_LINE_176 = 178;
		Object f__type_handler_487_line_176 = _typeHandler;
		Object p_h_5511_line_176 = h;
		boolean simple_type_1_expr6_line_176 = f__type_handler_487_line_176 == p_h_5511_line_176;
		int PROBE_END_LINE_176 = 178;
		if (simple_type_1_expr6_line_176) {
            return this;
        }
        int PROBE_START_LINE_179 = 179;
		Class<?> f__class_484_line_179 = _class;
		com.fasterxml.jackson.databind.type.TypeBindings f__bindings_5398_line_179 = _bindings;
		com.fasterxml.jackson.databind.JavaType f__super_class_5399_line_179 = _superClass;
		com.fasterxml.jackson.databind.JavaType[] f__super_interfaces_5400_line_179 = _superInterfaces;
		Object f__value_handler_486_line_179 = _valueHandler;
		Object p_h_5511_line_179 = h;
		boolean f__as_static_488_line_179 = _asStatic;
		int PROBE_END_LINE_179 = 179;
		return new SimpleType(f__class_484_line_179, f__bindings_5398_line_179, f__super_class_5399_line_179, f__super_interfaces_5400_line_179, f__value_handler_486_line_179, p_h_5511_line_179, f__as_static_488_line_179);
    }

    @Override
    public JavaType withContentTypeHandler(Object h) {
        // no content type, so:
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContenTypeHandler()");
    }

    @Override
    public SimpleType withValueHandler(Object h) {
        if (h == _valueHandler) {
            return this;
        }
        return new SimpleType(_class, _bindings, _superClass, _superInterfaces, h, _typeHandler, _asStatic);
    }
    
    @Override
    public  SimpleType withContentValueHandler(Object h) {
        // no content type, so:
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContenValueHandler()");
    }

    @Override
    public SimpleType withStaticTyping() {
        return _asStatic ? this : new SimpleType(_class, _bindings,
                _superClass, _superInterfaces, _valueHandler, _typeHandler, true);
    }

    @Override
    public JavaType refine(Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces) {
        // SimpleType means something not-specialized, so:
        return null;
    }

    @Override
    protected String buildCanonicalName()
    {
        StringBuilder sb = new StringBuilder();
        int PROBE_START_LINE_219 = 219;
		StringBuilder v_sb_5519_line_219 = sb;
		Class<?> f__class_484_line_219 = _class;
		String simple_type_1_expr10_line_219 = f__class_484_line_219.getName();
		int PROBE_END_LINE_219 = 219;
		v_sb_5519_line_219.append(simple_type_1_expr10_line_219);

        int PROBE_START_LINE_221 = 221;
		com.fasterxml.jackson.databind.type.TypeBindings f__bindings_5398_line_221 = _bindings;
		int simple_type_1_expr11_line_221 = f__bindings_5398_line_221.size();
		int PROBE_END_LINE_221 = 221;
		final int count = simple_type_1_expr11_line_221;
        int PROBE_START_LINE_222 = 232;
		int v_count_5520_line_222 = count;
		boolean simple_type_1_expr12_line_222 = v_count_5520_line_222 > 0;
		int PROBE_END_LINE_222 = 232;
		if (simple_type_1_expr12_line_222) {
            sb.append('<');
            for (int i = 0; i < count; ++i) {
                JavaType t = containedType(i);
                if (i > 0) {
                    sb.append(',');
                }
                sb.append(t.toCanonical());
            }
            sb.append('>');
        }
        int PROBE_START_LINE_233 = 233;
		StringBuilder v_sb_5519_line_233 = sb;
		String simple_type_1_expr13_line_233 = v_sb_5519_line_233.toString();
		int PROBE_END_LINE_233 = 233;
		return simple_type_1_expr13_line_233;
    }

    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    @Override
    public boolean isContainerType() { return false; }
    
    @Override
    public boolean hasContentType() { return false; }

    @Override
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return _classSignature(_class, sb, true);
    }
    
    @Override
    public StringBuilder getGenericSignature(StringBuilder sb)
    {
        _classSignature(_class, sb, false);

        final int count = _bindings.size();
        if (count > 0) {
            sb.append('<');
            for (int i = 0; i < count; ++i) {
                sb = containedType(i).getGenericSignature(sb);
            }
            sb.append('>');
        }
        sb.append(';');
        return sb;
    }

    /*
    /**********************************************************
    /* Internal methods
    /**********************************************************
     */

    /**
     * Helper method we need to recursively build skeletal representations
     * of superclasses.
     * 
     * @since 2.7 -- remove when not needed (2.8?)
     */
    private static JavaType _buildSuperClass(Class<?> superClass, TypeBindings b)
    {
        if (superClass == null) {
            return null;
        }
        if (superClass == Object.class) {
            return TypeFactory.unknownType();
        }
        JavaType superSuper = _buildSuperClass(superClass.getSuperclass(), b);
        return new SimpleType(superClass, b,
                superSuper, null, null, null, false);
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
        int PROBE_START_LINE_305 = 305;
		StringBuilder v_sb_5525_line_305 = sb;
		StringBuilder simple_type_1_expr18_line_305 = v_sb_5525_line_305.append("[simple type, class ");
		String simple_type_1_expr17_line_305 = buildCanonicalName();
		StringBuilder simple_type_1_expr16_line_305 = simple_type_1_expr18_line_305
				.append(simple_type_1_expr17_line_305);
		int PROBE_END_LINE_305 = 305;
		simple_type_1_expr16_line_305.append(']');
        int PROBE_START_LINE_306 = 306;
		StringBuilder v_sb_5525_line_306 = sb;
		String simple_type_1_expr19_line_306 = v_sb_5525_line_306.toString();
		int PROBE_END_LINE_306 = 306;
		return simple_type_1_expr19_line_306;
    }

    @Override
    public boolean equals(Object o)
    {
        int PROBE_START_LINE_312 = 312;
		Object p_o_5526_line_312 = o;
		boolean simple_type_1_expr20_line_312 = p_o_5526_line_312 == this;
		int PROBE_END_LINE_312 = 312;
		if (simple_type_1_expr20_line_312) return true;
        int PROBE_START_LINE_313 = 313;
		Object p_o_5526_line_313 = o;
		boolean simple_type_1_expr22_line_313 = p_o_5526_line_313 == null;
		int PROBE_END_LINE_313 = 313;
		if (simple_type_1_expr22_line_313) return false;
        int PROBE_START_LINE_314 = 314;
		Object p_o_5526_line_314 = o;
		Class<? extends Object> simple_type_1_expr24_line_314 = p_o_5526_line_314.getClass();
		Class<? extends com.fasterxml.jackson.databind.type.SimpleType> simple_type_1_expr25_line_314 = getClass();
		boolean simple_type_1_expr23_line_314 = simple_type_1_expr24_line_314 != simple_type_1_expr25_line_314;
		int PROBE_END_LINE_314 = 314;
		if (simple_type_1_expr23_line_314) return false;

        int PROBE_START_LINE_316 = 316;
		Object p_o_5526_line_316 = o;
		int PROBE_END_LINE_316 = 316;
		SimpleType other = (SimpleType) p_o_5526_line_316;

        int PROBE_START_LINE_319 = 319;
		com.fasterxml.jackson.databind.type.SimpleType v_other_5527_line_319 = other;
		Class<?> q__class_182_line_319 = v_other_5527_line_319._class;
		Class<?> f__class_484_line_319 = this._class;
		boolean simple_type_1_expr27_line_319 = q__class_182_line_319 != f__class_484_line_319;
		int PROBE_END_LINE_319 = 319;
		// Classes must be identical... 
        if (simple_type_1_expr27_line_319) return false;

        int PROBE_START_LINE_322 = 322;
		TypeBindings f__bindings_5398_line_322 = _bindings;
		int PROBE_END_LINE_322 = 322;
		// And finally, generic bindings, if any
        TypeBindings b1 = f__bindings_5398_line_322;
        int PROBE_START_LINE_323 = 323;
		com.fasterxml.jackson.databind.type.SimpleType v_other_5527_line_323 = other;
		TypeBindings q__bindings_183_line_323 = v_other_5527_line_323._bindings;
		int PROBE_END_LINE_323 = 323;
		TypeBindings b2 = q__bindings_183_line_323;
        int PROBE_START_LINE_324 = 324;
		com.fasterxml.jackson.databind.type.TypeBindings v_b_1_5528_line_324 = b1;
		com.fasterxml.jackson.databind.type.TypeBindings v_b_2_5529_line_324 = b2;
		boolean simple_type_1_expr30_line_324 = v_b_1_5528_line_324.equals(v_b_2_5529_line_324);
		int PROBE_END_LINE_324 = 324;
		return simple_type_1_expr30_line_324;
    }
}
