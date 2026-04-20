package org.jsoup.parser;

import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Elements;

import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document.QuirksMode;

/**
 * HTML Tree Builder; creates a DOM from Tokens.
 */
public class HtmlTreeBuilder extends TreeBuilder {
    // tag searches
    private static final String[] TagsSearchInScope = new String[]{"applet", "caption", "html", "table", "td", "th", "marquee", "object"};
    private static final String[] TagSearchList = new String[]{"ol", "ul"};
    private static final String[] TagSearchButton = new String[]{"button"};
    private static final String[] TagSearchTableScope = new String[]{"html", "table"};
    private static final String[] TagSearchSelectScope = new String[]{"optgroup", "option"};
    private static final String[] TagSearchEndTags = new String[]{"dd", "dt", "li", "option", "optgroup", "p", "rp", "rt"};
    private static final String[] TagSearchSpecial = new String[]{"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound",
            "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd",
            "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form",
            "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html",
            "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", "meta", "nav",
            "noembed", "noframes", "noscript", "object", "ol", "p", "param", "plaintext", "pre", "script",
            "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead",
            "title", "tr", "ul", "wbr", "xmp"};

    private HtmlTreeBuilderState state; // the current state
    private HtmlTreeBuilderState originalState; // original / marked state

    private boolean baseUriSetFromDoc;
    private Element headElement; // the current head element
    private FormElement formElement; // the current form element
    private Element contextElement; // fragment parse context -- could be null even if fragment parsing
    private ArrayList<Element> formattingElements; // active (open) formatting elements
    private List<String> pendingTableCharacters; // chars in table to be shifted out
    private Token.EndTag emptyEnd; // reused empty end tag

    private boolean framesetOk; // if ok to go into frameset
    private boolean fosterInserts; // if next inserts should be fostered
    private boolean fragmentParsing; // if parsing a fragment of html

    HtmlTreeBuilder() {}

    ParseSettings defaultSettings() {
        int PROBE_START_LINE_57 = 57;
		org.jsoup.parser.ParseSettings q_html_default_26_line_57 = ParseSettings.htmlDefault;
		int PROBE_END_LINE_57 = 57;
		return q_html_default_26_line_57;
    }

    @Override
    protected void initialiseParse(Reader input, String baseUri, ParseErrorList errors, ParseSettings settings) {
        int PROBE_START_LINE_62 = 62;
		java.io.Reader p_input_578_line_62 = input;
		String p_base_uri_579_line_62 = baseUri;
		org.jsoup.parser.ParseErrorList p_errors_580_line_62 = errors;
		org.jsoup.parser.ParseSettings p_settings_581_line_62 = settings;
		int PROBE_END_LINE_62 = 62;
		super.initialiseParse(p_input_578_line_62, p_base_uri_579_line_62, p_errors_580_line_62, p_settings_581_line_62);

        int PROBE_START_LINE_65 = 65;
		org.jsoup.parser.HtmlTreeBuilderState q_initial_26_line_65 = HtmlTreeBuilderState.Initial;
		int PROBE_END_LINE_65 = 65;
		// this is a bit mucky. todo - probably just create new parser objects to ensure all reset.
        state = q_initial_26_line_65;
        originalState = null;
        baseUriSetFromDoc = false;
        headElement = null;
        formElement = null;
        contextElement = null;
        formattingElements = new ArrayList<>();
        pendingTableCharacters = new ArrayList<>();
        emptyEnd = new Token.EndTag();
        framesetOk = true;
        fosterInserts = false;
        fragmentParsing = false;
    }

    List<Node> parseFragment(String inputFragment, Element context, String baseUri, ParseErrorList errors, ParseSettings settings) {
        int PROBE_START_LINE_81 = 81;
		org.jsoup.parser.HtmlTreeBuilderState q_initial_27_line_81 = HtmlTreeBuilderState.Initial;
		int PROBE_END_LINE_81 = 81;
		// context may be null
        state = q_initial_27_line_81;
        int PROBE_START_LINE_82 = 82;
		String p_input_fragment_594_line_82 = inputFragment;
		String p_base_uri_596_line_82 = baseUri;
		org.jsoup.parser.ParseErrorList p_errors_597_line_82 = errors;
		org.jsoup.parser.ParseSettings p_settings_598_line_82 = settings;
		int PROBE_END_LINE_82 = 82;
		initialiseParse(new StringReader(p_input_fragment_594_line_82), p_base_uri_596_line_82, p_errors_597_line_82, p_settings_598_line_82);
        int PROBE_START_LINE_83 = 83;
		org.jsoup.nodes.Element p_context_595_line_83 = context;
		int PROBE_END_LINE_83 = 83;
		contextElement = p_context_595_line_83;
        fragmentParsing = true;
        Element root = null;

        int PROBE_START_LINE_87 = 121;
		org.jsoup.nodes.Element p_context_595_line_87 = context;
		boolean html_tree_builder_1_expr36_line_87 = p_context_595_line_87 != null;
		int PROBE_END_LINE_87 = 121;
		if (html_tree_builder_1_expr36_line_87) {
            int PROBE_START_LINE_88 = 89;
			org.jsoup.nodes.Element p_context_595_line_88 = context;
			org.jsoup.nodes.Document html_tree_builder_1_expr38_line_88 = p_context_595_line_88.ownerDocument();
			boolean html_tree_builder_1_expr37_line_88 = html_tree_builder_1_expr38_line_88 != null;
			int PROBE_END_LINE_88 = 89;
			if (html_tree_builder_1_expr37_line_88) {
				int PROBE_START_LINE_89 = 89;
				org.jsoup.nodes.Document f_doc_600_line_89 = doc;
				org.jsoup.nodes.Element p_context_595_line_89 = context;
				org.jsoup.nodes.Document html_tree_builder_1_expr41_line_89 = p_context_595_line_89.ownerDocument();
				org.jsoup.nodes.Document.QuirksMode html_tree_builder_1_expr40_line_89 = html_tree_builder_1_expr41_line_89
						.quirksMode();
				int PROBE_END_LINE_89 = 89;
				f_doc_600_line_89.quirksMode(html_tree_builder_1_expr40_line_89);
			}

            int PROBE_START_LINE_92 = 92;
			org.jsoup.nodes.Element p_context_595_line_92 = context;
			String html_tree_builder_1_expr42_line_92 = p_context_595_line_92.tagName();
			int PROBE_END_LINE_92 = 92;
			// initialise the tokeniser state:
            String contextTag = html_tree_builder_1_expr42_line_92;
            int PROBE_START_LINE_93 = 104;
			String v_context_tag_601_line_93 = contextTag;
			boolean html_tree_builder_1_expr43_line_93 = StringUtil.in(v_context_tag_601_line_93, "title", "textarea");
			int PROBE_END_LINE_93 = 104;
			if (html_tree_builder_1_expr43_line_93)
                tokeniser.transition(TokeniserState.Rcdata);
			else {
				int PROBE_START_LINE_95 = 104;
				String v_context_tag_601_line_95 = contextTag;
				boolean html_tree_builder_1_expr44_line_95 = StringUtil.in(v_context_tag_601_line_95, "iframe",
						"noembed", "noframes", "style", "xmp");
				int PROBE_END_LINE_95 = 104;
				if (html_tree_builder_1_expr44_line_95)
					tokeniser.transition(TokeniserState.Rawtext);
				else {
					int PROBE_START_LINE_97 = 104;
					String v_context_tag_601_line_97 = contextTag;
					boolean html_tree_builder_1_expr45_line_97 = v_context_tag_601_line_97.equals("script");
					int PROBE_END_LINE_97 = 104;
					if (html_tree_builder_1_expr45_line_97)
						tokeniser.transition(TokeniserState.ScriptData);
					else {
						int PROBE_START_LINE_99 = 104;
						String v_context_tag_601_line_99 = contextTag;
						String html_tree_builder_1_expr47_line_99 = ("noscript");
						boolean html_tree_builder_1_expr46_line_99 = v_context_tag_601_line_99
								.equals(html_tree_builder_1_expr47_line_99);
						int PROBE_END_LINE_99 = 104;
						if (html_tree_builder_1_expr46_line_99)
							tokeniser.transition(TokeniserState.Data);
						else {
							int PROBE_START_LINE_101 = 104;
							String v_context_tag_601_line_101 = contextTag;
							boolean html_tree_builder_1_expr48_line_101 = v_context_tag_601_line_101
									.equals("plaintext");
							int PROBE_END_LINE_101 = 104;
							if (html_tree_builder_1_expr48_line_101)
								tokeniser.transition(TokeniserState.Data);
							else {
								int PROBE_START_LINE_104 = 104;
								org.jsoup.parser.Tokeniser f_tokeniser_602_line_104 = tokeniser;
								org.jsoup.parser.TokeniserState q_data_27_line_104 = TokeniserState.Data;
								int PROBE_END_LINE_104 = 104;
								f_tokeniser_602_line_104.transition(q_data_27_line_104);
							}
						}
					}
				}
			}

            int PROBE_START_LINE_106 = 106;
			org.jsoup.parser.ParseSettings p_settings_598_line_106 = settings;
			org.jsoup.parser.Tag html_tree_builder_1_expr52_line_106 = Tag.valueOf("html", p_settings_598_line_106);
			String p_base_uri_596_line_106 = baseUri;
			int PROBE_END_LINE_106 = 106;
			root = new Element(html_tree_builder_1_expr52_line_106, p_base_uri_596_line_106);
            int PROBE_START_LINE_107 = 107;
			org.jsoup.nodes.Document f_doc_600_line_107 = doc;
			org.jsoup.nodes.Element v_root_599_line_107 = root;
			int PROBE_END_LINE_107 = 107;
			f_doc_600_line_107.appendChild(v_root_599_line_107);
            int PROBE_START_LINE_108 = 108;
			ArrayList<org.jsoup.nodes.Element> f_stack_603_line_108 = stack;
			org.jsoup.nodes.Element v_root_599_line_108 = root;
			int PROBE_END_LINE_108 = 108;
			f_stack_603_line_108.add(v_root_599_line_108);
            resetInsertionMode();

            int PROBE_START_LINE_113 = 113;
			org.jsoup.nodes.Element p_context_595_line_113 = context;
			Elements html_tree_builder_1_expr56_line_113 = p_context_595_line_113.parents();
			int PROBE_END_LINE_113 = 113;
			// setup form element to nearest form on context (up ancestor chain). ensures form controls are associated
            // with form correctly
            Elements contextChain = html_tree_builder_1_expr56_line_113;
            int PROBE_START_LINE_114 = 114;
			org.jsoup.select.Elements v_context_chain_604_line_114 = contextChain;
			org.jsoup.nodes.Element p_context_595_line_114 = context;
			int PROBE_END_LINE_114 = 114;
			v_context_chain_604_line_114.add(0, p_context_595_line_114);
            int PROBE_START_LINE_115 = 120;
			org.jsoup.select.Elements v_context_chain_604_line_115 = contextChain;
			int PROBE_END_LINE_115 = 120;
			for (Element parent: v_context_chain_604_line_115) {
                int PROBE_START_LINE_116 = 119;
				org.jsoup.nodes.Element v_parent_605_line_116 = parent;
				boolean html_tree_builder_1_expr58_line_116 = v_parent_605_line_116 instanceof FormElement;
				int PROBE_END_LINE_116 = 119;
				if (html_tree_builder_1_expr58_line_116) {
                    formElement = (FormElement) parent;
                    break;
                }
            }
        }

        runParser();
        int PROBE_START_LINE_124 = 127;
		org.jsoup.nodes.Element p_context_595_line_124 = context;
		boolean html_tree_builder_1_expr60_line_124 = p_context_595_line_124 != null;
		int PROBE_END_LINE_124 = 127;
		if (html_tree_builder_1_expr60_line_124) {
			int PROBE_START_LINE_125 = 125;
			org.jsoup.nodes.Element v_root_599_line_125 = root;
			List<org.jsoup.nodes.Node> html_tree_builder_1_expr61_line_125 = v_root_599_line_125.childNodes();
			int PROBE_END_LINE_125 = 125;
			return html_tree_builder_1_expr61_line_125;
		} else
            return doc.childNodes();
    }

    @Override
    protected boolean process(Token token) {
        int PROBE_START_LINE_132 = 132;
		org.jsoup.parser.Token p_token_606_line_132 = token;
		int PROBE_END_LINE_132 = 132;
		currentToken = p_token_606_line_132;
        int PROBE_START_LINE_133 = 133;
		org.jsoup.parser.HtmlTreeBuilderState f_state_582_line_133 = this.state;
		org.jsoup.parser.Token p_token_606_line_133 = token;
		boolean html_tree_builder_1_expr63_line_133 = f_state_582_line_133.process(p_token_606_line_133, this);
		int PROBE_END_LINE_133 = 133;
		return html_tree_builder_1_expr63_line_133;
    }

    boolean process(Token token, HtmlTreeBuilderState state) {
        currentToken = token;
        return state.process(token, this);
    }

    void transition(HtmlTreeBuilderState state) {
        int PROBE_START_LINE_142 = 142;
		org.jsoup.parser.HtmlTreeBuilderState p_state_610_line_142 = state;
		int PROBE_END_LINE_142 = 142;
		this.state = p_state_610_line_142;
    }

    HtmlTreeBuilderState state() {
        return state;
    }

    void markInsertionMode() {
        originalState = state;
    }

    HtmlTreeBuilderState originalState() {
        return originalState;
    }

    void framesetOk(boolean framesetOk) {
        int PROBE_START_LINE_158 = 158;
		boolean p_frameset_ok_611_line_158 = framesetOk;
		int PROBE_END_LINE_158 = 158;
		this.framesetOk = p_frameset_ok_611_line_158;
    }

    boolean framesetOk() {
        int PROBE_START_LINE_162 = 162;
		boolean f_frameset_ok_591_line_162 = framesetOk;
		int PROBE_END_LINE_162 = 162;
		return f_frameset_ok_591_line_162;
    }

    Document getDocument() {
        int PROBE_START_LINE_166 = 166;
		org.jsoup.nodes.Document f_doc_600_line_166 = doc;
		int PROBE_END_LINE_166 = 166;
		return f_doc_600_line_166;
    }

    String getBaseUri() {
        return baseUri;
    }

    void maybeSetBaseUri(Element base) {
        if (baseUriSetFromDoc) // only listen to the first <base href> in parse
            return;

        String href = base.absUrl("href");
        if (href.length() != 0) { // ignore <base target> etc
            baseUri = href;
            baseUriSetFromDoc = true;
            doc.setBaseUri(href); // set on the doc so doc.createElement(Tag) will get updated base, and to update all descendants
        }
    }

    boolean isFragmentParsing() {
        int PROBE_START_LINE_186 = 186;
		boolean f_fragment_parsing_593_line_186 = fragmentParsing;
		int PROBE_END_LINE_186 = 186;
		return f_fragment_parsing_593_line_186;
    }

    void error(HtmlTreeBuilderState state) {
        if (errors.canAddError())
            errors.add(new ParseError(reader.pos(), "Unexpected token [%s] when in state [%s]", currentToken.tokenType(), state));
    }

    Element insert(Token.StartTag startTag) {
        int PROBE_START_LINE_197 = 203;
		org.jsoup.parser.Token.StartTag p_start_tag_614_line_197 = startTag;
		boolean html_tree_builder_1_expr73_line_197 = p_start_tag_614_line_197.isSelfClosing();
		int PROBE_END_LINE_197 = 203;
		// handle empty unknown tags
        // when the spec expects an empty tag, will directly hit insertEmpty, so won't generate this fake end tag.
        if (html_tree_builder_1_expr73_line_197) {
            Element el = insertEmpty(startTag);
            stack.add(el);
            tokeniser.transition(TokeniserState.Data); // handles <script />, otherwise needs breakout steps from script data
            tokeniser.emit(emptyEnd.reset().name(el.tagName()));  // ensure we get out of whatever state we are in. emitted for yielded processing
            return el;
        }
        
        int PROBE_START_LINE_205 = 205;
		org.jsoup.parser.Token.StartTag p_start_tag_614_line_205 = startTag;
		String html_tree_builder_1_expr77_line_205 = p_start_tag_614_line_205.name();
		org.jsoup.parser.ParseSettings f_settings_617_line_205 = settings;
		org.jsoup.parser.Tag html_tree_builder_1_expr75_line_205 = Tag.valueOf(html_tree_builder_1_expr77_line_205,
				f_settings_617_line_205);
		String f_base_uri_616_line_205 = baseUri;
		org.jsoup.parser.ParseSettings f_settings_617_line_205_v1 = settings;
		org.jsoup.parser.Token.StartTag p_start_tag_614_line_205_v1 = startTag;
		org.jsoup.nodes.Attributes q_attributes_28_line_205 = p_start_tag_614_line_205_v1.attributes;
		org.jsoup.nodes.Attributes html_tree_builder_1_expr76_line_205 = f_settings_617_line_205_v1
				.normalizeAttributes(q_attributes_28_line_205);
		int PROBE_END_LINE_205 = 205;
		Element el = new Element(html_tree_builder_1_expr75_line_205, f_base_uri_616_line_205, html_tree_builder_1_expr76_line_205);
        int PROBE_START_LINE_206 = 206;
		org.jsoup.nodes.Element v_el_615_line_206 = el;
		int PROBE_END_LINE_206 = 206;
		insert(v_el_615_line_206);
        int PROBE_START_LINE_207 = 207;
		org.jsoup.nodes.Element v_el_615_line_207 = el;
		int PROBE_END_LINE_207 = 207;
		return v_el_615_line_207;
    }

    Element insertStartTag(String startTagName) {
        Element el = new Element(Tag.valueOf(startTagName, settings), baseUri);
        insert(el);
        return el;
    }

    void insert(Element el) {
        int PROBE_START_LINE_217 = 217;
		org.jsoup.nodes.Element p_el_619_line_217 = el;
		int PROBE_END_LINE_217 = 217;
		insertNode(p_el_619_line_217);
        int PROBE_START_LINE_218 = 218;
		ArrayList<org.jsoup.nodes.Element> f_stack_603_line_218 = stack;
		org.jsoup.nodes.Element p_el_619_line_218 = el;
		int PROBE_END_LINE_218 = 218;
		f_stack_603_line_218.add(p_el_619_line_218);
    }

    Element insertEmpty(Token.StartTag startTag) {
        Tag tag = Tag.valueOf(startTag.name(), settings);
        Element el = new Element(tag, baseUri, startTag.attributes);
        insertNode(el);
        if (startTag.isSelfClosing()) {
            if (tag.isKnownTag()) {
                if (!tag.isEmpty())
                    tokeniser.error("Tag cannot be self closing; not a void tag");
            }
            else // unknown tag, remember this is self closing for output
                tag.setSelfClosing();
        }
        return el;
    }

    FormElement insertForm(Token.StartTag startTag, boolean onStack) {
        Tag tag = Tag.valueOf(startTag.name(), settings);
        FormElement el = new FormElement(tag, baseUri, startTag.attributes);
        setFormElement(el);
        insertNode(el);
        if (onStack)
            stack.add(el);
        return el;
    }

    void insert(Token.Comment commentToken) {
        Comment comment = new Comment(commentToken.getData());
        insertNode(comment);
    }

    void insert(Token.Character characterToken) {
        Node node = null;
        int PROBE_START_LINE_254 = 254;
		org.jsoup.nodes.Element html_tree_builder_1_expr82_line_254 = currentElement();
		String html_tree_builder_1_expr81_line_254 = html_tree_builder_1_expr82_line_254.tagName();
		int PROBE_END_LINE_254 = 254;
		// characters in script and style go in as datanodes, not text nodes
        String tagName = html_tree_builder_1_expr81_line_254;
        int PROBE_START_LINE_255 = 258;
		String v_tag_name_625_line_255 = tagName;
		boolean html_tree_builder_1_expr84_line_255 = v_tag_name_625_line_255.equals("script");
		boolean html_tree_builder_1_expr85_line_255 = false;
		if (!html_tree_builder_1_expr84_line_255) {
			String v_tag_name_625_line_255_v1 = tagName;
			html_tree_builder_1_expr85_line_255 = v_tag_name_625_line_255_v1.equals("style");
		}
		boolean html_tree_builder_1_expr83_line_255 = html_tree_builder_1_expr84_line_255
				|| html_tree_builder_1_expr85_line_255;
		int PROBE_END_LINE_255 = 258;
		if (html_tree_builder_1_expr83_line_255)
            node = new DataNode(characterToken.getData());
		else {
			int PROBE_START_LINE_258 = 258;
			org.jsoup.parser.Token.Character p_character_token_624_line_258 = characterToken;
			String html_tree_builder_1_expr88_line_258 = p_character_token_624_line_258.getData();
			int PROBE_END_LINE_258 = 258;
			node = new TextNode(html_tree_builder_1_expr88_line_258);
		}
        int PROBE_START_LINE_259 = 259;
		org.jsoup.nodes.Element html_tree_builder_1_expr90_line_259 = currentElement();
		org.jsoup.nodes.Node v_node_626_line_259 = node;
		int PROBE_END_LINE_259 = 259;
		html_tree_builder_1_expr90_line_259.appendChild(v_node_626_line_259); // doesn't use insertNode, because we don't foster these; and will always have a stack.
    }

    private void insertNode(Node node) {
        int PROBE_START_LINE_264 = 269;
		ArrayList<org.jsoup.nodes.Element> f_stack_603_line_264 = stack;
		int html_tree_builder_1_expr92_line_264 = f_stack_603_line_264.size();
		boolean html_tree_builder_1_expr91_line_264 = html_tree_builder_1_expr92_line_264 == 0;
		int PROBE_END_LINE_264 = 269;
		// if the stack hasn't been set up yet, elements (doctype, comments) go into the doc
        if (html_tree_builder_1_expr91_line_264) {
			int PROBE_START_LINE_265 = 265;
			org.jsoup.nodes.Document f_doc_600_line_265 = doc;
			org.jsoup.nodes.Node p_node_627_line_265 = node;
			int PROBE_END_LINE_265 = 265;
			f_doc_600_line_265.appendChild(p_node_627_line_265);
		} else {
			int PROBE_START_LINE_266 = 269;
			boolean html_tree_builder_1_expr94_line_266 = isFosterInserts();
			int PROBE_END_LINE_266 = 269;
			if (html_tree_builder_1_expr94_line_266)
				insertInFosterParent(node);
			else {
				int PROBE_START_LINE_269 = 269;
				org.jsoup.nodes.Element html_tree_builder_1_expr96_line_269 = currentElement();
				org.jsoup.nodes.Node p_node_627_line_269 = node;
				int PROBE_END_LINE_269 = 269;
				html_tree_builder_1_expr96_line_269.appendChild(p_node_627_line_269);
			}
		}

        int PROBE_START_LINE_272 = 275;
		org.jsoup.nodes.Node p_node_627_line_272 = node;
		boolean html_tree_builder_1_expr98_line_272 = p_node_627_line_272 instanceof Element;
		boolean html_tree_builder_1_expr99_line_272 = true;
		if (html_tree_builder_1_expr98_line_272) {
			org.jsoup.nodes.Node p_node_627_line_272_v1 = node;
			org.jsoup.nodes.Element html_tree_builder_1_expr101_line_272 = ((Element) p_node_627_line_272_v1);
			org.jsoup.parser.Tag html_tree_builder_1_expr100_line_272 = html_tree_builder_1_expr101_line_272.tag();
			html_tree_builder_1_expr99_line_272 = html_tree_builder_1_expr100_line_272.isFormListed();
		}
		boolean html_tree_builder_1_expr97_line_272 = html_tree_builder_1_expr98_line_272
				&& html_tree_builder_1_expr99_line_272;
		int PROBE_END_LINE_272 = 275;
		// connect form controls to their form element
        if (html_tree_builder_1_expr97_line_272) {
            if (formElement != null)
                formElement.addElement((Element) node);
        }
    }

    Element pop() {
        int PROBE_START_LINE_279 = 279;
		ArrayList<org.jsoup.nodes.Element> f_stack_603_line_279 = stack;
		int html_tree_builder_1_expr103_line_279 = f_stack_603_line_279.size();
		int PROBE_END_LINE_279 = 279;
		int size = html_tree_builder_1_expr103_line_279;
        int PROBE_START_LINE_280 = 280;
		ArrayList<org.jsoup.nodes.Element> f_stack_603_line_280 = stack;
		int v_size_628_line_280 = size;
		int html_tree_builder_1_expr105_line_280 = v_size_628_line_280 - 1;
		org.jsoup.nodes.Element html_tree_builder_1_expr104_line_280 = f_stack_603_line_280
				.remove(html_tree_builder_1_expr105_line_280);
		int PROBE_END_LINE_280 = 280;
		return html_tree_builder_1_expr104_line_280;
    }

    void push(Element element) {
        stack.add(element);
    }

    ArrayList<Element> getStack() {
        return stack;
    }

    boolean onStack(Element el) {
        return isElementInQueue(stack, el);
    }

    private boolean isElementInQueue(ArrayList<Element> queue, Element element) {
        for (int pos = queue.size() -1; pos >= 0; pos--) {
            Element next = queue.get(pos);
            if (next == element) {
                return true;
            }
        }
        return false;
    }

    Element getFromStack(String elName) {
        for (int pos = stack.size() -1; pos >= 0; pos--) {
            Element next = stack.get(pos);
            if (next.nodeName().equals(elName)) {
                return next;
            }
        }
        return null;
    }

    boolean removeFromStack(Element el) {
        for (int pos = stack.size() -1; pos >= 0; pos--) {
            Element next = stack.get(pos);
            if (next == el) {
                stack.remove(pos);
                return true;
            }
        }
        return false;
    }

    void popStackToClose(String elName) {
        int PROBE_START_LINE_326 = 326;
		boolean FOR_STMT_TOGGLE_LINE_327 = false;
		int PROBE_END_LINE_326 = 326;
		for (int pos = 0; true;) {
            int PROBE_START_LINE_328 = 328;
			if (!FOR_STMT_TOGGLE_LINE_327) {
				FOR_STMT_TOGGLE_LINE_327 = true;
				ArrayList<org.jsoup.nodes.Element> f_stack_603_line_327 = stack;
				int html_tree_builder_1_expr108_line_327 = f_stack_603_line_327.size();
				int html_tree_builder_1_expr107_line_327 = html_tree_builder_1_expr108_line_327 - 1;
				pos = html_tree_builder_1_expr107_line_327;
			} else {
				if (FOR_STMT_TOGGLE_LINE_327) {
					pos--;
				} else {
					FOR_STMT_TOGGLE_LINE_327 = true;
				}
			}
			int v_pos_636_line_327 = pos;
			boolean html_tree_builder_1_expr109_line_327 = v_pos_636_line_327 >= 0;
			if (!(html_tree_builder_1_expr109_line_327)) {
				break;
			}
			ArrayList<org.jsoup.nodes.Element> f_stack_603_line_328 = stack;
			int v_pos_636_line_328 = pos;
			Element html_tree_builder_1_expr111_line_328 = f_stack_603_line_328.get(v_pos_636_line_328);
			int PROBE_END_LINE_328 = 328;
			Element next = html_tree_builder_1_expr111_line_328;
            int PROBE_START_LINE_329 = 329;
			ArrayList<org.jsoup.nodes.Element> f_stack_603_line_329 = stack;
			int v_pos_636_line_329 = pos;
			int PROBE_END_LINE_329 = 329;
			f_stack_603_line_329.remove(v_pos_636_line_329);
            int PROBE_START_LINE_330 = 331;
			org.jsoup.nodes.Element v_next_637_line_330 = next;
			String html_tree_builder_1_expr114_line_330 = v_next_637_line_330.nodeName();
			String p_el_name_635_line_330 = elName;
			boolean html_tree_builder_1_expr113_line_330 = html_tree_builder_1_expr114_line_330
					.equals(p_el_name_635_line_330);
			int PROBE_END_LINE_330 = 331;
			if (html_tree_builder_1_expr113_line_330)
                break;
        }
    }

    void popStackToClose(String... elNames) {
        for (int pos = stack.size() -1; pos >= 0; pos--) {
            Element next = stack.get(pos);
            stack.remove(pos);
            if (StringUtil.in(next.nodeName(), elNames))
                break;
        }
    }

    void popStackToBefore(String elName) {
        for (int pos = stack.size() -1; pos >= 0; pos--) {
            Element next = stack.get(pos);
            if (next.nodeName().equals(elName)) {
                break;
            } else {
                stack.remove(pos);
            }
        }
    }

    void clearStackToTableContext() {
        clearStackToContext("table");
    }

    void clearStackToTableBodyContext() {
        clearStackToContext("tbody", "tfoot", "thead", "template");
    }

    void clearStackToTableRowContext() {
        clearStackToContext("tr", "template");
    }

    private void clearStackToContext(String... nodeNames) {
        for (int pos = stack.size() -1; pos >= 0; pos--) {
            Element next = stack.get(pos);
            if (StringUtil.in(next.nodeName(), nodeNames) || next.nodeName().equals("html"))
                break;
            else
                stack.remove(pos);
        }
    }

    Element aboveOnStack(Element el) {
        assert onStack(el);
        for (int pos = stack.size() -1; pos >= 0; pos--) {
            Element next = stack.get(pos);
            if (next == el) {
                return stack.get(pos-1);
            }
        }
        return null;
    }

    void insertOnStackAfter(Element after, Element in) {
        int i = stack.lastIndexOf(after);
        Validate.isTrue(i != -1);
        stack.add(i+1, in);
    }

    void replaceOnStack(Element out, Element in) {
        replaceInQueue(stack, out, in);
    }

    private void replaceInQueue(ArrayList<Element> queue, Element out, Element in) {
        int i = queue.lastIndexOf(out);
        Validate.isTrue(i != -1);
        queue.set(i, in);
    }

    void resetInsertionMode() {
        boolean last = false;
        int PROBE_START_LINE_405 = 405;
		boolean FOR_STMT_TOGGLE_LINE_406 = false;
		int PROBE_END_LINE_405 = 405;
		for (int pos = 0; true;) {
            int PROBE_START_LINE_407 = 407;
			if (!FOR_STMT_TOGGLE_LINE_406) {
				FOR_STMT_TOGGLE_LINE_406 = true;
				ArrayList<org.jsoup.nodes.Element> f_stack_603_line_406 = stack;
				int html_tree_builder_1_expr117_line_406 = f_stack_603_line_406.size();
				int html_tree_builder_1_expr116_line_406 = html_tree_builder_1_expr117_line_406 - 1;
				pos = html_tree_builder_1_expr116_line_406;
			} else {
				if (FOR_STMT_TOGGLE_LINE_406) {
					pos--;
				} else {
					FOR_STMT_TOGGLE_LINE_406 = true;
				}
			}
			int v_pos_650_line_406 = pos;
			boolean html_tree_builder_1_expr118_line_406 = v_pos_650_line_406 >= 0;
			if (!(html_tree_builder_1_expr118_line_406)) {
				break;
			}
			ArrayList<org.jsoup.nodes.Element> f_stack_603_line_407 = stack;
			int v_pos_650_line_407 = pos;
			Element html_tree_builder_1_expr120_line_407 = f_stack_603_line_407.get(v_pos_650_line_407);
			int PROBE_END_LINE_407 = 407;
			Element node = html_tree_builder_1_expr120_line_407;
            int PROBE_START_LINE_408 = 411;
			int v_pos_650_line_408 = pos;
			boolean html_tree_builder_1_expr121_line_408 = v_pos_650_line_408 == 0;
			int PROBE_END_LINE_408 = 411;
			if (html_tree_builder_1_expr121_line_408) {
                last = true;
                int PROBE_START_LINE_410 = 410;
				org.jsoup.nodes.Element f_context_element_587_line_410 = contextElement;
				int PROBE_END_LINE_410 = 410;
				node = f_context_element_587_line_410;
            }
            int PROBE_START_LINE_412 = 412;
			org.jsoup.nodes.Element v_node_651_line_412 = node;
			String html_tree_builder_1_expr124_line_412 = v_node_651_line_412.nodeName();
			int PROBE_END_LINE_412 = 412;
			String name = html_tree_builder_1_expr124_line_412;
            int PROBE_START_LINE_413 = 449;
			String v_name_652_line_413 = name;
			boolean html_tree_builder_1_expr125_line_413 = "select".equals(v_name_652_line_413);
			int PROBE_END_LINE_413 = 449;
			if (html_tree_builder_1_expr125_line_413) {
                transition(HtmlTreeBuilderState.InSelect);
                break; // frag
            } else {
				int PROBE_START_LINE_416 = 449;
				String v_name_652_line_416 = name;
				boolean html_tree_builder_1_expr128_line_416 = "td".equals(v_name_652_line_416);
				boolean html_tree_builder_1_expr129_line_416 = false;
				if (!html_tree_builder_1_expr128_line_416) {
					String v_name_652_line_416_v1 = name;
					boolean html_tree_builder_1_expr130_line_416 = "th".equals(v_name_652_line_416_v1);
					boolean html_tree_builder_1_expr131_line_416 = true;
					if (html_tree_builder_1_expr130_line_416) {
						boolean v_last_649_line_416 = last;
						html_tree_builder_1_expr131_line_416 = !v_last_649_line_416;
					}
					html_tree_builder_1_expr129_line_416 = html_tree_builder_1_expr130_line_416
							&& html_tree_builder_1_expr131_line_416;
				}
				boolean html_tree_builder_1_expr127_line_416 = html_tree_builder_1_expr128_line_416
						|| html_tree_builder_1_expr129_line_416;
				boolean html_tree_builder_1_expr126_line_416 = (html_tree_builder_1_expr127_line_416);
				int PROBE_END_LINE_416 = 449;
				if (html_tree_builder_1_expr126_line_416) {
					transition(HtmlTreeBuilderState.InCell);
					break;
				} else {
					int PROBE_START_LINE_419 = 449;
					String v_name_652_line_419 = name;
					boolean html_tree_builder_1_expr132_line_419 = "tr".equals(v_name_652_line_419);
					int PROBE_END_LINE_419 = 449;
					if (html_tree_builder_1_expr132_line_419) {
						transition(HtmlTreeBuilderState.InRow);
						break;
					} else {
						int PROBE_START_LINE_422 = 449;
						String v_name_652_line_422 = name;
						boolean html_tree_builder_1_expr134_line_422 = "tbody".equals(v_name_652_line_422);
						boolean html_tree_builder_1_expr135_line_422 = false;
						boolean html_tree_builder_1_expr136_line_422 = false;
						if (!html_tree_builder_1_expr134_line_422) {
							String v_name_652_line_422_v1 = name;
							html_tree_builder_1_expr135_line_422 = "thead".equals(v_name_652_line_422_v1);
							if (!html_tree_builder_1_expr135_line_422) {
								String v_name_652_line_422_v2 = name;
								html_tree_builder_1_expr136_line_422 = "tfoot".equals(v_name_652_line_422_v2);
							}
						}
						boolean html_tree_builder_1_expr133_line_422 = html_tree_builder_1_expr134_line_422
								|| html_tree_builder_1_expr135_line_422 || html_tree_builder_1_expr136_line_422;
						int PROBE_END_LINE_422 = 449;
						if (html_tree_builder_1_expr133_line_422) {
							transition(HtmlTreeBuilderState.InTableBody);
							break;
						} else {
							int PROBE_START_LINE_425 = 449;
							String v_name_652_line_425 = name;
							boolean html_tree_builder_1_expr137_line_425 = "caption".equals(v_name_652_line_425);
							int PROBE_END_LINE_425 = 449;
							if (html_tree_builder_1_expr137_line_425) {
								transition(HtmlTreeBuilderState.InCaption);
								break;
							} else {
								int PROBE_START_LINE_428 = 449;
								String v_name_652_line_428 = name;
								boolean html_tree_builder_1_expr138_line_428 = "colgroup".equals(v_name_652_line_428);
								int PROBE_END_LINE_428 = 449;
								if (html_tree_builder_1_expr138_line_428) {
									transition(HtmlTreeBuilderState.InColumnGroup);
									break;
								} else {
									int PROBE_START_LINE_431 = 449;
									String v_name_652_line_431 = name;
									boolean html_tree_builder_1_expr139_line_431 = "table".equals(v_name_652_line_431);
									int PROBE_END_LINE_431 = 449;
									if (html_tree_builder_1_expr139_line_431) {
										transition(HtmlTreeBuilderState.InTable);
										break;
									} else {
										int PROBE_START_LINE_434 = 449;
										String v_name_652_line_434 = name;
										boolean html_tree_builder_1_expr140_line_434 = "head"
												.equals(v_name_652_line_434);
										int PROBE_END_LINE_434 = 449;
										if (html_tree_builder_1_expr140_line_434) {
											transition(HtmlTreeBuilderState.InBody);
											break;
										} else {
											int PROBE_START_LINE_437 = 449;
											String v_name_652_line_437 = name;
											boolean html_tree_builder_1_expr141_line_437 = "body"
													.equals(v_name_652_line_437);
											int PROBE_END_LINE_437 = 449;
											if (html_tree_builder_1_expr141_line_437) {
												int PROBE_START_LINE_438 = 438;
												org.jsoup.parser.HtmlTreeBuilderState q_in_body_29_line_438 = HtmlTreeBuilderState.InBody;
												int PROBE_END_LINE_438 = 438;
												transition(q_in_body_29_line_438);
												break;
											} else if ("frameset".equals(name)) {
												transition(HtmlTreeBuilderState.InFrameset);
												break;
											} else if ("html".equals(name)) {
												transition(HtmlTreeBuilderState.BeforeHead);
												break;
											} else if (last) {
												transition(HtmlTreeBuilderState.InBody);
												break;
											}
										}
									}
								}
							}
						}
					}
				}
			}
        }
    }

    // todo: tidy up in specific scope methods
    private String[] specificScopeTarget = {null};

    private boolean inSpecificScope(String targetName, String[] baseTypes, String[] extraTypes) {
        int PROBE_START_LINE_457 = 457;
		String[] f_specific_scope_target_653_line_457 = specificScopeTarget;
		String p_target_name_654_line_457 = targetName;
		int PROBE_END_LINE_457 = 457;
		f_specific_scope_target_653_line_457[0] = p_target_name_654_line_457;
        int PROBE_START_LINE_458 = 458;
		String[] f_specific_scope_target_653_line_458 = specificScopeTarget;
		String[] p_base_types_655_line_458 = baseTypes;
		String[] p_extra_types_656_line_458 = extraTypes;
		boolean html_tree_builder_1_expr146_line_458 = inSpecificScope(f_specific_scope_target_653_line_458,
				p_base_types_655_line_458, p_extra_types_656_line_458);
		int PROBE_END_LINE_458 = 458;
		return html_tree_builder_1_expr146_line_458;
    }

    private boolean inSpecificScope(String[] targetNames, String[] baseTypes, String[] extraTypes) {
        int PROBE_START_LINE_461 = 461;
		boolean FOR_STMT_TOGGLE_LINE_462 = false;
		int PROBE_END_LINE_461 = 461;
		for (int pos = 0; true;) {
            int PROBE_START_LINE_463 = 463;
			if (!FOR_STMT_TOGGLE_LINE_462) {
				FOR_STMT_TOGGLE_LINE_462 = true;
				ArrayList<org.jsoup.nodes.Element> f_stack_603_line_462 = stack;
				int html_tree_builder_1_expr149_line_462 = f_stack_603_line_462.size();
				int html_tree_builder_1_expr148_line_462 = html_tree_builder_1_expr149_line_462 - 1;
				pos = html_tree_builder_1_expr148_line_462;
			} else {
				if (FOR_STMT_TOGGLE_LINE_462) {
					pos--;
				} else {
					FOR_STMT_TOGGLE_LINE_462 = true;
				}
			}
			int v_pos_660_line_462 = pos;
			boolean html_tree_builder_1_expr150_line_462 = v_pos_660_line_462 >= 0;
			if (!(html_tree_builder_1_expr150_line_462)) {
				break;
			}
			ArrayList<org.jsoup.nodes.Element> f_stack_603_line_463 = stack;
			int v_pos_660_line_463 = pos;
			Element html_tree_builder_1_expr152_line_463 = f_stack_603_line_463.get(v_pos_660_line_463);
			int PROBE_END_LINE_463 = 463;
			Element el = html_tree_builder_1_expr152_line_463;
            int PROBE_START_LINE_464 = 464;
			org.jsoup.nodes.Element v_el_661_line_464 = el;
			String html_tree_builder_1_expr153_line_464 = v_el_661_line_464.nodeName();
			int PROBE_END_LINE_464 = 464;
			String elName = html_tree_builder_1_expr153_line_464;
            int PROBE_START_LINE_465 = 466;
			String v_el_name_662_line_465 = elName;
			String[] p_target_names_657_line_465 = targetNames;
			boolean html_tree_builder_1_expr154_line_465 = StringUtil.in(v_el_name_662_line_465,
					p_target_names_657_line_465);
			int PROBE_END_LINE_465 = 466;
			if (html_tree_builder_1_expr154_line_465)
                return true;
            int PROBE_START_LINE_467 = 468;
			String v_el_name_662_line_467 = elName;
			String[] p_base_types_658_line_467 = baseTypes;
			boolean html_tree_builder_1_expr155_line_467 = StringUtil.in(v_el_name_662_line_467,
					p_base_types_658_line_467);
			int PROBE_END_LINE_467 = 468;
			if (html_tree_builder_1_expr155_line_467)
                return false;
            int PROBE_START_LINE_469 = 470;
			String[] p_extra_types_659_line_469 = extraTypes;
			boolean html_tree_builder_1_expr157_line_469 = p_extra_types_659_line_469 != null;
			boolean html_tree_builder_1_expr158_line_469 = true;
			if (html_tree_builder_1_expr157_line_469) {
				String v_el_name_662_line_469 = elName;
				String[] p_extra_types_659_line_469_v1 = extraTypes;
				html_tree_builder_1_expr158_line_469 = StringUtil.in(v_el_name_662_line_469,
						p_extra_types_659_line_469_v1);
			}
			boolean html_tree_builder_1_expr156_line_469 = html_tree_builder_1_expr157_line_469
					&& html_tree_builder_1_expr158_line_469;
			int PROBE_END_LINE_469 = 470;
			if (html_tree_builder_1_expr156_line_469)
                return false;
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    boolean inScope(String[] targetNames) {
        return inSpecificScope(targetNames, TagsSearchInScope, null);
    }

    boolean inScope(String targetName) {
        int PROBE_START_LINE_481 = 481;
		String p_target_name_664_line_481 = targetName;
		boolean html_tree_builder_1_expr159_line_481 = inScope(p_target_name_664_line_481, null);
		int PROBE_END_LINE_481 = 481;
		return html_tree_builder_1_expr159_line_481;
    }

    boolean inScope(String targetName, String[] extras) {
        int PROBE_START_LINE_485 = 485;
		String p_target_name_665_line_485 = targetName;
		String[] f_tags_search_in_scope_571_line_485 = TagsSearchInScope;
		String[] p_extras_666_line_485 = extras;
		boolean html_tree_builder_1_expr160_line_485 = inSpecificScope(p_target_name_665_line_485,
				f_tags_search_in_scope_571_line_485, p_extras_666_line_485);
		int PROBE_END_LINE_485 = 485;
		return html_tree_builder_1_expr160_line_485;
        // todo: in mathml namespace: mi, mo, mn, ms, mtext annotation-xml
        // todo: in svg namespace: forignOjbect, desc, title
    }

    boolean inListItemScope(String targetName) {
        return inScope(targetName, TagSearchList);
    }

    boolean inButtonScope(String targetName) {
        int PROBE_START_LINE_495 = 495;
		String p_target_name_668_line_495 = targetName;
		String[] f_tag_search_button_573_line_495 = TagSearchButton;
		boolean html_tree_builder_1_expr161_line_495 = inScope(p_target_name_668_line_495,
				f_tag_search_button_573_line_495);
		int PROBE_END_LINE_495 = 495;
		return html_tree_builder_1_expr161_line_495;
    }

    boolean inTableScope(String targetName) {
        return inSpecificScope(targetName, TagSearchTableScope, null);
    }

    boolean inSelectScope(String targetName) {
        for (int pos = stack.size() -1; pos >= 0; pos--) {
            Element el = stack.get(pos);
            String elName = el.nodeName();
            if (elName.equals(targetName))
                return true;
            if (!StringUtil.in(elName, TagSearchSelectScope)) // all elements except
                return false;
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    void setHeadElement(Element headElement) {
        int PROBE_START_LINE_516 = 516;
		org.jsoup.nodes.Element p_head_element_671_line_516 = headElement;
		int PROBE_END_LINE_516 = 516;
		this.headElement = p_head_element_671_line_516;
    }

    Element getHeadElement() {
        return headElement;
    }

    boolean isFosterInserts() {
        int PROBE_START_LINE_524 = 524;
		boolean f_foster_inserts_592_line_524 = fosterInserts;
		int PROBE_END_LINE_524 = 524;
		return f_foster_inserts_592_line_524;
    }

    void setFosterInserts(boolean fosterInserts) {
        this.fosterInserts = fosterInserts;
    }

    FormElement getFormElement() {
        return formElement;
    }

    void setFormElement(FormElement formElement) {
        this.formElement = formElement;
    }

    void newPendingTableCharacters() {
        pendingTableCharacters = new ArrayList<>();
    }

    List<String> getPendingTableCharacters() {
        return pendingTableCharacters;
    }

    void setPendingTableCharacters(List<String> pendingTableCharacters) {
        this.pendingTableCharacters = pendingTableCharacters;
    }

    /**
     11.2.5.2 Closing elements that have implied end tags<p/>
     When the steps below require the UA to generate implied end tags, then, while the current node is a dd element, a
     dt element, an li element, an option element, an optgroup element, a p element, an rp element, or an rt element,
     the UA must pop the current node off the stack of open elements.

     @param excludeTag If a step requires the UA to generate implied end tags but lists an element to exclude from the
     process, then the UA must perform the above steps as if that element was not in the above list.
     */
    void generateImpliedEndTags(String excludeTag) {
        while (true) {
			int PROBE_START_LINE_561 = 562;
			String p_exclude_tag_675_line_561 = excludeTag;
			boolean html_tree_builder_1_expr168_line_561 = p_exclude_tag_675_line_561 != null;
			boolean html_tree_builder_1_expr169_line_561 = true;
			if (html_tree_builder_1_expr168_line_561) {
				org.jsoup.nodes.Element html_tree_builder_1_expr172_line_561 = currentElement();
				String html_tree_builder_1_expr171_line_561 = html_tree_builder_1_expr172_line_561.nodeName();
				String p_exclude_tag_675_line_561_v1 = excludeTag;
				boolean html_tree_builder_1_expr170_line_561 = html_tree_builder_1_expr171_line_561
						.equals(p_exclude_tag_675_line_561_v1);
				html_tree_builder_1_expr169_line_561 = !html_tree_builder_1_expr170_line_561;
			}
			boolean html_tree_builder_1_expr167_line_561 = html_tree_builder_1_expr168_line_561
					&& html_tree_builder_1_expr169_line_561;
			boolean html_tree_builder_1_expr166_line_561 = (html_tree_builder_1_expr167_line_561);
			boolean html_tree_builder_1_expr165_line_561 = html_tree_builder_1_expr166_line_561
					&& StringUtil.in(currentElement().nodeName(), TagSearchEndTags);
			if (!(html_tree_builder_1_expr165_line_561)) {
				break;
			}
			int PROBE_END_LINE_561 = 562;
			pop();
		}
    }

    void generateImpliedEndTags() {
        generateImpliedEndTags(null);
    }

    boolean isSpecial(Element el) {
        // todo: mathml's mi, mo, mn
        // todo: svg's foreigObject, desc, title
        String name = el.nodeName();
        return StringUtil.in(name, TagSearchSpecial);
    }

    Element lastFormattingElement() {
        int PROBE_START_LINE_578 = 578;
		ArrayList<org.jsoup.nodes.Element> f_formatting_elements_588_line_578 = formattingElements;
		int html_tree_builder_1_expr177_line_578 = f_formatting_elements_588_line_578.size();
		boolean html_tree_builder_1_expr175_line_578 = html_tree_builder_1_expr177_line_578 > 0;
		org.jsoup.nodes.Element html_tree_builder_1_expr176_line_578 = null;
		if (html_tree_builder_1_expr175_line_578) {
			ArrayList<org.jsoup.nodes.Element> f_formatting_elements_588_line_578_v1 = formattingElements;
			ArrayList<org.jsoup.nodes.Element> f_formatting_elements_588_line_578_v2 = formattingElements;
			int html_tree_builder_1_expr179_line_578 = f_formatting_elements_588_line_578_v2.size();
			int html_tree_builder_1_expr178_line_578 = html_tree_builder_1_expr179_line_578 - 1;
			html_tree_builder_1_expr176_line_578 = f_formatting_elements_588_line_578_v1
					.get(html_tree_builder_1_expr178_line_578);
		}
		org.jsoup.nodes.Element html_tree_builder_1_expr174_line_578 = html_tree_builder_1_expr175_line_578
				? html_tree_builder_1_expr176_line_578
				: null;
		int PROBE_END_LINE_578 = 578;
		return html_tree_builder_1_expr174_line_578;
    }

    Element removeLastFormattingElement() {
        int size = formattingElements.size();
        if (size > 0)
            return formattingElements.remove(size-1);
        else
            return null;
    }

    // active formatting elements
    void pushActiveFormattingElements(Element in) {
        int numSeen = 0;
        for (int pos = formattingElements.size() -1; pos >= 0; pos--) {
            Element el = formattingElements.get(pos);
            if (el == null) // marker
                break;

            if (isSameFormattingElement(in, el))
                numSeen++;

            if (numSeen == 3) {
                formattingElements.remove(pos);
                break;
            }
        }
        formattingElements.add(in);
    }

    private boolean isSameFormattingElement(Element a, Element b) {
        // same if: same namespace, tag, and attributes. Element.equals only checks tag, might in future check children
        return a.nodeName().equals(b.nodeName()) &&
                // a.namespace().equals(b.namespace()) &&
                a.attributes().equals(b.attributes());
        // todo: namespaces
    }

    void reconstructFormattingElements() {
        int PROBE_START_LINE_617 = 617;
		Element html_tree_builder_1_expr180_line_617 = lastFormattingElement();
		int PROBE_END_LINE_617 = 617;
		Element last = html_tree_builder_1_expr180_line_617;
        int PROBE_START_LINE_618 = 619;
		org.jsoup.nodes.Element v_last_680_line_618 = last;
		boolean html_tree_builder_1_expr182_line_618 = v_last_680_line_618 == null;
		boolean html_tree_builder_1_expr183_line_618 = false;
		if (!html_tree_builder_1_expr182_line_618) {
			org.jsoup.nodes.Element v_last_680_line_618_v1 = last;
			html_tree_builder_1_expr183_line_618 = onStack(v_last_680_line_618_v1);
		}
		boolean html_tree_builder_1_expr181_line_618 = html_tree_builder_1_expr182_line_618
				|| html_tree_builder_1_expr183_line_618;
		int PROBE_END_LINE_618 = 619;
		if (html_tree_builder_1_expr181_line_618)
            return;

        Element entry = last;
        int size = formattingElements.size();
        int pos = size - 1;
        boolean skip = false;
        while (true) {
            if (pos == 0) { // step 4. if none before, skip to 8
                skip = true;
                break;
            }
            entry = formattingElements.get(--pos); // step 5. one earlier than entry
            if (entry == null || onStack(entry)) // step 6 - neither marker nor on stack
                break; // jump to 8, else continue back to 4
        }
        while(true) {
            if (!skip) // step 7: on later than entry
                entry = formattingElements.get(++pos);
            Validate.notNull(entry); // should not occur, as we break at last element

            // 8. create new element from element, 9 insert into current node, onto stack
            skip = false; // can only skip increment from 4.
            Element newEl = insertStartTag(entry.nodeName()); // todo: avoid fostering here?
            // newEl.namespace(entry.namespace()); // todo: namespaces
            newEl.attributes().addAll(entry.attributes());

            // 10. replace entry with new entry
            formattingElements.set(pos, newEl);

            // 11
            if (pos == size-1) // if not last entry in list, jump to 7
                break;
        }
    }

    void clearFormattingElementsToLastMarker() {
        while (!formattingElements.isEmpty()) {
            Element el = removeLastFormattingElement();
            if (el == null)
                break;
        }
    }

    void removeFromActiveFormattingElements(Element el) {
        for (int pos = formattingElements.size() -1; pos >= 0; pos--) {
            Element next = formattingElements.get(pos);
            if (next == el) {
                formattingElements.remove(pos);
                break;
            }
        }
    }

    boolean isInActiveFormattingElements(Element el) {
        return isElementInQueue(formattingElements, el);
    }

    Element getActiveFormattingElement(String nodeName) {
        for (int pos = formattingElements.size() -1; pos >= 0; pos--) {
            Element next = formattingElements.get(pos);
            if (next == null) // scope marker
                break;
            else if (next.nodeName().equals(nodeName))
                return next;
        }
        return null;
    }

    void replaceActiveFormattingElement(Element out, Element in) {
        replaceInQueue(formattingElements, out, in);
    }

    void insertMarkerToFormattingElements() {
        formattingElements.add(null);
    }

    void insertInFosterParent(Node in) {
        Element fosterParent;
        Element lastTable = getFromStack("table");
        boolean isLastTableParent = false;
        if (lastTable != null) {
            if (lastTable.parent() != null) {
                fosterParent = lastTable.parent();
                isLastTableParent = true;
            } else
                fosterParent = aboveOnStack(lastTable);
        } else { // no table == frag
            fosterParent = stack.get(0);
        }

        if (isLastTableParent) {
            Validate.notNull(lastTable); // last table cannot be null by this point.
            lastTable.before(in);
        }
        else
            fosterParent.appendChild(in);
    }

    @Override
    public String toString() {
        return "TreeBuilder{" +
                "currentToken=" + currentToken +
                ", state=" + state +
                ", currentElement=" + currentElement() +
                '}';
    }
}
