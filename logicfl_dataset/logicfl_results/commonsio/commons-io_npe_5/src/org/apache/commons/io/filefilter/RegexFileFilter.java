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
import java.util.Objects;
import java.util.function.Function;
import java.util.regex.Pattern;

import org.apache.commons.io.IOCase;
import java.util.regex.Matcher;

/**
 * Filters files using supplied regular expression(s).
 * <p>
 * See java.util.regex.Pattern for regex matching rules.
 * </p>
 * <h2>Using Classic IO</h2>
 * <p>
 * e.g.
 *
 * <pre>
 * File dir = FileUtils.current();
 * FileFilter fileFilter = new RegexFileFilter("^.*[tT]est(-\\d+)?\\.java$");
 * File[] files = dir.listFiles(fileFilter);
 * for (String file : files) {
 *     System.out.println(file);
 * }
 * </pre>
 *
 * <h2>Using NIO</h2>
 *
 * <pre>
 * final Path dir = PathUtils.current();
 * final AccumulatorPathVisitor visitor = AccumulatorPathVisitor.withLongCounters(new RegexFileFilter("^.*[tT]est(-\\d+)?\\.java$"));
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
 * @since 1.4
 */
public class RegexFileFilter extends AbstractFileFilter implements Serializable {

    private static final long serialVersionUID = 4269646126155225062L;

    /**
     * Compiles the given pattern source.
     *
     * @param pattern the source pattern.
     * @param flags the compilation flags.
     * @return a new Pattern.
     */
    private static Pattern compile(final String pattern, final int flags) {
        int PROBE_START_LINE_86 = 86;
		String p_pattern_367_line_86 = pattern;
		int PROBE_END_LINE_86 = 86;
		Objects.requireNonNull(p_pattern_367_line_86, "pattern");
        int PROBE_START_LINE_87 = 87;
		String p_pattern_367_line_87 = pattern;
		int p_flags_368_line_87 = flags;
		java.util.regex.Pattern regex_file_filter_1_expr2_line_87 = Pattern.compile(p_pattern_367_line_87,
				p_flags_368_line_87);
		int PROBE_END_LINE_87 = 87;
		return regex_file_filter_1_expr2_line_87;
    }

    /**
     * Converts IOCase to Pattern compilation flags.
     *
     * @param ioCase case-sensitivity.
     * @return Pattern compilation flags.
     */
    private static int toFlags(final IOCase ioCase) {
        return IOCase.isCaseSensitive(ioCase) ? 0 : Pattern.CASE_INSENSITIVE;
    }

    /** The regular expression pattern that will be used to match file names. */
    private final Pattern pattern;

    /** How convert a path to a string. */
    private final Function<Path, String> pathToString;

    /**
     * Constructs a new regular expression filter for a compiled regular expression
     *
     * @param pattern regular expression to match.
     * @throws NullPointerException if the pattern is null.
     */
    @SuppressWarnings("unchecked")
    public RegexFileFilter(final Pattern pattern) {
        this(pattern, (Function<Path, String> & Serializable) p -> p.getFileName().toString());
    }

    /**
     * Constructs a new regular expression filter for a compiled regular expression
     *
     * @param pattern regular expression to match.
     * @param pathToString How convert a path to a string.
     * @throws NullPointerException if the pattern is null.
     * @since 2.10.0
     */
    public RegexFileFilter(final Pattern pattern, final Function<Path, String> pathToString) {
        int PROBE_START_LINE_126 = 126;
		java.util.regex.Pattern p_pattern_372_line_126 = pattern;
		int PROBE_END_LINE_126 = 126;
		Objects.requireNonNull(p_pattern_372_line_126, "pattern");
        int PROBE_START_LINE_127 = 127;
		java.util.regex.Pattern p_pattern_372_line_127 = pattern;
		int PROBE_END_LINE_127 = 127;
		this.pattern = p_pattern_372_line_127;
        int PROBE_START_LINE_128 = 128;
		Function<java.nio.file.Path, String> p_path_to_string_373_line_128 = pathToString;
		int PROBE_END_LINE_128 = 128;
		this.pathToString = p_path_to_string_373_line_128;
    }

    /**
     * Constructs a new regular expression filter.
     *
     * @param pattern regular string expression to match
     * @throws NullPointerException if the pattern is null
     */
    public RegexFileFilter(final String pattern) {
        this(pattern, 0);
    }

    /**
     * Constructs a new regular expression filter with the specified flags.
     *
     * @param pattern regular string expression to match
     * @param flags pattern flags - e.g. {@link Pattern#CASE_INSENSITIVE}
     * @throws IllegalArgumentException if the pattern is null
     */
    public RegexFileFilter(final String pattern, final int flags) {
        this(compile(pattern, flags));
    }

    /**
     * Constructs a new regular expression filter with the specified flags case sensitivity.
     *
     * @param pattern regular string expression to match
     * @param ioCase how to handle case sensitivity, null means case-sensitive
     * @throws IllegalArgumentException if the pattern is null
     */
    public RegexFileFilter(final String pattern, final IOCase ioCase) {
        this(compile(pattern, toFlags(ioCase)));
    }

    /**
     * Checks to see if the file name matches one of the regular expressions.
     *
     * @param dir the file directory (ignored)
     * @param name the file name
     * @return true if the file name matches one of the regular expressions
     */
    @Override
    public boolean accept(final File dir, final String name) {
        return pattern.matcher(name).matches();
    }

    /**
     * Checks to see if the file name matches one of the regular expressions.
     *
     * @param path the path
     * @param attributes the path attributes
     * @return true if the file name matches one of the regular expressions
     */
    @Override
    public FileVisitResult accept(final Path path, final BasicFileAttributes attributes) {
        int PROBE_START_LINE_184 = 184;
		java.util.regex.Pattern f_pattern_374_line_184 = pattern;
		Function<java.nio.file.Path, String> f_path_to_string_375_line_184 = pathToString;
		java.nio.file.Path p_path_383_line_184 = path;
		String regex_file_filter_1_expr21_line_184 = f_path_to_string_375_line_184.apply(p_path_383_line_184);
		java.util.regex.Matcher regex_file_filter_1_expr20_line_184 = f_pattern_374_line_184
				.matcher(regex_file_filter_1_expr21_line_184);
		boolean regex_file_filter_1_expr19_line_184 = regex_file_filter_1_expr20_line_184.matches();
		java.nio.file.FileVisitResult regex_file_filter_1_expr18_line_184 = toFileVisitResult(
				regex_file_filter_1_expr19_line_184);
		int PROBE_END_LINE_184 = 184;
		return regex_file_filter_1_expr18_line_184;
    }

    /**
     * Returns a debug string.
     *
     * @since 2.10.0
     */
    @Override
    public String toString() {
        int PROBE_START_LINE_194 = 194;
		java.util.regex.Pattern f_pattern_374_line_194 = pattern;
		String regex_file_filter_1_expr22_line_194 = "RegexFileFilter [pattern=" + f_pattern_374_line_194 + "]";
		int PROBE_END_LINE_194 = 194;
		return regex_file_filter_1_expr22_line_194;
    }

}
