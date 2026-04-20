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
import org.apache.commons.io.function.IOSupplier;

/**
 * This filter accepts {@link File}s that are hidden.
 * <p>
 * Example, showing how to print out a list of the
 * current directory's <i>hidden</i> files:
 * </p>
 * <h2>Using Classic IO</h2>
 * <pre>
 * File dir = FileUtils.current();
 * String[] files = dir.list(HiddenFileFilter.HIDDEN);
 * for (String file : files) {
 *     System.out.println(file);
 * }
 * </pre>
 *
 * <p>
 * Example, showing how to print out a list of the
 * current directory's <i>visible</i> (i.e. not hidden) files:
 * </p>
 *
 * <pre>
 * File dir = FileUtils.current();
 * String[] files = dir.list(HiddenFileFilter.VISIBLE);
 * for (String file : files) {
 *     System.out.println(file);
 * }
 * </pre>
 *
 * <h2>Using NIO</h2>
 * <pre>
 * final Path dir = PathUtils.current();
 * final AccumulatorPathVisitor visitor = AccumulatorPathVisitor.withLongCounters(HiddenFileFilter.HIDDEN);
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
public class HiddenFileFilter extends AbstractFileFilter implements Serializable {

    /** Singleton instance of <i>hidden</i> filter */
    public static final IOFileFilter HIDDEN  = new HiddenFileFilter();

    private static final long serialVersionUID = 8930842316112759062L;

    int PROBE_START_LINE_86 = 87;

	public static final org.apache.commons.io.filefilter.IOFileFilter f_hidden_874_line_87 = HIDDEN;

	public static final org.apache.commons.io.filefilter.IOFileFilter hidden_file_filter_1_expr2_line_87 = f_hidden_874_line_87
			.negate();

	int PROBE_END_LINE_86 = 87;

	/** Singleton instance of <i>visible</i> filter */
    public static final IOFileFilter VISIBLE = hidden_file_filter_1_expr2_line_87;

    /**
     * Restrictive constructor.
     */
    protected HiddenFileFilter() {
    }

    /**
     * Checks to see if the file is hidden.
     *
     * @param file  the File to check
     * @return {@code true} if the file is
     *  <i>hidden</i>, otherwise {@code false}.
     */
    @Override
    public boolean accept(final File file) {
        int PROBE_START_LINE_104 = 104;
		java.io.File p_file_876_line_104 = file;
		boolean hidden_file_filter_1_expr3_line_104 = p_file_876_line_104.isHidden();
		int PROBE_END_LINE_104 = 104;
		return hidden_file_filter_1_expr3_line_104;
    }

    /**
     * Checks to see if the file is hidden.
     * @param file  the File to check
     *
     * @return {@code true} if the file is
     *  <i>hidden</i>, otherwise {@code false}.
     * @since 2.9.0
     */
    @Override
    public FileVisitResult accept(final Path file, final BasicFileAttributes attributes) {
        int PROBE_START_LINE_117 = 117;
		IOSupplier<java.nio.file.FileVisitResult> hidden_file_filter_1_expr5_line_117 = () -> {
			java.nio.file.Path p_file_877_line_117 = file;
			boolean hidden_file_filter_1_expr7_line_117 = Files.isHidden(p_file_877_line_117);
			java.nio.file.FileVisitResult hidden_file_filter_1_expr6_line_117 = toFileVisitResult(
					hidden_file_filter_1_expr7_line_117);
			return hidden_file_filter_1_expr6_line_117;
		};
		java.nio.file.FileVisitResult hidden_file_filter_1_expr4_line_117 = get(hidden_file_filter_1_expr5_line_117);
		int PROBE_END_LINE_117 = 117;
		return hidden_file_filter_1_expr4_line_117;
    }

}
