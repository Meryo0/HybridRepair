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

package org.apache.commons.io.file;

import java.io.IOException;
import java.net.URI;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.NotDirectoryException;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.apache.commons.io.file.Counters.PathCounters;

/**
 * NIO Path utilities.
 *
 * @since 2.7
 */
public final class PathUtils {

    /**
     * Cleans a directory including sub-directories without deleting directories.
     *
     * @param directory directory to clean.
     * @return The visitation path counters.
     * @throws IOException if an I/O error is thrown by a visitor method.
     */
    public static PathCounters cleanDirectory(final Path directory) throws IOException {
        return visitFileTree(CleaningPathVisitor.withLongCounters(), directory).getPathCounters();
    }

    /**
     * Copies a directory to another directory.
     *
     * @param sourceDirectory The source directory.
     * @param targetDirectory The target directory.
     * @param copyOptions Specifies how the copying should be done.
     * @return The visitation path counters.
     * @throws IOException if an I/O error is thrown by a visitor method.
     */
    public static PathCounters copyDirectory(final Path sourceDirectory, final Path targetDirectory,
            final CopyOption... copyOptions) throws IOException {
        return visitFileTree(
                new CopyDirectoryVisitor(Counters.longPathCounters(), sourceDirectory, targetDirectory, copyOptions),
                sourceDirectory).getPathCounters();
    }

    /**
     * Copies a file to a directory.
     *
     * @param sourceFile The source file
     * @param targetDirectory The target directory.
     * @param copyOptions Specifies how the copying should be done.
     * @return The target file
     * @throws IOException if an I/O error occurs
     * @see Files#copy(Path, Path, CopyOption...)
     */
    public static Path copyFileToDirectory(final Path sourceFile, final Path targetDirectory,
            final CopyOption... copyOptions) throws IOException {
        return Files.copy(sourceFile, targetDirectory.resolve(sourceFile.getFileName()), copyOptions);

    }

    /**
     * Counts aspects of a directory including sub-directories.
     *
     * @param directory directory to delete.
     * @return The visitor used to count the given directory.
     * @throws IOException if an I/O error is thrown by a visitor method.
     */
    public static PathCounters countDirectory(final Path directory) throws IOException {
        return visitFileTree(new CountingPathVisitor(Counters.longPathCounters()), directory).getPathCounters();
    }

    /**
     * Deletes a file or directory. If the path is a directory, delete it and all sub-directories.
     * <p>
     * The difference between File.delete() and this method are:
     * </p>
     * <ul>
     * <li>A directory to delete does not have to be empty.</li>
     * <li>You get exceptions when a file or directory cannot be deleted; {@link java.io.File#delete()} returns a
     * boolean.
     * </ul>
     *
     * @param path file or directory to delete, must not be {@code null}
     * @return The visitor used to delete the given directory.
     * @throws NullPointerException if the directory is {@code null}
     * @throws IOException if an I/O error is thrown by a visitor method or if an I/O error occurs.
     */
    public static PathCounters delete(final Path path) throws IOException {
        int PROBE_START_LINE_110 = 110;
		java.nio.file.Path p_path_366_line_110 = path;
		boolean path_utils_1_expr2_line_110 = Files.isDirectory(p_path_366_line_110);
		org.apache.commons.io.file.Counters.PathCounters path_utils_1_expr3_line_110 = null;
		org.apache.commons.io.file.Counters.PathCounters path_utils_1_expr4_line_110 = null;
		if (path_utils_1_expr2_line_110) {
			java.nio.file.Path p_path_366_line_110_v1 = path;
			path_utils_1_expr3_line_110 = deleteDirectory(p_path_366_line_110_v1);
		} else {
			java.nio.file.Path p_path_366_line_110_v2 = path;
			path_utils_1_expr4_line_110 = deleteFile(p_path_366_line_110_v2);
		}
		org.apache.commons.io.file.Counters.PathCounters path_utils_1_expr1_line_110 = path_utils_1_expr2_line_110
				? path_utils_1_expr3_line_110
				: path_utils_1_expr4_line_110;
		int PROBE_END_LINE_110 = 110;
		return path_utils_1_expr1_line_110;
    }

    /**
     * Deletes a directory including sub-directories.
     *
     * @param directory directory to delete.
     * @return The visitor used to delete the given directory.
     * @throws IOException if an I/O error is thrown by a visitor method.
     */
    public static PathCounters deleteDirectory(final Path directory) throws IOException {
        return visitFileTree(DeletingPathVisitor.withLongCounters(), directory).getPathCounters();
    }

    /**
     * Deletes the given file.
     *
     * @param file The file to delete.
     * @return A visitor with path counts set to 1 file, 0 directories, and the size of the deleted file.
     * @throws IOException if an I/O error occurs.
     * @throws NotDirectoryException if the file is a directory.
     */
    public static PathCounters deleteFile(final Path file) throws IOException {
        int PROBE_START_LINE_133 = 135;
		java.nio.file.Path p_file_368_line_133 = file;
		boolean path_utils_1_expr5_line_133 = Files.isDirectory(p_file_368_line_133);
		int PROBE_END_LINE_133 = 135;
		if (path_utils_1_expr5_line_133) {
            throw new NotDirectoryException(file.toString());
        }
        int PROBE_START_LINE_136 = 136;
		PathCounters path_utils_1_expr6_line_136 = Counters.longPathCounters();
		int PROBE_END_LINE_136 = 136;
		final PathCounters pathCounts = path_utils_1_expr6_line_136;
        int PROBE_START_LINE_137 = 137;
		java.nio.file.Path p_file_368_line_137 = file;
		boolean path_utils_1_expr8_line_137 = Files.exists(p_file_368_line_137);
		long path_utils_1_expr9_line_137 = 0;
		if (path_utils_1_expr8_line_137) {
			java.nio.file.Path p_file_368_line_137_v1 = file;
			path_utils_1_expr9_line_137 = Files.size(p_file_368_line_137_v1);
		}
		long path_utils_1_expr7_line_137 = path_utils_1_expr8_line_137 ? path_utils_1_expr9_line_137 : 0;
		int PROBE_END_LINE_137 = 137;
		final long size = path_utils_1_expr7_line_137;
        int PROBE_START_LINE_138 = 141;
		java.nio.file.Path p_file_368_line_138 = file;
		boolean path_utils_1_expr10_line_138 = Files.deleteIfExists(p_file_368_line_138);
		int PROBE_END_LINE_138 = 141;
		if (path_utils_1_expr10_line_138) {
            int PROBE_START_LINE_139 = 139;
			org.apache.commons.io.file.Counters.PathCounters v_path_counts_369_line_139 = pathCounts;
			org.apache.commons.io.file.Counters.Counter path_utils_1_expr12_line_139 = v_path_counts_369_line_139
					.getFileCounter();
			int PROBE_END_LINE_139 = 139;
			path_utils_1_expr12_line_139.increment();
            int PROBE_START_LINE_140 = 140;
			org.apache.commons.io.file.Counters.PathCounters v_path_counts_369_line_140 = pathCounts;
			org.apache.commons.io.file.Counters.Counter path_utils_1_expr14_line_140 = v_path_counts_369_line_140
					.getByteCounter();
			long v_size_370_line_140 = size;
			int PROBE_END_LINE_140 = 140;
			path_utils_1_expr14_line_140.add(v_size_370_line_140);
        }
        int PROBE_START_LINE_142 = 142;
		org.apache.commons.io.file.Counters.PathCounters v_path_counts_369_line_142 = pathCounts;
		int PROBE_END_LINE_142 = 142;
		return v_path_counts_369_line_142;
    }

    /**
     * Returns whether the given file or directory is empty.
     *
     * @param path the the given file or directory to query.
     * @return whether the given file or directory is empty.
     * @throws IOException if an I/O error occurs
     */
    public static boolean isEmpty(final Path path) throws IOException {
        return Files.isDirectory(path) ? isEmptyDirectory(path) : isEmptyFile(path);
    }

    /**
     * Returns whether the directory is empty.
     *
     * @param directory the the given directory to query.
     * @return whether the given directory is empty.
     * @throws IOException if an I/O error occurs
     */
    public static boolean isEmptyDirectory(final Path directory) throws IOException {
        try (DirectoryStream<Path> directoryStream = Files.newDirectoryStream(directory)) {
            if (directoryStream.iterator().hasNext()) {
                return false;
            }
        }
        return true;
    }

    /**
     * Returns whether the given file is empty.
     *
     * @param file the the given file to query.
     * @return whether the given file is empty.
     * @throws IOException if an I/O error occurs
     */
    public static boolean isEmptyFile(final Path file) throws IOException {
        return Files.size(file) <= 0;
    }

    /**
     * Performs {@link Files#walkFileTree(Path,FileVisitor)} and returns the given visitor.
     *
     * Note that {@link Files#walkFileTree(Path,FileVisitor)} returns the given path.
     *
     * @param visitor See {@link Files#walkFileTree(Path,FileVisitor)}.
     * @param directory See {@link Files#walkFileTree(Path,FileVisitor)}.
     *
     * @param <T> See {@link Files#walkFileTree(Path,FileVisitor)}.
     * @return the given visitor.
     *
     * @throws IOException if an I/O error is thrown by a visitor method
     */
    public static <T extends FileVisitor<? super Path>> T visitFileTree(final T visitor, final Path directory)
            throws IOException {
        Files.walkFileTree(directory, visitor);
        return visitor;
    }

    /**
     * Performs {@link Files#walkFileTree(Path,FileVisitor)} and returns the given visitor.
     *
     * Note that {@link Files#walkFileTree(Path,FileVisitor)} returns the given path.
     *
     * @param visitor See {@link Files#walkFileTree(Path,FileVisitor)}.
     * @param first See {@link Paths#get(String,String[])}.
     * @param more See {@link Paths#get(String,String[])}.
     * @param <T> See {@link Files#walkFileTree(Path,FileVisitor)}.
     * @return the given visitor.
     *
     * @throws IOException if an I/O error is thrown by a visitor method
     */
    public static <T extends FileVisitor<? super Path>> T visitFileTree(final T visitor, final String first,
            final String... more) throws IOException {
        return visitFileTree(visitor, Paths.get(first, more));
    }

    /**
     * Performs {@link Files#walkFileTree(Path,FileVisitor)} and returns the given visitor.
     *
     * Note that {@link Files#walkFileTree(Path,FileVisitor)} returns the given path.
     *
     * @param visitor See {@link Files#walkFileTree(Path,FileVisitor)}.
     * @param uri See {@link Paths#get(URI)}.
     * @param <T> See {@link Files#walkFileTree(Path,FileVisitor)}.
     * @return the given visitor.
     *
     * @throws IOException if an I/O error is thrown by a visitor method
     */
    public static <T extends FileVisitor<? super Path>> T visitFileTree(final T visitor, final URI uri)
            throws IOException {
        return visitFileTree(visitor, Paths.get(uri));
    }

    /**
     * Does allow to instantiate.
     */
    private PathUtils() {
        // do not instantiate.
    }

}
