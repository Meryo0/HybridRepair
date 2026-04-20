/*
 * Copyright 2004 The Closure Compiler Authors.
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

package com.google.javascript.jscomp;

import com.google.javascript.rhino.Node;

/**
 * Abstracted consumer of the CodeGenerator output.
 *
 * @see CodeGenerator
 * @see CodePrinter
 * @see InlineCostEstimator
 */
abstract class CodeConsumer {
  boolean statementNeedsEnded = false;
  boolean statementStarted = false;
  boolean sawFunction = false;

  /**
   * Starts the source mapping for the given
   * node at the current position.
   */
  void startSourceMapping(Node node) {
  }

  /**
   * Finishes the source mapping for the given
   * node at the current position.
   */
  void endSourceMapping(Node node) {
  }

  /**
   * Provides a means of interrupting the CodeGenerator. Derived classes should
   * return false to stop further processing.
   */
  boolean continueProcessing() {
    return true;
  }

  /**
   * Retrieve the last character of the last string sent to append.
   */
  abstract char getLastChar();

  void addIdentifier(String identifier) {
    int PROBE_START_LINE_61 = 61;
	String p_identifier_444_line_61 = identifier;
	int PROBE_END_LINE_61 = 61;
	add(p_identifier_444_line_61);
  }

  /**
   * Appends a string to the code, keeping track of the current line length.
   *
   * NOTE: the string must be a complete token--partial strings or
   * partial regexes will run the risk of being split across lines.
   *
   * Do not directly append newlines with this method. Instead use
   * {@link #startNewLine}.
   */
  abstract void append(String str);

  void appendBlockStart() {
    append("{");
  }

  void appendBlockEnd() {
    append("}");
  }

  void startNewLine() {
  }

  void maybeLineBreak() {
    maybeCutLine();
  }

  void maybeCutLine() {
  }

  void endLine() {
  }

  void notePreferredLineBreak() {
  }

  void beginBlock() {
    int PROBE_START_LINE_100 = 103;
	boolean f_statement_needs_ended_439_line_100 = statementNeedsEnded;
	int PROBE_END_LINE_100 = 103;
	if (f_statement_needs_ended_439_line_100) {
      append(";");
      maybeLineBreak();
    }
    appendBlockStart();

    endLine();
    statementNeedsEnded = false;
  }

  void endBlock() {
    endBlock(false);
  }

  void endBlock(boolean shouldEndLine) {
    appendBlockEnd();
    int PROBE_START_LINE_116 = 118;
	boolean p_should_end_line_446_line_116 = shouldEndLine;
	int PROBE_END_LINE_116 = 118;
	if (p_should_end_line_446_line_116) {
      endLine();
    }
    statementNeedsEnded = false;
  }

  void listSeparator() {
    add(",");
    maybeLineBreak();
  }

  /**
   * Indicates the end of a statement and a ';' may need to be added.
   * But we don't add it now, in case we're at the end of a block (in which
   * case we don't have to add the ';').
   * See maybeEndStatement()
   */
  void endStatement() {
    endStatement(false);
  }

  void endStatement(boolean needSemiColon) {
    int PROBE_START_LINE_138 = 144;
	boolean p_need_semi_colon_447_line_138 = needSemiColon;
	int PROBE_END_LINE_138 = 144;
	if (p_need_semi_colon_447_line_138) {
      append(";");
      maybeLineBreak();
      statementNeedsEnded = false;
    } else {
		int PROBE_START_LINE_142 = 144;
		boolean f_statement_started_440_line_142 = statementStarted;
		int PROBE_END_LINE_142 = 144;
		if (f_statement_started_440_line_142) {
			statementNeedsEnded = true;
		}
	}
  }

  /**
   * This is to be called when we're in a statement. If the prev statement
   * needs to be ended, add a ';'.
   */
  void maybeEndStatement() {
    int PROBE_START_LINE_153 = 158;
	boolean f_statement_needs_ended_439_line_153 = statementNeedsEnded;
	int PROBE_END_LINE_153 = 158;
	// Add a ';' if we need to.
    if (f_statement_needs_ended_439_line_153) {
      append(";");
      maybeLineBreak();
      endLine();
      statementNeedsEnded = false;
    }
    statementStarted = true;
  }

  void endFunction() {
    endFunction(false);
  }

  void endFunction(boolean statementContext) {
    sawFunction = true;
    int PROBE_START_LINE_168 = 170;
	boolean p_statement_context_448_line_168 = statementContext;
	int PROBE_END_LINE_168 = 170;
	if (p_statement_context_448_line_168) {
      endLine();
    }
  }

  void beginCaseBody() {
    append(":");
  }

  void endCaseBody() {
  }

  void add(String newcode) {
    maybeEndStatement();

    int PROBE_START_LINE_183 = 185;
	String p_newcode_449_line_183 = newcode;
	int code_consumer_1_expr19_line_183 = p_newcode_449_line_183.length();
	boolean code_consumer_1_expr18_line_183 = code_consumer_1_expr19_line_183 == 0;
	int PROBE_END_LINE_183 = 185;
	if (code_consumer_1_expr18_line_183) {
      return;
    }

    int PROBE_START_LINE_187 = 187;
	String p_newcode_449_line_187 = newcode;
	char code_consumer_1_expr20_line_187 = p_newcode_449_line_187.charAt(0);
	int PROBE_END_LINE_187 = 187;
	char c = code_consumer_1_expr20_line_187;
    int PROBE_START_LINE_188 = 200;
	char v_c_450_line_188 = c;
	boolean code_consumer_1_expr24_line_188 = isWordChar(v_c_450_line_188);
	boolean code_consumer_1_expr25_line_188 = false;
	if (!code_consumer_1_expr24_line_188) {
		char v_c_450_line_188_v1 = c;
		code_consumer_1_expr25_line_188 = v_c_450_line_188_v1 == '\\';
	}
	boolean code_consumer_1_expr23_line_188 = code_consumer_1_expr24_line_188 || code_consumer_1_expr25_line_188;
	boolean code_consumer_1_expr22_line_188 = (code_consumer_1_expr23_line_188);
	boolean code_consumer_1_expr21_line_188 = code_consumer_1_expr22_line_188 && isWordChar(getLastChar());
	int PROBE_END_LINE_188 = 200;
	if (code_consumer_1_expr21_line_188) {
      // need space to separate. This is not pretty printing.
      // For example: "return foo;"
      append(" ");
    } else {
		int PROBE_START_LINE_193 = 200;
		char v_c_450_line_193 = c;
		boolean code_consumer_1_expr27_line_193 = v_c_450_line_193 == '/';
		boolean code_consumer_1_expr28_line_193 = true;
		if (code_consumer_1_expr27_line_193) {
			char code_consumer_1_expr29_line_193 = getLastChar();
			code_consumer_1_expr28_line_193 = code_consumer_1_expr29_line_193 == '/';
		}
		boolean code_consumer_1_expr26_line_193 = code_consumer_1_expr27_line_193 && code_consumer_1_expr28_line_193;
		int PROBE_END_LINE_193 = 200;
		if (code_consumer_1_expr26_line_193) {
			append(" ");
		}
	}

    int PROBE_START_LINE_202 = 202;
	String p_newcode_449_line_202 = newcode;
	int PROBE_END_LINE_202 = 202;
	append(p_newcode_449_line_202);
  }

  void appendOp(String op, boolean binOp) {
    int PROBE_START_LINE_206 = 206;
	String p_op_451_line_206 = op;
	int PROBE_END_LINE_206 = 206;
	append(p_op_451_line_206);
  }

  void addOp(String op, boolean binOp) {
    maybeEndStatement();

    int PROBE_START_LINE_212 = 212;
	String p_op_453_line_212 = op;
	char code_consumer_1_expr33_line_212 = p_op_453_line_212.charAt(0);
	int PROBE_END_LINE_212 = 212;
	char first = code_consumer_1_expr33_line_212;
    int PROBE_START_LINE_213 = 213;
	char code_consumer_1_expr34_line_213 = getLastChar();
	int PROBE_END_LINE_213 = 213;
	char prev = code_consumer_1_expr34_line_213;

    int PROBE_START_LINE_215 = 226;
	char v_first_455_line_215 = first;
	boolean code_consumer_1_expr38_line_215 = v_first_455_line_215 == '+';
	boolean code_consumer_1_expr39_line_215 = false;
	if (!code_consumer_1_expr38_line_215) {
		char v_first_455_line_215_v1 = first;
		code_consumer_1_expr39_line_215 = v_first_455_line_215_v1 == '-';
	}
	boolean code_consumer_1_expr37_line_215 = code_consumer_1_expr38_line_215 || code_consumer_1_expr39_line_215;
	boolean code_consumer_1_expr36_line_215 = (code_consumer_1_expr37_line_215);
	boolean code_consumer_1_expr40_line_215 = true;
	if (code_consumer_1_expr36_line_215) {
		char v_prev_456_line_215 = prev;
		char v_first_455_line_215_v2 = first;
		code_consumer_1_expr40_line_215 = v_prev_456_line_215 == v_first_455_line_215_v2;
	}
	boolean code_consumer_1_expr35_line_215 = code_consumer_1_expr36_line_215 && code_consumer_1_expr40_line_215;
	int PROBE_END_LINE_215 = 226;
	if (code_consumer_1_expr35_line_215) {
      // This is not pretty printing. This is to prevent misparsing of
      // things like "x + ++y" or "x++ + ++y"
      append(" ");
    } else {
		int PROBE_START_LINE_219 = 226;
		char v_first_455_line_219 = first;
		boolean code_consumer_1_expr42_line_219 = Character.isLetter(v_first_455_line_219);
		boolean code_consumer_1_expr41_line_219 = code_consumer_1_expr42_line_219 && isWordChar(prev);
		int PROBE_END_LINE_219 = 226;
		if (code_consumer_1_expr41_line_219) {
			append(" ");
		} else {
			int PROBE_START_LINE_223 = 226;
			char v_prev_456_line_223 = prev;
			boolean code_consumer_1_expr44_line_223 = v_prev_456_line_223 == '-';
			boolean code_consumer_1_expr45_line_223 = true;
			if (code_consumer_1_expr44_line_223) {
				char v_first_455_line_223 = first;
				code_consumer_1_expr45_line_223 = v_first_455_line_223 == '>';
			}
			boolean code_consumer_1_expr43_line_223 = code_consumer_1_expr44_line_223
					&& code_consumer_1_expr45_line_223;
			int PROBE_END_LINE_223 = 226;
			if (code_consumer_1_expr43_line_223) {
				append(" ");
			}
		}
	}

    int PROBE_START_LINE_229 = 229;
	String p_op_453_line_229 = op;
	boolean p_bin_op_454_line_229 = binOp;
	int PROBE_END_LINE_229 = 229;
	// Allow formatting around the operator.
    appendOp(p_op_453_line_229, p_bin_op_454_line_229);

    int PROBE_START_LINE_234 = 236;
	boolean p_bin_op_454_line_234 = binOp;
	int PROBE_END_LINE_234 = 236;
	// Line breaking after an operator is always safe. Line breaking before an
    // operator on the other hand is not. We only line break after a bin op
    // because it looks strange.
    if (p_bin_op_454_line_234) {
      maybeCutLine();
    }
  }

  void addNumber(double x) {
    // This is not pretty printing. This is to prevent misparsing of x- -4 as
    // x--4 (which is a syntax error).
    char prev = getLastChar();
    boolean negativeZero = isNegativeZero(x);
    if ((x < 0 || negativeZero) && prev == '-') {
      add(" ");
    }

    if (negativeZero) {
      addConstant("-0");
    } else if ((long) x == x) {
      long value = (long) x;
      long mantissa = value;
      int exp = 0;
      if (Math.abs(x) >= 100) {
        while (mantissa / 10 * Math.pow(10, exp + 1) == value) {
          mantissa /= 10;
          exp++;
        }
      }
      if (exp > 2) {
        addConstant(Long.toString(mantissa) + "E" + Integer.toString(exp));
      } else {
        long valueAbs = Math.abs(value);
        if (Long.toHexString(valueAbs).length() + 2 <
            Long.toString(valueAbs).length()) {
          addConstant((value < 0 ? "-" : "") + "0x" +
              Long.toHexString(valueAbs));
        } else {
          addConstant(Long.toString(value));
        }
      }
    } else {
      addConstant(String.valueOf(x).replace(".0E", "E"));
    }
  }

  void addConstant(String newcode) {
    add(newcode);
  }

  static boolean isNegativeZero(double x) {
    return x == 0.0 && Math.copySign(1, x) == -1.0;
  }

  static boolean isWordChar(char ch) {
    int PROBE_START_LINE_286 = 288;
	char p_ch_460_line_286 = ch;
	boolean code_consumer_1_expr51_line_286 = p_ch_460_line_286 == '_';
	boolean code_consumer_1_expr50_line_286 = code_consumer_1_expr51_line_286 || ch == '$';
	boolean code_consumer_1_expr49_line_286 = code_consumer_1_expr50_line_286 || Character.isLetterOrDigit(ch);
	boolean code_consumer_1_expr48_line_286 = (code_consumer_1_expr49_line_286);
	int PROBE_END_LINE_286 = 288;
	return code_consumer_1_expr48_line_286;
  }

  /**
   * If the body of a for loop or the then clause of an if statement has
   * a single statement, should it be wrapped in a block?  Doing so can
   * help when pretty-printing the code, and permits putting a debugging
   * breakpoint on the statement inside the condition.
   *
   * @return {@boolean true} if such expressions should be wrapped
   */
  boolean shouldPreserveExtraBlocks() {
    return false;
  }

  /**
   * @return Whether the a line break can be added after the specified BLOCK.
   */
  boolean breakAfterBlockFor(Node n, boolean statementContext) {
    int PROBE_START_LINE_307 = 307;
	boolean p_statement_context_462_line_307 = statementContext;
	int PROBE_END_LINE_307 = 307;
	return p_statement_context_462_line_307;
  }

  /** Called when we're at the end of a file. */
  void endFile() {}
}
