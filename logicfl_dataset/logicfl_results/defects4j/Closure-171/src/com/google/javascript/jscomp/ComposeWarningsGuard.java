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

  int PROBE_START_LINE_44 = 44;

private final HashMap<com.google.javascript.jscomp.WarningsGuard, Integer> compose_warnings_guard_1_expr1_line_44 = Maps
		.newHashMap();

int PROBE_END_LINE_44 = 44;

// The order that the guards were added in.
  private final Map<WarningsGuard, Integer> orderOfAddition = compose_warnings_guard_1_expr1_line_44;
  private int numberOfAdds = 0;

  private final Comparator<WarningsGuard> guardComparator =
      new GuardComparator(orderOfAddition);
  private boolean demoteErrors = false;

  private static class GuardComparator
      implements Comparator<WarningsGuard>, Serializable {
    private static final long serialVersionUID = 1L;

    private final Map<WarningsGuard, Integer> orderOfAddition;
    private GuardComparator(Map<WarningsGuard, Integer> orderOfAddition) {
      int PROBE_START_LINE_57 = 57;
		Map<com.google.javascript.jscomp.WarningsGuard, Integer> p_order_of_addition_1413_line_57 = orderOfAddition;
		int PROBE_END_LINE_57 = 57;
	this.orderOfAddition = p_order_of_addition_1413_line_57;
    }

    @Override
    public int compare(WarningsGuard a, WarningsGuard b) {
      int PROBE_START_LINE_62 = 62;
		com.google.javascript.jscomp.WarningsGuard p_a_1415_line_62 = a;
		int compose_warnings_guard_1_expr7_line_62 = p_a_1415_line_62.getPriority();
		com.google.javascript.jscomp.WarningsGuard p_b_1416_line_62 = b;
		int compose_warnings_guard_1_expr8_line_62 = p_b_1416_line_62.getPriority();
		int compose_warnings_guard_1_expr6_line_62 = compose_warnings_guard_1_expr7_line_62
				- compose_warnings_guard_1_expr8_line_62;
		int PROBE_END_LINE_62 = 62;
	int priorityDiff = compose_warnings_guard_1_expr6_line_62;
      int PROBE_START_LINE_63 = 65;
	int v_priority_diff_1417_line_63 = priorityDiff;
	boolean compose_warnings_guard_1_expr9_line_63 = v_priority_diff_1417_line_63 != 0;
	int PROBE_END_LINE_63 = 65;
	if (compose_warnings_guard_1_expr9_line_63) {
        int PROBE_START_LINE_64 = 64;
		int v_priority_diff_1417_line_64 = priorityDiff;
		int PROBE_END_LINE_64 = 64;
		return v_priority_diff_1417_line_64;
      }

      int PROBE_START_LINE_69 = 70;
	Map<com.google.javascript.jscomp.WarningsGuard, Integer> f_order_of_addition_1414_line_69 = orderOfAddition;
	com.google.javascript.jscomp.WarningsGuard p_b_1416_line_69 = b;
	Integer compose_warnings_guard_1_expr12_line_69 = f_order_of_addition_1414_line_69.get(p_b_1416_line_69);
	int compose_warnings_guard_1_expr11_line_69 = compose_warnings_guard_1_expr12_line_69.intValue();
	int compose_warnings_guard_1_expr10_line_69 = compose_warnings_guard_1_expr11_line_69
			- orderOfAddition.get(a).intValue();
	int PROBE_END_LINE_69 = 70;
	// If the warnings guards have the same priority, the one that
      // was added last wins.
      return compose_warnings_guard_1_expr10_line_69;
    }
  }

  // The order that the guards are applied in.
  private final TreeSet<WarningsGuard> guards =
      new TreeSet<WarningsGuard>(guardComparator);

  public ComposeWarningsGuard(List<WarningsGuard> guards) {
    int PROBE_START_LINE_79 = 79;
	List<com.google.javascript.jscomp.WarningsGuard> p_guards_1419_line_79 = guards;
	int PROBE_END_LINE_79 = 79;
	addGuards(p_guards_1419_line_79);
  }

  public ComposeWarningsGuard(WarningsGuard... guards) {
    this(Lists.newArrayList(guards));
  }

  void addGuard(WarningsGuard guard) {
    int PROBE_START_LINE_87 = 100;
	com.google.javascript.jscomp.WarningsGuard p_guard_1421_line_87 = guard;
	boolean compose_warnings_guard_1_expr17_line_87 = p_guard_1421_line_87 instanceof ComposeWarningsGuard;
	int PROBE_END_LINE_87 = 100;
	if (compose_warnings_guard_1_expr17_line_87) {
      int PROBE_START_LINE_88 = 88;
		com.google.javascript.jscomp.WarningsGuard p_guard_1421_line_88 = guard;
		int PROBE_END_LINE_88 = 88;
	ComposeWarningsGuard composeGuard = (ComposeWarningsGuard) p_guard_1421_line_88;
      int PROBE_START_LINE_89 = 91;
	com.google.javascript.jscomp.ComposeWarningsGuard v_compose_guard_1422_line_89 = composeGuard;
	boolean q_demote_errors_63_line_89 = v_compose_guard_1422_line_89.demoteErrors;
	int PROBE_END_LINE_89 = 91;
	if (q_demote_errors_63_line_89) {
        this.demoteErrors = composeGuard.demoteErrors;
      }

      int PROBE_START_LINE_94 = 94;
	com.google.javascript.jscomp.ComposeWarningsGuard v_compose_guard_1422_line_94 = composeGuard;
	TreeSet<com.google.javascript.jscomp.WarningsGuard> q_guards_64_line_94 = v_compose_guard_1422_line_94.guards;
	NavigableSet<com.google.javascript.jscomp.WarningsGuard> compose_warnings_guard_1_expr21_line_94 = q_guards_64_line_94
			.descendingSet();
	ArrayList<com.google.javascript.jscomp.WarningsGuard> compose_warnings_guard_1_expr20_line_94 = Lists
			.newArrayList(compose_warnings_guard_1_expr21_line_94);
	int PROBE_END_LINE_94 = 94;
	// Reverse the guards, so that they have the same order in the result.
      addGuards(compose_warnings_guard_1_expr20_line_94);
    } else {
      numberOfAdds++;
      int PROBE_START_LINE_97 = 97;
	Map<com.google.javascript.jscomp.WarningsGuard, Integer> f_order_of_addition_1409_line_97 = orderOfAddition;
	com.google.javascript.jscomp.WarningsGuard p_guard_1421_line_97 = guard;
	int f_number_of_adds_1410_line_97 = numberOfAdds;
	int PROBE_END_LINE_97 = 97;
	f_order_of_addition_1409_line_97.put(p_guard_1421_line_97, f_number_of_adds_1410_line_97);
      int PROBE_START_LINE_98 = 98;
	TreeSet<com.google.javascript.jscomp.WarningsGuard> f_guards_1418_line_98 = guards;
	com.google.javascript.jscomp.WarningsGuard p_guard_1421_line_98 = guard;
	int PROBE_END_LINE_98 = 98;
	f_guards_1418_line_98.remove(p_guard_1421_line_98);
      int PROBE_START_LINE_99 = 99;
	TreeSet<com.google.javascript.jscomp.WarningsGuard> f_guards_1418_line_99 = guards;
	com.google.javascript.jscomp.WarningsGuard p_guard_1421_line_99 = guard;
	int PROBE_END_LINE_99 = 99;
	f_guards_1418_line_99.add(p_guard_1421_line_99);
    }
  }

  private void addGuards(Iterable<WarningsGuard> guards) {
    int PROBE_START_LINE_104 = 106;
	Iterable<com.google.javascript.jscomp.WarningsGuard> p_guards_1423_line_104 = guards;
	int PROBE_END_LINE_104 = 106;
	for (WarningsGuard guard : p_guards_1423_line_104) {
      int PROBE_START_LINE_105 = 105;
		com.google.javascript.jscomp.WarningsGuard v_guard_1424_line_105 = guard;
		int PROBE_END_LINE_105 = 105;
	addGuard(v_guard_1424_line_105);
    }
  }

  @Override
  public CheckLevel level(JSError error) {
    for (WarningsGuard guard : guards) {
      CheckLevel newLevel = guard.level(error);
      if (newLevel != null) {
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
    int PROBE_START_LINE_149 = 155;
	TreeSet<com.google.javascript.jscomp.WarningsGuard> f_guards_1418_line_149 = guards;
	int PROBE_END_LINE_149 = 155;
	for (WarningsGuard guard : f_guards_1418_line_149) {
      int PROBE_START_LINE_150 = 154;
		com.google.javascript.jscomp.WarningsGuard v_guard_1428_line_150 = guard;
		com.google.javascript.jscomp.DiagnosticGroup p_group_1427_line_150 = group;
		boolean compose_warnings_guard_1_expr27_line_150 = v_guard_1428_line_150.enables(p_group_1427_line_150);
		int PROBE_END_LINE_150 = 154;
	if (compose_warnings_guard_1_expr27_line_150) {
        return true;
      } else if (guard.disables(group)) {
        return false;
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
