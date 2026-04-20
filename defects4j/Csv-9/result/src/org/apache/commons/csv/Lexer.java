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

import java.io.IOException;

/**
 *
 *
 * @version $Id$
 */
final class Lexer {

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
        int PROBE_START_LINE_62 = 62;
		org.apache.commons.csv.ExtendedBufferedReader p_reader_121_line_62 = reader;
		int PROBE_END_LINE_62 = 62;
		this.reader = p_reader_121_line_62;
        int PROBE_START_LINE_63 = 63;
		org.apache.commons.csv.CSVFormat p_format_120_line_63 = format;
		char lexer_1_expr6_line_63 = p_format_120_line_63.getDelimiter();
		int PROBE_END_LINE_63 = 63;
		this.delimiter = lexer_1_expr6_line_63;
        int PROBE_START_LINE_64 = 64;
		org.apache.commons.csv.CSVFormat p_format_120_line_64 = format;
		Character lexer_1_expr12_line_64 = p_format_120_line_64.getEscape();
		char lexer_1_expr10_line_64 = mapNullToDisabled(lexer_1_expr12_line_64);
		int PROBE_END_LINE_64 = 64;
		this.escape = lexer_1_expr10_line_64;
        int PROBE_START_LINE_65 = 65;
		org.apache.commons.csv.CSVFormat p_format_120_line_65 = format;
		Character lexer_1_expr17_line_65 = p_format_120_line_65.getQuoteChar();
		char lexer_1_expr15_line_65 = mapNullToDisabled(lexer_1_expr17_line_65);
		int PROBE_END_LINE_65 = 65;
		this.quoteChar = lexer_1_expr15_line_65;
        int PROBE_START_LINE_66 = 66;
		org.apache.commons.csv.CSVFormat p_format_120_line_66 = format;
		Character lexer_1_expr22_line_66 = p_format_120_line_66.getCommentStart();
		char lexer_1_expr20_line_66 = mapNullToDisabled(lexer_1_expr22_line_66);
		int PROBE_END_LINE_66 = 66;
		this.commentStart = lexer_1_expr20_line_66;
        int PROBE_START_LINE_67 = 67;
		org.apache.commons.csv.CSVFormat p_format_120_line_67 = format;
		boolean lexer_1_expr25_line_67 = p_format_120_line_67.getIgnoreSurroundingSpaces();
		int PROBE_END_LINE_67 = 67;
		this.ignoreSurroundingSpaces = lexer_1_expr25_line_67;
        int PROBE_START_LINE_68 = 68;
		org.apache.commons.csv.CSVFormat p_format_120_line_68 = format;
		boolean lexer_1_expr29_line_68 = p_format_120_line_68.getIgnoreEmptyLines();
		int PROBE_END_LINE_68 = 68;
		this.ignoreEmptyLines = lexer_1_expr29_line_68;
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

        int PROBE_START_LINE_85 = 85;
		org.apache.commons.csv.ExtendedBufferedReader f_reader_122_line_85 = reader;
		int lexer_1_expr31_line_85 = f_reader_122_line_85.getLastChar();
		int PROBE_END_LINE_85 = 85;
		// get the last read char (required for empty line detection)
        int lastChar = lexer_1_expr31_line_85;

        int PROBE_START_LINE_88 = 88;
		org.apache.commons.csv.ExtendedBufferedReader f_reader_122_line_88 = reader;
		int lexer_1_expr32_line_88 = f_reader_122_line_88.read();
		int PROBE_END_LINE_88 = 88;
		// read the next char and set eol
        int c = lexer_1_expr32_line_88;
        int PROBE_START_LINE_93 = 93;
		int v_c_131_line_93 = c;
		boolean lexer_1_expr33_line_93 = readEndOfLine(v_c_131_line_93);
		int PROBE_END_LINE_93 = 93;
		/*
         * Note: The following call will swallow LF if c == CR. But we don't need to know if the last char was CR or LF
         * - they are equivalent here.
         */
        boolean eol = lexer_1_expr33_line_93;

        int PROBE_START_LINE_96 = 109;
		boolean f_ignore_empty_lines_128_line_96 = ignoreEmptyLines;
		int PROBE_END_LINE_96 = 109;
		// empty line detection: eol AND (last char was EOL or beginning)
        if (f_ignore_empty_lines_128_line_96) {
            while (eol && isStartOfLine(lastChar)) {
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

        int PROBE_START_LINE_112 = 116;
		int v_last_char_130_line_112 = lastChar;
		boolean lexer_1_expr35_line_112 = isEndOfFile(v_last_char_130_line_112);
		boolean lexer_1_expr36_line_112 = false;
		if (!lexer_1_expr35_line_112) {
			int v_last_char_130_line_112_v1 = lastChar;
			boolean lexer_1_expr39_line_112 = isDelimiter(v_last_char_130_line_112_v1);
			boolean lexer_1_expr38_line_112 = !lexer_1_expr39_line_112;
			boolean lexer_1_expr40_line_112 = true;
			if (lexer_1_expr38_line_112) {
				int v_c_131_line_112 = c;
				lexer_1_expr40_line_112 = isEndOfFile(v_c_131_line_112);
			}
			boolean lexer_1_expr37_line_112 = lexer_1_expr38_line_112 && lexer_1_expr40_line_112;
			lexer_1_expr36_line_112 = (lexer_1_expr37_line_112);
		}
		boolean lexer_1_expr34_line_112 = lexer_1_expr35_line_112 || lexer_1_expr36_line_112;
		int PROBE_END_LINE_112 = 116;
		// did we reach eof during the last iteration already ? EOF
        if (lexer_1_expr34_line_112) {
            token.type = EOF;
            // don't set token.isReady here because no content
            return token;
        }

        int PROBE_START_LINE_118 = 129;
		int v_last_char_130_line_118 = lastChar;
		boolean lexer_1_expr42_line_118 = isStartOfLine(v_last_char_130_line_118);
		boolean lexer_1_expr43_line_118 = true;
		if (lexer_1_expr42_line_118) {
			int v_c_131_line_118 = c;
			lexer_1_expr43_line_118 = isCommentStart(v_c_131_line_118);
		}
		boolean lexer_1_expr41_line_118 = lexer_1_expr42_line_118 && lexer_1_expr43_line_118;
		int PROBE_END_LINE_118 = 129;
		if (lexer_1_expr41_line_118) {
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
            int PROBE_START_LINE_132 = 132;
			org.apache.commons.csv.Token p_token_129_line_132 = token;
			org.apache.commons.csv.Token.Type q_type_3_line_132 = p_token_129_line_132.type;
			org.apache.commons.csv.Token.Type f_invalid_133_line_132 = INVALID;
			boolean lexer_1_expr44_line_132 = q_type_3_line_132 == f_invalid_133_line_132;
			if (!(lexer_1_expr44_line_132)) {
				break;
			}
			int PROBE_END_LINE_132 = 132;
			int PROBE_START_LINE_134 = 139;
			boolean f_ignore_surrounding_spaces_127_line_134 = ignoreSurroundingSpaces;
			int PROBE_END_LINE_134 = 139;
			// ignore whitespaces at beginning of a token
            if (f_ignore_surrounding_spaces_127_line_134) {
                while (isWhitespace(c) && !eol) {
                    c = reader.read();
                    eol = readEndOfLine(c);
                }
            }

            int PROBE_START_LINE_142 = 161;
			int v_c_131_line_142 = c;
			boolean lexer_1_expr45_line_142 = isDelimiter(v_c_131_line_142);
			int PROBE_END_LINE_142 = 161;
			// ok, start of token reached: encapsulated, or token
            if (lexer_1_expr45_line_142) {
                // empty token return TOKEN("")
                token.type = TOKEN;
            } else {
				int PROBE_START_LINE_145 = 161;
				boolean v_eol_132_line_145 = eol;
				int PROBE_END_LINE_145 = 161;
				if (v_eol_132_line_145) {
					token.type = EORECORD;
				} else {
					int PROBE_START_LINE_149 = 161;
					int v_c_131_line_149 = c;
					boolean lexer_1_expr46_line_149 = isQuoteChar(v_c_131_line_149);
					int PROBE_END_LINE_149 = 161;
					if (lexer_1_expr46_line_149) {
						parseEncapsulatedToken(token);
					} else {
						int PROBE_START_LINE_152 = 161;
						int v_c_131_line_152 = c;
						boolean lexer_1_expr47_line_152 = isEndOfFile(v_c_131_line_152);
						int PROBE_END_LINE_152 = 161;
						if (lexer_1_expr47_line_152) {
							token.type = EOF;
							token.isReady = true;
						} else {
							int PROBE_START_LINE_160 = 160;
							org.apache.commons.csv.Token p_token_129_line_160 = token;
							int v_c_131_line_160 = c;
							int PROBE_END_LINE_160 = 160;
							parseSimpleToken(p_token_129_line_160, v_c_131_line_160);
						}
					}
				}
			}
        }
        int PROBE_START_LINE_163 = 163;
		org.apache.commons.csv.Token p_token_129_line_163 = token;
		int PROBE_END_LINE_163 = 163;
		return p_token_129_line_163;
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
            int PROBE_START_LINE_188 = 209;
			int p_ch_135_line_188 = ch;
			boolean lexer_1_expr49_line_188 = readEndOfLine(p_ch_135_line_188);
			int PROBE_END_LINE_188 = 209;
			if (lexer_1_expr49_line_188) {
                token.type = EORECORD;
                break;
            } else {
				int PROBE_START_LINE_191 = 209;
				int p_ch_135_line_191 = ch;
				boolean lexer_1_expr50_line_191 = isEndOfFile(p_ch_135_line_191);
				int PROBE_END_LINE_191 = 209;
				if (lexer_1_expr50_line_191) {
					int PROBE_START_LINE_192 = 192;
					org.apache.commons.csv.Token.Type f_eof_136_line_192 = EOF;
					int PROBE_END_LINE_192 = 192;
					token.type = f_eof_136_line_192;
					token.isReady = true;
					break;
				} else {
					int PROBE_START_LINE_195 = 209;
					int p_ch_135_line_195 = ch;
					boolean lexer_1_expr53_line_195 = isDelimiter(p_ch_135_line_195);
					int PROBE_END_LINE_195 = 209;
					if (lexer_1_expr53_line_195) {
						int PROBE_START_LINE_196 = 196;
						org.apache.commons.csv.Token.Type f_token_82_line_196 = TOKEN;
						int PROBE_END_LINE_196 = 196;
						token.type = f_token_82_line_196;
						break;
					} else {
						int PROBE_START_LINE_198 = 209;
						int p_ch_135_line_198 = ch;
						boolean lexer_1_expr55_line_198 = isEscape(p_ch_135_line_198);
						int PROBE_END_LINE_198 = 209;
						if (lexer_1_expr55_line_198) {
							final int unescaped = readEscape();
							if (unescaped == Constants.END_OF_STREAM) {
								token.content.append((char) ch).append((char) reader.getLastChar());
							} else {
								token.content.append((char) unescaped);
							}
							ch = reader.read();
						} else {
							int PROBE_START_LINE_207 = 207;
							org.apache.commons.csv.Token p_token_134_line_207 = token;
							StringBuilder q_content_6_line_207 = p_token_134_line_207.content;
							int p_ch_135_line_207 = ch;
							int PROBE_END_LINE_207 = 207;
							q_content_6_line_207.append((char) p_ch_135_line_207);
							int PROBE_START_LINE_208 = 208;
							org.apache.commons.csv.ExtendedBufferedReader f_reader_122_line_208 = reader;
							int lexer_1_expr59_line_208 = f_reader_122_line_208.read();
							int PROBE_END_LINE_208 = 208;
							ch = lexer_1_expr59_line_208;
						}
					}
				}
			}
        }

        int PROBE_START_LINE_212 = 214;
		boolean f_ignore_surrounding_spaces_127_line_212 = ignoreSurroundingSpaces;
		int PROBE_END_LINE_212 = 214;
		if (f_ignore_surrounding_spaces_127_line_212) {
            trimTrailingSpaces(token.content);
        }

        int PROBE_START_LINE_216 = 216;
		org.apache.commons.csv.Token p_token_134_line_216 = token;
		int PROBE_END_LINE_216 = 216;
		return p_token_134_line_216;
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
        int PROBE_START_LINE_291 = 291;
		Character p_c_138_line_291 = c;
		boolean lexer_1_expr61_line_291 = p_c_138_line_291 == null;
		char f_disabled_139_line_291 = ' ';
		char lexer_1_expr62_line_291 = ' ';
		if (lexer_1_expr61_line_291) {
			f_disabled_139_line_291 = DISABLED;
		} else {
			Character p_c_138_line_291_v1 = c;
			lexer_1_expr62_line_291 = p_c_138_line_291_v1.charValue();
		}
		char lexer_1_expr60_line_291 = lexer_1_expr61_line_291 ? f_disabled_139_line_291 : lexer_1_expr62_line_291;
		int PROBE_END_LINE_291 = 291;
		return lexer_1_expr60_line_291;
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
        int PROBE_START_LINE_364 = 367;
		int p_ch_141_line_364 = ch;
		char f_cr_13_line_364 = CR;
		boolean lexer_1_expr64_line_364 = p_ch_141_line_364 == f_cr_13_line_364;
		boolean lexer_1_expr65_line_364 = true;
		if (lexer_1_expr64_line_364) {
			org.apache.commons.csv.ExtendedBufferedReader f_reader_122_line_364 = reader;
			int lexer_1_expr66_line_364 = f_reader_122_line_364.lookAhead();
			char f_lf_12_line_364 = LF;
			lexer_1_expr65_line_364 = lexer_1_expr66_line_364 == f_lf_12_line_364;
		}
		boolean lexer_1_expr63_line_364 = lexer_1_expr64_line_364 && lexer_1_expr65_line_364;
		int PROBE_END_LINE_364 = 367;
		// check if we have \r\n...
        if (lexer_1_expr63_line_364) {
            // note: does not change ch outside of this method!
            ch = reader.read();
        }
        int PROBE_START_LINE_368 = 368;
		int p_ch_141_line_368 = ch;
		char f_lf_12_line_368 = LF;
		boolean lexer_1_expr68_line_368 = p_ch_141_line_368 == f_lf_12_line_368;
		boolean lexer_1_expr69_line_368 = false;
		if (!lexer_1_expr68_line_368) {
			int p_ch_141_line_368_v1 = ch;
			char f_cr_13_line_368 = CR;
			lexer_1_expr69_line_368 = p_ch_141_line_368_v1 == f_cr_13_line_368;
		}
		boolean lexer_1_expr67_line_368 = lexer_1_expr68_line_368 || lexer_1_expr69_line_368;
		int PROBE_END_LINE_368 = 368;
		return lexer_1_expr67_line_368;
    }

    boolean isClosed() {
        int PROBE_START_LINE_372 = 372;
		org.apache.commons.csv.ExtendedBufferedReader f_reader_122_line_372 = reader;
		boolean lexer_1_expr70_line_372 = f_reader_122_line_372.isClosed();
		int PROBE_END_LINE_372 = 372;
		return lexer_1_expr70_line_372;
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
        int PROBE_START_LINE_389 = 389;
		int p_ch_143_line_389 = ch;
		char f_lf_12_line_389 = LF;
		boolean lexer_1_expr73_line_389 = p_ch_143_line_389 == f_lf_12_line_389;
		boolean lexer_1_expr74_line_389 = false;
		if (!lexer_1_expr73_line_389) {
			int p_ch_143_line_389_v1 = ch;
			char f_cr_13_line_389 = CR;
			lexer_1_expr74_line_389 = p_ch_143_line_389_v1 == f_cr_13_line_389;
		}
		boolean lexer_1_expr72_line_389 = lexer_1_expr73_line_389 || lexer_1_expr74_line_389;
		boolean lexer_1_expr75_line_389 = false;
		if (!lexer_1_expr72_line_389) {
			int p_ch_143_line_389_v2 = ch;
			int f_undefined_112_line_389 = UNDEFINED;
			lexer_1_expr75_line_389 = p_ch_143_line_389_v2 == f_undefined_112_line_389;
		}
		boolean lexer_1_expr71_line_389 = lexer_1_expr72_line_389 || lexer_1_expr75_line_389;
		int PROBE_END_LINE_389 = 389;
		return lexer_1_expr71_line_389;
    }

    /**
     * @return true if the given character indicates end of file
     */
    boolean isEndOfFile(final int ch) {
        int PROBE_START_LINE_396 = 396;
		int p_ch_144_line_396 = ch;
		int f_end_of_stream_145_line_396 = END_OF_STREAM;
		boolean lexer_1_expr76_line_396 = p_ch_144_line_396 == f_end_of_stream_145_line_396;
		int PROBE_END_LINE_396 = 396;
		return lexer_1_expr76_line_396;
    }

    boolean isDelimiter(final int ch) {
        int PROBE_START_LINE_400 = 400;
		int p_ch_146_line_400 = ch;
		char f_delimiter_123_line_400 = delimiter;
		boolean lexer_1_expr77_line_400 = p_ch_146_line_400 == f_delimiter_123_line_400;
		int PROBE_END_LINE_400 = 400;
		return lexer_1_expr77_line_400;
    }

    boolean isEscape(final int ch) {
        int PROBE_START_LINE_404 = 404;
		int p_ch_147_line_404 = ch;
		char f_escape_124_line_404 = escape;
		boolean lexer_1_expr78_line_404 = p_ch_147_line_404 == f_escape_124_line_404;
		int PROBE_END_LINE_404 = 404;
		return lexer_1_expr78_line_404;
    }

    boolean isQuoteChar(final int ch) {
        int PROBE_START_LINE_408 = 408;
		int p_ch_148_line_408 = ch;
		char f_quote_char_125_line_408 = quoteChar;
		boolean lexer_1_expr79_line_408 = p_ch_148_line_408 == f_quote_char_125_line_408;
		int PROBE_END_LINE_408 = 408;
		return lexer_1_expr79_line_408;
    }

    boolean isCommentStart(final int ch) {
        int PROBE_START_LINE_412 = 412;
		int p_ch_149_line_412 = ch;
		char f_comment_start_126_line_412 = commentStart;
		boolean lexer_1_expr80_line_412 = p_ch_149_line_412 == f_comment_start_126_line_412;
		int PROBE_END_LINE_412 = 412;
		return lexer_1_expr80_line_412;
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
    void close() throws IOException {
        reader.close();
    }
}
