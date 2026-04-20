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
package org.apache.commons.lang3.builder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.apache.commons.lang3.AbstractLangTest;
import org.junit.jupiter.api.Test;

/**
 * Tests {@link ReflectionToStringBuilder}.
 */
public class ReflectionToStringBuilderTest extends AbstractLangTest {

    @Test
    public void testConstructorWithNullObject() {
        int PROBE_START_LINE_31 = 31;
		org.apache.commons.lang3.builder.ToStringStyle q_default_style_1_line_31 = ToStringStyle.DEFAULT_STYLE;
		String reflection_to_string_builder_test_1_expr2_line_31 = new ReflectionToStringBuilder(null,
				q_default_style_1_line_31, new StringBuffer()).toString();
		int PROBE_END_LINE_31 = 31;
		assertEquals("<null>", reflection_to_string_builder_test_1_expr2_line_31);
    }

}
