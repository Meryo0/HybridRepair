package com.fasterxml.jackson.databind.type;

import java.util.*;
import java.util.concurrent.atomic.AtomicReference;
import java.lang.reflect.*;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.lang.reflect.Type;

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

	private static final Class<Boolean> q_type_33_line_67 = Boolean.TYPE;

	int PROBE_END_LINE_67 = 67;

	private final static Class<?> CLS_BOOL = q_type_33_line_67;
    int PROBE_START_LINE_68 = 68;

	private static final Class<Integer> q_type_33_line_68 = Integer.TYPE;

	int PROBE_END_LINE_68 = 68;

	private final static Class<?> CLS_INT = q_type_33_line_68;
    int PROBE_START_LINE_69 = 69;

	private static final Class<Long> q_type_33_line_69 = Long.TYPE;

	int PROBE_END_LINE_69 = 69;

	private final static Class<?> CLS_LONG = q_type_33_line_69;

    /*
    /**********************************************************
    /* Cached pre-constructed JavaType instances
    /**********************************************************
     */

    int PROBE_START_LINE_78 = 78;

	protected static final Class<?> f_cls_bool_2992_line_78 = CLS_BOOL;

	int PROBE_END_LINE_78 = 78;

	// note: these are primitive, hence no super types
    protected final static SimpleType CORE_TYPE_BOOL = new SimpleType(f_cls_bool_2992_line_78);
    int PROBE_START_LINE_79 = 79;

	protected static final Class<?> f_cls_int_2993_line_79 = CLS_INT;

	int PROBE_END_LINE_79 = 79;

	protected final static SimpleType CORE_TYPE_INT = new SimpleType(f_cls_int_2993_line_79);
    int PROBE_START_LINE_80 = 80;

	protected static final Class<?> f_cls_long_2994_line_80 = CLS_LONG;

	int PROBE_END_LINE_80 = 80;

	protected final static SimpleType CORE_TYPE_LONG = new SimpleType(f_cls_long_2994_line_80);

    int PROBE_START_LINE_83 = 83;

	protected static final Class<?> f_cls_string_2987_line_83 = CLS_STRING;

	int PROBE_END_LINE_83 = 83;

	// and as to String... well, for now, ignore its super types
    protected final static SimpleType CORE_TYPE_STRING = new SimpleType(f_cls_string_2987_line_83);

    int PROBE_START_LINE_86 = 86;

	protected static final Class<?> f_cls_object_2988_line_86 = CLS_OBJECT;

	int PROBE_END_LINE_86 = 86;

	// @since 2.7
    protected final static SimpleType CORE_TYPE_OBJECT = new SimpleType(f_cls_object_2988_line_86);

    int PROBE_START_LINE_88 = 94;

	protected static final Class<?> f_cls_comparable_2989_line_94 = CLS_COMPARABLE;

	int PROBE_END_LINE_88 = 94;

	/**
     * Cache {@link Comparable} because it is both parameteric (relatively costly to
     * resolve) and mostly useless (no special handling), better handle directly
     *
     * @since 2.7
     */
    protected final static SimpleType CORE_TYPE_COMPARABLE = new SimpleType(f_cls_comparable_2989_line_94);

    int PROBE_START_LINE_96 = 102;

	protected static final Class<?> f_cls_enum_2991_line_102 = CLS_ENUM;

	int PROBE_END_LINE_96 = 102;

	/**
     * Cache {@link Enum} because it is parametric AND self-referential (costly to
     * resolve) and useless in itself (no special handling).
     *
     * @since 2.7
     */
    protected final static SimpleType CORE_TYPE_ENUM = new SimpleType(f_cls_enum_2991_line_102);

    int PROBE_START_LINE_104 = 110;

	protected static final Class<?> f_cls_class_2990_line_110 = CLS_CLASS;

	int PROBE_END_LINE_104 = 110;

	/**
     * Cache {@link Class} because it is nominally parametric, but has no really
     * useful information.
     *
     * @since 2.7
     */
    protected final static SimpleType CORE_TYPE_CLASS = new SimpleType(f_cls_class_2990_line_110);

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
		LRUMap<Object, com.fasterxml.jackson.databind.JavaType> p_type_cache_3003_line_152 = typeCache;
		boolean type_factory_1_expr18_line_152 = p_type_cache_3003_line_152 == null;
		int PROBE_END_LINE_152 = 154;
		if (type_factory_1_expr18_line_152) {
            typeCache = new LRUMap<Object,JavaType>(16, 200);
        }
        int PROBE_START_LINE_155 = 155;
		LRUMap<Object, com.fasterxml.jackson.databind.JavaType> p_type_cache_3003_line_155 = typeCache;
		int PROBE_END_LINE_155 = 155;
		_typeCache = p_type_cache_3003_line_155;
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
		com.fasterxml.jackson.databind.type.TypeFactory f_instance_2985_line_211 = instance;
		int PROBE_END_LINE_211 = 211;
	return f_instance_2985_line_211; }

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
        ClassUtil.throwIfRTE(prob);
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
        // simple optimization to avoid costly introspection if type-erased type does NOT differ
        final Class<?> rawBase = baseType.getRawClass();
        if (rawBase == subclass) {
            return baseType;
        }

        JavaType newType;

        // also: if we start from untyped, not much to save
        do { // bogus loop to be able to break
            if (rawBase == Object.class) {
                newType = _fromClass(null, subclass, TypeBindings.emptyBindings());
                break;
            }
            if (!rawBase.isAssignableFrom(subclass)) {
                throw new IllegalArgumentException(String.format(
                        "Class %s not subtype of %s", subclass.getName(), baseType));
            }
            // A few special cases where we can simplify handling:

            // (1) Original target type has no generics -- just resolve subtype
            if (baseType.getBindings().isEmpty()) {
                newType = _fromClass(null, subclass, TypeBindings.emptyBindings());     
                break;
            }
            // (2) A small set of "well-known" List/Map subtypes where can take a short-cut
            if (baseType.isContainerType()) {
                if (baseType.isMapLikeType()) {
                    if ((subclass == HashMap.class)
                            || (subclass == LinkedHashMap.class)
                            || (subclass == EnumMap.class)
                            || (subclass == TreeMap.class)) {
                        newType = _fromClass(null, subclass,
                                TypeBindings.create(subclass, baseType.getKeyType(), baseType.getContentType()));
                        break;
                    }
                } else if (baseType.isCollectionLikeType()) {
                    if ((subclass == ArrayList.class)
                            || (subclass == LinkedList.class)
                            || (subclass == HashSet.class)
                            || (subclass == TreeSet.class)) {
                        newType = _fromClass(null, subclass,
                                TypeBindings.create(subclass, baseType.getContentType()));
                        break;
                    }
                    // 29-Oct-2015, tatu: One further shortcut: there are variants of `EnumSet`,
                    //    but they are impl details and we basically do not care...
                    if (rawBase == EnumSet.class) {
                        return baseType;
                    }
                }
            }
            // (3) Sub-class does not take type parameters -- just resolve subtype
            int typeParamCount = subclass.getTypeParameters().length;
            if (typeParamCount == 0) {
                newType = _fromClass(null, subclass, TypeBindings.emptyBindings());     
                break;
            }
            
            // If not, we'll need to do more thorough forward+backwards resolution. Sigh.

            // 20-Oct-2015, tatu: Container, Map-types somewhat special. There is
            //    a way to fully resolve and merge hierarchies; but that gets expensive
            //    so let's, for now, try to create close-enough approximation that
            //    is not 100% same, structurally, but has equivalent information for
            //    our specific neeeds.
            // 29-Mar-2016, tatu: See [databind#1173]  (and test `TypeResolverTest`)
            //  for a case where this code does get invoked: not ideal
            // 29-Jun-2016, tatu: As to bindings, this works for [databind#1215], but
            //  not certain it would reliably work... but let's hope for best for now
            TypeBindings tb = _bindingsForSubtype(baseType, typeParamCount, subclass);
            if (baseType.isInterface()) {
                newType = baseType.refine(subclass, tb, null, new JavaType[] { baseType });
            } else {
                newType = baseType.refine(subclass, tb, baseType, NO_TYPES);
            }
            // Only SimpleType returns null, but if so just resolve regularly
            if (newType == null) {
                newType = _fromClass(null, subclass, tb);
            }
        } while (false);

        // 25-Sep-2016, tatu: As per [databind#1384] also need to ensure handlers get
        //   copied as well
        newType = newType.withHandlersFrom(baseType);
        return newType;

        // 20-Oct-2015, tatu: Old simplistic approach
        
        /*
        // Currently mostly SimpleType instances can become something else
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
                JavaType subtype = _fromClass(null, subclass, TypeBindings.emptyBindings());
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
        // But there is the need for special case for arrays too, it seems
        if (baseType instanceof ArrayType) {
            if (subclass.isArray()) {
                // actually see if it might be a no-op first:
                ArrayType at = (ArrayType) baseType;
                Class<?> rawComp = subclass.getComponentType();
                if (at.getContentType().getRawClass() == rawComp) {
                    return baseType;
                }
                JavaType componentType = _fromAny(null, rawComp, null);
                return ((ArrayType) baseType).withComponentType(componentType);
            }
        }

        // otherwise regular narrowing should work just fine
        return baseType.narrowBy(subclass);
        */
    }

    private TypeBindings _bindingsForSubtype(JavaType baseType, int typeParamCount, Class<?> subclass)
    {
        // But otherwise gets bit tricky, as we need to partially resolve the type hierarchy
        // (hopefully passing null Class for root is ok)
        int baseCount = baseType.containedTypeCount();
        if (baseCount == typeParamCount) {
            if (typeParamCount == 1) {
                return TypeBindings.create(subclass, baseType.containedType(0));
            }
            if (typeParamCount == 2) {
                return TypeBindings.create(subclass, baseType.containedType(0),
                        baseType.containedType(1));
            }
            List<JavaType> types = new ArrayList<JavaType>(baseCount);
            for (int i = 0; i < baseCount; ++i) {
                types.add(baseType.containedType(i));
            }
            return TypeBindings.create(subclass, types);
        }
        // Otherwise, two choices: match N first, or empty. Do latter, for now
        return TypeBindings.emptyBindings();
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
        int PROBE_START_LINE_616 = 616;
		java.lang.reflect.Type p_type_3039_line_616 = type;
		com.fasterxml.jackson.databind.type.TypeBindings f_empty_bindings_2986_line_616 = EMPTY_BINDINGS;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr27_line_616 = _fromAny(null, p_type_3039_line_616,
				f_empty_bindings_2986_line_616);
		int PROBE_END_LINE_616 = 616;
		return type_factory_1_expr27_line_616;
    }

    public JavaType constructType(Type type, TypeBindings bindings) {
        return _fromAny(null, type, bindings);
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
        List<JavaType> typeParams = bindings.getTypeParameters();
        // ok to have no types ("raw")
        JavaType ct;
        if (typeParams.isEmpty()) {
            ct = _unknownType();
        } else if (typeParams.size() == 1) {
            ct = typeParams.get(0);
        } else {
            throw new IllegalArgumentException("Strange Collection type "+rawClass.getName()+": can not determine type parameters");
        }
        return CollectionType.construct(rawClass, bindings, superClass, superInterfaces, ct);
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
        int PROBE_START_LINE_1118 = 1118;
		Class<?> p_raw_3107_line_1118 = raw;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_3108_line_1118 = bindings;
		com.fasterxml.jackson.databind.JavaType p_super_class_3109_line_1118 = superClass;
		com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_3110_line_1118 = superInterfaces;
		int PROBE_END_LINE_1118 = 1118;
		return new SimpleType(p_raw_3107_line_1118, p_bindings_3108_line_1118, p_super_class_3109_line_1118, p_super_interfaces_3110_line_1118);
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
        int PROBE_START_LINE_1138 = 1145;
		Class<?> p_clz_3111_line_1138 = clz;
		boolean type_factory_1_expr29_line_1138 = p_clz_3111_line_1138.isPrimitive();
		int PROBE_END_LINE_1138 = 1145;
		if (type_factory_1_expr29_line_1138) {
            if (clz == CLS_BOOL) return CORE_TYPE_BOOL;
            if (clz == CLS_INT) return CORE_TYPE_INT;
            if (clz == CLS_LONG) return CORE_TYPE_LONG;
        } else {
            int PROBE_START_LINE_1143 = 1143;
			Class<?> p_clz_3111_line_1143 = clz;
			Class<?> f_cls_string_2987_line_1143 = CLS_STRING;
			boolean type_factory_1_expr30_line_1143 = p_clz_3111_line_1143 == f_cls_string_2987_line_1143;
			if (type_factory_1_expr30_line_1143) {
				com.fasterxml.jackson.databind.type.SimpleType f_core_type_string_2998_line_1143 = CORE_TYPE_STRING;
				int PROBE_END_LINE_1143 = 1143;
				return f_core_type_string_2998_line_1143;
			}
            int PROBE_START_LINE_1144 = 1144;
			Class<?> p_clz_3111_line_1144 = clz;
			Class<?> f_cls_object_2988_line_1144 = CLS_OBJECT;
			boolean type_factory_1_expr31_line_1144 = p_clz_3111_line_1144 == f_cls_object_2988_line_1144;
			if (type_factory_1_expr31_line_1144)
			 {
				com.fasterxml.jackson.databind.type.SimpleType f_core_type_object_2999_line_1144 = CORE_TYPE_OBJECT;
				int PROBE_END_LINE_1144 = 1144;
				return f_core_type_object_2999_line_1144;
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

        int PROBE_START_LINE_1165 = 1188;
		java.lang.reflect.Type p_type_3113_line_1165 = type;
		boolean type_factory_1_expr32_line_1165 = p_type_3113_line_1165 instanceof Class<?>;
		int PROBE_END_LINE_1165 = 1188;
		// simple class?
        if (type_factory_1_expr32_line_1165) {
            int PROBE_START_LINE_1167 = 1167;
			com.fasterxml.jackson.databind.type.ClassStack p_context_3112_line_1167 = context;
			java.lang.reflect.Type p_type_3113_line_1167 = type;
			com.fasterxml.jackson.databind.type.TypeBindings f_empty_bindings_2986_line_1167 = EMPTY_BINDINGS;
			com.fasterxml.jackson.databind.JavaType type_factory_1_expr34_line_1167 = _fromClass(
					p_context_3112_line_1167, (Class<?>) p_type_3113_line_1167, f_empty_bindings_2986_line_1167);
			int PROBE_END_LINE_1167 = 1167;
			// Important: remove possible bindings since this is type-erased thingy
            resultType = type_factory_1_expr34_line_1167;
        }
        // But if not, need to start resolving.
        else if (type instanceof ParameterizedType) {
            resultType = _fromParamType(context, (ParameterizedType) type, bindings);
        }
        else if (type instanceof JavaType) { // [databind#116]
            // no need to modify further if we already had JavaType
            return (JavaType) type;
        }
        else if (type instanceof GenericArrayType) {
            resultType = _fromArrayType(context, (GenericArrayType) type, bindings);
        }
        else if (type instanceof TypeVariable<?>) {
            resultType = _fromVariable(context, (TypeVariable<?>) type, bindings);
        }
        else if (type instanceof WildcardType) {
            resultType = _fromWildcard(context, (WildcardType) type, bindings);
        } else {
            // sanity check
            throw new IllegalArgumentException("Unrecognized Type: "+((type == null) ? "[null]" : type.toString()));
        }
        int PROBE_START_LINE_1192 = 1206;
		com.fasterxml.jackson.databind.type.TypeModifier[] f__modifiers_3006_line_1192 = _modifiers;
		boolean type_factory_1_expr36_line_1192 = f__modifiers_3006_line_1192 != null;
		int PROBE_END_LINE_1192 = 1206;
		/* 21-Feb-2016, nateB/tatu: as per [databind#1129] (applied for 2.7.2),
         *   we do need to let all kinds of types to be refined, esp. for Scala module.
         */
        if (type_factory_1_expr36_line_1192) {
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
        int PROBE_START_LINE_1207 = 1207;
		com.fasterxml.jackson.databind.JavaType v_result_type_3115_line_1207 = resultType;
		int PROBE_END_LINE_1207 = 1207;
		return v_result_type_3115_line_1207;
    }

    /**
     * @param bindings Mapping of formal parameter declarations (for generic
     *   types) into actual types
     */
    protected JavaType _fromClass(ClassStack context, Class<?> rawType, TypeBindings bindings)
    {
        int PROBE_START_LINE_1217 = 1217;
		Class<?> p_raw_type_3117_line_1217 = rawType;
		JavaType type_factory_1_expr37_line_1217 = _findWellKnownSimple(p_raw_type_3117_line_1217);
		int PROBE_END_LINE_1217 = 1217;
		// Very first thing: small set of core types we know well:
        JavaType result = type_factory_1_expr37_line_1217;
        int PROBE_START_LINE_1218 = 1220;
		com.fasterxml.jackson.databind.JavaType v_result_3119_line_1218 = result;
		boolean type_factory_1_expr38_line_1218 = v_result_3119_line_1218 != null;
		int PROBE_END_LINE_1218 = 1220;
		if (type_factory_1_expr38_line_1218) {
            int PROBE_START_LINE_1219 = 1219;
			com.fasterxml.jackson.databind.JavaType v_result_3119_line_1219 = result;
			int PROBE_END_LINE_1219 = 1219;
			return v_result_3119_line_1219;
        }
        // Barring that, we may have recently constructed an instance
        final Object key;
        int PROBE_START_LINE_1223 = 1227;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_3118_line_1223 = bindings;
		boolean type_factory_1_expr41_line_1223 = p_bindings_3118_line_1223 == null;
		boolean type_factory_1_expr40_line_1223 = (type_factory_1_expr41_line_1223);
		boolean type_factory_1_expr42_line_1223 = false;
		if (!type_factory_1_expr40_line_1223) {
			com.fasterxml.jackson.databind.type.TypeBindings p_bindings_3118_line_1223_v1 = bindings;
			type_factory_1_expr42_line_1223 = p_bindings_3118_line_1223_v1.isEmpty();
		}
		boolean type_factory_1_expr39_line_1223 = type_factory_1_expr40_line_1223 || type_factory_1_expr42_line_1223;
		int PROBE_END_LINE_1223 = 1227;
		if (type_factory_1_expr39_line_1223) {
            int PROBE_START_LINE_1224 = 1224;
			Class<?> p_raw_type_3117_line_1224 = rawType;
			int PROBE_END_LINE_1224 = 1224;
			key = p_raw_type_3117_line_1224;
        } else {
            key = bindings.asKey(rawType);
        }
        int PROBE_START_LINE_1228 = 1228;
		LRUMap<Object, com.fasterxml.jackson.databind.JavaType> f__type_cache_3004_line_1228 = _typeCache;
		Object v_key_3120_line_1228 = key;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr45_line_1228 = f__type_cache_3004_line_1228
				.get(v_key_3120_line_1228);
		int PROBE_END_LINE_1228 = 1228;
		result = type_factory_1_expr45_line_1228; // ok, cache object is synced
        int PROBE_START_LINE_1229 = 1231;
		com.fasterxml.jackson.databind.JavaType v_result_3119_line_1229 = result;
		boolean type_factory_1_expr46_line_1229 = v_result_3119_line_1229 != null;
		int PROBE_END_LINE_1229 = 1231;
		if (type_factory_1_expr46_line_1229) {
            return result;
        }

        int PROBE_START_LINE_1234 = 1246;
		com.fasterxml.jackson.databind.type.ClassStack p_context_3116_line_1234 = context;
		boolean type_factory_1_expr47_line_1234 = p_context_3116_line_1234 == null;
		int PROBE_END_LINE_1234 = 1246;
		// 15-Oct-2015, tatu: recursive reference?
        if (type_factory_1_expr47_line_1234) {
            int PROBE_START_LINE_1235 = 1235;
			Class<?> p_raw_type_3117_line_1235 = rawType;
			int PROBE_END_LINE_1235 = 1235;
			context = new ClassStack(p_raw_type_3117_line_1235);
        } else {
            ClassStack prev = context.find(rawType);
            if (prev != null) {
                // Self-reference: needs special handling, then...
                ResolvedRecursiveType selfRef = new ResolvedRecursiveType(rawType, EMPTY_BINDINGS);
                prev.addSelfReference(selfRef);
                return selfRef;
            }
            // no, but need to update context to allow for proper cycle resolution
            context = context.child(rawType);
        }

        int PROBE_START_LINE_1249 = 1288;
		Class<?> p_raw_type_3117_line_1249 = rawType;
		boolean type_factory_1_expr50_line_1249 = p_raw_type_3117_line_1249.isArray();
		int PROBE_END_LINE_1249 = 1288;
		// First: do we have an array type?
        if (type_factory_1_expr50_line_1249) {
            result = ArrayType.construct(_fromAny(context, rawType.getComponentType(), bindings),
                    bindings);
        } else {
            // If not, need to proceed by first resolving parent type hierarchy
            
            JavaType superClass = null;
            JavaType[] superInterfaces = null;

            int PROBE_START_LINE_1258 = 1265;
			Class<?> p_raw_type_3117_line_1258 = rawType;
			boolean type_factory_1_expr51_line_1258 = p_raw_type_3117_line_1258.isInterface();
			int PROBE_END_LINE_1258 = 1265;
			if (type_factory_1_expr51_line_1258) {
                superClass = null;
                superInterfaces = _resolveSuperInterfaces(context, rawType, bindings);
            } else {
                int PROBE_START_LINE_1263 = 1263;
				com.fasterxml.jackson.databind.type.ClassStack p_context_3116_line_1263 = context;
				Class<?> p_raw_type_3117_line_1263 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_3118_line_1263 = bindings;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr53_line_1263 = _resolveSuperClass(
						p_context_3116_line_1263, p_raw_type_3117_line_1263, p_bindings_3118_line_1263);
				int PROBE_END_LINE_1263 = 1263;
				// Note: even Enums can implement interfaces, so can not drop those
                superClass = type_factory_1_expr53_line_1263;
                int PROBE_START_LINE_1264 = 1264;
				com.fasterxml.jackson.databind.type.ClassStack p_context_3116_line_1264 = context;
				Class<?> p_raw_type_3117_line_1264 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_3118_line_1264 = bindings;
				com.fasterxml.jackson.databind.JavaType[] type_factory_1_expr55_line_1264 = _resolveSuperInterfaces(
						p_context_3116_line_1264, p_raw_type_3117_line_1264, p_bindings_3118_line_1264);
				int PROBE_END_LINE_1264 = 1264;
				superInterfaces = type_factory_1_expr55_line_1264;
            }

            int PROBE_START_LINE_1268 = 1276;
			Class<?> p_raw_type_3117_line_1268 = rawType;
			boolean type_factory_1_expr56_line_1268 = p_raw_type_3117_line_1268 == Properties.class;
			int PROBE_END_LINE_1268 = 1276;
			// 19-Oct-2015, tatu: Bit messy, but we need to 'fix' java.util.Properties here...
            if (type_factory_1_expr56_line_1268) {
                result = MapType.construct(rawType, bindings, superClass, superInterfaces,
                        CORE_TYPE_STRING, CORE_TYPE_STRING);
            } else {
				int PROBE_START_LINE_1274 = 1276;
				com.fasterxml.jackson.databind.JavaType v_super_class_3121_line_1274 = superClass;
				boolean type_factory_1_expr58_line_1274 = v_super_class_3121_line_1274 != null;
				int PROBE_END_LINE_1274 = 1276;
				if (type_factory_1_expr58_line_1274) {
					int PROBE_START_LINE_1275 = 1275;
					com.fasterxml.jackson.databind.JavaType v_super_class_3121_line_1275 = superClass;
					Class<?> p_raw_type_3117_line_1275 = rawType;
					com.fasterxml.jackson.databind.type.TypeBindings p_bindings_3118_line_1275 = bindings;
					com.fasterxml.jackson.databind.JavaType v_super_class_3121_line_1275_v1 = superClass;
					com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_3122_line_1275 = superInterfaces;
					com.fasterxml.jackson.databind.JavaType type_factory_1_expr60_line_1275 = v_super_class_3121_line_1275
							.refine(p_raw_type_3117_line_1275, p_bindings_3118_line_1275,
									v_super_class_3121_line_1275_v1, v_super_interfaces_3122_line_1275);
					int PROBE_END_LINE_1275 = 1275;
					result = type_factory_1_expr60_line_1275;
				}
			}
            int PROBE_START_LINE_1278 = 1287;
			com.fasterxml.jackson.databind.JavaType v_result_3119_line_1278 = result;
			boolean type_factory_1_expr61_line_1278 = v_result_3119_line_1278 == null;
			int PROBE_END_LINE_1278 = 1287;
			// if not, perhaps we are now resolving a well-known class or interface?
            if (type_factory_1_expr61_line_1278) {
                int PROBE_START_LINE_1279 = 1279;
				com.fasterxml.jackson.databind.type.ClassStack p_context_3116_line_1279 = context;
				Class<?> p_raw_type_3117_line_1279 = rawType;
				com.fasterxml.jackson.databind.type.TypeBindings p_bindings_3118_line_1279 = bindings;
				com.fasterxml.jackson.databind.JavaType v_super_class_3121_line_1279 = superClass;
				com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_3122_line_1279 = superInterfaces;
				com.fasterxml.jackson.databind.JavaType type_factory_1_expr63_line_1279 = _fromWellKnownClass(
						p_context_3116_line_1279, p_raw_type_3117_line_1279, p_bindings_3118_line_1279,
						v_super_class_3121_line_1279, v_super_interfaces_3122_line_1279);
				int PROBE_END_LINE_1279 = 1279;
				result = type_factory_1_expr63_line_1279; 
                int PROBE_START_LINE_1280 = 1286;
				com.fasterxml.jackson.databind.JavaType v_result_3119_line_1280 = result;
				boolean type_factory_1_expr64_line_1280 = v_result_3119_line_1280 == null;
				int PROBE_END_LINE_1280 = 1286;
				if (type_factory_1_expr64_line_1280) {
                    int PROBE_START_LINE_1281 = 1281;
					com.fasterxml.jackson.databind.type.ClassStack p_context_3116_line_1281 = context;
					Class<?> p_raw_type_3117_line_1281 = rawType;
					com.fasterxml.jackson.databind.type.TypeBindings p_bindings_3118_line_1281 = bindings;
					com.fasterxml.jackson.databind.JavaType v_super_class_3121_line_1281 = superClass;
					com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_3122_line_1281 = superInterfaces;
					com.fasterxml.jackson.databind.JavaType type_factory_1_expr66_line_1281 = _fromWellKnownInterface(
							p_context_3116_line_1281, p_raw_type_3117_line_1281, p_bindings_3118_line_1281,
							v_super_class_3121_line_1281, v_super_interfaces_3122_line_1281);
					int PROBE_END_LINE_1281 = 1281;
					result = type_factory_1_expr66_line_1281;
                    int PROBE_START_LINE_1282 = 1285;
					com.fasterxml.jackson.databind.JavaType v_result_3119_line_1282 = result;
					boolean type_factory_1_expr67_line_1282 = v_result_3119_line_1282 == null;
					int PROBE_END_LINE_1282 = 1285;
					if (type_factory_1_expr67_line_1282) {
                        int PROBE_START_LINE_1284 = 1284;
						Class<?> p_raw_type_3117_line_1284 = rawType;
						com.fasterxml.jackson.databind.type.TypeBindings p_bindings_3118_line_1284 = bindings;
						com.fasterxml.jackson.databind.JavaType v_super_class_3121_line_1284 = superClass;
						com.fasterxml.jackson.databind.JavaType[] v_super_interfaces_3122_line_1284 = superInterfaces;
						com.fasterxml.jackson.databind.JavaType type_factory_1_expr69_line_1284 = _newSimpleType(
								p_raw_type_3117_line_1284, p_bindings_3118_line_1284, v_super_class_3121_line_1284,
								v_super_interfaces_3122_line_1284);
						int PROBE_END_LINE_1284 = 1284;
						// but if nothing else, "simple" class for now:
                        result = type_factory_1_expr69_line_1284;
                    }
                }
            }
        }
        int PROBE_START_LINE_1289 = 1289;
		com.fasterxml.jackson.databind.type.ClassStack p_context_3116_line_1289 = context;
		com.fasterxml.jackson.databind.JavaType v_result_3119_line_1289 = result;
		int PROBE_END_LINE_1289 = 1289;
		p_context_3116_line_1289.resolveSelfReferences(v_result_3119_line_1289);
        int PROBE_START_LINE_1292 = 1294;
		com.fasterxml.jackson.databind.JavaType v_result_3119_line_1292 = result;
		boolean type_factory_1_expr72_line_1292 = v_result_3119_line_1292.hasHandlers();
		boolean type_factory_1_expr71_line_1292 = !type_factory_1_expr72_line_1292;
		int PROBE_END_LINE_1292 = 1294;
		// 16-Jul-2016, tatu: [databind#1302] is solved different way, but ideally we shouldn't
        //     cache anything with partially resolved `ResolvedRecursiveType`... so maybe improve
        if (type_factory_1_expr71_line_1292) {
            int PROBE_START_LINE_1293 = 1293;
			LRUMap<Object, com.fasterxml.jackson.databind.JavaType> f__type_cache_3004_line_1293 = _typeCache;
			Object v_key_3120_line_1293 = key;
			com.fasterxml.jackson.databind.JavaType v_result_3119_line_1293 = result;
			int PROBE_END_LINE_1293 = 1293;
			f__type_cache_3004_line_1293.putIfAbsent(v_key_3120_line_1293, v_result_3119_line_1293); // cache object syncs
        }
        int PROBE_START_LINE_1295 = 1295;
		com.fasterxml.jackson.databind.JavaType v_result_3119_line_1295 = result;
		int PROBE_END_LINE_1295 = 1295;
		return v_result_3119_line_1295;
    }

    protected JavaType _resolveSuperClass(ClassStack context, Class<?> rawType, TypeBindings parentBindings)
    {
        int PROBE_START_LINE_1300 = 1300;
		Class<?> p_raw_type_3124_line_1300 = rawType;
		Type type_factory_1_expr74_line_1300 = ClassUtil.getGenericSuperclass(p_raw_type_3124_line_1300);
		int PROBE_END_LINE_1300 = 1300;
		Type parent = type_factory_1_expr74_line_1300;
        int PROBE_START_LINE_1301 = 1303;
		java.lang.reflect.Type v_parent_3126_line_1301 = parent;
		boolean type_factory_1_expr75_line_1301 = v_parent_3126_line_1301 == null;
		int PROBE_END_LINE_1301 = 1303;
		if (type_factory_1_expr75_line_1301) {
            return null;
        }
        int PROBE_START_LINE_1304 = 1304;
		com.fasterxml.jackson.databind.type.ClassStack p_context_3123_line_1304 = context;
		java.lang.reflect.Type v_parent_3126_line_1304 = parent;
		com.fasterxml.jackson.databind.type.TypeBindings p_parent_bindings_3125_line_1304 = parentBindings;
		com.fasterxml.jackson.databind.JavaType type_factory_1_expr76_line_1304 = _fromAny(p_context_3123_line_1304,
				v_parent_3126_line_1304, p_parent_bindings_3125_line_1304);
		int PROBE_END_LINE_1304 = 1304;
		return type_factory_1_expr76_line_1304;
    }

    protected JavaType[] _resolveSuperInterfaces(ClassStack context, Class<?> rawType, TypeBindings parentBindings)
    {
        int PROBE_START_LINE_1309 = 1309;
		Class<?> p_raw_type_3128_line_1309 = rawType;
		Type[] type_factory_1_expr77_line_1309 = ClassUtil.getGenericInterfaces(p_raw_type_3128_line_1309);
		int PROBE_END_LINE_1309 = 1309;
		Type[] types = type_factory_1_expr77_line_1309;
        int PROBE_START_LINE_1310 = 1312;
		java.lang.reflect.Type[] v_types_3130_line_1310 = types;
		boolean type_factory_1_expr79_line_1310 = v_types_3130_line_1310 == null;
		boolean type_factory_1_expr80_line_1310 = false;
		if (!type_factory_1_expr79_line_1310) {
			java.lang.reflect.Type[] v_types_3130_line_1310_v1 = types;
			int q_length_33_line_1310 = v_types_3130_line_1310_v1.length;
			type_factory_1_expr80_line_1310 = q_length_33_line_1310 == 0;
		}
		boolean type_factory_1_expr78_line_1310 = type_factory_1_expr79_line_1310 || type_factory_1_expr80_line_1310;
		int PROBE_END_LINE_1310 = 1312;
		if (type_factory_1_expr78_line_1310) {
            int PROBE_START_LINE_1311 = 1311;
			com.fasterxml.jackson.databind.JavaType[] f_no_types_2984_line_1311 = NO_TYPES;
			int PROBE_END_LINE_1311 = 1311;
			return f_no_types_2984_line_1311;
        }
        int len = types.length;
        JavaType[] resolved = new JavaType[len];
        for (int i = 0; i < len; ++i) {
            Type type = types[i];
            resolved[i] = _fromAny(context, type, parentBindings);
        }
        return resolved;
    }

    /**
     * Helper class used to check whether exact class for which type is being constructed
     * is one of well-known base interfaces or classes that indicates alternate
     * {@link JavaType} implementation.
     */
    protected JavaType _fromWellKnownClass(ClassStack context, Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces)
    {
        int PROBE_START_LINE_1330 = 1332;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_3133_line_1330 = bindings;
		boolean type_factory_1_expr81_line_1330 = p_bindings_3133_line_1330 == null;
		int PROBE_END_LINE_1330 = 1332;
		if (type_factory_1_expr81_line_1330) {
            bindings = TypeBindings.emptyBindings();
        }
        
        int PROBE_START_LINE_1335 = 1337;
		Class<?> p_raw_type_3132_line_1335 = rawType;
		boolean type_factory_1_expr82_line_1335 = p_raw_type_3132_line_1335 == Map.class;
		int PROBE_END_LINE_1335 = 1337;
		// Quite simple when we resolving exact class/interface; start with that
        if (type_factory_1_expr82_line_1335) {
            return _mapType(rawType, bindings, superClass, superInterfaces);
        }
        int PROBE_START_LINE_1338 = 1340;
		Class<?> p_raw_type_3132_line_1338 = rawType;
		boolean type_factory_1_expr84_line_1338 = p_raw_type_3132_line_1338 == Collection.class;
		int PROBE_END_LINE_1338 = 1340;
		if (type_factory_1_expr84_line_1338) {
            return _collectionType(rawType, bindings, superClass, superInterfaces);
        }
        int PROBE_START_LINE_1342 = 1344;
		Class<?> p_raw_type_3132_line_1342 = rawType;
		boolean type_factory_1_expr86_line_1342 = p_raw_type_3132_line_1342 == AtomicReference.class;
		int PROBE_END_LINE_1342 = 1344;
		// and since 2.6 one referential type
        if (type_factory_1_expr86_line_1342) {
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
        int PROBE_START_LINE_1357 = 1357;
		com.fasterxml.jackson.databind.JavaType[] p_super_interfaces_3140_line_1357 = superInterfaces;
		int q_length_34_line_1357 = p_super_interfaces_3140_line_1357.length;
		int PROBE_END_LINE_1357 = 1357;
		// But that's not all: may be possible current type actually implements an
        // interface type. So...
        final int intCount = q_length_34_line_1357;

        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_1360 = 1360;
			int v_i_3142_line_1359 = i;
			int v_int_count_3141_line_1359 = intCount;
			boolean type_factory_1_expr89_line_1359 = v_i_3142_line_1359 < v_int_count_3141_line_1359;
			if (!(type_factory_1_expr89_line_1359)) {
				break;
			}
			int PROBE_END_LINE_1360 = 1360;
			JavaType result = superInterfaces[i].refine(rawType, bindings, superClass, superInterfaces);
            if (result != null) {
                return result;
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
        // Assumption here is we'll always get Class, not one of other Types
        Class<?> rawType = (Class<?>) ptype.getRawType();

        // 29-Oct-2015, tatu: For performance reasons, let's streamline handling of
        //   couple of not-so-useful parametric types
        if (rawType == CLS_ENUM) {
            return CORE_TYPE_ENUM;
        }
        if (rawType == CLS_COMPARABLE) {
            return CORE_TYPE_COMPARABLE;
        }
        if (rawType == CLS_CLASS) {
            return CORE_TYPE_CLASS;
        }

        // First: what is the actual base type? One odd thing is that 'getRawType'
        // returns Type, not Class<?> as one might expect. But let's assume it is
        // always of type Class: if not, need to add more code to resolve it to Class.        
        Type[] args = ptype.getActualTypeArguments();
        int paramCount = (args == null) ? 0 : args.length;
        JavaType[] pt;
        TypeBindings newBindings;        

        if (paramCount == 0) {
            newBindings = EMPTY_BINDINGS;
        } else {
            pt = new JavaType[paramCount];
            for (int i = 0; i < paramCount; ++i) {
                pt[i] = _fromAny(context, args[i], parentBindings);
            }
            newBindings = TypeBindings.create(rawType, pt);
        }
        return _fromClass(context, rawType, newBindings);
    }

    protected JavaType _fromArrayType(ClassStack context, GenericArrayType type, TypeBindings bindings)
    {
        JavaType elementType = _fromAny(context, type.getGenericComponentType(), bindings);
        return ArrayType.construct(elementType, bindings);
    }

    protected JavaType _fromVariable(ClassStack context, TypeVariable<?> var, TypeBindings bindings)
    {
        // ideally should find it via bindings:
        final String name = var.getName();
        JavaType type = bindings.findBoundType(name);
        if (type != null) {
            return type;
        }
        // but if not, use bounds... note that approach here is simplistic; not taking
        // into account possible multiple bounds, nor consider upper bounds.
        if (bindings.hasUnbound(name)) {
            return CORE_TYPE_OBJECT;
        }
        bindings = bindings.withUnboundVariable(name);

        Type[] bounds = var.getBounds();
        return _fromAny(context, bounds[0], bindings);
    }

    protected JavaType _fromWildcard(ClassStack context, WildcardType type, TypeBindings bindings)
    {
        /* Similar to challenges with TypeVariable, we may have multiple upper bounds.
         * But it is also possible that if upper bound defaults to Object, we might
         * want to consider lower bounds instead.
         * For now, we won't try anything more advanced; above is just for future reference.
         */
        return _fromAny(context, type.getUpperBounds()[0], bindings);
    }
}
