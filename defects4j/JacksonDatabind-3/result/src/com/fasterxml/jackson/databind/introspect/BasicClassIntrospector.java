package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.SimpleType;

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
     */
    
    protected final static BasicBeanDescription STRING_DESC;
    static {
        int PROBE_START_LINE_26 = 26;
		AnnotatedClass basic_class_introspector_1_expr1_line_26 = AnnotatedClass
				.constructWithoutSuperTypes(String.class, null, null);
		int PROBE_END_LINE_26 = 26;
		AnnotatedClass ac = basic_class_introspector_1_expr1_line_26;
        int PROBE_START_LINE_27 = 27;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr5_line_27 = SimpleType
				.constructUnsafe(String.class);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1655_line_27 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr4_line_27 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr5_line_27, v_ac_1655_line_27);
		int PROBE_END_LINE_27 = 27;
		STRING_DESC = basic_class_introspector_1_expr4_line_27;
    }
    protected final static BasicBeanDescription BOOLEAN_DESC;
    static {
        int PROBE_START_LINE_31 = 31;
		Class<Boolean> q_type_27_line_31 = Boolean.TYPE;
		AnnotatedClass basic_class_introspector_1_expr7_line_31 = AnnotatedClass
				.constructWithoutSuperTypes(q_type_27_line_31, null, null);
		int PROBE_END_LINE_31 = 31;
		AnnotatedClass ac = basic_class_introspector_1_expr7_line_31;
        int PROBE_START_LINE_32 = 32;
		Class<Boolean> q_type_28_line_32 = Boolean.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr10_line_32 = SimpleType
				.constructUnsafe(q_type_28_line_32);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1657_line_32 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr9_line_32 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr10_line_32, v_ac_1657_line_32);
		int PROBE_END_LINE_32 = 32;
		BOOLEAN_DESC = basic_class_introspector_1_expr9_line_32;
    }
    protected final static BasicBeanDescription INT_DESC;
    static {
        int PROBE_START_LINE_36 = 36;
		Class<Integer> q_type_28_line_36 = Integer.TYPE;
		AnnotatedClass basic_class_introspector_1_expr11_line_36 = AnnotatedClass
				.constructWithoutSuperTypes(q_type_28_line_36, null, null);
		int PROBE_END_LINE_36 = 36;
		AnnotatedClass ac = basic_class_introspector_1_expr11_line_36;
        int PROBE_START_LINE_37 = 37;
		Class<Integer> q_type_29_line_37 = Integer.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr14_line_37 = SimpleType
				.constructUnsafe(q_type_29_line_37);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1659_line_37 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr13_line_37 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr14_line_37, v_ac_1659_line_37);
		int PROBE_END_LINE_37 = 37;
		INT_DESC = basic_class_introspector_1_expr13_line_37;
    }
    protected final static BasicBeanDescription LONG_DESC;
    static {
        int PROBE_START_LINE_41 = 41;
		Class<Long> q_type_29_line_41 = Long.TYPE;
		AnnotatedClass basic_class_introspector_1_expr15_line_41 = AnnotatedClass
				.constructWithoutSuperTypes(q_type_29_line_41, null, null);
		int PROBE_END_LINE_41 = 41;
		AnnotatedClass ac = basic_class_introspector_1_expr15_line_41;
        int PROBE_START_LINE_42 = 42;
		Class<Long> q_type_30_line_42 = Long.TYPE;
		com.fasterxml.jackson.databind.type.SimpleType basic_class_introspector_1_expr18_line_42 = SimpleType
				.constructUnsafe(q_type_30_line_42);
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1661_line_42 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr17_line_42 = BasicBeanDescription
				.forOtherUse(null, basic_class_introspector_1_expr18_line_42, v_ac_1661_line_42);
		int PROBE_END_LINE_42 = 42;
		LONG_DESC = basic_class_introspector_1_expr17_line_42;
    }
    
    /*
    /**********************************************************
    /* Life cycle
    /**********************************************************
     */

    public final static BasicClassIntrospector instance = new BasicClassIntrospector();

    public BasicClassIntrospector() { }
    
    /*
    /**********************************************************
    /* Factory method impls
    /**********************************************************
     */

    @Override
    public BasicBeanDescription forSerialization(SerializationConfig cfg,
            JavaType type, MixInResolver r)
    {
        // minor optimization: for JDK types do minimal introspection
        BasicBeanDescription desc = _findCachedDesc(type);
        if (desc == null) {
            desc = BasicBeanDescription.forSerialization(collectProperties(cfg,
            		type, r, true, "set"));
        }
        return desc;
    }

    @Override
    public BasicBeanDescription forDeserialization(DeserializationConfig cfg,
            JavaType type, MixInResolver r)
    {
        int PROBE_START_LINE_79 = 79;
		com.fasterxml.jackson.databind.JavaType p_type_1668_line_79 = type;
		BasicBeanDescription basic_class_introspector_1_expr20_line_79 = _findCachedDesc(p_type_1668_line_79);
		int PROBE_END_LINE_79 = 79;
		// minor optimization: for JDK types do minimal introspection
        BasicBeanDescription desc = basic_class_introspector_1_expr20_line_79;
        int PROBE_START_LINE_80 = 83;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_1670_line_80 = desc;
		boolean basic_class_introspector_1_expr21_line_80 = v_desc_1670_line_80 == null;
		int PROBE_END_LINE_80 = 83;
		if (basic_class_introspector_1_expr21_line_80) {
            int PROBE_START_LINE_81 = 82;
			com.fasterxml.jackson.databind.DeserializationConfig p_cfg_1667_line_81 = cfg;
			com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector basic_class_introspector_1_expr24_line_81 = collectProperties(
					p_cfg_1667_line_81, type, r, false, "set");
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr23_line_81 = BasicBeanDescription
					.forDeserialization(basic_class_introspector_1_expr24_line_81);
			int PROBE_END_LINE_81 = 82;
			desc = basic_class_introspector_1_expr23_line_81;
        }
        int PROBE_START_LINE_84 = 84;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_1670_line_84 = desc;
		int PROBE_END_LINE_84 = 84;
		return v_desc_1670_line_84;
    }

    @Override
    public BasicBeanDescription forDeserializationWithBuilder(DeserializationConfig cfg,
            JavaType type, MixInResolver r)
    {
    	// no caching for Builders (no standard JDK builder types):
    	return BasicBeanDescription.forDeserialization(collectPropertiesWithBuilder(cfg,
            		type, r, false));
    }
    
    @Override
    public BasicBeanDescription forCreation(DeserializationConfig cfg,
            JavaType type, MixInResolver r)
    {
        BasicBeanDescription desc = _findCachedDesc(type);
        if (desc == null) {
            desc = BasicBeanDescription.forDeserialization(
            		collectProperties(cfg, type, r, false, "set"));
        }
        return desc;
    }

    @Override
    public BasicBeanDescription forClassAnnotations(MapperConfig<?> cfg,
            JavaType type, MixInResolver r)
    {
        int PROBE_START_LINE_112 = 112;
		MapperConfig<?> p_cfg_1677_line_112 = cfg;
		boolean basic_class_introspector_1_expr25_line_112 = p_cfg_1677_line_112.isAnnotationProcessingEnabled();
		int PROBE_END_LINE_112 = 112;
		boolean useAnnotations = basic_class_introspector_1_expr25_line_112;
        int PROBE_START_LINE_113 = 114;
		com.fasterxml.jackson.databind.JavaType p_type_1678_line_113 = type;
		Class<?> basic_class_introspector_1_expr27_line_113 = p_type_1678_line_113.getRawClass();
		AnnotatedClass basic_class_introspector_1_expr26_line_113 = AnnotatedClass.construct(
				basic_class_introspector_1_expr27_line_113, (useAnnotations ? cfg.getAnnotationIntrospector() : null),
				r);
		int PROBE_END_LINE_113 = 114;
		AnnotatedClass ac = basic_class_introspector_1_expr26_line_113;
        int PROBE_START_LINE_115 = 115;
		MapperConfig<?> p_cfg_1677_line_115 = cfg;
		com.fasterxml.jackson.databind.JavaType p_type_1678_line_115 = type;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1681_line_115 = ac;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription basic_class_introspector_1_expr29_line_115 = BasicBeanDescription
				.forOtherUse(p_cfg_1677_line_115, p_type_1678_line_115, v_ac_1681_line_115);
		int PROBE_END_LINE_115 = 115;
		return basic_class_introspector_1_expr29_line_115;
    }

    @Override
    public BasicBeanDescription forDirectClassAnnotations(MapperConfig<?> cfg,
            JavaType type, MixInResolver r)
    {
        boolean useAnnotations = cfg.isAnnotationProcessingEnabled();
        AnnotationIntrospector ai =  cfg.getAnnotationIntrospector();
        AnnotatedClass ac = AnnotatedClass.constructWithoutSuperTypes(type.getRawClass(),
                (useAnnotations ? ai : null), r);
        return BasicBeanDescription.forOtherUse(cfg, type, ac);
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
        int PROBE_START_LINE_139 = 139;
		MapperConfig<?> p_config_1685_line_139 = config;
		boolean basic_class_introspector_1_expr30_line_139 = p_config_1685_line_139.isAnnotationProcessingEnabled();
		int PROBE_END_LINE_139 = 139;
		boolean useAnnotations = basic_class_introspector_1_expr30_line_139;
        int PROBE_START_LINE_140 = 141;
		com.fasterxml.jackson.databind.JavaType p_type_1686_line_140 = type;
		Class<?> basic_class_introspector_1_expr32_line_140 = p_type_1686_line_140.getRawClass();
		AnnotatedClass basic_class_introspector_1_expr31_line_140 = AnnotatedClass.construct(
				basic_class_introspector_1_expr32_line_140,
				(useAnnotations ? config.getAnnotationIntrospector() : null), r);
		int PROBE_END_LINE_140 = 141;
		AnnotatedClass ac = basic_class_introspector_1_expr31_line_140;
        int PROBE_START_LINE_142 = 142;
		MapperConfig<?> p_config_1685_line_142 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1691_line_142 = ac;
		com.fasterxml.jackson.databind.JavaType p_type_1686_line_142 = type;
		boolean p_for_serialization_1688_line_142 = forSerialization;
		String p_mutator_prefix_1689_line_142 = mutatorPrefix;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector basic_class_introspector_1_expr35_line_142 = constructPropertyCollector(
				p_config_1685_line_142, v_ac_1691_line_142, p_type_1686_line_142, p_for_serialization_1688_line_142,
				p_mutator_prefix_1689_line_142);
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector basic_class_introspector_1_expr34_line_142 = basic_class_introspector_1_expr35_line_142
				.collect();
		int PROBE_END_LINE_142 = 142;
		return basic_class_introspector_1_expr34_line_142;
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
        int PROBE_START_LINE_163 = 163;
		MapperConfig<?> p_config_1696_line_163 = config;
		boolean p_for_serialization_1699_line_163 = forSerialization;
		com.fasterxml.jackson.databind.JavaType p_type_1698_line_163 = type;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_1697_line_163 = ac;
		String p_mutator_prefix_1700_line_163 = mutatorPrefix;
		int PROBE_END_LINE_163 = 163;
		return new POJOPropertiesCollector(p_config_1696_line_163, p_for_serialization_1699_line_163, p_type_1698_line_163, p_ac_1697_line_163, p_mutator_prefix_1700_line_163);
    }
    
    /**
     * Method called to see if type is one of core JDK types
     * that we have cached for efficiency.
     */
    protected BasicBeanDescription _findCachedDesc(JavaType type)
    {
        int PROBE_START_LINE_172 = 172;
		com.fasterxml.jackson.databind.JavaType p_type_1701_line_172 = type;
		Class<?> basic_class_introspector_1_expr37_line_172 = p_type_1701_line_172.getRawClass();
		int PROBE_END_LINE_172 = 172;
		Class<?> cls = basic_class_introspector_1_expr37_line_172;
        int PROBE_START_LINE_173 = 175;
		Class<?> v_cls_1702_line_173 = cls;
		boolean basic_class_introspector_1_expr38_line_173 = v_cls_1702_line_173 == String.class;
		int PROBE_END_LINE_173 = 175;
		if (basic_class_introspector_1_expr38_line_173) {
            int PROBE_START_LINE_174 = 174;
			com.fasterxml.jackson.databind.introspect.BasicBeanDescription f_string_desc_1656_line_174 = STRING_DESC;
			int PROBE_END_LINE_174 = 174;
			return f_string_desc_1656_line_174;
        }
        int PROBE_START_LINE_176 = 178;
		Class<?> v_cls_1702_line_176 = cls;
		Class<Boolean> q_type_30_line_176 = Boolean.TYPE;
		boolean basic_class_introspector_1_expr40_line_176 = v_cls_1702_line_176 == q_type_30_line_176;
		int PROBE_END_LINE_176 = 178;
		if (basic_class_introspector_1_expr40_line_176) {
            return BOOLEAN_DESC;
        }
        int PROBE_START_LINE_179 = 181;
		Class<?> v_cls_1702_line_179 = cls;
		Class<Integer> q_type_30_line_179 = Integer.TYPE;
		boolean basic_class_introspector_1_expr41_line_179 = v_cls_1702_line_179 == q_type_30_line_179;
		int PROBE_END_LINE_179 = 181;
		if (basic_class_introspector_1_expr41_line_179) {
            return INT_DESC;
        }
        int PROBE_START_LINE_182 = 184;
		Class<?> v_cls_1702_line_182 = cls;
		Class<Long> q_type_30_line_182 = Long.TYPE;
		boolean basic_class_introspector_1_expr42_line_182 = v_cls_1702_line_182 == q_type_30_line_182;
		int PROBE_END_LINE_182 = 184;
		if (basic_class_introspector_1_expr42_line_182) {
            return LONG_DESC;
        }
        return null;
    }
}
