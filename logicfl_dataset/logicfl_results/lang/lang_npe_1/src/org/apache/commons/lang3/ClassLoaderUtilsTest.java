/*
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

package org.apache.commons.lang3;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.io.IOException;
import java.net.URL;
import java.net.URLClassLoader;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

/**
 * Tests {@link ClassLoaderUtils}.
 */
public class ClassLoaderUtilsTest extends AbstractLangTest {

    @Test
    public void testGetSystemURLs() {
        // TODO How to better test considering this test may be called from an IDE and Maven?
        assertNotNull(ClassLoaderUtils.getSystemURLs());
    }

    @Test
    public void testGetThreadURLs() {
        // TODO How to better test considering this test may be called from an IDE and Maven?
        assertNotNull(ClassLoaderUtils.getThreadURLs());
    }

    @Test
    public void testToString_ClassLoader() throws IOException {
        final URL url = new URL("http://localhost");
        try (URLClassLoader urlClassLoader = new URLClassLoader(new URL[] { url })) {
            int PROBE_START_LINE_51 = 52;
			ClassLoader v_url_class_loader_6_line_52 = urlClassLoader;
			int PROBE_END_LINE_51 = 52;
			@SuppressWarnings("resource")
            final ClassLoader classLoader = v_url_class_loader_6_line_52;
            int PROBE_START_LINE_53 = 53;
			ClassLoader v_class_loader_7_line_53 = classLoader;
			java.net.URL v_url_5_line_53 = url;
			String class_loader_utils_test_1_expr7_line_53 = String.format("%s[%s]", v_class_loader_7_line_53,
					v_url_5_line_53);
			ClassLoader v_class_loader_7_line_53_v1 = classLoader;
			String class_loader_utils_test_1_expr8_line_53 = ClassLoaderUtils.toString(v_class_loader_7_line_53_v1);
			int PROBE_END_LINE_53 = 53;
			Assertions.assertEquals(class_loader_utils_test_1_expr7_line_53, class_loader_utils_test_1_expr8_line_53);
        }
        int PROBE_START_LINE_55 = 55;
		String class_loader_utils_test_1_expr10_line_55 = ClassLoaderUtils.toString((ClassLoader) null);
		int PROBE_END_LINE_55 = 55;
		assertEquals("null", class_loader_utils_test_1_expr10_line_55);
    }

    @Test
    public void testToString_URLClassLoader() throws IOException {
        final URL url = new URL("http://localhost");
        try (URLClassLoader urlClassLoader = new URLClassLoader(new URL[] { url })) {
            int PROBE_START_LINE_62 = 62;
			java.net.URLClassLoader v_url_class_loader_9_line_62 = urlClassLoader;
			java.net.URL v_url_8_line_62 = url;
			String class_loader_utils_test_1_expr18_line_62 = String.format("%s[%s]", v_url_class_loader_9_line_62,
					v_url_8_line_62);
			java.net.URLClassLoader v_url_class_loader_9_line_62_v1 = urlClassLoader;
			String class_loader_utils_test_1_expr19_line_62 = ClassLoaderUtils
					.toString(v_url_class_loader_9_line_62_v1);
			int PROBE_END_LINE_62 = 62;
			Assertions.assertEquals(class_loader_utils_test_1_expr18_line_62, class_loader_utils_test_1_expr19_line_62);
        }
        int PROBE_START_LINE_64 = 64;
		String class_loader_utils_test_1_expr21_line_64 = ClassLoaderUtils.toString((URLClassLoader) null);
		int PROBE_END_LINE_64 = 64;
		assertEquals("null", class_loader_utils_test_1_expr21_line_64);
    }
}
