package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.*;

import com.fasterxml.jackson.databind.JavaType;
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

    public AnnotatedMethod(TypeResolutionContext ctxt, Method method,
            AnnotationMap classAnn, AnnotationMap[] paramAnnotations)
    {
        super(ctxt, classAnn, paramAnnotations);
        int PROBE_START_LINE_38 = 40;
		java.lang.reflect.Method p_method_3622_line_38 = method;
		boolean annotated_method_1_expr2_line_38 = p_method_3622_line_38 == null;
		int PROBE_END_LINE_38 = 40;
		if (annotated_method_1_expr2_line_38) {
            throw new IllegalArgumentException("Cannot construct AnnotatedMethod with null Method");
        }
        int PROBE_START_LINE_41 = 41;
		java.lang.reflect.Method p_method_3622_line_41 = method;
		int PROBE_END_LINE_41 = 41;
		_method = p_method_3622_line_41;
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

    @Override
    public AnnotatedMethod withAnnotations(AnnotationMap ann) {
        int PROBE_START_LINE_57 = 57;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext f__type_context_3496_line_57 = _typeContext;
		java.lang.reflect.Method f__method_3625_line_57 = _method;
		com.fasterxml.jackson.databind.introspect.AnnotationMap p_ann_3627_line_57 = ann;
		com.fasterxml.jackson.databind.introspect.AnnotationMap[] f__param_annotations_3628_line_57 = _paramAnnotations;
		int PROBE_END_LINE_57 = 57;
		return new AnnotatedMethod(f__type_context_3496_line_57, f__method_3625_line_57, p_ann_3627_line_57, f__param_annotations_3628_line_57);
    }


    @Override
    public Method getAnnotated() { int PROBE_START_LINE_62 = 62;
		java.lang.reflect.Method f__method_3625_line_62 = _method;
		int PROBE_END_LINE_62 = 62;
	return f__method_3625_line_62; }

    @Override
    public int getModifiers() { return _method.getModifiers(); }

    @Override
    public String getName() { int PROBE_START_LINE_68 = 68;
		java.lang.reflect.Method f__method_3625_line_68 = _method;
		String annotated_method_1_expr5_line_68 = f__method_3625_line_68.getName();
		int PROBE_END_LINE_68 = 68;
	return annotated_method_1_expr5_line_68; }

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
        return _method.invoke(pojo, (Object[]) null);
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
        int PROBE_START_LINE_133 = 133;
		Class<?>[] annotated_method_1_expr7_line_133 = getRawParameterTypes();
		int annotated_method_1_expr6_line_133 = annotated_method_1_expr7_line_133.length;
		int PROBE_END_LINE_133 = 133;
		return annotated_method_1_expr6_line_133;
    }
    
    @Override
    public Class<?> getRawParameterType(int index)
    {
        Class<?>[] types = getRawParameterTypes();
        return (index >= types.length) ? null : types[index];
    }

    @Override
    public JavaType getParameterType(int index) {
        int PROBE_START_LINE_145 = 145;
		java.lang.reflect.Method f__method_3625_line_145 = _method;
		Type[] annotated_method_1_expr8_line_145 = f__method_3625_line_145.getGenericParameterTypes();
		int PROBE_END_LINE_145 = 145;
		Type[] types = annotated_method_1_expr8_line_145;
        int PROBE_START_LINE_146 = 148;
		int p_index_3635_line_146 = index;
		java.lang.reflect.Type[] v_types_3636_line_146 = types;
		int q_length_106_line_146 = v_types_3636_line_146.length;
		boolean annotated_method_1_expr9_line_146 = p_index_3635_line_146 >= q_length_106_line_146;
		int PROBE_END_LINE_146 = 148;
		if (annotated_method_1_expr9_line_146) {
            return null;
        }
        int PROBE_START_LINE_149 = 149;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext f__type_context_3496_line_149 = _typeContext;
		java.lang.reflect.Type[] v_types_3636_line_149 = types;
		int p_index_3635_line_149 = index;
		java.lang.reflect.Type annotated_method_1_expr11_line_149 = v_types_3636_line_149[p_index_3635_line_149];
		com.fasterxml.jackson.databind.JavaType annotated_method_1_expr10_line_149 = f__type_context_3496_line_149
				.resolveType(annotated_method_1_expr11_line_149);
		int PROBE_END_LINE_149 = 149;
		return annotated_method_1_expr10_line_149;
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
    public Method getMember() { int PROBE_START_LINE_166 = 166;
		java.lang.reflect.Method f__method_3625_line_166 = _method;
		int PROBE_END_LINE_166 = 166;
	return f__method_3625_line_166; }

    @Override
    public void setValue(Object pojo, Object value) throws IllegalArgumentException
    {
        try {
            _method.invoke(pojo, value);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new IllegalArgumentException("Failed to setValue() with method "
                    +getFullName()+": "+e.getMessage(), e);
        }
    }

    @Override
    public Object getValue(Object pojo) throws IllegalArgumentException
    {
        try {
            return _method.invoke(pojo, (Object[]) null);
        } catch (IllegalAccessException | InvocationTargetException e) {
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
    public String getFullName() {
        return String.format("%s(%d params)", super.getFullName(), getParameterCount());
    }

    public Class<?>[] getRawParameterTypes()
    {
        int PROBE_START_LINE_203 = 205;
		Class<?>[] f__param_classes_3641_line_203 = _paramClasses;
		boolean annotated_method_1_expr12_line_203 = f__param_classes_3641_line_203 == null;
		int PROBE_END_LINE_203 = 205;
		if (annotated_method_1_expr12_line_203) {
            int PROBE_START_LINE_204 = 204;
			java.lang.reflect.Method f__method_3625_line_204 = _method;
			Class<?>[] annotated_method_1_expr14_line_204 = f__method_3625_line_204.getParameterTypes();
			int PROBE_END_LINE_204 = 204;
			_paramClasses = annotated_method_1_expr14_line_204;
        }
        int PROBE_START_LINE_206 = 206;
		Class<?>[] f__param_classes_3641_line_206 = _paramClasses;
		int PROBE_END_LINE_206 = 206;
		return f__param_classes_3641_line_206;
    }

    @Deprecated // since 2.7
    public Type[] getGenericParameterTypes() {
        return _method.getGenericParameterTypes();
    }

    public Class<?> getRawReturnType() {
        int PROBE_START_LINE_215 = 215;
		java.lang.reflect.Method f__method_3625_line_215 = _method;
		Class<?> annotated_method_1_expr15_line_215 = f__method_3625_line_215.getReturnType();
		int PROBE_END_LINE_215 = 215;
		return annotated_method_1_expr15_line_215;
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
		Class<?> annotated_method_1_expr16_line_226 = getRawReturnType();
		int PROBE_END_LINE_226 = 226;
		Class<?> rt = annotated_method_1_expr16_line_226;
        int PROBE_START_LINE_227 = 227;
		Class<?> v_rt_3642_line_227 = rt;
		Class<Void> q_type_107_line_227 = Void.TYPE;
		boolean annotated_method_1_expr19_line_227 = v_rt_3642_line_227 != q_type_107_line_227;
		boolean annotated_method_1_expr20_line_227 = true;
		if (annotated_method_1_expr19_line_227) {
			Class<?> v_rt_3642_line_227_v1 = rt;
			annotated_method_1_expr20_line_227 = v_rt_3642_line_227_v1 != Void.class;
		}
		boolean annotated_method_1_expr18_line_227 = annotated_method_1_expr19_line_227
				&& annotated_method_1_expr20_line_227;
		boolean annotated_method_1_expr17_line_227 = (annotated_method_1_expr18_line_227);
		int PROBE_END_LINE_227 = 227;
		return annotated_method_1_expr17_line_227;
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
        return ClassUtil.hasClass(o, getClass())
                && (((AnnotatedMethod) o)._method == _method);
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
