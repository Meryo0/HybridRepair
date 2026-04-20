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

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * Provides Base64 encoding and decoding in a streaming fashion (unlimited size). When encoding the default lineLength
 * is 76 characters and the default lineEnding is CRLF, but these can be overridden by using the appropriate
 * constructor.
 * <p>
 * The default behaviour of the Base64OutputStream is to ENCODE, whereas the default behaviour of the Base64InputStream
 * is to DECODE. But this behaviour can be overridden by using a different constructor.
 * </p>
 * <p>
 * This class implements section <cite>6.8. Base64 Content-Transfer-Encoding</cite> from RFC 2045 <cite>Multipurpose
 * Internet Mail Extensions (MIME) Part One: Format of Internet Message Bodies</cite> by Freed and Borenstein.
 * </p>
 * <p>
 * Since this class operates directly on byte streams, and not character streams, it is hard-coded to only encode/decode
 * character encodings which are compatible with the lower 127 ASCII chart (ISO-8859-1, Windows-1252, UTF-8, etc).
 * </p>
 * 
 * @author Apache Software Foundation
 * @version $Id$
 * @see <a href="http://www.ietf.org/rfc/rfc2045.txt">RFC 2045</a>
 * @since 1.4
 */
public class Base64OutputStream extends FilterOutputStream {
    private final boolean doEncode;

    private final Base64 base64;

    private final byte[] singleByte = new byte[1];

    /**
     * Creates a Base64OutputStream such that all data written is Base64-encoded to the original provided OutputStream.
     * 
     * @param out
     *            OutputStream to wrap.
     */
    public Base64OutputStream(OutputStream out) {
        this(out, true);
    }

    /**
     * Creates a Base64OutputStream such that all data written is either Base64-encoded or Base64-decoded to the
     * original provided OutputStream.
     * 
     * @param out
     *            OutputStream to wrap.
     * @param doEncode
     *            true if we should encode all data written to us, false if we should decode.
     */
    public Base64OutputStream(OutputStream out, boolean doEncode) {
        super(out);
        int PROBE_START_LINE_74 = 74;
		boolean p_do_encode_112_line_74 = doEncode;
		int PROBE_END_LINE_74 = 74;
		this.doEncode = p_do_encode_112_line_74;
        this.base64 = new Base64(false);
    }

    /**
     * Creates a Base64OutputStream such that all data written is either Base64-encoded or Base64-decoded to the
     * original provided OutputStream.
     * 
     * @param out
     *            OutputStream to wrap.
     * @param doEncode
     *            true if we should encode all data written to us, false if we should decode.
     * @param lineLength
     *            If doEncode is true, each line of encoded data will contain lineLength characters (rounded down to
     *            nearest multiple of 4). If lineLength <=0, the encoded data is not divided into lines. If doEncode is
     *            false, lineLength is ignored.
     * @param lineSeparator
     *            If doEncode is true, each line of encoded data will be terminated with this byte sequence (e.g. \r\n).
     *            If lineLength <= 0, the lineSeparator is not used. If doEncode is false lineSeparator is ignored.
     */
    public Base64OutputStream(OutputStream out, boolean doEncode, int lineLength, byte[] lineSeparator) {
        super(out);
        this.doEncode = doEncode;
        this.base64 = new Base64(lineLength, lineSeparator);
    }

    /**
     * Writes the specified <code>byte</code> to this output stream.
     * 
     * @param i
     *            source byte
     * @throws IOException
     *             if an I/O error occurs.
     */
    public void write(int i) throws IOException {
        singleByte[0] = (byte) i;
        write(singleByte, 0, 1);
    }

    /**
     * Writes <code>len</code> bytes from the specified <code>b</code> array starting at <code>offset</code> to this
     * output stream.
     * 
     * @param b
     *            source byte array
     * @param offset
     *            where to start reading the bytes
     * @param len
     *            maximum number of bytes to write
     * 
     * @throws IOException
     *             if an I/O error occurs.
     * @throws NullPointerException
     *             if the byte array parameter is null
     * @throws IndexOutOfBoundsException
     *             if offset, len or buffer size are invalid
     */
    public void write(byte b[], int offset, int len) throws IOException {
        int PROBE_START_LINE_132 = 145;
		byte[] p_b_120_line_132 = b;
		boolean base64_output_stream_1_expr10_line_132 = p_b_120_line_132 == null;
		int PROBE_END_LINE_132 = 145;
		if (base64_output_stream_1_expr10_line_132) {
            throw new NullPointerException();
        } else {
			int PROBE_START_LINE_134 = 145;
			int p_offset_121_line_134 = offset;
			boolean base64_output_stream_1_expr12_line_134 = p_offset_121_line_134 < 0;
			boolean base64_output_stream_1_expr13_line_134 = false;
			if (!base64_output_stream_1_expr12_line_134) {
				int p_len_122_line_134 = len;
				base64_output_stream_1_expr13_line_134 = p_len_122_line_134 < 0;
			}
			boolean base64_output_stream_1_expr11_line_134 = base64_output_stream_1_expr12_line_134
					|| base64_output_stream_1_expr13_line_134;
			int PROBE_END_LINE_134 = 145;
			if (base64_output_stream_1_expr11_line_134) {
				throw new IndexOutOfBoundsException();
			} else {
				int PROBE_START_LINE_136 = 145;
				int p_offset_121_line_136 = offset;
				byte[] p_b_120_line_136 = b;
				int q_length_8_line_136 = p_b_120_line_136.length;
				boolean base64_output_stream_1_expr15_line_136 = p_offset_121_line_136 > q_length_8_line_136;
				boolean base64_output_stream_1_expr16_line_136 = false;
				if (!base64_output_stream_1_expr15_line_136) {
					int p_offset_121_line_136_v1 = offset;
					int p_len_122_line_136 = len;
					int base64_output_stream_1_expr17_line_136 = p_offset_121_line_136_v1 + p_len_122_line_136;
					byte[] p_b_120_line_136_v1 = b;
					int q_length_9_line_136 = p_b_120_line_136_v1.length;
					base64_output_stream_1_expr16_line_136 = base64_output_stream_1_expr17_line_136 > q_length_9_line_136;
				}
				boolean base64_output_stream_1_expr14_line_136 = base64_output_stream_1_expr15_line_136
						|| base64_output_stream_1_expr16_line_136;
				int PROBE_END_LINE_136 = 145;
				if (base64_output_stream_1_expr14_line_136) {
					throw new IndexOutOfBoundsException();
				} else {
					int PROBE_START_LINE_138 = 145;
					int p_len_122_line_138 = len;
					boolean base64_output_stream_1_expr18_line_138 = p_len_122_line_138 > 0;
					int PROBE_END_LINE_138 = 145;
					if (base64_output_stream_1_expr18_line_138) {
						int PROBE_START_LINE_139 = 143;
						boolean f_do_encode_113_line_139 = doEncode;
						int PROBE_END_LINE_139 = 143;
						if (f_do_encode_113_line_139) {
							base64.encode(b, offset, len);
						} else {
							int PROBE_START_LINE_142 = 142;
							org.apache.commons.codec.binary.Base64 f_base_64_114_line_142 = base64;
							byte[] p_b_120_line_142 = b;
							int p_offset_121_line_142 = offset;
							int p_len_122_line_142 = len;
							int PROBE_END_LINE_142 = 142;
							f_base_64_114_line_142.decode(p_b_120_line_142, p_offset_121_line_142, p_len_122_line_142);
						}
						flush(false);
					}
				}
			}
		}
    }

    /**
     * Flushes this output stream and forces any buffered output bytes to be written out to the stream. If propogate is
     * true, the wrapped stream will also be flushed.
     * 
     * @param propogate
     *            boolean flag to indicate whether the wrapped OutputStream should also be flushed.
     * @throws IOException
     *             if an I/O error occurs.
     */
    private void flush(boolean propogate) throws IOException {
        int PROBE_START_LINE_158 = 158;
		org.apache.commons.codec.binary.Base64 f_base_64_114_line_158 = base64;
		int base64_output_stream_1_expr21_line_158 = f_base_64_114_line_158.avail();
		int PROBE_END_LINE_158 = 158;
		int avail = base64_output_stream_1_expr21_line_158;
        int PROBE_START_LINE_159 = 165;
		int v_avail_124_line_159 = avail;
		boolean base64_output_stream_1_expr22_line_159 = v_avail_124_line_159 > 0;
		int PROBE_END_LINE_159 = 165;
		if (base64_output_stream_1_expr22_line_159) {
            int PROBE_START_LINE_160 = 160;
			int v_avail_124_line_160 = avail;
			int PROBE_END_LINE_160 = 160;
			byte[] buf = new byte[v_avail_124_line_160];
            int PROBE_START_LINE_161 = 161;
			org.apache.commons.codec.binary.Base64 f_base_64_114_line_161 = base64;
			byte[] v_buf_125_line_161 = buf;
			int v_avail_124_line_161 = avail;
			int base64_output_stream_1_expr24_line_161 = f_base_64_114_line_161.readResults(v_buf_125_line_161, 0,
					v_avail_124_line_161);
			int PROBE_END_LINE_161 = 161;
			int c = base64_output_stream_1_expr24_line_161;
            int PROBE_START_LINE_162 = 164;
			int v_c_126_line_162 = c;
			boolean base64_output_stream_1_expr25_line_162 = v_c_126_line_162 > 0;
			int PROBE_END_LINE_162 = 164;
			if (base64_output_stream_1_expr25_line_162) {
                int PROBE_START_LINE_163 = 163;
				java.io.OutputStream f_out_127_line_163 = out;
				byte[] v_buf_125_line_163 = buf;
				int v_c_126_line_163 = c;
				int PROBE_END_LINE_163 = 163;
				f_out_127_line_163.write(v_buf_125_line_163, 0, v_c_126_line_163);
            }
        }
        int PROBE_START_LINE_166 = 168;
		boolean p_propogate_123_line_166 = propogate;
		int PROBE_END_LINE_166 = 168;
		if (p_propogate_123_line_166) {
            out.flush();
        }
    }

    /**
     * Flushes this output stream and forces any buffered output bytes to be written out to the stream.
     * 
     * @throws IOException
     *             if an I/O error occurs.
     */
    public void flush() throws IOException {
        flush(true);
    }

    /**
     * Closes this output stream and releases any system resources associated with the stream.
     * 
     * @throws IOException
     *             if an I/O error occurs.
     */
    public void close() throws IOException {
        // Notify encoder of EOF (-1).
        if (doEncode) {
            base64.encode(singleByte, 0, -1);
        } else {
            int PROBE_START_LINE_192 = 192;
			org.apache.commons.codec.binary.Base64 f_base_64_114_line_192 = base64;
			byte[] f_single_byte_109_line_192 = singleByte;
			int base64_output_stream_1_expr28_line_192 = -1;
			int PROBE_END_LINE_192 = 192;
			f_base_64_114_line_192.decode(f_single_byte_109_line_192, 0, base64_output_stream_1_expr28_line_192);
        }
        flush();
        out.close();
    }

}
