package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.*;


import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
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

    public AnnotatedConstructor(AnnotatedClass ctxt, Constructor<?> constructor,
            AnnotationMap classAnn, AnnotationMap[] paramAnn)
    {
        super(ctxt, classAnn, paramAnn);
        int PROBE_START_LINE_35 = 37;
		Constructor<?> p_constructor_2627_line_35 = constructor;
		boolean annotated_constructor_1_expr2_line_35 = p_constructor_2627_line_35 == null;
		int PROBE_END_LINE_35 = 37;
		if (annotated_constructor_1_expr2_line_35) {
            throw new IllegalArgumentException("Null constructor not allowed");
        }
        int PROBE_START_LINE_38 = 38;
		Constructor<?> p_constructor_2627_line_38 = constructor;
		int PROBE_END_LINE_38 = 38;
		_constructor = p_constructor_2627_line_38;
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
        return new AnnotatedConstructor(_context, _constructor, ann, _paramAnnotations);
    }
    
    /*
    /**********************************************************
    /* Annotated impl
    /**********************************************************
     */

    @Override
    public Constructor<?> getAnnotated() { int PROBE_START_LINE_64 = 64;
		Constructor<?> f__constructor_2630_line_64 = _constructor;
		int PROBE_END_LINE_64 = 64;
	return f__constructor_2630_line_64; }

    @Override
    public int getModifiers() { return _constructor.getModifiers(); }

    @Override
    public String getName() { return _constructor.getName(); }

    @Override
    public Type getGenericType() {
        return getRawType();
    }

    @Override
    public Class<?> getRawType() {
        return _constructor.getDeclaringClass();
    }

    // note: copied verbatim from AnnotatedMethod; hard to generalize
    /**
     * As per [JACKSON-468], we need to also allow declaration of local
     * type bindings; mostly it will allow defining bounds.
     */
    @Override
    public JavaType getType(TypeBindings bindings)
    {
        return getType(bindings, _constructor.getTypeParameters());
    }
    
    /*
    /**********************************************************
    /* Extended API
    /**********************************************************
     */

    @Override
    public int getParameterCount() {
        int PROBE_START_LINE_101 = 101;
		Constructor<?> f__constructor_2630_line_101 = _constructor;
		Class<?>[] annotated_constructor_1_expr5_line_101 = f__constructor_2630_line_101.getParameterTypes();
		int annotated_constructor_1_expr4_line_101 = annotated_constructor_1_expr5_line_101.length;
		int PROBE_END_LINE_101 = 101;
		return annotated_constructor_1_expr4_line_101;
    }

    @Override
    public Class<?> getRawParameterType(int index)
    {
        int PROBE_START_LINE_107 = 107;
		Constructor<?> f__constructor_2630_line_107 = _constructor;
		Class<?>[] annotated_constructor_1_expr6_line_107 = f__constructor_2630_line_107.getParameterTypes();
		int PROBE_END_LINE_107 = 107;
		Class<?>[] types = annotated_constructor_1_expr6_line_107;
        int PROBE_START_LINE_108 = 108;
		int p_index_2634_line_108 = index;
		Class<?>[] v_types_2635_line_108 = types;
		int q_length_91_line_108 = v_types_2635_line_108.length;
		boolean annotated_constructor_1_expr10_line_108 = p_index_2634_line_108 >= q_length_91_line_108;
		boolean annotated_constructor_1_expr8_line_108 = (annotated_constructor_1_expr10_line_108);
		Class<?> annotated_constructor_1_expr9_line_108 = null;
		if (!annotated_constructor_1_expr8_line_108) {
			Class<?>[] v_types_2635_line_108_v1 = types;
			int p_index_2634_line_108_v1 = index;
			annotated_constructor_1_expr9_line_108 = v_types_2635_line_108_v1[p_index_2634_line_108_v1];
		}
		Class<?> annotated_constructor_1_expr7_line_108 = annotated_constructor_1_expr8_line_108
				? null
				: annotated_constructor_1_expr9_line_108;
		int PROBE_END_LINE_108 = 108;
		return annotated_constructor_1_expr7_line_108;
    }

    @Override
    public Type getGenericParameterType(int index)
    {
        int PROBE_START_LINE_114 = 114;
		Constructor<?> f__constructor_2630_line_114 = _constructor;
		Type[] annotated_constructor_1_expr11_line_114 = f__constructor_2630_line_114.getGenericParameterTypes();
		int PROBE_END_LINE_114 = 114;
		Type[] types = annotated_constructor_1_expr11_line_114;
        int PROBE_START_LINE_115 = 115;
		int p_index_2636_line_115 = index;
		java.lang.reflect.Type[] v_types_2637_line_115 = types;
		int q_length_92_line_115 = v_types_2637_line_115.length;
		boolean annotated_constructor_1_expr15_line_115 = p_index_2636_line_115 >= q_length_92_line_115;
		boolean annotated_constructor_1_expr13_line_115 = (annotated_constructor_1_expr15_line_115);
		java.lang.reflect.Type annotated_constructor_1_expr14_line_115 = null;
		if (!annotated_constructor_1_expr13_line_115) {
			java.lang.reflect.Type[] v_types_2637_line_115_v1 = types;
			int p_index_2636_line_115_v1 = index;
			annotated_constructor_1_expr14_line_115 = v_types_2637_line_115_v1[p_index_2636_line_115_v1];
		}
		java.lang.reflect.Type annotated_constructor_1_expr12_line_115 = annotated_constructor_1_expr13_line_115
				? null
				: annotated_constructor_1_expr14_line_115;
		int PROBE_END_LINE_115 = 115;
		return annotated_constructor_1_expr12_line_115;
    }

    @Override
    public final Object call() throws Exception {
        int PROBE_START_LINE_120 = 120;
		Constructor<?> f__constructor_2630_line_120 = _constructor;
		java.lang.Object annotated_constructor_1_expr16_line_120 = f__constructor_2630_line_120.newInstance();
		int PROBE_END_LINE_120 = 120;
		return annotated_constructor_1_expr16_line_120;
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
    public Class<?> getDeclaringClass() { return _constructor.getDeclaringClass(); }

    @Override
    public Member getMember() { int PROBE_START_LINE_143 = 143;
		Constructor<?> f__constructor_2630_line_143 = _constructor;
		int PROBE_END_LINE_143 = 143;
	return f__constructor_2630_line_143; }

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
                ClassUtil.checkAndFixAccess(ctor);
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
