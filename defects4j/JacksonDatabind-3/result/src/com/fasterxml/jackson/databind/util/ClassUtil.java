package com.fasterxml.jackson.databind.util;

import java.lang.reflect.*;
import java.util.*;

import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.util.List;
import java.util.Collection;

public final class ClassUtil
{
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
     */
    public static List<Class<?>> findSuperTypes(Class<?> cls, Class<?> endBefore) {
        int PROBE_START_LINE_29 = 29;
		Class<?> p_cls_2647_line_29 = cls;
		Class<?> p_end_before_2648_line_29 = endBefore;
		List<Class<?>> class_util_1_expr1_line_29 = findSuperTypes(p_cls_2647_line_29, p_end_before_2648_line_29,
				new ArrayList<Class<?>>(8));
		int PROBE_END_LINE_29 = 29;
		return class_util_1_expr1_line_29;
    }
    
    public static List<Class<?>> findSuperTypes(Class<?> cls, Class<?> endBefore, List<Class<?>> result) {
        int PROBE_START_LINE_33 = 33;
		Class<?> p_cls_2649_line_33 = cls;
		Class<?> p_end_before_2650_line_33 = endBefore;
		List<Class<?>> p_result_2651_line_33 = result;
		int PROBE_END_LINE_33 = 33;
		_addSuperTypes(p_cls_2649_line_33, p_end_before_2650_line_33, p_result_2651_line_33, false);
        int PROBE_START_LINE_34 = 34;
		List<Class<?>> p_result_2651_line_34 = result;
		int PROBE_END_LINE_34 = 34;
		return p_result_2651_line_34;
    }
    
    private static void _addSuperTypes(Class<?> cls, Class<?> endBefore, Collection<Class<?>> result, boolean addClassItself) {
        int PROBE_START_LINE_38 = 38;
		Class<?> p_cls_2652_line_38 = cls;
		Class<?> p_end_before_2653_line_38 = endBefore;
		boolean class_util_1_expr6_line_38 = p_cls_2652_line_38 == p_end_before_2653_line_38;
		boolean class_util_1_expr7_line_38 = false;
		if (!class_util_1_expr6_line_38) {
			Class<?> p_cls_2652_line_38_v1 = cls;
			class_util_1_expr7_line_38 = p_cls_2652_line_38_v1 == null;
		}
		boolean class_util_1_expr5_line_38 = class_util_1_expr6_line_38 || class_util_1_expr7_line_38;
		boolean class_util_1_expr8_line_38 = false;
		if (!class_util_1_expr5_line_38) {
			Class<?> p_cls_2652_line_38_v2 = cls;
			class_util_1_expr8_line_38 = p_cls_2652_line_38_v2 == Object.class;
		}
		boolean class_util_1_expr4_line_38 = class_util_1_expr5_line_38 || class_util_1_expr8_line_38;
		int PROBE_END_LINE_38 = 38;
		if (class_util_1_expr4_line_38) { return; }
        int PROBE_START_LINE_39 = 44;
		boolean p_add_class_itself_2655_line_39 = addClassItself;
		int PROBE_END_LINE_39 = 44;
		if (p_add_class_itself_2655_line_39) {
            int PROBE_START_LINE_40 = 42;
			Collection<Class<?>> p_result_2654_line_40 = result;
			Class<?> p_cls_2652_line_40 = cls;
			boolean class_util_1_expr10_line_40 = p_result_2654_line_40.contains(p_cls_2652_line_40);
			int PROBE_END_LINE_40 = 42;
			if (class_util_1_expr10_line_40) { // already added, no need to check supers
                return;
            }
            int PROBE_START_LINE_43 = 43;
			Collection<Class<?>> p_result_2654_line_43 = result;
			Class<?> p_cls_2652_line_43 = cls;
			int PROBE_END_LINE_43 = 43;
			p_result_2654_line_43.add(p_cls_2652_line_43);
        }
        int PROBE_START_LINE_45 = 47;
		Class<?> p_cls_2652_line_45 = cls;
		Class<?>[] class_util_1_expr12_line_45 = p_cls_2652_line_45.getInterfaces();
		int PROBE_END_LINE_45 = 47;
		for (Class<?> intCls : class_util_1_expr12_line_45) {
            int PROBE_START_LINE_46 = 46;
			Class<?> v_int_cls_2656_line_46 = intCls;
			Class<?> p_end_before_2653_line_46 = endBefore;
			Collection<Class<?>> p_result_2654_line_46 = result;
			int PROBE_END_LINE_46 = 46;
			_addSuperTypes(v_int_cls_2656_line_46, p_end_before_2653_line_46, p_result_2654_line_46, true);
        }
        int PROBE_START_LINE_48 = 48;
		Class<?> p_cls_2652_line_48 = cls;
		Class<?> class_util_1_expr15_line_48 = p_cls_2652_line_48.getSuperclass();
		Class<?> p_end_before_2653_line_48 = endBefore;
		Collection<Class<?>> p_result_2654_line_48 = result;
		int PROBE_END_LINE_48 = 48;
		_addSuperTypes(class_util_1_expr15_line_48, p_end_before_2653_line_48, p_result_2654_line_48, true);
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
        // First: language constructs that ain't beans:
        if (type.isAnnotation()) {
            return "annotation";
        }
        if (type.isArray()) {
            return "array";
        }
        if (type.isEnum()) {
            return "enum";
        }
        if (type.isPrimitive()) {
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
            // one more: method locals, anonymous, are not good:
            if (type.getEnclosingMethod() != null) {
                return "local/anonymous";
            }
            
            /* But how about non-static inner classes? Can't construct
             * easily (theoretically, we could try to check if parent
             * happens to be enclosing... but that gets convoluted)
             */
            if (!allowNonStatic) {
                if (type.getEnclosingClass() != null) {
                    if (!Modifier.isStatic(type.getModifiers())) {
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
            if (type.getEnclosingMethod() != null) {
                return null;
            }
            if (!Modifier.isStatic(type.getModifiers())) {
                return type.getEnclosingClass();
            }
        } catch (SecurityException e) { }
        catch (NullPointerException e) { }
        return null;
    }
    
    
    /**
     * Helper method used to weed out dynamic Proxy types; types that do
     * not expose concrete method API that we could use to figure out
     * automatic Bean (property) based serialization.
     */
    public static boolean isProxyType(Class<?> type)
    {
        // As per [Issue#57], should NOT disqualify JDK proxy:
        /*
        // Then: well-known proxy (etc) classes
        if (Proxy.isProxyClass(type)) {
            return true;
        }
        */
        String name = type.getName();
        // Hibernate uses proxies heavily as well:
        if (name.startsWith("net.sf.cglib.proxy.")
            || name.startsWith("org.hibernate.proxy.")) {
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
    
    /*
    /**********************************************************
    /* Access checking/handling methods
    /**********************************************************
     */

    /**
     * Method called to check if we can use the passed method or constructor
     * (wrt access restriction -- public methods can be called, others
     * usually not); and if not, if there is a work-around for
     * the problem.
     */
    public static void checkAndFixAccess(Member member)
    {
        // We know all members are also accessible objects...
        AccessibleObject ao = (AccessibleObject) member;

        /* 14-Jan-2009, tatu: It seems safe and potentially beneficial to
         *   always to make it accessible (latter because it will force
         *   skipping checks we have no use for...), so let's always call it.
         */
        //if (!ao.isAccessible()) {
        try {
            ao.setAccessible(true);
        } catch (SecurityException se) {
            /* 17-Apr-2009, tatu: Related to [JACKSON-101]: this can fail on
             *    platforms like EJB and Google App Engine); so let's
             *    only fail if we really needed it...
             */
            if (!ao.isAccessible()) {
                Class<?> declClass = member.getDeclaringClass();
                throw new IllegalArgumentException("Can not access "+member+" (from class "+declClass.getName()+"; failed to set access: "+se.getMessage());
            }
        }
        //}
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
        int PROBE_START_LINE_595 = 595;
		Object p_impl_2687_line_595 = impl;
		boolean class_util_1_expr18_line_595 = p_impl_2687_line_595 != null;
		boolean class_util_1_expr17_line_595 = (class_util_1_expr18_line_595);
		boolean class_util_1_expr19_line_595 = true;
		if (class_util_1_expr17_line_595) {
			Object p_impl_2687_line_595_v1 = impl;
			Class<? extends Object> class_util_1_expr20_line_595 = p_impl_2687_line_595_v1.getClass();
			class_util_1_expr19_line_595 = isJacksonStdImpl(class_util_1_expr20_line_595);
		}
		boolean class_util_1_expr16_line_595 = class_util_1_expr17_line_595 && class_util_1_expr19_line_595;
		int PROBE_END_LINE_595 = 595;
		return class_util_1_expr16_line_595;
    }

    public static boolean isJacksonStdImpl(Class<?> implClass) {
        int PROBE_START_LINE_599 = 599;
		Class<?> p_impl_class_2688_line_599 = implClass;
		com.fasterxml.jackson.databind.annotation.JacksonStdImpl class_util_1_expr23_line_599 = p_impl_class_2688_line_599
				.getAnnotation(JacksonStdImpl.class);
		boolean class_util_1_expr22_line_599 = class_util_1_expr23_line_599 != null;
		boolean class_util_1_expr21_line_599 = (class_util_1_expr22_line_599);
		int PROBE_END_LINE_599 = 599;
		return class_util_1_expr21_line_599;
    }

    @SuppressWarnings("deprecation")
    public final static boolean isBogusClass(Class<?> cls) {
        return (cls == Void.class || cls == Void.TYPE
                || cls == com.fasterxml.jackson.databind.annotation.NoClass.class);
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
    	    /* JDK uses following fields to store information about actual Enumeration
    	     * type for EnumSets, EnumMaps...
    	     */
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
    	    Field[] fields = fromClass.getDeclaredFields();
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
}
