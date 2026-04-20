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
  private final static int
      EOF_CHAR = -1;

  JsDocTokenStream(String sourceString) {
    this(sourceString, 0);
  }

  JsDocTokenStream(String sourceString, int lineno) {
    this(sourceString, lineno, 0);
  }

  JsDocTokenStream(String sourceString, int lineno, int initCharno) {
    int PROBE_START_LINE_46 = 46;
	String p_source_string_3868_line_46 = sourceString;
	int PROBE_END_LINE_46 = 46;
	Preconditions.checkNotNull(p_source_string_3868_line_46);
    int PROBE_START_LINE_47 = 47;
	int p_lineno_3869_line_47 = lineno;
	int PROBE_END_LINE_47 = 47;
	this.lineno = p_lineno_3869_line_47;
    int PROBE_START_LINE_48 = 48;
	String p_source_string_3868_line_48 = sourceString;
	int PROBE_END_LINE_48 = 48;
	this.sourceString = p_source_string_3868_line_48;
    int PROBE_START_LINE_49 = 49;
	String p_source_string_3868_line_49 = sourceString;
	int js_doc_token_stream_1_expr10_line_49 = p_source_string_3868_line_49.length();
	int PROBE_END_LINE_49 = 49;
	this.sourceEnd = js_doc_token_stream_1_expr10_line_49;
    this.sourceCursor = this.cursor = 0;
    int PROBE_START_LINE_51 = 51;
	int p_lineno_3869_line_51 = lineno;
	int PROBE_END_LINE_51 = 51;
	this.initLineno = p_lineno_3869_line_51;
    int PROBE_START_LINE_52 = 52;
	int p_init_charno_3870_line_52 = initCharno;
	int PROBE_END_LINE_52 = 52;
	this.initCharno = p_init_charno_3870_line_52;
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
        int PROBE_START_LINE_65 = 65;
		int js_doc_token_stream_1_expr26_line_65 = -1;
		int PROBE_END_LINE_65 = 65;
		charno = js_doc_token_stream_1_expr26_line_65;
        int PROBE_START_LINE_66 = 66;
		int js_doc_token_stream_1_expr28_line_66 = getChar();
		int PROBE_END_LINE_66 = 66;
		c = js_doc_token_stream_1_expr28_line_66;
        int PROBE_START_LINE_67 = 73;
		int v_c_3880_line_67 = c;
		int f_eof_char_3881_line_67 = EOF_CHAR;
		boolean js_doc_token_stream_1_expr29_line_67 = v_c_3880_line_67 == f_eof_char_3881_line_67;
		int PROBE_END_LINE_67 = 73;
		if (js_doc_token_stream_1_expr29_line_67) {
          return JsDocToken.EOF;
        } else {
			int PROBE_START_LINE_69 = 73;
			int v_c_3880_line_69 = c;
			boolean js_doc_token_stream_1_expr30_line_69 = v_c_3880_line_69 == '\n';
			int PROBE_END_LINE_69 = 73;
			if (js_doc_token_stream_1_expr30_line_69) {
				int PROBE_START_LINE_70 = 70;
				com.google.javascript.jscomp.parsing.JsDocToken q_eol_108_line_70 = JsDocToken.EOL;
				int PROBE_END_LINE_70 = 70;
				return q_eol_108_line_70;
			} else {
				int PROBE_START_LINE_71 = 73;
				int v_c_3880_line_71 = c;
				boolean js_doc_token_stream_1_expr32_line_71 = isJSSpace(v_c_3880_line_71);
				boolean js_doc_token_stream_1_expr31_line_71 = !js_doc_token_stream_1_expr32_line_71;
				int PROBE_END_LINE_71 = 73;
				if (js_doc_token_stream_1_expr31_line_71) {
					break;
				}
			}
		}
      }

      int PROBE_START_LINE_76 = 192;
	int v_c_3880_line_76 = c;
	int PROBE_END_LINE_76 = 192;
	switch (v_c_3880_line_76) {
        // annotation, e.g. @type or @constructor
        case '@':
          do {
            int PROBE_START_LINE_80 = 80;
			int js_doc_token_stream_1_expr34_line_80 = getChar();
			int PROBE_END_LINE_80 = 80;
			c = js_doc_token_stream_1_expr34_line_80;
            int PROBE_START_LINE_81 = 88;
			int v_c_3880_line_81 = c;
			boolean js_doc_token_stream_1_expr35_line_81 = isAlpha(v_c_3880_line_81);
			int PROBE_END_LINE_81 = 88;
			if (js_doc_token_stream_1_expr35_line_81) {
              int PROBE_START_LINE_82 = 82;
				int v_c_3880_line_82 = c;
				int PROBE_END_LINE_82 = 82;
			addToString(v_c_3880_line_82);
            } else {
              int PROBE_START_LINE_84 = 84;
				int v_c_3880_line_84 = c;
				int PROBE_END_LINE_84 = 84;
			ungetChar(v_c_3880_line_84);
              int PROBE_START_LINE_85 = 85;
			String js_doc_token_stream_1_expr40_line_85 = getStringFromBuffer();
			int PROBE_END_LINE_85 = 85;
			this.string = js_doc_token_stream_1_expr40_line_85;
              stringBufferTop = 0;
              int PROBE_START_LINE_87 = 87;
			com.google.javascript.jscomp.parsing.JsDocToken q_annotation_108_line_87 = JsDocToken.ANNOTATION;
			int PROBE_END_LINE_87 = 87;
			return q_annotation_108_line_87;
            }
          } while (true);

        case '*':
	int PROBE_START_LINE_92 = 96;
	boolean js_doc_token_stream_1_expr43_line_92 = matchChar('/');
	int PROBE_END_LINE_92 = 96;
	if (js_doc_token_stream_1_expr43_line_92) {
            int PROBE_START_LINE_93 = 93;
			com.google.javascript.jscomp.parsing.JsDocToken q_eoc_108_line_93 = JsDocToken.EOC;
			int PROBE_END_LINE_93 = 93;
			return q_eoc_108_line_93;
          } else {
            int PROBE_START_LINE_95 = 95;
			com.google.javascript.jscomp.parsing.JsDocToken q_star_108_line_95 = JsDocToken.STAR;
			int PROBE_END_LINE_95 = 95;
			return q_star_108_line_95;
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
	int PROBE_START_LINE_111 = 111;
	com.google.javascript.jscomp.parsing.JsDocToken q_lc_108_line_111 = JsDocToken.LC;
	int PROBE_END_LINE_111 = 111;
	return q_lc_108_line_111;

        case '}':
	int PROBE_START_LINE_114 = 114;
	com.google.javascript.jscomp.parsing.JsDocToken q_rc_108_line_114 = JsDocToken.RC;
	int PROBE_END_LINE_114 = 114;
	return q_rc_108_line_114;

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
          int PROBE_START_LINE_160 = 160;
			int v_c_3880_line_160 = c;
			int PROBE_END_LINE_160 = 160;
		// recognize a JsDoc string but discard last . if it is followed by
          // a non-JsDoc comment char, e.g. Array.<
          int c1 = v_c_3880_line_160;
          int PROBE_START_LINE_161 = 161;
		int v_c_3880_line_161 = c;
		int PROBE_END_LINE_161 = 161;
		addToString(v_c_3880_line_161);
          int PROBE_START_LINE_162 = 162;
		int js_doc_token_stream_1_expr45_line_162 = getChar();
		int PROBE_END_LINE_162 = 162;
		int c2 = js_doc_token_stream_1_expr45_line_162;
          int PROBE_START_LINE_163 = 190;
		int v_c_2_3884_line_163 = c2;
		boolean js_doc_token_stream_1_expr47_line_163 = isJSDocString(v_c_2_3884_line_163);
		boolean js_doc_token_stream_1_expr46_line_163 = !js_doc_token_stream_1_expr47_line_163;
		int PROBE_END_LINE_163 = 190;
		if (js_doc_token_stream_1_expr46_line_163) {
            ungetChar(c2);
            this.string = getStringFromBuffer();
            stringBufferTop = 0;
            return JsDocToken.STRING;
          } else {
            do {
              int PROBE_START_LINE_170 = 170;
				int v_c_2_3884_line_170 = c2;
				int PROBE_END_LINE_170 = 170;
			c1 = v_c_2_3884_line_170;
              int PROBE_START_LINE_171 = 171;
			int js_doc_token_stream_1_expr50_line_171 = getChar();
			int PROBE_END_LINE_171 = 171;
			c2 = js_doc_token_stream_1_expr50_line_171;
              int PROBE_START_LINE_172 = 188;
			int v_c_1_3883_line_172 = c1;
			boolean js_doc_token_stream_1_expr52_line_172 = v_c_1_3883_line_172 == '.';
			boolean js_doc_token_stream_1_expr53_line_172 = true;
			if (js_doc_token_stream_1_expr52_line_172) {
				int v_c_2_3884_line_172 = c2;
				js_doc_token_stream_1_expr53_line_172 = v_c_2_3884_line_172 == '<';
			}
			boolean js_doc_token_stream_1_expr51_line_172 = js_doc_token_stream_1_expr52_line_172
					&& js_doc_token_stream_1_expr53_line_172;
			int PROBE_END_LINE_172 = 188;
			if (js_doc_token_stream_1_expr51_line_172) {
                ungetChar(c2);
                ungetChar(c1);
                this.string = getStringFromBuffer();
                stringBufferTop = 0;
                return JsDocToken.STRING;
              } else {
                int PROBE_START_LINE_179 = 187;
				int v_c_2_3884_line_179 = c2;
				boolean js_doc_token_stream_1_expr54_line_179 = isJSDocString(v_c_2_3884_line_179);
				int PROBE_END_LINE_179 = 187;
				if (js_doc_token_stream_1_expr54_line_179) {
                  int PROBE_START_LINE_180 = 180;
					int v_c_1_3883_line_180 = c1;
					int PROBE_END_LINE_180 = 180;
				addToString(v_c_1_3883_line_180);
                } else {
                  int PROBE_START_LINE_182 = 182;
					int v_c_2_3884_line_182 = c2;
					int PROBE_END_LINE_182 = 182;
				ungetChar(v_c_2_3884_line_182);
                  int PROBE_START_LINE_183 = 183;
				int v_c_1_3883_line_183 = c1;
				int PROBE_END_LINE_183 = 183;
				addToString(v_c_1_3883_line_183);
                  int PROBE_START_LINE_184 = 184;
				String js_doc_token_stream_1_expr60_line_184 = getStringFromBuffer();
				int PROBE_END_LINE_184 = 184;
				this.string = js_doc_token_stream_1_expr60_line_184;
                  stringBufferTop = 0;
                  int PROBE_START_LINE_186 = 186;
				com.google.javascript.jscomp.parsing.JsDocToken q_string_108_line_186 = JsDocToken.STRING;
				int PROBE_END_LINE_186 = 186;
				return q_string_108_line_186;
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

  final int getLineno() { int PROBE_START_LINE_226 = 226;
	int f_lineno_3871_line_226 = lineno;
	int PROBE_END_LINE_226 = 226;
return f_lineno_3871_line_226; }

  final int getCharno() {
    int PROBE_START_LINE_229 = 229;
	int f_lineno_3871_line_229 = lineno;
	int f_init_lineno_3876_line_229 = initLineno;
	boolean js_doc_token_stream_1_expr64_line_229 = f_lineno_3871_line_229 == f_init_lineno_3876_line_229;
	int js_doc_token_stream_1_expr65_line_229 = 0;
	int f_charno_3879_line_229_v1 = 0;
	if (js_doc_token_stream_1_expr64_line_229) {
		int f_init_charno_3877_line_229 = initCharno;
		int f_charno_3879_line_229 = charno;
		js_doc_token_stream_1_expr65_line_229 = f_init_charno_3877_line_229 + f_charno_3879_line_229;
	} else {
		f_charno_3879_line_229_v1 = charno;
	}
	int js_doc_token_stream_1_expr63_line_229 = js_doc_token_stream_1_expr64_line_229
			? js_doc_token_stream_1_expr65_line_229
			: f_charno_3879_line_229_v1;
	int PROBE_END_LINE_229 = 229;
	return js_doc_token_stream_1_expr63_line_229;
  }

  final String getString() { int PROBE_START_LINE_232 = 232;
	String f_string_3882_line_232 = string;
	int PROBE_END_LINE_232 = 232;
return f_string_3882_line_232; }

  final boolean eof() { return hitEOF; }

  private String getStringFromBuffer() {
    int PROBE_START_LINE_237 = 237;
	int f_cursor_3875_line_237 = cursor;
	int PROBE_END_LINE_237 = 237;
	tokenEnd = f_cursor_3875_line_237;
    int PROBE_START_LINE_238 = 238;
	char[] f_string_buffer_3886_line_238 = stringBuffer;
	int f_string_buffer_top_3878_line_238 = stringBufferTop;
	int PROBE_END_LINE_238 = 238;
	return new String(f_string_buffer_3886_line_238, 0, f_string_buffer_top_3878_line_238);
  }

  private void addToString(int c) {
    int PROBE_START_LINE_242 = 242;
	int f_string_buffer_top_3878_line_242 = stringBufferTop;
	int PROBE_END_LINE_242 = 242;
	int N = f_string_buffer_top_3878_line_242;
    int PROBE_START_LINE_243 = 247;
	int v_n_3888_line_243 = N;
	char[] f_string_buffer_3886_line_243 = stringBuffer;
	int q_length_108_line_243 = f_string_buffer_3886_line_243.length;
	boolean js_doc_token_stream_1_expr68_line_243 = v_n_3888_line_243 == q_length_108_line_243;
	int PROBE_END_LINE_243 = 247;
	if (js_doc_token_stream_1_expr68_line_243) {
        char[] tmp = new char[stringBuffer.length * 2];
        System.arraycopy(stringBuffer, 0, tmp, 0, N);
        stringBuffer = tmp;
    }
    int PROBE_START_LINE_248 = 248;
	char[] f_string_buffer_3886_line_248 = stringBuffer;
	int v_n_3888_line_248 = N;
	int p_c_3887_line_248 = c;
	int PROBE_END_LINE_248 = 248;
	f_string_buffer_3886_line_248[v_n_3888_line_248] = (char)p_c_3887_line_248;
    int PROBE_START_LINE_249 = 249;
	int v_n_3888_line_249 = N;
	int js_doc_token_stream_1_expr73_line_249 = v_n_3888_line_249 + 1;
	int PROBE_END_LINE_249 = 249;
	stringBufferTop = js_doc_token_stream_1_expr73_line_249;
  }

  void ungetChar(int c) {
    int PROBE_START_LINE_254 = 254;
	int f_unget_cursor_3890_line_254 = ungetCursor;
	boolean js_doc_token_stream_1_expr78_line_254 = f_unget_cursor_3890_line_254 != 0;
	boolean js_doc_token_stream_1_expr79_line_254 = true;
	if (js_doc_token_stream_1_expr78_line_254) {
		int[] f_unget_buffer_3891_line_254 = ungetBuffer;
		int f_unget_cursor_3890_line_254_v1 = ungetCursor;
		int js_doc_token_stream_1_expr81_line_254 = f_unget_cursor_3890_line_254_v1 - 1;
		int js_doc_token_stream_1_expr80_line_254 = f_unget_buffer_3891_line_254[js_doc_token_stream_1_expr81_line_254];
		js_doc_token_stream_1_expr79_line_254 = js_doc_token_stream_1_expr80_line_254 == '\n';
	}
	boolean js_doc_token_stream_1_expr77_line_254 = js_doc_token_stream_1_expr78_line_254
			&& js_doc_token_stream_1_expr79_line_254;
	boolean js_doc_token_stream_1_expr76_line_254 = (js_doc_token_stream_1_expr77_line_254);
	boolean js_doc_token_stream_1_expr75_line_254 = !js_doc_token_stream_1_expr76_line_254;
	boolean js_doc_token_stream_1_expr74_line_254 = (js_doc_token_stream_1_expr75_line_254);
	int PROBE_END_LINE_254 = 254;
	// can not unread past across line boundary
    assert js_doc_token_stream_1_expr74_line_254;
    int PROBE_START_LINE_255 = 255;
	int[] f_unget_buffer_3891_line_255 = ungetBuffer;
	int p_c_3889_line_255 = c;
	int PROBE_END_LINE_255 = 255;
	f_unget_buffer_3891_line_255[ungetCursor++] = p_c_3889_line_255;
    cursor--;
  }

  private boolean matchChar(int test) {
    int PROBE_START_LINE_260 = 260;
	int js_doc_token_stream_1_expr86_line_260 = getCharIgnoreLineEnd();
	int PROBE_END_LINE_260 = 260;
	int c = js_doc_token_stream_1_expr86_line_260;
    int PROBE_START_LINE_261 = 267;
	int v_c_3893_line_261 = c;
	int p_test_3892_line_261 = test;
	boolean js_doc_token_stream_1_expr87_line_261 = v_c_3893_line_261 == p_test_3892_line_261;
	int PROBE_END_LINE_261 = 267;
	if (js_doc_token_stream_1_expr87_line_261) {
      int PROBE_START_LINE_262 = 262;
		int f_cursor_3875_line_262 = cursor;
		int PROBE_END_LINE_262 = 262;
	tokenEnd = f_cursor_3875_line_262;
      return true;
    } else {
      int PROBE_START_LINE_265 = 265;
		int v_c_3893_line_265 = c;
		int PROBE_END_LINE_265 = 265;
	ungetCharIgnoreLineEnd(v_c_3893_line_265);
      return false;
    }
  }

  private static boolean isAlpha(int c) {
    int PROBE_START_LINE_272 = 276;
	int p_c_3894_line_272 = c;
	boolean js_doc_token_stream_1_expr90_line_272 = p_c_3894_line_272 <= 'Z';
	int PROBE_END_LINE_272 = 276;
	// Use 'Z' < 'a'
    if (js_doc_token_stream_1_expr90_line_272) {
      int PROBE_START_LINE_273 = 273;
		int p_c_3894_line_273 = c;
		boolean js_doc_token_stream_1_expr91_line_273 = 'A' <= p_c_3894_line_273;
		int PROBE_END_LINE_273 = 273;
	return js_doc_token_stream_1_expr91_line_273;
    } else {
      int PROBE_START_LINE_275 = 275;
		int p_c_3894_line_275 = c;
		boolean js_doc_token_stream_1_expr93_line_275 = 'a' <= p_c_3894_line_275;
		boolean js_doc_token_stream_1_expr94_line_275 = true;
		if (js_doc_token_stream_1_expr93_line_275) {
			int p_c_3894_line_275_v1 = c;
			js_doc_token_stream_1_expr94_line_275 = p_c_3894_line_275_v1 <= 'z';
		}
		boolean js_doc_token_stream_1_expr92_line_275 = js_doc_token_stream_1_expr93_line_275
				&& js_doc_token_stream_1_expr94_line_275;
		int PROBE_END_LINE_275 = 275;
	return js_doc_token_stream_1_expr92_line_275;
    }
  }

  private boolean isJSDocString(int c) {
    int PROBE_START_LINE_280 = 302;
	int p_c_3895_line_280 = c;
	int PROBE_END_LINE_280 = 302;
	switch (p_c_3895_line_280) {
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
	int PROBE_START_LINE_301 = 301;
	int p_c_3895_line_301 = c;
	boolean js_doc_token_stream_1_expr96_line_301 = isJSSpace(p_c_3895_line_301);
	boolean js_doc_token_stream_1_expr95_line_301 = !js_doc_token_stream_1_expr96_line_301;
	int PROBE_END_LINE_301 = 301;
	return js_doc_token_stream_1_expr95_line_301;
    }
  }

  /* As defined in ECMA.  jsscan.c uses C isspace() (which allows
   * \v, I think.)  note that code in getChar() implicitly accepts
   * '\r' == \u000D as well.
   */
  static boolean isJSSpace(int c) {
    int PROBE_START_LINE_310 = 315;
	int p_c_3896_line_310 = c;
	boolean js_doc_token_stream_1_expr97_line_310 = p_c_3896_line_310 <= 127;
	int PROBE_END_LINE_310 = 315;
	if (js_doc_token_stream_1_expr97_line_310) {
      int PROBE_START_LINE_311 = 311;
		int p_c_3896_line_311 = c;
		boolean js_doc_token_stream_1_expr101_line_311 = p_c_3896_line_311 == 0x20;
		boolean js_doc_token_stream_1_expr102_line_311 = false;
		if (!js_doc_token_stream_1_expr101_line_311) {
			int p_c_3896_line_311_v1 = c;
			js_doc_token_stream_1_expr102_line_311 = p_c_3896_line_311_v1 == 0x9;
		}
		boolean js_doc_token_stream_1_expr100_line_311 = js_doc_token_stream_1_expr101_line_311
				|| js_doc_token_stream_1_expr102_line_311;
		boolean js_doc_token_stream_1_expr103_line_311 = false;
		if (!js_doc_token_stream_1_expr100_line_311) {
			int p_c_3896_line_311_v2 = c;
			js_doc_token_stream_1_expr103_line_311 = p_c_3896_line_311_v2 == 0xC;
		}
		boolean js_doc_token_stream_1_expr99_line_311 = js_doc_token_stream_1_expr100_line_311
				|| js_doc_token_stream_1_expr103_line_311;
		boolean js_doc_token_stream_1_expr104_line_311 = false;
		if (!js_doc_token_stream_1_expr99_line_311) {
			int p_c_3896_line_311_v3 = c;
			js_doc_token_stream_1_expr104_line_311 = p_c_3896_line_311_v3 == 0xB;
		}
		boolean js_doc_token_stream_1_expr98_line_311 = js_doc_token_stream_1_expr99_line_311
				|| js_doc_token_stream_1_expr104_line_311;
		int PROBE_END_LINE_311 = 311;
	return js_doc_token_stream_1_expr98_line_311;
    } else {
      return c == 0xA0
          || Character.getType((char)c) == Character.SPACE_SEPARATOR;
    }
  }

  private static boolean isJSFormatChar(int c) {
    return c > 127 && Character.getType((char)c) == Character.FORMAT;
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
    int PROBE_START_LINE_337 = 344;
	int f_unget_cursor_3890_line_337 = ungetCursor;
	boolean js_doc_token_stream_1_expr105_line_337 = f_unget_cursor_3890_line_337 != 0;
	int PROBE_END_LINE_337 = 344;
	if (js_doc_token_stream_1_expr105_line_337) {
      cursor++;
      --ungetCursor;
      int PROBE_START_LINE_340 = 342;
	int f_charno_3879_line_340 = charno;
	int js_doc_token_stream_1_expr109_line_340 = -1;
	boolean js_doc_token_stream_1_expr108_line_340 = f_charno_3879_line_340 == js_doc_token_stream_1_expr109_line_340;
	int PROBE_END_LINE_340 = 342;
	if (js_doc_token_stream_1_expr108_line_340) {
        int PROBE_START_LINE_341 = 341;
		int js_doc_token_stream_1_expr111_line_341 = getOffset();
		int PROBE_END_LINE_341 = 341;
		charno = js_doc_token_stream_1_expr111_line_341;
      }
      int PROBE_START_LINE_343 = 343;
	int[] f_unget_buffer_3891_line_343 = ungetBuffer;
	int f_unget_cursor_3890_line_343 = ungetCursor;
	int js_doc_token_stream_1_expr112_line_343 = f_unget_buffer_3891_line_343[f_unget_cursor_3890_line_343];
	int PROBE_END_LINE_343 = 343;
	return js_doc_token_stream_1_expr112_line_343;
    }

    for(;;) {
      int c = 0;
      int PROBE_START_LINE_348 = 354;
	int f_source_cursor_3874_line_348 = sourceCursor;
	int f_source_end_3873_line_348 = sourceEnd;
	boolean js_doc_token_stream_1_expr113_line_348 = f_source_cursor_3874_line_348 == f_source_end_3873_line_348;
	int PROBE_END_LINE_348 = 354;
	if (js_doc_token_stream_1_expr113_line_348) {
        hitEOF = true;
        if (charno == -1) {
          charno = getOffset();
        }
        return EOF_CHAR;
      }
      cursor++;
      int PROBE_START_LINE_356 = 356;
	String f_source_string_3872_line_356 = sourceString;
	char js_doc_token_stream_1_expr116_line_356 = f_source_string_3872_line_356.charAt(sourceCursor++);
	int PROBE_END_LINE_356 = 356;
	c = js_doc_token_stream_1_expr116_line_356;


      int PROBE_START_LINE_359 = 367;
	int f_line_end_char_3899_line_359 = lineEndChar;
	boolean js_doc_token_stream_1_expr118_line_359 = f_line_end_char_3899_line_359 >= 0;
	int PROBE_END_LINE_359 = 367;
	if (js_doc_token_stream_1_expr118_line_359) {
        int PROBE_START_LINE_360 = 363;
		int f_line_end_char_3899_line_360 = lineEndChar;
		boolean js_doc_token_stream_1_expr120_line_360 = f_line_end_char_3899_line_360 == '\r';
		boolean js_doc_token_stream_1_expr121_line_360 = true;
		if (js_doc_token_stream_1_expr120_line_360) {
			int v_c_3898_line_360 = c;
			js_doc_token_stream_1_expr121_line_360 = v_c_3898_line_360 == '\n';
		}
		boolean js_doc_token_stream_1_expr119_line_360 = js_doc_token_stream_1_expr120_line_360
				&& js_doc_token_stream_1_expr121_line_360;
		int PROBE_END_LINE_360 = 363;
		if (js_doc_token_stream_1_expr119_line_360) {
          lineEndChar = '\n';
          continue;
        }
        int PROBE_START_LINE_364 = 364;
		int js_doc_token_stream_1_expr123_line_364 = -1;
		int PROBE_END_LINE_364 = 364;
		lineEndChar = js_doc_token_stream_1_expr123_line_364;
        int PROBE_START_LINE_365 = 365;
		int f_source_cursor_3874_line_365 = sourceCursor;
		int js_doc_token_stream_1_expr125_line_365 = f_source_cursor_3874_line_365 - 1;
		int PROBE_END_LINE_365 = 365;
		lineStart = js_doc_token_stream_1_expr125_line_365;
        lineno++;
      }

      int PROBE_START_LINE_369 = 382;
	int v_c_3898_line_369 = c;
	boolean js_doc_token_stream_1_expr127_line_369 = v_c_3898_line_369 <= 127;
	int PROBE_END_LINE_369 = 382;
	if (js_doc_token_stream_1_expr127_line_369) {
        int PROBE_START_LINE_370 = 373;
		int v_c_3898_line_370 = c;
		boolean js_doc_token_stream_1_expr129_line_370 = v_c_3898_line_370 == '\n';
		boolean js_doc_token_stream_1_expr130_line_370 = false;
		if (!js_doc_token_stream_1_expr129_line_370) {
			int v_c_3898_line_370_v1 = c;
			js_doc_token_stream_1_expr130_line_370 = v_c_3898_line_370_v1 == '\r';
		}
		boolean js_doc_token_stream_1_expr128_line_370 = js_doc_token_stream_1_expr129_line_370
				|| js_doc_token_stream_1_expr130_line_370;
		int PROBE_END_LINE_370 = 373;
		if (js_doc_token_stream_1_expr128_line_370) {
          int PROBE_START_LINE_371 = 371;
			int v_c_3898_line_371 = c;
			int PROBE_END_LINE_371 = 371;
		lineEndChar = v_c_3898_line_371;
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

      int PROBE_START_LINE_384 = 386;
	int f_charno_3879_line_384 = charno;
	int js_doc_token_stream_1_expr134_line_384 = -1;
	boolean js_doc_token_stream_1_expr133_line_384 = f_charno_3879_line_384 == js_doc_token_stream_1_expr134_line_384;
	int PROBE_END_LINE_384 = 386;
	if (js_doc_token_stream_1_expr133_line_384) {
        int PROBE_START_LINE_385 = 385;
		int js_doc_token_stream_1_expr136_line_385 = getOffset();
		int PROBE_END_LINE_385 = 385;
		charno = js_doc_token_stream_1_expr136_line_385;
      }

      int PROBE_START_LINE_388 = 388;
	int v_c_3898_line_388 = c;
	int PROBE_END_LINE_388 = 388;
	return v_c_3898_line_388;
    }
  }

  private int getCharIgnoreLineEnd() {
    int PROBE_START_LINE_393 = 400;
	int f_unget_cursor_3890_line_393 = ungetCursor;
	boolean js_doc_token_stream_1_expr137_line_393 = f_unget_cursor_3890_line_393 != 0;
	int PROBE_END_LINE_393 = 400;
	if (js_doc_token_stream_1_expr137_line_393) {
      cursor++;
      --ungetCursor;
      if (charno == -1) {
        charno = getOffset();
      }
      return ungetBuffer[ungetCursor];
    }

    for(;;) {
      int c = 0;
      int PROBE_START_LINE_404 = 410;
	int f_source_cursor_3874_line_404 = sourceCursor;
	int f_source_end_3873_line_404 = sourceEnd;
	boolean js_doc_token_stream_1_expr138_line_404 = f_source_cursor_3874_line_404 == f_source_end_3873_line_404;
	int PROBE_END_LINE_404 = 410;
	if (js_doc_token_stream_1_expr138_line_404) {
        hitEOF = true;
        if (charno == -1) {
          charno = getOffset();
        }
        return EOF_CHAR;
      }
      cursor++;
      int PROBE_START_LINE_412 = 412;
	String f_source_string_3872_line_412 = sourceString;
	char js_doc_token_stream_1_expr141_line_412 = f_source_string_3872_line_412.charAt(sourceCursor++);
	int PROBE_END_LINE_412 = 412;
	c = js_doc_token_stream_1_expr141_line_412;


      int PROBE_START_LINE_415 = 428;
	int v_c_3901_line_415 = c;
	boolean js_doc_token_stream_1_expr143_line_415 = v_c_3901_line_415 <= 127;
	int PROBE_END_LINE_415 = 428;
	if (js_doc_token_stream_1_expr143_line_415) {
        int PROBE_START_LINE_416 = 419;
		int v_c_3901_line_416 = c;
		boolean js_doc_token_stream_1_expr145_line_416 = v_c_3901_line_416 == '\n';
		boolean js_doc_token_stream_1_expr146_line_416 = false;
		if (!js_doc_token_stream_1_expr145_line_416) {
			int v_c_3901_line_416_v1 = c;
			js_doc_token_stream_1_expr146_line_416 = v_c_3901_line_416_v1 == '\r';
		}
		boolean js_doc_token_stream_1_expr144_line_416 = js_doc_token_stream_1_expr145_line_416
				|| js_doc_token_stream_1_expr146_line_416;
		int PROBE_END_LINE_416 = 419;
		if (js_doc_token_stream_1_expr144_line_416) {
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

      int PROBE_START_LINE_430 = 432;
	int f_charno_3879_line_430 = charno;
	int js_doc_token_stream_1_expr148_line_430 = -1;
	boolean js_doc_token_stream_1_expr147_line_430 = f_charno_3879_line_430 == js_doc_token_stream_1_expr148_line_430;
	int PROBE_END_LINE_430 = 432;
	if (js_doc_token_stream_1_expr147_line_430) {
        charno = getOffset();
      }

      int PROBE_START_LINE_434 = 434;
	int v_c_3901_line_434 = c;
	int PROBE_END_LINE_434 = 434;
	return v_c_3901_line_434;
    }
  }

  private void ungetCharIgnoreLineEnd(int c) {
    int PROBE_START_LINE_439 = 439;
	int[] f_unget_buffer_3891_line_439 = ungetBuffer;
	int p_c_3902_line_439 = c;
	int PROBE_END_LINE_439 = 439;
	f_unget_buffer_3891_line_439[ungetCursor++] = p_c_3902_line_439;
    cursor--;
  }

  /**
   * Returns the offset into the current line.
   */
  final int getOffset() {
    int PROBE_START_LINE_447 = 447;
	int f_source_cursor_3874_line_447 = sourceCursor;
	int f_line_start_3900_line_447 = lineStart;
	int f_unget_cursor_3890_line_447 = ungetCursor;
	int js_doc_token_stream_1_expr153_line_447 = f_source_cursor_3874_line_447 - f_line_start_3900_line_447
			- f_unget_cursor_3890_line_447 - 1;
	int PROBE_END_LINE_447 = 447;
	return js_doc_token_stream_1_expr153_line_447;
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
  int PROBE_START_LINE_466 = 466;
private int js_doc_token_stream_1_expr156_line_466 = -1;
int PROBE_END_LINE_466 = 466;
private int lineEndChar = js_doc_token_stream_1_expr156_line_466;
  int lineno;
  int PROBE_START_LINE_468 = 468;
private int js_doc_token_stream_1_expr157_line_468 = -1;
int PROBE_END_LINE_468 = 468;
private int charno = js_doc_token_stream_1_expr157_line_468;
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
