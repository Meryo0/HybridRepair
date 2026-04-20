/**
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.commons.cli;

import junit.framework.TestCase;

/**
 * @author brianegge
 */
public class UtilTest extends TestCase {
    public void testStripLeadingHyphens() {
        int PROBE_START_LINE_26 = 26;
		String util_test_1_expr2_line_26 = Util.stripLeadingHyphens("-f");
		int PROBE_END_LINE_26 = 26;
		assertEquals("f", util_test_1_expr2_line_26);
        int PROBE_START_LINE_27 = 27;
		String util_test_1_expr4_line_27 = Util.stripLeadingHyphens("--foo");
		int PROBE_END_LINE_27 = 27;
		assertEquals("foo", util_test_1_expr4_line_27);
        int PROBE_START_LINE_28 = 28;
		String util_test_1_expr6_line_28 = Util.stripLeadingHyphens(null);
		int PROBE_END_LINE_28 = 28;
		assertNull(util_test_1_expr6_line_28);
    }
}
