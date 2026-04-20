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

package org.apache.commons.codec.binary;

import java.math.BigInteger;

import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;

/**
 * Provides Base64 encoding and decoding as defined by RFC 2045.
 * 
 * <p>
 * This class implements section <cite>6.8. Base64 Content-Transfer-Encoding</cite> from RFC 2045 <cite>Multipurpose
 * Internet Mail Extensions (MIME) Part One: Format of Internet Message Bodies</cite> by Freed and Borenstein.
 * </p>
 * <p>
 * The class can be parameterized in the following manner with various constructors:
 * <ul>
 * <li>URL-safe mode: Default off.</li>
 * <li>Line length: Default 76. Line length that aren't multiples of 4 will still essentially end up being multiples of
 * 4 in the encoded data.
 * <li>Line separator: Default is CRLF ("\r\n")</li>
 * </ul>
 * </p>
 * <p>
 * Since this class operates directly on byte streams, and not character streams, it is hard-coded to only encode/decode
 * character encodings which are compatible with the lower 127 ASCII chart (ISO-8859-1, Windows-1252, UTF-8, etc).
 * </p>
 * 
 * @see <a href="http://www.ietf.org/rfc/rfc2045.txt">RFC 2045</a>
 * @author Apache Software Foundation
 * @since 1.0
 * @version $Id$
 */
public class Base64 implements BinaryEncoder, BinaryDecoder {
    private static final int DEFAULT_BUFFER_RESIZE_FACTOR = 2;

    private static final int DEFAULT_BUFFER_SIZE = 8192;

    /**
     *  MIME chunk size per RFC 2045 section 6.8.
     * 
     * <p>
     * The {@value} character limit does not count the trailing CRLF, but counts all other characters, including any
     * equal signs.
     * </p>
     * 
     * @see <a href="http://www.ietf.org/rfc/rfc2045.txt">RFC 2045 section 6.8</a>
     */
    public static final int MIME_CHUNK_SIZE = 76;

    /**
     * PEM chunk size per RFC 1421 section 4.3.2.4.
     * 
     * <p>
     * The {@value} character limit does not count the trailing CRLF, but counts all other characters, including any
     * equal signs.
     * </p>
     * 
     * @see <a href="http://tools.ietf.org/html/rfc1421">RFC 1421 section 4.3.2.4</a>
     */
    public static final int PEM_CHUNK_SIZE = 64;

    /**
     * Chunk separator per RFC 2045 section 2.1.
     *
     * <p>
     * N.B. The next major release may break compatibility and make this field private.
     * </p>
     * 
     * @see <a href="http://www.ietf.org/rfc/rfc2045.txt">RFC 2045 section 2.1</a>
     */
    static final byte[] CHUNK_SEPARATOR = {'\r', '\n'};

    /**
     * This array is a lookup table that translates 6-bit positive integer index values into their "Base64 Alphabet"
     * equivalents as specified in Table 1 of RFC 2045.
     * 
     * Thanks to "commons" project in ws.apache.org for this code.
     * http://svn.apache.org/repos/asf/webservices/commons/trunk/modules/util/
     */
    private static final byte[] STANDARD_ENCODE_TABLE = {
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
            'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
            'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'
    };

    /**
     * This is a copy of the STANDARD_ENCODE_TABLE above, but with + and /
     * changed to - and _ to make the encoded Base64 results more URL-SAFE.
     * This table is only used when the Base64's mode is set to URL-SAFE.
     */    
    private static final byte[] URL_SAFE_ENCODE_TABLE = {
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
            'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
            'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'
    };

    /**
     * Byte used to pad output.
     */
    private static final byte PAD = '=';

    /**
     * This array is a lookup table that translates Unicode characters drawn from the "Base64 Alphabet" (as specified in
     * Table 1 of RFC 2045) into their 6-bit positive integer equivalents. Characters that are not in the Base64
     * alphabet but fall within the bounds of the array are translated to -1.
     * 
     * Note: '+' and '-' both decode to 62. '/' and '_' both decode to 63. This means decoder seamlessly handles both
     * URL_SAFE and STANDARD base64. (The encoder, on the other hand, needs to know ahead of time what to emit).
     * 
     * Thanks to "commons" project in ws.apache.org for this code.
     * http://svn.apache.org/repos/asf/webservices/commons/trunk/modules/util/
     */
    private static final byte[] DECODE_TABLE = {
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
            -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54,
            55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4,
            5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
            24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34,
            35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51
    };

    /** Mask used to extract 6 bits, used when encoding */
    private static final int MASK_6BITS = 0x3f;

    /** Mask used to extract 8 bits, used in decoding base64 bytes */
    private static final int MASK_8BITS = 0xff;

    // The static final fields above are used for the original static byte[] methods on Base64.
    // The private member fields below are used with the new streaming approach, which requires
    // some state be preserved between calls of encode() and decode().

    /**
     * Encode table to use: either STANDARD or URL_SAFE. Note: the DECODE_TABLE above remains static because it is able
     * to decode both STANDARD and URL_SAFE streams, but the encodeTable must be a member variable so we can switch
     * between the two modes.
     */
    private final byte[] encodeTable;

    /**
     * Line length for encoding. Not used when decoding. A value of zero or less implies no chunking of the base64
     * encoded data.
     */
    private final int lineLength;

    /**
     * Line separator for encoding. Not used when decoding. Only used if lineLength > 0.
     */
    private final byte[] lineSeparator;

    /**
     * Convenience variable to help us determine when our buffer is going to run out of room and needs resizing.
     * <code>decodeSize = 3 + lineSeparator.length;</code>
     */
    private final int decodeSize;

    /**
     * Convenience variable to help us determine when our buffer is going to run out of room and needs resizing.
     * <code>encodeSize = 4 + lineSeparator.length;</code>
     */
    private final int encodeSize;

    /**
     * Buffer for streaming.
     */
    private byte[] buffer;

    /**
     * Position where next character should be written in the buffer.
     */
    private int pos;

    /**
     * Position where next character should be read from the buffer.
     */
    private int readPos;

    /**
     * Variable tracks how many characters have been written to the current line. Only used when encoding. We use it to
     * make sure each encoded line never goes beyond lineLength (if lineLength > 0).
     */
    private int currentLinePos;

    /**
     * Writes to the buffer only occur after every 3 reads when encoding, an every 4 reads when decoding. This variable
     * helps track that.
     */
    private int modulus;

    /**
     * Boolean flag to indicate the EOF has been reached. Once EOF has been reached, this Base64 object becomes useless,
     * and must be thrown away.
     */
    private boolean eof;

    /**
     * Place holder for the 3 bytes we're dealing with for our base64 logic. Bitwise operations store and extract the
     * base64 encoding or decoding from this variable.
     */
    private int x;

    /**
     * Creates a Base64 codec used for decoding (all modes) and encoding in URL-unsafe mode.
     * <p>
     * When encoding the line length is 0 (no chunking), and the encoding table is STANDARD_ENCODE_TABLE.
     * </p>
     * 
     * <p>
     * When decoding all variants are supported.
     * </p>
     */
    public Base64() {
        this(0);
    }

    /**
     * Creates a Base64 codec used for decoding (all modes) and encoding in the given URL-safe mode.
     * <p>
     * When encoding the line length is 76, the line separator is CRLF, and the encoding table is STANDARD_ENCODE_TABLE.
     * </p>
     * 
     * <p>
     * When decoding all variants are supported.
     * </p>
     * 
     * @param urlSafe
     *            if <code>true</code>, URL-safe encoding is used. In most cases this should be set to
     *            <code>false</code>.
     * @since 1.4
     */
    public Base64(boolean urlSafe) {
        this(MIME_CHUNK_SIZE, CHUNK_SEPARATOR, urlSafe);
    }

    /**
     * Creates a Base64 codec used for decoding (all modes) and encoding in URL-unsafe mode.
     * <p>
     * When encoding the line length is given in the constructor, the line separator is CRLF, and the encoding table is
     * STANDARD_ENCODE_TABLE.
     * </p>
     * <p>
     * Line lengths that aren't multiples of 4 will still essentially end up being multiples of 4 in the encoded data.
     * </p>
     * <p>
     * When decoding all variants are supported.
     * </p>
     * 
     * @param lineLength
     *            Each line of encoded data will be at most of the given length (rounded down to nearest multiple of 4).
     *            If lineLength <= 0, then the output will not be divided into lines (chunks). Ignored when decoding.
     * @since 1.4
     */
    public Base64(int lineLength) {
        this(lineLength, CHUNK_SEPARATOR);
    }

    /**
     * Creates a Base64 codec used for decoding (all modes) and encoding in URL-unsafe mode.
     * <p>
     * When encoding the line length and line separator are given in the constructor, and the encoding table is
     * STANDARD_ENCODE_TABLE.
     * </p>
     * <p>
     * Line lengths that aren't multiples of 4 will still essentially end up being multiples of 4 in the encoded data.
     * </p>
     * <p>
     * When decoding all variants are supported.
     * </p>
     * 
     * @param lineLength
     *            Each line of encoded data will be at most of the given length (rounded down to nearest multiple of 4).
     *            If lineLength <= 0, then the output will not be divided into lines (chunks). Ignored when decoding.
     * @param lineSeparator
     *            Each line of encoded data will end with this sequence of bytes.
     * @throws IllegalArgumentException
     *             Thrown when the provided lineSeparator included some base64 characters.
     * @since 1.4
     */
    public Base64(int lineLength, byte[] lineSeparator) {
        this(lineLength, lineSeparator, false);
    }

    /**
     * Creates a Base64 codec used for decoding (all modes) and encoding in URL-unsafe mode.
     * <p>
     * When encoding the line length and line separator are given in the constructor, and the encoding table is
     * STANDARD_ENCODE_TABLE.
     * </p>
     * <p>
     * Line lengths that aren't multiples of 4 will still essentially end up being multiples of 4 in the encoded data.
     * </p>
     * <p>
     * When decoding all variants are supported.
     * </p>
     * 
     * @param lineLength
     *            Each line of encoded data will be at most of the given length (rounded down to nearest multiple of 4).
     *            If lineLength <= 0, then the output will not be divided into lines (chunks). Ignored when decoding.
     * @param lineSeparator
     *            Each line of encoded data will end with this sequence of bytes.
     * @param urlSafe
     *            Instead of emitting '+' and '/' we emit '-' and '_' respectively. urlSafe is only applied to encode
     *            operations. Decoding seamlessly handles both modes.
     * @throws IllegalArgumentException
     *             The provided lineSeparator included some base64 characters. That's not going to work!
     * @since 1.4
     */
    public Base64(int lineLength, byte[] lineSeparator, boolean urlSafe) {
        int PROBE_START_LINE_333 = 336;
		byte[] p_line_separator_11_line_333 = lineSeparator;
		boolean base64_1_expr6_line_333 = p_line_separator_11_line_333 == null;
		int PROBE_END_LINE_333 = 336;
		if (base64_1_expr6_line_333) {
            lineLength = 0;  // disable chunk-separating
            lineSeparator = CHUNK_SEPARATOR;  // this just gets ignored
        }
        int PROBE_START_LINE_337 = 337;
		int p_line_length_10_line_337 = lineLength;
		boolean base64_1_expr11_line_337 = p_line_length_10_line_337 > 0;
		int base64_1_expr12_line_337 = 0;
		if (base64_1_expr11_line_337) {
			int p_line_length_10_line_337_v1 = lineLength;
			int base64_1_expr14_line_337 = p_line_length_10_line_337_v1 / 4;
			int base64_1_expr13_line_337 = (base64_1_expr14_line_337);
			base64_1_expr12_line_337 = base64_1_expr13_line_337 * 4;
		}
		int base64_1_expr9_line_337 = base64_1_expr11_line_337 ? base64_1_expr12_line_337 : 0;
		int PROBE_END_LINE_337 = 337;
		this.lineLength = base64_1_expr9_line_337;
        int PROBE_START_LINE_338 = 338;
		byte[] p_line_separator_11_line_338 = lineSeparator;
		int q_length_1_line_338 = p_line_separator_11_line_338.length;
		int PROBE_END_LINE_338 = 338;
		this.lineSeparator = new byte[q_length_1_line_338];
        int PROBE_START_LINE_339 = 339;
		byte[] p_line_separator_11_line_339 = lineSeparator;
		byte[] f_line_separator_14_line_339 = this.lineSeparator;
		byte[] p_line_separator_11_line_339_v1 = lineSeparator;
		int q_length_2_line_339 = p_line_separator_11_line_339_v1.length;
		int PROBE_END_LINE_339 = 339;
		System.arraycopy(p_line_separator_11_line_339, 0, f_line_separator_14_line_339, 0, q_length_2_line_339);
        int PROBE_START_LINE_340 = 344;
		int p_line_length_10_line_340 = lineLength;
		boolean base64_1_expr22_line_340 = p_line_length_10_line_340 > 0;
		int PROBE_END_LINE_340 = 344;
		if (base64_1_expr22_line_340) {
            int PROBE_START_LINE_341 = 341;
			byte[] p_line_separator_11_line_341 = lineSeparator;
			int q_length_2_line_341 = p_line_separator_11_line_341.length;
			int base64_1_expr25_line_341 = 4 + q_length_2_line_341;
			int PROBE_END_LINE_341 = 341;
			this.encodeSize = base64_1_expr25_line_341;
        } else {
            this.encodeSize = 4;
        }
        int PROBE_START_LINE_345 = 345;
		int f_encode_size_15_line_345 = this.encodeSize;
		int base64_1_expr29_line_345 = f_encode_size_15_line_345 - 1;
		int PROBE_END_LINE_345 = 345;
		this.decodeSize = base64_1_expr29_line_345;
        int PROBE_START_LINE_346 = 349;
		byte[] p_line_separator_11_line_346 = lineSeparator;
		boolean base64_1_expr33_line_346 = containsBase64Byte(p_line_separator_11_line_346);
		int PROBE_END_LINE_346 = 349;
		if (base64_1_expr33_line_346) {
            String sep = StringUtils.newStringUtf8(lineSeparator);
            throw new IllegalArgumentException("lineSeperator must not contain base64 characters: [" + sep + "]");
        }
        int PROBE_START_LINE_350 = 350;
		boolean p_url_safe_12_line_350 = urlSafe;
		byte[] f_url_safe_encode_table_3_line_350 = null;
		byte[] f_standard_encode_table_2_line_350 = null;
		if (p_url_safe_12_line_350) {
			f_url_safe_encode_table_3_line_350 = URL_SAFE_ENCODE_TABLE;
		} else {
			f_standard_encode_table_2_line_350 = STANDARD_ENCODE_TABLE;
		}
		byte[] base64_1_expr36_line_350 = p_url_safe_12_line_350
				? f_url_safe_encode_table_3_line_350
				: f_standard_encode_table_2_line_350;
		int PROBE_END_LINE_350 = 350;
		this.encodeTable = base64_1_expr36_line_350;
    }

    /**
     * Returns our current encode mode. True if we're URL-SAFE, false otherwise.
     * 
     * @return true if we're in URL-SAFE mode, false otherwise.
     * @since 1.4
     */
    public boolean isUrlSafe() {
        return this.encodeTable == URL_SAFE_ENCODE_TABLE;
    }

    /**
     * Returns true if this Base64 object has buffered data for reading.
     * 
     * @return true if there is Base64 object still available for reading.
     */
    boolean hasData() {
        int PROBE_START_LINE_369 = 369;
		byte[] f_buffer_18_line_369 = this.buffer;
		boolean base64_1_expr38_line_369 = f_buffer_18_line_369 != null;
		int PROBE_END_LINE_369 = 369;
		return base64_1_expr38_line_369;
    }

    /**
     * Returns the amount of buffered data available for reading.
     * 
     * @return The amount of buffered data available for reading.
     */
    int avail() {
        int PROBE_START_LINE_378 = 378;
		byte[] f_buffer_18_line_378 = buffer;
		boolean base64_1_expr42_line_378 = f_buffer_18_line_378 != null;
		int base64_1_expr43_line_378 = 0;
		if (base64_1_expr42_line_378) {
			int f_pos_19_line_378 = pos;
			int f_read_pos_20_line_378 = readPos;
			base64_1_expr43_line_378 = f_pos_19_line_378 - f_read_pos_20_line_378;
		}
		int base64_1_expr41_line_378 = base64_1_expr42_line_378 ? base64_1_expr43_line_378 : 0;
		int PROBE_END_LINE_378 = 378;
		return base64_1_expr41_line_378;
    }

    /** Doubles our buffer. */
    private void resizeBuffer() {
        int PROBE_START_LINE_383 = 391;
		byte[] f_buffer_18_line_383 = buffer;
		boolean base64_1_expr44_line_383 = f_buffer_18_line_383 == null;
		int PROBE_END_LINE_383 = 391;
		if (base64_1_expr44_line_383) {
            int PROBE_START_LINE_384 = 384;
			int f_default_buffer_size_21_line_384 = DEFAULT_BUFFER_SIZE;
			int PROBE_END_LINE_384 = 384;
			buffer = new byte[f_default_buffer_size_21_line_384];
            pos = 0;
            readPos = 0;
        } else {
            byte[] b = new byte[buffer.length * DEFAULT_BUFFER_RESIZE_FACTOR];
            System.arraycopy(buffer, 0, b, 0, buffer.length);
            buffer = b;
        }
    }

    /**
     * Extracts buffered data into the provided byte[] array, starting at position bPos, up to a maximum of bAvail
     * bytes. Returns how many bytes were actually extracted.
     * 
     * @param b
     *            byte[] array to extract the buffered data into.
     * @param bPos
     *            position in byte[] array to start extraction at.
     * @param bAvail
     *            amount of bytes we're allowed to extract. We may extract fewer (if fewer are available).
     * @return The number of bytes successfully extracted into the provided byte[] array.
     */
    int readResults(byte[] b, int bPos, int bAvail) {
        int PROBE_START_LINE_407 = 421;
		byte[] f_buffer_18_line_407 = buffer;
		boolean base64_1_expr49_line_407 = f_buffer_18_line_407 != null;
		int PROBE_END_LINE_407 = 421;
		if (base64_1_expr49_line_407) {
            int PROBE_START_LINE_408 = 408;
			int base64_1_expr51_line_408 = avail();
			int p_b_avail_24_line_408 = bAvail;
			int base64_1_expr50_line_408 = Math.min(base64_1_expr51_line_408, p_b_avail_24_line_408);
			int PROBE_END_LINE_408 = 408;
			int len = base64_1_expr50_line_408;
            int PROBE_START_LINE_409 = 419;
			byte[] f_buffer_18_line_409 = buffer;
			byte[] p_b_22_line_409 = b;
			boolean base64_1_expr52_line_409 = f_buffer_18_line_409 != p_b_22_line_409;
			int PROBE_END_LINE_409 = 419;
			if (base64_1_expr52_line_409) {
                int PROBE_START_LINE_410 = 410;
				byte[] f_buffer_18_line_410 = buffer;
				int f_read_pos_20_line_410 = readPos;
				byte[] p_b_22_line_410 = b;
				int p_b_pos_23_line_410 = bPos;
				int v_len_25_line_410 = len;
				int PROBE_END_LINE_410 = 410;
				System.arraycopy(f_buffer_18_line_410, f_read_pos_20_line_410, p_b_22_line_410, p_b_pos_23_line_410, v_len_25_line_410);
                int PROBE_START_LINE_411 = 411;
				int v_len_25_line_411 = len;
				int PROBE_END_LINE_411 = 411;
				readPos += v_len_25_line_411;
                int PROBE_START_LINE_412 = 414;
				int f_read_pos_20_line_412 = readPos;
				int f_pos_19_line_412 = pos;
				boolean base64_1_expr55_line_412 = f_read_pos_20_line_412 >= f_pos_19_line_412;
				int PROBE_END_LINE_412 = 414;
				if (base64_1_expr55_line_412) {
                    buffer = null;
                }
            } else {
                // Re-using the original consumer's output array is only
                // allowed for one round.
                buffer = null;
            }
            int PROBE_START_LINE_420 = 420;
			int v_len_25_line_420 = len;
			int PROBE_END_LINE_420 = 420;
			return v_len_25_line_420;
        }
        return eof ? -1 : 0;
    }

    /**
     * Sets the streaming buffer. This is a small optimization where we try to buffer directly to the consumer's output
     * array for one round (if the consumer calls this method first) instead of starting our own buffer.
     * 
     * @param out
     *            byte[] array to buffer directly to.
     * @param outPos
     *            Position to start buffering into.
     * @param outAvail
     *            Amount of bytes available for direct buffering.
     */
    void setInitialBuffer(byte[] out, int outPos, int outAvail) {
        int PROBE_START_LINE_439 = 443;
		byte[] p_out_26_line_439 = out;
		boolean base64_1_expr59_line_439 = p_out_26_line_439 != null;
		boolean base64_1_expr60_line_439 = true;
		if (base64_1_expr59_line_439) {
			byte[] p_out_26_line_439_v1 = out;
			int q_length_2_line_439 = p_out_26_line_439_v1.length;
			int p_out_avail_28_line_439 = outAvail;
			base64_1_expr60_line_439 = q_length_2_line_439 == p_out_avail_28_line_439;
		}
		boolean base64_1_expr58_line_439 = base64_1_expr59_line_439 && base64_1_expr60_line_439;
		int PROBE_END_LINE_439 = 443;
		// We can re-use consumer's original output array under
        // special circumstances, saving on some System.arraycopy().
        if (base64_1_expr58_line_439) {
            int PROBE_START_LINE_440 = 440;
			byte[] p_out_26_line_440 = out;
			int PROBE_END_LINE_440 = 440;
			buffer = p_out_26_line_440;
            int PROBE_START_LINE_441 = 441;
			int p_out_pos_27_line_441 = outPos;
			int PROBE_END_LINE_441 = 441;
			pos = p_out_pos_27_line_441;
            int PROBE_START_LINE_442 = 442;
			int p_out_pos_27_line_442 = outPos;
			int PROBE_END_LINE_442 = 442;
			readPos = p_out_pos_27_line_442;
        }
    }

    /**
     * <p>
     * Encodes all of the provided data, starting at inPos, for inAvail bytes. Must be called at least twice: once with
     * the data to encode, and once with inAvail set to "-1" to alert encoder that EOF has been reached, so flush last
     * remaining bytes (if not multiple of 3).
     * </p>
     * <p>
     * Thanks to "commons" project in ws.apache.org for the bitwise operations, and general approach.
     * http://svn.apache.org/repos/asf/webservices/commons/trunk/modules/util/
     * </p>
     * 
     * @param in
     *            byte[] array of binary data to base64 encode.
     * @param inPos
     *            Position to start reading data from.
     * @param inAvail
     *            Amount of bytes available from input for encoding.
     */
    void encode(byte[] in, int inPos, int inAvail) {
        if (eof) {
            return;
        }
        // inAvail < 0 is how we're informed of EOF in the underlying data we're
        // encoding.
        if (inAvail < 0) {
            eof = true;
            if (buffer == null || buffer.length - pos < encodeSize) {
                resizeBuffer();
            }
            switch (modulus) {
                case 1 :
                    buffer[pos++] = encodeTable[(x >> 2) & MASK_6BITS];
                    buffer[pos++] = encodeTable[(x << 4) & MASK_6BITS];
                    // URL-SAFE skips the padding to further reduce size.
                    if (encodeTable == STANDARD_ENCODE_TABLE) {
                        buffer[pos++] = PAD;
                        buffer[pos++] = PAD;
                    }
                    break;

                case 2 :
                    buffer[pos++] = encodeTable[(x >> 10) & MASK_6BITS];
                    buffer[pos++] = encodeTable[(x >> 4) & MASK_6BITS];
                    buffer[pos++] = encodeTable[(x << 2) & MASK_6BITS];
                    // URL-SAFE skips the padding to further reduce size.
                    if (encodeTable == STANDARD_ENCODE_TABLE) {
                        buffer[pos++] = PAD;
                    }
                    break;
            }
            if (lineLength > 0 && pos > 0) {
                System.arraycopy(lineSeparator, 0, buffer, pos, lineSeparator.length);
                pos += lineSeparator.length;
            }
        } else {
            for (int i = 0; i < inAvail; i++) {
                if (buffer == null || buffer.length - pos < encodeSize) {
                    resizeBuffer();
                }
                modulus = (++modulus) % 3;
                int b = in[inPos++];
                if (b < 0) {
                    b += 256;
                }
                x = (x << 8) + b;
                if (0 == modulus) {
                    buffer[pos++] = encodeTable[(x >> 18) & MASK_6BITS];
                    buffer[pos++] = encodeTable[(x >> 12) & MASK_6BITS];
                    buffer[pos++] = encodeTable[(x >> 6) & MASK_6BITS];
                    buffer[pos++] = encodeTable[x & MASK_6BITS];
                    currentLinePos += 4;
                    if (lineLength > 0 && lineLength <= currentLinePos) {
                        System.arraycopy(lineSeparator, 0, buffer, pos, lineSeparator.length);
                        pos += lineSeparator.length;
                        currentLinePos = 0;
                    }
                }
            }
        }
    }

    /**
     * <p>
     * Decodes all of the provided data, starting at inPos, for inAvail bytes. Should be called at least twice: once
     * with the data to decode, and once with inAvail set to "-1" to alert decoder that EOF has been reached. The "-1"
     * call is not necessary when decoding, but it doesn't hurt, either.
     * </p>
     * <p>
     * Ignores all non-base64 characters. This is how chunked (e.g. 76 character) data is handled, since CR and LF are
     * silently ignored, but has implications for other bytes, too. This method subscribes to the garbage-in,
     * garbage-out philosophy: it will not check the provided data for validity.
     * </p>
     * <p>
     * Thanks to "commons" project in ws.apache.org for the bitwise operations, and general approach.
     * http://svn.apache.org/repos/asf/webservices/commons/trunk/modules/util/
     * </p>
     * 
     * @param in
     *            byte[] array of ascii data to base64 decode.
     * @param inPos
     *            Position to start reading data from.
     * @param inAvail
     *            Amount of bytes available from input for encoding.
     */
    void decode(byte[] in, int inPos, int inAvail) {
        int PROBE_START_LINE_551 = 553;
		boolean f_eof_35_line_551 = eof;
		int PROBE_END_LINE_551 = 553;
		if (f_eof_35_line_551) {
            return;
        }
        int PROBE_START_LINE_554 = 556;
		int p_in_avail_34_line_554 = inAvail;
		boolean base64_1_expr64_line_554 = p_in_avail_34_line_554 < 0;
		int PROBE_END_LINE_554 = 556;
		if (base64_1_expr64_line_554) {
            eof = true;
        }
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_558 = 560;
			int v_i_36_line_557 = i;
			int p_in_avail_34_line_557 = inAvail;
			boolean base64_1_expr67_line_557 = v_i_36_line_557 < p_in_avail_34_line_557;
			if (!(base64_1_expr67_line_557)) {
				break;
			}
			byte[] f_buffer_18_line_558 = buffer;
			boolean base64_1_expr70_line_558 = f_buffer_18_line_558 == null;
			boolean base64_1_expr71_line_558 = false;
			if (!base64_1_expr70_line_558) {
				byte[] f_buffer_18_line_558_v1 = buffer;
				int q_length_3_line_558 = f_buffer_18_line_558_v1.length;
				int f_pos_19_line_558 = pos;
				int base64_1_expr72_line_558 = q_length_3_line_558 - f_pos_19_line_558;
				int f_decode_size_16_line_558 = decodeSize;
				base64_1_expr71_line_558 = base64_1_expr72_line_558 < f_decode_size_16_line_558;
			}
			boolean base64_1_expr69_line_558 = base64_1_expr70_line_558 || base64_1_expr71_line_558;
			int PROBE_END_LINE_558 = 560;
			if (base64_1_expr69_line_558) {
                resizeBuffer();
            }
            int PROBE_START_LINE_561 = 561;
			byte[] p_in_32_line_561 = in;
			byte base64_1_expr74_line_561 = p_in_32_line_561[inPos++];
			int PROBE_END_LINE_561 = 561;
			byte b = base64_1_expr74_line_561;
            int PROBE_START_LINE_562 = 579;
			byte v_b_37_line_562 = b;
			byte f_pad_38_line_562 = PAD;
			boolean base64_1_expr76_line_562 = v_b_37_line_562 == f_pad_38_line_562;
			int PROBE_END_LINE_562 = 579;
			if (base64_1_expr76_line_562) {
                // We're done.
                eof = true;
                break;
            } else {
                int PROBE_START_LINE_567 = 578;
				byte v_b_37_line_567 = b;
				boolean base64_1_expr78_line_567 = v_b_37_line_567 >= 0;
				boolean base64_1_expr79_line_567 = true;
				if (base64_1_expr78_line_567) {
					byte v_b_37_line_567_v1 = b;
					byte[] f_decode_table_4_line_567 = DECODE_TABLE;
					int q_length_4_line_567 = f_decode_table_4_line_567.length;
					base64_1_expr79_line_567 = v_b_37_line_567_v1 < q_length_4_line_567;
				}
				boolean base64_1_expr77_line_567 = base64_1_expr78_line_567 && base64_1_expr79_line_567;
				int PROBE_END_LINE_567 = 578;
				if (base64_1_expr77_line_567) {
                    int PROBE_START_LINE_568 = 568;
					byte[] f_decode_table_4_line_568 = DECODE_TABLE;
					byte v_b_37_line_568 = b;
					int base64_1_expr80_line_568 = f_decode_table_4_line_568[v_b_37_line_568];
					int PROBE_END_LINE_568 = 568;
					int result = base64_1_expr80_line_568;
                    int PROBE_START_LINE_569 = 577;
					int v_result_39_line_569 = result;
					boolean base64_1_expr81_line_569 = v_result_39_line_569 >= 0;
					int PROBE_END_LINE_569 = 577;
					if (base64_1_expr81_line_569) {
                        int PROBE_START_LINE_570 = 570;
						int base64_1_expr84_line_570 = (++modulus);
						int base64_1_expr83_line_570 = base64_1_expr84_line_570 % 4;
						int PROBE_END_LINE_570 = 570;
						modulus = base64_1_expr83_line_570;
                        int PROBE_START_LINE_571 = 571;
						int f_x_41_line_571 = x;
						int base64_1_expr89_line_571 = f_x_41_line_571 << 6;
						int base64_1_expr88_line_571 = (base64_1_expr89_line_571);
						int v_result_39_line_571 = result;
						int base64_1_expr87_line_571 = base64_1_expr88_line_571 + v_result_39_line_571;
						int PROBE_END_LINE_571 = 571;
						x = base64_1_expr87_line_571;
                        int PROBE_START_LINE_572 = 576;
						int f_modulus_40_line_572 = modulus;
						boolean base64_1_expr90_line_572 = f_modulus_40_line_572 == 0;
						int PROBE_END_LINE_572 = 576;
						if (base64_1_expr90_line_572) {
                            int PROBE_START_LINE_573 = 573;
							byte[] f_buffer_18_line_573 = buffer;
							int f_x_41_line_573 = x;
							int base64_1_expr98_line_573 = f_x_41_line_573 >> 16;
							int base64_1_expr97_line_573 = (base64_1_expr98_line_573);
							int f_mask_8bits_42_line_573 = MASK_8BITS;
							int base64_1_expr96_line_573 = base64_1_expr97_line_573 & f_mask_8bits_42_line_573;
							int base64_1_expr95_line_573 = (base64_1_expr96_line_573);
							int PROBE_END_LINE_573 = 573;
							f_buffer_18_line_573[pos++] = (byte) base64_1_expr95_line_573;
                            int PROBE_START_LINE_574 = 574;
							byte[] f_buffer_18_line_574 = buffer;
							int f_x_41_line_574 = x;
							int base64_1_expr106_line_574 = f_x_41_line_574 >> 8;
							int base64_1_expr105_line_574 = (base64_1_expr106_line_574);
							int f_mask_8bits_42_line_574 = MASK_8BITS;
							int base64_1_expr104_line_574 = base64_1_expr105_line_574 & f_mask_8bits_42_line_574;
							int base64_1_expr103_line_574 = (base64_1_expr104_line_574);
							int PROBE_END_LINE_574 = 574;
							f_buffer_18_line_574[pos++] = (byte) base64_1_expr103_line_574;
                            int PROBE_START_LINE_575 = 575;
							byte[] f_buffer_18_line_575 = buffer;
							int f_x_41_line_575 = x;
							int f_mask_8bits_42_line_575 = MASK_8BITS;
							int base64_1_expr112_line_575 = f_x_41_line_575 & f_mask_8bits_42_line_575;
							int base64_1_expr111_line_575 = (base64_1_expr112_line_575);
							int PROBE_END_LINE_575 = 575;
							f_buffer_18_line_575[pos++] = (byte) base64_1_expr111_line_575;
                        }
                    }
                }
            }
        }

        int PROBE_START_LINE_585 = 598;
		boolean f_eof_35_line_585 = eof;
		boolean base64_1_expr114_line_585 = true;
		if (f_eof_35_line_585) {
			int f_modulus_40_line_585 = modulus;
			base64_1_expr114_line_585 = f_modulus_40_line_585 != 0;
		}
		boolean base64_1_expr113_line_585 = f_eof_35_line_585 && base64_1_expr114_line_585;
		int PROBE_END_LINE_585 = 598;
		// Two forms of EOF as far as base64 decoder is concerned: actual
        // EOF (-1) and first time '=' character is encountered in stream.
        // This approach makes the '=' padding characters completely optional.
        if (base64_1_expr113_line_585) {
            
            x = x << 6;
            switch (modulus) {
                case 2 :
                    x = x << 6;
                    buffer[pos++] = (byte) ((x >> 16) & MASK_8BITS);
                    break;
                case 3 :
			int PROBE_START_LINE_594 = 594;
			byte[] f_buffer_18_line_594 = buffer;
			int f_x_41_line_594 = x;
			int base64_1_expr122_line_594 = f_x_41_line_594 >> 16;
			int base64_1_expr121_line_594 = (base64_1_expr122_line_594);
			int f_mask_8bits_42_line_594 = MASK_8BITS;
			int base64_1_expr120_line_594 = base64_1_expr121_line_594 & f_mask_8bits_42_line_594;
			int base64_1_expr119_line_594 = (base64_1_expr120_line_594);
			int PROBE_END_LINE_594 = 594;
			f_buffer_18_line_594[pos++] = (byte) base64_1_expr119_line_594;
                    buffer[pos++] = (byte) ((x >> 8) & MASK_8BITS);
                    break;
            }
        }
    }

    /**
     * Returns whether or not the <code>octet</code> is in the base 64 alphabet.
     * 
     * @param octet
     *            The value to test
     * @return <code>true</code> if the value is defined in the the base 64 alphabet, <code>false</code> otherwise.
     * @since 1.4
     */
    public static boolean isBase64(byte octet) {
        int PROBE_START_LINE_610 = 610;
		byte p_octet_43_line_610 = octet;
		byte f_pad_38_line_610 = PAD;
		boolean base64_1_expr124_line_610 = p_octet_43_line_610 == f_pad_38_line_610;
		boolean base64_1_expr125_line_610 = false;
		if (!base64_1_expr124_line_610) {
			byte p_octet_43_line_610_v1 = octet;
			boolean base64_1_expr128_line_610 = p_octet_43_line_610_v1 >= 0;
			boolean base64_1_expr129_line_610 = true;
			if (base64_1_expr128_line_610) {
				byte p_octet_43_line_610_v2 = octet;
				byte[] f_decode_table_4_line_610 = DECODE_TABLE;
				int q_length_5_line_610 = f_decode_table_4_line_610.length;
				base64_1_expr129_line_610 = p_octet_43_line_610_v2 < q_length_5_line_610;
			}
			boolean base64_1_expr127_line_610 = base64_1_expr128_line_610 && base64_1_expr129_line_610;
			boolean base64_1_expr130_line_610 = true;
			if (base64_1_expr127_line_610) {
				byte[] f_decode_table_4_line_610_v1 = DECODE_TABLE;
				byte p_octet_43_line_610_v3 = octet;
				byte base64_1_expr131_line_610 = f_decode_table_4_line_610_v1[p_octet_43_line_610_v3];
				int base64_1_expr132_line_610 = -1;
				base64_1_expr130_line_610 = base64_1_expr131_line_610 != base64_1_expr132_line_610;
			}
			boolean base64_1_expr126_line_610 = base64_1_expr127_line_610 && base64_1_expr130_line_610;
			base64_1_expr125_line_610 = (base64_1_expr126_line_610);
		}
		boolean base64_1_expr123_line_610 = base64_1_expr124_line_610 || base64_1_expr125_line_610;
		int PROBE_END_LINE_610 = 610;
		return base64_1_expr123_line_610;
    }

    /**
     * Tests a given byte array to see if it contains only valid characters within the Base64 alphabet. Currently the
     * method treats whitespace as valid.
     * 
     * @param arrayOctet
     *            byte array to test
     * @return <code>true</code> if all bytes are valid characters in the Base64 alphabet or if the byte array is empty;
     *         false, otherwise
     */
    public static boolean isArrayByteBase64(byte[] arrayOctet) {
        for (int i = 0; i < arrayOctet.length; i++) {
            if (!isBase64(arrayOctet[i]) && !isWhiteSpace(arrayOctet[i])) {
                return false;
            }
        }
        return true;
    }

    /**
     * Tests a given byte array to see if it contains only valid characters within the Base64 alphabet.
     * 
     * @param arrayOctet
     *            byte array to test
     * @return <code>true</code> if any byte is a valid character in the Base64 alphabet; false herwise
     */
    private static boolean containsBase64Byte(byte[] arrayOctet) {
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_640 = 642;
			int v_i_46_line_639 = i;
			byte[] p_array_octet_45_line_639 = arrayOctet;
			int q_length_5_line_639 = p_array_octet_45_line_639.length;
			boolean base64_1_expr134_line_639 = v_i_46_line_639 < q_length_5_line_639;
			if (!(base64_1_expr134_line_639)) {
				break;
			}
			byte[] p_array_octet_45_line_640 = arrayOctet;
			int v_i_46_line_640 = i;
			byte base64_1_expr137_line_640 = p_array_octet_45_line_640[v_i_46_line_640];
			boolean base64_1_expr136_line_640 = isBase64(base64_1_expr137_line_640);
			int PROBE_END_LINE_640 = 642;
			if (base64_1_expr136_line_640) {
                return true;
            }
        }
        return false;
    }

    /**
     * Encodes binary data using the base64 algorithm but does not chunk the output.
     * 
     * @param binaryData
     *            binary data to encode
     * @return byte[] containing Base64 characters in their UTF-8 representation.
     */
    public static byte[] encodeBase64(byte[] binaryData) {
        return encodeBase64(binaryData, false);
    }

    /**
     * Encodes binary data using the base64 algorithm into 76 character blocks separated by CRLF.
     *
     * @param binaryData
     *            binary data to encode
     * @return String containing Base64 characters.
     * @since 1.4
     */    
    public static String encodeBase64String(byte[] binaryData) {
        return StringUtils.newStringUtf8(encodeBase64(binaryData, true));
    }
    
    /**
     * Encodes binary data using a URL-safe variation of the base64 algorithm but does not chunk the output. The
     * url-safe variation emits - and _ instead of + and / characters.
     * 
     * @param binaryData
     *            binary data to encode
     * @return byte[] containing Base64 characters in their UTF-8 representation.
     * @since 1.4
     */
    public static byte[] encodeBase64URLSafe(byte[] binaryData) {
        return encodeBase64(binaryData, false, true);
    }

    /**
     * Encodes binary data using a URL-safe variation of the base64 algorithm but does not chunk the output. The
     * url-safe variation emits - and _ instead of + and / characters.
     *
     * @param binaryData
     *            binary data to encode
     * @return String containing Base64 characters
     * @since 1.4
     */    
    public static String encodeBase64URLSafeString(byte[] binaryData) {
        return StringUtils.newStringUtf8(encodeBase64(binaryData, false, true));
    }    

    /**
     * Encodes binary data using the base64 algorithm and chunks the encoded output into 76 character blocks
     * 
     * @param binaryData
     *            binary data to encode
     * @return Base64 characters chunked in 76 character blocks
     */
    public static byte[] encodeBase64Chunked(byte[] binaryData) {
        return encodeBase64(binaryData, true);
    }

    /**
     * Decodes an Object using the base64 algorithm. This method is provided in order to satisfy the requirements of the
     * Decoder interface, and will throw a DecoderException if the supplied object is not of type byte[] or String.
     * 
     * @param pObject
     *            Object to decode
     * @return An object (of type byte[]) containing the binary data which corresponds to the byte[] or String supplied.
     * @throws DecoderException
     *             if the parameter supplied is not of type byte[]
     */
    public Object decode(Object pObject) throws DecoderException {        
        if (pObject instanceof byte[]) {
            return decode((byte[]) pObject);
        } else if (pObject instanceof String) {
            return decode((String) pObject);
        } else {
            throw new DecoderException("Parameter supplied to Base64 decode is not a byte[] or a String");
        }
    }

    /**
     * Decodes a String containing characters in the Base64 alphabet.
     *
     * @param pArray
     *            A String containing Base64 character data
     * @return a byte array containing binary data
     * @since 1.4
     */
    public byte[] decode(String pArray) {
        return decode(StringUtils.getBytesUtf8(pArray));
    }

    /**
     * Decodes a byte[] containing characters in the Base64 alphabet.
     * 
     * @param pArray
     *            A byte array containing Base64 character data
     * @return a byte array containing binary data
     */
    public byte[] decode(byte[] pArray) {
        reset();
        if (pArray == null || pArray.length == 0) {
            return pArray;
        }
        long len = (pArray.length * 3) / 4;
        byte[] buf = new byte[(int) len];
        setInitialBuffer(buf, 0, buf.length);
        decode(pArray, 0, pArray.length);
        decode(pArray, 0, -1); // Notify decoder of EOF.

        // Would be nice to just return buf (like we sometimes do in the encode
        // logic), but we have no idea what the line-length was (could even be
        // variable).  So we cannot determine ahead of time exactly how big an
        // array is necessary.  Hence the need to construct a 2nd byte array to
        // hold the final result:

        byte[] result = new byte[pos];
        readResults(result, 0, result.length);
        return result;
    }

    /**
     * Encodes binary data using the base64 algorithm, optionally chunking the output into 76 character blocks.
     * 
     * @param binaryData
     *            Array containing binary data to encode.
     * @param isChunked
     *            if <code>true</code> this encoder will chunk the base64 output into 76 character blocks
     * @return Base64-encoded data.
     * @throws IllegalArgumentException
     *             Thrown when the input array needs an output array bigger than {@link Integer#MAX_VALUE}
     */
    public static byte[] encodeBase64(byte[] binaryData, boolean isChunked) {
        return encodeBase64(binaryData, isChunked, false);
    }

    /**
     * Encodes binary data using the base64 algorithm, optionally chunking the output into 76 character blocks.
     * 
     * @param binaryData
     *            Array containing binary data to encode.
     * @param isChunked
     *            if <code>true</code> this encoder will chunk the base64 output into 76 character blocks
     * @param urlSafe
     *            if <code>true</code> this encoder will emit - and _ instead of the usual + and / characters.
     * @return Base64-encoded data.
     * @throws IllegalArgumentException
     *             Thrown when the input array needs an output array bigger than {@link Integer#MAX_VALUE}
     * @since 1.4
     */
    public static byte[] encodeBase64(byte[] binaryData, boolean isChunked, boolean urlSafe) {
        return encodeBase64(binaryData, isChunked, urlSafe, Integer.MAX_VALUE);
    }

    /**
     * Encodes binary data using the base64 algorithm, optionally chunking the output into 76 character blocks.
     * 
     * @param binaryData
     *            Array containing binary data to encode.
     * @param isChunked
     *            if <code>true</code> this encoder will chunk the base64 output into 76 character blocks
     * @param urlSafe
     *            if <code>true</code> this encoder will emit - and _ instead of the usual + and / characters.
     * @param maxResultSize
     *            The maximum result size to accept.
     * @return Base64-encoded data.
     * @throws IllegalArgumentException
     *             Thrown when the input array needs an output array bigger than maxResultSize
     * @since 1.4
     */
    public static byte[] encodeBase64(byte[] binaryData, boolean isChunked, boolean urlSafe, int maxResultSize) {
        if (binaryData == null || binaryData.length == 0) {
            return binaryData;
        }

        long len = getEncodeLength(binaryData, MIME_CHUNK_SIZE, CHUNK_SEPARATOR);
        if (len > maxResultSize) {
            throw new IllegalArgumentException("Input array too big, the output array would be bigger (" +
                len +
                ") than the specified maxium size of " +
                maxResultSize);
        }
                
        Base64 b64 = isChunked ? new Base64(urlSafe) : new Base64(0, CHUNK_SEPARATOR, urlSafe);
        return b64.encode(binaryData);
    }

    /**
     * Decodes a Base64 String into octets
     *
     * @param base64String
     *            String containing Base64 data
     * @return Array containing decoded data.
     * @since 1.4
     */
    public static byte[] decodeBase64(String base64String) {
        return new Base64().decode(base64String);
    }

    /**
     * Decodes Base64 data into octets
     * 
     * @param base64Data
     *            Byte array containing Base64 data
     * @return Array containing decoded data.
     */
    public static byte[] decodeBase64(byte[] base64Data) {
        return new Base64().decode(base64Data);
    }

    /**
     * Discards any whitespace from a base-64 encoded block.
     * 
     * @param data
     *            The base-64 encoded data to discard the whitespace from.
     * @return The data, less whitespace (see RFC 2045).
     * @deprecated This method is no longer needed
     */
    static byte[] discardWhitespace(byte[] data) {
        byte groomedData[] = new byte[data.length];
        int bytesCopied = 0;
        for (int i = 0; i < data.length; i++) {
            switch (data[i]) {
                case ' ' :
                case '\n' :
                case '\r' :
                case '\t' :
                    break;
                default :
                    groomedData[bytesCopied++] = data[i];
            }
        }
        byte packedData[] = new byte[bytesCopied];
        System.arraycopy(groomedData, 0, packedData, 0, bytesCopied);
        return packedData;
    }

    /**
     * Checks if a byte value is whitespace or not.
     * 
     * @param byteToCheck
     *            the byte to check
     * @return true if byte is whitespace, false otherwise
     */
    private static boolean isWhiteSpace(byte byteToCheck) {
        switch (byteToCheck) {
            case ' ' :
            case '\n' :
            case '\r' :
            case '\t' :
                return true;
            default :
                return false;
        }
    }

    // Implementation of the Encoder Interface

    /**
     * Encodes an Object using the base64 algorithm. This method is provided in order to satisfy the requirements of the
     * Encoder interface, and will throw an EncoderException if the supplied object is not of type byte[].
     * 
     * @param pObject
     *            Object to encode
     * @return An object (of type byte[]) containing the base64 encoded data which corresponds to the byte[] supplied.
     * @throws EncoderException
     *             if the parameter supplied is not of type byte[]
     */
    public Object encode(Object pObject) throws EncoderException {
        if (!(pObject instanceof byte[])) {
            throw new EncoderException("Parameter supplied to Base64 encode is not a byte[]");
        }
        return encode((byte[]) pObject);
    }

    /**
     * Encodes a byte[] containing binary data, into a String containing characters in the Base64 alphabet.
     *
     * @param pArray
     *            a byte array containing binary data
     * @return A String containing only Base64 character data
     * @since 1.4
     */    
    public String encodeToString(byte[] pArray) {
        return StringUtils.newStringUtf8(encode(pArray));
    }

    /**
     * Encodes a byte[] containing binary data, into a byte[] containing characters in the Base64 alphabet.
     * 
     * @param pArray
     *            a byte array containing binary data
     * @return A byte array containing only Base64 character data
     */
    public byte[] encode(byte[] pArray) {
        reset();        
        if (pArray == null || pArray.length == 0) {
            return pArray;
        }
        long len = getEncodeLength(pArray, lineLength, lineSeparator);
        byte[] buf = new byte[(int) len];
        setInitialBuffer(buf, 0, buf.length);
        encode(pArray, 0, pArray.length);
        encode(pArray, 0, -1); // Notify encoder of EOF.
        // Encoder might have resized, even though it was unnecessary.
        if (buffer != buf) {
            readResults(buf, 0, buf.length);
        }
        // In URL-SAFE mode we skip the padding characters, so sometimes our
        // final length is a bit smaller.
        if (isUrlSafe() && pos < buf.length) {
            byte[] smallerBuf = new byte[pos];
            System.arraycopy(buf, 0, smallerBuf, 0, pos);
            buf = smallerBuf;
        }
        return buf;        
    }

    /**
     * Pre-calculates the amount of space needed to base64-encode the supplied array.
     *
     * @param pArray byte[] array which will later be encoded
     * @param chunkSize line-length of the output (<= 0 means no chunking) between each
     *        chunkSeparator (e.g. CRLF).
     * @param chunkSeparator the sequence of bytes used to separate chunks of output (e.g. CRLF).
     *
     * @return amount of space needed to encoded the supplied array.  Returns
     *         a long since a max-len array will require Integer.MAX_VALUE + 33%.
     */
    private static long getEncodeLength(byte[] pArray, int chunkSize, byte[] chunkSeparator) {
        // base64 always encodes to multiples of 4.
        chunkSize = (chunkSize / 4) * 4;

        long len = (pArray.length * 4) / 3;
        long mod = len % 4;
        if (mod != 0) {
            len += 4 - mod;
        }
        if (chunkSize > 0) {
            boolean lenChunksPerfectly = len % chunkSize == 0;
            len += (len / chunkSize) * chunkSeparator.length;
            if (!lenChunksPerfectly) {
                len += chunkSeparator.length;
            }
        }
        return len;
    }

    // Implementation of integer encoding used for crypto
    /**
     * Decodes a byte64-encoded integer according to crypto standards such as W3C's XML-Signature
     * 
     * @param pArray
     *            a byte array containing base64 character data
     * @return A BigInteger
     * @since 1.4
     */
    public static BigInteger decodeInteger(byte[] pArray) {
        return new BigInteger(1, decodeBase64(pArray));
    }

    /**
     * Encodes to a byte64-encoded integer according to crypto standards such as W3C's XML-Signature
     * 
     * @param bigInt
     *            a BigInteger
     * @return A byte array containing base64 character data
     * @throws NullPointerException
     *             if null is passed in
     * @since 1.4
     */
    public static byte[] encodeInteger(BigInteger bigInt) {
        if (bigInt == null) {
            throw new NullPointerException("encodeInteger called with null parameter");
        }
        return encodeBase64(toIntegerBytes(bigInt), false);
    }

    /**
     * Returns a byte-array representation of a <code>BigInteger</code> without sign bit.
     * 
     * @param bigInt
     *            <code>BigInteger</code> to be converted
     * @return a byte array representation of the BigInteger parameter
     */
    static byte[] toIntegerBytes(BigInteger bigInt) {
        int bitlen = bigInt.bitLength();
        // round bitlen
        bitlen = ((bitlen + 7) >> 3) << 3;
        byte[] bigBytes = bigInt.toByteArray();

        if (((bigInt.bitLength() % 8) != 0) && (((bigInt.bitLength() / 8) + 1) == (bitlen / 8))) {
            return bigBytes;
        }
        // set up params for copying everything but sign bit
        int startSrc = 0;
        int len = bigBytes.length;

        // if bigInt is exactly byte-aligned, just skip signbit in copy
        if ((bigInt.bitLength() % 8) == 0) {
            startSrc = 1;
            len--;
        }
        int startDst = bitlen / 8 - len; // to pad w/ nulls as per spec
        byte[] resizedBytes = new byte[bitlen / 8];
        System.arraycopy(bigBytes, startSrc, resizedBytes, startDst, len);
        return resizedBytes;
    }

    /**
     * Resets this Base64 object to its initial newly constructed state.
     */
    private void reset() {
        buffer = null;
        pos = 0;
        readPos = 0;
        currentLinePos = 0;
        modulus = 0;
        eof = false;
    }

}
