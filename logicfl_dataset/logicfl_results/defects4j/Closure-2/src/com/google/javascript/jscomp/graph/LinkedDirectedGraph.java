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

package com.google.javascript.jscomp.graph;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

/**
 * A directed graph using linked list within nodes to store edge information.
 * <p>
 * This implementation favors directed graph operations inherited from <code>
 * DirectedGraph</code>.
 * Operations from <code>Graph</code> would tends to be slower.
 *
 *
 * @param <N> Value type that the graph node stores.
 * @param <E> Value type that the graph edge stores.
 */
public class LinkedDirectedGraph<N, E>
    extends DiGraph<N, E> implements GraphvizGraph {
  protected final Map<N, LinkedDirectedGraphNode<N, E>> nodes =
      Maps.newHashMap();

  @Override
  public SubGraph<N, E> newSubGraph() {
    return new SimpleSubGraph<N, E>(this);
  }

  public static <N, E> LinkedDirectedGraph<N, E> createWithoutAnnotations() {
    return new LinkedDirectedGraph<N, E>(false, false);
  }

  public static <N, E> LinkedDirectedGraph<N, E> createWithNodeAnnotations() {
    return new LinkedDirectedGraph<N, E>(true, false);
  }

  public static <N, E> LinkedDirectedGraph<N, E> createWithEdgeAnnotations() {
    return new LinkedDirectedGraph<N, E>(false, true);
  }

  public static <N, E> LinkedDirectedGraph<N, E> create() {
    return new LinkedDirectedGraph<N, E>(true, true);
  }

  private final boolean useNodeAnnotations;
  private final boolean useEdgeAnnotations;

  protected LinkedDirectedGraph(
      boolean useNodeAnnotations, boolean useEdgeAnnotations) {
    int PROBE_START_LINE_73 = 73;
		boolean p_use_node_annotations_3422_line_73 = useNodeAnnotations;
		int PROBE_END_LINE_73 = 73;
	this.useNodeAnnotations = p_use_node_annotations_3422_line_73;
    int PROBE_START_LINE_74 = 74;
	boolean p_use_edge_annotations_3423_line_74 = useEdgeAnnotations;
	int PROBE_END_LINE_74 = 74;
	this.useEdgeAnnotations = p_use_edge_annotations_3423_line_74;
  }

  @Override
  public void connect(N srcValue, E edgeValue, N destValue) {
    int PROBE_START_LINE_79 = 79;
	N p_src_value_3426_line_79 = srcValue;
	LinkedDirectedGraphNode<N, E> linked_directed_graph_1_expr8_line_79 = getNodeOrFail(p_src_value_3426_line_79);
	int PROBE_END_LINE_79 = 79;
	LinkedDirectedGraphNode<N, E> src = linked_directed_graph_1_expr8_line_79;
    int PROBE_START_LINE_80 = 80;
	N p_dest_value_3428_line_80 = destValue;
	LinkedDirectedGraphNode<N, E> linked_directed_graph_1_expr9_line_80 = getNodeOrFail(p_dest_value_3428_line_80);
	int PROBE_END_LINE_80 = 80;
	LinkedDirectedGraphNode<N, E> dest = linked_directed_graph_1_expr9_line_80;
    LinkedDirectedGraphEdge<N, E> edge =
        useEdgeAnnotations ?
        new AnnotatedLinkedDirectedGraphEdge<N, E>(src, edgeValue, dest) :
        new LinkedDirectedGraphEdge<N, E>(src, edgeValue, dest);
    int PROBE_START_LINE_85 = 85;
	com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphNode<N, E> v_src_3429_line_85 = src;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E>> linked_directed_graph_1_expr12_line_85 = v_src_3429_line_85
			.getOutEdges();
	com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphEdge<N, E> v_edge_3431_line_85 = edge;
	int PROBE_END_LINE_85 = 85;
	linked_directed_graph_1_expr12_line_85.add(v_edge_3431_line_85);
    int PROBE_START_LINE_86 = 86;
	com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphNode<N, E> v_dest_3430_line_86 = dest;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E>> linked_directed_graph_1_expr14_line_86 = v_dest_3430_line_86
			.getInEdges();
	com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphEdge<N, E> v_edge_3431_line_86 = edge;
	int PROBE_END_LINE_86 = 86;
	linked_directed_graph_1_expr14_line_86.add(v_edge_3431_line_86);
  }

  @Override
  public void disconnect(N n1, N n2) {
    disconnectInDirection(n1, n2);
    disconnectInDirection(n2, n1);
  }

  @Override
  public void disconnectInDirection(N srcValue, N destValue) {
    LinkedDirectedGraphNode<N, E> src = getNodeOrFail(srcValue);
    LinkedDirectedGraphNode<N, E> dest = getNodeOrFail(destValue);
    for (DiGraphEdge<?, E> edge : getDirectedGraphEdges(srcValue, destValue)) {
      src.getOutEdges().remove(edge);
      dest.getInEdges().remove(edge);
    }
  }

  @Override
  public Iterable<DiGraphNode<N, E>> getDirectedGraphNodes() {
    int PROBE_START_LINE_107 = 108;
	Collection<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E>> linked_directed_graph_1_expr15_line_107 = Collections
			.<DiGraphNode<N, E>>unmodifiableCollection(nodes.values());
	int PROBE_END_LINE_107 = 108;
	return linked_directed_graph_1_expr15_line_107;
  }

  @Override
  public DiGraphNode<N, E> getDirectedGraphNode(N nodeValue) {
    int PROBE_START_LINE_113 = 113;
	Map<N, com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphNode<N, E>> f_nodes_3437_line_113 = nodes;
	N p_node_value_3436_line_113 = nodeValue;
	com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphNode<N, E> linked_directed_graph_1_expr17_line_113 = f_nodes_3437_line_113
			.get(p_node_value_3436_line_113);
	int PROBE_END_LINE_113 = 113;
	return linked_directed_graph_1_expr17_line_113;
  }

  @Override
  public GraphNode<N, E> getNode(N nodeValue) {
    int PROBE_START_LINE_118 = 118;
	N p_node_value_3438_line_118 = nodeValue;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> linked_directed_graph_1_expr18_line_118 = getDirectedGraphNode(
			p_node_value_3438_line_118);
	int PROBE_END_LINE_118 = 118;
	return linked_directed_graph_1_expr18_line_118;
  }

  @Override
  public List<DiGraphEdge<N, E>> getInEdges(N nodeValue) {
    LinkedDirectedGraphNode<N, E> node = getNodeOrFail(nodeValue);
    return Collections.<DiGraphEdge<N, E>>unmodifiableList(node.getInEdges());
  }

  @Override
  public List<DiGraphEdge<N, E>> getOutEdges(N nodeValue) {
    int PROBE_START_LINE_129 = 129;
	N p_node_value_3440_line_129 = nodeValue;
	LinkedDirectedGraphNode<N, E> linked_directed_graph_1_expr19_line_129 = getNodeOrFail(p_node_value_3440_line_129);
	int PROBE_END_LINE_129 = 129;
	LinkedDirectedGraphNode<N, E> node = linked_directed_graph_1_expr19_line_129;
    int PROBE_START_LINE_130 = 130;
	com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphNode<N, E> v_node_3441_line_130 = node;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E>> linked_directed_graph_1_expr21_line_130 = v_node_3441_line_130
			.getOutEdges();
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E>> linked_directed_graph_1_expr20_line_130 = Collections
			.<DiGraphEdge<N, E>>unmodifiableList(linked_directed_graph_1_expr21_line_130);
	int PROBE_END_LINE_130 = 130;
	return linked_directed_graph_1_expr20_line_130;
  }

  @Override
  public DiGraphNode<N, E> createDirectedGraphNode(N nodeValue) {
    int PROBE_START_LINE_135 = 135;
	Map<N, com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphNode<N, E>> f_nodes_3437_line_135 = nodes;
	N p_node_value_3442_line_135 = nodeValue;
	LinkedDirectedGraphNode<N, E> linked_directed_graph_1_expr22_line_135 = f_nodes_3437_line_135
			.get(p_node_value_3442_line_135);
	int PROBE_END_LINE_135 = 135;
	LinkedDirectedGraphNode<N, E> node = linked_directed_graph_1_expr22_line_135;
    int PROBE_START_LINE_136 = 141;
	com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphNode<N, E> v_node_3443_line_136 = node;
	boolean linked_directed_graph_1_expr23_line_136 = v_node_3443_line_136 == null;
	int PROBE_END_LINE_136 = 141;
	if (linked_directed_graph_1_expr23_line_136) {
      int PROBE_START_LINE_137 = 139;
		boolean f_use_node_annotations_3424_line_137 = useNodeAnnotations;
		com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphNode<N, E> linked_directed_graph_1_expr25_line_137 = f_use_node_annotations_3424_line_137
				? new AnnotatedLinkedDirectedGraphNode<N, E>(nodeValue)
				: new LinkedDirectedGraphNode<N, E>(nodeValue);
		int PROBE_END_LINE_137 = 139;
	node = linked_directed_graph_1_expr25_line_137;
      int PROBE_START_LINE_140 = 140;
	Map<N, com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphNode<N, E>> f_nodes_3437_line_140 = nodes;
	N p_node_value_3442_line_140 = nodeValue;
	com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphNode<N, E> v_node_3443_line_140 = node;
	int PROBE_END_LINE_140 = 140;
	f_nodes_3437_line_140.put(p_node_value_3442_line_140, v_node_3443_line_140);
    }
    int PROBE_START_LINE_142 = 142;
	com.google.javascript.jscomp.graph.LinkedDirectedGraph.LinkedDirectedGraphNode<N, E> v_node_3443_line_142 = node;
	int PROBE_END_LINE_142 = 142;
	return v_node_3443_line_142;
  }

  @Override
  public List<GraphEdge<N, E>> getEdges(N n1, N n2) {
    // Since this is a method from a generic graph, edges from both
    // directions must be added to the returning list.
    List<DiGraphEdge<N, E>> forwardEdges = getDirectedGraphEdges(n1, n2);
    List<DiGraphEdge<N, E>> backwardEdges = getDirectedGraphEdges(n2, n1);
    int totalSize = forwardEdges.size() + backwardEdges.size();
    List<GraphEdge<N, E>> edges = Lists.newArrayListWithCapacity(totalSize);
    edges.addAll(forwardEdges);
    edges.addAll(backwardEdges);
    return edges;
  }

  @Override
  public GraphEdge<N, E> getFirstEdge(N n1, N n2) {
    DiGraphNode<N, E> dNode1 = getNodeOrFail(n1);
    DiGraphNode<N, E> dNode2 = getNodeOrFail(n2);
    for (DiGraphEdge<N, E> outEdge : dNode1.getOutEdges()) {
      if (outEdge.getDestination() == dNode2) {
        return outEdge;
      }
    }
    for (DiGraphEdge<N, E> outEdge : dNode2.getOutEdges()) {
      if (outEdge.getDestination() == dNode1) {
        return outEdge;
      }
    }
    return null;
  }

  @Override
  public GraphNode<N, E> createNode(N value) {
    int PROBE_START_LINE_177 = 177;
	N p_value_3448_line_177 = value;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> linked_directed_graph_1_expr29_line_177 = createDirectedGraphNode(
			p_value_3448_line_177);
	int PROBE_END_LINE_177 = 177;
	return linked_directed_graph_1_expr29_line_177;
  }

  @Override
  public List<DiGraphEdge<N, E>> getDirectedGraphEdges(N n1, N n2) {
    DiGraphNode<N, E> dNode1 = getNodeOrFail(n1);
    DiGraphNode<N, E> dNode2 = getNodeOrFail(n2);
    List<DiGraphEdge<N, E>> edges = Lists.newArrayList();
    for (DiGraphEdge<N, E> outEdge : dNode1.getOutEdges()) {
      if (outEdge.getDestination() == dNode2) {
        edges.add(outEdge);
      }
    }
    return edges;
  }

  @Override
  public boolean isConnectedInDirection(N n1, N n2) {
    return isConnectedInDirection(n1, Predicates.<E>alwaysTrue(), n2);
  }

  @Override
  public boolean isConnectedInDirection(N n1, E edgeValue, N n2) {
    int PROBE_START_LINE_200 = 200;
	N p_n_1_3453_line_200 = n1;
	E p_edge_value_3454_line_200 = edgeValue;
	Predicate<E> linked_directed_graph_1_expr31_line_200 = (Predicate<E>) (Predicates
			.equalTo(p_edge_value_3454_line_200));
	N p_n_2_3455_line_200 = n2;
	boolean linked_directed_graph_1_expr30_line_200 = isConnectedInDirection(p_n_1_3453_line_200,
			linked_directed_graph_1_expr31_line_200, p_n_2_3455_line_200);
	int PROBE_END_LINE_200 = 200;
	return linked_directed_graph_1_expr30_line_200;
  }

  private boolean isConnectedInDirection(N n1, Predicate<E> edgeMatcher, N n2) {
    int PROBE_START_LINE_205 = 205;
	N p_n_1_3456_line_205 = n1;
	DiGraphNode<N, E> linked_directed_graph_1_expr32_line_205 = getNodeOrFail(p_n_1_3456_line_205);
	int PROBE_END_LINE_205 = 205;
	// Verify the nodes.
    DiGraphNode<N, E> dNode1 = linked_directed_graph_1_expr32_line_205;
    int PROBE_START_LINE_206 = 206;
	N p_n_2_3458_line_206 = n2;
	DiGraphNode<N, E> linked_directed_graph_1_expr33_line_206 = getNodeOrFail(p_n_2_3458_line_206);
	int PROBE_END_LINE_206 = 206;
	DiGraphNode<N, E> dNode2 = linked_directed_graph_1_expr33_line_206;
    int PROBE_START_LINE_207 = 212;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> v_d_node1_3459_line_207 = dNode1;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E>> linked_directed_graph_1_expr34_line_207 = v_d_node1_3459_line_207
			.getOutEdges();
	int PROBE_END_LINE_207 = 212;
	for (DiGraphEdge<N, E> outEdge : linked_directed_graph_1_expr34_line_207) {
      int PROBE_START_LINE_208 = 211;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E> v_out_edge_3461_line_208 = outEdge;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> linked_directed_graph_1_expr37_line_208 = v_out_edge_3461_line_208
				.getDestination();
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> v_d_node2_3460_line_208 = dNode2;
		boolean linked_directed_graph_1_expr36_line_208 = linked_directed_graph_1_expr37_line_208 == v_d_node2_3460_line_208;
		boolean linked_directed_graph_1_expr35_line_208 = linked_directed_graph_1_expr36_line_208
				&& edgeMatcher.apply(outEdge.getValue());
		int PROBE_END_LINE_208 = 211;
	if (linked_directed_graph_1_expr35_line_208) {
        return true;
      }
    }

    return false;
  }

  @Override
  public List<DiGraphNode<N, E>> getDirectedPredNodes(N nodeValue) {
    return getDirectedPredNodes(nodes.get(nodeValue));
  }

  @Override
  public List<DiGraphNode<N, E>> getDirectedSuccNodes(N nodeValue) {
    return getDirectedSuccNodes(nodes.get(nodeValue));
  }

  @Override
  public List<DiGraphNode<N, E>> getDirectedPredNodes(
      DiGraphNode<N, E> dNode) {
    int PROBE_START_LINE_230 = 232;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> p_d_node_3464_line_230 = dNode;
		boolean linked_directed_graph_1_expr38_line_230 = p_d_node_3464_line_230 == null;
		int PROBE_END_LINE_230 = 232;
	if (linked_directed_graph_1_expr38_line_230) {
      throw new IllegalArgumentException(dNode + " is null");
    }
    int PROBE_START_LINE_233 = 233;
	List<DiGraphNode<N, E>> linked_directed_graph_1_expr39_line_233 = Lists.newArrayList();
	int PROBE_END_LINE_233 = 233;
	List<DiGraphNode<N, E>> nodeList = linked_directed_graph_1_expr39_line_233;
    int PROBE_START_LINE_234 = 236;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> p_d_node_3464_line_234 = dNode;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E>> linked_directed_graph_1_expr40_line_234 = p_d_node_3464_line_234
			.getInEdges();
	int PROBE_END_LINE_234 = 236;
	for (DiGraphEdge<N, E> edge : linked_directed_graph_1_expr40_line_234) {
      int PROBE_START_LINE_235 = 235;
		List<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E>> v_node_list_3465_line_235 = nodeList;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E> v_edge_3466_line_235 = edge;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> linked_directed_graph_1_expr42_line_235 = v_edge_3466_line_235
				.getSource();
		int PROBE_END_LINE_235 = 235;
	v_node_list_3465_line_235.add(linked_directed_graph_1_expr42_line_235);
    }
    int PROBE_START_LINE_237 = 237;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E>> v_node_list_3465_line_237 = nodeList;
	int PROBE_END_LINE_237 = 237;
	return v_node_list_3465_line_237;
  }

  @Override
  public List<DiGraphNode<N, E>> getDirectedSuccNodes(
      DiGraphNode<N, E> dNode) {
    int PROBE_START_LINE_243 = 245;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> p_d_node_3467_line_243 = dNode;
		boolean linked_directed_graph_1_expr43_line_243 = p_d_node_3467_line_243 == null;
		int PROBE_END_LINE_243 = 245;
	if (linked_directed_graph_1_expr43_line_243) {
      throw new IllegalArgumentException(dNode + " is null");
    }
    int PROBE_START_LINE_246 = 246;
	List<DiGraphNode<N, E>> linked_directed_graph_1_expr44_line_246 = Lists.newArrayList();
	int PROBE_END_LINE_246 = 246;
	List<DiGraphNode<N, E>> nodeList = linked_directed_graph_1_expr44_line_246;
    int PROBE_START_LINE_247 = 249;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> p_d_node_3467_line_247 = dNode;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E>> linked_directed_graph_1_expr45_line_247 = p_d_node_3467_line_247
			.getOutEdges();
	int PROBE_END_LINE_247 = 249;
	for (DiGraphEdge<N, E> edge : linked_directed_graph_1_expr45_line_247) {
      int PROBE_START_LINE_248 = 248;
		List<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E>> v_node_list_3468_line_248 = nodeList;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E> v_edge_3469_line_248 = edge;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> linked_directed_graph_1_expr47_line_248 = v_edge_3469_line_248
				.getDestination();
		int PROBE_END_LINE_248 = 248;
	v_node_list_3468_line_248.add(linked_directed_graph_1_expr47_line_248);
    }
    int PROBE_START_LINE_250 = 250;
	List<com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E>> v_node_list_3468_line_250 = nodeList;
	int PROBE_END_LINE_250 = 250;
	return v_node_list_3468_line_250;
  }

  @Override
  public List<GraphvizEdge> getGraphvizEdges() {
    List<GraphvizEdge> edgeList = Lists.newArrayList();
    for (LinkedDirectedGraphNode<N, E> node : nodes.values()) {
      for (DiGraphEdge<N, E> edge : node.getOutEdges()) {
        edgeList.add((LinkedDirectedGraphEdge<N, E>) edge);
      }
    }
    return edgeList;
  }

  @Override
  public List<GraphvizNode> getGraphvizNodes() {
    List<GraphvizNode> nodeList =
        Lists.newArrayListWithCapacity(nodes.size());
    for (LinkedDirectedGraphNode<N, E> node : nodes.values()) {
      nodeList.add(node);
    }
    return nodeList;
  }

  @Override
  public String getName() {
    return "LinkedGraph";
  }

  @Override
  public boolean isDirected() {
    return true;
  }

  @Override
  public Collection<GraphNode<N, E>> getNodes() {
    return Collections.<GraphNode<N, E>>unmodifiableCollection(nodes.values());
  }

  @Override
  public List<GraphNode<N, E>> getNeighborNodes(N value) {
    DiGraphNode<N, E> node = getDirectedGraphNode(value);
    return getNeighborNodes(node);
  }

  public List<GraphNode<N, E>> getNeighborNodes(DiGraphNode<N, E> node) {
    List<GraphNode<N, E>> result = Lists.newArrayList();
    for (Iterator<GraphNode<N, E>> i =
      ((LinkedDirectedGraphNode<N, E>) node).neighborIterator();i.hasNext();) {
      result.add(i.next());
    }
    return result;
  }

  @Override
  public Iterator<GraphNode<N, E>> getNeighborNodesIterator(N value) {
    LinkedDirectedGraphNode<N, E> node = nodes.get(value);
    Preconditions.checkNotNull(node);
    return node.neighborIterator();
  }

  @Override
  public List<GraphEdge<N, E>> getEdges() {
    List<GraphEdge<N, E>> result = Lists.newArrayList();
    for (DiGraphNode<N, E> node : nodes.values()) {
      for (DiGraphEdge<N, E> edge : node.getOutEdges()) {
        result.add(edge);
      }
    }
    return Collections.unmodifiableList(result);
  }

  @Override
  public int getNodeDegree(N value) {
    DiGraphNode<N, E> node = getNodeOrFail(value);
    return node.getInEdges().size() + node.getOutEdges().size();
  }

  /**
   * A directed graph node that stores outgoing edges and incoming edges as an
   * list within the node itself.
   */
  static class LinkedDirectedGraphNode<N, E> implements DiGraphNode<N, E>,
      GraphvizNode {

    int PROBE_START_LINE_335 = 335;

	ArrayList<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E>> linked_directed_graph_1_expr48_line_335 = Lists
			.newArrayList();

	int PROBE_END_LINE_335 = 335;

	List<DiGraphEdge<N, E>> inEdgeList = linked_directed_graph_1_expr48_line_335;
    List<DiGraphEdge<N, E>> outEdgeList =
        Lists.newArrayList();

    protected final N value;

    /**
     * Constructor
     *
     * @param nodeValue Node's value.
     */
    LinkedDirectedGraphNode(N nodeValue) {
      int PROBE_START_LINE_347 = 347;
		N p_node_value_3476_line_347 = nodeValue;
		int PROBE_END_LINE_347 = 347;
	this.value = p_node_value_3476_line_347;
    }

    @Override
    public N getValue() {
      int PROBE_START_LINE_352 = 352;
		N f_value_3477_line_352 = value;
		int PROBE_END_LINE_352 = 352;
	return f_value_3477_line_352;
    }

    @Override
    public <A extends Annotation> A getAnnotation() {
      throw new UnsupportedOperationException(
          "Graph initialized with node annotations turned off");
    }

    @Override
    public void setAnnotation(Annotation data) {
      throw new UnsupportedOperationException(
          "Graph initialized with node annotations turned off");
    }

    @Override
    public String getColor() {
      return "white";
    }

    @Override
    public String getId() {
      return "LDN" + hashCode();
    }

    @Override
    public String getLabel() {
      return value != null ? value.toString() : "null";
    }

    @Override
    public String toString() {
      return getLabel();
    }

    @Override
    public List<DiGraphEdge<N, E>> getInEdges() {
      int PROBE_START_LINE_389 = 389;
		List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E>> f_in_edge_list_3479_line_389 = inEdgeList;
		int PROBE_END_LINE_389 = 389;
	return f_in_edge_list_3479_line_389;
    }

    @Override
    public List<DiGraphEdge<N, E>> getOutEdges() {
      int PROBE_START_LINE_394 = 394;
		List<com.google.javascript.jscomp.graph.DiGraph.DiGraphEdge<N, E>> f_out_edge_list_3480_line_394 = outEdgeList;
		int PROBE_END_LINE_394 = 394;
	return f_out_edge_list_3480_line_394;
    }

    private Iterator<GraphNode<N, E>> neighborIterator() {
      return new NeighborIterator();
    }

    private class NeighborIterator implements Iterator<GraphNode<N, E>> {

      private final Iterator<DiGraphEdge<N, E>> in = inEdgeList.iterator();
      private final Iterator<DiGraphEdge<N, E>> out = outEdgeList.iterator();

      @Override
      public boolean hasNext() {
        return in.hasNext() || out.hasNext();
      }

      @Override
      public GraphNode<N, E> next() {
        boolean isOut = !in.hasNext();
        Iterator<DiGraphEdge<N, E>> curIterator =  isOut ? out : in;
        DiGraphEdge<N, E> s = curIterator.next();
        return isOut ? s.getDestination() : s.getSource();
      }

      @Override
      public void remove() {
        throw new UnsupportedOperationException("Remove not supported.");
      }
    }
  }

  /**
   * A directed graph node with annotations.
   */
  static class AnnotatedLinkedDirectedGraphNode<N, E>
      extends LinkedDirectedGraphNode<N, E> {

    protected Annotation annotation;

    /**
     * @param nodeValue Node's value.
     */
    AnnotatedLinkedDirectedGraphNode(N nodeValue) {
      super(nodeValue);
    }

    @SuppressWarnings("unchecked")
    @Override
    public <A extends Annotation> A getAnnotation() {
      int PROBE_START_LINE_444 = 444;
		com.google.javascript.jscomp.graph.Annotation f_annotation_3482_line_444 = annotation;
		int PROBE_END_LINE_444 = 444;
	return (A) f_annotation_3482_line_444;
    }

    @Override
    public void setAnnotation(Annotation data) {
      int PROBE_START_LINE_449 = 449;
		com.google.javascript.jscomp.graph.Annotation p_data_3483_line_449 = data;
		int PROBE_END_LINE_449 = 449;
	annotation = p_data_3483_line_449;
    }
  }

  /**
   * A directed graph edge that stores the source and destination nodes at each
   * edge.
   */
  static class LinkedDirectedGraphEdge<N, E> implements DiGraphEdge<N, E>,
      GraphvizEdge {

    private DiGraphNode<N, E> sourceNode;

    private DiGraphNode<N, E> destNode;

    protected final E value;

    /**
     * Constructor.
     *
     * @param edgeValue Edge Value.
     */
    LinkedDirectedGraphEdge(DiGraphNode<N, E> sourceNode,
        E edgeValue, DiGraphNode<N, E> destNode) {
      int PROBE_START_LINE_473 = 473;
			E p_edge_value_3485_line_473 = edgeValue;
			int PROBE_END_LINE_473 = 473;
	this.value = p_edge_value_3485_line_473;
      int PROBE_START_LINE_474 = 474;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> p_source_node_3484_line_474 = sourceNode;
	int PROBE_END_LINE_474 = 474;
	this.sourceNode = p_source_node_3484_line_474;
      int PROBE_START_LINE_475 = 475;
	com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> p_dest_node_3486_line_475 = destNode;
	int PROBE_END_LINE_475 = 475;
	this.destNode = p_dest_node_3486_line_475;
    }

    @Override
    public DiGraphNode<N, E> getSource() {
      int PROBE_START_LINE_480 = 480;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> f_source_node_3488_line_480 = sourceNode;
		int PROBE_END_LINE_480 = 480;
	return f_source_node_3488_line_480;
    }

    @Override
    public DiGraphNode<N, E> getDestination() {
      int PROBE_START_LINE_485 = 485;
		com.google.javascript.jscomp.graph.DiGraph.DiGraphNode<N, E> f_dest_node_3489_line_485 = destNode;
		int PROBE_END_LINE_485 = 485;
	return f_dest_node_3489_line_485;
    }

    @Override
    public void setDestination(DiGraphNode<N, E> node) {
      destNode = node;
    }

    @Override
    public void setSource(DiGraphNode<N, E> node) {
      sourceNode = node;
    }

    @Override
    public E getValue() {
      int PROBE_START_LINE_500 = 500;
		E f_value_3487_line_500 = value;
		int PROBE_END_LINE_500 = 500;
	return f_value_3487_line_500;
    }

    @Override
    public <A extends Annotation> A getAnnotation() {
      throw new UnsupportedOperationException(
          "Graph initialized with edge annotations turned off");
    }

    @Override
    public void setAnnotation(Annotation data) {
      throw new UnsupportedOperationException(
          "Graph initialized with edge annotations turned off");
    }

    @Override
    public String getColor() {
      return "black";
    }

    @Override
    public String getLabel() {
      return value != null ? value.toString() : "null";
    }

    @Override
    public String getNode1Id() {
      return ((LinkedDirectedGraphNode<N, E>) sourceNode).getId();
    }

    @Override
    public String getNode2Id() {
      return ((LinkedDirectedGraphNode<N, E>) destNode).getId();
    }

    @Override
    public String toString() {
      return sourceNode.toString() + " -> " + destNode.toString();
    }

    @Override
    public GraphNode<N, E> getNodeA() {
      return sourceNode;
    }

    @Override
    public GraphNode<N, E> getNodeB() {
      return destNode;
    }
  }

  /**
   * A directed graph edge that stores the source and destination nodes at each
   * edge.
   */
  static class AnnotatedLinkedDirectedGraphEdge<N, E>
      extends LinkedDirectedGraphEdge<N, E> {

    protected Annotation annotation;

    /**
     * Constructor.
     *
     * @param edgeValue Edge Value.
     */
    AnnotatedLinkedDirectedGraphEdge(DiGraphNode<N, E> sourceNode,
        E edgeValue, DiGraphNode<N, E> destNode) {
      super(sourceNode, edgeValue, destNode);
    }

    @SuppressWarnings("unchecked")
    @Override
    public <A extends Annotation> A getAnnotation() {
      return (A) annotation;
    }

    @Override
    public void setAnnotation(Annotation data) {
      annotation = data;
    }
  }
}
