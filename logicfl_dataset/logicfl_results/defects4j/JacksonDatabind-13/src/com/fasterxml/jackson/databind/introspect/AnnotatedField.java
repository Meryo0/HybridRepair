package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

import com.fasterxml.jackson.databind.util.ClassUtil;

/**
 * Object that represents non-static (and usually non-transient/volatile)
 * fields of a class.
 */
public final class AnnotatedField
    extends AnnotatedMember
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * Actual {@link Field} used for access.
     *<p>
     * Transient since it can not be persisted directly using
     * JDK serialization
     */
    protected final transient Field _field;

    /**
     * Temporary field required for JDK serialization support
     */
    protected Serialization _serialization;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    public AnnotatedField(AnnotatedClass contextClass, Field field, AnnotationMap annMap)
    {
        super(contextClass, annMap);
        int PROBE_START_LINE_42 = 42;
		java.lang.reflect.Field p_field_2646_line_42 = field;
		int PROBE_END_LINE_42 = 42;
		_field = p_field_2646_line_42;
    }
    
    @Override
    public AnnotatedField withAnnotations(AnnotationMap ann) {
        int PROBE_START_LINE_47 = 47;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__context_2650_line_47 = _context;
		java.lang.reflect.Field f__field_2648_line_47 = _field;
		com.fasterxml.jackson.databind.introspect.AnnotationMap p_ann_2649_line_47 = ann;
		int PROBE_END_LINE_47 = 47;
		return new AnnotatedField(f__context_2650_line_47, f__field_2648_line_47, p_ann_2649_line_47);
    }

    /**
     * Method used for JDK serialization support
     */
    protected AnnotatedField(Serialization ser)
    {
        super(null, null);
        _field = null;
        _serialization = ser;
    }
    
    /*
    /**********************************************************
    /* Annotated impl
    /**********************************************************
     */

    @Override
    public Field getAnnotated() { int PROBE_START_LINE_67 = 67;
		java.lang.reflect.Field f__field_2648_line_67 = _field;
		int PROBE_END_LINE_67 = 67;
	return f__field_2648_line_67; }

    @Override
    public int getModifiers() { return _field.getModifiers(); }

    @Override
    public String getName() { int PROBE_START_LINE_73 = 73;
		java.lang.reflect.Field f__field_2648_line_73 = _field;
		String annotated_field_1_expr4_line_73 = f__field_2648_line_73.getName();
		int PROBE_END_LINE_73 = 73;
	return annotated_field_1_expr4_line_73; }

    @Override
    public <A extends Annotation> A getAnnotation(Class<A> acls) {
        int PROBE_START_LINE_77 = 77;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2653_line_77 = _annotations;
		boolean annotated_field_1_expr8_line_77 = f__annotations_2653_line_77 == null;
		boolean annotated_field_1_expr6_line_77 = (annotated_field_1_expr8_line_77);
		A annotated_field_1_expr7_line_77 = null;
		if (!annotated_field_1_expr6_line_77) {
			com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2653_line_77_v1 = _annotations;
			Class<A> p_acls_2652_line_77 = acls;
			annotated_field_1_expr7_line_77 = f__annotations_2653_line_77_v1.get(p_acls_2652_line_77);
		}
		A annotated_field_1_expr5_line_77 = annotated_field_1_expr6_line_77 ? null : annotated_field_1_expr7_line_77;
		int PROBE_END_LINE_77 = 77;
		return annotated_field_1_expr5_line_77;
    }

    @Override
    public Type getGenericType() {
        int PROBE_START_LINE_82 = 82;
		java.lang.reflect.Field f__field_2648_line_82 = _field;
		java.lang.reflect.Type annotated_field_1_expr9_line_82 = f__field_2648_line_82.getGenericType();
		int PROBE_END_LINE_82 = 82;
		return annotated_field_1_expr9_line_82;
    }

    @Override
    public Class<?> getRawType() {
        int PROBE_START_LINE_87 = 87;
		java.lang.reflect.Field f__field_2648_line_87 = _field;
		Class<?> annotated_field_1_expr10_line_87 = f__field_2648_line_87.getType();
		int PROBE_END_LINE_87 = 87;
		return annotated_field_1_expr10_line_87;
    }
    
    /*
    /**********************************************************
    /* AnnotatedMember impl
    /**********************************************************
     */

    @Override
    public Class<?> getDeclaringClass() { return _field.getDeclaringClass(); }

    @Override
    public Member getMember() { int PROBE_START_LINE_100 = 100;
		java.lang.reflect.Field f__field_2648_line_100 = _field;
		int PROBE_END_LINE_100 = 100;
	return f__field_2648_line_100; }

    @Override
    public void setValue(Object pojo, Object value) throws IllegalArgumentException
    {
        try {
            _field.set(pojo, value);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Failed to setValue() for field "
                    +getFullName()+": "+e.getMessage(), e);
        }
    }

    @Override
    public Object getValue(Object pojo) throws IllegalArgumentException
    {
        try {
            return _field.get(pojo);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Failed to getValue() for field "
                    +getFullName()+": "+e.getMessage(), e);
        }
    }
    
    /*
    /**********************************************************
    /* Extended API, generic
    /**********************************************************
     */

    public String getFullName() {
        return getDeclaringClass().getName() + "#" + getName();
    }

    public int getAnnotationCount() { return _annotations.size(); }

    @Override
    public int hashCode() {
        return _field.getName().hashCode();
    }
    
    @Override
    public boolean equals(Object o) {
        if (o == this) return true;
        if (o == null || o.getClass() != getClass()) return false;
        return ((AnnotatedField) o)._field == _field;
    }

    @Override
    public String toString() {
        return "[field "+getFullName()+"]";
    }

    /*
    /**********************************************************
    /* JDK serialization handling
    /**********************************************************
     */

    Object writeReplace() {
        return new AnnotatedField(new Serialization(_field));
    }

    Object readResolve() {
        Class<?> clazz = _serialization.clazz;
        try {
            Field f = clazz.getDeclaredField(_serialization.name);
            // 06-Oct-2012, tatu: Has "lost" its security override, may need to force back
            if (!f.isAccessible()) {
                ClassUtil.checkAndFixAccess(f);
            }
            return new AnnotatedField(null, f, null);
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

        public Serialization(Field f) {
            clazz = f.getDeclaringClass();
            name = f.getName();
            
        }
    }
}

