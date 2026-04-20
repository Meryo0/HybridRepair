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

	private static final Class<Boolean> q_type_151_line_67 = Boolean.TYPE;

	int PROBE_END_LINE_67 = 67;

	private final static Class<?> CLS_BOOL = q_type_151_line_67;
    int PROBE_START_LINE_68 = 68;

	private static final Class<Integer> q_type_151_line_68 = Integer.TYPE;

	int PROBE_END_LINE_68 = 68;

	private final static Class<?> CLS_INT = q_type_151_line_68;
    int PROBE_START_LINE_69 = 69;

	private static final Class<Long> q_type_151_line_69 = Long.TYPE;

	int PROBE_END_LINE_69 = 69;

	private final static Class<?> CLS_LONG = q_type_151_line_69;

    /*
    /**********************************************************
    /* Cached pre-constructed JavaType instances
    /**********************************************************
     */

    int PROBE_START_LINE_78 = 78;

	protected static final Class<?> f_cls_bool_4513_line_78 = CLS_BOOL;

	int PROBE_END_LINE_78 = 78;

	// note: these are primitive, hence no super types
    protected final static SimpleType CORE_TYPE_BOOL = new SimpleType(f_cls_bool_4513_line_78);
    int PROBE_START_LINE_79 = 79;

	protected static final Class<?> f_cls_int_4514_line_79 = CLS_INT;

	int PROBE_END_LINE_79 = 79;

	protected final static SimpleType CORE_TYPE_INT = new SimpleType(f_cls_int_4514_line_79);
    int PROBE_START_LINE_80 = 80;

	protected static final Class<?> f_cls_long_4515_line_80 = CLS_LONG;

	int PROBE_END_LINE_80 = 80;

	protected final static SimpleType CORE_TYPE_LONG = new SimpleType(f_cls_long_4515_line_80);

    int PROBE_START_LINE_83 = 83;

	protected static final Class<?> f_cls_string_4508_line_83 = CLS_STRING;

	int PROBE_END_LINE_83 = 83;

	// and as to String... well, for now, ignore its super types
    protected final static SimpleType CORE_TYPE_STRING = new SimpleType(f_cls_string_4508_line_83);

    int PROBE_START_LINE_86 = 86;

	protected static final Class<?> f_cls_object_4509_line_86 = CLS_OBJECT;

	int PROBE_END_LINE_86 = 86;

	// @since 2.7
    protected final static SimpleType CORE_TYPE_OBJECT = new SimpleType(f_cls_object_4509_line_86);

    int PROBE_START_LINE_88 = 94;

	protected static final Class<?> f_cls_comparable_4510_line_94 = CLS_COMPARABLE;

	int PROBE_END_LINE_88 = 94;

	/**
     * Cache {@link Comparable} because it is both parameteric (relatively costly to
     * resolve) and mostly useless (no special handling), better handle directly
     *
     * @since 2.7
     */
    protected final static SimpleType CORE_TYPE_COMPARABLE = new SimpleType(f_cls_comparable_4510_line_94);

    int PROBE_START_LINE_96 = 102;

	protected static final Class<?> f_cls_enum_4512_line_102 = CLS_ENUM;

	int PROBE_END_LINE_96 = 102;

	/**
     * Cache {@link Enum} because it is parametric AND self-referential (costly to
     * resolve) and useless in itself (no special handling).
     *
     * @since 2.7
     */
    protected final static SimpleType CORE_TYPE_ENUM = new SimpleType(f_cls_enum_4512_line_102);

    int PROBE_START_LINE_104 = 110;

	protected static final Class<?> f_cls_class_4511_line_110 = CLS_CLASS;

	int PROBE_END_LINE_104 = 110;

	/**
     * Cache {@link Class} because it is nominally parametric, but has no really
     * useful information.
     *
     * @since 2.7
     */
    protected final static SimpleType CORE_TYPE_CLASS = new SimpleType(f_cls_class_4511_line_110);

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
		LRUMap<Object, com.fasterxml.jackson.databind.JavaType> p_type_cache_4524_line_152 = typeCache;
		boolean type_factory_1_expr18_line_152 = p_type_cache_4524_line_152 == null;
		int PROBE_END_LINE_152 = 154;
		if (type_factory_1_expr18_line_152) {
            typeCache = new LRUMap<Object,JavaType>(16, 200);
        }
        int PROBE_START_LINE_155 = 155;
		LRUMap<Object, com.fasterxml.jackson.databind.JavaType> p_type_cache_4524_line_155 = typeCache;
		int PROBE_END_LINE_155 = 155;
		_typeCache = p_type_cache_4524_line_155;
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
		com.fasterxml.jackson.databind.type.TypeFactory f_instance_4506_line_211 = instance;
		int PROBE_END_LINE_211 = 211;
	return f_instance_4506_line_211; }

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
        return _classLoader;
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
        return defaultInstance()._unknownType();
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
        if (className.indexOf('.') < 0) {
            Class<?> prim = _findPrimitive(className);
            if (prim != null) {
                return prim;
            }
        }
        // Two-phase lookup: first using context ClassLoader; then default
        Throwable prob = null;
        ClassLoader loader = this.getClassLoader();
        if (loader == null) {
            loader = 	Thread.currentThread().getContextClassLoader();
        }
        if (loader != null) {
            try {
                return classForName(className, true, loader);
            } catch (Exception e) {
                prob = ClassUtil.getRootCause(e);
            }
        }
        try {
            return classForName(className);
        } catch (Exception e) {
            if (prob == null) {
                prob = ClassUtil.getRootCause(e);
            }
        }
        if (prob instanceof RuntimeException) {
            throw (RuntimeException) prob;
        }
        throw new ClassNotFoundException(prob.getMessage(), prob);
    }
    
    protected Class<?> classForName(String name, boolean initialize,
                                   ClassLoader loader) throws ClassNotFoundException {
    	return Class.forName(name, true, loader);
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
        int PROBE_START_LINE_345 = 345;
		com.fasterxml.jackson.databind.JavaType p_base_type_4543_line_345 = baseType;
		Class<?> type_factory_1_expr27_line_345 = p_base_type_4543_line_345.getRawClass();
		int PROBE_END_LINE_345 = 345;
		// simple optimization to avoid costly introspection if type-erased type does NOT differ
        final Class<?> rawBase = type_factory_1_expr27_line_345;
        int PROBE_START_LINE_346 = 348;
		Class<?> v_raw_base_4545_line_346 = rawBase;
		Class<?> p_subclass_4544_line_346 = subclass;
		boolean type_factory_1_expr28_line_346 = v_raw_base_4545_line_346 == p_subclass_4544_line_346;
		int PROBE_END_LINE_346 = 348;
		if (type_factory_1_expr28_line_346) {
            return baseType;
        }

        JavaType newType = null;

        // also: if we start from untyped, not much to save
        do { // bogus loop to be able to break
            int PROBE_START_LINE_354 = 357;
			Class<?> v_raw_base_4545_line_354 = rawBase;
			boolean type_factory_1_expr29_line_354 = v_raw_base_4545_line_354 == Object.class;
			int PROBE_END_LINE_354 = 357;
			if (type_factory_1_expr29_line_354) {
                newType = _fromClass(null, subclass, TypeBindings.emptyBindings());
                break;
            }
            int PROBE_START_LINE_358 = 361;
			Class<?> v_raw_base_4545_line_358 = rawBase;
			Class<?> p_subclass_4544_line_358 = subclass;
			boolean type_factory_1_expr32_line_358 = v_raw_base_4545_line_358
					.isAssignableFrom(p_subclass_4544_line_358);
			boolean type_factory_1_expr31_line_358 = !type_factory_1_expr32_line_358;
			int PROBE_END_LINE_358 = 361;
			if (type_factory_1_expr31_line_358) {
                throw new IllegalArgumentException(String.format(
                        "Class %s not subtype of %s", subclass.getName(), baseType));
            }
            // A few special cases where we can simplify handling:

            int PROBE_START_LINE_365 = 368;
			com.fasterxml.jackson.databind.JavaType p_base_type_4543_line_365 = baseType;
			com.fasterxml.jackson.databind.type.TypeBindings type_factory_1_expr34_line_365 = p_base_type_4543_line_365
					.getBindings();
			boolean type_factory_1_expr33_line_365 = type_factory_1_expr34_line_365.isEmpty();
			int PROBE_END_LINE_365 = 368;
			// (1) Original target type has no generics -- just resolve subtype
            if (type_factory_1_expr33_line_365) {
                newType = _fromClass(null, subclass, TypeBindings.emptyBindings());     
                break;
            }
            int PROBE_START_LINE_370 = 395;
			com.fasterxml.jackson.databind.JavaType p_base_type_4543_line_370 = baseType;
			boolean type_factory_1_expr35_line_370 = p_base_type_4543_line_370.isContainerType();
			int PROBE_END_LINE_370 = 395;
			// (2) A small set of "well-known" List/Map subtypes where can take a short-cut
            if (type_factory_1_expr35_line_370) {
                int PROBE_START_LINE_371 = 394;
				com.fasterxml.jackson.databind.JavaType p_base_type_4543_line_371 = baseType;
				boolean type_factory_1_expr36_line_371 = p_base_type_4543_line_371.isMapLikeType();
				int PROBE_END_LINE_371 = 394;
				if (type_factory_1_expr36_line_371) {
                    if ((subclass == HashMap.class)
                            || (subclass == LinkedHashMap.class)
                            || (subclass == EnumMap.class)
                            || (subclass == TreeMap.class)) {
                        newType = _fromClass(null, subclass,
                                TypeBindings.create(subclass, baseType.getKeyType(), baseType.getContentType()));
                        break;
                    }
                } else {
					int PROBE_START_LINE_380 = 394;
					com.fasterxml.jackson.databind.JavaType p_base_type_4543_line_380 = baseType;
					boolean type_factory_1_expr37_line_380 = p_base_type_4543_line_380.isCollectionLikeType();
					int PROBE_END_LINE_380 = 394;
					if (type_factory_1_expr37_line_380) {
						int PROBE_START_LINE_381 = 388;
						Class<?> p_subclass_4544_line_381 = subclass;
						boolean type_factory_1_expr40_line_381 = p_subclass_4544_line_381 == ArrayList.class;
						boolean type_factory_1_expr39_line_381 = (type_factory_1_expr40_line_381);
						boolean type_factory_1_expr38_line_381 = type_factory_1_expr39_line_381
								|| (subclass == LinkedList.class) || (subclass == HashSet.class)
								|| (subclass == TreeSet.class);
						int PROBE_END_LINE_381 = 388;
						if (type_factory_1_expr38_line_381) {
							int PROBE_START_LINE_385 = 386;
							Class<?> p_subclass_4544_line_385 = subclass;
							com.fasterxml.jackson.databind.JavaType type_factory_1_expr43_line_385 = _fromClass(null,
									p_subclass_4544_line_385, TypeBindings.create(subclass, baseType.getContentType()));
							int PROBE_END_LINE_385 = 386;
							newType = type_factory_1_expr43_line_385;
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
                newType = _fromClass(null, subclass, TypeBindings.emptyBindings());     
                break;
            }
            // (4) If all else fails, do the full traversal using placeholders
            TypeBindings tb = _bindingsForSubtype(baseType, typeParamCount, subclass);
            newType = _fromClass(null, subclass, tb);

        } while (false);

        int PROBE_START_LINE_410 = 410;
		com.fasterxml.jackson.databind.JavaType v_new_type_4546_line_410 = newType;
		com.fasterxml.jackson.databind.JavaType p_base_type_4543_line_410 = baseType;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr46_line_410 = v_new_type_4546_line_410
				.withHandlersFrom(p_base_type_4543_line_410);
		int PROBE_END_LINE_410 = 410;
		// 25-Sep-2016, tatu: As per [databind#1384] also need to ensure handlers get
        //   copied as well
        newType = type_factory_1_expr46_line_410;
        int PROBE_START_LINE_411 = 411;
		com.fasterxml.jackson.databind.JavaType v_new_type_4546_line_411 = newType;
		int PROBE_END_LINE_411 = 411;
		return v_new_type_4546_line_411;
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
        int PROBE_START_LINE_610 = 610;
		java.lang.reflect.Type p_type_4566_line_610 = type;
		com.fasterxml.jackson.databind.type.TypeBindings f_empty_bindings_4507_line_610 = EMPTY_BINDINGS;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr47_line_610 = _fromAny(null, p_type_4566_line_610,
				f_empty_bindings_4507_line_610);
		int PROBE_END_LINE_610 = 610;
		return type_factory_1_expr47_line_610;
    }

    public JavaType constructType(Type type, TypeBindings bindings) {
        int PROBE_START_LINE_614 = 614;
		java.lang.reflect.Type p_type_4567_line_614 = type;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4568_line_614 = bindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr48_line_614 = _fromAny(null, p_type_4567_line_614,
				p_bindings_4568_line_614);
		int PROBE_END_LINE_614 = 614;
		return type_factory_1_expr48_line_614;
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
            bindings = TypeBindings.emptyBindings();
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
            JavaType elementType) {
        // 19-Oct-2015, tatu: Allow case of no-type-variables, since it seems likely to be
        //    a valid use case here
        return (CollectionType) _fromClass(null, collectionClass,
                TypeBindings.create(collectionClass, elementType));
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
        return (MapType) _fromClass(null, mapClass,
                TypeBindings.create(mapClass, keyType, valueType));
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
     *  JavaType inner = TypeFactory.constructParametrizedType(Set.class, Set.class, Integer.class);
     *  return TypeFactory.constructParametrizedType(ArrayList.class, List.class, inner);
     *</pre>
     *<p>
     * The reason for first two arguments to be separate is that parameterization may
     * apply to a super-type. For example, if generic type was instead to be
     * constructed for <code>ArrayList&lt;Integer></code>, the usual call would be:
     *<pre>
     *  TypeFactory.constructParametrizedType(ArrayList.class, List.class, Integer.class);
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
            pt[i] = _fromClass(null, parameterClasses[i], null);
        }
        return constructParametricType(parametrized, pt);
    }

    /**
     * Factory method for constructing {@link JavaType} that
     * represents a parameterized type. For example, to represent
     * type <code>List&lt;Set&lt;Integer>></code>, you could
     * call
     *<pre>
     *  JavaType inner = TypeFactory.constructParametrizedType(Set.class, Set.class, Integer.class);
     *  return TypeFactory.constructParametrizedType(ArrayList.class, List.class, inner);
     *</pre>
     *<p>
     * The reason for first two arguments to be separate is that parameterization may
     * apply to a super-type. For example, if generic type was instead to be
     * constructed for <code>ArrayList&lt;Integer></code>, the usual call would be:
     *<pre>
     *  TypeFactory.constructParametrizedType(ArrayList.class, List.class, Integer.class);
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
     */
    public JavaType constructParametrizedType(Class<?> parametrized, Class<?> parametersFor,
            JavaType... parameterTypes)
    {
        return constructParametricType(parametrized, parameterTypes);
    }

    /**
     * @since 2.5 -- but will probably deprecated in 2.7 or 2.8 (not needed with 2.7)
     */
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
        JavaType kt, vt;

        // 28-May-2015, tatu: Properties are special, as per [databind#810]; fake "correct" parameter sig
        if (rawClass == Properties.class) {
            kt = vt = CORE_TYPE_STRING;
        } else {
            List<JavaType> typeParams = bindings.getTypeParameters();
            // ok to have no types ("raw")
            switch (typeParams.size()) {
            case 0: // acceptable?
                kt = vt = _unknownType();
                break;
            case 2:
                kt = typeParams.get(0);
                vt = typeParams.get(1);
                break;
            default:
                throw new IllegalArgumentException("Strange Map type "+rawClass.getName()+": can not determine type parameters");
            }
        }
        return MapType.construct(rawClass, bindings, superClass, superInterfaces, kt, vt);
    }

    private JavaType _collectionType(Class<?> rawClass, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces)
    {
        int PROBE_START_LINE_1053 = 1053;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4623_line_1053 = bindings;
		List<JavaType> type_factory_1_expr49_line_1053 = p_bindings_4623_line_1053.getTypeParameters();
		int PROBE_END_LINE_1053 = 1053;
		List<JavaType> typeParams = type_factory_1_expr49_line_1053;
        // ok to have no types ("raw")
        JavaType ct = null;
        int PROBE_START_LINE_1056 = 1062;
		List<com.fasterxml.jackson.databind.JavaType> v_type_params_4626_line_1056 = typeParams;
		boolean type_factory_1_expr50_line_1056 = v_type_params_4626_line_1056.isEmpty();
		int PROBE_END_LINE_1056 = 1062;
		if (type_factory_1_expr50_line_1056) {
            ct = _unknownType();
        } else {
			int PROBE_START_LINE_1058 = 1062;
			List<com.fasterxml.jackson.databind.JavaType> v_type_params_4626_line_1058 = typeParams;
			int type_factory_1_expr52_line_1058 = v_type_params_4626_line_1058.size();
			boolean type_factory_1_expr51_line_1058 = type_factory_1_expr52_line_1058 == 1;
			int PROBE_END_LINE_1058 = 1062;
			if (type_factory_1_expr51_line_1058) {
				int PROBE_START_LINE_1059 = 1059;
				List<com.fasterxml.jackson.databind.JavaType> v_type_params_4626_line_1059 = typeParams;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr54_line_1059 = v_type_params_4626_line_1059
						.get(0);
				int PROBE_END_LINE_1059 = 1059;
				ct = type_factory_1_expr54_line_1059;
			} else {
				throw new IllegalArgumentException(
						"Strange Collection type " + rawClass.getName() + ": can not determine type parameters");
			}
		}
        int PROBE_START_LINE_1063 = 1063;
		Class<?> p_raw_class_4622_line_1063 = rawClass;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4623_line_1063 = bindings;
		com.fasterxml.jackson.databind.JavaType p_super_class_4624_line_1063 = superClass;
		com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_4625_line_1063 = superInterfaces;
		com.fasterxml.jackson.databind.JavaType v_ct_4627_line_1063 = ct;
		com.fasterxml.jackson.databind.type.CollectionType type_factory_1_expr55_line_1063 = CollectionType.construct(
				p_raw_class_4622_line_1063, p_bindings_4623_line_1063, p_super_class_4624_line_1063,
				p_super_interfaces_4625_line_1063, v_ct_4627_line_1063);
		int PROBE_END_LINE_1063 = 1063;
		return type_factory_1_expr55_line_1063;
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
            throw new IllegalArgumentException("Strange Reference type "+rawClass.getName()+": can not determine type parameters");
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
        int PROBE_START_LINE_1112 = 1112;
		Class<?> p_raw_4636_line_1112 = raw;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4637_line_1112 = bindings;
		com.fasterxml.jackson.databind.JavaType p_super_class_4638_line_1112 = superClass;
		com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_4639_line_1112 = superInterfaces;
		int PROBE_END_LINE_1112 = 1112;
		return new SimpleType(p_raw_4636_line_1112, p_bindings_4637_line_1112, p_super_class_4638_line_1112, p_super_interfaces_4639_line_1112);
    }

    protected JavaType _unknownType() {
        /* 15-Sep-2015, tatu: Prior to 2.7, we constructed new instance for each call.
         *    This may have been due to potential mutability of the instance; but that
         *    should not be issue any more, and creation is somewhat wasteful. So let's
         *    try reusing singleton/flyweight instance.
         */
        return CORE_TYPE_OBJECT;
    }

    /**
     * Helper method called to see if requested, non-generic-parameterized
     * type is one of common, "well-known" types, instances of which are
     * pre-constructed and do not need dynamic caching.
     *
     * @since 2.7
     */
    protected JavaType _findWellKnownSimple(Class<?> clz) {
        int PROBE_START_LINE_1132 = 1139;
		Class<?> p_clz_4640_line_1132 = clz;
		boolean type_factory_1_expr57_line_1132 = p_clz_4640_line_1132.isPrimitive();
		int PROBE_END_LINE_1132 = 1139;
		if (type_factory_1_expr57_line_1132) {
            int PROBE_START_LINE_1133 = 1133;
			Class<?> p_clz_4640_line_1133 = clz;
			Class<?> f_cls_bool_4513_line_1133 = CLS_BOOL;
			boolean type_factory_1_expr58_line_1133 = p_clz_4640_line_1133 == f_cls_bool_4513_line_1133;
			if (type_factory_1_expr58_line_1133) {
				com.fasterxml.jackson.databind.type.SimpleType f_core_type_bool_4516_line_1133 = CORE_TYPE_BOOL;
				int PROBE_END_LINE_1133 = 1133;
				return f_core_type_bool_4516_line_1133;
			}
            int PROBE_START_LINE_1134 = 1134;
			Class<?> p_clz_4640_line_1134 = clz;
			Class<?> f_cls_int_4514_line_1134 = CLS_INT;
			boolean type_factory_1_expr59_line_1134 = p_clz_4640_line_1134 == f_cls_int_4514_line_1134;
			if (type_factory_1_expr59_line_1134) {
				com.fasterxml.jackson.databind.type.SimpleType f_core_type_int_4517_line_1134 = CORE_TYPE_INT;
				int PROBE_END_LINE_1134 = 1134;
				return f_core_type_int_4517_line_1134;
			}
            if (clz == CLS_LONG) return CORE_TYPE_LONG;
        } else {
            int PROBE_START_LINE_1137 = 1137;
			Class<?> p_clz_4640_line_1137 = clz;
			Class<?> f_cls_string_4508_line_1137 = CLS_STRING;
			boolean type_factory_1_expr60_line_1137 = p_clz_4640_line_1137 == f_cls_string_4508_line_1137;
			if (type_factory_1_expr60_line_1137) {
				com.fasterxml.jackson.databind.type.SimpleType f_core_type_string_4519_line_1137 = CORE_TYPE_STRING;
				int PROBE_END_LINE_1137 = 1137;
				return f_core_type_string_4519_line_1137;
			}
            int PROBE_START_LINE_1138 = 1138;
			Class<?> p_clz_4640_line_1138 = clz;
			Class<?> f_cls_object_4509_line_1138 = CLS_OBJECT;
			boolean type_factory_1_expr61_line_1138 = p_clz_4640_line_1138 == f_cls_object_4509_line_1138;
			if (type_factory_1_expr61_line_1138)
			 {
				com.fasterxml.jackson.databind.type.SimpleType f_core_type_object_4520_line_1138 = CORE_TYPE_OBJECT;
				int PROBE_END_LINE_1138 = 1138;
				return f_core_type_object_4520_line_1138;
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

        int PROBE_START_LINE_1159 = 1182;
		java.lang.reflect.Type p_type_4642_line_1159 = type;
		boolean type_factory_1_expr62_line_1159 = p_type_4642_line_1159 instanceof Class<?>;
		int PROBE_END_LINE_1159 = 1182;
		// simple class?
        if (type_factory_1_expr62_line_1159) {
            int PROBE_START_LINE_1161 = 1161;
			com.fasterxml.jackson.databind.type.ClassStack p_context_4641_line_1161 = context;
			java.lang.reflect.Type p_type_4642_line_1161 = type;
			com.fasterxml.jackson.databind.type.TypeBindings f_empty_bindings_4507_line_1161 = EMPTY_BINDINGS;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr64_line_1161 = _fromClass(
					p_context_4641_line_1161, (Class<?>) p_type_4642_line_1161, f_empty_bindings_4507_line_1161);
			int PROBE_END_LINE_1161 = 1161;
			// Important: remove possible bindings since this is type-erased thingy
            resultType = type_factory_1_expr64_line_1161;
        } else {
			int PROBE_START_LINE_1164 = 1182;
			java.lang.reflect.Type p_type_4642_line_1164 = type;
			boolean type_factory_1_expr66_line_1164 = p_type_4642_line_1164 instanceof ParameterizedType;
			int PROBE_END_LINE_1164 = 1182;
			if (type_factory_1_expr66_line_1164) {
				int PROBE_START_LINE_1165 = 1165;
				com.fasterxml.jackson.databind.type.ClassStack p_context_4641_line_1165 = context;
				java.lang.reflect.Type p_type_4642_line_1165 = type;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4643_line_1165 = bindings;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr68_line_1165 = _fromParamType(
						p_context_4641_line_1165, (ParameterizedType) p_type_4642_line_1165, p_bindings_4643_line_1165);
				int PROBE_END_LINE_1165 = 1165;
				resultType = type_factory_1_expr68_line_1165;
			} else {
				int PROBE_START_LINE_1167 = 1182;
				java.lang.reflect.Type p_type_4642_line_1167 = type;
				boolean type_factory_1_expr70_line_1167 = p_type_4642_line_1167 instanceof JavaType;
				int PROBE_END_LINE_1167 = 1182;
				if (type_factory_1_expr70_line_1167) {
					return (JavaType) type;
				} else {
					int PROBE_START_LINE_1171 = 1182;
					java.lang.reflect.Type p_type_4642_line_1171 = type;
					boolean type_factory_1_expr71_line_1171 = p_type_4642_line_1171 instanceof GenericArrayType;
					int PROBE_END_LINE_1171 = 1182;
					if (type_factory_1_expr71_line_1171) {
						resultType = _fromArrayType(context, (GenericArrayType) type, bindings);
					} else {
						int PROBE_START_LINE_1174 = 1182;
						java.lang.reflect.Type p_type_4642_line_1174 = type;
						boolean type_factory_1_expr72_line_1174 = p_type_4642_line_1174 instanceof TypeVariable<?>;
						int PROBE_END_LINE_1174 = 1182;
						if (type_factory_1_expr72_line_1174) {
							int PROBE_START_LINE_1175 = 1175;
							com.fasterxml.jackson.databind.type.ClassStack p_context_4641_line_1175 = context;
							java.lang.reflect.Type p_type_4642_line_1175 = type;
							com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4643_line_1175 = bindings;
							com.fasterxml.jackson.databind.JavaType type_factory_1_expr74_line_1175 = _fromVariable(
									p_context_4641_line_1175, (TypeVariable<?>) p_type_4642_line_1175,
									p_bindings_4643_line_1175);
							int PROBE_END_LINE_1175 = 1175;
							resultType = type_factory_1_expr74_line_1175;
						} else {
							int PROBE_START_LINE_1177 = 1182;
							java.lang.reflect.Type p_type_4642_line_1177 = type;
							boolean type_factory_1_expr76_line_1177 = p_type_4642_line_1177 instanceof WildcardType;
							int PROBE_END_LINE_1177 = 1182;
							if (type_factory_1_expr76_line_1177) {
								int PROBE_START_LINE_1178 = 1178;
								com.fasterxml.jackson.databind.type.ClassStack p_context_4641_line_1178 = context;
								java.lang.reflect.Type p_type_4642_line_1178 = type;
								com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4643_line_1178 = bindings;
								com.fasterxml.jackson.databind.JavaType type_factory_1_expr78_line_1178 = _fromWildcard(
										p_context_4641_line_1178, (WildcardType) p_type_4642_line_1178,
										p_bindings_4643_line_1178);
								int PROBE_END_LINE_1178 = 1178;
								resultType = type_factory_1_expr78_line_1178;
							} else {
								throw new IllegalArgumentException(
										"Unrecognized Type: " + ((type == null) ? "[null]" : type.toString()));
							}
						}
					}
				}
			}
		}
        int PROBE_START_LINE_1186 = 1200;
		com.fasterxml.jackson.databind.type.TypeModifier[] f__modifiers_4527_line_1186 = _modifiers;
		boolean type_factory_1_expr80_line_1186 = f__modifiers_4527_line_1186 != null;
		int PROBE_END_LINE_1186 = 1200;
		/* 21-Feb-2016, nateB/tatu: as per [databind#1129] (applied for 2.7.2),
         *   we do need to let all kinds of types to be refined, esp. for Scala module.
         */
        if (type_factory_1_expr80_line_1186) {
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
        int PROBE_START_LINE_1201 = 1201;
		com.fasterxml.jackson.databind.JavaType v_result_type_4644_line_1201 = resultType;
		int PROBE_END_LINE_1201 = 1201;
		return v_result_type_4644_line_1201;
    }

    /**
     * @param bindings Mapping of formal parameter declarations (for generic
     *   types) into actual types
     */
    protected JavaType _fromClass(ClassStack context, Class<?> rawType, TypeBindings bindings)
    {
        int PROBE_START_LINE_1211 = 1211;
		Class<?> p_raw_type_4646_line_1211 = rawType;
		JavaType type_factory_1_expr81_line_1211 = _findWellKnownSimple(p_raw_type_4646_line_1211);
		int PROBE_END_LINE_1211 = 1211;
		// Very first thing: small set of core types we know well:
        JavaType result = type_factory_1_expr81_line_1211;
        int PROBE_START_LINE_1212 = 1214;
		com.fasterxml.jackson.databind.JavaType v_result_4648_line_1212 = result;
		boolean type_factory_1_expr82_line_1212 = v_result_4648_line_1212 != null;
		int PROBE_END_LINE_1212 = 1214;
		if (type_factory_1_expr82_line_1212) {
            int PROBE_START_LINE_1213 = 1213;
			com.fasterxml.jackson.databind.JavaType v_result_4648_line_1213 = result;
			int PROBE_END_LINE_1213 = 1213;
			return v_result_4648_line_1213;
        }
        // Barring that, we may have recently constructed an instance
        final Object key;
        int PROBE_START_LINE_1217 = 1221;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4647_line_1217 = bindings;
		boolean type_factory_1_expr85_line_1217 = p_bindings_4647_line_1217 == null;
		boolean type_factory_1_expr84_line_1217 = (type_factory_1_expr85_line_1217);
		boolean type_factory_1_expr86_line_1217 = false;
		if (!type_factory_1_expr84_line_1217) {
			com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4647_line_1217_v1 = bindings;
			type_factory_1_expr86_line_1217 = p_bindings_4647_line_1217_v1.isEmpty();
		}
		boolean type_factory_1_expr83_line_1217 = type_factory_1_expr84_line_1217 || type_factory_1_expr86_line_1217;
		int PROBE_END_LINE_1217 = 1221;
		if (type_factory_1_expr83_line_1217) {
            int PROBE_START_LINE_1218 = 1218;
			Class<?> p_raw_type_4646_line_1218 = rawType;
			int PROBE_END_LINE_1218 = 1218;
			key = p_raw_type_4646_line_1218;
        } else {
            int PROBE_START_LINE_1220 = 1220;
			com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4647_line_1220 = bindings;
			Class<?> p_raw_type_4646_line_1220 = rawType;
			Object type_factory_1_expr89_line_1220 = p_bindings_4647_line_1220.asKey(p_raw_type_4646_line_1220);
			int PROBE_END_LINE_1220 = 1220;
			key = type_factory_1_expr89_line_1220;
        }
        int PROBE_START_LINE_1222 = 1222;
		LRUMap<Object, com.fasterxml.jackson.databind.JavaType> f__type_cache_4525_line_1222 = _typeCache;
		Object v_key_4649_line_1222 = key;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr91_line_1222 = f__type_cache_4525_line_1222
				.get(v_key_4649_line_1222);
		int PROBE_END_LINE_1222 = 1222;
		result = type_factory_1_expr91_line_1222; // ok, cache object is synced
        int PROBE_START_LINE_1223 = 1225;
		com.fasterxml.jackson.databind.JavaType v_result_4648_line_1223 = result;
		boolean type_factory_1_expr92_line_1223 = v_result_4648_line_1223 != null;
		int PROBE_END_LINE_1223 = 1225;
		if (type_factory_1_expr92_line_1223) {
            int PROBE_START_LINE_1224 = 1224;
			com.fasterxml.jackson.databind.JavaType v_result_4648_line_1224 = result;
			int PROBE_END_LINE_1224 = 1224;
			return v_result_4648_line_1224;
        }

        int PROBE_START_LINE_1228 = 1240;
		com.fasterxml.jackson.databind.type.ClassStack p_context_4645_line_1228 = context;
		boolean type_factory_1_expr93_line_1228 = p_context_4645_line_1228 == null;
		int PROBE_END_LINE_1228 = 1240;
		// 15-Oct-2015, tatu: recursive reference?
        if (type_factory_1_expr93_line_1228) {
            int PROBE_START_LINE_1229 = 1229;
			Class<?> p_raw_type_4646_line_1229 = rawType;
			int PROBE_END_LINE_1229 = 1229;
			context = new ClassStack(p_raw_type_4646_line_1229);
        } else {
            int PROBE_START_LINE_1231 = 1231;
			com.fasterxml.jackson.databind.type.ClassStack p_context_4645_line_1231 = context;
			Class<?> p_raw_type_4646_line_1231 = rawType;
			ClassStack type_factory_1_expr96_line_1231 = p_context_4645_line_1231.find(p_raw_type_4646_line_1231);
			int PROBE_END_LINE_1231 = 1231;
			ClassStack prev = type_factory_1_expr96_line_1231;
            int PROBE_START_LINE_1232 = 1237;
			com.fasterxml.jackson.databind.type.ClassStack v_prev_4650_line_1232 = prev;
			boolean type_factory_1_expr97_line_1232 = v_prev_4650_line_1232 != null;
			int PROBE_END_LINE_1232 = 1237;
			if (type_factory_1_expr97_line_1232) {
                // Self-reference: needs special handling, then...
                ResolvedRecursiveType selfRef = new ResolvedRecursiveType(rawType, EMPTY_BINDINGS);
                prev.addSelfReference(selfRef);
                return selfRef;
            }
            int PROBE_START_LINE_1239 = 1239;
			com.fasterxml.jackson.databind.type.ClassStack p_context_4645_line_1239 = context;
			Class<?> p_raw_type_4646_line_1239 = rawType;
			com.fasterxml.jackson.databind.type.ClassStack type_factory_1_expr99_line_1239 = p_context_4645_line_1239
					.child(p_raw_type_4646_line_1239);
			int PROBE_END_LINE_1239 = 1239;
			// no, but need to update context to allow for proper cycle resolution
            context = type_factory_1_expr99_line_1239;
        }

        int PROBE_START_LINE_1243 = 1282;
		Class<?> p_raw_type_4646_line_1243 = rawType;
		boolean type_factory_1_expr100_line_1243 = p_raw_type_4646_line_1243.isArray();
		int PROBE_END_LINE_1243 = 1282;
		// First: do we have an array type?
        if (type_factory_1_expr100_line_1243) {
            result = ArrayType.construct(_fromAny(context, rawType.getComponentType(), bindings),
                    bindings);
        } else {
            // If not, need to proceed by first resolving parent type hierarchy
            
            JavaType superClass = null;
            JavaType[] superInterfaces = null;

            int PROBE_START_LINE_1252 = 1259;
			Class<?> p_raw_type_4646_line_1252 = rawType;
			boolean type_factory_1_expr101_line_1252 = p_raw_type_4646_line_1252.isInterface();
			int PROBE_END_LINE_1252 = 1259;
			if (type_factory_1_expr101_line_1252) {
                superClass = null;
                int PROBE_START_LINE_1254 = 1254;
				com.fasterxml.jackson.databind.type.ClassStack p_context_4645_line_1254 = context;
				Class<?> p_raw_type_4646_line_1254 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4647_line_1254 = bindings;
				com.fasterxml.jackson.databind.JavaType[] type_factory_1_expr104_line_1254 = _resolveSuperInterfaces(
						p_context_4645_line_1254, p_raw_type_4646_line_1254, p_bindings_4647_line_1254);
				int PROBE_END_LINE_1254 = 1254;
				superInterfaces = type_factory_1_expr104_line_1254;
            } else {
                int PROBE_START_LINE_1257 = 1257;
				com.fasterxml.jackson.databind.type.ClassStack p_context_4645_line_1257 = context;
				Class<?> p_raw_type_4646_line_1257 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4647_line_1257 = bindings;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr106_line_1257 = _resolveSuperClass(
						p_context_4645_line_1257, p_raw_type_4646_line_1257, p_bindings_4647_line_1257);
				int PROBE_END_LINE_1257 = 1257;
				// Note: even Enums can implement interfaces, so can not drop those
                superClass = type_factory_1_expr106_line_1257;
                int PROBE_START_LINE_1258 = 1258;
				com.fasterxml.jackson.databind.type.ClassStack p_context_4645_line_1258 = context;
				Class<?> p_raw_type_4646_line_1258 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4647_line_1258 = bindings;
				com.fasterxml.jackson.databind.JavaType[] type_factory_1_expr108_line_1258 = _resolveSuperInterfaces(
						p_context_4645_line_1258, p_raw_type_4646_line_1258, p_bindings_4647_line_1258);
				int PROBE_END_LINE_1258 = 1258;
				superInterfaces = type_factory_1_expr108_line_1258;
            }

            int PROBE_START_LINE_1262 = 1270;
			Class<?> p_raw_type_4646_line_1262 = rawType;
			boolean type_factory_1_expr109_line_1262 = p_raw_type_4646_line_1262 == Properties.class;
			int PROBE_END_LINE_1262 = 1270;
			// 19-Oct-2015, tatu: Bit messy, but we need to 'fix' java.util.Properties here...
            if (type_factory_1_expr109_line_1262) {
                result = MapType.construct(rawType, bindings, superClass, superInterfaces,
                        CORE_TYPE_STRING, CORE_TYPE_STRING);
            } else {
				int PROBE_START_LINE_1268 = 1270;
				com.fasterxml.jackson.databind.JavaType v_super_class_4651_line_1268 = superClass;
				boolean type_factory_1_expr111_line_1268 = v_super_class_4651_line_1268 != null;
				int PROBE_END_LINE_1268 = 1270;
				if (type_factory_1_expr111_line_1268) {
					int PROBE_START_LINE_1269 = 1269;
					com.fasterxml.jackson.databind.JavaType v_super_class_4651_line_1269 = superClass;
					Class<?> p_raw_type_4646_line_1269 = rawType;
					com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4647_line_1269 = bindings;
					com.fasterxml.jackson.databind.JavaType v_super_class_4651_line_1269_v1 = superClass;
					com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_4652_line_1269 = superInterfaces;
					com.fasterxml.jackson.databind.JavaType type_factory_1_expr113_line_1269 = v_super_class_4651_line_1269
							.refine(p_raw_type_4646_line_1269, p_bindings_4647_line_1269,
									v_super_class_4651_line_1269_v1, v_super_interfaces_4652_line_1269);
					int PROBE_END_LINE_1269 = 1269;
					result = type_factory_1_expr113_line_1269;
				}
			}
            int PROBE_START_LINE_1272 = 1281;
			com.fasterxml.jackson.databind.JavaType v_result_4648_line_1272 = result;
			boolean type_factory_1_expr114_line_1272 = v_result_4648_line_1272 == null;
			int PROBE_END_LINE_1272 = 1281;
			// if not, perhaps we are now resolving a well-known class or interface?
            if (type_factory_1_expr114_line_1272) {
                int PROBE_START_LINE_1273 = 1273;
				com.fasterxml.jackson.databind.type.ClassStack p_context_4645_line_1273 = context;
				Class<?> p_raw_type_4646_line_1273 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4647_line_1273 = bindings;
				com.fasterxml.jackson.databind.JavaType v_super_class_4651_line_1273 = superClass;
				com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_4652_line_1273 = superInterfaces;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr116_line_1273 = _fromWellKnownClass(
						p_context_4645_line_1273, p_raw_type_4646_line_1273, p_bindings_4647_line_1273,
						v_super_class_4651_line_1273, v_super_interfaces_4652_line_1273);
				int PROBE_END_LINE_1273 = 1273;
				result = type_factory_1_expr116_line_1273; 
                int PROBE_START_LINE_1274 = 1280;
				com.fasterxml.jackson.databind.JavaType v_result_4648_line_1274 = result;
				boolean type_factory_1_expr117_line_1274 = v_result_4648_line_1274 == null;
				int PROBE_END_LINE_1274 = 1280;
				if (type_factory_1_expr117_line_1274) {
                    int PROBE_START_LINE_1275 = 1275;
					com.fasterxml.jackson.databind.type.ClassStack p_context_4645_line_1275 = context;
					Class<?> p_raw_type_4646_line_1275 = rawType;
					com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4647_line_1275 = bindings;
					com.fasterxml.jackson.databind.JavaType v_super_class_4651_line_1275 = superClass;
					com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_4652_line_1275 = superInterfaces;
					com.fasterxml.jackson.databind.JavaType type_factory_1_expr119_line_1275 = _fromWellKnownInterface(
							p_context_4645_line_1275, p_raw_type_4646_line_1275, p_bindings_4647_line_1275,
							v_super_class_4651_line_1275, v_super_interfaces_4652_line_1275);
					int PROBE_END_LINE_1275 = 1275;
					result = type_factory_1_expr119_line_1275;
                    int PROBE_START_LINE_1276 = 1279;
					com.fasterxml.jackson.databind.JavaType v_result_4648_line_1276 = result;
					boolean type_factory_1_expr120_line_1276 = v_result_4648_line_1276 == null;
					int PROBE_END_LINE_1276 = 1279;
					if (type_factory_1_expr120_line_1276) {
                        int PROBE_START_LINE_1278 = 1278;
						Class<?> p_raw_type_4646_line_1278 = rawType;
						com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4647_line_1278 = bindings;
						com.fasterxml.jackson.databind.JavaType v_super_class_4651_line_1278 = superClass;
						com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_4652_line_1278 = superInterfaces;
						com.fasterxml.jackson.databind.JavaType type_factory_1_expr122_line_1278 = _newSimpleType(
								p_raw_type_4646_line_1278, p_bindings_4647_line_1278, v_super_class_4651_line_1278,
								v_super_interfaces_4652_line_1278);
						int PROBE_END_LINE_1278 = 1278;
						// but if nothing else, "simple" class for now:
                        result = type_factory_1_expr122_line_1278;
                    }
                }
            }
        }
        int PROBE_START_LINE_1283 = 1283;
		com.fasterxml.jackson.databind.type.ClassStack p_context_4645_line_1283 = context;
		com.fasterxml.jackson.databind.JavaType v_result_4648_line_1283 = result;
		int PROBE_END_LINE_1283 = 1283;
		p_context_4645_line_1283.resolveSelfReferences(v_result_4648_line_1283);
        int PROBE_START_LINE_1286 = 1288;
		com.fasterxml.jackson.databind.JavaType v_result_4648_line_1286 = result;
		boolean type_factory_1_expr125_line_1286 = v_result_4648_line_1286.hasHandlers();
		boolean type_factory_1_expr124_line_1286 = !type_factory_1_expr125_line_1286;
		int PROBE_END_LINE_1286 = 1288;
		// 16-Jul-2016, tatu: [databind#1302] is solved different way, but ideally we shouldn't
        //     cache anything with partially resolved `ResolvedRecursiveType`... so maybe improve
        if (type_factory_1_expr124_line_1286) {
            int PROBE_START_LINE_1287 = 1287;
			LRUMap<Object, com.fasterxml.jackson.databind.JavaType> f__type_cache_4525_line_1287 = _typeCache;
			Object v_key_4649_line_1287 = key;
			com.fasterxml.jackson.databind.JavaType v_result_4648_line_1287 = result;
			int PROBE_END_LINE_1287 = 1287;
			f__type_cache_4525_line_1287.putIfAbsent(v_key_4649_line_1287, v_result_4648_line_1287); // cache object syncs
        }
        int PROBE_START_LINE_1289 = 1289;
		com.fasterxml.jackson.databind.JavaType v_result_4648_line_1289 = result;
		int PROBE_END_LINE_1289 = 1289;
		return v_result_4648_line_1289;
    }

    protected JavaType _resolveSuperClass(ClassStack context, Class<?> rawType, TypeBindings parentBindings)
    {
        int PROBE_START_LINE_1294 = 1294;
		Class<?> p_raw_type_4654_line_1294 = rawType;
		Type type_factory_1_expr127_line_1294 = ClassUtil.getGenericSuperclass(p_raw_type_4654_line_1294);
		int PROBE_END_LINE_1294 = 1294;
		Type parent = type_factory_1_expr127_line_1294;
        int PROBE_START_LINE_1295 = 1297;
		java.lang.reflect.Type v_parent_4656_line_1295 = parent;
		boolean type_factory_1_expr128_line_1295 = v_parent_4656_line_1295 == null;
		int PROBE_END_LINE_1295 = 1297;
		if (type_factory_1_expr128_line_1295) {
            return null;
        }
        int PROBE_START_LINE_1298 = 1298;
		com.fasterxml.jackson.databind.type.ClassStack p_context_4653_line_1298 = context;
		java.lang.reflect.Type v_parent_4656_line_1298 = parent;
		com.fasterxml.jackson.databind.type.TypeBindings p_parent_bindings_4655_line_1298 = parentBindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr129_line_1298 = _fromAny(p_context_4653_line_1298,
				v_parent_4656_line_1298, p_parent_bindings_4655_line_1298);
		int PROBE_END_LINE_1298 = 1298;
		return type_factory_1_expr129_line_1298;
    }

    protected JavaType[] _resolveSuperInterfaces(ClassStack context, Class<?> rawType, TypeBindings parentBindings)
    {
        int PROBE_START_LINE_1303 = 1303;
		Class<?> p_raw_type_4658_line_1303 = rawType;
		Type[] type_factory_1_expr130_line_1303 = ClassUtil.getGenericInterfaces(p_raw_type_4658_line_1303);
		int PROBE_END_LINE_1303 = 1303;
		Type[] types = type_factory_1_expr130_line_1303;
        int PROBE_START_LINE_1304 = 1306;
		java.lang.reflect.Type[] v_types_4660_line_1304 = types;
		boolean type_factory_1_expr132_line_1304 = v_types_4660_line_1304 == null;
		boolean type_factory_1_expr133_line_1304 = false;
		if (!type_factory_1_expr132_line_1304) {
			java.lang.reflect.Type[] v_types_4660_line_1304_v1 = types;
			int q_length_151_line_1304 = v_types_4660_line_1304_v1.length;
			type_factory_1_expr133_line_1304 = q_length_151_line_1304 == 0;
		}
		boolean type_factory_1_expr131_line_1304 = type_factory_1_expr132_line_1304 || type_factory_1_expr133_line_1304;
		int PROBE_END_LINE_1304 = 1306;
		if (type_factory_1_expr131_line_1304) {
            int PROBE_START_LINE_1305 = 1305;
			com.fasterxml.jackson.databind.JavaType[] f_no_types_4505_line_1305 = NO_TYPES;
			int PROBE_END_LINE_1305 = 1305;
			return f_no_types_4505_line_1305;
        }
        int PROBE_START_LINE_1307 = 1307;
		java.lang.reflect.Type[] v_types_4660_line_1307 = types;
		int q_length_152_line_1307 = v_types_4660_line_1307.length;
		int PROBE_END_LINE_1307 = 1307;
		int len = q_length_152_line_1307;
        int PROBE_START_LINE_1308 = 1308;
		int v_len_4661_line_1308 = len;
		int PROBE_END_LINE_1308 = 1308;
		JavaType[] resolved = new JavaType[v_len_4661_line_1308];
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_1310 = 1310;
			int v_i_4663_line_1309 = i;
			int v_len_4661_line_1309 = len;
			boolean type_factory_1_expr136_line_1309 = v_i_4663_line_1309 < v_len_4661_line_1309;
			if (!(type_factory_1_expr136_line_1309)) {
				break;
			}
			java.lang.reflect.Type[] v_types_4660_line_1310 = types;
			int v_i_4663_line_1310 = i;
			Type type_factory_1_expr138_line_1310 = v_types_4660_line_1310[v_i_4663_line_1310];
			int PROBE_END_LINE_1310 = 1310;
			Type type = type_factory_1_expr138_line_1310;
            int PROBE_START_LINE_1311 = 1311;
			com.fasterxml.jackson.databind.JavaType[] v_resolved_4662_line_1311 = resolved;
			int v_i_4663_line_1311 = i;
			com.fasterxml.jackson.databind.type.ClassStack p_context_4657_line_1311 = context;
			java.lang.reflect.Type v_type_4664_line_1311 = type;
			com.fasterxml.jackson.databind.type.TypeBindings p_parent_bindings_4659_line_1311 = parentBindings;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr141_line_1311 = _fromAny(
					p_context_4657_line_1311, v_type_4664_line_1311, p_parent_bindings_4659_line_1311);
			int PROBE_END_LINE_1311 = 1311;
			v_resolved_4662_line_1311[v_i_4663_line_1311] = type_factory_1_expr141_line_1311;
        }
        int PROBE_START_LINE_1313 = 1313;
		com.fasterxml.jackson.databind.JavaType[] v_resolved_4662_line_1313 = resolved;
		int PROBE_END_LINE_1313 = 1313;
		return v_resolved_4662_line_1313;
    }

    /**
     * Helper class used to check whether exact class for which type is being constructed
     * is one of well-known base interfaces or classes that indicates alternate
     * {@link JavaType} implementation.
     */
    protected JavaType _fromWellKnownClass(ClassStack context, Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces)
    {
        int PROBE_START_LINE_1324 = 1326;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4667_line_1324 = bindings;
		boolean type_factory_1_expr142_line_1324 = p_bindings_4667_line_1324 == null;
		int PROBE_END_LINE_1324 = 1326;
		if (type_factory_1_expr142_line_1324) {
            bindings = TypeBindings.emptyBindings();
        }
        
        int PROBE_START_LINE_1329 = 1331;
		Class<?> p_raw_type_4666_line_1329 = rawType;
		boolean type_factory_1_expr143_line_1329 = p_raw_type_4666_line_1329 == Map.class;
		int PROBE_END_LINE_1329 = 1331;
		// Quite simple when we resolving exact class/interface; start with that
        if (type_factory_1_expr143_line_1329) {
            return _mapType(rawType, bindings, superClass, superInterfaces);
        }
        int PROBE_START_LINE_1332 = 1334;
		Class<?> p_raw_type_4666_line_1332 = rawType;
		boolean type_factory_1_expr145_line_1332 = p_raw_type_4666_line_1332 == Collection.class;
		int PROBE_END_LINE_1332 = 1334;
		if (type_factory_1_expr145_line_1332) {
            int PROBE_START_LINE_1333 = 1333;
			Class<?> p_raw_type_4666_line_1333 = rawType;
			com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4667_line_1333 = bindings;
			com.fasterxml.jackson.databind.JavaType p_super_class_4668_line_1333 = superClass;
			com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_4669_line_1333 = superInterfaces;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr147_line_1333 = _collectionType(
					p_raw_type_4666_line_1333, p_bindings_4667_line_1333, p_super_class_4668_line_1333,
					p_super_interfaces_4669_line_1333);
			int PROBE_END_LINE_1333 = 1333;
			return type_factory_1_expr147_line_1333;
        }
        int PROBE_START_LINE_1336 = 1338;
		Class<?> p_raw_type_4666_line_1336 = rawType;
		boolean type_factory_1_expr148_line_1336 = p_raw_type_4666_line_1336 == AtomicReference.class;
		int PROBE_END_LINE_1336 = 1338;
		// and since 2.6 one referential type
        if (type_factory_1_expr148_line_1336) {
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
        int PROBE_START_LINE_1351 = 1351;
		com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_4674_line_1351 = superInterfaces;
		int q_length_152_line_1351 = p_super_interfaces_4674_line_1351.length;
		int PROBE_END_LINE_1351 = 1351;
		// But that's not all: may be possible current type actually implements an
        // interface type. So...
        final int intCount = q_length_152_line_1351;

        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_1354 = 1354;
			int v_i_4676_line_1353 = i;
			int v_int_count_4675_line_1353 = intCount;
			boolean type_factory_1_expr151_line_1353 = v_i_4676_line_1353 < v_int_count_4675_line_1353;
			if (!(type_factory_1_expr151_line_1353)) {
				break;
			}
			com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_4674_line_1354 = superInterfaces;
			int v_i_4676_line_1354 = i;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr154_line_1354 = p_super_interfaces_4674_line_1354[v_i_4676_line_1354];
			Class<?> p_raw_type_4671_line_1354 = rawType;
			com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4672_line_1354 = bindings;
			com.fasterxml.jackson.databind.JavaType p_super_class_4673_line_1354 = superClass;
			com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_4674_line_1354_v1 = superInterfaces;
			JavaType type_factory_1_expr153_line_1354 = type_factory_1_expr154_line_1354.refine(
					p_raw_type_4671_line_1354, p_bindings_4672_line_1354, p_super_class_4673_line_1354,
					p_super_interfaces_4674_line_1354_v1);
			int PROBE_END_LINE_1354 = 1354;
			JavaType result = type_factory_1_expr153_line_1354;
            int PROBE_START_LINE_1355 = 1357;
			com.fasterxml.jackson.databind.JavaType v_result_4677_line_1355 = result;
			boolean type_factory_1_expr155_line_1355 = v_result_4677_line_1355 != null;
			int PROBE_END_LINE_1355 = 1357;
			if (type_factory_1_expr155_line_1355) {
                int PROBE_START_LINE_1356 = 1356;
				com.fasterxml.jackson.databind.JavaType v_result_4677_line_1356 = result;
				int PROBE_END_LINE_1356 = 1356;
				return v_result_4677_line_1356;
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
        int PROBE_START_LINE_1370 = 1370;
		java.lang.reflect.ParameterizedType p_ptype_4679_line_1370 = ptype;
		java.lang.reflect.Type type_factory_1_expr157_line_1370 = p_ptype_4679_line_1370.getRawType();
		int PROBE_END_LINE_1370 = 1370;
		// Assumption here is we'll always get Class, not one of other Types
        Class<?> rawType = (Class<?>) type_factory_1_expr157_line_1370;

        int PROBE_START_LINE_1374 = 1376;
		Class<?> v_raw_type_4681_line_1374 = rawType;
		Class<?> f_cls_enum_4512_line_1374 = CLS_ENUM;
		boolean type_factory_1_expr158_line_1374 = v_raw_type_4681_line_1374 == f_cls_enum_4512_line_1374;
		int PROBE_END_LINE_1374 = 1376;
		// 29-Oct-2015, tatu: For performance reasons, let's streamline handling of
        //   couple of not-so-useful parametric types
        if (type_factory_1_expr158_line_1374) {
            return CORE_TYPE_ENUM;
        }
        int PROBE_START_LINE_1377 = 1379;
		Class<?> v_raw_type_4681_line_1377 = rawType;
		Class<?> f_cls_comparable_4510_line_1377 = CLS_COMPARABLE;
		boolean type_factory_1_expr159_line_1377 = v_raw_type_4681_line_1377 == f_cls_comparable_4510_line_1377;
		int PROBE_END_LINE_1377 = 1379;
		if (type_factory_1_expr159_line_1377) {
            return CORE_TYPE_COMPARABLE;
        }
        int PROBE_START_LINE_1380 = 1382;
		Class<?> v_raw_type_4681_line_1380 = rawType;
		Class<?> f_cls_class_4511_line_1380 = CLS_CLASS;
		boolean type_factory_1_expr160_line_1380 = v_raw_type_4681_line_1380 == f_cls_class_4511_line_1380;
		int PROBE_END_LINE_1380 = 1382;
		if (type_factory_1_expr160_line_1380) {
            return CORE_TYPE_CLASS;
        }

        int PROBE_START_LINE_1387 = 1387;
		java.lang.reflect.ParameterizedType p_ptype_4679_line_1387 = ptype;
		Type[] type_factory_1_expr161_line_1387 = p_ptype_4679_line_1387.getActualTypeArguments();
		int PROBE_END_LINE_1387 = 1387;
		// First: what is the actual base type? One odd thing is that 'getRawType'
        // returns Type, not Class<?> as one might expect. But let's assume it is
        // always of type Class: if not, need to add more code to resolve it to Class.        
        Type[] args = type_factory_1_expr161_line_1387;
        int PROBE_START_LINE_1388 = 1388;
		java.lang.reflect.Type[] v_args_4682_line_1388 = args;
		boolean type_factory_1_expr164_line_1388 = v_args_4682_line_1388 == null;
		boolean type_factory_1_expr163_line_1388 = (type_factory_1_expr164_line_1388);
		int q_length_153_line_1388 = 0;
		if (!type_factory_1_expr163_line_1388) {
			java.lang.reflect.Type[] v_args_4682_line_1388_v1 = args;
			q_length_153_line_1388 = v_args_4682_line_1388_v1.length;
		}
		int type_factory_1_expr162_line_1388 = type_factory_1_expr163_line_1388 ? 0 : q_length_153_line_1388;
		int PROBE_END_LINE_1388 = 1388;
		int paramCount = type_factory_1_expr162_line_1388;
        TypeBindings newBindings = null;        

        int PROBE_START_LINE_1391 = 1399;
		int v_param_count_4683_line_1391 = paramCount;
		boolean type_factory_1_expr165_line_1391 = v_param_count_4683_line_1391 == 0;
		int PROBE_END_LINE_1391 = 1399;
		if (type_factory_1_expr165_line_1391) {
            newBindings = EMPTY_BINDINGS;
        } else {
            int PROBE_START_LINE_1394 = 1394;
			int v_param_count_4683_line_1394 = paramCount;
			int PROBE_END_LINE_1394 = 1394;
			JavaType[] pt = new JavaType[v_param_count_4683_line_1394];
            for (int i = 0; true; ++i) {
                int PROBE_START_LINE_1396 = 1396;
				int v_i_4685_line_1395 = i;
				int v_param_count_4683_line_1395 = paramCount;
				boolean type_factory_1_expr168_line_1395 = v_i_4685_line_1395 < v_param_count_4683_line_1395;
				if (!(type_factory_1_expr168_line_1395)) {
					break;
				}
				com.fasterxml.jackson.databind.JavaType[] v_pt_4684_line_1396 = pt;
				int v_i_4685_line_1396 = i;
				com.fasterxml.jackson.databind.type.ClassStack p_context_4678_line_1396 = context;
				java.lang.reflect.Type[] v_args_4682_line_1396 = args;
				int v_i_4685_line_1396_v1 = i;
				java.lang.reflect.Type type_factory_1_expr173_line_1396 = v_args_4682_line_1396[v_i_4685_line_1396_v1];
				com.fasterxml.jackson.databind.type.TypeBindings p_parent_bindings_4680_line_1396 = parentBindings;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr172_line_1396 = _fromAny(
						p_context_4678_line_1396, type_factory_1_expr173_line_1396, p_parent_bindings_4680_line_1396);
				int PROBE_END_LINE_1396 = 1396;
				v_pt_4684_line_1396[v_i_4685_line_1396] = type_factory_1_expr172_line_1396;
            }
            int PROBE_START_LINE_1398 = 1398;
			Class<?> v_raw_type_4681_line_1398 = rawType;
			com.fasterxml.jackson.databind.JavaType[] v_pt_4684_line_1398 = pt;
			com.fasterxml.jackson.databind.type.TypeBindings type_factory_1_expr175_line_1398 = TypeBindings
					.create(v_raw_type_4681_line_1398, v_pt_4684_line_1398);
			int PROBE_END_LINE_1398 = 1398;
			newBindings = type_factory_1_expr175_line_1398;
        }
        int PROBE_START_LINE_1400 = 1400;
		com.fasterxml.jackson.databind.type.ClassStack p_context_4678_line_1400 = context;
		Class<?> v_raw_type_4681_line_1400 = rawType;
		com.fasterxml.jackson.databind.type.TypeBindings v_new_bindings_4686_line_1400 = newBindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr176_line_1400 = _fromClass(p_context_4678_line_1400,
				v_raw_type_4681_line_1400, v_new_bindings_4686_line_1400);
		int PROBE_END_LINE_1400 = 1400;
		return type_factory_1_expr176_line_1400;
    }

    protected JavaType _fromArrayType(ClassStack context, GenericArrayType type, TypeBindings bindings)
    {
        JavaType elementType = _fromAny(context, type.getGenericComponentType(), bindings);
        return ArrayType.construct(elementType, bindings);
    }

    protected JavaType _fromVariable(ClassStack context, TypeVariable<?> var, TypeBindings bindings)
    {
        int PROBE_START_LINE_1412 = 1412;
		TypeVariable<?> p_var_4691_line_1412 = var;
		String type_factory_1_expr177_line_1412 = p_var_4691_line_1412.getName();
		int PROBE_END_LINE_1412 = 1412;
		// ideally should find it via bindings:
        final String name = type_factory_1_expr177_line_1412;
        int PROBE_START_LINE_1413 = 1413;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4692_line_1413 = bindings;
		String v_name_4693_line_1413 = name;
		JavaType type_factory_1_expr178_line_1413 = p_bindings_4692_line_1413.findBoundType(v_name_4693_line_1413);
		int PROBE_END_LINE_1413 = 1413;
		JavaType type = type_factory_1_expr178_line_1413;
        int PROBE_START_LINE_1414 = 1416;
		com.fasterxml.jackson.databind.JavaType v_type_4694_line_1414 = type;
		boolean type_factory_1_expr179_line_1414 = v_type_4694_line_1414 != null;
		int PROBE_END_LINE_1414 = 1416;
		if (type_factory_1_expr179_line_1414) {
            int PROBE_START_LINE_1415 = 1415;
			com.fasterxml.jackson.databind.JavaType v_type_4694_line_1415 = type;
			int PROBE_END_LINE_1415 = 1415;
			return v_type_4694_line_1415;
        }
        int PROBE_START_LINE_1419 = 1421;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4692_line_1419 = bindings;
		String v_name_4693_line_1419 = name;
		boolean type_factory_1_expr180_line_1419 = p_bindings_4692_line_1419.hasUnbound(v_name_4693_line_1419);
		int PROBE_END_LINE_1419 = 1421;
		// but if not, use bounds... note that approach here is simplistic; not taking
        // into account possible multiple bounds, nor consider upper bounds.
        if (type_factory_1_expr180_line_1419) {
            return CORE_TYPE_OBJECT;
        }
        int PROBE_START_LINE_1422 = 1422;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4692_line_1422 = bindings;
		String v_name_4693_line_1422 = name;
		com.fasterxml.jackson.databind.type.TypeBindings type_factory_1_expr182_line_1422 = p_bindings_4692_line_1422
				.withUnboundVariable(v_name_4693_line_1422);
		int PROBE_END_LINE_1422 = 1422;
		bindings = type_factory_1_expr182_line_1422;

        int PROBE_START_LINE_1424 = 1424;
		TypeVariable<?> p_var_4691_line_1424 = var;
		Type[] type_factory_1_expr183_line_1424 = p_var_4691_line_1424.getBounds();
		int PROBE_END_LINE_1424 = 1424;
		Type[] bounds = type_factory_1_expr183_line_1424;
        int PROBE_START_LINE_1425 = 1425;
		com.fasterxml.jackson.databind.type.ClassStack p_context_4690_line_1425 = context;
		java.lang.reflect.Type[] v_bounds_4695_line_1425 = bounds;
		java.lang.reflect.Type type_factory_1_expr185_line_1425 = v_bounds_4695_line_1425[0];
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4692_line_1425 = bindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr184_line_1425 = _fromAny(p_context_4690_line_1425,
				type_factory_1_expr185_line_1425, p_bindings_4692_line_1425);
		int PROBE_END_LINE_1425 = 1425;
		return type_factory_1_expr184_line_1425;
    }

    protected JavaType _fromWildcard(ClassStack context, WildcardType type, TypeBindings bindings)
    {
        int PROBE_START_LINE_1435 = 1435;
		com.fasterxml.jackson.databind.type.ClassStack p_context_4696_line_1435 = context;
		java.lang.reflect.WildcardType p_type_4697_line_1435 = type;
		java.lang.reflect.Type[] type_factory_1_expr188_line_1435 = p_type_4697_line_1435.getUpperBounds();
		java.lang.reflect.Type type_factory_1_expr187_line_1435 = type_factory_1_expr188_line_1435[0];
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4698_line_1435 = bindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr186_line_1435 = _fromAny(p_context_4696_line_1435,
				type_factory_1_expr187_line_1435, p_bindings_4698_line_1435);
		int PROBE_END_LINE_1435 = 1435;
		/* Similar to challenges with TypeVariable, we may have multiple upper bounds.
         * But it is also possible that if upper bound defaults to Object, we might
         * want to consider lower bounds instead.
         * For now, we won't try anything more advanced; above is just for future reference.
         */
        return type_factory_1_expr186_line_1435;
    }
}
