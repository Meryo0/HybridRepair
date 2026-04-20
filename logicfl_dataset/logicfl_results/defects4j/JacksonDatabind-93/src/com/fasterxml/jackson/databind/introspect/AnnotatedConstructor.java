package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.*;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Type;
import java.lang.reflect.Constructor;

public final class AnnotatedConstructor
    extends AnnotatedWithParams
{
    private static final long serialVersionUID = 1L;

    protected final Constructor<?> _constructor;

    /**
     * Field that is used to make JDK serialization work with this
     * object.
     * 
     * @since 2.1
     */
    protected Serialization _serialization;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    public AnnotatedConstructor(TypeResolutionContext ctxt, Constructor<?> constructor,
            AnnotationMap classAnn, AnnotationMap[] paramAnn)
    {
        super(ctxt, classAnn, paramAnn);
        int PROBE_START_LINE_33 = 35;
		Constructor<?> p_constructor_2842_line_33 = constructor;
		boolean annotated_constructor_1_expr2_line_33 = p_constructor_2842_line_33 == null;
		int PROBE_END_LINE_33 = 35;
		if (annotated_constructor_1_expr2_line_33) {
            throw new IllegalArgumentException("Null constructor not allowed");
        }
        int PROBE_START_LINE_36 = 36;
		Constructor<?> p_constructor_2842_line_36 = constructor;
		int PROBE_END_LINE_36 = 36;
		_constructor = p_constructor_2842_line_36;
    }

    /**
     * Method used for JDK serialization support
     * @since 2.1
     */
    protected AnnotatedConstructor(Serialization ser)
    {
        super(null, null, null);
        _constructor = null;
        _serialization = ser;
    }
    
    @Override
    public AnnotatedConstructor withAnnotations(AnnotationMap ann) {
        return new AnnotatedConstructor(_typeContext, _constructor, ann, _paramAnnotations);
    }
    
    /*
    /**********************************************************
    /* Annotated impl
    /**********************************************************
     */

    @Override
    public Constructor<?> getAnnotated() { int PROBE_START_LINE_62 = 62;
		Constructor<?> f__constructor_2845_line_62 = _constructor;
		int PROBE_END_LINE_62 = 62;
	return f__constructor_2845_line_62; }

    @Override
    public int getModifiers() { return _constructor.getModifiers(); }

    @Override
    public String getName() { return _constructor.getName(); }

    @Override
    public JavaType getType() {
        return _typeContext.resolveType(getRawType());
    }

    @Override
    public Class<?> getRawType() {
        return _constructor.getDeclaringClass();
    }

    /*
    /**********************************************************
    /* Extended API
    /**********************************************************
     */

    @Override
    public int getParameterCount() {
        int PROBE_START_LINE_88 = 88;
		Constructor<?> f__constructor_2845_line_88 = _constructor;
		Class<?>[] annotated_constructor_1_expr5_line_88 = f__constructor_2845_line_88.getParameterTypes();
		int annotated_constructor_1_expr4_line_88 = annotated_constructor_1_expr5_line_88.length;
		int PROBE_END_LINE_88 = 88;
		return annotated_constructor_1_expr4_line_88;
    }

    @Override
    public Class<?> getRawParameterType(int index)
    {
        int PROBE_START_LINE_94 = 94;
		Constructor<?> f__constructor_2845_line_94 = _constructor;
		Class<?>[] annotated_constructor_1_expr6_line_94 = f__constructor_2845_line_94.getParameterTypes();
		int PROBE_END_LINE_94 = 94;
		Class<?>[] types = annotated_constructor_1_expr6_line_94;
        int PROBE_START_LINE_95 = 95;
		int p_index_2848_line_95 = index;
		Class<?>[] v_types_2849_line_95 = types;
		int q_length_76_line_95 = v_types_2849_line_95.length;
		boolean annotated_constructor_1_expr10_line_95 = p_index_2848_line_95 >= q_length_76_line_95;
		boolean annotated_constructor_1_expr8_line_95 = (annotated_constructor_1_expr10_line_95);
		Class<?> annotated_constructor_1_expr9_line_95 = null;
		if (!annotated_constructor_1_expr8_line_95) {
			Class<?>[] v_types_2849_line_95_v1 = types;
			int p_index_2848_line_95_v1 = index;
			annotated_constructor_1_expr9_line_95 = v_types_2849_line_95_v1[p_index_2848_line_95_v1];
		}
		Class<?> annotated_constructor_1_expr7_line_95 = annotated_constructor_1_expr8_line_95
				? null
				: annotated_constructor_1_expr9_line_95;
		int PROBE_END_LINE_95 = 95;
		return annotated_constructor_1_expr7_line_95;
    }

    @Override
    public JavaType getParameterType(int index) {
        int PROBE_START_LINE_100 = 100;
		Constructor<?> f__constructor_2845_line_100 = _constructor;
		Type[] annotated_constructor_1_expr11_line_100 = f__constructor_2845_line_100.getGenericParameterTypes();
		int PROBE_END_LINE_100 = 100;
		Type[] types = annotated_constructor_1_expr11_line_100;
        int PROBE_START_LINE_101 = 103;
		int p_index_2850_line_101 = index;
		java.lang.reflect.Type[] v_types_2851_line_101 = types;
		int q_length_77_line_101 = v_types_2851_line_101.length;
		boolean annotated_constructor_1_expr12_line_101 = p_index_2850_line_101 >= q_length_77_line_101;
		int PROBE_END_LINE_101 = 103;
		if (annotated_constructor_1_expr12_line_101) {
            return null;
        }
        int PROBE_START_LINE_104 = 104;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext f__type_context_2852_line_104 = _typeContext;
		java.lang.reflect.Type[] v_types_2851_line_104 = types;
		int p_index_2850_line_104 = index;
		java.lang.reflect.Type annotated_constructor_1_expr14_line_104 = v_types_2851_line_104[p_index_2850_line_104];
		com.fasterxml.jackson.databind.JavaType annotated_constructor_1_expr13_line_104 = f__type_context_2852_line_104
				.resolveType(annotated_constructor_1_expr14_line_104);
		int PROBE_END_LINE_104 = 104;
		return annotated_constructor_1_expr13_line_104;
    }

    @Override
    @Deprecated // since 2.7
    public Type getGenericParameterType(int index) {
        Type[] types = _constructor.getGenericParameterTypes();
        if (index >= types.length) {
            return null;
        }
        return types[index];
    }
    
    @Override
    public final Object call() throws Exception {
        return _constructor.newInstance();
    }

    @Override
    public final Object call(Object[] args) throws Exception {
        return _constructor.newInstance(args);
    }

    @Override
    public final Object call1(Object arg) throws Exception {
        return _constructor.newInstance(arg);
    }
    
    /*
    /**********************************************************
    /* AnnotatedMember impl
    /**********************************************************
     */

    @Override
    public Class<?> getDeclaringClass() { int PROBE_START_LINE_139 = 139;
		Constructor<?> f__constructor_2845_line_139 = _constructor;
		Class<?> annotated_constructor_1_expr15_line_139 = f__constructor_2845_line_139.getDeclaringClass();
		int PROBE_END_LINE_139 = 139;
	return annotated_constructor_1_expr15_line_139; }

    @Override
    public Member getMember() { int PROBE_START_LINE_142 = 142;
		Constructor<?> f__constructor_2845_line_142 = _constructor;
		int PROBE_END_LINE_142 = 142;
	return f__constructor_2845_line_142; }

    @Override
    public void setValue(Object pojo, Object value)
        throws UnsupportedOperationException
    {
        throw new UnsupportedOperationException("Cannot call setValue() on constructor of "
                +getDeclaringClass().getName());
    }

    @Override
    public Object getValue(Object pojo)
        throws UnsupportedOperationException
    {
        throw new UnsupportedOperationException("Cannot call getValue() on constructor of "
                +getDeclaringClass().getName());
    }
    
    /*
    /**********************************************************
    /* Extended API, specific annotations
    /**********************************************************
     */

    @Override
    public String toString() {
        return "[constructor for "+getName()+", annotations: "+_annotations+"]";
    }

    @Override
    public int hashCode() {
        return _constructor.getName().hashCode();
    }
    
    @Override
    public boolean equals(Object o) {
        if (o == this) return true;
        if (o == null || o.getClass() != getClass()) return false;
        return ((AnnotatedConstructor) o)._constructor == _constructor;
    }
    
    /*
    /**********************************************************
    /* JDK serialization handling
    /**********************************************************
     */

    Object writeReplace() {
        return new AnnotatedConstructor(new Serialization(_constructor));
    }

    Object readResolve() {
        Class<?> clazz = _serialization.clazz;
        try {
            Constructor<?> ctor = clazz.getDeclaredConstructor(_serialization.args);
            // 06-Oct-2012, tatu: Has "lost" its security override, must force back
            if (!ctor.isAccessible()) {
                ClassUtil.checkAndFixAccess(ctor, false);
            }
            return new AnnotatedConstructor(null, ctor, null, null);
        } catch (Exception e) {
            throw new IllegalArgumentException("Could not find constructor with "
                    +_serialization.args.length+" args from Class '"+clazz.getName());
        }
    }
    
    /**
     * Helper class that is used as the workaround to persist
     * Field references. It basically just stores declaring class
     * and field name.
     */
    private final static class Serialization
        implements java.io.Serializable
    {
        private static final long serialVersionUID = 1L;
        protected Class<?> clazz;
        protected Class<?>[] args;

        public Serialization(Constructor<?> ctor) {
            clazz = ctor.getDeclaringClass();
            args = ctor.getParameterTypes();
        }
    }
}
