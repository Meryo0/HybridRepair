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
        _config = config;
        _type = type;
        _class = type.getRawClass();
        _mixInResolver = r;
        _bindings = type.getBindings();
        _intr = config.isAnnotationProcessingEnabled()
                ? config.getAnnotationIntrospector() : null;
        _primaryMixin = _config.findMixInClassFor(_class);
    }

    AnnotatedClassResolver(MapperConfig<?> config, Class<?> cls, MixInResolver r) {
        int PROBE_START_LINE_48 = 48;
		MapperConfig<?> p_config_1776_line_48 = config;
		int PROBE_END_LINE_48 = 48;
		_config = p_config_1776_line_48;
        _type = null;
        int PROBE_START_LINE_50 = 50;
		Class<?> p_cls_1777_line_50 = cls;
		int PROBE_END_LINE_50 = 50;
		_class = p_cls_1777_line_50;
        int PROBE_START_LINE_51 = 51;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_r_1778_line_51 = r;
		int PROBE_END_LINE_51 = 51;
		_mixInResolver = p_r_1778_line_51;
        int PROBE_START_LINE_52 = 52;
		com.fasterxml.jackson.databind.type.TypeBindings annotated_class_resolver_1_expr7_line_52 = TypeBindings
				.emptyBindings();
		int PROBE_END_LINE_52 = 52;
		_bindings = annotated_class_resolver_1_expr7_line_52;
        int PROBE_START_LINE_53 = 60;
		MapperConfig<?> p_config_1776_line_53 = config;
		boolean annotated_class_resolver_1_expr8_line_53 = p_config_1776_line_53 == null;
		int PROBE_END_LINE_53 = 60;
		if (annotated_class_resolver_1_expr8_line_53) {
            _intr = null;
            _primaryMixin = null;
        } else {
            int PROBE_START_LINE_57 = 58;
			MapperConfig<?> p_config_1776_line_57 = config;
			boolean annotated_class_resolver_1_expr11_line_57 = p_config_1776_line_57.isAnnotationProcessingEnabled();
			com.fasterxml.jackson.databind.AnnotationIntrospector annotated_class_resolver_1_expr10_line_57 = annotated_class_resolver_1_expr11_line_57
					? config.getAnnotationIntrospector()
					: null;
			int PROBE_END_LINE_57 = 58;
			_intr = annotated_class_resolver_1_expr10_line_57;
            int PROBE_START_LINE_59 = 59;
			MapperConfig<?> f__config_1779_line_59 = _config;
			Class<?> f__class_1781_line_59 = _class;
			Class<?> annotated_class_resolver_1_expr14_line_59 = f__config_1779_line_59
					.findMixInClassFor(f__class_1781_line_59);
			int PROBE_END_LINE_59 = 59;
			_primaryMixin = annotated_class_resolver_1_expr14_line_59;
        }
    }

    public static AnnotatedClass resolve(MapperConfig<?> config, JavaType forType,
            MixInResolver r)
    {
        return new AnnotatedClassResolver(config, forType, r).resolveFully();
    }

    public static AnnotatedClass resolveWithoutSuperTypes(MapperConfig<?> config, JavaType forType,
            MixInResolver r)
    {
        return new AnnotatedClassResolver(config, forType, r).resolveWithoutSuperTypes();
    }

    public static AnnotatedClass resolveWithoutSuperTypes(MapperConfig<?> config, Class<?> forType) {
        int PROBE_START_LINE_76 = 76;
		MapperConfig<?> p_config_1792_line_76 = config;
		Class<?> p_for_type_1793_line_76 = forType;
		MapperConfig<?> p_config_1792_line_76_v1 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass annotated_class_resolver_1_expr15_line_76 = resolveWithoutSuperTypes(
				p_config_1792_line_76, p_for_type_1793_line_76, p_config_1792_line_76_v1);
		int PROBE_END_LINE_76 = 76;
		return annotated_class_resolver_1_expr15_line_76;
    }

    public static AnnotatedClass resolveWithoutSuperTypes(MapperConfig<?> config, Class<?> forType,
            MixInResolver r)
    {
        int PROBE_START_LINE_82 = 82;
		MapperConfig<?> p_config_1794_line_82 = config;
		Class<?> p_for_type_1795_line_82 = forType;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_r_1796_line_82 = r;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass annotated_class_resolver_1_expr16_line_82 = new AnnotatedClassResolver(
				p_config_1794_line_82, p_for_type_1795_line_82, p_r_1796_line_82).resolveWithoutSuperTypes();
		int PROBE_END_LINE_82 = 82;
		return annotated_class_resolver_1_expr16_line_82;
    }

    /**
     * Internal helper class used for resolving a small set of "primordial" types for which
     * we do not accept any annotation information or overrides. 
     */
    static AnnotatedClass createPrimordial(Class<?> raw) {
        Annotations noClassAnn = new AnnotationMap();
        int PROBE_START_LINE_91 = 91;
		List<JavaType> annotated_class_resolver_1_expr19_line_91 = Collections.emptyList();
		int PROBE_END_LINE_91 = 91;
		List<JavaType> superTypes = annotated_class_resolver_1_expr19_line_91;
        int PROBE_START_LINE_92 = 93;
		Class<?> p_raw_1797_line_92 = raw;
		List<com.fasterxml.jackson.databind.JavaType> v_super_types_1799_line_92 = superTypes;
		com.fasterxml.jackson.databind.util.Annotations v_no_class_ann_1798_line_92 = noClassAnn;
		int PROBE_END_LINE_92 = 93;
		return new AnnotatedClass(null, p_raw_1797_line_92, v_super_types_1799_line_92, null, v_no_class_ann_1798_line_92,
                TypeBindings.emptyBindings(), null, null, null);
    }

    AnnotatedClass resolveFully() {
        List<JavaType> superTypes = ClassUtil.findSuperTypes(_type, null, false);
        Annotations classAnn = resolveClassAnnotations(superTypes);
        return new AnnotatedClass(_type, _class, superTypes, _primaryMixin, classAnn, _bindings,
                _intr, _mixInResolver, _config.getTypeFactory());

    }

    AnnotatedClass resolveWithoutSuperTypes() {
        int PROBE_START_LINE_105 = 105;
		List<JavaType> annotated_class_resolver_1_expr22_line_105 = Collections.<JavaType>emptyList();
		int PROBE_END_LINE_105 = 105;
		List<JavaType> superTypes = annotated_class_resolver_1_expr22_line_105;
        int PROBE_START_LINE_106 = 106;
		List<com.fasterxml.jackson.databind.JavaType> v_super_types_1800_line_106 = superTypes;
		Annotations annotated_class_resolver_1_expr23_line_106 = resolveClassAnnotations(v_super_types_1800_line_106);
		int PROBE_END_LINE_106 = 106;
		Annotations classAnn = annotated_class_resolver_1_expr23_line_106;
        int PROBE_START_LINE_107 = 108;
		Class<?> f__class_1781_line_107 = _class;
		List<com.fasterxml.jackson.databind.JavaType> v_super_types_1800_line_107 = superTypes;
		Class<?> f__primary_mixin_1785_line_107 = _primaryMixin;
		com.fasterxml.jackson.databind.util.Annotations v_class_ann_1801_line_107 = classAnn;
		int PROBE_END_LINE_107 = 108;
		return new AnnotatedClass(null, f__class_1781_line_107, v_super_types_1800_line_107, f__primary_mixin_1785_line_107, v_class_ann_1801_line_107,
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
        int PROBE_START_LINE_125 = 127;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_1784_line_125 = _intr;
		boolean annotated_class_resolver_1_expr26_line_125 = f__intr_1784_line_125 == null;
		int PROBE_END_LINE_125 = 127;
		// Should skip processing if annotation processing disabled
        if (annotated_class_resolver_1_expr26_line_125) {
            return NO_ANNOTATIONS;
        }
        int PROBE_START_LINE_128 = 128;
		AnnotationCollector annotated_class_resolver_1_expr27_line_128 = AnnotationCollector.emptyCollector();
		int PROBE_END_LINE_128 = 128;
		AnnotationCollector resolvedCA = annotated_class_resolver_1_expr27_line_128;
        int PROBE_START_LINE_130 = 132;
		Class<?> f__primary_mixin_1785_line_130 = _primaryMixin;
		boolean annotated_class_resolver_1_expr28_line_130 = f__primary_mixin_1785_line_130 != null;
		int PROBE_END_LINE_130 = 132;
		// add mix-in annotations first (overrides)
        if (annotated_class_resolver_1_expr28_line_130) {
            resolvedCA = _addClassMixIns(resolvedCA, _class, _primaryMixin);
        }
        int PROBE_START_LINE_134 = 135;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector v_resolved_ca_1803_line_134 = resolvedCA;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_class_resolver_1_expr30_line_134 = _addAnnotationsIfNotPresent(
				v_resolved_ca_1803_line_134, ClassUtil.findClassAnnotations(_class));
		int PROBE_END_LINE_134 = 135;
		// then annotations from the class itself:
        resolvedCA = annotated_class_resolver_1_expr30_line_134;

        int PROBE_START_LINE_138 = 147;
		List<com.fasterxml.jackson.databind.JavaType> p_super_types_1802_line_138 = superTypes;
		int PROBE_END_LINE_138 = 147;
		// and then from super types
        for (JavaType type : p_super_types_1802_line_138) {
            // and mix mix-in annotations in-between
            if (_mixInResolver != null) {
                Class<?> cls = type.getRawClass();
                resolvedCA = _addClassMixIns(resolvedCA, cls,
                        _mixInResolver.findMixInClassFor(cls));
            }
            resolvedCA = _addAnnotationsIfNotPresent(resolvedCA,
                    ClassUtil.findClassAnnotations(type.getRawClass()));
        }
        int PROBE_START_LINE_154 = 157;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_1782_line_154 = _mixInResolver;
		boolean annotated_class_resolver_1_expr32_line_154 = f__mix_in_resolver_1782_line_154 != null;
		int PROBE_END_LINE_154 = 157;
		/* and finally... any annotations there might be for plain
         * old Object.class: separate because for all other purposes
         * it is just ignored (not included in super types)
         */
        // 12-Jul-2009, tatu: Should this be done for interfaces too?
        //  For now, yes, seems useful for some cases, and not harmful for any?
        if (annotated_class_resolver_1_expr32_line_154) {
            int PROBE_START_LINE_155 = 156;
			com.fasterxml.jackson.databind.introspect.AnnotationCollector v_resolved_ca_1803_line_155 = resolvedCA;
			com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_class_resolver_1_expr34_line_155 = _addClassMixIns(
					v_resolved_ca_1803_line_155, Object.class, _mixInResolver.findMixInClassFor(Object.class));
			int PROBE_END_LINE_155 = 156;
			resolvedCA = annotated_class_resolver_1_expr34_line_155;
        }
        int PROBE_START_LINE_158 = 158;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector v_resolved_ca_1803_line_158 = resolvedCA;
		com.fasterxml.jackson.databind.util.Annotations annotated_class_resolver_1_expr37_line_158 = v_resolved_ca_1803_line_158
				.asAnnotations();
		int PROBE_END_LINE_158 = 158;
		return annotated_class_resolver_1_expr37_line_158;
    }

    private AnnotationCollector _addClassMixIns(AnnotationCollector annotations,
            Class<?> target, Class<?> mixin)
    {
        int PROBE_START_LINE_164 = 176;
		Class<?> p_mixin_1807_line_164 = mixin;
		boolean annotated_class_resolver_1_expr38_line_164 = p_mixin_1807_line_164 != null;
		int PROBE_END_LINE_164 = 176;
		if (annotated_class_resolver_1_expr38_line_164) {
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
        int PROBE_START_LINE_177 = 177;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector p_annotations_1805_line_177 = annotations;
		int PROBE_END_LINE_177 = 177;
		return p_annotations_1805_line_177;
    }

    private AnnotationCollector _addAnnotationsIfNotPresent(AnnotationCollector c,
            Annotation[] anns)
    {
        int PROBE_START_LINE_183 = 193;
		java.lang.annotation.Annotation[] p_anns_1809_line_183 = anns;
		boolean annotated_class_resolver_1_expr39_line_183 = p_anns_1809_line_183 != null;
		int PROBE_END_LINE_183 = 193;
		if (annotated_class_resolver_1_expr39_line_183) {
            int PROBE_START_LINE_184 = 192;
			java.lang.annotation.Annotation[] p_anns_1809_line_184 = anns;
			int PROBE_END_LINE_184 = 192;
			for (Annotation ann : p_anns_1809_line_184) { // first: direct annotations
                int PROBE_START_LINE_186 = 191;
				com.fasterxml.jackson.databind.introspect.AnnotationCollector p_c_1808_line_186 = c;
				java.lang.annotation.Annotation v_ann_1810_line_186 = ann;
				boolean annotated_class_resolver_1_expr41_line_186 = p_c_1808_line_186.isPresent(v_ann_1810_line_186);
				boolean annotated_class_resolver_1_expr40_line_186 = !annotated_class_resolver_1_expr41_line_186;
				int PROBE_END_LINE_186 = 191;
				// note: we will NOT filter out non-Jackson annotations any more
                if (annotated_class_resolver_1_expr40_line_186) {
                    int PROBE_START_LINE_187 = 187;
					com.fasterxml.jackson.databind.introspect.AnnotationCollector p_c_1808_line_187 = c;
					java.lang.annotation.Annotation v_ann_1810_line_187 = ann;
					com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_class_resolver_1_expr43_line_187 = p_c_1808_line_187
							.addOrOverride(v_ann_1810_line_187);
					int PROBE_END_LINE_187 = 187;
					c = annotated_class_resolver_1_expr43_line_187;
                    int PROBE_START_LINE_188 = 190;
					com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_1784_line_188 = _intr;
					java.lang.annotation.Annotation v_ann_1810_line_188 = ann;
					boolean annotated_class_resolver_1_expr44_line_188 = f__intr_1784_line_188
							.isAnnotationBundle(v_ann_1810_line_188);
					int PROBE_END_LINE_188 = 190;
					if (annotated_class_resolver_1_expr44_line_188) {
                        c = _addFromBundleIfNotPresent(c, ann);
                    }
                }
            }
        }
        int PROBE_START_LINE_194 = 194;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector p_c_1808_line_194 = c;
		int PROBE_END_LINE_194 = 194;
		return p_c_1808_line_194;
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
