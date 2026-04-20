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
    private static final Map<String, Tag> tags = new HashMap<>(); // map of known tags

    private String tagName;
    private boolean isBlock = true; // block or inline
    private boolean formatAsBlock = true; // should be formatted as a block
    private boolean canContainInline = true; // only pcdata if not
    private boolean empty = false; // can hold nothing; e.g. img
    private boolean selfClosing = false; // can self close (<foo />). used for unknown tags that self close, without forcing them as empty.
    private boolean preserveWhitespace = false; // for pre, textarea, script etc
    private boolean formList = false; // a control that appears in forms: input, textarea, output etc
    private boolean formSubmit = false; // a control that can be submitted in a form: input etc

    private Tag(String tagName) {
        int PROBE_START_LINE_27 = 27;
		String p_tag_name_871_line_27 = tagName;
		int PROBE_END_LINE_27 = 27;
		this.tagName = p_tag_name_871_line_27;
    }

    /**
     * Get this tag's name.
     *
     * @return the tag's name
     */
    public String getName() {
        int PROBE_START_LINE_36 = 36;
		String f_tag_name_872_line_36 = tagName;
		int PROBE_END_LINE_36 = 36;
		return f_tag_name_872_line_36;
    }

    /**
     * Get a Tag by name. If not previously defined (unknown), returns a new generic tag, that can do anything.
     * <p>
     * Pre-defined tags (P, DIV etc) will be ==, but unknown tags are not registered and will only .equals().
     * </p>
     * 
     * @param tagName Name of tag, e.g. "p". Case insensitive.
     * @param settings used to control tag name sensitivity
     * @return The tag, either defined or new generic.
     */
    public static Tag valueOf(String tagName, ParseSettings settings) {
        int PROBE_START_LINE_50 = 50;
		String p_tag_name_873_line_50 = tagName;
		int PROBE_END_LINE_50 = 50;
		Validate.notNull(p_tag_name_873_line_50);
        int PROBE_START_LINE_51 = 51;
		Map<String, org.jsoup.parser.Tag> f_tags_862_line_51 = tags;
		String p_tag_name_873_line_51 = tagName;
		Tag tag_1_expr6_line_51 = f_tags_862_line_51.get(p_tag_name_873_line_51);
		int PROBE_END_LINE_51 = 51;
		Tag tag = tag_1_expr6_line_51;

        int PROBE_START_LINE_53 = 63;
		org.jsoup.parser.Tag v_tag_875_line_53 = tag;
		boolean tag_1_expr7_line_53 = v_tag_875_line_53 == null;
		int PROBE_END_LINE_53 = 63;
		if (tag_1_expr7_line_53) {
            int PROBE_START_LINE_54 = 54;
			org.jsoup.parser.ParseSettings p_settings_874_line_54 = settings;
			String p_tag_name_873_line_54 = tagName;
			String tag_1_expr9_line_54 = p_settings_874_line_54.normalizeTag(p_tag_name_873_line_54);
			int PROBE_END_LINE_54 = 54;
			tagName = tag_1_expr9_line_54;
            int PROBE_START_LINE_55 = 55;
			String p_tag_name_873_line_55 = tagName;
			int PROBE_END_LINE_55 = 55;
			Validate.notEmpty(p_tag_name_873_line_55);
            int PROBE_START_LINE_56 = 56;
			Map<String, org.jsoup.parser.Tag> f_tags_862_line_56 = tags;
			String p_tag_name_873_line_56 = tagName;
			org.jsoup.parser.Tag tag_1_expr12_line_56 = f_tags_862_line_56.get(p_tag_name_873_line_56);
			int PROBE_END_LINE_56 = 56;
			tag = tag_1_expr12_line_56;

            int PROBE_START_LINE_58 = 62;
			org.jsoup.parser.Tag v_tag_875_line_58 = tag;
			boolean tag_1_expr13_line_58 = v_tag_875_line_58 == null;
			int PROBE_END_LINE_58 = 62;
			if (tag_1_expr13_line_58) {
                int PROBE_START_LINE_60 = 60;
				String p_tag_name_873_line_60 = tagName;
				int PROBE_END_LINE_60 = 60;
				// not defined: create default; go anywhere, do anything! (incl be inside a <p>)
                tag = new Tag(p_tag_name_873_line_60);
                tag.isBlock = false;
            }
        }
        int PROBE_START_LINE_64 = 64;
		org.jsoup.parser.Tag v_tag_875_line_64 = tag;
		int PROBE_END_LINE_64 = 64;
		return v_tag_875_line_64;
    }

    /**
     * Get a Tag by name. If not previously defined (unknown), returns a new generic tag, that can do anything.
     * <p>
     * Pre-defined tags (P, DIV etc) will be ==, but unknown tags are not registered and will only .equals().
     * </p>
     *
     * @param tagName Name of tag, e.g. "p". <b>Case sensitive</b>.
     * @return The tag, either defined or new generic.
     */
    public static Tag valueOf(String tagName) {
        return valueOf(tagName, ParseSettings.preserveCase);
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
     * @deprecated No longer used, and no different result than {{@link #isBlock()}}
     */
    public boolean canContainBlock() {
        return isBlock;
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
        return tags.containsKey(tagName);
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
     * @return if preserve whitespace
     */
    public boolean preserveWhitespace() {
        int PROBE_START_LINE_169 = 169;
		boolean f_preserve_whitespace_868_line_169 = preserveWhitespace;
		int PROBE_END_LINE_169 = 169;
		return f_preserve_whitespace_868_line_169;
    }

    /**
     * Get if this tag represents a control associated with a form. E.g. input, textarea, output
     * @return if associated with a form
     */
    public boolean isFormListed() {
        int PROBE_START_LINE_177 = 177;
		boolean f_form_list_869_line_177 = formList;
		int PROBE_END_LINE_177 = 177;
		return f_form_list_869_line_177;
    }

    /**
     * Get if this tag represents an element that should be submitted with a form. E.g. input, option
     * @return if submittable with a form
     */
    public boolean isFormSubmittable() {
        return formSubmit;
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

        if (!tagName.equals(tag.tagName)) return false;
        if (canContainInline != tag.canContainInline) return false;
        if (empty != tag.empty) return false;
        if (formatAsBlock != tag.formatAsBlock) return false;
        if (isBlock != tag.isBlock) return false;
        if (preserveWhitespace != tag.preserveWhitespace) return false;
        if (selfClosing != tag.selfClosing) return false;
        if (formList != tag.formList) return false;
        return formSubmit == tag.formSubmit;
    }

    @Override
    public int hashCode() {
        int result = tagName.hashCode();
        result = 31 * result + (isBlock ? 1 : 0);
        result = 31 * result + (formatAsBlock ? 1 : 0);
        result = 31 * result + (canContainInline ? 1 : 0);
        result = 31 * result + (empty ? 1 : 0);
        result = 31 * result + (selfClosing ? 1 : 0);
        result = 31 * result + (preserveWhitespace ? 1 : 0);
        result = 31 * result + (formList ? 1 : 0);
        result = 31 * result + (formSubmit ? 1 : 0);
        return result;
    }

    @Override
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
            "td", "video", "audio", "canvas", "details", "menu", "plaintext", "template", "article", "main",
            "svg", "math"
    };
    private static final String[] inlineTags = {
            "object", "base", "font", "tt", "i", "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd",
            "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "a", "img", "br", "wbr", "map", "q",
            "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", "label", "button", "optgroup",
            "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", "param", "source", "track",
            "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track",
            "data", "bdi", "s"
    };
    private static final String[] emptyTags = {
            "meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command",
            "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"
    };
    private static final String[] formatAsInlineTags = {
            "title", "a", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style",
            "ins", "del", "s"
    };
    private static final String[] preserveWhitespaceTags = {
            "pre", "plaintext", "title", "textarea"
            // script is not here as it is a data node, which always preserve whitespace
    };
    // todo: I think we just need submit tags, and can scrub listed
    private static final String[] formListedTags = {
            "button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"
    };
    private static final String[] formSubmitTags = {
            "input", "keygen", "object", "select", "textarea"
    };

    static {
        int PROBE_START_LINE_270 = 273;
		String[] f_block_tags_879_line_270 = blockTags;
		int PROBE_END_LINE_270 = 273;
		// creates
        for (String tagName : f_block_tags_879_line_270) {
            int PROBE_START_LINE_271 = 271;
			String v_tag_name_886_line_271 = tagName;
			int PROBE_END_LINE_271 = 271;
			Tag tag = new Tag(v_tag_name_886_line_271);
            int PROBE_START_LINE_272 = 272;
			org.jsoup.parser.Tag v_tag_887_line_272 = tag;
			int PROBE_END_LINE_272 = 272;
			register(v_tag_887_line_272);
        }
        int PROBE_START_LINE_274 = 279;
		String[] f_inline_tags_880_line_274 = inlineTags;
		int PROBE_END_LINE_274 = 279;
		for (String tagName : f_inline_tags_880_line_274) {
            int PROBE_START_LINE_275 = 275;
			String v_tag_name_888_line_275 = tagName;
			int PROBE_END_LINE_275 = 275;
			Tag tag = new Tag(v_tag_name_888_line_275);
            tag.isBlock = false;
            tag.formatAsBlock = false;
            int PROBE_START_LINE_278 = 278;
			org.jsoup.parser.Tag v_tag_889_line_278 = tag;
			int PROBE_END_LINE_278 = 278;
			register(v_tag_889_line_278);
        }

        int PROBE_START_LINE_282 = 287;
		String[] f_empty_tags_881_line_282 = emptyTags;
		int PROBE_END_LINE_282 = 287;
		// mods:
        for (String tagName : f_empty_tags_881_line_282) {
            int PROBE_START_LINE_283 = 283;
			Map<String, org.jsoup.parser.Tag> f_tags_862_line_283 = tags;
			String v_tag_name_890_line_283 = tagName;
			Tag tag_1_expr30_line_283 = f_tags_862_line_283.get(v_tag_name_890_line_283);
			int PROBE_END_LINE_283 = 283;
			Tag tag = tag_1_expr30_line_283;
            int PROBE_START_LINE_284 = 284;
			org.jsoup.parser.Tag v_tag_891_line_284 = tag;
			int PROBE_END_LINE_284 = 284;
			Validate.notNull(v_tag_891_line_284);
            tag.canContainInline = false;
            tag.empty = true;
        }

        int PROBE_START_LINE_289 = 293;
		String[] f_format_as_inline_tags_882_line_289 = formatAsInlineTags;
		int PROBE_END_LINE_289 = 293;
		for (String tagName : f_format_as_inline_tags_882_line_289) {
            int PROBE_START_LINE_290 = 290;
			Map<String, org.jsoup.parser.Tag> f_tags_862_line_290 = tags;
			String v_tag_name_892_line_290 = tagName;
			Tag tag_1_expr34_line_290 = f_tags_862_line_290.get(v_tag_name_892_line_290);
			int PROBE_END_LINE_290 = 290;
			Tag tag = tag_1_expr34_line_290;
            int PROBE_START_LINE_291 = 291;
			org.jsoup.parser.Tag v_tag_893_line_291 = tag;
			int PROBE_END_LINE_291 = 291;
			Validate.notNull(v_tag_893_line_291);
            tag.formatAsBlock = false;
        }

        int PROBE_START_LINE_295 = 299;
		String[] f_preserve_whitespace_tags_883_line_295 = preserveWhitespaceTags;
		int PROBE_END_LINE_295 = 299;
		for (String tagName : f_preserve_whitespace_tags_883_line_295) {
            int PROBE_START_LINE_296 = 296;
			Map<String, org.jsoup.parser.Tag> f_tags_862_line_296 = tags;
			String v_tag_name_894_line_296 = tagName;
			Tag tag_1_expr37_line_296 = f_tags_862_line_296.get(v_tag_name_894_line_296);
			int PROBE_END_LINE_296 = 296;
			Tag tag = tag_1_expr37_line_296;
            int PROBE_START_LINE_297 = 297;
			org.jsoup.parser.Tag v_tag_895_line_297 = tag;
			int PROBE_END_LINE_297 = 297;
			Validate.notNull(v_tag_895_line_297);
            tag.preserveWhitespace = true;
        }

        int PROBE_START_LINE_301 = 305;
		String[] f_form_listed_tags_884_line_301 = formListedTags;
		int PROBE_END_LINE_301 = 305;
		for (String tagName : f_form_listed_tags_884_line_301) {
            int PROBE_START_LINE_302 = 302;
			Map<String, org.jsoup.parser.Tag> f_tags_862_line_302 = tags;
			String v_tag_name_896_line_302 = tagName;
			Tag tag_1_expr40_line_302 = f_tags_862_line_302.get(v_tag_name_896_line_302);
			int PROBE_END_LINE_302 = 302;
			Tag tag = tag_1_expr40_line_302;
            int PROBE_START_LINE_303 = 303;
			org.jsoup.parser.Tag v_tag_897_line_303 = tag;
			int PROBE_END_LINE_303 = 303;
			Validate.notNull(v_tag_897_line_303);
            tag.formList = true;
        }

        int PROBE_START_LINE_307 = 311;
		String[] f_form_submit_tags_885_line_307 = formSubmitTags;
		int PROBE_END_LINE_307 = 311;
		for (String tagName : f_form_submit_tags_885_line_307) {
            int PROBE_START_LINE_308 = 308;
			Map<String, org.jsoup.parser.Tag> f_tags_862_line_308 = tags;
			String v_tag_name_898_line_308 = tagName;
			Tag tag_1_expr43_line_308 = f_tags_862_line_308.get(v_tag_name_898_line_308);
			int PROBE_END_LINE_308 = 308;
			Tag tag = tag_1_expr43_line_308;
            int PROBE_START_LINE_309 = 309;
			org.jsoup.parser.Tag v_tag_899_line_309 = tag;
			int PROBE_END_LINE_309 = 309;
			Validate.notNull(v_tag_899_line_309);
            tag.formSubmit = true;
        }
    }

    private static void register(Tag tag) {
        int PROBE_START_LINE_315 = 315;
		Map<String, org.jsoup.parser.Tag> f_tags_862_line_315 = tags;
		org.jsoup.parser.Tag p_tag_900_line_315 = tag;
		String q_tag_name_45_line_315 = p_tag_900_line_315.tagName;
		org.jsoup.parser.Tag p_tag_900_line_315_v1 = tag;
		int PROBE_END_LINE_315 = 315;
		f_tags_862_line_315.put(q_tag_name_45_line_315, p_tag_900_line_315_v1);
    }
}
