package com.fasterxml.jackson.databind;

import java.lang.reflect.Type;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;

/**
 * Shared base class for {@link DeserializationContext} and
 * {@link SerializerProvider}, context objects passed through data-binding
 * process. Designed so that some of implementations can rely on shared
 * aspects like access to secondary contextual objects like type factories
 * or handler instantiators.
 * 
 * @since 2.2
 */
public abstract class DatabindContext
{
    /*
    /**********************************************************
    /* Generic config access
    /**********************************************************
     */

    /**
     * Accessor to currently active configuration (both per-request configs
     * and per-mapper config).
     */
    public abstract MapperConfig<?> getConfig();

    /**
     * Convenience method for accessing serialization view in use (if any); equivalent to:
     *<pre>
     *   getConfig().getAnnotationIntrospector();
     *</pre>
     */
    public abstract AnnotationIntrospector getAnnotationIntrospector();
    
    /*
    /**********************************************************
    /* Access to specific config settings
    /**********************************************************
     */
    
    /**
     * Convenience method for checking whether specified serialization
     * feature is enabled or not.
     * Shortcut for:
     *<pre>
     *  getConfig().isEnabled(feature);
     *</pre>
     */
    public final boolean isEnabled(MapperFeature feature) {
        int PROBE_START_LINE_61 = 61;
		MapperConfig<?> databind_context_1_expr2_line_61 = getConfig();
		com.fasterxml.jackson.databind.MapperFeature p_feature_129_line_61 = feature;
		boolean databind_context_1_expr1_line_61 = databind_context_1_expr2_line_61.isEnabled(p_feature_129_line_61);
		int PROBE_END_LINE_61 = 61;
		return databind_context_1_expr1_line_61;
    }

    /**
     * Convenience method for accessing serialization view in use (if any); equivalent to:
     *<pre>
     *   getConfig().canOverrideAccessModifiers();
     *</pre>
     */
    public final boolean canOverrideAccessModifiers() {
        int PROBE_START_LINE_71 = 71;
		MapperConfig<?> databind_context_1_expr4_line_71 = getConfig();
		boolean databind_context_1_expr3_line_71 = databind_context_1_expr4_line_71.canOverrideAccessModifiers();
		int PROBE_END_LINE_71 = 71;
		return databind_context_1_expr3_line_71;
    }

    /**
     * Accessor for locating currently active view, if any;
     * returns null if no view has been set.
     */
    public abstract Class<?> getActiveView();
    
    /*
    /**********************************************************
    /* Generic attributes (2.3+)
    /**********************************************************
     */

    /**
     * Method for accessing attributes available in this context.
     * Per-call attributes have highest precedence; attributes set
     * via {@link ObjectReader} or {@link ObjectWriter} have lower
     * precedence.
     * 
     * @param key Key of the attribute to get
     * @return Value of the attribute, if any; null otherwise
     * 
     * @since 2.3
     */
    public abstract Object getAttribute(Object key);

    /**
     * Method for setting per-call value of given attribute.
     * This will override any previously defined value for the
     * attribute within this context.
     * 
     * @param key Key of the attribute to set
     * @param value Value to set attribute to
     * 
     * @return This context object, to allow chaining
     * 
     * @since 2.3
     */
    public abstract DatabindContext setAttribute(Object key, Object value);

    /*
    /**********************************************************
    /* Type instantiation/resolution
    /**********************************************************
     */

    /**
     * Convenience method for constructing {@link JavaType} for given JDK
     * type (usually {@link java.lang.Class})
     */
    public JavaType constructType(Type type) {
         return getTypeFactory().constructType(type);
    }

    /**
     * Convenience method for constructing subtypes, retaining generic
     * type parameter (if any)
     */
    public JavaType constructSpecializedType(JavaType baseType, Class<?> subclass) {
        // simple optimization to avoid costly introspection if type-erased type does NOT differ
        if (baseType.getRawClass() == subclass) {
            return baseType;
        }
        return getConfig().constructSpecializedType(baseType, subclass);
    }

    public abstract TypeFactory getTypeFactory();

    /*
    /**********************************************************
    /* Helper object construction
    /**********************************************************
     */

    public ObjectIdGenerator<?> objectIdGeneratorInstance(Annotated annotated,
            ObjectIdInfo objectIdInfo)
        throws JsonMappingException
    {
        int PROBE_START_LINE_151 = 151;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo p_object_id_info_137_line_151 = objectIdInfo;
		Class<?> databind_context_1_expr5_line_151 = p_object_id_info_137_line_151.getGeneratorType();
		int PROBE_END_LINE_151 = 151;
		Class<?> implClass = databind_context_1_expr5_line_151;
        int PROBE_START_LINE_152 = 152;
		MapperConfig<?> databind_context_1_expr6_line_152 = getConfig();
		int PROBE_END_LINE_152 = 152;
		final MapperConfig<?> config = databind_context_1_expr6_line_152;
        int PROBE_START_LINE_153 = 153;
		MapperConfig<?> v_config_139_line_153 = config;
		HandlerInstantiator databind_context_1_expr7_line_153 = v_config_139_line_153.getHandlerInstantiator();
		int PROBE_END_LINE_153 = 153;
		HandlerInstantiator hi = databind_context_1_expr7_line_153;
        int PROBE_START_LINE_154 = 154;
		com.fasterxml.jackson.databind.cfg.HandlerInstantiator v_hi_140_line_154 = hi;
		boolean databind_context_1_expr11_line_154 = v_hi_140_line_154 == null;
		boolean databind_context_1_expr9_line_154 = (databind_context_1_expr11_line_154);
		ObjectIdGenerator<?> databind_context_1_expr10_line_154 = null;
		if (!databind_context_1_expr9_line_154) {
			com.fasterxml.jackson.databind.cfg.HandlerInstantiator v_hi_140_line_154_v1 = hi;
			MapperConfig<?> v_config_139_line_154 = config;
			com.fasterxml.jackson.databind.introspect.Annotated p_annotated_136_line_154 = annotated;
			Class<?> v_impl_class_138_line_154 = implClass;
			databind_context_1_expr10_line_154 = v_hi_140_line_154_v1.objectIdGeneratorInstance(v_config_139_line_154,
					p_annotated_136_line_154, v_impl_class_138_line_154);
		}
		ObjectIdGenerator<?> databind_context_1_expr8_line_154 = databind_context_1_expr9_line_154
				? null
				: databind_context_1_expr10_line_154;
		int PROBE_END_LINE_154 = 154;
		ObjectIdGenerator<?> gen = databind_context_1_expr8_line_154;
        int PROBE_START_LINE_155 = 158;
		ObjectIdGenerator<?> v_gen_141_line_155 = gen;
		boolean databind_context_1_expr12_line_155 = v_gen_141_line_155 == null;
		int PROBE_END_LINE_155 = 158;
		if (databind_context_1_expr12_line_155) {
            int PROBE_START_LINE_156 = 157;
			Class<?> v_impl_class_138_line_156 = implClass;
			java.lang.Object databind_context_1_expr15_line_156 = ClassUtil.createInstance(v_impl_class_138_line_156,
					config.canOverrideAccessModifiers());
			int PROBE_END_LINE_156 = 157;
			gen = (ObjectIdGenerator<?>) databind_context_1_expr15_line_156;
        }
        int PROBE_START_LINE_159 = 159;
		ObjectIdGenerator<?> v_gen_141_line_159 = gen;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo p_object_id_info_137_line_159 = objectIdInfo;
		Class<?> databind_context_1_expr18_line_159 = p_object_id_info_137_line_159.getScope();
		ObjectIdGenerator<?> databind_context_1_expr17_line_159 = v_gen_141_line_159
				.forScope(databind_context_1_expr18_line_159);
		int PROBE_END_LINE_159 = 159;
		return databind_context_1_expr17_line_159;
    }

    public ObjectIdResolver objectIdResolverInstance(Annotated annotated, ObjectIdInfo objectIdInfo)
    {
        int PROBE_START_LINE_164 = 164;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo p_object_id_info_143_line_164 = objectIdInfo;
		Class<? extends ObjectIdResolver> databind_context_1_expr19_line_164 = p_object_id_info_143_line_164
				.getResolverType();
		int PROBE_END_LINE_164 = 164;
		Class<? extends ObjectIdResolver> implClass = databind_context_1_expr19_line_164;
        int PROBE_START_LINE_165 = 165;
		MapperConfig<?> databind_context_1_expr20_line_165 = getConfig();
		int PROBE_END_LINE_165 = 165;
		final MapperConfig<?> config = databind_context_1_expr20_line_165;
        int PROBE_START_LINE_166 = 166;
		MapperConfig<?> v_config_145_line_166 = config;
		HandlerInstantiator databind_context_1_expr21_line_166 = v_config_145_line_166.getHandlerInstantiator();
		int PROBE_END_LINE_166 = 166;
		HandlerInstantiator hi = databind_context_1_expr21_line_166;
        int PROBE_START_LINE_167 = 167;
		com.fasterxml.jackson.databind.cfg.HandlerInstantiator v_hi_146_line_167 = hi;
		boolean databind_context_1_expr25_line_167 = v_hi_146_line_167 == null;
		boolean databind_context_1_expr23_line_167 = (databind_context_1_expr25_line_167);
		com.fasterxml.jackson.annotation.ObjectIdResolver databind_context_1_expr24_line_167 = null;
		if (!databind_context_1_expr23_line_167) {
			com.fasterxml.jackson.databind.cfg.HandlerInstantiator v_hi_146_line_167_v1 = hi;
			MapperConfig<?> v_config_145_line_167 = config;
			com.fasterxml.jackson.databind.introspect.Annotated p_annotated_142_line_167 = annotated;
			Class<? extends com.fasterxml.jackson.annotation.ObjectIdResolver> v_impl_class_144_line_167 = implClass;
			databind_context_1_expr24_line_167 = v_hi_146_line_167_v1.resolverIdGeneratorInstance(v_config_145_line_167,
					p_annotated_142_line_167, v_impl_class_144_line_167);
		}
		ObjectIdResolver databind_context_1_expr22_line_167 = databind_context_1_expr23_line_167
				? null
				: databind_context_1_expr24_line_167;
		int PROBE_END_LINE_167 = 167;
		ObjectIdResolver resolver = databind_context_1_expr22_line_167;
        int PROBE_START_LINE_168 = 170;
		com.fasterxml.jackson.annotation.ObjectIdResolver v_resolver_147_line_168 = resolver;
		boolean databind_context_1_expr26_line_168 = v_resolver_147_line_168 == null;
		int PROBE_END_LINE_168 = 170;
		if (databind_context_1_expr26_line_168) {
            int PROBE_START_LINE_169 = 169;
			Class<? extends com.fasterxml.jackson.annotation.ObjectIdResolver> v_impl_class_144_line_169 = implClass;
			MapperConfig<?> v_config_145_line_169 = config;
			boolean databind_context_1_expr29_line_169 = v_config_145_line_169.canOverrideAccessModifiers();
			com.fasterxml.jackson.annotation.ObjectIdResolver databind_context_1_expr28_line_169 = ClassUtil
					.createInstance(v_impl_class_144_line_169, databind_context_1_expr29_line_169);
			int PROBE_END_LINE_169 = 169;
			resolver = databind_context_1_expr28_line_169;
        }

        int PROBE_START_LINE_172 = 172;
		com.fasterxml.jackson.annotation.ObjectIdResolver v_resolver_147_line_172 = resolver;
		int PROBE_END_LINE_172 = 172;
		return v_resolver_147_line_172;
    }

    /**
     * Helper method to use to construct a {@link Converter}, given a definition
     * that may be either actual converter instance, or Class for instantiating one.
     * 
     * @since 2.2
     */
    @SuppressWarnings("unchecked")
    public Converter<Object,Object> converterInstance(Annotated annotated,
            Object converterDef)
        throws JsonMappingException
    {
        if (converterDef == null) {
            return null;
        }
        if (converterDef instanceof Converter<?,?>) {
            return (Converter<Object,Object>) converterDef;
        }
        if (!(converterDef instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned Converter definition of type "
                    +converterDef.getClass().getName()+"; expected type Converter or Class<Converter> instead");
        }
        Class<?> converterClass = (Class<?>)converterDef;
        // there are some known "no class" markers to consider too:
        if (converterClass == Converter.None.class || ClassUtil.isBogusClass(converterClass)) {
            return null;
        }
        if (!Converter.class.isAssignableFrom(converterClass)) {
            throw new IllegalStateException("AnnotationIntrospector returned Class "
                    +converterClass.getName()+"; expected Class<Converter>");
        }
        final MapperConfig<?> config = getConfig();
        HandlerInstantiator hi = config.getHandlerInstantiator();
        Converter<?,?> conv = (hi == null) ? null : hi.converterInstance(config, annotated, converterClass);
        if (conv == null) {
            conv = (Converter<?,?>) ClassUtil.createInstance(converterClass,
                    config.canOverrideAccessModifiers());
        }
        return (Converter<Object,Object>) conv;
    }
}
