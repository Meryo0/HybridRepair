package org.jsoup.parser;


import org.jsoup.helper.Validate;
import org.jsoup.nodes.*;

import java.util.LinkedList;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Document;

/**
 Parses HTML into a {@link Document}. Generally best to use one of the  more convenient parse methods in {@link org.jsoup.Jsoup}.

 @author Jonathan Hedley, jonathan@hedley.net */
public class Parser {
    private static final String SQ = "'";
    private static final String DQ = "\"";

    int PROBE_START_LINE_17 = 17;

	private static final org.jsoup.parser.Tag parser_1_expr1_line_17 = Tag.valueOf("html");

	int PROBE_END_LINE_17 = 17;

	private static final Tag htmlTag = parser_1_expr1_line_17;
    int PROBE_START_LINE_18 = 18;

	private static final org.jsoup.parser.Tag parser_1_expr2_line_18 = Tag.valueOf("head");

	int PROBE_END_LINE_18 = 18;

	private static final Tag headTag = parser_1_expr2_line_18;
    int PROBE_START_LINE_19 = 19;

	private static final org.jsoup.parser.Tag parser_1_expr3_line_19 = Tag.valueOf("body");

	int PROBE_END_LINE_19 = 19;

	private static final Tag bodyTag = parser_1_expr3_line_19;
    int PROBE_START_LINE_20 = 20;

	private static final org.jsoup.parser.Tag parser_1_expr4_line_20 = Tag.valueOf("title");

	int PROBE_END_LINE_20 = 20;

	private static final Tag titleTag = parser_1_expr4_line_20;
    int PROBE_START_LINE_21 = 21;

	private static final org.jsoup.parser.Tag parser_1_expr5_line_21 = Tag.valueOf("textarea");

	int PROBE_END_LINE_21 = 21;

	private static final Tag textareaTag = parser_1_expr5_line_21;

    private final LinkedList<Element> stack;
    private final TokenQueue tq;
    private final Document doc;
    private String baseUri;
    private boolean relaxed = false;

    private Parser(String html, String baseUri, boolean isBodyFragment) {
        int PROBE_START_LINE_30 = 30;
		String p_html_319_line_30 = html;
		int PROBE_END_LINE_30 = 30;
		Validate.notNull(p_html_319_line_30);
        int PROBE_START_LINE_31 = 31;
		String p_base_uri_320_line_31 = baseUri;
		int PROBE_END_LINE_31 = 31;
		Validate.notNull(p_base_uri_320_line_31);

        stack = new LinkedList<Element>();
        int PROBE_START_LINE_34 = 34;
		String p_html_319_line_34 = html;
		int PROBE_END_LINE_34 = 34;
		tq = new TokenQueue(p_html_319_line_34);
        int PROBE_START_LINE_35 = 35;
		String p_base_uri_320_line_35 = baseUri;
		int PROBE_END_LINE_35 = 35;
		this.baseUri = p_base_uri_320_line_35;

        int PROBE_START_LINE_37 = 43;
		boolean p_is_body_fragment_321_line_37 = isBodyFragment;
		int PROBE_END_LINE_37 = 43;
		if (p_is_body_fragment_321_line_37) {
            doc = Document.createShell(baseUri);
            stack.add(doc.body());
        } else {
            int PROBE_START_LINE_41 = 41;
			String p_base_uri_320_line_41 = baseUri;
			int PROBE_END_LINE_41 = 41;
			doc = new Document(p_base_uri_320_line_41);
            int PROBE_START_LINE_42 = 42;
			LinkedList<org.jsoup.nodes.Element> f_stack_322_line_42 = stack;
			org.jsoup.nodes.Document f_doc_325_line_42 = doc;
			int PROBE_END_LINE_42 = 42;
			f_stack_322_line_42.add(f_doc_325_line_42);
        }
    }

    /**
     Parse HTML into a Document.
     @param html HTML to parse
     @param baseUri base URI of document (i.e. original fetch location), for resolving relative URLs.
     @return parsed Document
     */
    public static Document parse(String html, String baseUri) {
        int PROBE_START_LINE_53 = 53;
		String p_html_326_line_53 = html;
		String p_base_uri_327_line_53 = baseUri;
		int PROBE_END_LINE_53 = 53;
		Parser parser = new Parser(p_html_326_line_53, p_base_uri_327_line_53, false);
        int PROBE_START_LINE_54 = 54;
		org.jsoup.parser.Parser v_parser_328_line_54 = parser;
		org.jsoup.nodes.Document parser_1_expr19_line_54 = v_parser_328_line_54.parse();
		int PROBE_END_LINE_54 = 54;
		return parser_1_expr19_line_54;
    }

    /**
     Parse a fragment of HTML into the {@code body} of a Document.
     @param bodyHtml fragment of HTML
     @param baseUri base URI of document (i.e. original fetch location), for resolving relative URLs.
     @return Document, with empty head, and HTML parsed into body
     */
    public static Document parseBodyFragment(String bodyHtml, String baseUri) {
        Parser parser = new Parser(bodyHtml, baseUri, true);
        return parser.parse();
    }

    /**
     Parse a fragment of HTML into the {@code body} of a Document, with relaxed parsing enabled. Relaxed, in this
     context, means that implicit tags are not automatically created when missing.
     @param bodyHtml fragment of HTML
     @param baseUri base URI of document (i.e. original fetch location), for resolving relative URLs.
     @return Document, with empty head, and HTML parsed into body
     */
    public static Document parseBodyFragmentRelaxed(String bodyHtml, String baseUri) {
        Parser parser = new Parser(bodyHtml, baseUri, true);
        parser.relaxed = true;
        return parser.parse();
    }

    private Document parse() {
        while (true) {
            int PROBE_START_LINE_82 = 82;
			org.jsoup.parser.TokenQueue f_tq_323_line_82 = tq;
			boolean parser_1_expr21_line_82 = f_tq_323_line_82.isEmpty();
			boolean parser_1_expr20_line_82 = !parser_1_expr21_line_82;
			if (!(parser_1_expr20_line_82)) {
				break;
			}
			int PROBE_END_LINE_82 = 82;
			int PROBE_START_LINE_83 = 95;
			org.jsoup.parser.TokenQueue f_tq_323_line_83 = tq;
			boolean parser_1_expr22_line_83 = f_tq_323_line_83.matchesStartTag();
			int PROBE_END_LINE_83 = 95;
			if (parser_1_expr22_line_83) {
                parseStartTag();
            } else if (tq.matchesCS("</")) {
                parseEndTag();
            } else if (tq.matchesCS("<!--")) {
                parseComment();
            } else if (tq.matches("<![CDATA[")) {
                parseCdata();
            } else if (tq.matchesCS("<?") || tq.matchesCS("<!")) {
                parseXmlDecl();
            } else {
                parseTextNode();
            }
        }
        int PROBE_START_LINE_97 = 97;
		org.jsoup.nodes.Document f_doc_325_line_97 = doc;
		org.jsoup.nodes.Document parser_1_expr24_line_97 = f_doc_325_line_97.normalise();
		int PROBE_END_LINE_97 = 97;
		return parser_1_expr24_line_97;
    }

    private void parseComment() {
        tq.consume("<!--");
        String data = tq.chompTo("->");

        if (data.endsWith("-")) // i.e. was -->
            data = data.substring(0, data.length()-1);
        Comment comment = new Comment(data, baseUri);
        last().appendChild(comment);
    }

    private void parseXmlDecl() {
        tq.consume("<");
        Character firstChar = tq.consume(); // <? or <!, from initial match.
        boolean procInstr = firstChar.toString().equals("!");
        String data = tq.chompTo(">");

        XmlDeclaration decl = new XmlDeclaration(data, baseUri, procInstr);
        last().appendChild(decl);
    }

    private void parseEndTag() {
        tq.consume("</");
        String tagName = tq.consumeTagName();
        tq.chompTo(">");

        if (tagName.length() != 0) {
            Tag tag = Tag.valueOf(tagName);
            if (!last().tag().isIgnorableEndTag(tag)) // skips </tr> if in <table>
                popStackToClose(tag);
        }
    }

    private void parseStartTag() {
        int PROBE_START_LINE_133 = 133;
		org.jsoup.parser.TokenQueue f_tq_323_line_133 = tq;
		int PROBE_END_LINE_133 = 133;
		f_tq_323_line_133.consume("<");
        int PROBE_START_LINE_134 = 134;
		org.jsoup.parser.TokenQueue f_tq_323_line_134 = tq;
		String parser_1_expr26_line_134 = f_tq_323_line_134.consumeTagName();
		int PROBE_END_LINE_134 = 134;
		String tagName = parser_1_expr26_line_134;
        int PROBE_START_LINE_135 = 135;
		String v_tag_name_333_line_135 = tagName;
		int PROBE_END_LINE_135 = 135;
		Validate.notEmpty(v_tag_name_333_line_135, "Unexpectedly empty tagname. (This should not occur, please report!)");
        
        int PROBE_START_LINE_137 = 137;
		org.jsoup.parser.TokenQueue f_tq_323_line_137 = tq;
		int PROBE_END_LINE_137 = 137;
		f_tq_323_line_137.consumeWhitespace();
        Attributes attributes = new Attributes();
        while (true) {
            int PROBE_START_LINE_139 = 139;
			org.jsoup.parser.TokenQueue f_tq_323_line_139 = tq;
			boolean parser_1_expr32_line_139 = f_tq_323_line_139.matchesAny("<", "/>", ">");
			boolean parser_1_expr31_line_139 = !parser_1_expr32_line_139;
			boolean parser_1_expr33_line_139 = true;
			if (parser_1_expr31_line_139) {
				org.jsoup.parser.TokenQueue f_tq_323_line_139_v1 = tq;
				boolean parser_1_expr34_line_139 = f_tq_323_line_139_v1.isEmpty();
				parser_1_expr33_line_139 = !parser_1_expr34_line_139;
			}
			boolean parser_1_expr30_line_139 = parser_1_expr31_line_139 && parser_1_expr33_line_139;
			if (!(parser_1_expr30_line_139)) {
				break;
			}
			int PROBE_END_LINE_139 = 139;
			int PROBE_START_LINE_140 = 140;
			Attribute parser_1_expr35_line_140 = parseAttribute();
			int PROBE_END_LINE_140 = 140;
			Attribute attribute = parser_1_expr35_line_140;
            int PROBE_START_LINE_141 = 142;
			org.jsoup.nodes.Attribute v_attribute_335_line_141 = attribute;
			boolean parser_1_expr36_line_141 = v_attribute_335_line_141 != null;
			int PROBE_END_LINE_141 = 142;
			if (parser_1_expr36_line_141) {
				int PROBE_START_LINE_142 = 142;
				org.jsoup.nodes.Attributes v_attributes_334_line_142 = attributes;
				org.jsoup.nodes.Attribute v_attribute_335_line_142 = attribute;
				int PROBE_END_LINE_142 = 142;
				v_attributes_334_line_142.put(v_attribute_335_line_142);
			}
        }

        int PROBE_START_LINE_145 = 145;
		String v_tag_name_333_line_145 = tagName;
		Tag parser_1_expr38_line_145 = Tag.valueOf(v_tag_name_333_line_145);
		int PROBE_END_LINE_145 = 145;
		Tag tag = parser_1_expr38_line_145;
        int PROBE_START_LINE_146 = 146;
		org.jsoup.parser.Tag v_tag_336_line_146 = tag;
		String f_base_uri_324_line_146 = baseUri;
		org.jsoup.nodes.Attributes v_attributes_334_line_146 = attributes;
		int PROBE_END_LINE_146 = 146;
		Element child = new Element(v_tag_336_line_146, f_base_uri_324_line_146, v_attributes_334_line_146);

        int PROBE_START_LINE_148 = 148;
		org.jsoup.parser.Tag v_tag_336_line_148 = tag;
		boolean parser_1_expr40_line_148 = v_tag_336_line_148.isEmpty();
		int PROBE_END_LINE_148 = 148;
		boolean isEmptyElement = parser_1_expr40_line_148; // empty element if empty tag (e.g. img) or self-closed el (<div/>
        int PROBE_START_LINE_149 = 155;
		org.jsoup.parser.TokenQueue f_tq_323_line_149 = tq;
		boolean parser_1_expr41_line_149 = f_tq_323_line_149.matchChomp("/>");
		int PROBE_END_LINE_149 = 155;
		if (parser_1_expr41_line_149) { // close empty element or tag
            isEmptyElement = true;
            if (!tag.isKnownTag()) // if unknown and a self closed, allow it to be self closed on output. this doesn't force all instances to be empty
                tag.setSelfClosing();
        } else {
            int PROBE_START_LINE_154 = 154;
			org.jsoup.parser.TokenQueue f_tq_323_line_154 = tq;
			int PROBE_END_LINE_154 = 154;
			f_tq_323_line_154.matchChomp(">");
        }
        int PROBE_START_LINE_156 = 156;
		org.jsoup.nodes.Element v_child_337_line_156 = child;
		boolean v_is_empty_element_338_line_156 = isEmptyElement;
		int PROBE_END_LINE_156 = 156;
		addChildToParent(v_child_337_line_156, v_is_empty_element_338_line_156);

        int PROBE_START_LINE_159 = 170;
		org.jsoup.parser.Tag v_tag_336_line_159 = tag;
		boolean parser_1_expr44_line_159 = v_tag_336_line_159.isData();
		int PROBE_END_LINE_159 = 170;
		// pc data only tags (textarea, script): chomp to end tag, add content as text node
        if (parser_1_expr44_line_159) {
            String data = tq.chompToIgnoreCase("</" + tagName);
            tq.chompTo(">");
            popStackToClose(tag);
            
            Node dataNode;
            if (tag.equals(titleTag) || tag.equals(textareaTag)) // want to show as text, but not contain inside tags (so not a data tag?)
                dataNode = TextNode.createFromEncoded(data, baseUri);
            else
                dataNode = new DataNode(data, baseUri); // data not encoded but raw (for " in script)
            child.appendChild(dataNode);   
        }

        int PROBE_START_LINE_173 = 179;
		org.jsoup.nodes.Element v_child_337_line_173 = child;
		String parser_1_expr46_line_173 = v_child_337_line_173.tagName();
		boolean parser_1_expr45_line_173 = parser_1_expr46_line_173.equals("base");
		int PROBE_END_LINE_173 = 179;
		// <base href>: update the base uri
        if (parser_1_expr45_line_173) {
            String href = child.absUrl("href");
            if (href.length() != 0) { // ignore <base target> etc
                baseUri = href;
                doc.setBaseUri(href); // set on the doc so doc.createElement(Tag) will get updated base
            }
        }
    }

    private Attribute parseAttribute() {
        int PROBE_START_LINE_183 = 183;
		org.jsoup.parser.TokenQueue f_tq_323_line_183 = tq;
		int PROBE_END_LINE_183 = 183;
		f_tq_323_line_183.consumeWhitespace();
        int PROBE_START_LINE_184 = 184;
		org.jsoup.parser.TokenQueue f_tq_323_line_184 = tq;
		String parser_1_expr48_line_184 = f_tq_323_line_184.consumeAttributeKey();
		int PROBE_END_LINE_184 = 184;
		String key = parser_1_expr48_line_184;
        String value = "";
        int PROBE_START_LINE_186 = 186;
		org.jsoup.parser.TokenQueue f_tq_323_line_186 = tq;
		int PROBE_END_LINE_186 = 186;
		f_tq_323_line_186.consumeWhitespace();
        int PROBE_START_LINE_187 = 203;
		org.jsoup.parser.TokenQueue f_tq_323_line_187 = tq;
		boolean parser_1_expr50_line_187 = f_tq_323_line_187.matchChomp("=");
		int PROBE_END_LINE_187 = 203;
		if (parser_1_expr50_line_187) {
            int PROBE_START_LINE_188 = 188;
			org.jsoup.parser.TokenQueue f_tq_323_line_188 = tq;
			int PROBE_END_LINE_188 = 188;
			f_tq_323_line_188.consumeWhitespace();

            int PROBE_START_LINE_190 = 201;
			org.jsoup.parser.TokenQueue f_tq_323_line_190 = tq;
			String f_sq_341_line_190 = SQ;
			boolean parser_1_expr52_line_190 = f_tq_323_line_190.matchChomp(f_sq_341_line_190);
			int PROBE_END_LINE_190 = 201;
			if (parser_1_expr52_line_190) {
                int PROBE_START_LINE_191 = 191;
				org.jsoup.parser.TokenQueue f_tq_323_line_191 = tq;
				String f_sq_341_line_191 = SQ;
				String parser_1_expr54_line_191 = f_tq_323_line_191.chompTo(f_sq_341_line_191);
				int PROBE_END_LINE_191 = 191;
				value = parser_1_expr54_line_191;
            } else if (tq.matchChomp(DQ)) {
                value = tq.chompTo(DQ);
            } else {
                StringBuilder valueAccum = new StringBuilder();
                // no ' or " to look for, so scan to end tag or space (or end of stream)
                while (!tq.matchesAny("<", "/>", ">") && !tq.matchesWhitespace() && !tq.isEmpty()) {
                    valueAccum.append(tq.consume());
                }
                value = valueAccum.toString();
            }
            int PROBE_START_LINE_202 = 202;
			org.jsoup.parser.TokenQueue f_tq_323_line_202 = tq;
			int PROBE_END_LINE_202 = 202;
			f_tq_323_line_202.consumeWhitespace();
        }
        int PROBE_START_LINE_204 = 211;
		String v_key_339_line_204 = key;
		int parser_1_expr57_line_204 = v_key_339_line_204.length();
		boolean parser_1_expr56_line_204 = parser_1_expr57_line_204 != 0;
		int PROBE_END_LINE_204 = 211;
		if (parser_1_expr56_line_204) {
			int PROBE_START_LINE_205 = 205;
			String v_key_339_line_205 = key;
			String v_value_340_line_205 = value;
			org.jsoup.nodes.Attribute parser_1_expr58_line_205 = Attribute.createFromEncoded(v_key_339_line_205,
					v_value_340_line_205);
			int PROBE_END_LINE_205 = 205;
			return parser_1_expr58_line_205;
		} else {
            if (value.length() == 0) // no key, no val; unknown char, keep popping so not get stuck
                tq.advance();
                
            return null;
        }
    }

    private void parseTextNode() {
        TextNode textNode;
        // special case: handle string like "hello < there". first char will be "<", because of matchStartTag
        if (tq.peek().equals('<')) {
            tq.advance();
            textNode = new TextNode("<", baseUri);
        } else {
            String text = tq.consumeTo("<");
            textNode = TextNode.createFromEncoded(text, baseUri);
        }
        last().appendChild(textNode);
    }

    private void parseCdata() {
        tq.consume("<![CDATA[");
        String rawText = tq.chompTo("]]>");
        TextNode textNode = new TextNode(rawText, baseUri); // constructor does not escape
        last().appendChild(textNode);
    }

    private Element addChildToParent(Element child, boolean isEmptyElement) {
        int PROBE_START_LINE_235 = 235;
		org.jsoup.nodes.Element p_child_342_line_235 = child;
		org.jsoup.parser.Tag parser_1_expr60_line_235 = p_child_342_line_235.tag();
		Element parser_1_expr59_line_235 = popStackToSuitableContainer(parser_1_expr60_line_235);
		int PROBE_END_LINE_235 = 235;
		Element parent = parser_1_expr59_line_235;
        int PROBE_START_LINE_236 = 236;
		org.jsoup.nodes.Element p_child_342_line_236 = child;
		Tag parser_1_expr61_line_236 = p_child_342_line_236.tag();
		int PROBE_END_LINE_236 = 236;
		Tag childTag = parser_1_expr61_line_236;
        int PROBE_START_LINE_237 = 237;
		org.jsoup.parser.Tag v_child_tag_345_line_237 = childTag;
		boolean parser_1_expr62_line_237 = stackHasValidParent(v_child_tag_345_line_237);
		int PROBE_END_LINE_237 = 237;
		boolean validAncestor = parser_1_expr62_line_237;

        int PROBE_START_LINE_239 = 255;
		boolean v_valid_ancestor_346_line_239 = validAncestor;
		boolean parser_1_expr64_line_239 = !v_valid_ancestor_346_line_239;
		boolean parser_1_expr65_line_239 = true;
		if (parser_1_expr64_line_239) {
			boolean f_relaxed_318_line_239 = relaxed;
			parser_1_expr65_line_239 = !f_relaxed_318_line_239;
		}
		boolean parser_1_expr63_line_239 = parser_1_expr64_line_239 && parser_1_expr65_line_239;
		int PROBE_END_LINE_239 = 255;
		if (parser_1_expr63_line_239) {
            int PROBE_START_LINE_241 = 241;
			org.jsoup.parser.Tag v_child_tag_345_line_241 = childTag;
			Tag parser_1_expr66_line_241 = v_child_tag_345_line_241.getImplicitParent();
			int PROBE_END_LINE_241 = 241;
			// create implicit parent around this child
            Tag parentTag = parser_1_expr66_line_241;
            int PROBE_START_LINE_242 = 242;
			org.jsoup.parser.Tag v_parent_tag_347_line_242 = parentTag;
			String f_base_uri_324_line_242 = baseUri;
			int PROBE_END_LINE_242 = 242;
			Element implicit = new Element(v_parent_tag_347_line_242, f_base_uri_324_line_242);
            int PROBE_START_LINE_244 = 247;
			org.jsoup.nodes.Element p_child_342_line_244 = child;
			org.jsoup.parser.Tag parser_1_expr69_line_244 = p_child_342_line_244.tag();
			org.jsoup.parser.Tag f_body_tag_315_line_244 = bodyTag;
			boolean parser_1_expr68_line_244 = parser_1_expr69_line_244.equals(f_body_tag_315_line_244);
			int PROBE_END_LINE_244 = 247;
			// special case: make sure there's a head before putting in body
            if (parser_1_expr68_line_244) {
                int PROBE_START_LINE_245 = 245;
				org.jsoup.parser.Tag f_head_tag_314_line_245 = headTag;
				String f_base_uri_324_line_245 = baseUri;
				int PROBE_END_LINE_245 = 245;
				Element head = new Element(f_head_tag_314_line_245, f_base_uri_324_line_245);
                int PROBE_START_LINE_246 = 246;
				org.jsoup.nodes.Element v_implicit_348_line_246 = implicit;
				org.jsoup.nodes.Element v_head_349_line_246 = head;
				int PROBE_END_LINE_246 = 246;
				v_implicit_348_line_246.appendChild(v_head_349_line_246);
            }
            int PROBE_START_LINE_248 = 248;
			org.jsoup.nodes.Element v_implicit_348_line_248 = implicit;
			org.jsoup.nodes.Element p_child_342_line_248 = child;
			int PROBE_END_LINE_248 = 248;
			v_implicit_348_line_248.appendChild(p_child_342_line_248);

            int PROBE_START_LINE_251 = 251;
			org.jsoup.nodes.Element v_implicit_348_line_251 = implicit;
			Element parser_1_expr73_line_251 = addChildToParent(v_implicit_348_line_251, false);
			int PROBE_END_LINE_251 = 251;
			// recurse to ensure somewhere to put parent
            Element root = parser_1_expr73_line_251;
            int PROBE_START_LINE_252 = 253;
			boolean p_is_empty_element_343_line_252 = isEmptyElement;
			boolean parser_1_expr74_line_252 = !p_is_empty_element_343_line_252;
			int PROBE_END_LINE_252 = 253;
			if (parser_1_expr74_line_252) {
				int PROBE_START_LINE_253 = 253;
				LinkedList<org.jsoup.nodes.Element> f_stack_322_line_253 = stack;
				org.jsoup.nodes.Element p_child_342_line_253 = child;
				int PROBE_END_LINE_253 = 253;
				f_stack_322_line_253.addLast(p_child_342_line_253);
			}
            int PROBE_START_LINE_254 = 254;
			org.jsoup.nodes.Element v_root_350_line_254 = root;
			int PROBE_END_LINE_254 = 254;
			return v_root_350_line_254;
        }

        int PROBE_START_LINE_257 = 257;
		org.jsoup.nodes.Element v_parent_344_line_257 = parent;
		org.jsoup.nodes.Element p_child_342_line_257 = child;
		int PROBE_END_LINE_257 = 257;
		v_parent_344_line_257.appendChild(p_child_342_line_257);

        int PROBE_START_LINE_259 = 260;
		boolean p_is_empty_element_343_line_259 = isEmptyElement;
		boolean parser_1_expr77_line_259 = !p_is_empty_element_343_line_259;
		int PROBE_END_LINE_259 = 260;
		if (parser_1_expr77_line_259) {
			int PROBE_START_LINE_260 = 260;
			LinkedList<org.jsoup.nodes.Element> f_stack_322_line_260 = stack;
			org.jsoup.nodes.Element p_child_342_line_260 = child;
			int PROBE_END_LINE_260 = 260;
			f_stack_322_line_260.addLast(p_child_342_line_260);
		}
        int PROBE_START_LINE_261 = 261;
		org.jsoup.nodes.Element v_parent_344_line_261 = parent;
		int PROBE_END_LINE_261 = 261;
		return v_parent_344_line_261;
    }

    private boolean stackHasValidParent(Tag childTag) {
        int PROBE_START_LINE_265 = 266;
		LinkedList<org.jsoup.nodes.Element> f_stack_322_line_265 = stack;
		int parser_1_expr81_line_265 = f_stack_322_line_265.size();
		boolean parser_1_expr80_line_265 = parser_1_expr81_line_265 == 1;
		boolean parser_1_expr82_line_265 = true;
		if (parser_1_expr80_line_265) {
			org.jsoup.parser.Tag p_child_tag_351_line_265 = childTag;
			org.jsoup.parser.Tag f_html_tag_313_line_265 = htmlTag;
			parser_1_expr82_line_265 = p_child_tag_351_line_265.equals(f_html_tag_313_line_265);
		}
		boolean parser_1_expr79_line_265 = parser_1_expr80_line_265 && parser_1_expr82_line_265;
		int PROBE_END_LINE_265 = 266;
		if (parser_1_expr79_line_265)
            return true; // root is valid for html node

        int PROBE_START_LINE_268 = 269;
		org.jsoup.parser.Tag p_child_tag_351_line_268 = childTag;
		boolean parser_1_expr83_line_268 = p_child_tag_351_line_268.requiresSpecificParent();
		int PROBE_END_LINE_268 = 269;
		if (parser_1_expr83_line_268)
            return stack.getLast().tag().isValidParent(childTag);

        int PROBE_START_LINE_271 = 271;
		boolean FOR_STMT_TOGGLE_LINE_272 = false;
		int PROBE_END_LINE_271 = 271;
		// otherwise, look up the stack for valid ancestors
        for (int i = 0; true;) {
            int PROBE_START_LINE_273 = 273;
			if (!FOR_STMT_TOGGLE_LINE_272) {
				FOR_STMT_TOGGLE_LINE_272 = true;
				LinkedList<org.jsoup.nodes.Element> f_stack_322_line_272 = stack;
				int parser_1_expr86_line_272 = f_stack_322_line_272.size();
				int parser_1_expr85_line_272 = parser_1_expr86_line_272 - 1;
				i = parser_1_expr85_line_272;
			} else {
				if (FOR_STMT_TOGGLE_LINE_272) {
					i--;
				} else {
					FOR_STMT_TOGGLE_LINE_272 = true;
				}
			}
			int v_i_352_line_272 = i;
			boolean parser_1_expr87_line_272 = v_i_352_line_272 >= 0;
			if (!(parser_1_expr87_line_272)) {
				break;
			}
			LinkedList<org.jsoup.nodes.Element> f_stack_322_line_273 = stack;
			int v_i_352_line_273 = i;
			Element parser_1_expr89_line_273 = f_stack_322_line_273.get(v_i_352_line_273);
			int PROBE_END_LINE_273 = 273;
			Element el = parser_1_expr89_line_273;
            int PROBE_START_LINE_274 = 274;
			org.jsoup.nodes.Element v_el_353_line_274 = el;
			Tag parser_1_expr90_line_274 = v_el_353_line_274.tag();
			int PROBE_END_LINE_274 = 274;
			Tag parent2 = parser_1_expr90_line_274;
            int PROBE_START_LINE_275 = 277;
			org.jsoup.parser.Tag v_parent_2_354_line_275 = parent2;
			org.jsoup.parser.Tag p_child_tag_351_line_275 = childTag;
			boolean parser_1_expr91_line_275 = v_parent_2_354_line_275.isValidAncestor(p_child_tag_351_line_275);
			int PROBE_END_LINE_275 = 277;
			if (parser_1_expr91_line_275) {
                return true;
            }
        }
        return false;
    }

    private Element popStackToSuitableContainer(Tag tag) {
        while (true) {
            int PROBE_START_LINE_283 = 283;
			LinkedList<org.jsoup.nodes.Element> f_stack_322_line_283 = stack;
			boolean parser_1_expr93_line_283 = f_stack_322_line_283.isEmpty();
			boolean parser_1_expr92_line_283 = !parser_1_expr93_line_283;
			if (!(parser_1_expr92_line_283)) {
				break;
			}
			int PROBE_END_LINE_283 = 283;
			int PROBE_START_LINE_284 = 287;
			org.jsoup.nodes.Element parser_1_expr96_line_284 = last();
			org.jsoup.parser.Tag parser_1_expr95_line_284 = parser_1_expr96_line_284.tag();
			org.jsoup.parser.Tag p_tag_355_line_284 = tag;
			boolean parser_1_expr94_line_284 = parser_1_expr95_line_284.canContain(p_tag_355_line_284);
			int PROBE_END_LINE_284 = 287;
			if (parser_1_expr94_line_284) {
				int PROBE_START_LINE_285 = 285;
				org.jsoup.nodes.Element parser_1_expr97_line_285 = last();
				int PROBE_END_LINE_285 = 285;
				return parser_1_expr97_line_285;
			} else
                stack.removeLast();
        }
        return null;
    }

    private Element popStackToClose(Tag tag) {
        // first check to see if stack contains this tag; if so pop to there, otherwise ignore
        int counter = 0;
        Element elToClose = null;
        for (int i = stack.size() -1; i > 0; i--) {
            counter++;
            Element el = stack.get(i);
            Tag elTag = el.tag();
            if (elTag.equals(bodyTag) || elTag.equals(htmlTag)) { // once in body, don't close past body
                break;
            } else if (elTag.equals(tag)) {
                elToClose = el;
                break;
            }
        }
        if (elToClose != null) {
            for (int i = 0; i < counter; i++) {
                stack.removeLast();
            }
        }
        return elToClose;
    }

    private Element last() {
        int PROBE_START_LINE_316 = 316;
		LinkedList<org.jsoup.nodes.Element> f_stack_322_line_316 = stack;
		org.jsoup.nodes.Element parser_1_expr98_line_316 = f_stack_322_line_316.getLast();
		int PROBE_END_LINE_316 = 316;
		return parser_1_expr98_line_316;
    }
}
