package com.fasterxml.jackson.databind.type;

import java.util.*;
import java.util.concurrent.atomic.AtomicReference;
import java.lang.reflect.*;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.util.List;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Map;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;

/**
 * Class used for creating concrete {@link JavaType} instances,
 * given various inputs.
 *<p>
 * Instances of this class are accessible using {@link com.fasterxml.jackson.databind.ObjectMapper}
 * as well as many objects it constructs (like
* {@link com.fasterxml.jackson.databind.DeserializationConfig} and
 * {@link com.fasterxml.jackson.databind.SerializationConfig})),
 * but usually those objects also 
 * expose convenience methods (<code>constructType</code>).
 * So, you can do for example:
 *<pre>
 *   JavaType stringType = mapper.constructType(String.class);
 *</pre>
 * However, more advanced methods are only exposed by factory so that you
 * may need to use:
 *<pre>
 *   JavaType stringCollection = mapper.getTypeFactory().constructCollectionType(List.class, String.class);
 *</pre>
 */
@SuppressWarnings({"rawtypes" })
public final class TypeFactory
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    private final static JavaType[] NO_TYPES = new JavaType[0];

    /**
     * Globally shared singleton. Not accessed directly; non-core
     * code should use per-ObjectMapper instance (via configuration objects).
     * Core Jackson code uses {@link #defaultInstance} for accessing it.
     */
    protected final static TypeFactory instance = new TypeFactory();

    int PROBE_START_LINE_48 = 48;

	protected static final com.fasterxml.jackson.databind.type.TypeBindings type_factory_1_expr3_line_48 = TypeBindings
			.emptyBindings();

	int PROBE_END_LINE_48 = 48;

	protected final static TypeBindings EMPTY_BINDINGS = type_factory_1_expr3_line_48;

    /*
    /**********************************************************
    /* Constants for "well-known" classes
    /**********************************************************
     */

    // // // Let's assume that a small set of core primitive/basic types
    // // // will not be modified, and can be freely shared to streamline
    // // // parts of processing

    private final static Class<?> CLS_STRING = String.class;
    private final static Class<?> CLS_OBJECT = Object.class;

    private final static Class<?> CLS_COMPARABLE = Comparable.class;
    private final static Class<?> CLS_CLASS = Class.class;
    private final static Class<?> CLS_ENUM = Enum.class;

    int PROBE_START_LINE_67 = 67;

	private static final Class<Boolean> q_type_200_line_67 = Boolean.TYPE;

	int PROBE_END_LINE_67 = 67;

	private final static Class<?> CLS_BOOL = q_type_200_line_67;
    int PROBE_START_LINE_68 = 68;

	private static final Class<Integer> q_type_200_line_68 = Integer.TYPE;

	int PROBE_END_LINE_68 = 68;

	private final static Class<?> CLS_INT = q_type_200_line_68;
    int PROBE_START_LINE_69 = 69;

	private static final Class<Long> q_type_200_line_69 = Long.TYPE;

	int PROBE_END_LINE_69 = 69;

	private final static Class<?> CLS_LONG = q_type_200_line_69;

    /*
    /**********************************************************
    /* Cached pre-constructed JavaType instances
    /**********************************************************
     */

    int PROBE_START_LINE_78 = 78;

	protected static final Class<?> f_cls_bool_5633_line_78 = CLS_BOOL;

	int PROBE_END_LINE_78 = 78;

	// note: these are primitive, hence no super types
    protected final static SimpleType CORE_TYPE_BOOL = new SimpleType(f_cls_bool_5633_line_78);
    int PROBE_START_LINE_79 = 79;

	protected static final Class<?> f_cls_int_5634_line_79 = CLS_INT;

	int PROBE_END_LINE_79 = 79;

	protected final static SimpleType CORE_TYPE_INT = new SimpleType(f_cls_int_5634_line_79);
    int PROBE_START_LINE_80 = 80;

	protected static final Class<?> f_cls_long_5635_line_80 = CLS_LONG;

	int PROBE_END_LINE_80 = 80;

	protected final static SimpleType CORE_TYPE_LONG = new SimpleType(f_cls_long_5635_line_80);

    int PROBE_START_LINE_83 = 83;

	protected static final Class<?> f_cls_string_5628_line_83 = CLS_STRING;

	int PROBE_END_LINE_83 = 83;

	// and as to String... well, for now, ignore its super types
    protected final static SimpleType CORE_TYPE_STRING = new SimpleType(f_cls_string_5628_line_83);

    int PROBE_START_LINE_86 = 86;

	protected static final Class<?> f_cls_object_5629_line_86 = CLS_OBJECT;

	int PROBE_END_LINE_86 = 86;

	// @since 2.7
    protected final static SimpleType CORE_TYPE_OBJECT = new SimpleType(f_cls_object_5629_line_86);

    int PROBE_START_LINE_88 = 94;

	protected static final Class<?> f_cls_comparable_5630_line_94 = CLS_COMPARABLE;

	int PROBE_END_LINE_88 = 94;

	/**
     * Cache {@link Comparable} because it is both parameteric (relatively costly to
     * resolve) and mostly useless (no special handling), better handle directly
     *
     * @since 2.7
     */
    protected final static SimpleType CORE_TYPE_COMPARABLE = new SimpleType(f_cls_comparable_5630_line_94);

    int PROBE_START_LINE_96 = 102;

	protected static final Class<?> f_cls_enum_5632_line_102 = CLS_ENUM;

	int PROBE_END_LINE_96 = 102;

	/**
     * Cache {@link Enum} because it is parametric AND self-referential (costly to
     * resolve) and useless in itself (no special handling).
     *
     * @since 2.7
     */
    protected final static SimpleType CORE_TYPE_ENUM = new SimpleType(f_cls_enum_5632_line_102);

    int PROBE_START_LINE_104 = 110;

	protected static final Class<?> f_cls_class_5631_line_110 = CLS_CLASS;

	int PROBE_END_LINE_104 = 110;

	/**
     * Cache {@link Class} because it is nominally parametric, but has no really
     * useful information.
     *
     * @since 2.7
     */
    protected final static SimpleType CORE_TYPE_CLASS = new SimpleType(f_cls_class_5631_line_110);

    /**
     * Since type resolution can be expensive (specifically when resolving
     * actual generic types), we will use small cache to avoid repetitive
     * resolution of core types
     */
    protected final LRUMap<Object,JavaType> _typeCache;

    /*
    /**********************************************************
    /* Configuration
    /**********************************************************
     */

    /**
     * Registered {@link TypeModifier}s: objects that can change details
     * of {@link JavaType} instances factory constructs.
     */
    protected final TypeModifier[] _modifiers;

    protected final TypeParser _parser;
    
    /**
     * ClassLoader used by this factory [databind#624].
     */
    protected final ClassLoader _classLoader;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    private TypeFactory() {
        this(null);
    }

    /**
     * @since 2.8
     */
    protected TypeFactory(LRUMap<Object,JavaType> typeCache) {
        int PROBE_START_LINE_152 = 154;
		LRUMap<Object, com.fasterxml.jackson.databind.JavaType> p_type_cache_5644_line_152 = typeCache;
		boolean type_factory_1_expr18_line_152 = p_type_cache_5644_line_152 == null;
		int PROBE_END_LINE_152 = 154;
		if (type_factory_1_expr18_line_152) {
            typeCache = new LRUMap<Object,JavaType>(16, 200);
        }
        int PROBE_START_LINE_155 = 155;
		LRUMap<Object, com.fasterxml.jackson.databind.JavaType> p_type_cache_5644_line_155 = typeCache;
		int PROBE_END_LINE_155 = 155;
		_typeCache = p_type_cache_5644_line_155;
        _parser = new TypeParser(this);
        _modifiers = null;
        _classLoader = null;
    }

    protected TypeFactory(LRUMap<Object,JavaType> typeCache, TypeParser p,
            TypeModifier[] mods, ClassLoader classLoader)
    {
        if (typeCache == null) {
            typeCache = new LRUMap<Object,JavaType>(16, 200);
        }
        _typeCache = typeCache;
        // As per [databind#894] must ensure we have back-linkage from TypeFactory:
        _parser = p.withFactory(this);
        _modifiers = mods;
        _classLoader = classLoader;
    }

    public TypeFactory withModifier(TypeModifier mod) 
    {
        LRUMap<Object,JavaType> typeCache = _typeCache;
        TypeModifier[] mods;
        if (mod == null) { // mostly for unit tests
            mods = null;
            // 30-Jun-2016, tatu: for some reason expected semantics are to clear cache
            //    in this case; can't recall why, but keeping the same
            typeCache = null;
        } else if (_modifiers == null) {
            mods = new TypeModifier[] { mod };
        } else {
            mods = ArrayBuilders.insertInListNoDup(_modifiers, mod);
        }
        return new TypeFactory(typeCache, _parser, mods, _classLoader);
    }

    public TypeFactory withClassLoader(ClassLoader classLoader) {
        return new TypeFactory(_typeCache, _parser, _modifiers, classLoader);
    }

    /**
     * Mutant factory method that will construct new {@link TypeFactory} with
     * identical settings except for different cache; most likely one with
     * bigger maximum size.
     *
     * @since 2.8
     */
    public TypeFactory withCache(LRUMap<Object,JavaType> cache)  {
        return new TypeFactory(cache, _parser, _modifiers, _classLoader);
    }

    /**
     * Method used to access the globally shared instance, which has
     * no custom configuration. Used by <code>ObjectMapper</code> to
     * get the default factory when constructed.
     */
    public static TypeFactory defaultInstance() { int PROBE_START_LINE_211 = 211;
		com.fasterxml.jackson.databind.type.TypeFactory f_instance_5626_line_211 = instance;
		int PROBE_END_LINE_211 = 211;
	return f_instance_5626_line_211; }

    /**
     * Method that will clear up any cached type definitions that may
     * be cached by this {@link TypeFactory} instance.
     * This method should not be commonly used, that is, only use it
     * if you know there is a problem with retention of type definitions;
     * the most likely (and currently only known) problem is retention
     * of {@link Class} instances via {@link JavaType} reference.
     * 
     * @since 2.4.1
     */
    public void clearCache() {
        _typeCache.clear();
    }

    public ClassLoader getClassLoader() {
        int PROBE_START_LINE_228 = 228;
		ClassLoader f__class_loader_5648_line_228 = _classLoader;
		int PROBE_END_LINE_228 = 228;
		return f__class_loader_5648_line_228;
    }
    
    /*
    /**********************************************************
    /* Static methods for non-instance-specific functionality
    /**********************************************************
     */
    
    /**
     * Method for constructing a marker type that indicates missing generic
     * type information, which is handled same as simple type for
     * <code>java.lang.Object</code>.
     */
    public static JavaType unknownType() {
        int PROBE_START_LINE_243 = 243;
		com.fasterxml.jackson.databind.type.TypeFactory type_factory_1_expr28_line_243 = defaultInstance();
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr27_line_243 = type_factory_1_expr28_line_243
				._unknownType();
		int PROBE_END_LINE_243 = 243;
		return type_factory_1_expr27_line_243;
    }

    /**
     * Static helper method that can be called to figure out type-erased
     * call for given JDK type. It can be called statically since type resolution
     * process can never change actual type-erased class; thereby static
     * default instance is used for determination.
     */
    public static Class<?> rawClass(Type t) {
        if (t instanceof Class<?>) {
            return (Class<?>) t;
        }
        // Should be able to optimize bit more in future...
        return defaultInstance().constructType(t).getRawClass();
    }

    /*
    /**********************************************************
    /* Low-level helper methods
    /**********************************************************
     */

    /**
     * Low-level lookup method moved from {@link com.fasterxml.jackson.databind.util.ClassUtil},
     * to allow for overriding of lookup functionality in environments like OSGi.
     *
     * @since 2.6
     */
    public Class<?> findClass(String className) throws ClassNotFoundException
    {
        int PROBE_START_LINE_274 = 279;
		String p_class_name_5657_line_274 = className;
		int type_factory_1_expr30_line_274 = p_class_name_5657_line_274.indexOf('.');
		boolean type_factory_1_expr29_line_274 = type_factory_1_expr30_line_274 < 0;
		int PROBE_END_LINE_274 = 279;
		if (type_factory_1_expr29_line_274) {
            Class<?> prim = _findPrimitive(className);
            if (prim != null) {
                return prim;
            }
        }
        // Two-phase lookup: first using context ClassLoader; then default
        Throwable prob = null;
        int PROBE_START_LINE_282 = 282;
		ClassLoader type_factory_1_expr31_line_282 = this.getClassLoader();
		int PROBE_END_LINE_282 = 282;
		ClassLoader loader = type_factory_1_expr31_line_282;
        int PROBE_START_LINE_283 = 285;
		ClassLoader v_loader_5659_line_283 = loader;
		boolean type_factory_1_expr33_line_283 = v_loader_5659_line_283 == null;
		int PROBE_END_LINE_283 = 285;
		if (type_factory_1_expr33_line_283) {
            int PROBE_START_LINE_284 = 284;
			Thread type_factory_1_expr36_line_284 = Thread.currentThread();
			ClassLoader type_factory_1_expr35_line_284 = type_factory_1_expr36_line_284.getContextClassLoader();
			int PROBE_END_LINE_284 = 284;
			loader = 	type_factory_1_expr35_line_284;
        }
        int PROBE_START_LINE_286 = 292;
		ClassLoader v_loader_5659_line_286 = loader;
		boolean type_factory_1_expr37_line_286 = v_loader_5659_line_286 != null;
		int PROBE_END_LINE_286 = 292;
		if (type_factory_1_expr37_line_286) {
            try {
                int PROBE_START_LINE_288 = 288;
				String p_class_name_5657_line_288 = className;
				ClassLoader v_loader_5659_line_288 = loader;
				Class<?> type_factory_1_expr38_line_288 = classForName(p_class_name_5657_line_288, true,
						v_loader_5659_line_288);
				int PROBE_END_LINE_288 = 288;
				return type_factory_1_expr38_line_288;
            } catch (Exception e) {
                int PROBE_START_LINE_290 = 290;
				Exception v_e_5660_line_290 = e;
				Throwable type_factory_1_expr40_line_290 = ClassUtil.getRootCause(v_e_5660_line_290);
				int PROBE_END_LINE_290 = 290;
				prob = type_factory_1_expr40_line_290;
            }
        }
        try {
            return classForName(className);
        } catch (Exception e) {
            int PROBE_START_LINE_296 = 298;
			Throwable v_prob_5658_line_296 = prob;
			boolean type_factory_1_expr41_line_296 = v_prob_5658_line_296 == null;
			int PROBE_END_LINE_296 = 298;
			if (type_factory_1_expr41_line_296) {
                prob = ClassUtil.getRootCause(e);
            }
        }
        int PROBE_START_LINE_300 = 300;
		Throwable v_prob_5658_line_300 = prob;
		int PROBE_END_LINE_300 = 300;
		ClassUtil.throwIfRTE(v_prob_5658_line_300);
        int PROBE_START_LINE_301 = 301;
		Throwable v_prob_5658_line_301 = prob;
		String type_factory_1_expr44_line_301 = v_prob_5658_line_301.getMessage();
		Throwable v_prob_5658_line_301_v1 = prob;
		int PROBE_END_LINE_301 = 301;
		throw new ClassNotFoundException(type_factory_1_expr44_line_301, v_prob_5658_line_301_v1);
    }
    
    protected Class<?> classForName(String name, boolean initialize,
            ClassLoader loader) throws ClassNotFoundException {
        int PROBE_START_LINE_306 = 306;
				String p_name_5662_line_306 = name;
				ClassLoader p_loader_5664_line_306 = loader;
				Class<?> type_factory_1_expr45_line_306 = Class.forName(p_name_5662_line_306, true,
						p_loader_5664_line_306);
				int PROBE_END_LINE_306 = 306;
		return type_factory_1_expr45_line_306;
    }
    
    protected Class<?> classForName(String name) throws ClassNotFoundException {
        return Class.forName(name);
    }

    protected Class<?> _findPrimitive(String className)
    {
        if ("int".equals(className)) return Integer.TYPE;
        if ("long".equals(className)) return Long.TYPE;
        if ("float".equals(className)) return Float.TYPE;
        if ("double".equals(className)) return Double.TYPE;
        if ("boolean".equals(className)) return Boolean.TYPE;
        if ("byte".equals(className)) return Byte.TYPE;
        if ("char".equals(className)) return Character.TYPE;
        if ("short".equals(className)) return Short.TYPE;
        if ("void".equals(className)) return Void.TYPE;
        return null;
    }
    
    /*
    /**********************************************************
    /* Type conversion, parameterization resolution methods
    /**********************************************************
     */

    /**
     * Factory method for creating a subtype of given base type, as defined
     * by specified subclass; but retaining generic type information if any.
     * Can be used, for example, to get equivalent of "HashMap&lt;String,Integer&gt;"
     * from "Map&lt;String,Integer&gt;" by giving <code>HashMap.class</code>
     * as subclass.
     */
    public JavaType constructSpecializedType(JavaType baseType, Class<?> subclass)
    {
        int PROBE_START_LINE_343 = 343;
		com.fasterxml.jackson.databind.JavaType p_base_type_5667_line_343 = baseType;
		Class<?> type_factory_1_expr46_line_343 = p_base_type_5667_line_343.getRawClass();
		int PROBE_END_LINE_343 = 343;
		// simple optimization to avoid costly introspection if type-erased type does NOT differ
        final Class<?> rawBase = type_factory_1_expr46_line_343;
        int PROBE_START_LINE_344 = 346;
		Class<?> v_raw_base_5669_line_344 = rawBase;
		Class<?> p_subclass_5668_line_344 = subclass;
		boolean type_factory_1_expr47_line_344 = v_raw_base_5669_line_344 == p_subclass_5668_line_344;
		int PROBE_END_LINE_344 = 346;
		if (type_factory_1_expr47_line_344) {
            int PROBE_START_LINE_345 = 345;
			com.fasterxml.jackson.databind.JavaType p_base_type_5667_line_345 = baseType;
			int PROBE_END_LINE_345 = 345;
			return p_base_type_5667_line_345;
        }

        JavaType newType = null;

        // also: if we start from untyped, not much to save
        do { // bogus loop to be able to break
            int PROBE_START_LINE_352 = 355;
			Class<?> v_raw_base_5669_line_352 = rawBase;
			boolean type_factory_1_expr48_line_352 = v_raw_base_5669_line_352 == Object.class;
			int PROBE_END_LINE_352 = 355;
			if (type_factory_1_expr48_line_352) {
                int PROBE_START_LINE_353 = 353;
				Class<?> p_subclass_5668_line_353 = subclass;
				com.fasterxml.jackson.databind.type.TypeBindings f_empty_bindings_5627_line_353 = EMPTY_BINDINGS;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr51_line_353 = _fromClass(null,
						p_subclass_5668_line_353, f_empty_bindings_5627_line_353);
				int PROBE_END_LINE_353 = 353;
				newType = type_factory_1_expr51_line_353;
                break;
            }
            int PROBE_START_LINE_356 = 359;
			Class<?> v_raw_base_5669_line_356 = rawBase;
			Class<?> p_subclass_5668_line_356 = subclass;
			boolean type_factory_1_expr53_line_356 = v_raw_base_5669_line_356
					.isAssignableFrom(p_subclass_5668_line_356);
			boolean type_factory_1_expr52_line_356 = !type_factory_1_expr53_line_356;
			int PROBE_END_LINE_356 = 359;
			if (type_factory_1_expr52_line_356) {
                throw new IllegalArgumentException(String.format(
                        "Class %s not subtype of %s", subclass.getName(), baseType));
            }
            // A few special cases where we can simplify handling:

            int PROBE_START_LINE_363 = 366;
			com.fasterxml.jackson.databind.JavaType p_base_type_5667_line_363 = baseType;
			com.fasterxml.jackson.databind.type.TypeBindings type_factory_1_expr55_line_363 = p_base_type_5667_line_363
					.getBindings();
			boolean type_factory_1_expr54_line_363 = type_factory_1_expr55_line_363.isEmpty();
			int PROBE_END_LINE_363 = 366;
			// (1) Original target type has no generics -- just resolve subtype
            if (type_factory_1_expr54_line_363) {
                int PROBE_START_LINE_364 = 364;
				Class<?> p_subclass_5668_line_364 = subclass;
				com.fasterxml.jackson.databind.type.TypeBindings f_empty_bindings_5627_line_364 = EMPTY_BINDINGS;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr57_line_364 = _fromClass(null,
						p_subclass_5668_line_364, f_empty_bindings_5627_line_364);
				int PROBE_END_LINE_364 = 364;
				newType = type_factory_1_expr57_line_364;
                break;
            }
            int PROBE_START_LINE_368 = 393;
			com.fasterxml.jackson.databind.JavaType p_base_type_5667_line_368 = baseType;
			boolean type_factory_1_expr58_line_368 = p_base_type_5667_line_368.isContainerType();
			int PROBE_END_LINE_368 = 393;
			// (2) A small set of "well-known" List/Map subtypes where can take a short-cut
            if (type_factory_1_expr58_line_368) {
                int PROBE_START_LINE_369 = 392;
				com.fasterxml.jackson.databind.JavaType p_base_type_5667_line_369 = baseType;
				boolean type_factory_1_expr59_line_369 = p_base_type_5667_line_369.isMapLikeType();
				int PROBE_END_LINE_369 = 392;
				if (type_factory_1_expr59_line_369) {
                    int PROBE_START_LINE_370 = 377;
					Class<?> p_subclass_5668_line_370 = subclass;
					boolean type_factory_1_expr62_line_370 = p_subclass_5668_line_370 == HashMap.class;
					boolean type_factory_1_expr61_line_370 = (type_factory_1_expr62_line_370);
					boolean type_factory_1_expr60_line_370 = type_factory_1_expr61_line_370
							|| (subclass == LinkedHashMap.class) || (subclass == EnumMap.class)
							|| (subclass == TreeMap.class);
					int PROBE_END_LINE_370 = 377;
					if (type_factory_1_expr60_line_370) {
                        int PROBE_START_LINE_374 = 375;
								Class<?> p_subclass_5668_line_374 = subclass;
								com.fasterxml.jackson.databind.JavaType type_factory_1_expr65_line_374 = _fromClass(
										null, p_subclass_5668_line_374, TypeBindings.create(subclass,
												baseType.getKeyType(), baseType.getContentType()));
								int PROBE_END_LINE_374 = 375;
						newType = type_factory_1_expr65_line_374;
                        break;
                    }
                } else {
					int PROBE_START_LINE_378 = 392;
					com.fasterxml.jackson.databind.JavaType p_base_type_5667_line_378 = baseType;
					boolean type_factory_1_expr67_line_378 = p_base_type_5667_line_378.isCollectionLikeType();
					int PROBE_END_LINE_378 = 392;
					if (type_factory_1_expr67_line_378) {
						int PROBE_START_LINE_379 = 386;
						Class<?> p_subclass_5668_line_379 = subclass;
						boolean type_factory_1_expr70_line_379 = p_subclass_5668_line_379 == ArrayList.class;
						boolean type_factory_1_expr69_line_379 = (type_factory_1_expr70_line_379);
						boolean type_factory_1_expr68_line_379 = type_factory_1_expr69_line_379
								|| (subclass == LinkedList.class) || (subclass == HashSet.class)
								|| (subclass == TreeSet.class);
						int PROBE_END_LINE_379 = 386;
						if (type_factory_1_expr68_line_379) {
							int PROBE_START_LINE_383 = 384;
							Class<?> p_subclass_5668_line_383 = subclass;
							com.fasterxml.jackson.databind.JavaType type_factory_1_expr73_line_383 = _fromClass(null,
									p_subclass_5668_line_383, TypeBindings.create(subclass, baseType.getContentType()));
							int PROBE_END_LINE_383 = 384;
							newType = type_factory_1_expr73_line_383;
							break;
						}
						if (rawBase == EnumSet.class) {
							return baseType;
						}
					}
				}
            }
            // (3) Sub-class does not take type parameters -- just resolve subtype
            int typeParamCount = subclass.getTypeParameters().length;
            if (typeParamCount == 0) {
                newType = _fromClass(null, subclass, EMPTY_BINDINGS);
                break;
            }
            // (4) If all else fails, do the full traversal using placeholders
            TypeBindings tb = _bindingsForSubtype(baseType, typeParamCount, subclass);
            newType = _fromClass(null, subclass, tb);

        } while (false);

        int PROBE_START_LINE_408 = 408;
		com.fasterxml.jackson.databind.JavaType v_new_type_5670_line_408 = newType;
		com.fasterxml.jackson.databind.JavaType p_base_type_5667_line_408 = baseType;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr76_line_408 = v_new_type_5670_line_408
				.withHandlersFrom(p_base_type_5667_line_408);
		int PROBE_END_LINE_408 = 408;
		// 25-Sep-2016, tatu: As per [databind#1384] also need to ensure handlers get
        //   copied as well
        newType = type_factory_1_expr76_line_408;
        int PROBE_START_LINE_409 = 409;
		com.fasterxml.jackson.databind.JavaType v_new_type_5670_line_409 = newType;
		int PROBE_END_LINE_409 = 409;
		return v_new_type_5670_line_409;
    }

    private TypeBindings _bindingsForSubtype(JavaType baseType, int typeParamCount, Class<?> subclass)
    {
        PlaceholderForType[] placeholders = new PlaceholderForType[typeParamCount];
        for (int i = 0; i < typeParamCount; ++i) {
            placeholders[i] = new PlaceholderForType(i);
        }
        TypeBindings b = TypeBindings.create(subclass, placeholders);
        // First: pseudo-resolve to get placeholders in place:
        JavaType tmpSub = _fromClass(null, subclass, b);
        // Then find super-type
        JavaType baseWithPlaceholders = tmpSub.findSuperType(baseType.getRawClass());
        if (baseWithPlaceholders == null) { // should be found but...
            throw new IllegalArgumentException(String.format(
                    "Internal error: unable to locate supertype (%s) from resolved subtype %s", baseType.getRawClass().getName(),
                    subclass.getName()));
        }
        // and traverse type hierarchies to both verify and to resolve placeholders
        String error = _resolveTypePlaceholders(baseType, baseWithPlaceholders);
        if (error != null) {
            throw new IllegalArgumentException("Failed to specialize base type "+baseType.toCanonical()+" as "
                    +subclass.getName()+", problem: "+error);
        }

        final JavaType[] typeParams = new JavaType[typeParamCount];
        for (int i = 0; i < typeParamCount; ++i) {
            JavaType t = placeholders[i].actualType();
            // 18-Oct-2017, tatu: Looks like sometimes we have incomplete bindings (even if not
            //     common, it is possible if subtype is type-erased class with added type
            //     variable -- see test(s) with "bogus" type(s)).
            if (t == null) {
                t = unknownType();
            }
            typeParams[i] = t;
        }
        return TypeBindings.create(subclass, typeParams);
    }

    private String _resolveTypePlaceholders(JavaType sourceType, JavaType actualType)
        throws IllegalArgumentException
    {
        List<JavaType> expectedTypes = sourceType.getBindings().getTypeParameters();
        List<JavaType> actualTypes = actualType.getBindings().getTypeParameters();
        for (int i = 0, len = expectedTypes.size(); i < len; ++i) {
            JavaType exp = expectedTypes.get(i);
            JavaType act = actualTypes.get(i);

            if (!_verifyAndResolvePlaceholders(exp, act)) {
                // 14-May-2018, tatu: As per [databind#2034] it seems we better relax assignment
                //   rules further -- at least likely "raw" (untyped, non-generic) base should probably
                //   allow specialization.
                if (exp.hasRawClass(Object.class)) {
                    continue;
                }
                // 19-Apr-2018, tatu: Hack for [databind#1964] -- allow type demotion
                //    for `java.util.Map` key type if (and only if) target type is
                //    `java.lang.Object`
                if (i == 0) {
                    if (sourceType.hasRawClass(Map.class)
                            && act.hasRawClass(Object.class)) {
                        continue;
                    }
                }
                // 19-Nov-2018, tatu: To solve [databind#2155], let's allow type-compatible
                //   assignment for interfaces at least...
                if (exp.isInterface()) {
                    if (exp.isTypeOrSuperTypeOf(act.getRawClass())) {
                        continue;
                    }
                }
                return String.format("Type parameter #%d/%d differs; can not specialize %s with %s",
                        (i+1), len, exp.toCanonical(), act.toCanonical());
            }
        }
        return null;
    }

    private boolean _verifyAndResolvePlaceholders(JavaType exp, JavaType act)
    {
        // See if we have an actual type placeholder to resolve; if yes, replace
        if (act instanceof PlaceholderForType) {
            ((PlaceholderForType) act).actualType(exp);
            return true;
        }
        // if not, try to verify compatibility. But note that we can not
        // use simple equality as we need to resolve recursively
        if (exp.getRawClass() != act.getRawClass()) {
            return false;
        }
        // But we can check type parameters "blindly"
        List<JavaType> expectedTypes = exp.getBindings().getTypeParameters();
        List<JavaType> actualTypes = act.getBindings().getTypeParameters();
        for (int i = 0, len = expectedTypes.size(); i < len; ++i) {
            JavaType exp2 = expectedTypes.get(i);
            JavaType act2 = actualTypes.get(i);
            if (!_verifyAndResolvePlaceholders(exp2, act2)) {
                return false;
            }
        }
        return true;
    }

    /**
     * Method similar to {@link #constructSpecializedType}, but that creates a
     * less-specific type of given type. Usually this is as simple as simply
     * finding super-type with type erasure of <code>superClass</code>, but
     * there may be need for some additional work-arounds.
     *
     * @param superClass
     *
     * @since 2.7
     */
    public JavaType constructGeneralizedType(JavaType baseType, Class<?> superClass)
    {
        // simple optimization to avoid costly introspection if type-erased type does NOT differ
        final Class<?> rawBase = baseType.getRawClass();
        if (rawBase == superClass) {
            return baseType;
        }
        JavaType superType = baseType.findSuperType(superClass);
        if (superType == null) {
            // Most likely, caller did not verify sub/super-type relationship
            if (!superClass.isAssignableFrom(rawBase)) {
                throw new IllegalArgumentException(String.format(
                        "Class %s not a super-type of %s", superClass.getName(), baseType));
            }
            // 01-Nov-2015, tatu: Should never happen, but ch
            throw new IllegalArgumentException(String.format(
                    "Internal error: class %s not included as super-type for %s",
                    superClass.getName(), baseType));
        }
        return superType;
    }

    /**
     * Factory method for constructing a {@link JavaType} out of its canonical
     * representation (see {@link JavaType#toCanonical()}).
     * 
     * @param canonical Canonical string representation of a type
     * 
     * @throws IllegalArgumentException If canonical representation is malformed,
     *   or class that type represents (including its generic parameters) is
     *   not found
     */
    public JavaType constructFromCanonical(String canonical) throws IllegalArgumentException
    {
        return _parser.parse(canonical);
    }

    /**
     * Method that is to figure out actual type parameters that given
     * class binds to generic types defined by given (generic)
     * interface or class.
     * This could mean, for example, trying to figure out
     * key and value types for Map implementations.
     * 
     * @param type Sub-type (leaf type) that implements <code>expType</code>
     */
    public JavaType[] findTypeParameters(JavaType type, Class<?> expType)
    {
        JavaType match = type.findSuperType(expType);
        if (match == null) {
            return NO_TYPES;
        }
        return match.getBindings().typeParameterArray();
    }

    /**
     * @deprecated Since 2.7 resolve raw type first, then find type parameters
     */
    @Deprecated // since 2.7    
    public JavaType[] findTypeParameters(Class<?> clz, Class<?> expType, TypeBindings bindings) {
        return findTypeParameters(constructType(clz, bindings), expType);
    }
    
    /**
     * @deprecated Since 2.7 resolve raw type first, then find type parameters
     */
    @Deprecated // since 2.7    
    public JavaType[] findTypeParameters(Class<?> clz, Class<?> expType) {
        return findTypeParameters(constructType(clz), expType);
    }

    /**
     * Method that can be called to figure out more specific of two
     * types (if they are related; that is, one implements or extends the
     * other); or if not related, return the primary type.
     * 
     * @param type1 Primary type to consider
     * @param type2 Secondary type to consider
     * 
     * @since 2.2
     */
    public JavaType moreSpecificType(JavaType type1, JavaType type2)
    {
        if (type1 == null) {
            return type2;
        }
        if (type2 == null) {
            return type1;
        }
        Class<?> raw1 = type1.getRawClass();
        Class<?> raw2 = type2.getRawClass();
        if (raw1 == raw2) {
            return type1;
        }
        // TODO: maybe try sub-classing, to retain generic types?
        if (raw1.isAssignableFrom(raw2)) {
            return type2;
        }
        return type1;
    }
    
    /*
    /**********************************************************
    /* Public factory methods
    /**********************************************************
     */

    public JavaType constructType(Type type) {
        int PROBE_START_LINE_631 = 631;
		java.lang.reflect.Type p_type_5690_line_631 = type;
		com.fasterxml.jackson.databind.type.TypeBindings f_empty_bindings_5627_line_631 = EMPTY_BINDINGS;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr77_line_631 = _fromAny(null, p_type_5690_line_631,
				f_empty_bindings_5627_line_631);
		int PROBE_END_LINE_631 = 631;
		return type_factory_1_expr77_line_631;
    }

    public JavaType constructType(Type type, TypeBindings bindings) {
        int PROBE_START_LINE_635 = 635;
		java.lang.reflect.Type p_type_5691_line_635 = type;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5692_line_635 = bindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr78_line_635 = _fromAny(null, p_type_5691_line_635,
				p_bindings_5692_line_635);
		int PROBE_END_LINE_635 = 635;
		return type_factory_1_expr78_line_635;
    }
    
    public JavaType constructType(TypeReference<?> typeRef)
    {
        // 19-Oct-2015, tatu: Simpler variant like so should work
        return _fromAny(null, typeRef.getType(), EMPTY_BINDINGS);

        // but if not, due to funky sub-classing, type variables, what follows
        // is a more complete processing a la Java ClassMate.

        /*
        final Class<?> refdRawType = typeRef.getClass();
        JavaType type = _fromClass(null, refdRawType, EMPTY_BINDINGS);
        JavaType genType = type.findSuperType(TypeReference.class);
        if (genType == null) { // sanity check; shouldn't occur
            throw new IllegalArgumentException("Unparameterized GenericType instance ("+refdRawType.getName()+")");
        }
        TypeBindings b = genType.getBindings();
        JavaType[] params = b.typeParameterArray();
        if (params.length == 0) {
            throw new IllegalArgumentException("Unparameterized GenericType instance ("+refdRawType.getName()+")");
        }
        return params[0];
        */
    }

    /**
     * @deprecated Since 2.7 (accidentally removed in 2.7.0; added back in 2.7.1)
     */
    @Deprecated
    public JavaType constructType(Type type, Class<?> contextClass) {
        JavaType contextType = (contextClass == null) ? null : constructType(contextClass);
        return constructType(type, contextType);
    }

    /**
     * @deprecated Since 2.7 (accidentally removed in 2.7.0; added back in 2.7.1)
     */
    @Deprecated
    public JavaType constructType(Type type, JavaType contextType) {
        TypeBindings bindings;
        if (contextType == null) {
            bindings = EMPTY_BINDINGS;
        } else {
            bindings = contextType.getBindings();
            // 16-Nov-2016, tatu: Unfortunately as per [databind#1456] this can't
            //   be made to work for some cases used to work (even if accidentally);
            //   however, we can try a simple heuristic to increase chances of
            //   compatibility from 2.6 code
            if (type.getClass() != Class.class) {
                // Ok: so, ideally we would test super-interfaces if necessary;
                // but let's assume most if not all cases are for classes.
                while (bindings.isEmpty()) {
                    contextType = contextType.getSuperClass();
                    if (contextType == null) {
                        break;
                    }
                    bindings = contextType.getBindings();
                }
            }
        }
        return _fromAny(null, type, bindings);
    }

    /*
    /**********************************************************
    /* Direct factory methods
    /**********************************************************
     */

    /**
     * Method for constructing an {@link ArrayType}.
     *<p>
     * NOTE: type modifiers are NOT called on array type itself; but are called
     * for element type (and other contained types)
     */
    public ArrayType constructArrayType(Class<?> elementType) {
        return ArrayType.construct(_fromAny(null, elementType, null), null);
    }
    
    /**
     * Method for constructing an {@link ArrayType}.
     *<p>
     * NOTE: type modifiers are NOT called on array type itself; but are called
     * for contained types.
     */
    public ArrayType constructArrayType(JavaType elementType) {
        return ArrayType.construct(elementType, null);
    }

    /**
     * Method for constructing a {@link CollectionType}.
     *<p>
     * NOTE: type modifiers are NOT called on Collection type itself; but are called
     * for contained types.
     */
    public CollectionType constructCollectionType(Class<? extends Collection> collectionClass,
            Class<?> elementClass) {
        return constructCollectionType(collectionClass,
                _fromClass(null, elementClass, EMPTY_BINDINGS));
    }

    /**
     * Method for constructing a {@link CollectionType}.
     *<p>
     * NOTE: type modifiers are NOT called on Collection type itself; but are called
     * for contained types.
     */
    public CollectionType constructCollectionType(Class<? extends Collection> collectionClass,
            JavaType elementType)
    {
        int PROBE_START_LINE_747 = 747;
		Class<? extends java.util.Collection> p_collection_class_5702_line_747 = collectionClass;
		com.fasterxml.jackson.databind.JavaType p_element_type_5703_line_747 = elementType;
		TypeBindings type_factory_1_expr79_line_747 = TypeBindings.createIfNeeded(p_collection_class_5702_line_747,
				p_element_type_5703_line_747);
		int PROBE_END_LINE_747 = 747;
		TypeBindings bindings = type_factory_1_expr79_line_747;
        int PROBE_START_LINE_748 = 748;
		Class<? extends java.util.Collection> p_collection_class_5702_line_748 = collectionClass;
		com.fasterxml.jackson.databind.type.TypeBindings v_bindings_5704_line_748 = bindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr81_line_748 = _fromClass(null,
				p_collection_class_5702_line_748, v_bindings_5704_line_748);
		int PROBE_END_LINE_748 = 748;
		CollectionType result = (CollectionType) type_factory_1_expr81_line_748;
        int PROBE_START_LINE_751 = 759;
		com.fasterxml.jackson.databind.type.TypeBindings v_bindings_5704_line_751 = bindings;
		boolean type_factory_1_expr83_line_751 = v_bindings_5704_line_751.isEmpty();
		boolean type_factory_1_expr84_line_751 = true;
		if (type_factory_1_expr83_line_751) {
			com.fasterxml.jackson.databind.JavaType p_element_type_5703_line_751 = elementType;
			boolean type_factory_1_expr85_line_751 = p_element_type_5703_line_751 != null;
			type_factory_1_expr84_line_751 = (type_factory_1_expr85_line_751);
		}
		boolean type_factory_1_expr82_line_751 = type_factory_1_expr83_line_751 && type_factory_1_expr84_line_751;
		int PROBE_END_LINE_751 = 759;
		// 17-May-2017, tatu: As per [databind#1415], we better verify bound values if (but only if)
        //    type being resolved was non-generic (i.e.element type was ignored)
        if (type_factory_1_expr82_line_751) {
            JavaType t = result.findSuperType(Collection.class);
            JavaType realET = t.getContentType();
            if (!realET.equals(elementType)) {
                throw new IllegalArgumentException(String.format(
                        "Non-generic Collection class %s did not resolve to something with element type %s but %s ",
                        ClassUtil.nameOf(collectionClass), elementType, realET));
            }
        }
        int PROBE_START_LINE_760 = 760;
		com.fasterxml.jackson.databind.type.CollectionType v_result_5705_line_760 = result;
		int PROBE_END_LINE_760 = 760;
		return v_result_5705_line_760;
    }

    /**
     * Method for constructing a {@link CollectionLikeType}.
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public CollectionLikeType constructCollectionLikeType(Class<?> collectionClass, Class<?> elementClass) {
        return constructCollectionLikeType(collectionClass,
                _fromClass(null, elementClass, EMPTY_BINDINGS));
    }
    
    /**
     * Method for constructing a {@link CollectionLikeType}.
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public CollectionLikeType constructCollectionLikeType(Class<?> collectionClass, JavaType elementType) {
        JavaType type = _fromClass(null, collectionClass,
                TypeBindings.createIfNeeded(collectionClass, elementType));
        if (type instanceof CollectionLikeType) {
            return (CollectionLikeType) type;
        }
        return CollectionLikeType.upgradeFrom(type, elementType);
    }

    /**
     * Method for constructing a {@link MapType} instance
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public MapType constructMapType(Class<? extends Map> mapClass,
            Class<?> keyClass, Class<?> valueClass) {
        JavaType kt, vt;
        if (mapClass == Properties.class) {
            kt = vt = CORE_TYPE_STRING;
        } else {
            kt = _fromClass(null, keyClass, EMPTY_BINDINGS);
            vt = _fromClass(null, valueClass, EMPTY_BINDINGS);
        }
        return constructMapType(mapClass, kt, vt);
    }

    /**
     * Method for constructing a {@link MapType} instance
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public MapType constructMapType(Class<? extends Map> mapClass, JavaType keyType, JavaType valueType) {
        int PROBE_START_LINE_814 = 814;
		Class<? extends java.util.Map> p_map_class_5713_line_814 = mapClass;
		com.fasterxml.jackson.databind.JavaType p_key_type_5714_line_814 = keyType;
		com.fasterxml.jackson.databind.JavaType p_value_type_5715_line_814 = valueType;
		TypeBindings type_factory_1_expr86_line_814 = TypeBindings.createIfNeeded(p_map_class_5713_line_814,
				new JavaType[]{p_key_type_5714_line_814, p_value_type_5715_line_814});
		int PROBE_END_LINE_814 = 814;
		TypeBindings bindings = type_factory_1_expr86_line_814;
        int PROBE_START_LINE_815 = 815;
		Class<? extends java.util.Map> p_map_class_5713_line_815 = mapClass;
		com.fasterxml.jackson.databind.type.TypeBindings v_bindings_5716_line_815 = bindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr90_line_815 = _fromClass(null,
				p_map_class_5713_line_815, v_bindings_5716_line_815);
		int PROBE_END_LINE_815 = 815;
		MapType result = (MapType) type_factory_1_expr90_line_815;
        int PROBE_START_LINE_818 = 832;
		com.fasterxml.jackson.databind.type.TypeBindings v_bindings_5716_line_818 = bindings;
		boolean type_factory_1_expr91_line_818 = v_bindings_5716_line_818.isEmpty();
		int PROBE_END_LINE_818 = 832;
		// 17-May-2017, tatu: As per [databind#1415], we better verify bound values if (but only if)
        //    type being resolved was non-generic (i.e.element type was ignored)
        if (type_factory_1_expr91_line_818) {
            JavaType t = result.findSuperType(Map.class);
            JavaType realKT = t.getKeyType();
            if (!realKT.equals(keyType)) {
                throw new IllegalArgumentException(String.format(
                        "Non-generic Map class %s did not resolve to something with key type %s but %s ",
                        ClassUtil.nameOf(mapClass), keyType, realKT));
            }
            JavaType realVT = t.getContentType();
            if (!realVT.equals(valueType)) {
                throw new IllegalArgumentException(String.format(
                        "Non-generic Map class %s did not resolve to something with value type %s but %s ",
                        ClassUtil.nameOf(mapClass), valueType, realVT));
            }
        }
        int PROBE_START_LINE_833 = 833;
		com.fasterxml.jackson.databind.type.MapType v_result_5717_line_833 = result;
		int PROBE_END_LINE_833 = 833;
		return v_result_5717_line_833;
    }

    /**
     * Method for constructing a {@link MapLikeType} instance
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public MapLikeType constructMapLikeType(Class<?> mapClass, Class<?> keyClass, Class<?> valueClass) {
        return constructMapLikeType(mapClass,
                _fromClass(null, keyClass, EMPTY_BINDINGS),
                _fromClass(null, valueClass, EMPTY_BINDINGS));
    }

    /**
     * Method for constructing a {@link MapLikeType} instance
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public MapLikeType constructMapLikeType(Class<?> mapClass, JavaType keyType, JavaType valueType) {
        // 19-Oct-2015, tatu: Allow case of no-type-variables, since it seems likely to be
        //    a valid use case here
        JavaType type = _fromClass(null, mapClass,
                TypeBindings.createIfNeeded(mapClass, new JavaType[] { keyType, valueType }));
        if (type instanceof MapLikeType) {
            return (MapLikeType) type;
        }
        return MapLikeType.upgradeFrom(type, keyType, valueType);
    }

    /**
     * Method for constructing a type instance with specified parameterization.
     *<p>
     * NOTE: was briefly deprecated for 2.6.
     */
    public JavaType constructSimpleType(Class<?> rawType, JavaType[] parameterTypes) {
        return _fromClass(null, rawType, TypeBindings.create(rawType, parameterTypes));
    }

    /**
     * Method for constructing a type instance with specified parameterization.
     *
     * @since 2.6
     *
     * @deprecated Since 2.7
     */
    @Deprecated
    public JavaType constructSimpleType(Class<?> rawType, Class<?> parameterTarget,
            JavaType[] parameterTypes)
    {
        return constructSimpleType(rawType, parameterTypes);
    } 

    /**
     * @since 2.6
     */
    public JavaType constructReferenceType(Class<?> rawType, JavaType referredType)
    {
        return ReferenceType.construct(rawType, null, // no bindings
                null, null, // or super-class, interfaces?
                referredType);
    }

    /**
     * Method that use by core Databind functionality, and that should NOT be called
     * by application code outside databind package.
     *<p> 
     * Unchecked here not only means that no checks are made as to whether given class
     * might be non-simple type (like {@link CollectionType}) but also that most of supertype
     * information is not gathered. This means that unless called on primitive types or
     * {@link java.lang.String}, results are probably not what you want to use.
     *
     * @deprecated Since 2.8, to indicate users should never call this method.
     */
    @Deprecated // since 2.8
    public JavaType uncheckedSimpleType(Class<?> cls) {
        // 18-Oct-2015, tatu: Not sure how much problem missing super-type info is here
        return _constructSimple(cls, EMPTY_BINDINGS, null, null);
    }

    /**
     * Factory method for constructing {@link JavaType} that
     * represents a parameterized type. For example, to represent
     * type <code>List&lt;Set&lt;Integer>></code>, you could
     * call
     *<pre>
     *  JavaType inner = TypeFactory.constructParametricType(Set.class, Set.class, Integer.class);
     *  return TypeFactory.constructParametricType(ArrayList.class, List.class, inner);
     *</pre>
     *<p>
     * The reason for first two arguments to be separate is that parameterization may
     * apply to a super-type. For example, if generic type was instead to be
     * constructed for <code>ArrayList&lt;Integer></code>, the usual call would be:
     *<pre>
     *  TypeFactory.constructParametricType(ArrayList.class, List.class, Integer.class);
     *</pre>
     * since parameterization is applied to {@link java.util.List}.
     * In most cases distinction does not matter, but there are types where it does;
     * one such example is parameterization of types that implement {@link java.util.Iterator}.
     *<p>
     * NOTE: type modifiers are NOT called on constructed type.
     * 
     * @param parametrized Actual full type
     * @param parameterClasses Type parameters to apply
     *
     * @since 2.5 NOTE: was briefly deprecated for 2.6
     */
    public JavaType constructParametricType(Class<?> parametrized, Class<?>... parameterClasses) {
        int len = parameterClasses.length;
        JavaType[] pt = new JavaType[len];
        for (int i = 0; i < len; ++i) {
            pt[i] = _fromClass(null, parameterClasses[i], EMPTY_BINDINGS);
        }
        return constructParametricType(parametrized, pt);
    }

    /**
     * Factory method for constructing {@link JavaType} that
     * represents a parameterized type. For example, to represent
     * type <code>List&lt;Set&lt;Integer>></code>, you could
     * call
     *<pre>
     *  JavaType inner = TypeFactory.constructParametricType(Set.class, Set.class, Integer.class);
     *  return TypeFactory.constructParametricType(ArrayList.class, List.class, inner);
     *</pre>
     *<p>
     * The reason for first two arguments to be separate is that parameterization may
     * apply to a super-type. For example, if generic type was instead to be
     * constructed for <code>ArrayList&lt;Integer></code>, the usual call would be:
     *<pre>
     *  TypeFactory.constructParametricType(ArrayList.class, List.class, Integer.class);
     *</pre>
     * since parameterization is applied to {@link java.util.List}.
     * In most cases distinction does not matter, but there are types where it does;
     * one such example is parameterization of types that implement {@link java.util.Iterator}.
     *<p>
     * NOTE: type modifiers are NOT called on constructed type.
     * 
     * @param rawType Actual type-erased type
     * @param parameterTypes Type parameters to apply
     * 
     * @since 2.5 NOTE: was briefly deprecated for 2.6
     */
    public JavaType constructParametricType(Class<?> rawType, JavaType... parameterTypes)
    {
        return _fromClass(null, rawType, TypeBindings.create(rawType, parameterTypes));
    }

    /**
     * @since 2.5 -- but will probably deprecated in 2.7 or 2.8 (not needed with 2.7)
     *
     * @deprecated since 2.9 Use {@link #constructParametricType(Class,JavaType...)} instead
     */
    @Deprecated
    public JavaType constructParametrizedType(Class<?> parametrized, Class<?> parametersFor,
            JavaType... parameterTypes)
    {
        return constructParametricType(parametrized, parameterTypes);
    }

    /**
     * @since 2.5 -- but will probably deprecated in 2.7 or 2.8 (not needed with 2.7)
     *
     * @deprecated since 2.9 Use {@link #constructParametricType(Class,Class...)} instead
     */
    @Deprecated
    public JavaType constructParametrizedType(Class<?> parametrized, Class<?> parametersFor,
            Class<?>... parameterClasses)
    {
        return constructParametricType(parametrized, parameterClasses);
    }

    /*
    /**********************************************************
    /* Direct factory methods for "raw" variants, used when
    /* parameterization is unknown
    /**********************************************************
     */

    /**
     * Method that can be used to construct "raw" Collection type; meaning that its
     * parameterization is unknown.
     * This is similar to using <code>Object.class</code> parameterization,
     * and is equivalent to calling:
     *<pre>
     *  typeFactory.constructCollectionType(collectionClass, typeFactory.unknownType());
     *</pre>
     *<p>
     * This method should only be used if parameterization is completely unavailable.
     */
    public CollectionType constructRawCollectionType(Class<? extends Collection> collectionClass) {
        return constructCollectionType(collectionClass, unknownType());
    }

    /**
     * Method that can be used to construct "raw" Collection-like type; meaning that its
     * parameterization is unknown.
     * This is similar to using <code>Object.class</code> parameterization,
     * and is equivalent to calling:
     *<pre>
     *  typeFactory.constructCollectionLikeType(collectionClass, typeFactory.unknownType());
     *</pre>
     *<p>
     * This method should only be used if parameterization is completely unavailable.
     */
    public CollectionLikeType constructRawCollectionLikeType(Class<?> collectionClass) {
        return constructCollectionLikeType(collectionClass, unknownType());
    }

    /**
     * Method that can be used to construct "raw" Map type; meaning that its
     * parameterization is unknown.
     * This is similar to using <code>Object.class</code> parameterization,
     * and is equivalent to calling:
     *<pre>
     *  typeFactory.constructMapType(collectionClass, typeFactory.unknownType(), typeFactory.unknownType());
     *</pre>
     *<p>
     * This method should only be used if parameterization is completely unavailable.
     */
    public MapType constructRawMapType(Class<? extends Map> mapClass) {
        return constructMapType(mapClass, unknownType(), unknownType());
    }

    /**
     * Method that can be used to construct "raw" Map-like type; meaning that its
     * parameterization is unknown.
     * This is similar to using <code>Object.class</code> parameterization,
     * and is equivalent to calling:
     *<pre>
     *  typeFactory.constructMapLikeType(collectionClass, typeFactory.unknownType(), typeFactory.unknownType());
     *</pre>
     *<p>
     * This method should only be used if parameterization is completely unavailable.
     */
    public MapLikeType constructRawMapLikeType(Class<?> mapClass) {
        return constructMapLikeType(mapClass, unknownType(), unknownType());
    }

    /*
    /**********************************************************
    /* Low-level factory methods
    /**********************************************************
     */

    private JavaType _mapType(Class<?> rawClass, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces)
    {
        JavaType kt = null, vt = null;

        int PROBE_START_LINE_1086 = 1102;
		Class<?> p_raw_class_5746_line_1086 = rawClass;
		boolean type_factory_1_expr92_line_1086 = p_raw_class_5746_line_1086 == Properties.class;
		int PROBE_END_LINE_1086 = 1102;
		// 28-May-2015, tatu: Properties are special, as per [databind#810]; fake "correct" parameter sig
        if (type_factory_1_expr92_line_1086) {
            kt = vt = CORE_TYPE_STRING;
        } else {
            int PROBE_START_LINE_1089 = 1089;
			com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5747_line_1089 = bindings;
			List<JavaType> type_factory_1_expr94_line_1089 = p_bindings_5747_line_1089.getTypeParameters();
			int PROBE_END_LINE_1089 = 1089;
			List<JavaType> typeParams = type_factory_1_expr94_line_1089;
            int PROBE_START_LINE_1091 = 1101;
			List<com.fasterxml.jackson.databind.JavaType> v_type_params_5750_line_1091 = typeParams;
			int type_factory_1_expr95_line_1091 = v_type_params_5750_line_1091.size();
			int PROBE_END_LINE_1091 = 1101;
			// ok to have no types ("raw")
            switch (type_factory_1_expr95_line_1091) {
            case 0: // acceptable?
                kt = vt = _unknownType();
                break;
            case 2:
			int PROBE_START_LINE_1096 = 1096;
			List<com.fasterxml.jackson.databind.JavaType> v_type_params_5750_line_1096 = typeParams;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr97_line_1096 = v_type_params_5750_line_1096
					.get(0);
			int PROBE_END_LINE_1096 = 1096;
			kt = type_factory_1_expr97_line_1096;
			int PROBE_START_LINE_1097 = 1097;
			List<com.fasterxml.jackson.databind.JavaType> v_type_params_5750_line_1097 = typeParams;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr99_line_1097 = v_type_params_5750_line_1097
					.get(1);
			int PROBE_END_LINE_1097 = 1097;
			vt = type_factory_1_expr99_line_1097;
                break;
            default:
                throw new IllegalArgumentException("Strange Map type "+rawClass.getName()+": cannot determine type parameters");
            }
        }
        int PROBE_START_LINE_1103 = 1103;
		Class<?> p_raw_class_5746_line_1103 = rawClass;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5747_line_1103 = bindings;
		com.fasterxml.jackson.databind.JavaType p_super_class_5748_line_1103 = superClass;
		com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_5749_line_1103 = superInterfaces;
		com.fasterxml.jackson.databind.JavaType v_kt_5751_line_1103 = kt;
		com.fasterxml.jackson.databind.JavaType v_vt_5752_line_1103 = vt;
		com.fasterxml.jackson.databind.type.MapType type_factory_1_expr100_line_1103 = MapType.construct(
				p_raw_class_5746_line_1103, p_bindings_5747_line_1103, p_super_class_5748_line_1103,
				p_super_interfaces_5749_line_1103, v_kt_5751_line_1103, v_vt_5752_line_1103);
		int PROBE_END_LINE_1103 = 1103;
		return type_factory_1_expr100_line_1103;
    }

    private JavaType _collectionType(Class<?> rawClass, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces)
    {
        int PROBE_START_LINE_1109 = 1109;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5754_line_1109 = bindings;
		List<JavaType> type_factory_1_expr101_line_1109 = p_bindings_5754_line_1109.getTypeParameters();
		int PROBE_END_LINE_1109 = 1109;
		List<JavaType> typeParams = type_factory_1_expr101_line_1109;
        // ok to have no types ("raw")
        JavaType ct = null;
        int PROBE_START_LINE_1112 = 1118;
		List<com.fasterxml.jackson.databind.JavaType> v_type_params_5757_line_1112 = typeParams;
		boolean type_factory_1_expr102_line_1112 = v_type_params_5757_line_1112.isEmpty();
		int PROBE_END_LINE_1112 = 1118;
		if (type_factory_1_expr102_line_1112) {
            int PROBE_START_LINE_1113 = 1113;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr104_line_1113 = _unknownType();
			int PROBE_END_LINE_1113 = 1113;
			ct = type_factory_1_expr104_line_1113;
        } else {
			int PROBE_START_LINE_1114 = 1118;
			List<com.fasterxml.jackson.databind.JavaType> v_type_params_5757_line_1114 = typeParams;
			int type_factory_1_expr106_line_1114 = v_type_params_5757_line_1114.size();
			boolean type_factory_1_expr105_line_1114 = type_factory_1_expr106_line_1114 == 1;
			int PROBE_END_LINE_1114 = 1118;
			if (type_factory_1_expr105_line_1114) {
				int PROBE_START_LINE_1115 = 1115;
				List<com.fasterxml.jackson.databind.JavaType> v_type_params_5757_line_1115 = typeParams;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr108_line_1115 = v_type_params_5757_line_1115
						.get(0);
				int PROBE_END_LINE_1115 = 1115;
				ct = type_factory_1_expr108_line_1115;
			} else {
				throw new IllegalArgumentException(
						"Strange Collection type " + rawClass.getName() + ": cannot determine type parameters");
			}
		}
        int PROBE_START_LINE_1119 = 1119;
		Class<?> p_raw_class_5753_line_1119 = rawClass;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5754_line_1119 = bindings;
		com.fasterxml.jackson.databind.JavaType p_super_class_5755_line_1119 = superClass;
		com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_5756_line_1119 = superInterfaces;
		com.fasterxml.jackson.databind.JavaType v_ct_5758_line_1119 = ct;
		com.fasterxml.jackson.databind.type.CollectionType type_factory_1_expr109_line_1119 = CollectionType.construct(
				p_raw_class_5753_line_1119, p_bindings_5754_line_1119, p_super_class_5755_line_1119,
				p_super_interfaces_5756_line_1119, v_ct_5758_line_1119);
		int PROBE_END_LINE_1119 = 1119;
		return type_factory_1_expr109_line_1119;
    }

    private JavaType _referenceType(Class<?> rawClass, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces)
    {
        List<JavaType> typeParams = bindings.getTypeParameters();
        // ok to have no types ("raw")
        JavaType ct;
        if (typeParams.isEmpty()) {
            ct = _unknownType();
        } else if (typeParams.size() == 1) {
            ct = typeParams.get(0);
        } else {
            throw new IllegalArgumentException("Strange Reference type "+rawClass.getName()+": cannot determine type parameters");
        }
        return ReferenceType.construct(rawClass, bindings, superClass, superInterfaces, ct);
    }

    /**
     * Factory method to call when no special {@link JavaType} is needed,
     * no generic parameters are passed. Default implementation may check
     * pre-constructed values for "well-known" types, but if none found
     * will simply call {@link #_newSimpleType}
     *
     * @since 2.7
     */
    protected JavaType _constructSimple(Class<?> raw, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces)
    {
        if (bindings.isEmpty()) {
            JavaType result = _findWellKnownSimple(raw);
            if (result != null) {
                return result;
            }
        }
        return _newSimpleType(raw, bindings, superClass, superInterfaces);
    }

    /**
     * Factory method that is to create a new {@link SimpleType} with no
     * checks whatsoever. Default implementation calls the single argument
     * constructor of {@link SimpleType}.
     *
     * @since 2.7
     */
    protected JavaType _newSimpleType(Class<?> raw, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces)
    {
        int PROBE_START_LINE_1168 = 1168;
		Class<?> p_raw_5767_line_1168 = raw;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5768_line_1168 = bindings;
		com.fasterxml.jackson.databind.JavaType p_super_class_5769_line_1168 = superClass;
		com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_5770_line_1168 = superInterfaces;
		int PROBE_END_LINE_1168 = 1168;
		return new SimpleType(p_raw_5767_line_1168, p_bindings_5768_line_1168, p_super_class_5769_line_1168, p_super_interfaces_5770_line_1168);
    }

    protected JavaType _unknownType() {
        int PROBE_START_LINE_1177 = 1177;
		com.fasterxml.jackson.databind.type.SimpleType f_core_type_object_5640_line_1177 = CORE_TYPE_OBJECT;
		int PROBE_END_LINE_1177 = 1177;
		/* 15-Sep-2015, tatu: Prior to 2.7, we constructed new instance for each call.
         *    This may have been due to potential mutability of the instance; but that
         *    should not be issue any more, and creation is somewhat wasteful. So let's
         *    try reusing singleton/flyweight instance.
         */
        return f_core_type_object_5640_line_1177;
    }

    /**
     * Helper method called to see if requested, non-generic-parameterized
     * type is one of common, "well-known" types, instances of which are
     * pre-constructed and do not need dynamic caching.
     *
     * @since 2.7
     */
    protected JavaType _findWellKnownSimple(Class<?> clz) {
        int PROBE_START_LINE_1188 = 1195;
		Class<?> p_clz_5771_line_1188 = clz;
		boolean type_factory_1_expr111_line_1188 = p_clz_5771_line_1188.isPrimitive();
		int PROBE_END_LINE_1188 = 1195;
		if (type_factory_1_expr111_line_1188) {
            int PROBE_START_LINE_1189 = 1189;
			Class<?> p_clz_5771_line_1189 = clz;
			Class<?> f_cls_bool_5633_line_1189 = CLS_BOOL;
			boolean type_factory_1_expr112_line_1189 = p_clz_5771_line_1189 == f_cls_bool_5633_line_1189;
			if (type_factory_1_expr112_line_1189) {
				com.fasterxml.jackson.databind.type.SimpleType f_core_type_bool_5636_line_1189 = CORE_TYPE_BOOL;
				int PROBE_END_LINE_1189 = 1189;
				return f_core_type_bool_5636_line_1189;
			}
            int PROBE_START_LINE_1190 = 1190;
			Class<?> p_clz_5771_line_1190 = clz;
			Class<?> f_cls_int_5634_line_1190 = CLS_INT;
			boolean type_factory_1_expr113_line_1190 = p_clz_5771_line_1190 == f_cls_int_5634_line_1190;
			if (type_factory_1_expr113_line_1190) {
				com.fasterxml.jackson.databind.type.SimpleType f_core_type_int_5637_line_1190 = CORE_TYPE_INT;
				int PROBE_END_LINE_1190 = 1190;
				return f_core_type_int_5637_line_1190;
			}
            int PROBE_START_LINE_1191 = 1191;
			Class<?> p_clz_5771_line_1191 = clz;
			Class<?> f_cls_long_5635_line_1191 = CLS_LONG;
			boolean type_factory_1_expr114_line_1191 = p_clz_5771_line_1191 == f_cls_long_5635_line_1191;
			if (type_factory_1_expr114_line_1191) {
				com.fasterxml.jackson.databind.type.SimpleType f_core_type_long_5638_line_1191 = CORE_TYPE_LONG;
				int PROBE_END_LINE_1191 = 1191;
				return f_core_type_long_5638_line_1191;
			}
        } else {
            int PROBE_START_LINE_1193 = 1193;
			Class<?> p_clz_5771_line_1193 = clz;
			Class<?> f_cls_string_5628_line_1193 = CLS_STRING;
			boolean type_factory_1_expr115_line_1193 = p_clz_5771_line_1193 == f_cls_string_5628_line_1193;
			if (type_factory_1_expr115_line_1193) {
				com.fasterxml.jackson.databind.type.SimpleType f_core_type_string_5639_line_1193 = CORE_TYPE_STRING;
				int PROBE_END_LINE_1193 = 1193;
				return f_core_type_string_5639_line_1193;
			}
            int PROBE_START_LINE_1194 = 1194;
			Class<?> p_clz_5771_line_1194 = clz;
			Class<?> f_cls_object_5629_line_1194 = CLS_OBJECT;
			boolean type_factory_1_expr116_line_1194 = p_clz_5771_line_1194 == f_cls_object_5629_line_1194;
			if (type_factory_1_expr116_line_1194)
			 {
				com.fasterxml.jackson.databind.type.SimpleType f_core_type_object_5640_line_1194 = CORE_TYPE_OBJECT;
				int PROBE_END_LINE_1194 = 1194;
				return f_core_type_object_5640_line_1194;
			}
        }
        return null;
    }

    /*
    /**********************************************************
    /* Actual type resolution, traversal
    /**********************************************************
     */

    /**
     * Factory method that can be used if type information is passed
     * as Java typing returned from <code>getGenericXxx</code> methods
     * (usually for a return or argument type).
     */
    protected JavaType _fromAny(ClassStack context, Type type, TypeBindings bindings)
    {
        JavaType resultType = null;

        int PROBE_START_LINE_1215 = 1238;
		java.lang.reflect.Type p_type_5773_line_1215 = type;
		boolean type_factory_1_expr117_line_1215 = p_type_5773_line_1215 instanceof Class<?>;
		int PROBE_END_LINE_1215 = 1238;
		// simple class?
        if (type_factory_1_expr117_line_1215) {
            int PROBE_START_LINE_1217 = 1217;
			com.fasterxml.jackson.databind.type.ClassStack p_context_5772_line_1217 = context;
			java.lang.reflect.Type p_type_5773_line_1217 = type;
			com.fasterxml.jackson.databind.type.TypeBindings f_empty_bindings_5627_line_1217 = EMPTY_BINDINGS;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr119_line_1217 = _fromClass(
					p_context_5772_line_1217, (Class<?>) p_type_5773_line_1217, f_empty_bindings_5627_line_1217);
			int PROBE_END_LINE_1217 = 1217;
			// Important: remove possible bindings since this is type-erased thingy
            resultType = type_factory_1_expr119_line_1217;
        } else {
			int PROBE_START_LINE_1220 = 1238;
			java.lang.reflect.Type p_type_5773_line_1220 = type;
			boolean type_factory_1_expr121_line_1220 = p_type_5773_line_1220 instanceof ParameterizedType;
			int PROBE_END_LINE_1220 = 1238;
			if (type_factory_1_expr121_line_1220) {
				int PROBE_START_LINE_1221 = 1221;
				com.fasterxml.jackson.databind.type.ClassStack p_context_5772_line_1221 = context;
				java.lang.reflect.Type p_type_5773_line_1221 = type;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5774_line_1221 = bindings;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr123_line_1221 = _fromParamType(
						p_context_5772_line_1221, (ParameterizedType) p_type_5773_line_1221, p_bindings_5774_line_1221);
				int PROBE_END_LINE_1221 = 1221;
				resultType = type_factory_1_expr123_line_1221;
			} else {
				int PROBE_START_LINE_1223 = 1238;
				java.lang.reflect.Type p_type_5773_line_1223 = type;
				boolean type_factory_1_expr125_line_1223 = p_type_5773_line_1223 instanceof JavaType;
				int PROBE_END_LINE_1223 = 1238;
				if (type_factory_1_expr125_line_1223) {
					return (JavaType) type;
				} else {
					int PROBE_START_LINE_1227 = 1238;
					java.lang.reflect.Type p_type_5773_line_1227 = type;
					boolean type_factory_1_expr126_line_1227 = p_type_5773_line_1227 instanceof GenericArrayType;
					int PROBE_END_LINE_1227 = 1238;
					if (type_factory_1_expr126_line_1227) {
						resultType = _fromArrayType(context, (GenericArrayType) type, bindings);
					} else {
						int PROBE_START_LINE_1230 = 1238;
						java.lang.reflect.Type p_type_5773_line_1230 = type;
						boolean type_factory_1_expr127_line_1230 = p_type_5773_line_1230 instanceof TypeVariable<?>;
						int PROBE_END_LINE_1230 = 1238;
						if (type_factory_1_expr127_line_1230) {
							int PROBE_START_LINE_1231 = 1231;
							com.fasterxml.jackson.databind.type.ClassStack p_context_5772_line_1231 = context;
							java.lang.reflect.Type p_type_5773_line_1231 = type;
							com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5774_line_1231 = bindings;
							com.fasterxml.jackson.databind.JavaType type_factory_1_expr129_line_1231 = _fromVariable(
									p_context_5772_line_1231, (TypeVariable<?>) p_type_5773_line_1231,
									p_bindings_5774_line_1231);
							int PROBE_END_LINE_1231 = 1231;
							resultType = type_factory_1_expr129_line_1231;
						} else {
							int PROBE_START_LINE_1233 = 1238;
							java.lang.reflect.Type p_type_5773_line_1233 = type;
							boolean type_factory_1_expr131_line_1233 = p_type_5773_line_1233 instanceof WildcardType;
							int PROBE_END_LINE_1233 = 1238;
							if (type_factory_1_expr131_line_1233) {
								int PROBE_START_LINE_1234 = 1234;
								com.fasterxml.jackson.databind.type.ClassStack p_context_5772_line_1234 = context;
								java.lang.reflect.Type p_type_5773_line_1234 = type;
								com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5774_line_1234 = bindings;
								com.fasterxml.jackson.databind.JavaType type_factory_1_expr133_line_1234 = _fromWildcard(
										p_context_5772_line_1234, (WildcardType) p_type_5773_line_1234,
										p_bindings_5774_line_1234);
								int PROBE_END_LINE_1234 = 1234;
								resultType = type_factory_1_expr133_line_1234;
							} else {
								throw new IllegalArgumentException(
										"Unrecognized Type: " + ((type == null) ? "[null]" : type.toString()));
							}
						}
					}
				}
			}
		}
        int PROBE_START_LINE_1242 = 1256;
		com.fasterxml.jackson.databind.type.TypeModifier[] f__modifiers_5647_line_1242 = _modifiers;
		boolean type_factory_1_expr135_line_1242 = f__modifiers_5647_line_1242 != null;
		int PROBE_END_LINE_1242 = 1256;
		/* 21-Feb-2016, nateB/tatu: as per [databind#1129] (applied for 2.7.2),
         *   we do need to let all kinds of types to be refined, esp. for Scala module.
         */
        if (type_factory_1_expr135_line_1242) {
            TypeBindings b = resultType.getBindings();
            if (b == null) {
                b = EMPTY_BINDINGS;
            }
            for (TypeModifier mod : _modifiers) {
                JavaType t = mod.modifyType(resultType, type, b, this);
                if (t == null) {
                    throw new IllegalStateException(String.format(
                            "TypeModifier %s (of type %s) return null for type %s",
                            mod, mod.getClass().getName(), resultType));
                }
                resultType = t;
            }
        }
        int PROBE_START_LINE_1257 = 1257;
		com.fasterxml.jackson.databind.JavaType v_result_type_5775_line_1257 = resultType;
		int PROBE_END_LINE_1257 = 1257;
		return v_result_type_5775_line_1257;
    }

    /**
     * @param bindings Mapping of formal parameter declarations (for generic
     *   types) into actual types
     */
    protected JavaType _fromClass(ClassStack context, Class<?> rawType, TypeBindings bindings)
    {
        int PROBE_START_LINE_1267 = 1267;
		Class<?> p_raw_type_5777_line_1267 = rawType;
		JavaType type_factory_1_expr136_line_1267 = _findWellKnownSimple(p_raw_type_5777_line_1267);
		int PROBE_END_LINE_1267 = 1267;
		// Very first thing: small set of core types we know well:
        JavaType result = type_factory_1_expr136_line_1267;
        int PROBE_START_LINE_1268 = 1270;
		com.fasterxml.jackson.databind.JavaType v_result_5779_line_1268 = result;
		boolean type_factory_1_expr137_line_1268 = v_result_5779_line_1268 != null;
		int PROBE_END_LINE_1268 = 1270;
		if (type_factory_1_expr137_line_1268) {
            int PROBE_START_LINE_1269 = 1269;
			com.fasterxml.jackson.databind.JavaType v_result_5779_line_1269 = result;
			int PROBE_END_LINE_1269 = 1269;
			return v_result_5779_line_1269;
        }
        // Barring that, we may have recently constructed an instance
        final Object key;
        int PROBE_START_LINE_1273 = 1277;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5778_line_1273 = bindings;
		boolean type_factory_1_expr140_line_1273 = p_bindings_5778_line_1273 == null;
		boolean type_factory_1_expr139_line_1273 = (type_factory_1_expr140_line_1273);
		boolean type_factory_1_expr141_line_1273 = false;
		if (!type_factory_1_expr139_line_1273) {
			com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5778_line_1273_v1 = bindings;
			type_factory_1_expr141_line_1273 = p_bindings_5778_line_1273_v1.isEmpty();
		}
		boolean type_factory_1_expr138_line_1273 = type_factory_1_expr139_line_1273 || type_factory_1_expr141_line_1273;
		int PROBE_END_LINE_1273 = 1277;
		if (type_factory_1_expr138_line_1273) {
            int PROBE_START_LINE_1274 = 1274;
			Class<?> p_raw_type_5777_line_1274 = rawType;
			int PROBE_END_LINE_1274 = 1274;
			key = p_raw_type_5777_line_1274;
        } else {
            int PROBE_START_LINE_1276 = 1276;
			com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5778_line_1276 = bindings;
			Class<?> p_raw_type_5777_line_1276 = rawType;
			Object type_factory_1_expr144_line_1276 = p_bindings_5778_line_1276.asKey(p_raw_type_5777_line_1276);
			int PROBE_END_LINE_1276 = 1276;
			key = type_factory_1_expr144_line_1276;
        }
        int PROBE_START_LINE_1278 = 1278;
		LRUMap<Object, com.fasterxml.jackson.databind.JavaType> f__type_cache_5645_line_1278 = _typeCache;
		Object v_key_5780_line_1278 = key;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr146_line_1278 = f__type_cache_5645_line_1278
				.get(v_key_5780_line_1278);
		int PROBE_END_LINE_1278 = 1278;
		result = type_factory_1_expr146_line_1278; // ok, cache object is synced
        int PROBE_START_LINE_1279 = 1281;
		com.fasterxml.jackson.databind.JavaType v_result_5779_line_1279 = result;
		boolean type_factory_1_expr147_line_1279 = v_result_5779_line_1279 != null;
		int PROBE_END_LINE_1279 = 1281;
		if (type_factory_1_expr147_line_1279) {
            int PROBE_START_LINE_1280 = 1280;
			com.fasterxml.jackson.databind.JavaType v_result_5779_line_1280 = result;
			int PROBE_END_LINE_1280 = 1280;
			return v_result_5779_line_1280;
        }

        int PROBE_START_LINE_1284 = 1296;
		com.fasterxml.jackson.databind.type.ClassStack p_context_5776_line_1284 = context;
		boolean type_factory_1_expr148_line_1284 = p_context_5776_line_1284 == null;
		int PROBE_END_LINE_1284 = 1296;
		// 15-Oct-2015, tatu: recursive reference?
        if (type_factory_1_expr148_line_1284) {
            int PROBE_START_LINE_1285 = 1285;
			Class<?> p_raw_type_5777_line_1285 = rawType;
			int PROBE_END_LINE_1285 = 1285;
			context = new ClassStack(p_raw_type_5777_line_1285);
        } else {
            int PROBE_START_LINE_1287 = 1287;
			com.fasterxml.jackson.databind.type.ClassStack p_context_5776_line_1287 = context;
			Class<?> p_raw_type_5777_line_1287 = rawType;
			ClassStack type_factory_1_expr151_line_1287 = p_context_5776_line_1287.find(p_raw_type_5777_line_1287);
			int PROBE_END_LINE_1287 = 1287;
			ClassStack prev = type_factory_1_expr151_line_1287;
            int PROBE_START_LINE_1288 = 1293;
			com.fasterxml.jackson.databind.type.ClassStack v_prev_5781_line_1288 = prev;
			boolean type_factory_1_expr152_line_1288 = v_prev_5781_line_1288 != null;
			int PROBE_END_LINE_1288 = 1293;
			if (type_factory_1_expr152_line_1288) {
                // Self-reference: needs special handling, then...
                ResolvedRecursiveType selfRef = new ResolvedRecursiveType(rawType, EMPTY_BINDINGS);
                prev.addSelfReference(selfRef);
                return selfRef;
            }
            int PROBE_START_LINE_1295 = 1295;
			com.fasterxml.jackson.databind.type.ClassStack p_context_5776_line_1295 = context;
			Class<?> p_raw_type_5777_line_1295 = rawType;
			com.fasterxml.jackson.databind.type.ClassStack type_factory_1_expr154_line_1295 = p_context_5776_line_1295
					.child(p_raw_type_5777_line_1295);
			int PROBE_END_LINE_1295 = 1295;
			// no, but need to update context to allow for proper cycle resolution
            context = type_factory_1_expr154_line_1295;
        }

        int PROBE_START_LINE_1299 = 1338;
		Class<?> p_raw_type_5777_line_1299 = rawType;
		boolean type_factory_1_expr155_line_1299 = p_raw_type_5777_line_1299.isArray();
		int PROBE_END_LINE_1299 = 1338;
		// First: do we have an array type?
        if (type_factory_1_expr155_line_1299) {
            result = ArrayType.construct(_fromAny(context, rawType.getComponentType(), bindings),
                    bindings);
        } else {
            // If not, need to proceed by first resolving parent type hierarchy
            
            JavaType superClass = null;
            JavaType[] superInterfaces = null;

            int PROBE_START_LINE_1308 = 1315;
			Class<?> p_raw_type_5777_line_1308 = rawType;
			boolean type_factory_1_expr156_line_1308 = p_raw_type_5777_line_1308.isInterface();
			int PROBE_END_LINE_1308 = 1315;
			if (type_factory_1_expr156_line_1308) {
                superClass = null;
                int PROBE_START_LINE_1310 = 1310;
				com.fasterxml.jackson.databind.type.ClassStack p_context_5776_line_1310 = context;
				Class<?> p_raw_type_5777_line_1310 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5778_line_1310 = bindings;
				com.fasterxml.jackson.databind.JavaType[] type_factory_1_expr159_line_1310 = _resolveSuperInterfaces(
						p_context_5776_line_1310, p_raw_type_5777_line_1310, p_bindings_5778_line_1310);
				int PROBE_END_LINE_1310 = 1310;
				superInterfaces = type_factory_1_expr159_line_1310;
            } else {
                int PROBE_START_LINE_1313 = 1313;
				com.fasterxml.jackson.databind.type.ClassStack p_context_5776_line_1313 = context;
				Class<?> p_raw_type_5777_line_1313 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5778_line_1313 = bindings;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr161_line_1313 = _resolveSuperClass(
						p_context_5776_line_1313, p_raw_type_5777_line_1313, p_bindings_5778_line_1313);
				int PROBE_END_LINE_1313 = 1313;
				// Note: even Enums can implement interfaces, so cannot drop those
                superClass = type_factory_1_expr161_line_1313;
                int PROBE_START_LINE_1314 = 1314;
				com.fasterxml.jackson.databind.type.ClassStack p_context_5776_line_1314 = context;
				Class<?> p_raw_type_5777_line_1314 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5778_line_1314 = bindings;
				com.fasterxml.jackson.databind.JavaType[] type_factory_1_expr163_line_1314 = _resolveSuperInterfaces(
						p_context_5776_line_1314, p_raw_type_5777_line_1314, p_bindings_5778_line_1314);
				int PROBE_END_LINE_1314 = 1314;
				superInterfaces = type_factory_1_expr163_line_1314;
            }

            int PROBE_START_LINE_1318 = 1326;
			Class<?> p_raw_type_5777_line_1318 = rawType;
			boolean type_factory_1_expr164_line_1318 = p_raw_type_5777_line_1318 == Properties.class;
			int PROBE_END_LINE_1318 = 1326;
			// 19-Oct-2015, tatu: Bit messy, but we need to 'fix' java.util.Properties here...
            if (type_factory_1_expr164_line_1318) {
                result = MapType.construct(rawType, bindings, superClass, superInterfaces,
                        CORE_TYPE_STRING, CORE_TYPE_STRING);
            } else {
				int PROBE_START_LINE_1324 = 1326;
				com.fasterxml.jackson.databind.JavaType v_super_class_5782_line_1324 = superClass;
				boolean type_factory_1_expr166_line_1324 = v_super_class_5782_line_1324 != null;
				int PROBE_END_LINE_1324 = 1326;
				if (type_factory_1_expr166_line_1324) {
					int PROBE_START_LINE_1325 = 1325;
					com.fasterxml.jackson.databind.JavaType v_super_class_5782_line_1325 = superClass;
					Class<?> p_raw_type_5777_line_1325 = rawType;
					com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5778_line_1325 = bindings;
					com.fasterxml.jackson.databind.JavaType v_super_class_5782_line_1325_v1 = superClass;
					com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_5783_line_1325 = superInterfaces;
					com.fasterxml.jackson.databind.JavaType type_factory_1_expr168_line_1325 = v_super_class_5782_line_1325
							.refine(p_raw_type_5777_line_1325, p_bindings_5778_line_1325,
									v_super_class_5782_line_1325_v1, v_super_interfaces_5783_line_1325);
					int PROBE_END_LINE_1325 = 1325;
					result = type_factory_1_expr168_line_1325;
				}
			}
            int PROBE_START_LINE_1328 = 1337;
			com.fasterxml.jackson.databind.JavaType v_result_5779_line_1328 = result;
			boolean type_factory_1_expr169_line_1328 = v_result_5779_line_1328 == null;
			int PROBE_END_LINE_1328 = 1337;
			// if not, perhaps we are now resolving a well-known class or interface?
            if (type_factory_1_expr169_line_1328) {
                int PROBE_START_LINE_1329 = 1329;
				com.fasterxml.jackson.databind.type.ClassStack p_context_5776_line_1329 = context;
				Class<?> p_raw_type_5777_line_1329 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5778_line_1329 = bindings;
				com.fasterxml.jackson.databind.JavaType v_super_class_5782_line_1329 = superClass;
				com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_5783_line_1329 = superInterfaces;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr171_line_1329 = _fromWellKnownClass(
						p_context_5776_line_1329, p_raw_type_5777_line_1329, p_bindings_5778_line_1329,
						v_super_class_5782_line_1329, v_super_interfaces_5783_line_1329);
				int PROBE_END_LINE_1329 = 1329;
				result = type_factory_1_expr171_line_1329; 
                int PROBE_START_LINE_1330 = 1336;
				com.fasterxml.jackson.databind.JavaType v_result_5779_line_1330 = result;
				boolean type_factory_1_expr172_line_1330 = v_result_5779_line_1330 == null;
				int PROBE_END_LINE_1330 = 1336;
				if (type_factory_1_expr172_line_1330) {
                    int PROBE_START_LINE_1331 = 1331;
					com.fasterxml.jackson.databind.type.ClassStack p_context_5776_line_1331 = context;
					Class<?> p_raw_type_5777_line_1331 = rawType;
					com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5778_line_1331 = bindings;
					com.fasterxml.jackson.databind.JavaType v_super_class_5782_line_1331 = superClass;
					com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_5783_line_1331 = superInterfaces;
					com.fasterxml.jackson.databind.JavaType type_factory_1_expr174_line_1331 = _fromWellKnownInterface(
							p_context_5776_line_1331, p_raw_type_5777_line_1331, p_bindings_5778_line_1331,
							v_super_class_5782_line_1331, v_super_interfaces_5783_line_1331);
					int PROBE_END_LINE_1331 = 1331;
					result = type_factory_1_expr174_line_1331;
                    int PROBE_START_LINE_1332 = 1335;
					com.fasterxml.jackson.databind.JavaType v_result_5779_line_1332 = result;
					boolean type_factory_1_expr175_line_1332 = v_result_5779_line_1332 == null;
					int PROBE_END_LINE_1332 = 1335;
					if (type_factory_1_expr175_line_1332) {
                        int PROBE_START_LINE_1334 = 1334;
						Class<?> p_raw_type_5777_line_1334 = rawType;
						com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5778_line_1334 = bindings;
						com.fasterxml.jackson.databind.JavaType v_super_class_5782_line_1334 = superClass;
						com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_5783_line_1334 = superInterfaces;
						com.fasterxml.jackson.databind.JavaType type_factory_1_expr177_line_1334 = _newSimpleType(
								p_raw_type_5777_line_1334, p_bindings_5778_line_1334, v_super_class_5782_line_1334,
								v_super_interfaces_5783_line_1334);
						int PROBE_END_LINE_1334 = 1334;
						// but if nothing else, "simple" class for now:
                        result = type_factory_1_expr177_line_1334;
                    }
                }
            }
        }
        int PROBE_START_LINE_1339 = 1339;
		com.fasterxml.jackson.databind.type.ClassStack p_context_5776_line_1339 = context;
		com.fasterxml.jackson.databind.JavaType v_result_5779_line_1339 = result;
		int PROBE_END_LINE_1339 = 1339;
		p_context_5776_line_1339.resolveSelfReferences(v_result_5779_line_1339);
        int PROBE_START_LINE_1342 = 1344;
		com.fasterxml.jackson.databind.JavaType v_result_5779_line_1342 = result;
		boolean type_factory_1_expr180_line_1342 = v_result_5779_line_1342.hasHandlers();
		boolean type_factory_1_expr179_line_1342 = !type_factory_1_expr180_line_1342;
		int PROBE_END_LINE_1342 = 1344;
		// 16-Jul-2016, tatu: [databind#1302] is solved different way, but ideally we shouldn't
        //     cache anything with partially resolved `ResolvedRecursiveType`... so maybe improve
        if (type_factory_1_expr179_line_1342) {
            int PROBE_START_LINE_1343 = 1343;
			LRUMap<Object, com.fasterxml.jackson.databind.JavaType> f__type_cache_5645_line_1343 = _typeCache;
			Object v_key_5780_line_1343 = key;
			com.fasterxml.jackson.databind.JavaType v_result_5779_line_1343 = result;
			int PROBE_END_LINE_1343 = 1343;
			f__type_cache_5645_line_1343.putIfAbsent(v_key_5780_line_1343, v_result_5779_line_1343); // cache object syncs
        }
        int PROBE_START_LINE_1345 = 1345;
		com.fasterxml.jackson.databind.JavaType v_result_5779_line_1345 = result;
		int PROBE_END_LINE_1345 = 1345;
		return v_result_5779_line_1345;
    }

    protected JavaType _resolveSuperClass(ClassStack context, Class<?> rawType, TypeBindings parentBindings)
    {
        int PROBE_START_LINE_1350 = 1350;
		Class<?> p_raw_type_5785_line_1350 = rawType;
		Type type_factory_1_expr182_line_1350 = ClassUtil.getGenericSuperclass(p_raw_type_5785_line_1350);
		int PROBE_END_LINE_1350 = 1350;
		Type parent = type_factory_1_expr182_line_1350;
        int PROBE_START_LINE_1351 = 1353;
		java.lang.reflect.Type v_parent_5787_line_1351 = parent;
		boolean type_factory_1_expr183_line_1351 = v_parent_5787_line_1351 == null;
		int PROBE_END_LINE_1351 = 1353;
		if (type_factory_1_expr183_line_1351) {
            return null;
        }
        int PROBE_START_LINE_1354 = 1354;
		com.fasterxml.jackson.databind.type.ClassStack p_context_5784_line_1354 = context;
		java.lang.reflect.Type v_parent_5787_line_1354 = parent;
		com.fasterxml.jackson.databind.type.TypeBindings p_parent_bindings_5786_line_1354 = parentBindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr184_line_1354 = _fromAny(p_context_5784_line_1354,
				v_parent_5787_line_1354, p_parent_bindings_5786_line_1354);
		int PROBE_END_LINE_1354 = 1354;
		return type_factory_1_expr184_line_1354;
    }

    protected JavaType[] _resolveSuperInterfaces(ClassStack context, Class<?> rawType, TypeBindings parentBindings)
    {
        int PROBE_START_LINE_1359 = 1359;
		Class<?> p_raw_type_5789_line_1359 = rawType;
		Type[] type_factory_1_expr185_line_1359 = ClassUtil.getGenericInterfaces(p_raw_type_5789_line_1359);
		int PROBE_END_LINE_1359 = 1359;
		Type[] types = type_factory_1_expr185_line_1359;
        int PROBE_START_LINE_1360 = 1362;
		java.lang.reflect.Type[] v_types_5791_line_1360 = types;
		boolean type_factory_1_expr187_line_1360 = v_types_5791_line_1360 == null;
		boolean type_factory_1_expr188_line_1360 = false;
		if (!type_factory_1_expr187_line_1360) {
			java.lang.reflect.Type[] v_types_5791_line_1360_v1 = types;
			int q_length_200_line_1360 = v_types_5791_line_1360_v1.length;
			type_factory_1_expr188_line_1360 = q_length_200_line_1360 == 0;
		}
		boolean type_factory_1_expr186_line_1360 = type_factory_1_expr187_line_1360 || type_factory_1_expr188_line_1360;
		int PROBE_END_LINE_1360 = 1362;
		if (type_factory_1_expr186_line_1360) {
            int PROBE_START_LINE_1361 = 1361;
			com.fasterxml.jackson.databind.JavaType[] f_no_types_5625_line_1361 = NO_TYPES;
			int PROBE_END_LINE_1361 = 1361;
			return f_no_types_5625_line_1361;
        }
        int PROBE_START_LINE_1363 = 1363;
		java.lang.reflect.Type[] v_types_5791_line_1363 = types;
		int q_length_201_line_1363 = v_types_5791_line_1363.length;
		int PROBE_END_LINE_1363 = 1363;
		int len = q_length_201_line_1363;
        int PROBE_START_LINE_1364 = 1364;
		int v_len_5792_line_1364 = len;
		int PROBE_END_LINE_1364 = 1364;
		JavaType[] resolved = new JavaType[v_len_5792_line_1364];
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_1366 = 1366;
			int v_i_5794_line_1365 = i;
			int v_len_5792_line_1365 = len;
			boolean type_factory_1_expr191_line_1365 = v_i_5794_line_1365 < v_len_5792_line_1365;
			if (!(type_factory_1_expr191_line_1365)) {
				break;
			}
			java.lang.reflect.Type[] v_types_5791_line_1366 = types;
			int v_i_5794_line_1366 = i;
			Type type_factory_1_expr193_line_1366 = v_types_5791_line_1366[v_i_5794_line_1366];
			int PROBE_END_LINE_1366 = 1366;
			Type type = type_factory_1_expr193_line_1366;
            int PROBE_START_LINE_1367 = 1367;
			com.fasterxml.jackson.databind.JavaType[] v_resolved_5793_line_1367 = resolved;
			int v_i_5794_line_1367 = i;
			com.fasterxml.jackson.databind.type.ClassStack p_context_5788_line_1367 = context;
			java.lang.reflect.Type v_type_5795_line_1367 = type;
			com.fasterxml.jackson.databind.type.TypeBindings p_parent_bindings_5790_line_1367 = parentBindings;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr196_line_1367 = _fromAny(
					p_context_5788_line_1367, v_type_5795_line_1367, p_parent_bindings_5790_line_1367);
			int PROBE_END_LINE_1367 = 1367;
			v_resolved_5793_line_1367[v_i_5794_line_1367] = type_factory_1_expr196_line_1367;
        }
        int PROBE_START_LINE_1369 = 1369;
		com.fasterxml.jackson.databind.JavaType[] v_resolved_5793_line_1369 = resolved;
		int PROBE_END_LINE_1369 = 1369;
		return v_resolved_5793_line_1369;
    }

    /**
     * Helper class used to check whether exact class for which type is being constructed
     * is one of well-known base interfaces or classes that indicates alternate
     * {@link JavaType} implementation.
     */
    protected JavaType _fromWellKnownClass(ClassStack context, Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces)
    {
        int PROBE_START_LINE_1380 = 1382;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5798_line_1380 = bindings;
		boolean type_factory_1_expr197_line_1380 = p_bindings_5798_line_1380 == null;
		int PROBE_END_LINE_1380 = 1382;
		if (type_factory_1_expr197_line_1380) {
            bindings = EMPTY_BINDINGS;
        }
        
        int PROBE_START_LINE_1385 = 1387;
		Class<?> p_raw_type_5797_line_1385 = rawType;
		boolean type_factory_1_expr198_line_1385 = p_raw_type_5797_line_1385 == Map.class;
		int PROBE_END_LINE_1385 = 1387;
		// Quite simple when we resolving exact class/interface; start with that
        if (type_factory_1_expr198_line_1385) {
            int PROBE_START_LINE_1386 = 1386;
			Class<?> p_raw_type_5797_line_1386 = rawType;
			com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5798_line_1386 = bindings;
			com.fasterxml.jackson.databind.JavaType p_super_class_5799_line_1386 = superClass;
			com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_5800_line_1386 = superInterfaces;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr200_line_1386 = _mapType(
					p_raw_type_5797_line_1386, p_bindings_5798_line_1386, p_super_class_5799_line_1386,
					p_super_interfaces_5800_line_1386);
			int PROBE_END_LINE_1386 = 1386;
			return type_factory_1_expr200_line_1386;
        }
        int PROBE_START_LINE_1388 = 1390;
		Class<?> p_raw_type_5797_line_1388 = rawType;
		boolean type_factory_1_expr201_line_1388 = p_raw_type_5797_line_1388 == Collection.class;
		int PROBE_END_LINE_1388 = 1390;
		if (type_factory_1_expr201_line_1388) {
            int PROBE_START_LINE_1389 = 1389;
			Class<?> p_raw_type_5797_line_1389 = rawType;
			com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5798_line_1389 = bindings;
			com.fasterxml.jackson.databind.JavaType p_super_class_5799_line_1389 = superClass;
			com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_5800_line_1389 = superInterfaces;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr203_line_1389 = _collectionType(
					p_raw_type_5797_line_1389, p_bindings_5798_line_1389, p_super_class_5799_line_1389,
					p_super_interfaces_5800_line_1389);
			int PROBE_END_LINE_1389 = 1389;
			return type_factory_1_expr203_line_1389;
        }
        int PROBE_START_LINE_1392 = 1394;
		Class<?> p_raw_type_5797_line_1392 = rawType;
		boolean type_factory_1_expr204_line_1392 = p_raw_type_5797_line_1392 == AtomicReference.class;
		int PROBE_END_LINE_1392 = 1394;
		// and since 2.6 one referential type
        if (type_factory_1_expr204_line_1392) {
            return _referenceType(rawType, bindings, superClass, superInterfaces);
        }
        // 01-Nov-2015, tatu: As of 2.7, couple of potential `CollectionLikeType`s (like
        //    `Iterable`, `Iterator`), and `MapLikeType`s (`Map.Entry`) are not automatically
        //    detected, related to difficulties in propagating type upwards (Iterable, for
        //    example, is a weak, tag-on type). They may be detectable in future.
        return null;
    }

    protected JavaType _fromWellKnownInterface(ClassStack context, Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces)
    {
        int PROBE_START_LINE_1407 = 1407;
		com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_5805_line_1407 = superInterfaces;
		int q_length_201_line_1407 = p_super_interfaces_5805_line_1407.length;
		int PROBE_END_LINE_1407 = 1407;
		// But that's not all: may be possible current type actually implements an
        // interface type. So...
        final int intCount = q_length_201_line_1407;

        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_1410 = 1410;
			int v_i_5807_line_1409 = i;
			int v_int_count_5806_line_1409 = intCount;
			boolean type_factory_1_expr207_line_1409 = v_i_5807_line_1409 < v_int_count_5806_line_1409;
			if (!(type_factory_1_expr207_line_1409)) {
				break;
			}
			com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_5805_line_1410 = superInterfaces;
			int v_i_5807_line_1410 = i;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr210_line_1410 = p_super_interfaces_5805_line_1410[v_i_5807_line_1410];
			Class<?> p_raw_type_5802_line_1410 = rawType;
			com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5803_line_1410 = bindings;
			com.fasterxml.jackson.databind.JavaType p_super_class_5804_line_1410 = superClass;
			com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_5805_line_1410_v1 = superInterfaces;
			JavaType type_factory_1_expr209_line_1410 = type_factory_1_expr210_line_1410.refine(
					p_raw_type_5802_line_1410, p_bindings_5803_line_1410, p_super_class_5804_line_1410,
					p_super_interfaces_5805_line_1410_v1);
			int PROBE_END_LINE_1410 = 1410;
			JavaType result = type_factory_1_expr209_line_1410;
            int PROBE_START_LINE_1411 = 1413;
			com.fasterxml.jackson.databind.JavaType v_result_5808_line_1411 = result;
			boolean type_factory_1_expr211_line_1411 = v_result_5808_line_1411 != null;
			int PROBE_END_LINE_1411 = 1413;
			if (type_factory_1_expr211_line_1411) {
                int PROBE_START_LINE_1412 = 1412;
				com.fasterxml.jackson.databind.JavaType v_result_5808_line_1412 = result;
				int PROBE_END_LINE_1412 = 1412;
				return v_result_5808_line_1412;
            }
        }
        return null;
    }

    /**
     * This method deals with parameterized types, that is,
     * first class generic classes.
     */
    protected JavaType _fromParamType(ClassStack context, ParameterizedType ptype,
            TypeBindings parentBindings)
    {
        int PROBE_START_LINE_1426 = 1426;
		java.lang.reflect.ParameterizedType p_ptype_5810_line_1426 = ptype;
		java.lang.reflect.Type type_factory_1_expr213_line_1426 = p_ptype_5810_line_1426.getRawType();
		int PROBE_END_LINE_1426 = 1426;
		// Assumption here is we'll always get Class, not one of other Types
        Class<?> rawType = (Class<?>) type_factory_1_expr213_line_1426;

        int PROBE_START_LINE_1430 = 1432;
		Class<?> v_raw_type_5812_line_1430 = rawType;
		Class<?> f_cls_enum_5632_line_1430 = CLS_ENUM;
		boolean type_factory_1_expr214_line_1430 = v_raw_type_5812_line_1430 == f_cls_enum_5632_line_1430;
		int PROBE_END_LINE_1430 = 1432;
		// 29-Oct-2015, tatu: For performance reasons, let's streamline handling of
        //   couple of not-so-useful parametric types
        if (type_factory_1_expr214_line_1430) {
            return CORE_TYPE_ENUM;
        }
        int PROBE_START_LINE_1433 = 1435;
		Class<?> v_raw_type_5812_line_1433 = rawType;
		Class<?> f_cls_comparable_5630_line_1433 = CLS_COMPARABLE;
		boolean type_factory_1_expr215_line_1433 = v_raw_type_5812_line_1433 == f_cls_comparable_5630_line_1433;
		int PROBE_END_LINE_1433 = 1435;
		if (type_factory_1_expr215_line_1433) {
            return CORE_TYPE_COMPARABLE;
        }
        int PROBE_START_LINE_1436 = 1438;
		Class<?> v_raw_type_5812_line_1436 = rawType;
		Class<?> f_cls_class_5631_line_1436 = CLS_CLASS;
		boolean type_factory_1_expr216_line_1436 = v_raw_type_5812_line_1436 == f_cls_class_5631_line_1436;
		int PROBE_END_LINE_1436 = 1438;
		if (type_factory_1_expr216_line_1436) {
            return CORE_TYPE_CLASS;
        }

        int PROBE_START_LINE_1443 = 1443;
		java.lang.reflect.ParameterizedType p_ptype_5810_line_1443 = ptype;
		Type[] type_factory_1_expr217_line_1443 = p_ptype_5810_line_1443.getActualTypeArguments();
		int PROBE_END_LINE_1443 = 1443;
		// First: what is the actual base type? One odd thing is that 'getRawType'
        // returns Type, not Class<?> as one might expect. But let's assume it is
        // always of type Class: if not, need to add more code to resolve it to Class.        
        Type[] args = type_factory_1_expr217_line_1443;
        int PROBE_START_LINE_1444 = 1444;
		java.lang.reflect.Type[] v_args_5813_line_1444 = args;
		boolean type_factory_1_expr220_line_1444 = v_args_5813_line_1444 == null;
		boolean type_factory_1_expr219_line_1444 = (type_factory_1_expr220_line_1444);
		int q_length_202_line_1444 = 0;
		if (!type_factory_1_expr219_line_1444) {
			java.lang.reflect.Type[] v_args_5813_line_1444_v1 = args;
			q_length_202_line_1444 = v_args_5813_line_1444_v1.length;
		}
		int type_factory_1_expr218_line_1444 = type_factory_1_expr219_line_1444 ? 0 : q_length_202_line_1444;
		int PROBE_END_LINE_1444 = 1444;
		int paramCount = type_factory_1_expr218_line_1444;
        TypeBindings newBindings = null;        

        int PROBE_START_LINE_1447 = 1455;
		int v_param_count_5814_line_1447 = paramCount;
		boolean type_factory_1_expr221_line_1447 = v_param_count_5814_line_1447 == 0;
		int PROBE_END_LINE_1447 = 1455;
		if (type_factory_1_expr221_line_1447) {
            newBindings = EMPTY_BINDINGS;
        } else {
            int PROBE_START_LINE_1450 = 1450;
			int v_param_count_5814_line_1450 = paramCount;
			int PROBE_END_LINE_1450 = 1450;
			JavaType[] pt = new JavaType[v_param_count_5814_line_1450];
            for (int i = 0; true; ++i) {
                int PROBE_START_LINE_1452 = 1452;
				int v_i_5816_line_1451 = i;
				int v_param_count_5814_line_1451 = paramCount;
				boolean type_factory_1_expr224_line_1451 = v_i_5816_line_1451 < v_param_count_5814_line_1451;
				if (!(type_factory_1_expr224_line_1451)) {
					break;
				}
				com.fasterxml.jackson.databind.JavaType[] v_pt_5815_line_1452 = pt;
				int v_i_5816_line_1452 = i;
				com.fasterxml.jackson.databind.type.ClassStack p_context_5809_line_1452 = context;
				java.lang.reflect.Type[] v_args_5813_line_1452 = args;
				int v_i_5816_line_1452_v1 = i;
				java.lang.reflect.Type type_factory_1_expr229_line_1452 = v_args_5813_line_1452[v_i_5816_line_1452_v1];
				com.fasterxml.jackson.databind.type.TypeBindings p_parent_bindings_5811_line_1452 = parentBindings;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr228_line_1452 = _fromAny(
						p_context_5809_line_1452, type_factory_1_expr229_line_1452, p_parent_bindings_5811_line_1452);
				int PROBE_END_LINE_1452 = 1452;
				v_pt_5815_line_1452[v_i_5816_line_1452] = type_factory_1_expr228_line_1452;
            }
            int PROBE_START_LINE_1454 = 1454;
			Class<?> v_raw_type_5812_line_1454 = rawType;
			com.fasterxml.jackson.databind.JavaType[] v_pt_5815_line_1454 = pt;
			com.fasterxml.jackson.databind.type.TypeBindings type_factory_1_expr231_line_1454 = TypeBindings
					.create(v_raw_type_5812_line_1454, v_pt_5815_line_1454);
			int PROBE_END_LINE_1454 = 1454;
			newBindings = type_factory_1_expr231_line_1454;
        }
        int PROBE_START_LINE_1456 = 1456;
		com.fasterxml.jackson.databind.type.ClassStack p_context_5809_line_1456 = context;
		Class<?> v_raw_type_5812_line_1456 = rawType;
		com.fasterxml.jackson.databind.type.TypeBindings v_new_bindings_5817_line_1456 = newBindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr232_line_1456 = _fromClass(p_context_5809_line_1456,
				v_raw_type_5812_line_1456, v_new_bindings_5817_line_1456);
		int PROBE_END_LINE_1456 = 1456;
		return type_factory_1_expr232_line_1456;
    }

    protected JavaType _fromArrayType(ClassStack context, GenericArrayType type, TypeBindings bindings)
    {
        JavaType elementType = _fromAny(context, type.getGenericComponentType(), bindings);
        return ArrayType.construct(elementType, bindings);
    }

    protected JavaType _fromVariable(ClassStack context, TypeVariable<?> var, TypeBindings bindings)
    {
        int PROBE_START_LINE_1468 = 1468;
		TypeVariable<?> p_var_5822_line_1468 = var;
		String type_factory_1_expr233_line_1468 = p_var_5822_line_1468.getName();
		int PROBE_END_LINE_1468 = 1468;
		// ideally should find it via bindings:
        final String name = type_factory_1_expr233_line_1468;
        int PROBE_START_LINE_1469 = 1471;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5823_line_1469 = bindings;
		boolean type_factory_1_expr234_line_1469 = p_bindings_5823_line_1469 == null;
		int PROBE_END_LINE_1469 = 1471;
		if (type_factory_1_expr234_line_1469) {
            throw new IllegalArgumentException("Null `bindings` passed (type variable \""+name+"\")");
        }
        int PROBE_START_LINE_1472 = 1472;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5823_line_1472 = bindings;
		String v_name_5824_line_1472 = name;
		JavaType type_factory_1_expr235_line_1472 = p_bindings_5823_line_1472.findBoundType(v_name_5824_line_1472);
		int PROBE_END_LINE_1472 = 1472;
		JavaType type = type_factory_1_expr235_line_1472;
        int PROBE_START_LINE_1473 = 1475;
		com.fasterxml.jackson.databind.JavaType v_type_5825_line_1473 = type;
		boolean type_factory_1_expr236_line_1473 = v_type_5825_line_1473 != null;
		int PROBE_END_LINE_1473 = 1475;
		if (type_factory_1_expr236_line_1473) {
            int PROBE_START_LINE_1474 = 1474;
			com.fasterxml.jackson.databind.JavaType v_type_5825_line_1474 = type;
			int PROBE_END_LINE_1474 = 1474;
			return v_type_5825_line_1474;
        }
        int PROBE_START_LINE_1478 = 1480;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5823_line_1478 = bindings;
		String v_name_5824_line_1478 = name;
		boolean type_factory_1_expr237_line_1478 = p_bindings_5823_line_1478.hasUnbound(v_name_5824_line_1478);
		int PROBE_END_LINE_1478 = 1480;
		// but if not, use bounds... note that approach here is simplistic; not taking
        // into account possible multiple bounds, nor consider upper bounds.
        if (type_factory_1_expr237_line_1478) {
            return CORE_TYPE_OBJECT;
        }
        int PROBE_START_LINE_1481 = 1481;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5823_line_1481 = bindings;
		String v_name_5824_line_1481 = name;
		com.fasterxml.jackson.databind.type.TypeBindings type_factory_1_expr239_line_1481 = p_bindings_5823_line_1481
				.withUnboundVariable(v_name_5824_line_1481);
		int PROBE_END_LINE_1481 = 1481;
		bindings = type_factory_1_expr239_line_1481;

        final Type[] bounds;

        int PROBE_START_LINE_1492 = 1494;
		TypeVariable<?> p_var_5822_line_1492 = var;
		int PROBE_END_LINE_1492 = 1494;
		// 15-Jan-2019, tatu: As weird as this looks, apparently on some platforms (Arm CPU, mobile
        //    devices), unsynchronized internal access can lead to issues, see:
        //
        //  https://vmlens.com/articles/java-lang-reflect-typevariable-getbounds-is-not-thread-safe/  
        //
        //    No good way to reproduce but since this should not be on critical path, let's add
        //    syncing as it seems potentially necessary.
        synchronized (p_var_5822_line_1492) {
            int PROBE_START_LINE_1493 = 1493;
			TypeVariable<?> p_var_5822_line_1493 = var;
			java.lang.reflect.Type[] type_factory_1_expr241_line_1493 = p_var_5822_line_1493.getBounds();
			int PROBE_END_LINE_1493 = 1493;
			bounds = type_factory_1_expr241_line_1493;
        }
        int PROBE_START_LINE_1495 = 1495;
		com.fasterxml.jackson.databind.type.ClassStack p_context_5821_line_1495 = context;
		java.lang.reflect.Type[] v_bounds_5826_line_1495 = bounds;
		java.lang.reflect.Type type_factory_1_expr243_line_1495 = v_bounds_5826_line_1495[0];
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5823_line_1495 = bindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr242_line_1495 = _fromAny(p_context_5821_line_1495,
				type_factory_1_expr243_line_1495, p_bindings_5823_line_1495);
		int PROBE_END_LINE_1495 = 1495;
		return type_factory_1_expr242_line_1495;
    }

    protected JavaType _fromWildcard(ClassStack context, WildcardType type, TypeBindings bindings)
    {
        int PROBE_START_LINE_1505 = 1505;
		com.fasterxml.jackson.databind.type.ClassStack p_context_5827_line_1505 = context;
		java.lang.reflect.WildcardType p_type_5828_line_1505 = type;
		java.lang.reflect.Type[] type_factory_1_expr246_line_1505 = p_type_5828_line_1505.getUpperBounds();
		java.lang.reflect.Type type_factory_1_expr245_line_1505 = type_factory_1_expr246_line_1505[0];
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5829_line_1505 = bindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr244_line_1505 = _fromAny(p_context_5827_line_1505,
				type_factory_1_expr245_line_1505, p_bindings_5829_line_1505);
		int PROBE_END_LINE_1505 = 1505;
		/* Similar to challenges with TypeVariable, we may have multiple upper bounds.
         * But it is also possible that if upper bound defaults to Object, we might
         * want to consider lower bounds instead.
         * For now, we won't try anything more advanced; above is just for future reference.
         */
        return type_factory_1_expr244_line_1505;
    }
}
