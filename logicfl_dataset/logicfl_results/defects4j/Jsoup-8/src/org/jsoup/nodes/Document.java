package org.jsoup.nodes;

import org.jsoup.helper.Validate;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.List;

/**
 A HTML Document.

 @author Jonathan Hedley, jonathan@hedley.net */
public class Document extends Element {
    private OutputSettings outputSettings = new OutputSettings();

    /**
     Create a new, empty Document.
     @param baseUri base URI of document
     @see org.jsoup.Jsoup#parse
     @see #createShell
     */
    public Document(String baseUri) {
        super(Tag.valueOf("#root"), baseUri);
    }

    /**
     Create a valid, empty shell of a document, suitable for adding more elements to.
     @param baseUri baseUri of document
     @return document with html, head, and body elements.
     */
    static public Document createShell(String baseUri) {
        Validate.notNull(baseUri);

        Document doc = new Document(baseUri);
        Element html = doc.appendElement("html");
        html.appendElement("head");
        html.appendElement("body");

        return doc;
    }

    /**
     Accessor to the document's {@code head} element.
     @return {@code head}
     */
    public Element head() {
        int PROBE_START_LINE_50 = 50;
		org.jsoup.nodes.Element document_1_expr4_line_50 = findFirstElementByTagName("head", this);
		int PROBE_END_LINE_50 = 50;
		return document_1_expr4_line_50;
    }

    /**
     Accessor to the document's {@code body} element.
     @return {@code body}
     */
    public Element body() {
        int PROBE_START_LINE_58 = 58;
		org.jsoup.nodes.Element document_1_expr6_line_58 = findFirstElementByTagName("body", this);
		int PROBE_END_LINE_58 = 58;
		return document_1_expr6_line_58;
    }

    /**
     Get the string contents of the document's {@code title} element.
     @return Trimed title, or empty string if none set.
     */
    public String title() {
        Element titleEl = getElementsByTag("title").first();
        return titleEl != null ? titleEl.text().trim() : "";
    }

    /**
     Set the document's {@code title} element. Updates the existing element, or adds {@code title} to {@code head} if
     not present
     @param title string to set as title
     */
    public void title(String title) {
        Validate.notNull(title);
        Element titleEl = getElementsByTag("title").first();
        if (titleEl == null) { // add to head
            head().appendElement("title").text(title);
        } else {
            titleEl.text(title);
        }
    }

    /**
     Create a new Element, with this document's base uri. Does not make the new element a child of this document.
     @param tagName element tag name (e.g. {@code a})
     @return new element
     */
    public Element createElement(String tagName) {
        return new Element(Tag.valueOf(tagName), this.baseUri());
    }

    /**
     Normalise the document. This happens after the parse phase so generally does not need to be called.
     Moves any text content that is not in the body element into the body.
     @return this document after normalisation
     */
    public Document normalise() {
        int PROBE_START_LINE_100 = 100;
		Element document_1_expr8_line_100 = findFirstElementByTagName("html", this);
		int PROBE_END_LINE_100 = 100;
		Element htmlEl = document_1_expr8_line_100;
        int PROBE_START_LINE_101 = 102;
		org.jsoup.nodes.Element v_html_el_80_line_101 = htmlEl;
		boolean document_1_expr10_line_101 = v_html_el_80_line_101 == null;
		int PROBE_END_LINE_101 = 102;
		if (document_1_expr10_line_101)
            htmlEl = appendElement("html");
        int PROBE_START_LINE_103 = 104;
		org.jsoup.nodes.Element document_1_expr12_line_103 = head();
		boolean document_1_expr11_line_103 = document_1_expr12_line_103 == null;
		int PROBE_END_LINE_103 = 104;
		if (document_1_expr11_line_103)
            htmlEl.prependElement("head");
        int PROBE_START_LINE_105 = 106;
		org.jsoup.nodes.Element document_1_expr14_line_105 = body();
		boolean document_1_expr13_line_105 = document_1_expr14_line_105 == null;
		int PROBE_END_LINE_105 = 106;
		if (document_1_expr13_line_105)
            htmlEl.appendElement("body");

        int PROBE_START_LINE_110 = 110;
		org.jsoup.nodes.Element document_1_expr16_line_110 = head();
		int PROBE_END_LINE_110 = 110;
		// pull text nodes out of root, html, and head els, and push into body. non-text nodes are already taken care
        // of. do in inverse order to maintain text order.
        normaliseTextNodes(document_1_expr16_line_110);
        int PROBE_START_LINE_111 = 111;
		org.jsoup.nodes.Element v_html_el_80_line_111 = htmlEl;
		int PROBE_END_LINE_111 = 111;
		normaliseTextNodes(v_html_el_80_line_111);
        normaliseTextNodes(this);

        int PROBE_START_LINE_114 = 114;
		org.jsoup.nodes.Element v_html_el_80_line_114 = htmlEl;
		int PROBE_END_LINE_114 = 114;
		normaliseStructure("head", v_html_el_80_line_114);
        int PROBE_START_LINE_115 = 115;
		org.jsoup.nodes.Element v_html_el_80_line_115 = htmlEl;
		int PROBE_END_LINE_115 = 115;
		normaliseStructure("body", v_html_el_80_line_115);
        
        return this;
    }

    // does not recurse.
    private void normaliseTextNodes(Element element) {
        List<Node> toMove = new ArrayList<Node>();
        int PROBE_START_LINE_123 = 129;
		org.jsoup.nodes.Element p_element_81_line_123 = element;
		List<org.jsoup.nodes.Node> q_child_nodes_2_line_123 = p_element_81_line_123.childNodes;
		int PROBE_END_LINE_123 = 129;
		for (Node node: q_child_nodes_2_line_123) {
            int PROBE_START_LINE_124 = 128;
			org.jsoup.nodes.Node v_node_83_line_124 = node;
			boolean document_1_expr24_line_124 = v_node_83_line_124 instanceof TextNode;
			int PROBE_END_LINE_124 = 128;
			if (document_1_expr24_line_124) {
                TextNode tn = (TextNode) node;
                if (!tn.isBlank())
                    toMove.add(tn);
            }
        }

        int PROBE_START_LINE_130 = 130;
		boolean FOR_STMT_TOGGLE_LINE_131 = false;
		int PROBE_END_LINE_130 = 130;
		for (int i = 0; true;) {
            int PROBE_START_LINE_132 = 132;
			if (!FOR_STMT_TOGGLE_LINE_131) {
				FOR_STMT_TOGGLE_LINE_131 = true;
				List<org.jsoup.nodes.Node> v_to_move_82_line_131 = toMove;
				int document_1_expr27_line_131 = v_to_move_82_line_131.size();
				int document_1_expr26_line_131 = document_1_expr27_line_131 - 1;
				i = document_1_expr26_line_131;
			} else {
				if (FOR_STMT_TOGGLE_LINE_131) {
					i--;
				} else {
					FOR_STMT_TOGGLE_LINE_131 = true;
				}
			}
			int v_i_84_line_131 = i;
			boolean document_1_expr28_line_131 = v_i_84_line_131 >= 0;
			if (!(document_1_expr28_line_131)) {
				break;
			}
			int PROBE_END_LINE_132 = 132;
			Node node = toMove.get(i);
            element.removeChild(node);
            body().prependChild(new TextNode(" ", ""));
            body().prependChild(node);
        }
    }

    // merge multiple <head> or <body> contents into one, delete the remainder, and ensure they are owned by <html>
    private void normaliseStructure(String tag, Element htmlEl) {
        int PROBE_START_LINE_141 = 141;
		String p_tag_85_line_141 = tag;
		Elements document_1_expr30_line_141 = this.getElementsByTag(p_tag_85_line_141);
		int PROBE_END_LINE_141 = 141;
		Elements elements = document_1_expr30_line_141;
        int PROBE_START_LINE_142 = 142;
		org.jsoup.select.Elements v_elements_87_line_142 = elements;
		Element document_1_expr32_line_142 = v_elements_87_line_142.first();
		int PROBE_END_LINE_142 = 142;
		Element master = document_1_expr32_line_142; // will always be available as created above if not existent
        int PROBE_START_LINE_143 = 154;
		org.jsoup.select.Elements v_elements_87_line_143 = elements;
		int document_1_expr34_line_143 = v_elements_87_line_143.size();
		boolean document_1_expr33_line_143 = document_1_expr34_line_143 > 1;
		int PROBE_END_LINE_143 = 154;
		if (document_1_expr33_line_143) { // dupes, move contents to master
            List<Node> toMove = new ArrayList<Node>();
            for (int i = 1; i < elements.size(); i++) {
                Node dupe = elements.get(i);
                for (Node node : dupe.childNodes)
                    toMove.add(node);
                dupe.remove();
            }

            for (Node dupe : toMove)
                master.appendChild(dupe);
        }
        int PROBE_START_LINE_156 = 158;
		org.jsoup.nodes.Element v_master_88_line_156 = master;
		org.jsoup.nodes.Element document_1_expr37_line_156 = v_master_88_line_156.parent();
		org.jsoup.nodes.Element p_html_el_86_line_156 = htmlEl;
		boolean document_1_expr36_line_156 = document_1_expr37_line_156.equals(p_html_el_86_line_156);
		boolean document_1_expr35_line_156 = !document_1_expr36_line_156;
		int PROBE_END_LINE_156 = 158;
		// ensure parented by <html>
        if (document_1_expr35_line_156) {
            htmlEl.appendChild(master); // includes remove()            
        }
    }

    // fast method to get first by tag name, used for html, head, body finders
    private Element findFirstElementByTagName(String tag, Node node) {
        int PROBE_START_LINE_163 = 171;
		org.jsoup.nodes.Node p_node_90_line_163 = node;
		String document_1_expr39_line_163 = p_node_90_line_163.nodeName();
		String p_tag_89_line_163 = tag;
		boolean document_1_expr38_line_163 = document_1_expr39_line_163.equals(p_tag_89_line_163);
		int PROBE_END_LINE_163 = 171;
		if (document_1_expr38_line_163) {
			int PROBE_START_LINE_164 = 164;
			org.jsoup.nodes.Node p_node_90_line_164 = node;
			int PROBE_END_LINE_164 = 164;
			return (Element) p_node_90_line_164;
		} else {
            int PROBE_START_LINE_166 = 170;
			org.jsoup.nodes.Node p_node_90_line_166 = node;
			List<org.jsoup.nodes.Node> q_child_nodes_3_line_166 = p_node_90_line_166.childNodes;
			int PROBE_END_LINE_166 = 170;
			for (Node child: q_child_nodes_3_line_166) {
                int PROBE_START_LINE_167 = 167;
				String p_tag_89_line_167 = tag;
				org.jsoup.nodes.Node v_child_91_line_167 = child;
				Element document_1_expr41_line_167 = findFirstElementByTagName(p_tag_89_line_167, v_child_91_line_167);
				int PROBE_END_LINE_167 = 167;
				Element found = document_1_expr41_line_167;
                int PROBE_START_LINE_168 = 169;
				org.jsoup.nodes.Element v_found_92_line_168 = found;
				boolean document_1_expr42_line_168 = v_found_92_line_168 != null;
				int PROBE_END_LINE_168 = 169;
				if (document_1_expr42_line_168) {
					int PROBE_START_LINE_169 = 169;
					org.jsoup.nodes.Element v_found_92_line_169 = found;
					int PROBE_END_LINE_169 = 169;
					return v_found_92_line_169;
				}
            }
        }
        return null;
    }

    @Override
    public String outerHtml() {
        return super.html(); // no outer wrapper tag
    }

    /**
     Set the text of the {@code body} of this document. Any existing nodes within the body will be cleared.
     @param text unencoded text
     @return this document
     */
    @Override
    public Element text(String text) {
        body().text(text); // overridden to not nuke doc structure
        return this;
    }

    @Override
    public String nodeName() {
        return "#document";
    }

    /**
     * A Document's output settings control the form of the text() and html() methods.
     */
    public class OutputSettings {
        int PROBE_START_LINE_200 = 200;

		private org.jsoup.nodes.Entities.EscapeMode q_base_4_line_200 = Entities.EscapeMode.base;

		int PROBE_END_LINE_200 = 200;

		private Entities.EscapeMode escapeMode = q_base_4_line_200;
        int PROBE_START_LINE_201 = 201;

		private java.nio.charset.Charset document_1_expr43_line_201 = Charset.forName("UTF-8");

		int PROBE_END_LINE_201 = 201;

		private Charset charset = document_1_expr43_line_201;
        int PROBE_START_LINE_202 = 202;

		private java.nio.charset.Charset f_charset_95_line_202 = charset;
		private java.nio.charset.CharsetEncoder document_1_expr44_line_202 = f_charset_95_line_202.newEncoder();

		int PROBE_END_LINE_202 = 202;

		private CharsetEncoder charsetEncoder = document_1_expr44_line_202;
        private boolean prettyPrint = true;
        private int indentAmount = 1;

        public OutputSettings() {}

        /**
         * Get the document's current HTML escape mode: <code>base</code>, which provides a limited set of named HTML
         * entities and escapes other characters as numbered entities for maximum compatibility; or <code>extended</code>,
         * which uses the complete set of HTML named entities.
         * <p>
         * The default escape mode is <code>base</code>.
         * @return the document's current escape mode
         */
        public Entities.EscapeMode escapeMode() {
            int PROBE_START_LINE_217 = 217;
			org.jsoup.nodes.Entities.EscapeMode f_escape_mode_94_line_217 = escapeMode;
			int PROBE_END_LINE_217 = 217;
			return f_escape_mode_94_line_217;
        }

        /**
         * Set the document's escape mode
         * @param escapeMode the new escape mode to use
         * @return the document's output settings, for chaining
         */
        public OutputSettings escapeMode(Entities.EscapeMode escapeMode) {
            this.escapeMode = escapeMode;
            return this;
        }

        /**
         * Get the document's current output charset, which is used to control which characters are escaped when
         * generating HTML (via the <code>html()</code> methods), and which are kept intact.
         * <p>
         * Where possible (when parsing from a URL or File), the document's output charset is automatically set to the
         * input charset. Otherwise, it defaults to UTF-8.
         * @return the document's current charset.
         */
        public Charset charset() {
            return charset;
        }

        /**
         * Update the document's output charset.
         * @param charset the new charset to use.
         * @return the document's output settings, for chaining
         */
        public OutputSettings charset(Charset charset) {
            // todo: this should probably update the doc's meta charset
            this.charset = charset;
            charsetEncoder = charset.newEncoder();
            return this;
        }

        /**
         * Update the document's output charset.
         * @param charset the new charset (by name) to use.
         * @return the document's output settings, for chaining
         */
        public OutputSettings charset(String charset) {
            charset(Charset.forName(charset));
            return this;
        }

        CharsetEncoder encoder() {
            int PROBE_START_LINE_265 = 265;
			java.nio.charset.CharsetEncoder f_charset_encoder_96_line_265 = charsetEncoder;
			int PROBE_END_LINE_265 = 265;
			return f_charset_encoder_96_line_265;
        }

        /**
         * Get if pretty printing is enabled. Default is true. If disabled, the HTML output methods will not re-format
         * the output, and the output will generally look like the input.
         * @return if pretty printing is enabled.
         */
        public boolean prettyPrint() {
            int PROBE_START_LINE_274 = 274;
			boolean f_pretty_print_97_line_274 = prettyPrint;
			int PROBE_END_LINE_274 = 274;
			return f_pretty_print_97_line_274;
        }

        /**
         * Enable or disable pretty printing.
         * @param pretty new pretty print setting
         * @return this, for chaining
         */
        public OutputSettings prettyPrint(boolean pretty) {
            prettyPrint = pretty;
            return this;
        }

        /**
         * Get the current tag indent amount, used when pretty printing.
         * @return the current indent amount
         */
        public int indentAmount() {
            int PROBE_START_LINE_292 = 292;
			int f_indent_amount_98_line_292 = indentAmount;
			int PROBE_END_LINE_292 = 292;
			return f_indent_amount_98_line_292;
        }

        /**
         * Set the indent amount for pretty printing
         * @param indentAmount number of spaces to use for indenting each level. Must be >= 0.
         * @return this, for chaining
         */
        public OutputSettings indentAmount(int indentAmount) {
            Validate.isTrue(indentAmount >= 0);
            this.indentAmount = indentAmount;
            return this;
        }
    }

    /**
     * Get the document's current output settings.
     * @return the document's current output settings.
     */
    public OutputSettings outputSettings() {
        int PROBE_START_LINE_312 = 312;
		org.jsoup.nodes.Document.OutputSettings f_output_settings_75_line_312 = outputSettings;
		int PROBE_END_LINE_312 = 312;
		return f_output_settings_75_line_312;
    }
}

