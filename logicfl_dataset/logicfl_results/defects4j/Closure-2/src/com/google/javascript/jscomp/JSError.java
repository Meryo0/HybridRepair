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

import javax.annotation.Nullable;
import java.text.MessageFormat;

/**
 * Compile error description
 *
 */
public class JSError {
  /** A type of the error */
  private final DiagnosticType type;

  /** Description of the error */
  public final String description;

  /** Name of the source */
  public final String sourceName;

  /** Node where the warning occurred. */
  final Node node;

  /** Line number of the source */
  public final int lineNumber;

  /** @deprecated Use #getDefaultLevel */
  @Deprecated
  public final CheckLevel level;

  private final CheckLevel defaultLevel;

  // character number
  private final int charno;

  //
  // JSError.make - static factory methods for creating JSError objects
  //
  //  The general form of the arguments is
  //
  //    [source location] [level] DiagnosticType [argument ...]
  //
  //  This order echos a typical command line diagnostic.  Source location
  //  arguments are arranged to be sources of information in the order
  //  file-line-column.
  //
  //  If the level is not given, it is taken from the level of the
  //  DiagnosticType.


  /**
   * Creates a JSError with no source information
   *
   * @param type The DiagnosticType
   * @param arguments Arguments to be incorporated into the message
   */
  public static JSError make(DiagnosticType type, String... arguments) {
    return new JSError(null, null, -1, -1, type, null, arguments);
  }

  /**
   * Creates a JSError at a given source location
   *
   * @param sourceName The source file name
   * @param lineno Line number with source file, or -1 if unknown
   * @param charno Column number within line, or -1 for whole line.
   * @param type The DiagnosticType
   * @param arguments Arguments to be incorporated into the message
   */
  public static JSError make(String sourceName, int lineno, int charno,
                             DiagnosticType type, String... arguments) {
    int PROBE_START_LINE_87 = 87;
								String p_source_name_1539_line_87 = sourceName;
								int p_lineno_1540_line_87 = lineno;
								int p_charno_1541_line_87 = charno;
								com.google.javascript.jscomp.DiagnosticType p_type_1542_line_87 = type;
								String[] p_arguments_1543_line_87 = arguments;
								int PROBE_END_LINE_87 = 87;
	return new JSError(p_source_name_1539_line_87, null, p_lineno_1540_line_87, p_charno_1541_line_87, p_type_1542_line_87, null, p_arguments_1543_line_87);
  }

  /**
   * Creates a JSError at a given source location
   *
   * @param sourceName The source file name
   * @param lineno Line number with source file, or -1 if unknown
   * @param charno Column number within line, or -1 for whole line.
   * @param type The DiagnosticType
   * @param arguments Arguments to be incorporated into the message
   */
  public static JSError make(String sourceName, int lineno, int charno,
      CheckLevel level, DiagnosticType type, String... arguments) {
    return new JSError(
        sourceName, null, lineno, charno, type, level, arguments);
  }

  /**
   * Creates a JSError from a file and Node position.
   *
   * @param sourceName The source file name
   * @param n Determines the line and char position within the source file name
   * @param type The DiagnosticType
   * @param arguments Arguments to be incorporated into the message
   */
  public static JSError make(String sourceName, Node n,
                             DiagnosticType type, String... arguments) {
    return new JSError(sourceName, n, type, arguments);
  }

  /**
   * Creates a JSError from a file and Node position.
   *
   * @param n Determines the line and char position and source file name
   * @param type The DiagnosticType
   * @param arguments Arguments to be incorporated into the message
   */
  public static JSError make(Node n, DiagnosticType type, String... arguments) {
    return new JSError(n.getSourceFileName(), n, type, arguments);
  }

  /**
   * Creates a JSError from a file and Node position.
   *
   * @param sourceName The source file name
   * @param n Determines the line and char position within the source file name
   * @param type The DiagnosticType
   * @param arguments Arguments to be incorporated into the message
   */
  public static JSError make(String sourceName, Node n, CheckLevel level,
      DiagnosticType type, String... arguments) {

    return new JSError(sourceName, n, n.getLineno(), n.getCharno(), type, level,
        arguments);
  }

  //
  //  JSError constructors
  //

  /**
   * Creates a JSError at a CheckLevel for a source file location.
   * Private to avoid any entanglement with code outside of the compiler.
   */
  private JSError(
      String sourceName, @Nullable Node node, int lineno, int charno,
      DiagnosticType type, CheckLevel level, String... arguments) {
    int PROBE_START_LINE_155 = 155;
		com.google.javascript.jscomp.DiagnosticType p_type_1566_line_155 = type;
		int PROBE_END_LINE_155 = 155;
	this.type = p_type_1566_line_155;
    int PROBE_START_LINE_156 = 156;
	com.google.javascript.rhino.Node p_node_1563_line_156 = node;
	int PROBE_END_LINE_156 = 156;
	this.node = p_node_1563_line_156;
    int PROBE_START_LINE_157 = 157;
	com.google.javascript.jscomp.DiagnosticType p_type_1566_line_157 = type;
	java.text.MessageFormat q_format_49_line_157 = p_type_1566_line_157.format;
	String[] p_arguments_1568_line_157 = arguments;
	String jserror_1_expr10_line_157 = q_format_49_line_157.format(p_arguments_1568_line_157);
	int PROBE_END_LINE_157 = 157;
	this.description = jserror_1_expr10_line_157;
    int PROBE_START_LINE_158 = 158;
	int p_lineno_1564_line_158 = lineno;
	int PROBE_END_LINE_158 = 158;
	this.lineNumber = p_lineno_1564_line_158;
    int PROBE_START_LINE_159 = 159;
	int p_charno_1565_line_159 = charno;
	int PROBE_END_LINE_159 = 159;
	this.charno = p_charno_1565_line_159;
    int PROBE_START_LINE_160 = 160;
	String p_source_name_1562_line_160 = sourceName;
	int PROBE_END_LINE_160 = 160;
	this.sourceName = p_source_name_1562_line_160;
    int PROBE_START_LINE_161 = 161;
	com.google.javascript.jscomp.CheckLevel p_level_1567_line_161 = level;
	boolean jserror_1_expr25_line_161 = p_level_1567_line_161 == null;
	com.google.javascript.jscomp.CheckLevel q_level_50_line_161 = null;
	com.google.javascript.jscomp.CheckLevel p_level_1567_line_161_v1 = null;
	if (jserror_1_expr25_line_161) {
		com.google.javascript.jscomp.DiagnosticType p_type_1566_line_161 = type;
		q_level_50_line_161 = p_type_1566_line_161.level;
	} else {
		p_level_1567_line_161_v1 = level;
	}
	com.google.javascript.jscomp.CheckLevel jserror_1_expr23_line_161 = jserror_1_expr25_line_161
			? q_level_50_line_161
			: p_level_1567_line_161_v1;
	int PROBE_END_LINE_161 = 161;
	this.defaultLevel = jserror_1_expr23_line_161;
    int PROBE_START_LINE_162 = 162;
	com.google.javascript.jscomp.CheckLevel p_level_1567_line_162 = level;
	boolean jserror_1_expr30_line_162 = p_level_1567_line_162 == null;
	com.google.javascript.jscomp.CheckLevel q_level_51_line_162 = null;
	com.google.javascript.jscomp.CheckLevel p_level_1567_line_162_v1 = null;
	if (jserror_1_expr30_line_162) {
		com.google.javascript.jscomp.DiagnosticType p_type_1566_line_162 = type;
		q_level_51_line_162 = p_type_1566_line_162.level;
	} else {
		p_level_1567_line_162_v1 = level;
	}
	com.google.javascript.jscomp.CheckLevel jserror_1_expr28_line_162 = jserror_1_expr30_line_162
			? q_level_51_line_162
			: p_level_1567_line_162_v1;
	int PROBE_END_LINE_162 = 162;
	this.level = jserror_1_expr28_line_162;
  }

  /**
   * Creates a JSError for a source file location.  Private to avoid
   * any entanglement with code outside of the compiler.
   */
  private JSError(String sourceName, @Nullable Node node,
                  DiagnosticType type, String... arguments) {
    this(sourceName,
         node,
         (node != null) ? node.getLineno() : -1,
         (node != null) ? node.getCharno() : -1,
         type, null, arguments);
  }

  public DiagnosticType getType() {
    int PROBE_START_LINE_179 = 179;
	com.google.javascript.jscomp.DiagnosticType f_type_1569_line_179 = type;
	int PROBE_END_LINE_179 = 179;
	return f_type_1569_line_179;
  }

  /**
   * Format a message at the given level.
   *
   * @return the formatted message or {@code null}
   */
  public String format(CheckLevel level, MessageFormatter formatter) {
    switch (level) {
      case ERROR:
        return formatter.formatError(this);

      case WARNING:
        return formatter.formatWarning(this);

      default:
        return null;
    }
  }

  @Override
  public String toString() {
    // TODO(user): remove custom toString.
    return type.key + ". " + description + " at " +
      (sourceName != null && sourceName.length() > 0 ?
       sourceName : "(unknown source)") + " line " +
      (lineNumber != -1 ? String.valueOf(lineNumber) : "(unknown line)") +
      " : " + (charno != -1 ? String.valueOf(charno) : "(unknown column)");
  }

  /**
   * Get the character number.
   */
  public int getCharno() {
    int PROBE_START_LINE_214 = 214;
	int f_charno_1572_line_214 = charno;
	int PROBE_END_LINE_214 = 214;
	return f_charno_1572_line_214;
  }

  /**
   * Get the line number. One-based.
   */
  public int getLineNumber() {
    return lineNumber;
  }

  /**
   * @return the offset of the region the Error applies to, or -1 if the offset
   *         is unknown.
   */
  public int getNodeSourceOffset() {
    return node != null ? node.getSourceOffset() : -1;
  }

  /**
   * @return the length of the region the Error applies to, or 0 if the length
   *         is unknown.
   */
  public int getNodeLength() {
    return node != null ? node.getLength() : 0;
  }

  /** The default level, before any of the WarningsGuards are applied. */
  public CheckLevel getDefaultLevel() {
    int PROBE_START_LINE_242 = 242;
	com.google.javascript.jscomp.CheckLevel f_default_level_1574_line_242 = defaultLevel;
	int PROBE_END_LINE_242 = 242;
	return f_default_level_1574_line_242;
  }

  @Override
  public boolean equals(Object o) {
    // Generated by Intellij IDEA
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }

    JSError jsError = (JSError) o;

    if (charno != jsError.charno) {
      return false;
    }
    if (lineNumber != jsError.lineNumber) {
      return false;
    }
    if (!description.equals(jsError.description)) {
      return false;
    }
    if (defaultLevel != jsError.defaultLevel) {
      return false;
    }
    if (sourceName != null ? !sourceName.equals(jsError.sourceName)
        : jsError.sourceName != null) {
      return false;
    }
    if (!type.equals(jsError.type)) {
      return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    // Generated by Intellij IDEA
    int result = type.hashCode();
    result = 31 * result + description.hashCode();
    result = 31 * result + (sourceName != null ? sourceName.hashCode() : 0);
    result = 31 * result + lineNumber;
    result = 31 * result + defaultLevel.hashCode();
    result = 31 * result + charno;
    return result;
  }
}
