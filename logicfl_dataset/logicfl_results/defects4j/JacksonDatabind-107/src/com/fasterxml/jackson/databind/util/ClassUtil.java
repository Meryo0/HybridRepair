package com.fasterxml.jackson.databind.util;

import java.io.Closeable;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.*;
import java.util.*;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.util.List;
import java.lang.reflect.AccessibleObject;
import java.util.Iterator;
import java.lang.reflect.Type;
import java.util.Collection;
import java.lang.reflect.Member;
import java.lang.reflect.Field;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public final class ClassUtil
{
    private final static Class<?> CLS_OBJECT = Object.class;

    private final static Annotation[] NO_ANNOTATIONS = new Annotation[0];
    private final static Ctor[] NO_CTORS = new Ctor[0];

    int PROBE_START_LINE_23 = 23;

	private static final Iterator<Object> class_util_1_expr4_line_23 = Collections.emptyIterator();

	int PROBE_END_LINE_23 = 23;

	private final static Iterator<?> EMPTY_ITERATOR = class_util_1_expr4_line_23;

    /*
    /**********************************************************
    /* Simple factory methods
    /**********************************************************
     */

    /**
     * @since 2.7
     */
    @SuppressWarnings("unchecked")
    public static <T> Iterator<T> emptyIterator() {
        int PROBE_START_LINE_36 = 36;
		Iterator<?> f_empty_iterator_5878_line_36 = EMPTY_ITERATOR;
		int PROBE_END_LINE_36 = 36;
		return (Iterator<T>) f_empty_iterator_5878_line_36;
    }

    /*
    /**********************************************************
    /* Methods that deal with inheritance
    /**********************************************************
     */

    /**
     * Method that will find all sub-classes and implemented interfaces
     * of a given class or interface. Classes are listed in order of
     * precedence, starting with the immediate super-class, followed by
     * interfaces class directly declares to implemented, and then recursively
     * followed by parent of super-class and so forth.
     * Note that <code>Object.class</code> is not included in the list
     * regardless of whether <code>endBefore</code> argument is defined or not.
     *
     * @param endBefore Super-type to NOT include in results, if any; when
     *    encountered, will be ignored (and no super types are checked).
     *
     * @since 2.7
     */
    public static List<JavaType> findSuperTypes(JavaType type, Class<?> endBefore,
            boolean addClassItself) {
        int PROBE_START_LINE_61 = 63;
				com.fasterxml.jackson.databind.JavaType p_type_5879_line_61 = type;
				boolean class_util_1_expr8_line_61 = p_type_5879_line_61 == null;
				boolean class_util_1_expr7_line_61 = (class_util_1_expr8_line_61);
				boolean class_util_1_expr9_line_61 = false;
				boolean class_util_1_expr10_line_61 = false;
				if (!class_util_1_expr7_line_61) {
					com.fasterxml.jackson.databind.JavaType p_type_5879_line_61_v1 = type;
					Class<?> p_end_before_5880_line_61 = endBefore;
					class_util_1_expr9_line_61 = p_type_5879_line_61_v1.hasRawClass(p_end_before_5880_line_61);
					if (!class_util_1_expr9_line_61) {
						com.fasterxml.jackson.databind.JavaType p_type_5879_line_61_v2 = type;
						class_util_1_expr10_line_61 = p_type_5879_line_61_v2.hasRawClass(Object.class);
					}
				}
				boolean class_util_1_expr6_line_61 = class_util_1_expr7_line_61 || class_util_1_expr9_line_61
						|| class_util_1_expr10_line_61;
				int PROBE_END_LINE_61 = 63;
		if (class_util_1_expr6_line_61) {
            int PROBE_START_LINE_62 = 62;
			List<com.fasterxml.jackson.databind.JavaType> class_util_1_expr12_line_62 = Collections.emptyList();
			int PROBE_END_LINE_62 = 62;
			return class_util_1_expr12_line_62;
        }
        List<JavaType> result = new ArrayList<JavaType>(8);
        int PROBE_START_LINE_65 = 65;
		com.fasterxml.jackson.databind.JavaType p_type_5879_line_65 = type;
		Class<?> p_end_before_5880_line_65 = endBefore;
		List<com.fasterxml.jackson.databind.JavaType> v_result_5882_line_65 = result;
		boolean p_add_class_itself_5881_line_65 = addClassItself;
		int PROBE_END_LINE_65 = 65;
		_addSuperTypes(p_type_5879_line_65, p_end_before_5880_line_65, v_result_5882_line_65, p_add_class_itself_5881_line_65);
        int PROBE_START_LINE_66 = 66;
		List<com.fasterxml.jackson.databind.JavaType> v_result_5882_line_66 = result;
		int PROBE_END_LINE_66 = 66;
		return v_result_5882_line_66;
    }

    /**
     * @since 2.7
     */
    public static List<Class<?>> findRawSuperTypes(Class<?> cls, Class<?> endBefore, boolean addClassItself) {
        if ((cls == null) || (cls == endBefore) || (cls == Object.class)) {
            return Collections.emptyList();
        }
        List<Class<?>> result = new ArrayList<Class<?>>(8);
        _addRawSuperTypes(cls, endBefore, result, addClassItself);
        return result;
    }

    /**
     * Method for finding all super classes (but not super interfaces) of given class,
     * starting with the immediate super class and ending in the most distant one.
     * Class itself is included if <code>addClassItself</code> is true.
     *
     * @since 2.7
     */
    public static List<Class<?>> findSuperClasses(Class<?> cls, Class<?> endBefore,
            boolean addClassItself) {
        List<Class<?>> result = new LinkedList<Class<?>>();
        if ((cls != null) && (cls != endBefore))  {
            if (addClassItself) {
                result.add(cls);
            }
            while ((cls = cls.getSuperclass()) != null) {
                if (cls == endBefore) {
                    break;
                }
                result.add(cls);
            }
        }
        return result;
    }

    @Deprecated // since 2.7
    public static List<Class<?>> findSuperTypes(Class<?> cls, Class<?> endBefore) {
        return findSuperTypes(cls, endBefore, new ArrayList<Class<?>>(8));
    }

    @Deprecated // since 2.7
    public static List<Class<?>> findSuperTypes(Class<?> cls, Class<?> endBefore, List<Class<?>> result) {
        _addRawSuperTypes(cls, endBefore, result, false);
        return result;
    }

    private static void _addSuperTypes(JavaType type, Class<?> endBefore, Collection<JavaType> result,
            boolean addClassItself)
    {
        int PROBE_START_LINE_119 = 121;
		com.fasterxml.jackson.databind.JavaType p_type_5894_line_119 = type;
		boolean class_util_1_expr15_line_119 = p_type_5894_line_119 == null;
		int PROBE_END_LINE_119 = 121;
		if (class_util_1_expr15_line_119) {
            return;
        }
        int PROBE_START_LINE_122 = 122;
		com.fasterxml.jackson.databind.JavaType p_type_5894_line_122 = type;
		Class<?> class_util_1_expr16_line_122 = p_type_5894_line_122.getRawClass();
		int PROBE_END_LINE_122 = 122;
		final Class<?> cls = class_util_1_expr16_line_122;
        int PROBE_START_LINE_123 = 123;
		Class<?> v_cls_5898_line_123 = cls;
		Class<?> p_end_before_5895_line_123 = endBefore;
		boolean class_util_1_expr18_line_123 = v_cls_5898_line_123 == p_end_before_5895_line_123;
		boolean class_util_1_expr19_line_123 = false;
		if (!class_util_1_expr18_line_123) {
			Class<?> v_cls_5898_line_123_v1 = cls;
			class_util_1_expr19_line_123 = v_cls_5898_line_123_v1 == Object.class;
		}
		boolean class_util_1_expr17_line_123 = class_util_1_expr18_line_123 || class_util_1_expr19_line_123;
		int PROBE_END_LINE_123 = 123;
		if (class_util_1_expr17_line_123) { return; }
        int PROBE_START_LINE_124 = 129;
		boolean p_add_class_itself_5897_line_124 = addClassItself;
		int PROBE_END_LINE_124 = 129;
		if (p_add_class_itself_5897_line_124) {
            int PROBE_START_LINE_125 = 127;
			Collection<com.fasterxml.jackson.databind.JavaType> p_result_5896_line_125 = result;
			com.fasterxml.jackson.databind.JavaType p_type_5894_line_125 = type;
			boolean class_util_1_expr21_line_125 = p_result_5896_line_125.contains(p_type_5894_line_125);
			int PROBE_END_LINE_125 = 127;
			if (class_util_1_expr21_line_125) { // already added, no need to check supers
                return;
            }
            int PROBE_START_LINE_128 = 128;
			Collection<com.fasterxml.jackson.databind.JavaType> p_result_5896_line_128 = result;
			com.fasterxml.jackson.databind.JavaType p_type_5894_line_128 = type;
			int PROBE_END_LINE_128 = 128;
			p_result_5896_line_128.add(p_type_5894_line_128);
        }
        int PROBE_START_LINE_130 = 132;
		com.fasterxml.jackson.databind.JavaType p_type_5894_line_130 = type;
		List<com.fasterxml.jackson.databind.JavaType> class_util_1_expr23_line_130 = p_type_5894_line_130
				.getInterfaces();
		int PROBE_END_LINE_130 = 132;
		for (JavaType intCls : class_util_1_expr23_line_130) {
            int PROBE_START_LINE_131 = 131;
			com.fasterxml.jackson.databind.JavaType v_int_cls_5899_line_131 = intCls;
			Class<?> p_end_before_5895_line_131 = endBefore;
			Collection<com.fasterxml.jackson.databind.JavaType> p_result_5896_line_131 = result;
			int PROBE_END_LINE_131 = 131;
			_addSuperTypes(v_int_cls_5899_line_131, p_end_before_5895_line_131, p_result_5896_line_131, true);
        }
        int PROBE_START_LINE_133 = 133;
		com.fasterxml.jackson.databind.JavaType p_type_5894_line_133 = type;
		com.fasterxml.jackson.databind.JavaType class_util_1_expr26_line_133 = p_type_5894_line_133.getSuperClass();
		Class<?> p_end_before_5895_line_133 = endBefore;
		Collection<com.fasterxml.jackson.databind.JavaType> p_result_5896_line_133 = result;
		int PROBE_END_LINE_133 = 133;
		_addSuperTypes(class_util_1_expr26_line_133, p_end_before_5895_line_133, p_result_5896_line_133, true);
    }

    private static void _addRawSuperTypes(Class<?> cls, Class<?> endBefore, Collection<Class<?>> result, boolean addClassItself) {
        if (cls == endBefore || cls == null || cls == Object.class) { return; }
        if (addClassItself) {
            if (result.contains(cls)) { // already added, no need to check supers
                return;
            }
            result.add(cls);
        }
        for (Class<?> intCls : _interfaces(cls)) {
            _addRawSuperTypes(intCls, endBefore, result, true);
        }
        _addRawSuperTypes(cls.getSuperclass(), endBefore, result, true);
    }

    /*
    /**********************************************************
    /* Class type detection methods
    /**********************************************************
     */

    /**
     * @return Null if class might be a bean; type String (that identifies
     *   why it's not a bean) if not
     */
    public static String canBeABeanType(Class<?> type)
    {
        int PROBE_START_LINE_163 = 165;
		Class<?> p_type_5904_line_163 = type;
		boolean class_util_1_expr27_line_163 = p_type_5904_line_163.isAnnotation();
		int PROBE_END_LINE_163 = 165;
		// First: language constructs that ain't beans:
        if (class_util_1_expr27_line_163) {
            return "annotation";
        }
        int PROBE_START_LINE_166 = 168;
		Class<?> p_type_5904_line_166 = type;
		boolean class_util_1_expr28_line_166 = p_type_5904_line_166.isArray();
		int PROBE_END_LINE_166 = 168;
		if (class_util_1_expr28_line_166) {
            return "array";
        }
        int PROBE_START_LINE_169 = 171;
		Class<?> p_type_5904_line_169 = type;
		boolean class_util_1_expr29_line_169 = p_type_5904_line_169.isEnum();
		int PROBE_END_LINE_169 = 171;
		if (class_util_1_expr29_line_169) {
            return "enum";
        }
        int PROBE_START_LINE_172 = 174;
		Class<?> p_type_5904_line_172 = type;
		boolean class_util_1_expr30_line_172 = p_type_5904_line_172.isPrimitive();
		int PROBE_END_LINE_172 = 174;
		if (class_util_1_expr30_line_172) {
            return "primitive";
        }

        // Anything else? Seems valid, then
        return null;
    }
    
    public static String isLocalType(Class<?> type, boolean allowNonStatic)
    {
        /* As per [JACKSON-187], GAE seems to throw SecurityExceptions
         * here and there... and GAE itself has a bug, too
         * (see []). Bah. So we need to catch some wayward exceptions on GAE
         */
        try {
            int PROBE_START_LINE_188 = 190;
			Class<?> p_type_5905_line_188 = type;
			boolean class_util_1_expr31_line_188 = hasEnclosingMethod(p_type_5905_line_188);
			int PROBE_END_LINE_188 = 190;
			// one more: method locals, anonymous, are not good:
            if (class_util_1_expr31_line_188) {
                return "local/anonymous";
            }
            
            int PROBE_START_LINE_196 = 202;
			boolean p_allow_non_static_5906_line_196 = allowNonStatic;
			boolean class_util_1_expr32_line_196 = !p_allow_non_static_5906_line_196;
			int PROBE_END_LINE_196 = 202;
			/* But how about non-static inner classes? Can't construct
             * easily (theoretically, we could try to check if parent
             * happens to be enclosing... but that gets convoluted)
             */
            if (class_util_1_expr32_line_196) {
                if (!Modifier.isStatic(type.getModifiers())) {
                    if (getEnclosingClass(type) != null) {
                        return "non-static member class";
                    }
                }
            }
        }
        catch (SecurityException e) { }
        catch (NullPointerException e) { }
        return null;
    }

    /**
     * Method for finding enclosing class for non-static inner classes
     */
    public static Class<?> getOuterClass(Class<?> type)
    {
        // as above, GAE has some issues...
        try {
            // one more: method locals, anonymous, are not good:
            if (hasEnclosingMethod(type)) {
                return null;
            }
            if (!Modifier.isStatic(type.getModifiers())) {
                return getEnclosingClass(type);
            }
        } catch (SecurityException e) { }
        return null;
    }
    
    
    /**
     * Helper method used to weed out dynamic Proxy types; types that do
     * not expose concrete method API that we could use to figure out
     * automatic Bean (property) based serialization.
     */
    public static boolean isProxyType(Class<?> type)
    {
        int PROBE_START_LINE_242 = 242;
		Class<?> p_type_5909_line_242 = type;
		String class_util_1_expr33_line_242 = p_type_5909_line_242.getName();
		int PROBE_END_LINE_242 = 242;
		// As per [databind#57], should NOT disqualify JDK proxy:
        /*
        // Then: well-known proxy (etc) classes
        if (Proxy.isProxyClass(type)) {
            return true;
        }
        */
        String name = class_util_1_expr33_line_242;
        int PROBE_START_LINE_244 = 247;
		String v_name_5910_line_244 = name;
		boolean class_util_1_expr35_line_244 = v_name_5910_line_244.startsWith("net.sf.cglib.proxy.");
		boolean class_util_1_expr34_line_244 = class_util_1_expr35_line_244 || name.startsWith("org.hibernate.proxy.");
		int PROBE_END_LINE_244 = 247;
		// Hibernate uses proxies heavily as well:
        if (class_util_1_expr34_line_244) {
            return true;
        }
        // Not one of known proxies, nope:
        return false;
    }

    /**
     * Helper method that checks if given class is a concrete one;
     * that is, not an interface or abstract class.
     */
    public static boolean isConcrete(Class<?> type)
    {
        int mod = type.getModifiers();
        return (mod & (Modifier.INTERFACE | Modifier.ABSTRACT)) == 0;
    }

    public static boolean isConcrete(Member member)
    {
        int mod = member.getModifiers();
        return (mod & (Modifier.INTERFACE | Modifier.ABSTRACT)) == 0;
    }
    
    public static boolean isCollectionMapOrArray(Class<?> type)
    {
        if (type.isArray()) return true;
        if (Collection.class.isAssignableFrom(type)) return true;
        if (Map.class.isAssignableFrom(type)) return true;
        return false;
    }

    public static boolean isBogusClass(Class<?> cls) {
        return (cls == Void.class || cls == Void.TYPE
                || cls == com.fasterxml.jackson.databind.annotation.NoClass.class);
    }

    public static boolean isNonStaticInnerClass(Class<?> cls) {
        int PROBE_START_LINE_282 = 283;
		Class<?> p_cls_5915_line_282 = cls;
		int class_util_1_expr39_line_282 = p_cls_5915_line_282.getModifiers();
		boolean class_util_1_expr38_line_282 = Modifier.isStatic(class_util_1_expr39_line_282);
		boolean class_util_1_expr37_line_282 = !class_util_1_expr38_line_282;
		boolean class_util_1_expr36_line_282 = class_util_1_expr37_line_282 && (getEnclosingClass(cls) != null);
		int PROBE_END_LINE_282 = 283;
		return class_util_1_expr36_line_282;
    }

    /**
     * @since 2.7
     */
    public static boolean isObjectOrPrimitive(Class<?> cls) {
        int PROBE_START_LINE_290 = 290;
		Class<?> p_cls_5916_line_290 = cls;
		Class<?> f_cls_object_5875_line_290 = CLS_OBJECT;
		boolean class_util_1_expr42_line_290 = p_cls_5916_line_290 == f_cls_object_5875_line_290;
		boolean class_util_1_expr41_line_290 = (class_util_1_expr42_line_290);
		boolean class_util_1_expr43_line_290 = false;
		if (!class_util_1_expr41_line_290) {
			Class<?> p_cls_5916_line_290_v1 = cls;
			class_util_1_expr43_line_290 = p_cls_5916_line_290_v1.isPrimitive();
		}
		boolean class_util_1_expr40_line_290 = class_util_1_expr41_line_290 || class_util_1_expr43_line_290;
		int PROBE_END_LINE_290 = 290;
		return class_util_1_expr40_line_290;
    }

    /**
     * @since 2.9
     */
    public static boolean hasClass(Object inst, Class<?> raw) {
        // 10-Nov-2016, tatu: Could use `Class.isInstance()` if we didn't care
        //    about being exactly that type
        return (inst != null) && (inst.getClass() == raw);
    }

    /**
     * @since 2.9
     */
    public static void verifyMustOverride(Class<?> expType, Object instance,
            String method)
    {
        if (instance.getClass() != expType) {
            throw new IllegalStateException(String.format(
                    "Sub-class %s (of class %s) must override method '%s'",
                instance.getClass().getName(), expType.getName(), method));
        }
    }

    /*
    /**********************************************************
    /* Method type detection methods
    /**********************************************************
     */

    /**
     * @deprecated Since 2.6 not used; may be removed before 3.x
     */
    @Deprecated // since 2.6
    public static boolean hasGetterSignature(Method m)
    {
        // First: static methods can't be getters
        if (Modifier.isStatic(m.getModifiers())) {
            return false;
        }
        // Must take no args
        Class<?>[] pts = m.getParameterTypes();
        if (pts != null && pts.length != 0) {
            return false;
        }
        // Can't be a void method
        if (Void.TYPE == m.getReturnType()) {
            return false;
        }
        // Otherwise looks ok:
        return true;
    }

    /*
    /**********************************************************
    /* Exception handling; simple re-throw
    /**********************************************************
     */

    /**
     * Helper method that will check if argument is an {@link Error},
     * and if so, (re)throw it; otherwise just return
     *
     * @since 2.9
     */
    public static Throwable throwIfError(Throwable t) {
        int PROBE_START_LINE_357 = 359;
		Throwable p_t_5923_line_357 = t;
		boolean class_util_1_expr44_line_357 = p_t_5923_line_357 instanceof Error;
		int PROBE_END_LINE_357 = 359;
		if (class_util_1_expr44_line_357) {
            throw (Error) t;
        }
        int PROBE_START_LINE_360 = 360;
		Throwable p_t_5923_line_360 = t;
		int PROBE_END_LINE_360 = 360;
		return p_t_5923_line_360;
    }

    /**
     * Helper method that will check if argument is an {@link RuntimeException},
     * and if so, (re)throw it; otherwise just return
     *
     * @since 2.9
     */
    public static Throwable throwIfRTE(Throwable t) {
        int PROBE_START_LINE_370 = 372;
		Throwable p_t_5924_line_370 = t;
		boolean class_util_1_expr45_line_370 = p_t_5924_line_370 instanceof RuntimeException;
		int PROBE_END_LINE_370 = 372;
		if (class_util_1_expr45_line_370) {
            throw (RuntimeException) t;
        }
        int PROBE_START_LINE_373 = 373;
		Throwable p_t_5924_line_373 = t;
		int PROBE_END_LINE_373 = 373;
		return p_t_5924_line_373;
    }

    /**
     * Helper method that will check if argument is an {@link IOException},
     * and if so, (re)throw it; otherwise just return
     *
     * @since 2.9
     */
    public static Throwable throwIfIOE(Throwable t) throws IOException {
        if (t instanceof IOException) {
            throw (IOException) t;
        }
        return t;
    }

    /*
    /**********************************************************
    /* Exception handling; other
    /**********************************************************
     */
    
    /**
     * Method that can be used to find the "root cause", innermost
     * of chained (wrapped) exceptions.
     */
    public static Throwable getRootCause(Throwable t)
    {
        while (true) {
            int PROBE_START_LINE_401 = 401;
			Throwable p_t_5926_line_401 = t;
			Throwable class_util_1_expr47_line_401 = p_t_5926_line_401.getCause();
			boolean class_util_1_expr46_line_401 = class_util_1_expr47_line_401 != null;
			if (!(class_util_1_expr46_line_401)) {
				break;
			}
			int PROBE_END_LINE_401 = 401;
			t = t.getCause();
        }
        int PROBE_START_LINE_404 = 404;
		Throwable p_t_5926_line_404 = t;
		int PROBE_END_LINE_404 = 404;
		return p_t_5926_line_404;
    }

    /**
     * Method that works like by calling {@link #getRootCause} and then
     * either throwing it (if instanceof {@link IOException}), or
     * return.
     *
     * @since 2.8
     */
    public static Throwable throwRootCauseIfIOE(Throwable t) throws IOException {
        return throwIfIOE(getRootCause(t));
    }

    /**
     * Method that will wrap 't' as an {@link IllegalArgumentException} if it
     * is a checked exception; otherwise (runtime exception or error) throw as is
     */
    public static void throwAsIAE(Throwable t) {
        throwAsIAE(t, t.getMessage());
    }

    /**
     * Method that will wrap 't' as an {@link IllegalArgumentException} (and with
     * specified message) if it
     * is a checked exception; otherwise (runtime exception or error) throw as is
     */
    public static void throwAsIAE(Throwable t, String msg)
    {
        throwIfRTE(t);
        throwIfError(t);
        throw new IllegalArgumentException(msg, t);
    }

    /**
     * @since 2.9
     */
    public static <T> T throwAsMappingException(DeserializationContext ctxt,
            IOException e0) throws JsonMappingException {
        if (e0 instanceof JsonMappingException) {
            throw (JsonMappingException) e0;
        }
        JsonMappingException e = JsonMappingException.from(ctxt, e0.getMessage());
        e.initCause(e0);
        throw e;
    }

    /**
     * Method that will locate the innermost exception for given Throwable;
     * and then wrap it as an {@link IllegalArgumentException} if it
     * is a checked exception; otherwise (runtime exception or error) throw as is
     */
    public static void unwrapAndThrowAsIAE(Throwable t)
    {
        throwAsIAE(getRootCause(t));
    }

    /**
     * Method that will locate the innermost exception for given Throwable;
     * and then wrap it as an {@link IllegalArgumentException} if it
     * is a checked exception; otherwise (runtime exception or error) throw as is
     */
    public static void unwrapAndThrowAsIAE(Throwable t, String msg)
    {
        throwAsIAE(getRootCause(t), msg);
    }

    /**
     * Helper method that encapsulate logic in trying to close output generator
     * in case of failure; useful mostly in forcing flush()ing as otherwise
     * error conditions tend to be hard to diagnose. However, it is often the
     * case that output state may be corrupt so we need to be prepared for
     * secondary exception without masking original one.
     *
     * @since 2.8
     */
    public static void closeOnFailAndThrowAsIOE(JsonGenerator g, Exception fail)
        throws IOException
    {
        /* 04-Mar-2014, tatu: Let's try to prevent auto-closing of
         *    structures, which typically causes more damage.
         */
        g.disable(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT);
        try {
            g.close();
        } catch (Exception e) {
            fail.addSuppressed(e);
        }
        throwIfIOE(fail);
        throwIfRTE(fail);
        throw new RuntimeException(fail);
    }

    /**
     * Helper method that encapsulate logic in trying to close given {@link Closeable}
     * in case of failure; useful mostly in forcing flush()ing as otherwise
     * error conditions tend to be hard to diagnose. However, it is often the
     * case that output state may be corrupt so we need to be prepared for
     * secondary exception without masking original one.
     *
     * @since 2.8
     */
    public static void closeOnFailAndThrowAsIOE(JsonGenerator g,
            Closeable toClose, Exception fail)
        throws IOException
    {
        if (g != null) {
            g.disable(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT);
            try {
                g.close();
            } catch (Exception e) {
                fail.addSuppressed(e);
            }
        }
        if (toClose != null) {
            try {
                toClose.close();
            } catch (Exception e) {
                fail.addSuppressed(e);
            }
        }
        throwIfIOE(fail);
        throwIfRTE(fail);
        throw new RuntimeException(fail);
    }

    /*
    /**********************************************************
    /* Instantiation
    /**********************************************************
     */

    /**
     * Method that can be called to try to create an instantiate of
     * specified type. Instantiation is done using default no-argument
     * constructor.
     *
     * @param canFixAccess Whether it is possible to try to change access
     *   rights of the default constructor (in case it is not publicly
     *   accessible) or not.
     *
     * @throws IllegalArgumentException If instantiation fails for any reason;
     *    except for cases where constructor throws an unchecked exception
     *    (which will be passed as is)
     */
    public static <T> T createInstance(Class<T> cls, boolean canFixAccess)
        throws IllegalArgumentException
    {
        int PROBE_START_LINE_552 = 552;
		Class<T> p_cls_5941_line_552 = cls;
		boolean p_can_fix_access_5942_line_552 = canFixAccess;
		Constructor<T> class_util_1_expr48_line_552 = findConstructor(p_cls_5941_line_552,
				p_can_fix_access_5942_line_552);
		int PROBE_END_LINE_552 = 552;
		Constructor<T> ctor = class_util_1_expr48_line_552;
        int PROBE_START_LINE_553 = 555;
		Constructor<T> v_ctor_5943_line_553 = ctor;
		boolean class_util_1_expr49_line_553 = v_ctor_5943_line_553 == null;
		int PROBE_END_LINE_553 = 555;
		if (class_util_1_expr49_line_553) {
            throw new IllegalArgumentException("Class "+cls.getName()+" has no default (no arg) constructor");
        }
        try {
            int PROBE_START_LINE_557 = 557;
			Constructor<T> v_ctor_5943_line_557 = ctor;
			T class_util_1_expr50_line_557 = v_ctor_5943_line_557.newInstance();
			int PROBE_END_LINE_557 = 557;
			return class_util_1_expr50_line_557;
        } catch (Exception e) {
            ClassUtil.unwrapAndThrowAsIAE(e, "Failed to instantiate class "+cls.getName()+", problem: "+e.getMessage());
            return null;
        }
    }

    public static <T> Constructor<T> findConstructor(Class<T> cls, boolean forceAccess)
        throws IllegalArgumentException
    {
        try {
            int PROBE_START_LINE_568 = 568;
			Class<T> p_cls_5944_line_568 = cls;
			Constructor<T> class_util_1_expr51_line_568 = (Constructor<T>) (p_cls_5944_line_568
					.getDeclaredConstructor());
			int PROBE_END_LINE_568 = 568;
			Constructor<T> ctor = class_util_1_expr51_line_568;
            int PROBE_START_LINE_569 = 576;
			boolean p_force_access_5945_line_569 = forceAccess;
			int PROBE_END_LINE_569 = 576;
			if (p_force_access_5945_line_569) {
                checkAndFixAccess(ctor, forceAccess);
            } else {
                int PROBE_START_LINE_573 = 575;
				Constructor<T> v_ctor_5946_line_573 = ctor;
				int class_util_1_expr54_line_573 = v_ctor_5946_line_573.getModifiers();
				boolean class_util_1_expr53_line_573 = Modifier.isPublic(class_util_1_expr54_line_573);
				boolean class_util_1_expr52_line_573 = !class_util_1_expr53_line_573;
				int PROBE_END_LINE_573 = 575;
				// Has to be public...
                if (class_util_1_expr52_line_573) {
                    throw new IllegalArgumentException("Default constructor for "+cls.getName()+" is not accessible (non-public?): not allowed to try modify access via Reflection: cannot instantiate type");
                }
            }
            int PROBE_START_LINE_577 = 577;
			Constructor<T> v_ctor_5946_line_577 = ctor;
			int PROBE_END_LINE_577 = 577;
			return v_ctor_5946_line_577;
        } catch (NoSuchMethodException e) {
            ;
        } catch (Exception e) {
            ClassUtil.unwrapAndThrowAsIAE(e, "Failed to find default constructor of class "+cls.getName()+", problem: "+e.getMessage());
        }
        return null;
    }

    /*
    /**********************************************************
    /* Class name, description access
    /**********************************************************
     */

    /**
     * @since 2.9
     */
    public static Class<?> classOf(Object inst) {
        if (inst == null) {
            return null;
        }
        return inst.getClass();
    }
    
    /**
     * @since 2.9
     */
    public static Class<?> rawClass(JavaType t) {
        if (t == null) {
            return null;
        }
        return t.getRawClass();
    }

    /**
     * @since 2.9
     */
    public static <T> T nonNull(T valueOrNull, T defaultValue) {
        return (valueOrNull == null) ? defaultValue : valueOrNull;
    }

    /**
     * @since 2.9
     */
    public static String nullOrToString(Object value) {
        if (value == null) {
            return null;
        }
        return value.toString();
    }

    /**
     * @since 2.9
     */
    public static String nonNullString(String str) {
        int PROBE_START_LINE_633 = 635;
		String p_str_5952_line_633 = str;
		boolean class_util_1_expr55_line_633 = p_str_5952_line_633 == null;
		int PROBE_END_LINE_633 = 635;
		if (class_util_1_expr55_line_633) {
            return "";
        }
        int PROBE_START_LINE_636 = 636;
		String p_str_5952_line_636 = str;
		int PROBE_END_LINE_636 = 636;
		return p_str_5952_line_636;
    }

    /**
     * Returns either quoted value (with double-quotes) -- if argument non-null
     * String -- or String NULL (no quotes) (if null).
     *
     * @since 2.9
     */
    public static String quotedOr(Object str, String forNull) {
        if (str == null) {
            return forNull;
        }
        return String.format("\"%s\"", str);
    }

    /*
    /**********************************************************
    /* Type name, name, desc handling methods
    /**********************************************************
     */
    
    /**
     * Helper method used to construct appropriate description
     * when passed either type (Class) or an instance; in latter
     * case, class of instance is to be used.
     */
    public static String getClassDescription(Object classOrInstance)
    {
        if (classOrInstance == null) {
            return "unknown";
        }
        Class<?> cls = (classOrInstance instanceof Class<?>) ?
            (Class<?>) classOrInstance : classOrInstance.getClass();
        return nameOf(cls);
    }

    /**
     * Helper method used to construct appropriate description
     * when passed either type (Class) or an instance; in latter
     * case, class of instance is to be used.
     *
     * @since 2.9
     */
    public static String classNameOf(Object inst) {
        if (inst == null) {
            return "[null]";
        }
        return nameOf(inst.getClass());
    }

    /**
     * Returns either `cls.getName()` (if `cls` not null),
     * or "[null]" if `cls` is null.
     *
     * @since 2.9
     */
    public static String nameOf(Class<?> cls) {
        if (cls == null) {
            return "[null]";
        }
        int index = 0;
        while (cls.isArray()) {
            ++index;
            cls = cls.getComponentType();
        }
        String base = cls.isPrimitive() ? cls.getSimpleName() : cls.getName();
        if (index > 0) {
            StringBuilder sb = new StringBuilder(base);
            do {
                sb.append("[]");
            } while (--index > 0);
            base = sb.toString();
        }
        return backticked(base);
    }

    /**
     * Returns either backtick-quoted `named.getName()` (if `named` not null),
     * or "[null]" if `named` is null.
     *
     * @since 2.9
     */
    public static String nameOf(Named named) {
        if (named == null) {
            return "[null]";
        }
        return backticked(named.getName());
    }

    /*
    /**********************************************************
    /* Other escaping, description acces
    /**********************************************************
     */
    
    /**
     * Returns either `text` or [null].
     *
     * @since 2.9
     */
    public static String backticked(String text) {
        if (text == null) {
            return "[null]";
        }
        return new StringBuilder(text.length()+2).append('`').append(text).append('`').toString();
    }

    /**
     * Helper method that returns {@link Throwable#getMessage()} for all other exceptions
     * except for {@link JsonProcessingException}, for which {@code getOriginalMessage()} is
     * returned instead.
     * Method is used to avoid accidentally including trailing location information twice
     * in message when wrapping exceptions.
     *
     * @since 2.9.7
     */
    public static String exceptionMessage(Throwable t) {
        int PROBE_START_LINE_754 = 756;
		Throwable p_t_5960_line_754 = t;
		boolean class_util_1_expr56_line_754 = p_t_5960_line_754 instanceof JsonProcessingException;
		int PROBE_END_LINE_754 = 756;
		if (class_util_1_expr56_line_754) {
            return ((JsonProcessingException) t).getOriginalMessage();
        }
        int PROBE_START_LINE_757 = 757;
		Throwable p_t_5960_line_757 = t;
		String class_util_1_expr57_line_757 = p_t_5960_line_757.getMessage();
		int PROBE_END_LINE_757 = 757;
		return class_util_1_expr57_line_757;
    }
    
    /*
    /**********************************************************
    /* Primitive type support
    /**********************************************************
     */
    
    /**
     * Helper method used to get default value for wrappers used for primitive types
     * (0 for Integer etc)
     */
    public static Object defaultValue(Class<?> cls)
    {
        if (cls == Integer.TYPE) {
            return Integer.valueOf(0);
        }
        if (cls == Long.TYPE) {
            return Long.valueOf(0L);
        }
        if (cls == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (cls == Double.TYPE) {
            return Double.valueOf(0.0);
        }
        if (cls == Float.TYPE) {
            return Float.valueOf(0.0f);
        }
        if (cls == Byte.TYPE) {
            return Byte.valueOf((byte) 0);
        }
        if (cls == Short.TYPE) {
            return Short.valueOf((short) 0);
        }
        if (cls == Character.TYPE) {
            return '\0';
        }
        throw new IllegalArgumentException("Class "+cls.getName()+" is not a primitive type");
    }

    /**
     * Helper method for finding wrapper type for given primitive type (why isn't
     * there one in JDK?)
     */
    public static Class<?> wrapperType(Class<?> primitiveType)
    {
        if (primitiveType == Integer.TYPE) {
            return Integer.class;
        }
        if (primitiveType == Long.TYPE) {
            return Long.class;
        }
        if (primitiveType == Boolean.TYPE) {
            return Boolean.class;
        }
        if (primitiveType == Double.TYPE) {
            return Double.class;
        }
        if (primitiveType == Float.TYPE) {
            return Float.class;
        }
        if (primitiveType == Byte.TYPE) {
            return Byte.class;
        }
        if (primitiveType == Short.TYPE) {
            return Short.class;
        }
        if (primitiveType == Character.TYPE) {
            return Character.class;
        }
        throw new IllegalArgumentException("Class "+primitiveType.getName()+" is not a primitive type");
    }

    /**
     * Method that can be used to find primitive type for given class if (but only if)
     * it is either wrapper type or primitive type; returns `null` if type is neither.
     *
     * @since 2.7
     */
    public static Class<?> primitiveType(Class<?> type)
    {
        if (type.isPrimitive()) {
            return type;
        }
        
        if (type == Integer.class) {
            return Integer.TYPE;
        }
        if (type == Long.class) {
            return Long.TYPE;
        }
        if (type == Boolean.class) {
            return Boolean.TYPE;
        }
        if (type == Double.class) {
            return Double.TYPE;
        }
        if (type == Float.class) {
            return Float.TYPE;
        }
        if (type == Byte.class) {
            return Byte.TYPE;
        }
        if (type == Short.class) {
            return Short.TYPE;
        }
        if (type == Character.class) {
            return Character.TYPE;
        }
        return null;
    }

    /*
    /**********************************************************
    /* Access checking/handling methods
    /**********************************************************
     */

    /**
     * Equivalent to call:
     *<pre>
     *   checkAndFixAccess(member, false);
     *</pre>
     *
     * @deprecated Since 2.7 call variant that takes boolean flag.
     */
    @Deprecated
    public static void checkAndFixAccess(Member member) {
        checkAndFixAccess(member, false);
    }

    /**
     * Method that is called if a {@link Member} may need forced access,
     * to force a field, method or constructor to be accessible: this
     * is done by calling {@link AccessibleObject#setAccessible(boolean)}.
     * 
     * @param member Accessor to call <code>setAccessible()</code> on.
     * @param force Whether to always try to make accessor accessible (true),
     *   or only if needed as per access rights (false)
     *
     * @since 2.7
     */
    public static void checkAndFixAccess(Member member, boolean force)
    {
        int PROBE_START_LINE_904 = 904;
		java.lang.reflect.Member p_member_5965_line_904 = member;
		int PROBE_END_LINE_904 = 904;
		// We know all members are also accessible objects...
        AccessibleObject ao = (AccessibleObject) p_member_5965_line_904;

        /* 14-Jan-2009, tatu: It seems safe and potentially beneficial to
         *   always to make it accessible (latter because it will force
         *   skipping checks we have no use for...), so let's always call it.
         */
        try {
            int PROBE_START_LINE_911 = 915;
			boolean p_force_5966_line_911 = force;
			boolean class_util_1_expr59_line_911 = p_force_5966_line_911 || (!Modifier.isPublic(member.getModifiers())
					|| !Modifier.isPublic(member.getDeclaringClass().getModifiers()));
			int PROBE_END_LINE_911 = 915;
			if (class_util_1_expr59_line_911) {
                int PROBE_START_LINE_914 = 914;
								java.lang.reflect.AccessibleObject v_ao_5967_line_914 = ao;
								int PROBE_END_LINE_914 = 914;
				v_ao_5967_line_914.setAccessible(true);
            }
        } catch (SecurityException se) {
            // 17-Apr-2009, tatu: Related to [JACKSON-101]: this can fail on platforms like
            // Google App Engine); so let's only fail if we really needed it...
            if (!ao.isAccessible()) {
                Class<?> declClass = member.getDeclaringClass();
                throw new IllegalArgumentException("Cannot access "+member+" (from class "+declClass.getName()+"; failed to set access: "+se.getMessage());
            }
        }
    }

    /*
    /**********************************************************
    /* Enum type detection
    /**********************************************************
     */

    /**
     * Helper method that can be used to dynamically figure out
     * enumeration type of given {@link EnumSet}, without having
     * access to its declaration.
     * Code is needed to work around design flaw in JDK.
     */
    public static Class<? extends Enum<?>> findEnumType(EnumSet<?> s)
    {
        // First things first: if not empty, easy to determine
        if (!s.isEmpty()) {
            return findEnumType(s.iterator().next());
        }
        // Otherwise need to locate using an internal field
        return EnumTypeLocator.instance.enumTypeFor(s);
    }

    /**
     * Helper method that can be used to dynamically figure out
     * enumeration type of given {@link EnumSet}, without having
     * access to its declaration.
     * Code is needed to work around design flaw in JDK.
     */
    public static Class<? extends Enum<?>> findEnumType(EnumMap<?,?> m)
    {
        if (!m.isEmpty()) {
            return findEnumType(m.keySet().iterator().next());
        }
        // Otherwise need to locate using an internal field
        return EnumTypeLocator.instance.enumTypeFor(m);
    }

    /**
     * Helper method that can be used to dynamically figure out formal
     * enumeration type (class) for given enumeration. This is either
     * class of enum instance (for "simple" enumerations), or its
     * superclass (for enums with instance fields or methods)
     */
    @SuppressWarnings("unchecked")
    public static Class<? extends Enum<?>> findEnumType(Enum<?> en)
    {
        // enums with "body" are sub-classes of the formal type
    	Class<?> ec = en.getClass();
    	if (ec.getSuperclass() != Enum.class) {
    	    ec = ec.getSuperclass();
    	}
    	return (Class<? extends Enum<?>>) ec;
    }

    /**
     * Helper method that can be used to dynamically figure out formal
     * enumeration type (class) for given class of an enumeration value.
     * This is either class of enum instance (for "simple" enumerations),
     * or its superclass (for enums with instance fields or methods)
     */
    @SuppressWarnings("unchecked")
    public static Class<? extends Enum<?>> findEnumType(Class<?> cls)
    {
        // enums with "body" are sub-classes of the formal type
        if (cls.getSuperclass() != Enum.class) {
            cls = cls.getSuperclass();
        }
        return (Class<? extends Enum<?>>) cls;
    }

    /**
     * A method that will look for the first Enum value annotated with the given Annotation.
     * <p>
     * If there's more than one value annotated, the first one found will be returned. Which one exactly is used is undetermined.
     *
     * @param enumClass The Enum class to scan for a value with the given annotation
     * @param annotationClass The annotation to look for.
     * @return the Enum value annotated with the given Annotation or {@code null} if none is found.
     * @throws IllegalArgumentException if there's a reflection issue accessing the Enum
     * @since 2.8
     */
    public static <T extends Annotation> Enum<?> findFirstAnnotatedEnumValue(Class<Enum<?>> enumClass, Class<T> annotationClass)
    {
        Field[] fields = getDeclaredFields(enumClass);
        for (Field field : fields) {
            if (field.isEnumConstant()) {
                Annotation defaultValueAnnotation = field.getAnnotation(annotationClass);
                if (defaultValueAnnotation != null) {
                    final String name = field.getName();
                    for (Enum<?> enumValue : enumClass.getEnumConstants()) {
                        if (name.equals(enumValue.name())) {
                            return enumValue;
                        }
                    }
                }
            }
        }
        return null;
    }

    /*
    /**********************************************************
    /* Jackson-specific stuff
    /**********************************************************
     */

    /**
     * Method that can be called to determine if given Object is the default
     * implementation Jackson uses; as opposed to a custom serializer installed by
     * a module or calling application. Determination is done using
     * {@link JacksonStdImpl} annotation on handler (serializer, deserializer etc)
     * class.
     *<p>
     * NOTE: passing `null` is legal, and will result in <code>true</code>
     * being returned.
     */
    public static boolean isJacksonStdImpl(Object impl) {
        int PROBE_START_LINE_1043 = 1043;
		Object p_impl_5974_line_1043 = impl;
		boolean class_util_1_expr63_line_1043 = p_impl_5974_line_1043 == null;
		boolean class_util_1_expr62_line_1043 = (class_util_1_expr63_line_1043);
		boolean class_util_1_expr64_line_1043 = false;
		if (!class_util_1_expr62_line_1043) {
			Object p_impl_5974_line_1043_v1 = impl;
			Class<? extends Object> class_util_1_expr65_line_1043 = p_impl_5974_line_1043_v1.getClass();
			class_util_1_expr64_line_1043 = isJacksonStdImpl(class_util_1_expr65_line_1043);
		}
		boolean class_util_1_expr61_line_1043 = class_util_1_expr62_line_1043 || class_util_1_expr64_line_1043;
		int PROBE_END_LINE_1043 = 1043;
		return class_util_1_expr61_line_1043;
    }

    public static boolean isJacksonStdImpl(Class<?> implClass) {
        int PROBE_START_LINE_1047 = 1047;
		Class<?> p_impl_class_5975_line_1047 = implClass;
		com.fasterxml.jackson.databind.annotation.JacksonStdImpl class_util_1_expr68_line_1047 = p_impl_class_5975_line_1047
				.getAnnotation(JacksonStdImpl.class);
		boolean class_util_1_expr67_line_1047 = class_util_1_expr68_line_1047 != null;
		boolean class_util_1_expr66_line_1047 = (class_util_1_expr67_line_1047);
		int PROBE_END_LINE_1047 = 1047;
		return class_util_1_expr66_line_1047;
    }

    /*
    /**********************************************************
    /* Access to various Class definition aspects; possibly
    /* cacheable; and attempts was made in 2.7.0 - 2.7.7; however
    /* unintented retention (~= memory leak) wrt [databind#1363]
    /* resulted in removal of caching
    /**********************************************************
     */

    /**
     * @since 2.7
     */
    public static String getPackageName(Class<?> cls) {
        int PROBE_START_LINE_1063 = 1063;
		Class<?> p_cls_5976_line_1063 = cls;
		Package class_util_1_expr70_line_1063 = p_cls_5976_line_1063.getPackage();
		int PROBE_END_LINE_1063 = 1063;
		Package pkg = class_util_1_expr70_line_1063;
        int PROBE_START_LINE_1064 = 1064;
		Package v_pkg_5977_line_1064 = pkg;
		boolean class_util_1_expr74_line_1064 = v_pkg_5977_line_1064 == null;
		boolean class_util_1_expr72_line_1064 = (class_util_1_expr74_line_1064);
		String class_util_1_expr73_line_1064 = null;
		if (!class_util_1_expr72_line_1064) {
			Package v_pkg_5977_line_1064_v1 = pkg;
			class_util_1_expr73_line_1064 = v_pkg_5977_line_1064_v1.getName();
		}
		String class_util_1_expr71_line_1064 = class_util_1_expr72_line_1064 ? null : class_util_1_expr73_line_1064;
		int PROBE_END_LINE_1064 = 1064;
		return class_util_1_expr71_line_1064;
    }

    /**
     * @since 2.7
     */
    public static boolean hasEnclosingMethod(Class<?> cls) {
        int PROBE_START_LINE_1071 = 1071;
		Class<?> p_cls_5978_line_1071 = cls;
		boolean class_util_1_expr77_line_1071 = isObjectOrPrimitive(p_cls_5978_line_1071);
		boolean class_util_1_expr76_line_1071 = !class_util_1_expr77_line_1071;
		boolean class_util_1_expr78_line_1071 = true;
		if (class_util_1_expr76_line_1071) {
			Class<?> p_cls_5978_line_1071_v1 = cls;
			java.lang.reflect.Method class_util_1_expr80_line_1071 = p_cls_5978_line_1071_v1.getEnclosingMethod();
			boolean class_util_1_expr79_line_1071 = class_util_1_expr80_line_1071 != null;
			class_util_1_expr78_line_1071 = (class_util_1_expr79_line_1071);
		}
		boolean class_util_1_expr75_line_1071 = class_util_1_expr76_line_1071 && class_util_1_expr78_line_1071;
		int PROBE_END_LINE_1071 = 1071;
		return class_util_1_expr75_line_1071;
    }

    /**
     * @since 2.7
     */
    public static Field[] getDeclaredFields(Class<?> cls) {
        int PROBE_START_LINE_1078 = 1078;
		Class<?> p_cls_5979_line_1078 = cls;
		java.lang.reflect.Field[] class_util_1_expr81_line_1078 = p_cls_5979_line_1078.getDeclaredFields();
		int PROBE_END_LINE_1078 = 1078;
		return class_util_1_expr81_line_1078;
    }

    /**
     * @since 2.7
     */
    public static Method[] getDeclaredMethods(Class<?> cls) {
        int PROBE_START_LINE_1085 = 1085;
		Class<?> p_cls_5980_line_1085 = cls;
		java.lang.reflect.Method[] class_util_1_expr82_line_1085 = p_cls_5980_line_1085.getDeclaredMethods();
		int PROBE_END_LINE_1085 = 1085;
		return class_util_1_expr82_line_1085;
    }

    /**
     * @since 2.7
     */
    public static Annotation[] findClassAnnotations(Class<?> cls) {
        int PROBE_START_LINE_1092 = 1094;
		Class<?> p_cls_5981_line_1092 = cls;
		boolean class_util_1_expr83_line_1092 = isObjectOrPrimitive(p_cls_5981_line_1092);
		int PROBE_END_LINE_1092 = 1094;
		if (class_util_1_expr83_line_1092) {
            int PROBE_START_LINE_1093 = 1093;
			java.lang.annotation.Annotation[] f_no_annotations_5876_line_1093 = NO_ANNOTATIONS;
			int PROBE_END_LINE_1093 = 1093;
			return f_no_annotations_5876_line_1093;
        }
        int PROBE_START_LINE_1095 = 1095;
		Class<?> p_cls_5981_line_1095 = cls;
		java.lang.annotation.Annotation[] class_util_1_expr84_line_1095 = p_cls_5981_line_1095.getDeclaredAnnotations();
		int PROBE_END_LINE_1095 = 1095;
		return class_util_1_expr84_line_1095;
    }

    /**
     * Helper method that gets methods declared in given class; usually a simple thing,
     * but sometimes (as per [databind#785]) more complicated, depending on classloader
     * setup.
     *
     * @since 2.9
     */
    public static Method[] getClassMethods(Class<?> cls)
    {
        try {
            int PROBE_START_LINE_1108 = 1108;
			Class<?> p_cls_5982_line_1108 = cls;
			java.lang.reflect.Method[] class_util_1_expr85_line_1108 = ClassUtil
					.getDeclaredMethods(p_cls_5982_line_1108);
			int PROBE_END_LINE_1108 = 1108;
			return class_util_1_expr85_line_1108;
        } catch (final NoClassDefFoundError ex) {
            // One of the methods had a class that was not found in the cls.getClassLoader.
            // Maybe the developer was nice and has a different class loader for this context.
            final ClassLoader loader = Thread.currentThread().getContextClassLoader();
            if (loader == null){
                // Nope... this is going to end poorly
                throw ex;
            }
            final Class<?> contextClass;
            try {
                contextClass = loader.loadClass(cls.getName());
            } catch (ClassNotFoundException e) {
                ex.addSuppressed(e);
                throw ex;
            }
            return contextClass.getDeclaredMethods(); // Cross fingers
        }
    }
    
    /**
     * @since 2.7
     */
    public static Ctor[] getConstructors(Class<?> cls) {
        int PROBE_START_LINE_1134 = 1136;
		Class<?> p_cls_5983_line_1134 = cls;
		boolean class_util_1_expr87_line_1134 = p_cls_5983_line_1134.isInterface();
		boolean class_util_1_expr88_line_1134 = false;
		if (!class_util_1_expr87_line_1134) {
			Class<?> p_cls_5983_line_1134_v1 = cls;
			class_util_1_expr88_line_1134 = isObjectOrPrimitive(p_cls_5983_line_1134_v1);
		}
		boolean class_util_1_expr86_line_1134 = class_util_1_expr87_line_1134 || class_util_1_expr88_line_1134;
		int PROBE_END_LINE_1134 = 1136;
		// Note: can NOT skip abstract classes as they may be used with mix-ins
        // and for regular use shouldn't really matter.
        if (class_util_1_expr86_line_1134) {
            return NO_CTORS;
        }
        int PROBE_START_LINE_1137 = 1137;
		Class<?> p_cls_5983_line_1137 = cls;
		Constructor<?>[] class_util_1_expr89_line_1137 = p_cls_5983_line_1137.getDeclaredConstructors();
		int PROBE_END_LINE_1137 = 1137;
		Constructor<?>[] rawCtors = class_util_1_expr89_line_1137;
        int PROBE_START_LINE_1138 = 1138;
		Constructor<?>[] v_raw_ctors_5984_line_1138 = rawCtors;
		int q_length_204_line_1138 = v_raw_ctors_5984_line_1138.length;
		int PROBE_END_LINE_1138 = 1138;
		final int len = q_length_204_line_1138;
        int PROBE_START_LINE_1139 = 1139;
		int v_len_5985_line_1139 = len;
		int PROBE_END_LINE_1139 = 1139;
		Ctor[] result = new Ctor[v_len_5985_line_1139];
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_1141 = 1141;
			int v_i_5987_line_1140 = i;
			int v_len_5985_line_1140 = len;
			boolean class_util_1_expr92_line_1140 = v_i_5987_line_1140 < v_len_5985_line_1140;
			if (!(class_util_1_expr92_line_1140)) {
				break;
			}
			com.fasterxml.jackson.databind.util.ClassUtil.Ctor[] v_result_5986_line_1141 = result;
			int v_i_5987_line_1141 = i;
			Constructor<?>[] v_raw_ctors_5984_line_1141 = rawCtors;
			int v_i_5987_line_1141_v1 = i;
			Constructor<?> class_util_1_expr97_line_1141 = v_raw_ctors_5984_line_1141[v_i_5987_line_1141_v1];
			int PROBE_END_LINE_1141 = 1141;
			v_result_5986_line_1141[v_i_5987_line_1141] = new Ctor(class_util_1_expr97_line_1141);
        }
        int PROBE_START_LINE_1143 = 1143;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor[] v_result_5986_line_1143 = result;
		int PROBE_END_LINE_1143 = 1143;
		return v_result_5986_line_1143;
    }

    // // // Then methods that do NOT cache access but were considered
    // // // (and could be added to do caching if it was proven effective)

    /**
     * @since 2.7
     */
    public static Class<?> getDeclaringClass(Class<?> cls) {
        return isObjectOrPrimitive(cls) ? null : cls.getDeclaringClass();
    }

    /**
     * @since 2.7
     */
    public static Type getGenericSuperclass(Class<?> cls) {
        int PROBE_START_LINE_1160 = 1160;
		Class<?> p_cls_5989_line_1160 = cls;
		java.lang.reflect.Type class_util_1_expr98_line_1160 = p_cls_5989_line_1160.getGenericSuperclass();
		int PROBE_END_LINE_1160 = 1160;
		return class_util_1_expr98_line_1160;
    }

    /**
     * @since 2.7
     */
    public static Type[] getGenericInterfaces(Class<?> cls) {
        int PROBE_START_LINE_1167 = 1167;
		Class<?> p_cls_5990_line_1167 = cls;
		java.lang.reflect.Type[] class_util_1_expr99_line_1167 = p_cls_5990_line_1167.getGenericInterfaces();
		int PROBE_END_LINE_1167 = 1167;
		return class_util_1_expr99_line_1167;
    }

    /**
     * @since 2.7
     */
    public static Class<?> getEnclosingClass(Class<?> cls) {
        int PROBE_START_LINE_1175 = 1175;
		Class<?> p_cls_5991_line_1175 = cls;
		boolean class_util_1_expr101_line_1175 = isObjectOrPrimitive(p_cls_5991_line_1175);
		Class<?> class_util_1_expr102_line_1175 = null;
		if (!class_util_1_expr101_line_1175) {
			Class<?> p_cls_5991_line_1175_v1 = cls;
			class_util_1_expr102_line_1175 = p_cls_5991_line_1175_v1.getEnclosingClass();
		}
		Class<?> class_util_1_expr100_line_1175 = class_util_1_expr101_line_1175
				? null
				: class_util_1_expr102_line_1175;
		int PROBE_END_LINE_1175 = 1175;
		// Caching does not seem worthwhile, as per profiling
        return class_util_1_expr100_line_1175;
    }

    private static Class<?>[] _interfaces(Class<?> cls) {
        return cls.getInterfaces();
    }

    /*
    /**********************************************************
    /* Helper classes
    /**********************************************************
     */

    /**
     * Inner class used to contain gory details of how we can determine
     * details of instances of common JDK types like {@link EnumMap}s.
     */
    private static class EnumTypeLocator
    {
        final static EnumTypeLocator instance = new EnumTypeLocator();

        private final Field enumSetTypeField;
        private final Field enumMapTypeField;
    	
        private EnumTypeLocator() {
            //JDK uses following fields to store information about actual Enumeration
            // type for EnumSets, EnumMaps...
    	        enumSetTypeField = locateField(EnumSet.class, "elementType", Class.class);
    	        enumMapTypeField = locateField(EnumMap.class, "elementType", Class.class);
        }

        @SuppressWarnings("unchecked")
        public Class<? extends Enum<?>> enumTypeFor(EnumSet<?> set)
        {
            if (enumSetTypeField != null) {
                return (Class<? extends Enum<?>>) get(set, enumSetTypeField);
            }
            throw new IllegalStateException("Cannot figure out type for EnumSet (odd JDK platform?)");
        }

        @SuppressWarnings("unchecked")
        public Class<? extends Enum<?>> enumTypeFor(EnumMap<?,?> set)
        {
            if (enumMapTypeField != null) {
                return (Class<? extends Enum<?>>) get(set, enumMapTypeField);
            }
            throw new IllegalStateException("Cannot figure out type for EnumMap (odd JDK platform?)");
        }
    	
        private Object get(Object bean, Field field)
        {
            try {
                return field.get(bean);
            } catch (Exception e) {
                throw new IllegalArgumentException(e);
            }
        }
    	
        private static Field locateField(Class<?> fromClass, String expectedName, Class<?> type)
        {
            Field found = null;
    	        // First: let's see if we can find exact match:
            Field[] fields = getDeclaredFields(fromClass);
    	        for (Field f : fields) {
    	            if (expectedName.equals(f.getName()) && f.getType() == type) {
    	                found = f;
    	                break;
    	            }
    	        }
    	        // And if not, if there is just one field with the type, that field
    	        if (found == null) {
    	            for (Field f : fields) {
    	                if (f.getType() == type) {
    	                    // If more than one, can't choose
    	                    if (found != null) return null;
    	                    found = f;
    	                }
    	            }
    	        }
    	        if (found != null) { // it's non-public, need to force accessible
    	            try {
    	                found.setAccessible(true);
    	            } catch (Throwable t) { }
    	        }
    	        return found;
        }
    }

    /*
    /**********************************************************
    /* Helper classed used for caching
    /**********************************************************
     */

    /**
     * Value class used for caching Constructor declarations; used because
     * caching done by JDK appears to be somewhat inefficient for some use cases.
     *
     * @since 2.7
     */
    public final static class Ctor
    {
        public final Constructor<?> _ctor;

        private Annotation[] _annotations;

        private  Annotation[][] _paramAnnotations;
        
        int PROBE_START_LINE_1283 = 1283;

		private int class_util_1_expr103_line_1283 = -1;

		int PROBE_END_LINE_1283 = 1283;

		private int _paramCount = class_util_1_expr103_line_1283;
        
        public Ctor(Constructor<?> ctor) {
            int PROBE_START_LINE_1286 = 1286;
			Constructor<?> p_ctor_6001_line_1286 = ctor;
			int PROBE_END_LINE_1286 = 1286;
			_ctor = p_ctor_6001_line_1286;
        }

        public Constructor<?> getConstructor() {
            int PROBE_START_LINE_1290 = 1290;
			Constructor<?> f__ctor_6002_line_1290 = _ctor;
			int PROBE_END_LINE_1290 = 1290;
			return f__ctor_6002_line_1290;
        }

        public int getParamCount() {
            int PROBE_START_LINE_1294 = 1294;
			int f__param_count_6000_line_1294 = _paramCount;
			int PROBE_END_LINE_1294 = 1294;
			int c = f__param_count_6000_line_1294;
            int PROBE_START_LINE_1295 = 1298;
			int v_c_6003_line_1295 = c;
			boolean class_util_1_expr105_line_1295 = v_c_6003_line_1295 < 0;
			int PROBE_END_LINE_1295 = 1298;
			if (class_util_1_expr105_line_1295) {
                int PROBE_START_LINE_1296 = 1296;
				Constructor<?> f__ctor_6002_line_1296 = _ctor;
				Class<?>[] class_util_1_expr108_line_1296 = f__ctor_6002_line_1296.getParameterTypes();
				int class_util_1_expr107_line_1296 = class_util_1_expr108_line_1296.length;
				int PROBE_END_LINE_1296 = 1296;
				c = class_util_1_expr107_line_1296;
                int PROBE_START_LINE_1297 = 1297;
				int v_c_6003_line_1297 = c;
				int PROBE_END_LINE_1297 = 1297;
				_paramCount = v_c_6003_line_1297;
            }
            int PROBE_START_LINE_1299 = 1299;
			int v_c_6003_line_1299 = c;
			int PROBE_END_LINE_1299 = 1299;
			return v_c_6003_line_1299;
        }

        public Class<?> getDeclaringClass() {
            return _ctor.getDeclaringClass();
        }

        public Annotation[] getDeclaredAnnotations() {
            Annotation[] result = _annotations;
            if (result == null) {
                result = _ctor.getDeclaredAnnotations();
                _annotations = result;
            }
            return result;
        }

        public  Annotation[][] getParameterAnnotations() {
            int PROBE_START_LINE_1316 = 1316;
			Annotation[][] f__param_annotations_6005_line_1316 = _paramAnnotations;
			int PROBE_END_LINE_1316 = 1316;
			Annotation[][] result = f__param_annotations_6005_line_1316;
            int PROBE_START_LINE_1317 = 1320;
			java.lang.annotation.Annotation[][] v_result_6004_line_1317 = result;
			boolean class_util_1_expr110_line_1317 = v_result_6004_line_1317 == null;
			int PROBE_END_LINE_1317 = 1320;
			if (class_util_1_expr110_line_1317) {
                int PROBE_START_LINE_1318 = 1318;
				Constructor<?> f__ctor_6002_line_1318 = _ctor;
				java.lang.annotation.Annotation[][] class_util_1_expr112_line_1318 = f__ctor_6002_line_1318
						.getParameterAnnotations();
				int PROBE_END_LINE_1318 = 1318;
				result = class_util_1_expr112_line_1318;
                int PROBE_START_LINE_1319 = 1319;
				java.lang.annotation.Annotation[][] v_result_6004_line_1319 = result;
				int PROBE_END_LINE_1319 = 1319;
				_paramAnnotations = v_result_6004_line_1319;
            }
            int PROBE_START_LINE_1321 = 1321;
			java.lang.annotation.Annotation[][] v_result_6004_line_1321 = result;
			int PROBE_END_LINE_1321 = 1321;
			return v_result_6004_line_1321;
        }
    }
}
