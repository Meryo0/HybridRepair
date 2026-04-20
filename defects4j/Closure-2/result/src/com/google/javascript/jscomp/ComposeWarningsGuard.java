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

import com.google.common.base.Joiner;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.javascript.jscomp.CheckLevel;

import java.io.Serializable;
import java.util.*;
import java.util.Map;
import java.util.TreeSet;
import java.util.List;
import java.util.HashMap;
import java.util.NavigableSet;
import java.util.ArrayList;

/**
 * WarningsGuard that represents just a chain of other guards. For example we
 * could have following chain
 * 1) all warnings outside of /foo/ should be suppressed
 * 2) errors with key JSC_BAR should be marked as warning
 * 3) the rest should be reported as error
 *
 * This class is designed for such behavior.
 *
 * @author anatol@google.com (Anatol Pomazau)
 */
public class ComposeWarningsGuard extends WarningsGuard {

  private static final long serialVersionUID = 1L;

  int PROBE_START_LINE_45 = 45;

private final HashMap<com.google.javascript.jscomp.WarningsGuard, Integer> compose_warnings_guard_1_expr1_line_45 = Maps
		.newHashMap();

int PROBE_END_LINE_45 = 45;

// The order that the guards were added in.
  private final Map<WarningsGuard, Integer> orderOfAddition = compose_warnings_guard_1_expr1_line_45;
  private int numberOfAdds = 0;

  private final Comparator<WarningsGuard> guardComparator =
      new GuardComparator(orderOfAddition);
  private boolean demoteErrors = false;

  private static class GuardComparator
      implements Comparator<WarningsGuard>, Serializable {
    private static final long serialVersionUID = 1L;

    private final Map<WarningsGuard, Integer> orderOfAddition;
    private GuardComparator(Map<WarningsGuard, Integer> orderOfAddition) {
      int PROBE_START_LINE_58 = 58;
		Map<com.google.javascript.jscomp.WarningsGuard, Integer> p_order_of_addition_998_line_58 = orderOfAddition;
		int PROBE_END_LINE_58 = 58;
	this.orderOfAddition = p_order_of_addition_998_line_58;
    }

    @Override
    public int compare(WarningsGuard a, WarningsGuard b) {
      int PROBE_START_LINE_63 = 63;
		com.google.javascript.jscomp.WarningsGuard p_a_1000_line_63 = a;
		int compose_warnings_guard_1_expr7_line_63 = p_a_1000_line_63.getPriority();
		com.google.javascript.jscomp.WarningsGuard p_b_1001_line_63 = b;
		int compose_warnings_guard_1_expr8_line_63 = p_b_1001_line_63.getPriority();
		int compose_warnings_guard_1_expr6_line_63 = compose_warnings_guard_1_expr7_line_63
				- compose_warnings_guard_1_expr8_line_63;
		int PROBE_END_LINE_63 = 63;
	int priorityDiff = compose_warnings_guard_1_expr6_line_63;
      int PROBE_START_LINE_64 = 66;
	int v_priority_diff_1002_line_64 = priorityDiff;
	boolean compose_warnings_guard_1_expr9_line_64 = v_priority_diff_1002_line_64 != 0;
	int PROBE_END_LINE_64 = 66;
	if (compose_warnings_guard_1_expr9_line_64) {
        int PROBE_START_LINE_65 = 65;
		int v_priority_diff_1002_line_65 = priorityDiff;
		int PROBE_END_LINE_65 = 65;
		return v_priority_diff_1002_line_65;
      }

      int PROBE_START_LINE_70 = 71;
	Map<com.google.javascript.jscomp.WarningsGuard, Integer> f_order_of_addition_999_line_70 = orderOfAddition;
	com.google.javascript.jscomp.WarningsGuard p_b_1001_line_70 = b;
	Integer compose_warnings_guard_1_expr12_line_70 = f_order_of_addition_999_line_70.get(p_b_1001_line_70);
	int compose_warnings_guard_1_expr11_line_70 = compose_warnings_guard_1_expr12_line_70.intValue();
	int compose_warnings_guard_1_expr10_line_70 = compose_warnings_guard_1_expr11_line_70
			- orderOfAddition.get(a).intValue();
	int PROBE_END_LINE_70 = 71;
	// If the warnings guards have the same priority, the one that
      // was added last wins.
      return compose_warnings_guard_1_expr10_line_70;
    }
  }

  // The order that the guards are applied in.
  private final TreeSet<WarningsGuard> guards =
      new TreeSet<WarningsGuard>(guardComparator);

  public ComposeWarningsGuard(List<WarningsGuard> guards) {
    int PROBE_START_LINE_80 = 80;
	List<com.google.javascript.jscomp.WarningsGuard> p_guards_1004_line_80 = guards;
	int PROBE_END_LINE_80 = 80;
	addGuards(p_guards_1004_line_80);
  }

  public ComposeWarningsGuard(WarningsGuard... guards) {
    this(Lists.newArrayList(guards));
  }

  void addGuard(WarningsGuard guard) {
    int PROBE_START_LINE_88 = 101;
	com.google.javascript.jscomp.WarningsGuard p_guard_1006_line_88 = guard;
	boolean compose_warnings_guard_1_expr17_line_88 = p_guard_1006_line_88 instanceof ComposeWarningsGuard;
	int PROBE_END_LINE_88 = 101;
	if (compose_warnings_guard_1_expr17_line_88) {
      int PROBE_START_LINE_89 = 89;
		com.google.javascript.jscomp.WarningsGuard p_guard_1006_line_89 = guard;
		int PROBE_END_LINE_89 = 89;
	ComposeWarningsGuard composeGuard = (ComposeWarningsGuard) p_guard_1006_line_89;
      int PROBE_START_LINE_90 = 92;
	com.google.javascript.jscomp.ComposeWarningsGuard v_compose_guard_1007_line_90 = composeGuard;
	boolean q_demote_errors_42_line_90 = v_compose_guard_1007_line_90.demoteErrors;
	int PROBE_END_LINE_90 = 92;
	if (q_demote_errors_42_line_90) {
        this.demoteErrors = composeGuard.demoteErrors;
      }

      int PROBE_START_LINE_95 = 95;
	com.google.javascript.jscomp.ComposeWarningsGuard v_compose_guard_1007_line_95 = composeGuard;
	TreeSet<com.google.javascript.jscomp.WarningsGuard> q_guards_43_line_95 = v_compose_guard_1007_line_95.guards;
	NavigableSet<com.google.javascript.jscomp.WarningsGuard> compose_warnings_guard_1_expr21_line_95 = q_guards_43_line_95
			.descendingSet();
	ArrayList<com.google.javascript.jscomp.WarningsGuard> compose_warnings_guard_1_expr20_line_95 = Lists
			.newArrayList(compose_warnings_guard_1_expr21_line_95);
	int PROBE_END_LINE_95 = 95;
	// Reverse the guards, so that they have the same order in the result.
      addGuards(compose_warnings_guard_1_expr20_line_95);
    } else {
      numberOfAdds++;
      int PROBE_START_LINE_98 = 98;
	Map<com.google.javascript.jscomp.WarningsGuard, Integer> f_order_of_addition_994_line_98 = orderOfAddition;
	com.google.javascript.jscomp.WarningsGuard p_guard_1006_line_98 = guard;
	int f_number_of_adds_995_line_98 = numberOfAdds;
	int PROBE_END_LINE_98 = 98;
	f_order_of_addition_994_line_98.put(p_guard_1006_line_98, f_number_of_adds_995_line_98);
      int PROBE_START_LINE_99 = 99;
	TreeSet<com.google.javascript.jscomp.WarningsGuard> f_guards_1003_line_99 = guards;
	com.google.javascript.jscomp.WarningsGuard p_guard_1006_line_99 = guard;
	int PROBE_END_LINE_99 = 99;
	f_guards_1003_line_99.remove(p_guard_1006_line_99);
      int PROBE_START_LINE_100 = 100;
	TreeSet<com.google.javascript.jscomp.WarningsGuard> f_guards_1003_line_100 = guards;
	com.google.javascript.jscomp.WarningsGuard p_guard_1006_line_100 = guard;
	int PROBE_END_LINE_100 = 100;
	f_guards_1003_line_100.add(p_guard_1006_line_100);
    }
  }

  private void addGuards(Iterable<WarningsGuard> guards) {
    int PROBE_START_LINE_105 = 107;
	Iterable<com.google.javascript.jscomp.WarningsGuard> p_guards_1008_line_105 = guards;
	int PROBE_END_LINE_105 = 107;
	for (WarningsGuard guard : p_guards_1008_line_105) {
      int PROBE_START_LINE_106 = 106;
		com.google.javascript.jscomp.WarningsGuard v_guard_1009_line_106 = guard;
		int PROBE_END_LINE_106 = 106;
	addGuard(v_guard_1009_line_106);
    }
  }

  @Override
  public CheckLevel level(JSError error) {
    int PROBE_START_LINE_112 = 120;
	TreeSet<com.google.javascript.jscomp.WarningsGuard> f_guards_1003_line_112 = guards;
	int PROBE_END_LINE_112 = 120;
	for (WarningsGuard guard : f_guards_1003_line_112) {
      int PROBE_START_LINE_113 = 113;
		com.google.javascript.jscomp.WarningsGuard v_guard_1011_line_113 = guard;
		com.google.javascript.jscomp.JSError p_error_1010_line_113 = error;
		CheckLevel compose_warnings_guard_1_expr27_line_113 = v_guard_1011_line_113.level(p_error_1010_line_113);
		int PROBE_END_LINE_113 = 113;
	CheckLevel newLevel = compose_warnings_guard_1_expr27_line_113;
      int PROBE_START_LINE_114 = 119;
	com.google.javascript.jscomp.CheckLevel v_new_level_1012_line_114 = newLevel;
	boolean compose_warnings_guard_1_expr28_line_114 = v_new_level_1012_line_114 != null;
	int PROBE_END_LINE_114 = 119;
	if (compose_warnings_guard_1_expr28_line_114) {
        if (demoteErrors && newLevel == CheckLevel.ERROR) {
          return CheckLevel.WARNING;
        }
        return newLevel;
      }
    }
    return null;
  }

  @Override
  public boolean disables(DiagnosticGroup group) {
    nextSingleton:
    for (DiagnosticType type : group.getTypes()) {
      DiagnosticGroup singleton = DiagnosticGroup.forType(type);

      for (WarningsGuard guard : guards) {
        if (guard.disables(singleton)) {
          continue nextSingleton;
        } else if (guard.enables(singleton)) {
          return false;
        }
      }

      return false;
    }

    return true;
  }

  /**
   * Determines whether this guard will "elevate" the status of any disabled
   * diagnostic type in the group to a warning or an error.
   */
  @Override
  public boolean enables(DiagnosticGroup group) {
    int PROBE_START_LINE_150 = 156;
	TreeSet<com.google.javascript.jscomp.WarningsGuard> f_guards_1003_line_150 = guards;
	int PROBE_END_LINE_150 = 156;
	for (WarningsGuard guard : f_guards_1003_line_150) {
      int PROBE_START_LINE_151 = 155;
		com.google.javascript.jscomp.WarningsGuard v_guard_1015_line_151 = guard;
		com.google.javascript.jscomp.DiagnosticGroup p_group_1014_line_151 = group;
		boolean compose_warnings_guard_1_expr29_line_151 = v_guard_1015_line_151.enables(p_group_1014_line_151);
		int PROBE_END_LINE_151 = 155;
	if (compose_warnings_guard_1_expr29_line_151) {
        return true;
      } else {
		int PROBE_START_LINE_153 = 155;
		com.google.javascript.jscomp.WarningsGuard v_guard_1015_line_153 = guard;
		com.google.javascript.jscomp.DiagnosticGroup p_group_1014_line_153 = group;
		boolean compose_warnings_guard_1_expr30_line_153 = v_guard_1015_line_153.disables(p_group_1014_line_153);
		int PROBE_END_LINE_153 = 155;
		if (compose_warnings_guard_1_expr30_line_153) {
			return false;
		}
	}
    }

    return false;
  }

  List<WarningsGuard> getGuards() {
    return Collections.unmodifiableList(Lists.newArrayList(guards));
  }

  /**
   * Make a warnings guard that's the same as this one but with
   * all escalating guards turned down.
   */
  ComposeWarningsGuard makeEmergencyFailSafeGuard() {
    ComposeWarningsGuard safeGuard = new ComposeWarningsGuard();
    safeGuard.demoteErrors = true;
    for (WarningsGuard guard : guards.descendingSet()) {
      safeGuard.addGuard(guard);
    }
    return safeGuard;
  }

  @Override
  public String toString() {
    return Joiner.on(", ").join(guards);
  }
}
