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
package org.apache.commons.io.output;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import java.io.IOException;
import java.io.StringWriter;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.StandardCharsets;
import java.util.Random;

import org.apache.commons.io.Charsets;
import org.apache.commons.io.charset.CharsetDecoders;
import org.junit.jupiter.api.Test;

public class WriterOutputStreamTest {
    private static final String TEST_STRING = "\u00e0 peine arriv\u00e9s nous entr\u00e2mes dans sa chambre";
    private static final String LARGE_TEST_STRING;

    static {
        final StringBuilder buffer = new StringBuilder();
        for (int i=0; true; i++) {
            int PROBE_START_LINE_40 = 40;
			int v_i_47_line_39 = i;
			boolean writer_output_stream_test_1_expr3_line_39 = v_i_47_line_39 < 100;
			if (!(writer_output_stream_test_1_expr3_line_39)) {
				break;
			}
			StringBuilder v_buffer_46_line_40 = buffer;
			String f_test_string_48_line_40 = TEST_STRING;
			int PROBE_END_LINE_40 = 40;
			v_buffer_46_line_40.append(f_test_string_48_line_40);
        }
        int PROBE_START_LINE_42 = 42;
		StringBuilder v_buffer_46_line_42 = buffer;
		String writer_output_stream_test_1_expr7_line_42 = v_buffer_46_line_42.toString();
		int PROBE_END_LINE_42 = 42;
		LARGE_TEST_STRING = writer_output_stream_test_1_expr7_line_42;
    }

    private final Random random = new Random();

    @Test
    public void testFlush() throws IOException {
        final StringWriter writer = new StringWriter();
        try (final WriterOutputStream out = new WriterOutputStream(writer, "us-ascii", 1024, false)) {
            out.write("abc".getBytes(StandardCharsets.US_ASCII));
            assertEquals(0, writer.getBuffer().length());
            out.flush();
            assertEquals("abc", writer.toString());
        }
    }

    @Test
    public void testLargeUTF8CharsetWithBufferedWrite() throws IOException {
        testWithBufferedWrite(LARGE_TEST_STRING, "UTF-8");
    }

    @Test
    public void testLargeUTF8CharsetWithSingleByteWrite() throws IOException {
        testWithSingleByteWrite(LARGE_TEST_STRING, StandardCharsets.UTF_8);
    }

    @Test
    public void testLargeUTF8WithBufferedWrite() throws IOException {
        testWithBufferedWrite(LARGE_TEST_STRING, "UTF-8");
    }

    @Test
    public void testLargeUTF8WithSingleByteWrite() throws IOException {
        testWithSingleByteWrite(LARGE_TEST_STRING, "UTF-8");
    }

    @Test
    public void testNullCharsetNameWithSingleByteWrite() throws IOException {
        testWithSingleByteWrite(TEST_STRING, (String) null);
    }

    @Test
    public void testNullCharsetWithSingleByteWrite() throws IOException {
        int PROBE_START_LINE_85 = 85;
		String f_test_string_48_line_85 = TEST_STRING;
		int PROBE_END_LINE_85 = 85;
		testWithSingleByteWrite(f_test_string_48_line_85, (Charset) null);
    }

    @Test
    public void testNullCharsetDecoderWithSingleByteWrite() throws IOException {
        int PROBE_START_LINE_90 = 90;
		String f_test_string_48_line_90 = TEST_STRING;
		int PROBE_END_LINE_90 = 90;
		testWithSingleByteWrite(f_test_string_48_line_90, (CharsetDecoder) null);
    }

    @Test
    public void testUTF16BEWithBufferedWrite() throws IOException {
        testWithBufferedWrite(TEST_STRING, "UTF-16BE");
    }

    @Test
    public void testUTF16BEWithSingleByteWrite() throws IOException {
        testWithSingleByteWrite(TEST_STRING, "UTF-16BE");
    }

    @Test
    public void testUTF16LEWithBufferedWrite() throws IOException {
        testWithBufferedWrite(TEST_STRING, "UTF-16LE");
    }

    @Test
    public void testUTF16LEWithSingleByteWrite() throws IOException {
        testWithSingleByteWrite(TEST_STRING, "UTF-16LE");
    }

    @Test
    public void testUTF16WithBufferedWrite() throws IOException {
        try {
            testWithBufferedWrite(TEST_STRING, "UTF-16");
        } catch (final UnsupportedOperationException e) {
            if (!System.getProperty("java.vendor").contains("IBM")) {
                fail("This test should only throw UOE on IBM JDKs with broken UTF-16");
            }
        }
    }

    @Test
    public void testUTF16WithSingleByteWrite() throws IOException {
        try {
            testWithSingleByteWrite(TEST_STRING, "UTF-16");
        } catch (final UnsupportedOperationException e){
            if (!System.getProperty("java.vendor").contains("IBM")){
                fail("This test should only throw UOE on IBM JDKs with broken UTF-16");
            }
        }
    }

    @Test
    public void testUTF8WithBufferedWrite() throws IOException {
        testWithBufferedWrite(TEST_STRING, "UTF-8");
    }

    @Test
    public void testUTF8WithSingleByteWrite() throws IOException {
        testWithSingleByteWrite(TEST_STRING, "UTF-8");
    }

    private void testWithBufferedWrite(final String testString, final String charsetName) throws IOException {
        final byte[] expected = testString.getBytes(charsetName);
        final StringWriter writer = new StringWriter();
        try (final WriterOutputStream out = new WriterOutputStream(writer, charsetName)) {
            int offset = 0;
            while (offset < expected.length) {
                final int length = Math.min(random.nextInt(128), expected.length - offset);
                out.write(expected, offset, length);
                offset += length;
            }
        }
        assertEquals(testString, writer.toString());
    }


    private void testWithSingleByteWrite(final String testString, final Charset charset) throws IOException {
        int PROBE_START_LINE_161 = 161;
		String p_test_string_53_line_161 = testString;
		java.nio.charset.Charset p_charset_54_line_161 = charset;
		java.nio.charset.Charset writer_output_stream_test_1_expr14_line_161 = Charsets
				.toCharset(p_charset_54_line_161);
		byte[] writer_output_stream_test_1_expr13_line_161 = p_test_string_53_line_161
				.getBytes(writer_output_stream_test_1_expr14_line_161);
		int PROBE_END_LINE_161 = 161;
		final byte[] bytes = writer_output_stream_test_1_expr13_line_161;
        final StringWriter writer = new StringWriter();
        try (final WriterOutputStream out = new WriterOutputStream(writer, charset)) {
            for (final byte b : bytes) {
                out.write(b);
            }
        }
        assertEquals(testString, writer.toString());
    }

    private void testWithSingleByteWrite(final String testString, final CharsetDecoder charsetDecoder) throws IOException {
        int PROBE_START_LINE_172 = 172;
		String p_test_string_58_line_172 = testString;
		java.nio.charset.CharsetDecoder p_charset_decoder_59_line_172 = charsetDecoder;
		java.nio.charset.CharsetDecoder writer_output_stream_test_1_expr20_line_172 = CharsetDecoders
				.toCharsetDecoder(p_charset_decoder_59_line_172);
		java.nio.charset.Charset writer_output_stream_test_1_expr19_line_172 = writer_output_stream_test_1_expr20_line_172
				.charset();
		byte[] writer_output_stream_test_1_expr18_line_172 = p_test_string_58_line_172
				.getBytes(writer_output_stream_test_1_expr19_line_172);
		int PROBE_END_LINE_172 = 172;
		final byte[] bytes = writer_output_stream_test_1_expr18_line_172;
        final StringWriter writer = new StringWriter();
        try (final WriterOutputStream out = new WriterOutputStream(writer, charsetDecoder)) {
            for (final byte b : bytes) {
                out.write(b);
            }
        }
        assertEquals(testString, writer.toString());
    }

    private void testWithSingleByteWrite(final String testString, final String charsetName) throws IOException {
        final byte[] bytes = testString.getBytes(Charsets.toCharset(charsetName));
        final StringWriter writer = new StringWriter();
        try (final WriterOutputStream out = new WriterOutputStream(writer, charsetName)) {
            for (final byte b : bytes) {
                out.write(b);
            }
        }
        assertEquals(testString, writer.toString());
    }

    @Test
    public void testWriteImmediately() throws IOException {
        final StringWriter writer = new StringWriter();
        try (final WriterOutputStream out = new WriterOutputStream(writer, "us-ascii", 1024, true)) {
            out.write("abc".getBytes(StandardCharsets.US_ASCII));
            assertEquals("abc", writer.toString());
        }
    }
}
