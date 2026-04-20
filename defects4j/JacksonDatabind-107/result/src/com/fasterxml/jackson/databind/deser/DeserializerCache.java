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
import com.fasterxml.jackson.databind.type.MapLikeType;
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
		com.fasterxml.jackson.databind.JavaType p_property_type_2322_line_139 = propertyType;
		JsonDeserializer<Object> deserializer_cache_1_expr3_line_139 = _findCachedDeserializer(
				p_property_type_2322_line_139);
		int PROBE_END_LINE_139 = 139;
		JsonDeserializer<Object> deser = deserializer_cache_1_expr3_line_139;
        int PROBE_START_LINE_140 = 150;
		JsonDeserializer<Object> v_deser_2323_line_140 = deser;
		boolean deserializer_cache_1_expr4_line_140 = v_deser_2323_line_140 == null;
		int PROBE_END_LINE_140 = 150;
		if (deserializer_cache_1_expr4_line_140) {
            int PROBE_START_LINE_142 = 142;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2320_line_142 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2321_line_142 = factory;
			com.fasterxml.jackson.databind.JavaType p_property_type_2322_line_142 = propertyType;
			JsonDeserializer<Object> deserializer_cache_1_expr6_line_142 = _createAndCacheValueDeserializer(
					p_ctxt_2320_line_142, p_factory_2321_line_142, p_property_type_2322_line_142);
			int PROBE_END_LINE_142 = 142;
			// If not, need to request factory to construct (or recycle)
            deser = deserializer_cache_1_expr6_line_142;
            int PROBE_START_LINE_143 = 149;
			JsonDeserializer<Object> v_deser_2323_line_143 = deser;
			boolean deserializer_cache_1_expr7_line_143 = v_deser_2323_line_143 == null;
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
		JsonDeserializer<Object> v_deser_2323_line_151 = deser;
		int PROBE_END_LINE_151 = 151;
		return v_deser_2323_line_151;
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
		com.fasterxml.jackson.databind.JavaType p_type_2330_line_204 = type;
		boolean deserializer_cache_1_expr8_line_204 = p_type_2330_line_204 == null;
		int PROBE_END_LINE_204 = 206;
		if (deserializer_cache_1_expr8_line_204) {
            throw new IllegalArgumentException("Null JavaType passed");
        }
        int PROBE_START_LINE_207 = 209;
		com.fasterxml.jackson.databind.JavaType p_type_2330_line_207 = type;
		boolean deserializer_cache_1_expr9_line_207 = _hasCustomHandlers(p_type_2330_line_207);
		int PROBE_END_LINE_207 = 209;
		if (deserializer_cache_1_expr9_line_207) {
            return null;
        }
        int PROBE_START_LINE_210 = 210;
		ConcurrentHashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__cached_deserializers_2318_line_210 = _cachedDeserializers;
		com.fasterxml.jackson.databind.JavaType p_type_2330_line_210 = type;
		JsonDeserializer<Object> deserializer_cache_1_expr10_line_210 = f__cached_deserializers_2318_line_210
				.get(p_type_2330_line_210);
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
		HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2319_line_228 = _incompleteDeserializers;
		int PROBE_END_LINE_228 = 251;
		/* Only one thread to construct deserializers at any given point in time;
         * limitations necessary to ensure that only completely initialized ones
         * are visible and used.
         */
        synchronized (f__incomplete_deserializers_2319_line_228) {
            int PROBE_START_LINE_230 = 230;
			com.fasterxml.jackson.databind.JavaType p_type_2333_line_230 = type;
			JsonDeserializer<Object> deserializer_cache_1_expr11_line_230 = _findCachedDeserializer(
					p_type_2333_line_230);
			int PROBE_END_LINE_230 = 230;
			// Ok, then: could it be that due to a race condition, deserializer can now be found?
            JsonDeserializer<Object> deser = deserializer_cache_1_expr11_line_230;
            int PROBE_START_LINE_231 = 233;
			JsonDeserializer<Object> v_deser_2334_line_231 = deser;
			boolean deserializer_cache_1_expr12_line_231 = v_deser_2334_line_231 != null;
			int PROBE_END_LINE_231 = 233;
			if (deserializer_cache_1_expr12_line_231) {
                return deser;
            }
            int PROBE_START_LINE_234 = 234;
			HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2319_line_234 = _incompleteDeserializers;
			int deserializer_cache_1_expr13_line_234 = f__incomplete_deserializers_2319_line_234.size();
			int PROBE_END_LINE_234 = 234;
			int count = deserializer_cache_1_expr13_line_234;
            int PROBE_START_LINE_236 = 241;
			int v_count_2335_line_236 = count;
			boolean deserializer_cache_1_expr14_line_236 = v_count_2335_line_236 > 0;
			int PROBE_END_LINE_236 = 241;
			// Or perhaps being resolved right now?
            if (deserializer_cache_1_expr14_line_236) {
                int PROBE_START_LINE_237 = 237;
				HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2319_line_237 = _incompleteDeserializers;
				com.fasterxml.jackson.databind.JavaType p_type_2333_line_237 = type;
				JsonDeserializer<Object> deserializer_cache_1_expr16_line_237 = f__incomplete_deserializers_2319_line_237
						.get(p_type_2333_line_237);
				int PROBE_END_LINE_237 = 237;
				deser = deserializer_cache_1_expr16_line_237;
                int PROBE_START_LINE_238 = 240;
				JsonDeserializer<Object> v_deser_2334_line_238 = deser;
				boolean deserializer_cache_1_expr17_line_238 = v_deser_2334_line_238 != null;
				int PROBE_END_LINE_238 = 240;
				if (deserializer_cache_1_expr17_line_238) {
                    return deser;
                }
            }
            // Nope: need to create and possibly cache
            try {
                int PROBE_START_LINE_244 = 244;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2331_line_244 = ctxt;
				com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2332_line_244 = factory;
				com.fasterxml.jackson.databind.JavaType p_type_2333_line_244 = type;
				JsonDeserializer<Object> deserializer_cache_1_expr18_line_244 = _createAndCache2(p_ctxt_2331_line_244,
						p_factory_2332_line_244, p_type_2333_line_244);
				int PROBE_END_LINE_244 = 244;
				return deserializer_cache_1_expr18_line_244;
            } finally {
                int PROBE_START_LINE_247 = 249;
				int v_count_2335_line_247 = count;
				boolean deserializer_cache_1_expr20_line_247 = v_count_2335_line_247 == 0;
				boolean deserializer_cache_1_expr21_line_247 = true;
				if (deserializer_cache_1_expr20_line_247) {
					HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2319_line_247 = _incompleteDeserializers;
					int deserializer_cache_1_expr22_line_247 = f__incomplete_deserializers_2319_line_247.size();
					deserializer_cache_1_expr21_line_247 = deserializer_cache_1_expr22_line_247 > 0;
				}
				boolean deserializer_cache_1_expr19_line_247 = deserializer_cache_1_expr20_line_247
						&& deserializer_cache_1_expr21_line_247;
				int PROBE_END_LINE_247 = 249;
				// also: any deserializers that have been created are complete by now
                if (deserializer_cache_1_expr19_line_247) {
                    int PROBE_START_LINE_248 = 248;
					HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2319_line_248 = _incompleteDeserializers;
					int PROBE_END_LINE_248 = 248;
					f__incomplete_deserializers_2319_line_248.clear();
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
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2336_line_264 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2337_line_264 = factory;
			com.fasterxml.jackson.databind.JavaType p_type_2338_line_264 = type;
			JsonDeserializer<Object> deserializer_cache_1_expr25_line_264 = _createDeserializer(p_ctxt_2336_line_264,
					p_factory_2337_line_264, p_type_2338_line_264);
			int PROBE_END_LINE_264 = 264;
			deser = deserializer_cache_1_expr25_line_264;
        } catch (IllegalArgumentException iae) {
            // We better only expose checked exceptions, since those
            // are what caller is expected to handle
            throw JsonMappingException.from(ctxt, ClassUtil.exceptionMessage(iae), iae);
        }
        int PROBE_START_LINE_270 = 272;
		JsonDeserializer<Object> v_deser_2339_line_270 = deser;
		boolean deserializer_cache_1_expr26_line_270 = v_deser_2339_line_270 == null;
		int PROBE_END_LINE_270 = 272;
		if (deserializer_cache_1_expr26_line_270) {
            return null;
        }
        int PROBE_START_LINE_277 = 277;
		com.fasterxml.jackson.databind.JavaType p_type_2338_line_277 = type;
		boolean deserializer_cache_1_expr29_line_277 = _hasCustomHandlers(p_type_2338_line_277);
		boolean deserializer_cache_1_expr28_line_277 = !deserializer_cache_1_expr29_line_277;
		boolean deserializer_cache_1_expr30_line_277 = true;
		if (deserializer_cache_1_expr28_line_277) {
			JsonDeserializer<Object> v_deser_2339_line_277 = deser;
			deserializer_cache_1_expr30_line_277 = v_deser_2339_line_277.isCachable();
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
		JsonDeserializer<Object> v_deser_2339_line_291 = deser;
		boolean deserializer_cache_1_expr31_line_291 = v_deser_2339_line_291 instanceof ResolvableDeserializer;
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
			HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2319_line_292 = _incompleteDeserializers;
			com.fasterxml.jackson.databind.JavaType p_type_2338_line_292 = type;
			JsonDeserializer<Object> v_deser_2339_line_292 = deser;
			int PROBE_END_LINE_292 = 292;
			f__incomplete_deserializers_2319_line_292.put(p_type_2338_line_292, v_deser_2339_line_292);
            int PROBE_START_LINE_293 = 293;
			JsonDeserializer<Object> v_deser_2339_line_293 = deser;
			com.fasterxml.jackson.databind.deser.ResolvableDeserializer deserializer_cache_1_expr34_line_293 = ((ResolvableDeserializer) v_deser_2339_line_293);
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2336_line_293 = ctxt;
			int PROBE_END_LINE_293 = 293;
			deserializer_cache_1_expr34_line_293.resolve(p_ctxt_2336_line_293);
            int PROBE_START_LINE_294 = 294;
			HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_2319_line_294 = _incompleteDeserializers;
			com.fasterxml.jackson.databind.JavaType p_type_2338_line_294 = type;
			int PROBE_END_LINE_294 = 294;
			f__incomplete_deserializers_2319_line_294.remove(p_type_2338_line_294);
        }
        int PROBE_START_LINE_296 = 298;
		boolean v_add_to_cache_2340_line_296 = addToCache;
		int PROBE_END_LINE_296 = 298;
		if (v_add_to_cache_2340_line_296) {
            int PROBE_START_LINE_297 = 297;
			ConcurrentHashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__cached_deserializers_2318_line_297 = _cachedDeserializers;
			com.fasterxml.jackson.databind.JavaType p_type_2338_line_297 = type;
			JsonDeserializer<Object> v_deser_2339_line_297 = deser;
			int PROBE_END_LINE_297 = 297;
			f__cached_deserializers_2318_line_297.put(p_type_2338_line_297, v_deser_2339_line_297);
        }
        int PROBE_START_LINE_299 = 299;
		JsonDeserializer<Object> v_deser_2339_line_299 = deser;
		int PROBE_END_LINE_299 = 299;
		return v_deser_2339_line_299;
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
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2341_line_318 = ctxt;
		DeserializationConfig deserializer_cache_1_expr38_line_318 = p_ctxt_2341_line_318.getConfig();
		int PROBE_END_LINE_318 = 318;
		final DeserializationConfig config = deserializer_cache_1_expr38_line_318;

        int PROBE_START_LINE_321 = 323;
		com.fasterxml.jackson.databind.JavaType p_type_2343_line_321 = type;
		boolean deserializer_cache_1_expr40_line_321 = p_type_2343_line_321.isAbstract();
		boolean deserializer_cache_1_expr41_line_321 = false;
		boolean deserializer_cache_1_expr42_line_321 = false;
		if (!deserializer_cache_1_expr40_line_321) {
			com.fasterxml.jackson.databind.JavaType p_type_2343_line_321_v1 = type;
			deserializer_cache_1_expr41_line_321 = p_type_2343_line_321_v1.isMapLikeType();
			if (!deserializer_cache_1_expr41_line_321) {
				com.fasterxml.jackson.databind.JavaType p_type_2343_line_321_v2 = type;
				deserializer_cache_1_expr42_line_321 = p_type_2343_line_321_v2.isCollectionLikeType();
			}
		}
		boolean deserializer_cache_1_expr39_line_321 = deserializer_cache_1_expr40_line_321
				|| deserializer_cache_1_expr41_line_321 || deserializer_cache_1_expr42_line_321;
		int PROBE_END_LINE_321 = 323;
		// First things first: do we need to use abstract type mapping?
        if (deserializer_cache_1_expr39_line_321) {
            int PROBE_START_LINE_322 = 322;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2342_line_322 = factory;
			com.fasterxml.jackson.databind.DeserializationConfig v_config_2344_line_322 = config;
			com.fasterxml.jackson.databind.JavaType p_type_2343_line_322 = type;
			com.fasterxml.jackson.databind.JavaType deserializer_cache_1_expr44_line_322 = p_factory_2342_line_322
					.mapAbstractType(v_config_2344_line_322, p_type_2343_line_322);
			int PROBE_END_LINE_322 = 322;
			type = deserializer_cache_1_expr44_line_322;
        }
        int PROBE_START_LINE_324 = 324;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_2344_line_324 = config;
		com.fasterxml.jackson.databind.JavaType p_type_2343_line_324 = type;
		BeanDescription deserializer_cache_1_expr45_line_324 = v_config_2344_line_324.introspect(p_type_2343_line_324);
		int PROBE_END_LINE_324 = 324;
		BeanDescription beanDesc = deserializer_cache_1_expr45_line_324;
        int PROBE_START_LINE_326 = 327;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2341_line_326 = ctxt;
		JsonDeserializer<Object> deserializer_cache_1_expr46_line_326 = findDeserializerFromAnnotation(
				p_ctxt_2341_line_326, beanDesc.getClassInfo());
		int PROBE_END_LINE_326 = 327;
		// Then: does type define explicit deserializer to use, with annotation(s)?
        JsonDeserializer<Object> deser = deserializer_cache_1_expr46_line_326;
        int PROBE_START_LINE_328 = 330;
		JsonDeserializer<Object> v_deser_2346_line_328 = deser;
		boolean deserializer_cache_1_expr48_line_328 = v_deser_2346_line_328 != null;
		int PROBE_END_LINE_328 = 330;
		if (deserializer_cache_1_expr48_line_328) {
            return deser;
        }

        int PROBE_START_LINE_333 = 333;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2341_line_333 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_2345_line_333 = beanDesc;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass deserializer_cache_1_expr50_line_333 = v_bean_desc_2345_line_333
				.getClassInfo();
		com.fasterxml.jackson.databind.JavaType p_type_2343_line_333 = type;
		JavaType deserializer_cache_1_expr49_line_333 = modifyTypeByAnnotation(p_ctxt_2341_line_333,
				deserializer_cache_1_expr50_line_333, p_type_2343_line_333);
		int PROBE_END_LINE_333 = 333;
		// If not, may have further type-modification annotations to check:
        JavaType newType = deserializer_cache_1_expr49_line_333;
        int PROBE_START_LINE_334 = 337;
		com.fasterxml.jackson.databind.JavaType v_new_type_2347_line_334 = newType;
		com.fasterxml.jackson.databind.JavaType p_type_2343_line_334 = type;
		boolean deserializer_cache_1_expr51_line_334 = v_new_type_2347_line_334 != p_type_2343_line_334;
		int PROBE_END_LINE_334 = 337;
		if (deserializer_cache_1_expr51_line_334) {
            type = newType;
            beanDesc = config.introspect(newType);
        }

        int PROBE_START_LINE_340 = 340;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_2345_line_340 = beanDesc;
		Class<?> deserializer_cache_1_expr52_line_340 = v_bean_desc_2345_line_340.findPOJOBuilder();
		int PROBE_END_LINE_340 = 340;
		// We may also have a Builder type to consider...
        Class<?> builder = deserializer_cache_1_expr52_line_340;
        int PROBE_START_LINE_341 = 344;
		Class<?> v_builder_2348_line_341 = builder;
		boolean deserializer_cache_1_expr53_line_341 = v_builder_2348_line_341 != null;
		int PROBE_END_LINE_341 = 344;
		if (deserializer_cache_1_expr53_line_341) {
            return (JsonDeserializer<Object>) factory.createBuilderBasedDeserializer(
            		ctxt, type, beanDesc, builder);
        }

        int PROBE_START_LINE_347 = 347;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_2345_line_347 = beanDesc;
		Converter<Object, Object> deserializer_cache_1_expr54_line_347 = v_bean_desc_2345_line_347
				.findDeserializationConverter();
		int PROBE_END_LINE_347 = 347;
		// Or perhaps a Converter?
        Converter<Object,Object> conv = deserializer_cache_1_expr54_line_347;
        int PROBE_START_LINE_348 = 350;
		Converter<Object, Object> v_conv_2349_line_348 = conv;
		boolean deserializer_cache_1_expr55_line_348 = v_conv_2349_line_348 == null;
		int PROBE_END_LINE_348 = 350;
		if (deserializer_cache_1_expr55_line_348) { // nope, just construct in normal way
            int PROBE_START_LINE_349 = 349;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2341_line_349 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2342_line_349 = factory;
			com.fasterxml.jackson.databind.JavaType p_type_2343_line_349 = type;
			com.fasterxml.jackson.databind.BeanDescription v_bean_desc_2345_line_349 = beanDesc;
			JsonDeserializer<?> deserializer_cache_1_expr57_line_349 = _createDeserializer2(p_ctxt_2341_line_349,
					p_factory_2342_line_349, p_type_2343_line_349, v_bean_desc_2345_line_349);
			int PROBE_END_LINE_349 = 349;
			return (JsonDeserializer<Object>) deserializer_cache_1_expr57_line_349;
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
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2350_line_365 = ctxt;
		DeserializationConfig deserializer_cache_1_expr58_line_365 = p_ctxt_2350_line_365.getConfig();
		int PROBE_END_LINE_365 = 365;
		final DeserializationConfig config = deserializer_cache_1_expr58_line_365;
        int PROBE_START_LINE_367 = 369;
		com.fasterxml.jackson.databind.JavaType p_type_2352_line_367 = type;
		boolean deserializer_cache_1_expr59_line_367 = p_type_2352_line_367.isEnumType();
		int PROBE_END_LINE_367 = 369;
		// If not, let's see which factory method to use:
        if (deserializer_cache_1_expr59_line_367) {
            return factory.createEnumDeserializer(ctxt, type, beanDesc);
        }
        int PROBE_START_LINE_370 = 404;
		com.fasterxml.jackson.databind.JavaType p_type_2352_line_370 = type;
		boolean deserializer_cache_1_expr60_line_370 = p_type_2352_line_370.isContainerType();
		int PROBE_END_LINE_370 = 404;
		if (deserializer_cache_1_expr60_line_370) {
            int PROBE_START_LINE_371 = 373;
			com.fasterxml.jackson.databind.JavaType p_type_2352_line_371 = type;
			boolean deserializer_cache_1_expr61_line_371 = p_type_2352_line_371.isArrayType();
			int PROBE_END_LINE_371 = 373;
			if (deserializer_cache_1_expr61_line_371) {
                return factory.createArrayDeserializer(ctxt, (ArrayType) type, beanDesc);
            }
            int PROBE_START_LINE_374 = 388;
			com.fasterxml.jackson.databind.JavaType p_type_2352_line_374 = type;
			boolean deserializer_cache_1_expr62_line_374 = p_type_2352_line_374.isMapLikeType();
			int PROBE_END_LINE_374 = 388;
			if (deserializer_cache_1_expr62_line_374) {
                int PROBE_START_LINE_380 = 380;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2353_line_380 = beanDesc;
				JsonFormat.Value deserializer_cache_1_expr63_line_380 = p_bean_desc_2353_line_380
						.findExpectedFormat(null);
				int PROBE_END_LINE_380 = 380;
				// 11-Mar-2017, tatu: As per [databind#1554], also need to block
                //    handling as Map if overriden with "as POJO" option.
                // Ideally we'd determine it bit later on (to allow custom handler checks)
                // but that won't work for other reasons. So do it here.
                // (read: rewrite for 3.0)
                JsonFormat.Value format = deserializer_cache_1_expr63_line_380;
                int PROBE_START_LINE_381 = 387;
				com.fasterxml.jackson.annotation.JsonFormat.Value v_format_2355_line_381 = format;
				boolean deserializer_cache_1_expr66_line_381 = v_format_2355_line_381 == null;
				boolean deserializer_cache_1_expr65_line_381 = (deserializer_cache_1_expr66_line_381);
				boolean deserializer_cache_1_expr67_line_381 = false;
				if (!deserializer_cache_1_expr65_line_381) {
					com.fasterxml.jackson.annotation.JsonFormat.Value v_format_2355_line_381_v1 = format;
					com.fasterxml.jackson.annotation.JsonFormat.Shape deserializer_cache_1_expr68_line_381 = v_format_2355_line_381_v1
							.getShape();
					com.fasterxml.jackson.annotation.JsonFormat.Shape q_object_77_line_381 = JsonFormat.Shape.OBJECT;
					deserializer_cache_1_expr67_line_381 = deserializer_cache_1_expr68_line_381 != q_object_77_line_381;
				}
				boolean deserializer_cache_1_expr64_line_381 = deserializer_cache_1_expr65_line_381
						|| deserializer_cache_1_expr67_line_381;
				int PROBE_END_LINE_381 = 387;
				if (deserializer_cache_1_expr64_line_381) {
                    int PROBE_START_LINE_382 = 382;
					com.fasterxml.jackson.databind.JavaType p_type_2352_line_382 = type;
					int PROBE_END_LINE_382 = 382;
					MapLikeType mlt = (MapLikeType) p_type_2352_line_382;
                    int PROBE_START_LINE_383 = 385;
					com.fasterxml.jackson.databind.type.MapLikeType v_mlt_2356_line_383 = mlt;
					boolean deserializer_cache_1_expr70_line_383 = v_mlt_2356_line_383.isTrueMapType();
					int PROBE_END_LINE_383 = 385;
					if (deserializer_cache_1_expr70_line_383) {
                        int PROBE_START_LINE_384 = 384;
						com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2351_line_384 = factory;
						com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2350_line_384 = ctxt;
						com.fasterxml.jackson.databind.type.MapLikeType v_mlt_2356_line_384 = mlt;
						com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2353_line_384 = beanDesc;
						JsonDeserializer<?> deserializer_cache_1_expr71_line_384 = p_factory_2351_line_384
								.createMapDeserializer(p_ctxt_2350_line_384, (MapType) v_mlt_2356_line_384,
										p_bean_desc_2353_line_384);
						int PROBE_END_LINE_384 = 384;
						return deserializer_cache_1_expr71_line_384;
                    }
                    return factory.createMapLikeDeserializer(ctxt, mlt, beanDesc);
                }
            }
            int PROBE_START_LINE_389 = 403;
			com.fasterxml.jackson.databind.JavaType p_type_2352_line_389 = type;
			boolean deserializer_cache_1_expr73_line_389 = p_type_2352_line_389.isCollectionLikeType();
			int PROBE_END_LINE_389 = 403;
			if (deserializer_cache_1_expr73_line_389) {
                int PROBE_START_LINE_395 = 395;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2353_line_395 = beanDesc;
				JsonFormat.Value deserializer_cache_1_expr74_line_395 = p_bean_desc_2353_line_395
						.findExpectedFormat(null);
				int PROBE_END_LINE_395 = 395;
				/* 03-Aug-2012, tatu: As per [databind#40], one exception is if shape
                 *   is to be Shape.OBJECT. Ideally we'd determine it bit later on
                 *   (to allow custom handler checks), but that won't work for other
                 *   reasons. So do it here.
                 */
                JsonFormat.Value format = deserializer_cache_1_expr74_line_395;
                int PROBE_START_LINE_396 = 402;
				com.fasterxml.jackson.annotation.JsonFormat.Value v_format_2357_line_396 = format;
				boolean deserializer_cache_1_expr77_line_396 = v_format_2357_line_396 == null;
				boolean deserializer_cache_1_expr76_line_396 = (deserializer_cache_1_expr77_line_396);
				boolean deserializer_cache_1_expr78_line_396 = false;
				if (!deserializer_cache_1_expr76_line_396) {
					com.fasterxml.jackson.annotation.JsonFormat.Value v_format_2357_line_396_v1 = format;
					com.fasterxml.jackson.annotation.JsonFormat.Shape deserializer_cache_1_expr79_line_396 = v_format_2357_line_396_v1
							.getShape();
					com.fasterxml.jackson.annotation.JsonFormat.Shape q_object_78_line_396 = JsonFormat.Shape.OBJECT;
					deserializer_cache_1_expr78_line_396 = deserializer_cache_1_expr79_line_396 != q_object_78_line_396;
				}
				boolean deserializer_cache_1_expr75_line_396 = deserializer_cache_1_expr76_line_396
						|| deserializer_cache_1_expr78_line_396;
				int PROBE_END_LINE_396 = 402;
				if (deserializer_cache_1_expr75_line_396) {
                    int PROBE_START_LINE_397 = 397;
					com.fasterxml.jackson.databind.JavaType p_type_2352_line_397 = type;
					int PROBE_END_LINE_397 = 397;
					CollectionLikeType clt = (CollectionLikeType) p_type_2352_line_397;
                    int PROBE_START_LINE_398 = 400;
					com.fasterxml.jackson.databind.type.CollectionLikeType v_clt_2358_line_398 = clt;
					boolean deserializer_cache_1_expr81_line_398 = v_clt_2358_line_398.isTrueCollectionType();
					int PROBE_END_LINE_398 = 400;
					if (deserializer_cache_1_expr81_line_398) {
                        int PROBE_START_LINE_399 = 399;
						com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2351_line_399 = factory;
						com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2350_line_399 = ctxt;
						com.fasterxml.jackson.databind.type.CollectionLikeType v_clt_2358_line_399 = clt;
						com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2353_line_399 = beanDesc;
						JsonDeserializer<?> deserializer_cache_1_expr82_line_399 = p_factory_2351_line_399
								.createCollectionDeserializer(p_ctxt_2350_line_399,
										(CollectionType) v_clt_2358_line_399, p_bean_desc_2353_line_399);
						int PROBE_END_LINE_399 = 399;
						return deserializer_cache_1_expr82_line_399;
                    }
                    return factory.createCollectionLikeDeserializer(ctxt, clt, beanDesc);
                }
            }
        }
        int PROBE_START_LINE_405 = 407;
		com.fasterxml.jackson.databind.JavaType p_type_2352_line_405 = type;
		boolean deserializer_cache_1_expr84_line_405 = p_type_2352_line_405.isReferenceType();
		int PROBE_END_LINE_405 = 407;
		if (deserializer_cache_1_expr84_line_405) {
            return factory.createReferenceDeserializer(ctxt, (ReferenceType) type, beanDesc);
        }
        int PROBE_START_LINE_408 = 410;
		com.fasterxml.jackson.databind.JavaType p_type_2352_line_408 = type;
		Class<?> deserializer_cache_1_expr86_line_408 = p_type_2352_line_408.getRawClass();
		boolean deserializer_cache_1_expr85_line_408 = JsonNode.class
				.isAssignableFrom(deserializer_cache_1_expr86_line_408);
		int PROBE_END_LINE_408 = 410;
		if (deserializer_cache_1_expr85_line_408) {
            return factory.createTreeDeserializer(config, type, beanDesc);
        }
        int PROBE_START_LINE_411 = 411;
		com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_2351_line_411 = factory;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2350_line_411 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_2352_line_411 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2353_line_411 = beanDesc;
		JsonDeserializer<Object> deserializer_cache_1_expr88_line_411 = p_factory_2351_line_411
				.createBeanDeserializer(p_ctxt_2350_line_411, p_type_2352_line_411, p_bean_desc_2353_line_411);
		int PROBE_END_LINE_411 = 411;
		return deserializer_cache_1_expr88_line_411;
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
        int PROBE_START_LINE_423 = 423;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2359_line_423 = ctxt;
		com.fasterxml.jackson.databind.AnnotationIntrospector deserializer_cache_1_expr90_line_423 = p_ctxt_2359_line_423
				.getAnnotationIntrospector();
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2360_line_423 = ann;
		Object deserializer_cache_1_expr89_line_423 = deserializer_cache_1_expr90_line_423
				.findDeserializer(p_ann_2360_line_423);
		int PROBE_END_LINE_423 = 423;
		Object deserDef = deserializer_cache_1_expr89_line_423;
        int PROBE_START_LINE_424 = 426;
		Object v_deser_def_2361_line_424 = deserDef;
		boolean deserializer_cache_1_expr91_line_424 = v_deser_def_2361_line_424 == null;
		int PROBE_END_LINE_424 = 426;
		if (deserializer_cache_1_expr91_line_424) {
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
        int PROBE_START_LINE_480 = 480;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2367_line_480 = ctxt;
		AnnotationIntrospector deserializer_cache_1_expr92_line_480 = p_ctxt_2367_line_480.getAnnotationIntrospector();
		int PROBE_END_LINE_480 = 480;
		AnnotationIntrospector intr = deserializer_cache_1_expr92_line_480;
        int PROBE_START_LINE_481 = 483;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_2370_line_481 = intr;
		boolean deserializer_cache_1_expr93_line_481 = v_intr_2370_line_481 == null;
		int PROBE_END_LINE_481 = 483;
		if (deserializer_cache_1_expr93_line_481) {
            return type;
        }

        // First things first: find explicitly annotated deserializer(s)

        int PROBE_START_LINE_488 = 503;
		com.fasterxml.jackson.databind.JavaType p_type_2369_line_488 = type;
		boolean deserializer_cache_1_expr94_line_488 = p_type_2369_line_488.isMapLikeType();
		int PROBE_END_LINE_488 = 503;
		// then key/value handlers  (annotated deserializers)?
        if (deserializer_cache_1_expr94_line_488) {
            int PROBE_START_LINE_489 = 489;
			com.fasterxml.jackson.databind.JavaType p_type_2369_line_489 = type;
			JavaType deserializer_cache_1_expr95_line_489 = p_type_2369_line_489.getKeyType();
			int PROBE_END_LINE_489 = 489;
			JavaType keyType = deserializer_cache_1_expr95_line_489;
            int PROBE_START_LINE_493 = 502;
			com.fasterxml.jackson.databind.JavaType v_key_type_2371_line_493 = keyType;
			boolean deserializer_cache_1_expr97_line_493 = v_key_type_2371_line_493 != null;
			boolean deserializer_cache_1_expr98_line_493 = true;
			if (deserializer_cache_1_expr97_line_493) {
				com.fasterxml.jackson.databind.JavaType v_key_type_2371_line_493_v1 = keyType;
				Object deserializer_cache_1_expr99_line_493 = v_key_type_2371_line_493_v1.getValueHandler();
				deserializer_cache_1_expr98_line_493 = deserializer_cache_1_expr99_line_493 == null;
			}
			boolean deserializer_cache_1_expr96_line_493 = deserializer_cache_1_expr97_line_493
					&& deserializer_cache_1_expr98_line_493;
			int PROBE_END_LINE_493 = 502;
			// 21-Mar-2011, tatu: ... and associated deserializer too (unless already assigned)
            //   (not 100% why or how, but this does seem to get called more than once, which
            //   is not good: for now, let's just avoid errors)
            if (deserializer_cache_1_expr96_line_493) {
                int PROBE_START_LINE_494 = 494;
				com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_2370_line_494 = intr;
				com.fasterxml.jackson.databind.introspect.Annotated p_a_2368_line_494 = a;
				Object deserializer_cache_1_expr100_line_494 = v_intr_2370_line_494
						.findKeyDeserializer(p_a_2368_line_494);
				int PROBE_END_LINE_494 = 494;
				Object kdDef = deserializer_cache_1_expr100_line_494;
                int PROBE_START_LINE_495 = 501;
				Object v_kd_def_2372_line_495 = kdDef;
				boolean deserializer_cache_1_expr101_line_495 = v_kd_def_2372_line_495 != null;
				int PROBE_END_LINE_495 = 501;
				if (deserializer_cache_1_expr101_line_495) {
                    KeyDeserializer kd = ctxt.keyDeserializerInstance(a, kdDef);
                    if (kd != null) {
                        type = ((MapLikeType) type).withKeyValueHandler(kd);
                        keyType = type.getKeyType(); // just in case it's used below
                    }
                }
            }            
        }
        int PROBE_START_LINE_504 = 504;
		com.fasterxml.jackson.databind.JavaType p_type_2369_line_504 = type;
		JavaType deserializer_cache_1_expr102_line_504 = p_type_2369_line_504.getContentType();
		int PROBE_END_LINE_504 = 504;
		JavaType contentType = deserializer_cache_1_expr102_line_504;
        int PROBE_START_LINE_505 = 523;
		com.fasterxml.jackson.databind.JavaType v_content_type_2373_line_505 = contentType;
		boolean deserializer_cache_1_expr103_line_505 = v_content_type_2373_line_505 != null;
		int PROBE_END_LINE_505 = 523;
		if (deserializer_cache_1_expr103_line_505) {
            int PROBE_START_LINE_506 = 522;
			com.fasterxml.jackson.databind.JavaType v_content_type_2373_line_506 = contentType;
			Object deserializer_cache_1_expr105_line_506 = v_content_type_2373_line_506.getValueHandler();
			boolean deserializer_cache_1_expr104_line_506 = deserializer_cache_1_expr105_line_506 == null;
			int PROBE_END_LINE_506 = 522;
			if (deserializer_cache_1_expr104_line_506) { // as with above, avoid resetting (which would trigger exception)
                int PROBE_START_LINE_507 = 507;
				com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_2370_line_507 = intr;
				com.fasterxml.jackson.databind.introspect.Annotated p_a_2368_line_507 = a;
				Object deserializer_cache_1_expr106_line_507 = v_intr_2370_line_507
						.findContentDeserializer(p_a_2368_line_507);
				int PROBE_END_LINE_507 = 507;
				Object cdDef = deserializer_cache_1_expr106_line_507;
                int PROBE_START_LINE_508 = 521;
				Object v_cd_def_2374_line_508 = cdDef;
				boolean deserializer_cache_1_expr107_line_508 = v_cd_def_2374_line_508 != null;
				int PROBE_END_LINE_508 = 521;
				if (deserializer_cache_1_expr107_line_508) {
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

        int PROBE_START_LINE_527 = 527;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_2370_line_527 = intr;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2367_line_527 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig deserializer_cache_1_expr110_line_527 = p_ctxt_2367_line_527
				.getConfig();
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2368_line_527 = a;
		com.fasterxml.jackson.databind.JavaType p_type_2369_line_527 = type;
		com.fasterxml.jackson.databind.JavaType deserializer_cache_1_expr109_line_527 = v_intr_2370_line_527
				.refineDeserializationType(deserializer_cache_1_expr110_line_527, p_a_2368_line_527,
						p_type_2369_line_527);
		int PROBE_END_LINE_527 = 527;
		// And after handlers, possible type refinements
        // (note: could possibly avoid this if explicit deserializer was invoked?)
        type = deserializer_cache_1_expr109_line_527;
        
        int PROBE_START_LINE_529 = 529;
		com.fasterxml.jackson.databind.JavaType p_type_2369_line_529 = type;
		int PROBE_END_LINE_529 = 529;
		return p_type_2369_line_529;
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
        int PROBE_START_LINE_545 = 560;
		com.fasterxml.jackson.databind.JavaType p_t_2375_line_545 = t;
		boolean deserializer_cache_1_expr111_line_545 = p_t_2375_line_545.isContainerType();
		int PROBE_END_LINE_545 = 560;
		if (deserializer_cache_1_expr111_line_545) {
            int PROBE_START_LINE_547 = 547;
			com.fasterxml.jackson.databind.JavaType p_t_2375_line_547 = t;
			JavaType deserializer_cache_1_expr112_line_547 = p_t_2375_line_547.getContentType();
			int PROBE_END_LINE_547 = 547;
			// First: value types may have both value and type handlers
            JavaType ct = deserializer_cache_1_expr112_line_547;
            int PROBE_START_LINE_548 = 552;
			com.fasterxml.jackson.databind.JavaType v_ct_2376_line_548 = ct;
			boolean deserializer_cache_1_expr113_line_548 = v_ct_2376_line_548 != null;
			int PROBE_END_LINE_548 = 552;
			if (deserializer_cache_1_expr113_line_548) {
                int PROBE_START_LINE_549 = 551;
				com.fasterxml.jackson.databind.JavaType v_ct_2376_line_549 = ct;
				Object deserializer_cache_1_expr117_line_549 = v_ct_2376_line_549.getValueHandler();
				boolean deserializer_cache_1_expr116_line_549 = deserializer_cache_1_expr117_line_549 != null;
				boolean deserializer_cache_1_expr115_line_549 = (deserializer_cache_1_expr116_line_549);
				boolean deserializer_cache_1_expr118_line_549 = false;
				if (!deserializer_cache_1_expr115_line_549) {
					com.fasterxml.jackson.databind.JavaType v_ct_2376_line_549_v1 = ct;
					Object deserializer_cache_1_expr120_line_549 = v_ct_2376_line_549_v1.getTypeHandler();
					boolean deserializer_cache_1_expr119_line_549 = deserializer_cache_1_expr120_line_549 != null;
					deserializer_cache_1_expr118_line_549 = (deserializer_cache_1_expr119_line_549);
				}
				boolean deserializer_cache_1_expr114_line_549 = deserializer_cache_1_expr115_line_549
						|| deserializer_cache_1_expr118_line_549;
				int PROBE_END_LINE_549 = 551;
				if (deserializer_cache_1_expr114_line_549) {
                    return true;
                }
            }
            int PROBE_START_LINE_554 = 559;
			com.fasterxml.jackson.databind.JavaType p_t_2375_line_554 = t;
			boolean deserializer_cache_1_expr121_line_554 = p_t_2375_line_554.isMapLikeType();
			int PROBE_END_LINE_554 = 559;
			// Second: map(-like) types may have value handler for key (but not type; keys are untyped)
            if (deserializer_cache_1_expr121_line_554) {
                int PROBE_START_LINE_555 = 555;
				com.fasterxml.jackson.databind.JavaType p_t_2375_line_555 = t;
				JavaType deserializer_cache_1_expr122_line_555 = p_t_2375_line_555.getKeyType();
				int PROBE_END_LINE_555 = 555;
				JavaType kt = deserializer_cache_1_expr122_line_555;
                int PROBE_START_LINE_556 = 558;
				com.fasterxml.jackson.databind.JavaType v_kt_2377_line_556 = kt;
				Object deserializer_cache_1_expr124_line_556 = v_kt_2377_line_556.getValueHandler();
				boolean deserializer_cache_1_expr123_line_556 = deserializer_cache_1_expr124_line_556 != null;
				int PROBE_END_LINE_556 = 558;
				if (deserializer_cache_1_expr123_line_556) {
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

    protected JsonDeserializer<Object> _handleUnknownValueDeserializer(DeserializationContext ctxt, JavaType type)
        throws JsonMappingException
    {
        // Let's try to figure out the reason, to give better error messages
        Class<?> rawClass = type.getRawClass();
        if (!ClassUtil.isConcrete(rawClass)) {
            return ctxt.reportBadDefinition(type, "Cannot find a Value deserializer for abstract type "+type);
        }
        return ctxt.reportBadDefinition(type, "Cannot find a Value deserializer for type "+type);
    }

    protected KeyDeserializer _handleUnknownKeyDeserializer(DeserializationContext ctxt, JavaType type)
        throws JsonMappingException
    {
        return ctxt.reportBadDefinition(type, "Cannot find a (Map) Key deserializer for type "+type);
    }
}
