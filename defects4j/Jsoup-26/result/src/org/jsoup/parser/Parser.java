package org.jsoup.parser;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;

import java.util.List;

/**
 * Parses HTML into a {@link org.jsoup.nodes.Document}. Generally best to use one of the  more convenient parse methods
 * in {@link org.jsoup.Jsoup}.
 */
public class Parser {
    private static final int DEFAULT_MAX_ERRORS = 0; // by default, error tracking is disabled.
    
    private TreeBuilder treeBuilder;
    private int maxErrors = DEFAULT_MAX_ERRORS;
    private ParseErrorList errors;

    /**
     * Create a new Parser, using the specified TreeBuilder
     * @param treeBuilder TreeBuilder to use to parse input into Documents.
     */
    public Parser(TreeBuilder treeBuilder) {
        this.treeBuilder = treeBuilder;
    }
    
    public Document parseInput(String html, String baseUri) {
        errors = isTrackErrors() ? ParseErrorList.tracking(maxErrors) : ParseErrorList.noTracking();
        Document doc = treeBuilder.parse(html, baseUri, errors);
        return doc;
    }

    // gets & sets
    /**
     * Get the TreeBuilder currently in use.
     * @return current TreeBuilder.
     */
    public TreeBuilder getTreeBuilder() {
        return treeBuilder;
    }

    /**
     * Update the TreeBuilder used when parsing content.
     * @param treeBuilder current TreeBuilder
     * @return this, for chaining
     */
    public Parser setTreeBuilder(TreeBuilder treeBuilder) {
        this.treeBuilder = treeBuilder;
        return this;
    }

    /**
     * Check if parse error tracking is enabled.
     * @return current track error state.
     */
    public boolean isTrackErrors() {
        return maxErrors > 0;
    }

    /**
     * Enable or disable parse error tracking for the next parse.
     * @param maxErrors the maximum number of errors to track. Set to 0 to disable.
     * @return this, for chaining
     */
    public Parser setTrackErrors(int maxErrors) {
        this.maxErrors = maxErrors;
        return this;
    }

    /**
     * Retrieve the parse errors, if any, from the last parse.
     * @return list of parse errors, up to the size of the maximum errors tracked.
     */
    public List<ParseError> getErrors() {
        return errors;
    }

    // static parse functions below
    /**
     * Parse HTML into a Document.
     *
     * @param html HTML to parse
     * @param baseUri base URI of document (i.e. original fetch location), for resolving relative URLs.
     *
     * @return parsed Document
     */
    public static Document parse(String html, String baseUri) {
        TreeBuilder treeBuilder = new HtmlTreeBuilder();
        int PROBE_START_LINE_90 = 90;
		org.jsoup.parser.TreeBuilder v_tree_builder_563_line_90 = treeBuilder;
		String p_html_561_line_90 = html;
		String p_base_uri_562_line_90 = baseUri;
		org.jsoup.parser.ParseErrorList parser_1_expr3_line_90 = ParseErrorList.noTracking();
		org.jsoup.nodes.Document parser_1_expr2_line_90 = v_tree_builder_563_line_90.parse(p_html_561_line_90,
				p_base_uri_562_line_90, parser_1_expr3_line_90);
		int PROBE_END_LINE_90 = 90;
		return parser_1_expr2_line_90;
    }

    /**
     * Parse a fragment of HTML into a list of nodes. The context element, if supplied, supplies parsing context.
     *
     * @param fragmentHtml the fragment of HTML to parse
     * @param context (optional) the element that this HTML fragment is being parsed for (i.e. for inner HTML). This
     * provides stack context (for implicit element creation).
     * @param baseUri base URI of document (i.e. original fetch location), for resolving relative URLs.
     *
     * @return list of nodes parsed from the input HTML. Note that the context element, if supplied, is not modified.
     */
    public static List<Node> parseFragment(String fragmentHtml, Element context, String baseUri) {
        HtmlTreeBuilder treeBuilder = new HtmlTreeBuilder();
        int PROBE_START_LINE_105 = 105;
		org.jsoup.parser.HtmlTreeBuilder v_tree_builder_567_line_105 = treeBuilder;
		String p_fragment_html_564_line_105 = fragmentHtml;
		org.jsoup.nodes.Element p_context_565_line_105 = context;
		String p_base_uri_566_line_105 = baseUri;
		org.jsoup.parser.ParseErrorList parser_1_expr6_line_105 = ParseErrorList.noTracking();
		List<org.jsoup.nodes.Node> parser_1_expr5_line_105 = v_tree_builder_567_line_105.parseFragment(
				p_fragment_html_564_line_105, p_context_565_line_105, p_base_uri_566_line_105, parser_1_expr6_line_105);
		int PROBE_END_LINE_105 = 105;
		return parser_1_expr5_line_105;
    }

    /**
     * Parse a fragment of HTML into the {@code body} of a Document.
     *
     * @param bodyHtml fragment of HTML
     * @param baseUri base URI of document (i.e. original fetch location), for resolving relative URLs.
     *
     * @return Document, with empty head, and HTML parsed into body
     */
    public static Document parseBodyFragment(String bodyHtml, String baseUri) {
        int PROBE_START_LINE_117 = 117;
		String p_base_uri_569_line_117 = baseUri;
		Document parser_1_expr7_line_117 = Document.createShell(p_base_uri_569_line_117);
		int PROBE_END_LINE_117 = 117;
		Document doc = parser_1_expr7_line_117;
        int PROBE_START_LINE_118 = 118;
		org.jsoup.nodes.Document v_doc_570_line_118 = doc;
		Element parser_1_expr8_line_118 = v_doc_570_line_118.body();
		int PROBE_END_LINE_118 = 118;
		Element body = parser_1_expr8_line_118;
        int PROBE_START_LINE_119 = 119;
		String p_body_html_568_line_119 = bodyHtml;
		org.jsoup.nodes.Element v_body_571_line_119 = body;
		String p_base_uri_569_line_119 = baseUri;
		List<Node> parser_1_expr9_line_119 = parseFragment(p_body_html_568_line_119, v_body_571_line_119,
				p_base_uri_569_line_119);
		int PROBE_END_LINE_119 = 119;
		List<Node> nodeList = parser_1_expr9_line_119;
        int PROBE_START_LINE_120 = 120;
		List<org.jsoup.nodes.Node> v_node_list_572_line_120 = nodeList;
		List<org.jsoup.nodes.Node> v_node_list_572_line_120_v1 = nodeList;
		int parser_1_expr12_line_120 = v_node_list_572_line_120_v1.size();
		Node[] parser_1_expr10_line_120 = v_node_list_572_line_120.toArray(new Node[parser_1_expr12_line_120]);
		int PROBE_END_LINE_120 = 120;
		Node[] nodes = parser_1_expr10_line_120; // the node list gets modified when re-parented
        int PROBE_START_LINE_121 = 123;
		org.jsoup.nodes.Node[] v_nodes_573_line_121 = nodes;
		int PROBE_END_LINE_121 = 123;
		for (Node node : v_nodes_573_line_121) {
            int PROBE_START_LINE_122 = 122;
			org.jsoup.nodes.Element v_body_571_line_122 = body;
			org.jsoup.nodes.Node v_node_574_line_122 = node;
			int PROBE_END_LINE_122 = 122;
			v_body_571_line_122.appendChild(v_node_574_line_122);
        }
        int PROBE_START_LINE_124 = 124;
		org.jsoup.nodes.Document v_doc_570_line_124 = doc;
		int PROBE_END_LINE_124 = 124;
		return v_doc_570_line_124;
    }

    /**
     * @param bodyHtml HTML to parse
     * @param baseUri baseUri base URI of document (i.e. original fetch location), for resolving relative URLs.
     *
     * @return parsed Document
     * @deprecated Use {@link #parseBodyFragment} or {@link #parseFragment} instead.
     */
    public static Document parseBodyFragmentRelaxed(String bodyHtml, String baseUri) {
        return parse(bodyHtml, baseUri);
    }
    
    // builders

    /**
     * Create a new HTML parser. This parser treats input as HTML5, and enforces the creation of a normalised document,
     * based on a knowledge of the semantics of the incoming tags.
     * @return a new HTML parser.
     */
    public static Parser htmlParser() {
        return new Parser(new HtmlTreeBuilder());
    }

    /**
     * Create a new XML parser. This parser assumes no knowledge of the incoming tags and does not treat it as HTML,
     * rather creates a simple tree directly from the input.
     * @return a new simple XML parser.
     */
    public static Parser xmlParser() {
        return new Parser(new XmlTreeBuilder());
    }
}
