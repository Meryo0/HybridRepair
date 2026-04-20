package org.jsoup.parser;

import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.*;

import java.util.Iterator;
import java.util.LinkedList;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;

/**
 * The Tree Builder's current state. Each state embodies the processing for the state, and transitions to other states.
 */
enum HtmlTreeBuilderState {
    Initial {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_16 = 33;
			org.jsoup.parser.Token p_t_430_line_16 = t;
			boolean html_tree_builder_state_1_expr1_line_16 = isWhitespace(p_t_430_line_16);
			int PROBE_END_LINE_16 = 33;
			if (html_tree_builder_state_1_expr1_line_16) {
                return true; // ignore whitespace
            } else {
				int PROBE_START_LINE_18 = 33;
				org.jsoup.parser.Token p_t_430_line_18 = t;
				boolean html_tree_builder_state_1_expr2_line_18 = p_t_430_line_18.isComment();
				int PROBE_END_LINE_18 = 33;
				if (html_tree_builder_state_1_expr2_line_18) {
					tb.insert(t.asComment());
				} else {
					int PROBE_START_LINE_20 = 33;
					org.jsoup.parser.Token p_t_430_line_20 = t;
					boolean html_tree_builder_state_1_expr3_line_20 = p_t_430_line_20.isDoctype();
					int PROBE_END_LINE_20 = 33;
					if (html_tree_builder_state_1_expr3_line_20) {
						Token.Doctype d = t.asDoctype();
						DocumentType doctype = new DocumentType(d.getName(), d.getPublicIdentifier(),
								d.getSystemIdentifier(), tb.getBaseUri());
						tb.getDocument().appendChild(doctype);
						if (d.isForceQuirks())
							tb.getDocument().quirksMode(Document.QuirksMode.quirks);
						tb.transition(BeforeHtml);
					} else {
						int PROBE_START_LINE_31 = 31;
						org.jsoup.parser.HtmlTreeBuilder p_tb_431_line_31 = tb;
						org.jsoup.parser.HtmlTreeBuilderState f_before_html_432_line_31 = BeforeHtml;
						int PROBE_END_LINE_31 = 31;
						p_tb_431_line_31.transition(f_before_html_432_line_31);
						int PROBE_START_LINE_32 = 32;
						org.jsoup.parser.HtmlTreeBuilder p_tb_431_line_32 = tb;
						org.jsoup.parser.Token p_t_430_line_32 = t;
						boolean html_tree_builder_state_1_expr5_line_32 = p_tb_431_line_32.process(p_t_430_line_32);
						int PROBE_END_LINE_32 = 32;
						return html_tree_builder_state_1_expr5_line_32;
					}
				}
			}
            return true;
        }
    },
    BeforeHtml {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_39 = 56;
			org.jsoup.parser.Token p_t_433_line_39 = t;
			boolean html_tree_builder_state_1_expr6_line_39 = p_t_433_line_39.isDoctype();
			int PROBE_END_LINE_39 = 56;
			if (html_tree_builder_state_1_expr6_line_39) {
                tb.error(this);
                return false;
            } else {
				int PROBE_START_LINE_42 = 56;
				org.jsoup.parser.Token p_t_433_line_42 = t;
				boolean html_tree_builder_state_1_expr7_line_42 = p_t_433_line_42.isComment();
				int PROBE_END_LINE_42 = 56;
				if (html_tree_builder_state_1_expr7_line_42) {
					tb.insert(t.asComment());
				} else {
					int PROBE_START_LINE_44 = 56;
					org.jsoup.parser.Token p_t_433_line_44 = t;
					boolean html_tree_builder_state_1_expr8_line_44 = isWhitespace(p_t_433_line_44);
					int PROBE_END_LINE_44 = 56;
					if (html_tree_builder_state_1_expr8_line_44) {
						return true;
					} else {
						int PROBE_START_LINE_46 = 56;
						org.jsoup.parser.Token p_t_433_line_46 = t;
						boolean html_tree_builder_state_1_expr10_line_46 = p_t_433_line_46.isStartTag();
						boolean html_tree_builder_state_1_expr11_line_46 = true;
						if (html_tree_builder_state_1_expr10_line_46) {
							org.jsoup.parser.Token p_t_433_line_46_v1 = t;
							org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr13_line_46 = p_t_433_line_46_v1
									.asStartTag();
							String html_tree_builder_state_1_expr12_line_46 = html_tree_builder_state_1_expr13_line_46
									.name();
							html_tree_builder_state_1_expr11_line_46 = html_tree_builder_state_1_expr12_line_46
									.equals("html");
						}
						boolean html_tree_builder_state_1_expr9_line_46 = html_tree_builder_state_1_expr10_line_46
								&& html_tree_builder_state_1_expr11_line_46;
						int PROBE_END_LINE_46 = 56;
						if (html_tree_builder_state_1_expr9_line_46) {
							int PROBE_START_LINE_47 = 47;
							org.jsoup.parser.HtmlTreeBuilder p_tb_434_line_47 = tb;
							org.jsoup.parser.Token p_t_433_line_47 = t;
							org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr15_line_47 = p_t_433_line_47
									.asStartTag();
							int PROBE_END_LINE_47 = 47;
							p_tb_434_line_47.insert(html_tree_builder_state_1_expr15_line_47);
							int PROBE_START_LINE_48 = 48;
							org.jsoup.parser.HtmlTreeBuilder p_tb_434_line_48 = tb;
							org.jsoup.parser.HtmlTreeBuilderState f_before_head_435_line_48 = BeforeHead;
							int PROBE_END_LINE_48 = 48;
							p_tb_434_line_48.transition(f_before_head_435_line_48);
						} else if (t.isEndTag() && (StringUtil.in(t.asEndTag().name(), "head", "body", "html", "br"))) {
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
            tb.insert("html");
            tb.transition(BeforeHead);
            return tb.process(t);
        }
    },
    BeforeHead {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_68 = 90;
			org.jsoup.parser.Token p_t_438_line_68 = t;
			boolean html_tree_builder_state_1_expr17_line_68 = isWhitespace(p_t_438_line_68);
			int PROBE_END_LINE_68 = 90;
			if (html_tree_builder_state_1_expr17_line_68) {
                return true;
            } else {
				int PROBE_START_LINE_70 = 90;
				org.jsoup.parser.Token p_t_438_line_70 = t;
				boolean html_tree_builder_state_1_expr18_line_70 = p_t_438_line_70.isComment();
				int PROBE_END_LINE_70 = 90;
				if (html_tree_builder_state_1_expr18_line_70) {
					tb.insert(t.asComment());
				} else {
					int PROBE_START_LINE_72 = 90;
					org.jsoup.parser.Token p_t_438_line_72 = t;
					boolean html_tree_builder_state_1_expr19_line_72 = p_t_438_line_72.isDoctype();
					int PROBE_END_LINE_72 = 90;
					if (html_tree_builder_state_1_expr19_line_72) {
						tb.error(this);
						return false;
					} else {
						int PROBE_START_LINE_75 = 90;
						org.jsoup.parser.Token p_t_438_line_75 = t;
						boolean html_tree_builder_state_1_expr21_line_75 = p_t_438_line_75.isStartTag();
						boolean html_tree_builder_state_1_expr22_line_75 = true;
						if (html_tree_builder_state_1_expr21_line_75) {
							org.jsoup.parser.Token p_t_438_line_75_v1 = t;
							org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr24_line_75 = p_t_438_line_75_v1
									.asStartTag();
							String html_tree_builder_state_1_expr23_line_75 = html_tree_builder_state_1_expr24_line_75
									.name();
							html_tree_builder_state_1_expr22_line_75 = html_tree_builder_state_1_expr23_line_75
									.equals("html");
						}
						boolean html_tree_builder_state_1_expr20_line_75 = html_tree_builder_state_1_expr21_line_75
								&& html_tree_builder_state_1_expr22_line_75;
						int PROBE_END_LINE_75 = 90;
						if (html_tree_builder_state_1_expr20_line_75) {
							return InBody.process(t, tb);
						} else {
							int PROBE_START_LINE_77 = 90;
							org.jsoup.parser.Token p_t_438_line_77 = t;
							boolean html_tree_builder_state_1_expr26_line_77 = p_t_438_line_77.isStartTag();
							boolean html_tree_builder_state_1_expr27_line_77 = true;
							if (html_tree_builder_state_1_expr26_line_77) {
								org.jsoup.parser.Token p_t_438_line_77_v1 = t;
								org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr29_line_77 = p_t_438_line_77_v1
										.asStartTag();
								String html_tree_builder_state_1_expr28_line_77 = html_tree_builder_state_1_expr29_line_77
										.name();
								html_tree_builder_state_1_expr27_line_77 = html_tree_builder_state_1_expr28_line_77
										.equals("head");
							}
							boolean html_tree_builder_state_1_expr25_line_77 = html_tree_builder_state_1_expr26_line_77
									&& html_tree_builder_state_1_expr27_line_77;
							int PROBE_END_LINE_77 = 90;
							if (html_tree_builder_state_1_expr25_line_77) {
								int PROBE_START_LINE_78 = 78;
								org.jsoup.parser.HtmlTreeBuilder p_tb_439_line_78 = tb;
								org.jsoup.parser.Token p_t_438_line_78 = t;
								org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr31_line_78 = p_t_438_line_78
										.asStartTag();
								Element html_tree_builder_state_1_expr30_line_78 = p_tb_439_line_78
										.insert(html_tree_builder_state_1_expr31_line_78);
								int PROBE_END_LINE_78 = 78;
								Element head = html_tree_builder_state_1_expr30_line_78;
								int PROBE_START_LINE_79 = 79;
								org.jsoup.parser.HtmlTreeBuilder p_tb_439_line_79 = tb;
								org.jsoup.nodes.Element v_head_440_line_79 = head;
								int PROBE_END_LINE_79 = 79;
								p_tb_439_line_79.setHeadElement(v_head_440_line_79);
								int PROBE_START_LINE_80 = 80;
								org.jsoup.parser.HtmlTreeBuilder p_tb_439_line_80 = tb;
								org.jsoup.parser.HtmlTreeBuilderState f_in_head_441_line_80 = InHead;
								int PROBE_END_LINE_80 = 80;
								p_tb_439_line_80.transition(f_in_head_441_line_80);
							} else {
								int PROBE_START_LINE_81 = 90;
								org.jsoup.parser.Token p_t_438_line_81 = t;
								boolean html_tree_builder_state_1_expr35_line_81 = p_t_438_line_81.isEndTag();
								boolean html_tree_builder_state_1_expr36_line_81 = true;
								if (html_tree_builder_state_1_expr35_line_81) {
									org.jsoup.parser.Token p_t_438_line_81_v1 = t;
									org.jsoup.parser.Token.EndTag html_tree_builder_state_1_expr39_line_81 = p_t_438_line_81_v1
											.asEndTag();
									String html_tree_builder_state_1_expr38_line_81 = html_tree_builder_state_1_expr39_line_81
											.name();
									boolean html_tree_builder_state_1_expr37_line_81 = StringUtil
											.in(html_tree_builder_state_1_expr38_line_81, "head", "body", "html", "br");
									html_tree_builder_state_1_expr36_line_81 = (html_tree_builder_state_1_expr37_line_81);
								}
								boolean html_tree_builder_state_1_expr34_line_81 = html_tree_builder_state_1_expr35_line_81
										&& html_tree_builder_state_1_expr36_line_81;
								int PROBE_END_LINE_81 = 90;
								if (html_tree_builder_state_1_expr34_line_81) {
									tb.process(new Token.StartTag("head"));
									return tb.process(t);
								} else if (t.isEndTag()) {
									tb.error(this);
									return false;
								} else {
									tb.process(new Token.StartTag("head"));
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
			org.jsoup.parser.Token p_t_442_line_96 = t;
			boolean html_tree_builder_state_1_expr40_line_96 = isWhitespace(p_t_442_line_96);
			int PROBE_END_LINE_96 = 99;
			if (html_tree_builder_state_1_expr40_line_96) {
                tb.insert(t.asCharacter());
                return true;
            }
            int PROBE_START_LINE_100 = 156;
			org.jsoup.parser.Token p_t_442_line_100 = t;
			org.jsoup.parser.Token.TokenType q_type_12_line_100 = p_t_442_line_100.type;
			int PROBE_END_LINE_100 = 156;
			switch (q_type_12_line_100) {
                case Comment:
                    tb.insert(t.asComment());
                    break;
                case Doctype:
                    tb.error(this);
                    return false;
                case StartTag:
			int PROBE_START_LINE_108 = 108;
			org.jsoup.parser.Token p_t_442_line_108 = t;
			Token.StartTag html_tree_builder_state_1_expr41_line_108 = p_t_442_line_108.asStartTag();
			int PROBE_END_LINE_108 = 108;
			Token.StartTag start = html_tree_builder_state_1_expr41_line_108;
			int PROBE_START_LINE_109 = 109;
			org.jsoup.parser.Token.StartTag v_start_444_line_109 = start;
			String html_tree_builder_state_1_expr42_line_109 = v_start_444_line_109.name();
			int PROBE_END_LINE_109 = 109;
			String name = html_tree_builder_state_1_expr42_line_109;
			int PROBE_START_LINE_110 = 139;
			String v_name_445_line_110 = name;
			boolean html_tree_builder_state_1_expr43_line_110 = v_name_445_line_110.equals("html");
			int PROBE_END_LINE_110 = 139;
			if (html_tree_builder_state_1_expr43_line_110) {
                        return InBody.process(t, tb);
                    } else {
						int PROBE_START_LINE_112 = 139;
						String v_name_445_line_112 = name;
						boolean html_tree_builder_state_1_expr44_line_112 = StringUtil.in(v_name_445_line_112, "base",
								"basefont", "bgsound", "command", "link");
						int PROBE_END_LINE_112 = 139;
						if (html_tree_builder_state_1_expr44_line_112) {
							Element el = tb.insertEmpty(start);
							if (name.equals("base") && el.hasAttr("href"))
								tb.maybeSetBaseUri(el);
						} else {
							int PROBE_START_LINE_117 = 139;
							String v_name_445_line_117 = name;
							boolean html_tree_builder_state_1_expr45_line_117 = v_name_445_line_117.equals("meta");
							int PROBE_END_LINE_117 = 139;
							if (html_tree_builder_state_1_expr45_line_117) {
								Element meta = tb.insertEmpty(start);
							} else {
								int PROBE_START_LINE_120 = 139;
								String v_name_445_line_120 = name;
								boolean html_tree_builder_state_1_expr46_line_120 = v_name_445_line_120.equals("title");
								int PROBE_END_LINE_120 = 139;
								if (html_tree_builder_state_1_expr46_line_120) {
									handleRcData(start, tb);
								} else {
									int PROBE_START_LINE_122 = 139;
									String v_name_445_line_122 = name;
									boolean html_tree_builder_state_1_expr47_line_122 = StringUtil
											.in(v_name_445_line_122, "noframes", "style");
									int PROBE_END_LINE_122 = 139;
									if (html_tree_builder_state_1_expr47_line_122) {
										handleRawtext(start, tb);
									} else {
										int PROBE_START_LINE_124 = 139;
										String v_name_445_line_124 = name;
										boolean html_tree_builder_state_1_expr48_line_124 = v_name_445_line_124
												.equals("noscript");
										int PROBE_END_LINE_124 = 139;
										if (html_tree_builder_state_1_expr48_line_124) {
											int PROBE_START_LINE_126 = 126;
											org.jsoup.parser.HtmlTreeBuilder p_tb_443_line_126 = tb;
											org.jsoup.parser.Token.StartTag v_start_444_line_126 = start;
											int PROBE_END_LINE_126 = 126;
											p_tb_443_line_126.insert(v_start_444_line_126);
											int PROBE_START_LINE_127 = 127;
											org.jsoup.parser.HtmlTreeBuilder p_tb_443_line_127 = tb;
											org.jsoup.parser.HtmlTreeBuilderState f_in_head_noscript_446_line_127 = InHeadNoscript;
											int PROBE_END_LINE_127 = 127;
											p_tb_443_line_127.transition(f_in_head_noscript_446_line_127);
										} else {
											int PROBE_START_LINE_128 = 139;
											String v_name_445_line_128 = name;
											boolean html_tree_builder_state_1_expr51_line_128 = v_name_445_line_128
													.equals("script");
											int PROBE_END_LINE_128 = 139;
											if (html_tree_builder_state_1_expr51_line_128) {
												int PROBE_START_LINE_130 = 130;
												org.jsoup.parser.HtmlTreeBuilder p_tb_443_line_130 = tb;
												org.jsoup.parser.Token.StartTag v_start_444_line_130 = start;
												int PROBE_END_LINE_130 = 130;
												p_tb_443_line_130.insert(v_start_444_line_130);
												int PROBE_START_LINE_131 = 131;
												org.jsoup.parser.HtmlTreeBuilder p_tb_443_line_131 = tb;
												org.jsoup.parser.Tokeniser q_tokeniser_14_line_131 = p_tb_443_line_131.tokeniser;
												org.jsoup.parser.TokeniserState q_script_data_13_line_131 = TokeniserState.ScriptData;
												int PROBE_END_LINE_131 = 131;
												q_tokeniser_14_line_131.transition(q_script_data_13_line_131);
												int PROBE_START_LINE_132 = 132;
												org.jsoup.parser.HtmlTreeBuilder p_tb_443_line_132 = tb;
												int PROBE_END_LINE_132 = 132;
												p_tb_443_line_132.markInsertionMode();
												int PROBE_START_LINE_133 = 133;
												org.jsoup.parser.HtmlTreeBuilder p_tb_443_line_133 = tb;
												org.jsoup.parser.HtmlTreeBuilderState f_text_447_line_133 = Text;
												int PROBE_END_LINE_133 = 133;
												p_tb_443_line_133.transition(f_text_447_line_133);
											} else if (name.equals("head")) {
												tb.error(this);
												return false;
											} else {
												return anythingElse(t, tb);
											}
										}
									}
								}
							}
						}
					}
                    break;
                case EndTag:
			int PROBE_START_LINE_142 = 142;
			org.jsoup.parser.Token p_t_442_line_142 = t;
			Token.EndTag html_tree_builder_state_1_expr56_line_142 = p_t_442_line_142.asEndTag();
			int PROBE_END_LINE_142 = 142;
			Token.EndTag end = html_tree_builder_state_1_expr56_line_142;
			int PROBE_START_LINE_143 = 143;
			org.jsoup.parser.Token.EndTag v_end_448_line_143 = end;
			String html_tree_builder_state_1_expr58_line_143 = v_end_448_line_143.name();
			int PROBE_END_LINE_143 = 143;
			name = html_tree_builder_state_1_expr58_line_143;
			int PROBE_START_LINE_144 = 152;
			String v_name_445_line_144 = name;
			boolean html_tree_builder_state_1_expr59_line_144 = v_name_445_line_144.equals("head");
			int PROBE_END_LINE_144 = 152;
			if (html_tree_builder_state_1_expr59_line_144) {
                        int PROBE_START_LINE_145 = 145;
						org.jsoup.parser.HtmlTreeBuilder p_tb_443_line_145 = tb;
						int PROBE_END_LINE_145 = 145;
						p_tb_443_line_145.pop();
                        int PROBE_START_LINE_146 = 146;
						org.jsoup.parser.HtmlTreeBuilder p_tb_443_line_146 = tb;
						org.jsoup.parser.HtmlTreeBuilderState f_after_head_449_line_146 = AfterHead;
						int PROBE_END_LINE_146 = 146;
						p_tb_443_line_146.transition(f_after_head_449_line_146);
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
            tb.process(new Token.EndTag("head"));
            return tb.process(t);
        }
    },
    InHeadNoscript {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_167 = 184;
			org.jsoup.parser.Token p_t_452_line_167 = t;
			boolean html_tree_builder_state_1_expr62_line_167 = p_t_452_line_167.isDoctype();
			int PROBE_END_LINE_167 = 184;
			if (html_tree_builder_state_1_expr62_line_167) {
                tb.error(this);
            } else {
				int PROBE_START_LINE_169 = 184;
				org.jsoup.parser.Token p_t_452_line_169 = t;
				boolean html_tree_builder_state_1_expr64_line_169 = p_t_452_line_169.isStartTag();
				boolean html_tree_builder_state_1_expr65_line_169 = true;
				if (html_tree_builder_state_1_expr64_line_169) {
					org.jsoup.parser.Token p_t_452_line_169_v1 = t;
					org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr67_line_169 = p_t_452_line_169_v1
							.asStartTag();
					String html_tree_builder_state_1_expr66_line_169 = html_tree_builder_state_1_expr67_line_169.name();
					html_tree_builder_state_1_expr65_line_169 = html_tree_builder_state_1_expr66_line_169
							.equals("html");
				}
				boolean html_tree_builder_state_1_expr63_line_169 = html_tree_builder_state_1_expr64_line_169
						&& html_tree_builder_state_1_expr65_line_169;
				int PROBE_END_LINE_169 = 184;
				if (html_tree_builder_state_1_expr63_line_169) {
					return tb.process(t, InBody);
				} else {
					int PROBE_START_LINE_171 = 184;
					org.jsoup.parser.Token p_t_452_line_171 = t;
					boolean html_tree_builder_state_1_expr69_line_171 = p_t_452_line_171.isEndTag();
					boolean html_tree_builder_state_1_expr70_line_171 = true;
					if (html_tree_builder_state_1_expr69_line_171) {
						org.jsoup.parser.Token p_t_452_line_171_v1 = t;
						org.jsoup.parser.Token.EndTag html_tree_builder_state_1_expr72_line_171 = p_t_452_line_171_v1
								.asEndTag();
						String html_tree_builder_state_1_expr71_line_171 = html_tree_builder_state_1_expr72_line_171
								.name();
						html_tree_builder_state_1_expr70_line_171 = html_tree_builder_state_1_expr71_line_171
								.equals("noscript");
					}
					boolean html_tree_builder_state_1_expr68_line_171 = html_tree_builder_state_1_expr69_line_171
							&& html_tree_builder_state_1_expr70_line_171;
					int PROBE_END_LINE_171 = 184;
					if (html_tree_builder_state_1_expr68_line_171) {
						int PROBE_START_LINE_172 = 172;
						org.jsoup.parser.HtmlTreeBuilder p_tb_453_line_172 = tb;
						int PROBE_END_LINE_172 = 172;
						p_tb_453_line_172.pop();
						int PROBE_START_LINE_173 = 173;
						org.jsoup.parser.HtmlTreeBuilder p_tb_453_line_173 = tb;
						org.jsoup.parser.HtmlTreeBuilderState f_in_head_441_line_173 = InHead;
						int PROBE_END_LINE_173 = 173;
						p_tb_453_line_173.transition(f_in_head_441_line_173);
					} else if (isWhitespace(t) || t.isComment() || (t.isStartTag() && StringUtil
							.in(t.asStartTag().name(), "basefont", "bgsound", "link", "meta", "noframes", "style"))) {
						return tb.process(t, InHead);
					} else if (t.isEndTag() && t.asEndTag().name().equals("br")) {
						return anythingElse(t, tb);
					} else if ((t.isStartTag() && StringUtil.in(t.asStartTag().name(), "head", "noscript"))
							|| t.isEndTag()) {
						tb.error(this);
						return false;
					} else {
						return anythingElse(t, tb);
					}
				}
			}
            return true;
        }

        private boolean anythingElse(Token t, HtmlTreeBuilder tb) {
            tb.error(this);
            tb.process(new Token.EndTag("noscript"));
            return tb.process(t);
        }
    },
    AfterHead {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_196 = 235;
			org.jsoup.parser.Token p_t_456_line_196 = t;
			boolean html_tree_builder_state_1_expr75_line_196 = isWhitespace(p_t_456_line_196);
			int PROBE_END_LINE_196 = 235;
			if (html_tree_builder_state_1_expr75_line_196) {
                tb.insert(t.asCharacter());
            } else {
				int PROBE_START_LINE_198 = 235;
				org.jsoup.parser.Token p_t_456_line_198 = t;
				boolean html_tree_builder_state_1_expr76_line_198 = p_t_456_line_198.isComment();
				int PROBE_END_LINE_198 = 235;
				if (html_tree_builder_state_1_expr76_line_198) {
					tb.insert(t.asComment());
				} else {
					int PROBE_START_LINE_200 = 235;
					org.jsoup.parser.Token p_t_456_line_200 = t;
					boolean html_tree_builder_state_1_expr77_line_200 = p_t_456_line_200.isDoctype();
					int PROBE_END_LINE_200 = 235;
					if (html_tree_builder_state_1_expr77_line_200) {
						tb.error(this);
					} else {
						int PROBE_START_LINE_202 = 235;
						org.jsoup.parser.Token p_t_456_line_202 = t;
						boolean html_tree_builder_state_1_expr78_line_202 = p_t_456_line_202.isStartTag();
						int PROBE_END_LINE_202 = 235;
						if (html_tree_builder_state_1_expr78_line_202) {
							int PROBE_START_LINE_203 = 203;
							org.jsoup.parser.Token p_t_456_line_203 = t;
							Token.StartTag html_tree_builder_state_1_expr79_line_203 = p_t_456_line_203.asStartTag();
							int PROBE_END_LINE_203 = 203;
							Token.StartTag startTag = html_tree_builder_state_1_expr79_line_203;
							int PROBE_START_LINE_204 = 204;
							org.jsoup.parser.Token.StartTag v_start_tag_458_line_204 = startTag;
							String html_tree_builder_state_1_expr80_line_204 = v_start_tag_458_line_204.name();
							int PROBE_END_LINE_204 = 204;
							String name = html_tree_builder_state_1_expr80_line_204;
							int PROBE_START_LINE_205 = 225;
							String v_name_459_line_205 = name;
							boolean html_tree_builder_state_1_expr81_line_205 = v_name_459_line_205.equals("html");
							int PROBE_END_LINE_205 = 225;
							if (html_tree_builder_state_1_expr81_line_205) {
								return tb.process(t, InBody);
							} else {
								int PROBE_START_LINE_207 = 225;
								String v_name_459_line_207 = name;
								boolean html_tree_builder_state_1_expr82_line_207 = v_name_459_line_207.equals("body");
								int PROBE_END_LINE_207 = 225;
								if (html_tree_builder_state_1_expr82_line_207) {
									tb.insert(startTag);
									tb.framesetOk(false);
									tb.transition(InBody);
								} else {
									int PROBE_START_LINE_211 = 225;
									String v_name_459_line_211 = name;
									boolean html_tree_builder_state_1_expr83_line_211 = v_name_459_line_211
											.equals("frameset");
									int PROBE_END_LINE_211 = 225;
									if (html_tree_builder_state_1_expr83_line_211) {
										int PROBE_START_LINE_212 = 212;
										org.jsoup.parser.HtmlTreeBuilder p_tb_457_line_212 = tb;
										org.jsoup.parser.Token.StartTag v_start_tag_458_line_212 = startTag;
										int PROBE_END_LINE_212 = 212;
										p_tb_457_line_212.insert(v_start_tag_458_line_212);
										int PROBE_START_LINE_213 = 213;
										org.jsoup.parser.HtmlTreeBuilder p_tb_457_line_213 = tb;
										org.jsoup.parser.HtmlTreeBuilderState f_in_frameset_460_line_213 = InFrameset;
										int PROBE_END_LINE_213 = 213;
										p_tb_457_line_213.transition(f_in_frameset_460_line_213);
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
							}
						} else {
							int PROBE_START_LINE_226 = 235;
							org.jsoup.parser.Token p_t_456_line_226 = t;
							boolean html_tree_builder_state_1_expr86_line_226 = p_t_456_line_226.isEndTag();
							int PROBE_END_LINE_226 = 235;
							if (html_tree_builder_state_1_expr86_line_226) {
								if (StringUtil.in(t.asEndTag().name(), "body", "html")) {
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
            tb.process(new Token.StartTag("body"));
            tb.framesetOk(true);
            return tb.process(t);
        }
    },
    InBody {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_247 = 759;
			org.jsoup.parser.Token p_t_464_line_247 = t;
			org.jsoup.parser.Token.TokenType q_type_15_line_247 = p_t_464_line_247.type;
			int PROBE_END_LINE_247 = 759;
			switch (q_type_15_line_247) {
                case Character: {
                    Token.Character c = t.asCharacter();
                    if (c.getData().equals(nullString)) {
                        // todo confirm that check
                        tb.error(this);
                        return false;
                    } else if (isWhitespace(c)) {
                        tb.reconstructFormattingElements();
                        tb.insert(c);
                    } else {
                        tb.reconstructFormattingElements();
                        tb.insert(c);
                        tb.framesetOk(false);
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
			int PROBE_START_LINE_273 = 273;
			org.jsoup.parser.Token p_t_464_line_273 = t;
			Token.StartTag html_tree_builder_state_1_expr87_line_273 = p_t_464_line_273.asStartTag();
			int PROBE_END_LINE_273 = 273;
			Token.StartTag startTag = html_tree_builder_state_1_expr87_line_273;
			int PROBE_START_LINE_274 = 274;
			org.jsoup.parser.Token.StartTag v_start_tag_466_line_274 = startTag;
			String html_tree_builder_state_1_expr88_line_274 = v_start_tag_466_line_274.name();
			int PROBE_END_LINE_274 = 274;
			String name = html_tree_builder_state_1_expr88_line_274;
			int PROBE_START_LINE_275 = 555;
			String v_name_467_line_275 = name;
			boolean html_tree_builder_state_1_expr89_line_275 = v_name_467_line_275.equals("html");
			int PROBE_END_LINE_275 = 555;
			if (html_tree_builder_state_1_expr89_line_275) {
                        int PROBE_START_LINE_276 = 276;
						org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_276 = tb;
						int PROBE_END_LINE_276 = 276;
						p_tb_465_line_276.error(this);
                        int PROBE_START_LINE_278 = 278;
						org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_278 = tb;
						DescendableLinkedList<org.jsoup.nodes.Element> html_tree_builder_state_1_expr93_line_278 = p_tb_465_line_278
								.getStack();
						Element html_tree_builder_state_1_expr92_line_278 = html_tree_builder_state_1_expr93_line_278
								.getFirst();
						int PROBE_END_LINE_278 = 278;
						// merge attributes onto real html
                        Element html = html_tree_builder_state_1_expr92_line_278;
                        int PROBE_START_LINE_279 = 282;
						org.jsoup.parser.Token.StartTag v_start_tag_466_line_279 = startTag;
						org.jsoup.nodes.Attributes html_tree_builder_state_1_expr94_line_279 = v_start_tag_466_line_279
								.getAttributes();
						int PROBE_END_LINE_279 = 282;
						for (Attribute attribute : html_tree_builder_state_1_expr94_line_279) {
                            if (!html.hasAttr(attribute.getKey()))
                                html.attributes().put(attribute);
                        }
                    } else {
						int PROBE_START_LINE_283 = 555;
						String v_name_467_line_283 = name;
						boolean html_tree_builder_state_1_expr95_line_283 = StringUtil.in(v_name_467_line_283, "base",
								"basefont", "bgsound", "command", "link", "meta", "noframes", "script", "style",
								"title");
						int PROBE_END_LINE_283 = 555;
						if (html_tree_builder_state_1_expr95_line_283) {
							int PROBE_START_LINE_284 = 284;
							org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_284 = tb;
							org.jsoup.parser.Token p_t_464_line_284 = t;
							org.jsoup.parser.HtmlTreeBuilderState f_in_head_441_line_284 = InHead;
							boolean html_tree_builder_state_1_expr96_line_284 = p_tb_465_line_284
									.process(p_t_464_line_284, f_in_head_441_line_284);
							int PROBE_END_LINE_284 = 284;
							return html_tree_builder_state_1_expr96_line_284;
						} else {
							int PROBE_START_LINE_285 = 555;
							String v_name_467_line_285 = name;
							boolean html_tree_builder_state_1_expr97_line_285 = v_name_467_line_285.equals("body");
							int PROBE_END_LINE_285 = 555;
							if (html_tree_builder_state_1_expr97_line_285) {
								tb.error(this);
								LinkedList<Element> stack = tb.getStack();
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
							} else {
								int PROBE_START_LINE_299 = 555;
								String v_name_467_line_299 = name;
								boolean html_tree_builder_state_1_expr98_line_299 = v_name_467_line_299
										.equals("frameset");
								int PROBE_END_LINE_299 = 555;
								if (html_tree_builder_state_1_expr98_line_299) {
									int PROBE_START_LINE_300 = 300;
									org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_300 = tb;
									int PROBE_END_LINE_300 = 300;
									p_tb_465_line_300.error(this);
									int PROBE_START_LINE_301 = 301;
									org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_301 = tb;
									LinkedList<Element> html_tree_builder_state_1_expr101_line_301 = p_tb_465_line_301
											.getStack();
									int PROBE_END_LINE_301 = 301;
									LinkedList<Element> stack = html_tree_builder_state_1_expr101_line_301;
									int PROBE_START_LINE_302 = 316;
									LinkedList<org.jsoup.nodes.Element> v_stack_470_line_302 = stack;
									int html_tree_builder_state_1_expr104_line_302 = v_stack_470_line_302.size();
									boolean html_tree_builder_state_1_expr103_line_302 = html_tree_builder_state_1_expr104_line_302 == 1;
									boolean html_tree_builder_state_1_expr105_line_302 = false;
									if (!html_tree_builder_state_1_expr103_line_302) {
										LinkedList<org.jsoup.nodes.Element> v_stack_470_line_302_v1 = stack;
										int html_tree_builder_state_1_expr108_line_302 = v_stack_470_line_302_v1.size();
										boolean html_tree_builder_state_1_expr107_line_302 = html_tree_builder_state_1_expr108_line_302 > 2;
										boolean html_tree_builder_state_1_expr109_line_302 = true;
										if (html_tree_builder_state_1_expr107_line_302) {
											LinkedList<org.jsoup.nodes.Element> v_stack_470_line_302_v2 = stack;
											org.jsoup.nodes.Element html_tree_builder_state_1_expr112_line_302 = v_stack_470_line_302_v2
													.get(1);
											String html_tree_builder_state_1_expr111_line_302 = html_tree_builder_state_1_expr112_line_302
													.nodeName();
											boolean html_tree_builder_state_1_expr110_line_302 = html_tree_builder_state_1_expr111_line_302
													.equals("body");
											html_tree_builder_state_1_expr109_line_302 = !html_tree_builder_state_1_expr110_line_302;
										}
										boolean html_tree_builder_state_1_expr106_line_302 = html_tree_builder_state_1_expr107_line_302
												&& html_tree_builder_state_1_expr109_line_302;
										html_tree_builder_state_1_expr105_line_302 = (html_tree_builder_state_1_expr106_line_302);
									}
									boolean html_tree_builder_state_1_expr102_line_302 = html_tree_builder_state_1_expr103_line_302
											|| html_tree_builder_state_1_expr105_line_302;
									int PROBE_END_LINE_302 = 316;
									if (html_tree_builder_state_1_expr102_line_302) {
										return false;
									} else if (!tb.framesetOk()) {
										return false;
									} else {
										Element second = stack.get(1);
										if (second.parent() != null)
											second.remove();
										while (stack.size() > 1)
											stack.removeLast();
										tb.insert(startTag);
										tb.transition(InFrameset);
									}
								} else {
									int PROBE_START_LINE_317 = 555;
									String v_name_467_line_317 = name;
									boolean html_tree_builder_state_1_expr113_line_317 = StringUtil.in(
											v_name_467_line_317, "address", "article", "aside", "blockquote", "center",
											"details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer",
											"header", "hgroup", "menu", "nav", "ol", "p", "section", "summary", "ul");
									int PROBE_END_LINE_317 = 555;
									if (html_tree_builder_state_1_expr113_line_317) {
										if (tb.inButtonScope("p")) {
											tb.process(new Token.EndTag("p"));
										}
										tb.insert(startTag);
									} else {
										int PROBE_START_LINE_325 = 555;
										String v_name_467_line_325 = name;
										boolean html_tree_builder_state_1_expr114_line_325 = StringUtil
												.in(v_name_467_line_325, "h1", "h2", "h3", "h4", "h5", "h6");
										int PROBE_END_LINE_325 = 555;
										if (html_tree_builder_state_1_expr114_line_325) {
											if (tb.inButtonScope("p")) {
												tb.process(new Token.EndTag("p"));
											}
											if (StringUtil.in(tb.currentElement().nodeName(), "h1", "h2", "h3", "h4",
													"h5", "h6")) {
												tb.error(this);
												tb.pop();
											}
											tb.insert(startTag);
										} else {
											int PROBE_START_LINE_334 = 555;
											String v_name_467_line_334 = name;
											boolean html_tree_builder_state_1_expr115_line_334 = StringUtil
													.in(v_name_467_line_334, "pre", "listing");
											int PROBE_END_LINE_334 = 555;
											if (html_tree_builder_state_1_expr115_line_334) {
												if (tb.inButtonScope("p")) {
													tb.process(new Token.EndTag("p"));
												}
												tb.insert(startTag);
												tb.framesetOk(false);
											} else {
												int PROBE_START_LINE_341 = 555;
												String v_name_467_line_341 = name;
												boolean html_tree_builder_state_1_expr116_line_341 = v_name_467_line_341
														.equals("form");
												int PROBE_END_LINE_341 = 555;
												if (html_tree_builder_state_1_expr116_line_341) {
													if (tb.getFormElement() != null) {
														tb.error(this);
														return false;
													}
													if (tb.inButtonScope("p")) {
														tb.process(new Token.EndTag("p"));
													}
													Element form = tb.insert(startTag);
													tb.setFormElement(form);
												} else {
													int PROBE_START_LINE_351 = 555;
													String v_name_467_line_351 = name;
													boolean html_tree_builder_state_1_expr117_line_351 = v_name_467_line_351
															.equals("li");
													int PROBE_END_LINE_351 = 555;
													if (html_tree_builder_state_1_expr117_line_351) {
														tb.framesetOk(false);
														LinkedList<Element> stack = tb.getStack();
														for (int i = stack.size() - 1; i > 0; i--) {
															Element el = stack.get(i);
															if (el.nodeName().equals("li")) {
																tb.process(new Token.EndTag("li"));
																break;
															}
															if (tb.isSpecial(el) && !StringUtil.in(el.nodeName(),
																	"address", "div", "p"))
																break;
														}
														if (tb.inButtonScope("p")) {
															tb.process(new Token.EndTag("p"));
														}
														tb.insert(startTag);
													} else {
														int PROBE_START_LINE_367 = 555;
														String v_name_467_line_367 = name;
														boolean html_tree_builder_state_1_expr118_line_367 = StringUtil
																.in(v_name_467_line_367, "dd", "dt");
														int PROBE_END_LINE_367 = 555;
														if (html_tree_builder_state_1_expr118_line_367) {
															tb.framesetOk(false);
															LinkedList<Element> stack = tb.getStack();
															for (int i = stack.size() - 1; i > 0; i--) {
																Element el = stack.get(i);
																if (StringUtil.in(el.nodeName(), "dd", "dt")) {
																	tb.process(new Token.EndTag(el.nodeName()));
																	break;
																}
																if (tb.isSpecial(el) && !StringUtil.in(el.nodeName(),
																		"address", "div", "p"))
																	break;
															}
															if (tb.inButtonScope("p")) {
																tb.process(new Token.EndTag("p"));
															}
															tb.insert(startTag);
														} else {
															int PROBE_START_LINE_383 = 555;
															String v_name_467_line_383 = name;
															boolean html_tree_builder_state_1_expr119_line_383 = v_name_467_line_383
																	.equals("plaintext");
															int PROBE_END_LINE_383 = 555;
															if (html_tree_builder_state_1_expr119_line_383) {
																if (tb.inButtonScope("p")) {
																	tb.process(new Token.EndTag("p"));
																}
																tb.insert(startTag);
																tb.tokeniser.transition(TokeniserState.PLAINTEXT);
															} else {
																int PROBE_START_LINE_389 = 555;
																String v_name_467_line_389 = name;
																boolean html_tree_builder_state_1_expr120_line_389 = v_name_467_line_389
																		.equals("button");
																int PROBE_END_LINE_389 = 555;
																if (html_tree_builder_state_1_expr120_line_389) {
																	if (tb.inButtonScope("button")) {
																		tb.error(this);
																		tb.process(new Token.EndTag("button"));
																		tb.process(startTag);
																	} else {
																		tb.reconstructFormattingElements();
																		tb.insert(startTag);
																		tb.framesetOk(false);
																	}
																} else {
																	int PROBE_START_LINE_400 = 555;
																	String v_name_467_line_400 = name;
																	boolean html_tree_builder_state_1_expr121_line_400 = v_name_467_line_400
																			.equals("a");
																	int PROBE_END_LINE_400 = 555;
																	if (html_tree_builder_state_1_expr121_line_400) {
																		if (tb.getActiveFormattingElement(
																				"a") != null) {
																			tb.error(this);
																			tb.process(new Token.EndTag("a"));
																			Element remainingA = tb.getFromStack("a");
																			if (remainingA != null) {
																				tb.removeFromActiveFormattingElements(
																						remainingA);
																				tb.removeFromStack(remainingA);
																			}
																		}
																		tb.reconstructFormattingElements();
																		Element a = tb.insert(startTag);
																		tb.pushActiveFormattingElements(a);
																	} else {
																		int PROBE_START_LINE_415 = 555;
																		String v_name_467_line_415 = name;
																		boolean html_tree_builder_state_1_expr122_line_415 = StringUtil
																				.in(v_name_467_line_415, "b", "big",
																						"code", "em", "font", "i", "s",
																						"small", "strike", "strong",
																						"tt", "u");
																		int PROBE_END_LINE_415 = 555;
																		if (html_tree_builder_state_1_expr122_line_415) {
																			tb.reconstructFormattingElements();
																			Element el = tb.insert(startTag);
																			tb.pushActiveFormattingElements(el);
																		} else {
																			int PROBE_START_LINE_420 = 555;
																			String v_name_467_line_420 = name;
																			boolean html_tree_builder_state_1_expr123_line_420 = v_name_467_line_420
																					.equals("nobr");
																			int PROBE_END_LINE_420 = 555;
																			if (html_tree_builder_state_1_expr123_line_420) {
																				tb.reconstructFormattingElements();
																				if (tb.inScope("nobr")) {
																					tb.error(this);
																					tb.process(
																							new Token.EndTag("nobr"));
																					tb.reconstructFormattingElements();
																				}
																				Element el = tb.insert(startTag);
																				tb.pushActiveFormattingElements(el);
																			} else {
																				int PROBE_START_LINE_429 = 555;
																				String v_name_467_line_429 = name;
																				boolean html_tree_builder_state_1_expr124_line_429 = StringUtil
																						.in(v_name_467_line_429,
																								"applet", "marquee",
																								"object");
																				int PROBE_END_LINE_429 = 555;
																				if (html_tree_builder_state_1_expr124_line_429) {
																					tb.reconstructFormattingElements();
																					tb.insert(startTag);
																					tb.insertMarkerToFormattingElements();
																					tb.framesetOk(false);
																				} else {
																					int PROBE_START_LINE_434 = 555;
																					String v_name_467_line_434 = name;
																					boolean html_tree_builder_state_1_expr125_line_434 = v_name_467_line_434
																							.equals("table");
																					int PROBE_END_LINE_434 = 555;
																					if (html_tree_builder_state_1_expr125_line_434) {
																						if (tb.getDocument()
																								.quirksMode() != Document.QuirksMode.quirks
																								&& tb.inButtonScope(
																										"p")) {
																							tb.process(new Token.EndTag(
																									"p"));
																						}
																						tb.insert(startTag);
																						tb.framesetOk(false);
																						tb.transition(InTable);
																					} else {
																						int PROBE_START_LINE_441 = 555;
																						String v_name_467_line_441 = name;
																						boolean html_tree_builder_state_1_expr126_line_441 = StringUtil
																								.in(v_name_467_line_441,
																										"area", "br",
																										"embed", "img",
																										"keygen",
																										"wbr");
																						int PROBE_END_LINE_441 = 555;
																						if (html_tree_builder_state_1_expr126_line_441) {
																							tb.reconstructFormattingElements();
																							tb.insertEmpty(startTag);
																							tb.framesetOk(false);
																						} else {
																							int PROBE_START_LINE_445 = 555;
																							String v_name_467_line_445 = name;
																							boolean html_tree_builder_state_1_expr127_line_445 = v_name_467_line_445
																									.equals("input");
																							int PROBE_END_LINE_445 = 555;
																							if (html_tree_builder_state_1_expr127_line_445) {
																								tb.reconstructFormattingElements();
																								Element el = tb
																										.insertEmpty(
																												startTag);
																								if (!el.attr("type")
																										.equalsIgnoreCase(
																												"hidden"))
																									tb.framesetOk(
																											false);
																							} else {
																								int PROBE_START_LINE_450 = 555;
																								String v_name_467_line_450 = name;
																								boolean html_tree_builder_state_1_expr128_line_450 = StringUtil
																										.in(v_name_467_line_450,
																												"param",
																												"source",
																												"track");
																								int PROBE_END_LINE_450 = 555;
																								if (html_tree_builder_state_1_expr128_line_450) {
																									tb.insertEmpty(
																											startTag);
																								} else {
																									int PROBE_START_LINE_452 = 555;
																									String v_name_467_line_452 = name;
																									boolean html_tree_builder_state_1_expr129_line_452 = v_name_467_line_452
																											.equals("hr");
																									int PROBE_END_LINE_452 = 555;
																									if (html_tree_builder_state_1_expr129_line_452) {
																										if (tb.inButtonScope(
																												"p")) {
																											tb.process(
																													new Token.EndTag(
																															"p"));
																										}
																										tb.insertEmpty(
																												startTag);
																										tb.framesetOk(
																												false);
																									} else {
																										int PROBE_START_LINE_458 = 555;
																										String v_name_467_line_458 = name;
																										boolean html_tree_builder_state_1_expr130_line_458 = v_name_467_line_458
																												.equals("image");
																										int PROBE_END_LINE_458 = 555;
																										if (html_tree_builder_state_1_expr130_line_458) {
																											startTag.name(
																													"img");
																											return tb
																													.process(
																															startTag);
																										} else {
																											int PROBE_START_LINE_462 = 555;
																											String v_name_467_line_462 = name;
																											boolean html_tree_builder_state_1_expr131_line_462 = v_name_467_line_462
																													.equals("isindex");
																											int PROBE_END_LINE_462 = 555;
																											if (html_tree_builder_state_1_expr131_line_462) {
																												tb.error(
																														this);
																												if (tb.getFormElement() != null)
																													return false;
																												tb.tokeniser
																														.acknowledgeSelfClosingFlag();
																												tb.process(
																														new Token.StartTag(
																																"form"));
																												if (startTag.attributes
																														.hasKey("action")) {
																													Element form = tb
																															.getFormElement();
																													form.attr(
																															"action",
																															startTag.attributes
																																	.get("action"));
																												}
																												tb.process(
																														new Token.StartTag(
																																"hr"));
																												tb.process(
																														new Token.StartTag(
																																"label"));
																												String prompt = startTag.attributes
																														.hasKey("prompt")
																																? startTag.attributes
																																		.get("prompt")
																																: "This is a searchable index. Enter search keywords: ";
																												tb.process(
																														new Token.Character(
																																prompt));
																												Attributes inputAttribs = new Attributes();
																												for (Attribute attr : startTag.attributes) {
																													if (!StringUtil
																															.in(attr.getKey(),
																																	"name",
																																	"action",
																																	"prompt"))
																														inputAttribs
																																.put(attr);
																												}
																												inputAttribs
																														.put("name",
																																"isindex");
																												tb.process(
																														new Token.StartTag(
																																"input",
																																inputAttribs));
																												tb.process(
																														new Token.EndTag(
																																"label"));
																												tb.process(
																														new Token.StartTag(
																																"hr"));
																												tb.process(
																														new Token.EndTag(
																																"form"));
																											} else {
																												int PROBE_START_LINE_494 = 555;
																												String v_name_467_line_494 = name;
																												boolean html_tree_builder_state_1_expr132_line_494 = v_name_467_line_494
																														.equals("textarea");
																												int PROBE_END_LINE_494 = 555;
																												if (html_tree_builder_state_1_expr132_line_494) {
																													tb.insert(
																															startTag);
																													tb.tokeniser
																															.transition(
																																	TokeniserState.Rcdata);
																													tb.markInsertionMode();
																													tb.framesetOk(
																															false);
																													tb.transition(
																															Text);
																												} else {
																													int PROBE_START_LINE_501 = 555;
																													String v_name_467_line_501 = name;
																													boolean html_tree_builder_state_1_expr133_line_501 = v_name_467_line_501
																															.equals("xmp");
																													int PROBE_END_LINE_501 = 555;
																													if (html_tree_builder_state_1_expr133_line_501) {
																														if (tb.inButtonScope(
																																"p")) {
																															tb.process(
																																	new Token.EndTag(
																																			"p"));
																														}
																														tb.reconstructFormattingElements();
																														tb.framesetOk(
																																false);
																														handleRawtext(
																																startTag,
																																tb);
																													} else {
																														int PROBE_START_LINE_508 = 555;
																														String v_name_467_line_508 = name;
																														boolean html_tree_builder_state_1_expr134_line_508 = v_name_467_line_508
																																.equals("iframe");
																														int PROBE_END_LINE_508 = 555;
																														if (html_tree_builder_state_1_expr134_line_508) {
																															tb.framesetOk(
																																	false);
																															handleRawtext(
																																	startTag,
																																	tb);
																														} else {
																															int PROBE_START_LINE_511 = 555;
																															String v_name_467_line_511 = name;
																															boolean html_tree_builder_state_1_expr135_line_511 = v_name_467_line_511
																																	.equals("noembed");
																															int PROBE_END_LINE_511 = 555;
																															if (html_tree_builder_state_1_expr135_line_511) {
																																handleRawtext(
																																		startTag,
																																		tb);
																															} else {
																																int PROBE_START_LINE_514 = 555;
																																String v_name_467_line_514 = name;
																																boolean html_tree_builder_state_1_expr136_line_514 = v_name_467_line_514
																																		.equals("select");
																																int PROBE_END_LINE_514 = 555;
																																if (html_tree_builder_state_1_expr136_line_514) {
																																	tb.reconstructFormattingElements();
																																	tb.insert(
																																			startTag);
																																	tb.framesetOk(
																																			false);
																																	HtmlTreeBuilderState state = tb
																																			.state();
																																	if (state
																																			.equals(InTable)
																																			|| state.equals(
																																					InCaption)
																																			|| state.equals(
																																					InTableBody)
																																			|| state.equals(
																																					InRow)
																																			|| state.equals(
																																					InCell))
																																		tb.transition(
																																				InSelectInTable);
																																	else
																																		tb.transition(
																																				InSelect);
																																} else {
																																	int PROBE_START_LINE_524 = 555;
																																	boolean html_tree_builder_state_1_expr137_line_524 = StringUtil
																																			.in("optgroup",
																																					"option");
																																	int PROBE_END_LINE_524 = 555;
																																	if (html_tree_builder_state_1_expr137_line_524) {
																																		if (tb.currentElement()
																																				.nodeName()
																																				.equals("option"))
																																			tb.process(
																																					new Token.EndTag(
																																							"option"));
																																		tb.reconstructFormattingElements();
																																		tb.insert(
																																				startTag);
																																	} else {
																																		int PROBE_START_LINE_529 = 555;
																																		boolean html_tree_builder_state_1_expr138_line_529 = StringUtil
																																				.in("rp",
																																						"rt");
																																		int PROBE_END_LINE_529 = 555;
																																		if (html_tree_builder_state_1_expr138_line_529) {
																																			if (tb.inScope(
																																					"ruby")) {
																																				tb.generateImpliedEndTags();
																																				if (!tb.currentElement()
																																						.nodeName()
																																						.equals("ruby")) {
																																					tb.error(
																																							this);
																																					tb.popStackToBefore(
																																							"ruby");
																																				}
																																				tb.insert(
																																						startTag);
																																			}
																																		} else {
																																			int PROBE_START_LINE_538 = 555;
																																			String v_name_467_line_538 = name;
																																			boolean html_tree_builder_state_1_expr139_line_538 = v_name_467_line_538
																																					.equals("math");
																																			int PROBE_END_LINE_538 = 555;
																																			if (html_tree_builder_state_1_expr139_line_538) {
																																				tb.reconstructFormattingElements();
																																				tb.insert(
																																						startTag);
																																				tb.tokeniser
																																						.acknowledgeSelfClosingFlag();
																																			} else {
																																				int PROBE_START_LINE_543 = 555;
																																				String v_name_467_line_543 = name;
																																				boolean html_tree_builder_state_1_expr140_line_543 = v_name_467_line_543
																																						.equals("svg");
																																				int PROBE_END_LINE_543 = 555;
																																				if (html_tree_builder_state_1_expr140_line_543) {
																																					tb.reconstructFormattingElements();
																																					tb.insert(
																																							startTag);
																																					tb.tokeniser
																																							.acknowledgeSelfClosingFlag();
																																				} else {
																																					int PROBE_START_LINE_548 = 555;
																																					String v_name_467_line_548 = name;
																																					boolean html_tree_builder_state_1_expr141_line_548 = StringUtil
																																							.in(v_name_467_line_548,
																																									"caption",
																																									"col",
																																									"colgroup",
																																									"frame",
																																									"head",
																																									"tbody",
																																									"td",
																																									"tfoot",
																																									"th",
																																									"thead",
																																									"tr");
																																					int PROBE_END_LINE_548 = 555;
																																					if (html_tree_builder_state_1_expr141_line_548) {
																																						int PROBE_START_LINE_550 = 550;
																																						org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_550 = tb;
																																						int PROBE_END_LINE_550 = 550;
																																						p_tb_465_line_550
																																								.error(this);
																																						return false;
																																					} else {
																																						int PROBE_START_LINE_553 = 553;
																																						org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_553 = tb;
																																						int PROBE_END_LINE_553 = 553;
																																						p_tb_465_line_553
																																								.reconstructFormattingElements();
																																						int PROBE_START_LINE_554 = 554;
																																						org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_554 = tb;
																																						org.jsoup.parser.Token.StartTag v_start_tag_466_line_554 = startTag;
																																						int PROBE_END_LINE_554 = 554;
																																						p_tb_465_line_554
																																								.insert(v_start_tag_466_line_554);
																																					}
																																				}
																																			}
																																		}
																																	}
																																}
																															}
																														}
																													}
																												}
																											}
																										}
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
                    break;

                case EndTag:
			int PROBE_START_LINE_559 = 559;
			org.jsoup.parser.Token p_t_464_line_559 = t;
			Token.EndTag html_tree_builder_state_1_expr146_line_559 = p_t_464_line_559.asEndTag();
			int PROBE_END_LINE_559 = 559;
			Token.EndTag endTag = html_tree_builder_state_1_expr146_line_559;
			int PROBE_START_LINE_560 = 560;
			org.jsoup.parser.Token.EndTag v_end_tag_471_line_560 = endTag;
			String html_tree_builder_state_1_expr148_line_560 = v_end_tag_471_line_560.name();
			int PROBE_END_LINE_560 = 560;
			name = html_tree_builder_state_1_expr148_line_560;
			int PROBE_START_LINE_561 = 752;
			String v_name_467_line_561 = name;
			boolean html_tree_builder_state_1_expr149_line_561 = v_name_467_line_561.equals("body");
			int PROBE_END_LINE_561 = 752;
			if (html_tree_builder_state_1_expr149_line_561) {
                        int PROBE_START_LINE_562 = 568;
						org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_562 = tb;
						boolean html_tree_builder_state_1_expr151_line_562 = p_tb_465_line_562.inScope("body");
						boolean html_tree_builder_state_1_expr150_line_562 = !html_tree_builder_state_1_expr151_line_562;
						int PROBE_END_LINE_562 = 568;
						if (html_tree_builder_state_1_expr150_line_562) {
                            int PROBE_START_LINE_563 = 563;
							org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_563 = tb;
							int PROBE_END_LINE_563 = 563;
							p_tb_465_line_563.error(this);
                            return false;
                        } else {
                            // todo: error if stack contains something not dd, dt, li, optgroup, option, p, rp, rt, tbody, td, tfoot, th, thead, tr, body, html
                            tb.transition(AfterBody);
                        }
                    } else {
						int PROBE_START_LINE_569 = 752;
						String v_name_467_line_569 = name;
						boolean html_tree_builder_state_1_expr154_line_569 = v_name_467_line_569.equals("html");
						int PROBE_END_LINE_569 = 752;
						if (html_tree_builder_state_1_expr154_line_569) {
							int PROBE_START_LINE_570 = 570;
							org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_570 = tb;
							boolean html_tree_builder_state_1_expr155_line_570 = p_tb_465_line_570
									.process(new Token.EndTag("body"));
							int PROBE_END_LINE_570 = 570;
							boolean notIgnored = html_tree_builder_state_1_expr155_line_570;
							int PROBE_START_LINE_571 = 572;
							boolean v_not_ignored_472_line_571 = notIgnored;
							int PROBE_END_LINE_571 = 572;
							if (v_not_ignored_472_line_571)
								return tb.process(endTag);
						} else {
							int PROBE_START_LINE_573 = 752;
							String v_name_467_line_573 = name;
							boolean html_tree_builder_state_1_expr157_line_573 = StringUtil.in(v_name_467_line_573,
									"address", "article", "aside", "blockquote", "button", "center", "details", "dir",
									"div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup",
									"listing", "menu", "nav", "ol", "pre", "section", "summary", "ul");
							int PROBE_END_LINE_573 = 752;
							if (html_tree_builder_state_1_expr157_line_573) {
								if (!tb.inScope(name)) {
									tb.error(this);
									return false;
								} else {
									tb.generateImpliedEndTags();
									if (!tb.currentElement().nodeName().equals(name))
										tb.error(this);
									tb.popStackToClose(name);
								}
							} else {
								int PROBE_START_LINE_588 = 752;
								String v_name_467_line_588 = name;
								boolean html_tree_builder_state_1_expr158_line_588 = v_name_467_line_588.equals("form");
								int PROBE_END_LINE_588 = 752;
								if (html_tree_builder_state_1_expr158_line_588) {
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
								} else {
									int PROBE_START_LINE_601 = 752;
									String v_name_467_line_601 = name;
									boolean html_tree_builder_state_1_expr159_line_601 = v_name_467_line_601
											.equals("p");
									int PROBE_END_LINE_601 = 752;
									if (html_tree_builder_state_1_expr159_line_601) {
										if (!tb.inButtonScope(name)) {
											tb.error(this);
											tb.process(new Token.StartTag(name));
											return tb.process(endTag);
										} else {
											tb.generateImpliedEndTags(name);
											if (!tb.currentElement().nodeName().equals(name))
												tb.error(this);
											tb.popStackToClose(name);
										}
									} else {
										int PROBE_START_LINE_612 = 752;
										String v_name_467_line_612 = name;
										boolean html_tree_builder_state_1_expr160_line_612 = v_name_467_line_612
												.equals("li");
										int PROBE_END_LINE_612 = 752;
										if (html_tree_builder_state_1_expr160_line_612) {
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
											int PROBE_START_LINE_622 = 752;
											String v_name_467_line_622 = name;
											boolean html_tree_builder_state_1_expr161_line_622 = StringUtil
													.in(v_name_467_line_622, "dd", "dt");
											int PROBE_END_LINE_622 = 752;
											if (html_tree_builder_state_1_expr161_line_622) {
												if (!tb.inScope(name)) {
													tb.error(this);
													return false;
												} else {
													tb.generateImpliedEndTags(name);
													if (!tb.currentElement().nodeName().equals(name))
														tb.error(this);
													tb.popStackToClose(name);
												}
											} else {
												int PROBE_START_LINE_632 = 752;
												String v_name_467_line_632 = name;
												boolean html_tree_builder_state_1_expr162_line_632 = StringUtil
														.in(v_name_467_line_632, "h1", "h2", "h3", "h4", "h5", "h6");
												int PROBE_END_LINE_632 = 752;
												if (html_tree_builder_state_1_expr162_line_632) {
													if (!tb.inScope(new String[]{"h1", "h2", "h3", "h4", "h5", "h6"})) {
														tb.error(this);
														return false;
													} else {
														tb.generateImpliedEndTags(name);
														if (!tb.currentElement().nodeName().equals(name))
															tb.error(this);
														tb.popStackToClose("h1", "h2", "h3", "h4", "h5", "h6");
													}
												} else {
													int PROBE_START_LINE_642 = 752;
													String v_name_467_line_642 = name;
													boolean html_tree_builder_state_1_expr163_line_642 = v_name_467_line_642
															.equals("sarcasm");
													int PROBE_END_LINE_642 = 752;
													if (html_tree_builder_state_1_expr163_line_642) {
														return anyOtherEndTag(t, tb);
													} else {
														int PROBE_START_LINE_645 = 752;
														String v_name_467_line_645 = name;
														boolean html_tree_builder_state_1_expr164_line_645 = StringUtil
																.in(v_name_467_line_645, "a", "b", "big", "code", "em",
																		"font", "i", "nobr", "s", "small", "strike",
																		"strong", "tt", "u");
														int PROBE_END_LINE_645 = 752;
														if (html_tree_builder_state_1_expr164_line_645) {
															OUTER : for (int i = 0; i < 8; i++) {
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
																LinkedList<Element> stack = tb.getStack();
																for (int si = 0; si < stack.size(); si++) {
																	Element el = stack.get(si);
																	if (el == formatEl) {
																		commonAncestor = stack.get(si - 1);
																		seenFormattingElement = true;
																	} else if (seenFormattingElement
																			&& tb.isSpecial(el)) {
																		furthestBlock = el;
																		break;
																	}
																}
																if (furthestBlock == null) {
																	tb.popStackToClose(formatEl.nodeName());
																	tb.removeFromActiveFormattingElements(formatEl);
																	return true;
																}
																Element node = furthestBlock;
																Element lastNode = furthestBlock;
																INNER : for (int j = 0; j < 3; j++) {
																	if (tb.onStack(node))
																		node = tb.aboveOnStack(node);
																	if (!tb.isInActiveFormattingElements(node)) {
																		tb.removeFromStack(node);
																		continue INNER;
																	} else if (node == formatEl)
																		break INNER;
																	Element replacement = new Element(
																			Tag.valueOf(node.nodeName()),
																			tb.getBaseUri());
																	tb.replaceActiveFormattingElement(node,
																			replacement);
																	tb.replaceOnStack(node, replacement);
																	node = replacement;
																	if (lastNode == furthestBlock) {
																	}
																	if (lastNode.parent() != null)
																		lastNode.remove();
																	node.appendChild(lastNode);
																	lastNode = node;
																}
																if (StringUtil.in(commonAncestor.nodeName(), "table",
																		"tbody", "tfoot", "thead", "tr")) {
																	if (lastNode.parent() != null)
																		lastNode.remove();
																	tb.insertInFosterParent(lastNode);
																} else {
																	if (lastNode.parent() != null)
																		lastNode.remove();
																	commonAncestor.appendChild(lastNode);
																}
																Element adopter = new Element(Tag.valueOf(name),
																		tb.getBaseUri());
																Node[] childNodes = furthestBlock.childNodes().toArray(
																		new Node[furthestBlock.childNodes().size()]);
																for (Node childNode : childNodes) {
																	adopter.appendChild(childNode);
																}
																furthestBlock.appendChild(adopter);
																tb.removeFromActiveFormattingElements(formatEl);
																tb.removeFromStack(formatEl);
																tb.insertOnStackAfter(furthestBlock, adopter);
															}
														} else {
															int PROBE_START_LINE_734 = 752;
															String v_name_467_line_734 = name;
															boolean html_tree_builder_state_1_expr165_line_734 = StringUtil
																	.in(v_name_467_line_734, "applet", "marquee",
																			"object");
															int PROBE_END_LINE_734 = 752;
															if (html_tree_builder_state_1_expr165_line_734) {
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
															} else {
																int PROBE_START_LINE_746 = 752;
																String v_name_467_line_746 = name;
																boolean html_tree_builder_state_1_expr166_line_746 = v_name_467_line_746
																		.equals("br");
																int PROBE_END_LINE_746 = 752;
																if (html_tree_builder_state_1_expr166_line_746) {
																	tb.error(this);
																	tb.process(new Token.StartTag("br"));
																	return false;
																} else {
																	int PROBE_START_LINE_751 = 751;
																	org.jsoup.parser.Token p_t_464_line_751 = t;
																	org.jsoup.parser.HtmlTreeBuilder p_tb_465_line_751 = tb;
																	boolean html_tree_builder_state_1_expr167_line_751 = anyOtherEndTag(
																			p_t_464_line_751, p_tb_465_line_751);
																	int PROBE_END_LINE_751 = 751;
																	return html_tree_builder_state_1_expr167_line_751;
																}
															}
														}
													}
												}
											}
										}
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
            int PROBE_START_LINE_764 = 764;
			org.jsoup.parser.Token p_t_473_line_764 = t;
			org.jsoup.parser.Token.EndTag html_tree_builder_state_1_expr169_line_764 = p_t_473_line_764.asEndTag();
			String html_tree_builder_state_1_expr168_line_764 = html_tree_builder_state_1_expr169_line_764.name();
			int PROBE_END_LINE_764 = 764;
			String name = html_tree_builder_state_1_expr168_line_764;
            int PROBE_START_LINE_765 = 765;
			org.jsoup.parser.HtmlTreeBuilder p_tb_474_line_765 = tb;
			DescendableLinkedList<Element> html_tree_builder_state_1_expr170_line_765 = p_tb_474_line_765.getStack();
			int PROBE_END_LINE_765 = 765;
			DescendableLinkedList<Element> stack = html_tree_builder_state_1_expr170_line_765;
            int PROBE_START_LINE_766 = 766;
			DescendableLinkedList<org.jsoup.nodes.Element> v_stack_476_line_766 = stack;
			Iterator<Element> html_tree_builder_state_1_expr171_line_766 = v_stack_476_line_766.descendingIterator();
			int PROBE_END_LINE_766 = 766;
			Iterator<Element> it = html_tree_builder_state_1_expr171_line_766;
            while (true) {
                int PROBE_START_LINE_767 = 767;
				Iterator<org.jsoup.nodes.Element> v_it_477_line_767 = it;
				boolean html_tree_builder_state_1_expr172_line_767 = v_it_477_line_767.hasNext();
				if (!(html_tree_builder_state_1_expr172_line_767)) {
					break;
				}
				int PROBE_END_LINE_767 = 767;
				int PROBE_START_LINE_768 = 768;
				Iterator<org.jsoup.nodes.Element> v_it_477_line_768 = it;
				Element html_tree_builder_state_1_expr173_line_768 = v_it_477_line_768.next();
				int PROBE_END_LINE_768 = 768;
				Element node = html_tree_builder_state_1_expr173_line_768;
                int PROBE_START_LINE_769 = 780;
				org.jsoup.nodes.Element v_node_478_line_769 = node;
				String html_tree_builder_state_1_expr175_line_769 = v_node_478_line_769.nodeName();
				String v_name_475_line_769 = name;
				boolean html_tree_builder_state_1_expr174_line_769 = html_tree_builder_state_1_expr175_line_769
						.equals(v_name_475_line_769);
				int PROBE_END_LINE_769 = 780;
				if (html_tree_builder_state_1_expr174_line_769) {
                    int PROBE_START_LINE_770 = 770;
					org.jsoup.parser.HtmlTreeBuilder p_tb_474_line_770 = tb;
					String v_name_475_line_770 = name;
					int PROBE_END_LINE_770 = 770;
					p_tb_474_line_770.generateImpliedEndTags(v_name_475_line_770);
                    int PROBE_START_LINE_771 = 772;
					String v_name_475_line_771 = name;
					org.jsoup.parser.HtmlTreeBuilder p_tb_474_line_771 = tb;
					org.jsoup.nodes.Element html_tree_builder_state_1_expr180_line_771 = p_tb_474_line_771
							.currentElement();
					String html_tree_builder_state_1_expr179_line_771 = html_tree_builder_state_1_expr180_line_771
							.nodeName();
					boolean html_tree_builder_state_1_expr178_line_771 = v_name_475_line_771
							.equals(html_tree_builder_state_1_expr179_line_771);
					boolean html_tree_builder_state_1_expr177_line_771 = !html_tree_builder_state_1_expr178_line_771;
					int PROBE_END_LINE_771 = 772;
					if (html_tree_builder_state_1_expr177_line_771)
                        tb.error(this);
                    int PROBE_START_LINE_773 = 773;
					org.jsoup.parser.HtmlTreeBuilder p_tb_474_line_773 = tb;
					String v_name_475_line_773 = name;
					int PROBE_END_LINE_773 = 773;
					p_tb_474_line_773.popStackToClose(v_name_475_line_773);
                    break;
                } else {
                    int PROBE_START_LINE_776 = 779;
					org.jsoup.parser.HtmlTreeBuilder p_tb_474_line_776 = tb;
					org.jsoup.nodes.Element v_node_478_line_776 = node;
					boolean html_tree_builder_state_1_expr182_line_776 = p_tb_474_line_776
							.isSpecial(v_node_478_line_776);
					int PROBE_END_LINE_776 = 779;
					if (html_tree_builder_state_1_expr182_line_776) {
                        int PROBE_START_LINE_777 = 777;
						org.jsoup.parser.HtmlTreeBuilder p_tb_474_line_777 = tb;
						int PROBE_END_LINE_777 = 777;
						p_tb_474_line_777.error(this);
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
            int PROBE_START_LINE_788 = 800;
			org.jsoup.parser.Token p_t_479_line_788 = t;
			boolean html_tree_builder_state_1_expr185_line_788 = p_t_479_line_788.isCharacter();
			int PROBE_END_LINE_788 = 800;
			if (html_tree_builder_state_1_expr185_line_788) {
                tb.insert(t.asCharacter());
            } else {
				int PROBE_START_LINE_790 = 800;
				org.jsoup.parser.Token p_t_479_line_790 = t;
				boolean html_tree_builder_state_1_expr186_line_790 = p_t_479_line_790.isEOF();
				int PROBE_END_LINE_790 = 800;
				if (html_tree_builder_state_1_expr186_line_790) {
					tb.error(this);
					tb.pop();
					tb.transition(tb.originalState());
					return tb.process(t);
				} else {
					int PROBE_START_LINE_796 = 800;
					org.jsoup.parser.Token p_t_479_line_796 = t;
					boolean html_tree_builder_state_1_expr187_line_796 = p_t_479_line_796.isEndTag();
					int PROBE_END_LINE_796 = 800;
					if (html_tree_builder_state_1_expr187_line_796) {
						int PROBE_START_LINE_798 = 798;
						org.jsoup.parser.HtmlTreeBuilder p_tb_480_line_798 = tb;
						int PROBE_END_LINE_798 = 798;
						p_tb_480_line_798.pop();
						int PROBE_START_LINE_799 = 799;
						org.jsoup.parser.HtmlTreeBuilder p_tb_480_line_799 = tb;
						org.jsoup.parser.HtmlTreeBuilder p_tb_480_line_799_v1 = tb;
						org.jsoup.parser.HtmlTreeBuilderState html_tree_builder_state_1_expr190_line_799 = p_tb_480_line_799_v1
								.originalState();
						int PROBE_END_LINE_799 = 799;
						p_tb_480_line_799.transition(html_tree_builder_state_1_expr190_line_799);
					}
				}
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
                String name = startTag.name();
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
                    tb.process(new Token.StartTag("colgroup"));
                    return tb.process(t);
                } else if (StringUtil.in(name, "tbody", "tfoot", "thead")) {
                    tb.clearStackToTableContext();
                    tb.insert(startTag);
                    tb.transition(InTableBody);
                } else if (StringUtil.in(name, "td", "th", "tr")) {
                    tb.process(new Token.StartTag("tbody"));
                    return tb.process(t);
                } else if (name.equals("table")) {
                    tb.error(this);
                    boolean processed = tb.process(new Token.EndTag("table"));
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
                        Element form = tb.insertEmpty(startTag);
                        tb.setFormElement(form);
                    }
                } else {
                    return anythingElse(t, tb);
                }
            } else if (t.isEndTag()) {
                Token.EndTag endTag = t.asEndTag();
                String name = endTag.name();

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
            } else if (t.isEOF()) {
                if (tb.currentElement().nodeName().equals("html"))
                    tb.error(this);
                return true; // stops parsing
            }
            return anythingElse(t, tb);
        }

        boolean anythingElse(Token t, HtmlTreeBuilder tb) {
            tb.error(this);
            boolean processed = true;
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
                        tb.getPendingTableCharacters().add(c);
                    }
                    break;
                default:
                    if (tb.getPendingTableCharacters().size() > 0) {
                        for (Token.Character character : tb.getPendingTableCharacters()) {
                            if (!isWhitespace(character)) {
                                // InTable anything else section:
                                tb.error(this);
                                if (StringUtil.in(tb.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                                    tb.setFosterInserts(true);
                                    tb.process(character, InBody);
                                    tb.setFosterInserts(false);
                                } else {
                                    tb.process(character, InBody);
                                }
                            } else
                                tb.insert(character);
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
            if (t.isEndTag() && t.asEndTag().name().equals("caption")) {
                Token.EndTag endTag = t.asEndTag();
                String name = endTag.name();
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
                    t.isStartTag() && StringUtil.in(t.asStartTag().name(),
                            "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr") ||
                            t.isEndTag() && t.asEndTag().name().equals("table"))
                    ) {
                tb.error(this);
                boolean processed = tb.process(new Token.EndTag("caption"));
                if (processed)
                    return tb.process(t);
            } else if (t.isEndTag() && StringUtil.in(t.asEndTag().name(),
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
                    String name = startTag.name();
                    if (name.equals("html"))
                        return tb.process(t, InBody);
                    else if (name.equals("col"))
                        tb.insertEmpty(startTag);
                    else
                        return anythingElse(t, tb);
                    break;
                case EndTag:
                    Token.EndTag endTag = t.asEndTag();
                    name = endTag.name();
                    if (name.equals("colgroup")) {
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
            boolean processed = tb.process(new Token.EndTag("colgroup"));
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
                    String name = startTag.name();
                    if (name.equals("tr")) {
                        tb.clearStackToTableBodyContext();
                        tb.insert(startTag);
                        tb.transition(InRow);
                    } else if (StringUtil.in(name, "th", "td")) {
                        tb.error(this);
                        tb.process(new Token.StartTag("tr"));
                        return tb.process(startTag);
                    } else if (StringUtil.in(name, "caption", "col", "colgroup", "tbody", "tfoot", "thead")) {
                        return exitTableBody(t, tb);
                    } else
                        return anythingElse(t, tb);
                    break;
                case EndTag:
                    Token.EndTag endTag = t.asEndTag();
                    name = endTag.name();
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
            tb.process(new Token.EndTag(tb.currentElement().nodeName())); // tbody, tfoot, thead
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
                String name = startTag.name();

                if (StringUtil.in(name, "th", "td")) {
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
                String name = endTag.name();

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
                    tb.process(new Token.EndTag("tr"));
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
            boolean processed = tb.process(new Token.EndTag("tr"));
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
                String name = endTag.name();

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
                    StringUtil.in(t.asStartTag().name(),
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
                tb.process(new Token.EndTag("td"));
            else
                tb.process(new Token.EndTag("th")); // only here if th or td in scope
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
                    String name = start.name();
                    if (name.equals("html"))
                        return tb.process(start, InBody);
                    else if (name.equals("option")) {
                        tb.process(new Token.EndTag("option"));
                        tb.insert(start);
                    } else if (name.equals("optgroup")) {
                        if (tb.currentElement().nodeName().equals("option"))
                            tb.process(new Token.EndTag("option"));
                        else if (tb.currentElement().nodeName().equals("optgroup"))
                            tb.process(new Token.EndTag("optgroup"));
                        tb.insert(start);
                    } else if (name.equals("select")) {
                        tb.error(this);
                        return tb.process(new Token.EndTag("select"));
                    } else if (StringUtil.in(name, "input", "keygen", "textarea")) {
                        tb.error(this);
                        if (!tb.inSelectScope("select"))
                            return false; // frag
                        tb.process(new Token.EndTag("select"));
                        return tb.process(start);
                    } else if (name.equals("script")) {
                        return tb.process(t, InHead);
                    } else {
                        return anythingElse(t, tb);
                    }
                    break;
                case EndTag:
                    Token.EndTag end = t.asEndTag();
                    name = end.name();
                    if (name.equals("optgroup")) {
                        if (tb.currentElement().nodeName().equals("option") && tb.aboveOnStack(tb.currentElement()) != null && tb.aboveOnStack(tb.currentElement()).nodeName().equals("optgroup"))
                            tb.process(new Token.EndTag("option"));
                        if (tb.currentElement().nodeName().equals("optgroup"))
                            tb.pop();
                        else
                            tb.error(this);
                    } else if (name.equals("option")) {
                        if (tb.currentElement().nodeName().equals("option"))
                            tb.pop();
                        else
                            tb.error(this);
                    } else if (name.equals("select")) {
                        if (!tb.inSelectScope(name)) {
                            tb.error(this);
                            return false;
                        } else {
                            tb.popStackToClose(name);
                            tb.resetInsertionMode();
                        }
                    } else
                        return anythingElse(t, tb);
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
            if (t.isStartTag() && StringUtil.in(t.asStartTag().name(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                tb.error(this);
                tb.process(new Token.EndTag("select"));
                return tb.process(t);
            } else if (t.isEndTag() && StringUtil.in(t.asEndTag().name(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                tb.error(this);
                if (tb.inTableScope(t.asEndTag().name())) {
                    tb.process(new Token.EndTag("select"));
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
            if (isWhitespace(t)) {
                return tb.process(t, InBody);
            } else if (t.isComment()) {
                tb.insert(t.asComment()); // into html node
            } else if (t.isDoctype()) {
                tb.error(this);
                return false;
            } else if (t.isStartTag() && t.asStartTag().name().equals("html")) {
                return tb.process(t, InBody);
            } else if (t.isEndTag() && t.asEndTag().name().equals("html")) {
                if (tb.isFragmentParsing()) {
                    tb.error(this);
                    return false;
                } else {
                    tb.transition(AfterAfterBody);
                }
            } else if (t.isEOF()) {
                // chillax! we're done
            } else {
                tb.error(this);
                tb.transition(InBody);
                return tb.process(t);
            }
            return true;
        }
    },
    InFrameset {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_1343 = 1383;
			org.jsoup.parser.Token p_t_528_line_1343 = t;
			boolean html_tree_builder_state_1_expr191_line_1343 = isWhitespace(p_t_528_line_1343);
			int PROBE_END_LINE_1343 = 1383;
			if (html_tree_builder_state_1_expr191_line_1343) {
                tb.insert(t.asCharacter());
            } else {
				int PROBE_START_LINE_1345 = 1383;
				org.jsoup.parser.Token p_t_528_line_1345 = t;
				boolean html_tree_builder_state_1_expr192_line_1345 = p_t_528_line_1345.isComment();
				int PROBE_END_LINE_1345 = 1383;
				if (html_tree_builder_state_1_expr192_line_1345) {
					tb.insert(t.asComment());
				} else {
					int PROBE_START_LINE_1347 = 1383;
					org.jsoup.parser.Token p_t_528_line_1347 = t;
					boolean html_tree_builder_state_1_expr193_line_1347 = p_t_528_line_1347.isDoctype();
					int PROBE_END_LINE_1347 = 1383;
					if (html_tree_builder_state_1_expr193_line_1347) {
						tb.error(this);
						return false;
					} else {
						int PROBE_START_LINE_1350 = 1383;
						org.jsoup.parser.Token p_t_528_line_1350 = t;
						boolean html_tree_builder_state_1_expr194_line_1350 = p_t_528_line_1350.isStartTag();
						int PROBE_END_LINE_1350 = 1383;
						if (html_tree_builder_state_1_expr194_line_1350) {
							int PROBE_START_LINE_1351 = 1351;
							org.jsoup.parser.Token p_t_528_line_1351 = t;
							Token.StartTag html_tree_builder_state_1_expr195_line_1351 = p_t_528_line_1351.asStartTag();
							int PROBE_END_LINE_1351 = 1351;
							Token.StartTag start = html_tree_builder_state_1_expr195_line_1351;
							int PROBE_START_LINE_1352 = 1352;
							org.jsoup.parser.Token.StartTag v_start_530_line_1352 = start;
							String html_tree_builder_state_1_expr196_line_1352 = v_start_530_line_1352.name();
							int PROBE_END_LINE_1352 = 1352;
							String name = html_tree_builder_state_1_expr196_line_1352;
							int PROBE_START_LINE_1353 = 1364;
							String v_name_531_line_1353 = name;
							boolean html_tree_builder_state_1_expr197_line_1353 = v_name_531_line_1353.equals("html");
							int PROBE_END_LINE_1353 = 1364;
							if (html_tree_builder_state_1_expr197_line_1353) {
								return tb.process(start, InBody);
							} else {
								int PROBE_START_LINE_1355 = 1364;
								String v_name_531_line_1355 = name;
								boolean html_tree_builder_state_1_expr198_line_1355 = v_name_531_line_1355
										.equals("frameset");
								int PROBE_END_LINE_1355 = 1364;
								if (html_tree_builder_state_1_expr198_line_1355) {
									tb.insert(start);
								} else {
									int PROBE_START_LINE_1357 = 1364;
									String v_name_531_line_1357 = name;
									boolean html_tree_builder_state_1_expr199_line_1357 = v_name_531_line_1357
											.equals("frame");
									int PROBE_END_LINE_1357 = 1364;
									if (html_tree_builder_state_1_expr199_line_1357) {
										int PROBE_START_LINE_1358 = 1358;
										org.jsoup.parser.HtmlTreeBuilder p_tb_529_line_1358 = tb;
										org.jsoup.parser.Token.StartTag v_start_530_line_1358 = start;
										int PROBE_END_LINE_1358 = 1358;
										p_tb_529_line_1358.insertEmpty(v_start_530_line_1358);
									} else if (name.equals("noframes")) {
										return tb.process(start, InHead);
									} else {
										tb.error(this);
										return false;
									}
								}
							}
						} else {
							int PROBE_START_LINE_1365 = 1383;
							org.jsoup.parser.Token p_t_528_line_1365 = t;
							boolean html_tree_builder_state_1_expr202_line_1365 = p_t_528_line_1365.isEndTag();
							boolean html_tree_builder_state_1_expr203_line_1365 = true;
							if (html_tree_builder_state_1_expr202_line_1365) {
								org.jsoup.parser.Token p_t_528_line_1365_v1 = t;
								org.jsoup.parser.Token.EndTag html_tree_builder_state_1_expr205_line_1365 = p_t_528_line_1365_v1
										.asEndTag();
								String html_tree_builder_state_1_expr204_line_1365 = html_tree_builder_state_1_expr205_line_1365
										.name();
								html_tree_builder_state_1_expr203_line_1365 = html_tree_builder_state_1_expr204_line_1365
										.equals("frameset");
							}
							boolean html_tree_builder_state_1_expr201_line_1365 = html_tree_builder_state_1_expr202_line_1365
									&& html_tree_builder_state_1_expr203_line_1365;
							int PROBE_END_LINE_1365 = 1383;
							if (html_tree_builder_state_1_expr201_line_1365) {
								int PROBE_START_LINE_1366 = 1374;
								org.jsoup.parser.HtmlTreeBuilder p_tb_529_line_1366 = tb;
								org.jsoup.nodes.Element html_tree_builder_state_1_expr208_line_1366 = p_tb_529_line_1366
										.currentElement();
								String html_tree_builder_state_1_expr207_line_1366 = html_tree_builder_state_1_expr208_line_1366
										.nodeName();
								boolean html_tree_builder_state_1_expr206_line_1366 = html_tree_builder_state_1_expr207_line_1366
										.equals("html");
								int PROBE_END_LINE_1366 = 1374;
								if (html_tree_builder_state_1_expr206_line_1366) {
									tb.error(this);
									return false;
								} else {
									int PROBE_START_LINE_1370 = 1370;
									org.jsoup.parser.HtmlTreeBuilder p_tb_529_line_1370 = tb;
									int PROBE_END_LINE_1370 = 1370;
									p_tb_529_line_1370.pop();
									int PROBE_START_LINE_1371 = 1373;
									org.jsoup.parser.HtmlTreeBuilder p_tb_529_line_1371 = tb;
									boolean html_tree_builder_state_1_expr212_line_1371 = p_tb_529_line_1371
											.isFragmentParsing();
									boolean html_tree_builder_state_1_expr211_line_1371 = !html_tree_builder_state_1_expr212_line_1371;
									boolean html_tree_builder_state_1_expr213_line_1371 = true;
									if (html_tree_builder_state_1_expr211_line_1371) {
										org.jsoup.parser.HtmlTreeBuilder p_tb_529_line_1371_v1 = tb;
										org.jsoup.nodes.Element html_tree_builder_state_1_expr216_line_1371 = p_tb_529_line_1371_v1
												.currentElement();
										String html_tree_builder_state_1_expr215_line_1371 = html_tree_builder_state_1_expr216_line_1371
												.nodeName();
										boolean html_tree_builder_state_1_expr214_line_1371 = html_tree_builder_state_1_expr215_line_1371
												.equals("frameset");
										html_tree_builder_state_1_expr213_line_1371 = !html_tree_builder_state_1_expr214_line_1371;
									}
									boolean html_tree_builder_state_1_expr210_line_1371 = html_tree_builder_state_1_expr211_line_1371
											&& html_tree_builder_state_1_expr213_line_1371;
									int PROBE_END_LINE_1371 = 1373;
									if (html_tree_builder_state_1_expr210_line_1371) {
										int PROBE_START_LINE_1372 = 1372;
										org.jsoup.parser.HtmlTreeBuilder p_tb_529_line_1372 = tb;
										org.jsoup.parser.HtmlTreeBuilderState f_after_frameset_532_line_1372 = AfterFrameset;
										int PROBE_END_LINE_1372 = 1372;
										p_tb_529_line_1372.transition(f_after_frameset_532_line_1372);
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
						}
					}
				}
			}
            return true;
        }
    },
    AfterFrameset {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_1389 = 1407;
			org.jsoup.parser.Token p_t_533_line_1389 = t;
			boolean html_tree_builder_state_1_expr218_line_1389 = isWhitespace(p_t_533_line_1389);
			int PROBE_END_LINE_1389 = 1407;
			if (html_tree_builder_state_1_expr218_line_1389) {
                tb.insert(t.asCharacter());
            } else {
				int PROBE_START_LINE_1391 = 1407;
				org.jsoup.parser.Token p_t_533_line_1391 = t;
				boolean html_tree_builder_state_1_expr219_line_1391 = p_t_533_line_1391.isComment();
				int PROBE_END_LINE_1391 = 1407;
				if (html_tree_builder_state_1_expr219_line_1391) {
					tb.insert(t.asComment());
				} else {
					int PROBE_START_LINE_1393 = 1407;
					org.jsoup.parser.Token p_t_533_line_1393 = t;
					boolean html_tree_builder_state_1_expr220_line_1393 = p_t_533_line_1393.isDoctype();
					int PROBE_END_LINE_1393 = 1407;
					if (html_tree_builder_state_1_expr220_line_1393) {
						tb.error(this);
						return false;
					} else {
						int PROBE_START_LINE_1396 = 1407;
						org.jsoup.parser.Token p_t_533_line_1396 = t;
						boolean html_tree_builder_state_1_expr222_line_1396 = p_t_533_line_1396.isStartTag();
						boolean html_tree_builder_state_1_expr223_line_1396 = true;
						if (html_tree_builder_state_1_expr222_line_1396) {
							org.jsoup.parser.Token p_t_533_line_1396_v1 = t;
							org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr225_line_1396 = p_t_533_line_1396_v1
									.asStartTag();
							String html_tree_builder_state_1_expr224_line_1396 = html_tree_builder_state_1_expr225_line_1396
									.name();
							html_tree_builder_state_1_expr223_line_1396 = html_tree_builder_state_1_expr224_line_1396
									.equals("html");
						}
						boolean html_tree_builder_state_1_expr221_line_1396 = html_tree_builder_state_1_expr222_line_1396
								&& html_tree_builder_state_1_expr223_line_1396;
						int PROBE_END_LINE_1396 = 1407;
						if (html_tree_builder_state_1_expr221_line_1396) {
							return tb.process(t, InBody);
						} else {
							int PROBE_START_LINE_1398 = 1407;
							org.jsoup.parser.Token p_t_533_line_1398 = t;
							boolean html_tree_builder_state_1_expr227_line_1398 = p_t_533_line_1398.isEndTag();
							boolean html_tree_builder_state_1_expr228_line_1398 = true;
							if (html_tree_builder_state_1_expr227_line_1398) {
								org.jsoup.parser.Token p_t_533_line_1398_v1 = t;
								org.jsoup.parser.Token.EndTag html_tree_builder_state_1_expr230_line_1398 = p_t_533_line_1398_v1
										.asEndTag();
								String html_tree_builder_state_1_expr229_line_1398 = html_tree_builder_state_1_expr230_line_1398
										.name();
								html_tree_builder_state_1_expr228_line_1398 = html_tree_builder_state_1_expr229_line_1398
										.equals("html");
							}
							boolean html_tree_builder_state_1_expr226_line_1398 = html_tree_builder_state_1_expr227_line_1398
									&& html_tree_builder_state_1_expr228_line_1398;
							int PROBE_END_LINE_1398 = 1407;
							if (html_tree_builder_state_1_expr226_line_1398) {
								int PROBE_START_LINE_1399 = 1399;
								org.jsoup.parser.HtmlTreeBuilder p_tb_534_line_1399 = tb;
								org.jsoup.parser.HtmlTreeBuilderState f_after_after_frameset_535_line_1399 = AfterAfterFrameset;
								int PROBE_END_LINE_1399 = 1399;
								p_tb_534_line_1399.transition(f_after_after_frameset_535_line_1399);
							} else if (t.isStartTag() && t.asStartTag().name().equals("noframes")) {
								return tb.process(t, InHead);
							} else if (t.isEOF()) {
							} else {
								tb.error(this);
								return false;
							}
						}
					}
				}
			}
            return true;
        }
    },
    AfterAfterBody {
        boolean process(Token t, HtmlTreeBuilder tb) {
            if (t.isComment()) {
                tb.insert(t.asComment());
            } else if (t.isDoctype() || isWhitespace(t) || (t.isStartTag() && t.asStartTag().name().equals("html"))) {
                return tb.process(t, InBody);
            } else if (t.isEOF()) {
                // nice work chuck
            } else {
                tb.error(this);
                tb.transition(InBody);
                return tb.process(t);
            }
            return true;
        }
    },
    AfterAfterFrameset {
        boolean process(Token t, HtmlTreeBuilder tb) {
            int PROBE_START_LINE_1429 = 1440;
			org.jsoup.parser.Token p_t_539_line_1429 = t;
			boolean html_tree_builder_state_1_expr232_line_1429 = p_t_539_line_1429.isComment();
			int PROBE_END_LINE_1429 = 1440;
			if (html_tree_builder_state_1_expr232_line_1429) {
                tb.insert(t.asComment());
            } else {
				int PROBE_START_LINE_1431 = 1440;
				org.jsoup.parser.Token p_t_539_line_1431 = t;
				boolean html_tree_builder_state_1_expr234_line_1431 = p_t_539_line_1431.isDoctype();
				boolean html_tree_builder_state_1_expr235_line_1431 = false;
				boolean html_tree_builder_state_1_expr236_line_1431 = false;
				if (!html_tree_builder_state_1_expr234_line_1431) {
					org.jsoup.parser.Token p_t_539_line_1431_v1 = t;
					html_tree_builder_state_1_expr235_line_1431 = isWhitespace(p_t_539_line_1431_v1);
					if (!html_tree_builder_state_1_expr235_line_1431) {
						org.jsoup.parser.Token p_t_539_line_1431_v2 = t;
						boolean html_tree_builder_state_1_expr238_line_1431 = p_t_539_line_1431_v2.isStartTag();
						boolean html_tree_builder_state_1_expr239_line_1431 = true;
						if (html_tree_builder_state_1_expr238_line_1431) {
							org.jsoup.parser.Token p_t_539_line_1431_v3 = t;
							org.jsoup.parser.Token.StartTag html_tree_builder_state_1_expr241_line_1431 = p_t_539_line_1431_v3
									.asStartTag();
							String html_tree_builder_state_1_expr240_line_1431 = html_tree_builder_state_1_expr241_line_1431
									.name();
							html_tree_builder_state_1_expr239_line_1431 = html_tree_builder_state_1_expr240_line_1431
									.equals("html");
						}
						boolean html_tree_builder_state_1_expr237_line_1431 = html_tree_builder_state_1_expr238_line_1431
								&& html_tree_builder_state_1_expr239_line_1431;
						html_tree_builder_state_1_expr236_line_1431 = (html_tree_builder_state_1_expr237_line_1431);
					}
				}
				boolean html_tree_builder_state_1_expr233_line_1431 = html_tree_builder_state_1_expr234_line_1431
						|| html_tree_builder_state_1_expr235_line_1431 || html_tree_builder_state_1_expr236_line_1431;
				int PROBE_END_LINE_1431 = 1440;
				if (html_tree_builder_state_1_expr233_line_1431) {
					return tb.process(t, InBody);
				} else {
					int PROBE_START_LINE_1433 = 1440;
					org.jsoup.parser.Token p_t_539_line_1433 = t;
					boolean html_tree_builder_state_1_expr242_line_1433 = p_t_539_line_1433.isEOF();
					int PROBE_END_LINE_1433 = 1440;
					if (html_tree_builder_state_1_expr242_line_1433) {
					} else if (t.isStartTag() && t.asStartTag().name().equals("noframes")) {
						return tb.process(t, InHead);
					} else {
						tb.error(this);
						return false;
					}
				}
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

    int PROBE_START_LINE_1451 = 1451;

	private static String html_tree_builder_state_1_expr243_line_1451 = String.valueOf('\u0000');

	int PROBE_END_LINE_1451 = 1451;

	private static String nullString = html_tree_builder_state_1_expr243_line_1451;

    abstract boolean process(Token t, HtmlTreeBuilder tb);

    private static boolean isWhitespace(Token t) {
        int PROBE_START_LINE_1456 = 1465;
		org.jsoup.parser.Token p_t_547_line_1456 = t;
		boolean html_tree_builder_state_1_expr244_line_1456 = p_t_547_line_1456.isCharacter();
		int PROBE_END_LINE_1456 = 1465;
		if (html_tree_builder_state_1_expr244_line_1456) {
            String data = t.asCharacter().getData();
            // todo: this checks more than spec - "\t", "\n", "\f", "\r", " "
            for (int i = 0; i < data.length(); i++) {
                char c = data.charAt(i);
                if (!StringUtil.isWhitespace(c))
                    return false;
            }
            return true;
        }
        return false;
    }

    private static void handleRcData(Token.StartTag startTag, HtmlTreeBuilder tb) {
        tb.insert(startTag);
        tb.tokeniser.transition(TokeniserState.Rcdata);
        tb.markInsertionMode();
        tb.transition(Text);
    }

    private static void handleRawtext(Token.StartTag startTag, HtmlTreeBuilder tb) {
        tb.insert(startTag);
        tb.tokeniser.transition(TokeniserState.Rawtext);
        tb.markInsertionMode();
        tb.transition(Text);
    }
}
