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
import java.lang.reflect.Type;

public final class AnnotatedClass
    extends Annotated
    implements TypeResolutionContext
{
    private final static Creators NO_CREATORS = new Creators(null,
            Collections.<AnnotatedConstructor>emptyList(),
            Collections.<AnnotatedMethod>emptyList());

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
     *
     * @param type Fully resolved type; may be `null`, but ONLY if no member fields or
     *    methods are to be accessed
     * @param rawType Type-erased class; pass if no `type` needed or available
     */
    AnnotatedClass(JavaType type, Class<?> rawType, List<JavaType> superTypes,
            Class<?> primaryMixIn, Annotations classAnnotations, TypeBindings bindings, 
            AnnotationIntrospector aintr, MixInResolver mir, TypeFactory tf)
    {
        int PROBE_START_LINE_134 = 134;
		com.fasterxml.jackson.databind.JavaType p_type_3391_line_134 = type;
		int PROBE_END_LINE_134 = 134;
		_type = p_type_3391_line_134;
        int PROBE_START_LINE_135 = 135;
		Class<?> p_raw_type_3392_line_135 = rawType;
		int PROBE_END_LINE_135 = 135;
		_class = p_raw_type_3392_line_135;
        int PROBE_START_LINE_136 = 136;
		List<com.fasterxml.jackson.databind.JavaType> p_super_types_3393_line_136 = superTypes;
		int PROBE_END_LINE_136 = 136;
		_superTypes = p_super_types_3393_line_136;
        int PROBE_START_LINE_137 = 137;
		Class<?> p_primary_mix_in_3394_line_137 = primaryMixIn;
		int PROBE_END_LINE_137 = 137;
		_primaryMixIn = p_primary_mix_in_3394_line_137;
        int PROBE_START_LINE_138 = 138;
		com.fasterxml.jackson.databind.util.Annotations p_class_annotations_3395_line_138 = classAnnotations;
		int PROBE_END_LINE_138 = 138;
		_classAnnotations = p_class_annotations_3395_line_138;
        int PROBE_START_LINE_139 = 139;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_3396_line_139 = bindings;
		int PROBE_END_LINE_139 = 139;
		_bindings = p_bindings_3396_line_139;
        int PROBE_START_LINE_140 = 140;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_aintr_3397_line_140 = aintr;
		int PROBE_END_LINE_140 = 140;
		_annotationIntrospector = p_aintr_3397_line_140;
        int PROBE_START_LINE_141 = 141;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_mir_3398_line_141 = mir;
		int PROBE_END_LINE_141 = 141;
		_mixInResolver = p_mir_3398_line_141;
        int PROBE_START_LINE_142 = 142;
		com.fasterxml.jackson.databind.type.TypeFactory p_tf_3399_line_142 = tf;
		int PROBE_END_LINE_142 = 142;
		_typeFactory = p_tf_3399_line_142;
    }

    /**
     * Constructor (only) used for creating primordial simple types (during bootstrapping)
     * and array type placeholders where no fields or methods are needed.
     *
     * @since 2.9
     */
    AnnotatedClass(Class<?> rawType) {
        _type = null;
        int PROBE_START_LINE_153 = 153;
		Class<?> p_raw_type_3409_line_153 = rawType;
		int PROBE_END_LINE_153 = 153;
		_class = p_raw_type_3409_line_153;
        int PROBE_START_LINE_154 = 154;
		List<com.fasterxml.jackson.databind.JavaType> annotated_class_1_expr16_line_154 = Collections.emptyList();
		int PROBE_END_LINE_154 = 154;
		_superTypes = annotated_class_1_expr16_line_154;
        _primaryMixIn = null;
        int PROBE_START_LINE_156 = 156;
		com.fasterxml.jackson.databind.util.Annotations annotated_class_1_expr19_line_156 = AnnotationCollector
				.emptyAnnotations();
		int PROBE_END_LINE_156 = 156;
		_classAnnotations = annotated_class_1_expr19_line_156;
        int PROBE_START_LINE_157 = 157;
		com.fasterxml.jackson.databind.type.TypeBindings annotated_class_1_expr21_line_157 = TypeBindings
				.emptyBindings();
		int PROBE_END_LINE_157 = 157;
		_bindings = annotated_class_1_expr21_line_157;
        _annotationIntrospector = null;
        _mixInResolver = null;
        _typeFactory = null;
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
        int PROBE_START_LINE_212 = 212;
		com.fasterxml.jackson.databind.type.TypeFactory f__type_factory_3408_line_212 = _typeFactory;
		java.lang.reflect.Type p_type_3420_line_212 = type;
		com.fasterxml.jackson.databind.type.TypeBindings f__bindings_3405_line_212 = _bindings;
		com.fasterxml.jackson.databind.JavaType annotated_class_1_expr25_line_212 = f__type_factory_3408_line_212
				.constructType(p_type_3420_line_212, f__bindings_3405_line_212);
		int PROBE_END_LINE_212 = 212;
		return annotated_class_1_expr25_line_212;
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
        int PROBE_START_LINE_232 = 232;
		com.fasterxml.jackson.databind.util.Annotations f__class_annotations_3404_line_232 = _classAnnotations;
		Class<A> p_acls_3421_line_232 = acls;
		A annotated_class_1_expr26_line_232 = f__class_annotations_3404_line_232.get(p_acls_3421_line_232);
		int PROBE_END_LINE_232 = 232;
		return annotated_class_1_expr26_line_232;
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
        int PROBE_START_LINE_247 = 247;
		Class<?> f__class_3401_line_247 = _class;
		int PROBE_END_LINE_247 = 247;
		return f__class_3401_line_247;
    }

    @Override
    @Deprecated
    public Iterable<Annotation> annotations() {
        if (_classAnnotations instanceof AnnotationMap) {
            return ((AnnotationMap) _classAnnotations).annotations();
        } else if (_classAnnotations instanceof AnnotationCollector.OneAnnotation ||
           _classAnnotations instanceof AnnotationCollector.TwoAnnotations) {
            throw new UnsupportedOperationException("please use getAnnotations/ hasAnnotation to check for Annotations");
        }
        return Collections.emptyList();
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
        int PROBE_START_LINE_274 = 274;
		com.fasterxml.jackson.databind.util.Annotations f__class_annotations_3404_line_274 = _classAnnotations;
		int PROBE_END_LINE_274 = 274;
		return f__class_annotations_3404_line_274;
    }

    public boolean hasAnnotations() {
        return _classAnnotations.size() > 0;
    }

    public AnnotatedConstructor getDefaultConstructor() {
        int PROBE_START_LINE_282 = 282;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass.Creators annotated_class_1_expr28_line_282 = _creators();
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor annotated_class_1_expr27_line_282 = annotated_class_1_expr28_line_282.defaultConstructor;
		int PROBE_END_LINE_282 = 282;
		return annotated_class_1_expr27_line_282;
    }

    public List<AnnotatedConstructor> getConstructors() {
        int PROBE_START_LINE_286 = 286;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass.Creators annotated_class_1_expr30_line_286 = _creators();
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> annotated_class_1_expr29_line_286 = annotated_class_1_expr30_line_286.constructors;
		int PROBE_END_LINE_286 = 286;
		return annotated_class_1_expr29_line_286;
    }

    /**
     * @since 2.9
     */
    public List<AnnotatedMethod> getFactoryMethods() {
        int PROBE_START_LINE_293 = 293;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass.Creators annotated_class_1_expr32_line_293 = _creators();
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> annotated_class_1_expr31_line_293 = annotated_class_1_expr32_line_293.creatorMethods;
		int PROBE_END_LINE_293 = 293;
		return annotated_class_1_expr31_line_293;
    }

    /**
     * @deprecated Since 2.9; use {@link #getFactoryMethods} instead.
     */
    @Deprecated
    public List<AnnotatedMethod> getStaticMethods() {
        return getFactoryMethods();
    }

    public Iterable<AnnotatedMethod> memberMethods() {
        int PROBE_START_LINE_305 = 305;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap annotated_class_1_expr33_line_305 = _methods();
		int PROBE_END_LINE_305 = 305;
		return annotated_class_1_expr33_line_305;
    }

    public int getMemberMethodCount() {
        return _methods().size();
    }

    public AnnotatedMethod findMethod(String name, Class<?>[] paramTypes) {
        return _methods().find(name, paramTypes);
    }

    public int getFieldCount() {
        return _fields().size();
    }

    public Iterable<AnnotatedField> fields() {
        int PROBE_START_LINE_321 = 321;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> annotated_class_1_expr34_line_321 = _fields();
		int PROBE_END_LINE_321 = 321;
		return annotated_class_1_expr34_line_321;
    }

    /**
     * @since 2.9
     */
    public boolean isNonStaticInnerClass()
    {
        int PROBE_START_LINE_329 = 329;
		Boolean f__non_static_inner_class_3430_line_329 = _nonStaticInnerClass;
		int PROBE_END_LINE_329 = 329;
		Boolean B = f__non_static_inner_class_3430_line_329;
        int PROBE_START_LINE_330 = 332;
		Boolean v_b_3429_line_330 = B;
		boolean annotated_class_1_expr35_line_330 = v_b_3429_line_330 == null;
		int PROBE_END_LINE_330 = 332;
		if (annotated_class_1_expr35_line_330) {
            int PROBE_START_LINE_331 = 331;
			Class<?> f__class_3401_line_331 = _class;
			boolean annotated_class_1_expr38_line_331 = ClassUtil.isNonStaticInnerClass(f__class_3401_line_331);
			int PROBE_END_LINE_331 = 331;
			_nonStaticInnerClass = B = annotated_class_1_expr38_line_331;
        }
        int PROBE_START_LINE_333 = 333;
		Boolean v_b_3429_line_333 = B;
		boolean annotated_class_1_expr39_line_333 = v_b_3429_line_333.booleanValue();
		int PROBE_END_LINE_333 = 333;
		return annotated_class_1_expr39_line_333;
    }

    /*
    /**********************************************************
    /* Lazily-operating accessors
    /**********************************************************
     */

    private final List<AnnotatedField> _fields() {
        int PROBE_START_LINE_343 = 343;
		List<AnnotatedField> f__fields_3432_line_343 = _fields;
		int PROBE_END_LINE_343 = 343;
		List<AnnotatedField> f = f__fields_3432_line_343;
        int PROBE_START_LINE_344 = 353;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> v_f_3431_line_344 = f;
		boolean annotated_class_1_expr40_line_344 = v_f_3431_line_344 == null;
		int PROBE_END_LINE_344 = 353;
		if (annotated_class_1_expr40_line_344) {
            int PROBE_START_LINE_346 = 351;
			com.fasterxml.jackson.databind.JavaType f__type_3400_line_346 = _type;
			boolean annotated_class_1_expr41_line_346 = f__type_3400_line_346 == null;
			int PROBE_END_LINE_346 = 351;
			// 09-Jun-2017, tatu: _type only null for primordial, placeholder array types.
            if (annotated_class_1_expr41_line_346) {
                f = Collections.emptyList();
            } else {
                int PROBE_START_LINE_349 = 350;
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3406_line_349 = _annotationIntrospector;
				List<com.fasterxml.jackson.databind.introspect.AnnotatedField> annotated_class_1_expr43_line_349 = AnnotatedFieldCollector
						.collectFields(f__annotation_introspector_3406_line_349, this, _mixInResolver, _typeFactory,
								_type);
				int PROBE_END_LINE_349 = 350;
				f = annotated_class_1_expr43_line_349;
            }
            int PROBE_START_LINE_352 = 352;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedField> v_f_3431_line_352 = f;
			int PROBE_END_LINE_352 = 352;
			_fields = v_f_3431_line_352;
        }
        int PROBE_START_LINE_354 = 354;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> v_f_3431_line_354 = f;
		int PROBE_END_LINE_354 = 354;
		return v_f_3431_line_354;
    }

    private final AnnotatedMethodMap _methods() {
        int PROBE_START_LINE_358 = 358;
		AnnotatedMethodMap f__member_methods_3434_line_358 = _memberMethods;
		int PROBE_END_LINE_358 = 358;
		AnnotatedMethodMap m = f__member_methods_3434_line_358;
        int PROBE_START_LINE_359 = 371;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_m_3433_line_359 = m;
		boolean annotated_class_1_expr46_line_359 = v_m_3433_line_359 == null;
		int PROBE_END_LINE_359 = 371;
		if (annotated_class_1_expr46_line_359) {
            int PROBE_START_LINE_362 = 369;
			com.fasterxml.jackson.databind.JavaType f__type_3400_line_362 = _type;
			boolean annotated_class_1_expr47_line_362 = f__type_3400_line_362 == null;
			int PROBE_END_LINE_362 = 369;
			// 09-Jun-2017, tatu: _type only null for primordial, placeholder array types.
            //    NOTE: would be great to have light-weight shareable maps; no such impl exists for now
            if (annotated_class_1_expr47_line_362) {
                m = new AnnotatedMethodMap();
            } else {
                int PROBE_START_LINE_365 = 368;
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3406_line_365 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap annotated_class_1_expr49_line_365 = AnnotatedMethodCollector
						.collectMethods(f__annotation_introspector_3406_line_365, this, _mixInResolver, _typeFactory,
								_type, _superTypes, _primaryMixIn);
				int PROBE_END_LINE_365 = 368;
				m = annotated_class_1_expr49_line_365;
            }
            int PROBE_START_LINE_370 = 370;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_m_3433_line_370 = m;
			int PROBE_END_LINE_370 = 370;
			_memberMethods = v_m_3433_line_370;
        }
        int PROBE_START_LINE_372 = 372;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_m_3433_line_372 = m;
		int PROBE_END_LINE_372 = 372;
		return v_m_3433_line_372;
    }

    private final Creators _creators() {
        int PROBE_START_LINE_376 = 376;
		Creators f__creators_3436_line_376 = _creators;
		int PROBE_END_LINE_376 = 376;
		Creators c = f__creators_3436_line_376;
        int PROBE_START_LINE_377 = 385;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass.Creators v_c_3435_line_377 = c;
		boolean annotated_class_1_expr52_line_377 = v_c_3435_line_377 == null;
		int PROBE_END_LINE_377 = 385;
		if (annotated_class_1_expr52_line_377) {
            int PROBE_START_LINE_378 = 383;
			com.fasterxml.jackson.databind.JavaType f__type_3400_line_378 = _type;
			boolean annotated_class_1_expr53_line_378 = f__type_3400_line_378 == null;
			int PROBE_END_LINE_378 = 383;
			if (annotated_class_1_expr53_line_378) {
                c = NO_CREATORS;
            } else {
                int PROBE_START_LINE_381 = 382;
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3406_line_381 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedClass.Creators annotated_class_1_expr55_line_381 = AnnotatedCreatorCollector
						.collectCreators(f__annotation_introspector_3406_line_381, this, _type, _primaryMixIn);
				int PROBE_END_LINE_381 = 382;
				c = annotated_class_1_expr55_line_381;
            }
            int PROBE_START_LINE_384 = 384;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass.Creators v_c_3435_line_384 = c;
			int PROBE_END_LINE_384 = 384;
			_creators = v_c_3435_line_384;
        }
        int PROBE_START_LINE_386 = 386;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass.Creators v_c_3435_line_386 = c;
		int PROBE_END_LINE_386 = 386;
		return v_c_3435_line_386;
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
            int PROBE_START_LINE_442 = 442;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor p_def_ctor_3438_line_442 = defCtor;
			int PROBE_END_LINE_442 = 442;
			defaultConstructor = p_def_ctor_3438_line_442;
            int PROBE_START_LINE_443 = 443;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> p_ctors_3439_line_443 = ctors;
			int PROBE_END_LINE_443 = 443;
			constructors = p_ctors_3439_line_443;
            int PROBE_START_LINE_444 = 444;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> p_ctor_methods_3440_line_444 = ctorMethods;
			int PROBE_END_LINE_444 = 444;
			creatorMethods = p_ctor_methods_3440_line_444;
        }
    }
}
