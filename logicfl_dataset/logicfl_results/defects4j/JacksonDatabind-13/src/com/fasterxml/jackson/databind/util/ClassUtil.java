package com.fasterxml.jackson.databind.util;

import java.lang.reflect.*;
import java.util.*;

import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.util.List;
import java.lang.reflect.AccessibleObject;
import java.util.Collection;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Constructor;

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
		Class<?> p_cls_4193_line_29 = cls;
		Class<?> p_end_before_4194_line_29 = endBefore;
		List<Class<?>> class_util_1_expr1_line_29 = findSuperTypes(p_cls_4193_line_29, p_end_before_4194_line_29,
				new ArrayList<Class<?>>(8));
		int PROBE_END_LINE_29 = 29;
		return class_util_1_expr1_line_29;
    }
    
    public static List<Class<?>> findSuperTypes(Class<?> cls, Class<?> endBefore, List<Class<?>> result) {
        int PROBE_START_LINE_33 = 33;
		Class<?> p_cls_4195_line_33 = cls;
		Class<?> p_end_before_4196_line_33 = endBefore;
		List<Class<?>> p_result_4197_line_33 = result;
		int PROBE_END_LINE_33 = 33;
		_addSuperTypes(p_cls_4195_line_33, p_end_before_4196_line_33, p_result_4197_line_33, false);
        int PROBE_START_LINE_34 = 34;
		List<Class<?>> p_result_4197_line_34 = result;
		int PROBE_END_LINE_34 = 34;
		return p_result_4197_line_34;
    }
    
    private static void _addSuperTypes(Class<?> cls, Class<?> endBefore, Collection<Class<?>> result, boolean addClassItself) {
        int PROBE_START_LINE_38 = 38;
		Class<?> p_cls_4198_line_38 = cls;
		Class<?> p_end_before_4199_line_38 = endBefore;
		boolean class_util_1_expr6_line_38 = p_cls_4198_line_38 == p_end_before_4199_line_38;
		boolean class_util_1_expr7_line_38 = false;
		if (!class_util_1_expr6_line_38) {
			Class<?> p_cls_4198_line_38_v1 = cls;
			class_util_1_expr7_line_38 = p_cls_4198_line_38_v1 == null;
		}
		boolean class_util_1_expr5_line_38 = class_util_1_expr6_line_38 || class_util_1_expr7_line_38;
		boolean class_util_1_expr8_line_38 = false;
		if (!class_util_1_expr5_line_38) {
			Class<?> p_cls_4198_line_38_v2 = cls;
			class_util_1_expr8_line_38 = p_cls_4198_line_38_v2 == Object.class;
		}
		boolean class_util_1_expr4_line_38 = class_util_1_expr5_line_38 || class_util_1_expr8_line_38;
		int PROBE_END_LINE_38 = 38;
		if (class_util_1_expr4_line_38) { return; }
        int PROBE_START_LINE_39 = 44;
		boolean p_add_class_itself_4201_line_39 = addClassItself;
		int PROBE_END_LINE_39 = 44;
		if (p_add_class_itself_4201_line_39) {
            int PROBE_START_LINE_40 = 42;
			Collection<Class<?>> p_result_4200_line_40 = result;
			Class<?> p_cls_4198_line_40 = cls;
			boolean class_util_1_expr10_line_40 = p_result_4200_line_40.contains(p_cls_4198_line_40);
			int PROBE_END_LINE_40 = 42;
			if (class_util_1_expr10_line_40) { // already added, no need to check supers
                return;
            }
            int PROBE_START_LINE_43 = 43;
			Collection<Class<?>> p_result_4200_line_43 = result;
			Class<?> p_cls_4198_line_43 = cls;
			int PROBE_END_LINE_43 = 43;
			p_result_4200_line_43.add(p_cls_4198_line_43);
        }
        int PROBE_START_LINE_45 = 47;
		Class<?> p_cls_4198_line_45 = cls;
		Class<?>[] class_util_1_expr12_line_45 = p_cls_4198_line_45.getInterfaces();
		int PROBE_END_LINE_45 = 47;
		for (Class<?> intCls : class_util_1_expr12_line_45) {
            int PROBE_START_LINE_46 = 46;
			Class<?> v_int_cls_4202_line_46 = intCls;
			Class<?> p_end_before_4199_line_46 = endBefore;
			Collection<Class<?>> p_result_4200_line_46 = result;
			int PROBE_END_LINE_46 = 46;
			_addSuperTypes(v_int_cls_4202_line_46, p_end_before_4199_line_46, p_result_4200_line_46, true);
        }
        int PROBE_START_LINE_48 = 48;
		Class<?> p_cls_4198_line_48 = cls;
		Class<?> class_util_1_expr15_line_48 = p_cls_4198_line_48.getSuperclass();
		Class<?> p_end_before_4199_line_48 = endBefore;
		Collection<Class<?>> p_result_4200_line_48 = result;
		int PROBE_END_LINE_48 = 48;
		_addSuperTypes(class_util_1_expr15_line_48, p_end_before_4199_line_48, p_result_4200_line_48, true);
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
        int PROBE_START_LINE_64 = 66;
		Class<?> p_type_4203_line_64 = type;
		boolean class_util_1_expr16_line_64 = p_type_4203_line_64.isAnnotation();
		int PROBE_END_LINE_64 = 66;
		// First: language constructs that ain't beans:
        if (class_util_1_expr16_line_64) {
            return "annotation";
        }
        int PROBE_START_LINE_67 = 69;
		Class<?> p_type_4203_line_67 = type;
		boolean class_util_1_expr17_line_67 = p_type_4203_line_67.isArray();
		int PROBE_END_LINE_67 = 69;
		if (class_util_1_expr17_line_67) {
            return "array";
        }
        int PROBE_START_LINE_70 = 72;
		Class<?> p_type_4203_line_70 = type;
		boolean class_util_1_expr18_line_70 = p_type_4203_line_70.isEnum();
		int PROBE_END_LINE_70 = 72;
		if (class_util_1_expr18_line_70) {
            return "enum";
        }
        int PROBE_START_LINE_73 = 75;
		Class<?> p_type_4203_line_73 = type;
		boolean class_util_1_expr19_line_73 = p_type_4203_line_73.isPrimitive();
		int PROBE_END_LINE_73 = 75;
		if (class_util_1_expr19_line_73) {
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
            int PROBE_START_LINE_89 = 91;
			Class<?> p_type_4204_line_89 = type;
			java.lang.reflect.Method class_util_1_expr21_line_89 = p_type_4204_line_89.getEnclosingMethod();
			boolean class_util_1_expr20_line_89 = class_util_1_expr21_line_89 != null;
			int PROBE_END_LINE_89 = 91;
			// one more: method locals, anonymous, are not good:
            if (class_util_1_expr20_line_89) {
                return "local/anonymous";
            }
            
            int PROBE_START_LINE_97 = 103;
			boolean p_allow_non_static_4205_line_97 = allowNonStatic;
			boolean class_util_1_expr22_line_97 = !p_allow_non_static_4205_line_97;
			int PROBE_END_LINE_97 = 103;
			/* But how about non-static inner classes? Can't construct
             * easily (theoretically, we could try to check if parent
             * happens to be enclosing... but that gets convoluted)
             */
            if (class_util_1_expr22_line_97) {
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
        int PROBE_START_LINE_144 = 144;
		Class<?> p_type_4208_line_144 = type;
		String class_util_1_expr23_line_144 = p_type_4208_line_144.getName();
		int PROBE_END_LINE_144 = 144;
		// As per [Issue#57], should NOT disqualify JDK proxy:
        /*
        // Then: well-known proxy (etc) classes
        if (Proxy.isProxyClass(type)) {
            return true;
        }
        */
        String name = class_util_1_expr23_line_144;
        int PROBE_START_LINE_146 = 149;
		String v_name_4209_line_146 = name;
		boolean class_util_1_expr25_line_146 = v_name_4209_line_146.startsWith("net.sf.cglib.proxy.");
		boolean class_util_1_expr24_line_146 = class_util_1_expr25_line_146 || name.startsWith("org.hibernate.proxy.");
		int PROBE_END_LINE_146 = 149;
		// Hibernate uses proxies heavily as well:
        if (class_util_1_expr24_line_146) {
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
        int PROBE_START_LINE_368 = 368;
		Class<T> p_cls_4224_line_368 = cls;
		boolean p_can_fix_access_4225_line_368 = canFixAccess;
		Constructor<T> class_util_1_expr26_line_368 = findConstructor(p_cls_4224_line_368,
				p_can_fix_access_4225_line_368);
		int PROBE_END_LINE_368 = 368;
		Constructor<T> ctor = class_util_1_expr26_line_368;
        int PROBE_START_LINE_369 = 371;
		Constructor<T> v_ctor_4226_line_369 = ctor;
		boolean class_util_1_expr27_line_369 = v_ctor_4226_line_369 == null;
		int PROBE_END_LINE_369 = 371;
		if (class_util_1_expr27_line_369) {
            throw new IllegalArgumentException("Class "+cls.getName()+" has no default (no arg) constructor");
        }
        try {
            int PROBE_START_LINE_373 = 373;
			Constructor<T> v_ctor_4226_line_373 = ctor;
			T class_util_1_expr28_line_373 = v_ctor_4226_line_373.newInstance();
			int PROBE_END_LINE_373 = 373;
			return class_util_1_expr28_line_373;
        } catch (Exception e) {
            ClassUtil.unwrapAndThrowAsIAE(e, "Failed to instantiate class "+cls.getName()+", problem: "+e.getMessage());
            return null;
        }
    }

    public static <T> Constructor<T> findConstructor(Class<T> cls, boolean canFixAccess)
        throws IllegalArgumentException
    {
        try {
            int PROBE_START_LINE_384 = 384;
			Class<T> p_cls_4227_line_384 = cls;
			Constructor<T> class_util_1_expr29_line_384 = (Constructor<T>) (p_cls_4227_line_384
					.getDeclaredConstructor());
			int PROBE_END_LINE_384 = 384;
			Constructor<T> ctor = class_util_1_expr29_line_384;
            int PROBE_START_LINE_385 = 392;
			boolean p_can_fix_access_4228_line_385 = canFixAccess;
			int PROBE_END_LINE_385 = 392;
			if (p_can_fix_access_4228_line_385) {
                int PROBE_START_LINE_386 = 386;
				Constructor<T> v_ctor_4229_line_386 = ctor;
				int PROBE_END_LINE_386 = 386;
				checkAndFixAccess(v_ctor_4229_line_386);
            } else {
                // Has to be public...
                if (!Modifier.isPublic(ctor.getModifiers())) {
                    throw new IllegalArgumentException("Default constructor for "+cls.getName()+" is not accessible (non-public?): not allowed to try modify access via Reflection: can not instantiate type");
                }
            }
            int PROBE_START_LINE_393 = 393;
			Constructor<T> v_ctor_4229_line_393 = ctor;
			int PROBE_END_LINE_393 = 393;
			return v_ctor_4229_line_393;
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
        int PROBE_START_LINE_489 = 489;
		java.lang.reflect.Member p_member_4232_line_489 = member;
		int PROBE_END_LINE_489 = 489;
		// We know all members are also accessible objects...
        AccessibleObject ao = (AccessibleObject) p_member_4232_line_489;

        /* 14-Jan-2009, tatu: It seems safe and potentially beneficial to
         *   always to make it accessible (latter because it will force
         *   skipping checks we have no use for...), so let's always call it.
         */
        //if (!ao.isAccessible()) {
        try {
            int PROBE_START_LINE_497 = 497;
			java.lang.reflect.AccessibleObject v_ao_4233_line_497 = ao;
			int PROBE_END_LINE_497 = 497;
			v_ao_4233_line_497.setAccessible(true);
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
        return (cls.getEnclosingClass() != null)
                && !Modifier.isStatic(cls.getModifiers());
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
