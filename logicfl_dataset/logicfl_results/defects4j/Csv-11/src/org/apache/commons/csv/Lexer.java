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

import static org.apache.commons.csv.Constants.BACKSPACE;
import static org.apache.commons.csv.Constants.CR;
import static org.apache.commons.csv.Constants.END_OF_STREAM;
import static org.apache.commons.csv.Constants.FF;
import static org.apache.commons.csv.Constants.LF;
import static org.apache.commons.csv.Constants.TAB;
import static org.apache.commons.csv.Constants.UNDEFINED;
import static org.apache.commons.csv.Token.Type.COMMENT;
import static org.apache.commons.csv.Token.Type.EOF;
import static org.apache.commons.csv.Token.Type.EORECORD;
import static org.apache.commons.csv.Token.Type.INVALID;
import static org.apache.commons.csv.Token.Type.TOKEN;

import java.io.Closeable;
import java.io.IOException;

/**
 *
 *
 * @version $Id$
 */
final class Lexer implements Closeable {

    /**
     * Constant char to use for disabling comments, escapes and encapsulation. The value -2 is used because it
     * won't be confused with an EOF signal (-1), and because the Unicode value {@code FFFE} would be encoded as two
     * chars (using surrogates) and thus there should never be a collision with a real text char.
     */
    private static final char DISABLED = '\ufffe';

    private final char delimiter;
    private final char escape;
    private final char quoteChar;
    private final char commentStart;

    private final boolean ignoreSurroundingSpaces;
    private final boolean ignoreEmptyLines;

    /** The input stream */
    private final ExtendedBufferedReader reader;

    /** INTERNAL API. but ctor needs to be called dynamically by PerformanceTest class */
    Lexer(final CSVFormat format, final ExtendedBufferedReader reader) {
        int PROBE_START_LINE_63 = 63;
		org.apache.commons.csv.ExtendedBufferedReader p_reader_123_line_63 = reader;
		int PROBE_END_LINE_63 = 63;
		this.reader = p_reader_123_line_63;
        int PROBE_START_LINE_64 = 64;
		org.apache.commons.csv.CSVFormat p_format_122_line_64 = format;
		char lexer_1_expr6_line_64 = p_format_122_line_64.getDelimiter();
		int PROBE_END_LINE_64 = 64;
		this.delimiter = lexer_1_expr6_line_64;
        int PROBE_START_LINE_65 = 65;
		org.apache.commons.csv.CSVFormat p_format_122_line_65 = format;
		Character lexer_1_expr12_line_65 = p_format_122_line_65.getEscape();
		char lexer_1_expr10_line_65 = mapNullToDisabled(lexer_1_expr12_line_65);
		int PROBE_END_LINE_65 = 65;
		this.escape = lexer_1_expr10_line_65;
        int PROBE_START_LINE_66 = 66;
		org.apache.commons.csv.CSVFormat p_format_122_line_66 = format;
		Character lexer_1_expr17_line_66 = p_format_122_line_66.getQuoteChar();
		char lexer_1_expr15_line_66 = mapNullToDisabled(lexer_1_expr17_line_66);
		int PROBE_END_LINE_66 = 66;
		this.quoteChar = lexer_1_expr15_line_66;
        int PROBE_START_LINE_67 = 67;
		org.apache.commons.csv.CSVFormat p_format_122_line_67 = format;
		Character lexer_1_expr22_line_67 = p_format_122_line_67.getCommentStart();
		char lexer_1_expr20_line_67 = mapNullToDisabled(lexer_1_expr22_line_67);
		int PROBE_END_LINE_67 = 67;
		this.commentStart = lexer_1_expr20_line_67;
        int PROBE_START_LINE_68 = 68;
		org.apache.commons.csv.CSVFormat p_format_122_line_68 = format;
		boolean lexer_1_expr25_line_68 = p_format_122_line_68.getIgnoreSurroundingSpaces();
		int PROBE_END_LINE_68 = 68;
		this.ignoreSurroundingSpaces = lexer_1_expr25_line_68;
        int PROBE_START_LINE_69 = 69;
		org.apache.commons.csv.CSVFormat p_format_122_line_69 = format;
		boolean lexer_1_expr29_line_69 = p_format_122_line_69.getIgnoreEmptyLines();
		int PROBE_END_LINE_69 = 69;
		this.ignoreEmptyLines = lexer_1_expr29_line_69;
    }

    /**
     * Returns the next token.
     * <p/>
     * A token corresponds to a term, a record change or an end-of-file indicator.
     *
     * @param token
     *            an existing Token object to reuse. The caller is responsible to initialize the Token.
     * @return the next token found
     * @throws java.io.IOException
     *             on stream access error
     */
    Token nextToken(final Token token) throws IOException {

        int PROBE_START_LINE_86 = 86;
		org.apache.commons.csv.ExtendedBufferedReader f_reader_124_line_86 = reader;
		int lexer_1_expr31_line_86 = f_reader_124_line_86.getLastChar();
		int PROBE_END_LINE_86 = 86;
		// get the last read char (required for empty line detection)
        int lastChar = lexer_1_expr31_line_86;

        int PROBE_START_LINE_89 = 89;
		org.apache.commons.csv.ExtendedBufferedReader f_reader_124_line_89 = reader;
		int lexer_1_expr32_line_89 = f_reader_124_line_89.read();
		int PROBE_END_LINE_89 = 89;
		// read the next char and set eol
        int c = lexer_1_expr32_line_89;
        int PROBE_START_LINE_94 = 94;
		int v_c_133_line_94 = c;
		boolean lexer_1_expr33_line_94 = readEndOfLine(v_c_133_line_94);
		int PROBE_END_LINE_94 = 94;
		/*
         * Note: The following call will swallow LF if c == CR. But we don't need to know if the last char was CR or LF
         * - they are equivalent here.
         */
        boolean eol = lexer_1_expr33_line_94;

        int PROBE_START_LINE_97 = 110;
		boolean f_ignore_empty_lines_130_line_97 = ignoreEmptyLines;
		int PROBE_END_LINE_97 = 110;
		// empty line detection: eol AND (last char was EOL or beginning)
        if (f_ignore_empty_lines_130_line_97) {
            while (true) {
                int PROBE_START_LINE_98 = 98;
				boolean v_eol_134_line_98 = eol;
				boolean lexer_1_expr35_line_98 = true;
				if (v_eol_134_line_98) {
					int v_last_char_132_line_98 = lastChar;
					lexer_1_expr35_line_98 = isStartOfLine(v_last_char_132_line_98);
				}
				boolean lexer_1_expr34_line_98 = v_eol_134_line_98 && lexer_1_expr35_line_98;
				if (!(lexer_1_expr34_line_98)) {
					break;
				}
				int PROBE_END_LINE_98 = 98;
				// go on char ahead ...
                lastChar = c;
                c = reader.read();
                eol = readEndOfLine(c);
                // reached end of file without any content (empty line at the end)
                if (isEndOfFile(c)) {
                    token.type = EOF;
                    // don't set token.isReady here because no content
                    return token;
                }
            }
        }

        int PROBE_START_LINE_113 = 117;
		int v_last_char_132_line_113 = lastChar;
		boolean lexer_1_expr37_line_113 = isEndOfFile(v_last_char_132_line_113);
		boolean lexer_1_expr38_line_113 = false;
		if (!lexer_1_expr37_line_113) {
			int v_last_char_132_line_113_v1 = lastChar;
			boolean lexer_1_expr41_line_113 = isDelimiter(v_last_char_132_line_113_v1);
			boolean lexer_1_expr40_line_113 = !lexer_1_expr41_line_113;
			boolean lexer_1_expr42_line_113 = true;
			if (lexer_1_expr40_line_113) {
				int v_c_133_line_113 = c;
				lexer_1_expr42_line_113 = isEndOfFile(v_c_133_line_113);
			}
			boolean lexer_1_expr39_line_113 = lexer_1_expr40_line_113 && lexer_1_expr42_line_113;
			lexer_1_expr38_line_113 = (lexer_1_expr39_line_113);
		}
		boolean lexer_1_expr36_line_113 = lexer_1_expr37_line_113 || lexer_1_expr38_line_113;
		int PROBE_END_LINE_113 = 117;
		// did we reach eof during the last iteration already ? EOF
        if (lexer_1_expr36_line_113) {
            token.type = EOF;
            // don't set token.isReady here because no content
            return token;
        }

        int PROBE_START_LINE_119 = 130;
		int v_last_char_132_line_119 = lastChar;
		boolean lexer_1_expr44_line_119 = isStartOfLine(v_last_char_132_line_119);
		boolean lexer_1_expr45_line_119 = true;
		if (lexer_1_expr44_line_119) {
			int v_c_133_line_119 = c;
			lexer_1_expr45_line_119 = isCommentStart(v_c_133_line_119);
		}
		boolean lexer_1_expr43_line_119 = lexer_1_expr44_line_119 && lexer_1_expr45_line_119;
		int PROBE_END_LINE_119 = 130;
		if (lexer_1_expr43_line_119) {
            final String line = reader.readLine();
            if (line == null) {
                token.type = EOF;
                // don't set token.isReady here because no content
                return token;
            }
            final String comment = line.trim();
            token.content.append(comment);
            token.type = COMMENT;
            return token;
        }

        // important: make sure a new char gets consumed in each iteration
        while (true) {
            int PROBE_START_LINE_133 = 133;
			org.apache.commons.csv.Token p_token_131_line_133 = token;
			org.apache.commons.csv.Token.Type q_type_5_line_133 = p_token_131_line_133.type;
			org.apache.commons.csv.Token.Type f_invalid_135_line_133 = INVALID;
			boolean lexer_1_expr46_line_133 = q_type_5_line_133 == f_invalid_135_line_133;
			if (!(lexer_1_expr46_line_133)) {
				break;
			}
			int PROBE_END_LINE_133 = 133;
			int PROBE_START_LINE_135 = 140;
			boolean f_ignore_surrounding_spaces_129_line_135 = ignoreSurroundingSpaces;
			int PROBE_END_LINE_135 = 140;
			// ignore whitespaces at beginning of a token
            if (f_ignore_surrounding_spaces_129_line_135) {
                while (isWhitespace(c) && !eol) {
                    c = reader.read();
                    eol = readEndOfLine(c);
                }
            }

            int PROBE_START_LINE_143 = 162;
			int v_c_133_line_143 = c;
			boolean lexer_1_expr47_line_143 = isDelimiter(v_c_133_line_143);
			int PROBE_END_LINE_143 = 162;
			// ok, start of token reached: encapsulated, or token
            if (lexer_1_expr47_line_143) {
                int PROBE_START_LINE_145 = 145;
				org.apache.commons.csv.Token.Type f_token_92_line_145 = TOKEN;
				int PROBE_END_LINE_145 = 145;
				// empty token return TOKEN("")
                token.type = f_token_92_line_145;
            } else {
				int PROBE_START_LINE_146 = 162;
				boolean v_eol_134_line_146 = eol;
				int PROBE_END_LINE_146 = 162;
				if (v_eol_134_line_146) {
					token.type = EORECORD;
				} else {
					int PROBE_START_LINE_150 = 162;
					int v_c_133_line_150 = c;
					boolean lexer_1_expr49_line_150 = isQuoteChar(v_c_133_line_150);
					int PROBE_END_LINE_150 = 162;
					if (lexer_1_expr49_line_150) {
						parseEncapsulatedToken(token);
					} else {
						int PROBE_START_LINE_153 = 162;
						int v_c_133_line_153 = c;
						boolean lexer_1_expr50_line_153 = isEndOfFile(v_c_133_line_153);
						int PROBE_END_LINE_153 = 162;
						if (lexer_1_expr50_line_153) {
							token.type = EOF;
							token.isReady = true;
						} else {
							int PROBE_START_LINE_161 = 161;
							org.apache.commons.csv.Token p_token_131_line_161 = token;
							int v_c_133_line_161 = c;
							int PROBE_END_LINE_161 = 161;
							parseSimpleToken(p_token_131_line_161, v_c_133_line_161);
						}
					}
				}
			}
        }
        int PROBE_START_LINE_164 = 164;
		org.apache.commons.csv.Token p_token_131_line_164 = token;
		int PROBE_END_LINE_164 = 164;
		return p_token_131_line_164;
    }

    /**
     * Parses a simple token.
     * <p/>
     * Simple token are tokens which are not surrounded by encapsulators. A simple token might contain escaped
     * delimiters (as \, or \;). The token is finished when one of the following conditions become true:
     * <ul>
     * <li>end of line has been reached (EORECORD)</li>
     * <li>end of stream has been reached (EOF)</li>
     * <li>an unescaped delimiter has been reached (TOKEN)</li>
     * </ul>
     *
     * @param token
     *            the current token
     * @param ch
     *            the current character
     * @return the filled token
     * @throws IOException
     *             on stream access error
     */
    private Token parseSimpleToken(final Token token, int ch) throws IOException {
        // Faster to use while(true)+break than while(token.type == INVALID)
        while (true) {
            int PROBE_START_LINE_189 = 210;
			int p_ch_137_line_189 = ch;
			boolean lexer_1_expr52_line_189 = readEndOfLine(p_ch_137_line_189);
			int PROBE_END_LINE_189 = 210;
			if (lexer_1_expr52_line_189) {
                int PROBE_START_LINE_190 = 190;
				org.apache.commons.csv.Token.Type f_eorecord_138_line_190 = EORECORD;
				int PROBE_END_LINE_190 = 190;
				token.type = f_eorecord_138_line_190;
                break;
            } else {
				int PROBE_START_LINE_192 = 210;
				int p_ch_137_line_192 = ch;
				boolean lexer_1_expr54_line_192 = isEndOfFile(p_ch_137_line_192);
				int PROBE_END_LINE_192 = 210;
				if (lexer_1_expr54_line_192) {
					token.type = EOF;
					token.isReady = true;
					break;
				} else {
					int PROBE_START_LINE_196 = 210;
					int p_ch_137_line_196 = ch;
					boolean lexer_1_expr55_line_196 = isDelimiter(p_ch_137_line_196);
					int PROBE_END_LINE_196 = 210;
					if (lexer_1_expr55_line_196) {
						int PROBE_START_LINE_197 = 197;
						org.apache.commons.csv.Token.Type f_token_92_line_197 = TOKEN;
						int PROBE_END_LINE_197 = 197;
						token.type = f_token_92_line_197;
						break;
					} else {
						int PROBE_START_LINE_199 = 210;
						int p_ch_137_line_199 = ch;
						boolean lexer_1_expr57_line_199 = isEscape(p_ch_137_line_199);
						int PROBE_END_LINE_199 = 210;
						if (lexer_1_expr57_line_199) {
							final int unescaped = readEscape();
							if (unescaped == Constants.END_OF_STREAM) {
								token.content.append((char) ch).append((char) reader.getLastChar());
							} else {
								token.content.append((char) unescaped);
							}
							ch = reader.read();
						} else {
							int PROBE_START_LINE_208 = 208;
							org.apache.commons.csv.Token p_token_136_line_208 = token;
							StringBuilder q_content_7_line_208 = p_token_136_line_208.content;
							int p_ch_137_line_208 = ch;
							int PROBE_END_LINE_208 = 208;
							q_content_7_line_208.append((char) p_ch_137_line_208);
							int PROBE_START_LINE_209 = 209;
							org.apache.commons.csv.ExtendedBufferedReader f_reader_124_line_209 = reader;
							int lexer_1_expr61_line_209 = f_reader_124_line_209.read();
							int PROBE_END_LINE_209 = 209;
							ch = lexer_1_expr61_line_209;
						}
					}
				}
			}
        }

        int PROBE_START_LINE_213 = 215;
		boolean f_ignore_surrounding_spaces_129_line_213 = ignoreSurroundingSpaces;
		int PROBE_END_LINE_213 = 215;
		if (f_ignore_surrounding_spaces_129_line_213) {
            trimTrailingSpaces(token.content);
        }

        int PROBE_START_LINE_217 = 217;
		org.apache.commons.csv.Token p_token_136_line_217 = token;
		int PROBE_END_LINE_217 = 217;
		return p_token_136_line_217;
    }

    /**
     * Parses an encapsulated token.
     * <p/>
     * Encapsulated tokens are surrounded by the given encapsulating-string. The encapsulator itself might be included
     * in the token using a doubling syntax (as "", '') or using escaping (as in \", \'). Whitespaces before and after
     * an encapsulated token are ignored. The token is finished when one of the following conditions become true:
     * <ul>
     * <li>an unescaped encapsulator has been reached, and is followed by optional whitespace then:</li>
     * <ul>
     * <li>delimiter (TOKEN)</li>
     * <li>end of line (EORECORD)</li>
     * </ul>
     * <li>end of stream has been reached (EOF)</li> </ul>
     *
     * @param token
     *            the current token
     * @return a valid token object
     * @throws IOException
     *             on invalid state: EOF before closing encapsulator or invalid character before delimiter or EOL
     */
    private Token parseEncapsulatedToken(final Token token) throws IOException {
        // save current line number in case needed for IOE
        final long startLineNumber = getCurrentLineNumber();
        int c;
        while (true) {
            c = reader.read();

            if (isEscape(c)) {
                final int unescaped = readEscape();
                if (unescaped == Constants.END_OF_STREAM) { // unexpected char after escape
                    token.content.append((char) c).append((char) reader.getLastChar());
                } else {
                    token.content.append((char) unescaped);
                }
            } else if (isQuoteChar(c)) {
                if (isQuoteChar(reader.lookAhead())) {
                    // double or escaped encapsulator -> add single encapsulator to token
                    c = reader.read();
                    token.content.append((char) c);
                } else {
                    // token finish mark (encapsulator) reached: ignore whitespace till delimiter
                    while (true) {
                        c = reader.read();
                        if (isDelimiter(c)) {
                            token.type = TOKEN;
                            return token;
                        } else if (isEndOfFile(c)) {
                            token.type = EOF;
                            token.isReady = true; // There is data at EOF
                            return token;
                        } else if (readEndOfLine(c)) {
                            token.type = EORECORD;
                            return token;
                        } else if (!isWhitespace(c)) {
                            // error invalid char between token and next delimiter
                            throw new IOException("(line " + getCurrentLineNumber() +
                                    ") invalid char between encapsulated token and delimiter");
                        }
                    }
                }
            } else if (isEndOfFile(c)) {
                // error condition (end of file before end of token)
                throw new IOException("(startline " + startLineNumber +
                        ") EOF reached before encapsulated token finished");
            } else {
                // consume character
                token.content.append((char) c);
            }
        }
    }

    private char mapNullToDisabled(final Character c) {
        int PROBE_START_LINE_292 = 292;
		Character p_c_140_line_292 = c;
		boolean lexer_1_expr63_line_292 = p_c_140_line_292 == null;
		char f_disabled_141_line_292 = ' ';
		char lexer_1_expr64_line_292 = ' ';
		if (lexer_1_expr63_line_292) {
			f_disabled_141_line_292 = DISABLED;
		} else {
			Character p_c_140_line_292_v1 = c;
			lexer_1_expr64_line_292 = p_c_140_line_292_v1.charValue();
		}
		char lexer_1_expr62_line_292 = lexer_1_expr63_line_292 ? f_disabled_141_line_292 : lexer_1_expr64_line_292;
		int PROBE_END_LINE_292 = 292;
		return lexer_1_expr62_line_292;
    }

    /**
     * Returns the current line number
     *
     * @return the current line number
     */
    long getCurrentLineNumber() {
        return reader.getCurrentLineNumber();
    }

    // TODO escape handling needs more work
    /**
     * Handle an escape sequence.
     * The current character must be the escape character.
     * On return, the next character is available by calling {@link ExtendedBufferedReader#getLastChar()}
     * on the input stream.
     *
     * @return the unescaped character (as an int) or {@link Constants#END_OF_STREAM} if char following the escape is
     *      invalid.
     * @throws IOException if there is a problem reading the stream or the end of stream is detected:
     *      the escape character is not allowed at end of strem
     */
    int readEscape() throws IOException {
        // the escape char has just been read (normally a backslash)
        final int ch = reader.read();
        switch (ch) {
        case 'r':
            return CR;
        case 'n':
            return LF;
        case 't':
            return TAB;
        case 'b':
            return BACKSPACE;
        case 'f':
            return FF;
        case CR:
        case LF:
        case FF: // TODO is this correct?
        case TAB: // TODO is this correct? Do tabs need to be escaped?
        case BACKSPACE: // TODO is this correct?
            return ch;
        case END_OF_STREAM:
            throw new IOException("EOF whilst processing escape sequence");
        default:
            // Now check for meta-characters
            if (isMetaChar(ch)) {
                return ch;
            }
            // indicate unexpected char - available from in.getLastChar()
            return END_OF_STREAM;
        }
    }

    void trimTrailingSpaces(final StringBuilder buffer) {
        int length = buffer.length();
        while (length > 0 && Character.isWhitespace(buffer.charAt(length - 1))) {
            length = length - 1;
        }
        if (length != buffer.length()) {
            buffer.setLength(length);
        }
    }

    /**
     * Greedily accepts \n, \r and \r\n This checker consumes silently the second control-character...
     *
     * @return true if the given or next character is a line-terminator
     */
    boolean readEndOfLine(int ch) throws IOException {
        int PROBE_START_LINE_365 = 368;
		int p_ch_143_line_365 = ch;
		char f_cr_13_line_365 = CR;
		boolean lexer_1_expr66_line_365 = p_ch_143_line_365 == f_cr_13_line_365;
		boolean lexer_1_expr67_line_365 = true;
		if (lexer_1_expr66_line_365) {
			org.apache.commons.csv.ExtendedBufferedReader f_reader_124_line_365 = reader;
			int lexer_1_expr68_line_365 = f_reader_124_line_365.lookAhead();
			char f_lf_12_line_365 = LF;
			lexer_1_expr67_line_365 = lexer_1_expr68_line_365 == f_lf_12_line_365;
		}
		boolean lexer_1_expr65_line_365 = lexer_1_expr66_line_365 && lexer_1_expr67_line_365;
		int PROBE_END_LINE_365 = 368;
		// check if we have \r\n...
        if (lexer_1_expr65_line_365) {
            // note: does not change ch outside of this method!
            ch = reader.read();
        }
        int PROBE_START_LINE_369 = 369;
		int p_ch_143_line_369 = ch;
		char f_lf_12_line_369 = LF;
		boolean lexer_1_expr70_line_369 = p_ch_143_line_369 == f_lf_12_line_369;
		boolean lexer_1_expr71_line_369 = false;
		if (!lexer_1_expr70_line_369) {
			int p_ch_143_line_369_v1 = ch;
			char f_cr_13_line_369 = CR;
			lexer_1_expr71_line_369 = p_ch_143_line_369_v1 == f_cr_13_line_369;
		}
		boolean lexer_1_expr69_line_369 = lexer_1_expr70_line_369 || lexer_1_expr71_line_369;
		int PROBE_END_LINE_369 = 369;
		return lexer_1_expr69_line_369;
    }

    boolean isClosed() {
        return reader.isClosed();
    }

    /**
     * @return true if the given char is a whitespace character
     */
    boolean isWhitespace(final int ch) {
        return !isDelimiter(ch) && Character.isWhitespace((char) ch);
    }

    /**
     * Checks if the current character represents the start of a line: a CR, LF or is at the start of the file.
     *
     * @param ch the character to check
     * @return true if the character is at the start of a line.
     */
    boolean isStartOfLine(final int ch) {
        int PROBE_START_LINE_390 = 390;
		int p_ch_145_line_390 = ch;
		char f_lf_12_line_390 = LF;
		boolean lexer_1_expr74_line_390 = p_ch_145_line_390 == f_lf_12_line_390;
		boolean lexer_1_expr75_line_390 = false;
		if (!lexer_1_expr74_line_390) {
			int p_ch_145_line_390_v1 = ch;
			char f_cr_13_line_390 = CR;
			lexer_1_expr75_line_390 = p_ch_145_line_390_v1 == f_cr_13_line_390;
		}
		boolean lexer_1_expr73_line_390 = lexer_1_expr74_line_390 || lexer_1_expr75_line_390;
		boolean lexer_1_expr76_line_390 = false;
		if (!lexer_1_expr73_line_390) {
			int p_ch_145_line_390_v2 = ch;
			int f_undefined_115_line_390 = UNDEFINED;
			lexer_1_expr76_line_390 = p_ch_145_line_390_v2 == f_undefined_115_line_390;
		}
		boolean lexer_1_expr72_line_390 = lexer_1_expr73_line_390 || lexer_1_expr76_line_390;
		int PROBE_END_LINE_390 = 390;
		return lexer_1_expr72_line_390;
    }

    /**
     * @return true if the given character indicates end of file
     */
    boolean isEndOfFile(final int ch) {
        int PROBE_START_LINE_397 = 397;
		int p_ch_146_line_397 = ch;
		int f_end_of_stream_147_line_397 = END_OF_STREAM;
		boolean lexer_1_expr77_line_397 = p_ch_146_line_397 == f_end_of_stream_147_line_397;
		int PROBE_END_LINE_397 = 397;
		return lexer_1_expr77_line_397;
    }

    boolean isDelimiter(final int ch) {
        int PROBE_START_LINE_401 = 401;
		int p_ch_148_line_401 = ch;
		char f_delimiter_125_line_401 = delimiter;
		boolean lexer_1_expr78_line_401 = p_ch_148_line_401 == f_delimiter_125_line_401;
		int PROBE_END_LINE_401 = 401;
		return lexer_1_expr78_line_401;
    }

    boolean isEscape(final int ch) {
        int PROBE_START_LINE_405 = 405;
		int p_ch_149_line_405 = ch;
		char f_escape_126_line_405 = escape;
		boolean lexer_1_expr79_line_405 = p_ch_149_line_405 == f_escape_126_line_405;
		int PROBE_END_LINE_405 = 405;
		return lexer_1_expr79_line_405;
    }

    boolean isQuoteChar(final int ch) {
        int PROBE_START_LINE_409 = 409;
		int p_ch_150_line_409 = ch;
		char f_quote_char_127_line_409 = quoteChar;
		boolean lexer_1_expr80_line_409 = p_ch_150_line_409 == f_quote_char_127_line_409;
		int PROBE_END_LINE_409 = 409;
		return lexer_1_expr80_line_409;
    }

    boolean isCommentStart(final int ch) {
        int PROBE_START_LINE_413 = 413;
		int p_ch_151_line_413 = ch;
		char f_comment_start_128_line_413 = commentStart;
		boolean lexer_1_expr81_line_413 = p_ch_151_line_413 == f_comment_start_128_line_413;
		int PROBE_END_LINE_413 = 413;
		return lexer_1_expr81_line_413;
    }

    private boolean isMetaChar(final int ch) {
        return ch == delimiter ||
               ch == escape ||
               ch == quoteChar ||
               ch == commentStart;
    }

    /**
     * Closes resources.
     *
     * @throws IOException
     *             If an I/O error occurs
     */
    public void close() throws IOException {
        reader.close();
    }
}
