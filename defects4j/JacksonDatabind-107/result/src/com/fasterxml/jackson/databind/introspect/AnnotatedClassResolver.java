package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.List;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;

/**
 * Helper class that contains logic for resolving annotations to construct
 * {@link AnnotatedClass} instances.
 *
 * @since 2.9
 */
public class AnnotatedClassResolver
{
    int PROBE_START_LINE_25 = 25;

	private static final com.fasterxml.jackson.databind.util.Annotations annotated_class_resolver_1_expr1_line_25 = AnnotationCollector
			.emptyAnnotations();

	int PROBE_END_LINE_25 = 25;

	private final static Annotations NO_ANNOTATIONS = annotated_class_resolver_1_expr1_line_25;

    private final MapperConfig<?> _config;
    private final AnnotationIntrospector _intr;
    private final MixInResolver _mixInResolver;
    private final TypeBindings _bindings;

    private final JavaType _type;
    private final Class<?> _class;
    private final Class<?> _primaryMixin;

    AnnotatedClassResolver(MapperConfig<?> config, JavaType type, MixInResolver r) {
        int PROBE_START_LINE_37 = 37;
		MapperConfig<?> p_config_3442_line_37 = config;
		int PROBE_END_LINE_37 = 37;
		_config = p_config_3442_line_37;
        int PROBE_START_LINE_38 = 38;
		com.fasterxml.jackson.databind.JavaType p_type_3443_line_38 = type;
		int PROBE_END_LINE_38 = 38;
		_type = p_type_3443_line_38;
        int PROBE_START_LINE_39 = 39;
		com.fasterxml.jackson.databind.JavaType p_type_3443_line_39 = type;
		Class<?> annotated_class_resolver_1_expr5_line_39 = p_type_3443_line_39.getRawClass();
		int PROBE_END_LINE_39 = 39;
		_class = annotated_class_resolver_1_expr5_line_39;
        int PROBE_START_LINE_40 = 40;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_r_3444_line_40 = r;
		int PROBE_END_LINE_40 = 40;
		_mixInResolver = p_r_3444_line_40;
        int PROBE_START_LINE_41 = 41;
		com.fasterxml.jackson.databind.JavaType p_type_3443_line_41 = type;
		com.fasterxml.jackson.databind.type.TypeBindings annotated_class_resolver_1_expr8_line_41 = p_type_3443_line_41
				.getBindings();
		int PROBE_END_LINE_41 = 41;
		_bindings = annotated_class_resolver_1_expr8_line_41;
        int PROBE_START_LINE_42 = 43;
		MapperConfig<?> p_config_3442_line_42 = config;
		boolean annotated_class_resolver_1_expr11_line_42 = p_config_3442_line_42.isAnnotationProcessingEnabled();
		com.fasterxml.jackson.databind.AnnotationIntrospector annotated_class_resolver_1_expr10_line_42 = annotated_class_resolver_1_expr11_line_42
				? config.getAnnotationIntrospector()
				: null;
		int PROBE_END_LINE_42 = 43;
		_intr = annotated_class_resolver_1_expr10_line_42;
        int PROBE_START_LINE_44 = 44;
		MapperConfig<?> f__config_3445_line_44 = _config;
		Class<?> f__class_3447_line_44 = _class;
		Class<?> annotated_class_resolver_1_expr14_line_44 = f__config_3445_line_44
				.findMixInClassFor(f__class_3447_line_44);
		int PROBE_END_LINE_44 = 44;
		_primaryMixin = annotated_class_resolver_1_expr14_line_44;
    }

    AnnotatedClassResolver(MapperConfig<?> config, Class<?> cls, MixInResolver r) {
        _config = config;
        _type = null;
        _class = cls;
        _mixInResolver = r;
        _bindings = TypeBindings.emptyBindings();
        if (config == null) {
            _intr = null;
            _primaryMixin = null;
        } else {
            _intr = config.isAnnotationProcessingEnabled()
                    ? config.getAnnotationIntrospector() : null;
            _primaryMixin = _config.findMixInClassFor(_class);
        }
    }

    public static AnnotatedClass resolve(MapperConfig<?> config, JavaType forType,
            MixInResolver r)
    {
        int PROBE_START_LINE_66 = 68;
		com.fasterxml.jackson.databind.JavaType p_for_type_3456_line_66 = forType;
		boolean annotated_class_resolver_1_expr16_line_66 = p_for_type_3456_line_66.isArrayType();
		boolean annotated_class_resolver_1_expr17_line_66 = true;
		if (annotated_class_resolver_1_expr16_line_66) {
			MapperConfig<?> p_config_3455_line_66 = config;
			com.fasterxml.jackson.databind.JavaType p_for_type_3456_line_66_v1 = forType;
			Class<?> annotated_class_resolver_1_expr18_line_66 = p_for_type_3456_line_66_v1.getRawClass();
			annotated_class_resolver_1_expr17_line_66 = skippableArray(p_config_3455_line_66,
					annotated_class_resolver_1_expr18_line_66);
		}
		boolean annotated_class_resolver_1_expr15_line_66 = annotated_class_resolver_1_expr16_line_66
				&& annotated_class_resolver_1_expr17_line_66;
		int PROBE_END_LINE_66 = 68;
		if (annotated_class_resolver_1_expr15_line_66) {
            return createArrayType(config, forType.getRawClass());
        }
        int PROBE_START_LINE_69 = 69;
		MapperConfig<?> p_config_3455_line_69 = config;
		com.fasterxml.jackson.databind.JavaType p_for_type_3456_line_69 = forType;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_r_3457_line_69 = r;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass annotated_class_resolver_1_expr19_line_69 = new AnnotatedClassResolver(
				p_config_3455_line_69, p_for_type_3456_line_69, p_r_3457_line_69).resolveFully();
		int PROBE_END_LINE_69 = 69;
		return annotated_class_resolver_1_expr19_line_69;
    }

    public static AnnotatedClass resolveWithoutSuperTypes(MapperConfig<?> config, Class<?> forType) {
        return resolveWithoutSuperTypes(config, forType, config);
    }

    public static AnnotatedClass resolveWithoutSuperTypes(MapperConfig<?> config, JavaType forType,
            MixInResolver r)
    {
        if (forType.isArrayType() && skippableArray(config, forType.getRawClass())) {
            return createArrayType(config, forType.getRawClass());
        }
        return new AnnotatedClassResolver(config, forType, r).resolveWithoutSuperTypes();
    }

    public static AnnotatedClass resolveWithoutSuperTypes(MapperConfig<?> config, Class<?> forType,
            MixInResolver r)
    {
        if (forType.isArray() && skippableArray(config, forType)) {
            return createArrayType(config, forType);
        }
        return new AnnotatedClassResolver(config, forType, r).resolveWithoutSuperTypes();
    }

    private static boolean skippableArray(MapperConfig<?> config, Class<?> type) {
        return (config == null) || (config.findMixInClassFor(type) == null);
                
    }

    /**
     * Internal helper method used for resolving a small set of "primordial" types for which
     * we do not accept any annotation information or overrides. 
     */
    static AnnotatedClass createPrimordial(Class<?> raw) {
        int PROBE_START_LINE_104 = 104;
		Class<?> p_raw_3468_line_104 = raw;
		int PROBE_END_LINE_104 = 104;
		return new AnnotatedClass(p_raw_3468_line_104);
    }

    /**
     * Internal helper method used for resolving array types, unless they happen
     * to have associated mix-in to apply.
     */
    static AnnotatedClass createArrayType(MapperConfig<?> config, Class<?> raw) {
        return new AnnotatedClass(raw);
    }

    AnnotatedClass resolveFully() {
        int PROBE_START_LINE_116 = 116;
		com.fasterxml.jackson.databind.JavaType f__type_3446_line_116 = _type;
		List<JavaType> annotated_class_resolver_1_expr22_line_116 = ClassUtil.findSuperTypes(f__type_3446_line_116,
				null, false);
		int PROBE_END_LINE_116 = 116;
		List<JavaType> superTypes = annotated_class_resolver_1_expr22_line_116;
        int PROBE_START_LINE_117 = 119;
		com.fasterxml.jackson.databind.JavaType f__type_3446_line_117 = _type;
		Class<?> f__class_3447_line_117 = _class;
		List<com.fasterxml.jackson.databind.JavaType> v_super_types_3471_line_117 = superTypes;
		Class<?> f__primary_mixin_3451_line_117 = _primaryMixin;
		int PROBE_END_LINE_117 = 119;
		return new AnnotatedClass(f__type_3446_line_117, f__class_3447_line_117, v_super_types_3471_line_117, f__primary_mixin_3451_line_117,
                resolveClassAnnotations(superTypes),
                _bindings, _intr, _mixInResolver, _config.getTypeFactory());

    }

    AnnotatedClass resolveWithoutSuperTypes() {
        List<JavaType> superTypes = Collections.<JavaType>emptyList();
        return new AnnotatedClass(null, _class, superTypes, _primaryMixin,
                resolveClassAnnotations(superTypes),
                _bindings, _intr, _config, _config.getTypeFactory());
    }

    /*
    /**********************************************************
    /* Class annotation resolution
    /**********************************************************
     */

    /**
     * Initialization method that will recursively collect Jackson
     * annotations for this class and all super classes and
     * interfaces.
     */
    private Annotations resolveClassAnnotations(List<JavaType> superTypes)
    {
        int PROBE_START_LINE_144 = 146;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3450_line_144 = _intr;
		boolean annotated_class_resolver_1_expr26_line_144 = f__intr_3450_line_144 == null;
		int PROBE_END_LINE_144 = 146;
		// Should skip processing if annotation processing disabled
        if (annotated_class_resolver_1_expr26_line_144) {
            return NO_ANNOTATIONS;
        }
        int PROBE_START_LINE_147 = 147;
		AnnotationCollector annotated_class_resolver_1_expr27_line_147 = AnnotationCollector.emptyCollector();
		int PROBE_END_LINE_147 = 147;
		AnnotationCollector resolvedCA = annotated_class_resolver_1_expr27_line_147;
        int PROBE_START_LINE_149 = 151;
		Class<?> f__primary_mixin_3451_line_149 = _primaryMixin;
		boolean annotated_class_resolver_1_expr28_line_149 = f__primary_mixin_3451_line_149 != null;
		int PROBE_END_LINE_149 = 151;
		// add mix-in annotations first (overrides)
        if (annotated_class_resolver_1_expr28_line_149) {
            resolvedCA = _addClassMixIns(resolvedCA, _class, _primaryMixin);
        }
        int PROBE_START_LINE_153 = 154;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector v_resolved_ca_3473_line_153 = resolvedCA;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_class_resolver_1_expr30_line_153 = _addAnnotationsIfNotPresent(
				v_resolved_ca_3473_line_153, ClassUtil.findClassAnnotations(_class));
		int PROBE_END_LINE_153 = 154;
		// then annotations from the class itself:
        resolvedCA = annotated_class_resolver_1_expr30_line_153;

        int PROBE_START_LINE_157 = 166;
		List<com.fasterxml.jackson.databind.JavaType> p_super_types_3472_line_157 = superTypes;
		int PROBE_END_LINE_157 = 166;
		// and then from super types
        for (JavaType type : p_super_types_3472_line_157) {
            int PROBE_START_LINE_159 = 163;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_3448_line_159 = _mixInResolver;
			boolean annotated_class_resolver_1_expr32_line_159 = f__mix_in_resolver_3448_line_159 != null;
			int PROBE_END_LINE_159 = 163;
			// and mix mix-in annotations in-between
            if (annotated_class_resolver_1_expr32_line_159) {
                int PROBE_START_LINE_160 = 160;
				com.fasterxml.jackson.databind.JavaType v_type_3474_line_160 = type;
				Class<?> annotated_class_resolver_1_expr33_line_160 = v_type_3474_line_160.getRawClass();
				int PROBE_END_LINE_160 = 160;
				Class<?> cls = annotated_class_resolver_1_expr33_line_160;
                int PROBE_START_LINE_161 = 162;
				com.fasterxml.jackson.databind.introspect.AnnotationCollector v_resolved_ca_3473_line_161 = resolvedCA;
				Class<?> v_cls_3475_line_161 = cls;
				com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_class_resolver_1_expr35_line_161 = _addClassMixIns(
						v_resolved_ca_3473_line_161, v_cls_3475_line_161, _mixInResolver.findMixInClassFor(cls));
				int PROBE_END_LINE_161 = 162;
				resolvedCA = annotated_class_resolver_1_expr35_line_161;
            }
            int PROBE_START_LINE_164 = 165;
			com.fasterxml.jackson.databind.introspect.AnnotationCollector v_resolved_ca_3473_line_164 = resolvedCA;
			com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_class_resolver_1_expr38_line_164 = _addAnnotationsIfNotPresent(
					v_resolved_ca_3473_line_164, ClassUtil.findClassAnnotations(type.getRawClass()));
			int PROBE_END_LINE_164 = 165;
			resolvedCA = annotated_class_resolver_1_expr38_line_164;
        }
        int PROBE_START_LINE_173 = 176;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_3448_line_173 = _mixInResolver;
		boolean annotated_class_resolver_1_expr40_line_173 = f__mix_in_resolver_3448_line_173 != null;
		int PROBE_END_LINE_173 = 176;
		/* and finally... any annotations there might be for plain
         * old Object.class: separate because for all other purposes
         * it is just ignored (not included in super types)
         */
        // 12-Jul-2009, tatu: Should this be done for interfaces too?
        //  For now, yes, seems useful for some cases, and not harmful for any?
        if (annotated_class_resolver_1_expr40_line_173) {
            int PROBE_START_LINE_174 = 175;
			com.fasterxml.jackson.databind.introspect.AnnotationCollector v_resolved_ca_3473_line_174 = resolvedCA;
			com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_class_resolver_1_expr42_line_174 = _addClassMixIns(
					v_resolved_ca_3473_line_174, Object.class, _mixInResolver.findMixInClassFor(Object.class));
			int PROBE_END_LINE_174 = 175;
			resolvedCA = annotated_class_resolver_1_expr42_line_174;
        }
        int PROBE_START_LINE_177 = 177;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector v_resolved_ca_3473_line_177 = resolvedCA;
		com.fasterxml.jackson.databind.util.Annotations annotated_class_resolver_1_expr45_line_177 = v_resolved_ca_3473_line_177
				.asAnnotations();
		int PROBE_END_LINE_177 = 177;
		return annotated_class_resolver_1_expr45_line_177;
    }

    private AnnotationCollector _addClassMixIns(AnnotationCollector annotations,
            Class<?> target, Class<?> mixin)
    {
        int PROBE_START_LINE_183 = 195;
		Class<?> p_mixin_3478_line_183 = mixin;
		boolean annotated_class_resolver_1_expr46_line_183 = p_mixin_3478_line_183 != null;
		int PROBE_END_LINE_183 = 195;
		if (annotated_class_resolver_1_expr46_line_183) {
            // Ok, first: annotations from mix-in class itself:
            annotations = _addAnnotationsIfNotPresent(annotations, ClassUtil.findClassAnnotations(mixin));
    
            // And then from its supertypes, if any. But note that we will only consider
            // super-types up until reaching the masked class (if found); this because
            // often mix-in class is a sub-class (for convenience reasons).
            // And if so, we absolutely must NOT include super types of masked class,
            // as that would inverse precedence of annotations.
            for (Class<?> parent : ClassUtil.findSuperClasses(mixin, target, false)) {
                annotations = _addAnnotationsIfNotPresent(annotations, ClassUtil.findClassAnnotations(parent));
            }
        }
        int PROBE_START_LINE_196 = 196;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector p_annotations_3476_line_196 = annotations;
		int PROBE_END_LINE_196 = 196;
		return p_annotations_3476_line_196;
    }

    private AnnotationCollector _addAnnotationsIfNotPresent(AnnotationCollector c,
            Annotation[] anns)
    {
        int PROBE_START_LINE_202 = 212;
		java.lang.annotation.Annotation[] p_anns_3480_line_202 = anns;
		boolean annotated_class_resolver_1_expr47_line_202 = p_anns_3480_line_202 != null;
		int PROBE_END_LINE_202 = 212;
		if (annotated_class_resolver_1_expr47_line_202) {
            int PROBE_START_LINE_203 = 211;
			java.lang.annotation.Annotation[] p_anns_3480_line_203 = anns;
			int PROBE_END_LINE_203 = 211;
			for (Annotation ann : p_anns_3480_line_203) { // first: direct annotations
                int PROBE_START_LINE_205 = 210;
				com.fasterxml.jackson.databind.introspect.AnnotationCollector p_c_3479_line_205 = c;
				java.lang.annotation.Annotation v_ann_3481_line_205 = ann;
				boolean annotated_class_resolver_1_expr49_line_205 = p_c_3479_line_205.isPresent(v_ann_3481_line_205);
				boolean annotated_class_resolver_1_expr48_line_205 = !annotated_class_resolver_1_expr49_line_205;
				int PROBE_END_LINE_205 = 210;
				// note: we will NOT filter out non-Jackson annotations any more
                if (annotated_class_resolver_1_expr48_line_205) {
                    int PROBE_START_LINE_206 = 206;
					com.fasterxml.jackson.databind.introspect.AnnotationCollector p_c_3479_line_206 = c;
					java.lang.annotation.Annotation v_ann_3481_line_206 = ann;
					com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_class_resolver_1_expr51_line_206 = p_c_3479_line_206
							.addOrOverride(v_ann_3481_line_206);
					int PROBE_END_LINE_206 = 206;
					c = annotated_class_resolver_1_expr51_line_206;
                    int PROBE_START_LINE_207 = 209;
					com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3450_line_207 = _intr;
					java.lang.annotation.Annotation v_ann_3481_line_207 = ann;
					boolean annotated_class_resolver_1_expr52_line_207 = f__intr_3450_line_207
							.isAnnotationBundle(v_ann_3481_line_207);
					int PROBE_END_LINE_207 = 209;
					if (annotated_class_resolver_1_expr52_line_207) {
                        c = _addFromBundleIfNotPresent(c, ann);
                    }
                }
            }
        }
        int PROBE_START_LINE_213 = 213;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector p_c_3479_line_213 = c;
		int PROBE_END_LINE_213 = 213;
		return p_c_3479_line_213;
    }

    private AnnotationCollector _addFromBundleIfNotPresent(AnnotationCollector c,
            Annotation bundle)
    {
        for (Annotation ann : ClassUtil.findClassAnnotations(bundle.annotationType())) {
            // minor optimization: by-pass 2 common JDK meta-annotations
            if ((ann instanceof Target) || (ann instanceof Retention)) {
                continue;
            }
            if (!c.isPresent(ann)) {
                c = c.addOrOverride(ann);
                if (_intr.isAnnotationBundle(ann)) {
                    c = _addFromBundleIfNotPresent(c, ann);
                }
            }
        }
        return c;
    }
}
