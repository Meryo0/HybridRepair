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
package org.apache.commons.math.exception.util;

import java.util.Locale;

import org.junit.Assert;
import org.junit.Test;

public class MessageFactoryTest {

    @Test
    public void testSpecificGeneral() {
        Localizable specific = new DummyLocalizable("specific {0} - {1} - {2}");
        Localizable general  = new DummyLocalizable("general  {0} / {1}");
        String message = MessageFactory.buildMessage(Locale.FRENCH, specific, general,
                                                     0, 1, 2, 'a', 'b');
        Assert.assertEquals("specific 0 - 1 - 2: general  a / b", message);
    }

    @Test
    public void testNullSpecific() {
        Localizable general  = new DummyLocalizable("general  {0} / {1}");
        String message = MessageFactory.buildMessage(Locale.FRENCH, null, general,
                                                     'a', 'b');
        Assert.assertEquals("general  a / b", message);
    }

    @Test
    public void testNullGeneral() {
        Localizable specific = new DummyLocalizable("specific {0} - {1} - {2}");
        int PROBE_START_LINE_46 = 47;
		java.util.Locale q_french_1_line_46 = Locale.FRENCH;
		org.apache.commons.math.exception.util.Localizable v_specific_13_line_46 = specific;
		String message_factory_test_1_expr2_line_46 = MessageFactory.buildMessage(q_french_1_line_46,
				v_specific_13_line_46, null, 0, 1, 2);
		int PROBE_END_LINE_46 = 47;
		String message = message_factory_test_1_expr2_line_46;
        Assert.assertEquals("specific 0 - 1 - 2", message);
    }


    @Test
    public void testNull() {
        int PROBE_START_LINE_54 = 54;
		java.util.Locale q_french_2_line_54 = Locale.FRENCH;
		String message_factory_test_1_expr3_line_54 = MessageFactory.buildMessage(q_french_2_line_54, null, null,
				"nothing");
		int PROBE_END_LINE_54 = 54;
		String message = message_factory_test_1_expr3_line_54;
        Assert.assertEquals("", message);
    }

}
