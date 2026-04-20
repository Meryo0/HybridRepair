package org.jsoup.parser;

import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;

import static org.jsoup.internal.Normalizer.lowerCase;

/**
 * Parse tokens for the Tokeniser.
 */
abstract class Token {
    TokenType type;

    private Token() {
    }
    
    String tokenType() {
        return this.getClass().getSimpleName();
    }

    /**
     * Reset the data represent by this token, for reuse. Prevents the need to create transfer objects for every
     * piece of data, which immediately get GCed.
     */
    abstract Token reset();

    static void reset(StringBuilder sb) {
        int PROBE_START_LINE_28 = 30;
		StringBuilder p_sb_901_line_28 = sb;
		boolean token_1_expr1_line_28 = p_sb_901_line_28 != null;
		int PROBE_END_LINE_28 = 30;
		if (token_1_expr1_line_28) {
            int PROBE_START_LINE_29 = 29;
			StringBuilder p_sb_901_line_29 = sb;
			StringBuilder p_sb_901_line_29_v1 = sb;
			int token_1_expr3_line_29 = p_sb_901_line_29_v1.length();
			int PROBE_END_LINE_29 = 29;
			p_sb_901_line_29.delete(0, token_1_expr3_line_29);
        }
    }

    static final class Doctype extends Token {
        final StringBuilder name = new StringBuilder();
        String pubSysKey = null;
        final StringBuilder publicIdentifier = new StringBuilder();
        final StringBuilder systemIdentifier = new StringBuilder();
        boolean forceQuirks = false;

        Doctype() {
            int PROBE_START_LINE_41 = 41;
			org.jsoup.parser.Token.TokenType q_doctype_46_line_41 = TokenType.Doctype;
			int PROBE_END_LINE_41 = 41;
			type = q_doctype_46_line_41;
        }

        @Override
        Token reset() {
            int PROBE_START_LINE_46 = 46;
			StringBuilder f_name_902_line_46 = name;
			int PROBE_END_LINE_46 = 46;
			reset(f_name_902_line_46);
            pubSysKey = null;
            int PROBE_START_LINE_48 = 48;
			StringBuilder f_public_identifier_904_line_48 = publicIdentifier;
			int PROBE_END_LINE_48 = 48;
			reset(f_public_identifier_904_line_48);
            int PROBE_START_LINE_49 = 49;
			StringBuilder f_system_identifier_905_line_49 = systemIdentifier;
			int PROBE_END_LINE_49 = 49;
			reset(f_system_identifier_905_line_49);
            forceQuirks = false;
            return this;
        }

        String getName() {
            int PROBE_START_LINE_55 = 55;
			StringBuilder f_name_902_line_55 = name;
			String token_1_expr14_line_55 = f_name_902_line_55.toString();
			int PROBE_END_LINE_55 = 55;
			return token_1_expr14_line_55;
        }

        String getPubSysKey() {
            int PROBE_START_LINE_59 = 59;
			String f_pub_sys_key_903_line_59 = pubSysKey;
			int PROBE_END_LINE_59 = 59;
			return f_pub_sys_key_903_line_59;
        }

        String getPublicIdentifier() {
            int PROBE_START_LINE_63 = 63;
			StringBuilder f_public_identifier_904_line_63 = publicIdentifier;
			String token_1_expr15_line_63 = f_public_identifier_904_line_63.toString();
			int PROBE_END_LINE_63 = 63;
			return token_1_expr15_line_63;
        }

        public String getSystemIdentifier() {
            int PROBE_START_LINE_67 = 67;
			StringBuilder f_system_identifier_905_line_67 = systemIdentifier;
			String token_1_expr16_line_67 = f_system_identifier_905_line_67.toString();
			int PROBE_END_LINE_67 = 67;
			return token_1_expr16_line_67;
        }

        public boolean isForceQuirks() {
            int PROBE_START_LINE_71 = 71;
			boolean f_force_quirks_906_line_71 = forceQuirks;
			int PROBE_END_LINE_71 = 71;
			return f_force_quirks_906_line_71;
        }
    }

    static abstract class Tag extends Token {
        protected String tagName;
        protected String normalName; // lc version of tag name, for case insensitive tree build
        private String pendingAttributeName; // attribute names are generally caught in one hop, not accumulated
        private StringBuilder pendingAttributeValue = new StringBuilder(); // but values are accumulated, from e.g. & in hrefs
        private String pendingAttributeValueS; // try to get attr vals in one shot, vs Builder
        private boolean hasEmptyAttributeValue = false; // distinguish boolean attribute from empty string value
        private boolean hasPendingAttributeValue = false;
        boolean selfClosing = false;
        Attributes attributes; // start tags get attributes on construction. End tags get attributes on first new attribute (but only for parser convenience, not used).

        @Override
        Tag reset() {
            tagName = null;
            normalName = null;
            pendingAttributeName = null;
            int PROBE_START_LINE_91 = 91;
			StringBuilder f_pending_attribute_value_908_line_91 = pendingAttributeValue;
			int PROBE_END_LINE_91 = 91;
			reset(f_pending_attribute_value_908_line_91);
            pendingAttributeValueS = null;
            hasEmptyAttributeValue = false;
            hasPendingAttributeValue = false;
            selfClosing = false;
            attributes = null;
            return this;
        }

        final void newAttribute() {
            int PROBE_START_LINE_101 = 102;
			org.jsoup.nodes.Attributes f_attributes_916_line_101 = attributes;
			boolean token_1_expr28_line_101 = f_attributes_916_line_101 == null;
			int PROBE_END_LINE_101 = 102;
			if (token_1_expr28_line_101)
                attributes = new Attributes();

            int PROBE_START_LINE_104 = 117;
			String f_pending_attribute_name_914_line_104 = pendingAttributeName;
			boolean token_1_expr29_line_104 = f_pending_attribute_name_914_line_104 != null;
			int PROBE_END_LINE_104 = 117;
			if (token_1_expr29_line_104) {
                int PROBE_START_LINE_106 = 106;
				String f_pending_attribute_name_914_line_106 = pendingAttributeName;
				String token_1_expr31_line_106 = f_pending_attribute_name_914_line_106.trim();
				int PROBE_END_LINE_106 = 106;
				// the tokeniser has skipped whitespace control chars, but trimming could collapse to empty for other control codes, so verify here
                pendingAttributeName = token_1_expr31_line_106;
                int PROBE_START_LINE_107 = 116;
				String f_pending_attribute_name_914_line_107 = pendingAttributeName;
				int token_1_expr33_line_107 = f_pending_attribute_name_914_line_107.length();
				boolean token_1_expr32_line_107 = token_1_expr33_line_107 > 0;
				int PROBE_END_LINE_107 = 116;
				if (token_1_expr32_line_107) {
                    String value = null;
                    int PROBE_START_LINE_109 = 114;
					boolean f_has_pending_attribute_value_910_line_109 = hasPendingAttributeValue;
					int PROBE_END_LINE_109 = 114;
					if (f_has_pending_attribute_value_910_line_109) {
						int PROBE_START_LINE_110 = 110;
						StringBuilder f_pending_attribute_value_908_line_110 = pendingAttributeValue;
						int token_1_expr38_line_110 = f_pending_attribute_value_908_line_110.length();
						boolean token_1_expr36_line_110 = token_1_expr38_line_110 > 0;
						String token_1_expr37_line_110 = null;
						String f_pending_attribute_value_s_915_line_110 = null;
						if (token_1_expr36_line_110) {
							StringBuilder f_pending_attribute_value_908_line_110_v1 = pendingAttributeValue;
							token_1_expr37_line_110 = f_pending_attribute_value_908_line_110_v1.toString();
						} else {
							f_pending_attribute_value_s_915_line_110 = pendingAttributeValueS;
						}
						String token_1_expr35_line_110 = token_1_expr36_line_110
								? token_1_expr37_line_110
								: f_pending_attribute_value_s_915_line_110;
						int PROBE_END_LINE_110 = 110;
						value = token_1_expr35_line_110;
					} else if (hasEmptyAttributeValue)
                        value = "";
                    else
                        value = null;
                    int PROBE_START_LINE_115 = 115;
					org.jsoup.nodes.Attributes f_attributes_916_line_115 = attributes;
					String f_pending_attribute_name_914_line_115 = pendingAttributeName;
					String v_value_917_line_115 = value;
					int PROBE_END_LINE_115 = 115;
					f_attributes_916_line_115.put(f_pending_attribute_name_914_line_115, v_value_917_line_115);
                }
            }
            pendingAttributeName = null;
            hasEmptyAttributeValue = false;
            hasPendingAttributeValue = false;
            int PROBE_START_LINE_121 = 121;
			StringBuilder f_pending_attribute_value_908_line_121 = pendingAttributeValue;
			int PROBE_END_LINE_121 = 121;
			reset(f_pending_attribute_value_908_line_121);
            pendingAttributeValueS = null;
        }

        final void finaliseTag() {
            int PROBE_START_LINE_127 = 130;
			String f_pending_attribute_name_914_line_127 = pendingAttributeName;
			boolean token_1_expr45_line_127 = f_pending_attribute_name_914_line_127 != null;
			int PROBE_END_LINE_127 = 130;
			// finalises for emit
            if (token_1_expr45_line_127) {
                // todo: check if attribute name exists; if so, drop and error
                newAttribute();
            }
        }

        final String name() { // preserves case, for input into Tag.valueOf (which may drop case)
            int PROBE_START_LINE_134 = 134;
			String f_tag_name_912_line_134 = tagName;
			boolean token_1_expr49_line_134 = f_tag_name_912_line_134 == null;
			boolean token_1_expr50_line_134 = false;
			if (!token_1_expr49_line_134) {
				String f_tag_name_912_line_134_v1 = tagName;
				int token_1_expr51_line_134 = f_tag_name_912_line_134_v1.length();
				token_1_expr50_line_134 = token_1_expr51_line_134 == 0;
			}
			boolean token_1_expr48_line_134 = token_1_expr49_line_134 || token_1_expr50_line_134;
			int PROBE_END_LINE_134 = 134;
			Validate.isFalse(token_1_expr48_line_134);
            int PROBE_START_LINE_135 = 135;
			String f_tag_name_912_line_135 = tagName;
			int PROBE_END_LINE_135 = 135;
			return f_tag_name_912_line_135;
        }

        final String normalName() { // loses case, used in tree building for working out where in tree it should go
            int PROBE_START_LINE_139 = 139;
			String f_normal_name_913_line_139 = normalName;
			int PROBE_END_LINE_139 = 139;
			return f_normal_name_913_line_139;
        }

        final Tag name(String name) {
            tagName = name;
            normalName = lowerCase(name);
            return this;
        }

        final boolean isSelfClosing() {
            int PROBE_START_LINE_149 = 149;
			boolean f_self_closing_911_line_149 = selfClosing;
			int PROBE_END_LINE_149 = 149;
			return f_self_closing_911_line_149;
        }

        @SuppressWarnings({"TypeMayBeWeakened"})
        final Attributes getAttributes() {
            return attributes;
        }

        // these appenders are rarely hit in not null state-- caused by null chars.
        final void appendTagName(String append) {
            int PROBE_START_LINE_159 = 159;
			String f_tag_name_912_line_159 = tagName;
			boolean token_1_expr54_line_159 = f_tag_name_912_line_159 == null;
			String p_append_919_line_159 = null;
			String token_1_expr55_line_159 = null;
			if (token_1_expr54_line_159) {
				p_append_919_line_159 = append;
			} else {
				String f_tag_name_912_line_159_v1 = tagName;
				String p_append_919_line_159_v1 = append;
				token_1_expr55_line_159 = f_tag_name_912_line_159_v1.concat(p_append_919_line_159_v1);
			}
			String token_1_expr53_line_159 = token_1_expr54_line_159 ? p_append_919_line_159 : token_1_expr55_line_159;
			int PROBE_END_LINE_159 = 159;
			tagName = token_1_expr53_line_159;
            int PROBE_START_LINE_160 = 160;
			String f_tag_name_912_line_160 = tagName;
			String token_1_expr57_line_160 = lowerCase(f_tag_name_912_line_160);
			int PROBE_END_LINE_160 = 160;
			normalName = token_1_expr57_line_160;
        }

        final void appendTagName(char append) {
            appendTagName(String.valueOf(append));
        }

        final void appendAttributeName(String append) {
            int PROBE_START_LINE_168 = 168;
			String f_pending_attribute_name_914_line_168 = pendingAttributeName;
			boolean token_1_expr60_line_168 = f_pending_attribute_name_914_line_168 == null;
			String p_append_921_line_168 = null;
			String token_1_expr61_line_168 = null;
			if (token_1_expr60_line_168) {
				p_append_921_line_168 = append;
			} else {
				String f_pending_attribute_name_914_line_168_v1 = pendingAttributeName;
				String p_append_921_line_168_v1 = append;
				token_1_expr61_line_168 = f_pending_attribute_name_914_line_168_v1.concat(p_append_921_line_168_v1);
			}
			String token_1_expr59_line_168 = token_1_expr60_line_168 ? p_append_921_line_168 : token_1_expr61_line_168;
			int PROBE_END_LINE_168 = 168;
			pendingAttributeName = token_1_expr59_line_168;
        }

        final void appendAttributeName(char append) {
            appendAttributeName(String.valueOf(append));
        }

        final void appendAttributeValue(String append) {
            ensureAttributeValue();
            int PROBE_START_LINE_177 = 181;
			StringBuilder f_pending_attribute_value_908_line_177 = pendingAttributeValue;
			int token_1_expr64_line_177 = f_pending_attribute_value_908_line_177.length();
			boolean token_1_expr63_line_177 = token_1_expr64_line_177 == 0;
			int PROBE_END_LINE_177 = 181;
			if (token_1_expr63_line_177) {
                int PROBE_START_LINE_178 = 178;
				String p_append_923_line_178 = append;
				int PROBE_END_LINE_178 = 178;
				pendingAttributeValueS = p_append_923_line_178;
            } else {
                pendingAttributeValue.append(append);
            }
        }

        final void appendAttributeValue(char append) {
            ensureAttributeValue();
            pendingAttributeValue.append(append);
        }

        final void appendAttributeValue(char[] append) {
            ensureAttributeValue();
            pendingAttributeValue.append(append);
        }

        final void appendAttributeValue(int[] appendCodepoints) {
            ensureAttributeValue();
            for (int codepoint : appendCodepoints) {
                pendingAttributeValue.appendCodePoint(codepoint);
            }
        }
        
        final void setEmptyAttributeValue() {
            hasEmptyAttributeValue = true;
        }

        private void ensureAttributeValue() {
            hasPendingAttributeValue = true;
            int PROBE_START_LINE_208 = 211;
			String f_pending_attribute_value_s_915_line_208 = pendingAttributeValueS;
			boolean token_1_expr67_line_208 = f_pending_attribute_value_s_915_line_208 != null;
			int PROBE_END_LINE_208 = 211;
			// if on second hit, we'll need to move to the builder
            if (token_1_expr67_line_208) {
                pendingAttributeValue.append(pendingAttributeValueS);
                pendingAttributeValueS = null;
            }
        }
    }

    final static class StartTag extends Tag {
        StartTag() {
            super();
            attributes = new Attributes();
            int PROBE_START_LINE_219 = 219;
			org.jsoup.parser.Token.TokenType q_start_tag_47_line_219 = TokenType.StartTag;
			int PROBE_END_LINE_219 = 219;
			type = q_start_tag_47_line_219;
        }

        @Override
        Tag reset() {
            super.reset();
            attributes = new Attributes();
            // todo - would prefer these to be null, but need to check Element assertions
            return this;
        }

        StartTag nameAttr(String name, Attributes attributes) {
            this.tagName = name;
            this.attributes = attributes;
            normalName = lowerCase(tagName);
            return this;
        }

        @Override
        public String toString() {
            if (attributes != null && attributes.size() > 0)
                return "<" + name() + " " + attributes.toString() + ">";
            else
                return "<" + name() + ">";
        }
    }

    final static class EndTag extends Tag{
        EndTag() {
            super();
            int PROBE_START_LINE_249 = 249;
			org.jsoup.parser.Token.TokenType q_end_tag_48_line_249 = TokenType.EndTag;
			int PROBE_END_LINE_249 = 249;
			type = q_end_tag_48_line_249;
        }

        @Override
        public String toString() {
            return "</" + name() + ">";
        }
    }

    final static class Comment extends Token {
        final StringBuilder data = new StringBuilder();
        boolean bogus = false;

        @Override
        Token reset() {
            reset(data);
            bogus = false;
            return this;
        }

        Comment() {
            int PROBE_START_LINE_270 = 270;
			org.jsoup.parser.Token.TokenType q_comment_49_line_270 = TokenType.Comment;
			int PROBE_END_LINE_270 = 270;
			type = q_comment_49_line_270;
        }

        String getData() {
            return data.toString();
        }

        @Override
        public String toString() {
            return "<!--" + getData() + "-->";
        }
    }

    final static class Character extends Token {
        private String data;

        Character() {
            super();
            int PROBE_START_LINE_288 = 288;
			org.jsoup.parser.Token.TokenType q_character_50_line_288 = TokenType.Character;
			int PROBE_END_LINE_288 = 288;
			type = q_character_50_line_288;
        }

        @Override
        Token reset() {
            data = null;
            return this;
        }

        Character data(String data) {
            int PROBE_START_LINE_298 = 298;
			String p_data_932_line_298 = data;
			int PROBE_END_LINE_298 = 298;
			this.data = p_data_932_line_298;
            return this;
        }

        String getData() {
            int PROBE_START_LINE_303 = 303;
			String f_data_931_line_303 = data;
			int PROBE_END_LINE_303 = 303;
			return f_data_931_line_303;
        }

        @Override
        public String toString() {
            return getData();
        }
    }

    final static class EOF extends Token {
        EOF() {
            int PROBE_START_LINE_314 = 314;
			org.jsoup.parser.Token.TokenType q_eof_51_line_314 = Token.TokenType.EOF;
			int PROBE_END_LINE_314 = 314;
			type = q_eof_51_line_314;
        }

        @Override
        Token reset() {
            return this;
        }
    }

    final boolean isDoctype() {
        int PROBE_START_LINE_324 = 324;
		org.jsoup.parser.Token.TokenType f_type_907_line_324 = type;
		org.jsoup.parser.Token.TokenType q_doctype_52_line_324 = TokenType.Doctype;
		boolean token_1_expr90_line_324 = f_type_907_line_324 == q_doctype_52_line_324;
		int PROBE_END_LINE_324 = 324;
		return token_1_expr90_line_324;
    }

    final Doctype asDoctype() {
        return (Doctype) this;
    }

    final boolean isStartTag() {
        int PROBE_START_LINE_332 = 332;
		org.jsoup.parser.Token.TokenType f_type_907_line_332 = type;
		org.jsoup.parser.Token.TokenType q_start_tag_52_line_332 = TokenType.StartTag;
		boolean token_1_expr93_line_332 = f_type_907_line_332 == q_start_tag_52_line_332;
		int PROBE_END_LINE_332 = 332;
		return token_1_expr93_line_332;
    }

    final StartTag asStartTag() {
        return (StartTag) this;
    }

    final boolean isEndTag() {
        int PROBE_START_LINE_340 = 340;
		org.jsoup.parser.Token.TokenType f_type_907_line_340 = type;
		org.jsoup.parser.Token.TokenType q_end_tag_52_line_340 = TokenType.EndTag;
		boolean token_1_expr96_line_340 = f_type_907_line_340 == q_end_tag_52_line_340;
		int PROBE_END_LINE_340 = 340;
		return token_1_expr96_line_340;
    }

    final EndTag asEndTag() {
        return (EndTag) this;
    }

    final boolean isComment() {
        int PROBE_START_LINE_348 = 348;
		org.jsoup.parser.Token.TokenType f_type_907_line_348 = type;
		org.jsoup.parser.Token.TokenType q_comment_52_line_348 = TokenType.Comment;
		boolean token_1_expr99_line_348 = f_type_907_line_348 == q_comment_52_line_348;
		int PROBE_END_LINE_348 = 348;
		return token_1_expr99_line_348;
    }

    final Comment asComment() {
        return (Comment) this;
    }

    final boolean isCharacter() {
        int PROBE_START_LINE_356 = 356;
		org.jsoup.parser.Token.TokenType f_type_907_line_356 = type;
		org.jsoup.parser.Token.TokenType q_character_52_line_356 = TokenType.Character;
		boolean token_1_expr100_line_356 = f_type_907_line_356 == q_character_52_line_356;
		int PROBE_END_LINE_356 = 356;
		return token_1_expr100_line_356;
    }

    final Character asCharacter() {
        return (Character) this;
    }

    final boolean isEOF() {
        int PROBE_START_LINE_364 = 364;
		org.jsoup.parser.Token.TokenType f_type_907_line_364 = type;
		org.jsoup.parser.Token.TokenType q_eof_52_line_364 = TokenType.EOF;
		boolean token_1_expr103_line_364 = f_type_907_line_364 == q_eof_52_line_364;
		int PROBE_END_LINE_364 = 364;
		return token_1_expr103_line_364;
    }

    enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }
}
