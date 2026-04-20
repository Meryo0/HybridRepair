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

/**
 * This filter accepts {@link File}s that can be read.
 * <p>
 * Example, showing how to print out a list of the current directory's <i>readable</i> files:
 * </p>
 * <h2>Using Classic IO</h2>
 * <pre>
 * File dir = FileUtils.current();
 * String[] files = dir.list(CanReadFileFilter.CAN_READ);
 * for (String file : files) {
 *     System.out.println(file);
 * }
 * </pre>
 *
 * <p>
 * Example, showing how to print out a list of the current directory's <i>un-readable</i> files:
 *
 * <pre>
 * File dir = FileUtils.current();
 * String[] files = dir.list(CanReadFileFilter.CANNOT_READ);
 * for (String file : files) {
 *     System.out.println(file);
 * }
 * </pre>
 *
 * <p>
 * Example, showing how to print out a list of the current directory's <i>read-only</i> files:
 *
 * <pre>
 * File dir = FileUtils.current();
 * String[] files = dir.list(CanReadFileFilter.READ_ONLY);
 * for (String file : files) {
 *     System.out.println(file);
 * }
 * </pre>
 * <h2>Deprecating Serialization</h2>
 * <p>
 * <em>Serialization is deprecated and will be removed in 3.0.</em>
 * </p>
 *
 * @since 1.3
 */
public class CanReadFileFilter extends AbstractFileFilter implements Serializable {

    /** Singleton instance of <i>readable</i> filter */
    public static final IOFileFilter CAN_READ = new CanReadFileFilter();

    int PROBE_START_LINE_73 = 74;

	public static final org.apache.commons.io.filefilter.IOFileFilter f_can_read_771_line_74 = CAN_READ;

	public static final org.apache.commons.io.filefilter.IOFileFilter can_read_file_filter_1_expr2_line_74 = f_can_read_771_line_74
			.negate();

	int PROBE_END_LINE_73 = 74;

	/** Singleton instance of not <i>readable</i> filter */
    public static final IOFileFilter CANNOT_READ = can_read_file_filter_1_expr2_line_74;

    int PROBE_START_LINE_76 = 77;

	public static final org.apache.commons.io.filefilter.IOFileFilter f_can_read_771_line_77 = CAN_READ;

	public static final org.apache.commons.io.filefilter.IOFileFilter q_cannot_write_15_line_77 = CanWriteFileFilter.CANNOT_WRITE;

	public static final org.apache.commons.io.filefilter.IOFileFilter can_read_file_filter_1_expr3_line_77 = f_can_read_771_line_77
			.and(q_cannot_write_15_line_77);

	int PROBE_END_LINE_76 = 77;

	/** Singleton instance of <i>read-only</i> filter */
    public static final IOFileFilter READ_ONLY = can_read_file_filter_1_expr3_line_77;

    private static final long serialVersionUID = 3179904805251622989L;

    /**
     * Restrictive constructor.
     */
    protected CanReadFileFilter() {
    }

    /**
     * Checks to see if the file can be read.
     *
     * @param file the File to check.
     * @return {@code true} if the file can be read, otherwise {@code false}.
     */
    @Override
    public boolean accept(final File file) {
        int PROBE_START_LINE_95 = 95;
		java.io.File p_file_774_line_95 = file;
		boolean can_read_file_filter_1_expr4_line_95 = p_file_774_line_95.canRead();
		int PROBE_END_LINE_95 = 95;
		return can_read_file_filter_1_expr4_line_95;
    }

    /**
     * Checks to see if the file can be read.
     * @param file the File to check.
     *
     * @return {@code true} if the file can be read, otherwise {@code false}.
     * @since 2.9.0
     */
    @Override
    public FileVisitResult accept(final Path file, final BasicFileAttributes attributes) {
        int PROBE_START_LINE_107 = 107;
		java.nio.file.Path p_file_775_line_107 = file;
		boolean can_read_file_filter_1_expr6_line_107 = Files.isReadable(p_file_775_line_107);
		java.nio.file.FileVisitResult can_read_file_filter_1_expr5_line_107 = toFileVisitResult(
				can_read_file_filter_1_expr6_line_107);
		int PROBE_END_LINE_107 = 107;
		return can_read_file_filter_1_expr5_line_107;
    }

}
