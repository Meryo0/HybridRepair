package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

import com.fasterxml.jackson.databind.JavaType;

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

    protected AnnotatedWithParams(TypeResolutionContext ctxt, AnnotationMap annotations, AnnotationMap[] paramAnnotations)
    {
        super(ctxt, annotations);
        int PROBE_START_LINE_32 = 32;
		com.fasterxml.jackson.databind.introspect.AnnotationMap[] p_param_annotations_2929_line_32 = paramAnnotations;
		int PROBE_END_LINE_32 = 32;
		_paramAnnotations = p_param_annotations_2929_line_32;
    }

    /**
     * @since 2.8.1
     */
    protected AnnotatedWithParams(AnnotatedWithParams base, AnnotationMap[] paramAnnotations) {
        super(base);
        int PROBE_START_LINE_40 = 40;
		com.fasterxml.jackson.databind.introspect.AnnotationMap[] p_param_annotations_2932_line_40 = paramAnnotations;
		int PROBE_END_LINE_40 = 40;
		_paramAnnotations = p_param_annotations_2932_line_40;
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
    /* Extended API
    /**********************************************************
     */

    public final AnnotationMap getParameterAnnotations(int index)
    {
        int PROBE_START_LINE_77 = 81;
		com.fasterxml.jackson.databind.introspect.AnnotationMap[] f__param_annotations_2930_line_77 = _paramAnnotations;
		boolean annotated_with_params_1_expr5_line_77 = f__param_annotations_2930_line_77 != null;
		int PROBE_END_LINE_77 = 81;
		if (annotated_with_params_1_expr5_line_77) {
            int PROBE_START_LINE_78 = 80;
			int p_index_2937_line_78 = index;
			boolean annotated_with_params_1_expr7_line_78 = p_index_2937_line_78 >= 0;
			boolean annotated_with_params_1_expr8_line_78 = true;
			if (annotated_with_params_1_expr7_line_78) {
				int p_index_2937_line_78_v1 = index;
				com.fasterxml.jackson.databind.introspect.AnnotationMap[] f__param_annotations_2930_line_78 = _paramAnnotations;
				int q_length_80_line_78 = f__param_annotations_2930_line_78.length;
				annotated_with_params_1_expr8_line_78 = p_index_2937_line_78_v1 < q_length_80_line_78;
			}
			boolean annotated_with_params_1_expr6_line_78 = annotated_with_params_1_expr7_line_78
					&& annotated_with_params_1_expr8_line_78;
			int PROBE_END_LINE_78 = 80;
			if (annotated_with_params_1_expr6_line_78) {
                int PROBE_START_LINE_79 = 79;
				com.fasterxml.jackson.databind.introspect.AnnotationMap[] f__param_annotations_2930_line_79 = _paramAnnotations;
				int p_index_2937_line_79 = index;
				com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_with_params_1_expr9_line_79 = f__param_annotations_2930_line_79[p_index_2937_line_79];
				int PROBE_END_LINE_79 = 79;
				return annotated_with_params_1_expr9_line_79;
            }
        }
        return null;
    }

    public final AnnotatedParameter getParameter(int index) {
        int PROBE_START_LINE_86 = 87;
		int p_index_2938_line_86 = index;
		com.fasterxml.jackson.databind.JavaType annotated_with_params_1_expr12_line_86 = getParameterType(
				p_index_2938_line_86);
		int PROBE_END_LINE_86 = 87;
		return new AnnotatedParameter(this, annotated_with_params_1_expr12_line_86,
                getParameterAnnotations(index), index);
    }

    public abstract int getParameterCount();

    public abstract Class<?> getRawParameterType(int index);

    /**
     * @since 2.7
     */
    public abstract JavaType getParameterType(int index);

    /**
     * @deprecated Since 2.7, remove in 2.9
     */
    @Deprecated
    public abstract Type getGenericParameterType(int index);

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
