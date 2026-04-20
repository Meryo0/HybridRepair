package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.*;
import java.util.*;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.List;

public final class AnnotatedClass
    extends Annotated
    implements TypeResolutionContext
{
    /*
    /**********************************************************
    /* Configuration
    /**********************************************************
     */

    /**
     * @since 2.7
     */
    final protected JavaType _type;

    /**
     * Class for which annotations apply, and that owns other
     * components (constructors, methods)
     */
    final protected Class<?> _class;

    /**
     * Type bindings to use for members of {@link #_class}.
     *
     * @since 2.7
     */
    final protected TypeBindings _bindings;

    /**
     * Ordered set of super classes and interfaces of the
     * class itself: included in order of precedence
     */
    final protected List<JavaType> _superTypes;

    /**
     * Filter used to determine which annotations to gather; used
     * to optimize things so that unnecessary annotations are
     * ignored.
     */
    final protected AnnotationIntrospector _annotationIntrospector;

    /**
     * @since 2.7
     */
    final protected TypeFactory _typeFactory;
    
    /**
     * Object that knows mapping of mix-in classes (ones that contain
     * annotations to add) with their target classes (ones that
     * get these additional annotations "mixed in").
     */
    final protected MixInResolver _mixInResolver;

    /**
     * Primary mix-in class; one to use for the annotated class
     * itself. Can be null.
     */
    final protected Class<?> _primaryMixIn;

    /*
    /**********************************************************
    /* Gathered information
    /**********************************************************
     */

    /**
     * Combined list of Jackson annotations that the class has,
     * including inheritable ones from super classes and interfaces
     */
    final protected Annotations _classAnnotations;

    /**
     * @since 2.9
     */
    protected Creators _creators;

    /**
     * Member methods of interest; for now ones with 0 or 1 arguments
     * (just optimization, since others won't be used now)
     */
    protected AnnotatedMethodMap _memberMethods;

    /**
     * Member fields of interest: ones that are either public,
     * or have at least one annotation.
     */
    protected List<AnnotatedField> _fields;

    /**
     * Lazily determined property to see if this is a non-static inner
     * class.
     *
     * @since 2.8.7
     */
    protected transient Boolean _nonStaticInnerClass;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    /**
     * Constructor will not do any initializations, to allow for
     * configuring instances differently depending on use cases
     */
    AnnotatedClass(JavaType type, Class<?> rawType, List<JavaType> superTypes,
            Class<?> primaryMixIn, Annotations classAnnotations, TypeBindings bindings, 
            AnnotationIntrospector aintr, MixInResolver mir, TypeFactory tf)
    {
        int PROBE_START_LINE_126 = 126;
		com.fasterxml.jackson.databind.JavaType p_type_1734_line_126 = type;
		int PROBE_END_LINE_126 = 126;
		_type = p_type_1734_line_126;
        int PROBE_START_LINE_127 = 127;
		Class<?> p_raw_type_1735_line_127 = rawType;
		int PROBE_END_LINE_127 = 127;
		_class = p_raw_type_1735_line_127;
        int PROBE_START_LINE_128 = 128;
		com.fasterxml.jackson.databind.util.Annotations p_class_annotations_1738_line_128 = classAnnotations;
		int PROBE_END_LINE_128 = 128;
		_classAnnotations = p_class_annotations_1738_line_128;
        int PROBE_START_LINE_129 = 129;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_1739_line_129 = bindings;
		int PROBE_END_LINE_129 = 129;
		_bindings = p_bindings_1739_line_129;
        int PROBE_START_LINE_130 = 130;
		List<com.fasterxml.jackson.databind.JavaType> p_super_types_1736_line_130 = superTypes;
		int PROBE_END_LINE_130 = 130;
		_superTypes = p_super_types_1736_line_130;
        int PROBE_START_LINE_131 = 131;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_aintr_1740_line_131 = aintr;
		int PROBE_END_LINE_131 = 131;
		_annotationIntrospector = p_aintr_1740_line_131;
        int PROBE_START_LINE_132 = 132;
		com.fasterxml.jackson.databind.type.TypeFactory p_tf_1742_line_132 = tf;
		int PROBE_END_LINE_132 = 132;
		_typeFactory = p_tf_1742_line_132;
        int PROBE_START_LINE_133 = 133;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_mir_1741_line_133 = mir;
		int PROBE_END_LINE_133 = 133;
		_mixInResolver = p_mir_1741_line_133;
        int PROBE_START_LINE_134 = 134;
		Class<?> p_primary_mix_in_1737_line_134 = primaryMixIn;
		int PROBE_END_LINE_134 = 134;
		_primaryMixIn = p_primary_mix_in_1737_line_134;
    }

    /**
     * @deprecated Since 2.9, use methods in {@link AnnotatedClassResolver} instead.
     */
    @Deprecated
    public static AnnotatedClass construct(JavaType type, MapperConfig<?> config) {
        return construct(type, config, (MixInResolver) config);
    }

    /**
     * @deprecated Since 2.9, use methods in {@link AnnotatedClassResolver} instead.
     */
    @Deprecated
    public static AnnotatedClass construct(JavaType type, MapperConfig<?> config,
            MixInResolver mir)
    {
        return AnnotatedClassResolver.resolve(config, type, mir);
    }

    /**
     * Method similar to {@link #construct}, but that will NOT include
     * information from supertypes; only class itself and any direct
     * mix-ins it may have.
     */
    /**
     * @deprecated Since 2.9, use methods in {@link AnnotatedClassResolver} instead.
     */
    @Deprecated
    public static AnnotatedClass constructWithoutSuperTypes(Class<?> raw, MapperConfig<?> config) {
        return constructWithoutSuperTypes(raw, config, config);
    }

    /**
     * @deprecated Since 2.9, use methods in {@link AnnotatedClassResolver} instead.
     */
    @Deprecated
    public static AnnotatedClass constructWithoutSuperTypes(Class<?> raw, MapperConfig<?> config,
            MixInResolver mir)
    {
        return AnnotatedClassResolver.resolveWithoutSuperTypes(config, raw, mir);
    }

    /*
    /**********************************************************
    /* TypeResolutionContext implementation
    /**********************************************************
     */

    @Override
    public JavaType resolveType(Type type) {
        return _typeFactory.constructType(type, _bindings);
    }

    /*
    /**********************************************************
    /* Annotated impl 
    /**********************************************************
     */

    @Override
    public Class<?> getAnnotated() { return _class; }

    @Override
    public int getModifiers() { return _class.getModifiers(); }

    @Override
    public String getName() { return _class.getName(); }

    @Override
    public <A extends Annotation> A getAnnotation(Class<A> acls) {
        int PROBE_START_LINE_206 = 206;
		com.fasterxml.jackson.databind.util.Annotations f__class_annotations_1745_line_206 = _classAnnotations;
		Class<A> p_acls_1763_line_206 = acls;
		A annotated_class_1_expr10_line_206 = f__class_annotations_1745_line_206.get(p_acls_1763_line_206);
		int PROBE_END_LINE_206 = 206;
		return annotated_class_1_expr10_line_206;
    }

    @Override
    public boolean hasAnnotation(Class<?> acls) {
        return _classAnnotations.has(acls);
    }

    @Override
    public boolean hasOneOf(Class<? extends Annotation>[] annoClasses) {
        return _classAnnotations.hasOneOf(annoClasses);
    }

    @Override
    public Class<?> getRawType() {
        return _class;
    }

    @Override
    public JavaType getType() {
        return _type;
    }

    /*
    /**********************************************************
    /* Public API, generic accessors
    /**********************************************************
     */

    public Annotations getAnnotations() {
        return _classAnnotations;
    }

    public boolean hasAnnotations() {
        return _classAnnotations.size() > 0;
    }

    public AnnotatedConstructor getDefaultConstructor() {
        return _creators().defaultConstructor;
    }

    public List<AnnotatedConstructor> getConstructors() {
        return _creators().constructors;
    }

    /**
     * @since 2.9
     */
    public List<AnnotatedMethod> getFactoryMethods() {
        return _creators().creatorMethods;
    }

    /**
     * @deprecated Since 2.9; use {@link #getFactoryMethods} instead.
     */
    @Deprecated
    public List<AnnotatedMethod> getStaticMethods() {
        return getFactoryMethods();
    }

    private final Creators _creators() {
        Creators c = _creators;
        if (c == null) {
            _creators = c = AnnotatedCreatorCollector.collectCreators(_annotationIntrospector,
                    this,
                    _type, _primaryMixIn);
        }
        return c;
    }

    public Iterable<AnnotatedMethod> memberMethods() {
        return _methods();
    }

    public int getMemberMethodCount() {
        return _methods().size();
    }

    public AnnotatedMethod findMethod(String name, Class<?>[] paramTypes) {
        return _methods().find(name, paramTypes);
    }

    private final AnnotatedMethodMap _methods() {
        AnnotatedMethodMap m = _memberMethods;
        if (m == null) {
            _memberMethods = m = AnnotatedMethodCollector.collectMethods(_annotationIntrospector,
                    this,
                    _mixInResolver, _typeFactory,
                    _type, _superTypes, _primaryMixIn);
        }
        return m;
    }

    public int getFieldCount() {
        return _fields().size();
    }

    public Iterable<AnnotatedField> fields() {
        return _fields();
    }

    private final List<AnnotatedField> _fields() {
        List<AnnotatedField> f = _fields;
        if (f == null) {
            _fields = f = AnnotatedFieldCollector.collectFields(_annotationIntrospector,
                    this,
                    _mixInResolver, _typeFactory,
                    _type);
        }
        return f;
    }
    
    /**
     * @since 2.9
     */
    public boolean isNonStaticInnerClass()
    {
        Boolean B = _nonStaticInnerClass;
        if (B == null) {
            _nonStaticInnerClass = B = ClassUtil.isNonStaticInnerClass(_class);
        }
        return B.booleanValue();
    }

    /*
    /**********************************************************
    /* Standard method overrides
    /**********************************************************
     */

    @Override
    public String toString() {
        return "[AnnotedClass "+_class.getName()+"]";
    }

    @Override
    public int hashCode() {
        return _class.getName().hashCode();
    }
    
    @Override
    public boolean equals(Object o) {
        if (o == this) return true;
        if (!ClassUtil.hasClass(o, getClass())) {
            return false;
        }
        return ((AnnotatedClass) o)._class == _class;
    }

    /*
    /**********************************************************
    /* Helper classes
    /**********************************************************
     */

    public static final class Creators
    {
        /**
         * Default constructor of the annotated class, if it has one.
         */
        public final AnnotatedConstructor defaultConstructor;

        /**
         * Single argument constructors the class has, if any.
         */
        public final List<AnnotatedConstructor> constructors;

        /**
         * Single argument static methods that might be usable
         * as factory methods
         */
        public final List<AnnotatedMethod> creatorMethods;

        public Creators(AnnotatedConstructor defCtor,
                List<AnnotatedConstructor> ctors,
                List<AnnotatedMethod> ctorMethods)
        {
            defaultConstructor = defCtor;
            constructors = ctors;
            creatorMethods = ctorMethods;
        }
    }
}
