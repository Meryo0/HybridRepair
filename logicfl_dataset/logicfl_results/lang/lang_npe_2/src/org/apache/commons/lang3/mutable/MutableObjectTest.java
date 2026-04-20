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
package org.apache.commons.lang3.mutable;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertSame;

import org.apache.commons.lang3.AbstractLangTest;
import org.junit.jupiter.api.Test;


/**
 * JUnit tests.
 *
 * @see MutableShort
 */
public class MutableObjectTest extends AbstractLangTest {

    @Test
    public void testConstructors() {
        assertNull(new MutableObject<String>().getValue());

        final Integer i = Integer.valueOf(6);
        assertSame(i, new MutableObject<>(i).getValue());
        assertSame("HI", new MutableObject<>("HI").getValue());
        assertSame(null, new MutableObject<>(null).getValue());
    }

    @Test
    public void testEquals() {
        final MutableObject<String> mutNumA = new MutableObject<>("ALPHA");
        final MutableObject<String> mutNumB = new MutableObject<>("ALPHA");
        final MutableObject<String> mutNumC = new MutableObject<>("BETA");
        final MutableObject<String> mutNumNull1 = new MutableObject<>(null);
        final MutableObject<String> mutNumNull2 = new MutableObject<>(null);

        int PROBE_START_LINE_53 = 53;
		MutableObject<String> v_mut_num_a_309_line_53 = mutNumA;
		MutableObject<String> v_mut_num_a_309_line_53_v1 = mutNumA;
		int PROBE_END_LINE_53 = 53;
		assertEquals(v_mut_num_a_309_line_53, v_mut_num_a_309_line_53_v1);
        int PROBE_START_LINE_54 = 54;
		MutableObject<String> v_mut_num_a_309_line_54 = mutNumA;
		MutableObject<String> v_mut_num_b_310_line_54 = mutNumB;
		int PROBE_END_LINE_54 = 54;
		assertEquals(v_mut_num_a_309_line_54, v_mut_num_b_310_line_54);
        int PROBE_START_LINE_55 = 55;
		MutableObject<String> v_mut_num_b_310_line_55 = mutNumB;
		MutableObject<String> v_mut_num_a_309_line_55 = mutNumA;
		int PROBE_END_LINE_55 = 55;
		assertEquals(v_mut_num_b_310_line_55, v_mut_num_a_309_line_55);
        int PROBE_START_LINE_56 = 56;
		MutableObject<String> v_mut_num_b_310_line_56 = mutNumB;
		MutableObject<String> v_mut_num_b_310_line_56_v1 = mutNumB;
		int PROBE_END_LINE_56 = 56;
		assertEquals(v_mut_num_b_310_line_56, v_mut_num_b_310_line_56_v1);
        int PROBE_START_LINE_57 = 57;
		MutableObject<String> v_mut_num_a_309_line_57 = mutNumA;
		MutableObject<String> v_mut_num_c_311_line_57 = mutNumC;
		int PROBE_END_LINE_57 = 57;
		assertNotEquals(v_mut_num_a_309_line_57, v_mut_num_c_311_line_57);
        int PROBE_START_LINE_58 = 58;
		MutableObject<String> v_mut_num_b_310_line_58 = mutNumB;
		MutableObject<String> v_mut_num_c_311_line_58 = mutNumC;
		int PROBE_END_LINE_58 = 58;
		assertNotEquals(v_mut_num_b_310_line_58, v_mut_num_c_311_line_58);
        int PROBE_START_LINE_59 = 59;
		MutableObject<String> v_mut_num_c_311_line_59 = mutNumC;
		MutableObject<String> v_mut_num_c_311_line_59_v1 = mutNumC;
		int PROBE_END_LINE_59 = 59;
		assertEquals(v_mut_num_c_311_line_59, v_mut_num_c_311_line_59_v1);
        int PROBE_START_LINE_60 = 60;
		MutableObject<String> v_mut_num_a_309_line_60 = mutNumA;
		MutableObject<String> v_mut_num_null1_312_line_60 = mutNumNull1;
		int PROBE_END_LINE_60 = 60;
		assertNotEquals(v_mut_num_a_309_line_60, v_mut_num_null1_312_line_60);
        int PROBE_START_LINE_61 = 61;
		MutableObject<String> v_mut_num_null1_312_line_61 = mutNumNull1;
		MutableObject<String> v_mut_num_null1_312_line_61_v1 = mutNumNull1;
		int PROBE_END_LINE_61 = 61;
		assertEquals(v_mut_num_null1_312_line_61, v_mut_num_null1_312_line_61_v1);
        int PROBE_START_LINE_62 = 62;
		MutableObject<String> v_mut_num_null1_312_line_62 = mutNumNull1;
		MutableObject<String> v_mut_num_null2_313_line_62 = mutNumNull2;
		int PROBE_END_LINE_62 = 62;
		assertEquals(v_mut_num_null1_312_line_62, v_mut_num_null2_313_line_62);
        assertEquals(mutNumNull2, mutNumNull1);

        assertNotEquals(null, mutNumA);
        assertNotEquals(mutNumA, new Object());
        assertNotEquals("0", mutNumA);
    }

    @Test
    public void testGetSet() {
        final MutableObject<String> mutNum = new MutableObject<>();
        assertNull(new MutableObject<>().getValue());

        mutNum.setValue("HELLO");
        assertSame("HELLO", mutNum.getValue());

        mutNum.setValue(null);
        assertSame(null, mutNum.getValue());
    }

    @Test
    public void testHashCode() {
        final MutableObject<String> mutNumA = new MutableObject<>("ALPHA");
        final MutableObject<String> mutNumB = new MutableObject<>("ALPHA");
        final MutableObject<String> mutNumC = new MutableObject<>("BETA");
        final MutableObject<String> mutNumD = new MutableObject<>(null);

        assertEquals(mutNumA.hashCode(), mutNumA.hashCode());
        assertEquals(mutNumA.hashCode(), mutNumB.hashCode());
        assertNotEquals(mutNumA.hashCode(), mutNumC.hashCode());
        assertNotEquals(mutNumA.hashCode(), mutNumD.hashCode());
        assertEquals(mutNumA.hashCode(), "ALPHA".hashCode());
        assertEquals(0, mutNumD.hashCode());
    }

    @Test
    public void testToString() {
        assertEquals("HI", new MutableObject<>("HI").toString());
        assertEquals("10.0", new MutableObject<>(Double.valueOf(10)).toString());
        assertEquals("null", new MutableObject<>(null).toString());
    }

}
