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

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Collections;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.Comparator;

/**
 * Charsets required of every implementation of the Java platform.
 *
 * From the Java documentation <a href="https://docs.oracle.com/javase/7/docs/api/java/nio/charset/Charset.html">
 * Standard charsets</a>:
 * <p>
 * <cite>Every implementation of the Java platform is required to support the following character encodings. Consult
 * the release documentation for your implementation to see if any other encodings are supported. Consult the release
 * documentation for your implementation to see if any other encodings are supported. </cite>
 * </p>
 *
 * <ul>
 * <li>{@code US-ASCII}<br>
 * Seven-bit ASCII, a.k.a. ISO646-US, a.k.a. the Basic Latin block of the Unicode character set.</li>
 * <li>{@code ISO-8859-1}<br>
 * ISO Latin Alphabet No. 1, a.k.a. ISO-LATIN-1.</li>
 * <li>{@code UTF-8}<br>
 * Eight-bit Unicode Transformation Format.</li>
 * <li>{@code UTF-16BE}<br>
 * Sixteen-bit Unicode Transformation Format, big-endian byte order.</li>
 * <li>{@code UTF-16LE}<br>
 * Sixteen-bit Unicode Transformation Format, little-endian byte order.</li>
 * <li>{@code UTF-16}<br>
 * Sixteen-bit Unicode Transformation Format, byte order specified by a mandatory initial byte-order mark (either order
 * accepted on input, big-endian used on output.)</li>
 * </ul>
 *
 * @see <a href="https://docs.oracle.com/javase/7/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
 * @since 2.3
 */
public class Charsets {

    //
    // This class should only contain Charset instances for required encodings. This guarantees that it will load
    // correctly and without delay on all Java platforms.
    //

    private static final SortedMap<String, Charset> STANDARD_CHARSET_MAP;

    static {
        int PROBE_START_LINE_66 = 66;
		Comparator<String> q_case_insensitive_order_1_line_66 = String.CASE_INSENSITIVE_ORDER;
		int PROBE_END_LINE_66 = 66;
		final SortedMap<String, Charset> standardCharsetMap = new TreeMap<>(q_case_insensitive_order_1_line_66);
        int PROBE_START_LINE_67 = 67;
		SortedMap<String, java.nio.charset.Charset> v_standard_charset_map_1_line_67 = standardCharsetMap;
		java.nio.charset.Charset q_iso_8859_1_3_line_67 = StandardCharsets.ISO_8859_1;
		String charsets_1_expr3_line_67 = q_iso_8859_1_3_line_67.name();
		java.nio.charset.Charset q_iso_8859_1_2_line_67 = StandardCharsets.ISO_8859_1;
		int PROBE_END_LINE_67 = 67;
		v_standard_charset_map_1_line_67.put(charsets_1_expr3_line_67, q_iso_8859_1_2_line_67);
        int PROBE_START_LINE_68 = 68;
		SortedMap<String, java.nio.charset.Charset> v_standard_charset_map_1_line_68 = standardCharsetMap;
		java.nio.charset.Charset q_us_ascii_4_line_68 = StandardCharsets.US_ASCII;
		String charsets_1_expr5_line_68 = q_us_ascii_4_line_68.name();
		java.nio.charset.Charset q_us_ascii_3_line_68 = StandardCharsets.US_ASCII;
		int PROBE_END_LINE_68 = 68;
		v_standard_charset_map_1_line_68.put(charsets_1_expr5_line_68, q_us_ascii_3_line_68);
        int PROBE_START_LINE_69 = 69;
		SortedMap<String, java.nio.charset.Charset> v_standard_charset_map_1_line_69 = standardCharsetMap;
		java.nio.charset.Charset q_utf_16_5_line_69 = StandardCharsets.UTF_16;
		String charsets_1_expr7_line_69 = q_utf_16_5_line_69.name();
		java.nio.charset.Charset q_utf_16_4_line_69 = StandardCharsets.UTF_16;
		int PROBE_END_LINE_69 = 69;
		v_standard_charset_map_1_line_69.put(charsets_1_expr7_line_69, q_utf_16_4_line_69);
        int PROBE_START_LINE_70 = 70;
		SortedMap<String, java.nio.charset.Charset> v_standard_charset_map_1_line_70 = standardCharsetMap;
		java.nio.charset.Charset q_utf_16be_6_line_70 = StandardCharsets.UTF_16BE;
		String charsets_1_expr9_line_70 = q_utf_16be_6_line_70.name();
		java.nio.charset.Charset q_utf_16be_5_line_70 = StandardCharsets.UTF_16BE;
		int PROBE_END_LINE_70 = 70;
		v_standard_charset_map_1_line_70.put(charsets_1_expr9_line_70, q_utf_16be_5_line_70);
        int PROBE_START_LINE_71 = 71;
		SortedMap<String, java.nio.charset.Charset> v_standard_charset_map_1_line_71 = standardCharsetMap;
		java.nio.charset.Charset q_utf_16le_7_line_71 = StandardCharsets.UTF_16LE;
		String charsets_1_expr11_line_71 = q_utf_16le_7_line_71.name();
		java.nio.charset.Charset q_utf_16le_6_line_71 = StandardCharsets.UTF_16LE;
		int PROBE_END_LINE_71 = 71;
		v_standard_charset_map_1_line_71.put(charsets_1_expr11_line_71, q_utf_16le_6_line_71);
        int PROBE_START_LINE_72 = 72;
		SortedMap<String, java.nio.charset.Charset> v_standard_charset_map_1_line_72 = standardCharsetMap;
		java.nio.charset.Charset q_utf_8_8_line_72 = StandardCharsets.UTF_8;
		String charsets_1_expr13_line_72 = q_utf_8_8_line_72.name();
		java.nio.charset.Charset q_utf_8_7_line_72 = StandardCharsets.UTF_8;
		int PROBE_END_LINE_72 = 72;
		v_standard_charset_map_1_line_72.put(charsets_1_expr13_line_72, q_utf_8_7_line_72);
        int PROBE_START_LINE_73 = 73;
		SortedMap<String, java.nio.charset.Charset> v_standard_charset_map_1_line_73 = standardCharsetMap;
		SortedMap<String, java.nio.charset.Charset> charsets_1_expr15_line_73 = Collections
				.unmodifiableSortedMap(v_standard_charset_map_1_line_73);
		int PROBE_END_LINE_73 = 73;
		STANDARD_CHARSET_MAP = charsets_1_expr15_line_73;
    }

    int PROBE_START_LINE_76 = 86;

	public static final java.nio.charset.Charset q_iso_8859_1_8_line_86 = StandardCharsets.ISO_8859_1;

	int PROBE_END_LINE_76 = 86;

	/**
     * CharEncodingISO Latin Alphabet No. 1, a.k.a. ISO-LATIN-1.
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     *
     * @see <a href="https://docs.oracle.com/javase/7/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     * @deprecated Use Java 7's {@link java.nio.charset.StandardCharsets}
     */
    @Deprecated
    public static final Charset ISO_8859_1 = q_iso_8859_1_8_line_86;

    int PROBE_START_LINE_88 = 100;

	public static final java.nio.charset.Charset q_us_ascii_8_line_100 = StandardCharsets.US_ASCII;

	int PROBE_END_LINE_88 = 100;

	/**
     * <p>
     * Seven-bit ASCII, also known as ISO646-US, also known as the Basic Latin block of the Unicode character set.
     * </p>
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     *
     * @see <a href="https://docs.oracle.com/javase/7/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     * @deprecated Use Java 7's {@link java.nio.charset.StandardCharsets}
     */
    @Deprecated
    public static final Charset US_ASCII = q_us_ascii_8_line_100;

    int PROBE_START_LINE_102 = 115;

	public static final java.nio.charset.Charset q_utf_16_8_line_115 = StandardCharsets.UTF_16;

	int PROBE_END_LINE_102 = 115;

	/**
     * <p>
     * Sixteen-bit Unicode Transformation Format, The byte order specified by a mandatory initial byte-order mark
     * (either order accepted on input, big-endian used on output)
     * </p>
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     *
     * @see <a href="https://docs.oracle.com/javase/7/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     * @deprecated Use Java 7's {@link java.nio.charset.StandardCharsets}
     */
    @Deprecated
    public static final Charset UTF_16 = q_utf_16_8_line_115;

    int PROBE_START_LINE_117 = 129;

	public static final java.nio.charset.Charset q_utf_16be_8_line_129 = StandardCharsets.UTF_16BE;

	int PROBE_END_LINE_117 = 129;

	/**
     * <p>
     * Sixteen-bit Unicode Transformation Format, big-endian byte order.
     * </p>
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     *
     * @see <a href="https://docs.oracle.com/javase/7/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     * @deprecated Use Java 7's {@link java.nio.charset.StandardCharsets}
     */
    @Deprecated
    public static final Charset UTF_16BE = q_utf_16be_8_line_129;

    int PROBE_START_LINE_131 = 143;

	public static final java.nio.charset.Charset q_utf_16le_8_line_143 = StandardCharsets.UTF_16LE;

	int PROBE_END_LINE_131 = 143;

	/**
     * <p>
     * Sixteen-bit Unicode Transformation Format, little-endian byte order.
     * </p>
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     *
     * @see <a href="https://docs.oracle.com/javase/7/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     * @deprecated Use Java 7's {@link java.nio.charset.StandardCharsets}
     */
    @Deprecated
    public static final Charset UTF_16LE = q_utf_16le_8_line_143;

    int PROBE_START_LINE_145 = 157;

	public static final java.nio.charset.Charset q_utf_8_8_line_157 = StandardCharsets.UTF_8;

	int PROBE_END_LINE_145 = 157;

	/**
     * <p>
     * Eight-bit Unicode Transformation Format.
     * </p>
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     *
     * @see <a href="https://docs.oracle.com/javase/7/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     * @deprecated Use Java 7's {@link java.nio.charset.StandardCharsets}
     */
    @Deprecated
    public static final Charset UTF_8 = q_utf_8_8_line_157;

    /**
     * Constructs a sorted map from canonical charset names to charset objects required of every implementation of the
     * Java platform.
     * <p>
     * From the Java documentation <a href="https://docs.oracle.com/javase/7/docs/api/java/nio/charset/Charset.html">
     * Standard charsets</a>:
     * </p>
     *
     * @return An immutable, case-insensitive map from canonical charset names to charset objects.
     * @see Charset#availableCharsets()
     * @since 2.5
     */
    public static SortedMap<String, Charset> requiredCharsets() {
        return STANDARD_CHARSET_MAP;
    }

    /**
     * Returns the given Charset or the default Charset if the given Charset is null.
     *
     * @param charset
     *            A charset or null.
     * @return the given Charset or the default Charset if the given Charset is null
     */
    public static Charset toCharset(final Charset charset) {
        int PROBE_START_LINE_183 = 183;
		java.nio.charset.Charset p_charset_15_line_183 = charset;
		boolean charsets_1_expr17_line_183 = p_charset_15_line_183 == null;
		java.nio.charset.Charset charsets_1_expr18_line_183 = null;
		java.nio.charset.Charset p_charset_15_line_183_v1 = null;
		if (charsets_1_expr17_line_183) {
			charsets_1_expr18_line_183 = Charset.defaultCharset();
		} else {
			p_charset_15_line_183_v1 = charset;
		}
		java.nio.charset.Charset charsets_1_expr16_line_183 = charsets_1_expr17_line_183
				? charsets_1_expr18_line_183
				: p_charset_15_line_183_v1;
		int PROBE_END_LINE_183 = 183;
		return charsets_1_expr16_line_183;
    }

    /**
     * Returns a Charset for the named charset. If the name is null, return the default Charset.
     *
     * @param charsetName The name of the requested charset, may be null.
     * @return a Charset for the named charset.
     * @throws UnsupportedCharsetException If the named charset is unavailable (unchecked exception).
     */
    public static Charset toCharset(final String charsetName) throws UnsupportedCharsetException {
        return charsetName == null ? Charset.defaultCharset() : Charset.forName(charsetName);
    }
}
