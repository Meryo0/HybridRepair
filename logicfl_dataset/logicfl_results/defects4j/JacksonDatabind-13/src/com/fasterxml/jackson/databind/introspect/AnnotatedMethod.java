package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.*;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Type;
import java.lang.reflect.Method;

public final class AnnotatedMethod
    extends AnnotatedWithParams
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    final protected transient Method _method;

    // // Simple lazy-caching:

    protected Class<?>[] _paramClasses;

    /**
     * Field that is used to make JDK serialization work with this
     * object.
     * 
     * @since 2.1
     */
    protected Serialization _serialization;
    
    /*
    /*****************************************************
    /* Life-cycle
    /*****************************************************
     */

    public AnnotatedMethod(AnnotatedClass ctxt, Method method,
            AnnotationMap classAnn, AnnotationMap[] paramAnnotations)
    {
        super(ctxt, classAnn, paramAnnotations);
        int PROBE_START_LINE_39 = 41;
		java.lang.reflect.Method p_method_2668_line_39 = method;
		boolean annotated_method_1_expr2_line_39 = p_method_2668_line_39 == null;
		int PROBE_END_LINE_39 = 41;
		if (annotated_method_1_expr2_line_39) {
            throw new IllegalArgumentException("Can not construct AnnotatedMethod with null Method");
        }
        int PROBE_START_LINE_42 = 42;
		java.lang.reflect.Method p_method_2668_line_42 = method;
		int PROBE_END_LINE_42 = 42;
		_method = p_method_2668_line_42;
    }

    /**
     * Method used for JDK serialization support
     * @since 2.1
     */
    protected AnnotatedMethod(Serialization ser)
    {
        super(null, null, null);
        _method = null;
        _serialization = ser;
    }
    
    /**
     * Method that constructs a new instance with settings (annotations, parameter annotations)
     * of this instance, but with different physical {@link Method}.
     */
    public AnnotatedMethod withMethod(Method m) {
        return new AnnotatedMethod(_context, m, _annotations, _paramAnnotations);
    }
    
    @Override
    public AnnotatedMethod withAnnotations(AnnotationMap ann) {
        return new AnnotatedMethod(_context, _method, ann, _paramAnnotations);
    }

    /*
    /*****************************************************
    /* Annotated impl
    /*****************************************************
     */

    @Override
    public Method getAnnotated() { int PROBE_START_LINE_76 = 76;
		java.lang.reflect.Method f__method_2671_line_76 = _method;
		int PROBE_END_LINE_76 = 76;
	return f__method_2671_line_76; }

    @Override
    public int getModifiers() { return _method.getModifiers(); }

    @Override
    public String getName() { int PROBE_START_LINE_82 = 82;
		java.lang.reflect.Method f__method_2671_line_82 = _method;
		String annotated_method_1_expr4_line_82 = f__method_2671_line_82.getName();
		int PROBE_END_LINE_82 = 82;
	return annotated_method_1_expr4_line_82; }

    /**
     * For methods, this returns declared return type, which is only
     * useful with getters (setters do not return anything; hence "void"
     * type is returned here)
     */
    @Override
    public Type getGenericType() {
        return _method.getGenericReturnType();
    }

    /**
     * For methods, this returns declared return type, which is only
     * useful with getters (setters do not usually return anything;
     * hence "void" type is returned here)
     */
    @Override
    public Class<?> getRawType() {
        return _method.getReturnType();
    }

    /**
     * As per [JACKSON-468], we need to also allow declaration of local
     * type bindings; mostly it will allow defining bounds.
     */
    @Override
    public JavaType getType(TypeBindings bindings) {
        return getType(bindings, _method.getTypeParameters());
    }

    @Override
    public final Object call() throws Exception {
        return _method.invoke(null);
    }

    @Override
    public final Object call(Object[] args) throws Exception {
        return _method.invoke(null, args);
    }

    @Override
    public final Object call1(Object arg) throws Exception {
        return _method.invoke(null, arg);
    }
    
    /*
    /********************************************************
    /* AnnotatedMember impl
    /********************************************************
     */

    @Override
    public Class<?> getDeclaringClass() { int PROBE_START_LINE_135 = 135;
		java.lang.reflect.Method f__method_2671_line_135 = _method;
		Class<?> annotated_method_1_expr5_line_135 = f__method_2671_line_135.getDeclaringClass();
		int PROBE_END_LINE_135 = 135;
	return annotated_method_1_expr5_line_135; }

    @Override
    public Method getMember() { return _method; }

    @Override
    public void setValue(Object pojo, Object value) throws IllegalArgumentException
    {
        try {
            _method.invoke(pojo, value);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Failed to setValue() with method "
                    +getFullName()+": "+e.getMessage(), e);
        } catch (InvocationTargetException e) {
            throw new IllegalArgumentException("Failed to setValue() with method "
                    +getFullName()+": "+e.getMessage(), e);
        }
    }

    @Override
    public Object getValue(Object pojo) throws IllegalArgumentException
    {
        try {
            return _method.invoke(pojo);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Failed to getValue() with method "
                    +getFullName()+": "+e.getMessage(), e);
        } catch (InvocationTargetException e) {
            throw new IllegalArgumentException("Failed to getValue() with method "
                    +getFullName()+": "+e.getMessage(), e);
        }
    }
    
    /*
    /*****************************************************
    /* Extended API, generic
    /*****************************************************
     */

    @Override
    public int getParameterCount() {
        int PROBE_START_LINE_176 = 176;
		Class<?>[] annotated_method_1_expr7_line_176 = getRawParameterTypes();
		int annotated_method_1_expr6_line_176 = annotated_method_1_expr7_line_176.length;
		int PROBE_END_LINE_176 = 176;
		return annotated_method_1_expr6_line_176;
    }

    public String getFullName() {
        return getDeclaringClass().getName() + "#" + getName() + "("
            +getParameterCount()+" params)";
    }
    
    public Class<?>[] getRawParameterTypes()
    {
        int PROBE_START_LINE_186 = 188;
		Class<?>[] f__param_classes_2681_line_186 = _paramClasses;
		boolean annotated_method_1_expr8_line_186 = f__param_classes_2681_line_186 == null;
		int PROBE_END_LINE_186 = 188;
		if (annotated_method_1_expr8_line_186) {
            int PROBE_START_LINE_187 = 187;
			java.lang.reflect.Method f__method_2671_line_187 = _method;
			Class<?>[] annotated_method_1_expr10_line_187 = f__method_2671_line_187.getParameterTypes();
			int PROBE_END_LINE_187 = 187;
			_paramClasses = annotated_method_1_expr10_line_187;
        }
        int PROBE_START_LINE_189 = 189;
		Class<?>[] f__param_classes_2681_line_189 = _paramClasses;
		int PROBE_END_LINE_189 = 189;
		return f__param_classes_2681_line_189;
    }
    
    public Type[] getGenericParameterTypes() {
        return _method.getGenericParameterTypes();
    }

    @Override
    public Class<?> getRawParameterType(int index)
    {
        Class<?>[] types = getRawParameterTypes();
        return (index >= types.length) ? null : types[index];
    }

    @Override
    public Type getGenericParameterType(int index)
    {
        int PROBE_START_LINE_206 = 206;
		java.lang.reflect.Method f__method_2671_line_206 = _method;
		Type[] annotated_method_1_expr11_line_206 = f__method_2671_line_206.getGenericParameterTypes();
		int PROBE_END_LINE_206 = 206;
		Type[] types = annotated_method_1_expr11_line_206;
        int PROBE_START_LINE_207 = 207;
		int p_index_2683_line_207 = index;
		java.lang.reflect.Type[] v_types_2684_line_207 = types;
		int q_length_93_line_207 = v_types_2684_line_207.length;
		boolean annotated_method_1_expr15_line_207 = p_index_2683_line_207 >= q_length_93_line_207;
		boolean annotated_method_1_expr13_line_207 = (annotated_method_1_expr15_line_207);
		java.lang.reflect.Type annotated_method_1_expr14_line_207 = null;
		if (!annotated_method_1_expr13_line_207) {
			java.lang.reflect.Type[] v_types_2684_line_207_v1 = types;
			int p_index_2683_line_207_v1 = index;
			annotated_method_1_expr14_line_207 = v_types_2684_line_207_v1[p_index_2683_line_207_v1];
		}
		java.lang.reflect.Type annotated_method_1_expr12_line_207 = annotated_method_1_expr13_line_207
				? null
				: annotated_method_1_expr14_line_207;
		int PROBE_END_LINE_207 = 207;
		return annotated_method_1_expr12_line_207;
    }

    public Class<?> getRawReturnType() {
        int PROBE_START_LINE_211 = 211;
		java.lang.reflect.Method f__method_2671_line_211 = _method;
		Class<?> annotated_method_1_expr16_line_211 = f__method_2671_line_211.getReturnType();
		int PROBE_END_LINE_211 = 211;
		return annotated_method_1_expr16_line_211;
    }
    
    public Type getGenericReturnType() {
        return _method.getGenericReturnType();
    }

    /**
     * Helper method that can be used to check whether method returns
     * a value or not; if return type declared as <code>void</code>, returns
     * false, otherwise true
     * 
     * @since 2.4
     */
    public boolean hasReturnType() {
        int PROBE_START_LINE_226 = 226;
		Class<?> annotated_method_1_expr17_line_226 = getRawReturnType();
		int PROBE_END_LINE_226 = 226;
		Class<?> rt = annotated_method_1_expr17_line_226;
        int PROBE_START_LINE_227 = 227;
		Class<?> v_rt_2685_line_227 = rt;
		Class<Void> q_type_94_line_227 = Void.TYPE;
		boolean annotated_method_1_expr20_line_227 = v_rt_2685_line_227 != q_type_94_line_227;
		boolean annotated_method_1_expr21_line_227 = true;
		if (annotated_method_1_expr20_line_227) {
			Class<?> v_rt_2685_line_227_v1 = rt;
			annotated_method_1_expr21_line_227 = v_rt_2685_line_227_v1 != Void.class;
		}
		boolean annotated_method_1_expr19_line_227 = annotated_method_1_expr20_line_227
				&& annotated_method_1_expr21_line_227;
		boolean annotated_method_1_expr18_line_227 = (annotated_method_1_expr19_line_227);
		int PROBE_END_LINE_227 = 227;
		return annotated_method_1_expr18_line_227;
    }
    
    /*
    /********************************************************
    /* Other
    /********************************************************
     */

    @Override
    public String toString() {
        return "[method "+getFullName()+"]";
    }

    @Override
    public int hashCode() {
        return _method.getName().hashCode();
    }
    
    @Override
    public boolean equals(Object o) {
        if (o == this) return true;
        if (o == null || o.getClass() != getClass()) return false;
        return ((AnnotatedMethod) o)._method == _method;
    }
    
    /*
    /**********************************************************
    /* JDK serialization handling
    /**********************************************************
     */

    Object writeReplace() {
        return new AnnotatedMethod(new Serialization(_method));
    }

    Object readResolve() {
        Class<?> clazz = _serialization.clazz;
        try {
            Method m = clazz.getDeclaredMethod(_serialization.name,
                    _serialization.args);
            // 06-Oct-2012, tatu: Has "lost" its security override, may need to force back
            if (!m.isAccessible()) {
                ClassUtil.checkAndFixAccess(m);
            }
            return new AnnotatedMethod(null, m, null, null);
        } catch (Exception e) {
            throw new IllegalArgumentException("Could not find method '"+_serialization.name
                        +"' from Class '"+clazz.getName());
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
        protected String name;
        protected Class<?>[] args;

        public Serialization(Method setter) {
            clazz = setter.getDeclaringClass();
            name = setter.getName();
            args = setter.getParameterTypes();
        }
    }
}
