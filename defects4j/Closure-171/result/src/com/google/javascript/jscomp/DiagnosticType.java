/*
 * Copyright 2008 The Closure Compiler Authors.
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

import java.io.Serializable;
import java.text.MessageFormat;

/**
 * The type of a compile or analysis error.
 *
 */
public class DiagnosticType
    implements Comparable<DiagnosticType>, Serializable {
  private static final long serialVersionUID = 1;

  /**
   * The error type. Used as the BugPattern and BugInstance types by
   * BugBot's XML
   */
  public final String key;

  /** The default way to format errors */
  public final MessageFormat format;

  /** Default level */
  public final CheckLevel defaultLevel;

  /** Reporting level, initially the defaultLevel but may be changed. */
  public CheckLevel level;

  /**
   * Create a DiagnosticType at level CheckLevel.ERROR
   *
   * @param name An identifier
   * @param descriptionFormat A format string
   * @return A new DiagnosticType
   */
  public static DiagnosticType error(String name, String descriptionFormat) {
    int PROBE_START_LINE_52 = 52;
	String p_name_1700_line_52 = name;
	com.google.javascript.jscomp.CheckLevel q_error_71_line_52 = CheckLevel.ERROR;
	String p_description_format_1701_line_52 = descriptionFormat;
	com.google.javascript.jscomp.DiagnosticType diagnostic_type_1_expr1_line_52 = make(p_name_1700_line_52,
			q_error_71_line_52, p_description_format_1701_line_52);
	int PROBE_END_LINE_52 = 52;
	return diagnostic_type_1_expr1_line_52;
  }

  /**
   * Create a DiagnosticType at level CheckLevel.WARNING
   *
   * @param name An identifier
   * @param descriptionFormat A format string
   * @return A new DiagnosticType
   */
  public static DiagnosticType warning(String name, String descriptionFormat) {
    int PROBE_START_LINE_63 = 63;
	String p_name_1702_line_63 = name;
	com.google.javascript.jscomp.CheckLevel q_warning_71_line_63 = CheckLevel.WARNING;
	String p_description_format_1703_line_63 = descriptionFormat;
	com.google.javascript.jscomp.DiagnosticType diagnostic_type_1_expr2_line_63 = make(p_name_1702_line_63,
			q_warning_71_line_63, p_description_format_1703_line_63);
	int PROBE_END_LINE_63 = 63;
	return diagnostic_type_1_expr2_line_63;
  }

  /**
   * Create a DiagnosticType at level CheckLevel.OFF
   *
   * @param name An identifier
   * @param descriptionFormat A format string
   * @return A new DiagnosticType
   */
  public static DiagnosticType disabled(String name,
      String descriptionFormat) {
    int PROBE_START_LINE_75 = 75;
		String p_name_1704_line_75 = name;
		com.google.javascript.jscomp.CheckLevel q_off_71_line_75 = CheckLevel.OFF;
		String p_description_format_1705_line_75 = descriptionFormat;
		com.google.javascript.jscomp.DiagnosticType diagnostic_type_1_expr3_line_75 = make(p_name_1704_line_75,
				q_off_71_line_75, p_description_format_1705_line_75);
		int PROBE_END_LINE_75 = 75;
	return diagnostic_type_1_expr3_line_75;
  }

  /**
   * Create a DiagnosticType at a given CheckLevel.
   *
   * @param name An identifier
   * @param level Either CheckLevel.ERROR or CheckLevel.WARNING
   * @param descriptionFormat A format string
   * @return A new DiagnosticType
   */
  public static DiagnosticType make(String name, CheckLevel level,
                                    String descriptionFormat) {
    return
        new DiagnosticType(name, level, new MessageFormat(descriptionFormat));
  }

  /**
   * Create a DiagnosticType. Private to force use of static factory methods.
   */
  private DiagnosticType(String key, CheckLevel level, MessageFormat format) {
    int PROBE_START_LINE_96 = 96;
	String p_key_1709_line_96 = key;
	int PROBE_END_LINE_96 = 96;
	this.key = p_key_1709_line_96;
    int PROBE_START_LINE_97 = 97;
	com.google.javascript.jscomp.CheckLevel p_level_1710_line_97 = level;
	int PROBE_END_LINE_97 = 97;
	this.defaultLevel = p_level_1710_line_97;
    int PROBE_START_LINE_98 = 98;
	java.text.MessageFormat p_format_1711_line_98 = format;
	int PROBE_END_LINE_98 = 98;
	this.format = p_format_1711_line_98;

    int PROBE_START_LINE_100 = 100;
	com.google.javascript.jscomp.CheckLevel f_default_level_1713_line_100 = this.defaultLevel;
	int PROBE_END_LINE_100 = 100;
	this.level = f_default_level_1713_line_100;
  }

  /**
   * Create a description from the MessageFormat and the arguments.
   * Used by unit tests.
   */
  String format(Object ... arguments) {
    return format.format(arguments);
  }

  @Override
  public boolean equals(Object type) {
    int PROBE_START_LINE_113 = 114;
	Object p_type_1717_line_113 = type;
	boolean diagnostic_type_1_expr20_line_113 = p_type_1717_line_113 instanceof DiagnosticType;
	boolean diagnostic_type_1_expr19_line_113 = diagnostic_type_1_expr20_line_113
			&& ((DiagnosticType) type).key.equals(key);
	int PROBE_END_LINE_113 = 114;
	return diagnostic_type_1_expr19_line_113;
  }

  @Override
  public int hashCode() {
    int PROBE_START_LINE_119 = 119;
	String f_key_1712_line_119 = key;
	int diagnostic_type_1_expr21_line_119 = f_key_1712_line_119.hashCode();
	int PROBE_END_LINE_119 = 119;
	return diagnostic_type_1_expr21_line_119;
  }

  @Override
  public int compareTo(DiagnosticType diagnosticType) {
    return key.compareTo(diagnosticType.key);
  }

  @Override
  public String toString() {
    return key + ": " + format.toPattern();
  }
}
