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

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.javascript.jscomp.ControlFlowGraph.Branch;
import com.google.javascript.jscomp.NodeTraversal.AbstractPostOrderCallback;
import com.google.javascript.jscomp.Scope.Var;
import com.google.javascript.jscomp.graph.Annotation;
import com.google.javascript.jscomp.graph.DiGraph.DiGraphNode;
import com.google.javascript.jscomp.graph.LatticeElement;
import com.google.javascript.rhino.Node;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/**
 * A framework to help writing static program analysis. A subclass of
 * this framework should specify how a single node changes the state
 * of a program. This class finds a safe estimate (a fixed-point) for
 * the whole program. The proven facts about the program will be
 * annotated with
 * {@link com.google.javascript.jscomp.graph.GraphNode#setAnnotation} to the
 * given control flow graph's nodes in form of {@link LatticeElement}
 * after calling {@link #analyze()}.
 *
 * <p>As a guideline, the following is a list of behaviors that any analysis
 * can take:
 * <ol>
 * <li>Flow Direction: Is the analysis a forward or backward analysis?
 * <li>Lattice Elements: How does the analysis represent the state of the
 * program at any given point?
 * <li>JOIN Operation: Given two incoming paths and a lattice state value, what
 * can the compiler conclude at the join point?
 * <li>Flow Equations: How does an instruction modify the state of program in
 * terms of lattice values?
 * <li>Initial Entry Value: What can the compiler assume at the beginning of the
 * program?
 * <li>Initial Estimate: What can the compiler assume at each point of the
 * program? (What is the BOTTOM value of the lattice) By definition this lattice
 * JOIN {@code x} for any {@code x} must also be {@code x}.
 * </ol>
 * To make these behaviors known to the framework, the following steps must be
 * taken.
 * <ol>
 * <li>Flow Direction: Implement {@link #isForward()}.
 * <li>Lattice Elements: Implement {@link LatticeElement}.
 * <li>JOIN Operation: Implement
 *    {@link JoinOp#apply}.
 * <li>Flow Equations: Implement
 * {@link #flowThrough(Object, LatticeElement)}.
 * <li>Initial Entry Value: Implement {@link #createEntryLattice()}.
 * <li>Initial Estimate: Implement {@link #createInitialEstimateLattice()}.
 * </ol>
 *
 * <p>Upon execution of the {@link #analyze()} method, nodes of the input
 * control flow graph will be annotated with a {@link FlowState} object that
 * represents maximum fixed point solution. Any previous annotations at the
 * nodes of the control flow graph will be lost.
 *
 *
 * @param <N> The control flow graph's node value type.
 * @param <L> Lattice element type.
 */
abstract class DataFlowAnalysis<N, L extends LatticeElement> {

  private final ControlFlowGraph<N> cfg;
  final JoinOp<L> joinOp;
  protected final Set<DiGraphNode<N, Branch>> orderedWorkSet;

  /*
   * Feel free to increase this to a reasonable number if you are finding that
   * more and more passes need more than 200000 steps before finding a
   * fixed-point. If you just have a special case, consider calling
   * {@link #analyse(int)} instead.
   */
  public static final int MAX_STEPS = 200000;

  /**
   * Constructs a data flow analysis.
   *
   * <p>Typical usage
   * <pre>
   * DataFlowAnalysis dfa = ...
   * dfa.analyze();
   * </pre>
   *
   * {@link #analyze()} annotates the result to the control flow graph by
   * means of {@link DiGraphNode#setAnnotation} without any
   * modification of the graph itself. Additional calls to {@link #analyze()}
   * recomputes the analysis which can be useful if the control flow graph
   * has been modified.
   *
   * @param targetCfg The control flow graph object that this object performs
   *     on. Modification of the graph requires a separate call to
   *     {@link #analyze()}.
   *
   * @see #analyze()
   */
  DataFlowAnalysis(ControlFlowGraph<N> targetCfg, JoinOp<L> joinOp) {
    int PROBE_START_LINE_121 = 121;
	ControlFlowGraph<N> p_target_cfg_1146_line_121 = targetCfg;
	int PROBE_END_LINE_121 = 121;
	this.cfg = p_target_cfg_1146_line_121;
    int PROBE_START_LINE_122 = 122;
	JoinOp<L> p_join_op_1147_line_122 = joinOp;
	int PROBE_END_LINE_122 = 122;
	this.joinOp = p_join_op_1147_line_122;
    Comparator<DiGraphNode<N, Branch>> nodeComparator =
      cfg.getOptionalNodeComparator(isForward());
    int PROBE_START_LINE_125 = 129;
	Comparator<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_node_comparator_1150_line_125 = nodeComparator;
	boolean data_flow_analysis_1_expr8_line_125 = v_node_comparator_1150_line_125 != null;
	int PROBE_END_LINE_125 = 129;
	if (data_flow_analysis_1_expr8_line_125) {
      int PROBE_START_LINE_126 = 126;
		Comparator<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_node_comparator_1150_line_126 = nodeComparator;
		TreeSet<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> data_flow_analysis_1_expr11_line_126 = Sets
				.newTreeSet(v_node_comparator_1150_line_126);
		int PROBE_END_LINE_126 = 126;
	this.orderedWorkSet = data_flow_analysis_1_expr11_line_126;
    } else {
      this.orderedWorkSet = Sets.newLinkedHashSet();
    }
  }

  /**
   * Returns the control flow graph that this analysis was performed on.
   * Modifications can be done on this graph, however, the only time that the
   * annotations are correct is after {@link #analyze()} is called and before
   * the graph has been modified.
   */
  final ControlFlowGraph<N> getCfg() {
    int PROBE_START_LINE_139 = 139;
	ControlFlowGraph<N> f_cfg_1148_line_139 = cfg;
	int PROBE_END_LINE_139 = 139;
	return f_cfg_1148_line_139;
  }

  /**
   * Returns the lattice element at the exit point.
   */
  L getExitLatticeElement() {
    DiGraphNode<N, Branch> node = getCfg().getImplicitReturn();
    FlowState<L> state = node.getAnnotation();
    return state.getIn();
  }

  @SuppressWarnings("unchecked")
  protected L join(L latticeA, L latticeB) {
    return joinOp.apply(Lists.<L>newArrayList(latticeA, latticeB));
  }

  /**
   * Checks whether the analysis is a forward flow analysis or backward flow
   * analysis.
   *
   * @return {@code true} if it is a forward analysis.
   */
  abstract boolean isForward();

  /**
   * Computes the output state for a given node and input state.
   *
   * @param node The node.
   * @param input Input lattice that should be read-only.
   * @return Output lattice.
   */
  abstract L flowThrough(N node, L input);

  /**
   * Finds a fixed-point solution using at most {@link #MAX_STEPS}
   * iterations.
   *
   * @see #analyze(int)
   */
  final void analyze() {
    int PROBE_START_LINE_180 = 180;
	int f_max_steps_1156_line_180 = MAX_STEPS;
	int PROBE_END_LINE_180 = 180;
	analyze(f_max_steps_1156_line_180);
  }

  /**
   * Finds a fixed-point solution. The function has the side effect of replacing
   * the existing node annotations with the computed solutions using {@link
   * com.google.javascript.jscomp.graph.GraphNode#setAnnotation(Annotation)}.
   *
   * <p>Initially, each node's input and output flow state contains the value
   * given by {@link #createInitialEstimateLattice()} (with the exception of the
   * entry node of the graph which takes on the {@link #createEntryLattice()}
   * value. Each node will use the output state of its predecessor and compute a
   * output state according to the instruction. At that time, any nodes that
   * depends on the node's newly modified output value will need to recompute
   * their output state again. Each step will perform a computation at one node
   * until no extra computation will modify any existing output state anymore.
   *
   * @param maxSteps Max number of iterations before the method stops and throw
   *        a {@link MaxIterationsExceededException}. This will prevent the
   *        analysis from going into a infinite loop.
   */
  final void analyze(int maxSteps) {
    initialize();
    int step = 0;
    while (true) {
      int PROBE_START_LINE_204 = 204;
		Set<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> f_ordered_work_set_1151_line_204 = orderedWorkSet;
		boolean data_flow_analysis_1_expr16_line_204 = f_ordered_work_set_1151_line_204.isEmpty();
		boolean data_flow_analysis_1_expr15_line_204 = !data_flow_analysis_1_expr16_line_204;
		if (!(data_flow_analysis_1_expr15_line_204)) {
			break;
		}
		int PROBE_END_LINE_204 = 204;
		int PROBE_START_LINE_205 = 208;
		int v_step_1158_line_205 = step;
		int p_max_steps_1157_line_205 = maxSteps;
		boolean data_flow_analysis_1_expr17_line_205 = v_step_1158_line_205 > p_max_steps_1157_line_205;
		int PROBE_END_LINE_205 = 208;
	if (data_flow_analysis_1_expr17_line_205) {
        throw new MaxIterationsExceededException(
          "Analysis did not terminate after " + maxSteps + " iterations");
      }
      int PROBE_START_LINE_209 = 209;
	Set<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> f_ordered_work_set_1151_line_209 = orderedWorkSet;
	Iterator<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> data_flow_analysis_1_expr19_line_209 = f_ordered_work_set_1151_line_209
			.iterator();
	DiGraphNode<N, Branch> data_flow_analysis_1_expr18_line_209 = data_flow_analysis_1_expr19_line_209.next();
	int PROBE_END_LINE_209 = 209;
	DiGraphNode<N, Branch> curNode = data_flow_analysis_1_expr18_line_209;
      int PROBE_START_LINE_210 = 210;
	Set<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> f_ordered_work_set_1151_line_210 = orderedWorkSet;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_cur_node_1159_line_210 = curNode;
	int PROBE_END_LINE_210 = 210;
	f_ordered_work_set_1151_line_210.remove(v_cur_node_1159_line_210);
      int PROBE_START_LINE_211 = 211;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_cur_node_1159_line_211 = curNode;
	int PROBE_END_LINE_211 = 211;
	joinInputs(v_cur_node_1159_line_211);
      int PROBE_START_LINE_212 = 223;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_cur_node_1159_line_212 = curNode;
	boolean data_flow_analysis_1_expr22_line_212 = flow(v_cur_node_1159_line_212);
	int PROBE_END_LINE_212 = 223;
	if (data_flow_analysis_1_expr22_line_212) {
        int PROBE_START_LINE_215 = 217;
		boolean data_flow_analysis_1_expr24_line_215 = isForward();
		List<DiGraphNode<N, Branch>> data_flow_analysis_1_expr23_line_215 = data_flow_analysis_1_expr24_line_215
				? cfg.getDirectedSuccNodes(curNode)
				: cfg.getDirectedPredNodes(curNode);
		int PROBE_END_LINE_215 = 217;
		// If there is a change in the current node, we want to grab the list
        // of nodes that this node affects.
        List<DiGraphNode<N, Branch>> nextNodes = data_flow_analysis_1_expr23_line_215;
        int PROBE_START_LINE_218 = 222;
		List<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_next_nodes_1160_line_218 = nextNodes;
		int PROBE_END_LINE_218 = 222;
		for (DiGraphNode<N, Branch> nextNode : v_next_nodes_1160_line_218) {
          int PROBE_START_LINE_219 = 221;
			com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_next_node_1161_line_219 = nextNode;
			ControlFlowGraph<N> f_cfg_1148_line_219 = cfg;
			com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> data_flow_analysis_1_expr28_line_219 = f_cfg_1148_line_219
					.getImplicitReturn();
			boolean data_flow_analysis_1_expr27_line_219 = v_next_node_1161_line_219 != data_flow_analysis_1_expr28_line_219;
			int PROBE_END_LINE_219 = 221;
		if (data_flow_analysis_1_expr27_line_219) {
            int PROBE_START_LINE_220 = 220;
			Set<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> f_ordered_work_set_1151_line_220 = orderedWorkSet;
			com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_next_node_1161_line_220 = nextNode;
			int PROBE_END_LINE_220 = 220;
			f_ordered_work_set_1151_line_220.add(v_next_node_1161_line_220);
          }
        }
      }
      step++;
    }
    int PROBE_START_LINE_226 = 228;
	boolean data_flow_analysis_1_expr31_line_226 = isForward();
	int PROBE_END_LINE_226 = 228;
	if (data_flow_analysis_1_expr31_line_226) {
      int PROBE_START_LINE_227 = 227;
		ControlFlowGraph<N> data_flow_analysis_1_expr34_line_227 = getCfg();
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> data_flow_analysis_1_expr33_line_227 = data_flow_analysis_1_expr34_line_227
				.getImplicitReturn();
		int PROBE_END_LINE_227 = 227;
	joinInputs(data_flow_analysis_1_expr33_line_227);
    }
  }

  /**
   * Gets the state of the initial estimation at each node.
   *
   * @return Initial state.
   */
  abstract L createInitialEstimateLattice();

  /**
   * Gets the incoming state of the entry node.
   *
   * @return Entry state.
   */
  abstract L createEntryLattice();

  /**
   * Initializes the work list and the control flow graph.
   */
  protected void initialize() {
    // TODO(user): Calling clear doesn't deallocate the memory in a
    // LinkedHashSet. Consider creating a new work set if we plan to repeatedly
    // call analyze.
    orderedWorkSet.clear();
    for (DiGraphNode<N, Branch> node : cfg.getDirectedGraphNodes()) {
      node.setAnnotation(new FlowState<L>(createInitialEstimateLattice(),
          createInitialEstimateLattice()));
      if (node != cfg.getImplicitReturn()) {
        orderedWorkSet.add(node);
      }
    }
  }

  /**
   * Performs a single flow through a node.
   *
   * @return {@code true} if the flow state differs from the previous state.
   */
  protected boolean flow(DiGraphNode<N, Branch> node) {
    FlowState<L> state = node.getAnnotation();
    if (isForward()) {
      L outBefore = state.out;
      state.out = flowThrough(node.getValue(), state.in);
      return !outBefore.equals(state.out);
    } else {
      L inBefore = state.in;
      state.in = flowThrough(node.getValue(), state.out);
      return !inBefore.equals(state.in);
    }
  }

  /**
   * Computes the new flow state at a given node's entry by merging the
   * output (input) lattice of the node's predecessor (successor).
   *
   * @param node Node to compute new join.
   */
  protected void joinInputs(DiGraphNode<N, Branch> node) {
    FlowState<L> state = node.getAnnotation();
    if (isForward()) {
      if (cfg.getEntry() == node) {
        state.setIn(createEntryLattice());
      } else {
        List<DiGraphNode<N, Branch>> inNodes = cfg.getDirectedPredNodes(node);
        if (inNodes.size() == 1) {
          FlowState<L> inNodeState = inNodes.get(0).getAnnotation();
          state.setIn(inNodeState.getOut());
        } else if (inNodes.size() > 1) {
          List<L> values = new ArrayList<L>(inNodes.size());
          for (DiGraphNode<N, Branch> currentNode : inNodes) {
            FlowState<L> currentNodeState = currentNode.getAnnotation();
            values.add(currentNodeState.getOut());
          }
          state.setIn(joinOp.apply(values));
        }
      }
    } else {
      List<DiGraphNode<N, Branch>> inNodes = cfg.getDirectedSuccNodes(node);
      if (inNodes.size() == 1) {
        DiGraphNode<N, Branch> inNode = inNodes.get(0);
        if (inNode == cfg.getImplicitReturn()) {
          state.setOut(createEntryLattice());
        } else {
          FlowState<L> inNodeState = inNode.getAnnotation();
          state.setOut(inNodeState.getIn());
        }
      } else if (inNodes.size() > 1) {
        List<L> values = new ArrayList<L>(inNodes.size());
        for (DiGraphNode<N, Branch> currentNode : inNodes) {
          FlowState<L> currentNodeState = currentNode.getAnnotation();
          values.add(currentNodeState.getIn());
        }
        state.setOut(joinOp.apply(values));
      }
    }
  }

  /**
   * The in and out states of a node.
   *
   * @param <L> Input and output lattice element type.
   */
  static class FlowState<L extends LatticeElement> implements Annotation {
    private L in;
    private L out;

    /**
     * Private constructor. No other classes should create new states.
     *
     * @param inState Input.
     * @param outState Output.
     */
    private FlowState(L inState, L outState) {
      Preconditions.checkNotNull(inState);
      Preconditions.checkNotNull(outState);
      this.in = inState;
      this.out = outState;
    }

    L getIn() {
      return in;
    }

    void setIn(L in) {
      Preconditions.checkNotNull(in);
      this.in = in;
    }

    L getOut() {
      return out;
    }

    void setOut(L out) {
      Preconditions.checkNotNull(out);
      this.out = out;
    }

    @Override
    public String toString() {
      return String.format("IN: %s OUT: %s", in, out);
    }

    @Override
    public int hashCode() {
      return Objects.hashCode(in, out);
    }
  }

  /**
   * The exception to be thrown if the analysis has been running for a long
   * number of iterations. Chances are the analysis is not monotonic, a
   * fixed-point cannot be found and it is currently stuck in an infinite loop.
   */
  static class MaxIterationsExceededException extends RuntimeException {
    private static final long serialVersionUID = 1L;
    MaxIterationsExceededException(String msg) {
      super(msg);
    }
  }

  abstract static class BranchedForwardDataFlowAnalysis
      <N, L extends LatticeElement> extends DataFlowAnalysis<N, L> {

    @Override
    protected void initialize() {
      int PROBE_START_LINE_394 = 394;
		Set<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> f_ordered_work_set_1169_line_394 = orderedWorkSet;
		int PROBE_END_LINE_394 = 394;
	f_ordered_work_set_1169_line_394.clear();
      int PROBE_START_LINE_395 = 406;
	ControlFlowGraph<N> data_flow_analysis_1_expr37_line_395 = getCfg();
	Iterable<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> data_flow_analysis_1_expr36_line_395 = data_flow_analysis_1_expr37_line_395
			.getDirectedGraphNodes();
	int PROBE_END_LINE_395 = 406;
	for (DiGraphNode<N, Branch> node : data_flow_analysis_1_expr36_line_395) {
        int PROBE_START_LINE_396 = 396;
		ControlFlowGraph<N> data_flow_analysis_1_expr41_line_396 = getCfg();
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_node_1170_line_396 = node;
		N data_flow_analysis_1_expr40_line_396 = v_node_1170_line_396.getValue();
		List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> data_flow_analysis_1_expr39_line_396 = data_flow_analysis_1_expr41_line_396
				.getOutEdges(data_flow_analysis_1_expr40_line_396);
		int data_flow_analysis_1_expr38_line_396 = data_flow_analysis_1_expr39_line_396.size();
		int PROBE_END_LINE_396 = 396;
		int outEdgeCount = data_flow_analysis_1_expr38_line_396;
        int PROBE_START_LINE_397 = 397;
		List<L> data_flow_analysis_1_expr42_line_397 = Lists.newArrayList();
		int PROBE_END_LINE_397 = 397;
		List<L> outLattices = data_flow_analysis_1_expr42_line_397;
        for (int i = 0; true; i++) {
          int PROBE_START_LINE_399 = 399;
			int v_i_1173_line_398 = i;
			int v_out_edge_count_1171_line_398 = outEdgeCount;
			boolean data_flow_analysis_1_expr44_line_398 = v_i_1173_line_398 < v_out_edge_count_1171_line_398;
			if (!(data_flow_analysis_1_expr44_line_398)) {
				break;
			}
			List<L> v_out_lattices_1172_line_399 = outLattices;
			L data_flow_analysis_1_expr47_line_399 = createInitialEstimateLattice();
			int PROBE_END_LINE_399 = 399;
		v_out_lattices_1172_line_399.add(data_flow_analysis_1_expr47_line_399);
        }
        int PROBE_START_LINE_401 = 402;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_node_1170_line_401 = node;
		int PROBE_END_LINE_401 = 402;
		v_node_1170_line_401.setAnnotation(new BranchedFlowState<L>(
            createInitialEstimateLattice(), outLattices));
        int PROBE_START_LINE_403 = 405;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_node_1170_line_403 = node;
		ControlFlowGraph<N> data_flow_analysis_1_expr53_line_403 = getCfg();
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> data_flow_analysis_1_expr52_line_403 = data_flow_analysis_1_expr53_line_403
				.getImplicitReturn();
		boolean data_flow_analysis_1_expr51_line_403 = v_node_1170_line_403 != data_flow_analysis_1_expr52_line_403;
		int PROBE_END_LINE_403 = 405;
		if (data_flow_analysis_1_expr51_line_403) {
          int PROBE_START_LINE_404 = 404;
			Set<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> f_ordered_work_set_1169_line_404 = orderedWorkSet;
			com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_node_1170_line_404 = node;
			int PROBE_END_LINE_404 = 404;
		f_ordered_work_set_1169_line_404.add(v_node_1170_line_404);
        }
      }
    }

    BranchedForwardDataFlowAnalysis(ControlFlowGraph<N> targetCfg,
                                    JoinOp<L> joinOp) {
      super(targetCfg, joinOp);
    }

    /**
     * Returns the lattice element at the exit point. Needs to be overridden
     * because we use a BranchedFlowState instead of a FlowState; ugh.
     */
    @Override
    L getExitLatticeElement() {
      DiGraphNode<N, Branch> node = getCfg().getImplicitReturn();
      BranchedFlowState<L> state = node.getAnnotation();
      return state.getIn();
    }

    @Override
    final boolean isForward() {
      return true;
    }

    /**
     * The branched flow function maps a single lattice to a list of output
     * lattices.
     *
     * <p>Each outgoing edge of a node will have a corresponding output lattice
     * in the ordered returned by
     * {@link com.google.javascript.jscomp.graph.DiGraph#getOutEdges(Object)}
     * in the returned list.
     *
     * @return A list of output values depending on the edge's branch type.
     */
    abstract List<L> branchedFlowThrough(N node, L input);

    @Override
    protected final boolean flow(DiGraphNode<N, Branch> node) {
      int PROBE_START_LINE_445 = 445;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> p_node_1178_line_445 = node;
		BranchedFlowState<L> data_flow_analysis_1_expr56_line_445 = p_node_1178_line_445.getAnnotation();
		int PROBE_END_LINE_445 = 445;
	BranchedFlowState<L> state = data_flow_analysis_1_expr56_line_445;
      int PROBE_START_LINE_446 = 446;
	com.google.javascript.jscomp.DataFlowAnalysis.BranchedFlowState<L> v_state_1179_line_446 = state;
	List<L> q_out_45_line_446 = v_state_1179_line_446.out;
	int PROBE_END_LINE_446 = 446;
	List<L> outBefore = q_out_45_line_446;
      int PROBE_START_LINE_447 = 447;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> p_node_1178_line_447 = node;
	N data_flow_analysis_1_expr59_line_447 = p_node_1178_line_447.getValue();
	com.google.javascript.jscomp.DataFlowAnalysis.BranchedFlowState<L> v_state_1179_line_447 = state;
	L q_in_46_line_447 = v_state_1179_line_447.in;
	List<L> data_flow_analysis_1_expr58_line_447 = branchedFlowThrough(data_flow_analysis_1_expr59_line_447,
			q_in_46_line_447);
	int PROBE_END_LINE_447 = 447;
	state.out = data_flow_analysis_1_expr58_line_447;
      int PROBE_START_LINE_448 = 448;
	List<L> v_out_before_1180_line_448 = outBefore;
	int data_flow_analysis_1_expr62_line_448 = v_out_before_1180_line_448.size();
	com.google.javascript.jscomp.DataFlowAnalysis.BranchedFlowState<L> v_state_1179_line_448 = state;
	List<L> q_out_47_line_448 = v_state_1179_line_448.out;
	int data_flow_analysis_1_expr63_line_448 = q_out_47_line_448.size();
	boolean data_flow_analysis_1_expr61_line_448 = data_flow_analysis_1_expr62_line_448 == data_flow_analysis_1_expr63_line_448;
	int PROBE_END_LINE_448 = 448;
	Preconditions.checkState(data_flow_analysis_1_expr61_line_448);
      for (int i = 0; true; i++) {
        int PROBE_START_LINE_450 = 452;
		int v_i_1182_line_449 = i;
		List<L> v_out_before_1180_line_449 = outBefore;
		int data_flow_analysis_1_expr66_line_449 = v_out_before_1180_line_449.size();
		boolean data_flow_analysis_1_expr65_line_449 = v_i_1182_line_449 < data_flow_analysis_1_expr66_line_449;
		if (!(data_flow_analysis_1_expr65_line_449)) {
			break;
		}
		List<L> v_out_before_1180_line_450 = outBefore;
		int v_i_1182_line_450 = i;
		L data_flow_analysis_1_expr71_line_450 = v_out_before_1180_line_450.get(v_i_1182_line_450);
		com.google.javascript.jscomp.DataFlowAnalysis.BranchedFlowState<L> v_state_1179_line_450 = state;
		List<L> q_out_47_line_450 = v_state_1179_line_450.out;
		int v_i_1182_line_450_v1 = i;
		L data_flow_analysis_1_expr70_line_450 = q_out_47_line_450.get(v_i_1182_line_450_v1);
		boolean data_flow_analysis_1_expr69_line_450 = data_flow_analysis_1_expr71_line_450
				.equals(data_flow_analysis_1_expr70_line_450);
		boolean data_flow_analysis_1_expr68_line_450 = !data_flow_analysis_1_expr69_line_450;
		int PROBE_END_LINE_450 = 452;
		if (data_flow_analysis_1_expr68_line_450) {
          return true;
        }
      }
      return false;
    }

    @Override
    protected void joinInputs(DiGraphNode<N, Branch> node) {
      int PROBE_START_LINE_459 = 459;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> p_node_1183_line_459 = node;
		BranchedFlowState<L> data_flow_analysis_1_expr72_line_459 = p_node_1183_line_459.getAnnotation();
		int PROBE_END_LINE_459 = 459;
	BranchedFlowState<L> state = data_flow_analysis_1_expr72_line_459;
      List<DiGraphNode<N, Branch>> predNodes =
          getCfg().getDirectedPredNodes(node);
      int PROBE_START_LINE_462 = 462;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_pred_nodes_1185_line_462 = predNodes;
	int data_flow_analysis_1_expr75_line_462 = v_pred_nodes_1185_line_462.size();
	int PROBE_END_LINE_462 = 462;
	List<L> values = new ArrayList<L>(data_flow_analysis_1_expr75_line_462);

      int PROBE_START_LINE_464 = 471;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch>> v_pred_nodes_1185_line_464 = predNodes;
	int PROBE_END_LINE_464 = 471;
	for (DiGraphNode<N, Branch> predNode : v_pred_nodes_1185_line_464) {
        int PROBE_START_LINE_465 = 465;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> v_pred_node_1187_line_465 = predNode;
		BranchedFlowState<L> data_flow_analysis_1_expr76_line_465 = v_pred_node_1187_line_465.getAnnotation();
		int PROBE_END_LINE_465 = 465;
		BranchedFlowState<L> predNodeState = data_flow_analysis_1_expr76_line_465;

        int PROBE_START_LINE_467 = 468;
		com.google.javascript.jscomp.DataFlowAnalysis.BranchedFlowState<L> v_pred_node_state_1188_line_467 = predNodeState;
		List<L> q_out_47_line_467 = v_pred_node_state_1188_line_467.out;
		L data_flow_analysis_1_expr77_line_467 = q_out_47_line_467
				.get(getCfg().getDirectedSuccNodes(predNode).indexOf(node));
		int PROBE_END_LINE_467 = 468;
		L in = data_flow_analysis_1_expr77_line_467;

        int PROBE_START_LINE_470 = 470;
		List<L> v_values_1186_line_470 = values;
		L v_in_1189_line_470 = in;
		int PROBE_END_LINE_470 = 470;
		v_values_1186_line_470.add(v_in_1189_line_470);
      }
      int PROBE_START_LINE_472 = 476;
	ControlFlowGraph<N> data_flow_analysis_1_expr82_line_472 = getCfg();
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> data_flow_analysis_1_expr81_line_472 = data_flow_analysis_1_expr82_line_472
			.getEntry();
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, com.google.javascript.jscomp.ControlFlowGraph.Branch> p_node_1183_line_472 = node;
	boolean data_flow_analysis_1_expr80_line_472 = data_flow_analysis_1_expr81_line_472 == p_node_1183_line_472;
	int PROBE_END_LINE_472 = 476;
	if (data_flow_analysis_1_expr80_line_472) {
        int PROBE_START_LINE_473 = 473;
		com.google.javascript.jscomp.DataFlowAnalysis.BranchedFlowState<L> v_state_1184_line_473 = state;
		L data_flow_analysis_1_expr84_line_473 = createEntryLattice();
		int PROBE_END_LINE_473 = 473;
		v_state_1184_line_473.setIn(data_flow_analysis_1_expr84_line_473);
      } else {
		int PROBE_START_LINE_474 = 476;
		List<L> v_values_1186_line_474 = values;
		boolean data_flow_analysis_1_expr86_line_474 = v_values_1186_line_474.isEmpty();
		boolean data_flow_analysis_1_expr85_line_474 = !data_flow_analysis_1_expr86_line_474;
		int PROBE_END_LINE_474 = 476;
		if (data_flow_analysis_1_expr85_line_474) {
			int PROBE_START_LINE_475 = 475;
			com.google.javascript.jscomp.DataFlowAnalysis.BranchedFlowState<L> v_state_1184_line_475 = state;
			JoinOp<L> f_join_op_1190_line_475 = joinOp;
			List<L> v_values_1186_line_475 = values;
			L data_flow_analysis_1_expr88_line_475 = f_join_op_1190_line_475.apply(v_values_1186_line_475);
			int PROBE_END_LINE_475 = 475;
			v_state_1184_line_475.setIn(data_flow_analysis_1_expr88_line_475);
		}
	}
    }
  }

  /**
   * The in and out states of a node.
   *
   * @param <L> Input and output lattice element type.
   */
  static class BranchedFlowState<L extends LatticeElement>
      implements Annotation {
    private L in;
    private List<L> out;

    /**
     * Private constructor. No other classes should create new states.
     *
     * @param inState Input.
     * @param outState Output.
     */
    private BranchedFlowState(L inState, List<L> outState) {
      int PROBE_START_LINE_497 = 497;
		L p_in_state_1191_line_497 = inState;
		int PROBE_END_LINE_497 = 497;
	Preconditions.checkNotNull(p_in_state_1191_line_497);
      int PROBE_START_LINE_498 = 498;
	List<L> p_out_state_1192_line_498 = outState;
	int PROBE_END_LINE_498 = 498;
	Preconditions.checkNotNull(p_out_state_1192_line_498);
      int PROBE_START_LINE_499 = 499;
	L p_in_state_1191_line_499 = inState;
	int PROBE_END_LINE_499 = 499;
	this.in = p_in_state_1191_line_499;
      int PROBE_START_LINE_500 = 500;
	List<L> p_out_state_1192_line_500 = outState;
	int PROBE_END_LINE_500 = 500;
	this.out = p_out_state_1192_line_500;
    }

    L getIn() {
      return in;
    }

    void setIn(L in) {
      int PROBE_START_LINE_508 = 508;
		L p_in_1195_line_508 = in;
		int PROBE_END_LINE_508 = 508;
	Preconditions.checkNotNull(p_in_1195_line_508);
      int PROBE_START_LINE_509 = 509;
	L p_in_1195_line_509 = in;
	int PROBE_END_LINE_509 = 509;
	this.in = p_in_1195_line_509;
    }

    List<L> getOut() {
      return out;
    }

    void setOut(List<L> out) {
      Preconditions.checkNotNull(out);
      for (L item : out) {
        Preconditions.checkNotNull(item);
      }
      this.out = out;
    }

    @Override
    public String toString() {
      return String.format("IN: %s OUT: %s", in, out);
    }

    @Override
    public int hashCode() {
      return Objects.hashCode(in, out);
    }
  }

  /**
   * Compute set of escaped variables. When a variable is escaped in a
   * dataflow analysis, it can be reference outside of the code that we are
   * analyzing. A variable is escaped if any of the following is true:
   *
   * <p><ol>
   * <li>It is defined as the exception name in CATCH clause so it became a
   * variable local not to our definition of scope.</li>
   * <li>Exported variables as they can be needed after the script terminates.
   * </li>
   * <li>Names of named functions because in JavaScript, <i>function foo(){}</i>
   * does not kill <i>foo</i> in the dataflow.</li>
   */
  static void computeEscaped(final Scope jsScope, final Set<Var> escaped,
      AbstractCompiler compiler) {
    // TODO(user): Very good place to store this information somewhere.
    AbstractPostOrderCallback finder = new AbstractPostOrderCallback() {
      @Override
      public void visit(NodeTraversal t, Node n, Node parent) {
        if (jsScope == t.getScope() || !n.isName()
            || parent.isFunction()) {
          return;
        }
        String name = n.getString();
        Var var = t.getScope().getVar(name);
        if (var != null && var.scope == jsScope) {
          escaped.add(jsScope.getVar(name));
        }
      }
    };

    NodeTraversal t = new NodeTraversal(compiler, finder);
    t.traverseAtScope(jsScope);

    // 1: Remove the exception name in CATCH which technically isn't local to
    //    begin with.
    for (Iterator<Var> i = jsScope.getVars(); i.hasNext();) {
      Var var = i.next();
      if (var.getParentNode().isCatch() ||
          compiler.getCodingConvention().isExported(var.getName())) {
        escaped.add(var);
      }
    }
  }
}
