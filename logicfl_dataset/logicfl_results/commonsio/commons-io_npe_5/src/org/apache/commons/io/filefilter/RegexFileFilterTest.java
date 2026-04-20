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
package org.apache.commons.io.filefilter;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.File;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.function.Function;
import java.util.regex.Pattern;

import org.apache.commons.io.IOCase;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.junit.jupiter.api.Test;

/**
 * Tests {@link RegexFileFilter}.
 */
public class RegexFileFilterTest {

    public void assertFiltering(final IOFileFilter filter, final File file, final boolean expected) {
        // Note. This only tests the (File, String) version if the parent of
        //       the File passed in is not null
        assertEquals(expected, filter.accept(file),
                "Filter(File) " + filter.getClass().getName() + " not " + expected + " for " + file);

        if (file != null && file.getParentFile() != null) {
            assertEquals(expected, filter.accept(file.getParentFile(), file.getName()),
                    "Filter(File, String) " + filter.getClass().getName() + " not " + expected + " for " + file);
            assertEquals(expected, filter.matches(file.toPath()),
                    "Filter(File, String) " + filter.getClass().getName() + " not " + expected + " for " + file);
        } else if (file == null) {
            assertEquals(expected, filter.accept(file),
                    "Filter(File, String) " + filter.getClass().getName() + " not " + expected + " for null");
            assertEquals(expected, filter.matches(null),
                    "Filter(File, String) " + filter.getClass().getName() + " not " + expected + " for null");
        }
        // Just don't blow up
        assertNotNull(filter.toString());
    }

    public void assertFiltering(final IOFileFilter filter, final Path path, final boolean expected) {
        int PROBE_START_LINE_67 = 67;
		boolean p_expected_390_line_67 = expected;
		FileVisitResult regex_file_filter_test_1_expr1_line_67 = AbstractFileFilter
				.toDefaultFileVisitResult(p_expected_390_line_67);
		int PROBE_END_LINE_67 = 67;
		// Note. This only tests the (Path, Path) version if the parent of
        // the Path passed in is not null
        final FileVisitResult expectedFileVisitResult = regex_file_filter_test_1_expr1_line_67;
        int PROBE_START_LINE_68 = 69;
		java.nio.file.FileVisitResult v_expected_file_visit_result_391_line_68 = expectedFileVisitResult;
		org.apache.commons.io.filefilter.IOFileFilter p_filter_388_line_68 = filter;
		java.nio.file.Path p_path_389_line_68 = path;
		java.nio.file.FileVisitResult regex_file_filter_test_1_expr3_line_68 = p_filter_388_line_68
				.accept(p_path_389_line_68, null);
		org.apache.commons.io.filefilter.IOFileFilter p_filter_388_line_69 = filter;
		Class<? extends org.apache.commons.io.filefilter.IOFileFilter> regex_file_filter_test_1_expr6_line_69 = p_filter_388_line_69
				.getClass();
		String regex_file_filter_test_1_expr5_line_69 = regex_file_filter_test_1_expr6_line_69.getName();
		java.nio.file.FileVisitResult v_expected_file_visit_result_391_line_69 = expectedFileVisitResult;
		java.nio.file.Path p_path_389_line_69 = path;
		String regex_file_filter_test_1_expr4_line_69 = "Filter(Path) " + regex_file_filter_test_1_expr5_line_69
				+ " not " + v_expected_file_visit_result_391_line_69 + " for " + p_path_389_line_69;
		int PROBE_END_LINE_68 = 69;
		assertEquals(v_expected_file_visit_result_391_line_68, regex_file_filter_test_1_expr3_line_68,
                regex_file_filter_test_1_expr4_line_69);
        int PROBE_START_LINE_70 = 71;
		java.nio.file.FileVisitResult v_expected_file_visit_result_391_line_70 = expectedFileVisitResult;
		java.nio.file.FileVisitResult q_terminate_6_line_70 = FileVisitResult.TERMINATE;
		boolean regex_file_filter_test_1_expr8_line_70 = v_expected_file_visit_result_391_line_70 != q_terminate_6_line_70;
		org.apache.commons.io.filefilter.IOFileFilter p_filter_388_line_70 = filter;
		java.nio.file.Path p_path_389_line_70 = path;
		boolean regex_file_filter_test_1_expr9_line_70 = p_filter_388_line_70.matches(p_path_389_line_70);
		org.apache.commons.io.filefilter.IOFileFilter p_filter_388_line_71 = filter;
		Class<? extends org.apache.commons.io.filefilter.IOFileFilter> regex_file_filter_test_1_expr12_line_71 = p_filter_388_line_71
				.getClass();
		String regex_file_filter_test_1_expr11_line_71 = regex_file_filter_test_1_expr12_line_71.getName();
		java.nio.file.FileVisitResult v_expected_file_visit_result_391_line_71 = expectedFileVisitResult;
		java.nio.file.Path p_path_389_line_71 = path;
		String regex_file_filter_test_1_expr10_line_71 = "Filter(Path) " + regex_file_filter_test_1_expr11_line_71
				+ " not " + v_expected_file_visit_result_391_line_71 + " for " + p_path_389_line_71;
		int PROBE_END_LINE_70 = 71;
		assertEquals(regex_file_filter_test_1_expr8_line_70, regex_file_filter_test_1_expr9_line_70,
                regex_file_filter_test_1_expr10_line_71);

        int PROBE_START_LINE_73 = 80;
		java.nio.file.Path p_path_389_line_73 = path;
		boolean regex_file_filter_test_1_expr14_line_73 = p_path_389_line_73 != null;
		boolean regex_file_filter_test_1_expr15_line_73 = true;
		if (regex_file_filter_test_1_expr14_line_73) {
			java.nio.file.Path p_path_389_line_73_v1 = path;
			java.nio.file.Path regex_file_filter_test_1_expr16_line_73 = p_path_389_line_73_v1.getParent();
			regex_file_filter_test_1_expr15_line_73 = regex_file_filter_test_1_expr16_line_73 != null;
		}
		boolean regex_file_filter_test_1_expr13_line_73 = regex_file_filter_test_1_expr14_line_73
				&& regex_file_filter_test_1_expr15_line_73;
		int PROBE_END_LINE_73 = 80;
		if (regex_file_filter_test_1_expr13_line_73) {
            int PROBE_START_LINE_74 = 76;
			java.nio.file.FileVisitResult v_expected_file_visit_result_391_line_74 = expectedFileVisitResult;
			org.apache.commons.io.filefilter.IOFileFilter p_filter_388_line_74 = filter;
			java.nio.file.Path p_path_389_line_74 = path;
			java.nio.file.FileVisitResult regex_file_filter_test_1_expr18_line_74 = p_filter_388_line_74
					.accept(p_path_389_line_74, null);
			org.apache.commons.io.filefilter.IOFileFilter p_filter_388_line_75 = filter;
			Class<? extends org.apache.commons.io.filefilter.IOFileFilter> regex_file_filter_test_1_expr21_line_75 = p_filter_388_line_75
					.getClass();
			String regex_file_filter_test_1_expr20_line_75 = regex_file_filter_test_1_expr21_line_75.getName();
			java.nio.file.FileVisitResult v_expected_file_visit_result_391_line_75 = expectedFileVisitResult;
			String regex_file_filter_test_1_expr19_line_75 = "Filter(Path, Path) "
					+ regex_file_filter_test_1_expr20_line_75 + " not " + v_expected_file_visit_result_391_line_75
					+ " for " + path;
			int PROBE_END_LINE_74 = 76;
			assertEquals(v_expected_file_visit_result_391_line_74, regex_file_filter_test_1_expr18_line_74,
                regex_file_filter_test_1_expr19_line_75);
        } else if (path == null) {
            assertEquals(expectedFileVisitResult, filter.accept(path, null),
                "Filter(Path, Path) " + filter.getClass().getName() + " not " + expectedFileVisitResult + " for null");
        }
        int PROBE_START_LINE_82 = 82;
		org.apache.commons.io.filefilter.IOFileFilter p_filter_388_line_82 = filter;
		String regex_file_filter_test_1_expr23_line_82 = p_filter_388_line_82.toString();
		int PROBE_END_LINE_82 = 82;
		// Just don't blow up
        assertNotNull(regex_file_filter_test_1_expr23_line_82);
    }

    private RegexFileFilter assertSerializable(final RegexFileFilter serializable) throws IOException {
        try (ByteArrayOutputStream baos = new ByteArrayOutputStream()) {
            try (ObjectOutputStream oos = new ObjectOutputStream(baos)) {
                int PROBE_START_LINE_88 = 88;
				java.io.ObjectOutputStream v_oos_394_line_88 = oos;
				org.apache.commons.io.filefilter.RegexFileFilter p_serializable_392_line_88 = serializable;
				int PROBE_END_LINE_88 = 88;
				v_oos_394_line_88.writeObject(p_serializable_392_line_88);
            }
            int PROBE_START_LINE_90 = 90;
			org.apache.commons.io.output.ByteArrayOutputStream v_baos_393_line_90 = baos;
			int PROBE_END_LINE_90 = 90;
			v_baos_393_line_90.flush();
            int PROBE_START_LINE_91 = 91;
			org.apache.commons.io.output.ByteArrayOutputStream v_baos_393_line_91 = baos;
			byte[] regex_file_filter_test_1_expr33_line_91 = v_baos_393_line_91.toByteArray();
			int regex_file_filter_test_1_expr32_line_91 = regex_file_filter_test_1_expr33_line_91.length;
			boolean regex_file_filter_test_1_expr31_line_91 = regex_file_filter_test_1_expr32_line_91 > 0;
			int PROBE_END_LINE_91 = 91;
			assertTrue(regex_file_filter_test_1_expr31_line_91);
        }
        int PROBE_START_LINE_93 = 93;
		org.apache.commons.io.filefilter.RegexFileFilter p_serializable_392_line_93 = serializable;
		int PROBE_END_LINE_93 = 93;
		return p_serializable_392_line_93;
    }

    @Test
    public void testRegex() throws IOException {
        RegexFileFilter filter = new RegexFileFilter("^.*[tT]est(-\\d+)?\\.java$");
        assertSerializable(filter);
        assertFiltering(filter, new File("Test.java"), true);
        assertFiltering(filter, new File("test-10.java"), true);
        assertFiltering(filter, new File("test-.java"), false);
        //
        assertFiltering(filter, new File("Test.java").toPath(), true);
        assertFiltering(filter, new File("test-10.java").toPath(), true);
        assertFiltering(filter, new File("test-.java").toPath(), false);

        filter = new RegexFileFilter("^[Tt]est.java$");
        assertSerializable(filter);
        assertFiltering(filter, new File("Test.java"), true);
        assertFiltering(filter, new File("test.java"), true);
        assertFiltering(filter, new File("tEST.java"), false);
        //
        assertFiltering(filter, new File("Test.java").toPath(), true);
        assertFiltering(filter, new File("test.java").toPath(), true);
        assertFiltering(filter, new File("tEST.java").toPath(), false);

        filter = new RegexFileFilter(Pattern.compile("^test.java$", Pattern.CASE_INSENSITIVE));
        assertSerializable(filter);
        assertFiltering(filter, new File("Test.java"), true);
        assertFiltering(filter, new File("test.java"), true);
        assertFiltering(filter, new File("tEST.java"), true);
        //
        assertFiltering(filter, new File("Test.java").toPath(), true);
        assertFiltering(filter, new File("test.java").toPath(), true);
        assertFiltering(filter, new File("tEST.java").toPath(), true);

        filter = new RegexFileFilter("^test.java$", Pattern.CASE_INSENSITIVE);
        assertSerializable(filter);
        assertFiltering(filter, new File("Test.java"), true);
        assertFiltering(filter, new File("test.java"), true);
        assertFiltering(filter, new File("tEST.java"), true);
        //
        assertFiltering(filter, new File("Test.java").toPath(), true);
        assertFiltering(filter, new File("test.java").toPath(), true);
        assertFiltering(filter, new File("tEST.java").toPath(), true);

        filter = new RegexFileFilter("^test.java$", IOCase.INSENSITIVE);
        assertSerializable(filter);
        assertFiltering(filter, new File("Test.java"), true);
        assertFiltering(filter, new File("test.java"), true);
        assertFiltering(filter, new File("tEST.java"), true);
        //
        assertFiltering(filter, new File("Test.java").toPath(), true);
        assertFiltering(filter, new File("test.java").toPath(), true);
        assertFiltering(filter, new File("tEST.java").toPath(), true);
    }

    @Test
    public void testRegexEdgeCases() {
        assertThrows(NullPointerException.class, () -> assertSerializable(new RegexFileFilter((String) null)));
        assertThrows(NullPointerException.class, () -> assertSerializable(new RegexFileFilter(null, Pattern.CASE_INSENSITIVE)));
        assertThrows(NullPointerException.class, () -> assertSerializable(new RegexFileFilter(null, IOCase.INSENSITIVE)));
        assertThrows(NullPointerException.class, () -> assertSerializable(new RegexFileFilter((java.util.regex.Pattern) null)));
    }

    /**
     * Tests https://issues.apache.org/jira/browse/IO-733.
     *
     * @throws IOException
     */
    @SuppressWarnings("unchecked")
    @Test
    public void testRegexFileNameOnly() throws IOException {
        int PROBE_START_LINE_165 = 165;
		Path regex_file_filter_test_1_expr34_line_165 = Paths.get("folder", "Foo.java");
		int PROBE_END_LINE_165 = 165;
		final Path path = regex_file_filter_test_1_expr34_line_165;
        final String patternStr = "Foo.*";
        int PROBE_START_LINE_167 = 167;
		String v_pattern_str_397_line_167 = patternStr;
		org.apache.commons.io.filefilter.RegexFileFilter regex_file_filter_test_1_expr36_line_167 = assertSerializable(
				new RegexFileFilter(v_pattern_str_397_line_167));
		java.nio.file.Path v_path_396_line_167 = path;
		int PROBE_END_LINE_167 = 167;
		assertFiltering(regex_file_filter_test_1_expr36_line_167, v_path_396_line_167, true);
        int PROBE_START_LINE_168 = 169;
		String v_pattern_str_397_line_168 = patternStr;
		java.util.regex.Pattern regex_file_filter_test_1_expr41_line_168 = Pattern.compile(v_pattern_str_397_line_168);
		org.apache.commons.io.filefilter.RegexFileFilter regex_file_filter_test_1_expr39_line_168 = assertSerializable(
				new RegexFileFilter(regex_file_filter_test_1_expr41_line_168,
						(Function<Path, String> & Serializable) Path::toString));
		java.nio.file.Path v_path_396_line_168 = path;
		int PROBE_END_LINE_168 = 169;
		assertFiltering(regex_file_filter_test_1_expr39_line_168, v_path_396_line_168,
                false);
        int PROBE_START_LINE_170 = 170;
		String v_pattern_str_397_line_170 = patternStr;
		java.util.regex.Pattern regex_file_filter_test_1_expr46_line_170 = Pattern.compile(v_pattern_str_397_line_170);
		java.nio.file.Path v_path_396_line_170 = path;
		int PROBE_END_LINE_170 = 170;
		assertFiltering(new RegexFileFilter(regex_file_filter_test_1_expr46_line_170, (Function<Path, String> & Serializable) null), v_path_396_line_170, false);
        assertFiltering(new RegexFileFilter(Pattern.compile(patternStr), (Function<Path, String> & Serializable) p -> null), path, false);
    }

}
