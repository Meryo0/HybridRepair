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
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.stream.Stream;

import org.apache.commons.io.IOUtils;
import java.util.Optional;
import org.apache.commons.io.function.IOSupplier;

/**
 * This filter accepts files or directories that are empty.
 * <p>
 * If the {@link File} is a directory it checks that it contains no files.
 * </p>
 * <p>
 * Example, showing how to print out a list of the current directory's empty files/directories:
 * </p>
 * <h2>Using Classic IO</h2>
 * <pre>
 * File dir = FileUtils.current();
 * String[] files = dir.list(EmptyFileFilter.EMPTY);
 * for (String file : files) {
 *     System.out.println(file);
 * }
 * </pre>
 *
 * <p>
 * Example, showing how to print out a list of the current directory's non-empty files/directories:
 * </p>
 *
 * <pre>
 * File dir = FileUtils.current();
 * String[] files = dir.list(EmptyFileFilter.NOT_EMPTY);
 * for (String file : files) {
 *     System.out.println(file);
 * }
 * </pre>
 *
 * <h2>Using NIO</h2>
 * <pre>
 * final Path dir = PathUtils.current();
 * final AccumulatorPathVisitor visitor = AccumulatorPathVisitor.withLongCounters(EmptyFileFilter.EMPTY);
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
 * @since 1.3
 */
public class EmptyFileFilter extends AbstractFileFilter implements Serializable {

    /** Singleton instance of <i>empty</i> filter */
    public static final IOFileFilter EMPTY = new EmptyFileFilter();

    int PROBE_START_LINE_88 = 89;

	public static final org.apache.commons.io.filefilter.IOFileFilter f_empty_787_line_89 = EMPTY;

	public static final org.apache.commons.io.filefilter.IOFileFilter empty_file_filter_1_expr2_line_89 = f_empty_787_line_89
			.negate();

	int PROBE_END_LINE_88 = 89;

	/** Singleton instance of <i>not-empty</i> filter */
    public static final IOFileFilter NOT_EMPTY = empty_file_filter_1_expr2_line_89;

    private static final long serialVersionUID = 3631422087512832211L;

    /**
     * Restrictive constructor.
     */
    protected EmptyFileFilter() {
    }

    /**
     * Checks to see if the file is empty.
     *
     * @param file the file or directory to check
     * @return {@code true} if the file or directory is <i>empty</i>, otherwise {@code false}.
     */
    @Override
    public boolean accept(final File file) {
        int PROBE_START_LINE_107 = 110;
		java.io.File p_file_789_line_107 = file;
		boolean empty_file_filter_1_expr3_line_107 = p_file_789_line_107.isDirectory();
		int PROBE_END_LINE_107 = 110;
		if (empty_file_filter_1_expr3_line_107) {
            int PROBE_START_LINE_108 = 108;
			java.io.File p_file_789_line_108 = file;
			File[] empty_file_filter_1_expr4_line_108 = p_file_789_line_108.listFiles();
			int PROBE_END_LINE_108 = 108;
			final File[] files = empty_file_filter_1_expr4_line_108;
            int PROBE_START_LINE_109 = 109;
			java.io.File[] v_files_790_line_109 = files;
			int empty_file_filter_1_expr6_line_109 = IOUtils.length(v_files_790_line_109);
			boolean empty_file_filter_1_expr5_line_109 = empty_file_filter_1_expr6_line_109 == 0;
			int PROBE_END_LINE_109 = 109;
			return empty_file_filter_1_expr5_line_109;
        }
        return file.length() == 0;
    }

    /**
     * Checks to see if the file is empty.
     * @param file the file or directory to check
     *
     * @return {@code true} if the file or directory is <i>empty</i>, otherwise {@code false}.
     * @since 2.9.0
     */
    @Override
    public FileVisitResult accept(final Path file, final BasicFileAttributes attributes) {
        int PROBE_START_LINE_123 = 130;
		IOSupplier<java.nio.file.FileVisitResult> empty_file_filter_1_expr8_line_123 = () -> {
			java.nio.file.Path p_file_791_line_124 = file;
			boolean empty_file_filter_1_expr9_line_124 = Files.isDirectory(p_file_791_line_124);
			if (empty_file_filter_1_expr9_line_124) {
				try (Stream<Path> stream = Files.list(file)) {
					Stream<java.nio.file.Path> v_stream_793_line_126 = stream;
					Optional<java.nio.file.Path> empty_file_filter_1_expr15_line_126 = v_stream_793_line_126
							.findFirst();
					boolean empty_file_filter_1_expr14_line_126 = empty_file_filter_1_expr15_line_126.isPresent();
					boolean empty_file_filter_1_expr13_line_126 = !empty_file_filter_1_expr14_line_126;
					java.nio.file.FileVisitResult empty_file_filter_1_expr12_line_126 = toFileVisitResult(
							empty_file_filter_1_expr13_line_126);
					return empty_file_filter_1_expr12_line_126;
				}
			}
			return toFileVisitResult(Files.size(file) == 0);
		};
		java.nio.file.FileVisitResult empty_file_filter_1_expr7_line_123 = get(empty_file_filter_1_expr8_line_123);
		int PROBE_END_LINE_123 = 130;
		return empty_file_filter_1_expr7_line_123;
    }

}
