package org.jsoup.nodes;

import org.jsoup.helper.ChangeNotifyingArrayList;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;
import org.jsoup.select.Collector;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.QueryParser;
import org.jsoup.select.Selector;

import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

import static org.jsoup.internal.Normalizer.normalize;

/**
 * A HTML element consists of a tag name, attributes, and child nodes (including text nodes and
 * other elements).
 * 
 * From an Element, you can extract data, traverse the node graph, and manipulate the HTML.
 * 
 * @author Jonathan Hedley, jonathan@hedley.net
 */
public class Element extends Node {
    int PROBE_START_LINE_41 = 41;

	private static final List<org.jsoup.nodes.Node> element_1_expr1_line_41 = Collections.emptyList();

	int PROBE_END_LINE_41 = 41;

	private static final List<Node> EMPTY_NODES = element_1_expr1_line_41;
    int PROBE_START_LINE_42 = 42;

	private static final java.util.regex.Pattern element_1_expr2_line_42 = Pattern.compile("\\s+");

	int PROBE_END_LINE_42 = 42;

	private static final Pattern classSplit = element_1_expr2_line_42;
    private Tag tag;
    private WeakReference<List<Element>> shadowChildrenRef; // points to child elements shadowed from node children
    List<Node> childNodes;
    private Attributes attributes;
    private String baseUri;

    /**
     * Create a new, standalone element.
     * @param tag tag name
     */
    public Element(String tag) {
        this(Tag.valueOf(tag), "", new Attributes());
    }

    /**
     * Create a new, standalone Element. (Standalone in that is has no parent.)
     * 
     * @param tag tag of this element
     * @param baseUri the base URI
     * @param attributes initial attributes
     * @see #appendChild(Node)
     * @see #appendElement(String)
     */
    public Element(Tag tag, String baseUri, Attributes attributes) {
        int PROBE_START_LINE_67 = 67;
		org.jsoup.parser.Tag p_tag_215_line_67 = tag;
		int PROBE_END_LINE_67 = 67;
		Validate.notNull(p_tag_215_line_67);
        int PROBE_START_LINE_68 = 68;
		String p_base_uri_216_line_68 = baseUri;
		int PROBE_END_LINE_68 = 68;
		Validate.notNull(p_base_uri_216_line_68);
        int PROBE_START_LINE_69 = 69;
		List<org.jsoup.nodes.Node> f_empty_nodes_212_line_69 = EMPTY_NODES;
		int PROBE_END_LINE_69 = 69;
		childNodes = f_empty_nodes_212_line_69;
        int PROBE_START_LINE_70 = 70;
		String p_base_uri_216_line_70 = baseUri;
		int PROBE_END_LINE_70 = 70;
		this.baseUri = p_base_uri_216_line_70;
        int PROBE_START_LINE_71 = 71;
		org.jsoup.nodes.Attributes p_attributes_217_line_71 = attributes;
		int PROBE_END_LINE_71 = 71;
		this.attributes = p_attributes_217_line_71;
        int PROBE_START_LINE_72 = 72;
		org.jsoup.parser.Tag p_tag_215_line_72 = tag;
		int PROBE_END_LINE_72 = 72;
		this.tag = p_tag_215_line_72;
    }
    
    /**
     * Create a new Element from a tag and a base URI.
     * 
     * @param tag element tag
     * @param baseUri the base URI of this element. It is acceptable for the base URI to be an empty
     *            string, but not null.
     * @see Tag#valueOf(String, ParseSettings)
     */
    public Element(Tag tag, String baseUri) {
        this(tag, baseUri, null);
    }

    protected List<Node> ensureChildNodes() {
        int PROBE_START_LINE_88 = 90;
		List<org.jsoup.nodes.Node> f_child_nodes_218_line_88 = childNodes;
		List<org.jsoup.nodes.Node> f_empty_nodes_212_line_88 = EMPTY_NODES;
		boolean element_1_expr16_line_88 = f_child_nodes_218_line_88 == f_empty_nodes_212_line_88;
		int PROBE_END_LINE_88 = 90;
		if (element_1_expr16_line_88) {
            childNodes = new NodeList(4);
        }
        int PROBE_START_LINE_91 = 91;
		List<org.jsoup.nodes.Node> f_child_nodes_218_line_91 = childNodes;
		int PROBE_END_LINE_91 = 91;
		return f_child_nodes_218_line_91;
    }

    @Override
    protected boolean hasAttributes() {
        return attributes != null;
    }

    @Override
    public Attributes attributes() {
        if (!hasAttributes())
            attributes = new Attributes();
        return attributes;
    }

    @Override
    public String baseUri() {
        int PROBE_START_LINE_108 = 108;
		String f_base_uri_219_line_108 = baseUri;
		int PROBE_END_LINE_108 = 108;
		return f_base_uri_219_line_108;
    }

    @Override
    protected void doSetBaseUri(String baseUri) {
        this.baseUri = baseUri;
    }

    @Override
    public int childNodeSize() {
        int PROBE_START_LINE_118 = 118;
		List<org.jsoup.nodes.Node> f_child_nodes_218_line_118 = childNodes;
		int element_1_expr19_line_118 = f_child_nodes_218_line_118.size();
		int PROBE_END_LINE_118 = 118;
		return element_1_expr19_line_118;
    }

    @Override
    public String nodeName() {
        int PROBE_START_LINE_123 = 123;
		org.jsoup.parser.Tag f_tag_221_line_123 = tag;
		String element_1_expr20_line_123 = f_tag_221_line_123.getName();
		int PROBE_END_LINE_123 = 123;
		return element_1_expr20_line_123;
    }

    /**
     * Get the name of the tag for this element. E.g. {@code div}
     * 
     * @return the tag name
     */
    public String tagName() {
        int PROBE_START_LINE_132 = 132;
		org.jsoup.parser.Tag f_tag_221_line_132 = tag;
		String element_1_expr21_line_132 = f_tag_221_line_132.getName();
		int PROBE_END_LINE_132 = 132;
		return element_1_expr21_line_132;
    }

    /**
     * Change the tag of this element. For example, convert a {@code <span>} to a {@code <div>} with
     * {@code el.tagName("div");}.
     *
     * @param tagName new tag name for this element
     * @return this element, for chaining
     */
    public Element tagName(String tagName) {
        Validate.notEmpty(tagName, "Tag name must not be empty.");
        tag = Tag.valueOf(tagName, ParseSettings.preserveCase); // preserve the requested tag case
        return this;
    }

    /**
     * Get the Tag for this element.
     * 
     * @return the tag object
     */
    public Tag tag() {
        int PROBE_START_LINE_154 = 154;
		org.jsoup.parser.Tag f_tag_221_line_154 = tag;
		int PROBE_END_LINE_154 = 154;
		return f_tag_221_line_154;
    }
    
    /**
     * Test if this element is a block-level element. (E.g. {@code <div> == true} or an inline element
     * {@code <p> == false}).
     * 
     * @return true if block, false if not (and thus inline)
     */
    public boolean isBlock() {
        return tag.isBlock();
    }

    /**
     * Get the {@code id} attribute of this element.
     * 
     * @return The id attribute, if present, or an empty string if not.
     */
    public String id() {
        return attributes().getIgnoreCase("id");
    }

    /**
     * Set an attribute value on this element. If this element already has an attribute with the
     * key, its value is updated; otherwise, a new attribute is added.
     * 
     * @return this element
     */
    public Element attr(String attributeKey, String attributeValue) {
        super.attr(attributeKey, attributeValue);
        return this;
    }
    
    /**
     * Set a boolean attribute value on this element. Setting to <code>true</code> sets the attribute value to "" and
     * marks the attribute as boolean so no value is written out. Setting to <code>false</code> removes the attribute
     * with the same key if it exists.
     * 
     * @param attributeKey the attribute key
     * @param attributeValue the attribute value
     * 
     * @return this element
     */
    public Element attr(String attributeKey, boolean attributeValue) {
        attributes().put(attributeKey, attributeValue);
        return this;
    }

    /**
     * Get this element's HTML5 custom data attributes. Each attribute in the element that has a key
     * starting with "data-" is included the dataset.
     * <p>
     * E.g., the element {@code <div data-package="jsoup" data-language="Java" class="group">...} has the dataset
     * {@code package=jsoup, language=java}.
     * <p>
     * This map is a filtered view of the element's attribute map. Changes to one map (add, remove, update) are reflected
     * in the other map.
     * <p>
     * You can find elements that have data attributes using the {@code [^data-]} attribute key prefix selector.
     * @return a map of {@code key=value} custom data attributes.
     */
    public Map<String, String> dataset() {
        return attributes().dataset();
    }

    @Override
    public final Element parent() {
        int PROBE_START_LINE_221 = 221;
		org.jsoup.nodes.Node f_parent_node_230_line_221 = parentNode;
		int PROBE_END_LINE_221 = 221;
		return (Element) f_parent_node_230_line_221;
    }

    /**
     * Get this element's parent and ancestors, up to the document root.
     * @return this element's stack of parents, closest first.
     */
    public Elements parents() {
        Elements parents = new Elements();
        int PROBE_START_LINE_230 = 230;
		org.jsoup.select.Elements v_parents_231_line_230 = parents;
		int PROBE_END_LINE_230 = 230;
		accumulateParents(this, v_parents_231_line_230);
        int PROBE_START_LINE_231 = 231;
		org.jsoup.select.Elements v_parents_231_line_231 = parents;
		int PROBE_END_LINE_231 = 231;
		return v_parents_231_line_231;
    }

    private static void accumulateParents(Element el, Elements parents) {
        int PROBE_START_LINE_235 = 235;
		org.jsoup.nodes.Element p_el_232_line_235 = el;
		Element element_1_expr26_line_235 = p_el_232_line_235.parent();
		int PROBE_END_LINE_235 = 235;
		Element parent = element_1_expr26_line_235;
        int PROBE_START_LINE_236 = 239;
		org.jsoup.nodes.Element v_parent_234_line_236 = parent;
		boolean element_1_expr28_line_236 = v_parent_234_line_236 != null;
		boolean element_1_expr29_line_236 = true;
		if (element_1_expr28_line_236) {
			org.jsoup.nodes.Element v_parent_234_line_236_v1 = parent;
			String element_1_expr31_line_236 = v_parent_234_line_236_v1.tagName();
			boolean element_1_expr30_line_236 = element_1_expr31_line_236.equals("#root");
			element_1_expr29_line_236 = !element_1_expr30_line_236;
		}
		boolean element_1_expr27_line_236 = element_1_expr28_line_236 && element_1_expr29_line_236;
		int PROBE_END_LINE_236 = 239;
		if (element_1_expr27_line_236) {
            int PROBE_START_LINE_237 = 237;
			org.jsoup.select.Elements p_parents_233_line_237 = parents;
			org.jsoup.nodes.Element v_parent_234_line_237 = parent;
			int PROBE_END_LINE_237 = 237;
			p_parents_233_line_237.add(v_parent_234_line_237);
            int PROBE_START_LINE_238 = 238;
			org.jsoup.nodes.Element v_parent_234_line_238 = parent;
			org.jsoup.select.Elements p_parents_233_line_238 = parents;
			int PROBE_END_LINE_238 = 238;
			accumulateParents(v_parent_234_line_238, p_parents_233_line_238);
        }
    }

    /**
     * Get a child element of this element, by its 0-based index number.
     * <p>
     * Note that an element can have both mixed Nodes and Elements as children. This method inspects
     * a filtered list of children that are elements, and the index is based on that filtered list.
     * </p>
     * 
     * @param index the index number of the element to retrieve
     * @return the child element, if it exists, otherwise throws an {@code IndexOutOfBoundsException}
     * @see #childNode(int)
     */
    public Element child(int index) {
        int PROBE_START_LINE_254 = 254;
		List<org.jsoup.nodes.Element> element_1_expr35_line_254 = childElementsList();
		int p_index_235_line_254 = index;
		org.jsoup.nodes.Element element_1_expr34_line_254 = element_1_expr35_line_254.get(p_index_235_line_254);
		int PROBE_END_LINE_254 = 254;
		return element_1_expr34_line_254;
    }

    /**
     * Get this element's child elements.
     * <p>
     * This is effectively a filter on {@link #childNodes()} to get Element nodes.
     * </p>
     * @return child elements. If this element has no children, returns an empty list.
     * @see #childNodes()
     */
    public Elements children() {
        return new Elements(childElementsList());
    }

    /**
     * Maintains a shadow copy of this element's child elements. If the nodelist is changed, this cache is invalidated.
     * TODO - think about pulling this out as a helper as there are other shadow lists (like in Attributes) kept around.
     * @return a list of child elements
     */
    private List<Element> childElementsList() {
        List<Element> children = null;
        int PROBE_START_LINE_276 = 286;
		WeakReference<List<org.jsoup.nodes.Element>> f_shadow_children_ref_236_line_276 = shadowChildrenRef;
		boolean element_1_expr37_line_276 = f_shadow_children_ref_236_line_276 == null;
		boolean element_1_expr38_line_276 = false;
		if (!element_1_expr37_line_276) {
			WeakReference<List<org.jsoup.nodes.Element>> f_shadow_children_ref_236_line_276_v1 = shadowChildrenRef;
			List<org.jsoup.nodes.Element> element_1_expr41_line_276 = f_shadow_children_ref_236_line_276_v1.get();
			List<org.jsoup.nodes.Element> element_1_expr39_line_276 = (children = element_1_expr41_line_276);
			element_1_expr38_line_276 = element_1_expr39_line_276 == null;
		}
		boolean element_1_expr36_line_276 = element_1_expr37_line_276 || element_1_expr38_line_276;
		int PROBE_END_LINE_276 = 286;
		if (element_1_expr36_line_276) {
            int PROBE_START_LINE_277 = 277;
			List<org.jsoup.nodes.Node> f_child_nodes_218_line_277 = childNodes;
			int element_1_expr42_line_277 = f_child_nodes_218_line_277.size();
			int PROBE_END_LINE_277 = 277;
			final int size = element_1_expr42_line_277;
            int PROBE_START_LINE_278 = 278;
			int v_size_238_line_278 = size;
			int PROBE_END_LINE_278 = 278;
			children = new ArrayList<>(v_size_238_line_278);
            //noinspection ForLoopReplaceableByForEach (beacause it allocates an Iterator which is wasteful here)
            for (int i = 0; true; i++) {
                int PROBE_START_LINE_281 = 281;
				int v_i_239_line_280 = i;
				int v_size_238_line_280 = size;
				boolean element_1_expr46_line_280 = v_i_239_line_280 < v_size_238_line_280;
				if (!(element_1_expr46_line_280)) {
					break;
				}
				List<org.jsoup.nodes.Node> f_child_nodes_218_line_281 = childNodes;
				int v_i_239_line_281 = i;
				Node element_1_expr48_line_281 = f_child_nodes_218_line_281.get(v_i_239_line_281);
				int PROBE_END_LINE_281 = 281;
				final Node node = element_1_expr48_line_281;
                int PROBE_START_LINE_282 = 283;
				org.jsoup.nodes.Node v_node_240_line_282 = node;
				boolean element_1_expr49_line_282 = v_node_240_line_282 instanceof Element;
				int PROBE_END_LINE_282 = 283;
				if (element_1_expr49_line_282) {
					int PROBE_START_LINE_283 = 283;
					List<org.jsoup.nodes.Element> v_children_237_line_283 = children;
					org.jsoup.nodes.Node v_node_240_line_283 = node;
					int PROBE_END_LINE_283 = 283;
					v_children_237_line_283.add((Element) v_node_240_line_283);
				}
            }
            int PROBE_START_LINE_285 = 285;
			List<org.jsoup.nodes.Element> v_children_237_line_285 = children;
			int PROBE_END_LINE_285 = 285;
			shadowChildrenRef = new WeakReference<>(v_children_237_line_285);
        }
        int PROBE_START_LINE_287 = 287;
		List<org.jsoup.nodes.Element> v_children_237_line_287 = children;
		int PROBE_END_LINE_287 = 287;
		return v_children_237_line_287;
    }

    /**
     * Clears the cached shadow child elements.
     */
    @Override
    void nodelistChanged() {
        super.nodelistChanged();
        shadowChildrenRef = null;
    }

    /**
     * Get this element's child text nodes. The list is unmodifiable but the text nodes may be manipulated.
     * <p>
     * This is effectively a filter on {@link #childNodes()} to get Text nodes.
     * @return child text nodes. If this element has no text nodes, returns an
     * empty list.
     * </p>
     * For example, with the input HTML: {@code <p>One <span>Two</span> Three <br> Four</p>} with the {@code p} element selected:
     * <ul>
     *     <li>{@code p.text()} = {@code "One Two Three Four"}</li>
     *     <li>{@code p.ownText()} = {@code "One Three Four"}</li>
     *     <li>{@code p.children()} = {@code Elements[<span>, <br>]}</li>
     *     <li>{@code p.childNodes()} = {@code List<Node>["One ", <span>, " Three ", <br>, " Four"]}</li>
     *     <li>{@code p.textNodes()} = {@code List<TextNode>["One ", " Three ", " Four"]}</li>
     * </ul>
     */
    public List<TextNode> textNodes() {
        List<TextNode> textNodes = new ArrayList<>();
        for (Node node : childNodes) {
            if (node instanceof TextNode)
                textNodes.add((TextNode) node);
        }
        return Collections.unmodifiableList(textNodes);
    }

    /**
     * Get this element's child data nodes. The list is unmodifiable but the data nodes may be manipulated.
     * <p>
     * This is effectively a filter on {@link #childNodes()} to get Data nodes.
     * </p>
     * @return child data nodes. If this element has no data nodes, returns an
     * empty list.
     * @see #data()
     */
    public List<DataNode> dataNodes() {
        List<DataNode> dataNodes = new ArrayList<>();
        for (Node node : childNodes) {
            if (node instanceof DataNode)
                dataNodes.add((DataNode) node);
        }
        return Collections.unmodifiableList(dataNodes);
    }

    /**
     * Find elements that match the {@link Selector} CSS query, with this element as the starting context. Matched elements
     * may include this element, or any of its children.
     * <p>
     * This method is generally more powerful to use than the DOM-type {@code getElementBy*} methods, because
     * multiple filters can be combined, e.g.:
     * </p>
     * <ul>
     * <li>{@code el.select("a[href]")} - finds links ({@code a} tags with {@code href} attributes)
     * <li>{@code el.select("a[href*=example.com]")} - finds links pointing to example.com (loosely)
     * </ul>
     * <p>
     * See the query syntax documentation in {@link org.jsoup.select.Selector}.
     * </p>
     * 
     * @param cssQuery a {@link Selector} CSS-like query
     * @return elements that match the query (empty if none match)
     * @see org.jsoup.select.Selector
     * @throws Selector.SelectorParseException (unchecked) on an invalid CSS query.
     */
    public Elements select(String cssQuery) {
        return Selector.select(cssQuery, this);
    }

    /**
     * Find the first Element that matches the {@link Selector} CSS query, with this element as the starting context.
     * <p>This is effectively the same as calling {@code element.select(query).first()}, but is more efficient as query
     * execution stops on the first hit.</p>
     * @param cssQuery cssQuery a {@link Selector} CSS-like query
     * @return the first matching element, or <b>{@code null}</b> if there is no match.
     */
    public Element selectFirst(String cssQuery) {
        return Selector.selectFirst(cssQuery, this);
    }

    /**
     * Check if this element matches the given {@link Selector} CSS query.
     * @param cssQuery a {@link Selector} CSS query
     * @return if this element matches the query
     */
    public boolean is(String cssQuery) {
        return is(QueryParser.parse(cssQuery));
    }

    /**
     * Check if this element matches the given evaluator.
     * @param evaluator an element evaluator
     * @return if this element matches
     */
    public boolean is(Evaluator evaluator) {
        return evaluator.matches((Element)this.root(), this);
    }
    
    /**
     * Add a node child node to this element.
     * 
     * @param child node to add.
     * @return this element, so that you can add more child nodes or elements.
     */
    public Element appendChild(Node child) {
        int PROBE_START_LINE_402 = 402;
		org.jsoup.nodes.Node p_child_245_line_402 = child;
		int PROBE_END_LINE_402 = 402;
		Validate.notNull(p_child_245_line_402);

        int PROBE_START_LINE_405 = 405;
		org.jsoup.nodes.Node p_child_245_line_405 = child;
		int PROBE_END_LINE_405 = 405;
		// was - Node#addChildren(child). short-circuits an array create and a loop.
        reparentChild(p_child_245_line_405);
        ensureChildNodes();
        int PROBE_START_LINE_407 = 407;
		List<org.jsoup.nodes.Node> f_child_nodes_218_line_407 = childNodes;
		org.jsoup.nodes.Node p_child_245_line_407 = child;
		int PROBE_END_LINE_407 = 407;
		f_child_nodes_218_line_407.add(p_child_245_line_407);
        int PROBE_START_LINE_408 = 408;
		org.jsoup.nodes.Node p_child_245_line_408 = child;
		List<org.jsoup.nodes.Node> f_child_nodes_218_line_408 = childNodes;
		int element_1_expr62_line_408 = f_child_nodes_218_line_408.size();
		int element_1_expr61_line_408 = element_1_expr62_line_408 - 1;
		int PROBE_END_LINE_408 = 408;
		p_child_245_line_408.setSiblingIndex(element_1_expr61_line_408);
        return this;
    }

    /**
     * Add this element to the supplied parent element, as its next child.
     *
     * @param parent element to which this element will be appended
     * @return this element, so that you can continue modifying the element
     */
    public Element appendTo(Element parent) {
        Validate.notNull(parent);
        parent.appendChild(this);
        return this;
    }

    /**
     * Add a node to the start of this element's children.
     * 
     * @param child node to add.
     * @return this element, so that you can add more child nodes or elements.
     */
    public Element prependChild(Node child) {
        Validate.notNull(child);
        
        addChildren(0, child);
        return this;
    }


    /**
     * Inserts the given child nodes into this element at the specified index. Current nodes will be shifted to the
     * right. The inserted nodes will be moved from their current parent. To prevent moving, copy the nodes first.
     *
     * @param index 0-based index to insert children at. Specify {@code 0} to insert at the start, {@code -1} at the
     * end
     * @param children child nodes to insert
     * @return this element, for chaining.
     */
    public Element insertChildren(int index, Collection<? extends Node> children) {
        Validate.notNull(children, "Children collection to be inserted must not be null.");
        int currentSize = childNodeSize();
        if (index < 0) index += currentSize +1; // roll around
        Validate.isTrue(index >= 0 && index <= currentSize, "Insert position out of bounds.");

        ArrayList<Node> nodes = new ArrayList<>(children);
        Node[] nodeArray = nodes.toArray(new Node[nodes.size()]);
        addChildren(index, nodeArray);
        return this;
    }

    /**
     * Inserts the given child nodes into this element at the specified index. Current nodes will be shifted to the
     * right. The inserted nodes will be moved from their current parent. To prevent moving, copy the nodes first.
     *
     * @param index 0-based index to insert children at. Specify {@code 0} to insert at the start, {@code -1} at the
     * end
     * @param children child nodes to insert
     * @return this element, for chaining.
     */
    public Element insertChildren(int index, Node... children) {
        Validate.notNull(children, "Children collection to be inserted must not be null.");
        int currentSize = childNodeSize();
        if (index < 0) index += currentSize +1; // roll around
        Validate.isTrue(index >= 0 && index <= currentSize, "Insert position out of bounds.");

        addChildren(index, children);
        return this;
    }
    
    /**
     * Create a new element by tag name, and add it as the last child.
     * 
     * @param tagName the name of the tag (e.g. {@code div}).
     * @return the new element, to allow you to add content to it, e.g.:
     *  {@code parent.appendElement("h1").attr("id", "header").text("Welcome");}
     */
    public Element appendElement(String tagName) {
        Element child = new Element(Tag.valueOf(tagName), baseUri());
        appendChild(child);
        return child;
    }
    
    /**
     * Create a new element by tag name, and add it as the first child.
     * 
     * @param tagName the name of the tag (e.g. {@code div}).
     * @return the new element, to allow you to add content to it, e.g.:
     *  {@code parent.prependElement("h1").attr("id", "header").text("Welcome");}
     */
    public Element prependElement(String tagName) {
        Element child = new Element(Tag.valueOf(tagName), baseUri());
        prependChild(child);
        return child;
    }
    
    /**
     * Create and append a new TextNode to this element.
     * 
     * @param text the unencoded text to add
     * @return this element
     */
    public Element appendText(String text) {
        Validate.notNull(text);
        TextNode node = new TextNode(text);
        appendChild(node);
        return this;
    }
    
    /**
     * Create and prepend a new TextNode to this element.
     * 
     * @param text the unencoded text to add
     * @return this element
     */
    public Element prependText(String text) {
        Validate.notNull(text);
        TextNode node = new TextNode(text);
        prependChild(node);
        return this;
    }
    
    /**
     * Add inner HTML to this element. The supplied HTML will be parsed, and each node appended to the end of the children.
     * @param html HTML to add inside this element, after the existing HTML
     * @return this element
     * @see #html(String)
     */
    public Element append(String html) {
        Validate.notNull(html);

        List<Node> nodes = Parser.parseFragment(html, this, baseUri());
        addChildren(nodes.toArray(new Node[nodes.size()]));
        return this;
    }
    
    /**
     * Add inner HTML into this element. The supplied HTML will be parsed, and each node prepended to the start of the element's children.
     * @param html HTML to add inside this element, before the existing HTML
     * @return this element
     * @see #html(String)
     */
    public Element prepend(String html) {
        Validate.notNull(html);
        
        List<Node> nodes = Parser.parseFragment(html, this, baseUri());
        addChildren(0, nodes.toArray(new Node[nodes.size()]));
        return this;
    }

    /**
     * Insert the specified HTML into the DOM before this element (as a preceding sibling).
     *
     * @param html HTML to add before this element
     * @return this element, for chaining
     * @see #after(String)
     */
    @Override
    public Element before(String html) {
        return (Element) super.before(html);
    }

    /**
     * Insert the specified node into the DOM before this node (as a preceding sibling).
     * @param node to add before this element
     * @return this Element, for chaining
     * @see #after(Node)
     */
    @Override
    public Element before(Node node) {
        return (Element) super.before(node);
    }

    /**
     * Insert the specified HTML into the DOM after this element (as a following sibling).
     *
     * @param html HTML to add after this element
     * @return this element, for chaining
     * @see #before(String)
     */
    @Override
    public Element after(String html) {
        int PROBE_START_LINE_590 = 590;
		String p_html_260_line_590 = html;
		org.jsoup.nodes.Node element_1_expr65_line_590 = super.after(p_html_260_line_590);
		int PROBE_END_LINE_590 = 590;
		return (Element) element_1_expr65_line_590;
    }

    /**
     * Insert the specified node into the DOM after this node (as a following sibling).
     * @param node to add after this element
     * @return this element, for chaining
     * @see #before(Node)
     */
    @Override
    public Element after(Node node) {
        return (Element) super.after(node);
    }

    /**
     * Remove all of the element's child nodes. Any attributes are left as-is.
     * @return this element
     */
    public Element empty() {
        childNodes.clear();
        return this;
    }

    /**
     * Wrap the supplied HTML around this element.
     *
     * @param html HTML to wrap around this element, e.g. {@code <div class="head"></div>}. Can be arbitrarily deep.
     * @return this element, for chaining.
     */
    @Override
    public Element wrap(String html) {
        return (Element) super.wrap(html);
    }

    /**
     * Get a CSS selector that will uniquely select this element.
     * <p>
     * If the element has an ID, returns #id;
     * otherwise returns the parent (if any) CSS selector, followed by {@literal '>'},
     * followed by a unique selector for the element (tag.class.class:nth-child(n)).
     * </p>
     *
     * @return the CSS Path that can be used to retrieve the element in a selector.
     */
    public String cssSelector() {
        if (id().length() > 0)
            return "#" + id();

        // Translate HTML namespace ns:tag to CSS namespace syntax ns|tag
        String tagName = tagName().replace(':', '|');
        StringBuilder selector = new StringBuilder(tagName);
        String classes = StringUtil.join(classNames(), ".");
        if (classes.length() > 0)
            selector.append('.').append(classes);

        if (parent() == null || parent() instanceof Document) // don't add Document to selector, as will always have a html node
            return selector.toString();

        selector.insert(0, " > ");
        if (parent().select(selector.toString()).size() > 1)
            selector.append(String.format(
                ":nth-child(%d)", elementSiblingIndex() + 1));

        return parent().cssSelector() + selector.toString();
    }

    /**
     * Get sibling elements. If the element has no sibling elements, returns an empty list. An element is not a sibling
     * of itself, so will not be included in the returned list.
     * @return sibling elements
     */
    public Elements siblingElements() {
        if (parentNode == null)
            return new Elements(0);

        List<Element> elements = parent().childElementsList();
        Elements siblings = new Elements(elements.size() - 1);
        for (Element el: elements)
            if (el != this)
                siblings.add(el);
        return siblings;
    }

    /**
     * Gets the next sibling element of this element. E.g., if a {@code div} contains two {@code p}s, 
     * the {@code nextElementSibling} of the first {@code p} is the second {@code p}.
     * <p>
     * This is similar to {@link #nextSibling()}, but specifically finds only Elements
     * </p>
     * @return the next element, or null if there is no next element
     * @see #previousElementSibling()
     */
    public Element nextElementSibling() {
        int PROBE_START_LINE_683 = 683;
		org.jsoup.nodes.Node f_parent_node_230_line_683 = parentNode;
		boolean element_1_expr66_line_683 = f_parent_node_230_line_683 == null;
		int PROBE_END_LINE_683 = 683;
		if (element_1_expr66_line_683) return null;
        int PROBE_START_LINE_684 = 684;
		org.jsoup.nodes.Element element_1_expr68_line_684 = parent();
		List<Element> element_1_expr67_line_684 = element_1_expr68_line_684.childElementsList();
		int PROBE_END_LINE_684 = 684;
		List<Element> siblings = element_1_expr67_line_684;
        int PROBE_START_LINE_685 = 685;
		List<org.jsoup.nodes.Element> v_siblings_263_line_685 = siblings;
		Integer element_1_expr69_line_685 = indexInList(this, v_siblings_263_line_685);
		int PROBE_END_LINE_685 = 685;
		Integer index = element_1_expr69_line_685;
        int PROBE_START_LINE_686 = 686;
		Integer v_index_264_line_686 = index;
		int PROBE_END_LINE_686 = 686;
		Validate.notNull(v_index_264_line_686);
        int PROBE_START_LINE_687 = 690;
		List<org.jsoup.nodes.Element> v_siblings_263_line_687 = siblings;
		int element_1_expr73_line_687 = v_siblings_263_line_687.size();
		Integer v_index_264_line_687 = index;
		int element_1_expr74_line_687 = v_index_264_line_687 + 1;
		boolean element_1_expr72_line_687 = element_1_expr73_line_687 > element_1_expr74_line_687;
		int PROBE_END_LINE_687 = 690;
		if (element_1_expr72_line_687) {
			int PROBE_START_LINE_688 = 688;
			List<org.jsoup.nodes.Element> v_siblings_263_line_688 = siblings;
			Integer v_index_264_line_688 = index;
			int element_1_expr76_line_688 = v_index_264_line_688 + 1;
			org.jsoup.nodes.Element element_1_expr75_line_688 = v_siblings_263_line_688.get(element_1_expr76_line_688);
			int PROBE_END_LINE_688 = 688;
			return element_1_expr75_line_688;
		} else
            return null;
    }

    /**
     * Gets the previous element sibling of this element.
     * @return the previous element, or null if there is no previous element
     * @see #nextElementSibling()
     */
    public Element previousElementSibling() {
        if (parentNode == null) return null;
        List<Element> siblings = parent().childElementsList();
        Integer index = indexInList(this, siblings);
        Validate.notNull(index);
        if (index > 0)
            return siblings.get(index-1);
        else
            return null;
    }

    /**
     * Gets the first element sibling of this element.
     * @return the first sibling that is an element (aka the parent's first element child) 
     */
    public Element firstElementSibling() {
        // todo: should firstSibling() exclude this?
        List<Element> siblings = parent().childElementsList();
        return siblings.size() > 1 ? siblings.get(0) : null;
    }
    
    /**
     * Get the list index of this element in its element sibling list. I.e. if this is the first element
     * sibling, returns 0.
     * @return position in element sibling list
     */
    public int elementSiblingIndex() {
       if (parent() == null) return 0;
       return indexInList(this, parent().childElementsList());
    }

    /**
     * Gets the last element sibling of this element
     * @return the last sibling that is an element (aka the parent's last element child) 
     */
    public Element lastElementSibling() {
        List<Element> siblings = parent().childElementsList();
        return siblings.size() > 1 ? siblings.get(siblings.size() - 1) : null;
    }

    private static <E extends Element> int indexInList(Element search, List<E> elements) {
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_740 = 741;
			int v_i_267_line_739 = i;
			List<E> p_elements_266_line_739 = elements;
			int element_1_expr79_line_739 = p_elements_266_line_739.size();
			boolean element_1_expr78_line_739 = v_i_267_line_739 < element_1_expr79_line_739;
			if (!(element_1_expr78_line_739)) {
				break;
			}
			List<E> p_elements_266_line_740 = elements;
			int v_i_267_line_740 = i;
			E element_1_expr82_line_740 = p_elements_266_line_740.get(v_i_267_line_740);
			org.jsoup.nodes.Element p_search_265_line_740 = search;
			boolean element_1_expr81_line_740 = element_1_expr82_line_740 == p_search_265_line_740;
			int PROBE_END_LINE_740 = 741;
			if (element_1_expr81_line_740) {
				int PROBE_START_LINE_741 = 741;
				int v_i_267_line_741 = i;
				int PROBE_END_LINE_741 = 741;
				return v_i_267_line_741;
			}
        }
        return 0;
    }

    // DOM type methods

    /**
     * Finds elements, including and recursively under this element, with the specified tag name.
     * @param tagName The tag name to search for (case insensitively).
     * @return a matching unmodifiable list of elements. Will be empty if this element and none of its children match.
     */
    public Elements getElementsByTag(String tagName) {
        Validate.notEmpty(tagName);
        tagName = normalize(tagName);

        return Collector.collect(new Evaluator.Tag(tagName), this);
    }

    /**
     * Find an element by ID, including or under this element.
     * <p>
     * Note that this finds the first matching ID, starting with this element. If you search down from a different
     * starting point, it is possible to find a different element by ID. For unique element by ID within a Document,
     * use {@link Document#getElementById(String)}
     * @param id The ID to search for.
     * @return The first matching element by ID, starting with this element, or null if none found.
     */
    public Element getElementById(String id) {
        Validate.notEmpty(id);
        
        Elements elements = Collector.collect(new Evaluator.Id(id), this);
        if (elements.size() > 0)
            return elements.get(0);
        else
            return null;
    }

    /**
     * Find elements that have this class, including or under this element. Case insensitive.
     * <p>
     * Elements can have multiple classes (e.g. {@code <div class="header round first">}. This method
     * checks each class, so you can find the above with {@code el.getElementsByClass("header");}.
     * 
     * @param className the name of the class to search for.
     * @return elements with the supplied class name, empty if none
     * @see #hasClass(String)
     * @see #classNames()
     */
    public Elements getElementsByClass(String className) {
        Validate.notEmpty(className);

        return Collector.collect(new Evaluator.Class(className), this);
    }

    /**
     * Find elements that have a named attribute set. Case insensitive.
     *
     * @param key name of the attribute, e.g. {@code href}
     * @return elements that have this attribute, empty if none
     */
    public Elements getElementsByAttribute(String key) {
        Validate.notEmpty(key);
        key = key.trim();

        return Collector.collect(new Evaluator.Attribute(key), this);
    }

    /**
     * Find elements that have an attribute name starting with the supplied prefix. Use {@code data-} to find elements
     * that have HTML5 datasets.
     * @param keyPrefix name prefix of the attribute e.g. {@code data-}
     * @return elements that have attribute names that start with with the prefix, empty if none.
     */
    public Elements getElementsByAttributeStarting(String keyPrefix) {
        Validate.notEmpty(keyPrefix);
        keyPrefix = keyPrefix.trim();

        return Collector.collect(new Evaluator.AttributeStarting(keyPrefix), this);
    }

    /**
     * Find elements that have an attribute with the specific value. Case insensitive.
     * 
     * @param key name of the attribute
     * @param value value of the attribute
     * @return elements that have this attribute with this value, empty if none
     */
    public Elements getElementsByAttributeValue(String key, String value) {
        return Collector.collect(new Evaluator.AttributeWithValue(key, value), this);
    }

    /**
     * Find elements that either do not have this attribute, or have it with a different value. Case insensitive.
     * 
     * @param key name of the attribute
     * @param value value of the attribute
     * @return elements that do not have a matching attribute
     */
    public Elements getElementsByAttributeValueNot(String key, String value) {
        return Collector.collect(new Evaluator.AttributeWithValueNot(key, value), this);
    }

    /**
     * Find elements that have attributes that start with the value prefix. Case insensitive.
     * 
     * @param key name of the attribute
     * @param valuePrefix start of attribute value
     * @return elements that have attributes that start with the value prefix
     */
    public Elements getElementsByAttributeValueStarting(String key, String valuePrefix) {
        return Collector.collect(new Evaluator.AttributeWithValueStarting(key, valuePrefix), this);
    }

    /**
     * Find elements that have attributes that end with the value suffix. Case insensitive.
     * 
     * @param key name of the attribute
     * @param valueSuffix end of the attribute value
     * @return elements that have attributes that end with the value suffix
     */
    public Elements getElementsByAttributeValueEnding(String key, String valueSuffix) {
        return Collector.collect(new Evaluator.AttributeWithValueEnding(key, valueSuffix), this);
    }

    /**
     * Find elements that have attributes whose value contains the match string. Case insensitive.
     * 
     * @param key name of the attribute
     * @param match substring of value to search for
     * @return elements that have attributes containing this text
     */
    public Elements getElementsByAttributeValueContaining(String key, String match) {
        return Collector.collect(new Evaluator.AttributeWithValueContaining(key, match), this);
    }
    
    /**
     * Find elements that have attributes whose values match the supplied regular expression.
     * @param key name of the attribute
     * @param pattern compiled regular expression to match against attribute values
     * @return elements that have attributes matching this regular expression
     */
    public Elements getElementsByAttributeValueMatching(String key, Pattern pattern) {
        return Collector.collect(new Evaluator.AttributeWithValueMatching(key, pattern), this);
        
    }
    
    /**
     * Find elements that have attributes whose values match the supplied regular expression.
     * @param key name of the attribute
     * @param regex regular expression to match against attribute values. You can use <a href="http://java.sun.com/docs/books/tutorial/essential/regex/pattern.html#embedded">embedded flags</a> (such as (?i) and (?m) to control regex options.
     * @return elements that have attributes matching this regular expression
     */
    public Elements getElementsByAttributeValueMatching(String key, String regex) {
        Pattern pattern;
        try {
            pattern = Pattern.compile(regex);
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + regex, e);
        }
        return getElementsByAttributeValueMatching(key, pattern);
    }
    
    /**
     * Find elements whose sibling index is less than the supplied index.
     * @param index 0-based index
     * @return elements less than index
     */
    public Elements getElementsByIndexLessThan(int index) {
        return Collector.collect(new Evaluator.IndexLessThan(index), this);
    }
    
    /**
     * Find elements whose sibling index is greater than the supplied index.
     * @param index 0-based index
     * @return elements greater than index
     */
    public Elements getElementsByIndexGreaterThan(int index) {
        return Collector.collect(new Evaluator.IndexGreaterThan(index), this);
    }
    
    /**
     * Find elements whose sibling index is equal to the supplied index.
     * @param index 0-based index
     * @return elements equal to index
     */
    public Elements getElementsByIndexEquals(int index) {
        return Collector.collect(new Evaluator.IndexEquals(index), this);
    }
    
    /**
     * Find elements that contain the specified string. The search is case insensitive. The text may appear directly
     * in the element, or in any of its descendants.
     * @param searchText to look for in the element's text
     * @return elements that contain the string, case insensitive.
     * @see Element#text()
     */
    public Elements getElementsContainingText(String searchText) {
        return Collector.collect(new Evaluator.ContainsText(searchText), this);
    }
    
    /**
     * Find elements that directly contain the specified string. The search is case insensitive. The text must appear directly
     * in the element, not in any of its descendants.
     * @param searchText to look for in the element's own text
     * @return elements that contain the string, case insensitive.
     * @see Element#ownText()
     */
    public Elements getElementsContainingOwnText(String searchText) {
        return Collector.collect(new Evaluator.ContainsOwnText(searchText), this);
    }
    
    /**
     * Find elements whose text matches the supplied regular expression.
     * @param pattern regular expression to match text against
     * @return elements matching the supplied regular expression.
     * @see Element#text()
     */
    public Elements getElementsMatchingText(Pattern pattern) {
        return Collector.collect(new Evaluator.Matches(pattern), this);
    }
    
    /**
     * Find elements whose text matches the supplied regular expression.
     * @param regex regular expression to match text against. You can use <a href="http://java.sun.com/docs/books/tutorial/essential/regex/pattern.html#embedded">embedded flags</a> (such as (?i) and (?m) to control regex options.
     * @return elements matching the supplied regular expression.
     * @see Element#text()
     */
    public Elements getElementsMatchingText(String regex) {
        Pattern pattern;
        try {
            pattern = Pattern.compile(regex);
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + regex, e);
        }
        return getElementsMatchingText(pattern);
    }
    
    /**
     * Find elements whose own text matches the supplied regular expression.
     * @param pattern regular expression to match text against
     * @return elements matching the supplied regular expression.
     * @see Element#ownText()
     */
    public Elements getElementsMatchingOwnText(Pattern pattern) {
        return Collector.collect(new Evaluator.MatchesOwn(pattern), this);
    }
    
    /**
     * Find elements whose text matches the supplied regular expression.
     * @param regex regular expression to match text against. You can use <a href="http://java.sun.com/docs/books/tutorial/essential/regex/pattern.html#embedded">embedded flags</a> (such as (?i) and (?m) to control regex options.
     * @return elements matching the supplied regular expression.
     * @see Element#ownText()
     */
    public Elements getElementsMatchingOwnText(String regex) {
        Pattern pattern;
        try {
            pattern = Pattern.compile(regex);
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + regex, e);
        }
        return getElementsMatchingOwnText(pattern);
    }
    
    /**
     * Find all elements under this element (including self, and children of children).
     * 
     * @return all elements
     */
    public Elements getAllElements() {
        return Collector.collect(new Evaluator.AllElements(), this);
    }

    /**
     * Gets the combined text of this element and all its children. Whitespace is normalized and trimmed.
     * <p>
     * For example, given HTML {@code <p>Hello  <b>there</b> now! </p>}, {@code p.text()} returns {@code "Hello there now!"}
     *
     * @return unencoded text, or empty string if none.
     * @see #ownText()
     * @see #textNodes()
     */
    public String text() {
        final StringBuilder accum = new StringBuilder();
        NodeTraversor.traverse(new NodeVisitor() {
            public void head(Node node, int depth) {
                int PROBE_START_LINE_1027 = 1036;
				org.jsoup.nodes.Node p_node_297_line_1027 = node;
				boolean element_1_expr87_line_1027 = p_node_297_line_1027 instanceof TextNode;
				int PROBE_END_LINE_1027 = 1036;
				if (element_1_expr87_line_1027) {
                    int PROBE_START_LINE_1028 = 1028;
					org.jsoup.nodes.Node p_node_297_line_1028 = node;
					int PROBE_END_LINE_1028 = 1028;
					TextNode textNode = (TextNode) p_node_297_line_1028;
                    int PROBE_START_LINE_1029 = 1029;
					StringBuilder v_accum_296_line_1029 = accum;
					org.jsoup.nodes.TextNode v_text_node_299_line_1029 = textNode;
					int PROBE_END_LINE_1029 = 1029;
					appendNormalisedText(v_accum_296_line_1029, v_text_node_299_line_1029);
                } else {
					int PROBE_START_LINE_1030 = 1036;
					org.jsoup.nodes.Node p_node_297_line_1030 = node;
					boolean element_1_expr90_line_1030 = p_node_297_line_1030 instanceof Element;
					int PROBE_END_LINE_1030 = 1036;
					if (element_1_expr90_line_1030) {
						int PROBE_START_LINE_1031 = 1031;
						org.jsoup.nodes.Node p_node_297_line_1031 = node;
						int PROBE_END_LINE_1031 = 1031;
						Element element = (Element) p_node_297_line_1031;
						int PROBE_START_LINE_1032 = 1035;
						StringBuilder v_accum_296_line_1032 = accum;
						int element_1_expr95_line_1032 = v_accum_296_line_1032.length();
						boolean element_1_expr94_line_1032 = element_1_expr95_line_1032 > 0;
						boolean element_1_expr93_line_1032 = element_1_expr94_line_1032
								&& (element.isBlock() || element.tag.getName().equals("br"));
						boolean element_1_expr92_line_1032 = element_1_expr93_line_1032
								&& !TextNode.lastCharIsWhitespace(accum);
						int PROBE_END_LINE_1032 = 1035;
						if (element_1_expr92_line_1032)
							accum.append(' ');
					}
				}
            }

            public void tail(Node node, int depth) {
            }
        }, this);
        int PROBE_START_LINE_1042 = 1042;
		StringBuilder v_accum_296_line_1042 = accum;
		String element_1_expr97_line_1042 = v_accum_296_line_1042.toString();
		String element_1_expr96_line_1042 = element_1_expr97_line_1042.trim();
		int PROBE_END_LINE_1042 = 1042;
		return element_1_expr96_line_1042;
    }

    /**
     * Gets the text owned by this element only; does not get the combined text of all children.
     * <p>
     * For example, given HTML {@code <p>Hello <b>there</b> now!</p>}, {@code p.ownText()} returns {@code "Hello now!"},
     * whereas {@code p.text()} returns {@code "Hello there now!"}.
     * Note that the text within the {@code b} element is not returned, as it is not a direct child of the {@code p} element.
     *
     * @return unencoded text, or empty string if none.
     * @see #text()
     * @see #textNodes()
     */
    public String ownText() {
        StringBuilder sb = new StringBuilder();
        ownText(sb);
        return sb.toString().trim();
    }

    private void ownText(StringBuilder accum) {
        for (Node child : childNodes) {
            if (child instanceof TextNode) {
                TextNode textNode = (TextNode) child;
                appendNormalisedText(accum, textNode);
            } else if (child instanceof Element) {
                appendWhitespaceIfBr((Element) child, accum);
            }
        }
    }

    private static void appendNormalisedText(StringBuilder accum, TextNode textNode) {
        int PROBE_START_LINE_1074 = 1074;
		org.jsoup.nodes.TextNode p_text_node_305_line_1074 = textNode;
		String element_1_expr98_line_1074 = p_text_node_305_line_1074.getWholeText();
		int PROBE_END_LINE_1074 = 1074;
		String text = element_1_expr98_line_1074;

        int PROBE_START_LINE_1076 = 1079;
		org.jsoup.nodes.TextNode p_text_node_305_line_1076 = textNode;
		org.jsoup.nodes.Node q_parent_node_10_line_1076 = p_text_node_305_line_1076.parentNode;
		boolean element_1_expr99_line_1076 = preserveWhitespace(q_parent_node_10_line_1076);
		int PROBE_END_LINE_1076 = 1079;
		if (element_1_expr99_line_1076)
            accum.append(text);
		else {
			int PROBE_START_LINE_1079 = 1079;
			StringBuilder p_accum_304_line_1079 = accum;
			String v_text_306_line_1079 = text;
			StringBuilder p_accum_304_line_1079_v1 = accum;
			boolean element_1_expr101_line_1079 = TextNode.lastCharIsWhitespace(p_accum_304_line_1079_v1);
			int PROBE_END_LINE_1079 = 1079;
			StringUtil.appendNormalisedWhitespace(p_accum_304_line_1079, v_text_306_line_1079,
					element_1_expr101_line_1079);
		}
    }

    private static void appendWhitespaceIfBr(Element element, StringBuilder accum) {
        if (element.tag.getName().equals("br") && !TextNode.lastCharIsWhitespace(accum))
            accum.append(" ");
    }

    static boolean preserveWhitespace(Node node) {
        int PROBE_START_LINE_1089 = 1093;
		org.jsoup.nodes.Node p_node_309_line_1089 = node;
		boolean element_1_expr103_line_1089 = p_node_309_line_1089 != null;
		boolean element_1_expr104_line_1089 = true;
		if (element_1_expr103_line_1089) {
			org.jsoup.nodes.Node p_node_309_line_1089_v1 = node;
			element_1_expr104_line_1089 = p_node_309_line_1089_v1 instanceof Element;
		}
		boolean element_1_expr102_line_1089 = element_1_expr103_line_1089 && element_1_expr104_line_1089;
		int PROBE_END_LINE_1089 = 1093;
		// looks only at this element and one level up, to prevent recursion & needless stack searches
        if (element_1_expr102_line_1089) {
            int PROBE_START_LINE_1090 = 1090;
			org.jsoup.nodes.Node p_node_309_line_1090 = node;
			int PROBE_END_LINE_1090 = 1090;
			Element element = (Element) p_node_309_line_1090;
            int PROBE_START_LINE_1091 = 1092;
			org.jsoup.nodes.Element v_element_310_line_1091 = element;
			org.jsoup.parser.Tag q_tag_11_line_1091 = v_element_310_line_1091.tag;
			boolean element_1_expr107_line_1091 = q_tag_11_line_1091.preserveWhitespace();
			boolean element_1_expr106_line_1091 = element_1_expr107_line_1091
					|| element.parent() != null && element.parent().tag.preserveWhitespace();
			int PROBE_END_LINE_1091 = 1092;
			return element_1_expr106_line_1091;
        }
        return false;
    }

    /**
     * Set the text of this element. Any existing contents (text or elements) will be cleared
     * @param text unencoded text
     * @return this element
     */
    public Element text(String text) {
        Validate.notNull(text);

        empty();
        TextNode textNode = new TextNode(text);
        appendChild(textNode);

        return this;
    }

    /**
     Test if this element has any text content (that is not just whitespace).
     @return true if element has non-blank text content.
     */
    public boolean hasText() {
        for (Node child: childNodes) {
            if (child instanceof TextNode) {
                TextNode textNode = (TextNode) child;
                if (!textNode.isBlank())
                    return true;
            } else if (child instanceof Element) {
                Element el = (Element) child;
                if (el.hasText())
                    return true;
            }
        }
        return false;
    }

    /**
     * Get the combined data of this element. Data is e.g. the inside of a {@code script} tag. Note that data is NOT the
     * text of the element. Use {@link #text()} to get the text that would be visible to a user, and {@link #data()}
     * for the contents of scripts, comments, CSS styles, etc.
     *
     * @return the data, or empty string if none
     *
     * @see #dataNodes()
     */
    public String data() {
        StringBuilder sb = new StringBuilder();

        for (Node childNode : childNodes) {
            if (childNode instanceof DataNode) {
                DataNode data = (DataNode) childNode;
                sb.append(data.getWholeData());
            } else if (childNode instanceof Comment) {
                Comment comment = (Comment) childNode;
                sb.append(comment.getData());
            } else if (childNode instanceof Element) {
                Element element = (Element) childNode;
                String elementData = element.data();
                sb.append(elementData);
            }
        }
        return sb.toString();
    }   

    /**
     * Gets the literal value of this element's "class" attribute, which may include multiple class names, space
     * separated. (E.g. on <code>&lt;div class="header gray"&gt;</code> returns, "<code>header gray</code>")
     * @return The literal class attribute, or <b>empty string</b> if no class attribute set.
     */
    public String className() {
        return attr("class").trim();
    }

    /**
     * Get all of the element's class names. E.g. on element {@code <div class="header gray">},
     * returns a set of two elements {@code "header", "gray"}. Note that modifications to this set are not pushed to
     * the backing {@code class} attribute; use the {@link #classNames(java.util.Set)} method to persist them.
     * @return set of classnames, empty if no class attribute
     */
    public Set<String> classNames() {
    	String[] names = classSplit.split(className());
    	Set<String> classNames = new LinkedHashSet<>(Arrays.asList(names));
    	classNames.remove(""); // if classNames() was empty, would include an empty class

        return classNames;
    }

    /**
     Set the element's {@code class} attribute to the supplied class names.
     @param classNames set of classes
     @return this element, for chaining
     */
    public Element classNames(Set<String> classNames) {
        Validate.notNull(classNames);
        attributes().put("class", StringUtil.join(classNames, " "));
        return this;
    }

    /**
     * Tests if this element has a class. Case insensitive.
     * @param className name of class to check for
     * @return true if it does, false if not
     */
    // performance sensitive
    public boolean hasClass(String className) {
        final String classAttr = attributes().getIgnoreCase("class");
        final int len = classAttr.length();
        final int wantLen = className.length();

        if (len == 0 || len < wantLen) {
            return false;
        }

        // if both lengths are equal, only need compare the className with the attribute
        if (len == wantLen) {
            return className.equalsIgnoreCase(classAttr);
        }

        // otherwise, scan for whitespace and compare regions (with no string or arraylist allocations)
        boolean inClass = false;
        int start = 0;
        for (int i = 0; i < len; i++) {
            if (Character.isWhitespace(classAttr.charAt(i))) {
                if (inClass) {
                    // white space ends a class name, compare it with the requested one, ignore case
                    if (i - start == wantLen && classAttr.regionMatches(true, start, className, 0, wantLen)) {
                        return true;
                    }
                    inClass = false;
                }
            } else {
                if (!inClass) {
                    // we're in a class name : keep the start of the substring
                    inClass = true;
                    start = i;
                }
            }
        }

        // check the last entry
        if (inClass && len - start == wantLen) {
            return classAttr.regionMatches(true, start, className, 0, wantLen);
        }

        return false;
    }

    /**
     Add a class name to this element's {@code class} attribute.
     @param className class name to add
     @return this element
     */
    public Element addClass(String className) {
        Validate.notNull(className);

        Set<String> classes = classNames();
        classes.add(className);
        classNames(classes);

        return this;
    }

    /**
     Remove a class name from this element's {@code class} attribute.
     @param className class name to remove
     @return this element
     */
    public Element removeClass(String className) {
        Validate.notNull(className);

        Set<String> classes = classNames();
        classes.remove(className);
        classNames(classes);

        return this;
    }

    /**
     Toggle a class name on this element's {@code class} attribute: if present, remove it; otherwise add it.
     @param className class name to toggle
     @return this element
     */
    public Element toggleClass(String className) {
        Validate.notNull(className);

        Set<String> classes = classNames();
        if (classes.contains(className))
            classes.remove(className);
        else
            classes.add(className);
        classNames(classes);

        return this;
    }
    
    /**
     * Get the value of a form element (input, textarea, etc).
     * @return the value of the form element, or empty string if not set.
     */
    public String val() {
        if (tagName().equals("textarea"))
            return text();
        else
            return attr("value");
    }
    
    /**
     * Set the value of a form element (input, textarea, etc).
     * @param value value to set
     * @return this element (for chaining)
     */
    public Element val(String value) {
        if (tagName().equals("textarea"))
            text(value);
        else
            attr("value", value);
        return this;
    }

    void outerHtmlHead(final Appendable accum, int depth, final Document.OutputSettings out) throws IOException {
        if (out.prettyPrint() && (tag.formatAsBlock() || (parent() != null && parent().tag().formatAsBlock()) || out.outline())) {
            if (accum instanceof StringBuilder) {
                if (((StringBuilder) accum).length() > 0)
                    indent(accum, depth, out);
            } else {
                indent(accum, depth, out);
            }
        }
        accum.append('<').append(tagName());
        if (attributes != null) attributes.html(accum, out);

        // selfclosing includes unknown tags, isEmpty defines tags that are always empty
        if (childNodes.isEmpty() && tag.isSelfClosing()) {
            if (out.syntax() == Document.OutputSettings.Syntax.html && tag.isEmpty())
                accum.append('>');
            else
                accum.append(" />"); // <img> in html, <img /> in xml
        }
        else
            accum.append('>');
    }

	void outerHtmlTail(Appendable accum, int depth, Document.OutputSettings out) throws IOException {
        if (!(childNodes.isEmpty() && tag.isSelfClosing())) {
            if (out.prettyPrint() && (!childNodes.isEmpty() && (
                    tag.formatAsBlock() || (out.outline() && (childNodes.size()>1 || (childNodes.size()==1 && !(childNodes.get(0) instanceof TextNode))))
            )))
                indent(accum, depth, out);
            accum.append("</").append(tagName()).append('>');
        }
    }

    /**
     * Retrieves the element's inner HTML. E.g. on a {@code <div>} with one empty {@code <p>}, would return
     * {@code <p></p>}. (Whereas {@link #outerHtml()} would return {@code <div><p></p></div>}.)
     * 
     * @return String of HTML.
     * @see #outerHtml()
     */
    public String html() {
        StringBuilder accum = StringUtil.stringBuilder();
        html(accum);
        return getOutputSettings().prettyPrint() ? accum.toString().trim() : accum.toString();
    }

    private void html(StringBuilder accum) {
        for (Node node : childNodes)
            node.outerHtml(accum);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public <T extends Appendable> T html(T appendable) {
        for (Node node : childNodes)
            node.outerHtml(appendable);

        return appendable;
    }
    
    /**
     * Set this element's inner HTML. Clears the existing HTML first.
     * @param html HTML to parse and set into this element
     * @return this element
     * @see #append(String)
     */
    public Element html(String html) {
        empty();
        append(html);
        return this;
    }

	public String toString() {
        return outerHtml();
    }

    @Override
    public Element clone() {
        int PROBE_START_LINE_1394 = 1394;
		org.jsoup.nodes.Node element_1_expr109_line_1394 = super.clone();
		int PROBE_END_LINE_1394 = 1394;
		return (Element) element_1_expr109_line_1394;
    }

    @Override
    protected Element doClone(Node parent) {
        int PROBE_START_LINE_1399 = 1399;
		org.jsoup.nodes.Node p_parent_327_line_1399 = parent;
		org.jsoup.nodes.Node element_1_expr111_line_1399 = super.doClone(p_parent_327_line_1399);
		int PROBE_END_LINE_1399 = 1399;
		Element clone = (Element) element_1_expr111_line_1399;
        int PROBE_START_LINE_1400 = 1400;
		org.jsoup.nodes.Attributes f_attributes_220_line_1400 = attributes;
		boolean element_1_expr114_line_1400 = f_attributes_220_line_1400 != null;
		org.jsoup.nodes.Attributes element_1_expr115_line_1400 = null;
		if (element_1_expr114_line_1400) {
			org.jsoup.nodes.Attributes f_attributes_220_line_1400_v1 = attributes;
			element_1_expr115_line_1400 = f_attributes_220_line_1400_v1.clone();
		}
		org.jsoup.nodes.Attributes element_1_expr113_line_1400 = element_1_expr114_line_1400
				? element_1_expr115_line_1400
				: null;
		int PROBE_END_LINE_1400 = 1400;
		clone.attributes = element_1_expr113_line_1400;
        int PROBE_START_LINE_1401 = 1401;
		String f_base_uri_219_line_1401 = baseUri;
		int PROBE_END_LINE_1401 = 1401;
		clone.baseUri = f_base_uri_219_line_1401;
        int PROBE_START_LINE_1402 = 1402;
		List<org.jsoup.nodes.Node> f_child_nodes_218_line_1402 = childNodes;
		int element_1_expr119_line_1402 = f_child_nodes_218_line_1402.size();
		int PROBE_END_LINE_1402 = 1402;
		clone.childNodes = new NodeList(element_1_expr119_line_1402);
        int PROBE_START_LINE_1403 = 1403;
		org.jsoup.nodes.Element v_clone_328_line_1403 = clone;
		List<org.jsoup.nodes.Node> q_child_nodes_15_line_1403 = v_clone_328_line_1403.childNodes;
		List<org.jsoup.nodes.Node> f_child_nodes_218_line_1403 = childNodes;
		int PROBE_END_LINE_1403 = 1403;
		q_child_nodes_15_line_1403.addAll(f_child_nodes_218_line_1403);

        int PROBE_START_LINE_1405 = 1405;
		org.jsoup.nodes.Element v_clone_328_line_1405 = clone;
		int PROBE_END_LINE_1405 = 1405;
		return v_clone_328_line_1405;
    }

    private final class NodeList extends ChangeNotifyingArrayList<Node> {
        NodeList(int initialCapacity) {
            super(initialCapacity);
        }

        public void onContentsChanged() {
            nodelistChanged();
        }
    }
}
