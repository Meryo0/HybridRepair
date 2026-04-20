package com.fasterxml.jackson.databind.deser;

import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.impl.NoClassDefFoundDeserializer;
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
        int PROBE_START_LINE_140 = 140;
		com.fasterxml.jackson.databind.JavaType p_property_type_1840_line_140 = propertyType;
		JsonDeserializer<Object> deserializer_cache_1_expr3_line_140 = _findCachedDeserializer(
				p_property_type_1840_line_140);
		int PROBE_END_LINE_140 = 140;
		JsonDeserializer<Object> deser = deserializer_cache_1_expr3_line_140;
        int PROBE_START_LINE_141 = 151;
		JsonDeserializer<Object> v_deser_1841_line_141 = deser;
		boolean deserializer_cache_1_expr4_line_141 = v_deser_1841_line_141 == null;
		int PROBE_END_LINE_141 = 151;
		if (deserializer_cache_1_expr4_line_141) {
            int PROBE_START_LINE_143 = 143;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1838_line_143 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1839_line_143 = factory;
			com.fasterxml.jackson.databind.JavaType p_property_type_1840_line_143 = propertyType;
			JsonDeserializer<Object> deserializer_cache_1_expr6_line_143 = _createAndCacheValueDeserializer(
					p_ctxt_1838_line_143, p_factory_1839_line_143, p_property_type_1840_line_143);
			int PROBE_END_LINE_143 = 143;
			// If not, need to request factory to construct (or recycle)
            deser = deserializer_cache_1_expr6_line_143;
            int PROBE_START_LINE_144 = 150;
			JsonDeserializer<Object> v_deser_1841_line_144 = deser;
			boolean deserializer_cache_1_expr7_line_144 = v_deser_1841_line_144 == null;
			int PROBE_END_LINE_144 = 150;
			if (deserializer_cache_1_expr7_line_144) {
                /* Should we let caller handle it? Let's have a helper method
                 * decide it; can throw an exception, or return a valid
                 * deserializer
                 */
                deser = _handleUnknownValueDeserializer(propertyType);
            }
        }
        int PROBE_START_LINE_152 = 152;
		JsonDeserializer<Object> v_deser_1841_line_152 = deser;
		int PROBE_END_LINE_152 = 152;
		return v_deser_1841_line_152;
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
        int PROBE_START_LINE_205 = 207;
		com.fasterxml.jackson.databind.JavaType p_type_1848_line_205 = type;
		boolean deserializer_cache_1_expr8_line_205 = p_type_1848_line_205 == null;
		int PROBE_END_LINE_205 = 207;
		if (deserializer_cache_1_expr8_line_205) {
            throw new IllegalArgumentException("Null JavaType passed");
        }
        int PROBE_START_LINE_208 = 210;
		com.fasterxml.jackson.databind.JavaType p_type_1848_line_208 = type;
		boolean deserializer_cache_1_expr9_line_208 = _hasCustomValueHandler(p_type_1848_line_208);
		int PROBE_END_LINE_208 = 210;
		if (deserializer_cache_1_expr9_line_208) {
            return null;
        }
        int PROBE_START_LINE_211 = 211;
		ConcurrentHashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__cached_deserializers_1836_line_211 = _cachedDeserializers;
		com.fasterxml.jackson.databind.JavaType p_type_1848_line_211 = type;
		JsonDeserializer<Object> deserializer_cache_1_expr10_line_211 = f__cached_deserializers_1836_line_211
				.get(p_type_1848_line_211);
		int PROBE_END_LINE_211 = 211;
		return deserializer_cache_1_expr10_line_211;
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
        int PROBE_START_LINE_229 = 252;
		HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_1837_line_229 = _incompleteDeserializers;
		int PROBE_END_LINE_229 = 252;
		/* Only one thread to construct deserializers at any given point in time;
         * limitations necessary to ensure that only completely initialized ones
         * are visible and used.
         */
        synchronized (f__incomplete_deserializers_1837_line_229) {
            int PROBE_START_LINE_231 = 231;
			com.fasterxml.jackson.databind.JavaType p_type_1851_line_231 = type;
			JsonDeserializer<Object> deserializer_cache_1_expr11_line_231 = _findCachedDeserializer(
					p_type_1851_line_231);
			int PROBE_END_LINE_231 = 231;
			// Ok, then: could it be that due to a race condition, deserializer can now be found?
            JsonDeserializer<Object> deser = deserializer_cache_1_expr11_line_231;
            int PROBE_START_LINE_232 = 234;
			JsonDeserializer<Object> v_deser_1852_line_232 = deser;
			boolean deserializer_cache_1_expr12_line_232 = v_deser_1852_line_232 != null;
			int PROBE_END_LINE_232 = 234;
			if (deserializer_cache_1_expr12_line_232) {
                return deser;
            }
            int PROBE_START_LINE_235 = 235;
			HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_1837_line_235 = _incompleteDeserializers;
			int deserializer_cache_1_expr13_line_235 = f__incomplete_deserializers_1837_line_235.size();
			int PROBE_END_LINE_235 = 235;
			int count = deserializer_cache_1_expr13_line_235;
            int PROBE_START_LINE_237 = 242;
			int v_count_1853_line_237 = count;
			boolean deserializer_cache_1_expr14_line_237 = v_count_1853_line_237 > 0;
			int PROBE_END_LINE_237 = 242;
			// Or perhaps being resolved right now?
            if (deserializer_cache_1_expr14_line_237) {
                int PROBE_START_LINE_238 = 238;
				HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_1837_line_238 = _incompleteDeserializers;
				com.fasterxml.jackson.databind.JavaType p_type_1851_line_238 = type;
				JsonDeserializer<Object> deserializer_cache_1_expr16_line_238 = f__incomplete_deserializers_1837_line_238
						.get(p_type_1851_line_238);
				int PROBE_END_LINE_238 = 238;
				deser = deserializer_cache_1_expr16_line_238;
                int PROBE_START_LINE_239 = 241;
				JsonDeserializer<Object> v_deser_1852_line_239 = deser;
				boolean deserializer_cache_1_expr17_line_239 = v_deser_1852_line_239 != null;
				int PROBE_END_LINE_239 = 241;
				if (deserializer_cache_1_expr17_line_239) {
                    int PROBE_START_LINE_240 = 240;
					JsonDeserializer<Object> v_deser_1852_line_240 = deser;
					int PROBE_END_LINE_240 = 240;
					return v_deser_1852_line_240;
                }
            }
            // Nope: need to create and possibly cache
            try {
                int PROBE_START_LINE_245 = 245;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1849_line_245 = ctxt;
				com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1850_line_245 = factory;
				com.fasterxml.jackson.databind.JavaType p_type_1851_line_245 = type;
				JsonDeserializer<Object> deserializer_cache_1_expr18_line_245 = _createAndCache2(p_ctxt_1849_line_245,
						p_factory_1850_line_245, p_type_1851_line_245);
				int PROBE_END_LINE_245 = 245;
				return deserializer_cache_1_expr18_line_245;
            } finally {
                int PROBE_START_LINE_248 = 250;
				int v_count_1853_line_248 = count;
				boolean deserializer_cache_1_expr20_line_248 = v_count_1853_line_248 == 0;
				boolean deserializer_cache_1_expr21_line_248 = true;
				if (deserializer_cache_1_expr20_line_248) {
					HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_1837_line_248 = _incompleteDeserializers;
					int deserializer_cache_1_expr22_line_248 = f__incomplete_deserializers_1837_line_248.size();
					deserializer_cache_1_expr21_line_248 = deserializer_cache_1_expr22_line_248 > 0;
				}
				boolean deserializer_cache_1_expr19_line_248 = deserializer_cache_1_expr20_line_248
						&& deserializer_cache_1_expr21_line_248;
				int PROBE_END_LINE_248 = 250;
				// also: any deserializers that have been created are complete by now
                if (deserializer_cache_1_expr19_line_248) {
                    int PROBE_START_LINE_249 = 249;
					HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_1837_line_249 = _incompleteDeserializers;
					int PROBE_END_LINE_249 = 249;
					f__incomplete_deserializers_1837_line_249.clear();
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
            int PROBE_START_LINE_265 = 265;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1854_line_265 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1855_line_265 = factory;
			com.fasterxml.jackson.databind.JavaType p_type_1856_line_265 = type;
			JsonDeserializer<Object> deserializer_cache_1_expr25_line_265 = _createDeserializer(p_ctxt_1854_line_265,
					p_factory_1855_line_265, p_type_1856_line_265);
			int PROBE_END_LINE_265 = 265;
			deser = deserializer_cache_1_expr25_line_265;
        } catch (IllegalArgumentException iae) {
            /* We better only expose checked exceptions, since those
             * are what caller is expected to handle
             */
            throw new JsonMappingException(iae.getMessage(), null, iae);
        }
        int PROBE_START_LINE_272 = 274;
		JsonDeserializer<Object> v_deser_1857_line_272 = deser;
		boolean deserializer_cache_1_expr26_line_272 = v_deser_1857_line_272 == null;
		int PROBE_END_LINE_272 = 274;
		if (deserializer_cache_1_expr26_line_272) {
            return null;
        }
        int PROBE_START_LINE_279 = 279;
		JsonDeserializer<Object> v_deser_1857_line_279 = deser;
		boolean deserializer_cache_1_expr28_line_279 = v_deser_1857_line_279 instanceof ResolvableDeserializer;
		boolean deserializer_cache_1_expr27_line_279 = (deserializer_cache_1_expr28_line_279);
		int PROBE_END_LINE_279 = 279;
		/* cache resulting deserializer? always true for "plain" BeanDeserializer
         * (but can be re-defined for sub-classes by using @JsonCachable!)
         */
        // 08-Jun-2010, tatu: Related to [JACKSON-296], need to avoid caching MapSerializers... so:
        boolean isResolvable = deserializer_cache_1_expr27_line_279;
        int PROBE_START_LINE_281 = 281;
		com.fasterxml.jackson.databind.JavaType p_type_1856_line_281 = type;
		boolean deserializer_cache_1_expr31_line_281 = _hasCustomValueHandler(p_type_1856_line_281);
		boolean deserializer_cache_1_expr30_line_281 = !deserializer_cache_1_expr31_line_281;
		boolean deserializer_cache_1_expr32_line_281 = true;
		if (deserializer_cache_1_expr30_line_281) {
			JsonDeserializer<Object> v_deser_1857_line_281 = deser;
			deserializer_cache_1_expr32_line_281 = v_deser_1857_line_281.isCachable();
		}
		boolean deserializer_cache_1_expr29_line_281 = deserializer_cache_1_expr30_line_281
				&& deserializer_cache_1_expr32_line_281;
		int PROBE_END_LINE_281 = 281;
		// 27-Mar-2015, tatu: As per [databind#735], avoid caching types with custom value desers
        boolean addToCache = deserializer_cache_1_expr29_line_281;

        int PROBE_START_LINE_295 = 299;
		boolean v_is_resolvable_1858_line_295 = isResolvable;
		int PROBE_END_LINE_295 = 299;
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
        if (v_is_resolvable_1858_line_295) {
            int PROBE_START_LINE_296 = 296;
			HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_1837_line_296 = _incompleteDeserializers;
			com.fasterxml.jackson.databind.JavaType p_type_1856_line_296 = type;
			JsonDeserializer<Object> v_deser_1857_line_296 = deser;
			int PROBE_END_LINE_296 = 296;
			f__incomplete_deserializers_1837_line_296.put(p_type_1856_line_296, v_deser_1857_line_296);
            int PROBE_START_LINE_297 = 297;
			JsonDeserializer<Object> v_deser_1857_line_297 = deser;
			com.fasterxml.jackson.databind.deser.ResolvableDeserializer deserializer_cache_1_expr35_line_297 = ((ResolvableDeserializer) v_deser_1857_line_297);
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1854_line_297 = ctxt;
			int PROBE_END_LINE_297 = 297;
			deserializer_cache_1_expr35_line_297.resolve(p_ctxt_1854_line_297);
            int PROBE_START_LINE_298 = 298;
			HashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__incomplete_deserializers_1837_line_298 = _incompleteDeserializers;
			com.fasterxml.jackson.databind.JavaType p_type_1856_line_298 = type;
			int PROBE_END_LINE_298 = 298;
			f__incomplete_deserializers_1837_line_298.remove(p_type_1856_line_298);
        }
        int PROBE_START_LINE_300 = 302;
		boolean v_add_to_cache_1859_line_300 = addToCache;
		int PROBE_END_LINE_300 = 302;
		if (v_add_to_cache_1859_line_300) {
            int PROBE_START_LINE_301 = 301;
			ConcurrentHashMap<com.fasterxml.jackson.databind.JavaType, JsonDeserializer<Object>> f__cached_deserializers_1836_line_301 = _cachedDeserializers;
			com.fasterxml.jackson.databind.JavaType p_type_1856_line_301 = type;
			JsonDeserializer<Object> v_deser_1857_line_301 = deser;
			int PROBE_END_LINE_301 = 301;
			f__cached_deserializers_1836_line_301.put(p_type_1856_line_301, v_deser_1857_line_301);
        }
        int PROBE_START_LINE_303 = 303;
		JsonDeserializer<Object> v_deser_1857_line_303 = deser;
		int PROBE_END_LINE_303 = 303;
		return v_deser_1857_line_303;
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
        int PROBE_START_LINE_322 = 322;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1860_line_322 = ctxt;
		DeserializationConfig deserializer_cache_1_expr39_line_322 = p_ctxt_1860_line_322.getConfig();
		int PROBE_END_LINE_322 = 322;
		final DeserializationConfig config = deserializer_cache_1_expr39_line_322;

        int PROBE_START_LINE_325 = 327;
		com.fasterxml.jackson.databind.JavaType p_type_1862_line_325 = type;
		boolean deserializer_cache_1_expr41_line_325 = p_type_1862_line_325.isAbstract();
		boolean deserializer_cache_1_expr42_line_325 = false;
		boolean deserializer_cache_1_expr43_line_325 = false;
		if (!deserializer_cache_1_expr41_line_325) {
			com.fasterxml.jackson.databind.JavaType p_type_1862_line_325_v1 = type;
			deserializer_cache_1_expr42_line_325 = p_type_1862_line_325_v1.isMapLikeType();
			if (!deserializer_cache_1_expr42_line_325) {
				com.fasterxml.jackson.databind.JavaType p_type_1862_line_325_v2 = type;
				deserializer_cache_1_expr43_line_325 = p_type_1862_line_325_v2.isCollectionLikeType();
			}
		}
		boolean deserializer_cache_1_expr40_line_325 = deserializer_cache_1_expr41_line_325
				|| deserializer_cache_1_expr42_line_325 || deserializer_cache_1_expr43_line_325;
		int PROBE_END_LINE_325 = 327;
		// First things first: do we need to use abstract type mapping?
        if (deserializer_cache_1_expr40_line_325) {
            int PROBE_START_LINE_326 = 326;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1861_line_326 = factory;
			com.fasterxml.jackson.databind.DeserializationConfig v_config_1863_line_326 = config;
			com.fasterxml.jackson.databind.JavaType p_type_1862_line_326 = type;
			com.fasterxml.jackson.databind.JavaType deserializer_cache_1_expr45_line_326 = p_factory_1861_line_326
					.mapAbstractType(v_config_1863_line_326, p_type_1862_line_326);
			int PROBE_END_LINE_326 = 326;
			type = deserializer_cache_1_expr45_line_326;
        }
        BeanDescription beanDesc = null;
        try {
            int PROBE_START_LINE_330 = 330;
			com.fasterxml.jackson.databind.DeserializationConfig v_config_1863_line_330 = config;
			com.fasterxml.jackson.databind.JavaType p_type_1862_line_330 = type;
			com.fasterxml.jackson.databind.BeanDescription deserializer_cache_1_expr47_line_330 = v_config_1863_line_330
					.introspect(p_type_1862_line_330);
			int PROBE_END_LINE_330 = 330;
			beanDesc = deserializer_cache_1_expr47_line_330;
        } catch (NoClassDefFoundError error) {
            return new NoClassDefFoundDeserializer<Object>(error);
        }
        int PROBE_START_LINE_335 = 336;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1860_line_335 = ctxt;
		JsonDeserializer<Object> deserializer_cache_1_expr48_line_335 = findDeserializerFromAnnotation(
				p_ctxt_1860_line_335, beanDesc.getClassInfo());
		int PROBE_END_LINE_335 = 336;
		// Then: does type define explicit deserializer to use, with annotation(s)?
        JsonDeserializer<Object> deser = deserializer_cache_1_expr48_line_335;
        int PROBE_START_LINE_337 = 339;
		JsonDeserializer<Object> v_deser_1865_line_337 = deser;
		boolean deserializer_cache_1_expr50_line_337 = v_deser_1865_line_337 != null;
		int PROBE_END_LINE_337 = 339;
		if (deserializer_cache_1_expr50_line_337) {
            return deser;
        }

        int PROBE_START_LINE_342 = 342;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1860_line_342 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_1864_line_342 = beanDesc;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass deserializer_cache_1_expr52_line_342 = v_bean_desc_1864_line_342
				.getClassInfo();
		com.fasterxml.jackson.databind.JavaType p_type_1862_line_342 = type;
		JavaType deserializer_cache_1_expr51_line_342 = modifyTypeByAnnotation(p_ctxt_1860_line_342,
				deserializer_cache_1_expr52_line_342, p_type_1862_line_342);
		int PROBE_END_LINE_342 = 342;
		// If not, may have further type-modification annotations to check:
        JavaType newType = deserializer_cache_1_expr51_line_342;
        int PROBE_START_LINE_343 = 346;
		com.fasterxml.jackson.databind.JavaType v_new_type_1866_line_343 = newType;
		com.fasterxml.jackson.databind.JavaType p_type_1862_line_343 = type;
		boolean deserializer_cache_1_expr53_line_343 = v_new_type_1866_line_343 != p_type_1862_line_343;
		int PROBE_END_LINE_343 = 346;
		if (deserializer_cache_1_expr53_line_343) {
            type = newType;
            beanDesc = config.introspect(newType);
        }

        int PROBE_START_LINE_349 = 349;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_1864_line_349 = beanDesc;
		Class<?> deserializer_cache_1_expr54_line_349 = v_bean_desc_1864_line_349.findPOJOBuilder();
		int PROBE_END_LINE_349 = 349;
		// We may also have a Builder type to consider...
        Class<?> builder = deserializer_cache_1_expr54_line_349;
        int PROBE_START_LINE_350 = 353;
		Class<?> v_builder_1867_line_350 = builder;
		boolean deserializer_cache_1_expr55_line_350 = v_builder_1867_line_350 != null;
		int PROBE_END_LINE_350 = 353;
		if (deserializer_cache_1_expr55_line_350) {
            return (JsonDeserializer<Object>) factory.createBuilderBasedDeserializer(
            		ctxt, type, beanDesc, builder);
        }

        int PROBE_START_LINE_356 = 356;
		com.fasterxml.jackson.databind.BeanDescription v_bean_desc_1864_line_356 = beanDesc;
		Converter<Object, Object> deserializer_cache_1_expr56_line_356 = v_bean_desc_1864_line_356
				.findDeserializationConverter();
		int PROBE_END_LINE_356 = 356;
		// Or perhaps a Converter?
        Converter<Object,Object> conv = deserializer_cache_1_expr56_line_356;
        int PROBE_START_LINE_357 = 359;
		Converter<Object, Object> v_conv_1868_line_357 = conv;
		boolean deserializer_cache_1_expr57_line_357 = v_conv_1868_line_357 == null;
		int PROBE_END_LINE_357 = 359;
		if (deserializer_cache_1_expr57_line_357) { // nope, just construct in normal way
            int PROBE_START_LINE_358 = 358;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1860_line_358 = ctxt;
			com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1861_line_358 = factory;
			com.fasterxml.jackson.databind.JavaType p_type_1862_line_358 = type;
			com.fasterxml.jackson.databind.BeanDescription v_bean_desc_1864_line_358 = beanDesc;
			JsonDeserializer<?> deserializer_cache_1_expr59_line_358 = _createDeserializer2(p_ctxt_1860_line_358,
					p_factory_1861_line_358, p_type_1862_line_358, v_bean_desc_1864_line_358);
			int PROBE_END_LINE_358 = 358;
			return (JsonDeserializer<Object>) deserializer_cache_1_expr59_line_358;
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
        int PROBE_START_LINE_374 = 374;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1869_line_374 = ctxt;
		DeserializationConfig deserializer_cache_1_expr60_line_374 = p_ctxt_1869_line_374.getConfig();
		int PROBE_END_LINE_374 = 374;
		final DeserializationConfig config = deserializer_cache_1_expr60_line_374;
        int PROBE_START_LINE_376 = 378;
		com.fasterxml.jackson.databind.JavaType p_type_1871_line_376 = type;
		boolean deserializer_cache_1_expr61_line_376 = p_type_1871_line_376.isEnumType();
		int PROBE_END_LINE_376 = 378;
		// If not, let's see which factory method to use:
        if (deserializer_cache_1_expr61_line_376) {
            return factory.createEnumDeserializer(ctxt, type, beanDesc);
        }
        int PROBE_START_LINE_379 = 405;
		com.fasterxml.jackson.databind.JavaType p_type_1871_line_379 = type;
		boolean deserializer_cache_1_expr62_line_379 = p_type_1871_line_379.isContainerType();
		int PROBE_END_LINE_379 = 405;
		if (deserializer_cache_1_expr62_line_379) {
            if (type.isArrayType()) {
                return factory.createArrayDeserializer(ctxt, (ArrayType) type, beanDesc);
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
        int PROBE_START_LINE_406 = 408;
		com.fasterxml.jackson.databind.JavaType p_type_1871_line_406 = type;
		Class<?> deserializer_cache_1_expr64_line_406 = p_type_1871_line_406.getRawClass();
		boolean deserializer_cache_1_expr63_line_406 = JsonNode.class
				.isAssignableFrom(deserializer_cache_1_expr64_line_406);
		int PROBE_END_LINE_406 = 408;
		if (deserializer_cache_1_expr63_line_406) {
            return factory.createTreeDeserializer(config, type, beanDesc);
        }
        int PROBE_START_LINE_409 = 409;
		com.fasterxml.jackson.databind.deser.DeserializerFactory p_factory_1870_line_409 = factory;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1869_line_409 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1871_line_409 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1872_line_409 = beanDesc;
		JsonDeserializer<Object> deserializer_cache_1_expr66_line_409 = p_factory_1870_line_409
				.createBeanDeserializer(p_ctxt_1869_line_409, p_type_1871_line_409, p_bean_desc_1872_line_409);
		int PROBE_END_LINE_409 = 409;
		return deserializer_cache_1_expr66_line_409;
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
        int PROBE_START_LINE_421 = 421;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1874_line_421 = ctxt;
		com.fasterxml.jackson.databind.AnnotationIntrospector deserializer_cache_1_expr68_line_421 = p_ctxt_1874_line_421
				.getAnnotationIntrospector();
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_1875_line_421 = ann;
		Object deserializer_cache_1_expr67_line_421 = deserializer_cache_1_expr68_line_421
				.findDeserializer(p_ann_1875_line_421);
		int PROBE_END_LINE_421 = 421;
		Object deserDef = deserializer_cache_1_expr67_line_421;
        int PROBE_START_LINE_422 = 424;
		Object v_deser_def_1876_line_422 = deserDef;
		boolean deserializer_cache_1_expr69_line_422 = v_deser_def_1876_line_422 == null;
		int PROBE_END_LINE_422 = 424;
		if (deserializer_cache_1_expr69_line_422) {
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
        int PROBE_START_LINE_479 = 479;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1882_line_479 = ctxt;
		AnnotationIntrospector deserializer_cache_1_expr70_line_479 = p_ctxt_1882_line_479.getAnnotationIntrospector();
		int PROBE_END_LINE_479 = 479;
		// first: let's check class for the instance itself:
        AnnotationIntrospector intr = deserializer_cache_1_expr70_line_479;
        int PROBE_START_LINE_480 = 480;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1885_line_480 = intr;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_1883_line_480 = a;
		com.fasterxml.jackson.databind.JavaType p_type_1884_line_480 = type;
		Class<?> deserializer_cache_1_expr71_line_480 = v_intr_1885_line_480.findDeserializationType(p_a_1883_line_480,
				p_type_1884_line_480);
		int PROBE_END_LINE_480 = 480;
		Class<?> subclass = deserializer_cache_1_expr71_line_480;
        int PROBE_START_LINE_481 = 487;
		Class<?> v_subclass_1886_line_481 = subclass;
		boolean deserializer_cache_1_expr72_line_481 = v_subclass_1886_line_481 != null;
		int PROBE_END_LINE_481 = 487;
		if (deserializer_cache_1_expr72_line_481) {
            try {
                type = type.narrowBy(subclass);
            } catch (IllegalArgumentException iae) {
                throw new JsonMappingException("Failed to narrow type "+type+" with concrete-type annotation (value "+subclass.getName()+"), method '"+a.getName()+"': "+iae.getMessage(), null, iae);
            }
        }

        int PROBE_START_LINE_490 = 547;
		com.fasterxml.jackson.databind.JavaType p_type_1884_line_490 = type;
		boolean deserializer_cache_1_expr73_line_490 = p_type_1884_line_490.isContainerType();
		int PROBE_END_LINE_490 = 547;
		// then key class
        if (deserializer_cache_1_expr73_line_490) {
            Class<?> keyClass = intr.findDeserializationKeyType(a, type.getKeyType());
            if (keyClass != null) {
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
            JavaType keyType = type.getKeyType();
            /* 21-Mar-2011, tatu: ... and associated deserializer too (unless already assigned)
             *   (not 100% why or how, but this does seem to get called more than once, which
             *   is not good: for now, let's just avoid errors)
             */
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
            
            // and finally content class; only applicable to structured types
            Class<?> cc = intr.findDeserializationContentType(a, type.getContentType());
            if (cc != null) {
                try {
                    type = type.narrowContentsBy(cc);
                } catch (IllegalArgumentException iae) {
                    throw new JsonMappingException("Failed to narrow content type "+type+" with content-type annotation ("+cc.getName()+"): "+iae.getMessage(), null, iae);
                }
            }
            // ... as well as deserializer for contents:
            JavaType contentType = type.getContentType();
            if (contentType.getValueHandler() == null) { // as with above, avoid resetting (which would trigger exception)
                Object cdDef = intr.findContentDeserializer(a);
                if (cdDef != null) {
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
        int PROBE_START_LINE_548 = 548;
		com.fasterxml.jackson.databind.JavaType p_type_1884_line_548 = type;
		int PROBE_END_LINE_548 = 548;
		return p_type_1884_line_548;
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
     * @since 2.4.6
     */
    private boolean _hasCustomValueHandler(JavaType t) {
        int PROBE_START_LINE_564 = 567;
		com.fasterxml.jackson.databind.JavaType p_t_1887_line_564 = t;
		boolean deserializer_cache_1_expr74_line_564 = p_t_1887_line_564.isContainerType();
		int PROBE_END_LINE_564 = 567;
		if (deserializer_cache_1_expr74_line_564) {
            JavaType ct = t.getContentType();
            return (ct != null) && (ct.getValueHandler() != null);
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
