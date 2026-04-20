package com.fasterxml.jackson.databind.deser;

import java.util.*;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.deser.impl.*;
import com.fasterxml.jackson.databind.deser.std.ThrowableDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.impl.SubTypeValidator;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.util.Collection;
import com.fasterxml.jackson.databind.AbstractTypeResolver;
import java.util.Set;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import com.fasterxml.jackson.databind.cfg.ConfigOverride;
import java.util.ArrayList;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.MapperFeature;
import java.util.List;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import java.util.Map;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;

/**
 * Concrete deserializer factory class that adds full Bean deserializer
 * construction logic using class introspection.
 * Note that factories specifically do not implement any form of caching:
 * aside from configuration they are stateless; caching is implemented
 * by other components.
 *<p>
 * Instances of this class are fully immutable as all configuration is
 * done by using "fluent factories" (methods that construct new factory
 * instances with different configuration, instead of modifying instance).
 */
public class BeanDeserializerFactory
    extends BasicDeserializerFactory
    implements java.io.Serializable // since 2.1
{
    private static final long serialVersionUID = 1;

    /**
     * Signature of <b>Throwable.initCause</b> method.
     */
    private final static Class<?>[] INIT_CAUSE_PARAMS = new Class<?>[] { Throwable.class };

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */
    
    /**
     * Globally shareable thread-safe instance which has no additional custom deserializers
     * registered
     */
    public final static BeanDeserializerFactory instance = new BeanDeserializerFactory(
            new DeserializerFactoryConfig());

    public BeanDeserializerFactory(DeserializerFactoryConfig config) {
        super(config);
    }
    
    /**
     * Method used by module registration functionality, to construct a new bean
     * deserializer factory
     * with different configuration settings.
     */
    @Override
    public DeserializerFactory withConfig(DeserializerFactoryConfig config)
    {
        if (_factoryConfig == config) {
            return this;
        }
        /* 22-Nov-2010, tatu: Handling of subtypes is tricky if we do immutable-with-copy-ctor;
         *    and we pretty much have to here either choose between losing subtype instance
         *    when registering additional deserializers, or losing deserializers.
         *    Instead, let's actually just throw an error if this method is called when subtype
         *    has not properly overridden this method; this to indicate problem as soon as possible.
         */
        ClassUtil.verifyMustOverride(BeanDeserializerFactory.class, this, "withConfig");
        return new BeanDeserializerFactory(config);
    }
    
    /*
    /**********************************************************
    /* DeserializerFactory API implementation
    /**********************************************************
     */

    /**
     * Method that {@link DeserializerCache}s call to create a new
     * deserializer for types other than Collections, Maps, arrays and
     * enums.
     */
    @Override
    public JsonDeserializer<Object> createBeanDeserializer(DeserializationContext ctxt,
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_94 = 94;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2127_line_94 = ctxt;
		DeserializationConfig bean_deserializer_factory_1_expr7_line_94 = p_ctxt_2127_line_94.getConfig();
		int PROBE_END_LINE_94 = 94;
		final DeserializationConfig config = bean_deserializer_factory_1_expr7_line_94;
        int PROBE_START_LINE_96 = 96;
		com.fasterxml.jackson.databind.JavaType p_type_2128_line_96 = type;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_2130_line_96 = config;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2129_line_96 = beanDesc;
		JsonDeserializer<Object> bean_deserializer_factory_1_expr8_line_96 = _findCustomBeanDeserializer(
				p_type_2128_line_96, v_config_2130_line_96, p_bean_desc_2129_line_96);
		int PROBE_END_LINE_96 = 96;
		// We may also have custom overrides:
        JsonDeserializer<Object> custom = bean_deserializer_factory_1_expr8_line_96;
        int PROBE_START_LINE_97 = 99;
		JsonDeserializer<Object> v_custom_2131_line_97 = custom;
		boolean bean_deserializer_factory_1_expr9_line_97 = v_custom_2131_line_97 != null;
		int PROBE_END_LINE_97 = 99;
		if (bean_deserializer_factory_1_expr9_line_97) {
            return custom;
        }
        int PROBE_START_LINE_104 = 106;
		com.fasterxml.jackson.databind.JavaType p_type_2128_line_104 = type;
		boolean bean_deserializer_factory_1_expr10_line_104 = p_type_2128_line_104.isThrowable();
		int PROBE_END_LINE_104 = 106;
		/* One more thing to check: do we have an exception type
         * (Throwable or its sub-classes)? If so, need slightly
         * different handling.
         */
        if (bean_deserializer_factory_1_expr10_line_104) {
            return buildThrowableDeserializer(ctxt, type, beanDesc);
        }
        // Or, for abstract types, may have alternate means for resolution
        // (defaulting, materialization)

        int PROBE_START_LINE_112 = 122;
		com.fasterxml.jackson.databind.JavaType p_type_2128_line_112 = type;
		boolean bean_deserializer_factory_1_expr12_line_112 = p_type_2128_line_112.isAbstract();
		boolean bean_deserializer_factory_1_expr13_line_112 = true;
		boolean bean_deserializer_factory_1_expr15_line_112 = true;
		if (bean_deserializer_factory_1_expr12_line_112) {
			com.fasterxml.jackson.databind.JavaType p_type_2128_line_112_v1 = type;
			boolean bean_deserializer_factory_1_expr14_line_112 = p_type_2128_line_112_v1.isPrimitive();
			bean_deserializer_factory_1_expr13_line_112 = !bean_deserializer_factory_1_expr14_line_112;
			if (bean_deserializer_factory_1_expr13_line_112) {
				com.fasterxml.jackson.databind.JavaType p_type_2128_line_112_v2 = type;
				boolean bean_deserializer_factory_1_expr16_line_112 = p_type_2128_line_112_v2.isEnumType();
				bean_deserializer_factory_1_expr15_line_112 = !bean_deserializer_factory_1_expr16_line_112;
			}
		}
		boolean bean_deserializer_factory_1_expr11_line_112 = bean_deserializer_factory_1_expr12_line_112
				&& bean_deserializer_factory_1_expr13_line_112 && bean_deserializer_factory_1_expr15_line_112;
		int PROBE_END_LINE_112 = 122;
		// 29-Nov-2015, tatu: Also, filter out calls to primitive types, they are
        //    not something we could materialize anything for
        if (bean_deserializer_factory_1_expr11_line_112) {
            int PROBE_START_LINE_114 = 114;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2127_line_114 = ctxt;
			com.fasterxml.jackson.databind.JavaType p_type_2128_line_114 = type;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2129_line_114 = beanDesc;
			JavaType bean_deserializer_factory_1_expr17_line_114 = materializeAbstractType(p_ctxt_2127_line_114,
					p_type_2128_line_114, p_bean_desc_2129_line_114);
			int PROBE_END_LINE_114 = 114;
			// Let's make it possible to materialize abstract types.
            JavaType concreteType = bean_deserializer_factory_1_expr17_line_114;
            int PROBE_START_LINE_115 = 121;
			com.fasterxml.jackson.databind.JavaType v_concrete_type_2132_line_115 = concreteType;
			boolean bean_deserializer_factory_1_expr18_line_115 = v_concrete_type_2132_line_115 != null;
			int PROBE_END_LINE_115 = 121;
			if (bean_deserializer_factory_1_expr18_line_115) {
                /* important: introspect actual implementation (abstract class or
                 * interface doesn't have constructors, for one)
                 */
                beanDesc = config.introspect(concreteType);
                return buildBeanDeserializer(ctxt, concreteType, beanDesc);
            }
        }
        int PROBE_START_LINE_124 = 125;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2127_line_125 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_2128_line_125 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2129_line_125 = beanDesc;
		JsonDeserializer<?> bean_deserializer_factory_1_expr20_line_125 = findStdDeserializer(p_ctxt_2127_line_125,
				p_type_2128_line_125, p_bean_desc_2129_line_125);
		int PROBE_END_LINE_124 = 125;
		// Otherwise, may want to check handlers for standard types, from superclass:
        @SuppressWarnings("unchecked")
        JsonDeserializer<Object> deser = (JsonDeserializer<Object>) bean_deserializer_factory_1_expr20_line_125;
        int PROBE_START_LINE_126 = 128;
		JsonDeserializer<Object> v_deser_2133_line_126 = deser;
		boolean bean_deserializer_factory_1_expr21_line_126 = v_deser_2133_line_126 != null;
		int PROBE_END_LINE_126 = 128;
		if (bean_deserializer_factory_1_expr21_line_126) {
            int PROBE_START_LINE_127 = 127;
			JsonDeserializer<Object> v_deser_2133_line_127 = deser;
			int PROBE_END_LINE_127 = 127;
			return v_deser_2133_line_127;
        }

        int PROBE_START_LINE_131 = 133;
		com.fasterxml.jackson.databind.JavaType p_type_2128_line_131 = type;
		Class<?> bean_deserializer_factory_1_expr24_line_131 = p_type_2128_line_131.getRawClass();
		boolean bean_deserializer_factory_1_expr23_line_131 = isPotentialBeanType(
				bean_deserializer_factory_1_expr24_line_131);
		boolean bean_deserializer_factory_1_expr22_line_131 = !bean_deserializer_factory_1_expr23_line_131;
		int PROBE_END_LINE_131 = 133;
		// Otherwise: could the class be a Bean class? If not, bail out
        if (bean_deserializer_factory_1_expr22_line_131) {
            return null;
        }
        int PROBE_START_LINE_135 = 135;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2127_line_135 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_2128_line_135 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2129_line_135 = beanDesc;
		int PROBE_END_LINE_135 = 135;
		// For checks like [databind#1599]
        _validateSubType(p_ctxt_2127_line_135, p_type_2128_line_135, p_bean_desc_2129_line_135);
        int PROBE_START_LINE_137 = 137;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2127_line_137 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_2128_line_137 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2129_line_137 = beanDesc;
		JsonDeserializer<Object> bean_deserializer_factory_1_expr26_line_137 = buildBeanDeserializer(
				p_ctxt_2127_line_137, p_type_2128_line_137, p_bean_desc_2129_line_137);
		int PROBE_END_LINE_137 = 137;
		// Use generic bean introspection to build deserializer
        return bean_deserializer_factory_1_expr26_line_137;
    }

    @Override
    public JsonDeserializer<Object> createBuilderBasedDeserializer(DeserializationContext ctxt,
            JavaType valueType, BeanDescription beanDesc, Class<?> builderClass)
                    throws JsonMappingException
    {
        // First: need a BeanDescription for builder class
        JavaType builderType = ctxt.constructType(builderClass);
        BeanDescription builderDesc = ctxt.getConfig().introspectForBuilder(builderType);
        return buildBuilderBasedDeserializer(ctxt, valueType, builderDesc);
    }

    /**
     * Method called by {@link BeanDeserializerFactory} to see if there might be a standard
     * deserializer registered for given type.
     */
    protected JsonDeserializer<?> findStdDeserializer(DeserializationContext ctxt,
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_161 = 161;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2138_line_161 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_2139_line_161 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2140_line_161 = beanDesc;
		JsonDeserializer<?> bean_deserializer_factory_1_expr27_line_161 = findDefaultDeserializer(p_ctxt_2138_line_161,
				p_type_2139_line_161, p_bean_desc_2140_line_161);
		int PROBE_END_LINE_161 = 161;
		// note: we do NOT check for custom deserializers here, caller has already
        // done that
        JsonDeserializer<?> deser = bean_deserializer_factory_1_expr27_line_161;
        int PROBE_START_LINE_163 = 169;
		JsonDeserializer<?> v_deser_2141_line_163 = deser;
		boolean bean_deserializer_factory_1_expr28_line_163 = v_deser_2141_line_163 != null;
		int PROBE_END_LINE_163 = 169;
		// Also: better ensure these are post-processable?
        if (bean_deserializer_factory_1_expr28_line_163) {
            int PROBE_START_LINE_164 = 168;
			com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_164 = _factoryConfig;
			boolean bean_deserializer_factory_1_expr29_line_164 = f__factory_config_1544_line_164
					.hasDeserializerModifiers();
			int PROBE_END_LINE_164 = 168;
			if (bean_deserializer_factory_1_expr29_line_164) {
                for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                    deser = mod.modifyDeserializer(ctxt.getConfig(), beanDesc, deser);
                }
            }
        }
        int PROBE_START_LINE_170 = 170;
		JsonDeserializer<?> v_deser_2141_line_170 = deser;
		int PROBE_END_LINE_170 = 170;
		return v_deser_2141_line_170;
    }
    
    protected JavaType materializeAbstractType(DeserializationContext ctxt,
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_178 = 183;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_178 = _factoryConfig;
		Iterable<com.fasterxml.jackson.databind.AbstractTypeResolver> bean_deserializer_factory_1_expr30_line_178 = f__factory_config_1544_line_178
				.abstractTypeResolvers();
		int PROBE_END_LINE_178 = 183;
		// May have multiple resolvers, call in precedence order until one returns non-null
        for (AbstractTypeResolver r : bean_deserializer_factory_1_expr30_line_178) {
            JavaType concrete = r.resolveAbstractType(ctxt.getConfig(), beanDesc);
            if (concrete != null) {
                return concrete;
            }
        }
        return null;
    }

    /*
    /**********************************************************
    /* Public construction method beyond DeserializerFactory API:
    /* can be called from outside as well as overridden by
    /* sub-classes
    /**********************************************************
     */

    /**
     * Method that is to actually build a bean deserializer instance.
     * All basic sanity checks have been done to know that what we have
     * may be a valid bean type, and that there are no default simple
     * deserializers.
     */
    @SuppressWarnings("unchecked")
    public JsonDeserializer<Object> buildBeanDeserializer(DeserializationContext ctxt,
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        // First: check what creators we can use, if any
        ValueInstantiator valueInstantiator = null;
        /* 04-Jun-2015, tatu: To work around [databind#636], need to catch the
         *    issue, defer; this seems like a reasonable good place for now.
         *   Note, however, that for non-Bean types (Collections, Maps) this
         *   probably won't work and needs to be added elsewhere.
         */
        try {
            int PROBE_START_LINE_214 = 214;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2146_line_214 = ctxt;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2148_line_214 = beanDesc;
			com.fasterxml.jackson.databind.deser.ValueInstantiator bean_deserializer_factory_1_expr32_line_214 = findValueInstantiator(
					p_ctxt_2146_line_214, p_bean_desc_2148_line_214);
			int PROBE_END_LINE_214 = 214;
			valueInstantiator = bean_deserializer_factory_1_expr32_line_214;
        } catch (NoClassDefFoundError error) {
            return new ErrorThrowingDeserializer(error);
        } catch (IllegalArgumentException e) {
            // 05-Apr-2017, tatu: Although it might appear cleaner to require collector
            //   to throw proper exception, it doesn't actually have reference to this
            //   instance so...
            throw InvalidDefinitionException.from(ctxt.getParser(),
                    ClassUtil.exceptionMessage(e),
                    beanDesc, null);
        }
        int PROBE_START_LINE_225 = 225;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2146_line_225 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2148_line_225 = beanDesc;
		BeanDeserializerBuilder bean_deserializer_factory_1_expr33_line_225 = constructBeanDeserializerBuilder(
				p_ctxt_2146_line_225, p_bean_desc_2148_line_225);
		int PROBE_END_LINE_225 = 225;
		BeanDeserializerBuilder builder = bean_deserializer_factory_1_expr33_line_225;
        int PROBE_START_LINE_226 = 226;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_2150_line_226 = builder;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_value_instantiator_2149_line_226 = valueInstantiator;
		int PROBE_END_LINE_226 = 226;
		v_builder_2150_line_226.setValueInstantiator(v_value_instantiator_2149_line_226);
         int PROBE_START_LINE_228 = 228;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2146_line_228 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2148_line_228 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_2150_line_228 = builder;
		int PROBE_END_LINE_228 = 228;
		// And then setters for deserializing from JSON Object
        addBeanProps(p_ctxt_2146_line_228, p_bean_desc_2148_line_228, v_builder_2150_line_228);
        int PROBE_START_LINE_229 = 229;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2146_line_229 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2148_line_229 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_2150_line_229 = builder;
		int PROBE_END_LINE_229 = 229;
		addObjectIdReader(p_ctxt_2146_line_229, p_bean_desc_2148_line_229, v_builder_2150_line_229);

        int PROBE_START_LINE_232 = 232;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2146_line_232 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2148_line_232 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_2150_line_232 = builder;
		int PROBE_END_LINE_232 = 232;
		// managed/back reference fields/setters need special handling... first part
        addBackReferenceProperties(p_ctxt_2146_line_232, p_bean_desc_2148_line_232, v_builder_2150_line_232);
        int PROBE_START_LINE_233 = 233;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2146_line_233 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2148_line_233 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_2150_line_233 = builder;
		int PROBE_END_LINE_233 = 233;
		addInjectables(p_ctxt_2146_line_233, p_bean_desc_2148_line_233, v_builder_2150_line_233);
        
        int PROBE_START_LINE_235 = 235;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2146_line_235 = ctxt;
		DeserializationConfig bean_deserializer_factory_1_expr39_line_235 = p_ctxt_2146_line_235.getConfig();
		int PROBE_END_LINE_235 = 235;
		final DeserializationConfig config = bean_deserializer_factory_1_expr39_line_235;
        int PROBE_START_LINE_236 = 240;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_236 = _factoryConfig;
		boolean bean_deserializer_factory_1_expr40_line_236 = f__factory_config_1544_line_236
				.hasDeserializerModifiers();
		int PROBE_END_LINE_236 = 240;
		if (bean_deserializer_factory_1_expr40_line_236) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                builder = mod.updateBuilder(config, beanDesc, builder);
            }
        }
        JsonDeserializer<?> deserializer = null;

        int PROBE_START_LINE_243 = 247;
		com.fasterxml.jackson.databind.JavaType p_type_2147_line_243 = type;
		boolean bean_deserializer_factory_1_expr42_line_243 = p_type_2147_line_243.isAbstract();
		boolean bean_deserializer_factory_1_expr43_line_243 = true;
		if (bean_deserializer_factory_1_expr42_line_243) {
			com.fasterxml.jackson.databind.deser.ValueInstantiator v_value_instantiator_2149_line_243 = valueInstantiator;
			boolean bean_deserializer_factory_1_expr44_line_243 = v_value_instantiator_2149_line_243.canInstantiate();
			bean_deserializer_factory_1_expr43_line_243 = !bean_deserializer_factory_1_expr44_line_243;
		}
		boolean bean_deserializer_factory_1_expr41_line_243 = bean_deserializer_factory_1_expr42_line_243
				&& bean_deserializer_factory_1_expr43_line_243;
		int PROBE_END_LINE_243 = 247;
		if (bean_deserializer_factory_1_expr41_line_243) {
            deserializer = builder.buildAbstract();
        } else {
            int PROBE_START_LINE_246 = 246;
			com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_2150_line_246 = builder;
			JsonDeserializer<?> bean_deserializer_factory_1_expr46_line_246 = v_builder_2150_line_246.build();
			int PROBE_END_LINE_246 = 246;
			deserializer = bean_deserializer_factory_1_expr46_line_246;
        }
        int PROBE_START_LINE_250 = 254;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_250 = _factoryConfig;
		boolean bean_deserializer_factory_1_expr47_line_250 = f__factory_config_1544_line_250
				.hasDeserializerModifiers();
		int PROBE_END_LINE_250 = 254;
		// may have modifier(s) that wants to modify or replace serializer we just built
        // (note that `resolve()` and `createContextual()` called later on)
        if (bean_deserializer_factory_1_expr47_line_250) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deserializer = mod.modifyDeserializer(config, beanDesc, deserializer);
            }
        }
        int PROBE_START_LINE_255 = 255;
		JsonDeserializer<?> v_deserializer_2152_line_255 = deserializer;
		int PROBE_END_LINE_255 = 255;
		return (JsonDeserializer<Object>) v_deserializer_2152_line_255;
    }
    
    /**
     * Method for constructing a bean deserializer that uses specified
     * intermediate Builder for binding data, and construction of the
     * value instance.
     * Note that implementation is mostly copied from the regular
     * BeanDeserializer build method.
     */
    @SuppressWarnings("unchecked")
    protected JsonDeserializer<Object> buildBuilderBasedDeserializer(
    		DeserializationContext ctxt, JavaType valueType, BeanDescription builderDesc)
        throws JsonMappingException
    {
        // Creators, anyone? (to create builder itself)
        ValueInstantiator valueInstantiator;
        try {
            valueInstantiator = findValueInstantiator(ctxt, builderDesc);
        } catch (NoClassDefFoundError error) {
            return new ErrorThrowingDeserializer(error);
        } catch (IllegalArgumentException e) {
            // 05-Apr-2017, tatu: Although it might appear cleaner to require collector
            //   to throw proper exception, it doesn't actually have reference to this
            //   instance so...
            throw InvalidDefinitionException.from(ctxt.getParser(),
                    ClassUtil.exceptionMessage(e),
                    builderDesc, null);
        }
        final DeserializationConfig config = ctxt.getConfig();
        BeanDeserializerBuilder builder = constructBeanDeserializerBuilder(ctxt, builderDesc);
        builder.setValueInstantiator(valueInstantiator);
         // And then "with methods" for deserializing from JSON Object
        addBeanProps(ctxt, builderDesc, builder);
        addObjectIdReader(ctxt, builderDesc, builder);
        
        // managed/back reference fields/setters need special handling... first part
        addBackReferenceProperties(ctxt, builderDesc, builder);
        addInjectables(ctxt, builderDesc, builder);

        JsonPOJOBuilder.Value builderConfig = builderDesc.findPOJOBuilderConfig();
        final String buildMethodName = (builderConfig == null) ?
                JsonPOJOBuilder.DEFAULT_BUILD_METHOD : builderConfig.buildMethodName;
        
        // and lastly, find build method to use:
        AnnotatedMethod buildMethod = builderDesc.findMethod(buildMethodName, null);
        if (buildMethod != null) { // note: can't yet throw error; may be given build method
            if (config.canOverrideAccessModifiers()) {
            	ClassUtil.checkAndFixAccess(buildMethod.getMember(), config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
        }
        builder.setPOJOBuilder(buildMethod, builderConfig);
        // this may give us more information...
        if (_factoryConfig.hasDeserializerModifiers()) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                builder = mod.updateBuilder(config, builderDesc, builder);
            }
        }
        JsonDeserializer<?> deserializer = builder.buildBuilderBased(
        		valueType, buildMethodName);

        // [JACKSON-440]: may have modifier(s) that wants to modify or replace serializer we just built:
        if (_factoryConfig.hasDeserializerModifiers()) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deserializer = mod.modifyDeserializer(config, builderDesc, deserializer);
            }
        }
        return (JsonDeserializer<Object>) deserializer;
    }
    
    protected void addObjectIdReader(DeserializationContext ctxt,
            BeanDescription beanDesc, BeanDeserializerBuilder builder)
        throws JsonMappingException
    {
        int PROBE_START_LINE_329 = 329;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2157_line_329 = beanDesc;
		ObjectIdInfo bean_deserializer_factory_1_expr49_line_329 = p_bean_desc_2157_line_329.getObjectIdInfo();
		int PROBE_END_LINE_329 = 329;
		ObjectIdInfo objectIdInfo = bean_deserializer_factory_1_expr49_line_329;
        int PROBE_START_LINE_330 = 332;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_2159_line_330 = objectIdInfo;
		boolean bean_deserializer_factory_1_expr50_line_330 = v_object_id_info_2159_line_330 == null;
		int PROBE_END_LINE_330 = 332;
		if (bean_deserializer_factory_1_expr50_line_330) {
            return;
        }
        Class<?> implClass = objectIdInfo.getGeneratorType();
        JavaType idType;
        SettableBeanProperty idProp;
        ObjectIdGenerator<?> gen;

        ObjectIdResolver resolver = ctxt.objectIdResolverInstance(beanDesc.getClassInfo(), objectIdInfo);

        // Just one special case: Property-based generator is trickier
        if (implClass == ObjectIdGenerators.PropertyGenerator.class) { // most special one, needs extra work
            PropertyName propName = objectIdInfo.getPropertyName();
            idProp = builder.findProperty(propName);
            if (idProp == null) {
                throw new IllegalArgumentException("Invalid Object Id definition for "
                        +beanDesc.getBeanClass().getName()+": cannot find property with name '"+propName+"'");
            }
            idType = idProp.getType();
            gen = new PropertyBasedObjectIdGenerator(objectIdInfo.getScope());
        } else {
            JavaType type = ctxt.constructType(implClass);
            idType = ctxt.getTypeFactory().findTypeParameters(type, ObjectIdGenerator.class)[0];
            idProp = null;
            gen = ctxt.objectIdGeneratorInstance(beanDesc.getClassInfo(), objectIdInfo);
        }
        // also: unlike with value deserializers, let's just resolve one we need here
        JsonDeserializer<?> deser = ctxt.findRootValueDeserializer(idType);
        builder.setObjectIdReader(ObjectIdReader.construct(idType,
                objectIdInfo.getPropertyName(), gen, deser, idProp, resolver));
    }
    
    @SuppressWarnings("unchecked")
    public JsonDeserializer<Object> buildThrowableDeserializer(DeserializationContext ctxt,
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        final DeserializationConfig config = ctxt.getConfig();
        // first: construct like a regular bean deserializer...
        BeanDeserializerBuilder builder = constructBeanDeserializerBuilder(ctxt, beanDesc);
        builder.setValueInstantiator(findValueInstantiator(ctxt, beanDesc));

        addBeanProps(ctxt, beanDesc, builder);
        // (and assume there won't be any back references)

        // But then let's decorate things a bit
        // Need to add "initCause" as setter for exceptions (sub-classes of Throwable).
        AnnotatedMethod am = beanDesc.findMethod("initCause", INIT_CAUSE_PARAMS);
        if (am != null) { // should never be null
            SimpleBeanPropertyDefinition propDef = SimpleBeanPropertyDefinition.construct(ctxt.getConfig(), am,
                    new PropertyName("cause"));
            SettableBeanProperty prop = constructSettableProperty(ctxt, beanDesc, propDef,
                    am.getParameterType(0));
            if (prop != null) {
                // 21-Aug-2011, tatus: We may actually have found 'cause' property
                //   to set... but let's replace it just in case, otherwise can end up with odd errors.
                builder.addOrReplaceProperty(prop, true);
            }
        }

        // And also need to ignore "localizedMessage"
        builder.addIgnorable("localizedMessage");
        // Java 7 also added "getSuppressed", skip if we have such data:
        builder.addIgnorable("suppressed");
        // As well as "message": it will be passed via constructor,
        // as there's no 'setMessage()' method
        // 23-Jan-2018, tatu: ... although there MAY be Creator Property... which is problematic
//        builder.addIgnorable("message");

        // update builder now that all information is in?
        if (_factoryConfig.hasDeserializerModifiers()) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                builder = mod.updateBuilder(config, beanDesc, builder);
            }
        }
        JsonDeserializer<?> deserializer = builder.build();
        
        /* At this point it ought to be a BeanDeserializer; if not, must assume
         * it's some other thing that can handle deserialization ok...
         */
        if (deserializer instanceof BeanDeserializer) {
            deserializer = new ThrowableDeserializer((BeanDeserializer) deserializer);
        }

        // may have modifier(s) that wants to modify or replace serializer we just built:
        if (_factoryConfig.hasDeserializerModifiers()) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deserializer = mod.modifyDeserializer(config, beanDesc, deserializer);
            }
        }
        return (JsonDeserializer<Object>) deserializer;
    }

    /*
    /**********************************************************
    /* Helper methods for Bean deserializer construction,
    /* overridable by sub-classes
    /**********************************************************
     */

    /**
     * Overridable method that constructs a {@link BeanDeserializerBuilder}
     * which is used to accumulate information needed to create deserializer
     * instance.
     */
    protected BeanDeserializerBuilder constructBeanDeserializerBuilder(DeserializationContext ctxt,
            BeanDescription beanDesc) {
        int PROBE_START_LINE_437 = 437;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2164_line_437 = beanDesc;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2163_line_437 = ctxt;
				int PROBE_END_LINE_437 = 437;
		return new BeanDeserializerBuilder(p_bean_desc_2164_line_437, p_ctxt_2163_line_437);
    }
    
    /**
     * Method called to figure out settable properties for the
     * bean deserializer to use.
     *<p>
     * Note: designed to be overridable, and effort is made to keep interface
     * similar between versions.
     */
    protected void addBeanProps(DeserializationContext ctxt,
            BeanDescription beanDesc, BeanDeserializerBuilder builder)
        throws JsonMappingException
    {
        int PROBE_START_LINE_451 = 451;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2166_line_451 = beanDesc;
		com.fasterxml.jackson.databind.JavaType bean_deserializer_factory_1_expr54_line_451 = p_bean_desc_2166_line_451
				.getType();
		boolean bean_deserializer_factory_1_expr53_line_451 = bean_deserializer_factory_1_expr54_line_451.isAbstract();
		boolean bean_deserializer_factory_1_expr52_line_451 = !bean_deserializer_factory_1_expr53_line_451;
		int PROBE_END_LINE_451 = 451;
		final boolean isConcrete = bean_deserializer_factory_1_expr52_line_451;
        int PROBE_START_LINE_452 = 454;
		boolean v_is_concrete_2168_line_452 = isConcrete;
		SettableBeanProperty[] bean_deserializer_factory_1_expr55_line_452 = v_is_concrete_2168_line_452
				? builder.getValueInstantiator().getFromObjectArguments(ctxt.getConfig())
				: null;
		int PROBE_END_LINE_452 = 454;
		final SettableBeanProperty[] creatorProps = bean_deserializer_factory_1_expr55_line_452;
        int PROBE_START_LINE_455 = 455;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] v_creator_props_2169_line_455 = creatorProps;
		boolean bean_deserializer_factory_1_expr58_line_455 = v_creator_props_2169_line_455 != null;
		boolean bean_deserializer_factory_1_expr57_line_455 = (bean_deserializer_factory_1_expr58_line_455);
		int PROBE_END_LINE_455 = 455;
		final boolean hasCreatorProps = bean_deserializer_factory_1_expr57_line_455;

        int PROBE_START_LINE_461 = 463;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2165_line_461 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig bean_deserializer_factory_1_expr62_line_461 = p_ctxt_2165_line_461
				.getConfig();
		JsonIgnoreProperties.Value bean_deserializer_factory_1_expr59_line_461 = bean_deserializer_factory_1_expr62_line_461
				.getDefaultPropertyIgnorals(beanDesc.getBeanClass(), beanDesc.getClassInfo());
		int PROBE_END_LINE_461 = 463;
		// 01-May-2016, tatu: Which base type to use here gets tricky, since
        //   it may often make most sense to use general type for overrides,
        //   but what we have here may be more specific impl type. But for now
        //   just use it as is.
        JsonIgnoreProperties.Value ignorals = bean_deserializer_factory_1_expr59_line_461;
        Set<String> ignored = null;
        int PROBE_START_LINE_465 = 475;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value v_ignorals_2171_line_465 = ignorals;
		boolean bean_deserializer_factory_1_expr63_line_465 = v_ignorals_2171_line_465 != null;
		int PROBE_END_LINE_465 = 475;
		if (bean_deserializer_factory_1_expr63_line_465) {
            int PROBE_START_LINE_466 = 466;
			com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value v_ignorals_2171_line_466 = ignorals;
			boolean bean_deserializer_factory_1_expr64_line_466 = v_ignorals_2171_line_466.getIgnoreUnknown();
			int PROBE_END_LINE_466 = 466;
			boolean ignoreAny = bean_deserializer_factory_1_expr64_line_466;
            int PROBE_START_LINE_467 = 467;
			com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_2167_line_467 = builder;
			boolean v_ignore_any_2172_line_467 = ignoreAny;
			int PROBE_END_LINE_467 = 467;
			p_builder_2167_line_467.setIgnoreUnknownProperties(v_ignore_any_2172_line_467);
            int PROBE_START_LINE_469 = 469;
			com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value v_ignorals_2171_line_469 = ignorals;
			Set<String> bean_deserializer_factory_1_expr67_line_469 = v_ignorals_2171_line_469
					.findIgnoredForDeserialization();
			int PROBE_END_LINE_469 = 469;
			// Or explicit/implicit definitions?
            ignored = bean_deserializer_factory_1_expr67_line_469;
            int PROBE_START_LINE_470 = 472;
			Set<String> v_ignored_2173_line_470 = ignored;
			int PROBE_END_LINE_470 = 472;
			for (String propName : v_ignored_2173_line_470) {
                builder.addIgnorable(propName);
            }
        } else {
            ignored = Collections.emptySet();
        }

        int PROBE_START_LINE_478 = 478;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2166_line_478 = beanDesc;
		AnnotatedMember bean_deserializer_factory_1_expr68_line_478 = p_bean_desc_2166_line_478.findAnySetterAccessor();
		int PROBE_END_LINE_478 = 478;
		// Also, do we have a fallback "any" setter?
        AnnotatedMember anySetter = bean_deserializer_factory_1_expr68_line_478;
        int PROBE_START_LINE_479 = 492;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_any_setter_2175_line_479 = anySetter;
		boolean bean_deserializer_factory_1_expr69_line_479 = v_any_setter_2175_line_479 != null;
		int PROBE_END_LINE_479 = 492;
		if (bean_deserializer_factory_1_expr69_line_479) {
            builder.setAnySetter(constructAnySetter(ctxt, beanDesc, anySetter));
        } else {
            int PROBE_START_LINE_484 = 484;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2166_line_484 = beanDesc;
			Collection<String> bean_deserializer_factory_1_expr70_line_484 = p_bean_desc_2166_line_484
					.getIgnoredPropertyNames();
			int PROBE_END_LINE_484 = 484;
			// 23-Jan-2018, tatu: although [databind#1805] would suggest we should block
            //   properties regardless, for now only consider unless there's any setter...
            Collection<String> ignored2 = bean_deserializer_factory_1_expr70_line_484;
            int PROBE_START_LINE_485 = 491;
			Collection<String> v_ignored_2_2176_line_485 = ignored2;
			boolean bean_deserializer_factory_1_expr71_line_485 = v_ignored_2_2176_line_485 != null;
			int PROBE_END_LINE_485 = 491;
			if (bean_deserializer_factory_1_expr71_line_485) {
                int PROBE_START_LINE_486 = 490;
				Collection<String> v_ignored_2_2176_line_486 = ignored2;
				int PROBE_END_LINE_486 = 490;
				for (String propName : v_ignored_2_2176_line_486) {
                    // allow ignoral of similarly named JSON property, but do not force;
                    // latter means NOT adding this to 'ignored':
                    builder.addIgnorable(propName);
                }
            }
        }
        int PROBE_START_LINE_493 = 494;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2165_line_493 = ctxt;
		com.fasterxml.jackson.databind.MapperFeature q_use_getters_as_setters_76_line_493 = MapperFeature.USE_GETTERS_AS_SETTERS;
		boolean bean_deserializer_factory_1_expr73_line_493 = p_ctxt_2165_line_493
				.isEnabled(q_use_getters_as_setters_76_line_493);
		boolean bean_deserializer_factory_1_expr72_line_493 = bean_deserializer_factory_1_expr73_line_493
				&& ctxt.isEnabled(MapperFeature.AUTO_DETECT_GETTERS);
		int PROBE_END_LINE_493 = 494;
		final boolean useGettersAsSetters = bean_deserializer_factory_1_expr72_line_493;

        int PROBE_START_LINE_497 = 498;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2165_line_497 = ctxt;
		List<BeanPropertyDefinition> bean_deserializer_factory_1_expr74_line_497 = filterBeanProps(p_ctxt_2165_line_497,
				beanDesc, builder, beanDesc.findProperties(), ignored);
		int PROBE_END_LINE_497 = 498;
		// Ok: let's then filter out property definitions
        List<BeanPropertyDefinition> propDefs = bean_deserializer_factory_1_expr74_line_497;
        int PROBE_START_LINE_500 = 504;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_500 = _factoryConfig;
		boolean bean_deserializer_factory_1_expr76_line_500 = f__factory_config_1544_line_500
				.hasDeserializerModifiers();
		int PROBE_END_LINE_500 = 504;
		// After which we can let custom code change the set
        if (bean_deserializer_factory_1_expr76_line_500) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                propDefs = mod.updateProperties(ctxt.getConfig(), beanDesc, propDefs);
            }
        }

        int PROBE_START_LINE_507 = 594;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> v_prop_defs_2179_line_507 = propDefs;
		int PROBE_END_LINE_507 = 594;
		// At which point we still have all kinds of properties; not all with mutators:
        for (BeanPropertyDefinition propDef : v_prop_defs_2179_line_507) {
            SettableBeanProperty prop = null;
            
            int PROBE_START_LINE_513 = 544;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_2180_line_513 = propDef;
			boolean bean_deserializer_factory_1_expr77_line_513 = v_prop_def_2180_line_513.hasSetter();
			int PROBE_END_LINE_513 = 544;
			// 18-Oct-2013, tatu: Although constructor parameters have highest precedence,
            //   we need to do linkage (as per [databind#318]), and so need to start with
            //   other types, and only then create constructor parameter, if any.
            if (bean_deserializer_factory_1_expr77_line_513) {
                int PROBE_START_LINE_514 = 514;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_2180_line_514 = propDef;
				AnnotatedMethod bean_deserializer_factory_1_expr78_line_514 = v_prop_def_2180_line_514.getSetter();
				int PROBE_END_LINE_514 = 514;
				AnnotatedMethod setter = bean_deserializer_factory_1_expr78_line_514;
                int PROBE_START_LINE_515 = 515;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_setter_2182_line_515 = setter;
				JavaType bean_deserializer_factory_1_expr79_line_515 = v_setter_2182_line_515.getParameterType(0);
				int PROBE_END_LINE_515 = 515;
				JavaType propertyType = bean_deserializer_factory_1_expr79_line_515;
                int PROBE_START_LINE_516 = 516;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2165_line_516 = ctxt;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2166_line_516 = beanDesc;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_2180_line_516 = propDef;
				com.fasterxml.jackson.databind.JavaType v_property_type_2183_line_516 = propertyType;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_factory_1_expr81_line_516 = constructSettableProperty(
						p_ctxt_2165_line_516, p_bean_desc_2166_line_516, v_prop_def_2180_line_516,
						v_property_type_2183_line_516);
				int PROBE_END_LINE_516 = 516;
				prop = bean_deserializer_factory_1_expr81_line_516;
            } else {
				int PROBE_START_LINE_517 = 544;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_2180_line_517 = propDef;
				boolean bean_deserializer_factory_1_expr82_line_517 = v_prop_def_2180_line_517.hasField();
				int PROBE_END_LINE_517 = 544;
				if (bean_deserializer_factory_1_expr82_line_517) {
					AnnotatedField field = propDef.getField();
					JavaType propertyType = field.getType();
					prop = constructSettableProperty(ctxt, beanDesc, propDef, propertyType);
				} else {
					AnnotatedMethod getter = propDef.getGetter();
					if (getter != null) {
						if (useGettersAsSetters && _isSetterlessType(getter.getRawType())) {
							if (builder.hasIgnorable(propDef.getName())) {
								;
							} else {
								prop = constructSetterlessProperty(ctxt, beanDesc, propDef);
							}
						} else if (!propDef.hasConstructorParameter()) {
							PropertyMetadata md = propDef.getMetadata();
							if (md.getMergeInfo() != null) {
								prop = constructSetterlessProperty(ctxt, beanDesc, propDef);
							}
						}
					}
				}
			}

            int PROBE_START_LINE_548 = 584;
			boolean v_has_creator_props_2170_line_548 = hasCreatorProps;
			boolean bean_deserializer_factory_1_expr84_line_548 = true;
			if (v_has_creator_props_2170_line_548) {
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_2180_line_548 = propDef;
				bean_deserializer_factory_1_expr84_line_548 = v_prop_def_2180_line_548.hasConstructorParameter();
			}
			boolean bean_deserializer_factory_1_expr83_line_548 = v_has_creator_props_2170_line_548
					&& bean_deserializer_factory_1_expr84_line_548;
			int PROBE_END_LINE_548 = 584;
			// 25-Sep-2014, tatu: No point in finding constructor parameters for abstract types
            //   (since they are never used anyway)
            if (bean_deserializer_factory_1_expr83_line_548) {
                /* If property is passed via constructor parameter, we must
                 * handle things in special way. Not sure what is the most optimal way...
                 * for now, let's just call a (new) method in builder, which does nothing.
                 */
                // but let's call a method just to allow custom builders to be aware...
                final String name = propDef.getName();
                CreatorProperty cprop = null;
                if (creatorProps != null) {
                    for (SettableBeanProperty cp : creatorProps) {
                        if (name.equals(cp.getName()) && (cp instanceof CreatorProperty)) {
                            cprop = (CreatorProperty) cp;
                            break;
                        }
                    }
                }
                if (cprop == null) {
                    List<String> n = new ArrayList<>();
                    for (SettableBeanProperty cp : creatorProps) {
                        n.add(cp.getName());
                    }
                    ctxt.reportBadPropertyDefinition(beanDesc, propDef,
                            "Could not find creator property with name '%s' (known Creator properties: %s)",
                            name, n);
                    continue;
                }
                if (prop != null) {
                    cprop.setFallbackSetter(prop);
                }
                Class<?>[] views = propDef.findViews();
                if (views == null) {
                    views = beanDesc.findDefaultViews();
                }
                cprop.setViews(views);
                builder.addCreatorProperty(cprop);
                continue;
            }
            int PROBE_START_LINE_585 = 593;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2181_line_585 = prop;
			boolean bean_deserializer_factory_1_expr85_line_585 = v_prop_2181_line_585 != null;
			int PROBE_END_LINE_585 = 593;
			if (bean_deserializer_factory_1_expr85_line_585) {
                int PROBE_START_LINE_587 = 587;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_2180_line_587 = propDef;
				Class<?>[] bean_deserializer_factory_1_expr86_line_587 = v_prop_def_2180_line_587.findViews();
				int PROBE_END_LINE_587 = 587;
				// one more thing before adding to builder: copy any metadata
                Class<?>[] views = bean_deserializer_factory_1_expr86_line_587;
                int PROBE_START_LINE_588 = 590;
				Class<?>[] v_views_2184_line_588 = views;
				boolean bean_deserializer_factory_1_expr87_line_588 = v_views_2184_line_588 == null;
				int PROBE_END_LINE_588 = 590;
				if (bean_deserializer_factory_1_expr87_line_588) {
                    int PROBE_START_LINE_589 = 589;
					com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2166_line_589 = beanDesc;
					Class<?>[] bean_deserializer_factory_1_expr89_line_589 = p_bean_desc_2166_line_589
							.findDefaultViews();
					int PROBE_END_LINE_589 = 589;
					views = bean_deserializer_factory_1_expr89_line_589;
                }
                int PROBE_START_LINE_591 = 591;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2181_line_591 = prop;
				Class<?>[] v_views_2184_line_591 = views;
				int PROBE_END_LINE_591 = 591;
				v_prop_2181_line_591.setViews(v_views_2184_line_591);
                int PROBE_START_LINE_592 = 592;
				com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_2167_line_592 = builder;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2181_line_592 = prop;
				int PROBE_END_LINE_592 = 592;
				p_builder_2167_line_592.addProperty(v_prop_2181_line_592);
            }
        }
    }

    private boolean _isSetterlessType(Class<?> rawType) {
        // May also need to consider getters
        // for Map/Collection properties; but with lowest precedence
        // should only consider Collections and Maps, for now?
        return Collection.class.isAssignableFrom(rawType)
                || Map.class.isAssignableFrom(rawType);
    }

    /**
     * Helper method called to filter out explicit ignored properties,
     * as well as properties that have "ignorable types".
     * Note that this will not remove properties that have no
     * setters.
     */
    protected List<BeanPropertyDefinition> filterBeanProps(DeserializationContext ctxt,
            BeanDescription beanDesc, BeanDeserializerBuilder builder,
            List<BeanPropertyDefinition> propDefsIn,
            Set<String> ignored)
        throws JsonMappingException
    {
        ArrayList<BeanPropertyDefinition> result = new ArrayList<BeanPropertyDefinition>(
                Math.max(4, propDefsIn.size()));
        HashMap<Class<?>,Boolean> ignoredTypes = new HashMap<Class<?>,Boolean>();
        int PROBE_START_LINE_621 = 637;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> p_prop_defs_in_2189_line_621 = propDefsIn;
		int PROBE_END_LINE_621 = 637;
		// These are all valid setters, but we do need to introspect bit more
        for (BeanPropertyDefinition property : p_prop_defs_in_2189_line_621) {
            int PROBE_START_LINE_622 = 622;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_2193_line_622 = property;
			String bean_deserializer_factory_1_expr95_line_622 = v_property_2193_line_622.getName();
			int PROBE_END_LINE_622 = 622;
			String name = bean_deserializer_factory_1_expr95_line_622;
            int PROBE_START_LINE_623 = 625;
			Set<String> p_ignored_2190_line_623 = ignored;
			String v_name_2194_line_623 = name;
			boolean bean_deserializer_factory_1_expr96_line_623 = p_ignored_2190_line_623
					.contains(v_name_2194_line_623);
			int PROBE_END_LINE_623 = 625;
			if (bean_deserializer_factory_1_expr96_line_623) { // explicit ignoral using @JsonIgnoreProperties needs to block entries
                continue;
            }
            int PROBE_START_LINE_626 = 635;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_2193_line_626 = property;
			boolean bean_deserializer_factory_1_expr98_line_626 = v_property_2193_line_626.hasConstructorParameter();
			boolean bean_deserializer_factory_1_expr97_line_626 = !bean_deserializer_factory_1_expr98_line_626;
			int PROBE_END_LINE_626 = 635;
			if (bean_deserializer_factory_1_expr97_line_626) { // never skip constructor params
                int PROBE_START_LINE_627 = 627;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_2193_line_627 = property;
				Class<?> bean_deserializer_factory_1_expr99_line_627 = v_property_2193_line_627.getRawPrimaryType();
				int PROBE_END_LINE_627 = 627;
				Class<?> rawPropertyType = bean_deserializer_factory_1_expr99_line_627;
                int PROBE_START_LINE_629 = 634;
				Class<?> v_raw_property_type_2195_line_629 = rawPropertyType;
				boolean bean_deserializer_factory_1_expr102_line_629 = v_raw_property_type_2195_line_629 != null;
				boolean bean_deserializer_factory_1_expr101_line_629 = (bean_deserializer_factory_1_expr102_line_629);
				boolean bean_deserializer_factory_1_expr100_line_629 = bean_deserializer_factory_1_expr101_line_629
						&& isIgnorableType(ctxt.getConfig(), property, rawPropertyType, ignoredTypes);
				int PROBE_END_LINE_629 = 634;
				// Some types are declared as ignorable as well
                if (bean_deserializer_factory_1_expr100_line_629) {
                    // important: make ignorable, to avoid errors if value is actually seen
                    builder.addIgnorable(name);
                    continue;
                }
            }
            int PROBE_START_LINE_636 = 636;
			ArrayList<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> v_result_2191_line_636 = result;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_2193_line_636 = property;
			int PROBE_END_LINE_636 = 636;
			v_result_2191_line_636.add(v_property_2193_line_636);
        }
        int PROBE_START_LINE_638 = 638;
		ArrayList<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> v_result_2191_line_638 = result;
		int PROBE_END_LINE_638 = 638;
		return v_result_2191_line_638;
    }

    /**
     * Method that will find if bean has any managed- or back-reference properties,
     * and if so add them to bean, to be linked during resolution phase.
     *
     * @since 2.9
     */
    protected void addBackReferenceProperties(DeserializationContext ctxt,
            BeanDescription beanDesc, BeanDeserializerBuilder builder)
        throws JsonMappingException
    {
        int PROBE_START_LINE_652 = 652;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2197_line_652 = beanDesc;
		List<BeanPropertyDefinition> bean_deserializer_factory_1_expr104_line_652 = p_bean_desc_2197_line_652
				.findBackReferences();
		int PROBE_END_LINE_652 = 652;
		// and then back references, not necessarily found as regular properties
        List<BeanPropertyDefinition> refProps = bean_deserializer_factory_1_expr104_line_652;
        int PROBE_START_LINE_653 = 675;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> v_ref_props_2199_line_653 = refProps;
		boolean bean_deserializer_factory_1_expr105_line_653 = v_ref_props_2199_line_653 != null;
		int PROBE_END_LINE_653 = 675;
		if (bean_deserializer_factory_1_expr105_line_653) {
            for (BeanPropertyDefinition refProp : refProps) {
                /*
                AnnotatedMember m = refProp.getMutator();
                JavaType type;
                if (m instanceof AnnotatedMethod) {
                    type = ((AnnotatedMethod) m).getParameterType(0);
                } else {
                    type = m.getType();
                    // 30-Mar-2017, tatu: Unfortunately it is not yet possible to make back-refs
                    //    work through constructors; but let's at least indicate the issue for now
                    if (m instanceof AnnotatedParameter) {
                        ctxt.reportBadTypeDefinition(beanDesc,
"Cannot bind back reference using Creator parameter (reference '%s', parameter index #%d)",
name, ((AnnotatedParameter) m).getIndex());
                    }
                }
                */
                String refName = refProp.findReferenceName();
                builder.addBackReferenceProperty(refName, constructSettableProperty(ctxt,
                        beanDesc, refProp, refProp.getPrimaryType()));
            }
        }
    }

    @Deprecated // since 2.9 (rename)
    protected void addReferenceProperties(DeserializationContext ctxt,
            BeanDescription beanDesc, BeanDeserializerBuilder builder)
        throws JsonMappingException
    {
        addBackReferenceProperties(ctxt, beanDesc, builder);
    }

    /**
     * Method called locate all members used for value injection (if any),
     * constructor {@link com.fasterxml.jackson.databind.deser.impl.ValueInjector} instances, and add them to builder.
     */
    protected void addInjectables(DeserializationContext ctxt,
            BeanDescription beanDesc, BeanDeserializerBuilder builder)
        throws JsonMappingException
    {
        int PROBE_START_LINE_694 = 694;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2204_line_694 = beanDesc;
		Map<Object, AnnotatedMember> bean_deserializer_factory_1_expr106_line_694 = p_bean_desc_2204_line_694
				.findInjectables();
		int PROBE_END_LINE_694 = 694;
		Map<Object, AnnotatedMember> raw = bean_deserializer_factory_1_expr106_line_694;
        int PROBE_START_LINE_695 = 702;
		Map<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> v_raw_2206_line_695 = raw;
		boolean bean_deserializer_factory_1_expr107_line_695 = v_raw_2206_line_695 != null;
		int PROBE_END_LINE_695 = 702;
		if (bean_deserializer_factory_1_expr107_line_695) {
            for (Map.Entry<Object, AnnotatedMember> entry : raw.entrySet()) {
                AnnotatedMember m = entry.getValue();
                builder.addInjectable(PropertyName.construct(m.getName()),
                        m.getType(),
                        beanDesc.getClassAnnotations(), m, entry.getKey());
            }
        }
    }

    /**
     * Method called to construct fallback {@link SettableAnyProperty}
     * for handling unknown bean properties, given a method that
     * has been designated as such setter.
     * 
     * @param mutator Either 2-argument method (setter, with key and value), or Field
     *     that contains Map; either way accessor used for passing "any values"
     */
    @SuppressWarnings("unchecked")
    protected SettableAnyProperty constructAnySetter(DeserializationContext ctxt,
            BeanDescription beanDesc, AnnotatedMember mutator)
        throws JsonMappingException
    {
        //find the java type based on the annotated setter method or setter field 
        BeanProperty prop;
        JavaType keyType;
        JavaType valueType;

        if (mutator instanceof AnnotatedMethod) {
            // we know it's a 2-arg method, second arg is the value
            AnnotatedMethod am = (AnnotatedMethod) mutator;
            keyType = am.getParameterType(0);
            valueType = am.getParameterType(1);
            valueType = resolveMemberAndTypeAnnotations(ctxt, mutator, valueType);
            prop = new BeanProperty.Std(PropertyName.construct(mutator.getName()),
                    valueType, null, mutator,
                    PropertyMetadata.STD_OPTIONAL);

        } else if (mutator instanceof AnnotatedField) {
            AnnotatedField af = (AnnotatedField) mutator;
            // get the type from the content type of the map object
            JavaType mapType = af.getType();
            mapType = resolveMemberAndTypeAnnotations(ctxt, mutator, mapType);
            keyType = mapType.getKeyType();
            valueType = mapType.getContentType();
            prop = new BeanProperty.Std(PropertyName.construct(mutator.getName()),
                    mapType, null, mutator, PropertyMetadata.STD_OPTIONAL);
        } else {
            return ctxt.reportBadDefinition(beanDesc.getType(), String.format(
                    "Unrecognized mutator type for any setter: %s", mutator.getClass()));
        }
        // First: see if there are explicitly specified 
        // and then possible direct deserializer override on accessor
        KeyDeserializer keyDeser = findKeyDeserializerFromAnnotation(ctxt, mutator);
        if (keyDeser == null) {
            keyDeser = keyType.getValueHandler();
        }
        if (keyDeser == null) {
            keyDeser = ctxt.findKeyDeserializer(keyType, prop);
        } else {
            if (keyDeser instanceof ContextualKeyDeserializer) {
                keyDeser = ((ContextualKeyDeserializer) keyDeser)
                        .createContextual(ctxt, prop);
            }
        }
        JsonDeserializer<Object> deser = findContentDeserializerFromAnnotation(ctxt, mutator);
        if (deser == null) {
            deser = valueType.getValueHandler();
        }
        if (deser != null) {
            // As per [databind#462] need to ensure we contextualize deserializer before passing it on
            deser = (JsonDeserializer<Object>) ctxt.handlePrimaryContextualization(deser, prop, valueType);
        }
        TypeDeserializer typeDeser = valueType.getTypeHandler();
        return new SettableAnyProperty(prop, mutator, valueType,
                keyDeser, deser, typeDeser);
    }

    /**
     * Method that will construct a regular bean property setter using
     * the given setter method.
     *
     * @return Property constructed, if any; or null to indicate that
     *   there should be no property based on given definitions.
     */
    protected SettableBeanProperty constructSettableProperty(DeserializationContext ctxt,
            BeanDescription beanDesc, BeanPropertyDefinition propDef,
            JavaType propType0)
        throws JsonMappingException
    {
        int PROBE_START_LINE_786 = 786;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_2212_line_786 = propDef;
		AnnotatedMember bean_deserializer_factory_1_expr108_line_786 = p_prop_def_2212_line_786
				.getNonConstructorMutator();
		int PROBE_END_LINE_786 = 786;
		// need to ensure method is callable (for non-public)
        AnnotatedMember mutator = bean_deserializer_factory_1_expr108_line_786;
        int PROBE_START_LINE_790 = 792;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_2214_line_790 = mutator;
		boolean bean_deserializer_factory_1_expr109_line_790 = v_mutator_2214_line_790 == null;
		int PROBE_END_LINE_790 = 792;
		// 08-Sep-2016, tatu: issues like [databind#1342] suggest something fishy
        //   going on; add sanity checks to try to pin down actual problem...
        //   Possibly passing creator parameter?
        if (bean_deserializer_factory_1_expr109_line_790) {
            ctxt.reportBadPropertyDefinition(beanDesc, propDef, "No non-constructor mutator available");
        }
        int PROBE_START_LINE_793 = 793;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2210_line_793 = ctxt;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_2214_line_793 = mutator;
		com.fasterxml.jackson.databind.JavaType p_prop_type0_2213_line_793 = propType0;
		JavaType bean_deserializer_factory_1_expr110_line_793 = resolveMemberAndTypeAnnotations(p_ctxt_2210_line_793,
				v_mutator_2214_line_793, p_prop_type0_2213_line_793);
		int PROBE_END_LINE_793 = 793;
		JavaType type = bean_deserializer_factory_1_expr110_line_793;
        int PROBE_START_LINE_795 = 795;
		com.fasterxml.jackson.databind.JavaType v_type_2215_line_795 = type;
		TypeDeserializer bean_deserializer_factory_1_expr111_line_795 = v_type_2215_line_795.getTypeHandler();
		int PROBE_END_LINE_795 = 795;
		// Does the Method specify the deserializer to use? If so, let's use it.
        TypeDeserializer typeDeser = bean_deserializer_factory_1_expr111_line_795;
        SettableBeanProperty prop = null;
        int PROBE_START_LINE_797 = 804;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_2214_line_797 = mutator;
		boolean bean_deserializer_factory_1_expr112_line_797 = v_mutator_2214_line_797 instanceof AnnotatedMethod;
		int PROBE_END_LINE_797 = 804;
		if (bean_deserializer_factory_1_expr112_line_797) {
            int PROBE_START_LINE_798 = 799;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_2212_line_798 = propDef;
			com.fasterxml.jackson.databind.JavaType v_type_2215_line_798 = type;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_type_deser_2216_line_798 = typeDeser;
			int PROBE_END_LINE_798 = 799;
			prop = new MethodProperty(p_prop_def_2212_line_798, v_type_2215_line_798, v_type_deser_2216_line_798,
                    beanDesc.getClassAnnotations(), (AnnotatedMethod) mutator);
        } else {
            // 08-Sep-2016, tatu: wonder if we should verify it is `AnnotatedField` to be safe?
            prop = new FieldProperty(propDef, type, typeDeser,
                    beanDesc.getClassAnnotations(), (AnnotatedField) mutator);
        }
        int PROBE_START_LINE_805 = 805;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2210_line_805 = ctxt;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_2214_line_805 = mutator;
		JsonDeserializer<?> bean_deserializer_factory_1_expr117_line_805 = findDeserializerFromAnnotation(
				p_ctxt_2210_line_805, v_mutator_2214_line_805);
		int PROBE_END_LINE_805 = 805;
		JsonDeserializer<?> deser = bean_deserializer_factory_1_expr117_line_805;
        int PROBE_START_LINE_806 = 808;
		JsonDeserializer<?> v_deser_2218_line_806 = deser;
		boolean bean_deserializer_factory_1_expr118_line_806 = v_deser_2218_line_806 == null;
		int PROBE_END_LINE_806 = 808;
		if (bean_deserializer_factory_1_expr118_line_806) {
            int PROBE_START_LINE_807 = 807;
			com.fasterxml.jackson.databind.JavaType v_type_2215_line_807 = type;
			JsonDeserializer<?> bean_deserializer_factory_1_expr120_line_807 = v_type_2215_line_807.getValueHandler();
			int PROBE_END_LINE_807 = 807;
			deser = bean_deserializer_factory_1_expr120_line_807;
        }
        int PROBE_START_LINE_809 = 812;
		JsonDeserializer<?> v_deser_2218_line_809 = deser;
		boolean bean_deserializer_factory_1_expr121_line_809 = v_deser_2218_line_809 != null;
		int PROBE_END_LINE_809 = 812;
		if (bean_deserializer_factory_1_expr121_line_809) {
            deser = ctxt.handlePrimaryContextualization(deser, prop, type);
            prop = prop.withValueDeserializer(deser);
        }
        int PROBE_START_LINE_814 = 814;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_2212_line_814 = propDef;
		AnnotationIntrospector.ReferenceProperty bean_deserializer_factory_1_expr122_line_814 = p_prop_def_2212_line_814
				.findReferenceType();
		int PROBE_END_LINE_814 = 814;
		// need to retain name of managed forward references:
        AnnotationIntrospector.ReferenceProperty ref = bean_deserializer_factory_1_expr122_line_814;
        int PROBE_START_LINE_815 = 817;
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_2219_line_815 = ref;
		boolean bean_deserializer_factory_1_expr124_line_815 = v_ref_2219_line_815 != null;
		boolean bean_deserializer_factory_1_expr125_line_815 = true;
		if (bean_deserializer_factory_1_expr124_line_815) {
			com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_2219_line_815_v1 = ref;
			bean_deserializer_factory_1_expr125_line_815 = v_ref_2219_line_815_v1.isManagedReference();
		}
		boolean bean_deserializer_factory_1_expr123_line_815 = bean_deserializer_factory_1_expr124_line_815
				&& bean_deserializer_factory_1_expr125_line_815;
		int PROBE_END_LINE_815 = 817;
		if (bean_deserializer_factory_1_expr123_line_815) {
            prop.setManagedReferenceName(ref.getName());
        }
        int PROBE_START_LINE_818 = 818;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_2212_line_818 = propDef;
		ObjectIdInfo bean_deserializer_factory_1_expr126_line_818 = p_prop_def_2212_line_818.findObjectIdInfo();
		int PROBE_END_LINE_818 = 818;
		ObjectIdInfo objectIdInfo = bean_deserializer_factory_1_expr126_line_818;
        int PROBE_START_LINE_819 = 821;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_2220_line_819 = objectIdInfo;
		boolean bean_deserializer_factory_1_expr127_line_819 = v_object_id_info_2220_line_819 != null;
		int PROBE_END_LINE_819 = 821;
		if (bean_deserializer_factory_1_expr127_line_819){
            prop.setObjectIdInfo(objectIdInfo);
        }
        int PROBE_START_LINE_822 = 822;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2217_line_822 = prop;
		int PROBE_END_LINE_822 = 822;
		return v_prop_2217_line_822;
    }

    /**
     * Method that will construct a regular bean property setter using
     * the given setter method.
     */
    protected SettableBeanProperty constructSetterlessProperty(DeserializationContext ctxt,
            BeanDescription beanDesc, BeanPropertyDefinition propDef)
        throws JsonMappingException
    {
        final AnnotatedMethod getter = propDef.getGetter();
        JavaType type = resolveMemberAndTypeAnnotations(ctxt, getter, getter.getType());
        TypeDeserializer typeDeser = type.getTypeHandler();
        SettableBeanProperty prop = new SetterlessProperty(propDef, type, typeDeser,
                beanDesc.getClassAnnotations(), getter);
        JsonDeserializer<?> deser = findDeserializerFromAnnotation(ctxt, getter);
        if (deser == null) {
            deser = type.getValueHandler();
        }
        if (deser != null) {
            deser = ctxt.handlePrimaryContextualization(deser, prop, type);
            prop = prop.withValueDeserializer(deser);
        }
        return prop;
    }

    /*
    /**********************************************************
    /* Helper methods for Bean deserializer, other
    /**********************************************************
     */

    /**
     * Helper method used to skip processing for types that we know
     * cannot be (i.e. are never consider to be) beans: 
     * things like primitives, Arrays, Enums, and proxy types.
     *<p>
     * Note that usually we shouldn't really be getting these sort of
     * types anyway; but better safe than sorry.
     */
    protected boolean isPotentialBeanType(Class<?> type)
    {
        int PROBE_START_LINE_865 = 865;
		Class<?> p_type_2224_line_865 = type;
		String bean_deserializer_factory_1_expr128_line_865 = ClassUtil.canBeABeanType(p_type_2224_line_865);
		int PROBE_END_LINE_865 = 865;
		String typeStr = bean_deserializer_factory_1_expr128_line_865;
        int PROBE_START_LINE_866 = 868;
		String v_type_str_2225_line_866 = typeStr;
		boolean bean_deserializer_factory_1_expr129_line_866 = v_type_str_2225_line_866 != null;
		int PROBE_END_LINE_866 = 868;
		if (bean_deserializer_factory_1_expr129_line_866) {
            throw new IllegalArgumentException("Cannot deserialize Class "+type.getName()+" (of type "+typeStr+") as a Bean");
        }
        int PROBE_START_LINE_869 = 871;
		Class<?> p_type_2224_line_869 = type;
		boolean bean_deserializer_factory_1_expr130_line_869 = ClassUtil.isProxyType(p_type_2224_line_869);
		int PROBE_END_LINE_869 = 871;
		if (bean_deserializer_factory_1_expr130_line_869) {
            throw new IllegalArgumentException("Cannot deserialize Proxy class "+type.getName()+" as a Bean");
        }
        int PROBE_START_LINE_875 = 875;
		Class<?> p_type_2224_line_875 = type;
		String bean_deserializer_factory_1_expr132_line_875 = ClassUtil.isLocalType(p_type_2224_line_875, true);
		int PROBE_END_LINE_875 = 875;
		/* also: can't deserialize some local classes: static are ok; in-method not;
         * other non-static inner classes are ok
         */
        typeStr = bean_deserializer_factory_1_expr132_line_875;
        int PROBE_START_LINE_876 = 878;
		String v_type_str_2225_line_876 = typeStr;
		boolean bean_deserializer_factory_1_expr133_line_876 = v_type_str_2225_line_876 != null;
		int PROBE_END_LINE_876 = 878;
		if (bean_deserializer_factory_1_expr133_line_876) {
            throw new IllegalArgumentException("Cannot deserialize Class "+type.getName()+" (of type "+typeStr+") as a Bean");
        }
        return true;
    }

    /**
     * Helper method that will check whether given raw type is marked as always ignorable
     * (for purpose of ignoring properties with type)
     */
    protected boolean isIgnorableType(DeserializationConfig config, BeanPropertyDefinition propDef,
            Class<?> type, Map<Class<?>,Boolean> ignoredTypes)
    {
        int PROBE_START_LINE_889 = 889;
		Map<Class<?>, Boolean> p_ignored_types_2229_line_889 = ignoredTypes;
		Class<?> p_type_2228_line_889 = type;
		Boolean bean_deserializer_factory_1_expr134_line_889 = p_ignored_types_2229_line_889.get(p_type_2228_line_889);
		int PROBE_END_LINE_889 = 889;
		Boolean status = bean_deserializer_factory_1_expr134_line_889;
        int PROBE_START_LINE_890 = 892;
		Boolean v_status_2230_line_890 = status;
		boolean bean_deserializer_factory_1_expr135_line_890 = v_status_2230_line_890 != null;
		int PROBE_END_LINE_890 = 892;
		if (bean_deserializer_factory_1_expr135_line_890) {
            return status.booleanValue();
        }
        int PROBE_START_LINE_894 = 907;
		Class<?> p_type_2228_line_894 = type;
		boolean bean_deserializer_factory_1_expr138_line_894 = p_type_2228_line_894 == String.class;
		boolean bean_deserializer_factory_1_expr137_line_894 = (bean_deserializer_factory_1_expr138_line_894);
		boolean bean_deserializer_factory_1_expr140_line_894 = false;
		if (!bean_deserializer_factory_1_expr137_line_894) {
			Class<?> p_type_2228_line_894_v1 = type;
			bean_deserializer_factory_1_expr140_line_894 = p_type_2228_line_894_v1.isPrimitive();
		}
		boolean bean_deserializer_factory_1_expr136_line_894 = bean_deserializer_factory_1_expr137_line_894
				|| bean_deserializer_factory_1_expr140_line_894;
		int PROBE_END_LINE_894 = 907;
		// 22-Oct-2016, tatu: Slight check to skip primitives, String
        if (bean_deserializer_factory_1_expr136_line_894) {
            int PROBE_START_LINE_895 = 895;
			Boolean q_false_77_line_895 = Boolean.FALSE;
			int PROBE_END_LINE_895 = 895;
			status = q_false_77_line_895;
        } else {
            int PROBE_START_LINE_898 = 898;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_2226_line_898 = config;
			Class<?> p_type_2228_line_898 = type;
			com.fasterxml.jackson.databind.cfg.ConfigOverride bean_deserializer_factory_1_expr144_line_898 = p_config_2226_line_898
					.getConfigOverride(p_type_2228_line_898);
			Boolean bean_deserializer_factory_1_expr143_line_898 = bean_deserializer_factory_1_expr144_line_898
					.getIsIgnoredType();
			int PROBE_END_LINE_898 = 898;
			// 21-Apr-2016, tatu: For 2.8, can specify config overrides
            status = bean_deserializer_factory_1_expr143_line_898;
            int PROBE_START_LINE_899 = 906;
			Boolean v_status_2230_line_899 = status;
			boolean bean_deserializer_factory_1_expr145_line_899 = v_status_2230_line_899 == null;
			int PROBE_END_LINE_899 = 906;
			if (bean_deserializer_factory_1_expr145_line_899) {
                int PROBE_START_LINE_900 = 900;
				com.fasterxml.jackson.databind.DeserializationConfig p_config_2226_line_900 = config;
				Class<?> p_type_2228_line_900 = type;
				BeanDescription bean_deserializer_factory_1_expr146_line_900 = p_config_2226_line_900
						.introspectClassAnnotations(p_type_2228_line_900);
				int PROBE_END_LINE_900 = 900;
				BeanDescription desc = bean_deserializer_factory_1_expr146_line_900;
                int PROBE_START_LINE_901 = 901;
				com.fasterxml.jackson.databind.DeserializationConfig p_config_2226_line_901 = config;
				com.fasterxml.jackson.databind.AnnotationIntrospector bean_deserializer_factory_1_expr150_line_901 = p_config_2226_line_901
						.getAnnotationIntrospector();
				com.fasterxml.jackson.databind.BeanDescription v_desc_2231_line_901 = desc;
				com.fasterxml.jackson.databind.introspect.AnnotatedClass bean_deserializer_factory_1_expr149_line_901 = v_desc_2231_line_901
						.getClassInfo();
				Boolean bean_deserializer_factory_1_expr148_line_901 = bean_deserializer_factory_1_expr150_line_901
						.isIgnorableType(bean_deserializer_factory_1_expr149_line_901);
				int PROBE_END_LINE_901 = 901;
				status = bean_deserializer_factory_1_expr148_line_901;
                int PROBE_START_LINE_903 = 905;
				Boolean v_status_2230_line_903 = status;
				boolean bean_deserializer_factory_1_expr151_line_903 = v_status_2230_line_903 == null;
				int PROBE_END_LINE_903 = 905;
				// We default to 'false', i.e. not ignorable
                if (bean_deserializer_factory_1_expr151_line_903) {
                    int PROBE_START_LINE_904 = 904;
					Boolean q_false_77_line_904 = Boolean.FALSE;
					int PROBE_END_LINE_904 = 904;
					status = q_false_77_line_904;
                }
            }
        }
        int PROBE_START_LINE_908 = 908;
		Map<Class<?>, Boolean> p_ignored_types_2229_line_908 = ignoredTypes;
		Class<?> p_type_2228_line_908 = type;
		Boolean v_status_2230_line_908 = status;
		int PROBE_END_LINE_908 = 908;
		p_ignored_types_2229_line_908.put(p_type_2228_line_908, v_status_2230_line_908);
        int PROBE_START_LINE_909 = 909;
		Boolean v_status_2230_line_909 = status;
		boolean bean_deserializer_factory_1_expr154_line_909 = v_status_2230_line_909.booleanValue();
		int PROBE_END_LINE_909 = 909;
		return bean_deserializer_factory_1_expr154_line_909;
    }

    /**
     * @since 2.8.11
     */
    protected void _validateSubType(DeserializationContext ctxt, JavaType type,
            BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_919 = 919;
		com.fasterxml.jackson.databind.jsontype.impl.SubTypeValidator bean_deserializer_factory_1_expr156_line_919 = SubTypeValidator
				.instance();
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2232_line_919 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_2233_line_919 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2234_line_919 = beanDesc;
		int PROBE_END_LINE_919 = 919;
		bean_deserializer_factory_1_expr156_line_919.validateSubType(p_ctxt_2232_line_919, p_type_2233_line_919, p_bean_desc_2234_line_919);
    }
}
