package org.jsoup.parser;

import org.jsoup.nodes.DocumentType;

import java.util.Arrays;

/**
 * States and transition activations for the Tokeniser.
 */
enum TokeniserState {
    Data {
        // in data state, gather characters until a character reference or tag is found
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_14 = 32;
			org.jsoup.parser.CharacterReader p_r_979_line_14 = r;
			char tokeniser_state_1_expr1_line_14 = p_r_979_line_14.current();
			int PROBE_END_LINE_14 = 32;
			switch (tokeniser_state_1_expr1_line_14) {
                case '&':
                    t.advanceTransition(CharacterReferenceInData);
                    break;
                case '<':
			int PROBE_START_LINE_19 = 19;
			org.jsoup.parser.Tokeniser p_t_978_line_19 = t;
			org.jsoup.parser.TokeniserState f_tag_open_980_line_19 = TagOpen;
			int PROBE_END_LINE_19 = 19;
			p_t_978_line_19.advanceTransition(f_tag_open_980_line_19);
                    break;
                case nullChar:
                    t.error(this); // NOT replacement character (oddly?)
                    t.emit(r.consume());
                    break;
                case eof:
			int PROBE_START_LINE_26 = 26;
			org.jsoup.parser.Tokeniser p_t_978_line_26 = t;
			int PROBE_END_LINE_26 = 26;
			p_t_978_line_26.emit(new Token.EOF());
                    break;
                default:
			int PROBE_START_LINE_29 = 29;
			org.jsoup.parser.CharacterReader p_r_979_line_29 = r;
			String tokeniser_state_1_expr5_line_29 = p_r_979_line_29.consumeData();
			int PROBE_END_LINE_29 = 29;
			String data = tokeniser_state_1_expr5_line_29;
			int PROBE_START_LINE_30 = 30;
			org.jsoup.parser.Tokeniser p_t_978_line_30 = t;
			String v_data_981_line_30 = data;
			int PROBE_END_LINE_30 = 30;
			p_t_978_line_30.emit(v_data_981_line_30);
                    break;
            }
        }
    },
    CharacterReferenceInData {
        // from & in data
        void read(Tokeniser t, CharacterReader r) {
            readCharRef(t, Data);
        }
    },
    Rcdata {
        /// handles data in title, textarea etc
        void read(Tokeniser t, CharacterReader r) {
            switch (r.current()) {
                case '&':
                    t.advanceTransition(CharacterReferenceInRcdata);
                    break;
                case '<':
                    t.advanceTransition(RcdataLessthanSign);
                    break;
                case nullChar:
                    t.error(this);
                    r.advance();
                    t.emit(replacementChar);
                    break;
                case eof:
                    t.emit(new Token.EOF());
                    break;
                default:
                    String data = r.consumeToAny('&', '<', nullChar);
                    t.emit(data);
                    break;
            }
        }
    },
    CharacterReferenceInRcdata {
        void read(Tokeniser t, CharacterReader r) {
            readCharRef(t, Rcdata);
        }
    },
    Rawtext {
        void read(Tokeniser t, CharacterReader r) {
            readData(t, r, this, RawtextLessthanSign);
        }
    },
    ScriptData {
        void read(Tokeniser t, CharacterReader r) {
            readData(t, r, this, ScriptDataLessthanSign);
        }
    },
    PLAINTEXT {
        void read(Tokeniser t, CharacterReader r) {
            switch (r.current()) {
                case nullChar:
                    t.error(this);
                    r.advance();
                    t.emit(replacementChar);
                    break;
                case eof:
                    t.emit(new Token.EOF());
                    break;
                default:
                    String data = r.consumeTo(nullChar);
                    t.emit(data);
                    break;
            }
        }
    },
    TagOpen {
        // from < in data
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_102 = 122;
			org.jsoup.parser.CharacterReader p_r_1001_line_102 = r;
			char tokeniser_state_1_expr7_line_102 = p_r_1001_line_102.current();
			int PROBE_END_LINE_102 = 122;
			switch (tokeniser_state_1_expr7_line_102) {
                case '!':
			int PROBE_START_LINE_104 = 104;
			org.jsoup.parser.Tokeniser p_t_1000_line_104 = t;
			org.jsoup.parser.TokeniserState f_markup_declaration_open_1002_line_104 = MarkupDeclarationOpen;
			int PROBE_END_LINE_104 = 104;
			p_t_1000_line_104.advanceTransition(f_markup_declaration_open_1002_line_104);
                    break;
                case '/':
			int PROBE_START_LINE_107 = 107;
			org.jsoup.parser.Tokeniser p_t_1000_line_107 = t;
			org.jsoup.parser.TokeniserState f_end_tag_open_1003_line_107 = EndTagOpen;
			int PROBE_END_LINE_107 = 107;
			p_t_1000_line_107.advanceTransition(f_end_tag_open_1003_line_107);
                    break;
                case '?':
                    t.advanceTransition(BogusComment);
                    break;
                default:
			int PROBE_START_LINE_113 = 120;
			org.jsoup.parser.CharacterReader p_r_1001_line_113 = r;
			boolean tokeniser_state_1_expr10_line_113 = p_r_1001_line_113.matchesLetter();
			int PROBE_END_LINE_113 = 120;
			if (tokeniser_state_1_expr10_line_113) {
                        int PROBE_START_LINE_114 = 114;
						org.jsoup.parser.Tokeniser p_t_1000_line_114 = t;
						int PROBE_END_LINE_114 = 114;
						p_t_1000_line_114.createTagPending(true);
                        int PROBE_START_LINE_115 = 115;
						org.jsoup.parser.Tokeniser p_t_1000_line_115 = t;
						org.jsoup.parser.TokeniserState f_tag_name_1004_line_115 = TagName;
						int PROBE_END_LINE_115 = 115;
						p_t_1000_line_115.transition(f_tag_name_1004_line_115);
                    } else {
                        t.error(this);
                        t.emit('<'); // char that got us here
                        t.transition(Data);
                    }
                    break;
            }
        }
    },
    EndTagOpen {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_127 = 140;
			org.jsoup.parser.CharacterReader p_r_1006_line_127 = r;
			boolean tokeniser_state_1_expr13_line_127 = p_r_1006_line_127.isEmpty();
			int PROBE_END_LINE_127 = 140;
			if (tokeniser_state_1_expr13_line_127) {
                t.eofError(this);
                t.emit("</");
                t.transition(Data);
            } else {
				int PROBE_START_LINE_131 = 140;
				org.jsoup.parser.CharacterReader p_r_1006_line_131 = r;
				boolean tokeniser_state_1_expr14_line_131 = p_r_1006_line_131.matchesLetter();
				int PROBE_END_LINE_131 = 140;
				if (tokeniser_state_1_expr14_line_131) {
					int PROBE_START_LINE_132 = 132;
					org.jsoup.parser.Tokeniser p_t_1005_line_132 = t;
					int PROBE_END_LINE_132 = 132;
					p_t_1005_line_132.createTagPending(false);
					int PROBE_START_LINE_133 = 133;
					org.jsoup.parser.Tokeniser p_t_1005_line_133 = t;
					org.jsoup.parser.TokeniserState f_tag_name_1004_line_133 = TagName;
					int PROBE_END_LINE_133 = 133;
					p_t_1005_line_133.transition(f_tag_name_1004_line_133);
				} else if (r.matches('>')) {
					t.error(this);
					t.advanceTransition(Data);
				} else {
					t.error(this);
					t.advanceTransition(BogusComment);
				}
			}
        }
    },
    TagName {
        // from < or </ in data, will have start or end tag pending
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_148 = 148;
			org.jsoup.parser.CharacterReader p_r_1008_line_148 = r;
			String tokeniser_state_1_expr17_line_148 = p_r_1008_line_148.consumeTagName();
			int PROBE_END_LINE_148 = 148;
			// previous TagOpen state did NOT consume, will have a letter char in current
            //String tagName = r.consumeToAnySorted(tagCharsSorted).toLowerCase();
            String tagName = tokeniser_state_1_expr17_line_148;
            int PROBE_START_LINE_149 = 149;
			org.jsoup.parser.Tokeniser p_t_1007_line_149 = t;
			org.jsoup.parser.Token.Tag q_tag_pending_58_line_149 = p_t_1007_line_149.tagPending;
			String v_tag_name_1009_line_149 = tagName;
			int PROBE_END_LINE_149 = 149;
			q_tag_pending_58_line_149.appendTagName(v_tag_name_1009_line_149);

            int PROBE_START_LINE_151 = 173;
			org.jsoup.parser.CharacterReader p_r_1008_line_151 = r;
			char tokeniser_state_1_expr19_line_151 = p_r_1008_line_151.consume();
			int PROBE_END_LINE_151 = 173;
			switch (tokeniser_state_1_expr19_line_151) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
			int PROBE_START_LINE_157 = 157;
			org.jsoup.parser.Tokeniser p_t_1007_line_157 = t;
			org.jsoup.parser.TokeniserState f_before_attribute_name_1010_line_157 = BeforeAttributeName;
			int PROBE_END_LINE_157 = 157;
			p_t_1007_line_157.transition(f_before_attribute_name_1010_line_157);
                    break;
                case '/':
                    t.transition(SelfClosingStartTag);
                    break;
                case '>':
			int PROBE_START_LINE_163 = 163;
			org.jsoup.parser.Tokeniser p_t_1007_line_163 = t;
			int PROBE_END_LINE_163 = 163;
			p_t_1007_line_163.emitTagPending();
			int PROBE_START_LINE_164 = 164;
			org.jsoup.parser.Tokeniser p_t_1007_line_164 = t;
			org.jsoup.parser.TokeniserState f_data_977_line_164 = Data;
			int PROBE_END_LINE_164 = 164;
			p_t_1007_line_164.transition(f_data_977_line_164);
                    break;
                case nullChar: // replacement
                    t.tagPending.appendTagName(replacementStr);
                    break;
                case eof: // should emit pending tag?
                    t.eofError(this);
                    t.transition(Data);
                // no default, as covered with above consumeToAny
            }
        }
    },
    RcdataLessthanSign {
        // from < in rcdata
        void read(Tokeniser t, CharacterReader r) {
            if (r.matches('/')) {
                t.createTempBuffer();
                t.advanceTransition(RCDATAEndTagOpen);
            } else if (r.matchesLetter() && t.appropriateEndTagName() != null && !r.containsIgnoreCase("</" + t.appropriateEndTagName())) {
                // diverge from spec: got a start tag, but there's no appropriate end tag (</title>), so rather than
                // consuming to EOF; break out here
                t.tagPending = t.createTagPending(false).name(t.appropriateEndTagName());
                t.emitTagPending();
                r.unconsume(); // undo "<"
                t.transition(Data);
            } else {
                t.emit("<");
                t.transition(Rcdata);
            }
        }
    },
    RCDATAEndTagOpen {
        void read(Tokeniser t, CharacterReader r) {
            if (r.matchesLetter()) {
                t.createTagPending(false);
                t.tagPending.appendTagName(r.current());
                t.dataBuffer.append(r.current());
                t.advanceTransition(RCDATAEndTagName);
            } else {
                t.emit("</");
                t.transition(Rcdata);
            }
        }
    },
    RCDATAEndTagName {
        void read(Tokeniser t, CharacterReader r) {
            if (r.matchesLetter()) {
                String name = r.consumeLetterSequence();
                t.tagPending.appendTagName(name);
                t.dataBuffer.append(name);
                return;
            }

            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    if (t.isAppropriateEndTagToken())
                        t.transition(BeforeAttributeName);
                    else
                        anythingElse(t, r);
                    break;
                case '/':
                    if (t.isAppropriateEndTagToken())
                        t.transition(SelfClosingStartTag);
                    else
                        anythingElse(t, r);
                    break;
                case '>':
                    if (t.isAppropriateEndTagToken()) {
                        t.emitTagPending();
                        t.transition(Data);
                    }
                    else
                        anythingElse(t, r);
                    break;
                default:
                    anythingElse(t, r);
            }
        }

        private void anythingElse(Tokeniser t, CharacterReader r) {
            t.emit("</" + t.dataBuffer.toString());
            r.unconsume();
            t.transition(Rcdata);
        }
    },
    RawtextLessthanSign {
        void read(Tokeniser t, CharacterReader r) {
            if (r.matches('/')) {
                t.createTempBuffer();
                t.advanceTransition(RawtextEndTagOpen);
            } else {
                t.emit('<');
                t.transition(Rawtext);
            }
        }
    },
    RawtextEndTagOpen {
        void read(Tokeniser t, CharacterReader r) {
            readEndTag(t, r, RawtextEndTagName, Rawtext);
        }
    },
    RawtextEndTagName {
        void read(Tokeniser t, CharacterReader r) {
            handleDataEndTag(t, r, Rawtext);
        }
    },
    ScriptDataLessthanSign {
        void read(Tokeniser t, CharacterReader r) {
            switch (r.consume()) {
                case '/':
                    t.createTempBuffer();
                    t.transition(ScriptDataEndTagOpen);
                    break;
                case '!':
                    t.emit("<!");
                    t.transition(ScriptDataEscapeStart);
                    break;
                default:
                    t.emit("<");
                    r.unconsume();
                    t.transition(ScriptData);
            }
        }
    },
    ScriptDataEndTagOpen {
        void read(Tokeniser t, CharacterReader r) {
            readEndTag(t, r, ScriptDataEndTagName, ScriptData);
        }
    },
    ScriptDataEndTagName {
        void read(Tokeniser t, CharacterReader r) {
            handleDataEndTag(t, r, ScriptData);
        }
    },
    ScriptDataEscapeStart {
        void read(Tokeniser t, CharacterReader r) {
            if (r.matches('-')) {
                t.emit('-');
                t.advanceTransition(ScriptDataEscapeStartDash);
            } else {
                t.transition(ScriptData);
            }
        }
    },
    ScriptDataEscapeStartDash {
        void read(Tokeniser t, CharacterReader r) {
            if (r.matches('-')) {
                t.emit('-');
                t.advanceTransition(ScriptDataEscapedDashDash);
            } else {
                t.transition(ScriptData);
            }
        }
    },
    ScriptDataEscaped {
        void read(Tokeniser t, CharacterReader r) {
            if (r.isEmpty()) {
                t.eofError(this);
                t.transition(Data);
                return;
            }

            switch (r.current()) {
                case '-':
                    t.emit('-');
                    t.advanceTransition(ScriptDataEscapedDash);
                    break;
                case '<':
                    t.advanceTransition(ScriptDataEscapedLessthanSign);
                    break;
                case nullChar:
                    t.error(this);
                    r.advance();
                    t.emit(replacementChar);
                    break;
                default:
                    String data = r.consumeToAny('-', '<', nullChar);
                    t.emit(data);
            }
        }
    },
    ScriptDataEscapedDash {
        void read(Tokeniser t, CharacterReader r) {
            if (r.isEmpty()) {
                t.eofError(this);
                t.transition(Data);
                return;
            }

            char c = r.consume();
            switch (c) {
                case '-':
                    t.emit(c);
                    t.transition(ScriptDataEscapedDashDash);
                    break;
                case '<':
                    t.transition(ScriptDataEscapedLessthanSign);
                    break;
                case nullChar:
                    t.error(this);
                    t.emit(replacementChar);
                    t.transition(ScriptDataEscaped);
                    break;
                default:
                    t.emit(c);
                    t.transition(ScriptDataEscaped);
            }
        }
    },
    ScriptDataEscapedDashDash {
        void read(Tokeniser t, CharacterReader r) {
            if (r.isEmpty()) {
                t.eofError(this);
                t.transition(Data);
                return;
            }

            char c = r.consume();
            switch (c) {
                case '-':
                    t.emit(c);
                    break;
                case '<':
                    t.transition(ScriptDataEscapedLessthanSign);
                    break;
                case '>':
                    t.emit(c);
                    t.transition(ScriptData);
                    break;
                case nullChar:
                    t.error(this);
                    t.emit(replacementChar);
                    t.transition(ScriptDataEscaped);
                    break;
                default:
                    t.emit(c);
                    t.transition(ScriptDataEscaped);
            }
        }
    },
    ScriptDataEscapedLessthanSign {
        void read(Tokeniser t, CharacterReader r) {
            if (r.matchesLetter()) {
                t.createTempBuffer();
                t.dataBuffer.append(r.current());
                t.emit("<" + r.current());
                t.advanceTransition(ScriptDataDoubleEscapeStart);
            } else if (r.matches('/')) {
                t.createTempBuffer();
                t.advanceTransition(ScriptDataEscapedEndTagOpen);
            } else {
                t.emit('<');
                t.transition(ScriptDataEscaped);
            }
        }
    },
    ScriptDataEscapedEndTagOpen {
        void read(Tokeniser t, CharacterReader r) {
            if (r.matchesLetter()) {
                t.createTagPending(false);
                t.tagPending.appendTagName(r.current());
                t.dataBuffer.append(r.current());
                t.advanceTransition(ScriptDataEscapedEndTagName);
            } else {
                t.emit("</");
                t.transition(ScriptDataEscaped);
            }
        }
    },
    ScriptDataEscapedEndTagName {
        void read(Tokeniser t, CharacterReader r) {
            handleDataEndTag(t, r, ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscapeStart {
        void read(Tokeniser t, CharacterReader r) {
            handleDataDoubleEscapeTag(t, r, ScriptDataDoubleEscaped, ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscaped {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.current();
            switch (c) {
                case '-':
                    t.emit(c);
                    t.advanceTransition(ScriptDataDoubleEscapedDash);
                    break;
                case '<':
                    t.emit(c);
                    t.advanceTransition(ScriptDataDoubleEscapedLessthanSign);
                    break;
                case nullChar:
                    t.error(this);
                    r.advance();
                    t.emit(replacementChar);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                default:
                    String data = r.consumeToAny('-', '<', nullChar);
                    t.emit(data);
            }
        }
    },
    ScriptDataDoubleEscapedDash {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '-':
                    t.emit(c);
                    t.transition(ScriptDataDoubleEscapedDashDash);
                    break;
                case '<':
                    t.emit(c);
                    t.transition(ScriptDataDoubleEscapedLessthanSign);
                    break;
                case nullChar:
                    t.error(this);
                    t.emit(replacementChar);
                    t.transition(ScriptDataDoubleEscaped);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                default:
                    t.emit(c);
                    t.transition(ScriptDataDoubleEscaped);
            }
        }
    },
    ScriptDataDoubleEscapedDashDash {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '-':
                    t.emit(c);
                    break;
                case '<':
                    t.emit(c);
                    t.transition(ScriptDataDoubleEscapedLessthanSign);
                    break;
                case '>':
                    t.emit(c);
                    t.transition(ScriptData);
                    break;
                case nullChar:
                    t.error(this);
                    t.emit(replacementChar);
                    t.transition(ScriptDataDoubleEscaped);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                default:
                    t.emit(c);
                    t.transition(ScriptDataDoubleEscaped);
            }
        }
    },
    ScriptDataDoubleEscapedLessthanSign {
        void read(Tokeniser t, CharacterReader r) {
            if (r.matches('/')) {
                t.emit('/');
                t.createTempBuffer();
                t.advanceTransition(ScriptDataDoubleEscapeEnd);
            } else {
                t.transition(ScriptDataDoubleEscaped);
            }
        }
    },
    ScriptDataDoubleEscapeEnd {
        void read(Tokeniser t, CharacterReader r) {
            handleDataDoubleEscapeTag(t,r, ScriptDataEscaped, ScriptDataDoubleEscaped);
        }
    },
    BeforeAttributeName {
        // from tagname <xxx
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_551 = 551;
			org.jsoup.parser.CharacterReader p_r_1083_line_551 = r;
			char tokeniser_state_1_expr23_line_551 = p_r_1083_line_551.consume();
			int PROBE_END_LINE_551 = 551;
			char c = tokeniser_state_1_expr23_line_551;
            int PROBE_START_LINE_552 = 589;
			char v_c_1084_line_552 = c;
			int PROBE_END_LINE_552 = 589;
			switch (v_c_1084_line_552) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    break; // ignore whitespace
                case '/':
                    t.transition(SelfClosingStartTag);
                    break;
                case '>':
                    t.emitTagPending();
                    t.transition(Data);
                    break;
                case nullChar:
                    t.error(this);
                    t.tagPending.newAttribute();
                    r.unconsume();
                    t.transition(AttributeName);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                case '"':
                case '\'':
                case '<':
                case '=':
                    t.error(this);
                    t.tagPending.newAttribute();
                    t.tagPending.appendAttributeName(c);
                    t.transition(AttributeName);
                    break;
                default: // A-Z, anything else
			int PROBE_START_LINE_586 = 586;
			org.jsoup.parser.Tokeniser p_t_1082_line_586 = t;
			org.jsoup.parser.Token.Tag q_tag_pending_59_line_586 = p_t_1082_line_586.tagPending;
			int PROBE_END_LINE_586 = 586;
			q_tag_pending_59_line_586.newAttribute();
			int PROBE_START_LINE_587 = 587;
			org.jsoup.parser.CharacterReader p_r_1083_line_587 = r;
			int PROBE_END_LINE_587 = 587;
			p_r_1083_line_587.unconsume();
			int PROBE_START_LINE_588 = 588;
			org.jsoup.parser.Tokeniser p_t_1082_line_588 = t;
			org.jsoup.parser.TokeniserState f_attribute_name_1085_line_588 = AttributeName;
			int PROBE_END_LINE_588 = 588;
			p_t_1082_line_588.transition(f_attribute_name_1085_line_588);
            }
        }
    },
    AttributeName {
        // from before attribute name
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_595 = 595;
			org.jsoup.parser.CharacterReader p_r_1087_line_595 = r;
			char[] f_attribute_name_chars_sorted_1089_line_595 = attributeNameCharsSorted;
			String tokeniser_state_1_expr27_line_595 = p_r_1087_line_595
					.consumeToAnySorted(f_attribute_name_chars_sorted_1089_line_595);
			int PROBE_END_LINE_595 = 595;
			String name = tokeniser_state_1_expr27_line_595;
            int PROBE_START_LINE_596 = 596;
			org.jsoup.parser.Tokeniser p_t_1086_line_596 = t;
			org.jsoup.parser.Token.Tag q_tag_pending_60_line_596 = p_t_1086_line_596.tagPending;
			String v_name_1088_line_596 = name;
			int PROBE_END_LINE_596 = 596;
			q_tag_pending_60_line_596.appendAttributeName(v_name_1088_line_596);

            int PROBE_START_LINE_598 = 598;
			org.jsoup.parser.CharacterReader p_r_1087_line_598 = r;
			char tokeniser_state_1_expr29_line_598 = p_r_1087_line_598.consume();
			int PROBE_END_LINE_598 = 598;
			char c = tokeniser_state_1_expr29_line_598;
            int PROBE_START_LINE_599 = 631;
			char v_c_1090_line_599 = c;
			int PROBE_END_LINE_599 = 631;
			switch (v_c_1090_line_599) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    t.transition(AfterAttributeName);
                    break;
                case '/':
                    t.transition(SelfClosingStartTag);
                    break;
                case '=':
			int PROBE_START_LINE_611 = 611;
			org.jsoup.parser.Tokeniser p_t_1086_line_611 = t;
			org.jsoup.parser.TokeniserState f_before_attribute_value_1091_line_611 = BeforeAttributeValue;
			int PROBE_END_LINE_611 = 611;
			p_t_1086_line_611.transition(f_before_attribute_value_1091_line_611);
                    break;
                case '>':
                    t.emitTagPending();
                    t.transition(Data);
                    break;
                case nullChar:
                    t.error(this);
                    t.tagPending.appendAttributeName(replacementChar);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                case '"':
                case '\'':
                case '<':
                    t.error(this);
                    t.tagPending.appendAttributeName(c);
                // no default, as covered in consumeToAny
            }
        }
    },
    AfterAttributeName {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    // ignore
                    break;
                case '/':
                    t.transition(SelfClosingStartTag);
                    break;
                case '=':
                    t.transition(BeforeAttributeValue);
                    break;
                case '>':
                    t.emitTagPending();
                    t.transition(Data);
                    break;
                case nullChar:
                    t.error(this);
                    t.tagPending.appendAttributeName(replacementChar);
                    t.transition(AttributeName);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                case '"':
                case '\'':
                case '<':
                    t.error(this);
                    t.tagPending.newAttribute();
                    t.tagPending.appendAttributeName(c);
                    t.transition(AttributeName);
                    break;
                default: // A-Z, anything else
                    t.tagPending.newAttribute();
                    r.unconsume();
                    t.transition(AttributeName);
            }
        }
    },
    BeforeAttributeValue {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_681 = 681;
			org.jsoup.parser.CharacterReader p_r_1096_line_681 = r;
			char tokeniser_state_1_expr31_line_681 = p_r_1096_line_681.consume();
			int PROBE_END_LINE_681 = 681;
			char c = tokeniser_state_1_expr31_line_681;
            int PROBE_START_LINE_682 = 725;
			char v_c_1097_line_682 = c;
			int PROBE_END_LINE_682 = 725;
			switch (v_c_1097_line_682) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    // ignore
                    break;
                case '"':
			int PROBE_START_LINE_691 = 691;
			org.jsoup.parser.Tokeniser p_t_1095_line_691 = t;
			org.jsoup.parser.TokeniserState f_attribute_value_double_quoted_1098_line_691 = AttributeValue_doubleQuoted;
			int PROBE_END_LINE_691 = 691;
			p_t_1095_line_691.transition(f_attribute_value_double_quoted_1098_line_691);
                    break;
                case '&':
                    r.unconsume();
                    t.transition(AttributeValue_unquoted);
                    break;
                case '\'':
                    t.transition(AttributeValue_singleQuoted);
                    break;
                case nullChar:
                    t.error(this);
                    t.tagPending.appendAttributeValue(replacementChar);
                    t.transition(AttributeValue_unquoted);
                    break;
                case eof:
                    t.eofError(this);
                    t.emitTagPending();
                    t.transition(Data);
                    break;
                case '>':
                    t.error(this);
                    t.emitTagPending();
                    t.transition(Data);
                    break;
                case '<':
                case '=':
                case '`':
                    t.error(this);
                    t.tagPending.appendAttributeValue(c);
                    t.transition(AttributeValue_unquoted);
                    break;
                default:
                    r.unconsume();
                    t.transition(AttributeValue_unquoted);
            }
        }
    },
    AttributeValue_doubleQuoted {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_730 = 730;
			org.jsoup.parser.CharacterReader p_r_1100_line_730 = r;
			char[] f_attribute_double_value_chars_sorted_1102_line_730 = attributeDoubleValueCharsSorted;
			String tokeniser_state_1_expr33_line_730 = p_r_1100_line_730
					.consumeToAny(f_attribute_double_value_chars_sorted_1102_line_730);
			int PROBE_END_LINE_730 = 730;
			String value = tokeniser_state_1_expr33_line_730;
            int PROBE_START_LINE_731 = 734;
			String v_value_1101_line_731 = value;
			int tokeniser_state_1_expr35_line_731 = v_value_1101_line_731.length();
			boolean tokeniser_state_1_expr34_line_731 = tokeniser_state_1_expr35_line_731 > 0;
			int PROBE_END_LINE_731 = 734;
			if (tokeniser_state_1_expr34_line_731) {
				int PROBE_START_LINE_732 = 732;
				org.jsoup.parser.Tokeniser p_t_1099_line_732 = t;
				org.jsoup.parser.Token.Tag q_tag_pending_61_line_732 = p_t_1099_line_732.tagPending;
				String v_value_1101_line_732 = value;
				int PROBE_END_LINE_732 = 732;
				q_tag_pending_61_line_732.appendAttributeValue(v_value_1101_line_732);
			} else
                t.tagPending.setEmptyAttributeValue();

            int PROBE_START_LINE_736 = 736;
			org.jsoup.parser.CharacterReader p_r_1100_line_736 = r;
			char tokeniser_state_1_expr37_line_736 = p_r_1100_line_736.consume();
			int PROBE_END_LINE_736 = 736;
			char c = tokeniser_state_1_expr37_line_736;
            int PROBE_START_LINE_737 = 757;
			char v_c_1103_line_737 = c;
			int PROBE_END_LINE_737 = 757;
			switch (v_c_1103_line_737) {
                case '"':
			int PROBE_START_LINE_739 = 739;
			org.jsoup.parser.Tokeniser p_t_1099_line_739 = t;
			org.jsoup.parser.TokeniserState f_after_attribute_value_quoted_1104_line_739 = AfterAttributeValue_quoted;
			int PROBE_END_LINE_739 = 739;
			p_t_1099_line_739.transition(f_after_attribute_value_quoted_1104_line_739);
                    break;
                case '&':
                    int[] ref = t.consumeCharacterReference('"', true);
                    if (ref != null)
                        t.tagPending.appendAttributeValue(ref);
                    else
                        t.tagPending.appendAttributeValue('&');
                    break;
                case nullChar:
                    t.error(this);
                    t.tagPending.appendAttributeValue(replacementChar);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                // no default, handled in consume to any above
            }
        }
    },
    AttributeValue_singleQuoted {
        void read(Tokeniser t, CharacterReader r) {
            String value = r.consumeToAny(attributeSingleValueCharsSorted);
            if (value.length() > 0)
                t.tagPending.appendAttributeValue(value);
            else
                t.tagPending.setEmptyAttributeValue();

            char c = r.consume();
            switch (c) {
                case '\'':
                    t.transition(AfterAttributeValue_quoted);
                    break;
                case '&':
                    int[] ref = t.consumeCharacterReference('\'', true);
                    if (ref != null)
                        t.tagPending.appendAttributeValue(ref);
                    else
                        t.tagPending.appendAttributeValue('&');
                    break;
                case nullChar:
                    t.error(this);
                    t.tagPending.appendAttributeValue(replacementChar);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                // no default, handled in consume to any above
            }
        }
    },
    AttributeValue_unquoted {
        void read(Tokeniser t, CharacterReader r) {
            String value = r.consumeToAnySorted(attributeValueUnquoted);
            if (value.length() > 0)
                t.tagPending.appendAttributeValue(value);

            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    t.transition(BeforeAttributeName);
                    break;
                case '&':
                    int[] ref = t.consumeCharacterReference('>', true);
                    if (ref != null)
                        t.tagPending.appendAttributeValue(ref);
                    else
                        t.tagPending.appendAttributeValue('&');
                    break;
                case '>':
                    t.emitTagPending();
                    t.transition(Data);
                    break;
                case nullChar:
                    t.error(this);
                    t.tagPending.appendAttributeValue(replacementChar);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                case '"':
                case '\'':
                case '<':
                case '=':
                case '`':
                    t.error(this);
                    t.tagPending.appendAttributeValue(c);
                    break;
                // no default, handled in consume to any above
            }

        }
    },
    // CharacterReferenceInAttributeValue state handled inline
    AfterAttributeValue_quoted {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_842 = 842;
			org.jsoup.parser.CharacterReader p_r_1112_line_842 = r;
			char tokeniser_state_1_expr39_line_842 = p_r_1112_line_842.consume();
			int PROBE_END_LINE_842 = 842;
			char c = tokeniser_state_1_expr39_line_842;
            int PROBE_START_LINE_843 = 866;
			char v_c_1113_line_843 = c;
			int PROBE_END_LINE_843 = 866;
			switch (v_c_1113_line_843) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    t.transition(BeforeAttributeName);
                    break;
                case '/':
                    t.transition(SelfClosingStartTag);
                    break;
                case '>':
			int PROBE_START_LINE_855 = 855;
			org.jsoup.parser.Tokeniser p_t_1111_line_855 = t;
			int PROBE_END_LINE_855 = 855;
			p_t_1111_line_855.emitTagPending();
			int PROBE_START_LINE_856 = 856;
			org.jsoup.parser.Tokeniser p_t_1111_line_856 = t;
			org.jsoup.parser.TokeniserState f_data_977_line_856 = Data;
			int PROBE_END_LINE_856 = 856;
			p_t_1111_line_856.transition(f_data_977_line_856);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
                    r.unconsume();
                    t.transition(BeforeAttributeName);
            }

        }
    },
    SelfClosingStartTag {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '>':
                    t.tagPending.selfClosing = true;
                    t.emitTagPending();
                    t.transition(Data);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
                    r.unconsume();
                    t.transition(BeforeAttributeName);
            }
        }
    },
    BogusComment {
        void read(Tokeniser t, CharacterReader r) {
            // todo: handle bogus comment starting from eof. when does that trigger?
            // rewind to capture character that lead us here
            r.unconsume();
            Token.Comment comment = new Token.Comment();
            comment.bogus = true;
            comment.data.append(r.consumeTo('>'));
            // todo: replace nullChar with replaceChar
            t.emit(comment);
            t.advanceTransition(Data);
        }
    },
    MarkupDeclarationOpen {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_905 = 918;
			org.jsoup.parser.CharacterReader p_r_1121_line_905 = r;
			boolean tokeniser_state_1_expr42_line_905 = p_r_1121_line_905.matchConsume("--");
			int PROBE_END_LINE_905 = 918;
			if (tokeniser_state_1_expr42_line_905) {
                t.createCommentPending();
                t.transition(CommentStart);
            } else {
				int PROBE_START_LINE_908 = 918;
				org.jsoup.parser.CharacterReader p_r_1121_line_908 = r;
				boolean tokeniser_state_1_expr43_line_908 = p_r_1121_line_908.matchConsumeIgnoreCase("DOCTYPE");
				int PROBE_END_LINE_908 = 918;
				if (tokeniser_state_1_expr43_line_908) {
					int PROBE_START_LINE_909 = 909;
					org.jsoup.parser.Tokeniser p_t_1120_line_909 = t;
					org.jsoup.parser.TokeniserState f_doctype_1122_line_909 = Doctype;
					int PROBE_END_LINE_909 = 909;
					p_t_1120_line_909.transition(f_doctype_1122_line_909);
				} else if (r.matchConsume("[CDATA[")) {
					t.transition(CdataSection);
				} else {
					t.error(this);
					t.advanceTransition(BogusComment);
				}
			}
        }
    },
    CommentStart {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '-':
                    t.transition(CommentStartDash);
                    break;
                case nullChar:
                    t.error(this);
                    t.commentPending.data.append(replacementChar);
                    t.transition(Comment);
                    break;
                case '>':
                    t.error(this);
                    t.emitCommentPending();
                    t.transition(Data);
                    break;
                case eof:
                    t.eofError(this);
                    t.emitCommentPending();
                    t.transition(Data);
                    break;
                default:
                    t.commentPending.data.append(c);
                    t.transition(Comment);
            }
        }
    },
    CommentStartDash {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '-':
                    t.transition(CommentStartDash);
                    break;
                case nullChar:
                    t.error(this);
                    t.commentPending.data.append(replacementChar);
                    t.transition(Comment);
                    break;
                case '>':
                    t.error(this);
                    t.emitCommentPending();
                    t.transition(Data);
                    break;
                case eof:
                    t.eofError(this);
                    t.emitCommentPending();
                    t.transition(Data);
                    break;
                default:
                    t.commentPending.data.append(c);
                    t.transition(Comment);
            }
        }
    },
    Comment {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.current();
            switch (c) {
                case '-':
                    t.advanceTransition(CommentEndDash);
                    break;
                case nullChar:
                    t.error(this);
                    r.advance();
                    t.commentPending.data.append(replacementChar);
                    break;
                case eof:
                    t.eofError(this);
                    t.emitCommentPending();
                    t.transition(Data);
                    break;
                default:
                    t.commentPending.data.append(r.consumeToAny('-', nullChar));
            }
        }
    },
    CommentEndDash {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '-':
                    t.transition(CommentEnd);
                    break;
                case nullChar:
                    t.error(this);
                    t.commentPending.data.append('-').append(replacementChar);
                    t.transition(Comment);
                    break;
                case eof:
                    t.eofError(this);
                    t.emitCommentPending();
                    t.transition(Data);
                    break;
                default:
                    t.commentPending.data.append('-').append(c);
                    t.transition(Comment);
            }
        }
    },
    CommentEnd {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '>':
                    t.emitCommentPending();
                    t.transition(Data);
                    break;
                case nullChar:
                    t.error(this);
                    t.commentPending.data.append("--").append(replacementChar);
                    t.transition(Comment);
                    break;
                case '!':
                    t.error(this);
                    t.transition(CommentEndBang);
                    break;
                case '-':
                    t.error(this);
                    t.commentPending.data.append('-');
                    break;
                case eof:
                    t.eofError(this);
                    t.emitCommentPending();
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
                    t.commentPending.data.append("--").append(c);
                    t.transition(Comment);
            }
        }
    },
    CommentEndBang {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '-':
                    t.commentPending.data.append("--!");
                    t.transition(CommentEndDash);
                    break;
                case '>':
                    t.emitCommentPending();
                    t.transition(Data);
                    break;
                case nullChar:
                    t.error(this);
                    t.commentPending.data.append("--!").append(replacementChar);
                    t.transition(Comment);
                    break;
                case eof:
                    t.eofError(this);
                    t.emitCommentPending();
                    t.transition(Data);
                    break;
                default:
                    t.commentPending.data.append("--!").append(c);
                    t.transition(Comment);
            }
        }
    },
    Doctype {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_1085 = 1085;
			org.jsoup.parser.CharacterReader p_r_1142_line_1085 = r;
			char tokeniser_state_1_expr45_line_1085 = p_r_1142_line_1085.consume();
			int PROBE_END_LINE_1085 = 1085;
			char c = tokeniser_state_1_expr45_line_1085;
            int PROBE_START_LINE_1086 = 1107;
			char v_c_1143_line_1086 = c;
			int PROBE_END_LINE_1086 = 1107;
			switch (v_c_1143_line_1086) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
			int PROBE_START_LINE_1092 = 1092;
			org.jsoup.parser.Tokeniser p_t_1141_line_1092 = t;
			org.jsoup.parser.TokeniserState f_before_doctype_name_1144_line_1092 = BeforeDoctypeName;
			int PROBE_END_LINE_1092 = 1092;
			p_t_1141_line_1092.transition(f_before_doctype_name_1144_line_1092);
                    break;
                case eof:
                    t.eofError(this);
                    // note: fall through to > case
                case '>': // catch invalid <!DOCTYPE>
                    t.error(this);
                    t.createDoctypePending();
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
                    t.transition(BeforeDoctypeName);
            }
        }
    },
    BeforeDoctypeName {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_1112 = 1116;
			org.jsoup.parser.CharacterReader p_r_1146_line_1112 = r;
			boolean tokeniser_state_1_expr47_line_1112 = p_r_1146_line_1112.matchesLetter();
			int PROBE_END_LINE_1112 = 1116;
			if (tokeniser_state_1_expr47_line_1112) {
                int PROBE_START_LINE_1113 = 1113;
				org.jsoup.parser.Tokeniser p_t_1145_line_1113 = t;
				int PROBE_END_LINE_1113 = 1113;
				p_t_1145_line_1113.createDoctypePending();
                int PROBE_START_LINE_1114 = 1114;
				org.jsoup.parser.Tokeniser p_t_1145_line_1114 = t;
				org.jsoup.parser.TokeniserState f_doctype_name_1147_line_1114 = DoctypeName;
				int PROBE_END_LINE_1114 = 1114;
				p_t_1145_line_1114.transition(f_doctype_name_1147_line_1114);
                return;
            }
            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    break; // ignore whitespace
                case nullChar:
                    t.error(this);
                    t.createDoctypePending();
                    t.doctypePending.name.append(replacementChar);
                    t.transition(DoctypeName);
                    break;
                case eof:
                    t.eofError(this);
                    t.createDoctypePending();
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.createDoctypePending();
                    t.doctypePending.name.append(c);
                    t.transition(DoctypeName);
            }
        }
    },
    DoctypeName {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_1147 = 1151;
			org.jsoup.parser.CharacterReader p_r_1149_line_1147 = r;
			boolean tokeniser_state_1_expr50_line_1147 = p_r_1149_line_1147.matchesLetter();
			int PROBE_END_LINE_1147 = 1151;
			if (tokeniser_state_1_expr50_line_1147) {
                int PROBE_START_LINE_1148 = 1148;
				org.jsoup.parser.CharacterReader p_r_1149_line_1148 = r;
				String tokeniser_state_1_expr51_line_1148 = p_r_1149_line_1148.consumeLetterSequence();
				int PROBE_END_LINE_1148 = 1148;
				String name = tokeniser_state_1_expr51_line_1148;
                int PROBE_START_LINE_1149 = 1149;
				StringBuilder q_name_62_line_1149 = t.doctypePending.name;
				String v_name_1150_line_1149 = name;
				int PROBE_END_LINE_1149 = 1149;
				q_name_62_line_1149.append(v_name_1150_line_1149);
                return;
            }
            int PROBE_START_LINE_1152 = 1152;
			org.jsoup.parser.CharacterReader p_r_1149_line_1152 = r;
			char tokeniser_state_1_expr53_line_1152 = p_r_1149_line_1152.consume();
			int PROBE_END_LINE_1152 = 1152;
			char c = tokeniser_state_1_expr53_line_1152;
            int PROBE_START_LINE_1153 = 1177;
			char v_c_1151_line_1153 = c;
			int PROBE_END_LINE_1153 = 1177;
			switch (v_c_1151_line_1153) {
                case '>':
			int PROBE_START_LINE_1155 = 1155;
			org.jsoup.parser.Tokeniser p_t_1148_line_1155 = t;
			int PROBE_END_LINE_1155 = 1155;
			p_t_1148_line_1155.emitDoctypePending();
			int PROBE_START_LINE_1156 = 1156;
			org.jsoup.parser.Tokeniser p_t_1148_line_1156 = t;
			org.jsoup.parser.TokeniserState f_data_977_line_1156 = Data;
			int PROBE_END_LINE_1156 = 1156;
			p_t_1148_line_1156.transition(f_data_977_line_1156);
                    break;
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    t.transition(AfterDoctypeName);
                    break;
                case nullChar:
                    t.error(this);
                    t.doctypePending.name.append(replacementChar);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.doctypePending.name.append(c);
            }
        }
    },
    AfterDoctypeName {
        void read(Tokeniser t, CharacterReader r) {
            if (r.isEmpty()) {
                t.eofError(this);
                t.doctypePending.forceQuirks = true;
                t.emitDoctypePending();
                t.transition(Data);
                return;
            }
            if (r.matchesAny('\t', '\n', '\r', '\f', ' '))
                r.advance(); // ignore whitespace
            else if (r.matches('>')) {
                t.emitDoctypePending();
                t.advanceTransition(Data);
            } else if (r.matchConsumeIgnoreCase(DocumentType.PUBLIC_KEY)) {
                t.doctypePending.pubSysKey = DocumentType.PUBLIC_KEY;
                t.transition(AfterDoctypePublicKeyword);
            } else if (r.matchConsumeIgnoreCase(DocumentType.SYSTEM_KEY)) {
                t.doctypePending.pubSysKey = DocumentType.SYSTEM_KEY;
                t.transition(AfterDoctypeSystemKeyword);
            } else {
                t.error(this);
                t.doctypePending.forceQuirks = true;
                t.advanceTransition(BogusDoctype);
            }

        }
    },
    AfterDoctypePublicKeyword {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    t.transition(BeforeDoctypePublicIdentifier);
                    break;
                case '"':
                    t.error(this);
                    // set public id to empty string
                    t.transition(DoctypePublicIdentifier_doubleQuoted);
                    break;
                case '\'':
                    t.error(this);
                    // set public id to empty string
                    t.transition(DoctypePublicIdentifier_singleQuoted);
                    break;
                case '>':
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.transition(BogusDoctype);
            }
        }
    },
    BeforeDoctypePublicIdentifier {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    break;
                case '"':
                    // set public id to empty string
                    t.transition(DoctypePublicIdentifier_doubleQuoted);
                    break;
                case '\'':
                    // set public id to empty string
                    t.transition(DoctypePublicIdentifier_singleQuoted);
                    break;
                case '>':
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.transition(BogusDoctype);
            }
        }
    },
    DoctypePublicIdentifier_doubleQuoted {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '"':
                    t.transition(AfterDoctypePublicIdentifier);
                    break;
                case nullChar:
                    t.error(this);
                    t.doctypePending.publicIdentifier.append(replacementChar);
                    break;
                case '>':
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.doctypePending.publicIdentifier.append(c);
            }
        }
    },
    DoctypePublicIdentifier_singleQuoted {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '\'':
                    t.transition(AfterDoctypePublicIdentifier);
                    break;
                case nullChar:
                    t.error(this);
                    t.doctypePending.publicIdentifier.append(replacementChar);
                    break;
                case '>':
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.doctypePending.publicIdentifier.append(c);
            }
        }
    },
    AfterDoctypePublicIdentifier {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    t.transition(BetweenDoctypePublicAndSystemIdentifiers);
                    break;
                case '>':
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case '"':
                    t.error(this);
                    // system id empty
                    t.transition(DoctypeSystemIdentifier_doubleQuoted);
                    break;
                case '\'':
                    t.error(this);
                    // system id empty
                    t.transition(DoctypeSystemIdentifier_singleQuoted);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.transition(BogusDoctype);
            }
        }
    },
    BetweenDoctypePublicAndSystemIdentifiers {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    break;
                case '>':
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case '"':
                    t.error(this);
                    // system id empty
                    t.transition(DoctypeSystemIdentifier_doubleQuoted);
                    break;
                case '\'':
                    t.error(this);
                    // system id empty
                    t.transition(DoctypeSystemIdentifier_singleQuoted);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.transition(BogusDoctype);
            }
        }
    },
    AfterDoctypeSystemKeyword {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    t.transition(BeforeDoctypeSystemIdentifier);
                    break;
                case '>':
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case '"':
                    t.error(this);
                    // system id empty
                    t.transition(DoctypeSystemIdentifier_doubleQuoted);
                    break;
                case '\'':
                    t.error(this);
                    // system id empty
                    t.transition(DoctypeSystemIdentifier_singleQuoted);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
            }
        }
    },
    BeforeDoctypeSystemIdentifier {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    break;
                case '"':
                    // set system id to empty string
                    t.transition(DoctypeSystemIdentifier_doubleQuoted);
                    break;
                case '\'':
                    // set public id to empty string
                    t.transition(DoctypeSystemIdentifier_singleQuoted);
                    break;
                case '>':
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.transition(BogusDoctype);
            }
        }
    },
    DoctypeSystemIdentifier_doubleQuoted {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '"':
                    t.transition(AfterDoctypeSystemIdentifier);
                    break;
                case nullChar:
                    t.error(this);
                    t.doctypePending.systemIdentifier.append(replacementChar);
                    break;
                case '>':
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.doctypePending.systemIdentifier.append(c);
            }
        }
    },
    DoctypeSystemIdentifier_singleQuoted {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '\'':
                    t.transition(AfterDoctypeSystemIdentifier);
                    break;
                case nullChar:
                    t.error(this);
                    t.doctypePending.systemIdentifier.append(replacementChar);
                    break;
                case '>':
                    t.error(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.doctypePending.systemIdentifier.append(c);
            }
        }
    },
    AfterDoctypeSystemIdentifier {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    break;
                case '>':
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case eof:
                    t.eofError(this);
                    t.doctypePending.forceQuirks = true;
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
                    t.transition(BogusDoctype);
                    // NOT force quirks
            }
        }
    },
    BogusDoctype {
        void read(Tokeniser t, CharacterReader r) {
            char c = r.consume();
            switch (c) {
                case '>':
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                case eof:
                    t.emitDoctypePending();
                    t.transition(Data);
                    break;
                default:
                    // ignore char
                    break;
            }
        }
    },
    CdataSection {
        void read(Tokeniser t, CharacterReader r) {
            String data = r.consumeTo("]]>");
            t.emit(data);
            r.matchConsume("]]>");
            t.transition(Data);
        }
    };


    abstract void read(Tokeniser t, CharacterReader r);

    static final char nullChar = '\u0000';
    int PROBE_START_LINE_1607 = 1607;

	private static final char f_null_char_1197_line_1607 = nullChar;

	int PROBE_END_LINE_1607 = 1607;

	private static final char[] attributeSingleValueCharsSorted = new char[]{'\'', '&', f_null_char_1197_line_1607};
    int PROBE_START_LINE_1608 = 1608;

	private static final char f_null_char_1197_line_1608 = nullChar;

	int PROBE_END_LINE_1608 = 1608;

	private static final char[] attributeDoubleValueCharsSorted = new char[]{'"', '&', f_null_char_1197_line_1608};
    int PROBE_START_LINE_1609 = 1609;

	private static final char f_null_char_1197_line_1609 = nullChar;

	int PROBE_END_LINE_1609 = 1609;

	private static final char[] attributeNameCharsSorted = new char[]{'\t', '\n', '\r', '\f', ' ', '/', '=', '>', f_null_char_1197_line_1609, '"', '\'', '<'};
    int PROBE_START_LINE_1610 = 1610;

	private static final char f_null_char_1197_line_1610 = nullChar;

	int PROBE_END_LINE_1610 = 1610;

	private static final char[] attributeValueUnquoted = new char[]{'\t', '\n', '\r', '\f', ' ', '&', '>', f_null_char_1197_line_1610, '"', '\'', '<', '=', '`'};

    private static final char replacementChar = Tokeniser.replacementChar;
    int PROBE_START_LINE_1613 = 1613;

	private static final char q_replacement_char_63_line_1613 = Tokeniser.replacementChar;
	private static final String tokeniser_state_1_expr64_line_1613 = String.valueOf(q_replacement_char_63_line_1613);

	int PROBE_END_LINE_1613 = 1613;

	private static final String replacementStr = tokeniser_state_1_expr64_line_1613;
    private static final char eof = CharacterReader.EOF;

    static {
        int PROBE_START_LINE_1617 = 1617;
		char[] f_attribute_single_value_chars_sorted_1196_line_1617 = attributeSingleValueCharsSorted;
		int PROBE_END_LINE_1617 = 1617;
		Arrays.sort(f_attribute_single_value_chars_sorted_1196_line_1617);
        int PROBE_START_LINE_1618 = 1618;
		char[] f_attribute_double_value_chars_sorted_1102_line_1618 = attributeDoubleValueCharsSorted;
		int PROBE_END_LINE_1618 = 1618;
		Arrays.sort(f_attribute_double_value_chars_sorted_1102_line_1618);
        int PROBE_START_LINE_1619 = 1619;
		char[] f_attribute_name_chars_sorted_1089_line_1619 = attributeNameCharsSorted;
		int PROBE_END_LINE_1619 = 1619;
		Arrays.sort(f_attribute_name_chars_sorted_1089_line_1619);
        int PROBE_START_LINE_1620 = 1620;
		char[] f_attribute_value_unquoted_1198_line_1620 = attributeValueUnquoted;
		int PROBE_END_LINE_1620 = 1620;
		Arrays.sort(f_attribute_value_unquoted_1198_line_1620);
    }

    /**
     * Handles RawtextEndTagName, ScriptDataEndTagName, and ScriptDataEscapedEndTagName. Same body impl, just
     * different else exit transitions.
     */
    private static void handleDataEndTag(Tokeniser t, CharacterReader r, TokeniserState elseTransition) {
        if (r.matchesLetter()) {
            String name = r.consumeLetterSequence();
            t.tagPending.appendTagName(name);
            t.dataBuffer.append(name);
            return;
        }

        boolean needsExitTransition = false;
        if (t.isAppropriateEndTagToken() && !r.isEmpty()) {
            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    t.transition(BeforeAttributeName);
                    break;
                case '/':
                    t.transition(SelfClosingStartTag);
                    break;
                case '>':
                    t.emitTagPending();
                    t.transition(Data);
                    break;
                default:
                    t.dataBuffer.append(c);
                    needsExitTransition = true;
            }
        } else {
            needsExitTransition = true;
        }

        if (needsExitTransition) {
            t.emit("</" + t.dataBuffer.toString());
            t.transition(elseTransition);
        }
    }

    private static void readData(Tokeniser t, CharacterReader r, TokeniserState current, TokeniserState advance) {
        switch (r.current()) {
            case '<':
                t.advanceTransition(advance);
                break;
            case nullChar:
                t.error(current);
                r.advance();
                t.emit(replacementChar);
                break;
            case eof:
                t.emit(new Token.EOF());
                break;
            default:
                String data = r.consumeToAny('<', nullChar); // todo - why hunt for null here? Just consumeTo'<'?
                t.emit(data);
                break;
        }
    }

    private static void readCharRef(Tokeniser t, TokeniserState advance) {
        int[] c = t.consumeCharacterReference(null, false);
        if (c == null)
            t.emit('&');
        else
            t.emit(c);
        t.transition(advance);
    }

    private static void readEndTag(Tokeniser t, CharacterReader r, TokeniserState a, TokeniserState b) {
        if (r.matchesLetter()) {
            t.createTagPending(false);
            t.transition(a);
        } else {
            t.emit("</");
            t.transition(b);
        }
    }

    private static void handleDataDoubleEscapeTag(Tokeniser t, CharacterReader r, TokeniserState primary, TokeniserState fallback) {
        if (r.matchesLetter()) {
            String name = r.consumeLetterSequence();
            t.dataBuffer.append(name);
            t.emit(name);
            return;
        }

        char c = r.consume();
        switch (c) {
            case '\t':
            case '\n':
            case '\r':
            case '\f':
            case ' ':
            case '/':
            case '>':
                if (t.dataBuffer.toString().equals("script"))
                    t.transition(primary);
                else
                    t.transition(fallback);
                t.emit(c);
                break;
            default:
                r.unconsume();
                t.transition(fallback);
        }
    }
}
