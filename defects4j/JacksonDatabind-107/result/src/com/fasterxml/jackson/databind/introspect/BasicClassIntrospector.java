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
        int PROBE_START_LINE_32 = 33;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr3_line_32 = SimpleType
				.constructUnsafe(String.class);
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr2_line_32 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr3_line_32,
						AnnotatedClassResolver.createPrimordial(String.class));
		int PROBE_END_LINE_32 = 33;
		STRING_DESC = basic_class_introspector_1_expr2_line_32;
    }
    protected final static BasicBeanDescription BOOLEAN_DESC;
    static {
        int PROBE_START_LINE_37 = 38;
		Class<Boolean> q_type_111_line_37 = Boolean.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr8_line_37 = SimpleType
				.constructUnsafe(q_type_111_line_37);
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr7_line_37 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr8_line_37,
						AnnotatedClassResolver.createPrimordial(Boolean.TYPE));
		int PROBE_END_LINE_37 = 38;
		BOOLEAN_DESC = basic_class_introspector_1_expr7_line_37;
    }
    protected final static BasicBeanDescription INT_DESC;
    static {
        int PROBE_START_LINE_42 = 43;
		Class<Integer> q_type_112_line_42 = Integer.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr12_line_42 = SimpleType
				.constructUnsafe(q_type_112_line_42);
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr11_line_42 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr12_line_42,
						AnnotatedClassResolver.createPrimordial(Integer.TYPE));
		int PROBE_END_LINE_42 = 43;
		INT_DESC = basic_class_introspector_1_expr11_line_42;
    }
    protected final static BasicBeanDescription LONG_DESC;
    static {
        int PROBE_START_LINE_47 = 48;
		Class<Long> q_type_113_line_47 = Long.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr16_line_47 = SimpleType
				.constructUnsafe(q_type_113_line_47);
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr15_line_47 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr16_line_47,
						AnnotatedClassResolver.createPrimordial(Long.TYPE));
		int PROBE_END_LINE_47 = 48;
		LONG_DESC = basic_class_introspector_1_expr15_line_47;
    }

    /*
    /**********************************************************
    /* Life cycle
    /**********************************************************
     */

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

    @Override
    public ClassIntrospector copy() {
        return new BasicClassIntrospector();
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
            // As per [databind#550], skip full introspection for some of standard
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
        int PROBE_START_LINE_106 = 106;
		com.fasterxml.jackson.databind.JavaType p_type_3843_line_106 = type;
		BasicBeanDescription basic_class_introspector_1_expr20_line_106 = _findStdTypeDesc(p_type_3843_line_106);
		int PROBE_END_LINE_106 = 106;
		// minor optimization: for some JDK types do minimal introspection
        BasicBeanDescription desc = basic_class_introspector_1_expr20_line_106;
        int PROBE_START_LINE_107 = 117;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3845_line_107 = desc;
		boolean basic_class_introspector_1_expr21_line_107 = v_desc_3845_line_107 == null;
		int PROBE_END_LINE_107 = 117;
		if (basic_class_introspector_1_expr21_line_107) {
            int PROBE_START_LINE_110 = 110;
			com.fasterxml.jackson.databind.DeserializationConfig p_cfg_3842_line_110 = cfg;
			com.fasterxml.jackson.databind.JavaType p_type_3843_line_110 = type;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr23_line_110 = _findStdJdkCollectionDesc(
					p_cfg_3842_line_110, p_type_3843_line_110);
			int PROBE_END_LINE_110 = 110;
			// As per [Databind#550], skip full introspection for some of standard
            // structured types as well
            desc = basic_class_introspector_1_expr23_line_110;
            int PROBE_START_LINE_111 = 114;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3845_line_111 = desc;
			boolean basic_class_introspector_1_expr24_line_111 = v_desc_3845_line_111 == null;
			int PROBE_END_LINE_111 = 114;
			if (basic_class_introspector_1_expr24_line_111) {
                int PROBE_START_LINE_112 = 113;
				com.fasterxml.jackson.databind.DeserializationConfig p_cfg_3842_line_112 = cfg;
				com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector basic_class_introspector_1_expr27_line_112 = collectProperties(
						p_cfg_3842_line_112, type, r, false, "set");
				com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr26_line_112 = BasicBeanDescription
						.forDeserialization(basic_class_introspector_1_expr27_line_112);
				int PROBE_END_LINE_112 = 113;
				desc = basic_class_introspector_1_expr26_line_112;
            }
            int PROBE_START_LINE_116 = 116;
			LRUMap<com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.introspect.BasicBeanDescription> f__cached_fca_3838_line_116 = _cachedFCA;
			com.fasterxml.jackson.databind.JavaType p_type_3843_line_116 = type;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3845_line_116 = desc;
			int PROBE_END_LINE_116 = 116;
			// Also: this is a superset of "forClassAnnotations", so may optimize by optional add:
            f__cached_fca_3838_line_116.putIfAbsent(p_type_3843_line_116, v_desc_3845_line_116);
        }
        int PROBE_START_LINE_118 = 118;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3845_line_118 = desc;
		int PROBE_END_LINE_118 = 118;
		return v_desc_3845_line_118;
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
        int PROBE_START_LINE_138 = 138;
		com.fasterxml.jackson.databind.JavaType p_type_3850_line_138 = type;
		BasicBeanDescription basic_class_introspector_1_expr29_line_138 = _findStdTypeDesc(p_type_3850_line_138);
		int PROBE_END_LINE_138 = 138;
		BasicBeanDescription desc = basic_class_introspector_1_expr29_line_138;
        int PROBE_START_LINE_139 = 148;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3852_line_139 = desc;
		boolean basic_class_introspector_1_expr30_line_139 = v_desc_3852_line_139 == null;
		int PROBE_END_LINE_139 = 148;
		if (basic_class_introspector_1_expr30_line_139) {

            int PROBE_START_LINE_143 = 143;
			com.fasterxml.jackson.databind.DeserializationConfig p_cfg_3849_line_143 = cfg;
			com.fasterxml.jackson.databind.JavaType p_type_3850_line_143 = type;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr32_line_143 = _findStdJdkCollectionDesc(
					p_cfg_3849_line_143, p_type_3850_line_143);
			int PROBE_END_LINE_143 = 143;
			// As per [Databind#550], skip full introspection for some of standard
            // structured types as well
            desc = basic_class_introspector_1_expr32_line_143;
            int PROBE_START_LINE_144 = 147;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3852_line_144 = desc;
			boolean basic_class_introspector_1_expr33_line_144 = v_desc_3852_line_144 == null;
			int PROBE_END_LINE_144 = 147;
			if (basic_class_introspector_1_expr33_line_144) {
                desc = BasicBeanDescription.forDeserialization(
            		collectProperties(cfg, type, r, false, "set"));
            }
        }
        int PROBE_START_LINE_150 = 150;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3852_line_150 = desc;
		int PROBE_END_LINE_150 = 150;
		// should this be cached for FCA?
        return v_desc_3852_line_150;
    }

    @Override
    public BasicBeanDescription forClassAnnotations(MapperConfig<?> config,
            JavaType type, MixInResolver r)
    {
        int PROBE_START_LINE_157 = 157;
		com.fasterxml.jackson.databind.JavaType p_type_3854_line_157 = type;
		BasicBeanDescription basic_class_introspector_1_expr34_line_157 = _findStdTypeDesc(p_type_3854_line_157);
		int PROBE_END_LINE_157 = 157;
		BasicBeanDescription desc = basic_class_introspector_1_expr34_line_157;
        int PROBE_START_LINE_158 = 165;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3856_line_158 = desc;
		boolean basic_class_introspector_1_expr35_line_158 = v_desc_3856_line_158 == null;
		int PROBE_END_LINE_158 = 165;
		if (basic_class_introspector_1_expr35_line_158) {
            int PROBE_START_LINE_159 = 159;
			LRUMap<com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.introspect.BasicBeanDescription> f__cached_fca_3838_line_159 = _cachedFCA;
			com.fasterxml.jackson.databind.JavaType p_type_3854_line_159 = type;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr37_line_159 = f__cached_fca_3838_line_159
					.get(p_type_3854_line_159);
			int PROBE_END_LINE_159 = 159;
			desc = basic_class_introspector_1_expr37_line_159;
            int PROBE_START_LINE_160 = 164;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3856_line_160 = desc;
			boolean basic_class_introspector_1_expr38_line_160 = v_desc_3856_line_160 == null;
			int PROBE_END_LINE_160 = 164;
			if (basic_class_introspector_1_expr38_line_160) {
                int PROBE_START_LINE_161 = 162;
				MapperConfig<?> p_config_3853_line_161 = config;
				com.fasterxml.jackson.databind.JavaType p_type_3854_line_161 = type;
				com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr40_line_161 = BasicBeanDescription
						.forOtherUse(p_config_3853_line_161, p_type_3854_line_161,
								_resolveAnnotatedClass(config, type, r));
				int PROBE_END_LINE_161 = 162;
				desc = basic_class_introspector_1_expr40_line_161;
                int PROBE_START_LINE_163 = 163;
				LRUMap<com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.introspect.BasicBeanDescription> f__cached_fca_3838_line_163 = _cachedFCA;
				com.fasterxml.jackson.databind.JavaType p_type_3854_line_163 = type;
				com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3856_line_163 = desc;
				int PROBE_END_LINE_163 = 163;
				f__cached_fca_3838_line_163.put(p_type_3854_line_163, v_desc_3856_line_163);
            }
        }
        int PROBE_START_LINE_166 = 166;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_3856_line_166 = desc;
		int PROBE_END_LINE_166 = 166;
		return v_desc_3856_line_166;
    }

    @Override
    public BasicBeanDescription forDirectClassAnnotations(MapperConfig<?> config,
            JavaType type, MixInResolver r)
    {
        BasicBeanDescription desc = _findStdTypeDesc(type);
        if (desc == null) {
            desc = BasicBeanDescription.forOtherUse(config, type,
                    _resolveAnnotatedWithoutSuperTypes(config, type, r));
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
        int PROBE_START_LINE_191 = 193;
		MapperConfig<?> p_config_3860_line_191 = config;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector basic_class_introspector_1_expr43_line_191 = constructPropertyCollector(
				p_config_3860_line_191, _resolveAnnotatedClass(config, type, r), type, forSerialization, mutatorPrefix);
		int PROBE_END_LINE_191 = 193;
		return basic_class_introspector_1_expr43_line_191;
    }

    protected POJOPropertiesCollector collectPropertiesWithBuilder(MapperConfig<?> config,
            JavaType type, MixInResolver r, boolean forSerialization)
    {
        AnnotatedClass ac = _resolveAnnotatedClass(config, type, r);
        AnnotationIntrospector ai = config.isAnnotationProcessingEnabled() ? config.getAnnotationIntrospector() : null;
        JsonPOJOBuilder.Value builderConfig = (ai == null) ? null : ai.findPOJOBuilderConfig(ac);
        String mutatorPrefix = (builderConfig == null) ? JsonPOJOBuilder.DEFAULT_WITH_PREFIX : builderConfig.withPrefix;
        return constructPropertyCollector(config, ac, type, forSerialization, mutatorPrefix);
    }

    /**
     * Overridable method called for creating {@link POJOPropertiesCollector} instance
     * to use; override is needed if a custom sub-class is to be used.
     */
    protected POJOPropertiesCollector constructPropertyCollector(MapperConfig<?> config,
            AnnotatedClass ac, JavaType type, boolean forSerialization, String mutatorPrefix)
    {
        int PROBE_START_LINE_213 = 213;
		MapperConfig<?> p_config_3869_line_213 = config;
		boolean p_for_serialization_3872_line_213 = forSerialization;
		com.fasterxml.jackson.databind.JavaType p_type_3871_line_213 = type;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3870_line_213 = ac;
		String p_mutator_prefix_3873_line_213 = mutatorPrefix;
		int PROBE_END_LINE_213 = 213;
		return new POJOPropertiesCollector(p_config_3869_line_213, p_for_serialization_3872_line_213, p_type_3871_line_213, p_ac_3870_line_213, p_mutator_prefix_3873_line_213);
    }

    /**
     * Method called to see if type is one of core JDK types
     * that we have cached for efficiency.
     */
    protected BasicBeanDescription _findStdTypeDesc(JavaType type)
    {
        int PROBE_START_LINE_222 = 222;
		com.fasterxml.jackson.databind.JavaType p_type_3874_line_222 = type;
		Class<?> basic_class_introspector_1_expr46_line_222 = p_type_3874_line_222.getRawClass();
		int PROBE_END_LINE_222 = 222;
		Class<?> cls = basic_class_introspector_1_expr46_line_222;
        int PROBE_START_LINE_223 = 237;
		Class<?> v_cls_3875_line_223 = cls;
		boolean basic_class_introspector_1_expr47_line_223 = v_cls_3875_line_223.isPrimitive();
		int PROBE_END_LINE_223 = 237;
		if (basic_class_introspector_1_expr47_line_223) {
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
            int PROBE_START_LINE_234 = 236;
			Class<?> v_cls_3875_line_234 = cls;
			boolean basic_class_introspector_1_expr48_line_234 = v_cls_3875_line_234 == String.class;
			int PROBE_END_LINE_234 = 236;
			if (basic_class_introspector_1_expr48_line_234) {
                int PROBE_START_LINE_235 = 235;
				com.fasterxml.jackson.databind.introspect.BasicBeanDescription f_string_desc_3834_line_235 = STRING_DESC;
				int PROBE_END_LINE_235 = 235;
				return f_string_desc_3834_line_235;
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
        int PROBE_START_LINE_248 = 250;
		com.fasterxml.jackson.databind.JavaType p_type_3876_line_248 = type;
		boolean basic_class_introspector_1_expr52_line_248 = p_type_3876_line_248.isContainerType();
		boolean basic_class_introspector_1_expr51_line_248 = !basic_class_introspector_1_expr52_line_248;
		boolean basic_class_introspector_1_expr53_line_248 = false;
		if (!basic_class_introspector_1_expr51_line_248) {
			com.fasterxml.jackson.databind.JavaType p_type_3876_line_248_v1 = type;
			basic_class_introspector_1_expr53_line_248 = p_type_3876_line_248_v1.isArrayType();
		}
		boolean basic_class_introspector_1_expr50_line_248 = basic_class_introspector_1_expr51_line_248
				|| basic_class_introspector_1_expr53_line_248;
		int PROBE_END_LINE_248 = 250;
		if (basic_class_introspector_1_expr50_line_248) {
            return false;
        }
        int PROBE_START_LINE_251 = 251;
		com.fasterxml.jackson.databind.JavaType p_type_3876_line_251 = type;
		Class<?> basic_class_introspector_1_expr54_line_251 = p_type_3876_line_251.getRawClass();
		int PROBE_END_LINE_251 = 251;
		Class<?> raw = basic_class_introspector_1_expr54_line_251;
        int PROBE_START_LINE_252 = 252;
		Class<?> v_raw_3877_line_252 = raw;
		String basic_class_introspector_1_expr55_line_252 = ClassUtil.getPackageName(v_raw_3877_line_252);
		int PROBE_END_LINE_252 = 252;
		String pkgName = basic_class_introspector_1_expr55_line_252;
        int PROBE_START_LINE_253 = 264;
		String v_pkg_name_3878_line_253 = pkgName;
		boolean basic_class_introspector_1_expr56_line_253 = v_pkg_name_3878_line_253 != null;
		int PROBE_END_LINE_253 = 264;
		if (basic_class_introspector_1_expr56_line_253) {
            int PROBE_START_LINE_254 = 263;
			String v_pkg_name_3878_line_254 = pkgName;
			boolean basic_class_introspector_1_expr58_line_254 = v_pkg_name_3878_line_254.startsWith("java.lang");
			boolean basic_class_introspector_1_expr57_line_254 = basic_class_introspector_1_expr58_line_254
					|| pkgName.startsWith("java.util");
			int PROBE_END_LINE_254 = 263;
			if (basic_class_introspector_1_expr57_line_254) {
                int PROBE_START_LINE_259 = 262;
						Class<?> v_raw_3877_line_259 = raw;
						boolean basic_class_introspector_1_expr60_line_259 = Collection.class
								.isAssignableFrom(v_raw_3877_line_259);
						boolean basic_class_introspector_1_expr59_line_259 = basic_class_introspector_1_expr60_line_259
								|| Map.class.isAssignableFrom(raw);
						int PROBE_END_LINE_259 = 262;
				/* 23-Sep-2014, tatu: Should we be conservative here (minimal number
                 *    of matches), or ambitious? Let's do latter for now.
                 */
                if (basic_class_introspector_1_expr59_line_259) {
                    return true;
                }
            }
        }
        return false;
    }

    protected BasicBeanDescription _findStdJdkCollectionDesc(MapperConfig<?> cfg, JavaType type)
    {
        int PROBE_START_LINE_270 = 273;
		com.fasterxml.jackson.databind.JavaType p_type_3880_line_270 = type;
		boolean basic_class_introspector_1_expr62_line_270 = _isStdJDKCollection(p_type_3880_line_270);
		int PROBE_END_LINE_270 = 273;
		if (basic_class_introspector_1_expr62_line_270) {
            int PROBE_START_LINE_271 = 272;
			MapperConfig<?> p_cfg_3879_line_271 = cfg;
			com.fasterxml.jackson.databind.JavaType p_type_3880_line_271 = type;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr63_line_271 = BasicBeanDescription
					.forOtherUse(p_cfg_3879_line_271, p_type_3880_line_271, _resolveAnnotatedClass(cfg, type, cfg));
			int PROBE_END_LINE_271 = 272;
			return basic_class_introspector_1_expr63_line_271;
        }
        return null;
    }

    /**
     * @since 2.9
     */
    protected AnnotatedClass _resolveAnnotatedClass(MapperConfig<?> config,
            JavaType type, MixInResolver r) {
        int PROBE_START_LINE_282 = 282;
				MapperConfig<?> p_config_3881_line_282 = config;
				com.fasterxml.jackson.databind.JavaType p_type_3882_line_282 = type;
				com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_r_3883_line_282 = r;
				com.fasterxml.jackson.databind.introspect.AnnotatedClass basic_class_introspector_1_expr65_line_282 = AnnotatedClassResolver
						.resolve(p_config_3881_line_282, p_type_3882_line_282, p_r_3883_line_282);
				int PROBE_END_LINE_282 = 282;
		return basic_class_introspector_1_expr65_line_282;
    }

    /**
     * @since 2.9
     */
    protected AnnotatedClass _resolveAnnotatedWithoutSuperTypes(MapperConfig<?> config,
            JavaType type, MixInResolver r) {
        return AnnotatedClassResolver.resolveWithoutSuperTypes(config, type, r);
    }
}
