package org.jsoup.nodes;

import org.jsoup.SerializationException;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.parser.Parser;
import org.jsoup.select.NodeFilter;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;

import java.io.IOException;
import java.util.*;
import java.util.List;
import java.util.LinkedList;

/**
 The base, abstract Node model. Elements, Documents, Comments etc are all Node instances.

 @author Jonathan Hedley, jonathan@hedley.net */
public abstract class Node implements Cloneable {
    static final String EmptyString = "";
    Node parentNode;
    int siblingIndex;

    /**
     * Default constructor. Doesn't setup base uri, children, or attributes; use with caution.
     */
    protected Node() {
    }

    /**
     Get the node name of this node. Use for debugging purposes and not logic switching (for that, use instanceof).
     @return node name
     */
    public abstract String nodeName();

    /**
     * Check if this Node has an actual Attributes object.
     */
    protected abstract boolean hasAttributes();

    public boolean hasParent() {
        return parentNode != null;
    }

    /**
     * Get an attribute's value by its key. <b>Case insensitive</b>
     * <p>
     * To get an absolute URL from an attribute that may be a relative URL, prefix the key with <code><b>abs</b></code>,
     * which is a shortcut to the {@link #absUrl} method.
     * </p>
     * E.g.:
     * <blockquote><code>String url = a.attr("abs:href");</code></blockquote>
     *
     * @param attributeKey The attribute key.
     * @return The attribute, or empty string if not present (to avoid nulls).
     * @see #attributes()
     * @see #hasAttr(String)
     * @see #absUrl(String)
     */
    public String attr(String attributeKey) {
        int PROBE_START_LINE_60 = 60;
		String p_attribute_key_403_line_60 = attributeKey;
		int PROBE_END_LINE_60 = 60;
		Validate.notNull(p_attribute_key_403_line_60);
        int PROBE_START_LINE_61 = 62;
		boolean node_1_expr3_line_61 = hasAttributes();
		boolean node_1_expr2_line_61 = !node_1_expr3_line_61;
		int PROBE_END_LINE_61 = 62;
		if (node_1_expr2_line_61)
            return EmptyString;

        int PROBE_START_LINE_64 = 64;
		org.jsoup.nodes.Attributes node_1_expr5_line_64 = attributes();
		String p_attribute_key_403_line_64 = attributeKey;
		String node_1_expr4_line_64 = node_1_expr5_line_64.getIgnoreCase(p_attribute_key_403_line_64);
		int PROBE_END_LINE_64 = 64;
		String val = node_1_expr4_line_64;
        int PROBE_START_LINE_65 = 69;
		String v_val_404_line_65 = val;
		int node_1_expr7_line_65 = v_val_404_line_65.length();
		boolean node_1_expr6_line_65 = node_1_expr7_line_65 > 0;
		int PROBE_END_LINE_65 = 69;
		if (node_1_expr6_line_65)
            return val;
		else {
			int PROBE_START_LINE_67 = 69;
			String p_attribute_key_403_line_67 = attributeKey;
			boolean node_1_expr8_line_67 = p_attribute_key_403_line_67.startsWith("abs:");
			int PROBE_END_LINE_67 = 69;
			if (node_1_expr8_line_67)
				return absUrl(attributeKey.substring("abs:".length()));
			else
				return "";
		}
    }

    /**
     * Get all of the element's attributes.
     * @return attributes (which implements iterable, in same order as presented in original HTML).
     */
    public abstract Attributes attributes();

    /**
     * Set an attribute (key=value). If the attribute already exists, it is replaced. The attribute key comparison is
     * <b>case insensitive</b>.
     * @param attributeKey The attribute key.
     * @param attributeValue The attribute value.
     * @return this (for chaining)
     */
    public Node attr(String attributeKey, String attributeValue) {
        int PROBE_START_LINE_86 = 86;
		org.jsoup.nodes.Attributes node_1_expr10_line_86 = attributes();
		String p_attribute_key_405_line_86 = attributeKey;
		String p_attribute_value_406_line_86 = attributeValue;
		int PROBE_END_LINE_86 = 86;
		node_1_expr10_line_86.putIgnoreCase(p_attribute_key_405_line_86, p_attribute_value_406_line_86);
        return this;
    }

    /**
     * Test if this element has an attribute. <b>Case insensitive</b>
     * @param attributeKey The attribute key to check.
     * @return true if the attribute exists, false if not.
     */
    public boolean hasAttr(String attributeKey) {
        Validate.notNull(attributeKey);

        if (attributeKey.startsWith("abs:")) {
            String key = attributeKey.substring("abs:".length());
            if (attributes().hasKeyIgnoreCase(key) && !absUrl(key).equals(""))
                return true;
        }
        return attributes().hasKeyIgnoreCase(attributeKey);
    }

    /**
     * Remove an attribute from this element.
     * @param attributeKey The attribute to remove.
     * @return this (for chaining)
     */
    public Node removeAttr(String attributeKey) {
        Validate.notNull(attributeKey);
        attributes().removeIgnoreCase(attributeKey);
        return this;
    }

    /**
     * Clear (remove) all of the attributes in this node.
     * @return this, for chaining
     */
    public Node clearAttributes() {
        Iterator<Attribute> it = attributes().iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
        return this;
    }

    /**
     Get the base URI of this node.
     @return base URI
     */
    public abstract String baseUri();

    /**
     * Set the baseUri for just this node (not its descendants), if this Node tracks base URIs.
     * @param baseUri new URI
     */
    protected abstract void doSetBaseUri(String baseUri);

    /**
     Update the base URI of this node and all of its descendants.
     @param baseUri base URI to set
     */
    public void setBaseUri(final String baseUri) {
        Validate.notNull(baseUri);

        traverse(new NodeVisitor() {
            public void head(Node node, int depth) {
                node.doSetBaseUri(baseUri);
            }

            public void tail(Node node, int depth) {
            }
        });
    }

    /**
     * Get an absolute URL from a URL attribute that may be relative (i.e. an <code>&lt;a href&gt;</code> or
     * <code>&lt;img src&gt;</code>).
     * <p>
     * E.g.: <code>String absUrl = linkEl.absUrl("href");</code>
     * </p>
     * <p>
     * If the attribute value is already absolute (i.e. it starts with a protocol, like
     * <code>http://</code> or <code>https://</code> etc), and it successfully parses as a URL, the attribute is
     * returned directly. Otherwise, it is treated as a URL relative to the element's {@link #baseUri}, and made
     * absolute using that.
     * </p>
     * <p>
     * As an alternate, you can use the {@link #attr} method with the <code>abs:</code> prefix, e.g.:
     * <code>String absUrl = linkEl.attr("abs:href");</code>
     * </p>
     *
     * @param attributeKey The attribute key
     * @return An absolute URL if one could be made, or an empty string (not null) if the attribute was missing or
     * could not be made successfully into a URL.
     * @see #attr
     * @see java.net.URL#URL(java.net.URL, String)
     */
    public String absUrl(String attributeKey) {
        Validate.notEmpty(attributeKey);

        if (!hasAttr(attributeKey)) {
            return ""; // nothing to make absolute with
        } else {
            return StringUtil.resolve(baseUri(), attr(attributeKey));
        }
    }

    protected abstract List<Node> ensureChildNodes();

    /**
     Get a child node by its 0-based index.
     @param index index of child node
     @return the child node at this index. Throws a {@code IndexOutOfBoundsException} if the index is out of bounds.
     */
    public Node childNode(int index) {
        int PROBE_START_LINE_200 = 200;
		List<org.jsoup.nodes.Node> node_1_expr13_line_200 = ensureChildNodes();
		int p_index_416_line_200 = index;
		org.jsoup.nodes.Node node_1_expr12_line_200 = node_1_expr13_line_200.get(p_index_416_line_200);
		int PROBE_END_LINE_200 = 200;
		return node_1_expr12_line_200;
    }

    /**
     Get this node's children. Presented as an unmodifiable list: new children can not be added, but the child nodes
     themselves can be manipulated.
     @return list of children. If no children, returns an empty list.
     */
    public List<Node> childNodes() {
        int PROBE_START_LINE_209 = 209;
		List<org.jsoup.nodes.Node> node_1_expr15_line_209 = ensureChildNodes();
		List<org.jsoup.nodes.Node> node_1_expr14_line_209 = Collections.unmodifiableList(node_1_expr15_line_209);
		int PROBE_END_LINE_209 = 209;
		return node_1_expr14_line_209;
    }

    /**
     * Returns a deep copy of this node's children. Changes made to these nodes will not be reflected in the original
     * nodes
     * @return a deep copy of this node's children
     */
    public List<Node> childNodesCopy() {
        final List<Node> nodes = ensureChildNodes();
        final ArrayList<Node> children = new ArrayList<>(nodes.size());
        for (Node node : nodes) {
            children.add(node.clone());
        }
        return children;
    }

    /**
     * Get the number of child nodes that this node holds.
     * @return the number of child nodes that this node holds.
     */
    public abstract int childNodeSize();

    protected Node[] childNodesAsArray() {
        return ensureChildNodes().toArray(new Node[childNodeSize()]);
    }

    /**
     Gets this node's parent node.
     @return parent node; or null if no parent.
     */
    public Node parent() {
        return parentNode;
    }

    /**
     Gets this node's parent node. Not overridable by extending classes, so useful if you really just need the Node type.
     @return parent node; or null if no parent.
     */
    public final Node parentNode() {
        int PROBE_START_LINE_249 = 249;
		org.jsoup.nodes.Node f_parent_node_230_line_249 = parentNode;
		int PROBE_END_LINE_249 = 249;
		return f_parent_node_230_line_249;
    }

    /**
     * Get this node's root node; that is, its topmost ancestor. If this node is the top ancestor, returns {@code this}.
     * @return topmost ancestor.
     */
    public Node root() {
        Node node = this;
        while (true) {
			int PROBE_START_LINE_258 = 258;
			org.jsoup.nodes.Node v_node_417_line_258 = node;
			org.jsoup.nodes.Node q_parent_node_19_line_258 = v_node_417_line_258.parentNode;
			boolean node_1_expr17_line_258 = q_parent_node_19_line_258 != null;
			if (!(node_1_expr17_line_258)) {
				break;
			}
			int PROBE_END_LINE_258 = 258;
			int PROBE_START_LINE_259 = 259;
			org.jsoup.nodes.Node v_node_417_line_259 = node;
			org.jsoup.nodes.Node q_parent_node_20_line_259 = v_node_417_line_259.parentNode;
			int PROBE_END_LINE_259 = 259;
			node = q_parent_node_20_line_259;
		}
        int PROBE_START_LINE_260 = 260;
		org.jsoup.nodes.Node v_node_417_line_260 = node;
		int PROBE_END_LINE_260 = 260;
		return v_node_417_line_260;
    }

    /**
     * Gets the Document associated with this Node.
     * @return the Document associated with this Node, or null if there is no such Document.
     */
    public Document ownerDocument() {
        int PROBE_START_LINE_268 = 268;
		Node node_1_expr19_line_268 = root();
		int PROBE_END_LINE_268 = 268;
		Node root = node_1_expr19_line_268;
        int PROBE_START_LINE_269 = 269;
		org.jsoup.nodes.Node v_root_418_line_269 = root;
		boolean node_1_expr23_line_269 = v_root_418_line_269 instanceof Document;
		boolean node_1_expr21_line_269 = (node_1_expr23_line_269);
		org.jsoup.nodes.Node v_root_418_line_269_v1 = null;
		if (node_1_expr21_line_269) {
			v_root_418_line_269_v1 = root;
		}
		org.jsoup.nodes.Document node_1_expr20_line_269 = node_1_expr21_line_269
				? (Document) v_root_418_line_269_v1
				: null;
		int PROBE_END_LINE_269 = 269;
		return node_1_expr20_line_269;
    }

    /**
     * Remove (delete) this node from the DOM tree. If this node has children, they are also removed.
     */
    public void remove() {
        Validate.notNull(parentNode);
        parentNode.removeChild(this);
    }

    /**
     * Insert the specified HTML into the DOM before this node (i.e. as a preceding sibling).
     * @param html HTML to add before this node
     * @return this node, for chaining
     * @see #after(String)
     */
    public Node before(String html) {
        addSiblingHtml(siblingIndex, html);
        return this;
    }

    /**
     * Insert the specified node into the DOM before this node (i.e. as a preceding sibling).
     * @param node to add before this node
     * @return this node, for chaining
     * @see #after(Node)
     */
    public Node before(Node node) {
        Validate.notNull(node);
        Validate.notNull(parentNode);

        parentNode.addChildren(siblingIndex, node);
        return this;
    }

    /**
     * Insert the specified HTML into the DOM after this node (i.e. as a following sibling).
     * @param html HTML to add after this node
     * @return this node, for chaining
     * @see #before(String)
     */
    public Node after(String html) {
        int PROBE_START_LINE_312 = 312;
		int f_sibling_index_422_line_312 = siblingIndex;
		int node_1_expr25_line_312 = f_sibling_index_422_line_312 + 1;
		String p_html_421_line_312 = html;
		int PROBE_END_LINE_312 = 312;
		addSiblingHtml(node_1_expr25_line_312, p_html_421_line_312);
        return this;
    }

    /**
     * Insert the specified node into the DOM after this node (i.e. as a following sibling).
     * @param node to add after this node
     * @return this node, for chaining
     * @see #before(Node)
     */
    public Node after(Node node) {
        Validate.notNull(node);
        Validate.notNull(parentNode);

        parentNode.addChildren(siblingIndex + 1, node);
        return this;
    }

    private void addSiblingHtml(int index, String html) {
        int PROBE_START_LINE_331 = 331;
		String p_html_425_line_331 = html;
		int PROBE_END_LINE_331 = 331;
		Validate.notNull(p_html_425_line_331);
        int PROBE_START_LINE_332 = 332;
		org.jsoup.nodes.Node f_parent_node_230_line_332 = parentNode;
		int PROBE_END_LINE_332 = 332;
		Validate.notNull(f_parent_node_230_line_332);

        int PROBE_START_LINE_334 = 334;
		org.jsoup.nodes.Node node_1_expr32_line_334 = parent();
		boolean node_1_expr30_line_334 = node_1_expr32_line_334 instanceof Element;
		org.jsoup.nodes.Node node_1_expr33_line_334 = null;
		if (node_1_expr30_line_334) {
			node_1_expr33_line_334 = parent();
		}
		Element node_1_expr29_line_334 = node_1_expr30_line_334 ? (Element) node_1_expr33_line_334 : null;
		int PROBE_END_LINE_334 = 334;
		Element context = node_1_expr29_line_334;
        int PROBE_START_LINE_335 = 335;
		String p_html_425_line_335 = html;
		org.jsoup.nodes.Element v_context_426_line_335 = context;
		String node_1_expr35_line_335 = baseUri();
		List<Node> node_1_expr34_line_335 = Parser.parseFragment(p_html_425_line_335, v_context_426_line_335,
				node_1_expr35_line_335);
		int PROBE_END_LINE_335 = 335;
		List<Node> nodes = node_1_expr34_line_335;
        int PROBE_START_LINE_336 = 336;
		org.jsoup.nodes.Node f_parent_node_230_line_336 = parentNode;
		int p_index_424_line_336 = index;
		List<org.jsoup.nodes.Node> v_nodes_427_line_336 = nodes;
		List<org.jsoup.nodes.Node> v_nodes_427_line_336_v1 = nodes;
		int node_1_expr39_line_336 = v_nodes_427_line_336_v1.size();
		org.jsoup.nodes.Node[] node_1_expr37_line_336 = v_nodes_427_line_336.toArray(new Node[node_1_expr39_line_336]);
		int PROBE_END_LINE_336 = 336;
		f_parent_node_230_line_336.addChildren(p_index_424_line_336, node_1_expr37_line_336);
    }

    /**
     Wrap the supplied HTML around this node.
     @param html HTML to wrap around this element, e.g. {@code <div class="head"></div>}. Can be arbitrarily deep.
     @return this node, for chaining.
     */
    public Node wrap(String html) {
        Validate.notEmpty(html);

        Element context = parent() instanceof Element ? (Element) parent() : null;
        List<Node> wrapChildren = Parser.parseFragment(html, context, baseUri());
        Node wrapNode = wrapChildren.get(0);
        if (wrapNode == null || !(wrapNode instanceof Element)) // nothing to wrap with; noop
            return null;

        Element wrap = (Element) wrapNode;
        Element deepest = getDeepChild(wrap);
        parentNode.replaceChild(this, wrap);
        deepest.addChildren(this);

        // remainder (unbalanced wrap, like <div></div><p></p> -- The <p> is remainder
        if (wrapChildren.size() > 0) {
            //noinspection ForLoopReplaceableByForEach (beacause it allocates an Iterator which is wasteful here)
            for (int i = 0; i < wrapChildren.size(); i++) {
                Node remainder = wrapChildren.get(i);
                remainder.parentNode.removeChild(remainder);
                wrap.appendChild(remainder);
            }
        }
        return this;
    }

    /**
     * Removes this node from the DOM, and moves its children up into the node's parent. This has the effect of dropping
     * the node but keeping its children.
     * <p>
     * For example, with the input html:
     * </p>
     * <p>{@code <div>One <span>Two <b>Three</b></span></div>}</p>
     * Calling {@code element.unwrap()} on the {@code span} element will result in the html:
     * <p>{@code <div>One Two <b>Three</b></div>}</p>
     * and the {@code "Two "} {@link TextNode} being returned.
     *
     * @return the first child of this node, after the node has been unwrapped. Null if the node had no children.
     * @see #remove()
     * @see #wrap(String)
     */
    public Node unwrap() {
        Validate.notNull(parentNode);
        final List<Node> childNodes = ensureChildNodes();
        Node firstChild = childNodes.size() > 0 ? childNodes.get(0) : null;
        parentNode.addChildren(siblingIndex, this.childNodesAsArray());
        this.remove();

        return firstChild;
    }

    private Element getDeepChild(Element el) {
        List<Element> children = el.children();
        if (children.size() > 0)
            return getDeepChild(children.get(0));
        else
            return el;
    }

    void nodelistChanged() {
        // Element overrides this to clear its shadow children elements
    }

    /**
     * Replace this node in the DOM with the supplied node.
     * @param in the node that will will replace the existing node.
     */
    public void replaceWith(Node in) {
        Validate.notNull(in);
        Validate.notNull(parentNode);
        parentNode.replaceChild(this, in);
    }

    protected void setParentNode(Node parentNode) {
        int PROBE_START_LINE_418 = 418;
		org.jsoup.nodes.Node p_parent_node_431_line_418 = parentNode;
		int PROBE_END_LINE_418 = 418;
		Validate.notNull(p_parent_node_431_line_418);
        int PROBE_START_LINE_419 = 420;
		org.jsoup.nodes.Node f_parent_node_230_line_419 = this.parentNode;
		boolean node_1_expr41_line_419 = f_parent_node_230_line_419 != null;
		int PROBE_END_LINE_419 = 420;
		if (node_1_expr41_line_419) {
			int PROBE_START_LINE_420 = 420;
			org.jsoup.nodes.Node f_parent_node_230_line_420 = this.parentNode;
			int PROBE_END_LINE_420 = 420;
			f_parent_node_230_line_420.removeChild(this);
		}
        int PROBE_START_LINE_421 = 421;
		org.jsoup.nodes.Node p_parent_node_431_line_421 = parentNode;
		int PROBE_END_LINE_421 = 421;
		this.parentNode = p_parent_node_431_line_421;
    }

    protected void replaceChild(Node out, Node in) {
        Validate.isTrue(out.parentNode == this);
        Validate.notNull(in);
        if (in.parentNode != null)
            in.parentNode.removeChild(in);

        final int index = out.siblingIndex;
        ensureChildNodes().set(index, in);
        in.parentNode = this;
        in.setSiblingIndex(index);
        out.parentNode = null;
    }

    protected void removeChild(Node out) {
        int PROBE_START_LINE_438 = 438;
		org.jsoup.nodes.Node p_out_434_line_438 = out;
		org.jsoup.nodes.Node q_parent_node_20_line_438 = p_out_434_line_438.parentNode;
		boolean node_1_expr52_line_438 = q_parent_node_20_line_438 == this;
		int PROBE_END_LINE_438 = 438;
		Validate.isTrue(node_1_expr52_line_438);
        int PROBE_START_LINE_439 = 439;
		org.jsoup.nodes.Node p_out_434_line_439 = out;
		int q_sibling_index_21_line_439 = p_out_434_line_439.siblingIndex;
		int PROBE_END_LINE_439 = 439;
		final int index = q_sibling_index_21_line_439;
        int PROBE_START_LINE_440 = 440;
		List<org.jsoup.nodes.Node> node_1_expr55_line_440 = ensureChildNodes();
		int v_index_435_line_440 = index;
		int PROBE_END_LINE_440 = 440;
		node_1_expr55_line_440.remove(v_index_435_line_440);
        int PROBE_START_LINE_441 = 441;
		int v_index_435_line_441 = index;
		int PROBE_END_LINE_441 = 441;
		reindexChildren(v_index_435_line_441);
        out.parentNode = null;
    }

    protected void addChildren(Node... children) {
        //most used. short circuit addChildren(int), which hits reindex children and array copy
        final List<Node> nodes = ensureChildNodes();

        for (Node child: children) {
            reparentChild(child);
            nodes.add(child);
            child.setSiblingIndex(nodes.size()-1);
        }
    }

    protected void addChildren(int index, Node... children) {
        int PROBE_START_LINE_457 = 457;
		org.jsoup.nodes.Node[] p_children_438_line_457 = children;
		int PROBE_END_LINE_457 = 457;
		Validate.noNullElements(p_children_438_line_457);
        int PROBE_START_LINE_458 = 458;
		List<Node> node_1_expr59_line_458 = ensureChildNodes();
		int PROBE_END_LINE_458 = 458;
		final List<Node> nodes = node_1_expr59_line_458;

        int PROBE_START_LINE_460 = 462;
		org.jsoup.nodes.Node[] p_children_438_line_460 = children;
		int PROBE_END_LINE_460 = 462;
		for (Node child : p_children_438_line_460) {
            int PROBE_START_LINE_461 = 461;
			org.jsoup.nodes.Node v_child_440_line_461 = child;
			int PROBE_END_LINE_461 = 461;
			reparentChild(v_child_440_line_461);
        }
        int PROBE_START_LINE_463 = 463;
		List<org.jsoup.nodes.Node> v_nodes_439_line_463 = nodes;
		int p_index_437_line_463 = index;
		org.jsoup.nodes.Node[] p_children_438_line_463 = children;
		List<org.jsoup.nodes.Node> node_1_expr62_line_463 = Arrays.asList(p_children_438_line_463);
		int PROBE_END_LINE_463 = 463;
		v_nodes_439_line_463.addAll(p_index_437_line_463, node_1_expr62_line_463);
        int PROBE_START_LINE_464 = 464;
		int p_index_437_line_464 = index;
		int PROBE_END_LINE_464 = 464;
		reindexChildren(p_index_437_line_464);
    }
    
    protected void reparentChild(Node child) {
        int PROBE_START_LINE_468 = 468;
		org.jsoup.nodes.Node p_child_441_line_468 = child;
		int PROBE_END_LINE_468 = 468;
		p_child_441_line_468.setParentNode(this);
    }

    private void reindexChildren(int start) {
        int PROBE_START_LINE_472 = 472;
		List<Node> node_1_expr66_line_472 = ensureChildNodes();
		int PROBE_END_LINE_472 = 472;
		final List<Node> childNodes = node_1_expr66_line_472;

        int PROBE_START_LINE_473 = 473;
		boolean FOR_STMT_TOGGLE_LINE_474 = false;
		int PROBE_END_LINE_473 = 473;
		for (int i = 0; true;) {
            int PROBE_START_LINE_475 = 475;
			if (!FOR_STMT_TOGGLE_LINE_474) {
				FOR_STMT_TOGGLE_LINE_474 = true;
				int p_start_442_line_474 = start;
				i = p_start_442_line_474;
			} else {
				if (FOR_STMT_TOGGLE_LINE_474) {
					i++;
				} else {
					FOR_STMT_TOGGLE_LINE_474 = true;
				}
			}
			int v_i_444_line_474 = i;
			List<org.jsoup.nodes.Node> v_child_nodes_443_line_474 = childNodes;
			int node_1_expr69_line_474 = v_child_nodes_443_line_474.size();
			boolean node_1_expr68_line_474 = v_i_444_line_474 < node_1_expr69_line_474;
			if (!(node_1_expr68_line_474)) {
				break;
			}
			List<org.jsoup.nodes.Node> v_child_nodes_443_line_475 = childNodes;
			int v_i_444_line_475 = i;
			org.jsoup.nodes.Node node_1_expr72_line_475 = v_child_nodes_443_line_475.get(v_i_444_line_475);
			int v_i_444_line_475_v1 = i;
			int PROBE_END_LINE_475 = 475;
			node_1_expr72_line_475.setSiblingIndex(v_i_444_line_475_v1);
        }
    }

    /**
     Retrieves this node's sibling nodes. Similar to {@link #childNodes()  node.parent.childNodes()}, but does not
     include this node (a node is not a sibling of itself).
     @return node siblings. If the node has no parent, returns an empty list.
     */
    public List<Node> siblingNodes() {
        if (parentNode == null)
            return Collections.emptyList();

        List<Node> nodes = parentNode.ensureChildNodes();
        List<Node> siblings = new ArrayList<>(nodes.size() - 1);
        for (Node node: nodes)
            if (node != this)
                siblings.add(node);
        return siblings;
    }

    /**
     Get this node's next sibling.
     @return next sibling, or null if this is the last sibling
     */
    public Node nextSibling() {
        int PROBE_START_LINE_501 = 502;
		org.jsoup.nodes.Node f_parent_node_230_line_501 = parentNode;
		boolean node_1_expr73_line_501 = f_parent_node_230_line_501 == null;
		int PROBE_END_LINE_501 = 502;
		if (node_1_expr73_line_501)
            return null; // root

        int PROBE_START_LINE_504 = 504;
		org.jsoup.nodes.Node f_parent_node_230_line_504 = parentNode;
		List<Node> node_1_expr74_line_504 = f_parent_node_230_line_504.ensureChildNodes();
		int PROBE_END_LINE_504 = 504;
		final List<Node> siblings = node_1_expr74_line_504;
        int PROBE_START_LINE_505 = 505;
		int f_sibling_index_422_line_505 = siblingIndex;
		int node_1_expr75_line_505 = f_sibling_index_422_line_505 + 1;
		int PROBE_END_LINE_505 = 505;
		final int index = node_1_expr75_line_505;
        int PROBE_START_LINE_506 = 509;
		List<org.jsoup.nodes.Node> v_siblings_445_line_506 = siblings;
		int node_1_expr77_line_506 = v_siblings_445_line_506.size();
		int v_index_446_line_506 = index;
		boolean node_1_expr76_line_506 = node_1_expr77_line_506 > v_index_446_line_506;
		int PROBE_END_LINE_506 = 509;
		if (node_1_expr76_line_506) {
			int PROBE_START_LINE_507 = 507;
			List<org.jsoup.nodes.Node> v_siblings_445_line_507 = siblings;
			int v_index_446_line_507 = index;
			org.jsoup.nodes.Node node_1_expr78_line_507 = v_siblings_445_line_507.get(v_index_446_line_507);
			int PROBE_END_LINE_507 = 507;
			return node_1_expr78_line_507;
		} else
            return null;
    }

    /**
     Get this node's previous sibling.
     @return the previous sibling, or null if this is the first sibling
     */
    public Node previousSibling() {
        if (parentNode == null)
            return null; // root

        if (siblingIndex > 0)
            return parentNode.ensureChildNodes().get(siblingIndex-1);
        else
            return null;
    }

    /**
     * Get the list index of this node in its node sibling list. I.e. if this is the first node
     * sibling, returns 0.
     * @return position in node sibling list
     * @see org.jsoup.nodes.Element#elementSiblingIndex()
     */
    public int siblingIndex() {
        return siblingIndex;
    }

    protected void setSiblingIndex(int siblingIndex) {
        int PROBE_START_LINE_537 = 537;
		int p_sibling_index_447_line_537 = siblingIndex;
		int PROBE_END_LINE_537 = 537;
		this.siblingIndex = p_sibling_index_447_line_537;
    }

    /**
     * Perform a depth-first traversal through this node and its descendants.
     * @param nodeVisitor the visitor callbacks to perform on each node
     * @return this node, for chaining
     */
    public Node traverse(NodeVisitor nodeVisitor) {
        Validate.notNull(nodeVisitor);
        NodeTraversor.traverse(nodeVisitor, this);
        return this;
    }

    /**
     * Perform a depth-first filtering through this node and its descendants.
     * @param nodeFilter the filter callbacks to perform on each node
     * @return this node, for chaining
     */
    public Node filter(NodeFilter nodeFilter) {
        Validate.notNull(nodeFilter);
        NodeTraversor.filter(nodeFilter, this);
        return this;
    }

    /**
     Get the outer HTML of this node.
     @return HTML
     */
    public String outerHtml() {
        StringBuilder accum = new StringBuilder(128);
        outerHtml(accum);
        return accum.toString();
    }

    protected void outerHtml(Appendable accum) {
        NodeTraversor.traverse(new OuterHtmlVisitor(accum, getOutputSettings()), this);
    }

    // if this node has no document (or parent), retrieve the default output settings
    Document.OutputSettings getOutputSettings() {
        Document owner = ownerDocument();
        return owner != null ? owner.outputSettings() : (new Document("")).outputSettings();
    }

    /**
     Get the outer HTML of this node.
     @param accum accumulator to place HTML into
     @throws IOException if appending to the given accumulator fails.
     */
    abstract void outerHtmlHead(final Appendable accum, int depth, final Document.OutputSettings out) throws IOException;

    abstract void outerHtmlTail(final Appendable accum, int depth, final Document.OutputSettings out) throws IOException;

    /**
     * Write this node and its children to the given {@link Appendable}.
     *
     * @param appendable the {@link Appendable} to write to.
     * @return the supplied {@link Appendable}, for chaining.
     */
    public <T extends Appendable> T html(T appendable) {
        outerHtml(appendable);
        return appendable;
    }

	public String toString() {
        return outerHtml();
    }

    protected void indent(Appendable accum, int depth, Document.OutputSettings out) throws IOException {
        accum.append('\n').append(StringUtil.padding(depth * out.indentAmount()));
    }

    /**
     * Check if this node is the same instance of another (object identity test).
     * @param o other object to compare to
     * @return true if the content of this node is the same as the other
     * @see Node#hasSameValue(Object) to compare nodes by their value
     */
    @Override
    public boolean equals(Object o) {
        // implemented just so that javadoc is clear this is an identity test
        return this == o;
    }

    /**
     * Check if this node is has the same content as another node. A node is considered the same if its name, attributes and content match the
     * other node; particularly its position in the tree does not influence its similarity.
     * @param o other object to compare to
     * @return true if the content of this node is the same as the other
     */

    public boolean hasSameValue(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        return this.outerHtml().equals(((Node) o).outerHtml());
    }

    /**
     * Create a stand-alone, deep copy of this node, and all of its children. The cloned node will have no siblings or
     * parent node. As a stand-alone object, any changes made to the clone or any of its children will not impact the
     * original node.
     * <p>
     * The cloned node may be adopted into another Document or node structure using {@link Element#appendChild(Node)}.
     * @return stand-alone cloned node
     */
    @Override
    public Node clone() {
        int PROBE_START_LINE_646 = 646;
		Node node_1_expr82_line_646 = doClone(null);
		int PROBE_END_LINE_646 = 646;
		Node thisClone = node_1_expr82_line_646; // splits for orphan

        // Queue up nodes that need their children cloned (BFS).
        final LinkedList<Node> nodesToProcess = new LinkedList<>();
        int PROBE_START_LINE_650 = 650;
		LinkedList<org.jsoup.nodes.Node> v_nodes_to_process_464_line_650 = nodesToProcess;
		org.jsoup.nodes.Node v_this_clone_463_line_650 = thisClone;
		int PROBE_END_LINE_650 = 650;
		v_nodes_to_process_464_line_650.add(v_this_clone_463_line_650);

        while (true) {
            int PROBE_START_LINE_652 = 652;
			LinkedList<org.jsoup.nodes.Node> v_nodes_to_process_464_line_652 = nodesToProcess;
			boolean node_1_expr86_line_652 = v_nodes_to_process_464_line_652.isEmpty();
			boolean node_1_expr85_line_652 = !node_1_expr86_line_652;
			if (!(node_1_expr85_line_652)) {
				break;
			}
			int PROBE_END_LINE_652 = 652;
			int PROBE_START_LINE_653 = 653;
			LinkedList<org.jsoup.nodes.Node> v_nodes_to_process_464_line_653 = nodesToProcess;
			Node node_1_expr87_line_653 = v_nodes_to_process_464_line_653.remove();
			int PROBE_END_LINE_653 = 653;
			Node currParent = node_1_expr87_line_653;

            int PROBE_START_LINE_655 = 655;
			org.jsoup.nodes.Node v_curr_parent_465_line_655 = currParent;
			int node_1_expr88_line_655 = v_curr_parent_465_line_655.childNodeSize();
			int PROBE_END_LINE_655 = 655;
			final int size = node_1_expr88_line_655;
            for (int i = 0; true; i++) {
                int PROBE_START_LINE_657 = 657;
				int v_i_467_line_656 = i;
				int v_size_466_line_656 = size;
				boolean node_1_expr90_line_656 = v_i_467_line_656 < v_size_466_line_656;
				if (!(node_1_expr90_line_656)) {
					break;
				}
				org.jsoup.nodes.Node v_curr_parent_465_line_657 = currParent;
				List<Node> node_1_expr92_line_657 = v_curr_parent_465_line_657.ensureChildNodes();
				int PROBE_END_LINE_657 = 657;
				final List<Node> childNodes = node_1_expr92_line_657;
                int PROBE_START_LINE_658 = 658;
				List<org.jsoup.nodes.Node> v_child_nodes_468_line_658 = childNodes;
				int v_i_467_line_658 = i;
				org.jsoup.nodes.Node node_1_expr94_line_658 = v_child_nodes_468_line_658.get(v_i_467_line_658);
				org.jsoup.nodes.Node v_curr_parent_465_line_658 = currParent;
				Node node_1_expr93_line_658 = node_1_expr94_line_658.doClone(v_curr_parent_465_line_658);
				int PROBE_END_LINE_658 = 658;
				Node childClone = node_1_expr93_line_658;
                int PROBE_START_LINE_659 = 659;
				List<org.jsoup.nodes.Node> v_child_nodes_468_line_659 = childNodes;
				int v_i_467_line_659 = i;
				org.jsoup.nodes.Node v_child_clone_469_line_659 = childClone;
				int PROBE_END_LINE_659 = 659;
				v_child_nodes_468_line_659.set(v_i_467_line_659, v_child_clone_469_line_659);
                int PROBE_START_LINE_660 = 660;
				LinkedList<org.jsoup.nodes.Node> v_nodes_to_process_464_line_660 = nodesToProcess;
				org.jsoup.nodes.Node v_child_clone_469_line_660 = childClone;
				int PROBE_END_LINE_660 = 660;
				v_nodes_to_process_464_line_660.add(v_child_clone_469_line_660);
            }
        }

        int PROBE_START_LINE_664 = 664;
		org.jsoup.nodes.Node v_this_clone_463_line_664 = thisClone;
		int PROBE_END_LINE_664 = 664;
		return v_this_clone_463_line_664;
    }

    /*
     * Return a clone of the node using the given parent (which can be null).
     * Not a deep copy of children.
     */
    protected Node doClone(Node parent) {
        Node clone = null;

        try {
            int PROBE_START_LINE_675 = 675;
			Object node_1_expr99_line_675 = super.clone();
			int PROBE_END_LINE_675 = 675;
			clone = (Node) node_1_expr99_line_675;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }

        int PROBE_START_LINE_680 = 680;
		org.jsoup.nodes.Node p_parent_470_line_680 = parent;
		int PROBE_END_LINE_680 = 680;
		clone.parentNode = p_parent_470_line_680; // can be null, to create an orphan split
        int PROBE_START_LINE_681 = 681;
		org.jsoup.nodes.Node p_parent_470_line_681 = parent;
		boolean node_1_expr103_line_681 = p_parent_470_line_681 == null;
		int f_sibling_index_422_line_681 = 0;
		if (!node_1_expr103_line_681) {
			f_sibling_index_422_line_681 = siblingIndex;
		}
		int node_1_expr102_line_681 = node_1_expr103_line_681 ? 0 : f_sibling_index_422_line_681;
		int PROBE_END_LINE_681 = 681;
		clone.siblingIndex = node_1_expr102_line_681;

        int PROBE_START_LINE_683 = 683;
		org.jsoup.nodes.Node v_clone_471_line_683 = clone;
		int PROBE_END_LINE_683 = 683;
		return v_clone_471_line_683;
    }

    private static class OuterHtmlVisitor implements NodeVisitor {
        private Appendable accum;
        private Document.OutputSettings out;

        OuterHtmlVisitor(Appendable accum, Document.OutputSettings out) {
            this.accum = accum;
            this.out = out;
            out.prepareEncoder();
        }

        public void head(Node node, int depth) {
            try {
				node.outerHtmlHead(accum, depth, out);
			} catch (IOException exception) {
				throw new SerializationException(exception);
			}
        }

        public void tail(Node node, int depth) {
            if (!node.nodeName().equals("#text")) { // saves a void hit.
				try {
					node.outerHtmlTail(accum, depth, out);
				} catch (IOException exception) {
					throw new SerializationException(exception);
				}
            }
        }
    }
}
