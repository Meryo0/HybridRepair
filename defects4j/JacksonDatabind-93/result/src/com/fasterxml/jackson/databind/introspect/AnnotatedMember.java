package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.util.Collections;

import com.fasterxml.jackson.databind.util.ClassUtil;

/**
 * Intermediate base class for annotated entities that are members of
 * a class; fields, methods and constructors. This is a superset
 * of things that can represent logical properties as it contains
 * constructors in addition to fields and methods.
 */
public abstract class AnnotatedMember
    extends Annotated
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L; // since 2.5

    // 19-Dec-2014, tatu: Similarly, assumed NOT to be needed in cases where
    //    owning object (ObjectMapper or relatives) is being JDK-serialized
    /**
     * Context object needed for resolving generic type associated with this
     * member (method parameter or return value, or field type).
     *
     * @since 2.7
     */
    protected final transient TypeResolutionContext _typeContext;

    // Transient since information not needed after construction, so
    // no need to persist
    protected final transient AnnotationMap _annotations;

    protected AnnotatedMember(TypeResolutionContext ctxt, AnnotationMap annotations) {
        super();
        int PROBE_START_LINE_37 = 37;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_ctxt_2872_line_37 = ctxt;
		int PROBE_END_LINE_37 = 37;
		_typeContext = p_ctxt_2872_line_37;
        int PROBE_START_LINE_38 = 38;
		com.fasterxml.jackson.databind.introspect.AnnotationMap p_annotations_2873_line_38 = annotations;
		int PROBE_END_LINE_38 = 38;
		_annotations = p_annotations_2873_line_38;
    }

    /**
     * Copy-constructor.
     *
     * @since 2.5
     */
    protected AnnotatedMember(AnnotatedMember base) {
        int PROBE_START_LINE_47 = 47;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_base_2875_line_47 = base;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext q__type_context_78_line_47 = p_base_2875_line_47._typeContext;
		int PROBE_END_LINE_47 = 47;
		_typeContext = q__type_context_78_line_47;
        int PROBE_START_LINE_48 = 48;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_base_2875_line_48 = base;
		com.fasterxml.jackson.databind.introspect.AnnotationMap q__annotations_79_line_48 = p_base_2875_line_48._annotations;
		int PROBE_END_LINE_48 = 48;
		_annotations = q__annotations_79_line_48;
    }
    
    /**
     * Actual physical class in which this memmber was declared.
     */
    public abstract Class<?> getDeclaringClass();

    public abstract Member getMember();

    /**
     * Accessor for {@link TypeResolutionContext} that is used for resolving
     * full generic type of this member.
     * 
     * @since 2.7
     */
    public TypeResolutionContext getTypeContext() {
        int PROBE_START_LINE_65 = 65;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext f__type_context_2852_line_65 = _typeContext;
		int PROBE_END_LINE_65 = 65;
		return f__type_context_2852_line_65;
    }

    @Override
    public final <A extends Annotation> A getAnnotation(Class<A> acls) {
        int PROBE_START_LINE_70 = 72;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2874_line_70 = _annotations;
		boolean annotated_member_1_expr6_line_70 = f__annotations_2874_line_70 == null;
		int PROBE_END_LINE_70 = 72;
		if (annotated_member_1_expr6_line_70) {
            return null;
        }
        int PROBE_START_LINE_73 = 73;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2874_line_73 = _annotations;
		Class<A> p_acls_2876_line_73 = acls;
		A annotated_member_1_expr7_line_73 = f__annotations_2874_line_73.get(p_acls_2876_line_73);
		int PROBE_END_LINE_73 = 73;
		return annotated_member_1_expr7_line_73;
    }

    @Override
    public final boolean hasAnnotation(Class<?> acls) {
        int PROBE_START_LINE_78 = 80;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2874_line_78 = _annotations;
		boolean annotated_member_1_expr8_line_78 = f__annotations_2874_line_78 == null;
		int PROBE_END_LINE_78 = 80;
		if (annotated_member_1_expr8_line_78) {
            return false;
        }
        int PROBE_START_LINE_81 = 81;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2874_line_81 = _annotations;
		Class<?> p_acls_2877_line_81 = acls;
		boolean annotated_member_1_expr9_line_81 = f__annotations_2874_line_81.has(p_acls_2877_line_81);
		int PROBE_END_LINE_81 = 81;
		return annotated_member_1_expr9_line_81;
    }

    @Override
    public boolean hasOneOf(Class<? extends Annotation>[] annoClasses) {
        int PROBE_START_LINE_86 = 88;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2874_line_86 = _annotations;
		boolean annotated_member_1_expr10_line_86 = f__annotations_2874_line_86 == null;
		int PROBE_END_LINE_86 = 88;
		if (annotated_member_1_expr10_line_86) {
            return false;
        }
        int PROBE_START_LINE_89 = 89;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2874_line_89 = _annotations;
		Class<? extends java.lang.annotation.Annotation>[] p_anno_classes_2878_line_89 = annoClasses;
		boolean annotated_member_1_expr11_line_89 = f__annotations_2874_line_89.hasOneOf(p_anno_classes_2878_line_89);
		int PROBE_END_LINE_89 = 89;
		return annotated_member_1_expr11_line_89;
    }
    
    @Override
    public Iterable<Annotation> annotations() {
        if (_annotations == null) {
            return Collections.emptyList();
        }
        return _annotations.annotations();
    }
    
    @Override
    protected AnnotationMap getAllAnnotations() {
        int PROBE_START_LINE_102 = 102;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2874_line_102 = _annotations;
		int PROBE_END_LINE_102 = 102;
		return f__annotations_2874_line_102;
    }

    /**
     * Method called to override an annotation, usually due to a mix-in
     * annotation masking or overriding an annotation 'real' constructor
     * has.
     */
    public final boolean addOrOverride(Annotation a) {
        return _annotations.add(a);
    }

    /**
     * Method called to augment annotations, by adding specified
     * annotation if and only if it is not yet present in the
     * annotation map we have.
     */
    public final boolean addIfNotPresent(Annotation a) {
        return _annotations.addIfNotPresent(a);
    }

    /**
     * Method that can be called to modify access rights, by calling
     * {@link java.lang.reflect.AccessibleObject#setAccessible} on
     * the underlying annotated element.
     *<p>
     * Note that caller should verify that
     * {@link com.fasterxml.jackson.databind.MapperFeature#CAN_OVERRIDE_ACCESS_MODIFIERS}
     * is enabled before calling this method; as well as pass
     * <code>force</code> flag appropriately.
     * 
     * @since 2.7
     */
    public final void fixAccess(boolean force) {
        Member m = getMember();
        if (m != null) { // may be null for virtual members
            ClassUtil.checkAndFixAccess(m, force);
        }
    }

    /**
     * @deprecated Since 2.7 use {@link #fixAccess(boolean)} instead
     */
    @Deprecated
    public final void fixAccess() {
//        fixAccess(false);
        fixAccess(true);
    }

    /**
     * Optional method that can be used to assign value of
     * this member on given object, if this is a supported
     * operation for member type.
     *<p>
     * This is implemented for fields and single-argument
     * member methods; but not for constructor parameters or
     * other types of methods (like static methods)
     */
    public abstract void setValue(Object pojo, Object value)
        throws UnsupportedOperationException, IllegalArgumentException;

    /**
     * Optional method that can be used to access the value of
     * this member on given object, if this is a supported
     * operation for member type.
     *<p>
     * This is implemented for fields and no-argument
     * member methods; but not for constructor parameters or
     * other types of methods (like static methods)
     */
    public abstract Object getValue(Object pojo)
        throws UnsupportedOperationException, IllegalArgumentException;
}
