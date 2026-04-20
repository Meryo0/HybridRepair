package org.jsoup.parser;

import org.jsoup.helper.Validate;
import org.jsoup.nodes.Entities;

import java.util.ArrayList;
import java.util.List;
import org.jsoup.nodes.Attributes;

/**
 * Readers the input stream into tokens.
 */
class Tokeniser {
    static final char replacementChar = '\uFFFD'; // replaces null character

    private CharacterReader reader; // html input
    private ParseErrorList errors; // errors found while tokenising

    int PROBE_START_LINE_18 = 18;

	private org.jsoup.parser.TokeniserState q_data_34_line_18 = TokeniserState.Data;

	int PROBE_END_LINE_18 = 18;

	private TokeniserState state = q_data_34_line_18; // current tokenisation state
    private Token emitPending; // the token we are about to emit on next read
    private boolean isEmitPending = false;
    private StringBuilder charBuffer = new StringBuilder(); // buffers characters to output as one token
    StringBuilder dataBuffer; // buffers data looking for </script>

    Token.Tag tagPending; // tag we are building up
    Token.Doctype doctypePending; // doctype building up
    Token.Comment commentPending; // comment building up
    private Token.StartTag lastStartTag; // the last start tag emitted, to test appropriate end tag
    private boolean selfClosingFlagAcknowledged = true;

    Tokeniser(CharacterReader reader, ParseErrorList errors) {
        int PROBE_START_LINE_31 = 31;
		org.jsoup.parser.CharacterReader p_reader_636_line_31 = reader;
		int PROBE_END_LINE_31 = 31;
		this.reader = p_reader_636_line_31;
        int PROBE_START_LINE_32 = 32;
		org.jsoup.parser.ParseErrorList p_errors_637_line_32 = errors;
		int PROBE_END_LINE_32 = 32;
		this.errors = p_errors_637_line_32;
    }

    Token read() {
        int PROBE_START_LINE_36 = 39;
		boolean f_self_closing_flag_acknowledged_635_line_36 = selfClosingFlagAcknowledged;
		boolean tokeniser_1_expr8_line_36 = !f_self_closing_flag_acknowledged_635_line_36;
		int PROBE_END_LINE_36 = 39;
		if (tokeniser_1_expr8_line_36) {
            error("Self closing flag not acknowledged");
            selfClosingFlagAcknowledged = true;
        }

        while (true) {
			int PROBE_START_LINE_41 = 41;
			boolean f_is_emit_pending_633_line_41 = isEmitPending;
			boolean tokeniser_1_expr11_line_41 = !f_is_emit_pending_633_line_41;
			if (!(tokeniser_1_expr11_line_41)) {
				break;
			}
			int PROBE_END_LINE_41 = 41;
			int PROBE_START_LINE_42 = 42;
			org.jsoup.parser.TokeniserState f_state_632_line_42 = state;
			org.jsoup.parser.CharacterReader f_reader_638_line_42 = reader;
			int PROBE_END_LINE_42 = 42;
			f_state_632_line_42.read(this, f_reader_638_line_42);
		}

        int PROBE_START_LINE_45 = 52;
		StringBuilder f_char_buffer_634_line_45 = charBuffer;
		int tokeniser_1_expr15_line_45 = f_char_buffer_634_line_45.length();
		boolean tokeniser_1_expr14_line_45 = tokeniser_1_expr15_line_45 > 0;
		int PROBE_END_LINE_45 = 52;
		// if emit is pending, a non-character token was found: return any chars in buffer, and leave token for next read:
        if (tokeniser_1_expr14_line_45) {
            String str = charBuffer.toString();
            charBuffer.delete(0, charBuffer.length());
            return new Token.Character(str);
        } else {
            isEmitPending = false;
            int PROBE_START_LINE_51 = 51;
			org.jsoup.parser.Token f_emit_pending_640_line_51 = emitPending;
			int PROBE_END_LINE_51 = 51;
			return f_emit_pending_640_line_51;
        }
    }

    void emit(Token token) {
        int PROBE_START_LINE_56 = 56;
		boolean f_is_emit_pending_633_line_56 = isEmitPending;
		int PROBE_END_LINE_56 = 56;
		Validate.isFalse(f_is_emit_pending_633_line_56, "There is an unread token pending!");

        int PROBE_START_LINE_58 = 58;
		org.jsoup.parser.Token p_token_641_line_58 = token;
		int PROBE_END_LINE_58 = 58;
		emitPending = p_token_641_line_58;
        isEmitPending = true;

        int PROBE_START_LINE_61 = 70;
		org.jsoup.parser.Token p_token_641_line_61 = token;
		org.jsoup.parser.Token.TokenType q_type_34_line_61 = p_token_641_line_61.type;
		org.jsoup.parser.Token.TokenType q_start_tag_35_line_61 = Token.TokenType.StartTag;
		boolean tokeniser_1_expr20_line_61 = q_type_34_line_61 == q_start_tag_35_line_61;
		int PROBE_END_LINE_61 = 70;
		if (tokeniser_1_expr20_line_61) {
            int PROBE_START_LINE_62 = 62;
			org.jsoup.parser.Token p_token_641_line_62 = token;
			int PROBE_END_LINE_62 = 62;
			Token.StartTag startTag = (Token.StartTag) p_token_641_line_62;
            int PROBE_START_LINE_63 = 63;
			org.jsoup.parser.Token.StartTag v_start_tag_642_line_63 = startTag;
			int PROBE_END_LINE_63 = 63;
			lastStartTag = v_start_tag_642_line_63;
            int PROBE_START_LINE_64 = 65;
			org.jsoup.parser.Token.StartTag v_start_tag_642_line_64 = startTag;
			boolean q_self_closing_36_line_64 = v_start_tag_642_line_64.selfClosing;
			int PROBE_END_LINE_64 = 65;
			if (q_self_closing_36_line_64)
                selfClosingFlagAcknowledged = false;
        } else {
			int PROBE_START_LINE_66 = 70;
			org.jsoup.parser.Token p_token_641_line_66 = token;
			org.jsoup.parser.Token.TokenType q_type_37_line_66 = p_token_641_line_66.type;
			org.jsoup.parser.Token.TokenType q_end_tag_37_line_66 = Token.TokenType.EndTag;
			boolean tokeniser_1_expr24_line_66 = q_type_37_line_66 == q_end_tag_37_line_66;
			int PROBE_END_LINE_66 = 70;
			if (tokeniser_1_expr24_line_66) {
				int PROBE_START_LINE_67 = 67;
				org.jsoup.parser.Token p_token_641_line_67 = token;
				int PROBE_END_LINE_67 = 67;
				Token.EndTag endTag = (Token.EndTag) p_token_641_line_67;
				int PROBE_START_LINE_68 = 69;
				org.jsoup.parser.Token.EndTag v_end_tag_644_line_68 = endTag;
				org.jsoup.nodes.Attributes q_attributes_38_line_68 = v_end_tag_644_line_68.attributes;
				boolean tokeniser_1_expr26_line_68 = q_attributes_38_line_68 != null;
				int PROBE_END_LINE_68 = 69;
				if (tokeniser_1_expr26_line_68)
					error("Attributes incorrectly present on end tag");
			}
		}
    }

    void emit(String str) {
        // buffer strings up until last string token found, to emit only one token for a run of character refs etc.
        // does not set isEmitPending; read checks that
        charBuffer.append(str);
    }

    void emit(char c) {
        charBuffer.append(c);
    }

    TokeniserState getState() {
        return state;
    }

    void transition(TokeniserState state) {
        int PROBE_START_LINE_88 = 88;
		org.jsoup.parser.TokeniserState p_state_647_line_88 = state;
		int PROBE_END_LINE_88 = 88;
		this.state = p_state_647_line_88;
    }

    void advanceTransition(TokeniserState state) {
        int PROBE_START_LINE_92 = 92;
		org.jsoup.parser.CharacterReader f_reader_638_line_92 = reader;
		int PROBE_END_LINE_92 = 92;
		f_reader_638_line_92.advance();
        int PROBE_START_LINE_93 = 93;
		org.jsoup.parser.TokeniserState p_state_648_line_93 = state;
		int PROBE_END_LINE_93 = 93;
		this.state = p_state_648_line_93;
    }

    void acknowledgeSelfClosingFlag() {
        selfClosingFlagAcknowledged = true;
    }

    Character consumeCharacterReference(Character additionalAllowedCharacter, boolean inAttribute) {
        if (reader.isEmpty())
            return null;
        if (additionalAllowedCharacter != null && additionalAllowedCharacter == reader.current())
            return null;
        if (reader.matchesAny('\t', '\n', '\r', '\f', ' ', '<', '&'))
            return null;

        reader.mark();
        if (reader.matchConsume("#")) { // numbered
            boolean isHexMode = reader.matchConsumeIgnoreCase("X");
            String numRef = isHexMode ? reader.consumeHexSequence() : reader.consumeDigitSequence();
            if (numRef.length() == 0) { // didn't match anything
                characterReferenceError("numeric reference with no numerals");
                reader.rewindToMark();
                return null;
            }
            if (!reader.matchConsume(";"))
                characterReferenceError("missing semicolon"); // missing semi
            int charval = -1;
            try {
                int base = isHexMode ? 16 : 10;
                charval = Integer.valueOf(numRef, base);
            } catch (NumberFormatException e) {
            } // skip
            if (charval == -1 || (charval >= 0xD800 && charval <= 0xDFFF) || charval > 0x10FFFF) {
                characterReferenceError("character outside of valid range");
                return replacementChar;
            } else {
                // todo: implement number replacement table
                // todo: check for extra illegal unicode points as parse errors
                return (char) charval;
            }
        } else { // named
            // get as many letters as possible, and look for matching entities. unconsume backwards till a match is found
            String nameRef = reader.consumeLetterThenDigitSequence();
            String origNameRef = new String(nameRef); // for error reporting. nameRef gets chomped looking for matches
            boolean looksLegit = reader.matches(';');
            boolean found = false;
            while (nameRef.length() > 0 && !found) {
                if (Entities.isNamedEntity(nameRef))
                    found = true;
                else {
                    nameRef = nameRef.substring(0, nameRef.length()-1);
                    reader.unconsume();
                }
            }
            if (!found) {
                if (looksLegit) // named with semicolon
                    characterReferenceError(String.format("invalid named referenece '%s'", origNameRef));
                reader.rewindToMark();
                return null;
            }
            if (inAttribute && (reader.matchesLetter() || reader.matchesDigit() || reader.matchesAny('=', '-', '_'))) {
                // don't want that to match
                reader.rewindToMark();
                return null;
            }
            if (!reader.matchConsume(";"))
                characterReferenceError("missing semicolon"); // missing semi
            return Entities.getCharacterByName(nameRef);
        }
    }

    Token.Tag createTagPending(boolean start) {
        int PROBE_START_LINE_165 = 165;
		boolean p_start_651_line_165 = start;
		org.jsoup.parser.Token.Tag tokeniser_1_expr36_line_165 = p_start_651_line_165
				? new Token.StartTag()
				: new Token.EndTag();
		int PROBE_END_LINE_165 = 165;
		tagPending = tokeniser_1_expr36_line_165;
        int PROBE_START_LINE_166 = 166;
		org.jsoup.parser.Token.Tag f_tag_pending_652_line_166 = tagPending;
		int PROBE_END_LINE_166 = 166;
		return f_tag_pending_652_line_166;
    }

    void emitTagPending() {
        int PROBE_START_LINE_170 = 170;
		org.jsoup.parser.Token.Tag f_tag_pending_652_line_170 = tagPending;
		int PROBE_END_LINE_170 = 170;
		f_tag_pending_652_line_170.finaliseTag();
        int PROBE_START_LINE_171 = 171;
		org.jsoup.parser.Token.Tag f_tag_pending_652_line_171 = tagPending;
		int PROBE_END_LINE_171 = 171;
		emit(f_tag_pending_652_line_171);
    }

    void createCommentPending() {
        commentPending = new Token.Comment();
    }

    void emitCommentPending() {
        emit(commentPending);
    }

    void createDoctypePending() {
        doctypePending = new Token.Doctype();
    }

    void emitDoctypePending() {
        emit(doctypePending);
    }

    void createTempBuffer() {
        dataBuffer = new StringBuilder();
    }

    boolean isAppropriateEndTagToken() {
        int PROBE_START_LINE_195 = 196;
		org.jsoup.parser.Token.StartTag f_last_start_tag_643_line_195 = lastStartTag;
		boolean tokeniser_1_expr43_line_195 = f_last_start_tag_643_line_195 == null;
		int PROBE_END_LINE_195 = 196;
		if (tokeniser_1_expr43_line_195)
            return false;
        int PROBE_START_LINE_197 = 197;
		org.jsoup.parser.Token.Tag f_tag_pending_652_line_197 = tagPending;
		String q_tag_name_40_line_197 = f_tag_pending_652_line_197.tagName;
		org.jsoup.parser.Token.StartTag f_last_start_tag_643_line_197 = lastStartTag;
		String q_tag_name_39_line_197 = f_last_start_tag_643_line_197.tagName;
		boolean tokeniser_1_expr44_line_197 = q_tag_name_40_line_197.equals(q_tag_name_39_line_197);
		int PROBE_END_LINE_197 = 197;
		return tokeniser_1_expr44_line_197;
    }

    String appropriateEndTagName() {
        return lastStartTag.tagName;
    }

    void error(TokeniserState state) {
        if (errors.canAddError())
            errors.add(new ParseError(reader.pos(), "Unexpected character '%s' in input state [%s]", reader.current(), state));
    }

    void eofError(TokeniserState state) {
        if (errors.canAddError())
            errors.add(new ParseError(reader.pos(), "Unexpectedly reached end of file (EOF) in input state [%s]", state));
    }

    private void characterReferenceError(String message) {
        if (errors.canAddError())
            errors.add(new ParseError(reader.pos(), "Invalid character reference: %s", message));
    }

    private void error(String errorMsg) {
        int PROBE_START_LINE_220 = 221;
		org.jsoup.parser.ParseErrorList f_errors_639_line_220 = errors;
		boolean tokeniser_1_expr45_line_220 = f_errors_639_line_220.canAddError();
		int PROBE_END_LINE_220 = 221;
		if (tokeniser_1_expr45_line_220)
            errors.add(new ParseError(reader.pos(), errorMsg));
    }

    boolean currentNodeInHtmlNS() {
        // todo: implement namespaces correctly
        return true;
        // Element currentNode = currentNode();
        // return currentNode != null && currentNode.namespace().equals("HTML");
    }
}
