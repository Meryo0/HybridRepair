package com.fasterxml.jackson.databind.util;

import java.io.Closeable;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.*;
import java.util.*;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.util.List;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Type;
import java.util.Collection;
import java.lang.reflect.Member;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Constructor;

public final class ClassUtil
{
    private final static Class<?> CLS_OBJECT = Object.class;

    private final static Annotation[] NO_ANNOTATIONS = new Annotation[0];
    private final static Ctor[] NO_CTORS = new Ctor[0];
    
    /*
    /**********************************************************
    /* Helper classes
    /**********************************************************
     */

    /* 21-Feb-2016, tatu: Unfortunately `Collections.emptyIterator()` only
     *   comes with JDK7, so we'll still have to include our bogus implementation
     *   for as long as we want JDK6 runtime compatibility
     */
    private final static class EmptyIterator<T> implements Iterator<T> {
        @Override public boolean hasNext() { return false; }
        @Override public T next() { throw new NoSuchElementException(); }
        @Override public void remove() { throw new UnsupportedOperationException(); }
    }
    
    private final static EmptyIterator<?> EMPTY_ITERATOR = new EmptyIterator<Object>();

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
int PROBE_START_LINE_51 = 51;
		com.fasterxml.jackson.databind.util.ClassUtil.EmptyIterator<?> f_empty_iterator_4717_line_51 = EMPTY_ITERATOR;
		int PROBE_END_LINE_51 = 51;
		// 21-Feb-2016, tatu: As per above, use a locally defined empty iterator
//        return Collections.emptyIterator();
        return (Iterator<T>) f_empty_iterator_4717_line_51;
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
        int PROBE_START_LINE_76 = 78;
				com.fasterxml.jackson.databind.JavaType p_type_4718_line_76 = type;
				boolean class_util_1_expr9_line_76 = p_type_4718_line_76 == null;
				boolean class_util_1_expr8_line_76 = (class_util_1_expr9_line_76);
				boolean class_util_1_expr10_line_76 = false;
				boolean class_util_1_expr11_line_76 = false;
				if (!class_util_1_expr8_line_76) {
					com.fasterxml.jackson.databind.JavaType p_type_4718_line_76_v1 = type;
					Class<?> p_end_before_4719_line_76 = endBefore;
					class_util_1_expr10_line_76 = p_type_4718_line_76_v1.hasRawClass(p_end_before_4719_line_76);
					if (!class_util_1_expr10_line_76) {
						com.fasterxml.jackson.databind.JavaType p_type_4718_line_76_v2 = type;
						class_util_1_expr11_line_76 = p_type_4718_line_76_v2.hasRawClass(Object.class);
					}
				}
				boolean class_util_1_expr7_line_76 = class_util_1_expr8_line_76 || class_util_1_expr10_line_76
						|| class_util_1_expr11_line_76;
				int PROBE_END_LINE_76 = 78;
		if (class_util_1_expr7_line_76) {
            return Collections.emptyList();
        }
        List<JavaType> result = new ArrayList<JavaType>(8);
        int PROBE_START_LINE_80 = 80;
		com.fasterxml.jackson.databind.JavaType p_type_4718_line_80 = type;
		Class<?> p_end_before_4719_line_80 = endBefore;
		List<com.fasterxml.jackson.databind.JavaType> v_result_4721_line_80 = result;
		boolean p_add_class_itself_4720_line_80 = addClassItself;
		int PROBE_END_LINE_80 = 80;
		_addSuperTypes(p_type_4718_line_80, p_end_before_4719_line_80, v_result_4721_line_80, p_add_class_itself_4720_line_80);
        int PROBE_START_LINE_81 = 81;
		List<com.fasterxml.jackson.databind.JavaType> v_result_4721_line_81 = result;
		int PROBE_END_LINE_81 = 81;
		return v_result_4721_line_81;
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
        int PROBE_START_LINE_134 = 136;
		com.fasterxml.jackson.databind.JavaType p_type_4733_line_134 = type;
		boolean class_util_1_expr15_line_134 = p_type_4733_line_134 == null;
		int PROBE_END_LINE_134 = 136;
		if (class_util_1_expr15_line_134) {
            return;
        }
        int PROBE_START_LINE_137 = 137;
		com.fasterxml.jackson.databind.JavaType p_type_4733_line_137 = type;
		Class<?> class_util_1_expr16_line_137 = p_type_4733_line_137.getRawClass();
		int PROBE_END_LINE_137 = 137;
		final Class<?> cls = class_util_1_expr16_line_137;
        int PROBE_START_LINE_138 = 138;
		Class<?> v_cls_4737_line_138 = cls;
		Class<?> p_end_before_4734_line_138 = endBefore;
		boolean class_util_1_expr18_line_138 = v_cls_4737_line_138 == p_end_before_4734_line_138;
		boolean class_util_1_expr19_line_138 = false;
		if (!class_util_1_expr18_line_138) {
			Class<?> v_cls_4737_line_138_v1 = cls;
			class_util_1_expr19_line_138 = v_cls_4737_line_138_v1 == Object.class;
		}
		boolean class_util_1_expr17_line_138 = class_util_1_expr18_line_138 || class_util_1_expr19_line_138;
		int PROBE_END_LINE_138 = 138;
		if (class_util_1_expr17_line_138) { return; }
        int PROBE_START_LINE_139 = 144;
		boolean p_add_class_itself_4736_line_139 = addClassItself;
		int PROBE_END_LINE_139 = 144;
		if (p_add_class_itself_4736_line_139) {
            int PROBE_START_LINE_140 = 142;
			Collection<com.fasterxml.jackson.databind.JavaType> p_result_4735_line_140 = result;
			com.fasterxml.jackson.databind.JavaType p_type_4733_line_140 = type;
			boolean class_util_1_expr21_line_140 = p_result_4735_line_140.contains(p_type_4733_line_140);
			int PROBE_END_LINE_140 = 142;
			if (class_util_1_expr21_line_140) { // already added, no need to check supers
                return;
            }
            int PROBE_START_LINE_143 = 143;
			Collection<com.fasterxml.jackson.databind.JavaType> p_result_4735_line_143 = result;
			com.fasterxml.jackson.databind.JavaType p_type_4733_line_143 = type;
			int PROBE_END_LINE_143 = 143;
			p_result_4735_line_143.add(p_type_4733_line_143);
        }
        int PROBE_START_LINE_145 = 147;
		com.fasterxml.jackson.databind.JavaType p_type_4733_line_145 = type;
		List<com.fasterxml.jackson.databind.JavaType> class_util_1_expr23_line_145 = p_type_4733_line_145
				.getInterfaces();
		int PROBE_END_LINE_145 = 147;
		for (JavaType intCls : class_util_1_expr23_line_145) {
            int PROBE_START_LINE_146 = 146;
			com.fasterxml.jackson.databind.JavaType v_int_cls_4738_line_146 = intCls;
			Class<?> p_end_before_4734_line_146 = endBefore;
			Collection<com.fasterxml.jackson.databind.JavaType> p_result_4735_line_146 = result;
			int PROBE_END_LINE_146 = 146;
			_addSuperTypes(v_int_cls_4738_line_146, p_end_before_4734_line_146, p_result_4735_line_146, true);
        }
        int PROBE_START_LINE_148 = 148;
		com.fasterxml.jackson.databind.JavaType p_type_4733_line_148 = type;
		com.fasterxml.jackson.databind.JavaType class_util_1_expr26_line_148 = p_type_4733_line_148.getSuperClass();
		Class<?> p_end_before_4734_line_148 = endBefore;
		Collection<com.fasterxml.jackson.databind.JavaType> p_result_4735_line_148 = result;
		int PROBE_END_LINE_148 = 148;
		_addSuperTypes(class_util_1_expr26_line_148, p_end_before_4734_line_148, p_result_4735_line_148, true);
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
        int PROBE_START_LINE_178 = 180;
		Class<?> p_type_4743_line_178 = type;
		boolean class_util_1_expr27_line_178 = p_type_4743_line_178.isAnnotation();
		int PROBE_END_LINE_178 = 180;
		// First: language constructs that ain't beans:
        if (class_util_1_expr27_line_178) {
            return "annotation";
        }
        int PROBE_START_LINE_181 = 183;
		Class<?> p_type_4743_line_181 = type;
		boolean class_util_1_expr28_line_181 = p_type_4743_line_181.isArray();
		int PROBE_END_LINE_181 = 183;
		if (class_util_1_expr28_line_181) {
            return "array";
        }
        int PROBE_START_LINE_184 = 186;
		Class<?> p_type_4743_line_184 = type;
		boolean class_util_1_expr29_line_184 = p_type_4743_line_184.isEnum();
		int PROBE_END_LINE_184 = 186;
		if (class_util_1_expr29_line_184) {
            return "enum";
        }
        int PROBE_START_LINE_187 = 189;
		Class<?> p_type_4743_line_187 = type;
		boolean class_util_1_expr30_line_187 = p_type_4743_line_187.isPrimitive();
		int PROBE_END_LINE_187 = 189;
		if (class_util_1_expr30_line_187) {
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
            int PROBE_START_LINE_203 = 205;
			Class<?> p_type_4744_line_203 = type;
			boolean class_util_1_expr31_line_203 = hasEnclosingMethod(p_type_4744_line_203);
			int PROBE_END_LINE_203 = 205;
			// one more: method locals, anonymous, are not good:
            if (class_util_1_expr31_line_203) {
                return "local/anonymous";
            }
            
            int PROBE_START_LINE_211 = 217;
			boolean p_allow_non_static_4745_line_211 = allowNonStatic;
			boolean class_util_1_expr32_line_211 = !p_allow_non_static_4745_line_211;
			int PROBE_END_LINE_211 = 217;
			/* But how about non-static inner classes? Can't construct
             * easily (theoretically, we could try to check if parent
             * happens to be enclosing... but that gets convoluted)
             */
            if (class_util_1_expr32_line_211) {
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
        int PROBE_START_LINE_257 = 257;
		Class<?> p_type_4748_line_257 = type;
		String class_util_1_expr33_line_257 = p_type_4748_line_257.getName();
		int PROBE_END_LINE_257 = 257;
		// As per [databind#57], should NOT disqualify JDK proxy:
        /*
        // Then: well-known proxy (etc) classes
        if (Proxy.isProxyClass(type)) {
            return true;
        }
        */
        String name = class_util_1_expr33_line_257;
        int PROBE_START_LINE_259 = 262;
		String v_name_4749_line_259 = name;
		boolean class_util_1_expr35_line_259 = v_name_4749_line_259.startsWith("net.sf.cglib.proxy.");
		boolean class_util_1_expr34_line_259 = class_util_1_expr35_line_259 || name.startsWith("org.hibernate.proxy.");
		int PROBE_END_LINE_259 = 262;
		// Hibernate uses proxies heavily as well:
        if (class_util_1_expr34_line_259) {
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

    /*
    /**********************************************************
    /* Type name handling methods
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
        return cls.getName();
    }

    /*
    /**********************************************************
    /* Class loading
    /**********************************************************
     */

    /**
     * @deprecated Since 2.6, use method in {@link com.fasterxml.jackson.databind.type.TypeFactory}.
     */
    @Deprecated
    public static Class<?> findClass(String className) throws ClassNotFoundException
    {
        // [JACKSON-597]: support primitive types (and void)
        if (className.indexOf('.') < 0) {
            if ("int".equals(className)) return Integer.TYPE;
            if ("long".equals(className)) return Long.TYPE;
            if ("float".equals(className)) return Float.TYPE;
            if ("double".equals(className)) return Double.TYPE;
            if ("boolean".equals(className)) return Boolean.TYPE;
            if ("byte".equals(className)) return Byte.TYPE;
            if ("char".equals(className)) return Character.TYPE;
            if ("short".equals(className)) return Short.TYPE;
            if ("void".equals(className)) return Void.TYPE;
        }
        // Two-phase lookup: first using context ClassLoader; then default
        Throwable prob = null;
        ClassLoader loader = Thread.currentThread().getContextClassLoader();
        
        if (loader != null) {
            try {
                return Class.forName(className, true, loader);
            } catch (Exception e) {
                prob = getRootCause(e);
            }
        }
        try {
            return Class.forName(className);
        } catch (Exception e) {
            if (prob == null) {
                prob = getRootCause(e);
            }
        }
        if (prob instanceof RuntimeException) {
            throw (RuntimeException) prob;
        }
        throw new ClassNotFoundException(prob.getMessage(), prob);
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
    /* Exception handling
    /**********************************************************
     */

    /**
     * Method that can be used to find the "root cause", innermost
     * of chained (wrapped) exceptions.
     */
    public static Throwable getRootCause(Throwable t)
    {
        while (t.getCause() != null) {
            t = t.getCause();
        }
        return t;
    }

    /**
     * Method that will unwrap root causes of given Throwable, and throw
     * the innermost {@link Exception} or {@link Error} as is.
     * This is useful in cases where mandatory wrapping is added, which
     * is often done by Reflection API.
     */
    public static void throwRootCause(Throwable t) throws Exception
    {
        t = getRootCause(t);
        if (t instanceof Exception) {
            throw (Exception) t;
        }
        throw (Error) t;
    }

    /**
     * Method that works like {@link #throwRootCause} if (and only if)
     * root cause is an {@link IOException}; otherwise returns root cause
     *
     * @since 2.8
     */
    public static Throwable throwRootCauseIfIOE(Throwable t) throws IOException
    {
        t = getRootCause(t);
        if (t instanceof IOException) {
            throw (IOException) t;
        }
        return t;
    }

    /**
     * Method that will wrap 't' as an {@link IllegalArgumentException} if it
     * is a checked exception; otherwise (runtime exception or error) throw as is
     */
    public static void throwAsIAE(Throwable t)
    {
        throwAsIAE(t, t.getMessage());
    }

    /**
     * Method that will wrap 't' as an {@link IllegalArgumentException} (and with
     * specified message) if it
     * is a checked exception; otherwise (runtime exception or error) throw as is
     */
    public static void throwAsIAE(Throwable t, String msg)
    {
        if (t instanceof RuntimeException) {
            throw (RuntimeException) t;
        }
        if (t instanceof Error) {
            throw (Error) t;
        }
        throw new IllegalArgumentException(msg, t);
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
    public static void closeOnFailAndThrowAsIAE(JsonGenerator g, Exception fail)
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
        if (fail instanceof IOException) {
            throw (IOException) fail;
        }
        if (fail instanceof RuntimeException) {
            throw (RuntimeException) fail;
        }
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
    public static void closeOnFailAndThrowAsIAE(JsonGenerator g,
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
        if (fail instanceof IOException) {
            throw (IOException) fail;
        }
        if (fail instanceof RuntimeException) {
            throw (RuntimeException) fail;
        }
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
        Constructor<T> ctor = findConstructor(cls, canFixAccess);
        if (ctor == null) {
            throw new IllegalArgumentException("Class "+cls.getName()+" has no default (no arg) constructor");
        }
        try {
            return ctor.newInstance();
        } catch (Exception e) {
            ClassUtil.unwrapAndThrowAsIAE(e, "Failed to instantiate class "+cls.getName()+", problem: "+e.getMessage());
            return null;
        }
    }

    public static <T> Constructor<T> findConstructor(Class<T> cls, boolean canFixAccess)
        throws IllegalArgumentException
    {
        try {
            Constructor<T> ctor = cls.getDeclaredConstructor();
            if (canFixAccess) {
                checkAndFixAccess(ctor);
            } else {
                // Has to be public...
                if (!Modifier.isPublic(ctor.getModifiers())) {
                    throw new IllegalArgumentException("Default constructor for "+cls.getName()+" is not accessible (non-public?): not allowed to try modify access via Reflection: can not instantiate type");
                }
            }
            return ctor;
        } catch (NoSuchMethodException e) {
            ;
        } catch (Exception e) {
            ClassUtil.unwrapAndThrowAsIAE(e, "Failed to find default constructor of class "+cls.getName()+", problem: "+e.getMessage());
        }
        return null;
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
        int PROBE_START_LINE_749 = 749;
		java.lang.reflect.Member p_member_4778_line_749 = member;
		int PROBE_END_LINE_749 = 749;
		// We know all members are also accessible objects...
        AccessibleObject ao = (AccessibleObject) p_member_4778_line_749;

        /* 14-Jan-2009, tatu: It seems safe and potentially beneficial to
         *   always to make it accessible (latter because it will force
         *   skipping checks we have no use for...), so let's always call it.
         */
        try {
            int PROBE_START_LINE_756 = 760;
			boolean p_force_4779_line_756 = force;
			boolean class_util_1_expr37_line_756 = p_force_4779_line_756 || (!Modifier.isPublic(member.getModifiers())
					|| !Modifier.isPublic(member.getDeclaringClass().getModifiers()));
			int PROBE_END_LINE_756 = 760;
			if (class_util_1_expr37_line_756) {
                int PROBE_START_LINE_759 = 759;
								java.lang.reflect.AccessibleObject v_ao_4780_line_759 = ao;
								int PROBE_END_LINE_759 = 759;
				v_ao_4780_line_759.setAccessible(true);
            }
        } catch (SecurityException se) {
            // 17-Apr-2009, tatu: Related to [JACKSON-101]: this can fail on platforms like
            // Google App Engine); so let's only fail if we really needed it...
            if (!ao.isAccessible()) {
                Class<?> declClass = member.getDeclaringClass();
                throw new IllegalArgumentException("Can not access "+member+" (from class "+declClass.getName()+"; failed to set access: "+se.getMessage());
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
     */
    public static boolean isJacksonStdImpl(Object impl) {
        return (impl != null) && isJacksonStdImpl(impl.getClass());
    }

    public static boolean isJacksonStdImpl(Class<?> implClass) {
        return (implClass.getAnnotation(JacksonStdImpl.class) != null);
    }

    public static boolean isBogusClass(Class<?> cls) {
        return (cls == Void.class || cls == Void.TYPE
                || cls == com.fasterxml.jackson.databind.annotation.NoClass.class);
    }

    public static boolean isNonStaticInnerClass(Class<?> cls) {
        int PROBE_START_LINE_898 = 899;
		Class<?> p_cls_4790_line_898 = cls;
		int class_util_1_expr42_line_898 = p_cls_4790_line_898.getModifiers();
		boolean class_util_1_expr41_line_898 = Modifier.isStatic(class_util_1_expr42_line_898);
		boolean class_util_1_expr40_line_898 = !class_util_1_expr41_line_898;
		boolean class_util_1_expr39_line_898 = class_util_1_expr40_line_898 && (getEnclosingClass(cls) != null);
		int PROBE_END_LINE_898 = 899;
		return class_util_1_expr39_line_898;
    }

    /**
     * @since 2.7
     */
    public static boolean isObjectOrPrimitive(Class<?> cls) {
        int PROBE_START_LINE_906 = 906;
		Class<?> p_cls_4791_line_906 = cls;
		Class<?> f_cls_object_4714_line_906 = CLS_OBJECT;
		boolean class_util_1_expr45_line_906 = p_cls_4791_line_906 == f_cls_object_4714_line_906;
		boolean class_util_1_expr44_line_906 = (class_util_1_expr45_line_906);
		boolean class_util_1_expr46_line_906 = false;
		if (!class_util_1_expr44_line_906) {
			Class<?> p_cls_4791_line_906_v1 = cls;
			class_util_1_expr46_line_906 = p_cls_4791_line_906_v1.isPrimitive();
		}
		boolean class_util_1_expr43_line_906 = class_util_1_expr44_line_906 || class_util_1_expr46_line_906;
		int PROBE_END_LINE_906 = 906;
		return class_util_1_expr43_line_906;
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
        int PROBE_START_LINE_922 = 922;
		Class<?> p_cls_4792_line_922 = cls;
		Package class_util_1_expr47_line_922 = p_cls_4792_line_922.getPackage();
		int PROBE_END_LINE_922 = 922;
		Package pkg = class_util_1_expr47_line_922;
        int PROBE_START_LINE_923 = 923;
		Package v_pkg_4793_line_923 = pkg;
		boolean class_util_1_expr51_line_923 = v_pkg_4793_line_923 == null;
		boolean class_util_1_expr49_line_923 = (class_util_1_expr51_line_923);
		String class_util_1_expr50_line_923 = null;
		if (!class_util_1_expr49_line_923) {
			Package v_pkg_4793_line_923_v1 = pkg;
			class_util_1_expr50_line_923 = v_pkg_4793_line_923_v1.getName();
		}
		String class_util_1_expr48_line_923 = class_util_1_expr49_line_923 ? null : class_util_1_expr50_line_923;
		int PROBE_END_LINE_923 = 923;
		return class_util_1_expr48_line_923;
    }

    /**
     * @since 2.7
     */
    public static boolean hasEnclosingMethod(Class<?> cls) {
        int PROBE_START_LINE_930 = 930;
		Class<?> p_cls_4794_line_930 = cls;
		boolean class_util_1_expr54_line_930 = isObjectOrPrimitive(p_cls_4794_line_930);
		boolean class_util_1_expr53_line_930 = !class_util_1_expr54_line_930;
		boolean class_util_1_expr55_line_930 = true;
		if (class_util_1_expr53_line_930) {
			Class<?> p_cls_4794_line_930_v1 = cls;
			java.lang.reflect.Method class_util_1_expr57_line_930 = p_cls_4794_line_930_v1.getEnclosingMethod();
			boolean class_util_1_expr56_line_930 = class_util_1_expr57_line_930 != null;
			class_util_1_expr55_line_930 = (class_util_1_expr56_line_930);
		}
		boolean class_util_1_expr52_line_930 = class_util_1_expr53_line_930 && class_util_1_expr55_line_930;
		int PROBE_END_LINE_930 = 930;
		return class_util_1_expr52_line_930;
    }

    /**
     * @since 2.7
     */
    public static Field[] getDeclaredFields(Class<?> cls) {
        int PROBE_START_LINE_937 = 937;
		Class<?> p_cls_4795_line_937 = cls;
		java.lang.reflect.Field[] class_util_1_expr58_line_937 = p_cls_4795_line_937.getDeclaredFields();
		int PROBE_END_LINE_937 = 937;
		return class_util_1_expr58_line_937;
    }

    /**
     * @since 2.7
     */
    public static Method[] getDeclaredMethods(Class<?> cls) {
        int PROBE_START_LINE_944 = 944;
		Class<?> p_cls_4796_line_944 = cls;
		java.lang.reflect.Method[] class_util_1_expr59_line_944 = p_cls_4796_line_944.getDeclaredMethods();
		int PROBE_END_LINE_944 = 944;
		return class_util_1_expr59_line_944;
    }

    /**
     * @since 2.7
     */
    public static Annotation[] findClassAnnotations(Class<?> cls) {
        int PROBE_START_LINE_951 = 953;
		Class<?> p_cls_4797_line_951 = cls;
		boolean class_util_1_expr60_line_951 = isObjectOrPrimitive(p_cls_4797_line_951);
		int PROBE_END_LINE_951 = 953;
		if (class_util_1_expr60_line_951) {
            return NO_ANNOTATIONS;
        }
        int PROBE_START_LINE_954 = 954;
		Class<?> p_cls_4797_line_954 = cls;
		java.lang.annotation.Annotation[] class_util_1_expr61_line_954 = p_cls_4797_line_954.getDeclaredAnnotations();
		int PROBE_END_LINE_954 = 954;
		return class_util_1_expr61_line_954;
    }

    /**
     * @since 2.7
     */
    public static Ctor[] getConstructors(Class<?> cls) {
        int PROBE_START_LINE_963 = 965;
		Class<?> p_cls_4798_line_963 = cls;
		boolean class_util_1_expr63_line_963 = p_cls_4798_line_963.isInterface();
		boolean class_util_1_expr64_line_963 = false;
		if (!class_util_1_expr63_line_963) {
			Class<?> p_cls_4798_line_963_v1 = cls;
			class_util_1_expr64_line_963 = isObjectOrPrimitive(p_cls_4798_line_963_v1);
		}
		boolean class_util_1_expr62_line_963 = class_util_1_expr63_line_963 || class_util_1_expr64_line_963;
		int PROBE_END_LINE_963 = 965;
		// Note: can NOT skip abstract classes as they may be used with mix-ins
        // and for regular use shouldn't really matter.
        if (class_util_1_expr62_line_963) {
            return NO_CTORS;
        }
        int PROBE_START_LINE_966 = 966;
		Class<?> p_cls_4798_line_966 = cls;
		Constructor<?>[] class_util_1_expr65_line_966 = p_cls_4798_line_966.getDeclaredConstructors();
		int PROBE_END_LINE_966 = 966;
		Constructor<?>[] rawCtors = class_util_1_expr65_line_966;
        int PROBE_START_LINE_967 = 967;
		Constructor<?>[] v_raw_ctors_4799_line_967 = rawCtors;
		int q_length_155_line_967 = v_raw_ctors_4799_line_967.length;
		int PROBE_END_LINE_967 = 967;
		final int len = q_length_155_line_967;
        int PROBE_START_LINE_968 = 968;
		int v_len_4800_line_968 = len;
		int PROBE_END_LINE_968 = 968;
		Ctor[] result = new Ctor[v_len_4800_line_968];
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_970 = 970;
			int v_i_4802_line_969 = i;
			int v_len_4800_line_969 = len;
			boolean class_util_1_expr68_line_969 = v_i_4802_line_969 < v_len_4800_line_969;
			if (!(class_util_1_expr68_line_969)) {
				break;
			}
			com.fasterxml.jackson.databind.util.ClassUtil.Ctor[] v_result_4801_line_970 = result;
			int v_i_4802_line_970 = i;
			Constructor<?>[] v_raw_ctors_4799_line_970 = rawCtors;
			int v_i_4802_line_970_v1 = i;
			Constructor<?> class_util_1_expr73_line_970 = v_raw_ctors_4799_line_970[v_i_4802_line_970_v1];
			int PROBE_END_LINE_970 = 970;
			v_result_4801_line_970[v_i_4802_line_970] = new Ctor(class_util_1_expr73_line_970);
        }
        int PROBE_START_LINE_972 = 972;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor[] v_result_4801_line_972 = result;
		int PROBE_END_LINE_972 = 972;
		return v_result_4801_line_972;
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
        int PROBE_START_LINE_989 = 989;
		Class<?> p_cls_4804_line_989 = cls;
		java.lang.reflect.Type class_util_1_expr74_line_989 = p_cls_4804_line_989.getGenericSuperclass();
		int PROBE_END_LINE_989 = 989;
		return class_util_1_expr74_line_989;
    }

    /**
     * @since 2.7
     */
    public static Type[] getGenericInterfaces(Class<?> cls) {
        int PROBE_START_LINE_996 = 996;
		Class<?> p_cls_4805_line_996 = cls;
		java.lang.reflect.Type[] class_util_1_expr75_line_996 = p_cls_4805_line_996.getGenericInterfaces();
		int PROBE_END_LINE_996 = 996;
		return class_util_1_expr75_line_996;
    }

    /**
     * @since 2.7
     */
    public static Class<?> getEnclosingClass(Class<?> cls) {
        int PROBE_START_LINE_1004 = 1004;
		Class<?> p_cls_4806_line_1004 = cls;
		boolean class_util_1_expr77_line_1004 = isObjectOrPrimitive(p_cls_4806_line_1004);
		Class<?> class_util_1_expr78_line_1004 = null;
		if (!class_util_1_expr77_line_1004) {
			Class<?> p_cls_4806_line_1004_v1 = cls;
			class_util_1_expr78_line_1004 = p_cls_4806_line_1004_v1.getEnclosingClass();
		}
		Class<?> class_util_1_expr76_line_1004 = class_util_1_expr77_line_1004 ? null : class_util_1_expr78_line_1004;
		int PROBE_END_LINE_1004 = 1004;
		// Caching does not seem worthwhile, as per profiling
        return class_util_1_expr76_line_1004;
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
            throw new IllegalStateException("Can not figure out type for EnumSet (odd JDK platform?)");
        }

        @SuppressWarnings("unchecked")
        public Class<? extends Enum<?>> enumTypeFor(EnumMap<?,?> set)
        {
            if (enumMapTypeField != null) {
                return (Class<? extends Enum<?>>) get(set, enumMapTypeField);
            }
            throw new IllegalStateException("Can not figure out type for EnumMap (odd JDK platform?)");
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
        
        int PROBE_START_LINE_1112 = 1112;

		private int class_util_1_expr79_line_1112 = -1;

		int PROBE_END_LINE_1112 = 1112;

		private int _paramCount = class_util_1_expr79_line_1112;
        
        public Ctor(Constructor<?> ctor) {
            int PROBE_START_LINE_1115 = 1115;
			Constructor<?> p_ctor_4816_line_1115 = ctor;
			int PROBE_END_LINE_1115 = 1115;
			_ctor = p_ctor_4816_line_1115;
        }

        public Constructor<?> getConstructor() {
            int PROBE_START_LINE_1119 = 1119;
			Constructor<?> f__ctor_4817_line_1119 = _ctor;
			int PROBE_END_LINE_1119 = 1119;
			return f__ctor_4817_line_1119;
        }

        public int getParamCount() {
            int PROBE_START_LINE_1123 = 1123;
			int f__param_count_4815_line_1123 = _paramCount;
			int PROBE_END_LINE_1123 = 1123;
			int c = f__param_count_4815_line_1123;
            int PROBE_START_LINE_1124 = 1127;
			int v_c_4818_line_1124 = c;
			boolean class_util_1_expr81_line_1124 = v_c_4818_line_1124 < 0;
			int PROBE_END_LINE_1124 = 1127;
			if (class_util_1_expr81_line_1124) {
                int PROBE_START_LINE_1125 = 1125;
				Constructor<?> f__ctor_4817_line_1125 = _ctor;
				Class<?>[] class_util_1_expr84_line_1125 = f__ctor_4817_line_1125.getParameterTypes();
				int class_util_1_expr83_line_1125 = class_util_1_expr84_line_1125.length;
				int PROBE_END_LINE_1125 = 1125;
				c = class_util_1_expr83_line_1125;
                int PROBE_START_LINE_1126 = 1126;
				int v_c_4818_line_1126 = c;
				int PROBE_END_LINE_1126 = 1126;
				_paramCount = v_c_4818_line_1126;
            }
            int PROBE_START_LINE_1128 = 1128;
			int v_c_4818_line_1128 = c;
			int PROBE_END_LINE_1128 = 1128;
			return v_c_4818_line_1128;
        }

        public Class<?> getDeclaringClass() {
            return _ctor.getDeclaringClass();
        }

        // Modest boost: maybe 1%?
        public Annotation[] getDeclaredAnnotations() {
            int PROBE_START_LINE_1137 = 1137;
			Annotation[] f__annotations_4820_line_1137 = _annotations;
			int PROBE_END_LINE_1137 = 1137;
			Annotation[] result = f__annotations_4820_line_1137;
            int PROBE_START_LINE_1138 = 1141;
			java.lang.annotation.Annotation[] v_result_4819_line_1138 = result;
			boolean class_util_1_expr86_line_1138 = v_result_4819_line_1138 == null;
			int PROBE_END_LINE_1138 = 1141;
			if (class_util_1_expr86_line_1138) {
                int PROBE_START_LINE_1139 = 1139;
				Constructor<?> f__ctor_4817_line_1139 = _ctor;
				java.lang.annotation.Annotation[] class_util_1_expr88_line_1139 = f__ctor_4817_line_1139
						.getDeclaredAnnotations();
				int PROBE_END_LINE_1139 = 1139;
				result = class_util_1_expr88_line_1139;
                int PROBE_START_LINE_1140 = 1140;
				java.lang.annotation.Annotation[] v_result_4819_line_1140 = result;
				int PROBE_END_LINE_1140 = 1140;
				_annotations = v_result_4819_line_1140;
            }
            int PROBE_START_LINE_1142 = 1142;
			java.lang.annotation.Annotation[] v_result_4819_line_1142 = result;
			int PROBE_END_LINE_1142 = 1142;
			return v_result_4819_line_1142;
        }

        // Modest boost: maybe 1%?
        public  Annotation[][] getParameterAnnotations() {
            int PROBE_START_LINE_1147 = 1147;
			Annotation[][] f__param_annotations_4822_line_1147 = _paramAnnotations;
			int PROBE_END_LINE_1147 = 1147;
			Annotation[][] result = f__param_annotations_4822_line_1147;
            int PROBE_START_LINE_1148 = 1151;
			java.lang.annotation.Annotation[][] v_result_4821_line_1148 = result;
			boolean class_util_1_expr90_line_1148 = v_result_4821_line_1148 == null;
			int PROBE_END_LINE_1148 = 1151;
			if (class_util_1_expr90_line_1148) {
                int PROBE_START_LINE_1149 = 1149;
				Constructor<?> f__ctor_4817_line_1149 = _ctor;
				java.lang.annotation.Annotation[][] class_util_1_expr92_line_1149 = f__ctor_4817_line_1149
						.getParameterAnnotations();
				int PROBE_END_LINE_1149 = 1149;
				result = class_util_1_expr92_line_1149;
                int PROBE_START_LINE_1150 = 1150;
				java.lang.annotation.Annotation[][] v_result_4821_line_1150 = result;
				int PROBE_END_LINE_1150 = 1150;
				_paramAnnotations = v_result_4821_line_1150;
            }
            int PROBE_START_LINE_1152 = 1152;
			java.lang.annotation.Annotation[][] v_result_4821_line_1152 = result;
			int PROBE_END_LINE_1152 = 1152;
			return v_result_4821_line_1152;
        }
    }
}
