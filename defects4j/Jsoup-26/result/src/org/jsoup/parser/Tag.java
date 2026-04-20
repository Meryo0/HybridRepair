package org.jsoup.parser;

import org.jsoup.helper.Validate;

import java.util.HashMap;
import java.util.Map;

/**
 * HTML Tag capabilities.
 *
 * @author Jonathan Hedley, jonathan@hedley.net
 */
public class Tag {
    private static final Map<String, Tag> tags = new HashMap<String, Tag>(); // map of known tags

    private String tagName;
    private boolean isBlock = true; // block or inline
    private boolean formatAsBlock = true; // should be formatted as a block
    private boolean canContainBlock = true; // Can this tag hold block level tags?
    private boolean canContainInline = true; // only pcdata if not
    private boolean empty = false; // can hold nothing; e.g. img
    private boolean selfClosing = false; // can self close (<foo />). used for unknown tags that self close, without forcing them as empty.
    private boolean preserveWhitespace = false; // for pre, textarea, script etc

    private Tag(String tagName) {
        int PROBE_START_LINE_26 = 26;
		String p_tag_name_585_line_26 = tagName;
		String tag_1_expr4_line_26 = p_tag_name_585_line_26.toLowerCase();
		int PROBE_END_LINE_26 = 26;
		this.tagName = tag_1_expr4_line_26;
    }

    /**
     * Get this tag's name.
     *
     * @return the tag's name
     */
    public String getName() {
        int PROBE_START_LINE_35 = 35;
		String f_tag_name_586_line_35 = tagName;
		int PROBE_END_LINE_35 = 35;
		return f_tag_name_586_line_35;
    }

    /**
     * Get a Tag by name. If not previously defined (unknown), returns a new generic tag, that can do anything.
     * <p/>
     * Pre-defined tags (P, DIV etc) will be ==, but unknown tags are not registered and will only .equals().
     *
     * @param tagName Name of tag, e.g. "p". Case insensitive.
     * @return The tag, either defined or new generic.
     */
    public static Tag valueOf(String tagName) {
        int PROBE_START_LINE_47 = 47;
		String p_tag_name_587_line_47 = tagName;
		int PROBE_END_LINE_47 = 47;
		Validate.notNull(p_tag_name_587_line_47);
        int PROBE_START_LINE_48 = 48;
		String p_tag_name_587_line_48 = tagName;
		String tag_1_expr9_line_48 = p_tag_name_587_line_48.trim();
		String tag_1_expr8_line_48 = tag_1_expr9_line_48.toLowerCase();
		int PROBE_END_LINE_48 = 48;
		tagName = tag_1_expr8_line_48;
        int PROBE_START_LINE_49 = 49;
		String p_tag_name_587_line_49 = tagName;
		int PROBE_END_LINE_49 = 49;
		Validate.notEmpty(p_tag_name_587_line_49);

        int PROBE_START_LINE_51 = 60;
		Map<String, org.jsoup.parser.Tag> f_tags_577_line_51 = tags;
		int PROBE_END_LINE_51 = 60;
		synchronized (f_tags_577_line_51) {
            int PROBE_START_LINE_52 = 52;
			Map<String, org.jsoup.parser.Tag> f_tags_577_line_52 = tags;
			String p_tag_name_587_line_52 = tagName;
			Tag tag_1_expr11_line_52 = f_tags_577_line_52.get(p_tag_name_587_line_52);
			int PROBE_END_LINE_52 = 52;
			Tag tag = tag_1_expr11_line_52;
            int PROBE_START_LINE_53 = 58;
			org.jsoup.parser.Tag v_tag_588_line_53 = tag;
			boolean tag_1_expr12_line_53 = v_tag_588_line_53 == null;
			int PROBE_END_LINE_53 = 58;
			if (tag_1_expr12_line_53) {
                int PROBE_START_LINE_55 = 55;
				String p_tag_name_587_line_55 = tagName;
				int PROBE_END_LINE_55 = 55;
				// not defined: create default; go anywhere, do anything! (incl be inside a <p>)
                tag = new Tag(p_tag_name_587_line_55);
                tag.isBlock = false;
                tag.canContainBlock = true;
            }
            int PROBE_START_LINE_59 = 59;
			org.jsoup.parser.Tag v_tag_588_line_59 = tag;
			int PROBE_END_LINE_59 = 59;
			return v_tag_588_line_59;
        }
    }

    /**
     * Gets if this is a block tag.
     *
     * @return if block tag
     */
    public boolean isBlock() {
        return isBlock;
    }

    /**
     * Gets if this tag should be formatted as a block (or as inline)
     *
     * @return if should be formatted as block or inline
     */
    public boolean formatAsBlock() {
        return formatAsBlock;
    }

    /**
     * Gets if this tag can contain block tags.
     *
     * @return if tag can contain block tags
     */
    public boolean canContainBlock() {
        return canContainBlock;
    }

    /**
     * Gets if this tag is an inline tag.
     *
     * @return if this tag is an inline tag.
     */
    public boolean isInline() {
        return !isBlock;
    }

    /**
     * Gets if this tag is a data only tag.
     *
     * @return if this tag is a data only tag
     */
    public boolean isData() {
        return !canContainInline && !isEmpty();
    }

    /**
     * Get if this is an empty tag
     *
     * @return if this is an empty tag
     */
    public boolean isEmpty() {
        return empty;
    }

    /**
     * Get if this tag is self closing.
     *
     * @return if this tag should be output as self closing.
     */
    public boolean isSelfClosing() {
        return empty || selfClosing;
    }

    /**
     * Get if this is a pre-defined tag, or was auto created on parsing.
     *
     * @return if a known tag
     */
    public boolean isKnownTag() {
        int PROBE_START_LINE_132 = 132;
		Map<String, org.jsoup.parser.Tag> f_tags_577_line_132 = tags;
		String f_tag_name_586_line_132 = tagName;
		boolean tag_1_expr17_line_132 = f_tags_577_line_132.containsKey(f_tag_name_586_line_132);
		int PROBE_END_LINE_132 = 132;
		return tag_1_expr17_line_132;
    }

    /**
     * Check if this tagname is a known tag.
     *
     * @param tagName name of tag
     * @return if known HTML tag
     */
    public static boolean isKnownTag(String tagName) {
        return tags.containsKey(tagName);
    }

    /**
     * Get if this tag should preserve whitespace within child text nodes.
     *
     * @return if preserve whitepace
     */
    public boolean preserveWhitespace() {
        return preserveWhitespace;
    }

    Tag setSelfClosing() {
        selfClosing = true;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Tag)) return false;

        Tag tag = (Tag) o;

        if (canContainBlock != tag.canContainBlock) return false;
        if (canContainInline != tag.canContainInline) return false;
        if (empty != tag.empty) return false;
        if (formatAsBlock != tag.formatAsBlock) return false;
        if (isBlock != tag.isBlock) return false;
        if (preserveWhitespace != tag.preserveWhitespace) return false;
        if (selfClosing != tag.selfClosing) return false;
        if (!tagName.equals(tag.tagName)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = tagName.hashCode();
        result = 31 * result + (isBlock ? 1 : 0);
        result = 31 * result + (formatAsBlock ? 1 : 0);
        result = 31 * result + (canContainBlock ? 1 : 0);
        result = 31 * result + (canContainInline ? 1 : 0);
        result = 31 * result + (empty ? 1 : 0);
        result = 31 * result + (selfClosing ? 1 : 0);
        result = 31 * result + (preserveWhitespace ? 1 : 0);
        return result;
    }

    public String toString() {
        return tagName;
    }

    // internal static initialisers:
    // prepped from http://www.w3.org/TR/REC-html40/sgml/dtd.html and other sources
    private static final String[] blockTags = {
            "html", "head", "body", "frameset", "script", "noscript", "style", "meta", "link", "title", "frame",
            "noframes", "section", "nav", "aside", "hgroup", "header", "footer", "p", "h1", "h2", "h3", "h4", "h5", "h6",
            "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins",
            "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th",
            "td", "video", "audio", "canvas", "details", "menu", "plaintext"
    };
    private static final String[] inlineTags = {
            "object", "base", "font", "tt", "i", "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd",
            "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "a", "img", "br", "wbr", "map", "q",
            "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", "label", "button", "optgroup",
            "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", "param", "source", "track",
            "summary", "command", "device"
    };
    private static final String[] emptyTags = {
            "meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command",
            "device"
    };
    private static final String[] formatAsInlineTags = {
            "title", "a", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style"
    };
    private static final String[] preserveWhitespaceTags = {"pre", "plaintext", "title", "textarea"};

    static {
        int PROBE_START_LINE_222 = 225;
		String[] f_block_tags_591_line_222 = blockTags;
		int PROBE_END_LINE_222 = 225;
		// creates
        for (String tagName : f_block_tags_591_line_222) {
            int PROBE_START_LINE_223 = 223;
			String v_tag_name_596_line_223 = tagName;
			int PROBE_END_LINE_223 = 223;
			Tag tag = new Tag(v_tag_name_596_line_223);
            int PROBE_START_LINE_224 = 224;
			org.jsoup.parser.Tag v_tag_597_line_224 = tag;
			int PROBE_END_LINE_224 = 224;
			register(v_tag_597_line_224);
        }
        int PROBE_START_LINE_226 = 232;
		String[] f_inline_tags_592_line_226 = inlineTags;
		int PROBE_END_LINE_226 = 232;
		for (String tagName : f_inline_tags_592_line_226) {
            int PROBE_START_LINE_227 = 227;
			String v_tag_name_598_line_227 = tagName;
			int PROBE_END_LINE_227 = 227;
			Tag tag = new Tag(v_tag_name_598_line_227);
            tag.isBlock = false;
            tag.canContainBlock = false;
            tag.formatAsBlock = false;
            int PROBE_START_LINE_231 = 231;
			org.jsoup.parser.Tag v_tag_599_line_231 = tag;
			int PROBE_END_LINE_231 = 231;
			register(v_tag_599_line_231);
        }

        int PROBE_START_LINE_235 = 241;
		String[] f_empty_tags_593_line_235 = emptyTags;
		int PROBE_END_LINE_235 = 241;
		// mods:
        for (String tagName : f_empty_tags_593_line_235) {
            int PROBE_START_LINE_236 = 236;
			Map<String, org.jsoup.parser.Tag> f_tags_577_line_236 = tags;
			String v_tag_name_600_line_236 = tagName;
			Tag tag_1_expr30_line_236 = f_tags_577_line_236.get(v_tag_name_600_line_236);
			int PROBE_END_LINE_236 = 236;
			Tag tag = tag_1_expr30_line_236;
            int PROBE_START_LINE_237 = 237;
			org.jsoup.parser.Tag v_tag_601_line_237 = tag;
			int PROBE_END_LINE_237 = 237;
			Validate.notNull(v_tag_601_line_237);
            tag.canContainBlock = false;
            tag.canContainInline = false;
            tag.empty = true;
        }

        int PROBE_START_LINE_243 = 247;
		String[] f_format_as_inline_tags_594_line_243 = formatAsInlineTags;
		int PROBE_END_LINE_243 = 247;
		for (String tagName : f_format_as_inline_tags_594_line_243) {
            int PROBE_START_LINE_244 = 244;
			Map<String, org.jsoup.parser.Tag> f_tags_577_line_244 = tags;
			String v_tag_name_602_line_244 = tagName;
			Tag tag_1_expr35_line_244 = f_tags_577_line_244.get(v_tag_name_602_line_244);
			int PROBE_END_LINE_244 = 244;
			Tag tag = tag_1_expr35_line_244;
            int PROBE_START_LINE_245 = 245;
			org.jsoup.parser.Tag v_tag_603_line_245 = tag;
			int PROBE_END_LINE_245 = 245;
			Validate.notNull(v_tag_603_line_245);
            tag.formatAsBlock = false;
        }

        int PROBE_START_LINE_249 = 253;
		String[] f_preserve_whitespace_tags_595_line_249 = preserveWhitespaceTags;
		int PROBE_END_LINE_249 = 253;
		for (String tagName : f_preserve_whitespace_tags_595_line_249) {
            int PROBE_START_LINE_250 = 250;
			Map<String, org.jsoup.parser.Tag> f_tags_577_line_250 = tags;
			String v_tag_name_604_line_250 = tagName;
			Tag tag_1_expr38_line_250 = f_tags_577_line_250.get(v_tag_name_604_line_250);
			int PROBE_END_LINE_250 = 250;
			Tag tag = tag_1_expr38_line_250;
            int PROBE_START_LINE_251 = 251;
			org.jsoup.parser.Tag v_tag_605_line_251 = tag;
			int PROBE_END_LINE_251 = 251;
			Validate.notNull(v_tag_605_line_251);
            tag.preserveWhitespace = true;
        }
    }

    private static Tag register(Tag tag) {
        int PROBE_START_LINE_257 = 259;
		Map<String, org.jsoup.parser.Tag> f_tags_577_line_257 = tags;
		int PROBE_END_LINE_257 = 259;
		synchronized (f_tags_577_line_257) {
            int PROBE_START_LINE_258 = 258;
			Map<String, org.jsoup.parser.Tag> f_tags_577_line_258 = tags;
			org.jsoup.parser.Tag p_tag_606_line_258 = tag;
			String q_tag_name_26_line_258 = p_tag_606_line_258.tagName;
			org.jsoup.parser.Tag p_tag_606_line_258_v1 = tag;
			int PROBE_END_LINE_258 = 258;
			f_tags_577_line_258.put(q_tag_name_26_line_258, p_tag_606_line_258_v1);
        }
        int PROBE_START_LINE_260 = 260;
		org.jsoup.parser.Tag p_tag_606_line_260 = tag;
		int PROBE_END_LINE_260 = 260;
		return p_tag_606_line_260;
    }
}
