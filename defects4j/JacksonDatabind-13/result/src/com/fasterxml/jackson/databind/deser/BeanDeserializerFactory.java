package com.fasterxml.jackson.databind.deser;

import java.lang.reflect.Type;
import java.util.*;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.annotation.ObjectIdResolver;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.deser.impl.*;
import com.fasterxml.jackson.databind.deser.std.ThrowableDeserializer;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;
import java.util.Collection;
import com.fasterxml.jackson.databind.AbstractTypeResolver;
import java.util.Set;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import java.util.ArrayList;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.MapperFeature;
import java.util.List;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.type.TypeFactory;
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
        int PROBE_START_LINE_103 = 103;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1691_line_103 = ctxt;
		DeserializationConfig bean_deserializer_factory_1_expr8_line_103 = p_ctxt_1691_line_103.getConfig();
		int PROBE_END_LINE_103 = 103;
		final DeserializationConfig config = bean_deserializer_factory_1_expr8_line_103;
        int PROBE_START_LINE_105 = 105;
		com.fasterxml.jackson.databind.JavaType p_type_1692_line_105 = type;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_1694_line_105 = config;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1693_line_105 = beanDesc;
		JsonDeserializer<Object> bean_deserializer_factory_1_expr9_line_105 = _findCustomBeanDeserializer(
				p_type_1692_line_105, v_config_1694_line_105, p_bean_desc_1693_line_105);
		int PROBE_END_LINE_105 = 105;
		// We may also have custom overrides:
        JsonDeserializer<Object> custom = bean_deserializer_factory_1_expr9_line_105;
        int PROBE_START_LINE_106 = 108;
		JsonDeserializer<Object> v_custom_1695_line_106 = custom;
		boolean bean_deserializer_factory_1_expr10_line_106 = v_custom_1695_line_106 != null;
		int PROBE_END_LINE_106 = 108;
		if (bean_deserializer_factory_1_expr10_line_106) {
            return custom;
        }
        int PROBE_START_LINE_113 = 115;
		com.fasterxml.jackson.databind.JavaType p_type_1692_line_113 = type;
		boolean bean_deserializer_factory_1_expr11_line_113 = p_type_1692_line_113.isThrowable();
		int PROBE_END_LINE_113 = 115;
		/* One more thing to check: do we have an exception type
         * (Throwable or its sub-classes)? If so, need slightly
         * different handling.
         */
        if (bean_deserializer_factory_1_expr11_line_113) {
            return buildThrowableDeserializer(ctxt, type, beanDesc);
        }
        int PROBE_START_LINE_119 = 129;
		com.fasterxml.jackson.databind.JavaType p_type_1692_line_119 = type;
		boolean bean_deserializer_factory_1_expr12_line_119 = p_type_1692_line_119.isAbstract();
		int PROBE_END_LINE_119 = 129;
		/* Or, for abstract types, may have alternate means for resolution
         * (defaulting, materialization)
         */
        if (bean_deserializer_factory_1_expr12_line_119) {
            int PROBE_START_LINE_121 = 121;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1691_line_121 = ctxt;
			com.fasterxml.jackson.databind.JavaType p_type_1692_line_121 = type;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1693_line_121 = beanDesc;
			JavaType bean_deserializer_factory_1_expr13_line_121 = materializeAbstractType(p_ctxt_1691_line_121,
					p_type_1692_line_121, p_bean_desc_1693_line_121);
			int PROBE_END_LINE_121 = 121;
			// [JACKSON-41] (v1.6): Let's make it possible to materialize abstract types.
            JavaType concreteType = bean_deserializer_factory_1_expr13_line_121;
            int PROBE_START_LINE_122 = 128;
			com.fasterxml.jackson.databind.JavaType v_concrete_type_1696_line_122 = concreteType;
			boolean bean_deserializer_factory_1_expr14_line_122 = v_concrete_type_1696_line_122 != null;
			int PROBE_END_LINE_122 = 128;
			if (bean_deserializer_factory_1_expr14_line_122) {
                /* important: introspect actual implementation (abstract class or
                 * interface doesn't have constructors, for one)
                 */
                beanDesc = config.introspect(concreteType);
                return buildBeanDeserializer(ctxt, concreteType, beanDesc);
            }
        }

        int PROBE_START_LINE_132 = 133;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1691_line_133 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1692_line_133 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1693_line_133 = beanDesc;
		JsonDeserializer<?> bean_deserializer_factory_1_expr16_line_133 = findStdDeserializer(p_ctxt_1691_line_133,
				p_type_1692_line_133, p_bean_desc_1693_line_133);
		int PROBE_END_LINE_132 = 133;
		// Otherwise, may want to check handlers for standard types, from superclass:
        @SuppressWarnings("unchecked")
        JsonDeserializer<Object> deser = (JsonDeserializer<Object>) bean_deserializer_factory_1_expr16_line_133;
        int PROBE_START_LINE_134 = 136;
		JsonDeserializer<Object> v_deser_1697_line_134 = deser;
		boolean bean_deserializer_factory_1_expr17_line_134 = v_deser_1697_line_134 != null;
		int PROBE_END_LINE_134 = 136;
		if (bean_deserializer_factory_1_expr17_line_134) {
            int PROBE_START_LINE_135 = 135;
			JsonDeserializer<Object> v_deser_1697_line_135 = deser;
			int PROBE_END_LINE_135 = 135;
			return v_deser_1697_line_135;
        }

        int PROBE_START_LINE_139 = 141;
		com.fasterxml.jackson.databind.JavaType p_type_1692_line_139 = type;
		Class<?> bean_deserializer_factory_1_expr20_line_139 = p_type_1692_line_139.getRawClass();
		boolean bean_deserializer_factory_1_expr19_line_139 = isPotentialBeanType(
				bean_deserializer_factory_1_expr20_line_139);
		boolean bean_deserializer_factory_1_expr18_line_139 = !bean_deserializer_factory_1_expr19_line_139;
		int PROBE_END_LINE_139 = 141;
		// Otherwise: could the class be a Bean class? If not, bail out
        if (bean_deserializer_factory_1_expr18_line_139) {
            return null;
        }
        int PROBE_START_LINE_143 = 143;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1691_line_143 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1692_line_143 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1693_line_143 = beanDesc;
		JsonDeserializer<Object> bean_deserializer_factory_1_expr21_line_143 = buildBeanDeserializer(
				p_ctxt_1691_line_143, p_type_1692_line_143, p_bean_desc_1693_line_143);
		int PROBE_END_LINE_143 = 143;
		// Use generic bean introspection to build deserializer
        return bean_deserializer_factory_1_expr21_line_143;
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
        int PROBE_START_LINE_168 = 168;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1702_line_168 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1703_line_168 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1704_line_168 = beanDesc;
		JsonDeserializer<?> bean_deserializer_factory_1_expr22_line_168 = findDefaultDeserializer(p_ctxt_1702_line_168,
				p_type_1703_line_168, p_bean_desc_1704_line_168);
		int PROBE_END_LINE_168 = 168;
		// note: we do NOT check for custom deserializers here, caller has already
        // done that
        JsonDeserializer<?> deser = bean_deserializer_factory_1_expr22_line_168;
        int PROBE_START_LINE_170 = 176;
		JsonDeserializer<?> v_deser_1705_line_170 = deser;
		boolean bean_deserializer_factory_1_expr23_line_170 = v_deser_1705_line_170 != null;
		int PROBE_END_LINE_170 = 176;
		// Also: better ensure these are post-processable?
        if (bean_deserializer_factory_1_expr23_line_170) {
            int PROBE_START_LINE_171 = 175;
			com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1219_line_171 = _factoryConfig;
			boolean bean_deserializer_factory_1_expr24_line_171 = f__factory_config_1219_line_171
					.hasDeserializerModifiers();
			int PROBE_END_LINE_171 = 175;
			if (bean_deserializer_factory_1_expr24_line_171) {
                for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                    deser = mod.modifyDeserializer(ctxt.getConfig(), beanDesc, deser);
                }
            }
        }
        int PROBE_START_LINE_177 = 177;
		JsonDeserializer<?> v_deser_1705_line_177 = deser;
		int PROBE_END_LINE_177 = 177;
		return v_deser_1705_line_177;
    }
    
    protected JavaType materializeAbstractType(DeserializationContext ctxt,
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_184 = 184;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1708_line_184 = beanDesc;
		JavaType bean_deserializer_factory_1_expr25_line_184 = p_bean_desc_1708_line_184.getType();
		int PROBE_END_LINE_184 = 184;
		final JavaType abstractType = bean_deserializer_factory_1_expr25_line_184;
        int PROBE_START_LINE_187 = 192;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1219_line_187 = _factoryConfig;
		Iterable<com.fasterxml.jackson.databind.AbstractTypeResolver> bean_deserializer_factory_1_expr26_line_187 = f__factory_config_1219_line_187
				.abstractTypeResolvers();
		int PROBE_END_LINE_187 = 192;
		// [JACKSON-502]: Now it is possible to have multiple resolvers too,
        //   as they are registered via module interface.
        for (AbstractTypeResolver r : bean_deserializer_factory_1_expr26_line_187) {
            JavaType concrete = r.resolveAbstractType(ctxt.getConfig(), abstractType);
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
        int PROBE_START_LINE_216 = 216;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1711_line_216 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1713_line_216 = beanDesc;
		ValueInstantiator bean_deserializer_factory_1_expr27_line_216 = findValueInstantiator(p_ctxt_1711_line_216,
				p_bean_desc_1713_line_216);
		int PROBE_END_LINE_216 = 216;
		// First: check what creators we can use, if any
        ValueInstantiator valueInstantiator = bean_deserializer_factory_1_expr27_line_216;
        int PROBE_START_LINE_217 = 217;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1711_line_217 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1713_line_217 = beanDesc;
		BeanDeserializerBuilder bean_deserializer_factory_1_expr28_line_217 = constructBeanDeserializerBuilder(
				p_ctxt_1711_line_217, p_bean_desc_1713_line_217);
		int PROBE_END_LINE_217 = 217;
		BeanDeserializerBuilder builder = bean_deserializer_factory_1_expr28_line_217;
        int PROBE_START_LINE_218 = 218;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1715_line_218 = builder;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_value_instantiator_1714_line_218 = valueInstantiator;
		int PROBE_END_LINE_218 = 218;
		v_builder_1715_line_218.setValueInstantiator(v_value_instantiator_1714_line_218);
         int PROBE_START_LINE_220 = 220;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1711_line_220 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1713_line_220 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1715_line_220 = builder;
		int PROBE_END_LINE_220 = 220;
		// And then setters for deserializing from JSON Object
        addBeanProps(p_ctxt_1711_line_220, p_bean_desc_1713_line_220, v_builder_1715_line_220);
        int PROBE_START_LINE_221 = 221;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1711_line_221 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1713_line_221 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1715_line_221 = builder;
		int PROBE_END_LINE_221 = 221;
		addObjectIdReader(p_ctxt_1711_line_221, p_bean_desc_1713_line_221, v_builder_1715_line_221);

        int PROBE_START_LINE_224 = 224;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1711_line_224 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1713_line_224 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1715_line_224 = builder;
		int PROBE_END_LINE_224 = 224;
		// managed/back reference fields/setters need special handling... first part
        addReferenceProperties(p_ctxt_1711_line_224, p_bean_desc_1713_line_224, v_builder_1715_line_224);
        int PROBE_START_LINE_225 = 225;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1711_line_225 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1713_line_225 = beanDesc;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1715_line_225 = builder;
		int PROBE_END_LINE_225 = 225;
		addInjectables(p_ctxt_1711_line_225, p_bean_desc_1713_line_225, v_builder_1715_line_225);
        
        int PROBE_START_LINE_227 = 227;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1711_line_227 = ctxt;
		DeserializationConfig bean_deserializer_factory_1_expr34_line_227 = p_ctxt_1711_line_227.getConfig();
		int PROBE_END_LINE_227 = 227;
		final DeserializationConfig config = bean_deserializer_factory_1_expr34_line_227;
        int PROBE_START_LINE_229 = 233;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1219_line_229 = _factoryConfig;
		boolean bean_deserializer_factory_1_expr35_line_229 = f__factory_config_1219_line_229
				.hasDeserializerModifiers();
		int PROBE_END_LINE_229 = 233;
		// [JACKSON-440]: update builder now that all information is in?
        if (bean_deserializer_factory_1_expr35_line_229) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                builder = mod.updateBuilder(config, beanDesc, builder);
            }
        }
        JsonDeserializer<?> deserializer = null;

        int PROBE_START_LINE_239 = 243;
		com.fasterxml.jackson.databind.JavaType p_type_1712_line_239 = type;
		boolean bean_deserializer_factory_1_expr37_line_239 = p_type_1712_line_239.isAbstract();
		boolean bean_deserializer_factory_1_expr38_line_239 = true;
		if (bean_deserializer_factory_1_expr37_line_239) {
			com.fasterxml.jackson.databind.deser.ValueInstantiator v_value_instantiator_1714_line_239 = valueInstantiator;
			boolean bean_deserializer_factory_1_expr39_line_239 = v_value_instantiator_1714_line_239.canInstantiate();
			bean_deserializer_factory_1_expr38_line_239 = !bean_deserializer_factory_1_expr39_line_239;
		}
		boolean bean_deserializer_factory_1_expr36_line_239 = bean_deserializer_factory_1_expr37_line_239
				&& bean_deserializer_factory_1_expr38_line_239;
		int PROBE_END_LINE_239 = 243;
		/* 19-Mar-2012, tatu: This check used to be done earlier; but we have to defer
         *   it a bit to collect information on ObjectIdReader, for example.
         */
        if (bean_deserializer_factory_1_expr36_line_239) {
            deserializer = builder.buildAbstract();
        } else {
            int PROBE_START_LINE_242 = 242;
			com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder v_builder_1715_line_242 = builder;
			JsonDeserializer<?> bean_deserializer_factory_1_expr41_line_242 = v_builder_1715_line_242.build();
			int PROBE_END_LINE_242 = 242;
			deserializer = bean_deserializer_factory_1_expr41_line_242;
        }

        int PROBE_START_LINE_246 = 250;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1219_line_246 = _factoryConfig;
		boolean bean_deserializer_factory_1_expr42_line_246 = f__factory_config_1219_line_246
				.hasDeserializerModifiers();
		int PROBE_END_LINE_246 = 250;
		// [JACKSON-440]: may have modifier(s) that wants to modify or replace serializer we just built:
        if (bean_deserializer_factory_1_expr42_line_246) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deserializer = mod.modifyDeserializer(config, beanDesc, deserializer);
            }
        }
        int PROBE_START_LINE_251 = 251;
		JsonDeserializer<?> v_deserializer_1717_line_251 = deserializer;
		int PROBE_END_LINE_251 = 251;
		return (JsonDeserializer<Object>) v_deserializer_1717_line_251;
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
            	ClassUtil.checkAndFixAccess(buildMethod.getMember());
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
        int PROBE_START_LINE_313 = 313;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1722_line_313 = beanDesc;
		ObjectIdInfo bean_deserializer_factory_1_expr44_line_313 = p_bean_desc_1722_line_313.getObjectIdInfo();
		int PROBE_END_LINE_313 = 313;
		ObjectIdInfo objectIdInfo = bean_deserializer_factory_1_expr44_line_313;
        int PROBE_START_LINE_314 = 316;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1724_line_314 = objectIdInfo;
		boolean bean_deserializer_factory_1_expr45_line_314 = v_object_id_info_1724_line_314 == null;
		int PROBE_END_LINE_314 = 316;
		if (bean_deserializer_factory_1_expr45_line_314) {
            return;
        }
        int PROBE_START_LINE_317 = 317;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1724_line_317 = objectIdInfo;
		Class<?> bean_deserializer_factory_1_expr46_line_317 = v_object_id_info_1724_line_317.getGeneratorType();
		int PROBE_END_LINE_317 = 317;
		Class<?> implClass = bean_deserializer_factory_1_expr46_line_317;
        JavaType idType = null;
        SettableBeanProperty idProp;
        ObjectIdGenerator<?> gen;

        int PROBE_START_LINE_322 = 322;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1721_line_322 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1722_line_322 = beanDesc;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass bean_deserializer_factory_1_expr48_line_322 = p_bean_desc_1722_line_322
				.getClassInfo();
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1724_line_322 = objectIdInfo;
		ObjectIdResolver bean_deserializer_factory_1_expr47_line_322 = p_ctxt_1721_line_322
				.objectIdResolverInstance(bean_deserializer_factory_1_expr48_line_322, v_object_id_info_1724_line_322);
		int PROBE_END_LINE_322 = 322;
		ObjectIdResolver resolver = bean_deserializer_factory_1_expr47_line_322;

        int PROBE_START_LINE_325 = 339;
		Class<?> v_impl_class_1725_line_325 = implClass;
		boolean bean_deserializer_factory_1_expr49_line_325 = v_impl_class_1725_line_325 == ObjectIdGenerators.PropertyGenerator.class;
		int PROBE_END_LINE_325 = 339;
		// Just one special case: Property-based generator is trickier
        if (bean_deserializer_factory_1_expr49_line_325) { // most special one, needs extra work
            PropertyName propName = objectIdInfo.getPropertyName();
            idProp = builder.findProperty(propName);
            if (idProp == null) {
                throw new IllegalArgumentException("Invalid Object Id definition for "
                        +beanDesc.getBeanClass().getName()+": can not find property with name '"+propName+"'");
            }
            idType = idProp.getType();
            gen = new PropertyBasedObjectIdGenerator(objectIdInfo.getScope());
        } else {
            int PROBE_START_LINE_335 = 335;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1721_line_335 = ctxt;
			Class<?> v_impl_class_1725_line_335 = implClass;
			JavaType bean_deserializer_factory_1_expr51_line_335 = p_ctxt_1721_line_335
					.constructType(v_impl_class_1725_line_335);
			int PROBE_END_LINE_335 = 335;
			JavaType type = bean_deserializer_factory_1_expr51_line_335;
            int PROBE_START_LINE_336 = 336;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1721_line_336 = ctxt;
			com.fasterxml.jackson.databind.type.TypeFactory bean_deserializer_factory_1_expr56_line_336 = p_ctxt_1721_line_336
					.getTypeFactory();
			com.fasterxml.jackson.databind.JavaType v_type_1727_line_336 = type;
			com.fasterxml.jackson.databind.JavaType[] bean_deserializer_factory_1_expr54_line_336 = bean_deserializer_factory_1_expr56_line_336
					.findTypeParameters(v_type_1727_line_336, ObjectIdGenerator.class);
			com.fasterxml.jackson.databind.JavaType bean_deserializer_factory_1_expr53_line_336 = bean_deserializer_factory_1_expr54_line_336[0];
			int PROBE_END_LINE_336 = 336;
			idType = bean_deserializer_factory_1_expr53_line_336;
            idProp = null;
            int PROBE_START_LINE_338 = 338;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1721_line_338 = ctxt;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1722_line_338 = beanDesc;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass bean_deserializer_factory_1_expr60_line_338 = p_bean_desc_1722_line_338
					.getClassInfo();
			com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1724_line_338 = objectIdInfo;
			ObjectIdGenerator<?> bean_deserializer_factory_1_expr59_line_338 = p_ctxt_1721_line_338
					.objectIdGeneratorInstance(bean_deserializer_factory_1_expr60_line_338,
							v_object_id_info_1724_line_338);
			int PROBE_END_LINE_338 = 338;
			gen = bean_deserializer_factory_1_expr59_line_338;
        }
        int PROBE_START_LINE_341 = 341;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1721_line_341 = ctxt;
		com.fasterxml.jackson.databind.JavaType v_id_type_1728_line_341 = idType;
		JsonDeserializer<?> bean_deserializer_factory_1_expr61_line_341 = p_ctxt_1721_line_341
				.findRootValueDeserializer(v_id_type_1728_line_341);
		int PROBE_END_LINE_341 = 341;
		// also: unlike with value deserializers, let's just resolve one we need here
        JsonDeserializer<?> deser = bean_deserializer_factory_1_expr61_line_341;
        int PROBE_START_LINE_342 = 343;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1723_line_342 = builder;
		com.fasterxml.jackson.databind.JavaType v_id_type_1728_line_342 = idType;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader bean_deserializer_factory_1_expr63_line_342 = ObjectIdReader
				.construct(v_id_type_1728_line_342, objectIdInfo.getPropertyName(), gen, deser, idProp, resolver);
		int PROBE_END_LINE_342 = 343;
		p_builder_1723_line_342.setObjectIdReader(bean_deserializer_factory_1_expr63_line_342);
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
                    am.getGenericParameterType(0));
            if (prop != null) {
                /* 21-Aug-2011, tatus: We may actually have found 'cause' property
                 *   to set (with new 1.9 code)... but let's replace it just in case,
                 *   otherwise can end up with odd errors.
                 */
                builder.addOrReplaceProperty(prop, true);
            }
        }

        // And also need to ignore "localizedMessage"
        builder.addIgnorable("localizedMessage");
        // [JACKSON-794]: JDK 7 also added "getSuppressed", skip if we have such data:
        builder.addIgnorable("suppressed");
        /* As well as "message": it will be passed via constructor,
         * as there's no 'setMessage()' method
        */
        builder.addIgnorable("message");

        // [JACKSON-440]: update builder now that all information is in?
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

        // [JACKSON-440]: may have modifier(s) that wants to modify or replace serializer we just built:
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
        int PROBE_START_LINE_425 = 425;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1736_line_425 = beanDesc;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1735_line_425 = ctxt;
				com.fasterxml.jackson.databind.DeserializationConfig bean_deserializer_factory_1_expr66_line_425 = p_ctxt_1735_line_425
						.getConfig();
				int PROBE_END_LINE_425 = 425;
		return new BeanDeserializerBuilder(p_bean_desc_1736_line_425, bean_deserializer_factory_1_expr66_line_425);
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
        final SettableBeanProperty[] creatorProps =
                builder.getValueInstantiator().getFromObjectArguments(ctxt.getConfig());
        int PROBE_START_LINE_441 = 441;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1738_line_441 = beanDesc;
		com.fasterxml.jackson.databind.JavaType bean_deserializer_factory_1_expr70_line_441 = p_bean_desc_1738_line_441
				.getType();
		boolean bean_deserializer_factory_1_expr69_line_441 = bean_deserializer_factory_1_expr70_line_441.isAbstract();
		boolean bean_deserializer_factory_1_expr68_line_441 = !bean_deserializer_factory_1_expr69_line_441;
		int PROBE_END_LINE_441 = 441;
		final boolean isConcrete = bean_deserializer_factory_1_expr68_line_441;
        
        int PROBE_START_LINE_444 = 444;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1737_line_444 = ctxt;
		AnnotationIntrospector bean_deserializer_factory_1_expr71_line_444 = p_ctxt_1737_line_444
				.getAnnotationIntrospector();
		int PROBE_END_LINE_444 = 444;
		// Things specified as "ok to ignore"? [JACKSON-77]
        AnnotationIntrospector intr = bean_deserializer_factory_1_expr71_line_444;
        boolean ignoreAny = false;
        {
            int PROBE_START_LINE_447 = 447;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1742_line_447 = intr;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1738_line_447 = beanDesc;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass bean_deserializer_factory_1_expr73_line_447 = p_bean_desc_1738_line_447
					.getClassInfo();
			Boolean bean_deserializer_factory_1_expr72_line_447 = v_intr_1742_line_447
					.findIgnoreUnknownProperties(bean_deserializer_factory_1_expr73_line_447);
			int PROBE_END_LINE_447 = 447;
			Boolean B = bean_deserializer_factory_1_expr72_line_447;
            int PROBE_START_LINE_448 = 451;
			Boolean v_b_1744_line_448 = B;
			boolean bean_deserializer_factory_1_expr74_line_448 = v_b_1744_line_448 != null;
			int PROBE_END_LINE_448 = 451;
			if (bean_deserializer_factory_1_expr74_line_448) {
                ignoreAny = B.booleanValue();
                builder.setIgnoreUnknownProperties(ignoreAny);
            }
        }
        int PROBE_START_LINE_454 = 454;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1742_line_454 = intr;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1738_line_454 = beanDesc;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass bean_deserializer_factory_1_expr77_line_454 = p_bean_desc_1738_line_454
				.getClassInfo();
		String[] bean_deserializer_factory_1_expr76_line_454 = v_intr_1742_line_454
				.findPropertiesToIgnore(bean_deserializer_factory_1_expr77_line_454);
		Set<String> bean_deserializer_factory_1_expr75_line_454 = ArrayBuilders
				.arrayToSet(bean_deserializer_factory_1_expr76_line_454);
		int PROBE_END_LINE_454 = 454;
		// Or explicit/implicit definitions?
        Set<String> ignored = bean_deserializer_factory_1_expr75_line_454;        
        int PROBE_START_LINE_455 = 457;
		Set<String> v_ignored_1745_line_455 = ignored;
		int PROBE_END_LINE_455 = 457;
		for (String propName : v_ignored_1745_line_455) {
            builder.addIgnorable(propName);
        }
        int PROBE_START_LINE_459 = 459;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1738_line_459 = beanDesc;
		AnnotatedMethod bean_deserializer_factory_1_expr78_line_459 = p_bean_desc_1738_line_459.findAnySetter();
		int PROBE_END_LINE_459 = 459;
		// Also, do we have a fallback "any" setter?
        AnnotatedMethod anySetter = bean_deserializer_factory_1_expr78_line_459;
        int PROBE_START_LINE_460 = 462;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_any_setter_1747_line_460 = anySetter;
		boolean bean_deserializer_factory_1_expr79_line_460 = v_any_setter_1747_line_460 != null;
		int PROBE_END_LINE_460 = 462;
		if (bean_deserializer_factory_1_expr79_line_460) {
            builder.setAnySetter(constructAnySetter(ctxt, beanDesc, anySetter));
        }
        int PROBE_START_LINE_465 = 474;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_any_setter_1747_line_465 = anySetter;
		boolean bean_deserializer_factory_1_expr80_line_465 = v_any_setter_1747_line_465 == null;
		int PROBE_END_LINE_465 = 474;
		// NOTE: we do NOT add @JsonIgnore'd properties into blocked ones if there's any-setter
        // Implicit ones via @JsonIgnore and equivalent?
        if (bean_deserializer_factory_1_expr80_line_465) {
            int PROBE_START_LINE_466 = 466;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1738_line_466 = beanDesc;
			Collection<String> bean_deserializer_factory_1_expr81_line_466 = p_bean_desc_1738_line_466
					.getIgnoredPropertyNames();
			int PROBE_END_LINE_466 = 466;
			Collection<String> ignored2 = bean_deserializer_factory_1_expr81_line_466;
            int PROBE_START_LINE_467 = 473;
			Collection<String> v_ignored_2_1748_line_467 = ignored2;
			boolean bean_deserializer_factory_1_expr82_line_467 = v_ignored_2_1748_line_467 != null;
			int PROBE_END_LINE_467 = 473;
			if (bean_deserializer_factory_1_expr82_line_467) {
                int PROBE_START_LINE_468 = 472;
				Collection<String> v_ignored_2_1748_line_468 = ignored2;
				int PROBE_END_LINE_468 = 472;
				for (String propName : v_ignored_2_1748_line_468) {
                    // allow ignoral of similarly named JSON property, but do not force;
                    // latter means NOT adding this to 'ignored':
                    builder.addIgnorable(propName);
                }
            }
        }
        int PROBE_START_LINE_475 = 476;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1737_line_475 = ctxt;
		com.fasterxml.jackson.databind.MapperFeature q_use_getters_as_setters_35_line_475 = MapperFeature.USE_GETTERS_AS_SETTERS;
		boolean bean_deserializer_factory_1_expr85_line_475 = p_ctxt_1737_line_475
				.isEnabled(q_use_getters_as_setters_35_line_475);
		boolean bean_deserializer_factory_1_expr84_line_475 = bean_deserializer_factory_1_expr85_line_475
				&& ctxt.isEnabled(MapperFeature.AUTO_DETECT_GETTERS);
		boolean bean_deserializer_factory_1_expr83_line_475 = (bean_deserializer_factory_1_expr84_line_475);
		int PROBE_END_LINE_475 = 476;
		final boolean useGettersAsSetters = bean_deserializer_factory_1_expr83_line_475;

        int PROBE_START_LINE_479 = 480;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1737_line_479 = ctxt;
		List<BeanPropertyDefinition> bean_deserializer_factory_1_expr86_line_479 = filterBeanProps(p_ctxt_1737_line_479,
				beanDesc, builder, beanDesc.findProperties(), ignored);
		int PROBE_END_LINE_479 = 480;
		// Ok: let's then filter out property definitions
        List<BeanPropertyDefinition> propDefs = bean_deserializer_factory_1_expr86_line_479;

        int PROBE_START_LINE_483 = 487;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1219_line_483 = _factoryConfig;
		boolean bean_deserializer_factory_1_expr88_line_483 = f__factory_config_1219_line_483
				.hasDeserializerModifiers();
		int PROBE_END_LINE_483 = 487;
		// After which we can let custom code change the set
        if (bean_deserializer_factory_1_expr88_line_483) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                propDefs = mod.updateProperties(ctxt.getConfig(), beanDesc, propDefs);
            }
        }
        
        int PROBE_START_LINE_490 = 556;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> v_prop_defs_1751_line_490 = propDefs;
		int PROBE_END_LINE_490 = 556;
		// At which point we still have all kinds of properties; not all with mutators:
        for (BeanPropertyDefinition propDef : v_prop_defs_1751_line_490) {
            SettableBeanProperty prop = null;
            int PROBE_START_LINE_496 = 513;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1752_line_496 = propDef;
			boolean bean_deserializer_factory_1_expr89_line_496 = v_prop_def_1752_line_496.hasSetter();
			int PROBE_END_LINE_496 = 513;
			/* 18-Oct-2013, tatu: Although constructor parameters have highest precedence,
             *   we need to do linkage (as per [Issue#318]), and so need to start with
             *   other types, and only then create constructor parameter, if any.
             */
            if (bean_deserializer_factory_1_expr89_line_496) {
                Type propertyType = propDef.getSetter().getGenericParameterType(0);
                prop = constructSettableProperty(ctxt, beanDesc, propDef, propertyType);
            } else {
				int PROBE_START_LINE_499 = 513;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1752_line_499 = propDef;
				boolean bean_deserializer_factory_1_expr90_line_499 = v_prop_def_1752_line_499.hasField();
				int PROBE_END_LINE_499 = 513;
				if (bean_deserializer_factory_1_expr90_line_499) {
					int PROBE_START_LINE_500 = 500;
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1752_line_500 = propDef;
					com.fasterxml.jackson.databind.introspect.AnnotatedField bean_deserializer_factory_1_expr92_line_500 = v_prop_def_1752_line_500
							.getField();
					Type bean_deserializer_factory_1_expr91_line_500 = bean_deserializer_factory_1_expr92_line_500
							.getGenericType();
					int PROBE_END_LINE_500 = 500;
					Type propertyType = bean_deserializer_factory_1_expr91_line_500;
					int PROBE_START_LINE_501 = 501;
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1737_line_501 = ctxt;
					com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1738_line_501 = beanDesc;
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1752_line_501 = propDef;
					java.lang.reflect.Type v_property_type_1754_line_501 = propertyType;
					com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_factory_1_expr94_line_501 = constructSettableProperty(
							p_ctxt_1737_line_501, p_bean_desc_1738_line_501, v_prop_def_1752_line_501,
							v_property_type_1754_line_501);
					int PROBE_END_LINE_501 = 501;
					prop = bean_deserializer_factory_1_expr94_line_501;
				} else {
					int PROBE_START_LINE_502 = 513;
					boolean v_use_getters_as_setters_1750_line_502 = useGettersAsSetters;
					boolean bean_deserializer_factory_1_expr96_line_502 = true;
					if (v_use_getters_as_setters_1750_line_502) {
						com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1752_line_502 = propDef;
						bean_deserializer_factory_1_expr96_line_502 = v_prop_def_1752_line_502.hasGetter();
					}
					boolean bean_deserializer_factory_1_expr95_line_502 = v_use_getters_as_setters_1750_line_502
							&& bean_deserializer_factory_1_expr96_line_502;
					int PROBE_END_LINE_502 = 513;
					if (bean_deserializer_factory_1_expr95_line_502) {
						AnnotatedMethod getter = propDef.getGetter();
						Class<?> rawPropertyType = getter.getRawType();
						if (Collection.class.isAssignableFrom(rawPropertyType)
								|| Map.class.isAssignableFrom(rawPropertyType)) {
							prop = constructSetterlessProperty(ctxt, beanDesc, propDef);
						}
					}
				}
			}
            int PROBE_START_LINE_516 = 542;
			boolean v_is_concrete_1741_line_516 = isConcrete;
			boolean bean_deserializer_factory_1_expr98_line_516 = true;
			if (v_is_concrete_1741_line_516) {
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1752_line_516 = propDef;
				bean_deserializer_factory_1_expr98_line_516 = v_prop_def_1752_line_516.hasConstructorParameter();
			}
			boolean bean_deserializer_factory_1_expr97_line_516 = v_is_concrete_1741_line_516
					&& bean_deserializer_factory_1_expr98_line_516;
			int PROBE_END_LINE_516 = 542;
			// 25-Sep-2014, tatu: No point in finding constructor parameters for abstract types
            //   (since they are never used anyway)
            if (bean_deserializer_factory_1_expr97_line_516) {
                /* [JACKSON-700] If property is passed via constructor parameter, we must
                 *   handle things in special way. Not sure what is the most optimal way...
                 *   for now, let's just call a (new) method in builder, which does nothing.
                 */
                // but let's call a method just to allow custom builders to be aware...
                final String name = propDef.getName();
                CreatorProperty cprop = null;
                if (creatorProps != null) {
                    for (SettableBeanProperty cp : creatorProps) {
                        if (name.equals(cp.getName())) {
                            cprop = (CreatorProperty) cp;
                            break;
                        }
                    }
                }
                if (cprop == null) {
                    throw ctxt.mappingException("Could not find creator property with name '"
                              +name+"' (in class "+beanDesc.getBeanClass().getName()+")");
                }
                if (prop != null) {
                    cprop = cprop.withFallbackSetter(prop);
                }
                prop = cprop;
                builder.addCreatorProperty(cprop);
                continue;
            }
            
            int PROBE_START_LINE_544 = 555;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1753_line_544 = prop;
			boolean bean_deserializer_factory_1_expr99_line_544 = v_prop_1753_line_544 != null;
			int PROBE_END_LINE_544 = 555;
			if (bean_deserializer_factory_1_expr99_line_544) {
                int PROBE_START_LINE_545 = 545;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1752_line_545 = propDef;
				Class<?>[] bean_deserializer_factory_1_expr100_line_545 = v_prop_def_1752_line_545.findViews();
				int PROBE_END_LINE_545 = 545;
				Class<?>[] views = bean_deserializer_factory_1_expr100_line_545;
                int PROBE_START_LINE_546 = 551;
				Class<?>[] v_views_1755_line_546 = views;
				boolean bean_deserializer_factory_1_expr101_line_546 = v_views_1755_line_546 == null;
				int PROBE_END_LINE_546 = 551;
				if (bean_deserializer_factory_1_expr101_line_546) {
                    int PROBE_START_LINE_548 = 550;
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1737_line_548 = ctxt;
					com.fasterxml.jackson.databind.MapperFeature q_default_view_inclusion_36_line_548 = MapperFeature.DEFAULT_VIEW_INCLUSION;
					boolean bean_deserializer_factory_1_expr103_line_548 = p_ctxt_1737_line_548
							.isEnabled(q_default_view_inclusion_36_line_548);
					boolean bean_deserializer_factory_1_expr102_line_548 = !bean_deserializer_factory_1_expr103_line_548;
					int PROBE_END_LINE_548 = 550;
					// one more twist: if default inclusion disabled, need to force empty set of views
                    if (bean_deserializer_factory_1_expr102_line_548) {
                        views = NO_VIEWS;
                    }
                }
                int PROBE_START_LINE_553 = 553;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1753_line_553 = prop;
				Class<?>[] v_views_1755_line_553 = views;
				int PROBE_END_LINE_553 = 553;
				// one more thing before adding to builder: copy any metadata
                v_prop_1753_line_553.setViews(v_views_1755_line_553);
                int PROBE_START_LINE_554 = 554;
				com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1739_line_554 = builder;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1753_line_554 = prop;
				int PROBE_END_LINE_554 = 554;
				p_builder_1739_line_554.addProperty(v_prop_1753_line_554);
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
        int PROBE_START_LINE_575 = 597;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> p_prop_defs_in_1759_line_575 = propDefsIn;
		int PROBE_END_LINE_575 = 597;
		// These are all valid setters, but we do need to introspect bit more
        for (BeanPropertyDefinition property : p_prop_defs_in_1759_line_575) {
            int PROBE_START_LINE_576 = 576;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1763_line_576 = property;
			String bean_deserializer_factory_1_expr109_line_576 = v_property_1763_line_576.getName();
			int PROBE_END_LINE_576 = 576;
			String name = bean_deserializer_factory_1_expr109_line_576;
            int PROBE_START_LINE_577 = 579;
			Set<String> p_ignored_1760_line_577 = ignored;
			String v_name_1764_line_577 = name;
			boolean bean_deserializer_factory_1_expr110_line_577 = p_ignored_1760_line_577
					.contains(v_name_1764_line_577);
			int PROBE_END_LINE_577 = 579;
			if (bean_deserializer_factory_1_expr110_line_577) { // explicit ignoral using @JsonIgnoreProperties needs to block entries
                continue;
            }
            int PROBE_START_LINE_580 = 595;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1763_line_580 = property;
			boolean bean_deserializer_factory_1_expr112_line_580 = v_property_1763_line_580.hasConstructorParameter();
			boolean bean_deserializer_factory_1_expr111_line_580 = !bean_deserializer_factory_1_expr112_line_580;
			int PROBE_END_LINE_580 = 595;
			if (bean_deserializer_factory_1_expr111_line_580) { // never skip constructor params
                Class<?> rawPropertyType = null;
                int PROBE_START_LINE_582 = 586;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1763_line_582 = property;
				boolean bean_deserializer_factory_1_expr113_line_582 = v_property_1763_line_582.hasSetter();
				int PROBE_END_LINE_582 = 586;
				if (bean_deserializer_factory_1_expr113_line_582) {
                    rawPropertyType = property.getSetter().getRawParameterType(0);
                } else {
					int PROBE_START_LINE_584 = 586;
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1763_line_584 = property;
					boolean bean_deserializer_factory_1_expr114_line_584 = v_property_1763_line_584.hasField();
					int PROBE_END_LINE_584 = 586;
					if (bean_deserializer_factory_1_expr114_line_584) {
						int PROBE_START_LINE_585 = 585;
						com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1763_line_585 = property;
						com.fasterxml.jackson.databind.introspect.AnnotatedField bean_deserializer_factory_1_expr117_line_585 = v_property_1763_line_585
								.getField();
						Class<?> bean_deserializer_factory_1_expr116_line_585 = bean_deserializer_factory_1_expr117_line_585
								.getRawType();
						int PROBE_END_LINE_585 = 585;
						rawPropertyType = bean_deserializer_factory_1_expr116_line_585;
					}
				}

                int PROBE_START_LINE_589 = 594;
				Class<?> v_raw_property_type_1765_line_589 = rawPropertyType;
				boolean bean_deserializer_factory_1_expr120_line_589 = v_raw_property_type_1765_line_589 != null;
				boolean bean_deserializer_factory_1_expr119_line_589 = (bean_deserializer_factory_1_expr120_line_589);
				boolean bean_deserializer_factory_1_expr118_line_589 = bean_deserializer_factory_1_expr119_line_589
						&& (isIgnorableType(ctxt.getConfig(), beanDesc, rawPropertyType, ignoredTypes));
				int PROBE_END_LINE_589 = 594;
				// [JACKSON-429] Some types are declared as ignorable as well
                if (bean_deserializer_factory_1_expr118_line_589) {
                    // important: make ignorable, to avoid errors if value is actually seen
                    builder.addIgnorable(name);
                    continue;
                }
            }
            int PROBE_START_LINE_596 = 596;
			ArrayList<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> v_result_1761_line_596 = result;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_1763_line_596 = property;
			int PROBE_END_LINE_596 = 596;
			v_result_1761_line_596.add(v_property_1763_line_596);
        }
        int PROBE_START_LINE_598 = 598;
		ArrayList<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> v_result_1761_line_598 = result;
		int PROBE_END_LINE_598 = 598;
		return v_result_1761_line_598;
    }
    
    /**
     * Method that will find if bean has any managed- or back-reference properties,
     * and if so add them to bean, to be linked during resolution phase.
     */
    protected void addReferenceProperties(DeserializationContext ctxt,
            BeanDescription beanDesc, BeanDeserializerBuilder builder)
        throws JsonMappingException
    {
        int PROBE_START_LINE_610 = 610;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1767_line_610 = beanDesc;
		Map<String, AnnotatedMember> bean_deserializer_factory_1_expr122_line_610 = p_bean_desc_1767_line_610
				.findBackReferenceProperties();
		int PROBE_END_LINE_610 = 610;
		// and then back references, not necessarily found as regular properties
        Map<String,AnnotatedMember> refs = bean_deserializer_factory_1_expr122_line_610;
        int PROBE_START_LINE_611 = 626;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedMember> v_refs_1769_line_611 = refs;
		boolean bean_deserializer_factory_1_expr123_line_611 = v_refs_1769_line_611 != null;
		int PROBE_END_LINE_611 = 626;
		if (bean_deserializer_factory_1_expr123_line_611) {
            for (Map.Entry<String, AnnotatedMember> en : refs.entrySet()) {
                String name = en.getKey();
                AnnotatedMember m = en.getValue();
                Type genericType;
                if (m instanceof AnnotatedMethod) {
                    genericType = ((AnnotatedMethod) m).getGenericParameterType(0);
                } else {
                    genericType = m.getRawType();
                }
                SimpleBeanPropertyDefinition propDef = SimpleBeanPropertyDefinition.construct(
                		ctxt.getConfig(), m);
                builder.addBackReferenceProperty(name, constructSettableProperty(
                        ctxt, beanDesc, propDef, genericType));
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
        int PROBE_START_LINE_637 = 637;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1771_line_637 = beanDesc;
		Map<Object, AnnotatedMember> bean_deserializer_factory_1_expr124_line_637 = p_bean_desc_1771_line_637
				.findInjectables();
		int PROBE_END_LINE_637 = 637;
		Map<Object, AnnotatedMember> raw = bean_deserializer_factory_1_expr124_line_637;
        int PROBE_START_LINE_638 = 649;
		Map<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> v_raw_1773_line_638 = raw;
		boolean bean_deserializer_factory_1_expr125_line_638 = v_raw_1773_line_638 != null;
		int PROBE_END_LINE_638 = 649;
		if (bean_deserializer_factory_1_expr125_line_638) {
            boolean fixAccess = ctxt.canOverrideAccessModifiers();
            for (Map.Entry<Object, AnnotatedMember> entry : raw.entrySet()) {
                AnnotatedMember m = entry.getValue();
                if (fixAccess) {
                    m.fixAccess(); // to ensure we can call it
                }
                builder.addInjectable(new PropertyName(m.getName()),
                        beanDesc.resolveType(m.getGenericType()),
                        beanDesc.getClassAnnotations(), m, entry.getKey());
            }
        }
    }

    /**
     * Method called to construct fallback {@link SettableAnyProperty}
     * for handling unknown bean properties, given a method that
     * has been designated as such setter.
     */
    protected SettableAnyProperty constructAnySetter(DeserializationContext ctxt,
            BeanDescription beanDesc, AnnotatedMethod setter)
        throws JsonMappingException
    {
        if (ctxt.canOverrideAccessModifiers()) {
            setter.fixAccess(); // to ensure we can call it
        }
        // we know it's a 2-arg method, second arg is the value
        JavaType type = beanDesc.bindingsForBeanType().resolveType(setter.getGenericParameterType(1));
        BeanProperty.Std property = new BeanProperty.Std(new PropertyName(setter.getName()),
                type, null, beanDesc.getClassAnnotations(), setter,
                PropertyMetadata.STD_OPTIONAL);
        type = resolveType(ctxt, beanDesc, type, setter);

        /* AnySetter can be annotated with @JsonClass (etc) just like a
         * regular setter... so let's see if those are used.
         * Returns null if no annotations, in which case binding will
         * be done at a later point.
         */
        JsonDeserializer<Object> deser = findDeserializerFromAnnotation(ctxt, setter);
        /* Otherwise, method may specify more specific (sub-)class for
         * value (no need to check if explicit deser was specified):
         */
        type = modifyTypeByAnnotation(ctxt, setter, type);
        if (deser == null) {
            deser = type.getValueHandler();
        }
        TypeDeserializer typeDeser = type.getTypeHandler();
        return new SettableAnyProperty(property, setter, type,
                deser, typeDeser);
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
            Type jdkType)
        throws JsonMappingException
    {
        int PROBE_START_LINE_702 = 702;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1779_line_702 = propDef;
		AnnotatedMember bean_deserializer_factory_1_expr126_line_702 = p_prop_def_1779_line_702
				.getNonConstructorMutator();
		int PROBE_END_LINE_702 = 702;
		// need to ensure method is callable (for non-public)
        AnnotatedMember mutator = bean_deserializer_factory_1_expr126_line_702;
        int PROBE_START_LINE_703 = 705;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1777_line_703 = ctxt;
		boolean bean_deserializer_factory_1_expr127_line_703 = p_ctxt_1777_line_703.canOverrideAccessModifiers();
		int PROBE_END_LINE_703 = 705;
		if (bean_deserializer_factory_1_expr127_line_703) {
            int PROBE_START_LINE_704 = 704;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_1781_line_704 = mutator;
			int PROBE_END_LINE_704 = 704;
			v_mutator_1781_line_704.fixAccess();
        }
        int PROBE_START_LINE_707 = 707;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1778_line_707 = beanDesc;
		java.lang.reflect.Type p_jdk_type_1780_line_707 = jdkType;
		JavaType bean_deserializer_factory_1_expr129_line_707 = p_bean_desc_1778_line_707
				.resolveType(p_jdk_type_1780_line_707);
		int PROBE_END_LINE_707 = 707;
		// note: this works since we know there's exactly one argument for methods
        JavaType t0 = bean_deserializer_factory_1_expr129_line_707;

        int PROBE_START_LINE_709 = 711;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1779_line_709 = propDef;
		com.fasterxml.jackson.databind.PropertyName bean_deserializer_factory_1_expr131_line_709 = p_prop_def_1779_line_709
				.getFullName();
		int PROBE_END_LINE_709 = 711;
		BeanProperty.Std property = new BeanProperty.Std(bean_deserializer_factory_1_expr131_line_709,
                t0, propDef.getWrapperName(),
                beanDesc.getClassAnnotations(), mutator, propDef.getMetadata());
        int PROBE_START_LINE_712 = 712;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1777_line_712 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1778_line_712 = beanDesc;
		com.fasterxml.jackson.databind.JavaType v_t_0_1782_line_712 = t0;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_1781_line_712 = mutator;
		JavaType bean_deserializer_factory_1_expr135_line_712 = resolveType(p_ctxt_1777_line_712,
				p_bean_desc_1778_line_712, v_t_0_1782_line_712, v_mutator_1781_line_712);
		int PROBE_END_LINE_712 = 712;
		JavaType type = bean_deserializer_factory_1_expr135_line_712;
        int PROBE_START_LINE_714 = 716;
		com.fasterxml.jackson.databind.JavaType v_type_1784_line_714 = type;
		com.fasterxml.jackson.databind.JavaType v_t_0_1782_line_714 = t0;
		boolean bean_deserializer_factory_1_expr136_line_714 = v_type_1784_line_714 != v_t_0_1782_line_714;
		int PROBE_END_LINE_714 = 716;
		// did type change?
        if (bean_deserializer_factory_1_expr136_line_714) {
            property = property.withType(type);
        }
        
        int PROBE_START_LINE_721 = 721;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1777_line_721 = ctxt;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_1781_line_721 = mutator;
		JsonDeserializer<Object> bean_deserializer_factory_1_expr137_line_721 = findDeserializerFromAnnotation(
				p_ctxt_1777_line_721, v_mutator_1781_line_721);
		int PROBE_END_LINE_721 = 721;
		/* First: does the Method specify the deserializer to use?
         * If so, let's use it.
         */
        JsonDeserializer<Object> propDeser = bean_deserializer_factory_1_expr137_line_721;
        int PROBE_START_LINE_722 = 722;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1777_line_722 = ctxt;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_1781_line_722 = mutator;
		com.fasterxml.jackson.databind.JavaType v_type_1784_line_722 = type;
		com.fasterxml.jackson.databind.JavaType bean_deserializer_factory_1_expr139_line_722 = modifyTypeByAnnotation(
				p_ctxt_1777_line_722, v_mutator_1781_line_722, v_type_1784_line_722);
		int PROBE_END_LINE_722 = 722;
		type = bean_deserializer_factory_1_expr139_line_722;
        int PROBE_START_LINE_723 = 723;
		com.fasterxml.jackson.databind.JavaType v_type_1784_line_723 = type;
		TypeDeserializer bean_deserializer_factory_1_expr140_line_723 = v_type_1784_line_723.getTypeHandler();
		int PROBE_END_LINE_723 = 723;
		TypeDeserializer typeDeser = bean_deserializer_factory_1_expr140_line_723;
        SettableBeanProperty prop = null;
        int PROBE_START_LINE_725 = 731;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_mutator_1781_line_725 = mutator;
		boolean bean_deserializer_factory_1_expr141_line_725 = v_mutator_1781_line_725 instanceof AnnotatedMethod;
		int PROBE_END_LINE_725 = 731;
		if (bean_deserializer_factory_1_expr141_line_725) {
            prop = new MethodProperty(propDef, type, typeDeser,
                beanDesc.getClassAnnotations(), (AnnotatedMethod) mutator);
        } else {
            int PROBE_START_LINE_729 = 730;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1779_line_729 = propDef;
			com.fasterxml.jackson.databind.JavaType v_type_1784_line_729 = type;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_type_deser_1786_line_729 = typeDeser;
			int PROBE_END_LINE_729 = 730;
			prop = new FieldProperty(p_prop_def_1779_line_729, v_type_1784_line_729, v_type_deser_1786_line_729,
                    beanDesc.getClassAnnotations(), (AnnotatedField) mutator);
        }
        int PROBE_START_LINE_732 = 734;
		JsonDeserializer<Object> v_prop_deser_1785_line_732 = propDeser;
		boolean bean_deserializer_factory_1_expr146_line_732 = v_prop_deser_1785_line_732 != null;
		int PROBE_END_LINE_732 = 734;
		if (bean_deserializer_factory_1_expr146_line_732) {
            prop = prop.withValueDeserializer(propDeser);
        }
        int PROBE_START_LINE_736 = 736;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1779_line_736 = propDef;
		AnnotationIntrospector.ReferenceProperty bean_deserializer_factory_1_expr147_line_736 = p_prop_def_1779_line_736
				.findReferenceType();
		int PROBE_END_LINE_736 = 736;
		// [JACKSON-235]: need to retain name of managed forward references:
        AnnotationIntrospector.ReferenceProperty ref = bean_deserializer_factory_1_expr147_line_736;
        int PROBE_START_LINE_737 = 739;
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_1788_line_737 = ref;
		boolean bean_deserializer_factory_1_expr149_line_737 = v_ref_1788_line_737 != null;
		boolean bean_deserializer_factory_1_expr150_line_737 = true;
		if (bean_deserializer_factory_1_expr149_line_737) {
			com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_1788_line_737_v1 = ref;
			bean_deserializer_factory_1_expr150_line_737 = v_ref_1788_line_737_v1.isManagedReference();
		}
		boolean bean_deserializer_factory_1_expr148_line_737 = bean_deserializer_factory_1_expr149_line_737
				&& bean_deserializer_factory_1_expr150_line_737;
		int PROBE_END_LINE_737 = 739;
		if (bean_deserializer_factory_1_expr148_line_737) {
            prop.setManagedReferenceName(ref.getName());
        }
        int PROBE_START_LINE_740 = 740;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1779_line_740 = propDef;
		ObjectIdInfo bean_deserializer_factory_1_expr151_line_740 = p_prop_def_1779_line_740.findObjectIdInfo();
		int PROBE_END_LINE_740 = 740;
		ObjectIdInfo objectIdInfo = bean_deserializer_factory_1_expr151_line_740;
        int PROBE_START_LINE_741 = 743;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1789_line_741 = objectIdInfo;
		boolean bean_deserializer_factory_1_expr152_line_741 = v_object_id_info_1789_line_741 != null;
		int PROBE_END_LINE_741 = 743;
		if(bean_deserializer_factory_1_expr152_line_741){
            prop.setObjectIdInfo(objectIdInfo);
        }
        int PROBE_START_LINE_744 = 744;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1787_line_744 = prop;
		int PROBE_END_LINE_744 = 744;
		return v_prop_1787_line_744;
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
        // need to ensure it is callable now:
        if (ctxt.canOverrideAccessModifiers()) {
            getter.fixAccess();
        }

        /* 26-Jan-2012, tatu: Alas, this complication is still needed to handle
         *   (or at least work around) local type declarations...
         */
        JavaType type = getter.getType(beanDesc.bindingsForBeanType());
        /* First: does the Method specify the deserializer to use?
         * If so, let's use it.
         */
        JsonDeserializer<Object> propDeser = findDeserializerFromAnnotation(ctxt, getter);
        type = modifyTypeByAnnotation(ctxt, getter, type);
        // As per [Issue#501], need full resolution:
        type = resolveType(ctxt, beanDesc, type, getter);
        TypeDeserializer typeDeser = type.getTypeHandler();
        SettableBeanProperty prop = new SetterlessProperty(propDef, type, typeDeser,
                beanDesc.getClassAnnotations(), getter);
        if (propDeser != null) {
            prop = prop.withValueDeserializer(propDeser);
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
        int PROBE_START_LINE_797 = 797;
		Class<?> p_type_1793_line_797 = type;
		String bean_deserializer_factory_1_expr153_line_797 = ClassUtil.canBeABeanType(p_type_1793_line_797);
		int PROBE_END_LINE_797 = 797;
		String typeStr = bean_deserializer_factory_1_expr153_line_797;
        int PROBE_START_LINE_798 = 800;
		String v_type_str_1794_line_798 = typeStr;
		boolean bean_deserializer_factory_1_expr154_line_798 = v_type_str_1794_line_798 != null;
		int PROBE_END_LINE_798 = 800;
		if (bean_deserializer_factory_1_expr154_line_798) {
            throw new IllegalArgumentException("Can not deserialize Class "+type.getName()+" (of type "+typeStr+") as a Bean");
        }
        int PROBE_START_LINE_801 = 803;
		Class<?> p_type_1793_line_801 = type;
		boolean bean_deserializer_factory_1_expr155_line_801 = ClassUtil.isProxyType(p_type_1793_line_801);
		int PROBE_END_LINE_801 = 803;
		if (bean_deserializer_factory_1_expr155_line_801) {
            throw new IllegalArgumentException("Can not deserialize Proxy class "+type.getName()+" as a Bean");
        }
        int PROBE_START_LINE_807 = 807;
		Class<?> p_type_1793_line_807 = type;
		String bean_deserializer_factory_1_expr157_line_807 = ClassUtil.isLocalType(p_type_1793_line_807, true);
		int PROBE_END_LINE_807 = 807;
		/* also: can't deserialize some local classes: static are ok; in-method not;
         * and with [JACKSON-594], other non-static inner classes are ok
         */
        typeStr = bean_deserializer_factory_1_expr157_line_807;
        int PROBE_START_LINE_808 = 810;
		String v_type_str_1794_line_808 = typeStr;
		boolean bean_deserializer_factory_1_expr158_line_808 = v_type_str_1794_line_808 != null;
		int PROBE_END_LINE_808 = 810;
		if (bean_deserializer_factory_1_expr158_line_808) {
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
        int PROBE_START_LINE_821 = 821;
		Map<Class<?>, Boolean> p_ignored_types_1798_line_821 = ignoredTypes;
		Class<?> p_type_1797_line_821 = type;
		Boolean bean_deserializer_factory_1_expr159_line_821 = p_ignored_types_1798_line_821.get(p_type_1797_line_821);
		int PROBE_END_LINE_821 = 821;
		Boolean status = bean_deserializer_factory_1_expr159_line_821;
        int PROBE_START_LINE_822 = 824;
		Boolean v_status_1799_line_822 = status;
		boolean bean_deserializer_factory_1_expr160_line_822 = v_status_1799_line_822 != null;
		int PROBE_END_LINE_822 = 824;
		if (bean_deserializer_factory_1_expr160_line_822) {
            return status.booleanValue();
        }
        int PROBE_START_LINE_825 = 825;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1795_line_825 = config;
		Class<?> p_type_1797_line_825 = type;
		BeanDescription bean_deserializer_factory_1_expr161_line_825 = p_config_1795_line_825
				.introspectClassAnnotations(p_type_1797_line_825);
		int PROBE_END_LINE_825 = 825;
		BeanDescription desc = bean_deserializer_factory_1_expr161_line_825;
        int PROBE_START_LINE_826 = 826;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1795_line_826 = config;
		com.fasterxml.jackson.databind.AnnotationIntrospector bean_deserializer_factory_1_expr165_line_826 = p_config_1795_line_826
				.getAnnotationIntrospector();
		com.fasterxml.jackson.databind.BeanDescription v_desc_1800_line_826 = desc;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass bean_deserializer_factory_1_expr164_line_826 = v_desc_1800_line_826
				.getClassInfo();
		Boolean bean_deserializer_factory_1_expr163_line_826 = bean_deserializer_factory_1_expr165_line_826
				.isIgnorableType(bean_deserializer_factory_1_expr164_line_826);
		int PROBE_END_LINE_826 = 826;
		status = bean_deserializer_factory_1_expr163_line_826;
        int PROBE_START_LINE_828 = 828;
		Boolean v_status_1799_line_828 = status;
		boolean bean_deserializer_factory_1_expr169_line_828 = v_status_1799_line_828 == null;
		boolean bean_deserializer_factory_1_expr167_line_828 = (bean_deserializer_factory_1_expr169_line_828);
		boolean bean_deserializer_factory_1_expr168_line_828 = false;
		if (!bean_deserializer_factory_1_expr167_line_828) {
			Boolean v_status_1799_line_828_v1 = status;
			bean_deserializer_factory_1_expr168_line_828 = v_status_1799_line_828_v1.booleanValue();
		}
		boolean bean_deserializer_factory_1_expr166_line_828 = bean_deserializer_factory_1_expr167_line_828
				? false
				: bean_deserializer_factory_1_expr168_line_828;
		int PROBE_END_LINE_828 = 828;
		// We default to 'false', i.e. not ignorable
        return bean_deserializer_factory_1_expr166_line_828; 
    }
}
