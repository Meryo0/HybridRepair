package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
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
import com.fasterxml.jackson.databind.util.ClassUtil.Ctor;
import java.util.Map;
import java.util.Collection;
import java.lang.reflect.Field;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public final class AnnotatedClass
    extends Annotated
    implements TypeResolutionContext
{
    private final static AnnotationMap[] NO_ANNOTATION_MAPS = new AnnotationMap[0];

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
     *<p>
     * NOTE: changed in 2.7 from List of <code>Class</code>es to List of {@link JavaType}s.
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
    final protected AnnotationMap _classAnnotations;

    /**
     * Flag to indicate whether creator information has been resolved
     * or not.
     */
    protected boolean _creatorsResolved = false;
    
    /**
     * Default constructor of the annotated class, if it has one.
     */
    protected AnnotatedConstructor _defaultConstructor;

    /**
     * Single argument constructors the class has, if any.
     */
    protected List<AnnotatedConstructor> _constructors;

    /**
     * Single argument static methods that might be usable
     * as factory methods
     */
    protected List<AnnotatedMethod> _creatorMethods;

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
    private AnnotatedClass(JavaType type, Class<?> rawType, TypeBindings bindings,
            List<JavaType> superTypes,
            AnnotationIntrospector aintr, MixInResolver mir, TypeFactory tf)
    {
        int PROBE_START_LINE_149 = 149;
		com.fasterxml.jackson.databind.JavaType p_type_2703_line_149 = type;
		int PROBE_END_LINE_149 = 149;
		_type = p_type_2703_line_149;
        int PROBE_START_LINE_150 = 150;
		Class<?> p_raw_type_2704_line_150 = rawType;
		int PROBE_END_LINE_150 = 150;
		_class = p_raw_type_2704_line_150;
        int PROBE_START_LINE_151 = 151;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_2705_line_151 = bindings;
		int PROBE_END_LINE_151 = 151;
		_bindings = p_bindings_2705_line_151;
        int PROBE_START_LINE_152 = 152;
		List<com.fasterxml.jackson.databind.JavaType> p_super_types_2706_line_152 = superTypes;
		int PROBE_END_LINE_152 = 152;
		_superTypes = p_super_types_2706_line_152;
        int PROBE_START_LINE_153 = 153;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_aintr_2707_line_153 = aintr;
		int PROBE_END_LINE_153 = 153;
		_annotationIntrospector = p_aintr_2707_line_153;
        int PROBE_START_LINE_154 = 154;
		com.fasterxml.jackson.databind.type.TypeFactory p_tf_2709_line_154 = tf;
		int PROBE_END_LINE_154 = 154;
		_typeFactory = p_tf_2709_line_154;
        int PROBE_START_LINE_155 = 155;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_mir_2708_line_155 = mir;
		int PROBE_END_LINE_155 = 155;
		_mixInResolver = p_mir_2708_line_155;
        int PROBE_START_LINE_156 = 157;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2716_line_156 = _mixInResolver;
		boolean annotated_class_1_expr13_line_156 = f__mix_in_resolver_2716_line_156 == null;
		boolean annotated_class_1_expr11_line_156 = (annotated_class_1_expr13_line_156);
		Class<?> annotated_class_1_expr10_line_156 = annotated_class_1_expr11_line_156
				? null
				: _mixInResolver.findMixInClassFor(_class);
		int PROBE_END_LINE_156 = 157;
		_primaryMixIn = annotated_class_1_expr10_line_156;
        int PROBE_START_LINE_158 = 158;
		com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_class_1_expr15_line_158 = _resolveClassAnnotations();
		int PROBE_END_LINE_158 = 158;
		_classAnnotations = annotated_class_1_expr15_line_158;
    }

    private AnnotatedClass(AnnotatedClass base, AnnotationMap clsAnn) {
        _type = base._type;
        _class = base._class;
        _bindings = base._bindings;
        _superTypes = base._superTypes;
        _annotationIntrospector = base._annotationIntrospector;
        _typeFactory = base._typeFactory;
        _mixInResolver = base._mixInResolver;
        _primaryMixIn = base._primaryMixIn;
        _classAnnotations = clsAnn;
    }

    @Override
    public AnnotatedClass withAnnotations(AnnotationMap ann) {
        return new AnnotatedClass(this, ann);
    }

    /**
     * Factory method that instantiates an instance. Returned instance
     * will only be initialized with class annotations, but not with
     * any method information.
     * 
     * @since 2.7
     */
    public static AnnotatedClass construct(JavaType type, MapperConfig<?> config) {
        int PROBE_START_LINE_186 = 187;
		MapperConfig<?> p_config_2723_line_186 = config;
		boolean annotated_class_1_expr17_line_186 = p_config_2723_line_186.isAnnotationProcessingEnabled();
		AnnotationIntrospector annotated_class_1_expr16_line_186 = annotated_class_1_expr17_line_186
				? config.getAnnotationIntrospector()
				: null;
		int PROBE_END_LINE_186 = 187;
		AnnotationIntrospector intr = annotated_class_1_expr16_line_186;
        int PROBE_START_LINE_188 = 188;
		com.fasterxml.jackson.databind.JavaType p_type_2722_line_188 = type;
		Class<?> annotated_class_1_expr19_line_188 = p_type_2722_line_188.getRawClass();
		int PROBE_END_LINE_188 = 188;
		Class<?> raw = annotated_class_1_expr19_line_188;
        int PROBE_START_LINE_189 = 191;
		com.fasterxml.jackson.databind.JavaType p_type_2722_line_189 = type;
		Class<?> v_raw_2725_line_189 = raw;
		com.fasterxml.jackson.databind.JavaType p_type_2722_line_189_v1 = type;
		com.fasterxml.jackson.databind.type.TypeBindings annotated_class_1_expr21_line_189 = p_type_2722_line_189_v1
				.getBindings();
		int PROBE_END_LINE_189 = 191;
		return new AnnotatedClass(p_type_2722_line_189, v_raw_2725_line_189, annotated_class_1_expr21_line_189,
                ClassUtil.findSuperTypes(type, null, false), intr,
                (MixInResolver) config, config.getTypeFactory());
    }

    /**
     * @since 2.7
     */
    public static AnnotatedClass construct(JavaType type, MapperConfig<?> config,
            MixInResolver mir)
    {
        int PROBE_START_LINE_200 = 201;
		MapperConfig<?> p_config_2727_line_200 = config;
		boolean annotated_class_1_expr26_line_200 = p_config_2727_line_200.isAnnotationProcessingEnabled();
		AnnotationIntrospector annotated_class_1_expr25_line_200 = annotated_class_1_expr26_line_200
				? config.getAnnotationIntrospector()
				: null;
		int PROBE_END_LINE_200 = 201;
		AnnotationIntrospector intr = annotated_class_1_expr25_line_200;
        int PROBE_START_LINE_202 = 202;
		com.fasterxml.jackson.databind.JavaType p_type_2726_line_202 = type;
		Class<?> annotated_class_1_expr28_line_202 = p_type_2726_line_202.getRawClass();
		int PROBE_END_LINE_202 = 202;
		Class<?> raw = annotated_class_1_expr28_line_202;
        int PROBE_START_LINE_203 = 205;
		com.fasterxml.jackson.databind.JavaType p_type_2726_line_203 = type;
		Class<?> v_raw_2730_line_203 = raw;
		com.fasterxml.jackson.databind.JavaType p_type_2726_line_203_v1 = type;
		com.fasterxml.jackson.databind.type.TypeBindings annotated_class_1_expr30_line_203 = p_type_2726_line_203_v1
				.getBindings();
		int PROBE_END_LINE_203 = 205;
		return new AnnotatedClass(p_type_2726_line_203, v_raw_2730_line_203, annotated_class_1_expr30_line_203,
                ClassUtil.findSuperTypes(type, null, false),
                intr, mir, config.getTypeFactory());
    }
    
    /**
     * Method similar to {@link #construct}, but that will NOT include
     * information from supertypes; only class itself and any direct
     * mix-ins it may have.
     */
    public static AnnotatedClass constructWithoutSuperTypes(Class<?> cls, MapperConfig<?> config)
    {
        int PROBE_START_LINE_215 = 218;
		MapperConfig<?> p_config_2732_line_215 = config;
		boolean annotated_class_1_expr33_line_215 = p_config_2732_line_215 == null;
		int PROBE_END_LINE_215 = 218;
		if (annotated_class_1_expr33_line_215) {
            int PROBE_START_LINE_216 = 217;
			Class<?> p_cls_2731_line_216 = cls;
			com.fasterxml.jackson.databind.type.TypeBindings annotated_class_1_expr35_line_216 = TypeBindings
					.emptyBindings();
			int PROBE_END_LINE_216 = 217;
			return new AnnotatedClass(null, p_cls_2731_line_216, annotated_class_1_expr35_line_216,
                    Collections.<JavaType>emptyList(), null, null, null);
        }
        AnnotationIntrospector intr = config.isAnnotationProcessingEnabled()
                ? config.getAnnotationIntrospector() : null;
        return new AnnotatedClass(null, cls, TypeBindings.emptyBindings(),
                Collections.<JavaType>emptyList(), intr, (MixInResolver) config, config.getTypeFactory());
    }

    public static AnnotatedClass constructWithoutSuperTypes(Class<?> cls, MapperConfig<?> config,
            MixInResolver mir)
    {
        if (config == null) {
            return new AnnotatedClass(null, cls, TypeBindings.emptyBindings(),
                    Collections.<JavaType>emptyList(), null, null, null);
        }
        AnnotationIntrospector intr = config.isAnnotationProcessingEnabled()
                ? config.getAnnotationIntrospector() : null;
        return new AnnotatedClass(null, cls, TypeBindings.emptyBindings(),
                Collections.<JavaType>emptyList(), intr, mir, config.getTypeFactory());
    }

    /*
    /**********************************************************
    /* TypeResolutionContext implementation
    /**********************************************************
     */

    @Override
    public JavaType resolveType(Type type) {
        int PROBE_START_LINE_246 = 246;
		com.fasterxml.jackson.databind.type.TypeFactory f__type_factory_2715_line_246 = _typeFactory;
		java.lang.reflect.Type p_type_2736_line_246 = type;
		com.fasterxml.jackson.databind.type.TypeBindings f__bindings_2712_line_246 = _bindings;
		com.fasterxml.jackson.databind.JavaType annotated_class_1_expr37_line_246 = f__type_factory_2715_line_246
				.constructType(p_type_2736_line_246, f__bindings_2712_line_246);
		int PROBE_END_LINE_246 = 246;
		return annotated_class_1_expr37_line_246;
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
        int PROBE_START_LINE_266 = 266;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_2718_line_266 = _classAnnotations;
		Class<A> p_acls_2737_line_266 = acls;
		A annotated_class_1_expr38_line_266 = f__class_annotations_2718_line_266.get(p_acls_2737_line_266);
		int PROBE_END_LINE_266 = 266;
		return annotated_class_1_expr38_line_266;
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
        int PROBE_START_LINE_281 = 281;
		Class<?> f__class_2711_line_281 = _class;
		int PROBE_END_LINE_281 = 281;
		return f__class_2711_line_281;
    }

    @Override
    public Iterable<Annotation> annotations() {
        return _classAnnotations.annotations();
    }
    
    @Override
    protected AnnotationMap getAllAnnotations() {
        return _classAnnotations;
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
        int PROBE_START_LINE_306 = 306;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_2718_line_306 = _classAnnotations;
		int PROBE_END_LINE_306 = 306;
		return f__class_annotations_2718_line_306;
    }

    public boolean hasAnnotations() {
        return _classAnnotations.size() > 0;
    }

    public AnnotatedConstructor getDefaultConstructor()
    {
        int PROBE_START_LINE_315 = 317;
		boolean f__creators_resolved_2702_line_315 = _creatorsResolved;
		boolean annotated_class_1_expr39_line_315 = !f__creators_resolved_2702_line_315;
		int PROBE_END_LINE_315 = 317;
		if (annotated_class_1_expr39_line_315) {
            resolveCreators();
        }
        int PROBE_START_LINE_318 = 318;
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor f__default_constructor_2740_line_318 = _defaultConstructor;
		int PROBE_END_LINE_318 = 318;
		return f__default_constructor_2740_line_318;
    }

    public List<AnnotatedConstructor> getConstructors()
    {
        int PROBE_START_LINE_323 = 325;
		boolean f__creators_resolved_2702_line_323 = _creatorsResolved;
		boolean annotated_class_1_expr40_line_323 = !f__creators_resolved_2702_line_323;
		int PROBE_END_LINE_323 = 325;
		if (annotated_class_1_expr40_line_323) {
            resolveCreators();
        }
        int PROBE_START_LINE_326 = 326;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> f__constructors_2741_line_326 = _constructors;
		int PROBE_END_LINE_326 = 326;
		return f__constructors_2741_line_326;
    }

    public List<AnnotatedMethod> getStaticMethods()
    {
        int PROBE_START_LINE_331 = 333;
		boolean f__creators_resolved_2702_line_331 = _creatorsResolved;
		boolean annotated_class_1_expr42_line_331 = !f__creators_resolved_2702_line_331;
		int PROBE_END_LINE_331 = 333;
		if (annotated_class_1_expr42_line_331) {
            resolveCreators();
        }
        int PROBE_START_LINE_334 = 334;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__creator_methods_2742_line_334 = _creatorMethods;
		int PROBE_END_LINE_334 = 334;
		return f__creator_methods_2742_line_334;
    }

    public Iterable<AnnotatedMethod> memberMethods()
    {
        int PROBE_START_LINE_339 = 341;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap f__member_methods_2743_line_339 = _memberMethods;
		boolean annotated_class_1_expr44_line_339 = f__member_methods_2743_line_339 == null;
		int PROBE_END_LINE_339 = 341;
		if (annotated_class_1_expr44_line_339) {
            resolveMemberMethods();
        }
        int PROBE_START_LINE_342 = 342;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap f__member_methods_2743_line_342 = _memberMethods;
		int PROBE_END_LINE_342 = 342;
		return f__member_methods_2743_line_342;
    }

    public int getMemberMethodCount()
    {
        if (_memberMethods == null) {
            resolveMemberMethods();
        }
        return _memberMethods.size();
    }

    public AnnotatedMethod findMethod(String name, Class<?>[] paramTypes)
    {
        if (_memberMethods == null) {
            resolveMemberMethods();
        }
        return _memberMethods.find(name, paramTypes);
    }

    public int getFieldCount() {
        if (_fields == null) {
            resolveFields();
        }
        return _fields.size();
    }

    public Iterable<AnnotatedField> fields()
    {
        int PROBE_START_LINE_370 = 372;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_2746_line_370 = _fields;
		boolean annotated_class_1_expr46_line_370 = f__fields_2746_line_370 == null;
		int PROBE_END_LINE_370 = 372;
		if (annotated_class_1_expr46_line_370) {
            resolveFields();
        }
        int PROBE_START_LINE_373 = 373;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_2746_line_373 = _fields;
		int PROBE_END_LINE_373 = 373;
		return f__fields_2746_line_373;
    }

    /**
     * @since 2.9
     */
    public boolean isNonStaticInnerClass()
    {
        int PROBE_START_LINE_381 = 381;
		Boolean f__non_static_inner_class_2748_line_381 = _nonStaticInnerClass;
		int PROBE_END_LINE_381 = 381;
		Boolean B = f__non_static_inner_class_2748_line_381;
        int PROBE_START_LINE_382 = 384;
		Boolean v_b_2747_line_382 = B;
		boolean annotated_class_1_expr48_line_382 = v_b_2747_line_382 == null;
		int PROBE_END_LINE_382 = 384;
		if (annotated_class_1_expr48_line_382) {
            int PROBE_START_LINE_383 = 383;
			Class<?> f__class_2711_line_383 = _class;
			boolean annotated_class_1_expr51_line_383 = ClassUtil.isNonStaticInnerClass(f__class_2711_line_383);
			int PROBE_END_LINE_383 = 383;
			_nonStaticInnerClass = B = annotated_class_1_expr51_line_383;
        }
        int PROBE_START_LINE_385 = 385;
		Boolean v_b_2747_line_385 = B;
		boolean annotated_class_1_expr52_line_385 = v_b_2747_line_385.booleanValue();
		int PROBE_END_LINE_385 = 385;
		return annotated_class_1_expr52_line_385;
    }

    /*
    /**********************************************************
    /* Public API, main-level resolution methods
    /**********************************************************
     */

    /**
     * Initialization method that will recursively collect Jackson
     * annotations for this class and all super classes and
     * interfaces.
     */
    private AnnotationMap _resolveClassAnnotations()
    {
        AnnotationMap ca = new AnnotationMap();
        int PROBE_START_LINE_403 = 427;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2714_line_403 = _annotationIntrospector;
		boolean annotated_class_1_expr54_line_403 = f__annotation_introspector_2714_line_403 != null;
		int PROBE_END_LINE_403 = 427;
		// Should skip processing if annotation processing disabled
        if (annotated_class_1_expr54_line_403) {
            int PROBE_START_LINE_405 = 407;
			Class<?> f__primary_mix_in_2717_line_405 = _primaryMixIn;
			boolean annotated_class_1_expr55_line_405 = f__primary_mix_in_2717_line_405 != null;
			int PROBE_END_LINE_405 = 407;
			// add mix-in annotations first (overrides)
            if (annotated_class_1_expr55_line_405) {
                _addClassMixIns(ca, _class, _primaryMixIn);
            }
            int PROBE_START_LINE_409 = 410;
			com.fasterxml.jackson.databind.introspect.AnnotationMap v_ca_2749_line_409 = ca;
			int PROBE_END_LINE_409 = 410;
			// first, annotations from the class itself:
            _addAnnotationsIfNotPresent(v_ca_2749_line_409,
                    ClassUtil.findClassAnnotations(_class));
    
            int PROBE_START_LINE_413 = 418;
			List<com.fasterxml.jackson.databind.JavaType> f__super_types_2713_line_413 = _superTypes;
			int PROBE_END_LINE_413 = 418;
			// and then from super types
            for (JavaType type : f__super_types_2713_line_413) {
                int PROBE_START_LINE_415 = 415;
				com.fasterxml.jackson.databind.introspect.AnnotationMap v_ca_2749_line_415 = ca;
				com.fasterxml.jackson.databind.JavaType v_type_2750_line_415 = type;
				int PROBE_END_LINE_415 = 415;
				// and mix mix-in annotations in-between
                _addClassMixIns(v_ca_2749_line_415, v_type_2750_line_415);
                int PROBE_START_LINE_416 = 417;
				com.fasterxml.jackson.databind.introspect.AnnotationMap v_ca_2749_line_416 = ca;
				int PROBE_END_LINE_416 = 417;
				_addAnnotationsIfNotPresent(v_ca_2749_line_416,
                        ClassUtil.findClassAnnotations(type.getRawClass()));
            }
            int PROBE_START_LINE_426 = 426;
			com.fasterxml.jackson.databind.introspect.AnnotationMap v_ca_2749_line_426 = ca;
			int PROBE_END_LINE_426 = 426;
			/* and finally... any annotations there might be for plain
             * old Object.class: separate because for all other purposes
             * it is just ignored (not included in super types)
             */
            /* 12-Jul-2009, tatu: Should this be done for interfaces too?
             *   For now, yes, seems useful for some cases, and not harmful for any?
             */
            _addClassMixIns(v_ca_2749_line_426, Object.class);
        }
        int PROBE_START_LINE_428 = 428;
		com.fasterxml.jackson.databind.introspect.AnnotationMap v_ca_2749_line_428 = ca;
		int PROBE_END_LINE_428 = 428;
		return v_ca_2749_line_428;
    }

    /**
     * Initialization method that will find out all constructors
     * and potential static factory methods the class has.
     */
    private void resolveCreators()
    {
        // Constructor also always members of this class
        TypeResolutionContext typeContext = this; 

    // 30-Apr-2016, tatu: [databind#1215]: Actually, while true, this does
    //   NOT apply to context since sub-class may have type bindings
//    TypeResolutionContext typeContext = new TypeResolutionContext.Basic(_typeFactory, _type.getBindings());

        // Then see which constructors we have
        List<AnnotatedConstructor> constructors = null;

        int PROBE_START_LINE_452 = 466;
		com.fasterxml.jackson.databind.JavaType f__type_2710_line_452 = _type;
		boolean annotated_class_1_expr65_line_452 = f__type_2710_line_452.isEnumType();
		boolean annotated_class_1_expr64_line_452 = !annotated_class_1_expr65_line_452;
		int PROBE_END_LINE_452 = 466;
		// 18-Jun-2016, tatu: Enum constructors will never be useful (unlike
        //    possibly static factory methods); but they can be royal PITA
        //    due to some oddities by JVM; see:
        //    [https://github.com/FasterXML/jackson-module-parameter-names/issues/35]
        //    for more. So, let's just skip them.
        if (annotated_class_1_expr64_line_452) {
            int PROBE_START_LINE_453 = 453;
			Class<?> f__class_2711_line_453 = _class;
			ClassUtil.Ctor[] annotated_class_1_expr66_line_453 = ClassUtil.getConstructors(f__class_2711_line_453);
			int PROBE_END_LINE_453 = 453;
			ClassUtil.Ctor[] declaredCtors = annotated_class_1_expr66_line_453;
            int PROBE_START_LINE_454 = 465;
			com.fasterxml.jackson.databind.util.ClassUtil.Ctor[] v_declared_ctors_2753_line_454 = declaredCtors;
			int PROBE_END_LINE_454 = 465;
			for (ClassUtil.Ctor ctor : v_declared_ctors_2753_line_454) {
                int PROBE_START_LINE_455 = 464;
				com.fasterxml.jackson.databind.util.ClassUtil.Ctor v_ctor_2754_line_455 = ctor;
				Constructor<?> annotated_class_1_expr68_line_455 = v_ctor_2754_line_455.getConstructor();
				boolean annotated_class_1_expr67_line_455 = _isIncludableConstructor(annotated_class_1_expr68_line_455);
				int PROBE_END_LINE_455 = 464;
				if (annotated_class_1_expr67_line_455) {
                    int PROBE_START_LINE_456 = 463;
					com.fasterxml.jackson.databind.util.ClassUtil.Ctor v_ctor_2754_line_456 = ctor;
					int annotated_class_1_expr70_line_456 = v_ctor_2754_line_456.getParamCount();
					boolean annotated_class_1_expr69_line_456 = annotated_class_1_expr70_line_456 == 0;
					int PROBE_END_LINE_456 = 463;
					if (annotated_class_1_expr69_line_456) {
                        int PROBE_START_LINE_457 = 457;
						com.fasterxml.jackson.databind.util.ClassUtil.Ctor v_ctor_2754_line_457 = ctor;
						com.fasterxml.jackson.databind.introspect.TypeResolutionContext v_type_context_2751_line_457 = typeContext;
						com.fasterxml.jackson.databind.introspect.AnnotatedConstructor annotated_class_1_expr72_line_457 = _constructDefaultConstructor(
								v_ctor_2754_line_457, v_type_context_2751_line_457);
						int PROBE_END_LINE_457 = 457;
						_defaultConstructor = annotated_class_1_expr72_line_457;
                    } else {
                        int PROBE_START_LINE_459 = 461;
						List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_2752_line_459 = constructors;
						boolean annotated_class_1_expr73_line_459 = v_constructors_2752_line_459 == null;
						int PROBE_END_LINE_459 = 461;
						if (annotated_class_1_expr73_line_459) {
                            int PROBE_START_LINE_460 = 460;
							com.fasterxml.jackson.databind.util.ClassUtil.Ctor[] v_declared_ctors_2753_line_460 = declaredCtors;
							int q_length_73_line_460 = v_declared_ctors_2753_line_460.length;
							int annotated_class_1_expr76_line_460 = Math.max(10, q_length_73_line_460);
							int PROBE_END_LINE_460 = 460;
							constructors = new ArrayList<AnnotatedConstructor>(annotated_class_1_expr76_line_460);
                        }
                        int PROBE_START_LINE_462 = 462;
						List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_2752_line_462 = constructors;
						com.fasterxml.jackson.databind.util.ClassUtil.Ctor v_ctor_2754_line_462 = ctor;
						com.fasterxml.jackson.databind.introspect.TypeResolutionContext v_type_context_2751_line_462 = typeContext;
						com.fasterxml.jackson.databind.introspect.AnnotatedConstructor annotated_class_1_expr78_line_462 = _constructNonDefaultConstructor(
								v_ctor_2754_line_462, v_type_context_2751_line_462);
						int PROBE_END_LINE_462 = 462;
						v_constructors_2752_line_462.add(annotated_class_1_expr78_line_462);
                    }
                }
            }
        }
        int PROBE_START_LINE_467 = 471;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_2752_line_467 = constructors;
		boolean annotated_class_1_expr79_line_467 = v_constructors_2752_line_467 == null;
		int PROBE_END_LINE_467 = 471;
		if (annotated_class_1_expr79_line_467) {
            int PROBE_START_LINE_468 = 468;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> annotated_class_1_expr81_line_468 = Collections
					.emptyList();
			int PROBE_END_LINE_468 = 468;
			_constructors = annotated_class_1_expr81_line_468;
        } else {
            int PROBE_START_LINE_470 = 470;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_2752_line_470 = constructors;
			int PROBE_END_LINE_470 = 470;
			_constructors = v_constructors_2752_line_470;
        }
        int PROBE_START_LINE_473 = 477;
		Class<?> f__primary_mix_in_2717_line_473 = _primaryMixIn;
		boolean annotated_class_1_expr83_line_473 = f__primary_mix_in_2717_line_473 != null;
		int PROBE_END_LINE_473 = 477;
		// and if need be, augment with mix-ins
        if (annotated_class_1_expr83_line_473) {
            if (_defaultConstructor != null || !_constructors.isEmpty()) {
                _addConstructorMixIns(_primaryMixIn);
            }
        }

        int PROBE_START_LINE_483 = 497;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2714_line_483 = _annotationIntrospector;
		boolean annotated_class_1_expr84_line_483 = f__annotation_introspector_2714_line_483 != null;
		int PROBE_END_LINE_483 = 497;
		/* And then... let's remove all constructors that are deemed
         * ignorable after all annotations have been properly collapsed.
         */
        // AnnotationIntrospector is null if annotations not enabled; if so, can skip:
        if (annotated_class_1_expr84_line_483) {
            int PROBE_START_LINE_484 = 488;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor f__default_constructor_2740_line_484 = _defaultConstructor;
			boolean annotated_class_1_expr85_line_484 = f__default_constructor_2740_line_484 != null;
			int PROBE_END_LINE_484 = 488;
			if (annotated_class_1_expr85_line_484) {
                int PROBE_START_LINE_485 = 487;
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2714_line_485 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor f__default_constructor_2740_line_485 = _defaultConstructor;
				boolean annotated_class_1_expr86_line_485 = f__annotation_introspector_2714_line_485
						.hasIgnoreMarker(f__default_constructor_2740_line_485);
				int PROBE_END_LINE_485 = 487;
				if (annotated_class_1_expr86_line_485) {
                    _defaultConstructor = null;
                }
            }
            int PROBE_START_LINE_489 = 496;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> f__constructors_2741_line_489 = _constructors;
			boolean annotated_class_1_expr87_line_489 = f__constructors_2741_line_489 != null;
			int PROBE_END_LINE_489 = 496;
			if (annotated_class_1_expr87_line_489) {
                int PROBE_START_LINE_490 = 490;
				boolean FOR_STMT_TOGGLE_LINE_491 = false;
				int PROBE_END_LINE_490 = 490;
				// count down to allow safe removal
                for (int i = 0; true; ) {
                    int PROBE_START_LINE_492 = 494;
					if (!FOR_STMT_TOGGLE_LINE_491) {
						FOR_STMT_TOGGLE_LINE_491 = true;
						List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> f__constructors_2741_line_491 = _constructors;
						int annotated_class_1_expr89_line_491 = f__constructors_2741_line_491.size();
						i = annotated_class_1_expr89_line_491;
					} else {
						if (FOR_STMT_TOGGLE_LINE_491) {
						} else {
							FOR_STMT_TOGGLE_LINE_491 = true;
						}
					}
					boolean annotated_class_1_expr90_line_491 = --i >= 0;
					if (!(annotated_class_1_expr90_line_491)) {
						break;
					}
					com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2714_line_492 = _annotationIntrospector;
					List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> f__constructors_2741_line_492 = _constructors;
					int v_i_2755_line_492 = i;
					com.fasterxml.jackson.databind.introspect.AnnotatedConstructor annotated_class_1_expr93_line_492 = f__constructors_2741_line_492
							.get(v_i_2755_line_492);
					boolean annotated_class_1_expr92_line_492 = f__annotation_introspector_2714_line_492
							.hasIgnoreMarker(annotated_class_1_expr93_line_492);
					int PROBE_END_LINE_492 = 494;
					if (annotated_class_1_expr92_line_492) {
                        _constructors.remove(i);
                    }
                }
            }
        }
        List<AnnotatedMethod> creatorMethods = null;
        
        int PROBE_START_LINE_501 = 511;
		Class<?> f__class_2711_line_501 = _class;
		java.lang.reflect.Method[] annotated_class_1_expr94_line_501 = _findClassMethods(f__class_2711_line_501);
		int PROBE_END_LINE_501 = 511;
		// Then static methods which are potential factory methods
        for (Method m : annotated_class_1_expr94_line_501) {
            int PROBE_START_LINE_502 = 504;
			java.lang.reflect.Method v_m_2757_line_502 = m;
			int annotated_class_1_expr97_line_502 = v_m_2757_line_502.getModifiers();
			boolean annotated_class_1_expr96_line_502 = Modifier.isStatic(annotated_class_1_expr97_line_502);
			boolean annotated_class_1_expr95_line_502 = !annotated_class_1_expr96_line_502;
			int PROBE_END_LINE_502 = 504;
			if (annotated_class_1_expr95_line_502) {
                continue;
            }
            int PROBE_START_LINE_507 = 509;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_creator_methods_2756_line_507 = creatorMethods;
			boolean annotated_class_1_expr98_line_507 = v_creator_methods_2756_line_507 == null;
			int PROBE_END_LINE_507 = 509;
			// all factory methods are fine:
            //int argCount = m.getParameterTypes().length;
            if (annotated_class_1_expr98_line_507) {
                creatorMethods = new ArrayList<AnnotatedMethod>(8);
            }
            int PROBE_START_LINE_510 = 510;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_creator_methods_2756_line_510 = creatorMethods;
			java.lang.reflect.Method v_m_2757_line_510 = m;
			com.fasterxml.jackson.databind.introspect.TypeResolutionContext v_type_context_2751_line_510 = typeContext;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod annotated_class_1_expr102_line_510 = _constructCreatorMethod(
					v_m_2757_line_510, v_type_context_2751_line_510);
			int PROBE_END_LINE_510 = 510;
			v_creator_methods_2756_line_510.add(annotated_class_1_expr102_line_510);
        }
        int PROBE_START_LINE_512 = 529;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_creator_methods_2756_line_512 = creatorMethods;
		boolean annotated_class_1_expr103_line_512 = v_creator_methods_2756_line_512 == null;
		int PROBE_END_LINE_512 = 529;
		if (annotated_class_1_expr103_line_512) {
            _creatorMethods = Collections.emptyList();
        } else {
            int PROBE_START_LINE_515 = 515;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_creator_methods_2756_line_515 = creatorMethods;
			int PROBE_END_LINE_515 = 515;
			_creatorMethods = v_creator_methods_2756_line_515;
            int PROBE_START_LINE_517 = 519;
			Class<?> f__primary_mix_in_2717_line_517 = _primaryMixIn;
			boolean annotated_class_1_expr105_line_517 = f__primary_mix_in_2717_line_517 != null;
			int PROBE_END_LINE_517 = 519;
			// mix-ins to mix in?
            if (annotated_class_1_expr105_line_517) {
                _addFactoryMixIns(_primaryMixIn);
            }
            int PROBE_START_LINE_521 = 528;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2714_line_521 = _annotationIntrospector;
			boolean annotated_class_1_expr106_line_521 = f__annotation_introspector_2714_line_521 != null;
			int PROBE_END_LINE_521 = 528;
			// anything to ignore at this point?
            if (annotated_class_1_expr106_line_521) {
                int PROBE_START_LINE_522 = 522;
				boolean FOR_STMT_TOGGLE_LINE_523 = false;
				int PROBE_END_LINE_522 = 522;
				// count down to allow safe removal
                for (int i = 0; true; ) {
                    int PROBE_START_LINE_524 = 526;
					if (!FOR_STMT_TOGGLE_LINE_523) {
						FOR_STMT_TOGGLE_LINE_523 = true;
						List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__creator_methods_2742_line_523 = _creatorMethods;
						int annotated_class_1_expr108_line_523 = f__creator_methods_2742_line_523.size();
						i = annotated_class_1_expr108_line_523;
					} else {
						if (FOR_STMT_TOGGLE_LINE_523) {
						} else {
							FOR_STMT_TOGGLE_LINE_523 = true;
						}
					}
					boolean annotated_class_1_expr109_line_523 = --i >= 0;
					if (!(annotated_class_1_expr109_line_523)) {
						break;
					}
					com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2714_line_524 = _annotationIntrospector;
					List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__creator_methods_2742_line_524 = _creatorMethods;
					int v_i_2758_line_524 = i;
					com.fasterxml.jackson.databind.introspect.AnnotatedMethod annotated_class_1_expr112_line_524 = f__creator_methods_2742_line_524
							.get(v_i_2758_line_524);
					boolean annotated_class_1_expr111_line_524 = f__annotation_introspector_2714_line_524
							.hasIgnoreMarker(annotated_class_1_expr112_line_524);
					int PROBE_END_LINE_524 = 526;
					if (annotated_class_1_expr111_line_524) {
                        _creatorMethods.remove(i);
                    }
                }
            }
        }
        _creatorsResolved = true;
    }

    /**
     * Method for resolving member method information: aggregating all non-static methods
     * and combining annotations (to implement method-annotation inheritance)
     * 
     * @param methodFilter Filter used to determine which methods to include
     */
    private void resolveMemberMethods()
    {
        int PROBE_START_LINE_541 = 541;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap annotated_class_1_expr115_line_541 = _resolveMemberMethods();
		int PROBE_END_LINE_541 = 541;
		_memberMethods = annotated_class_1_expr115_line_541;
    }

    private AnnotatedMethodMap _resolveMemberMethods()
    {
        AnnotatedMethodMap memberMethods = new AnnotatedMethodMap();
        AnnotatedMethodMap mixins = new AnnotatedMethodMap();
        int PROBE_START_LINE_549 = 549;
		Class<?> f__class_2711_line_549 = _class;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_member_methods_2759_line_549 = memberMethods;
		Class<?> f__primary_mix_in_2717_line_549 = _primaryMixIn;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_mixins_2760_line_549 = mixins;
		int PROBE_END_LINE_549 = 549;
		// first: methods from the class itself
        _addMemberMethods(f__class_2711_line_549, this, v_member_methods_2759_line_549, f__primary_mix_in_2717_line_549, v_mixins_2760_line_549);

        int PROBE_START_LINE_552 = 557;
		List<com.fasterxml.jackson.databind.JavaType> f__super_types_2713_line_552 = _superTypes;
		int PROBE_END_LINE_552 = 557;
		// and then augment these with annotations from super-types:
        for (JavaType type : f__super_types_2713_line_552) {
            Class<?> mixin = (_mixInResolver == null) ? null : _mixInResolver.findMixInClassFor(type.getRawClass());
            _addMemberMethods(type.getRawClass(),
                    new TypeResolutionContext.Basic(_typeFactory, type.getBindings()),
                    memberMethods, mixin, mixins);
        }
        int PROBE_START_LINE_559 = 564;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2716_line_559 = _mixInResolver;
		boolean annotated_class_1_expr120_line_559 = f__mix_in_resolver_2716_line_559 != null;
		int PROBE_END_LINE_559 = 564;
		// Special case: mix-ins for Object.class? (to apply to ALL classes)
        if (annotated_class_1_expr120_line_559) {
            int PROBE_START_LINE_560 = 560;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2716_line_560 = _mixInResolver;
			Class<?> annotated_class_1_expr121_line_560 = f__mix_in_resolver_2716_line_560
					.findMixInClassFor(Object.class);
			int PROBE_END_LINE_560 = 560;
			Class<?> mixin = annotated_class_1_expr121_line_560;
            int PROBE_START_LINE_561 = 563;
			Class<?> v_mixin_2762_line_561 = mixin;
			boolean annotated_class_1_expr123_line_561 = v_mixin_2762_line_561 != null;
			int PROBE_END_LINE_561 = 563;
			if (annotated_class_1_expr123_line_561) {
                _addMethodMixIns(_class, memberMethods, mixin, mixins);
            }
        }

        int PROBE_START_LINE_572 = 588;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2714_line_572 = _annotationIntrospector;
		boolean annotated_class_1_expr124_line_572 = f__annotation_introspector_2714_line_572 != null;
		int PROBE_END_LINE_572 = 588;
		/* Any unmatched mix-ins? Most likely error cases (not matching
         * any method); but there is one possible real use case:
         * exposing Object#hashCode (alas, Object#getClass can NOT be
         * exposed)
         */
        // 14-Feb-2011, tatu: AnnotationIntrospector is null if annotations not enabled; if so, can skip:
        if (annotated_class_1_expr124_line_572) {
            int PROBE_START_LINE_573 = 587;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_mixins_2760_line_573 = mixins;
			boolean annotated_class_1_expr126_line_573 = v_mixins_2760_line_573.isEmpty();
			boolean annotated_class_1_expr125_line_573 = !annotated_class_1_expr126_line_573;
			int PROBE_END_LINE_573 = 587;
			if (annotated_class_1_expr125_line_573) {
                Iterator<AnnotatedMethod> it = mixins.iterator();
                while (it.hasNext()) {
                    AnnotatedMethod mixIn = it.next();
                    try {
                        Method m = Object.class.getDeclaredMethod(mixIn.getName(), mixIn.getRawParameterTypes());
                        if (m != null) {
                            // Since it's from java.lang.Object, no generics, no need for real type context:
                            AnnotatedMethod am = _constructMethod(m, this);
                            _addMixOvers(mixIn.getAnnotated(), am, false);
                            memberMethods.add(am);
                        }
                    } catch (Exception e) { }
                }
            }
        }
        int PROBE_START_LINE_589 = 589;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_member_methods_2759_line_589 = memberMethods;
		int PROBE_END_LINE_589 = 589;
		return v_member_methods_2759_line_589;
    }

    /**
     * Method that will collect all member (non-static) fields
     * that are either public, or have at least a single annotation
     * associated with them.
     */
    private void resolveFields()
    {
        int PROBE_START_LINE_599 = 599;
		com.fasterxml.jackson.databind.JavaType f__type_2710_line_599 = _type;
		Map<String, AnnotatedField> annotated_class_1_expr127_line_599 = _findFields(f__type_2710_line_599, this, null);
		int PROBE_END_LINE_599 = 599;
		Map<String,AnnotatedField> foundFields = annotated_class_1_expr127_line_599;
        List<AnnotatedField> f = null;
        int PROBE_START_LINE_601 = 606;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> v_found_fields_2763_line_601 = foundFields;
		boolean annotated_class_1_expr130_line_601 = v_found_fields_2763_line_601 == null;
		boolean annotated_class_1_expr131_line_601 = false;
		if (!annotated_class_1_expr130_line_601) {
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> v_found_fields_2763_line_601_v1 = foundFields;
			int annotated_class_1_expr132_line_601 = v_found_fields_2763_line_601_v1.size();
			annotated_class_1_expr131_line_601 = annotated_class_1_expr132_line_601 == 0;
		}
		boolean annotated_class_1_expr129_line_601 = annotated_class_1_expr130_line_601
				|| annotated_class_1_expr131_line_601;
		int PROBE_END_LINE_601 = 606;
		if (annotated_class_1_expr129_line_601) {
            f = Collections.emptyList();
        } else {
            int PROBE_START_LINE_604 = 604;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> v_found_fields_2763_line_604 = foundFields;
			int annotated_class_1_expr135_line_604 = v_found_fields_2763_line_604.size();
			int PROBE_END_LINE_604 = 604;
			f = new ArrayList<AnnotatedField>(annotated_class_1_expr135_line_604);
            int PROBE_START_LINE_605 = 605;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedField> v_f_2764_line_605 = f;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> v_found_fields_2763_line_605 = foundFields;
			Collection<com.fasterxml.jackson.databind.introspect.AnnotatedField> annotated_class_1_expr137_line_605 = v_found_fields_2763_line_605
					.values();
			int PROBE_END_LINE_605 = 605;
			v_f_2764_line_605.addAll(annotated_class_1_expr137_line_605);
        }
        int PROBE_START_LINE_607 = 607;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> v_f_2764_line_607 = f;
		int PROBE_END_LINE_607 = 607;
		_fields = v_f_2764_line_607;
    }

    /*
    /**********************************************************
    /* Helper methods for resolving class annotations
    /* (resolution consisting of inheritance, overrides,
    /* and injection of mix-ins as necessary)
    /**********************************************************
     */
    
    /**
     * Helper method for adding any mix-in annotations specified
     * class might have.
     */
    protected void _addClassMixIns(AnnotationMap annotations, JavaType target)
    {
        int PROBE_START_LINE_624 = 627;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2716_line_624 = _mixInResolver;
		boolean annotated_class_1_expr139_line_624 = f__mix_in_resolver_2716_line_624 != null;
		int PROBE_END_LINE_624 = 627;
		if (annotated_class_1_expr139_line_624) {
            int PROBE_START_LINE_625 = 625;
			com.fasterxml.jackson.databind.JavaType p_target_2766_line_625 = target;
			Class<?> annotated_class_1_expr140_line_625 = p_target_2766_line_625.getRawClass();
			int PROBE_END_LINE_625 = 625;
			final Class<?> toMask = annotated_class_1_expr140_line_625;
            int PROBE_START_LINE_626 = 626;
			com.fasterxml.jackson.databind.introspect.AnnotationMap p_annotations_2765_line_626 = annotations;
			Class<?> v_to_mask_2767_line_626 = toMask;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2716_line_626 = _mixInResolver;
			Class<?> v_to_mask_2767_line_626_v1 = toMask;
			Class<?> annotated_class_1_expr142_line_626 = f__mix_in_resolver_2716_line_626
					.findMixInClassFor(v_to_mask_2767_line_626_v1);
			int PROBE_END_LINE_626 = 626;
			_addClassMixIns(p_annotations_2765_line_626, v_to_mask_2767_line_626, annotated_class_1_expr142_line_626);
        }
    }

    protected void _addClassMixIns(AnnotationMap annotations, Class<?> target)
    {
        int PROBE_START_LINE_632 = 634;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2716_line_632 = _mixInResolver;
		boolean annotated_class_1_expr143_line_632 = f__mix_in_resolver_2716_line_632 != null;
		int PROBE_END_LINE_632 = 634;
		if (annotated_class_1_expr143_line_632) {
            int PROBE_START_LINE_633 = 633;
			com.fasterxml.jackson.databind.introspect.AnnotationMap p_annotations_2768_line_633 = annotations;
			Class<?> p_target_2769_line_633 = target;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2716_line_633 = _mixInResolver;
			Class<?> p_target_2769_line_633_v1 = target;
			Class<?> annotated_class_1_expr145_line_633 = f__mix_in_resolver_2716_line_633
					.findMixInClassFor(p_target_2769_line_633_v1);
			int PROBE_END_LINE_633 = 633;
			_addClassMixIns(p_annotations_2768_line_633, p_target_2769_line_633, annotated_class_1_expr145_line_633);
        }
    }

    protected void _addClassMixIns(AnnotationMap annotations, Class<?> toMask,
            Class<?> mixin)
    {
        int PROBE_START_LINE_640 = 642;
		Class<?> p_mixin_2772_line_640 = mixin;
		boolean annotated_class_1_expr146_line_640 = p_mixin_2772_line_640 == null;
		int PROBE_END_LINE_640 = 642;
		if (annotated_class_1_expr146_line_640) {
            return;
        }
        // Ok, first: annotations from mix-in class itself:
        _addAnnotationsIfNotPresent(annotations, ClassUtil.findClassAnnotations(mixin));

        /* And then from its supertypes, if any. But note that we will
         * only consider super-types up until reaching the masked
         * class (if found); this because often mix-in class
         * is a sub-class (for convenience reasons). And if so, we
         * absolutely must NOT include super types of masked class,
         * as that would inverse precedence of annotations.
         */
        for (Class<?> parent : ClassUtil.findSuperClasses(mixin, toMask, false)) {
            _addAnnotationsIfNotPresent(annotations, ClassUtil.findClassAnnotations(parent));
        }
    }

    /*
    /**********************************************************
    /* Helper methods for populating creator (ctor, factory) information
    /**********************************************************
     */

    protected void _addConstructorMixIns(Class<?> mixin)
    {
        MemberKey[] ctorKeys = null;
        int ctorCount = (_constructors == null) ? 0 : _constructors.size();
        for (ClassUtil.Ctor ctor0 : ClassUtil.getConstructors(mixin)) {
            Constructor<?> ctor = ctor0.getConstructor();
            if (ctor.getParameterTypes().length == 0) {
                if (_defaultConstructor != null) {
                    _addMixOvers(ctor, _defaultConstructor, false);
                }
            } else {
                if (ctorKeys == null) {
                    ctorKeys = new MemberKey[ctorCount];
                    for (int i = 0; i < ctorCount; ++i) {
                        ctorKeys[i] = new MemberKey(_constructors.get(i).getAnnotated());
                    }
                }
                MemberKey key = new MemberKey(ctor);

                for (int i = 0; i < ctorCount; ++i) {
                    if (!key.equals(ctorKeys[i])) {
                        continue;
                    }
                    _addMixOvers(ctor, _constructors.get(i), true);
                    break;
                }
            }
        }
    }

    protected void _addFactoryMixIns(Class<?> mixin)
    {
        MemberKey[] methodKeys = null;
        int methodCount = _creatorMethods.size();

        for (Method m : ClassUtil.getDeclaredMethods(mixin)) {
            if (!Modifier.isStatic(m.getModifiers())) {
                continue;
            }
            if (m.getParameterTypes().length == 0) {
                continue;
            }
            if (methodKeys == null) {
                methodKeys = new MemberKey[methodCount];
                for (int i = 0; i < methodCount; ++i) {
                    methodKeys[i] = new MemberKey(_creatorMethods.get(i).getAnnotated());
                }
            }
            MemberKey key = new MemberKey(m);
            for (int i = 0; i < methodCount; ++i) {
                if (!key.equals(methodKeys[i])) {
                    continue;
                }
                _addMixOvers(m, _creatorMethods.get(i), true);
                break;
            }
        }
    }

    /*
    /**********************************************************
    /* Helper methods for populating method information
    /**********************************************************
     */

    protected void _addMemberMethods(Class<?> cls, TypeResolutionContext typeContext,
            AnnotatedMethodMap methods,
            Class<?> mixInCls, AnnotatedMethodMap mixIns)
    {
        int PROBE_START_LINE_734 = 736;
		Class<?> p_mix_in_cls_2778_line_734 = mixInCls;
		boolean annotated_class_1_expr147_line_734 = p_mix_in_cls_2778_line_734 != null;
		int PROBE_END_LINE_734 = 736;
		// first, mixIns, since they have higher priority then class methods
        if (annotated_class_1_expr147_line_734) {
            _addMethodMixIns(cls, methods, mixInCls, mixIns);
        }
        int PROBE_START_LINE_737 = 739;
		Class<?> p_cls_2775_line_737 = cls;
		boolean annotated_class_1_expr148_line_737 = p_cls_2775_line_737 == null;
		int PROBE_END_LINE_737 = 739;
		if (annotated_class_1_expr148_line_737) { // just so caller need not check when passing super-class
            return;
        }
        int PROBE_START_LINE_741 = 771;
		Class<?> p_cls_2775_line_741 = cls;
		java.lang.reflect.Method[] annotated_class_1_expr149_line_741 = _findClassMethods(p_cls_2775_line_741);
		int PROBE_END_LINE_741 = 771;
		// then methods from the class itself
        for (Method m : annotated_class_1_expr149_line_741) {
            int PROBE_START_LINE_742 = 744;
			java.lang.reflect.Method v_m_2780_line_742 = m;
			boolean annotated_class_1_expr151_line_742 = _isIncludableMemberMethod(v_m_2780_line_742);
			boolean annotated_class_1_expr150_line_742 = !annotated_class_1_expr151_line_742;
			int PROBE_END_LINE_742 = 744;
			if (annotated_class_1_expr150_line_742) {
                continue;
            }
            AnnotatedMethod old = methods.find(m);
            if (old == null) {
                AnnotatedMethod newM = _constructMethod(m, typeContext);
                methods.add(newM);
                // Ok, but is there a mix-in to connect now?
                old = mixIns.remove(m);
                if (old != null) {
                    _addMixOvers(old.getAnnotated(), newM, false);
                }
            } else {
                /* If sub-class already has the method, we only want to augment
                 * annotations with entries that are not masked by sub-class.
                 */
                _addMixUnders(m, old);

                /* 06-Jan-2010, tatu: [JACKSON-450] Except that if method we saw first is
                 *   from an interface, and we now find a non-interface definition, we should
                 *   use this method, but with combination of annotations.
                 *   This helps (or rather, is essential) with JAXB annotations and
                 *   may also result in faster method calls (interface calls are slightly
                 *   costlier than regular method calls)
                 */
                if (old.getDeclaringClass().isInterface() && !m.getDeclaringClass().isInterface()) {
                    methods.add(old.withMethod(m));
                }
            }
        }
    }

    protected void _addMethodMixIns(Class<?> targetClass, AnnotatedMethodMap methods,
            Class<?> mixInCls, AnnotatedMethodMap mixIns)
    {
//        List<Class<?>> parents = ClassUtil.findSuperClasses(mixInCls, targetClass, true);

        List<Class<?>> parents = ClassUtil.findRawSuperTypes(mixInCls, targetClass, true);
        for (Class<?> mixin : parents) {
            for (Method m : ClassUtil.getDeclaredMethods(mixin)) {
                if (!_isIncludableMemberMethod(m)) {
                    continue;
                }
                AnnotatedMethod am = methods.find(m);
                /* Do we already have a method to augment (from sub-class
                 * that will mask this mixIn)? If so, add if visible
                 * without masking (no such annotation)
                 */
                if (am != null) {
                    _addMixUnders(m, am);
                    /* Otherwise will have precedence, but must wait
                     * until we find the real method (mixIn methods are
                     * just placeholder, can't be called)
                     */
                } else {
                    // Well, or, as per [databind#515], multi-level merge within mixins...
                    am = mixIns.find(m);
                    if (am != null) {
                        _addMixUnders(m, am);
                    } else {
                        // 03-Nov-2015, tatu: Mix-in method never called, should not need
                        //    to resolve generic types, so this class is fine as context
                        mixIns.add(_constructMethod(m, this));
                    }
                }
            }
        }
    }

    /*
    /**********************************************************
    /* Helper methods for populating field information
    /**********************************************************
     */

    protected Map<String,AnnotatedField> _findFields(JavaType type,
            TypeResolutionContext typeContext, Map<String,AnnotatedField> fields)
    {
        int PROBE_START_LINE_825 = 825;
		com.fasterxml.jackson.databind.JavaType p_type_2785_line_825 = type;
		JavaType annotated_class_1_expr152_line_825 = p_type_2785_line_825.getSuperClass();
		int PROBE_END_LINE_825 = 825;
		/* First, a quick test: we only care for regular classes (not
         * interfaces, primitive types etc), except for Object.class.
         * A simple check to rule out other cases is to see if there
         * is a super class or not.
         */
        JavaType parent = annotated_class_1_expr152_line_825;
        int PROBE_START_LINE_826 = 857;
		com.fasterxml.jackson.databind.JavaType v_parent_2788_line_826 = parent;
		boolean annotated_class_1_expr153_line_826 = v_parent_2788_line_826 != null;
		int PROBE_END_LINE_826 = 857;
		if (annotated_class_1_expr153_line_826) {
            int PROBE_START_LINE_827 = 827;
			com.fasterxml.jackson.databind.JavaType p_type_2785_line_827 = type;
			Class<?> annotated_class_1_expr154_line_827 = p_type_2785_line_827.getRawClass();
			int PROBE_END_LINE_827 = 827;
			final Class<?> cls = annotated_class_1_expr154_line_827;
            int PROBE_START_LINE_832 = 834;
			com.fasterxml.jackson.databind.JavaType v_parent_2788_line_832 = parent;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> annotated_class_1_expr156_line_832 = _findFields(
					v_parent_2788_line_832, new TypeResolutionContext.Basic(_typeFactory, parent.getBindings()),
					fields);
			int PROBE_END_LINE_832 = 834;
			// Let's add super-class' fields first, then ours.
            /* 21-Feb-2010, tatu: Need to handle masking: as per [JACKSON-226]
             *    we otherwise get into trouble...
             */
            fields = annotated_class_1_expr156_line_832;
            int PROBE_START_LINE_835 = 849;
			Class<?> v_cls_2789_line_835 = cls;
			java.lang.reflect.Field[] annotated_class_1_expr158_line_835 = ClassUtil
					.getDeclaredFields(v_cls_2789_line_835);
			int PROBE_END_LINE_835 = 849;
			for (Field f : annotated_class_1_expr158_line_835) {
                int PROBE_START_LINE_837 = 839;
				java.lang.reflect.Field v_f_2790_line_837 = f;
				boolean annotated_class_1_expr160_line_837 = _isIncludableField(v_f_2790_line_837);
				boolean annotated_class_1_expr159_line_837 = !annotated_class_1_expr160_line_837;
				int PROBE_END_LINE_837 = 839;
				// static fields not included (transients are at this point, filtered out later)
                if (annotated_class_1_expr159_line_837) {
                    continue;
                }
                int PROBE_START_LINE_845 = 847;
				Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> p_fields_2787_line_845 = fields;
				boolean annotated_class_1_expr161_line_845 = p_fields_2787_line_845 == null;
				int PROBE_END_LINE_845 = 847;
				/* Ok now: we can (and need) not filter out ignorable fields
                 * at this point; partly because mix-ins haven't been
                 * added, and partly because logic can be done when
                 * determining get/settability of the field.
                 */
                if (annotated_class_1_expr161_line_845) {
                    fields = new LinkedHashMap<String,AnnotatedField>();
                }
                int PROBE_START_LINE_848 = 848;
				Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> p_fields_2787_line_848 = fields;
				java.lang.reflect.Field v_f_2790_line_848 = f;
				String annotated_class_1_expr165_line_848 = v_f_2790_line_848.getName();
				java.lang.reflect.Field v_f_2790_line_848_v1 = f;
				com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_type_context_2786_line_848 = typeContext;
				com.fasterxml.jackson.databind.introspect.AnnotatedField annotated_class_1_expr166_line_848 = _constructField(
						v_f_2790_line_848_v1, p_type_context_2786_line_848);
				int PROBE_END_LINE_848 = 848;
				p_fields_2787_line_848.put(annotated_class_1_expr165_line_848, annotated_class_1_expr166_line_848);
            }
            int PROBE_START_LINE_851 = 856;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2716_line_851 = _mixInResolver;
			boolean annotated_class_1_expr167_line_851 = f__mix_in_resolver_2716_line_851 != null;
			int PROBE_END_LINE_851 = 856;
			// And then... any mix-in overrides?
            if (annotated_class_1_expr167_line_851) {
                int PROBE_START_LINE_852 = 852;
				com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2716_line_852 = _mixInResolver;
				Class<?> v_cls_2789_line_852 = cls;
				Class<?> annotated_class_1_expr168_line_852 = f__mix_in_resolver_2716_line_852
						.findMixInClassFor(v_cls_2789_line_852);
				int PROBE_END_LINE_852 = 852;
				Class<?> mixin = annotated_class_1_expr168_line_852;
                int PROBE_START_LINE_853 = 855;
				Class<?> v_mixin_2791_line_853 = mixin;
				boolean annotated_class_1_expr169_line_853 = v_mixin_2791_line_853 != null;
				int PROBE_END_LINE_853 = 855;
				if (annotated_class_1_expr169_line_853) {
                    _addFieldMixIns(mixin, cls, fields);
                }
            }
        }
        int PROBE_START_LINE_858 = 858;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> p_fields_2787_line_858 = fields;
		int PROBE_END_LINE_858 = 858;
		return p_fields_2787_line_858;
    }

    /**
     * Method called to add field mix-ins from given mix-in class (and its fields)
     * into already collected actual fields (from introspected classes and their
     * super-classes)
     */
    protected void _addFieldMixIns(Class<?> mixInCls, Class<?> targetClass,
            Map<String,AnnotatedField> fields)
    {
        List<Class<?>> parents = ClassUtil.findSuperClasses(mixInCls, targetClass, true);
        for (Class<?> mixin : parents) {
            for (Field mixinField : ClassUtil.getDeclaredFields(mixin)) {
                // there are some dummy things (static, synthetic); better ignore
                if (!_isIncludableField(mixinField)) {
                    continue;
                }
                String name = mixinField.getName();
                // anything to mask? (if not, quietly ignore)
                AnnotatedField maskedField = fields.get(name);
                if (maskedField != null) {
                    _addOrOverrideAnnotations(maskedField, mixinField.getDeclaredAnnotations());
                }
            }
        }
    }

    /*
    /**********************************************************
    /* Helper methods, constructing value types
    /**********************************************************
     */

    protected AnnotatedMethod _constructMethod(Method m, TypeResolutionContext typeContext)
    {
        /* note: parameter annotations not used for regular (getter, setter)
         * methods; only for creator methods (static factory methods)
         * -- at least not yet!
         */
        if (_annotationIntrospector == null) { // when annotation processing is disabled
            return new AnnotatedMethod(typeContext, m, _emptyAnnotationMap(), null);
        }
        return new AnnotatedMethod(typeContext, m, _collectRelevantAnnotations(m.getDeclaredAnnotations()), null);
    }

    protected AnnotatedConstructor _constructDefaultConstructor(ClassUtil.Ctor ctor,
            TypeResolutionContext typeContext)
    {
        int PROBE_START_LINE_907 = 909;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2714_line_907 = _annotationIntrospector;
		boolean annotated_class_1_expr170_line_907 = f__annotation_introspector_2714_line_907 == null;
		int PROBE_END_LINE_907 = 909;
		if (annotated_class_1_expr170_line_907) { // when annotation processing is disabled
            return new AnnotatedConstructor(typeContext, ctor.getConstructor(), _emptyAnnotationMap(), NO_ANNOTATION_MAPS);
        }
        int PROBE_START_LINE_910 = 911;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_type_context_2798_line_910 = typeContext;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor p_ctor_2797_line_910 = ctor;
		Constructor<?> annotated_class_1_expr172_line_910 = p_ctor_2797_line_910.getConstructor();
		int PROBE_END_LINE_910 = 911;
		return new AnnotatedConstructor(p_type_context_2798_line_910, annotated_class_1_expr172_line_910,
                _collectRelevantAnnotations(ctor.getDeclaredAnnotations()), NO_ANNOTATION_MAPS);
    }

    protected AnnotatedConstructor _constructNonDefaultConstructor(ClassUtil.Ctor ctor,
            TypeResolutionContext typeContext)
    {
        int PROBE_START_LINE_917 = 917;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor p_ctor_2799_line_917 = ctor;
		int annotated_class_1_expr174_line_917 = p_ctor_2799_line_917.getParamCount();
		int PROBE_END_LINE_917 = 917;
		final int paramCount = annotated_class_1_expr174_line_917;
        int PROBE_START_LINE_918 = 921;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2714_line_918 = _annotationIntrospector;
		boolean annotated_class_1_expr175_line_918 = f__annotation_introspector_2714_line_918 == null;
		int PROBE_END_LINE_918 = 921;
		if (annotated_class_1_expr175_line_918) { // when annotation processing is disabled
            return new AnnotatedConstructor(typeContext, ctor.getConstructor(),
                    _emptyAnnotationMap(), _emptyAnnotationMaps(paramCount));
        }

        int PROBE_START_LINE_927 = 930;
		int v_param_count_2801_line_927 = paramCount;
		boolean annotated_class_1_expr176_line_927 = v_param_count_2801_line_927 == 0;
		int PROBE_END_LINE_927 = 930;
		/* Looks like JDK has discrepancy, whereas annotations for implicit 'this'
         * (for non-static inner classes) are NOT included, but type is?
         * Strange, sounds like a bug. Alas, we can't really fix that...
         */
        if (annotated_class_1_expr176_line_927) { // no-arg default constructors, can simplify slightly
            return new AnnotatedConstructor(typeContext, ctor.getConstructor(),
                    _collectRelevantAnnotations(ctor.getDeclaredAnnotations()), NO_ANNOTATION_MAPS);
        }
        // Also: enum value constructors
        AnnotationMap[] resolvedAnnotations;
        int PROBE_START_LINE_933 = 933;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor p_ctor_2799_line_933 = ctor;
		Annotation[][] annotated_class_1_expr177_line_933 = p_ctor_2799_line_933.getParameterAnnotations();
		int PROBE_END_LINE_933 = 933;
		Annotation[][] paramAnns = annotated_class_1_expr177_line_933;
        int PROBE_START_LINE_934 = 962;
		int v_param_count_2801_line_934 = paramCount;
		java.lang.annotation.Annotation[][] v_param_anns_2802_line_934 = paramAnns;
		int q_length_74_line_934 = v_param_anns_2802_line_934.length;
		boolean annotated_class_1_expr178_line_934 = v_param_count_2801_line_934 != q_length_74_line_934;
		int PROBE_END_LINE_934 = 962;
		if (annotated_class_1_expr178_line_934) {
            // Limits of the work-around (to avoid hiding real errors):
            // first, only applicable for member classes and then either:

            resolvedAnnotations = null;
            Class<?> dc = ctor.getDeclaringClass();
            // (a) is enum, which have two extra hidden params (name, index)
            if (dc.isEnum() && (paramCount == paramAnns.length + 2)) {
                Annotation[][] old = paramAnns;
                paramAnns = new Annotation[old.length+2][];
                System.arraycopy(old, 0, paramAnns, 2, old.length);
                resolvedAnnotations = _collectRelevantAnnotations(paramAnns);
            } else if (dc.isMemberClass()) {
                // (b) non-static inner classes, get implicit 'this' for parameter, not  annotation
                if (paramCount == (paramAnns.length + 1)) {
                    // hack attack: prepend a null entry to make things match
                    Annotation[][] old = paramAnns;
                    paramAnns = new Annotation[old.length+1][];
                    System.arraycopy(old, 0, paramAnns, 1, old.length);
                    resolvedAnnotations = _collectRelevantAnnotations(paramAnns);
                }
            }
            if (resolvedAnnotations == null) {
                throw new IllegalStateException("Internal error: constructor for "+ctor.getDeclaringClass().getName()
                        +" has mismatch: "+paramCount+" parameters; "+paramAnns.length+" sets of annotations");
            }
        } else {
            int PROBE_START_LINE_961 = 961;
			java.lang.annotation.Annotation[][] v_param_anns_2802_line_961 = paramAnns;
			com.fasterxml.jackson.databind.introspect.AnnotationMap[] annotated_class_1_expr180_line_961 = _collectRelevantAnnotations(
					v_param_anns_2802_line_961);
			int PROBE_END_LINE_961 = 961;
			resolvedAnnotations = annotated_class_1_expr180_line_961;
        }
        int PROBE_START_LINE_963 = 964;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_type_context_2800_line_963 = typeContext;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor p_ctor_2799_line_963 = ctor;
		Constructor<?> annotated_class_1_expr182_line_963 = p_ctor_2799_line_963.getConstructor();
		int PROBE_END_LINE_963 = 964;
		return new AnnotatedConstructor(p_type_context_2800_line_963, annotated_class_1_expr182_line_963,
                _collectRelevantAnnotations(ctor.getDeclaredAnnotations()), resolvedAnnotations);
    }

    protected AnnotatedMethod _constructCreatorMethod(Method m, TypeResolutionContext typeContext)
    {
        int PROBE_START_LINE_969 = 969;
		java.lang.reflect.Method p_m_2804_line_969 = m;
		Class<?>[] annotated_class_1_expr185_line_969 = p_m_2804_line_969.getParameterTypes();
		int annotated_class_1_expr184_line_969 = annotated_class_1_expr185_line_969.length;
		int PROBE_END_LINE_969 = 969;
		final int paramCount = annotated_class_1_expr184_line_969;
        int PROBE_START_LINE_970 = 972;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2714_line_970 = _annotationIntrospector;
		boolean annotated_class_1_expr186_line_970 = f__annotation_introspector_2714_line_970 == null;
		int PROBE_END_LINE_970 = 972;
		if (annotated_class_1_expr186_line_970) { // when annotation processing is disabled
            return new AnnotatedMethod(typeContext, m, _emptyAnnotationMap(), _emptyAnnotationMaps(paramCount));
        }
        int PROBE_START_LINE_973 = 976;
		int v_param_count_2806_line_973 = paramCount;
		boolean annotated_class_1_expr187_line_973 = v_param_count_2806_line_973 == 0;
		int PROBE_END_LINE_973 = 976;
		if (annotated_class_1_expr187_line_973) { // common enough we can slightly optimize
            int PROBE_START_LINE_974 = 975;
			com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_type_context_2805_line_974 = typeContext;
			java.lang.reflect.Method p_m_2804_line_974 = m;
			java.lang.reflect.Method p_m_2804_line_974_v1 = m;
			java.lang.annotation.Annotation[] annotated_class_1_expr190_line_974 = p_m_2804_line_974_v1
					.getDeclaredAnnotations();
			com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_class_1_expr189_line_974 = _collectRelevantAnnotations(
					annotated_class_1_expr190_line_974);
			int PROBE_END_LINE_974 = 975;
			return new AnnotatedMethod(p_type_context_2805_line_974, p_m_2804_line_974, annotated_class_1_expr189_line_974,
                    NO_ANNOTATION_MAPS);
        }
        int PROBE_START_LINE_977 = 978;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_type_context_2805_line_977 = typeContext;
		java.lang.reflect.Method p_m_2804_line_977 = m;
		java.lang.reflect.Method p_m_2804_line_977_v1 = m;
		java.lang.annotation.Annotation[] annotated_class_1_expr194_line_977 = p_m_2804_line_977_v1
				.getDeclaredAnnotations();
		com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_class_1_expr192_line_977 = _collectRelevantAnnotations(
				annotated_class_1_expr194_line_977);
		int PROBE_END_LINE_977 = 978;
		return new AnnotatedMethod(p_type_context_2805_line_977, p_m_2804_line_977, annotated_class_1_expr192_line_977,
                                   _collectRelevantAnnotations(m.getParameterAnnotations()));
    }

    protected AnnotatedField _constructField(Field f, TypeResolutionContext typeContext)
    {
        int PROBE_START_LINE_983 = 985;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2714_line_983 = _annotationIntrospector;
		boolean annotated_class_1_expr195_line_983 = f__annotation_introspector_2714_line_983 == null;
		int PROBE_END_LINE_983 = 985;
		if (annotated_class_1_expr195_line_983) { // when annotation processing is disabled
            return new AnnotatedField(typeContext, f, _emptyAnnotationMap());
        }
        int PROBE_START_LINE_986 = 986;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_type_context_2809_line_986 = typeContext;
		java.lang.reflect.Field p_f_2808_line_986 = f;
		java.lang.reflect.Field p_f_2808_line_986_v1 = f;
		java.lang.annotation.Annotation[] annotated_class_1_expr198_line_986 = p_f_2808_line_986_v1
				.getDeclaredAnnotations();
		com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_class_1_expr197_line_986 = _collectRelevantAnnotations(
				annotated_class_1_expr198_line_986);
		int PROBE_END_LINE_986 = 986;
		return new AnnotatedField(p_type_context_2809_line_986, p_f_2808_line_986, annotated_class_1_expr197_line_986);
    }
 
    private AnnotationMap _emptyAnnotationMap() {
        return new AnnotationMap();
    }

    private AnnotationMap[] _emptyAnnotationMaps(int count) {
        if (count == 0) {
            return NO_ANNOTATION_MAPS;
        }
        AnnotationMap[] maps = new AnnotationMap[count];
        for (int i = 0; i < count; ++i) {
            maps[i] = _emptyAnnotationMap();
        }
        return maps;
    }
    
    /*
    /**********************************************************
    /* Helper methods, inclusion filtering
    /**********************************************************
     */

    protected boolean _isIncludableMemberMethod(Method m)
    {
        int PROBE_START_LINE_1012 = 1014;
		java.lang.reflect.Method p_m_2811_line_1012 = m;
		int annotated_class_1_expr200_line_1012 = p_m_2811_line_1012.getModifiers();
		boolean annotated_class_1_expr199_line_1012 = Modifier.isStatic(annotated_class_1_expr200_line_1012);
		int PROBE_END_LINE_1012 = 1014;
		if (annotated_class_1_expr199_line_1012) {
            return false;
        }
        /* 07-Apr-2009, tatu: Looks like generics can introduce hidden
         *   bridge and/or synthetic methods. I don't think we want to
         *   consider those...
         */
        if (m.isSynthetic() || m.isBridge()) {
            return false;
        }
        // also, for now we have no use for methods with 2 or more arguments:
        int pcount = m.getParameterTypes().length;
        return (pcount <= 2);
    }

    private boolean _isIncludableField(Field f)
    {
        int PROBE_START_LINE_1030 = 1032;
		java.lang.reflect.Field p_f_2812_line_1030 = f;
		boolean annotated_class_1_expr201_line_1030 = p_f_2812_line_1030.isSynthetic();
		int PROBE_END_LINE_1030 = 1032;
		// Most likely synthetic fields, if any, are to be skipped similar to methods
        if (annotated_class_1_expr201_line_1030) {
            return false;
        }
        int PROBE_START_LINE_1035 = 1035;
		java.lang.reflect.Field p_f_2812_line_1035 = f;
		int annotated_class_1_expr202_line_1035 = p_f_2812_line_1035.getModifiers();
		int PROBE_END_LINE_1035 = 1035;
		// Static fields are never included. Transient are (since 2.6), for
        // purpose of propagating removal
        int mods = annotated_class_1_expr202_line_1035;
        int PROBE_START_LINE_1036 = 1038;
		int v_mods_2813_line_1036 = mods;
		boolean annotated_class_1_expr203_line_1036 = Modifier.isStatic(v_mods_2813_line_1036);
		int PROBE_END_LINE_1036 = 1038;
		if (annotated_class_1_expr203_line_1036) {
            return false;
        }
        return true;
    }

    // for [databind#1005]: do not use or expose synthetic constructors
    private boolean _isIncludableConstructor(Constructor<?> c)
    {
        int PROBE_START_LINE_1045 = 1045;
		Constructor<?> p_c_2814_line_1045 = c;
		boolean annotated_class_1_expr205_line_1045 = p_c_2814_line_1045.isSynthetic();
		boolean annotated_class_1_expr204_line_1045 = !annotated_class_1_expr205_line_1045;
		int PROBE_END_LINE_1045 = 1045;
		return annotated_class_1_expr204_line_1045;
    }

    /*
    /**********************************************************
    /* Helper methods, attaching annotations
    /**********************************************************
     */

    protected AnnotationMap[] _collectRelevantAnnotations(Annotation[][] anns)
    {
        int PROBE_START_LINE_1056 = 1056;
		java.lang.annotation.Annotation[][] p_anns_2815_line_1056 = anns;
		int q_length_75_line_1056 = p_anns_2815_line_1056.length;
		int PROBE_END_LINE_1056 = 1056;
		int len = q_length_75_line_1056;
        int PROBE_START_LINE_1057 = 1057;
		int v_len_2816_line_1057 = len;
		int PROBE_END_LINE_1057 = 1057;
		AnnotationMap[] result = new AnnotationMap[v_len_2816_line_1057];
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_1059 = 1059;
			int v_i_2818_line_1058 = i;
			int v_len_2816_line_1058 = len;
			boolean annotated_class_1_expr208_line_1058 = v_i_2818_line_1058 < v_len_2816_line_1058;
			if (!(annotated_class_1_expr208_line_1058)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.AnnotationMap[] v_result_2817_line_1059 = result;
			int v_i_2818_line_1059 = i;
			java.lang.annotation.Annotation[][] p_anns_2815_line_1059 = anns;
			int v_i_2818_line_1059_v1 = i;
			java.lang.annotation.Annotation[] annotated_class_1_expr213_line_1059 = p_anns_2815_line_1059[v_i_2818_line_1059_v1];
			com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_class_1_expr212_line_1059 = _collectRelevantAnnotations(
					annotated_class_1_expr213_line_1059);
			int PROBE_END_LINE_1059 = 1059;
			v_result_2817_line_1059[v_i_2818_line_1059] = annotated_class_1_expr212_line_1059;
        }
        int PROBE_START_LINE_1061 = 1061;
		com.fasterxml.jackson.databind.introspect.AnnotationMap[] v_result_2817_line_1061 = result;
		int PROBE_END_LINE_1061 = 1061;
		return v_result_2817_line_1061;
    }

    protected AnnotationMap _collectRelevantAnnotations(Annotation[] anns)
    {
        int PROBE_START_LINE_1066 = 1066;
		java.lang.annotation.Annotation[] p_anns_2819_line_1066 = anns;
		com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_class_1_expr214_line_1066 = _addAnnotationsIfNotPresent(
				new AnnotationMap(), p_anns_2819_line_1066);
		int PROBE_END_LINE_1066 = 1066;
		return annotated_class_1_expr214_line_1066;
    }
    
    /* Helper method used to add all applicable annotations from given set.
     * Takes into account possible "annotation bundles" (meta-annotations to
     * include instead of main-level annotation)
     */
    private AnnotationMap _addAnnotationsIfNotPresent(AnnotationMap result, Annotation[] anns)
    {
        int PROBE_START_LINE_1075 = 1087;
		java.lang.annotation.Annotation[] p_anns_2821_line_1075 = anns;
		boolean annotated_class_1_expr216_line_1075 = p_anns_2821_line_1075 != null;
		int PROBE_END_LINE_1075 = 1087;
		if (annotated_class_1_expr216_line_1075) {
            List<Annotation> fromBundles = null;
            int PROBE_START_LINE_1077 = 1083;
			java.lang.annotation.Annotation[] p_anns_2821_line_1077 = anns;
			int PROBE_END_LINE_1077 = 1083;
			for (Annotation ann : p_anns_2821_line_1077) { // first: direct annotations
                // note: we will NOT filter out non-Jackson anns any more
                boolean wasNotPresent = result.addIfNotPresent(ann);
                if (wasNotPresent && _isAnnotationBundle(ann)) {
                    fromBundles = _addFromBundle(ann, fromBundles);
                }
            }
            int PROBE_START_LINE_1084 = 1086;
			List<java.lang.annotation.Annotation> v_from_bundles_2822_line_1084 = fromBundles;
			boolean annotated_class_1_expr217_line_1084 = v_from_bundles_2822_line_1084 != null;
			int PROBE_END_LINE_1084 = 1086;
			if (annotated_class_1_expr217_line_1084) { // and secondarily handle bundles, if any found: precedence important
                _addAnnotationsIfNotPresent(result, fromBundles.toArray(new Annotation[fromBundles.size()]));
            }
        }
        int PROBE_START_LINE_1088 = 1088;
		com.fasterxml.jackson.databind.introspect.AnnotationMap p_result_2820_line_1088 = result;
		int PROBE_END_LINE_1088 = 1088;
		return p_result_2820_line_1088;
    }

    private List<Annotation> _addFromBundle(Annotation bundle, List<Annotation> result)
    {
        for (Annotation a : ClassUtil.findClassAnnotations(bundle.annotationType())) {
            // minor optimization: by-pass 2 common JDK meta-annotations
            if ((a instanceof Target) || (a instanceof Retention)) {
                continue;
            }
            if (result == null) {
                result = new ArrayList<Annotation>();
            }
            result.add(a);
        }
        return result;
    }
    
    private void _addAnnotationsIfNotPresent(AnnotatedMember target, Annotation[] anns)
    {
        if (anns != null) {
            List<Annotation> fromBundles = null;
            for (Annotation ann : anns) { // first: direct annotations
                boolean wasNotPresent = target.addIfNotPresent(ann);
                if (wasNotPresent && _isAnnotationBundle(ann)) {
                    fromBundles = _addFromBundle(ann, fromBundles);
                }
            }
            if (fromBundles != null) { // and secondarily handle bundles, if any found: precedence important
                _addAnnotationsIfNotPresent(target, fromBundles.toArray(new Annotation[fromBundles.size()]));
            }
        }
    }
    
    private void _addOrOverrideAnnotations(AnnotatedMember target, Annotation[] anns)
    {
        if (anns != null) {
            List<Annotation> fromBundles = null;
            for (Annotation ann : anns) { // first: direct annotations
                boolean wasModified = target.addOrOverride(ann);
                if (wasModified && _isAnnotationBundle(ann)) {
                    fromBundles = _addFromBundle(ann, fromBundles);
                }
            }
            if (fromBundles != null) { // and then bundles, if any: important for precedence
                _addOrOverrideAnnotations(target, fromBundles.toArray(new Annotation[fromBundles.size()]));
            }
        }
    }
    
    /**
     * @param addParamAnnotations Whether parameter annotations are to be
     *   added as well
     */
    protected void _addMixOvers(Constructor<?> mixin, AnnotatedConstructor target,
            boolean addParamAnnotations)
    {
        _addOrOverrideAnnotations(target, mixin.getDeclaredAnnotations());
        if (addParamAnnotations) {
            Annotation[][] pa = mixin.getParameterAnnotations();
            for (int i = 0, len = pa.length; i < len; ++i) {
                for (Annotation a : pa[i]) {
                    target.addOrOverrideParam(i, a);
                }
            }
        }
    }

    /**
     * @param addParamAnnotations Whether parameter annotations are to be
     *   added as well
     */
    protected void _addMixOvers(Method mixin, AnnotatedMethod target,
            boolean addParamAnnotations)
    {
        _addOrOverrideAnnotations(target, mixin.getDeclaredAnnotations());
        if (addParamAnnotations) {
            Annotation[][] pa = mixin.getParameterAnnotations();
            for (int i = 0, len = pa.length; i < len; ++i) {
                for (Annotation a : pa[i]) {
                    target.addOrOverrideParam(i, a);
                }
            }
        }
    }

    /**
     * Method that will add annotations from specified source method to target method,
     * but only if target does not yet have them.
     */
    protected void _addMixUnders(Method src, AnnotatedMethod target) {
        _addAnnotationsIfNotPresent(target, src.getDeclaredAnnotations());
    }

    private final boolean _isAnnotationBundle(Annotation ann) {
        return (_annotationIntrospector != null) && _annotationIntrospector.isAnnotationBundle(ann);
    }

    /**
     * Helper method that gets methods declared in given class; usually a simple thing,
     * but sometimes (as per [databind#785]) more complicated, depending on classloader
     * setup.
     *
     * @since 2.4.7
     */
    protected Method[] _findClassMethods(Class<?> cls)
    {
        try {
            int PROBE_START_LINE_1196 = 1196;
			Class<?> p_cls_2839_line_1196 = cls;
			java.lang.reflect.Method[] annotated_class_1_expr218_line_1196 = ClassUtil
					.getDeclaredMethods(p_cls_2839_line_1196);
			int PROBE_END_LINE_1196 = 1196;
			return annotated_class_1_expr218_line_1196;
        } catch (final NoClassDefFoundError ex) {
            // One of the methods had a class that was not found in the cls.getClassLoader.
            // Maybe the developer was nice and has a different class loader for this context.
            final ClassLoader loader = Thread.currentThread().getContextClassLoader();
            if (loader == null){
                // Nope... this is going to end poorly
                throw ex;
            }
            final Class<?> contextClass;
            try {
                contextClass = loader.loadClass(cls.getName());
            } catch (ClassNotFoundException e) {
                // !!! TODO: 08-May-2015, tatu: Chain appropriately once we have JDK 1.7/Java7 as baseline
                //ex.addSuppressed(e); Not until Jackson 2.7
               throw ex;
            }
            return contextClass.getDeclaredMethods(); // Cross fingers
        }
    }

    /*
    /**********************************************************
    /* Other methods
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
        if (o == null || o.getClass() != getClass()) return false;
        return ((AnnotatedClass) o)._class == _class;
    }
}
