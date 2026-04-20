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
package org.apache.commons.io;

import java.util.Objects;
import java.util.stream.Stream;

/**
 * Enumeration of IO case sensitivity.
 * <p>
 * Different filing systems have different rules for case-sensitivity.
 * Windows is case-insensitive, Unix is case-sensitive.
 * </p>
 * <p>
 * This class captures that difference, providing an enumeration to
 * control how file name comparisons should be performed. It also provides
 * methods that use the enumeration to perform comparisons.
 * </p>
 * <p>
 * Wherever possible, you should use the {@code check} methods in this
 * class to compare file names.
 * </p>
 *
 * @since 1.3
 */
public enum IOCase {

    /**
     * The constant for case-sensitive regardless of operating system.
     */
    SENSITIVE("Sensitive", true),

    /**
     * The constant for case-insensitive regardless of operating system.
     */
    INSENSITIVE("Insensitive", false),

    /**
     * The constant for case sensitivity determined by the current operating system.
     * Windows is case-insensitive when comparing file names, Unix is case-sensitive.
     * <p>
     * <strong>Note:</strong> This only caters for Windows and Unix. Other operating
     * systems (e.g. OSX and OpenVMS) are treated as case-sensitive if they use the
     * Unix file separator and case-insensitive if they use the Windows file separator
     * (see {@link java.io.File#separatorChar}).
     * </p>
     * <p>
     * If you serialize this constant on Windows, and deserialize on Unix, or vice
     * versa, then the value of the case-sensitivity flag will change.
     * </p>
     */
    SYSTEM("System", FileSystem.getCurrent().isCaseSensitive());

    /** Serialization version. */
    private static final long serialVersionUID = -6343169151696340687L;

    /**
     * Factory method to create an IOCase from a name.
     *
     * @param name  the name to find
     * @return the IOCase object
     * @throws IllegalArgumentException if the name is invalid
     */
    public static IOCase forName(final String name) {
        return Stream.of(IOCase.values()).filter(ioCase -> ioCase.getName().equals(name)).findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Illegal IOCase name: " + name));
    }

    /**
     * Tests for cases sensitivity in a null-safe manner.
     *
     * @param ioCase an IOCase.
     * @return true if the input is non-null and {@link #isCaseSensitive()}.
     * @since 2.10.0
     */
    public static boolean isCaseSensitive(final IOCase ioCase) {
        return ioCase != null && ioCase.isCaseSensitive();
    }

    /**
     * Returns the given value if not-null, the defaultValue if null.
     *
     * @param value the value to test.
     * @param defaultValue the default value.
     * @return the given value if not-null, the defaultValue if null.
     * @since 2.12.0
     */
    public static IOCase value(final IOCase value, final IOCase defaultValue) {
        return value != null ? value : defaultValue;
    }

    /** The enumeration name. */
    private final String name;

    /** The sensitivity flag. */
    private final transient boolean sensitive;

    /**
     * Constructs a new instance.
     *
     * @param name  the name
     * @param sensitive  the sensitivity
     */
    IOCase(final String name, final boolean sensitive) {
        int PROBE_START_LINE_119 = 119;
		String p_name_132_line_119 = name;
		int PROBE_END_LINE_119 = 119;
		this.name = p_name_132_line_119;
        int PROBE_START_LINE_120 = 120;
		boolean p_sensitive_133_line_120 = sensitive;
		int PROBE_END_LINE_120 = 120;
		this.sensitive = p_sensitive_133_line_120;
    }

    /**
     * Compares two strings using the case-sensitivity rule.
     * <p>
     * This method mimics {@link String#compareTo} but takes case-sensitivity
     * into account.
     * </p>
     *
     * @param str1  the first string to compare, not null
     * @param str2  the second string to compare, not null
     * @return true if equal using the case rules
     * @throws NullPointerException if either string is null
     */
    public int checkCompareTo(final String str1, final String str2) {
        Objects.requireNonNull(str1, "str1");
        Objects.requireNonNull(str2, "str2");
        return sensitive ? str1.compareTo(str2) : str1.compareToIgnoreCase(str2);
    }

    /**
     * Checks if one string ends with another using the case-sensitivity rule.
     * <p>
     * This method mimics {@link String#endsWith} but takes case-sensitivity
     * into account.
     * </p>
     *
     * @param str  the string to check
     * @param end  the end to compare against
     * @return true if equal using the case rules, false if either input is null
     */
    public boolean checkEndsWith(final String str, final String end) {
        if (str == null || end == null) {
            return false;
        }
        final int endLen = end.length();
        return str.regionMatches(!sensitive, str.length() - endLen, end, 0, endLen);
    }

    /**
     * Compares two strings using the case-sensitivity rule.
     * <p>
     * This method mimics {@link String#equals} but takes case-sensitivity
     * into account.
     * </p>
     *
     * @param str1  the first string to compare, not null
     * @param str2  the second string to compare, not null
     * @return true if equal using the case rules
     */
    public boolean checkEquals(final String str1, final String str2) {
        return str1 == str2 || str1 != null && (sensitive ? str1.equals(str2) : str1.equalsIgnoreCase(str2));
    }

    /**
     * Checks if one string contains another starting at a specific index using the
     * case-sensitivity rule.
     * <p>
     * This method mimics parts of {@link String#indexOf(String, int)}
     * but takes case-sensitivity into account.
     * </p>
     *
     * @param str  the string to check, not null
     * @param strStartIndex  the index to start at in str
     * @param search  the start to search for, not null
     * @return the first index of the search String,
     *  -1 if no match or {@code null} string input
     * @throws NullPointerException if either string is null
     * @since 2.0
     */
    public int checkIndexOf(final String str, final int strStartIndex, final String search) {
        int PROBE_START_LINE_192 = 192;
		String p_str_142_line_192 = str;
		int iocase_1_expr10_line_192 = p_str_142_line_192.length();
		String p_search_144_line_192 = search;
		int iocase_1_expr11_line_192 = p_search_144_line_192.length();
		int iocase_1_expr9_line_192 = iocase_1_expr10_line_192 - iocase_1_expr11_line_192;
		int PROBE_END_LINE_192 = 192;
		final int endIndex = iocase_1_expr9_line_192;
        int PROBE_START_LINE_193 = 199;
		int v_end_index_145_line_193 = endIndex;
		int p_str_start_index_143_line_193 = strStartIndex;
		boolean iocase_1_expr12_line_193 = v_end_index_145_line_193 >= p_str_start_index_143_line_193;
		if (iocase_1_expr12_line_193) {
            boolean FOR_STMT_TOGGLE_LINE_194 = false;
			int PROBE_END_LINE_193 = 193;
			for (int i = 0; true;) {
                int PROBE_START_LINE_195 = 197;
				if (!FOR_STMT_TOGGLE_LINE_194) {
					FOR_STMT_TOGGLE_LINE_194 = true;
					int p_str_start_index_143_line_194 = strStartIndex;
					i = p_str_start_index_143_line_194;
				} else {
					if (FOR_STMT_TOGGLE_LINE_194) {
						i++;
					} else {
						FOR_STMT_TOGGLE_LINE_194 = true;
					}
				}
				int v_i_146_line_194 = i;
				int v_end_index_145_line_194 = endIndex;
				boolean iocase_1_expr14_line_194 = v_i_146_line_194 <= v_end_index_145_line_194;
				if (!(iocase_1_expr14_line_194)) {
					break;
				}
				String p_str_142_line_195 = str;
				int v_i_146_line_195 = i;
				String p_search_144_line_195 = search;
				boolean iocase_1_expr16_line_195 = checkRegionMatches(p_str_142_line_195, v_i_146_line_195,
						p_search_144_line_195);
				int PROBE_END_LINE_195 = 197;
				if (iocase_1_expr16_line_195) {
                    int PROBE_START_LINE_196 = 196;
					int v_i_146_line_196 = i;
					int PROBE_END_LINE_196 = 196;
					return v_i_146_line_196;
                }
            }
        }
        int PROBE_START_LINE_200 = 200;
		int iocase_1_expr17_line_200 = -1;
		int PROBE_END_LINE_200 = 200;
		return iocase_1_expr17_line_200;
    }

    /**
     * Checks if one string contains another at a specific index using the case-sensitivity rule.
     * <p>
     * This method mimics parts of {@link String#regionMatches(boolean, int, String, int, int)}
     * but takes case-sensitivity into account.
     * </p>
     *
     * @param str  the string to check, not null
     * @param strStartIndex  the index to start at in str
     * @param search  the start to search for, not null
     * @return true if equal using the case rules
     * @throws NullPointerException if either string is null
     */
    public boolean checkRegionMatches(final String str, final int strStartIndex, final String search) {
        int PROBE_START_LINE_217 = 217;
		String p_str_147_line_217 = str;
		boolean f_sensitive_135_line_217 = sensitive;
		boolean iocase_1_expr19_line_217 = !f_sensitive_135_line_217;
		int p_str_start_index_148_line_217 = strStartIndex;
		String p_search_149_line_217 = search;
		String p_search_149_line_217_v1 = search;
		int iocase_1_expr20_line_217 = p_search_149_line_217_v1.length();
		boolean iocase_1_expr18_line_217 = p_str_147_line_217.regionMatches(iocase_1_expr19_line_217,
				p_str_start_index_148_line_217, p_search_149_line_217, 0, iocase_1_expr20_line_217);
		int PROBE_END_LINE_217 = 217;
		return iocase_1_expr18_line_217;
    }

    /**
     * Checks if one string starts with another using the case-sensitivity rule.
     * <p>
     * This method mimics {@link String#startsWith(String)} but takes case-sensitivity
     * into account.
     * </p>
     *
     * @param str  the string to check
     * @param start  the start to compare against
     * @return true if equal using the case rules, false if either input is null
     */
    public boolean checkStartsWith(final String str, final String start) {
        return str != null && start != null && str.regionMatches(!sensitive, 0, start, 0, start.length());
    }

    /**
     * Gets the name of the constant.
     *
     * @return the name of the constant
     */
    public String getName() {
        return name;
    }

    /**
     * Does the object represent case-sensitive comparison.
     *
     * @return true if case-sensitive
     */
    public boolean isCaseSensitive() {
        return sensitive;
    }

    /**
     * Replaces the enumeration from the stream with a real one.
     * This ensures that the correct flag is set for SYSTEM.
     *
     * @return the resolved object
     */
    private Object readResolve() {
        return forName(name);
    }

    /**
     * Gets a string describing the sensitivity.
     *
     * @return a string describing the sensitivity
     */
    @Override
    public String toString() {
        return name;
    }

}
