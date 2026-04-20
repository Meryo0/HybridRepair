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
import com.fasterxml.jackson.databind.util.ClassUtil;
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
        int PROBE_START_LINE_33 = 33;
		AnnotatedClass basic_class_introspector_1_expr1_line_33 = AnnotatedClass
				.constructWithoutSuperTypes(String.class, null);
		int PROBE_END_LINE_33 = 33;
		AnnotatedClass ac = basic_class_introspector_1_expr1_line_33;
        int PROBE_START_LINE_34 = 34;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr5_line_34 = SimpleType
				.constructUnsafe(String.class);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_3003_line_34 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr4_line_34 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr5_line_34, v_ac_3003_line_34);
		int PROBE_END_LINE_34 = 34;
		STRING_DESC = basic_class_introspector_1_expr4_line_34;
    }
    protected final static BasicBeanDescription BOOLEAN_DESC;
    static {
        int PROBE_START_LINE_38 = 38;
		Class<Boolean> q_type_81_line_38 = Boolean.TYPE;
		AnnotatedClass basic_class_introspector_1_expr7_line_38 = AnnotatedClass
				.constructWithoutSuperTypes(q_type_81_line_38, null);
		int PROBE_END_LINE_38 = 38;
		AnnotatedClass ac = basic_class_introspector_1_expr7_line_38;
        int PROBE_START_LINE_39 = 39;
		Class<Boolean> q_type_82_line_39 = Boolean.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr10_line_39 = SimpleType
				.constructUnsafe(q_type_82_line_39);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_3005_line_39 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr9_line_39 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr10_line_39, v_ac_3005_line_39);
		int PROBE_END_LINE_39 = 39;
		BOOLEAN_DESC = basic_class_introspector_1_expr9_line_39;
    }
    protected final static BasicBeanDescription INT_DESC;
    static {
        int PROBE_START_LINE_43 = 43;
		Class<Integer> q_type_82_line_43 = Integer.TYPE;
		AnnotatedClass basic_class_introspector_1_expr11_line_43 = AnnotatedClass
				.constructWithoutSuperTypes(q_type_82_line_43, null);
		int PROBE_END_LINE_43 = 43;
		AnnotatedClass ac = basic_class_introspector_1_expr11_line_43;
        int PROBE_START_LINE_44 = 44;
		Class<Integer> q_type_83_line_44 = Integer.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr14_line_44 = SimpleType
				.constructUnsafe(q_type_83_line_44);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_3007_line_44 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr13_line_44 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr14_line_44, v_ac_3007_line_44);
		int PROBE_END_LINE_44 = 44;
		INT_DESC = basic_class_introspector_1_expr13_line_44;
    }
    protected final static BasicBeanDescription LONG_DESC;
    static {
        int PROBE_START_LINE_48 = 48;
		Class<Long> q_type_83_line_48 = Long.TYPE;
		AnnotatedClass basic_class_introspector_1_expr15_line_48 = AnnotatedClass
				.constructWithoutSuperTypes(q_type_83_line_48, null);
		int PROBE_END_LINE_48 = 48;
		AnnotatedClass ac = basic_class_introspector_1_expr15_line_48;
        int PROBE_START_LINE_49 = 49;
		Class<Long> q_type_84_line_49 = Long.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr18_line_49 = SimpleType
				.constructUnsafe(q_type_84_line_49);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_3009_line_49 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr17_line_49 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr18_line_49, v_ac_3009_line_49);
		int PROBE_END_LINE_49 = 49;
		LONG_DESC = basic_class_introspector_1_expr17_line_49;
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
            desc = _findStdJdkCollectionDesc(cfg, type);
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
        int PROBE_START_LINE_105 = 105;
		com.fasterxml.jackson.databind.JavaType p_type_3017_line_105 = type;
		BasicBeanDescription basic_class_introspector_1_expr22_line_105 = _findStdTypeDesc(p_type_3017_line_105);
		int PROBE_END_LINE_105 = 105;
		// minor optimization: for some JDK types do minimal introspection
        BasicBeanDescription desc = basic_class_introspector_1_expr22_line_105;
        int PROBE_START_LINE_106 = 116;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3019_line_106 = desc;
		boolean basic_class_introspector_1_expr23_line_106 = v_desc_3019_line_106 == null;
		int PROBE_END_LINE_106 = 116;
		if (basic_class_introspector_1_expr23_line_106) {
            int PROBE_START_LINE_109 = 109;
			com.fasterxml.jackson.databind.DeserializationConfig p_cfg_3016_line_109 = cfg;
			com.fasterxml.jackson.databind.JavaType p_type_3017_line_109 = type;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr25_line_109 = _findStdJdkCollectionDesc(
					p_cfg_3016_line_109, p_type_3017_line_109);
			int PROBE_END_LINE_109 = 109;
			// As per [Databind#550], skip full introspection for some of standard
            // structured types as well
            desc = basic_class_introspector_1_expr25_line_109;
            int PROBE_START_LINE_110 = 113;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3019_line_110 = desc;
			boolean basic_class_introspector_1_expr26_line_110 = v_desc_3019_line_110 == null;
			int PROBE_END_LINE_110 = 113;
			if (basic_class_introspector_1_expr26_line_110) {
                int PROBE_START_LINE_111 = 112;
				com.fasterxml.jackson.databind.DeserializationConfig p_cfg_3016_line_111 = cfg;
				com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector basic_class_introspector_1_expr29_line_111 = collectProperties(
						p_cfg_3016_line_111, type, r, false, "set");
				com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr28_line_111 = BasicBeanDescription
						.forDeserialization(basic_class_introspector_1_expr29_line_111);
				int PROBE_END_LINE_111 = 112;
				desc = basic_class_introspector_1_expr28_line_111;
            }
            int PROBE_START_LINE_115 = 115;
			LRUMap<com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.introspect.BasicBeanDescription> f__cached_fca_3012_line_115 = _cachedFCA;
			com.fasterxml.jackson.databind.JavaType p_type_3017_line_115 = type;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3019_line_115 = desc;
			int PROBE_END_LINE_115 = 115;
			// Also: this is a superset of "forClassAnnotations", so may optimize by optional add:
            f__cached_fca_3012_line_115.putIfAbsent(p_type_3017_line_115, v_desc_3019_line_115);
        }
        int PROBE_START_LINE_117 = 117;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3019_line_117 = desc;
		int PROBE_END_LINE_117 = 117;
		return v_desc_3019_line_117;
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
        int PROBE_START_LINE_137 = 137;
		com.fasterxml.jackson.databind.JavaType p_type_3024_line_137 = type;
		BasicBeanDescription basic_class_introspector_1_expr31_line_137 = _findStdTypeDesc(p_type_3024_line_137);
		int PROBE_END_LINE_137 = 137;
		BasicBeanDescription desc = basic_class_introspector_1_expr31_line_137;
        int PROBE_START_LINE_138 = 147;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3026_line_138 = desc;
		boolean basic_class_introspector_1_expr32_line_138 = v_desc_3026_line_138 == null;
		int PROBE_END_LINE_138 = 147;
		if (basic_class_introspector_1_expr32_line_138) {

            int PROBE_START_LINE_142 = 142;
			com.fasterxml.jackson.databind.DeserializationConfig p_cfg_3023_line_142 = cfg;
			com.fasterxml.jackson.databind.JavaType p_type_3024_line_142 = type;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr34_line_142 = _findStdJdkCollectionDesc(
					p_cfg_3023_line_142, p_type_3024_line_142);
			int PROBE_END_LINE_142 = 142;
			// As per [Databind#550], skip full introspection for some of standard
            // structured types as well
            desc = basic_class_introspector_1_expr34_line_142;
            int PROBE_START_LINE_143 = 146;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3026_line_143 = desc;
			boolean basic_class_introspector_1_expr35_line_143 = v_desc_3026_line_143 == null;
			int PROBE_END_LINE_143 = 146;
			if (basic_class_introspector_1_expr35_line_143) {
                desc = BasicBeanDescription.forDeserialization(
            		collectProperties(cfg, type, r, false, "set"));
            }
        }
        int PROBE_START_LINE_149 = 149;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3026_line_149 = desc;
		int PROBE_END_LINE_149 = 149;
		// should this be cached for FCA?
        return v_desc_3026_line_149;
    }

    @Override
    public BasicBeanDescription forClassAnnotations(MapperConfig<?> config,
            JavaType type, MixInResolver r)
    {
        int PROBE_START_LINE_156 = 156;
		com.fasterxml.jackson.databind.JavaType p_type_3028_line_156 = type;
		BasicBeanDescription basic_class_introspector_1_expr36_line_156 = _findStdTypeDesc(p_type_3028_line_156);
		int PROBE_END_LINE_156 = 156;
		BasicBeanDescription desc = basic_class_introspector_1_expr36_line_156;
        int PROBE_START_LINE_157 = 164;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3030_line_157 = desc;
		boolean basic_class_introspector_1_expr37_line_157 = v_desc_3030_line_157 == null;
		int PROBE_END_LINE_157 = 164;
		if (basic_class_introspector_1_expr37_line_157) {
            int PROBE_START_LINE_158 = 158;
			LRUMap<com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.introspect.BasicBeanDescription> f__cached_fca_3012_line_158 = _cachedFCA;
			com.fasterxml.jackson.databind.JavaType p_type_3028_line_158 = type;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr39_line_158 = f__cached_fca_3012_line_158
					.get(p_type_3028_line_158);
			int PROBE_END_LINE_158 = 158;
			desc = basic_class_introspector_1_expr39_line_158;
            int PROBE_START_LINE_159 = 163;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3030_line_159 = desc;
			boolean basic_class_introspector_1_expr40_line_159 = v_desc_3030_line_159 == null;
			int PROBE_END_LINE_159 = 163;
			if (basic_class_introspector_1_expr40_line_159) {
                int PROBE_START_LINE_160 = 160;
				com.fasterxml.jackson.databind.JavaType p_type_3028_line_160 = type;
				MapperConfig<?> p_config_3027_line_160 = config;
				com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_r_3029_line_160 = r;
				AnnotatedClass basic_class_introspector_1_expr41_line_160 = AnnotatedClass
						.construct(p_type_3028_line_160, p_config_3027_line_160, p_r_3029_line_160);
				int PROBE_END_LINE_160 = 160;
				AnnotatedClass ac = basic_class_introspector_1_expr41_line_160;
                int PROBE_START_LINE_161 = 161;
				MapperConfig<?> p_config_3027_line_161 = config;
				com.fasterxml.jackson.databind.JavaType p_type_3028_line_161 = type;
				com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_3031_line_161 = ac;
				com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr43_line_161 = BasicBeanDescription
						.forOtherUse(p_config_3027_line_161, p_type_3028_line_161, v_ac_3031_line_161);
				int PROBE_END_LINE_161 = 161;
				desc = basic_class_introspector_1_expr43_line_161;
                int PROBE_START_LINE_162 = 162;
				LRUMap<com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.introspect.BasicBeanDescription> f__cached_fca_3012_line_162 = _cachedFCA;
				com.fasterxml.jackson.databind.JavaType p_type_3028_line_162 = type;
				com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3030_line_162 = desc;
				int PROBE_END_LINE_162 = 162;
				f__cached_fca_3012_line_162.put(p_type_3028_line_162, v_desc_3030_line_162);
            }
        }
        int PROBE_START_LINE_165 = 165;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3030_line_165 = desc;
		int PROBE_END_LINE_165 = 165;
		return v_desc_3030_line_165;
    }

    @Override
    public BasicBeanDescription forDirectClassAnnotations(MapperConfig<?> config,
            JavaType type, MixInResolver r)
    {
        BasicBeanDescription desc = _findStdTypeDesc(type);
        if (desc == null) {
            AnnotatedClass ac = AnnotatedClass.constructWithoutSuperTypes(type.getRawClass(), config, r);
            desc = BasicBeanDescription.forOtherUse(config, type, ac);
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
        int PROBE_START_LINE_190 = 190;
		com.fasterxml.jackson.databind.JavaType p_type_3036_line_190 = type;
		MapperConfig<?> p_config_3035_line_190 = config;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_r_3037_line_190 = r;
		AnnotatedClass basic_class_introspector_1_expr45_line_190 = AnnotatedClass.construct(p_type_3036_line_190,
				p_config_3035_line_190, p_r_3037_line_190);
		int PROBE_END_LINE_190 = 190;
		AnnotatedClass ac = basic_class_introspector_1_expr45_line_190;
        int PROBE_START_LINE_191 = 191;
		MapperConfig<?> p_config_3035_line_191 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_3040_line_191 = ac;
		com.fasterxml.jackson.databind.JavaType p_type_3036_line_191 = type;
		boolean p_for_serialization_3038_line_191 = forSerialization;
		String p_mutator_prefix_3039_line_191 = mutatorPrefix;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector basic_class_introspector_1_expr46_line_191 = constructPropertyCollector(
				p_config_3035_line_191, v_ac_3040_line_191, p_type_3036_line_191, p_for_serialization_3038_line_191,
				p_mutator_prefix_3039_line_191);
		int PROBE_END_LINE_191 = 191;
		return basic_class_introspector_1_expr46_line_191;
    }
    
    protected POJOPropertiesCollector collectPropertiesWithBuilder(MapperConfig<?> config,
            JavaType type, MixInResolver r, boolean forSerialization)
    {
        boolean useAnnotations = config.isAnnotationProcessingEnabled();
        AnnotationIntrospector ai = useAnnotations ? config.getAnnotationIntrospector() : null;
        AnnotatedClass ac = AnnotatedClass.construct(type, config, r);
        JsonPOJOBuilder.Value builderConfig = (ai == null) ? null : ai.findPOJOBuilderConfig(ac);
        String mutatorPrefix = (builderConfig == null) ? "with" : builderConfig.withPrefix;
        return constructPropertyCollector(config, ac, type, forSerialization, mutatorPrefix);
    }

    /**
     * Overridable method called for creating {@link POJOPropertiesCollector} instance
     * to use; override is needed if a custom sub-class is to be used.
     */
    protected POJOPropertiesCollector constructPropertyCollector(MapperConfig<?> config,
            AnnotatedClass ac, JavaType type, boolean forSerialization, String mutatorPrefix)
    {
        int PROBE_START_LINE_212 = 212;
		MapperConfig<?> p_config_3045_line_212 = config;
		boolean p_for_serialization_3048_line_212 = forSerialization;
		com.fasterxml.jackson.databind.JavaType p_type_3047_line_212 = type;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3046_line_212 = ac;
		String p_mutator_prefix_3049_line_212 = mutatorPrefix;
		int PROBE_END_LINE_212 = 212;
		return new POJOPropertiesCollector(p_config_3045_line_212, p_for_serialization_3048_line_212, p_type_3047_line_212, p_ac_3046_line_212, p_mutator_prefix_3049_line_212);
    }
    
    /**
     * Method called to see if type is one of core JDK types
     * that we have cached for efficiency.
     */
    protected BasicBeanDescription _findStdTypeDesc(JavaType type)
    {
        int PROBE_START_LINE_221 = 221;
		com.fasterxml.jackson.databind.JavaType p_type_3050_line_221 = type;
		Class<?> basic_class_introspector_1_expr48_line_221 = p_type_3050_line_221.getRawClass();
		int PROBE_END_LINE_221 = 221;
		Class<?> cls = basic_class_introspector_1_expr48_line_221;
        int PROBE_START_LINE_222 = 236;
		Class<?> v_cls_3051_line_222 = cls;
		boolean basic_class_introspector_1_expr49_line_222 = v_cls_3051_line_222.isPrimitive();
		int PROBE_END_LINE_222 = 236;
		if (basic_class_introspector_1_expr49_line_222) {
            if (cls == Boolean.TYPE) {
                return BOOLEAN_DESC;
            }
            if (cls == Integer.TYPE) {
                return INT_DESC;
            }
            if (cls == Long.TYPE) {
                return LONG_DESC;
            }
        } else {
            int PROBE_START_LINE_233 = 235;
			Class<?> v_cls_3051_line_233 = cls;
			boolean basic_class_introspector_1_expr50_line_233 = v_cls_3051_line_233 == String.class;
			int PROBE_END_LINE_233 = 235;
			if (basic_class_introspector_1_expr50_line_233) {
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
        int PROBE_START_LINE_247 = 249;
		com.fasterxml.jackson.databind.JavaType p_type_3052_line_247 = type;
		boolean basic_class_introspector_1_expr54_line_247 = p_type_3052_line_247.isContainerType();
		boolean basic_class_introspector_1_expr53_line_247 = !basic_class_introspector_1_expr54_line_247;
		boolean basic_class_introspector_1_expr55_line_247 = false;
		if (!basic_class_introspector_1_expr53_line_247) {
			com.fasterxml.jackson.databind.JavaType p_type_3052_line_247_v1 = type;
			basic_class_introspector_1_expr55_line_247 = p_type_3052_line_247_v1.isArrayType();
		}
		boolean basic_class_introspector_1_expr52_line_247 = basic_class_introspector_1_expr53_line_247
				|| basic_class_introspector_1_expr55_line_247;
		int PROBE_END_LINE_247 = 249;
		if (basic_class_introspector_1_expr52_line_247) {
            return false;
        }
        int PROBE_START_LINE_250 = 250;
		com.fasterxml.jackson.databind.JavaType p_type_3052_line_250 = type;
		Class<?> basic_class_introspector_1_expr56_line_250 = p_type_3052_line_250.getRawClass();
		int PROBE_END_LINE_250 = 250;
		Class<?> raw = basic_class_introspector_1_expr56_line_250;
        int PROBE_START_LINE_251 = 251;
		Class<?> v_raw_3053_line_251 = raw;
		String basic_class_introspector_1_expr57_line_251 = ClassUtil.getPackageName(v_raw_3053_line_251);
		int PROBE_END_LINE_251 = 251;
		String pkgName = basic_class_introspector_1_expr57_line_251;
        int PROBE_START_LINE_252 = 263;
		String v_pkg_name_3054_line_252 = pkgName;
		boolean basic_class_introspector_1_expr58_line_252 = v_pkg_name_3054_line_252 != null;
		int PROBE_END_LINE_252 = 263;
		if (basic_class_introspector_1_expr58_line_252) {
            int PROBE_START_LINE_253 = 262;
			String v_pkg_name_3054_line_253 = pkgName;
			boolean basic_class_introspector_1_expr60_line_253 = v_pkg_name_3054_line_253.startsWith("java.lang");
			boolean basic_class_introspector_1_expr59_line_253 = basic_class_introspector_1_expr60_line_253
					|| pkgName.startsWith("java.util");
			int PROBE_END_LINE_253 = 262;
			if (basic_class_introspector_1_expr59_line_253) {
                int PROBE_START_LINE_258 = 261;
						Class<?> v_raw_3053_line_258 = raw;
						boolean basic_class_introspector_1_expr62_line_258 = Collection.class
								.isAssignableFrom(v_raw_3053_line_258);
						boolean basic_class_introspector_1_expr61_line_258 = basic_class_introspector_1_expr62_line_258
								|| Map.class.isAssignableFrom(raw);
						int PROBE_END_LINE_258 = 261;
				/* 23-Sep-2014, tatu: Should we be conservative here (minimal number
                 *    of matches), or ambitious? Let's do latter for now.
                 */
                if (basic_class_introspector_1_expr61_line_258) {
                    return true;
                }
            }
        }
        return false;
    }

    protected BasicBeanDescription _findStdJdkCollectionDesc(MapperConfig<?> cfg, JavaType type)
    {
        int PROBE_START_LINE_269 = 272;
		com.fasterxml.jackson.databind.JavaType p_type_3056_line_269 = type;
		boolean basic_class_introspector_1_expr64_line_269 = _isStdJDKCollection(p_type_3056_line_269);
		int PROBE_END_LINE_269 = 272;
		if (basic_class_introspector_1_expr64_line_269) {
            int PROBE_START_LINE_270 = 270;
			com.fasterxml.jackson.databind.JavaType p_type_3056_line_270 = type;
			MapperConfig<?> p_cfg_3055_line_270 = cfg;
			AnnotatedClass basic_class_introspector_1_expr65_line_270 = AnnotatedClass.construct(p_type_3056_line_270,
					p_cfg_3055_line_270);
			int PROBE_END_LINE_270 = 270;
			AnnotatedClass ac = basic_class_introspector_1_expr65_line_270;
            int PROBE_START_LINE_271 = 271;
			MapperConfig<?> p_cfg_3055_line_271 = cfg;
			com.fasterxml.jackson.databind.JavaType p_type_3056_line_271 = type;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_3057_line_271 = ac;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr66_line_271 = BasicBeanDescription
					.forOtherUse(p_cfg_3055_line_271, p_type_3056_line_271, v_ac_3057_line_271);
			int PROBE_END_LINE_271 = 271;
			return basic_class_introspector_1_expr66_line_271;
        }
        return null;
    }
}
