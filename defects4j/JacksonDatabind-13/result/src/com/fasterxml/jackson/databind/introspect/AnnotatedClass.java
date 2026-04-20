package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.*;
import java.util.*;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.List;
import java.util.Map;
import java.util.Collection;
import java.lang.reflect.Field;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public final class AnnotatedClass
    extends Annotated
{
    private final static AnnotationMap[] NO_ANNOTATION_MAPS = new AnnotationMap[0];

    /*
    /**********************************************************
    /* Configuration
    /**********************************************************
     */

    /**
     * Class for which annotations apply, and that owns other
     * components (constructors, methods)
     */
    final protected Class<?> _class;

    /**
     * Ordered set of super classes and interfaces of the
     * class itself: included in order of precedence
     */
    final protected List<Class<?>> _superTypes;

    /**
     * Filter used to determine which annotations to gather; used
     * to optimize things so that unnecessary annotations are
     * ignored.
     */
    final protected AnnotationIntrospector _annotationIntrospector;

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
    protected AnnotationMap _classAnnotations;

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
    protected AnnotatedMethodMap  _memberMethods;

    /**
     * Member fields of interest: ones that are either public,
     * or have at least one annotation.
     */
    protected List<AnnotatedField> _fields;
    
    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    /**
     * Constructor will not do any initializations, to allow for
     * configuring instances differently depending on use cases
     */
    private AnnotatedClass(Class<?> cls, List<Class<?>> superTypes,
            AnnotationIntrospector aintr, MixInResolver mir,
            AnnotationMap classAnnotations)
    {
        int PROBE_START_LINE_115 = 115;
		Class<?> p_cls_2520_line_115 = cls;
		int PROBE_END_LINE_115 = 115;
		_class = p_cls_2520_line_115;
        int PROBE_START_LINE_116 = 116;
		List<Class<?>> p_super_types_2521_line_116 = superTypes;
		int PROBE_END_LINE_116 = 116;
		_superTypes = p_super_types_2521_line_116;
        int PROBE_START_LINE_117 = 117;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_aintr_2522_line_117 = aintr;
		int PROBE_END_LINE_117 = 117;
		_annotationIntrospector = p_aintr_2522_line_117;
        int PROBE_START_LINE_118 = 118;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_mir_2523_line_118 = mir;
		int PROBE_END_LINE_118 = 118;
		_mixInResolver = p_mir_2523_line_118;
        int PROBE_START_LINE_119 = 120;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2528_line_119 = _mixInResolver;
		boolean annotated_class_1_expr10_line_119 = f__mix_in_resolver_2528_line_119 == null;
		boolean annotated_class_1_expr8_line_119 = (annotated_class_1_expr10_line_119);
		Class<?> annotated_class_1_expr7_line_119 = annotated_class_1_expr8_line_119
				? null
				: _mixInResolver.findMixInClassFor(_class);
		int PROBE_END_LINE_119 = 120;
		_primaryMixIn = annotated_class_1_expr7_line_119;
        int PROBE_START_LINE_121 = 121;
		com.fasterxml.jackson.databind.introspect.AnnotationMap p_class_annotations_2524_line_121 = classAnnotations;
		int PROBE_END_LINE_121 = 121;
		_classAnnotations = p_class_annotations_2524_line_121;
    }

    @Override
    public AnnotatedClass withAnnotations(AnnotationMap ann) {
        return new AnnotatedClass(_class, _superTypes,
                _annotationIntrospector, _mixInResolver, ann);
    }
    
    /**
     * Factory method that instantiates an instance. Returned instance
     * will only be initialized with class annotations, but not with
     * any method information.
     */
    public static AnnotatedClass construct(Class<?> cls,
            AnnotationIntrospector aintr, MixInResolver mir)
    {
        int PROBE_START_LINE_138 = 139;
		Class<?> p_cls_2532_line_138 = cls;
		int PROBE_END_LINE_138 = 139;
		return new AnnotatedClass(p_cls_2532_line_138,
                ClassUtil.findSuperTypes(cls, null), aintr, mir, null);
    }

    /**
     * Method similar to {@link #construct}, but that will NOT include
     * information from supertypes; only class itself and any direct
     * mix-ins it may have.
     */
    public static AnnotatedClass constructWithoutSuperTypes(Class<?> cls,
            AnnotationIntrospector aintr, MixInResolver mir)
    {
        int PROBE_START_LINE_150 = 151;
		Class<?> p_cls_2535_line_150 = cls;
		int PROBE_END_LINE_150 = 151;
		return new AnnotatedClass(p_cls_2535_line_150,
                Collections.<Class<?>>emptyList(), aintr, mir, null);
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
    public <A extends Annotation> A getAnnotation(Class<A> acls)
    {
        int PROBE_START_LINE_172 = 174;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_2530_line_172 = _classAnnotations;
		boolean annotated_class_1_expr16_line_172 = f__class_annotations_2530_line_172 == null;
		int PROBE_END_LINE_172 = 174;
		if (annotated_class_1_expr16_line_172) {
            resolveClassAnnotations();
        }
        int PROBE_START_LINE_175 = 175;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_2530_line_175 = _classAnnotations;
		Class<A> p_acls_2538_line_175 = acls;
		A annotated_class_1_expr18_line_175 = f__class_annotations_2530_line_175.get(p_acls_2538_line_175);
		int PROBE_END_LINE_175 = 175;
		return annotated_class_1_expr18_line_175;
    }

    @Override
    public Type getGenericType() {
        return _class;
    }

    @Override
    public Class<?> getRawType() {
        return _class;
    }

    @Override
    public Iterable<Annotation> annotations() {
        if (_classAnnotations == null) {
            resolveClassAnnotations();
        }
        return _classAnnotations.annotations();
    }
    
    @Override
    protected AnnotationMap getAllAnnotations() {
        if (_classAnnotations == null) {
            resolveClassAnnotations();
        }
        return _classAnnotations;
    }
    
    /*
    /**********************************************************
    /* Public API, generic accessors
    /**********************************************************
     */

    public Annotations getAnnotations() {
        int PROBE_START_LINE_211 = 213;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_2530_line_211 = _classAnnotations;
		boolean annotated_class_1_expr19_line_211 = f__class_annotations_2530_line_211 == null;
		int PROBE_END_LINE_211 = 213;
		if (annotated_class_1_expr19_line_211) {
            resolveClassAnnotations();
        }
        int PROBE_START_LINE_214 = 214;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_2530_line_214 = _classAnnotations;
		int PROBE_END_LINE_214 = 214;
		return f__class_annotations_2530_line_214;
    }
    
    public boolean hasAnnotations() {
        if (_classAnnotations == null) {
            resolveClassAnnotations();
        }
        return _classAnnotations.size() > 0;
    }

    public AnnotatedConstructor getDefaultConstructor()
    {
        int PROBE_START_LINE_226 = 228;
		boolean f__creators_resolved_2519_line_226 = _creatorsResolved;
		boolean annotated_class_1_expr20_line_226 = !f__creators_resolved_2519_line_226;
		int PROBE_END_LINE_226 = 228;
		if (annotated_class_1_expr20_line_226) {
            resolveCreators();
        }
        int PROBE_START_LINE_229 = 229;
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor f__default_constructor_2539_line_229 = _defaultConstructor;
		int PROBE_END_LINE_229 = 229;
		return f__default_constructor_2539_line_229;
    }

    public List<AnnotatedConstructor> getConstructors()
    {
        int PROBE_START_LINE_234 = 236;
		boolean f__creators_resolved_2519_line_234 = _creatorsResolved;
		boolean annotated_class_1_expr21_line_234 = !f__creators_resolved_2519_line_234;
		int PROBE_END_LINE_234 = 236;
		if (annotated_class_1_expr21_line_234) {
            resolveCreators();
        }
        int PROBE_START_LINE_237 = 237;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> f__constructors_2540_line_237 = _constructors;
		int PROBE_END_LINE_237 = 237;
		return f__constructors_2540_line_237;
    }

    public List<AnnotatedMethod> getStaticMethods()
    {
        int PROBE_START_LINE_242 = 244;
		boolean f__creators_resolved_2519_line_242 = _creatorsResolved;
		boolean annotated_class_1_expr23_line_242 = !f__creators_resolved_2519_line_242;
		int PROBE_END_LINE_242 = 244;
		if (annotated_class_1_expr23_line_242) {
            resolveCreators();
        }
        int PROBE_START_LINE_245 = 245;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__creator_methods_2541_line_245 = _creatorMethods;
		int PROBE_END_LINE_245 = 245;
		return f__creator_methods_2541_line_245;
    }

    public Iterable<AnnotatedMethod> memberMethods()
    {
        int PROBE_START_LINE_250 = 252;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap f__member_methods_2542_line_250 = _memberMethods;
		boolean annotated_class_1_expr24_line_250 = f__member_methods_2542_line_250 == null;
		int PROBE_END_LINE_250 = 252;
		if (annotated_class_1_expr24_line_250) {
            resolveMemberMethods();
        }
        int PROBE_START_LINE_253 = 253;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap f__member_methods_2542_line_253 = _memberMethods;
		int PROBE_END_LINE_253 = 253;
		return f__member_methods_2542_line_253;
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
        int PROBE_START_LINE_281 = 283;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_2545_line_281 = _fields;
		boolean annotated_class_1_expr26_line_281 = f__fields_2545_line_281 == null;
		int PROBE_END_LINE_281 = 283;
		if (annotated_class_1_expr26_line_281) {
            resolveFields();
        }
        int PROBE_START_LINE_284 = 284;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_2545_line_284 = _fields;
		int PROBE_END_LINE_284 = 284;
		return f__fields_2545_line_284;
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
    private void resolveClassAnnotations()
    {
        _classAnnotations = new AnnotationMap();
        int PROBE_START_LINE_302 = 324;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_302 = _annotationIntrospector;
		boolean annotated_class_1_expr30_line_302 = f__annotation_introspector_2527_line_302 != null;
		int PROBE_END_LINE_302 = 324;
		// [JACKSON-659] Should skip processing if annotation processing disabled
        if (annotated_class_1_expr30_line_302) {
            int PROBE_START_LINE_304 = 306;
			Class<?> f__primary_mix_in_2529_line_304 = _primaryMixIn;
			boolean annotated_class_1_expr31_line_304 = f__primary_mix_in_2529_line_304 != null;
			int PROBE_END_LINE_304 = 306;
			// add mix-in annotations first (overrides)
            if (annotated_class_1_expr31_line_304) {
                _addClassMixIns(_classAnnotations, _class, _primaryMixIn);
            }
            int PROBE_START_LINE_308 = 308;
			com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_2530_line_308 = _classAnnotations;
			Class<?> f__class_2525_line_308 = _class;
			java.lang.annotation.Annotation[] annotated_class_1_expr33_line_308 = f__class_2525_line_308
					.getDeclaredAnnotations();
			int PROBE_END_LINE_308 = 308;
			// first, annotations from the class itself:
            _addAnnotationsIfNotPresent(f__class_annotations_2530_line_308, annotated_class_1_expr33_line_308);
    
            int PROBE_START_LINE_311 = 315;
			List<Class<?>> f__super_types_2526_line_311 = _superTypes;
			int PROBE_END_LINE_311 = 315;
			// and then from super types
            for (Class<?> cls : f__super_types_2526_line_311) {
                int PROBE_START_LINE_313 = 313;
				com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_2530_line_313 = _classAnnotations;
				Class<?> v_cls_2546_line_313 = cls;
				int PROBE_END_LINE_313 = 313;
				// and mix mix-in annotations in-between
                _addClassMixIns(f__class_annotations_2530_line_313, v_cls_2546_line_313);
                int PROBE_START_LINE_314 = 314;
				com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_2530_line_314 = _classAnnotations;
				Class<?> v_cls_2546_line_314 = cls;
				java.lang.annotation.Annotation[] annotated_class_1_expr36_line_314 = v_cls_2546_line_314
						.getDeclaredAnnotations();
				int PROBE_END_LINE_314 = 314;
				_addAnnotationsIfNotPresent(f__class_annotations_2530_line_314, annotated_class_1_expr36_line_314);
            }
            int PROBE_START_LINE_323 = 323;
			com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_2530_line_323 = _classAnnotations;
			int PROBE_END_LINE_323 = 323;
			/* and finally... any annotations there might be for plain
             * old Object.class: separate because for all other purposes
             * it is just ignored (not included in super types)
             */
            /* 12-Jul-2009, tatu: Should this be done for interfaces too?
             *   For now, yes, seems useful for some cases, and not harmful for any?
             */
            _addClassMixIns(f__class_annotations_2530_line_323, Object.class);
        }
    }
    
    /**
     * Initialization method that will find out all constructors
     * and potential static factory methods the class has.
     */
    private void resolveCreators()
    {
        // Then see which constructors we have
        List<AnnotatedConstructor> constructors = null;
        int PROBE_START_LINE_335 = 335;
		Class<?> f__class_2525_line_335 = _class;
		Constructor<?>[] annotated_class_1_expr39_line_335 = f__class_2525_line_335.getDeclaredConstructors();
		int PROBE_END_LINE_335 = 335;
		Constructor<?>[] declaredCtors = annotated_class_1_expr39_line_335;
        int PROBE_START_LINE_336 = 345;
		Constructor<?>[] v_declared_ctors_2548_line_336 = declaredCtors;
		int PROBE_END_LINE_336 = 345;
		for (Constructor<?> ctor : v_declared_ctors_2548_line_336) {
            int PROBE_START_LINE_337 = 344;
			Constructor<?> v_ctor_2549_line_337 = ctor;
			Class<?>[] annotated_class_1_expr42_line_337 = v_ctor_2549_line_337.getParameterTypes();
			int annotated_class_1_expr41_line_337 = annotated_class_1_expr42_line_337.length;
			boolean annotated_class_1_expr40_line_337 = annotated_class_1_expr41_line_337 == 0;
			int PROBE_END_LINE_337 = 344;
			if (annotated_class_1_expr40_line_337) {
                int PROBE_START_LINE_338 = 338;
				Constructor<?> v_ctor_2549_line_338 = ctor;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor annotated_class_1_expr44_line_338 = _constructConstructor(
						v_ctor_2549_line_338, true);
				int PROBE_END_LINE_338 = 338;
				_defaultConstructor = annotated_class_1_expr44_line_338;
            } else {
                int PROBE_START_LINE_340 = 342;
				List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_2547_line_340 = constructors;
				boolean annotated_class_1_expr45_line_340 = v_constructors_2547_line_340 == null;
				int PROBE_END_LINE_340 = 342;
				if (annotated_class_1_expr45_line_340) {
                    int PROBE_START_LINE_341 = 341;
					Constructor<?>[] v_declared_ctors_2548_line_341 = declaredCtors;
					int q_length_88_line_341 = v_declared_ctors_2548_line_341.length;
					int annotated_class_1_expr48_line_341 = Math.max(10, q_length_88_line_341);
					int PROBE_END_LINE_341 = 341;
					constructors = new ArrayList<AnnotatedConstructor>(annotated_class_1_expr48_line_341);
                }
                int PROBE_START_LINE_343 = 343;
				List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_2547_line_343 = constructors;
				Constructor<?> v_ctor_2549_line_343 = ctor;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor annotated_class_1_expr50_line_343 = _constructConstructor(
						v_ctor_2549_line_343, false);
				int PROBE_END_LINE_343 = 343;
				v_constructors_2547_line_343.add(annotated_class_1_expr50_line_343);
            }
        }
        int PROBE_START_LINE_346 = 350;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_2547_line_346 = constructors;
		boolean annotated_class_1_expr51_line_346 = v_constructors_2547_line_346 == null;
		int PROBE_END_LINE_346 = 350;
		if (annotated_class_1_expr51_line_346) {
            _constructors = Collections.emptyList();
        } else {
            int PROBE_START_LINE_349 = 349;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_2547_line_349 = constructors;
			int PROBE_END_LINE_349 = 349;
			_constructors = v_constructors_2547_line_349;
        }
        int PROBE_START_LINE_352 = 356;
		Class<?> f__primary_mix_in_2529_line_352 = _primaryMixIn;
		boolean annotated_class_1_expr53_line_352 = f__primary_mix_in_2529_line_352 != null;
		int PROBE_END_LINE_352 = 356;
		// and if need be, augment with mix-ins
        if (annotated_class_1_expr53_line_352) {
            if (_defaultConstructor != null || !_constructors.isEmpty()) {
                _addConstructorMixIns(_primaryMixIn);
            }
        }


        int PROBE_START_LINE_363 = 377;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_363 = _annotationIntrospector;
		boolean annotated_class_1_expr54_line_363 = f__annotation_introspector_2527_line_363 != null;
		int PROBE_END_LINE_363 = 377;
		/* And then... let's remove all constructors that are deemed
         * ignorable after all annotations have been properly collapsed.
         */
        // 14-Feb-2011, tatu: AnnotationIntrospector is null if annotations not enabled; if so, can skip:
        if (annotated_class_1_expr54_line_363) {
            int PROBE_START_LINE_364 = 368;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor f__default_constructor_2539_line_364 = _defaultConstructor;
			boolean annotated_class_1_expr55_line_364 = f__default_constructor_2539_line_364 != null;
			int PROBE_END_LINE_364 = 368;
			if (annotated_class_1_expr55_line_364) {
                int PROBE_START_LINE_365 = 367;
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_365 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor f__default_constructor_2539_line_365 = _defaultConstructor;
				boolean annotated_class_1_expr56_line_365 = f__annotation_introspector_2527_line_365
						.hasIgnoreMarker(f__default_constructor_2539_line_365);
				int PROBE_END_LINE_365 = 367;
				if (annotated_class_1_expr56_line_365) {
                    _defaultConstructor = null;
                }
            }
            int PROBE_START_LINE_369 = 376;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> f__constructors_2540_line_369 = _constructors;
			boolean annotated_class_1_expr57_line_369 = f__constructors_2540_line_369 != null;
			int PROBE_END_LINE_369 = 376;
			if (annotated_class_1_expr57_line_369) {
                int PROBE_START_LINE_370 = 370;
				boolean FOR_STMT_TOGGLE_LINE_371 = false;
				int PROBE_END_LINE_370 = 370;
				// count down to allow safe removal
                for (int i = 0; true; ) {
                    int PROBE_START_LINE_372 = 374;
					if (!FOR_STMT_TOGGLE_LINE_371) {
						FOR_STMT_TOGGLE_LINE_371 = true;
						List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> f__constructors_2540_line_371 = _constructors;
						int annotated_class_1_expr59_line_371 = f__constructors_2540_line_371.size();
						i = annotated_class_1_expr59_line_371;
					} else {
						if (FOR_STMT_TOGGLE_LINE_371) {
						} else {
							FOR_STMT_TOGGLE_LINE_371 = true;
						}
					}
					boolean annotated_class_1_expr60_line_371 = --i >= 0;
					if (!(annotated_class_1_expr60_line_371)) {
						break;
					}
					com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_372 = _annotationIntrospector;
					List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> f__constructors_2540_line_372 = _constructors;
					int v_i_2551_line_372 = i;
					com.fasterxml.jackson.databind.introspect.AnnotatedConstructor annotated_class_1_expr63_line_372 = f__constructors_2540_line_372
							.get(v_i_2551_line_372);
					boolean annotated_class_1_expr62_line_372 = f__annotation_introspector_2527_line_372
							.hasIgnoreMarker(annotated_class_1_expr63_line_372);
					int PROBE_END_LINE_372 = 374;
					if (annotated_class_1_expr62_line_372) {
                        _constructors.remove(i);
                    }
                }
            }
        }
        List<AnnotatedMethod> creatorMethods = null;
        
        int PROBE_START_LINE_381 = 391;
		Class<?> f__class_2525_line_381 = _class;
		java.lang.reflect.Method[] annotated_class_1_expr64_line_381 = f__class_2525_line_381.getDeclaredMethods();
		int PROBE_END_LINE_381 = 391;
		// Then static methods which are potential factory methods
        for (Method m : annotated_class_1_expr64_line_381) {
            int PROBE_START_LINE_382 = 384;
			java.lang.reflect.Method v_m_2553_line_382 = m;
			int annotated_class_1_expr67_line_382 = v_m_2553_line_382.getModifiers();
			boolean annotated_class_1_expr66_line_382 = Modifier.isStatic(annotated_class_1_expr67_line_382);
			boolean annotated_class_1_expr65_line_382 = !annotated_class_1_expr66_line_382;
			int PROBE_END_LINE_382 = 384;
			if (annotated_class_1_expr65_line_382) {
                continue;
            }
            int PROBE_START_LINE_387 = 389;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_creator_methods_2552_line_387 = creatorMethods;
			boolean annotated_class_1_expr68_line_387 = v_creator_methods_2552_line_387 == null;
			int PROBE_END_LINE_387 = 389;
			// all factory methods are fine, as per [JACKSON-850]
            //int argCount = m.getParameterTypes().length;
            if (annotated_class_1_expr68_line_387) {
                creatorMethods = new ArrayList<AnnotatedMethod>(8);
            }
            int PROBE_START_LINE_390 = 390;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_creator_methods_2552_line_390 = creatorMethods;
			java.lang.reflect.Method v_m_2553_line_390 = m;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod annotated_class_1_expr72_line_390 = _constructCreatorMethod(
					v_m_2553_line_390);
			int PROBE_END_LINE_390 = 390;
			v_creator_methods_2552_line_390.add(annotated_class_1_expr72_line_390);
        }
        int PROBE_START_LINE_392 = 409;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_creator_methods_2552_line_392 = creatorMethods;
		boolean annotated_class_1_expr73_line_392 = v_creator_methods_2552_line_392 == null;
		int PROBE_END_LINE_392 = 409;
		if (annotated_class_1_expr73_line_392) {
            _creatorMethods = Collections.emptyList();
        } else {
            int PROBE_START_LINE_395 = 395;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_creator_methods_2552_line_395 = creatorMethods;
			int PROBE_END_LINE_395 = 395;
			_creatorMethods = v_creator_methods_2552_line_395;
            int PROBE_START_LINE_397 = 399;
			Class<?> f__primary_mix_in_2529_line_397 = _primaryMixIn;
			boolean annotated_class_1_expr75_line_397 = f__primary_mix_in_2529_line_397 != null;
			int PROBE_END_LINE_397 = 399;
			// mix-ins to mix in?
            if (annotated_class_1_expr75_line_397) {
                _addFactoryMixIns(_primaryMixIn);
            }
            int PROBE_START_LINE_401 = 408;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_401 = _annotationIntrospector;
			boolean annotated_class_1_expr76_line_401 = f__annotation_introspector_2527_line_401 != null;
			int PROBE_END_LINE_401 = 408;
			// anything to ignore at this point?
            if (annotated_class_1_expr76_line_401) {
                int PROBE_START_LINE_402 = 402;
				boolean FOR_STMT_TOGGLE_LINE_403 = false;
				int PROBE_END_LINE_402 = 402;
				// count down to allow safe removal
                for (int i = 0; true; ) {
                    int PROBE_START_LINE_404 = 406;
					if (!FOR_STMT_TOGGLE_LINE_403) {
						FOR_STMT_TOGGLE_LINE_403 = true;
						List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__creator_methods_2541_line_403 = _creatorMethods;
						int annotated_class_1_expr78_line_403 = f__creator_methods_2541_line_403.size();
						i = annotated_class_1_expr78_line_403;
					} else {
						if (FOR_STMT_TOGGLE_LINE_403) {
						} else {
							FOR_STMT_TOGGLE_LINE_403 = true;
						}
					}
					boolean annotated_class_1_expr79_line_403 = --i >= 0;
					if (!(annotated_class_1_expr79_line_403)) {
						break;
					}
					com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_404 = _annotationIntrospector;
					List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__creator_methods_2541_line_404 = _creatorMethods;
					int v_i_2554_line_404 = i;
					com.fasterxml.jackson.databind.introspect.AnnotatedMethod annotated_class_1_expr82_line_404 = f__creator_methods_2541_line_404
							.get(v_i_2554_line_404);
					boolean annotated_class_1_expr81_line_404 = f__annotation_introspector_2527_line_404
							.hasIgnoreMarker(annotated_class_1_expr82_line_404);
					int PROBE_END_LINE_404 = 406;
					if (annotated_class_1_expr81_line_404) {
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
        _memberMethods = new AnnotatedMethodMap();
        AnnotatedMethodMap mixins = new AnnotatedMethodMap();
        int PROBE_START_LINE_424 = 424;
		Class<?> f__class_2525_line_424 = _class;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap f__member_methods_2542_line_424 = _memberMethods;
		Class<?> f__primary_mix_in_2529_line_424 = _primaryMixIn;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_mixins_2555_line_424 = mixins;
		int PROBE_END_LINE_424 = 424;
		// first: methods from the class itself
        _addMemberMethods(f__class_2525_line_424, f__member_methods_2542_line_424, f__primary_mix_in_2529_line_424, v_mixins_2555_line_424);

        int PROBE_START_LINE_427 = 430;
		List<Class<?>> f__super_types_2526_line_427 = _superTypes;
		int PROBE_END_LINE_427 = 430;
		// and then augment these with annotations from super-types:
        for (Class<?> cls : f__super_types_2526_line_427) {
            int PROBE_START_LINE_428 = 428;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2528_line_428 = _mixInResolver;
			boolean annotated_class_1_expr91_line_428 = f__mix_in_resolver_2528_line_428 == null;
			boolean annotated_class_1_expr89_line_428 = (annotated_class_1_expr91_line_428);
			Class<?> annotated_class_1_expr90_line_428 = null;
			if (!annotated_class_1_expr89_line_428) {
				com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2528_line_428_v1 = _mixInResolver;
				Class<?> v_cls_2556_line_428 = cls;
				annotated_class_1_expr90_line_428 = f__mix_in_resolver_2528_line_428_v1
						.findMixInClassFor(v_cls_2556_line_428);
			}
			Class<?> annotated_class_1_expr88_line_428 = annotated_class_1_expr89_line_428
					? null
					: annotated_class_1_expr90_line_428;
			int PROBE_END_LINE_428 = 428;
			Class<?> mixin = annotated_class_1_expr88_line_428;         
            int PROBE_START_LINE_429 = 429;
			Class<?> v_cls_2556_line_429 = cls;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap f__member_methods_2542_line_429 = _memberMethods;
			Class<?> v_mixin_2557_line_429 = mixin;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_mixins_2555_line_429 = mixins;
			int PROBE_END_LINE_429 = 429;
			_addMemberMethods(v_cls_2556_line_429, f__member_methods_2542_line_429, v_mixin_2557_line_429, v_mixins_2555_line_429);
        }
        int PROBE_START_LINE_432 = 437;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2528_line_432 = _mixInResolver;
		boolean annotated_class_1_expr93_line_432 = f__mix_in_resolver_2528_line_432 != null;
		int PROBE_END_LINE_432 = 437;
		// Special case: mix-ins for Object.class? (to apply to ALL classes)
        if (annotated_class_1_expr93_line_432) {
            int PROBE_START_LINE_433 = 433;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2528_line_433 = _mixInResolver;
			Class<?> annotated_class_1_expr94_line_433 = f__mix_in_resolver_2528_line_433
					.findMixInClassFor(Object.class);
			int PROBE_END_LINE_433 = 433;
			Class<?> mixin = annotated_class_1_expr94_line_433;
            int PROBE_START_LINE_434 = 436;
			Class<?> v_mixin_2558_line_434 = mixin;
			boolean annotated_class_1_expr96_line_434 = v_mixin_2558_line_434 != null;
			int PROBE_END_LINE_434 = 436;
			if (annotated_class_1_expr96_line_434) {
                _addMethodMixIns(_class, _memberMethods, mixin, mixins);
            }
        }

        int PROBE_START_LINE_445 = 460;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_445 = _annotationIntrospector;
		boolean annotated_class_1_expr97_line_445 = f__annotation_introspector_2527_line_445 != null;
		int PROBE_END_LINE_445 = 460;
		/* Any unmatched mix-ins? Most likely error cases (not matching
         * any method); but there is one possible real use case:
         * exposing Object#hashCode (alas, Object#getClass can NOT be
         * exposed, see [JACKSON-140])
         */
        // 14-Feb-2011, tatu: AnnotationIntrospector is null if annotations not enabled; if so, can skip:
        if (annotated_class_1_expr97_line_445) {
            int PROBE_START_LINE_446 = 459;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_mixins_2555_line_446 = mixins;
			boolean annotated_class_1_expr99_line_446 = v_mixins_2555_line_446.isEmpty();
			boolean annotated_class_1_expr98_line_446 = !annotated_class_1_expr99_line_446;
			int PROBE_END_LINE_446 = 459;
			if (annotated_class_1_expr98_line_446) {
                Iterator<AnnotatedMethod> it = mixins.iterator();
                while (it.hasNext()) {
                    AnnotatedMethod mixIn = it.next();
                    try {
                        Method m = Object.class.getDeclaredMethod(mixIn.getName(), mixIn.getRawParameterTypes());
                        if (m != null) {
                            AnnotatedMethod am = _constructMethod(m);
                            _addMixOvers(mixIn.getAnnotated(), am, false);
                            _memberMethods.add(am);
                        }
                    } catch (Exception e) { }
                }
            }
        }
    }
    
    /**
     * Method that will collect all member (non-static) fields
     * that are either public, or have at least a single annotation
     * associated with them.
     */
    private void resolveFields()
    {
        int PROBE_START_LINE_470 = 470;
		Class<?> f__class_2525_line_470 = _class;
		Map<String, AnnotatedField> annotated_class_1_expr100_line_470 = _findFields(f__class_2525_line_470, null);
		int PROBE_END_LINE_470 = 470;
		Map<String,AnnotatedField> foundFields = annotated_class_1_expr100_line_470;
        int PROBE_START_LINE_471 = 476;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> v_found_fields_2559_line_471 = foundFields;
		boolean annotated_class_1_expr102_line_471 = v_found_fields_2559_line_471 == null;
		boolean annotated_class_1_expr103_line_471 = false;
		if (!annotated_class_1_expr102_line_471) {
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> v_found_fields_2559_line_471_v1 = foundFields;
			int annotated_class_1_expr104_line_471 = v_found_fields_2559_line_471_v1.size();
			annotated_class_1_expr103_line_471 = annotated_class_1_expr104_line_471 == 0;
		}
		boolean annotated_class_1_expr101_line_471 = annotated_class_1_expr102_line_471
				|| annotated_class_1_expr103_line_471;
		int PROBE_END_LINE_471 = 476;
		if (annotated_class_1_expr101_line_471) {
            _fields = Collections.emptyList();
        } else {
            int PROBE_START_LINE_474 = 474;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> v_found_fields_2559_line_474 = foundFields;
			int annotated_class_1_expr107_line_474 = v_found_fields_2559_line_474.size();
			int PROBE_END_LINE_474 = 474;
			_fields = new ArrayList<AnnotatedField>(annotated_class_1_expr107_line_474);
            int PROBE_START_LINE_475 = 475;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_2545_line_475 = _fields;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> v_found_fields_2559_line_475 = foundFields;
			Collection<com.fasterxml.jackson.databind.introspect.AnnotatedField> annotated_class_1_expr109_line_475 = v_found_fields_2559_line_475
					.values();
			int PROBE_END_LINE_475 = 475;
			f__fields_2545_line_475.addAll(annotated_class_1_expr109_line_475);
        }
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
    protected void _addClassMixIns(AnnotationMap annotations, Class<?> toMask)
    {
        int PROBE_START_LINE_493 = 495;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2528_line_493 = _mixInResolver;
		boolean annotated_class_1_expr110_line_493 = f__mix_in_resolver_2528_line_493 != null;
		int PROBE_END_LINE_493 = 495;
		if (annotated_class_1_expr110_line_493) {
            int PROBE_START_LINE_494 = 494;
			com.fasterxml.jackson.databind.introspect.AnnotationMap p_annotations_2560_line_494 = annotations;
			Class<?> p_to_mask_2561_line_494 = toMask;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2528_line_494 = _mixInResolver;
			Class<?> p_to_mask_2561_line_494_v1 = toMask;
			Class<?> annotated_class_1_expr112_line_494 = f__mix_in_resolver_2528_line_494
					.findMixInClassFor(p_to_mask_2561_line_494_v1);
			int PROBE_END_LINE_494 = 494;
			_addClassMixIns(p_annotations_2560_line_494, p_to_mask_2561_line_494, annotated_class_1_expr112_line_494);
        }
    }

    protected void _addClassMixIns(AnnotationMap annotations, Class<?> toMask,
                                   Class<?> mixin)
    {
        int PROBE_START_LINE_501 = 503;
		Class<?> p_mixin_2564_line_501 = mixin;
		boolean annotated_class_1_expr113_line_501 = p_mixin_2564_line_501 == null;
		int PROBE_END_LINE_501 = 503;
		if (annotated_class_1_expr113_line_501) {
            return;
        }
        // Ok, first: annotations from mix-in class itself:
        _addAnnotationsIfNotPresent(annotations, mixin.getDeclaredAnnotations());

        /* And then from its supertypes, if any. But note that we will
         * only consider super-types up until reaching the masked
         * class (if found); this because often mix-in class
         * is a sub-class (for convenience reasons). And if so, we
         * absolutely must NOT include super types of masked class,
         * as that would inverse precedence of annotations.
         */
        for (Class<?> parent : ClassUtil.findSuperTypes(mixin, toMask)) {
            _addAnnotationsIfNotPresent(annotations, parent.getDeclaredAnnotations());
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
        for (Constructor<?> ctor : mixin.getDeclaredConstructors()) {
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

        for (Method m : mixin.getDeclaredMethods()) {
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

    protected void _addMemberMethods(Class<?> cls, AnnotatedMethodMap methods,
            Class<?> mixInCls, AnnotatedMethodMap mixIns)
    {
        int PROBE_START_LINE_593 = 595;
		Class<?> p_mix_in_cls_2569_line_593 = mixInCls;
		boolean annotated_class_1_expr114_line_593 = p_mix_in_cls_2569_line_593 != null;
		int PROBE_END_LINE_593 = 595;
		// first, mixIns, since they have higher priority then class methods
        if (annotated_class_1_expr114_line_593) {
            _addMethodMixIns(cls, methods, mixInCls, mixIns);
        }        
        int PROBE_START_LINE_596 = 598;
		Class<?> p_cls_2567_line_596 = cls;
		boolean annotated_class_1_expr115_line_596 = p_cls_2567_line_596 == null;
		int PROBE_END_LINE_596 = 598;
		if (annotated_class_1_expr115_line_596) { // just so caller need not check when passing super-class
            return;
        }

        int PROBE_START_LINE_601 = 631;
		Class<?> p_cls_2567_line_601 = cls;
		java.lang.reflect.Method[] annotated_class_1_expr116_line_601 = p_cls_2567_line_601.getDeclaredMethods();
		int PROBE_END_LINE_601 = 631;
		// then methods from the class itself
        for (Method m : annotated_class_1_expr116_line_601) {
            int PROBE_START_LINE_602 = 604;
			java.lang.reflect.Method v_m_2571_line_602 = m;
			boolean annotated_class_1_expr118_line_602 = _isIncludableMemberMethod(v_m_2571_line_602);
			boolean annotated_class_1_expr117_line_602 = !annotated_class_1_expr118_line_602;
			int PROBE_END_LINE_602 = 604;
			if (annotated_class_1_expr117_line_602) {
                continue;
            }
            int PROBE_START_LINE_605 = 605;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap p_methods_2568_line_605 = methods;
			java.lang.reflect.Method v_m_2571_line_605 = m;
			AnnotatedMethod annotated_class_1_expr119_line_605 = p_methods_2568_line_605.find(v_m_2571_line_605);
			int PROBE_END_LINE_605 = 605;
			AnnotatedMethod old = annotated_class_1_expr119_line_605;
            int PROBE_START_LINE_606 = 630;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_old_2572_line_606 = old;
			boolean annotated_class_1_expr120_line_606 = v_old_2572_line_606 == null;
			int PROBE_END_LINE_606 = 630;
			if (annotated_class_1_expr120_line_606) {
                int PROBE_START_LINE_607 = 607;
				java.lang.reflect.Method v_m_2571_line_607 = m;
				AnnotatedMethod annotated_class_1_expr121_line_607 = _constructMethod(v_m_2571_line_607);
				int PROBE_END_LINE_607 = 607;
				AnnotatedMethod newM = annotated_class_1_expr121_line_607;
                int PROBE_START_LINE_608 = 608;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap p_methods_2568_line_608 = methods;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_new_m_2573_line_608 = newM;
				int PROBE_END_LINE_608 = 608;
				p_methods_2568_line_608.add(v_new_m_2573_line_608);
                int PROBE_START_LINE_610 = 610;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap p_mix_ins_2570_line_610 = mixIns;
				java.lang.reflect.Method v_m_2571_line_610 = m;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod annotated_class_1_expr124_line_610 = p_mix_ins_2570_line_610
						.remove(v_m_2571_line_610);
				int PROBE_END_LINE_610 = 610;
				// Ok, but is there a mix-in to connect now?
                old = annotated_class_1_expr124_line_610;
                int PROBE_START_LINE_611 = 613;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_old_2572_line_611 = old;
				boolean annotated_class_1_expr125_line_611 = v_old_2572_line_611 != null;
				int PROBE_END_LINE_611 = 613;
				if (annotated_class_1_expr125_line_611) {
                    _addMixOvers(old.getAnnotated(), newM, false);
                }
            } else {
                int PROBE_START_LINE_618 = 618;
				java.lang.reflect.Method v_m_2571_line_618 = m;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_old_2572_line_618 = old;
				int PROBE_END_LINE_618 = 618;
				/* If sub-class already has the method, we only want to augment
                 * annotations with entries that are not masked by sub-class.
                 */
                _addMixUnders(v_m_2571_line_618, v_old_2572_line_618);

                int PROBE_START_LINE_627 = 629;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_old_2572_line_627 = old;
				Class<?> annotated_class_1_expr129_line_627 = v_old_2572_line_627.getDeclaringClass();
				boolean annotated_class_1_expr128_line_627 = annotated_class_1_expr129_line_627.isInterface();
				boolean annotated_class_1_expr130_line_627 = true;
				if (annotated_class_1_expr128_line_627) {
					java.lang.reflect.Method v_m_2571_line_627 = m;
					Class<?> annotated_class_1_expr132_line_627 = v_m_2571_line_627.getDeclaringClass();
					boolean annotated_class_1_expr131_line_627 = annotated_class_1_expr132_line_627.isInterface();
					annotated_class_1_expr130_line_627 = !annotated_class_1_expr131_line_627;
				}
				boolean annotated_class_1_expr127_line_627 = annotated_class_1_expr128_line_627
						&& annotated_class_1_expr130_line_627;
				int PROBE_END_LINE_627 = 629;
				/* 06-Jan-2010, tatu: [JACKSON-450] Except that if method we saw first is
                 *   from an interface, and we now find a non-interface definition, we should
                 *   use this method, but with combination of annotations.
                 *   This helps (or rather, is essential) with JAXB annotations and
                 *   may also result in faster method calls (interface calls are slightly
                 *   costlier than regular method calls)
                 */
                if (annotated_class_1_expr127_line_627) {
                    methods.add(old.withMethod(m));
                }
            }
        }
    }

    protected void _addMethodMixIns(Class<?> targetClass, AnnotatedMethodMap methods,
            Class<?> mixInCls, AnnotatedMethodMap mixIns)
    {
        List<Class<?>> parents = new ArrayList<Class<?>>();
        parents.add(mixInCls);
        ClassUtil.findSuperTypes(mixInCls, targetClass, parents);
        for (Class<?> mixin : parents) {
            for (Method m : mixin.getDeclaredMethods()) {
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
                    // Well, or, as per [Issue#515], multi-level merge within mixins...
                    am = mixIns.find(m);
                    if (am != null) {
                        _addMixUnders(m, am);
                    } else {
                        mixIns.add(_constructMethod(m));
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

    protected Map<String,AnnotatedField> _findFields(Class<?> c, Map<String,AnnotatedField> fields)
    {
        int PROBE_START_LINE_682 = 682;
		Class<?> p_c_2578_line_682 = c;
		Class<?> annotated_class_1_expr133_line_682 = p_c_2578_line_682.getSuperclass();
		int PROBE_END_LINE_682 = 682;
		/* First, a quick test: we only care for regular classes (not
         * interfaces, primitive types etc), except for Object.class.
         * A simple check to rule out other cases is to see if there
         * is a super class or not.
         */
        Class<?> parent = annotated_class_1_expr133_line_682;
        int PROBE_START_LINE_683 = 711;
		Class<?> v_parent_2580_line_683 = parent;
		boolean annotated_class_1_expr134_line_683 = v_parent_2580_line_683 != null;
		int PROBE_END_LINE_683 = 711;
		if (annotated_class_1_expr134_line_683) {
            int PROBE_START_LINE_688 = 688;
			Class<?> v_parent_2580_line_688 = parent;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> p_fields_2579_line_688 = fields;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> annotated_class_1_expr136_line_688 = _findFields(
					v_parent_2580_line_688, p_fields_2579_line_688);
			int PROBE_END_LINE_688 = 688;
			// Let's add super-class' fields first, then ours.
            /* 21-Feb-2010, tatu: Need to handle masking: as per [JACKSON-226]
             *    we otherwise get into trouble...
             */
            fields = annotated_class_1_expr136_line_688;
            int PROBE_START_LINE_689 = 703;
			Class<?> p_c_2578_line_689 = c;
			java.lang.reflect.Field[] annotated_class_1_expr137_line_689 = p_c_2578_line_689.getDeclaredFields();
			int PROBE_END_LINE_689 = 703;
			for (Field f : annotated_class_1_expr137_line_689) {
                int PROBE_START_LINE_691 = 693;
				java.lang.reflect.Field v_f_2581_line_691 = f;
				boolean annotated_class_1_expr139_line_691 = _isIncludableField(v_f_2581_line_691);
				boolean annotated_class_1_expr138_line_691 = !annotated_class_1_expr139_line_691;
				int PROBE_END_LINE_691 = 693;
				// static fields not included, nor transient
                if (annotated_class_1_expr138_line_691) {
                    continue;
                }
                int PROBE_START_LINE_699 = 701;
				Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> p_fields_2579_line_699 = fields;
				boolean annotated_class_1_expr140_line_699 = p_fields_2579_line_699 == null;
				int PROBE_END_LINE_699 = 701;
				/* Ok now: we can (and need) not filter out ignorable fields
                 * at this point; partly because mix-ins haven't been
                 * added, and partly because logic can be done when
                 * determining get/settability of the field.
                 */
                if (annotated_class_1_expr140_line_699) {
                    fields = new LinkedHashMap<String,AnnotatedField>();
                }
                int PROBE_START_LINE_702 = 702;
				Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> p_fields_2579_line_702 = fields;
				java.lang.reflect.Field v_f_2581_line_702 = f;
				String annotated_class_1_expr144_line_702 = v_f_2581_line_702.getName();
				java.lang.reflect.Field v_f_2581_line_702_v1 = f;
				com.fasterxml.jackson.databind.introspect.AnnotatedField annotated_class_1_expr145_line_702 = _constructField(
						v_f_2581_line_702_v1);
				int PROBE_END_LINE_702 = 702;
				p_fields_2579_line_702.put(annotated_class_1_expr144_line_702, annotated_class_1_expr145_line_702);
            }
            int PROBE_START_LINE_705 = 710;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2528_line_705 = _mixInResolver;
			boolean annotated_class_1_expr146_line_705 = f__mix_in_resolver_2528_line_705 != null;
			int PROBE_END_LINE_705 = 710;
			// And then... any mix-in overrides?
            if (annotated_class_1_expr146_line_705) {
                int PROBE_START_LINE_706 = 706;
				com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_2528_line_706 = _mixInResolver;
				Class<?> p_c_2578_line_706 = c;
				Class<?> annotated_class_1_expr147_line_706 = f__mix_in_resolver_2528_line_706
						.findMixInClassFor(p_c_2578_line_706);
				int PROBE_END_LINE_706 = 706;
				Class<?> mixin = annotated_class_1_expr147_line_706;
                int PROBE_START_LINE_707 = 709;
				Class<?> v_mixin_2582_line_707 = mixin;
				boolean annotated_class_1_expr148_line_707 = v_mixin_2582_line_707 != null;
				int PROBE_END_LINE_707 = 709;
				if (annotated_class_1_expr148_line_707) {
                    _addFieldMixIns(parent, mixin, fields);
                }
            }
        }
        int PROBE_START_LINE_712 = 712;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> p_fields_2579_line_712 = fields;
		int PROBE_END_LINE_712 = 712;
		return p_fields_2579_line_712;
    }

    /**
     * Method called to add field mix-ins from given mix-in class (and its fields)
     * into already collected actual fields (from introspected classes and their
     * super-classes)
     */
    protected void _addFieldMixIns(Class<?> targetClass, Class<?> mixInCls,
            Map<String,AnnotatedField> fields)
    {
        List<Class<?>> parents = new ArrayList<Class<?>>();
        parents.add(mixInCls);
        ClassUtil.findSuperTypes(mixInCls, targetClass, parents);
        for (Class<?> mixin : parents) {
            for (Field mixinField : mixin.getDeclaredFields()) {
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

    protected AnnotatedMethod _constructMethod(Method m)
    {
        int PROBE_START_LINE_754 = 756;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_754 = _annotationIntrospector;
		boolean annotated_class_1_expr149_line_754 = f__annotation_introspector_2527_line_754 == null;
		int PROBE_END_LINE_754 = 756;
		/* note: parameter annotations not used for regular (getter, setter)
         * methods; only for creator methods (static factory methods)
         * -- at least not yet!
         */
        if (annotated_class_1_expr149_line_754) { // when annotation processing is disabled
            return new AnnotatedMethod(this, m, _emptyAnnotationMap(), null);
        }
        int PROBE_START_LINE_757 = 757;
		java.lang.reflect.Method p_m_2586_line_757 = m;
		java.lang.reflect.Method p_m_2586_line_757_v1 = m;
		java.lang.annotation.Annotation[] annotated_class_1_expr153_line_757 = p_m_2586_line_757_v1
				.getDeclaredAnnotations();
		com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_class_1_expr152_line_757 = _collectRelevantAnnotations(
				annotated_class_1_expr153_line_757);
		int PROBE_END_LINE_757 = 757;
		return new AnnotatedMethod(this, p_m_2586_line_757, annotated_class_1_expr152_line_757, null);
    }

    protected AnnotatedConstructor _constructConstructor(Constructor<?> ctor, boolean defaultCtor)
    {
        int PROBE_START_LINE_762 = 764;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_762 = _annotationIntrospector;
		boolean annotated_class_1_expr154_line_762 = f__annotation_introspector_2527_line_762 == null;
		int PROBE_END_LINE_762 = 764;
		if (annotated_class_1_expr154_line_762) { // when annotation processing is disabled
            return new AnnotatedConstructor(this, ctor, _emptyAnnotationMap(), _emptyAnnotationMaps(ctor.getParameterTypes().length));
        }
        int PROBE_START_LINE_765 = 767;
		boolean p_default_ctor_2588_line_765 = defaultCtor;
		int PROBE_END_LINE_765 = 767;
		if (p_default_ctor_2588_line_765) {
            int PROBE_START_LINE_766 = 766;
			Constructor<?> p_ctor_2587_line_766 = ctor;
			Constructor<?> p_ctor_2587_line_766_v1 = ctor;
			java.lang.annotation.Annotation[] annotated_class_1_expr158_line_766 = p_ctor_2587_line_766_v1
					.getDeclaredAnnotations();
			com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_class_1_expr157_line_766 = _collectRelevantAnnotations(
					annotated_class_1_expr158_line_766);
			int PROBE_END_LINE_766 = 766;
			return new AnnotatedConstructor(this, p_ctor_2587_line_766, annotated_class_1_expr157_line_766, null);
        }
        int PROBE_START_LINE_768 = 768;
		Constructor<?> p_ctor_2587_line_768 = ctor;
		Annotation[][] annotated_class_1_expr159_line_768 = p_ctor_2587_line_768.getParameterAnnotations();
		int PROBE_END_LINE_768 = 768;
		Annotation[][] paramAnns = annotated_class_1_expr159_line_768;
        int PROBE_START_LINE_769 = 769;
		Constructor<?> p_ctor_2587_line_769 = ctor;
		Class<?>[] annotated_class_1_expr161_line_769 = p_ctor_2587_line_769.getParameterTypes();
		int annotated_class_1_expr160_line_769 = annotated_class_1_expr161_line_769.length;
		int PROBE_END_LINE_769 = 769;
		int paramCount = annotated_class_1_expr160_line_769;
        /* [JACKSON-701]: Looks like JDK has discrepancy, whereas annotations for implicit 'this'
         * (for non-static inner classes) are NOT included, but type is? Strange, sounds like
         * a bug. Alas, we can't really fix that...
         */
        // Also: [JACKSON-757] (enum value constructors)
        AnnotationMap[] resolvedAnnotations = null;
        int PROBE_START_LINE_776 = 803;
		int v_param_count_2590_line_776 = paramCount;
		java.lang.annotation.Annotation[][] v_param_anns_2589_line_776 = paramAnns;
		int q_length_89_line_776 = v_param_anns_2589_line_776.length;
		boolean annotated_class_1_expr162_line_776 = v_param_count_2590_line_776 != q_length_89_line_776;
		int PROBE_END_LINE_776 = 803;
		if (annotated_class_1_expr162_line_776) {
            // Limits of the work-around (to avoid hiding real errors):
            // first, only applicable for member classes and then either:

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
            int PROBE_START_LINE_802 = 802;
			java.lang.annotation.Annotation[][] v_param_anns_2589_line_802 = paramAnns;
			com.fasterxml.jackson.databind.introspect.AnnotationMap[] annotated_class_1_expr164_line_802 = _collectRelevantAnnotations(
					v_param_anns_2589_line_802);
			int PROBE_END_LINE_802 = 802;
			resolvedAnnotations = annotated_class_1_expr164_line_802;
        }
        int PROBE_START_LINE_804 = 805;
		Constructor<?> p_ctor_2587_line_804 = ctor;
		int PROBE_END_LINE_804 = 805;
		return new AnnotatedConstructor(this, p_ctor_2587_line_804,
                _collectRelevantAnnotations(ctor.getDeclaredAnnotations()), resolvedAnnotations);
    }

    protected AnnotatedMethod _constructCreatorMethod(Method m)
    {
        int PROBE_START_LINE_810 = 812;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_810 = _annotationIntrospector;
		boolean annotated_class_1_expr168_line_810 = f__annotation_introspector_2527_line_810 == null;
		int PROBE_END_LINE_810 = 812;
		if (annotated_class_1_expr168_line_810) { // when annotation processing is disabled
            return new AnnotatedMethod(this, m, _emptyAnnotationMap(), _emptyAnnotationMaps(m.getParameterTypes().length));
        }
        int PROBE_START_LINE_813 = 814;
		java.lang.reflect.Method p_m_2592_line_813 = m;
		java.lang.reflect.Method p_m_2592_line_813_v1 = m;
		java.lang.annotation.Annotation[] annotated_class_1_expr173_line_813 = p_m_2592_line_813_v1
				.getDeclaredAnnotations();
		com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_class_1_expr171_line_813 = _collectRelevantAnnotations(
				annotated_class_1_expr173_line_813);
		int PROBE_END_LINE_813 = 814;
		return new AnnotatedMethod(this, p_m_2592_line_813, annotated_class_1_expr171_line_813,
                                   _collectRelevantAnnotations(m.getParameterAnnotations()));
    }

    protected AnnotatedField _constructField(Field f)
    {
        int PROBE_START_LINE_819 = 821;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_819 = _annotationIntrospector;
		boolean annotated_class_1_expr174_line_819 = f__annotation_introspector_2527_line_819 == null;
		int PROBE_END_LINE_819 = 821;
		if (annotated_class_1_expr174_line_819) { // when annotation processing is disabled
            return new AnnotatedField(this, f, _emptyAnnotationMap());
        }
        int PROBE_START_LINE_822 = 822;
		java.lang.reflect.Field p_f_2593_line_822 = f;
		java.lang.reflect.Field p_f_2593_line_822_v1 = f;
		java.lang.annotation.Annotation[] annotated_class_1_expr178_line_822 = p_f_2593_line_822_v1
				.getDeclaredAnnotations();
		com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_class_1_expr177_line_822 = _collectRelevantAnnotations(
				annotated_class_1_expr178_line_822);
		int PROBE_END_LINE_822 = 822;
		return new AnnotatedField(this, p_f_2593_line_822, annotated_class_1_expr177_line_822);
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
        int PROBE_START_LINE_848 = 850;
		java.lang.reflect.Method p_m_2595_line_848 = m;
		int annotated_class_1_expr180_line_848 = p_m_2595_line_848.getModifiers();
		boolean annotated_class_1_expr179_line_848 = Modifier.isStatic(annotated_class_1_expr180_line_848);
		int PROBE_END_LINE_848 = 850;
		if (annotated_class_1_expr179_line_848) {
            return false;
        }
        int PROBE_START_LINE_855 = 857;
		java.lang.reflect.Method p_m_2595_line_855 = m;
		boolean annotated_class_1_expr182_line_855 = p_m_2595_line_855.isSynthetic();
		boolean annotated_class_1_expr183_line_855 = false;
		if (!annotated_class_1_expr182_line_855) {
			java.lang.reflect.Method p_m_2595_line_855_v1 = m;
			annotated_class_1_expr183_line_855 = p_m_2595_line_855_v1.isBridge();
		}
		boolean annotated_class_1_expr181_line_855 = annotated_class_1_expr182_line_855
				|| annotated_class_1_expr183_line_855;
		int PROBE_END_LINE_855 = 857;
		/* 07-Apr-2009, tatu: Looks like generics can introduce hidden
         *   bridge and/or synthetic methods. I don't think we want to
         *   consider those...
         */
        if (annotated_class_1_expr181_line_855) {
            return false;
        }
        int PROBE_START_LINE_859 = 859;
		java.lang.reflect.Method p_m_2595_line_859 = m;
		Class<?>[] annotated_class_1_expr185_line_859 = p_m_2595_line_859.getParameterTypes();
		int annotated_class_1_expr184_line_859 = annotated_class_1_expr185_line_859.length;
		int PROBE_END_LINE_859 = 859;
		// also, for now we have no use for methods with 2 or more arguments:
        int pcount = annotated_class_1_expr184_line_859;
        int PROBE_START_LINE_860 = 860;
		int v_pcount_2596_line_860 = pcount;
		boolean annotated_class_1_expr187_line_860 = v_pcount_2596_line_860 <= 2;
		boolean annotated_class_1_expr186_line_860 = (annotated_class_1_expr187_line_860);
		int PROBE_END_LINE_860 = 860;
		return annotated_class_1_expr186_line_860;
    }

    private boolean _isIncludableField(Field f)
    {
        int PROBE_START_LINE_868 = 870;
		java.lang.reflect.Field p_f_2597_line_868 = f;
		boolean annotated_class_1_expr188_line_868 = p_f_2597_line_868.isSynthetic();
		int PROBE_END_LINE_868 = 870;
		/* I'm pretty sure synthetic fields are to be skipped...
         * (methods definitely are)
         */
        if (annotated_class_1_expr188_line_868) {
            return false;
        }
        int PROBE_START_LINE_872 = 872;
		java.lang.reflect.Field p_f_2597_line_872 = f;
		int annotated_class_1_expr189_line_872 = p_f_2597_line_872.getModifiers();
		int PROBE_END_LINE_872 = 872;
		// Static fields are never included, nor transient
        int mods = annotated_class_1_expr189_line_872;
        int PROBE_START_LINE_873 = 875;
		int v_mods_2598_line_873 = mods;
		boolean annotated_class_1_expr191_line_873 = Modifier.isStatic(v_mods_2598_line_873);
		boolean annotated_class_1_expr192_line_873 = false;
		if (!annotated_class_1_expr191_line_873) {
			int v_mods_2598_line_873_v1 = mods;
			annotated_class_1_expr192_line_873 = Modifier.isTransient(v_mods_2598_line_873_v1);
		}
		boolean annotated_class_1_expr190_line_873 = annotated_class_1_expr191_line_873
				|| annotated_class_1_expr192_line_873;
		int PROBE_END_LINE_873 = 875;
		if (annotated_class_1_expr190_line_873) {
            return false;
        }
        return true;
    }

    /*
    /**********************************************************
    /* Helper methods, attaching annotations
    /**********************************************************
     */

    protected AnnotationMap[] _collectRelevantAnnotations(Annotation[][] anns)
    {
        int PROBE_START_LINE_887 = 887;
		java.lang.annotation.Annotation[][] p_anns_2599_line_887 = anns;
		int q_length_90_line_887 = p_anns_2599_line_887.length;
		int PROBE_END_LINE_887 = 887;
		int len = q_length_90_line_887;
        int PROBE_START_LINE_888 = 888;
		int v_len_2600_line_888 = len;
		int PROBE_END_LINE_888 = 888;
		AnnotationMap[] result = new AnnotationMap[v_len_2600_line_888];
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_890 = 890;
			int v_i_2602_line_889 = i;
			int v_len_2600_line_889 = len;
			boolean annotated_class_1_expr195_line_889 = v_i_2602_line_889 < v_len_2600_line_889;
			if (!(annotated_class_1_expr195_line_889)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.AnnotationMap[] v_result_2601_line_890 = result;
			int v_i_2602_line_890 = i;
			java.lang.annotation.Annotation[][] p_anns_2599_line_890 = anns;
			int v_i_2602_line_890_v1 = i;
			java.lang.annotation.Annotation[] annotated_class_1_expr200_line_890 = p_anns_2599_line_890[v_i_2602_line_890_v1];
			com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_class_1_expr199_line_890 = _collectRelevantAnnotations(
					annotated_class_1_expr200_line_890);
			int PROBE_END_LINE_890 = 890;
			v_result_2601_line_890[v_i_2602_line_890] = annotated_class_1_expr199_line_890;
        }
        int PROBE_START_LINE_892 = 892;
		com.fasterxml.jackson.databind.introspect.AnnotationMap[] v_result_2601_line_892 = result;
		int PROBE_END_LINE_892 = 892;
		return v_result_2601_line_892;
    }

    protected AnnotationMap _collectRelevantAnnotations(Annotation[] anns)
    {
        AnnotationMap annMap = new AnnotationMap();
        int PROBE_START_LINE_898 = 898;
		com.fasterxml.jackson.databind.introspect.AnnotationMap v_ann_map_2604_line_898 = annMap;
		java.lang.annotation.Annotation[] p_anns_2603_line_898 = anns;
		int PROBE_END_LINE_898 = 898;
		_addAnnotationsIfNotPresent(v_ann_map_2604_line_898, p_anns_2603_line_898);
        int PROBE_START_LINE_899 = 899;
		com.fasterxml.jackson.databind.introspect.AnnotationMap v_ann_map_2604_line_899 = annMap;
		int PROBE_END_LINE_899 = 899;
		return v_ann_map_2604_line_899;
    }
    
    /* Helper method used to add all applicable annotations from given set.
     * Takes into account possible "annotation bundles" (meta-annotations to
     * include instead of main-level annotation)
     */
    private void _addAnnotationsIfNotPresent(AnnotationMap result, Annotation[] anns)
    {
        int PROBE_START_LINE_908 = 925;
		java.lang.annotation.Annotation[] p_anns_2606_line_908 = anns;
		boolean annotated_class_1_expr203_line_908 = p_anns_2606_line_908 != null;
		int PROBE_END_LINE_908 = 925;
		if (annotated_class_1_expr203_line_908) {
            List<Annotation[]> bundles = null;
            int PROBE_START_LINE_910 = 919;
			java.lang.annotation.Annotation[] p_anns_2606_line_910 = anns;
			int PROBE_END_LINE_910 = 919;
			for (Annotation ann : p_anns_2606_line_910) { // first: direct annotations
                int PROBE_START_LINE_912 = 912;
				com.fasterxml.jackson.databind.introspect.AnnotationMap p_result_2605_line_912 = result;
				java.lang.annotation.Annotation v_ann_2608_line_912 = ann;
				boolean annotated_class_1_expr204_line_912 = p_result_2605_line_912
						.addIfNotPresent(v_ann_2608_line_912);
				int PROBE_END_LINE_912 = 912;
				// note: we will NOT filter out non-Jackson anns any more
                boolean wasNotPresent = annotated_class_1_expr204_line_912;
                int PROBE_START_LINE_913 = 918;
				boolean v_was_not_present_2609_line_913 = wasNotPresent;
				boolean annotated_class_1_expr206_line_913 = true;
				if (v_was_not_present_2609_line_913) {
					java.lang.annotation.Annotation v_ann_2608_line_913 = ann;
					annotated_class_1_expr206_line_913 = _isAnnotationBundle(v_ann_2608_line_913);
				}
				boolean annotated_class_1_expr205_line_913 = v_was_not_present_2609_line_913
						&& annotated_class_1_expr206_line_913;
				int PROBE_END_LINE_913 = 918;
				if (annotated_class_1_expr205_line_913) {
                    if (bundles == null) {
                        bundles = new LinkedList<Annotation[]>();
                    }
                    bundles.add(ann.annotationType().getDeclaredAnnotations());
                }
            }
            int PROBE_START_LINE_920 = 924;
			List<java.lang.annotation.Annotation[]> v_bundles_2607_line_920 = bundles;
			boolean annotated_class_1_expr207_line_920 = v_bundles_2607_line_920 != null;
			int PROBE_END_LINE_920 = 924;
			if (annotated_class_1_expr207_line_920) { // and secondarily handle bundles, if any found: precedence important
                for (Annotation[] annotations : bundles) {
                    _addAnnotationsIfNotPresent(result, annotations);
                }
            }
        }
    }

    private void _addAnnotationsIfNotPresent(AnnotatedMember target, Annotation[] anns)
    {
        int PROBE_START_LINE_930 = 947;
		java.lang.annotation.Annotation[] p_anns_2611_line_930 = anns;
		boolean annotated_class_1_expr208_line_930 = p_anns_2611_line_930 != null;
		int PROBE_END_LINE_930 = 947;
		if (annotated_class_1_expr208_line_930) {
            List<Annotation[]> bundles = null;
            int PROBE_START_LINE_932 = 941;
			java.lang.annotation.Annotation[] p_anns_2611_line_932 = anns;
			int PROBE_END_LINE_932 = 941;
			for (Annotation ann : p_anns_2611_line_932) { // first: direct annotations
                // note: we will NOT filter out non-Jackson anns any more
                boolean wasNotPresent = target.addIfNotPresent(ann);
                if (wasNotPresent && _isAnnotationBundle(ann)) {
                    if (bundles == null) {
                        bundles = new LinkedList<Annotation[]>();
                    }
                    bundles.add(ann.annotationType().getDeclaredAnnotations());
                }
            }
            int PROBE_START_LINE_942 = 946;
			List<java.lang.annotation.Annotation[]> v_bundles_2612_line_942 = bundles;
			boolean annotated_class_1_expr209_line_942 = v_bundles_2612_line_942 != null;
			int PROBE_END_LINE_942 = 946;
			if (annotated_class_1_expr209_line_942) { // and secondarily handle bundles, if any found: precedence important
                for (Annotation[] annotations : bundles) {
                    _addAnnotationsIfNotPresent(target, annotations);
                }
            }
        }
    }
    
    private void _addOrOverrideAnnotations(AnnotatedMember target, Annotation[] anns)
    {
        if (anns != null) {
            List<Annotation[]> bundles = null;
            for (Annotation ann : anns) { // first: direct annotations
                // note: we will NOT filter out non-Jackson anns any more
                boolean wasModified = target.addOrOverride(ann);
                if (wasModified && _isAnnotationBundle(ann)) {
                    if (bundles == null) {
                        bundles = new LinkedList<Annotation[]>();
                    }
                    bundles.add(ann.annotationType().getDeclaredAnnotations());
                }
            }
            if (bundles != null) { // and then bundles, if any: important for precedence
                for (Annotation[] annotations : bundles) {
                    _addOrOverrideAnnotations(target, annotations);
                }
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
        int PROBE_START_LINE_1013 = 1013;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_target_2623_line_1013 = target;
		java.lang.reflect.Method p_src_2622_line_1013 = src;
		java.lang.annotation.Annotation[] annotated_class_1_expr211_line_1013 = p_src_2622_line_1013
				.getDeclaredAnnotations();
		int PROBE_END_LINE_1013 = 1013;
		_addAnnotationsIfNotPresent(p_target_2623_line_1013, annotated_class_1_expr211_line_1013);
    }

   private final boolean _isAnnotationBundle(Annotation ann) {
       int PROBE_START_LINE_1017 = 1017;
	com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_1017 = _annotationIntrospector;
	boolean annotated_class_1_expr214_line_1017 = f__annotation_introspector_2527_line_1017 != null;
	boolean annotated_class_1_expr213_line_1017 = (annotated_class_1_expr214_line_1017);
	boolean annotated_class_1_expr215_line_1017 = true;
	if (annotated_class_1_expr213_line_1017) {
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2527_line_1017_v1 = _annotationIntrospector;
		java.lang.annotation.Annotation p_ann_2624_line_1017 = ann;
		annotated_class_1_expr215_line_1017 = f__annotation_introspector_2527_line_1017_v1
				.isAnnotationBundle(p_ann_2624_line_1017);
	}
	boolean annotated_class_1_expr212_line_1017 = annotated_class_1_expr213_line_1017
			&& annotated_class_1_expr215_line_1017;
	int PROBE_END_LINE_1017 = 1017;
	return annotated_class_1_expr212_line_1017;
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
