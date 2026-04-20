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
package org.apache.commons.codec;

import java.nio.charset.Charset;

/**
 * Charsets required of every implementation of the Java platform.
 *
 * From the Java documentation <a href="http://docs.oracle.com/javase/6/docs/api/java/nio/charset/Charset.html">Standard
 * charsets</a>:
 * <p>
 * <cite>Every implementation of the Java platform is required to support the following character encodings. Consult the
 * release documentation for your implementation to see if any other encodings are supported. Consult the release
 * documentation for your implementation to see if any other encodings are supported. </cite>
 * </p>
 *
 * <ul>
 * <li><code>US-ASCII</code><br>
 * Seven-bit ASCII, a.k.a. ISO646-US, a.k.a. the Basic Latin block of the Unicode character set.</li>
 * <li><code>ISO-8859-1</code><br>
 * ISO Latin Alphabet No. 1, a.k.a. ISO-LATIN-1.</li>
 * <li><code>UTF-8</code><br>
 * Eight-bit Unicode Transformation Format.</li>
 * <li><code>UTF-16BE</code><br>
 * Sixteen-bit Unicode Transformation Format, big-endian byte order.</li>
 * <li><code>UTF-16LE</code><br>
 * Sixteen-bit Unicode Transformation Format, little-endian byte order.</li>
 * <li><code>UTF-16</code><br>
 * Sixteen-bit Unicode Transformation Format, byte order specified by a mandatory initial byte-order mark (either order
 * accepted on input, big-endian used on output.)</li>
 * </ul>
 *
 * This perhaps would best belong in the Commons Lang project. Even if a similar class is defined in Commons Lang, it is
 * not foreseen that Commons Codec would be made to depend on Commons Lang.
 *
 * <p>
 * This class is immutable and thread-safe.
 * </p>
 *
 * @see <a href="http://docs.oracle.com/javase/6/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
 * @since 1.7
 * @version $Id: CharEncoding.java 1173287 2011-09-20 18:16:19Z ggregory $
 */
public class Charsets {

    //
    // This class should only contain Charset instances for required encodings. This guarantees that it will load
    // correctly and without delay on all Java platforms.
    //

    /**
     * Returns the given Charset or the default Charset if the given Charset is null.
     *
     * @param charset
     *            A charset or null.
     * @return the given Charset or the default Charset if the given Charset is null
     */
    public static Charset toCharset(final Charset charset) {
        return charset == null ? Charset.defaultCharset() : charset;
    }

    /**
     * Returns a Charset for the named charset. If the name is null, return the default Charset.
     *
     * @param charset
     *            The name of the requested charset, may be null.
     * @return a Charset for the named charset
     * @throws java.nio.charset.UnsupportedCharsetException
     *             If the named charset is unavailable
     */
    public static Charset toCharset(final String charset) {
        return charset == null ? Charset.defaultCharset() : Charset.forName(charset);
    }

    int PROBE_START_LINE_90 = 101;

	public static final String q_iso_8859_1_1_line_101 = CharEncoding.ISO_8859_1;

	public static final java.nio.charset.Charset charsets_1_expr1_line_101 = Charset.forName(q_iso_8859_1_1_line_101);

	int PROBE_END_LINE_90 = 101;

	/**
     * CharEncodingISO Latin Alphabet No. 1, a.k.a. ISO-LATIN-1.
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     * <p>
     * On Java 7 or later, use {@link java.nio.charset.StandardCharsets#ISO_8859_1} instead.
     * </p>
     *
     * @see <a href="http://docs.oracle.com/javase/6/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     */
    public static final Charset ISO_8859_1 = charsets_1_expr1_line_101;

    int PROBE_START_LINE_103 = 114;

	public static final String q_us_ascii_2_line_114 = CharEncoding.US_ASCII;

	public static final java.nio.charset.Charset charsets_1_expr2_line_114 = Charset.forName(q_us_ascii_2_line_114);

	int PROBE_END_LINE_103 = 114;

	/**
     * Seven-bit ASCII, also known as ISO646-US, also known as the Basic Latin block of the Unicode character set.
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     * <p>
     * On Java 7 or later, use {@link java.nio.charset.StandardCharsets#ISO_8859_1} instead.
     * </p>
     *
     * @see <a href="http://docs.oracle.com/javase/6/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     */
    public static final Charset US_ASCII = charsets_1_expr2_line_114;

    int PROBE_START_LINE_116 = 128;

	public static final String q_utf_16_3_line_128 = CharEncoding.UTF_16;

	public static final java.nio.charset.Charset charsets_1_expr3_line_128 = Charset.forName(q_utf_16_3_line_128);

	int PROBE_END_LINE_116 = 128;

	/**
     * Sixteen-bit Unicode Transformation Format, The byte order specified by a mandatory initial byte-order mark
     * (either order accepted on input, big-endian used on output)
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     * <p>
     * On Java 7 or later, use {@link java.nio.charset.StandardCharsets#ISO_8859_1} instead.
     * </p>
     *
     * @see <a href="http://docs.oracle.com/javase/6/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     */
    public static final Charset UTF_16 = charsets_1_expr3_line_128;

    int PROBE_START_LINE_130 = 141;

	public static final String q_utf_16be_4_line_141 = CharEncoding.UTF_16BE;

	public static final java.nio.charset.Charset charsets_1_expr4_line_141 = Charset.forName(q_utf_16be_4_line_141);

	int PROBE_END_LINE_130 = 141;

	/**
     * Sixteen-bit Unicode Transformation Format, big-endian byte order.
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     * <p>
     * On Java 7 or later, use {@link java.nio.charset.StandardCharsets#ISO_8859_1} instead.
     * </p>
     *
     * @see <a href="http://docs.oracle.com/javase/6/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     */
    public static final Charset UTF_16BE = charsets_1_expr4_line_141;

    int PROBE_START_LINE_143 = 154;

	public static final String q_utf_16le_5_line_154 = CharEncoding.UTF_16LE;

	public static final java.nio.charset.Charset charsets_1_expr5_line_154 = Charset.forName(q_utf_16le_5_line_154);

	int PROBE_END_LINE_143 = 154;

	/**
     * Sixteen-bit Unicode Transformation Format, little-endian byte order.
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     * <p>
     * On Java 7 or later, use {@link java.nio.charset.StandardCharsets#ISO_8859_1} instead.
     * </p>
     *
     * @see <a href="http://docs.oracle.com/javase/6/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     */
    public static final Charset UTF_16LE = charsets_1_expr5_line_154;

    int PROBE_START_LINE_156 = 167;

	public static final String q_utf_8_6_line_167 = CharEncoding.UTF_8;

	public static final java.nio.charset.Charset charsets_1_expr6_line_167 = Charset.forName(q_utf_8_6_line_167);

	int PROBE_END_LINE_156 = 167;

	/**
     * Eight-bit Unicode Transformation Format.
     * <p>
     * Every implementation of the Java platform is required to support this character encoding.
     * </p>
     * <p>
     * On Java 7 or later, use {@link java.nio.charset.StandardCharsets#ISO_8859_1} instead.
     * </p>
     *
     * @see <a href="http://docs.oracle.com/javase/6/docs/api/java/nio/charset/Charset.html">Standard charsets</a>
     */
    public static final Charset UTF_8 = charsets_1_expr6_line_167;
}
