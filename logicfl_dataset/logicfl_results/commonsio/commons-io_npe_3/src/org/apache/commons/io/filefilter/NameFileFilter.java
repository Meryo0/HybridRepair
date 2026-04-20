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

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import java.util.Objects;
import java.util.stream.Stream;

import org.apache.commons.io.IOCase;
import org.apache.commons.io.file.PathUtils;
import java.util.function.Predicate;

/**
 * Filters file names for a certain name.
 * <p>
 * For example, to print all files and directories in the
 * current directory whose name is {@code Test}:
 * </p>
 * <h2>Using Classic IO</h2>
 * <pre>
 * File dir = FileUtils.current();
 * String[] files = dir.list(new NameFileFilter("Test"));
 * for (String file : files) {
 *     System.out.println(file);
 * }
 * </pre>
 *
 * <h2>Using NIO</h2>
 * <pre>
 * final Path dir = PathUtils.current();
 * final AccumulatorPathVisitor visitor = AccumulatorPathVisitor.withLongCounters(new NameFileFilter("Test"));
 * //
 * // Walk one dir
 * Files.<b>walkFileTree</b>(dir, Collections.emptySet(), 1, visitor);
 * System.out.println(visitor.getPathCounters());
 * System.out.println(visitor.getFileList());
 * //
 * visitor.getPathCounters().reset();
 * //
 * // Walk dir tree
 * Files.<b>walkFileTree</b>(dir, visitor);
 * System.out.println(visitor.getPathCounters());
 * System.out.println(visitor.getDirList());
 * System.out.println(visitor.getFileList());
 * </pre>
 * <h2>Deprecating Serialization</h2>
 * <p>
 * <em>Serialization is deprecated and will be removed in 3.0.</em>
 * </p>
 *
 * @since 1.0
 * @see FileFilterUtils#nameFileFilter(String)
 * @see FileFilterUtils#nameFileFilter(String, IOCase)
 */
public class NameFileFilter extends AbstractFileFilter implements Serializable {

    private static final long serialVersionUID = 176844364689077340L;

    /** The file names to search for */
    private final String[] names;

    /** Whether the comparison is case-sensitive. */
    private final IOCase ioCase;

    /**
     * Constructs a new case-sensitive name file filter for a list of names.
     *
     * @param names  the names to allow, must not be null
     * @throws IllegalArgumentException if the name list is null
     * @throws ClassCastException if the list does not contain Strings
     */
    public NameFileFilter(final List<String> names) {
        this(names, null);
    }

    /**
     * Constructs a new name file filter for a list of names specifying case-sensitivity.
     *
     * @param names  the names to allow, must not be null
     * @param ioCase  how to handle case sensitivity, null means case-sensitive
     * @throws NullPointerException if the name list is null
     * @throws ClassCastException if the list does not contain Strings
     */
    public NameFileFilter(final List<String> names, final IOCase ioCase) {
        int PROBE_START_LINE_103 = 103;
		List<String> p_names_889_line_103 = names;
		int PROBE_END_LINE_103 = 103;
		Objects.requireNonNull(p_names_889_line_103, "names");
        int PROBE_START_LINE_104 = 104;
		List<String> p_names_889_line_104 = names;
		String[] f_empty_string_array_879_line_104 = EMPTY_STRING_ARRAY;
		String[] name_file_filter_1_expr5_line_104 = p_names_889_line_104.toArray(f_empty_string_array_879_line_104);
		int PROBE_END_LINE_104 = 104;
		this.names = name_file_filter_1_expr5_line_104;
        int PROBE_START_LINE_105 = 105;
		org.apache.commons.io.IOCase p_io_case_890_line_105 = ioCase;
		org.apache.commons.io.IOCase name_file_filter_1_expr9_line_105 = toIOCase(p_io_case_890_line_105);
		int PROBE_END_LINE_105 = 105;
		this.ioCase = name_file_filter_1_expr9_line_105;
    }

    /**
     * Constructs a new case-sensitive name file filter for a single name.
     *
     * @param name  the name to allow, must not be null
     * @throws IllegalArgumentException if the name is null
     */
    public NameFileFilter(final String name) {
        this(name, IOCase.SENSITIVE);
    }

    /**
     * Constructs a new case-sensitive name file filter for an array of names.
     * <p>
     * The array is not cloned, so could be changed after constructing the
     * instance. This would be inadvisable however.
     * </p>
     *
     * @param names  the names to allow, must not be null
     * @throws IllegalArgumentException if the names array is null
     */
    public NameFileFilter(final String... names) {
        this(names, IOCase.SENSITIVE);
    }

    /**
     * Constructs a new name file filter specifying case-sensitivity.
     *
     * @param name  the name to allow, must not be null
     * @param ioCase  how to handle case sensitivity, null means case-sensitive
     * @throws NullPointerException if the name is null
     */
    public NameFileFilter(final String name, final IOCase ioCase) {
        int PROBE_START_LINE_140 = 140;
		String p_name_895_line_140 = name;
		int PROBE_END_LINE_140 = 140;
		Objects.requireNonNull(p_name_895_line_140, "name");
        int PROBE_START_LINE_141 = 141;
		String p_name_895_line_141 = name;
		int PROBE_END_LINE_141 = 141;
		this.names = new String[] {p_name_895_line_141};
        int PROBE_START_LINE_142 = 142;
		org.apache.commons.io.IOCase p_io_case_896_line_142 = ioCase;
		org.apache.commons.io.IOCase name_file_filter_1_expr21_line_142 = toIOCase(p_io_case_896_line_142);
		int PROBE_END_LINE_142 = 142;
		this.ioCase = name_file_filter_1_expr21_line_142;
    }

    /**
     * Constructs a new name file filter for an array of names specifying case-sensitivity.
     *
     * @param names  the names to allow, must not be null
     * @param ioCase  how to handle case sensitivity, null means case-sensitive
     * @throws NullPointerException if the names array is null
     */
    public NameFileFilter(final String[] names, final IOCase ioCase) {
        int PROBE_START_LINE_153 = 153;
		String[] p_names_897_line_153 = names;
		int PROBE_END_LINE_153 = 153;
		Objects.requireNonNull(p_names_897_line_153, "names");
        int PROBE_START_LINE_154 = 154;
		String[] p_names_897_line_154 = names;
		String[] name_file_filter_1_expr26_line_154 = p_names_897_line_154.clone();
		int PROBE_END_LINE_154 = 154;
		this.names = name_file_filter_1_expr26_line_154;
        int PROBE_START_LINE_155 = 155;
		org.apache.commons.io.IOCase p_io_case_898_line_155 = ioCase;
		org.apache.commons.io.IOCase name_file_filter_1_expr30_line_155 = toIOCase(p_io_case_898_line_155);
		int PROBE_END_LINE_155 = 155;
		this.ioCase = name_file_filter_1_expr30_line_155;
    }

    /**
     * Checks to see if the file name matches.
     *
     * @param file  the File to check
     * @return true if the file name matches
     */
    @Override
    public boolean accept(final File file) {
        int PROBE_START_LINE_166 = 166;
		java.io.File p_file_899_line_166 = file;
		String name_file_filter_1_expr33_line_166 = p_file_899_line_166.getName();
		boolean name_file_filter_1_expr32_line_166 = acceptBaseName(name_file_filter_1_expr33_line_166);
		int PROBE_END_LINE_166 = 166;
		return name_file_filter_1_expr32_line_166;
    }

    /**
     * Checks to see if the file name matches.
     *
     * @param dir  the File directory (ignored)
     * @param name  the file name
     * @return true if the file name matches
     */
    @Override
    public boolean accept(final File dir, final String name) {
        return acceptBaseName(name);
    }

    /**
     * Checks to see if the file name matches.
     * @param path  the File to check
     *
     * @return true if the file name matches
     * @since 2.9.0
     */
    @Override
    public FileVisitResult accept(final Path path, final BasicFileAttributes attributes) {
        int PROBE_START_LINE_190 = 190;
		java.nio.file.Path p_path_902_line_190 = path;
		String name_file_filter_1_expr36_line_190 = PathUtils.getFileNameString(p_path_902_line_190);
		boolean name_file_filter_1_expr35_line_190 = acceptBaseName(name_file_filter_1_expr36_line_190);
		java.nio.file.FileVisitResult name_file_filter_1_expr34_line_190 = toFileVisitResult(
				name_file_filter_1_expr35_line_190);
		int PROBE_END_LINE_190 = 190;
		return name_file_filter_1_expr34_line_190;
    }

    private boolean acceptBaseName(final String baseName) {
        int PROBE_START_LINE_194 = 194;
		String[] f_names_891_line_194 = names;
		Stream<String> name_file_filter_1_expr39_line_194 = Stream.of(f_names_891_line_194);
		Predicate<? super String> name_file_filter_1_expr38_line_194 = testName -> {
			org.apache.commons.io.IOCase f_io_case_892_line_194 = ioCase;
			String p_base_name_904_line_194 = baseName;
			String p_test_name_905_line_194 = testName;
			boolean name_file_filter_1_expr40_line_194 = f_io_case_892_line_194.checkEquals(p_base_name_904_line_194,
					p_test_name_905_line_194);
			return name_file_filter_1_expr40_line_194;
		};
		boolean name_file_filter_1_expr37_line_194 = name_file_filter_1_expr39_line_194
				.anyMatch(name_file_filter_1_expr38_line_194);
		int PROBE_END_LINE_194 = 194;
		return name_file_filter_1_expr37_line_194;
    }

    private IOCase toIOCase(final IOCase ioCase) {
        int PROBE_START_LINE_198 = 198;
		org.apache.commons.io.IOCase p_io_case_906_line_198 = ioCase;
		org.apache.commons.io.IOCase q_sensitive_22_line_198 = IOCase.SENSITIVE;
		org.apache.commons.io.IOCase name_file_filter_1_expr41_line_198 = IOCase.value(p_io_case_906_line_198,
				q_sensitive_22_line_198);
		int PROBE_END_LINE_198 = 198;
		return name_file_filter_1_expr41_line_198;
    }

    /**
     * Provide a String representation of this file filter.
     *
     * @return a String representation
     */
    @Override
    public String toString() {
        final StringBuilder buffer = new StringBuilder();
        int PROBE_START_LINE_209 = 209;
		StringBuilder v_buffer_907_line_209 = buffer;
		String name_file_filter_1_expr44_line_209 = super.toString();
		int PROBE_END_LINE_209 = 209;
		v_buffer_907_line_209.append(name_file_filter_1_expr44_line_209);
        int PROBE_START_LINE_210 = 210;
		StringBuilder v_buffer_907_line_210 = buffer;
		int PROBE_END_LINE_210 = 210;
		v_buffer_907_line_210.append("(");
        int PROBE_START_LINE_211 = 211;
		String[] f_names_891_line_211 = names;
		StringBuilder v_buffer_907_line_211 = buffer;
		int PROBE_END_LINE_211 = 211;
		append(f_names_891_line_211, v_buffer_907_line_211);
        int PROBE_START_LINE_212 = 212;
		StringBuilder v_buffer_907_line_212 = buffer;
		int PROBE_END_LINE_212 = 212;
		v_buffer_907_line_212.append(")");
        int PROBE_START_LINE_213 = 213;
		StringBuilder v_buffer_907_line_213 = buffer;
		String name_file_filter_1_expr48_line_213 = v_buffer_907_line_213.toString();
		int PROBE_END_LINE_213 = 213;
		return name_file_filter_1_expr48_line_213;
    }

}
