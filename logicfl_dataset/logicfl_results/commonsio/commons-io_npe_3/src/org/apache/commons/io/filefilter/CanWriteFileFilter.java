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
 * This filter accepts {@link File}s that can be written to.
 * <p>
 * Example, showing how to print out a list of the current directory's <i>writable</i> files:
 * </p>
 * <h2>Using Classic IO</h2>
 * <pre>
 * File dir = FileUtils.current();
 * String[] files = dir.list(CanWriteFileFilter.CAN_WRITE);
 * for (String file : files) {
 *     System.out.println(file);
 * }
 * </pre>
 * <p>
 * Example, showing how to print out a list of the current directory's <i>un-writable</i> files:
 * </p>
 * <pre>
 * File dir = FileUtils.current();
 * String[] files = dir.list(CanWriteFileFilter.CANNOT_WRITE);
 * for (String file : files) {
 *     System.out.println(file);
 * }
 * </pre>
 * <p>
 * <b>N.B.</b> For read-only files, use {@code CanReadFileFilter.READ_ONLY}.
 * </p>
 * <h2>Deprecating Serialization</h2>
 * <p>
 * <em>Serialization is deprecated and will be removed in 3.0.</em>
 * </p>
 *
 * @since 1.3
 */
public class CanWriteFileFilter extends AbstractFileFilter implements Serializable {

    /** Singleton instance of <i>writable</i> filter */
    public static final IOFileFilter CAN_WRITE = new CanWriteFileFilter();

    int PROBE_START_LINE_64 = 65;

	public static final org.apache.commons.io.filefilter.IOFileFilter f_can_write_777_line_65 = CAN_WRITE;

	public static final org.apache.commons.io.filefilter.IOFileFilter can_write_file_filter_1_expr2_line_65 = f_can_write_777_line_65
			.negate();

	int PROBE_END_LINE_64 = 65;

	/** Singleton instance of not <i>writable</i> filter */
    public static final IOFileFilter CANNOT_WRITE = can_write_file_filter_1_expr2_line_65;

    private static final long serialVersionUID = 5132005214688990379L;

    /**
     * Restrictive constructor.
     */
    protected CanWriteFileFilter() {
    }

    /**
     * Checks to see if the file can be written to.
     *
     * @param file the File to check
     * @return {@code true} if the file can be written to, otherwise {@code false}.
     */
    @Override
    public boolean accept(final File file) {
        int PROBE_START_LINE_83 = 83;
		java.io.File p_file_779_line_83 = file;
		boolean can_write_file_filter_1_expr3_line_83 = p_file_779_line_83.canWrite();
		int PROBE_END_LINE_83 = 83;
		return can_write_file_filter_1_expr3_line_83;
    }

    /**
     * Checks to see if the file can be written to.
     * @param file the File to check
     *
     * @return {@code true} if the file can be written to, otherwise {@code false}.
     * @since 2.9.0
     */
    @Override
    public FileVisitResult accept(final Path file, final BasicFileAttributes attributes) {
        int PROBE_START_LINE_95 = 95;
		java.nio.file.Path p_file_780_line_95 = file;
		boolean can_write_file_filter_1_expr5_line_95 = Files.isWritable(p_file_780_line_95);
		java.nio.file.FileVisitResult can_write_file_filter_1_expr4_line_95 = toFileVisitResult(
				can_write_file_filter_1_expr5_line_95);
		int PROBE_END_LINE_95 = 95;
		return can_write_file_filter_1_expr4_line_95;
    }

}
