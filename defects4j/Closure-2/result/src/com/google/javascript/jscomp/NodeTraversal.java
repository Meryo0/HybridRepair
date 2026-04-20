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
  // Package protected for tests
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

  /**
   * Callback
   */
  public interface Callback {
    /**
     * <p>Visits a node in pre order (before visiting its children) and decides
     * whether this node's children should be traversed. If children are
     * traversed, they will be visited by
     * {@link #visit(NodeTraversal, Node, Node)} in post order.</p>
     * <p>Implementations can have side effects (e.g. modifying the parse
     * tree).</p>
     * @return whether the children of this node should be visited
     */
    boolean shouldTraverse(NodeTraversal nodeTraversal, Node n, Node parent);

    /**
     * <p>Visits a node in post order (after its children have been visited).
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
   * Abstract callback to visit all nodes in post order.
   */
  public abstract static class AbstractPostOrderCallback implements Callback {
    @Override
    public final boolean shouldTraverse(NodeTraversal nodeTraversal, Node n,
        Node parent) {
      return true;
    }
  }

  /**
   * Abstract scoped callback to visit all nodes in post order.
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
      int PROBE_START_LINE_179 = 180;
			com.google.javascript.rhino.Node p_parent_1764_line_179 = parent;
			boolean node_traversal_1_expr7_line_179 = p_parent_1764_line_179 == null;
			boolean node_traversal_1_expr8_line_179 = false;
			if (!node_traversal_1_expr7_line_179) {
				com.google.javascript.rhino.Node p_parent_1764_line_179_v1 = parent;
				node_traversal_1_expr8_line_179 = NodeUtil.isControlStructure(p_parent_1764_line_179_v1);
			}
			boolean node_traversal_1_expr6_line_179 = node_traversal_1_expr7_line_179
					|| node_traversal_1_expr8_line_179;
			boolean node_traversal_1_expr5_line_179 = node_traversal_1_expr6_line_179
					|| NodeUtil.isStatementBlock(parent);
			int PROBE_END_LINE_179 = 180;
	return node_traversal_1_expr5_line_179;
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
    int PROBE_START_LINE_231 = 231;
		com.google.javascript.jscomp.NodeTraversal.Callback p_cb_1774_line_231 = cb;
		int PROBE_END_LINE_231 = 231;
	this.callback = p_cb_1774_line_231;
    int PROBE_START_LINE_232 = 234;
	com.google.javascript.jscomp.NodeTraversal.Callback p_cb_1774_line_232 = cb;
	boolean node_traversal_1_expr14_line_232 = p_cb_1774_line_232 instanceof ScopedCallback;
	int PROBE_END_LINE_232 = 234;
	if (node_traversal_1_expr14_line_232) {
      int PROBE_START_LINE_233 = 233;
		com.google.javascript.jscomp.NodeTraversal.Callback p_cb_1774_line_233 = cb;
		int PROBE_END_LINE_233 = 233;
	this.scopeCallback = (ScopedCallback) p_cb_1774_line_233;
    }
    int PROBE_START_LINE_235 = 235;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_1773_line_235 = compiler;
	int PROBE_END_LINE_235 = 235;
	this.compiler = p_compiler_1773_line_235;
    this.inputId = null;
    this.sourceName = "";
    int PROBE_START_LINE_238 = 238;
	com.google.javascript.jscomp.ScopeCreator p_scope_creator_1775_line_238 = scopeCreator;
	int PROBE_END_LINE_238 = 238;
	this.scopeCreator = p_scope_creator_1775_line_238;
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
      int PROBE_START_LINE_273 = 273;
		com.google.javascript.rhino.Node p_root_1785_line_273 = root;
		com.google.javascript.rhino.InputId node_traversal_1_expr32_line_273 = NodeUtil
				.getInputId(p_root_1785_line_273);
		int PROBE_END_LINE_273 = 273;
	inputId = node_traversal_1_expr32_line_273;
      sourceName = "";
      int PROBE_START_LINE_275 = 275;
	com.google.javascript.rhino.Node p_root_1785_line_275 = root;
	int PROBE_END_LINE_275 = 275;
	curNode = p_root_1785_line_275;
      int PROBE_START_LINE_276 = 276;
	com.google.javascript.rhino.Node p_root_1785_line_276 = root;
	int PROBE_END_LINE_276 = 276;
	pushScope(p_root_1785_line_276);
      int PROBE_START_LINE_277 = 277;
	com.google.javascript.rhino.Node p_root_1785_line_277 = root;
	int PROBE_END_LINE_277 = 277;
	traverseBranch(p_root_1785_line_277, null);
      popScope();
    } catch (Exception unexpectedException) {
      throwUnexpectedException(unexpectedException);
    }
  }

  public void traverseRoots(Node ... roots) {
    traverseRoots(Lists.newArrayList(roots));
  }

  public void traverseRoots(List<Node> roots) {
    int PROBE_START_LINE_289 = 291;
	List<com.google.javascript.rhino.Node> p_roots_1788_line_289 = roots;
	boolean node_traversal_1_expr38_line_289 = p_roots_1788_line_289.isEmpty();
	int PROBE_END_LINE_289 = 291;
	if (node_traversal_1_expr38_line_289) {
      return;
    }

    try {
      int PROBE_START_LINE_294 = 294;
		List<com.google.javascript.rhino.Node> p_roots_1788_line_294 = roots;
		com.google.javascript.rhino.Node node_traversal_1_expr40_line_294 = p_roots_1788_line_294.get(0);
		Node node_traversal_1_expr39_line_294 = node_traversal_1_expr40_line_294.getParent();
		int PROBE_END_LINE_294 = 294;
	Node scopeRoot = node_traversal_1_expr39_line_294;
      int PROBE_START_LINE_295 = 295;
	com.google.javascript.rhino.Node v_scope_root_1789_line_295 = scopeRoot;
	boolean node_traversal_1_expr42_line_295 = v_scope_root_1789_line_295 != null;
	int PROBE_END_LINE_295 = 295;
	Preconditions.checkState(node_traversal_1_expr42_line_295);

      int PROBE_START_LINE_297 = 297;
	com.google.javascript.rhino.Node v_scope_root_1789_line_297 = scopeRoot;
	com.google.javascript.rhino.InputId node_traversal_1_expr44_line_297 = NodeUtil
			.getInputId(v_scope_root_1789_line_297);
	int PROBE_END_LINE_297 = 297;
	inputId = node_traversal_1_expr44_line_297;
      sourceName = "";
      int PROBE_START_LINE_299 = 299;
	com.google.javascript.rhino.Node v_scope_root_1789_line_299 = scopeRoot;
	int PROBE_END_LINE_299 = 299;
	curNode = v_scope_root_1789_line_299;
      int PROBE_START_LINE_300 = 300;
	com.google.javascript.rhino.Node v_scope_root_1789_line_300 = scopeRoot;
	int PROBE_END_LINE_300 = 300;
	pushScope(v_scope_root_1789_line_300);

      int PROBE_START_LINE_302 = 305;
	List<com.google.javascript.rhino.Node> p_roots_1788_line_302 = roots;
	int PROBE_END_LINE_302 = 305;
	for (Node root : p_roots_1788_line_302) {
        int PROBE_START_LINE_303 = 303;
		com.google.javascript.rhino.Node v_root_1790_line_303 = root;
		com.google.javascript.rhino.Node node_traversal_1_expr50_line_303 = v_root_1790_line_303.getParent();
		com.google.javascript.rhino.Node v_scope_root_1789_line_303 = scopeRoot;
		boolean node_traversal_1_expr49_line_303 = node_traversal_1_expr50_line_303 == v_scope_root_1789_line_303;
		int PROBE_END_LINE_303 = 303;
		Preconditions.checkState(node_traversal_1_expr49_line_303);
        int PROBE_START_LINE_304 = 304;
		com.google.javascript.rhino.Node v_root_1790_line_304 = root;
		com.google.javascript.rhino.Node v_scope_root_1789_line_304 = scopeRoot;
		int PROBE_END_LINE_304 = 304;
		traverseBranch(v_root_1790_line_304, v_scope_root_1789_line_304);
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
    int PROBE_START_LINE_337 = 337;
	com.google.javascript.jscomp.Scope p_s_1793_line_337 = s;
	boolean node_traversal_1_expr54_line_337 = p_s_1793_line_337.isGlobal();
	int PROBE_END_LINE_337 = 337;
	Preconditions.checkState(node_traversal_1_expr54_line_337);

    inputId = null;
    sourceName = "";
    int PROBE_START_LINE_341 = 341;
	com.google.javascript.rhino.Node p_root_1792_line_341 = root;
	int PROBE_END_LINE_341 = 341;
	curNode = p_root_1792_line_341;
    int PROBE_START_LINE_342 = 342;
	com.google.javascript.jscomp.Scope p_s_1793_line_342 = s;
	int PROBE_END_LINE_342 = 342;
	pushScope(p_s_1793_line_342);
    int PROBE_START_LINE_343 = 343;
	com.google.javascript.rhino.Node p_root_1792_line_343 = root;
	int PROBE_END_LINE_343 = 343;
	traverseBranch(p_root_1792_line_343, null);
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

  /**
   * Gets the compiler.
   */
  public Compiler getCompiler() {
    // TODO(nicksantos): Remove this type cast. This is just temporary
    // while refactoring.
    return (Compiler) compiler;
  }

  /**
   * Gets the current line number, or zero if it cannot be determined. The line
   * number is retrieved lazily as a running time optimization.
   */
  public int getLineNumber() {
    Node cur = curNode;
    while (cur != null) {
      int line = cur.getLineno();
      if (line >=0) {
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
    int PROBE_START_LINE_434 = 434;
	com.google.javascript.jscomp.AbstractCompiler f_compiler_1778_line_434 = compiler;
	com.google.javascript.rhino.InputId f_input_id_1779_line_434 = inputId;
	com.google.javascript.jscomp.CompilerInput node_traversal_1_expr61_line_434 = f_compiler_1778_line_434
			.getInput(f_input_id_1779_line_434);
	int PROBE_END_LINE_434 = 434;
	return node_traversal_1_expr61_line_434;
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
    int PROBE_START_LINE_447 = 447;
	com.google.javascript.rhino.Node f_cur_node_1786_line_447 = curNode;
	int PROBE_END_LINE_447 = 447;
	return f_cur_node_1786_line_447;
  }

  /**
   * Traverses a node recursively.
   */
  public static void traverse(
      AbstractCompiler compiler, Node root, Callback cb) {
    int PROBE_START_LINE_455 = 455;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_1798_line_455 = compiler;
		com.google.javascript.jscomp.NodeTraversal.Callback p_cb_1800_line_455 = cb;
		int PROBE_END_LINE_455 = 455;
	NodeTraversal t = new NodeTraversal(p_compiler_1798_line_455, p_cb_1800_line_455);
    int PROBE_START_LINE_456 = 456;
	com.google.javascript.jscomp.NodeTraversal v_t_1801_line_456 = t;
	com.google.javascript.rhino.Node p_root_1799_line_456 = root;
	int PROBE_END_LINE_456 = 456;
	v_t_1801_line_456.traverse(p_root_1799_line_456);
  }

  /**
   * Traverses a list of node trees.
   */
  public static void traverseRoots(
      AbstractCompiler compiler, List<Node> roots, Callback cb) {
    int PROBE_START_LINE_464 = 464;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_1802_line_464 = compiler;
		com.google.javascript.jscomp.NodeTraversal.Callback p_cb_1804_line_464 = cb;
		int PROBE_END_LINE_464 = 464;
	NodeTraversal t = new NodeTraversal(p_compiler_1802_line_464, p_cb_1804_line_464);
    int PROBE_START_LINE_465 = 465;
	com.google.javascript.jscomp.NodeTraversal v_t_1805_line_465 = t;
	List<com.google.javascript.rhino.Node> p_roots_1803_line_465 = roots;
	int PROBE_END_LINE_465 = 465;
	v_t_1805_line_465.traverseRoots(p_roots_1803_line_465);
  }

  public static void traverseRoots(
      AbstractCompiler compiler, Callback cb, Node ... roots) {
    NodeTraversal t = new NodeTraversal(compiler, cb);
    t.traverseRoots(roots);
  }

  /**
   * Traverses a branch.
   */
  @SuppressWarnings("fallthrough")
  private void traverseBranch(Node n, Node parent) {
    int PROBE_START_LINE_479 = 479;
	com.google.javascript.rhino.Node p_n_1809_line_479 = n;
	int node_traversal_1_expr66_line_479 = p_n_1809_line_479.getType();
	int PROBE_END_LINE_479 = 479;
	int type = node_traversal_1_expr66_line_479;
    int PROBE_START_LINE_480 = 483;
	int v_type_1811_line_480 = type;
	int q_script_59_line_480 = Token.SCRIPT;
	boolean node_traversal_1_expr67_line_480 = v_type_1811_line_480 == q_script_59_line_480;
	int PROBE_END_LINE_480 = 483;
	if (node_traversal_1_expr67_line_480) {
      int PROBE_START_LINE_481 = 481;
		com.google.javascript.rhino.Node p_n_1809_line_481 = n;
		com.google.javascript.rhino.InputId node_traversal_1_expr69_line_481 = p_n_1809_line_481.getInputId();
		int PROBE_END_LINE_481 = 481;
	inputId = node_traversal_1_expr69_line_481;
      int PROBE_START_LINE_482 = 482;
	com.google.javascript.rhino.Node p_n_1809_line_482 = n;
	String node_traversal_1_expr71_line_482 = getSourceName(p_n_1809_line_482);
	int PROBE_END_LINE_482 = 482;
	sourceName = node_traversal_1_expr71_line_482;
    }

    int PROBE_START_LINE_485 = 485;
	com.google.javascript.rhino.Node p_n_1809_line_485 = n;
	int PROBE_END_LINE_485 = 485;
	curNode = p_n_1809_line_485;
    int PROBE_START_LINE_486 = 486;
	com.google.javascript.jscomp.NodeTraversal.Callback f_callback_1776_line_486 = callback;
	com.google.javascript.rhino.Node p_n_1809_line_486 = n;
	com.google.javascript.rhino.Node p_parent_1810_line_486 = parent;
	boolean node_traversal_1_expr74_line_486 = f_callback_1776_line_486.shouldTraverse(this, p_n_1809_line_486,
			p_parent_1810_line_486);
	boolean node_traversal_1_expr73_line_486 = !node_traversal_1_expr74_line_486;
	int PROBE_END_LINE_486 = 486;
	if (node_traversal_1_expr73_line_486) return;

    int PROBE_START_LINE_488 = 502;
	int v_type_1811_line_488 = type;
	int PROBE_END_LINE_488 = 502;
	switch (v_type_1811_line_488) {
      case Token.FUNCTION:
	int PROBE_START_LINE_490 = 490;
	com.google.javascript.rhino.Node p_n_1809_line_490 = n;
	com.google.javascript.rhino.Node p_parent_1810_line_490 = parent;
	int PROBE_END_LINE_490 = 490;
	traverseFunction(p_n_1809_line_490, p_parent_1810_line_490);
        break;

      default:
	int PROBE_START_LINE_493 = 493;
	boolean FOR_STMT_TOGGLE_LINE_494 = false;
	int PROBE_END_LINE_493 = 493;
	for (Node child = null; true; ) {
          int PROBE_START_LINE_497 = 497;
			if (!FOR_STMT_TOGGLE_LINE_494) {
				FOR_STMT_TOGGLE_LINE_494 = true;
				com.google.javascript.rhino.Node p_n_1809_line_494 = n;
				Node node_traversal_1_expr78_line_494 = p_n_1809_line_494.getFirstChild();
				child = node_traversal_1_expr78_line_494;
			} else {
				if (FOR_STMT_TOGGLE_LINE_494) {
				} else {
					FOR_STMT_TOGGLE_LINE_494 = true;
				}
			}
			com.google.javascript.rhino.Node v_child_1812_line_494 = child;
			boolean node_traversal_1_expr79_line_494 = v_child_1812_line_494 != null;
			if (!(node_traversal_1_expr79_line_494)) {
				break;
			}
			com.google.javascript.rhino.Node v_child_1812_line_497 = child;
			Node node_traversal_1_expr80_line_497 = v_child_1812_line_497.getNext();
			int PROBE_END_LINE_497 = 497;
		// child could be replaced, in which case our child node
          // would no longer point to the true next
          Node next = node_traversal_1_expr80_line_497;
          int PROBE_START_LINE_498 = 498;
		com.google.javascript.rhino.Node v_child_1812_line_498 = child;
		com.google.javascript.rhino.Node p_n_1809_line_498 = n;
		int PROBE_END_LINE_498 = 498;
		traverseBranch(v_child_1812_line_498, p_n_1809_line_498);
          int PROBE_START_LINE_499 = 499;
		com.google.javascript.rhino.Node v_next_1813_line_499 = next;
		int PROBE_END_LINE_499 = 499;
		child = v_next_1813_line_499;
        }
        break;
    }

    int PROBE_START_LINE_504 = 504;
	com.google.javascript.rhino.Node p_n_1809_line_504 = n;
	int PROBE_END_LINE_504 = 504;
	curNode = p_n_1809_line_504;
    int PROBE_START_LINE_505 = 505;
	com.google.javascript.jscomp.NodeTraversal.Callback f_callback_1776_line_505 = callback;
	com.google.javascript.rhino.Node p_n_1809_line_505 = n;
	com.google.javascript.rhino.Node p_parent_1810_line_505 = parent;
	int PROBE_END_LINE_505 = 505;
	f_callback_1776_line_505.visit(this, p_n_1809_line_505, p_parent_1810_line_505);
  }

  /**
   * Traverses a function.
   */
  private void traverseFunction(Node n, Node parent) {
    int PROBE_START_LINE_512 = 512;
	com.google.javascript.rhino.Node p_n_1814_line_512 = n;
	int node_traversal_1_expr88_line_512 = p_n_1814_line_512.getChildCount();
	boolean node_traversal_1_expr87_line_512 = node_traversal_1_expr88_line_512 == 3;
	int PROBE_END_LINE_512 = 512;
	Preconditions.checkState(node_traversal_1_expr87_line_512);
    int PROBE_START_LINE_513 = 513;
	com.google.javascript.rhino.Node p_n_1814_line_513 = n;
	boolean node_traversal_1_expr90_line_513 = p_n_1814_line_513.isFunction();
	int PROBE_END_LINE_513 = 513;
	Preconditions.checkState(node_traversal_1_expr90_line_513);

    int PROBE_START_LINE_515 = 515;
	com.google.javascript.rhino.Node p_n_1814_line_515 = n;
	Node node_traversal_1_expr91_line_515 = p_n_1814_line_515.getFirstChild();
	int PROBE_END_LINE_515 = 515;
	final Node fnName = node_traversal_1_expr91_line_515;

    int PROBE_START_LINE_517 = 518;
	com.google.javascript.rhino.Node p_parent_1815_line_517 = parent;
	boolean node_traversal_1_expr94_line_517 = p_parent_1815_line_517 != null;
	boolean node_traversal_1_expr93_line_517 = (node_traversal_1_expr94_line_517);
	boolean node_traversal_1_expr92_line_517 = node_traversal_1_expr93_line_517 && NodeUtil.isFunctionExpression(n);
	int PROBE_END_LINE_517 = 518;
	boolean isFunctionExpression = node_traversal_1_expr92_line_517;

    int PROBE_START_LINE_520 = 523;
	boolean v_is_function_expression_1817_line_520 = isFunctionExpression;
	boolean node_traversal_1_expr95_line_520 = !v_is_function_expression_1817_line_520;
	int PROBE_END_LINE_520 = 523;
	if (node_traversal_1_expr95_line_520) {
      int PROBE_START_LINE_522 = 522;
		com.google.javascript.rhino.Node v_fn_name_1816_line_522 = fnName;
		com.google.javascript.rhino.Node p_n_1814_line_522 = n;
		int PROBE_END_LINE_522 = 522;
	// Functions declarations are in the scope containing the declaration.
      traverseBranch(v_fn_name_1816_line_522, p_n_1814_line_522);
    }

    int PROBE_START_LINE_525 = 525;
	com.google.javascript.rhino.Node p_n_1814_line_525 = n;
	int PROBE_END_LINE_525 = 525;
	curNode = p_n_1814_line_525;
    int PROBE_START_LINE_526 = 526;
	com.google.javascript.rhino.Node p_n_1814_line_526 = n;
	int PROBE_END_LINE_526 = 526;
	pushScope(p_n_1814_line_526);

    int PROBE_START_LINE_528 = 532;
	boolean v_is_function_expression_1817_line_528 = isFunctionExpression;
	int PROBE_END_LINE_528 = 532;
	if (v_is_function_expression_1817_line_528) {
      // Function expression names are only accessible within the function
      // scope.
      traverseBranch(fnName, n);
    }

    int PROBE_START_LINE_534 = 534;
	com.google.javascript.rhino.Node v_fn_name_1816_line_534 = fnName;
	Node node_traversal_1_expr99_line_534 = v_fn_name_1816_line_534.getNext();
	int PROBE_END_LINE_534 = 534;
	final Node args = node_traversal_1_expr99_line_534;
    int PROBE_START_LINE_535 = 535;
	com.google.javascript.rhino.Node v_args_1818_line_535 = args;
	Node node_traversal_1_expr100_line_535 = v_args_1818_line_535.getNext();
	int PROBE_END_LINE_535 = 535;
	final Node body = node_traversal_1_expr100_line_535;

    int PROBE_START_LINE_538 = 538;
	com.google.javascript.rhino.Node v_args_1818_line_538 = args;
	com.google.javascript.rhino.Node p_n_1814_line_538 = n;
	int PROBE_END_LINE_538 = 538;
	// Args
    traverseBranch(v_args_1818_line_538, p_n_1814_line_538);

    int PROBE_START_LINE_541 = 542;
	com.google.javascript.rhino.Node v_body_1819_line_541 = body;
	com.google.javascript.rhino.Node node_traversal_1_expr105_line_541 = v_body_1819_line_541.getNext();
	boolean node_traversal_1_expr104_line_541 = node_traversal_1_expr105_line_541 == null;
	boolean node_traversal_1_expr103_line_541 = node_traversal_1_expr104_line_541 && body.isBlock();
	int PROBE_END_LINE_541 = 542;
	// Body
    Preconditions.checkState(node_traversal_1_expr103_line_541, body);
    int PROBE_START_LINE_543 = 543;
	com.google.javascript.rhino.Node v_body_1819_line_543 = body;
	com.google.javascript.rhino.Node p_n_1814_line_543 = n;
	int PROBE_END_LINE_543 = 543;
	traverseBranch(v_body_1819_line_543, p_n_1814_line_543);

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
    int PROBE_START_LINE_564 = 564;
	com.google.javascript.rhino.Node f_cur_node_1786_line_564 = curNode;
	boolean node_traversal_1_expr109_line_564 = f_cur_node_1786_line_564 != null;
	int PROBE_END_LINE_564 = 564;
	Preconditions.checkState(node_traversal_1_expr109_line_564);
    int PROBE_START_LINE_565 = 565;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_1741_line_565 = scopeRoots;
	com.google.javascript.rhino.Node p_node_1820_line_565 = node;
	int PROBE_END_LINE_565 = 565;
	f_scope_roots_1741_line_565.push(p_node_1820_line_565);
    int PROBE_START_LINE_566 = 566;
	Deque<ControlFlowGraph<com.google.javascript.rhino.Node>> f_cfgs_1742_line_566 = cfgs;
	int PROBE_END_LINE_566 = 566;
	f_cfgs_1742_line_566.push(null);
    int PROBE_START_LINE_567 = 569;
	com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_1777_line_567 = scopeCallback;
	boolean node_traversal_1_expr112_line_567 = f_scope_callback_1777_line_567 != null;
	int PROBE_END_LINE_567 = 569;
	if (node_traversal_1_expr112_line_567) {
      int PROBE_START_LINE_568 = 568;
		com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_1777_line_568 = scopeCallback;
		int PROBE_END_LINE_568 = 568;
	f_scope_callback_1777_line_568.enterScope(this);
    }
  }

  /** Creates a new scope (e.g. when entering a function). */
  private void pushScope(Scope s) {
    int PROBE_START_LINE_574 = 574;
	com.google.javascript.rhino.Node f_cur_node_1786_line_574 = curNode;
	boolean node_traversal_1_expr116_line_574 = f_cur_node_1786_line_574 != null;
	int PROBE_END_LINE_574 = 574;
	Preconditions.checkState(node_traversal_1_expr116_line_574);
    int PROBE_START_LINE_575 = 575;
	Deque<com.google.javascript.jscomp.Scope> f_scopes_1740_line_575 = scopes;
	com.google.javascript.jscomp.Scope p_s_1821_line_575 = s;
	int PROBE_END_LINE_575 = 575;
	f_scopes_1740_line_575.push(p_s_1821_line_575);
    int PROBE_START_LINE_576 = 576;
	Deque<ControlFlowGraph<com.google.javascript.rhino.Node>> f_cfgs_1742_line_576 = cfgs;
	int PROBE_END_LINE_576 = 576;
	f_cfgs_1742_line_576.push(null);
    int PROBE_START_LINE_577 = 579;
	com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_1777_line_577 = scopeCallback;
	boolean node_traversal_1_expr119_line_577 = f_scope_callback_1777_line_577 != null;
	int PROBE_END_LINE_577 = 579;
	if (node_traversal_1_expr119_line_577) {
      int PROBE_START_LINE_578 = 578;
		com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_1777_line_578 = scopeCallback;
		int PROBE_END_LINE_578 = 578;
	f_scope_callback_1777_line_578.enterScope(this);
    }
  }

  /** Pops back to the previous scope (e.g. when leaving a function). */
  private void popScope() {
    int PROBE_START_LINE_584 = 586;
	com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_1777_line_584 = scopeCallback;
	boolean node_traversal_1_expr122_line_584 = f_scope_callback_1777_line_584 != null;
	int PROBE_END_LINE_584 = 586;
	if (node_traversal_1_expr122_line_584) {
      int PROBE_START_LINE_585 = 585;
		com.google.javascript.jscomp.NodeTraversal.ScopedCallback f_scope_callback_1777_line_585 = scopeCallback;
		int PROBE_END_LINE_585 = 585;
	f_scope_callback_1777_line_585.exitScope(this);
    }
    int PROBE_START_LINE_587 = 591;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_1741_line_587 = scopeRoots;
	boolean node_traversal_1_expr125_line_587 = f_scope_roots_1741_line_587.isEmpty();
	int PROBE_END_LINE_587 = 591;
	if (node_traversal_1_expr125_line_587) {
      int PROBE_START_LINE_588 = 588;
		Deque<com.google.javascript.jscomp.Scope> f_scopes_1740_line_588 = scopes;
		int PROBE_END_LINE_588 = 588;
	f_scopes_1740_line_588.pop();
    } else {
      int PROBE_START_LINE_590 = 590;
		Deque<com.google.javascript.rhino.Node> f_scope_roots_1741_line_590 = scopeRoots;
		int PROBE_END_LINE_590 = 590;
	f_scope_roots_1741_line_590.pop();
    }
    int PROBE_START_LINE_592 = 592;
	Deque<ControlFlowGraph<com.google.javascript.rhino.Node>> f_cfgs_1742_line_592 = cfgs;
	int PROBE_END_LINE_592 = 592;
	f_cfgs_1742_line_592.pop();
  }

  /** Gets the current scope. */
  public Scope getScope() {
    int PROBE_START_LINE_597 = 597;
	Deque<com.google.javascript.jscomp.Scope> f_scopes_1740_line_597 = scopes;
	boolean node_traversal_1_expr130_line_597 = f_scopes_1740_line_597.isEmpty();
	com.google.javascript.jscomp.Scope node_traversal_1_expr131_line_597 = null;
	if (!node_traversal_1_expr130_line_597) {
		Deque<com.google.javascript.jscomp.Scope> f_scopes_1740_line_597_v1 = scopes;
		node_traversal_1_expr131_line_597 = f_scopes_1740_line_597_v1.peek();
	}
	Scope node_traversal_1_expr129_line_597 = node_traversal_1_expr130_line_597
			? null
			: node_traversal_1_expr131_line_597;
	int PROBE_END_LINE_597 = 597;
	Scope scope = node_traversal_1_expr129_line_597;
    int PROBE_START_LINE_598 = 600;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_1741_line_598 = scopeRoots;
	boolean node_traversal_1_expr132_line_598 = f_scope_roots_1741_line_598.isEmpty();
	int PROBE_END_LINE_598 = 600;
	if (node_traversal_1_expr132_line_598) {
      int PROBE_START_LINE_599 = 599;
		com.google.javascript.jscomp.Scope v_scope_1822_line_599 = scope;
		int PROBE_END_LINE_599 = 599;
	return v_scope_1822_line_599;
    }

    int PROBE_START_LINE_602 = 602;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_1741_line_602 = scopeRoots;
	Iterator<Node> node_traversal_1_expr133_line_602 = f_scope_roots_1741_line_602.descendingIterator();
	int PROBE_END_LINE_602 = 602;
	Iterator<Node> it = node_traversal_1_expr133_line_602;
    while (true) {
      int PROBE_START_LINE_603 = 603;
		Iterator<com.google.javascript.rhino.Node> v_it_1823_line_603 = it;
		boolean node_traversal_1_expr134_line_603 = v_it_1823_line_603.hasNext();
		if (!(node_traversal_1_expr134_line_603)) {
			break;
		}
		int PROBE_END_LINE_603 = 603;
		int PROBE_START_LINE_604 = 604;
		com.google.javascript.jscomp.ScopeCreator f_scope_creator_1781_line_604 = scopeCreator;
		Iterator<com.google.javascript.rhino.Node> v_it_1823_line_604 = it;
		com.google.javascript.rhino.Node node_traversal_1_expr137_line_604 = v_it_1823_line_604.next();
		com.google.javascript.jscomp.Scope v_scope_1822_line_604 = scope;
		com.google.javascript.jscomp.Scope node_traversal_1_expr136_line_604 = f_scope_creator_1781_line_604
				.createScope(node_traversal_1_expr137_line_604, v_scope_1822_line_604);
		int PROBE_END_LINE_604 = 604;
	scope = node_traversal_1_expr136_line_604;
      int PROBE_START_LINE_605 = 605;
	Deque<com.google.javascript.jscomp.Scope> f_scopes_1740_line_605 = scopes;
	com.google.javascript.jscomp.Scope v_scope_1822_line_605 = scope;
	int PROBE_END_LINE_605 = 605;
	f_scopes_1740_line_605.push(v_scope_1822_line_605);
    }
    int PROBE_START_LINE_607 = 607;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_1741_line_607 = scopeRoots;
	int PROBE_END_LINE_607 = 607;
	f_scope_roots_1741_line_607.clear();

    int PROBE_START_LINE_609 = 609;
	com.google.javascript.jscomp.Scope v_scope_1822_line_609 = scope;
	int PROBE_END_LINE_609 = 609;
	return v_scope_1822_line_609;
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
    int PROBE_START_LINE_625 = 629;
	Deque<com.google.javascript.rhino.Node> f_scope_roots_1741_line_625 = scopeRoots;
	boolean node_traversal_1_expr140_line_625 = f_scope_roots_1741_line_625.isEmpty();
	int PROBE_END_LINE_625 = 629;
	if (node_traversal_1_expr140_line_625) {
      return scopes.peek().getRootNode();
    } else {
      int PROBE_START_LINE_628 = 628;
		Deque<com.google.javascript.rhino.Node> f_scope_roots_1741_line_628 = scopeRoots;
		com.google.javascript.rhino.Node node_traversal_1_expr141_line_628 = f_scope_roots_1741_line_628.peek();
		int PROBE_END_LINE_628 = 628;
	return node_traversal_1_expr141_line_628;
    }
  }

  /**
   * Determines whether the traversal is currently in the global scope.
   */
  boolean inGlobalScope() {
    int PROBE_START_LINE_636 = 636;
	int node_traversal_1_expr143_line_636 = getScopeDepth();
	boolean node_traversal_1_expr142_line_636 = node_traversal_1_expr143_line_636 <= 1;
	int PROBE_END_LINE_636 = 636;
	return node_traversal_1_expr142_line_636;
  }

  int getScopeDepth() {
    int PROBE_START_LINE_640 = 640;
	Deque<com.google.javascript.jscomp.Scope> f_scopes_1740_line_640 = scopes;
	int node_traversal_1_expr145_line_640 = f_scopes_1740_line_640.size();
	Deque<com.google.javascript.rhino.Node> f_scope_roots_1741_line_640 = scopeRoots;
	int node_traversal_1_expr146_line_640 = f_scope_roots_1741_line_640.size();
	int node_traversal_1_expr144_line_640 = node_traversal_1_expr145_line_640 + node_traversal_1_expr146_line_640;
	int PROBE_END_LINE_640 = 640;
	return node_traversal_1_expr144_line_640;
  }

  public boolean hasScope() {
    return !(scopes.isEmpty() && scopeRoots.isEmpty());
  }

  /** Reports a diagnostic (error or warning) */
  public void report(Node n, DiagnosticType diagnosticType,
      String... arguments) {
    JSError error = JSError.make(getBestSourceFileName(n),
        n, diagnosticType, arguments);
    compiler.report(error);
  }

  private static String getSourceName(Node n) {
    int PROBE_START_LINE_656 = 656;
	com.google.javascript.rhino.Node p_n_1827_line_656 = n;
	String node_traversal_1_expr147_line_656 = p_n_1827_line_656.getSourceFileName();
	int PROBE_END_LINE_656 = 656;
	String name = node_traversal_1_expr147_line_656;
    int PROBE_START_LINE_657 = 657;
	String v_name_1828_line_657 = name;
	boolean node_traversal_1_expr149_line_657 = v_name_1828_line_657 == null;
	String v_name_1828_line_657_v1 = null;
	if (!node_traversal_1_expr149_line_657) {
		v_name_1828_line_657_v1 = name;
	}
	String node_traversal_1_expr148_line_657 = node_traversal_1_expr149_line_657 ? "" : v_name_1828_line_657_v1;
	int PROBE_END_LINE_657 = 657;
	return node_traversal_1_expr148_line_657;
  }

  InputId getInputId() {
    int PROBE_START_LINE_661 = 661;
	com.google.javascript.rhino.InputId f_input_id_1779_line_661 = inputId;
	int PROBE_END_LINE_661 = 661;
	return f_input_id_1779_line_661;
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
