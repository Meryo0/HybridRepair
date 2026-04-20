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

import com.google.javascript.jscomp.NodeTraversal.Callback;
import com.google.javascript.rhino.Node;

/**
 * A simple pass to ensure that all AST nodes have line numbers,
 * an that the line numbers are monotonically increasing.
 *
 * @author nicksantos@google.com (Nick Santos)
 */
class LineNumberCheck implements Callback, CompilerPass {

  int PROBE_START_LINE_30 = 35;

	static final com.google.javascript.jscomp.DiagnosticType line_number_check_1_expr1_line_30 = DiagnosticType.error(
			"JSC_MISSING_LINE_INFO",
			"No source location information associated with {0}.\n"
					+ "Most likely a Node has been created with settings the source file "
					+ "and line/column location.  Usually this is done using "
					+ "Node.copyInformationFrom and supplying a Node from the source AST.");

	int PROBE_END_LINE_30 = 35;

static final DiagnosticType MISSING_LINE_INFO = line_number_check_1_expr1_line_30;

  private final AbstractCompiler compiler;
  private boolean requiresLineNumbers = false;

  LineNumberCheck(AbstractCompiler compiler) {
    int PROBE_START_LINE_41 = 41;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_2069_line_41 = compiler;
	int PROBE_END_LINE_41 = 41;
	this.compiler = p_compiler_2069_line_41;
  }

  public void setCheckSubTree(Node root) {
    requiresLineNumbers = true;

    NodeTraversal.traverse(compiler, root, this);
  }

  @Override
  public void process(Node externs, Node root) {
    requiresLineNumbers = false;

    int PROBE_START_LINE_54 = 54;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_2070_line_54 = compiler;
	com.google.javascript.rhino.Node p_root_2073_line_54 = root;
	int PROBE_END_LINE_54 = 54;
	NodeTraversal.traverse(f_compiler_2070_line_54, p_root_2073_line_54, this);
  }

  @Override
  public boolean shouldTraverse(NodeTraversal t, Node n, Node parent) {
    int PROBE_START_LINE_61 = 63;
	com.google.javascript.rhino.Node p_n_2075_line_61 = n;
	boolean line_number_check_1_expr9_line_61 = p_n_2075_line_61.isScript();
	int PROBE_END_LINE_61 = 63;
	// Each JavaScript file is rooted in a script node, so we'll only
    // have line number information inside the script node.
    if (line_number_check_1_expr9_line_61) {
      requiresLineNumbers = true;
    }
    return true;
  }

  @Override
  public void visit(NodeTraversal t, Node n, Node parent) {
    int PROBE_START_LINE_69 = 79;
	com.google.javascript.rhino.Node p_n_2078_line_69 = n;
	boolean line_number_check_1_expr11_line_69 = p_n_2078_line_69.isScript();
	int PROBE_END_LINE_69 = 79;
	if (line_number_check_1_expr11_line_69) {
      requiresLineNumbers = false;
    } else {
		int PROBE_START_LINE_71 = 79;
		boolean f_requires_line_numbers_2068_line_71 = requiresLineNumbers;
		int PROBE_END_LINE_71 = 79;
		if (f_requires_line_numbers_2068_line_71) {
			int PROBE_START_LINE_72 = 78;
			com.google.javascript.rhino.Node p_n_2078_line_72 = n;
			int line_number_check_1_expr14_line_72 = p_n_2078_line_72.getLineno();
			int line_number_check_1_expr15_line_72 = -1;
			boolean line_number_check_1_expr13_line_72 = line_number_check_1_expr14_line_72 == line_number_check_1_expr15_line_72;
			int PROBE_END_LINE_72 = 78;
			if (line_number_check_1_expr13_line_72) {
				compiler.report(t.makeError(n, MISSING_LINE_INFO, n.toStringTree()));
			}
		}
	}
  }
}
