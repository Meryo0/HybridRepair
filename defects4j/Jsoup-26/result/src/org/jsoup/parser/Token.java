package org.jsoup.parser;

import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;

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

    static class Doctype extends Token {
        final StringBuilder name = new StringBuilder();
        final StringBuilder publicIdentifier = new StringBuilder();
        final StringBuilder systemIdentifier = new StringBuilder();
        boolean forceQuirks = false;

        Doctype() {
            type = TokenType.Doctype;
        }

        String getName() {
            return name.toString();
        }

        String getPublicIdentifier() {
            return publicIdentifier.toString();
        }

        public String getSystemIdentifier() {
            return systemIdentifier.toString();
        }

        public boolean isForceQuirks() {
            return forceQuirks;
        }
    }

    static abstract class Tag extends Token {
        protected String tagName;
        private String pendingAttributeName; // attribute names are generally caught in one hop, not accumulated
        private StringBuilder pendingAttributeValue; // but values are accumulated, from e.g. & in hrefs

        boolean selfClosing = false;
        Attributes attributes; // start tags get attributes on construction. End tags get attributes on first new attribute (but only for parser convenience, not used).

        void newAttribute() {
            int PROBE_START_LINE_56 = 57;
			org.jsoup.nodes.Attributes f_attributes_608_line_56 = attributes;
			boolean token_1_expr1_line_56 = f_attributes_608_line_56 == null;
			int PROBE_END_LINE_56 = 57;
			if (token_1_expr1_line_56)
                attributes = new Attributes();

            int PROBE_START_LINE_59 = 66;
			String f_pending_attribute_name_609_line_59 = pendingAttributeName;
			boolean token_1_expr2_line_59 = f_pending_attribute_name_609_line_59 != null;
			int PROBE_END_LINE_59 = 66;
			if (token_1_expr2_line_59) {
                Attribute attribute = null;
                int PROBE_START_LINE_61 = 64;
				StringBuilder f_pending_attribute_value_610_line_61 = pendingAttributeValue;
				boolean token_1_expr3_line_61 = f_pending_attribute_value_610_line_61 == null;
				int PROBE_END_LINE_61 = 64;
				if (token_1_expr3_line_61)
                    attribute = new Attribute(pendingAttributeName, "");
				else {
					int PROBE_START_LINE_64 = 64;
					String f_pending_attribute_name_609_line_64 = pendingAttributeName;
					StringBuilder f_pending_attribute_value_610_line_64 = pendingAttributeValue;
					String token_1_expr6_line_64 = f_pending_attribute_value_610_line_64.toString();
					int PROBE_END_LINE_64 = 64;
					attribute = new Attribute(f_pending_attribute_name_609_line_64, token_1_expr6_line_64);
				}
                int PROBE_START_LINE_65 = 65;
				org.jsoup.nodes.Attributes f_attributes_608_line_65 = attributes;
				org.jsoup.nodes.Attribute v_attribute_611_line_65 = attribute;
				int PROBE_END_LINE_65 = 65;
				f_attributes_608_line_65.put(v_attribute_611_line_65);
            }
            pendingAttributeName = null;
            int PROBE_START_LINE_68 = 69;
			StringBuilder f_pending_attribute_value_610_line_68 = pendingAttributeValue;
			boolean token_1_expr9_line_68 = f_pending_attribute_value_610_line_68 != null;
			int PROBE_END_LINE_68 = 69;
			if (token_1_expr9_line_68) {
				int PROBE_START_LINE_69 = 69;
				StringBuilder f_pending_attribute_value_610_line_69 = pendingAttributeValue;
				StringBuilder f_pending_attribute_value_610_line_69_v1 = pendingAttributeValue;
				int token_1_expr11_line_69 = f_pending_attribute_value_610_line_69_v1.length();
				int PROBE_END_LINE_69 = 69;
				f_pending_attribute_value_610_line_69.delete(0, token_1_expr11_line_69);
			}
        }

        void finaliseTag() {
            int PROBE_START_LINE_74 = 77;
			String f_pending_attribute_name_609_line_74 = pendingAttributeName;
			boolean token_1_expr12_line_74 = f_pending_attribute_name_609_line_74 != null;
			int PROBE_END_LINE_74 = 77;
			// finalises for emit
            if (token_1_expr12_line_74) {
                // todo: check if attribute name exists; if so, drop and error
                newAttribute();
            }
        }

        String name() {
            int PROBE_START_LINE_81 = 81;
			String f_tag_name_612_line_81 = tagName;
			int token_1_expr16_line_81 = f_tag_name_612_line_81.length();
			boolean token_1_expr15_line_81 = token_1_expr16_line_81 == 0;
			int PROBE_END_LINE_81 = 81;
			Validate.isFalse(token_1_expr15_line_81);
            int PROBE_START_LINE_82 = 82;
			String f_tag_name_612_line_82 = tagName;
			int PROBE_END_LINE_82 = 82;
			return f_tag_name_612_line_82;
        }

        Tag name(String name) {
            tagName = name;
            return this;
        }

        boolean isSelfClosing() {
            int PROBE_START_LINE_91 = 91;
			boolean f_self_closing_607_line_91 = selfClosing;
			int PROBE_END_LINE_91 = 91;
			return f_self_closing_607_line_91;
        }

        @SuppressWarnings({"TypeMayBeWeakened"})
        Attributes getAttributes() {
            int PROBE_START_LINE_96 = 96;
			org.jsoup.nodes.Attributes f_attributes_608_line_96 = attributes;
			int PROBE_END_LINE_96 = 96;
			return f_attributes_608_line_96;
        }

        // these appenders are rarely hit in not null state-- caused by null chars.
        void appendTagName(String append) {
            int PROBE_START_LINE_101 = 101;
			String f_tag_name_612_line_101 = tagName;
			boolean token_1_expr19_line_101 = f_tag_name_612_line_101 == null;
			String p_append_614_line_101 = null;
			String token_1_expr20_line_101 = null;
			if (token_1_expr19_line_101) {
				p_append_614_line_101 = append;
			} else {
				String f_tag_name_612_line_101_v1 = tagName;
				String p_append_614_line_101_v1 = append;
				token_1_expr20_line_101 = f_tag_name_612_line_101_v1.concat(p_append_614_line_101_v1);
			}
			String token_1_expr18_line_101 = token_1_expr19_line_101 ? p_append_614_line_101 : token_1_expr20_line_101;
			int PROBE_END_LINE_101 = 101;
			tagName = token_1_expr18_line_101;
        }

        void appendTagName(char append) {
            appendTagName(String.valueOf(append));
        }

        void appendAttributeName(String append) {
            int PROBE_START_LINE_109 = 109;
			String f_pending_attribute_name_609_line_109 = pendingAttributeName;
			boolean token_1_expr23_line_109 = f_pending_attribute_name_609_line_109 == null;
			String p_append_616_line_109 = null;
			String token_1_expr24_line_109 = null;
			if (token_1_expr23_line_109) {
				p_append_616_line_109 = append;
			} else {
				String f_pending_attribute_name_609_line_109_v1 = pendingAttributeName;
				String p_append_616_line_109_v1 = append;
				token_1_expr24_line_109 = f_pending_attribute_name_609_line_109_v1.concat(p_append_616_line_109_v1);
			}
			String token_1_expr22_line_109 = token_1_expr23_line_109 ? p_append_616_line_109 : token_1_expr24_line_109;
			int PROBE_END_LINE_109 = 109;
			pendingAttributeName = token_1_expr22_line_109;
        }

        void appendAttributeName(char append) {
            appendAttributeName(String.valueOf(append));
        }

        void appendAttributeValue(String append) {
            int PROBE_START_LINE_117 = 117;
			StringBuilder f_pending_attribute_value_610_line_117 = pendingAttributeValue;
			boolean token_1_expr27_line_117 = f_pending_attribute_value_610_line_117 == null;
			String p_append_618_line_117 = null;
			StringBuilder token_1_expr29_line_117 = null;
			if (token_1_expr27_line_117) {
				p_append_618_line_117 = append;
			} else {
				StringBuilder f_pending_attribute_value_610_line_117_v1 = pendingAttributeValue;
				String p_append_618_line_117_v1 = append;
				token_1_expr29_line_117 = f_pending_attribute_value_610_line_117_v1.append(p_append_618_line_117_v1);
			}
			StringBuilder token_1_expr26_line_117 = token_1_expr27_line_117
					? new StringBuilder(p_append_618_line_117)
					: token_1_expr29_line_117;
			int PROBE_END_LINE_117 = 117;
			pendingAttributeValue = token_1_expr26_line_117;
        }

        void appendAttributeValue(char append) {
            appendAttributeValue(String.valueOf(append));
        }
    }

    static class StartTag extends Tag {
        StartTag() {
            super();
            attributes = new Attributes();
            int PROBE_START_LINE_129 = 129;
			org.jsoup.parser.Token.TokenType q_start_tag_27_line_129 = TokenType.StartTag;
			int PROBE_END_LINE_129 = 129;
			type = q_start_tag_27_line_129;
        }

        StartTag(String name) {
            this();
            this.tagName = name;
        }

        StartTag(String name, Attributes attributes) {
            this();
            this.tagName = name;
            this.attributes = attributes;
        }

        @Override
        public String toString() {
            if (attributes != null && attributes.size() > 0)
                return "<" + name() + " " + attributes.toString() + ">";
            else
                return "<" + name() + ">";
        }
    }

    static class EndTag extends Tag{
        EndTag() {
            super();
            int PROBE_START_LINE_155 = 155;
			org.jsoup.parser.Token.TokenType q_end_tag_28_line_155 = TokenType.EndTag;
			int PROBE_END_LINE_155 = 155;
			type = q_end_tag_28_line_155;
        }

        EndTag(String name) {
            this();
            int PROBE_START_LINE_160 = 160;
			String p_name_624_line_160 = name;
			int PROBE_END_LINE_160 = 160;
			this.tagName = p_name_624_line_160;
        }

        @Override
        public String toString() {
            return "</" + name() + ">";
        }
    }

    static class Comment extends Token {
        final StringBuilder data = new StringBuilder();

        Comment() {
            type = TokenType.Comment;
        }

        String getData() {
            return data.toString();
        }

        @Override
        public String toString() {
            return "<!--" + getData() + "-->";
        }
    }

    static class Character extends Token {
        private final String data;

        Character(String data) {
            type = TokenType.Character;
            this.data = data;
        }

        String getData() {
            return data;
        }

        @Override
        public String toString() {
            return getData();
        }
    }

    static class EOF extends Token {
        EOF() {
            int PROBE_START_LINE_206 = 206;
			org.jsoup.parser.Token.TokenType q_eof_29_line_206 = Token.TokenType.EOF;
			int PROBE_END_LINE_206 = 206;
			type = q_eof_29_line_206;
        }
    }

    boolean isDoctype() {
        int PROBE_START_LINE_211 = 211;
		org.jsoup.parser.Token.TokenType f_type_620_line_211 = type;
		org.jsoup.parser.Token.TokenType q_doctype_30_line_211 = TokenType.Doctype;
		boolean token_1_expr41_line_211 = f_type_620_line_211 == q_doctype_30_line_211;
		int PROBE_END_LINE_211 = 211;
		return token_1_expr41_line_211;
    }

    Doctype asDoctype() {
        return (Doctype) this;
    }

    boolean isStartTag() {
        int PROBE_START_LINE_219 = 219;
		org.jsoup.parser.Token.TokenType f_type_620_line_219 = type;
		org.jsoup.parser.Token.TokenType q_start_tag_31_line_219 = TokenType.StartTag;
		boolean token_1_expr42_line_219 = f_type_620_line_219 == q_start_tag_31_line_219;
		int PROBE_END_LINE_219 = 219;
		return token_1_expr42_line_219;
    }

    StartTag asStartTag() {
        return (StartTag) this;
    }

    boolean isEndTag() {
        int PROBE_START_LINE_227 = 227;
		org.jsoup.parser.Token.TokenType f_type_620_line_227 = type;
		org.jsoup.parser.Token.TokenType q_end_tag_31_line_227 = TokenType.EndTag;
		boolean token_1_expr45_line_227 = f_type_620_line_227 == q_end_tag_31_line_227;
		int PROBE_END_LINE_227 = 227;
		return token_1_expr45_line_227;
    }

    EndTag asEndTag() {
        return (EndTag) this;
    }

    boolean isComment() {
        int PROBE_START_LINE_235 = 235;
		org.jsoup.parser.Token.TokenType f_type_620_line_235 = type;
		org.jsoup.parser.Token.TokenType q_comment_31_line_235 = TokenType.Comment;
		boolean token_1_expr48_line_235 = f_type_620_line_235 == q_comment_31_line_235;
		int PROBE_END_LINE_235 = 235;
		return token_1_expr48_line_235;
    }

    Comment asComment() {
        return (Comment) this;
    }

    boolean isCharacter() {
        int PROBE_START_LINE_243 = 243;
		org.jsoup.parser.Token.TokenType f_type_620_line_243 = type;
		org.jsoup.parser.Token.TokenType q_character_32_line_243 = TokenType.Character;
		boolean token_1_expr49_line_243 = f_type_620_line_243 == q_character_32_line_243;
		int PROBE_END_LINE_243 = 243;
		return token_1_expr49_line_243;
    }

    Character asCharacter() {
        return (Character) this;
    }

    boolean isEOF() {
        int PROBE_START_LINE_251 = 251;
		org.jsoup.parser.Token.TokenType f_type_620_line_251 = type;
		org.jsoup.parser.Token.TokenType q_eof_33_line_251 = TokenType.EOF;
		boolean token_1_expr50_line_251 = f_type_620_line_251 == q_eof_33_line_251;
		int PROBE_END_LINE_251 = 251;
		return token_1_expr50_line_251;
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
