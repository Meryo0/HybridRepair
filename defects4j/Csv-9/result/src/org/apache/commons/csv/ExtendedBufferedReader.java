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

package org.apache.commons.csv;

import static org.apache.commons.csv.Constants.CR;
import static org.apache.commons.csv.Constants.END_OF_STREAM;
import static org.apache.commons.csv.Constants.LF;
import static org.apache.commons.csv.Constants.UNDEFINED;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;

/**
 * A special buffered reader which supports sophisticated read access.
 * <p>
 * In particular the reader supports a look-ahead option, which allows you to see the next char returned by
 * {@link #read()}.
 *
 * @version $Id$
 */
final class ExtendedBufferedReader extends BufferedReader {

    int PROBE_START_LINE_39 = 40;

	private int f_undefined_112_line_40 = UNDEFINED;

	int PROBE_END_LINE_39 = 40;

	/** The last char returned */
    private int lastChar = f_undefined_112_line_40;

    /** The count of EOLs (CR/LF/CRLF) seen so far */
    private long eolCounter = 0;

    private boolean closed;

    /**
     * Created extended buffered reader using default buffer-size
     */
    ExtendedBufferedReader(final Reader reader) {
        super(reader);
    }

    @Override
    public int read() throws IOException {
        int PROBE_START_LINE_56 = 56;
		int extended_buffered_reader_1_expr2_line_56 = super.read();
		int PROBE_END_LINE_56 = 56;
		final int current = extended_buffered_reader_1_expr2_line_56;
        int PROBE_START_LINE_57 = 59;
		int v_current_115_line_57 = current;
		char f_cr_13_line_57 = CR;
		boolean extended_buffered_reader_1_expr4_line_57 = v_current_115_line_57 == f_cr_13_line_57;
		boolean extended_buffered_reader_1_expr5_line_57 = false;
		if (!extended_buffered_reader_1_expr4_line_57) {
			int v_current_115_line_57_v1 = current;
			char f_lf_12_line_57 = LF;
			boolean extended_buffered_reader_1_expr7_line_57 = v_current_115_line_57_v1 == f_lf_12_line_57;
			boolean extended_buffered_reader_1_expr8_line_57 = true;
			if (extended_buffered_reader_1_expr7_line_57) {
				int f_last_char_111_line_57 = lastChar;
				char f_cr_13_line_57_v1 = CR;
				extended_buffered_reader_1_expr8_line_57 = f_last_char_111_line_57 != f_cr_13_line_57_v1;
			}
			boolean extended_buffered_reader_1_expr6_line_57 = extended_buffered_reader_1_expr7_line_57
					&& extended_buffered_reader_1_expr8_line_57;
			extended_buffered_reader_1_expr5_line_57 = (extended_buffered_reader_1_expr6_line_57);
		}
		boolean extended_buffered_reader_1_expr3_line_57 = extended_buffered_reader_1_expr4_line_57
				|| extended_buffered_reader_1_expr5_line_57;
		int PROBE_END_LINE_57 = 59;
		if (extended_buffered_reader_1_expr3_line_57) {
            eolCounter++;
        }
        int PROBE_START_LINE_60 = 60;
		int v_current_115_line_60 = current;
		int PROBE_END_LINE_60 = 60;
		lastChar = v_current_115_line_60;
        int PROBE_START_LINE_61 = 61;
		int f_last_char_111_line_61 = lastChar;
		int PROBE_END_LINE_61 = 61;
		return f_last_char_111_line_61;
    }

    /**
     * Returns the last character that was read as an integer (0 to 65535). This will be the last character returned by
     * any of the read methods. This will not include a character read using the {@link #lookAhead()} method. If no
     * character has been read then this will return {@link Constants#UNDEFINED}. If the end of the stream was reached
     * on the last read then this will return {@link Constants#END_OF_STREAM}.
     *
     * @return the last character that was read
     */
    int getLastChar() {
        int PROBE_START_LINE_73 = 73;
		int f_last_char_111_line_73 = lastChar;
		int PROBE_END_LINE_73 = 73;
		return f_last_char_111_line_73;
    }

    @Override
    public int read(final char[] buf, final int offset, final int length) throws IOException {
        if (length == 0) {
            return 0;
        }

        final int len = super.read(buf, offset, length);

        if (len > 0) {

            for (int i = offset; i < offset + len; i++) {
                final char ch = buf[i];
                if (ch == LF) {
                    if (CR != (i > 0 ? buf[i - 1] : lastChar)) {
                        eolCounter++;
                    }
                } else if (ch == CR) {
                    eolCounter++;
                }
            }

            lastChar = buf[offset + len - 1];

        } else if (len == -1) {
            lastChar = END_OF_STREAM;
        }

        return len;
    }

    /**
     * Calls {@link BufferedReader#readLine()} which drops the line terminator(s). This method should only be called
     * when processing a comment, otherwise information can be lost.
     * <p>
     * Increments {@link #eolCounter}
     * <p>
     * Sets {@link #lastChar} to {@link Constants#END_OF_STREAM} at EOF, otherwise to LF
     *
     * @return the line that was read, or null if reached EOF.
     */
    @Override
    public String readLine() throws IOException {
        final String line = super.readLine();

        if (line != null) {
            lastChar = LF; // needed for detecting start of line
            eolCounter++;
        } else {
            lastChar = END_OF_STREAM;
        }

        return line;
    }

    /**
     * Returns the next character in the current reader without consuming it. So the next call to {@link #read()} will
     * still return this value. Does not affect line number or last character.
     *
     * @return the next character
     *
     * @throws IOException
     *             if there is an error in reading
     */
    int lookAhead() throws IOException {
        super.mark(1);
        final int c = super.read();
        super.reset();

        return c;
    }

    /**
     * Returns the current line number
     *
     * @return the current line number
     */
    long getCurrentLineNumber() {
        // Check if we are at EOL or EOF or just starting
        if (lastChar == CR || lastChar == LF || lastChar == UNDEFINED || lastChar == END_OF_STREAM) {
            return eolCounter; // counter is accurate
        }
        return eolCounter + 1; // Allow for counter being incremented only at EOL
    }

    public boolean isClosed() {
        int PROBE_START_LINE_161 = 161;
		boolean f_closed_119_line_161 = closed;
		int PROBE_END_LINE_161 = 161;
		return f_closed_119_line_161;
    }

    /**
     * Closes the stream.
     *
     * @throws IOException
     *             If an I/O error occurs
     */
    @Override
    public void close() throws IOException {
        // Set ivars before calling super close() in case close() throws an IOException.
        closed = true;
        lastChar = END_OF_STREAM;
        super.close();
    }

}
