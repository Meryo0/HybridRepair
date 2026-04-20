package org.jsoup.parser;

import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.*;

import java.util.ArrayList;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.DocumentType;

/**
 * The Tree Builder's current state. Each state embodies the processing for the state, and transitions to other states.
 */
enum HtmlTreeBuilderState {
    Initial {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_14 = 33;
			org.jsoup.parser.Token p_t_688_line_14 = t;
			boolean html_tree_builder_state_1_expr1_line_14 = isWhitespace(p_t_688_line_14);
			int PROBE_END_LINE_14 = 33;
			if (html_tree_builder_state_1_expr1_line_14) {
                return true; // ignore whitespace
            } else {
				int PROBE_START_LINE_16 = 33;
				org.jsoup.parser.Token p_t_688_line_16 = t;
				boolean html_tree_builder_state_1_expr2_line_16 = p_t_688_line_16.isComment();
				int PROBE_END_LINE_16 = 33;
				if (html_tree_builder_state_1_expr2_line_16) {
					tb.insert(t.asComment());
				} else {
					int PROBE_START_LINE_18 = 33;
					org.jsoup.parser.Token p_t_688_line_18 = t;
					boolean html_tree_builder_state_1_expr3_line_18 = p_t_688_line_18.isDoctype();
					int PROBE_END_LINE_18 = 33;
					if (html_tree_builder_state_1_expr3_line_18) {
						int PROBE_START_LINE_21 = 21;
						org.jsoup.parser.Token p_t_688_line_21 = t;
						Token.Doctype html_tree_builder_state_1_expr4_line_21 = p_t_688_line_21.asDoctype();
						int PROBE_END_LINE_21 = 21;
						Token.Doctype d = html_tree_builder_state_1_expr4_line_21;
						DocumentType doctype = new DocumentType(tb.settings.normalizeTag(d.getName()),
								d.getPublicIdentifier(), d.getSystemIdentifier());
						int PROBE_START_LINE_24 = 24;
						org.jsoup.nodes.DocumentType v_doctype_691_line_24 = doctype;
						org.jsoup.parser.Token.Doctype v_d_690_line_24 = d;
						String html_tree_builder_state_1_expr10_line_24 = v_d_690_line_24.getPubSysKey();
						int PROBE_END_LINE_24 = 24;
						v_doctype_691_line_24.setPubSysKey(html_tree_builder_state_1_expr10_line_24);
						int PROBE_START_LINE_25 = 25;
						org.jsoup.parser.HtmlTreeBuilder p_tb_689_line_25 = tb;
						org.jsoup.nodes.Document html_tree_builder_state_1_expr12_line_25 = p_tb_689_line_25
								.getDocument();
						org.jsoup.nodes.DocumentType v_doctype_691_line_25 = doctype;
						int PROBE_END_LINE_25 = 25;
						html_tree_builder_state_1_expr12_line_25.appendChild(v_doctype_691_line_25);
						int PROBE_START_LINE_26 = 27;
						org.jsoup.parser.Token.Doctype v_d_690_line_26 = d;
						boolean html_tree_builder_state_1_expr13_line_26 = v_d_690_line_26.isForceQuirks();
						int PROBE_END_LINE_26 = 27;
						if (html_tree_builder_state_1_expr13_line_26)
							tb.getDocument().quirksMode(Document.QuirksMode.quirks);
						int PROBE_START_LINE_28 = 28;
						org.jsoup.parser.HtmlTreeBuilder p_tb_689_line_28 = tb;
						org.jsoup.parser.HtmlTreeBuilderState f_before_html_692_line_28 = BeforeHtml;
						int PROBE_END_LINE_28 = 28;
						p_tb_689_line_28.transition(f_before_html_692_line_28);
					} else {
						tb.transition(BeforeHtml);
						return tb.process(t);
					}
				}
			}
            return true;
        }
    },
    BeforeHtml {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_39 = 56;
			org.jsoup.parser.Token p_t_693_line_39 = t;
			boolean html_tree_builder_state_1_expr15_line_39 = p_t_693_line_39.isDoctype();
			int PROBE_END_LINE_39 = 56;
			if (html_tree_builder_state_1_expr15_line_39) {
                tb.error(this);
                return false;
            } else {
				int PROBE_START_LINE_42 = 56;
				org.jsoup.parser.Token p_t_693_line_42 = t;
				boolean html_tree_builder_state_1_expr16_line_42 = p_t_693_line_42.isComment();
				int PROBE_END_LINE_42 = 56;
				if (html_tree_builder_state_1_expr16_line_42) {
					tb.insert(t.asComment());
				} else {
					int PROBE_START_LINE_44 = 56;
					org.jsoup.parser.Token p_t_693_line_44 = t;
					boolean html_tree_builder_state_1_expr17_line_44 = isWhitespace(p_t_693_line_44);
					int PROBE_END_LINE_44 = 56;
					if (html_tree_builder_state_1_expr17_line_44) {
						return true;
					} else {
						int PROBE_START_LINE_46 = 56;
						org.jsoup.parser.Token p_t_693_line_46 = t;
						boolean html_tree_builder_state_1_expr19_line_46 = p_t_693_line_46.isStartTag();
						boolean html_tree_builder_state_1_expr20_line_46 = true;
						if (html_tree_builder_state_1_expr19_line_46) {
							org.jsoup.parser.Token p_t_693_line_46_v1 = t;
							org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr22_line_46 = p_t_693_line_46_v1
									.asStartTag();
							String html_tree_builder_state_1_expr21_line_46 = html_tree_builder_state_1_expr22_line_46
									.normalName();
							html_tree_builder_state_1_expr20_line_46 = html_tree_builder_state_1_expr21_line_46
									.equals("html");
						}
						boolean html_tree_builder_state_1_expr18_line_46 = html_tree_builder_state_1_expr19_line_46
								&& html_tree_builder_state_1_expr20_line_46;
						int PROBE_END_LINE_46 = 56;
						if (html_tree_builder_state_1_expr18_line_46) {
							int PROBE_START_LINE_47 = 47;
							org.jsoup.parser.HtmlTreeBuilder p_tb_694_line_47 = tb;
							org.jsoup.parser.Token p_t_693_line_47 = t;
							org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr24_line_47 = p_t_693_line_47
									.asStartTag();
							int PROBE_END_LINE_47 = 47;
							p_tb_694_line_47.insert(html_tree_builder_state_1_expr24_line_47);
							int PROBE_START_LINE_48 = 48;
							org.jsoup.parser.HtmlTreeBuilder p_tb_694_line_48 = tb;
							org.jsoup.parser.HtmlTreeBuilderState f_before_head_695_line_48 = BeforeHead;
							int PROBE_END_LINE_48 = 48;
							p_tb_694_line_48.transition(f_before_head_695_line_48);
						} else if (t.isEndTag()
								&& (StringUtil.in(t.asEndTag().normalName(), "head", "body", "html", "br"))) {
							return anythingElse(t, tb);
						} else if (t.isEndTag()) {
							tb.error(this);
							return false;
						} else {
							return anythingElse(t, tb);
						}
					}
				}
			}
            return true;
        }

        private boolean anythingElse(Token t, HtmlTreeBuilder tb) {
            tb.insertStartTag("html");
            tb.transition(BeforeHead);
            return tb.process(t);
        }
    },
    BeforeHead {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_68 = 90;
			org.jsoup.parser.Token p_t_698_line_68 = t;
			boolean html_tree_builder_state_1_expr26_line_68 = isWhitespace(p_t_698_line_68);
			int PROBE_END_LINE_68 = 90;
			if (html_tree_builder_state_1_expr26_line_68) {
                return true;
            } else {
				int PROBE_START_LINE_70 = 90;
				org.jsoup.parser.Token p_t_698_line_70 = t;
				boolean html_tree_builder_state_1_expr27_line_70 = p_t_698_line_70.isComment();
				int PROBE_END_LINE_70 = 90;
				if (html_tree_builder_state_1_expr27_line_70) {
					tb.insert(t.asComment());
				} else {
					int PROBE_START_LINE_72 = 90;
					org.jsoup.parser.Token p_t_698_line_72 = t;
					boolean html_tree_builder_state_1_expr28_line_72 = p_t_698_line_72.isDoctype();
					int PROBE_END_LINE_72 = 90;
					if (html_tree_builder_state_1_expr28_line_72) {
						tb.error(this);
						return false;
					} else {
						int PROBE_START_LINE_75 = 90;
						org.jsoup.parser.Token p_t_698_line_75 = t;
						boolean html_tree_builder_state_1_expr30_line_75 = p_t_698_line_75.isStartTag();
						boolean html_tree_builder_state_1_expr31_line_75 = true;
						if (html_tree_builder_state_1_expr30_line_75) {
							org.jsoup.parser.Token p_t_698_line_75_v1 = t;
							org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr33_line_75 = p_t_698_line_75_v1
									.asStartTag();
							String html_tree_builder_state_1_expr32_line_75 = html_tree_builder_state_1_expr33_line_75
									.normalName();
							html_tree_builder_state_1_expr31_line_75 = html_tree_builder_state_1_expr32_line_75
									.equals("html");
						}
						boolean html_tree_builder_state_1_expr29_line_75 = html_tree_builder_state_1_expr30_line_75
								&& html_tree_builder_state_1_expr31_line_75;
						int PROBE_END_LINE_75 = 90;
						if (html_tree_builder_state_1_expr29_line_75) {
							return InBody.process(t, tb);
						} else {
							int PROBE_START_LINE_77 = 90;
							org.jsoup.parser.Token p_t_698_line_77 = t;
							boolean html_tree_builder_state_1_expr35_line_77 = p_t_698_line_77.isStartTag();
							boolean html_tree_builder_state_1_expr36_line_77 = true;
							if (html_tree_builder_state_1_expr35_line_77) {
								org.jsoup.parser.Token p_t_698_line_77_v1 = t;
								org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr38_line_77 = p_t_698_line_77_v1
										.asStartTag();
								String html_tree_builder_state_1_expr37_line_77 = html_tree_builder_state_1_expr38_line_77
										.normalName();
								html_tree_builder_state_1_expr36_line_77 = html_tree_builder_state_1_expr37_line_77
										.equals("head");
							}
							boolean html_tree_builder_state_1_expr34_line_77 = html_tree_builder_state_1_expr35_line_77
									&& html_tree_builder_state_1_expr36_line_77;
							int PROBE_END_LINE_77 = 90;
							if (html_tree_builder_state_1_expr34_line_77) {
								int PROBE_START_LINE_78 = 78;
								org.jsoup.parser.HtmlTreeBuilder p_tb_699_line_78 = tb;
								org.jsoup.parser.Token p_t_698_line_78 = t;
								org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr40_line_78 = p_t_698_line_78
										.asStartTag();
								Element html_tree_builder_state_1_expr39_line_78 = p_tb_699_line_78
										.insert(html_tree_builder_state_1_expr40_line_78);
								int PROBE_END_LINE_78 = 78;
								Element head = html_tree_builder_state_1_expr39_line_78;
								int PROBE_START_LINE_79 = 79;
								org.jsoup.parser.HtmlTreeBuilder p_tb_699_line_79 = tb;
								org.jsoup.nodes.Element v_head_700_line_79 = head;
								int PROBE_END_LINE_79 = 79;
								p_tb_699_line_79.setHeadElement(v_head_700_line_79);
								int PROBE_START_LINE_80 = 80;
								org.jsoup.parser.HtmlTreeBuilder p_tb_699_line_80 = tb;
								org.jsoup.parser.HtmlTreeBuilderState f_in_head_701_line_80 = InHead;
								int PROBE_END_LINE_80 = 80;
								p_tb_699_line_80.transition(f_in_head_701_line_80);
							} else {
								int PROBE_START_LINE_81 = 90;
								org.jsoup.parser.Token p_t_698_line_81 = t;
								boolean html_tree_builder_state_1_expr44_line_81 = p_t_698_line_81.isEndTag();
								boolean html_tree_builder_state_1_expr45_line_81 = true;
								if (html_tree_builder_state_1_expr44_line_81) {
									org.jsoup.parser.Token p_t_698_line_81_v1 = t;
									org.jsoup.parser.Token.EndTag html_tree_builder_state_1_expr48_line_81 = p_t_698_line_81_v1
											.asEndTag();
									String html_tree_builder_state_1_expr47_line_81 = html_tree_builder_state_1_expr48_line_81
											.normalName();
									boolean html_tree_builder_state_1_expr46_line_81 = StringUtil
											.in(html_tree_builder_state_1_expr47_line_81, "head", "body", "html", "br");
									html_tree_builder_state_1_expr45_line_81 = (html_tree_builder_state_1_expr46_line_81);
								}
								boolean html_tree_builder_state_1_expr43_line_81 = html_tree_builder_state_1_expr44_line_81
										&& html_tree_builder_state_1_expr45_line_81;
								int PROBE_END_LINE_81 = 90;
								if (html_tree_builder_state_1_expr43_line_81) {
									tb.processStartTag("head");
									return tb.process(t);
								} else if (t.isEndTag()) {
									tb.error(this);
									return false;
								} else {
									tb.processStartTag("head");
									return tb.process(t);
								}
							}
						}
					}
				}
			}
            return true;
        }
    },
    InHead {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_96 = 99;
			org.jsoup.parser.Token p_t_702_line_96 = t;
			boolean html_tree_builder_state_1_expr49_line_96 = isWhitespace(p_t_702_line_96);
			int PROBE_END_LINE_96 = 99;
			if (html_tree_builder_state_1_expr49_line_96) {
                tb.insert(t.asCharacter());
                return true;
            }
            int PROBE_START_LINE_100 = 157;
			org.jsoup.parser.Token p_t_702_line_100 = t;
			org.jsoup.parser.Token.TokenType q_type_30_line_100 = p_t_702_line_100.type;
			int PROBE_END_LINE_100 = 157;
			switch (q_type_30_line_100) {
                case Comment:
                    tb.insert(t.asComment());
                    break;
                case Doctype:
                    tb.error(this);
                    return false;
                case StartTag:
                    Token.StartTag start = t.asStartTag();
                    String name = start.normalName();
                    if (name.equals("html")) {
                        return InBody.process(t, tb);
                    } else if (StringUtil.in(name, "base", "basefont", "bgsound", "command", "link")) {
                        Element el = tb.insertEmpty(start);
                        // jsoup special: update base the frist time it is seen
                        if (name.equals("base") && el.hasAttr("href"))
                            tb.maybeSetBaseUri(el);
                    } else if (name.equals("meta")) {
                        Element meta = tb.insertEmpty(start);
                        // todo: charset switches
                    } else if (name.equals("title")) {
                        handleRcData(start, tb);
                    } else if (StringUtil.in(name, "noframes", "style")) {
                        handleRawtext(start, tb);
                    } else if (name.equals("noscript")) {
                        // else if noscript && scripting flag = true: rawtext (jsoup doesn't run script, to handle as noscript)
                        tb.insert(start);
                        tb.transition(InHeadNoscript);
                    } else if (name.equals("script")) {
                        // skips some script rules as won't execute them

                        tb.tokeniser.transition(TokeniserState.ScriptData);
                        tb.markInsertionMode();
                        tb.transition(Text);
                        tb.insert(start);
                    } else if (name.equals("head")) {
                        tb.error(this);
                        return false;
                    } else {
                        return anythingElse(t, tb);
                    }
                    break;
                case EndTag:
			int PROBE_START_LINE_143 = 143;
			org.jsoup.parser.Token p_t_702_line_143 = t;
			Token.EndTag html_tree_builder_state_1_expr50_line_143 = p_t_702_line_143.asEndTag();
			int PROBE_END_LINE_143 = 143;
			Token.EndTag end = html_tree_builder_state_1_expr50_line_143;
			int PROBE_START_LINE_144 = 144;
			org.jsoup.parser.Token.EndTag v_end_704_line_144 = end;
			String html_tree_builder_state_1_expr52_line_144 = v_end_704_line_144.normalName();
			int PROBE_END_LINE_144 = 144;
			name = html_tree_builder_state_1_expr52_line_144;
			int PROBE_START_LINE_145 = 153;
			String v_name_705_line_145 = name;
			boolean html_tree_builder_state_1_expr53_line_145 = v_name_705_line_145.equals("head");
			int PROBE_END_LINE_145 = 153;
			if (html_tree_builder_state_1_expr53_line_145) {
                        int PROBE_START_LINE_146 = 146;
						org.jsoup.parser.HtmlTreeBuilder p_tb_703_line_146 = tb;
						int PROBE_END_LINE_146 = 146;
						p_tb_703_line_146.pop();
                        int PROBE_START_LINE_147 = 147;
						org.jsoup.parser.HtmlTreeBuilder p_tb_703_line_147 = tb;
						org.jsoup.parser.HtmlTreeBuilderState f_after_head_706_line_147 = AfterHead;
						int PROBE_END_LINE_147 = 147;
						p_tb_703_line_147.transition(f_after_head_706_line_147);
                    } else if (StringUtil.in(name, "body", "html", "br")) {
                        return anythingElse(t, tb);
                    } else {
                        tb.error(this);
                        return false;
                    }
                    break;
                default:
                    return anythingElse(t, tb);
            }
            return true;
        }

        private boolean anythingElse(Token t, TreeBuilder tb) {
            tb.processEndTag("head");
            return tb.process(t);
        }
    },
    InHeadNoscript {
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (t.isDoctype()) {
                tb.error(this);
            } else if (t.isStartTag() && t.asStartTag().normalName().equals("html")) {
                return tb.process(t, InBody);
            } else if (t.isEndTag() && t.asEndTag().normalName().equals("noscript")) {
                tb.pop();
                tb.transition(InHead);
            } else if (isWhitespace(t) || t.isComment() || (t.isStartTag() && StringUtil.in(t.asStartTag().normalName(),
                    "basefont", "bgsound", "link", "meta", "noframes", "style"))) {
                return tb.process(t, InHead);
            } else if (t.isEndTag() && t.asEndTag().normalName().equals("br")) {
                return anythingElse(t, tb);
            } else if ((t.isStartTag() && StringUtil.in(t.asStartTag().normalName(), "head", "noscript")) || t.isEndTag()) {
                tb.error(this);
                return false;
            } else {
                return anythingElse(t, tb);
            }
            return true;
        }

        private boolean anythingElse(Token t, HtmlTreeBuilder tb) {
            tb.error(this);
            tb.insert(new Token.Character().data(t.toString()));
            return true;
        }
    },
    AfterHead {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_197 = 236;
			org.jsoup.parser.Token p_t_714_line_197 = t;
			boolean html_tree_builder_state_1_expr56_line_197 = isWhitespace(p_t_714_line_197);
			int PROBE_END_LINE_197 = 236;
			if (html_tree_builder_state_1_expr56_line_197) {
                tb.insert(t.asCharacter());
            } else {
				int PROBE_START_LINE_199 = 236;
				org.jsoup.parser.Token p_t_714_line_199 = t;
				boolean html_tree_builder_state_1_expr57_line_199 = p_t_714_line_199.isComment();
				int PROBE_END_LINE_199 = 236;
				if (html_tree_builder_state_1_expr57_line_199) {
					tb.insert(t.asComment());
				} else {
					int PROBE_START_LINE_201 = 236;
					org.jsoup.parser.Token p_t_714_line_201 = t;
					boolean html_tree_builder_state_1_expr58_line_201 = p_t_714_line_201.isDoctype();
					int PROBE_END_LINE_201 = 236;
					if (html_tree_builder_state_1_expr58_line_201) {
						tb.error(this);
					} else {
						int PROBE_START_LINE_203 = 236;
						org.jsoup.parser.Token p_t_714_line_203 = t;
						boolean html_tree_builder_state_1_expr59_line_203 = p_t_714_line_203.isStartTag();
						int PROBE_END_LINE_203 = 236;
						if (html_tree_builder_state_1_expr59_line_203) {
							int PROBE_START_LINE_204 = 204;
							org.jsoup.parser.Token p_t_714_line_204 = t;
							Token.StartTag html_tree_builder_state_1_expr60_line_204 = p_t_714_line_204.asStartTag();
							int PROBE_END_LINE_204 = 204;
							Token.StartTag startTag = html_tree_builder_state_1_expr60_line_204;
							int PROBE_START_LINE_205 = 205;
							org.jsoup.parser.Token.StartTag v_start_tag_716_line_205 = startTag;
							String html_tree_builder_state_1_expr61_line_205 = v_start_tag_716_line_205.normalName();
							int PROBE_END_LINE_205 = 205;
							String name = html_tree_builder_state_1_expr61_line_205;
							int PROBE_START_LINE_206 = 226;
							String v_name_717_line_206 = name;
							boolean html_tree_builder_state_1_expr62_line_206 = v_name_717_line_206.equals("html");
							int PROBE_END_LINE_206 = 226;
							if (html_tree_builder_state_1_expr62_line_206) {
								return tb.process(t, InBody);
							} else {
								int PROBE_START_LINE_208 = 226;
								String v_name_717_line_208 = name;
								boolean html_tree_builder_state_1_expr63_line_208 = v_name_717_line_208.equals("body");
								int PROBE_END_LINE_208 = 226;
								if (html_tree_builder_state_1_expr63_line_208) {
									int PROBE_START_LINE_209 = 209;
									org.jsoup.parser.HtmlTreeBuilder p_tb_715_line_209 = tb;
									org.jsoup.parser.Token.StartTag v_start_tag_716_line_209 = startTag;
									int PROBE_END_LINE_209 = 209;
									p_tb_715_line_209.insert(v_start_tag_716_line_209);
									int PROBE_START_LINE_210 = 210;
									org.jsoup.parser.HtmlTreeBuilder p_tb_715_line_210 = tb;
									int PROBE_END_LINE_210 = 210;
									p_tb_715_line_210.framesetOk(false);
									int PROBE_START_LINE_211 = 211;
									org.jsoup.parser.HtmlTreeBuilder p_tb_715_line_211 = tb;
									org.jsoup.parser.HtmlTreeBuilderState f_in_body_718_line_211 = InBody;
									int PROBE_END_LINE_211 = 211;
									p_tb_715_line_211.transition(f_in_body_718_line_211);
								} else if (name.equals("frameset")) {
									tb.insert(startTag);
									tb.transition(InFrameset);
								} else if (StringUtil.in(name, "base", "basefont", "bgsound", "link", "meta",
										"noframes", "script", "style", "title")) {
									tb.error(this);
									Element head = tb.getHeadElement();
									tb.push(head);
									tb.process(t, InHead);
									tb.removeFromStack(head);
								} else if (name.equals("head")) {
									tb.error(this);
									return false;
								} else {
									anythingElse(t, tb);
								}
							}
						} else {
							int PROBE_START_LINE_227 = 236;
							org.jsoup.parser.Token p_t_714_line_227 = t;
							boolean html_tree_builder_state_1_expr67_line_227 = p_t_714_line_227.isEndTag();
							int PROBE_END_LINE_227 = 236;
							if (html_tree_builder_state_1_expr67_line_227) {
								if (StringUtil.in(t.asEndTag().normalName(), "body", "html")) {
									anythingElse(t, tb);
								} else {
									tb.error(this);
									return false;
								}
							} else {
								anythingElse(t, tb);
							}
						}
					}
				}
			}
            return true;
        }

        private boolean anythingElse(Token t, HtmlTreeBuilder tb) {
            tb.processStartTag("body");
            tb.framesetOk(true);
            return tb.process(t);
        }
    },
    InBody {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_248 = 758;
			org.jsoup.parser.Token p_t_721_line_248 = t;
			org.jsoup.parser.Token.TokenType q_type_31_line_248 = p_t_721_line_248.type;
			int PROBE_END_LINE_248 = 758;
			switch (q_type_31_line_248) {
                case Character: {
                    int PROBE_START_LINE_250 = 250;
					org.jsoup.parser.Token p_t_721_line_250 = t;
					Token.Character html_tree_builder_state_1_expr68_line_250 = p_t_721_line_250.asCharacter();
					int PROBE_END_LINE_250 = 250;
					Token.Character c = html_tree_builder_state_1_expr68_line_250;
                    int PROBE_START_LINE_251 = 262;
					org.jsoup.parser.Token.Character v_c_723_line_251 = c;
					String html_tree_builder_state_1_expr70_line_251 = v_c_723_line_251.getData();
					String f_null_string_724_line_251 = nullString;
					boolean html_tree_builder_state_1_expr69_line_251 = html_tree_builder_state_1_expr70_line_251
							.equals(f_null_string_724_line_251);
					int PROBE_END_LINE_251 = 262;
					if (html_tree_builder_state_1_expr69_line_251) {
                        // todo confirm that check
                        tb.error(this);
                        return false;
                    } else {
						int PROBE_START_LINE_255 = 262;
						org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_255 = tb;
						boolean html_tree_builder_state_1_expr72_line_255 = p_tb_722_line_255.framesetOk();
						boolean html_tree_builder_state_1_expr73_line_255 = true;
						if (html_tree_builder_state_1_expr72_line_255) {
							org.jsoup.parser.Token.Character v_c_723_line_255 = c;
							html_tree_builder_state_1_expr73_line_255 = isWhitespace(v_c_723_line_255);
						}
						boolean html_tree_builder_state_1_expr71_line_255 = html_tree_builder_state_1_expr72_line_255
								&& html_tree_builder_state_1_expr73_line_255;
						int PROBE_END_LINE_255 = 262;
						if (html_tree_builder_state_1_expr71_line_255) {
							tb.reconstructFormattingElements();
							tb.insert(c);
						} else {
							int PROBE_START_LINE_259 = 259;
							org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_259 = tb;
							int PROBE_END_LINE_259 = 259;
							p_tb_722_line_259.reconstructFormattingElements();
							int PROBE_START_LINE_260 = 260;
							org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_260 = tb;
							org.jsoup.parser.Token.Character v_c_723_line_260 = c;
							int PROBE_END_LINE_260 = 260;
							p_tb_722_line_260.insert(v_c_723_line_260);
							int PROBE_START_LINE_261 = 261;
							org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_261 = tb;
							int PROBE_END_LINE_261 = 261;
							p_tb_722_line_261.framesetOk(false);
						}
					}
                    break;
                }
                case Comment: {
                    tb.insert(t.asComment());
                    break;
                }
                case Doctype: {
                    tb.error(this);
                    return false;
                }
                case StartTag:
			int PROBE_START_LINE_274 = 274;
			org.jsoup.parser.Token p_t_721_line_274 = t;
			Token.StartTag html_tree_builder_state_1_expr77_line_274 = p_t_721_line_274.asStartTag();
			int PROBE_END_LINE_274 = 274;
			Token.StartTag startTag = html_tree_builder_state_1_expr77_line_274;
			int PROBE_START_LINE_276 = 276;
			org.jsoup.parser.Token.StartTag v_start_tag_725_line_276 = startTag;
			String html_tree_builder_state_1_expr78_line_276 = v_start_tag_725_line_276.normalName();
			int PROBE_END_LINE_276 = 276;
			// todo - refactor to a switch statement
                    String name = html_tree_builder_state_1_expr78_line_276;
			int PROBE_START_LINE_277 = 553;
			String v_name_726_line_277 = name;
			boolean html_tree_builder_state_1_expr79_line_277 = v_name_726_line_277.equals("a");
			int PROBE_END_LINE_277 = 553;
			if (html_tree_builder_state_1_expr79_line_277) {
                        if (tb.getActiveFormattingElement("a") != null) {
                            tb.error(this);
                            tb.processEndTag("a");

                            // still on stack?
                            Element remainingA = tb.getFromStack("a");
                            if (remainingA != null) {
                                tb.removeFromActiveFormattingElements(remainingA);
                                tb.removeFromStack(remainingA);
                            }
                        }
                        tb.reconstructFormattingElements();
                        Element a = tb.insert(startTag);
                        tb.pushActiveFormattingElements(a);
                    } else {
						int PROBE_START_LINE_292 = 553;
						String v_name_726_line_292 = name;
						String[] q_in_body_start_empty_formatters_32_line_292 = Constants.InBodyStartEmptyFormatters;
						boolean html_tree_builder_state_1_expr80_line_292 = StringUtil.inSorted(v_name_726_line_292,
								q_in_body_start_empty_formatters_32_line_292);
						int PROBE_END_LINE_292 = 553;
						if (html_tree_builder_state_1_expr80_line_292) {
							tb.reconstructFormattingElements();
							tb.insertEmpty(startTag);
							tb.framesetOk(false);
						} else {
							int PROBE_START_LINE_296 = 553;
							String v_name_726_line_296 = name;
							String[] q_in_body_start_pclosers_33_line_296 = Constants.InBodyStartPClosers;
							boolean html_tree_builder_state_1_expr81_line_296 = StringUtil.inSorted(v_name_726_line_296,
									q_in_body_start_pclosers_33_line_296);
							int PROBE_END_LINE_296 = 553;
							if (html_tree_builder_state_1_expr81_line_296) {
								int PROBE_START_LINE_297 = 299;
								org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_297 = tb;
								boolean html_tree_builder_state_1_expr82_line_297 = p_tb_722_line_297
										.inButtonScope("p");
								int PROBE_END_LINE_297 = 299;
								if (html_tree_builder_state_1_expr82_line_297) {
									tb.processEndTag("p");
								}
								int PROBE_START_LINE_300 = 300;
								org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_300 = tb;
								org.jsoup.parser.Token.StartTag v_start_tag_725_line_300 = startTag;
								int PROBE_END_LINE_300 = 300;
								p_tb_722_line_300.insert(v_start_tag_725_line_300);
							} else if (name.equals("span")) {
								tb.reconstructFormattingElements();
								tb.insert(startTag);
							} else if (name.equals("li")) {
								tb.framesetOk(false);
								ArrayList<Element> stack = tb.getStack();
								for (int i = stack.size() - 1; i > 0; i--) {
									Element el = stack.get(i);
									if (el.nodeName().equals("li")) {
										tb.processEndTag("li");
										break;
									}
									if (tb.isSpecial(el)
											&& !StringUtil.inSorted(el.nodeName(), Constants.InBodyStartLiBreakers))
										break;
								}
								if (tb.inButtonScope("p")) {
									tb.processEndTag("p");
								}
								tb.insert(startTag);
							} else if (name.equals("html")) {
								tb.error(this);
								Element html = tb.getStack().get(0);
								for (Attribute attribute : startTag.getAttributes()) {
									if (!html.hasAttr(attribute.getKey()))
										html.attributes().put(attribute);
								}
							} else if (StringUtil.inSorted(name, Constants.InBodyStartToHead)) {
								return tb.process(t, InHead);
							} else if (name.equals("body")) {
								tb.error(this);
								ArrayList<Element> stack = tb.getStack();
								if (stack.size() == 1
										|| (stack.size() > 2 && !stack.get(1).nodeName().equals("body"))) {
									return false;
								} else {
									tb.framesetOk(false);
									Element body = stack.get(1);
									for (Attribute attribute : startTag.getAttributes()) {
										if (!body.hasAttr(attribute.getKey()))
											body.attributes().put(attribute);
									}
								}
							} else if (name.equals("frameset")) {
								tb.error(this);
								ArrayList<Element> stack = tb.getStack();
								if (stack.size() == 1
										|| (stack.size() > 2 && !stack.get(1).nodeName().equals("body"))) {
									return false;
								} else if (!tb.framesetOk()) {
									return false;
								} else {
									Element second = stack.get(1);
									if (second.parent() != null)
										second.remove();
									while (stack.size() > 1)
										stack.remove(stack.size() - 1);
									tb.insert(startTag);
									tb.transition(InFrameset);
								}
							} else if (StringUtil.inSorted(name, Constants.Headings)) {
								if (tb.inButtonScope("p")) {
									tb.processEndTag("p");
								}
								if (StringUtil.inSorted(tb.currentElement().nodeName(), Constants.Headings)) {
									tb.error(this);
									tb.pop();
								}
								tb.insert(startTag);
							} else if (StringUtil.inSorted(name, Constants.InBodyStartPreListing)) {
								if (tb.inButtonScope("p")) {
									tb.processEndTag("p");
								}
								tb.insert(startTag);
								tb.framesetOk(false);
							} else if (name.equals("form")) {
								if (tb.getFormElement() != null) {
									tb.error(this);
									return false;
								}
								if (tb.inButtonScope("p")) {
									tb.processEndTag("p");
								}
								tb.insertForm(startTag, true);
							} else if (StringUtil.inSorted(name, Constants.DdDt)) {
								tb.framesetOk(false);
								ArrayList<Element> stack = tb.getStack();
								for (int i = stack.size() - 1; i > 0; i--) {
									Element el = stack.get(i);
									if (StringUtil.inSorted(el.nodeName(), Constants.DdDt)) {
										tb.processEndTag(el.nodeName());
										break;
									}
									if (tb.isSpecial(el)
											&& !StringUtil.inSorted(el.nodeName(), Constants.InBodyStartLiBreakers))
										break;
								}
								if (tb.inButtonScope("p")) {
									tb.processEndTag("p");
								}
								tb.insert(startTag);
							} else if (name.equals("plaintext")) {
								if (tb.inButtonScope("p")) {
									tb.processEndTag("p");
								}
								tb.insert(startTag);
								tb.tokeniser.transition(TokeniserState.PLAINTEXT);
							} else if (name.equals("button")) {
								if (tb.inButtonScope("button")) {
									tb.error(this);
									tb.processEndTag("button");
									tb.process(startTag);
								} else {
									tb.reconstructFormattingElements();
									tb.insert(startTag);
									tb.framesetOk(false);
								}
							} else if (StringUtil.inSorted(name, Constants.Formatters)) {
								tb.reconstructFormattingElements();
								Element el = tb.insert(startTag);
								tb.pushActiveFormattingElements(el);
							} else if (name.equals("nobr")) {
								tb.reconstructFormattingElements();
								if (tb.inScope("nobr")) {
									tb.error(this);
									tb.processEndTag("nobr");
									tb.reconstructFormattingElements();
								}
								Element el = tb.insert(startTag);
								tb.pushActiveFormattingElements(el);
							} else if (StringUtil.inSorted(name, Constants.InBodyStartApplets)) {
								tb.reconstructFormattingElements();
								tb.insert(startTag);
								tb.insertMarkerToFormattingElements();
								tb.framesetOk(false);
							} else if (name.equals("table")) {
								if (tb.getDocument().quirksMode() != Document.QuirksMode.quirks
										&& tb.inButtonScope("p")) {
									tb.processEndTag("p");
								}
								tb.insert(startTag);
								tb.framesetOk(false);
								tb.transition(InTable);
							} else if (name.equals("input")) {
								tb.reconstructFormattingElements();
								Element el = tb.insertEmpty(startTag);
								if (!el.attr("type").equalsIgnoreCase("hidden"))
									tb.framesetOk(false);
							} else if (StringUtil.inSorted(name, Constants.InBodyStartMedia)) {
								tb.insertEmpty(startTag);
							} else if (name.equals("hr")) {
								if (tb.inButtonScope("p")) {
									tb.processEndTag("p");
								}
								tb.insertEmpty(startTag);
								tb.framesetOk(false);
							} else if (name.equals("image")) {
								if (tb.getFromStack("svg") == null)
									return tb.process(startTag.name("img"));
								else
									tb.insert(startTag);
							} else if (name.equals("isindex")) {
								tb.error(this);
								if (tb.getFormElement() != null)
									return false;
								tb.processStartTag("form");
								if (startTag.attributes.hasKey("action")) {
									Element form = tb.getFormElement();
									form.attr("action", startTag.attributes.get("action"));
								}
								tb.processStartTag("hr");
								tb.processStartTag("label");
								String prompt = startTag.attributes.hasKey("prompt")
										? startTag.attributes.get("prompt")
										: "This is a searchable index. Enter search keywords: ";
								tb.process(new Token.Character().data(prompt));
								Attributes inputAttribs = new Attributes();
								for (Attribute attr : startTag.attributes) {
									if (!StringUtil.inSorted(attr.getKey(), Constants.InBodyStartInputAttribs))
										inputAttribs.put(attr);
								}
								inputAttribs.put("name", "isindex");
								tb.processStartTag("input", inputAttribs);
								tb.processEndTag("label");
								tb.processStartTag("hr");
								tb.processEndTag("form");
							} else if (name.equals("textarea")) {
								tb.insert(startTag);
								tb.tokeniser.transition(TokeniserState.Rcdata);
								tb.markInsertionMode();
								tb.framesetOk(false);
								tb.transition(Text);
							} else if (name.equals("xmp")) {
								if (tb.inButtonScope("p")) {
									tb.processEndTag("p");
								}
								tb.reconstructFormattingElements();
								tb.framesetOk(false);
								handleRawtext(startTag, tb);
							} else if (name.equals("iframe")) {
								tb.framesetOk(false);
								handleRawtext(startTag, tb);
							} else if (name.equals("noembed")) {
								handleRawtext(startTag, tb);
							} else if (name.equals("select")) {
								tb.reconstructFormattingElements();
								tb.insert(startTag);
								tb.framesetOk(false);
								HtmlTreeBuilderState state = tb.state();
								if (state.equals(InTable) || state.equals(InCaption) || state.equals(InTableBody)
										|| state.equals(InRow) || state.equals(InCell))
									tb.transition(InSelectInTable);
								else
									tb.transition(InSelect);
							} else if (StringUtil.inSorted(name, Constants.InBodyStartOptions)) {
								if (tb.currentElement().nodeName().equals("option"))
									tb.processEndTag("option");
								tb.reconstructFormattingElements();
								tb.insert(startTag);
							} else if (StringUtil.inSorted(name, Constants.InBodyStartRuby)) {
								if (tb.inScope("ruby")) {
									tb.generateImpliedEndTags();
									if (!tb.currentElement().nodeName().equals("ruby")) {
										tb.error(this);
										tb.popStackToBefore("ruby");
									}
									tb.insert(startTag);
								}
							} else if (name.equals("math")) {
								tb.reconstructFormattingElements();
								tb.insert(startTag);
							} else if (name.equals("svg")) {
								tb.reconstructFormattingElements();
								tb.insert(startTag);
							} else if (StringUtil.inSorted(name, Constants.InBodyStartDrop)) {
								tb.error(this);
								return false;
							} else {
								tb.reconstructFormattingElements();
								tb.insert(startTag);
							}
						}
					}
                    break;

                case EndTag:
			int PROBE_START_LINE_557 = 557;
			org.jsoup.parser.Token p_t_721_line_557 = t;
			Token.EndTag html_tree_builder_state_1_expr84_line_557 = p_t_721_line_557.asEndTag();
			int PROBE_END_LINE_557 = 557;
			Token.EndTag endTag = html_tree_builder_state_1_expr84_line_557;
			int PROBE_START_LINE_558 = 558;
			org.jsoup.parser.Token.EndTag v_end_tag_727_line_558 = endTag;
			String html_tree_builder_state_1_expr86_line_558 = v_end_tag_727_line_558.normalName();
			int PROBE_END_LINE_558 = 558;
			name = html_tree_builder_state_1_expr86_line_558;
			int PROBE_START_LINE_559 = 751;
			String v_name_726_line_559 = name;
			String[] q_in_body_end_adoption_formatters_34_line_559 = Constants.InBodyEndAdoptionFormatters;
			boolean html_tree_builder_state_1_expr87_line_559 = StringUtil.inSorted(v_name_726_line_559,
					q_in_body_end_adoption_formatters_34_line_559);
			int PROBE_END_LINE_559 = 751;
			if (html_tree_builder_state_1_expr87_line_559) {
                        // Adoption Agency Algorithm.
                        for (int i = 0; i < 8; i++) {
                            Element formatEl = tb.getActiveFormattingElement(name);
                            if (formatEl == null)
                                return anyOtherEndTag(t, tb);
                            else if (!tb.onStack(formatEl)) {
                                tb.error(this);
                                tb.removeFromActiveFormattingElements(formatEl);
                                return true;
                            } else if (!tb.inScope(formatEl.nodeName())) {
                                tb.error(this);
                                return false;
                            } else if (tb.currentElement() != formatEl)
                                tb.error(this);

                            Element furthestBlock = null;
                            Element commonAncestor = null;
                            boolean seenFormattingElement = false;
                            ArrayList<Element> stack = tb.getStack();
                            // the spec doesn't limit to < 64, but in degenerate cases (9000+ stack depth) this prevents
                            // run-aways
                            final int stackSize = stack.size();
                            for (int si = 0; si < stackSize && si < 64; si++) {
                                Element el = stack.get(si);
                                if (el == formatEl) {
                                    commonAncestor = stack.get(si - 1);
                                    seenFormattingElement = true;
                                } else if (seenFormattingElement && tb.isSpecial(el)) {
                                    furthestBlock = el;
                                    break;
                                }
                            }
                            if (furthestBlock == null) {
                                tb.popStackToClose(formatEl.nodeName());
                                tb.removeFromActiveFormattingElements(formatEl);
                                return true;
                            }

                            // todo: Let a bookmark note the position of the formatting element in the list of active formatting elements relative to the elements on either side of it in the list.
                            // does that mean: int pos of format el in list?
                            Element node = furthestBlock;
                            Element lastNode = furthestBlock;
                            for (int j = 0; j < 3; j++) {
                                if (tb.onStack(node))
                                    node = tb.aboveOnStack(node);
                                if (!tb.isInActiveFormattingElements(node)) { // note no bookmark check
                                    tb.removeFromStack(node);
                                    continue;
                                } else if (node == formatEl)
                                    break;

                                Element replacement = new Element(Tag.valueOf(node.nodeName(), ParseSettings.preserveCase), tb.getBaseUri());
                                // case will follow the original node (so honours ParseSettings)
                                tb.replaceActiveFormattingElement(node, replacement);
                                tb.replaceOnStack(node, replacement);
                                node = replacement;

                                if (lastNode == furthestBlock) {
                                    // todo: move the aforementioned bookmark to be immediately after the new node in the list of active formatting elements.
                                    // not getting how this bookmark both straddles the element above, but is inbetween here...
                                }
                                if (lastNode.parent() != null)
                                    lastNode.remove();
                                node.appendChild(lastNode);

                                lastNode = node;
                            }

                            if (StringUtil.inSorted(commonAncestor.nodeName(), Constants.InBodyEndTableFosters)) {
                                if (lastNode.parent() != null)
                                    lastNode.remove();
                                tb.insertInFosterParent(lastNode);
                            } else {
                                if (lastNode.parent() != null)
                                    lastNode.remove();
                                commonAncestor.appendChild(lastNode);
                            }

                            Element adopter = new Element(formatEl.tag(), tb.getBaseUri());
                            adopter.attributes().addAll(formatEl.attributes());
                            Node[] childNodes = furthestBlock.childNodes().toArray(new Node[furthestBlock.childNodeSize()]);
                            for (Node childNode : childNodes) {
                                adopter.appendChild(childNode); // append will reparent. thus the clone to avoid concurrent mod.
                            }
                            furthestBlock.appendChild(adopter);
                            tb.removeFromActiveFormattingElements(formatEl);
                            // todo: insert the new element into the list of active formatting elements at the position of the aforementioned bookmark.
                            tb.removeFromStack(formatEl);
                            tb.insertOnStackAfter(furthestBlock, adopter);
                        }
                    } else {
						int PROBE_START_LINE_650 = 751;
						String v_name_726_line_650 = name;
						String[] q_in_body_end_closers_35_line_650 = Constants.InBodyEndClosers;
						boolean html_tree_builder_state_1_expr88_line_650 = StringUtil.inSorted(v_name_726_line_650,
								q_in_body_end_closers_35_line_650);
						int PROBE_END_LINE_650 = 751;
						if (html_tree_builder_state_1_expr88_line_650) {
							int PROBE_START_LINE_651 = 660;
							org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_651 = tb;
							String v_name_726_line_651 = name;
							boolean html_tree_builder_state_1_expr90_line_651 = p_tb_722_line_651
									.inScope(v_name_726_line_651);
							boolean html_tree_builder_state_1_expr89_line_651 = !html_tree_builder_state_1_expr90_line_651;
							int PROBE_END_LINE_651 = 660;
							if (html_tree_builder_state_1_expr89_line_651) {
								tb.error(this);
								return false;
							} else {
								int PROBE_START_LINE_656 = 656;
								org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_656 = tb;
								int PROBE_END_LINE_656 = 656;
								p_tb_722_line_656.generateImpliedEndTags();
								int PROBE_START_LINE_657 = 658;
								org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_657 = tb;
								org.jsoup.nodes.Element html_tree_builder_state_1_expr95_line_657 = p_tb_722_line_657
										.currentElement();
								String html_tree_builder_state_1_expr94_line_657 = html_tree_builder_state_1_expr95_line_657
										.nodeName();
								String v_name_726_line_657 = name;
								boolean html_tree_builder_state_1_expr93_line_657 = html_tree_builder_state_1_expr94_line_657
										.equals(v_name_726_line_657);
								boolean html_tree_builder_state_1_expr92_line_657 = !html_tree_builder_state_1_expr93_line_657;
								int PROBE_END_LINE_657 = 658;
								if (html_tree_builder_state_1_expr92_line_657)
									tb.error(this);
								int PROBE_START_LINE_659 = 659;
								org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_659 = tb;
								String v_name_726_line_659 = name;
								int PROBE_END_LINE_659 = 659;
								p_tb_722_line_659.popStackToClose(v_name_726_line_659);
							}
						} else {
							int PROBE_START_LINE_661 = 751;
							String v_name_726_line_661 = name;
							boolean html_tree_builder_state_1_expr97_line_661 = v_name_726_line_661.equals("span");
							int PROBE_END_LINE_661 = 751;
							if (html_tree_builder_state_1_expr97_line_661) {
								return anyOtherEndTag(t, tb);
							} else {
								int PROBE_START_LINE_664 = 751;
								String v_name_726_line_664 = name;
								boolean html_tree_builder_state_1_expr98_line_664 = v_name_726_line_664.equals("li");
								int PROBE_END_LINE_664 = 751;
								if (html_tree_builder_state_1_expr98_line_664) {
									if (!tb.inListItemScope(name)) {
										tb.error(this);
										return false;
									} else {
										tb.generateImpliedEndTags(name);
										if (!tb.currentElement().nodeName().equals(name))
											tb.error(this);
										tb.popStackToClose(name);
									}
								} else {
									int PROBE_START_LINE_674 = 751;
									String v_name_726_line_674 = name;
									boolean html_tree_builder_state_1_expr99_line_674 = v_name_726_line_674
											.equals("body");
									int PROBE_END_LINE_674 = 751;
									if (html_tree_builder_state_1_expr99_line_674) {
										int PROBE_START_LINE_675 = 681;
										org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_675 = tb;
										boolean html_tree_builder_state_1_expr101_line_675 = p_tb_722_line_675
												.inScope("body");
										boolean html_tree_builder_state_1_expr100_line_675 = !html_tree_builder_state_1_expr101_line_675;
										int PROBE_END_LINE_675 = 681;
										if (html_tree_builder_state_1_expr100_line_675) {
											tb.error(this);
											return false;
										} else {
											int PROBE_START_LINE_680 = 680;
											org.jsoup.parser.HtmlTreeBuilder p_tb_722_line_680 = tb;
											org.jsoup.parser.HtmlTreeBuilderState f_after_body_728_line_680 = AfterBody;
											int PROBE_END_LINE_680 = 680;
											p_tb_722_line_680.transition(f_after_body_728_line_680);
										}
									} else if (name.equals("html")) {
										boolean notIgnored = tb.processEndTag("body");
										if (notIgnored)
											return tb.process(endTag);
									} else if (name.equals("form")) {
										Element currentForm = tb.getFormElement();
										tb.setFormElement(null);
										if (currentForm == null || !tb.inScope(name)) {
											tb.error(this);
											return false;
										} else {
											tb.generateImpliedEndTags();
											if (!tb.currentElement().nodeName().equals(name))
												tb.error(this);
											tb.removeFromStack(currentForm);
										}
									} else if (name.equals("p")) {
										if (!tb.inButtonScope(name)) {
											tb.error(this);
											tb.processStartTag(name);
											return tb.process(endTag);
										} else {
											tb.generateImpliedEndTags(name);
											if (!tb.currentElement().nodeName().equals(name))
												tb.error(this);
											tb.popStackToClose(name);
										}
									} else if (StringUtil.inSorted(name, Constants.DdDt)) {
										if (!tb.inScope(name)) {
											tb.error(this);
											return false;
										} else {
											tb.generateImpliedEndTags(name);
											if (!tb.currentElement().nodeName().equals(name))
												tb.error(this);
											tb.popStackToClose(name);
										}
									} else if (StringUtil.inSorted(name, Constants.Headings)) {
										if (!tb.inScope(Constants.Headings)) {
											tb.error(this);
											return false;
										} else {
											tb.generateImpliedEndTags(name);
											if (!tb.currentElement().nodeName().equals(name))
												tb.error(this);
											tb.popStackToClose(Constants.Headings);
										}
									} else if (name.equals("sarcasm")) {
										return anyOtherEndTag(t, tb);
									} else if (StringUtil.inSorted(name, Constants.InBodyStartApplets)) {
										if (!tb.inScope("name")) {
											if (!tb.inScope(name)) {
												tb.error(this);
												return false;
											}
											tb.generateImpliedEndTags();
											if (!tb.currentElement().nodeName().equals(name))
												tb.error(this);
											tb.popStackToClose(name);
											tb.clearFormattingElementsToLastMarker();
										}
									} else if (name.equals("br")) {
										tb.error(this);
										tb.processStartTag("br");
										return false;
									} else {
										return anyOtherEndTag(t, tb);
									}
								}
							}
						}
					}

                    break;
                case EOF:
                    // todo: error if stack contains something not dd, dt, li, p, tbody, td, tfoot, th, thead, tr, body, html
                    // stop parsing
                    break;
            }
            return true;
        }

        boolean anyOtherEndTag(Token t, HtmlTreeBuilder tb) {
            String name = tb.settings.normalizeTag(t.asEndTag().name()); // matches with case sensitivity if enabled
            ArrayList<Element> stack = tb.getStack();
            for (int pos = stack.size() -1; pos >= 0; pos--) {
                Element node = stack.get(pos);
                if (node.nodeName().equals(name)) {
                    tb.generateImpliedEndTags(name);
                    if (!name.equals(tb.currentElement().nodeName()))
                        tb.error(this);
                    tb.popStackToClose(name);
                    break;
                } else {
                    if (tb.isSpecial(node)) {
                        tb.error(this);
                        return false;
                    }
                }
            }
            return true;
        }
    },
    Text {
        // in script, style etc. normally treated as data tags
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (t.isCharacter()) {
                tb.insert(t.asCharacter());
            } else if (t.isEOF()) {
                tb.error(this);
                // if current node is script: already started
                tb.pop();
                tb.transition(tb.originalState());
                return tb.process(t);
            } else if (t.isEndTag()) {
                // if: An end tag whose tag name is "script" -- scripting nesting level, if evaluating scripts
                tb.pop();
                tb.transition(tb.originalState());
            }
            return true;
        }
    },
    InTable {
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (t.isCharacter()) {
                tb.newPendingTableCharacters();
                tb.markInsertionMode();
                tb.transition(InTableText);
                return tb.process(t);
            } else if (t.isComment()) {
                tb.insert(t.asComment());
                return true;
            } else if (t.isDoctype()) {
                tb.error(this);
                return false;
            } else if (t.isStartTag()) {
                Token.StartTag startTag = t.asStartTag();
                String name = startTag.normalName();
                if (name.equals("caption")) {
                    tb.clearStackToTableContext();
                    tb.insertMarkerToFormattingElements();
                    tb.insert(startTag);
                    tb.transition(InCaption);
                } else if (name.equals("colgroup")) {
                    tb.clearStackToTableContext();
                    tb.insert(startTag);
                    tb.transition(InColumnGroup);
                } else if (name.equals("col")) {
                    tb.processStartTag("colgroup");
                    return tb.process(t);
                } else if (StringUtil.in(name, "tbody", "tfoot", "thead")) {
                    tb.clearStackToTableContext();
                    tb.insert(startTag);
                    tb.transition(InTableBody);
                } else if (StringUtil.in(name, "td", "th", "tr")) {
                    tb.processStartTag("tbody");
                    return tb.process(t);
                } else if (name.equals("table")) {
                    tb.error(this);
                    boolean processed = tb.processEndTag("table");
                    if (processed) // only ignored if in fragment
                        return tb.process(t);
                } else if (StringUtil.in(name, "style", "script")) {
                    return tb.process(t, InHead);
                } else if (name.equals("input")) {
                    if (!startTag.attributes.get("type").equalsIgnoreCase("hidden")) {
                        return anythingElse(t, tb);
                    } else {
                        tb.insertEmpty(startTag);
                    }
                } else if (name.equals("form")) {
                    tb.error(this);
                    if (tb.getFormElement() != null)
                        return false;
                    else {
                        tb.insertForm(startTag, false);
                    }
                } else {
                    return anythingElse(t, tb);
                }
                return true; // todo: check if should return processed http://www.whatwg.org/specs/web-apps/current-work/multipage/tree-construction.html#parsing-main-intable
            } else if (t.isEndTag()) {
                Token.EndTag endTag = t.asEndTag();
                String name = endTag.normalName();

                if (name.equals("table")) {
                    if (!tb.inTableScope(name)) {
                        tb.error(this);
                        return false;
                    } else {
                        tb.popStackToClose("table");
                    }
                    tb.resetInsertionMode();
                } else if (StringUtil.in(name,
                        "body", "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                    tb.error(this);
                    return false;
                } else {
                    return anythingElse(t, tb);
                }
                return true; // todo: as above todo
            } else if (t.isEOF()) {
                if (tb.currentElement().nodeName().equals("html"))
                    tb.error(this);
                return true; // stops parsing
            }
            return anythingElse(t, tb);
        }

        boolean anythingElse(Token t, HtmlTreeBuilder tb) {
            tb.error(this);
            boolean processed;
            if (StringUtil.in(tb.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                tb.setFosterInserts(true);
                processed = tb.process(t, InBody);
                tb.setFosterInserts(false);
            } else {
                processed = tb.process(t, InBody);
            }
            return processed;
        }
    },
    InTableText {
        boolean process(Token t, HtmlTreeBuilder tb) {
            switch (t.type) {
                case Character:
                    Token.Character c = t.asCharacter();
                    if (c.getData().equals(nullString)) {
                        tb.error(this);
                        return false;
                    } else {
                        tb.getPendingTableCharacters().add(c.getData());
                    }
                    break;
                default:
                    // todo - don't really like the way these table character data lists are built
                    if (tb.getPendingTableCharacters().size() > 0) {
                        for (String character : tb.getPendingTableCharacters()) {
                            if (!isWhitespace(character)) {
                                // InTable anything else section:
                                tb.error(this);
                                if (StringUtil.in(tb.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                                    tb.setFosterInserts(true);
                                    tb.process(new Token.Character().data(character), InBody);
                                    tb.setFosterInserts(false);
                                } else {
                                    tb.process(new Token.Character().data(character), InBody);
                                }
                            } else
                                tb.insert(new Token.Character().data(character));
                        }
                        tb.newPendingTableCharacters();
                    }
                    tb.transition(tb.originalState());
                    return tb.process(t);
            }
            return true;
        }
    },
    InCaption {
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (t.isEndTag() && t.asEndTag().normalName().equals("caption")) {
                Token.EndTag endTag = t.asEndTag();
                String name = endTag.normalName();
                if (!tb.inTableScope(name)) {
                    tb.error(this);
                    return false;
                } else {
                    tb.generateImpliedEndTags();
                    if (!tb.currentElement().nodeName().equals("caption"))
                        tb.error(this);
                    tb.popStackToClose("caption");
                    tb.clearFormattingElementsToLastMarker();
                    tb.transition(InTable);
                }
            } else if ((
                    t.isStartTag() && StringUtil.in(t.asStartTag().normalName(),
                            "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr") ||
                            t.isEndTag() && t.asEndTag().normalName().equals("table"))
                    ) {
                tb.error(this);
                boolean processed = tb.processEndTag("caption");
                if (processed)
                    return tb.process(t);
            } else if (t.isEndTag() && StringUtil.in(t.asEndTag().normalName(),
                    "body", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                tb.error(this);
                return false;
            } else {
                return tb.process(t, InBody);
            }
            return true;
        }
    },
    InColumnGroup {
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (isWhitespace(t)) {
                tb.insert(t.asCharacter());
                return true;
            }
            switch (t.type) {
                case Comment:
                    tb.insert(t.asComment());
                    break;
                case Doctype:
                    tb.error(this);
                    break;
                case StartTag:
                    Token.StartTag startTag = t.asStartTag();
                    switch (startTag.normalName()) {
                        case "html":
                            return tb.process(t, InBody);
                        case "col":
                            tb.insertEmpty(startTag);
                            break;
                        default:
                            return anythingElse(t, tb);
                    }
                    break;
                case EndTag:
                    Token.EndTag endTag = t.asEndTag();
                    if (endTag.normalName.equals("colgroup")) {
                        if (tb.currentElement().nodeName().equals("html")) { // frag case
                            tb.error(this);
                            return false;
                        } else {
                            tb.pop();
                            tb.transition(InTable);
                        }
                    } else
                        return anythingElse(t, tb);
                    break;
                case EOF:
                    if (tb.currentElement().nodeName().equals("html"))
                        return true; // stop parsing; frag case
                    else
                        return anythingElse(t, tb);
                default:
                    return anythingElse(t, tb);
            }
            return true;
        }

        private boolean anythingElse(Token t, TreeBuilder tb) {
            boolean processed = tb.processEndTag("colgroup");
            if (processed) // only ignored in frag case
                return tb.process(t);
            return true;
        }
    },
    InTableBody {
        boolean process(Token t, HtmlTreeBuilder tb) {
            switch (t.type) {
                case StartTag:
                    Token.StartTag startTag = t.asStartTag();
                    String name = startTag.normalName();
                    if (name.equals("template")) {
                        tb.insert(startTag);
                    } else if (name.equals("tr")) {
                        tb.clearStackToTableBodyContext();
                        tb.insert(startTag);
                        tb.transition(InRow);
                    } else if (StringUtil.in(name, "th", "td")) {
                        tb.error(this);
                        tb.processStartTag("tr");
                        return tb.process(startTag);
                    } else if (StringUtil.in(name, "caption", "col", "colgroup", "tbody", "tfoot", "thead")) {
                        return exitTableBody(t, tb);
                    } else
                        return anythingElse(t, tb);
                    break;
                case EndTag:
                    Token.EndTag endTag = t.asEndTag();
                    name = endTag.normalName();
                    if (StringUtil.in(name, "tbody", "tfoot", "thead")) {
                        if (!tb.inTableScope(name)) {
                            tb.error(this);
                            return false;
                        } else {
                            tb.clearStackToTableBodyContext();
                            tb.pop();
                            tb.transition(InTable);
                        }
                    } else if (name.equals("table")) {
                        return exitTableBody(t, tb);
                    } else if (StringUtil.in(name, "body", "caption", "col", "colgroup", "html", "td", "th", "tr")) {
                        tb.error(this);
                        return false;
                    } else
                        return anythingElse(t, tb);
                    break;
                default:
                    return anythingElse(t, tb);
            }
            return true;
        }

        private boolean exitTableBody(Token t, HtmlTreeBuilder tb) {
            if (!(tb.inTableScope("tbody") || tb.inTableScope("thead") || tb.inScope("tfoot"))) {
                // frag case
                tb.error(this);
                return false;
            }
            tb.clearStackToTableBodyContext();
            tb.processEndTag(tb.currentElement().nodeName()); // tbody, tfoot, thead
            return tb.process(t);
        }

        private boolean anythingElse(Token t, HtmlTreeBuilder tb) {
            return tb.process(t, InTable);
        }
    },
    InRow {
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (t.isStartTag()) {
                Token.StartTag startTag = t.asStartTag();
                String name = startTag.normalName();

                if (name.equals("template")) {
                    tb.insert(startTag);
                } else if (StringUtil.in(name, "th", "td")) {
                    tb.clearStackToTableRowContext();
                    tb.insert(startTag);
                    tb.transition(InCell);
                    tb.insertMarkerToFormattingElements();
                } else if (StringUtil.in(name, "caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr")) {
                    return handleMissingTr(t, tb);
                } else {
                    return anythingElse(t, tb);
                }
            } else if (t.isEndTag()) {
                Token.EndTag endTag = t.asEndTag();
                String name = endTag.normalName();

                if (name.equals("tr")) {
                    if (!tb.inTableScope(name)) {
                        tb.error(this); // frag
                        return false;
                    }
                    tb.clearStackToTableRowContext();
                    tb.pop(); // tr
                    tb.transition(InTableBody);
                } else if (name.equals("table")) {
                    return handleMissingTr(t, tb);
                } else if (StringUtil.in(name, "tbody", "tfoot", "thead")) {
                    if (!tb.inTableScope(name)) {
                        tb.error(this);
                        return false;
                    }
                    tb.processEndTag("tr");
                    return tb.process(t);
                } else if (StringUtil.in(name, "body", "caption", "col", "colgroup", "html", "td", "th")) {
                    tb.error(this);
                    return false;
                } else {
                    return anythingElse(t, tb);
                }
            } else {
                return anythingElse(t, tb);
            }
            return true;
        }

        private boolean anythingElse(Token t, HtmlTreeBuilder tb) {
            return tb.process(t, InTable);
        }

        private boolean handleMissingTr(Token t, TreeBuilder tb) {
            boolean processed = tb.processEndTag("tr");
            if (processed)
                return tb.process(t);
            else
                return false;
        }
    },
    InCell {
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (t.isEndTag()) {
                Token.EndTag endTag = t.asEndTag();
                String name = endTag.normalName();

                if (StringUtil.in(name, "td", "th")) {
                    if (!tb.inTableScope(name)) {
                        tb.error(this);
                        tb.transition(InRow); // might not be in scope if empty: <td /> and processing fake end tag
                        return false;
                    }
                    tb.generateImpliedEndTags();
                    if (!tb.currentElement().nodeName().equals(name))
                        tb.error(this);
                    tb.popStackToClose(name);
                    tb.clearFormattingElementsToLastMarker();
                    tb.transition(InRow);
                } else if (StringUtil.in(name, "body", "caption", "col", "colgroup", "html")) {
                    tb.error(this);
                    return false;
                } else if (StringUtil.in(name, "table", "tbody", "tfoot", "thead", "tr")) {
                    if (!tb.inTableScope(name)) {
                        tb.error(this);
                        return false;
                    }
                    closeCell(tb);
                    return tb.process(t);
                } else {
                    return anythingElse(t, tb);
                }
            } else if (t.isStartTag() &&
                    StringUtil.in(t.asStartTag().normalName(),
                            "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                if (!(tb.inTableScope("td") || tb.inTableScope("th"))) {
                    tb.error(this);
                    return false;
                }
                closeCell(tb);
                return tb.process(t);
            } else {
                return anythingElse(t, tb);
            }
            return true;
        }

        private boolean anythingElse(Token t, HtmlTreeBuilder tb) {
            return tb.process(t, InBody);
        }

        private void closeCell(HtmlTreeBuilder tb) {
            if (tb.inTableScope("td"))
                tb.processEndTag("td");
            else
                tb.processEndTag("th"); // only here if th or td in scope
        }
    },
    InSelect {
        boolean process(Token t, HtmlTreeBuilder tb) {
            switch (t.type) {
                case Character:
                    Token.Character c = t.asCharacter();
                    if (c.getData().equals(nullString)) {
                        tb.error(this);
                        return false;
                    } else {
                        tb.insert(c);
                    }
                    break;
                case Comment:
                    tb.insert(t.asComment());
                    break;
                case Doctype:
                    tb.error(this);
                    return false;
                case StartTag:
                    Token.StartTag start = t.asStartTag();
                    String name = start.normalName();
                    if (name.equals("html"))
                        return tb.process(start, InBody);
                    else if (name.equals("option")) {
                        if (tb.currentElement().nodeName().equals("option"))
                            tb.processEndTag("option");
                        tb.insert(start);
                    } else if (name.equals("optgroup")) {
                        if (tb.currentElement().nodeName().equals("option"))
                            tb.processEndTag("option");
                        else if (tb.currentElement().nodeName().equals("optgroup"))
                            tb.processEndTag("optgroup");
                        tb.insert(start);
                    } else if (name.equals("select")) {
                        tb.error(this);
                        return tb.processEndTag("select");
                    } else if (StringUtil.in(name, "input", "keygen", "textarea")) {
                        tb.error(this);
                        if (!tb.inSelectScope("select"))
                            return false; // frag
                        tb.processEndTag("select");
                        return tb.process(start);
                    } else if (name.equals("script")) {
                        return tb.process(t, InHead);
                    } else {
                        return anythingElse(t, tb);
                    }
                    break;
                case EndTag:
                    Token.EndTag end = t.asEndTag();
                    name = end.normalName();
                    switch (name) {
                        case "optgroup":
                            if (tb.currentElement().nodeName().equals("option") && tb.aboveOnStack(tb.currentElement()) != null && tb.aboveOnStack(tb.currentElement()).nodeName().equals("optgroup"))
                                tb.processEndTag("option");
                            if (tb.currentElement().nodeName().equals("optgroup"))
                                tb.pop();
                            else
                                tb.error(this);
                            break;
                        case "option":
                            if (tb.currentElement().nodeName().equals("option"))
                                tb.pop();
                            else
                                tb.error(this);
                            break;
                        case "select":
                            if (!tb.inSelectScope(name)) {
                                tb.error(this);
                                return false;
                            } else {
                                tb.popStackToClose(name);
                                tb.resetInsertionMode();
                            }
                            break;
                        default:
                            return anythingElse(t, tb);
                    }
                    break;
                case EOF:
                    if (!tb.currentElement().nodeName().equals("html"))
                        tb.error(this);
                    break;
                default:
                    return anythingElse(t, tb);
            }
            return true;
        }

        private boolean anythingElse(Token t, HtmlTreeBuilder tb) {
            tb.error(this);
            return false;
        }
    },
    InSelectInTable {
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (t.isStartTag() && StringUtil.in(t.asStartTag().normalName(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                tb.error(this);
                tb.processEndTag("select");
                return tb.process(t);
            } else if (t.isEndTag() && StringUtil.in(t.asEndTag().normalName(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                tb.error(this);
                if (tb.inTableScope(t.asEndTag().normalName())) {
                    tb.processEndTag("select");
                    return (tb.process(t));
                } else
                    return false;
            } else {
                return tb.process(t, InSelect);
            }
        }
    },
    AfterBody {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_1326 = 1348;
			org.jsoup.parser.Token p_t_778_line_1326 = t;
			boolean html_tree_builder_state_1_expr103_line_1326 = isWhitespace(p_t_778_line_1326);
			int PROBE_END_LINE_1326 = 1348;
			if (html_tree_builder_state_1_expr103_line_1326) {
                return tb.process(t, InBody);
            } else {
				int PROBE_START_LINE_1328 = 1348;
				org.jsoup.parser.Token p_t_778_line_1328 = t;
				boolean html_tree_builder_state_1_expr104_line_1328 = p_t_778_line_1328.isComment();
				int PROBE_END_LINE_1328 = 1348;
				if (html_tree_builder_state_1_expr104_line_1328) {
					tb.insert(t.asComment());
				} else {
					int PROBE_START_LINE_1330 = 1348;
					org.jsoup.parser.Token p_t_778_line_1330 = t;
					boolean html_tree_builder_state_1_expr105_line_1330 = p_t_778_line_1330.isDoctype();
					int PROBE_END_LINE_1330 = 1348;
					if (html_tree_builder_state_1_expr105_line_1330) {
						tb.error(this);
						return false;
					} else {
						int PROBE_START_LINE_1333 = 1348;
						org.jsoup.parser.Token p_t_778_line_1333 = t;
						boolean html_tree_builder_state_1_expr107_line_1333 = p_t_778_line_1333.isStartTag();
						boolean html_tree_builder_state_1_expr108_line_1333 = true;
						if (html_tree_builder_state_1_expr107_line_1333) {
							org.jsoup.parser.Token p_t_778_line_1333_v1 = t;
							org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr110_line_1333 = p_t_778_line_1333_v1
									.asStartTag();
							String html_tree_builder_state_1_expr109_line_1333 = html_tree_builder_state_1_expr110_line_1333
									.normalName();
							html_tree_builder_state_1_expr108_line_1333 = html_tree_builder_state_1_expr109_line_1333
									.equals("html");
						}
						boolean html_tree_builder_state_1_expr106_line_1333 = html_tree_builder_state_1_expr107_line_1333
								&& html_tree_builder_state_1_expr108_line_1333;
						int PROBE_END_LINE_1333 = 1348;
						if (html_tree_builder_state_1_expr106_line_1333) {
							return tb.process(t, InBody);
						} else {
							int PROBE_START_LINE_1335 = 1348;
							org.jsoup.parser.Token p_t_778_line_1335 = t;
							boolean html_tree_builder_state_1_expr112_line_1335 = p_t_778_line_1335.isEndTag();
							boolean html_tree_builder_state_1_expr113_line_1335 = true;
							if (html_tree_builder_state_1_expr112_line_1335) {
								org.jsoup.parser.Token p_t_778_line_1335_v1 = t;
								org.jsoup.parser.Token.EndTag html_tree_builder_state_1_expr115_line_1335 = p_t_778_line_1335_v1
										.asEndTag();
								String html_tree_builder_state_1_expr114_line_1335 = html_tree_builder_state_1_expr115_line_1335
										.normalName();
								html_tree_builder_state_1_expr113_line_1335 = html_tree_builder_state_1_expr114_line_1335
										.equals("html");
							}
							boolean html_tree_builder_state_1_expr111_line_1335 = html_tree_builder_state_1_expr112_line_1335
									&& html_tree_builder_state_1_expr113_line_1335;
							int PROBE_END_LINE_1335 = 1348;
							if (html_tree_builder_state_1_expr111_line_1335) {
								int PROBE_START_LINE_1336 = 1341;
								org.jsoup.parser.HtmlTreeBuilder p_tb_779_line_1336 = tb;
								boolean html_tree_builder_state_1_expr116_line_1336 = p_tb_779_line_1336
										.isFragmentParsing();
								int PROBE_END_LINE_1336 = 1341;
								if (html_tree_builder_state_1_expr116_line_1336) {
									tb.error(this);
									return false;
								} else {
									int PROBE_START_LINE_1340 = 1340;
									org.jsoup.parser.HtmlTreeBuilder p_tb_779_line_1340 = tb;
									org.jsoup.parser.HtmlTreeBuilderState f_after_after_body_780_line_1340 = AfterAfterBody;
									int PROBE_END_LINE_1340 = 1340;
									p_tb_779_line_1340.transition(f_after_after_body_780_line_1340);
								}
							} else if (t.isEOF()) {
							} else {
								tb.error(this);
								tb.transition(InBody);
								return tb.process(t);
							}
						}
					}
				}
			}
            return true;
        }
    },
    InFrameset {
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (isWhitespace(t)) {
                tb.insert(t.asCharacter());
            } else if (t.isComment()) {
                tb.insert(t.asComment());
            } else if (t.isDoctype()) {
                tb.error(this);
                return false;
            } else if (t.isStartTag()) {
                Token.StartTag start = t.asStartTag();
                switch (start.normalName()) {
                    case "html":
                        return tb.process(start, InBody);
                    case "frameset":
                        tb.insert(start);
                        break;
                    case "frame":
                        tb.insertEmpty(start);
                        break;
                    case "noframes":
                        return tb.process(start, InHead);
                    default:
                        tb.error(this);
                        return false;
                }
            } else if (t.isEndTag() && t.asEndTag().normalName().equals("frameset")) {
                if (tb.currentElement().nodeName().equals("html")) { // frag
                    tb.error(this);
                    return false;
                } else {
                    tb.pop();
                    if (!tb.isFragmentParsing() && !tb.currentElement().nodeName().equals("frameset")) {
                        tb.transition(AfterFrameset);
                    }
                }
            } else if (t.isEOF()) {
                if (!tb.currentElement().nodeName().equals("html")) {
                    tb.error(this);
                    return true;
                }
            } else {
                tb.error(this);
                return false;
            }
            return true;
        }
    },
    AfterFrameset {
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (isWhitespace(t)) {
                tb.insert(t.asCharacter());
            } else if (t.isComment()) {
                tb.insert(t.asComment());
            } else if (t.isDoctype()) {
                tb.error(this);
                return false;
            } else if (t.isStartTag() && t.asStartTag().normalName().equals("html")) {
                return tb.process(t, InBody);
            } else if (t.isEndTag() && t.asEndTag().normalName().equals("html")) {
                tb.transition(AfterAfterFrameset);
            } else if (t.isStartTag() && t.asStartTag().normalName().equals("noframes")) {
                return tb.process(t, InHead);
            } else if (t.isEOF()) {
                // cool your heels, we're complete
            } else {
                tb.error(this);
                return false;
            }
            return true;
        }
    },
    AfterAfterBody {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_1426 = 1436;
			org.jsoup.parser.Token p_t_787_line_1426 = t;
			boolean html_tree_builder_state_1_expr118_line_1426 = p_t_787_line_1426.isComment();
			int PROBE_END_LINE_1426 = 1436;
			if (html_tree_builder_state_1_expr118_line_1426) {
                tb.insert(t.asComment());
            } else {
				int PROBE_START_LINE_1428 = 1436;
				org.jsoup.parser.Token p_t_787_line_1428 = t;
				boolean html_tree_builder_state_1_expr120_line_1428 = p_t_787_line_1428.isDoctype();
				boolean html_tree_builder_state_1_expr121_line_1428 = false;
				boolean html_tree_builder_state_1_expr122_line_1428 = false;
				if (!html_tree_builder_state_1_expr120_line_1428) {
					org.jsoup.parser.Token p_t_787_line_1428_v1 = t;
					html_tree_builder_state_1_expr121_line_1428 = isWhitespace(p_t_787_line_1428_v1);
					if (!html_tree_builder_state_1_expr121_line_1428) {
						org.jsoup.parser.Token p_t_787_line_1428_v2 = t;
						boolean html_tree_builder_state_1_expr124_line_1428 = p_t_787_line_1428_v2.isStartTag();
						boolean html_tree_builder_state_1_expr125_line_1428 = true;
						if (html_tree_builder_state_1_expr124_line_1428) {
							org.jsoup.parser.Token p_t_787_line_1428_v3 = t;
							org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr127_line_1428 = p_t_787_line_1428_v3
									.asStartTag();
							String html_tree_builder_state_1_expr126_line_1428 = html_tree_builder_state_1_expr127_line_1428
									.normalName();
							html_tree_builder_state_1_expr125_line_1428 = html_tree_builder_state_1_expr126_line_1428
									.equals("html");
						}
						boolean html_tree_builder_state_1_expr123_line_1428 = html_tree_builder_state_1_expr124_line_1428
								&& html_tree_builder_state_1_expr125_line_1428;
						html_tree_builder_state_1_expr122_line_1428 = (html_tree_builder_state_1_expr123_line_1428);
					}
				}
				boolean html_tree_builder_state_1_expr119_line_1428 = html_tree_builder_state_1_expr120_line_1428
						|| html_tree_builder_state_1_expr121_line_1428 || html_tree_builder_state_1_expr122_line_1428;
				int PROBE_END_LINE_1428 = 1436;
				if (html_tree_builder_state_1_expr119_line_1428) {
					return tb.process(t, InBody);
				} else {
					int PROBE_START_LINE_1430 = 1436;
					org.jsoup.parser.Token p_t_787_line_1430 = t;
					boolean html_tree_builder_state_1_expr128_line_1430 = p_t_787_line_1430.isEOF();
					int PROBE_END_LINE_1430 = 1436;
					if (html_tree_builder_state_1_expr128_line_1430) {
					} else {
						tb.error(this);
						tb.transition(InBody);
						return tb.process(t);
					}
				}
			}
            return true;
        }
    },
    AfterAfterFrameset {
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (t.isComment()) {
                tb.insert(t.asComment());
            } else if (t.isDoctype() || isWhitespace(t) || (t.isStartTag() && t.asStartTag().normalName().equals("html"))) {
                return tb.process(t, InBody);
            } else if (t.isEOF()) {
                // nice work chuck
            } else if (t.isStartTag() && t.asStartTag().normalName().equals("noframes")) {
                return tb.process(t, InHead);
            } else {
                tb.error(this);
                return false;
            }
            return true;
        }
    },
    ForeignContent {
        boolean process(Token t, HtmlTreeBuilder tb) {
            return true;
            // todo: implement. Also; how do we get here?
        }
    };

    int PROBE_START_LINE_1464 = 1464;

	private static String html_tree_builder_state_1_expr129_line_1464 = String.valueOf('\u0000');

	int PROBE_END_LINE_1464 = 1464;

	private static String nullString = html_tree_builder_state_1_expr129_line_1464;

    abstract boolean process(Token t, HtmlTreeBuilder tb);

    private static boolean isWhitespace(Token t) {
        int PROBE_START_LINE_1469 = 1472;
		org.jsoup.parser.Token p_t_797_line_1469 = t;
		boolean html_tree_builder_state_1_expr130_line_1469 = p_t_797_line_1469.isCharacter();
		int PROBE_END_LINE_1469 = 1472;
		if (html_tree_builder_state_1_expr130_line_1469) {
            int PROBE_START_LINE_1470 = 1470;
			org.jsoup.parser.Token p_t_797_line_1470 = t;
			org.jsoup.parser.Token.Character html_tree_builder_state_1_expr132_line_1470 = p_t_797_line_1470
					.asCharacter();
			String html_tree_builder_state_1_expr131_line_1470 = html_tree_builder_state_1_expr132_line_1470.getData();
			int PROBE_END_LINE_1470 = 1470;
			String data = html_tree_builder_state_1_expr131_line_1470;
            int PROBE_START_LINE_1471 = 1471;
			String v_data_798_line_1471 = data;
			boolean html_tree_builder_state_1_expr133_line_1471 = isWhitespace(v_data_798_line_1471);
			int PROBE_END_LINE_1471 = 1471;
			return html_tree_builder_state_1_expr133_line_1471;
        }
        return false;
    }

    private static boolean isWhitespace(String data) {
        // todo: this checks more than spec - "\t", "\n", "\f", "\r", " "
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_1479 = 1479;
			int v_i_800_line_1478 = i;
			String p_data_799_line_1478 = data;
			int html_tree_builder_state_1_expr136_line_1478 = p_data_799_line_1478.length();
			boolean html_tree_builder_state_1_expr135_line_1478 = v_i_800_line_1478 < html_tree_builder_state_1_expr136_line_1478;
			if (!(html_tree_builder_state_1_expr135_line_1478)) {
				break;
			}
			String p_data_799_line_1479 = data;
			int v_i_800_line_1479 = i;
			char html_tree_builder_state_1_expr138_line_1479 = p_data_799_line_1479.charAt(v_i_800_line_1479);
			int PROBE_END_LINE_1479 = 1479;
			char c = html_tree_builder_state_1_expr138_line_1479;
            int PROBE_START_LINE_1480 = 1481;
			char v_c_801_line_1480 = c;
			boolean html_tree_builder_state_1_expr140_line_1480 = StringUtil.isWhitespace(v_c_801_line_1480);
			boolean html_tree_builder_state_1_expr139_line_1480 = !html_tree_builder_state_1_expr140_line_1480;
			int PROBE_END_LINE_1480 = 1481;
			if (html_tree_builder_state_1_expr139_line_1480)
                return false;
        }
        return true;
    }

    private static void handleRcData(Token.StartTag startTag, HtmlTreeBuilder tb) {
        tb.tokeniser.transition(TokeniserState.Rcdata);
        tb.markInsertionMode();
        tb.transition(Text);
        tb.insert(startTag);
    }

    private static void handleRawtext(Token.StartTag startTag, HtmlTreeBuilder tb) {
        tb.tokeniser.transition(TokeniserState.Rawtext);
        tb.markInsertionMode();
        tb.transition(Text);
        tb.insert(startTag);
    }

    // lists of tags to search through. A little harder to read here, but causes less GC than dynamic varargs.
    // was contributing around 10% of parse GC load.
    private static final class Constants {
        private static final String[] InBodyStartToHead = new String[]{"base", "basefont", "bgsound", "command", "link", "meta", "noframes", "script", "style", "title"};
        private static final String[] InBodyStartPClosers = new String[]{"address", "article", "aside", "blockquote", "center", "details", "dir", "div", "dl",
                "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol",
                "p", "section", "summary", "ul"};
        private static final String[] Headings = new String[]{"h1", "h2", "h3", "h4", "h5", "h6"};
        private static final String[] InBodyStartPreListing = new String[]{"pre", "listing"};
        private static final String[] InBodyStartLiBreakers = new String[]{"address", "div", "p"};
        private static final String[] DdDt = new String[]{"dd", "dt"};
        private static final String[] Formatters = new String[]{"b", "big", "code", "em", "font", "i", "s", "small", "strike", "strong", "tt", "u"};
        private static final String[] InBodyStartApplets = new String[]{"applet", "marquee", "object"};
        private static final String[] InBodyStartEmptyFormatters = new String[]{"area", "br", "embed", "img", "keygen", "wbr"};
        private static final String[] InBodyStartMedia = new String[]{"param", "source", "track"};
        private static final String[] InBodyStartInputAttribs = new String[]{"name", "action", "prompt"};
        private static final String[] InBodyStartOptions = new String[]{"optgroup", "option"};
        private static final String[] InBodyStartRuby = new String[]{"rp", "rt"};
        private static final String[] InBodyStartDrop = new String[]{"caption", "col", "colgroup", "frame", "head", "tbody", "td", "tfoot", "th", "thead", "tr"};
        private static final String[] InBodyEndClosers = new String[]{"address", "article", "aside", "blockquote", "button", "center", "details", "dir", "div",
                "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu",
                "nav", "ol", "pre", "section", "summary", "ul"};
        private static final String[] InBodyEndAdoptionFormatters = new String[]{"a", "b", "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", "tt", "u"};
        private static final String[] InBodyEndTableFosters = new String[]{"table", "tbody", "tfoot", "thead", "tr"};
    }
}
