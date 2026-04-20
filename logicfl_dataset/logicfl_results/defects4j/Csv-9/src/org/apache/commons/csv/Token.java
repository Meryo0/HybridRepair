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

import static org.apache.commons.csv.Token.Type.INVALID;

/**
 * Internal token representation.
 * <p/>
 * It is used as contract between the lexer and the parser.
 *
 * @version $Id$
 */
final class Token {

    /** length of the initial token (content-)buffer */
    private static final int INITIAL_TOKEN_LENGTH = 50;

    enum Type {
        /** Token has no valid content, i.e. is in its initialized state. */
        INVALID,

        /** Token with content, at beginning or in the middle of a line. */
        TOKEN,

        /** Token (which can have content) when the end of file is reached. */
        EOF,

        /** Token with content when the end of a line is reached. */
        EORECORD,

        /** Token is a comment line. */
        COMMENT
    }

    int PROBE_START_LINE_51 = 52;

	org.apache.commons.csv.Token.Type f_invalid_133_line_52 = INVALID;

	int PROBE_END_LINE_51 = 52;

	/** Token type */
    Token.Type type = f_invalid_133_line_52;

    int PROBE_START_LINE_54 = 55;

	final int f_initial_token_length_157_line_55 = INITIAL_TOKEN_LENGTH;

	int PROBE_END_LINE_54 = 55;

	/** The content buffer. */
    final StringBuilder content = new StringBuilder(f_initial_token_length_157_line_55);

    /** Token ready flag: indicates a valid token with content (ready for the parser). */
    boolean isReady;

    void reset() {
        int PROBE_START_LINE_61 = 61;
		StringBuilder f_content_71_line_61 = content;
		int PROBE_END_LINE_61 = 61;
		f_content_71_line_61.setLength(0);
        int PROBE_START_LINE_62 = 62;
		org.apache.commons.csv.Token.Type f_invalid_133_line_62 = INVALID;
		int PROBE_END_LINE_62 = 62;
		type = f_invalid_133_line_62;
        isReady = false;
    }

    /**
     * Eases IDE debugging.
     *
     * @return a string helpful for debugging.
     */
    @Override
    public String toString() {
        return type.name() + " [" + content.toString() + "]";
    }
}
