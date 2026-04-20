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
package org.apache.commons.io.input;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.CharArrayReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.stream.Stream;

import org.apache.commons.io.IOUtils;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Timeout;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

public class ReaderInputStreamTest {

    int PROBE_START_LINE_48 = 48;

	private static final java.nio.charset.Charset q_utf_16_7_line_48 = StandardCharsets.UTF_16;
	private static final String reader_input_stream_test_1_expr1_line_48 = q_utf_16_7_line_48.name();

	int PROBE_END_LINE_48 = 48;

	private static final String UTF_16 = reader_input_stream_test_1_expr1_line_48;
    int PROBE_START_LINE_49 = 49;

	private static final java.nio.charset.Charset q_utf_8_8_line_49 = StandardCharsets.UTF_8;
	private static final String reader_input_stream_test_1_expr2_line_49 = q_utf_8_8_line_49.name();

	int PROBE_END_LINE_49 = 49;

	private static final String UTF_8 = reader_input_stream_test_1_expr2_line_49;
    private static final String TEST_STRING = "\u00e0 peine arriv\u00e9s nous entr\u00e2mes dans sa chambre";
    private static final String LARGE_TEST_STRING;

    static {
        final StringBuilder buffer = new StringBuilder();
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_56 = 56;
			int v_i_339_line_55 = i;
			boolean reader_input_stream_test_1_expr5_line_55 = v_i_339_line_55 < 100;
			if (!(reader_input_stream_test_1_expr5_line_55)) {
				break;
			}
			StringBuilder v_buffer_338_line_56 = buffer;
			String f_test_string_340_line_56 = TEST_STRING;
			int PROBE_END_LINE_56 = 56;
			v_buffer_338_line_56.append(f_test_string_340_line_56);
        }
        int PROBE_START_LINE_58 = 58;
		StringBuilder v_buffer_338_line_58 = buffer;
		String reader_input_stream_test_1_expr9_line_58 = v_buffer_338_line_58.toString();
		int PROBE_END_LINE_58 = 58;
		LARGE_TEST_STRING = reader_input_stream_test_1_expr9_line_58;
    }

    static Stream<Arguments> charsetData() {
        // @formatter:off
        return Stream.of(
                Arguments.of("Cp930", "\u0391"),
                Arguments.of("ISO_8859_1", "A"),
                Arguments.of(UTF_8, "\u0391"));
        // @formatter:on
    }

    private final Random random = new Random();

    @Test
    @Timeout(value = 500, unit = TimeUnit.MILLISECONDS)
    public void testBufferSmallest() throws IOException {
        final Charset charset = StandardCharsets.UTF_8;
        // @formatter:off
        try (InputStream in = new ReaderInputStream(
                new StringReader("\uD800"),
                charset, (int)
                ReaderInputStream.minBufferSize(charset.newEncoder()))) {
            in.read();
        }
        try (InputStream in = ReaderInputStream.builder()
                .setReader(new StringReader("\uD800"))
                .setCharset(charset)
                .setBufferSize((int) ReaderInputStream.minBufferSize(charset.newEncoder()))
                .get()) {
            in.read();
        }
        // @formatter:on
    }

    @Test
    public void testBufferTooSmall() {
        assertThrows(IllegalArgumentException.class, () -> new ReaderInputStream(new StringReader("\uD800"), StandardCharsets.UTF_8, -1));
        assertThrows(IllegalArgumentException.class, () -> new ReaderInputStream(new StringReader("\uD800"), StandardCharsets.UTF_8, 0));
        assertThrows(IllegalArgumentException.class, () -> new ReaderInputStream(new StringReader("\uD800"), StandardCharsets.UTF_8, 1));
    }

    @ParameterizedTest
    @MethodSource("charsetData")
    public void testCharsetEncoderFlush(final String charsetName, final String data) throws IOException {
        final Charset charset = Charset.forName(charsetName);
        final byte[] expected = data.getBytes(charset);
        try (InputStream in = new ReaderInputStream(new StringReader(data), charset)) {
            assertEquals(Arrays.toString(expected), Arrays.toString(IOUtils.toByteArray(in)));
        }
        try (InputStream in = ReaderInputStream.builder().setReader(new StringReader(data)).setCharset(charset).get()) {
            assertEquals(Arrays.toString(expected), Arrays.toString(IOUtils.toByteArray(in)));
        }
    }

    /*
     * Tests https://issues.apache.org/jira/browse/IO-277
     */
    @Test
    public void testCharsetMismatchInfiniteLoop() throws IOException {
        // Input is UTF-8 bytes: 0xE0 0xB2 0xA0
        final char[] inputChars = { (char) 0xE0, (char) 0xB2, (char) 0xA0 };
        // Charset charset = Charset.forName("UTF-8"); // works
        final Charset charset = StandardCharsets.US_ASCII; // infinite loop
        try (ReaderInputStream stream = new ReaderInputStream(new CharArrayReader(inputChars), charset)) {
            IOUtils.toCharArray(stream, charset);
        }
    }

    @Test
    @Timeout(value = 500, unit = TimeUnit.MILLISECONDS)
    public void testCodingError() throws IOException {
        // Encoder which throws on malformed or unmappable input
        CharsetEncoder encoder = StandardCharsets.UTF_8.newEncoder();
        try (final ReaderInputStream in = new ReaderInputStream(new StringReader("\uD800"), encoder)) {
            // Does not throws an exception because the input is an underflow and not an error
            assertDoesNotThrow(() -> in.read());
            // assertThrows(IllegalStateException.class, () -> in.read());
        }
        encoder = StandardCharsets.UTF_8.newEncoder();
        try (final ReaderInputStream in = ReaderInputStream.builder().setReader(new StringReader("\uD800")).setCharsetEncoder(encoder).get()) {
            // TODO WIP
            assertDoesNotThrow(() -> in.read());
            // assertThrows(IllegalStateException.class, () -> in.read());
        }
    }

    /**
     * Tests IO-717 to avoid infinite loops.
     *
     * ReaderInputStream does not throw exception with {@link CodingErrorAction#REPORT}.
     */
    @Test
    @Timeout(value = 500, unit = TimeUnit.MILLISECONDS)
    public void testCodingErrorAction() throws IOException {
        final Charset charset = StandardCharsets.UTF_8;
        final CharsetEncoder encoder = charset.newEncoder().onMalformedInput(CodingErrorAction.REPORT);
        try (InputStream in = new ReaderInputStream(new StringReader("\uD800aa"), encoder, (int) ReaderInputStream.minBufferSize(encoder))) {
            assertThrows(CharacterCodingException.class, in::read);
        }
        try (InputStream in = ReaderInputStream.builder().setReader(new StringReader("\uD800aa")).setCharsetEncoder(encoder)
                .setBufferSize((int) ReaderInputStream.minBufferSize(charset.newEncoder())).get()) {
            assertThrows(CharacterCodingException.class, in::read);
        }
    }

    @Test
    @Timeout(value = 500, unit = TimeUnit.MILLISECONDS)
    public void testConstructNullCharset() throws IOException {
        final Charset charset = Charset.defaultCharset();
        final Charset encoder = null;
        try (ReaderInputStream in = new ReaderInputStream(new StringReader("ABC"), encoder, (int) ReaderInputStream.minBufferSize(charset.newEncoder()))) {
            IOUtils.toByteArray(in);
            assertEquals(Charset.defaultCharset(), in.getCharsetEncoder().charset());
        }
    }

    @Test
    @Timeout(value = 500, unit = TimeUnit.MILLISECONDS)
    public void testConstructNullCharsetEncoder() throws IOException {
        final Charset charset = Charset.defaultCharset();
        final CharsetEncoder encoder = null;
        try (ReaderInputStream in = new ReaderInputStream(new StringReader("ABC"), encoder, (int) ReaderInputStream.minBufferSize(charset.newEncoder()))) {
            IOUtils.toByteArray(in);
            assertEquals(Charset.defaultCharset(), in.getCharsetEncoder().charset());
        }
    }

    @Test
    @Timeout(value = 500, unit = TimeUnit.MILLISECONDS)
    public void testConstructNullCharsetNameEncoder() throws IOException {
        final Charset charset = Charset.defaultCharset();
        final String charsetName = null;
        try (ReaderInputStream in = new ReaderInputStream(new StringReader("ABC"), charsetName, (int) ReaderInputStream.minBufferSize(charset.newEncoder()))) {
            IOUtils.toByteArray(in);
            assertEquals(Charset.defaultCharset(), in.getCharsetEncoder().charset());
        }
        try (ReaderInputStream in = ReaderInputStream.builder().setReader(new StringReader("ABC")).setCharset(charsetName)
                .setBufferSize((int) ReaderInputStream.minBufferSize(charset.newEncoder())).get()) {
            IOUtils.toByteArray(in);
            assertEquals(Charset.defaultCharset(), in.getCharsetEncoder().charset());
        }
    }

    @Test
    public void testLargeUTF8WithBufferedRead() throws IOException {
        testWithBufferedRead(LARGE_TEST_STRING, UTF_8);
    }

    @Test
    public void testLargeUTF8WithSingleByteRead() throws IOException {
        testWithSingleByteRead(LARGE_TEST_STRING, UTF_8);
    }

    @SuppressWarnings("deprecation")
    @Test
    public void testReadZero() throws Exception {
        final String inStr = "test";
        try (ReaderInputStream inputStream = new ReaderInputStream(new StringReader(inStr))) {
            testReadZero(inStr, inputStream);
        }
        try (ReaderInputStream inputStream = ReaderInputStream.builder().setReader(new StringReader(inStr)).get()) {
            testReadZero(inStr, inputStream);
        }
    }

    private void testReadZero(final String inStr, final ReaderInputStream inputStream) throws IOException {
        final byte[] bytes = new byte[30];
        assertEquals(0, inputStream.read(bytes, 0, 0));
        assertEquals(inStr.length(), inputStream.read(bytes, 0, inStr.length() + 1));
        // Should always return 0 for length == 0
        assertEquals(0, inputStream.read(bytes, 0, 0));
    }

    @SuppressWarnings("deprecation")
    @Test
    public void testReadZeroEmptyString() throws Exception {
        try (ReaderInputStream inputStream = new ReaderInputStream(new StringReader(""))) {
            final byte[] bytes = new byte[30];
            // Should always return 0 for length == 0
            assertEquals(0, inputStream.read(bytes, 0, 0));
            assertEquals(-1, inputStream.read(bytes, 0, 1));
            assertEquals(0, inputStream.read(bytes, 0, 0));
            assertEquals(-1, inputStream.read(bytes, 0, 1));
        }
    }

    @Test
    public void testResetCharset() {
        int PROBE_START_LINE_247 = 247;
		org.apache.commons.io.input.ReaderInputStream.Builder reader_input_stream_test_1_expr17_line_247 = ReaderInputStream
				.builder();
		org.apache.commons.io.input.ReaderInputStream.Builder reader_input_stream_test_1_expr15_line_247 = reader_input_stream_test_1_expr17_line_247
				.setReader(new StringReader("\uD800"));
		org.apache.commons.io.input.ReaderInputStream.Builder reader_input_stream_test_1_expr13_line_247 = reader_input_stream_test_1_expr15_line_247
				.setCharset((Charset) null);
		java.nio.charset.Charset reader_input_stream_test_1_expr12_line_247 = reader_input_stream_test_1_expr13_line_247
				.getCharset();
		int PROBE_END_LINE_247 = 247;
		assertNotNull(reader_input_stream_test_1_expr12_line_247);
    }

    @Test
    public void testResetCharsetEncoder() {
        assertNotNull(ReaderInputStream.builder().setReader(new StringReader("\uD800")).setCharsetEncoder(null).getCharsetEncoder());
    }

    @Test
    public void testResetCharsetName() {
        assertNotNull(ReaderInputStream.builder().setReader(new StringReader("\uD800")).setCharset((String) null).getCharset());
    }

    @Test
    public void testUTF16WithSingleByteRead() throws IOException {
        testWithSingleByteRead(TEST_STRING, UTF_16);
    }

    @Test
    public void testUTF8WithBufferedRead() throws IOException {
        testWithBufferedRead(TEST_STRING, UTF_8);
    }

    @Test
    public void testUTF8WithSingleByteRead() throws IOException {
        testWithSingleByteRead(TEST_STRING, UTF_8);
    }

    private void testWithBufferedRead(final byte[] expected, final ReaderInputStream in) throws IOException {
        final byte[] buffer = new byte[128];
        int offset = 0;
        while (true) {
            int bufferOffset = random.nextInt(64);
            final int bufferLength = random.nextInt(64);
            int read = in.read(buffer, bufferOffset, bufferLength);
            if (read == -1) {
                assertEquals(offset, expected.length);
                break;
            }
            assertTrue(read <= bufferLength);
            while (read > 0) {
                assertTrue(offset < expected.length);
                assertEquals(expected[offset], buffer[bufferOffset]);
                offset++;
                bufferOffset++;
                read--;
            }
        }
    }

    private void testWithBufferedRead(final String testString, final String charsetName) throws IOException {
        final byte[] expected = testString.getBytes(charsetName);
        try (ReaderInputStream in = new ReaderInputStream(new StringReader(testString), charsetName)) {
            testWithBufferedRead(expected, in);
        }
        try (ReaderInputStream in = ReaderInputStream.builder().setReader(new StringReader(testString)).setCharset(charsetName).get()) {
            testWithBufferedRead(expected, in);
        }
    }

    private void testWithSingleByteRead(final String testString, final String charsetName) throws IOException {
        final byte[] bytes = testString.getBytes(charsetName);
        try (ReaderInputStream in = new ReaderInputStream(new StringReader(testString), charsetName)) {
            for (final byte b : bytes) {
                final int read = in.read();
                assertTrue(read >= 0);
                assertTrue(read <= 255);
                assertEquals(b, (byte) read);
            }
            assertEquals(-1, in.read());
        }
    }
}
