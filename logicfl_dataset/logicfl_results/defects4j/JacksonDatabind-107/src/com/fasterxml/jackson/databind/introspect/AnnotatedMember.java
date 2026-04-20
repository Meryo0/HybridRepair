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
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_ctxt_3608_line_37 = ctxt;
		int PROBE_END_LINE_37 = 37;
		_typeContext = p_ctxt_3608_line_37;
        int PROBE_START_LINE_38 = 38;
		com.fasterxml.jackson.databind.introspect.AnnotationMap p_annotations_3609_line_38 = annotations;
		int PROBE_END_LINE_38 = 38;
		_annotations = p_annotations_3609_line_38;
    }

    /**
     * Copy-constructor.
     *
     * @since 2.5
     */
    protected AnnotatedMember(AnnotatedMember base) {
        int PROBE_START_LINE_47 = 47;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_base_3611_line_47 = base;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext q__type_context_104_line_47 = p_base_3611_line_47._typeContext;
		int PROBE_END_LINE_47 = 47;
		_typeContext = q__type_context_104_line_47;
        int PROBE_START_LINE_48 = 48;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_base_3611_line_48 = base;
		com.fasterxml.jackson.databind.introspect.AnnotationMap q__annotations_105_line_48 = p_base_3611_line_48._annotations;
		int PROBE_END_LINE_48 = 48;
		_annotations = q__annotations_105_line_48;
    }

    /**
     * Fluent factory method that will construct a new instance that uses specified
     * instance annotations instead of currently configured ones.
     *
     * @since 2.9 (promoted from `Annotated`)
     */
    public abstract Annotated withAnnotations(AnnotationMap fallback);

    /**
     * Actual physical class in which this memmber was declared.
     */
    public abstract Class<?> getDeclaringClass();

    public abstract Member getMember();

    public String getFullName() {
        return getDeclaringClass().getName() + "#" + getName();
    }

    /**
     * Accessor for {@link TypeResolutionContext} that is used for resolving
     * full generic type of this member.
     * 
     * @since 2.7
     *
     * @deprecated Since 2.9
     */
    @Deprecated
    public TypeResolutionContext getTypeContext() {
        return _typeContext;
    }

    @Override
    public final <A extends Annotation> A getAnnotation(Class<A> acls) {
        int PROBE_START_LINE_85 = 87;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_3610_line_85 = _annotations;
		boolean annotated_member_1_expr6_line_85 = f__annotations_3610_line_85 == null;
		int PROBE_END_LINE_85 = 87;
		if (annotated_member_1_expr6_line_85) {
            return null;
        }
        int PROBE_START_LINE_88 = 88;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_3610_line_88 = _annotations;
		Class<A> p_acls_3613_line_88 = acls;
		A annotated_member_1_expr7_line_88 = f__annotations_3610_line_88.get(p_acls_3613_line_88);
		int PROBE_END_LINE_88 = 88;
		return annotated_member_1_expr7_line_88;
    }

    @Override
    public final boolean hasAnnotation(Class<?> acls) {
        if (_annotations == null) {
            return false;
        }
        return _annotations.has(acls);
    }

    @Override
    public boolean hasOneOf(Class<? extends Annotation>[] annoClasses) {
        int PROBE_START_LINE_101 = 103;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_3610_line_101 = _annotations;
		boolean annotated_member_1_expr8_line_101 = f__annotations_3610_line_101 == null;
		int PROBE_END_LINE_101 = 103;
		if (annotated_member_1_expr8_line_101) {
            return false;
        }
        int PROBE_START_LINE_104 = 104;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_3610_line_104 = _annotations;
		Class<? extends java.lang.annotation.Annotation>[] p_anno_classes_3615_line_104 = annoClasses;
		boolean annotated_member_1_expr9_line_104 = f__annotations_3610_line_104.hasOneOf(p_anno_classes_3615_line_104);
		int PROBE_END_LINE_104 = 104;
		return annotated_member_1_expr9_line_104;
    }

    @Override
    @Deprecated
    public Iterable<Annotation> annotations() {
        if (_annotations == null) {
            return Collections.emptyList();
        }
        return _annotations.annotations();
    }

    /**
     *<p>
     * NOTE: promoted in 2.9 from `Annotated` up
     */
    public AnnotationMap getAllAnnotations() { // alas, used by at least one module, hence public
        int PROBE_START_LINE_121 = 121;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_3610_line_121 = _annotations;
		int PROBE_END_LINE_121 = 121;
		return f__annotations_3610_line_121;
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
        int PROBE_START_LINE_137 = 137;
		Member annotated_member_1_expr10_line_137 = getMember();
		int PROBE_END_LINE_137 = 137;
		Member m = annotated_member_1_expr10_line_137;
        int PROBE_START_LINE_138 = 140;
		java.lang.reflect.Member v_m_3617_line_138 = m;
		boolean annotated_member_1_expr11_line_138 = v_m_3617_line_138 != null;
		int PROBE_END_LINE_138 = 140;
		if (annotated_member_1_expr11_line_138) { // may be null for virtual members
            int PROBE_START_LINE_139 = 139;
			java.lang.reflect.Member v_m_3617_line_139 = m;
			boolean p_force_3616_line_139 = force;
			int PROBE_END_LINE_139 = 139;
			ClassUtil.checkAndFixAccess(v_m_3617_line_139, p_force_3616_line_139);
        }
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
