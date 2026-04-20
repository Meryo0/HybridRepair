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

import com.google.common.base.Preconditions;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.javascript.jscomp.ControlFlowGraph.Branch;
import com.google.javascript.jscomp.NodeTraversal.Callback;
import com.google.javascript.jscomp.graph.DiGraph.DiGraphNode;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.HashMap;

/**
 * This is a compiler pass that computes a control flow graph.
 *
 */
final class ControlFlowAnalysis implements Callback, CompilerPass {

  /**
   * Based roughly on the first few pages of
   *
   * "Declarative Intraprocedural Flow Analysis of Java Source Code by
   * Nilsson-Nyman, Hedin, Magnusson & Ekman",
   *
   * this pass computes the control flow graph from the AST. However, a full
   * attribute grammar is not necessary. We will compute the flow edges with a
   * single post order traversal. The "follow()" of a given node will be
   * computed recursively in a demand driven fashion.
   *
   * As of this moment, we are not performing any inter-procedural analysis
   * within our framework.
   */

  private final AbstractCompiler compiler;

  private ControlFlowGraph<Node> cfg;

  private Map<Node, Integer> astPosition;

  // TODO(nicksantos): should these be node annotations?
  private Map<DiGraphNode<Node, Branch>, Integer> nodePriorities;

  // We order CFG nodes by by looking at the AST positions.
  // CFG nodes that come first lexically should be visited first, because
  // they will often be executed first in the source program.
  private final Comparator<DiGraphNode<Node, Branch>> priorityComparator =
      new Comparator<DiGraphNode<Node, Branch>>() {
    @Override
    public int compare(
        DiGraphNode<Node, Branch> a, DiGraphNode<Node, Branch> b) {
      int PROBE_START_LINE_75 = 75;
			Map<com.google.javascript.rhino.Node, Integer> f_ast_position_1443_line_75 = astPosition;
			com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> p_a_1441_line_75 = a;
			com.google.javascript.rhino.Node control_flow_analysis_1_expr4_line_75 = p_a_1441_line_75.getValue();
			Integer control_flow_analysis_1_expr3_line_75 = f_ast_position_1443_line_75
					.get(control_flow_analysis_1_expr4_line_75);
			Map<com.google.javascript.rhino.Node, Integer> f_ast_position_1443_line_75_v1 = astPosition;
			com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> p_b_1442_line_75 = b;
			com.google.javascript.rhino.Node control_flow_analysis_1_expr6_line_75 = p_b_1442_line_75.getValue();
			Integer control_flow_analysis_1_expr5_line_75 = f_ast_position_1443_line_75_v1
					.get(control_flow_analysis_1_expr6_line_75);
			int control_flow_analysis_1_expr2_line_75 = control_flow_analysis_1_expr3_line_75
					- control_flow_analysis_1_expr5_line_75;
			int PROBE_END_LINE_75 = 75;
	return control_flow_analysis_1_expr2_line_75;
    }
  };

  private int astPositionCounter;
  private int priorityCounter;

  private final boolean shouldTraverseFunctions;
  private final boolean edgeAnnotations;

  // We need to store where we started, in case we aren't doing a flow analysis
  // for the whole scope. This happens, for example, when running type inference
  // on only the externs.
  private Node root;

  /*
   * This stack captures the structure of nested TRY blocks. The top of the
   * stack is the inner most TRY block. A FUNCTION node in this stack implies
   * that the handler is determined by the caller of the function at runtime.
   */
  private final Deque<Node> exceptionHandler = new ArrayDeque<Node>();

  int PROBE_START_LINE_126 = 126;

private final HashMultimap<com.google.javascript.rhino.Node, com.google.javascript.rhino.Node> control_flow_analysis_1_expr8_line_126 = HashMultimap
		.create();

int PROBE_END_LINE_126 = 126;

/*
   * This map is used to handle the follow of FINALLY. For example:
   *
   * while(x) {
   *  try {
   *    try {
   *      break;
   *    } catch (a) {
   *    } finally {
   *      foo();
   *    }
   *    fooFollow();
   *  } catch (b) {
   *  } finally {
   *    bar();
   *  }
   *  barFollow();
   * }
   * END();
   *
   * In this case finallyMap will contain a map from:
   *    first FINALLY -> bar()
   *    second FINALLY -> END()
   *
   * When we are connecting foo() and bar() to to their respective follow, we
   * must also look up this map and connect:
   *   foo() -> bar()
   *   bar() -> END
   */
  private final Multimap<Node, Node> finallyMap = control_flow_analysis_1_expr8_line_126;

  /**
   * Constructor.
   *
   * @param compiler Compiler instance.
   * @param shouldTraverseFunctions Whether functions should be traversed (true
   *    by default).
   * @param edgeAnnotations Whether to allow edge annotations. By default,
   *    only node annotations are allowed.
   */
  ControlFlowAnalysis(AbstractCompiler compiler,
      boolean shouldTraverseFunctions, boolean edgeAnnotations) {
    int PROBE_START_LINE_139 = 139;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_1446_line_139 = compiler;
		int PROBE_END_LINE_139 = 139;
	this.compiler = p_compiler_1446_line_139;
    int PROBE_START_LINE_140 = 140;
	boolean p_should_traverse_functions_1447_line_140 = shouldTraverseFunctions;
	int PROBE_END_LINE_140 = 140;
	this.shouldTraverseFunctions = p_should_traverse_functions_1447_line_140;
    int PROBE_START_LINE_141 = 141;
	boolean p_edge_annotations_1448_line_141 = edgeAnnotations;
	int PROBE_END_LINE_141 = 141;
	this.edgeAnnotations = p_edge_annotations_1448_line_141;
  }

  ControlFlowGraph<Node> getCfg() {
    int PROBE_START_LINE_145 = 145;
	ControlFlowGraph<com.google.javascript.rhino.Node> f_cfg_1452_line_145 = cfg;
	int PROBE_END_LINE_145 = 145;
	return f_cfg_1452_line_145;
  }

  @Override
  public void process(Node externs, Node root) {
    int PROBE_START_LINE_150 = 150;
	com.google.javascript.rhino.Node p_root_1454_line_150 = root;
	int PROBE_END_LINE_150 = 150;
	this.root = p_root_1454_line_150;
    astPositionCounter = 0;
    int PROBE_START_LINE_152 = 152;
	HashMap<com.google.javascript.rhino.Node, Integer> control_flow_analysis_1_expr23_line_152 = Maps.newHashMap();
	int PROBE_END_LINE_152 = 152;
	astPosition = control_flow_analysis_1_expr23_line_152;
    int PROBE_START_LINE_153 = 153;
	HashMap<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>, Integer> control_flow_analysis_1_expr25_line_153 = Maps
			.newHashMap();
	int PROBE_END_LINE_153 = 153;
	nodePriorities = control_flow_analysis_1_expr25_line_153;
    int PROBE_START_LINE_154 = 155;
	com.google.javascript.rhino.Node p_root_1454_line_154 = root;
	com.google.javascript.rhino.Node control_flow_analysis_1_expr28_line_154 = computeFallThrough(p_root_1454_line_154);
	Map<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>, Integer> f_node_priorities_1457_line_154 = nodePriorities;
	int PROBE_END_LINE_154 = 155;
	cfg = new AstControlFlowGraph(control_flow_analysis_1_expr28_line_154, f_node_priorities_1457_line_154,
                                  edgeAnnotations);
    int PROBE_START_LINE_156 = 156;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_1449_line_156 = compiler;
	com.google.javascript.rhino.Node p_root_1454_line_156 = root;
	int PROBE_END_LINE_156 = 156;
	NodeTraversal.traverse(f_compiler_1449_line_156, p_root_1454_line_156, this);
    int PROBE_START_LINE_157 = 157;
	Map<com.google.javascript.rhino.Node, Integer> f_ast_position_1443_line_157 = astPosition;
	int PROBE_END_LINE_157 = 157;
	f_ast_position_1443_line_157.put(null, ++astPositionCounter); // the implicit return is last.

    // Now, generate the priority of nodes by doing a depth-first
    // search on the CFG.
    priorityCounter = 0;
    int PROBE_START_LINE_162 = 162;
	ControlFlowGraph<com.google.javascript.rhino.Node> f_cfg_1452_line_162 = cfg;
	DiGraphNode<Node, Branch> control_flow_analysis_1_expr34_line_162 = f_cfg_1452_line_162.getEntry();
	int PROBE_END_LINE_162 = 162;
	DiGraphNode<Node, Branch> entry = control_flow_analysis_1_expr34_line_162;
    int PROBE_START_LINE_163 = 163;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_entry_1459_line_163 = entry;
	int PROBE_END_LINE_163 = 163;
	prioritizeFromEntryNode(v_entry_1459_line_163);

    int PROBE_START_LINE_165 = 176;
	boolean f_should_traverse_functions_1450_line_165 = shouldTraverseFunctions;
	int PROBE_END_LINE_165 = 176;
	if (f_should_traverse_functions_1450_line_165) {
      // If we're traversing inner functions, we need to rank the
      // priority of them too.
      for (DiGraphNode<Node, Branch> candidate : cfg.getDirectedGraphNodes()) {
        Node value = candidate.getValue();
        if (value != null && value.isFunction()) {
          Preconditions.checkState(
              !nodePriorities.containsKey(candidate) || candidate == entry);
          prioritizeFromEntryNode(candidate);
        }
      }
    }

    int PROBE_START_LINE_182 = 186;
	ControlFlowGraph<com.google.javascript.rhino.Node> f_cfg_1452_line_182 = cfg;
	Iterable<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>> control_flow_analysis_1_expr36_line_182 = f_cfg_1452_line_182
			.getDirectedGraphNodes();
	int PROBE_END_LINE_182 = 186;
	// At this point, all reachable nodes have been given a priority, but
    // unreachable nodes have not been given a priority. Put them last.
    // Presumably, it doesn't really matter what priority they get, since
    // this shouldn't happen in real code.
    for (DiGraphNode<Node, Branch> candidate : control_flow_analysis_1_expr36_line_182) {
      int PROBE_START_LINE_183 = 185;
		Map<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>, Integer> f_node_priorities_1457_line_183 = nodePriorities;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_candidate_1460_line_183 = candidate;
		boolean control_flow_analysis_1_expr38_line_183 = f_node_priorities_1457_line_183
				.containsKey(v_candidate_1460_line_183);
		boolean control_flow_analysis_1_expr37_line_183 = !control_flow_analysis_1_expr38_line_183;
		int PROBE_END_LINE_183 = 185;
	if (control_flow_analysis_1_expr37_line_183) {
        nodePriorities.put(candidate, ++priorityCounter);
      }
    }

    int PROBE_START_LINE_189 = 189;
	Map<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>, Integer> f_node_priorities_1457_line_189 = nodePriorities;
	ControlFlowGraph<com.google.javascript.rhino.Node> f_cfg_1452_line_189 = cfg;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> control_flow_analysis_1_expr40_line_189 = f_cfg_1452_line_189
			.getImplicitReturn();
	int PROBE_END_LINE_189 = 189;
	// Again, the implicit return node is always last.
    f_node_priorities_1457_line_189.put(control_flow_analysis_1_expr40_line_189, ++priorityCounter);
  }

  /**
   * Given an entry node, find all the nodes reachable from that node
   * and prioritize them.
   */
  private void prioritizeFromEntryNode(DiGraphNode<Node, Branch> entry) {
    PriorityQueue<DiGraphNode<Node, Branch>> worklist =
        new PriorityQueue<DiGraphNode<Node, Branch>>(10, priorityComparator);
    int PROBE_START_LINE_199 = 199;
	PriorityQueue<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_worklist_1462_line_199 = worklist;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> p_entry_1461_line_199 = entry;
	int PROBE_END_LINE_199 = 199;
	v_worklist_1462_line_199.add(p_entry_1461_line_199);

    while (true) {
      int PROBE_START_LINE_201 = 201;
		PriorityQueue<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_worklist_1462_line_201 = worklist;
		boolean control_flow_analysis_1_expr45_line_201 = v_worklist_1462_line_201.isEmpty();
		boolean control_flow_analysis_1_expr44_line_201 = !control_flow_analysis_1_expr45_line_201;
		if (!(control_flow_analysis_1_expr44_line_201)) {
			break;
		}
		int PROBE_END_LINE_201 = 201;
		int PROBE_START_LINE_202 = 202;
		PriorityQueue<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_worklist_1462_line_202 = worklist;
		DiGraphNode<Node, Branch> control_flow_analysis_1_expr46_line_202 = v_worklist_1462_line_202.remove();
		int PROBE_END_LINE_202 = 202;
	DiGraphNode<Node, Branch> current = control_flow_analysis_1_expr46_line_202;
      int PROBE_START_LINE_203 = 205;
	Map<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>, Integer> f_node_priorities_1457_line_203 = nodePriorities;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_current_1463_line_203 = current;
	boolean control_flow_analysis_1_expr47_line_203 = f_node_priorities_1457_line_203
			.containsKey(v_current_1463_line_203);
	int PROBE_END_LINE_203 = 205;
	if (control_flow_analysis_1_expr47_line_203) {
        continue;
      }

      int PROBE_START_LINE_207 = 207;
	Map<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>, Integer> f_node_priorities_1457_line_207 = nodePriorities;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_current_1463_line_207 = current;
	int PROBE_END_LINE_207 = 207;
	f_node_priorities_1457_line_207.put(v_current_1463_line_207, ++priorityCounter);

      List<DiGraphNode<Node, Branch>> successors =
          cfg.getDirectedSuccNodes(current);
      int PROBE_START_LINE_211 = 213;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_successors_1464_line_211 = successors;
	int PROBE_END_LINE_211 = 213;
	for (DiGraphNode<Node, Branch> candidate : v_successors_1464_line_211) {
        int PROBE_START_LINE_212 = 212;
		PriorityQueue<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_worklist_1462_line_212 = worklist;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_candidate_1465_line_212 = candidate;
		int PROBE_END_LINE_212 = 212;
		v_worklist_1462_line_212.add(v_candidate_1465_line_212);
      }
    }
  }

  @Override
  public boolean shouldTraverse(
      NodeTraversal nodeTraversal, Node n, Node parent) {
    int PROBE_START_LINE_220 = 220;
		Map<com.google.javascript.rhino.Node, Integer> f_ast_position_1443_line_220 = astPosition;
		com.google.javascript.rhino.Node p_n_1467_line_220 = n;
		int PROBE_END_LINE_220 = 220;
	f_ast_position_1443_line_220.put(p_n_1467_line_220, astPositionCounter++);

    int PROBE_START_LINE_222 = 232;
	com.google.javascript.rhino.Node p_n_1467_line_222 = n;
	int control_flow_analysis_1_expr54_line_222 = p_n_1467_line_222.getType();
	int PROBE_END_LINE_222 = 232;
	switch (control_flow_analysis_1_expr54_line_222) {
      case Token.FUNCTION:
	int PROBE_START_LINE_224 = 227;
	boolean f_should_traverse_functions_1450_line_224 = shouldTraverseFunctions;
	boolean control_flow_analysis_1_expr56_line_224 = false;
	if (!f_should_traverse_functions_1450_line_224) {
		com.google.javascript.rhino.Node p_n_1467_line_224 = n;
		ControlFlowGraph<com.google.javascript.rhino.Node> f_cfg_1452_line_224 = cfg;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> control_flow_analysis_1_expr58_line_224 = f_cfg_1452_line_224
				.getEntry();
		com.google.javascript.rhino.Node control_flow_analysis_1_expr57_line_224 = control_flow_analysis_1_expr58_line_224
				.getValue();
		control_flow_analysis_1_expr56_line_224 = p_n_1467_line_224 == control_flow_analysis_1_expr57_line_224;
	}
	boolean control_flow_analysis_1_expr55_line_224 = f_should_traverse_functions_1450_line_224
			|| control_flow_analysis_1_expr56_line_224;
	int PROBE_END_LINE_224 = 227;
	if (control_flow_analysis_1_expr55_line_224) {
          int PROBE_START_LINE_225 = 225;
			Deque<com.google.javascript.rhino.Node> f_exception_handler_1444_line_225 = exceptionHandler;
			com.google.javascript.rhino.Node p_n_1467_line_225 = n;
			int PROBE_END_LINE_225 = 225;
		f_exception_handler_1444_line_225.push(p_n_1467_line_225);
          return true;
        }
        return false;
      case Token.TRY:
        exceptionHandler.push(n);
        return true;
    }

    int PROBE_START_LINE_250 = 290;
	com.google.javascript.rhino.Node p_parent_1468_line_250 = parent;
	boolean control_flow_analysis_1_expr60_line_250 = p_parent_1468_line_250 != null;
	int PROBE_END_LINE_250 = 290;
	/*
     * We are going to stop the traversal depending on what the node's parent
     * is.
     *
     * We are only interested in adding edges between nodes that change control
     * flow. The most obvious ones are loops and IF-ELSE's. A statement
     * transfers control to its next sibling.
     *
     * In case of an expression tree, there is no control flow within the tree
     * even when there are short circuited operators and conditionals. When we
     * are doing data flow analysis, we will simply synthesize lattices up the
     * expression tree by finding the meet at each expression node.
     *
     * For example: within a Token.SWITCH, the expression in question does not
     * change the control flow and need not to be considered.
     */
    if (control_flow_analysis_1_expr60_line_250) {
      int PROBE_START_LINE_251 = 289;
		com.google.javascript.rhino.Node p_parent_1468_line_251 = parent;
		int control_flow_analysis_1_expr61_line_251 = p_parent_1468_line_251.getType();
		int PROBE_END_LINE_251 = 289;
	switch (control_flow_analysis_1_expr61_line_251) {
        case Token.FOR:
          // Only traverse the body of the for loop.
          return n == parent.getLastChild();

        // Skip the conditions.
        case Token.IF:
        case Token.WHILE:
        case Token.WITH:
          return n != parent.getFirstChild();
        case Token.DO:
          return n != parent.getFirstChild().getNext();
        // Only traverse the body of the cases
        case Token.SWITCH:
        case Token.CASE:
        case Token.CATCH:
        case Token.LABEL:
          return n != parent.getFirstChild();
        case Token.FUNCTION:
	int PROBE_START_LINE_270 = 270;
	com.google.javascript.rhino.Node p_n_1467_line_270 = n;
	com.google.javascript.rhino.Node p_parent_1468_line_270 = parent;
	com.google.javascript.rhino.Node control_flow_analysis_1_expr65_line_270 = p_parent_1468_line_270.getFirstChild();
	com.google.javascript.rhino.Node control_flow_analysis_1_expr64_line_270 = control_flow_analysis_1_expr65_line_270
			.getNext();
	com.google.javascript.rhino.Node control_flow_analysis_1_expr63_line_270 = control_flow_analysis_1_expr64_line_270
			.getNext();
	boolean control_flow_analysis_1_expr62_line_270 = p_n_1467_line_270 == control_flow_analysis_1_expr63_line_270;
	int PROBE_END_LINE_270 = 270;
	return control_flow_analysis_1_expr62_line_270;
        case Token.CONTINUE:
        case Token.BREAK:
        case Token.EXPR_RESULT:
        case Token.VAR:
        case Token.RETURN:
        case Token.THROW:
          return false;
        case Token.TRY:
          /* Just before we are about to visit the second child of the TRY node,
           * we know that we will be visiting either the CATCH or the FINALLY.
           * In other words, we know that the post order traversal of the TRY
           * block has been finished, no more exceptions can be caught by the
           * handler at this TRY block and should be taken out of the stack.
           */
          if (n == parent.getFirstChild().getNext()) {
            Preconditions.checkState(exceptionHandler.peek() == parent);
            exceptionHandler.pop();
          }
      }
    }
    return true;
  }

  @Override
  public void visit(NodeTraversal t, Node n, Node parent) {
    int PROBE_START_LINE_296 = 354;
	com.google.javascript.rhino.Node p_n_1470_line_296 = n;
	int control_flow_analysis_1_expr66_line_296 = p_n_1470_line_296.getType();
	int PROBE_END_LINE_296 = 354;
	switch (control_flow_analysis_1_expr66_line_296) {
      case Token.IF:
        handleIf(n);
        return;
      case Token.WHILE:
        handleWhile(n);
        return;
      case Token.DO:
        handleDo(n);
        return;
      case Token.FOR:
        handleFor(n);
        return;
      case Token.SWITCH:
        handleSwitch(n);
        return;
      case Token.CASE:
        handleCase(n);
        return;
      case Token.DEFAULT_CASE:
        handleDefault(n);
        return;
      case Token.BLOCK:
      case Token.SCRIPT:
	int PROBE_START_LINE_320 = 320;
	com.google.javascript.rhino.Node p_n_1470_line_320 = n;
	int PROBE_END_LINE_320 = 320;
	handleStmtList(p_n_1470_line_320);
        return;
      case Token.FUNCTION:
	int PROBE_START_LINE_323 = 323;
	com.google.javascript.rhino.Node p_n_1470_line_323 = n;
	int PROBE_END_LINE_323 = 323;
	handleFunction(p_n_1470_line_323);
        return;
      case Token.EXPR_RESULT:
	int PROBE_START_LINE_326 = 326;
	com.google.javascript.rhino.Node p_n_1470_line_326 = n;
	int PROBE_END_LINE_326 = 326;
	handleExpr(p_n_1470_line_326);
        return;
      case Token.THROW:
        handleThrow(n);
        return;
      case Token.TRY:
        handleTry(n);
        return;
      case Token.CATCH:
        handleCatch(n);
        return;
      case Token.BREAK:
        handleBreak(n);
        return;
      case Token.CONTINUE:
        handleContinue(n);
        return;
      case Token.RETURN:
        handleReturn(n);
        return;
      case Token.WITH:
        handleWith(n);
        return;
      case Token.LABEL:
        return;
      default:
	int PROBE_START_LINE_352 = 352;
	com.google.javascript.rhino.Node p_n_1470_line_352 = n;
	int PROBE_END_LINE_352 = 352;
	handleStmt(p_n_1470_line_352);
        return;
    }
  }

  private void handleIf(Node node) {
    Node thenBlock = node.getFirstChild().getNext();
    Node elseBlock = thenBlock.getNext();
    createEdge(node, Branch.ON_TRUE, computeFallThrough(thenBlock));

    if (elseBlock == null) {
      createEdge(node, Branch.ON_FALSE,
          computeFollowNode(node, this)); // not taken branch
    } else {
      createEdge(node, Branch.ON_FALSE, computeFallThrough(elseBlock));
    }
    connectToPossibleExceptionHandler(
        node, NodeUtil.getConditionExpression(node));
  }

  private void handleWhile(Node node) {
    // Control goes to the first statement if the condition evaluates to true.
    createEdge(node, Branch.ON_TRUE,
        computeFallThrough(node.getFirstChild().getNext()));

    // Control goes to the follow() if the condition evaluates to false.
    createEdge(node, Branch.ON_FALSE,
        computeFollowNode(node, this));
    connectToPossibleExceptionHandler(
        node, NodeUtil.getConditionExpression(node));
  }

  private void handleDo(Node node) {
    // The first edge can be the initial iteration as well as the iterations
    // after.
    createEdge(node, Branch.ON_TRUE, computeFallThrough(node.getFirstChild()));
    // The edge that leaves the do loop if the condition fails.
    createEdge(node, Branch.ON_FALSE,
        computeFollowNode(node, this));
    connectToPossibleExceptionHandler(
        node, NodeUtil.getConditionExpression(node));
  }

  private void handleFor(Node forNode) {
    if (forNode.getChildCount() == 4) {
      // We have for (init; cond; iter) { body }
      Node init = forNode.getFirstChild();
      Node cond = init.getNext();
      Node iter = cond.getNext();
      Node body = iter.getNext();
      // After initialization, we transfer to the FOR which is in charge of
      // checking the condition (for the first time).
      createEdge(init, Branch.UNCOND, forNode);
      // The edge that transfer control to the beginning of the loop body.
      createEdge(forNode, Branch.ON_TRUE, computeFallThrough(body));
      // The edge to end of the loop.
      createEdge(forNode, Branch.ON_FALSE,
          computeFollowNode(forNode, this));
      // The end of the body will have a unconditional branch to our iter
      // (handled by calling computeFollowNode of the last instruction of the
      // body. Our iter will jump to the forNode again to another condition
      // check.
      createEdge(iter, Branch.UNCOND, forNode);
      connectToPossibleExceptionHandler(init, init);
      connectToPossibleExceptionHandler(forNode, cond);
      connectToPossibleExceptionHandler(iter, iter);
    } else {
      // We have for (item in collection) { body }
      Node item = forNode.getFirstChild();
      Node collection = item.getNext();
      Node body = collection.getNext();
      // The collection behaves like init.
      createEdge(collection, Branch.UNCOND, forNode);
      // The edge that transfer control to the beginning of the loop body.
      createEdge(forNode, Branch.ON_TRUE, computeFallThrough(body));
      // The edge to end of the loop.
      createEdge(forNode, Branch.ON_FALSE,
          computeFollowNode(forNode, this));
      connectToPossibleExceptionHandler(forNode, collection);
    }
  }

  private void handleSwitch(Node node) {
    // Transfer to the first non-DEFAULT CASE. if there are none, transfer
    // to the DEFAULT or the EMPTY node.
    Node next = getNextSiblingOfType(
        node.getFirstChild().getNext(), Token.CASE, Token.EMPTY);
    if (next != null) { // Has at least one CASE or EMPTY
      createEdge(node, Branch.UNCOND, next);
    } else { // Has no CASE but possibly a DEFAULT
      if (node.getFirstChild().getNext() != null) {
        createEdge(node, Branch.UNCOND, node.getFirstChild().getNext());
      } else { // No CASE, no DEFAULT
        createEdge(node, Branch.UNCOND, computeFollowNode(node, this));
      }
    }
    connectToPossibleExceptionHandler(node, node.getFirstChild());
  }

  private void handleCase(Node node) {
    // Case is a bit tricky....First it goes into the body if condition is true.
    createEdge(node, Branch.ON_TRUE,
        node.getFirstChild().getNext());
    // Look for the next CASE, skipping over DEFAULT.
    Node next = getNextSiblingOfType(node.getNext(), Token.CASE);
    if (next != null) { // Found a CASE
      Preconditions.checkState(next.isCase());
      createEdge(node, Branch.ON_FALSE, next);
    } else { // No more CASE found, go back and search for a DEFAULT.
      Node parent = node.getParent();
      Node deflt = getNextSiblingOfType(
        parent.getFirstChild().getNext(), Token.DEFAULT_CASE);
      if (deflt != null) { // Has a DEFAULT
        createEdge(node, Branch.ON_FALSE, deflt);
      } else { // No DEFAULT found, go to the follow of the SWITCH.
        createEdge(node, Branch.ON_FALSE, computeFollowNode(node, this));
      }
    }
    connectToPossibleExceptionHandler(node, node.getFirstChild());
  }

  private void handleDefault(Node node) {
    // Directly goes to the body. It should not transfer to the next case.
    createEdge(node, Branch.UNCOND, node.getFirstChild());
  }

  private void handleWith(Node node) {
    // Directly goes to the body. It should not transfer to the next case.
    createEdge(node, Branch.UNCOND, node.getLastChild());
    connectToPossibleExceptionHandler(node, node.getFirstChild());
  }

  private void handleStmtList(Node node) {
    int PROBE_START_LINE_485 = 485;
	com.google.javascript.rhino.Node p_node_1480_line_485 = node;
	Node control_flow_analysis_1_expr71_line_485 = p_node_1480_line_485.getParent();
	int PROBE_END_LINE_485 = 485;
	Node parent = control_flow_analysis_1_expr71_line_485;
    int PROBE_START_LINE_487 = 492;
	com.google.javascript.rhino.Node p_node_1480_line_487 = node;
	boolean control_flow_analysis_1_expr76_line_487 = p_node_1480_line_487.isBlock();
	boolean control_flow_analysis_1_expr77_line_487 = true;
	if (control_flow_analysis_1_expr76_line_487) {
		com.google.javascript.rhino.Node v_parent_1481_line_487 = parent;
		control_flow_analysis_1_expr77_line_487 = v_parent_1481_line_487 != null;
	}
	boolean control_flow_analysis_1_expr75_line_487 = control_flow_analysis_1_expr76_line_487
			&& control_flow_analysis_1_expr77_line_487;
	boolean control_flow_analysis_1_expr74_line_487 = control_flow_analysis_1_expr75_line_487 && parent.isTry();
	boolean control_flow_analysis_1_expr73_line_487 = control_flow_analysis_1_expr74_line_487
			&& NodeUtil.getCatchBlock(parent) == node;
	boolean control_flow_analysis_1_expr72_line_487 = control_flow_analysis_1_expr73_line_487
			&& !NodeUtil.hasCatchHandler(node);
	int PROBE_END_LINE_487 = 492;
	// Special case, don't add a block of empty CATCH block to the graph.
    if (control_flow_analysis_1_expr72_line_487) {
      return;
    }

    int PROBE_START_LINE_495 = 495;
	com.google.javascript.rhino.Node p_node_1480_line_495 = node;
	Node control_flow_analysis_1_expr78_line_495 = p_node_1480_line_495.getFirstChild();
	int PROBE_END_LINE_495 = 495;
	// A block transfer control to its first child if it is not empty.
    Node child = control_flow_analysis_1_expr78_line_495;

    // Function declarations are skipped since control doesn't go into that
    // function (unless it is called)
    while (true) {
      int PROBE_START_LINE_499 = 499;
		com.google.javascript.rhino.Node v_child_1482_line_499 = child;
		boolean control_flow_analysis_1_expr80_line_499 = v_child_1482_line_499 != null;
		boolean control_flow_analysis_1_expr81_line_499 = true;
		if (control_flow_analysis_1_expr80_line_499) {
			com.google.javascript.rhino.Node v_child_1482_line_499_v1 = child;
			control_flow_analysis_1_expr81_line_499 = v_child_1482_line_499_v1.isFunction();
		}
		boolean control_flow_analysis_1_expr79_line_499 = control_flow_analysis_1_expr80_line_499
				&& control_flow_analysis_1_expr81_line_499;
		if (!(control_flow_analysis_1_expr79_line_499)) {
			break;
		}
		int PROBE_END_LINE_499 = 499;
	child = child.getNext();
    }

    int PROBE_START_LINE_503 = 507;
	com.google.javascript.rhino.Node v_child_1482_line_503 = child;
	boolean control_flow_analysis_1_expr82_line_503 = v_child_1482_line_503 != null;
	int PROBE_END_LINE_503 = 507;
	if (control_flow_analysis_1_expr82_line_503) {
      int PROBE_START_LINE_504 = 504;
		com.google.javascript.rhino.Node p_node_1480_line_504 = node;
		com.google.javascript.jscomp.ControlFlowGraph.Branch q_uncond_65_line_504 = Branch.UNCOND;
		com.google.javascript.rhino.Node v_child_1482_line_504 = child;
		com.google.javascript.rhino.Node control_flow_analysis_1_expr84_line_504 = computeFallThrough(
				v_child_1482_line_504);
		int PROBE_END_LINE_504 = 504;
	createEdge(p_node_1480_line_504, q_uncond_65_line_504, control_flow_analysis_1_expr84_line_504);
    } else {
      int PROBE_START_LINE_506 = 506;
		com.google.javascript.rhino.Node p_node_1480_line_506 = node;
		com.google.javascript.jscomp.ControlFlowGraph.Branch q_uncond_66_line_506 = Branch.UNCOND;
		com.google.javascript.rhino.Node p_node_1480_line_506_v1 = node;
		com.google.javascript.rhino.Node control_flow_analysis_1_expr86_line_506 = computeFollowNode(
				p_node_1480_line_506_v1, this);
		int PROBE_END_LINE_506 = 506;
	createEdge(p_node_1480_line_506, q_uncond_66_line_506, control_flow_analysis_1_expr86_line_506);
    }

    int PROBE_START_LINE_510 = 522;
	com.google.javascript.rhino.Node v_parent_1481_line_510 = parent;
	boolean control_flow_analysis_1_expr88_line_510 = v_parent_1481_line_510 != null;
	int PROBE_END_LINE_510 = 522;
	// Synthetic blocks
    if (control_flow_analysis_1_expr88_line_510) {
      int PROBE_START_LINE_511 = 521;
		com.google.javascript.rhino.Node v_parent_1481_line_511 = parent;
		int control_flow_analysis_1_expr89_line_511 = v_parent_1481_line_511.getType();
		int PROBE_END_LINE_511 = 521;
	switch (control_flow_analysis_1_expr89_line_511) {
        case Token.DEFAULT_CASE:
        case Token.CASE:
        case Token.TRY:
          break;
        default:
	int PROBE_START_LINE_517 = 519;
	com.google.javascript.rhino.Node p_node_1480_line_517 = node;
	boolean control_flow_analysis_1_expr91_line_517 = p_node_1480_line_517.isBlock();
	boolean control_flow_analysis_1_expr92_line_517 = true;
	if (control_flow_analysis_1_expr91_line_517) {
		com.google.javascript.rhino.Node p_node_1480_line_517_v1 = node;
		control_flow_analysis_1_expr92_line_517 = p_node_1480_line_517_v1.isSyntheticBlock();
	}
	boolean control_flow_analysis_1_expr90_line_517 = control_flow_analysis_1_expr91_line_517
			&& control_flow_analysis_1_expr92_line_517;
	int PROBE_END_LINE_517 = 519;
	if (control_flow_analysis_1_expr90_line_517) {
            int PROBE_START_LINE_518 = 518;
			com.google.javascript.rhino.Node p_node_1480_line_518 = node;
			com.google.javascript.jscomp.ControlFlowGraph.Branch q_syn_block_66_line_518 = Branch.SYN_BLOCK;
			com.google.javascript.rhino.Node p_node_1480_line_518_v1 = node;
			com.google.javascript.rhino.Node control_flow_analysis_1_expr94_line_518 = computeFollowNode(
					p_node_1480_line_518_v1, this);
			int PROBE_END_LINE_518 = 518;
			createEdge(p_node_1480_line_518, q_syn_block_66_line_518, control_flow_analysis_1_expr94_line_518);
          }
          break;
      }
    }
  }

  private void handleFunction(Node node) {
    int PROBE_START_LINE_527 = 527;
	com.google.javascript.rhino.Node p_node_1483_line_527 = node;
	int control_flow_analysis_1_expr98_line_527 = p_node_1483_line_527.getChildCount();
	boolean control_flow_analysis_1_expr97_line_527 = control_flow_analysis_1_expr98_line_527 >= 3;
	int PROBE_END_LINE_527 = 527;
	// A block transfer control to its first child if it is not empty.
    Preconditions.checkState(control_flow_analysis_1_expr97_line_527);
    int PROBE_START_LINE_528 = 529;
	com.google.javascript.rhino.Node p_node_1483_line_528 = node;
	com.google.javascript.jscomp.ControlFlowGraph.Branch q_uncond_67_line_528 = Branch.UNCOND;
	int PROBE_END_LINE_528 = 529;
	createEdge(p_node_1483_line_528, q_uncond_67_line_528,
        computeFallThrough(node.getFirstChild().getNext().getNext()));
    int PROBE_START_LINE_530 = 530;
	Deque<com.google.javascript.rhino.Node> f_exception_handler_1444_line_530 = exceptionHandler;
	com.google.javascript.rhino.Node control_flow_analysis_1_expr103_line_530 = f_exception_handler_1444_line_530
			.peek();
	com.google.javascript.rhino.Node p_node_1483_line_530 = node;
	boolean control_flow_analysis_1_expr102_line_530 = control_flow_analysis_1_expr103_line_530 == p_node_1483_line_530;
	int PROBE_END_LINE_530 = 530;
	Preconditions.checkState(control_flow_analysis_1_expr102_line_530);
    int PROBE_START_LINE_531 = 531;
	Deque<com.google.javascript.rhino.Node> f_exception_handler_1444_line_531 = exceptionHandler;
	int PROBE_END_LINE_531 = 531;
	f_exception_handler_1444_line_531.pop();
  }

  private void handleExpr(Node node) {
    int PROBE_START_LINE_535 = 535;
	com.google.javascript.rhino.Node p_node_1484_line_535 = node;
	com.google.javascript.jscomp.ControlFlowGraph.Branch q_uncond_67_line_535 = Branch.UNCOND;
	com.google.javascript.rhino.Node p_node_1484_line_535_v1 = node;
	com.google.javascript.rhino.Node control_flow_analysis_1_expr106_line_535 = computeFollowNode(
			p_node_1484_line_535_v1, this);
	int PROBE_END_LINE_535 = 535;
	createEdge(p_node_1484_line_535, q_uncond_67_line_535, control_flow_analysis_1_expr106_line_535);
    int PROBE_START_LINE_536 = 536;
	com.google.javascript.rhino.Node p_node_1484_line_536 = node;
	com.google.javascript.rhino.Node p_node_1484_line_536_v1 = node;
	int PROBE_END_LINE_536 = 536;
	connectToPossibleExceptionHandler(p_node_1484_line_536, p_node_1484_line_536_v1);
  }

  private void handleThrow(Node node) {
    connectToPossibleExceptionHandler(node, node);
  }

  private void handleTry(Node node) {
    createEdge(node, Branch.UNCOND, node.getFirstChild());
  }

  private void handleCatch(Node node) {
    createEdge(node, Branch.UNCOND, node.getLastChild());
  }

  private void handleBreak(Node node) {
    String label = null;
    // See if it is a break with label.
    if (node.hasChildren()) {
      label = node.getFirstChild().getString();
    }
    Node cur;
    Node previous = null;
    Node lastJump;
    Node parent = node.getParent();
    /*
     * Continuously look up the ancestor tree for the BREAK target or the target
     * with the corresponding label and connect to it. If along the path we
     * discover a FINALLY, we will connect the BREAK to that FINALLY. From then
     * on, we will just record the control flow changes in the finallyMap. This
     * is due to the fact that we need to connect any node that leaves its own
     * FINALLY block to the outer FINALLY or the BREAK's target but those nodes
     * are not known yet due to the way we traverse the nodes.
     */
    for (cur = node, lastJump = node;
        !isBreakTarget(cur, label);
        cur = parent, parent = parent.getParent()) {
      if (cur.isTry() && NodeUtil.hasFinally(cur)
          && cur.getLastChild() != previous) {
        if (lastJump == node) {
          createEdge(lastJump, Branch.UNCOND, computeFallThrough(
              cur.getLastChild()));
        } else {
          finallyMap.put(lastJump, computeFallThrough(cur.getLastChild()));
        }
        lastJump = cur;
      }
      if (parent == null) {
        if (compiler.isIdeMode()) {
          // In IDE mode, we expect that the data flow graph may
          // not be well-formed.
          return;
        } else {
          throw new IllegalStateException("Cannot find break target.");
        }
      }
      previous = cur;
    }
    if (lastJump == node) {
      createEdge(lastJump, Branch.UNCOND, computeFollowNode(cur, this));
    } else {
      finallyMap.put(lastJump, computeFollowNode(cur, this));
    }
  }

  private void handleContinue(Node node) {
    String label = null;
    if (node.hasChildren()) {
      label = node.getFirstChild().getString();
    }
    Node cur;
    Node previous = null;
    Node lastJump;

    // Similar to handBreak's logic with a few minor variation.
    Node parent = node.getParent();
    for (cur = node, lastJump = node;
        !isContinueTarget(cur, parent, label);
        cur = parent, parent = parent.getParent()) {
      if (cur.isTry() && NodeUtil.hasFinally(cur)
          && cur.getLastChild() != previous) {
        if (lastJump == node) {
          createEdge(lastJump, Branch.UNCOND, cur.getLastChild());
        } else {
          finallyMap.put(lastJump, computeFallThrough(cur.getLastChild()));
        }
        lastJump = cur;
      }
      Preconditions.checkState(parent != null, "Cannot find continue target.");
      previous = cur;
    }
    Node iter = cur;
    if (cur.getChildCount() == 4) {
      iter = cur.getFirstChild().getNext().getNext();
    }

    if (lastJump == node) {
      createEdge(node, Branch.UNCOND, iter);
    } else {
      finallyMap.put(lastJump, iter);
    }
  }

  private void handleReturn(Node node) {
    Node lastJump = null;
    for (Iterator<Node> iter = exceptionHandler.iterator(); iter.hasNext();) {
      Node curHandler = iter.next();
      if (curHandler.isFunction()) {
        break;
      }
      if (NodeUtil.hasFinally(curHandler)) {
        if (lastJump == null) {
          createEdge(node, Branch.UNCOND, curHandler.getLastChild());
        } else {
          finallyMap.put(lastJump,
              computeFallThrough(curHandler.getLastChild()));
        }
        lastJump = curHandler;
      }
    }

    if (node.hasChildren()) {
      connectToPossibleExceptionHandler(node, node.getFirstChild());
    }

    if (lastJump == null) {
      createEdge(node, Branch.UNCOND, null);
    } else {
      finallyMap.put(lastJump, null);
    }
  }

  private void handleStmt(Node node) {
    int PROBE_START_LINE_670 = 670;
	com.google.javascript.rhino.Node p_node_1491_line_670 = node;
	com.google.javascript.jscomp.ControlFlowGraph.Branch q_uncond_67_line_670 = Branch.UNCOND;
	com.google.javascript.rhino.Node p_node_1491_line_670_v1 = node;
	com.google.javascript.rhino.Node control_flow_analysis_1_expr110_line_670 = computeFollowNode(
			p_node_1491_line_670_v1, this);
	int PROBE_END_LINE_670 = 670;
	// Simply transfer to the next line.
    createEdge(p_node_1491_line_670, q_uncond_67_line_670, control_flow_analysis_1_expr110_line_670);
    int PROBE_START_LINE_671 = 671;
	com.google.javascript.rhino.Node p_node_1491_line_671 = node;
	com.google.javascript.rhino.Node p_node_1491_line_671_v1 = node;
	int PROBE_END_LINE_671 = 671;
	connectToPossibleExceptionHandler(p_node_1491_line_671, p_node_1491_line_671_v1);
  }

  static Node computeFollowNode(Node node, ControlFlowAnalysis cfa) {
    int PROBE_START_LINE_675 = 675;
	com.google.javascript.rhino.Node p_node_1492_line_675 = node;
	com.google.javascript.rhino.Node p_node_1492_line_675_v1 = node;
	com.google.javascript.jscomp.ControlFlowAnalysis p_cfa_1493_line_675 = cfa;
	com.google.javascript.rhino.Node control_flow_analysis_1_expr113_line_675 = computeFollowNode(p_node_1492_line_675,
			p_node_1492_line_675_v1, p_cfa_1493_line_675);
	int PROBE_END_LINE_675 = 675;
	return control_flow_analysis_1_expr113_line_675;
  }

  static Node computeFollowNode(Node node) {
    return computeFollowNode(node, node, null);
  }

  /**
   * Computes the follow() node of a given node and its parent. There is a side
   * effect when calling this function. If this function computed an edge that
   * exists a FINALLY, it'll attempt to connect the fromNode to the outer
   * FINALLY according to the finallyMap.
   *
   * @param fromNode The original source node since {@code node} is changed
   *        during recursion.
   * @param node The node that follow() should compute.
   */
  private static Node computeFollowNode(
      Node fromNode, Node node, ControlFlowAnalysis cfa) {
    int PROBE_START_LINE_712 = 712;
		com.google.javascript.rhino.Node p_node_1496_line_712 = node;
		Node control_flow_analysis_1_expr114_line_712 = p_node_1496_line_712.getParent();
		int PROBE_END_LINE_712 = 712;
	/*
     * This is the case where:
     *
     * 1. Parent is null implies that we are transferring control to the end of
     * the script.
     *
     * 2. Parent is a function implies that we are transferring control back to
     * the caller of the function.
     *
     * 3. If the node is a return statement, we should also transfer control
     * back to the caller of the function.
     *
     * 4. If the node is root then we have reached the end of what we have been
     * asked to traverse.
     *
     * In all cases we should transfer control to a "symbolic return" node.
     * This will make life easier for DFAs.
     */
    Node parent = control_flow_analysis_1_expr114_line_712;
    int PROBE_START_LINE_713 = 716;
	com.google.javascript.rhino.Node v_parent_1498_line_713 = parent;
	boolean control_flow_analysis_1_expr117_line_713 = v_parent_1498_line_713 == null;
	boolean control_flow_analysis_1_expr118_line_713 = false;
	if (!control_flow_analysis_1_expr117_line_713) {
		com.google.javascript.rhino.Node v_parent_1498_line_713_v1 = parent;
		control_flow_analysis_1_expr118_line_713 = v_parent_1498_line_713_v1.isFunction();
	}
	boolean control_flow_analysis_1_expr116_line_713 = control_flow_analysis_1_expr117_line_713
			|| control_flow_analysis_1_expr118_line_713;
	boolean control_flow_analysis_1_expr115_line_713 = control_flow_analysis_1_expr116_line_713
			|| (cfa != null && node == cfa.root);
	int PROBE_END_LINE_713 = 716;
	if (control_flow_analysis_1_expr115_line_713) {
      return null;
    }

    int PROBE_START_LINE_719 = 772;
	com.google.javascript.rhino.Node v_parent_1498_line_719 = parent;
	int control_flow_analysis_1_expr119_line_719 = v_parent_1498_line_719.getType();
	int PROBE_END_LINE_719 = 772;
	// If we are just before a IF/WHILE/DO/FOR:
    switch (control_flow_analysis_1_expr119_line_719) {
      // The follow() of any of the path from IF would be what follows IF.
      case Token.IF:
        return computeFollowNode(fromNode, parent, cfa);
      case Token.CASE:
      case Token.DEFAULT_CASE:
        // After the body of a CASE, the control goes to the body of the next
        // case, without having to go to the case condition.
        if (parent.getNext() != null) {
          if (parent.getNext().isCase()) {
            return parent.getNext().getFirstChild().getNext();
          } else if (parent.getNext().isDefaultCase()) {
            return parent.getNext().getFirstChild();
          } else {
            Preconditions.checkState(false, "Not reachable");
          }
        } else {
          return computeFollowNode(fromNode, parent, cfa);
        }
        break;
      case Token.FOR:
        if (NodeUtil.isForIn(parent)) {
          return parent;
        } else {
          return parent.getFirstChild().getNext().getNext();
        }
      case Token.WHILE:
      case Token.DO:
        return parent;
      case Token.TRY:
        // If we are coming out of the TRY block...
        if (parent.getFirstChild() == node) {
          if (NodeUtil.hasFinally(parent)) { // and have FINALLY block.
            return computeFallThrough(parent.getLastChild());
          } else { // and have no FINALLY.
            return computeFollowNode(fromNode, parent, cfa);
          }
        // CATCH block.
        } else if (NodeUtil.getCatchBlock(parent) == node){
          if (NodeUtil.hasFinally(parent)) { // and have FINALLY block.
            return computeFallThrough(node.getNext());
          } else {
            return computeFollowNode(fromNode, parent, cfa);
          }
        // If we are coming out of the FINALLY block...
        } else if (parent.getLastChild() == node){
          if (cfa != null) {
            for (Node finallyNode : cfa.finallyMap.get(parent)) {
              cfa.createEdge(fromNode, Branch.ON_EX, finallyNode);
            }
          }
          return computeFollowNode(fromNode, parent, cfa);
        }
    }

    int PROBE_START_LINE_776 = 776;
	com.google.javascript.rhino.Node p_node_1496_line_776 = node;
	Node control_flow_analysis_1_expr120_line_776 = p_node_1496_line_776.getNext();
	int PROBE_END_LINE_776 = 776;
	// Now that we are done with the special cases follow should be its
    // immediate sibling, unless its sibling is a function
    Node nextSibling = control_flow_analysis_1_expr120_line_776;

    // Skip function declarations because control doesn't get pass into it.
    while (true) {
      int PROBE_START_LINE_779 = 779;
		com.google.javascript.rhino.Node v_next_sibling_1499_line_779 = nextSibling;
		boolean control_flow_analysis_1_expr122_line_779 = v_next_sibling_1499_line_779 != null;
		boolean control_flow_analysis_1_expr123_line_779 = true;
		if (control_flow_analysis_1_expr122_line_779) {
			com.google.javascript.rhino.Node v_next_sibling_1499_line_779_v1 = nextSibling;
			control_flow_analysis_1_expr123_line_779 = v_next_sibling_1499_line_779_v1.isFunction();
		}
		boolean control_flow_analysis_1_expr121_line_779 = control_flow_analysis_1_expr122_line_779
				&& control_flow_analysis_1_expr123_line_779;
		if (!(control_flow_analysis_1_expr121_line_779)) {
			break;
		}
		int PROBE_END_LINE_779 = 779;
	nextSibling = nextSibling.getNext();
    }

    int PROBE_START_LINE_783 = 788;
	com.google.javascript.rhino.Node v_next_sibling_1499_line_783 = nextSibling;
	boolean control_flow_analysis_1_expr124_line_783 = v_next_sibling_1499_line_783 != null;
	int PROBE_END_LINE_783 = 788;
	if (control_flow_analysis_1_expr124_line_783) {
      int PROBE_START_LINE_784 = 784;
		com.google.javascript.rhino.Node v_next_sibling_1499_line_784 = nextSibling;
		com.google.javascript.rhino.Node control_flow_analysis_1_expr125_line_784 = computeFallThrough(
				v_next_sibling_1499_line_784);
		int PROBE_END_LINE_784 = 784;
	return control_flow_analysis_1_expr125_line_784;
    } else {
      int PROBE_START_LINE_787 = 787;
		com.google.javascript.rhino.Node p_from_node_1495_line_787 = fromNode;
		com.google.javascript.rhino.Node v_parent_1498_line_787 = parent;
		com.google.javascript.jscomp.ControlFlowAnalysis p_cfa_1497_line_787 = cfa;
		com.google.javascript.rhino.Node control_flow_analysis_1_expr126_line_787 = computeFollowNode(
				p_from_node_1495_line_787, v_parent_1498_line_787, p_cfa_1497_line_787);
		int PROBE_END_LINE_787 = 787;
	// If there are no more siblings, control is transferred up the AST.
      return control_flow_analysis_1_expr126_line_787;
    }
  }

  /**
   * Computes the destination node of n when we want to fallthrough into the
   * subtree of n. We don't always create a CFG edge into n itself because of
   * DOs and FORs.
   */
  static Node computeFallThrough(Node n) {
    int PROBE_START_LINE_797 = 809;
	com.google.javascript.rhino.Node p_n_1500_line_797 = n;
	int control_flow_analysis_1_expr127_line_797 = p_n_1500_line_797.getType();
	int PROBE_END_LINE_797 = 809;
	switch (control_flow_analysis_1_expr127_line_797) {
      case Token.DO:
        return computeFallThrough(n.getFirstChild());
      case Token.FOR:
        if (NodeUtil.isForIn(n)) {
          return n.getFirstChild().getNext();
        }
        return computeFallThrough(n.getFirstChild());
      case Token.LABEL:
        return computeFallThrough(n.getLastChild());
      default:
	int PROBE_START_LINE_808 = 808;
	com.google.javascript.rhino.Node p_n_1500_line_808 = n;
	int PROBE_END_LINE_808 = 808;
	return p_n_1500_line_808;
    }
  }

  /**
   * Connects the two nodes in the control flow graph.
   *
   * @param fromNode Source.
   * @param toNode Destination.
   */
  private void createEdge(Node fromNode, ControlFlowGraph.Branch branch,
      Node toNode) {
    int PROBE_START_LINE_820 = 820;
		ControlFlowGraph<com.google.javascript.rhino.Node> f_cfg_1452_line_820 = cfg;
		com.google.javascript.rhino.Node p_from_node_1501_line_820 = fromNode;
		int PROBE_END_LINE_820 = 820;
	f_cfg_1452_line_820.createNode(p_from_node_1501_line_820);
    int PROBE_START_LINE_821 = 821;
	ControlFlowGraph<com.google.javascript.rhino.Node> f_cfg_1452_line_821 = cfg;
	com.google.javascript.rhino.Node p_to_node_1503_line_821 = toNode;
	int PROBE_END_LINE_821 = 821;
	f_cfg_1452_line_821.createNode(p_to_node_1503_line_821);
    int PROBE_START_LINE_822 = 822;
	ControlFlowGraph<com.google.javascript.rhino.Node> f_cfg_1452_line_822 = cfg;
	com.google.javascript.rhino.Node p_from_node_1501_line_822 = fromNode;
	com.google.javascript.jscomp.ControlFlowGraph.Branch p_branch_1502_line_822 = branch;
	com.google.javascript.rhino.Node p_to_node_1503_line_822 = toNode;
	int PROBE_END_LINE_822 = 822;
	f_cfg_1452_line_822.connectIfNotFound(p_from_node_1501_line_822, p_branch_1502_line_822, p_to_node_1503_line_822);
  }

  /**
   * Connects cfgNode to the proper CATCH block if target subtree might throw
   * an exception. If there are FINALLY blocks reached before a CATCH, it will
   * make the corresponding entry in finallyMap.
   */
  private void connectToPossibleExceptionHandler(Node cfgNode, Node target) {
    int PROBE_START_LINE_831 = 856;
	com.google.javascript.rhino.Node p_target_1505_line_831 = target;
	boolean control_flow_analysis_1_expr132_line_831 = mayThrowException(p_target_1505_line_831);
	boolean control_flow_analysis_1_expr133_line_831 = true;
	if (control_flow_analysis_1_expr132_line_831) {
		Deque<com.google.javascript.rhino.Node> f_exception_handler_1444_line_831 = exceptionHandler;
		boolean control_flow_analysis_1_expr134_line_831 = f_exception_handler_1444_line_831.isEmpty();
		control_flow_analysis_1_expr133_line_831 = !control_flow_analysis_1_expr134_line_831;
	}
	boolean control_flow_analysis_1_expr131_line_831 = control_flow_analysis_1_expr132_line_831
			&& control_flow_analysis_1_expr133_line_831;
	int PROBE_END_LINE_831 = 856;
	if (control_flow_analysis_1_expr131_line_831) {
      Node lastJump = cfgNode;
      for (Node handler : exceptionHandler) {
        if (handler.isFunction()) {
          return;
        }
        Preconditions.checkState(handler.isTry());
        Node catchBlock = NodeUtil.getCatchBlock(handler);

        if (!NodeUtil.hasCatchHandler(catchBlock)) { // No catch but a FINALLY.
          if (lastJump == cfgNode) {
            createEdge(cfgNode, Branch.ON_EX, handler.getLastChild());
          } else {
            finallyMap.put(lastJump, handler.getLastChild());
          }
        } else { // Has a catch.
          if (lastJump == cfgNode) {
            createEdge(cfgNode, Branch.ON_EX, catchBlock);
            return;
          } else {
            finallyMap.put(lastJump, catchBlock);
          }
        }
        lastJump = handler;
      }
    }
  }

  /**
   * Get the next sibling (including itself) of one of the given types.
   */
  private static Node getNextSiblingOfType(Node first, int ... types) {
    for (Node c = first; c != null; c = c.getNext()) {
      for (int type : types) {
        if (c.getType() == type) {
          return c;
        }
      }
    }
    return null;
  }

  /**
   * Checks if target is actually the break target of labeled continue. The
   * label can be null if it is an unlabeled break.
   */
  public static boolean isBreakTarget(Node target, String label) {
    return isBreakStructure(target, label != null) &&
      matchLabel(target.getParent(), label);
  }

  /**
   * Checks if target is actually the continue target of labeled continue. The
   * label can be null if it is an unlabeled continue.
   */
  private static boolean isContinueTarget(
      Node target, Node parent, String label) {
    return isContinueStructure(target) && matchLabel(parent, label);
  }
  /**
   * Check if label is actually referencing the target control structure. If
   * label is null, it always returns true.
   */
  private static boolean matchLabel(Node target, String label) {
    if (label == null) {
      return true;
    }
    while (target.isLabel()) {
      if (target.getFirstChild().getString().equals(label)) {
        return true;
      }
      target = target.getParent();
    }
    return false;
  }

  /**
   * Determines if the subtree might throw an exception.
   */
  public static boolean mayThrowException(Node n) {
    int PROBE_START_LINE_911 = 924;
	com.google.javascript.rhino.Node p_n_1515_line_911 = n;
	int control_flow_analysis_1_expr135_line_911 = p_n_1515_line_911.getType();
	int PROBE_END_LINE_911 = 924;
	switch (control_flow_analysis_1_expr135_line_911) {
      case Token.CALL:
      case Token.GETPROP:
      case Token.GETELEM:
      case Token.THROW:
      case Token.NEW:
      case Token.ASSIGN:
      case Token.INC:
      case Token.DEC:
      case Token.INSTANCEOF:
        return true;
      case Token.FUNCTION:
        return false;
    }
    int PROBE_START_LINE_924 = 924;
	boolean FOR_STMT_TOGGLE_LINE_925 = false;
	int PROBE_END_LINE_924 = 924;
	for (Node c = null; true;) {
      int PROBE_START_LINE_926 = 928;
		if (!FOR_STMT_TOGGLE_LINE_925) {
			FOR_STMT_TOGGLE_LINE_925 = true;
			com.google.javascript.rhino.Node p_n_1515_line_925 = n;
			Node control_flow_analysis_1_expr137_line_925 = p_n_1515_line_925.getFirstChild();
			c = control_flow_analysis_1_expr137_line_925;
		} else {
			if (FOR_STMT_TOGGLE_LINE_925) {
				com.google.javascript.rhino.Node v_c_1516_line_925_v1 = c;
				com.google.javascript.rhino.Node control_flow_analysis_1_expr140_line_925 = v_c_1516_line_925_v1
						.getNext();
				c = control_flow_analysis_1_expr140_line_925;
			} else {
				FOR_STMT_TOGGLE_LINE_925 = true;
			}
		}
		com.google.javascript.rhino.Node v_c_1516_line_925 = c;
		boolean control_flow_analysis_1_expr138_line_925 = v_c_1516_line_925 != null;
		if (!(control_flow_analysis_1_expr138_line_925)) {
			break;
		}
		com.google.javascript.rhino.Node v_c_1516_line_926 = c;
		boolean control_flow_analysis_1_expr143_line_926 = ControlFlowGraph.isEnteringNewCfgNode(v_c_1516_line_926);
		boolean control_flow_analysis_1_expr142_line_926 = !control_flow_analysis_1_expr143_line_926;
		boolean control_flow_analysis_1_expr144_line_926 = true;
		if (control_flow_analysis_1_expr142_line_926) {
			com.google.javascript.rhino.Node v_c_1516_line_926_v1 = c;
			control_flow_analysis_1_expr144_line_926 = mayThrowException(v_c_1516_line_926_v1);
		}
		boolean control_flow_analysis_1_expr141_line_926 = control_flow_analysis_1_expr142_line_926
				&& control_flow_analysis_1_expr144_line_926;
		int PROBE_END_LINE_926 = 928;
	if (control_flow_analysis_1_expr141_line_926) {
        return true;
      }
    }
    return false;
  }

  /**
   * Determines whether the given node can be terminated with a BREAK node.
   */
  static boolean isBreakStructure(Node n, boolean labeled) {
    switch (n.getType()) {
      case Token.FOR:
      case Token.DO:
      case Token.WHILE:
      case Token.SWITCH:
        return true;
      case Token.BLOCK:
      case Token.IF:
      case Token.TRY:
        return labeled;
      default:
        return false;
    }
  }

  /**
   * Determines whether the given node can be advanced with a CONTINUE node.
   */
  static boolean isContinueStructure(Node n) {
    switch (n.getType()) {
      case Token.FOR:
      case Token.DO:
      case Token.WHILE:
        return true;
      default:
        return false;
    }
  }

  /**
   * Get the TRY block with a CATCH that would be run if n throws an exception.
   * @return The CATCH node or null if it there isn't a CATCH before the
   *     the function terminates.
   */
  static Node getExceptionHandler(Node n) {
    for (Node cur = n;
        !cur.isScript() && !cur.isFunction();
        cur = cur.getParent()) {
      Node catchNode = getCatchHandlerForBlock(cur);
      if (catchNode != null) {
        return catchNode;
      }
    }
    return null;
  }

  /**
   * Locate the catch BLOCK given the first block in a TRY.
   * @return The CATCH node or null there is no catch handler.
   */
  static Node getCatchHandlerForBlock(Node block) {
    if (block.isBlock() &&
        block.getParent().isTry() &&
        block.getParent().getFirstChild() == block) {
      for (Node s = block.getNext(); s != null; s = s.getNext()) {
        if (NodeUtil.hasCatchHandler(s)) {
          return s.getFirstChild();
        }
      }
    }
    return null;
  }

  /**
   * A {@link ControlFlowGraph} which provides a node comparator based on the
   * pre-order traversal of the AST.
   */
  private static class AstControlFlowGraph extends ControlFlowGraph<Node> {
    private final Map<DiGraphNode<Node, Branch>, Integer> priorities;

    /**
     * Constructor.
     * @param entry The entry node.
     * @param priorities The map from nodes to position in the AST (to be
     *    filled by the {@link ControlFlowAnalysis#shouldTraverse}).
     */
    private AstControlFlowGraph(Node entry,
        Map<DiGraphNode<Node, Branch>, Integer> priorities,
        boolean edgeAnnotations) {
      super(entry,
          true /* node annotations */, edgeAnnotations);
      int PROBE_START_LINE_1018 = 1018;
	Map<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>, Integer> p_priorities_1523_line_1018 = priorities;
	int PROBE_END_LINE_1018 = 1018;
	this.priorities = p_priorities_1523_line_1018;
    }

    @Override
    /**
     * Returns a node comparator based on the pre-order traversal of the AST.
     * @param isForward x 'before' y in the pre-order traversal implies
     * x 'less than' y (if true) and x 'greater than' y (if false).
     */
    public Comparator<DiGraphNode<Node, Branch>> getOptionalNodeComparator(
        boolean isForward) {
      int PROBE_START_LINE_1029 = 1045;
			boolean p_is_forward_1526_line_1029 = isForward;
			int PROBE_END_LINE_1029 = 1045;
	if (p_is_forward_1526_line_1029) {
        return new Comparator<DiGraphNode<Node, Branch>>() {
          @Override
          public int compare(
              DiGraphNode<Node, Branch> n1, DiGraphNode<Node, Branch> n2) {
            int PROBE_START_LINE_1034 = 1034;
				com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> p_n_1_1527_line_1034 = n1;
				int control_flow_analysis_1_expr151_line_1034 = getPosition(p_n_1_1527_line_1034);
				com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> p_n_2_1528_line_1034 = n2;
				int control_flow_analysis_1_expr152_line_1034 = getPosition(p_n_2_1528_line_1034);
				int control_flow_analysis_1_expr150_line_1034 = control_flow_analysis_1_expr151_line_1034
						- control_flow_analysis_1_expr152_line_1034;
				int PROBE_END_LINE_1034 = 1034;
			return control_flow_analysis_1_expr150_line_1034;
          }
        };
      } else {
        return new Comparator<DiGraphNode<Node, Branch>>() {
          @Override
          public int compare(
              DiGraphNode<Node, Branch> n1, DiGraphNode<Node, Branch> n2) {
            return getPosition(n2) - getPosition(n1);
          }
        };
      }
    }

    /**
     * Gets the pre-order traversal position of the given node.
     * @return An arbitrary counter used for comparing positions.
     */
    private int getPosition(DiGraphNode<Node, Branch> n) {
      int PROBE_START_LINE_1053 = 1053;
		Map<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch>, Integer> f_priorities_1525_line_1053 = priorities;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph.Branch> p_n_1531_line_1053 = n;
		Integer control_flow_analysis_1_expr153_line_1053 = f_priorities_1525_line_1053.get(p_n_1531_line_1053);
		int PROBE_END_LINE_1053 = 1053;
	Integer priority = control_flow_analysis_1_expr153_line_1053;
      int PROBE_START_LINE_1054 = 1054;
	Integer v_priority_1532_line_1054 = priority;
	int PROBE_END_LINE_1054 = 1054;
	Preconditions.checkNotNull(v_priority_1532_line_1054);
      int PROBE_START_LINE_1055 = 1055;
	Integer v_priority_1532_line_1055 = priority;
	int PROBE_END_LINE_1055 = 1055;
	return v_priority_1532_line_1055;
    }
  }
}
