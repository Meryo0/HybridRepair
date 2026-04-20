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


/**
 * Sets the level for a particular DiagnosticGroup.
 * @author nicksantos@google.com (Nick Santos)
 */
public class DiagnosticGroupWarningsGuard extends WarningsGuard {
  private static final long serialVersionUID = 1L;

  final DiagnosticGroup group;
  final CheckLevel level;

  public DiagnosticGroupWarningsGuard(
      DiagnosticGroup group, CheckLevel level) {
    int PROBE_START_LINE_34 = 34;
		com.google.javascript.jscomp.DiagnosticGroup p_group_1227_line_34 = group;
		int PROBE_END_LINE_34 = 34;
	this.group = p_group_1227_line_34;
    int PROBE_START_LINE_35 = 35;
	com.google.javascript.jscomp.CheckLevel p_level_1228_line_35 = level;
	int PROBE_END_LINE_35 = 35;
	this.level = p_level_1228_line_35;
  }

  @Override
  public CheckLevel level(JSError error) {
    int PROBE_START_LINE_40 = 40;
	com.google.javascript.jscomp.DiagnosticGroup f_group_1229_line_40 = group;
	com.google.javascript.jscomp.JSError p_error_1231_line_40 = error;
	boolean diagnostic_group_warnings_guard_1_expr8_line_40 = f_group_1229_line_40.matches(p_error_1231_line_40);
	com.google.javascript.jscomp.CheckLevel f_level_1230_line_40 = null;
	if (diagnostic_group_warnings_guard_1_expr8_line_40) {
		f_level_1230_line_40 = level;
	}
	com.google.javascript.jscomp.CheckLevel diagnostic_group_warnings_guard_1_expr7_line_40 = diagnostic_group_warnings_guard_1_expr8_line_40
			? f_level_1230_line_40
			: null;
	int PROBE_END_LINE_40 = 40;
	return diagnostic_group_warnings_guard_1_expr7_line_40;
  }

  @Override
  public boolean disables(DiagnosticGroup otherGroup) {
    int PROBE_START_LINE_45 = 45;
	com.google.javascript.jscomp.CheckLevel f_level_1230_line_45 = level;
	boolean diagnostic_group_warnings_guard_1_expr11_line_45 = f_level_1230_line_45.isOn();
	boolean diagnostic_group_warnings_guard_1_expr10_line_45 = !diagnostic_group_warnings_guard_1_expr11_line_45;
	boolean diagnostic_group_warnings_guard_1_expr12_line_45 = true;
	if (diagnostic_group_warnings_guard_1_expr10_line_45) {
		com.google.javascript.jscomp.DiagnosticGroup f_group_1229_line_45 = group;
		com.google.javascript.jscomp.DiagnosticGroup p_other_group_1232_line_45 = otherGroup;
		diagnostic_group_warnings_guard_1_expr12_line_45 = f_group_1229_line_45.isSubGroup(p_other_group_1232_line_45);
	}
	boolean diagnostic_group_warnings_guard_1_expr9_line_45 = diagnostic_group_warnings_guard_1_expr10_line_45
			&& diagnostic_group_warnings_guard_1_expr12_line_45;
	int PROBE_END_LINE_45 = 45;
	return diagnostic_group_warnings_guard_1_expr9_line_45;
  }

  @Override
  public boolean enables(DiagnosticGroup otherGroup) {
    int PROBE_START_LINE_50 = 56;
	com.google.javascript.jscomp.CheckLevel f_level_1230_line_50 = level;
	boolean diagnostic_group_warnings_guard_1_expr13_line_50 = f_level_1230_line_50.isOn();
	int PROBE_END_LINE_50 = 56;
	if (diagnostic_group_warnings_guard_1_expr13_line_50) {
      int PROBE_START_LINE_51 = 55;
		com.google.javascript.jscomp.DiagnosticGroup p_other_group_1233_line_51 = otherGroup;
		Iterable<com.google.javascript.jscomp.DiagnosticType> diagnostic_group_warnings_guard_1_expr14_line_51 = p_other_group_1233_line_51
				.getTypes();
		int PROBE_END_LINE_51 = 55;
	for (DiagnosticType type : diagnostic_group_warnings_guard_1_expr14_line_51) {
        int PROBE_START_LINE_52 = 54;
		com.google.javascript.jscomp.DiagnosticGroup f_group_1229_line_52 = group;
		com.google.javascript.jscomp.DiagnosticType v_type_1234_line_52 = type;
		boolean diagnostic_group_warnings_guard_1_expr15_line_52 = f_group_1229_line_52.matches(v_type_1234_line_52);
		int PROBE_END_LINE_52 = 54;
		if (diagnostic_group_warnings_guard_1_expr15_line_52) {
          return true;
        }
      }
    }

    return false;
  }

  @Override
  public String toString() {
    return group + "(" + level + ")";
  }
}
