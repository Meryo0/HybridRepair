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

import static org.apache.commons.io.test.TestUtils.checkFile;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.file.Files;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.io.TempDir;

/**
 * Tests that the encoding is actually set and used.
 *
 */
public class FileWriterWithEncodingTest {

    @TempDir
    public File temporaryFolder;

    private String defaultEncoding;
    private File file1;
    private File file2;
    private String textContent;
    private final char[] anotherTestContent = {'f', 'z', 'x'};

    @Test
    public void constructor_File_directory() {
        assertThrows(IOException.class, () -> {
            try (Writer writer = new FileWriterWithEncoding(temporaryFolder, defaultEncoding)) {
                // empty
            }
        });
        assertFalse(file1.exists());
    }

    @Test
    public void constructor_File_encoding_badEncoding() {
        assertThrows(IOException.class, () -> {
            try (Writer writer = new FileWriterWithEncoding(file1, "BAD-ENCODE")) {
                // empty
            }
        });
        assertFalse(file1.exists());
    }

    @Test
    public void constructor_File_existingFile_withContent() throws Exception {
        try (FileWriter fw1 = new FileWriter(file1);) {
            fw1.write(textContent);
            fw1.write(65);
        }
        assertEquals(1025, file1.length());

        try (FileWriterWithEncoding fw1 = new FileWriterWithEncoding(file1, defaultEncoding)) {
            fw1.write("ABcd");
        }

        assertEquals(4, file1.length());
    }

    @Test
    public void constructor_File_nullFile() {
        assertThrows(NullPointerException.class, () -> {
            try (Writer writer = new FileWriterWithEncoding((File) null, defaultEncoding)) {
                // empty
            }
        });
        assertFalse(file1.exists());
    }

    @Test
    public void constructor_fileName_nullFile() {
        assertThrows(NullPointerException.class, () -> {
            try (Writer writer = new FileWriterWithEncoding((String) null, defaultEncoding)) {
                // empty
            }
        });
        assertFalse(file1.exists());
    }

    @Test
    public void sameEncoding_Charset_constructor() throws Exception {
        try (final FileWriterWithEncoding writer = new FileWriterWithEncoding(file2, Charset.defaultCharset())) {
            successfulRun(writer);
        }
    }

    @Test
    public void sameEncoding_CharsetEncoder_constructor() throws Exception {
        try (final FileWriterWithEncoding writer = new FileWriterWithEncoding(file2, Charset.defaultCharset().newEncoder())) {
            successfulRun(writer);
        }
    }

    @Test
    public void sameEncoding_null_Charset_constructor() throws Exception {
        try (final FileWriterWithEncoding writer = new FileWriterWithEncoding(file2, (Charset) null)) {
            successfulRun(writer);
        }
    }

    @Test
    public void sameEncoding_string_Charset_constructor() throws Exception {
        try (final FileWriterWithEncoding writer = new FileWriterWithEncoding(file2.getPath(), Charset.defaultCharset())) {
            successfulRun(writer);
        }
    }

    @Test
    public void sameEncoding_string_CharsetEncoder_constructor() throws Exception {
        try (final FileWriterWithEncoding writer = new FileWriterWithEncoding(file2.getPath(), Charset.defaultCharset().newEncoder())) {
            successfulRun(writer);
        }
    }

    @Test
    public void sameEncoding_string_constructor() throws Exception {
        try (final FileWriterWithEncoding writer = new FileWriterWithEncoding(file2, defaultEncoding)) {
            successfulRun(writer);
        }
    }

    @Test
    public void sameEncoding_string_string_constructor() throws Exception {
        try (final FileWriterWithEncoding writer = new FileWriterWithEncoding(file2.getPath(), defaultEncoding)) {
            successfulRun(writer);
        }
    }

    @BeforeEach
    public void setUp() throws Exception {
        int PROBE_START_LINE_159 = 159;
		java.io.File f_temporary_folder_48_line_159 = temporaryFolder;
		int PROBE_END_LINE_159 = 159;
		final File encodingFinder = new File(f_temporary_folder_48_line_159, "finder.txt");
        try (OutputStreamWriter out = new OutputStreamWriter(Files.newOutputStream(encodingFinder.toPath()))) {
            int PROBE_START_LINE_161 = 161;
			java.io.OutputStreamWriter v_out_49_line_161 = out;
			String file_writer_with_encoding_test_1_expr11_line_161 = v_out_49_line_161.getEncoding();
			int PROBE_END_LINE_161 = 161;
			defaultEncoding = file_writer_with_encoding_test_1_expr11_line_161;
        }
        int PROBE_START_LINE_163 = 163;
		java.io.File f_temporary_folder_48_line_163 = temporaryFolder;
		int PROBE_END_LINE_163 = 163;
		file1 = new File(f_temporary_folder_48_line_163, "testfile1.txt");
        int PROBE_START_LINE_164 = 164;
		java.io.File f_temporary_folder_48_line_164 = temporaryFolder;
		int PROBE_END_LINE_164 = 164;
		file2 = new File(f_temporary_folder_48_line_164, "testfile2.txt");
        final char[] arr = new char[1024];
        int PROBE_START_LINE_166 = 166;
		char[] file_writer_with_encoding_test_1_expr17_line_166 = "ABCDEFGHIJKLMNOPQabcdefgihklmnopq".toCharArray();
		int PROBE_END_LINE_166 = 166;
		final char[] chars = file_writer_with_encoding_test_1_expr17_line_166;
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_168 = 168;
			int v_i_54_line_167 = i;
			char[] v_arr_52_line_167 = arr;
			int q_length_1_line_167 = v_arr_52_line_167.length;
			boolean file_writer_with_encoding_test_1_expr19_line_167 = v_i_54_line_167 < q_length_1_line_167;
			if (!(file_writer_with_encoding_test_1_expr19_line_167)) {
				break;
			}
			char[] v_arr_52_line_168 = arr;
			int v_i_54_line_168 = i;
			char[] v_chars_53_line_168 = chars;
			int v_i_54_line_168_v1 = i;
			char[] v_chars_53_line_168_v1 = chars;
			int q_length_2_line_168 = v_chars_53_line_168_v1.length;
			int file_writer_with_encoding_test_1_expr24_line_168 = v_i_54_line_168_v1 % q_length_2_line_168;
			char file_writer_with_encoding_test_1_expr23_line_168 = v_chars_53_line_168[file_writer_with_encoding_test_1_expr24_line_168];
			int PROBE_END_LINE_168 = 168;
			v_arr_52_line_168[v_i_54_line_168] = file_writer_with_encoding_test_1_expr23_line_168;
        }
        int PROBE_START_LINE_170 = 170;
		char[] v_arr_52_line_170 = arr;
		int PROBE_END_LINE_170 = 170;
		textContent = new String(v_arr_52_line_170);
    }

    private void successfulRun(final FileWriterWithEncoding fw21) throws Exception {
        try (FileWriter fw1 = new FileWriter(file1); // default encoding
            FileWriterWithEncoding fw2 = fw21) {
            writeTestPayload(fw1, fw2);
            checkFile(file1, file2);
        }
        assertTrue(file1.exists());
        assertTrue(file2.exists());
    }

    @Test
    public void testDifferentEncoding() throws Exception {
        if (Charset.isSupported("UTF-16BE")) {
            try (FileWriter fw1 = new FileWriter(file1); // default encoding
                FileWriterWithEncoding fw2 = new FileWriterWithEncoding(file2, defaultEncoding)) {
                writeTestPayload(fw1, fw2);
                try {
                    checkFile(file1, file2);
                    fail();
                } catch (final AssertionError ex) {
                    // success
                }

            }
            assertTrue(file1.exists());
            assertTrue(file2.exists());
        }
        if (Charset.isSupported("UTF-16LE")) {
            try (FileWriter fw1 = new FileWriter(file1); // default encoding
                FileWriterWithEncoding fw2 = new FileWriterWithEncoding(file2, defaultEncoding)) {
                writeTestPayload(fw1, fw2);
                try {
                    checkFile(file1, file2);
                    fail();
                } catch (final AssertionError ex) {
                    // success
                }

            }
            assertTrue(file1.exists());
            assertTrue(file2.exists());
        }
    }

    private void writeTestPayload(final FileWriter fw1, final FileWriterWithEncoding fw2) throws IOException {
        assertTrue(file1.exists());
        assertTrue(file2.exists());

        fw1.write(textContent);
        fw2.write(textContent);
        fw1.write(65);
        fw2.write(65);
        fw1.write(anotherTestContent);
        fw2.write(anotherTestContent);
        fw1.write(anotherTestContent, 1, 2);
        fw2.write(anotherTestContent, 1, 2);
        fw1.write("CAFE", 1, 2);
        fw2.write("CAFE", 1, 2);

        fw1.flush();
        fw2.flush();
    }
}
