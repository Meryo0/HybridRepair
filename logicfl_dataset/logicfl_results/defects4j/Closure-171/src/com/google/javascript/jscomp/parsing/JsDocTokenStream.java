/*
 * Copyright 2009 The Closure Compiler Authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.javascript.jscomp.parsing;

import com.google.common.base.Preconditions;
import com.google.javascript.rhino.head.ScriptRuntime;

/**
 * This class implements the scanner for JsDoc strings.
 *
 * It is heavily based on Rhino's TokenStream.
 *
 */
class JsDocTokenStream {
  /*
   * For chars - because we need something out-of-range
   * to check.  (And checking EOF by exception is annoying.)
   * Note distinction from EOF token type!
   */
  private static final int EOF_CHAR = -1;

  JsDocTokenStream(String sourceString) {
    this(sourceString, 0);
  }

  JsDocTokenStream(String sourceString, int lineno) {
    this(sourceString, lineno, 0);
  }

  JsDocTokenStream(String sourceString, int lineno, int initCharno) {
    int PROBE_START_LINE_45 = 45;
	String p_source_string_4495_line_45 = sourceString;
	int PROBE_END_LINE_45 = 45;
	Preconditions.checkNotNull(p_source_string_4495_line_45);
    int PROBE_START_LINE_46 = 46;
	int p_lineno_4496_line_46 = lineno;
	int PROBE_END_LINE_46 = 46;
	this.lineno = p_lineno_4496_line_46;
    int PROBE_START_LINE_47 = 47;
	String p_source_string_4495_line_47 = sourceString;
	int PROBE_END_LINE_47 = 47;
	this.sourceString = p_source_string_4495_line_47;
    int PROBE_START_LINE_48 = 48;
	String p_source_string_4495_line_48 = sourceString;
	int js_doc_token_stream_1_expr10_line_48 = p_source_string_4495_line_48.length();
	int PROBE_END_LINE_48 = 48;
	this.sourceEnd = js_doc_token_stream_1_expr10_line_48;
    this.sourceCursor = this.cursor = 0;
    int PROBE_START_LINE_50 = 50;
	int p_lineno_4496_line_50 = lineno;
	int PROBE_END_LINE_50 = 50;
	this.initLineno = p_lineno_4496_line_50;
    int PROBE_START_LINE_51 = 51;
	int p_init_charno_4497_line_51 = initCharno;
	int PROBE_END_LINE_51 = 51;
	this.initCharno = p_init_charno_4497_line_51;
  }

  /**
   * Tokenizes JSDoc comments.
   */
  @SuppressWarnings("fallthrough")
  final JsDocToken getJsDocToken() {
    int c = 0;
    stringBufferTop = 0;
    for (;;) {
      // eat white spaces
      for (;;) {
        int PROBE_START_LINE_64 = 64;
		int js_doc_token_stream_1_expr26_line_64 = -1;
		int PROBE_END_LINE_64 = 64;
		charno = js_doc_token_stream_1_expr26_line_64;
        int PROBE_START_LINE_65 = 65;
		int js_doc_token_stream_1_expr28_line_65 = getChar();
		int PROBE_END_LINE_65 = 65;
		c = js_doc_token_stream_1_expr28_line_65;
        int PROBE_START_LINE_66 = 72;
		int v_c_4507_line_66 = c;
		int f_eof_char_4508_line_66 = EOF_CHAR;
		boolean js_doc_token_stream_1_expr29_line_66 = v_c_4507_line_66 == f_eof_char_4508_line_66;
		int PROBE_END_LINE_66 = 72;
		if (js_doc_token_stream_1_expr29_line_66) {
          return JsDocToken.EOF;
        } else {
			int PROBE_START_LINE_68 = 72;
			int v_c_4507_line_68 = c;
			boolean js_doc_token_stream_1_expr30_line_68 = v_c_4507_line_68 == '\n';
			int PROBE_END_LINE_68 = 72;
			if (js_doc_token_stream_1_expr30_line_68) {
				return JsDocToken.EOL;
			} else {
				int PROBE_START_LINE_70 = 72;
				int v_c_4507_line_70 = c;
				boolean js_doc_token_stream_1_expr32_line_70 = isJSSpace(v_c_4507_line_70);
				boolean js_doc_token_stream_1_expr31_line_70 = !js_doc_token_stream_1_expr32_line_70;
				int PROBE_END_LINE_70 = 72;
				if (js_doc_token_stream_1_expr31_line_70) {
					break;
				}
			}
		}
      }

      int PROBE_START_LINE_75 = 191;
	int v_c_4507_line_75 = c;
	int PROBE_END_LINE_75 = 191;
	switch (v_c_4507_line_75) {
        // annotation, e.g. @type or @constructor
        case '@':
          do {
            int PROBE_START_LINE_79 = 79;
			int js_doc_token_stream_1_expr34_line_79 = getChar();
			int PROBE_END_LINE_79 = 79;
			c = js_doc_token_stream_1_expr34_line_79;
            int PROBE_START_LINE_80 = 87;
			int v_c_4507_line_80 = c;
			boolean js_doc_token_stream_1_expr35_line_80 = isAlpha(v_c_4507_line_80);
			int PROBE_END_LINE_80 = 87;
			if (js_doc_token_stream_1_expr35_line_80) {
              int PROBE_START_LINE_81 = 81;
				int v_c_4507_line_81 = c;
				int PROBE_END_LINE_81 = 81;
			addToString(v_c_4507_line_81);
            } else {
              int PROBE_START_LINE_83 = 83;
				int v_c_4507_line_83 = c;
				int PROBE_END_LINE_83 = 83;
			ungetChar(v_c_4507_line_83);
              int PROBE_START_LINE_84 = 84;
			String js_doc_token_stream_1_expr40_line_84 = getStringFromBuffer();
			int PROBE_END_LINE_84 = 84;
			this.string = js_doc_token_stream_1_expr40_line_84;
              stringBufferTop = 0;
              int PROBE_START_LINE_86 = 86;
			com.google.javascript.jscomp.parsing.JsDocToken q_annotation_135_line_86 = JsDocToken.ANNOTATION;
			int PROBE_END_LINE_86 = 86;
			return q_annotation_135_line_86;
            }
          } while (true);

        case '*':
	int PROBE_START_LINE_91 = 95;
	boolean js_doc_token_stream_1_expr43_line_91 = matchChar('/');
	int PROBE_END_LINE_91 = 95;
	if (js_doc_token_stream_1_expr43_line_91) {
            int PROBE_START_LINE_92 = 92;
			com.google.javascript.jscomp.parsing.JsDocToken q_eoc_135_line_92 = JsDocToken.EOC;
			int PROBE_END_LINE_92 = 92;
			return q_eoc_135_line_92;
          } else {
            return JsDocToken.STAR;
          }

        case ',':
          return JsDocToken.COMMA;

        case '>':
          return JsDocToken.GT;

        case '(':
          return JsDocToken.LP;

        case ')':
          return JsDocToken.RP;

        case '{':
	int PROBE_START_LINE_110 = 110;
	com.google.javascript.jscomp.parsing.JsDocToken q_lc_135_line_110 = JsDocToken.LC;
	int PROBE_END_LINE_110 = 110;
	return q_lc_135_line_110;

        case '}':
	int PROBE_START_LINE_113 = 113;
	com.google.javascript.jscomp.parsing.JsDocToken q_rc_135_line_113 = JsDocToken.RC;
	int PROBE_END_LINE_113 = 113;
	return q_rc_135_line_113;

        case '[':
          return JsDocToken.LB;

        case ']':
          return JsDocToken.RB;

        case '?':
          return JsDocToken.QMARK;

        case '!':
          return JsDocToken.BANG;

        case ':':
          return JsDocToken.COLON;

        case '=':
          return JsDocToken.EQUALS;

        case '|':
          matchChar('|');
          return JsDocToken.PIPE;

        case '.':
          c = getChar();
          if (c == '<') {
            return JsDocToken.LT;
          } else {
            if (c == '.') {
              c = getChar();
              if (c == '.') {
                return JsDocToken.ELLIPSIS;
              } else {
                addToString('.');
              }
            }
            // we may backtrack across line boundary
            ungetBuffer[ungetCursor++] = c;
            c = '.';
          }
          // fall through

        default: {
          int PROBE_START_LINE_159 = 159;
			int v_c_4507_line_159 = c;
			int PROBE_END_LINE_159 = 159;
		// recognize a JsDoc string but discard last . if it is followed by
          // a non-JsDoc comment char, e.g. Array.<
          int c1 = v_c_4507_line_159;
          int PROBE_START_LINE_160 = 160;
		int v_c_4507_line_160 = c;
		int PROBE_END_LINE_160 = 160;
		addToString(v_c_4507_line_160);
          int PROBE_START_LINE_161 = 161;
		int js_doc_token_stream_1_expr45_line_161 = getChar();
		int PROBE_END_LINE_161 = 161;
		int c2 = js_doc_token_stream_1_expr45_line_161;
          int PROBE_START_LINE_162 = 189;
		int v_c_2_4511_line_162 = c2;
		boolean js_doc_token_stream_1_expr47_line_162 = isJSDocString(v_c_2_4511_line_162);
		boolean js_doc_token_stream_1_expr46_line_162 = !js_doc_token_stream_1_expr47_line_162;
		int PROBE_END_LINE_162 = 189;
		if (js_doc_token_stream_1_expr46_line_162) {
            ungetChar(c2);
            this.string = getStringFromBuffer();
            stringBufferTop = 0;
            return JsDocToken.STRING;
          } else {
            do {
              int PROBE_START_LINE_169 = 169;
				int v_c_2_4511_line_169 = c2;
				int PROBE_END_LINE_169 = 169;
			c1 = v_c_2_4511_line_169;
              int PROBE_START_LINE_170 = 170;
			int js_doc_token_stream_1_expr50_line_170 = getChar();
			int PROBE_END_LINE_170 = 170;
			c2 = js_doc_token_stream_1_expr50_line_170;
              int PROBE_START_LINE_171 = 187;
			int v_c_1_4510_line_171 = c1;
			boolean js_doc_token_stream_1_expr52_line_171 = v_c_1_4510_line_171 == '.';
			boolean js_doc_token_stream_1_expr53_line_171 = true;
			if (js_doc_token_stream_1_expr52_line_171) {
				int v_c_2_4511_line_171 = c2;
				js_doc_token_stream_1_expr53_line_171 = v_c_2_4511_line_171 == '<';
			}
			boolean js_doc_token_stream_1_expr51_line_171 = js_doc_token_stream_1_expr52_line_171
					&& js_doc_token_stream_1_expr53_line_171;
			int PROBE_END_LINE_171 = 187;
			if (js_doc_token_stream_1_expr51_line_171) {
                ungetChar(c2);
                ungetChar(c1);
                this.string = getStringFromBuffer();
                stringBufferTop = 0;
                return JsDocToken.STRING;
              } else {
                int PROBE_START_LINE_178 = 186;
				int v_c_2_4511_line_178 = c2;
				boolean js_doc_token_stream_1_expr54_line_178 = isJSDocString(v_c_2_4511_line_178);
				int PROBE_END_LINE_178 = 186;
				if (js_doc_token_stream_1_expr54_line_178) {
                  int PROBE_START_LINE_179 = 179;
					int v_c_1_4510_line_179 = c1;
					int PROBE_END_LINE_179 = 179;
				addToString(v_c_1_4510_line_179);
                } else {
                  int PROBE_START_LINE_181 = 181;
					int v_c_2_4511_line_181 = c2;
					int PROBE_END_LINE_181 = 181;
				ungetChar(v_c_2_4511_line_181);
                  int PROBE_START_LINE_182 = 182;
				int v_c_1_4510_line_182 = c1;
				int PROBE_END_LINE_182 = 182;
				addToString(v_c_1_4510_line_182);
                  int PROBE_START_LINE_183 = 183;
				String js_doc_token_stream_1_expr60_line_183 = getStringFromBuffer();
				int PROBE_END_LINE_183 = 183;
				this.string = js_doc_token_stream_1_expr60_line_183;
                  stringBufferTop = 0;
                  int PROBE_START_LINE_185 = 185;
				com.google.javascript.jscomp.parsing.JsDocToken q_string_135_line_185 = JsDocToken.STRING;
				int PROBE_END_LINE_185 = 185;
				return q_string_135_line_185;
                }
              }
            } while (true);
          }
        }
      }
    }
  }

  /**
   * Gets the remaining JSDoc line without the {@link JsDocToken#EOL},
   * {@link JsDocToken#EOF} or {@link JsDocToken#EOC}.
   */
  @SuppressWarnings("fallthrough")
  String getRemainingJSDocLine() {
    int c;
    for (;;) {
      c = getChar();
      switch (c) {
        case '*':
          if (peekChar() != '/') {
            addToString(c);
            break;
          }
          // fall through
        case EOF_CHAR:
        case '\n':
          ungetChar(c);
          this.string = getStringFromBuffer();
          stringBufferTop = 0;
          return this.string;

        default:
          addToString(c);
          break;
      }
    }
  }

  final int getLineno() { int PROBE_START_LINE_225 = 225;
	int f_lineno_4498_line_225 = lineno;
	int PROBE_END_LINE_225 = 225;
return f_lineno_4498_line_225; }

  final int getCharno() {
    int PROBE_START_LINE_228 = 228;
	int f_lineno_4498_line_228 = lineno;
	int f_init_lineno_4503_line_228 = initLineno;
	boolean js_doc_token_stream_1_expr64_line_228 = f_lineno_4498_line_228 == f_init_lineno_4503_line_228;
	int js_doc_token_stream_1_expr65_line_228 = 0;
	int f_charno_4506_line_228_v1 = 0;
	if (js_doc_token_stream_1_expr64_line_228) {
		int f_init_charno_4504_line_228 = initCharno;
		int f_charno_4506_line_228 = charno;
		js_doc_token_stream_1_expr65_line_228 = f_init_charno_4504_line_228 + f_charno_4506_line_228;
	} else {
		f_charno_4506_line_228_v1 = charno;
	}
	int js_doc_token_stream_1_expr63_line_228 = js_doc_token_stream_1_expr64_line_228
			? js_doc_token_stream_1_expr65_line_228
			: f_charno_4506_line_228_v1;
	int PROBE_END_LINE_228 = 228;
	return js_doc_token_stream_1_expr63_line_228;
  }

  final String getString() { int PROBE_START_LINE_231 = 231;
	String f_string_4509_line_231 = string;
	int PROBE_END_LINE_231 = 231;
return f_string_4509_line_231; }

  final boolean eof() { return hitEOF; }

  private String getStringFromBuffer() {
    int PROBE_START_LINE_236 = 236;
	int f_cursor_4502_line_236 = cursor;
	int PROBE_END_LINE_236 = 236;
	tokenEnd = f_cursor_4502_line_236;
    int PROBE_START_LINE_237 = 237;
	char[] f_string_buffer_4513_line_237 = stringBuffer;
	int f_string_buffer_top_4505_line_237 = stringBufferTop;
	int PROBE_END_LINE_237 = 237;
	return new String(f_string_buffer_4513_line_237, 0, f_string_buffer_top_4505_line_237);
  }

  private void addToString(int c) {
    int PROBE_START_LINE_241 = 241;
	int f_string_buffer_top_4505_line_241 = stringBufferTop;
	int PROBE_END_LINE_241 = 241;
	int n = f_string_buffer_top_4505_line_241;
    int PROBE_START_LINE_242 = 246;
	int v_n_4515_line_242 = n;
	char[] f_string_buffer_4513_line_242 = stringBuffer;
	int q_length_135_line_242 = f_string_buffer_4513_line_242.length;
	boolean js_doc_token_stream_1_expr68_line_242 = v_n_4515_line_242 == q_length_135_line_242;
	int PROBE_END_LINE_242 = 246;
	if (js_doc_token_stream_1_expr68_line_242) {
        char[] tmp = new char[stringBuffer.length * 2];
        System.arraycopy(stringBuffer, 0, tmp, 0, n);
        stringBuffer = tmp;
    }
    int PROBE_START_LINE_247 = 247;
	char[] f_string_buffer_4513_line_247 = stringBuffer;
	int v_n_4515_line_247 = n;
	int p_c_4514_line_247 = c;
	int PROBE_END_LINE_247 = 247;
	f_string_buffer_4513_line_247[v_n_4515_line_247] = (char) p_c_4514_line_247;
    int PROBE_START_LINE_248 = 248;
	int v_n_4515_line_248 = n;
	int js_doc_token_stream_1_expr73_line_248 = v_n_4515_line_248 + 1;
	int PROBE_END_LINE_248 = 248;
	stringBufferTop = js_doc_token_stream_1_expr73_line_248;
  }

  void ungetChar(int c) {
    int PROBE_START_LINE_253 = 253;
	int f_unget_cursor_4517_line_253 = ungetCursor;
	boolean js_doc_token_stream_1_expr78_line_253 = f_unget_cursor_4517_line_253 != 0;
	boolean js_doc_token_stream_1_expr79_line_253 = true;
	if (js_doc_token_stream_1_expr78_line_253) {
		int[] f_unget_buffer_4518_line_253 = ungetBuffer;
		int f_unget_cursor_4517_line_253_v1 = ungetCursor;
		int js_doc_token_stream_1_expr81_line_253 = f_unget_cursor_4517_line_253_v1 - 1;
		int js_doc_token_stream_1_expr80_line_253 = f_unget_buffer_4518_line_253[js_doc_token_stream_1_expr81_line_253];
		js_doc_token_stream_1_expr79_line_253 = js_doc_token_stream_1_expr80_line_253 == '\n';
	}
	boolean js_doc_token_stream_1_expr77_line_253 = js_doc_token_stream_1_expr78_line_253
			&& js_doc_token_stream_1_expr79_line_253;
	boolean js_doc_token_stream_1_expr76_line_253 = (js_doc_token_stream_1_expr77_line_253);
	boolean js_doc_token_stream_1_expr75_line_253 = !js_doc_token_stream_1_expr76_line_253;
	boolean js_doc_token_stream_1_expr74_line_253 = (js_doc_token_stream_1_expr75_line_253);
	int PROBE_END_LINE_253 = 253;
	// can not unread past across line boundary
    assert js_doc_token_stream_1_expr74_line_253;
    int PROBE_START_LINE_254 = 254;
	int[] f_unget_buffer_4518_line_254 = ungetBuffer;
	int p_c_4516_line_254 = c;
	int PROBE_END_LINE_254 = 254;
	f_unget_buffer_4518_line_254[ungetCursor++] = p_c_4516_line_254;
    cursor--;
  }

  private boolean matchChar(int test) {
    int PROBE_START_LINE_259 = 259;
	int js_doc_token_stream_1_expr86_line_259 = getCharIgnoreLineEnd();
	int PROBE_END_LINE_259 = 259;
	int c = js_doc_token_stream_1_expr86_line_259;
    int PROBE_START_LINE_260 = 266;
	int v_c_4520_line_260 = c;
	int p_test_4519_line_260 = test;
	boolean js_doc_token_stream_1_expr87_line_260 = v_c_4520_line_260 == p_test_4519_line_260;
	int PROBE_END_LINE_260 = 266;
	if (js_doc_token_stream_1_expr87_line_260) {
      int PROBE_START_LINE_261 = 261;
		int f_cursor_4502_line_261 = cursor;
		int PROBE_END_LINE_261 = 261;
	tokenEnd = f_cursor_4502_line_261;
      return true;
    } else {
      ungetCharIgnoreLineEnd(c);
      return false;
    }
  }

  private static boolean isAlpha(int c) {
    int PROBE_START_LINE_271 = 275;
	int p_c_4521_line_271 = c;
	boolean js_doc_token_stream_1_expr89_line_271 = p_c_4521_line_271 <= 'Z';
	int PROBE_END_LINE_271 = 275;
	// Use 'Z' < 'a'
    if (js_doc_token_stream_1_expr89_line_271) {
      int PROBE_START_LINE_272 = 272;
		int p_c_4521_line_272 = c;
		boolean js_doc_token_stream_1_expr90_line_272 = 'A' <= p_c_4521_line_272;
		int PROBE_END_LINE_272 = 272;
	return js_doc_token_stream_1_expr90_line_272;
    } else {
      int PROBE_START_LINE_274 = 274;
		int p_c_4521_line_274 = c;
		boolean js_doc_token_stream_1_expr92_line_274 = 'a' <= p_c_4521_line_274;
		boolean js_doc_token_stream_1_expr93_line_274 = true;
		if (js_doc_token_stream_1_expr92_line_274) {
			int p_c_4521_line_274_v1 = c;
			js_doc_token_stream_1_expr93_line_274 = p_c_4521_line_274_v1 <= 'z';
		}
		boolean js_doc_token_stream_1_expr91_line_274 = js_doc_token_stream_1_expr92_line_274
				&& js_doc_token_stream_1_expr93_line_274;
		int PROBE_END_LINE_274 = 274;
	return js_doc_token_stream_1_expr91_line_274;
    }
  }

  private boolean isJSDocString(int c) {
    int PROBE_START_LINE_279 = 301;
	int p_c_4522_line_279 = c;
	int PROBE_END_LINE_279 = 301;
	switch (p_c_4522_line_279) {
      case '@':
      case '*':
      case ',':
      case '>':
      case ':':
      case '(':
      case ')':
      case '{':
      case '}':
      case '[':
      case ']':
      case '?':
      case '!':
      case '|':
      case '=':
      case EOF_CHAR:
      case '\n':
        return false;

      default:
	int PROBE_START_LINE_300 = 300;
	int p_c_4522_line_300 = c;
	boolean js_doc_token_stream_1_expr95_line_300 = isJSSpace(p_c_4522_line_300);
	boolean js_doc_token_stream_1_expr94_line_300 = !js_doc_token_stream_1_expr95_line_300;
	int PROBE_END_LINE_300 = 300;
	return js_doc_token_stream_1_expr94_line_300;
    }
  }

  /* As defined in ECMA.  jsscan.c uses C isspace() (which allows
   * \v, I think.)  note that code in getChar() implicitly accepts
   * '\r' == \u000D as well.
   */
  static boolean isJSSpace(int c) {
    int PROBE_START_LINE_309 = 314;
	int p_c_4523_line_309 = c;
	boolean js_doc_token_stream_1_expr96_line_309 = p_c_4523_line_309 <= 127;
	int PROBE_END_LINE_309 = 314;
	if (js_doc_token_stream_1_expr96_line_309) {
      int PROBE_START_LINE_310 = 310;
		int p_c_4523_line_310 = c;
		boolean js_doc_token_stream_1_expr100_line_310 = p_c_4523_line_310 == 0x20;
		boolean js_doc_token_stream_1_expr101_line_310 = false;
		if (!js_doc_token_stream_1_expr100_line_310) {
			int p_c_4523_line_310_v1 = c;
			js_doc_token_stream_1_expr101_line_310 = p_c_4523_line_310_v1 == 0x9;
		}
		boolean js_doc_token_stream_1_expr99_line_310 = js_doc_token_stream_1_expr100_line_310
				|| js_doc_token_stream_1_expr101_line_310;
		boolean js_doc_token_stream_1_expr102_line_310 = false;
		if (!js_doc_token_stream_1_expr99_line_310) {
			int p_c_4523_line_310_v2 = c;
			js_doc_token_stream_1_expr102_line_310 = p_c_4523_line_310_v2 == 0xC;
		}
		boolean js_doc_token_stream_1_expr98_line_310 = js_doc_token_stream_1_expr99_line_310
				|| js_doc_token_stream_1_expr102_line_310;
		boolean js_doc_token_stream_1_expr103_line_310 = false;
		if (!js_doc_token_stream_1_expr98_line_310) {
			int p_c_4523_line_310_v3 = c;
			js_doc_token_stream_1_expr103_line_310 = p_c_4523_line_310_v3 == 0xB;
		}
		boolean js_doc_token_stream_1_expr97_line_310 = js_doc_token_stream_1_expr98_line_310
				|| js_doc_token_stream_1_expr103_line_310;
		int PROBE_END_LINE_310 = 310;
	return js_doc_token_stream_1_expr97_line_310;
    } else {
      return c == 0xA0
          || Character.getType((char) c) == Character.SPACE_SEPARATOR;
    }
  }

  private static boolean isJSFormatChar(int c) {
    return c > 127 && Character.getType((char) c) == Character.FORMAT;
  }

  /**
   * Allows the JSDocParser to update the character offset
   * so that getCharno() returns a valid character position.
   */
  void update() {
    charno = getOffset();
  }

  private int peekChar() {
    int c = getChar();
    ungetChar(c);
    return c;
  }

  protected int getChar() {
    int PROBE_START_LINE_336 = 343;
	int f_unget_cursor_4517_line_336 = ungetCursor;
	boolean js_doc_token_stream_1_expr104_line_336 = f_unget_cursor_4517_line_336 != 0;
	int PROBE_END_LINE_336 = 343;
	if (js_doc_token_stream_1_expr104_line_336) {
      cursor++;
      --ungetCursor;
      int PROBE_START_LINE_339 = 341;
	int f_charno_4506_line_339 = charno;
	int js_doc_token_stream_1_expr108_line_339 = -1;
	boolean js_doc_token_stream_1_expr107_line_339 = f_charno_4506_line_339 == js_doc_token_stream_1_expr108_line_339;
	int PROBE_END_LINE_339 = 341;
	if (js_doc_token_stream_1_expr107_line_339) {
        int PROBE_START_LINE_340 = 340;
		int js_doc_token_stream_1_expr110_line_340 = getOffset();
		int PROBE_END_LINE_340 = 340;
		charno = js_doc_token_stream_1_expr110_line_340;
      }
      int PROBE_START_LINE_342 = 342;
	int[] f_unget_buffer_4518_line_342 = ungetBuffer;
	int f_unget_cursor_4517_line_342 = ungetCursor;
	int js_doc_token_stream_1_expr111_line_342 = f_unget_buffer_4518_line_342[f_unget_cursor_4517_line_342];
	int PROBE_END_LINE_342 = 342;
	return js_doc_token_stream_1_expr111_line_342;
    }

    for (;;) {
      int c = 0;
      int PROBE_START_LINE_347 = 353;
	int f_source_cursor_4501_line_347 = sourceCursor;
	int f_source_end_4500_line_347 = sourceEnd;
	boolean js_doc_token_stream_1_expr112_line_347 = f_source_cursor_4501_line_347 == f_source_end_4500_line_347;
	int PROBE_END_LINE_347 = 353;
	if (js_doc_token_stream_1_expr112_line_347) {
        hitEOF = true;
        if (charno == -1) {
          charno = getOffset();
        }
        return EOF_CHAR;
      }
      cursor++;
      int PROBE_START_LINE_355 = 355;
	String f_source_string_4499_line_355 = sourceString;
	char js_doc_token_stream_1_expr115_line_355 = f_source_string_4499_line_355.charAt(sourceCursor++);
	int PROBE_END_LINE_355 = 355;
	c = js_doc_token_stream_1_expr115_line_355;


      int PROBE_START_LINE_358 = 366;
	int f_line_end_char_4526_line_358 = lineEndChar;
	boolean js_doc_token_stream_1_expr117_line_358 = f_line_end_char_4526_line_358 >= 0;
	int PROBE_END_LINE_358 = 366;
	if (js_doc_token_stream_1_expr117_line_358) {
        if (lineEndChar == '\r' && c == '\n') {
          lineEndChar = '\n';
          continue;
        }
        lineEndChar = -1;
        lineStart = sourceCursor - 1;
        lineno++;
      }

      int PROBE_START_LINE_368 = 381;
	int v_c_4525_line_368 = c;
	boolean js_doc_token_stream_1_expr118_line_368 = v_c_4525_line_368 <= 127;
	int PROBE_END_LINE_368 = 381;
	if (js_doc_token_stream_1_expr118_line_368) {
        int PROBE_START_LINE_369 = 372;
		int v_c_4525_line_369 = c;
		boolean js_doc_token_stream_1_expr120_line_369 = v_c_4525_line_369 == '\n';
		boolean js_doc_token_stream_1_expr121_line_369 = false;
		if (!js_doc_token_stream_1_expr120_line_369) {
			int v_c_4525_line_369_v1 = c;
			js_doc_token_stream_1_expr121_line_369 = v_c_4525_line_369_v1 == '\r';
		}
		boolean js_doc_token_stream_1_expr119_line_369 = js_doc_token_stream_1_expr120_line_369
				|| js_doc_token_stream_1_expr121_line_369;
		int PROBE_END_LINE_369 = 372;
		if (js_doc_token_stream_1_expr119_line_369) {
          lineEndChar = c;
          c = '\n';
        }
      } else {
        if (isJSFormatChar(c)) {
          continue;
        }
        if (ScriptRuntime.isJSLineTerminator(c)) {
          lineEndChar = c;
          c = '\n';
        }
      }

      int PROBE_START_LINE_383 = 385;
	int f_charno_4506_line_383 = charno;
	int js_doc_token_stream_1_expr123_line_383 = -1;
	boolean js_doc_token_stream_1_expr122_line_383 = f_charno_4506_line_383 == js_doc_token_stream_1_expr123_line_383;
	int PROBE_END_LINE_383 = 385;
	if (js_doc_token_stream_1_expr122_line_383) {
        int PROBE_START_LINE_384 = 384;
		int js_doc_token_stream_1_expr125_line_384 = getOffset();
		int PROBE_END_LINE_384 = 384;
		charno = js_doc_token_stream_1_expr125_line_384;
      }

      int PROBE_START_LINE_387 = 387;
	int v_c_4525_line_387 = c;
	int PROBE_END_LINE_387 = 387;
	return v_c_4525_line_387;
    }
  }

  private int getCharIgnoreLineEnd() {
    int PROBE_START_LINE_392 = 399;
	int f_unget_cursor_4517_line_392 = ungetCursor;
	boolean js_doc_token_stream_1_expr126_line_392 = f_unget_cursor_4517_line_392 != 0;
	int PROBE_END_LINE_392 = 399;
	if (js_doc_token_stream_1_expr126_line_392) {
      cursor++;
      --ungetCursor;
      if (charno == -1) {
        charno = getOffset();
      }
      return ungetBuffer[ungetCursor];
    }

    for (;;) {
      int c = 0;
      int PROBE_START_LINE_403 = 409;
	int f_source_cursor_4501_line_403 = sourceCursor;
	int f_source_end_4500_line_403 = sourceEnd;
	boolean js_doc_token_stream_1_expr127_line_403 = f_source_cursor_4501_line_403 == f_source_end_4500_line_403;
	int PROBE_END_LINE_403 = 409;
	if (js_doc_token_stream_1_expr127_line_403) {
        hitEOF = true;
        if (charno == -1) {
          charno = getOffset();
        }
        return EOF_CHAR;
      }
      cursor++;
      int PROBE_START_LINE_411 = 411;
	String f_source_string_4499_line_411 = sourceString;
	char js_doc_token_stream_1_expr130_line_411 = f_source_string_4499_line_411.charAt(sourceCursor++);
	int PROBE_END_LINE_411 = 411;
	c = js_doc_token_stream_1_expr130_line_411;


      int PROBE_START_LINE_414 = 427;
	int v_c_4527_line_414 = c;
	boolean js_doc_token_stream_1_expr132_line_414 = v_c_4527_line_414 <= 127;
	int PROBE_END_LINE_414 = 427;
	if (js_doc_token_stream_1_expr132_line_414) {
        int PROBE_START_LINE_415 = 418;
		int v_c_4527_line_415 = c;
		boolean js_doc_token_stream_1_expr134_line_415 = v_c_4527_line_415 == '\n';
		boolean js_doc_token_stream_1_expr135_line_415 = false;
		if (!js_doc_token_stream_1_expr134_line_415) {
			int v_c_4527_line_415_v1 = c;
			js_doc_token_stream_1_expr135_line_415 = v_c_4527_line_415_v1 == '\r';
		}
		boolean js_doc_token_stream_1_expr133_line_415 = js_doc_token_stream_1_expr134_line_415
				|| js_doc_token_stream_1_expr135_line_415;
		int PROBE_END_LINE_415 = 418;
		if (js_doc_token_stream_1_expr133_line_415) {
          lineEndChar = c;
          c = '\n';
        }
      } else {
        if (isJSFormatChar(c)) {
          continue;
        }
        if (ScriptRuntime.isJSLineTerminator(c)) {
          lineEndChar = c;
          c = '\n';
        }
      }

      int PROBE_START_LINE_429 = 431;
	int f_charno_4506_line_429 = charno;
	int js_doc_token_stream_1_expr137_line_429 = -1;
	boolean js_doc_token_stream_1_expr136_line_429 = f_charno_4506_line_429 == js_doc_token_stream_1_expr137_line_429;
	int PROBE_END_LINE_429 = 431;
	if (js_doc_token_stream_1_expr136_line_429) {
        charno = getOffset();
      }

      int PROBE_START_LINE_433 = 433;
	int v_c_4527_line_433 = c;
	int PROBE_END_LINE_433 = 433;
	return v_c_4527_line_433;
    }
  }

  private void ungetCharIgnoreLineEnd(int c) {
    ungetBuffer[ungetCursor++] = c;
    cursor--;
  }

  /**
   * Returns the offset into the current line.
   */
  final int getOffset() {
    int PROBE_START_LINE_446 = 446;
	int f_source_cursor_4501_line_446 = sourceCursor;
	int f_line_start_4529_line_446 = lineStart;
	int f_unget_cursor_4517_line_446 = ungetCursor;
	int js_doc_token_stream_1_expr138_line_446 = f_source_cursor_4501_line_446 - f_line_start_4529_line_446
			- f_unget_cursor_4517_line_446 - 1;
	int PROBE_END_LINE_446 = 446;
	return js_doc_token_stream_1_expr138_line_446;
  }

  // Set this to an initial non-null value so that the Parser has
  // something to retrieve even if an error has occurred and no
  // string is found.  Fosters one class of error, but saves lots of
  // code.
  private String string = "";

  private char[] stringBuffer = new char[128];
  private int stringBufferTop;

  // Room to backtrace from to < on failed match of the last - in <!--
  private final int[] ungetBuffer = new int[3];
  private int ungetCursor;

  private boolean hitEOF = false;

  private int lineStart = 0;
  int PROBE_START_LINE_465 = 465;
private int js_doc_token_stream_1_expr141_line_465 = -1;
int PROBE_END_LINE_465 = 465;
private int lineEndChar = js_doc_token_stream_1_expr141_line_465;
  int lineno;
  int PROBE_START_LINE_467 = 467;
private int js_doc_token_stream_1_expr142_line_467 = -1;
int PROBE_END_LINE_467 = 467;
private int charno = js_doc_token_stream_1_expr142_line_467;
  private int initCharno;
  private int initLineno;

  private String sourceString;
  private int sourceEnd;

  // sourceCursor is an index into a small buffer that keeps a
  // sliding window of the source stream.
  int sourceCursor;

  // cursor is a monotonically increasing index into the original
  // source stream, tracking exactly how far scanning has progressed.
  // Its value is the index of the next character to be scanned.
  int cursor;

  // Record start and end positions of last scanned token.
  int tokenBeg;
  int tokenEnd;
}
