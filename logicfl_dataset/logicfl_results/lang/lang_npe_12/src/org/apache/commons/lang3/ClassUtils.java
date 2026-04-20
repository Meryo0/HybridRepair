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
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang3.mutable.MutableObject;
import java.util.Map.Entry;

/**
 * <p>Operates on classes without using reflection.</p>
 *
 * <p>This class handles invalid {@code null} inputs as best it can.
 * Each method documents its behaviour in more detail.</p>
 *
 * <p>The notion of a {@code canonical name} includes the human
 * readable name for the type, for example {@code int[]}. The
 * non-canonical method variants work with the JVM names, such as
 * {@code [I}. </p>
 *
 * @since 2.0
 */
public class ClassUtils {
    /**
     * Inclusivity literals for {@link #hierarchy(Class, Interfaces)}.
     * @since 3.2
     */
    public enum Interfaces {
        INCLUDE, EXCLUDE
    }

    /**
     * The package separator character: <code>'&#x2e;' == {@value}</code>.
     */
    public static final char PACKAGE_SEPARATOR_CHAR = '.';

    int PROBE_START_LINE_60 = 63;

	public static final char f_package_separator_char_2_line_63 = PACKAGE_SEPARATOR_CHAR;

	public static final String class_utils_1_expr1_line_63 = String.valueOf(f_package_separator_char_2_line_63);

	int PROBE_END_LINE_60 = 63;

	/**
     * The package separator String: <code>"&#x2e;"</code>.
     */
    public static final String PACKAGE_SEPARATOR = class_utils_1_expr1_line_63;

    /**
     * The inner class separator character: <code>'$' == {@value}</code>.
     */
    public static final char INNER_CLASS_SEPARATOR_CHAR = '$';

    int PROBE_START_LINE_70 = 73;

	public static final char f_inner_class_separator_char_4_line_73 = INNER_CLASS_SEPARATOR_CHAR;

	public static final String class_utils_1_expr2_line_73 = String.valueOf(f_inner_class_separator_char_4_line_73);

	int PROBE_END_LINE_70 = 73;

	/**
     * The inner class separator String: {@code "$"}.
     */
    public static final String INNER_CLASS_SEPARATOR = class_utils_1_expr2_line_73;

    /**
     * Maps primitive {@code Class}es to their corresponding wrapper {@code Class}.
     */
    private static final Map<Class<?>, Class<?>> primitiveWrapperMap = new HashMap<Class<?>, Class<?>>();
    static {
         int PROBE_START_LINE_80 = 80;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_5_line_80 = primitiveWrapperMap;
		Class<Boolean> q_type_1_line_80 = Boolean.TYPE;
		int PROBE_END_LINE_80 = 80;
		f_primitive_wrapper_map_5_line_80.put(q_type_1_line_80, Boolean.class);
         int PROBE_START_LINE_81 = 81;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_5_line_81 = primitiveWrapperMap;
		Class<Byte> q_type_2_line_81 = Byte.TYPE;
		int PROBE_END_LINE_81 = 81;
		f_primitive_wrapper_map_5_line_81.put(q_type_2_line_81, Byte.class);
         int PROBE_START_LINE_82 = 82;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_5_line_82 = primitiveWrapperMap;
		Class<Character> q_type_3_line_82 = Character.TYPE;
		int PROBE_END_LINE_82 = 82;
		f_primitive_wrapper_map_5_line_82.put(q_type_3_line_82, Character.class);
         int PROBE_START_LINE_83 = 83;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_5_line_83 = primitiveWrapperMap;
		Class<Short> q_type_4_line_83 = Short.TYPE;
		int PROBE_END_LINE_83 = 83;
		f_primitive_wrapper_map_5_line_83.put(q_type_4_line_83, Short.class);
         int PROBE_START_LINE_84 = 84;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_5_line_84 = primitiveWrapperMap;
		Class<Integer> q_type_5_line_84 = Integer.TYPE;
		int PROBE_END_LINE_84 = 84;
		f_primitive_wrapper_map_5_line_84.put(q_type_5_line_84, Integer.class);
         int PROBE_START_LINE_85 = 85;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_5_line_85 = primitiveWrapperMap;
		Class<Long> q_type_6_line_85 = Long.TYPE;
		int PROBE_END_LINE_85 = 85;
		f_primitive_wrapper_map_5_line_85.put(q_type_6_line_85, Long.class);
         int PROBE_START_LINE_86 = 86;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_5_line_86 = primitiveWrapperMap;
		Class<Double> q_type_7_line_86 = Double.TYPE;
		int PROBE_END_LINE_86 = 86;
		f_primitive_wrapper_map_5_line_86.put(q_type_7_line_86, Double.class);
         int PROBE_START_LINE_87 = 87;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_5_line_87 = primitiveWrapperMap;
		Class<Float> q_type_8_line_87 = Float.TYPE;
		int PROBE_END_LINE_87 = 87;
		f_primitive_wrapper_map_5_line_87.put(q_type_8_line_87, Float.class);
         int PROBE_START_LINE_88 = 88;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_5_line_88 = primitiveWrapperMap;
		Class<Void> q_type_9_line_88 = Void.TYPE;
		Class<Void> q_type_10_line_88 = Void.TYPE;
		int PROBE_END_LINE_88 = 88;
		f_primitive_wrapper_map_5_line_88.put(q_type_9_line_88, q_type_10_line_88);
    }

    /**
     * Maps wrapper {@code Class}es to their corresponding primitive types.
     */
    private static final Map<Class<?>, Class<?>> wrapperPrimitiveMap = new HashMap<Class<?>, Class<?>>();
    static {
        int PROBE_START_LINE_96 = 102;
		Map<Class<?>, Class<?>> f_primitive_wrapper_map_5_line_96 = primitiveWrapperMap;
		Set<java.util.Map.Entry<Class<?>, Class<?>>> class_utils_1_expr22_line_96 = f_primitive_wrapper_map_5_line_96
				.entrySet();
		int PROBE_END_LINE_96 = 102;
		for (final Map.Entry<Class<?>, Class<?>> entry : class_utils_1_expr22_line_96) {
            int PROBE_START_LINE_97 = 97;
			java.util.Map.Entry<Class<?>, Class<?>> v_entry_7_line_97 = entry;
			Class<?> class_utils_1_expr23_line_97 = v_entry_7_line_97.getKey();
			int PROBE_END_LINE_97 = 97;
			final Class<?> primitiveClass = class_utils_1_expr23_line_97;
            int PROBE_START_LINE_98 = 98;
			java.util.Map.Entry<Class<?>, Class<?>> v_entry_7_line_98 = entry;
			Class<?> class_utils_1_expr24_line_98 = v_entry_7_line_98.getValue();
			int PROBE_END_LINE_98 = 98;
			final Class<?> wrapperClass = class_utils_1_expr24_line_98;
            int PROBE_START_LINE_99 = 101;
			Class<?> v_primitive_class_8_line_99 = primitiveClass;
			Class<?> v_wrapper_class_9_line_99 = wrapperClass;
			boolean class_utils_1_expr26_line_99 = v_primitive_class_8_line_99.equals(v_wrapper_class_9_line_99);
			boolean class_utils_1_expr25_line_99 = !class_utils_1_expr26_line_99;
			int PROBE_END_LINE_99 = 101;
			if (class_utils_1_expr25_line_99) {
                int PROBE_START_LINE_100 = 100;
				Map<Class<?>, Class<?>> f_wrapper_primitive_map_6_line_100 = wrapperPrimitiveMap;
				Class<?> v_wrapper_class_9_line_100 = wrapperClass;
				Class<?> v_primitive_class_8_line_100 = primitiveClass;
				int PROBE_END_LINE_100 = 100;
				f_wrapper_primitive_map_6_line_100.put(v_wrapper_class_9_line_100, v_primitive_class_8_line_100);
            }
        }
    }

    /**
     * Maps a primitive class name to its corresponding abbreviation used in array class names.
     */
    private static final Map<String, String> abbreviationMap;

    /**
     * Maps an abbreviation used in array class names to corresponding primitive class name.
     */
    private static final Map<String, String> reverseAbbreviationMap;

    /**
     * Feed abbreviation maps
     */
    static {
        final Map<String, String> m = new HashMap<String, String>();
        int PROBE_START_LINE_120 = 120;
		Map<String, String> v_m_10_line_120 = m;
		int PROBE_END_LINE_120 = 120;
		v_m_10_line_120.put("int", "I");
        int PROBE_START_LINE_121 = 121;
		Map<String, String> v_m_10_line_121 = m;
		int PROBE_END_LINE_121 = 121;
		v_m_10_line_121.put("boolean", "Z");
        int PROBE_START_LINE_122 = 122;
		Map<String, String> v_m_10_line_122 = m;
		int PROBE_END_LINE_122 = 122;
		v_m_10_line_122.put("float", "F");
        int PROBE_START_LINE_123 = 123;
		Map<String, String> v_m_10_line_123 = m;
		int PROBE_END_LINE_123 = 123;
		v_m_10_line_123.put("long", "J");
        int PROBE_START_LINE_124 = 124;
		Map<String, String> v_m_10_line_124 = m;
		int PROBE_END_LINE_124 = 124;
		v_m_10_line_124.put("short", "S");
        int PROBE_START_LINE_125 = 125;
		Map<String, String> v_m_10_line_125 = m;
		int PROBE_END_LINE_125 = 125;
		v_m_10_line_125.put("byte", "B");
        int PROBE_START_LINE_126 = 126;
		Map<String, String> v_m_10_line_126 = m;
		int PROBE_END_LINE_126 = 126;
		v_m_10_line_126.put("double", "D");
        int PROBE_START_LINE_127 = 127;
		Map<String, String> v_m_10_line_127 = m;
		int PROBE_END_LINE_127 = 127;
		v_m_10_line_127.put("char", "C");
        int PROBE_START_LINE_128 = 128;
		Map<String, String> v_m_10_line_128 = m;
		int PROBE_END_LINE_128 = 128;
		v_m_10_line_128.put("void", "V");
        final Map<String, String> r = new HashMap<String, String>();
        int PROBE_START_LINE_130 = 132;
		Map<String, String> v_m_10_line_130 = m;
		Set<java.util.Map.Entry<String, String>> class_utils_1_expr39_line_130 = v_m_10_line_130.entrySet();
		int PROBE_END_LINE_130 = 132;
		for (final Map.Entry<String, String> e : class_utils_1_expr39_line_130) {
            int PROBE_START_LINE_131 = 131;
			Map<String, String> v_r_11_line_131 = r;
			java.util.Map.Entry<String, String> v_e_12_line_131 = e;
			String class_utils_1_expr41_line_131 = v_e_12_line_131.getValue();
			java.util.Map.Entry<String, String> v_e_12_line_131_v1 = e;
			String class_utils_1_expr42_line_131 = v_e_12_line_131_v1.getKey();
			int PROBE_END_LINE_131 = 131;
			v_r_11_line_131.put(class_utils_1_expr41_line_131, class_utils_1_expr42_line_131);
        }
        int PROBE_START_LINE_133 = 133;
		Map<String, String> v_m_10_line_133 = m;
		Map<String, String> class_utils_1_expr44_line_133 = Collections.unmodifiableMap(v_m_10_line_133);
		int PROBE_END_LINE_133 = 133;
		abbreviationMap = class_utils_1_expr44_line_133;
        int PROBE_START_LINE_134 = 134;
		Map<String, String> v_r_11_line_134 = r;
		Map<String, String> class_utils_1_expr46_line_134 = Collections.unmodifiableMap(v_r_11_line_134);
		int PROBE_END_LINE_134 = 134;
		reverseAbbreviationMap = class_utils_1_expr46_line_134;
    }

    /**
     * <p>ClassUtils instances should NOT be constructed in standard programming.
     * Instead, the class should be used as
     * {@code ClassUtils.getShortClassName(cls)}.</p>
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
     * <p>Gets the class name minus the package name for an {@code Object}.</p>
     *
     * @param object  the class to get the short name for, may be null
     * @param valueIfNull  the value to return if null
     * @return the class name of the object without the package name, or the null value
     */
    public static String getShortClassName(final Object object, final String valueIfNull) {
        if (object == null) {
            return valueIfNull;
        }
        return getShortClassName(object.getClass());
    }

    /**
     * <p>Gets the class name minus the package name from a {@code Class}.</p>
     *
     * <p>Consider using the Java 5 API {@link Class#getSimpleName()} instead.
     * The one known difference is that this code will return {@code "Map.Entry"} while
     * the {@code java.lang.Class} variant will simply return {@code "Entry"}. </p>
     *
     * @param cls  the class to get the short name for.
     * @return the class name without the package name or an empty string
     */
    public static String getShortClassName(final Class<?> cls) {
        if (cls == null) {
            return StringUtils.EMPTY;
        }
        return getShortClassName(cls.getName());
    }

    /**
     * <p>Gets the class name minus the package name from a String.</p>
     *
     * <p>The string passed in is assumed to be a class name - it is not checked.</p>

     * <p>Note that this method differs from Class.getSimpleName() in that this will
     * return {@code "Map.Entry"} whilst the {@code java.lang.Class} variant will simply
     * return {@code "Entry"}. </p>
     *
     * @param className  the className to get the short name for
     * @return the class name of the class without the package name or an empty string
     */
    public static String getShortClassName(String className) {
        if (StringUtils.isEmpty(className)) {
            return StringUtils.EMPTY;
        }

        final StringBuilder arrayPrefix = new StringBuilder();

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

            if (reverseAbbreviationMap.containsKey(className)) {
                className = reverseAbbreviationMap.get(className);
            }
        }

        final int lastDotIdx = className.lastIndexOf(PACKAGE_SEPARATOR_CHAR);
        final int innerIdx = className.indexOf(
                INNER_CLASS_SEPARATOR_CHAR, lastDotIdx == -1 ? 0 : lastDotIdx + 1);
        String out = className.substring(lastDotIdx + 1);
        if (innerIdx != -1) {
            out = out.replace(INNER_CLASS_SEPARATOR_CHAR, PACKAGE_SEPARATOR_CHAR);
        }
        return out + arrayPrefix;
    }

    /**
     * <p>Null-safe version of <code>aClass.getSimpleName()</code></p>
     *
     * @param cls the class for which to get the simple name.
     * @return the simple class name.
     * @since 3.0
     * @see Class#getSimpleName()
     */
    public static String getSimpleName(final Class<?> cls) {
        if (cls == null) {
            return StringUtils.EMPTY;
        }
        return cls.getSimpleName();
    }

    /**
     * <p>Null-safe version of <code>aClass.getSimpleName()</code></p>
     *
     * @param object the object for which to get the simple class name.
     * @param valueIfNull the value to return if <code>object</code> is <code>null</code>
     * @return the simple class name.
     * @since 3.0
     * @see Class#getSimpleName()
     */
    public static String getSimpleName(final Object object, final String valueIfNull) {
        if (object == null) {
            return valueIfNull;
        }
        return getSimpleName(object.getClass());
    }

    // Package name
    // ----------------------------------------------------------------------
    /**
     * <p>Gets the package name of an {@code Object}.</p>
     *
     * @param object  the class to get the package name for, may be null
     * @param valueIfNull  the value to return if null
     * @return the package name of the object, or the null value
     */
    public static String getPackageName(final Object object, final String valueIfNull) {
        if (object == null) {
            return valueIfNull;
        }
        return getPackageName(object.getClass());
    }

    /**
     * <p>Gets the package name of a {@code Class}.</p>
     *
     * @param cls  the class to get the package name for, may be {@code null}.
     * @return the package name or an empty string
     */
    public static String getPackageName(final Class<?> cls) {
        if (cls == null) {
            return StringUtils.EMPTY;
        }
        return getPackageName(cls.getName());
    }

    /**
     * <p>Gets the package name from a {@code String}.</p>
     *
     * <p>The string passed in is assumed to be a class name - it is not checked.</p>
     * <p>If the class is unpackaged, return an empty string.</p>
     *
     * @param className  the className to get the package name for, may be {@code null}
     * @return the package name or an empty string
     */
    public static String getPackageName(String className) {
        if (StringUtils.isEmpty(className)) {
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

        final int i = className.lastIndexOf(PACKAGE_SEPARATOR_CHAR);
        if (i == -1) {
            return StringUtils.EMPTY;
        }
        return className.substring(0, i);
    }

    // Abbreviated name
    // ----------------------------------------------------------------------
    /**
     * <p>Gets the abbreviated name of a {@code Class}.</p>
     *
     * @param cls  the class to get the abbreviated name for, may be {@code null}
     * @param len  the desired length of the abbreviated name
     * @return the abbreviated name or an empty string
     * @throws IllegalArgumentException if len &lt;= 0
     * @see #getAbbreviatedName(String, int)
     * @since 3.4
     */
    public static String getAbbreviatedName(final Class<?> cls, int len) {
      if (cls == null) {
        return StringUtils.EMPTY;
      }
      return getAbbreviatedName(cls.getName(), len);
    }

    /**
     * <p>Gets the abbreviated class name from a {@code String}.</p>
     *
     * <p>The string passed in is assumed to be a class name - it is not checked.</p>
     *
     * <p>The abbreviation algorithm will shorten the class name, usually without
     * significant loss of meaning.</p>
     * <p>The abbreviated class name will always include the complete package hierarchy.
     * If enough space is available, rightmost sub-packages will be displayed in full
     * length.</p>
     *
     * <p>The following table illustrates the algorithm:</p>
     * <table summary="abbreviation examples">
     * <tr><td>className</td><td>len</td><td>return</td></tr>
     * <tr><td>              null</td><td> 1</td><td>""</td></tr>
     * <tr><td>"java.lang.String"</td><td> 5</td><td>"j.l.String"</td></tr>
     * <tr><td>"java.lang.String"</td><td>15</td><td>"j.lang.String"</td></tr>
     * <tr><td>"java.lang.String"</td><td>30</td><td>"java.lang.String"</td></tr>
     * </table>
     * @param className  the className to get the abbreviated name for, may be {@code null}
     * @param len  the desired length of the abbreviated name
     * @return the abbreviated name or an empty string
     * @throws IllegalArgumentException if len &lt;= 0
     * @since 3.4
     */
    public static String getAbbreviatedName(String className, int len) {
      if (len <= 0) {
        throw new IllegalArgumentException("len must be > 0");
      }
      if (className == null) {
        return StringUtils.EMPTY;
      }

      int availableSpace = len;
      int packageLevels = StringUtils.countMatches(className, '.');
      String[] output = new String[packageLevels + 1];
      int endIndex = className.length() - 1;
      for (int level = packageLevels; level >= 0; level--) {
        int startIndex = className.lastIndexOf('.', endIndex);
        String part = className.substring(startIndex + 1, endIndex + 1);
        availableSpace -= part.length();
        if (level > 0) {
          // all elements except top level require an additional char space
          availableSpace--;
        }
        if (level == packageLevels) {
          // ClassName is always complete
          output[level] = part;
        } else {
          if (availableSpace > 0) {
            output[level] = part;
          } else {
            // if no space is left still the first char is used
            output[level] = part.substring(0, 1);
          }
        }
        endIndex = startIndex - 1;
      }

      return StringUtils.join(output, '.');
    }

    // Superclasses/Superinterfaces
    // ----------------------------------------------------------------------
    /**
     * <p>Gets a {@code List} of superclasses for the given class.</p>
     *
     * @param cls  the class to look up, may be {@code null}
     * @return the {@code List} of superclasses in order going up from this one
     *  {@code null} if null input
     */
    public static List<Class<?>> getAllSuperclasses(final Class<?> cls) {
        if (cls == null) {
            return null;
        }
        final List<Class<?>> classes = new ArrayList<Class<?>>();
        Class<?> superclass = cls.getSuperclass();
        while (superclass != null) {
            classes.add(superclass);
            superclass = superclass.getSuperclass();
        }
        return classes;
    }

    /**
     * <p>Gets a {@code List} of all interfaces implemented by the given
     * class and its superclasses.</p>
     *
     * <p>The order is determined by looking through each interface in turn as
     * declared in the source file and following its hierarchy up. Then each
     * superclass is considered in the same way. Later duplicates are ignored,
     * so the order is maintained.</p>
     *
     * @param cls  the class to look up, may be {@code null}
     * @return the {@code List} of interfaces in order,
     *  {@code null} if null input
     */
    public static List<Class<?>> getAllInterfaces(final Class<?> cls) {
        if (cls == null) {
            return null;
        }

        final LinkedHashSet<Class<?>> interfacesFound = new LinkedHashSet<Class<?>>();
        getAllInterfaces(cls, interfacesFound);

        return new ArrayList<Class<?>>(interfacesFound);
    }

    /**
     * Get the interfaces for the specified class.
     *
     * @param cls  the class to look up, may be {@code null}
     * @param interfacesFound the {@code Set} of interfaces for the class
     */
    private static void getAllInterfaces(Class<?> cls, final HashSet<Class<?>> interfacesFound) {
        while (cls != null) {
            final Class<?>[] interfaces = cls.getInterfaces();

            for (final Class<?> i : interfaces) {
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
     * <p>Given a {@code List} of class names, this method converts them into classes.</p>
     *
     * <p>A new {@code List} is returned. If the class name cannot be found, {@code null}
     * is stored in the {@code List}. If the class name in the {@code List} is
     * {@code null}, {@code null} is stored in the output {@code List}.</p>
     *
     * @param classNames  the classNames to change
     * @return a {@code List} of Class objects corresponding to the class names,
     *  {@code null} if null input
     * @throws ClassCastException if classNames contains a non String entry
     */
    public static List<Class<?>> convertClassNamesToClasses(final List<String> classNames) {
        if (classNames == null) {
            return null;
        }
        final List<Class<?>> classes = new ArrayList<Class<?>>(classNames.size());
        for (final String className : classNames) {
            try {
                classes.add(Class.forName(className));
            } catch (final Exception ex) {
                classes.add(null);
            }
        }
        return classes;
    }

    /**
     * <p>Given a {@code List} of {@code Class} objects, this method converts
     * them into class names.</p>
     *
     * <p>A new {@code List} is returned. {@code null} objects will be copied into
     * the returned list as {@code null}.</p>
     *
     * @param classes  the classes to change
     * @return a {@code List} of class names corresponding to the Class objects,
     *  {@code null} if null input
     * @throws ClassCastException if {@code classes} contains a non-{@code Class} entry
     */
    public static List<String> convertClassesToClassNames(final List<Class<?>> classes) {
        if (classes == null) {
            return null;
        }
        final List<String> classNames = new ArrayList<String>(classes.size());
        for (final Class<?> cls : classes) {
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
     * {@code null}s.</p>
     *
     * <p>Primitive widenings allow an int to be assigned to a {@code long},
     * {@code float} or {@code double}. This method returns the correct
     * result for these cases.</p>
     *
     * <p>{@code Null} may be assigned to any reference type. This method will
     * return {@code true} if {@code null} is passed in and the toClass is
     * non-primitive.</p>
     *
     * <p>Specifically, this method tests whether the type represented by the
     * specified {@code Class} parameter can be converted to the type
     * represented by this {@code Class} object via an identity conversion
     * widening primitive or widening reference conversion. See
     * <em><a href="http://docs.oracle.com/javase/specs/">The Java Language Specification</a></em>,
     * sections 5.1.1, 5.1.2 and 5.1.4 for details.</p>
     *
     * <p><strong>Since Lang 3.0,</strong> this method will default behavior for
     * calculating assignability between primitive and wrapper types <em>corresponding
     * to the running Java version</em>; i.e. autoboxing will be the default
     * behavior in VMs running Java versions &gt; 1.5.</p>
     *
     * @param classArray  the array of Classes to check, may be {@code null}
     * @param toClassArray  the array of Classes to try to assign into, may be {@code null}
     * @return {@code true} if assignment possible
     */
    public static boolean isAssignable(final Class<?>[] classArray, final Class<?>... toClassArray) {
        return isAssignable(classArray, toClassArray, SystemUtils.isJavaVersionAtLeast(JavaVersion.JAVA_1_5));
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
     * {@code null}s.</p>
     *
     * <p>Primitive widenings allow an int to be assigned to a {@code long},
     * {@code float} or {@code double}. This method returns the correct
     * result for these cases.</p>
     *
     * <p>{@code Null} may be assigned to any reference type. This method will
     * return {@code true} if {@code null} is passed in and the toClass is
     * non-primitive.</p>
     *
     * <p>Specifically, this method tests whether the type represented by the
     * specified {@code Class} parameter can be converted to the type
     * represented by this {@code Class} object via an identity conversion
     * widening primitive or widening reference conversion. See
     * <em><a href="http://docs.oracle.com/javase/specs/">The Java Language Specification</a></em>,
     * sections 5.1.1, 5.1.2 and 5.1.4 for details.</p>
     *
     * @param classArray  the array of Classes to check, may be {@code null}
     * @param toClassArray  the array of Classes to try to assign into, may be {@code null}
     * @param autoboxing  whether to use implicit autoboxing/unboxing between primitives and wrappers
     * @return {@code true} if assignment possible
     */
    public static boolean isAssignable(Class<?>[] classArray, Class<?>[] toClassArray, final boolean autoboxing) {
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
     * Returns whether the given {@code type} is a primitive or primitive wrapper ({@link Boolean}, {@link Byte}, {@link Character},
     * {@link Short}, {@link Integer}, {@link Long}, {@link Double}, {@link Float}).
     *
     * @param type
     *            The class to query or null.
     * @return true if the given {@code type} is a primitive or primitive wrapper ({@link Boolean}, {@link Byte}, {@link Character},
     *         {@link Short}, {@link Integer}, {@link Long}, {@link Double}, {@link Float}).
     * @since 3.1
     */
    public static boolean isPrimitiveOrWrapper(final Class<?> type) {
        if (type == null) {
            return false;
        }
        return type.isPrimitive() || isPrimitiveWrapper(type);
    }

    /**
     * Returns whether the given {@code type} is a primitive wrapper ({@link Boolean}, {@link Byte}, {@link Character}, {@link Short},
     * {@link Integer}, {@link Long}, {@link Double}, {@link Float}).
     *
     * @param type
     *            The class to query or null.
     * @return true if the given {@code type} is a primitive wrapper ({@link Boolean}, {@link Byte}, {@link Character}, {@link Short},
     *         {@link Integer}, {@link Long}, {@link Double}, {@link Float}).
     * @since 3.1
     */
    public static boolean isPrimitiveWrapper(final Class<?> type) {
        return wrapperPrimitiveMap.containsKey(type);
    }

    /**
     * <p>Checks if one {@code Class} can be assigned to a variable of
     * another {@code Class}.</p>
     *
     * <p>Unlike the {@link Class#isAssignableFrom(java.lang.Class)} method,
     * this method takes into account widenings of primitive classes and
     * {@code null}s.</p>
     *
     * <p>Primitive widenings allow an int to be assigned to a long, float or
     * double. This method returns the correct result for these cases.</p>
     *
     * <p>{@code Null} may be assigned to any reference type. This method
     * will return {@code true} if {@code null} is passed in and the
     * toClass is non-primitive.</p>
     *
     * <p>Specifically, this method tests whether the type represented by the
     * specified {@code Class} parameter can be converted to the type
     * represented by this {@code Class} object via an identity conversion
     * widening primitive or widening reference conversion. See
     * <em><a href="http://docs.oracle.com/javase/specs/">The Java Language Specification</a></em>,
     * sections 5.1.1, 5.1.2 and 5.1.4 for details.</p>
     *
     * <p><strong>Since Lang 3.0,</strong> this method will default behavior for
     * calculating assignability between primitive and wrapper types <em>corresponding
     * to the running Java version</em>; i.e. autoboxing will be the default
     * behavior in VMs running Java versions &gt; 1.5.</p>
     *
     * @param cls  the Class to check, may be null
     * @param toClass  the Class to try to assign into, returns false if null
     * @return {@code true} if assignment possible
     */
    public static boolean isAssignable(final Class<?> cls, final Class<?> toClass) {
        int PROBE_START_LINE_675 = 675;
		Class<?> p_cls_43_line_675 = cls;
		Class<?> p_to_class_44_line_675 = toClass;
		org.apache.commons.lang3.JavaVersion q_java_1_5_10_line_675 = JavaVersion.JAVA_1_5;
		boolean class_utils_1_expr48_line_675 = SystemUtils.isJavaVersionAtLeast(q_java_1_5_10_line_675);
		boolean class_utils_1_expr47_line_675 = isAssignable(p_cls_43_line_675, p_to_class_44_line_675,
				class_utils_1_expr48_line_675);
		int PROBE_END_LINE_675 = 675;
		return class_utils_1_expr47_line_675;
    }

    /**
     * <p>Checks if one {@code Class} can be assigned to a variable of
     * another {@code Class}.</p>
     *
     * <p>Unlike the {@link Class#isAssignableFrom(java.lang.Class)} method,
     * this method takes into account widenings of primitive classes and
     * {@code null}s.</p>
     *
     * <p>Primitive widenings allow an int to be assigned to a long, float or
     * double. This method returns the correct result for these cases.</p>
     *
     * <p>{@code Null} may be assigned to any reference type. This method
     * will return {@code true} if {@code null} is passed in and the
     * toClass is non-primitive.</p>
     *
     * <p>Specifically, this method tests whether the type represented by the
     * specified {@code Class} parameter can be converted to the type
     * represented by this {@code Class} object via an identity conversion
     * widening primitive or widening reference conversion. See
     * <em><a href="http://docs.oracle.com/javase/specs/">The Java Language Specification</a></em>,
     * sections 5.1.1, 5.1.2 and 5.1.4 for details.</p>
     *
     * @param cls  the Class to check, may be null
     * @param toClass  the Class to try to assign into, returns false if null
     * @param autoboxing  whether to use implicit autoboxing/unboxing between primitives and wrappers
     * @return {@code true} if assignment possible
     */
    public static boolean isAssignable(Class<?> cls, final Class<?> toClass, final boolean autoboxing) {
        int PROBE_START_LINE_706 = 708;
		Class<?> p_to_class_46_line_706 = toClass;
		boolean class_utils_1_expr49_line_706 = p_to_class_46_line_706 == null;
		int PROBE_END_LINE_706 = 708;
		if (class_utils_1_expr49_line_706) {
            return false;
        }
        int PROBE_START_LINE_710 = 712;
		Class<?> p_cls_45_line_710 = cls;
		boolean class_utils_1_expr50_line_710 = p_cls_45_line_710 == null;
		int PROBE_END_LINE_710 = 712;
		// have to check for null, as isAssignableFrom doesn't
        if (class_utils_1_expr50_line_710) {
            return !toClass.isPrimitive();
        }
        int PROBE_START_LINE_714 = 727;
		boolean p_autoboxing_47_line_714 = autoboxing;
		int PROBE_END_LINE_714 = 727;
		//autoboxing:
        if (p_autoboxing_47_line_714) {
            int PROBE_START_LINE_715 = 720;
			Class<?> p_cls_45_line_715 = cls;
			boolean class_utils_1_expr52_line_715 = p_cls_45_line_715.isPrimitive();
			boolean class_utils_1_expr53_line_715 = true;
			if (class_utils_1_expr52_line_715) {
				Class<?> p_to_class_46_line_715 = toClass;
				boolean class_utils_1_expr54_line_715 = p_to_class_46_line_715.isPrimitive();
				class_utils_1_expr53_line_715 = !class_utils_1_expr54_line_715;
			}
			boolean class_utils_1_expr51_line_715 = class_utils_1_expr52_line_715 && class_utils_1_expr53_line_715;
			int PROBE_END_LINE_715 = 720;
			if (class_utils_1_expr51_line_715) {
                cls = primitiveToWrapper(cls);
                if (cls == null) {
                    return false;
                }
            }
            int PROBE_START_LINE_721 = 726;
			Class<?> p_to_class_46_line_721 = toClass;
			boolean class_utils_1_expr56_line_721 = p_to_class_46_line_721.isPrimitive();
			boolean class_utils_1_expr57_line_721 = true;
			if (class_utils_1_expr56_line_721) {
				Class<?> p_cls_45_line_721 = cls;
				boolean class_utils_1_expr58_line_721 = p_cls_45_line_721.isPrimitive();
				class_utils_1_expr57_line_721 = !class_utils_1_expr58_line_721;
			}
			boolean class_utils_1_expr55_line_721 = class_utils_1_expr56_line_721 && class_utils_1_expr57_line_721;
			int PROBE_END_LINE_721 = 726;
			if (class_utils_1_expr55_line_721) {
                cls = wrapperToPrimitive(cls);
                if (cls == null) {
                    return false;
                }
            }
        }
        int PROBE_START_LINE_728 = 730;
		Class<?> p_cls_45_line_728 = cls;
		Class<?> p_to_class_46_line_728 = toClass;
		boolean class_utils_1_expr59_line_728 = p_cls_45_line_728.equals(p_to_class_46_line_728);
		int PROBE_END_LINE_728 = 730;
		if (class_utils_1_expr59_line_728) {
            return true;
        }
        int PROBE_START_LINE_731 = 774;
		Class<?> p_cls_45_line_731 = cls;
		boolean class_utils_1_expr60_line_731 = p_cls_45_line_731.isPrimitive();
		int PROBE_END_LINE_731 = 774;
		if (class_utils_1_expr60_line_731) {
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
        int PROBE_START_LINE_775 = 775;
		Class<?> p_to_class_46_line_775 = toClass;
		Class<?> p_cls_45_line_775 = cls;
		boolean class_utils_1_expr61_line_775 = p_to_class_46_line_775.isAssignableFrom(p_cls_45_line_775);
		int PROBE_END_LINE_775 = 775;
		return class_utils_1_expr61_line_775;
    }

    /**
     * <p>Converts the specified primitive Class object to its corresponding
     * wrapper Class object.</p>
     *
     * <p>NOTE: From v2.2, this method handles {@code Void.TYPE},
     * returning {@code Void.TYPE}.</p>
     *
     * @param cls  the class to convert, may be null
     * @return the wrapper class for {@code cls} or {@code cls} if
     * {@code cls} is not a primitive. {@code null} if null input.
     * @since 2.1
     */
    public static Class<?> primitiveToWrapper(final Class<?> cls) {
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
     * the original class if class is not a primitive. {@code null} if null input.
     * Empty array if an empty array passed in.
     * @since 2.1
     */
    public static Class<?>[] primitivesToWrappers(final Class<?>... classes) {
        if (classes == null) {
            return null;
        }

        if (classes.length == 0) {
            return classes;
        }

        final Class<?>[] convertedClasses = new Class[classes.length];
        for (int i = 0; i < classes.length; i++) {
            convertedClasses[i] = primitiveToWrapper(classes[i]);
        }
        return convertedClasses;
    }

    /**
     * <p>Converts the specified wrapper class to its corresponding primitive
     * class.</p>
     *
     * <p>This method is the counter part of {@code primitiveToWrapper()}.
     * If the passed in class is a wrapper class for a primitive type, this
     * primitive type will be returned (e.g. {@code Integer.TYPE} for
     * {@code Integer.class}). For other classes, or if the parameter is
     * <b>null</b>, the return value is <b>null</b>.</p>
     *
     * @param cls the class to convert, may be <b>null</b>
     * @return the corresponding primitive type if {@code cls} is a
     * wrapper class, <b>null</b> otherwise
     * @see #primitiveToWrapper(Class)
     * @since 2.4
     */
    public static Class<?> wrapperToPrimitive(final Class<?> cls) {
        return wrapperPrimitiveMap.get(cls);
    }

    /**
     * <p>Converts the specified array of wrapper Class objects to an array of
     * its corresponding primitive Class objects.</p>
     *
     * <p>This method invokes {@code wrapperToPrimitive()} for each element
     * of the passed in array.</p>
     *
     * @param classes  the class array to convert, may be null or empty
     * @return an array which contains for each given class, the primitive class or
     * <b>null</b> if the original class is not a wrapper class. {@code null} if null input.
     * Empty array if an empty array passed in.
     * @see #wrapperToPrimitive(Class)
     * @since 2.4
     */
    public static Class<?>[] wrappersToPrimitives(final Class<?>... classes) {
        if (classes == null) {
            return null;
        }

        if (classes.length == 0) {
            return classes;
        }

        final Class<?>[] convertedClasses = new Class[classes.length];
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
     * @return {@code true} if the class is an inner or static nested class,
     *  false if not or {@code null}
     */
    public static boolean isInnerClass(final Class<?> cls) {
        return cls != null && cls.getEnclosingClass() != null;
    }

    // Class loading
    // ----------------------------------------------------------------------
    /**
     * Returns the class represented by {@code className} using the
     * {@code classLoader}.  This implementation supports the syntaxes
     * "{@code java.util.Map.Entry[]}", "{@code java.util.Map$Entry[]}",
     * "{@code [Ljava.util.Map.Entry;}", and "{@code [Ljava.util.Map$Entry;}".
     *
     * @param classLoader  the class loader to use to load the class
     * @param className  the class name
     * @param initialize  whether the class must be initialized
     * @return the class represented by {@code className} using the {@code classLoader}
     * @throws ClassNotFoundException if the class is not found
     */
    public static Class<?> getClass(
            final ClassLoader classLoader, final String className, final boolean initialize) throws ClassNotFoundException {
        try {
            Class<?> clazz;
            if (abbreviationMap.containsKey(className)) {
                final String clsName = "[" + abbreviationMap.get(className);
                clazz = Class.forName(clsName, initialize, classLoader).getComponentType();
            } else {
                clazz = Class.forName(toCanonicalName(className), initialize, classLoader);
            }
            return clazz;
        } catch (final ClassNotFoundException ex) {
            // allow path separators (.) as inner class name separators
            final int lastDotIndex = className.lastIndexOf(PACKAGE_SEPARATOR_CHAR);

            if (lastDotIndex != -1) {
                try {
                    return getClass(classLoader, className.substring(0, lastDotIndex) +
                            INNER_CLASS_SEPARATOR_CHAR + className.substring(lastDotIndex + 1),
                            initialize);
                } catch (final ClassNotFoundException ex2) { // NOPMD
                    // ignore exception
                }
            }

            throw ex;
        }
    }

    /**
     * Returns the (initialized) class represented by {@code className}
     * using the {@code classLoader}.  This implementation supports
     * the syntaxes "{@code java.util.Map.Entry[]}",
     * "{@code java.util.Map$Entry[]}", "{@code [Ljava.util.Map.Entry;}",
     * and "{@code [Ljava.util.Map$Entry;}".
     *
     * @param classLoader  the class loader to use to load the class
     * @param className  the class name
     * @return the class represented by {@code className} using the {@code classLoader}
     * @throws ClassNotFoundException if the class is not found
     */
    public static Class<?> getClass(final ClassLoader classLoader, final String className) throws ClassNotFoundException {
        return getClass(classLoader, className, true);
    }

    /**
     * Returns the (initialized) class represented by {@code className}
     * using the current thread's context class loader. This implementation
     * supports the syntaxes "{@code java.util.Map.Entry[]}",
     * "{@code java.util.Map$Entry[]}", "{@code [Ljava.util.Map.Entry;}",
     * and "{@code [Ljava.util.Map$Entry;}".
     *
     * @param className  the class name
     * @return the class represented by {@code className} using the current thread's context class loader
     * @throws ClassNotFoundException if the class is not found
     */
    public static Class<?> getClass(final String className) throws ClassNotFoundException {
        return getClass(className, true);
    }

    /**
     * Returns the class represented by {@code className} using the
     * current thread's context class loader. This implementation supports the
     * syntaxes "{@code java.util.Map.Entry[]}", "{@code java.util.Map$Entry[]}",
     * "{@code [Ljava.util.Map.Entry;}", and "{@code [Ljava.util.Map$Entry;}".
     *
     * @param className  the class name
     * @param initialize  whether the class must be initialized
     * @return the class represented by {@code className} using the current thread's context class loader
     * @throws ClassNotFoundException if the class is not found
     */
    public static Class<?> getClass(final String className, final boolean initialize) throws ClassNotFoundException {
        final ClassLoader contextCL = Thread.currentThread().getContextClassLoader();
        final ClassLoader loader = contextCL == null ? ClassUtils.class.getClassLoader() : contextCL;
        return getClass(loader, className, initialize);
    }

    // Public method
    // ----------------------------------------------------------------------
    /**
     * <p>Returns the desired Method much like {@code Class.getMethod}, however
     * it ensures that the returned Method is from a public class or interface and not
     * from an anonymous inner class. This means that the Method is invokable and
     * doesn't fall foul of Java bug
     * <a href="http://bugs.sun.com/bugdatabase/view_bug.do?bug_id=4071957">4071957</a>).</p>
     *
     *  <pre>
     *  <code>Set set = Collections.unmodifiableSet(...);
     *  Method method = ClassUtils.getPublicMethod(set.getClass(), "isEmpty",  new Class[0]);
     *  Object result = method.invoke(set, new Object[]);</code>
     *  </pre>
     *
     * @param cls  the class to check, not null
     * @param methodName  the name of the method
     * @param parameterTypes  the list of parameters
     * @return the method
     * @throws NullPointerException if the class is null
     * @throws SecurityException if a security violation occurred
     * @throws NoSuchMethodException if the method is not found in the given class
     *  or if the method doesn't conform with the requirements
     */
    public static Method getPublicMethod(final Class<?> cls, final String methodName, final Class<?>... parameterTypes)
            throws SecurityException, NoSuchMethodException {

        final Method declaredMethod = cls.getMethod(methodName, parameterTypes);
        if (Modifier.isPublic(declaredMethod.getDeclaringClass().getModifiers())) {
            return declaredMethod;
        }

        final List<Class<?>> candidateClasses = new ArrayList<Class<?>>();
        candidateClasses.addAll(getAllInterfaces(cls));
        candidateClasses.addAll(getAllSuperclasses(cls));

        for (final Class<?> candidateClass : candidateClasses) {
            if (!Modifier.isPublic(candidateClass.getModifiers())) {
                continue;
            }
            Method candidateMethod;
            try {
                candidateMethod = candidateClass.getMethod(methodName, parameterTypes);
            } catch (final NoSuchMethodException ex) {
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
            final StringBuilder classNameBuffer = new StringBuilder();
            while (className.endsWith("[]")) {
                className = className.substring(0, className.length() - 2);
                classNameBuffer.append("[");
            }
            final String abbreviation = abbreviationMap.get(className);
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
     * <p>Converts an array of {@code Object} in to an array of {@code Class} objects.
     * If any of these objects is null, a null element will be inserted into the array.</p>
     *
     * <p>This method returns {@code null} for a {@code null} input array.</p>
     *
     * @param array an {@code Object} array
     * @return a {@code Class} array, {@code null} if null array input
     * @since 2.4
     */
    public static Class<?>[] toClass(final Object... array) {
        if (array == null) {
            return null;
        } else if (array.length == 0) {
            return ArrayUtils.EMPTY_CLASS_ARRAY;
        }
        final Class<?>[] classes = new Class[array.length];
        for (int i = 0; i < array.length; i++) {
            classes[i] = array[i] == null ? null : array[i].getClass();
        }
        return classes;
    }

    // Short canonical name
    // ----------------------------------------------------------------------
    /**
     * <p>Gets the canonical name minus the package name for an {@code Object}.</p>
     *
     * @param object  the class to get the short name for, may be null
     * @param valueIfNull  the value to return if null
     * @return the canonical name of the object without the package name, or the null value
     * @since 2.4
     */
    public static String getShortCanonicalName(final Object object, final String valueIfNull) {
        if (object == null) {
            return valueIfNull;
        }
        return getShortCanonicalName(object.getClass().getName());
    }

    /**
     * <p>Gets the canonical name minus the package name from a {@code Class}.</p>
     *
     * @param cls  the class to get the short name for.
     * @return the canonical name without the package name or an empty string
     * @since 2.4
     */
    public static String getShortCanonicalName(final Class<?> cls) {
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
    public static String getShortCanonicalName(final String canonicalName) {
        return ClassUtils.getShortClassName(getCanonicalName(canonicalName));
    }

    // Package name
    // ----------------------------------------------------------------------
    /**
     * <p>Gets the package name from the canonical name of an {@code Object}.</p>
     *
     * @param object  the class to get the package name for, may be null
     * @param valueIfNull  the value to return if null
     * @return the package name of the object, or the null value
     * @since 2.4
     */
    public static String getPackageCanonicalName(final Object object, final String valueIfNull) {
        if (object == null) {
            return valueIfNull;
        }
        return getPackageCanonicalName(object.getClass().getName());
    }

    /**
     * <p>Gets the package name from the canonical name of a {@code Class}.</p>
     *
     * @param cls  the class to get the package name for, may be {@code null}.
     * @return the package name or an empty string
     * @since 2.4
     */
    public static String getPackageCanonicalName(final Class<?> cls) {
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
     * @param canonicalName  the canonical name to get the package name for, may be {@code null}
     * @return the package name or an empty string
     * @since 2.4
     */
    public static String getPackageCanonicalName(final String canonicalName) {
        return ClassUtils.getPackageName(getCanonicalName(canonicalName));
    }

    /**
     * <p>Converts a given name of class into canonical format.
     * If name of class is not a name of array class it returns
     * unchanged name.</p>
     * <p>Example:
     * <ul>
     * <li>{@code getCanonicalName("[I") = "int[]"}</li>
     * <li>{@code getCanonicalName("[Ljava.lang.String;") = "java.lang.String[]"}</li>
     * <li>{@code getCanonicalName("java.lang.String") = "java.lang.String"}</li>
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
        }
        int dim = 0;
        while (className.startsWith("[")) {
            dim++;
            className = className.substring(1);
        }
        if (dim < 1) {
            return className;
        }
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
        final StringBuilder canonicalClassNameBuffer = new StringBuilder(className);
        for (int i = 0; i < dim; i++) {
            canonicalClassNameBuffer.append("[]");
        }
        return canonicalClassNameBuffer.toString();
    }

    /**
     * Get an {@link Iterable} that can iterate over a class hierarchy in ascending (subclass to superclass) order,
     * excluding interfaces.
     *
     * @param type the type to get the class hierarchy from
     * @return Iterable an Iterable over the class hierarchy of the given class
     * @since 3.2
     */
    public static Iterable<Class<?>> hierarchy(final Class<?> type) {
        return hierarchy(type, Interfaces.EXCLUDE);
    }

    /**
     * Get an {@link Iterable} that can iterate over a class hierarchy in ascending (subclass to superclass) order.
     *
     * @param type the type to get the class hierarchy from
     * @param interfacesBehavior switch indicating whether to include or exclude interfaces
     * @return Iterable an Iterable over the class hierarchy of the given class
     * @since 3.2
     */
    public static Iterable<Class<?>> hierarchy(final Class<?> type, final Interfaces interfacesBehavior) {
        final Iterable<Class<?>> classes = new Iterable<Class<?>>() {
    
            @Override
            public Iterator<Class<?>> iterator() {
                final MutableObject<Class<?>> next = new MutableObject<Class<?>>(type);
                return new Iterator<Class<?>>() {
    
                    @Override
                    public boolean hasNext() {
                        return next.getValue() != null;
                    }
    
                    @Override
                    public Class<?> next() {
                        final Class<?> result = next.getValue();
                        next.setValue(result.getSuperclass());
                        return result;
                    }
    
                    @Override
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }
    
                };
            }
    
        };
        if (interfacesBehavior != Interfaces.INCLUDE) {
            return classes;
        }
        return new Iterable<Class<?>>() {
    
            @Override
            public Iterator<Class<?>> iterator() {
                final Set<Class<?>> seenInterfaces = new HashSet<Class<?>>();
                final Iterator<Class<?>> wrapped = classes.iterator();
    
                return new Iterator<Class<?>>() {
                    Iterator<Class<?>> interfaces = Collections.<Class<?>> emptySet().iterator();
    
                    @Override
                    public boolean hasNext() {
                        return interfaces.hasNext() || wrapped.hasNext();
                    }
    
                    @Override
                    public Class<?> next() {
                        if (interfaces.hasNext()) {
                            final Class<?> nextInterface = interfaces.next();
                            seenInterfaces.add(nextInterface);
                            return nextInterface;
                        }
                        final Class<?> nextSuperclass = wrapped.next();
                        final Set<Class<?>> currentInterfaces = new LinkedHashSet<Class<?>>();
                        walkInterfaces(currentInterfaces, nextSuperclass);
                        interfaces = currentInterfaces.iterator();
                        return nextSuperclass;
                    }
    
                    private void walkInterfaces(final Set<Class<?>> addTo, final Class<?> c) {
                        for (final Class<?> iface : c.getInterfaces()) {
                            if (!seenInterfaces.contains(iface)) {
                                addTo.add(iface);
                            }
                            walkInterfaces(addTo, iface);
                        }
                    }
    
                    @Override
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }
    
                };
            }
        };
    }

}
