package org.jsoup.nodes;

import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 The base, abstract Node model. Elements, Documents, Comments etc are all Node instances.

 @author Jonathan Hedley, jonathan@hedley.net */
public abstract class Node {
    Node parentNode;
    List<Node> childNodes;
    Attributes attributes;
    String baseUri;
    int siblingIndex;

    /**
     Create a new Node.
     @param baseUri base URI
     @param attributes attributes (not null, but may be empty)
     */
    protected Node(String baseUri, Attributes attributes) {
        int PROBE_START_LINE_31 = 31;
		String p_base_uri_264_line_31 = baseUri;
		int PROBE_END_LINE_31 = 31;
		Validate.notNull(p_base_uri_264_line_31);
        int PROBE_START_LINE_32 = 32;
		org.jsoup.nodes.Attributes p_attributes_265_line_32 = attributes;
		int PROBE_END_LINE_32 = 32;
		Validate.notNull(p_attributes_265_line_32);
        
        childNodes = new ArrayList<Node>(4);
        int PROBE_START_LINE_35 = 35;
		String p_base_uri_264_line_35 = baseUri;
		String node_1_expr7_line_35 = p_base_uri_264_line_35.trim();
		int PROBE_END_LINE_35 = 35;
		this.baseUri = node_1_expr7_line_35;
        int PROBE_START_LINE_36 = 36;
		org.jsoup.nodes.Attributes p_attributes_265_line_36 = attributes;
		int PROBE_END_LINE_36 = 36;
		this.attributes = p_attributes_265_line_36;
    }

    protected Node(String baseUri) {
        this(baseUri, new Attributes());
    }

    /**
     * Default constructor. Doesn't setup base uri, children, or attributes; use with caution.
     */
    protected Node() {
        childNodes = Collections.EMPTY_LIST;
        attributes = null;
    }

    /**
     Get the node name of this node. Use for debugging purposes and not logic switching (for that, use instanceof).
     @return node name
     */
    public abstract String nodeName();

    /**
     * Get an attribute's value by its key.
     * <p/>
     * To get an absolute URL from an attribute that may be a relative URL, prefix the key with <code><b>abs</b></code>,
     * which is a shortcut to the {@link #absUrl} method.
     * E.g.: <blockquote><code>String url = a.attr("abs:href");</code></blockquote>
     * @param attributeKey The attribute key.
     * @return The attribute, or empty string if not present (to avoid nulls).
     * @see #attributes()
     * @see #hasAttr(String)
     * @see #absUrl(String)
     */
    public String attr(String attributeKey) {
        Validate.notNull(attributeKey);

        if (hasAttr(attributeKey))
            return attributes.get(attributeKey);
        else if (attributeKey.toLowerCase().startsWith("abs:"))
            return absUrl(attributeKey.substring("abs:".length()));
        else return "";
    }

    /**
     * Get all of the element's attributes.
     * @return attributes (which implements iterable, in same order as presented in original HTML).
     */
    public Attributes attributes() {
        return attributes;
    }

    /**
     * Set an attribute (key=value). If the attribute already exists, it is replaced.
     * @param attributeKey The attribute key.
     * @param attributeValue The attribute value.
     * @return this (for chaining)
     */
    public Node attr(String attributeKey, String attributeValue) {
        attributes.put(attributeKey, attributeValue);
        return this;
    }

    /**
     * Test if this element has an attribute.
     * @param attributeKey The attribute key to check.
     * @return true if the attribute exists, false if not.
     */
    public boolean hasAttr(String attributeKey) {
        Validate.notNull(attributeKey);
        return attributes.hasKey(attributeKey);
    }

    /**
     * Remove an attribute from this element.
     * @param attributeKey The attribute to remove.
     * @return this (for chaining)
     */
    public Node removeAttr(String attributeKey) {
        Validate.notNull(attributeKey);
        attributes.remove(attributeKey);
        return this;
    }

    /**
     Get the base URI of this node.
     @return base URI
     */
    public String baseUri() {
        return baseUri;
    }

    /**
     Update the base URI of this node.
     @param baseUri base URI to set
     */
    public void setBaseUri(String baseUri) {
        Validate.notNull(baseUri);
        this.baseUri = baseUri;
    }

    /**
     * Get an absolute URL from a URL attribute that may be relative (i.e. an <code>&lt;a href></code> or
     * <code>&lt;img src></code>).
     * <p/>
     * E.g.: <code>String absUrl = linkEl.absUrl("href");</code>
     * <p/>
     * If the attribute value is already absolute (i.e. it starts with a protocol, like
     * <code>http://</code> or <code>https://</code> etc), and it successfully parses as a URL, the attribute is
     * returned directly. Otherwise, it is treated as a URL relative to the element's {@link #baseUri}, and made
     * absolute using that.
     * <p/>
     * As an alternate, you can use the {@link #attr} method with the <code>abs:</code> prefix, e.g.:
     * <code>String absUrl = linkEl.attr("abs:href");</code>
     *
     * @param attributeKey The attribute key
     * @return An absolute URL if one could be made, or an empty string (not null) if the attribute was missing or
     * could not be made successfully into a URL.
     * @see #attr
     * @see java.net.URL#URL(java.net.URL, String)
     */
    public String absUrl(String attributeKey) {
        Validate.notEmpty(attributeKey);

        String relUrl = attr(attributeKey);
        if (!hasAttr(attributeKey)) {
            return ""; // nothing to make absolute with
        } else {
            URL base;
            try {
                try {
                    base = new URL(baseUri);
                } catch (MalformedURLException e) {
                    // the base is unsuitable, but the attribute may be abs on its own, so try that
                    URL abs = new URL(relUrl);
                    return abs.toExternalForm();
                }
                URL abs = new URL(base, relUrl);
                return abs.toExternalForm();
            } catch (MalformedURLException e) {
                return "";
            }
        }
    }

    /**
     Get a child node by index
     @param index index of child node
     @return the child node at this index.
     */
    public Node childNode(int index) {
        int PROBE_START_LINE_186 = 186;
		List<org.jsoup.nodes.Node> f_child_nodes_176_line_186 = childNodes;
		int p_index_275_line_186 = index;
		org.jsoup.nodes.Node node_1_expr12_line_186 = f_child_nodes_176_line_186.get(p_index_275_line_186);
		int PROBE_END_LINE_186 = 186;
		return node_1_expr12_line_186;
    }

    /**
     Get this node's children. Presented as an unmodifiable list: new children can not be added, but the child nodes
     themselves can be manipulated.
     @return list of children. If no children, returns an empty list.
     */
    public List<Node> childNodes() {
        int PROBE_START_LINE_195 = 195;
		List<org.jsoup.nodes.Node> f_child_nodes_176_line_195 = childNodes;
		List<org.jsoup.nodes.Node> node_1_expr13_line_195 = Collections.unmodifiableList(f_child_nodes_176_line_195);
		int PROBE_END_LINE_195 = 195;
		return node_1_expr13_line_195;
    }
    
    protected Node[] childNodesAsArray() {
        return childNodes.toArray(new Node[childNodes().size()]);
    }

    /**
     Gets this node's parent node.
     @return parent node; or null if no parent.
     */
    public Node parent() {
        return parentNode;
    }
    
    /**
     * Gets the Document associated with this Node. 
     * @return the Document associated with this Node, or null if there is no such Document.
     */
    public Document ownerDocument() {
        int PROBE_START_LINE_215 = 220;
		boolean node_1_expr14_line_215 = this instanceof Document;
		int PROBE_END_LINE_215 = 220;
		if (node_1_expr14_line_215)
            return (Document) this;
		else {
			int PROBE_START_LINE_217 = 220;
			org.jsoup.nodes.Node f_parent_node_112_line_217 = parentNode;
			boolean node_1_expr18_line_217 = f_parent_node_112_line_217 == null;
			int PROBE_END_LINE_217 = 220;
			if (node_1_expr18_line_217)
				return null;
			else {
				int PROBE_START_LINE_220 = 220;
				org.jsoup.nodes.Node f_parent_node_112_line_220 = parentNode;
				org.jsoup.nodes.Document node_1_expr19_line_220 = f_parent_node_112_line_220.ownerDocument();
				int PROBE_END_LINE_220 = 220;
				return node_1_expr19_line_220;
			}
		}
    }
    
    /**
     * Remove (delete) this node from the DOM tree. If this node has children, they are also removed.
     */
    public void remove() {
        int PROBE_START_LINE_227 = 227;
		org.jsoup.nodes.Node f_parent_node_112_line_227 = parentNode;
		int PROBE_END_LINE_227 = 227;
		Validate.notNull(f_parent_node_112_line_227);
        int PROBE_START_LINE_228 = 228;
		org.jsoup.nodes.Node f_parent_node_112_line_228 = parentNode;
		int PROBE_END_LINE_228 = 228;
		f_parent_node_112_line_228.removeChild(this);
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
        int PROBE_START_LINE_242 = 243;
		org.jsoup.nodes.Node f_parent_node_112_line_242 = this.parentNode;
		boolean node_1_expr23_line_242 = f_parent_node_112_line_242 != null;
		int PROBE_END_LINE_242 = 243;
		if (node_1_expr23_line_242)
            this.parentNode.removeChild(this);
        int PROBE_START_LINE_244 = 244;
		org.jsoup.nodes.Node p_parent_node_277_line_244 = parentNode;
		int PROBE_END_LINE_244 = 244;
		this.parentNode = p_parent_node_277_line_244;
    }

    protected void replaceChild(Node out, Node in) {
        Validate.isTrue(out.parentNode == this);
        Validate.notNull(in);
        if (in.parentNode != null)
            in.parentNode.removeChild(in);
        
        Integer index = out.siblingIndex();
        childNodes.set(index, in);
        in.parentNode = this;
        in.setSiblingIndex(index);
        out.parentNode = null;
    }

    protected void removeChild(Node out) {
        int PROBE_START_LINE_261 = 261;
		org.jsoup.nodes.Node p_out_280_line_261 = out;
		org.jsoup.nodes.Node q_parent_node_8_line_261 = p_out_280_line_261.parentNode;
		boolean node_1_expr30_line_261 = q_parent_node_8_line_261 == this;
		int PROBE_END_LINE_261 = 261;
		Validate.isTrue(node_1_expr30_line_261);
        int PROBE_START_LINE_262 = 262;
		org.jsoup.nodes.Node p_out_280_line_262 = out;
		int node_1_expr32_line_262 = p_out_280_line_262.siblingIndex();
		int PROBE_END_LINE_262 = 262;
		int index = node_1_expr32_line_262;
        int PROBE_START_LINE_263 = 263;
		List<org.jsoup.nodes.Node> f_child_nodes_176_line_263 = childNodes;
		int v_index_281_line_263 = index;
		int PROBE_END_LINE_263 = 263;
		f_child_nodes_176_line_263.remove(v_index_281_line_263);
        reindexChildren();
        out.parentNode = null;
    }

    protected void addChildren(Node... children) {
        int PROBE_START_LINE_270 = 274;
		org.jsoup.nodes.Node[] p_children_282_line_270 = children;
		int PROBE_END_LINE_270 = 274;
		//most used. short circuit addChildren(int), which hits reindex children and array copy
        for (Node child: p_children_282_line_270) {
            int PROBE_START_LINE_271 = 271;
			org.jsoup.nodes.Node v_child_283_line_271 = child;
			int PROBE_END_LINE_271 = 271;
			reparentChild(v_child_283_line_271);
            int PROBE_START_LINE_272 = 272;
			List<org.jsoup.nodes.Node> f_child_nodes_176_line_272 = childNodes;
			org.jsoup.nodes.Node v_child_283_line_272 = child;
			int PROBE_END_LINE_272 = 272;
			f_child_nodes_176_line_272.add(v_child_283_line_272);
            int PROBE_START_LINE_273 = 273;
			org.jsoup.nodes.Node v_child_283_line_273 = child;
			List<org.jsoup.nodes.Node> f_child_nodes_176_line_273 = childNodes;
			int node_1_expr40_line_273 = f_child_nodes_176_line_273.size();
			int node_1_expr39_line_273 = node_1_expr40_line_273 - 1;
			int PROBE_END_LINE_273 = 273;
			v_child_283_line_273.setSiblingIndex(node_1_expr39_line_273);
        }
    }

    protected void addChildren(int index, Node... children) {
        Validate.noNullElements(children);
        for (int i = children.length - 1; i >= 0; i--) {
            Node in = children[i];
            reparentChild(in);
            childNodes.add(index, in);
        }
        reindexChildren();
    }

    private void reparentChild(Node child) {
        int PROBE_START_LINE_288 = 289;
		org.jsoup.nodes.Node p_child_286_line_288 = child;
		org.jsoup.nodes.Node q_parent_node_9_line_288 = p_child_286_line_288.parentNode;
		boolean node_1_expr41_line_288 = q_parent_node_9_line_288 != null;
		int PROBE_END_LINE_288 = 289;
		if (node_1_expr41_line_288)
            child.parentNode.removeChild(child);
        int PROBE_START_LINE_290 = 290;
		org.jsoup.nodes.Node p_child_286_line_290 = child;
		int PROBE_END_LINE_290 = 290;
		p_child_286_line_290.setParentNode(this);
    }
    
    private void reindexChildren() {
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_295 = 295;
			int v_i_287_line_294 = i;
			List<org.jsoup.nodes.Node> f_child_nodes_176_line_294 = childNodes;
			int node_1_expr46_line_294 = f_child_nodes_176_line_294.size();
			boolean node_1_expr45_line_294 = v_i_287_line_294 < node_1_expr46_line_294;
			if (!(node_1_expr45_line_294)) {
				break;
			}
			int PROBE_END_LINE_295 = 295;
			childNodes.get(i).setSiblingIndex(i);
        }
    }
    
    /**
     Retrieves this node's sibling nodes. Effectively, {@link #childNodes()  node.parent.childNodes()}.
     @return node siblings, including this node
     */
    public List<Node> siblingNodes() {
        return parent().childNodes(); // TODO: should this strip out this node? i.e. not a sibling of self?
    }

    /**
     Get this node's next sibling.
     @return next sibling, or null if this is the last sibling
     */
    public Node nextSibling() {
        int PROBE_START_LINE_312 = 313;
		org.jsoup.nodes.Node f_parent_node_112_line_312 = parentNode;
		boolean node_1_expr48_line_312 = f_parent_node_112_line_312 == null;
		int PROBE_END_LINE_312 = 313;
		if (node_1_expr48_line_312)
            return null; // root
        
        int PROBE_START_LINE_315 = 315;
		org.jsoup.nodes.Node f_parent_node_112_line_315 = parentNode;
		List<Node> q_child_nodes_10_line_315 = f_parent_node_112_line_315.childNodes;
		int PROBE_END_LINE_315 = 315;
		List<Node> siblings = q_child_nodes_10_line_315;
        int PROBE_START_LINE_316 = 316;
		Integer node_1_expr49_line_316 = siblingIndex();
		int PROBE_END_LINE_316 = 316;
		Integer index = node_1_expr49_line_316;
        int PROBE_START_LINE_317 = 317;
		Integer v_index_289_line_317 = index;
		int PROBE_END_LINE_317 = 317;
		Validate.notNull(v_index_289_line_317);
        int PROBE_START_LINE_318 = 321;
		List<org.jsoup.nodes.Node> v_siblings_288_line_318 = siblings;
		int node_1_expr52_line_318 = v_siblings_288_line_318.size();
		Integer v_index_289_line_318 = index;
		int node_1_expr53_line_318 = v_index_289_line_318 + 1;
		boolean node_1_expr51_line_318 = node_1_expr52_line_318 > node_1_expr53_line_318;
		int PROBE_END_LINE_318 = 321;
		if (node_1_expr51_line_318) {
			int PROBE_START_LINE_319 = 319;
			List<org.jsoup.nodes.Node> v_siblings_288_line_319 = siblings;
			Integer v_index_289_line_319 = index;
			int node_1_expr55_line_319 = v_index_289_line_319 + 1;
			org.jsoup.nodes.Node node_1_expr54_line_319 = v_siblings_288_line_319.get(node_1_expr55_line_319);
			int PROBE_END_LINE_319 = 319;
			return node_1_expr54_line_319;
		} else
            return null;
    }

    /**
     Get this node's previous sibling.
     @return the previous sibling, or null if this is the first sibling
     */
    public Node previousSibling() {
        List<Node> siblings = parentNode.childNodes;
        Integer index = siblingIndex();
        Validate.notNull(index);
        if (index > 0)
            return siblings.get(index-1);
        else
            return null;
    }

    /**
     * Get the list index of this node in its node sibling list. I.e. if this is the first node
     * sibling, returns 0.
     * @return position in node sibling list
     * @see org.jsoup.nodes.Element#elementSiblingIndex()
     */
    public Integer siblingIndex() {
        int PROBE_START_LINE_345 = 345;
		int f_sibling_index_290_line_345 = siblingIndex;
		int PROBE_END_LINE_345 = 345;
		return f_sibling_index_290_line_345;
    }
    
    protected void setSiblingIndex(int siblingIndex) {
        int PROBE_START_LINE_349 = 349;
		int p_sibling_index_291_line_349 = siblingIndex;
		int PROBE_END_LINE_349 = 349;
		this.siblingIndex = p_sibling_index_291_line_349;
    }

    /**
     Get the outer HTML of this node.
     @return HTML
     */
    public String outerHtml() {
        int PROBE_START_LINE_357 = 357;
		int node_1_expr60_line_357 = 32 * 1024;
		int PROBE_END_LINE_357 = 357;
		StringBuilder accum = new StringBuilder(node_1_expr60_line_357);
        int PROBE_START_LINE_358 = 358;
		StringBuilder v_accum_292_line_358 = accum;
		int PROBE_END_LINE_358 = 358;
		outerHtml(v_accum_292_line_358);
        int PROBE_START_LINE_359 = 359;
		StringBuilder v_accum_292_line_359 = accum;
		String node_1_expr62_line_359 = v_accum_292_line_359.toString();
		int PROBE_END_LINE_359 = 359;
		return node_1_expr62_line_359;
    }

    protected void outerHtml(StringBuilder accum) {
        int PROBE_START_LINE_363 = 363;
		StringBuilder p_accum_293_line_363 = accum;
		org.jsoup.nodes.Document node_1_expr68_line_363 = ownerDocument();
		org.jsoup.nodes.Document.OutputSettings node_1_expr67_line_363 = node_1_expr68_line_363.outputSettings();
		int PROBE_END_LINE_363 = 363;
		new NodeTraversor(new OuterHtmlVisitor(p_accum_293_line_363, node_1_expr67_line_363)).traverse(this);
    }

    // if this node has no document (or parent), retrieve the default output settings

    /**
     Get the outer HTML of this node.
     @param accum accumulator to place HTML into
     */
    abstract void outerHtmlHead(StringBuilder accum, int depth, Document.OutputSettings out);

    abstract void outerHtmlTail(StringBuilder accum, int depth, Document.OutputSettings out);

    public String toString() {
        return outerHtml();
    }

    protected void indent(StringBuilder accum, int depth, Document.OutputSettings out) {
        int PROBE_START_LINE_381 = 381;
		StringBuilder p_accum_300_line_381 = accum;
		StringBuilder node_1_expr71_line_381 = p_accum_300_line_381.append("\n");
		int p_depth_301_line_381 = depth;
		org.jsoup.nodes.Document.OutputSettings p_out_302_line_381 = out;
		int node_1_expr73_line_381 = p_out_302_line_381.indentAmount();
		int node_1_expr72_line_381 = p_depth_301_line_381 * node_1_expr73_line_381;
		String node_1_expr70_line_381 = StringUtil.padding(node_1_expr72_line_381);
		int PROBE_END_LINE_381 = 381;
		node_1_expr71_line_381.append(node_1_expr70_line_381);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        // todo: have nodes hold a child index, compare against that and parent (not children)
        return false;
    }

    @Override
    public int hashCode() {
        int PROBE_START_LINE_393 = 393;
		org.jsoup.nodes.Node f_parent_node_112_line_393 = parentNode;
		boolean node_1_expr75_line_393 = f_parent_node_112_line_393 != null;
		int node_1_expr76_line_393 = 0;
		if (node_1_expr75_line_393) {
			org.jsoup.nodes.Node f_parent_node_112_line_393_v1 = parentNode;
			node_1_expr76_line_393 = f_parent_node_112_line_393_v1.hashCode();
		}
		int node_1_expr74_line_393 = node_1_expr75_line_393 ? node_1_expr76_line_393 : 0;
		int PROBE_END_LINE_393 = 393;
		int result = node_1_expr74_line_393;
        int PROBE_START_LINE_395 = 395;
		int v_result_304_line_395 = result;
		int node_1_expr79_line_395 = 31 * v_result_304_line_395;
		org.jsoup.nodes.Attributes f_attributes_175_line_395 = attributes;
		boolean node_1_expr82_line_395 = f_attributes_175_line_395 != null;
		int node_1_expr83_line_395 = 0;
		if (node_1_expr82_line_395) {
			org.jsoup.nodes.Attributes f_attributes_175_line_395_v1 = attributes;
			node_1_expr83_line_395 = f_attributes_175_line_395_v1.hashCode();
		}
		int node_1_expr81_line_395 = node_1_expr82_line_395 ? node_1_expr83_line_395 : 0;
		int node_1_expr80_line_395 = (node_1_expr81_line_395);
		int node_1_expr78_line_395 = node_1_expr79_line_395 + node_1_expr80_line_395;
		int PROBE_END_LINE_395 = 395;
		// not children, or will block stack as they go back up to parent)
        result = node_1_expr78_line_395;
        int PROBE_START_LINE_396 = 396;
		int v_result_304_line_396 = result;
		int PROBE_END_LINE_396 = 396;
		return v_result_304_line_396;
    }

    private static class OuterHtmlVisitor implements NodeVisitor {
        private StringBuilder accum;
        private Document.OutputSettings out;

        OuterHtmlVisitor(StringBuilder accum, Document.OutputSettings out) {
            int PROBE_START_LINE_404 = 404;
			StringBuilder p_accum_305_line_404 = accum;
			int PROBE_END_LINE_404 = 404;
			this.accum = p_accum_305_line_404;
            int PROBE_START_LINE_405 = 405;
			org.jsoup.nodes.Document.OutputSettings p_out_306_line_405 = out;
			int PROBE_END_LINE_405 = 405;
			this.out = p_out_306_line_405;
        }

        public void head(Node node, int depth) {
            int PROBE_START_LINE_409 = 409;
			org.jsoup.nodes.Node p_node_309_line_409 = node;
			StringBuilder f_accum_307_line_409 = accum;
			int p_depth_310_line_409 = depth;
			org.jsoup.nodes.Document.OutputSettings f_out_308_line_409 = out;
			int PROBE_END_LINE_409 = 409;
			p_node_309_line_409.outerHtmlHead(f_accum_307_line_409, p_depth_310_line_409, f_out_308_line_409);
        }

        public void tail(Node node, int depth) {
            int PROBE_START_LINE_413 = 414;
			org.jsoup.nodes.Node p_node_311_line_413 = node;
			String node_1_expr93_line_413 = p_node_311_line_413.nodeName();
			boolean node_1_expr92_line_413 = node_1_expr93_line_413.equals("#text");
			boolean node_1_expr91_line_413 = !node_1_expr92_line_413;
			int PROBE_END_LINE_413 = 414;
			if (node_1_expr91_line_413) {
				int PROBE_START_LINE_414 = 414;
				org.jsoup.nodes.Node p_node_311_line_414 = node;
				StringBuilder f_accum_307_line_414 = accum;
				int p_depth_312_line_414 = depth;
				org.jsoup.nodes.Document.OutputSettings f_out_308_line_414 = out;
				int PROBE_END_LINE_414 = 414;
				p_node_311_line_414.outerHtmlTail(f_accum_307_line_414, p_depth_312_line_414, f_out_308_line_414);
			}
        }
    }
}
