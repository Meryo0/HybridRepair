package com.fasterxml.jackson.databind;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.*;
import java.util.concurrent.atomic.AtomicReference;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.deser.*;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.deser.impl.TypeWrappedDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.exc.UnrecognizedPropertyException;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.*;
import com.fasterxml.jackson.core.JsonParser;

/**
 * Context for the process of deserialization a single root-level value.
 * Used to allow passing in configuration settings and reusable temporary
 * objects (scrap arrays, containers).
 *<p>
 * Instance life-cycle is such that an partially configured "blueprint" object
 * is registered with {@link ObjectMapper} (and {@link ObjectReader},
 * and when an actual instance is needed for deserialization,
 * a fully configured instance will
 * be created using a method in excented API of sub-class
 * ({@link com.fasterxml.jackson.databind.deser.DefaultDeserializationContext#createInstance}).
 * Each instance is guaranteed to only be used from single-threaded context;
 * instances may be reused iff no configuration has changed.
 *<p>
 * Defined as abstract class so that implementations must define methods
 * for reconfiguring blueprints and creating instances.
 */
public abstract class DeserializationContext
    extends DatabindContext
    implements java.io.Serializable
{
    private static final long serialVersionUID = -4290063686213707727L;

    /**
     * Let's limit length of error messages, for cases where underlying data
     * may be very large -- no point in spamming logs with megs of meaningless
     * data.
     */
    private final static int MAX_ERROR_STR_LEN = 500;

    /*
    /**********************************************************
    /* Configuration, immutable
    /**********************************************************
     */
    
    /**
     * Object that handle details of {@link JsonDeserializer} caching.
     */
    protected final DeserializerCache _cache;

    /*
    /**********************************************************
    /* Configuration, changeable via fluent factories
    /**********************************************************
     */

    /**
     * Read-only factory instance; exposed to let
     * owners (<code>ObjectMapper</code>, <code>ObjectReader</code>)
     * access it.
     */
    protected final DeserializerFactory _factory;

    /*
    /**********************************************************
    /* Configuration that gets set for instances (not blueprints)
    /* (partly denormalized for performance)
    /**********************************************************
     */

    /**
     * Generic deserialization processing configuration
     */
    protected final DeserializationConfig _config;

    /**
     * Bitmap of {@link DeserializationFeature}s that are enabled
     */
    protected final int _featureFlags;

    /**
     * Currently active view, if any.
     */
    protected final Class<?> _view;

    /**
     * Currently active parser used for deserialization.
     * May be different from the outermost parser
     * when content is buffered.
     */
    protected transient JsonParser _parser;
    
    /**
     * Object used for resolving references to injectable
     * values.
     */
    protected final InjectableValues _injectableValues;
    
    /*
    /**********************************************************
    /* Per-operation reusable helper objects (not for blueprints)
    /**********************************************************
     */

    protected transient ArrayBuilders _arrayBuilders;

    protected transient ObjectBuffer _objectBuffer;

    protected transient DateFormat _dateFormat;

    /**
     * Lazily-constructed holder for per-call attributes.
     * 
     * @since 2.3
     */
    protected transient ContextAttributes _attributes;
    
    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    protected DeserializationContext(DeserializerFactory df) {
        this(df, null);
    }
    
    protected DeserializationContext(DeserializerFactory df,
            DeserializerCache cache)
    {
        int PROBE_START_LINE_145 = 147;
		com.fasterxml.jackson.databind.deser.DeserializerFactory p_df_175_line_145 = df;
		boolean deserialization_context_1_expr1_line_145 = p_df_175_line_145 == null;
		int PROBE_END_LINE_145 = 147;
		if (deserialization_context_1_expr1_line_145) {
            throw new IllegalArgumentException("Can not pass null DeserializerFactory");
        }
        int PROBE_START_LINE_148 = 148;
		com.fasterxml.jackson.databind.deser.DeserializerFactory p_df_175_line_148 = df;
		int PROBE_END_LINE_148 = 148;
		_factory = p_df_175_line_148;
        int PROBE_START_LINE_149 = 149;
		com.fasterxml.jackson.databind.deser.DeserializerCache p_cache_176_line_149 = cache;
		boolean deserialization_context_1_expr7_line_149 = p_cache_176_line_149 == null;
		boolean deserialization_context_1_expr5_line_149 = (deserialization_context_1_expr7_line_149);
		com.fasterxml.jackson.databind.deser.DeserializerCache p_cache_176_line_149_v1 = null;
		if (!deserialization_context_1_expr5_line_149) {
			p_cache_176_line_149_v1 = cache;
		}
		com.fasterxml.jackson.databind.deser.DeserializerCache deserialization_context_1_expr4_line_149 = deserialization_context_1_expr5_line_149
				? new DeserializerCache()
				: p_cache_176_line_149_v1;
		int PROBE_END_LINE_149 = 149;
		_cache = deserialization_context_1_expr4_line_149;
        
        _featureFlags = 0;
        _config = null;
        _injectableValues = null;
        _view = null;
        _attributes = null;
    }

    protected DeserializationContext(DeserializationContext src,
            DeserializerFactory factory)
    {
        _cache = src._cache;
        _factory = factory;
        
        _config = src._config;
        _featureFlags = src._featureFlags;
        _view = src._view;
        _parser = src._parser;
        _injectableValues = src._injectableValues;
        _attributes = src._attributes;
    }

    /**
     * Constructor used for creating actual per-call instances.
     */
    protected DeserializationContext(DeserializationContext src,
            DeserializationConfig config, JsonParser p,
            InjectableValues injectableValues)
    {
        int PROBE_START_LINE_179 = 179;
		com.fasterxml.jackson.databind.DeserializationContext p_src_186_line_179 = src;
		com.fasterxml.jackson.databind.deser.DeserializerCache q__cache_7_line_179 = p_src_186_line_179._cache;
		int PROBE_END_LINE_179 = 179;
		_cache = q__cache_7_line_179;
        int PROBE_START_LINE_180 = 180;
		com.fasterxml.jackson.databind.DeserializationContext p_src_186_line_180 = src;
		com.fasterxml.jackson.databind.deser.DeserializerFactory q__factory_8_line_180 = p_src_186_line_180._factory;
		int PROBE_END_LINE_180 = 180;
		_factory = q__factory_8_line_180;
        
        int PROBE_START_LINE_182 = 182;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_187_line_182 = config;
		int PROBE_END_LINE_182 = 182;
		_config = p_config_187_line_182;
        int PROBE_START_LINE_183 = 183;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_187_line_183 = config;
		int deserialization_context_1_expr17_line_183 = p_config_187_line_183.getDeserializationFeatures();
		int PROBE_END_LINE_183 = 183;
		_featureFlags = deserialization_context_1_expr17_line_183;
        int PROBE_START_LINE_184 = 184;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_187_line_184 = config;
		Class<?> deserialization_context_1_expr19_line_184 = p_config_187_line_184.getActiveView();
		int PROBE_END_LINE_184 = 184;
		_view = deserialization_context_1_expr19_line_184;
        int PROBE_START_LINE_185 = 185;
		com.fasterxml.jackson.core.JsonParser p_p_188_line_185 = p;
		int PROBE_END_LINE_185 = 185;
		_parser = p_p_188_line_185;
        int PROBE_START_LINE_186 = 186;
		com.fasterxml.jackson.databind.InjectableValues p_injectable_values_189_line_186 = injectableValues;
		int PROBE_END_LINE_186 = 186;
		_injectableValues = p_injectable_values_189_line_186;
        int PROBE_START_LINE_187 = 187;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_187_line_187 = config;
		com.fasterxml.jackson.databind.cfg.ContextAttributes deserialization_context_1_expr23_line_187 = p_config_187_line_187
				.getAttributes();
		int PROBE_END_LINE_187 = 187;
		_attributes = deserialization_context_1_expr23_line_187;
    }

    /*
    /**********************************************************
    /* DatabindContext implementation
    /**********************************************************
     */

    @Override
    public DeserializationConfig getConfig() { int PROBE_START_LINE_197 = 197;
		com.fasterxml.jackson.databind.DeserializationConfig f__config_180_line_197 = _config;
		int PROBE_END_LINE_197 = 197;
	return f__config_180_line_197; }

    @Override
    public final Class<?> getActiveView() { return _view; }

    @Override
    public final AnnotationIntrospector getAnnotationIntrospector() {
        int PROBE_START_LINE_204 = 204;
		com.fasterxml.jackson.databind.DeserializationConfig f__config_180_line_204 = _config;
		com.fasterxml.jackson.databind.AnnotationIntrospector deserialization_context_1_expr24_line_204 = f__config_180_line_204
				.getAnnotationIntrospector();
		int PROBE_END_LINE_204 = 204;
		return deserialization_context_1_expr24_line_204;
    }

    @Override
    public final TypeFactory getTypeFactory() {
        return _config.getTypeFactory();
    }

    /*
    /**********************************************************
    /* Generic attributes (2.3+)
    /**********************************************************
     */

    @Override
    public Object getAttribute(Object key) {
        return _attributes.getAttribute(key);
    }

    @Override
    public DeserializationContext setAttribute(Object key, Object value)
    {
        _attributes = _attributes.withPerCallAttribute(key, value);
        return this;
    }
    
    /*
    /**********************************************************
    /* Public API, accessors
    /**********************************************************
     */

    /**
     * Method for getting current {@link DeserializerFactory}.
     */
    public DeserializerFactory getFactory() {
        return _factory;
    }
    
    /**
     * Convenience method for checking whether specified on/off
     * feature is enabled
     */
    public final boolean isEnabled(DeserializationFeature feat) {
        /* 03-Dec-2010, tatu: minor shortcut; since this is called quite often,
         *   let's use a local copy of feature settings:
         */
        return (_featureFlags & feat.getMask()) != 0;
    }

    /**
     * "Bulk" access method for checking that all features specified by
     * mask are enabled.
     * 
     * @since 2.3
     */
    public final boolean hasDeserializationFeatures(int featureMask) {
        return _config.hasDeserializationFeatures(featureMask);
    }
    
    /**
     * Method for accessing the currently active parser.
     * May be different from the outermost parser
     * when content is buffered.
     *<p>
     * Use of this method is discouraged: if code has direct access
     * to the active parser, that should be used instead.
     */
    public final JsonParser getParser() { return _parser; }

    public final Object findInjectableValue(Object valueId,
            BeanProperty forProperty, Object beanInstance)
    {
        if (_injectableValues == null) {
            throw new IllegalStateException("No 'injectableValues' configured, can not inject value with id ["+valueId+"]");
        }
        return _injectableValues.findInjectableValue(valueId, this, forProperty, beanInstance);
    }

    /**
     * Convenience method for accessing the default Base64 encoding
     * used for decoding base64 encoded binary content.
     * Same as calling:
     *<pre>
     *  getConfig().getBase64Variant();
     *</pre>
     */
    public final Base64Variant getBase64Variant() {
        return _config.getBase64Variant();
    }

    /**
     * Convenience method, functionally equivalent to:
     *<pre>
     *  getConfig().getNodeFactory();
     * </pre>
     */
    public final JsonNodeFactory getNodeFactory() {
        return _config.getNodeFactory();
    }

    /**
     * Method for accessing default Locale to use: convenience method for
     *<pre>
     *   getConfig().getLocale();
     *</pre>
     */
    public Locale getLocale() {
        return _config.getLocale();
    }

    /**
     * Method for accessing default TimeZone to use: convenience method for
     *<pre>
     *   getConfig().getTimeZone();
     *</pre>
     */
    public TimeZone getTimeZone() {
        return _config.getTimeZone();
    }

    /*
    /**********************************************************
    /* Public API, pass-through to DeserializerCache
    /**********************************************************
     */

    @Deprecated // since 2.3, use overloaded variant
    public boolean hasValueDeserializerFor(JavaType type) {
        return hasValueDeserializerFor(type, null);
    }

    /**
     * Method for checking whether we could find a deserializer
     * for given type.
     * 
     * @param type
     * @since 2.3
     */
    public boolean hasValueDeserializerFor(JavaType type, AtomicReference<Throwable> cause) {
        try {
            return _cache.hasValueDeserializerFor(this, _factory, type);
        } catch (JsonMappingException e) {
            if (cause != null) {
                cause.set(e);
            }
        } catch (RuntimeException e) {
            if (cause == null) { // earlier behavior
                throw e;
            }
            cause.set(e);
        }
        return false;
    }
    
    /**
     * Method for finding a value deserializer, and creating a contextual
     * version if necessary, for value reached via specified property.
     */
    @SuppressWarnings("unchecked")
    public final JsonDeserializer<Object> findContextualValueDeserializer(JavaType type,
            BeanProperty prop) throws JsonMappingException
    {
        int PROBE_START_LINE_367 = 367;
		com.fasterxml.jackson.databind.deser.DeserializerCache f__cache_178_line_367 = _cache;
		com.fasterxml.jackson.databind.deser.DeserializerFactory f__factory_177_line_367 = _factory;
		com.fasterxml.jackson.databind.JavaType p_type_202_line_367 = type;
		JsonDeserializer<Object> deserialization_context_1_expr25_line_367 = f__cache_178_line_367
				.findValueDeserializer(this, f__factory_177_line_367, p_type_202_line_367);
		int PROBE_END_LINE_367 = 367;
		JsonDeserializer<Object> deser = deserialization_context_1_expr25_line_367;
        int PROBE_START_LINE_368 = 370;
		JsonDeserializer<Object> v_deser_204_line_368 = deser;
		boolean deserialization_context_1_expr27_line_368 = v_deser_204_line_368 != null;
		int PROBE_END_LINE_368 = 370;
		if (deserialization_context_1_expr27_line_368) {
            int PROBE_START_LINE_369 = 369;
			JsonDeserializer<Object> v_deser_204_line_369 = deser;
			com.fasterxml.jackson.databind.BeanProperty p_prop_203_line_369 = prop;
			JsonDeserializer<?> deserialization_context_1_expr30_line_369 = handleSecondaryContextualization(
					v_deser_204_line_369, p_prop_203_line_369);
			int PROBE_END_LINE_369 = 369;
			deser = (JsonDeserializer<Object>) deserialization_context_1_expr30_line_369;
        }
        int PROBE_START_LINE_371 = 371;
		JsonDeserializer<Object> v_deser_204_line_371 = deser;
		int PROBE_END_LINE_371 = 371;
		return v_deser_204_line_371;
    }

    /**
     * Method for finding a deserializer for root-level value.
     */
    @SuppressWarnings("unchecked")
    public final JsonDeserializer<Object> findRootValueDeserializer(JavaType type)
        throws JsonMappingException
    {
        int PROBE_START_LINE_381 = 382;
		com.fasterxml.jackson.databind.deser.DeserializerCache f__cache_178_line_381 = _cache;
		JsonDeserializer<Object> deserialization_context_1_expr31_line_381 = f__cache_178_line_381
				.findValueDeserializer(this, _factory, type);
		int PROBE_END_LINE_381 = 382;
		JsonDeserializer<Object> deser = deserialization_context_1_expr31_line_381;
        int PROBE_START_LINE_383 = 385;
		JsonDeserializer<Object> v_deser_206_line_383 = deser;
		boolean deserialization_context_1_expr33_line_383 = v_deser_206_line_383 == null;
		int PROBE_END_LINE_383 = 385;
		if (deserialization_context_1_expr33_line_383) { // can this occur?
            return null;
        }
        int PROBE_START_LINE_386 = 386;
		JsonDeserializer<Object> v_deser_206_line_386 = deser;
		JsonDeserializer<?> deserialization_context_1_expr36_line_386 = handleSecondaryContextualization(
				v_deser_206_line_386, null);
		int PROBE_END_LINE_386 = 386;
		deser = (JsonDeserializer<Object>) deserialization_context_1_expr36_line_386;
        int PROBE_START_LINE_387 = 387;
		com.fasterxml.jackson.databind.deser.DeserializerFactory f__factory_177_line_387 = _factory;
		com.fasterxml.jackson.databind.DeserializationConfig f__config_180_line_387 = _config;
		com.fasterxml.jackson.databind.JavaType p_type_205_line_387 = type;
		TypeDeserializer deserialization_context_1_expr37_line_387 = f__factory_177_line_387
				.findTypeDeserializer(f__config_180_line_387, p_type_205_line_387);
		int PROBE_END_LINE_387 = 387;
		TypeDeserializer typeDeser = deserialization_context_1_expr37_line_387;
        int PROBE_START_LINE_388 = 392;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_type_deser_207_line_388 = typeDeser;
		boolean deserialization_context_1_expr38_line_388 = v_type_deser_207_line_388 != null;
		int PROBE_END_LINE_388 = 392;
		if (deserialization_context_1_expr38_line_388) {
            // important: contextualize to indicate this is for root value
            typeDeser = typeDeser.forProperty(null);
            return new TypeWrappedDeserializer(typeDeser, deser);
        }
        int PROBE_START_LINE_393 = 393;
		JsonDeserializer<Object> v_deser_206_line_393 = deser;
		int PROBE_END_LINE_393 = 393;
		return v_deser_206_line_393;
    }

    /**
     * Convenience method, functionally same as:
     *<pre>
     *  getDeserializerProvider().findKeyDeserializer(getConfig(), prop.getType(), prop);
     *</pre>
     */
    public final KeyDeserializer findKeyDeserializer(JavaType keyType,
            BeanProperty prop) throws JsonMappingException {
        KeyDeserializer kd = _cache.findKeyDeserializer(this,
                _factory, keyType);
        // Second: contextualize?
        if (kd instanceof ContextualKeyDeserializer) {
            kd = ((ContextualKeyDeserializer) kd).createContextual(this, prop);
        }
        return kd;
    }
    
    /*
    /**********************************************************
    /* Public API, ObjectId handling
    /**********************************************************
     */

    /**
     * Method called to find and return entry corresponding to given
     * Object Id: will add an entry if necessary, and never returns null
     */
    public abstract ReadableObjectId findObjectId(Object id, ObjectIdGenerator<?> generator, ObjectIdResolver resolver);

    @Deprecated // since 2.4
    public abstract ReadableObjectId findObjectId(Object id, ObjectIdGenerator<?> generator);

    /**
     * Method called to ensure that every object id encounter during processing
     * are resolved.
     * 
     * @throws UnresolvedForwardReference
     */
    public abstract void checkUnresolvedObjectId()
        throws UnresolvedForwardReference;

    /*
    /**********************************************************
    /* Public API, type handling
    /**********************************************************
     */
    
    /**
     * Convenience method, functionally equivalent to:
     *<pre>
     *  getConfig().constructType(cls);
     * </pre>
     */
    public final JavaType constructType(Class<?> cls) {
        int PROBE_START_LINE_450 = 450;
		com.fasterxml.jackson.databind.DeserializationConfig f__config_180_line_450 = _config;
		Class<?> p_cls_215_line_450 = cls;
		com.fasterxml.jackson.databind.JavaType deserialization_context_1_expr39_line_450 = f__config_180_line_450
				.constructType(p_cls_215_line_450);
		int PROBE_END_LINE_450 = 450;
		return deserialization_context_1_expr39_line_450;
    }

    /**
     * Helper method to use for locating Class for given name. Should be used
     * instead of basic <code>Class.forName(className);</code> as it can
     * try using contextual class loader, or use platform-specific workarounds
     * (like on Android, GAE).
     */
    public Class<?> findClass(String className) throws ClassNotFoundException
    {
        // By default, delegate to ClassUtil: can be overridden with custom handling
        return ClassUtil.findClass(className);
    }

    /*
    /**********************************************************
    /* Public API, helper object recycling
    /**********************************************************
     */

    /**
     * Method that can be used to get access to a reusable ObjectBuffer,
     * useful for efficiently constructing Object arrays and Lists.
     * Note that leased buffers should be returned once deserializer
     * is done, to allow for reuse during same round of deserialization.
     */
    public final ObjectBuffer leaseObjectBuffer()
    {
        int PROBE_START_LINE_479 = 479;
		ObjectBuffer f__object_buffer_218_line_479 = _objectBuffer;
		int PROBE_END_LINE_479 = 479;
		ObjectBuffer buf = f__object_buffer_218_line_479;
        int PROBE_START_LINE_480 = 484;
		com.fasterxml.jackson.databind.util.ObjectBuffer v_buf_217_line_480 = buf;
		boolean deserialization_context_1_expr40_line_480 = v_buf_217_line_480 == null;
		int PROBE_END_LINE_480 = 484;
		if (deserialization_context_1_expr40_line_480) {
            buf = new ObjectBuffer();
        } else {
            _objectBuffer = null;
        }
        int PROBE_START_LINE_485 = 485;
		com.fasterxml.jackson.databind.util.ObjectBuffer v_buf_217_line_485 = buf;
		int PROBE_END_LINE_485 = 485;
		return v_buf_217_line_485;
    }

    /**
     * Method to call to return object buffer previously leased with
     * {@link #leaseObjectBuffer}.
     * 
     * @param buf Returned object buffer
     */
    public final void returnObjectBuffer(ObjectBuffer buf)
    {
        int PROBE_START_LINE_499 = 502;
		com.fasterxml.jackson.databind.util.ObjectBuffer f__object_buffer_218_line_499 = _objectBuffer;
		boolean deserialization_context_1_expr44_line_499 = f__object_buffer_218_line_499 == null;
		boolean deserialization_context_1_expr43_line_499 = deserialization_context_1_expr44_line_499
				|| buf.initialCapacity() >= _objectBuffer.initialCapacity();
		int PROBE_END_LINE_499 = 502;
		/* Already have a reusable buffer? Let's retain bigger one
         * (or if equal, favor newer one, shorter life-cycle)
         */
        if (deserialization_context_1_expr43_line_499) {
            int PROBE_START_LINE_501 = 501;
				com.fasterxml.jackson.databind.util.ObjectBuffer p_buf_219_line_501 = buf;
				int PROBE_END_LINE_501 = 501;
			_objectBuffer = p_buf_219_line_501;
        }
    }

    /**
     * Method for accessing object useful for building arrays of
     * primitive types (such as int[]).
     */
    public final ArrayBuilders getArrayBuilders()
    {
        if (_arrayBuilders == null) {
            _arrayBuilders = new ArrayBuilders();
        }
        return _arrayBuilders;
    }

    /*
    /**********************************************************
    /* Extended API: handler instantiation
    /**********************************************************
     */

    public abstract JsonDeserializer<Object> deserializerInstance(Annotated annotated,
            Object deserDef)
        throws JsonMappingException;

    public abstract KeyDeserializer keyDeserializerInstance(Annotated annotated,
            Object deserDef)
        throws JsonMappingException;

    /*
    /**********************************************************
    /* Extended API: resolving contextual deserializers; called
    /* by structured deserializers for their value/component
    /* deserializers
    /**********************************************************
     */

    /**
     * Method called for primary property deserializers (ones
     * directly created to deserialize values of a POJO property),
     * to handle details of resolving
     * {@link ContextualDeserializer} with given property context.
     * 
     * @param prop Property for which the given primary deserializer is used; never null.
     * 
     * @since 2.3
     */
    public JsonDeserializer<?> handlePrimaryContextualization(JsonDeserializer<?> deser,
            BeanProperty prop)
        throws JsonMappingException
    {
        if (deser != null) {
            if (deser instanceof ContextualDeserializer) {
                deser = ((ContextualDeserializer) deser).createContextual(this, prop);
            }
        }
        return deser;
    }

    /**
     * Method called for secondary property deserializers (ones
     * NOT directly created to deal with an annotatable POJO property,
     * but instead created as a component -- such as value deserializers
     * for structured types, or deserializers for root values)
     * to handle details of resolving
     * {@link ContextualDeserializer} with given property context.
     * Given that these deserializers are not directly related to given property
     * (or, in case of root value property, to any property), annotations
     * accessible may or may not be relevant.
     * 
     * @param prop Property for which deserializer is used, if any; null
     *    when deserializing root values
     * 
     * @since 2.3
     */
    public JsonDeserializer<?> handleSecondaryContextualization(JsonDeserializer<?> deser,
            BeanProperty prop)
        throws JsonMappingException {
        int PROBE_START_LINE_580 = 582;
			JsonDeserializer<?> p_deser_226_line_580 = deser;
			boolean deserialization_context_1_expr47_line_580 = p_deser_226_line_580 != null;
			boolean deserialization_context_1_expr48_line_580 = true;
			if (deserialization_context_1_expr47_line_580) {
				JsonDeserializer<?> p_deser_226_line_580_v1 = deser;
				boolean deserialization_context_1_expr49_line_580 = p_deser_226_line_580_v1 instanceof ContextualDeserializer;
				deserialization_context_1_expr48_line_580 = (deserialization_context_1_expr49_line_580);
			}
			boolean deserialization_context_1_expr46_line_580 = deserialization_context_1_expr47_line_580
					&& deserialization_context_1_expr48_line_580;
			int PROBE_END_LINE_580 = 582;
		if (deserialization_context_1_expr46_line_580) {
            int PROBE_START_LINE_581 = 581;
			JsonDeserializer<?> p_deser_226_line_581 = deser;
			com.fasterxml.jackson.databind.deser.ContextualDeserializer deserialization_context_1_expr53_line_581 = ((ContextualDeserializer) p_deser_226_line_581);
			com.fasterxml.jackson.databind.BeanProperty p_prop_227_line_581 = prop;
			JsonDeserializer<?> deserialization_context_1_expr51_line_581 = deserialization_context_1_expr53_line_581
					.createContextual(this, p_prop_227_line_581);
			int PROBE_END_LINE_581 = 581;
			deser = deserialization_context_1_expr51_line_581;
        }
        int PROBE_START_LINE_583 = 583;
		JsonDeserializer<?> p_deser_226_line_583 = deser;
		int PROBE_END_LINE_583 = 583;
		return p_deser_226_line_583;
    }
    
    /*
    /**********************************************************
    /* Parsing methods that may use reusable/-cyclable objects
    /**********************************************************
     */

    /**
     * Convenience method for parsing a Date from given String, using
     * currently configured date format (accessed using
     * {@link DeserializationConfig#getDateFormat()}).
     *<p>
     * Implementation will handle thread-safety issues related to
     * date formats such that first time this method is called,
     * date format is cloned, and cloned instance will be retained
     * for use during this deserialization round.
     */
    public Date parseDate(String dateStr) throws IllegalArgumentException
    {
        try {
            DateFormat df = getDateFormat();
            return df.parse(dateStr);
        } catch (ParseException e) {
            throw new IllegalArgumentException("Failed to parse Date value '"+dateStr+"': "+e.getMessage());
        }
    }

    /**
     * Convenience method for constructing Calendar instance set
     * to specified time, to be modified and used by caller.
     */
    public Calendar constructCalendar(Date d) {
        // 08-Jan-2008, tatu: not optimal, but should work for the most part; let's revise as needed.
        Calendar c = Calendar.getInstance(getTimeZone());
        c.setTime(d);
        return c;
    }

    /*
    /**********************************************************
    /* Convenience methods for reading parsed values
    /**********************************************************
     */

    /**
     * Convenience method that may be used by composite or container deserializers,
     * for reading one-off values contained (for sequences, it is more efficient
     * to actually fetch deserializer once for the whole collection).
     *<p>
     * NOTE: when deserializing values of properties contained in composite types,
     * rather use {@link #readPropertyValue(JsonParser, BeanProperty, Class)};
     * this method does not allow use of contextual annotations.
     * 
     * @since 2.4
     */
    public <T> T readValue(JsonParser p, Class<T> type) throws IOException {
        return readValue(p, getTypeFactory().constructType(type));
    }

    /**
     * @since 2.4
     */
    @SuppressWarnings("unchecked")
    public <T> T readValue(JsonParser p, JavaType type) throws IOException {
        JsonDeserializer<Object> deser = findRootValueDeserializer(type);
        if (deser == null) {
        }
        return (T) deser.deserialize(p, this);
    }

    /**
     * Convenience method that may be used by composite or container deserializers,
     * for reading one-off values for the composite type, taking into account
     * annotations that the property (passed to this method -- usually property that
     * has custom serializer that called this method) has.
     * 
     * @since 2.4
     */
    public <T> T readPropertyValue(JsonParser p, BeanProperty prop, Class<T> type) throws IOException {
        return readPropertyValue(p, prop, getTypeFactory().constructType(type));
    }

    /**
     * @since 2.4
     */
    @SuppressWarnings("unchecked")
    public <T> T readPropertyValue(JsonParser p, BeanProperty prop, JavaType type) throws IOException {
        JsonDeserializer<Object> deser = findContextualValueDeserializer(type, prop);
        if (deser == null) {
            
        }
        return (T) deser.deserialize(p, this);
    }
    
    /*
    /**********************************************************
    /* Methods for problem handling, reporting
    /**********************************************************
     */

    /**
     * Method deserializers can call to inform configured {@link DeserializationProblemHandler}s
     * of an unrecognized property.
     * 
     * @return True if there was a configured problem handler that was able to handle the
     *   problem
     */
    /**
     * Method deserializers can call to inform configured {@link DeserializationProblemHandler}s
     * of an unrecognized property.
     */
    public boolean handleUnknownProperty(JsonParser p, JsonDeserializer<?> deser,
            Object instanceOrClass, String propName)
        throws IOException, JsonProcessingException
    {
        LinkedNode<DeserializationProblemHandler> h = _config.getProblemHandlers();
        if (h != null) {
            while (h != null) {
                // Can bail out if it's handled
                if (h.value().handleUnknownProperty(this, p, deser, instanceOrClass, propName)) {
                    return true;
                }
                h = h.next();
            }
        }
        return false;
    }

    /**
     * Helper method for reporting a problem with unhandled unknown exception
     * 
     * @param instanceOrClass Either value being populated (if one has been
     *   instantiated), or Class that indicates type that would be (or
     *   have been) instantiated
     * @param deser Deserializer that had the problem, if called by deserializer
     *   (or on behalf of one)
     */
    public void reportUnknownProperty(Object instanceOrClass, String fieldName,
            JsonDeserializer<?> deser)
        throws JsonMappingException
    {
        if (!isEnabled(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES)) {
            return;
        }
        // Do we know properties that are expected instead?
        Collection<Object> propIds = (deser == null) ? null : deser.getKnownPropertyNames();
        throw UnrecognizedPropertyException.from(_parser,
                instanceOrClass, fieldName, propIds);
    }
    
    /*
    /**********************************************************
    /* Methods for constructing exceptions
    /**********************************************************
     */
    
    /**
     * Helper method for constructing generic mapping exception for specified type
     */
    public JsonMappingException mappingException(Class<?> targetClass) {
        return mappingException(targetClass, _parser.getCurrentToken());
    }

    public JsonMappingException mappingException(Class<?> targetClass, JsonToken token) {
        return JsonMappingException.from(_parser, "Can not deserialize instance of "+_calcName(targetClass)+" out of "+token+" token");
    }
    
    /**
     * Helper method for constructing generic mapping exception with specified
     * message and current location information
     */
    public JsonMappingException mappingException(String message) {
        return JsonMappingException.from(getParser(), message);
    }
    
    /**
     * Helper method for constructing instantiation exception for specified type,
     * to indicate problem with physically constructing instance of
     * specified class (missing constructor, exception from constructor)
     */
    public JsonMappingException instantiationException(Class<?> instClass, Throwable t) {
        return JsonMappingException.from(_parser,
                "Can not construct instance of "+instClass.getName()+", problem: "+t.getMessage(), t);
    }

    public JsonMappingException instantiationException(Class<?> instClass, String msg) {
        return JsonMappingException.from(_parser, "Can not construct instance of "+instClass.getName()+", problem: "+msg);
    }
    
    /**
     * Method that will construct an exception suitable for throwing when
     * some String values are acceptable, but the one encountered is not.
     * 
     * 
     * @deprecated Since 2.1 should use variant that takes value
     */
    @Deprecated
    public JsonMappingException weirdStringException(Class<?> instClass, String msg) {
        return weirdStringException(null, instClass, msg);
    }

    /**
     * Method that will construct an exception suitable for throwing when
     * some String values are acceptable, but the one encountered is not.
     * 
     * @param value String value from input being deserialized
     * @param instClass Type that String should be deserialized into
     * @param msg Message that describes specific problem
     * 
     * @since 2.1
     */
    public JsonMappingException weirdStringException(String value, Class<?> instClass, String msg) {
        return InvalidFormatException.from(_parser,
                "Can not construct instance of "+instClass.getName()+" from String value '"+_valueDesc()+"': "+msg,
                value, instClass);
    }

    /**
     * Helper method for constructing exception to indicate that input JSON
     * Number was not suitable for deserializing into given type.
     */
    @Deprecated
    public JsonMappingException weirdNumberException(Class<?> instClass, String msg) {
        return weirdStringException(null, instClass, msg);
    }

    /**
     * Helper method for constructing exception to indicate that input JSON
     * Number was not suitable for deserializing into given target type.
     */
    public JsonMappingException weirdNumberException(Number value, Class<?> instClass, String msg) {
        return InvalidFormatException.from(_parser,
                "Can not construct instance of "+instClass.getName()+" from number value ("+_valueDesc()+"): "+msg,
                null, instClass);
    }
    
    /**
     * Helper method for constructing exception to indicate that given JSON
     * Object field name was not in format to be able to deserialize specified
     * key type.
     */
    public JsonMappingException weirdKeyException(Class<?> keyClass, String keyValue, String msg) {
        return InvalidFormatException.from(_parser,
                "Can not construct Map key of type "+keyClass.getName()+" from String \""+_desc(keyValue)+"\": "+msg,
                keyValue, keyClass);
    }

    /**
     * Helper method for indicating that the current token was expected to be another
     * token.
     */
    public JsonMappingException wrongTokenException(JsonParser p, JsonToken expToken, String msg0) {
        String msg = "Unexpected token ("+p.getCurrentToken()+"), expected "+expToken;
        if (msg0 != null) {
            msg = msg + ": "+msg0;
        }
        return JsonMappingException.from(p, msg);
    }

    /**
     * Helper method for constructing exception to indicate that given
     * type id (parsed from JSON) could not be converted to a Java type.
     */
    public JsonMappingException unknownTypeException(JavaType type, String id) {
        return JsonMappingException.from(_parser, "Could not resolve type id '"+id+"' into a subtype of "+type);
    }

    public JsonMappingException endOfInputException(Class<?> instClass) {
        return JsonMappingException.from(_parser, "Unexpected end-of-input when trying to deserialize a "
                +instClass.getName());
    }
    
    /*
    /**********************************************************
    /* Overridable internal methods
    /**********************************************************
     */

    protected DateFormat getDateFormat()
    {
        if (_dateFormat != null) {
            return _dateFormat;
        }
        /* 24-Feb-2012, tatu: At this point, all timezone configuration
         *    should have occured, with respect to default dateformat
         *    and timezone configuration. But we still better clone
         *    an instance as formatters may be stateful.
         */
        DateFormat df = _config.getDateFormat();
        _dateFormat = df = (DateFormat) df.clone();
        return df;
    }

    protected String determineClassName(Object instance) {
        return ClassUtil.getClassDescription(instance);
    }
    
    /*
    /**********************************************************
    /* Other internal methods
    /**********************************************************
     */

    protected String _calcName(Class<?> cls) {
        if (cls.isArray()) {
            return _calcName(cls.getComponentType())+"[]";
        }
        return cls.getName();
    }
    
    protected String _valueDesc() {
        try {
            return _desc(_parser.getText());
        } catch (Exception e) {
            return "[N/A]";
        }
    }

    protected String _desc(String desc) {
        // !!! should we quote it? (in case there are control chars, linefeeds)
        if (desc.length() > MAX_ERROR_STR_LEN) {
            desc = desc.substring(0, MAX_ERROR_STR_LEN) + "]...[" + desc.substring(desc.length() - MAX_ERROR_STR_LEN);
        }
        return desc;
    }
}
