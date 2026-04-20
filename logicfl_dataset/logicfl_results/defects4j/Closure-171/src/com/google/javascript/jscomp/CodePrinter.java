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

import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.debugging.sourcemap.FilePosition;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;
import com.google.javascript.rhino.jstype.JSTypeRegistry;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;

/**
 * CodePrinter prints out JS code in either pretty format or compact format.
 *
 * @see CodeGenerator
 */
class CodePrinter {
  // The number of characters after which we insert a line break in the code
  static final int DEFAULT_LINE_LENGTH_THRESHOLD = 500;


  // There are two separate CodeConsumers, one for pretty-printing and
  // another for compact printing.

  // There are two implementations because the CompactCodePrinter
  // potentially has a very different implementation to the pretty
  // version.

  private abstract static class MappedCodePrinter extends CodeConsumer {
    private final Deque<Mapping> mappings;
    private final List<Mapping> allMappings;
    private final boolean createSrcMap;
    private final SourceMap.DetailLevel sourceMapDetailLevel;
    protected final StringBuilder code = new StringBuilder(1024);
    protected final int lineLengthThreshold;
    protected int lineLength = 0;
    protected int lineIndex = 0;

    MappedCodePrinter(
        int lineLengthThreshold,
        boolean createSrcMap,
        SourceMap.DetailLevel sourceMapDetailLevel) {
      int PROBE_START_LINE_62 = 62;
			com.google.javascript.jscomp.SourceMap.DetailLevel p_source_map_detail_level_560_line_62 = sourceMapDetailLevel;
			boolean code_printer_1_expr3_line_62 = p_source_map_detail_level_560_line_62 != null;
			int PROBE_END_LINE_62 = 62;
	Preconditions.checkState(code_printer_1_expr3_line_62);
      int PROBE_START_LINE_63 = 64;
	int p_line_length_threshold_558_line_63 = lineLengthThreshold;
	boolean code_printer_1_expr8_line_63 = p_line_length_threshold_558_line_63 <= 0;
	int q_max_value_27_line_63 = 0;
	if (code_printer_1_expr8_line_63) {
		q_max_value_27_line_63 = Integer.MAX_VALUE;
	}
	int code_printer_1_expr6_line_63 = code_printer_1_expr8_line_63 ? q_max_value_27_line_63 : lineLengthThreshold;
	int PROBE_END_LINE_63 = 64;
	this.lineLengthThreshold = code_printer_1_expr6_line_63;
      int PROBE_START_LINE_65 = 65;
	boolean p_create_src_map_559_line_65 = createSrcMap;
	int PROBE_END_LINE_65 = 65;
	this.createSrcMap = p_create_src_map_559_line_65;
      int PROBE_START_LINE_66 = 66;
	com.google.javascript.jscomp.SourceMap.DetailLevel p_source_map_detail_level_560_line_66 = sourceMapDetailLevel;
	int PROBE_END_LINE_66 = 66;
	this.sourceMapDetailLevel = p_source_map_detail_level_560_line_66;
      int PROBE_START_LINE_67 = 67;
	boolean p_create_src_map_559_line_67 = createSrcMap;
	Deque<com.google.javascript.jscomp.CodePrinter.MappedCodePrinter.Mapping> code_printer_1_expr17_line_67 = p_create_src_map_559_line_67
			? new ArrayDeque<Mapping>()
			: null;
	int PROBE_END_LINE_67 = 67;
	this.mappings = code_printer_1_expr17_line_67;
      int PROBE_START_LINE_68 = 68;
	boolean p_create_src_map_559_line_68 = createSrcMap;
	List<com.google.javascript.jscomp.CodePrinter.MappedCodePrinter.Mapping> code_printer_1_expr22_line_68 = p_create_src_map_559_line_68
			? new ArrayList<Mapping>()
			: null;
	int PROBE_END_LINE_68 = 68;
	this.allMappings = code_printer_1_expr22_line_68;
    }

    /**
     * Maintains a mapping from a given node to the position
     * in the source code at which its generated form was
     * placed. This position is relative only to the current
     * run of the CodeConsumer and will be normalized
     * later on by the SourceMap.
     *
     * @see SourceMap
     */
    private static class Mapping {
      Node node;
      FilePosition start;
      FilePosition end;
    }

    /**
     * Starts the source mapping for the given
     * node at the current position.
     */
    @Override
    void startSourceMapping(Node node) {
      int PROBE_START_LINE_92 = 92;
		com.google.javascript.jscomp.SourceMap.DetailLevel f_source_map_detail_level_563_line_92 = sourceMapDetailLevel;
		boolean code_printer_1_expr26_line_92 = f_source_map_detail_level_563_line_92 != null;
		int PROBE_END_LINE_92 = 92;
	Preconditions.checkState(code_printer_1_expr26_line_92);
      int PROBE_START_LINE_93 = 93;
	com.google.javascript.rhino.Node p_node_566_line_93 = node;
	boolean code_printer_1_expr28_line_93 = p_node_566_line_93 != null;
	int PROBE_END_LINE_93 = 93;
	Preconditions.checkState(code_printer_1_expr28_line_93);
      int PROBE_START_LINE_94 = 106;
	boolean f_create_src_map_562_line_94 = createSrcMap;
	boolean code_printer_1_expr31_line_94 = f_create_src_map_562_line_94 && node.getSourceFileName() != null;
	boolean code_printer_1_expr30_line_94 = code_printer_1_expr31_line_94 && node.getLineno() > 0;
	boolean code_printer_1_expr29_line_94 = code_printer_1_expr30_line_94 && sourceMapDetailLevel.apply(node);
	int PROBE_END_LINE_94 = 106;
	if (code_printer_1_expr29_line_94) {
        int line = getCurrentLineIndex();
        int index = getCurrentCharIndex();
        Preconditions.checkState(line >= 0);
        Mapping mapping = new Mapping();
        mapping.node = node;
        mapping.start = new FilePosition(line, index);
        mappings.push(mapping);
        allMappings.add(mapping);
      }
    }

    /**
     * Finishes the source mapping for the given
     * node at the current position.
     */
    @Override
    void endSourceMapping(Node node) {
      int PROBE_START_LINE_115 = 121;
		boolean f_create_src_map_562_line_115 = createSrcMap;
		boolean code_printer_1_expr33_line_115 = true;
		boolean code_printer_1_expr35_line_115 = true;
		if (f_create_src_map_562_line_115) {
			Deque<com.google.javascript.jscomp.CodePrinter.MappedCodePrinter.Mapping> f_mappings_564_line_115 = mappings;
			boolean code_printer_1_expr34_line_115 = f_mappings_564_line_115.isEmpty();
			code_printer_1_expr33_line_115 = !code_printer_1_expr34_line_115;
			if (code_printer_1_expr33_line_115) {
				Deque<com.google.javascript.jscomp.CodePrinter.MappedCodePrinter.Mapping> f_mappings_564_line_115_v1 = mappings;
				com.google.javascript.jscomp.CodePrinter.MappedCodePrinter.Mapping code_printer_1_expr37_line_115 = f_mappings_564_line_115_v1
						.peek();
				com.google.javascript.rhino.Node code_printer_1_expr36_line_115 = code_printer_1_expr37_line_115.node;
				com.google.javascript.rhino.Node p_node_567_line_115 = node;
				code_printer_1_expr35_line_115 = code_printer_1_expr36_line_115 == p_node_567_line_115;
			}
		}
		boolean code_printer_1_expr32_line_115 = f_create_src_map_562_line_115 && code_printer_1_expr33_line_115
				&& code_printer_1_expr35_line_115;
		int PROBE_END_LINE_115 = 121;
	if (code_printer_1_expr32_line_115) {
        Mapping mapping = mappings.pop();
        int line = getCurrentLineIndex();
        int index = getCurrentCharIndex();
        Preconditions.checkState(line >= 0);
        mapping.end = new FilePosition(line, index);
      }
    }

    /**
     * Generates the source map from the given code consumer,
     * appending the information it saved to the SourceMap
     * object given.
     */
    void generateSourceMap(SourceMap map){
      if (createSrcMap) {
        for (Mapping mapping : allMappings) {
          map.addMapping(mapping.node, mapping.start, mapping.end);
        }
      }
    }

    /**
     * Reports to the code consumer that the given line has been cut at the
     * given position, i.e. a \n has been inserted there. Or that a cut has
     * been undone, i.e. a previously inserted \n has been removed.
     * All mappings in the source maps after that position will be renormalized
     * as needed.
     */
    void reportLineCut(int lineIndex, int charIndex, boolean insertion) {
      if (createSrcMap) {
        for (Mapping mapping : allMappings) {
          mapping.start = convertPosition(mapping.start, lineIndex, charIndex,
              insertion);

          if (mapping.end != null) {
            mapping.end = convertPosition(mapping.end, lineIndex, charIndex,
                insertion);
          }
        }
      }
    }

    /**
     * Converts the given position by normalizing it against the insertion
     * or removal of a newline at the given line and character position.
     *
     * @param position The existing position before the newline was inserted.
     * @param lineIndex The index of the line at which the newline was inserted.
     * @param characterPosition The position on the line at which the newline
     *     was inserted.
     * @param insertion True if a newline was inserted, false if a newline was
     *     removed.
     *
     * @return The normalized position.
     * @throws IllegalStateException if an attempt to reverse a line cut is
     *     made on a previous line rather than the current line.
     */
    private FilePosition convertPosition(FilePosition position, int lineIndex,
                                     int characterPosition, boolean insertion) {
      int originalLine = position.getLine();
      int originalChar = position.getColumn();
      if (insertion) {
        if (originalLine == lineIndex && originalChar >= characterPosition) {
          // If the position falls on the line itself, then normalize it
          // if it falls at or after the place the newline was inserted.
          return new FilePosition(
              originalLine + 1, originalChar - characterPosition);
        } else {
          return position;
        }
      } else {
        if (originalLine == lineIndex) {
          return new FilePosition(
              originalLine - 1, originalChar + characterPosition);
        } else if (originalLine > lineIndex) {
            // Not supported, can only undo a cut on the most recent line. To
            // do this on a previous lines would require reevaluating the cut
            // positions on all subsequent lines.
            throw new IllegalStateException(
                "Cannot undo line cut on a previous line.");
        } else {
          return position;
        }
      }
    }

    public String getCode() {
      int PROBE_START_LINE_203 = 203;
		StringBuilder f_code_555_line_203 = code;
		String code_printer_1_expr38_line_203 = f_code_555_line_203.toString();
		int PROBE_END_LINE_203 = 203;
	return code_printer_1_expr38_line_203;
    }

    @Override
    char getLastChar() {
      int PROBE_START_LINE_208 = 208;
		StringBuilder f_code_555_line_208 = code;
		int code_printer_1_expr43_line_208 = f_code_555_line_208.length();
		boolean code_printer_1_expr42_line_208 = code_printer_1_expr43_line_208 > 0;
		boolean code_printer_1_expr40_line_208 = (code_printer_1_expr42_line_208);
		char code_printer_1_expr41_line_208 = ' ';
		if (code_printer_1_expr40_line_208) {
			StringBuilder f_code_555_line_208_v1 = code;
			StringBuilder f_code_555_line_208_v2 = code;
			int code_printer_1_expr45_line_208 = f_code_555_line_208_v2.length();
			int code_printer_1_expr44_line_208 = code_printer_1_expr45_line_208 - 1;
			code_printer_1_expr41_line_208 = f_code_555_line_208_v1.charAt(code_printer_1_expr44_line_208);
		}
		char code_printer_1_expr39_line_208 = code_printer_1_expr40_line_208 ? code_printer_1_expr41_line_208 : '\0';
		int PROBE_END_LINE_208 = 208;
	return code_printer_1_expr39_line_208;
    }

    protected final int getCurrentCharIndex() {
      return lineLength;
    }

    protected final int getCurrentLineIndex() {
      return lineIndex;
    }
  }

  static class PrettyCodePrinter
      extends MappedCodePrinter {
    // The number of characters after which we insert a line break in the code
    static final String INDENT = "  ";

    private int indent = 0;

    /**
     * @param lineLengthThreshold The length of a line after which we force
     *                            a newline when possible.
     * @param createSourceMap Whether to generate source map data.
     * @param sourceMapDetailLevel A filter to control which nodes get mapped
     *     into the source map.
     */
    private PrettyCodePrinter(
        int lineLengthThreshold,
        boolean createSourceMap,
        SourceMap.DetailLevel sourceMapDetailLevel) {
      super(lineLengthThreshold, createSourceMap, sourceMapDetailLevel);
    }

    /**
     * Appends a string to the code, keeping track of the current line length.
     */
    @Override
    void append(String str) {
      // For pretty printing: indent at the beginning of the line
      if (lineLength == 0) {
        for (int i = 0; i < indent; i++) {
          code.append(INDENT);
          lineLength += INDENT.length();
        }
      }
      code.append(str);
      lineLength += str.length();
    }

    /**
     * Adds a newline to the code, resetting the line length and handling
     * indenting for pretty printing.
     */
    @Override
    void startNewLine() {
      if (lineLength > 0) {
        code.append('\n');
        lineIndex++;
        lineLength = 0;
      }
    }

    @Override
    void maybeLineBreak() {
      maybeCutLine();
    }

    /**
     * This may start a new line if the current line is longer than the line
     * length threshold.
     */
    @Override
    void maybeCutLine() {
      if (lineLength > lineLengthThreshold) {
        startNewLine();
      }
    }

    @Override
    void endLine() {
      startNewLine();
    }

    @Override
    void appendBlockStart() {
      append(" {");
      indent++;
    }

    @Override
    void appendBlockEnd() {
      endLine();
      indent--;
      append("}");
    }

    @Override
    void listSeparator() {
      add(", ");
      maybeLineBreak();
    }

    @Override
    void endFunction(boolean statementContext) {
      super.endFunction(statementContext);
      if (statementContext) {
        startNewLine();
      }
    }

    @Override
    void beginCaseBody() {
      super.beginCaseBody();
      indent++;
      endLine();
    }

    @Override
    void endCaseBody() {
      super.endCaseBody();
      indent--;
      endStatement();
    }

    @Override
    void appendOp(String op, boolean binOp) {
      if (binOp) {
        if (getLastChar() != ' ' && op.charAt(0) != ',') {
          append(" ");
        }
        append(op);
        append(" ");
      } else {
        append(op);
      }
    }

    /**
     * If the body of a for loop or the then clause of an if statement has
     * a single statement, should it be wrapped in a block?
     * {@inheritDoc}
     */
    @Override
    boolean shouldPreserveExtraBlocks() {
      // When pretty-printing, always place the statement in its own block
      // so it is printed on a separate line.  This allows breakpoints to be
      // placed on the statement.
      return true;
    }

    /**
     * @return The TRY node for the specified CATCH node.
     */
    private Node getTryForCatch(Node n) {
      return n.getParent().getParent();
    }

    /**
     * @return Whether the a line break should be added after the specified
     * BLOCK.
     */
    @Override
    boolean breakAfterBlockFor(Node n,  boolean isStatementContext) {
      Preconditions.checkState(n.isBlock());
      Node parent = n.getParent();
      if (parent != null) {
        int type = parent.getType();
        switch (type) {
          case Token.DO:
            // Don't break before 'while' in DO-WHILE statements.
            return false;
          case Token.FUNCTION:
            // FUNCTIONs are handled separately, don't break here.
            return false;
          case Token.TRY:
            // Don't break before catch
            return n != parent.getFirstChild();
          case Token.CATCH:
            // Don't break before finally
            return !NodeUtil.hasFinally(getTryForCatch(parent));
          case Token.IF:
            // Don't break before else
            return n == parent.getLastChild();
        }
      }
      return true;
    }

    @Override
    void endFile() {
      maybeEndStatement();
    }
  }


  static class CompactCodePrinter
      extends MappedCodePrinter {

    // The CompactCodePrinter tries to emit just enough newlines to stop there
    // being lines longer than the threshold.  Since the output is going to be
    // gzipped, it makes sense to try to make the newlines appear in similar
    // contexts so that gzip can encode them for 'free'.
    //
    // This version tries to break the lines at 'preferred' places, which are
    // between the top-level forms.  This works because top-level forms tend to
    // be more uniform than arbitrary legal contexts.  Better compression would
    // probably require explicit modeling of the gzip algorithm.

    private final boolean lineBreak;
    private final boolean preferLineBreakAtEndOfFile;
    private int lineStartPosition = 0;
    private int preferredBreakPosition = 0;
    private int prevCutPosition = 0;
    private int prevLineStartPosition = 0;

  /**
   * @param lineBreak break the lines a bit more aggressively
   * @param lineLengthThreshold The length of a line after which we force
   *                            a newline when possible.
   * @param createSrcMap Whether to gather source position
   *                            mapping information when printing.
   * @param sourceMapDetailLevel A filter to control which nodes get mapped into
   *     the source map.
   */
    private CompactCodePrinter(boolean lineBreak,
        boolean preferLineBreakAtEndOfFile, int lineLengthThreshold,
        boolean createSrcMap, SourceMap.DetailLevel sourceMapDetailLevel) {
      super(lineLengthThreshold, createSrcMap, sourceMapDetailLevel);
      int PROBE_START_LINE_436 = 436;
	boolean p_line_break_591_line_436 = lineBreak;
	int PROBE_END_LINE_436 = 436;
	this.lineBreak = p_line_break_591_line_436;
      int PROBE_START_LINE_437 = 437;
	boolean p_prefer_line_break_at_end_of_file_592_line_437 = preferLineBreakAtEndOfFile;
	int PROBE_END_LINE_437 = 437;
	this.preferLineBreakAtEndOfFile = p_prefer_line_break_at_end_of_file_592_line_437;
    }

    /**
     * Appends a string to the code, keeping track of the current line length.
     */
    @Override
    void append(String str) {
      int PROBE_START_LINE_445 = 445;
		StringBuilder f_code_555_line_445 = code;
		String p_str_598_line_445 = str;
		int PROBE_END_LINE_445 = 445;
	f_code_555_line_445.append(p_str_598_line_445);
      int PROBE_START_LINE_446 = 446;
	String p_str_598_line_446 = str;
	int code_printer_1_expr55_line_446 = p_str_598_line_446.length();
	int PROBE_END_LINE_446 = 446;
	lineLength += code_printer_1_expr55_line_446;
    }

    /**
     * Adds a newline to the code, resetting the line length.
     */
    @Override
    void startNewLine() {
      if (lineLength > 0) {
        prevCutPosition = code.length();
        prevLineStartPosition = lineStartPosition;
        code.append('\n');
        lineLength = 0;
        lineIndex++;
        lineStartPosition = code.length();
      }
    }

    @Override
    void maybeLineBreak() {
      int PROBE_START_LINE_466 = 471;
		boolean f_line_break_596_line_466 = lineBreak;
		int PROBE_END_LINE_466 = 471;
	if (f_line_break_596_line_466) {
        if (sawFunction) {
          startNewLine();
          sawFunction = false;
        }
      }

      int PROBE_START_LINE_476 = 476;
	StringBuilder f_code_555_line_476 = code;
	int code_printer_1_expr56_line_476 = f_code_555_line_476.length();
	int PROBE_END_LINE_476 = 476;
	// Since we are at a legal line break, can we upgrade the
      // preferred break position?  We prefer to break after a
      // semicolon rather than before it.
      int len = code_printer_1_expr56_line_476;
      int PROBE_START_LINE_477 = 482;
	int f_preferred_break_position_588_line_477 = preferredBreakPosition;
	int v_len_599_line_477 = len;
	int code_printer_1_expr58_line_477 = v_len_599_line_477 - 1;
	boolean code_printer_1_expr57_line_477 = f_preferred_break_position_588_line_477 == code_printer_1_expr58_line_477;
	int PROBE_END_LINE_477 = 482;
	if (code_printer_1_expr57_line_477) {
        int PROBE_START_LINE_478 = 478;
		StringBuilder f_code_555_line_478 = code;
		int v_len_599_line_478 = len;
		int code_printer_1_expr60_line_478 = v_len_599_line_478 - 1;
		char code_printer_1_expr59_line_478 = f_code_555_line_478.charAt(code_printer_1_expr60_line_478);
		int PROBE_END_LINE_478 = 478;
		char ch = code_printer_1_expr59_line_478;
        int PROBE_START_LINE_479 = 481;
		char v_ch_600_line_479 = ch;
		boolean code_printer_1_expr61_line_479 = v_ch_600_line_479 == ';';
		int PROBE_END_LINE_479 = 481;
		if (code_printer_1_expr61_line_479) {
          int PROBE_START_LINE_480 = 480;
			int v_len_599_line_480 = len;
			int PROBE_END_LINE_480 = 480;
		preferredBreakPosition = v_len_599_line_480;
        }
      }
      maybeCutLine();
    }

    /**
     * This may start a new line if the current line is longer than the line
     * length threshold.
     */
    @Override
    void maybeCutLine() {
      int PROBE_START_LINE_492 = 506;
		int f_line_length_556_line_492 = lineLength;
		int f_line_length_threshold_561_line_492 = lineLengthThreshold;
		boolean code_printer_1_expr64_line_492 = f_line_length_556_line_492 > f_line_length_threshold_561_line_492;
		int PROBE_END_LINE_492 = 506;
	if (code_printer_1_expr64_line_492) {
        // Use the preferred position provided it will break the line.
        if (preferredBreakPosition > lineStartPosition &&
            preferredBreakPosition < lineStartPosition + lineLength) {
          int position = preferredBreakPosition;
          code.insert(position, '\n');
          prevCutPosition = position;
          reportLineCut(lineIndex, position - lineStartPosition, true);
          lineIndex++;
          lineLength -= (position - lineStartPosition);
          lineStartPosition = position + 1;
        } else {
          startNewLine();
        }
      }
    }

    @Override
    void notePreferredLineBreak() {
      int PROBE_START_LINE_511 = 511;
		StringBuilder f_code_555_line_511 = code;
		int code_printer_1_expr66_line_511 = f_code_555_line_511.length();
		int PROBE_END_LINE_511 = 511;
	preferredBreakPosition = code_printer_1_expr66_line_511;
    }

    @Override
    void endFile() {
      super.endFile();
      int PROBE_START_LINE_517 = 519;
	boolean f_prefer_line_break_at_end_of_file_597_line_517 = preferLineBreakAtEndOfFile;
	boolean code_printer_1_expr68_line_517 = !f_prefer_line_break_at_end_of_file_597_line_517;
	int PROBE_END_LINE_517 = 519;
	if (code_printer_1_expr68_line_517) {
        return;
      }
      if (lineLength > lineLengthThreshold / 2) {
        // Add an extra break at end of file.
        append(";");
        startNewLine();
      } else if (prevCutPosition > 0) {
        // Shift the previous break to end of file by replacing it with a
        // <space> and adding a new break at end of file. Adding the space
        // handles cases like instanceof\nfoo. (it would be nice to avoid this)
        code.setCharAt(prevCutPosition, ' ');
        lineStartPosition = prevLineStartPosition;
        lineLength = code.length() - lineStartPosition;
        reportLineCut(lineIndex, prevCutPosition + 1, false);
        lineIndex--;
        prevCutPosition = 0;
        prevLineStartPosition = 0;
        append(";");
        startNewLine();
      } else {
        // A small file with no line breaks. We do nothing in this case to
        // avoid excessive line breaks. It's not ideal if a lot of these pile
        // up, but that is reasonably unlikely.
      }
    }

  }

  static class Builder {
    private final Node root;
    private CompilerOptions options = new CompilerOptions();
    private boolean outputTypes = false;
    private SourceMap sourceMap = null;
    private boolean tagAsStrict;
    private JSTypeRegistry registry;

    /**
     * Sets the root node from which to generate the source code.
     * @param node The root node.
     */
    Builder(Node node) {
      int PROBE_START_LINE_559 = 559;
		com.google.javascript.rhino.Node p_node_604_line_559 = node;
		int PROBE_END_LINE_559 = 559;
	root = p_node_604_line_559;
    }

    /**
     * Sets the output options from compiler options.
     */
    Builder setCompilerOptions(CompilerOptions options) {
      try {
        int PROBE_START_LINE_567 = 567;
		com.google.javascript.jscomp.CompilerOptions p_options_606_line_567 = options;
		Object code_printer_1_expr75_line_567 = p_options_606_line_567.clone();
		int PROBE_END_LINE_567 = 567;
		this.options = (CompilerOptions) code_printer_1_expr75_line_567;
      } catch (CloneNotSupportedException e) {
        throw Throwables.propagate(e);
      }
      return this;
    }

    Builder setTypeRegistry(JSTypeRegistry registry) {
      this.registry = registry;
      return this;
    }

    /**
     * Sets whether pretty printing should be used.
     * @param prettyPrint If true, pretty printing will be used.
     */
    Builder setPrettyPrint(boolean prettyPrint) {
      options.prettyPrint = prettyPrint;
      return this;
    }

    /**
     * Sets whether line breaking should be done automatically.
     * @param lineBreak If true, line breaking is done automatically.
     */
    Builder setLineBreak(boolean lineBreak) {
      options.lineBreak = lineBreak;
      return this;
    }

    /**
     * Sets whether to output closure-style type annotations.
     * @param outputTypes If true, outputs closure-style type annotations.
     */
    Builder setOutputTypes(boolean outputTypes) {
      this.outputTypes = outputTypes;
      return this;
    }

    /**
     * Sets the source map to which to write the metadata about
     * the generated source code.
     *
     * @param sourceMap The source map.
     */
    Builder setSourceMap(SourceMap sourceMap) {
      int PROBE_START_LINE_613 = 613;
		com.google.javascript.jscomp.SourceMap p_source_map_611_line_613 = sourceMap;
		int PROBE_END_LINE_613 = 613;
	this.sourceMap = p_source_map_611_line_613;
      return this;
    }

    /**
     * Set whether the output should be tags as ECMASCRIPT 5 Strict.
     */
    Builder setTagAsStrict(boolean tagAsStrict) {
      int PROBE_START_LINE_621 = 621;
		boolean p_tag_as_strict_612_line_621 = tagAsStrict;
		int PROBE_END_LINE_621 = 621;
	this.tagAsStrict = p_tag_as_strict_612_line_621;
      return this;
    }

    /**
     * Generates the source code and returns it.
     */
    String build() {
      int PROBE_START_LINE_629 = 632;
		com.google.javascript.rhino.Node f_root_605_line_629 = root;
		boolean code_printer_1_expr85_line_629 = f_root_605_line_629 == null;
		int PROBE_END_LINE_629 = 632;
	if (code_printer_1_expr85_line_629) {
        throw new IllegalStateException(
            "Cannot build without root node being specified");
      }

      int PROBE_START_LINE_634 = 638;
	boolean f_output_types_602_line_634 = outputTypes;
	Format code_printer_1_expr86_line_634 = f_output_types_602_line_634
			? Format.TYPED
			: options.prettyPrint ? Format.PRETTY : Format.COMPACT;
	int PROBE_END_LINE_634 = 638;
	Format outputFormat = code_printer_1_expr86_line_634;

      int PROBE_START_LINE_640 = 641;
	com.google.javascript.rhino.Node f_root_605_line_640 = root;
	com.google.javascript.jscomp.CodePrinter.Format v_output_format_614_line_640 = outputFormat;
	com.google.javascript.jscomp.CompilerOptions f_options_601_line_640 = options;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_615_line_640 = registry;
	String code_printer_1_expr88_line_640 = toSource(f_root_605_line_640, v_output_format_614_line_640,
			f_options_601_line_640, f_registry_615_line_640, sourceMap, tagAsStrict);
	int PROBE_END_LINE_640 = 641;
	return code_printer_1_expr88_line_640;
    }
  }

  enum Format {
    COMPACT,
    PRETTY,
    TYPED
  }

  /**
   * Converts a tree to JS code
   */
  private static String toSource(Node root, Format outputFormat,
      CompilerOptions options, JSTypeRegistry registry,
      SourceMap sourceMap,  boolean tagAsStrict) {
    int PROBE_START_LINE_657 = 657;
		com.google.javascript.jscomp.CompilerOptions p_options_621_line_657 = options;
		com.google.javascript.jscomp.SourceMap.DetailLevel q_source_map_detail_level_29_line_657 = p_options_621_line_657.sourceMapDetailLevel;
		boolean code_printer_1_expr90_line_657 = q_source_map_detail_level_29_line_657 != null;
		int PROBE_END_LINE_657 = 657;
	Preconditions.checkState(code_printer_1_expr90_line_657);

    int PROBE_START_LINE_659 = 659;
	com.google.javascript.jscomp.SourceMap p_source_map_623_line_659 = sourceMap;
	boolean code_printer_1_expr92_line_659 = p_source_map_623_line_659 != null;
	boolean code_printer_1_expr91_line_659 = (code_printer_1_expr92_line_659);
	int PROBE_END_LINE_659 = 659;
	boolean createSourceMap = code_printer_1_expr91_line_659;
    MappedCodePrinter mcp =
        outputFormat == Format.COMPACT
        ? new CompactCodePrinter(
            options.lineBreak,
            options.preferLineBreakAtEndOfFile,
            options.lineLengthThreshold,
            createSourceMap,
            options.sourceMapDetailLevel)
        : new PrettyCodePrinter(
            options.lineLengthThreshold,
            createSourceMap,
            options.sourceMapDetailLevel);
    CodeGenerator cg =
        outputFormat == Format.TYPED
        ? new TypedCodeGenerator(mcp, options, registry)
        : new CodeGenerator(mcp, options);

    int PROBE_START_LINE_677 = 679;
	boolean p_tag_as_strict_624_line_677 = tagAsStrict;
	int PROBE_END_LINE_677 = 679;
	if (p_tag_as_strict_624_line_677) {
      cg.tagAsStrict();
    }

    int PROBE_START_LINE_681 = 681;
	com.google.javascript.jscomp.CodeGenerator v_cg_627_line_681 = cg;
	com.google.javascript.rhino.Node p_root_619_line_681 = root;
	int PROBE_END_LINE_681 = 681;
	v_cg_627_line_681.add(p_root_619_line_681);
    int PROBE_START_LINE_682 = 682;
	com.google.javascript.jscomp.CodePrinter.MappedCodePrinter v_mcp_626_line_682 = mcp;
	int PROBE_END_LINE_682 = 682;
	v_mcp_626_line_682.endFile();

    int PROBE_START_LINE_684 = 684;
	com.google.javascript.jscomp.CodePrinter.MappedCodePrinter v_mcp_626_line_684 = mcp;
	String code_printer_1_expr97_line_684 = v_mcp_626_line_684.getCode();
	int PROBE_END_LINE_684 = 684;
	String code = code_printer_1_expr97_line_684;

    int PROBE_START_LINE_686 = 688;
	boolean v_create_source_map_625_line_686 = createSourceMap;
	int PROBE_END_LINE_686 = 688;
	if (v_create_source_map_625_line_686) {
      mcp.generateSourceMap(sourceMap);
    }

    int PROBE_START_LINE_690 = 690;
	String v_code_628_line_690 = code;
	int PROBE_END_LINE_690 = 690;
	return v_code_628_line_690;
  }
}
