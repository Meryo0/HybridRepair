/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.commons.lang3;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;


/**
 * <p>Operates on classes without using reflection.</p>
 *
 * <p>This class handles invalid <code>null</code> inputs as best it can.
 * Each method documents its behaviour in more detail.</p>
 *
 * <p>The notion of a <code>canonical name</code> includes the human
 * readable name for the type, for example <code>int[]</code>. The
 * non-canonical method variants work with the JVM names, such as
 * <code>[I</code>. </p>
 *
 * @author Apache Software Foundation
 * @author Gary Gregory
 * @author Norm Deane
 * @author Alban Peignier
 * @author Tomasz Blachowicz
 * @since 2.0
 * @version $Id$
 */
public class ClassUtils {

    /**
     * <p>The package separator character: <code>'&#x2e;' == {@value}</code>.</p>
     */
    public static final char PACKAGE_SEPARATOR_CHAR = '.';

    int PROBE_START_LINE_55 = 58;

	public static final char f_package_separator_char_394_line_58 = PACKAGE_SEPARATOR_CHAR;

	public static final String class_utils_1_expr1_line_58 = String.valueOf(f_package_separator_char_394_line_58);

	int PROBE_END_LINE_55 = 58;

	/**
     * <p>The package separator String: <code>"&#x2e;"</code>.</p>
     */
    public static final String PACKAGE_SEPARATOR = class_utils_1_expr1_line_58;

    /**
     * <p>The inner class separator character: <code>'$' == {@value}</code>.</p>
     */
    public static final char INNER_CLASS_SEPARATOR_CHAR = '$';

    int PROBE_START_LINE_65 = 68;

	public static final char f_inner_class_separator_char_396_line_68 = INNER_CLASS_SEPARATOR_CHAR;

	public static final String class_utils_1_expr2_line_68 = String.valueOf(f_inner_class_separator_char_396_line_68);

	int PROBE_END_LINE_65 = 68;

	/**
     * <p>The inner class separator String: <code>"$"</code>.</p>
     */
    public static final String INNER_CLASS_SEPARATOR = class_utils_1_expr2_line_68;

    /**
     * Maps primitive <code>Class</code>es to their corresponding wrapper <code>Class</code>.
     */
    private static final Map<Class<?>, Class<?>> primitiveWrapperMap = new HashMap<Class<?>, Class<?>>();
    static {
         int PROBE_START_LINE_75 = 75;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_397_line_75 = primitiveWrapperMap;
		Class<Boolean> q_type_1_line_75 = Boolean.TYPE;
		int PROBE_END_LINE_75 = 75;
		f_primitive_wrapper_map_397_line_75.put(q_type_1_line_75, Boolean.class);
         int PROBE_START_LINE_76 = 76;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_397_line_76 = primitiveWrapperMap;
		Class<Byte> q_type_2_line_76 = Byte.TYPE;
		int PROBE_END_LINE_76 = 76;
		f_primitive_wrapper_map_397_line_76.put(q_type_2_line_76, Byte.class);
         int PROBE_START_LINE_77 = 77;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_397_line_77 = primitiveWrapperMap;
		Class<Character> q_type_3_line_77 = Character.TYPE;
		int PROBE_END_LINE_77 = 77;
		f_primitive_wrapper_map_397_line_77.put(q_type_3_line_77, Character.class);
         int PROBE_START_LINE_78 = 78;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_397_line_78 = primitiveWrapperMap;
		Class<Short> q_type_4_line_78 = Short.TYPE;
		int PROBE_END_LINE_78 = 78;
		f_primitive_wrapper_map_397_line_78.put(q_type_4_line_78, Short.class);
         int PROBE_START_LINE_79 = 79;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_397_line_79 = primitiveWrapperMap;
		Class<Integer> q_type_5_line_79 = Integer.TYPE;
		int PROBE_END_LINE_79 = 79;
		f_primitive_wrapper_map_397_line_79.put(q_type_5_line_79, Integer.class);
         int PROBE_START_LINE_80 = 80;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_397_line_80 = primitiveWrapperMap;
		Class<Long> q_type_6_line_80 = Long.TYPE;
		int PROBE_END_LINE_80 = 80;
		f_primitive_wrapper_map_397_line_80.put(q_type_6_line_80, Long.class);
         int PROBE_START_LINE_81 = 81;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_397_line_81 = primitiveWrapperMap;
		Class<Double> q_type_7_line_81 = Double.TYPE;
		int PROBE_END_LINE_81 = 81;
		f_primitive_wrapper_map_397_line_81.put(q_type_7_line_81, Double.class);
         int PROBE_START_LINE_82 = 82;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_397_line_82 = primitiveWrapperMap;
		Class<Float> q_type_8_line_82 = Float.TYPE;
		int PROBE_END_LINE_82 = 82;
		f_primitive_wrapper_map_397_line_82.put(q_type_8_line_82, Float.class);
         int PROBE_START_LINE_83 = 83;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_397_line_83 = primitiveWrapperMap;
		Class<Void> q_type_9_line_83 = Void.TYPE;
		Class<Void> q_type_10_line_83 = Void.TYPE;
		int PROBE_END_LINE_83 = 83;
		f_primitive_wrapper_map_397_line_83.put(q_type_9_line_83, q_type_10_line_83);
    }

    /**
     * Maps wrapper <code>Class</code>es to their corresponding primitive types.
     */
    private static final Map<Class<?>, Class<?>> wrapperPrimitiveMap = new HashMap<Class<?>, Class<?>>();
    static {
        int PROBE_START_LINE_91 = 96;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_397_line_91 = primitiveWrapperMap;
		Set<Class<?>> class_utils_1_expr22_line_91 = f_primitive_wrapper_map_397_line_91.keySet();
		int PROBE_END_LINE_91 = 96;
		for (Class<?> primitiveClass : class_utils_1_expr22_line_91) {
            int PROBE_START_LINE_92 = 92;
			Map<Class<?>, Class<?>> f_primitive_wrapper_map_397_line_92 = primitiveWrapperMap;
			Class<?> v_primitive_class_399_line_92 = primitiveClass;
			Class<?> class_utils_1_expr23_line_92 = f_primitive_wrapper_map_397_line_92
					.get(v_primitive_class_399_line_92);
			int PROBE_END_LINE_92 = 92;
			Class<?> wrapperClass = class_utils_1_expr23_line_92;
            int PROBE_START_LINE_93 = 95;
			Class<?> v_primitive_class_399_line_93 = primitiveClass;
			Class<?> v_wrapper_class_400_line_93 = wrapperClass;
			boolean class_utils_1_expr25_line_93 = v_primitive_class_399_line_93.equals(v_wrapper_class_400_line_93);
			boolean class_utils_1_expr24_line_93 = !class_utils_1_expr25_line_93;
			int PROBE_END_LINE_93 = 95;
			if (class_utils_1_expr24_line_93) {
                int PROBE_START_LINE_94 = 94;
				Map<Class<?>, Class<?>> f_wrapper_primitive_map_398_line_94 = wrapperPrimitiveMap;
				Class<?> v_wrapper_class_400_line_94 = wrapperClass;
				Class<?> v_primitive_class_399_line_94 = primitiveClass;
				int PROBE_END_LINE_94 = 94;
				f_wrapper_primitive_map_398_line_94.put(v_wrapper_class_400_line_94, v_primitive_class_399_line_94);
            }
        }
    }

    /**
     * Maps a primitive class name to its corresponding abbreviation used in array class names.
     */
    private static final Map<String, String> abbreviationMap = new HashMap<String, String>();

    /**
     * Maps an abbreviation used in array class names to corresponding primitive class name.
     */
    private static final Map<String, String> reverseAbbreviationMap = new HashMap<String, String>();

    /**
     * Add primitive type abbreviation to maps of abbreviations.
     *
     * @param primitive Canonical name of primitive type
     * @param abbreviation Corresponding abbreviation of primitive type
     */
    private static void addAbbreviation(String primitive, String abbreviation) {
        int PROBE_START_LINE_116 = 116;
		Map<String, String> f_abbreviation_map_401_line_116 = abbreviationMap;
		String p_primitive_403_line_116 = primitive;
		String p_abbreviation_404_line_116 = abbreviation;
		int PROBE_END_LINE_116 = 116;
		f_abbreviation_map_401_line_116.put(p_primitive_403_line_116, p_abbreviation_404_line_116);
        int PROBE_START_LINE_117 = 117;
		Map<String, String> f_reverse_abbreviation_map_402_line_117 = reverseAbbreviationMap;
		String p_abbreviation_404_line_117 = abbreviation;
		String p_primitive_403_line_117 = primitive;
		int PROBE_END_LINE_117 = 117;
		f_reverse_abbreviation_map_402_line_117.put(p_abbreviation_404_line_117, p_primitive_403_line_117);
    }

    /**
     * Feed abbreviation maps
     */
    static {
        addAbbreviation("int", "I");
        addAbbreviation("boolean", "Z");
        addAbbreviation("float", "F");
        addAbbreviation("long", "J");
        addAbbreviation("short", "S");
        addAbbreviation("byte", "B");
        addAbbreviation("double", "D");
        addAbbreviation("char", "C");
    }

    /**
     * <p>ClassUtils instances should NOT be constructed in standard programming.
     * Instead, the class should be used as
     * <code>ClassUtils.getShortClassName(cls)</code>.</p>
     *
     * <p>This constructor is public to permit tools that require a JavaBean
     * instance to operate.</p>
     */
    public ClassUtils() {
      super();
    }

    // Short class name
    // ----------------------------------------------------------------------
    /**
     * <p>Gets the class name minus the package name for an <code>Object</code>.</p>
     *
     * @param object  the class to get the short name for, may be null
     * @param valueIfNull  the value to return if null
     * @return the class name of the object without the package name, or the null value
     */
    public static String getShortClassName(Object object, String valueIfNull) {
        if (object == null) {
            return valueIfNull;
        }
        return getShortClassName(object.getClass());
    }

    /**
     * <p>Gets the class name minus the package name from a <code>Class</code>.</p>
     *
     * @param cls  the class to get the short name for.
     * @return the class name without the package name or an empty string
     */
    public static String getShortClassName(Class<?> cls) {
        if (cls == null) {
            return StringUtils.EMPTY;
        }
        return getShortClassName(cls.getName());
    }

    /**
     * <p>Gets the class name minus the package name from a String.</p>
     *
     * <p>The string passed in is assumed to be a class name - it is not checked.</p>
     *
     * @param className  the className to get the short name for
     * @return the class name of the class without the package name or an empty string
     */
    public static String getShortClassName(String className) {
        if (className == null) {
            return StringUtils.EMPTY;
        }
        if (className.length() == 0) {
            return StringUtils.EMPTY;
        }

        StringBuilder arrayPrefix = new StringBuilder();

        // Handle array encoding
        if (className.startsWith("[")) {
            while (className.charAt(0) == '[') {
                className = className.substring(1);
                arrayPrefix.append("[]");
            }
            // Strip Object type encoding
            if (className.charAt(0) == 'L' && className.charAt(className.length() - 1) == ';') {
                className = className.substring(1, className.length() - 1);
            }
        }

        if (reverseAbbreviationMap.containsKey(className)) {
            className = reverseAbbreviationMap.get(className);
        }

        int lastDotIdx = className.lastIndexOf(PACKAGE_SEPARATOR_CHAR);
        int innerIdx = className.indexOf(
                INNER_CLASS_SEPARATOR_CHAR, lastDotIdx == -1 ? 0 : lastDotIdx + 1);
        String out = className.substring(lastDotIdx + 1);
        if (innerIdx != -1) {
            out = out.replace(INNER_CLASS_SEPARATOR_CHAR, PACKAGE_SEPARATOR_CHAR);
        }
        return out + arrayPrefix;
    }

    // Package name
    // ----------------------------------------------------------------------
    /**
     * <p>Gets the package name of an <code>Object</code>.</p>
     *
     * @param object  the class to get the package name for, may be null
     * @param valueIfNull  the value to return if null
     * @return the package name of the object, or the null value
     */
    public static String getPackageName(Object object, String valueIfNull) {
        if (object == null) {
            return valueIfNull;
        }
        return getPackageName(object.getClass());
    }

    /**
     * <p>Gets the package name of a <code>Class</code>.</p>
     *
     * @param cls  the class to get the package name for, may be <code>null</code>.
     * @return the package name or an empty string
     */
    public static String getPackageName(Class<?> cls) {
        if (cls == null) {
            return StringUtils.EMPTY;
        }
        return getPackageName(cls.getName());
    }

    /**
     * <p>Gets the package name from a <code>String</code>.</p>
     *
     * <p>The string passed in is assumed to be a class name - it is not checked.</p>
     * <p>If the class is unpackaged, return an empty string.</p>
     *
     * @param className  the className to get the package name for, may be <code>null</code>
     * @return the package name or an empty string
     */
    public static String getPackageName(String className) {
        if (className == null || className.length() == 0) {
            return StringUtils.EMPTY;
        }

        // Strip array encoding
        while (className.charAt(0) == '[') {
            className = className.substring(1);
        }
        // Strip Object type encoding
        if (className.charAt(0) == 'L' && className.charAt(className.length() - 1) == ';') {
            className = className.substring(1);
        }

        int i = className.lastIndexOf(PACKAGE_SEPARATOR_CHAR);
        if (i == -1) {
            return StringUtils.EMPTY;
        }
        return className.substring(0, i);
    }

    // Superclasses/Superinterfaces
    // ----------------------------------------------------------------------
    /**
     * <p>Gets a <code>List</code> of superclasses for the given class.</p>
     *
     * @param cls  the class to look up, may be <code>null</code>
     * @return the <code>List</code> of superclasses in order going up from this one
     *  <code>null</code> if null input
     */
    public static List<Class<?>> getAllSuperclasses(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        List<Class<?>> classes = new ArrayList<Class<?>>();
        Class<?> superclass = cls.getSuperclass();
        while (superclass != null) {
            classes.add(superclass);
            superclass = superclass.getSuperclass();
        }
        return classes;
    }

    /**
     * <p>Gets a <code>List</code> of all interfaces implemented by the given
     * class and its superclasses.</p>
     *
     * <p>The order is determined by looking through each interface in turn as
     * declared in the source file and following its hierarchy up. Then each
     * superclass is considered in the same way. Later duplicates are ignored,
     * so the order is maintained.</p>
     *
     * @param cls  the class to look up, may be <code>null</code>
     * @return the <code>List</code> of interfaces in order,
     *  <code>null</code> if null input
     */
    public static List<Class<?>> getAllInterfaces(Class<?> cls) {
        if (cls == null) {
            return null;
        }

        LinkedHashSet<Class<?>> interfacesFound = new LinkedHashSet<Class<?>>();
        getAllInterfaces(cls, interfacesFound);

        return new ArrayList<Class<?>>(interfacesFound);
    }

    /**
     * Get the interfaces for the specified class.
     *
     * @param cls  the class to look up, may be <code>null</code>
     * @param interfacesFound the <code>Set</code> of interfaces for the class
     */
    private static void getAllInterfaces(Class<?> cls, HashSet<Class<?>> interfacesFound) {
        while (cls != null) {
            Class<?>[] interfaces = cls.getInterfaces();

            for (Class<?> i : interfaces) {
                if (interfacesFound.add(i)) {
                    getAllInterfaces(i, interfacesFound);
                }
            }

            cls = cls.getSuperclass();
         }
     }

    // Convert list
    // ----------------------------------------------------------------------
    /**
     * <p>Given a <code>List</code> of class names, this method converts them into classes.</p>
     *
     * <p>A new <code>List</code> is returned. If the class name cannot be found, <code>null</code>
     * is stored in the <code>List</code>. If the class name in the <code>List</code> is
     * <code>null</code>, <code>null</code> is stored in the output <code>List</code>.</p>
     *
     * @param classNames  the classNames to change
     * @return a <code>List</code> of Class objects corresponding to the class names,
     *  <code>null</code> if null input
     * @throws ClassCastException if classNames contains a non String entry
     */
    public static List<Class<?>> convertClassNamesToClasses(List<String> classNames) {
        if (classNames == null) {
            return null;
        }
        List<Class<?>> classes = new ArrayList<Class<?>>(classNames.size());
        for (String className : classNames) {
            try {
                classes.add(Class.forName(className));
            } catch (Exception ex) {
                classes.add(null);
            }
        }
        return classes;
    }

    /**
     * <p>Given a <code>List</code> of <code>Class</code> objects, this method converts
     * them into class names.</p>
     *
     * <p>A new <code>List</code> is returned. <code>null</code> objects will be copied into
     * the returned list as <code>null</code>.</p>
     *
     * @param classes  the classes to change
     * @return a <code>List</code> of class names corresponding to the Class objects,
     *  <code>null</code> if null input
     * @throws ClassCastException if <code>classes</code> contains a non-<code>Class</code> entry
     */
    public static List<String> convertClassesToClassNames(List<Class<?>> classes) {
        if (classes == null) {
            return null;
        }
        List<String> classNames = new ArrayList<String>(classes.size());
        for (Class<?> cls : classes) {
            if (cls == null) {
                classNames.add(null);
            } else {
                classNames.add(cls.getName());
            }
        }
        return classNames;
    }

    // Is assignable
    // ----------------------------------------------------------------------
    /**
     * <p>Checks if an array of Classes can be assigned to another array of Classes.</p>
     *
     * <p>This method calls {@link #isAssignable(Class, Class) isAssignable} for each
     * Class pair in the input arrays. It can be used to check if a set of arguments
     * (the first parameter) are suitably compatible with a set of method parameter types
     * (the second parameter).</p>
     *
     * <p>Unlike the {@link Class#isAssignableFrom(java.lang.Class)} method, this
     * method takes into account widenings of primitive classes and
     * <code>null</code>s.</p>
     *
     * <p>Primitive widenings allow an int to be assigned to a <code>long</code>,
     * <code>float</code> or <code>double</code>. This method returns the correct
     * result for these cases.</p>
     *
     * <p><code>Null</code> may be assigned to any reference type. This method will
     * return <code>true</code> if <code>null</code> is passed in and the toClass is
     * non-primitive.</p>
     *
     * <p>Specifically, this method tests whether the type represented by the
     * specified <code>Class</code> parameter can be converted to the type
     * represented by this <code>Class</code> object via an identity conversion
     * widening primitive or widening reference conversion. See
     * <em><a href="http://java.sun.com/docs/books/jls/">The Java Language Specification</a></em>,
     * sections 5.1.1, 5.1.2 and 5.1.4 for details.</p>
     *
     * <p><strong>Since Lang 3.0,</strong> this method will default behavior for
     * calculating assignability between primitive and wrapper types <em>corresponding
     * to the running Java version</em>; i.e. autoboxing will be the default
     * behavior in VMs running Java versions >= 1.5.</p>
     *
     * @param classArray  the array of Classes to check, may be <code>null</code>
     * @param toClassArray  the array of Classes to try to assign into, may be <code>null</code>
     * @return <code>true</code> if assignment possible
     */
    public static boolean isAssignable(Class<?>[] classArray, Class<?>[] toClassArray) {
        return isAssignable(classArray, toClassArray, SystemUtils.isJavaVersionAtLeast(1.5f));
    }

    /**
     * <p>Checks if an array of Classes can be assigned to another array of Classes.</p>
     *
     * <p>This method calls {@link #isAssignable(Class, Class) isAssignable} for each
     * Class pair in the input arrays. It can be used to check if a set of arguments
     * (the first parameter) are suitably compatible with a set of method parameter types
     * (the second parameter).</p>
     *
     * <p>Unlike the {@link Class#isAssignableFrom(java.lang.Class)} method, this
     * method takes into account widenings of primitive classes and
     * <code>null</code>s.</p>
     *
     * <p>Primitive widenings allow an int to be assigned to a <code>long</code>,
     * <code>float</code> or <code>double</code>. This method returns the correct
     * result for these cases.</p>
     *
     * <p><code>Null</code> may be assigned to any reference type. This method will
     * return <code>true</code> if <code>null</code> is passed in and the toClass is
     * non-primitive.</p>
     *
     * <p>Specifically, this method tests whether the type represented by the
     * specified <code>Class</code> parameter can be converted to the type
     * represented by this <code>Class</code> object via an identity conversion
     * widening primitive or widening reference conversion. See
     * <em><a href="http://java.sun.com/docs/books/jls/">The Java Language Specification</a></em>,
     * sections 5.1.1, 5.1.2 and 5.1.4 for details.</p>
     *
     * @param classArray  the array of Classes to check, may be <code>null</code>
     * @param toClassArray  the array of Classes to try to assign into, may be <code>null</code>
     * @param autoboxing  whether to use implicit autoboxing/unboxing between primitives and wrappers
     * @return <code>true</code> if assignment possible
     */
    public static boolean isAssignable(Class<?>[] classArray, Class<?>[] toClassArray, boolean autoboxing) {
        if (ArrayUtils.isSameLength(classArray, toClassArray) == false) {
            return false;
        }
        if (classArray == null) {
            classArray = ArrayUtils.EMPTY_CLASS_ARRAY;
        }
        if (toClassArray == null) {
            toClassArray = ArrayUtils.EMPTY_CLASS_ARRAY;
        }
        for (int i = 0; i < classArray.length; i++) {
            if (isAssignable(classArray[i], toClassArray[i], autoboxing) == false) {
                return false;
            }
        }
        return true;
    }

    /**
     * <p>Checks if one <code>Class</code> can be assigned to a variable of
     * another <code>Class</code>.</p>
     *
     * <p>Unlike the {@link Class#isAssignableFrom(java.lang.Class)} method,
     * this method takes into account widenings of primitive classes and
     * <code>null</code>s.</p>
     *
     * <p>Primitive widenings allow an int to be assigned to a long, float or
     * double. This method returns the correct result for these cases.</p>
     *
     * <p><code>Null</code> may be assigned to any reference type. This method
     * will return <code>true</code> if <code>null</code> is passed in and the
     * toClass is non-primitive.</p>
     *
     * <p>Specifically, this method tests whether the type represented by the
     * specified <code>Class</code> parameter can be converted to the type
     * represented by this <code>Class</code> object via an identity conversion
     * widening primitive or widening reference conversion. See
     * <em><a href="http://java.sun.com/docs/books/jls/">The Java Language Specification</a></em>,
     * sections 5.1.1, 5.1.2 and 5.1.4 for details.</p>
     *
     * <p><strong>Since Lang 3.0,</strong> this method will default behavior for
     * calculating assignability between primitive and wrapper types <em>corresponding
     * to the running Java version</em>; i.e. autoboxing will be the default
     * behavior in VMs running Java versions >= 1.5.</p>
     *
     * @param cls  the Class to check, may be null
     * @param toClass  the Class to try to assign into, returns false if null
     * @return <code>true</code> if assignment possible
     */
    public static boolean isAssignable(Class<?> cls, Class<?> toClass) {
        return isAssignable(cls, toClass, SystemUtils.isJavaVersionAtLeast(1.5f));
    }

    /**
     * <p>Checks if one <code>Class</code> can be assigned to a variable of
     * another <code>Class</code>.</p>
     *
     * <p>Unlike the {@link Class#isAssignableFrom(java.lang.Class)} method,
     * this method takes into account widenings of primitive classes and
     * <code>null</code>s.</p>
     *
     * <p>Primitive widenings allow an int to be assigned to a long, float or
     * double. This method returns the correct result for these cases.</p>
     *
     * <p><code>Null</code> may be assigned to any reference type. This method
     * will return <code>true</code> if <code>null</code> is passed in and the
     * toClass is non-primitive.</p>
     *
     * <p>Specifically, this method tests whether the type represented by the
     * specified <code>Class</code> parameter can be converted to the type
     * represented by this <code>Class</code> object via an identity conversion
     * widening primitive or widening reference conversion. See
     * <em><a href="http://java.sun.com/docs/books/jls/">The Java Language Specification</a></em>,
     * sections 5.1.1, 5.1.2 and 5.1.4 for details.</p>
     *
     * @param cls  the Class to check, may be null
     * @param toClass  the Class to try to assign into, returns false if null
     * @param autoboxing  whether to use implicit autoboxing/unboxing between primitives and wrappers
     * @return <code>true</code> if assignment possible
     */
    public static boolean isAssignable(Class<?> cls, Class<?> toClass, boolean autoboxing) {
        if (toClass == null) {
            return false;
        }
        // have to check for null, as isAssignableFrom doesn't
        if (cls == null) {
            return !(toClass.isPrimitive());
        }
        //autoboxing:
        if (autoboxing) {
            if (cls.isPrimitive() && !toClass.isPrimitive()) {
                cls = primitiveToWrapper(cls);
                if (cls == null) {
                    return false;
                }
            }
            if (toClass.isPrimitive() && !cls.isPrimitive()) {
                cls = wrapperToPrimitive(cls);
                if (cls == null) {
                    return false;
                }
            }
        }
        if (cls.equals(toClass)) {
            return true;
        }
        if (cls.isPrimitive()) {
            if (toClass.isPrimitive() == false) {
                return false;
            }
            if (Integer.TYPE.equals(cls)) {
                return Long.TYPE.equals(toClass)
                    || Float.TYPE.equals(toClass)
                    || Double.TYPE.equals(toClass);
            }
            if (Long.TYPE.equals(cls)) {
                return Float.TYPE.equals(toClass)
                    || Double.TYPE.equals(toClass);
            }
            if (Boolean.TYPE.equals(cls)) {
                return false;
            }
            if (Double.TYPE.equals(cls)) {
                return false;
            }
            if (Float.TYPE.equals(cls)) {
                return Double.TYPE.equals(toClass);
            }
            if (Character.TYPE.equals(cls)) {
                return Integer.TYPE.equals(toClass)
                    || Long.TYPE.equals(toClass)
                    || Float.TYPE.equals(toClass)
                    || Double.TYPE.equals(toClass);
            }
            if (Short.TYPE.equals(cls)) {
                return Integer.TYPE.equals(toClass)
                    || Long.TYPE.equals(toClass)
                    || Float.TYPE.equals(toClass)
                    || Double.TYPE.equals(toClass);
            }
            if (Byte.TYPE.equals(cls)) {
                return Short.TYPE.equals(toClass)
                    || Integer.TYPE.equals(toClass)
                    || Long.TYPE.equals(toClass)
                    || Float.TYPE.equals(toClass)
                    || Double.TYPE.equals(toClass);
            }
            // should never get here
            return false;
        }
        return toClass.isAssignableFrom(cls);
    }

    /**
     * <p>Converts the specified primitive Class object to its corresponding
     * wrapper Class object.</p>
     *
     * <p>NOTE: From v2.2, this method handles <code>Void.TYPE</code>,
     * returning <code>Void.TYPE</code>.</p>
     *
     * @param cls  the class to convert, may be null
     * @return the wrapper class for <code>cls</code> or <code>cls</code> if
     * <code>cls</code> is not a primitive. <code>null</code> if null input.
     * @since 2.1
     */
    public static Class<?> primitiveToWrapper(Class<?> cls) {
        Class<?> convertedClass = cls;
        if (cls != null && cls.isPrimitive()) {
            convertedClass = primitiveWrapperMap.get(cls);
        }
        return convertedClass;
    }

    /**
     * <p>Converts the specified array of primitive Class objects to an array of
     * its corresponding wrapper Class objects.</p>
     *
     * @param classes  the class array to convert, may be null or empty
     * @return an array which contains for each given class, the wrapper class or
     * the original class if class is not a primitive. <code>null</code> if null input.
     * Empty array if an empty array passed in.
     * @since 2.1
     */
    public static Class<?>[] primitivesToWrappers(Class<?>[] classes) {
        if (classes == null) {
            return null;
        }

        if (classes.length == 0) {
            return classes;
        }

        Class<?>[] convertedClasses = new Class[classes.length];
        for (int i = 0; i < classes.length; i++) {
            convertedClasses[i] = primitiveToWrapper(classes[i]);
        }
        return convertedClasses;
    }

    /**
     * <p>Converts the specified wrapper class to its corresponding primitive
     * class.</p>
     *
     * <p>This method is the counter part of <code>primitiveToWrapper()</code>.
     * If the passed in class is a wrapper class for a primitive type, this
     * primitive type will be returned (e.g. <code>Integer.TYPE</code> for
     * <code>Integer.class</code>). For other classes, or if the parameter is
     * <b>null</b>, the return value is <b>null</b>.</p>
     *
     * @param cls the class to convert, may be <b>null</b>
     * @return the corresponding primitive type if <code>cls</code> is a
     * wrapper class, <b>null</b> otherwise
     * @see #primitiveToWrapper(Class)
     * @since 2.4
     */
    public static Class<?> wrapperToPrimitive(Class<?> cls) {
        return wrapperPrimitiveMap.get(cls);
    }

    /**
     * <p>Converts the specified array of wrapper Class objects to an array of
     * its corresponding primitive Class objects.</p>
     *
     * <p>This method invokes <code>wrapperToPrimitive()</code> for each element
     * of the passed in array.</p>
     *
     * @param classes  the class array to convert, may be null or empty
     * @return an array which contains for each given class, the primitive class or
     * <b>null</b> if the original class is not a wrapper class. <code>null</code> if null input.
     * Empty array if an empty array passed in.
     * @see #wrapperToPrimitive(Class)
     * @since 2.4
     */
    public static Class<?>[] wrappersToPrimitives(Class<?>[] classes) {
        if (classes == null) {
            return null;
        }

        if (classes.length == 0) {
            return classes;
        }

        Class<?>[] convertedClasses = new Class[classes.length];
        for (int i = 0; i < classes.length; i++) {
            convertedClasses[i] = wrapperToPrimitive(classes[i]);
        }
        return convertedClasses;
    }

    // Inner class
    // ----------------------------------------------------------------------
    /**
     * <p>Is the specified class an inner class or static nested class.</p>
     *
     * @param cls  the class to check, may be null
     * @return <code>true</code> if the class is an inner or static nested class,
     *  false if not or <code>null</code>
     */
    public static boolean isInnerClass(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        return cls.getName().indexOf(INNER_CLASS_SEPARATOR_CHAR) >= 0;
    }

    // Class loading
    // ----------------------------------------------------------------------
    /**
     * Returns the class represented by <code>className</code> using the
     * <code>classLoader</code>.  This implementation supports names like
     * "<code>java.lang.String[]</code>" as well as "<code>[Ljava.lang.String;</code>".
     *
     * @param classLoader  the class loader to use to load the class
     * @param className  the class name
     * @param initialize  whether the class must be initialized
     * @return the class represented by <code>className</code> using the <code>classLoader</code>
     * @throws ClassNotFoundException if the class is not found
     */
    public static Class<?> getClass(
            ClassLoader classLoader, String className, boolean initialize) throws ClassNotFoundException {
        Class<?> clazz;
        if (abbreviationMap.containsKey(className)) {
            String clsName = "[" + abbreviationMap.get(className);
            clazz = Class.forName(clsName, initialize, classLoader).getComponentType();
        } else {
            clazz = Class.forName(toCanonicalName(className), initialize, classLoader);
        }
        return clazz;
    }

    /**
     * Returns the (initialized) class represented by <code>className</code>
     * using the <code>classLoader</code>.  This implementation supports names
     * like "<code>java.lang.String[]</code>" as well as
     * "<code>[Ljava.lang.String;</code>".
     *
     * @param classLoader  the class loader to use to load the class
     * @param className  the class name
     * @return the class represented by <code>className</code> using the <code>classLoader</code>
     * @throws ClassNotFoundException if the class is not found
     */
    public static Class<?> getClass(ClassLoader classLoader, String className) throws ClassNotFoundException {
        return getClass(classLoader, className, true);
    }

    /**
     * Returns the (initialized) class represented by <code>className</code>
     * using the current thread's context class loader. This implementation
     * supports names like "<code>java.lang.String[]</code>" as well as
     * "<code>[Ljava.lang.String;</code>".
     *
     * @param className  the class name
     * @return the class represented by <code>className</code> using the current thread's context class loader
     * @throws ClassNotFoundException if the class is not found
     */
    public static Class<?> getClass(String className) throws ClassNotFoundException {
        return getClass(className, true);
    }

    /**
     * Returns the class represented by <code>className</code> using the
     * current thread's context class loader. This implementation supports
     * names like "<code>java.lang.String[]</code>" as well as
     * "<code>[Ljava.lang.String;</code>".
     *
     * @param className  the class name
     * @param initialize  whether the class must be initialized
     * @return the class represented by <code>className</code> using the current thread's context class loader
     * @throws ClassNotFoundException if the class is not found
     */
    public static Class<?> getClass(String className, boolean initialize) throws ClassNotFoundException {
        ClassLoader contextCL = Thread.currentThread().getContextClassLoader();
        ClassLoader loader = contextCL == null ? ClassUtils.class.getClassLoader() : contextCL;
        return getClass(loader, className, initialize );
    }

    // Public method
    // ----------------------------------------------------------------------
    /**
     * <p>Returns the desired Method much like <code>Class.getMethod</code>, however
     * it ensures that the returned Method is from a public class or interface and not
     * from an anonymous inner class. This means that the Method is invokable and
     * doesn't fall foul of Java bug
     * <a href="http://bugs.sun.com/bugdatabase/view_bug.do?bug_id=4071957">4071957</a>).
     *
     *  <code><pre>Set set = Collections.unmodifiableSet(...);
     *  Method method = ClassUtils.getPublicMethod(set.getClass(), "isEmpty",  new Class[0]);
     *  Object result = method.invoke(set, new Object[]);</pre></code>
     * </p>
     *
     * @param cls  the class to check, not null
     * @param methodName  the name of the method
     * @param parameterTypes  the list of parameters
     * @return the method
     * @throws NullPointerException if the class is null
     * @throws SecurityException if a a security violation occured
     * @throws NoSuchMethodException if the method is not found in the given class
     *  or if the metothod doen't conform with the requirements
     */
    public static Method getPublicMethod(Class<?> cls, String methodName, Class<?> parameterTypes[])
            throws SecurityException, NoSuchMethodException {

        Method declaredMethod = cls.getMethod(methodName, parameterTypes);
        if (Modifier.isPublic(declaredMethod.getDeclaringClass().getModifiers())) {
            return declaredMethod;
        }

        List<Class<?>> candidateClasses = new ArrayList<Class<?>>();
        candidateClasses.addAll(getAllInterfaces(cls));
        candidateClasses.addAll(getAllSuperclasses(cls));

        for (Class<?> candidateClass : candidateClasses) {
            if (!Modifier.isPublic(candidateClass.getModifiers())) {
                continue;
            }
            Method candidateMethod;
            try {
                candidateMethod = candidateClass.getMethod(methodName, parameterTypes);
            } catch (NoSuchMethodException ex) {
                continue;
            }
            if (Modifier.isPublic(candidateMethod.getDeclaringClass().getModifiers())) {
                return candidateMethod;
            }
        }

        throw new NoSuchMethodException("Can't find a public method for " +
                methodName + " " + ArrayUtils.toString(parameterTypes));
    }

    // ----------------------------------------------------------------------
    /**
     * Converts a class name to a JLS style class name.
     *
     * @param className  the class name
     * @return the converted name
     */
    private static String toCanonicalName(String className) {
        className = StringUtils.deleteWhitespace(className);
        if (className == null) {
            throw new NullPointerException("className must not be null.");
        } else if (className.endsWith("[]")) {
            StringBuilder classNameBuffer = new StringBuilder();
            while (className.endsWith("[]")) {
                className = className.substring(0, className.length() - 2);
                classNameBuffer.append("[");
            }
            String abbreviation = abbreviationMap.get(className);
            if (abbreviation != null) {
                classNameBuffer.append(abbreviation);
            } else {
                classNameBuffer.append("L").append(className).append(";");
            }
            className = classNameBuffer.toString();
        }
        return className;
    }

    /**
     * <p>Converts an array of <code>Object</code> in to an array of <code>Class</code> objects.
     * If any of these objects is null, a null element will be inserted into the array.</p>
     *
     * <p>This method returns <code>null</code> for a <code>null</code> input array.</p>
     *
     * @param array an <code>Object</code> array
     * @return a <code>Class</code> array, <code>null</code> if null array input
     * @since 2.4
     */
    public static Class<?>[] toClass(Object[] array) {
        int PROBE_START_LINE_903 = 907;
		Object[] p_array_446_line_903 = array;
		boolean class_utils_1_expr39_line_903 = p_array_446_line_903 == null;
		int PROBE_END_LINE_903 = 907;
		if (class_utils_1_expr39_line_903) {
            return null;
        } else {
			int PROBE_START_LINE_905 = 907;
			Object[] p_array_446_line_905 = array;
			int q_length_10_line_905 = p_array_446_line_905.length;
			boolean class_utils_1_expr40_line_905 = q_length_10_line_905 == 0;
			int PROBE_END_LINE_905 = 907;
			if (class_utils_1_expr40_line_905) {
				int PROBE_START_LINE_906 = 906;
				Class<?>[] q_empty_class_array_11_line_906 = ArrayUtils.EMPTY_CLASS_ARRAY;
				int PROBE_END_LINE_906 = 906;
				return q_empty_class_array_11_line_906;
			}
		}
        int PROBE_START_LINE_908 = 908;
		Object[] p_array_446_line_908 = array;
		int q_length_12_line_908 = p_array_446_line_908.length;
		int PROBE_END_LINE_908 = 908;
		Class<?>[] classes = new Class[q_length_12_line_908];
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_910 = 910;
			int v_i_448_line_909 = i;
			Object[] p_array_446_line_909 = array;
			int q_length_12_line_909 = p_array_446_line_909.length;
			boolean class_utils_1_expr43_line_909 = v_i_448_line_909 < q_length_12_line_909;
			if (!(class_utils_1_expr43_line_909)) {
				break;
			}
			Class<?>[] v_classes_447_line_910 = classes;
			int v_i_448_line_910 = i;
			Object[] p_array_446_line_910 = array;
			int v_i_448_line_910_v1 = i;
			Object class_utils_1_expr48_line_910 = p_array_446_line_910[v_i_448_line_910_v1];
			Class<? extends Object> class_utils_1_expr47_line_910 = class_utils_1_expr48_line_910.getClass();
			int PROBE_END_LINE_910 = 910;
			v_classes_447_line_910[v_i_448_line_910] = class_utils_1_expr47_line_910;
        }
        int PROBE_START_LINE_912 = 912;
		Class<?>[] v_classes_447_line_912 = classes;
		int PROBE_END_LINE_912 = 912;
		return v_classes_447_line_912;
    }

    // Short canonical name
    // ----------------------------------------------------------------------
    /**
     * <p>Gets the canonical name minus the package name for an <code>Object</code>.</p>
     *
     * @param object  the class to get the short name for, may be null
     * @param valueIfNull  the value to return if null
     * @return the canonical name of the object without the package name, or the null value
     * @since 2.4
     */
    public static String getShortCanonicalName(Object object, String valueIfNull) {
        if (object == null) {
            return valueIfNull;
        }
        return getShortCanonicalName(object.getClass().getName());
    }

    /**
     * <p>Gets the canonical name minus the package name from a <code>Class</code>.</p>
     *
     * @param cls  the class to get the short name for.
     * @return the canonical name without the package name or an empty string
     * @since 2.4
     */
    public static String getShortCanonicalName(Class<?> cls) {
        if (cls == null) {
            return StringUtils.EMPTY;
        }
        return getShortCanonicalName(cls.getName());
    }

    /**
     * <p>Gets the canonical name minus the package name from a String.</p>
     *
     * <p>The string passed in is assumed to be a canonical name - it is not checked.</p>
     *
     * @param canonicalName  the class name to get the short name for
     * @return the canonical name of the class without the package name or an empty string
     * @since 2.4
     */
    public static String getShortCanonicalName(String canonicalName) {
        return ClassUtils.getShortClassName(getCanonicalName(canonicalName));
    }

    // Package name
    // ----------------------------------------------------------------------
    /**
     * <p>Gets the package name from the canonical name of an <code>Object</code>.</p>
     *
     * @param object  the class to get the package name for, may be null
     * @param valueIfNull  the value to return if null
     * @return the package name of the object, or the null value
     * @since 2.4
     */
    public static String getPackageCanonicalName(Object object, String valueIfNull) {
        if (object == null) {
            return valueIfNull;
        }
        return getPackageCanonicalName(object.getClass().getName());
    }

    /**
     * <p>Gets the package name from the canonical name of a <code>Class</code>.</p>
     *
     * @param cls  the class to get the package name for, may be <code>null</code>.
     * @return the package name or an empty string
     * @since 2.4
     */
    public static String getPackageCanonicalName(Class<?> cls) {
        if (cls == null) {
            return StringUtils.EMPTY;
        }
        return getPackageCanonicalName(cls.getName());
    }

    /**
     * <p>Gets the package name from the canonical name. </p>
     *
     * <p>The string passed in is assumed to be a canonical name - it is not checked.</p>
     * <p>If the class is unpackaged, return an empty string.</p>
     *
     * @param canonicalName  the canonical name to get the package name for, may be <code>null</code>
     * @return the package name or an empty string
     * @since 2.4
     */
    public static String getPackageCanonicalName(String canonicalName) {
        return ClassUtils.getPackageName(getCanonicalName(canonicalName));
    }

    /**
     * <p>Converts a given name of class into canonical format.
     * If name of class is not a name of array class it returns
     * unchanged name.</p>
     * <p>Example:
     * <ul>
     * <li><code>getCanonicalName("[I") = "int[]"</code></li>
     * <li><code>getCanonicalName("[Ljava.lang.String;") = "java.lang.String[]"</code></li>
     * <li><code>getCanonicalName("java.lang.String") = "java.lang.String"</code></li>
     * </ul>
     * </p>
     *
     * @param className the name of class
     * @return canonical form of class name
     * @since 2.4
     */
    private static String getCanonicalName(String className) {
        className = StringUtils.deleteWhitespace(className);
        if (className == null) {
            return null;
        } else {
            int dim = 0;
            while (className.startsWith("[")) {
                dim++;
                className = className.substring(1);
            }
            if (dim < 1) {
                return className;
            } else {
                if (className.startsWith("L")) {
                    className = className.substring(
                        1,
                        className.endsWith(";")
                            ? className.length() - 1
                            : className.length());
                } else {
                    if (className.length() > 0) {
                        className = reverseAbbreviationMap.get(className.substring(0, 1));
                    }
                }
                StringBuilder canonicalClassNameBuffer = new StringBuilder(className);
                for (int i = 0; i < dim; i++) {
                    canonicalClassNameBuffer.append("[]");
                }
                return canonicalClassNameBuffer.toString();
            }
        }
    }
}
