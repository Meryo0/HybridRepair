package com.fasterxml.jackson.databind.type;

import java.util.*;
import java.lang.reflect.*;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

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
@SuppressWarnings({"rawtypes", "unchecked"})
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
    
    /*
    /**********************************************************
    /* Caching
    /**********************************************************
     */

    // // // Let's assume that a small set of core primitive/basic types
    // // // will not be modified, and can be freely shared to streamline
    // // // parts of processing
    
    protected final static SimpleType CORE_TYPE_STRING = new SimpleType(String.class);
    int PROBE_START_LINE_57 = 57;

	protected static final Class<Boolean> q_type_143_line_57 = Boolean.TYPE;

	int PROBE_END_LINE_57 = 57;

	protected final static SimpleType CORE_TYPE_BOOL = new SimpleType(q_type_143_line_57);
    int PROBE_START_LINE_58 = 58;

	protected static final Class<Integer> q_type_143_line_58 = Integer.TYPE;

	int PROBE_END_LINE_58 = 58;

	protected final static SimpleType CORE_TYPE_INT = new SimpleType(q_type_143_line_58);
    int PROBE_START_LINE_59 = 59;

	protected static final Class<Long> q_type_143_line_59 = Long.TYPE;

	int PROBE_END_LINE_59 = 59;

	protected final static SimpleType CORE_TYPE_LONG = new SimpleType(q_type_143_line_59);

    /**
     * Since type resolution can be expensive (specifically when resolving
     * actual generic types), we will use small cache to avoid repetitive
     * resolution of core types
     */
    protected final LRUMap<ClassKey, JavaType> _typeCache = new LRUMap<ClassKey, JavaType>(16, 100);

    /*
     * Looks like construction of {@link JavaType} instances can be
     * a bottleneck, esp. for root-level Maps, so we better do bit
     * of low-level component caching here...
     */
    
    /**
     * Lazily constructed copy of type hierarchy from {@link java.util.HashMap}
     * to its supertypes.
     */
    protected transient HierarchicType _cachedHashMapType;

    /**
     * Lazily constructed copy of type hierarchy from {@link java.util.ArrayList}
     * to its supertypes.
     */
    protected transient HierarchicType _cachedArrayListType;
    
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

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    private TypeFactory() {
        _parser = new TypeParser(this);
        _modifiers = null;
    }

    protected TypeFactory(TypeParser p, TypeModifier[] mods) {
        _parser = p;
        _modifiers = mods;
    }

    public TypeFactory withModifier(TypeModifier mod) 
    {
        if (mod == null) { // mostly for unit tests
            return new TypeFactory(_parser, _modifiers);
        }
        if (_modifiers == null) {
            return new TypeFactory(_parser, new TypeModifier[] { mod });
        }
        return new TypeFactory(_parser, ArrayBuilders.insertInListNoDup(_modifiers, mod));
    }

    /**
     * Method used to access the globally shared instance, which has
     * no custom configuration. Used by <code>ObjectMapper</code> to
     * get the default factory when constructed.
     */
    public static TypeFactory defaultInstance() { int PROBE_START_LINE_132 = 132;
		com.fasterxml.jackson.databind.type.TypeFactory f_instance_4006_line_132 = instance;
		int PROBE_END_LINE_132 = 132;
	return f_instance_4006_line_132; }

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
        // Shouldbe able to optimize bit more in future...
        return defaultInstance().constructType(t).getRawClass();
    }
    
    /*
    /**********************************************************
    /* Type conversion, parameterization resolution methods
    /**********************************************************
     */

    /**
     * Factory method for creating a subtype of given base type, as defined
     * by specified subclass; but retaining generic type information if any.
     * Can be used, for example, to get equivalent of "HashMap&lt;String,Integer>"
     * from "Map&ltString,Integer>" by giving <code>HashMap.class</code>
     * as subclass.
     */
    public JavaType constructSpecializedType(JavaType baseType, Class<?> subclass)
    {
        // simple optimization to avoid costly introspection if type-erased type does NOT differ
        if (baseType.getRawClass() == subclass) {
            return baseType;
        }
        // Currently only SimpleType instances can become something else
        if (baseType instanceof SimpleType) {
            // and only if subclass is an array, Collection or Map
            if (subclass.isArray()
                || Map.class.isAssignableFrom(subclass)
                || Collection.class.isAssignableFrom(subclass)) {
                // need to assert type compatibility...
                if (!baseType.getRawClass().isAssignableFrom(subclass)) {
                    throw new IllegalArgumentException("Class "+subclass.getClass().getName()+" not subtype of "+baseType);
                }
                // this _should_ work, right?
                JavaType subtype = _fromClass(subclass, new TypeBindings(this, baseType.getRawClass()));
                // one more thing: handlers to copy?
                Object h = baseType.getValueHandler();
                if (h != null) {
                    subtype = subtype.withValueHandler(h);
                }
                h = baseType.getTypeHandler();
                if (h != null) {
                    subtype = subtype.withTypeHandler(h);
                }
                return subtype;
            }
        }
        // otherwise regular narrowing should work just fine
        return baseType.narrowBy(subclass);
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
        int PROBE_START_LINE_258 = 267;
		Class<?> p_exp_type_4022_line_258 = expType;
		com.fasterxml.jackson.databind.JavaType p_type_4021_line_258 = type;
		Class<?> type_factory_1_expr14_line_258 = p_type_4021_line_258.getParameterSource();
		boolean type_factory_1_expr13_line_258 = p_exp_type_4022_line_258 == type_factory_1_expr14_line_258;
		int PROBE_END_LINE_258 = 267;
		/* Tricky part here is that some JavaType instances have been constructed
         * from generic type (usually via TypeReference); and in those case
         * types have been resolved. Alternative is that the leaf type is type-erased
         * class, in which case this has not been done.
         * For now simplest way to handle this is to split processing in two: latter
         * case actually fully works; and former mostly works. In future may need to
         * rewrite former part, which requires changes to JavaType as well.
         */
        if (type_factory_1_expr13_line_258) {
            // Direct type info; good since we can return it as is
            int count = type.containedTypeCount();
            if (count == 0) return null;
            JavaType[] result = new JavaType[count];
            for (int i = 0; i < count; ++i) {
                result[i] = type.containedType(i);
            }
            return result;
        }
        int PROBE_START_LINE_274 = 274;
		com.fasterxml.jackson.databind.JavaType p_type_4021_line_274 = type;
		Class<?> type_factory_1_expr15_line_274 = p_type_4021_line_274.getRawClass();
		int PROBE_END_LINE_274 = 274;
		/* Otherwise need to go through type-erased class. This may miss cases where
         * we get generic type; ideally JavaType/SimpleType would retain information
         * about generic declaration at main level... but let's worry about that
         * if/when there are problems; current handling is an improvement over earlier
         * code.
         */
        Class<?> raw = type_factory_1_expr15_line_274;
        int PROBE_START_LINE_275 = 275;
		Class<?> v_raw_4023_line_275 = raw;
		Class<?> p_exp_type_4022_line_275 = expType;
		com.fasterxml.jackson.databind.JavaType p_type_4021_line_275 = type;
		com.fasterxml.jackson.databind.JavaType[] type_factory_1_expr16_line_275 = findTypeParameters(
				v_raw_4023_line_275, p_exp_type_4022_line_275, new TypeBindings(this, p_type_4021_line_275));
		int PROBE_END_LINE_275 = 275;
		return type_factory_1_expr16_line_275;
    }

    public JavaType[] findTypeParameters(Class<?> clz, Class<?> expType) {
        return findTypeParameters(clz, expType, new TypeBindings(this, clz));
    }

    public JavaType[] findTypeParameters(Class<?> clz, Class<?> expType, TypeBindings bindings)
    {
        int PROBE_START_LINE_285 = 285;
		Class<?> p_clz_4026_line_285 = clz;
		Class<?> p_exp_type_4027_line_285 = expType;
		HierarchicType type_factory_1_expr19_line_285 = _findSuperTypeChain(p_clz_4026_line_285,
				p_exp_type_4027_line_285);
		int PROBE_END_LINE_285 = 285;
		// First: find full inheritance chain
        HierarchicType subType = type_factory_1_expr19_line_285;
        int PROBE_START_LINE_287 = 289;
		com.fasterxml.jackson.databind.type.HierarchicType v_sub_type_4029_line_287 = subType;
		boolean type_factory_1_expr20_line_287 = v_sub_type_4029_line_287 == null;
		int PROBE_END_LINE_287 = 289;
		// Caller is supposed to ensure this never happens, so:
        if (type_factory_1_expr20_line_287) {
            throw new IllegalArgumentException("Class "+clz.getName()+" is not a subtype of "+expType.getName());
        }
        int PROBE_START_LINE_291 = 291;
		HierarchicType v_sub_type_4029_line_291 = subType;
		int PROBE_END_LINE_291 = 291;
		// Ok and then go to the ultimate super-type:
        HierarchicType superType = v_sub_type_4029_line_291;
        while (true) {
            int PROBE_START_LINE_292 = 292;
			com.fasterxml.jackson.databind.type.HierarchicType v_super_type_4030_line_292 = superType;
			com.fasterxml.jackson.databind.type.HierarchicType type_factory_1_expr22_line_292 = v_super_type_4030_line_292
					.getSuperType();
			boolean type_factory_1_expr21_line_292 = type_factory_1_expr22_line_292 != null;
			if (!(type_factory_1_expr21_line_292)) {
				break;
			}
			int PROBE_END_LINE_292 = 292;
			int PROBE_START_LINE_293 = 293;
			com.fasterxml.jackson.databind.type.HierarchicType v_super_type_4030_line_293 = superType;
			com.fasterxml.jackson.databind.type.HierarchicType type_factory_1_expr24_line_293 = v_super_type_4030_line_293
					.getSuperType();
			int PROBE_END_LINE_293 = 293;
			superType = type_factory_1_expr24_line_293;
            int PROBE_START_LINE_294 = 294;
			com.fasterxml.jackson.databind.type.HierarchicType v_super_type_4030_line_294 = superType;
			Class<?> type_factory_1_expr25_line_294 = v_super_type_4030_line_294.getRawClass();
			int PROBE_END_LINE_294 = 294;
			Class<?> raw = type_factory_1_expr25_line_294;
            int PROBE_START_LINE_295 = 295;
			Class<?> v_raw_4031_line_295 = raw;
			int PROBE_END_LINE_295 = 295;
			TypeBindings newBindings = new TypeBindings(this, v_raw_4031_line_295);
            int PROBE_START_LINE_296 = 306;
			com.fasterxml.jackson.databind.type.HierarchicType v_super_type_4030_line_296 = superType;
			boolean type_factory_1_expr28_line_296 = v_super_type_4030_line_296.isGeneric();
			int PROBE_END_LINE_296 = 306;
			if (type_factory_1_expr28_line_296) { // got bindings, need to resolve
                int PROBE_START_LINE_297 = 297;
				com.fasterxml.jackson.databind.type.HierarchicType v_super_type_4030_line_297 = superType;
				ParameterizedType type_factory_1_expr29_line_297 = v_super_type_4030_line_297.asGeneric();
				int PROBE_END_LINE_297 = 297;
				ParameterizedType pt = type_factory_1_expr29_line_297;
                int PROBE_START_LINE_298 = 298;
				java.lang.reflect.ParameterizedType v_pt_4033_line_298 = pt;
				Type[] type_factory_1_expr30_line_298 = v_pt_4033_line_298.getActualTypeArguments();
				int PROBE_END_LINE_298 = 298;
				Type[] actualTypes = type_factory_1_expr30_line_298;
                int PROBE_START_LINE_299 = 299;
				Class<?> v_raw_4031_line_299 = raw;
				TypeVariable<?>[] type_factory_1_expr31_line_299 = v_raw_4031_line_299.getTypeParameters();
				int PROBE_END_LINE_299 = 299;
				TypeVariable<?>[] vars = type_factory_1_expr31_line_299;
                int PROBE_START_LINE_300 = 300;
				java.lang.reflect.Type[] v_actual_types_4034_line_300 = actualTypes;
				int q_length_143_line_300 = v_actual_types_4034_line_300.length;
				int PROBE_END_LINE_300 = 300;
				int len = q_length_143_line_300;
                for (int i = 0; true; ++i) {
                    int PROBE_START_LINE_302 = 302;
					int v_i_4037_line_301 = i;
					int v_len_4036_line_301 = len;
					boolean type_factory_1_expr33_line_301 = v_i_4037_line_301 < v_len_4036_line_301;
					if (!(type_factory_1_expr33_line_301)) {
						break;
					}
					TypeVariable<?>[] v_vars_4035_line_302 = vars;
					int v_i_4037_line_302 = i;
					TypeVariable<?> type_factory_1_expr36_line_302 = v_vars_4035_line_302[v_i_4037_line_302];
					String type_factory_1_expr35_line_302 = type_factory_1_expr36_line_302.getName();
					int PROBE_END_LINE_302 = 302;
					String name = type_factory_1_expr35_line_302;
                    int PROBE_START_LINE_303 = 303;
					java.lang.reflect.Type[] v_actual_types_4034_line_303 = actualTypes;
					int v_i_4037_line_303 = i;
					java.lang.reflect.Type type_factory_1_expr38_line_303 = v_actual_types_4034_line_303[v_i_4037_line_303];
					com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4028_line_303 = bindings;
					JavaType type_factory_1_expr37_line_303 = _constructType(type_factory_1_expr38_line_303,
							p_bindings_4028_line_303);
					int PROBE_END_LINE_303 = 303;
					JavaType type = type_factory_1_expr37_line_303;
                    int PROBE_START_LINE_304 = 304;
					com.fasterxml.jackson.databind.type.TypeBindings v_new_bindings_4032_line_304 = newBindings;
					String v_name_4038_line_304 = name;
					com.fasterxml.jackson.databind.JavaType v_type_4039_line_304 = type;
					int PROBE_END_LINE_304 = 304;
					v_new_bindings_4032_line_304.addBinding(v_name_4038_line_304, v_type_4039_line_304);
                }
            }
            int PROBE_START_LINE_307 = 307;
			com.fasterxml.jackson.databind.type.TypeBindings v_new_bindings_4032_line_307 = newBindings;
			int PROBE_END_LINE_307 = 307;
			bindings = v_new_bindings_4032_line_307;
        }

        int PROBE_START_LINE_311 = 313;
		com.fasterxml.jackson.databind.type.HierarchicType v_super_type_4030_line_311 = superType;
		boolean type_factory_1_expr42_line_311 = v_super_type_4030_line_311.isGeneric();
		boolean type_factory_1_expr41_line_311 = !type_factory_1_expr42_line_311;
		int PROBE_END_LINE_311 = 313;
		// which ought to be generic (if not, it's raw type)
        if (type_factory_1_expr41_line_311) {
            return null;
        }
        int PROBE_START_LINE_314 = 314;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4028_line_314 = bindings;
		com.fasterxml.jackson.databind.JavaType[] type_factory_1_expr43_line_314 = p_bindings_4028_line_314
				.typesAsArray();
		int PROBE_END_LINE_314 = 314;
		return type_factory_1_expr43_line_314;
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
        int PROBE_START_LINE_354 = 354;
		java.lang.reflect.Type p_type_4042_line_354 = type;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr44_line_354 = _constructType(p_type_4042_line_354,
				null);
		int PROBE_END_LINE_354 = 354;
		return type_factory_1_expr44_line_354;
    }

    public JavaType constructType(Type type, TypeBindings bindings) {
        int PROBE_START_LINE_358 = 358;
		java.lang.reflect.Type p_type_4043_line_358 = type;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4044_line_358 = bindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr45_line_358 = _constructType(p_type_4043_line_358,
				p_bindings_4044_line_358);
		int PROBE_END_LINE_358 = 358;
		return type_factory_1_expr45_line_358;
    }
    
    public JavaType constructType(TypeReference<?> typeRef) {
        return _constructType(typeRef.getType(), null);
    }
    
    public JavaType constructType(Type type, Class<?> context) {
        TypeBindings b = (context == null) ? null : new TypeBindings(this, context);
        return _constructType(type, b);
    }

    public JavaType constructType(Type type, JavaType context) {
        TypeBindings b = (context == null) ? null : new TypeBindings(this, context);
        return _constructType(type, b);
    }
    
    /**
     * Factory method that can be used if type information is passed
     * as Java typing returned from <code>getGenericXxx</code> methods
     * (usually for a return or argument type).
     */
    protected JavaType _constructType(Type type, TypeBindings context)
    {
        JavaType resultType = null;

        int PROBE_START_LINE_385 = 406;
		java.lang.reflect.Type p_type_4050_line_385 = type;
		boolean type_factory_1_expr46_line_385 = p_type_4050_line_385 instanceof Class<?>;
		int PROBE_END_LINE_385 = 406;
		// simple class?
        if (type_factory_1_expr46_line_385) {
            int PROBE_START_LINE_386 = 386;
			java.lang.reflect.Type p_type_4050_line_386 = type;
			com.fasterxml.jackson.databind.type.TypeBindings p_context_4051_line_386 = context;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr48_line_386 = _fromClass(
					(Class<?>) p_type_4050_line_386, p_context_4051_line_386);
			int PROBE_END_LINE_386 = 386;
			resultType = type_factory_1_expr48_line_386;
        } else {
			int PROBE_START_LINE_389 = 406;
			java.lang.reflect.Type p_type_4050_line_389 = type;
			boolean type_factory_1_expr50_line_389 = p_type_4050_line_389 instanceof ParameterizedType;
			int PROBE_END_LINE_389 = 406;
			if (type_factory_1_expr50_line_389) {
				resultType = _fromParamType((ParameterizedType) type, context);
			} else {
				int PROBE_START_LINE_392 = 406;
				java.lang.reflect.Type p_type_4050_line_392 = type;
				boolean type_factory_1_expr51_line_392 = p_type_4050_line_392 instanceof JavaType;
				int PROBE_END_LINE_392 = 406;
				if (type_factory_1_expr51_line_392) {
					return (JavaType) type;
				} else {
					int PROBE_START_LINE_395 = 406;
					java.lang.reflect.Type p_type_4050_line_395 = type;
					boolean type_factory_1_expr52_line_395 = p_type_4050_line_395 instanceof GenericArrayType;
					int PROBE_END_LINE_395 = 406;
					if (type_factory_1_expr52_line_395) {
						resultType = _fromArrayType((GenericArrayType) type, context);
					} else {
						int PROBE_START_LINE_398 = 406;
						java.lang.reflect.Type p_type_4050_line_398 = type;
						boolean type_factory_1_expr53_line_398 = p_type_4050_line_398 instanceof TypeVariable<?>;
						int PROBE_END_LINE_398 = 406;
						if (type_factory_1_expr53_line_398) {
							int PROBE_START_LINE_399 = 399;
							java.lang.reflect.Type p_type_4050_line_399 = type;
							com.fasterxml.jackson.databind.type.TypeBindings p_context_4051_line_399 = context;
							com.fasterxml.jackson.databind.JavaType type_factory_1_expr55_line_399 = _fromVariable(
									(TypeVariable<?>) p_type_4050_line_399, p_context_4051_line_399);
							int PROBE_END_LINE_399 = 399;
							resultType = type_factory_1_expr55_line_399;
						} else if (type instanceof WildcardType) {
							resultType = _fromWildcard((WildcardType) type, context);
						} else {
							throw new IllegalArgumentException(
									"Unrecognized Type: " + ((type == null) ? "[null]" : type.toString()));
						}
					}
				}
			}
		}
        int PROBE_START_LINE_411 = 415;
		com.fasterxml.jackson.databind.type.TypeModifier[] f__modifiers_4013_line_411 = _modifiers;
		boolean type_factory_1_expr58_line_411 = f__modifiers_4013_line_411 != null;
		boolean type_factory_1_expr59_line_411 = true;
		if (type_factory_1_expr58_line_411) {
			com.fasterxml.jackson.databind.JavaType v_result_type_4052_line_411 = resultType;
			boolean type_factory_1_expr60_line_411 = v_result_type_4052_line_411.isContainerType();
			type_factory_1_expr59_line_411 = !type_factory_1_expr60_line_411;
		}
		boolean type_factory_1_expr57_line_411 = type_factory_1_expr58_line_411 && type_factory_1_expr59_line_411;
		int PROBE_END_LINE_411 = 415;
		/* [JACKSON-521]: Need to allow TypeModifiers to alter actual type; however,
         * for now only call for simple types (i.e. not for arrays, map or collections).
         * Can be changed in future it necessary
         */
        if (type_factory_1_expr57_line_411) {
            for (TypeModifier mod : _modifiers) {
                resultType = mod.modifyType(resultType, type, context, this);
            }
        }
        int PROBE_START_LINE_416 = 416;
		com.fasterxml.jackson.databind.JavaType v_result_type_4052_line_416 = resultType;
		int PROBE_END_LINE_416 = 416;
		return v_result_type_4052_line_416;
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
        return ArrayType.construct(_constructType(elementType, null), null, null);
    }
    
    /**
     * Method for constructing an {@link ArrayType}.
     *<p>
     * NOTE: type modifiers are NOT called on array type itself; but are called
     * for contained types.
     */
    public ArrayType constructArrayType(JavaType elementType) {
        return ArrayType.construct(elementType, null, null);
    }

    /**
     * Method for constructing a {@link CollectionType}.
     *<p>
     * NOTE: type modifiers are NOT called on Collection type itself; but are called
     * for contained types.
     */
    public CollectionType constructCollectionType(Class<? extends Collection> collectionClass, Class<?> elementClass) {
        return CollectionType.construct(collectionClass, constructType(elementClass));
    }
    
    /**
     * Method for constructing a {@link CollectionType}.
     *<p>
     * NOTE: type modifiers are NOT called on Collection type itself; but are called
     * for contained types.
     */
    public CollectionType constructCollectionType(Class<? extends Collection> collectionClass, JavaType elementType) {
        return CollectionType.construct(collectionClass, elementType);
    }

    /**
     * Method for constructing a {@link CollectionLikeType}.
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public CollectionLikeType constructCollectionLikeType(Class<?> collectionClass, Class<?> elementClass) {
        return CollectionLikeType.construct(collectionClass, constructType(elementClass));
    }
    
    /**
     * Method for constructing a {@link CollectionLikeType}.
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public CollectionLikeType constructCollectionLikeType(Class<?> collectionClass, JavaType elementType) {
        return CollectionLikeType.construct(collectionClass, elementType);
    }
    
    /**
     * Method for constructing a {@link MapType} instance
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public MapType constructMapType(Class<? extends Map> mapClass, JavaType keyType, JavaType valueType) {
        return MapType.construct(mapClass, keyType, valueType);
    }

    /**
     * Method for constructing a {@link MapType} instance
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public MapType constructMapType(Class<? extends Map> mapClass, Class<?> keyClass, Class<?> valueClass) {
        return MapType.construct(mapClass, constructType(keyClass), constructType(valueClass));
    }

    /**
     * Method for constructing a {@link MapLikeType} instance
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public MapLikeType constructMapLikeType(Class<?> mapClass, JavaType keyType, JavaType valueType) {
        return MapLikeType.construct(mapClass, keyType, valueType);
    }
    
    /**
     * Method for constructing a {@link MapLikeType} instance
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     */
    public MapLikeType constructMapLikeType(Class<?> mapClass, Class<?> keyClass, Class<?> valueClass) {
        return MapType.construct(mapClass, constructType(keyClass), constructType(valueClass));
    }
    
    /**
     * Method for constructing a type instance with specified parameterization.
     * 
     * @deprecated Since 2.5, use variant that takes one more argument
     */
    @Deprecated
    public JavaType constructSimpleType(Class<?> rawType, JavaType[] parameterTypes) {
        return constructSimpleType(rawType, rawType, parameterTypes);
    }
    
    public JavaType constructSimpleType(Class<?> rawType, Class<?> parameterTarget,
            JavaType[] parameterTypes)
    {
        // Quick sanity check: must match numbers of types with expected...
        TypeVariable<?>[] typeVars = parameterTarget.getTypeParameters();
        if (typeVars.length != parameterTypes.length) {
            throw new IllegalArgumentException("Parameter type mismatch for "+rawType.getName()
                    +" (and target "+parameterTarget.getName()+"): expected "+typeVars.length
                    +" parameters, was given "+parameterTypes.length);
        }
        String[] names = new String[typeVars.length];
        for (int i = 0, len = typeVars.length; i < len; ++i) {
            names[i] = typeVars[i].getName();
        }
        return new SimpleType(rawType, names, parameterTypes, null, null, false, parameterTarget);
    } 

    /**
     * Method that will force construction of a simple type, without trying to
     * check for more specialized types.
     *<p> 
     * NOTE: no type modifiers are called on type either, so calling this method
     * should only be used if caller really knows what it's doing...
     */
    public JavaType uncheckedSimpleType(Class<?> cls) {
        return new SimpleType(cls);
    }
    
    /**
     * Factory method for constructing {@link JavaType} that
     * represents a parameterized type. For example, to represent
     * type <code>List&lt;Set&lt;Integer>></code>, you could
     * call
     *<pre>
     *  TypeFactory.parametricType(List.class, Integer.class);
     *</pre>
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     * 
     * @param parametrized Type-erased type of instance being constructed
     * @param parametersFor class or interface for which type parameters are applied; either
     *   <code>parametrized</code> or one of its supertypes
     * @param parameterClasses Type parameters to apply
     * 
     * @since 2.5
     */
    public JavaType constructParametrizedType(Class<?> parametrized, Class<?> parametersFor,
            Class<?>... parameterClasses)
    {
        int len = parameterClasses.length;
        JavaType[] pt = new JavaType[len];
        for (int i = 0; i < len; ++i) {
            pt[i] = _fromClass(parameterClasses[i], null);
        }
        return constructParametrizedType(parametrized, parametersFor, pt);
    }

    /**
     * @deprecated Since 2.5, use {@link #constructParametrizedType} instead.
     */
    @Deprecated
    public JavaType constructParametricType(Class<?> parametrized, Class<?>... parameterClasses) {
        return constructParametrizedType(parametrized, parametrized, parameterClasses);
    }

    /**
     * Factory method for constructing {@link JavaType} that
     * represents a parameterized type. For example, to represent
     * type <code>List&lt;Set&lt;Integer>></code>, you could
     * call
     *<pre>
     *  JavaType inner = TypeFactory.parametricType(Set.class, Integer.class);
     *  TypeFactory.parametricType(List.class, inner);
     *</pre>
     *<p>
     * NOTE: type modifiers are NOT called on constructed type itself; but are called
     * for contained types.
     * 
     * 
     * @param parametrized Actual full type
     * @param parametersFor class or interface for which type parameters are applied; either
     *   <code>parametrized</code> or one of its supertypes
     * @param parameterTypes Type parameters to apply
     * 
     * @since 2.5
     */
    public JavaType constructParametrizedType(Class<?> parametrized, Class<?> parametersFor,
            JavaType... parameterTypes)
    {
        JavaType resultType;
        
        // Need to check kind of class we are dealing with...
        if (parametrized.isArray()) {
            // 19-Jan-2010, tatus: should we support multi-dimensional arrays directly?
            if (parameterTypes.length != 1) {
                throw new IllegalArgumentException("Need exactly 1 parameter type for arrays ("+parametrized.getName()+")");
            }
            resultType = constructArrayType(parameterTypes[0]);
        }
        else if (Map.class.isAssignableFrom(parametrized)) {
            if (parameterTypes.length != 2) {
                throw new IllegalArgumentException("Need exactly 2 parameter types for Map types ("+parametrized.getName()+")");
            }
            resultType = constructMapType((Class<Map<?,?>>)parametrized, parameterTypes[0], parameterTypes[1]);
        }
        else if (Collection.class.isAssignableFrom(parametrized)) {
            if (parameterTypes.length != 1) {
                throw new IllegalArgumentException("Need exactly 1 parameter type for Collection types ("+parametrized.getName()+")");
            }
            resultType = constructCollectionType((Class<Collection<?>>)parametrized, parameterTypes[0]);
        } else {
            resultType = constructSimpleType(parametrized, parametersFor, parameterTypes);
        }
        return resultType;
    }

    /**
     * @deprecated Since 2.5, use {@link #constructParametrizedType} instead.
     */
    @Deprecated
    public JavaType constructParametricType(Class<?> parametrized, JavaType... parameterTypes) {
        return constructParametrizedType(parametrized, parametrized, parameterTypes);
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
     *<pre>
     *<p>
     * This method should only be used if parameterization is completely unavailable.
     */
    public CollectionType constructRawCollectionType(Class<? extends Collection> collectionClass) {
        return CollectionType.construct(collectionClass, unknownType());
    }

    /**
     * Method that can be used to construct "raw" Collection-like type; meaning that its
     * parameterization is unknown.
     * This is similar to using <code>Object.class</code> parameterization,
     * and is equivalent to calling:
     *<pre>
     *  typeFactory.constructCollectionLikeType(collectionClass, typeFactory.unknownType());
     *<pre>
     *<p>
     * This method should only be used if parameterization is completely unavailable.
     */
    public CollectionLikeType constructRawCollectionLikeType(Class<?> collectionClass) {
        return CollectionLikeType.construct(collectionClass, unknownType());
    }

    /**
     * Method that can be used to construct "raw" Map type; meaning that its
     * parameterization is unknown.
     * This is similar to using <code>Object.class</code> parameterization,
     * and is equivalent to calling:
     *<pre>
     *  typeFactory.constructMapType(collectionClass, typeFactory.unknownType(), typeFactory.unknownType());
     *<pre>
     *<p>
     * This method should only be used if parameterization is completely unavailable.
     */
    public MapType constructRawMapType(Class<? extends Map> mapClass) {
        return MapType.construct(mapClass, unknownType(), unknownType());
    }

    /**
     * Method that can be used to construct "raw" Map-like type; meaning that its
     * parameterization is unknown.
     * This is similar to using <code>Object.class</code> parameterization,
     * and is equivalent to calling:
     *<pre>
     *  typeFactory.constructMapLikeType(collectionClass, typeFactory.unknownType(), typeFactory.unknownType());
     *<pre>
     *<p>
     * This method should only be used if parameterization is completely unavailable.
     */
    public MapLikeType constructRawMapLikeType(Class<?> mapClass) {
        return MapLikeType.construct(mapClass, unknownType(), unknownType());
    }

    /*
    /**********************************************************
    /* Actual factory methods
    /**********************************************************
     */

    /**
     * @param context Mapping of formal parameter declarations (for generic
     *   types) into actual types
     */
    protected JavaType _fromClass(Class<?> clz, TypeBindings context)
    {
        int PROBE_START_LINE_740 = 740;
		Class<?> p_clz_4095_line_740 = clz;
		boolean type_factory_1_expr61_line_740 = p_clz_4095_line_740 == String.class;
		// Very first thing: small set of core types we know well:
        if (type_factory_1_expr61_line_740) {
			com.fasterxml.jackson.databind.type.SimpleType f_core_type_string_4007_line_740 = CORE_TYPE_STRING;
			int PROBE_END_LINE_740 = 740;
			return f_core_type_string_4007_line_740;
		}
        int PROBE_START_LINE_741 = 741;
		Class<?> p_clz_4095_line_741 = clz;
		Class<Boolean> q_type_144_line_741 = Boolean.TYPE;
		boolean type_factory_1_expr63_line_741 = p_clz_4095_line_741 == q_type_144_line_741;
		if (type_factory_1_expr63_line_741) {
			com.fasterxml.jackson.databind.type.SimpleType f_core_type_bool_4008_line_741 = CORE_TYPE_BOOL;
			int PROBE_END_LINE_741 = 741;
			return f_core_type_bool_4008_line_741;
		}
        int PROBE_START_LINE_742 = 742;
		Class<?> p_clz_4095_line_742 = clz;
		Class<Integer> q_type_144_line_742 = Integer.TYPE;
		boolean type_factory_1_expr64_line_742 = p_clz_4095_line_742 == q_type_144_line_742;
		if (type_factory_1_expr64_line_742) {
			com.fasterxml.jackson.databind.type.SimpleType f_core_type_int_4009_line_742 = CORE_TYPE_INT;
			int PROBE_END_LINE_742 = 742;
			return f_core_type_int_4009_line_742;
		}
        int PROBE_START_LINE_743 = 743;
		Class<?> p_clz_4095_line_743 = clz;
		Class<Long> q_type_144_line_743 = Long.TYPE;
		boolean type_factory_1_expr65_line_743 = p_clz_4095_line_743 == q_type_144_line_743;
		if (type_factory_1_expr65_line_743) {
			com.fasterxml.jackson.databind.type.SimpleType f_core_type_long_4010_line_743 = CORE_TYPE_LONG;
			int PROBE_END_LINE_743 = 743;
			return f_core_type_long_4010_line_743;
		}
        
        int PROBE_START_LINE_746 = 746;
		Class<?> p_clz_4095_line_746 = clz;
		int PROBE_END_LINE_746 = 746;
		// Barring that, we may have recently constructed an instance:
        ClassKey key = new ClassKey(p_clz_4095_line_746);
        int PROBE_START_LINE_747 = 747;
		LRUMap<com.fasterxml.jackson.databind.type.ClassKey, com.fasterxml.jackson.databind.JavaType> f__type_cache_4011_line_747 = _typeCache;
		com.fasterxml.jackson.databind.type.ClassKey v_key_4097_line_747 = key;
		JavaType type_factory_1_expr67_line_747 = f__type_cache_4011_line_747.get(v_key_4097_line_747);
		int PROBE_END_LINE_747 = 747;
		JavaType result = type_factory_1_expr67_line_747; // ok, cache object is synced
        int PROBE_START_LINE_748 = 750;
		com.fasterxml.jackson.databind.JavaType v_result_4098_line_748 = result;
		boolean type_factory_1_expr68_line_748 = v_result_4098_line_748 != null;
		int PROBE_END_LINE_748 = 750;
		if (type_factory_1_expr68_line_748) {
            int PROBE_START_LINE_749 = 749;
			com.fasterxml.jackson.databind.JavaType v_result_4098_line_749 = result;
			int PROBE_END_LINE_749 = 749;
			return v_result_4098_line_749;
        }

        // If context was needed, weed do:
        /*
        if (context == null) {
            context = new TypeBindings(this, cls);
        }
        */

        int PROBE_START_LINE_760 = 790;
		Class<?> p_clz_4095_line_760 = clz;
		boolean type_factory_1_expr69_line_760 = p_clz_4095_line_760.isArray();
		int PROBE_END_LINE_760 = 790;
		// First: do we have an array type?
        if (type_factory_1_expr69_line_760) {
            result = ArrayType.construct(_constructType(clz.getComponentType(), null), null, null);
            /* Also: although enums can also be fully resolved, there's little
             * point in doing so (T extends Enum<T>) etc.
             */
        } else {
			int PROBE_START_LINE_765 = 790;
			Class<?> p_clz_4095_line_765 = clz;
			boolean type_factory_1_expr70_line_765 = p_clz_4095_line_765.isEnum();
			int PROBE_END_LINE_765 = 790;
			if (type_factory_1_expr70_line_765) {
				result = new SimpleType(clz);
			} else {
				int PROBE_START_LINE_771 = 790;
				Class<?> p_clz_4095_line_771 = clz;
				boolean type_factory_1_expr71_line_771 = Map.class.isAssignableFrom(p_clz_4095_line_771);
				int PROBE_END_LINE_771 = 790;
				if (type_factory_1_expr71_line_771) {
					result = _mapType(clz);
				} else {
					int PROBE_START_LINE_773 = 790;
					Class<?> p_clz_4095_line_773 = clz;
					boolean type_factory_1_expr73_line_773 = Collection.class.isAssignableFrom(p_clz_4095_line_773);
					int PROBE_END_LINE_773 = 790;
					if (type_factory_1_expr73_line_773) {
						result = _collectionType(clz);
					} else {
						int PROBE_START_LINE_777 = 789;
						Class<?> p_clz_4095_line_777 = clz;
						boolean type_factory_1_expr75_line_777 = Map.Entry.class.isAssignableFrom(p_clz_4095_line_777);
						int PROBE_END_LINE_777 = 789;
						if (type_factory_1_expr75_line_777) {
							JavaType[] pts = this.findTypeParameters(clz, Map.Entry.class);
							JavaType kt, vt;
							if (pts == null || pts.length != 2) {
								kt = vt = unknownType();
							} else {
								kt = pts[0];
								vt = pts[1];
							}
							result = constructSimpleType(clz, Map.Entry.class, new JavaType[]{kt, vt});
						} else {
							int PROBE_START_LINE_788 = 788;
							Class<?> p_clz_4095_line_788 = clz;
							int PROBE_END_LINE_788 = 788;
							result = new SimpleType(p_clz_4095_line_788);
						}
					}
				}
			}
		}
        int PROBE_START_LINE_791 = 791;
		LRUMap<com.fasterxml.jackson.databind.type.ClassKey, com.fasterxml.jackson.databind.JavaType> f__type_cache_4011_line_791 = _typeCache;
		com.fasterxml.jackson.databind.type.ClassKey v_key_4097_line_791 = key;
		com.fasterxml.jackson.databind.JavaType v_result_4098_line_791 = result;
		int PROBE_END_LINE_791 = 791;
		f__type_cache_4011_line_791.put(v_key_4097_line_791, v_result_4098_line_791); // cache object syncs
        int PROBE_START_LINE_792 = 792;
		com.fasterxml.jackson.databind.JavaType v_result_4098_line_792 = result;
		int PROBE_END_LINE_792 = 792;
		return v_result_4098_line_792;
    }
    
    /**
     * Method used by {@link TypeParser} when generics-aware version
     * is constructed.
     */
    protected JavaType _fromParameterizedClass(Class<?> clz, List<JavaType> paramTypes)
    {
        if (clz.isArray()) { // ignore generics (should never have any)
            return ArrayType.construct(_constructType(clz.getComponentType(), null), null, null);
        }
        if (clz.isEnum()) { // ditto for enums
            return new SimpleType(clz);
        }
        if (Map.class.isAssignableFrom(clz)) {
            // First: if we do have param types, use them
            JavaType keyType, contentType;
            if (paramTypes.size() > 0) {
                keyType = paramTypes.get(0);
                contentType = (paramTypes.size() >= 2) ?
                        paramTypes.get(1) : _unknownType();
                return MapType.construct(clz, keyType, contentType);
            }
            return _mapType(clz);
        }
        if (Collection.class.isAssignableFrom(clz)) {
            if (paramTypes.size() >= 1) {
                return CollectionType.construct(clz, paramTypes.get(0));
            }
            return _collectionType(clz);
        }
        if (paramTypes.size() == 0) {
            return new SimpleType(clz);
        }
        // Hmmh. Does this actually occur?
        JavaType[] pt = paramTypes.toArray(new JavaType[paramTypes.size()]);
        return constructSimpleType(clz, clz, pt);
    }
    
    /**
     * This method deals with parameterized types, that is,
     * first class generic classes.
     */
    protected JavaType _fromParamType(ParameterizedType type, TypeBindings context)
    {
        /* First: what is the actual base type? One odd thing
         * is that 'getRawType' returns Type, not Class<?> as
         * one might expect. But let's assume it is always of
         * type Class: if not, need to add more code to resolve
         * it to Class.
         */
        Class<?> rawType = (Class<?>) type.getRawType();
        Type[] args = type.getActualTypeArguments();
        int paramCount = (args == null) ? 0 : args.length;

        JavaType[] pt;
        
        if (paramCount == 0) {
            pt = NO_TYPES;
        } else {
            pt = new JavaType[paramCount];
            for (int i = 0; i < paramCount; ++i) {
                pt[i] = _constructType(args[i], context);
            }
        }

        // Ok: Map or Collection?
        if (Map.class.isAssignableFrom(rawType)) {
            JavaType subtype = constructSimpleType(rawType, rawType, pt);
            JavaType[] mapParams = findTypeParameters(subtype, Map.class);
            if (mapParams.length != 2) {
                throw new IllegalArgumentException("Could not find 2 type parameters for Map class "+rawType.getName()+" (found "+mapParams.length+")");
            }
            return MapType.construct(rawType, mapParams[0], mapParams[1]);
        }
        if (Collection.class.isAssignableFrom(rawType)) {
            JavaType subtype = constructSimpleType(rawType, rawType, pt);
            JavaType[] collectionParams = findTypeParameters(subtype, Collection.class);
            if (collectionParams.length != 1) {
                throw new IllegalArgumentException("Could not find 1 type parameter for Collection class "+rawType.getName()+" (found "+collectionParams.length+")");
            }
            return CollectionType.construct(rawType, collectionParams[0]);
        }
        if (paramCount == 0) { // no generics
            return new SimpleType(rawType);
        }
        return constructSimpleType(rawType, pt);
    }

    
    protected JavaType _fromArrayType(GenericArrayType type, TypeBindings context)
    {
        JavaType compType = _constructType(type.getGenericComponentType(), context);
        return ArrayType.construct(compType, null, null);
    }

    protected JavaType _fromVariable(TypeVariable<?> type, TypeBindings context)
    {
        int PROBE_START_LINE_891 = 891;
		TypeVariable<?> p_type_4105_line_891 = type;
		String type_factory_1_expr80_line_891 = p_type_4105_line_891.getName();
		int PROBE_END_LINE_891 = 891;
		final String name = type_factory_1_expr80_line_891;
        int PROBE_START_LINE_893 = 906;
		com.fasterxml.jackson.databind.type.TypeBindings p_context_4106_line_893 = context;
		boolean type_factory_1_expr81_line_893 = p_context_4106_line_893 == null;
		int PROBE_END_LINE_893 = 906;
		// 19-Mar-2015: Without context, all we can check are bounds.
        if (type_factory_1_expr81_line_893) {
            // And to prevent infinite loops, now need this:
            context = new TypeBindings(this, (Class<?>) null);
        } else {
            int PROBE_START_LINE_902 = 902;
			com.fasterxml.jackson.databind.type.TypeBindings p_context_4106_line_902 = context;
			String v_name_4107_line_902 = name;
			JavaType type_factory_1_expr82_line_902 = p_context_4106_line_902.findType(v_name_4107_line_902, false);
			int PROBE_END_LINE_902 = 902;
			// Ok: here's where context might come in handy!
            /* 19-Mar-2015, tatu: As per [databind#609], may need to allow
             *   unresolved type variables to handle some cases where bounds
             *   are enough. Let's hope it does not hide real fail cases.
             */
            JavaType actualType = type_factory_1_expr82_line_902;
            int PROBE_START_LINE_903 = 905;
			com.fasterxml.jackson.databind.JavaType v_actual_type_4108_line_903 = actualType;
			boolean type_factory_1_expr83_line_903 = v_actual_type_4108_line_903 != null;
			int PROBE_END_LINE_903 = 905;
			if (type_factory_1_expr83_line_903) {
                int PROBE_START_LINE_904 = 904;
				com.fasterxml.jackson.databind.JavaType v_actual_type_4108_line_904 = actualType;
				int PROBE_END_LINE_904 = 904;
				return v_actual_type_4108_line_904;
            }
        }

        /* 29-Jan-2010, tatu: We used to throw exception here, if type was
         *   bound: but the problem is that this can occur for generic "base"
         *   method, overridden by sub-class. If so, we will want to ignore
         *   current type (for method) since it will be masked.
         */
        Type[] bounds = type.getBounds();

        // With type variables we must use bound information.
        // Theoretically this gets tricky, as there may be multiple
        // bounds ("... extends A & B"); and optimally we might
        // want to choose the best match. Also, bounds are optional;
        // but here we are lucky in that implicit "Object" is
        // added as bounds if so.
        // Either way let's just use the first bound, for now, and
        // worry about better match later on if there is need.

        /* 29-Jan-2010, tatu: One more problem are recursive types
         *   (T extends Comparable<T>). Need to add "placeholder"
         *   for resolution to catch those.
         */
        context._addPlaceholder(name);
        return _constructType(bounds[0], context);
    }

    protected JavaType _fromWildcard(WildcardType type, TypeBindings context)
    {
        /* Similar to challenges with TypeVariable, we may have
         * multiple upper bounds. But it is also possible that if
         * upper bound defaults to Object, we might want to consider
         * lower bounds instead.
         *
         * For now, we won't try anything more advanced; above is
         * just for future reference.
         */
        return _constructType(type.getUpperBounds()[0], context);
    }

    private JavaType _mapType(Class<?> rawClass)
    {
        JavaType[] typeParams = findTypeParameters(rawClass, Map.class);
        // ok to have no types ("raw")
        if (typeParams == null) {
            return MapType.construct(rawClass, _unknownType(), _unknownType());
        }
        // but exactly 2 types if any found
        if (typeParams.length != 2) {
            throw new IllegalArgumentException("Strange Map type "+rawClass.getName()+": can not determine type parameters");
        }
        return MapType.construct(rawClass, typeParams[0], typeParams[1]);
    }

    private JavaType _collectionType(Class<?> rawClass)
    {
        JavaType[] typeParams = findTypeParameters(rawClass, Collection.class);
        // ok to have no types ("raw")
        if (typeParams == null) {
            return CollectionType.construct(rawClass, _unknownType());
        }
        // but exactly 2 types if any found
        if (typeParams.length != 1) {
            throw new IllegalArgumentException("Strange Collection type "+rawClass.getName()+": can not determine type parameters");
        }
        return CollectionType.construct(rawClass, typeParams[0]);
    }    

    protected JavaType _resolveVariableViaSubTypes(HierarchicType leafType, String variableName, TypeBindings bindings)
    {
        // can't resolve raw types; possible to have as-of-yet-unbound types too:
        if (leafType != null && leafType.isGeneric()) {
            TypeVariable<?>[] typeVariables = leafType.getRawClass().getTypeParameters();
            for (int i = 0, len = typeVariables.length; i < len; ++i) {
                TypeVariable<?> tv = typeVariables[i];
                if (variableName.equals(tv.getName())) {
                    // further resolution needed?
                    Type type = leafType.asGeneric().getActualTypeArguments()[i];
                    if (type instanceof TypeVariable<?>) {
                        return _resolveVariableViaSubTypes(leafType.getSubType(), ((TypeVariable<?>) type).getName(), bindings);
                    }
                    // no we're good for the variable (but it may have parameterization of its own)
                    return _constructType(type, bindings);
                }
            }
        }
        return _unknownType();
    }
    
    protected JavaType _unknownType() {
        return new SimpleType(Object.class);
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    /**
     * Helper method used to find inheritance (implements, extends) path
     * between given types, if one exists (caller generally checks before
     * calling this method). Returned type represents given <b>subtype</b>,
     * with supertype linkage extending to <b>supertype</b>.
     */
    protected HierarchicType  _findSuperTypeChain(Class<?> subtype, Class<?> supertype)
    {
        int PROBE_START_LINE_1013 = 1015;
		Class<?> p_supertype_4117_line_1013 = supertype;
		boolean type_factory_1_expr84_line_1013 = p_supertype_4117_line_1013.isInterface();
		int PROBE_END_LINE_1013 = 1015;
		// If super-type is a class (not interface), bit simpler
        if (type_factory_1_expr84_line_1013) {
            return _findSuperInterfaceChain(subtype, supertype);
        }
        int PROBE_START_LINE_1016 = 1016;
		Class<?> p_subtype_4116_line_1016 = subtype;
		Class<?> p_supertype_4117_line_1016 = supertype;
		com.fasterxml.jackson.databind.type.HierarchicType type_factory_1_expr85_line_1016 = _findSuperClassChain(
				p_subtype_4116_line_1016, p_supertype_4117_line_1016);
		int PROBE_END_LINE_1016 = 1016;
		return type_factory_1_expr85_line_1016;
    }

    protected HierarchicType _findSuperClassChain(Type currentType, Class<?> target)
    {
        int PROBE_START_LINE_1021 = 1021;
		java.lang.reflect.Type p_current_type_4118_line_1021 = currentType;
		int PROBE_END_LINE_1021 = 1021;
		HierarchicType current = new HierarchicType(p_current_type_4118_line_1021);
        int PROBE_START_LINE_1022 = 1022;
		com.fasterxml.jackson.databind.type.HierarchicType v_current_4120_line_1022 = current;
		Class<?> type_factory_1_expr87_line_1022 = v_current_4120_line_1022.getRawClass();
		int PROBE_END_LINE_1022 = 1022;
		Class<?> raw = type_factory_1_expr87_line_1022;
        int PROBE_START_LINE_1023 = 1025;
		Class<?> v_raw_4121_line_1023 = raw;
		Class<?> p_target_4119_line_1023 = target;
		boolean type_factory_1_expr88_line_1023 = v_raw_4121_line_1023 == p_target_4119_line_1023;
		int PROBE_END_LINE_1023 = 1025;
		if (type_factory_1_expr88_line_1023) {
            int PROBE_START_LINE_1024 = 1024;
			com.fasterxml.jackson.databind.type.HierarchicType v_current_4120_line_1024 = current;
			int PROBE_END_LINE_1024 = 1024;
			return v_current_4120_line_1024;
        }
        int PROBE_START_LINE_1027 = 1027;
		Class<?> v_raw_4121_line_1027 = raw;
		Type type_factory_1_expr89_line_1027 = v_raw_4121_line_1027.getGenericSuperclass();
		int PROBE_END_LINE_1027 = 1027;
		// Otherwise, keep on going down the rat hole...
        Type parent = type_factory_1_expr89_line_1027;
        int PROBE_START_LINE_1028 = 1035;
		java.lang.reflect.Type v_parent_4122_line_1028 = parent;
		boolean type_factory_1_expr90_line_1028 = v_parent_4122_line_1028 != null;
		int PROBE_END_LINE_1028 = 1035;
		if (type_factory_1_expr90_line_1028) {
            int PROBE_START_LINE_1029 = 1029;
			java.lang.reflect.Type v_parent_4122_line_1029 = parent;
			Class<?> p_target_4119_line_1029 = target;
			HierarchicType type_factory_1_expr91_line_1029 = _findSuperClassChain(v_parent_4122_line_1029,
					p_target_4119_line_1029);
			int PROBE_END_LINE_1029 = 1029;
			HierarchicType sup = type_factory_1_expr91_line_1029;
            int PROBE_START_LINE_1030 = 1034;
			com.fasterxml.jackson.databind.type.HierarchicType v_sup_4123_line_1030 = sup;
			boolean type_factory_1_expr92_line_1030 = v_sup_4123_line_1030 != null;
			int PROBE_END_LINE_1030 = 1034;
			if (type_factory_1_expr92_line_1030) {
                int PROBE_START_LINE_1031 = 1031;
				com.fasterxml.jackson.databind.type.HierarchicType v_sup_4123_line_1031 = sup;
				com.fasterxml.jackson.databind.type.HierarchicType v_current_4120_line_1031 = current;
				int PROBE_END_LINE_1031 = 1031;
				v_sup_4123_line_1031.setSubType(v_current_4120_line_1031);
                int PROBE_START_LINE_1032 = 1032;
				com.fasterxml.jackson.databind.type.HierarchicType v_current_4120_line_1032 = current;
				com.fasterxml.jackson.databind.type.HierarchicType v_sup_4123_line_1032 = sup;
				int PROBE_END_LINE_1032 = 1032;
				v_current_4120_line_1032.setSuperType(v_sup_4123_line_1032);
                int PROBE_START_LINE_1033 = 1033;
				com.fasterxml.jackson.databind.type.HierarchicType v_current_4120_line_1033 = current;
				int PROBE_END_LINE_1033 = 1033;
				return v_current_4120_line_1033;
            }
        }
        return null;
    }

    protected HierarchicType _findSuperInterfaceChain(Type currentType, Class<?> target)
    {
        HierarchicType current = new HierarchicType(currentType);
        Class<?> raw = current.getRawClass();
        if (raw == target) {
            return new HierarchicType(currentType);
        }
        // Otherwise, keep on going down the rat hole; first implemented interfaces
        /* 16-Aug-2011, tatu: Minor optimization based on profiled hot spot; let's
         *   try caching certain commonly needed cases
         */
        if (raw == HashMap.class) {
            if (target == Map.class) {
                return _hashMapSuperInterfaceChain(current);
            }
        }
        if (raw == ArrayList.class) {
            if (target == List.class) {
                return _arrayListSuperInterfaceChain(current);
            }
        }
        return _doFindSuperInterfaceChain(current, target);
    }
    
    protected HierarchicType _doFindSuperInterfaceChain(HierarchicType current, Class<?> target)
    {
        Class<?> raw = current.getRawClass();
        Type[] parents = raw.getGenericInterfaces();
        // as long as there are superclasses
        // and unless we have already seen the type (<T extends X<T>>)
        if (parents != null) {
            for (Type parent : parents) {
                HierarchicType sup = _findSuperInterfaceChain(parent, target);
                if (sup != null) {
                    sup.setSubType(current);
                    current.setSuperType(sup);
                    return current;
                }
            }
        }
        // and then super-class if any
        Type parent = raw.getGenericSuperclass();
        if (parent != null) {
            HierarchicType sup = _findSuperInterfaceChain(parent, target);
            if (sup != null) {
                sup.setSubType(current);
                current.setSuperType(sup);
                return current;
            }
        }
        return null;
    }

    protected synchronized HierarchicType _hashMapSuperInterfaceChain(HierarchicType current)
    {
        if (_cachedHashMapType == null) {
            HierarchicType base = current.deepCloneWithoutSubtype();
            _doFindSuperInterfaceChain(base, Map.class);
            _cachedHashMapType = base.getSuperType();
        }
        HierarchicType t = _cachedHashMapType.deepCloneWithoutSubtype();
        current.setSuperType(t);
        t.setSubType(current);
        return current;
    }

    protected synchronized HierarchicType _arrayListSuperInterfaceChain(HierarchicType current)
    {
        if (_cachedArrayListType == null) {
            HierarchicType base = current.deepCloneWithoutSubtype();
            _doFindSuperInterfaceChain(base, List.class);
            _cachedArrayListType = base.getSuperType();
        }
        HierarchicType t = _cachedArrayListType.deepCloneWithoutSubtype();
        current.setSuperType(t);
        t.setSubType(current);
        return current;
    }
}
