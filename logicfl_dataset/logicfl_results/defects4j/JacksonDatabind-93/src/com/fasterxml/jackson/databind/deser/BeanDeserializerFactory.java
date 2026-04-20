package com.fasterxml.jackson.databind.deser;

import java.util.*;

import com.fasterxml.jackson.annotation.*;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.cfg.ConfigOverride;
import com.fasterxml.jackson.databind.deser.impl.*;
import com.fasterxml.jackson.databind.deser.std.ThrowableDeserializer;
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
import java.util.ArrayList;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.MapperFeature;
import java.util.List;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import java.util.Map;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
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

    private final static Class<?>[] NO_VIEWS = new Class<?>[0];

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
        if (getClass() != BeanDeserializerFactory.class) {
            throw new IllegalStateException("Subtype of BeanDeserializerFactory ("+getClass().getName()
                    +") has not properly overridden method 'withAdditionalDeserializers': can not instantiate subtype with "
                    +"additional deserializer definitions");
        }
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
        int PROBE_START_LINE_101 = 101;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1886_line_101 = ctxt;
		DeserializationConfig bean_deserializer_factory_1_expr8_line_101 = p_ctxt_1886_line_101.getConfig();
		int PROBE_END_LINE_101 = 101;
		final DeserializationConfig config = bean_deserializer_factory_1_expr8_line_101;
        int PROBE_START_LINE_103 = 103;
		com.fasterxml.jackson.databind.JavaType p_type_1887_line_103 = type;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_1889_line_103 = config;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1888_line_103 = beanDesc;
		JsonDeserializer<Object> bean_deserializer_factory_1_expr9_line_103 = _findCustomBeanDeserializer(
				p_type_1887_line_103, v_config_1889_line_103, p_bean_desc_1888_line_103);
		int PROBE_END_LINE_103 = 103;
		// We may also have custom overrides:
        JsonDeserializer<Object> custom = bean_deserializer_factory_1_expr9_line_103;
        int PROBE_START_LINE_104 = 106;
		JsonDeserializer<Object> v_custom_1890_line_104 = custom;
		boolean bean_deserializer_factory_1_expr10_line_104 = v_custom_1890_line_104 != null;
		int PROBE_END_LINE_104 = 106;
		if (bean_deserializer_factory_1_expr10_line_104) {
            return custom;
        }
        int PROBE_START_LINE_111 = 113;
		com.fasterxml.jackson.databind.JavaType p_type_1887_line_111 = type;
		boolean bean_deserializer_factory_1_expr11_line_111 = p_type_1887_line_111.isThrowable();
		int PROBE_END_LINE_111 = 113;
		/* One more thing to check: do we have an exception type
         * (Throwable or its sub-classes)? If so, need slightly
         * different handling.
         */
        if (bean_deserializer_factory_1_expr11_line_111) {
            return buildThrowableDeserializer(ctxt, type, beanDesc);
        }
        int PROBE_START_LINE_119 = 129;
		com.fasterxml.jackson.databind.JavaType p_type_1887_line_119 = type;
		boolean bean_deserializer_factory_1_expr13_line_119 = p_type_1887_line_119.isAbstract();
		boolean bean_deserializer_factory_1_expr14_line_119 = true;
		boolean bean_deserializer_factory_1_expr16_line_119 = true;
		if (bean_deserializer_factory_1_expr13_line_119) {
			com.fasterxml.jackson.databind.JavaType p_type_1887_line_119_v1 = type;
			boolean bean_deserializer_factory_1_expr15_line_119 = p_type_1887_line_119_v1.isPrimitive();
			bean_deserializer_factory_1_expr14_line_119 = !bean_deserializer_factory_1_expr15_line_119;
			if (bean_deserializer_factory_1_expr14_line_119) {
				com.fasterxml.jackson.databind.JavaType p_type_1887_line_119_v2 = type;
				boolean bean_deserializer_factory_1_expr17_line_119 = p_type_1887_line_119_v2.isEnumType();
				bean_deserializer_factory_1_expr16_line_119 = !bean_deserializer_factory_1_expr17_line_119;
			}
		}
		boolean bean_deserializer_factory_1_expr12_line_119 = bean_deserializer_factory_1_expr13_line_119
				&& bean_deserializer_factory_1_expr14_line_119 && bean_deserializer_factory_1_expr16_line_119;
		int PROBE_END_LINE_119 = 129;
		/* Or, for abstract types, may have alternate means for resolution
         * (defaulting, materialization)
         */
        // 29-Nov-2015, tatu: Also, filter out calls to primitive types, they are
        //    not something we could materialize anything for
        if (bean_deserializer_factory_1_expr12_line_119) {
            int PROBE_START_LINE_121 = 121;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1886_line_121 = ctxt;
			com.fasterxml.jackson.databind.JavaType p_type_1887_line_121 = type;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1888_line_121 = beanDesc;
			JavaType bean_deserializer_factory_1_expr18_line_121 = materializeAbstractType(p_ctxt_1886_line_121,
					p_type_1887_line_121, p_bean_desc_1888_line_121);
			int PROBE_END_LINE_121 = 121;
			// Let's make it possible to materialize abstract types.
            JavaType concreteType = bean_deserializer_factory_1_expr18_line_121;
            int PROBE_START_LINE_122 = 128;
			com.fasterxml.jackson.databind.JavaType v_concrete_type_1891_line_122 = concreteType;
			boolean bean_deserializer_factory_1_expr19_line_122 = v_concrete_type_1891_line_122 != null;
			int PROBE_END_LINE_122 = 128;
			if (bean_deserializer_factory_1_expr19_line_122) {
                /* important: introspect actual implementation (abstract class or
                 * interface doesn't have constructors, for one)
                 */
                beanDesc = config.introspect(concreteType);
                return buildBeanDeserializer(ctxt, concreteType, beanDesc);
            }
        }
        int PROBE_START_LINE_131 = 132;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1886_line_132 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1887_line_132 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1888_line_132 = beanDesc;
		JsonDeserializer<?> bean_deserializer_factory_1_expr21_line_132 = findStdDeserializer(p_ctxt_1886_line_132,
				p_type_1887_line_132, p_bean_desc_1888_line_132);
		int PROBE_END_LINE_131 = 132;
		// Otherwise, may want to check handlers for standard types, from superclass:
        @SuppressWarnings("unchecked")
        JsonDeserializer<Object> deser = (JsonDeserializer<Object>) bean_deserializer_factory_1_expr21_line_132;
        int PROBE_START_LINE_133 = 135;
		JsonDeserializer<Object> v_deser_1892_line_133 = deser;
		boolean bean_deserializer_factory_1_expr22_line_133 = v_deser_1892_line_133 != null;
		int PROBE_END_LINE_133 = 135;
		if (bean_deserializer_factory_1_expr22_line_133) {
            return deser;
        }

        int PROBE_START_LINE_138 = 140;
		com.fasterxml.jackson.databind.JavaType p_type_1887_line_138 = type;
		Class<?> bean_deserializer_factory_1_expr25_line_138 = p_type_1887_line_138.getRawClass();
		boolean bean_deserializer_factory_1_expr24_line_138 = isPotentialBeanType(
				bean_deserializer_factory_1_expr25_line_138);
		boolean bean_deserializer_factory_1_expr23_line_138 = !bean_deserializer_factory_1_expr24_line_138;
		int PROBE_END_LINE_138 = 140;
		// Otherwise: could the class be a Bean class? If not, bail out
        if (bean_deserializer_factory_1_expr23_line_138) {
            return null;
        }
        int PROBE_START_LINE_142 = 142;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1886_line_142 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1887_line_142 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1888_line_142 = beanDesc;
		int PROBE_END_LINE_142 = 142;
		// For checks like [databind#1599]
        _validateSubType(p_ctxt_1886_line_142, p_type_1887_line_142, p_bean_desc_1888_line_142);
        int PROBE_START_LINE_144 = 144;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1886_line_144 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1887_line_144 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1888_line_144 = beanDesc;
		JsonDeserializer<Object> bean_deserializer_factory_1_expr27_line_144 = buildBeanDeserializer(
				p_ctxt_1886_line_144, p_type_1887_line_144, p_bean_desc_1888_line_144);
		int PROBE_END_LINE_144 = 144;
		// Use generic bean introspection to build deserializer
        return bean_deserializer_factory_1_expr27_line_144;
    }

    @Override
    public JsonDeserializer<Object> createBuilderBasedDeserializer(
    		DeserializationContext ctxt, JavaType valueType, BeanDescription beanDesc,
    		Class<?> builderClass)
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
        int PROBE_START_LINE_169 = 169;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1897_line_169 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1898_line_169 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1899_line_169 = beanDesc;
		JsonDeserializer<?> bean_deserializer_factory_1_expr28_line_169 = findDefaultDeserializer(p_ctxt_1897_line_169,
				p_type_1898_line_169, p_bean_desc_1899_line_169);
		int PROBE_END_LINE_169 = 169;
		// note: we do NOT check for custom deserializers here, caller has already
        // done that
        JsonDeserializer<?> deser = bean_deserializer_factory_1_expr28_line_169;
        int PROBE_START_LINE_171 = 177;
		JsonDeserializer<?> v_deser_1900_line_171 = deser;
		boolean bean_deserializer_factory_1_expr29_line_171 = v_deser_1900_line_171 != null;
		int PROBE_END_LINE_171 = 177;
		// Also: better ensure these are post-processable?
        if (bean_deserializer_factory_1_expr29_line_171) {
            if (_factoryConfig.hasDeserializerModifiers()) {
                for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                    deser = mod.modifyDeserializer(ctxt.getConfig(), beanDesc, deser);
                }
            }
        }
        int PROBE_START_LINE_178 = 178;
		JsonDeserializer<?> v_deser_1900_line_178 = deser;
		int PROBE_END_LINE_178 = 178;
		return v_deser_1900_line_178;
    }
    
    protected JavaType materializeAbstractType(DeserializationContext ctxt,
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_186 = 191;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1375_line_186 = _factoryConfig;
		Iterable<com.fasterxml.jackson.databind.AbstractTypeResolver> bean_deserializer_factory_1_expr30_line_186 = f__factory_config_1375_line_186
				.abstractTypeResolvers();
		int PROBE_END_LINE_186 = 191;
		// May have multiple resolvers, call in precedence order until one returns non-null
        for (AbstractTypeResolver r : bean_deserializer_factory_1_expr30_line_186) {
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
            int PROBE_START_LINE_222 = 222;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1905_line_222 = ctxt;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1907_line_222 = beanDesc;
			com.fasterxml.jackson.databind.deser.ValueInstantiator bean_deserializer_factory_1_expr32_line_222 = findValueInstantiator(
					p_ctxt_1905_line_222, p_bean_desc_1907_line_222);
			int PROBE_END_LINE_222 = 222;
			valueInstantiator = bean_deserializer_factory_1_expr32_line_222;
        } catch (NoClassDefFoundError error) {
            return new ErrorThrowingDeserializer(error);
        }
        int PROBE_START_LINE_226 = 226;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1905_line_226 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1907_line_226 = beanDesc;
		BeanDeserializerBuilder bean_deserializer_factory_1_expr33_line_226 = constructBeanDeserializerBuilder(
				p_ctxt_1905_line_226, p_bean_desc_1907_line_226);
		int PROBE_END_LINE_226 = 226;
		BeanDeserializerBuilder builder = bean_deserializer_factory_1_expr33_line_226;
        int PROBE_START_LINE_227 = 227;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1909_line_227 = builder;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_value_instantiator_1908_line_227 = valueInstantiator;
		int PROBE_END_LINE_227 = 227;
		v_builder_1909_line_227.setValueInstantiator(v_value_instantiator_1908_line_227);
         int PROBE_START_LINE_229 = 229;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1905_line_229 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1907_line_229 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1909_line_229 = builder;
		int PROBE_END_LINE_229 = 229;
		// And then setters for deserializing from JSON Object
        addBeanProps(p_ctxt_1905_line_229, p_bean_desc_1907_line_229, v_builder_1909_line_229);
        int PROBE_START_LINE_230 = 230;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1905_line_230 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1907_line_230 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1909_line_230 = builder;
		int PROBE_END_LINE_230 = 230;
		addObjectIdReader(p_ctxt_1905_line_230, p_bean_desc_1907_line_230, v_builder_1909_line_230);

        int PROBE_START_LINE_233 = 233;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1905_line_233 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1907_line_233 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1909_line_233 = builder;
		int PROBE_END_LINE_233 = 233;
		// managed/back reference fields/setters need special handling... first part
        addReferenceProperties(p_ctxt_1905_line_233, p_bean_desc_1907_line_233, v_builder_1909_line_233);
        int PROBE_START_LINE_234 = 234;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1905_line_234 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1907_line_234 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1909_line_234 = builder;
		int PROBE_END_LINE_234 = 234;
		addInjectables(p_ctxt_1905_line_234, p_bean_desc_1907_line_234, v_builder_1909_line_234);
        
        int PROBE_START_LINE_236 = 236;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1905_line_236 = ctxt;
		DeserializationConfig bean_deserializer_factory_1_expr39_line_236 = p_ctxt_1905_line_236.getConfig();
		int PROBE_END_LINE_236 = 236;
		final DeserializationConfig config = bean_deserializer_factory_1_expr39_line_236;
        int PROBE_START_LINE_237 = 241;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1375_line_237 = _factoryConfig;
		boolean bean_deserializer_factory_1_expr40_line_237 = f__factory_config_1375_line_237
				.hasDeserializerModifiers();
		int PROBE_END_LINE_237 = 241;
		if (bean_deserializer_factory_1_expr40_line_237) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                builder = mod.updateBuilder(config, beanDesc, builder);
            }
        }
        JsonDeserializer<?> deserializer = null;

        int PROBE_START_LINE_244 = 248;
		com.fasterxml.jackson.databind.JavaType p_type_1906_line_244 = type;
		boolean bean_deserializer_factory_1_expr42_line_244 = p_type_1906_line_244.isAbstract();
		boolean bean_deserializer_factory_1_expr43_line_244 = true;
		if (bean_deserializer_factory_1_expr42_line_244) {
			com.fasterxml.jackson.databind.deser.ValueInstantiator v_value_instantiator_1908_line_244 = valueInstantiator;
			boolean bean_deserializer_factory_1_expr44_line_244 = v_value_instantiator_1908_line_244.canInstantiate();
			bean_deserializer_factory_1_expr43_line_244 = !bean_deserializer_factory_1_expr44_line_244;
		}
		boolean bean_deserializer_factory_1_expr41_line_244 = bean_deserializer_factory_1_expr42_line_244
				&& bean_deserializer_factory_1_expr43_line_244;
		int PROBE_END_LINE_244 = 248;
		if (bean_deserializer_factory_1_expr41_line_244) {
            deserializer = builder.buildAbstract();
        } else {
            int PROBE_START_LINE_247 = 247;
			com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1909_line_247 = builder;
			JsonDeserializer<?> bean_deserializer_factory_1_expr46_line_247 = v_builder_1909_line_247.build();
			int PROBE_END_LINE_247 = 247;
			deserializer = bean_deserializer_factory_1_expr46_line_247;
        }

        int PROBE_START_LINE_251 = 255;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1375_line_251 = _factoryConfig;
		boolean bean_deserializer_factory_1_expr47_line_251 = f__factory_config_1375_line_251
				.hasDeserializerModifiers();
		int PROBE_END_LINE_251 = 255;
		// [JACKSON-440]: may have modifier(s) that wants to modify or replace serializer we just built:
        if (bean_deserializer_factory_1_expr47_line_251) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deserializer = mod.modifyDeserializer(config, beanDesc, deserializer);
            }
        }
        int PROBE_START_LINE_256 = 256;
		JsonDeserializer<?> v_deserializer_1911_line_256 = deserializer;
		int PROBE_END_LINE_256 = 256;
		return (JsonDeserializer<Object>) v_deserializer_1911_line_256;
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
        ValueInstantiator valueInstantiator = findValueInstantiator(ctxt, builderDesc);
        final DeserializationConfig config = ctxt.getConfig();
        BeanDeserializerBuilder builder = constructBeanDeserializerBuilder(ctxt, builderDesc);
        builder.setValueInstantiator(valueInstantiator);
         // And then "with methods" for deserializing from JSON Object
        addBeanProps(ctxt, builderDesc, builder);
        addObjectIdReader(ctxt, builderDesc, builder);
        
        // managed/back reference fields/setters need special handling... first part
        addReferenceProperties(ctxt, builderDesc, builder);
        addInjectables(ctxt, builderDesc, builder);

        JsonPOJOBuilder.Value builderConfig = builderDesc.findPOJOBuilderConfig();
        final String buildMethodName = (builderConfig == null) ?
                "build" : builderConfig.buildMethodName;
        
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
        int PROBE_START_LINE_318 = 318;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1916_line_318 = beanDesc;
		ObjectIdInfo bean_deserializer_factory_1_expr49_line_318 = p_bean_desc_1916_line_318.getObjectIdInfo();
		int PROBE_END_LINE_318 = 318;
		ObjectIdInfo objectIdInfo = bean_deserializer_factory_1_expr49_line_318;
        int PROBE_START_LINE_319 = 321;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1918_line_319 = objectIdInfo;
		boolean bean_deserializer_factory_1_expr50_line_319 = v_object_id_info_1918_line_319 == null;
		int PROBE_END_LINE_319 = 321;
		if (bean_deserializer_factory_1_expr50_line_319) {
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
                        +beanDesc.getBeanClass().getName()+": can not find property with name '"+propName+"'");
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
        /* To resolve [JACKSON-95], need to add "initCause" as setter
         * for exceptions (sub-classes of Throwable).
         */
        AnnotatedMethod am = beanDesc.findMethod("initCause", INIT_CAUSE_PARAMS);
        if (am != null) { // should never be null
            SimpleBeanPropertyDefinition propDef = SimpleBeanPropertyDefinition.construct(ctxt.getConfig(), am,
                    new PropertyName("cause"));
            SettableBeanProperty prop = constructSettableProperty(ctxt, beanDesc, propDef,
                    am.getParameterType(0));
            if (prop != null) {
                /* 21-Aug-2011, tatus: We may actually have found 'cause' property
                 *   to set... but let's replace it just in case,
                 *   otherwise can end up with odd errors.
                 */
                builder.addOrReplaceProperty(prop, true);
            }
        }

        // And also need to ignore "localizedMessage"
        builder.addIgnorable("localizedMessage");
        // Java 7 also added "getSuppressed", skip if we have such data:
        builder.addIgnorable("suppressed");
        /* As well as "message": it will be passed via constructor,
         * as there's no 'setMessage()' method
        */
        builder.addIgnorable("message");

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
        int PROBE_START_LINE_430 = 430;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1923_line_430 = beanDesc;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1922_line_430 = ctxt;
				com.fasterxml.jackson.databind.DeserializationConfig bean_deserializer_factory_1_expr52_line_430 = p_ctxt_1922_line_430
						.getConfig();
				int PROBE_END_LINE_430 = 430;
		return new BeanDeserializerBuilder(p_bean_desc_1923_line_430, bean_deserializer_factory_1_expr52_line_430);
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
        int PROBE_START_LINE_444 = 444;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1925_line_444 = beanDesc;
		com.fasterxml.jackson.databind.JavaType bean_deserializer_factory_1_expr55_line_444 = p_bean_desc_1925_line_444
				.getType();
		boolean bean_deserializer_factory_1_expr54_line_444 = bean_deserializer_factory_1_expr55_line_444.isAbstract();
		boolean bean_deserializer_factory_1_expr53_line_444 = !bean_deserializer_factory_1_expr54_line_444;
		int PROBE_END_LINE_444 = 444;
		final boolean isConcrete = bean_deserializer_factory_1_expr53_line_444;
        int PROBE_START_LINE_445 = 447;
		boolean v_is_concrete_1927_line_445 = isConcrete;
		SettableBeanProperty[] bean_deserializer_factory_1_expr56_line_445 = v_is_concrete_1927_line_445
				? builder.getValueInstantiator().getFromObjectArguments(ctxt.getConfig())
				: null;
		int PROBE_END_LINE_445 = 447;
		final SettableBeanProperty[] creatorProps = bean_deserializer_factory_1_expr56_line_445;
        int PROBE_START_LINE_448 = 448;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] v_creator_props_1928_line_448 = creatorProps;
		boolean bean_deserializer_factory_1_expr59_line_448 = v_creator_props_1928_line_448 != null;
		boolean bean_deserializer_factory_1_expr58_line_448 = (bean_deserializer_factory_1_expr59_line_448);
		int PROBE_END_LINE_448 = 448;
		final boolean hasCreatorProps = bean_deserializer_factory_1_expr58_line_448;
        
        int PROBE_START_LINE_454 = 456;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1924_line_454 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig bean_deserializer_factory_1_expr63_line_454 = p_ctxt_1924_line_454
				.getConfig();
		JsonIgnoreProperties.Value bean_deserializer_factory_1_expr60_line_454 = bean_deserializer_factory_1_expr63_line_454
				.getDefaultPropertyIgnorals(beanDesc.getBeanClass(), beanDesc.getClassInfo());
		int PROBE_END_LINE_454 = 456;
		// 01-May-2016, tatu: Which base type to use here gets tricky, since
        //   it may often make most sense to use general type for overrides,
        //   but what we have here may be more specific impl type. But for now
        //   just use it as is.
        JsonIgnoreProperties.Value ignorals = bean_deserializer_factory_1_expr60_line_454;
        Set<String> ignored;

        int PROBE_START_LINE_459 = 469;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value v_ignorals_1930_line_459 = ignorals;
		boolean bean_deserializer_factory_1_expr64_line_459 = v_ignorals_1930_line_459 != null;
		int PROBE_END_LINE_459 = 469;
		if (bean_deserializer_factory_1_expr64_line_459) {
            boolean ignoreAny = ignorals.getIgnoreUnknown();
            builder.setIgnoreUnknownProperties(ignoreAny);
            // Or explicit/implicit definitions?
            ignored = ignorals.findIgnoredForDeserialization();
            for (String propName : ignored) {
                builder.addIgnorable(propName);
            }
        } else {
            int PROBE_START_LINE_468 = 468;
			Set<String> bean_deserializer_factory_1_expr66_line_468 = Collections.emptySet();
			int PROBE_END_LINE_468 = 468;
			ignored = bean_deserializer_factory_1_expr66_line_468;
        }

        int PROBE_START_LINE_472 = 472;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1925_line_472 = beanDesc;
		AnnotatedMethod bean_deserializer_factory_1_expr67_line_472 = p_bean_desc_1925_line_472.findAnySetter();
		int PROBE_END_LINE_472 = 472;
		// Also, do we have a fallback "any" setter?
        AnnotatedMethod anySetterMethod = bean_deserializer_factory_1_expr67_line_472;
        AnnotatedMember anySetterField = null;
        int PROBE_START_LINE_474 = 482;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_any_setter_method_1932_line_474 = anySetterMethod;
		boolean bean_deserializer_factory_1_expr68_line_474 = v_any_setter_method_1932_line_474 != null;
		int PROBE_END_LINE_474 = 482;
		if (bean_deserializer_factory_1_expr68_line_474) {
            builder.setAnySetter(constructAnySetter(ctxt, beanDesc, anySetterMethod));
        }
        else {
        	int PROBE_START_LINE_478 = 478;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1925_line_478 = beanDesc;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember bean_deserializer_factory_1_expr70_line_478 = p_bean_desc_1925_line_478
					.findAnySetterField();
			int PROBE_END_LINE_478 = 478;
			anySetterField = bean_deserializer_factory_1_expr70_line_478;
        	int PROBE_START_LINE_479 = 481;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_any_setter_field_1933_line_479 = anySetterField;
			boolean bean_deserializer_factory_1_expr71_line_479 = v_any_setter_field_1933_line_479 != null;
			int PROBE_END_LINE_479 = 481;
			if(bean_deserializer_factory_1_expr71_line_479) {
        		builder.setAnySetter(constructAnySetter(ctxt, beanDesc, anySetterField));
        	}
        }
        int PROBE_START_LINE_485 = 494;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_any_setter_method_1932_line_485 = anySetterMethod;
		boolean bean_deserializer_factory_1_expr73_line_485 = v_any_setter_method_1932_line_485 == null;
		boolean bean_deserializer_factory_1_expr74_line_485 = true;
		if (bean_deserializer_factory_1_expr73_line_485) {
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_any_setter_field_1933_line_485 = anySetterField;
			bean_deserializer_factory_1_expr74_line_485 = v_any_setter_field_1933_line_485 == null;
		}
		boolean bean_deserializer_factory_1_expr72_line_485 = bean_deserializer_factory_1_expr73_line_485
				&& bean_deserializer_factory_1_expr74_line_485;
		int PROBE_END_LINE_485 = 494;
		// NOTE: we do NOT add @JsonIgnore'd properties into blocked ones if there's any-setter
        // Implicit ones via @JsonIgnore and equivalent?
        if (bean_deserializer_factory_1_expr72_line_485) {
            int PROBE_START_LINE_486 = 486;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1925_line_486 = beanDesc;
			Collection<String> bean_deserializer_factory_1_expr75_line_486 = p_bean_desc_1925_line_486
					.getIgnoredPropertyNames();
			int PROBE_END_LINE_486 = 486;
			Collection<String> ignored2 = bean_deserializer_factory_1_expr75_line_486;
            int PROBE_START_LINE_487 = 493;
			Collection<String> v_ignored_2_1934_line_487 = ignored2;
			boolean bean_deserializer_factory_1_expr76_line_487 = v_ignored_2_1934_line_487 != null;
			int PROBE_END_LINE_487 = 493;
			if (bean_deserializer_factory_1_expr76_line_487) {
                int PROBE_START_LINE_488 = 492;
				Collection<String> v_ignored_2_1934_line_488 = ignored2;
				int PROBE_END_LINE_488 = 492;
				for (String propName : v_ignored_2_1934_line_488) {
                    // allow ignoral of similarly named JSON property, but do not force;
                    // latter means NOT adding this to 'ignored':
                    builder.addIgnorable(propName);
                }
            }
        }
        int PROBE_START_LINE_495 = 496;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1924_line_495 = ctxt;
		com.fasterxml.jackson.databind.MapperFeature q_use_getters_as_setters_55_line_495 = MapperFeature.USE_GETTERS_AS_SETTERS;
		boolean bean_deserializer_factory_1_expr78_line_495 = p_ctxt_1924_line_495
				.isEnabled(q_use_getters_as_setters_55_line_495);
		boolean bean_deserializer_factory_1_expr77_line_495 = bean_deserializer_factory_1_expr78_line_495
				&& ctxt.isEnabled(MapperFeature.AUTO_DETECT_GETTERS);
		int PROBE_END_LINE_495 = 496;
		final boolean useGettersAsSetters = bean_deserializer_factory_1_expr77_line_495;

        int PROBE_START_LINE_499 = 500;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1924_line_499 = ctxt;
		List<BeanPropertyDefinition> bean_deserializer_factory_1_expr79_line_499 = filterBeanProps(p_ctxt_1924_line_499,
				beanDesc, builder, beanDesc.findProperties(), ignored);
		int PROBE_END_LINE_499 = 500;
		// Ok: let's then filter out property definitions
        List<BeanPropertyDefinition> propDefs = bean_deserializer_factory_1_expr79_line_499;

        int PROBE_START_LINE_503 = 507;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1375_line_503 = _factoryConfig;
		boolean bean_deserializer_factory_1_expr81_line_503 = f__factory_config_1375_line_503
				.hasDeserializerModifiers();
		int PROBE_END_LINE_503 = 507;
		// After which we can let custom code change the set
        if (bean_deserializer_factory_1_expr81_line_503) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                propDefs = mod.updateProperties(ctxt.getConfig(), beanDesc, propDefs);
            }
        }
        
        int PROBE_START_LINE_510 = 582;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> v_prop_defs_1937_line_510 = propDefs;
		int PROBE_END_LINE_510 = 582;
		// At which point we still have all kinds of properties; not all with mutators:
        for (BeanPropertyDefinition propDef : v_prop_defs_1937_line_510) {
            SettableBeanProperty prop = null;
            int PROBE_START_LINE_516 = 533;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1938_line_516 = propDef;
			boolean bean_deserializer_factory_1_expr82_line_516 = v_prop_def_1938_line_516.hasSetter();
			int PROBE_END_LINE_516 = 533;
			/* 18-Oct-2013, tatu: Although constructor parameters have highest precedence,
             *   we need to do linkage (as per [databind#318]), and so need to start with
             *   other types, and only then create constructor parameter, if any.
             */
            if (bean_deserializer_factory_1_expr82_line_516) {
                JavaType propertyType = propDef.getSetter().getParameterType(0);
                prop = constructSettableProperty(ctxt, beanDesc, propDef, propertyType);
            } else {
				int PROBE_START_LINE_519 = 533;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1938_line_519 = propDef;
				boolean bean_deserializer_factory_1_expr83_line_519 = v_prop_def_1938_line_519.hasField();
				int PROBE_END_LINE_519 = 533;
				if (bean_deserializer_factory_1_expr83_line_519) {
					int PROBE_START_LINE_520 = 520;
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1938_line_520 = propDef;
					com.fasterxml.jackson.databind.introspect.AnnotatedField bean_deserializer_factory_1_expr85_line_520 = v_prop_def_1938_line_520
							.getField();
					JavaType bean_deserializer_factory_1_expr84_line_520 = bean_deserializer_factory_1_expr85_line_520
							.getType();
					int PROBE_END_LINE_520 = 520;
					JavaType propertyType = bean_deserializer_factory_1_expr84_line_520;
					int PROBE_START_LINE_521 = 521;
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1924_line_521 = ctxt;
					com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1925_line_521 = beanDesc;
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1938_line_521 = propDef;
					com.fasterxml.jackson.databind.JavaType v_property_type_1940_line_521 = propertyType;
					com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_factory_1_expr87_line_521 = constructSettableProperty(
							p_ctxt_1924_line_521, p_bean_desc_1925_line_521, v_prop_def_1938_line_521,
							v_property_type_1940_line_521);
					int PROBE_END_LINE_521 = 521;
					prop = bean_deserializer_factory_1_expr87_line_521;
				} else {
					int PROBE_START_LINE_522 = 533;
					boolean v_use_getters_as_setters_1936_line_522 = useGettersAsSetters;
					boolean bean_deserializer_factory_1_expr89_line_522 = true;
					if (v_use_getters_as_setters_1936_line_522) {
						com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1938_line_522 = propDef;
						bean_deserializer_factory_1_expr89_line_522 = v_prop_def_1938_line_522.hasGetter();
					}
					boolean bean_deserializer_factory_1_expr88_line_522 = v_use_getters_as_setters_1936_line_522
							&& bean_deserializer_factory_1_expr89_line_522;
					int PROBE_END_LINE_522 = 533;
					if (bean_deserializer_factory_1_expr88_line_522) {
						AnnotatedMethod getter = propDef.getGetter();
						Class<?> rawPropertyType = getter.getRawType();
						if (Collection.class.isAssignableFrom(rawPropertyType)
								|| Map.class.isAssignableFrom(rawPropertyType)) {
							prop = constructSetterlessProperty(ctxt, beanDesc, propDef);
						}
					}
				}
			}
            int PROBE_START_LINE_536 = 568;
			boolean v_has_creator_props_1929_line_536 = hasCreatorProps;
			boolean bean_deserializer_factory_1_expr91_line_536 = true;
			if (v_has_creator_props_1929_line_536) {
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1938_line_536 = propDef;
				bean_deserializer_factory_1_expr91_line_536 = v_prop_def_1938_line_536.hasConstructorParameter();
			}
			boolean bean_deserializer_factory_1_expr90_line_536 = v_has_creator_props_1929_line_536
					&& bean_deserializer_factory_1_expr91_line_536;
			int PROBE_END_LINE_536 = 568;
			// 25-Sep-2014, tatu: No point in finding constructor parameters for abstract types
            //   (since they are never used anyway)
            if (bean_deserializer_factory_1_expr90_line_536) {
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
                prop = cprop;
                builder.addCreatorProperty(cprop);
                continue;
            }

            int PROBE_START_LINE_570 = 581;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1939_line_570 = prop;
			boolean bean_deserializer_factory_1_expr92_line_570 = v_prop_1939_line_570 != null;
			int PROBE_END_LINE_570 = 581;
			if (bean_deserializer_factory_1_expr92_line_570) {
                int PROBE_START_LINE_571 = 571;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1938_line_571 = propDef;
				Class<?>[] bean_deserializer_factory_1_expr93_line_571 = v_prop_def_1938_line_571.findViews();
				int PROBE_END_LINE_571 = 571;
				Class<?>[] views = bean_deserializer_factory_1_expr93_line_571;
                int PROBE_START_LINE_572 = 577;
				Class<?>[] v_views_1941_line_572 = views;
				boolean bean_deserializer_factory_1_expr94_line_572 = v_views_1941_line_572 == null;
				int PROBE_END_LINE_572 = 577;
				if (bean_deserializer_factory_1_expr94_line_572) {
                    int PROBE_START_LINE_574 = 576;
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1924_line_574 = ctxt;
					com.fasterxml.jackson.databind.MapperFeature q_default_view_inclusion_56_line_574 = MapperFeature.DEFAULT_VIEW_INCLUSION;
					boolean bean_deserializer_factory_1_expr96_line_574 = p_ctxt_1924_line_574
							.isEnabled(q_default_view_inclusion_56_line_574);
					boolean bean_deserializer_factory_1_expr95_line_574 = !bean_deserializer_factory_1_expr96_line_574;
					int PROBE_END_LINE_574 = 576;
					// one more twist: if default inclusion disabled, need to force empty set of views
                    if (bean_deserializer_factory_1_expr95_line_574) {
                        views = NO_VIEWS;
                    }
                }
                int PROBE_START_LINE_579 = 579;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1939_line_579 = prop;
				Class<?>[] v_views_1941_line_579 = views;
				int PROBE_END_LINE_579 = 579;
				// one more thing before adding to builder: copy any metadata
                v_prop_1939_line_579.setViews(v_views_1941_line_579);
                int PROBE_START_LINE_580 = 580;
				com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1926_line_580 = builder;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1939_line_580 = prop;
				int PROBE_END_LINE_580 = 580;
				p_builder_1926_line_580.addProperty(v_prop_1939_line_580);
            }
        }
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
        int PROBE_START_LINE_601 = 623;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> p_prop_defs_in_1945_line_601 = propDefsIn;
		int PROBE_END_LINE_601 = 623;
		// These are all valid setters, but we do need to introspect bit more
        for (BeanPropertyDefinition property : p_prop_defs_in_1945_line_601) {
            int PROBE_START_LINE_602 = 602;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1949_line_602 = property;
			String bean_deserializer_factory_1_expr102_line_602 = v_property_1949_line_602.getName();
			int PROBE_END_LINE_602 = 602;
			String name = bean_deserializer_factory_1_expr102_line_602;
            int PROBE_START_LINE_603 = 605;
			Set<String> p_ignored_1946_line_603 = ignored;
			String v_name_1950_line_603 = name;
			boolean bean_deserializer_factory_1_expr103_line_603 = p_ignored_1946_line_603
					.contains(v_name_1950_line_603);
			int PROBE_END_LINE_603 = 605;
			if (bean_deserializer_factory_1_expr103_line_603) { // explicit ignoral using @JsonIgnoreProperties needs to block entries
                continue;
            }
            int PROBE_START_LINE_606 = 621;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1949_line_606 = property;
			boolean bean_deserializer_factory_1_expr105_line_606 = v_property_1949_line_606.hasConstructorParameter();
			boolean bean_deserializer_factory_1_expr104_line_606 = !bean_deserializer_factory_1_expr105_line_606;
			int PROBE_END_LINE_606 = 621;
			if (bean_deserializer_factory_1_expr104_line_606) { // never skip constructor params
                Class<?> rawPropertyType = null;
                int PROBE_START_LINE_608 = 612;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1949_line_608 = property;
				boolean bean_deserializer_factory_1_expr106_line_608 = v_property_1949_line_608.hasSetter();
				int PROBE_END_LINE_608 = 612;
				if (bean_deserializer_factory_1_expr106_line_608) {
                    rawPropertyType = property.getSetter().getRawParameterType(0);
                } else {
					int PROBE_START_LINE_610 = 612;
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1949_line_610 = property;
					boolean bean_deserializer_factory_1_expr107_line_610 = v_property_1949_line_610.hasField();
					int PROBE_END_LINE_610 = 612;
					if (bean_deserializer_factory_1_expr107_line_610) {
						int PROBE_START_LINE_611 = 611;
						com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1949_line_611 = property;
						com.fasterxml.jackson.databind.introspect.AnnotatedField bean_deserializer_factory_1_expr110_line_611 = v_property_1949_line_611
								.getField();
						Class<?> bean_deserializer_factory_1_expr109_line_611 = bean_deserializer_factory_1_expr110_line_611
								.getRawType();
						int PROBE_END_LINE_611 = 611;
						rawPropertyType = bean_deserializer_factory_1_expr109_line_611;
					}
				}

                int PROBE_START_LINE_615 = 620;
				Class<?> v_raw_property_type_1951_line_615 = rawPropertyType;
				boolean bean_deserializer_factory_1_expr113_line_615 = v_raw_property_type_1951_line_615 != null;
				boolean bean_deserializer_factory_1_expr112_line_615 = (bean_deserializer_factory_1_expr113_line_615);
				boolean bean_deserializer_factory_1_expr111_line_615 = bean_deserializer_factory_1_expr112_line_615
						&& isIgnorableType(ctxt.getConfig(), beanDesc, rawPropertyType, ignoredTypes);
				int PROBE_END_LINE_615 = 620;
				// Some types are declared as ignorable as well
                if (bean_deserializer_factory_1_expr111_line_615) {
                    // important: make ignorable, to avoid errors if value is actually seen
                    builder.addIgnorable(name);
                    continue;
                }
            }
            int PROBE_START_LINE_622 = 622;
			ArrayList<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> v_result_1947_line_622 = result;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1949_line_622 = property;
			int PROBE_END_LINE_622 = 622;
			v_result_1947_line_622.add(v_property_1949_line_622);
        }
        int PROBE_START_LINE_624 = 624;
		ArrayList<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> v_result_1947_line_624 = result;
		int PROBE_END_LINE_624 = 624;
		return v_result_1947_line_624;
    }

    /**
     * Method that will find if bean has any managed- or back-reference properties,
     * and if so add them to bean, to be linked during resolution phase.
     */
    protected void addReferenceProperties(DeserializationContext ctxt,
            BeanDescription beanDesc, BeanDeserializerBuilder builder)
        throws JsonMappingException
    {
        int PROBE_START_LINE_636 = 636;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1953_line_636 = beanDesc;
		Map<String, AnnotatedMember> bean_deserializer_factory_1_expr115_line_636 = p_bean_desc_1953_line_636
				.findBackReferenceProperties();
		int PROBE_END_LINE_636 = 636;
		// and then back references, not necessarily found as regular properties
        Map<String,AnnotatedMember> refs = bean_deserializer_factory_1_expr115_line_636;
        int PROBE_START_LINE_637 = 659;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedMember> v_refs_1955_line_637 = refs;
		boolean bean_deserializer_factory_1_expr116_line_637 = v_refs_1955_line_637 != null;
		int PROBE_END_LINE_637 = 659;
		if (bean_deserializer_factory_1_expr116_line_637) {
            for (Map.Entry<String, AnnotatedMember> en : refs.entrySet()) {
                String name = en.getKey();
                AnnotatedMember m = en.getValue();
                JavaType type;
                if (m instanceof AnnotatedMethod) {
                    type = ((AnnotatedMethod) m).getParameterType(0);
                } else {
                    type = m.getType();
                    // 30-Mar-2017, tatu: Unfortunately it is not yet possible to make back-refs
                    //    work through constructors; but let's at least indicate the issue for now
                    if (m instanceof AnnotatedParameter) {
                        ctxt.reportBadTypeDefinition(beanDesc,
"Can not bind back references as Creator parameters: type %s (reference '%s', parameter index #%d)",
beanDesc.getBeanClass().getName(), name, ((AnnotatedParameter) m).getIndex());
                    }
                }
                SimpleBeanPropertyDefinition propDef = SimpleBeanPropertyDefinition.construct(
                        ctxt.getConfig(), m, PropertyName.construct(name));
                builder.addBackReferenceProperty(name, constructSettableProperty(ctxt,
                        beanDesc, propDef, type));
            }
        }
    }

    /**
     * Method called locate all members used for value injection (if any),
     * constructor {@link com.fasterxml.jackson.databind.deser.impl.ValueInjector} instances, and add them to builder.
     */
    protected void addInjectables(DeserializationContext ctxt,
            BeanDescription beanDesc, BeanDeserializerBuilder builder)
        throws JsonMappingException
    {
        int PROBE_START_LINE_670 = 670;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1957_line_670 = beanDesc;
		Map<Object, AnnotatedMember> bean_deserializer_factory_1_expr117_line_670 = p_bean_desc_1957_line_670
				.findInjectables();
		int PROBE_END_LINE_670 = 670;
		Map<Object, AnnotatedMember> raw = bean_deserializer_factory_1_expr117_line_670;
        int PROBE_START_LINE_671 = 678;
		Map<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> v_raw_1959_line_671 = raw;
		boolean bean_deserializer_factory_1_expr118_line_671 = v_raw_1959_line_671 != null;
		int PROBE_END_LINE_671 = 678;
		if (bean_deserializer_factory_1_expr118_line_671) {
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
        JavaType type = null;
        if (mutator instanceof AnnotatedMethod) {
            // we know it's a 2-arg method, second arg is the value
            type = ((AnnotatedMethod) mutator).getParameterType(1);
        } else if (mutator instanceof AnnotatedField) {
            // get the type from the content type of the map object
            type = ((AnnotatedField) mutator).getType().getContentType();
        }
        // First: various annotations on type itself, as well as type-overrides
        // on accessor need to be resolved
        type = resolveMemberAndTypeAnnotations(ctxt, mutator, type);
        BeanProperty.Std prop = new BeanProperty.Std(PropertyName.construct(mutator.getName()),
                type, null, beanDesc.getClassAnnotations(), mutator,
                PropertyMetadata.STD_OPTIONAL);
        // and then possible direct deserializer override on accessor
        JsonDeserializer<Object> deser = findDeserializerFromAnnotation(ctxt, mutator);
        if (deser == null) {
            deser = type.getValueHandler();
        }
        if (deser != null) {
            // As per [databind#462] need to ensure we contextualize deserializer before passing it on
            deser = (JsonDeserializer<Object>) ctxt.handlePrimaryContextualization(deser, prop, type);
        }
        TypeDeserializer typeDeser = type.getTypeHandler();
        return new SettableAnyProperty(prop, mutator, type, deser, typeDeser);
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
        int PROBE_START_LINE_735 = 735;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1965_line_735 = propDef;
		AnnotatedMember bean_deserializer_factory_1_expr119_line_735 = p_prop_def_1965_line_735
				.getNonConstructorMutator();
		int PROBE_END_LINE_735 = 735;
		// need to ensure method is callable (for non-public)
        AnnotatedMember mutator = bean_deserializer_factory_1_expr119_line_735;
        int PROBE_START_LINE_739 = 741;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_1967_line_739 = mutator;
		boolean bean_deserializer_factory_1_expr120_line_739 = v_mutator_1967_line_739 == null;
		int PROBE_END_LINE_739 = 741;
		// 08-Sep-2016, tatu: issues like [databind#1342] suggest something fishy
        //   going on; add sanity checks to try to pin down actual problem...
        //   Possibly passing creator parameter?
        if (bean_deserializer_factory_1_expr120_line_739) {
            ctxt.reportBadPropertyDefinition(beanDesc, propDef, "No non-constructor mutator available");
        }
        int PROBE_START_LINE_742 = 742;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1963_line_742 = ctxt;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_1967_line_742 = mutator;
		com.fasterxml.jackson.databind.JavaType p_prop_type0_1966_line_742 = propType0;
		JavaType bean_deserializer_factory_1_expr121_line_742 = resolveMemberAndTypeAnnotations(p_ctxt_1963_line_742,
				v_mutator_1967_line_742, p_prop_type0_1966_line_742);
		int PROBE_END_LINE_742 = 742;
		JavaType type = bean_deserializer_factory_1_expr121_line_742;
        int PROBE_START_LINE_744 = 744;
		com.fasterxml.jackson.databind.JavaType v_type_1968_line_744 = type;
		TypeDeserializer bean_deserializer_factory_1_expr122_line_744 = v_type_1968_line_744.getTypeHandler();
		int PROBE_END_LINE_744 = 744;
		// Does the Method specify the deserializer to use? If so, let's use it.
        TypeDeserializer typeDeser = bean_deserializer_factory_1_expr122_line_744;
        SettableBeanProperty prop = null;
        int PROBE_START_LINE_746 = 753;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_1967_line_746 = mutator;
		boolean bean_deserializer_factory_1_expr123_line_746 = v_mutator_1967_line_746 instanceof AnnotatedMethod;
		int PROBE_END_LINE_746 = 753;
		if (bean_deserializer_factory_1_expr123_line_746) {
            prop = new MethodProperty(propDef, type, typeDeser,
                    beanDesc.getClassAnnotations(), (AnnotatedMethod) mutator);
        } else {
            int PROBE_START_LINE_751 = 752;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1965_line_751 = propDef;
			com.fasterxml.jackson.databind.JavaType v_type_1968_line_751 = type;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_type_deser_1969_line_751 = typeDeser;
			int PROBE_END_LINE_751 = 752;
			// 08-Sep-2016, tatu: wonder if we should verify it is `AnnotatedField` to be safe?
            prop = new FieldProperty(p_prop_def_1965_line_751, v_type_1968_line_751, v_type_deser_1969_line_751,
                    beanDesc.getClassAnnotations(), (AnnotatedField) mutator);
        }
        int PROBE_START_LINE_754 = 754;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1963_line_754 = ctxt;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_1967_line_754 = mutator;
		JsonDeserializer<?> bean_deserializer_factory_1_expr128_line_754 = findDeserializerFromAnnotation(
				p_ctxt_1963_line_754, v_mutator_1967_line_754);
		int PROBE_END_LINE_754 = 754;
		JsonDeserializer<?> deser = bean_deserializer_factory_1_expr128_line_754;
        int PROBE_START_LINE_755 = 757;
		JsonDeserializer<?> v_deser_1971_line_755 = deser;
		boolean bean_deserializer_factory_1_expr129_line_755 = v_deser_1971_line_755 == null;
		int PROBE_END_LINE_755 = 757;
		if (bean_deserializer_factory_1_expr129_line_755) {
            int PROBE_START_LINE_756 = 756;
			com.fasterxml.jackson.databind.JavaType v_type_1968_line_756 = type;
			JsonDeserializer<?> bean_deserializer_factory_1_expr131_line_756 = v_type_1968_line_756.getValueHandler();
			int PROBE_END_LINE_756 = 756;
			deser = bean_deserializer_factory_1_expr131_line_756;
        }
        int PROBE_START_LINE_758 = 761;
		JsonDeserializer<?> v_deser_1971_line_758 = deser;
		boolean bean_deserializer_factory_1_expr132_line_758 = v_deser_1971_line_758 != null;
		int PROBE_END_LINE_758 = 761;
		if (bean_deserializer_factory_1_expr132_line_758) {
            deser = ctxt.handlePrimaryContextualization(deser, prop, type);
            prop = prop.withValueDeserializer(deser);
        }
        int PROBE_START_LINE_763 = 763;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1965_line_763 = propDef;
		AnnotationIntrospector.ReferenceProperty bean_deserializer_factory_1_expr133_line_763 = p_prop_def_1965_line_763
				.findReferenceType();
		int PROBE_END_LINE_763 = 763;
		// need to retain name of managed forward references:
        AnnotationIntrospector.ReferenceProperty ref = bean_deserializer_factory_1_expr133_line_763;
        int PROBE_START_LINE_764 = 766;
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_1972_line_764 = ref;
		boolean bean_deserializer_factory_1_expr135_line_764 = v_ref_1972_line_764 != null;
		boolean bean_deserializer_factory_1_expr136_line_764 = true;
		if (bean_deserializer_factory_1_expr135_line_764) {
			com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_1972_line_764_v1 = ref;
			bean_deserializer_factory_1_expr136_line_764 = v_ref_1972_line_764_v1.isManagedReference();
		}
		boolean bean_deserializer_factory_1_expr134_line_764 = bean_deserializer_factory_1_expr135_line_764
				&& bean_deserializer_factory_1_expr136_line_764;
		int PROBE_END_LINE_764 = 766;
		if (bean_deserializer_factory_1_expr134_line_764) {
            prop.setManagedReferenceName(ref.getName());
        }
        int PROBE_START_LINE_767 = 767;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1965_line_767 = propDef;
		ObjectIdInfo bean_deserializer_factory_1_expr137_line_767 = p_prop_def_1965_line_767.findObjectIdInfo();
		int PROBE_END_LINE_767 = 767;
		ObjectIdInfo objectIdInfo = bean_deserializer_factory_1_expr137_line_767;
        int PROBE_START_LINE_768 = 770;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1973_line_768 = objectIdInfo;
		boolean bean_deserializer_factory_1_expr138_line_768 = v_object_id_info_1973_line_768 != null;
		int PROBE_END_LINE_768 = 770;
		if (bean_deserializer_factory_1_expr138_line_768){
            prop.setObjectIdInfo(objectIdInfo);
        }
        int PROBE_START_LINE_771 = 771;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1970_line_771 = prop;
		int PROBE_END_LINE_771 = 771;
		return v_prop_1970_line_771;
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
     * can not be (i.e. are never consider to be) beans: 
     * things like primitives, Arrays, Enums, and proxy types.
     *<p>
     * Note that usually we shouldn't really be getting these sort of
     * types anyway; but better safe than sorry.
     */
    protected boolean isPotentialBeanType(Class<?> type)
    {
        int PROBE_START_LINE_814 = 814;
		Class<?> p_type_1977_line_814 = type;
		String bean_deserializer_factory_1_expr139_line_814 = ClassUtil.canBeABeanType(p_type_1977_line_814);
		int PROBE_END_LINE_814 = 814;
		String typeStr = bean_deserializer_factory_1_expr139_line_814;
        int PROBE_START_LINE_815 = 817;
		String v_type_str_1978_line_815 = typeStr;
		boolean bean_deserializer_factory_1_expr140_line_815 = v_type_str_1978_line_815 != null;
		int PROBE_END_LINE_815 = 817;
		if (bean_deserializer_factory_1_expr140_line_815) {
            throw new IllegalArgumentException("Can not deserialize Class "+type.getName()+" (of type "+typeStr+") as a Bean");
        }
        int PROBE_START_LINE_818 = 820;
		Class<?> p_type_1977_line_818 = type;
		boolean bean_deserializer_factory_1_expr141_line_818 = ClassUtil.isProxyType(p_type_1977_line_818);
		int PROBE_END_LINE_818 = 820;
		if (bean_deserializer_factory_1_expr141_line_818) {
            throw new IllegalArgumentException("Can not deserialize Proxy class "+type.getName()+" as a Bean");
        }
        int PROBE_START_LINE_824 = 824;
		Class<?> p_type_1977_line_824 = type;
		String bean_deserializer_factory_1_expr143_line_824 = ClassUtil.isLocalType(p_type_1977_line_824, true);
		int PROBE_END_LINE_824 = 824;
		/* also: can't deserialize some local classes: static are ok; in-method not;
         * other non-static inner classes are ok
         */
        typeStr = bean_deserializer_factory_1_expr143_line_824;
        int PROBE_START_LINE_825 = 827;
		String v_type_str_1978_line_825 = typeStr;
		boolean bean_deserializer_factory_1_expr144_line_825 = v_type_str_1978_line_825 != null;
		int PROBE_END_LINE_825 = 827;
		if (bean_deserializer_factory_1_expr144_line_825) {
            throw new IllegalArgumentException("Can not deserialize Class "+type.getName()+" (of type "+typeStr+") as a Bean");
        }
        return true;
    }

    /**
     * Helper method that will check whether given raw type is marked as always ignorable
     * (for purpose of ignoring properties with type)
     */
    protected boolean isIgnorableType(DeserializationConfig config, BeanDescription beanDesc,
            Class<?> type, Map<Class<?>,Boolean> ignoredTypes)
    {
        int PROBE_START_LINE_838 = 838;
		Map<Class<?>, Boolean> p_ignored_types_1982_line_838 = ignoredTypes;
		Class<?> p_type_1981_line_838 = type;
		Boolean bean_deserializer_factory_1_expr145_line_838 = p_ignored_types_1982_line_838.get(p_type_1981_line_838);
		int PROBE_END_LINE_838 = 838;
		Boolean status = bean_deserializer_factory_1_expr145_line_838;
        int PROBE_START_LINE_839 = 841;
		Boolean v_status_1983_line_839 = status;
		boolean bean_deserializer_factory_1_expr146_line_839 = v_status_1983_line_839 != null;
		int PROBE_END_LINE_839 = 841;
		if (bean_deserializer_factory_1_expr146_line_839) {
            return status.booleanValue();
        }
        int PROBE_START_LINE_843 = 843;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1979_line_843 = config;
		Class<?> p_type_1981_line_843 = type;
		ConfigOverride bean_deserializer_factory_1_expr147_line_843 = p_config_1979_line_843
				.findConfigOverride(p_type_1981_line_843);
		int PROBE_END_LINE_843 = 843;
		// 21-Apr-2016, tatu: For 2.8, can specify config overrides
        ConfigOverride override = bean_deserializer_factory_1_expr147_line_843;
        int PROBE_START_LINE_844 = 846;
		com.fasterxml.jackson.databind.cfg.ConfigOverride v_override_1984_line_844 = override;
		boolean bean_deserializer_factory_1_expr148_line_844 = v_override_1984_line_844 != null;
		int PROBE_END_LINE_844 = 846;
		if (bean_deserializer_factory_1_expr148_line_844) {
            status = override.getIsIgnoredType();
        }
        int PROBE_START_LINE_847 = 854;
		Boolean v_status_1983_line_847 = status;
		boolean bean_deserializer_factory_1_expr149_line_847 = v_status_1983_line_847 == null;
		int PROBE_END_LINE_847 = 854;
		if (bean_deserializer_factory_1_expr149_line_847) {
            int PROBE_START_LINE_848 = 848;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1979_line_848 = config;
			Class<?> p_type_1981_line_848 = type;
			BeanDescription bean_deserializer_factory_1_expr150_line_848 = p_config_1979_line_848
					.introspectClassAnnotations(p_type_1981_line_848);
			int PROBE_END_LINE_848 = 848;
			BeanDescription desc = bean_deserializer_factory_1_expr150_line_848;
            int PROBE_START_LINE_849 = 849;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1979_line_849 = config;
			com.fasterxml.jackson.databind.AnnotationIntrospector bean_deserializer_factory_1_expr154_line_849 = p_config_1979_line_849
					.getAnnotationIntrospector();
			com.fasterxml.jackson.databind.BeanDescription v_desc_1985_line_849 = desc;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass bean_deserializer_factory_1_expr153_line_849 = v_desc_1985_line_849
					.getClassInfo();
			Boolean bean_deserializer_factory_1_expr152_line_849 = bean_deserializer_factory_1_expr154_line_849
					.isIgnorableType(bean_deserializer_factory_1_expr153_line_849);
			int PROBE_END_LINE_849 = 849;
			status = bean_deserializer_factory_1_expr152_line_849;
            int PROBE_START_LINE_851 = 853;
			Boolean v_status_1983_line_851 = status;
			boolean bean_deserializer_factory_1_expr155_line_851 = v_status_1983_line_851 == null;
			int PROBE_END_LINE_851 = 853;
			// We default to 'false', i.e. not ignorable
            if (bean_deserializer_factory_1_expr155_line_851) {
                int PROBE_START_LINE_852 = 852;
				Boolean q_false_56_line_852 = Boolean.FALSE;
				int PROBE_END_LINE_852 = 852;
				status = q_false_56_line_852;
            }
        }
        int PROBE_START_LINE_855 = 855;
		Map<Class<?>, Boolean> p_ignored_types_1982_line_855 = ignoredTypes;
		Class<?> p_type_1981_line_855 = type;
		Boolean v_status_1983_line_855 = status;
		int PROBE_END_LINE_855 = 855;
		p_ignored_types_1982_line_855.put(p_type_1981_line_855, v_status_1983_line_855);
        int PROBE_START_LINE_856 = 856;
		Boolean v_status_1983_line_856 = status;
		boolean bean_deserializer_factory_1_expr158_line_856 = v_status_1983_line_856.booleanValue();
		int PROBE_END_LINE_856 = 856;
		return bean_deserializer_factory_1_expr158_line_856;
    }

    /**
     * @since 2.8.11
     */
    protected void _validateSubType(DeserializationContext ctxt, JavaType type,
            BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_866 = 866;
		com.fasterxml.jackson.databind.jsontype.impl.SubTypeValidator bean_deserializer_factory_1_expr160_line_866 = SubTypeValidator
				.instance();
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1986_line_866 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1987_line_866 = type;
		int PROBE_END_LINE_866 = 866;
		bean_deserializer_factory_1_expr160_line_866.validateSubType(p_ctxt_1986_line_866, p_type_1987_line_866);
    }
}
