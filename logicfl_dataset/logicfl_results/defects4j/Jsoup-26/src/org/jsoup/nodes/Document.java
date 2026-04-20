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
    int PROBE_START_LINE_18 = 18;

	private org.jsoup.nodes.Document.QuirksMode q_no_quirks_1_line_18 = QuirksMode.noQuirks;

	int PROBE_END_LINE_18 = 18;

	private QuirksMode quirksMode = q_no_quirks_1_line_18;

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
        int PROBE_START_LINE_36 = 36;
		String p_base_uri_99_line_36 = baseUri;
		int PROBE_END_LINE_36 = 36;
		Validate.notNull(p_base_uri_99_line_36);

        int PROBE_START_LINE_38 = 38;
		String p_base_uri_99_line_38 = baseUri;
		int PROBE_END_LINE_38 = 38;
		Document doc = new Document(p_base_uri_99_line_38);
        int PROBE_START_LINE_39 = 39;
		org.jsoup.nodes.Document v_doc_100_line_39 = doc;
		Element document_1_expr6_line_39 = v_doc_100_line_39.appendElement("html");
		int PROBE_END_LINE_39 = 39;
		Element html = document_1_expr6_line_39;
        int PROBE_START_LINE_40 = 40;
		org.jsoup.nodes.Element v_html_101_line_40 = html;
		int PROBE_END_LINE_40 = 40;
		v_html_101_line_40.appendElement("head");
        int PROBE_START_LINE_41 = 41;
		org.jsoup.nodes.Element v_html_101_line_41 = html;
		int PROBE_END_LINE_41 = 41;
		v_html_101_line_41.appendElement("body");

        int PROBE_START_LINE_43 = 43;
		org.jsoup.nodes.Document v_doc_100_line_43 = doc;
		int PROBE_END_LINE_43 = 43;
		return v_doc_100_line_43;
    }

    /**
     Accessor to the document's {@code head} element.
     @return {@code head}
     */
    public Element head() {
        return findFirstElementByTagName("head", this);
    }

    /**
     Accessor to the document's {@code body} element.
     @return {@code body}
     */
    public Element body() {
        int PROBE_START_LINE_59 = 59;
		org.jsoup.nodes.Element document_1_expr9_line_59 = findFirstElementByTagName("body", this);
		int PROBE_END_LINE_59 = 59;
		return document_1_expr9_line_59;
    }

    /**
     Get the string contents of the document's {@code title} element.
     @return Trimmed title, or empty string if none set.
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
        Element htmlEl = findFirstElementByTagName("html", this);
        if (htmlEl == null)
            htmlEl = appendElement("html");
        if (head() == null)
            htmlEl.prependElement("head");
        if (body() == null)
            htmlEl.appendElement("body");

        // pull text nodes out of root, html, and head els, and push into body. non-text nodes are already taken care
        // of. do in inverse order to maintain text order.
        normaliseTextNodes(head());
        normaliseTextNodes(htmlEl);
        normaliseTextNodes(this);

        normaliseStructure("head", htmlEl);
        normaliseStructure("body", htmlEl);
        
        return this;
    }

    // does not recurse.
    private void normaliseTextNodes(Element element) {
        List<Node> toMove = new ArrayList<Node>();
        for (Node node: element.childNodes) {
            if (node instanceof TextNode) {
                TextNode tn = (TextNode) node;
                if (!tn.isBlank())
                    toMove.add(tn);
            }
        }

        for (int i = toMove.size()-1; i >= 0; i--) {
            Node node = toMove.get(i);
            element.removeChild(node);
            body().prependChild(new TextNode(" ", ""));
            body().prependChild(node);
        }
    }

    // merge multiple <head> or <body> contents into one, delete the remainder, and ensure they are owned by <html>
    private void normaliseStructure(String tag, Element htmlEl) {
        Elements elements = this.getElementsByTag(tag);
        Element master = elements.first(); // will always be available as created above if not existent
        if (elements.size() > 1) { // dupes, move contents to master
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
        // ensure parented by <html>
        if (!master.parent().equals(htmlEl)) {
            htmlEl.appendChild(master); // includes remove()            
        }
    }

    // fast method to get first by tag name, used for html, head, body finders
    private Element findFirstElementByTagName(String tag, Node node) {
        int PROBE_START_LINE_164 = 172;
		org.jsoup.nodes.Node p_node_108_line_164 = node;
		String document_1_expr12_line_164 = p_node_108_line_164.nodeName();
		String p_tag_107_line_164 = tag;
		boolean document_1_expr11_line_164 = document_1_expr12_line_164.equals(p_tag_107_line_164);
		int PROBE_END_LINE_164 = 172;
		if (document_1_expr11_line_164) {
			int PROBE_START_LINE_165 = 165;
			org.jsoup.nodes.Node p_node_108_line_165 = node;
			int PROBE_END_LINE_165 = 165;
			return (Element) p_node_108_line_165;
		} else {
            int PROBE_START_LINE_167 = 171;
			org.jsoup.nodes.Node p_node_108_line_167 = node;
			List<org.jsoup.nodes.Node> q_child_nodes_2_line_167 = p_node_108_line_167.childNodes;
			int PROBE_END_LINE_167 = 171;
			for (Node child: q_child_nodes_2_line_167) {
                int PROBE_START_LINE_168 = 168;
				String p_tag_107_line_168 = tag;
				org.jsoup.nodes.Node v_child_109_line_168 = child;
				Element document_1_expr14_line_168 = findFirstElementByTagName(p_tag_107_line_168,
						v_child_109_line_168);
				int PROBE_END_LINE_168 = 168;
				Element found = document_1_expr14_line_168;
                int PROBE_START_LINE_169 = 170;
				org.jsoup.nodes.Element v_found_110_line_169 = found;
				boolean document_1_expr15_line_169 = v_found_110_line_169 != null;
				int PROBE_END_LINE_169 = 170;
				if (document_1_expr15_line_169) {
					int PROBE_START_LINE_170 = 170;
					org.jsoup.nodes.Element v_found_110_line_170 = found;
					int PROBE_END_LINE_170 = 170;
					return v_found_110_line_170;
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

    @Override
    public Document clone() {
        Document clone = (Document) super.clone();
        clone.outputSettings = this.outputSettings.clone();
        return clone;
    }

    /**
     * A Document's output settings control the form of the text() and html() methods.
     */
    public static class OutputSettings implements Cloneable {
        int PROBE_START_LINE_208 = 208;

		private org.jsoup.nodes.Entities.EscapeMode q_base_3_line_208 = Entities.EscapeMode.base;

		int PROBE_END_LINE_208 = 208;

		private Entities.EscapeMode escapeMode = q_base_3_line_208;
        int PROBE_START_LINE_209 = 209;

		private java.nio.charset.Charset document_1_expr16_line_209 = Charset.forName("UTF-8");

		int PROBE_END_LINE_209 = 209;

		private Charset charset = document_1_expr16_line_209;
        int PROBE_START_LINE_210 = 210;

		private java.nio.charset.Charset f_charset_113_line_210 = charset;
		private java.nio.charset.CharsetEncoder document_1_expr17_line_210 = f_charset_113_line_210.newEncoder();

		int PROBE_END_LINE_210 = 210;

		private CharsetEncoder charsetEncoder = document_1_expr17_line_210;
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
            return escapeMode;
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
            return charsetEncoder;
        }

        /**
         * Get if pretty printing is enabled. Default is true. If disabled, the HTML output methods will not re-format
         * the output, and the output will generally look like the input.
         * @return if pretty printing is enabled.
         */
        public boolean prettyPrint() {
            return prettyPrint;
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
            return indentAmount;
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

        @Override
        public OutputSettings clone() {
            OutputSettings clone;
            try {
                clone = (OutputSettings) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new RuntimeException(e);
            }
            clone.charset(charset.name()); // new charset and charset encoder
            clone.escapeMode = Entities.EscapeMode.valueOf(escapeMode.name());
            // indentAmount, prettyPrint are primitives so object.clone() will handle
            return clone;
        }
    }

    /**
     * Get the document's current output settings.
     * @return the document's current output settings.
     */
    public OutputSettings outputSettings() {
        return outputSettings;
    }

    /**
     * Set the document's output settings.
     * @param outputSettings new output settings.
     * @return this document, for chaining.
     */
    public Document outputSettings(OutputSettings outputSettings) {
        Validate.notNull(outputSettings);
        this.outputSettings = outputSettings;
        return this;
    }

    public enum QuirksMode {
        noQuirks, quirks, limitedQuirks;
    }

    public QuirksMode quirksMode() {
        int PROBE_START_LINE_353 = 353;
		org.jsoup.nodes.Document.QuirksMode f_quirks_mode_97_line_353 = quirksMode;
		int PROBE_END_LINE_353 = 353;
		return f_quirks_mode_97_line_353;
    }

    public Document quirksMode(QuirksMode quirksMode) {
        int PROBE_START_LINE_357 = 357;
		org.jsoup.nodes.Document.QuirksMode p_quirks_mode_126_line_357 = quirksMode;
		int PROBE_END_LINE_357 = 357;
		this.quirksMode = p_quirks_mode_126_line_357;
        return this;
    }
}

