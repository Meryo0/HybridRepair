%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(csvparser_1, 'org.apache.commons.csv.CSVParser').
class(csvformat_1, 'org.apache.commons.csv.CSVFormat').
class(constants_1, 'org.apache.commons.csv.Constants').
class(csvparser_test_1, 'org.apache.commons.csv.CSVParserTest').
class(quote_1, 'org.apache.commons.csv.Quote').
class(extended_buffered_reader_1, 'org.apache.commons.csv.ExtendedBufferedReader').
class(lexer_1, 'org.apache.commons.csv.Lexer').
class(token_1, 'org.apache.commons.csv.Token').
class(assertions_1, 'org.apache.commons.csv.Assertions').

%%% Methods
%csvparser_1 - org.apache.commons.csv.CSVParser
method(m_parse_48, range(csvparser_1, 4418, 718, 135, 153)).
method(m_parse_49, range(csvparser_1, 5142, 738, 155, 173)).
method(m_parse_52, range(csvparser_1, 5886, 1147, 175, 202)).
method(m_csvparser_50, range(csvparser_1, 7503, 1049, 220, 245)).
method(m_add_record_value_58, range(csvparser_1, 8558, 345, 247, 255)).
method(m_close_59, range(csvparser_1, 8909, 239, 257, 267)).
method(m_get_current_line_number_60, range(csvparser_1, 9154, 343, 269, 278)).
method(m_get_header_map_61, range(csvparser_1, 9503, 372, 280, 289)).
method(m_get_record_number_63, range(csvparser_1, 9881, 322, 291, 300)).
method(m_get_records_64, range(csvparser_1, 10209, 665, 302, 319)).
method(m_initialize_header_57, range(csvparser_1, 10880, 1136, 321, 352)).
method(m_is_closed_65, range(csvparser_1, 12022, 71, 354, 356)).
method(m_iterator_66, range(csvparser_1, 12099, 1789, 358, 412)).
method(m_get_next_record_67, range(csvparser_1, 12500, 314, 370, 377)).
method(m_has_next_68, range(csvparser_1, 12828, 306, 379, 388)).
method(m_next_69, range(csvparser_1, 13148, 614, 390, 406)).
method(m_remove_70, range(csvparser_1, 13776, 95, 408, 410)).
method(m_next_record_71, range(csvparser_1, 13894, 1836, 414, 461)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
method(m_is_line_break_5, range(csvformat_1, 7465, 312, 229, 239)).
method(m_is_line_break_6, range(csvformat_1, 7783, 366, 241, 251)).
method(m_new_format_8, range(csvformat_1, 8155, 481, 253, 263)).
method(m_csvformat_3, range(csvformat_1, 8642, 2248, 265, 311)).
method(m_equals_10, range(csvformat_1, 10896, 1667, 313, 370)).
method(m_format_11, range(csvformat_1, 12569, 546, 372, 388)).
method(m_get_comment_start_12, range(csvformat_1, 13121, 221, 390, 397)).
method(m_get_delimiter_13, range(csvformat_1, 13348, 203, 399, 406)).
method(m_get_escape_14, range(csvformat_1, 13557, 176, 408, 415)).
method(m_get_header_15, range(csvformat_1, 13739, 198, 417, 424)).
method(m_get_ignore_empty_lines_16, range(csvformat_1, 13943, 327, 426, 434)).
method(m_get_ignore_surrounding_spaces_17, range(csvformat_1, 14276, 330, 436, 444)).
method(m_get_null_string_18, range(csvformat_1, 14612, 556, 446, 461)).
method(m_get_quote_char_19, range(csvformat_1, 15174, 235, 463, 470)).
method(m_get_quote_policy_20, range(csvformat_1, 15415, 167, 472, 479)).
method(m_get_record_separator_21, range(csvformat_1, 15588, 192, 481, 488)).
method(m_get_skip_header_record_22, range(csvformat_1, 15786, 200, 490, 497)).
method(m_hash_code_23, range(csvformat_1, 15992, 808, 499, 515)).
method(m_is_commenting_enabled_24, range(csvformat_1, 16806, 349, 517, 526)).
method(m_is_escaping_25, range(csvformat_1, 17161, 193, 528, 535)).
method(m_is_null_handling_26, range(csvformat_1, 17360, 206, 537, 544)).
method(m_is_quoting_27, range(csvformat_1, 17572, 198, 546, 553)).
method(m_parse_28, range(csvformat_1, 17776, 449, 555, 570)).
method(m_to_string_29, range(csvformat_1, 18231, 1300, 572, 608)).
method(m_validate_30, range(csvformat_1, 19537, 1884, 610, 652)).
method(m_with_comment_start_32, range(csvformat_1, 21427, 626, 654, 667)).
method(m_with_comment_start_33, range(csvformat_1, 22059, 948, 669, 686)).
method(m_with_delimiter_34, range(csvformat_1, 23013, 758, 688, 703)).
method(m_with_escape_35, range(csvformat_1, 23777, 484, 705, 716)).
method(m_with_escape_36, range(csvformat_1, 24267, 806, 718, 733)).
method(m_with_header_38, range(csvformat_1, 25079, 905, 735, 755)).
method(m_with_ignore_empty_lines_4, range(csvformat_1, 25990, 687, 757, 768)).
method(m_with_ignore_surrounding_spaces_39, range(csvformat_1, 26683, 646, 770, 781)).
method(m_with_null_string_40, range(csvformat_1, 27335, 902, 783, 801)).
method(m_with_quote_char_41, range(csvformat_1, 28243, 485, 803, 814)).
method(m_with_quote_char_42, range(csvformat_1, 28734, 796, 816, 831)).
method(m_with_quote_policy_43, range(csvformat_1, 29536, 539, 833, 844)).
method(m_with_record_separator_44, range(csvformat_1, 30081, 438, 846, 856)).
method(m_with_record_separator_45, range(csvformat_1, 30525, 569, 858, 869)).
method(m_with_skip_header_record_47, range(csvformat_1, 31100, 580, 871, 883)).
%constants_1 - org.apache.commons.csv.Constants
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
method(m_test_get_line_72, range(csvparser_test_1, 2591, 335, 74, 82)).
method(m_test_get_records_73, range(csvparser_test_1, 2932, 459, 84, 93)).
method(m_test_excel_format1_74, range(csvparser_test_1, 3397, 860, 95, 114)).
method(m_test_excel_format2_75, range(csvparser_test_1, 4263, 664, 116, 133)).
method(m_test_end_of_file_behaviour_excel_76, range(csvparser_test_1, 4933, 1065, 135, 162)).
method(m_test_end_of_file_behavior_csv_77, range(csvparser_test_1, 6004, 1031, 164, 189)).
method(m_test_empty_line_behaviour_excel_78, range(csvparser_test_1, 7041, 855, 191, 213)).
method(m_test_empty_line_behaviour_csv_79, range(csvparser_test_1, 7902, 801, 215, 235)).
method(m_test_empty_file_80, range(csvparser_test_1, 8709, 176, 237, 241)).
method(m_test_csv57_81, range(csvparser_test_1, 8891, 256, 243, 249)).
method(m_test_backslash_escaping_old_82, range(csvparser_test_1, 9153, 1388, 251, 282)).
method(m_test_backslash_escaping_83, range(csvparser_test_1, 10547, 1998, 284, 325)).
method(m_test_backslash_escaping2_84, range(csvparser_test_1, 12551, 990, 327, 354)).
method(m_test_default_format_85, range(csvparser_test_1, 13547, 1130, 356, 390)).
method(m_test_carriage_return_line_feed_endings_86, range(csvparser_test_1, 14683, 329, 392, 398)).
method(m_test_close_87, range(csvparser_test_1, 15018, 464, 400, 409)).
method(m_test_carriage_return_endings_88, range(csvparser_test_1, 15488, 315, 411, 417)).
method(m_test_line_feed_endings_89, range(csvparser_test_1, 15809, 309, 419, 425)).
method(m_test_ignore_empty_lines_90, range(csvparser_test_1, 16124, 420, 427, 435)).
method(m_test_for_each_91, range(csvparser_test_1, 16550, 594, 437, 451)).
method(m_test_roundtrip_92, range(csvparser_test_1, 17150, 454, 453, 463)).
method(m_test_iterator_93, range(csvparser_test_1, 17610, 1048, 465, 492)).
method(m_test_multiple_iterators_94, range(csvparser_test_1, 18664, 697, 494, 510)).
method(m_test_header_95, range(csvparser_test_1, 19367, 584, 512, 527)).
method(m_test_skip_set_header_96, range(csvparser_test_1, 19957, 468, 529, 538)).
method(m_test_skip_auto_header_97, range(csvparser_test_1, 20431, 412, 540, 548)).
method(m_test_header_comment_98, range(csvparser_test_1, 20849, 624, 550, 565)).
method(m_test_provided_header_99, range(csvparser_test_1, 21479, 799, 567, 586)).
method(m_test_provided_header_auto_100, range(csvparser_test_1, 22284, 790, 588, 607)).
method(m_test_mapped_but_not_set_as_outlook2007_contact_export_101, range(csvparser_test_1, 23080, 1286, 609, 642)).
method(m_test_get_header_map_102, range(csvparser_test_1, 24372, 1034, 644, 665)).
method(m_test_no_header_map_103, range(csvparser_test_1, 25412, 206, 667, 671)).
method(m_test_get_line_number_with_lf_105, range(csvparser_test_1, 25624, 126, 673, 676)).
method(m_test_get_line_number_with_crlf_106, range(csvparser_test_1, 25756, 114, 678, 681)).
method(m_test_get_line_number_with_cr_107, range(csvparser_test_1, 25876, 126, 683, 686)).
method(m_test_get_record_number_with_lf_108, range(csvparser_test_1, 26008, 130, 688, 691)).
method(m_test_get_record_with_multi_line_values_109, range(csvparser_test_1, 26144, 1206, 693, 715)).
method(m_test_get_record_number_with_crlf_110, range(csvparser_test_1, 27356, 118, 717, 720)).
method(m_test_get_record_number_with_cr_111, range(csvparser_test_1, 27480, 130, 722, 725)).
method(m_test_invalid_format_112, range(csvparser_test_1, 27616, 238, 727, 731)).
method(m_test_parse_null_file_format_113, range(csvparser_test_1, 27860, 172, 733, 736)).
method(m_test_parse_file_null_format_114, range(csvparser_test_1, 28038, 160, 738, 741)).
method(m_test_parse_null_string_format_115, range(csvparser_test_1, 28204, 176, 743, 746)).
method(m_test_parse_string_null_format_116, range(csvparser_test_1, 28386, 160, 748, 751)).
method(m_test_parse_null_url_charset_format_117, range(csvparser_test_1, 28552, 197, 753, 756)).
method(m_test_parser_url_null_charset_format_118, range(csvparser_test_1, 28755, 210, 758, 761)).
method(m_test_parse_url_charset_null_format_119, range(csvparser_test_1, 28971, 216, 763, 766)).
method(m_test_new_csvparser_null_reader_format_120, range(csvparser_test_1, 29193, 172, 768, 771)).
method(m_test_new_csvparser_reader_null_format_121, range(csvparser_test_1, 29371, 175, 773, 776)).
method(m_validate_record_numbers_122, range(csvparser_test_1, 29552, 885, 778, 793)).
method(m_validate_line_numbers_123, range(csvparser_test_1, 30443, 829, 795, 808)).
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
method(m_extended_buffered_reader_56, range(extended_buffered_reader_1, 1632, 156, 47, 52)).
method(m_read_125, range(extended_buffered_reader_1, 1794, 255, 54, 62)).
method(m_get_last_char_126, range(extended_buffered_reader_1, 2055, 555, 64, 74)).
method(m_read_127, range(extended_buffered_reader_1, 2616, 761, 76, 104)).
method(m_read_line_128, range(extended_buffered_reader_1, 3383, 739, 106, 128)).
method(m_look_ahead_129, range(extended_buffered_reader_1, 4128, 483, 130, 145)).
method(m_get_current_line_number_130, range(extended_buffered_reader_1, 4617, 442, 147, 158)).
method(m_is_closed_131, range(extended_buffered_reader_1, 5065, 56, 160, 162)).
method(m_close_132, range(extended_buffered_reader_1, 5127, 347, 164, 176)).
%lexer_1 - org.apache.commons.csv.Lexer
method(m_lexer_55, range(lexer_1, 2287, 569, 60, 69)).
method(m_next_token_134, range(lexer_1, 2862, 3525, 71, 164)).
method(m_parse_simple_token_135, range(lexer_1, 6393, 1911, 166, 217)).
method(m_parse_encapsulated_token_136, range(lexer_1, 8310, 3301, 219, 288)).
method(m_map_null_to_disabled_133, range(lexer_1, 11617, 110, 290, 292)).
method(m_get_current_line_number_137, range(lexer_1, 11733, 178, 294, 301)).
method(m_read_escape_138, range(lexer_1, 11961, 1514, 304, 345)).
method(m_trim_trailing_spaces_139, range(lexer_1, 13481, 311, 347, 355)).
method(m_read_end_of_line_140, range(lexer_1, 13798, 477, 357, 369)).
method(m_is_closed_141, range(lexer_1, 14281, 56, 371, 373)).
method(m_is_whitespace_142, range(lexer_1, 14343, 192, 375, 380)).
method(m_is_start_of_line_143, range(lexer_1, 14541, 338, 382, 390)).
method(m_is_end_of_file_144, range(lexer_1, 14885, 158, 392, 397)).
method(m_is_delimiter_145, range(lexer_1, 15049, 73, 399, 401)).
method(m_is_escape_146, range(lexer_1, 15128, 67, 403, 405)).
method(m_is_quote_char_147, range(lexer_1, 15201, 73, 407, 409)).
method(m_is_comment_start_148, range(lexer_1, 15280, 79, 411, 413)).
method(m_is_meta_char_149, range(lexer_1, 15365, 182, 415, 420)).
method(m_close_150, range(lexer_1, 15553, 176, 422, 430)).
%token_1 - org.apache.commons.csv.Token
method(m_reset_152, range(token_1, 1883, 99, 60, 64)).
method(m_to_string_153, range(token_1, 1988, 206, 66, 74)).
%assertions_1 - org.apache.commons.csv.Assertions
method(m_assertions_1, range(assertions_1, 943, 63, 27, 29)).
method(m_not_null_2, range(assertions_1, 1012, 220, 31, 35)).

%%% Blocks
%csvparser_1 - org.apache.commons.csv.CSVParser
block(csvparser_1_block1, block, csvparser_1_code3, body, range(csvparser_1, 5716, 164, 168, 173)).
block(csvparser_1_block2, block, csvparser_1_code22, body, range(csvparser_1, 8269, 283, 237, 245)).
block(csvparser_1_block3, block, csvparser_1_code33, body, range(csvparser_1, 9801, 74, 287, 289)).
block(csvparser_1_block4, block, csvparser_1_code38, body, range(csvparser_1, 11040, 976, 324, 352)).
block(csvparser_1_block5, block, csvparser_1_stmt13, then_statement, range(csvparser_1, 11183, 804, 327, 350)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
block(csvformat_1_block1, block, csvformat_1_code34, body, range(csvformat_1, 7735, 42, 237, 239)).
block(csvformat_1_block2, block, csvformat_1_code35, body, range(csvformat_1, 8086, 63, 249, 251)).
block(csvformat_1_block3, block, csvformat_1_code36, body, range(csvformat_1, 10251, 639, 296, 311)).
block(csvformat_1_block4, block, csvformat_1_stmt3, then_statement, range(csvformat_1, 10289, 99, 297, 299)).
block(csvformat_1_block5, block, csvformat_1_code47, body, range(csvformat_1, 13306, 36, 395, 397)).
block(csvformat_1_block6, block, csvformat_1_code48, body, range(csvformat_1, 13518, 33, 404, 406)).
block(csvformat_1_block7, block, csvformat_1_code49, body, range(csvformat_1, 13703, 30, 413, 415)).
block(csvformat_1_block8, block, csvformat_1_code50, body, range(csvformat_1, 13875, 62, 422, 424)).
block(csvformat_1_block9, block, csvformat_1_code51, body, range(csvformat_1, 14230, 40, 432, 434)).
block(csvformat_1_block10, block, csvformat_1_code52, body, range(csvformat_1, 14559, 47, 442, 444)).
block(csvformat_1_block11, block, csvformat_1_code53, body, range(csvformat_1, 15376, 33, 468, 470)).
block(csvformat_1_block12, block, csvformat_1_code54, body, range(csvformat_1, 19742, 1679, 615, 652)).
block(csvformat_1_block13, block, csvformat_1_stmt22, then_statement, range(csvformat_1, 19813, 163, 616, 619)).
block(csvformat_1_block14, block, csvformat_1_stmt23, then_statement, range(csvformat_1, 20041, 157, 621, 624)).
block(csvformat_1_block15, block, csvformat_1_stmt24, then_statement, range(csvformat_1, 20275, 170, 626, 629)).
block(csvformat_1_block16, block, csvformat_1_stmt25, then_statement, range(csvformat_1, 20512, 170, 631, 634)).
block(csvformat_1_block17, block, csvformat_1_stmt26, then_statement, range(csvformat_1, 20743, 167, 636, 639)).
block(csvformat_1_block18, block, csvformat_1_stmt27, then_statement, range(csvformat_1, 20969, 109, 641, 643)).
block(csvformat_1_block19, block, csvformat_1_stmt28, then_statement, range(csvformat_1, 21108, 307, 645, 651)).
block(csvformat_1_block20, block, csvformat_1_code55, body, range(csvformat_1, 23427, 344, 697, 703)).
block(csvformat_1_block21, block, csvformat_1_stmt29, then_statement, range(csvformat_1, 23465, 99, 698, 700)).
block(csvformat_1_block22, block, csvformat_1_code57, body, range(csvformat_1, 24200, 61, 714, 716)).
block(csvformat_1_block23, block, csvformat_1_code58, body, range(csvformat_1, 24725, 348, 727, 733)).
block(csvformat_1_block24, block, csvformat_1_stmt32, then_statement, range(csvformat_1, 24760, 106, 728, 730)).
block(csvformat_1_block25, block, csvformat_1_code60, body, range(csvformat_1, 26469, 208, 765, 768)).
block(csvformat_1_block26, block, csvformat_1_code62, body, range(csvformat_1, 27121, 208, 778, 781)).
block(csvformat_1_block27, block, csvformat_1_code64, body, range(csvformat_1, 29186, 344, 825, 831)).
block(csvformat_1_block28, block, csvformat_1_stmt36, then_statement, range(csvformat_1, 29224, 99, 826, 828)).
block(csvformat_1_block29, block, csvformat_1_code66, body, range(csvformat_1, 30443, 76, 854, 856)).
block(csvformat_1_block30, block, csvformat_1_code67, body, range(csvformat_1, 30886, 208, 866, 869)).
%constants_1 - org.apache.commons.csv.Constants
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
block(csvparser_test_1_block1, block, csvparser_test_1_code13, body, range(csvparser_test_1, 25469, 149, 668, 671)).
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
block(extended_buffered_reader_1_block1, block, extended_buffered_reader_1_code11, body, range(extended_buffered_reader_1, 1758, 30, 50, 52)).
%lexer_1 - org.apache.commons.csv.Lexer
block(lexer_1_block1, block, lexer_1_code3, body, range(lexer_1, 2440, 416, 61, 69)).
block(lexer_1_block2, block, lexer_1_code10, body, range(lexer_1, 11667, 60, 290, 292)).
%token_1 - org.apache.commons.csv.Token
%assertions_1 - org.apache.commons.csv.Assertions
block(assertions_1_block1, block, assertions_1_code3, body, range(assertions_1, 1079, 153, 31, 35)).
block(assertions_1_block2, block, assertions_1_stmt1, then_statement, range(assertions_1, 1112, 114, 32, 34)).

%%% Statements
%csvparser_1 - org.apache.commons.csv.CSVParser
stmt(csvparser_1_stmt1, expression_statement, csvparser_1_block1, (statements, 0), range(csvparser_1, 5726, 37, 169, 169)).
stmt(csvparser_1_stmt2, expression_statement, csvparser_1_block1, (statements, 1), range(csvparser_1, 5772, 37, 170, 170)).
stmt(csvparser_1_stmt3, return_statement, csvparser_1_block1, (statements, 2), range(csvparser_1, 5819, 55, 172, 172)).
stmt(csvparser_1_stmt4, expression_statement, csvparser_1_block2, (statements, 0), range(csvparser_1, 8279, 37, 238, 238)).
stmt(csvparser_1_stmt5, expression_statement, csvparser_1_block2, (statements, 1), range(csvparser_1, 8325, 37, 239, 239)).
stmt(csvparser_1_stmt6, expression_statement, csvparser_1_block2, (statements, 2), range(csvparser_1, 8372, 18, 241, 241)).
stmt(csvparser_1_stmt7, expression_statement, csvparser_1_block2, (statements, 3), range(csvparser_1, 8399, 21, 242, 242)).
stmt(csvparser_1_stmt8, expression_statement, csvparser_1_block2, (statements, 4), range(csvparser_1, 8429, 67, 243, 243)).
stmt(csvparser_1_stmt9, expression_statement, csvparser_1_block2, (statements, 5), range(csvparser_1, 8505, 41, 244, 244)).
stmt(csvparser_1_stmt10, return_statement, csvparser_1_block3, (statements, 0), range(csvparser_1, 9811, 58, 288, 288)).
stmt(csvparser_1_stmt11, variable_declaration_statement, csvparser_1_block4, (statements, 0), range(csvparser_1, 11050, 35, 325, 325)).
stmt(csvparser_1_stmt12, variable_declaration_statement, csvparser_1_block4, (statements, 1), range(csvparser_1, 11094, 54, 326, 326)).
stmt(csvparser_1_stmt13, if_statement, csvparser_1_block4, (statements, 2), range(csvparser_1, 11157, 830, 327, 350)).
stmt(csvparser_1_stmt14, return_statement, csvparser_1_block4, (statements, 3), range(csvparser_1, 11996, 14, 351, 351)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
stmt(csvformat_1_stmt1, return_statement, csvformat_1_block1, (statements, 0), range(csvformat_1, 7745, 26, 238, 238)).
stmt(csvformat_1_stmt2, return_statement, csvformat_1_block2, (statements, 0), range(csvformat_1, 8096, 47, 250, 250)).
stmt(csvformat_1_stmt3, if_statement, csvformat_1_block3, (statements, 0), range(csvformat_1, 10261, 127, 297, 299)).
stmt(csvformat_1_stmt4, expression_statement, csvformat_1_block3, (statements, 1), range(csvformat_1, 10397, 27, 300, 300)).
stmt(csvformat_1_stmt5, expression_statement, csvformat_1_block3, (statements, 2), range(csvformat_1, 10433, 27, 301, 301)).
stmt(csvformat_1_stmt6, expression_statement, csvformat_1_block3, (statements, 3), range(csvformat_1, 10469, 31, 302, 302)).
stmt(csvformat_1_stmt7, expression_statement, csvformat_1_block3, (statements, 4), range(csvformat_1, 10509, 33, 303, 303)).
stmt(csvformat_1_stmt8, expression_statement, csvformat_1_block3, (statements, 5), range(csvformat_1, 10551, 21, 304, 304)).
stmt(csvformat_1_stmt9, expression_statement, csvformat_1_block3, (statements, 6), range(csvformat_1, 10581, 55, 305, 305)).
stmt(csvformat_1_stmt10, expression_statement, csvformat_1_block3, (statements, 7), range(csvformat_1, 10645, 41, 306, 306)).
stmt(csvformat_1_stmt11, expression_statement, csvformat_1_block3, (statements, 8), range(csvformat_1, 10695, 39, 307, 307)).
stmt(csvformat_1_stmt12, expression_statement, csvformat_1_block3, (statements, 9), range(csvformat_1, 10743, 29, 308, 308)).
stmt(csvformat_1_stmt13, expression_statement, csvformat_1_block3, (statements, 10), range(csvformat_1, 10781, 53, 309, 309)).
stmt(csvformat_1_stmt14, expression_statement, csvformat_1_block3, (statements, 11), range(csvformat_1, 10843, 41, 310, 310)).
stmt(csvformat_1_stmt15, return_statement, csvformat_1_block5, (statements, 0), range(csvformat_1, 13316, 20, 396, 396)).
stmt(csvformat_1_stmt16, return_statement, csvformat_1_block6, (statements, 0), range(csvformat_1, 13528, 17, 405, 405)).
stmt(csvformat_1_stmt17, return_statement, csvformat_1_block7, (statements, 0), range(csvformat_1, 13713, 14, 414, 414)).
stmt(csvformat_1_stmt18, return_statement, csvformat_1_block8, (statements, 0), range(csvformat_1, 13885, 46, 423, 423)).
stmt(csvformat_1_stmt19, return_statement, csvformat_1_block9, (statements, 0), range(csvformat_1, 14240, 24, 433, 433)).
stmt(csvformat_1_stmt20, return_statement, csvformat_1_block10, (statements, 0), range(csvformat_1, 14569, 31, 443, 443)).
stmt(csvformat_1_stmt21, return_statement, csvformat_1_block11, (statements, 0), range(csvformat_1, 15386, 17, 469, 469)).
stmt(csvformat_1_stmt22, if_statement, csvformat_1_block12, (statements, 0), range(csvformat_1, 19752, 224, 616, 619)).
stmt(csvformat_1_stmt23, if_statement, csvformat_1_block12, (statements, 1), range(csvformat_1, 19986, 212, 621, 624)).
stmt(csvformat_1_stmt24, if_statement, csvformat_1_block12, (statements, 2), range(csvformat_1, 20208, 237, 626, 629)).
stmt(csvformat_1_stmt25, if_statement, csvformat_1_block12, (statements, 3), range(csvformat_1, 20455, 227, 631, 634)).
stmt(csvformat_1_stmt26, if_statement, csvformat_1_block12, (statements, 4), range(csvformat_1, 20692, 218, 636, 639)).
stmt(csvformat_1_stmt27, if_statement, csvformat_1_block12, (statements, 5), range(csvformat_1, 20920, 158, 641, 643)).
stmt(csvformat_1_stmt28, if_statement, csvformat_1_block12, (statements, 6), range(csvformat_1, 21088, 327, 645, 651)).
stmt(csvformat_1_stmt29, if_statement, csvformat_1_block20, (statements, 0), range(csvformat_1, 23437, 127, 698, 700)).
stmt(csvformat_1_stmt30, return_statement, csvformat_1_block20, (statements, 1), range(csvformat_1, 23573, 192, 701, 702)).
stmt(csvformat_1_stmt31, return_statement, csvformat_1_block22, (statements, 0), range(csvformat_1, 24210, 45, 715, 715)).
stmt(csvformat_1_stmt32, if_statement, csvformat_1_block23, (statements, 0), range(csvformat_1, 24735, 131, 728, 730)).
stmt(csvformat_1_stmt33, return_statement, csvformat_1_block23, (statements, 1), range(csvformat_1, 24875, 192, 731, 732)).
stmt(csvformat_1_stmt34, return_statement, csvformat_1_block25, (statements, 0), range(csvformat_1, 26479, 192, 766, 767)).
stmt(csvformat_1_stmt35, return_statement, csvformat_1_block26, (statements, 0), range(csvformat_1, 27131, 192, 779, 780)).
stmt(csvformat_1_stmt36, if_statement, csvformat_1_block27, (statements, 0), range(csvformat_1, 29196, 127, 826, 828)).
stmt(csvformat_1_stmt37, return_statement, csvformat_1_block27, (statements, 1), range(csvformat_1, 29332, 192, 829, 830)).
stmt(csvformat_1_stmt38, return_statement, csvformat_1_block29, (statements, 0), range(csvformat_1, 30453, 60, 855, 855)).
stmt(csvformat_1_stmt39, return_statement, csvformat_1_block30, (statements, 0), range(csvformat_1, 30896, 192, 867, 868)).
%constants_1 - org.apache.commons.csv.Constants
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
stmt(csvparser_test_1_stmt1, variable_declaration_statement, csvparser_test_1_block1, (statements, 0), range(csvparser_test_1, 25479, 83, 669, 669)).
stmt(csvparser_test_1_stmt2, expression_statement, csvparser_test_1_block1, (statements, 1), range(csvparser_test_1, 25571, 41, 670, 670)).
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
stmt(extended_buffered_reader_1_stmt1, super_constructor_invocation, extended_buffered_reader_1_block1, (statements, 0), range(extended_buffered_reader_1, 1768, 14, 51, 51)).
%lexer_1 - org.apache.commons.csv.Lexer
stmt(lexer_1_stmt1, expression_statement, lexer_1_block1, (statements, 0), range(lexer_1, 2450, 13, 62, 62)).
stmt(lexer_1_stmt2, expression_statement, lexer_1_block1, (statements, 1), range(lexer_1, 2472, 39, 63, 63)).
stmt(lexer_1_stmt3, expression_statement, lexer_1_block1, (statements, 2), range(lexer_1, 2520, 52, 64, 64)).
stmt(lexer_1_stmt4, expression_statement, lexer_1_block1, (statements, 3), range(lexer_1, 2581, 58, 65, 65)).
stmt(lexer_1_stmt5, expression_statement, lexer_1_block1, (statements, 4), range(lexer_1, 2648, 64, 66, 66)).
stmt(lexer_1_stmt6, expression_statement, lexer_1_block1, (statements, 5), range(lexer_1, 2721, 67, 67, 67)).
stmt(lexer_1_stmt7, expression_statement, lexer_1_block1, (statements, 6), range(lexer_1, 2797, 53, 68, 68)).
stmt(lexer_1_stmt8, return_statement, lexer_1_block2, (statements, 0), range(lexer_1, 11677, 44, 291, 291)).
%token_1 - org.apache.commons.csv.Token
%assertions_1 - org.apache.commons.csv.Assertions
stmt(assertions_1_stmt1, if_statement, assertions_1_block1, (statements, 0), range(assertions_1, 1089, 137, 32, 34)).

%%% Expressions
%csvparser_1 - org.apache.commons.csv.CSVParser
expr(csvparser_1_expr1, method_invocation, csvparser_1_stmt1, expression, range(csvparser_1, 5726, 36, 169, 169), "Assertions.notNull(string,\"string\")").
expr(csvparser_1_expr2, method_invocation, csvparser_1_stmt2, expression, range(csvparser_1, 5772, 36, 170, 170), "Assertions.notNull(format,\"format\")").
expr(csvparser_1_expr3, class_instance_creation, csvparser_1_stmt3, expression, range(csvparser_1, 5826, 47, 172, 172), "new CSVParser(new StringReader(string),format)").
expr(csvparser_1_expr4, class_instance_creation, csvparser_1_expr3, (arguments, 0), range(csvparser_1, 5840, 24, 172, 172), "new StringReader(string)").
expr(csvparser_1_expr5, class_instance_creation, csvparser_1_code12, initializer, range(csvparser_1, 7387, 23, 214, 214), "new ArrayList<String>()").
expr(csvparser_1_expr6, class_instance_creation, csvparser_1_code20, initializer, range(csvparser_1, 7485, 11, 218, 218), "new Token()").
expr(csvparser_1_expr7, method_invocation, csvparser_1_stmt4, expression, range(csvparser_1, 8279, 36, 238, 238), "Assertions.notNull(reader,\"reader\")").
expr(csvparser_1_expr8, method_invocation, csvparser_1_stmt5, expression, range(csvparser_1, 8325, 36, 239, 239), "Assertions.notNull(format,\"format\")").
expr(csvparser_1_expr9, method_invocation, csvparser_1_stmt6, expression, range(csvparser_1, 8372, 17, 241, 241), "format.validate()").
expr(csvparser_1_expr12, this_expression, f_format_67, expression, range(csvparser_1, 8399, 4, 242, 242), "this").
expr(csvparser_1_expr10, assignment, csvparser_1_stmt7, expression, range(csvparser_1, 8399, 20, 242, 242), "this.format=format").
expr(csvparser_1_expr11, field_access, csvparser_1_expr10, left_hand_side, range(csvparser_1, 8399, 11, 242, 242), "this.format").
expr(csvparser_1_expr13, assignment, csvparser_1_stmt8, expression, range(csvparser_1, 8429, 66, 243, 243), "this.lexer=new Lexer(format,new ExtendedBufferedReader(reader))").
expr(csvparser_1_expr16, this_expression, f_lexer_68, expression, range(csvparser_1, 8429, 4, 243, 243), "this").
expr(csvparser_1_expr14, field_access, csvparser_1_expr13, left_hand_side, range(csvparser_1, 8429, 10, 243, 243), "this.lexer").
expr(csvparser_1_expr15, class_instance_creation, csvparser_1_expr13, right_hand_side, range(csvparser_1, 8442, 53, 243, 243), "new Lexer(format,new ExtendedBufferedReader(reader))").
expr(csvparser_1_expr17, class_instance_creation, csvparser_1_expr15, (arguments, 1), range(csvparser_1, 8460, 34, 243, 243), "new ExtendedBufferedReader(reader)").
expr(csvparser_1_expr18, assignment, csvparser_1_stmt9, expression, range(csvparser_1, 8505, 40, 244, 244), "this.headerMap=this.initializeHeader()").
expr(csvparser_1_expr19, field_access, csvparser_1_expr18, left_hand_side, range(csvparser_1, 8505, 14, 244, 244), "this.headerMap").
expr(csvparser_1_expr21, this_expression, f_header_map_69, expression, range(csvparser_1, 8505, 4, 244, 244), "this").
expr(csvparser_1_expr20, method_invocation, csvparser_1_expr18, right_hand_side, range(csvparser_1, 8522, 23, 244, 244), "this.initializeHeader()").
expr(csvparser_1_expr22, this_expression, csvparser_1_expr20, expression, range(csvparser_1, 8522, 4, 244, 244), "this").
expr(csvparser_1_expr23, class_instance_creation, csvparser_1_stmt10, expression, range(csvparser_1, 9818, 50, 288, 288), "new LinkedHashMap<String,Integer>(this.headerMap)").
expr(csvparser_1_expr25, this_expression, f_header_map_69, expression, range(csvparser_1, 9853, 4, 288, 288), "this").
expr(csvparser_1_expr24, field_access, csvparser_1_expr23, (arguments, 0), range(csvparser_1, 9853, 14, 288, 288), "this.headerMap").
expr(csvparser_1_expr27, field_access, csvparser_1_expr26, expression, range(csvparser_1, 11124, 11, 326, 326), "this.format").
expr(csvparser_1_expr28, this_expression, f_format_67, expression, range(csvparser_1, 11124, 4, 326, 326), "this").
expr(csvparser_1_expr26, method_invocation, csvparser_1_code48, initializer, range(csvparser_1, 11124, 23, 326, 326), "this.format.getHeader()").
expr(csvparser_1_expr29, infix_expression, csvparser_1_stmt13, expression, range(csvparser_1, 11161, 20, 327, 327), "formatHeader != null").
%csvformat_1 - org.apache.commons.csv.CSVFormat
expr(csvformat_1_expr1, class_instance_creation, csvformat_1_code8, initializer, range(csvformat_1, 5273, 155, 174, 175), "new CSVFormat(COMMA,DOUBLE_QUOTE_CHAR,null,null,null,false,true,CRLF,null,null,false)").
expr(csvformat_1_expr2, method_invocation, csvformat_1_code15, initializer, range(csvformat_1, 5757, 35, 186, 186), "DEFAULT.withIgnoreEmptyLines(false)").
expr(csvformat_1_expr3, method_invocation, csvformat_1_code21, initializer, range(csvformat_1, 6522, 35, 205, 205), "DEFAULT.withIgnoreEmptyLines(false)").
expr(csvformat_1_expr4, method_invocation, csvformat_1_code27, initializer, range(csvformat_1, 6694, 86, 209, 211), "DEFAULT.withDelimiter(TAB).withIgnoreSurroundingSpaces(true)").
expr(csvformat_1_expr5, method_invocation, csvformat_1_code33, initializer, range(csvformat_1, 7273, 185, 222, 227), "DEFAULT.withDelimiter(TAB).withEscape(BACKSLASH).withIgnoreEmptyLines(false).withQuoteChar(null).withRecordSeparator(LF)").
expr(csvformat_1_expr7, infix_expression, csvformat_1_expr6, left_operand, range(csvformat_1, 7752, 7, 238, 238), "c == LF").
expr(csvformat_1_expr6, infix_expression, csvformat_1_stmt1, expression, range(csvformat_1, 7752, 18, 238, 238), "c == LF || c == CR").
expr(csvformat_1_expr8, infix_expression, csvformat_1_expr6, right_operand, range(csvformat_1, 7763, 7, 238, 238), "c == CR").
expr(csvformat_1_expr10, infix_expression, csvformat_1_expr9, left_operand, range(csvformat_1, 8103, 9, 250, 250), "c != null").
expr(csvformat_1_expr9, infix_expression, csvformat_1_stmt2, expression, range(csvformat_1, 8103, 39, 250, 250), "c != null && isLineBreak(c.charValue())").
expr(csvformat_1_expr11, method_invocation, csvformat_1_expr9, right_operand, range(csvformat_1, 8116, 26, 250, 250), "isLineBreak(c.charValue())").
expr(csvformat_1_expr12, method_invocation, csvformat_1_expr11, (arguments, 0), range(csvformat_1, 8128, 13, 250, 250), "c.charValue()").
expr(csvformat_1_expr13, method_invocation, csvformat_1_stmt3, expression, range(csvformat_1, 10265, 22, 297, 297), "isLineBreak(delimiter)").
expr(csvformat_1_expr16, this_expression, f_delimiter_27, expression, range(csvformat_1, 10397, 4, 300, 300), "this").
expr(csvformat_1_expr15, field_access, csvformat_1_expr14, left_hand_side, range(csvformat_1, 10397, 14, 300, 300), "this.delimiter").
expr(csvformat_1_expr14, assignment, csvformat_1_stmt4, expression, range(csvformat_1, 10397, 26, 300, 300), "this.delimiter=delimiter").
expr(csvformat_1_expr19, this_expression, f_quote_char_28, expression, range(csvformat_1, 10433, 4, 301, 301), "this").
expr(csvformat_1_expr18, field_access, csvformat_1_expr17, left_hand_side, range(csvformat_1, 10433, 14, 301, 301), "this.quoteChar").
expr(csvformat_1_expr17, assignment, csvformat_1_stmt5, expression, range(csvformat_1, 10433, 26, 301, 301), "this.quoteChar=quoteChar").
expr(csvformat_1_expr22, this_expression, f_quote_policy_29, expression, range(csvformat_1, 10469, 4, 302, 302), "this").
expr(csvformat_1_expr21, field_access, csvformat_1_expr20, left_hand_side, range(csvformat_1, 10469, 16, 302, 302), "this.quotePolicy").
expr(csvformat_1_expr20, assignment, csvformat_1_stmt6, expression, range(csvformat_1, 10469, 30, 302, 302), "this.quotePolicy=quotePolicy").
expr(csvformat_1_expr25, this_expression, f_comment_start_30, expression, range(csvformat_1, 10509, 4, 303, 303), "this").
expr(csvformat_1_expr24, field_access, csvformat_1_expr23, left_hand_side, range(csvformat_1, 10509, 17, 303, 303), "this.commentStart").
expr(csvformat_1_expr23, assignment, csvformat_1_stmt7, expression, range(csvformat_1, 10509, 32, 303, 303), "this.commentStart=commentStart").
expr(csvformat_1_expr28, this_expression, f_escape_31, expression, range(csvformat_1, 10551, 4, 304, 304), "this").
expr(csvformat_1_expr27, field_access, csvformat_1_expr26, left_hand_side, range(csvformat_1, 10551, 11, 304, 304), "this.escape").
expr(csvformat_1_expr26, assignment, csvformat_1_stmt8, expression, range(csvformat_1, 10551, 20, 304, 304), "this.escape=escape").
expr(csvformat_1_expr29, assignment, csvformat_1_stmt9, expression, range(csvformat_1, 10581, 54, 305, 305), "this.ignoreSurroundingSpaces=ignoreSurroundingSpaces").
expr(csvformat_1_expr31, this_expression, f_ignore_surrounding_spaces_32, expression, range(csvformat_1, 10581, 4, 305, 305), "this").
expr(csvformat_1_expr30, field_access, csvformat_1_expr29, left_hand_side, range(csvformat_1, 10581, 28, 305, 305), "this.ignoreSurroundingSpaces").
expr(csvformat_1_expr34, this_expression, f_ignore_empty_lines_33, expression, range(csvformat_1, 10645, 4, 306, 306), "this").
expr(csvformat_1_expr33, field_access, csvformat_1_expr32, left_hand_side, range(csvformat_1, 10645, 21, 306, 306), "this.ignoreEmptyLines").
expr(csvformat_1_expr32, assignment, csvformat_1_stmt10, expression, range(csvformat_1, 10645, 40, 306, 306), "this.ignoreEmptyLines=ignoreEmptyLines").
expr(csvformat_1_expr37, this_expression, f_record_separator_34, expression, range(csvformat_1, 10695, 4, 307, 307), "this").
expr(csvformat_1_expr36, field_access, csvformat_1_expr35, left_hand_side, range(csvformat_1, 10695, 20, 307, 307), "this.recordSeparator").
expr(csvformat_1_expr35, assignment, csvformat_1_stmt11, expression, range(csvformat_1, 10695, 38, 307, 307), "this.recordSeparator=recordSeparator").
expr(csvformat_1_expr40, this_expression, f_null_string_35, expression, range(csvformat_1, 10743, 4, 308, 308), "this").
expr(csvformat_1_expr39, field_access, csvformat_1_expr38, left_hand_side, range(csvformat_1, 10743, 15, 308, 308), "this.nullString").
expr(csvformat_1_expr38, assignment, csvformat_1_stmt12, expression, range(csvformat_1, 10743, 28, 308, 308), "this.nullString=nullString").
expr(csvformat_1_expr44, this_expression, f_header_36, expression, range(csvformat_1, 10781, 4, 309, 309), "this").
expr(csvformat_1_expr42, field_access, csvformat_1_expr41, left_hand_side, range(csvformat_1, 10781, 11, 309, 309), "this.header").
expr(csvformat_1_expr41, assignment, csvformat_1_stmt13, expression, range(csvformat_1, 10781, 52, 309, 309), "this.header=header == null ? null : header.clone()").
expr(csvformat_1_expr45, infix_expression, csvformat_1_expr43, expression, range(csvformat_1, 10795, 14, 309, 309), "header == null").
expr(csvformat_1_expr43, conditional_expression, csvformat_1_expr41, right_hand_side, range(csvformat_1, 10795, 38, 309, 309), "header == null ? null : header.clone()").
expr(csvformat_1_expr46, method_invocation, csvformat_1_expr43, else_expression, range(csvformat_1, 10819, 14, 309, 309), "header.clone()").
expr(csvformat_1_expr49, this_expression, f_skip_header_record_37, expression, range(csvformat_1, 10843, 4, 310, 310), "this").
expr(csvformat_1_expr48, field_access, csvformat_1_expr47, left_hand_side, range(csvformat_1, 10843, 21, 310, 310), "this.skipHeaderRecord").
expr(csvformat_1_expr47, assignment, csvformat_1_stmt14, expression, range(csvformat_1, 10843, 40, 310, 310), "this.skipHeaderRecord=skipHeaderRecord").
expr(csvformat_1_expr51, infix_expression, csvformat_1_expr50, expression, range(csvformat_1, 13892, 14, 423, 423), "header != null").
expr(csvformat_1_expr50, conditional_expression, csvformat_1_stmt18, expression, range(csvformat_1, 13892, 38, 423, 423), "header != null ? header.clone() : null").
expr(csvformat_1_expr52, method_invocation, csvformat_1_expr50, then_expression, range(csvformat_1, 13909, 14, 423, 423), "header.clone()").
expr(csvformat_1_expr54, infix_expression, csvformat_1_expr53, left_operand, range(csvformat_1, 19756, 17, 616, 616), "quoteChar != null").
expr(csvformat_1_expr53, infix_expression, csvformat_1_stmt22, expression, range(csvformat_1, 19756, 55, 616, 616), "quoteChar != null && delimiter == quoteChar.charValue()").
expr(csvformat_1_expr55, infix_expression, csvformat_1_expr53, right_operand, range(csvformat_1, 19777, 34, 616, 616), "delimiter == quoteChar.charValue()").
expr(csvformat_1_expr56, method_invocation, csvformat_1_expr55, right_operand, range(csvformat_1, 19790, 21, 616, 616), "quoteChar.charValue()").
expr(csvformat_1_expr58, infix_expression, csvformat_1_expr57, left_operand, range(csvformat_1, 19990, 14, 621, 621), "escape != null").
expr(csvformat_1_expr57, infix_expression, csvformat_1_stmt23, expression, range(csvformat_1, 19990, 49, 621, 621), "escape != null && delimiter == escape.charValue()").
expr(csvformat_1_expr59, infix_expression, csvformat_1_expr57, right_operand, range(csvformat_1, 20008, 31, 621, 621), "delimiter == escape.charValue()").
expr(csvformat_1_expr60, method_invocation, csvformat_1_expr59, right_operand, range(csvformat_1, 20021, 18, 621, 621), "escape.charValue()").
expr(csvformat_1_expr62, infix_expression, csvformat_1_expr61, left_operand, range(csvformat_1, 20212, 20, 626, 626), "commentStart != null").
expr(csvformat_1_expr61, infix_expression, csvformat_1_stmt24, expression, range(csvformat_1, 20212, 61, 626, 626), "commentStart != null && delimiter == commentStart.charValue()").
expr(csvformat_1_expr63, infix_expression, csvformat_1_expr61, right_operand, range(csvformat_1, 20236, 37, 626, 626), "delimiter == commentStart.charValue()").
expr(csvformat_1_expr64, method_invocation, csvformat_1_expr63, right_operand, range(csvformat_1, 20249, 24, 626, 626), "commentStart.charValue()").
expr(csvformat_1_expr66, infix_expression, csvformat_1_expr65, left_operand, range(csvformat_1, 20459, 17, 631, 631), "quoteChar != null").
expr(csvformat_1_expr65, infix_expression, csvformat_1_stmt25, expression, range(csvformat_1, 20459, 51, 631, 631), "quoteChar != null && quoteChar.equals(commentStart)").
expr(csvformat_1_expr67, method_invocation, csvformat_1_expr65, right_operand, range(csvformat_1, 20480, 30, 631, 631), "quoteChar.equals(commentStart)").
expr(csvformat_1_expr69, infix_expression, csvformat_1_expr68, left_operand, range(csvformat_1, 20696, 14, 636, 636), "escape != null").
expr(csvformat_1_expr68, infix_expression, csvformat_1_stmt26, expression, range(csvformat_1, 20696, 45, 636, 636), "escape != null && escape.equals(commentStart)").
expr(csvformat_1_expr70, method_invocation, csvformat_1_expr68, right_operand, range(csvformat_1, 20714, 27, 636, 636), "escape.equals(commentStart)").
expr(csvformat_1_expr71, infix_expression, csvformat_1_stmt27, expression, range(csvformat_1, 20924, 43, 641, 641), "escape == null && quotePolicy == Quote.NONE").
expr(csvformat_1_expr72, infix_expression, csvformat_1_expr71, left_operand, range(csvformat_1, 20924, 14, 641, 641), "escape == null").
expr(csvformat_1_expr73, infix_expression, csvformat_1_expr71, right_operand, range(csvformat_1, 20942, 25, 641, 641), "quotePolicy == Quote.NONE").
expr(csvformat_1_expr74, infix_expression, csvformat_1_stmt28, expression, range(csvformat_1, 21092, 14, 645, 645), "header != null").
expr(csvformat_1_expr75, method_invocation, csvformat_1_stmt29, expression, range(csvformat_1, 23441, 22, 698, 698), "isLineBreak(delimiter)").
expr(csvformat_1_expr76, class_instance_creation, csvformat_1_stmt30, expression, range(csvformat_1, 23580, 184, 701, 702), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
expr(csvformat_1_expr77, method_invocation, csvformat_1_stmt31, expression, range(csvformat_1, 24217, 37, 715, 715), "withEscape(Character.valueOf(escape))").
expr(csvformat_1_expr78, method_invocation, csvformat_1_expr77, (arguments, 0), range(csvformat_1, 24228, 25, 715, 715), "Character.valueOf(escape)").
expr(csvformat_1_expr79, method_invocation, csvformat_1_stmt32, expression, range(csvformat_1, 24739, 19, 728, 728), "isLineBreak(escape)").
expr(csvformat_1_expr80, class_instance_creation, csvformat_1_stmt33, expression, range(csvformat_1, 24882, 184, 731, 732), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
expr(csvformat_1_expr81, class_instance_creation, csvformat_1_stmt34, expression, range(csvformat_1, 26486, 184, 766, 767), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
expr(csvformat_1_expr82, class_instance_creation, csvformat_1_stmt35, expression, range(csvformat_1, 27138, 184, 779, 780), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
expr(csvformat_1_expr83, method_invocation, csvformat_1_stmt36, expression, range(csvformat_1, 29200, 22, 826, 826), "isLineBreak(quoteChar)").
expr(csvformat_1_expr84, class_instance_creation, csvformat_1_stmt37, expression, range(csvformat_1, 29339, 184, 829, 830), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
expr(csvformat_1_expr85, method_invocation, csvformat_1_stmt38, expression, range(csvformat_1, 30460, 52, 855, 855), "withRecordSeparator(String.valueOf(recordSeparator))").
expr(csvformat_1_expr86, method_invocation, csvformat_1_expr85, (arguments, 0), range(csvformat_1, 30480, 31, 855, 855), "String.valueOf(recordSeparator)").
expr(csvformat_1_expr87, class_instance_creation, csvformat_1_stmt39, expression, range(csvformat_1, 30903, 184, 867, 868), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
%constants_1 - org.apache.commons.csv.Constants
expr(constants_1_expr1, method_invocation, constants_1_code7, initializer, range(constants_1, 1198, 22, 36, 36), "Character.valueOf('\"')").
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
expr(csvparser_test_1_expr1, array_initializer, csvparser_test_1_code12, initializer, range(csvparser_test_1, 2433, 151, 67, 72), "{{\"a\",\"b\",\"c\",\"d\"},{\"a\",\"b\",\"1 2\"},{\"foo baar\",\"b\",\"\"},{\"foo\\n,,\\n\\\",,\\n\\\"\",\"d\",\"e\"}}").
expr(csvparser_test_1_expr2, method_invocation, csvparser_test_1_code16, initializer, range(csvparser_test_1, 25504, 57, 669, 669), "CSVParser.parse(\"a,b,c\\n1,2,3\\nx,y,z\",CSVFormat.DEFAULT)").
expr(csvparser_test_1_expr3, method_invocation, csvparser_test_1_stmt2, expression, range(csvparser_test_1, 25571, 40, 670, 670), "Assert.assertNull(parser.getHeaderMap())").
expr(csvparser_test_1_expr4, method_invocation, csvparser_test_1_expr3, (arguments, 0), range(csvparser_test_1, 25589, 21, 670, 670), "parser.getHeaderMap()").
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
expr(extended_buffered_reader_1_expr1, super_constructor_invocation, extended_buffered_reader_1_block1, (statements, 0), range(extended_buffered_reader_1, 1768, 14, 51, 51), "super(reader);").
%lexer_1 - org.apache.commons.csv.Lexer
expr(lexer_1_expr1, assignment, lexer_1_stmt1, expression, range(lexer_1, 2450, 12, 62, 62), "this.in=in").
expr(lexer_1_expr2, field_access, lexer_1_expr1, left_hand_side, range(lexer_1, 2450, 7, 62, 62), "this.in").
expr(lexer_1_expr3, this_expression, f_in_85, expression, range(lexer_1, 2450, 4, 62, 62), "this").
expr(lexer_1_expr4, assignment, lexer_1_stmt2, expression, range(lexer_1, 2472, 38, 63, 63), "this.delimiter=format.getDelimiter()").
expr(lexer_1_expr5, field_access, lexer_1_expr4, left_hand_side, range(lexer_1, 2472, 14, 63, 63), "this.delimiter").
expr(lexer_1_expr7, this_expression, f_delimiter_86, expression, range(lexer_1, 2472, 4, 63, 63), "this").
expr(lexer_1_expr6, method_invocation, lexer_1_expr4, right_hand_side, range(lexer_1, 2489, 21, 63, 63), "format.getDelimiter()").
expr(lexer_1_expr8, assignment, lexer_1_stmt3, expression, range(lexer_1, 2520, 51, 64, 64), "this.escape=mapNullToDisabled(format.getEscape())").
expr(lexer_1_expr9, field_access, lexer_1_expr8, left_hand_side, range(lexer_1, 2520, 11, 64, 64), "this.escape").
expr(lexer_1_expr11, this_expression, f_escape_87, expression, range(lexer_1, 2520, 4, 64, 64), "this").
expr(lexer_1_expr10, method_invocation, lexer_1_expr8, right_hand_side, range(lexer_1, 2534, 37, 64, 64), "mapNullToDisabled(format.getEscape())").
expr(lexer_1_expr12, method_invocation, lexer_1_expr10, (arguments, 0), range(lexer_1, 2552, 18, 64, 64), "format.getEscape()").
expr(lexer_1_expr16, this_expression, f_quote_char_88, expression, range(lexer_1, 2581, 4, 65, 65), "this").
expr(lexer_1_expr13, assignment, lexer_1_stmt4, expression, range(lexer_1, 2581, 57, 65, 65), "this.quoteChar=mapNullToDisabled(format.getQuoteChar())").
expr(lexer_1_expr14, field_access, lexer_1_expr13, left_hand_side, range(lexer_1, 2581, 14, 65, 65), "this.quoteChar").
expr(lexer_1_expr15, method_invocation, lexer_1_expr13, right_hand_side, range(lexer_1, 2598, 40, 65, 65), "mapNullToDisabled(format.getQuoteChar())").
expr(lexer_1_expr17, method_invocation, lexer_1_expr15, (arguments, 0), range(lexer_1, 2616, 21, 65, 65), "format.getQuoteChar()").
expr(lexer_1_expr21, this_expression, f_comment_start_89, expression, range(lexer_1, 2648, 4, 66, 66), "this").
expr(lexer_1_expr19, field_access, lexer_1_expr18, left_hand_side, range(lexer_1, 2648, 17, 66, 66), "this.commentStart").
expr(lexer_1_expr18, assignment, lexer_1_stmt5, expression, range(lexer_1, 2648, 63, 66, 66), "this.commentStart=mapNullToDisabled(format.getCommentStart())").
expr(lexer_1_expr20, method_invocation, lexer_1_expr18, right_hand_side, range(lexer_1, 2668, 43, 66, 66), "mapNullToDisabled(format.getCommentStart())").
expr(lexer_1_expr22, method_invocation, lexer_1_expr20, (arguments, 0), range(lexer_1, 2686, 24, 66, 66), "format.getCommentStart()").
expr(lexer_1_expr26, this_expression, f_ignore_surrounding_spaces_90, expression, range(lexer_1, 2721, 4, 67, 67), "this").
expr(lexer_1_expr24, field_access, lexer_1_expr23, left_hand_side, range(lexer_1, 2721, 28, 67, 67), "this.ignoreSurroundingSpaces").
expr(lexer_1_expr23, assignment, lexer_1_stmt6, expression, range(lexer_1, 2721, 66, 67, 67), "this.ignoreSurroundingSpaces=format.getIgnoreSurroundingSpaces()").
expr(lexer_1_expr25, method_invocation, lexer_1_expr23, right_hand_side, range(lexer_1, 2752, 35, 67, 67), "format.getIgnoreSurroundingSpaces()").
expr(lexer_1_expr28, field_access, lexer_1_expr27, left_hand_side, range(lexer_1, 2797, 21, 68, 68), "this.ignoreEmptyLines").
expr(lexer_1_expr27, assignment, lexer_1_stmt7, expression, range(lexer_1, 2797, 52, 68, 68), "this.ignoreEmptyLines=format.getIgnoreEmptyLines()").
expr(lexer_1_expr30, this_expression, f_ignore_empty_lines_91, expression, range(lexer_1, 2797, 4, 68, 68), "this").
expr(lexer_1_expr29, method_invocation, lexer_1_expr27, right_hand_side, range(lexer_1, 2821, 28, 68, 68), "format.getIgnoreEmptyLines()").
expr(lexer_1_expr31, conditional_expression, lexer_1_stmt8, expression, range(lexer_1, 11684, 36, 291, 291), "c == null ? DISABLED : c.charValue()").
expr(lexer_1_expr32, infix_expression, lexer_1_expr31, expression, range(lexer_1, 11684, 9, 291, 291), "c == null").
expr(lexer_1_expr33, method_invocation, lexer_1_expr31, else_expression, range(lexer_1, 11707, 13, 291, 291), "c.charValue()").
%token_1 - org.apache.commons.csv.Token
expr(token_1_expr1, class_instance_creation, token_1_code16, initializer, range(token_1, 1725, 39, 55, 55), "new StringBuilder(INITIAL_TOKEN_LENGTH)").
%assertions_1 - org.apache.commons.csv.Assertions
expr(assertions_1_expr1, infix_expression, assertions_1_stmt1, expression, range(assertions_1, 1093, 17, 32, 32), "parameter == null").

%%% Names
%csvparser_1 - org.apache.commons.csv.CSVParser
name(t_assertions_4, simple_name, csvparser_1_expr1, expression, range(csvparser_1, 5726, 10, 169, 169), 'Assertions').
name(m_not_null_2, simple_name, csvparser_1_expr1, name, range(csvparser_1, 5737, 7, 169, 169), 'notNull').
name(p_string_58, simple_name, csvparser_1_expr1, (arguments, 0), range(csvparser_1, 5745, 6, 169, 169), 'string').
name(t_assertions_4, simple_name, csvparser_1_expr2, expression, range(csvparser_1, 5772, 10, 170, 170), 'Assertions').
name(m_not_null_2, simple_name, csvparser_1_expr2, name, range(csvparser_1, 5783, 7, 170, 170), 'notNull').
name(p_format_59, simple_name, csvparser_1_expr2, (arguments, 0), range(csvparser_1, 5791, 6, 170, 170), 'format').
name(p_string_58, simple_name, csvparser_1_expr4, (arguments, 0), range(csvparser_1, 5857, 6, 172, 172), 'string').
name(p_format_59, simple_name, csvparser_1_expr3, (arguments, 1), range(csvparser_1, 5866, 6, 172, 172), 'format').
name(f_record_63, simple_name, csvparser_1_code12, name, range(csvparser_1, 7378, 6, 214, 214), 'record').
name(f_reusable_token_64, simple_name, csvparser_1_code20, name, range(csvparser_1, 7469, 13, 218, 218), 'reusableToken').
name(m_csvparser_50, simple_name, csvparser_1_code22, name, range(csvparser_1, 8195, 9, 237, 237), 'CSVParser').
name(p_reader_65, simple_name, csvparser_1_code24, name, range(csvparser_1, 8218, 6, 237, 237), 'reader').
name(p_format_66, simple_name, csvparser_1_code27, name, range(csvparser_1, 8242, 6, 237, 237), 'format').
name(t_assertions_4, simple_name, csvparser_1_expr7, expression, range(csvparser_1, 8279, 10, 238, 238), 'Assertions').
name(m_not_null_2, simple_name, csvparser_1_expr7, name, range(csvparser_1, 8290, 7, 238, 238), 'notNull').
name(p_reader_65, simple_name, csvparser_1_expr7, (arguments, 0), range(csvparser_1, 8298, 6, 238, 238), 'reader').
name(t_assertions_4, simple_name, csvparser_1_expr8, expression, range(csvparser_1, 8325, 10, 239, 239), 'Assertions').
name(m_not_null_2, simple_name, csvparser_1_expr8, name, range(csvparser_1, 8336, 7, 239, 239), 'notNull').
name(p_format_66, simple_name, csvparser_1_expr8, (arguments, 0), range(csvparser_1, 8344, 6, 239, 239), 'format').
name(p_format_66, simple_name, csvparser_1_expr9, expression, range(csvparser_1, 8372, 6, 241, 241), 'format').
name(m_validate_30, simple_name, csvparser_1_expr9, name, range(csvparser_1, 8379, 8, 241, 241), 'validate').
name(f_format_67, simple_name, csvparser_1_expr11, name, range(csvparser_1, 8404, 6, 242, 242), 'format').
name(p_format_66, simple_name, csvparser_1_expr10, right_hand_side, range(csvparser_1, 8413, 6, 242, 242), 'format').
name(f_lexer_68, simple_name, csvparser_1_expr14, name, range(csvparser_1, 8434, 5, 243, 243), 'lexer').
name(p_format_66, simple_name, csvparser_1_expr15, (arguments, 0), range(csvparser_1, 8452, 6, 243, 243), 'format').
name(p_reader_65, simple_name, csvparser_1_expr17, (arguments, 0), range(csvparser_1, 8487, 6, 243, 243), 'reader').
name(f_header_map_69, simple_name, csvparser_1_expr19, name, range(csvparser_1, 8510, 9, 244, 244), 'headerMap').
name(m_initialize_header_57, simple_name, csvparser_1_expr20, name, range(csvparser_1, 8527, 16, 244, 244), 'initializeHeader').
name(f_header_map_69, simple_name, csvparser_1_expr24, name, range(csvparser_1, 9858, 9, 288, 288), 'headerMap').
name(v_hdr_map_70, simple_name, csvparser_1_code43, name, range(csvparser_1, 11071, 6, 325, 325), 'hdrMap').
name(v_format_header_71, simple_name, csvparser_1_code48, name, range(csvparser_1, 11109, 12, 326, 326), 'formatHeader').
name(f_format_67, simple_name, csvparser_1_expr27, name, range(csvparser_1, 11129, 6, 326, 326), 'format').
name(m_get_header_15, simple_name, csvparser_1_expr26, name, range(csvparser_1, 11136, 9, 326, 326), 'getHeader').
name(v_format_header_71, simple_name, csvparser_1_expr29, left_operand, range(csvparser_1, 11161, 12, 327, 327), 'formatHeader').
name(v_hdr_map_70, simple_name, csvparser_1_stmt14, expression, range(csvparser_1, 12003, 6, 351, 351), 'hdrMap').
%csvformat_1 - org.apache.commons.csv.CSVFormat
name(f_default_3, simple_name, csvformat_1_code8, name, range(csvformat_1, 5263, 7, 174, 174), 'DEFAULT').
name(f_comma_4, simple_name, csvformat_1_expr1, (arguments, 0), range(csvformat_1, 5287, 5, 174, 174), 'COMMA').
name(f_double_quote_char_5, simple_name, csvformat_1_expr1, (arguments, 1), range(csvformat_1, 5294, 17, 174, 174), 'DOUBLE_QUOTE_CHAR').
name(f_crlf_6, simple_name, csvformat_1_expr1, (arguments, 7), range(csvformat_1, 5404, 4, 175, 175), 'CRLF').
name(f_rfc4180_7, simple_name, csvformat_1_code15, name, range(csvformat_1, 5747, 7, 186, 186), 'RFC4180').
name(f_default_3, simple_name, csvformat_1_expr2, expression, range(csvformat_1, 5757, 7, 186, 186), 'DEFAULT').
name(m_with_ignore_empty_lines_4, simple_name, csvformat_1_expr2, name, range(csvformat_1, 5765, 20, 186, 186), 'withIgnoreEmptyLines').
name(f_excel_8, simple_name, csvformat_1_code21, name, range(csvformat_1, 6514, 5, 205, 205), 'EXCEL').
name(f_default_3, simple_name, csvformat_1_expr3, expression, range(csvformat_1, 6522, 7, 205, 205), 'DEFAULT').
name(m_with_ignore_empty_lines_4, simple_name, csvformat_1_expr3, name, range(csvformat_1, 6530, 20, 205, 205), 'withIgnoreEmptyLines').
name(f_tdf_9, simple_name, csvformat_1_code27, name, range(csvformat_1, 6676, 3, 208, 208), 'TDF').
name(f_mysql_10, simple_name, csvformat_1_code33, name, range(csvformat_1, 7253, 5, 221, 221), 'MYSQL').
name(p_c_11, simple_name, csvformat_1_expr7, left_operand, range(csvformat_1, 7752, 1, 238, 238), 'c').
name(f_lf_12, simple_name, csvformat_1_expr7, right_operand, range(csvformat_1, 7757, 2, 238, 238), 'LF').
name(p_c_11, simple_name, csvformat_1_expr8, left_operand, range(csvformat_1, 7763, 1, 238, 238), 'c').
name(f_cr_13, simple_name, csvformat_1_expr8, right_operand, range(csvformat_1, 7768, 2, 238, 238), 'CR').
name(p_c_14, simple_name, csvformat_1_expr10, left_operand, range(csvformat_1, 8103, 1, 250, 250), 'c').
name(m_is_line_break_5, simple_name, csvformat_1_expr11, name, range(csvformat_1, 8116, 11, 250, 250), 'isLineBreak').
name(p_c_14, simple_name, csvformat_1_expr12, expression, range(csvformat_1, 8128, 1, 250, 250), 'c').
name(m_char_value_7, simple_name, csvformat_1_expr12, name, range(csvformat_1, 8130, 9, 250, 250), 'charValue').
name(p_null_string_24, simple_name, csvformat_1_code37, name, range(csvformat_1, 10190, 10, 296, 296), 'nullString').
name(p_header_25, simple_name, csvformat_1_code40, name, range(csvformat_1, 10217, 6, 296, 296), 'header').
name(p_skip_header_record_26, simple_name, csvformat_1_code45, name, range(csvformat_1, 10233, 16, 296, 296), 'skipHeaderRecord').
name(m_is_line_break_5, simple_name, csvformat_1_expr13, name, range(csvformat_1, 10265, 11, 297, 297), 'isLineBreak').
name(p_delimiter_16, simple_name, csvformat_1_expr13, (arguments, 0), range(csvformat_1, 10277, 9, 297, 297), 'delimiter').
name(f_delimiter_27, simple_name, csvformat_1_expr15, name, range(csvformat_1, 10402, 9, 300, 300), 'delimiter').
name(p_delimiter_16, simple_name, csvformat_1_expr14, right_hand_side, range(csvformat_1, 10414, 9, 300, 300), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr18, name, range(csvformat_1, 10438, 9, 301, 301), 'quoteChar').
name(p_quote_char_17, simple_name, csvformat_1_expr17, right_hand_side, range(csvformat_1, 10450, 9, 301, 301), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr21, name, range(csvformat_1, 10474, 11, 302, 302), 'quotePolicy').
name(p_quote_policy_18, simple_name, csvformat_1_expr20, right_hand_side, range(csvformat_1, 10488, 11, 302, 302), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr24, name, range(csvformat_1, 10514, 12, 303, 303), 'commentStart').
name(p_comment_start_19, simple_name, csvformat_1_expr23, right_hand_side, range(csvformat_1, 10529, 12, 303, 303), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr27, name, range(csvformat_1, 10556, 6, 304, 304), 'escape').
name(p_escape_20, simple_name, csvformat_1_expr26, right_hand_side, range(csvformat_1, 10565, 6, 304, 304), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr30, name, range(csvformat_1, 10586, 23, 305, 305), 'ignoreSurroundingSpaces').
name(p_ignore_surrounding_spaces_21, simple_name, csvformat_1_expr29, right_hand_side, range(csvformat_1, 10612, 23, 305, 305), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr33, name, range(csvformat_1, 10650, 16, 306, 306), 'ignoreEmptyLines').
name(p_ignore_empty_lines_22, simple_name, csvformat_1_expr32, right_hand_side, range(csvformat_1, 10669, 16, 306, 306), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr36, name, range(csvformat_1, 10700, 15, 307, 307), 'recordSeparator').
name(p_record_separator_23, simple_name, csvformat_1_expr35, right_hand_side, range(csvformat_1, 10718, 15, 307, 307), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr39, name, range(csvformat_1, 10748, 10, 308, 308), 'nullString').
name(p_null_string_24, simple_name, csvformat_1_expr38, right_hand_side, range(csvformat_1, 10761, 10, 308, 308), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr42, name, range(csvformat_1, 10786, 6, 309, 309), 'header').
name(p_header_25, simple_name, csvformat_1_expr45, left_operand, range(csvformat_1, 10795, 6, 309, 309), 'header').
name(p_header_25, simple_name, csvformat_1_expr46, expression, range(csvformat_1, 10819, 6, 309, 309), 'header').
name(m_clone_9, simple_name, csvformat_1_expr46, name, range(csvformat_1, 10826, 5, 309, 309), 'clone').
name(f_skip_header_record_37, simple_name, csvformat_1_expr48, name, range(csvformat_1, 10848, 16, 310, 310), 'skipHeaderRecord').
name(p_skip_header_record_26, simple_name, csvformat_1_expr47, right_hand_side, range(csvformat_1, 10867, 16, 310, 310), 'skipHeaderRecord').
name(f_comment_start_30, simple_name, csvformat_1_stmt15, expression, range(csvformat_1, 13323, 12, 396, 396), 'commentStart').
name(f_delimiter_27, simple_name, csvformat_1_stmt16, expression, range(csvformat_1, 13535, 9, 405, 405), 'delimiter').
name(f_escape_31, simple_name, csvformat_1_stmt17, expression, range(csvformat_1, 13720, 6, 414, 414), 'escape').
name(f_header_36, simple_name, csvformat_1_expr51, left_operand, range(csvformat_1, 13892, 6, 423, 423), 'header').
name(f_header_36, simple_name, csvformat_1_expr52, expression, range(csvformat_1, 13909, 6, 423, 423), 'header').
name(m_clone_9, simple_name, csvformat_1_expr52, name, range(csvformat_1, 13916, 5, 423, 423), 'clone').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_stmt19, expression, range(csvformat_1, 14247, 16, 433, 433), 'ignoreEmptyLines').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_stmt20, expression, range(csvformat_1, 14576, 23, 443, 443), 'ignoreSurroundingSpaces').
name(f_quote_char_28, simple_name, csvformat_1_stmt21, expression, range(csvformat_1, 15393, 9, 469, 469), 'quoteChar').
name(f_quote_char_28, simple_name, csvformat_1_expr54, left_operand, range(csvformat_1, 19756, 9, 616, 616), 'quoteChar').
name(f_delimiter_27, simple_name, csvformat_1_expr55, left_operand, range(csvformat_1, 19777, 9, 616, 616), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr56, expression, range(csvformat_1, 19790, 9, 616, 616), 'quoteChar').
name(m_char_value_7, simple_name, csvformat_1_expr56, name, range(csvformat_1, 19800, 9, 616, 616), 'charValue').
name(f_escape_31, simple_name, csvformat_1_expr58, left_operand, range(csvformat_1, 19990, 6, 621, 621), 'escape').
name(f_delimiter_27, simple_name, csvformat_1_expr59, left_operand, range(csvformat_1, 20008, 9, 621, 621), 'delimiter').
name(f_escape_31, simple_name, csvformat_1_expr60, expression, range(csvformat_1, 20021, 6, 621, 621), 'escape').
name(m_char_value_7, simple_name, csvformat_1_expr60, name, range(csvformat_1, 20028, 9, 621, 621), 'charValue').
name(f_comment_start_30, simple_name, csvformat_1_expr62, left_operand, range(csvformat_1, 20212, 12, 626, 626), 'commentStart').
name(f_delimiter_27, simple_name, csvformat_1_expr63, left_operand, range(csvformat_1, 20236, 9, 626, 626), 'delimiter').
name(f_comment_start_30, simple_name, csvformat_1_expr64, expression, range(csvformat_1, 20249, 12, 626, 626), 'commentStart').
name(m_char_value_7, simple_name, csvformat_1_expr64, name, range(csvformat_1, 20262, 9, 626, 626), 'charValue').
name(f_quote_char_28, simple_name, csvformat_1_expr66, left_operand, range(csvformat_1, 20459, 9, 631, 631), 'quoteChar').
name(f_quote_char_28, simple_name, csvformat_1_expr67, expression, range(csvformat_1, 20480, 9, 631, 631), 'quoteChar').
name(m_equals_31, simple_name, csvformat_1_expr67, name, range(csvformat_1, 20490, 6, 631, 631), 'equals').
name(f_comment_start_30, simple_name, csvformat_1_expr67, (arguments, 0), range(csvformat_1, 20497, 12, 631, 631), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr69, left_operand, range(csvformat_1, 20696, 6, 636, 636), 'escape').
name(f_escape_31, simple_name, csvformat_1_expr70, expression, range(csvformat_1, 20714, 6, 636, 636), 'escape').
name(m_equals_31, simple_name, csvformat_1_expr70, name, range(csvformat_1, 20721, 6, 636, 636), 'equals').
name(f_comment_start_30, simple_name, csvformat_1_expr70, (arguments, 0), range(csvformat_1, 20728, 12, 636, 636), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr72, left_operand, range(csvformat_1, 20924, 6, 641, 641), 'escape').
name(f_quote_policy_29, simple_name, csvformat_1_expr73, left_operand, range(csvformat_1, 20942, 11, 641, 641), 'quotePolicy').
name(t_quote_1, simple_name, q_none_1, qualifier, range(csvformat_1, 20957, 5, 641, 641), 'Quote').
name(q_none_1, qualified_name, csvformat_1_expr73, right_operand, range(csvformat_1, 20957, 10, 641, 641), 'Quote.NONE').
name(f_header_36, simple_name, csvformat_1_expr74, left_operand, range(csvformat_1, 21092, 6, 645, 645), 'header').
name(m_is_line_break_5, simple_name, csvformat_1_expr75, name, range(csvformat_1, 23441, 11, 698, 698), 'isLineBreak').
name(p_delimiter_43, simple_name, csvformat_1_expr75, (arguments, 0), range(csvformat_1, 23453, 9, 698, 698), 'delimiter').
name(p_delimiter_43, simple_name, csvformat_1_expr76, (arguments, 0), range(csvformat_1, 23594, 9, 701, 701), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr76, (arguments, 1), range(csvformat_1, 23605, 9, 701, 701), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr76, (arguments, 2), range(csvformat_1, 23616, 11, 701, 701), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr76, (arguments, 3), range(csvformat_1, 23629, 12, 701, 701), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr76, (arguments, 4), range(csvformat_1, 23643, 6, 701, 701), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr76, (arguments, 5), range(csvformat_1, 23667, 23, 702, 702), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr76, (arguments, 6), range(csvformat_1, 23692, 16, 702, 702), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr76, (arguments, 7), range(csvformat_1, 23710, 15, 702, 702), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr76, (arguments, 8), range(csvformat_1, 23727, 10, 702, 702), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr76, (arguments, 9), range(csvformat_1, 23739, 6, 702, 702), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr76, (arguments, 10), range(csvformat_1, 23747, 16, 702, 702), 'skipHeaderRecord').
name(m_with_escape_36, simple_name, csvformat_1_expr77, name, range(csvformat_1, 24217, 10, 715, 715), 'withEscape').
name(t_character_2, simple_name, csvformat_1_expr78, expression, range(csvformat_1, 24228, 9, 715, 715), 'Character').
name(m_value_of_37, simple_name, csvformat_1_expr78, name, range(csvformat_1, 24238, 7, 715, 715), 'valueOf').
name(p_escape_44, simple_name, csvformat_1_expr78, (arguments, 0), range(csvformat_1, 24246, 6, 715, 715), 'escape').
name(m_is_line_break_6, simple_name, csvformat_1_expr79, name, range(csvformat_1, 24739, 11, 728, 728), 'isLineBreak').
name(p_escape_45, simple_name, csvformat_1_expr79, (arguments, 0), range(csvformat_1, 24751, 6, 728, 728), 'escape').
name(f_delimiter_27, simple_name, csvformat_1_expr80, (arguments, 0), range(csvformat_1, 24896, 9, 731, 731), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr80, (arguments, 1), range(csvformat_1, 24907, 9, 731, 731), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr80, (arguments, 2), range(csvformat_1, 24918, 11, 731, 731), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr80, (arguments, 3), range(csvformat_1, 24931, 12, 731, 731), 'commentStart').
name(p_escape_45, simple_name, csvformat_1_expr80, (arguments, 4), range(csvformat_1, 24945, 6, 731, 731), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr80, (arguments, 5), range(csvformat_1, 24969, 23, 732, 732), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr80, (arguments, 6), range(csvformat_1, 24994, 16, 732, 732), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr80, (arguments, 7), range(csvformat_1, 25012, 15, 732, 732), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr80, (arguments, 8), range(csvformat_1, 25029, 10, 732, 732), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr80, (arguments, 9), range(csvformat_1, 25041, 6, 732, 732), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr80, (arguments, 10), range(csvformat_1, 25049, 16, 732, 732), 'skipHeaderRecord').
name(f_delimiter_27, simple_name, csvformat_1_expr81, (arguments, 0), range(csvformat_1, 26500, 9, 766, 766), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr81, (arguments, 1), range(csvformat_1, 26511, 9, 766, 766), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr81, (arguments, 2), range(csvformat_1, 26522, 11, 766, 766), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr81, (arguments, 3), range(csvformat_1, 26535, 12, 766, 766), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr81, (arguments, 4), range(csvformat_1, 26549, 6, 766, 766), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr81, (arguments, 5), range(csvformat_1, 26573, 23, 767, 767), 'ignoreSurroundingSpaces').
name(p_ignore_empty_lines_47, simple_name, csvformat_1_expr81, (arguments, 6), range(csvformat_1, 26598, 16, 767, 767), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr81, (arguments, 7), range(csvformat_1, 26616, 15, 767, 767), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr81, (arguments, 8), range(csvformat_1, 26633, 10, 767, 767), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr81, (arguments, 9), range(csvformat_1, 26645, 6, 767, 767), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr81, (arguments, 10), range(csvformat_1, 26653, 16, 767, 767), 'skipHeaderRecord').
name(f_delimiter_27, simple_name, csvformat_1_expr82, (arguments, 0), range(csvformat_1, 27152, 9, 779, 779), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr82, (arguments, 1), range(csvformat_1, 27163, 9, 779, 779), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr82, (arguments, 2), range(csvformat_1, 27174, 11, 779, 779), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr82, (arguments, 3), range(csvformat_1, 27187, 12, 779, 779), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr82, (arguments, 4), range(csvformat_1, 27201, 6, 779, 779), 'escape').
name(p_ignore_surrounding_spaces_48, simple_name, csvformat_1_expr82, (arguments, 5), range(csvformat_1, 27225, 23, 780, 780), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr82, (arguments, 6), range(csvformat_1, 27250, 16, 780, 780), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr82, (arguments, 7), range(csvformat_1, 27268, 15, 780, 780), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr82, (arguments, 8), range(csvformat_1, 27285, 10, 780, 780), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr82, (arguments, 9), range(csvformat_1, 27297, 6, 780, 780), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr82, (arguments, 10), range(csvformat_1, 27305, 16, 780, 780), 'skipHeaderRecord').
name(m_is_line_break_6, simple_name, csvformat_1_expr83, name, range(csvformat_1, 29200, 11, 826, 826), 'isLineBreak').
name(p_quote_char_51, simple_name, csvformat_1_expr83, (arguments, 0), range(csvformat_1, 29212, 9, 826, 826), 'quoteChar').
name(f_delimiter_27, simple_name, csvformat_1_expr84, (arguments, 0), range(csvformat_1, 29353, 9, 829, 829), 'delimiter').
name(p_quote_char_51, simple_name, csvformat_1_expr84, (arguments, 1), range(csvformat_1, 29364, 9, 829, 829), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr84, (arguments, 2), range(csvformat_1, 29375, 11, 829, 829), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr84, (arguments, 3), range(csvformat_1, 29388, 12, 829, 829), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr84, (arguments, 4), range(csvformat_1, 29402, 6, 829, 829), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr84, (arguments, 5), range(csvformat_1, 29426, 23, 830, 830), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr84, (arguments, 6), range(csvformat_1, 29451, 16, 830, 830), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr84, (arguments, 7), range(csvformat_1, 29469, 15, 830, 830), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr84, (arguments, 8), range(csvformat_1, 29486, 10, 830, 830), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr84, (arguments, 9), range(csvformat_1, 29498, 6, 830, 830), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr84, (arguments, 10), range(csvformat_1, 29506, 16, 830, 830), 'skipHeaderRecord').
name(m_with_record_separator_45, simple_name, csvformat_1_expr85, name, range(csvformat_1, 30460, 19, 855, 855), 'withRecordSeparator').
name(t_string_3, simple_name, csvformat_1_expr86, expression, range(csvformat_1, 30480, 6, 855, 855), 'String').
name(m_value_of_46, simple_name, csvformat_1_expr86, name, range(csvformat_1, 30487, 7, 855, 855), 'valueOf').
name(p_record_separator_53, simple_name, csvformat_1_expr86, (arguments, 0), range(csvformat_1, 30495, 15, 855, 855), 'recordSeparator').
name(f_delimiter_27, simple_name, csvformat_1_expr87, (arguments, 0), range(csvformat_1, 30917, 9, 867, 867), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr87, (arguments, 1), range(csvformat_1, 30928, 9, 867, 867), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr87, (arguments, 2), range(csvformat_1, 30939, 11, 867, 867), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr87, (arguments, 3), range(csvformat_1, 30952, 12, 867, 867), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr87, (arguments, 4), range(csvformat_1, 30966, 6, 867, 867), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr87, (arguments, 5), range(csvformat_1, 30990, 23, 868, 868), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr87, (arguments, 6), range(csvformat_1, 31015, 16, 868, 868), 'ignoreEmptyLines').
name(p_record_separator_54, simple_name, csvformat_1_expr87, (arguments, 7), range(csvformat_1, 31033, 15, 868, 868), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr87, (arguments, 8), range(csvformat_1, 31050, 10, 868, 868), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr87, (arguments, 9), range(csvformat_1, 31062, 6, 868, 868), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr87, (arguments, 10), range(csvformat_1, 31070, 16, 868, 868), 'skipHeaderRecord').
%constants_1 - org.apache.commons.csv.Constants
name(f_double_quote_char_5, simple_name, constants_1_code7, name, range(constants_1, 1178, 17, 36, 36), 'DOUBLE_QUOTE_CHAR').
name(t_character_2, simple_name, constants_1_expr1, expression, range(constants_1, 1198, 9, 36, 36), 'Character').
name(m_value_of_37, simple_name, constants_1_expr1, name, range(constants_1, 1208, 7, 36, 36), 'valueOf').
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
name(t_csvparser_test_5, simple_name, csvparser_test_1_code2, name, range(csvparser_test_1, 2067, 13, 59, 59), 'CSVParserTest').
name(f_result_72, simple_name, csvparser_test_1_code12, name, range(csvparser_test_1, 2424, 6, 67, 67), 'RESULT').
name(v_parser_73, simple_name, csvparser_test_1_code16, name, range(csvparser_test_1, 25495, 6, 669, 669), 'parser').
name(t_csvparser_6, simple_name, csvparser_test_1_expr2, expression, range(csvparser_test_1, 25504, 9, 669, 669), 'CSVParser').
name(m_parse_49, simple_name, csvparser_test_1_expr2, name, range(csvparser_test_1, 25514, 5, 669, 669), 'parse').
name(q_default_2, qualified_name, csvparser_test_1_expr2, (arguments, 1), range(csvparser_test_1, 25543, 17, 669, 669), 'CSVFormat.DEFAULT').
name(t_csvformat_7, simple_name, q_default_2, qualifier, range(csvparser_test_1, 25543, 9, 669, 669), 'CSVFormat').
name(t_assert_8, simple_name, csvparser_test_1_expr3, expression, range(csvparser_test_1, 25571, 6, 670, 670), 'Assert').
name(m_assert_null_104, simple_name, csvparser_test_1_expr3, name, range(csvparser_test_1, 25578, 10, 670, 670), 'assertNull').
name(v_parser_73, simple_name, csvparser_test_1_expr4, expression, range(csvparser_test_1, 25589, 6, 670, 670), 'parser').
name(m_get_header_map_61, simple_name, csvparser_test_1_expr4, name, range(csvparser_test_1, 25596, 12, 670, 670), 'getHeaderMap').
%quote_1 - org.apache.commons.csv.Quote
name(t_quote_1, simple_name, quote_1_code2, name, range(quote_1, 917, 5, 24, 24), 'Quote').
name(f_all_108, simple_name, quote_1_code4, name, range(quote_1, 972, 3, 29, 29), 'ALL').
name(f_minimal_109, simple_name, quote_1_code5, name, range(quote_1, 1140, 7, 35, 35), 'MINIMAL').
name(f_non_numeric_110, simple_name, quote_1_code6, name, range(quote_1, 1208, 11, 40, 40), 'NON_NUMERIC').
name(f_none_111, simple_name, quote_1_code7, name, range(quote_1, 1493, 4, 47, 47), 'NONE').
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
name(f_last_char_76, simple_name, extended_buffered_reader_1_code6, name, range(extended_buffered_reader_1, 1488, 8, 40, 40), 'lastChar').
name(f_undefined_77, simple_name, extended_buffered_reader_1_code6, initializer, range(extended_buffered_reader_1, 1499, 9, 40, 40), 'UNDEFINED').
name(f_eol_counter_78, simple_name, extended_buffered_reader_1_code10, name, range(extended_buffered_reader_1, 1582, 10, 43, 43), 'eolCounter').
name(p_reader_79, simple_name, extended_buffered_reader_1_stmt1, (arguments, 0), range(extended_buffered_reader_1, 1774, 6, 51, 51), 'reader').
%lexer_1 - org.apache.commons.csv.Lexer
name(m_lexer_55, simple_name, lexer_1_code3, name, range(lexer_1, 2377, 5, 61, 61), 'Lexer').
name(p_format_83, simple_name, lexer_1_code4, name, range(lexer_1, 2399, 6, 61, 61), 'format').
name(p_in_84, simple_name, lexer_1_code7, name, range(lexer_1, 2436, 2, 61, 61), 'in').
name(f_in_85, simple_name, lexer_1_expr2, name, range(lexer_1, 2455, 2, 62, 62), 'in').
name(p_in_84, simple_name, lexer_1_expr1, right_hand_side, range(lexer_1, 2460, 2, 62, 62), 'in').
name(f_delimiter_86, simple_name, lexer_1_expr5, name, range(lexer_1, 2477, 9, 63, 63), 'delimiter').
name(p_format_83, simple_name, lexer_1_expr6, expression, range(lexer_1, 2489, 6, 63, 63), 'format').
name(m_get_delimiter_13, simple_name, lexer_1_expr6, name, range(lexer_1, 2496, 12, 63, 63), 'getDelimiter').
name(f_escape_87, simple_name, lexer_1_expr9, name, range(lexer_1, 2525, 6, 64, 64), 'escape').
name(m_map_null_to_disabled_133, simple_name, lexer_1_expr10, name, range(lexer_1, 2534, 17, 64, 64), 'mapNullToDisabled').
name(p_format_83, simple_name, lexer_1_expr12, expression, range(lexer_1, 2552, 6, 64, 64), 'format').
name(m_get_escape_14, simple_name, lexer_1_expr12, name, range(lexer_1, 2559, 9, 64, 64), 'getEscape').
name(f_quote_char_88, simple_name, lexer_1_expr14, name, range(lexer_1, 2586, 9, 65, 65), 'quoteChar').
name(m_map_null_to_disabled_133, simple_name, lexer_1_expr15, name, range(lexer_1, 2598, 17, 65, 65), 'mapNullToDisabled').
name(p_format_83, simple_name, lexer_1_expr17, expression, range(lexer_1, 2616, 6, 65, 65), 'format').
name(m_get_quote_char_19, simple_name, lexer_1_expr17, name, range(lexer_1, 2623, 12, 65, 65), 'getQuoteChar').
name(f_comment_start_89, simple_name, lexer_1_expr19, name, range(lexer_1, 2653, 12, 66, 66), 'commentStart').
name(m_map_null_to_disabled_133, simple_name, lexer_1_expr20, name, range(lexer_1, 2668, 17, 66, 66), 'mapNullToDisabled').
name(p_format_83, simple_name, lexer_1_expr22, expression, range(lexer_1, 2686, 6, 66, 66), 'format').
name(m_get_comment_start_12, simple_name, lexer_1_expr22, name, range(lexer_1, 2693, 15, 66, 66), 'getCommentStart').
name(f_ignore_surrounding_spaces_90, simple_name, lexer_1_expr24, name, range(lexer_1, 2726, 23, 67, 67), 'ignoreSurroundingSpaces').
name(p_format_83, simple_name, lexer_1_expr25, expression, range(lexer_1, 2752, 6, 67, 67), 'format').
name(m_get_ignore_surrounding_spaces_17, simple_name, lexer_1_expr25, name, range(lexer_1, 2759, 26, 67, 67), 'getIgnoreSurroundingSpaces').
name(f_ignore_empty_lines_91, simple_name, lexer_1_expr28, name, range(lexer_1, 2802, 16, 68, 68), 'ignoreEmptyLines').
name(p_format_83, simple_name, lexer_1_expr29, expression, range(lexer_1, 2821, 6, 68, 68), 'format').
name(m_get_ignore_empty_lines_16, simple_name, lexer_1_expr29, name, range(lexer_1, 2828, 19, 68, 68), 'getIgnoreEmptyLines').
name(p_c_96, simple_name, lexer_1_expr32, left_operand, range(lexer_1, 11684, 1, 291, 291), 'c').
name(f_disabled_97, simple_name, lexer_1_expr31, then_expression, range(lexer_1, 11696, 8, 291, 291), 'DISABLED').
name(p_c_96, simple_name, lexer_1_expr33, expression, range(lexer_1, 11707, 1, 291, 291), 'c').
name(m_char_value_7, simple_name, lexer_1_expr33, name, range(lexer_1, 11709, 9, 291, 291), 'charValue').
%token_1 - org.apache.commons.csv.Token
name(t_token_9, simple_name, token_1_code2, name, range(token_1, 1037, 5, 29, 29), 'Token').
name(t_type_10, simple_name, token_1_code4, name, range(token_1, 1168, 4, 34, 34), 'Type').
name(f_invalid_112, simple_name, token_1_code5, name, range(token_1, 1260, 7, 36, 36), 'INVALID').
name(f_token_113, simple_name, token_1_code6, name, range(token_1, 1354, 5, 39, 39), 'TOKEN').
name(f_eof_114, simple_name, token_1_code7, name, range(token_1, 1449, 3, 42, 42), 'EOF').
name(f_eorecord_115, simple_name, token_1_code8, name, range(token_1, 1532, 8, 45, 45), 'EORECORD').
name(f_comment_116, simple_name, token_1_code9, name, range(token_1, 1591, 7, 48, 48), 'COMMENT').
name(f_type_117, simple_name, token_1_code12, name, range(token_1, 1643, 4, 52, 52), 'type').
name(f_invalid_112, simple_name, token_1_code12, initializer, range(token_1, 1650, 7, 52, 52), 'INVALID').
name(f_content_118, simple_name, token_1_code16, name, range(token_1, 1715, 7, 55, 55), 'content').
name(f_initial_token_length_119, simple_name, token_1_expr1, (arguments, 0), range(token_1, 1743, 20, 55, 55), 'INITIAL_TOKEN_LENGTH').
%assertions_1 - org.apache.commons.csv.Assertions
name(p_parameter_1, simple_name, assertions_1_expr1, left_operand, range(assertions_1, 1093, 9, 32, 32), 'parameter').

%%% Literals
%csvparser_1 - org.apache.commons.csv.CSVParser
literal(csvparser_1_literal1, string_literal, csvparser_1_expr1, (arguments, 1), range(csvparser_1, 5753, 8, 169, 169), "string").
literal(csvparser_1_literal2, string_literal, csvparser_1_expr2, (arguments, 1), range(csvparser_1, 5799, 8, 170, 170), "format").
literal(csvparser_1_literal3, string_literal, csvparser_1_expr7, (arguments, 1), range(csvparser_1, 8306, 8, 238, 238), "reader").
literal(csvparser_1_literal4, string_literal, csvparser_1_expr8, (arguments, 1), range(csvparser_1, 8352, 8, 239, 239), "format").
literal(csvparser_1_literal5, null_literal, csvparser_1_code43, initializer, range(csvparser_1, 11080, 4, 325, 325), null).
literal(csvparser_1_literal6, null_literal, csvparser_1_expr29, right_operand, range(csvparser_1, 11177, 4, 327, 327), null).
%csvformat_1 - org.apache.commons.csv.CSVFormat
literal(csvformat_1_literal1, null_literal, csvformat_1_expr1, (arguments, 2), range(csvformat_1, 5313, 4, 174, 174), null).
literal(csvformat_1_literal2, null_literal, csvformat_1_expr1, (arguments, 3), range(csvformat_1, 5319, 4, 174, 174), null).
literal(csvformat_1_literal3, null_literal, csvformat_1_expr1, (arguments, 4), range(csvformat_1, 5325, 4, 174, 174), null).
literal(csvformat_1_literal4, boolean_literal, csvformat_1_expr1, (arguments, 5), range(csvformat_1, 5391, 5, 175, 175), false).
literal(csvformat_1_literal5, boolean_literal, csvformat_1_expr1, (arguments, 6), range(csvformat_1, 5398, 4, 175, 175), true).
literal(csvformat_1_literal6, null_literal, csvformat_1_expr1, (arguments, 8), range(csvformat_1, 5410, 4, 175, 175), null).
literal(csvformat_1_literal7, null_literal, csvformat_1_expr1, (arguments, 9), range(csvformat_1, 5416, 4, 175, 175), null).
literal(csvformat_1_literal8, boolean_literal, csvformat_1_expr1, (arguments, 10), range(csvformat_1, 5422, 5, 175, 175), false).
literal(csvformat_1_literal9, boolean_literal, csvformat_1_expr2, (arguments, 0), range(csvformat_1, 5786, 5, 186, 186), false).
literal(csvformat_1_literal10, boolean_literal, csvformat_1_expr3, (arguments, 0), range(csvformat_1, 6551, 5, 205, 205), false).
literal(csvformat_1_literal11, null_literal, csvformat_1_expr10, right_operand, range(csvformat_1, 8108, 4, 250, 250), null).
literal(csvformat_1_literal13, null_literal, csvformat_1_expr45, right_operand, range(csvformat_1, 10805, 4, 309, 309), null).
literal(csvformat_1_literal12, null_literal, csvformat_1_expr43, then_expression, range(csvformat_1, 10812, 4, 309, 309), null).
literal(csvformat_1_literal15, null_literal, csvformat_1_expr51, right_operand, range(csvformat_1, 13902, 4, 423, 423), null).
literal(csvformat_1_literal14, null_literal, csvformat_1_expr50, else_expression, range(csvformat_1, 13926, 4, 423, 423), null).
literal(csvformat_1_literal16, null_literal, csvformat_1_expr54, right_operand, range(csvformat_1, 19769, 4, 616, 616), null).
literal(csvformat_1_literal17, null_literal, csvformat_1_expr58, right_operand, range(csvformat_1, 20000, 4, 621, 621), null).
literal(csvformat_1_literal18, null_literal, csvformat_1_expr62, right_operand, range(csvformat_1, 20228, 4, 626, 626), null).
literal(csvformat_1_literal19, null_literal, csvformat_1_expr66, right_operand, range(csvformat_1, 20472, 4, 631, 631), null).
literal(csvformat_1_literal20, null_literal, csvformat_1_expr69, right_operand, range(csvformat_1, 20706, 4, 636, 636), null).
literal(csvformat_1_literal21, null_literal, csvformat_1_expr72, right_operand, range(csvformat_1, 20934, 4, 641, 641), null).
literal(csvformat_1_literal22, null_literal, csvformat_1_expr74, right_operand, range(csvformat_1, 21102, 4, 645, 645), null).
%constants_1 - org.apache.commons.csv.Constants
literal(constants_1_literal1, character_literal, constants_1_expr1, (arguments, 0), range(constants_1, 1216, 3, 36, 36), '"').
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
literal(csvparser_test_1_literal1, string_literal, csvparser_test_1_expr2, (arguments, 0), range(csvparser_test_1, 25520, 21, 669, 669), "a,b,c\n1,2,3\nx,y,z").
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
literal(extended_buffered_reader_1_literal1, number_literal, extended_buffered_reader_1_code10, initializer, range(extended_buffered_reader_1, 1595, 1, 43, 43), 0).
%lexer_1 - org.apache.commons.csv.Lexer
literal(lexer_1_literal1, null_literal, lexer_1_expr32, right_operand, range(lexer_1, 11689, 4, 291, 291), null).
%token_1 - org.apache.commons.csv.Token
%assertions_1 - org.apache.commons.csv.Assertions
literal(assertions_1_literal1, null_literal, assertions_1_expr1, right_operand, range(assertions_1, 1106, 4, 32, 32), null).

%%% Other Code Entities
%csvparser_1 - org.apache.commons.csv.CSVParser
code(csvparser_1_code1, compilation_unit, range(csvparser_1, 0, 15734, 1, -1)).
code(csvparser_1_code2, type_declaration, csvparser_1_code1, (types, 0), range(csvparser_1, 1309, 14424, 38, 463)).
code(csvparser_1_code3, method_declaration, csvparser_1_code2, (body_declarations, 1), range(csvparser_1, 5142, 738, 155, 173)).
code(csvparser_1_code4, simple_type, csvparser_1_expr3, type, range(csvparser_1, 5830, 9, 172, 172)).
code(csvparser_1_code5, simple_type, csvparser_1_expr4, type, range(csvparser_1, 5844, 12, 172, 172)).
code(csvparser_1_code6, field_declaration, csvparser_1_code2, (body_declarations, 6), range(csvparser_1, 7273, 138, 213, 214)).
code(csvparser_1_code7, modifier, csvparser_1_code6, (modifiers, 0), range(csvparser_1, 7351, 7, 214, 214)).
code(csvparser_1_code8, modifier, csvparser_1_code6, (modifiers, 1), range(csvparser_1, 7359, 5, 214, 214)).
code(csvparser_1_code10, simple_type, csvparser_1_code9, type, range(csvparser_1, 7365, 4, 214, 214)).
code(csvparser_1_code9, parameterized_type, csvparser_1_code6, type, range(csvparser_1, 7365, 12, 214, 214)).
code(csvparser_1_code11, simple_type, csvparser_1_code9, (type_arguments, 0), range(csvparser_1, 7370, 6, 214, 214)).
code(csvparser_1_code12, variable_declaration_fragment, csvparser_1_code6, (fragments, 0), range(csvparser_1, 7378, 32, 214, 214)).
code(csvparser_1_code13, parameterized_type, csvparser_1_expr5, type, range(csvparser_1, 7391, 17, 214, 214)).
code(csvparser_1_code14, simple_type, csvparser_1_code13, type, range(csvparser_1, 7391, 9, 214, 214)).
code(csvparser_1_code15, simple_type, csvparser_1_code13, (type_arguments, 0), range(csvparser_1, 7401, 6, 214, 214)).
code(csvparser_1_code16, field_declaration, csvparser_1_code2, (body_declarations, 8), range(csvparser_1, 7449, 48, 218, 218)).
code(csvparser_1_code17, modifier, csvparser_1_code16, (modifiers, 0), range(csvparser_1, 7449, 7, 218, 218)).
code(csvparser_1_code18, modifier, csvparser_1_code16, (modifiers, 1), range(csvparser_1, 7457, 5, 218, 218)).
code(csvparser_1_code19, simple_type, csvparser_1_code16, type, range(csvparser_1, 7463, 5, 218, 218)).
code(csvparser_1_code20, variable_declaration_fragment, csvparser_1_code16, (fragments, 0), range(csvparser_1, 7469, 27, 218, 218)).
code(csvparser_1_code21, simple_type, csvparser_1_expr6, type, range(csvparser_1, 7489, 5, 218, 218)).
code(csvparser_1_code22, method_declaration, csvparser_1_code2, (body_declarations, 9), range(csvparser_1, 7503, 1049, 220, 245)).
code(csvparser_1_code23, modifier, csvparser_1_code22, (modifiers, 0), range(csvparser_1, 8188, 6, 237, 237)).
code(csvparser_1_code24, single_variable_declaration, csvparser_1_code22, (parameters, 0), range(csvparser_1, 8205, 19, 237, 237)).
code(csvparser_1_code25, modifier, csvparser_1_code24, (modifiers, 0), range(csvparser_1, 8205, 5, 237, 237)).
code(csvparser_1_code26, simple_type, csvparser_1_code24, type, range(csvparser_1, 8211, 6, 237, 237)).
code(csvparser_1_code27, single_variable_declaration, csvparser_1_code22, (parameters, 1), range(csvparser_1, 8226, 22, 237, 237)).
code(csvparser_1_code28, modifier, csvparser_1_code27, (modifiers, 0), range(csvparser_1, 8226, 5, 237, 237)).
code(csvparser_1_code29, simple_type, csvparser_1_code27, type, range(csvparser_1, 8232, 9, 237, 237)).
code(csvparser_1_code30, simple_type, csvparser_1_code22, (thrown_exception_types, 0), range(csvparser_1, 8257, 11, 237, 237)).
code(csvparser_1_code31, simple_type, csvparser_1_expr15, type, range(csvparser_1, 8446, 5, 243, 243)).
code(csvparser_1_code32, simple_type, csvparser_1_expr17, type, range(csvparser_1, 8464, 22, 243, 243)).
code(csvparser_1_code33, method_declaration, csvparser_1_code2, (body_declarations, 13), range(csvparser_1, 9503, 372, 280, 289)).
code(csvparser_1_code35, simple_type, csvparser_1_code34, type, range(csvparser_1, 9822, 13, 288, 288)).
code(csvparser_1_code34, parameterized_type, csvparser_1_expr23, type, range(csvparser_1, 9822, 30, 288, 288)).
code(csvparser_1_code36, simple_type, csvparser_1_code34, (type_arguments, 0), range(csvparser_1, 9836, 6, 288, 288)).
code(csvparser_1_code37, simple_type, csvparser_1_code34, (type_arguments, 1), range(csvparser_1, 9844, 7, 288, 288)).
code(csvparser_1_code38, method_declaration, csvparser_1_code2, (body_declarations, 16), range(csvparser_1, 10880, 1136, 321, 352)).
code(csvparser_1_code39, parameterized_type, csvparser_1_stmt11, type, range(csvparser_1, 11050, 20, 325, 325)).
code(csvparser_1_code40, simple_type, csvparser_1_code39, type, range(csvparser_1, 11050, 3, 325, 325)).
code(csvparser_1_code41, simple_type, csvparser_1_code39, (type_arguments, 0), range(csvparser_1, 11054, 6, 325, 325)).
code(csvparser_1_code42, simple_type, csvparser_1_code39, (type_arguments, 1), range(csvparser_1, 11062, 7, 325, 325)).
code(csvparser_1_code43, variable_declaration_fragment, csvparser_1_stmt11, (fragments, 0), range(csvparser_1, 11071, 13, 325, 325)).
code(csvparser_1_code44, modifier, csvparser_1_stmt12, (modifiers, 0), range(csvparser_1, 11094, 5, 326, 326)).
code(csvparser_1_code45, array_type, csvparser_1_stmt12, type, range(csvparser_1, 11100, 8, 326, 326)).
code(csvparser_1_code46, simple_type, csvparser_1_code45, element_type, range(csvparser_1, 11100, 6, 326, 326)).
code(csvparser_1_code47, dimension, csvparser_1_code45, (dimensions, 0), range(csvparser_1, 11106, 2, 326, 326)).
code(csvparser_1_code48, variable_declaration_fragment, csvparser_1_stmt12, (fragments, 0), range(csvparser_1, 11109, 38, 326, 326)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
code(csvformat_1_code1, compilation_unit, range(csvformat_1, 0, 31683, 1, -1)).
code(csvformat_1_code2, type_declaration, csvformat_1_code1, (types, 0), range(csvformat_1, 1406, 30276, 36, 884)).
code(csvformat_1_code3, field_declaration, csvformat_1_code2, (body_declarations, 12), range(csvformat_1, 4868, 561, 161, 175)).
code(csvformat_1_code4, modifier, csvformat_1_code3, (modifiers, 0), range(csvformat_1, 5233, 6, 174, 174)).
code(csvformat_1_code5, modifier, csvformat_1_code3, (modifiers, 1), range(csvformat_1, 5240, 6, 174, 174)).
code(csvformat_1_code6, modifier, csvformat_1_code3, (modifiers, 2), range(csvformat_1, 5247, 5, 174, 174)).
code(csvformat_1_code7, simple_type, csvformat_1_code3, type, range(csvformat_1, 5253, 9, 174, 174)).
code(csvformat_1_code8, variable_declaration_fragment, csvformat_1_code3, (fragments, 0), range(csvformat_1, 5263, 165, 174, 175)).
code(csvformat_1_code9, simple_type, csvformat_1_expr1, type, range(csvformat_1, 5277, 9, 174, 174)).
code(csvformat_1_code10, field_declaration, csvformat_1_code2, (body_declarations, 13), range(csvformat_1, 5435, 358, 177, 186)).
code(csvformat_1_code11, modifier, csvformat_1_code10, (modifiers, 0), range(csvformat_1, 5717, 6, 186, 186)).
code(csvformat_1_code12, modifier, csvformat_1_code10, (modifiers, 1), range(csvformat_1, 5724, 6, 186, 186)).
code(csvformat_1_code13, modifier, csvformat_1_code10, (modifiers, 2), range(csvformat_1, 5731, 5, 186, 186)).
code(csvformat_1_code14, simple_type, csvformat_1_code10, type, range(csvformat_1, 5737, 9, 186, 186)).
code(csvformat_1_code15, variable_declaration_fragment, csvformat_1_code10, (fragments, 0), range(csvformat_1, 5747, 45, 186, 186)).
code(csvformat_1_code16, field_declaration, csvformat_1_code2, (body_declarations, 14), range(csvformat_1, 5799, 759, 188, 205)).
code(csvformat_1_code17, modifier, csvformat_1_code16, (modifiers, 0), range(csvformat_1, 6484, 6, 205, 205)).
code(csvformat_1_code18, modifier, csvformat_1_code16, (modifiers, 1), range(csvformat_1, 6491, 6, 205, 205)).
code(csvformat_1_code19, modifier, csvformat_1_code16, (modifiers, 2), range(csvformat_1, 6498, 5, 205, 205)).
code(csvformat_1_code20, simple_type, csvformat_1_code16, type, range(csvformat_1, 6504, 9, 205, 205)).
code(csvformat_1_code21, variable_declaration_fragment, csvformat_1_code16, (fragments, 0), range(csvformat_1, 6514, 43, 205, 205)).
code(csvformat_1_code22, field_declaration, csvformat_1_code2, (body_declarations, 15), range(csvformat_1, 6564, 217, 207, 211)).
code(csvformat_1_code23, modifier, csvformat_1_code22, (modifiers, 0), range(csvformat_1, 6646, 6, 208, 208)).
code(csvformat_1_code24, modifier, csvformat_1_code22, (modifiers, 1), range(csvformat_1, 6653, 6, 208, 208)).
code(csvformat_1_code25, modifier, csvformat_1_code22, (modifiers, 2), range(csvformat_1, 6660, 5, 208, 208)).
code(csvformat_1_code26, simple_type, csvformat_1_code22, type, range(csvformat_1, 6666, 9, 208, 208)).
code(csvformat_1_code27, variable_declaration_fragment, csvformat_1_code22, (fragments, 0), range(csvformat_1, 6676, 104, 208, 211)).
code(csvformat_1_code28, field_declaration, csvformat_1_code2, (body_declarations, 16), range(csvformat_1, 6787, 672, 213, 227)).
code(csvformat_1_code29, modifier, csvformat_1_code28, (modifiers, 0), range(csvformat_1, 7223, 6, 221, 221)).
code(csvformat_1_code30, modifier, csvformat_1_code28, (modifiers, 1), range(csvformat_1, 7230, 6, 221, 221)).
code(csvformat_1_code31, modifier, csvformat_1_code28, (modifiers, 2), range(csvformat_1, 7237, 5, 221, 221)).
code(csvformat_1_code32, simple_type, csvformat_1_code28, type, range(csvformat_1, 7243, 9, 221, 221)).
code(csvformat_1_code33, variable_declaration_fragment, csvformat_1_code28, (fragments, 0), range(csvformat_1, 7253, 205, 221, 227)).
code(csvformat_1_code34, method_declaration, csvformat_1_code2, (body_declarations, 17), range(csvformat_1, 7465, 312, 229, 239)).
code(csvformat_1_code35, method_declaration, csvformat_1_code2, (body_declarations, 18), range(csvformat_1, 7783, 366, 241, 251)).
code(csvformat_1_code36, method_declaration, csvformat_1_code2, (body_declarations, 20), range(csvformat_1, 8642, 2248, 265, 311)).
code(csvformat_1_code37, single_variable_declaration, csvformat_1_code36, (parameters, 8), range(csvformat_1, 10177, 23, 296, 296)).
code(csvformat_1_code38, modifier, csvformat_1_code37, (modifiers, 0), range(csvformat_1, 10177, 5, 296, 296)).
code(csvformat_1_code39, simple_type, csvformat_1_code37, type, range(csvformat_1, 10183, 6, 296, 296)).
code(csvformat_1_code41, modifier, csvformat_1_code40, (modifiers, 0), range(csvformat_1, 10202, 5, 296, 296)).
code(csvformat_1_code40, single_variable_declaration, csvformat_1_code36, (parameters, 9), range(csvformat_1, 10202, 21, 296, 296)).
code(csvformat_1_code42, array_type, csvformat_1_code40, type, range(csvformat_1, 10208, 8, 296, 296)).
code(csvformat_1_code43, simple_type, csvformat_1_code42, element_type, range(csvformat_1, 10208, 6, 296, 296)).
code(csvformat_1_code44, dimension, csvformat_1_code42, (dimensions, 0), range(csvformat_1, 10214, 2, 296, 296)).
code(csvformat_1_code46, primitive_type, csvformat_1_code45, type, range(csvformat_1, 10225, 7, 296, 296)).
code(csvformat_1_code45, single_variable_declaration, csvformat_1_code36, (parameters, 10), range(csvformat_1, 10225, 24, 296, 296)).
code(csvformat_1_code47, method_declaration, csvformat_1_code2, (body_declarations, 23), range(csvformat_1, 13121, 221, 390, 397)).
code(csvformat_1_code48, method_declaration, csvformat_1_code2, (body_declarations, 24), range(csvformat_1, 13348, 203, 399, 406)).
code(csvformat_1_code49, method_declaration, csvformat_1_code2, (body_declarations, 25), range(csvformat_1, 13557, 176, 408, 415)).
code(csvformat_1_code50, method_declaration, csvformat_1_code2, (body_declarations, 26), range(csvformat_1, 13739, 198, 417, 424)).
code(csvformat_1_code51, method_declaration, csvformat_1_code2, (body_declarations, 27), range(csvformat_1, 13943, 327, 426, 434)).
code(csvformat_1_code52, method_declaration, csvformat_1_code2, (body_declarations, 28), range(csvformat_1, 14276, 330, 436, 444)).
code(csvformat_1_code53, method_declaration, csvformat_1_code2, (body_declarations, 30), range(csvformat_1, 15174, 235, 463, 470)).
code(csvformat_1_code54, method_declaration, csvformat_1_code2, (body_declarations, 41), range(csvformat_1, 19537, 1884, 610, 652)).
code(csvformat_1_code55, method_declaration, csvformat_1_code2, (body_declarations, 44), range(csvformat_1, 23013, 758, 688, 703)).
code(csvformat_1_code56, simple_type, csvformat_1_expr76, type, range(csvformat_1, 23584, 9, 701, 701)).
code(csvformat_1_code57, method_declaration, csvformat_1_code2, (body_declarations, 45), range(csvformat_1, 23777, 484, 705, 716)).
code(csvformat_1_code58, method_declaration, csvformat_1_code2, (body_declarations, 46), range(csvformat_1, 24267, 806, 718, 733)).
code(csvformat_1_code59, simple_type, csvformat_1_expr80, type, range(csvformat_1, 24886, 9, 731, 731)).
code(csvformat_1_code60, method_declaration, csvformat_1_code2, (body_declarations, 48), range(csvformat_1, 25990, 687, 757, 768)).
code(csvformat_1_code61, simple_type, csvformat_1_expr81, type, range(csvformat_1, 26490, 9, 766, 766)).
code(csvformat_1_code62, method_declaration, csvformat_1_code2, (body_declarations, 49), range(csvformat_1, 26683, 646, 770, 781)).
code(csvformat_1_code63, simple_type, csvformat_1_expr82, type, range(csvformat_1, 27142, 9, 779, 779)).
code(csvformat_1_code64, method_declaration, csvformat_1_code2, (body_declarations, 52), range(csvformat_1, 28734, 796, 816, 831)).
code(csvformat_1_code65, simple_type, csvformat_1_expr84, type, range(csvformat_1, 29343, 9, 829, 829)).
code(csvformat_1_code66, method_declaration, csvformat_1_code2, (body_declarations, 54), range(csvformat_1, 30081, 438, 846, 856)).
code(csvformat_1_code67, method_declaration, csvformat_1_code2, (body_declarations, 55), range(csvformat_1, 30525, 569, 858, 869)).
code(csvformat_1_code68, simple_type, csvformat_1_expr87, type, range(csvformat_1, 30907, 9, 867, 867)).
%constants_1 - org.apache.commons.csv.Constants
code(constants_1_code1, compilation_unit, range(constants_1, 0, 2004, 1, -1)).
code(constants_1_code2, type_declaration, constants_1_code1, (types, 0), range(constants_1, 837, 1166, 20, 68)).
code(constants_1_code4, modifier, constants_1_code3, (modifiers, 0), range(constants_1, 1155, 6, 36, 36)).
code(constants_1_code3, field_declaration, constants_1_code2, (body_declarations, 4), range(constants_1, 1155, 66, 36, 36)).
code(constants_1_code5, modifier, constants_1_code3, (modifiers, 1), range(constants_1, 1162, 5, 36, 36)).
code(constants_1_code6, simple_type, constants_1_code3, type, range(constants_1, 1168, 9, 36, 36)).
code(constants_1_code7, variable_declaration_fragment, constants_1_code3, (fragments, 0), range(constants_1, 1178, 42, 36, 36)).
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
code(csvparser_test_1_code1, compilation_unit, range(csvparser_test_1, 0, 31276, 1, -1)).
code(csvparser_test_1_code2, type_declaration, csvparser_test_1_code1, (types, 0), range(csvparser_test_1, 1701, 29574, 48, 810)).
code(csvparser_test_1_code3, modifier, csvparser_test_1_code2, (modifiers, 0), range(csvparser_test_1, 2054, 6, 59, 59)).
code(csvparser_test_1_code4, field_declaration, csvparser_test_1_code2, (body_declarations, 1), range(csvparser_test_1, 2392, 193, 67, 72)).
code(csvparser_test_1_code5, modifier, csvparser_test_1_code4, (modifiers, 0), range(csvparser_test_1, 2392, 7, 67, 67)).
code(csvparser_test_1_code6, modifier, csvparser_test_1_code4, (modifiers, 1), range(csvparser_test_1, 2400, 6, 67, 67)).
code(csvparser_test_1_code7, modifier, csvparser_test_1_code4, (modifiers, 2), range(csvparser_test_1, 2407, 5, 67, 67)).
code(csvparser_test_1_code8, array_type, csvparser_test_1_code4, type, range(csvparser_test_1, 2413, 10, 67, 67)).
code(csvparser_test_1_code9, simple_type, csvparser_test_1_code8, element_type, range(csvparser_test_1, 2413, 6, 67, 67)).
code(csvparser_test_1_code10, dimension, csvparser_test_1_code8, (dimensions, 0), range(csvparser_test_1, 2419, 2, 67, 67)).
code(csvparser_test_1_code11, dimension, csvparser_test_1_code8, (dimensions, 1), range(csvparser_test_1, 2421, 2, 67, 67)).
code(csvparser_test_1_code12, variable_declaration_fragment, csvparser_test_1_code4, (fragments, 0), range(csvparser_test_1, 2424, 160, 67, 72)).
code(csvparser_test_1_code13, method_declaration, csvparser_test_1_code2, (body_declarations, 33), range(csvparser_test_1, 25412, 206, 667, 671)).
code(csvparser_test_1_code14, modifier, csvparser_test_1_stmt1, (modifiers, 0), range(csvparser_test_1, 25479, 5, 669, 669)).
code(csvparser_test_1_code15, simple_type, csvparser_test_1_stmt1, type, range(csvparser_test_1, 25485, 9, 669, 669)).
code(csvparser_test_1_code16, variable_declaration_fragment, csvparser_test_1_stmt1, (fragments, 0), range(csvparser_test_1, 25495, 66, 669, 669)).
%quote_1 - org.apache.commons.csv.Quote
code(quote_1_code1, compilation_unit, range(quote_1, 0, 1500, 1, -1)).
code(quote_1_code2, enum_declaration, quote_1_code1, (types, 0), range(quote_1, 836, 663, 19, 48)).
code(quote_1_code3, modifier, quote_1_code2, (modifiers, 0), range(quote_1, 905, 6, 24, 24)).
code(quote_1_code4, enum_constant_declaration, quote_1_code2, (enum_constants, 0), range(quote_1, 930, 45, 26, 29)).
code(quote_1_code5, enum_constant_declaration, quote_1_code2, (enum_constants, 1), range(quote_1, 982, 165, 31, 35)).
code(quote_1_code6, enum_constant_declaration, quote_1_code2, (enum_constants, 2), range(quote_1, 1154, 65, 37, 40)).
code(quote_1_code7, enum_constant_declaration, quote_1_code2, (enum_constants, 3), range(quote_1, 1226, 271, 42, 47)).
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
code(extended_buffered_reader_1_code1, compilation_unit, range(extended_buffered_reader_1, 0, 5478, 1, -1)).
code(extended_buffered_reader_1_code2, type_declaration, extended_buffered_reader_1_code1, (types, 0), range(extended_buffered_reader_1, 1143, 4334, 29, 178)).
code(extended_buffered_reader_1_code3, field_declaration, extended_buffered_reader_1_code2, (body_declarations, 0), range(extended_buffered_reader_1, 1442, 67, 39, 40)).
code(extended_buffered_reader_1_code4, modifier, extended_buffered_reader_1_code3, (modifiers, 0), range(extended_buffered_reader_1, 1476, 7, 40, 40)).
code(extended_buffered_reader_1_code5, primitive_type, extended_buffered_reader_1_code3, type, range(extended_buffered_reader_1, 1484, 3, 40, 40)).
code(extended_buffered_reader_1_code6, variable_declaration_fragment, extended_buffered_reader_1_code3, (fragments, 0), range(extended_buffered_reader_1, 1488, 20, 40, 40)).
code(extended_buffered_reader_1_code7, field_declaration, extended_buffered_reader_1_code2, (body_declarations, 1), range(extended_buffered_reader_1, 1515, 82, 42, 43)).
code(extended_buffered_reader_1_code8, modifier, extended_buffered_reader_1_code7, (modifiers, 0), range(extended_buffered_reader_1, 1569, 7, 43, 43)).
code(extended_buffered_reader_1_code9, primitive_type, extended_buffered_reader_1_code7, type, range(extended_buffered_reader_1, 1577, 4, 43, 43)).
code(extended_buffered_reader_1_code10, variable_declaration_fragment, extended_buffered_reader_1_code7, (fragments, 0), range(extended_buffered_reader_1, 1582, 14, 43, 43)).
code(extended_buffered_reader_1_code11, method_declaration, extended_buffered_reader_1_code2, (body_declarations, 3), range(extended_buffered_reader_1, 1632, 156, 47, 52)).
%lexer_1 - org.apache.commons.csv.Lexer
code(lexer_1_code1, compilation_unit, range(lexer_1, 0, 15732, 1, -1)).
code(lexer_1_code2, type_declaration, lexer_1_code1, (types, 0), range(lexer_1, 1530, 14201, 35, 431)).
code(lexer_1_code3, method_declaration, lexer_1_code2, (body_declarations, 8), range(lexer_1, 2287, 569, 60, 69)).
code(lexer_1_code5, modifier, lexer_1_code4, (modifiers, 0), range(lexer_1, 2383, 5, 61, 61)).
code(lexer_1_code4, single_variable_declaration, lexer_1_code3, (parameters, 0), range(lexer_1, 2383, 22, 61, 61)).
code(lexer_1_code6, simple_type, lexer_1_code4, type, range(lexer_1, 2389, 9, 61, 61)).
code(lexer_1_code7, single_variable_declaration, lexer_1_code3, (parameters, 1), range(lexer_1, 2407, 31, 61, 61)).
code(lexer_1_code8, modifier, lexer_1_code7, (modifiers, 0), range(lexer_1, 2407, 5, 61, 61)).
code(lexer_1_code9, simple_type, lexer_1_code7, type, range(lexer_1, 2413, 22, 61, 61)).
code(lexer_1_code10, method_declaration, lexer_1_code2, (body_declarations, 12), range(lexer_1, 11617, 110, 290, 292)).
%token_1 - org.apache.commons.csv.Token
code(token_1_code1, compilation_unit, range(token_1, 0, 2197, 1, -1)).
code(token_1_code2, type_declaration, token_1_code1, (types, 0), range(token_1, 895, 1301, 22, 75)).
code(token_1_code3, modifier, token_1_code2, (modifiers, 0), range(token_1, 1025, 5, 29, 29)).
code(token_1_code4, enum_declaration, token_1_code2, (body_declarations, 1), range(token_1, 1163, 441, 34, 49)).
code(token_1_code5, enum_constant_declaration, token_1_code4, (enum_constants, 0), range(token_1, 1183, 84, 35, 36)).
code(token_1_code6, enum_constant_declaration, token_1_code4, (enum_constants, 1), range(token_1, 1278, 81, 38, 39)).
code(token_1_code7, enum_constant_declaration, token_1_code4, (enum_constants, 2), range(token_1, 1370, 82, 41, 42)).
code(token_1_code8, enum_constant_declaration, token_1_code4, (enum_constants, 3), range(token_1, 1463, 77, 44, 45)).
code(token_1_code9, enum_constant_declaration, token_1_code4, (enum_constants, 4), range(token_1, 1551, 47, 47, 48)).
code(token_1_code10, field_declaration, token_1_code2, (body_declarations, 2), range(token_1, 1610, 48, 51, 52)).
code(token_1_code11, simple_type, token_1_code10, type, range(token_1, 1632, 10, 52, 52)).
code(token_1_code12, variable_declaration_fragment, token_1_code10, (fragments, 0), range(token_1, 1643, 14, 52, 52)).
code(token_1_code13, field_declaration, token_1_code2, (body_declarations, 3), range(token_1, 1664, 101, 54, 55)).
code(token_1_code14, modifier, token_1_code13, (modifiers, 0), range(token_1, 1695, 5, 55, 55)).
code(token_1_code15, simple_type, token_1_code13, type, range(token_1, 1701, 13, 55, 55)).
code(token_1_code16, variable_declaration_fragment, token_1_code13, (fragments, 0), range(token_1, 1715, 49, 55, 55)).
code(token_1_code17, simple_type, token_1_expr1, type, range(token_1, 1729, 13, 55, 55)).
%assertions_1 - org.apache.commons.csv.Assertions
code(assertions_1_code1, compilation_unit, range(assertions_1, 0, 1235, 1, -1)).
code(assertions_1_code2, type_declaration, assertions_1_code1, (types, 0), range(assertions_1, 837, 397, 20, 36)).
code(assertions_1_code3, method_declaration, assertions_1_code2, (body_declarations, 1), range(assertions_1, 1012, 220, 31, 35)).

%%% Name References

name_ref(t_assert_8, type, 'Assert', 'Lorg/junit/Assert;').
name_ref(t_assertions_4, type, 'Assertions', 'Lorg/apache/commons/csv/Assertions;').
name_ref(t_character_2, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_csvformat_7, type, 'CSVFormat', 'Lorg/apache/commons/csv/CSVFormat;').
name_ref(t_csvparser_6, type, 'CSVParser', 'Lorg/apache/commons/csv/CSVParser;').
name_ref(t_csvparser_test_5, type, 'CSVParserTest', 'Lorg/apache/commons/csv/CSVParserTest;').
name_ref(t_quote_1, type, 'Quote', 'Lorg/apache/commons/csv/Quote;').
name_ref(t_string_3, type, 'String', 'Ljava/lang/String;').
name_ref(t_token_9, type, 'Token', 'Lorg/apache/commons/csv/Token;').
name_ref(t_type_10, type, 'Type', 'Lorg/apache/commons/csv/Token$Type;').
name_ref(p_reader_79, param, 'reader', 'extended_buffered_reader_1;reader_line_51').
name_ref(v_format_header_71, var, 'formatHeader', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#formatHeader').
name_ref(v_hdr_map_70, var, 'hdrMap', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#hdrMap').
name_ref(v_parser_73, var, 'parser', 'Lorg/apache/commons/csv/CSVParserTest;.testNoHeaderMap()V|Ljava/lang/Exception;#parser').
name_ref(p_buf_80, param, 'buf', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;#buf#0#0').
name_ref(p_buffer_98, param, 'buffer', 'Lorg/apache/commons/csv/Lexer;.trimTrailingSpaces(Ljava/lang/StringBuilder;)V#buffer#0#0').
name_ref(p_c_11, param, 'c', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(C)Z#c#0#0').
name_ref(p_c_14, param, 'c', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(Ljava/lang/Character;)Z#c#0#0').
name_ref(p_c_96, param, 'c', 'Lorg/apache/commons/csv/Lexer;.mapNullToDisabled(Ljava/lang/Character;)C#c#0#0').
name_ref(p_ch_100, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isWhitespace(I)Z#ch#0#0').
name_ref(p_ch_101, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isStartOfLine(I)Z#ch#0#0').
name_ref(p_ch_102, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isEndOfFile(I)Z#ch#0#0').
name_ref(p_ch_103, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isDelimiter(I)Z#ch#0#0').
name_ref(p_ch_104, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isEscape(I)Z#ch#0#0').
name_ref(p_ch_105, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isQuoteChar(I)Z#ch#0#0').
name_ref(p_ch_106, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isCommentStart(I)Z#ch#0#0').
name_ref(p_ch_107, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isMetaChar(I)Z#ch#0#0').
name_ref(p_ch_94, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#ch#0#1').
name_ref(p_ch_99, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.readEndOfLine(I)Z|Ljava/io/IOException;#ch#0#0').
name_ref(p_charset_61, param, 'charset', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#charset#0#1').
name_ref(p_comment_start_19, param, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#commentStart#0#3').
name_ref(p_comment_start_41, param, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.withCommentStart(C)Lorg/apache/commons/csv/CSVFormat;#commentStart#0#0').
name_ref(p_comment_start_42, param, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.withCommentStart(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;#commentStart#0#0').
name_ref(p_delimiter_15, param, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.newFormat(C)Lorg/apache/commons/csv/CSVFormat;#delimiter#0#0').
name_ref(p_delimiter_16, param, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#delimiter#0#0').
name_ref(p_delimiter_43, param, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.withDelimiter(C)Lorg/apache/commons/csv/CSVFormat;#delimiter#0#0').
name_ref(p_escape_20, param, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#escape#0#4').
name_ref(p_escape_44, param, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.withEscape(C)Lorg/apache/commons/csv/CSVFormat;#escape#0#0').
name_ref(p_escape_45, param, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.withEscape(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;#escape#0#0').
name_ref(p_file_56, param, 'file', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/io/File;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#file#0#0').
name_ref(p_format_57, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/io/File;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#format#0#1').
name_ref(p_format_59, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/lang/String;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#format#0#1').
name_ref(p_format_62, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#format#0#2').
name_ref(p_format_66, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V|Ljava/io/IOException;#format#0#1').
name_ref(p_format_83, param, 'format', 'Lorg/apache/commons/csv/Lexer;.(Lorg/apache/commons/csv/CSVFormat;Lorg/apache/commons/csv/ExtendedBufferedReader;)V#format#0#0').
name_ref(p_header_25, param, 'header', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#header#0#9').
name_ref(p_header_46, param, 'header', 'Lorg/apache/commons/csv/CSVFormat;.withHeader([Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;#header#0#0').
name_ref(p_ignore_empty_lines_22, param, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#ignoreEmptyLines#0#6').
name_ref(p_ignore_empty_lines_47, param, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreEmptyLines(Z)Lorg/apache/commons/csv/CSVFormat;#ignoreEmptyLines#0#0').
name_ref(p_ignore_surrounding_spaces_21, param, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#ignoreSurroundingSpaces#0#5').
name_ref(p_ignore_surrounding_spaces_48, param, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreSurroundingSpaces(Z)Lorg/apache/commons/csv/CSVFormat;#ignoreSurroundingSpaces#0#0').
name_ref(p_in_40, param, 'in', 'Lorg/apache/commons/csv/CSVFormat;.parse(Ljava/io/Reader;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_84, param, 'in', 'Lorg/apache/commons/csv/Lexer;.(Lorg/apache/commons/csv/CSVFormat;Lorg/apache/commons/csv/ExtendedBufferedReader;)V#in#0#1').
name_ref(p_length_82, param, 'length', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;#length#0#2').
name_ref(p_line_separator_74, param, 'lineSeparator', 'Lorg/apache/commons/csv/CSVParserTest;.validateRecordNumbers(Ljava/lang/String;)V|Ljava/io/IOException;#lineSeparator#0#0').
name_ref(p_line_separator_75, param, 'lineSeparator', 'Lorg/apache/commons/csv/CSVParserTest;.validateLineNumbers(Ljava/lang/String;)V|Ljava/io/IOException;#lineSeparator#0#0').
name_ref(p_null_string_24, param, 'nullString', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#nullString#0#8').
name_ref(p_null_string_49, param, 'nullString', 'Lorg/apache/commons/csv/CSVFormat;.withNullString(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;#nullString#0#0').
name_ref(p_obj_38, param, 'obj', 'Lorg/apache/commons/csv/CSVFormat;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_offset_81, param, 'offset', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;#offset#0#1').
name_ref(p_parameter_1, param, 'parameter', 'Lorg/apache/commons/csv/Assertions;.notNull(Ljava/lang/Object;Ljava/lang/String;)V#parameter#0#0').
name_ref(p_parameter_name_2, param, 'parameterName', 'Lorg/apache/commons/csv/Assertions;.notNull(Ljava/lang/Object;Ljava/lang/String;)V#parameterName#0#1').
name_ref(p_quote_char_17, param, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#quoteChar#0#1').
name_ref(p_quote_char_50, param, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.withQuoteChar(C)Lorg/apache/commons/csv/CSVFormat;#quoteChar#0#0').
name_ref(p_quote_char_51, param, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.withQuoteChar(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;#quoteChar#0#0').
name_ref(p_quote_policy_18, param, 'quotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#quotePolicy#0#2').
name_ref(p_quote_policy_52, param, 'quotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.withQuotePolicy(Lorg/apache/commons/csv/Quote;)Lorg/apache/commons/csv/CSVFormat;#quotePolicy#0#0').
name_ref(p_reader_65, param, 'reader', 'Lorg/apache/commons/csv/CSVParser;.(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_79, param, 'reader', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.(Ljava/io/Reader;)V#reader#0#0').
name_ref(p_record_separator_23, param, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#recordSeparator#0#7').
name_ref(p_record_separator_53, param, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.withRecordSeparator(C)Lorg/apache/commons/csv/CSVFormat;#recordSeparator#0#0').
name_ref(p_record_separator_54, param, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.withRecordSeparator(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;#recordSeparator#0#0').
name_ref(p_skip_header_record_26, param, 'skipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#skipHeaderRecord#0#10').
name_ref(p_skip_header_record_55, param, 'skipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.withSkipHeaderRecord(Z)Lorg/apache/commons/csv/CSVFormat;#skipHeaderRecord#0#0').
name_ref(p_string_58, param, 'string', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/lang/String;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#string#0#0').
name_ref(p_token_92, param, 'token', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0').
name_ref(p_token_93, param, 'token', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0').
name_ref(p_token_95, param, 'token', 'Lorg/apache/commons/csv/Lexer;.parseEncapsulatedToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0').
name_ref(p_url_60, param, 'url', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#url#0#0').
name_ref(p_values_39, param, 'values', 'Lorg/apache/commons/csv/CSVFormat;.format([Ljava/lang/Object;)Ljava/lang/String;#values#0#0').
name_ref(f_all_108, field, 'ALL', 'Lorg/apache/commons/csv/Quote;.ALL)Lorg/apache/commons/csv/Quote;').
name_ref(f_comma_4, field, 'COMMA', 'Lorg/apache/commons/csv/Constants;.COMMA)C').
name_ref(f_comment_116, field, 'COMMENT', 'Lorg/apache/commons/csv/Token$Type;.COMMENT)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_comment_start_30, field, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.commentStart)Ljava/lang/Character;').
name_ref(f_comment_start_89, field, 'commentStart', 'Lorg/apache/commons/csv/Lexer;.commentStart)C').
name_ref(f_content_118, field, 'content', 'Lorg/apache/commons/csv/Token;.content)Ljava/lang/StringBuilder;').
name_ref(f_cr_13, field, 'CR', 'Lorg/apache/commons/csv/Constants;.CR)C').
name_ref(f_crlf_6, field, 'CRLF', 'Lorg/apache/commons/csv/Constants;.CRLF)Ljava/lang/String;').
name_ref(f_default_3, field, 'DEFAULT', 'Lorg/apache/commons/csv/CSVFormat;.DEFAULT)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_delimiter_27, field, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.delimiter)C').
name_ref(f_delimiter_86, field, 'delimiter', 'Lorg/apache/commons/csv/Lexer;.delimiter)C').
name_ref(f_disabled_97, field, 'DISABLED', 'Lorg/apache/commons/csv/Lexer;.DISABLED)C').
name_ref(f_double_quote_char_5, field, 'DOUBLE_QUOTE_CHAR', 'Lorg/apache/commons/csv/Constants;.DOUBLE_QUOTE_CHAR)Ljava/lang/Character;').
name_ref(f_eof_114, field, 'EOF', 'Lorg/apache/commons/csv/Token$Type;.EOF)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_eol_counter_78, field, 'eolCounter', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.eolCounter)J').
name_ref(f_eorecord_115, field, 'EORECORD', 'Lorg/apache/commons/csv/Token$Type;.EORECORD)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_escape_31, field, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.escape)Ljava/lang/Character;').
name_ref(f_escape_87, field, 'escape', 'Lorg/apache/commons/csv/Lexer;.escape)C').
name_ref(f_excel_8, field, 'EXCEL', 'Lorg/apache/commons/csv/CSVFormat;.EXCEL)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_format_67, field, 'format', 'Lorg/apache/commons/csv/CSVParser;.format)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_header_36, field, 'header', 'Lorg/apache/commons/csv/CSVFormat;.header)[Ljava/lang/String;').
name_ref(f_header_map_69, field, 'headerMap', 'Lorg/apache/commons/csv/CSVParser;.headerMap)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;').
name_ref(f_ignore_empty_lines_33, field, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.ignoreEmptyLines)Z').
name_ref(f_ignore_empty_lines_91, field, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/Lexer;.ignoreEmptyLines)Z').
name_ref(f_ignore_surrounding_spaces_32, field, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.ignoreSurroundingSpaces)Z').
name_ref(f_ignore_surrounding_spaces_90, field, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/Lexer;.ignoreSurroundingSpaces)Z').
name_ref(f_in_85, field, 'in', 'Lorg/apache/commons/csv/Lexer;.in)Lorg/apache/commons/csv/ExtendedBufferedReader;').
name_ref(f_initial_token_length_119, field, 'INITIAL_TOKEN_LENGTH', 'Lorg/apache/commons/csv/Token;.INITIAL_TOKEN_LENGTH)I').
name_ref(f_invalid_112, field, 'INVALID', 'Lorg/apache/commons/csv/Token$Type;.INVALID)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_last_char_76, field, 'lastChar', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.lastChar)I').
name_ref(f_lexer_68, field, 'lexer', 'Lorg/apache/commons/csv/CSVParser;.lexer)Lorg/apache/commons/csv/Lexer;').
name_ref(f_lf_12, field, 'LF', 'Lorg/apache/commons/csv/Constants;.LF)C').
name_ref(f_minimal_109, field, 'MINIMAL', 'Lorg/apache/commons/csv/Quote;.MINIMAL)Lorg/apache/commons/csv/Quote;').
name_ref(f_mysql_10, field, 'MYSQL', 'Lorg/apache/commons/csv/CSVFormat;.MYSQL)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_non_numeric_110, field, 'NON_NUMERIC', 'Lorg/apache/commons/csv/Quote;.NON_NUMERIC)Lorg/apache/commons/csv/Quote;').
name_ref(f_none_111, field, 'NONE', 'Lorg/apache/commons/csv/Quote;.NONE)Lorg/apache/commons/csv/Quote;').
name_ref(f_null_string_35, field, 'nullString', 'Lorg/apache/commons/csv/CSVFormat;.nullString)Ljava/lang/String;').
name_ref(f_quote_char_28, field, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.quoteChar)Ljava/lang/Character;').
name_ref(f_quote_char_88, field, 'quoteChar', 'Lorg/apache/commons/csv/Lexer;.quoteChar)C').
name_ref(f_quote_policy_29, field, 'quotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.quotePolicy)Lorg/apache/commons/csv/Quote;').
name_ref(f_record_63, field, 'record', 'Lorg/apache/commons/csv/CSVParser;.record)Ljava/util/List<Ljava/lang/String;>;').
name_ref(f_record_separator_34, field, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.recordSeparator)Ljava/lang/String;').
name_ref(f_result_72, field, 'RESULT', 'Lorg/apache/commons/csv/CSVParserTest;.RESULT)[[Ljava/lang/String;').
name_ref(f_reusable_token_64, field, 'reusableToken', 'Lorg/apache/commons/csv/CSVParser;.reusableToken)Lorg/apache/commons/csv/Token;').
name_ref(f_rfc4180_7, field, 'RFC4180', 'Lorg/apache/commons/csv/CSVFormat;.RFC4180)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_skip_header_record_37, field, 'skipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.skipHeaderRecord)Z').
name_ref(f_tdf_9, field, 'TDF', 'Lorg/apache/commons/csv/CSVFormat;.TDF)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_token_113, field, 'TOKEN', 'Lorg/apache/commons/csv/Token$Type;.TOKEN)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_type_117, field, 'type', 'Lorg/apache/commons/csv/Token;.type)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_undefined_77, field, 'UNDEFINED', 'Lorg/apache/commons/csv/Constants;.UNDEFINED)I').
name_ref(m_add_record_value_58, method, 'addRecordValue', 'Lorg/apache/commons/csv/CSVParser;.addRecordValue()V').
name_ref(m_array_list_53, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_assert_null_104, method, 'assertNull', 'Lorg/junit/Assert;.assertNull(Ljava/lang/Object;)V').
name_ref(m_assertions_1, method, 'Assertions', 'Lorg/apache/commons/csv/Assertions;.()V').
name_ref(m_buffered_reader_124, method, 'BufferedReader', 'Ljava/io/BufferedReader;.(Ljava/io/Reader;)V').
name_ref(m_char_value_7, method, 'charValue', 'Ljava/lang/Character;.charValue()C').
name_ref(m_clone_9, method, 'clone', 'Ljava/lang/Object;.clone()[Ljava/lang/String;').
name_ref(m_close_132, method, 'close', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.close()V|Ljava/io/IOException;').
name_ref(m_close_150, method, 'close', 'Lorg/apache/commons/csv/Lexer;.close()V|Ljava/io/IOException;').
name_ref(m_close_59, method, 'close', 'Lorg/apache/commons/csv/CSVParser;.close()V|Ljava/io/IOException;').
name_ref(m_csvformat_3, method, 'CSVFormat', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V').
name_ref(m_csvparser_50, method, 'CSVParser', 'Lorg/apache/commons/csv/CSVParser;.(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V|Ljava/io/IOException;').
name_ref(m_equals_10, method, 'equals', 'Lorg/apache/commons/csv/CSVFormat;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_31, method, 'equals', 'Ljava/lang/Character;.equals(Ljava/lang/Object;)Z').
name_ref(m_extended_buffered_reader_56, method, 'ExtendedBufferedReader', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.(Ljava/io/Reader;)V').
name_ref(m_format_11, method, 'format', 'Lorg/apache/commons/csv/CSVFormat;.format([Ljava/lang/Object;)Ljava/lang/String;').
name_ref(m_get_comment_start_12, method, 'getCommentStart', 'Lorg/apache/commons/csv/CSVFormat;.getCommentStart()Ljava/lang/Character;').
name_ref(m_get_current_line_number_130, method, 'getCurrentLineNumber', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.getCurrentLineNumber()J').
name_ref(m_get_current_line_number_137, method, 'getCurrentLineNumber', 'Lorg/apache/commons/csv/Lexer;.getCurrentLineNumber()J').
name_ref(m_get_current_line_number_60, method, 'getCurrentLineNumber', 'Lorg/apache/commons/csv/CSVParser;.getCurrentLineNumber()J').
name_ref(m_get_delimiter_13, method, 'getDelimiter', 'Lorg/apache/commons/csv/CSVFormat;.getDelimiter()C').
name_ref(m_get_escape_14, method, 'getEscape', 'Lorg/apache/commons/csv/CSVFormat;.getEscape()Ljava/lang/Character;').
name_ref(m_get_header_15, method, 'getHeader', 'Lorg/apache/commons/csv/CSVFormat;.getHeader()[Ljava/lang/String;').
name_ref(m_get_header_map_61, method, 'getHeaderMap', 'Lorg/apache/commons/csv/CSVParser;.getHeaderMap()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;').
name_ref(m_get_ignore_empty_lines_16, method, 'getIgnoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.getIgnoreEmptyLines()Z').
name_ref(m_get_ignore_surrounding_spaces_17, method, 'getIgnoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.getIgnoreSurroundingSpaces()Z').
name_ref(m_get_last_char_126, method, 'getLastChar', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.getLastChar()I').
name_ref(m_get_next_record_67, method, 'getNextRecord', 'Lorg/apache/commons/csv/CSVParser$12424;.getNextRecord()Lorg/apache/commons/csv/CSVRecord;').
name_ref(m_get_null_string_18, method, 'getNullString', 'Lorg/apache/commons/csv/CSVFormat;.getNullString()Ljava/lang/String;').
name_ref(m_get_quote_char_19, method, 'getQuoteChar', 'Lorg/apache/commons/csv/CSVFormat;.getQuoteChar()Ljava/lang/Character;').
name_ref(m_get_quote_policy_20, method, 'getQuotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.getQuotePolicy()Lorg/apache/commons/csv/Quote;').
name_ref(m_get_record_number_63, method, 'getRecordNumber', 'Lorg/apache/commons/csv/CSVParser;.getRecordNumber()J').
name_ref(m_get_record_separator_21, method, 'getRecordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.getRecordSeparator()Ljava/lang/String;').
name_ref(m_get_records_64, method, 'getRecords', 'Lorg/apache/commons/csv/CSVParser;.getRecords()Ljava/util/List<Lorg/apache/commons/csv/CSVRecord;>;|Ljava/io/IOException;').
name_ref(m_get_skip_header_record_22, method, 'getSkipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.getSkipHeaderRecord()Z').
name_ref(m_has_next_68, method, 'hasNext', 'Lorg/apache/commons/csv/CSVParser$12424;.hasNext()Z').
name_ref(m_hash_code_23, method, 'hashCode', 'Lorg/apache/commons/csv/CSVFormat;.hashCode()I').
name_ref(m_initialize_header_57, method, 'initializeHeader', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;').
name_ref(m_is_closed_131, method, 'isClosed', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.isClosed()Z').
name_ref(m_is_closed_141, method, 'isClosed', 'Lorg/apache/commons/csv/Lexer;.isClosed()Z').
name_ref(m_is_closed_65, method, 'isClosed', 'Lorg/apache/commons/csv/CSVParser;.isClosed()Z').
name_ref(m_is_comment_start_148, method, 'isCommentStart', 'Lorg/apache/commons/csv/Lexer;.isCommentStart(I)Z').
name_ref(m_is_commenting_enabled_24, method, 'isCommentingEnabled', 'Lorg/apache/commons/csv/CSVFormat;.isCommentingEnabled()Z').
name_ref(m_is_delimiter_145, method, 'isDelimiter', 'Lorg/apache/commons/csv/Lexer;.isDelimiter(I)Z').
name_ref(m_is_end_of_file_144, method, 'isEndOfFile', 'Lorg/apache/commons/csv/Lexer;.isEndOfFile(I)Z').
name_ref(m_is_escape_146, method, 'isEscape', 'Lorg/apache/commons/csv/Lexer;.isEscape(I)Z').
name_ref(m_is_escaping_25, method, 'isEscaping', 'Lorg/apache/commons/csv/CSVFormat;.isEscaping()Z').
name_ref(m_is_line_break_5, method, 'isLineBreak', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(C)Z').
name_ref(m_is_line_break_6, method, 'isLineBreak', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(Ljava/lang/Character;)Z').
name_ref(m_is_meta_char_149, method, 'isMetaChar', 'Lorg/apache/commons/csv/Lexer;.isMetaChar(I)Z').
name_ref(m_is_null_handling_26, method, 'isNullHandling', 'Lorg/apache/commons/csv/CSVFormat;.isNullHandling()Z').
name_ref(m_is_quote_char_147, method, 'isQuoteChar', 'Lorg/apache/commons/csv/Lexer;.isQuoteChar(I)Z').
name_ref(m_is_quoting_27, method, 'isQuoting', 'Lorg/apache/commons/csv/CSVFormat;.isQuoting()Z').
name_ref(m_is_start_of_line_143, method, 'isStartOfLine', 'Lorg/apache/commons/csv/Lexer;.isStartOfLine(I)Z').
name_ref(m_is_whitespace_142, method, 'isWhitespace', 'Lorg/apache/commons/csv/Lexer;.isWhitespace(I)Z').
name_ref(m_iterator_66, method, 'iterator', 'Lorg/apache/commons/csv/CSVParser;.iterator()Ljava/util/Iterator<Lorg/apache/commons/csv/CSVRecord;>;').
name_ref(m_lexer_55, method, 'Lexer', 'Lorg/apache/commons/csv/Lexer;.(Lorg/apache/commons/csv/CSVFormat;Lorg/apache/commons/csv/ExtendedBufferedReader;)V').
name_ref(m_linked_hash_map_62, method, 'LinkedHashMap', 'Ljava/util/LinkedHashMap;.(Ljava/util/Map<+TK;+TV;>;)V').
name_ref(m_look_ahead_129, method, 'lookAhead', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.lookAhead()I|Ljava/io/IOException;').
name_ref(m_map_null_to_disabled_133, method, 'mapNullToDisabled', 'Lorg/apache/commons/csv/Lexer;.mapNullToDisabled(Ljava/lang/Character;)C').
name_ref(m_new_format_8, method, 'newFormat', 'Lorg/apache/commons/csv/CSVFormat;.newFormat(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_next_69, method, 'next', 'Lorg/apache/commons/csv/CSVParser$12424;.next()Lorg/apache/commons/csv/CSVRecord;').
name_ref(m_next_record_71, method, 'nextRecord', 'Lorg/apache/commons/csv/CSVParser;.nextRecord()Lorg/apache/commons/csv/CSVRecord;|Ljava/io/IOException;').
name_ref(m_next_token_134, method, 'nextToken', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;').
name_ref(m_not_null_2, method, 'notNull', 'Lorg/apache/commons/csv/Assertions;.notNull(Ljava/lang/Object;Ljava/lang/String;)V').
name_ref(m_parse_28, method, 'parse', 'Lorg/apache/commons/csv/CSVFormat;.parse(Ljava/io/Reader;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_48, method, 'parse', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/io/File;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_49, method, 'parse', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/lang/String;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_52, method, 'parse', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_encapsulated_token_136, method, 'parseEncapsulatedToken', 'Lorg/apache/commons/csv/Lexer;.parseEncapsulatedToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;').
name_ref(m_parse_simple_token_135, method, 'parseSimpleToken', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;').
name_ref(m_read_125, method, 'read', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read()I|Ljava/io/IOException;').
name_ref(m_read_127, method, 'read', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;').
name_ref(m_read_end_of_line_140, method, 'readEndOfLine', 'Lorg/apache/commons/csv/Lexer;.readEndOfLine(I)Z|Ljava/io/IOException;').
name_ref(m_read_escape_138, method, 'readEscape', 'Lorg/apache/commons/csv/Lexer;.readEscape()I|Ljava/io/IOException;').
name_ref(m_read_line_128, method, 'readLine', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.readLine()Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_remove_70, method, 'remove', 'Lorg/apache/commons/csv/CSVParser$12424;.remove()V').
name_ref(m_reset_152, method, 'reset', 'Lorg/apache/commons/csv/Token;.reset()V').
name_ref(m_string_builder_151, method, 'StringBuilder', 'Ljava/lang/StringBuilder;.(I)V').
name_ref(m_string_reader_51, method, 'StringReader', 'Ljava/io/StringReader;.(Ljava/lang/String;)V').
name_ref(m_test_backslash_escaping2_84, method, 'testBackslashEscaping2', 'Lorg/apache/commons/csv/CSVParserTest;.testBackslashEscaping2()V|Ljava/io/IOException;').
name_ref(m_test_backslash_escaping_83, method, 'testBackslashEscaping', 'Lorg/apache/commons/csv/CSVParserTest;.testBackslashEscaping()V|Ljava/io/IOException;').
name_ref(m_test_backslash_escaping_old_82, method, 'testBackslashEscapingOld', 'Lorg/apache/commons/csv/CSVParserTest;.testBackslashEscapingOld()V|Ljava/io/IOException;').
name_ref(m_test_carriage_return_endings_88, method, 'testCarriageReturnEndings', 'Lorg/apache/commons/csv/CSVParserTest;.testCarriageReturnEndings()V|Ljava/io/IOException;').
name_ref(m_test_carriage_return_line_feed_endings_86, method, 'testCarriageReturnLineFeedEndings', 'Lorg/apache/commons/csv/CSVParserTest;.testCarriageReturnLineFeedEndings()V|Ljava/io/IOException;').
name_ref(m_test_close_87, method, 'testClose', 'Lorg/apache/commons/csv/CSVParserTest;.testClose()V|Ljava/lang/Exception;').
name_ref(m_test_csv57_81, method, 'testCSV57', 'Lorg/apache/commons/csv/CSVParserTest;.testCSV57()V|Ljava/lang/Exception;').
name_ref(m_test_default_format_85, method, 'testDefaultFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testDefaultFormat()V|Ljava/io/IOException;').
name_ref(m_test_empty_file_80, method, 'testEmptyFile', 'Lorg/apache/commons/csv/CSVParserTest;.testEmptyFile()V|Ljava/lang/Exception;').
name_ref(m_test_empty_line_behaviour_csv_79, method, 'testEmptyLineBehaviourCSV', 'Lorg/apache/commons/csv/CSVParserTest;.testEmptyLineBehaviourCSV()V|Ljava/lang/Exception;').
name_ref(m_test_empty_line_behaviour_excel_78, method, 'testEmptyLineBehaviourExcel', 'Lorg/apache/commons/csv/CSVParserTest;.testEmptyLineBehaviourExcel()V|Ljava/lang/Exception;').
name_ref(m_test_end_of_file_behavior_csv_77, method, 'testEndOfFileBehaviorCSV', 'Lorg/apache/commons/csv/CSVParserTest;.testEndOfFileBehaviorCSV()V|Ljava/lang/Exception;').
name_ref(m_test_end_of_file_behaviour_excel_76, method, 'testEndOfFileBehaviourExcel', 'Lorg/apache/commons/csv/CSVParserTest;.testEndOfFileBehaviourExcel()V|Ljava/lang/Exception;').
name_ref(m_test_excel_format1_74, method, 'testExcelFormat1', 'Lorg/apache/commons/csv/CSVParserTest;.testExcelFormat1()V|Ljava/io/IOException;').
name_ref(m_test_excel_format2_75, method, 'testExcelFormat2', 'Lorg/apache/commons/csv/CSVParserTest;.testExcelFormat2()V|Ljava/lang/Exception;').
name_ref(m_test_for_each_91, method, 'testForEach', 'Lorg/apache/commons/csv/CSVParserTest;.testForEach()V|Ljava/lang/Exception;').
name_ref(m_test_get_header_map_102, method, 'testGetHeaderMap', 'Lorg/apache/commons/csv/CSVParserTest;.testGetHeaderMap()V|Ljava/lang/Exception;').
name_ref(m_test_get_line_72, method, 'testGetLine', 'Lorg/apache/commons/csv/CSVParserTest;.testGetLine()V|Ljava/io/IOException;').
name_ref(m_test_get_line_number_with_cr_107, method, 'testGetLineNumberWithCR', 'Lorg/apache/commons/csv/CSVParserTest;.testGetLineNumberWithCR()V|Ljava/lang/Exception;').
name_ref(m_test_get_line_number_with_crlf_106, method, 'testGetLineNumberWithCRLF', 'Lorg/apache/commons/csv/CSVParserTest;.testGetLineNumberWithCRLF()V|Ljava/lang/Exception;').
name_ref(m_test_get_line_number_with_lf_105, method, 'testGetLineNumberWithLF', 'Lorg/apache/commons/csv/CSVParserTest;.testGetLineNumberWithLF()V|Ljava/lang/Exception;').
name_ref(m_test_get_record_number_with_cr_111, method, 'testGetRecordNumberWithCR', 'Lorg/apache/commons/csv/CSVParserTest;.testGetRecordNumberWithCR()V|Ljava/lang/Exception;').
name_ref(m_test_get_record_number_with_crlf_110, method, 'testGetRecordNumberWithCRLF', 'Lorg/apache/commons/csv/CSVParserTest;.testGetRecordNumberWithCRLF()V|Ljava/lang/Exception;').
name_ref(m_test_get_record_number_with_lf_108, method, 'testGetRecordNumberWithLF', 'Lorg/apache/commons/csv/CSVParserTest;.testGetRecordNumberWithLF()V|Ljava/lang/Exception;').
name_ref(m_test_get_record_with_multi_line_values_109, method, 'testGetRecordWithMultiLineValues', 'Lorg/apache/commons/csv/CSVParserTest;.testGetRecordWithMultiLineValues()V|Ljava/lang/Exception;').
name_ref(m_test_get_records_73, method, 'testGetRecords', 'Lorg/apache/commons/csv/CSVParserTest;.testGetRecords()V|Ljava/io/IOException;').
name_ref(m_test_header_95, method, 'testHeader', 'Lorg/apache/commons/csv/CSVParserTest;.testHeader()V|Ljava/lang/Exception;').
name_ref(m_test_header_comment_98, method, 'testHeaderComment', 'Lorg/apache/commons/csv/CSVParserTest;.testHeaderComment()V|Ljava/lang/Exception;').
name_ref(m_test_ignore_empty_lines_90, method, 'testIgnoreEmptyLines', 'Lorg/apache/commons/csv/CSVParserTest;.testIgnoreEmptyLines()V|Ljava/io/IOException;').
name_ref(m_test_invalid_format_112, method, 'testInvalidFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testInvalidFormat()V|Ljava/lang/Exception;').
name_ref(m_test_iterator_93, method, 'testIterator', 'Lorg/apache/commons/csv/CSVParserTest;.testIterator()V|Ljava/lang/Exception;').
name_ref(m_test_line_feed_endings_89, method, 'testLineFeedEndings', 'Lorg/apache/commons/csv/CSVParserTest;.testLineFeedEndings()V|Ljava/io/IOException;').
name_ref(m_test_mapped_but_not_set_as_outlook2007_contact_export_101, method, 'testMappedButNotSetAsOutlook2007ContactExport', 'Lorg/apache/commons/csv/CSVParserTest;.testMappedButNotSetAsOutlook2007ContactExport()V|Ljava/lang/Exception;').
name_ref(m_test_multiple_iterators_94, method, 'testMultipleIterators', 'Lorg/apache/commons/csv/CSVParserTest;.testMultipleIterators()V|Ljava/lang/Exception;').
name_ref(m_test_new_csvparser_null_reader_format_120, method, 'testNewCSVParserNullReaderFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testNewCSVParserNullReaderFormat()V|Ljava/lang/Exception;').
name_ref(m_test_new_csvparser_reader_null_format_121, method, 'testNewCSVParserReaderNullFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testNewCSVParserReaderNullFormat()V|Ljava/lang/Exception;').
name_ref(m_test_no_header_map_103, method, 'testNoHeaderMap', 'Lorg/apache/commons/csv/CSVParserTest;.testNoHeaderMap()V|Ljava/lang/Exception;').
name_ref(m_test_parse_file_null_format_114, method, 'testParseFileNullFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseFileNullFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parse_null_file_format_113, method, 'testParseNullFileFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseNullFileFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parse_null_string_format_115, method, 'testParseNullStringFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseNullStringFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parse_null_url_charset_format_117, method, 'testParseNullUrlCharsetFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseNullUrlCharsetFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parse_string_null_format_116, method, 'testParseStringNullFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseStringNullFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parse_url_charset_null_format_119, method, 'testParseUrlCharsetNullFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseUrlCharsetNullFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parser_url_null_charset_format_118, method, 'testParserUrlNullCharsetFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParserUrlNullCharsetFormat()V|Ljava/lang/Exception;').
name_ref(m_test_provided_header_99, method, 'testProvidedHeader', 'Lorg/apache/commons/csv/CSVParserTest;.testProvidedHeader()V|Ljava/lang/Exception;').
name_ref(m_test_provided_header_auto_100, method, 'testProvidedHeaderAuto', 'Lorg/apache/commons/csv/CSVParserTest;.testProvidedHeaderAuto()V|Ljava/lang/Exception;').
name_ref(m_test_roundtrip_92, method, 'testRoundtrip', 'Lorg/apache/commons/csv/CSVParserTest;.testRoundtrip()V|Ljava/lang/Exception;').
name_ref(m_test_skip_auto_header_97, method, 'testSkipAutoHeader', 'Lorg/apache/commons/csv/CSVParserTest;.testSkipAutoHeader()V|Ljava/lang/Exception;').
name_ref(m_test_skip_set_header_96, method, 'testSkipSetHeader', 'Lorg/apache/commons/csv/CSVParserTest;.testSkipSetHeader()V|Ljava/lang/Exception;').
name_ref(m_to_string_153, method, 'toString', 'Lorg/apache/commons/csv/Token;.toString()Ljava/lang/String;').
name_ref(m_to_string_29, method, 'toString', 'Lorg/apache/commons/csv/CSVFormat;.toString()Ljava/lang/String;').
name_ref(m_token_54, method, 'Token', 'Lorg/apache/commons/csv/Token;.()V').
name_ref(m_trim_trailing_spaces_139, method, 'trimTrailingSpaces', 'Lorg/apache/commons/csv/Lexer;.trimTrailingSpaces(Ljava/lang/StringBuilder;)V').
name_ref(m_validate_30, method, 'validate', 'Lorg/apache/commons/csv/CSVFormat;.validate()V|Ljava/lang/IllegalStateException;').
name_ref(m_validate_line_numbers_123, method, 'validateLineNumbers', 'Lorg/apache/commons/csv/CSVParserTest;.validateLineNumbers(Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_validate_record_numbers_122, method, 'validateRecordNumbers', 'Lorg/apache/commons/csv/CSVParserTest;.validateRecordNumbers(Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_value_of_37, method, 'valueOf', 'Ljava/lang/Character;.valueOf(C)Ljava/lang/Character;').
name_ref(m_value_of_46, method, 'valueOf', 'Ljava/lang/String;.valueOf(C)Ljava/lang/String;').
name_ref(m_with_comment_start_32, method, 'withCommentStart', 'Lorg/apache/commons/csv/CSVFormat;.withCommentStart(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_comment_start_33, method, 'withCommentStart', 'Lorg/apache/commons/csv/CSVFormat;.withCommentStart(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_delimiter_34, method, 'withDelimiter', 'Lorg/apache/commons/csv/CSVFormat;.withDelimiter(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_escape_35, method, 'withEscape', 'Lorg/apache/commons/csv/CSVFormat;.withEscape(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_escape_36, method, 'withEscape', 'Lorg/apache/commons/csv/CSVFormat;.withEscape(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_header_38, method, 'withHeader', 'Lorg/apache/commons/csv/CSVFormat;.withHeader([Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_ignore_empty_lines_4, method, 'withIgnoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreEmptyLines(Z)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_ignore_surrounding_spaces_39, method, 'withIgnoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreSurroundingSpaces(Z)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_null_string_40, method, 'withNullString', 'Lorg/apache/commons/csv/CSVFormat;.withNullString(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_quote_char_41, method, 'withQuoteChar', 'Lorg/apache/commons/csv/CSVFormat;.withQuoteChar(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_quote_char_42, method, 'withQuoteChar', 'Lorg/apache/commons/csv/CSVFormat;.withQuoteChar(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_quote_policy_43, method, 'withQuotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.withQuotePolicy(Lorg/apache/commons/csv/Quote;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_record_separator_44, method, 'withRecordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.withRecordSeparator(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_record_separator_45, method, 'withRecordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.withRecordSeparator(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_skip_header_record_47, method, 'withSkipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.withSkipHeaderRecord(Z)Lorg/apache/commons/csv/CSVFormat;').
name_ref(q_default_2, q_name, 'CSVFormat.DEFAULT', 'Lorg/apache/commons/csv/CSVFormat;:Lorg/apache/commons/csv/CSVFormat;.DEFAULT)Lorg/apache/commons/csv/CSVFormat;').
name_ref(q_none_1, q_name, 'Quote.NONE', 'Lorg/apache/commons/csv/Quote;:Lorg/apache/commons/csv/Quote;.NONE)Lorg/apache/commons/csv/Quote;').

%%% End of Code Facts