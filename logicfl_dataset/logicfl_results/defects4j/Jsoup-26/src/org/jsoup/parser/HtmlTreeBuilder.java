package org.jsoup.parser;

import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.*;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Document.QuirksMode;

/**
 * HTML Tree Builder; creates a DOM from Tokens.
 */
class HtmlTreeBuilder extends TreeBuilder {

    private HtmlTreeBuilderState state; // the current state
    private HtmlTreeBuilderState originalState; // original / marked state

    private boolean baseUriSetFromDoc = false;
    private Element headElement; // the current head element
    private Element formElement; // the current form element
    private Element contextElement; // fragment parse context -- could be null even if fragment parsing
    private DescendableLinkedList<Element> formattingElements = new DescendableLinkedList<Element>(); // active (open) formatting elements
    private List<Token.Character> pendingTableCharacters = new ArrayList<Token.Character>(); // chars in table to be shifted out

    private boolean framesetOk = true; // if ok to go into frameset
    private boolean fosterInserts = false; // if next inserts should be fostered
    private boolean fragmentParsing = false; // if parsing a fragment of html

    HtmlTreeBuilder() {}

    @Override
    Document parse(String input, String baseUri, ParseErrorList errors) {
        int PROBE_START_LINE_36 = 36;
		org.jsoup.parser.HtmlTreeBuilderState q_initial_7_line_36 = HtmlTreeBuilderState.Initial;
		int PROBE_END_LINE_36 = 36;
		state = q_initial_7_line_36;
        int PROBE_START_LINE_37 = 37;
		String p_input_335_line_37 = input;
		String p_base_uri_336_line_37 = baseUri;
		org.jsoup.parser.ParseErrorList p_errors_337_line_37 = errors;
		org.jsoup.nodes.Document html_tree_builder_1_expr4_line_37 = super.parse(p_input_335_line_37,
				p_base_uri_336_line_37, p_errors_337_line_37);
		int PROBE_END_LINE_37 = 37;
		return html_tree_builder_1_expr4_line_37;
    }

    List<Node> parseFragment(String inputFragment, Element context, String baseUri, ParseErrorList errors) {
        int PROBE_START_LINE_42 = 42;
		org.jsoup.parser.HtmlTreeBuilderState q_initial_8_line_42 = HtmlTreeBuilderState.Initial;
		int PROBE_END_LINE_42 = 42;
		// context may be null
        state = q_initial_8_line_42;
        int PROBE_START_LINE_43 = 43;
		String p_input_fragment_339_line_43 = inputFragment;
		String p_base_uri_341_line_43 = baseUri;
		org.jsoup.parser.ParseErrorList p_errors_342_line_43 = errors;
		int PROBE_END_LINE_43 = 43;
		initialiseParse(p_input_fragment_339_line_43, p_base_uri_341_line_43, p_errors_342_line_43);
        int PROBE_START_LINE_44 = 44;
		org.jsoup.nodes.Element p_context_340_line_44 = context;
		int PROBE_END_LINE_44 = 44;
		contextElement = p_context_340_line_44;
        fragmentParsing = true;
        Element root = null;

        int PROBE_START_LINE_48 = 72;
		org.jsoup.nodes.Element p_context_340_line_48 = context;
		boolean html_tree_builder_1_expr9_line_48 = p_context_340_line_48 != null;
		int PROBE_END_LINE_48 = 72;
		if (html_tree_builder_1_expr9_line_48) {
            int PROBE_START_LINE_49 = 50;
			org.jsoup.nodes.Element p_context_340_line_49 = context;
			org.jsoup.nodes.Document html_tree_builder_1_expr11_line_49 = p_context_340_line_49.ownerDocument();
			boolean html_tree_builder_1_expr10_line_49 = html_tree_builder_1_expr11_line_49 != null;
			int PROBE_END_LINE_49 = 50;
			if (html_tree_builder_1_expr10_line_49) {
				int PROBE_START_LINE_50 = 50;
				org.jsoup.nodes.Document f_doc_345_line_50 = doc;
				org.jsoup.nodes.Element p_context_340_line_50 = context;
				org.jsoup.nodes.Document html_tree_builder_1_expr14_line_50 = p_context_340_line_50.ownerDocument();
				org.jsoup.nodes.Document.QuirksMode html_tree_builder_1_expr13_line_50 = html_tree_builder_1_expr14_line_50
						.quirksMode();
				int PROBE_END_LINE_50 = 50;
				f_doc_345_line_50.quirksMode(html_tree_builder_1_expr13_line_50);
			}

            int PROBE_START_LINE_53 = 53;
			org.jsoup.nodes.Element p_context_340_line_53 = context;
			String html_tree_builder_1_expr15_line_53 = p_context_340_line_53.tagName();
			int PROBE_END_LINE_53 = 53;
			// initialise the tokeniser state:
            String contextTag = html_tree_builder_1_expr15_line_53;
            int PROBE_START_LINE_54 = 65;
			String v_context_tag_346_line_54 = contextTag;
			boolean html_tree_builder_1_expr16_line_54 = StringUtil.in(v_context_tag_346_line_54, "title", "textarea");
			int PROBE_END_LINE_54 = 65;
			if (html_tree_builder_1_expr16_line_54)
                tokeniser.transition(TokeniserState.Rcdata);
			else {
				int PROBE_START_LINE_56 = 65;
				String v_context_tag_346_line_56 = contextTag;
				boolean html_tree_builder_1_expr17_line_56 = StringUtil.in(v_context_tag_346_line_56, "iframe",
						"noembed", "noframes", "style", "xmp");
				int PROBE_END_LINE_56 = 65;
				if (html_tree_builder_1_expr17_line_56)
					tokeniser.transition(TokeniserState.Rawtext);
				else {
					int PROBE_START_LINE_58 = 65;
					String v_context_tag_346_line_58 = contextTag;
					boolean html_tree_builder_1_expr18_line_58 = v_context_tag_346_line_58.equals("script");
					int PROBE_END_LINE_58 = 65;
					if (html_tree_builder_1_expr18_line_58)
						tokeniser.transition(TokeniserState.ScriptData);
					else {
						int PROBE_START_LINE_60 = 65;
						String v_context_tag_346_line_60 = contextTag;
						String html_tree_builder_1_expr20_line_60 = ("noscript");
						boolean html_tree_builder_1_expr19_line_60 = v_context_tag_346_line_60
								.equals(html_tree_builder_1_expr20_line_60);
						int PROBE_END_LINE_60 = 65;
						if (html_tree_builder_1_expr19_line_60)
							tokeniser.transition(TokeniserState.Data);
						else {
							int PROBE_START_LINE_62 = 65;
							String v_context_tag_346_line_62 = contextTag;
							boolean html_tree_builder_1_expr21_line_62 = v_context_tag_346_line_62.equals("plaintext");
							int PROBE_END_LINE_62 = 65;
							if (html_tree_builder_1_expr21_line_62)
								tokeniser.transition(TokeniserState.Data);
							else {
								int PROBE_START_LINE_65 = 65;
								org.jsoup.parser.Tokeniser f_tokeniser_347_line_65 = tokeniser;
								org.jsoup.parser.TokeniserState q_data_8_line_65 = TokeniserState.Data;
								int PROBE_END_LINE_65 = 65;
								f_tokeniser_347_line_65.transition(q_data_8_line_65);
							}
						}
					}
				}
			}

            int PROBE_START_LINE_67 = 67;
			org.jsoup.parser.Tag html_tree_builder_1_expr25_line_67 = Tag.valueOf("html");
			String p_base_uri_341_line_67 = baseUri;
			int PROBE_END_LINE_67 = 67;
			root = new Element(html_tree_builder_1_expr25_line_67, p_base_uri_341_line_67);
            int PROBE_START_LINE_68 = 68;
			org.jsoup.nodes.Document f_doc_345_line_68 = doc;
			org.jsoup.nodes.Element v_root_344_line_68 = root;
			int PROBE_END_LINE_68 = 68;
			f_doc_345_line_68.appendChild(v_root_344_line_68);
            int PROBE_START_LINE_69 = 69;
			DescendableLinkedList<org.jsoup.nodes.Element> f_stack_348_line_69 = stack;
			org.jsoup.nodes.Element v_root_344_line_69 = root;
			int PROBE_END_LINE_69 = 69;
			f_stack_348_line_69.push(v_root_344_line_69);
            resetInsertionMode();
            // todo: setup form element to nearest form on context (up ancestor chain)
        }

        runParser();
        int PROBE_START_LINE_75 = 78;
		org.jsoup.nodes.Element p_context_340_line_75 = context;
		boolean html_tree_builder_1_expr30_line_75 = p_context_340_line_75 != null;
		int PROBE_END_LINE_75 = 78;
		if (html_tree_builder_1_expr30_line_75) {
			int PROBE_START_LINE_76 = 76;
			org.jsoup.nodes.Element v_root_344_line_76 = root;
			List<org.jsoup.nodes.Node> html_tree_builder_1_expr31_line_76 = v_root_344_line_76.childNodes();
			int PROBE_END_LINE_76 = 76;
			return html_tree_builder_1_expr31_line_76;
		} else
            return doc.childNodes();
    }

    @Override
    protected boolean process(Token token) {
        int PROBE_START_LINE_83 = 83;
		org.jsoup.parser.Token p_token_349_line_83 = token;
		int PROBE_END_LINE_83 = 83;
		currentToken = p_token_349_line_83;
        int PROBE_START_LINE_84 = 84;
		org.jsoup.parser.HtmlTreeBuilderState f_state_338_line_84 = this.state;
		org.jsoup.parser.Token p_token_349_line_84 = token;
		boolean html_tree_builder_1_expr33_line_84 = f_state_338_line_84.process(p_token_349_line_84, this);
		int PROBE_END_LINE_84 = 84;
		return html_tree_builder_1_expr33_line_84;
    }

    boolean process(Token token, HtmlTreeBuilderState state) {
        int PROBE_START_LINE_88 = 88;
		org.jsoup.parser.Token p_token_351_line_88 = token;
		int PROBE_END_LINE_88 = 88;
		currentToken = p_token_351_line_88;
        int PROBE_START_LINE_89 = 89;
		org.jsoup.parser.HtmlTreeBuilderState p_state_352_line_89 = state;
		org.jsoup.parser.Token p_token_351_line_89 = token;
		boolean html_tree_builder_1_expr38_line_89 = p_state_352_line_89.process(p_token_351_line_89, this);
		int PROBE_END_LINE_89 = 89;
		return html_tree_builder_1_expr38_line_89;
    }

    void transition(HtmlTreeBuilderState state) {
        int PROBE_START_LINE_93 = 93;
		org.jsoup.parser.HtmlTreeBuilderState p_state_353_line_93 = state;
		int PROBE_END_LINE_93 = 93;
		this.state = p_state_353_line_93;
    }

    HtmlTreeBuilderState state() {
        return state;
    }

    void markInsertionMode() {
        int PROBE_START_LINE_101 = 101;
		org.jsoup.parser.HtmlTreeBuilderState f_state_338_line_101 = state;
		int PROBE_END_LINE_101 = 101;
		originalState = f_state_338_line_101;
    }

    HtmlTreeBuilderState originalState() {
        int PROBE_START_LINE_105 = 105;
		org.jsoup.parser.HtmlTreeBuilderState f_original_state_354_line_105 = originalState;
		int PROBE_END_LINE_105 = 105;
		return f_original_state_354_line_105;
    }

    void framesetOk(boolean framesetOk) {
        this.framesetOk = framesetOk;
    }

    boolean framesetOk() {
        return framesetOk;
    }

    Document getDocument() {
        return doc;
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
        int PROBE_START_LINE_137 = 137;
		boolean f_fragment_parsing_334_line_137 = fragmentParsing;
		int PROBE_END_LINE_137 = 137;
		return f_fragment_parsing_334_line_137;
    }

    void error(HtmlTreeBuilderState state) {
        int PROBE_START_LINE_141 = 142;
		org.jsoup.parser.ParseErrorList f_errors_358_line_141 = errors;
		boolean html_tree_builder_1_expr44_line_141 = f_errors_358_line_141.canAddError();
		int PROBE_END_LINE_141 = 142;
		if (html_tree_builder_1_expr44_line_141)
            errors.add(new ParseError(reader.pos(), "Unexpected token [%s] when in state [%s]", currentToken.tokenType(), state));
    }

    Element insert(Token.StartTag startTag) {
        int PROBE_START_LINE_148 = 152;
		org.jsoup.parser.Token.StartTag p_start_tag_359_line_148 = startTag;
		boolean html_tree_builder_1_expr46_line_148 = p_start_tag_359_line_148.isSelfClosing();
		boolean html_tree_builder_1_expr47_line_148 = true;
		if (html_tree_builder_1_expr46_line_148) {
			org.jsoup.parser.Token.StartTag p_start_tag_359_line_148_v1 = startTag;
			String html_tree_builder_1_expr49_line_148 = p_start_tag_359_line_148_v1.name();
			boolean html_tree_builder_1_expr48_line_148 = Tag.isKnownTag(html_tree_builder_1_expr49_line_148);
			html_tree_builder_1_expr47_line_148 = !html_tree_builder_1_expr48_line_148;
		}
		boolean html_tree_builder_1_expr45_line_148 = html_tree_builder_1_expr46_line_148
				&& html_tree_builder_1_expr47_line_148;
		int PROBE_END_LINE_148 = 152;
		// handle empty unknown tags
        // when the spec expects an empty tag, will directly hit insertEmpty, so won't generate fake end tag.
        if (html_tree_builder_1_expr45_line_148) {
            Element el = insertEmpty(startTag);
            process(new Token.EndTag(el.tagName())); // ensure we get out of whatever state we are in
            return el;
        }
        
        int PROBE_START_LINE_154 = 154;
		org.jsoup.parser.Token.StartTag p_start_tag_359_line_154 = startTag;
		String html_tree_builder_1_expr52_line_154 = p_start_tag_359_line_154.name();
		org.jsoup.parser.Tag html_tree_builder_1_expr51_line_154 = Tag.valueOf(html_tree_builder_1_expr52_line_154);
		String f_base_uri_361_line_154 = baseUri;
		org.jsoup.parser.Token.StartTag p_start_tag_359_line_154_v1 = startTag;
		org.jsoup.nodes.Attributes q_attributes_9_line_154 = p_start_tag_359_line_154_v1.attributes;
		int PROBE_END_LINE_154 = 154;
		Element el = new Element(html_tree_builder_1_expr51_line_154, f_base_uri_361_line_154, q_attributes_9_line_154);
        int PROBE_START_LINE_155 = 155;
		org.jsoup.nodes.Element v_el_360_line_155 = el;
		int PROBE_END_LINE_155 = 155;
		insert(v_el_360_line_155);
        int PROBE_START_LINE_156 = 156;
		org.jsoup.nodes.Element v_el_360_line_156 = el;
		int PROBE_END_LINE_156 = 156;
		return v_el_360_line_156;
    }

    Element insert(String startTagName) {
        Element el = new Element(Tag.valueOf(startTagName), baseUri);
        insert(el);
        return el;
    }

    void insert(Element el) {
        int PROBE_START_LINE_166 = 166;
		org.jsoup.nodes.Element p_el_363_line_166 = el;
		int PROBE_END_LINE_166 = 166;
		insertNode(p_el_363_line_166);
        int PROBE_START_LINE_167 = 167;
		DescendableLinkedList<org.jsoup.nodes.Element> f_stack_348_line_167 = stack;
		org.jsoup.nodes.Element p_el_363_line_167 = el;
		int PROBE_END_LINE_167 = 167;
		f_stack_348_line_167.add(p_el_363_line_167);
    }

    Element insertEmpty(Token.StartTag startTag) {
        int PROBE_START_LINE_171 = 171;
		org.jsoup.parser.Token.StartTag p_start_tag_364_line_171 = startTag;
		String html_tree_builder_1_expr57_line_171 = p_start_tag_364_line_171.name();
		Tag html_tree_builder_1_expr56_line_171 = Tag.valueOf(html_tree_builder_1_expr57_line_171);
		int PROBE_END_LINE_171 = 171;
		Tag tag = html_tree_builder_1_expr56_line_171;
        int PROBE_START_LINE_172 = 172;
		org.jsoup.parser.Tag v_tag_365_line_172 = tag;
		String f_base_uri_361_line_172 = baseUri;
		org.jsoup.parser.Token.StartTag p_start_tag_364_line_172 = startTag;
		org.jsoup.nodes.Attributes q_attributes_10_line_172 = p_start_tag_364_line_172.attributes;
		int PROBE_END_LINE_172 = 172;
		Element el = new Element(v_tag_365_line_172, f_base_uri_361_line_172, q_attributes_10_line_172);
        int PROBE_START_LINE_173 = 173;
		org.jsoup.nodes.Element v_el_366_line_173 = el;
		int PROBE_END_LINE_173 = 173;
		insertNode(v_el_366_line_173);
        int PROBE_START_LINE_174 = 178;
		org.jsoup.parser.Token.StartTag p_start_tag_364_line_174 = startTag;
		boolean html_tree_builder_1_expr60_line_174 = p_start_tag_364_line_174.isSelfClosing();
		int PROBE_END_LINE_174 = 178;
		if (html_tree_builder_1_expr60_line_174) {
            int PROBE_START_LINE_175 = 175;
			org.jsoup.parser.Tokeniser f_tokeniser_347_line_175 = tokeniser;
			int PROBE_END_LINE_175 = 175;
			f_tokeniser_347_line_175.acknowledgeSelfClosingFlag();
            int PROBE_START_LINE_176 = 177;
			org.jsoup.parser.Tag v_tag_365_line_176 = tag;
			boolean html_tree_builder_1_expr63_line_176 = v_tag_365_line_176.isKnownTag();
			boolean html_tree_builder_1_expr62_line_176 = !html_tree_builder_1_expr63_line_176;
			int PROBE_END_LINE_176 = 177;
			if (html_tree_builder_1_expr62_line_176) // unknown tag, remember this is self closing for output
                tag.setSelfClosing();
        }
        int PROBE_START_LINE_179 = 179;
		org.jsoup.nodes.Element v_el_366_line_179 = el;
		int PROBE_END_LINE_179 = 179;
		return v_el_366_line_179;
    }

    void insert(Token.Comment commentToken) {
        Comment comment = new Comment(commentToken.getData(), baseUri);
        insertNode(comment);
    }

    void insert(Token.Character characterToken) {
        Node node;
        // characters in script and style go in as datanodes, not text nodes
        if (StringUtil.in(currentElement().tagName(), "script", "style"))
            node = new DataNode(characterToken.getData(), baseUri);
        else
            node = new TextNode(characterToken.getData(), baseUri);
        currentElement().appendChild(node); // doesn't use insertNode, because we don't foster these; and will always have a stack.
    }

    private void insertNode(Node node) {
        int PROBE_START_LINE_199 = 204;
		DescendableLinkedList<org.jsoup.nodes.Element> f_stack_348_line_199 = stack;
		int html_tree_builder_1_expr65_line_199 = f_stack_348_line_199.size();
		boolean html_tree_builder_1_expr64_line_199 = html_tree_builder_1_expr65_line_199 == 0;
		int PROBE_END_LINE_199 = 204;
		// if the stack hasn't been set up yet, elements (doctype, comments) go into the doc
        if (html_tree_builder_1_expr64_line_199) {
			int PROBE_START_LINE_200 = 200;
			org.jsoup.nodes.Document f_doc_345_line_200 = doc;
			org.jsoup.nodes.Node p_node_369_line_200 = node;
			int PROBE_END_LINE_200 = 200;
			f_doc_345_line_200.appendChild(p_node_369_line_200);
		} else {
			int PROBE_START_LINE_201 = 204;
			boolean html_tree_builder_1_expr67_line_201 = isFosterInserts();
			int PROBE_END_LINE_201 = 204;
			if (html_tree_builder_1_expr67_line_201)
				insertInFosterParent(node);
			else {
				int PROBE_START_LINE_204 = 204;
				org.jsoup.nodes.Element html_tree_builder_1_expr69_line_204 = currentElement();
				org.jsoup.nodes.Node p_node_369_line_204 = node;
				int PROBE_END_LINE_204 = 204;
				html_tree_builder_1_expr69_line_204.appendChild(p_node_369_line_204);
			}
		}
    }

    Element pop() {
        int PROBE_START_LINE_209 = 210;
		DescendableLinkedList<org.jsoup.nodes.Element> f_stack_348_line_209 = stack;
		org.jsoup.nodes.Element html_tree_builder_1_expr73_line_209 = f_stack_348_line_209.peekLast();
		String html_tree_builder_1_expr72_line_209 = html_tree_builder_1_expr73_line_209.nodeName();
		boolean html_tree_builder_1_expr71_line_209 = html_tree_builder_1_expr72_line_209.equals("td");
		boolean html_tree_builder_1_expr74_line_209 = true;
		if (html_tree_builder_1_expr71_line_209) {
			org.jsoup.parser.HtmlTreeBuilderState f_state_338_line_209 = state;
			String html_tree_builder_1_expr76_line_209 = f_state_338_line_209.name();
			boolean html_tree_builder_1_expr75_line_209 = html_tree_builder_1_expr76_line_209.equals("InCell");
			html_tree_builder_1_expr74_line_209 = !html_tree_builder_1_expr75_line_209;
		}
		boolean html_tree_builder_1_expr70_line_209 = html_tree_builder_1_expr71_line_209
				&& html_tree_builder_1_expr74_line_209;
		int PROBE_END_LINE_209 = 210;
		// todo - dev, remove validation check
        if (html_tree_builder_1_expr70_line_209)
            Validate.isFalse(true, "pop td not in cell");
        int PROBE_START_LINE_211 = 212;
		DescendableLinkedList<org.jsoup.nodes.Element> f_stack_348_line_211 = stack;
		org.jsoup.nodes.Element html_tree_builder_1_expr79_line_211 = f_stack_348_line_211.peekLast();
		String html_tree_builder_1_expr78_line_211 = html_tree_builder_1_expr79_line_211.nodeName();
		boolean html_tree_builder_1_expr77_line_211 = html_tree_builder_1_expr78_line_211.equals("html");
		int PROBE_END_LINE_211 = 212;
		if (html_tree_builder_1_expr77_line_211)
            Validate.isFalse(true, "popping html!");
        int PROBE_START_LINE_213 = 213;
		DescendableLinkedList<org.jsoup.nodes.Element> f_stack_348_line_213 = stack;
		org.jsoup.nodes.Element html_tree_builder_1_expr80_line_213 = f_stack_348_line_213.pollLast();
		int PROBE_END_LINE_213 = 213;
		return html_tree_builder_1_expr80_line_213;
    }

    void push(Element element) {
        stack.add(element);
    }

    DescendableLinkedList<Element> getStack() {
        int PROBE_START_LINE_221 = 221;
		DescendableLinkedList<org.jsoup.nodes.Element> f_stack_348_line_221 = stack;
		int PROBE_END_LINE_221 = 221;
		return f_stack_348_line_221;
    }

    boolean onStack(Element el) {
        return isElementInQueue(stack, el);
    }

    private boolean isElementInQueue(DescendableLinkedList<Element> queue, Element element) {
        Iterator<Element> it = queue.descendingIterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (next == element) {
                return true;
            }
        }
        return false;
    }

    Element getFromStack(String elName) {
        Iterator<Element> it = stack.descendingIterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (next.nodeName().equals(elName)) {
                return next;
            }
        }
        return null;
    }

    boolean removeFromStack(Element el) {
        Iterator<Element> it = stack.descendingIterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (next == el) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    void popStackToClose(String elName) {
        int PROBE_START_LINE_263 = 263;
		DescendableLinkedList<org.jsoup.nodes.Element> f_stack_348_line_263 = stack;
		Iterator<Element> html_tree_builder_1_expr81_line_263 = f_stack_348_line_263.descendingIterator();
		int PROBE_END_LINE_263 = 263;
		Iterator<Element> it = html_tree_builder_1_expr81_line_263;
        while (true) {
            int PROBE_START_LINE_264 = 264;
			Iterator<org.jsoup.nodes.Element> v_it_377_line_264 = it;
			boolean html_tree_builder_1_expr82_line_264 = v_it_377_line_264.hasNext();
			if (!(html_tree_builder_1_expr82_line_264)) {
				break;
			}
			int PROBE_END_LINE_264 = 264;
			int PROBE_START_LINE_265 = 265;
			Iterator<org.jsoup.nodes.Element> v_it_377_line_265 = it;
			Element html_tree_builder_1_expr83_line_265 = v_it_377_line_265.next();
			int PROBE_END_LINE_265 = 265;
			Element next = html_tree_builder_1_expr83_line_265;
            int PROBE_START_LINE_266 = 271;
			org.jsoup.nodes.Element v_next_378_line_266 = next;
			String html_tree_builder_1_expr85_line_266 = v_next_378_line_266.nodeName();
			String p_el_name_376_line_266 = elName;
			boolean html_tree_builder_1_expr84_line_266 = html_tree_builder_1_expr85_line_266
					.equals(p_el_name_376_line_266);
			int PROBE_END_LINE_266 = 271;
			if (html_tree_builder_1_expr84_line_266) {
                int PROBE_START_LINE_267 = 267;
				Iterator<org.jsoup.nodes.Element> v_it_377_line_267 = it;
				int PROBE_END_LINE_267 = 267;
				v_it_377_line_267.remove();
                break;
            } else {
                it.remove();
            }
        }
    }

    void popStackToClose(String... elNames) {
        Iterator<Element> it = stack.descendingIterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (StringUtil.in(next.nodeName(), elNames)) {
                it.remove();
                break;
            } else {
                it.remove();
            }
        }
    }

    void popStackToBefore(String elName) {
        Iterator<Element> it = stack.descendingIterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (next.nodeName().equals(elName)) {
                break;
            } else {
                it.remove();
            }
        }
    }

    void clearStackToTableContext() {
        clearStackToContext("table");
    }

    void clearStackToTableBodyContext() {
        clearStackToContext("tbody", "tfoot", "thead");
    }

    void clearStackToTableRowContext() {
        clearStackToContext("tr");
    }

    private void clearStackToContext(String... nodeNames) {
        Iterator<Element> it = stack.descendingIterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (StringUtil.in(next.nodeName(), nodeNames) || next.nodeName().equals("html"))
                break;
            else
                it.remove();
        }
    }

    Element aboveOnStack(Element el) {
        assert onStack(el);
        Iterator<Element> it = stack.descendingIterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (next == el) {
                return it.next();
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

    private void replaceInQueue(LinkedList<Element> queue, Element out, Element in) {
        int i = queue.lastIndexOf(out);
        Validate.isTrue(i != -1);
        queue.remove(i);
        queue.add(i, in);
    }

    void resetInsertionMode() {
        boolean last = false;
        int PROBE_START_LINE_354 = 354;
		DescendableLinkedList<org.jsoup.nodes.Element> f_stack_348_line_354 = stack;
		Iterator<Element> html_tree_builder_1_expr87_line_354 = f_stack_348_line_354.descendingIterator();
		int PROBE_END_LINE_354 = 354;
		Iterator<Element> it = html_tree_builder_1_expr87_line_354;
        while (true) {
            int PROBE_START_LINE_355 = 355;
			Iterator<org.jsoup.nodes.Element> v_it_391_line_355 = it;
			boolean html_tree_builder_1_expr88_line_355 = v_it_391_line_355.hasNext();
			if (!(html_tree_builder_1_expr88_line_355)) {
				break;
			}
			int PROBE_END_LINE_355 = 355;
			int PROBE_START_LINE_356 = 356;
			Iterator<org.jsoup.nodes.Element> v_it_391_line_356 = it;
			Element html_tree_builder_1_expr89_line_356 = v_it_391_line_356.next();
			int PROBE_END_LINE_356 = 356;
			Element node = html_tree_builder_1_expr89_line_356;
            int PROBE_START_LINE_357 = 360;
			Iterator<org.jsoup.nodes.Element> v_it_391_line_357 = it;
			boolean html_tree_builder_1_expr91_line_357 = v_it_391_line_357.hasNext();
			boolean html_tree_builder_1_expr90_line_357 = !html_tree_builder_1_expr91_line_357;
			int PROBE_END_LINE_357 = 360;
			if (html_tree_builder_1_expr90_line_357) {
                last = true;
                int PROBE_START_LINE_359 = 359;
				org.jsoup.nodes.Element f_context_element_343_line_359 = contextElement;
				int PROBE_END_LINE_359 = 359;
				node = f_context_element_343_line_359;
            }
            int PROBE_START_LINE_361 = 361;
			org.jsoup.nodes.Element v_node_392_line_361 = node;
			String html_tree_builder_1_expr94_line_361 = v_node_392_line_361.nodeName();
			int PROBE_END_LINE_361 = 361;
			String name = html_tree_builder_1_expr94_line_361;
            int PROBE_START_LINE_362 = 398;
			String v_name_393_line_362 = name;
			boolean html_tree_builder_1_expr95_line_362 = "select".equals(v_name_393_line_362);
			int PROBE_END_LINE_362 = 398;
			if (html_tree_builder_1_expr95_line_362) {
                transition(HtmlTreeBuilderState.InSelect);
                break; // frag
            } else {
				int PROBE_START_LINE_365 = 398;
				String v_name_393_line_365 = name;
				boolean html_tree_builder_1_expr98_line_365 = "td".equals(v_name_393_line_365);
				boolean html_tree_builder_1_expr99_line_365 = false;
				if (!html_tree_builder_1_expr98_line_365) {
					String v_name_393_line_365_v1 = name;
					boolean html_tree_builder_1_expr100_line_365 = "td".equals(v_name_393_line_365_v1);
					boolean html_tree_builder_1_expr101_line_365 = true;
					if (html_tree_builder_1_expr100_line_365) {
						boolean v_last_390_line_365 = last;
						html_tree_builder_1_expr101_line_365 = !v_last_390_line_365;
					}
					html_tree_builder_1_expr99_line_365 = html_tree_builder_1_expr100_line_365
							&& html_tree_builder_1_expr101_line_365;
				}
				boolean html_tree_builder_1_expr97_line_365 = html_tree_builder_1_expr98_line_365
						|| html_tree_builder_1_expr99_line_365;
				boolean html_tree_builder_1_expr96_line_365 = (html_tree_builder_1_expr97_line_365);
				int PROBE_END_LINE_365 = 398;
				if (html_tree_builder_1_expr96_line_365) {
					transition(HtmlTreeBuilderState.InCell);
					break;
				} else {
					int PROBE_START_LINE_368 = 398;
					String v_name_393_line_368 = name;
					boolean html_tree_builder_1_expr102_line_368 = "tr".equals(v_name_393_line_368);
					int PROBE_END_LINE_368 = 398;
					if (html_tree_builder_1_expr102_line_368) {
						transition(HtmlTreeBuilderState.InRow);
						break;
					} else {
						int PROBE_START_LINE_371 = 398;
						String v_name_393_line_371 = name;
						boolean html_tree_builder_1_expr104_line_371 = "tbody".equals(v_name_393_line_371);
						boolean html_tree_builder_1_expr105_line_371 = false;
						boolean html_tree_builder_1_expr106_line_371 = false;
						if (!html_tree_builder_1_expr104_line_371) {
							String v_name_393_line_371_v1 = name;
							html_tree_builder_1_expr105_line_371 = "thead".equals(v_name_393_line_371_v1);
							if (!html_tree_builder_1_expr105_line_371) {
								String v_name_393_line_371_v2 = name;
								html_tree_builder_1_expr106_line_371 = "tfoot".equals(v_name_393_line_371_v2);
							}
						}
						boolean html_tree_builder_1_expr103_line_371 = html_tree_builder_1_expr104_line_371
								|| html_tree_builder_1_expr105_line_371 || html_tree_builder_1_expr106_line_371;
						int PROBE_END_LINE_371 = 398;
						if (html_tree_builder_1_expr103_line_371) {
							transition(HtmlTreeBuilderState.InTableBody);
							break;
						} else {
							int PROBE_START_LINE_374 = 398;
							String v_name_393_line_374 = name;
							boolean html_tree_builder_1_expr107_line_374 = "caption".equals(v_name_393_line_374);
							int PROBE_END_LINE_374 = 398;
							if (html_tree_builder_1_expr107_line_374) {
								transition(HtmlTreeBuilderState.InCaption);
								break;
							} else {
								int PROBE_START_LINE_377 = 398;
								String v_name_393_line_377 = name;
								boolean html_tree_builder_1_expr108_line_377 = "colgroup".equals(v_name_393_line_377);
								int PROBE_END_LINE_377 = 398;
								if (html_tree_builder_1_expr108_line_377) {
									transition(HtmlTreeBuilderState.InColumnGroup);
									break;
								} else {
									int PROBE_START_LINE_380 = 398;
									String v_name_393_line_380 = name;
									boolean html_tree_builder_1_expr109_line_380 = "table".equals(v_name_393_line_380);
									int PROBE_END_LINE_380 = 398;
									if (html_tree_builder_1_expr109_line_380) {
										transition(HtmlTreeBuilderState.InTable);
										break;
									} else {
										int PROBE_START_LINE_383 = 398;
										String v_name_393_line_383 = name;
										boolean html_tree_builder_1_expr110_line_383 = "head"
												.equals(v_name_393_line_383);
										int PROBE_END_LINE_383 = 398;
										if (html_tree_builder_1_expr110_line_383) {
											transition(HtmlTreeBuilderState.InBody);
											break;
										} else {
											int PROBE_START_LINE_386 = 398;
											String v_name_393_line_386 = name;
											boolean html_tree_builder_1_expr111_line_386 = "body"
													.equals(v_name_393_line_386);
											int PROBE_END_LINE_386 = 398;
											if (html_tree_builder_1_expr111_line_386) {
												int PROBE_START_LINE_387 = 387;
												org.jsoup.parser.HtmlTreeBuilderState q_in_body_11_line_387 = HtmlTreeBuilderState.InBody;
												int PROBE_END_LINE_387 = 387;
												transition(q_in_body_11_line_387);
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
    private boolean inSpecificScope(String targetName, String[] baseTypes, String[] extraTypes) {
        int PROBE_START_LINE_404 = 404;
		String p_target_name_394_line_404 = targetName;
		String[] p_base_types_395_line_404 = baseTypes;
		String[] p_extra_types_396_line_404 = extraTypes;
		boolean html_tree_builder_1_expr113_line_404 = inSpecificScope(new String[]{p_target_name_394_line_404},
				p_base_types_395_line_404, p_extra_types_396_line_404);
		int PROBE_END_LINE_404 = 404;
		return html_tree_builder_1_expr113_line_404;
    }

    private boolean inSpecificScope(String[] targetNames, String[] baseTypes, String[] extraTypes) {
        int PROBE_START_LINE_408 = 408;
		DescendableLinkedList<org.jsoup.nodes.Element> f_stack_348_line_408 = stack;
		Iterator<Element> html_tree_builder_1_expr116_line_408 = f_stack_348_line_408.descendingIterator();
		int PROBE_END_LINE_408 = 408;
		Iterator<Element> it = html_tree_builder_1_expr116_line_408;
        while (true) {
            int PROBE_START_LINE_409 = 409;
			Iterator<org.jsoup.nodes.Element> v_it_400_line_409 = it;
			boolean html_tree_builder_1_expr117_line_409 = v_it_400_line_409.hasNext();
			if (!(html_tree_builder_1_expr117_line_409)) {
				break;
			}
			int PROBE_END_LINE_409 = 409;
			int PROBE_START_LINE_410 = 410;
			Iterator<org.jsoup.nodes.Element> v_it_400_line_410 = it;
			Element html_tree_builder_1_expr118_line_410 = v_it_400_line_410.next();
			int PROBE_END_LINE_410 = 410;
			Element el = html_tree_builder_1_expr118_line_410;
            int PROBE_START_LINE_411 = 411;
			org.jsoup.nodes.Element v_el_401_line_411 = el;
			String html_tree_builder_1_expr119_line_411 = v_el_401_line_411.nodeName();
			int PROBE_END_LINE_411 = 411;
			String elName = html_tree_builder_1_expr119_line_411;
            int PROBE_START_LINE_412 = 413;
			String v_el_name_402_line_412 = elName;
			String[] p_target_names_397_line_412 = targetNames;
			boolean html_tree_builder_1_expr120_line_412 = StringUtil.in(v_el_name_402_line_412,
					p_target_names_397_line_412);
			int PROBE_END_LINE_412 = 413;
			if (html_tree_builder_1_expr120_line_412)
                return true;
            int PROBE_START_LINE_414 = 415;
			String v_el_name_402_line_414 = elName;
			String[] p_base_types_398_line_414 = baseTypes;
			boolean html_tree_builder_1_expr121_line_414 = StringUtil.in(v_el_name_402_line_414,
					p_base_types_398_line_414);
			int PROBE_END_LINE_414 = 415;
			if (html_tree_builder_1_expr121_line_414)
                return false;
            if (extraTypes != null && StringUtil.in(elName, extraTypes))
                return false;
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    boolean inScope(String[] targetNames) {
        return inSpecificScope(targetNames, new String[]{"applet", "caption", "html", "table", "td", "th", "marquee", "object"}, null);
    }

    boolean inScope(String targetName) {
        int PROBE_START_LINE_428 = 428;
		String p_target_name_404_line_428 = targetName;
		boolean html_tree_builder_1_expr122_line_428 = inScope(p_target_name_404_line_428, null);
		int PROBE_END_LINE_428 = 428;
		return html_tree_builder_1_expr122_line_428;
    }

    boolean inScope(String targetName, String[] extras) {
        int PROBE_START_LINE_432 = 432;
		String p_target_name_405_line_432 = targetName;
		String[] p_extras_406_line_432 = extras;
		boolean html_tree_builder_1_expr123_line_432 = inSpecificScope(p_target_name_405_line_432,
				new String[]{"applet", "caption", "html", "table", "td", "th", "marquee", "object"},
				p_extras_406_line_432);
		int PROBE_END_LINE_432 = 432;
		return html_tree_builder_1_expr123_line_432;
        // todo: in mathml namespace: mi, mo, mn, ms, mtext annotation-xml
        // todo: in svg namespace: forignOjbect, desc, title
    }

    boolean inListItemScope(String targetName) {
        return inScope(targetName, new String[]{"ol", "ul"});
    }

    boolean inButtonScope(String targetName) {
        return inScope(targetName, new String[]{"button"});
    }

    boolean inTableScope(String targetName) {
        return inSpecificScope(targetName, new String[]{"html", "table"}, null);
    }

    boolean inSelectScope(String targetName) {
        Iterator<Element> it = stack.descendingIterator();
        while (it.hasNext()) {
            Element el = it.next();
            String elName = el.nodeName();
            if (elName.equals(targetName))
                return true;
            if (!StringUtil.in(elName, "optgroup", "option")) // all elements except
                return false;
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    void setHeadElement(Element headElement) {
        int PROBE_START_LINE_464 = 464;
		org.jsoup.nodes.Element p_head_element_411_line_464 = headElement;
		int PROBE_END_LINE_464 = 464;
		this.headElement = p_head_element_411_line_464;
    }

    Element getHeadElement() {
        return headElement;
    }

    boolean isFosterInserts() {
        int PROBE_START_LINE_472 = 472;
		boolean f_foster_inserts_333_line_472 = fosterInserts;
		int PROBE_END_LINE_472 = 472;
		return f_foster_inserts_333_line_472;
    }

    void setFosterInserts(boolean fosterInserts) {
        this.fosterInserts = fosterInserts;
    }

    Element getFormElement() {
        return formElement;
    }

    void setFormElement(Element formElement) {
        this.formElement = formElement;
    }

    void newPendingTableCharacters() {
        pendingTableCharacters = new ArrayList<Token.Character>();
    }

    List<Token.Character> getPendingTableCharacters() {
        return pendingTableCharacters;
    }

    void setPendingTableCharacters(List<Token.Character> pendingTableCharacters) {
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
			int PROBE_START_LINE_509 = 510;
			String p_exclude_tag_416_line_509 = excludeTag;
			boolean html_tree_builder_1_expr132_line_509 = p_exclude_tag_416_line_509 != null;
			boolean html_tree_builder_1_expr133_line_509 = true;
			if (html_tree_builder_1_expr132_line_509) {
				org.jsoup.nodes.Element html_tree_builder_1_expr136_line_509 = currentElement();
				String html_tree_builder_1_expr135_line_509 = html_tree_builder_1_expr136_line_509.nodeName();
				String p_exclude_tag_416_line_509_v1 = excludeTag;
				boolean html_tree_builder_1_expr134_line_509 = html_tree_builder_1_expr135_line_509
						.equals(p_exclude_tag_416_line_509_v1);
				html_tree_builder_1_expr133_line_509 = !html_tree_builder_1_expr134_line_509;
			}
			boolean html_tree_builder_1_expr131_line_509 = html_tree_builder_1_expr132_line_509
					&& html_tree_builder_1_expr133_line_509;
			boolean html_tree_builder_1_expr130_line_509 = (html_tree_builder_1_expr131_line_509);
			boolean html_tree_builder_1_expr129_line_509 = html_tree_builder_1_expr130_line_509 && StringUtil
					.in(currentElement().nodeName(), "dd", "dt", "li", "option", "optgroup", "p", "rp", "rt");
			if (!(html_tree_builder_1_expr129_line_509)) {
				break;
			}
			int PROBE_END_LINE_509 = 510;
			pop();
		}
    }

    void generateImpliedEndTags() {
        generateImpliedEndTags(null);
    }

    boolean isSpecial(Element el) {
        int PROBE_START_LINE_521 = 521;
		org.jsoup.nodes.Element p_el_417_line_521 = el;
		String html_tree_builder_1_expr137_line_521 = p_el_417_line_521.nodeName();
		int PROBE_END_LINE_521 = 521;
		// todo: mathml's mi, mo, mn
        // todo: svg's foreigObject, desc, title
        String name = html_tree_builder_1_expr137_line_521;
        int PROBE_START_LINE_522 = 529;
		String v_name_418_line_522 = name;
		boolean html_tree_builder_1_expr138_line_522 = StringUtil.in(v_name_418_line_522, "address", "applet", "area",
				"article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption",
				"center", "col", "colgroup", "command", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset",
				"figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6",
				"head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing",
				"marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", "p", "param",
				"plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td",
				"textarea", "tfoot", "th", "thead", "title", "tr", "ul", "wbr", "xmp");
		int PROBE_END_LINE_522 = 529;
		return html_tree_builder_1_expr138_line_522;
    }

    // active formatting elements
    void pushActiveFormattingElements(Element in) {
        int numSeen = 0;
        Iterator<Element> iter = formattingElements.descendingIterator();
        while (iter.hasNext()) {
            Element el =  iter.next();
            if (el == null) // marker
                break;

            if (isSameFormattingElement(in, el))
                numSeen++;

            if (numSeen == 3) {
                iter.remove();
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
        int PROBE_START_LINE_561 = 561;
		DescendableLinkedList<org.jsoup.nodes.Element> f_formatting_elements_330_line_561 = formattingElements;
		int html_tree_builder_1_expr139_line_561 = f_formatting_elements_330_line_561.size();
		int PROBE_END_LINE_561 = 561;
		int size = html_tree_builder_1_expr139_line_561;
        int PROBE_START_LINE_562 = 563;
		int v_size_422_line_562 = size;
		boolean html_tree_builder_1_expr142_line_562 = v_size_422_line_562 == 0;
		boolean html_tree_builder_1_expr143_line_562 = false;
		if (!html_tree_builder_1_expr142_line_562) {
			DescendableLinkedList<org.jsoup.nodes.Element> f_formatting_elements_330_line_562 = formattingElements;
			org.jsoup.nodes.Element html_tree_builder_1_expr144_line_562 = f_formatting_elements_330_line_562.getLast();
			html_tree_builder_1_expr143_line_562 = html_tree_builder_1_expr144_line_562 == null;
		}
		boolean html_tree_builder_1_expr141_line_562 = html_tree_builder_1_expr142_line_562
				|| html_tree_builder_1_expr143_line_562;
		boolean html_tree_builder_1_expr145_line_562 = false;
		if (!html_tree_builder_1_expr141_line_562) {
			DescendableLinkedList<org.jsoup.nodes.Element> f_formatting_elements_330_line_562_v1 = formattingElements;
			org.jsoup.nodes.Element html_tree_builder_1_expr146_line_562 = f_formatting_elements_330_line_562_v1
					.getLast();
			html_tree_builder_1_expr145_line_562 = onStack(html_tree_builder_1_expr146_line_562);
		}
		boolean html_tree_builder_1_expr140_line_562 = html_tree_builder_1_expr141_line_562
				|| html_tree_builder_1_expr145_line_562;
		int PROBE_END_LINE_562 = 563;
		if (html_tree_builder_1_expr140_line_562)
            return;

        Element entry = formattingElements.getLast();
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
            Element newEl = insert(entry.nodeName()); // todo: avoid fostering here?
            // newEl.namespace(entry.namespace()); // todo: namespaces
            newEl.attributes().addAll(entry.attributes());

            // 10. replace entry with new entry
            formattingElements.add(pos, newEl);
            formattingElements.remove(pos + 1);

            // 11
            if (pos == size-1) // if not last entry in list, jump to 7
                break;
        }
    }

    void clearFormattingElementsToLastMarker() {
        while (!formattingElements.isEmpty()) {
            Element el = formattingElements.peekLast();
            formattingElements.removeLast();
            if (el == null)
                break;
        }
    }

    void removeFromActiveFormattingElements(Element el) {
        Iterator<Element> it = formattingElements.descendingIterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (next == el) {
                it.remove();
                break;
            }
        }
    }

    boolean isInActiveFormattingElements(Element el) {
        return isElementInQueue(formattingElements, el);
    }

    Element getActiveFormattingElement(String nodeName) {
        Iterator<Element> it = formattingElements.descendingIterator();
        while (it.hasNext()) {
            Element next = it.next();
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
        Element fosterParent = null;
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
