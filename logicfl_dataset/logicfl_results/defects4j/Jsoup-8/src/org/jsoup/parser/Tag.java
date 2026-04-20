package org.jsoup.parser;

import org.jsoup.helper.Validate;

import java.util.*;
import java.util.List;
import java.util.Map;

/**
 HTML Tag specifications. This is a very simplistic model without the full expressiveness as the DTD,
 but it should capture most of what we need to know to intelligently parse a doc.

 @author Jonathan Hedley, jonathan@hedley.net */
public class Tag {
    private static final Map<String, Tag> tags = new HashMap<String, Tag>();
    private static final Tag defaultAncestor;
    static {
        defaultAncestor = new Tag("BODY");
        int PROBE_START_LINE_17 = 17;
		Map<String, org.jsoup.parser.Tag> f_tags_357_line_17 = tags;
		org.jsoup.parser.Tag f_default_ancestor_358_line_17 = defaultAncestor;
		String q_tag_name_11_line_17 = f_default_ancestor_358_line_17.tagName;
		org.jsoup.parser.Tag f_default_ancestor_358_line_17_v1 = defaultAncestor;
		int PROBE_END_LINE_17 = 17;
		f_tags_357_line_17.put(q_tag_name_11_line_17, f_default_ancestor_358_line_17_v1);
    }

    private String tagName;
    private boolean knownTag = false; // if pre-defined or auto-created
    private boolean isBlock = true; // block or inline
    private boolean canContainBlock = true; // Can this tag hold block level tags?
    private boolean canContainInline = true; // only pcdata if not
    private boolean optionalClosing = false; // If tag is open, and another seen, close previous tag
    private boolean empty = false; // can hold nothing; e.g. img
    private boolean selfClosing = false; // can self close (<foo />). used for unknown tags that self close, without forcing them as empty.
    private boolean preserveWhitespace = false; // for pre, textarea, script etc
    private List<Tag> ancestors; // elements must be a descendant of one of these ancestors
    int PROBE_START_LINE_30 = 30;

	private List<org.jsoup.parser.Tag> tag_1_expr5_line_30 = Collections.emptyList();

	int PROBE_END_LINE_30 = 30;

	private List<Tag> excludes = tag_1_expr5_line_30; // cannot contain these tags
    int PROBE_START_LINE_31 = 31;

	private List<org.jsoup.parser.Tag> tag_1_expr6_line_31 = Collections.emptyList();

	int PROBE_END_LINE_31 = 31;

	private List<Tag> ignoreEndTags = tag_1_expr6_line_31; // ignore these end tags
    private boolean directDescendant; // if true, must directly descend from one of the ancestors
    private boolean limitChildren; // if true, only contain children that've registered parents

    private Tag(String tagName) {
        int PROBE_START_LINE_36 = 36;
		String p_tag_name_369_line_36 = tagName;
		String tag_1_expr9_line_36 = p_tag_name_369_line_36.toLowerCase();
		int PROBE_END_LINE_36 = 36;
		this.tagName = tag_1_expr9_line_36;
    }

    public String getName() {
        int PROBE_START_LINE_40 = 40;
		String f_tag_name_370_line_40 = tagName;
		int PROBE_END_LINE_40 = 40;
		return f_tag_name_370_line_40;
    }

    /**
     Get a Tag by name. If not previously defined (unknown), returns a new generic tag, that can do anything.
     <p>
     Pre-defined tags (P, DIV etc) will be ==, but unknown tags are not registered and will only .equals().
     @param tagName Name of tag, e.g. "p". Case insensitive.
     @return The tag, either defined or new generic.
     */
    public static Tag valueOf(String tagName) {
        int PROBE_START_LINE_51 = 51;
		String p_tag_name_371_line_51 = tagName;
		int PROBE_END_LINE_51 = 51;
		Validate.notNull(p_tag_name_371_line_51);
        int PROBE_START_LINE_52 = 52;
		String p_tag_name_371_line_52 = tagName;
		String tag_1_expr14_line_52 = p_tag_name_371_line_52.trim();
		String tag_1_expr13_line_52 = tag_1_expr14_line_52.toLowerCase();
		int PROBE_END_LINE_52 = 52;
		tagName = tag_1_expr13_line_52;
        int PROBE_START_LINE_53 = 53;
		String p_tag_name_371_line_53 = tagName;
		int PROBE_END_LINE_53 = 53;
		Validate.notEmpty(p_tag_name_371_line_53);

        int PROBE_START_LINE_55 = 66;
		Map<String, org.jsoup.parser.Tag> f_tags_357_line_55 = tags;
		int PROBE_END_LINE_55 = 66;
		synchronized (f_tags_357_line_55) {
            int PROBE_START_LINE_56 = 56;
			Map<String, org.jsoup.parser.Tag> f_tags_357_line_56 = tags;
			String p_tag_name_371_line_56 = tagName;
			Tag tag_1_expr16_line_56 = f_tags_357_line_56.get(p_tag_name_371_line_56);
			int PROBE_END_LINE_56 = 56;
			Tag tag = tag_1_expr16_line_56;
            int PROBE_START_LINE_57 = 64;
			org.jsoup.parser.Tag v_tag_372_line_57 = tag;
			boolean tag_1_expr17_line_57 = v_tag_372_line_57 == null;
			int PROBE_END_LINE_57 = 64;
			if (tag_1_expr17_line_57) {
                int PROBE_START_LINE_59 = 59;
				String p_tag_name_371_line_59 = tagName;
				int PROBE_END_LINE_59 = 59;
				// not defined: create default; go anywhere, do anything! (incl be inside a <p>)
                tag = new Tag(p_tag_name_371_line_59);
                int PROBE_START_LINE_60 = 60;
				org.jsoup.parser.Tag v_tag_372_line_60 = tag;
				org.jsoup.parser.Tag f_default_ancestor_358_line_60 = defaultAncestor;
				String q_tag_name_12_line_60 = f_default_ancestor_358_line_60.tagName;
				int PROBE_END_LINE_60 = 60;
				v_tag_372_line_60.setAncestor(q_tag_name_12_line_60);
                int PROBE_START_LINE_61 = 61;
				org.jsoup.parser.Tag v_tag_372_line_61 = tag;
				int PROBE_END_LINE_61 = 61;
				v_tag_372_line_61.setExcludes();
                tag.isBlock = false;
                tag.canContainBlock = true;
            }
            int PROBE_START_LINE_65 = 65;
			org.jsoup.parser.Tag v_tag_372_line_65 = tag;
			int PROBE_END_LINE_65 = 65;
			return v_tag_372_line_65;
        }
    }

    /**
     Test if this tag, the prospective parent, can accept the proposed child.
     @param child potential child tag.
     @return true if this can contain child.
     */
    boolean canContain(Tag child) {
        int PROBE_START_LINE_75 = 75;
		org.jsoup.parser.Tag p_child_373_line_75 = child;
		int PROBE_END_LINE_75 = 75;
		Validate.notNull(p_child_373_line_75);

        int PROBE_START_LINE_77 = 78;
		org.jsoup.parser.Tag p_child_373_line_77 = child;
		boolean q_is_block_14_line_77 = p_child_373_line_77.isBlock;
		boolean tag_1_expr26_line_77 = true;
		if (q_is_block_14_line_77) {
			boolean f_can_contain_block_361_line_77 = this.canContainBlock;
			tag_1_expr26_line_77 = !f_can_contain_block_361_line_77;
		}
		boolean tag_1_expr25_line_77 = q_is_block_14_line_77 && tag_1_expr26_line_77;
		int PROBE_END_LINE_77 = 78;
		if (tag_1_expr25_line_77)
            return false;

        int PROBE_START_LINE_80 = 81;
		org.jsoup.parser.Tag p_child_373_line_80 = child;
		boolean q_is_block_15_line_80 = p_child_373_line_80.isBlock;
		boolean tag_1_expr30_line_80 = !q_is_block_15_line_80;
		boolean tag_1_expr31_line_80 = true;
		if (tag_1_expr30_line_80) {
			boolean f_can_contain_inline_362_line_80 = this.canContainInline;
			tag_1_expr31_line_80 = !f_can_contain_inline_362_line_80;
		}
		boolean tag_1_expr29_line_80 = tag_1_expr30_line_80 && tag_1_expr31_line_80;
		int PROBE_END_LINE_80 = 81;
		if (tag_1_expr29_line_80) // not block == inline
            return false;

        int PROBE_START_LINE_83 = 84;
		boolean f_optional_closing_363_line_83 = this.optionalClosing;
		boolean tag_1_expr37_line_83 = true;
		if (f_optional_closing_363_line_83) {
			org.jsoup.parser.Tag p_child_373_line_83 = child;
			tag_1_expr37_line_83 = this.equals(p_child_373_line_83);
		}
		boolean tag_1_expr34_line_83 = f_optional_closing_363_line_83 && tag_1_expr37_line_83;
		int PROBE_END_LINE_83 = 84;
		if (tag_1_expr34_line_83)
            return false;

        int PROBE_START_LINE_86 = 87;
		boolean f_empty_364_line_86 = this.empty;
		boolean tag_1_expr42_line_86 = false;
		if (!f_empty_364_line_86) {
			tag_1_expr42_line_86 = this.isData();
		}
		boolean tag_1_expr39_line_86 = f_empty_364_line_86 || tag_1_expr42_line_86;
		int PROBE_END_LINE_86 = 87;
		if (tag_1_expr39_line_86)
            return false;
        
        int PROBE_START_LINE_90 = 91;
		boolean tag_1_expr45_line_90 = this.requiresSpecificParent();
		boolean tag_1_expr47_line_90 = true;
		if (tag_1_expr45_line_90) {
			org.jsoup.parser.Tag tag_1_expr48_line_90 = this.getImplicitParent();
			org.jsoup.parser.Tag p_child_373_line_90 = child;
			tag_1_expr47_line_90 = tag_1_expr48_line_90.equals(p_child_373_line_90);
		}
		boolean tag_1_expr44_line_90 = tag_1_expr45_line_90 && tag_1_expr47_line_90;
		int PROBE_END_LINE_90 = 91;
		// don't allow children to contain their parent (directly)
        if (tag_1_expr44_line_90)
            return false;

        int PROBE_START_LINE_94 = 100;
		boolean f_limit_children_374_line_94 = limitChildren;
		int PROBE_END_LINE_94 = 100;
		// confirm limited children
        if (f_limit_children_374_line_94) {
            for (Tag childParent : child.ancestors) {
                if (childParent.equals(this))
                    return true;
            }
            return false;
        }
        
        int PROBE_START_LINE_103 = 108;
		List<org.jsoup.parser.Tag> f_excludes_367_line_103 = excludes;
		boolean tag_1_expr51_line_103 = f_excludes_367_line_103.isEmpty();
		boolean tag_1_expr50_line_103 = !tag_1_expr51_line_103;
		int PROBE_END_LINE_103 = 108;
		// exclude children
        if (tag_1_expr50_line_103) {
            for (Tag excluded: excludes) {
                if (child.equals(excluded))
                    return false;
            }
        }
        
        return true;
    }

    /**
     Gets if this is a block tag.
     @return if block tag
     */
    public boolean isBlock() {
        int PROBE_START_LINE_118 = 118;
		boolean f_is_block_360_line_118 = isBlock;
		int PROBE_END_LINE_118 = 118;
		return f_is_block_360_line_118;
    }

    /**
     Gets if this tag can contain block tags.
     @return if tag can contain block tags
     */
    public boolean canContainBlock() {
        int PROBE_START_LINE_126 = 126;
		boolean f_can_contain_block_361_line_126 = canContainBlock;
		int PROBE_END_LINE_126 = 126;
		return f_can_contain_block_361_line_126;
    }

    /**
     Gets if this tag is an inline tag.
     @return if this tag is an inline tag.
     */
    public boolean isInline() {
        return !isBlock;
    }

    /**
     Gets if this tag is a data only tag.
     @return if this tag is a data only tag
     */
    public boolean isData() {
        int PROBE_START_LINE_142 = 142;
		boolean f_can_contain_inline_362_line_142 = canContainInline;
		boolean tag_1_expr53_line_142 = !f_can_contain_inline_362_line_142;
		boolean tag_1_expr54_line_142 = true;
		if (tag_1_expr53_line_142) {
			boolean tag_1_expr55_line_142 = isEmpty();
			tag_1_expr54_line_142 = !tag_1_expr55_line_142;
		}
		boolean tag_1_expr52_line_142 = tag_1_expr53_line_142 && tag_1_expr54_line_142;
		int PROBE_END_LINE_142 = 142;
		return tag_1_expr52_line_142;
    }

    /**
     Get if this is an empty tag
     @return if this is an emtpy tag
     */
    public boolean isEmpty() {
        int PROBE_START_LINE_150 = 150;
		boolean f_empty_364_line_150 = empty;
		int PROBE_END_LINE_150 = 150;
		return f_empty_364_line_150;
    }
    
    /**
     * Get if this tag is self closing.
     * @return if this tag should be output as self closing.
     */
    public boolean isSelfClosing() {
        int PROBE_START_LINE_158 = 158;
		boolean f_empty_364_line_158 = empty;
		boolean f_self_closing_365_line_158 = false;
		if (!f_empty_364_line_158) {
			f_self_closing_365_line_158 = selfClosing;
		}
		boolean tag_1_expr56_line_158 = f_empty_364_line_158 || f_self_closing_365_line_158;
		int PROBE_END_LINE_158 = 158;
		return tag_1_expr56_line_158;
    }
    
    /**
     * Get if this is a pre-defined tag, or was auto created on parsing.
     * @return if a known tag
     */
    public boolean isKnownTag() {
        return knownTag;
    }

    /**
     Get if this tag should preserve whitespace within child text nodes.
     @return if preserve whitepace
     */
    public boolean preserveWhitespace() {
        return preserveWhitespace;
    }

    Tag getImplicitParent() {
        int PROBE_START_LINE_178 = 178;
		List<org.jsoup.parser.Tag> f_ancestors_375_line_178 = ancestors;
		boolean tag_1_expr61_line_178 = f_ancestors_375_line_178.isEmpty();
		boolean tag_1_expr60_line_178 = !tag_1_expr61_line_178;
		boolean tag_1_expr58_line_178 = (tag_1_expr60_line_178);
		org.jsoup.parser.Tag tag_1_expr59_line_178 = null;
		if (tag_1_expr58_line_178) {
			List<org.jsoup.parser.Tag> f_ancestors_375_line_178_v1 = ancestors;
			tag_1_expr59_line_178 = f_ancestors_375_line_178_v1.get(0);
		}
		org.jsoup.parser.Tag tag_1_expr57_line_178 = tag_1_expr58_line_178 ? tag_1_expr59_line_178 : null;
		int PROBE_END_LINE_178 = 178;
		return tag_1_expr57_line_178;
    }

    boolean requiresSpecificParent() {
        int PROBE_START_LINE_182 = 182;
		boolean f_direct_descendant_376_line_182 = directDescendant;
		int PROBE_END_LINE_182 = 182;
		return f_direct_descendant_376_line_182;
    }

    boolean isValidParent(Tag child) {
        return isValidAncestor(child);
    }

    boolean isValidAncestor(Tag child) {
        int PROBE_START_LINE_190 = 191;
		org.jsoup.parser.Tag p_child_378_line_190 = child;
		List<org.jsoup.parser.Tag> q_ancestors_15_line_190 = p_child_378_line_190.ancestors;
		boolean tag_1_expr62_line_190 = q_ancestors_15_line_190.isEmpty();
		int PROBE_END_LINE_190 = 191;
		if (tag_1_expr62_line_190)
            return true; // HTML tag

        for (int i = 0; true; i++) {
			int PROBE_START_LINE_194 = 195;
			int v_i_379_line_193 = i;
			org.jsoup.parser.Tag p_child_378_line_193 = child;
			List<org.jsoup.parser.Tag> q_ancestors_16_line_193 = p_child_378_line_193.ancestors;
			int tag_1_expr65_line_193 = q_ancestors_16_line_193.size();
			boolean tag_1_expr64_line_193 = v_i_379_line_193 < tag_1_expr65_line_193;
			if (!(tag_1_expr64_line_193)) {
				break;
			}
			org.jsoup.parser.Tag p_child_378_line_194 = child;
			List<org.jsoup.parser.Tag> q_ancestors_16_line_194 = p_child_378_line_194.ancestors;
			int v_i_379_line_194 = i;
			org.jsoup.parser.Tag tag_1_expr68_line_194 = q_ancestors_16_line_194.get(v_i_379_line_194);
			boolean tag_1_expr67_line_194 = this.equals(tag_1_expr68_line_194);
			int PROBE_END_LINE_194 = 195;
			if (tag_1_expr67_line_194)
				return true;
		}
        
        return false;
    }

    boolean isIgnorableEndTag(Tag child) {
        for (Tag endTag : ignoreEndTags) {
            if (child.equals(endTag))
                return true;
        }
        return false;        
    }

    @Override
    public boolean equals(Object o) {
        int PROBE_START_LINE_210 = 210;
		Object p_o_381_line_210 = o;
		boolean tag_1_expr70_line_210 = this == p_o_381_line_210;
		int PROBE_END_LINE_210 = 210;
		if (tag_1_expr70_line_210) return true;
        int PROBE_START_LINE_211 = 211;
		Object p_o_381_line_211 = o;
		boolean tag_1_expr73_line_211 = p_o_381_line_211 == null;
		boolean tag_1_expr74_line_211 = false;
		if (!tag_1_expr73_line_211) {
			Class<? extends org.jsoup.parser.Tag> tag_1_expr75_line_211 = getClass();
			Object p_o_381_line_211_v1 = o;
			Class<? extends Object> tag_1_expr76_line_211 = p_o_381_line_211_v1.getClass();
			tag_1_expr74_line_211 = tag_1_expr75_line_211 != tag_1_expr76_line_211;
		}
		boolean tag_1_expr72_line_211 = tag_1_expr73_line_211 || tag_1_expr74_line_211;
		int PROBE_END_LINE_211 = 211;
		if (tag_1_expr72_line_211) return false;

        int PROBE_START_LINE_213 = 213;
		Object p_o_381_line_213 = o;
		int PROBE_END_LINE_213 = 213;
		Tag tag = (Tag) p_o_381_line_213;

        int PROBE_START_LINE_215 = 215;
		String f_tag_name_370_line_215 = tagName;
		boolean tag_1_expr79_line_215 = f_tag_name_370_line_215 != null;
		boolean tag_1_expr80_line_215 = false;
		boolean tag_1_expr81_line_215 = false;
		if (tag_1_expr79_line_215) {
			String f_tag_name_370_line_215_v1 = tagName;
			org.jsoup.parser.Tag v_tag_382_line_215 = tag;
			String q_tag_name_16_line_215 = v_tag_382_line_215.tagName;
			boolean tag_1_expr82_line_215 = f_tag_name_370_line_215_v1.equals(q_tag_name_16_line_215);
			tag_1_expr80_line_215 = !tag_1_expr82_line_215;
		} else {
			org.jsoup.parser.Tag v_tag_382_line_215_v1 = tag;
			String q_tag_name_17_line_215 = v_tag_382_line_215_v1.tagName;
			tag_1_expr81_line_215 = q_tag_name_17_line_215 != null;
		}
		boolean tag_1_expr78_line_215 = tag_1_expr79_line_215 ? tag_1_expr80_line_215 : tag_1_expr81_line_215;
		int PROBE_END_LINE_215 = 215;
		if (tag_1_expr78_line_215) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int PROBE_START_LINE_222 = 222;
		String f_tag_name_370_line_222 = tagName;
		boolean tag_1_expr84_line_222 = f_tag_name_370_line_222 != null;
		int tag_1_expr85_line_222 = 0;
		if (tag_1_expr84_line_222) {
			String f_tag_name_370_line_222_v1 = tagName;
			tag_1_expr85_line_222 = f_tag_name_370_line_222_v1.hashCode();
		}
		int tag_1_expr83_line_222 = tag_1_expr84_line_222 ? tag_1_expr85_line_222 : 0;
		int PROBE_END_LINE_222 = 222;
		int result = tag_1_expr83_line_222;
        int PROBE_START_LINE_223 = 223;
		int v_result_383_line_223 = result;
		int tag_1_expr88_line_223 = 31 * v_result_383_line_223;
		boolean f_is_block_360_line_223 = isBlock;
		int tag_1_expr90_line_223 = f_is_block_360_line_223 ? 1 : 0;
		int tag_1_expr89_line_223 = (tag_1_expr90_line_223);
		int tag_1_expr87_line_223 = tag_1_expr88_line_223 + tag_1_expr89_line_223;
		int PROBE_END_LINE_223 = 223;
		result = tag_1_expr87_line_223;
        int PROBE_START_LINE_224 = 224;
		int v_result_383_line_224 = result;
		int tag_1_expr93_line_224 = 31 * v_result_383_line_224;
		boolean f_can_contain_block_361_line_224 = canContainBlock;
		int tag_1_expr95_line_224 = f_can_contain_block_361_line_224 ? 1 : 0;
		int tag_1_expr94_line_224 = (tag_1_expr95_line_224);
		int tag_1_expr92_line_224 = tag_1_expr93_line_224 + tag_1_expr94_line_224;
		int PROBE_END_LINE_224 = 224;
		result = tag_1_expr92_line_224;
        int PROBE_START_LINE_225 = 225;
		int v_result_383_line_225 = result;
		int tag_1_expr98_line_225 = 31 * v_result_383_line_225;
		boolean f_can_contain_inline_362_line_225 = canContainInline;
		int tag_1_expr100_line_225 = f_can_contain_inline_362_line_225 ? 1 : 0;
		int tag_1_expr99_line_225 = (tag_1_expr100_line_225);
		int tag_1_expr97_line_225 = tag_1_expr98_line_225 + tag_1_expr99_line_225;
		int PROBE_END_LINE_225 = 225;
		result = tag_1_expr97_line_225;
        int PROBE_START_LINE_226 = 226;
		int v_result_383_line_226 = result;
		int tag_1_expr103_line_226 = 31 * v_result_383_line_226;
		boolean f_optional_closing_363_line_226 = optionalClosing;
		int tag_1_expr105_line_226 = f_optional_closing_363_line_226 ? 1 : 0;
		int tag_1_expr104_line_226 = (tag_1_expr105_line_226);
		int tag_1_expr102_line_226 = tag_1_expr103_line_226 + tag_1_expr104_line_226;
		int PROBE_END_LINE_226 = 226;
		result = tag_1_expr102_line_226;
        int PROBE_START_LINE_227 = 227;
		int v_result_383_line_227 = result;
		int tag_1_expr108_line_227 = 31 * v_result_383_line_227;
		boolean f_empty_364_line_227 = empty;
		int tag_1_expr110_line_227 = f_empty_364_line_227 ? 1 : 0;
		int tag_1_expr109_line_227 = (tag_1_expr110_line_227);
		int tag_1_expr107_line_227 = tag_1_expr108_line_227 + tag_1_expr109_line_227;
		int PROBE_END_LINE_227 = 227;
		result = tag_1_expr107_line_227;
        int PROBE_START_LINE_228 = 228;
		int v_result_383_line_228 = result;
		int PROBE_END_LINE_228 = 228;
		return v_result_383_line_228;
    }

    public String toString() {
        return tagName;
    }

    // internal static initialisers:

    static {
        // prepped from http://www.w3.org/TR/REC-html40/sgml/dtd.html#inline
        // tags are set here in uppercase for legibility, but internally held as lowercase.
        // TODO[must]: incorporate html 5 as appropriate

        int PROBE_START_LINE_243 = 243;
		org.jsoup.parser.Tag tag_1_expr113_line_243 = createBlock("HTML");
		int PROBE_END_LINE_243 = 243;
		// document
        tag_1_expr113_line_243.setAncestor(new String[0]); // specific includes not impl
        int PROBE_START_LINE_244 = 244;
		org.jsoup.parser.Tag tag_1_expr116_line_244 = createBlock("HEAD");
		org.jsoup.parser.Tag tag_1_expr115_line_244 = tag_1_expr116_line_244.setParent("HTML");
		int PROBE_END_LINE_244 = 244;
		tag_1_expr115_line_244.setLimitChildren();
        int PROBE_START_LINE_245 = 245;
		org.jsoup.parser.Tag tag_1_expr118_line_245 = createBlock("BODY");
		int PROBE_END_LINE_245 = 245;
		tag_1_expr118_line_245.setAncestor("HTML"); // specific includes not impl
        int PROBE_START_LINE_246 = 246;
		org.jsoup.parser.Tag tag_1_expr120_line_246 = createBlock("FRAMESET");
		int PROBE_END_LINE_246 = 246;
		tag_1_expr120_line_246.setAncestor("HTML");

        int PROBE_START_LINE_250 = 250;
		org.jsoup.parser.Tag tag_1_expr123_line_250 = createBlock("SCRIPT");
		org.jsoup.parser.Tag tag_1_expr122_line_250 = tag_1_expr123_line_250.setAncestor("HEAD", "BODY");
		int PROBE_END_LINE_250 = 250;
		// head
        // all ancestors set to (head, body): so implicitly create head, but allow in body
        tag_1_expr122_line_250.setContainDataOnly();
        int PROBE_START_LINE_251 = 251;
		org.jsoup.parser.Tag tag_1_expr125_line_251 = createBlock("NOSCRIPT");
		int PROBE_END_LINE_251 = 251;
		tag_1_expr125_line_251.setAncestor("HEAD", "BODY");
        int PROBE_START_LINE_252 = 252;
		org.jsoup.parser.Tag tag_1_expr128_line_252 = createBlock("STYLE");
		org.jsoup.parser.Tag tag_1_expr127_line_252 = tag_1_expr128_line_252.setAncestor("HEAD", "BODY");
		int PROBE_END_LINE_252 = 252;
		tag_1_expr127_line_252.setContainDataOnly();
        int PROBE_START_LINE_253 = 253;
		org.jsoup.parser.Tag tag_1_expr131_line_253 = createBlock("META");
		org.jsoup.parser.Tag tag_1_expr130_line_253 = tag_1_expr131_line_253.setAncestor("HEAD", "BODY");
		int PROBE_END_LINE_253 = 253;
		tag_1_expr130_line_253.setEmpty();
        int PROBE_START_LINE_254 = 254;
		org.jsoup.parser.Tag tag_1_expr134_line_254 = createBlock("LINK");
		org.jsoup.parser.Tag tag_1_expr133_line_254 = tag_1_expr134_line_254.setAncestor("HEAD", "BODY");
		int PROBE_END_LINE_254 = 254;
		tag_1_expr133_line_254.setEmpty(); // only within head
        int PROBE_START_LINE_255 = 255;
		org.jsoup.parser.Tag tag_1_expr136_line_255 = createInline("OBJECT");
		int PROBE_END_LINE_255 = 255;
		tag_1_expr136_line_255.setAncestor("HEAD", "BODY"); // flow (block/inline) or param
        int PROBE_START_LINE_256 = 256;
		org.jsoup.parser.Tag tag_1_expr139_line_256 = createBlock("TITLE");
		org.jsoup.parser.Tag tag_1_expr138_line_256 = tag_1_expr139_line_256.setAncestor("HEAD", "BODY");
		int PROBE_END_LINE_256 = 256;
		tag_1_expr138_line_256.setContainDataOnly();
        int PROBE_START_LINE_257 = 257;
		org.jsoup.parser.Tag tag_1_expr142_line_257 = createInline("BASE");
		org.jsoup.parser.Tag tag_1_expr141_line_257 = tag_1_expr142_line_257.setAncestor("HEAD", "BODY");
		int PROBE_END_LINE_257 = 257;
		tag_1_expr141_line_257.setEmpty();

        int PROBE_START_LINE_259 = 259;
		org.jsoup.parser.Tag tag_1_expr145_line_259 = createBlock("FRAME");
		org.jsoup.parser.Tag tag_1_expr144_line_259 = tag_1_expr145_line_259.setParent("FRAMESET");
		int PROBE_END_LINE_259 = 259;
		tag_1_expr144_line_259.setEmpty();
        int PROBE_START_LINE_260 = 260;
		org.jsoup.parser.Tag tag_1_expr148_line_260 = createBlock("NOFRAMES");
		org.jsoup.parser.Tag tag_1_expr147_line_260 = tag_1_expr148_line_260.setParent("FRAMESET");
		int PROBE_END_LINE_260 = 260;
		tag_1_expr147_line_260.setContainDataOnly();

        // html5 sections
        createBlock("SECTION");
        createBlock("NAV");
        createBlock("ASIDE");
        int PROBE_START_LINE_266 = 266;
		org.jsoup.parser.Tag tag_1_expr153_line_266 = createBlock("HGROUP");
		int PROBE_END_LINE_266 = 266;
		tag_1_expr153_line_266.setLimitChildren(); // limited to h1 - h6
        int PROBE_START_LINE_267 = 267;
		org.jsoup.parser.Tag tag_1_expr155_line_267 = createBlock("HEADER");
		int PROBE_END_LINE_267 = 267;
		tag_1_expr155_line_267.setExcludes("HEADER", "FOOTER");
        int PROBE_START_LINE_268 = 268;
		org.jsoup.parser.Tag tag_1_expr157_line_268 = createBlock("FOOTER");
		int PROBE_END_LINE_268 = 268;
		tag_1_expr157_line_268.setExcludes("HEADER", "FOOTER");

        // fontstyle
        createInline("FONT");
        createInline("TT");
        createInline("I");
        createInline("B");
        createInline("BIG");
        createInline("SMALL");

        // phrase
        createInline("EM");
        createInline("STRONG");
        int PROBE_START_LINE_281 = 281;
		org.jsoup.parser.Tag tag_1_expr167_line_281 = createInline("DFN");
		int PROBE_END_LINE_281 = 281;
		tag_1_expr167_line_281.setOptionalClosing();
        createInline("CODE");
        createInline("SAMP");
        createInline("KBD");
        createInline("VAR");
        createInline("CITE");
        createInline("ABBR");
        int PROBE_START_LINE_288 = 288;
		org.jsoup.parser.Tag tag_1_expr175_line_288 = createInline("TIME");
		int PROBE_END_LINE_288 = 288;
		tag_1_expr175_line_288.setOptionalClosing();
        createInline("ACRONYM");
        createInline("MARK");
        
        // ruby
        createInline("RUBY");
        int PROBE_START_LINE_294 = 294;
		org.jsoup.parser.Tag tag_1_expr181_line_294 = createInline("RT");
		org.jsoup.parser.Tag tag_1_expr180_line_294 = tag_1_expr181_line_294.setParent("RUBY");
		int PROBE_END_LINE_294 = 294;
		tag_1_expr180_line_294.setExcludes("RT", "RP");
        int PROBE_START_LINE_295 = 295;
		org.jsoup.parser.Tag tag_1_expr184_line_295 = createInline("RP");
		org.jsoup.parser.Tag tag_1_expr183_line_295 = tag_1_expr184_line_295.setParent("RUBY");
		int PROBE_END_LINE_295 = 295;
		tag_1_expr183_line_295.setExcludes("RT", "RP");

        int PROBE_START_LINE_298 = 298;
		org.jsoup.parser.Tag tag_1_expr186_line_298 = createInline("A");
		int PROBE_END_LINE_298 = 298;
		// special
        tag_1_expr186_line_298.setOptionalClosing(); // cannot contain self
        int PROBE_START_LINE_299 = 299;
		org.jsoup.parser.Tag tag_1_expr189_line_299 = createInline("IMG");
		org.jsoup.parser.Tag tag_1_expr188_line_299 = tag_1_expr189_line_299.setEmpty();
		int PROBE_END_LINE_299 = 299;
		tag_1_expr188_line_299.setAncestor("BODY", "NOSCRIPT"); // noscript so an image can be in html->head->noscript
        int PROBE_START_LINE_300 = 300;
		org.jsoup.parser.Tag tag_1_expr191_line_300 = createInline("BR");
		int PROBE_END_LINE_300 = 300;
		tag_1_expr191_line_300.setEmpty();
        int PROBE_START_LINE_301 = 301;
		org.jsoup.parser.Tag tag_1_expr193_line_301 = createInline("WBR");
		int PROBE_END_LINE_301 = 301;
		tag_1_expr193_line_301.setEmpty();
        createInline("MAP"); // map is defined as inline, but can hold block (what?) or area. Seldom used so NBD.
        createInline("Q");
        createInline("SUB");
        createInline("SUP");
        createInline("BDO");
        int PROBE_START_LINE_307 = 307;
		org.jsoup.parser.Tag tag_1_expr200_line_307 = createInline("IFRAME");
		int PROBE_END_LINE_307 = 307;
		tag_1_expr200_line_307.setOptionalClosing();
        int PROBE_START_LINE_308 = 308;
		org.jsoup.parser.Tag tag_1_expr202_line_308 = createInline("EMBED");
		int PROBE_END_LINE_308 = 308;
		tag_1_expr202_line_308.setEmpty();

        // things past this point aren't really blocks or inline. I'm using them because they can hold block or inline,
        // but per the spec, only specific elements can hold this. if this becomes a real-world parsing problem,
        // will need to have another non block/inline type, and explicit include & exclude rules. should be right though

        int PROBE_START_LINE_315 = 315;
		org.jsoup.parser.Tag tag_1_expr204_line_315 = createInline("SPAN");
		int PROBE_END_LINE_315 = 315;
		// block
        tag_1_expr204_line_315.setCanContainBlock(); // spec is phrasing only, practise is block
        int PROBE_START_LINE_316 = 316;
		org.jsoup.parser.Tag tag_1_expr206_line_316 = createBlock("P");
		int PROBE_END_LINE_316 = 316;
		tag_1_expr206_line_316.setContainInlineOnly(); // emasculated block?
        int PROBE_START_LINE_317 = 317;
		org.jsoup.parser.Tag tag_1_expr209_line_317 = createBlock("H1");
		org.jsoup.parser.Tag tag_1_expr208_line_317 = tag_1_expr209_line_317.setAncestor("BODY", "HGROUP");
		int PROBE_END_LINE_317 = 317;
		tag_1_expr208_line_317.setExcludes("HGROUP", "H1", "H2", "H3", "H4", "H5", "H6");
        int PROBE_START_LINE_318 = 318;
		org.jsoup.parser.Tag tag_1_expr212_line_318 = createBlock("H2");
		org.jsoup.parser.Tag tag_1_expr211_line_318 = tag_1_expr212_line_318.setAncestor("BODY", "HGROUP");
		int PROBE_END_LINE_318 = 318;
		tag_1_expr211_line_318.setExcludes("HGROUP", "H1", "H2", "H3", "H4", "H5", "H6");
        int PROBE_START_LINE_319 = 319;
		org.jsoup.parser.Tag tag_1_expr215_line_319 = createBlock("H3");
		org.jsoup.parser.Tag tag_1_expr214_line_319 = tag_1_expr215_line_319.setAncestor("BODY", "HGROUP");
		int PROBE_END_LINE_319 = 319;
		tag_1_expr214_line_319.setExcludes("HGROUP", "H1", "H2", "H3", "H4", "H5", "H6");
        int PROBE_START_LINE_320 = 320;
		org.jsoup.parser.Tag tag_1_expr218_line_320 = createBlock("H4");
		org.jsoup.parser.Tag tag_1_expr217_line_320 = tag_1_expr218_line_320.setAncestor("BODY", "HGROUP");
		int PROBE_END_LINE_320 = 320;
		tag_1_expr217_line_320.setExcludes("HGROUP", "H1", "H2", "H3", "H4", "H5", "H6");
        int PROBE_START_LINE_321 = 321;
		org.jsoup.parser.Tag tag_1_expr221_line_321 = createBlock("H5");
		org.jsoup.parser.Tag tag_1_expr220_line_321 = tag_1_expr221_line_321.setAncestor("BODY", "HGROUP");
		int PROBE_END_LINE_321 = 321;
		tag_1_expr220_line_321.setExcludes("HGROUP", "H1", "H2", "H3", "H4", "H5", "H6");
        int PROBE_START_LINE_322 = 322;
		org.jsoup.parser.Tag tag_1_expr224_line_322 = createBlock("H6");
		org.jsoup.parser.Tag tag_1_expr223_line_322 = tag_1_expr224_line_322.setAncestor("BODY", "HGROUP");
		int PROBE_END_LINE_322 = 322;
		tag_1_expr223_line_322.setExcludes("HGROUP", "H1", "H2", "H3", "H4", "H5", "H6");
        createBlock("UL");
        createBlock("OL");
        int PROBE_START_LINE_325 = 325;
		org.jsoup.parser.Tag tag_1_expr229_line_325 = createBlock("PRE");
		org.jsoup.parser.Tag tag_1_expr228_line_325 = tag_1_expr229_line_325.setContainInlineOnly();
		int PROBE_END_LINE_325 = 325;
		tag_1_expr228_line_325.setPreserveWhitespace();
        createBlock("DIV");
        createBlock("BLOCKQUOTE");
        int PROBE_START_LINE_328 = 328;
		org.jsoup.parser.Tag tag_1_expr233_line_328 = createBlock("HR");
		int PROBE_END_LINE_328 = 328;
		tag_1_expr233_line_328.setEmpty();
        int PROBE_START_LINE_329 = 329;
		org.jsoup.parser.Tag tag_1_expr235_line_329 = createBlock("ADDRESS");
		int PROBE_END_LINE_329 = 329;
		tag_1_expr235_line_329.setContainInlineOnly();
        createBlock("FIGURE");
        int PROBE_START_LINE_331 = 331;
		org.jsoup.parser.Tag tag_1_expr238_line_331 = createBlock("FIGCAPTION");
		int PROBE_END_LINE_331 = 331;
		tag_1_expr238_line_331.setAncestor("FIGURE");

        int PROBE_START_LINE_334 = 334;
		org.jsoup.parser.Tag tag_1_expr240_line_334 = createBlock("FORM");
		int PROBE_END_LINE_334 = 334;
		// formctrl
        tag_1_expr240_line_334.setOptionalClosing(); // can't contain self
        int PROBE_START_LINE_335 = 335;
		org.jsoup.parser.Tag tag_1_expr243_line_335 = createInline("INPUT");
		org.jsoup.parser.Tag tag_1_expr242_line_335 = tag_1_expr243_line_335.setAncestor("FORM");
		int PROBE_END_LINE_335 = 335;
		tag_1_expr242_line_335.setEmpty();
        int PROBE_START_LINE_336 = 336;
		org.jsoup.parser.Tag tag_1_expr245_line_336 = createInline("SELECT");
		int PROBE_END_LINE_336 = 336;
		tag_1_expr245_line_336.setAncestor("FORM"); // just contain optgroup or option
        int PROBE_START_LINE_337 = 337;
		org.jsoup.parser.Tag tag_1_expr248_line_337 = createInline("TEXTAREA");
		org.jsoup.parser.Tag tag_1_expr247_line_337 = tag_1_expr248_line_337.setAncestor("FORM");
		int PROBE_END_LINE_337 = 337;
		tag_1_expr247_line_337.setContainDataOnly();
        int PROBE_START_LINE_338 = 338;
		org.jsoup.parser.Tag tag_1_expr251_line_338 = createInline("LABEL");
		org.jsoup.parser.Tag tag_1_expr250_line_338 = tag_1_expr251_line_338.setAncestor("FORM");
		int PROBE_END_LINE_338 = 338;
		tag_1_expr250_line_338.setOptionalClosing(); // not self
        int PROBE_START_LINE_339 = 339;
		org.jsoup.parser.Tag tag_1_expr253_line_339 = createInline("BUTTON");
		int PROBE_END_LINE_339 = 339;
		tag_1_expr253_line_339.setAncestor("FORM"); // bunch of excludes not defined
        int PROBE_START_LINE_340 = 340;
		org.jsoup.parser.Tag tag_1_expr255_line_340 = createInline("OPTGROUP");
		int PROBE_END_LINE_340 = 340;
		tag_1_expr255_line_340.setParent("SELECT"); //  only contain option
        int PROBE_START_LINE_341 = 341;
		org.jsoup.parser.Tag tag_1_expr258_line_341 = createInline("OPTION");
		org.jsoup.parser.Tag tag_1_expr257_line_341 = tag_1_expr258_line_341.setParent("SELECT", "OPTGROUP",
				"DATALIST");
		int PROBE_END_LINE_341 = 341;
		tag_1_expr257_line_341.setOptionalClosing();
        int PROBE_START_LINE_342 = 342;
		org.jsoup.parser.Tag tag_1_expr260_line_342 = createBlock("FIELDSET");
		int PROBE_END_LINE_342 = 342;
		tag_1_expr260_line_342.setAncestor("FORM");
        int PROBE_START_LINE_343 = 343;
		org.jsoup.parser.Tag tag_1_expr262_line_343 = createInline("LEGEND");
		int PROBE_END_LINE_343 = 343;
		tag_1_expr262_line_343.setAncestor("FIELDSET");
        
        // html5 form ctrl, not specced to have to be in forms
        createInline("DATALIST");
        int PROBE_START_LINE_347 = 347;
		org.jsoup.parser.Tag tag_1_expr265_line_347 = createInline("KEYGEN");
		int PROBE_END_LINE_347 = 347;
		tag_1_expr265_line_347.setEmpty();
        createInline("OUTPUT");
        int PROBE_START_LINE_349 = 349;
		org.jsoup.parser.Tag tag_1_expr268_line_349 = createInline("PROGRESS");
		int PROBE_END_LINE_349 = 349;
		tag_1_expr268_line_349.setOptionalClosing();
        int PROBE_START_LINE_350 = 350;
		org.jsoup.parser.Tag tag_1_expr270_line_350 = createInline("METER");
		int PROBE_END_LINE_350 = 350;
		tag_1_expr270_line_350.setOptionalClosing();

        int PROBE_START_LINE_353 = 353;
		org.jsoup.parser.Tag tag_1_expr273_line_353 = createInline("AREA");
		org.jsoup.parser.Tag tag_1_expr272_line_353 = tag_1_expr273_line_353.setAncestor("MAP");
		int PROBE_END_LINE_353 = 353;
		// other
        tag_1_expr272_line_353.setEmpty(); // not an inline per-se
        int PROBE_START_LINE_354 = 354;
		org.jsoup.parser.Tag tag_1_expr276_line_354 = createInline("PARAM");
		org.jsoup.parser.Tag tag_1_expr275_line_354 = tag_1_expr276_line_354.setParent("OBJECT");
		int PROBE_END_LINE_354 = 354;
		tag_1_expr275_line_354.setEmpty();
        createBlock("INS"); // only within body
        createBlock("DEL"); // only within body

        int PROBE_START_LINE_360 = 360;
		org.jsoup.parser.Tag tag_1_expr280_line_360 = createBlock("DL");
		int PROBE_END_LINE_360 = 360;
		// definition lists. per spec, dt and dd are inline and must directly descend from dl. However in practise
        // these are all used as blocks and dl need only be an ancestor
        tag_1_expr280_line_360.setOptionalClosing(); // can't nest
        int PROBE_START_LINE_361 = 361;
		org.jsoup.parser.Tag tag_1_expr284_line_361 = createBlock("DT");
		org.jsoup.parser.Tag tag_1_expr283_line_361 = tag_1_expr284_line_361.setAncestor("DL");
		org.jsoup.parser.Tag tag_1_expr282_line_361 = tag_1_expr283_line_361.setExcludes("DL", "DD");
		int PROBE_END_LINE_361 = 361;
		tag_1_expr282_line_361.setOptionalClosing(); // only within DL.
        int PROBE_START_LINE_362 = 362;
		org.jsoup.parser.Tag tag_1_expr288_line_362 = createBlock("DD");
		org.jsoup.parser.Tag tag_1_expr287_line_362 = tag_1_expr288_line_362.setAncestor("DL");
		org.jsoup.parser.Tag tag_1_expr286_line_362 = tag_1_expr287_line_362.setExcludes("DL", "DT");
		int PROBE_END_LINE_362 = 362;
		tag_1_expr286_line_362.setOptionalClosing(); // only within DL.

        int PROBE_START_LINE_364 = 364;
		org.jsoup.parser.Tag tag_1_expr291_line_364 = createBlock("LI");
		org.jsoup.parser.Tag tag_1_expr290_line_364 = tag_1_expr291_line_364.setAncestor("UL", "OL");
		int PROBE_END_LINE_364 = 364;
		tag_1_expr290_line_364.setOptionalClosing(); // only within OL or UL.

        int PROBE_START_LINE_367 = 367;
		org.jsoup.parser.Tag tag_1_expr294_line_367 = createBlock("TABLE");
		org.jsoup.parser.Tag tag_1_expr293_line_367 = tag_1_expr294_line_367.setOptionalClosing();
		int PROBE_END_LINE_367 = 367;
		// tables
        tag_1_expr293_line_367.setIgnoreEnd("BODY", "CAPTION", "COL", "COLGROUP", "HTML", "TBODY", "TD", "TFOO", "TH", "THEAD", "TR"); // specific list of only includes (tr, td, thead etc) not implemented
        int PROBE_START_LINE_368 = 368;
		org.jsoup.parser.Tag tag_1_expr299_line_368 = createBlock("CAPTION");
		org.jsoup.parser.Tag tag_1_expr298_line_368 = tag_1_expr299_line_368.setParent("TABLE");
		org.jsoup.parser.Tag tag_1_expr297_line_368 = tag_1_expr298_line_368.setExcludes("THEAD", "TFOOT", "TBODY",
				"COLGROUP", "COL", "TR", "TH", "TD");
		org.jsoup.parser.Tag tag_1_expr296_line_368 = tag_1_expr297_line_368.setOptionalClosing();
		int PROBE_END_LINE_368 = 368;
		tag_1_expr296_line_368.setIgnoreEnd("BODY", "COL", "COLGROUP", "HTML", "TBODY", "TD", "TFOOT", "TH", "THEAD", "TR");
        int PROBE_START_LINE_369 = 369;
		org.jsoup.parser.Tag tag_1_expr304_line_369 = createBlock("THEAD");
		org.jsoup.parser.Tag tag_1_expr303_line_369 = tag_1_expr304_line_369.setParent("TABLE");
		org.jsoup.parser.Tag tag_1_expr302_line_369 = tag_1_expr303_line_369.setLimitChildren();
		org.jsoup.parser.Tag tag_1_expr301_line_369 = tag_1_expr302_line_369.setOptionalClosing();
		int PROBE_END_LINE_369 = 369;
		tag_1_expr301_line_369.setIgnoreEnd("BODY", "CAPTION", "COL", "COLGROUP", "HTML", "TD", "TH", "TR"); // just TR
        int PROBE_START_LINE_370 = 370;
		org.jsoup.parser.Tag tag_1_expr309_line_370 = createBlock("TFOOT");
		org.jsoup.parser.Tag tag_1_expr308_line_370 = tag_1_expr309_line_370.setParent("TABLE");
		org.jsoup.parser.Tag tag_1_expr307_line_370 = tag_1_expr308_line_370.setLimitChildren();
		org.jsoup.parser.Tag tag_1_expr306_line_370 = tag_1_expr307_line_370.setOptionalClosing();
		int PROBE_END_LINE_370 = 370;
		tag_1_expr306_line_370.setIgnoreEnd("BODY", "CAPTION", "COL", "COLGROUP", "HTML", "TD", "TH", "TR"); // just TR
        int PROBE_START_LINE_371 = 371;
		org.jsoup.parser.Tag tag_1_expr314_line_371 = createBlock("TBODY");
		org.jsoup.parser.Tag tag_1_expr313_line_371 = tag_1_expr314_line_371.setParent("TABLE");
		org.jsoup.parser.Tag tag_1_expr312_line_371 = tag_1_expr313_line_371.setLimitChildren();
		org.jsoup.parser.Tag tag_1_expr311_line_371 = tag_1_expr312_line_371.setOptionalClosing();
		int PROBE_END_LINE_371 = 371;
		tag_1_expr311_line_371.setIgnoreEnd("BODY", "CAPTION", "COL", "COLGROUP", "HTML", "TD", "TH", "TR"); // optional / implicit open too. just TR
        int PROBE_START_LINE_372 = 372;
		org.jsoup.parser.Tag tag_1_expr319_line_372 = createBlock("COLGROUP");
		org.jsoup.parser.Tag tag_1_expr318_line_372 = tag_1_expr319_line_372.setParent("TABLE");
		org.jsoup.parser.Tag tag_1_expr317_line_372 = tag_1_expr318_line_372.setLimitChildren();
		org.jsoup.parser.Tag tag_1_expr316_line_372 = tag_1_expr317_line_372.setOptionalClosing();
		int PROBE_END_LINE_372 = 372;
		tag_1_expr316_line_372.setIgnoreEnd("COL"); // just COL
        int PROBE_START_LINE_373 = 373;
		org.jsoup.parser.Tag tag_1_expr322_line_373 = createBlock("COL");
		org.jsoup.parser.Tag tag_1_expr321_line_373 = tag_1_expr322_line_373.setParent("COLGROUP");
		int PROBE_END_LINE_373 = 373;
		tag_1_expr321_line_373.setEmpty();
        int PROBE_START_LINE_374 = 374;
		org.jsoup.parser.Tag tag_1_expr327_line_374 = createBlock("TR");
		org.jsoup.parser.Tag tag_1_expr326_line_374 = tag_1_expr327_line_374.setParent("TBODY", "THEAD", "TFOOT",
				"TABLE");
		org.jsoup.parser.Tag tag_1_expr325_line_374 = tag_1_expr326_line_374.setLimitChildren();
		org.jsoup.parser.Tag tag_1_expr324_line_374 = tag_1_expr325_line_374.setOptionalClosing();
		int PROBE_END_LINE_374 = 374;
		tag_1_expr324_line_374.setIgnoreEnd("BODY", "CAPTION", "COL", "COLGROUP", "HTML", "TD", "TH"); // just TH, TD
        int PROBE_START_LINE_375 = 375;
		org.jsoup.parser.Tag tag_1_expr332_line_375 = createBlock("TH");
		org.jsoup.parser.Tag tag_1_expr331_line_375 = tag_1_expr332_line_375.setParent("TR");
		org.jsoup.parser.Tag tag_1_expr330_line_375 = tag_1_expr331_line_375.setExcludes("THEAD", "TFOOT", "TBODY",
				"COLGROUP", "COL", "TR", "TH", "TD");
		org.jsoup.parser.Tag tag_1_expr329_line_375 = tag_1_expr330_line_375.setOptionalClosing();
		int PROBE_END_LINE_375 = 375;
		tag_1_expr329_line_375.setIgnoreEnd("BODY", "CAPTION", "COL", "COLGROUP", "HTML");
        int PROBE_START_LINE_376 = 376;
		org.jsoup.parser.Tag tag_1_expr337_line_376 = createBlock("TD");
		org.jsoup.parser.Tag tag_1_expr336_line_376 = tag_1_expr337_line_376.setParent("TR");
		org.jsoup.parser.Tag tag_1_expr335_line_376 = tag_1_expr336_line_376.setExcludes("THEAD", "TFOOT", "TBODY",
				"COLGROUP", "COL", "TR", "TH", "TD");
		org.jsoup.parser.Tag tag_1_expr334_line_376 = tag_1_expr335_line_376.setOptionalClosing();
		int PROBE_END_LINE_376 = 376;
		tag_1_expr334_line_376.setIgnoreEnd("BODY", "CAPTION", "COL", "COLGROUP", "HTML");
        
        int PROBE_START_LINE_379 = 379;
		org.jsoup.parser.Tag tag_1_expr339_line_379 = createBlock("VIDEO");
		int PROBE_END_LINE_379 = 379;
		// html5 media
        tag_1_expr339_line_379.setExcludes("VIDEO", "AUDIO");
        int PROBE_START_LINE_380 = 380;
		org.jsoup.parser.Tag tag_1_expr341_line_380 = createBlock("AUDIO");
		int PROBE_END_LINE_380 = 380;
		tag_1_expr341_line_380.setExcludes("VIDEO", "AUDIO");
        int PROBE_START_LINE_381 = 381;
		org.jsoup.parser.Tag tag_1_expr344_line_381 = createInline("SOURCE");
		org.jsoup.parser.Tag tag_1_expr343_line_381 = tag_1_expr344_line_381.setParent("VIDEO", "AUDIO");
		int PROBE_END_LINE_381 = 381;
		tag_1_expr343_line_381.setEmpty();
        int PROBE_START_LINE_382 = 382;
		org.jsoup.parser.Tag tag_1_expr347_line_382 = createInline("TRACK");
		org.jsoup.parser.Tag tag_1_expr346_line_382 = tag_1_expr347_line_382.setParent("VIDEO", "AUDIO");
		int PROBE_END_LINE_382 = 382;
		tag_1_expr346_line_382.setEmpty();
        createBlock("CANVAS");
        
        // html5 interactive
        createBlock("DETAILS");
        int PROBE_START_LINE_387 = 387;
		org.jsoup.parser.Tag tag_1_expr351_line_387 = createInline("SUMMARY");
		int PROBE_END_LINE_387 = 387;
		tag_1_expr351_line_387.setParent("DETAILS");
        int PROBE_START_LINE_388 = 388;
		org.jsoup.parser.Tag tag_1_expr353_line_388 = createInline("COMMAND");
		int PROBE_END_LINE_388 = 388;
		tag_1_expr353_line_388.setEmpty();
        createBlock("MENU");
        int PROBE_START_LINE_390 = 390;
		org.jsoup.parser.Tag tag_1_expr356_line_390 = createInline("DEVICE");
		int PROBE_END_LINE_390 = 390;
		tag_1_expr356_line_390.setEmpty();
    }

    private static Tag createBlock(String tagName) {
        int PROBE_START_LINE_394 = 394;
		String p_tag_name_384_line_394 = tagName;
		org.jsoup.parser.Tag tag_1_expr357_line_394 = register(new Tag(p_tag_name_384_line_394));
		int PROBE_END_LINE_394 = 394;
		return tag_1_expr357_line_394;
    }

    private static Tag createInline(String tagName) {
        int PROBE_START_LINE_398 = 398;
		String p_tag_name_385_line_398 = tagName;
		int PROBE_END_LINE_398 = 398;
		Tag inline = new Tag(p_tag_name_385_line_398);
        inline.isBlock = false;
        inline.canContainBlock = false;
        int PROBE_START_LINE_401 = 401;
		org.jsoup.parser.Tag v_inline_386_line_401 = inline;
		org.jsoup.parser.Tag tag_1_expr362_line_401 = register(v_inline_386_line_401);
		int PROBE_END_LINE_401 = 401;
		return tag_1_expr362_line_401;
    }

    private static Tag register(Tag tag) {
        int PROBE_START_LINE_405 = 405;
		org.jsoup.parser.Tag p_tag_387_line_405 = tag;
		org.jsoup.parser.Tag f_default_ancestor_358_line_405 = defaultAncestor;
		String q_tag_name_19_line_405 = f_default_ancestor_358_line_405.tagName;
		int PROBE_END_LINE_405 = 405;
		p_tag_387_line_405.setAncestor(q_tag_name_19_line_405);
        int PROBE_START_LINE_406 = 406;
		org.jsoup.parser.Tag p_tag_387_line_406 = tag;
		int PROBE_END_LINE_406 = 406;
		p_tag_387_line_406.setKnownTag();
        int PROBE_START_LINE_407 = 409;
		Map<String, org.jsoup.parser.Tag> f_tags_357_line_407 = tags;
		int PROBE_END_LINE_407 = 409;
		synchronized (f_tags_357_line_407) {
            int PROBE_START_LINE_408 = 408;
			Map<String, org.jsoup.parser.Tag> f_tags_357_line_408 = tags;
			org.jsoup.parser.Tag p_tag_387_line_408 = tag;
			String q_tag_name_19_line_408 = p_tag_387_line_408.tagName;
			org.jsoup.parser.Tag p_tag_387_line_408_v1 = tag;
			int PROBE_END_LINE_408 = 408;
			f_tags_357_line_408.put(q_tag_name_19_line_408, p_tag_387_line_408_v1);
        }
        int PROBE_START_LINE_410 = 410;
		org.jsoup.parser.Tag p_tag_387_line_410 = tag;
		int PROBE_END_LINE_410 = 410;
		return p_tag_387_line_410;
    }

    private Tag setCanContainBlock() {
        canContainBlock = true;
        return this;
    }

    private Tag setContainInlineOnly() {
        canContainBlock = false;
        canContainInline = true;
        return this;
    }

    private Tag setContainDataOnly() {
        canContainBlock = false;
        canContainInline = false;
        preserveWhitespace = true;
        return this;
    }

    private Tag setEmpty() {
        canContainBlock = false;
        canContainInline = false;
        empty = true;
        return this;
    }

    private Tag setOptionalClosing() {
        optionalClosing = true;
        return this;
    }

    private Tag setPreserveWhitespace() {
        preserveWhitespace = true;
        return this;
    }

    private Tag setAncestor(String... tagNames) {
        int PROBE_START_LINE_449 = 456;
		String[] p_tag_names_388_line_449 = tagNames;
		boolean tag_1_expr384_line_449 = p_tag_names_388_line_449 == null;
		boolean tag_1_expr385_line_449 = false;
		if (!tag_1_expr384_line_449) {
			String[] p_tag_names_388_line_449_v1 = tagNames;
			int q_length_20_line_449 = p_tag_names_388_line_449_v1.length;
			tag_1_expr385_line_449 = q_length_20_line_449 == 0;
		}
		boolean tag_1_expr383_line_449 = tag_1_expr384_line_449 || tag_1_expr385_line_449;
		int PROBE_END_LINE_449 = 456;
		if (tag_1_expr383_line_449) {
            int PROBE_START_LINE_450 = 450;
			List<org.jsoup.parser.Tag> tag_1_expr387_line_450 = Collections.emptyList();
			int PROBE_END_LINE_450 = 450;
			ancestors = tag_1_expr387_line_450;
        } else {
            int PROBE_START_LINE_452 = 452;
			String[] p_tag_names_388_line_452 = tagNames;
			int q_length_21_line_452 = p_tag_names_388_line_452.length;
			int PROBE_END_LINE_452 = 452;
			ancestors = new ArrayList<Tag>(q_length_21_line_452);
            int PROBE_START_LINE_453 = 455;
			String[] p_tag_names_388_line_453 = tagNames;
			int PROBE_END_LINE_453 = 455;
			for (String name : p_tag_names_388_line_453) {
                int PROBE_START_LINE_454 = 454;
				List<org.jsoup.parser.Tag> f_ancestors_375_line_454 = ancestors;
				String v_name_389_line_454 = name;
				org.jsoup.parser.Tag tag_1_expr391_line_454 = Tag.valueOf(v_name_389_line_454);
				int PROBE_END_LINE_454 = 454;
				f_ancestors_375_line_454.add(tag_1_expr391_line_454);
            }
        }
        return this;
    }
    
    private Tag setExcludes(String... tagNames) {
        int PROBE_START_LINE_461 = 468;
		String[] p_tag_names_390_line_461 = tagNames;
		boolean tag_1_expr394_line_461 = p_tag_names_390_line_461 == null;
		boolean tag_1_expr395_line_461 = false;
		if (!tag_1_expr394_line_461) {
			String[] p_tag_names_390_line_461_v1 = tagNames;
			int q_length_21_line_461 = p_tag_names_390_line_461_v1.length;
			tag_1_expr395_line_461 = q_length_21_line_461 == 0;
		}
		boolean tag_1_expr393_line_461 = tag_1_expr394_line_461 || tag_1_expr395_line_461;
		int PROBE_END_LINE_461 = 468;
		if (tag_1_expr393_line_461) {
            int PROBE_START_LINE_462 = 462;
			List<org.jsoup.parser.Tag> tag_1_expr397_line_462 = Collections.emptyList();
			int PROBE_END_LINE_462 = 462;
			excludes = tag_1_expr397_line_462;
        } else {
            int PROBE_START_LINE_464 = 464;
			String[] p_tag_names_390_line_464 = tagNames;
			int q_length_22_line_464 = p_tag_names_390_line_464.length;
			int PROBE_END_LINE_464 = 464;
			excludes = new ArrayList<Tag>(q_length_22_line_464);
            int PROBE_START_LINE_465 = 467;
			String[] p_tag_names_390_line_465 = tagNames;
			int PROBE_END_LINE_465 = 467;
			for (String name : p_tag_names_390_line_465) {
                int PROBE_START_LINE_466 = 466;
				List<org.jsoup.parser.Tag> f_excludes_367_line_466 = excludes;
				String v_name_391_line_466 = name;
				org.jsoup.parser.Tag tag_1_expr401_line_466 = Tag.valueOf(v_name_391_line_466);
				int PROBE_END_LINE_466 = 466;
				f_excludes_367_line_466.add(tag_1_expr401_line_466);
            }
        }
        return this;
    }

    private Tag setIgnoreEnd(String... tagNames) {
        int PROBE_START_LINE_473 = 480;
		String[] p_tag_names_392_line_473 = tagNames;
		boolean tag_1_expr404_line_473 = p_tag_names_392_line_473 == null;
		boolean tag_1_expr405_line_473 = false;
		if (!tag_1_expr404_line_473) {
			String[] p_tag_names_392_line_473_v1 = tagNames;
			int q_length_22_line_473 = p_tag_names_392_line_473_v1.length;
			tag_1_expr405_line_473 = q_length_22_line_473 == 0;
		}
		boolean tag_1_expr403_line_473 = tag_1_expr404_line_473 || tag_1_expr405_line_473;
		int PROBE_END_LINE_473 = 480;
		if (tag_1_expr403_line_473) {
            ignoreEndTags = Collections.emptyList();
        } else {
            int PROBE_START_LINE_476 = 476;
			String[] p_tag_names_392_line_476 = tagNames;
			int q_length_23_line_476 = p_tag_names_392_line_476.length;
			int PROBE_END_LINE_476 = 476;
			ignoreEndTags = new ArrayList<Tag>(q_length_23_line_476);
            int PROBE_START_LINE_477 = 479;
			String[] p_tag_names_392_line_477 = tagNames;
			int PROBE_END_LINE_477 = 479;
			for (String name : p_tag_names_392_line_477) {
                int PROBE_START_LINE_478 = 478;
				List<org.jsoup.parser.Tag> f_ignore_end_tags_368_line_478 = ignoreEndTags;
				String v_name_393_line_478 = name;
				org.jsoup.parser.Tag tag_1_expr409_line_478 = Tag.valueOf(v_name_393_line_478);
				int PROBE_END_LINE_478 = 478;
				f_ignore_end_tags_368_line_478.add(tag_1_expr409_line_478);
            }
        }
        return this;
    }

    private Tag setParent(String... tagNames) {
        directDescendant = true;
        int PROBE_START_LINE_486 = 486;
		String[] p_tag_names_394_line_486 = tagNames;
		int PROBE_END_LINE_486 = 486;
		setAncestor(p_tag_names_394_line_486);
        return this;
    }
    
    private Tag setLimitChildren() {
        limitChildren = true;
        return this;
    }
    
    Tag setSelfClosing() {
        selfClosing = true;
        return this;
    }
    
    private Tag setKnownTag() {
        knownTag = true;
        return this;
    }
}
