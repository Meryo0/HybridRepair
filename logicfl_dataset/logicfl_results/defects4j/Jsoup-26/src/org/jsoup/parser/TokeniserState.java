package org.jsoup.parser;

/**
 * States and transition activations for the Tokeniser.
 */
enum TokeniserState {
    Data {
        // in data state, gather characters until a character reference or tag is found
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_10 = 28;
			org.jsoup.parser.CharacterReader p_r_660_line_10 = r;
			char tokeniser_state_1_expr1_line_10 = p_r_660_line_10.current();
			int PROBE_END_LINE_10 = 28;
			switch (tokeniser_state_1_expr1_line_10) {
                case '&':
                    t.advanceTransition(CharacterReferenceInData);
                    break;
                case '<':
			int PROBE_START_LINE_15 = 15;
			org.jsoup.parser.Tokeniser p_t_659_line_15 = t;
			org.jsoup.parser.TokeniserState f_tag_open_661_line_15 = TagOpen;
			int PROBE_END_LINE_15 = 15;
			p_t_659_line_15.advanceTransition(f_tag_open_661_line_15);
                    break;
                case nullChar:
                    t.error(this); // NOT replacement character (oddly?)
                    t.emit(r.consume());
                    break;
                case eof:
			int PROBE_START_LINE_22 = 22;
			org.jsoup.parser.Tokeniser p_t_659_line_22 = t;
			int PROBE_END_LINE_22 = 22;
			p_t_659_line_22.emit(new Token.EOF());
                    break;
                default:
                    String data = r.consumeToAny('&', '<', nullChar);
                    t.emit(data);
                    break;
            }
        }
    },
    CharacterReferenceInData {
        // from & in data
        void read(Tokeniser t, CharacterReader r) {
            Character c = t.consumeCharacterReference(null, false);
            if (c == null)
                t.emit('&');
            else
                t.emit(c);
            t.transition(Data);
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
            Character c = t.consumeCharacterReference(null, false);
            if (c == null)
                t.emit('&');
            else
                t.emit(c);
            t.transition(Rcdata);
        }
    },
    Rawtext {
        void read(Tokeniser t, CharacterReader r) {
            switch (r.current()) {
                case '<':
                    t.advanceTransition(RawtextLessthanSign);
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
                    String data = r.consumeToAny('<', nullChar);
                    t.emit(data);
                    break;
            }
        }
    },
    ScriptData {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_100 = 116;
			org.jsoup.parser.CharacterReader p_r_676_line_100 = r;
			char tokeniser_state_1_expr5_line_100 = p_r_676_line_100.current();
			int PROBE_END_LINE_100 = 116;
			switch (tokeniser_state_1_expr5_line_100) {
                case '<':
			int PROBE_START_LINE_102 = 102;
			org.jsoup.parser.Tokeniser p_t_675_line_102 = t;
			org.jsoup.parser.TokeniserState f_script_data_lessthan_sign_677_line_102 = ScriptDataLessthanSign;
			int PROBE_END_LINE_102 = 102;
			p_t_675_line_102.advanceTransition(f_script_data_lessthan_sign_677_line_102);
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
                    String data = r.consumeToAny('<', nullChar);
                    t.emit(data);
                    break;
            }
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
            int PROBE_START_LINE_140 = 160;
			org.jsoup.parser.CharacterReader p_r_682_line_140 = r;
			char tokeniser_state_1_expr7_line_140 = p_r_682_line_140.current();
			int PROBE_END_LINE_140 = 160;
			switch (tokeniser_state_1_expr7_line_140) {
                case '!':
                    t.advanceTransition(MarkupDeclarationOpen);
                    break;
                case '/':
			int PROBE_START_LINE_145 = 145;
			org.jsoup.parser.Tokeniser p_t_681_line_145 = t;
			org.jsoup.parser.TokeniserState f_end_tag_open_683_line_145 = EndTagOpen;
			int PROBE_END_LINE_145 = 145;
			p_t_681_line_145.advanceTransition(f_end_tag_open_683_line_145);
                    break;
                case '?':
                    t.advanceTransition(BogusComment);
                    break;
                default:
			int PROBE_START_LINE_151 = 158;
			org.jsoup.parser.CharacterReader p_r_682_line_151 = r;
			boolean tokeniser_state_1_expr9_line_151 = p_r_682_line_151.matchesLetter();
			int PROBE_END_LINE_151 = 158;
			if (tokeniser_state_1_expr9_line_151) {
                        int PROBE_START_LINE_152 = 152;
						org.jsoup.parser.Tokeniser p_t_681_line_152 = t;
						int PROBE_END_LINE_152 = 152;
						p_t_681_line_152.createTagPending(true);
                        int PROBE_START_LINE_153 = 153;
						org.jsoup.parser.Tokeniser p_t_681_line_153 = t;
						org.jsoup.parser.TokeniserState f_tag_name_684_line_153 = TagName;
						int PROBE_END_LINE_153 = 153;
						p_t_681_line_153.transition(f_tag_name_684_line_153);
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
            int PROBE_START_LINE_165 = 178;
			org.jsoup.parser.CharacterReader p_r_686_line_165 = r;
			boolean tokeniser_state_1_expr12_line_165 = p_r_686_line_165.isEmpty();
			int PROBE_END_LINE_165 = 178;
			if (tokeniser_state_1_expr12_line_165) {
                t.eofError(this);
                t.emit("</");
                t.transition(Data);
            } else {
				int PROBE_START_LINE_169 = 178;
				org.jsoup.parser.CharacterReader p_r_686_line_169 = r;
				boolean tokeniser_state_1_expr13_line_169 = p_r_686_line_169.matchesLetter();
				int PROBE_END_LINE_169 = 178;
				if (tokeniser_state_1_expr13_line_169) {
					int PROBE_START_LINE_170 = 170;
					org.jsoup.parser.Tokeniser p_t_685_line_170 = t;
					int PROBE_END_LINE_170 = 170;
					p_t_685_line_170.createTagPending(false);
					int PROBE_START_LINE_171 = 171;
					org.jsoup.parser.Tokeniser p_t_685_line_171 = t;
					org.jsoup.parser.TokeniserState f_tag_name_684_line_171 = TagName;
					int PROBE_END_LINE_171 = 171;
					p_t_685_line_171.transition(f_tag_name_684_line_171);
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
            int PROBE_START_LINE_185 = 185;
			org.jsoup.parser.CharacterReader p_r_688_line_185 = r;
			char f_null_char_690_line_185 = nullChar;
			String tokeniser_state_1_expr17_line_185 = p_r_688_line_185.consumeToAny('\t', '\n', '\r', '\f', ' ', '/',
					'>', f_null_char_690_line_185);
			String tokeniser_state_1_expr16_line_185 = tokeniser_state_1_expr17_line_185.toLowerCase();
			int PROBE_END_LINE_185 = 185;
			// previous TagOpen state did NOT consume, will have a letter char in current
            String tagName = tokeniser_state_1_expr16_line_185;
            int PROBE_START_LINE_186 = 186;
			org.jsoup.parser.Tokeniser p_t_687_line_186 = t;
			org.jsoup.parser.Token.Tag q_tag_pending_41_line_186 = p_t_687_line_186.tagPending;
			String v_tag_name_689_line_186 = tagName;
			int PROBE_END_LINE_186 = 186;
			q_tag_pending_41_line_186.appendTagName(v_tag_name_689_line_186);

            int PROBE_START_LINE_188 = 210;
			org.jsoup.parser.CharacterReader p_r_688_line_188 = r;
			char tokeniser_state_1_expr19_line_188 = p_r_688_line_188.consume();
			int PROBE_END_LINE_188 = 210;
			switch (tokeniser_state_1_expr19_line_188) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
			int PROBE_START_LINE_194 = 194;
			org.jsoup.parser.Tokeniser p_t_687_line_194 = t;
			org.jsoup.parser.TokeniserState f_before_attribute_name_691_line_194 = BeforeAttributeName;
			int PROBE_END_LINE_194 = 194;
			p_t_687_line_194.transition(f_before_attribute_name_691_line_194);
                    break;
                case '/':
                    t.transition(SelfClosingStartTag);
                    break;
                case '>':
			int PROBE_START_LINE_200 = 200;
			org.jsoup.parser.Tokeniser p_t_687_line_200 = t;
			int PROBE_END_LINE_200 = 200;
			p_t_687_line_200.emitTagPending();
			int PROBE_START_LINE_201 = 201;
			org.jsoup.parser.Tokeniser p_t_687_line_201 = t;
			org.jsoup.parser.TokeniserState f_data_658_line_201 = Data;
			int PROBE_END_LINE_201 = 201;
			p_t_687_line_201.transition(f_data_658_line_201);
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
            } else if (r.matchesLetter() && !r.containsIgnoreCase("</" + t.appropriateEndTagName())) {
                // diverge from spec: got a start tag, but there's no appropriate end tag (</title>), so rather than
                // consuming to EOF; break out here
                t.tagPending = new Token.EndTag(t.appropriateEndTagName());
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
                t.tagPending.appendTagName(Character.toLowerCase(r.current()));
                t.dataBuffer.append(Character.toLowerCase(r.current()));
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
                t.tagPending.appendTagName(name.toLowerCase());
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
            if (r.matchesLetter()) {
                t.createTagPending(false);
                t.transition(RawtextEndTagName);
            } else {
                t.emit("</");
                t.transition(Rawtext);
            }
        }
    },
    RawtextEndTagName {
        void read(Tokeniser t, CharacterReader r) {
            if (r.matchesLetter()) {
                String name = r.consumeLetterSequence();
                t.tagPending.appendTagName(name.toLowerCase());
                t.dataBuffer.append(name);
                return;
            }

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
                        anythingElse(t, r);
                }
            } else
                anythingElse(t, r);
        }

        private void anythingElse(Tokeniser t, CharacterReader r) {
            t.emit("</" + t.dataBuffer.toString());
            t.transition(Rawtext);
        }
    },
    ScriptDataLessthanSign {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_353 = 366;
			org.jsoup.parser.CharacterReader p_r_715_line_353 = r;
			char tokeniser_state_1_expr23_line_353 = p_r_715_line_353.consume();
			int PROBE_END_LINE_353 = 366;
			switch (tokeniser_state_1_expr23_line_353) {
                case '/':
			int PROBE_START_LINE_355 = 355;
			org.jsoup.parser.Tokeniser p_t_714_line_355 = t;
			int PROBE_END_LINE_355 = 355;
			p_t_714_line_355.createTempBuffer();
			int PROBE_START_LINE_356 = 356;
			org.jsoup.parser.Tokeniser p_t_714_line_356 = t;
			org.jsoup.parser.TokeniserState f_script_data_end_tag_open_716_line_356 = ScriptDataEndTagOpen;
			int PROBE_END_LINE_356 = 356;
			p_t_714_line_356.transition(f_script_data_end_tag_open_716_line_356);
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
            int PROBE_START_LINE_371 = 377;
			org.jsoup.parser.CharacterReader p_r_718_line_371 = r;
			boolean tokeniser_state_1_expr26_line_371 = p_r_718_line_371.matchesLetter();
			int PROBE_END_LINE_371 = 377;
			if (tokeniser_state_1_expr26_line_371) {
                int PROBE_START_LINE_372 = 372;
				org.jsoup.parser.Tokeniser p_t_717_line_372 = t;
				int PROBE_END_LINE_372 = 372;
				p_t_717_line_372.createTagPending(false);
                int PROBE_START_LINE_373 = 373;
				org.jsoup.parser.Tokeniser p_t_717_line_373 = t;
				org.jsoup.parser.TokeniserState f_script_data_end_tag_name_719_line_373 = ScriptDataEndTagName;
				int PROBE_END_LINE_373 = 373;
				p_t_717_line_373.transition(f_script_data_end_tag_name_719_line_373);
            } else {
                t.emit("</");
                t.transition(ScriptData);
            }

        }
    },
    ScriptDataEndTagName {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_383 = 388;
			org.jsoup.parser.CharacterReader p_r_721_line_383 = r;
			boolean tokeniser_state_1_expr29_line_383 = p_r_721_line_383.matchesLetter();
			int PROBE_END_LINE_383 = 388;
			if (tokeniser_state_1_expr29_line_383) {
                int PROBE_START_LINE_384 = 384;
				org.jsoup.parser.CharacterReader p_r_721_line_384 = r;
				String tokeniser_state_1_expr30_line_384 = p_r_721_line_384.consumeLetterSequence();
				int PROBE_END_LINE_384 = 384;
				String name = tokeniser_state_1_expr30_line_384;
                int PROBE_START_LINE_385 = 385;
				org.jsoup.parser.Tokeniser p_t_720_line_385 = t;
				org.jsoup.parser.Token.Tag q_tag_pending_42_line_385 = p_t_720_line_385.tagPending;
				String v_name_722_line_385 = name;
				String tokeniser_state_1_expr32_line_385 = v_name_722_line_385.toLowerCase();
				int PROBE_END_LINE_385 = 385;
				q_tag_pending_42_line_385.appendTagName(tokeniser_state_1_expr32_line_385);
                int PROBE_START_LINE_386 = 386;
				org.jsoup.parser.Tokeniser p_t_720_line_386 = t;
				StringBuilder q_data_buffer_43_line_386 = p_t_720_line_386.dataBuffer;
				String v_name_722_line_386 = name;
				int PROBE_END_LINE_386 = 386;
				q_data_buffer_43_line_386.append(v_name_722_line_386);
                return;
            }

            int PROBE_START_LINE_390 = 413;
			org.jsoup.parser.Tokeniser p_t_720_line_390 = t;
			boolean tokeniser_state_1_expr35_line_390 = p_t_720_line_390.isAppropriateEndTagToken();
			boolean tokeniser_state_1_expr36_line_390 = true;
			if (tokeniser_state_1_expr35_line_390) {
				org.jsoup.parser.CharacterReader p_r_721_line_390 = r;
				boolean tokeniser_state_1_expr37_line_390 = p_r_721_line_390.isEmpty();
				tokeniser_state_1_expr36_line_390 = !tokeniser_state_1_expr37_line_390;
			}
			boolean tokeniser_state_1_expr34_line_390 = tokeniser_state_1_expr35_line_390
					&& tokeniser_state_1_expr36_line_390;
			int PROBE_END_LINE_390 = 413;
			if (tokeniser_state_1_expr34_line_390) {
                int PROBE_START_LINE_391 = 391;
				org.jsoup.parser.CharacterReader p_r_721_line_391 = r;
				char tokeniser_state_1_expr38_line_391 = p_r_721_line_391.consume();
				int PROBE_END_LINE_391 = 391;
				char c = tokeniser_state_1_expr38_line_391;
                int PROBE_START_LINE_392 = 410;
				char v_c_723_line_392 = c;
				int PROBE_END_LINE_392 = 410;
				switch (v_c_723_line_392) {
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
				int PROBE_START_LINE_404 = 404;
				org.jsoup.parser.Tokeniser p_t_720_line_404 = t;
				int PROBE_END_LINE_404 = 404;
				p_t_720_line_404.emitTagPending();
				int PROBE_START_LINE_405 = 405;
				org.jsoup.parser.Tokeniser p_t_720_line_405 = t;
				org.jsoup.parser.TokeniserState f_data_658_line_405 = Data;
				int PROBE_END_LINE_405 = 405;
				p_t_720_line_405.transition(f_data_658_line_405);
                        break;
                    default:
                        t.dataBuffer.append(c);
                        anythingElse(t, r);
                }
            } else {
                anythingElse(t, r);
            }
        }

        private void anythingElse(Tokeniser t, CharacterReader r) {
            t.emit("</" + t.dataBuffer.toString());
            t.transition(ScriptData);
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
                t.dataBuffer.append(Character.toLowerCase(r.current()));
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
                t.tagPending.appendTagName(Character.toLowerCase(r.current()));
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
            if (r.matchesLetter()) {
                String name = r.consumeLetterSequence();
                t.tagPending.appendTagName(name.toLowerCase());
                t.dataBuffer.append(name);
                return;
            }

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
                        anythingElse(t, r);
                        break;
                }
            } else {
                anythingElse(t, r);
            }
        }
        
        private void anythingElse(Tokeniser t, CharacterReader r) {
            t.emit("</" + t.dataBuffer.toString());
            t.transition(ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscapeStart {
        void read(Tokeniser t, CharacterReader r) {
            if (r.matchesLetter()) {
                String name = r.consumeLetterSequence();
                t.dataBuffer.append(name.toLowerCase());
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
                        t.transition(ScriptDataDoubleEscaped);
                    else
                        t.transition(ScriptDataEscaped);
                    t.emit(c);
                    break;
                default:
                    r.unconsume();
                    t.transition(ScriptDataEscaped);
            }
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
            if (r.matchesLetter()) {
                String name = r.consumeLetterSequence();
                t.dataBuffer.append(name.toLowerCase());
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
                        t.transition(ScriptDataEscaped);
                    else
                        t.transition(ScriptDataDoubleEscaped);
                    t.emit(c);
                    break;
                default:
                    r.unconsume();
                    t.transition(ScriptDataDoubleEscaped);
            }
        }
    },
    BeforeAttributeName {
        // from tagname <xxx
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_755 = 755;
			org.jsoup.parser.CharacterReader p_r_771_line_755 = r;
			char tokeniser_state_1_expr41_line_755 = p_r_771_line_755.consume();
			int PROBE_END_LINE_755 = 755;
			char c = tokeniser_state_1_expr41_line_755;
            int PROBE_START_LINE_756 = 793;
			char v_c_772_line_756 = c;
			int PROBE_END_LINE_756 = 793;
			switch (v_c_772_line_756) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    break; // ignore whitespace
                case '/':
			int PROBE_START_LINE_764 = 764;
			org.jsoup.parser.Tokeniser p_t_770_line_764 = t;
			org.jsoup.parser.TokeniserState f_self_closing_start_tag_773_line_764 = SelfClosingStartTag;
			int PROBE_END_LINE_764 = 764;
			p_t_770_line_764.transition(f_self_closing_start_tag_773_line_764);
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
			int PROBE_START_LINE_790 = 790;
			org.jsoup.parser.Tokeniser p_t_770_line_790 = t;
			org.jsoup.parser.Token.Tag q_tag_pending_44_line_790 = p_t_770_line_790.tagPending;
			int PROBE_END_LINE_790 = 790;
			q_tag_pending_44_line_790.newAttribute();
			int PROBE_START_LINE_791 = 791;
			org.jsoup.parser.CharacterReader p_r_771_line_791 = r;
			int PROBE_END_LINE_791 = 791;
			p_r_771_line_791.unconsume();
			int PROBE_START_LINE_792 = 792;
			org.jsoup.parser.Tokeniser p_t_770_line_792 = t;
			org.jsoup.parser.TokeniserState f_attribute_name_774_line_792 = AttributeName;
			int PROBE_END_LINE_792 = 792;
			p_t_770_line_792.transition(f_attribute_name_774_line_792);
            }
        }
    },
    AttributeName {
        // from before attribute name
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_799 = 799;
			org.jsoup.parser.CharacterReader p_r_776_line_799 = r;
			char f_null_char_690_line_799 = nullChar;
			String tokeniser_state_1_expr46_line_799 = p_r_776_line_799.consumeToAny('\t', '\n', '\r', '\f', ' ', '/',
					'=', '>', f_null_char_690_line_799, '"', '\'', '<');
			int PROBE_END_LINE_799 = 799;
			String name = tokeniser_state_1_expr46_line_799;
            int PROBE_START_LINE_800 = 800;
			org.jsoup.parser.Tokeniser p_t_775_line_800 = t;
			org.jsoup.parser.Token.Tag q_tag_pending_45_line_800 = p_t_775_line_800.tagPending;
			String v_name_777_line_800 = name;
			String tokeniser_state_1_expr48_line_800 = v_name_777_line_800.toLowerCase();
			int PROBE_END_LINE_800 = 800;
			q_tag_pending_45_line_800.appendAttributeName(tokeniser_state_1_expr48_line_800);

            int PROBE_START_LINE_802 = 802;
			org.jsoup.parser.CharacterReader p_r_776_line_802 = r;
			char tokeniser_state_1_expr49_line_802 = p_r_776_line_802.consume();
			int PROBE_END_LINE_802 = 802;
			char c = tokeniser_state_1_expr49_line_802;
            int PROBE_START_LINE_803 = 835;
			char v_c_778_line_803 = c;
			int PROBE_END_LINE_803 = 835;
			switch (v_c_778_line_803) {
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
			int PROBE_START_LINE_815 = 815;
			org.jsoup.parser.Tokeniser p_t_775_line_815 = t;
			org.jsoup.parser.TokeniserState f_before_attribute_value_779_line_815 = BeforeAttributeValue;
			int PROBE_END_LINE_815 = 815;
			p_t_775_line_815.transition(f_before_attribute_value_779_line_815);
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
            int PROBE_START_LINE_885 = 885;
			org.jsoup.parser.CharacterReader p_r_784_line_885 = r;
			char tokeniser_state_1_expr51_line_885 = p_r_784_line_885.consume();
			int PROBE_END_LINE_885 = 885;
			char c = tokeniser_state_1_expr51_line_885;
            int PROBE_START_LINE_886 = 928;
			char v_c_785_line_886 = c;
			int PROBE_END_LINE_886 = 928;
			switch (v_c_785_line_886) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    // ignore
                    break;
                case '"':
			int PROBE_START_LINE_895 = 895;
			org.jsoup.parser.Tokeniser p_t_783_line_895 = t;
			org.jsoup.parser.TokeniserState f_attribute_value_double_quoted_786_line_895 = AttributeValue_doubleQuoted;
			int PROBE_END_LINE_895 = 895;
			p_t_783_line_895.transition(f_attribute_value_double_quoted_786_line_895);
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
            int PROBE_START_LINE_933 = 933;
			org.jsoup.parser.CharacterReader p_r_788_line_933 = r;
			char f_null_char_690_line_933 = nullChar;
			String tokeniser_state_1_expr53_line_933 = p_r_788_line_933.consumeToAny('"', '&',
					f_null_char_690_line_933);
			int PROBE_END_LINE_933 = 933;
			String value = tokeniser_state_1_expr53_line_933;
            int PROBE_START_LINE_934 = 935;
			String v_value_789_line_934 = value;
			int tokeniser_state_1_expr55_line_934 = v_value_789_line_934.length();
			boolean tokeniser_state_1_expr54_line_934 = tokeniser_state_1_expr55_line_934 > 0;
			int PROBE_END_LINE_934 = 935;
			if (tokeniser_state_1_expr54_line_934) {
				int PROBE_START_LINE_935 = 935;
				org.jsoup.parser.Tokeniser p_t_787_line_935 = t;
				org.jsoup.parser.Token.Tag q_tag_pending_46_line_935 = p_t_787_line_935.tagPending;
				String v_value_789_line_935 = value;
				int PROBE_END_LINE_935 = 935;
				q_tag_pending_46_line_935.appendAttributeValue(v_value_789_line_935);
			}

            int PROBE_START_LINE_937 = 937;
			org.jsoup.parser.CharacterReader p_r_788_line_937 = r;
			char tokeniser_state_1_expr57_line_937 = p_r_788_line_937.consume();
			int PROBE_END_LINE_937 = 937;
			char c = tokeniser_state_1_expr57_line_937;
            int PROBE_START_LINE_938 = 958;
			char v_c_790_line_938 = c;
			int PROBE_END_LINE_938 = 958;
			switch (v_c_790_line_938) {
                case '"':
			int PROBE_START_LINE_940 = 940;
			org.jsoup.parser.Tokeniser p_t_787_line_940 = t;
			org.jsoup.parser.TokeniserState f_after_attribute_value_quoted_791_line_940 = AfterAttributeValue_quoted;
			int PROBE_END_LINE_940 = 940;
			p_t_787_line_940.transition(f_after_attribute_value_quoted_791_line_940);
                    break;
                case '&':
                    Character ref = t.consumeCharacterReference('"', true);
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
            String value = r.consumeToAny('\'', '&', nullChar);
            if (value.length() > 0)
                t.tagPending.appendAttributeValue(value);

            char c = r.consume();
            switch (c) {
                case '\'':
                    t.transition(AfterAttributeValue_quoted);
                    break;
                case '&':
                    Character ref = t.consumeCharacterReference('\'', true);
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
            String value = r.consumeToAny('\t', '\n', '\r', '\f', ' ', '&', '>', nullChar, '"', '\'', '<', '=', '`');
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
                    Character ref = t.consumeCharacterReference('>', true);
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
            int PROBE_START_LINE_1041 = 1041;
			org.jsoup.parser.CharacterReader p_r_799_line_1041 = r;
			char tokeniser_state_1_expr59_line_1041 = p_r_799_line_1041.consume();
			int PROBE_END_LINE_1041 = 1041;
			char c = tokeniser_state_1_expr59_line_1041;
            int PROBE_START_LINE_1042 = 1065;
			char v_c_800_line_1042 = c;
			int PROBE_END_LINE_1042 = 1065;
			switch (v_c_800_line_1042) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
			int PROBE_START_LINE_1048 = 1048;
			org.jsoup.parser.Tokeniser p_t_798_line_1048 = t;
			org.jsoup.parser.TokeniserState f_before_attribute_name_691_line_1048 = BeforeAttributeName;
			int PROBE_END_LINE_1048 = 1048;
			p_t_798_line_1048.transition(f_before_attribute_name_691_line_1048);
                    break;
                case '/':
                    t.transition(SelfClosingStartTag);
                    break;
                case '>':
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
    SelfClosingStartTag {
        void read(Tokeniser t, CharacterReader r) {
            int PROBE_START_LINE_1071 = 1071;
			org.jsoup.parser.CharacterReader p_r_802_line_1071 = r;
			char tokeniser_state_1_expr61_line_1071 = p_r_802_line_1071.consume();
			int PROBE_END_LINE_1071 = 1071;
			char c = tokeniser_state_1_expr61_line_1071;
            int PROBE_START_LINE_1072 = 1085;
			char v_c_803_line_1072 = c;
			int PROBE_END_LINE_1072 = 1085;
			switch (v_c_803_line_1072) {
                case '>':
                    t.tagPending.selfClosing = true;
			int PROBE_START_LINE_1075 = 1075;
			org.jsoup.parser.Tokeniser p_t_801_line_1075 = t;
			int PROBE_END_LINE_1075 = 1075;
			p_t_801_line_1075.emitTagPending();
			int PROBE_START_LINE_1076 = 1076;
			org.jsoup.parser.Tokeniser p_t_801_line_1076 = t;
			org.jsoup.parser.TokeniserState f_data_658_line_1076 = Data;
			int PROBE_END_LINE_1076 = 1076;
			p_t_801_line_1076.transition(f_data_658_line_1076);
                    break;
                case eof:
                    t.eofError(this);
                    t.transition(Data);
                    break;
                default:
                    t.error(this);
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
            comment.data.append(r.consumeTo('>'));
            // todo: replace nullChar with replaceChar
            t.emit(comment);
            t.advanceTransition(Data);
        }
    },
    MarkupDeclarationOpen {
        void read(Tokeniser t, CharacterReader r) {
            if (r.matchConsume("--")) {
                t.createCommentPending();
                t.transition(CommentStart);
            } else if (r.matchConsumeIgnoreCase("DOCTYPE")) {
                t.transition(Doctype);
            } else if (r.matchConsume("[CDATA[")) {
                // todo: should actually check current namepspace, and only non-html allows cdata. until namespace
                // is implemented properly, keep handling as cdata
                //} else if (!t.currentNodeInHtmlNS() && r.matchConsume("[CDATA[")) {
                t.transition(CdataSection);
            } else {
                t.error(this);
                t.advanceTransition(BogusComment); // advance so this character gets in bogus comment data's rewind
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
            char c = r.consume();
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                case '\f':
                case ' ':
                    t.transition(BeforeDoctypeName);
                    break;
                case eof:
                    t.eofError(this);
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
            if (r.matchesLetter()) {
                t.createDoctypePending();
                t.transition(DoctypeName);
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
            if (r.matchesLetter()) {
                String name = r.consumeLetterSequence();
                t.doctypePending.name.append(name.toLowerCase());
                return;
            }
            char c = r.consume();
            switch (c) {
                case '>':
                    t.emitDoctypePending();
                    t.transition(Data);
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
            } else if (r.matchConsumeIgnoreCase("PUBLIC")) {
                t.transition(AfterDoctypePublicKeyword);
            } else if (r.matchConsumeIgnoreCase("SYSTEM")) {
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

    private static final char nullChar = '\u0000';
    private static final char replacementChar = Tokeniser.replacementChar;
    int PROBE_START_LINE_1799 = 1799;
	private static final char q_replacement_char_48_line_1799 = Tokeniser.replacementChar;
	private static final String tokeniser_state_1_expr65_line_1799 = String.valueOf(q_replacement_char_48_line_1799);
	int PROBE_END_LINE_1799 = 1799;
	private static final String replacementStr = tokeniser_state_1_expr65_line_1799;
    private static final char eof = CharacterReader.EOF;
}
