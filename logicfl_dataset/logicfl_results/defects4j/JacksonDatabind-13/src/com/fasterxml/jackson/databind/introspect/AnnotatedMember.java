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
     * Class that was resolved to produce this member instance; either class that declared
     * the member, or one of its subtypes that inherited it.
     * 
     * @since 2.5
     */
    protected final transient AnnotatedClass _context;

    // Transient since information not needed after construction, so
    // no need to persist
    protected final transient AnnotationMap _annotations;

    /*
    @Deprecated // since 2.5
    protected AnnotatedMember(AnnotationMap annotations) {
        this(null, annotations);
    }
    */

    protected AnnotatedMember(AnnotatedClass ctxt, AnnotationMap annotations) {
        super();
        int PROBE_START_LINE_44 = 44;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ctxt_2659_line_44 = ctxt;
		int PROBE_END_LINE_44 = 44;
		_context = p_ctxt_2659_line_44;
        int PROBE_START_LINE_45 = 45;
		com.fasterxml.jackson.databind.introspect.AnnotationMap p_annotations_2660_line_45 = annotations;
		int PROBE_END_LINE_45 = 45;
		_annotations = p_annotations_2660_line_45;
    }

    /**
     * Copy-constructor.
     *
     * @since 2.5
     */
    protected AnnotatedMember(AnnotatedMember base) {
        _context = base._context;
        _annotations = base._annotations;
    }
    
    /**
     * Actual physical class in which this memmber was declared.
     * Note that this may be different from what {@link #getContextClass()} returns;
     * "owner" may be a sub-type of "declaring class".
     */
    public abstract Class<?> getDeclaringClass();

    public abstract Member getMember();

    /**
     * Accessor for {@link AnnotatedClass} that was the type that was resolved
     * and that contains this member: this is either the {@link java.lang.Class}
     * in which member was declared, or one of its super types. If distinction
     * between result type, and actual class in which declaration was found matters,
     * you can compare return value to that of {@link #getDeclaringClass()}.
     * The main use for this accessor is (usually) to access class annotations.
     *<p>
     * Also note that owner property is NOT (JDK-)serialized; this should usually not
     * matter, but means that while it is accessible during construction of various
     * (de)serializers, it may not be available on per-call basis, if (but only if)
     * <code>ObjectMapper</code> (etc) has been serialized/deserialized.
     * 
     * @since 2.5
     */
    public AnnotatedClass getContextClass() {
        int PROBE_START_LINE_83 = 83;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__context_2650_line_83 = _context;
		int PROBE_END_LINE_83 = 83;
		return f__context_2650_line_83;
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
        int PROBE_START_LINE_96 = 96;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__annotations_2653_line_96 = _annotations;
		int PROBE_END_LINE_96 = 96;
		return f__annotations_2653_line_96;
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
     */
    public final void fixAccess() {
        int PROBE_START_LINE_123 = 123;
		java.lang.reflect.Member annotated_member_1_expr5_line_123 = getMember();
		int PROBE_END_LINE_123 = 123;
		ClassUtil.checkAndFixAccess(annotated_member_1_expr5_line_123);
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
