package com.fasterxml.jackson.databind.deser;

import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.type.*;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
 * Class that defines caching layer between callers (like
 * {@link ObjectMapper},
 * {@link com.fasterxml.jackson.databind.DeserializationContext})
 * and classes that construct deserializers
 * ({@link com.fasterxml.jackson.databind.deser.DeserializerFactory}).
 */
public final class DeserializerCache
    implements java.io.Serializable // since 2.1 -- needs to be careful tho
{
    private static final long serialVersionUID = 1L;

    /*
    /**********************************************************
    /* Caching
    /**********************************************************
     */

    /**
     * We will also cache some dynamically constructed deserializers;
     * specifically, ones that are expensive to construct.
     * This currently means bean and Enum deserializers; array, List and Map
     * deserializers will not be cached.
     *<p>
     * Given that we don't expect much concurrency for additions
     * (should very quickly converge to zero after startup), let's
     * explicitly define a low concurrency setting.
     */
    final protected ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _cachedDeserializers
        = new ConcurrentHashMap<JavaType, JsonDeserializer<Object>>(64, 0.75f, 2);

    /**
     * During deserializer construction process we may need to keep track of partially
     * completed deserializers, to resolve cyclic dependencies. This is the
     * map used for storing deserializers before they are fully complete.
     */
    final protected HashMap<JavaType, JsonDeserializer<Object>> _incompleteDeserializers
        = new HashMap<JavaType, JsonDeserializer<Object>>(8);

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    public DeserializerCache() { }

    /*
    /**********************************************************
    /* JDK serialization handling
    /**********************************************************
     */

    Object writeReplace() {
        // instead of making this transient, just clear it:
        _incompleteDeserializers.clear();
        // TODO: clear out "cheap" cached deserializers?
        return this;
    }
    
    /*
    /**********************************************************
    /* Access to caching aspects
    /**********************************************************
     */

    /**
     * Method that can be used to determine how many deserializers this
     * provider is caching currently 
     * (if it does caching: default implementation does)
     * Exact count depends on what kind of deserializers get cached;
     * default implementation caches only dynamically constructed deserializers,
     * but not eagerly constructed standard deserializers (which is different
     * from how serializer provider works).
     *<p>
     * The main use case for this method is to allow conditional flushing of
     * deserializer cache, if certain number of entries is reached.
     */
    public int cachedDeserializersCount() {
        return _cachedDeserializers.size();
    }

    /**
     * Method that will drop all dynamically constructed deserializers (ones that
     * are counted as result value for {@link #cachedDeserializersCount}).
     * This can be used to remove memory usage (in case some deserializers are
     * only used once or so), or to force re-construction of deserializers after
     * configuration changes for mapper than owns the provider.
     */
    public void flushCachedDeserializers() {
        _cachedDeserializers.clear();       
    }

    /*
    /**********************************************************
    /* General deserializer locating method
    /**********************************************************
     */

    /**
     * Method called to get hold of a deserializer for a value of given type;
     * or if no such deserializer can be found, a default handler (which
     * may do a best-effort generic serialization or just simply
     * throw an exception when invoked).
     *<p>
     * Note: this method is only called for value types; not for keys.
     * Key deserializers can be accessed using {@link #findKeyDeserializer}.
     *<p>
     * Note also that deserializer returned is guaranteed to be resolved
     * (if it is of type {@link ResolvableDeserializer}), but
     * not contextualized (wrt {@link ContextualDeserializer}): caller
     * has to handle latter if necessary.
     *
     * @param ctxt Deserialization context
     * @param propertyType Declared type of the value to deserializer (obtained using
     *   'setter' method signature and/or type annotations
     *
     * @throws JsonMappingException if there are fatal problems with
     *   accessing suitable deserializer; including that of not
     *   finding any serializer
     */
    public JsonDeserializer<Object> findValueDeserializer(DeserializationContext ctxt,
            DeserializerFactory factory, JavaType propertyType)
        throws JsonMappingException
    {
        int PROBE_START_LINE_139 = 139;
		com.fasterxml.jackson.databind.JavaType p_property_type_1290_line_139 = propertyType;
		JsonDeserializer<Object> deserializer_cache_1_expr3_line_139 = _findCachedDeserializer(
				p_property_type_1290_line_139);
		int PROBE_END_LINE_139 = 139;
		JsonDeserializer<Object> deser = deserializer_cache_1_expr3_line_139;
        int PROBE_START_LINE_140 = 150;
		JsonDeserializer<Object> v_deser_1291_line_140 = deser;
		boolean deserializer_cache_1_expr4_line_140 = v_deser_1291_line_140 == null;
		int PROBE_END_LINE_140 = 150;
		if (deserializer_cache_1_expr4_line_140) {
            int PROBE_START_LINE_142 = 142;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1288_line_142 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1289_line_142 = factory;
			com.fasterxml.jackson.databind.JavaType p_property_type_1290_line_142 = propertyType;
			JsonDeserializer<Object> deserializer_cache_1_expr6_line_142 = _createAndCacheValueDeserializer(
					p_ctxt_1288_line_142, p_factory_1289_line_142, p_property_type_1290_line_142);
			int PROBE_END_LINE_142 = 142;
			// If not, need to request factory to construct (or recycle)
            deser = deserializer_cache_1_expr6_line_142;
            int PROBE_START_LINE_143 = 149;
			JsonDeserializer<Object> v_deser_1291_line_143 = deser;
			boolean deserializer_cache_1_expr7_line_143 = v_deser_1291_line_143 == null;
			int PROBE_END_LINE_143 = 149;
			if (deserializer_cache_1_expr7_line_143) {
                /* Should we let caller handle it? Let's have a helper method
                 * decide it; can throw an exception, or return a valid
                 * deserializer
                 */
                deser = _handleUnknownValueDeserializer(propertyType);
            }
        }
        int PROBE_START_LINE_151 = 151;
		JsonDeserializer<Object> v_deser_1291_line_151 = deser;
		int PROBE_END_LINE_151 = 151;
		return v_deser_1291_line_151;
    }

    /**
     * Method called to get hold of a deserializer to use for deserializing
     * keys for {@link java.util.Map}.
     *
     * @throws JsonMappingException if there are fatal problems with
     *   accessing suitable key deserializer; including that of not
     *   finding any serializer
     */
    public KeyDeserializer findKeyDeserializer(DeserializationContext ctxt,
            DeserializerFactory factory, JavaType type)
        throws JsonMappingException
    {
        KeyDeserializer kd = factory.createKeyDeserializer(ctxt, type);
        if (kd == null) { // if none found, need to use a placeholder that'll fail
            return _handleUnknownKeyDeserializer(type);
        }
        // First: need to resolve?
        if (kd instanceof ResolvableDeserializer) {
            ((ResolvableDeserializer) kd).resolve(ctxt);
        }
        return kd;
    }

    /**
     * Method called to find out whether provider would be able to find
     * a deserializer for given type, using a root reference (i.e. not
     * through fields or membership in an array or collection)
     */
    public boolean hasValueDeserializerFor(DeserializationContext ctxt,
            DeserializerFactory factory, JavaType type)
        throws JsonMappingException
    {
        /* Note: mostly copied from findValueDeserializer, except for
         * handling of unknown types
         */
        JsonDeserializer<Object> deser = _findCachedDeserializer(type);
        if (deser == null) {
            deser = _createAndCacheValueDeserializer(ctxt, factory, type);
        }
        return (deser != null);
    }

    /*
    /**********************************************************
    /* Helper methods that handle cache lookups
    /**********************************************************
     */

    protected JsonDeserializer<Object> _findCachedDeserializer(JavaType type)
    {
        int PROBE_START_LINE_204 = 206;
		com.fasterxml.jackson.databind.JavaType p_type_1298_line_204 = type;
		boolean deserializer_cache_1_expr8_line_204 = p_type_1298_line_204 == null;
		int PROBE_END_LINE_204 = 206;
		if (deserializer_cache_1_expr8_line_204) {
            throw new IllegalArgumentException("Null JavaType passed");
        }
        int PROBE_START_LINE_207 = 207;
		ConcurrentHashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__cached_deserializers_1286_line_207 = _cachedDeserializers;
		com.fasterxml.jackson.databind.JavaType p_type_1298_line_207 = type;
		JsonDeserializer<Object> deserializer_cache_1_expr9_line_207 = f__cached_deserializers_1286_line_207
				.get(p_type_1298_line_207);
		int PROBE_END_LINE_207 = 207;
		return deserializer_cache_1_expr9_line_207;
    }

    /**
     * Method that will try to create a deserializer for given type,
     * and resolve and cache it if necessary
     * 
     * @param ctxt Currently active deserialization context
     * @param type Type of property to deserialize
     */
    protected JsonDeserializer<Object>_createAndCacheValueDeserializer(DeserializationContext ctxt,
            DeserializerFactory factory, JavaType type)
        throws JsonMappingException
    {
        int PROBE_START_LINE_225 = 248;
		HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_1287_line_225 = _incompleteDeserializers;
		int PROBE_END_LINE_225 = 248;
		/* Only one thread to construct deserializers at any given point in time;
         * limitations necessary to ensure that only completely initialized ones
         * are visible and used.
         */
        synchronized (f__incomplete_deserializers_1287_line_225) {
            int PROBE_START_LINE_227 = 227;
			com.fasterxml.jackson.databind.JavaType p_type_1301_line_227 = type;
			JsonDeserializer<Object> deserializer_cache_1_expr10_line_227 = _findCachedDeserializer(
					p_type_1301_line_227);
			int PROBE_END_LINE_227 = 227;
			// Ok, then: could it be that due to a race condition, deserializer can now be found?
            JsonDeserializer<Object> deser = deserializer_cache_1_expr10_line_227;
            int PROBE_START_LINE_228 = 230;
			JsonDeserializer<Object> v_deser_1302_line_228 = deser;
			boolean deserializer_cache_1_expr11_line_228 = v_deser_1302_line_228 != null;
			int PROBE_END_LINE_228 = 230;
			if (deserializer_cache_1_expr11_line_228) {
                return deser;
            }
            int PROBE_START_LINE_231 = 231;
			HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_1287_line_231 = _incompleteDeserializers;
			int deserializer_cache_1_expr12_line_231 = f__incomplete_deserializers_1287_line_231.size();
			int PROBE_END_LINE_231 = 231;
			int count = deserializer_cache_1_expr12_line_231;
            int PROBE_START_LINE_233 = 238;
			int v_count_1303_line_233 = count;
			boolean deserializer_cache_1_expr13_line_233 = v_count_1303_line_233 > 0;
			int PROBE_END_LINE_233 = 238;
			// Or perhaps being resolved right now?
            if (deserializer_cache_1_expr13_line_233) {
                deser = _incompleteDeserializers.get(type);
                if (deser != null) {
                    return deser;
                }
            }
            // Nope: need to create and possibly cache
            try {
                int PROBE_START_LINE_241 = 241;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1299_line_241 = ctxt;
				com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1300_line_241 = factory;
				com.fasterxml.jackson.databind.JavaType p_type_1301_line_241 = type;
				JsonDeserializer<Object> deserializer_cache_1_expr14_line_241 = _createAndCache2(p_ctxt_1299_line_241,
						p_factory_1300_line_241, p_type_1301_line_241);
				int PROBE_END_LINE_241 = 241;
				return deserializer_cache_1_expr14_line_241;
            } finally {
                int PROBE_START_LINE_244 = 246;
				int v_count_1303_line_244 = count;
				boolean deserializer_cache_1_expr16_line_244 = v_count_1303_line_244 == 0;
				boolean deserializer_cache_1_expr17_line_244 = true;
				if (deserializer_cache_1_expr16_line_244) {
					HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_1287_line_244 = _incompleteDeserializers;
					int deserializer_cache_1_expr18_line_244 = f__incomplete_deserializers_1287_line_244.size();
					deserializer_cache_1_expr17_line_244 = deserializer_cache_1_expr18_line_244 > 0;
				}
				boolean deserializer_cache_1_expr15_line_244 = deserializer_cache_1_expr16_line_244
						&& deserializer_cache_1_expr17_line_244;
				int PROBE_END_LINE_244 = 246;
				// also: any deserializers that have been created are complete by now
                if (deserializer_cache_1_expr15_line_244) {
                    int PROBE_START_LINE_245 = 245;
					HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_1287_line_245 = _incompleteDeserializers;
					int PROBE_END_LINE_245 = 245;
					f__incomplete_deserializers_1287_line_245.clear();
                }
            }
        }
    }

    /**
     * Method that handles actual construction (via factory) and caching (both
     * intermediate and eventual)
     */
    protected JsonDeserializer<Object> _createAndCache2(DeserializationContext ctxt,
            DeserializerFactory factory, JavaType type)
        throws JsonMappingException
    {
        JsonDeserializer<Object> deser = null;
        try {
            int PROBE_START_LINE_261 = 261;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1304_line_261 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1305_line_261 = factory;
			com.fasterxml.jackson.databind.JavaType p_type_1306_line_261 = type;
			JsonDeserializer<Object> deserializer_cache_1_expr21_line_261 = _createDeserializer(p_ctxt_1304_line_261,
					p_factory_1305_line_261, p_type_1306_line_261);
			int PROBE_END_LINE_261 = 261;
			deser = deserializer_cache_1_expr21_line_261;
        } catch (IllegalArgumentException iae) {
            /* We better only expose checked exceptions, since those
             * are what caller is expected to handle
             */
            throw new JsonMappingException(iae.getMessage(), null, iae);
        }
        int PROBE_START_LINE_268 = 270;
		JsonDeserializer<Object> v_deser_1307_line_268 = deser;
		boolean deserializer_cache_1_expr22_line_268 = v_deser_1307_line_268 == null;
		int PROBE_END_LINE_268 = 270;
		if (deserializer_cache_1_expr22_line_268) {
            return null;
        }
        int PROBE_START_LINE_275 = 275;
		JsonDeserializer<Object> v_deser_1307_line_275 = deser;
		boolean deserializer_cache_1_expr24_line_275 = v_deser_1307_line_275 instanceof ResolvableDeserializer;
		boolean deserializer_cache_1_expr23_line_275 = (deserializer_cache_1_expr24_line_275);
		int PROBE_END_LINE_275 = 275;
		/* cache resulting deserializer? always true for "plain" BeanDeserializer
         * (but can be re-defined for sub-classes by using @JsonCachable!)
         */
        // 08-Jun-2010, tatu: Related to [JACKSON-296], need to avoid caching MapSerializers... so:
        boolean isResolvable = deserializer_cache_1_expr23_line_275;
        int PROBE_START_LINE_276 = 276;
		JsonDeserializer<Object> v_deser_1307_line_276 = deser;
		boolean deserializer_cache_1_expr25_line_276 = v_deser_1307_line_276.isCachable();
		int PROBE_END_LINE_276 = 276;
		boolean addToCache = deserializer_cache_1_expr25_line_276;

        int PROBE_START_LINE_290 = 294;
		boolean v_is_resolvable_1308_line_290 = isResolvable;
		int PROBE_END_LINE_290 = 294;
		/* we will temporarily hold on to all created deserializers (to
         * handle cyclic references, and possibly reuse non-cached
         * deserializers (list, map))
         */
        /* 07-Jun-2010, tatu: Danger: [JACKSON-296] was caused by accidental
         *   resolution of a reference -- couple of ways to prevent this;
         *   either not add Lists or Maps, or clear references eagerly.
         *   Let's actually do both; since both seem reasonable.
         */
        /* Need to resolve? Mostly done for bean deserializers; required for
         * resolving cyclic references.
         */
        if (v_is_resolvable_1308_line_290) {
            _incompleteDeserializers.put(type, deser);
            ((ResolvableDeserializer)deser).resolve(ctxt);
            _incompleteDeserializers.remove(type);
        }
        int PROBE_START_LINE_295 = 297;
		boolean v_add_to_cache_1309_line_295 = addToCache;
		int PROBE_END_LINE_295 = 297;
		if (v_add_to_cache_1309_line_295) {
            _cachedDeserializers.put(type, deser);
        }
        int PROBE_START_LINE_298 = 298;
		JsonDeserializer<Object> v_deser_1307_line_298 = deser;
		int PROBE_END_LINE_298 = 298;
		return v_deser_1307_line_298;
    }

    /*
    /**********************************************************
    /* Helper methods for actual construction of deserializers
    /**********************************************************
     */
    
    /**
     * Method that does the heavy lifting of checking for per-type annotations,
     * find out full type, and figure out which actual factory method
     * to call.
     */
    @SuppressWarnings("unchecked")
    protected JsonDeserializer<Object> _createDeserializer(DeserializationContext ctxt,
            DeserializerFactory factory, JavaType type)
        throws JsonMappingException
    {
        int PROBE_START_LINE_317 = 317;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1310_line_317 = ctxt;
		DeserializationConfig deserializer_cache_1_expr26_line_317 = p_ctxt_1310_line_317.getConfig();
		int PROBE_END_LINE_317 = 317;
		final DeserializationConfig config = deserializer_cache_1_expr26_line_317;

        int PROBE_START_LINE_320 = 322;
		com.fasterxml.jackson.databind.JavaType p_type_1312_line_320 = type;
		boolean deserializer_cache_1_expr28_line_320 = p_type_1312_line_320.isAbstract();
		boolean deserializer_cache_1_expr29_line_320 = false;
		boolean deserializer_cache_1_expr30_line_320 = false;
		if (!deserializer_cache_1_expr28_line_320) {
			com.fasterxml.jackson.databind.JavaType p_type_1312_line_320_v1 = type;
			deserializer_cache_1_expr29_line_320 = p_type_1312_line_320_v1.isMapLikeType();
			if (!deserializer_cache_1_expr29_line_320) {
				com.fasterxml.jackson.databind.JavaType p_type_1312_line_320_v2 = type;
				deserializer_cache_1_expr30_line_320 = p_type_1312_line_320_v2.isCollectionLikeType();
			}
		}
		boolean deserializer_cache_1_expr27_line_320 = deserializer_cache_1_expr28_line_320
				|| deserializer_cache_1_expr29_line_320 || deserializer_cache_1_expr30_line_320;
		int PROBE_END_LINE_320 = 322;
		// First things first: do we need to use abstract type mapping?
        if (deserializer_cache_1_expr27_line_320) {
            type = factory.mapAbstractType(config, type);
        }
        int PROBE_START_LINE_323 = 323;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_1313_line_323 = config;
		com.fasterxml.jackson.databind.JavaType p_type_1312_line_323 = type;
		BeanDescription deserializer_cache_1_expr31_line_323 = v_config_1313_line_323.introspect(p_type_1312_line_323);
		int PROBE_END_LINE_323 = 323;
		BeanDescription beanDesc = deserializer_cache_1_expr31_line_323;
        int PROBE_START_LINE_325 = 326;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1310_line_325 = ctxt;
		JsonDeserializer<Object> deserializer_cache_1_expr32_line_325 = findDeserializerFromAnnotation(
				p_ctxt_1310_line_325, beanDesc.getClassInfo());
		int PROBE_END_LINE_325 = 326;
		// Then: does type define explicit deserializer to use, with annotation(s)?
        JsonDeserializer<Object> deser = deserializer_cache_1_expr32_line_325;
        int PROBE_START_LINE_327 = 329;
		JsonDeserializer<Object> v_deser_1315_line_327 = deser;
		boolean deserializer_cache_1_expr34_line_327 = v_deser_1315_line_327 != null;
		int PROBE_END_LINE_327 = 329;
		if (deserializer_cache_1_expr34_line_327) {
            return deser;
        }

        int PROBE_START_LINE_332 = 332;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1310_line_332 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_1314_line_332 = beanDesc;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass deserializer_cache_1_expr36_line_332 = v_bean_desc_1314_line_332
				.getClassInfo();
		com.fasterxml.jackson.databind.JavaType p_type_1312_line_332 = type;
		JavaType deserializer_cache_1_expr35_line_332 = modifyTypeByAnnotation(p_ctxt_1310_line_332,
				deserializer_cache_1_expr36_line_332, p_type_1312_line_332);
		int PROBE_END_LINE_332 = 332;
		// If not, may have further type-modification annotations to check:
        JavaType newType = deserializer_cache_1_expr35_line_332;
        int PROBE_START_LINE_333 = 336;
		com.fasterxml.jackson.databind.JavaType v_new_type_1316_line_333 = newType;
		com.fasterxml.jackson.databind.JavaType p_type_1312_line_333 = type;
		boolean deserializer_cache_1_expr37_line_333 = v_new_type_1316_line_333 != p_type_1312_line_333;
		int PROBE_END_LINE_333 = 336;
		if (deserializer_cache_1_expr37_line_333) {
            type = newType;
            beanDesc = config.introspect(newType);
        }

        int PROBE_START_LINE_339 = 339;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_1314_line_339 = beanDesc;
		Class<?> deserializer_cache_1_expr38_line_339 = v_bean_desc_1314_line_339.findPOJOBuilder();
		int PROBE_END_LINE_339 = 339;
		// We may also have a Builder type to consider...
        Class<?> builder = deserializer_cache_1_expr38_line_339;
        int PROBE_START_LINE_340 = 343;
		Class<?> v_builder_1317_line_340 = builder;
		boolean deserializer_cache_1_expr39_line_340 = v_builder_1317_line_340 != null;
		int PROBE_END_LINE_340 = 343;
		if (deserializer_cache_1_expr39_line_340) {
            return (JsonDeserializer<Object>) factory.createBuilderBasedDeserializer(
            		ctxt, type, beanDesc, builder);
        }

        int PROBE_START_LINE_346 = 346;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_1314_line_346 = beanDesc;
		Converter<Object, Object> deserializer_cache_1_expr40_line_346 = v_bean_desc_1314_line_346
				.findDeserializationConverter();
		int PROBE_END_LINE_346 = 346;
		// Or perhaps a Converter?
        Converter<Object,Object> conv = deserializer_cache_1_expr40_line_346;
        int PROBE_START_LINE_347 = 349;
		Converter<Object, Object> v_conv_1318_line_347 = conv;
		boolean deserializer_cache_1_expr41_line_347 = v_conv_1318_line_347 == null;
		int PROBE_END_LINE_347 = 349;
		if (deserializer_cache_1_expr41_line_347) { // nope, just construct in normal way
            int PROBE_START_LINE_348 = 348;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1310_line_348 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1311_line_348 = factory;
			com.fasterxml.jackson.databind.JavaType p_type_1312_line_348 = type;
			com.fasterxml.jackson.databind.BeanDescription v_bean_desc_1314_line_348 = beanDesc;
			JsonDeserializer<?> deserializer_cache_1_expr43_line_348 = _createDeserializer2(p_ctxt_1310_line_348,
					p_factory_1311_line_348, p_type_1312_line_348, v_bean_desc_1314_line_348);
			int PROBE_END_LINE_348 = 348;
			return (JsonDeserializer<Object>) deserializer_cache_1_expr43_line_348;
        }
        // otherwise need to do bit of introspection
        JavaType delegateType = conv.getInputType(ctxt.getTypeFactory());
        // One more twist, as per [Issue#288]; probably need to get new BeanDesc
        if (!delegateType.hasRawClass(type.getRawClass())) {
            beanDesc = config.introspect(delegateType);
        }
        return new StdDelegatingDeserializer<Object>(conv, delegateType,
                _createDeserializer2(ctxt, factory, delegateType, beanDesc));
    }

    protected JsonDeserializer<?> _createDeserializer2(DeserializationContext ctxt,
            DeserializerFactory factory, JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_364 = 364;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1319_line_364 = ctxt;
		DeserializationConfig deserializer_cache_1_expr44_line_364 = p_ctxt_1319_line_364.getConfig();
		int PROBE_END_LINE_364 = 364;
		final DeserializationConfig config = deserializer_cache_1_expr44_line_364;
        int PROBE_START_LINE_366 = 368;
		com.fasterxml.jackson.databind.JavaType p_type_1321_line_366 = type;
		boolean deserializer_cache_1_expr45_line_366 = p_type_1321_line_366.isEnumType();
		int PROBE_END_LINE_366 = 368;
		// If not, let's see which factory method to use:
        if (deserializer_cache_1_expr45_line_366) {
            return factory.createEnumDeserializer(ctxt, type, beanDesc);
        }
        int PROBE_START_LINE_369 = 395;
		com.fasterxml.jackson.databind.JavaType p_type_1321_line_369 = type;
		boolean deserializer_cache_1_expr46_line_369 = p_type_1321_line_369.isContainerType();
		int PROBE_END_LINE_369 = 395;
		if (deserializer_cache_1_expr46_line_369) {
            int PROBE_START_LINE_370 = 372;
			com.fasterxml.jackson.databind.JavaType p_type_1321_line_370 = type;
			boolean deserializer_cache_1_expr47_line_370 = p_type_1321_line_370.isArrayType();
			int PROBE_END_LINE_370 = 372;
			if (deserializer_cache_1_expr47_line_370) {
                int PROBE_START_LINE_371 = 371;
				com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1320_line_371 = factory;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1319_line_371 = ctxt;
				com.fasterxml.jackson.databind.JavaType p_type_1321_line_371 = type;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1322_line_371 = beanDesc;
				JsonDeserializer<?> deserializer_cache_1_expr48_line_371 = p_factory_1320_line_371
						.createArrayDeserializer(p_ctxt_1319_line_371, (ArrayType) p_type_1321_line_371,
								p_bean_desc_1322_line_371);
				int PROBE_END_LINE_371 = 371;
				return deserializer_cache_1_expr48_line_371;
            }
            if (type.isMapLikeType()) {
                MapLikeType mlt = (MapLikeType) type;
                if (mlt.isTrueMapType()) {
                    return factory.createMapDeserializer(ctxt,(MapType) mlt, beanDesc);
                }
                return factory.createMapLikeDeserializer(ctxt, mlt, beanDesc);
            }
            if (type.isCollectionLikeType()) {
                /* 03-Aug-2012, tatu: As per [Issue#40], one exception is if shape
                 *   is to be Shape.OBJECT. Ideally we'd determine it bit later on
                 *   (to allow custom handler checks), but that won't work for other
                 *   reasons. So do it here.
                 */
                JsonFormat.Value format = beanDesc.findExpectedFormat(null);
                if (format == null || format.getShape() != JsonFormat.Shape.OBJECT) {
                    CollectionLikeType clt = (CollectionLikeType) type;
                    if (clt.isTrueCollectionType()) {
                        return factory.createCollectionDeserializer(ctxt, (CollectionType) clt, beanDesc);
                    }
                    return factory.createCollectionLikeDeserializer(ctxt, clt, beanDesc);
                }
            }
        }
        int PROBE_START_LINE_396 = 398;
		com.fasterxml.jackson.databind.JavaType p_type_1321_line_396 = type;
		Class<?> deserializer_cache_1_expr51_line_396 = p_type_1321_line_396.getRawClass();
		boolean deserializer_cache_1_expr50_line_396 = JsonNode.class
				.isAssignableFrom(deserializer_cache_1_expr51_line_396);
		int PROBE_END_LINE_396 = 398;
		if (deserializer_cache_1_expr50_line_396) {
            return factory.createTreeDeserializer(config, type, beanDesc);
        }
        int PROBE_START_LINE_399 = 399;
		com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1320_line_399 = factory;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1319_line_399 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1321_line_399 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1322_line_399 = beanDesc;
		JsonDeserializer<Object> deserializer_cache_1_expr53_line_399 = p_factory_1320_line_399
				.createBeanDeserializer(p_ctxt_1319_line_399, p_type_1321_line_399, p_bean_desc_1322_line_399);
		int PROBE_END_LINE_399 = 399;
		return deserializer_cache_1_expr53_line_399;
    }

    /**
     * Helper method called to check if a class or method
     * has annotation that tells which class to use for deserialization.
     * Returns null if no such annotation found.
     */
    protected JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationContext ctxt,
            Annotated ann)
        throws JsonMappingException
    {
        int PROBE_START_LINE_411 = 411;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1324_line_411 = ctxt;
		com.fasterxml.jackson.databind.AnnotationIntrospector deserializer_cache_1_expr55_line_411 = p_ctxt_1324_line_411
				.getAnnotationIntrospector();
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_1325_line_411 = ann;
		Object deserializer_cache_1_expr54_line_411 = deserializer_cache_1_expr55_line_411
				.findDeserializer(p_ann_1325_line_411);
		int PROBE_END_LINE_411 = 411;
		Object deserDef = deserializer_cache_1_expr54_line_411;
        int PROBE_START_LINE_412 = 414;
		Object v_deser_def_1326_line_412 = deserDef;
		boolean deserializer_cache_1_expr56_line_412 = v_deser_def_1326_line_412 == null;
		int PROBE_END_LINE_412 = 414;
		if (deserializer_cache_1_expr56_line_412) {
            return null;
        }
        JsonDeserializer<Object> deser = ctxt.deserializerInstance(ann, deserDef);
        // One more thing however: may need to also apply a converter:
        return findConvertingDeserializer(ctxt, ann, deser);
    }

    /**
     * Helper method that will check whether given annotated entity (usually class,
     * but may also be a property accessor) indicates that a {@link Converter} is to
     * be used; and if so, to construct and return suitable serializer for it.
     * If not, will simply return given serializer as is.
     */
    protected JsonDeserializer<Object> findConvertingDeserializer(DeserializationContext ctxt,
            Annotated a, JsonDeserializer<Object> deser)
        throws JsonMappingException
    {
        Converter<Object,Object> conv = findConverter(ctxt, a);
        if (conv == null) {
            return deser;
        }
        JavaType delegateType = conv.getInputType(ctxt.getTypeFactory());
        return (JsonDeserializer<Object>) new StdDelegatingDeserializer<Object>(conv, delegateType, deser);
    }

    protected Converter<Object,Object> findConverter(DeserializationContext ctxt,
            Annotated a)
        throws JsonMappingException
    {
        Object convDef = ctxt.getAnnotationIntrospector().findDeserializationConverter(a);
        if (convDef == null) {
            return null;
        }
        return ctxt.converterInstance(a, convDef);
    }    
    /**
     * Method called to see if given method has annotations that indicate
     * a more specific type than what the argument specifies.
     * If annotations are present, they must specify compatible Class;
     * instance of which can be assigned using the method. This means
     * that the Class has to be raw class of type, or its sub-class
     * (or, implementing class if original Class instance is an interface).
     *
     * @param a Method or field that the type is associated with
     * @param type Type derived from the setter argument
     *
     * @return Original type if no annotations are present; or a more
     *   specific type derived from it if type annotation(s) was found
     *
     * @throws JsonMappingException if invalid annotation is found
     */
    private JavaType modifyTypeByAnnotation(DeserializationContext ctxt,
            Annotated a, JavaType type)
        throws JsonMappingException
    {
        int PROBE_START_LINE_469 = 469;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1332_line_469 = ctxt;
		AnnotationIntrospector deserializer_cache_1_expr57_line_469 = p_ctxt_1332_line_469.getAnnotationIntrospector();
		int PROBE_END_LINE_469 = 469;
		// first: let's check class for the instance itself:
        AnnotationIntrospector intr = deserializer_cache_1_expr57_line_469;
        int PROBE_START_LINE_470 = 470;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1335_line_470 = intr;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_1333_line_470 = a;
		com.fasterxml.jackson.databind.JavaType p_type_1334_line_470 = type;
		Class<?> deserializer_cache_1_expr58_line_470 = v_intr_1335_line_470.findDeserializationType(p_a_1333_line_470,
				p_type_1334_line_470);
		int PROBE_END_LINE_470 = 470;
		Class<?> subclass = deserializer_cache_1_expr58_line_470;
        int PROBE_START_LINE_471 = 477;
		Class<?> v_subclass_1336_line_471 = subclass;
		boolean deserializer_cache_1_expr59_line_471 = v_subclass_1336_line_471 != null;
		int PROBE_END_LINE_471 = 477;
		if (deserializer_cache_1_expr59_line_471) {
            try {
                type = type.narrowBy(subclass);
            } catch (IllegalArgumentException iae) {
                throw new JsonMappingException("Failed to narrow type "+type+" with concrete-type annotation (value "+subclass.getName()+"), method '"+a.getName()+"': "+iae.getMessage(), null, iae);
            }
        }

        int PROBE_START_LINE_480 = 537;
		com.fasterxml.jackson.databind.JavaType p_type_1334_line_480 = type;
		boolean deserializer_cache_1_expr60_line_480 = p_type_1334_line_480.isContainerType();
		int PROBE_END_LINE_480 = 537;
		// then key class
        if (deserializer_cache_1_expr60_line_480) {
            int PROBE_START_LINE_481 = 481;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1335_line_481 = intr;
			com.fasterxml.jackson.databind.introspect.Annotated p_a_1333_line_481 = a;
			com.fasterxml.jackson.databind.JavaType p_type_1334_line_481 = type;
			com.fasterxml.jackson.databind.JavaType deserializer_cache_1_expr62_line_481 = p_type_1334_line_481
					.getKeyType();
			Class<?> deserializer_cache_1_expr61_line_481 = v_intr_1335_line_481
					.findDeserializationKeyType(p_a_1333_line_481, deserializer_cache_1_expr62_line_481);
			int PROBE_END_LINE_481 = 481;
			Class<?> keyClass = deserializer_cache_1_expr61_line_481;
            int PROBE_START_LINE_482 = 492;
			Class<?> v_key_class_1337_line_482 = keyClass;
			boolean deserializer_cache_1_expr63_line_482 = v_key_class_1337_line_482 != null;
			int PROBE_END_LINE_482 = 492;
			if (deserializer_cache_1_expr63_line_482) {
                // illegal to use on non-Maps
                if (!(type instanceof MapLikeType)) {
                    throw new JsonMappingException("Illegal key-type annotation: type "+type+" is not a Map(-like) type");
                }
                try {
                    type = ((MapLikeType) type).narrowKey(keyClass);
                } catch (IllegalArgumentException iae) {
                    throw new JsonMappingException("Failed to narrow key type "+type+" with key-type annotation ("+keyClass.getName()+"): "+iae.getMessage(), null, iae);
                }
            }
            int PROBE_START_LINE_493 = 493;
			com.fasterxml.jackson.databind.JavaType p_type_1334_line_493 = type;
			JavaType deserializer_cache_1_expr64_line_493 = p_type_1334_line_493.getKeyType();
			int PROBE_END_LINE_493 = 493;
			JavaType keyType = deserializer_cache_1_expr64_line_493;
            int PROBE_START_LINE_498 = 507;
			com.fasterxml.jackson.databind.JavaType v_key_type_1338_line_498 = keyType;
			boolean deserializer_cache_1_expr66_line_498 = v_key_type_1338_line_498 != null;
			boolean deserializer_cache_1_expr67_line_498 = true;
			if (deserializer_cache_1_expr66_line_498) {
				com.fasterxml.jackson.databind.JavaType v_key_type_1338_line_498_v1 = keyType;
				Object deserializer_cache_1_expr68_line_498 = v_key_type_1338_line_498_v1.getValueHandler();
				deserializer_cache_1_expr67_line_498 = deserializer_cache_1_expr68_line_498 == null;
			}
			boolean deserializer_cache_1_expr65_line_498 = deserializer_cache_1_expr66_line_498
					&& deserializer_cache_1_expr67_line_498;
			int PROBE_END_LINE_498 = 507;
			/* 21-Mar-2011, tatu: ... and associated deserializer too (unless already assigned)
             *   (not 100% why or how, but this does seem to get called more than once, which
             *   is not good: for now, let's just avoid errors)
             */
            if (deserializer_cache_1_expr65_line_498) {
                Object kdDef = intr.findKeyDeserializer(a);
                if (kdDef != null) {
                    KeyDeserializer kd = ctxt.keyDeserializerInstance(a, kdDef);
                    if (kd != null) {
                        type = ((MapLikeType) type).withKeyValueHandler(kd);
                        keyType = type.getKeyType(); // just in case it's used below
                    }
                }
            }            
            
            int PROBE_START_LINE_510 = 510;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1335_line_510 = intr;
			com.fasterxml.jackson.databind.introspect.Annotated p_a_1333_line_510 = a;
			com.fasterxml.jackson.databind.JavaType p_type_1334_line_510 = type;
			com.fasterxml.jackson.databind.JavaType deserializer_cache_1_expr70_line_510 = p_type_1334_line_510
					.getContentType();
			Class<?> deserializer_cache_1_expr69_line_510 = v_intr_1335_line_510
					.findDeserializationContentType(p_a_1333_line_510, deserializer_cache_1_expr70_line_510);
			int PROBE_END_LINE_510 = 510;
			// and finally content class; only applicable to structured types
            Class<?> cc = deserializer_cache_1_expr69_line_510;
            int PROBE_START_LINE_511 = 517;
			Class<?> v_cc_1339_line_511 = cc;
			boolean deserializer_cache_1_expr71_line_511 = v_cc_1339_line_511 != null;
			int PROBE_END_LINE_511 = 517;
			if (deserializer_cache_1_expr71_line_511) {
                try {
                    type = type.narrowContentsBy(cc);
                } catch (IllegalArgumentException iae) {
                    throw new JsonMappingException("Failed to narrow content type "+type+" with content-type annotation ("+cc.getName()+"): "+iae.getMessage(), null, iae);
                }
            }
            int PROBE_START_LINE_519 = 519;
			com.fasterxml.jackson.databind.JavaType p_type_1334_line_519 = type;
			JavaType deserializer_cache_1_expr72_line_519 = p_type_1334_line_519.getContentType();
			int PROBE_END_LINE_519 = 519;
			// ... as well as deserializer for contents:
            JavaType contentType = deserializer_cache_1_expr72_line_519;
            int PROBE_START_LINE_520 = 536;
			com.fasterxml.jackson.databind.JavaType v_content_type_1340_line_520 = contentType;
			Object deserializer_cache_1_expr74_line_520 = v_content_type_1340_line_520.getValueHandler();
			boolean deserializer_cache_1_expr73_line_520 = deserializer_cache_1_expr74_line_520 == null;
			int PROBE_END_LINE_520 = 536;
			if (deserializer_cache_1_expr73_line_520) { // as with above, avoid resetting (which would trigger exception)
                int PROBE_START_LINE_521 = 521;
				com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1335_line_521 = intr;
				com.fasterxml.jackson.databind.introspect.Annotated p_a_1333_line_521 = a;
				Object deserializer_cache_1_expr75_line_521 = v_intr_1335_line_521
						.findContentDeserializer(p_a_1333_line_521);
				int PROBE_END_LINE_521 = 521;
				Object cdDef = deserializer_cache_1_expr75_line_521;
                int PROBE_START_LINE_522 = 535;
				Object v_cd_def_1341_line_522 = cdDef;
				boolean deserializer_cache_1_expr76_line_522 = v_cd_def_1341_line_522 != null;
				int PROBE_END_LINE_522 = 535;
				if (deserializer_cache_1_expr76_line_522) {
                    JsonDeserializer<?> cd = null;
                    if (cdDef instanceof JsonDeserializer<?>) {
                        cdDef = (JsonDeserializer<?>) cdDef;
                    } else {
                        Class<?> cdClass = _verifyAsClass(cdDef, "findContentDeserializer", JsonDeserializer.None.class);
                        if (cdClass != null) {
                            cd = ctxt.deserializerInstance(a, cdClass);
                        }
                    }
                    if (cd != null) {
                        type = type.withContentValueHandler(cd);
                    }
                }
            }
        }
        int PROBE_START_LINE_538 = 538;
		com.fasterxml.jackson.databind.JavaType p_type_1334_line_538 = type;
		int PROBE_END_LINE_538 = 538;
		return p_type_1334_line_538;
    }

    private Class<?> _verifyAsClass(Object src, String methodName, Class<?> noneClass)
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
    
    /*
    /**********************************************************
    /* Overridable error reporting methods
    /**********************************************************
     */

    protected JsonDeserializer<Object> _handleUnknownValueDeserializer(JavaType type)
        throws JsonMappingException
    {
        /* Let's try to figure out the reason, to give better error
         * messages
         */
        Class<?> rawClass = type.getRawClass();
        if (!ClassUtil.isConcrete(rawClass)) {
            throw new JsonMappingException("Can not find a Value deserializer for abstract type "+type);
        }
        throw new JsonMappingException("Can not find a Value deserializer for type "+type);
    }

    protected KeyDeserializer _handleUnknownKeyDeserializer(JavaType type)
        throws JsonMappingException
    {
        throw new JsonMappingException("Can not find a (Map) Key deserializer for type "+type);
    }

}
