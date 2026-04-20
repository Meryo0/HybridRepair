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
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

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
     * This currently means bean and Enum deserializers; starting with
     * 2.5, container deserializers will also be cached.
     *<p>
     * Given that we don't expect much concurrency for additions
     * (should very quickly converge to zero after startup), let's
     * define a relatively low concurrency setting.
     */
    final protected ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _cachedDeserializers
        = new ConcurrentHashMap<JavaType, JsonDeserializer<Object>>(64, 0.75f, 4);

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
		com.fasterxml.jackson.databind.JavaType p_property_type_2027_line_139 = propertyType;
		JsonDeserializer<Object> deserializer_cache_1_expr3_line_139 = _findCachedDeserializer(
				p_property_type_2027_line_139);
		int PROBE_END_LINE_139 = 139;
		JsonDeserializer<Object> deser = deserializer_cache_1_expr3_line_139;
        int PROBE_START_LINE_140 = 150;
		JsonDeserializer<Object> v_deser_2028_line_140 = deser;
		boolean deserializer_cache_1_expr4_line_140 = v_deser_2028_line_140 == null;
		int PROBE_END_LINE_140 = 150;
		if (deserializer_cache_1_expr4_line_140) {
            int PROBE_START_LINE_142 = 142;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2025_line_142 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2026_line_142 = factory;
			com.fasterxml.jackson.databind.JavaType p_property_type_2027_line_142 = propertyType;
			JsonDeserializer<Object> deserializer_cache_1_expr6_line_142 = _createAndCacheValueDeserializer(
					p_ctxt_2025_line_142, p_factory_2026_line_142, p_property_type_2027_line_142);
			int PROBE_END_LINE_142 = 142;
			// If not, need to request factory to construct (or recycle)
            deser = deserializer_cache_1_expr6_line_142;
            int PROBE_START_LINE_143 = 149;
			JsonDeserializer<Object> v_deser_2028_line_143 = deser;
			boolean deserializer_cache_1_expr7_line_143 = v_deser_2028_line_143 == null;
			int PROBE_END_LINE_143 = 149;
			if (deserializer_cache_1_expr7_line_143) {
                /* Should we let caller handle it? Let's have a helper method
                 * decide it; can throw an exception, or return a valid
                 * deserializer
                 */
                deser = _handleUnknownValueDeserializer(ctxt, propertyType);
            }
        }
        int PROBE_START_LINE_151 = 151;
		JsonDeserializer<Object> v_deser_2028_line_151 = deser;
		int PROBE_END_LINE_151 = 151;
		return v_deser_2028_line_151;
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
            return _handleUnknownKeyDeserializer(ctxt, type);
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
		com.fasterxml.jackson.databind.JavaType p_type_2035_line_204 = type;
		boolean deserializer_cache_1_expr8_line_204 = p_type_2035_line_204 == null;
		int PROBE_END_LINE_204 = 206;
		if (deserializer_cache_1_expr8_line_204) {
            throw new IllegalArgumentException("Null JavaType passed");
        }
        int PROBE_START_LINE_207 = 209;
		com.fasterxml.jackson.databind.JavaType p_type_2035_line_207 = type;
		boolean deserializer_cache_1_expr9_line_207 = _hasCustomHandlers(p_type_2035_line_207);
		int PROBE_END_LINE_207 = 209;
		if (deserializer_cache_1_expr9_line_207) {
            return null;
        }
        int PROBE_START_LINE_210 = 210;
		ConcurrentHashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__cached_deserializers_2023_line_210 = _cachedDeserializers;
		com.fasterxml.jackson.databind.JavaType p_type_2035_line_210 = type;
		JsonDeserializer<Object> deserializer_cache_1_expr10_line_210 = f__cached_deserializers_2023_line_210
				.get(p_type_2035_line_210);
		int PROBE_END_LINE_210 = 210;
		return deserializer_cache_1_expr10_line_210;
    }

    /**
     * Method that will try to create a deserializer for given type,
     * and resolve and cache it if necessary
     * 
     * @param ctxt Currently active deserialization context
     * @param type Type of property to deserialize
     */
    protected JsonDeserializer<Object> _createAndCacheValueDeserializer(DeserializationContext ctxt,
            DeserializerFactory factory, JavaType type)
        throws JsonMappingException
    {
        int PROBE_START_LINE_228 = 251;
		HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2024_line_228 = _incompleteDeserializers;
		int PROBE_END_LINE_228 = 251;
		/* Only one thread to construct deserializers at any given point in time;
         * limitations necessary to ensure that only completely initialized ones
         * are visible and used.
         */
        synchronized (f__incomplete_deserializers_2024_line_228) {
            int PROBE_START_LINE_230 = 230;
			com.fasterxml.jackson.databind.JavaType p_type_2038_line_230 = type;
			JsonDeserializer<Object> deserializer_cache_1_expr11_line_230 = _findCachedDeserializer(
					p_type_2038_line_230);
			int PROBE_END_LINE_230 = 230;
			// Ok, then: could it be that due to a race condition, deserializer can now be found?
            JsonDeserializer<Object> deser = deserializer_cache_1_expr11_line_230;
            int PROBE_START_LINE_231 = 233;
			JsonDeserializer<Object> v_deser_2039_line_231 = deser;
			boolean deserializer_cache_1_expr12_line_231 = v_deser_2039_line_231 != null;
			int PROBE_END_LINE_231 = 233;
			if (deserializer_cache_1_expr12_line_231) {
                return deser;
            }
            int PROBE_START_LINE_234 = 234;
			HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2024_line_234 = _incompleteDeserializers;
			int deserializer_cache_1_expr13_line_234 = f__incomplete_deserializers_2024_line_234.size();
			int PROBE_END_LINE_234 = 234;
			int count = deserializer_cache_1_expr13_line_234;
            int PROBE_START_LINE_236 = 241;
			int v_count_2040_line_236 = count;
			boolean deserializer_cache_1_expr14_line_236 = v_count_2040_line_236 > 0;
			int PROBE_END_LINE_236 = 241;
			// Or perhaps being resolved right now?
            if (deserializer_cache_1_expr14_line_236) {
                int PROBE_START_LINE_237 = 237;
				HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2024_line_237 = _incompleteDeserializers;
				com.fasterxml.jackson.databind.JavaType p_type_2038_line_237 = type;
				JsonDeserializer<Object> deserializer_cache_1_expr16_line_237 = f__incomplete_deserializers_2024_line_237
						.get(p_type_2038_line_237);
				int PROBE_END_LINE_237 = 237;
				deser = deserializer_cache_1_expr16_line_237;
                int PROBE_START_LINE_238 = 240;
				JsonDeserializer<Object> v_deser_2039_line_238 = deser;
				boolean deserializer_cache_1_expr17_line_238 = v_deser_2039_line_238 != null;
				int PROBE_END_LINE_238 = 240;
				if (deserializer_cache_1_expr17_line_238) {
                    return deser;
                }
            }
            // Nope: need to create and possibly cache
            try {
                int PROBE_START_LINE_244 = 244;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2036_line_244 = ctxt;
				com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2037_line_244 = factory;
				com.fasterxml.jackson.databind.JavaType p_type_2038_line_244 = type;
				JsonDeserializer<Object> deserializer_cache_1_expr18_line_244 = _createAndCache2(p_ctxt_2036_line_244,
						p_factory_2037_line_244, p_type_2038_line_244);
				int PROBE_END_LINE_244 = 244;
				return deserializer_cache_1_expr18_line_244;
            } finally {
                int PROBE_START_LINE_247 = 249;
				int v_count_2040_line_247 = count;
				boolean deserializer_cache_1_expr20_line_247 = v_count_2040_line_247 == 0;
				boolean deserializer_cache_1_expr21_line_247 = true;
				if (deserializer_cache_1_expr20_line_247) {
					HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2024_line_247 = _incompleteDeserializers;
					int deserializer_cache_1_expr22_line_247 = f__incomplete_deserializers_2024_line_247.size();
					deserializer_cache_1_expr21_line_247 = deserializer_cache_1_expr22_line_247 > 0;
				}
				boolean deserializer_cache_1_expr19_line_247 = deserializer_cache_1_expr20_line_247
						&& deserializer_cache_1_expr21_line_247;
				int PROBE_END_LINE_247 = 249;
				// also: any deserializers that have been created are complete by now
                if (deserializer_cache_1_expr19_line_247) {
                    int PROBE_START_LINE_248 = 248;
					HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2024_line_248 = _incompleteDeserializers;
					int PROBE_END_LINE_248 = 248;
					f__incomplete_deserializers_2024_line_248.clear();
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
            int PROBE_START_LINE_264 = 264;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2041_line_264 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2042_line_264 = factory;
			com.fasterxml.jackson.databind.JavaType p_type_2043_line_264 = type;
			JsonDeserializer<Object> deserializer_cache_1_expr25_line_264 = _createDeserializer(p_ctxt_2041_line_264,
					p_factory_2042_line_264, p_type_2043_line_264);
			int PROBE_END_LINE_264 = 264;
			deser = deserializer_cache_1_expr25_line_264;
        } catch (IllegalArgumentException iae) {
            // We better only expose checked exceptions, since those
            // are what caller is expected to handle
            throw JsonMappingException.from(ctxt, iae.getMessage(), iae);
        }
        int PROBE_START_LINE_270 = 272;
		JsonDeserializer<Object> v_deser_2044_line_270 = deser;
		boolean deserializer_cache_1_expr26_line_270 = v_deser_2044_line_270 == null;
		int PROBE_END_LINE_270 = 272;
		if (deserializer_cache_1_expr26_line_270) {
            return null;
        }
        int PROBE_START_LINE_277 = 277;
		com.fasterxml.jackson.databind.JavaType p_type_2043_line_277 = type;
		boolean deserializer_cache_1_expr29_line_277 = _hasCustomHandlers(p_type_2043_line_277);
		boolean deserializer_cache_1_expr28_line_277 = !deserializer_cache_1_expr29_line_277;
		boolean deserializer_cache_1_expr30_line_277 = true;
		if (deserializer_cache_1_expr28_line_277) {
			JsonDeserializer<Object> v_deser_2044_line_277 = deser;
			deserializer_cache_1_expr30_line_277 = v_deser_2044_line_277.isCachable();
		}
		boolean deserializer_cache_1_expr27_line_277 = deserializer_cache_1_expr28_line_277
				&& deserializer_cache_1_expr30_line_277;
		int PROBE_END_LINE_277 = 277;
		/* cache resulting deserializer? always true for "plain" BeanDeserializer
         * (but can be re-defined for sub-classes by using @JsonCachable!)
         */
        // 27-Mar-2015, tatu: As per [databind#735], avoid caching types with custom value desers
        boolean addToCache = deserializer_cache_1_expr27_line_277;

        int PROBE_START_LINE_291 = 295;
		JsonDeserializer<Object> v_deser_2044_line_291 = deser;
		boolean deserializer_cache_1_expr31_line_291 = v_deser_2044_line_291 instanceof ResolvableDeserializer;
		int PROBE_END_LINE_291 = 295;
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
        if (deserializer_cache_1_expr31_line_291) {
            int PROBE_START_LINE_292 = 292;
			HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2024_line_292 = _incompleteDeserializers;
			com.fasterxml.jackson.databind.JavaType p_type_2043_line_292 = type;
			JsonDeserializer<Object> v_deser_2044_line_292 = deser;
			int PROBE_END_LINE_292 = 292;
			f__incomplete_deserializers_2024_line_292.put(p_type_2043_line_292, v_deser_2044_line_292);
            int PROBE_START_LINE_293 = 293;
			JsonDeserializer<Object> v_deser_2044_line_293 = deser;
			com.fasterxml.jackson.databind.deser.ResolvableDeserializer deserializer_cache_1_expr34_line_293 = ((ResolvableDeserializer) v_deser_2044_line_293);
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2041_line_293 = ctxt;
			int PROBE_END_LINE_293 = 293;
			deserializer_cache_1_expr34_line_293.resolve(p_ctxt_2041_line_293);
            _incompleteDeserializers.remove(type);
        }
        int PROBE_START_LINE_296 = 298;
		boolean v_add_to_cache_2045_line_296 = addToCache;
		int PROBE_END_LINE_296 = 298;
		if (v_add_to_cache_2045_line_296) {
            _cachedDeserializers.put(type, deser);
        }
        int PROBE_START_LINE_299 = 299;
		JsonDeserializer<Object> v_deser_2044_line_299 = deser;
		int PROBE_END_LINE_299 = 299;
		return v_deser_2044_line_299;
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
        int PROBE_START_LINE_318 = 318;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2046_line_318 = ctxt;
		DeserializationConfig deserializer_cache_1_expr36_line_318 = p_ctxt_2046_line_318.getConfig();
		int PROBE_END_LINE_318 = 318;
		final DeserializationConfig config = deserializer_cache_1_expr36_line_318;

        int PROBE_START_LINE_321 = 323;
		com.fasterxml.jackson.databind.JavaType p_type_2048_line_321 = type;
		boolean deserializer_cache_1_expr38_line_321 = p_type_2048_line_321.isAbstract();
		boolean deserializer_cache_1_expr39_line_321 = false;
		boolean deserializer_cache_1_expr40_line_321 = false;
		if (!deserializer_cache_1_expr38_line_321) {
			com.fasterxml.jackson.databind.JavaType p_type_2048_line_321_v1 = type;
			deserializer_cache_1_expr39_line_321 = p_type_2048_line_321_v1.isMapLikeType();
			if (!deserializer_cache_1_expr39_line_321) {
				com.fasterxml.jackson.databind.JavaType p_type_2048_line_321_v2 = type;
				deserializer_cache_1_expr40_line_321 = p_type_2048_line_321_v2.isCollectionLikeType();
			}
		}
		boolean deserializer_cache_1_expr37_line_321 = deserializer_cache_1_expr38_line_321
				|| deserializer_cache_1_expr39_line_321 || deserializer_cache_1_expr40_line_321;
		int PROBE_END_LINE_321 = 323;
		// First things first: do we need to use abstract type mapping?
        if (deserializer_cache_1_expr37_line_321) {
            int PROBE_START_LINE_322 = 322;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2047_line_322 = factory;
			com.fasterxml.jackson.databind.DeserializationConfig v_config_2049_line_322 = config;
			com.fasterxml.jackson.databind.JavaType p_type_2048_line_322 = type;
			com.fasterxml.jackson.databind.JavaType deserializer_cache_1_expr42_line_322 = p_factory_2047_line_322
					.mapAbstractType(v_config_2049_line_322, p_type_2048_line_322);
			int PROBE_END_LINE_322 = 322;
			type = deserializer_cache_1_expr42_line_322;
        }
        int PROBE_START_LINE_324 = 324;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_2049_line_324 = config;
		com.fasterxml.jackson.databind.JavaType p_type_2048_line_324 = type;
		BeanDescription deserializer_cache_1_expr43_line_324 = v_config_2049_line_324.introspect(p_type_2048_line_324);
		int PROBE_END_LINE_324 = 324;
		BeanDescription beanDesc = deserializer_cache_1_expr43_line_324;
        int PROBE_START_LINE_326 = 327;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2046_line_326 = ctxt;
		JsonDeserializer<Object> deserializer_cache_1_expr44_line_326 = findDeserializerFromAnnotation(
				p_ctxt_2046_line_326, beanDesc.getClassInfo());
		int PROBE_END_LINE_326 = 327;
		// Then: does type define explicit deserializer to use, with annotation(s)?
        JsonDeserializer<Object> deser = deserializer_cache_1_expr44_line_326;
        int PROBE_START_LINE_328 = 330;
		JsonDeserializer<Object> v_deser_2051_line_328 = deser;
		boolean deserializer_cache_1_expr46_line_328 = v_deser_2051_line_328 != null;
		int PROBE_END_LINE_328 = 330;
		if (deserializer_cache_1_expr46_line_328) {
            return deser;
        }

        int PROBE_START_LINE_333 = 333;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2046_line_333 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_2050_line_333 = beanDesc;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass deserializer_cache_1_expr48_line_333 = v_bean_desc_2050_line_333
				.getClassInfo();
		com.fasterxml.jackson.databind.JavaType p_type_2048_line_333 = type;
		JavaType deserializer_cache_1_expr47_line_333 = modifyTypeByAnnotation(p_ctxt_2046_line_333,
				deserializer_cache_1_expr48_line_333, p_type_2048_line_333);
		int PROBE_END_LINE_333 = 333;
		// If not, may have further type-modification annotations to check:
        JavaType newType = deserializer_cache_1_expr47_line_333;
        int PROBE_START_LINE_334 = 337;
		com.fasterxml.jackson.databind.JavaType v_new_type_2052_line_334 = newType;
		com.fasterxml.jackson.databind.JavaType p_type_2048_line_334 = type;
		boolean deserializer_cache_1_expr49_line_334 = v_new_type_2052_line_334 != p_type_2048_line_334;
		int PROBE_END_LINE_334 = 337;
		if (deserializer_cache_1_expr49_line_334) {
            type = newType;
            beanDesc = config.introspect(newType);
        }

        int PROBE_START_LINE_340 = 340;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_2050_line_340 = beanDesc;
		Class<?> deserializer_cache_1_expr50_line_340 = v_bean_desc_2050_line_340.findPOJOBuilder();
		int PROBE_END_LINE_340 = 340;
		// We may also have a Builder type to consider...
        Class<?> builder = deserializer_cache_1_expr50_line_340;
        int PROBE_START_LINE_341 = 344;
		Class<?> v_builder_2053_line_341 = builder;
		boolean deserializer_cache_1_expr51_line_341 = v_builder_2053_line_341 != null;
		int PROBE_END_LINE_341 = 344;
		if (deserializer_cache_1_expr51_line_341) {
            return (JsonDeserializer<Object>) factory.createBuilderBasedDeserializer(
            		ctxt, type, beanDesc, builder);
        }

        int PROBE_START_LINE_347 = 347;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_2050_line_347 = beanDesc;
		Converter<Object, Object> deserializer_cache_1_expr52_line_347 = v_bean_desc_2050_line_347
				.findDeserializationConverter();
		int PROBE_END_LINE_347 = 347;
		// Or perhaps a Converter?
        Converter<Object,Object> conv = deserializer_cache_1_expr52_line_347;
        int PROBE_START_LINE_348 = 350;
		Converter<Object, Object> v_conv_2054_line_348 = conv;
		boolean deserializer_cache_1_expr53_line_348 = v_conv_2054_line_348 == null;
		int PROBE_END_LINE_348 = 350;
		if (deserializer_cache_1_expr53_line_348) { // nope, just construct in normal way
            int PROBE_START_LINE_349 = 349;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2046_line_349 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2047_line_349 = factory;
			com.fasterxml.jackson.databind.JavaType p_type_2048_line_349 = type;
			com.fasterxml.jackson.databind.BeanDescription v_bean_desc_2050_line_349 = beanDesc;
			JsonDeserializer<?> deserializer_cache_1_expr55_line_349 = _createDeserializer2(p_ctxt_2046_line_349,
					p_factory_2047_line_349, p_type_2048_line_349, v_bean_desc_2050_line_349);
			int PROBE_END_LINE_349 = 349;
			return (JsonDeserializer<Object>) deserializer_cache_1_expr55_line_349;
        }
        // otherwise need to do bit of introspection
        JavaType delegateType = conv.getInputType(ctxt.getTypeFactory());
        // One more twist, as per [databind#288]; probably need to get new BeanDesc
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
        int PROBE_START_LINE_365 = 365;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2055_line_365 = ctxt;
		DeserializationConfig deserializer_cache_1_expr56_line_365 = p_ctxt_2055_line_365.getConfig();
		int PROBE_END_LINE_365 = 365;
		final DeserializationConfig config = deserializer_cache_1_expr56_line_365;
        int PROBE_START_LINE_367 = 369;
		com.fasterxml.jackson.databind.JavaType p_type_2057_line_367 = type;
		boolean deserializer_cache_1_expr57_line_367 = p_type_2057_line_367.isEnumType();
		int PROBE_END_LINE_367 = 369;
		// If not, let's see which factory method to use:
        if (deserializer_cache_1_expr57_line_367) {
            return factory.createEnumDeserializer(ctxt, type, beanDesc);
        }
        int PROBE_START_LINE_370 = 396;
		com.fasterxml.jackson.databind.JavaType p_type_2057_line_370 = type;
		boolean deserializer_cache_1_expr58_line_370 = p_type_2057_line_370.isContainerType();
		int PROBE_END_LINE_370 = 396;
		if (deserializer_cache_1_expr58_line_370) {
            int PROBE_START_LINE_371 = 373;
			com.fasterxml.jackson.databind.JavaType p_type_2057_line_371 = type;
			boolean deserializer_cache_1_expr59_line_371 = p_type_2057_line_371.isArrayType();
			int PROBE_END_LINE_371 = 373;
			if (deserializer_cache_1_expr59_line_371) {
                return factory.createArrayDeserializer(ctxt, (ArrayType) type, beanDesc);
            }
            int PROBE_START_LINE_374 = 380;
			com.fasterxml.jackson.databind.JavaType p_type_2057_line_374 = type;
			boolean deserializer_cache_1_expr60_line_374 = p_type_2057_line_374.isMapLikeType();
			int PROBE_END_LINE_374 = 380;
			if (deserializer_cache_1_expr60_line_374) {
                MapLikeType mlt = (MapLikeType) type;
                if (mlt.isTrueMapType()) {
                    return factory.createMapDeserializer(ctxt,(MapType) mlt, beanDesc);
                }
                return factory.createMapLikeDeserializer(ctxt, mlt, beanDesc);
            }
            int PROBE_START_LINE_381 = 395;
			com.fasterxml.jackson.databind.JavaType p_type_2057_line_381 = type;
			boolean deserializer_cache_1_expr61_line_381 = p_type_2057_line_381.isCollectionLikeType();
			int PROBE_END_LINE_381 = 395;
			if (deserializer_cache_1_expr61_line_381) {
                int PROBE_START_LINE_387 = 387;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2058_line_387 = beanDesc;
				JsonFormat.Value deserializer_cache_1_expr62_line_387 = p_bean_desc_2058_line_387
						.findExpectedFormat(null);
				int PROBE_END_LINE_387 = 387;
				/* 03-Aug-2012, tatu: As per [databind#40], one exception is if shape
                 *   is to be Shape.OBJECT. Ideally we'd determine it bit later on
                 *   (to allow custom handler checks), but that won't work for other
                 *   reasons. So do it here.
                 */
                JsonFormat.Value format = deserializer_cache_1_expr62_line_387;
                int PROBE_START_LINE_388 = 394;
				com.fasterxml.jackson.annotation.JsonFormat.Value v_format_2060_line_388 = format;
				boolean deserializer_cache_1_expr65_line_388 = v_format_2060_line_388 == null;
				boolean deserializer_cache_1_expr64_line_388 = (deserializer_cache_1_expr65_line_388);
				boolean deserializer_cache_1_expr66_line_388 = false;
				if (!deserializer_cache_1_expr64_line_388) {
					com.fasterxml.jackson.annotation.JsonFormat.Value v_format_2060_line_388_v1 = format;
					com.fasterxml.jackson.annotation.JsonFormat.Shape deserializer_cache_1_expr67_line_388 = v_format_2060_line_388_v1
							.getShape();
					com.fasterxml.jackson.annotation.JsonFormat.Shape q_object_56_line_388 = JsonFormat.Shape.OBJECT;
					deserializer_cache_1_expr66_line_388 = deserializer_cache_1_expr67_line_388 != q_object_56_line_388;
				}
				boolean deserializer_cache_1_expr63_line_388 = deserializer_cache_1_expr64_line_388
						|| deserializer_cache_1_expr66_line_388;
				int PROBE_END_LINE_388 = 394;
				if (deserializer_cache_1_expr63_line_388) {
                    int PROBE_START_LINE_389 = 389;
					com.fasterxml.jackson.databind.JavaType p_type_2057_line_389 = type;
					int PROBE_END_LINE_389 = 389;
					CollectionLikeType clt = (CollectionLikeType) p_type_2057_line_389;
                    int PROBE_START_LINE_390 = 392;
					com.fasterxml.jackson.databind.type.CollectionLikeType v_clt_2061_line_390 = clt;
					boolean deserializer_cache_1_expr69_line_390 = v_clt_2061_line_390.isTrueCollectionType();
					int PROBE_END_LINE_390 = 392;
					if (deserializer_cache_1_expr69_line_390) {
                        int PROBE_START_LINE_391 = 391;
						com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2056_line_391 = factory;
						com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2055_line_391 = ctxt;
						com.fasterxml.jackson.databind.type.CollectionLikeType v_clt_2061_line_391 = clt;
						com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2058_line_391 = beanDesc;
						JsonDeserializer<?> deserializer_cache_1_expr70_line_391 = p_factory_2056_line_391
								.createCollectionDeserializer(p_ctxt_2055_line_391,
										(CollectionType) v_clt_2061_line_391, p_bean_desc_2058_line_391);
						int PROBE_END_LINE_391 = 391;
						return deserializer_cache_1_expr70_line_391;
                    }
                    return factory.createCollectionLikeDeserializer(ctxt, clt, beanDesc);
                }
            }
        }
        int PROBE_START_LINE_397 = 399;
		com.fasterxml.jackson.databind.JavaType p_type_2057_line_397 = type;
		boolean deserializer_cache_1_expr72_line_397 = p_type_2057_line_397.isReferenceType();
		int PROBE_END_LINE_397 = 399;
		if (deserializer_cache_1_expr72_line_397) {
            return factory.createReferenceDeserializer(ctxt, (ReferenceType) type, beanDesc);
        }
        int PROBE_START_LINE_400 = 402;
		com.fasterxml.jackson.databind.JavaType p_type_2057_line_400 = type;
		Class<?> deserializer_cache_1_expr74_line_400 = p_type_2057_line_400.getRawClass();
		boolean deserializer_cache_1_expr73_line_400 = JsonNode.class
				.isAssignableFrom(deserializer_cache_1_expr74_line_400);
		int PROBE_END_LINE_400 = 402;
		if (deserializer_cache_1_expr73_line_400) {
            return factory.createTreeDeserializer(config, type, beanDesc);
        }
        int PROBE_START_LINE_403 = 403;
		com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2056_line_403 = factory;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2055_line_403 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_2057_line_403 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2058_line_403 = beanDesc;
		JsonDeserializer<Object> deserializer_cache_1_expr76_line_403 = p_factory_2056_line_403
				.createBeanDeserializer(p_ctxt_2055_line_403, p_type_2057_line_403, p_bean_desc_2058_line_403);
		int PROBE_END_LINE_403 = 403;
		return deserializer_cache_1_expr76_line_403;
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
        int PROBE_START_LINE_415 = 415;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2062_line_415 = ctxt;
		com.fasterxml.jackson.databind.AnnotationIntrospector deserializer_cache_1_expr78_line_415 = p_ctxt_2062_line_415
				.getAnnotationIntrospector();
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2063_line_415 = ann;
		Object deserializer_cache_1_expr77_line_415 = deserializer_cache_1_expr78_line_415
				.findDeserializer(p_ann_2063_line_415);
		int PROBE_END_LINE_415 = 415;
		Object deserDef = deserializer_cache_1_expr77_line_415;
        int PROBE_START_LINE_416 = 418;
		Object v_deser_def_2064_line_416 = deserDef;
		boolean deserializer_cache_1_expr79_line_416 = v_deser_def_2064_line_416 == null;
		int PROBE_END_LINE_416 = 418;
		if (deserializer_cache_1_expr79_line_416) {
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
        int PROBE_START_LINE_472 = 472;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2070_line_472 = ctxt;
		AnnotationIntrospector deserializer_cache_1_expr80_line_472 = p_ctxt_2070_line_472.getAnnotationIntrospector();
		int PROBE_END_LINE_472 = 472;
		AnnotationIntrospector intr = deserializer_cache_1_expr80_line_472;
        int PROBE_START_LINE_473 = 475;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_2073_line_473 = intr;
		boolean deserializer_cache_1_expr81_line_473 = v_intr_2073_line_473 == null;
		int PROBE_END_LINE_473 = 475;
		if (deserializer_cache_1_expr81_line_473) {
            return type;
        }

        // First things first: find explicitly annotated deserializer(s)

        int PROBE_START_LINE_480 = 495;
		com.fasterxml.jackson.databind.JavaType p_type_2072_line_480 = type;
		boolean deserializer_cache_1_expr82_line_480 = p_type_2072_line_480.isMapLikeType();
		int PROBE_END_LINE_480 = 495;
		// then key/value handlers  (annotated deserializers)?
        if (deserializer_cache_1_expr82_line_480) {
            JavaType keyType = type.getKeyType();
            // 21-Mar-2011, tatu: ... and associated deserializer too (unless already assigned)
            //   (not 100% why or how, but this does seem to get called more than once, which
            //   is not good: for now, let's just avoid errors)
            if (keyType != null && keyType.getValueHandler() == null) {
                Object kdDef = intr.findKeyDeserializer(a);
                if (kdDef != null) {
                    KeyDeserializer kd = ctxt.keyDeserializerInstance(a, kdDef);
                    if (kd != null) {
                        type = ((MapLikeType) type).withKeyValueHandler(kd);
                        keyType = type.getKeyType(); // just in case it's used below
                    }
                }
            }            
        }
        int PROBE_START_LINE_496 = 496;
		com.fasterxml.jackson.databind.JavaType p_type_2072_line_496 = type;
		JavaType deserializer_cache_1_expr83_line_496 = p_type_2072_line_496.getContentType();
		int PROBE_END_LINE_496 = 496;
		JavaType contentType = deserializer_cache_1_expr83_line_496;
        int PROBE_START_LINE_497 = 515;
		com.fasterxml.jackson.databind.JavaType v_content_type_2074_line_497 = contentType;
		boolean deserializer_cache_1_expr84_line_497 = v_content_type_2074_line_497 != null;
		int PROBE_END_LINE_497 = 515;
		if (deserializer_cache_1_expr84_line_497) {
            int PROBE_START_LINE_498 = 514;
			com.fasterxml.jackson.databind.JavaType v_content_type_2074_line_498 = contentType;
			Object deserializer_cache_1_expr86_line_498 = v_content_type_2074_line_498.getValueHandler();
			boolean deserializer_cache_1_expr85_line_498 = deserializer_cache_1_expr86_line_498 == null;
			int PROBE_END_LINE_498 = 514;
			if (deserializer_cache_1_expr85_line_498) { // as with above, avoid resetting (which would trigger exception)
                int PROBE_START_LINE_499 = 499;
				com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_2073_line_499 = intr;
				com.fasterxml.jackson.databind.introspect.Annotated p_a_2071_line_499 = a;
				Object deserializer_cache_1_expr87_line_499 = v_intr_2073_line_499
						.findContentDeserializer(p_a_2071_line_499);
				int PROBE_END_LINE_499 = 499;
				Object cdDef = deserializer_cache_1_expr87_line_499;
                int PROBE_START_LINE_500 = 513;
				Object v_cd_def_2075_line_500 = cdDef;
				boolean deserializer_cache_1_expr88_line_500 = v_cd_def_2075_line_500 != null;
				int PROBE_END_LINE_500 = 513;
				if (deserializer_cache_1_expr88_line_500) {
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

        int PROBE_START_LINE_519 = 519;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_2073_line_519 = intr;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2070_line_519 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig deserializer_cache_1_expr91_line_519 = p_ctxt_2070_line_519
				.getConfig();
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2071_line_519 = a;
		com.fasterxml.jackson.databind.JavaType p_type_2072_line_519 = type;
		com.fasterxml.jackson.databind.JavaType deserializer_cache_1_expr90_line_519 = v_intr_2073_line_519
				.refineDeserializationType(deserializer_cache_1_expr91_line_519, p_a_2071_line_519,
						p_type_2072_line_519);
		int PROBE_END_LINE_519 = 519;
		// And after handlers, possible type refinements
        // (note: could possibly avoid this if explicit deserializer was invoked?)
        type = deserializer_cache_1_expr90_line_519;
        
        int PROBE_START_LINE_521 = 521;
		com.fasterxml.jackson.databind.JavaType p_type_2072_line_521 = type;
		int PROBE_END_LINE_521 = 521;
		return p_type_2072_line_521;
    }

    /*
    /**********************************************************
    /* Helper methods, other
    /**********************************************************
     */

    /**
     * Helper method used to prevent both caching and cache lookups for structured
     * types that have custom value handlers
     *
     * @since 2.8.11
     */
    private boolean _hasCustomHandlers(JavaType t) {
        int PROBE_START_LINE_537 = 552;
		com.fasterxml.jackson.databind.JavaType p_t_2076_line_537 = t;
		boolean deserializer_cache_1_expr92_line_537 = p_t_2076_line_537.isContainerType();
		int PROBE_END_LINE_537 = 552;
		if (deserializer_cache_1_expr92_line_537) {
            int PROBE_START_LINE_539 = 539;
			com.fasterxml.jackson.databind.JavaType p_t_2076_line_539 = t;
			JavaType deserializer_cache_1_expr93_line_539 = p_t_2076_line_539.getContentType();
			int PROBE_END_LINE_539 = 539;
			// First: value types may have both value and type handlers
            JavaType ct = deserializer_cache_1_expr93_line_539;
            int PROBE_START_LINE_540 = 544;
			com.fasterxml.jackson.databind.JavaType v_ct_2077_line_540 = ct;
			boolean deserializer_cache_1_expr94_line_540 = v_ct_2077_line_540 != null;
			int PROBE_END_LINE_540 = 544;
			if (deserializer_cache_1_expr94_line_540) {
                int PROBE_START_LINE_541 = 543;
				com.fasterxml.jackson.databind.JavaType v_ct_2077_line_541 = ct;
				Object deserializer_cache_1_expr98_line_541 = v_ct_2077_line_541.getValueHandler();
				boolean deserializer_cache_1_expr97_line_541 = deserializer_cache_1_expr98_line_541 != null;
				boolean deserializer_cache_1_expr96_line_541 = (deserializer_cache_1_expr97_line_541);
				boolean deserializer_cache_1_expr99_line_541 = false;
				if (!deserializer_cache_1_expr96_line_541) {
					com.fasterxml.jackson.databind.JavaType v_ct_2077_line_541_v1 = ct;
					Object deserializer_cache_1_expr101_line_541 = v_ct_2077_line_541_v1.getTypeHandler();
					boolean deserializer_cache_1_expr100_line_541 = deserializer_cache_1_expr101_line_541 != null;
					deserializer_cache_1_expr99_line_541 = (deserializer_cache_1_expr100_line_541);
				}
				boolean deserializer_cache_1_expr95_line_541 = deserializer_cache_1_expr96_line_541
						|| deserializer_cache_1_expr99_line_541;
				int PROBE_END_LINE_541 = 543;
				if (deserializer_cache_1_expr95_line_541) {
                    return true;
                }
            }
            // Second: map(-like) types may have value handler for key (but not type; keys are untyped)
            if (t.isMapLikeType()) {
                JavaType kt = t.getKeyType();
                if (kt.getValueHandler() != null) {
                    return true;
                }
            }
        }
        return false;
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

    // NOTE: changed 2.6 -> 2.7 to pass context; no way to make backwards compatible
    protected JsonDeserializer<Object> _handleUnknownValueDeserializer(DeserializationContext ctxt, JavaType type)
        throws JsonMappingException
    {
        // Let's try to figure out the reason, to give better error messages
        Class<?> rawClass = type.getRawClass();
        if (!ClassUtil.isConcrete(rawClass)) {
            ctxt.reportMappingException("Can not find a Value deserializer for abstract type %s", type);
        }
        ctxt.reportMappingException("Can not find a Value deserializer for type %s", type);
        return null;
    }

    protected KeyDeserializer _handleUnknownKeyDeserializer(DeserializationContext ctxt, JavaType type)
        throws JsonMappingException
    {
        ctxt.reportMappingException("Can not find a (Map) Key deserializer for type %s", type);
        return null;
    }
}
