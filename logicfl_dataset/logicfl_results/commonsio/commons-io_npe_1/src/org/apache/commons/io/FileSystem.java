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

import java.util.Arrays;
import java.util.Locale;
import java.util.Objects;

/**
 * Abstracts an OS' file system details, currently supporting the single use case of converting a file name String to a
 * legal file name with {@link #toLegalFileName(String, char)}.
 * <p>
 * The starting point of any operation is {@link #getCurrent()} which gets you the enum for the file system that matches
 * the OS hosting the running JVM.
 * </p>
 *
 * @since 2.7
 */
public enum FileSystem {

    /**
     * Generic file system.
     */
    GENERIC(4096, false, false, Integer.MAX_VALUE, Integer.MAX_VALUE, new int[] { 0 }, new String[] {}, false, false, '/'),

    /**
     * Linux file system.
     */
    LINUX(8192, true, true, 255, 4096, new int[] {
            // KEEP THIS ARRAY SORTED!
            // @formatter:off
            // ASCII NUL
            0,
             '/'
            // @formatter:on
    }, new String[] {}, false, false, '/'),

    /**
     * MacOS file system.
     */
    MAC_OSX(4096, true, true, 255, 1024, new int[] {
            // KEEP THIS ARRAY SORTED!
            // @formatter:off
            // ASCII NUL
            0,
            '/',
             ':'
            // @formatter:on
    }, new String[] {}, false, false, '/'),

    /**
     * Windows file system.
     * <p>
     * The reserved characters are defined in the
     * <a href="https://docs.microsoft.com/en-us/windows/win32/fileio/naming-a-file">Naming Conventions
     * (microsoft.com)</a>.
     * </p>
     *
     * @see <a href="https://docs.microsoft.com/en-us/windows/win32/fileio/naming-a-file">Naming Conventions
     *      (microsoft.com)</a>
     * @see <a href="https://docs.microsoft.com/en-us/windows/win32/api/fileapi/nf-fileapi-createfilea#consoles">
     *      CreateFileA function - Consoles (microsoft.com)</a>
     */
    WINDOWS(4096, false, true,
            255, 32000, // KEEP THIS ARRAY SORTED!
            new int[] {
                    // KEEP THIS ARRAY SORTED!
                    // @formatter:off
                    // ASCII NUL
                    0,
                    // 1-31 may be allowed in file streams
                    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28,
                    29, 30, 31,
                    '"', '*', '/', ':', '<', '>', '?', '\\', '|'
                    // @formatter:on
            }, new String[] { "AUX", "COM1", "COM2", "COM3", "COM4", "COM5", "COM6", "COM7", "COM8", "COM9", "CON", "CONIN$", "CONOUT$",
                            "LPT1", "LPT2", "LPT3", "LPT4", "LPT5", "LPT6", "LPT7", "LPT8", "LPT9", "NUL", "PRN" }, true, true, '\\');

    int PROBE_START_LINE_94 = 102;

							private static final boolean file_system_1_expr9_line_102 = getOsMatchesName("Linux");

							int PROBE_END_LINE_94 = 102;

	/**
     * <p>
     * Is {@code true} if this is Linux.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     */
    private static final boolean IS_OS_LINUX = file_system_1_expr9_line_102;

    int PROBE_START_LINE_104 = 112;

	private static final boolean file_system_1_expr10_line_112 = getOsMatchesName("Mac");

	int PROBE_END_LINE_104 = 112;

	/**
     * <p>
     * Is {@code true} if this is Mac.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     */
    private static final boolean IS_OS_MAC = file_system_1_expr10_line_112;

    /**
     * The prefix String for all Windows OS.
     */
    private static final String OS_NAME_WINDOWS_PREFIX = "Windows";

    int PROBE_START_LINE_119 = 127;

	private static final String f_os_name_windows_prefix_8_line_127 = OS_NAME_WINDOWS_PREFIX;

	private static final boolean file_system_1_expr11_line_127 = getOsMatchesName(f_os_name_windows_prefix_8_line_127);

	int PROBE_END_LINE_119 = 127;

	/**
     * <p>
     * Is {@code true} if this is Windows.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     */
    private static final boolean IS_OS_WINDOWS = file_system_1_expr11_line_127;

    int PROBE_START_LINE_129 = 132;

	private static final org.apache.commons.io.FileSystem file_system_1_expr12_line_132 = current();

	int PROBE_END_LINE_129 = 132;

	/**
     * The current FileSystem.
     */
    private static final FileSystem CURRENT = file_system_1_expr12_line_132;

    /**
     * Gets the current file system.
     *
     * @return the current file system
     */
    private static FileSystem current() {
        int PROBE_START_LINE_140 = 142;
		boolean f_is_os_linux_5_line_140 = IS_OS_LINUX;
		int PROBE_END_LINE_140 = 142;
		if (f_is_os_linux_5_line_140) {
            int PROBE_START_LINE_141 = 141;
			org.apache.commons.io.FileSystem f_linux_2_line_141 = LINUX;
			int PROBE_END_LINE_141 = 141;
			return f_linux_2_line_141;
        }
        if (IS_OS_MAC) {
            return MAC_OSX;
        }
        if (IS_OS_WINDOWS) {
            return WINDOWS;
        }
        return GENERIC;
    }

    /**
     * Gets the current file system.
     *
     * @return the current file system
     */
    public static FileSystem getCurrent() {
        int PROBE_START_LINE_158 = 158;
		org.apache.commons.io.FileSystem f_current_9_line_158 = CURRENT;
		int PROBE_END_LINE_158 = 158;
		return f_current_9_line_158;
    }

    /**
     * Decides if the operating system matches.
     *
     * @param osNamePrefix
     *            the prefix for the os name
     * @return true if matches, or false if not or can't determine
     */
    private static boolean getOsMatchesName(final String osNamePrefix) {
        int PROBE_START_LINE_169 = 169;
		String file_system_1_expr14_line_169 = getSystemProperty("os.name");
		String p_os_name_prefix_10_line_169 = osNamePrefix;
		boolean file_system_1_expr13_line_169 = isOsNameMatch(file_system_1_expr14_line_169,
				p_os_name_prefix_10_line_169);
		int PROBE_END_LINE_169 = 169;
		return file_system_1_expr13_line_169;
    }

    /**
     * <p>
     * Gets a System property, defaulting to {@code null} if the property cannot be read.
     * </p>
     * <p>
     * If a {@link SecurityException} is caught, the return value is {@code null} and a message is written to
     * {@code System.err}.
     * </p>
     *
     * @param property
     *            the system property name
     * @return the system property value or {@code null} if a security problem occurs
     */
    private static String getSystemProperty(final String property) {
        try {
            int PROBE_START_LINE_187 = 187;
			String p_property_11_line_187 = property;
			String file_system_1_expr15_line_187 = System.getProperty(p_property_11_line_187);
			int PROBE_END_LINE_187 = 187;
			return file_system_1_expr15_line_187;
        } catch (final SecurityException ex) {
            // we are not allowed to look at this property
            System.err.println("Caught a SecurityException reading the system property '" + property
                    + "'; the SystemUtils property value will default to null.");
            return null;
        }
    }

    /**
     * Copied from Apache Commons Lang CharSequenceUtils.
     *
     * Returns the index within {@code cs} of the first occurrence of the
     * specified character, starting the search at the specified index.
     * <p>
     * If a character with value {@code searchChar} occurs in the
     * character sequence represented by the {@code cs}
     * object at an index no smaller than {@code start}, then
     * the index of the first such occurrence is returned. For values
     * of {@code searchChar} in the range from 0 to 0xFFFF (inclusive),
     * this is the smallest value <i>k</i> such that:
     * </p>
     * <blockquote><pre>
     * (this.charAt(<i>k</i>) == searchChar) &amp;&amp; (<i>k</i> &gt;= start)
     * </pre></blockquote>
     * is true. For other values of {@code searchChar}, it is the
     * smallest value <i>k</i> such that:
     * <blockquote><pre>
     * (this.codePointAt(<i>k</i>) == searchChar) &amp;&amp; (<i>k</i> &gt;= start)
     * </pre></blockquote>
     * <p>
     * is true. In either case, if no such character occurs in {@code cs}
     * at or after position {@code start}, then
     * {@code -1} is returned.
     * </p>
     * <p>
     * There is no restriction on the value of {@code start}. If it
     * is negative, it has the same effect as if it were zero: the entire
     * {@link CharSequence} may be searched. If it is greater than
     * the length of {@code cs}, it has the same effect as if it were
     * equal to the length of {@code cs}: {@code -1} is returned.
     * </p>
     * <p>All indices are specified in {@code char} values
     * (Unicode code units).
     * </p>
     *
     * @param cs  the {@link CharSequence} to be processed, not null
     * @param searchChar  the char to be searched for
     * @param start  the start index, negative starts at the string start
     * @return the index where the search char was found, -1 if not found
     * @since 3.6 updated to behave more like {@link String}
     */
    private static int indexOf(final CharSequence cs, final int searchChar, int start) {
        if (cs instanceof String) {
            return ((String) cs).indexOf(searchChar, start);
        }
        final int sz = cs.length();
        if (start < 0) {
            start = 0;
        }
        if (searchChar < Character.MIN_SUPPLEMENTARY_CODE_POINT) {
            for (int i = start; i < sz; i++) {
                if (cs.charAt(i) == searchChar) {
                    return i;
                }
            }
            return -1;
        }
        //supplementary characters (LANG1300)
        if (searchChar <= Character.MAX_CODE_POINT) {
            final char[] chars = Character.toChars(searchChar);
            for (int i = start; i < sz - 1; i++) {
                final char high = cs.charAt(i);
                final char low = cs.charAt(i + 1);
                if (high == chars[0] && low == chars[1]) {
                    return i;
                }
            }
        }
        return -1;
    }

    /**
     * Decides if the operating system matches.
     * <p>
     * This method is package private instead of private to support unit test invocation.
     * </p>
     *
     * @param osName
     *            the actual OS name
     * @param osNamePrefix
     *            the prefix for the expected OS name
     * @return true if matches, or false if not or can't determine
     */
    private static boolean isOsNameMatch(final String osName, final String osNamePrefix) {
        int PROBE_START_LINE_282 = 284;
		String p_os_name_15_line_282 = osName;
		boolean file_system_1_expr16_line_282 = p_os_name_15_line_282 == null;
		int PROBE_END_LINE_282 = 284;
		if (file_system_1_expr16_line_282) {
            return false;
        }
        int PROBE_START_LINE_285 = 285;
		String p_os_name_15_line_285 = osName;
		java.util.Locale q_root_2_line_285 = Locale.ROOT;
		String file_system_1_expr19_line_285 = p_os_name_15_line_285.toUpperCase(q_root_2_line_285);
		String p_os_name_prefix_16_line_285 = osNamePrefix;
		java.util.Locale q_root_3_line_285 = Locale.ROOT;
		String file_system_1_expr18_line_285 = p_os_name_prefix_16_line_285.toUpperCase(q_root_3_line_285);
		boolean file_system_1_expr17_line_285 = file_system_1_expr19_line_285.startsWith(file_system_1_expr18_line_285);
		int PROBE_END_LINE_285 = 285;
		return file_system_1_expr17_line_285;
    }

    /**
     * Null-safe replace.
     *
     * @param path the path to be changed, null ignored.
     * @param oldChar the old character.
     * @param newChar the new character.
     * @return the new path.
     */
    private static String replace(final String path, final char oldChar, final char newChar) {
        return path == null ? null : path.replace(oldChar, newChar);
    }

    private final int blockSize;
    private final boolean casePreserving;
    private final boolean caseSensitive;
    private final int[] illegalFileNameChars;
    private final int maxFileNameLength;
    private final int maxPathLength;
    private final String[] reservedFileNames;
    private final boolean reservedFileNamesExtensions;
    private final boolean supportsDriveLetter;
    private final char nameSeparator;
    private final char nameSeparatorOther;

    /**
     * Constructs a new instance.
     *
     * @param blockSize file allocation block size in bytes.
     * @param caseSensitive Whether this file system is case-sensitive.
     * @param casePreserving Whether this file system is case-preserving.
     * @param maxFileLength The maximum length for file names. The file name does not include folders.
     * @param maxPathLength The maximum length of the path to a file. This can include folders.
     * @param illegalFileNameChars Illegal characters for this file system.
     * @param reservedFileNames The reserved file names.
     * @param reservedFileNamesExtensions TODO
     * @param supportsDriveLetter Whether this file system support driver letters.
     * @param nameSeparator The name separator, '\\' on Windows, '/' on Linux.
     */
    FileSystem(final int blockSize, final boolean caseSensitive, final boolean casePreserving,
        final int maxFileLength, final int maxPathLength, final int[] illegalFileNameChars,
        final String[] reservedFileNames, final boolean reservedFileNamesExtensions, final boolean supportsDriveLetter, final char nameSeparator) {
        int PROBE_START_LINE_329 = 329;
			int p_block_size_20_line_329 = blockSize;
			int PROBE_END_LINE_329 = 329;
		this.blockSize = p_block_size_20_line_329;
        int PROBE_START_LINE_330 = 330;
		int p_max_file_length_23_line_330 = maxFileLength;
		int PROBE_END_LINE_330 = 330;
		this.maxFileNameLength = p_max_file_length_23_line_330;
        int PROBE_START_LINE_331 = 331;
		int p_max_path_length_24_line_331 = maxPathLength;
		int PROBE_END_LINE_331 = 331;
		this.maxPathLength = p_max_path_length_24_line_331;
        int PROBE_START_LINE_332 = 332;
		int[] p_illegal_file_name_chars_25_line_332 = illegalFileNameChars;
		int[] file_system_1_expr31_line_332 = Objects.requireNonNull(p_illegal_file_name_chars_25_line_332,
				"illegalFileNameChars");
		int PROBE_END_LINE_332 = 332;
		this.illegalFileNameChars = file_system_1_expr31_line_332;
        int PROBE_START_LINE_333 = 333;
		String[] p_reserved_file_names_26_line_333 = reservedFileNames;
		String[] file_system_1_expr35_line_333 = Objects.requireNonNull(p_reserved_file_names_26_line_333,
				"reservedFileNames");
		int PROBE_END_LINE_333 = 333;
		this.reservedFileNames = file_system_1_expr35_line_333;
        int PROBE_START_LINE_334 = 334;
		boolean p_reserved_file_names_extensions_27_line_334 = reservedFileNamesExtensions;
		int PROBE_END_LINE_334 = 334;
		this.reservedFileNamesExtensions = p_reserved_file_names_extensions_27_line_334;
        int PROBE_START_LINE_335 = 335;
		boolean p_case_sensitive_21_line_335 = caseSensitive;
		int PROBE_END_LINE_335 = 335;
		this.caseSensitive = p_case_sensitive_21_line_335;
        int PROBE_START_LINE_336 = 336;
		boolean p_case_preserving_22_line_336 = casePreserving;
		int PROBE_END_LINE_336 = 336;
		this.casePreserving = p_case_preserving_22_line_336;
        int PROBE_START_LINE_337 = 337;
		boolean p_supports_drive_letter_28_line_337 = supportsDriveLetter;
		int PROBE_END_LINE_337 = 337;
		this.supportsDriveLetter = p_supports_drive_letter_28_line_337;
        int PROBE_START_LINE_338 = 338;
		char p_name_separator_29_line_338 = nameSeparator;
		int PROBE_END_LINE_338 = 338;
		this.nameSeparator = p_name_separator_29_line_338;
        int PROBE_START_LINE_339 = 339;
		char p_name_separator_29_line_339 = nameSeparator;
		char file_system_1_expr54_line_339 = FilenameUtils.flipSeparator(p_name_separator_29_line_339);
		int PROBE_END_LINE_339 = 339;
		this.nameSeparatorOther = file_system_1_expr54_line_339;
    }

    /**
     * Gets the file allocation block size in bytes.
     * @return the file allocation block size in bytes.
     *
     * @since 2.12.0
     */
    public int getBlockSize() {
        return blockSize;
    }

    /**
     * Gets a cloned copy of the illegal characters for this file system.
     *
     * @return the illegal characters for this file system.
     */
    public char[] getIllegalFileNameChars() {
        final char[] chars = new char[illegalFileNameChars.length];
        for (int i = 0; i < illegalFileNameChars.length; i++) {
            chars[i] = (char) illegalFileNameChars[i];
        }
        return chars;
    }

    /**
     * Gets a cloned copy of the illegal code points for this file system.
     *
     * @return the illegal code points for this file system.
     * @since 2.12.0
     */
    public int[] getIllegalFileNameCodePoints() {
        return this.illegalFileNameChars.clone();
    }

    /**
     * Gets the maximum length for file names. The file name does not include folders.
     *
     * @return the maximum length for file names.
     */
    public int getMaxFileNameLength() {
        return maxFileNameLength;
    }

    /**
     * Gets the maximum length of the path to a file. This can include folders.
     *
     * @return the maximum length of the path to a file.
     */
    public int getMaxPathLength() {
        return maxPathLength;
    }

    /**
     * Gets the name separator, '\\' on Windows, '/' on Linux.
     *
     * @return '\\' on Windows, '/' on Linux.
     *
     * @since 2.12.0
     */
    public char getNameSeparator() {
        return nameSeparator;
    }

    /**
     * Gets a cloned copy of the reserved file names.
     *
     * @return the reserved file names.
     */
    public String[] getReservedFileNames() {
        return reservedFileNames.clone();
    }

    /**
     * Tests whether this file system preserves case.
     *
     * @return Whether this file system preserves case.
     */
    public boolean isCasePreserving() {
        return casePreserving;
    }

    /**
     * Tests whether this file system is case-sensitive.
     *
     * @return Whether this file system is case-sensitive.
     */
    public boolean isCaseSensitive() {
        int PROBE_START_LINE_428 = 428;
		boolean f_case_sensitive_36_line_428 = caseSensitive;
		int PROBE_END_LINE_428 = 428;
		return f_case_sensitive_36_line_428;
    }

    /**
     * Tests if the given character is illegal in a file name, {@code false} otherwise.
     *
     * @param c
     *            the character to test
     * @return {@code true} if the given character is illegal in a file name, {@code false} otherwise.
     */
    private boolean isIllegalFileNameChar(final int c) {
        return Arrays.binarySearch(illegalFileNameChars, c) >= 0;
    }

    /**
     * Tests if a candidate file name (without a path) such as {@code "filename.ext"} or {@code "filename"} is a
     * potentially legal file name. If the file name length exceeds {@link #getMaxFileNameLength()}, or if it contains
     * an illegal character then the check fails.
     *
     * @param candidate
     *            a candidate file name (without a path) like {@code "filename.ext"} or {@code "filename"}
     * @return {@code true} if the candidate name is legal
     */
    public boolean isLegalFileName(final CharSequence candidate) {
        if (candidate == null || candidate.length() == 0 || candidate.length() > maxFileNameLength) {
            return false;
        }
        if (isReservedFileName(candidate)) {
            return false;
        }
        return candidate.chars().noneMatch(this::isIllegalFileNameChar);
    }

    /**
     * Tests whether the given string is a reserved file name.
     *
     * @param candidate
     *            the string to test
     * @return {@code true} if the given string is a reserved file name.
     */
    public boolean isReservedFileName(final CharSequence candidate) {
        final CharSequence test = reservedFileNamesExtensions ? trimExtension(candidate) : candidate;
        return Arrays.binarySearch(reservedFileNames, test) >= 0;
    }

    /**
     * Converts all separators to the Windows separator of backslash.
     *
     * @param path the path to be changed, null ignored
     * @return the updated path
     * @since 2.12.0
     */
    public String normalizeSeparators(final String path) {
        return replace(path, nameSeparatorOther, nameSeparator);
    }

    /**
     * Tests whether this file system support driver letters.
     * <p>
     * Windows supports driver letters as do other operating systems. Whether these other OS's still support Java like
     * OS/2, is a different matter.
     * </p>
     *
     * @return whether this file system support driver letters.
     * @since 2.9.0
     * @see <a href="https://en.wikipedia.org/wiki/Drive_letter_assignment">Operating systems that use drive letter
     *      assignment</a>
     */
    public boolean supportsDriveLetter() {
        return supportsDriveLetter;
    }

    /**
     * Converts a candidate file name (without a path) like {@code "filename.ext"} or {@code "filename"} to a legal file
     * name. Illegal characters in the candidate name are replaced by the {@code replacement} character. If the file
     * name length exceeds {@link #getMaxFileNameLength()}, then the name is truncated to
     * {@link #getMaxFileNameLength()}.
     *
     * @param candidate
     *            a candidate file name (without a path) like {@code "filename.ext"} or {@code "filename"}
     * @param replacement
     *            Illegal characters in the candidate name are replaced by this character
     * @return a String without illegal characters
     */
    public String toLegalFileName(final String candidate, final char replacement) {
        if (isIllegalFileNameChar(replacement)) {
            // %s does not work properly with NUL
            throw new IllegalArgumentException(String.format("The replacement character '%s' cannot be one of the %s illegal characters: %s",
                replacement == '\0' ? "\\0" : replacement, name(), Arrays.toString(illegalFileNameChars)));
        }
        final String truncated = candidate.length() > maxFileNameLength ? candidate.substring(0, maxFileNameLength) : candidate;
        final int[] array = truncated.chars().map(i -> isIllegalFileNameChar(i) ? replacement : i).toArray();
        return new String(array, 0, array.length);
    }

    CharSequence trimExtension(final CharSequence cs) {
        final int index = indexOf(cs, '.', 0);
        return index < 0 ? cs : cs.subSequence(0, index);
    }
}
