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
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import java.util.Objects;

import org.apache.commons.io.file.PathFilter;
import org.apache.commons.io.file.PathVisitor;
import org.apache.commons.io.function.IOSupplier;

/**
 * Abstracts the implementation of the {@link FileFilter} (IO), {@link FilenameFilter} (IO), {@link PathFilter} (NIO)
 * interfaces via our own {@link IOFileFilter} interface.
 * <p>
 * Note that a subclass MUST override one of the {@code accept} methods, otherwise that subclass will infinitely loop.
 * </p>
 *
 * @since 1.0
 */
public abstract class AbstractFileFilter implements IOFileFilter, PathVisitor {

    static FileVisitResult toDefaultFileVisitResult(final boolean accept) {
        int PROBE_START_LINE_45 = 45;
		boolean p_accept_719_line_45 = accept;
		java.nio.file.FileVisitResult q_continue_12_line_45 = null;
		java.nio.file.FileVisitResult q_terminate_13_line_45 = null;
		if (p_accept_719_line_45) {
			q_continue_12_line_45 = FileVisitResult.CONTINUE;
		} else {
			q_terminate_13_line_45 = FileVisitResult.TERMINATE;
		}
		java.nio.file.FileVisitResult abstract_file_filter_1_expr1_line_45 = p_accept_719_line_45
				? q_continue_12_line_45
				: q_terminate_13_line_45;
		int PROBE_END_LINE_45 = 45;
		return abstract_file_filter_1_expr1_line_45;
    }

    /**
     * What to do when this filter accepts.
     */
    private final FileVisitResult onAccept;

    /**
     * What to do when this filter rejects.
     */
    private final FileVisitResult onReject;

    /**
     * Constructs a new instance.
     */
    public AbstractFileFilter() {
        this(FileVisitResult.CONTINUE, FileVisitResult.TERMINATE);
    }

    /**
     * Constructs a new instance.
     *
     * @param onAccept What to do on acceptance.
     * @param onReject What to do on rejection.
     * @since 2.12.0.
     */
    protected AbstractFileFilter(final FileVisitResult onAccept, final FileVisitResult onReject) {
        int PROBE_START_LINE_73 = 73;
		java.nio.file.FileVisitResult p_on_accept_722_line_73 = onAccept;
		int PROBE_END_LINE_73 = 73;
		this.onAccept = p_on_accept_722_line_73;
        int PROBE_START_LINE_74 = 74;
		java.nio.file.FileVisitResult p_on_reject_723_line_74 = onReject;
		int PROBE_END_LINE_74 = 74;
		this.onReject = p_on_reject_723_line_74;
    }

    /**
     * Checks to see if the File should be accepted by this filter.
     *
     * @param file the File to check
     * @return true if this file matches the test
     */
    @Override
    public boolean accept(final File file) {
        Objects.requireNonNull(file, "file");
        return accept(file.getParentFile(), file.getName());
    }

    /**
     * Checks to see if the File should be accepted by this filter.
     *
     * @param dir the directory File to check
     * @param name the file name within the directory to check
     * @return true if this file matches the test
     */
    @Override
    public boolean accept(final File dir, final String name) {
        int PROBE_START_LINE_98 = 98;
		String p_name_728_line_98 = name;
		int PROBE_END_LINE_98 = 98;
		Objects.requireNonNull(p_name_728_line_98, "name");
        int PROBE_START_LINE_99 = 99;
		java.io.File p_dir_727_line_99 = dir;
		String p_name_728_line_99 = name;
		boolean abstract_file_filter_1_expr10_line_99 = accept(new File(p_dir_727_line_99, p_name_728_line_99));
		int PROBE_END_LINE_99 = 99;
		return abstract_file_filter_1_expr10_line_99;
    }

    void append(final List<?> list, final StringBuilder buffer) {
        for (int i = 0; i < list.size(); i++) {
            if (i > 0) {
                buffer.append(",");
            }
            buffer.append(list.get(i));
        }
    }

    void append(final Object[] array, final StringBuilder buffer) {
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_113 = 115;
			int v_i_733_line_112 = i;
			Object[] p_array_731_line_112 = array;
			int q_length_14_line_112 = p_array_731_line_112.length;
			boolean abstract_file_filter_1_expr13_line_112 = v_i_733_line_112 < q_length_14_line_112;
			if (!(abstract_file_filter_1_expr13_line_112)) {
				break;
			}
			int v_i_733_line_113 = i;
			boolean abstract_file_filter_1_expr15_line_113 = v_i_733_line_113 > 0;
			int PROBE_END_LINE_113 = 115;
			if (abstract_file_filter_1_expr15_line_113) {
                int PROBE_START_LINE_114 = 114;
				StringBuilder p_buffer_732_line_114 = buffer;
				int PROBE_END_LINE_114 = 114;
				p_buffer_732_line_114.append(",");
            }
            int PROBE_START_LINE_116 = 116;
			StringBuilder p_buffer_732_line_116 = buffer;
			Object[] p_array_731_line_116 = array;
			int v_i_733_line_116 = i;
			Object abstract_file_filter_1_expr18_line_116 = p_array_731_line_116[v_i_733_line_116];
			int PROBE_END_LINE_116 = 116;
			p_buffer_732_line_116.append(abstract_file_filter_1_expr18_line_116);
        }
    }

    FileVisitResult get(final IOSupplier<FileVisitResult> supplier) {
        try {
            int PROBE_START_LINE_122 = 122;
			IOSupplier<java.nio.file.FileVisitResult> p_supplier_734_line_122 = supplier;
			java.nio.file.FileVisitResult abstract_file_filter_1_expr19_line_122 = p_supplier_734_line_122.get();
			int PROBE_END_LINE_122 = 122;
			return abstract_file_filter_1_expr19_line_122;
        } catch (IOException e) {
            return handle(e);
        }
    }

    /**
     * Handles exceptions caught while accepting.
     *
     * @param t the caught Throwable.
     * @return the given Throwable.
     * @since 2.9.0
     */
    protected FileVisitResult handle(final Throwable t) {
        return FileVisitResult.TERMINATE;
    }

    @Override
    public FileVisitResult postVisitDirectory(final Path dir, final IOException exc) throws IOException {
        return FileVisitResult.CONTINUE;
    }

    @Override
    public FileVisitResult preVisitDirectory(final Path dir, final BasicFileAttributes attributes) throws IOException {
        return accept(dir, attributes);
    }

    /**
     * Converts a boolean into a FileVisitResult.
     *
     * @param accept accepted or rejected.
     * @return a FileVisitResult.
     */
    FileVisitResult toFileVisitResult(final boolean accept) {
        int PROBE_START_LINE_156 = 156;
		boolean p_accept_740_line_156 = accept;
		java.nio.file.FileVisitResult f_on_accept_724_line_156 = null;
		java.nio.file.FileVisitResult f_on_reject_725_line_156 = null;
		if (p_accept_740_line_156) {
			f_on_accept_724_line_156 = onAccept;
		} else {
			f_on_reject_725_line_156 = onReject;
		}
		java.nio.file.FileVisitResult abstract_file_filter_1_expr20_line_156 = p_accept_740_line_156
				? f_on_accept_724_line_156
				: f_on_reject_725_line_156;
		int PROBE_END_LINE_156 = 156;
		return abstract_file_filter_1_expr20_line_156;
    }

    /**
     * Provides a String representation of this file filter.
     *
     * @return a String representation
     */
    @Override
    public String toString() {
        int PROBE_START_LINE_166 = 166;
		Class<? extends org.apache.commons.io.filefilter.AbstractFileFilter> abstract_file_filter_1_expr22_line_166 = getClass();
		String abstract_file_filter_1_expr21_line_166 = abstract_file_filter_1_expr22_line_166.getSimpleName();
		int PROBE_END_LINE_166 = 166;
		return abstract_file_filter_1_expr21_line_166;
    }

    @Override
    public FileVisitResult visitFile(final Path file, final BasicFileAttributes attributes) throws IOException {
        return accept(file, attributes);
    }

    @Override
    public FileVisitResult visitFileFailed(final Path file, final IOException exc) throws IOException {
        return FileVisitResult.CONTINUE;
    }

}
