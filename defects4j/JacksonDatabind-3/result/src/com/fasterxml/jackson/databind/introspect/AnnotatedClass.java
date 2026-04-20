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
		Class<?> p_cls_1520_line_115 = cls;
		int PROBE_END_LINE_115 = 115;
		_class = p_cls_1520_line_115;
        int PROBE_START_LINE_116 = 116;
		List<Class<?>> p_super_types_1521_line_116 = superTypes;
		int PROBE_END_LINE_116 = 116;
		_superTypes = p_super_types_1521_line_116;
        int PROBE_START_LINE_117 = 117;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_aintr_1522_line_117 = aintr;
		int PROBE_END_LINE_117 = 117;
		_annotationIntrospector = p_aintr_1522_line_117;
        int PROBE_START_LINE_118 = 118;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_mir_1523_line_118 = mir;
		int PROBE_END_LINE_118 = 118;
		_mixInResolver = p_mir_1523_line_118;
        int PROBE_START_LINE_119 = 120;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_1528_line_119 = _mixInResolver;
		boolean annotated_class_1_expr10_line_119 = f__mix_in_resolver_1528_line_119 == null;
		boolean annotated_class_1_expr8_line_119 = (annotated_class_1_expr10_line_119);
		Class<?> annotated_class_1_expr7_line_119 = annotated_class_1_expr8_line_119
				? null
				: _mixInResolver.findMixInClassFor(_class);
		int PROBE_END_LINE_119 = 120;
		_primaryMixIn = annotated_class_1_expr7_line_119;
        int PROBE_START_LINE_121 = 121;
		com.fasterxml.jackson.databind.introspect.AnnotationMap p_class_annotations_1524_line_121 = classAnnotations;
		int PROBE_END_LINE_121 = 121;
		_classAnnotations = p_class_annotations_1524_line_121;
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
		Class<?> p_cls_1532_line_138 = cls;
		int PROBE_END_LINE_138 = 139;
		return new AnnotatedClass(p_cls_1532_line_138,
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
		Class<?> p_cls_1535_line_150 = cls;
		int PROBE_END_LINE_150 = 151;
		return new AnnotatedClass(p_cls_1535_line_150,
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
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_1530_line_172 = _classAnnotations;
		boolean annotated_class_1_expr16_line_172 = f__class_annotations_1530_line_172 == null;
		int PROBE_END_LINE_172 = 174;
		if (annotated_class_1_expr16_line_172) {
            resolveClassAnnotations();
        }
        int PROBE_START_LINE_175 = 175;
		com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_1530_line_175 = _classAnnotations;
		Class<A> p_acls_1538_line_175 = acls;
		A annotated_class_1_expr18_line_175 = f__class_annotations_1530_line_175.get(p_acls_1538_line_175);
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
        if (_classAnnotations == null) {
            resolveClassAnnotations();
        }
        return _classAnnotations;
    }
    
    public boolean hasAnnotations() {
        if (_classAnnotations == null) {
            resolveClassAnnotations();
        }
        return _classAnnotations.size() > 0;
    }

    public AnnotatedConstructor getDefaultConstructor()
    {
        if (!_creatorsResolved) {
            resolveCreators();
        }
        return _defaultConstructor;
    }

    public List<AnnotatedConstructor> getConstructors()
    {
        int PROBE_START_LINE_234 = 236;
		boolean f__creators_resolved_1519_line_234 = _creatorsResolved;
		boolean annotated_class_1_expr19_line_234 = !f__creators_resolved_1519_line_234;
		int PROBE_END_LINE_234 = 236;
		if (annotated_class_1_expr19_line_234) {
            resolveCreators();
        }
        int PROBE_START_LINE_237 = 237;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> f__constructors_1539_line_237 = _constructors;
		int PROBE_END_LINE_237 = 237;
		return f__constructors_1539_line_237;
    }

    public List<AnnotatedMethod> getStaticMethods()
    {
        int PROBE_START_LINE_242 = 244;
		boolean f__creators_resolved_1519_line_242 = _creatorsResolved;
		boolean annotated_class_1_expr21_line_242 = !f__creators_resolved_1519_line_242;
		int PROBE_END_LINE_242 = 244;
		if (annotated_class_1_expr21_line_242) {
            resolveCreators();
        }
        int PROBE_START_LINE_245 = 245;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__creator_methods_1540_line_245 = _creatorMethods;
		int PROBE_END_LINE_245 = 245;
		return f__creator_methods_1540_line_245;
    }

    public Iterable<AnnotatedMethod> memberMethods()
    {
        int PROBE_START_LINE_250 = 252;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap f__member_methods_1541_line_250 = _memberMethods;
		boolean annotated_class_1_expr22_line_250 = f__member_methods_1541_line_250 == null;
		int PROBE_END_LINE_250 = 252;
		if (annotated_class_1_expr22_line_250) {
            resolveMemberMethods();
        }
        int PROBE_START_LINE_253 = 253;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap f__member_methods_1541_line_253 = _memberMethods;
		int PROBE_END_LINE_253 = 253;
		return f__member_methods_1541_line_253;
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
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_1544_line_281 = _fields;
		boolean annotated_class_1_expr24_line_281 = f__fields_1544_line_281 == null;
		int PROBE_END_LINE_281 = 283;
		if (annotated_class_1_expr24_line_281) {
            resolveFields();
        }
        int PROBE_START_LINE_284 = 284;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_1544_line_284 = _fields;
		int PROBE_END_LINE_284 = 284;
		return f__fields_1544_line_284;
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
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1527_line_302 = _annotationIntrospector;
		boolean annotated_class_1_expr28_line_302 = f__annotation_introspector_1527_line_302 != null;
		int PROBE_END_LINE_302 = 324;
		// [JACKSON-659] Should skip processing if annotation processing disabled
        if (annotated_class_1_expr28_line_302) {
            int PROBE_START_LINE_304 = 306;
			Class<?> f__primary_mix_in_1529_line_304 = _primaryMixIn;
			boolean annotated_class_1_expr29_line_304 = f__primary_mix_in_1529_line_304 != null;
			int PROBE_END_LINE_304 = 306;
			// add mix-in annotations first (overrides)
            if (annotated_class_1_expr29_line_304) {
                _addClassMixIns(_classAnnotations, _class, _primaryMixIn);
            }
            int PROBE_START_LINE_308 = 308;
			com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_1530_line_308 = _classAnnotations;
			Class<?> f__class_1525_line_308 = _class;
			java.lang.annotation.Annotation[] annotated_class_1_expr31_line_308 = f__class_1525_line_308
					.getDeclaredAnnotations();
			int PROBE_END_LINE_308 = 308;
			// first, annotations from the class itself:
            _addAnnotationsIfNotPresent(f__class_annotations_1530_line_308, annotated_class_1_expr31_line_308);
    
            int PROBE_START_LINE_311 = 315;
			List<Class<?>> f__super_types_1526_line_311 = _superTypes;
			int PROBE_END_LINE_311 = 315;
			// and then from super types
            for (Class<?> cls : f__super_types_1526_line_311) {
                int PROBE_START_LINE_313 = 313;
				com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_1530_line_313 = _classAnnotations;
				Class<?> v_cls_1545_line_313 = cls;
				int PROBE_END_LINE_313 = 313;
				// and mix mix-in annotations in-between
                _addClassMixIns(f__class_annotations_1530_line_313, v_cls_1545_line_313);
                int PROBE_START_LINE_314 = 314;
				com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_1530_line_314 = _classAnnotations;
				Class<?> v_cls_1545_line_314 = cls;
				java.lang.annotation.Annotation[] annotated_class_1_expr34_line_314 = v_cls_1545_line_314
						.getDeclaredAnnotations();
				int PROBE_END_LINE_314 = 314;
				_addAnnotationsIfNotPresent(f__class_annotations_1530_line_314, annotated_class_1_expr34_line_314);
            }
            int PROBE_START_LINE_323 = 323;
			com.fasterxml.jackson.databind.introspect.AnnotationMap f__class_annotations_1530_line_323 = _classAnnotations;
			int PROBE_END_LINE_323 = 323;
			/* and finally... any annotations there might be for plain
             * old Object.class: separate because for all other purposes
             * it is just ignored (not included in super types)
             */
            /* 12-Jul-2009, tatu: Should this be done for interfaces too?
             *   For now, yes, seems useful for some cases, and not harmful for any?
             */
            _addClassMixIns(f__class_annotations_1530_line_323, Object.class);
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
		Class<?> f__class_1525_line_335 = _class;
		Constructor<?>[] annotated_class_1_expr37_line_335 = f__class_1525_line_335.getDeclaredConstructors();
		int PROBE_END_LINE_335 = 335;
		Constructor<?>[] declaredCtors = annotated_class_1_expr37_line_335;
        int PROBE_START_LINE_336 = 345;
		Constructor<?>[] v_declared_ctors_1547_line_336 = declaredCtors;
		int PROBE_END_LINE_336 = 345;
		for (Constructor<?> ctor : v_declared_ctors_1547_line_336) {
            if (ctor.getParameterTypes().length == 0) {
                _defaultConstructor = _constructConstructor(ctor, true);
            } else {
                if (constructors == null) {
                    constructors = new ArrayList<AnnotatedConstructor>(Math.max(10, declaredCtors.length));
                }
                constructors.add(_constructConstructor(ctor, false));
            }
        }
        int PROBE_START_LINE_346 = 350;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_1546_line_346 = constructors;
		boolean annotated_class_1_expr38_line_346 = v_constructors_1546_line_346 == null;
		int PROBE_END_LINE_346 = 350;
		if (annotated_class_1_expr38_line_346) {
            int PROBE_START_LINE_347 = 347;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> annotated_class_1_expr40_line_347 = Collections
					.emptyList();
			int PROBE_END_LINE_347 = 347;
			_constructors = annotated_class_1_expr40_line_347;
        } else {
            _constructors = constructors;
        }
        int PROBE_START_LINE_352 = 356;
		Class<?> f__primary_mix_in_1529_line_352 = _primaryMixIn;
		boolean annotated_class_1_expr41_line_352 = f__primary_mix_in_1529_line_352 != null;
		int PROBE_END_LINE_352 = 356;
		// and if need be, augment with mix-ins
        if (annotated_class_1_expr41_line_352) {
            if (_defaultConstructor != null || !_constructors.isEmpty()) {
                _addConstructorMixIns(_primaryMixIn);
            }
        }


        int PROBE_START_LINE_363 = 377;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1527_line_363 = _annotationIntrospector;
		boolean annotated_class_1_expr42_line_363 = f__annotation_introspector_1527_line_363 != null;
		int PROBE_END_LINE_363 = 377;
		/* And then... let's remove all constructors that are deemed
         * ignorable after all annotations have been properly collapsed.
         */
        // 14-Feb-2011, tatu: AnnotationIntrospector is null if annotations not enabled; if so, can skip:
        if (annotated_class_1_expr42_line_363) {
            int PROBE_START_LINE_364 = 368;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor f__default_constructor_1549_line_364 = _defaultConstructor;
			boolean annotated_class_1_expr43_line_364 = f__default_constructor_1549_line_364 != null;
			int PROBE_END_LINE_364 = 368;
			if (annotated_class_1_expr43_line_364) {
                if (_annotationIntrospector.hasIgnoreMarker(_defaultConstructor)) {
                    _defaultConstructor = null;
                }
            }
            int PROBE_START_LINE_369 = 376;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> f__constructors_1539_line_369 = _constructors;
			boolean annotated_class_1_expr44_line_369 = f__constructors_1539_line_369 != null;
			int PROBE_END_LINE_369 = 376;
			if (annotated_class_1_expr44_line_369) {
                int PROBE_START_LINE_370 = 370;
				boolean FOR_STMT_TOGGLE_LINE_371 = false;
				int PROBE_END_LINE_370 = 370;
				// count down to allow safe removal
                for (int i = 0; true; ) {
                    int PROBE_START_LINE_372 = 374;
					if (!FOR_STMT_TOGGLE_LINE_371) {
						FOR_STMT_TOGGLE_LINE_371 = true;
						List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> f__constructors_1539_line_371 = _constructors;
						int annotated_class_1_expr46_line_371 = f__constructors_1539_line_371.size();
						i = annotated_class_1_expr46_line_371;
					} else {
						if (FOR_STMT_TOGGLE_LINE_371) {
						} else {
							FOR_STMT_TOGGLE_LINE_371 = true;
						}
					}
					boolean annotated_class_1_expr47_line_371 = --i >= 0;
					if (!(annotated_class_1_expr47_line_371)) {
						break;
					}
					int PROBE_END_LINE_372 = 374;
					if (_annotationIntrospector.hasIgnoreMarker(_constructors.get(i))) {
                        _constructors.remove(i);
                    }
                }
            }
        }
        List<AnnotatedMethod> creatorMethods = null;
        
        int PROBE_START_LINE_381 = 391;
		Class<?> f__class_1525_line_381 = _class;
		java.lang.reflect.Method[] annotated_class_1_expr49_line_381 = f__class_1525_line_381.getDeclaredMethods();
		int PROBE_END_LINE_381 = 391;
		// Then static methods which are potential factory methods
        for (Method m : annotated_class_1_expr49_line_381) {
            if (!Modifier.isStatic(m.getModifiers())) {
                continue;
            }
            // all factory methods are fine, as per [JACKSON-850]
            //int argCount = m.getParameterTypes().length;
            if (creatorMethods == null) {
                creatorMethods = new ArrayList<AnnotatedMethod>(8);
            }
            creatorMethods.add(_constructCreatorMethod(m));
        }
        int PROBE_START_LINE_392 = 409;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_creator_methods_1551_line_392 = creatorMethods;
		boolean annotated_class_1_expr50_line_392 = v_creator_methods_1551_line_392 == null;
		int PROBE_END_LINE_392 = 409;
		if (annotated_class_1_expr50_line_392) {
            int PROBE_START_LINE_393 = 393;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> annotated_class_1_expr52_line_393 = Collections
					.emptyList();
			int PROBE_END_LINE_393 = 393;
			_creatorMethods = annotated_class_1_expr52_line_393;
        } else {
            _creatorMethods = creatorMethods;
            // mix-ins to mix in?
            if (_primaryMixIn != null) {
                _addFactoryMixIns(_primaryMixIn);
            }
            // anything to ignore at this point?
            if (_annotationIntrospector != null) {
                // count down to allow safe removal
                for (int i = _creatorMethods.size(); --i >= 0; ) {
                    if (_annotationIntrospector.hasIgnoreMarker(_creatorMethods.get(i))) {
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
		Class<?> f__class_1525_line_424 = _class;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap f__member_methods_1541_line_424 = _memberMethods;
		Class<?> f__primary_mix_in_1529_line_424 = _primaryMixIn;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_mixins_1553_line_424 = mixins;
		int PROBE_END_LINE_424 = 424;
		// first: methods from the class itself
        _addMemberMethods(f__class_1525_line_424, f__member_methods_1541_line_424, f__primary_mix_in_1529_line_424, v_mixins_1553_line_424);

        int PROBE_START_LINE_427 = 430;
		List<Class<?>> f__super_types_1526_line_427 = _superTypes;
		int PROBE_END_LINE_427 = 430;
		// and then augment these with annotations from super-types:
        for (Class<?> cls : f__super_types_1526_line_427) {
            int PROBE_START_LINE_428 = 428;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_1528_line_428 = _mixInResolver;
			boolean annotated_class_1_expr61_line_428 = f__mix_in_resolver_1528_line_428 == null;
			boolean annotated_class_1_expr59_line_428 = (annotated_class_1_expr61_line_428);
			Class<?> annotated_class_1_expr60_line_428 = null;
			if (!annotated_class_1_expr59_line_428) {
				com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_1528_line_428_v1 = _mixInResolver;
				Class<?> v_cls_1554_line_428 = cls;
				annotated_class_1_expr60_line_428 = f__mix_in_resolver_1528_line_428_v1
						.findMixInClassFor(v_cls_1554_line_428);
			}
			Class<?> annotated_class_1_expr58_line_428 = annotated_class_1_expr59_line_428
					? null
					: annotated_class_1_expr60_line_428;
			int PROBE_END_LINE_428 = 428;
			Class<?> mixin = annotated_class_1_expr58_line_428;         
            int PROBE_START_LINE_429 = 429;
			Class<?> v_cls_1554_line_429 = cls;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap f__member_methods_1541_line_429 = _memberMethods;
			Class<?> v_mixin_1555_line_429 = mixin;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_mixins_1553_line_429 = mixins;
			int PROBE_END_LINE_429 = 429;
			_addMemberMethods(v_cls_1554_line_429, f__member_methods_1541_line_429, v_mixin_1555_line_429, v_mixins_1553_line_429);
        }
        int PROBE_START_LINE_432 = 437;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_1528_line_432 = _mixInResolver;
		boolean annotated_class_1_expr63_line_432 = f__mix_in_resolver_1528_line_432 != null;
		int PROBE_END_LINE_432 = 437;
		// Special case: mix-ins for Object.class? (to apply to ALL classes)
        if (annotated_class_1_expr63_line_432) {
            int PROBE_START_LINE_433 = 433;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_1528_line_433 = _mixInResolver;
			Class<?> annotated_class_1_expr64_line_433 = f__mix_in_resolver_1528_line_433
					.findMixInClassFor(Object.class);
			int PROBE_END_LINE_433 = 433;
			Class<?> mixin = annotated_class_1_expr64_line_433;
            int PROBE_START_LINE_434 = 436;
			Class<?> v_mixin_1556_line_434 = mixin;
			boolean annotated_class_1_expr66_line_434 = v_mixin_1556_line_434 != null;
			int PROBE_END_LINE_434 = 436;
			if (annotated_class_1_expr66_line_434) {
                _addMethodMixIns(_class, _memberMethods, mixin, mixins);
            }
        }

        int PROBE_START_LINE_445 = 460;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1527_line_445 = _annotationIntrospector;
		boolean annotated_class_1_expr67_line_445 = f__annotation_introspector_1527_line_445 != null;
		int PROBE_END_LINE_445 = 460;
		/* Any unmatched mix-ins? Most likely error cases (not matching
         * any method); but there is one possible real use case:
         * exposing Object#hashCode (alas, Object#getClass can NOT be
         * exposed, see [JACKSON-140])
         */
        // 14-Feb-2011, tatu: AnnotationIntrospector is null if annotations not enabled; if so, can skip:
        if (annotated_class_1_expr67_line_445) {
            int PROBE_START_LINE_446 = 459;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap v_mixins_1553_line_446 = mixins;
			boolean annotated_class_1_expr69_line_446 = v_mixins_1553_line_446.isEmpty();
			boolean annotated_class_1_expr68_line_446 = !annotated_class_1_expr69_line_446;
			int PROBE_END_LINE_446 = 459;
			if (annotated_class_1_expr68_line_446) {
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
		Class<?> f__class_1525_line_470 = _class;
		Map<String, AnnotatedField> annotated_class_1_expr70_line_470 = _findFields(f__class_1525_line_470, null);
		int PROBE_END_LINE_470 = 470;
		Map<String,AnnotatedField> foundFields = annotated_class_1_expr70_line_470;
        int PROBE_START_LINE_471 = 476;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> v_found_fields_1557_line_471 = foundFields;
		boolean annotated_class_1_expr72_line_471 = v_found_fields_1557_line_471 == null;
		boolean annotated_class_1_expr73_line_471 = false;
		if (!annotated_class_1_expr72_line_471) {
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> v_found_fields_1557_line_471_v1 = foundFields;
			int annotated_class_1_expr74_line_471 = v_found_fields_1557_line_471_v1.size();
			annotated_class_1_expr73_line_471 = annotated_class_1_expr74_line_471 == 0;
		}
		boolean annotated_class_1_expr71_line_471 = annotated_class_1_expr72_line_471
				|| annotated_class_1_expr73_line_471;
		int PROBE_END_LINE_471 = 476;
		if (annotated_class_1_expr71_line_471) {
            int PROBE_START_LINE_472 = 472;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedField> annotated_class_1_expr76_line_472 = Collections
					.emptyList();
			int PROBE_END_LINE_472 = 472;
			_fields = annotated_class_1_expr76_line_472;
        } else {
            _fields = new ArrayList<AnnotatedField>(foundFields.size());
            _fields.addAll(foundFields.values());
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
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_1528_line_493 = _mixInResolver;
		boolean annotated_class_1_expr77_line_493 = f__mix_in_resolver_1528_line_493 != null;
		int PROBE_END_LINE_493 = 495;
		if (annotated_class_1_expr77_line_493) {
            int PROBE_START_LINE_494 = 494;
			com.fasterxml.jackson.databind.introspect.AnnotationMap p_annotations_1558_line_494 = annotations;
			Class<?> p_to_mask_1559_line_494 = toMask;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_1528_line_494 = _mixInResolver;
			Class<?> p_to_mask_1559_line_494_v1 = toMask;
			Class<?> annotated_class_1_expr79_line_494 = f__mix_in_resolver_1528_line_494
					.findMixInClassFor(p_to_mask_1559_line_494_v1);
			int PROBE_END_LINE_494 = 494;
			_addClassMixIns(p_annotations_1558_line_494, p_to_mask_1559_line_494, annotated_class_1_expr79_line_494);
        }
    }

    protected void _addClassMixIns(AnnotationMap annotations, Class<?> toMask,
                                   Class<?> mixin)
    {
        int PROBE_START_LINE_501 = 503;
		Class<?> p_mixin_1562_line_501 = mixin;
		boolean annotated_class_1_expr80_line_501 = p_mixin_1562_line_501 == null;
		int PROBE_END_LINE_501 = 503;
		if (annotated_class_1_expr80_line_501) {
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
		Class<?> p_mix_in_cls_1567_line_593 = mixInCls;
		boolean annotated_class_1_expr81_line_593 = p_mix_in_cls_1567_line_593 != null;
		int PROBE_END_LINE_593 = 595;
		// first, mixIns, since they have higher priority then class methods
        if (annotated_class_1_expr81_line_593) {
            _addMethodMixIns(cls, methods, mixInCls, mixIns);
        }        
        int PROBE_START_LINE_596 = 598;
		Class<?> p_cls_1565_line_596 = cls;
		boolean annotated_class_1_expr82_line_596 = p_cls_1565_line_596 == null;
		int PROBE_END_LINE_596 = 598;
		if (annotated_class_1_expr82_line_596) { // just so caller need not check when passing super-class
            return;
        }

        int PROBE_START_LINE_601 = 631;
		Class<?> p_cls_1565_line_601 = cls;
		java.lang.reflect.Method[] annotated_class_1_expr83_line_601 = p_cls_1565_line_601.getDeclaredMethods();
		int PROBE_END_LINE_601 = 631;
		// then methods from the class itself
        for (Method m : annotated_class_1_expr83_line_601) {
            if (!_isIncludableMemberMethod(m)) {
                continue;
            }
            AnnotatedMethod old = methods.find(m);
            if (old == null) {
                AnnotatedMethod newM = _constructMethod(m);
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
                    mixIns.add(_constructMethod(m));
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
        int PROBE_START_LINE_676 = 676;
		Class<?> p_c_1574_line_676 = c;
		Class<?> annotated_class_1_expr84_line_676 = p_c_1574_line_676.getSuperclass();
		int PROBE_END_LINE_676 = 676;
		/* First, a quick test: we only care for regular classes (not
         * interfaces, primitive types etc), except for Object.class.
         * A simple check to rule out other cases is to see if there
         * is a super class or not.
         */
        Class<?> parent = annotated_class_1_expr84_line_676;
        int PROBE_START_LINE_677 = 705;
		Class<?> v_parent_1576_line_677 = parent;
		boolean annotated_class_1_expr85_line_677 = v_parent_1576_line_677 != null;
		int PROBE_END_LINE_677 = 705;
		if (annotated_class_1_expr85_line_677) {
            int PROBE_START_LINE_682 = 682;
			Class<?> v_parent_1576_line_682 = parent;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> p_fields_1575_line_682 = fields;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> annotated_class_1_expr87_line_682 = _findFields(
					v_parent_1576_line_682, p_fields_1575_line_682);
			int PROBE_END_LINE_682 = 682;
			// Let's add super-class' fields first, then ours.
            /* 21-Feb-2010, tatu: Need to handle masking: as per [JACKSON-226]
             *    we otherwise get into trouble...
             */
            fields = annotated_class_1_expr87_line_682;
            int PROBE_START_LINE_683 = 697;
			Class<?> p_c_1574_line_683 = c;
			java.lang.reflect.Field[] annotated_class_1_expr88_line_683 = p_c_1574_line_683.getDeclaredFields();
			int PROBE_END_LINE_683 = 697;
			for (Field f : annotated_class_1_expr88_line_683) {
                // static fields not included, nor transient
                if (!_isIncludableField(f)) {
                    continue;
                }
                /* Ok now: we can (and need) not filter out ignorable fields
                 * at this point; partly because mix-ins haven't been
                 * added, and partly because logic can be done when
                 * determining get/settability of the field.
                 */
                if (fields == null) {
                    fields = new LinkedHashMap<String,AnnotatedField>();
                }
                fields.put(f.getName(), _constructField(f));
            }
            int PROBE_START_LINE_699 = 704;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_1528_line_699 = _mixInResolver;
			boolean annotated_class_1_expr89_line_699 = f__mix_in_resolver_1528_line_699 != null;
			int PROBE_END_LINE_699 = 704;
			// And then... any mix-in overrides?
            if (annotated_class_1_expr89_line_699) {
                int PROBE_START_LINE_700 = 700;
				com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_1528_line_700 = _mixInResolver;
				Class<?> p_c_1574_line_700 = c;
				Class<?> annotated_class_1_expr90_line_700 = f__mix_in_resolver_1528_line_700
						.findMixInClassFor(p_c_1574_line_700);
				int PROBE_END_LINE_700 = 700;
				Class<?> mixin = annotated_class_1_expr90_line_700;
                int PROBE_START_LINE_701 = 703;
				Class<?> v_mixin_1578_line_701 = mixin;
				boolean annotated_class_1_expr91_line_701 = v_mixin_1578_line_701 != null;
				int PROBE_END_LINE_701 = 703;
				if (annotated_class_1_expr91_line_701) {
                    _addFieldMixIns(parent, mixin, fields);
                }
            }
        }
        int PROBE_START_LINE_706 = 706;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedField> p_fields_1575_line_706 = fields;
		int PROBE_END_LINE_706 = 706;
		return p_fields_1575_line_706;
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
        /* note: parameter annotations not used for regular (getter, setter)
         * methods; only for creator methods (static factory methods)
         * -- at least not yet!
         */
        if (_annotationIntrospector == null) { // when annotation processing is disabled
            return new AnnotatedMethod(m, _emptyAnnotationMap(), null);
        }
        return new AnnotatedMethod(m, _collectRelevantAnnotations(m.getDeclaredAnnotations()), null);
    }

    protected AnnotatedConstructor _constructConstructor(Constructor<?> ctor, boolean defaultCtor)
    {
        if (_annotationIntrospector == null) { // when annotation processing is disabled
            return new AnnotatedConstructor(ctor, _emptyAnnotationMap(), _emptyAnnotationMaps(ctor.getParameterTypes().length));
        }
        if (defaultCtor) {
            return new AnnotatedConstructor(ctor, _collectRelevantAnnotations(ctor.getDeclaredAnnotations()), null);
        }
        Annotation[][] paramAnns = ctor.getParameterAnnotations();
        int paramCount = ctor.getParameterTypes().length;
        /* [JACKSON-701]: Looks like JDK has discrepancy, whereas annotations for implicit 'this'
         * (for non-static inner classes) are NOT included, but type is? Strange, sounds like
         * a bug. Alas, we can't really fix that...
         */
        // Also: [JACKSON-757] (enum value constructors)
        AnnotationMap[] resolvedAnnotations = null;
        if (paramCount != paramAnns.length) {
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
            resolvedAnnotations = _collectRelevantAnnotations(paramAnns);
        }
        return new AnnotatedConstructor(ctor, _collectRelevantAnnotations(ctor.getDeclaredAnnotations()),
                resolvedAnnotations);
    }

    protected AnnotatedMethod _constructCreatorMethod(Method m)
    {
        if (_annotationIntrospector == null) { // when annotation processing is disabled
            return new AnnotatedMethod(m, _emptyAnnotationMap(), _emptyAnnotationMaps(m.getParameterTypes().length));
        }
        return new AnnotatedMethod(m, _collectRelevantAnnotations(m.getDeclaredAnnotations()),
                                   _collectRelevantAnnotations(m.getParameterAnnotations()));
    }

    protected AnnotatedField _constructField(Field f)
    {
        if (_annotationIntrospector == null) { // when annotation processing is disabled
            return new AnnotatedField(f, _emptyAnnotationMap());
        }
        return new AnnotatedField(f, _collectRelevantAnnotations(f.getDeclaredAnnotations()));
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
        if (Modifier.isStatic(m.getModifiers())) {
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
        /* I'm pretty sure synthetic fields are to be skipped...
         * (methods definitely are)
         */
        if (f.isSynthetic()) {
            return false;
        }
        // Static fields are never included, nor transient
        int mods = f.getModifiers();
        if (Modifier.isStatic(mods) || Modifier.isTransient(mods)) {
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
        int len = anns.length;
        AnnotationMap[] result = new AnnotationMap[len];
        for (int i = 0; i < len; ++i) {
            result[i] = _collectRelevantAnnotations(anns[i]);
        }
        return result;
    }

    protected AnnotationMap _collectRelevantAnnotations(Annotation[] anns)
    {
        AnnotationMap annMap = new AnnotationMap();
        _addAnnotationsIfNotPresent(annMap, anns);
        return annMap;
    }
    
    /* Helper method used to add all applicable annotations from given set.
     * Takes into account possible "annotation bundles" (meta-annotations to
     * include instead of main-level annotation)
     */
    private void _addAnnotationsIfNotPresent(AnnotationMap result, Annotation[] anns)
    {
        int PROBE_START_LINE_902 = 919;
		java.lang.annotation.Annotation[] p_anns_1593_line_902 = anns;
		boolean annotated_class_1_expr92_line_902 = p_anns_1593_line_902 != null;
		int PROBE_END_LINE_902 = 919;
		if (annotated_class_1_expr92_line_902) {
            List<Annotation[]> bundles = null;
            int PROBE_START_LINE_904 = 913;
			java.lang.annotation.Annotation[] p_anns_1593_line_904 = anns;
			int PROBE_END_LINE_904 = 913;
			for (Annotation ann : p_anns_1593_line_904) { // first: direct annotations
                if (_isAnnotationBundle(ann)) {
                    if (bundles == null) {
                        bundles = new LinkedList<Annotation[]>();
                    }
                    bundles.add(ann.annotationType().getDeclaredAnnotations());
                } else { // note: we will NOT filter out non-Jackson anns any more
                    result.addIfNotPresent(ann);
                }
            }
            int PROBE_START_LINE_914 = 918;
			List<java.lang.annotation.Annotation[]> v_bundles_1594_line_914 = bundles;
			boolean annotated_class_1_expr93_line_914 = v_bundles_1594_line_914 != null;
			int PROBE_END_LINE_914 = 918;
			if (annotated_class_1_expr93_line_914) { // and secondarily handle bundles, if any found: precedence important
                for (Annotation[] annotations : bundles) {
                    _addAnnotationsIfNotPresent(result, annotations);
                }
            }
        }
    }

    private void _addAnnotationsIfNotPresent(AnnotatedMember target, Annotation[] anns)
    {
        if (anns != null) {
            List<Annotation[]> bundles = null;
            for (Annotation ann : anns) { // first: direct annotations
                if (_isAnnotationBundle(ann)) {
                    if (bundles == null) {
                        bundles = new LinkedList<Annotation[]>();
                    }
                    bundles.add(ann.annotationType().getDeclaredAnnotations());
                } else { // note: we will NOT filter out non-Jackson anns any more
                    target.addIfNotPresent(ann);
                }
            }
            if (bundles != null) { // and secondarily handle bundles, if any found: precedence important
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
                if (_isAnnotationBundle(ann)) {
                    if (bundles == null) {
                        bundles = new LinkedList<Annotation[]>();
                    }
                    bundles.add(ann.annotationType().getDeclaredAnnotations());
                } else { // note: no filtering by jackson-annotations
                    target.addOrOverride(ann);
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
        _addAnnotationsIfNotPresent(target, src.getDeclaredAnnotations());
    }

   private final boolean _isAnnotationBundle(Annotation ann)
   {
       return (_annotationIntrospector != null) && _annotationIntrospector.isAnnotationBundle(ann);
   }
   
    /*
    /**********************************************************
    /* Other methods
    /**********************************************************
     */

    @Override
    public String toString()
    {
        return "[AnnotedClass "+_class.getName()+"]";
    }
}
