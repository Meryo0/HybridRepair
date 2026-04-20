package com.fasterxml.jackson.databind.ser;

import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.util.*;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.impl.*;
import com.fasterxml.jackson.databind.ser.std.*;
import com.fasterxml.jackson.databind.type.*;
import com.fasterxml.jackson.databind.util.*;
import java.util.Collection;
import java.util.Map.Entry;
import com.fasterxml.jackson.databind.JsonSerializer;
import java.util.HashMap;

/**
 * Factory class that can provide serializers for standard JDK classes,
 * as well as custom classes that extend standard classes or implement
 * one of "well-known" interfaces (such as {@link java.util.Collection}).
 *<p>
 * Since all the serializers are eagerly instantiated, and there is
 * no additional introspection or customizability of these types,
 * this factory is essentially stateless.
 */
@SuppressWarnings("serial")
public abstract class BasicSerializerFactory
    extends SerializerFactory
    implements java.io.Serializable
{
    /*
    /**********************************************************
    /* Configuration, lookup tables/maps
    /**********************************************************
     */

    /**
     * Since these are all JDK classes, we shouldn't have to worry
     * about ClassLoader used to load them. Rather, we can just
     * use the class name, and keep things simple and efficient.
     */
    protected final static HashMap<String, JsonSerializer<?>> _concrete =
        new HashMap<String, JsonSerializer<?>>();
    
    /**
     * Actually it may not make much sense to eagerly instantiate all
     * kinds of serializers: so this Map actually contains class references,
     * not instances
     */
    protected final static HashMap<String, Class<? extends JsonSerializer<?>>> _concreteLazy =
        new HashMap<String, Class<? extends JsonSerializer<?>>>();
    
    static {
        int PROBE_START_LINE_66 = 66;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_66 = _concrete;
		String basic_serializer_factory_1_expr4_line_66 = String.class.getName();
		int PROBE_END_LINE_66 = 66;
		/* String and string-like types (note: date types explicitly
         * not included -- can use either textual or numeric serialization)
         */
        f__concrete_3363_line_66.put(basic_serializer_factory_1_expr4_line_66, new StringSerializer());
        int PROBE_START_LINE_67 = 67;
		ToStringSerializer q_instance_123_line_67 = ToStringSerializer.instance;
		int PROBE_END_LINE_67 = 67;
		final ToStringSerializer sls = q_instance_123_line_67;
        int PROBE_START_LINE_68 = 68;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_68 = _concrete;
		String basic_serializer_factory_1_expr8_line_68 = StringBuffer.class.getName();
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_3365_line_68 = sls;
		int PROBE_END_LINE_68 = 68;
		f__concrete_3363_line_68.put(basic_serializer_factory_1_expr8_line_68, v_sls_3365_line_68);
        int PROBE_START_LINE_69 = 69;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_69 = _concrete;
		String basic_serializer_factory_1_expr11_line_69 = StringBuilder.class.getName();
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_3365_line_69 = sls;
		int PROBE_END_LINE_69 = 69;
		f__concrete_3363_line_69.put(basic_serializer_factory_1_expr11_line_69, v_sls_3365_line_69);
        int PROBE_START_LINE_70 = 70;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_70 = _concrete;
		String basic_serializer_factory_1_expr14_line_70 = Character.class.getName();
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_3365_line_70 = sls;
		int PROBE_END_LINE_70 = 70;
		f__concrete_3363_line_70.put(basic_serializer_factory_1_expr14_line_70, v_sls_3365_line_70);
        int PROBE_START_LINE_71 = 71;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_71 = _concrete;
		Class<Character> q_type_124_line_71 = Character.TYPE;
		String basic_serializer_factory_1_expr17_line_71 = q_type_124_line_71.getName();
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_3365_line_71 = sls;
		int PROBE_END_LINE_71 = 71;
		f__concrete_3363_line_71.put(basic_serializer_factory_1_expr17_line_71, v_sls_3365_line_71);

        int PROBE_START_LINE_74 = 74;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_74 = _concrete;
		int PROBE_END_LINE_74 = 74;
		// Primitives/wrappers for primitives (primitives needed for Beans)
        NumberSerializers.addAll(f__concrete_3363_line_74);
        int PROBE_START_LINE_75 = 75;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_75 = _concrete;
		Class<Boolean> q_type_125_line_75 = Boolean.TYPE;
		String basic_serializer_factory_1_expr20_line_75 = q_type_125_line_75.getName();
		int PROBE_END_LINE_75 = 75;
		f__concrete_3363_line_75.put(basic_serializer_factory_1_expr20_line_75, new BooleanSerializer(true));
        int PROBE_START_LINE_76 = 76;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_76 = _concrete;
		String basic_serializer_factory_1_expr23_line_76 = Boolean.class.getName();
		int PROBE_END_LINE_76 = 76;
		f__concrete_3363_line_76.put(basic_serializer_factory_1_expr23_line_76, new BooleanSerializer(false));

        int PROBE_START_LINE_79 = 79;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_79 = _concrete;
		String basic_serializer_factory_1_expr27_line_79 = BigInteger.class.getName();
		int PROBE_END_LINE_79 = 79;
		// Other numbers, more complicated
        f__concrete_3363_line_79.put(basic_serializer_factory_1_expr27_line_79, new NumberSerializer(BigInteger.class));
        int PROBE_START_LINE_80 = 80;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_80 = _concrete;
		String basic_serializer_factory_1_expr32_line_80 = BigDecimal.class.getName();
		int PROBE_END_LINE_80 = 80;
		f__concrete_3363_line_80.put(basic_serializer_factory_1_expr32_line_80,new NumberSerializer(BigDecimal.class));

        int PROBE_START_LINE_84 = 84;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_84 = _concrete;
		String basic_serializer_factory_1_expr37_line_84 = Calendar.class.getName();
		com.fasterxml.jackson.databind.ser.std.CalendarSerializer q_instance_125_line_84 = CalendarSerializer.instance;
		int PROBE_END_LINE_84 = 84;
		// Other discrete non-container types:
        // First, Date/Time zoo:
        f__concrete_3363_line_84.put(basic_serializer_factory_1_expr37_line_84, q_instance_125_line_84);
        int PROBE_START_LINE_85 = 85;
		DateSerializer q_instance_126_line_85 = DateSerializer.instance;
		int PROBE_END_LINE_85 = 85;
		DateSerializer dateSer = q_instance_126_line_85;
        int PROBE_START_LINE_86 = 86;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_86 = _concrete;
		String basic_serializer_factory_1_expr40_line_86 = java.util.Date.class.getName();
		com.fasterxml.jackson.databind.ser.std.DateSerializer v_date_ser_3368_line_86 = dateSer;
		int PROBE_END_LINE_86 = 86;
		f__concrete_3363_line_86.put(basic_serializer_factory_1_expr40_line_86, v_date_ser_3368_line_86);
        int PROBE_START_LINE_88 = 88;
		HashMap<String, JsonSerializer<?>> f__concrete_3363_line_88 = _concrete;
		String basic_serializer_factory_1_expr43_line_88 = java.sql.Timestamp.class.getName();
		com.fasterxml.jackson.databind.ser.std.DateSerializer v_date_ser_3368_line_88 = dateSer;
		int PROBE_END_LINE_88 = 88;
		// note: timestamps are very similar to java.util.Date, thus serialized as such
        f__concrete_3363_line_88.put(basic_serializer_factory_1_expr43_line_88, v_date_ser_3368_line_88);
        
        int PROBE_START_LINE_91 = 91;
		HashMap<String, Class<? extends JsonSerializer<?>>> f__concrete_lazy_3364_line_91 = _concreteLazy;
		String basic_serializer_factory_1_expr46_line_91 = java.sql.Date.class.getName();
		int PROBE_END_LINE_91 = 91;
		// leave some of less commonly used ones as lazy, no point in proactive construction
        f__concrete_lazy_3364_line_91.put(basic_serializer_factory_1_expr46_line_91, SqlDateSerializer.class);
        int PROBE_START_LINE_92 = 92;
		HashMap<String, Class<? extends JsonSerializer<?>>> f__concrete_lazy_3364_line_92 = _concreteLazy;
		String basic_serializer_factory_1_expr50_line_92 = java.sql.Time.class.getName();
		int PROBE_END_LINE_92 = 92;
		f__concrete_lazy_3364_line_92.put(basic_serializer_factory_1_expr50_line_92, SqlTimeSerializer.class);

        int PROBE_START_LINE_95 = 106;
		Collection<java.util.Map.Entry<Class<?>, Object>> basic_serializer_factory_1_expr53_line_95 = StdJdkSerializers
				.all();
		int PROBE_END_LINE_95 = 106;
		// And then other standard non-structured JDK types
        for (Map.Entry<Class<?>,Object> en : basic_serializer_factory_1_expr53_line_95) {
            int PROBE_START_LINE_96 = 96;
			java.util.Map.Entry<Class<?>, Object> v_en_3369_line_96 = en;
			Object basic_serializer_factory_1_expr54_line_96 = v_en_3369_line_96.getValue();
			int PROBE_END_LINE_96 = 96;
			Object value = basic_serializer_factory_1_expr54_line_96;
            int PROBE_START_LINE_97 = 105;
			Object v_value_3370_line_97 = value;
			boolean basic_serializer_factory_1_expr55_line_97 = v_value_3370_line_97 instanceof JsonSerializer<?>;
			int PROBE_END_LINE_97 = 105;
			if (basic_serializer_factory_1_expr55_line_97) {
                int PROBE_START_LINE_98 = 98;
				HashMap<String, JsonSerializer<?>> f__concrete_3363_line_98 = _concrete;
				java.util.Map.Entry<Class<?>, Object> v_en_3369_line_98 = en;
				Class<?> basic_serializer_factory_1_expr59_line_98 = v_en_3369_line_98.getKey();
				String basic_serializer_factory_1_expr57_line_98 = basic_serializer_factory_1_expr59_line_98.getName();
				Object v_value_3370_line_98 = value;
				int PROBE_END_LINE_98 = 98;
				f__concrete_3363_line_98.put(basic_serializer_factory_1_expr57_line_98, (JsonSerializer<?>) v_value_3370_line_98);
            } else {
				int PROBE_START_LINE_99 = 105;
				Object v_value_3370_line_99 = value;
				boolean basic_serializer_factory_1_expr60_line_99 = v_value_3370_line_99 instanceof Class<?>;
				int PROBE_END_LINE_99 = 105;
				if (basic_serializer_factory_1_expr60_line_99) {
					int PROBE_START_LINE_100 = 101;
					Object v_value_3370_line_101 = value;
					int PROBE_END_LINE_100 = 101;
					@SuppressWarnings("unchecked")
					Class<? extends JsonSerializer<?>> cls = (Class<? extends JsonSerializer<?>>) v_value_3370_line_101;
					int PROBE_START_LINE_102 = 102;
					HashMap<String, Class<? extends JsonSerializer<?>>> f__concrete_lazy_3364_line_102 = _concreteLazy;
					java.util.Map.Entry<Class<?>, Object> v_en_3369_line_102 = en;
					Class<?> basic_serializer_factory_1_expr64_line_102 = v_en_3369_line_102.getKey();
					String basic_serializer_factory_1_expr63_line_102 = basic_serializer_factory_1_expr64_line_102
							.getName();
					Class<? extends JsonSerializer<?>> v_cls_3371_line_102 = cls;
					int PROBE_END_LINE_102 = 102;
					f__concrete_lazy_3364_line_102.put(basic_serializer_factory_1_expr63_line_102, v_cls_3371_line_102);
				} else {
					throw new IllegalStateException(
							"Internal error: unrecognized value of type " + en.getClass().getName());
				}
			}
        }

        int PROBE_START_LINE_110 = 110;
		HashMap<String, Class<? extends JsonSerializer<?>>> f__concrete_lazy_3364_line_110 = _concreteLazy;
		String basic_serializer_factory_1_expr66_line_110 = TokenBuffer.class.getName();
		int PROBE_END_LINE_110 = 110;
		// Jackson-specific type(s)
        // (Q: can this ever be sub-classed?)
        f__concrete_lazy_3364_line_110.put(basic_serializer_factory_1_expr66_line_110, TokenBufferSerializer.class);
    }

    /*
    /**********************************************************
    /* Configuration
    /**********************************************************
     */
    
    /**
     * Configuration settings for this factory; immutable instance (just like this
     * factory), new version created via copy-constructor (fluent-style)
     */
    protected final SerializerFactoryConfig _factoryConfig;

    /*
    /**********************************************************
    /* Life cycle
    /**********************************************************
     */

    /**
     * We will provide default constructor to allow sub-classing,
     * but make it protected so that no non-singleton instances of
     * the class will be instantiated.
     */
    protected BasicSerializerFactory(SerializerFactoryConfig config) {
        int PROBE_START_LINE_137 = 137;
		com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig p_config_3372_line_137 = config;
		boolean basic_serializer_factory_1_expr73_line_137 = p_config_3372_line_137 == null;
		boolean basic_serializer_factory_1_expr71_line_137 = (basic_serializer_factory_1_expr73_line_137);
		com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig p_config_3372_line_137_v1 = null;
		if (!basic_serializer_factory_1_expr71_line_137) {
			p_config_3372_line_137_v1 = config;
		}
		com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig basic_serializer_factory_1_expr70_line_137 = basic_serializer_factory_1_expr71_line_137
				? new SerializerFactoryConfig()
				: p_config_3372_line_137_v1;
		int PROBE_END_LINE_137 = 137;
		_factoryConfig = basic_serializer_factory_1_expr70_line_137;
    }
    
    /**
     * Method for getting current {@link SerializerFactoryConfig}.
      *<p>
     * Note that since instances are immutable, you can NOT change settings
     * by accessing an instance and calling methods: this will simply create
     * new instance of config object.
     */
    public SerializerFactoryConfig getFactoryConfig() {
        return _factoryConfig;
    }

    /**
     * Method used for creating a new instance of this factory, but with different
     * configuration. Reason for specifying factory method (instead of plain constructor)
     * is to allow proper sub-classing of factories.
     *<p>
     * Note that custom sub-classes generally <b>must override</b> implementation
     * of this method, as it usually requires instantiating a new instance of
     * factory type. Check out javadocs for
     * {@link com.fasterxml.jackson.databind.ser.BeanSerializerFactory} for more details.
     */
    public abstract SerializerFactory withConfig(SerializerFactoryConfig config);

    /**
     * Convenience method for creating a new factory instance with an additional
     * serializer provider.
     */
    @Override
    public final SerializerFactory withAdditionalSerializers(Serializers additional) {
        return withConfig(_factoryConfig.withAdditionalSerializers(additional));
    }

    /**
     * Convenience method for creating a new factory instance with an additional
     * key serializer provider.
     */
    @Override
    public final SerializerFactory withAdditionalKeySerializers(Serializers additional) {
        return withConfig(_factoryConfig.withAdditionalKeySerializers(additional));
    }
    
    /**
     * Convenience method for creating a new factory instance with additional bean
     * serializer modifier.
     */
    @Override
    public final SerializerFactory withSerializerModifier(BeanSerializerModifier modifier) {
        return withConfig(_factoryConfig.withSerializerModifier(modifier));
    }

    /*
    /**********************************************************
    /* SerializerFactory impl
    /**********************************************************
     */
    
    // Implemented by sub-classes
    @Override
    public abstract JsonSerializer<Object> createSerializer(SerializerProvider prov,
            JavaType type)
        throws JsonMappingException;

    @Override
    @SuppressWarnings("unchecked")
    public JsonSerializer<Object> createKeySerializer(SerializationConfig config,
            JavaType keyType, JsonSerializer<Object> defaultImpl)
    {
        // We should not need any member method info; at most class annotations for Map type
        // ... at least, not here.
        BeanDescription beanDesc = config.introspectClassAnnotations(keyType.getRawClass());
        JsonSerializer<?> ser = null;
        // Minor optimization: to avoid constructing beanDesc, bail out if none registered
        if (_factoryConfig.hasKeySerializers()) {
            // Only thing we have here are module-provided key serializers:
            for (Serializers serializers : _factoryConfig.keySerializers()) {
                ser = serializers.findSerializer(config, keyType, beanDesc);
                if (ser != null) {
                    break;
                }
            }
        }
        if (ser == null) {
            ser = defaultImpl;
            if (ser == null) {
                ser = StdKeySerializers.getStdKeySerializer(config, keyType.getRawClass(), false);
                // As per [databind#47], also need to support @JsonValue
                if (ser == null) {
                    beanDesc = config.introspect(keyType);
                    AnnotatedMethod am = beanDesc.findJsonValueMethod();
                    if (am != null) {
                        final Class<?> rawType = am.getRawReturnType();
                        JsonSerializer<?> delegate = StdKeySerializers.getStdKeySerializer(config,
                                rawType, true);
                        Method m = am.getAnnotated();
                        if (config.canOverrideAccessModifiers()) {
                            ClassUtil.checkAndFixAccess(m);
                        }
                        ser = new JsonValueSerializer(m, delegate);
                    } else {
                        ser = StdKeySerializers.getDefault();
                    }
                }
            }
        }
        
        // [Issue#120]: Allow post-processing
        if (_factoryConfig.hasSerializerModifiers()) {
            for (BeanSerializerModifier mod : _factoryConfig.serializerModifiers()) {
                ser = mod.modifyKeySerializer(config, keyType, beanDesc, ser);
            }
        }
        return (JsonSerializer<Object>) ser;
    }

    /**
     * Method called to construct a type serializer for values with given declared
     * base type. This is called for values other than those of bean property
     * types.
     */
    @Override
    public TypeSerializer createTypeSerializer(SerializationConfig config,
            JavaType baseType)
    {
        BeanDescription bean = config.introspectClassAnnotations(baseType.getRawClass());
        AnnotatedClass ac = bean.getClassInfo();
        AnnotationIntrospector ai = config.getAnnotationIntrospector();
        TypeResolverBuilder<?> b = ai.findTypeResolver(config, ac, baseType);
        /* Ok: if there is no explicit type info handler, we may want to
         * use a default. If so, config object knows what to use.
         */
        Collection<NamedType> subtypes = null;
        if (b == null) {
            b = config.getDefaultTyper(baseType);
        } else {
            subtypes = config.getSubtypeResolver().collectAndResolveSubtypes(ac, config, ai);
        }
        if (b == null) {
            return null;
        }
        return b.buildTypeSerializer(config, baseType, subtypes);
    }

    /*
    /**********************************************************
    /* Additional API for other core classes
    /**********************************************************
     */

    protected abstract Iterable<Serializers> customSerializers();

    /*
    /**********************************************************
    /* Overridable secondary serializer accessor methods
    /**********************************************************
     */
    
    /**
     * Method that will use fast lookup (and identity comparison) methods to
     * see if we know serializer to use for given type.
     */
    protected final JsonSerializer<?> findSerializerByLookup(JavaType type,
            SerializationConfig config, BeanDescription beanDesc,
            boolean staticTyping)
    {
        Class<?> raw = type.getRawClass();
        String clsName = raw.getName();
        JsonSerializer<?> ser = _concrete.get(clsName);
        if (ser == null) {
            Class<? extends JsonSerializer<?>> serClass = _concreteLazy.get(clsName);
            if (serClass != null) {
                try {
                    return serClass.newInstance();
                } catch (Exception e) {
                    throw new IllegalStateException("Failed to instantiate standard serializer (of type "+serClass.getName()+"): "
                            +e.getMessage(), e);
                }
            }
        }
        return ser;
    }

    /**
     * Method called to see if one of primary per-class annotations
     * (or related, like implementing of {@link JsonSerializable})
     * determines the serializer to use.
     *<p>
     * Currently handles things like:
     *<ul>
     * <li>If type implements {@link JsonSerializable}, use that
     *  </li>
     * <li>If type has {@link com.fasterxml.jackson.annotation.JsonValue} annotation (or equivalent), build serializer
     *    based on that property
     *  </li>
     *</ul>
     *
     * @since 2.0
     */
    protected final JsonSerializer<?> findSerializerByAnnotations(SerializerProvider prov, 
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        Class<?> raw = type.getRawClass();
        // First: JsonSerializable?
        if (JsonSerializable.class.isAssignableFrom(raw)) {
            return SerializableSerializer.instance;
        }
        // Second: @JsonValue for any type
        AnnotatedMethod valueMethod = beanDesc.findJsonValueMethod();
        if (valueMethod != null) {
            Method m = valueMethod.getAnnotated();
            if (prov.canOverrideAccessModifiers()) {
                ClassUtil.checkAndFixAccess(m);
            }
            JsonSerializer<Object> ser = findSerializerFromAnnotation(prov, valueMethod);
            return new JsonValueSerializer(m, ser);
        }
        // No well-known annotations...
        return null;
    }
    
    /**
     * Method for checking if we can determine serializer to use based on set of
     * known primary types, checking for set of known base types (exact matches
     * having been compared against with <code>findSerializerByLookup</code>).
     * This does not include "secondary" interfaces, but
     * mostly concrete or abstract base classes.
     */
    protected final JsonSerializer<?> findSerializerByPrimaryType(SerializerProvider prov, 
            JavaType type, BeanDescription beanDesc,
            boolean staticTyping)
        throws JsonMappingException
    {
        Class<?> raw = type.getRawClass();
        
        // Then check for optional/external serializers [JACKSON-386]
        JsonSerializer<?> ser = findOptionalStdSerializer(prov, type, beanDesc, staticTyping);
        if (ser != null) {
            return ser;
        }
        
        if (Calendar.class.isAssignableFrom(raw)) {
            return CalendarSerializer.instance;
        }
        if (java.util.Date.class.isAssignableFrom(raw)) {
            return DateSerializer.instance;
        }
        if (Map.Entry.class.isAssignableFrom(raw)) {
            JavaType kt, vt;
            JavaType[] params = prov.getTypeFactory().findTypeParameters(type, Map.Entry.class);
            if (params == null || params.length != 2) { // assume that if we don't get 2, they are wrong...
                kt = vt = TypeFactory.unknownType();
            } else {
                kt = params[0];
                vt = params[1];
            }
            return buildMapEntrySerializer(prov.getConfig(), type, beanDesc, staticTyping, kt, vt);
        }
        if (ByteBuffer.class.isAssignableFrom(raw)) {
            return new ByteBufferSerializer();
        }
        if (InetAddress.class.isAssignableFrom(raw)) {
            return new InetAddressSerializer();
        }
        if (InetSocketAddress.class.isAssignableFrom(raw)) {
            return new InetSocketAddressSerializer();
        }
        if (TimeZone.class.isAssignableFrom(raw)) {
            return new TimeZoneSerializer();
        }
        if (java.nio.charset.Charset.class.isAssignableFrom(raw)) {
            return ToStringSerializer.instance;
        }
        if (Number.class.isAssignableFrom(raw)) {
            // 21-May-2014, tatu: Couple of alternatives actually
            JsonFormat.Value format = beanDesc.findExpectedFormat(null);
            if (format != null) {
                switch (format.getShape()) {
                case STRING:
                    return ToStringSerializer.instance;
                case OBJECT: // need to bail out to let it be serialized as POJO
                case ARRAY: // or, I guess ARRAY; otherwise no point in speculating
                    return null;
                default:
                }
            }
            return NumberSerializer.instance;
        }
        if (Enum.class.isAssignableFrom(raw)) {
            return buildEnumSerializer(prov.getConfig(), type, beanDesc);
        }
        return null;
    }

    /**
     * Overridable method called after checking all other types.
     * 
     * @since 2.2
     */
    protected JsonSerializer<?> findOptionalStdSerializer(SerializerProvider prov, 
            JavaType type, BeanDescription beanDesc, boolean staticTyping)
        throws JsonMappingException
    {
        return OptionalHandlerFactory.instance.findSerializer(prov.getConfig(), type, beanDesc);
    }
        
    /**
     * Reflection-based serialized find method, which checks if
     * given class implements one of recognized "add-on" interfaces.
     * Add-on here means a role that is usually or can be a secondary
     * trait: for example,
     * bean classes may implement {@link Iterable}, but their main
     * function is usually something else. The reason for
     */
    protected final JsonSerializer<?> findSerializerByAddonType(SerializationConfig config,
            JavaType javaType, BeanDescription beanDesc, boolean staticTyping) throws JsonMappingException
    {
        Class<?> type = javaType.getRawClass();

        if (Iterator.class.isAssignableFrom(type)) {
            JavaType[] params = config.getTypeFactory().findTypeParameters(javaType, Iterator.class);
            JavaType vt = (params == null || params.length != 1) ?
                    TypeFactory.unknownType() : params[0];
            return buildIteratorSerializer(config, javaType, beanDesc, staticTyping, vt);
        }
        if (Iterable.class.isAssignableFrom(type)) {
            JavaType[] params = config.getTypeFactory().findTypeParameters(javaType, Iterable.class);
            JavaType vt = (params == null || params.length != 1) ?
                    TypeFactory.unknownType() : params[0];
            return buildIterableSerializer(config, javaType, beanDesc,  staticTyping, vt);
        }
        if (CharSequence.class.isAssignableFrom(type)) {
            return ToStringSerializer.instance;
        }
        return null;
    }
    
    /**
     * Helper method called to check if a class or method
     * has an annotation
     * (@link com.fasterxml.jackson.databind.annotation.JsonSerialize#using)
     * that tells the class to use for serialization.
     * Returns null if no such annotation found.
     */
    @SuppressWarnings("unchecked")
    protected JsonSerializer<Object> findSerializerFromAnnotation(SerializerProvider prov,
            Annotated a)
        throws JsonMappingException
    {
        Object serDef = prov.getAnnotationIntrospector().findSerializer(a);
        if (serDef == null) {
            return null;
        }
        JsonSerializer<Object> ser = prov.serializerInstance(a, serDef);
        // One more thing however: may need to also apply a converter:
        return (JsonSerializer<Object>) findConvertingSerializer(prov, a, ser);
    }

    /**
     * Helper method that will check whether given annotated entity (usually class,
     * but may also be a property accessor) indicates that a {@link Converter} is to
     * be used; and if so, to construct and return suitable serializer for it.
     * If not, will simply return given serializer as is.
     */
    protected JsonSerializer<?> findConvertingSerializer(SerializerProvider prov,
            Annotated a, JsonSerializer<?> ser)
        throws JsonMappingException
    {
        Converter<Object,Object> conv = findConverter(prov, a);
        if (conv == null) {
            return ser;
        }
        JavaType delegateType = conv.getOutputType(prov.getTypeFactory());
        return new StdDelegatingSerializer(conv, delegateType, ser);
    }

    protected Converter<Object,Object> findConverter(SerializerProvider prov,
            Annotated a)
        throws JsonMappingException
    {
        Object convDef = prov.getAnnotationIntrospector().findSerializationConverter(a);
        if (convDef == null) {
            return null;
        }
        return prov.converterInstance(a, convDef);
    }
    
    /*
    /**********************************************************
    /* Factory methods, container types:
    /**********************************************************
     */

    /**
     * @since 2.1
     */
    protected JsonSerializer<?> buildContainerSerializer(SerializerProvider prov,
            JavaType type, BeanDescription beanDesc, boolean staticTyping)
        throws JsonMappingException
    {
        final SerializationConfig config = prov.getConfig();

        /* [Issue#23], 15-Mar-2013, tatu: must force static handling of root value type,
         *   with just one important exception: if value type is "untyped", let's
         *   leave it as is; no clean way to make it work.
         */
        if (!staticTyping && type.useStaticType()) {
            if (!type.isContainerType() || type.getContentType().getRawClass() != Object.class) {
                staticTyping = true;
            }
        }
        
        // Let's see what we can learn about element/content/value type, type serializer for it:
        JavaType elementType = type.getContentType();
        TypeSerializer elementTypeSerializer = createTypeSerializer(config,
                elementType);

        // if elements have type serializer, can not force static typing:
        if (elementTypeSerializer != null) {
            staticTyping = false;
        }
        JsonSerializer<Object> elementValueSerializer = _findContentSerializer(prov,
                beanDesc.getClassInfo());
        
        if (type.isMapLikeType()) { // implements java.util.Map
            MapLikeType mlt = (MapLikeType) type;
            /* 29-Sep-2012, tatu: This is actually too early to (try to) find
             *  key serializer from property annotations, and can lead to caching
             *  issues (see [Issue#75]). Instead, must be done from 'createContextual()' call.
             *  But we do need to check class annotations.
             */
            JsonSerializer<Object> keySerializer = _findKeySerializer(prov, beanDesc.getClassInfo());
            if (mlt.isTrueMapType()) {
                return buildMapSerializer(config, (MapType) mlt, beanDesc, staticTyping,
                        keySerializer, elementTypeSerializer, elementValueSerializer);
            }
            // Only custom serializers may be available:
            for (Serializers serializers : customSerializers()) {
                MapLikeType mlType = (MapLikeType) type;
                JsonSerializer<?> ser = serializers.findMapLikeSerializer(config,
                        mlType, beanDesc, keySerializer, elementTypeSerializer, elementValueSerializer);
                if (ser != null) {
                    // [Issue#120]: Allow post-processing
                    if (_factoryConfig.hasSerializerModifiers()) {
                        for (BeanSerializerModifier mod : _factoryConfig.serializerModifiers()) {
                            ser = mod.modifyMapLikeSerializer(config, mlType, beanDesc, ser);
                        }
                    }
                    return ser;
                }
            }
            return null;
        }
        if (type.isCollectionLikeType()) {
            CollectionLikeType clt = (CollectionLikeType) type;
            if (clt.isTrueCollectionType()) {
                return buildCollectionSerializer(config,  (CollectionType) clt, beanDesc, staticTyping,
                        elementTypeSerializer, elementValueSerializer);
            }
            CollectionLikeType clType = (CollectionLikeType) type;
            // Only custom variants for this:
            for (Serializers serializers : customSerializers()) {
                JsonSerializer<?> ser = serializers.findCollectionLikeSerializer(config,
                        clType, beanDesc, elementTypeSerializer, elementValueSerializer);
                if (ser != null) {
                    // [Issue#120]: Allow post-processing
                    if (_factoryConfig.hasSerializerModifiers()) {
                        for (BeanSerializerModifier mod : _factoryConfig.serializerModifiers()) {
                            ser = mod.modifyCollectionLikeSerializer(config, clType, beanDesc, ser);
                        }
                    }
                    return ser;
                }
            }
            // fall through either way (whether shape dictates serialization as POJO or not)
            return null;
        }
        if (type.isArrayType()) {
            return buildArraySerializer(config, (ArrayType) type, beanDesc, staticTyping,
                    elementTypeSerializer, elementValueSerializer);
        }
        return null;
    }

    /**
     * Helper method that handles configuration details when constructing serializers for
     * {@link java.util.List} types that support efficient by-index access
     * 
     * @since 2.1
     */
    protected JsonSerializer<?> buildCollectionSerializer(SerializationConfig config,
            CollectionType type, BeanDescription beanDesc, boolean staticTyping,
            TypeSerializer elementTypeSerializer, JsonSerializer<Object> elementValueSerializer) 
        throws JsonMappingException
    {
        JsonSerializer<?> ser = null;
        // Module-provided custom collection serializers?
        for (Serializers serializers : customSerializers()) {
            ser = serializers.findCollectionSerializer(config,
                    type, beanDesc, elementTypeSerializer, elementValueSerializer);
            if (ser != null) {
                break;
            }
        }

        if (ser == null) {
            // We may also want to use serialize Collections "as beans", if (and only if)
            // this is specified with `@JsonFormat(shape=Object)`
            JsonFormat.Value format = beanDesc.findExpectedFormat(null);
            if (format != null && format.getShape() == JsonFormat.Shape.OBJECT) {
                return null;
            }
            Class<?> raw = type.getRawClass();
            if (EnumSet.class.isAssignableFrom(raw)) {
                // this may or may not be available (Class doesn't; type of field/method does)
                JavaType enumType = type.getContentType();
                // and even if nominally there is something, only use if it really is enum
                if (!enumType.isEnumType()) {
                    enumType = null;
                }
                ser = buildEnumSetSerializer(enumType);
            } else {
                Class<?> elementRaw = type.getContentType().getRawClass();
                if (isIndexedList(raw)) {
                    if (elementRaw == String.class) {
                        // [JACKSON-829] Must NOT use if we have custom serializer
                        if (elementValueSerializer == null || ClassUtil.isJacksonStdImpl(elementValueSerializer)) {
                            ser = IndexedStringListSerializer.instance;
                        }
                    } else {
                        ser = buildIndexedListSerializer(type.getContentType(), staticTyping,
                            elementTypeSerializer, elementValueSerializer);
                    }
                } else if (elementRaw == String.class) {
                    // [JACKSON-829] Must NOT use if we have custom serializer
                    if (elementValueSerializer == null || ClassUtil.isJacksonStdImpl(elementValueSerializer)) {
                        ser = StringCollectionSerializer.instance;
                    }
                }
                if (ser == null) {
                    ser = buildCollectionSerializer(type.getContentType(), staticTyping,
                            elementTypeSerializer, elementValueSerializer);
                }
            }
        }
        // [Issue#120]: Allow post-processing
        if (_factoryConfig.hasSerializerModifiers()) {
            for (BeanSerializerModifier mod : _factoryConfig.serializerModifiers()) {
                ser = mod.modifyCollectionSerializer(config, type, beanDesc, ser);
            }
        }
        return ser;
    }

    /*
    /**********************************************************
    /* Factory methods, for Collections
    /**********************************************************
     */

    protected boolean isIndexedList(Class<?> cls)
    {
        return RandomAccess.class.isAssignableFrom(cls);
    }

    public  ContainerSerializer<?> buildIndexedListSerializer(JavaType elemType,
            boolean staticTyping, TypeSerializer vts, JsonSerializer<Object> valueSerializer) {
        return new IndexedListSerializer(elemType, staticTyping, vts, null, valueSerializer);
    }
    public ContainerSerializer<?> buildCollectionSerializer(JavaType elemType,
            boolean staticTyping, TypeSerializer vts, JsonSerializer<Object> valueSerializer) {
        return new CollectionSerializer(elemType, staticTyping, vts, null, valueSerializer);
    }

    public JsonSerializer<?> buildEnumSetSerializer(JavaType enumType) {
        return new EnumSetSerializer(enumType, null);
    }

    /*
    /**********************************************************
    /* Factory methods, for Maps
    /**********************************************************
     */
    
    /**
     * Helper method that handles configuration details when constructing serializers for
     * {@link java.util.Map} types.
     */
    protected JsonSerializer<?> buildMapSerializer(SerializationConfig config,
            MapType type, BeanDescription beanDesc,
            boolean staticTyping, JsonSerializer<Object> keySerializer,
            TypeSerializer elementTypeSerializer, JsonSerializer<Object> elementValueSerializer)
        throws JsonMappingException
    {
        JsonSerializer<?> ser = null;
        for (Serializers serializers : customSerializers()) {
            ser = serializers.findMapSerializer(config, type, beanDesc,
                    keySerializer, elementTypeSerializer, elementValueSerializer);
            if (ser != null) { break; }
        }
        if (ser == null) {
            // 08-Nov-2014, tatu: As per [databind#601], better just use default Map serializer
            /*
            if (EnumMap.class.isAssignableFrom(type.getRawClass())
                    && ((keySerializer == null) || ClassUtil.isJacksonStdImpl(keySerializer))) {
                JavaType keyType = type.getKeyType();
                // Need to find key enum values...
                EnumValues enums = null;
                if (keyType.isEnumType()) { // non-enum if we got it as type erased class (from instance)
                    @SuppressWarnings("unchecked")
                    Class<Enum<?>> enumClass = (Class<Enum<?>>) keyType.getRawClass();
                    enums = EnumValues.construct(config, enumClass);
                }
                ser = new EnumMapSerializer(type.getContentType(), staticTyping, enums,
                    elementTypeSerializer, elementValueSerializer);
            } else {
            */
            Object filterId = findFilterId(config, beanDesc);
            MapSerializer mapSer = MapSerializer.construct(config.getAnnotationIntrospector().findPropertiesToIgnore(beanDesc.getClassInfo()),
                    type, staticTyping, elementTypeSerializer,
                    keySerializer, elementValueSerializer, filterId);
            Object suppressableValue = findSuppressableContentValue(config,
                    type.getContentType(), beanDesc);
            if (suppressableValue != null) {
                mapSer = mapSer.withContentInclusion(suppressableValue);
            }
            ser = mapSer;
        }
        // [Issue#120]: Allow post-processing
        if (_factoryConfig.hasSerializerModifiers()) {
            for (BeanSerializerModifier mod : _factoryConfig.serializerModifiers()) {
                ser = mod.modifyMapSerializer(config, type, beanDesc, ser);
            }
        }
        return ser;
    }

    /**
     * @since 2.5
     */
    protected Object findSuppressableContentValue(SerializationConfig config,
            JavaType contentType, BeanDescription beanDesc)
        throws JsonMappingException
    {
        JsonInclude.Include incl = beanDesc.findSerializationInclusionForContent(null);

        if (incl != null) {
            switch (incl) {
            case NON_DEFAULT:
                // 19-Oct-2014, tatu: Not sure what this'd mean; so take it to mean "NON_EMPTY"...
                incl = JsonInclude.Include.NON_EMPTY;
                break;
            default:
                // all other modes actually good as is, unless we'll find better ways
                break;
            }
            return incl;
        }
        return null;
    }
    
    /*
    /**********************************************************
    /* Factory methods, for Arrays
    /**********************************************************
     */
    
    /**
     * Helper method that handles configuration details when constructing serializers for
     * <code>Object[]</code> (and subtypes, except for String).
     */
    protected JsonSerializer<?> buildArraySerializer(SerializationConfig config,
            ArrayType type, BeanDescription beanDesc,
            boolean staticTyping,
            TypeSerializer elementTypeSerializer, JsonSerializer<Object> elementValueSerializer)
        throws JsonMappingException
    {
        JsonSerializer<?> ser = null;        
         // Module-provided custom collection serializers?
         for (Serializers serializers : customSerializers()) {
             ser = serializers.findArraySerializer(config,
                     type, beanDesc, elementTypeSerializer, elementValueSerializer);
             if (ser != null) {
                 break;
             }
         }
         if (ser == null) {
             Class<?> raw = type.getRawClass();
             // Important: do NOT use standard serializers if non-standard element value serializer specified
             if (elementValueSerializer == null || ClassUtil.isJacksonStdImpl(elementValueSerializer)) {
                 if (String[].class == raw) {
                     ser = StringArraySerializer.instance;
                 } else {
                     // other standard types?
                     ser = StdArraySerializers.findStandardImpl(raw);
                 }
             }
             if (ser == null) {
                 ser = new ObjectArraySerializer(type.getContentType(), staticTyping, elementTypeSerializer,
                         elementValueSerializer);
             }
         }
         // [Issue#120]: Allow post-processing
         if (_factoryConfig.hasSerializerModifiers()) {
             for (BeanSerializerModifier mod : _factoryConfig.serializerModifiers()) {
                 ser = mod.modifyArraySerializer(config, type, beanDesc, ser);
             }
         }
         return ser;
    }

    /*
    /**********************************************************
    /* Factory methods, for non-container types
    /**********************************************************
     */

    /**
     * @since 2.5
     */
    protected JsonSerializer<?> buildIteratorSerializer(SerializationConfig config,
            JavaType type, BeanDescription beanDesc, boolean staticTyping,
            JavaType valueType)
        throws JsonMappingException
    {
        return new IteratorSerializer(valueType, staticTyping, createTypeSerializer(config, valueType), null);
    }

    @Deprecated // since 2.5
    protected JsonSerializer<?> buildIteratorSerializer(SerializationConfig config,
            JavaType type, BeanDescription beanDesc, boolean staticTyping) throws JsonMappingException
    {
        JavaType[] params = config.getTypeFactory().findTypeParameters(type, Iterator.class);
        JavaType vt = (params == null || params.length != 1) ?
                TypeFactory.unknownType() : params[0];
        return buildIteratorSerializer(config, type, beanDesc, staticTyping, vt); 
    }

    /**
     * @since 2.5
     */
    protected JsonSerializer<?> buildIterableSerializer(SerializationConfig config,
            JavaType type, BeanDescription beanDesc, boolean staticTyping,
            JavaType valueType)
        throws JsonMappingException
    {
        return new IterableSerializer(valueType, staticTyping, createTypeSerializer(config, valueType), null);
    }

    @Deprecated // since 2.5
    protected JsonSerializer<?> buildIterableSerializer(SerializationConfig config,
            JavaType type, BeanDescription beanDesc,
            boolean staticTyping)
        throws JsonMappingException
    {
        JavaType[] params = config.getTypeFactory().findTypeParameters(type, Iterable.class);
        JavaType vt = (params == null || params.length != 1) ?
                TypeFactory.unknownType() : params[0];
        return buildIterableSerializer(config, type, beanDesc, staticTyping, vt); 
    }
    
    /**
     * @since 2.5
     */
    protected JsonSerializer<?> buildMapEntrySerializer(SerializationConfig config,
            JavaType type, BeanDescription beanDesc, boolean staticTyping,
            JavaType keyType, JavaType valueType)
        throws JsonMappingException
    {
        return new MapEntrySerializer(valueType, keyType, valueType,
                staticTyping, createTypeSerializer(config, valueType), null);
    }

    protected JsonSerializer<?> buildEnumSerializer(SerializationConfig config,
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        /* As per [databind#24], may want to use alternate shape, serialize as JSON Object.
         * Challenge here is that EnumSerializer does not know how to produce
         * POJO style serialization, so we must handle that special case separately;
         * otherwise pass it to EnumSerializer.
         */
        JsonFormat.Value format = beanDesc.findExpectedFormat(null);
        if (format != null && format.getShape() == JsonFormat.Shape.OBJECT) {
            // one special case: suppress serialization of "getDeclaringClass()"...
            ((BasicBeanDescription) beanDesc).removeProperty("declaringClass");
            // returning null will mean that eventually BeanSerializer gets constructed
            return null;
        }
        @SuppressWarnings("unchecked")
        Class<Enum<?>> enumClass = (Class<Enum<?>>) type.getRawClass();
        JsonSerializer<?> ser = EnumSerializer.construct(enumClass, config, beanDesc, format);
        // [Issue#120]: Allow post-processing
        if (_factoryConfig.hasSerializerModifiers()) {
            for (BeanSerializerModifier mod : _factoryConfig.serializerModifiers()) {
                ser = mod.modifyEnumSerializer(config, type, beanDesc, ser);
            }
        }
        return ser;
    }

    /*
    /**********************************************************
    /* Other helper methods
    /**********************************************************
     */
    
    /**
     * Helper method used to encapsulate details of annotation-based type coercion
     */
    @SuppressWarnings("unchecked")
    protected <T extends JavaType> T modifyTypeByAnnotation(SerializationConfig config,
            Annotated a, T type)
    {
        // first: let's check class for the instance itself:
        Class<?> superclass = config.getAnnotationIntrospector().findSerializationType(a);
        if (superclass != null) {
            try {
                type = (T) type.widenBy(superclass);
            } catch (IllegalArgumentException iae) {
                throw new IllegalArgumentException("Failed to widen type "+type+" with concrete-type annotation (value "+superclass.getName()+"), method '"+a.getName()+"': "+iae.getMessage());
            }
        }
        return modifySecondaryTypesByAnnotation(config, a, type);
    }

    @SuppressWarnings("unchecked")
    protected static <T extends JavaType> T modifySecondaryTypesByAnnotation(SerializationConfig config,
            Annotated a, T type)
    {
        AnnotationIntrospector intr = config.getAnnotationIntrospector();
        // then key class
        if (type.isContainerType()) {
            Class<?> keyClass = intr.findSerializationKeyType(a, type.getKeyType());
            if (keyClass != null) {
                // illegal to use on non-Maps
                if (!(type instanceof MapType)) {
                    throw new IllegalArgumentException("Illegal key-type annotation: type "+type+" is not a Map type");
                }
                try {
                    type = (T) ((MapType) type).widenKey(keyClass);
                } catch (IllegalArgumentException iae) {
                    throw new IllegalArgumentException("Failed to narrow key type "+type+" with key-type annotation ("+keyClass.getName()+"): "+iae.getMessage());
                }
            }
            
            // and finally content class; only applicable to structured types
            Class<?> cc = intr.findSerializationContentType(a, type.getContentType());
            if (cc != null) {
                try {
                    type = (T) type.widenContentsBy(cc);
                } catch (IllegalArgumentException iae) {
                    throw new IllegalArgumentException("Failed to narrow content type "+type+" with content-type annotation ("+cc.getName()+"): "+iae.getMessage());
                }
            }
        }
        return type;
    }

    /**
     * Helper method called to try to find whether there is an annotation in the
     * class that indicates key serializer to use.
     * If so, will try to instantiate key serializer and return it; otherwise returns null.
     */
    protected JsonSerializer<Object> _findKeySerializer(SerializerProvider prov,
            Annotated a)
        throws JsonMappingException
    {
        AnnotationIntrospector intr = prov.getAnnotationIntrospector();
        Object serDef = intr.findKeySerializer(a);
        if (serDef != null) {
            return prov.serializerInstance(a, serDef);
        }
        return null;
    }

    /**
     * Helper method called to try to find whether there is an annotation in the
     * class that indicates content ("value") serializer to use.
     * If so, will try to instantiate key serializer and return it; otherwise returns null.
     */
    protected JsonSerializer<Object> _findContentSerializer(SerializerProvider prov,
            Annotated a)
        throws JsonMappingException
    {
        AnnotationIntrospector intr = prov.getAnnotationIntrospector();
        Object serDef = intr.findContentSerializer(a);
        if (serDef != null) {
            return prov.serializerInstance(a, serDef);
        }
        return null;
    }

    /**
     * Method called to find filter that is configured to be used with bean
     * serializer being built, if any.
     */
    protected Object findFilterId(SerializationConfig config, BeanDescription beanDesc) {
        return config.getAnnotationIntrospector().findFilterId((Annotated)beanDesc.getClassInfo());
    }

    /**
     * Helper method to check whether global settings and/or class
     * annotations for the bean class indicate that static typing
     * (declared types)  should be used for properties.
     * (instead of dynamic runtime types).
     * 
     * @since 2.1 (earlier had variant with additional 'property' parameter)
     */
    protected boolean usesStaticTyping(SerializationConfig config,
            BeanDescription beanDesc, TypeSerializer typeSer)
    {
        /* 16-Aug-2010, tatu: If there is a (value) type serializer, we can not force
         *    static typing; that would make it impossible to handle expected subtypes
         */
        if (typeSer != null) {
            return false;
        }
        AnnotationIntrospector intr = config.getAnnotationIntrospector();
        JsonSerialize.Typing t = intr.findSerializationTyping(beanDesc.getClassInfo());
        if (t != null && t != JsonSerialize.Typing.DEFAULT_TYPING) {
            return (t == JsonSerialize.Typing.STATIC);
        }
        return config.isEnabled(MapperFeature.USE_STATIC_TYPING);
    }

    protected Class<?> _verifyAsClass(Object src, String methodName, Class<?> noneClass)
    {
        if (src == null) {
            return null;
        }
        if (!(src instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector."+methodName+"() returned value of type "+src.getClass().getName()+": expected type JsonSerializer or Class<JsonSerializer> instead");
        }
        Class<?> cls = (Class<?>) src;
        if (cls == noneClass || ClassUtil.isBogusClass(cls)) {
            return null;
        }
        return cls;
    }
}
