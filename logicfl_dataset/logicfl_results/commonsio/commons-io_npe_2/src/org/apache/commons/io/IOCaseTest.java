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

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertSame;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;

import org.junit.jupiter.api.Test;

/**
 * Tests {@link IOCase}.
 */
public class IOCaseTest {

    int PROBE_START_LINE_39 = 39;

	private static final char q_separator_char_4_line_39 = File.separatorChar;
	private static final boolean iocase_test_1_expr1_line_39 = q_separator_char_4_line_39 == '\\';

	int PROBE_END_LINE_39 = 39;

	private static final boolean WINDOWS = iocase_test_1_expr1_line_39;

    private void assert0(final byte[] arr) {
        for (final byte e : arr) {
            assertEquals(0, e);
        }
    }

    private void assert0(final char[] arr) {
        for (final char e : arr) {
            assertEquals(0, e);
        }
    }

    private IOCase serialize(final IOCase value) throws Exception {
        final ByteArrayOutputStream buf = new ByteArrayOutputStream();
        try (final ObjectOutputStream out = new ObjectOutputStream(buf)) {
            out.writeObject(value);
            out.flush();
        }

        final ByteArrayInputStream bufin = new ByteArrayInputStream(buf.toByteArray());
        final ObjectInputStream in = new ObjectInputStream(bufin);
        return (IOCase) in.readObject();
    }

    @Test
    public void test_checkCompare_case() {
        assertEquals(0, IOCase.SENSITIVE.checkCompareTo("ABC", "ABC"));
        assertTrue(IOCase.SENSITIVE.checkCompareTo("ABC", "abc") < 0);
        assertTrue(IOCase.SENSITIVE.checkCompareTo("abc", "ABC") > 0);

        assertEquals(0, IOCase.INSENSITIVE.checkCompareTo("ABC", "ABC"));
        assertEquals(0, IOCase.INSENSITIVE.checkCompareTo("ABC", "abc"));
        assertEquals(0, IOCase.INSENSITIVE.checkCompareTo("abc", "ABC"));

        assertEquals(0, IOCase.SYSTEM.checkCompareTo("ABC", "ABC"));
        assertEquals(WINDOWS, IOCase.SYSTEM.checkCompareTo("ABC", "abc") == 0);
        assertEquals(WINDOWS, IOCase.SYSTEM.checkCompareTo("abc", "ABC") == 0);
    }

    @Test
    public void test_checkCompare_functionality() {
        assertTrue(IOCase.SENSITIVE.checkCompareTo("ABC", "") > 0);
        assertTrue(IOCase.SENSITIVE.checkCompareTo("", "ABC") < 0);
        assertTrue(IOCase.SENSITIVE.checkCompareTo("ABC", "DEF") < 0);
        assertTrue(IOCase.SENSITIVE.checkCompareTo("DEF", "ABC") > 0);
        assertEquals(0, IOCase.SENSITIVE.checkCompareTo("ABC", "ABC"));
        assertEquals(0, IOCase.SENSITIVE.checkCompareTo("", ""));

        assertThrows(NullPointerException.class, () -> IOCase.SENSITIVE.checkCompareTo("ABC", null));
        assertThrows(NullPointerException.class, () -> IOCase.SENSITIVE.checkCompareTo(null, "ABC"));
        assertThrows(NullPointerException.class, () -> IOCase.SENSITIVE.checkCompareTo(null, null));
    }
    @Test
    public void test_checkEndsWith_case() {
        assertTrue(IOCase.SENSITIVE.checkEndsWith("ABC", "BC"));
        assertFalse(IOCase.SENSITIVE.checkEndsWith("ABC", "Bc"));

        assertTrue(IOCase.INSENSITIVE.checkEndsWith("ABC", "BC"));
        assertTrue(IOCase.INSENSITIVE.checkEndsWith("ABC", "Bc"));

        assertTrue(IOCase.SYSTEM.checkEndsWith("ABC", "BC"));
        assertEquals(WINDOWS, IOCase.SYSTEM.checkEndsWith("ABC", "Bc"));
    }

    @Test
    public void test_checkEndsWith_functionality() {
        assertTrue(IOCase.SENSITIVE.checkEndsWith("ABC", ""));
        assertFalse(IOCase.SENSITIVE.checkEndsWith("ABC", "A"));
        assertFalse(IOCase.SENSITIVE.checkEndsWith("ABC", "AB"));
        assertTrue(IOCase.SENSITIVE.checkEndsWith("ABC", "ABC"));
        assertTrue(IOCase.SENSITIVE.checkEndsWith("ABC", "BC"));
        assertTrue(IOCase.SENSITIVE.checkEndsWith("ABC", "C"));
        assertFalse(IOCase.SENSITIVE.checkEndsWith("ABC", "ABCD"));
        assertFalse(IOCase.SENSITIVE.checkEndsWith("", "ABC"));
        assertTrue(IOCase.SENSITIVE.checkEndsWith("", ""));

        assertFalse(IOCase.SENSITIVE.checkEndsWith("ABC", null));
        assertFalse(IOCase.SENSITIVE.checkEndsWith(null, "ABC"));
        assertFalse(IOCase.SENSITIVE.checkEndsWith(null, null));
    }

    @Test
    public void test_checkEquals_case() {
        assertTrue(IOCase.SENSITIVE.checkEquals("ABC", "ABC"));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "Abc"));

        assertTrue(IOCase.INSENSITIVE.checkEquals("ABC", "ABC"));
        assertTrue(IOCase.INSENSITIVE.checkEquals("ABC", "Abc"));

        assertTrue(IOCase.SYSTEM.checkEquals("ABC", "ABC"));
        assertEquals(WINDOWS, IOCase.SYSTEM.checkEquals("ABC", "Abc"));
    }

    @Test
    public void test_checkEquals_functionality() {
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", ""));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "A"));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "AB"));
        assertTrue(IOCase.SENSITIVE.checkEquals("ABC", "ABC"));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "BC"));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "C"));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "ABCD"));
        assertFalse(IOCase.SENSITIVE.checkEquals("", "ABC"));
        assertTrue(IOCase.SENSITIVE.checkEquals("", ""));

        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", null));
        assertFalse(IOCase.SENSITIVE.checkEquals(null, "ABC"));
        assertTrue(IOCase.SENSITIVE.checkEquals(null, null));
    }

    @Test
    public void test_checkIndexOf_case() {
        int PROBE_START_LINE_153 = 153;
		org.apache.commons.io.IOCase q_sensitive_4_line_153 = IOCase.SENSITIVE;
		int iocase_test_1_expr3_line_153 = q_sensitive_4_line_153.checkIndexOf("ABC", 0, "BC");
		int PROBE_END_LINE_153 = 153;
		assertEquals(1,  iocase_test_1_expr3_line_153);
        int PROBE_START_LINE_154 = 154;
		int iocase_test_1_expr5_line_154 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_154 = IOCase.SENSITIVE;
		int iocase_test_1_expr6_line_154 = q_sensitive_5_line_154.checkIndexOf("ABC", 0, "Bc");
		int PROBE_END_LINE_154 = 154;
		assertEquals(iocase_test_1_expr5_line_154, iocase_test_1_expr6_line_154);
        int PROBE_START_LINE_155 = 155;
		int iocase_test_1_expr8_line_155 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_155 = IOCase.SENSITIVE;
		int iocase_test_1_expr9_line_155 = q_sensitive_5_line_155.checkIndexOf(null, 0, "Bc");
		int PROBE_END_LINE_155 = 155;
		assertEquals(iocase_test_1_expr8_line_155, iocase_test_1_expr9_line_155);
        assertEquals(-1, IOCase.SENSITIVE.checkIndexOf(null, 0, null));
        assertEquals(-1, IOCase.SENSITIVE.checkIndexOf("ABC", 0, null));

        assertEquals(1, IOCase.INSENSITIVE.checkIndexOf("ABC", 0, "BC"));
        assertEquals(1, IOCase.INSENSITIVE.checkIndexOf("ABC", 0, "Bc"));

        assertEquals(1, IOCase.SYSTEM.checkIndexOf("ABC", 0, "BC"));
        assertEquals(WINDOWS ? 1 : -1, IOCase.SYSTEM.checkIndexOf("ABC", 0, "Bc"));
    }

    @Test
    public void test_checkIndexOf_functionality() {

        int PROBE_START_LINE_170 = 170;
		org.apache.commons.io.IOCase q_sensitive_5_line_170 = IOCase.SENSITIVE;
		int iocase_test_1_expr11_line_170 = q_sensitive_5_line_170.checkIndexOf("ABCDEFGHIJ", 0, "A");
		int PROBE_END_LINE_170 = 170;
		// start
        assertEquals(0,   iocase_test_1_expr11_line_170);
        int PROBE_START_LINE_171 = 171;
		int iocase_test_1_expr13_line_171 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_171 = IOCase.SENSITIVE;
		int iocase_test_1_expr14_line_171 = q_sensitive_5_line_171.checkIndexOf("ABCDEFGHIJ", 1, "A");
		int PROBE_END_LINE_171 = 171;
		assertEquals(iocase_test_1_expr13_line_171,  iocase_test_1_expr14_line_171);
        int PROBE_START_LINE_172 = 172;
		org.apache.commons.io.IOCase q_sensitive_5_line_172 = IOCase.SENSITIVE;
		int iocase_test_1_expr16_line_172 = q_sensitive_5_line_172.checkIndexOf("ABCDEFGHIJ", 0, "AB");
		int PROBE_END_LINE_172 = 172;
		assertEquals(0,   iocase_test_1_expr16_line_172);
        int PROBE_START_LINE_173 = 173;
		int iocase_test_1_expr18_line_173 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_173 = IOCase.SENSITIVE;
		int iocase_test_1_expr19_line_173 = q_sensitive_5_line_173.checkIndexOf("ABCDEFGHIJ", 1, "AB");
		int PROBE_END_LINE_173 = 173;
		assertEquals(iocase_test_1_expr18_line_173,  iocase_test_1_expr19_line_173);
        int PROBE_START_LINE_174 = 174;
		org.apache.commons.io.IOCase q_sensitive_5_line_174 = IOCase.SENSITIVE;
		int iocase_test_1_expr21_line_174 = q_sensitive_5_line_174.checkIndexOf("ABCDEFGHIJ", 0, "ABC");
		int PROBE_END_LINE_174 = 174;
		assertEquals(0,   iocase_test_1_expr21_line_174);
        int PROBE_START_LINE_175 = 175;
		int iocase_test_1_expr23_line_175 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_175 = IOCase.SENSITIVE;
		int iocase_test_1_expr24_line_175 = q_sensitive_5_line_175.checkIndexOf("ABCDEFGHIJ", 1, "ABC");
		int PROBE_END_LINE_175 = 175;
		assertEquals(iocase_test_1_expr23_line_175,  iocase_test_1_expr24_line_175);

        int PROBE_START_LINE_178 = 178;
		org.apache.commons.io.IOCase q_sensitive_5_line_178 = IOCase.SENSITIVE;
		int iocase_test_1_expr26_line_178 = q_sensitive_5_line_178.checkIndexOf("ABCDEFGHIJ", 0, "D");
		int PROBE_END_LINE_178 = 178;
		// middle
        assertEquals(3,   iocase_test_1_expr26_line_178);
        int PROBE_START_LINE_179 = 179;
		org.apache.commons.io.IOCase q_sensitive_5_line_179 = IOCase.SENSITIVE;
		int iocase_test_1_expr28_line_179 = q_sensitive_5_line_179.checkIndexOf("ABCDEFGHIJ", 3, "D");
		int PROBE_END_LINE_179 = 179;
		assertEquals(3,   iocase_test_1_expr28_line_179);
        int PROBE_START_LINE_180 = 180;
		int iocase_test_1_expr30_line_180 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_180 = IOCase.SENSITIVE;
		int iocase_test_1_expr31_line_180 = q_sensitive_5_line_180.checkIndexOf("ABCDEFGHIJ", 4, "D");
		int PROBE_END_LINE_180 = 180;
		assertEquals(iocase_test_1_expr30_line_180,  iocase_test_1_expr31_line_180);
        int PROBE_START_LINE_181 = 181;
		org.apache.commons.io.IOCase q_sensitive_5_line_181 = IOCase.SENSITIVE;
		int iocase_test_1_expr33_line_181 = q_sensitive_5_line_181.checkIndexOf("ABCDEFGHIJ", 0, "DE");
		int PROBE_END_LINE_181 = 181;
		assertEquals(3,   iocase_test_1_expr33_line_181);
        int PROBE_START_LINE_182 = 182;
		org.apache.commons.io.IOCase q_sensitive_5_line_182 = IOCase.SENSITIVE;
		int iocase_test_1_expr35_line_182 = q_sensitive_5_line_182.checkIndexOf("ABCDEFGHIJ", 3, "DE");
		int PROBE_END_LINE_182 = 182;
		assertEquals(3,   iocase_test_1_expr35_line_182);
        int PROBE_START_LINE_183 = 183;
		int iocase_test_1_expr37_line_183 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_183 = IOCase.SENSITIVE;
		int iocase_test_1_expr38_line_183 = q_sensitive_5_line_183.checkIndexOf("ABCDEFGHIJ", 4, "DE");
		int PROBE_END_LINE_183 = 183;
		assertEquals(iocase_test_1_expr37_line_183,  iocase_test_1_expr38_line_183);
        int PROBE_START_LINE_184 = 184;
		org.apache.commons.io.IOCase q_sensitive_5_line_184 = IOCase.SENSITIVE;
		int iocase_test_1_expr40_line_184 = q_sensitive_5_line_184.checkIndexOf("ABCDEFGHIJ", 0, "DEF");
		int PROBE_END_LINE_184 = 184;
		assertEquals(3,   iocase_test_1_expr40_line_184);
        int PROBE_START_LINE_185 = 185;
		org.apache.commons.io.IOCase q_sensitive_5_line_185 = IOCase.SENSITIVE;
		int iocase_test_1_expr42_line_185 = q_sensitive_5_line_185.checkIndexOf("ABCDEFGHIJ", 3, "DEF");
		int PROBE_END_LINE_185 = 185;
		assertEquals(3,   iocase_test_1_expr42_line_185);
        int PROBE_START_LINE_186 = 186;
		int iocase_test_1_expr44_line_186 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_186 = IOCase.SENSITIVE;
		int iocase_test_1_expr45_line_186 = q_sensitive_5_line_186.checkIndexOf("ABCDEFGHIJ", 4, "DEF");
		int PROBE_END_LINE_186 = 186;
		assertEquals(iocase_test_1_expr44_line_186,  iocase_test_1_expr45_line_186);

        int PROBE_START_LINE_189 = 189;
		org.apache.commons.io.IOCase q_sensitive_5_line_189 = IOCase.SENSITIVE;
		int iocase_test_1_expr47_line_189 = q_sensitive_5_line_189.checkIndexOf("ABCDEFGHIJ", 0, "J");
		int PROBE_END_LINE_189 = 189;
		// end
        assertEquals(9,   iocase_test_1_expr47_line_189);
        int PROBE_START_LINE_190 = 190;
		org.apache.commons.io.IOCase q_sensitive_5_line_190 = IOCase.SENSITIVE;
		int iocase_test_1_expr49_line_190 = q_sensitive_5_line_190.checkIndexOf("ABCDEFGHIJ", 8, "J");
		int PROBE_END_LINE_190 = 190;
		assertEquals(9,   iocase_test_1_expr49_line_190);
        int PROBE_START_LINE_191 = 191;
		org.apache.commons.io.IOCase q_sensitive_5_line_191 = IOCase.SENSITIVE;
		int iocase_test_1_expr51_line_191 = q_sensitive_5_line_191.checkIndexOf("ABCDEFGHIJ", 9, "J");
		int PROBE_END_LINE_191 = 191;
		assertEquals(9,   iocase_test_1_expr51_line_191);
        int PROBE_START_LINE_192 = 192;
		org.apache.commons.io.IOCase q_sensitive_5_line_192 = IOCase.SENSITIVE;
		int iocase_test_1_expr53_line_192 = q_sensitive_5_line_192.checkIndexOf("ABCDEFGHIJ", 0, "IJ");
		int PROBE_END_LINE_192 = 192;
		assertEquals(8,   iocase_test_1_expr53_line_192);
        int PROBE_START_LINE_193 = 193;
		org.apache.commons.io.IOCase q_sensitive_5_line_193 = IOCase.SENSITIVE;
		int iocase_test_1_expr55_line_193 = q_sensitive_5_line_193.checkIndexOf("ABCDEFGHIJ", 8, "IJ");
		int PROBE_END_LINE_193 = 193;
		assertEquals(8,   iocase_test_1_expr55_line_193);
        int PROBE_START_LINE_194 = 194;
		int iocase_test_1_expr57_line_194 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_194 = IOCase.SENSITIVE;
		int iocase_test_1_expr58_line_194 = q_sensitive_5_line_194.checkIndexOf("ABCDEFGHIJ", 9, "IJ");
		int PROBE_END_LINE_194 = 194;
		assertEquals(iocase_test_1_expr57_line_194,  iocase_test_1_expr58_line_194);
        int PROBE_START_LINE_195 = 195;
		org.apache.commons.io.IOCase q_sensitive_5_line_195 = IOCase.SENSITIVE;
		int iocase_test_1_expr60_line_195 = q_sensitive_5_line_195.checkIndexOf("ABCDEFGHIJ", 6, "HIJ");
		int PROBE_END_LINE_195 = 195;
		assertEquals(7,   iocase_test_1_expr60_line_195);
        int PROBE_START_LINE_196 = 196;
		org.apache.commons.io.IOCase q_sensitive_5_line_196 = IOCase.SENSITIVE;
		int iocase_test_1_expr62_line_196 = q_sensitive_5_line_196.checkIndexOf("ABCDEFGHIJ", 7, "HIJ");
		int PROBE_END_LINE_196 = 196;
		assertEquals(7,   iocase_test_1_expr62_line_196);
        int PROBE_START_LINE_197 = 197;
		int iocase_test_1_expr64_line_197 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_197 = IOCase.SENSITIVE;
		int iocase_test_1_expr65_line_197 = q_sensitive_5_line_197.checkIndexOf("ABCDEFGHIJ", 8, "HIJ");
		int PROBE_END_LINE_197 = 197;
		assertEquals(iocase_test_1_expr64_line_197,  iocase_test_1_expr65_line_197);

        int PROBE_START_LINE_200 = 200;
		int iocase_test_1_expr67_line_200 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_200 = IOCase.SENSITIVE;
		int iocase_test_1_expr68_line_200 = q_sensitive_5_line_200.checkIndexOf("ABCDEFGHIJ", 0, "DED");
		int PROBE_END_LINE_200 = 200;
		// not found
        assertEquals(iocase_test_1_expr67_line_200,   iocase_test_1_expr68_line_200);

        int PROBE_START_LINE_203 = 203;
		int iocase_test_1_expr70_line_203 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_203 = IOCase.SENSITIVE;
		int iocase_test_1_expr71_line_203 = q_sensitive_5_line_203.checkIndexOf("DEF", 0, "ABCDEFGHIJ");
		int PROBE_END_LINE_203 = 203;
		// too long
        assertEquals(iocase_test_1_expr70_line_203,   iocase_test_1_expr71_line_203);

        int PROBE_START_LINE_205 = 205;
		int iocase_test_1_expr73_line_205 = -1;
		org.apache.commons.io.IOCase q_sensitive_5_line_205 = IOCase.SENSITIVE;
		int iocase_test_1_expr74_line_205 = q_sensitive_5_line_205.checkIndexOf("ABC", 0, null);
		int PROBE_END_LINE_205 = 205;
		assertEquals(iocase_test_1_expr73_line_205, iocase_test_1_expr74_line_205);
        assertEquals(-1, IOCase.SENSITIVE.checkIndexOf(null, 0, "ABC"));
        assertEquals(-1, IOCase.SENSITIVE.checkIndexOf(null, 0, null));
    }

    @Test
    public void test_checkRegionMatches_case() {
        assertTrue(IOCase.SENSITIVE.checkRegionMatches("ABC", 0, "AB"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("ABC", 0, "Ab"));

        assertTrue(IOCase.INSENSITIVE.checkRegionMatches("ABC", 0, "AB"));
        assertTrue(IOCase.INSENSITIVE.checkRegionMatches("ABC", 0, "Ab"));

        assertTrue(IOCase.SYSTEM.checkRegionMatches("ABC", 0, "AB"));
        assertEquals(WINDOWS, IOCase.SYSTEM.checkRegionMatches("ABC", 0, "Ab"));
    }

    @Test
    public void test_checkRegionMatches_functionality() {
        assertTrue(IOCase.SENSITIVE.checkRegionMatches("ABC", 0, ""));
        assertTrue(IOCase.SENSITIVE.checkRegionMatches("ABC", 0, "A"));
        assertTrue(IOCase.SENSITIVE.checkRegionMatches("ABC", 0, "AB"));
        assertTrue(IOCase.SENSITIVE.checkRegionMatches("ABC", 0, "ABC"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("ABC", 0, "BC"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("ABC", 0, "C"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("ABC", 0, "ABCD"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("", 0, "ABC"));
        assertTrue(IOCase.SENSITIVE.checkRegionMatches("", 0, ""));

        assertTrue(IOCase.SENSITIVE.checkRegionMatches("ABC", 1, ""));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("ABC", 1, "A"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("ABC", 1, "AB"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("ABC", 1, "ABC"));
        assertTrue(IOCase.SENSITIVE.checkRegionMatches("ABC", 1, "BC"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("ABC", 1, "C"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("ABC", 1, "ABCD"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("", 1, "ABC"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("", 1, ""));

        assertThrows(NullPointerException.class, () -> IOCase.SENSITIVE.checkRegionMatches("ABC", 0, null));
        assertThrows(NullPointerException.class, () -> IOCase.SENSITIVE.checkRegionMatches(null, 0, "ABC"));
        assertThrows(NullPointerException.class, () -> IOCase.SENSITIVE.checkRegionMatches(null, 0, null));
        assertThrows(NullPointerException.class, () -> IOCase.SENSITIVE.checkRegionMatches("ABC", 1, null));
        assertThrows(NullPointerException.class, () -> IOCase.SENSITIVE.checkRegionMatches(null, 1, "ABC"));
        assertThrows(NullPointerException.class, () -> IOCase.SENSITIVE.checkRegionMatches(null, 1, null));
    }

    @Test
    public void test_checkStartsWith_case() {
        assertTrue(IOCase.SENSITIVE.checkStartsWith("ABC", "AB"));
        assertFalse(IOCase.SENSITIVE.checkStartsWith("ABC", "Ab"));

        assertTrue(IOCase.INSENSITIVE.checkStartsWith("ABC", "AB"));
        assertTrue(IOCase.INSENSITIVE.checkStartsWith("ABC", "Ab"));

        assertTrue(IOCase.SYSTEM.checkStartsWith("ABC", "AB"));
        assertEquals(WINDOWS, IOCase.SYSTEM.checkStartsWith("ABC", "Ab"));
    }

    @Test
    public void test_checkStartsWith_functionality() {
        assertTrue(IOCase.SENSITIVE.checkStartsWith("ABC", ""));
        assertTrue(IOCase.SENSITIVE.checkStartsWith("ABC", "A"));
        assertTrue(IOCase.SENSITIVE.checkStartsWith("ABC", "AB"));
        assertTrue(IOCase.SENSITIVE.checkStartsWith("ABC", "ABC"));
        assertFalse(IOCase.SENSITIVE.checkStartsWith("ABC", "BC"));
        assertFalse(IOCase.SENSITIVE.checkStartsWith("ABC", "C"));
        assertFalse(IOCase.SENSITIVE.checkStartsWith("ABC", "ABCD"));
        assertFalse(IOCase.SENSITIVE.checkStartsWith("", "ABC"));
        assertTrue(IOCase.SENSITIVE.checkStartsWith("", ""));

        assertFalse(IOCase.SENSITIVE.checkStartsWith("ABC", null));
        assertFalse(IOCase.SENSITIVE.checkStartsWith(null, "ABC"));
        assertFalse(IOCase.SENSITIVE.checkStartsWith(null, null));
    }

    @Test
    public void test_forName() {
        assertEquals(IOCase.SENSITIVE, IOCase.forName("Sensitive"));
        assertEquals(IOCase.INSENSITIVE, IOCase.forName("Insensitive"));
        assertEquals(IOCase.SYSTEM, IOCase.forName("System"));
        assertThrows(IllegalArgumentException.class, () -> IOCase.forName("Blah"));
        assertThrows(IllegalArgumentException.class, () -> IOCase.forName(null));
    }

    @Test
    public void test_getName() {
        assertEquals("Sensitive", IOCase.SENSITIVE.getName());
        assertEquals("Insensitive", IOCase.INSENSITIVE.getName());
        assertEquals("System", IOCase.SYSTEM.getName());
    }

    @Test
    public void test_getScratchByteArray() {
        final byte[] array = IOUtils.getScratchByteArray();
        assert0(array);
        Arrays.fill(array, (byte) 1);
        assert0(IOUtils.getScratchCharArray());
    }

    @Test
    public void test_getScratchByteArrayWriteOnly() {
        final byte[] array = IOUtils.getScratchByteArrayWriteOnly();
        assert0(array);
        Arrays.fill(array, (byte) 1);
        assert0(IOUtils.getScratchCharArray());
    }

    @Test
    public void test_getScratchCharArray() {
        final char[] array = IOUtils.getScratchCharArray();
        assert0(array);
        Arrays.fill(array, (char) 1);
        assert0(IOUtils.getScratchCharArray());
    }

    @Test
    public void test_getScratchCharArrayWriteOnly() {
        final char[] array = IOUtils.getScratchCharArrayWriteOnly();
        assert0(array);
        Arrays.fill(array, (char) 1);
        assert0(IOUtils.getScratchCharArray());
    }

    @Test
    public void test_isCaseSensitive() {
        assertTrue(IOCase.SENSITIVE.isCaseSensitive());
        assertFalse(IOCase.INSENSITIVE.isCaseSensitive());
        assertEquals(!WINDOWS, IOCase.SYSTEM.isCaseSensitive());
    }

    @Test
    public void test_isCaseSensitive_static() {
        assertTrue(IOCase.isCaseSensitive(IOCase.SENSITIVE));
        assertFalse(IOCase.isCaseSensitive(IOCase.INSENSITIVE));
        assertEquals(!WINDOWS, IOCase.isCaseSensitive(IOCase.SYSTEM));
    }

    @Test
    public void test_serialization() throws Exception {
        assertSame(IOCase.SENSITIVE, serialize(IOCase.SENSITIVE));
        assertSame(IOCase.INSENSITIVE, serialize(IOCase.INSENSITIVE));
        assertSame(IOCase.SYSTEM, serialize(IOCase.SYSTEM));
    }

    @Test
    public void test_toString() {
        assertEquals("Sensitive", IOCase.SENSITIVE.toString());
        assertEquals("Insensitive", IOCase.INSENSITIVE.toString());
        assertEquals("System", IOCase.SYSTEM.toString());
    }

}
