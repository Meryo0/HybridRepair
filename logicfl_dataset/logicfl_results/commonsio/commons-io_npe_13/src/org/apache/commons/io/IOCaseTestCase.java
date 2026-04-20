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
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import org.junit.jupiter.api.Test;

/**
 * This is used to test IOCase for correctness.
 *
 */
public class IOCaseTestCase {

    int PROBE_START_LINE_39 = 39;

	private static final char q_separator_char_2_line_39 = File.separatorChar;
	private static final boolean iocase_test_case_1_expr1_line_39 = q_separator_char_2_line_39 == '\\';

	int PROBE_END_LINE_39 = 39;

	private static final boolean WINDOWS = iocase_test_case_1_expr1_line_39;

    //-----------------------------------------------------------------------
    @Test
    public void test_forName() throws Exception {
        assertEquals(IOCase.SENSITIVE, IOCase.forName("Sensitive"));
        assertEquals(IOCase.INSENSITIVE, IOCase.forName("Insensitive"));
        assertEquals(IOCase.SYSTEM, IOCase.forName("System"));
        try {
            IOCase.forName("Blah");
            fail();
        } catch (final IllegalArgumentException ignore) {}
        try {
            IOCase.forName(null);
            fail();
        } catch (final IllegalArgumentException ignore) {}
    }

    @Test
    public void test_serialization() throws Exception {
        assertSame(IOCase.SENSITIVE, serialize(IOCase.SENSITIVE));
        assertSame(IOCase.INSENSITIVE, serialize(IOCase.INSENSITIVE));
        assertSame(IOCase.SYSTEM, serialize(IOCase.SYSTEM));
    }

    @Test
    public void test_getName() throws Exception {
        assertEquals("Sensitive", IOCase.SENSITIVE.getName());
        assertEquals("Insensitive", IOCase.INSENSITIVE.getName());
        assertEquals("System", IOCase.SYSTEM.getName());
    }

    @Test
    public void test_toString() throws Exception {
        assertEquals("Sensitive", IOCase.SENSITIVE.toString());
        assertEquals("Insensitive", IOCase.INSENSITIVE.toString());
        assertEquals("System", IOCase.SYSTEM.toString());
    }

    @Test
    public void test_isCaseSensitive() throws Exception {
        assertTrue(IOCase.SENSITIVE.isCaseSensitive());
        assertFalse(IOCase.INSENSITIVE.isCaseSensitive());
        assertEquals(!WINDOWS, IOCase.SYSTEM.isCaseSensitive());
    }
    //-----------------------------------------------------------------------
    @Test
    public void test_checkCompare_functionality() throws Exception {
        assertTrue(IOCase.SENSITIVE.checkCompareTo("ABC", "") > 0);
        assertTrue(IOCase.SENSITIVE.checkCompareTo("", "ABC") < 0);
        assertTrue(IOCase.SENSITIVE.checkCompareTo("ABC", "DEF") < 0);
        assertTrue(IOCase.SENSITIVE.checkCompareTo("DEF", "ABC") > 0);
        assertEquals(0, IOCase.SENSITIVE.checkCompareTo("ABC", "ABC"));
        assertEquals(0, IOCase.SENSITIVE.checkCompareTo("", ""));

        try {
            IOCase.SENSITIVE.checkCompareTo("ABC", null);
            fail();
        } catch (final NullPointerException ignore) {}
        try {
            IOCase.SENSITIVE.checkCompareTo(null, "ABC");
            fail();
        } catch (final NullPointerException ignore) {}
        try {
            IOCase.SENSITIVE.checkCompareTo(null, null);
            fail();
        } catch (final NullPointerException ignore) {}
    }

    @Test
    public void test_checkCompare_case() throws Exception {
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


    //-----------------------------------------------------------------------
    @Test
    public void test_checkEquals_functionality() throws Exception {
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", ""));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "A"));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "AB"));
        assertTrue(IOCase.SENSITIVE.checkEquals("ABC", "ABC"));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "BC"));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "C"));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "ABCD"));
        assertFalse(IOCase.SENSITIVE.checkEquals("", "ABC"));
        assertTrue(IOCase.SENSITIVE.checkEquals("", ""));

        try {
            IOCase.SENSITIVE.checkEquals("ABC", null);
            fail();
        } catch (final NullPointerException ignore) {}
        try {
            IOCase.SENSITIVE.checkEquals(null, "ABC");
            fail();
        } catch (final NullPointerException ignore) {}
        try {
            IOCase.SENSITIVE.checkEquals(null, null);
            fail();
        } catch (final NullPointerException ignore) {}
    }

    @Test
    public void test_checkEquals_case() throws Exception {
        assertTrue(IOCase.SENSITIVE.checkEquals("ABC", "ABC"));
        assertFalse(IOCase.SENSITIVE.checkEquals("ABC", "Abc"));

        assertTrue(IOCase.INSENSITIVE.checkEquals("ABC", "ABC"));
        assertTrue(IOCase.INSENSITIVE.checkEquals("ABC", "Abc"));

        assertTrue(IOCase.SYSTEM.checkEquals("ABC", "ABC"));
        assertEquals(WINDOWS, IOCase.SYSTEM.checkEquals("ABC", "Abc"));
    }

    //-----------------------------------------------------------------------
    @Test
    public void test_checkStartsWith_functionality() throws Exception {
        int PROBE_START_LINE_166 = 166;
		org.apache.commons.io.IOCase q_sensitive_2_line_166 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr3_line_166 = q_sensitive_2_line_166.checkStartsWith("ABC", "");
		int PROBE_END_LINE_166 = 166;
		assertTrue(iocase_test_case_1_expr3_line_166);
        int PROBE_START_LINE_167 = 167;
		org.apache.commons.io.IOCase q_sensitive_3_line_167 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr5_line_167 = q_sensitive_3_line_167.checkStartsWith("ABC", "A");
		int PROBE_END_LINE_167 = 167;
		assertTrue(iocase_test_case_1_expr5_line_167);
        int PROBE_START_LINE_168 = 168;
		org.apache.commons.io.IOCase q_sensitive_3_line_168 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr7_line_168 = q_sensitive_3_line_168.checkStartsWith("ABC", "AB");
		int PROBE_END_LINE_168 = 168;
		assertTrue(iocase_test_case_1_expr7_line_168);
        int PROBE_START_LINE_169 = 169;
		org.apache.commons.io.IOCase q_sensitive_3_line_169 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr9_line_169 = q_sensitive_3_line_169.checkStartsWith("ABC", "ABC");
		int PROBE_END_LINE_169 = 169;
		assertTrue(iocase_test_case_1_expr9_line_169);
        int PROBE_START_LINE_170 = 170;
		org.apache.commons.io.IOCase q_sensitive_3_line_170 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr11_line_170 = q_sensitive_3_line_170.checkStartsWith("ABC", "BC");
		int PROBE_END_LINE_170 = 170;
		assertFalse(iocase_test_case_1_expr11_line_170);
        int PROBE_START_LINE_171 = 171;
		org.apache.commons.io.IOCase q_sensitive_3_line_171 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr13_line_171 = q_sensitive_3_line_171.checkStartsWith("ABC", "C");
		int PROBE_END_LINE_171 = 171;
		assertFalse(iocase_test_case_1_expr13_line_171);
        int PROBE_START_LINE_172 = 172;
		org.apache.commons.io.IOCase q_sensitive_3_line_172 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr15_line_172 = q_sensitive_3_line_172.checkStartsWith("ABC", "ABCD");
		int PROBE_END_LINE_172 = 172;
		assertFalse(iocase_test_case_1_expr15_line_172);
        int PROBE_START_LINE_173 = 173;
		org.apache.commons.io.IOCase q_sensitive_3_line_173 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr17_line_173 = q_sensitive_3_line_173.checkStartsWith("", "ABC");
		int PROBE_END_LINE_173 = 173;
		assertFalse(iocase_test_case_1_expr17_line_173);
        int PROBE_START_LINE_174 = 174;
		org.apache.commons.io.IOCase q_sensitive_3_line_174 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr19_line_174 = q_sensitive_3_line_174.checkStartsWith("", "");
		int PROBE_END_LINE_174 = 174;
		assertTrue(iocase_test_case_1_expr19_line_174);

        int PROBE_START_LINE_176 = 176;
		org.apache.commons.io.IOCase q_sensitive_3_line_176 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr21_line_176 = q_sensitive_3_line_176.checkStartsWith("ABC", null);
		int PROBE_END_LINE_176 = 176;
		assertFalse(iocase_test_case_1_expr21_line_176);
        assertFalse(IOCase.SENSITIVE.checkStartsWith(null, "ABC"));
        assertFalse(IOCase.SENSITIVE.checkStartsWith(null, null));
    }

    @Test
    public void test_checkStartsWith_case() throws Exception {
        assertTrue(IOCase.SENSITIVE.checkStartsWith("ABC", "AB"));
        assertFalse(IOCase.SENSITIVE.checkStartsWith("ABC", "Ab"));

        assertTrue(IOCase.INSENSITIVE.checkStartsWith("ABC", "AB"));
        assertTrue(IOCase.INSENSITIVE.checkStartsWith("ABC", "Ab"));

        assertTrue(IOCase.SYSTEM.checkStartsWith("ABC", "AB"));
        assertEquals(WINDOWS, IOCase.SYSTEM.checkStartsWith("ABC", "Ab"));
    }

    //-----------------------------------------------------------------------
    @Test
    public void test_checkEndsWith_functionality() throws Exception {
        int PROBE_START_LINE_196 = 196;
		org.apache.commons.io.IOCase q_sensitive_3_line_196 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr23_line_196 = q_sensitive_3_line_196.checkEndsWith("ABC", "");
		int PROBE_END_LINE_196 = 196;
		assertTrue(iocase_test_case_1_expr23_line_196);
        int PROBE_START_LINE_197 = 197;
		org.apache.commons.io.IOCase q_sensitive_3_line_197 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr25_line_197 = q_sensitive_3_line_197.checkEndsWith("ABC", "A");
		int PROBE_END_LINE_197 = 197;
		assertFalse(iocase_test_case_1_expr25_line_197);
        int PROBE_START_LINE_198 = 198;
		org.apache.commons.io.IOCase q_sensitive_3_line_198 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr27_line_198 = q_sensitive_3_line_198.checkEndsWith("ABC", "AB");
		int PROBE_END_LINE_198 = 198;
		assertFalse(iocase_test_case_1_expr27_line_198);
        int PROBE_START_LINE_199 = 199;
		org.apache.commons.io.IOCase q_sensitive_3_line_199 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr29_line_199 = q_sensitive_3_line_199.checkEndsWith("ABC", "ABC");
		int PROBE_END_LINE_199 = 199;
		assertTrue(iocase_test_case_1_expr29_line_199);
        int PROBE_START_LINE_200 = 200;
		org.apache.commons.io.IOCase q_sensitive_3_line_200 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr31_line_200 = q_sensitive_3_line_200.checkEndsWith("ABC", "BC");
		int PROBE_END_LINE_200 = 200;
		assertTrue(iocase_test_case_1_expr31_line_200);
        int PROBE_START_LINE_201 = 201;
		org.apache.commons.io.IOCase q_sensitive_3_line_201 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr33_line_201 = q_sensitive_3_line_201.checkEndsWith("ABC", "C");
		int PROBE_END_LINE_201 = 201;
		assertTrue(iocase_test_case_1_expr33_line_201);
        int PROBE_START_LINE_202 = 202;
		org.apache.commons.io.IOCase q_sensitive_3_line_202 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr35_line_202 = q_sensitive_3_line_202.checkEndsWith("ABC", "ABCD");
		int PROBE_END_LINE_202 = 202;
		assertFalse(iocase_test_case_1_expr35_line_202);
        int PROBE_START_LINE_203 = 203;
		org.apache.commons.io.IOCase q_sensitive_3_line_203 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr37_line_203 = q_sensitive_3_line_203.checkEndsWith("", "ABC");
		int PROBE_END_LINE_203 = 203;
		assertFalse(iocase_test_case_1_expr37_line_203);
        int PROBE_START_LINE_204 = 204;
		org.apache.commons.io.IOCase q_sensitive_3_line_204 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr39_line_204 = q_sensitive_3_line_204.checkEndsWith("", "");
		int PROBE_END_LINE_204 = 204;
		assertTrue(iocase_test_case_1_expr39_line_204);

        int PROBE_START_LINE_206 = 206;
		org.apache.commons.io.IOCase q_sensitive_3_line_206 = IOCase.SENSITIVE;
		boolean iocase_test_case_1_expr41_line_206 = q_sensitive_3_line_206.checkEndsWith("ABC", null);
		int PROBE_END_LINE_206 = 206;
		assertFalse(iocase_test_case_1_expr41_line_206);
        assertFalse(IOCase.SENSITIVE.checkEndsWith(null, "ABC"));
        assertFalse(IOCase.SENSITIVE.checkEndsWith(null, null));
    }

    @Test
    public void test_checkEndsWith_case() throws Exception {
        assertTrue(IOCase.SENSITIVE.checkEndsWith("ABC", "BC"));
        assertFalse(IOCase.SENSITIVE.checkEndsWith("ABC", "Bc"));

        assertTrue(IOCase.INSENSITIVE.checkEndsWith("ABC", "BC"));
        assertTrue(IOCase.INSENSITIVE.checkEndsWith("ABC", "Bc"));

        assertTrue(IOCase.SYSTEM.checkEndsWith("ABC", "BC"));
        assertEquals(WINDOWS, IOCase.SYSTEM.checkEndsWith("ABC", "Bc"));
    }

    //-----------------------------------------------------------------------
    @Test
    public void test_checkIndexOf_functionality() throws Exception {

        // start
        assertEquals(0,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 0, "A"));
        assertEquals(-1,  IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 1, "A"));
        assertEquals(0,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 0, "AB"));
        assertEquals(-1,  IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 1, "AB"));
        assertEquals(0,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 0, "ABC"));
        assertEquals(-1,  IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 1, "ABC"));

        // middle
        assertEquals(3,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 0, "D"));
        assertEquals(3,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 3, "D"));
        assertEquals(-1,  IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 4, "D"));
        assertEquals(3,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 0, "DE"));
        assertEquals(3,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 3, "DE"));
        assertEquals(-1,  IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 4, "DE"));
        assertEquals(3,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 0, "DEF"));
        assertEquals(3,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 3, "DEF"));
        assertEquals(-1,  IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 4, "DEF"));

        // end
        assertEquals(9,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 0, "J"));
        assertEquals(9,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 8, "J"));
        assertEquals(9,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 9, "J"));
        assertEquals(8,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 0, "IJ"));
        assertEquals(8,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 8, "IJ"));
        assertEquals(-1,  IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 9, "IJ"));
        assertEquals(7,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 6, "HIJ"));
        assertEquals(7,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 7, "HIJ"));
        assertEquals(-1,  IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 8, "HIJ"));

        // not found
        assertEquals(-1,   IOCase.SENSITIVE.checkIndexOf("ABCDEFGHIJ", 0, "DED"));

        // too long
        assertEquals(-1,   IOCase.SENSITIVE.checkIndexOf("DEF", 0, "ABCDEFGHIJ"));

        try {
            IOCase.SENSITIVE.checkIndexOf("ABC", 0, null);
            fail();
        } catch (final NullPointerException ignore) {}
        try {
            IOCase.SENSITIVE.checkIndexOf(null, 0, "ABC");
            fail();
        } catch (final NullPointerException ignore) {}
        try {
            IOCase.SENSITIVE.checkIndexOf(null, 0, null);
            fail();
        } catch (final NullPointerException ignore) {}
    }

    @Test
    public void test_checkIndexOf_case() throws Exception {
        assertEquals(1,  IOCase.SENSITIVE.checkIndexOf("ABC", 0, "BC"));
        assertEquals(-1, IOCase.SENSITIVE.checkIndexOf("ABC", 0, "Bc"));

        assertEquals(1, IOCase.INSENSITIVE.checkIndexOf("ABC", 0, "BC"));
        assertEquals(1, IOCase.INSENSITIVE.checkIndexOf("ABC", 0, "Bc"));

        assertEquals(1, IOCase.SYSTEM.checkIndexOf("ABC", 0, "BC"));
        assertEquals(WINDOWS ? 1 : -1, IOCase.SYSTEM.checkIndexOf("ABC", 0, "Bc"));
    }

    //-----------------------------------------------------------------------
    @Test
    public void test_checkRegionMatches_functionality() throws Exception {
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

        try {
            IOCase.SENSITIVE.checkRegionMatches("ABC", 0, null);
            fail();
        } catch (final NullPointerException ignore) {}
        try {
            IOCase.SENSITIVE.checkRegionMatches(null, 0, "ABC");
            fail();
        } catch (final NullPointerException ignore) {}
        try {
            IOCase.SENSITIVE.checkRegionMatches(null, 0, null);
            fail();
        } catch (final NullPointerException ignore) {}
        try {
            IOCase.SENSITIVE.checkRegionMatches("ABC", 1, null);
            fail();
        } catch (final NullPointerException ignore) {}
        try {
            IOCase.SENSITIVE.checkRegionMatches(null, 1, "ABC");
            fail();
        } catch (final NullPointerException ignore) {}
        try {
            IOCase.SENSITIVE.checkRegionMatches(null, 1, null);
            fail();
        } catch (final NullPointerException ignore) {}
    }

    @Test
    public void test_checkRegionMatches_case() throws Exception {
        assertTrue(IOCase.SENSITIVE.checkRegionMatches("ABC", 0, "AB"));
        assertFalse(IOCase.SENSITIVE.checkRegionMatches("ABC", 0, "Ab"));

        assertTrue(IOCase.INSENSITIVE.checkRegionMatches("ABC", 0, "AB"));
        assertTrue(IOCase.INSENSITIVE.checkRegionMatches("ABC", 0, "Ab"));

        assertTrue(IOCase.SYSTEM.checkRegionMatches("ABC", 0, "AB"));
        assertEquals(WINDOWS, IOCase.SYSTEM.checkRegionMatches("ABC", 0, "Ab"));
    }

    //-----------------------------------------------------------------------
    private IOCase serialize(final IOCase value) throws Exception {
        final ByteArrayOutputStream buf = new ByteArrayOutputStream();
        final ObjectOutputStream out = new ObjectOutputStream(buf);
        out.writeObject(value);
        out.flush();
        out.close();

        final ByteArrayInputStream bufin = new ByteArrayInputStream(buf.toByteArray());
        final ObjectInputStream in = new ObjectInputStream(bufin);
        return (IOCase) in.readObject();
    }

}
