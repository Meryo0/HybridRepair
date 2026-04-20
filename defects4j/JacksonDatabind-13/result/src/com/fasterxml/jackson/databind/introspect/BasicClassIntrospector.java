package com.fasterxml.jackson.databind.introspect;

import java.util.Collection;
import java.util.Map;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.util.LRUMap;

public class BasicClassIntrospector
    extends ClassIntrospector
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    /* We keep a small set of pre-constructed descriptions to use for
     * common non-structured values, such as Numbers and Strings.
     * This is strictly performance optimization to reduce what is
     * usually one-time cost, but seems useful for some cases considering
     * simplicity.
     * 
     * @since 2.4
     */
    
    protected final static BasicBeanDescription STRING_DESC;
    static {
        int PROBE_START_LINE_32 = 32;
		AnnotatedClass basic_class_introspector_1_expr1_line_32 = AnnotatedClass
				.constructWithoutSuperTypes(String.class, null, null);
		int PROBE_END_LINE_32 = 32;
		AnnotatedClass ac = basic_class_introspector_1_expr1_line_32;
        int PROBE_START_LINE_33 = 33;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr5_line_33 = SimpleType
				.constructUnsafe(String.class);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_2781_line_33 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr4_line_33 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr5_line_33, v_ac_2781_line_33);
		int PROBE_END_LINE_33 = 33;
		STRING_DESC = basic_class_introspector_1_expr4_line_33;
    }
    protected final static BasicBeanDescription BOOLEAN_DESC;
    static {
        int PROBE_START_LINE_37 = 37;
		Class<Boolean> q_type_100_line_37 = Boolean.TYPE;
		AnnotatedClass basic_class_introspector_1_expr7_line_37 = AnnotatedClass
				.constructWithoutSuperTypes(q_type_100_line_37, null, null);
		int PROBE_END_LINE_37 = 37;
		AnnotatedClass ac = basic_class_introspector_1_expr7_line_37;
        int PROBE_START_LINE_38 = 38;
		Class<Boolean> q_type_101_line_38 = Boolean.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr10_line_38 = SimpleType
				.constructUnsafe(q_type_101_line_38);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_2783_line_38 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr9_line_38 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr10_line_38, v_ac_2783_line_38);
		int PROBE_END_LINE_38 = 38;
		BOOLEAN_DESC = basic_class_introspector_1_expr9_line_38;
    }
    protected final static BasicBeanDescription INT_DESC;
    static {
        int PROBE_START_LINE_42 = 42;
		Class<Integer> q_type_101_line_42 = Integer.TYPE;
		AnnotatedClass basic_class_introspector_1_expr11_line_42 = AnnotatedClass
				.constructWithoutSuperTypes(q_type_101_line_42, null, null);
		int PROBE_END_LINE_42 = 42;
		AnnotatedClass ac = basic_class_introspector_1_expr11_line_42;
        int PROBE_START_LINE_43 = 43;
		Class<Integer> q_type_101_line_43 = Integer.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr14_line_43 = SimpleType
				.constructUnsafe(q_type_101_line_43);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_2785_line_43 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr13_line_43 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr14_line_43, v_ac_2785_line_43);
		int PROBE_END_LINE_43 = 43;
		INT_DESC = basic_class_introspector_1_expr13_line_43;
    }
    protected final static BasicBeanDescription LONG_DESC;
    static {
        int PROBE_START_LINE_47 = 47;
		Class<Long> q_type_101_line_47 = Long.TYPE;
		AnnotatedClass basic_class_introspector_1_expr15_line_47 = AnnotatedClass
				.constructWithoutSuperTypes(q_type_101_line_47, null, null);
		int PROBE_END_LINE_47 = 47;
		AnnotatedClass ac = basic_class_introspector_1_expr15_line_47;
        int PROBE_START_LINE_48 = 48;
		Class<Long> q_type_102_line_48 = Long.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr18_line_48 = SimpleType
				.constructUnsafe(q_type_102_line_48);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_2787_line_48 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr17_line_48 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr18_line_48, v_ac_2787_line_48);
		int PROBE_END_LINE_48 = 48;
		LONG_DESC = basic_class_introspector_1_expr17_line_48;
    }
    
    /*
    /**********************************************************
    /* Life cycle
    /**********************************************************
     */

    @Deprecated // since 2.5: construct instance directly
    public final static BasicClassIntrospector instance = new BasicClassIntrospector();

    /**
     * Looks like 'forClassAnnotations()' gets called so frequently that we
     * should consider caching to avoid some of the lookups.
     * 
     * @since 2.5
     */
    protected final LRUMap<JavaType,BasicBeanDescription> _cachedFCA;

    public BasicClassIntrospector() {
        // a small cache should go a long way here
        _cachedFCA = new LRUMap<JavaType,BasicBeanDescription>(16, 64);
    }
    
    /*
    /**********************************************************
    /* Factory method impls
    /**********************************************************
     */

    @Override
    public BasicBeanDescription forSerialization(SerializationConfig cfg,
            JavaType type, MixInResolver r)
    {
        // minor optimization: for some JDK types do minimal introspection
        BasicBeanDescription desc = _findStdTypeDesc(type);
        if (desc == null) {
            // As per [Databind#550], skip full introspection for some of standard
            // structured types as well
            desc = _findStdJdkCollectionDesc(cfg, type, r);
            if (desc == null) {
                desc = BasicBeanDescription.forSerialization(collectProperties(cfg,
                        type, r, true, "set"));
            }
            // Also: this is a superset of "forClassAnnotations", so may optimize by optional add:
            _cachedFCA.putIfAbsent(type, desc);
        }
        return desc;
    }

    @Override
    public BasicBeanDescription forDeserialization(DeserializationConfig cfg,
            JavaType type, MixInResolver r)
    {
        int PROBE_START_LINE_104 = 104;
		com.fasterxml.jackson.databind.JavaType p_type_2795_line_104 = type;
		BasicBeanDescription basic_class_introspector_1_expr22_line_104 = _findStdTypeDesc(p_type_2795_line_104);
		int PROBE_END_LINE_104 = 104;
		// minor optimization: for some JDK types do minimal introspection
        BasicBeanDescription desc = basic_class_introspector_1_expr22_line_104;
        int PROBE_START_LINE_105 = 115;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_2797_line_105 = desc;
		boolean basic_class_introspector_1_expr23_line_105 = v_desc_2797_line_105 == null;
		int PROBE_END_LINE_105 = 115;
		if (basic_class_introspector_1_expr23_line_105) {
            int PROBE_START_LINE_108 = 108;
			com.fasterxml.jackson.databind.DeserializationConfig p_cfg_2794_line_108 = cfg;
			com.fasterxml.jackson.databind.JavaType p_type_2795_line_108 = type;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_r_2796_line_108 = r;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr25_line_108 = _findStdJdkCollectionDesc(
					p_cfg_2794_line_108, p_type_2795_line_108, p_r_2796_line_108);
			int PROBE_END_LINE_108 = 108;
			// As per [Databind#550], skip full introspection for some of standard
            // structured types as well
            desc = basic_class_introspector_1_expr25_line_108;
            int PROBE_START_LINE_109 = 112;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_2797_line_109 = desc;
			boolean basic_class_introspector_1_expr26_line_109 = v_desc_2797_line_109 == null;
			int PROBE_END_LINE_109 = 112;
			if (basic_class_introspector_1_expr26_line_109) {
                int PROBE_START_LINE_110 = 111;
				com.fasterxml.jackson.databind.DeserializationConfig p_cfg_2794_line_110 = cfg;
				com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector basic_class_introspector_1_expr29_line_110 = collectProperties(
						p_cfg_2794_line_110, type, r, false, "set");
				com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr28_line_110 = BasicBeanDescription
						.forDeserialization(basic_class_introspector_1_expr29_line_110);
				int PROBE_END_LINE_110 = 111;
				desc = basic_class_introspector_1_expr28_line_110;
            }
            int PROBE_START_LINE_114 = 114;
			LRUMap<com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.introspect.BasicBeanDescription> f__cached_fca_2790_line_114 = _cachedFCA;
			com.fasterxml.jackson.databind.JavaType p_type_2795_line_114 = type;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_2797_line_114 = desc;
			int PROBE_END_LINE_114 = 114;
			// Also: this is a superset of "forClassAnnotations", so may optimize by optional add:
            f__cached_fca_2790_line_114.putIfAbsent(p_type_2795_line_114, v_desc_2797_line_114);
        }
        int PROBE_START_LINE_116 = 116;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_2797_line_116 = desc;
		int PROBE_END_LINE_116 = 116;
		return v_desc_2797_line_116;
    }

    @Override
    public BasicBeanDescription forDeserializationWithBuilder(DeserializationConfig cfg,
            JavaType type, MixInResolver r)
    {
        // no std JDK types with Builders, so:

        BasicBeanDescription desc = BasicBeanDescription.forDeserialization(collectPropertiesWithBuilder(cfg,
                type, r, false));
        // this is still a superset of "forClassAnnotations", so may optimize by optional add:
        _cachedFCA.putIfAbsent(type, desc);
        return desc;
    }
    
    @Override
    public BasicBeanDescription forCreation(DeserializationConfig cfg,
            JavaType type, MixInResolver r)
    {
        BasicBeanDescription desc = _findStdTypeDesc(type);
        if (desc == null) {

            // As per [Databind#550], skip full introspection for some of standard
            // structured types as well
            desc = _findStdJdkCollectionDesc(cfg, type, r);
            if (desc == null) {
                desc = BasicBeanDescription.forDeserialization(
            		collectProperties(cfg, type, r, false, "set"));
            }
        }
        // should this be cached for FCA?
        return desc;
    }

    @Override
    public BasicBeanDescription forClassAnnotations(MapperConfig<?> cfg,
            JavaType type, MixInResolver r)
    {
        int PROBE_START_LINE_155 = 155;
		com.fasterxml.jackson.databind.JavaType p_type_2805_line_155 = type;
		BasicBeanDescription basic_class_introspector_1_expr31_line_155 = _findStdTypeDesc(p_type_2805_line_155);
		int PROBE_END_LINE_155 = 155;
		BasicBeanDescription desc = basic_class_introspector_1_expr31_line_155;
        int PROBE_START_LINE_156 = 165;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_2807_line_156 = desc;
		boolean basic_class_introspector_1_expr32_line_156 = v_desc_2807_line_156 == null;
		int PROBE_END_LINE_156 = 165;
		if (basic_class_introspector_1_expr32_line_156) {
            int PROBE_START_LINE_157 = 157;
			LRUMap<com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.introspect.BasicBeanDescription> f__cached_fca_2790_line_157 = _cachedFCA;
			com.fasterxml.jackson.databind.JavaType p_type_2805_line_157 = type;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr34_line_157 = f__cached_fca_2790_line_157
					.get(p_type_2805_line_157);
			int PROBE_END_LINE_157 = 157;
			desc = basic_class_introspector_1_expr34_line_157;
            int PROBE_START_LINE_158 = 164;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_2807_line_158 = desc;
			boolean basic_class_introspector_1_expr35_line_158 = v_desc_2807_line_158 == null;
			int PROBE_END_LINE_158 = 164;
			if (basic_class_introspector_1_expr35_line_158) {
                boolean useAnnotations = cfg.isAnnotationProcessingEnabled();
                AnnotatedClass ac = AnnotatedClass.construct(type.getRawClass(),
                        (useAnnotations ? cfg.getAnnotationIntrospector() : null), r);
                desc = BasicBeanDescription.forOtherUse(cfg, type, ac);
                _cachedFCA.put(type, desc);
            }
        }
        int PROBE_START_LINE_166 = 166;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_2807_line_166 = desc;
		int PROBE_END_LINE_166 = 166;
		return v_desc_2807_line_166;
    }

    @Override
    public BasicBeanDescription forDirectClassAnnotations(MapperConfig<?> cfg,
            JavaType type, MixInResolver r)
    {
        BasicBeanDescription desc = _findStdTypeDesc(type);
        if (desc == null) {
            boolean useAnnotations = cfg.isAnnotationProcessingEnabled();
            AnnotationIntrospector ai =  cfg.getAnnotationIntrospector();
            AnnotatedClass ac = AnnotatedClass.constructWithoutSuperTypes(type.getRawClass(),
                    (useAnnotations ? ai : null), r);
            desc = BasicBeanDescription.forOtherUse(cfg, type, ac);
        }
        return desc;
    }
    
    /*
    /**********************************************************
    /* Overridable helper methods
    /**********************************************************
     */

    protected POJOPropertiesCollector collectProperties(MapperConfig<?> config,
            JavaType type, MixInResolver r, boolean forSerialization,
            String mutatorPrefix)
    {
        int PROBE_START_LINE_194 = 194;
		MapperConfig<?> p_config_2811_line_194 = config;
		boolean basic_class_introspector_1_expr36_line_194 = p_config_2811_line_194.isAnnotationProcessingEnabled();
		int PROBE_END_LINE_194 = 194;
		boolean useAnnotations = basic_class_introspector_1_expr36_line_194;
        int PROBE_START_LINE_195 = 196;
		com.fasterxml.jackson.databind.JavaType p_type_2812_line_195 = type;
		Class<?> basic_class_introspector_1_expr38_line_195 = p_type_2812_line_195.getRawClass();
		AnnotatedClass basic_class_introspector_1_expr37_line_195 = AnnotatedClass.construct(
				basic_class_introspector_1_expr38_line_195,
				(useAnnotations ? config.getAnnotationIntrospector() : null), r);
		int PROBE_END_LINE_195 = 196;
		AnnotatedClass ac = basic_class_introspector_1_expr37_line_195;
        int PROBE_START_LINE_197 = 197;
		MapperConfig<?> p_config_2811_line_197 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_2817_line_197 = ac;
		com.fasterxml.jackson.databind.JavaType p_type_2812_line_197 = type;
		boolean p_for_serialization_2814_line_197 = forSerialization;
		String p_mutator_prefix_2815_line_197 = mutatorPrefix;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector basic_class_introspector_1_expr41_line_197 = constructPropertyCollector(
				p_config_2811_line_197, v_ac_2817_line_197, p_type_2812_line_197, p_for_serialization_2814_line_197,
				p_mutator_prefix_2815_line_197);
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector basic_class_introspector_1_expr40_line_197 = basic_class_introspector_1_expr41_line_197
				.collect();
		int PROBE_END_LINE_197 = 197;
		return basic_class_introspector_1_expr40_line_197;
    }
    
    protected POJOPropertiesCollector collectPropertiesWithBuilder(MapperConfig<?> config,
            JavaType type, MixInResolver r, boolean forSerialization)
    {
        boolean useAnnotations = config.isAnnotationProcessingEnabled();
        AnnotationIntrospector ai = useAnnotations ? config.getAnnotationIntrospector() : null;
        AnnotatedClass ac = AnnotatedClass.construct(type.getRawClass(), ai, r);
        JsonPOJOBuilder.Value builderConfig = (ai == null) ? null : ai.findPOJOBuilderConfig(ac);
        String mutatorPrefix = (builderConfig == null) ? "with" : builderConfig.withPrefix;
        return constructPropertyCollector(config, ac, type, forSerialization, mutatorPrefix).collect();
    }

    /**
     * Overridable method called for creating {@link POJOPropertiesCollector} instance
     * to use; override is needed if a custom sub-class is to be used.
     */
    protected POJOPropertiesCollector constructPropertyCollector(MapperConfig<?> config,
            AnnotatedClass ac, JavaType type, boolean forSerialization, String mutatorPrefix)
    {
        int PROBE_START_LINE_218 = 218;
		MapperConfig<?> p_config_2822_line_218 = config;
		boolean p_for_serialization_2825_line_218 = forSerialization;
		com.fasterxml.jackson.databind.JavaType p_type_2824_line_218 = type;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_2823_line_218 = ac;
		String p_mutator_prefix_2826_line_218 = mutatorPrefix;
		int PROBE_END_LINE_218 = 218;
		return new POJOPropertiesCollector(p_config_2822_line_218, p_for_serialization_2825_line_218, p_type_2824_line_218, p_ac_2823_line_218, p_mutator_prefix_2826_line_218);
    }
    
    /**
     * Method called to see if type is one of core JDK types
     * that we have cached for efficiency.
     */
    protected BasicBeanDescription _findStdTypeDesc(JavaType type)
    {
        int PROBE_START_LINE_227 = 227;
		com.fasterxml.jackson.databind.JavaType p_type_2827_line_227 = type;
		Class<?> basic_class_introspector_1_expr43_line_227 = p_type_2827_line_227.getRawClass();
		int PROBE_END_LINE_227 = 227;
		Class<?> cls = basic_class_introspector_1_expr43_line_227;
        int PROBE_START_LINE_228 = 242;
		Class<?> v_cls_2828_line_228 = cls;
		boolean basic_class_introspector_1_expr44_line_228 = v_cls_2828_line_228.isPrimitive();
		int PROBE_END_LINE_228 = 242;
		if (basic_class_introspector_1_expr44_line_228) {
            int PROBE_START_LINE_229 = 231;
			Class<?> v_cls_2828_line_229 = cls;
			Class<Boolean> q_type_102_line_229 = Boolean.TYPE;
			boolean basic_class_introspector_1_expr45_line_229 = v_cls_2828_line_229 == q_type_102_line_229;
			int PROBE_END_LINE_229 = 231;
			if (basic_class_introspector_1_expr45_line_229) {
                return BOOLEAN_DESC;
            }
            int PROBE_START_LINE_232 = 234;
			Class<?> v_cls_2828_line_232 = cls;
			Class<Integer> q_type_102_line_232 = Integer.TYPE;
			boolean basic_class_introspector_1_expr46_line_232 = v_cls_2828_line_232 == q_type_102_line_232;
			int PROBE_END_LINE_232 = 234;
			if (basic_class_introspector_1_expr46_line_232) {
                int PROBE_START_LINE_233 = 233;
				com.fasterxml.jackson.databind.introspect.BasicBeanDescription f_int_desc_2786_line_233 = INT_DESC;
				int PROBE_END_LINE_233 = 233;
				return f_int_desc_2786_line_233;
            }
            if (cls == Long.TYPE) {
                return LONG_DESC;
            }
        } else {
            int PROBE_START_LINE_239 = 241;
			Class<?> v_cls_2828_line_239 = cls;
			boolean basic_class_introspector_1_expr47_line_239 = v_cls_2828_line_239 == String.class;
			int PROBE_END_LINE_239 = 241;
			if (basic_class_introspector_1_expr47_line_239) {
                return STRING_DESC;
            }
        }
        return null;
    }

    /**
     * Helper method used to decide whether we can omit introspection
     * for members (methods, fields, constructors); we may do so for
     * a limited number of container types JDK provides.
     */
    protected boolean _isStdJDKCollection(JavaType type)
    {
        int PROBE_START_LINE_253 = 255;
		com.fasterxml.jackson.databind.JavaType p_type_2829_line_253 = type;
		boolean basic_class_introspector_1_expr51_line_253 = p_type_2829_line_253.isContainerType();
		boolean basic_class_introspector_1_expr50_line_253 = !basic_class_introspector_1_expr51_line_253;
		boolean basic_class_introspector_1_expr52_line_253 = false;
		if (!basic_class_introspector_1_expr50_line_253) {
			com.fasterxml.jackson.databind.JavaType p_type_2829_line_253_v1 = type;
			basic_class_introspector_1_expr52_line_253 = p_type_2829_line_253_v1.isArrayType();
		}
		boolean basic_class_introspector_1_expr49_line_253 = basic_class_introspector_1_expr50_line_253
				|| basic_class_introspector_1_expr52_line_253;
		int PROBE_END_LINE_253 = 255;
		if (basic_class_introspector_1_expr49_line_253) {
            return false;
        }
        Class<?> raw = type.getRawClass();
        Package pkg = raw.getPackage();
        if (pkg != null) {
            String pkgName = pkg.getName();
            if (pkgName.startsWith("java.lang")
                    || pkgName.startsWith("java.util")) {
                /* 23-Sep-2014, tatu: Should we be conservative here (minimal number
                 *    of matches), or ambitious? Let's do latter for now.
                 */
                if (Collection.class.isAssignableFrom(raw)
                        || Map.class.isAssignableFrom(raw)) {
                    return true;
                }
            }
        }
        return false;
    }

    protected BasicBeanDescription _findStdJdkCollectionDesc(MapperConfig<?> cfg,
            JavaType type, MixInResolver r)
    {
        int PROBE_START_LINE_277 = 281;
		com.fasterxml.jackson.databind.JavaType p_type_2831_line_277 = type;
		boolean basic_class_introspector_1_expr53_line_277 = _isStdJDKCollection(p_type_2831_line_277);
		int PROBE_END_LINE_277 = 281;
		if (basic_class_introspector_1_expr53_line_277) {
            AnnotatedClass ac = AnnotatedClass.construct(type.getRawClass(),
                    (cfg.isAnnotationProcessingEnabled() ? cfg.getAnnotationIntrospector() : null), r);
            return BasicBeanDescription.forOtherUse(cfg, type, ac);
        }
        return null;
    }
}
