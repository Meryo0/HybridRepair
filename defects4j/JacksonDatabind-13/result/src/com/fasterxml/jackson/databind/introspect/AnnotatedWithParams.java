package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;


import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;

/**
 * Intermediate base class that encapsulates features that
 * constructors and methods share.
 */
public abstract class AnnotatedWithParams
    extends AnnotatedMember
{
    private static final long serialVersionUID = 1L;

    /**
     * Annotations associated with parameters of the annotated
     * entity (method or constructor parameters)
     */
    protected final AnnotationMap[] _paramAnnotations;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    protected AnnotatedWithParams(AnnotatedClass ctxt, AnnotationMap annotations, AnnotationMap[] paramAnnotations)
    {
        super(ctxt, annotations);
        int PROBE_START_LINE_36 = 36;
		com.fasterxml.jackson.databind.introspect.AnnotationMap[] p_param_annotations_2711_line_36 = paramAnnotations;
		int PROBE_END_LINE_36 = 36;
		_paramAnnotations = p_param_annotations_2711_line_36;
    }

    /**
     * Method called to override a method parameter annotation,
     * usually due to a mix-in
     * annotation masking or overriding an annotation 'real' method
     * has.
     */
    public final void addOrOverrideParam(int paramIndex, Annotation a)
    {
        AnnotationMap old = _paramAnnotations[paramIndex];
        if (old == null) {
            old = new AnnotationMap();
            _paramAnnotations[paramIndex] = old;
        }
        old.add(a);
    }

    /**
     * Method called by parameter object when an augmented instance is created;
     * needs to replace parameter with new instance
     */
    protected AnnotatedParameter replaceParameterAnnotations(int index, AnnotationMap ann)
    {
        _paramAnnotations[index] = ann;
        return getParameter(index);
    }    

    /*
    /**********************************************************
    /* Helper methods for subclasses
    /**********************************************************
     */

    protected JavaType getType(TypeBindings bindings, TypeVariable<?>[] typeParams)
    {
        // [JACKSON-468] Need to consider local type binding declarations too...
        if (typeParams != null && typeParams.length > 0) {
            bindings = bindings.childInstance();
            for (TypeVariable<?> var : typeParams) {
                String name = var.getName();
                // to prevent infinite loops, need to first add placeholder ("<T extends Enum<T>>" etc)
                bindings._addPlaceholder(name);
                // About only useful piece of information is the lower bound (which is at least Object.class)
                Type lowerBound = var.getBounds()[0];
                JavaType type = (lowerBound == null) ? TypeFactory.unknownType()
                        : bindings.resolveType(lowerBound);
                bindings.addBinding(var.getName(), type);
            }
        }
        return bindings.resolveType(getGenericType());
    }

    /*
    /**********************************************************
    /* Partial Annotated impl
    /**********************************************************
     */

    @Override
    public final <A extends Annotation> A getAnnotation(Class<A> acls) {
        int PROBE_START_LINE_98 = 98;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2653_line_98 = _annotations;
		Class<A> p_acls_2719_line_98 = acls;
		A annotated_with_params_1_expr3_line_98 = f__annotations_2653_line_98.get(p_acls_2719_line_98);
		int PROBE_END_LINE_98 = 98;
		return annotated_with_params_1_expr3_line_98;
    }

    /*
    /**********************************************************
    /* Extended API
    /**********************************************************
     */

    public final AnnotationMap getParameterAnnotations(int index)
    {
        int PROBE_START_LINE_109 = 113;
		com.fasterxml.jackson.databind.introspect.AnnotationMap[] f__param_annotations_2712_line_109 = _paramAnnotations;
		boolean annotated_with_params_1_expr4_line_109 = f__param_annotations_2712_line_109 != null;
		int PROBE_END_LINE_109 = 113;
		if (annotated_with_params_1_expr4_line_109) {
            int PROBE_START_LINE_110 = 112;
			int p_index_2720_line_110 = index;
			boolean annotated_with_params_1_expr6_line_110 = p_index_2720_line_110 >= 0;
			boolean annotated_with_params_1_expr7_line_110 = true;
			if (annotated_with_params_1_expr6_line_110) {
				int p_index_2720_line_110_v1 = index;
				com.fasterxml.jackson.databind.introspect.AnnotationMap[] f__param_annotations_2712_line_110 = _paramAnnotations;
				int q_length_95_line_110 = f__param_annotations_2712_line_110.length;
				annotated_with_params_1_expr7_line_110 = p_index_2720_line_110_v1 < q_length_95_line_110;
			}
			boolean annotated_with_params_1_expr5_line_110 = annotated_with_params_1_expr6_line_110
					&& annotated_with_params_1_expr7_line_110;
			int PROBE_END_LINE_110 = 112;
			if (annotated_with_params_1_expr5_line_110) {
                int PROBE_START_LINE_111 = 111;
				com.fasterxml.jackson.databind.introspect.AnnotationMap[] f__param_annotations_2712_line_111 = _paramAnnotations;
				int p_index_2720_line_111 = index;
				com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_with_params_1_expr8_line_111 = f__param_annotations_2712_line_111[p_index_2720_line_111];
				int PROBE_END_LINE_111 = 111;
				return annotated_with_params_1_expr8_line_111;
            }
        }
        return null;
    }

    public final AnnotatedParameter getParameter(int index) {
        int PROBE_START_LINE_118 = 119;
		int p_index_2721_line_118 = index;
		java.lang.reflect.Type annotated_with_params_1_expr11_line_118 = getGenericParameterType(p_index_2721_line_118);
		int PROBE_END_LINE_118 = 119;
		return new AnnotatedParameter(this, annotated_with_params_1_expr11_line_118,
                getParameterAnnotations(index), index);
    }

    public abstract int getParameterCount();

    public abstract Class<?> getRawParameterType(int index);

    public abstract Type getGenericParameterType(int index);

    /**
     * Method called to fully resolve type of one of parameters, given
     * specified type variable bindings.
     */
    public final JavaType resolveParameterType(int index, TypeBindings bindings) {
        return bindings.resolveType(getGenericParameterType(index));
    }
    
    public final int getAnnotationCount() { return _annotations.size(); }

    /**
     * Method that can be used to (try to) call this object without arguments.
     * This may succeed or fail, depending on expected number
     * of arguments: caller needs to take care to pass correct number.
     * Exceptions are thrown directly from actual low-level call.
     *<p>
     * Note: only works for constructors and static methods.
     */
    public abstract Object call() throws Exception;

    /**
     * Method that can be used to (try to) call this object with specified arguments.
     * This may succeed or fail, depending on expected number
     * of arguments: caller needs to take care to pass correct number.
     * Exceptions are thrown directly from actual low-level call.
     *<p>
     * Note: only works for constructors and static methods.
     */
    public abstract Object call(Object[] args) throws Exception;

    /**
     * Method that can be used to (try to) call this object with single arguments.
     * This may succeed or fail, depending on expected number
     * of arguments: caller needs to take care to pass correct number.
     * Exceptions are thrown directly from actual low-level call.
     *<p>
     * Note: only works for constructors and static methods.
     */
    public abstract Object call1(Object arg) throws Exception;
}
