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

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.Arrays;

import junit.framework.TestCase;

/**
 * @author Apache Software Foundation
 * @version $Id $
 * @since 1.4
 */
public class Base64OutputStreamTest extends TestCase {

    private final static byte[] CRLF = {(byte) '\r', (byte) '\n'};

    private final static byte[] LF = {(byte) '\n'};

    private static final String STRING_FIXTURE = "Hello World";

    /**
     * Construct a new instance of this test case.
     * 
     * @param name
     *            Name of the test case
     */
    public Base64OutputStreamTest(String name) {
        super(name);
    }

    /**
     * Test the Base64OutputStream implementation against the special NPE inducing input
     * identified in the CODEC-98 bug.
     *
     * @throws Exception for some failure scenarios.
     */
    public void testCodec98NPE() throws Exception {
        int PROBE_START_LINE_56 = 56;
		String q_codec_98_npe_9_line_56 = Base64TestData.CODEC_98_NPE;
		byte[] base64_output_stream_test_1_expr7_line_56 = StringUtils.getBytesUtf8(q_codec_98_npe_9_line_56);
		int PROBE_END_LINE_56 = 56;
		byte[] codec98 = base64_output_stream_test_1_expr7_line_56;
        byte[] codec98_1024 = new byte[1024];
        int PROBE_START_LINE_58 = 58;
		byte[] v_codec_98_131_line_58 = codec98;
		byte[] v_codec_98_1024_132_line_58 = codec98_1024;
		byte[] v_codec_98_131_line_58_v1 = codec98;
		int q_length_9_line_58 = v_codec_98_131_line_58_v1.length;
		int PROBE_END_LINE_58 = 58;
		System.arraycopy(v_codec_98_131_line_58, 0, v_codec_98_1024_132_line_58, 0, q_length_9_line_58);
        ByteArrayOutputStream data = new ByteArrayOutputStream(1024);
        int PROBE_START_LINE_60 = 60;
		java.io.ByteArrayOutputStream v_data_133_line_60 = data;
		int PROBE_END_LINE_60 = 60;
		Base64OutputStream stream = new Base64OutputStream(v_data_133_line_60, false);
        int PROBE_START_LINE_61 = 61;
		org.apache.commons.codec.binary.Base64OutputStream v_stream_134_line_61 = stream;
		byte[] v_codec_98_1024_132_line_61 = codec98_1024;
		int PROBE_END_LINE_61 = 61;
		v_stream_134_line_61.write(v_codec_98_1024_132_line_61, 0, 1024);
        int PROBE_START_LINE_62 = 62;
		org.apache.commons.codec.binary.Base64OutputStream v_stream_134_line_62 = stream;
		int PROBE_END_LINE_62 = 62;
		v_stream_134_line_62.close();

        byte[] decodedBytes = data.toByteArray();
        String decoded = StringUtils.newStringUtf8(decodedBytes);
        assertEquals(
            "codec-98 NPE Base64OutputStream", Base64TestData.CODEC_98_NPE_DECODED, decoded
        );
    }
    

    /**
     * Test the Base64OutputStream implementation against empty input.
     * 
     * @throws Exception
     *             for some failure scenarios.
     */
    public void testBase64EmptyOutputStreamMimeChunkSize() throws Exception {
        testBase64EmptyOutputStream(Base64.MIME_CHUNK_SIZE);
    }

    /**
     * Test the Base64OutputStream implementation against empty input.
     * 
     * @throws Exception
     *             for some failure scenarios.
     */
    public void testBase64EmptyOutputStreamPemChunkSize() throws Exception {
        testBase64EmptyOutputStream(Base64.PEM_CHUNK_SIZE);
    }

    private void testBase64EmptyOutputStream(int chunkSize) throws Exception {
        byte[] emptyEncoded = new byte[0];
        byte[] emptyDecoded = new byte[0];
        testByteByByte(emptyEncoded, emptyDecoded, chunkSize, CRLF);
        testByChunk(emptyEncoded, emptyDecoded, chunkSize, CRLF);
    }

    /**
     * Test the Base64OutputStream implementation
     * 
     * @throws Exception
     *             for some failure scenarios.
     */
    public void testBase64OutputStreamByChunk() throws Exception {
        // Hello World test.
        byte[] encoded = StringUtils.getBytesUtf8("SGVsbG8gV29ybGQ=\r\n");
        byte[] decoded = StringUtils.getBytesUtf8(STRING_FIXTURE);
        testByChunk(encoded, decoded, Base64.MIME_CHUNK_SIZE, CRLF);

        // Single Byte test.
        encoded = StringUtils.getBytesUtf8("AA==\r\n");
        decoded = new byte[]{(byte) 0};
        testByChunk(encoded, decoded, Base64.MIME_CHUNK_SIZE, CRLF);

        // OpenSSL interop test.
        encoded = StringUtils.getBytesUtf8(Base64TestData.ENCODED_64_CHARS_PER_LINE);
        decoded = Base64TestData.DECODED;
        testByChunk(encoded, decoded, Base64.PEM_CHUNK_SIZE, LF);

        // Single Line test.
        String singleLine = Base64TestData.ENCODED_64_CHARS_PER_LINE.replaceAll("\n", "");
        encoded = StringUtils.getBytesUtf8(singleLine);
        decoded = Base64TestData.DECODED;
        testByChunk(encoded, decoded, 0, LF);

        // test random data of sizes 0 thru 150
        for (int i = 0; i <= 150; i++) {
            byte[][] randomData = Base64TestData.randomData(i, false);
            encoded = randomData[1];
            decoded = randomData[0];
            testByChunk(encoded, decoded, 0, LF);
        }
    }

    /**
     * Test the Base64OutputStream implementation
     * 
     * @throws Exception
     *             for some failure scenarios.
     */
    public void testBase64OutputStreamByteByByte() throws Exception {
        // Hello World test.
        byte[] encoded = StringUtils.getBytesUtf8("SGVsbG8gV29ybGQ=\r\n");
        byte[] decoded = StringUtils.getBytesUtf8(STRING_FIXTURE);
        testByteByByte(encoded, decoded, 76, CRLF);

        // Single Byte test.
        encoded = StringUtils.getBytesUtf8("AA==\r\n");
        decoded = new byte[]{(byte) 0};
        testByteByByte(encoded, decoded, 76, CRLF);

        // OpenSSL interop test.
        encoded = StringUtils.getBytesUtf8(Base64TestData.ENCODED_64_CHARS_PER_LINE);
        decoded = Base64TestData.DECODED;
        testByteByByte(encoded, decoded, 64, LF);

        // Single Line test.
        String singleLine = Base64TestData.ENCODED_64_CHARS_PER_LINE.replaceAll("\n", "");
        encoded = StringUtils.getBytesUtf8(singleLine);
        decoded = Base64TestData.DECODED;
        testByteByByte(encoded, decoded, 0, LF);

        // test random data of sizes 0 thru 150
        for (int i = 0; i <= 150; i++) {
            byte[][] randomData = Base64TestData.randomData(i, false);
            encoded = randomData[1];
            decoded = randomData[0];
            testByteByByte(encoded, decoded, 0, LF);
        }
    }

    /**
     * Test method does three tests on the supplied data: 1. encoded ---[DECODE]--> decoded 2. decoded ---[ENCODE]-->
     * encoded 3. decoded ---[WRAP-WRAP-WRAP-etc...] --> decoded
     * <p/>
     * By "[WRAP-WRAP-WRAP-etc...]" we mean situation where the Base64OutputStream wraps itself in encode and decode
     * mode over and over again.
     * 
     * @param encoded
     *            base64 encoded data
     * @param decoded
     *            the data from above, but decoded
     * @param chunkSize
     *            chunk size (line-length) of the base64 encoded data.
     * @param seperator
     *            Line separator in the base64 encoded data.
     * @throws Exception
     *             Usually signifies a bug in the Base64 commons-codec implementation.
     */
    private void testByChunk(byte[] encoded, byte[] decoded, int chunkSize, byte[] seperator) throws Exception {

        // Start with encode.
        ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
        OutputStream out = new Base64OutputStream(byteOut, true, chunkSize, seperator);
        out.write(decoded);
        out.close();
        byte[] output = byteOut.toByteArray();
        assertTrue("Streaming chunked base64 encode", Arrays.equals(output, encoded));

        // Now let's try decode.
        byteOut = new ByteArrayOutputStream();
        out = new Base64OutputStream(byteOut, false);
        out.write(encoded);
        out.close();
        output = byteOut.toByteArray();
        assertTrue("Streaming chunked base64 decode", Arrays.equals(output, decoded));

        // I always wanted to do this! (wrap encoder with decoder etc etc).
        byteOut = new ByteArrayOutputStream();
        out = byteOut;
        for (int i = 0; i < 10; i++) {
            out = new Base64OutputStream(out, false);
            out = new Base64OutputStream(out, true, chunkSize, seperator);
        }
        out.write(decoded);
        out.close();
        output = byteOut.toByteArray();

        assertTrue("Streaming chunked base64 wrap-wrap-wrap!", Arrays.equals(output, decoded));
    }

    /**
     * Test method does three tests on the supplied data: 1. encoded ---[DECODE]--> decoded 2. decoded ---[ENCODE]-->
     * encoded 3. decoded ---[WRAP-WRAP-WRAP-etc...] --> decoded
     * <p/>
     * By "[WRAP-WRAP-WRAP-etc...]" we mean situation where the Base64OutputStream wraps itself in encode and decode
     * mode over and over again.
     * 
     * @param encoded
     *            base64 encoded data
     * @param decoded
     *            the data from above, but decoded
     * @param chunkSize
     *            chunk size (line-length) of the base64 encoded data.
     * @param seperator
     *            Line separator in the base64 encoded data.
     * @throws Exception
     *             Usually signifies a bug in the Base64 commons-codec implementation.
     */
    private void testByteByByte(byte[] encoded, byte[] decoded, int chunkSize, byte[] seperator) throws Exception {

        // Start with encode.
        ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
        OutputStream out = new Base64OutputStream(byteOut, true, chunkSize, seperator);
        for (int i = 0; i < decoded.length; i++) {
            out.write(decoded[i]);
        }
        out.close();
        byte[] output = byteOut.toByteArray();
        assertTrue("Streaming byte-by-byte base64 encode", Arrays.equals(output, encoded));

        // Now let's try decode.
        byteOut = new ByteArrayOutputStream();
        out = new Base64OutputStream(byteOut, false);
        for (int i = 0; i < encoded.length; i++) {
            out.write(encoded[i]);
        }
        out.close();
        output = byteOut.toByteArray();
        assertTrue("Streaming byte-by-byte base64 decode", Arrays.equals(output, decoded));

        // Now let's try decode with tonnes of flushes.
        byteOut = new ByteArrayOutputStream();
        out = new Base64OutputStream(byteOut, false);
        for (int i = 0; i < encoded.length; i++) {
            out.write(encoded[i]);
            out.flush();
        }
        out.close();
        output = byteOut.toByteArray();
        assertTrue("Streaming byte-by-byte flush() base64 decode", Arrays.equals(output, decoded));

        // I always wanted to do this! (wrap encoder with decoder etc etc).
        byteOut = new ByteArrayOutputStream();
        out = byteOut;
        for (int i = 0; i < 10; i++) {
            out = new Base64OutputStream(out, false);
            out = new Base64OutputStream(out, true, chunkSize, seperator);
        }
        for (int i = 0; i < decoded.length; i++) {
            out.write(decoded[i]);
        }
        out.close();
        output = byteOut.toByteArray();

        assertTrue("Streaming byte-by-byte base64 wrap-wrap-wrap!", Arrays.equals(output, decoded));
    }

    /**
     * Tests Base64OutputStream.write for expected IndexOutOfBoundsException conditions.
     * 
     * @throws Exception
     *             for some failure scenarios.
     */
    public void testWriteOutOfBounds() throws Exception {
        byte[] buf = new byte[1024];
        ByteArrayOutputStream bout = new ByteArrayOutputStream();
        Base64OutputStream out = new Base64OutputStream(bout);

        try {
            out.write(buf, -1, 1);
            fail("Expected Base64OutputStream.write(buf, -1, 1) to throw a IndexOutOfBoundsException");
        } catch (IndexOutOfBoundsException ioobe) {
            // Expected
        }

        try {
            out.write(buf, 1, -1);
            fail("Expected Base64OutputStream.write(buf, 1, -1) to throw a IndexOutOfBoundsException");
        } catch (IndexOutOfBoundsException ioobe) {
            // Expected
        }

        try {
            out.write(buf, buf.length + 1, 0);
            fail("Expected Base64OutputStream.write(buf, buf.length + 1, 0) to throw a IndexOutOfBoundsException");
        } catch (IndexOutOfBoundsException ioobe) {
            // Expected
        }

        try {
            out.write(buf, buf.length - 1, 2);
            fail("Expected Base64OutputStream.write(buf, buf.length - 1, 2) to throw a IndexOutOfBoundsException");
        } catch (IndexOutOfBoundsException ioobe) {
            // Expected
        }
    }

    /**
     * Tests Base64OutputStream.write(null).
     * 
     * @throws Exception
     *             for some failure scenarios.
     */
    public void testWriteToNullCoverage() throws Exception {
        ByteArrayOutputStream bout = new ByteArrayOutputStream();
        Base64OutputStream out = new Base64OutputStream(bout);
        try {
            out.write(null, 0, 0);
            fail("Expcted Base64OutputStream.write(null) to throw a NullPointerException");
        } catch (NullPointerException e) {
            // Expected
        }
    }

}
