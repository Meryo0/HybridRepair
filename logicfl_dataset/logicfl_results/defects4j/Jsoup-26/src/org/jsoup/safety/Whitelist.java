package org.jsoup.safety;

/*
    Thank you to Ryan Grove (wonko.com) for the Ruby HTML cleaner http://github.com/rgrove/sanitize/, which inspired
    this whitelist configuration, and the initial defaults.
 */

import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;


/**
 Whitelists define what HTML (elements and attributes) to allow through the cleaner. Everything else is removed.
 <p/>
 Start with one of the defaults:
 <ul>
 <li>{@link #none}
 <li>{@link #simpleText}
 <li>{@link #basic}
 <li>{@link #basicWithImages}
 <li>{@link #relaxed}
 </ul>
 <p/>
 If you need to allow more through (please be careful!), tweak a base whitelist with:
 <ul>
 <li>{@link #addTags}
 <li>{@link #addAttributes}
 <li>{@link #addEnforcedAttribute}
 <li>{@link #addProtocols}
 </ul>
 <p/>
 The cleaner and these whitelists assume that you want to clean a <code>body</code> fragment of HTML (to add user
 supplied HTML into a templated page), and not to clean a full HTML document. If the latter is the case, either wrap the
 document HTML around the cleaned body HTML, or create a whitelist that allows <code>html</code> and <code>head</code>
 elements as appropriate.
 <p/>
 If you are going to extend a whitelist, please be very careful. Make sure you understand what attributes may lead to
 XSS attack vectors. URL attributes are particularly vulnerable and require careful validation. See 
 http://ha.ckers.org/xss.html for some XSS attack examples.

 @author Jonathan Hedley
 */
public class Whitelist {
    private Set<TagName> tagNames; // tags allowed, lower case. e.g. [p, br, span]
    private Map<TagName, Set<AttributeKey>> attributes; // tag -> attribute[]. allowed attributes [href] for a tag.
    private Map<TagName, Map<AttributeKey, AttributeValue>> enforcedAttributes; // always set these attribute values
    private Map<TagName, Map<AttributeKey, Set<Protocol>>> protocols; // allowed URL protocols for attributes
    private boolean preserveRelativeLinks; // option to preserve relative links

    /**
     This whitelist allows only text nodes: all HTML will be stripped.

     @return whitelist
     */
    public static Whitelist none() {
        return new Whitelist();
    }

    /**
     This whitelist allows only simple text formatting: <code>b, em, i, strong, u</code>. All other HTML (tags and
     attributes) will be removed.

     @return whitelist
     */
    public static Whitelist simpleText() {
        return new Whitelist()
                .addTags("b", "em", "i", "strong", "u")
                ;
    }

    /**
     This whitelist allows a fuller range of text nodes: <code>a, b, blockquote, br, cite, code, dd, dl, dt, em, i, li,
     ol, p, pre, q, small, strike, strong, sub, sup, u, ul</code>, and appropriate attributes.
     <p/>
     Links (<code>a</code> elements) can point to <code>http, https, ftp, mailto</code>, and have an enforced
     <code>rel=nofollow</code> attribute.
     <p/>
     Does not allow images.

     @return whitelist
     */
    public static Whitelist basic() {
        int PROBE_START_LINE_90 = 105;
		org.jsoup.safety.Whitelist whitelist_1_expr8_line_90 = new Whitelist().addTags("a", "b", "blockquote", "br",
				"cite", "code", "dd", "dl", "dt", "em", "i", "li", "ol", "p", "pre", "q", "small", "strike", "strong",
				"sub", "sup", "u", "ul");
		org.jsoup.safety.Whitelist whitelist_1_expr7_line_90 = whitelist_1_expr8_line_90.addAttributes("a", "href");
		org.jsoup.safety.Whitelist whitelist_1_expr6_line_90 = whitelist_1_expr7_line_90.addAttributes("blockquote",
				"cite");
		org.jsoup.safety.Whitelist whitelist_1_expr5_line_90 = whitelist_1_expr6_line_90.addAttributes("q", "cite");
		org.jsoup.safety.Whitelist whitelist_1_expr4_line_90 = whitelist_1_expr5_line_90.addProtocols("a", "href",
				"ftp", "http", "https", "mailto");
		org.jsoup.safety.Whitelist whitelist_1_expr3_line_90 = whitelist_1_expr4_line_90.addProtocols("blockquote",
				"cite", "http", "https");
		org.jsoup.safety.Whitelist whitelist_1_expr2_line_90 = whitelist_1_expr3_line_90.addProtocols("cite", "cite",
				"http", "https");
		org.jsoup.safety.Whitelist whitelist_1_expr1_line_90 = whitelist_1_expr2_line_90.addEnforcedAttribute("a",
				"rel", "nofollow");
		int PROBE_END_LINE_90 = 105;
		return whitelist_1_expr1_line_90
                ;

    }

    /**
     This whitelist allows the same text tags as {@link #basic}, and also allows <code>img</code> tags, with appropriate
     attributes, with <code>src</code> pointing to <code>http</code> or <code>https</code>.

     @return whitelist
     */
    public static Whitelist basicWithImages() {
        return basic()
                .addTags("img")
                .addAttributes("img", "align", "alt", "height", "src", "title", "width")
                .addProtocols("img", "src", "http", "https")
                ;
    }

    /**
     This whitelist allows a full range of text and structural body HTML: <code>a, b, blockquote, br, caption, cite,
     code, col, colgroup, dd, dl, dt, em, h1, h2, h3, h4, h5, h6, i, img, li, ol, p, pre, q, small, strike, strong, sub,
     sup, table, tbody, td, tfoot, th, thead, tr, u, ul</code>
     <p/>
     Links do not have an enforced <code>rel=nofollow</code> attribute, but you can add that if desired.

     @return whitelist
     */
    public static Whitelist relaxed() {
        return new Whitelist()
                .addTags(
                        "a", "b", "blockquote", "br", "caption", "cite", "code", "col",
                        "colgroup", "dd", "div", "dl", "dt", "em", "h1", "h2", "h3", "h4", "h5", "h6",
                        "i", "img", "li", "ol", "p", "pre", "q", "small", "strike", "strong",
                        "sub", "sup", "table", "tbody", "td", "tfoot", "th", "thead", "tr", "u",
                        "ul")

                .addAttributes("a", "href", "title")
                .addAttributes("blockquote", "cite")
                .addAttributes("col", "span", "width")
                .addAttributes("colgroup", "span", "width")
                .addAttributes("img", "align", "alt", "height", "src", "title", "width")
                .addAttributes("ol", "start", "type")
                .addAttributes("q", "cite")
                .addAttributes("table", "summary", "width")
                .addAttributes("td", "abbr", "axis", "colspan", "rowspan", "width")
                .addAttributes(
                        "th", "abbr", "axis", "colspan", "rowspan", "scope",
                        "width")
                .addAttributes("ul", "type")

                .addProtocols("a", "href", "ftp", "http", "https", "mailto")
                .addProtocols("blockquote", "cite", "http", "https")
                .addProtocols("img", "src", "http", "https")
                .addProtocols("q", "cite", "http", "https")
                ;
    }

    /**
     Create a new, empty whitelist. Generally it will be better to start with a default prepared whitelist instead.

     @see #basic()
     @see #basicWithImages()
     @see #simpleText()
     @see #relaxed()
     */
    public Whitelist() {
        tagNames = new HashSet<TagName>();
        attributes = new HashMap<TagName, Set<AttributeKey>>();
        enforcedAttributes = new HashMap<TagName, Map<AttributeKey, AttributeValue>>();
        protocols = new HashMap<TagName, Map<AttributeKey, Set<Protocol>>>();
        preserveRelativeLinks = false;
    }

    /**
     Add a list of allowed elements to a whitelist. (If a tag is not allowed, it will be removed from the HTML.)

     @param tags tag names to allow
     @return this (for chaining)
     */
    public Whitelist addTags(String... tags) {
        int PROBE_START_LINE_185 = 185;
		String[] p_tags_916_line_185 = tags;
		int PROBE_END_LINE_185 = 185;
		Validate.notNull(p_tags_916_line_185);

        int PROBE_START_LINE_187 = 190;
		String[] p_tags_916_line_187 = tags;
		int PROBE_END_LINE_187 = 190;
		for (String tagName : p_tags_916_line_187) {
            int PROBE_START_LINE_188 = 188;
			String v_tag_name_917_line_188 = tagName;
			int PROBE_END_LINE_188 = 188;
			Validate.notEmpty(v_tag_name_917_line_188);
            int PROBE_START_LINE_189 = 189;
			Set<org.jsoup.safety.Whitelist.TagName> f_tag_names_911_line_189 = tagNames;
			String v_tag_name_917_line_189 = tagName;
			org.jsoup.safety.Whitelist.TagName whitelist_1_expr22_line_189 = TagName.valueOf(v_tag_name_917_line_189);
			int PROBE_END_LINE_189 = 189;
			f_tag_names_911_line_189.add(whitelist_1_expr22_line_189);
        }
        return this;
    }

    /**
     Add a list of allowed attributes to a tag. (If an attribute is not allowed on an element, it will be removed.)
     <p/>
     E.g.: <code>addAttributes("a", "href", "class")</code> allows <code>href</code> and <code>class</code> attributes
     on <code>a</code> tags.
     <p/>
     To make an attribute valid for <b>all tags</b>, use the pseudo tag <code>:all</code>, e.g.
     <code>addAttributes(":all", "class")</code>.

     @param tag  The tag the attributes are for. The tag will be added to the allowed tag list if necessary.
     @param keys List of valid attributes for the tag
     @return this (for chaining)
     */
    public Whitelist addAttributes(String tag, String... keys) {
        int PROBE_START_LINE_208 = 208;
		String p_tag_918_line_208 = tag;
		int PROBE_END_LINE_208 = 208;
		Validate.notEmpty(p_tag_918_line_208);
        int PROBE_START_LINE_209 = 209;
		String[] p_keys_919_line_209 = keys;
		int PROBE_END_LINE_209 = 209;
		Validate.notNull(p_keys_919_line_209);
        int PROBE_START_LINE_210 = 210;
		String[] p_keys_919_line_210 = keys;
		int q_length_50_line_210 = p_keys_919_line_210.length;
		boolean whitelist_1_expr27_line_210 = q_length_50_line_210 > 0;
		int PROBE_END_LINE_210 = 210;
		Validate.isTrue(whitelist_1_expr27_line_210, "No attributes supplied.");

        int PROBE_START_LINE_212 = 212;
		String p_tag_918_line_212 = tag;
		TagName whitelist_1_expr28_line_212 = TagName.valueOf(p_tag_918_line_212);
		int PROBE_END_LINE_212 = 212;
		TagName tagName = whitelist_1_expr28_line_212;
        int PROBE_START_LINE_213 = 214;
		Set<org.jsoup.safety.Whitelist.TagName> f_tag_names_911_line_213 = tagNames;
		org.jsoup.safety.Whitelist.TagName v_tag_name_920_line_213 = tagName;
		boolean whitelist_1_expr30_line_213 = f_tag_names_911_line_213.contains(v_tag_name_920_line_213);
		boolean whitelist_1_expr29_line_213 = !whitelist_1_expr30_line_213;
		int PROBE_END_LINE_213 = 214;
		if (whitelist_1_expr29_line_213)
            tagNames.add(tagName);
        Set<AttributeKey> attributeSet = new HashSet<AttributeKey>();
        int PROBE_START_LINE_216 = 219;
		String[] p_keys_919_line_216 = keys;
		int PROBE_END_LINE_216 = 219;
		for (String key : p_keys_919_line_216) {
            int PROBE_START_LINE_217 = 217;
			String v_key_922_line_217 = key;
			int PROBE_END_LINE_217 = 217;
			Validate.notEmpty(v_key_922_line_217);
            int PROBE_START_LINE_218 = 218;
			Set<org.jsoup.safety.Whitelist.AttributeKey> v_attribute_set_921_line_218 = attributeSet;
			String v_key_922_line_218 = key;
			org.jsoup.safety.Whitelist.AttributeKey whitelist_1_expr34_line_218 = AttributeKey
					.valueOf(v_key_922_line_218);
			int PROBE_END_LINE_218 = 218;
			v_attribute_set_921_line_218.add(whitelist_1_expr34_line_218);
        }
        int PROBE_START_LINE_220 = 225;
		Map<org.jsoup.safety.Whitelist.TagName, Set<org.jsoup.safety.Whitelist.AttributeKey>> f_attributes_912_line_220 = attributes;
		org.jsoup.safety.Whitelist.TagName v_tag_name_920_line_220 = tagName;
		boolean whitelist_1_expr35_line_220 = f_attributes_912_line_220.containsKey(v_tag_name_920_line_220);
		int PROBE_END_LINE_220 = 225;
		if (whitelist_1_expr35_line_220) {
            Set<AttributeKey> currentSet = attributes.get(tagName);
            currentSet.addAll(attributeSet);
        } else {
            int PROBE_START_LINE_224 = 224;
			Map<org.jsoup.safety.Whitelist.TagName, Set<org.jsoup.safety.Whitelist.AttributeKey>> f_attributes_912_line_224 = attributes;
			org.jsoup.safety.Whitelist.TagName v_tag_name_920_line_224 = tagName;
			Set<org.jsoup.safety.Whitelist.AttributeKey> v_attribute_set_921_line_224 = attributeSet;
			int PROBE_END_LINE_224 = 224;
			f_attributes_912_line_224.put(v_tag_name_920_line_224, v_attribute_set_921_line_224);
        }
        return this;
    }

    /**
     Add an enforced attribute to a tag. An enforced attribute will always be added to the element. If the element
     already has the attribute set, it will be overridden.
     <p/>
     E.g.: <code>addEnforcedAttribute("a", "rel", "nofollow")</code> will make all <code>a</code> tags output as
     <code>&lt;a href="..." rel="nofollow"></code>

     @param tag   The tag the enforced attribute is for. The tag will be added to the allowed tag list if necessary.
     @param key   The attribute key
     @param value The enforced attribute value
     @return this (for chaining)
     */
    public Whitelist addEnforcedAttribute(String tag, String key, String value) {
        int PROBE_START_LINE_242 = 242;
		String p_tag_923_line_242 = tag;
		int PROBE_END_LINE_242 = 242;
		Validate.notEmpty(p_tag_923_line_242);
        int PROBE_START_LINE_243 = 243;
		String p_key_924_line_243 = key;
		int PROBE_END_LINE_243 = 243;
		Validate.notEmpty(p_key_924_line_243);
        int PROBE_START_LINE_244 = 244;
		String p_value_925_line_244 = value;
		int PROBE_END_LINE_244 = 244;
		Validate.notEmpty(p_value_925_line_244);

        int PROBE_START_LINE_246 = 246;
		String p_tag_923_line_246 = tag;
		TagName whitelist_1_expr41_line_246 = TagName.valueOf(p_tag_923_line_246);
		int PROBE_END_LINE_246 = 246;
		TagName tagName = whitelist_1_expr41_line_246;
        int PROBE_START_LINE_247 = 248;
		Set<org.jsoup.safety.Whitelist.TagName> f_tag_names_911_line_247 = tagNames;
		org.jsoup.safety.Whitelist.TagName v_tag_name_926_line_247 = tagName;
		boolean whitelist_1_expr43_line_247 = f_tag_names_911_line_247.contains(v_tag_name_926_line_247);
		boolean whitelist_1_expr42_line_247 = !whitelist_1_expr43_line_247;
		int PROBE_END_LINE_247 = 248;
		if (whitelist_1_expr42_line_247)
            tagNames.add(tagName);
        int PROBE_START_LINE_249 = 249;
		String p_key_924_line_249 = key;
		AttributeKey whitelist_1_expr44_line_249 = AttributeKey.valueOf(p_key_924_line_249);
		int PROBE_END_LINE_249 = 249;
		AttributeKey attrKey = whitelist_1_expr44_line_249;
        int PROBE_START_LINE_250 = 250;
		String p_value_925_line_250 = value;
		AttributeValue whitelist_1_expr45_line_250 = AttributeValue.valueOf(p_value_925_line_250);
		int PROBE_END_LINE_250 = 250;
		AttributeValue attrVal = whitelist_1_expr45_line_250;

        int PROBE_START_LINE_252 = 258;
		Map<org.jsoup.safety.Whitelist.TagName, Map<org.jsoup.safety.Whitelist.AttributeKey, org.jsoup.safety.Whitelist.AttributeValue>> f_enforced_attributes_913_line_252 = enforcedAttributes;
		org.jsoup.safety.Whitelist.TagName v_tag_name_926_line_252 = tagName;
		boolean whitelist_1_expr46_line_252 = f_enforced_attributes_913_line_252.containsKey(v_tag_name_926_line_252);
		int PROBE_END_LINE_252 = 258;
		if (whitelist_1_expr46_line_252) {
            enforcedAttributes.get(tagName).put(attrKey, attrVal);
        } else {
            Map<AttributeKey, AttributeValue> attrMap = new HashMap<AttributeKey, AttributeValue>();
            int PROBE_START_LINE_256 = 256;
			Map<org.jsoup.safety.Whitelist.AttributeKey, org.jsoup.safety.Whitelist.AttributeValue> v_attr_map_929_line_256 = attrMap;
			org.jsoup.safety.Whitelist.AttributeKey v_attr_key_927_line_256 = attrKey;
			org.jsoup.safety.Whitelist.AttributeValue v_attr_val_928_line_256 = attrVal;
			int PROBE_END_LINE_256 = 256;
			v_attr_map_929_line_256.put(v_attr_key_927_line_256, v_attr_val_928_line_256);
            int PROBE_START_LINE_257 = 257;
			Map<org.jsoup.safety.Whitelist.TagName, Map<org.jsoup.safety.Whitelist.AttributeKey, org.jsoup.safety.Whitelist.AttributeValue>> f_enforced_attributes_913_line_257 = enforcedAttributes;
			org.jsoup.safety.Whitelist.TagName v_tag_name_926_line_257 = tagName;
			Map<org.jsoup.safety.Whitelist.AttributeKey, org.jsoup.safety.Whitelist.AttributeValue> v_attr_map_929_line_257 = attrMap;
			int PROBE_END_LINE_257 = 257;
			f_enforced_attributes_913_line_257.put(v_tag_name_926_line_257, v_attr_map_929_line_257);
        }
        return this;
    }

    /**
     * Configure this Whitelist to preserve relative links in an element's URL attribute, or convert them to absolute
     * links. By default, this is <b>false</b>: URLs will be  made absolute (e.g. start with an allowed protocol, like
     * e.g. {@code http://}.
     * <p />
     * Note that when handling relative links, the input document must have an appropriate {@code base URI} set when
     * parsing, so that the link's protocol can be confirmed. Regardless of the setting of the {@code preserve relative
     * links} option, the link must be resolvable against the base URI to an allowed protocol; otherwise the attribute
     * will be removed.
     *
     * @param preserve {@code true} to allow relative links, {@code false} (default) to deny
     * @return this Whitelist, for chaining.
     * @see #addProtocols
     */
    public Whitelist preserveRelativeLinks(boolean preserve) {
        preserveRelativeLinks = preserve;
        return this;
    }

    /**
     Add allowed URL protocols for an element's URL attribute. This restricts the possible values of the attribute to
     URLs with the defined protocol.
     <p/>
     E.g.: <code>addProtocols("a", "href", "ftp", "http", "https")</code>

     @param tag       Tag the URL protocol is for
     @param key       Attribute key
     @param protocols List of valid protocols
     @return this, for chaining
     */
    public Whitelist addProtocols(String tag, String key, String... protocols) {
        int PROBE_START_LINE_293 = 293;
		String p_tag_931_line_293 = tag;
		int PROBE_END_LINE_293 = 293;
		Validate.notEmpty(p_tag_931_line_293);
        int PROBE_START_LINE_294 = 294;
		String p_key_932_line_294 = key;
		int PROBE_END_LINE_294 = 294;
		Validate.notEmpty(p_key_932_line_294);
        int PROBE_START_LINE_295 = 295;
		String[] p_protocols_933_line_295 = protocols;
		int PROBE_END_LINE_295 = 295;
		Validate.notNull(p_protocols_933_line_295);

        int PROBE_START_LINE_297 = 297;
		String p_tag_931_line_297 = tag;
		TagName whitelist_1_expr54_line_297 = TagName.valueOf(p_tag_931_line_297);
		int PROBE_END_LINE_297 = 297;
		TagName tagName = whitelist_1_expr54_line_297;
        int PROBE_START_LINE_298 = 298;
		String p_key_932_line_298 = key;
		AttributeKey whitelist_1_expr55_line_298 = AttributeKey.valueOf(p_key_932_line_298);
		int PROBE_END_LINE_298 = 298;
		AttributeKey attrKey = whitelist_1_expr55_line_298;
        Map<AttributeKey, Set<Protocol>> attrMap = null;
        Set<Protocol> protSet = null;

        int PROBE_START_LINE_302 = 307;
		Map<org.jsoup.safety.Whitelist.TagName, Map<org.jsoup.safety.Whitelist.AttributeKey, Set<org.jsoup.safety.Whitelist.Protocol>>> f_protocols_914_line_302 = this.protocols;
		org.jsoup.safety.Whitelist.TagName v_tag_name_934_line_302 = tagName;
		boolean whitelist_1_expr56_line_302 = f_protocols_914_line_302.containsKey(v_tag_name_934_line_302);
		int PROBE_END_LINE_302 = 307;
		if (whitelist_1_expr56_line_302) {
            attrMap = this.protocols.get(tagName);
        } else {
            attrMap = new HashMap<AttributeKey, Set<Protocol>>();
            int PROBE_START_LINE_306 = 306;
			Map<org.jsoup.safety.Whitelist.TagName, Map<org.jsoup.safety.Whitelist.AttributeKey, Set<org.jsoup.safety.Whitelist.Protocol>>> f_protocols_914_line_306 = this.protocols;
			org.jsoup.safety.Whitelist.TagName v_tag_name_934_line_306 = tagName;
			Map<org.jsoup.safety.Whitelist.AttributeKey, Set<org.jsoup.safety.Whitelist.Protocol>> v_attr_map_936_line_306 = attrMap;
			int PROBE_END_LINE_306 = 306;
			f_protocols_914_line_306.put(v_tag_name_934_line_306, v_attr_map_936_line_306);
        }
        int PROBE_START_LINE_308 = 313;
		Map<org.jsoup.safety.Whitelist.AttributeKey, Set<org.jsoup.safety.Whitelist.Protocol>> v_attr_map_936_line_308 = attrMap;
		org.jsoup.safety.Whitelist.AttributeKey v_attr_key_935_line_308 = attrKey;
		boolean whitelist_1_expr64_line_308 = v_attr_map_936_line_308.containsKey(v_attr_key_935_line_308);
		int PROBE_END_LINE_308 = 313;
		if (whitelist_1_expr64_line_308) {
            protSet = attrMap.get(attrKey);
        } else {
            protSet = new HashSet<Protocol>();
            int PROBE_START_LINE_312 = 312;
			Map<org.jsoup.safety.Whitelist.AttributeKey, Set<org.jsoup.safety.Whitelist.Protocol>> v_attr_map_936_line_312 = attrMap;
			org.jsoup.safety.Whitelist.AttributeKey v_attr_key_935_line_312 = attrKey;
			Set<org.jsoup.safety.Whitelist.Protocol> v_prot_set_937_line_312 = protSet;
			int PROBE_END_LINE_312 = 312;
			v_attr_map_936_line_312.put(v_attr_key_935_line_312, v_prot_set_937_line_312);
        }
        int PROBE_START_LINE_314 = 318;
		String[] p_protocols_933_line_314 = protocols;
		int PROBE_END_LINE_314 = 318;
		for (String protocol : p_protocols_933_line_314) {
            int PROBE_START_LINE_315 = 315;
			String v_protocol_938_line_315 = protocol;
			int PROBE_END_LINE_315 = 315;
			Validate.notEmpty(v_protocol_938_line_315);
            int PROBE_START_LINE_316 = 316;
			String v_protocol_938_line_316 = protocol;
			Protocol whitelist_1_expr69_line_316 = Protocol.valueOf(v_protocol_938_line_316);
			int PROBE_END_LINE_316 = 316;
			Protocol prot = whitelist_1_expr69_line_316;
            int PROBE_START_LINE_317 = 317;
			Set<org.jsoup.safety.Whitelist.Protocol> v_prot_set_937_line_317 = protSet;
			org.jsoup.safety.Whitelist.Protocol v_prot_939_line_317 = prot;
			int PROBE_END_LINE_317 = 317;
			v_prot_set_937_line_317.add(v_prot_939_line_317);
        }
        return this;
    }

    boolean isSafeTag(String tag) {
        int PROBE_START_LINE_323 = 323;
		Set<org.jsoup.safety.Whitelist.TagName> f_tag_names_911_line_323 = tagNames;
		String p_tag_940_line_323 = tag;
		org.jsoup.safety.Whitelist.TagName whitelist_1_expr73_line_323 = TagName.valueOf(p_tag_940_line_323);
		boolean whitelist_1_expr72_line_323 = f_tag_names_911_line_323.contains(whitelist_1_expr73_line_323);
		int PROBE_END_LINE_323 = 323;
		return whitelist_1_expr72_line_323;
    }

    boolean isSafeAttribute(String tagName, Element el, Attribute attr) {
        TagName tag = TagName.valueOf(tagName);
        AttributeKey key = AttributeKey.valueOf(attr.getKey());

        if (attributes.containsKey(tag)) {
            if (attributes.get(tag).contains(key)) {
                if (protocols.containsKey(tag)) {
                    Map<AttributeKey, Set<Protocol>> attrProts = protocols.get(tag);
                    // ok if not defined protocol; otherwise test
                    return !attrProts.containsKey(key) || testValidProtocol(el, attr, attrProts.get(key));
                } else { // attribute found, no protocols defined, so OK
                    return true;
                }
            }
        }
        // no attributes defined for tag, try :all tag
        return !tagName.equals(":all") && isSafeAttribute(":all", el, attr);
    }

    private boolean testValidProtocol(Element el, Attribute attr, Set<Protocol> protocols) {
        // try to resolve relative urls to abs, and optionally update the attribute so output html has abs.
        // rels without a baseuri get removed
        String value = el.absUrl(attr.getKey());
        if (value.length() == 0)
            value = attr.getValue(); // if it could not be made abs, run as-is to allow custom unknown protocols
        if (!preserveRelativeLinks)
            attr.setValue(value);
        
        for (Protocol protocol : protocols) {
            String prot = protocol.toString() + ":";
            if (value.toLowerCase().startsWith(prot)) {
                return true;
            }
        }
        return false;
    }

    Attributes getEnforcedAttributes(String tagName) {
        Attributes attrs = new Attributes();
        TagName tag = TagName.valueOf(tagName);
        if (enforcedAttributes.containsKey(tag)) {
            Map<AttributeKey, AttributeValue> keyVals = enforcedAttributes.get(tag);
            for (Map.Entry<AttributeKey, AttributeValue> entry : keyVals.entrySet()) {
                attrs.put(entry.getKey().toString(), entry.getValue().toString());
            }
        }
        return attrs;
    }
    
    // named types for config. All just hold strings, but here for my sanity.

    static class TagName extends TypedValue {
        TagName(String value) {
            super(value);
        }

        static TagName valueOf(String value) {
            int PROBE_START_LINE_383 = 383;
			String p_value_949_line_383 = value;
			int PROBE_END_LINE_383 = 383;
			return new TagName(p_value_949_line_383);
        }
    }

    static class AttributeKey extends TypedValue {
        AttributeKey(String value) {
            super(value);
        }

        static AttributeKey valueOf(String value) {
            int PROBE_START_LINE_393 = 393;
			String p_value_951_line_393 = value;
			int PROBE_END_LINE_393 = 393;
			return new AttributeKey(p_value_951_line_393);
        }
    }

    static class AttributeValue extends TypedValue {
        AttributeValue(String value) {
            super(value);
        }

        static AttributeValue valueOf(String value) {
            int PROBE_START_LINE_403 = 403;
			String p_value_953_line_403 = value;
			int PROBE_END_LINE_403 = 403;
			return new AttributeValue(p_value_953_line_403);
        }
    }

    static class Protocol extends TypedValue {
        Protocol(String value) {
            super(value);
        }

        static Protocol valueOf(String value) {
            int PROBE_START_LINE_413 = 413;
			String p_value_955_line_413 = value;
			int PROBE_END_LINE_413 = 413;
			return new Protocol(p_value_955_line_413);
        }
    }

    abstract static class TypedValue {
        private String value;

        TypedValue(String value) {
            int PROBE_START_LINE_421 = 421;
			String p_value_956_line_421 = value;
			int PROBE_END_LINE_421 = 421;
			Validate.notNull(p_value_956_line_421);
            int PROBE_START_LINE_422 = 422;
			String p_value_956_line_422 = value;
			int PROBE_END_LINE_422 = 422;
			this.value = p_value_956_line_422;
        }

        @Override
        public int hashCode() {
            final int prime = 31;
            int result = 1;
            int PROBE_START_LINE_429 = 429;
			int v_prime_958_line_429 = prime;
			int v_result_959_line_429 = result;
			int whitelist_1_expr88_line_429 = v_prime_958_line_429 * v_result_959_line_429;
			String f_value_957_line_429 = value;
			boolean whitelist_1_expr93_line_429 = f_value_957_line_429 == null;
			boolean whitelist_1_expr91_line_429 = (whitelist_1_expr93_line_429);
			int whitelist_1_expr92_line_429 = 0;
			if (!whitelist_1_expr91_line_429) {
				String f_value_957_line_429_v1 = value;
				whitelist_1_expr92_line_429 = f_value_957_line_429_v1.hashCode();
			}
			int whitelist_1_expr90_line_429 = whitelist_1_expr91_line_429 ? 0 : whitelist_1_expr92_line_429;
			int whitelist_1_expr89_line_429 = (whitelist_1_expr90_line_429);
			int whitelist_1_expr87_line_429 = whitelist_1_expr88_line_429 + whitelist_1_expr89_line_429;
			int PROBE_END_LINE_429 = 429;
			result = whitelist_1_expr87_line_429;
            int PROBE_START_LINE_430 = 430;
			int v_result_959_line_430 = result;
			int PROBE_END_LINE_430 = 430;
			return v_result_959_line_430;
        }

        @Override
        public boolean equals(Object obj) {
            int PROBE_START_LINE_435 = 435;
			Object p_obj_960_line_435 = obj;
			boolean whitelist_1_expr94_line_435 = this == p_obj_960_line_435;
			int PROBE_END_LINE_435 = 435;
			if (whitelist_1_expr94_line_435) return true;
            int PROBE_START_LINE_436 = 436;
			Object p_obj_960_line_436 = obj;
			boolean whitelist_1_expr96_line_436 = p_obj_960_line_436 == null;
			int PROBE_END_LINE_436 = 436;
			if (whitelist_1_expr96_line_436) return false;
            int PROBE_START_LINE_437 = 437;
			Class<? extends org.jsoup.safety.Whitelist.TypedValue> whitelist_1_expr98_line_437 = getClass();
			Object p_obj_960_line_437 = obj;
			Class<? extends Object> whitelist_1_expr99_line_437 = p_obj_960_line_437.getClass();
			boolean whitelist_1_expr97_line_437 = whitelist_1_expr98_line_437 != whitelist_1_expr99_line_437;
			int PROBE_END_LINE_437 = 437;
			if (whitelist_1_expr97_line_437) return false;
            int PROBE_START_LINE_438 = 438;
			Object p_obj_960_line_438 = obj;
			int PROBE_END_LINE_438 = 438;
			TypedValue other = (TypedValue) p_obj_960_line_438;
            int PROBE_START_LINE_439 = 441;
			String f_value_957_line_439 = value;
			boolean whitelist_1_expr101_line_439 = f_value_957_line_439 == null;
			int PROBE_END_LINE_439 = 441;
			if (whitelist_1_expr101_line_439) {
                if (other.value != null) return false;
            } else {
				int PROBE_START_LINE_441 = 441;
				String f_value_957_line_441 = value;
				org.jsoup.safety.Whitelist.TypedValue v_other_961_line_441 = other;
				String q_value_51_line_441 = v_other_961_line_441.value;
				boolean whitelist_1_expr103_line_441 = f_value_957_line_441.equals(q_value_51_line_441);
				boolean whitelist_1_expr102_line_441 = !whitelist_1_expr103_line_441;
				int PROBE_END_LINE_441 = 441;
				if (whitelist_1_expr102_line_441)
					return false;
			}
            return true;
        }

        @Override
        public String toString() {
            return value;
        }
    }
}

