package org.jsoup.parser;

import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Entities;

import java.util.Arrays;
import org.jsoup.nodes.Attributes;

/**
 * Readers the input stream into tokens.
 */
final class Tokeniser {
    static final char replacementChar = '\uFFFD'; // replaces null character
    private static final char[] notCharRefCharsSorted = new char[]{'\t', '\n', '\r', '\f', ' ', '<', '&'};

    static {
        int PROBE_START_LINE_17 = 17;
		char[] f_not_char_ref_chars_sorted_939_line_17 = notCharRefCharsSorted;
		int PROBE_END_LINE_17 = 17;
		Arrays.sort(f_not_char_ref_chars_sorted_939_line_17);
    }

    private final CharacterReader reader; // html input
    private final ParseErrorList errors; // errors found while tokenising

    int PROBE_START_LINE_23 = 23;

	private org.jsoup.parser.TokeniserState q_data_53_line_23 = TokeniserState.Data;

	int PROBE_END_LINE_23 = 23;

	private TokeniserState state = q_data_53_line_23; // current tokenisation state
    private Token emitPending; // the token we are about to emit on next read
    private boolean isEmitPending = false;
    private String charsString = null; // characters pending an emit. Will fall to charsBuilder if more than one
    private StringBuilder charsBuilder = new StringBuilder(1024); // buffers characters to output as one token, if more than one emit per read
    StringBuilder dataBuffer = new StringBuilder(1024); // buffers data looking for </script>

    Token.Tag tagPending; // tag we are building up
    Token.StartTag startPending = new Token.StartTag();
    Token.EndTag endPending = new Token.EndTag();
    Token.Character charPending = new Token.Character();
    Token.Doctype doctypePending = new Token.Doctype(); // doctype building up
    Token.Comment commentPending = new Token.Comment(); // comment building up
    private String lastStartTag; // the last start tag emitted, to test appropriate end tag

    Tokeniser(CharacterReader reader, ParseErrorList errors) {
        int PROBE_START_LINE_39 = 39;
		org.jsoup.parser.CharacterReader p_reader_950_line_39 = reader;
		int PROBE_END_LINE_39 = 39;
		this.reader = p_reader_950_line_39;
        int PROBE_START_LINE_40 = 40;
		org.jsoup.parser.ParseErrorList p_errors_951_line_40 = errors;
		int PROBE_END_LINE_40 = 40;
		this.errors = p_errors_951_line_40;
    }

    Token read() {
        while (true) {
			int PROBE_START_LINE_44 = 44;
			boolean f_is_emit_pending_941_line_44 = isEmitPending;
			boolean tokeniser_1_expr17_line_44 = !f_is_emit_pending_941_line_44;
			if (!(tokeniser_1_expr17_line_44)) {
				break;
			}
			int PROBE_END_LINE_44 = 44;
			int PROBE_START_LINE_45 = 45;
			org.jsoup.parser.TokeniserState f_state_940_line_45 = state;
			org.jsoup.parser.CharacterReader f_reader_952_line_45 = reader;
			int PROBE_END_LINE_45 = 45;
			f_state_940_line_45.read(this, f_reader_952_line_45);
		}

        int PROBE_START_LINE_48 = 60;
		StringBuilder f_chars_builder_943_line_48 = charsBuilder;
		int tokeniser_1_expr21_line_48 = f_chars_builder_943_line_48.length();
		boolean tokeniser_1_expr20_line_48 = tokeniser_1_expr21_line_48 > 0;
		int PROBE_END_LINE_48 = 60;
		// if emit is pending, a non-character token was found: return any chars in buffer, and leave token for next read:
        if (tokeniser_1_expr20_line_48) {
            String str = charsBuilder.toString();
            charsBuilder.delete(0, charsBuilder.length());
            charsString = null;
            return charPending.data(str);
        } else {
			int PROBE_START_LINE_53 = 60;
			String f_chars_string_942_line_53 = charsString;
			boolean tokeniser_1_expr22_line_53 = f_chars_string_942_line_53 != null;
			int PROBE_END_LINE_53 = 60;
			if (tokeniser_1_expr22_line_53) {
				int PROBE_START_LINE_54 = 54;
				org.jsoup.parser.Token.Character f_char_pending_947_line_54 = charPending;
				String f_chars_string_942_line_54 = charsString;
				Token tokeniser_1_expr23_line_54 = f_char_pending_947_line_54.data(f_chars_string_942_line_54);
				int PROBE_END_LINE_54 = 54;
				Token token = tokeniser_1_expr23_line_54;
				charsString = null;
				int PROBE_START_LINE_56 = 56;
				org.jsoup.parser.Token v_token_954_line_56 = token;
				int PROBE_END_LINE_56 = 56;
				return v_token_954_line_56;
			} else {
				isEmitPending = false;
				int PROBE_START_LINE_59 = 59;
				org.jsoup.parser.Token f_emit_pending_955_line_59 = emitPending;
				int PROBE_END_LINE_59 = 59;
				return f_emit_pending_955_line_59;
			}
		}
    }

    void emit(Token token) {
        int PROBE_START_LINE_64 = 64;
		boolean f_is_emit_pending_941_line_64 = isEmitPending;
		int PROBE_END_LINE_64 = 64;
		Validate.isFalse(f_is_emit_pending_941_line_64, "There is an unread token pending!");

        int PROBE_START_LINE_66 = 66;
		org.jsoup.parser.Token p_token_956_line_66 = token;
		int PROBE_END_LINE_66 = 66;
		emitPending = p_token_956_line_66;
        isEmitPending = true;

        int PROBE_START_LINE_69 = 76;
		org.jsoup.parser.Token p_token_956_line_69 = token;
		org.jsoup.parser.Token.TokenType q_type_53_line_69 = p_token_956_line_69.type;
		org.jsoup.parser.Token.TokenType q_start_tag_54_line_69 = Token.TokenType.StartTag;
		boolean tokeniser_1_expr29_line_69 = q_type_53_line_69 == q_start_tag_54_line_69;
		int PROBE_END_LINE_69 = 76;
		if (tokeniser_1_expr29_line_69) {
            int PROBE_START_LINE_70 = 70;
			org.jsoup.parser.Token p_token_956_line_70 = token;
			int PROBE_END_LINE_70 = 70;
			Token.StartTag startTag = (Token.StartTag) p_token_956_line_70;
            int PROBE_START_LINE_71 = 71;
			org.jsoup.parser.Token.StartTag v_start_tag_957_line_71 = startTag;
			String q_tag_name_55_line_71 = v_start_tag_957_line_71.tagName;
			int PROBE_END_LINE_71 = 71;
			lastStartTag = q_tag_name_55_line_71;
        } else {
			int PROBE_START_LINE_72 = 76;
			org.jsoup.parser.Token p_token_956_line_72 = token;
			org.jsoup.parser.Token.TokenType q_type_56_line_72 = p_token_956_line_72.type;
			org.jsoup.parser.Token.TokenType q_end_tag_56_line_72 = Token.TokenType.EndTag;
			boolean tokeniser_1_expr32_line_72 = q_type_56_line_72 == q_end_tag_56_line_72;
			int PROBE_END_LINE_72 = 76;
			if (tokeniser_1_expr32_line_72) {
				int PROBE_START_LINE_73 = 73;
				org.jsoup.parser.Token p_token_956_line_73 = token;
				int PROBE_END_LINE_73 = 73;
				Token.EndTag endTag = (Token.EndTag) p_token_956_line_73;
				int PROBE_START_LINE_74 = 75;
				org.jsoup.parser.Token.EndTag v_end_tag_959_line_74 = endTag;
				org.jsoup.nodes.Attributes q_attributes_57_line_74 = v_end_tag_959_line_74.attributes;
				boolean tokeniser_1_expr34_line_74 = q_attributes_57_line_74 != null;
				int PROBE_END_LINE_74 = 75;
				if (tokeniser_1_expr34_line_74)
					error("Attributes incorrectly present on end tag");
			}
		}
    }

    void emit(final String str) {
        int PROBE_START_LINE_82 = 90;
		String f_chars_string_942_line_82 = charsString;
		boolean tokeniser_1_expr35_line_82 = f_chars_string_942_line_82 == null;
		int PROBE_END_LINE_82 = 90;
		// buffer strings up until last string token found, to emit only one token for a run of character refs etc.
        // does not set isEmitPending; read checks that
        if (tokeniser_1_expr35_line_82) {
            int PROBE_START_LINE_83 = 83;
			String p_str_960_line_83 = str;
			int PROBE_END_LINE_83 = 83;
			charsString = p_str_960_line_83;
        }
        else {
            if (charsBuilder.length() == 0) { // switching to string builder as more than one emit before read
                charsBuilder.append(charsString);
            }
            charsBuilder.append(str);
        }
    }

    void emit(char[] chars) {
        emit(String.valueOf(chars));
    }

    void emit(int[] codepoints) {
        emit(new String(codepoints, 0, codepoints.length));
    }

    void emit(char c) {
        emit(String.valueOf(c));
    }

    TokeniserState getState() {
        return state;
    }

    void transition(TokeniserState state) {
        int PROBE_START_LINE_110 = 110;
		org.jsoup.parser.TokeniserState p_state_964_line_110 = state;
		int PROBE_END_LINE_110 = 110;
		this.state = p_state_964_line_110;
    }

    void advanceTransition(TokeniserState state) {
        int PROBE_START_LINE_114 = 114;
		org.jsoup.parser.CharacterReader f_reader_952_line_114 = reader;
		int PROBE_END_LINE_114 = 114;
		f_reader_952_line_114.advance();
        int PROBE_START_LINE_115 = 115;
		org.jsoup.parser.TokeniserState p_state_965_line_115 = state;
		int PROBE_END_LINE_115 = 115;
		this.state = p_state_965_line_115;
    }

    final private int[] codepointHolder = new int[1]; // holder to not have to keep creating arrays
    final private int[] multipointHolder = new int[2];
    int[] consumeCharacterReference(Character additionalAllowedCharacter, boolean inAttribute) {
        if (reader.isEmpty())
            return null;
        if (additionalAllowedCharacter != null && additionalAllowedCharacter == reader.current())
            return null;
        if (reader.matchesAnySorted(notCharRefCharsSorted))
            return null;

        final int[] codeRef = codepointHolder;
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
            } catch (NumberFormatException ignored) {
            } // skip
            if (charval == -1 || (charval >= 0xD800 && charval <= 0xDFFF) || charval > 0x10FFFF) {
                characterReferenceError("character outside of valid range");
                codeRef[0] = replacementChar;
                return codeRef;
            } else {
                // todo: implement number replacement table
                // todo: check for extra illegal unicode points as parse errors
                codeRef[0] = charval;
                return codeRef;
            }
        } else { // named
            // get as many letters as possible, and look for matching entities.
            String nameRef = reader.consumeLetterThenDigitSequence();
            boolean looksLegit = reader.matches(';');
            // found if a base named entity without a ;, or an extended entity with the ;.
            boolean found = (Entities.isBaseNamedEntity(nameRef) || (Entities.isNamedEntity(nameRef) && looksLegit));

            if (!found) {
                reader.rewindToMark();
                if (looksLegit) // named with semicolon
                    characterReferenceError(String.format("invalid named referenece '%s'", nameRef));
                return null;
            }
            if (inAttribute && (reader.matchesLetter() || reader.matchesDigit() || reader.matchesAny('=', '-', '_'))) {
                // don't want that to match
                reader.rewindToMark();
                return null;
            }
            if (!reader.matchConsume(";"))
                characterReferenceError("missing semicolon"); // missing semi
            int numChars = Entities.codepointsForName(nameRef, multipointHolder);
            if (numChars == 1) {
                codeRef[0] = multipointHolder[0];
                return codeRef;
            } else if (numChars ==2) {
                return multipointHolder;
            } else {
                Validate.fail("Unexpected characters returned for " + nameRef);
                return multipointHolder;
            }
        }
    }

    Token.Tag createTagPending(boolean start) {
        int PROBE_START_LINE_190 = 190;
		boolean p_start_970_line_190 = start;
		org.jsoup.parser.Token.Tag tokeniser_1_expr48_line_190 = null;
		org.jsoup.parser.Token.Tag tokeniser_1_expr49_line_190 = null;
		if (p_start_970_line_190) {
			org.jsoup.parser.Token.StartTag f_start_pending_945_line_190 = startPending;
			tokeniser_1_expr48_line_190 = f_start_pending_945_line_190.reset();
		} else {
			org.jsoup.parser.Token.EndTag f_end_pending_946_line_190 = endPending;
			tokeniser_1_expr49_line_190 = f_end_pending_946_line_190.reset();
		}
		org.jsoup.parser.Token.Tag tokeniser_1_expr47_line_190 = p_start_970_line_190
				? tokeniser_1_expr48_line_190
				: tokeniser_1_expr49_line_190;
		int PROBE_END_LINE_190 = 190;
		tagPending = tokeniser_1_expr47_line_190;
        int PROBE_START_LINE_191 = 191;
		org.jsoup.parser.Token.Tag f_tag_pending_971_line_191 = tagPending;
		int PROBE_END_LINE_191 = 191;
		return f_tag_pending_971_line_191;
    }

    void emitTagPending() {
        int PROBE_START_LINE_195 = 195;
		org.jsoup.parser.Token.Tag f_tag_pending_971_line_195 = tagPending;
		int PROBE_END_LINE_195 = 195;
		f_tag_pending_971_line_195.finaliseTag();
        int PROBE_START_LINE_196 = 196;
		org.jsoup.parser.Token.Tag f_tag_pending_971_line_196 = tagPending;
		int PROBE_END_LINE_196 = 196;
		emit(f_tag_pending_971_line_196);
    }

    void createCommentPending() {
        commentPending.reset();
    }

    void emitCommentPending() {
        emit(commentPending);
    }

    void createDoctypePending() {
        int PROBE_START_LINE_208 = 208;
		org.jsoup.parser.Token.Doctype f_doctype_pending_948_line_208 = doctypePending;
		int PROBE_END_LINE_208 = 208;
		f_doctype_pending_948_line_208.reset();
    }

    void emitDoctypePending() {
        int PROBE_START_LINE_212 = 212;
		org.jsoup.parser.Token.Doctype f_doctype_pending_948_line_212 = doctypePending;
		int PROBE_END_LINE_212 = 212;
		emit(f_doctype_pending_948_line_212);
    }

    void createTempBuffer() {
        Token.reset(dataBuffer);
    }

    boolean isAppropriateEndTagToken() {
        return lastStartTag != null && tagPending.name().equalsIgnoreCase(lastStartTag);
    }

    String appropriateEndTagName() {
        if (lastStartTag == null)
            return null;
        return lastStartTag;
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

    void error(String errorMsg) {
        if (errors.canAddError())
            errors.add(new ParseError(reader.pos(), errorMsg));
    }

    boolean currentNodeInHtmlNS() {
        // todo: implement namespaces correctly
        return true;
        // Element currentNode = currentNode();
        // return currentNode != null && currentNode.namespace().equals("HTML");
    }

    /**
     * Utility method to consume reader and unescape entities found within.
     * @param inAttribute if the text to be unescaped is in an attribute
     * @return unescaped string from reader
     */
    String unescapeEntities(boolean inAttribute) {
        StringBuilder builder = StringUtil.stringBuilder();
        while (!reader.isEmpty()) {
            builder.append(reader.consumeTo('&'));
            if (reader.matches('&')) {
                reader.consume();
                int[] c = consumeCharacterReference(null, inAttribute);
                if (c == null || c.length==0)
                    builder.append('&');
                else {
                    builder.appendCodePoint(c[0]);
                    if (c.length == 2)
                        builder.appendCodePoint(c[1]);
                }

            }
        }
        return builder.toString();
    }
}
