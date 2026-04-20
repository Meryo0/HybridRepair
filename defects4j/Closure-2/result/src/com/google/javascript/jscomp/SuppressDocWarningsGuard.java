/*
 * Copyright 2010 The Closure Compiler Authors.
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

import com.google.common.collect.Maps;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;

import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/**
 * Filters warnings based on in-code {@code @suppress} annotations.
 * @author nicksantos@google.com (Nick Santos)
 */
class SuppressDocWarningsGuard extends WarningsGuard {
  private static final long serialVersionUID = 1L;

  /** Warnings guards for each suppressible warnings group, indexed by name. */
  private final Map<String, DiagnosticGroupWarningsGuard> suppressors =
      Maps.newHashMap();

  /**
   * The suppressible groups, indexed by name.
   */
  SuppressDocWarningsGuard(Map<String, DiagnosticGroup> suppressibleGroups) {
    int PROBE_START_LINE_41 = 48;
	Map<String, com.google.javascript.jscomp.DiagnosticGroup> p_suppressible_groups_2479_line_42 = suppressibleGroups;
	Set<java.util.Map.Entry<String, com.google.javascript.jscomp.DiagnosticGroup>> suppress_doc_warnings_guard_1_expr2_line_42 = p_suppressible_groups_2479_line_42
			.entrySet();
	int PROBE_END_LINE_41 = 48;
	for (Map.Entry<String, DiagnosticGroup> entry :
             suppress_doc_warnings_guard_1_expr2_line_42) {
      int PROBE_START_LINE_43 = 47;
				Map<String, com.google.javascript.jscomp.DiagnosticGroupWarningsGuard> f_suppressors_2478_line_43 = suppressors;
				int PROBE_END_LINE_43 = 47;
	f_suppressors_2478_line_43.put(
          entry.getKey(),
          new DiagnosticGroupWarningsGuard(
              entry.getValue(),
              CheckLevel.OFF));
    }
  }

  @Override
  public CheckLevel level(JSError error) {
    int PROBE_START_LINE_53 = 53;
	com.google.javascript.jscomp.JSError p_error_2480_line_53 = error;
	Node q_node_69_line_53 = p_error_2480_line_53.node;
	int PROBE_END_LINE_53 = 53;
	Node node = q_node_69_line_53;
    int PROBE_START_LINE_54 = 91;
	com.google.javascript.rhino.Node v_node_2481_line_54 = node;
	boolean suppress_doc_warnings_guard_1_expr6_line_54 = v_node_2481_line_54 != null;
	int PROBE_END_LINE_54 = 91;
	if (suppress_doc_warnings_guard_1_expr6_line_54) {
      for (Node current = node;
           current != null;
           current = current.getParent()) {
        int type = current.getType();
        JSDocInfo info = null;

        // We only care about function annotations at the FUNCTION and SCRIPT
        // level. Otherwise, the @suppress annotation has an implicit
        // dependency on the exact structure of our AST, and that seems like
        // a bad idea.
        if (type == Token.FUNCTION) {
          info = NodeUtil.getFunctionJSDocInfo(current);
        } else if (type == Token.SCRIPT) {
          info = current.getJSDocInfo();
        } else if (type == Token.ASSIGN) {
          Node rhs = current.getLastChild();
          if (rhs.isFunction()) {
            info = NodeUtil.getFunctionJSDocInfo(rhs);
          }
        }

        if (info != null) {
          for (String suppressor : info.getSuppressions()) {
            WarningsGuard guard = suppressors.get(suppressor);

            // Some @suppress tags are for other tools, and
            // may not have a warnings guard.
            if (guard != null) {
              CheckLevel newLevel = guard.level(error);
              if (newLevel != null) {
                return newLevel;
              }
            }
          }
        }
      }
    }
    return null;
  }

  @Override
  public int getPriority() {
    int PROBE_START_LINE_99 = 99;
	int q_value_70_line_99 = WarningsGuard.Priority.SUPPRESS_DOC.value;
	int PROBE_END_LINE_99 = 99;
	// Happens after path-based filtering, but before other times
    // of filtering.
    return q_value_70_line_99;
  }
}
