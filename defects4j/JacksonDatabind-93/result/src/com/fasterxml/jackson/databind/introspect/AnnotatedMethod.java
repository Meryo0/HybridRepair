package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.*;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ClassUtil;
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

    public AnnotatedMethod(TypeResolutionContext ctxt, Method method,
            AnnotationMap classAnn, AnnotationMap[] paramAnnotations)
    {
        super(ctxt, classAnn, paramAnnotations);
        int PROBE_START_LINE_38 = 40;
		java.lang.reflect.Method p_method_2886_line_38 = method;
		boolean annotated_method_1_expr2_line_38 = p_method_2886_line_38 == null;
		int PROBE_END_LINE_38 = 40;
		if (annotated_method_1_expr2_line_38) {
            throw new IllegalArgumentException("Can not construct AnnotatedMethod with null Method");
        }
        int PROBE_START_LINE_41 = 41;
		java.lang.reflect.Method p_method_2886_line_41 = method;
		int PROBE_END_LINE_41 = 41;
		_method = p_method_2886_line_41;
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
        return new AnnotatedMethod(_typeContext, m, _annotations, _paramAnnotations);
    }
    
    @Override
    public AnnotatedMethod withAnnotations(AnnotationMap ann) {
        return new AnnotatedMethod(_typeContext, _method, ann, _paramAnnotations);
    }


    @Override
    public Method getAnnotated() { return _method; }

    @Override
    public int getModifiers() { return _method.getModifiers(); }

    @Override
    public String getName() { return _method.getName(); }

    /**
     * For methods, this returns declared return type, which is only
     * useful with getters (setters do not return anything; hence `Void`
     * would be returned here)
     */
    @Override
    public JavaType getType() {
        return _typeContext.resolveType(_method.getGenericReturnType());
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

    @Deprecated
    @Override
    public Type getGenericType() {
        return _method.getGenericReturnType();
    }

    /*
    /*****************************************************
    /* AnnotatedWithParams
    /*****************************************************
     */
    
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

    public final Object callOn(Object pojo) throws Exception {
        return _method.invoke(pojo);
    }

    public final Object callOnWith(Object pojo, Object... args) throws Exception {
        return _method.invoke(pojo, args);
    }

    /*
    /********************************************************
    /* AnnotatedMember impl
    /********************************************************
     */

    @Override
    public int getParameterCount() {
        int PROBE_START_LINE_141 = 141;
		Class<?>[] annotated_method_1_expr5_line_141 = getRawParameterTypes();
		int annotated_method_1_expr4_line_141 = annotated_method_1_expr5_line_141.length;
		int PROBE_END_LINE_141 = 141;
		return annotated_method_1_expr4_line_141;
    }
    
    @Override
    public Class<?> getRawParameterType(int index)
    {
        Class<?>[] types = getRawParameterTypes();
        return (index >= types.length) ? null : types[index];
    }

    @Override
    public JavaType getParameterType(int index) {
        Type[] types = _method.getGenericParameterTypes();
        if (index >= types.length) {
            return null;
        }
        return _typeContext.resolveType(types[index]);
    }

    @Override
    @Deprecated // since 2.7
    public Type getGenericParameterType(int index) {
        Type[] types = getGenericParameterTypes();
        if (index >= types.length) {
            return null;
        }
        return types[index];
    }
    
    @Override
    public Class<?> getDeclaringClass() { return _method.getDeclaringClass(); }

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

    public String getFullName() {
        return getDeclaringClass().getName() + "#" + getName() + "("
            +getParameterCount()+" params)";
    }

    public Class<?>[] getRawParameterTypes()
    {
        int PROBE_START_LINE_217 = 219;
		Class<?>[] f__param_classes_2904_line_217 = _paramClasses;
		boolean annotated_method_1_expr6_line_217 = f__param_classes_2904_line_217 == null;
		int PROBE_END_LINE_217 = 219;
		if (annotated_method_1_expr6_line_217) {
            int PROBE_START_LINE_218 = 218;
			java.lang.reflect.Method f__method_2889_line_218 = _method;
			Class<?>[] annotated_method_1_expr8_line_218 = f__method_2889_line_218.getParameterTypes();
			int PROBE_END_LINE_218 = 218;
			_paramClasses = annotated_method_1_expr8_line_218;
        }
        int PROBE_START_LINE_220 = 220;
		Class<?>[] f__param_classes_2904_line_220 = _paramClasses;
		int PROBE_END_LINE_220 = 220;
		return f__param_classes_2904_line_220;
    }

    @Deprecated // since 2.7
    public Type[] getGenericParameterTypes() {
        return _method.getGenericParameterTypes();
    }

    public Class<?> getRawReturnType() {
        int PROBE_START_LINE_229 = 229;
		java.lang.reflect.Method f__method_2889_line_229 = _method;
		Class<?> annotated_method_1_expr9_line_229 = f__method_2889_line_229.getReturnType();
		int PROBE_END_LINE_229 = 229;
		return annotated_method_1_expr9_line_229;
    }

    /**
     * Helper method that can be used to check whether method returns
     * a value or not; if return type declared as <code>void</code>, returns
     * false, otherwise true
     * 
     * @since 2.4
     */
    public boolean hasReturnType() {
        Class<?> rt = getRawReturnType();
        return (rt != Void.TYPE && rt != Void.class);
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
                ClassUtil.checkAndFixAccess(m, false);
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
