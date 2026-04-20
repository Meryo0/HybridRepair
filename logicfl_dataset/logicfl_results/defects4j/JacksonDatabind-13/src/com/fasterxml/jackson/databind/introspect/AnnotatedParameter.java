package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;

/**
 * Object that represents method parameters, mostly so that associated
 * annotations can be processed conveniently. Note that many of accessors
 * can not return meaningful values since parameters do not have stand-alone
 * JDK objects associated; so access should mostly be limited to checking
 * annotation values which are properly aggregated and included.
 */
public final class AnnotatedParameter
    extends AnnotatedMember
{
    private static final long serialVersionUID = 1L;

    /**
     * Member (method, constructor) that this parameter belongs to
     */
    protected final AnnotatedWithParams _owner;
    
    /**
     * JDK type of the parameter, possibly contains generic type information
     */
    protected final Type _type;
    
    /**
     * Index of the parameter within argument list
     */
    protected final int _index;
    
    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    public AnnotatedParameter(AnnotatedWithParams owner, Type type,  AnnotationMap annotations,
            int index)
    {
        super((owner == null) ? null : owner.getContextClass(), annotations);
        int PROBE_START_LINE_48 = 48;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_owner_2696_line_48 = owner;
		int PROBE_END_LINE_48 = 48;
		_owner = p_owner_2696_line_48;
        int PROBE_START_LINE_49 = 49;
		java.lang.reflect.Type p_type_2697_line_49 = type;
		int PROBE_END_LINE_49 = 49;
		_type = p_type_2697_line_49;
        int PROBE_START_LINE_50 = 50;
		int p_index_2699_line_50 = index;
		int PROBE_END_LINE_50 = 50;
		_index = p_index_2699_line_50;
    }

    @Override
    public AnnotatedParameter withAnnotations(AnnotationMap ann) {
        if (ann == _annotations) {
            return this;
        }
        return _owner.replaceParameterAnnotations(_index, ann);
    }

    /*
    /**********************************************************
    /* Annotated impl
    /**********************************************************
     */

    /**
     * Since there is no matching JDK element, this method will
     * always return null
     */
    @Override
    public AnnotatedElement getAnnotated() { return null; }

    /**
     * Returns modifiers of the constructor, as parameters do not
     * have independent modifiers.
     */
    @Override
    public int getModifiers() { return _owner.getModifiers(); }

    /**
     * Parameters have no names in bytecode (unlike in source code),
     * will always return empty String ("").
     */
    @Override
    public String getName() { return ""; }

    /**
     * Accessor for annotations; all annotations associated with parameters
     * are properly passed and accessible.
     */
    @Override
    public <A extends Annotation> A getAnnotation(Class<A> acls)
    {
        int PROBE_START_LINE_95 = 95;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2653_line_95 = _annotations;
		boolean annotated_parameter_1_expr12_line_95 = f__annotations_2653_line_95 == null;
		boolean annotated_parameter_1_expr10_line_95 = (annotated_parameter_1_expr12_line_95);
		A annotated_parameter_1_expr11_line_95 = null;
		if (!annotated_parameter_1_expr10_line_95) {
			com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2653_line_95_v1 = _annotations;
			Class<A> p_acls_2704_line_95 = acls;
			annotated_parameter_1_expr11_line_95 = f__annotations_2653_line_95_v1.get(p_acls_2704_line_95);
		}
		A annotated_parameter_1_expr9_line_95 = annotated_parameter_1_expr10_line_95
				? null
				: annotated_parameter_1_expr11_line_95;
		int PROBE_END_LINE_95 = 95;
		return annotated_parameter_1_expr9_line_95;
    }

    @Override
    public Type getGenericType() {
        return _type;
    }

    @Override
    public Class<?> getRawType()
    {
        if (_type instanceof Class<?>) {
            return (Class<?>) _type;
        }
        // 14-Mar-2011, tatu: Not optimal, but has to do for now...
        JavaType t = TypeFactory.defaultInstance().constructType(_type);
        return t.getRawClass();
    }

    /*
    /**********************************************************
    /* AnnotatedMember extras
    /**********************************************************
     */

    @Override
    public Class<?> getDeclaringClass() {
        return _owner.getDeclaringClass();
    }

    @Override
    public Member getMember() {
        /* This is bit tricky: since there is no JDK equivalent; can either
         * return null or owner... let's do latter, for now.
         */
        return _owner.getMember();
    }

    @Override
    public void setValue(Object pojo, Object value) throws UnsupportedOperationException
    {
        throw new UnsupportedOperationException("Cannot call setValue() on constructor parameter of "
                +getDeclaringClass().getName());
    }

    @Override
    public Object getValue(Object pojo) throws UnsupportedOperationException
    {
        throw new UnsupportedOperationException("Cannot call getValue() on constructor parameter of "
                +getDeclaringClass().getName());
    }

    /*
    /**********************************************************
    /* Extended API
    /**********************************************************
     */

    public Type getParameterType() { return _type; }

    /**
     * Accessor for 'owner' of this parameter; method or constructor that
     * has this parameter as member of its argument list.
     * 
     * @return Owner (member or creator) object of this parameter
     */
    public AnnotatedWithParams getOwner() { return _owner; }
    
    /**
     * Accessor for index of this parameter within argument list
     * 
     * @return Index of this parameter within argument list
     */
    public int getIndex() { return _index; }

    /*
    /********************************************************
    /* Other
    /********************************************************
     */
    
    @Override
    public int hashCode() {
        return _owner.hashCode() + _index;
    }
    
    @Override
    public boolean equals(Object o) {
        if (o == this) return true;
        if (o == null || o.getClass() != getClass()) return false;
        AnnotatedParameter other = (AnnotatedParameter) o;
        return other._owner.equals(_owner) && (other._index == _index);
    }
    
    @Override
    public String toString() {
        return "[parameter #"+getIndex()+", annotations: "+_annotations+"]";
    }
}

