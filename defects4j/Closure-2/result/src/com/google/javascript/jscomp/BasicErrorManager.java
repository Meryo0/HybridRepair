/*
 * Copyright 2007 The Closure Compiler Authors.
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

import com.google.common.collect.Sets;
import com.google.javascript.jscomp.CheckLevel;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.SortedSet;

/**
 * <p>A basic error manager that sorts all errors and warnings reported to it to
 * generate a sorted report when the {@link #generateReport()} method
 * is called.</p>
 *
 * <p>This error manager does not produce any output, but subclasses can
 * override the {@link #println(CheckLevel, JSError)} method to generate custom
 * output.</p>
 *
 */
public abstract class BasicErrorManager implements ErrorManager {
  private final SortedSet<ErrorWithLevel> messages =
      Sets.newTreeSet(new LeveledJSErrorComparator());
  private int errorCount = 0;
  private int warningCount = 0;
  private double typedPercent = 0.0;

  @Override
  public void report(CheckLevel level, JSError error) {
    int PROBE_START_LINE_46 = 52;
	SortedSet<com.google.javascript.jscomp.BasicErrorManager.ErrorWithLevel> f_messages_52_line_46 = messages;
	com.google.javascript.jscomp.JSError p_error_57_line_46 = error;
	com.google.javascript.jscomp.CheckLevel p_level_56_line_46 = level;
	boolean basic_error_manager_1_expr2_line_46 = f_messages_52_line_46
			.add(new ErrorWithLevel(p_error_57_line_46, p_level_56_line_46));
	int PROBE_END_LINE_46 = 52;
	if (basic_error_manager_1_expr2_line_46) {
      int PROBE_START_LINE_47 = 51;
		com.google.javascript.jscomp.CheckLevel p_level_56_line_47 = level;
		com.google.javascript.jscomp.CheckLevel q_error_4_line_47 = CheckLevel.ERROR;
		boolean basic_error_manager_1_expr4_line_47 = p_level_56_line_47 == q_error_4_line_47;
		int PROBE_END_LINE_47 = 51;
	if (basic_error_manager_1_expr4_line_47) {
        errorCount++;
      } else {
		int PROBE_START_LINE_49 = 51;
		com.google.javascript.jscomp.CheckLevel p_level_56_line_49 = level;
		com.google.javascript.jscomp.CheckLevel q_warning_5_line_49 = CheckLevel.WARNING;
		boolean basic_error_manager_1_expr5_line_49 = p_level_56_line_49 == q_warning_5_line_49;
		int PROBE_END_LINE_49 = 51;
		if (basic_error_manager_1_expr5_line_49) {
			warningCount++;
		}
	}
    }
  }

  @Override
  public void generateReport() {
    for (ErrorWithLevel message : messages) {
      println(message.level, message.error);
    }
    printSummary();
  }

  /**
   * Print a message with a trailing new line. This method is called by the
   * {@link #generateReport()} method when generating messages.
   */
  public abstract void println(CheckLevel level, JSError error);

  /**
   * Print the summary of the compilation - number of errors and warnings.
   */
  protected abstract void printSummary();

  @Override
  public int getErrorCount() {
    int PROBE_START_LINE_76 = 76;
	int f_error_count_53_line_76 = errorCount;
	int PROBE_END_LINE_76 = 76;
	return f_error_count_53_line_76;
  }

  @Override
  public int getWarningCount() {
    return warningCount;
  }

  @Override
  public JSError[] getErrors() {
    return toArray(CheckLevel.ERROR);
  }

  @Override
  public JSError[] getWarnings() {
    return toArray(CheckLevel.WARNING);
  }

  @Override
  public void setTypedPercent(double typedPercent) {
    this.typedPercent = typedPercent;
  }

  @Override
  public double getTypedPercent() {
    return typedPercent;
  }

  private JSError[] toArray(CheckLevel level) {
    List<JSError> errors = new ArrayList<JSError>(messages.size());
    for (ErrorWithLevel p : messages) {
      if (p.level == level) {
        errors.add(p.error);
      }
    }
    return errors.toArray(new JSError[errors.size()]);
  }

  /**
   * <p>Comparator of {@link JSError} with an associated {@link CheckLevel}.
   * The ordering is the standard lexical ordering on the quintuple
   * (file name, line number, {@link CheckLevel},
   * character number, description).</p>
   *
   * <p>Note: this comparator imposes orderings that are inconsistent with
   * {@link JSError#equals(Object)}.</p>
   */
  static final class LeveledJSErrorComparator
      implements Comparator<ErrorWithLevel> {
    private static final int P1_LT_P2 = -1;
    private static final int P1_GT_P2 = 1;

    @Override
    public int compare(ErrorWithLevel p1, ErrorWithLevel p2) {
      int PROBE_START_LINE_131 = 137;
		com.google.javascript.jscomp.BasicErrorManager.ErrorWithLevel p_p_2_63_line_131 = p2;
		boolean basic_error_manager_1_expr7_line_131 = p_p_2_63_line_131 == null;
		int PROBE_END_LINE_131 = 137;
	// null is the smallest value
      if (basic_error_manager_1_expr7_line_131) {
        if (p1 == null) {
          return 0;
        } else {
          return P1_GT_P2;
        }
      }

      int PROBE_START_LINE_140 = 142;
	com.google.javascript.jscomp.BasicErrorManager.ErrorWithLevel p_p_1_62_line_140 = p1;
	com.google.javascript.jscomp.CheckLevel q_level_6_line_140 = p_p_1_62_line_140.level;
	com.google.javascript.jscomp.BasicErrorManager.ErrorWithLevel p_p_2_63_line_140 = p2;
	com.google.javascript.jscomp.CheckLevel q_level_7_line_140 = p_p_2_63_line_140.level;
	boolean basic_error_manager_1_expr8_line_140 = q_level_6_line_140 != q_level_7_line_140;
	int PROBE_END_LINE_140 = 142;
	// check level
      if (basic_error_manager_1_expr8_line_140) {
        return p2.level.compareTo(p1.level);
      }

      int PROBE_START_LINE_145 = 145;
	String q_source_name_8_line_145 = p1.error.sourceName;
	int PROBE_END_LINE_145 = 145;
	// sourceName comparison
      String source1 = q_source_name_8_line_145;
      int PROBE_START_LINE_146 = 146;
	String q_source_name_9_line_146 = p2.error.sourceName;
	int PROBE_END_LINE_146 = 146;
	String source2 = q_source_name_9_line_146;
      int PROBE_START_LINE_147 = 156;
	String v_source_1_64_line_147 = source1;
	boolean basic_error_manager_1_expr10_line_147 = v_source_1_64_line_147 != null;
	boolean basic_error_manager_1_expr11_line_147 = true;
	if (basic_error_manager_1_expr10_line_147) {
		String v_source_2_65_line_147 = source2;
		basic_error_manager_1_expr11_line_147 = v_source_2_65_line_147 != null;
	}
	boolean basic_error_manager_1_expr9_line_147 = basic_error_manager_1_expr10_line_147
			&& basic_error_manager_1_expr11_line_147;
	int PROBE_END_LINE_147 = 156;
	if (basic_error_manager_1_expr9_line_147) {
        int PROBE_START_LINE_148 = 148;
		String v_source_1_64_line_148 = source1;
		String v_source_2_65_line_148 = source2;
		int basic_error_manager_1_expr12_line_148 = v_source_1_64_line_148.compareTo(v_source_2_65_line_148);
		int PROBE_END_LINE_148 = 148;
		int sourceCompare = basic_error_manager_1_expr12_line_148;
        int PROBE_START_LINE_149 = 151;
		int v_source_compare_66_line_149 = sourceCompare;
		boolean basic_error_manager_1_expr13_line_149 = v_source_compare_66_line_149 != 0;
		int PROBE_END_LINE_149 = 151;
		if (basic_error_manager_1_expr13_line_149) {
          return sourceCompare;
        }
      } else {
		int PROBE_START_LINE_152 = 156;
		String v_source_1_64_line_152 = source1;
		boolean basic_error_manager_1_expr15_line_152 = v_source_1_64_line_152 == null;
		boolean basic_error_manager_1_expr16_line_152 = true;
		if (basic_error_manager_1_expr15_line_152) {
			String v_source_2_65_line_152 = source2;
			basic_error_manager_1_expr16_line_152 = v_source_2_65_line_152 != null;
		}
		boolean basic_error_manager_1_expr14_line_152 = basic_error_manager_1_expr15_line_152
				&& basic_error_manager_1_expr16_line_152;
		int PROBE_END_LINE_152 = 156;
		if (basic_error_manager_1_expr14_line_152) {
			return P1_LT_P2;
		} else if (source1 != null && source2 == null) {
			return P1_GT_P2;
		}
	}
      int PROBE_START_LINE_158 = 158;
	int q_line_number_10_line_158 = p1.error.lineNumber;
	int PROBE_END_LINE_158 = 158;
	// lineno comparison
      int lineno1 = q_line_number_10_line_158;
      int PROBE_START_LINE_159 = 159;
	int q_line_number_11_line_159 = p2.error.lineNumber;
	int PROBE_END_LINE_159 = 159;
	int lineno2 = q_line_number_11_line_159;
      int PROBE_START_LINE_160 = 166;
	int v_lineno_1_67_line_160 = lineno1;
	int v_lineno_2_68_line_160 = lineno2;
	boolean basic_error_manager_1_expr17_line_160 = v_lineno_1_67_line_160 != v_lineno_2_68_line_160;
	int PROBE_END_LINE_160 = 166;
	if (basic_error_manager_1_expr17_line_160) {
        int PROBE_START_LINE_161 = 161;
		int v_lineno_1_67_line_161 = lineno1;
		int v_lineno_2_68_line_161 = lineno2;
		int basic_error_manager_1_expr18_line_161 = v_lineno_1_67_line_161 - v_lineno_2_68_line_161;
		int PROBE_END_LINE_161 = 161;
		return basic_error_manager_1_expr18_line_161;
      } else {
		int PROBE_START_LINE_162 = 166;
		int v_lineno_1_67_line_162 = lineno1;
		boolean basic_error_manager_1_expr20_line_162 = v_lineno_1_67_line_162 < 0;
		boolean basic_error_manager_1_expr21_line_162 = true;
		if (basic_error_manager_1_expr20_line_162) {
			int v_lineno_2_68_line_162 = lineno2;
			basic_error_manager_1_expr21_line_162 = 0 <= v_lineno_2_68_line_162;
		}
		boolean basic_error_manager_1_expr19_line_162 = basic_error_manager_1_expr20_line_162
				&& basic_error_manager_1_expr21_line_162;
		int PROBE_END_LINE_162 = 166;
		if (basic_error_manager_1_expr19_line_162) {
			return P1_LT_P2;
		} else {
			int PROBE_START_LINE_164 = 166;
			int v_lineno_1_67_line_164 = lineno1;
			boolean basic_error_manager_1_expr23_line_164 = 0 <= v_lineno_1_67_line_164;
			boolean basic_error_manager_1_expr24_line_164 = true;
			if (basic_error_manager_1_expr23_line_164) {
				int v_lineno_2_68_line_164 = lineno2;
				basic_error_manager_1_expr24_line_164 = v_lineno_2_68_line_164 < 0;
			}
			boolean basic_error_manager_1_expr22_line_164 = basic_error_manager_1_expr23_line_164
					&& basic_error_manager_1_expr24_line_164;
			int PROBE_END_LINE_164 = 166;
			if (basic_error_manager_1_expr22_line_164) {
				return P1_GT_P2;
			}
		}
	}
      int PROBE_START_LINE_168 = 168;
	com.google.javascript.jscomp.BasicErrorManager.ErrorWithLevel p_p_1_62_line_168 = p1;
	com.google.javascript.jscomp.JSError q_error_12_line_168 = p_p_1_62_line_168.error;
	int basic_error_manager_1_expr25_line_168 = q_error_12_line_168.getCharno();
	int PROBE_END_LINE_168 = 168;
	// charno comparison
      int charno1 = basic_error_manager_1_expr25_line_168;
      int PROBE_START_LINE_169 = 169;
	com.google.javascript.jscomp.BasicErrorManager.ErrorWithLevel p_p_2_63_line_169 = p2;
	com.google.javascript.jscomp.JSError q_error_13_line_169 = p_p_2_63_line_169.error;
	int basic_error_manager_1_expr26_line_169 = q_error_13_line_169.getCharno();
	int PROBE_END_LINE_169 = 169;
	int charno2 = basic_error_manager_1_expr26_line_169;
      int PROBE_START_LINE_170 = 176;
	int v_charno_1_69_line_170 = charno1;
	int v_charno_2_71_line_170 = charno2;
	boolean basic_error_manager_1_expr27_line_170 = v_charno_1_69_line_170 != v_charno_2_71_line_170;
	int PROBE_END_LINE_170 = 176;
	if (basic_error_manager_1_expr27_line_170) {
        return charno1 - charno2;
      } else {
		int PROBE_START_LINE_172 = 176;
		int v_charno_1_69_line_172 = charno1;
		boolean basic_error_manager_1_expr29_line_172 = v_charno_1_69_line_172 < 0;
		boolean basic_error_manager_1_expr30_line_172 = true;
		if (basic_error_manager_1_expr29_line_172) {
			int v_charno_2_71_line_172 = charno2;
			basic_error_manager_1_expr30_line_172 = 0 <= v_charno_2_71_line_172;
		}
		boolean basic_error_manager_1_expr28_line_172 = basic_error_manager_1_expr29_line_172
				&& basic_error_manager_1_expr30_line_172;
		int PROBE_END_LINE_172 = 176;
		if (basic_error_manager_1_expr28_line_172) {
			return P1_LT_P2;
		} else {
			int PROBE_START_LINE_174 = 176;
			int v_charno_1_69_line_174 = charno1;
			boolean basic_error_manager_1_expr32_line_174 = 0 <= v_charno_1_69_line_174;
			boolean basic_error_manager_1_expr33_line_174 = true;
			if (basic_error_manager_1_expr32_line_174) {
				int v_charno_2_71_line_174 = charno2;
				basic_error_manager_1_expr33_line_174 = v_charno_2_71_line_174 < 0;
			}
			boolean basic_error_manager_1_expr31_line_174 = basic_error_manager_1_expr32_line_174
					&& basic_error_manager_1_expr33_line_174;
			int PROBE_END_LINE_174 = 176;
			if (basic_error_manager_1_expr31_line_174) {
				return P1_GT_P2;
			}
		}
	}
      int PROBE_START_LINE_178 = 178;
	String q_description_15_line_178 = p1.error.description;
	String q_description_14_line_178 = p2.error.description;
	int basic_error_manager_1_expr34_line_178 = q_description_15_line_178.compareTo(q_description_14_line_178);
	int PROBE_END_LINE_178 = 178;
	// description
      return basic_error_manager_1_expr34_line_178;
    }
  }

  static class ErrorWithLevel {
    final JSError error;
    final CheckLevel level;

    ErrorWithLevel(JSError error, CheckLevel level) {
      int PROBE_START_LINE_187 = 187;
		com.google.javascript.jscomp.JSError p_error_73_line_187 = error;
		int PROBE_END_LINE_187 = 187;
	this.error = p_error_73_line_187;
      int PROBE_START_LINE_188 = 188;
	com.google.javascript.jscomp.CheckLevel p_level_74_line_188 = level;
	int PROBE_END_LINE_188 = 188;
	this.level = p_level_74_line_188;
    }
  }
}
