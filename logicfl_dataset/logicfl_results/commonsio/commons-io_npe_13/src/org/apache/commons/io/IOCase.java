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
 * Wherever possible, you should use the <code>check</code> methods in this
 * class to compare file names.
 * </p>
 *
 * @since 1.3
 */
public enum IOCase {

    /**
     * The constant for case sensitive regardless of operating system.
     */
    SENSITIVE("Sensitive", true),

    /**
     * The constant for case insensitive regardless of operating system.
     */
    INSENSITIVE("Insensitive", false),

    /**
     * The constant for case sensitivity determined by the current operating system.
     * Windows is case-insensitive when comparing file names, Unix is case-sensitive.
     * <p>
     * <strong>Note:</strong> This only caters for Windows and Unix. Other operating
     * systems (e.g. OSX and OpenVMS) are treated as case sensitive if they use the
     * Unix file separator and case-insensitive if they use the Windows file separator
     * (see {@link java.io.File#separatorChar}).
     * </p>
     * <p>
     * If you serialize this constant on Windows, and deserialize on Unix, or vice
     * versa, then the value of the case-sensitivity flag will change.
     * </p>
     */
    SYSTEM("System", !FilenameUtils.isSystemWindows());

    /** Serialization version. */
    private static final long serialVersionUID = -6343169151696340687L;

    /** The enumeration name. */
    private final String name;

    /** The sensitivity flag. */
    private final transient boolean sensitive;

    /**
     * Factory method to create an IOCase from a name.
     *
     * @param name  the name to find
     * @return the IOCase object
     * @throws IllegalArgumentException if the name is invalid
     */
    public static IOCase forName(final String name) {
        for (final IOCase ioCase : IOCase.values()) {
            if (ioCase.getName().equals(name)) {
                return ioCase;
            }
        }
        throw new IllegalArgumentException("Invalid IOCase name: " + name);
    }

    /**
     * Constructs a new instance.
     *
     * @param name  the name
     * @param sensitive  the sensitivity
     */
    IOCase(final String name, final boolean sensitive) {
        int PROBE_START_LINE_99 = 99;
		String p_name_78_line_99 = name;
		int PROBE_END_LINE_99 = 99;
		this.name = p_name_78_line_99;
        int PROBE_START_LINE_100 = 100;
		boolean p_sensitive_79_line_100 = sensitive;
		int PROBE_END_LINE_100 = 100;
		this.sensitive = p_sensitive_79_line_100;
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
     * Gets the name of the constant.
     *
     * @return the name of the constant
     */
    public String getName() {
        return name;
    }

    /**
     * Does the object represent case sensitive comparison.
     *
     * @return true if case sensitive
     */
    public boolean isCaseSensitive() {
        return sensitive;
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
     * Compares two strings using the case-sensitivity rule.
     * <p>
     * This method mimics {@link String#equals} but takes case-sensitivity
     * into account.
     * </p>
     *
     * @param str1  the first string to compare, not null
     * @param str2  the second string to compare, not null
     * @return true if equal using the case rules
     * @throws NullPointerException if either string is null
     */
    public boolean checkEquals(final String str1, final String str2) {
        Objects.requireNonNull(str1, "str1");
        Objects.requireNonNull(str2, "str2");
        return sensitive ? str1.equals(str2) : str1.equalsIgnoreCase(str2);
    }

    /**
     * Checks if one string starts with another using the case-sensitivity rule.
     * <p>
     * This method mimics {@link String#startsWith(String)} but takes case-sensitivity
     * into account.
     * </p>
     *
     * @param str  the string to check, not null
     * @param start  the start to compare against, not null
     * @return true if equal using the case rules
     * @throws NullPointerException if either string is null
     */
    public boolean checkStartsWith(final String str, final String start) {
        int PROBE_START_LINE_180 = 180;
		String p_str_86_line_180 = str;
		boolean f_sensitive_81_line_180 = sensitive;
		boolean iocase_1_expr10_line_180 = !f_sensitive_81_line_180;
		String p_start_87_line_180 = start;
		String p_start_87_line_180_v1 = start;
		int iocase_1_expr11_line_180 = p_start_87_line_180_v1.length();
		boolean iocase_1_expr9_line_180 = p_str_86_line_180.regionMatches(iocase_1_expr10_line_180, 0,
				p_start_87_line_180, 0, iocase_1_expr11_line_180);
		int PROBE_END_LINE_180 = 180;
		return iocase_1_expr9_line_180;
    }

    /**
     * Checks if one string ends with another using the case-sensitivity rule.
     * <p>
     * This method mimics {@link String#endsWith} but takes case-sensitivity
     * into account.
     * </p>
     *
     * @param str  the string to check, not null
     * @param end  the end to compare against, not null
     * @return true if equal using the case rules
     * @throws NullPointerException if either string is null
     */
    public boolean checkEndsWith(final String str, final String end) {
        int PROBE_START_LINE_196 = 196;
		String p_end_89_line_196 = end;
		int iocase_1_expr12_line_196 = p_end_89_line_196.length();
		int PROBE_END_LINE_196 = 196;
		final int endLen = iocase_1_expr12_line_196;
        int PROBE_START_LINE_197 = 197;
		String p_str_88_line_197 = str;
		boolean f_sensitive_81_line_197 = sensitive;
		boolean iocase_1_expr14_line_197 = !f_sensitive_81_line_197;
		String p_str_88_line_197_v1 = str;
		int iocase_1_expr16_line_197 = p_str_88_line_197_v1.length();
		int v_end_len_90_line_197 = endLen;
		int iocase_1_expr15_line_197 = iocase_1_expr16_line_197 - v_end_len_90_line_197;
		String p_end_89_line_197 = end;
		int v_end_len_90_line_197_v1 = endLen;
		boolean iocase_1_expr13_line_197 = p_str_88_line_197.regionMatches(iocase_1_expr14_line_197,
				iocase_1_expr15_line_197, p_end_89_line_197, 0, v_end_len_90_line_197_v1);
		int PROBE_END_LINE_197 = 197;
		return iocase_1_expr13_line_197;
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
        final int endIndex = str.length() - search.length();
        if (endIndex >= strStartIndex) {
            for (int i = strStartIndex; i <= endIndex; i++) {
                if (checkRegionMatches(str, i, search)) {
                    return i;
                }
            }
        }
        return -1;
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
        return str.regionMatches(!sensitive, strStartIndex, search, 0, search.length());
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
