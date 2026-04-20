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

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * Provides Base64 encoding and decoding in a streaming fashion (unlimited size). When encoding the default lineLength
 * is 76 characters and the default lineEnding is CRLF, but these can be overridden by using the appropriate
 * constructor.
 * <p>
 * The default behaviour of the Base64InputStream is to DECODE, whereas the default behaviour of the Base64OutputStream
 * is to ENCODE, but this behaviour can be overridden by using a different constructor.
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
public class Base64InputStream extends FilterInputStream {

    private final boolean doEncode;

    private final Base64 base64;

    private final byte[] singleByte = new byte[1];

    /**
     * Creates a Base64InputStream such that all data read is Base64-decoded from the original provided InputStream.
     * 
     * @param in
     *            InputStream to wrap.
     */
    public Base64InputStream(InputStream in) {
        this(in, false);
    }

    /**
     * Creates a Base64InputStream such that all data read is either Base64-encoded or Base64-decoded from the original
     * provided InputStream.
     * 
     * @param in
     *            InputStream to wrap.
     * @param doEncode
     *            true if we should encode all data read from us, false if we should decode.
     */
    public Base64InputStream(InputStream in, boolean doEncode) {
        super(in);
        int PROBE_START_LINE_75 = 75;
		boolean p_do_encode_80_line_75 = doEncode;
		int PROBE_END_LINE_75 = 75;
		this.doEncode = p_do_encode_80_line_75;
        this.base64 = new Base64(false);
    }

    /**
     * Creates a Base64InputStream such that all data read is either Base64-encoded or Base64-decoded from the original
     * provided InputStream.
     * 
     * @param in
     *            InputStream to wrap.
     * @param doEncode
     *            true if we should encode all data read from us, false if we should decode.
     * @param lineLength
     *            If doEncode is true, each line of encoded data will contain lineLength characters (rounded down to
     *            nearest multiple of 4). If lineLength <=0, the encoded data is not divided into lines. If doEncode is
     *            false, lineLength is ignored.
     * @param lineSeparator
     *            If doEncode is true, each line of encoded data will be terminated with this byte sequence (e.g. \r\n).
     *            If lineLength <= 0, the lineSeparator is not used. If doEncode is false lineSeparator is ignored.
     */
    public Base64InputStream(InputStream in, boolean doEncode, int lineLength, byte[] lineSeparator) {
        super(in);
        this.doEncode = doEncode;
        this.base64 = new Base64(lineLength, lineSeparator);
    }

    /**
     * Reads one <code>byte</code> from this input stream.
     * 
     * @return the byte as an integer in the range 0 to 255. Returns -1 if EOF has been reached.
     * @throws IOException
     *             if an I/O error occurs.
     */
    public int read() throws IOException {
        int r = read(singleByte, 0, 1);
        while (r == 0) {
            r = read(singleByte, 0, 1);
        }
        if (r > 0) {
            return singleByte[0] < 0 ? 256 + singleByte[0] : singleByte[0];
        }
        return -1;
    }

    /**
     * Attempts to read <code>len</code> bytes into the specified <code>b</code> array starting at <code>offset</code>
     * from this InputStream.
     * 
     * @param b
     *            destination byte array
     * @param offset
     *            where to start writing the bytes
     * @param len
     *            maximum number of bytes to read
     * 
     * @return number of bytes read
     * @throws IOException
     *             if an I/O error occurs.
     * @throws NullPointerException
     *             if the byte array parameter is null
     * @throws IndexOutOfBoundsException
     *             if offset, len or buffer size are invalid
     */
    public int read(byte b[], int offset, int len) throws IOException {
        int PROBE_START_LINE_139 = 163;
		byte[] p_b_87_line_139 = b;
		boolean base64_input_stream_1_expr11_line_139 = p_b_87_line_139 == null;
		int PROBE_END_LINE_139 = 163;
		if (base64_input_stream_1_expr11_line_139) {
            throw new NullPointerException();
        } else {
			int PROBE_START_LINE_141 = 163;
			int p_offset_88_line_141 = offset;
			boolean base64_input_stream_1_expr13_line_141 = p_offset_88_line_141 < 0;
			boolean base64_input_stream_1_expr14_line_141 = false;
			if (!base64_input_stream_1_expr13_line_141) {
				int p_len_89_line_141 = len;
				base64_input_stream_1_expr14_line_141 = p_len_89_line_141 < 0;
			}
			boolean base64_input_stream_1_expr12_line_141 = base64_input_stream_1_expr13_line_141
					|| base64_input_stream_1_expr14_line_141;
			int PROBE_END_LINE_141 = 163;
			if (base64_input_stream_1_expr12_line_141) {
				throw new IndexOutOfBoundsException();
			} else {
				int PROBE_START_LINE_143 = 163;
				int p_offset_88_line_143 = offset;
				byte[] p_b_87_line_143 = b;
				int q_length_6_line_143 = p_b_87_line_143.length;
				boolean base64_input_stream_1_expr16_line_143 = p_offset_88_line_143 > q_length_6_line_143;
				boolean base64_input_stream_1_expr17_line_143 = false;
				if (!base64_input_stream_1_expr16_line_143) {
					int p_offset_88_line_143_v1 = offset;
					int p_len_89_line_143 = len;
					int base64_input_stream_1_expr18_line_143 = p_offset_88_line_143_v1 + p_len_89_line_143;
					byte[] p_b_87_line_143_v1 = b;
					int q_length_7_line_143 = p_b_87_line_143_v1.length;
					base64_input_stream_1_expr17_line_143 = base64_input_stream_1_expr18_line_143 > q_length_7_line_143;
				}
				boolean base64_input_stream_1_expr15_line_143 = base64_input_stream_1_expr16_line_143
						|| base64_input_stream_1_expr17_line_143;
				int PROBE_END_LINE_143 = 163;
				if (base64_input_stream_1_expr15_line_143) {
					throw new IndexOutOfBoundsException();
				} else {
					int PROBE_START_LINE_145 = 163;
					int p_len_89_line_145 = len;
					boolean base64_input_stream_1_expr19_line_145 = p_len_89_line_145 == 0;
					int PROBE_END_LINE_145 = 163;
					if (base64_input_stream_1_expr19_line_145) {
						return 0;
					} else {
						int PROBE_START_LINE_148 = 161;
						org.apache.commons.codec.binary.Base64 f_base_64_82_line_148 = base64;
						boolean base64_input_stream_1_expr21_line_148 = f_base_64_82_line_148.hasData();
						boolean base64_input_stream_1_expr20_line_148 = !base64_input_stream_1_expr21_line_148;
						int PROBE_END_LINE_148 = 161;
						if (base64_input_stream_1_expr20_line_148) {
							int PROBE_START_LINE_149 = 149;
							boolean f_do_encode_81_line_149 = doEncode;
							int base64_input_stream_1_expr23_line_149 = f_do_encode_81_line_149 ? 4096 : 8192;
							int PROBE_END_LINE_149 = 149;
							byte[] buf = new byte[base64_input_stream_1_expr23_line_149];
							int PROBE_START_LINE_150 = 150;
							java.io.InputStream f_in_92_line_150 = in;
							byte[] v_buf_90_line_150 = buf;
							int base64_input_stream_1_expr24_line_150 = f_in_92_line_150.read(v_buf_90_line_150);
							int PROBE_END_LINE_150 = 150;
							int c = base64_input_stream_1_expr24_line_150;
							int PROBE_START_LINE_153 = 155;
							int v_c_91_line_153 = c;
							boolean base64_input_stream_1_expr26_line_153 = v_c_91_line_153 > 0;
							boolean base64_input_stream_1_expr27_line_153 = true;
							if (base64_input_stream_1_expr26_line_153) {
								byte[] p_b_87_line_153 = b;
								int q_length_7_line_153 = p_b_87_line_153.length;
								int p_len_89_line_153 = len;
								base64_input_stream_1_expr27_line_153 = q_length_7_line_153 == p_len_89_line_153;
							}
							boolean base64_input_stream_1_expr25_line_153 = base64_input_stream_1_expr26_line_153
									&& base64_input_stream_1_expr27_line_153;
							int PROBE_END_LINE_153 = 155;
							if (base64_input_stream_1_expr25_line_153) {
								int PROBE_START_LINE_154 = 154;
								org.apache.commons.codec.binary.Base64 f_base_64_82_line_154 = base64;
								byte[] p_b_87_line_154 = b;
								int p_offset_88_line_154 = offset;
								int p_len_89_line_154 = len;
								int PROBE_END_LINE_154 = 154;
								f_base_64_82_line_154.setInitialBuffer(p_b_87_line_154, p_offset_88_line_154,
										p_len_89_line_154);
							}
							int PROBE_START_LINE_156 = 160;
							boolean f_do_encode_81_line_156 = doEncode;
							int PROBE_END_LINE_156 = 160;
							if (f_do_encode_81_line_156) {
								base64.encode(buf, 0, c);
							} else {
								int PROBE_START_LINE_159 = 159;
								org.apache.commons.codec.binary.Base64 f_base_64_82_line_159 = base64;
								byte[] v_buf_90_line_159 = buf;
								int v_c_91_line_159 = c;
								int PROBE_END_LINE_159 = 159;
								f_base_64_82_line_159.decode(v_buf_90_line_159, 0, v_c_91_line_159);
							}
						}
						int PROBE_START_LINE_162 = 162;
						org.apache.commons.codec.binary.Base64 f_base_64_82_line_162 = base64;
						byte[] p_b_87_line_162 = b;
						int p_offset_88_line_162 = offset;
						int p_len_89_line_162 = len;
						int base64_input_stream_1_expr30_line_162 = f_base_64_82_line_162.readResults(p_b_87_line_162,
								p_offset_88_line_162, p_len_89_line_162);
						int PROBE_END_LINE_162 = 162;
						return base64_input_stream_1_expr30_line_162;
					}
				}
			}
		}
    }

    /**
     * {@inheritDoc}
     * 
     * @return false
     */
    public boolean markSupported() {
        return false; // not an easy job to support marks
    }
}
