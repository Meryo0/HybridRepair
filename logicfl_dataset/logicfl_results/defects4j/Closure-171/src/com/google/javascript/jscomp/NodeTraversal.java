/*
 * Copyright 2004 The Closure Compiler Authors.
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
import com.google.common.collect.Lists;
import com.google.javascript.rhino.InputId;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/**
 * NodeTraversal allows an iteration through the nodes in the parse tree,
 * and facilitates the optimizations on the parse tree.
 *
 */
public class NodeTraversal {
  private final AbstractCompiler compiler;
  private final Callback callback;

  /** Contains the current node*/
  private Node curNode;

  public static final DiagnosticType NODE_TRAVERSAL_ERROR =
      DiagnosticType.error("JSC_NODE_TRAVERSAL_ERROR", "{0}");

  /**
   * Stack containing the Scopes that have been created. The Scope objects
   * are lazily created; so the {@code scopeRoots} stack contains the
   * Nodes for all Scopes that have not been created yet.
   */
  private final Deque<Scope> scopes = new ArrayDeque<Scope>();

  /**
   * A stack of scope roots. All scopes that have not been created
   * are represented in this Deque.
   */
  private final Deque<Node> scopeRoots = new ArrayDeque<Node>();


  /**
   * Stack of control flow graphs (CFG). There is one CFG per scope. CFGs
   * are lazily populated: elements are {@code null} until requested by
   * {@link #getControlFlowGraph()}. Note that {@link ArrayDeque} does not allow
   * {@code null} elements, so {@link LinkedList} is used instead.
   */
  Deque<ControlFlowGraph<Node>> cfgs = new LinkedList<ControlFlowGraph<Node>>();

  /** The current source file name */
  private String sourceName;

  /** The current input */
  private InputId inputId;

  /** The scope creator */
  private ScopeCreator scopeCreator;

  /** Possible callback for scope entry and exist **/
  private ScopedCallback scopeCallback;

  /** Callback for passes that iterate over a list of functions */
  public interface FunctionCallback {
    void visit(AbstractCompiler compiler, Node fnRoot);
  }

  /**
   * Callback for tree-based traversals
   */
  public interface Callback {
    /**
     * <p>Visits a node in pre order (before visiting its children) and decides
     * whether this node's children should be traversed. If children are
     * traversed, they will be visited by
     * {@link #visit(NodeTraversal, Node, Node)} in postorder.</p>
     * <p>Implementations can have side effects (e.g. modifying the parse
     * tree).</p>
     * @return whether the children of this node should be visited
     */
    boolean shouldTraverse(NodeTraversal nodeTraversal, Node n, Node parent);

    /**
     * <p>Visits a node in postorder (after its children have been visited).
     * A node is visited only if all its parents should be traversed
     * ({@link #shouldTraverse(NodeTraversal, Node, Node)}).</p>
     * <p>Implementations can have side effects (e.g. modifying the parse
     * tree).</p>
     */
    void visit(NodeTraversal t, Node n, Node parent);
  }

  /**
   * Callback that also knows about scope changes
   */
  public interface ScopedCallback extends Callback {

    /**
     * Called immediately after entering a new scope. The new scope can
     * be accessed through t.getScope()
     */
    void enterScope(NodeTraversal t);

    /**
     * Called immediately before exiting a scope. The ending scope can
     * be accessed through t.getScope()
     */
    void exitScope(NodeTraversal t);
  }

  /**
   * Abstract callback to visit all nodes in postorder.
   */
  public abstract static class AbstractPostOrderCallback implements Callback {
    @Override
    public final boolean shouldTraverse(NodeTraversal nodeTraversal, Node n,
        Node parent) {
      return true;
    }
  }

  /** Abstract callback to visit all nodes in preorder. */
  public abstract static class AbstractPreOrderCallback implements Callback {
    @Override
    public void visit(NodeTraversal t, Node n, Node parent) {}
  }

  /**
   * Abstract scoped callback to visit all nodes in postorder.
   */
  public abstract static class AbstractScopedCallback
      implements ScopedCallback {
    @Override
    public final boolean shouldTraverse(NodeTraversal nodeTraversal, Node n,
        Node parent) {
      return true;
    }

    @Override
    public void enterScope(NodeTraversal t) {}

    @Override
    public void exitScope(NodeTraversal t) {}
  }

  /**
   * Abstract callback to visit all nodes but not traverse into function
   * bodies.
   */
  public abstract static class AbstractShallowCallback implements Callback {
    @Override
    public final boolean shouldTraverse(NodeTraversal nodeTraversal, Node n,
        Node parent) {
      // We do want to traverse the name of a named function, but we don't
      // want to traverse the arguments or body.
      return parent == null || !parent.isFunction() ||
          n == parent.getFirstChild();
    }
  }

  /**
   * Abstract callback to visit all structure and statement nodes but doesn't
   * traverse into functions or expressions.
   */
  public abstract static class AbstractShallowStatementCallback
      implements Callback {
    @Override
    public final boolean shouldTraverse(NodeTraversal nodeTraversal, Node n,
        Node parent) {
      int PROBE_START_LINE_188 = 189;
			com.google.javascript.rhino.Node p_parent_2170_line_188 = parent;
			boolean node_traversal_1_expr7_line_188 = p_parent_2170_line_188 == null;
			boolean node_traversal_1_expr8_line_188 = false;
			if (!node_traversal_1_expr7_line_188) {
				com.google.javascript.rhino.Node p_parent_2170_line_188_v1 = parent;
				node_traversal_1_expr8_line_188 = NodeUtil.isControlStructure(p_parent_2170_line_188_v1);
			}
			boolean node_traversal_1_expr6_line_188 = node_traversal_1_expr7_line_188
					|| node_traversal_1_expr8_line_188;
			boolean node_traversal_1_expr5_line_188 = node_traversal_1_expr6_line_188
					|| NodeUtil.isStatementBlock(parent);
			int PROBE_END_LINE_188 = 189;
	return node_traversal_1_expr5_line_188;
    }
  }

  /**
   * Abstract callback to visit a pruned set of nodes.
   */
  public abstract static class AbstractNodeTypePruningCallback
        implements Callback {
    private final Set<Integer> nodeTypes;
    private final boolean include;

    /**
     * Creates an abstract pruned callback.
     * @param nodeTypes the nodes to include in the traversal
     */
    public AbstractNodeTypePruningCallback(Set<Integer> nodeTypes) {
      this(nodeTypes, true);
    }

    /**
     * Creates an abstract pruned callback.
     * @param nodeTypes the nodes to include/exclude in the traversal
     * @param include whether to include or exclude the nodes in the traversal
     */
    public AbstractNodeTypePruningCallback(Set<Integer> nodeTypes,
          boolean include) {
      this.nodeTypes = nodeTypes;
      this.include = include;
    }

    @Override
    public boolean shouldTraverse(NodeTraversal nodeTraversal, Node n,
        Node parent) {
      return include == nodeTypes.contains(n.getType());
    }
  }

  /**
   * Creates a node traversal using the specified callback interface.
   */
  public NodeTraversal(AbstractCompiler compiler, Callback cb) {
    this(compiler, cb, new SyntacticScopeCreator(compiler));
  }

  /**
   * Creates a node traversal using the specified callback interface
   * and the scope creator.
   */
  public NodeTraversal(AbstractCompiler compiler, Callback cb,
      ScopeCreator scopeCreator) {
    int PROBE_START_LINE_240 = 240;
		com.google.javascript.jscomp.NodeTraversal.Callback p_cb_2180_line_240 = cb;
		int PROBE_END_LINE_240 = 240;
	this.callback = p_cb_2180_line_240;
    int PROBE_START_LINE_241 = 243;
	com.google.javascript.jscomp.NodeTraversal.Callback p_cb_2180_line_241 = cb;
	boolean node_traversal_1_expr14_line_241 = p_cb_2180_line_241 instanceof ScopedCallback;
	int PROBE_END_LINE_241 = 243;
	if (node_traversal_1_expr14_line_241) {
      int PROBE_START_LINE_242 = 242;
		com.google.javascript.jscomp.NodeTraversal.Callback p_cb_2180_line_242 = cb;
		int PROBE_END_LINE_242 = 242;
	this.scopeCallback = (ScopedCallback) p_cb_2180_line_242;
    }
    int PROBE_START_LINE_244 = 244;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_2179_line_244 = compiler;
	int PROBE_END_LINE_244 = 244;
	this.compiler = p_compiler_2179_line_244;
    this.inputId = null;
    this.sourceName = "";
    int PROBE_START_LINE_247 = 247;
	com.google.javascript.jscomp.ScopeCreator p_scope_creator_2181_line_247 = scopeCreator;
	int PROBE_END_LINE_247 = 247;
	this.scopeCreator = p_scope_creator_2181_line_247;
  }

  private void throwUnexpectedException(Exception unexpectedException) {
    // If there's an unexpected exception, try to get the
    // line number of the code that caused it.
    String message = unexpectedException.getMessage();

    // TODO(user): It is possible to get more information if curNode or
    // its parent is missing. We still have the scope stack in which it is still
    // very useful to find out at least which function caused the exception.
    if (inputId != null) {
      message =
          unexpectedException.getMessage() + "\n" +
          formatNodeContext("Node", curNode) +
          (curNode == null ?
              "" :
              formatNodeContext("Parent", curNode.getParent()));
    }
    compiler.throwInternalError(message, unexpectedException);
  }

  private String formatNodeContext(String label, Node n) {
    if (n == null) {
      return "  " + label + ": NULL";
    }
    return "  " + label + "(" + n.toString(false, false, false) + "): "
        + formatNodePosition(n);
  }

  /**
   * Traverses a parse tree recursively.
   */
  public void traverse(Node root) {
    try {
      int PROBE_START_LINE_282 = 282;
		com.google.javascript.rhino.Node p_root_2191_line_282 = root;
		com.google.javascript.rhino.InputId node_traversal_1_expr32_line_282 = NodeUtil
				.getInputId(p_root_2191_line_282);
		int PROBE_END_LINE_282 = 282;
	inputId = node_traversal_1_expr32_line_282;
      sourceName = "";
      int PROBE_START_LINE_284 = 284;
	com.google.javascript.rhino.Node p_root_2191_line_284 = root;
	int PROBE_END_LINE_284 = 284;
	curNode = p_root_2191_line_284;
      int PROBE_START_LINE_285 = 285;
	com.google.javascript.rhino.Node p_root_2191_line_285 = root;
	int PROBE_END_LINE_285 = 285;
	pushScope(p_root_2191_line_285);
      int PROBE_START_LINE_287 = 287;
	com.google.javascript.rhino.Node p_root_2191_line_287 = root;
	int PROBE_END_LINE_287 = 287;
	// null parent ensures that the shallow callbacks will traverse root
      traverseBranch(p_root_2191_line_287, null);
      popScope();
    } catch (Exception unexpectedException) {
      throwUnexpectedException(unexpectedException);
    }
  }

  public void traverseRoots(Node ... roots) {
    traverseRoots(Lists.newArrayList(roots));
  }

  public void traverseRoots(List<Node> roots) {
    int PROBE_START_LINE_299 = 301;
	List<com.google.javascript.rhino.Node> p_roots_2194_line_299 = roots;
	boolean node_traversal_1_expr38_line_299 = p_roots_2194_line_299.isEmpty();
	int PROBE_END_LINE_299 = 301;
	if (node_traversal_1_expr38_line_299) {
      return;
    }

    try {
      int PROBE_START_LINE_304 = 304;
		List<com.google.javascript.rhino.Node> p_roots_2194_line_304 = roots;
		com.google.javascript.rhino.Node node_traversal_1_expr40_line_304 = p_roots_2194_line_304.get(0);
		Node node_traversal_1_expr39_line_304 = node_traversal_1_expr40_line_304.getParent();
		int PROBE_END_LINE_304 = 304;
	Node scopeRoot = node_traversal_1_expr39_line_304;
      int PROBE_START_LINE_305 = 305;
	com.google.javascript.rhino.Node v_scope_root_2195_line_305 = scopeRoot;
	boolean node_traversal_1_expr42_line_305 = v_scope_root_2195_line_305 != null;
	int PROBE_END_LINE_305 = 305;
	Preconditions.checkState(node_traversal_1_expr42_line_305);

      int PROBE_START_LINE_307 = 307;
	com.google.javascript.rhino.Node v_scope_root_2195_line_307 = scopeRoot;
	com.google.javascript.rhino.InputId node_traversal_1_expr44_line_307 = NodeUtil
			.getInputId(v_scope_root_2195_line_307);
	int PROBE_END_LINE_307 = 307;
	inputId = node_traversal_1_expr44_line_307;
      sourceName = "";
      int PROBE_START_LINE_309 = 309;
	com.google.javascript.rhino.Node v_scope_root_2195_line_309 = scopeRoot;
	int PROBE_END_LINE_309 = 309;
	curNode = v_scope_root_2195_line_309;
      int PROBE_START_LINE_310 = 310;
	com.google.javascript.rhino.Node v_scope_root_2195_line_310 = scopeRoot;
	int PROBE_END_LINE_310 = 310;
	pushScope(v_scope_root_2195_line_310);

      int PROBE_START_LINE_312 = 315;
	List<com.google.javascript.rhino.Node> p_roots_2194_line_312 = roots;
	int PROBE_END_LINE_312 = 315;
	for (Node root : p_roots_2194_line_312) {
        int PROBE_START_LINE_313 = 313;
		com.google.javascript.rhino.Node v_root_2196_line_313 = root;
		com.google.javascript.rhino.Node node_traversal_1_expr50_line_313 = v_root_2196_line_313.getParent();
		com.google.javascript.rhino.Node v_scope_root_2195_line_313 = scopeRoot;
		boolean node_traversal_1_expr49_line_313 = node_traversal_1_expr50_line_313 == v_scope_root_2195_line_313;
		int PROBE_END_LINE_313 = 313;
		Preconditions.checkState(node_traversal_1_expr49_line_313);
        int PROBE_START_LINE_314 = 314;
		com.google.javascript.rhino.Node v_root_2196_line_314 = root;
		com.google.javascript.rhino.Node v_scope_root_2195_line_314 = scopeRoot;
		int PROBE_END_LINE_314 = 314;
		traverseBranch(v_root_2196_line_314, v_scope_root_2195_line_314);
      }

      popScope();
    } catch (Exception unexpectedException) {
      throwUnexpectedException(unexpectedException);
    }
  }

  private static final String MISSING_SOURCE = "[source unknown]";

  private String formatNodePosition(Node n) {
    String sourceFileName = getBestSourceFileName(n);
    if (sourceFileName == null) {
      return MISSING_SOURCE + "\n";
    }

    int lineNumber = n.getLineno();
    int columnNumber = n.getCharno();
    String src = compiler.getSourceLine(sourceFileName, lineNumber);
    if (src == null) {
      src = MISSING_SOURCE;
    }
    return sourceFileName + ":" + lineNumber + ":" + columnNumber + "\n"
        + src + "\n";
  }

  /**
   * Traverses a parse tree recursively with a scope, starting with the given
   * root. This should only be used in the global scope. Otherwise, use
   * {@link #traverseAtScope}.
   */
  void traverseWithScope(Node root, Scope s) {
    int PROBE_START_LINE_347 = 347;
	com.google.javascript.jscomp.Scope p_s_2199_line_347 = s;
	boolean node_traversal_1_expr54_line_347 = p_s_2199_line_347.isGlobal();
	int PROBE_END_LINE_347 = 347;
	Preconditions.checkState(node_traversal_1_expr54_line_347);

    inputId = null;
    sourceName = "";
    int PROBE_START_LINE_351 = 351;
	com.google.javascript.rhino.Node p_root_2198_line_351 = root;
	int PROBE_END_LINE_351 = 351;
	curNode = p_root_2198_line_351;
    int PROBE_START_LINE_352 = 352;
	com.google.javascript.jscomp.Scope p_s_2199_line_352 = s;
	int PROBE_END_LINE_352 = 352;
	pushScope(p_s_2199_line_352);
    int PROBE_START_LINE_353 = 353;
	com.google.javascript.rhino.Node p_root_2198_line_353 = root;
	int PROBE_END_LINE_353 = 353;
	traverseBranch(p_root_2198_line_353, null);
    popScope();
  }

  /**
   * Traverses a parse tree recursively with a scope, starting at that scope's
   * root.
   */
  void traverseAtScope(Scope s) {
    Node n = s.getRootNode();
    if (n.isFunction()) {
      // We need to do some extra magic to make sure that the scope doesn't
      // get re-created when we dive into the function.
      if (inputId == null) {
        inputId = NodeUtil.getInputId(n);
      }
      sourceName = getSourceName(n);
      curNode = n;
      pushScope(s);

      Node args = n.getFirstChild().getNext();
      Node body = args.getNext();
      traverseBranch(args, n);
      traverseBranch(body, n);

      popScope();
    } else {
      traverseWithScope(n, s);
    }
  }

  /**
   * Traverses an inner node recursively with a refined scope. An inner node may
   * be any node with a non {@code null} parent (i.e. all nodes except the
   * root).
   *
   * @param node the node to traverse
   * @param parent the node's parent, it may not be {@code null}
   * @param refinedScope the refined scope of the scope currently at the top of
   *     the scope stack or in trivial cases that very scope or {@code null}
   */
  protected void traverseInnerNode(Node node, Node parent, Scope refinedScope) {
    Preconditions.checkNotNull(parent);
    if (refinedScope != null && getScope() != refinedScope) {
      curNode = node;
      pushScope(refinedScope);
      traverseBranch(node, parent);
      popScope();
    } else {
      traverseBranch(node, parent);
    }
  }

  public AbstractCompiler getCompiler() {
    return compiler;
  }

  /**
   * Gets the current line number, or zero if it cannot be determined. The line
   * number is retrieved lazily as a running time optimization.
   */
  public int getLineNumber() {
    Node cur = curNode;
    while (cur != null) {
      int line = cur.getLineno();
      if (line >= 0) {
        return line;
      }
      cur = cur.getParent();
    }
    return 0;
  }

  /**
   * Gets the current input source name.
   *
   * @return A string that may be empty, but not null
   */
  public String getSourceName() {
    return sourceName;
  }

  /**
   * Gets the current input source.
   */
  public CompilerInput getInput() {
    int PROBE_START_LINE_439 = 439;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_2184_line_439 = compiler;
	com.google.javascript.rhino.InputId f_input_id_2185_line_439 = inputId;
	com.google.javascript.jscomp.CompilerInput node_traversal_1_expr61_line_439 = f_compiler_2184_line_439
			.getInput(f_input_id_2185_line_439);
	int PROBE_END_LINE_439 = 439;
	return node_traversal_1_expr61_line_439;
  }

  /**
   * Gets the current input module.
   */
  public JSModule getModule() {
    CompilerInput input = getInput();
    return input == null ? null : input.getModule();
  }

  /** Returns the node currently being traversed. */
  public Node getCurrentNode() {
    int PROBE_START_LINE_452 = 452;
	com.google.javascript.rhino.Node f_cur_node_2192_line_452 = curNode;
	int PROBE_END_LINE_452 = 452;
	return f_cur_node_2192_line_452;
  }

  /**
   * Traversal for passes that work only on changed functions.
   * Suppose a loopable pass P1 uses this traversal.
   * Then, if a function doesn't change between two runs of P1, it won't look at
   * the function the second time.
   * (We're assuming that P1 runs to a fixpoint, o/w we may miss optimizations.)
   *
   * Most changes are reported with calls to Compiler.reportCodeChange(), which
   * doesn't know which scope changed. We keep track of the current scope by
   * calling Compiler.setScope inside pushScope and popScope.
   * The automatic tracking can be wrong in rare cases when a pass changes scope
   * w/out causing a call to pushScope or popScope. It's very hard to find the
   * places where this happens unless a bug is triggered.
   * Passes that do cross-scope modifications call
   * Compiler.reportChangeToEnclosingScope(Node n).
   */
  public static void traverseChangedFunctions(
      AbstractCompiler compiler, FunctionCallback callback) {
    final AbstractCompiler comp = compiler;
    final FunctionCallback cb = callback;
    final Node jsRoot = comp.getJsRoot();
    NodeTraversal t = new NodeTraversal(comp, new AbstractPreOrderCallback() {
        @Override
        public final boolean shouldTraverse(NodeTraversal t, Node n, Node p) {
          if ((n == jsRoot || n.isFunction()) && comp.hasScopeChanged(n)) {
            cb.visit(comp, n);
          }
          return true;
        }
      });
    t.traverse(jsRoot);
  }

  /**
   * Traverses a node recursively.
   */
  public static void traverse(
      AbstractCompiler compiler, Node root, Callback cb) {
    int PROBE_START_LINE_493 = 493;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_2209_line_493 = compiler;
		com.google.javascript.jscomp.NodeTraversal.Callback p_cb_2211_line_493 = cb;
		int PROBE_END_LINE_493 = 493;
	NodeTraversal t = new NodeTraversal(p_compiler_2209_line_493, p_cb_2211_line_493);
    int PROBE_START_LINE_494 = 494;
	com.google.javascript.jscomp.NodeTraversal v_t_2212_line_494 = t;
	com.google.javascript.rhino.Node p_root_2210_line_494 = root;
	int PROBE_END_LINE_494 = 494;
	v_t_2212_line_494.traverse(p_root_2210_line_494);
  }

  /**
   * Traverses a list of node trees.
   */
  public static void traverseRoots(
      AbstractCompiler compiler, List<Node> roots, Callback cb) {
    int PROBE_START_LINE_502 = 502;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_2213_line_502 = compiler;
		com.google.javascript.jscomp.NodeTraversal.Callback p_cb_2215_line_502 = cb;
		int PROBE_END_LINE_502 = 502;
	NodeTraversal t = new NodeTraversal(p_compiler_2213_line_502, p_cb_2215_line_502);
    int PROBE_START_LINE_503 = 503;
	com.google.javascript.jscomp.NodeTraversal v_t_2216_line_503 = t;
	List<com.google.javascript.rhino.Node> p_roots_2214_line_503 = roots;
	int PROBE_END_LINE_503 = 503;
	v_t_2216_line_503.traverseRoots(p_roots_2214_line_503);
  }

  public static void traverseRoots(
      AbstractCompiler compiler, Callback cb, Node ... roots) {
    NodeTraversal t = new NodeTraversal(compiler, cb);
    t.traverseRoots(roots);
  }

  /**
   * Traverses a branch.
   */
  private void traverseBranch(Node n, Node parent) {
    int PROBE_START_LINE_516 = 516;
	com.google.javascript.rhino.Node p_n_2220_line_516 = n;
	int node_traversal_1_expr66_line_516 = p_n_2220_line_516.getType();
	int PROBE_END_LINE_516 = 516;
	int type = node_traversal_1_expr66_line_516;
    int PROBE_START_LINE_517 = 520;
	int v_type_2222_line_517 = type;
	int q_script_82_line_517 = Token.SCRIPT;
	boolean node_traversal_1_expr67_line_517 = v_type_2222_line_517 == q_script_82_line_517;
	int PROBE_END_LINE_517 = 520;
	if (node_traversal_1_expr67_line_517) {
      int PROBE_START_LINE_518 = 518;
		com.google.javascript.rhino.Node p_n_2220_line_518 = n;
		com.google.javascript.rhino.InputId node_traversal_1_expr69_line_518 = p_n_2220_line_518.getInputId();
		int PROBE_END_LINE_518 = 518;
	inputId = node_traversal_1_expr69_line_518;
      int PROBE_START_LINE_519 = 519;
	com.google.javascript.rhino.Node p_n_2220_line_519 = n;
	String node_traversal_1_expr71_line_519 = getSourceName(p_n_2220_line_519);
	int PROBE_END_LINE_519 = 519;
	sourceName = node_traversal_1_expr71_line_519;
    }

    int PROBE_START_LINE_522 = 522;
	com.google.javascript.rhino.Node p_n_2220_line_522 = n;
	int PROBE_END_LINE_522 = 522;
	curNode = p_n_2220_line_522;
    int PROBE_START_LINE_523 = 525;
	com.google.javascript.jscomp.NodeTraversal.Callback f_callback_2182_line_523 = callback;
	com.google.javascript.rhino.Node p_n_2220_line_523 = n;
	com.google.javascript.rhino.Node p_parent_2221_line_523 = parent;
	boolean node_traversal_1_expr74_line_523 = f_callback_2182_line_523.shouldTraverse(this, p_n_2220_line_523,
			p_parent_2221_line_523);
	boolean node_traversal_1_expr73_line_523 = !node_traversal_1_expr74_line_523;
	int PROBE_END_LINE_523 = 525;
	if (node_traversal_1_expr73_line_523) {
      return;
    }

    int PROBE_START_LINE_527 = 537;
	int v_type_2222_line_527 = type;
	int q_function_82_line_527 = Token.FUNCTION;
	boolean node_traversal_1_expr76_line_527 = v_type_2222_line_527 == q_function_82_line_527;
	int PROBE_END_LINE_527 = 537;
	if (node_traversal_1_expr76_line_527) {
      int PROBE_START_LINE_528 = 528;
		com.google.javascript.rhino.Node p_n_2220_line_528 = n;
		com.google.javascript.rhino.Node p_parent_2221_line_528 = parent;
		int PROBE_END_LINE_528 = 528;
	traverseFunction(p_n_2220_line_528, p_parent_2221_line_528);
    } else {
      int PROBE_START_LINE_529 = 529;
		boolean FOR_STMT_TOGGLE_LINE_530 = false;
		int PROBE_END_LINE_529 = 529;
	for (Node child = null; true; ) {
        int PROBE_START_LINE_533 = 533;
		if (!FOR_STMT_TOGGLE_LINE_530) {
			FOR_STMT_TOGGLE_LINE_530 = true;
			com.google.javascript.rhino.Node p_n_2220_line_530 = n;
			Node node_traversal_1_expr79_line_530 = p_n_2220_line_530.getFirstChild();
			child = node_traversal_1_expr79_line_530;
		} else {
			if (FOR_STMT_TOGGLE_LINE_530) {
			} else {
				FOR_STMT_TOGGLE_LINE_530 = true;
			}
		}
		com.google.javascript.rhino.Node v_child_2223_line_530 = child;
		boolean node_traversal_1_expr80_line_530 = v_child_2223_line_530 != null;
		if (!(node_traversal_1_expr80_line_530)) {
			break;
		}
		com.google.javascript.rhino.Node v_child_2223_line_533 = child;
		Node node_traversal_1_expr81_line_533 = v_child_2223_line_533.getNext();
		int PROBE_END_LINE_533 = 533;
		// child could be replaced, in which case our child node
        // would no longer point to the true next
        Node next = node_traversal_1_expr81_line_533;
        int PROBE_START_LINE_534 = 534;
		com.google.javascript.rhino.Node v_child_2223_line_534 = child;
		com.google.javascript.rhino.Node p_n_2220_line_534 = n;
		int PROBE_END_LINE_534 = 534;
		traverseBranch(v_child_2223_line_534, p_n_2220_line_534);
        int PROBE_START_LINE_535 = 535;
		com.google.javascript.rhino.Node v_next_2224_line_535 = next;
		int PROBE_END_LINE_535 = 535;
		child = v_next_2224_line_535;
      }
    }

    int PROBE_START_LINE_539 = 539;
	com.google.javascript.rhino.Node p_n_2220_line_539 = n;
	int PROBE_END_LINE_539 = 539;
	curNode = p_n_2220_line_539;
    int PROBE_START_LINE_540 = 540;
	com.google.javascript.jscomp.NodeTraversal.Callback f_callback_2182_line_540 = callback;
	com.google.javascript.rhino.Node p_n_2220_line_540 = n;
	com.google.javascript.rhino.Node p_parent_2221_line_540 = parent;
	int PROBE_END_LINE_540 = 540;
	f_callback_2182_line_540.visit(this, p_n_2220_line_540, p_parent_2221_line_540);
  }

  /** Traverses a function. */
  private void traverseFunction(Node n, Node parent) {
    int PROBE_START_LINE_545 = 545;
	com.google.javascript.rhino.Node p_n_2225_line_545 = n;
	int node_traversal_1_expr89_line_545 = p_n_2225_line_545.getChildCount();
	boolean node_traversal_1_expr88_line_545 = node_traversal_1_expr89_line_545 == 3;
	int PROBE_END_LINE_545 = 545;
	Preconditions.checkState(node_traversal_1_expr88_line_545);
    int PROBE_START_LINE_546 = 546;
	com.google.javascript.rhino.Node p_n_2225_line_546 = n;
	boolean node_traversal_1_expr91_line_546 = p_n_2225_line_546.isFunction();
	int PROBE_END_LINE_546 = 546;
	Preconditions.checkState(node_traversal_1_expr91_line_546);

    int PROBE_START_LINE_548 = 548;
	com.google.javascript.rhino.Node p_n_2225_line_548 = n;
	Node node_traversal_1_expr92_line_548 = p_n_2225_line_548.getFirstChild();
	int PROBE_END_LINE_548 = 548;
	final Node fnName = node_traversal_1_expr92_line_548;
    int PROBE_START_LINE_549 = 550;
	com.google.javascript.rhino.Node p_parent_2226_line_549 = parent;
	boolean node_traversal_1_expr95_line_549 = p_parent_2226_line_549 != null;
	boolean node_traversal_1_expr94_line_549 = (node_traversal_1_expr95_line_549);
	boolean node_traversal_1_expr93_line_549 = node_traversal_1_expr94_line_549 && NodeUtil.isFunctionExpression(n);
	int PROBE_END_LINE_549 = 550;
	boolean isFunctionExpression = node_traversal_1_expr93_line_549;

    int PROBE_START_LINE_552 = 555;
	boolean v_is_function_expression_2228_line_552 = isFunctionExpression;
	boolean node_traversal_1_expr96_line_552 = !v_is_function_expression_2228_line_552;
	int PROBE_END_LINE_552 = 555;
	if (node_traversal_1_expr96_line_552) {
      int PROBE_START_LINE_554 = 554;
		com.google.javascript.rhino.Node v_fn_name_2227_line_554 = fnName;
		com.google.javascript.rhino.Node p_n_2225_line_554 = n;
		int PROBE_END_LINE_554 = 554;
	// Functions declarations are in the scope containing the declaration.
      traverseBranch(v_fn_name_2227_line_554, p_n_2225_line_554);
    }

    int PROBE_START_LINE_557 = 557;
	com.google.javascript.rhino.Node p_n_2225_line_557 = n;
	int PROBE_END_LINE_557 = 557;
	curNode = p_n_2225_line_557;
    int PROBE_START_LINE_558 = 558;
	com.google.javascript.rhino.Node p_n_2225_line_558 = n;
	int PROBE_END_LINE_558 = 558;
	pushScope(p_n_2225_line_558);

    int PROBE_START_LINE_560 = 564;
	boolean v_is_function_expression_2228_line_560 = isFunctionExpression;
	int PROBE_END_LINE_560 = 564;
	if (v_is_function_expression_2228_line_560) {
      int PROBE_START_LINE_563 = 563;
		com.google.javascript.rhino.Node v_fn_name_2227_line_563 = fnName;
		com.google.javascript.rhino.Node p_n_2225_line_563 = n;
		int PROBE_END_LINE_563 = 563;
	// Function expression names are only accessible within the function
      // scope.
      traverseBranch(v_fn_name_2227_line_563, p_n_2225_line_563);
    }

    int PROBE_START_LINE_566 = 566;
	com.google.javascript.rhino.Node v_fn_name_2227_line_566 = fnName;
	Node node_traversal_1_expr101_line_566 = v_fn_name_2227_line_566.getNext();
	int PROBE_END_LINE_566 = 566;
	final Node args = node_traversal_1_expr101_line_566;
    int PROBE_START_LINE_567 = 567;
	com.google.javascript.rhino.Node v_args_2229_line_567 = args;
	Node node_traversal_1_expr102_line_567 = v_args_2229_line_567.getNext();
	int PROBE_END_LINE_567 = 567;
	final Node body = node_traversal_1_expr102_line_567;

    int PROBE_START_LINE_570 = 570;
	com.google.javascript.rhino.Node v_args_2229_line_570 = args;
	com.google.javascript.rhino.Node p_n_2225_line_570 = n;
	int PROBE_END_LINE_570 = 570;
	// Args
    traverseBranch(v_args_2229_line_570, p_n_2225_line_570);

    int PROBE_START_LINE_573 = 573;
	com.google.javascript.rhino.Node v_body_2230_line_573 = body;
	com.google.javascript.rhino.Node node_traversal_1_expr107_line_573 = v_body_2230_line_573.getNext();
	boolean node_traversal_1_expr106_line_573 = node_traversal_1_expr107_line_573 == null;
	boolean node_traversal_1_expr108_line_573 = true;
	if (node_traversal_1_expr106_line_573) {
		com.google.javascript.rhino.Node v_body_2230_line_573_v1 = body;
		node_traversal_1_expr108_line_573 = v_body_2230_line_573_v1.isBlock();
	}
	boolean node_traversal_1_expr105_line_573 = node_traversal_1_expr106_line_573 && node_traversal_1_expr108_line_573;
	com.google.javascript.rhino.Node v_body_2230_line_573_v2 = body;
	int PROBE_END_LINE_573 = 573;
	// Body
    Preconditions.checkState(node_traversal_1_expr105_line_573, v_body_2230_line_573_v2);
    int PROBE_START_LINE_574 = 574;
	com.google.javascript.rhino.Node v_body_2230_line_574 = body;
	com.google.javascript.rhino.Node p_n_2225_line_574 = n;
	int PROBE_END_LINE_574 = 574;
	traverseBranch(v_body_2230_line_574, p_n_2225_line_574);

    popScope();
  }

  /** Examines the functions stack for the last instance of a function node. */
  @SuppressWarnings("unchecked")
  public Node getEnclosingFunction() {
    if (scopes.size() + scopeRoots.size() < 2) {
      return null;
    } else {
      if (scopeRoots.isEmpty()) {
        return scopes.peek().getRootNode();
      } else {
        return scopeRoots.peek();
      }
    }
  }

  /** Creates a new scope (e.g. when entering a function). */
  private void pushScope(Node node) {
    int PROBE_START_LINE_595 = 595;
	com.google.javascript.rhino.Node f_cur_node_2192_line_595 = curNode;
	boolean node_traversal_1_expr112_line_595 = f_cur_node_2192_line_595 != null;
	int PROBE_END_LINE_595 = 595;
	Preconditions.checkState(node_traversal_1_expr112_line_595);
    int PROBE_START_LINE_596 = 596;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_2184_line_596 = compiler;
	com.google.javascript.rhino.Node p_node_2231_line_596 = node;
	int PROBE_END_LINE_596 = 596;
	f_compiler_2184_line_596.setScope(p_node_2231_line_596);
    int PROBE_START_LINE_597 = 597;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_2142_line_597 = scopeRoots;
	com.google.javascript.rhino.Node p_node_2231_line_597 = node;
	int PROBE_END_LINE_597 = 597;
	f_scope_roots_2142_line_597.push(p_node_2231_line_597);
    int PROBE_START_LINE_598 = 598;
	Deque<ControlFlowGraph<com.google.javascript.rhino.Node>> f_cfgs_2143_line_598 = cfgs;
	int PROBE_END_LINE_598 = 598;
	f_cfgs_2143_line_598.push(null);
    int PROBE_START_LINE_599 = 601;
	com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_2183_line_599 = scopeCallback;
	boolean node_traversal_1_expr116_line_599 = f_scope_callback_2183_line_599 != null;
	int PROBE_END_LINE_599 = 601;
	if (node_traversal_1_expr116_line_599) {
      int PROBE_START_LINE_600 = 600;
		com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_2183_line_600 = scopeCallback;
		int PROBE_END_LINE_600 = 600;
	f_scope_callback_2183_line_600.enterScope(this);
    }
  }

  /** Creates a new scope (e.g. when entering a function). */
  private void pushScope(Scope s) {
    int PROBE_START_LINE_606 = 606;
	com.google.javascript.rhino.Node f_cur_node_2192_line_606 = curNode;
	boolean node_traversal_1_expr120_line_606 = f_cur_node_2192_line_606 != null;
	int PROBE_END_LINE_606 = 606;
	Preconditions.checkState(node_traversal_1_expr120_line_606);
    int PROBE_START_LINE_607 = 607;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_2184_line_607 = compiler;
	com.google.javascript.jscomp.Scope p_s_2232_line_607 = s;
	com.google.javascript.rhino.Node node_traversal_1_expr122_line_607 = p_s_2232_line_607.getRootNode();
	int PROBE_END_LINE_607 = 607;
	f_compiler_2184_line_607.setScope(node_traversal_1_expr122_line_607);
    int PROBE_START_LINE_608 = 608;
	Deque<com.google.javascript.jscomp.Scope> f_scopes_2141_line_608 = scopes;
	com.google.javascript.jscomp.Scope p_s_2232_line_608 = s;
	int PROBE_END_LINE_608 = 608;
	f_scopes_2141_line_608.push(p_s_2232_line_608);
    int PROBE_START_LINE_609 = 609;
	Deque<ControlFlowGraph<com.google.javascript.rhino.Node>> f_cfgs_2143_line_609 = cfgs;
	int PROBE_END_LINE_609 = 609;
	f_cfgs_2143_line_609.push(null);
    int PROBE_START_LINE_610 = 612;
	com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_2183_line_610 = scopeCallback;
	boolean node_traversal_1_expr125_line_610 = f_scope_callback_2183_line_610 != null;
	int PROBE_END_LINE_610 = 612;
	if (node_traversal_1_expr125_line_610) {
      int PROBE_START_LINE_611 = 611;
		com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_2183_line_611 = scopeCallback;
		int PROBE_END_LINE_611 = 611;
	f_scope_callback_2183_line_611.enterScope(this);
    }
  }

  /** Pops back to the previous scope (e.g. when leaving a function). */
  private void popScope() {
    int PROBE_START_LINE_617 = 619;
	com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_2183_line_617 = scopeCallback;
	boolean node_traversal_1_expr128_line_617 = f_scope_callback_2183_line_617 != null;
	int PROBE_END_LINE_617 = 619;
	if (node_traversal_1_expr128_line_617) {
      int PROBE_START_LINE_618 = 618;
		com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_2183_line_618 = scopeCallback;
		int PROBE_END_LINE_618 = 618;
	f_scope_callback_2183_line_618.exitScope(this);
    }
    int PROBE_START_LINE_620 = 624;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_2142_line_620 = scopeRoots;
	boolean node_traversal_1_expr131_line_620 = f_scope_roots_2142_line_620.isEmpty();
	int PROBE_END_LINE_620 = 624;
	if (node_traversal_1_expr131_line_620) {
      int PROBE_START_LINE_621 = 621;
		Deque<com.google.javascript.jscomp.Scope> f_scopes_2141_line_621 = scopes;
		int PROBE_END_LINE_621 = 621;
	f_scopes_2141_line_621.pop();
    } else {
      int PROBE_START_LINE_623 = 623;
		Deque<com.google.javascript.rhino.Node> f_scope_roots_2142_line_623 = scopeRoots;
		int PROBE_END_LINE_623 = 623;
	f_scope_roots_2142_line_623.pop();
    }
    int PROBE_START_LINE_625 = 625;
	Deque<ControlFlowGraph<com.google.javascript.rhino.Node>> f_cfgs_2143_line_625 = cfgs;
	int PROBE_END_LINE_625 = 625;
	f_cfgs_2143_line_625.pop();
    int PROBE_START_LINE_626 = 628;
	boolean node_traversal_1_expr135_line_626 = hasScope();
	int PROBE_END_LINE_626 = 628;
	if (node_traversal_1_expr135_line_626) {
      int PROBE_START_LINE_627 = 627;
		com.google.javascript.jscomp.AbstractCompiler f_compiler_2184_line_627 = compiler;
		com.google.javascript.rhino.Node node_traversal_1_expr137_line_627 = getScopeRoot();
		int PROBE_END_LINE_627 = 627;
	f_compiler_2184_line_627.setScope(node_traversal_1_expr137_line_627);
    }
  }

  /** Gets the current scope. */
  public Scope getScope() {
    int PROBE_START_LINE_633 = 633;
	Deque<com.google.javascript.jscomp.Scope> f_scopes_2141_line_633 = scopes;
	boolean node_traversal_1_expr139_line_633 = f_scopes_2141_line_633.isEmpty();
	com.google.javascript.jscomp.Scope node_traversal_1_expr140_line_633 = null;
	if (!node_traversal_1_expr139_line_633) {
		Deque<com.google.javascript.jscomp.Scope> f_scopes_2141_line_633_v1 = scopes;
		node_traversal_1_expr140_line_633 = f_scopes_2141_line_633_v1.peek();
	}
	Scope node_traversal_1_expr138_line_633 = node_traversal_1_expr139_line_633
			? null
			: node_traversal_1_expr140_line_633;
	int PROBE_END_LINE_633 = 633;
	Scope scope = node_traversal_1_expr138_line_633;
    int PROBE_START_LINE_634 = 636;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_2142_line_634 = scopeRoots;
	boolean node_traversal_1_expr141_line_634 = f_scope_roots_2142_line_634.isEmpty();
	int PROBE_END_LINE_634 = 636;
	if (node_traversal_1_expr141_line_634) {
      int PROBE_START_LINE_635 = 635;
		com.google.javascript.jscomp.Scope v_scope_2233_line_635 = scope;
		int PROBE_END_LINE_635 = 635;
	return v_scope_2233_line_635;
    }

    int PROBE_START_LINE_638 = 638;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_2142_line_638 = scopeRoots;
	Iterator<Node> node_traversal_1_expr142_line_638 = f_scope_roots_2142_line_638.descendingIterator();
	int PROBE_END_LINE_638 = 638;
	Iterator<Node> it = node_traversal_1_expr142_line_638;
    while (true) {
      int PROBE_START_LINE_639 = 639;
		Iterator<com.google.javascript.rhino.Node> v_it_2234_line_639 = it;
		boolean node_traversal_1_expr143_line_639 = v_it_2234_line_639.hasNext();
		if (!(node_traversal_1_expr143_line_639)) {
			break;
		}
		int PROBE_END_LINE_639 = 639;
		int PROBE_START_LINE_640 = 640;
		com.google.javascript.jscomp.ScopeCreator f_scope_creator_2187_line_640 = scopeCreator;
		Iterator<com.google.javascript.rhino.Node> v_it_2234_line_640 = it;
		com.google.javascript.rhino.Node node_traversal_1_expr146_line_640 = v_it_2234_line_640.next();
		com.google.javascript.jscomp.Scope v_scope_2233_line_640 = scope;
		com.google.javascript.jscomp.Scope node_traversal_1_expr145_line_640 = f_scope_creator_2187_line_640
				.createScope(node_traversal_1_expr146_line_640, v_scope_2233_line_640);
		int PROBE_END_LINE_640 = 640;
	scope = node_traversal_1_expr145_line_640;
      int PROBE_START_LINE_641 = 641;
	Deque<com.google.javascript.jscomp.Scope> f_scopes_2141_line_641 = scopes;
	com.google.javascript.jscomp.Scope v_scope_2233_line_641 = scope;
	int PROBE_END_LINE_641 = 641;
	f_scopes_2141_line_641.push(v_scope_2233_line_641);
    }
    int PROBE_START_LINE_643 = 643;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_2142_line_643 = scopeRoots;
	int PROBE_END_LINE_643 = 643;
	f_scope_roots_2142_line_643.clear();
    int PROBE_START_LINE_645 = 645;
	com.google.javascript.jscomp.Scope v_scope_2233_line_645 = scope;
	int PROBE_END_LINE_645 = 645;
	// No need to call compiler.setScope; the top scopeRoot is now the top scope
    return v_scope_2233_line_645;
  }

  /** Gets the control flow graph for the current JS scope. */
  public ControlFlowGraph<Node> getControlFlowGraph() {
    if (cfgs.peek() == null) {
      ControlFlowAnalysis cfa = new ControlFlowAnalysis(compiler, false, true);
      cfa.process(null, getScopeRoot());
      cfgs.pop();
      cfgs.push(cfa.getCfg());
    }
    return cfgs.peek();
  }

  /** Returns the current scope's root. */
  public Node getScopeRoot() {
    int PROBE_START_LINE_661 = 665;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_2142_line_661 = scopeRoots;
	boolean node_traversal_1_expr149_line_661 = f_scope_roots_2142_line_661.isEmpty();
	int PROBE_END_LINE_661 = 665;
	if (node_traversal_1_expr149_line_661) {
      int PROBE_START_LINE_662 = 662;
		Deque<com.google.javascript.jscomp.Scope> f_scopes_2141_line_662 = scopes;
		com.google.javascript.jscomp.Scope node_traversal_1_expr151_line_662 = f_scopes_2141_line_662.peek();
		com.google.javascript.rhino.Node node_traversal_1_expr150_line_662 = node_traversal_1_expr151_line_662
				.getRootNode();
		int PROBE_END_LINE_662 = 662;
	return node_traversal_1_expr150_line_662;
    } else {
      int PROBE_START_LINE_664 = 664;
		Deque<com.google.javascript.rhino.Node> f_scope_roots_2142_line_664 = scopeRoots;
		com.google.javascript.rhino.Node node_traversal_1_expr152_line_664 = f_scope_roots_2142_line_664.peek();
		int PROBE_END_LINE_664 = 664;
	return node_traversal_1_expr152_line_664;
    }
  }

  /**
   * Determines whether the traversal is currently in the global scope.
   */
  boolean inGlobalScope() {
    int PROBE_START_LINE_672 = 672;
	int node_traversal_1_expr154_line_672 = getScopeDepth();
	boolean node_traversal_1_expr153_line_672 = node_traversal_1_expr154_line_672 <= 1;
	int PROBE_END_LINE_672 = 672;
	return node_traversal_1_expr153_line_672;
  }

  int getScopeDepth() {
    int PROBE_START_LINE_676 = 676;
	Deque<com.google.javascript.jscomp.Scope> f_scopes_2141_line_676 = scopes;
	int node_traversal_1_expr156_line_676 = f_scopes_2141_line_676.size();
	Deque<com.google.javascript.rhino.Node> f_scope_roots_2142_line_676 = scopeRoots;
	int node_traversal_1_expr157_line_676 = f_scope_roots_2142_line_676.size();
	int node_traversal_1_expr155_line_676 = node_traversal_1_expr156_line_676 + node_traversal_1_expr157_line_676;
	int PROBE_END_LINE_676 = 676;
	return node_traversal_1_expr155_line_676;
  }

  public boolean hasScope() {
    int PROBE_START_LINE_680 = 680;
	Deque<com.google.javascript.jscomp.Scope> f_scopes_2141_line_680 = scopes;
	boolean node_traversal_1_expr161_line_680 = f_scopes_2141_line_680.isEmpty();
	boolean node_traversal_1_expr162_line_680 = true;
	if (node_traversal_1_expr161_line_680) {
		Deque<com.google.javascript.rhino.Node> f_scope_roots_2142_line_680 = scopeRoots;
		node_traversal_1_expr162_line_680 = f_scope_roots_2142_line_680.isEmpty();
	}
	boolean node_traversal_1_expr160_line_680 = node_traversal_1_expr161_line_680 && node_traversal_1_expr162_line_680;
	boolean node_traversal_1_expr159_line_680 = (node_traversal_1_expr160_line_680);
	boolean node_traversal_1_expr158_line_680 = !node_traversal_1_expr159_line_680;
	int PROBE_END_LINE_680 = 680;
	return node_traversal_1_expr158_line_680;
  }

  /** Reports a diagnostic (error or warning) */
  public void report(Node n, DiagnosticType diagnosticType,
      String... arguments) {
    JSError error = JSError.make(
        getBestSourceFileName(n), n, diagnosticType, arguments);
    compiler.report(error);
  }

  private static String getSourceName(Node n) {
    int PROBE_START_LINE_692 = 692;
	com.google.javascript.rhino.Node p_n_2238_line_692 = n;
	String node_traversal_1_expr163_line_692 = p_n_2238_line_692.getSourceFileName();
	int PROBE_END_LINE_692 = 692;
	String name = node_traversal_1_expr163_line_692;
    int PROBE_START_LINE_693 = 693;
	String v_name_2239_line_693 = name;
	boolean node_traversal_1_expr165_line_693 = v_name_2239_line_693 == null;
	String v_name_2239_line_693_v1 = null;
	if (!node_traversal_1_expr165_line_693) {
		v_name_2239_line_693_v1 = name;
	}
	String node_traversal_1_expr164_line_693 = node_traversal_1_expr165_line_693 ? "" : v_name_2239_line_693_v1;
	int PROBE_END_LINE_693 = 693;
	return node_traversal_1_expr164_line_693;
  }

  InputId getInputId() {
    int PROBE_START_LINE_697 = 697;
	com.google.javascript.rhino.InputId f_input_id_2185_line_697 = inputId;
	int PROBE_END_LINE_697 = 697;
	return f_input_id_2185_line_697;
  }

  /**
   * Creates a JSError during NodeTraversal.
   *
   * @param n Determines the line and char position within the source file name
   * @param type The DiagnosticType
   * @param arguments Arguments to be incorporated into the message
   */
  public JSError makeError(Node n, CheckLevel level, DiagnosticType type,
      String... arguments) {
    return JSError.make(getBestSourceFileName(n), n, level, type, arguments);
  }

  /**
   * Creates a JSError during NodeTraversal.
   *
   * @param n Determines the line and char position within the source file name
   * @param type The DiagnosticType
   * @param arguments Arguments to be incorporated into the message
   */
  public JSError makeError(Node n, DiagnosticType type, String... arguments) {
    return JSError.make(getBestSourceFileName(n), n, type, arguments);
  }

  private String getBestSourceFileName(Node n) {
    return n == null ? sourceName : n.getSourceFileName();
  }
}
