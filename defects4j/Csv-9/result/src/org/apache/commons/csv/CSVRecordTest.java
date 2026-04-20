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
package org.apache.commons.csv;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import java.util.Iterator;

public class CSVRecordTest {

    private enum EnumFixture { UNKNOWN_COLUMN }

    private String[] values;
    private CSVRecord record, recordWithHeader;
    private Map<String, Integer> header;

    @Before
    public void setUp() throws Exception {
        values = new String[] { "A", "B", "C" };
        int PROBE_START_LINE_48 = 48;
		String[] f_values_102_line_48 = values;
		int PROBE_END_LINE_48 = 48;
		record = new CSVRecord(f_values_102_line_48, null, null, 0);
        header = new HashMap<String, Integer>();
        int PROBE_START_LINE_50 = 50;
		Map<String, Integer> f_header_104_line_50 = header;
		Integer csvrecord_test_1_expr9_line_50 = Integer.valueOf(0);
		int PROBE_END_LINE_50 = 50;
		f_header_104_line_50.put("first", csvrecord_test_1_expr9_line_50);
        int PROBE_START_LINE_51 = 51;
		Map<String, Integer> f_header_104_line_51 = header;
		Integer csvrecord_test_1_expr11_line_51 = Integer.valueOf(1);
		int PROBE_END_LINE_51 = 51;
		f_header_104_line_51.put("second", csvrecord_test_1_expr11_line_51);
        int PROBE_START_LINE_52 = 52;
		Map<String, Integer> f_header_104_line_52 = header;
		Integer csvrecord_test_1_expr13_line_52 = Integer.valueOf(2);
		int PROBE_END_LINE_52 = 52;
		f_header_104_line_52.put("third", csvrecord_test_1_expr13_line_52);
        int PROBE_START_LINE_53 = 53;
		String[] f_values_102_line_53 = values;
		Map<String, Integer> f_header_104_line_53 = header;
		int PROBE_END_LINE_53 = 53;
		recordWithHeader = new CSVRecord(f_values_102_line_53, f_header_104_line_53, null, 0);
    }

    @Test
    public void testGetInt() {
        assertEquals(values[0], record.get(0));
        assertEquals(values[1], record.get(1));
        assertEquals(values[2], record.get(2));
    }

    @Test
    public void testGetString() {
        assertEquals(values[0], recordWithHeader.get("first"));
        assertEquals(values[1], recordWithHeader.get("second"));
        assertEquals(values[2], recordWithHeader.get("third"));
    }

    @Test(expected = IllegalArgumentException.class)
    public void testGetStringInconsistentRecord() {
        header.put("fourth", Integer.valueOf(4));
        recordWithHeader.get("fourth");
    }

    @Test(expected = IllegalStateException.class)
    public void testGetStringNoHeader() {
        record.get("first");
    }

    @Test(expected = IllegalArgumentException.class)
    public void testGetUnmappedEnum() {
        assertNull(recordWithHeader.get(EnumFixture.UNKNOWN_COLUMN));
    }

    @Test(expected = IllegalArgumentException.class)
    public void testGetUnmappedName() {
        assertNull(recordWithHeader.get("fourth"));
    }

    @Test(expected = ArrayIndexOutOfBoundsException.class)
    public void testGetUnmappedNegativeInt() {
        assertNull(recordWithHeader.get(Integer.MIN_VALUE));
    }

    @Test(expected = ArrayIndexOutOfBoundsException.class)
    public void testGetUnmappedPositiveInt() {
        assertNull(recordWithHeader.get(Integer.MAX_VALUE));
    }

    @Test
    public void testIsConsistent() {
        assertTrue(record.isConsistent());
        assertTrue(recordWithHeader.isConsistent());

        header.put("fourth", Integer.valueOf(4));
        assertFalse(recordWithHeader.isConsistent());
    }

    @Test
    public void testIsMapped() {
        assertFalse(record.isMapped("first"));
        assertTrue(recordWithHeader.isMapped("first"));
        assertFalse(recordWithHeader.isMapped("fourth"));
    }

    @Test
    public void testIsSet() {
        assertFalse(record.isSet("first"));
        assertTrue(recordWithHeader.isSet("first"));
        assertFalse(recordWithHeader.isSet("fourth"));
    }

    @Test
    public void testIterator() {
        int i = 0;
        for (final String value : record) {
            assertEquals(values[i], value);
            i++;
        }
    }

    @Test
    public void testPutInMap() {
        final Map<String, String> map = new ConcurrentHashMap<String, String>();
        this.recordWithHeader.putIn(map);
        this.validateMap(map, false);
        // Test that we can compile with assigment to the same map as the param.
        final TreeMap<String, String> map2 = recordWithHeader.putIn(new TreeMap<String, String>());
        this.validateMap(map2, false);
    }

    @Test
    public void testRemoveAndAddColumns() throws IOException {
        // do:
        final CSVPrinter printer = new CSVPrinter(new StringBuilder(), CSVFormat.DEFAULT);
        final Map<String, String> map = recordWithHeader.toMap();
        map.remove("OldColumn");
        map.put("ZColumn", "NewValue");
        // check:
        final ArrayList<String> list = new ArrayList<String>(map.values());
        Collections.sort(list);
        printer.printRecord(list);
        Assert.assertEquals("A,B,C,NewValue" + CSVFormat.DEFAULT.getRecordSeparator(), printer.getOut().toString());
        printer.close();
    }

    @Test
    public void testToMap() {
        final Map<String, String> map = this.recordWithHeader.toMap();
        this.validateMap(map, true);
    }

    @Test
    public void testToMapWithShortRecord() throws Exception {
       final CSVParser parser =  CSVParser.parse("a,b", CSVFormat.DEFAULT.withHeader("A", "B", "C"));
       final CSVRecord shortRec = parser.iterator().next();
       shortRec.toMap();
    }

    @Test
    public void testToMapWithNoHeader() throws Exception {
       int PROBE_START_LINE_173 = 173;
		org.apache.commons.csv.CSVFormat csvrecord_test_1_expr17_line_173 = CSVFormat.newFormat(',');
		CSVParser csvrecord_test_1_expr16_line_173 = CSVParser.parse("a,b", csvrecord_test_1_expr17_line_173);
		int PROBE_END_LINE_173 = 173;
	final CSVParser parser =  csvrecord_test_1_expr16_line_173;
       int PROBE_START_LINE_174 = 174;
	org.apache.commons.csv.CSVParser v_parser_106_line_174 = parser;
	Iterator<org.apache.commons.csv.CSVRecord> csvrecord_test_1_expr19_line_174 = v_parser_106_line_174.iterator();
	CSVRecord csvrecord_test_1_expr18_line_174 = csvrecord_test_1_expr19_line_174.next();
	int PROBE_END_LINE_174 = 174;
	final CSVRecord shortRec = csvrecord_test_1_expr18_line_174;
       int PROBE_START_LINE_175 = 175;
	org.apache.commons.csv.CSVRecord v_short_rec_107_line_175 = shortRec;
	Map<String, String> csvrecord_test_1_expr20_line_175 = v_short_rec_107_line_175.toMap();
	int PROBE_END_LINE_175 = 175;
	Map<String, String> map = csvrecord_test_1_expr20_line_175;
       assertNotNull("Map is not null.", map);
       assertTrue("Map is empty.", map.isEmpty());
    }
    
    private void validateMap(final Map<String, String> map, final boolean allowsNulls) {
        assertTrue(map.containsKey("first"));
        assertTrue(map.containsKey("second"));
        assertTrue(map.containsKey("third"));
        assertFalse(map.containsKey("fourth"));
        if (allowsNulls) {
            assertFalse(map.containsKey(null));
        }
        assertEquals("A", map.get("first"));
        assertEquals("B", map.get("second"));
        assertEquals("C", map.get("third"));
        assertEquals(null, map.get("fourth"));
    }

}
