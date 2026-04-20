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

/**
 * Sets the level for a particular DiagnosticGroup.
 * @author nicksantos@google.com (Nick Santos)
 */
public class DiagnosticGroupWarningsGuard extends WarningsGuard {
  private static final long serialVersionUID = 1L;

  private final DiagnosticGroup group;
  private final CheckLevel level;

  public DiagnosticGroupWarningsGuard(
      DiagnosticGroup group, CheckLevel level) {
    int PROBE_START_LINE_31 = 31;
		com.google.javascript.jscomp.DiagnosticGroup p_group_1642_line_31 = group;
		int PROBE_END_LINE_31 = 31;
	this.group = p_group_1642_line_31;
    int PROBE_START_LINE_32 = 32;
	com.google.javascript.jscomp.CheckLevel p_level_1643_line_32 = level;
	int PROBE_END_LINE_32 = 32;
	this.level = p_level_1643_line_32;
  }

  @Override
  public CheckLevel level(JSError error) {
    return group.matches(error) ? level : null;
  }

  @Override
  public boolean disables(DiagnosticGroup otherGroup) {
    return !level.isOn() && group.isSubGroup(otherGroup);
  }

  @Override
  public boolean enables(DiagnosticGroup otherGroup) {
    int PROBE_START_LINE_47 = 53;
	com.google.javascript.jscomp.CheckLevel f_level_1645_line_47 = level;
	boolean diagnostic_group_warnings_guard_1_expr7_line_47 = f_level_1645_line_47.isOn();
	int PROBE_END_LINE_47 = 53;
	if (diagnostic_group_warnings_guard_1_expr7_line_47) {
      int PROBE_START_LINE_48 = 52;
		com.google.javascript.jscomp.DiagnosticGroup p_other_group_1648_line_48 = otherGroup;
		Iterable<com.google.javascript.jscomp.DiagnosticType> diagnostic_group_warnings_guard_1_expr8_line_48 = p_other_group_1648_line_48
				.getTypes();
		int PROBE_END_LINE_48 = 52;
	for (DiagnosticType type : diagnostic_group_warnings_guard_1_expr8_line_48) {
        int PROBE_START_LINE_49 = 51;
		com.google.javascript.jscomp.DiagnosticGroup f_group_1644_line_49 = group;
		com.google.javascript.jscomp.DiagnosticType v_type_1649_line_49 = type;
		boolean diagnostic_group_warnings_guard_1_expr9_line_49 = f_group_1644_line_49.matches(v_type_1649_line_49);
		int PROBE_END_LINE_49 = 51;
		if (diagnostic_group_warnings_guard_1_expr9_line_49) {
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
