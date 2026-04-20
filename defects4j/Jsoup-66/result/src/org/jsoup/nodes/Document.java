package org.jsoup.nodes;

import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.parser.ParseSettings;
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
    int PROBE_START_LINE_20 = 20;

	private org.jsoup.nodes.Document.QuirksMode q_no_quirks_4_line_20 = QuirksMode.noQuirks;

	int PROBE_END_LINE_20 = 20;

	private QuirksMode quirksMode = q_no_quirks_4_line_20;
    private String location;
    private boolean updateMetaCharset = false;

    /**
     Create a new, empty Document.
     @param baseUri base URI of document
     @see org.jsoup.Jsoup#parse
     @see #createShell
     */
    public Document(String baseUri) {
        super(Tag.valueOf("#root", ParseSettings.htmlDefault), baseUri);
        int PROBE_START_LINE_32 = 32;
		String p_base_uri_150_line_32 = baseUri;
		int PROBE_END_LINE_32 = 32;
		this.location = p_base_uri_150_line_32;
    }

    /**
     Create a valid, empty shell of a document, suitable for adding more elements to.
     @param baseUri baseUri of document
     @return document with html, head, and body elements.
     */
    public static Document createShell(String baseUri) {
        Validate.notNull(baseUri);

        Document doc = new Document(baseUri);
        Element html = doc.appendElement("html");
        html.appendElement("head");
        html.appendElement("body");

        return doc;
    }

    /**
     * Get the URL this Document was parsed from. If the starting URL is a redirect,
     * this will return the final URL from which the document was served from.
     * @return location
     */
    public String location() {
     return location;
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
        int PROBE_START_LINE_73 = 73;
		org.jsoup.nodes.Element document_1_expr7_line_73 = findFirstElementByTagName("body", this);
		int PROBE_END_LINE_73 = 73;
		return document_1_expr7_line_73;
    }

    /**
     Get the string contents of the document's {@code title} element.
     @return Trimmed title, or empty string if none set.
     */
    public String title() {
        // title is a preserve whitespace tag (for document output), but normalised here
        Element titleEl = getElementsByTag("title").first();
        return titleEl != null ? StringUtil.normaliseWhitespace(titleEl.text()).trim() : "";
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
        return new Element(Tag.valueOf(tagName, ParseSettings.preserveCase), this.baseUri());
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
        
        ensureMetaCharsetElement();
        
        return this;
    }

    // does not recurse.
    private void normaliseTextNodes(Element element) {
        List<Node> toMove = new ArrayList<>();
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
            body().prependChild(new TextNode(" "));
            body().prependChild(node);
        }
    }

    // merge multiple <head> or <body> contents into one, delete the remainder, and ensure they are owned by <html>
    private void normaliseStructure(String tag, Element htmlEl) {
        Elements elements = this.getElementsByTag(tag);
        Element master = elements.first(); // will always be available as created above if not existent
        if (elements.size() > 1) { // dupes, move contents to master
            List<Node> toMove = new ArrayList<>();
            for (int i = 1; i < elements.size(); i++) {
                Node dupe = elements.get(i);
                toMove.addAll(dupe.ensureChildNodes());
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
        int PROBE_START_LINE_180 = 189;
		org.jsoup.nodes.Node p_node_160_line_180 = node;
		String document_1_expr10_line_180 = p_node_160_line_180.nodeName();
		String p_tag_159_line_180 = tag;
		boolean document_1_expr9_line_180 = document_1_expr10_line_180.equals(p_tag_159_line_180);
		int PROBE_END_LINE_180 = 189;
		if (document_1_expr9_line_180) {
			int PROBE_START_LINE_181 = 181;
			org.jsoup.nodes.Node p_node_160_line_181 = node;
			int PROBE_END_LINE_181 = 181;
			return (Element) p_node_160_line_181;
		} else {
            int PROBE_START_LINE_183 = 183;
			org.jsoup.nodes.Node p_node_160_line_183 = node;
			int document_1_expr12_line_183 = p_node_160_line_183.childNodeSize();
			int PROBE_END_LINE_183 = 183;
			int size = document_1_expr12_line_183;
            for (int i = 0; true; i++) {
                int PROBE_START_LINE_185 = 185;
				int v_i_162_line_184 = i;
				int v_size_161_line_184 = size;
				boolean document_1_expr14_line_184 = v_i_162_line_184 < v_size_161_line_184;
				if (!(document_1_expr14_line_184)) {
					break;
				}
				String p_tag_159_line_185 = tag;
				org.jsoup.nodes.Node p_node_160_line_185 = node;
				int v_i_162_line_185 = i;
				org.jsoup.nodes.Node document_1_expr17_line_185 = p_node_160_line_185.childNode(v_i_162_line_185);
				Element document_1_expr16_line_185 = findFirstElementByTagName(p_tag_159_line_185,
						document_1_expr17_line_185);
				int PROBE_END_LINE_185 = 185;
				Element found = document_1_expr16_line_185;
                int PROBE_START_LINE_186 = 187;
				org.jsoup.nodes.Element v_found_163_line_186 = found;
				boolean document_1_expr18_line_186 = v_found_163_line_186 != null;
				int PROBE_END_LINE_186 = 187;
				if (document_1_expr18_line_186) {
					int PROBE_START_LINE_187 = 187;
					org.jsoup.nodes.Element v_found_163_line_187 = found;
					int PROBE_END_LINE_187 = 187;
					return v_found_163_line_187;
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
     * Sets the charset used in this document. This method is equivalent
     * to {@link OutputSettings#charset(java.nio.charset.Charset)
     * OutputSettings.charset(Charset)} but in addition it updates the
     * charset / encoding element within the document.
     * 
     * <p>This enables
     * {@link #updateMetaCharsetElement(boolean) meta charset update}.</p>
     * 
     * <p>If there's no element with charset / encoding information yet it will
     * be created. Obsolete charset / encoding definitions are removed!</p>
     * 
     * <p><b>Elements used:</b></p>
     * 
     * <ul>
     * <li><b>Html:</b> <i>&lt;meta charset="CHARSET"&gt;</i></li>
     * <li><b>Xml:</b> <i>&lt;?xml version="1.0" encoding="CHARSET"&gt;</i></li>
     * </ul>
     * 
     * @param charset Charset
     * 
     * @see #updateMetaCharsetElement(boolean) 
     * @see OutputSettings#charset(java.nio.charset.Charset) 
     */
    public void charset(Charset charset) {
        updateMetaCharsetElement(true);
        outputSettings.charset(charset);
        ensureMetaCharsetElement();
    }
    
    /**
     * Returns the charset used in this document. This method is equivalent
     * to {@link OutputSettings#charset()}.
     * 
     * @return Current Charset
     * 
     * @see OutputSettings#charset() 
     */
    public Charset charset() {
        return outputSettings.charset();
    }
    
    /**
     * Sets whether the element with charset information in this document is
     * updated on changes through {@link #charset(java.nio.charset.Charset)
     * Document.charset(Charset)} or not.
     * 
     * <p>If set to <tt>false</tt> <i>(default)</i> there are no elements
     * modified.</p>
     * 
     * @param update If <tt>true</tt> the element updated on charset
     * changes, <tt>false</tt> if not
     * 
     * @see #charset(java.nio.charset.Charset) 
     */
    public void updateMetaCharsetElement(boolean update) {
        this.updateMetaCharset = update;
    }
    
    /**
     * Returns whether the element with charset information in this document is
     * updated on changes through {@link #charset(java.nio.charset.Charset)
     * Document.charset(Charset)} or not.
     * 
     * @return Returns <tt>true</tt> if the element is updated on charset
     * changes, <tt>false</tt> if not
     */
    public boolean updateMetaCharsetElement() {
        return updateMetaCharset;
    }

    @Override
    public Document clone() {
        int PROBE_START_LINE_287 = 287;
		org.jsoup.nodes.Element document_1_expr20_line_287 = super.clone();
		int PROBE_END_LINE_287 = 287;
		Document clone = (Document) document_1_expr20_line_287;
        int PROBE_START_LINE_288 = 288;
		org.jsoup.nodes.Document.OutputSettings f_output_settings_147_line_288 = this.outputSettings;
		org.jsoup.nodes.Document.OutputSettings document_1_expr22_line_288 = f_output_settings_147_line_288.clone();
		int PROBE_END_LINE_288 = 288;
		clone.outputSettings = document_1_expr22_line_288;
        int PROBE_START_LINE_289 = 289;
		org.jsoup.nodes.Document v_clone_167_line_289 = clone;
		int PROBE_END_LINE_289 = 289;
		return v_clone_167_line_289;
    }
    
    /**
     * Ensures a meta charset (html) or xml declaration (xml) with the current
     * encoding used. This only applies with
     * {@link #updateMetaCharsetElement(boolean) updateMetaCharset} set to
     * <tt>true</tt>, otherwise this method does nothing.
     * 
     * <ul>
     * <li>An existing element gets updated with the current charset</li>
     * <li>If there's no element yet it will be inserted</li>
     * <li>Obsolete elements are removed</li>
     * </ul>
     * 
     * <p><b>Elements used:</b></p>
     * 
     * <ul>
     * <li><b>Html:</b> <i>&lt;meta charset="CHARSET"&gt;</i></li>
     * <li><b>Xml:</b> <i>&lt;?xml version="1.0" encoding="CHARSET"&gt;</i></li>
     * </ul>
     */
    private void ensureMetaCharsetElement() {
        if (updateMetaCharset) {
            OutputSettings.Syntax syntax = outputSettings().syntax();

            if (syntax == OutputSettings.Syntax.html) {
                Element metaCharset = select("meta[charset]").first();

                if (metaCharset != null) {
                    metaCharset.attr("charset", charset().displayName());
                } else {
                    Element head = head();

                    if (head != null) {
                        head.appendElement("meta").attr("charset", charset().displayName());
                    }
                }

                // Remove obsolete elements
                select("meta[name=charset]").remove();
            } else if (syntax == OutputSettings.Syntax.xml) {
                Node node = childNodes().get(0);

                if (node instanceof XmlDeclaration) {
                    XmlDeclaration decl = (XmlDeclaration) node;

                    if (decl.name().equals("xml")) {
                        decl.attr("encoding", charset().displayName());

                        final String version = decl.attr("version");

                        if (version != null) {
                            decl.attr("version", "1.0");
                        }
                    } else {
                        decl = new XmlDeclaration("xml", false);
                        decl.attr("version", "1.0");
                        decl.attr("encoding", charset().displayName());

                        prependChild(decl);
                    }
                } else {
                    XmlDeclaration decl = new XmlDeclaration("xml", false);
                    decl.attr("version", "1.0");
                    decl.attr("encoding", charset().displayName());

                    prependChild(decl);
                }
            }
        }
    }
    

    /**
     * A Document's output settings control the form of the text() and html() methods.
     */
    public static class OutputSettings implements Cloneable {
        /**
         * The output serialization syntax.
         */
        public enum Syntax {html, xml}

        int PROBE_START_LINE_372 = 372;

		private org.jsoup.nodes.Entities.EscapeMode q_base_7_line_372 = Entities.EscapeMode.base;

		int PROBE_END_LINE_372 = 372;

		private Entities.EscapeMode escapeMode = q_base_7_line_372;
        private Charset charset;
        CharsetEncoder encoder; // initialized by start of OuterHtmlVisitor and cleared at end
        Entities.CoreCharset coreCharset; // fast encoders for ascii and utf8

        private boolean prettyPrint = true;
        private boolean outline = false;
        private int indentAmount = 1;
        int PROBE_START_LINE_380 = 380;

		private org.jsoup.nodes.Document.OutputSettings.Syntax q_html_8_line_380 = Syntax.html;

		int PROBE_END_LINE_380 = 380;

		private Syntax syntax = q_html_8_line_380;

        public OutputSettings() {
            int PROBE_START_LINE_383 = 383;
			java.nio.charset.Charset document_1_expr26_line_383 = Charset.forName("UTF8");
			int PROBE_END_LINE_383 = 383;
			charset(document_1_expr26_line_383);
        }
        
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
         * Set the document's escape mode, which determines how characters are escaped when the output character set
         * does not support a given character:- using either a named or a numbered escape.
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
            int PROBE_START_LINE_427 = 427;
			java.nio.charset.Charset p_charset_176_line_427 = charset;
			int PROBE_END_LINE_427 = 427;
			this.charset = p_charset_176_line_427;
            return this;
        }

        /**
         * Update the document's output charset.
         * @param charset the new charset (by name) to use.
         * @return the document's output settings, for chaining
         */
        public OutputSettings charset(String charset) {
            int PROBE_START_LINE_437 = 437;
			String p_charset_178_line_437 = charset;
			java.nio.charset.Charset document_1_expr32_line_437 = Charset.forName(p_charset_178_line_437);
			int PROBE_END_LINE_437 = 437;
			charset(document_1_expr32_line_437);
            return this;
        }

        CharsetEncoder prepareEncoder() {
            encoder = charset.newEncoder(); // created at start of OuterHtmlVisitor so each pass has own encoder, so OutputSettings can be shared among threads
            coreCharset = Entities.CoreCharset.byName(encoder.charset().name());
            return encoder;
        }

        /**
         * Get the document's current output syntax.
         * @return current syntax
         */
        public Syntax syntax() {
            return syntax;
        }

        /**
         * Set the document's output syntax. Either {@code html}, with empty tags and boolean attributes (etc), or
         * {@code xml}, with self-closing tags.
         * @param syntax serialization syntax
         * @return the document's output settings, for chaining
         */
        public OutputSettings syntax(Syntax syntax) {
            this.syntax = syntax;
            return this;
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
         * Get if outline mode is enabled. Default is false. If enabled, the HTML output methods will consider
         * all tags as block.
         * @return if outline mode is enabled.
         */
        public boolean outline() {
            return outline;
        }
        
        /**
         * Enable or disable HTML outline mode.
         * @param outlineMode new outline setting
         * @return this, for chaining
         */
        public OutputSettings outline(boolean outlineMode) {
            outline = outlineMode;
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
         * @param indentAmount number of spaces to use for indenting each level. Must be {@literal >=} 0.
         * @return this, for chaining
         */
        public OutputSettings indentAmount(int indentAmount) {
            Validate.isTrue(indentAmount >= 0);
            this.indentAmount = indentAmount;
            return this;
        }

        @Override
        public OutputSettings clone() {
            OutputSettings clone = null;
            try {
                int PROBE_START_LINE_527 = 527;
				Object document_1_expr36_line_527 = super.clone();
				int PROBE_END_LINE_527 = 527;
				clone = (OutputSettings) document_1_expr36_line_527;
            } catch (CloneNotSupportedException e) {
                throw new RuntimeException(e);
            }
            int PROBE_START_LINE_531 = 531;
			org.jsoup.nodes.Document.OutputSettings v_clone_183_line_531 = clone;
			java.nio.charset.Charset f_charset_177_line_531 = charset;
			String document_1_expr38_line_531 = f_charset_177_line_531.name();
			int PROBE_END_LINE_531 = 531;
			v_clone_183_line_531.charset(document_1_expr38_line_531); // new charset and charset encoder
            int PROBE_START_LINE_532 = 532;
			org.jsoup.nodes.Entities.EscapeMode f_escape_mode_170_line_532 = escapeMode;
			String document_1_expr41_line_532 = f_escape_mode_170_line_532.name();
			org.jsoup.nodes.Entities.EscapeMode document_1_expr40_line_532 = Entities.EscapeMode
					.valueOf(document_1_expr41_line_532);
			int PROBE_END_LINE_532 = 532;
			clone.escapeMode = document_1_expr40_line_532;
            int PROBE_START_LINE_534 = 534;
			org.jsoup.nodes.Document.OutputSettings v_clone_183_line_534 = clone;
			int PROBE_END_LINE_534 = 534;
			// indentAmount, prettyPrint are primitives so object.clone() will handle
            return v_clone_183_line_534;
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
        noQuirks, quirks, limitedQuirks
    }

    public QuirksMode quirksMode() {
        int PROBE_START_LINE_562 = 562;
		org.jsoup.nodes.Document.QuirksMode f_quirks_mode_148_line_562 = quirksMode;
		int PROBE_END_LINE_562 = 562;
		return f_quirks_mode_148_line_562;
    }

    public Document quirksMode(QuirksMode quirksMode) {
        int PROBE_START_LINE_566 = 566;
		org.jsoup.nodes.Document.QuirksMode p_quirks_mode_188_line_566 = quirksMode;
		int PROBE_END_LINE_566 = 566;
		this.quirksMode = p_quirks_mode_188_line_566;
        return this;
    }
}
