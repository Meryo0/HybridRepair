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

import com.google.javascript.jscomp.CheckLevel;

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
    int PROBE_START_LINE_54 = 54;
	String p_name_1282_line_54 = name;
	com.google.javascript.jscomp.CheckLevel q_error_49_line_54 = CheckLevel.ERROR;
	String p_description_format_1283_line_54 = descriptionFormat;
	com.google.javascript.jscomp.DiagnosticType diagnostic_type_1_expr1_line_54 = make(p_name_1282_line_54,
			q_error_49_line_54, p_description_format_1283_line_54);
	int PROBE_END_LINE_54 = 54;
	return diagnostic_type_1_expr1_line_54;
  }

  /**
   * Create a DiagnosticType at level CheckLevel.WARNING
   *
   * @param name An identifier
   * @param descriptionFormat A format string
   * @return A new DiagnosticType
   */
  public static DiagnosticType warning(String name, String descriptionFormat) {
    int PROBE_START_LINE_65 = 65;
	String p_name_1284_line_65 = name;
	com.google.javascript.jscomp.CheckLevel q_warning_49_line_65 = CheckLevel.WARNING;
	String p_description_format_1285_line_65 = descriptionFormat;
	com.google.javascript.jscomp.DiagnosticType diagnostic_type_1_expr2_line_65 = make(p_name_1284_line_65,
			q_warning_49_line_65, p_description_format_1285_line_65);
	int PROBE_END_LINE_65 = 65;
	return diagnostic_type_1_expr2_line_65;
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
    int PROBE_START_LINE_77 = 77;
		String p_name_1286_line_77 = name;
		com.google.javascript.jscomp.CheckLevel q_off_49_line_77 = CheckLevel.OFF;
		String p_description_format_1287_line_77 = descriptionFormat;
		com.google.javascript.jscomp.DiagnosticType diagnostic_type_1_expr3_line_77 = make(p_name_1286_line_77,
				q_off_49_line_77, p_description_format_1287_line_77);
		int PROBE_END_LINE_77 = 77;
	return diagnostic_type_1_expr3_line_77;
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
    int PROBE_START_LINE_98 = 98;
	String p_key_1291_line_98 = key;
	int PROBE_END_LINE_98 = 98;
	this.key = p_key_1291_line_98;
    int PROBE_START_LINE_99 = 99;
	com.google.javascript.jscomp.CheckLevel p_level_1292_line_99 = level;
	int PROBE_END_LINE_99 = 99;
	this.defaultLevel = p_level_1292_line_99;
    int PROBE_START_LINE_100 = 100;
	java.text.MessageFormat p_format_1293_line_100 = format;
	int PROBE_END_LINE_100 = 100;
	this.format = p_format_1293_line_100;

    int PROBE_START_LINE_102 = 102;
	com.google.javascript.jscomp.CheckLevel f_default_level_1295_line_102 = this.defaultLevel;
	int PROBE_END_LINE_102 = 102;
	this.level = f_default_level_1295_line_102;
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
    int PROBE_START_LINE_115 = 116;
	Object p_type_1299_line_115 = type;
	boolean diagnostic_type_1_expr20_line_115 = p_type_1299_line_115 instanceof DiagnosticType;
	boolean diagnostic_type_1_expr19_line_115 = diagnostic_type_1_expr20_line_115
			&& ((DiagnosticType) type).key.equals(key);
	int PROBE_END_LINE_115 = 116;
	return diagnostic_type_1_expr19_line_115;
  }

  @Override
  public int hashCode() {
    int PROBE_START_LINE_121 = 121;
	String f_key_1294_line_121 = key;
	int diagnostic_type_1_expr21_line_121 = f_key_1294_line_121.hashCode();
	int PROBE_END_LINE_121 = 121;
	return diagnostic_type_1_expr21_line_121;
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
