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
class(csvrecord_1, 'org.apache.commons.csv.CSVRecord').

%%% Methods
%csvparser_1 - org.apache.commons.csv.CSVParser
method(m_parse_53, range(csvparser_1, 4493, 1219, 136, 161)).
method(m_parse_54, range(csvparser_1, 5718, 744, 163, 181)).
method(m_parse_55, range(csvparser_1, 6468, 1085, 183, 209)).
method(m_csvparser_32, range(csvparser_1, 8023, 1069, 227, 251)).
method(m_add_record_value_61, range(csvparser_1, 9098, 345, 253, 261)).
method(m_close_65, range(csvparser_1, 9449, 239, 263, 273)).
method(m_get_current_line_number_66, range(csvparser_1, 9694, 385, 275, 287)).
method(m_get_header_map_67, range(csvparser_1, 10085, 404, 289, 298)).
method(m_get_record_number_68, range(csvparser_1, 10495, 364, 300, 312)).
method(m_get_records_69, range(csvparser_1, 10865, 531, 314, 328)).
method(m_get_records_70, range(csvparser_1, 11402, 776, 330, 351)).
method(m_initialize_header_60, range(csvparser_1, 12184, 1866, 353, 394)).
method(m_is_closed_79, range(csvparser_1, 14056, 71, 396, 398)).
method(m_iterator_80, range(csvparser_1, 14133, 1789, 400, 454)).
method(m_get_next_record_81, range(csvparser_1, 14534, 314, 412, 419)).
method(m_has_next_82, range(csvparser_1, 14862, 306, 421, 430)).
method(m_next_83, range(csvparser_1, 15182, 614, 432, 448)).
method(m_remove_84, range(csvparser_1, 15810, 95, 450, 452)).
method(m_next_record_72, range(csvparser_1, 15928, 1959, 456, 505)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
method(m_is_line_break_5, range(csvformat_1, 7598, 312, 235, 245)).
method(m_is_line_break_6, range(csvformat_1, 7916, 366, 247, 257)).
method(m_new_format_8, range(csvformat_1, 8288, 488, 259, 269)).
method(m_csvformat_3, range(csvformat_1, 8782, 2766, 271, 331)).
method(m_equals_12, range(csvformat_1, 11554, 1978, 333, 400)).
method(m_format_13, range(csvformat_1, 13538, 546, 402, 418)).
method(m_get_comment_start_14, range(csvformat_1, 14090, 221, 420, 427)).
method(m_get_delimiter_15, range(csvformat_1, 14317, 203, 429, 436)).
method(m_get_escape_16, range(csvformat_1, 14526, 176, 438, 445)).
method(m_get_header_17, range(csvformat_1, 14708, 269, 447, 454)).
method(m_get_ignore_empty_headers_18, range(csvformat_1, 14983, 344, 456, 464)).
method(m_get_ignore_empty_lines_19, range(csvformat_1, 15333, 327, 466, 474)).
method(m_get_ignore_surrounding_spaces_20, range(csvformat_1, 15666, 330, 476, 484)).
method(m_get_null_string_21, range(csvformat_1, 16002, 556, 486, 501)).
method(m_get_quote_char_22, range(csvformat_1, 16564, 235, 503, 510)).
method(m_get_quote_policy_23, range(csvformat_1, 16805, 167, 512, 519)).
method(m_get_record_separator_24, range(csvformat_1, 16978, 192, 521, 528)).
method(m_get_skip_header_record_25, range(csvformat_1, 17176, 200, 530, 537)).
method(m_hash_code_26, range(csvformat_1, 17382, 962, 539, 557)).
method(m_is_commenting_enabled_27, range(csvformat_1, 18350, 349, 559, 568)).
method(m_is_escaping_28, range(csvformat_1, 18705, 193, 570, 577)).
method(m_is_null_handling_29, range(csvformat_1, 18904, 206, 579, 586)).
method(m_is_quoting_30, range(csvformat_1, 19116, 198, 588, 595)).
method(m_parse_31, range(csvformat_1, 19320, 449, 597, 612)).
method(m_print_33, range(csvformat_1, 19775, 414, 614, 629)).
method(m_to_string_34, range(csvformat_1, 20195, 1300, 631, 667)).
method(m_validate_11, range(csvformat_1, 21501, 1917, 669, 710)).
method(m_with_comment_start_36, range(csvformat_1, 23424, 626, 712, 725)).
method(m_with_comment_start_37, range(csvformat_1, 24056, 984, 727, 745)).
method(m_with_delimiter_38, range(csvformat_1, 25046, 794, 747, 763)).
method(m_with_escape_39, range(csvformat_1, 25846, 484, 765, 776)).
method(m_with_escape_40, range(csvformat_1, 26336, 842, 778, 794)).
method(m_with_header_42, range(csvformat_1, 27184, 941, 796, 817)).
method(m_with_ignore_empty_headers_43, range(csvformat_1, 28131, 723, 819, 831)).
method(m_with_ignore_empty_lines_4, range(csvformat_1, 28860, 723, 833, 845)).
method(m_with_ignore_surrounding_spaces_44, range(csvformat_1, 29589, 682, 847, 859)).
method(m_with_null_string_45, range(csvformat_1, 30277, 938, 861, 880)).
method(m_with_quote_char_46, range(csvformat_1, 31221, 485, 882, 893)).
method(m_with_quote_char_47, range(csvformat_1, 31712, 832, 895, 911)).
method(m_with_quote_policy_48, range(csvformat_1, 32550, 575, 913, 925)).
method(m_with_record_separator_49, range(csvformat_1, 33131, 622, 927, 941)).
method(m_with_record_separator_50, range(csvformat_1, 33759, 800, 943, 959)).
method(m_with_skip_header_record_52, range(csvformat_1, 34565, 616, 961, 974)).
%constants_1 - org.apache.commons.csv.Constants
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
method(m_test_backslash_escaping_92, range(csvparser_test_1, 2878, 2022, 83, 125)).
method(m_test_backslash_escaping2_93, range(csvparser_test_1, 4906, 1014, 127, 155)).
method(m_test_backslash_escaping_old_94, range(csvparser_test_1, 5926, 1412, 157, 189)).
method(m_test_bom_95, range(csvparser_test_1, 7344, 600, 191, 205)).
method(m_test_bominput_stream_96, range(csvparser_test_1, 7950, 45, 207, 208)).
method(m_test_carriage_return_endings_97, range(csvparser_test_1, 8772, 339, 227, 234)).
method(m_test_carriage_return_line_feed_endings_98, range(csvparser_test_1, 9117, 353, 236, 243)).
method(m_test_close_99, range(csvparser_test_1, 9476, 464, 245, 254)).
method(m_test_csv57_100, range(csvparser_test_1, 9946, 280, 256, 263)).
method(m_test_default_format_101, range(csvparser_test_1, 10232, 1178, 265, 301)).
method(m_test_empty_file_102, range(csvparser_test_1, 11416, 200, 303, 308)).
method(m_test_empty_line_behaviour_csv_103, range(csvparser_test_1, 11622, 829, 310, 331)).
method(m_test_empty_line_behaviour_excel_104, range(csvparser_test_1, 12457, 883, 333, 356)).
method(m_test_end_of_file_behavior_csv_105, range(csvparser_test_1, 13346, 1059, 358, 384)).
method(m_test_end_of_file_behaviour_excel_106, range(csvparser_test_1, 14411, 1093, 386, 414)).
method(m_test_excel_format1_107, range(csvparser_test_1, 15510, 884, 416, 436)).
method(m_test_excel_format2_108, range(csvparser_test_1, 16400, 688, 438, 456)).
method(m_test_for_each_109, range(csvparser_test_1, 17094, 594, 458, 472)).
method(m_test_get_header_map_110, range(csvparser_test_1, 17694, 1058, 474, 496)).
method(m_test_duplicate_headers_111, range(csvparser_test_1, 18758, 206, 498, 501)).
method(m_test_get_line_112, range(csvparser_test_1, 18970, 360, 503, 512)).
method(m_test_get_line_number_with_cr_113, range(csvparser_test_1, 19336, 126, 514, 517)).
method(m_test_get_line_number_with_crlf_114, range(csvparser_test_1, 19468, 114, 519, 522)).
method(m_test_get_line_number_with_lf_115, range(csvparser_test_1, 19588, 126, 524, 527)).
method(m_test_get_one_line_116, range(csvparser_test_1, 19720, 287, 529, 535)).
method(m_test_get_one_line_custom_collection_117, range(csvparser_test_1, 20013, 334, 537, 543)).
method(m_test_get_one_line_one_parser_118, range(csvparser_test_1, 20353, 975, 545, 568)).
method(m_test_get_record_number_with_cr_119, range(csvparser_test_1, 21334, 130, 570, 573)).
method(m_test_get_record_number_with_crlf_120, range(csvparser_test_1, 21470, 118, 575, 578)).
method(m_test_get_record_number_with_lf_121, range(csvparser_test_1, 21594, 130, 580, 583)).
method(m_test_get_records_122, range(csvparser_test_1, 21730, 484, 585, 595)).
method(m_test_get_record_with_multi_line_values_123, range(csvparser_test_1, 22220, 1230, 597, 620)).
method(m_test_header_124, range(csvparser_test_1, 23456, 584, 622, 637)).
method(m_test_header_missing_125, range(csvparser_test_1, 24046, 532, 639, 653)).
method(m_test_headers_missing_exception_126, range(csvparser_test_1, 24584, 252, 655, 659)).
method(m_test_headers_missing_127, range(csvparser_test_1, 24842, 231, 661, 665)).
method(m_test_header_missing_with_null_128, range(csvparser_test_1, 25079, 257, 667, 671)).
method(m_test_header_comment_130, range(csvparser_test_1, 25342, 624, 673, 688)).
method(m_test_ignore_empty_lines_131, range(csvparser_test_1, 25972, 444, 690, 699)).
method(m_test_invalid_format_132, range(csvparser_test_1, 26422, 238, 701, 705)).
method(m_test_iterator_133, range(csvparser_test_1, 26666, 1048, 707, 734)).
method(m_test_line_feed_endings_134, range(csvparser_test_1, 27720, 333, 736, 743)).
method(m_test_mapped_but_not_set_as_outlook2007_contact_export_135, range(csvparser_test_1, 28059, 1286, 745, 778)).
method(m_test_multiple_iterators_136, range(csvparser_test_1, 29351, 751, 780, 797)).
method(m_test_new_csvparser_null_reader_format_137, range(csvparser_test_1, 30108, 180, 799, 802)).
method(m_test_new_csvparser_reader_null_format_138, range(csvparser_test_1, 30294, 183, 804, 807)).
method(m_test_no_header_map_139, range(csvparser_test_1, 30483, 230, 809, 814)).
method(m_test_parse_file_null_format_140, range(csvparser_test_1, 30719, 186, 816, 819)).
method(m_test_parse_null_file_format_141, range(csvparser_test_1, 30911, 198, 821, 824)).
method(m_test_parse_null_string_format_142, range(csvparser_test_1, 31115, 176, 826, 829)).
method(m_test_parse_null_url_charset_format_143, range(csvparser_test_1, 31297, 204, 831, 834)).
method(m_test_parser_url_null_charset_format_144, range(csvparser_test_1, 31507, 259, 836, 840)).
method(m_test_parse_string_null_format_145, range(csvparser_test_1, 31772, 160, 842, 845)).
method(m_test_parse_url_charset_null_format_146, range(csvparser_test_1, 31938, 265, 847, 851)).
method(m_test_provided_header_147, range(csvparser_test_1, 32209, 799, 853, 872)).
method(m_test_provided_header_auto_148, range(csvparser_test_1, 33014, 790, 874, 893)).
method(m_test_roundtrip_149, range(csvparser_test_1, 33810, 454, 895, 905)).
method(m_test_skip_auto_header_150, range(csvparser_test_1, 34270, 412, 907, 915)).
method(m_test_skip_set_header_151, range(csvparser_test_1, 34688, 468, 917, 926)).
method(m_validate_line_numbers_152, range(csvparser_test_1, 35162, 853, 928, 942)).
method(m_validate_record_numbers_153, range(csvparser_test_1, 36021, 909, 944, 960)).
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
method(m_extended_buffered_reader_59, range(extended_buffered_reader_1, 1632, 156, 47, 52)).
method(m_read_169, range(extended_buffered_reader_1, 1794, 255, 54, 62)).
method(m_get_last_char_171, range(extended_buffered_reader_1, 2055, 555, 64, 74)).
method(m_read_172, range(extended_buffered_reader_1, 2616, 761, 76, 104)).
method(m_read_line_173, range(extended_buffered_reader_1, 3383, 739, 106, 128)).
method(m_look_ahead_174, range(extended_buffered_reader_1, 4128, 483, 130, 145)).
method(m_get_current_line_number_175, range(extended_buffered_reader_1, 4617, 442, 147, 158)).
method(m_is_closed_176, range(extended_buffered_reader_1, 5065, 56, 160, 162)).
method(m_close_177, range(extended_buffered_reader_1, 5127, 347, 164, 176)).
%lexer_1 - org.apache.commons.csv.Lexer
method(m_lexer_58, range(lexer_1, 2338, 581, 61, 70)).
method(m_next_token_87, range(lexer_1, 2925, 3545, 72, 165)).
method(m_parse_simple_token_185, range(lexer_1, 6476, 1923, 167, 218)).
method(m_parse_encapsulated_token_188, range(lexer_1, 8405, 3321, 220, 289)).
method(m_map_null_to_disabled_178, range(lexer_1, 11732, 110, 291, 293)).
method(m_get_current_line_number_189, range(lexer_1, 11848, 182, 295, 302)).
method(m_read_escape_190, range(lexer_1, 12080, 1518, 305, 346)).
method(m_trim_trailing_spaces_191, range(lexer_1, 13604, 311, 348, 356)).
method(m_read_end_of_line_179, range(lexer_1, 13921, 485, 358, 370)).
method(m_is_closed_192, range(lexer_1, 14412, 60, 372, 374)).
method(m_is_whitespace_193, range(lexer_1, 14478, 192, 376, 381)).
method(m_is_start_of_line_180, range(lexer_1, 14676, 338, 383, 391)).
method(m_is_end_of_file_181, range(lexer_1, 15020, 158, 393, 398)).
method(m_is_delimiter_182, range(lexer_1, 15184, 73, 400, 402)).
method(m_is_escape_186, range(lexer_1, 15263, 67, 404, 406)).
method(m_is_quote_char_184, range(lexer_1, 15336, 73, 408, 410)).
method(m_is_comment_start_183, range(lexer_1, 15415, 79, 412, 414)).
method(m_is_meta_char_194, range(lexer_1, 15500, 182, 416, 421)).
method(m_close_195, range(lexer_1, 15688, 187, 423, 431)).
%token_1 - org.apache.commons.csv.Token
method(m_reset_86, range(token_1, 1883, 99, 60, 64)).
method(m_to_string_198, range(token_1, 1988, 206, 66, 74)).
%assertions_1 - org.apache.commons.csv.Assertions
method(m_assertions_1, range(assertions_1, 943, 63, 27, 29)).
method(m_not_null_2, range(assertions_1, 1012, 232, 31, 35)).
%csvrecord_1 - org.apache.commons.csv.CSVRecord
method(m_csvrecord_89, range(csvrecord_1, 1603, 309, 51, 57)).
method(m_get_154, range(csvrecord_1, 1918, 232, 59, 68)).
method(m_get_155, range(csvrecord_1, 2156, 224, 70, 79)).
method(m_get_156, range(csvrecord_1, 2386, 1325, 81, 111)).
method(m_get_comment_157, range(csvrecord_1, 3717, 244, 113, 121)).
method(m_get_record_number_158, range(csvrecord_1, 3967, 196, 123, 130)).
method(m_is_consistent_159, range(csvrecord_1, 4169, 416, 132, 140)).
method(m_is_mapped_160, range(csvrecord_1, 4591, 354, 142, 151)).
method(m_is_set_161, range(csvrecord_1, 4951, 356, 153, 162)).
method(m_iterator_162, range(csvrecord_1, 5313, 219, 164, 171)).
method(m_put_in_163, range(csvrecord_1, 5538, 541, 173, 190)).
method(m_size_164, range(csvrecord_1, 6085, 167, 192, 199)).
method(m_to_list_165, range(csvrecord_1, 6258, 199, 201, 209)).
method(m_to_map_166, range(csvrecord_1, 6463, 273, 211, 218)).
method(m_to_string_167, range(csvrecord_1, 6742, 86, 220, 223)).
method(m_values_73, range(csvrecord_1, 6834, 48, 225, 227)).

%%% Blocks
%csvparser_1 - org.apache.commons.csv.CSVParser
block(csvparser_1_block1, block, csvparser_1_code19, body, range(csvparser_1, 8836, 256, 244, 251)).
block(csvparser_1_block2, block, csvparser_1_code30, body, range(csvparser_1, 9128, 315, 253, 261)).
block(csvparser_1_block3, block, csvparser_1_stmt8, then_statement, range(csvparser_1, 9293, 47, 256, 258)).
block(csvparser_1_block4, block, csvparser_1_stmt8, else_statement, range(csvparser_1, 9346, 91, 258, 260)).
block(csvparser_1_block5, block, csvparser_1_code37, body, range(csvparser_1, 12497, 1553, 359, 394)).
block(csvparser_1_block6, block, csvparser_1_stmt12, then_statement, range(csvparser_1, 12640, 1381, 362, 392)).
block(csvparser_1_block7, block, csvparser_1_stmt15, then_statement, range(csvparser_1, 12786, 262, 366, 372)).
block(csvparser_1_block8, block, csvparser_1_stmt17, then_statement, range(csvparser_1, 12959, 75, 369, 371)).
block(csvparser_1_block9, block, csvparser_1_stmt15, else_statement, range(csvparser_1, 13054, 174, 372, 377)).
block(csvparser_1_block10, block, csvparser_1_stmt19, then_statement, range(csvparser_1, 13316, 695, 380, 391)).
block(csvparser_1_block11, block, csvparser_1_stmt20, body, range(csvparser_1, 13380, 617, 381, 390)).
block(csvparser_1_block12, block, csvparser_1_stmt24, then_statement, range(csvparser_1, 13708, 211, 385, 388)).
block(csvparser_1_block13, block, csvparser_1_code70, body, range(csvparser_1, 16252, 1635, 463, 505)).
block(csvparser_1_block14, block, csvparser_1_stmt29, body, range(csvparser_1, 16360, 1151, 467, 496)).
block(csvparser_1_block15, block, csvparser_1_stmt37, then_statement, range(csvparser_1, 17591, 267, 498, 503)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
block(csvformat_1_block1, block, csvformat_1_code34, body, range(csvformat_1, 7868, 42, 243, 245)).
block(csvformat_1_block2, block, csvformat_1_code35, body, range(csvformat_1, 8219, 63, 255, 257)).
block(csvformat_1_block3, block, csvformat_1_code36, body, range(csvformat_1, 10412, 1136, 303, 331)).
block(csvformat_1_block4, block, csvformat_1_stmt3, then_statement, range(csvformat_1, 10450, 99, 304, 306)).
block(csvformat_1_block5, block, csvformat_1_stmt14, then_statement, range(csvformat_1, 11016, 43, 317, 319)).
block(csvformat_1_block6, block, csvformat_1_stmt14, else_statement, range(csvformat_1, 11065, 407, 319, 328)).
block(csvformat_1_block7, block, csvformat_1_stmt17, body, range(csvformat_1, 11175, 245, 321, 326)).
block(csvformat_1_block8, block, csvformat_1_code51, body, range(csvformat_1, 14275, 36, 425, 427)).
block(csvformat_1_block9, block, csvformat_1_code52, body, range(csvformat_1, 14487, 33, 434, 436)).
block(csvformat_1_block10, block, csvformat_1_code53, body, range(csvformat_1, 14672, 30, 443, 445)).
block(csvformat_1_block11, block, csvformat_1_code54, body, range(csvformat_1, 14915, 62, 452, 454)).
block(csvformat_1_block12, block, csvformat_1_code55, body, range(csvformat_1, 15620, 40, 472, 474)).
block(csvformat_1_block13, block, csvformat_1_code56, body, range(csvformat_1, 15949, 47, 482, 484)).
block(csvformat_1_block14, block, csvformat_1_code57, body, range(csvformat_1, 16524, 34, 499, 501)).
block(csvformat_1_block15, block, csvformat_1_code58, body, range(csvformat_1, 16766, 33, 508, 510)).
block(csvformat_1_block16, block, csvformat_1_code59, body, range(csvformat_1, 19722, 47, 610, 612)).
block(csvformat_1_block17, block, csvformat_1_code61, body, range(csvformat_1, 21723, 1695, 674, 710)).
block(csvformat_1_block18, block, csvformat_1_stmt30, then_statement, range(csvformat_1, 21794, 166, 675, 678)).
block(csvformat_1_block19, block, csvformat_1_stmt31, then_statement, range(csvformat_1, 22025, 160, 680, 683)).
block(csvformat_1_block20, block, csvformat_1_stmt32, then_statement, range(csvformat_1, 22262, 173, 685, 688)).
block(csvformat_1_block21, block, csvformat_1_stmt33, then_statement, range(csvformat_1, 22502, 173, 690, 693)).
block(csvformat_1_block22, block, csvformat_1_stmt34, then_statement, range(csvformat_1, 22736, 170, 695, 698)).
block(csvformat_1_block23, block, csvformat_1_stmt35, then_statement, range(csvformat_1, 22965, 112, 700, 702)).
block(csvformat_1_block24, block, csvformat_1_code62, body, range(csvformat_1, 25460, 380, 756, 763)).
block(csvformat_1_block25, block, csvformat_1_stmt37, then_statement, range(csvformat_1, 25498, 99, 757, 759)).
block(csvformat_1_block26, block, csvformat_1_code64, body, range(csvformat_1, 26269, 61, 774, 776)).
block(csvformat_1_block27, block, csvformat_1_code65, body, range(csvformat_1, 26794, 384, 787, 794)).
block(csvformat_1_block28, block, csvformat_1_stmt40, then_statement, range(csvformat_1, 26829, 106, 788, 790)).
block(csvformat_1_block29, block, csvformat_1_code67, body, range(csvformat_1, 27881, 244, 813, 817)).
block(csvformat_1_block30, block, csvformat_1_code69, body, range(csvformat_1, 28608, 246, 827, 831)).
block(csvformat_1_block31, block, csvformat_1_code71, body, range(csvformat_1, 29339, 244, 841, 845)).
block(csvformat_1_block32, block, csvformat_1_code73, body, range(csvformat_1, 30027, 244, 855, 859)).
block(csvformat_1_block33, block, csvformat_1_code75, body, range(csvformat_1, 30971, 244, 876, 880)).
block(csvformat_1_block34, block, csvformat_1_code77, body, range(csvformat_1, 32164, 380, 904, 911)).
block(csvformat_1_block35, block, csvformat_1_stmt47, then_statement, range(csvformat_1, 32202, 99, 905, 907)).
block(csvformat_1_block36, block, csvformat_1_code79, body, range(csvformat_1, 33677, 76, 939, 941)).
block(csvformat_1_block37, block, csvformat_1_code80, body, range(csvformat_1, 34315, 244, 955, 959)).
%constants_1 - org.apache.commons.csv.Constants
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
block(csvparser_test_1_block1, block, csvparser_test_1_code13, body, range(csvparser_test_1, 25146, 190, 668, 671)).
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
block(extended_buffered_reader_1_block1, block, extended_buffered_reader_1_code11, body, range(extended_buffered_reader_1, 1758, 30, 50, 52)).
block(extended_buffered_reader_1_block2, block, extended_buffered_reader_1_code12, body, range(extended_buffered_reader_1, 1845, 204, 55, 62)).
block(extended_buffered_reader_1_block3, block, extended_buffered_reader_1_stmt3, then_statement, range(extended_buffered_reader_1, 1953, 37, 57, 59)).
block(extended_buffered_reader_1_block4, block, extended_buffered_reader_1_code16, body, range(extended_buffered_reader_1, 2578, 32, 72, 74)).
%lexer_1 - org.apache.commons.csv.Lexer
block(lexer_1_block1, block, lexer_1_code3, body, range(lexer_1, 2495, 424, 62, 70)).
block(lexer_1_block2, block, lexer_1_code10, body, range(lexer_1, 3365, 3105, 83, 165)).
block(lexer_1_block3, block, lexer_1_stmt11, then_statement, range(lexer_1, 3884, 505, 97, 110)).
block(lexer_1_block4, block, lexer_1_stmt12, body, range(lexer_1, 3937, 442, 98, 109)).
block(lexer_1_block5, block, lexer_1_stmt13, then_statement, range(lexer_1, 4540, 130, 113, 117)).
block(lexer_1_block6, block, lexer_1_stmt14, then_statement, range(lexer_1, 4730, 390, 119, 130)).
block(lexer_1_block7, block, lexer_1_stmt15, body, range(lexer_1, 5235, 1207, 133, 163)).
block(lexer_1_block8, block, lexer_1_stmt16, then_statement, range(lexer_1, 5336, 166, 135, 140)).
block(lexer_1_block9, block, lexer_1_stmt17, then_statement, range(lexer_1, 5602, 99, 143, 146)).
block(lexer_1_block10, block, lexer_1_stmt19, then_statement, range(lexer_1, 5716, 156, 146, 150)).
block(lexer_1_block11, block, lexer_1_stmt20, then_statement, range(lexer_1, 5898, 108, 150, 153)).
block(lexer_1_block12, block, lexer_1_stmt21, then_statement, range(lexer_1, 6032, 206, 153, 158)).
block(lexer_1_block13, block, lexer_1_stmt21, else_statement, range(lexer_1, 6244, 188, 158, 162)).
block(lexer_1_block14, block, lexer_1_code17, body, range(lexer_1, 7246, 1153, 186, 218)).
block(lexer_1_block15, block, lexer_1_stmt24, body, range(lexer_1, 7346, 927, 188, 211)).
block(lexer_1_block16, block, lexer_1_stmt25, then_statement, range(lexer_1, 7383, 77, 189, 192)).
block(lexer_1_block17, block, lexer_1_stmt28, then_statement, range(lexer_1, 7487, 134, 192, 196)).
block(lexer_1_block18, block, lexer_1_stmt29, then_statement, range(lexer_1, 7648, 74, 196, 199)).
block(lexer_1_block19, block, lexer_1_stmt32, then_statement, range(lexer_1, 7746, 399, 199, 207)).
block(lexer_1_block20, block, lexer_1_stmt32, else_statement, range(lexer_1, 8151, 112, 207, 210)).
block(lexer_1_block21, block, lexer_1_stmt35, then_statement, range(lexer_1, 8312, 58, 213, 215)).
block(lexer_1_block22, block, lexer_1_code19, body, range(lexer_1, 11782, 60, 291, 293)).
block(lexer_1_block23, block, lexer_1_code20, body, range(lexer_1, 14168, 238, 363, 370)).
block(lexer_1_block24, block, lexer_1_stmt38, then_statement, range(lexer_1, 14256, 107, 365, 368)).
block(lexer_1_block25, block, lexer_1_code21, body, range(lexer_1, 14951, 63, 389, 391)).
block(lexer_1_block26, block, lexer_1_code22, body, range(lexer_1, 15135, 43, 396, 398)).
block(lexer_1_block27, block, lexer_1_code23, body, range(lexer_1, 15218, 39, 400, 402)).
block(lexer_1_block28, block, lexer_1_code24, body, range(lexer_1, 15294, 36, 404, 406)).
block(lexer_1_block29, block, lexer_1_code25, body, range(lexer_1, 15370, 39, 408, 410)).
block(lexer_1_block30, block, lexer_1_code26, body, range(lexer_1, 15452, 42, 412, 414)).
%token_1 - org.apache.commons.csv.Token
block(token_1_block1, block, token_1_code18, body, range(token_1, 1896, 86, 60, 64)).
%assertions_1 - org.apache.commons.csv.Assertions
block(assertions_1_block1, block, assertions_1_code3, body, range(assertions_1, 1091, 153, 31, 35)).
block(assertions_1_block2, block, assertions_1_stmt1, then_statement, range(assertions_1, 1124, 114, 32, 34)).
%csvrecord_1 - org.apache.commons.csv.CSVRecord
block(csvrecord_1_block1, block, csvrecord_1_code14, body, range(csvrecord_1, 1731, 181, 52, 57)).
block(csvrecord_1_block2, block, csvrecord_1_code21, body, range(csvrecord_1, 6852, 30, 225, 227)).

%%% Statements
%csvparser_1 - org.apache.commons.csv.CSVParser
stmt(csvparser_1_stmt1, expression_statement, csvparser_1_block1, (statements, 0), range(csvparser_1, 8846, 37, 245, 245)).
stmt(csvparser_1_stmt2, expression_statement, csvparser_1_block1, (statements, 1), range(csvparser_1, 8892, 37, 246, 246)).
stmt(csvparser_1_stmt3, expression_statement, csvparser_1_block1, (statements, 2), range(csvparser_1, 8939, 21, 248, 248)).
stmt(csvparser_1_stmt4, expression_statement, csvparser_1_block1, (statements, 3), range(csvparser_1, 8969, 67, 249, 249)).
stmt(csvparser_1_stmt5, expression_statement, csvparser_1_block1, (statements, 4), range(csvparser_1, 9045, 41, 250, 250)).
stmt(csvparser_1_stmt6, variable_declaration_statement, csvparser_1_block2, (statements, 0), range(csvparser_1, 9138, 59, 254, 254)).
stmt(csvparser_1_stmt7, variable_declaration_statement, csvparser_1_block2, (statements, 1), range(csvparser_1, 9206, 54, 255, 255)).
stmt(csvparser_1_stmt8, if_statement, csvparser_1_block2, (statements, 2), range(csvparser_1, 9269, 168, 256, 260)).
stmt(csvparser_1_stmt9, expression_statement, csvparser_1_block4, (statements, 0), range(csvparser_1, 9360, 67, 259, 259)).
stmt(csvparser_1_stmt10, variable_declaration_statement, csvparser_1_block5, (statements, 0), range(csvparser_1, 12507, 35, 360, 360)).
stmt(csvparser_1_stmt11, variable_declaration_statement, csvparser_1_block5, (statements, 1), range(csvparser_1, 12551, 54, 361, 361)).
stmt(csvparser_1_stmt12, if_statement, csvparser_1_block5, (statements, 2), range(csvparser_1, 12614, 1407, 362, 392)).
stmt(csvparser_1_stmt13, expression_statement, csvparser_1_block6, (statements, 0), range(csvparser_1, 12654, 46, 363, 363)).
stmt(csvparser_1_stmt14, variable_declaration_statement, csvparser_1_block6, (statements, 1), range(csvparser_1, 12714, 29, 365, 365)).
stmt(csvparser_1_stmt15, if_statement, csvparser_1_block6, (statements, 2), range(csvparser_1, 12756, 472, 366, 377)).
stmt(csvparser_1_stmt16, variable_declaration_statement, csvparser_1_block7, (statements, 0), range(csvparser_1, 12871, 47, 368, 368)).
stmt(csvparser_1_stmt17, if_statement, csvparser_1_block7, (statements, 1), range(csvparser_1, 12935, 99, 369, 371)).
stmt(csvparser_1_stmt18, expression_statement, csvparser_1_block8, (statements, 0), range(csvparser_1, 12981, 35, 370, 370)).
stmt(csvparser_1_stmt19, if_statement, csvparser_1_block6, (statements, 3), range(csvparser_1, 13290, 721, 380, 391)).
stmt(csvparser_1_stmt20, for_statement, csvparser_1_block10, (statements, 0), range(csvparser_1, 13334, 663, 381, 390)).
stmt(csvparser_1_stmt21, variable_declaration_statement, csvparser_1_block11, (statements, 0), range(csvparser_1, 13402, 38, 382, 382)).
stmt(csvparser_1_stmt22, variable_declaration_statement, csvparser_1_block11, (statements, 1), range(csvparser_1, 13461, 58, 383, 383)).
stmt(csvparser_1_stmt23, variable_declaration_statement, csvparser_1_block11, (statements, 2), range(csvparser_1, 13540, 52, 384, 384)).
stmt(csvparser_1_stmt24, if_statement, csvparser_1_block11, (statements, 3), range(csvparser_1, 13613, 306, 385, 388)).
stmt(csvparser_1_stmt25, expression_statement, csvparser_1_block11, (statements, 4), range(csvparser_1, 13940, 39, 389, 389)).
stmt(csvparser_1_stmt26, variable_declaration_statement, csvparser_1_block13, (statements, 0), range(csvparser_1, 16262, 24, 464, 464)).
stmt(csvparser_1_stmt27, expression_statement, csvparser_1_block13, (statements, 1), range(csvparser_1, 16295, 20, 465, 465)).
stmt(csvparser_1_stmt28, variable_declaration_statement, csvparser_1_block13, (statements, 2), range(csvparser_1, 16324, 24, 466, 466)).
stmt(csvparser_1_stmt29, do_statement, csvparser_1_block13, (statements, 3), range(csvparser_1, 16357, 1196, 467, 496)).
stmt(csvparser_1_stmt30, expression_statement, csvparser_1_block14, (statements, 0), range(csvparser_1, 16374, 27, 468, 468)).
stmt(csvparser_1_stmt31, expression_statement, csvparser_1_block14, (statements, 1), range(csvparser_1, 16414, 41, 469, 469)).
stmt(csvparser_1_stmt32, switch_statement, csvparser_1_block14, (statements, 2), range(csvparser_1, 16468, 1033, 470, 495)).
stmt(csvparser_1_stmt33, expression_statement, csvparser_1_stmt32, (statements, 1), range(csvparser_1, 16543, 22, 472, 472)).
stmt(csvparser_1_stmt34, break_statement, csvparser_1_stmt32, (statements, 2), range(csvparser_1, 16582, 6, 473, 473)).
stmt(csvparser_1_stmt35, expression_statement, csvparser_1_stmt32, (statements, 4), range(csvparser_1, 16632, 22, 475, 475)).
stmt(csvparser_1_stmt36, break_statement, csvparser_1_stmt32, (statements, 5), range(csvparser_1, 16671, 6, 476, 476)).
stmt(csvparser_1_stmt37, if_statement, csvparser_1_block13, (statements, 4), range(csvparser_1, 17563, 295, 498, 503)).
stmt(csvparser_1_stmt38, expression_statement, csvparser_1_block15, (statements, 0), range(csvparser_1, 17605, 20, 499, 499)).
stmt(csvparser_1_stmt39, variable_declaration_statement, csvparser_1_block15, (statements, 1), range(csvparser_1, 17638, 57, 500, 500)).
stmt(csvparser_1_stmt40, expression_statement, csvparser_1_block15, (statements, 2), range(csvparser_1, 17708, 140, 501, 502)).
stmt(csvparser_1_stmt41, return_statement, csvparser_1_block13, (statements, 5), range(csvparser_1, 17867, 14, 504, 504)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
stmt(csvformat_1_stmt1, return_statement, csvformat_1_block1, (statements, 0), range(csvformat_1, 7878, 26, 244, 244)).
stmt(csvformat_1_stmt2, return_statement, csvformat_1_block2, (statements, 0), range(csvformat_1, 8229, 47, 256, 256)).
stmt(csvformat_1_stmt3, if_statement, csvformat_1_block3, (statements, 0), range(csvformat_1, 10422, 127, 304, 306)).
stmt(csvformat_1_stmt4, expression_statement, csvformat_1_block3, (statements, 1), range(csvformat_1, 10558, 27, 307, 307)).
stmt(csvformat_1_stmt5, expression_statement, csvformat_1_block3, (statements, 2), range(csvformat_1, 10594, 27, 308, 308)).
stmt(csvformat_1_stmt6, expression_statement, csvformat_1_block3, (statements, 3), range(csvformat_1, 10630, 31, 309, 309)).
stmt(csvformat_1_stmt7, expression_statement, csvformat_1_block3, (statements, 4), range(csvformat_1, 10670, 33, 310, 310)).
stmt(csvformat_1_stmt8, expression_statement, csvformat_1_block3, (statements, 5), range(csvformat_1, 10712, 21, 311, 311)).
stmt(csvformat_1_stmt9, expression_statement, csvformat_1_block3, (statements, 6), range(csvformat_1, 10742, 55, 312, 312)).
stmt(csvformat_1_stmt10, expression_statement, csvformat_1_block3, (statements, 7), range(csvformat_1, 10806, 45, 313, 313)).
stmt(csvformat_1_stmt11, expression_statement, csvformat_1_block3, (statements, 8), range(csvformat_1, 10860, 41, 314, 314)).
stmt(csvformat_1_stmt12, expression_statement, csvformat_1_block3, (statements, 9), range(csvformat_1, 10910, 39, 315, 315)).
stmt(csvformat_1_stmt13, expression_statement, csvformat_1_block3, (statements, 10), range(csvformat_1, 10958, 29, 316, 316)).
stmt(csvformat_1_stmt14, if_statement, csvformat_1_block3, (statements, 11), range(csvformat_1, 10996, 476, 317, 328)).
stmt(csvformat_1_stmt15, expression_statement, csvformat_1_block5, (statements, 0), range(csvformat_1, 11030, 19, 318, 318)).
stmt(csvformat_1_stmt16, variable_declaration_statement, csvformat_1_block6, (statements, 0), range(csvformat_1, 11079, 51, 320, 320)).
stmt(csvformat_1_stmt17, enhanced_for_statement, csvformat_1_block6, (statements, 1), range(csvformat_1, 11143, 277, 321, 326)).
stmt(csvformat_1_stmt18, expression_statement, csvformat_1_block6, (statements, 2), range(csvformat_1, 11433, 29, 327, 327)).
stmt(csvformat_1_stmt19, expression_statement, csvformat_1_block3, (statements, 12), range(csvformat_1, 11481, 41, 329, 329)).
stmt(csvformat_1_stmt20, expression_statement, csvformat_1_block3, (statements, 13), range(csvformat_1, 11531, 11, 330, 330)).
stmt(csvformat_1_stmt21, return_statement, csvformat_1_block8, (statements, 0), range(csvformat_1, 14285, 20, 426, 426)).
stmt(csvformat_1_stmt22, return_statement, csvformat_1_block9, (statements, 0), range(csvformat_1, 14497, 17, 435, 435)).
stmt(csvformat_1_stmt23, return_statement, csvformat_1_block10, (statements, 0), range(csvformat_1, 14682, 14, 444, 444)).
stmt(csvformat_1_stmt24, return_statement, csvformat_1_block11, (statements, 0), range(csvformat_1, 14925, 46, 453, 453)).
stmt(csvformat_1_stmt25, return_statement, csvformat_1_block12, (statements, 0), range(csvformat_1, 15630, 24, 473, 473)).
stmt(csvformat_1_stmt26, return_statement, csvformat_1_block13, (statements, 0), range(csvformat_1, 15959, 31, 483, 483)).
stmt(csvformat_1_stmt27, return_statement, csvformat_1_block14, (statements, 0), range(csvformat_1, 16534, 18, 500, 500)).
stmt(csvformat_1_stmt28, return_statement, csvformat_1_block15, (statements, 0), range(csvformat_1, 16776, 17, 509, 509)).
stmt(csvformat_1_stmt29, return_statement, csvformat_1_block16, (statements, 0), range(csvformat_1, 19732, 31, 611, 611)).
stmt(csvformat_1_stmt30, if_statement, csvformat_1_block17, (statements, 0), range(csvformat_1, 21733, 227, 675, 678)).
stmt(csvformat_1_stmt31, if_statement, csvformat_1_block17, (statements, 1), range(csvformat_1, 21970, 215, 680, 683)).
stmt(csvformat_1_stmt32, if_statement, csvformat_1_block17, (statements, 2), range(csvformat_1, 22195, 240, 685, 688)).
stmt(csvformat_1_stmt33, if_statement, csvformat_1_block17, (statements, 3), range(csvformat_1, 22445, 230, 690, 693)).
stmt(csvformat_1_stmt34, if_statement, csvformat_1_block17, (statements, 4), range(csvformat_1, 22685, 221, 695, 698)).
stmt(csvformat_1_stmt35, if_statement, csvformat_1_block17, (statements, 5), range(csvformat_1, 22916, 161, 700, 702)).
stmt(csvformat_1_stmt36, if_statement, csvformat_1_block17, (statements, 6), range(csvformat_1, 23087, 325, 704, 709)).
stmt(csvformat_1_stmt37, if_statement, csvformat_1_block24, (statements, 0), range(csvformat_1, 25470, 127, 757, 759)).
stmt(csvformat_1_stmt38, return_statement, csvformat_1_block24, (statements, 1), range(csvformat_1, 25606, 228, 760, 762)).
stmt(csvformat_1_stmt39, return_statement, csvformat_1_block26, (statements, 0), range(csvformat_1, 26279, 45, 775, 775)).
stmt(csvformat_1_stmt40, if_statement, csvformat_1_block27, (statements, 0), range(csvformat_1, 26804, 131, 788, 790)).
stmt(csvformat_1_stmt41, return_statement, csvformat_1_block27, (statements, 1), range(csvformat_1, 26944, 228, 791, 793)).
stmt(csvformat_1_stmt42, return_statement, csvformat_1_block29, (statements, 0), range(csvformat_1, 27891, 228, 814, 816)).
stmt(csvformat_1_stmt43, return_statement, csvformat_1_block30, (statements, 0), range(csvformat_1, 28618, 230, 828, 830)).
stmt(csvformat_1_stmt44, return_statement, csvformat_1_block31, (statements, 0), range(csvformat_1, 29349, 228, 842, 844)).
stmt(csvformat_1_stmt45, return_statement, csvformat_1_block32, (statements, 0), range(csvformat_1, 30037, 228, 856, 858)).
stmt(csvformat_1_stmt46, return_statement, csvformat_1_block33, (statements, 0), range(csvformat_1, 30981, 228, 877, 879)).
stmt(csvformat_1_stmt47, if_statement, csvformat_1_block34, (statements, 0), range(csvformat_1, 32174, 127, 905, 907)).
stmt(csvformat_1_stmt48, return_statement, csvformat_1_block34, (statements, 1), range(csvformat_1, 32310, 228, 908, 910)).
stmt(csvformat_1_stmt49, return_statement, csvformat_1_block36, (statements, 0), range(csvformat_1, 33687, 60, 940, 940)).
stmt(csvformat_1_stmt50, return_statement, csvformat_1_block37, (statements, 0), range(csvformat_1, 34325, 228, 956, 958)).
%constants_1 - org.apache.commons.csv.Constants
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
stmt(csvparser_test_1_stmt1, variable_declaration_statement, csvparser_test_1_block1, (statements, 0), range(csvparser_test_1, 25156, 65, 669, 669)).
stmt(csvparser_test_1_stmt2, expression_statement, csvparser_test_1_block1, (statements, 1), range(csvparser_test_1, 25230, 100, 670, 670)).
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
stmt(extended_buffered_reader_1_stmt1, super_constructor_invocation, extended_buffered_reader_1_block1, (statements, 0), range(extended_buffered_reader_1, 1768, 14, 51, 51)).
stmt(extended_buffered_reader_1_stmt2, variable_declaration_statement, extended_buffered_reader_1_block2, (statements, 0), range(extended_buffered_reader_1, 1855, 33, 56, 56)).
stmt(extended_buffered_reader_1_stmt3, if_statement, extended_buffered_reader_1_block2, (statements, 1), range(extended_buffered_reader_1, 1897, 93, 57, 59)).
stmt(extended_buffered_reader_1_stmt4, expression_statement, extended_buffered_reader_1_block3, (statements, 0), range(extended_buffered_reader_1, 1967, 13, 58, 58)).
stmt(extended_buffered_reader_1_stmt5, expression_statement, extended_buffered_reader_1_block2, (statements, 2), range(extended_buffered_reader_1, 1999, 19, 60, 60)).
stmt(extended_buffered_reader_1_stmt6, return_statement, extended_buffered_reader_1_block2, (statements, 3), range(extended_buffered_reader_1, 2027, 16, 61, 61)).
stmt(extended_buffered_reader_1_stmt7, return_statement, extended_buffered_reader_1_block4, (statements, 0), range(extended_buffered_reader_1, 2588, 16, 73, 73)).
%lexer_1 - org.apache.commons.csv.Lexer
stmt(lexer_1_stmt1, expression_statement, lexer_1_block1, (statements, 0), range(lexer_1, 2505, 21, 63, 63)).
stmt(lexer_1_stmt2, expression_statement, lexer_1_block1, (statements, 1), range(lexer_1, 2535, 39, 64, 64)).
stmt(lexer_1_stmt3, expression_statement, lexer_1_block1, (statements, 2), range(lexer_1, 2583, 52, 65, 65)).
stmt(lexer_1_stmt4, expression_statement, lexer_1_block1, (statements, 3), range(lexer_1, 2644, 58, 66, 66)).
stmt(lexer_1_stmt5, expression_statement, lexer_1_block1, (statements, 4), range(lexer_1, 2711, 64, 67, 67)).
stmt(lexer_1_stmt6, expression_statement, lexer_1_block1, (statements, 5), range(lexer_1, 2784, 67, 68, 68)).
stmt(lexer_1_stmt7, expression_statement, lexer_1_block1, (statements, 6), range(lexer_1, 2860, 53, 69, 69)).
stmt(lexer_1_stmt8, variable_declaration_statement, lexer_1_block2, (statements, 0), range(lexer_1, 3446, 36, 86, 86)).
stmt(lexer_1_stmt9, variable_declaration_statement, lexer_1_block2, (statements, 1), range(lexer_1, 3534, 22, 89, 89)).
stmt(lexer_1_stmt10, variable_declaration_statement, lexer_1_block2, (statements, 2), range(lexer_1, 3747, 31, 94, 94)).
stmt(lexer_1_stmt11, if_statement, lexer_1_block2, (statements, 3), range(lexer_1, 3862, 527, 97, 110)).
stmt(lexer_1_stmt12, while_statement, lexer_1_block3, (statements, 0), range(lexer_1, 3898, 481, 98, 109)).
stmt(lexer_1_stmt13, if_statement, lexer_1_block2, (statements, 4), range(lexer_1, 4467, 203, 113, 117)).
stmt(lexer_1_stmt14, if_statement, lexer_1_block2, (statements, 5), range(lexer_1, 4680, 440, 119, 130)).
stmt(lexer_1_stmt15, while_statement, lexer_1_block2, (statements, 6), range(lexer_1, 5205, 1237, 133, 163)).
stmt(lexer_1_stmt16, if_statement, lexer_1_block7, (statements, 0), range(lexer_1, 5307, 195, 135, 140)).
stmt(lexer_1_stmt17, if_statement, lexer_1_block7, (statements, 1), range(lexer_1, 5582, 850, 143, 162)).
stmt(lexer_1_stmt18, expression_statement, lexer_1_block9, (statements, 0), range(lexer_1, 5668, 19, 145, 145)).
stmt(lexer_1_stmt19, if_statement, lexer_1_stmt17, elseStatement, range(lexer_1, 5707, 725, 146, 162)).
stmt(lexer_1_stmt20, if_statement, lexer_1_stmt19, elseStatement, range(lexer_1, 5878, 554, 150, 162)).
stmt(lexer_1_stmt21, if_statement, lexer_1_stmt20, elseStatement, range(lexer_1, 6012, 420, 153, 162)).
stmt(lexer_1_stmt22, expression_statement, lexer_1_block13, (statements, 0), range(lexer_1, 6391, 27, 161, 161)).
stmt(lexer_1_stmt23, return_statement, lexer_1_block2, (statements, 7), range(lexer_1, 6451, 13, 164, 164)).
stmt(lexer_1_stmt24, while_statement, lexer_1_block14, (statements, 0), range(lexer_1, 7333, 940, 188, 211)).
stmt(lexer_1_stmt25, if_statement, lexer_1_block15, (statements, 0), range(lexer_1, 7360, 903, 189, 210)).
stmt(lexer_1_stmt26, expression_statement, lexer_1_block16, (statements, 0), range(lexer_1, 7401, 22, 190, 190)).
stmt(lexer_1_stmt27, break_statement, lexer_1_block16, (statements, 1), range(lexer_1, 7440, 6, 191, 191)).
stmt(lexer_1_stmt28, if_statement, lexer_1_stmt25, elseStatement, range(lexer_1, 7466, 797, 192, 210)).
stmt(lexer_1_stmt29, if_statement, lexer_1_stmt28, elseStatement, range(lexer_1, 7627, 636, 196, 210)).
stmt(lexer_1_stmt30, expression_statement, lexer_1_block18, (statements, 0), range(lexer_1, 7666, 19, 197, 197)).
stmt(lexer_1_stmt31, break_statement, lexer_1_block18, (statements, 1), range(lexer_1, 7702, 6, 198, 198)).
stmt(lexer_1_stmt32, if_statement, lexer_1_stmt29, elseStatement, range(lexer_1, 7728, 535, 199, 210)).
stmt(lexer_1_stmt33, expression_statement, lexer_1_block20, (statements, 0), range(lexer_1, 8169, 32, 208, 208)).
stmt(lexer_1_stmt34, expression_statement, lexer_1_block20, (statements, 1), range(lexer_1, 8218, 19, 209, 209)).
stmt(lexer_1_stmt35, if_statement, lexer_1_block14, (statements, 1), range(lexer_1, 8283, 87, 213, 215)).
stmt(lexer_1_stmt36, return_statement, lexer_1_block14, (statements, 2), range(lexer_1, 8380, 13, 217, 217)).
stmt(lexer_1_stmt37, return_statement, lexer_1_block22, (statements, 0), range(lexer_1, 11792, 44, 292, 292)).
stmt(lexer_1_stmt38, if_statement, lexer_1_block23, (statements, 0), range(lexer_1, 14214, 149, 365, 368)).
stmt(lexer_1_stmt39, return_statement, lexer_1_block23, (statements, 1), range(lexer_1, 14372, 28, 369, 369)).
stmt(lexer_1_stmt40, return_statement, lexer_1_block25, (statements, 0), range(lexer_1, 14961, 47, 390, 390)).
stmt(lexer_1_stmt41, return_statement, lexer_1_block26, (statements, 0), range(lexer_1, 15145, 27, 397, 397)).
stmt(lexer_1_stmt42, return_statement, lexer_1_block27, (statements, 0), range(lexer_1, 15228, 23, 401, 401)).
stmt(lexer_1_stmt43, return_statement, lexer_1_block28, (statements, 0), range(lexer_1, 15304, 20, 405, 405)).
stmt(lexer_1_stmt44, return_statement, lexer_1_block29, (statements, 0), range(lexer_1, 15380, 23, 409, 409)).
stmt(lexer_1_stmt45, return_statement, lexer_1_block30, (statements, 0), range(lexer_1, 15462, 26, 413, 413)).
%token_1 - org.apache.commons.csv.Token
stmt(token_1_stmt1, expression_statement, token_1_block1, (statements, 0), range(token_1, 1906, 21, 61, 61)).
stmt(token_1_stmt2, expression_statement, token_1_block1, (statements, 1), range(token_1, 1936, 15, 62, 62)).
stmt(token_1_stmt3, expression_statement, token_1_block1, (statements, 2), range(token_1, 1960, 16, 63, 63)).
%assertions_1 - org.apache.commons.csv.Assertions
stmt(assertions_1_stmt1, if_statement, assertions_1_block1, (statements, 0), range(assertions_1, 1101, 137, 32, 34)).
%csvrecord_1 - org.apache.commons.csv.CSVRecord
stmt(csvrecord_1_stmt1, expression_statement, csvrecord_1_block1, (statements, 0), range(csvrecord_1, 1741, 33, 53, 53)).
stmt(csvrecord_1_stmt2, expression_statement, csvrecord_1_block1, (statements, 1), range(csvrecord_1, 1783, 59, 54, 54)).
stmt(csvrecord_1_stmt3, expression_statement, csvrecord_1_block1, (statements, 2), range(csvrecord_1, 1851, 23, 55, 55)).
stmt(csvrecord_1_stmt4, expression_statement, csvrecord_1_block1, (statements, 3), range(csvrecord_1, 1883, 23, 56, 56)).
stmt(csvrecord_1_stmt5, return_statement, csvrecord_1_block2, (statements, 0), range(csvrecord_1, 6862, 14, 226, 226)).

%%% Expressions
%csvparser_1 - org.apache.commons.csv.CSVParser
expr(csvparser_1_expr1, class_instance_creation, csvparser_1_code9, initializer, range(csvparser_1, 7907, 23, 221, 221), "new ArrayList<String>()").
expr(csvparser_1_expr2, class_instance_creation, csvparser_1_code17, initializer, range(csvparser_1, 8005, 11, 225, 225), "new Token()").
expr(csvparser_1_expr3, method_invocation, csvparser_1_stmt1, expression, range(csvparser_1, 8846, 36, 245, 245), "Assertions.notNull(reader,\"reader\")").
expr(csvparser_1_expr4, method_invocation, csvparser_1_stmt2, expression, range(csvparser_1, 8892, 36, 246, 246), "Assertions.notNull(format,\"format\")").
expr(csvparser_1_expr5, assignment, csvparser_1_stmt3, expression, range(csvparser_1, 8939, 20, 248, 248), "this.format=format").
expr(csvparser_1_expr6, field_access, csvparser_1_expr5, left_hand_side, range(csvparser_1, 8939, 11, 248, 248), "this.format").
expr(csvparser_1_expr7, this_expression, f_format_74, expression, range(csvparser_1, 8939, 4, 248, 248), "this").
expr(csvparser_1_expr8, assignment, csvparser_1_stmt4, expression, range(csvparser_1, 8969, 66, 249, 249), "this.lexer=new Lexer(format,new ExtendedBufferedReader(reader))").
expr(csvparser_1_expr9, field_access, csvparser_1_expr8, left_hand_side, range(csvparser_1, 8969, 10, 249, 249), "this.lexer").
expr(csvparser_1_expr11, this_expression, f_lexer_75, expression, range(csvparser_1, 8969, 4, 249, 249), "this").
expr(csvparser_1_expr10, class_instance_creation, csvparser_1_expr8, right_hand_side, range(csvparser_1, 8982, 53, 249, 249), "new Lexer(format,new ExtendedBufferedReader(reader))").
expr(csvparser_1_expr12, class_instance_creation, csvparser_1_expr10, (arguments, 1), range(csvparser_1, 9000, 34, 249, 249), "new ExtendedBufferedReader(reader)").
expr(csvparser_1_expr16, this_expression, f_header_map_76, expression, range(csvparser_1, 9045, 4, 250, 250), "this").
expr(csvparser_1_expr14, field_access, csvparser_1_expr13, left_hand_side, range(csvparser_1, 9045, 14, 250, 250), "this.headerMap").
expr(csvparser_1_expr13, assignment, csvparser_1_stmt5, expression, range(csvparser_1, 9045, 40, 250, 250), "this.headerMap=this.initializeHeader()").
expr(csvparser_1_expr17, this_expression, csvparser_1_expr15, expression, range(csvparser_1, 9062, 4, 250, 250), "this").
expr(csvparser_1_expr15, method_invocation, csvparser_1_expr13, right_hand_side, range(csvparser_1, 9062, 23, 250, 250), "this.initializeHeader()").
expr(csvparser_1_expr18, method_invocation, csvparser_1_code33, initializer, range(csvparser_1, 9159, 37, 254, 254), "this.reusableToken.content.toString()").
expr(csvparser_1_expr19, field_access, csvparser_1_expr18, expression, range(csvparser_1, 9159, 26, 254, 254), "this.reusableToken.content").
expr(csvparser_1_expr20, field_access, csvparser_1_expr19, expression, range(csvparser_1, 9159, 18, 254, 254), "this.reusableToken").
expr(csvparser_1_expr21, this_expression, f_reusable_token_71, expression, range(csvparser_1, 9159, 4, 254, 254), "this").
expr(csvparser_1_expr23, field_access, csvparser_1_expr22, expression, range(csvparser_1, 9232, 11, 255, 255), "this.format").
expr(csvparser_1_expr24, this_expression, f_format_74, expression, range(csvparser_1, 9232, 4, 255, 255), "this").
expr(csvparser_1_expr22, method_invocation, csvparser_1_code36, initializer, range(csvparser_1, 9232, 27, 255, 255), "this.format.getNullString()").
expr(csvparser_1_expr25, infix_expression, csvparser_1_stmt8, expression, range(csvparser_1, 9273, 18, 256, 256), "nullString == null").
expr(csvparser_1_expr28, field_access, csvparser_1_expr26, expression, range(csvparser_1, 9360, 11, 259, 259), "this.record").
expr(csvparser_1_expr26, method_invocation, csvparser_1_stmt9, expression, range(csvparser_1, 9360, 66, 259, 259), "this.record.add(input.equalsIgnoreCase(nullString) ? null : input)").
expr(csvparser_1_expr29, this_expression, f_record_70, expression, range(csvparser_1, 9360, 4, 259, 259), "this").
expr(csvparser_1_expr27, conditional_expression, csvparser_1_expr26, (arguments, 0), range(csvparser_1, 9376, 49, 259, 259), "input.equalsIgnoreCase(nullString) ? null : input").
expr(csvparser_1_expr30, method_invocation, csvparser_1_expr27, expression, range(csvparser_1, 9376, 34, 259, 259), "input.equalsIgnoreCase(nullString)").
expr(csvparser_1_expr31, method_invocation, csvparser_1_code47, initializer, range(csvparser_1, 12581, 23, 361, 361), "this.format.getHeader()").
expr(csvparser_1_expr32, field_access, csvparser_1_expr31, expression, range(csvparser_1, 12581, 11, 361, 361), "this.format").
expr(csvparser_1_expr33, this_expression, f_format_74, expression, range(csvparser_1, 12581, 4, 361, 361), "this").
expr(csvparser_1_expr34, infix_expression, csvparser_1_stmt12, expression, range(csvparser_1, 12618, 20, 362, 362), "formatHeader != null").
expr(csvparser_1_expr35, assignment, csvparser_1_stmt13, expression, range(csvparser_1, 12654, 45, 363, 363), "hdrMap=new LinkedHashMap<String,Integer>()").
expr(csvparser_1_expr36, class_instance_creation, csvparser_1_expr35, right_hand_side, range(csvparser_1, 12663, 36, 363, 363), "new LinkedHashMap<String,Integer>()").
expr(csvparser_1_expr37, infix_expression, csvparser_1_stmt15, expression, range(csvparser_1, 12760, 24, 366, 366), "formatHeader.length == 0").
expr(csvparser_1_expr38, method_invocation, csvparser_1_code58, initializer, range(csvparser_1, 12900, 17, 368, 368), "this.nextRecord()").
expr(csvparser_1_expr39, this_expression, csvparser_1_expr38, expression, range(csvparser_1, 12900, 4, 368, 368), "this").
expr(csvparser_1_expr40, infix_expression, csvparser_1_stmt17, expression, range(csvparser_1, 12939, 18, 369, 369), "nextRecord != null").
expr(csvparser_1_expr41, assignment, csvparser_1_stmt18, expression, range(csvparser_1, 12981, 34, 370, 370), "headerRecord=nextRecord.values()").
expr(csvparser_1_expr42, method_invocation, csvparser_1_expr41, right_hand_side, range(csvparser_1, 12996, 19, 370, 370), "nextRecord.values()").
expr(csvparser_1_expr43, infix_expression, csvparser_1_stmt19, expression, range(csvparser_1, 13294, 20, 380, 380), "headerRecord != null").
expr(csvparser_1_expr44, variable_declaration_expression, csvparser_1_stmt20, (initializers, 0), range(csvparser_1, 13339, 9, 381, 381), "int i=0").
expr(csvparser_1_expr45, infix_expression, csvparser_1_stmt20, expression, range(csvparser_1, 13350, 23, 381, 381), "i < headerRecord.length").
expr(csvparser_1_expr46, postfix_expression, csvparser_1_stmt20, (updaters, 0), range(csvparser_1, 13375, 3, 381, 381), "i++").
expr(csvparser_1_expr47, array_access, csvparser_1_code63, initializer, range(csvparser_1, 13424, 15, 382, 382), "headerRecord[i]").
expr(csvparser_1_expr48, method_invocation, csvparser_1_code66, initializer, range(csvparser_1, 13492, 26, 383, 383), "hdrMap.containsKey(header)").
expr(csvparser_1_expr49, method_invocation, csvparser_1_code69, initializer, range(csvparser_1, 13568, 23, 384, 384), "header.trim().isEmpty()").
expr(csvparser_1_expr50, method_invocation, csvparser_1_expr49, expression, range(csvparser_1, 13568, 13, 384, 384), "header.trim()").
expr(csvparser_1_expr51, infix_expression, csvparser_1_stmt24, expression, range(csvparser_1, 13617, 89, 385, 385), "containsHeader && (!emptyHeader || (emptyHeader && !this.format.getIgnoreEmptyHeaders()))").
expr(csvparser_1_expr52, parenthesized_expression, csvparser_1_expr51, right_operand, range(csvparser_1, 13635, 71, 385, 385), "(!emptyHeader || (emptyHeader && !this.format.getIgnoreEmptyHeaders()))").
expr(csvparser_1_expr53, infix_expression, csvparser_1_expr52, expression, range(csvparser_1, 13636, 69, 385, 385), "!emptyHeader || (emptyHeader && !this.format.getIgnoreEmptyHeaders())").
expr(csvparser_1_expr54, prefix_expression, csvparser_1_expr53, left_operand, range(csvparser_1, 13636, 12, 385, 385), "!emptyHeader").
expr(csvparser_1_expr55, parenthesized_expression, csvparser_1_expr53, right_operand, range(csvparser_1, 13652, 53, 385, 385), "(emptyHeader && !this.format.getIgnoreEmptyHeaders())").
expr(csvparser_1_expr56, infix_expression, csvparser_1_expr55, expression, range(csvparser_1, 13653, 51, 385, 385), "emptyHeader && !this.format.getIgnoreEmptyHeaders()").
expr(csvparser_1_expr57, prefix_expression, csvparser_1_expr56, right_operand, range(csvparser_1, 13668, 36, 385, 385), "!this.format.getIgnoreEmptyHeaders()").
expr(csvparser_1_expr58, method_invocation, csvparser_1_expr57, operand, range(csvparser_1, 13669, 35, 385, 385), "this.format.getIgnoreEmptyHeaders()").
expr(csvparser_1_expr59, field_access, csvparser_1_expr58, expression, range(csvparser_1, 13669, 11, 385, 385), "this.format").
expr(csvparser_1_expr60, this_expression, f_format_74, expression, range(csvparser_1, 13669, 4, 385, 385), "this").
expr(csvparser_1_expr61, method_invocation, csvparser_1_stmt25, expression, range(csvparser_1, 13940, 38, 389, 389), "hdrMap.put(header,Integer.valueOf(i))").
expr(csvparser_1_expr62, method_invocation, csvparser_1_expr61, (arguments, 1), range(csvparser_1, 13959, 18, 389, 389), "Integer.valueOf(i)").
expr(csvparser_1_expr63, method_invocation, csvparser_1_stmt27, expression, range(csvparser_1, 16295, 19, 465, 465), "this.record.clear()").
expr(csvparser_1_expr64, field_access, csvparser_1_expr63, expression, range(csvparser_1, 16295, 11, 465, 465), "this.record").
expr(csvparser_1_expr65, this_expression, f_record_70, expression, range(csvparser_1, 16295, 4, 465, 465), "this").
expr(csvparser_1_expr67, field_access, csvparser_1_expr66, expression, range(csvparser_1, 16374, 18, 468, 468), "this.reusableToken").
expr(csvparser_1_expr68, this_expression, f_reusable_token_71, expression, range(csvparser_1, 16374, 4, 468, 468), "this").
expr(csvparser_1_expr66, method_invocation, csvparser_1_stmt30, expression, range(csvparser_1, 16374, 26, 468, 468), "this.reusableToken.reset()").
expr(csvparser_1_expr69, method_invocation, csvparser_1_stmt31, expression, range(csvparser_1, 16414, 40, 469, 469), "this.lexer.nextToken(this.reusableToken)").
expr(csvparser_1_expr72, this_expression, f_lexer_75, expression, range(csvparser_1, 16414, 4, 469, 469), "this").
expr(csvparser_1_expr71, field_access, csvparser_1_expr69, expression, range(csvparser_1, 16414, 10, 469, 469), "this.lexer").
expr(csvparser_1_expr73, this_expression, f_reusable_token_71, expression, range(csvparser_1, 16435, 4, 469, 469), "this").
expr(csvparser_1_expr70, field_access, csvparser_1_expr69, (arguments, 0), range(csvparser_1, 16435, 18, 469, 469), "this.reusableToken").
expr(csvparser_1_expr74, field_access, csvparser_1_stmt32, expression, range(csvparser_1, 16476, 23, 470, 470), "this.reusableToken.type").
expr(csvparser_1_expr75, field_access, csvparser_1_expr74, expression, range(csvparser_1, 16476, 18, 470, 470), "this.reusableToken").
expr(csvparser_1_expr76, this_expression, f_reusable_token_71, expression, range(csvparser_1, 16476, 4, 470, 470), "this").
expr(csvparser_1_expr78, this_expression, csvparser_1_expr77, expression, range(csvparser_1, 16543, 4, 472, 472), "this").
expr(csvparser_1_expr77, method_invocation, csvparser_1_stmt33, expression, range(csvparser_1, 16543, 21, 472, 472), "this.addRecordValue()").
expr(csvparser_1_expr79, method_invocation, csvparser_1_stmt35, expression, range(csvparser_1, 16632, 21, 475, 475), "this.addRecordValue()").
expr(csvparser_1_expr80, this_expression, csvparser_1_expr79, expression, range(csvparser_1, 16632, 4, 475, 475), "this").
expr(csvparser_1_expr83, field_access, csvparser_1_expr82, expression, range(csvparser_1, 17519, 18, 496, 496), "this.reusableToken").
expr(csvparser_1_expr84, this_expression, f_reusable_token_71, expression, range(csvparser_1, 17519, 4, 496, 496), "this").
expr(csvparser_1_expr81, infix_expression, csvparser_1_stmt29, expression, range(csvparser_1, 17519, 32, 496, 496), "this.reusableToken.type == TOKEN").
expr(csvparser_1_expr82, field_access, csvparser_1_expr81, left_operand, range(csvparser_1, 17519, 23, 496, 496), "this.reusableToken.type").
expr(csvparser_1_expr85, prefix_expression, csvparser_1_stmt37, expression, range(csvparser_1, 17567, 22, 498, 498), "!this.record.isEmpty()").
expr(csvparser_1_expr86, method_invocation, csvparser_1_expr85, operand, range(csvparser_1, 17568, 21, 498, 498), "this.record.isEmpty()").
expr(csvparser_1_expr87, field_access, csvparser_1_expr86, expression, range(csvparser_1, 17568, 11, 498, 498), "this.record").
expr(csvparser_1_expr88, this_expression, f_record_70, expression, range(csvparser_1, 17568, 4, 498, 498), "this").
expr(csvparser_1_expr90, field_access, csvparser_1_expr89, operand, range(csvparser_1, 17605, 17, 499, 499), "this.recordNumber").
expr(csvparser_1_expr91, this_expression, f_record_number_93, expression, range(csvparser_1, 17605, 4, 499, 499), "this").
expr(csvparser_1_expr89, postfix_expression, csvparser_1_stmt38, expression, range(csvparser_1, 17605, 19, 499, 499), "this.recordNumber++").
expr(csvparser_1_expr92, conditional_expression, csvparser_1_code77, initializer, range(csvparser_1, 17661, 33, 500, 500), "sb == null ? null : sb.toString()").
expr(csvparser_1_expr93, infix_expression, csvparser_1_expr92, expression, range(csvparser_1, 17661, 10, 500, 500), "sb == null").
expr(csvparser_1_expr94, method_invocation, csvparser_1_expr92, else_expression, range(csvparser_1, 17681, 13, 500, 500), "sb.toString()").
expr(csvparser_1_expr95, assignment, csvparser_1_stmt40, expression, range(csvparser_1, 17708, 139, 501, 502), "result=new CSVRecord(this.record.toArray(new String[this.record.size()]),this.headerMap,comment,this.recordNumber)").
expr(csvparser_1_expr96, class_instance_creation, csvparser_1_expr95, right_hand_side, range(csvparser_1, 17717, 130, 501, 502), "new CSVRecord(this.record.toArray(new String[this.record.size()]),this.headerMap,comment,this.recordNumber)").
expr(csvparser_1_expr102, this_expression, f_record_70, expression, range(csvparser_1, 17731, 4, 501, 501), "this").
expr(csvparser_1_expr101, field_access, csvparser_1_expr97, expression, range(csvparser_1, 17731, 11, 501, 501), "this.record").
expr(csvparser_1_expr97, method_invocation, csvparser_1_expr96, (arguments, 0), range(csvparser_1, 17731, 51, 501, 501), "this.record.toArray(new String[this.record.size()])").
expr(csvparser_1_expr100, array_creation, csvparser_1_expr97, (arguments, 0), range(csvparser_1, 17751, 30, 501, 501), "new String[this.record.size()]").
expr(csvparser_1_expr104, field_access, csvparser_1_expr103, expression, range(csvparser_1, 17762, 11, 501, 501), "this.record").
expr(csvparser_1_expr105, this_expression, f_record_70, expression, range(csvparser_1, 17762, 4, 501, 501), "this").
expr(csvparser_1_expr103, method_invocation, csvparser_1_expr100, (dimensions, 0), range(csvparser_1, 17762, 18, 501, 501), "this.record.size()").
expr(csvparser_1_expr106, this_expression, f_header_map_76, expression, range(csvparser_1, 17784, 4, 501, 501), "this").
expr(csvparser_1_expr98, field_access, csvparser_1_expr96, (arguments, 1), range(csvparser_1, 17784, 14, 501, 501), "this.headerMap").
expr(csvparser_1_expr99, field_access, csvparser_1_expr96, (arguments, 3), range(csvparser_1, 17829, 17, 502, 502), "this.recordNumber").
%csvformat_1 - org.apache.commons.csv.CSVFormat
expr(csvformat_1_expr1, class_instance_creation, csvformat_1_code8, initializer, range(csvformat_1, 5351, 162, 175, 176), "new CSVFormat(COMMA,DOUBLE_QUOTE_CHAR,null,null,null,false,true,CRLF,null,null,false,false)").
expr(csvformat_1_expr2, method_invocation, csvformat_1_code15, initializer, range(csvformat_1, 5842, 35, 187, 187), "DEFAULT.withIgnoreEmptyLines(false)").
expr(csvformat_1_expr3, method_invocation, csvformat_1_code21, initializer, range(csvformat_1, 6655, 35, 211, 211), "DEFAULT.withIgnoreEmptyLines(false)").
expr(csvformat_1_expr4, method_invocation, csvformat_1_code27, initializer, range(csvformat_1, 6827, 86, 215, 217), "DEFAULT.withDelimiter(TAB).withIgnoreSurroundingSpaces(true)").
expr(csvformat_1_expr5, method_invocation, csvformat_1_code33, initializer, range(csvformat_1, 7406, 185, 228, 233), "DEFAULT.withDelimiter(TAB).withEscape(BACKSLASH).withIgnoreEmptyLines(false).withQuoteChar(null).withRecordSeparator(LF)").
expr(csvformat_1_expr7, infix_expression, csvformat_1_expr6, left_operand, range(csvformat_1, 7885, 7, 244, 244), "c == LF").
expr(csvformat_1_expr6, infix_expression, csvformat_1_stmt1, expression, range(csvformat_1, 7885, 18, 244, 244), "c == LF || c == CR").
expr(csvformat_1_expr8, infix_expression, csvformat_1_expr6, right_operand, range(csvformat_1, 7896, 7, 244, 244), "c == CR").
expr(csvformat_1_expr10, infix_expression, csvformat_1_expr9, left_operand, range(csvformat_1, 8236, 9, 256, 256), "c != null").
expr(csvformat_1_expr9, infix_expression, csvformat_1_stmt2, expression, range(csvformat_1, 8236, 39, 256, 256), "c != null && isLineBreak(c.charValue())").
expr(csvformat_1_expr11, method_invocation, csvformat_1_expr9, right_operand, range(csvformat_1, 8249, 26, 256, 256), "isLineBreak(c.charValue())").
expr(csvformat_1_expr12, method_invocation, csvformat_1_expr11, (arguments, 0), range(csvformat_1, 8261, 13, 256, 256), "c.charValue()").
expr(csvformat_1_expr13, method_invocation, csvformat_1_stmt3, expression, range(csvformat_1, 10426, 22, 304, 304), "isLineBreak(delimiter)").
expr(csvformat_1_expr16, this_expression, f_delimiter_28, expression, range(csvformat_1, 10558, 4, 307, 307), "this").
expr(csvformat_1_expr15, field_access, csvformat_1_expr14, left_hand_side, range(csvformat_1, 10558, 14, 307, 307), "this.delimiter").
expr(csvformat_1_expr14, assignment, csvformat_1_stmt4, expression, range(csvformat_1, 10558, 26, 307, 307), "this.delimiter=delimiter").
expr(csvformat_1_expr19, this_expression, f_quote_char_29, expression, range(csvformat_1, 10594, 4, 308, 308), "this").
expr(csvformat_1_expr18, field_access, csvformat_1_expr17, left_hand_side, range(csvformat_1, 10594, 14, 308, 308), "this.quoteChar").
expr(csvformat_1_expr17, assignment, csvformat_1_stmt5, expression, range(csvformat_1, 10594, 26, 308, 308), "this.quoteChar=quoteChar").
expr(csvformat_1_expr22, this_expression, f_quote_policy_30, expression, range(csvformat_1, 10630, 4, 309, 309), "this").
expr(csvformat_1_expr21, field_access, csvformat_1_expr20, left_hand_side, range(csvformat_1, 10630, 16, 309, 309), "this.quotePolicy").
expr(csvformat_1_expr20, assignment, csvformat_1_stmt6, expression, range(csvformat_1, 10630, 30, 309, 309), "this.quotePolicy=quotePolicy").
expr(csvformat_1_expr25, this_expression, f_comment_start_31, expression, range(csvformat_1, 10670, 4, 310, 310), "this").
expr(csvformat_1_expr24, field_access, csvformat_1_expr23, left_hand_side, range(csvformat_1, 10670, 17, 310, 310), "this.commentStart").
expr(csvformat_1_expr23, assignment, csvformat_1_stmt7, expression, range(csvformat_1, 10670, 32, 310, 310), "this.commentStart=commentStart").
expr(csvformat_1_expr28, this_expression, f_escape_32, expression, range(csvformat_1, 10712, 4, 311, 311), "this").
expr(csvformat_1_expr27, field_access, csvformat_1_expr26, left_hand_side, range(csvformat_1, 10712, 11, 311, 311), "this.escape").
expr(csvformat_1_expr26, assignment, csvformat_1_stmt8, expression, range(csvformat_1, 10712, 20, 311, 311), "this.escape=escape").
expr(csvformat_1_expr29, assignment, csvformat_1_stmt9, expression, range(csvformat_1, 10742, 54, 312, 312), "this.ignoreSurroundingSpaces=ignoreSurroundingSpaces").
expr(csvformat_1_expr31, this_expression, f_ignore_surrounding_spaces_33, expression, range(csvformat_1, 10742, 4, 312, 312), "this").
expr(csvformat_1_expr30, field_access, csvformat_1_expr29, left_hand_side, range(csvformat_1, 10742, 28, 312, 312), "this.ignoreSurroundingSpaces").
expr(csvformat_1_expr34, this_expression, f_ignore_empty_headers_34, expression, range(csvformat_1, 10806, 4, 313, 313), "this").
expr(csvformat_1_expr33, field_access, csvformat_1_expr32, left_hand_side, range(csvformat_1, 10806, 23, 313, 313), "this.ignoreEmptyHeaders").
expr(csvformat_1_expr32, assignment, csvformat_1_stmt10, expression, range(csvformat_1, 10806, 44, 313, 313), "this.ignoreEmptyHeaders=ignoreEmptyHeaders").
expr(csvformat_1_expr37, this_expression, f_ignore_empty_lines_35, expression, range(csvformat_1, 10860, 4, 314, 314), "this").
expr(csvformat_1_expr36, field_access, csvformat_1_expr35, left_hand_side, range(csvformat_1, 10860, 21, 314, 314), "this.ignoreEmptyLines").
expr(csvformat_1_expr35, assignment, csvformat_1_stmt11, expression, range(csvformat_1, 10860, 40, 314, 314), "this.ignoreEmptyLines=ignoreEmptyLines").
expr(csvformat_1_expr40, this_expression, f_record_separator_36, expression, range(csvformat_1, 10910, 4, 315, 315), "this").
expr(csvformat_1_expr39, field_access, csvformat_1_expr38, left_hand_side, range(csvformat_1, 10910, 20, 315, 315), "this.recordSeparator").
expr(csvformat_1_expr38, assignment, csvformat_1_stmt12, expression, range(csvformat_1, 10910, 38, 315, 315), "this.recordSeparator=recordSeparator").
expr(csvformat_1_expr43, this_expression, f_null_string_37, expression, range(csvformat_1, 10958, 4, 316, 316), "this").
expr(csvformat_1_expr42, field_access, csvformat_1_expr41, left_hand_side, range(csvformat_1, 10958, 15, 316, 316), "this.nullString").
expr(csvformat_1_expr41, assignment, csvformat_1_stmt13, expression, range(csvformat_1, 10958, 28, 316, 316), "this.nullString=nullString").
expr(csvformat_1_expr44, infix_expression, csvformat_1_stmt14, expression, range(csvformat_1, 11000, 14, 317, 317), "header == null").
expr(csvformat_1_expr47, this_expression, f_header_38, expression, range(csvformat_1, 11030, 4, 318, 318), "this").
expr(csvformat_1_expr46, field_access, csvformat_1_expr45, left_hand_side, range(csvformat_1, 11030, 11, 318, 318), "this.header").
expr(csvformat_1_expr45, assignment, csvformat_1_stmt15, expression, range(csvformat_1, 11030, 18, 318, 318), "this.header=null").
expr(csvformat_1_expr48, class_instance_creation, csvformat_1_code44, initializer, range(csvformat_1, 11108, 21, 320, 320), "new HashSet<String>()").
expr(csvformat_1_expr49, assignment, csvformat_1_stmt18, expression, range(csvformat_1, 11433, 28, 327, 327), "this.header=header.clone()").
expr(csvformat_1_expr52, this_expression, f_header_38, expression, range(csvformat_1, 11433, 4, 327, 327), "this").
expr(csvformat_1_expr50, field_access, csvformat_1_expr49, left_hand_side, range(csvformat_1, 11433, 11, 327, 327), "this.header").
expr(csvformat_1_expr51, method_invocation, csvformat_1_expr49, right_hand_side, range(csvformat_1, 11447, 14, 327, 327), "header.clone()").
expr(csvformat_1_expr55, this_expression, f_skip_header_record_41, expression, range(csvformat_1, 11481, 4, 329, 329), "this").
expr(csvformat_1_expr54, field_access, csvformat_1_expr53, left_hand_side, range(csvformat_1, 11481, 21, 329, 329), "this.skipHeaderRecord").
expr(csvformat_1_expr53, assignment, csvformat_1_stmt19, expression, range(csvformat_1, 11481, 40, 329, 329), "this.skipHeaderRecord=skipHeaderRecord").
expr(csvformat_1_expr56, method_invocation, csvformat_1_stmt20, expression, range(csvformat_1, 11531, 10, 330, 330), "validate()").
expr(csvformat_1_expr58, infix_expression, csvformat_1_expr57, expression, range(csvformat_1, 14932, 14, 453, 453), "header != null").
expr(csvformat_1_expr57, conditional_expression, csvformat_1_stmt24, expression, range(csvformat_1, 14932, 38, 453, 453), "header != null ? header.clone() : null").
expr(csvformat_1_expr59, method_invocation, csvformat_1_expr57, then_expression, range(csvformat_1, 14949, 14, 453, 453), "header.clone()").
expr(csvformat_1_expr60, class_instance_creation, csvformat_1_stmt29, expression, range(csvformat_1, 19739, 23, 611, 611), "new CSVParser(in,this)").
expr(csvformat_1_expr61, this_expression, csvformat_1_expr60, (arguments, 1), range(csvformat_1, 19757, 4, 611, 611), "this").
expr(csvformat_1_expr63, infix_expression, csvformat_1_expr62, left_operand, range(csvformat_1, 21737, 17, 675, 675), "quoteChar != null").
expr(csvformat_1_expr62, infix_expression, csvformat_1_stmt30, expression, range(csvformat_1, 21737, 55, 675, 675), "quoteChar != null && delimiter == quoteChar.charValue()").
expr(csvformat_1_expr64, infix_expression, csvformat_1_expr62, right_operand, range(csvformat_1, 21758, 34, 675, 675), "delimiter == quoteChar.charValue()").
expr(csvformat_1_expr65, method_invocation, csvformat_1_expr64, right_operand, range(csvformat_1, 21771, 21, 675, 675), "quoteChar.charValue()").
expr(csvformat_1_expr67, infix_expression, csvformat_1_expr66, left_operand, range(csvformat_1, 21974, 14, 680, 680), "escape != null").
expr(csvformat_1_expr66, infix_expression, csvformat_1_stmt31, expression, range(csvformat_1, 21974, 49, 680, 680), "escape != null && delimiter == escape.charValue()").
expr(csvformat_1_expr68, infix_expression, csvformat_1_expr66, right_operand, range(csvformat_1, 21992, 31, 680, 680), "delimiter == escape.charValue()").
expr(csvformat_1_expr69, method_invocation, csvformat_1_expr68, right_operand, range(csvformat_1, 22005, 18, 680, 680), "escape.charValue()").
expr(csvformat_1_expr71, infix_expression, csvformat_1_expr70, left_operand, range(csvformat_1, 22199, 20, 685, 685), "commentStart != null").
expr(csvformat_1_expr70, infix_expression, csvformat_1_stmt32, expression, range(csvformat_1, 22199, 61, 685, 685), "commentStart != null && delimiter == commentStart.charValue()").
expr(csvformat_1_expr72, infix_expression, csvformat_1_expr70, right_operand, range(csvformat_1, 22223, 37, 685, 685), "delimiter == commentStart.charValue()").
expr(csvformat_1_expr73, method_invocation, csvformat_1_expr72, right_operand, range(csvformat_1, 22236, 24, 685, 685), "commentStart.charValue()").
expr(csvformat_1_expr75, infix_expression, csvformat_1_expr74, left_operand, range(csvformat_1, 22449, 17, 690, 690), "quoteChar != null").
expr(csvformat_1_expr74, infix_expression, csvformat_1_stmt33, expression, range(csvformat_1, 22449, 51, 690, 690), "quoteChar != null && quoteChar.equals(commentStart)").
expr(csvformat_1_expr76, method_invocation, csvformat_1_expr74, right_operand, range(csvformat_1, 22470, 30, 690, 690), "quoteChar.equals(commentStart)").
expr(csvformat_1_expr78, infix_expression, csvformat_1_expr77, left_operand, range(csvformat_1, 22689, 14, 695, 695), "escape != null").
expr(csvformat_1_expr77, infix_expression, csvformat_1_stmt34, expression, range(csvformat_1, 22689, 45, 695, 695), "escape != null && escape.equals(commentStart)").
expr(csvformat_1_expr79, method_invocation, csvformat_1_expr77, right_operand, range(csvformat_1, 22707, 27, 695, 695), "escape.equals(commentStart)").
expr(csvformat_1_expr81, infix_expression, csvformat_1_expr80, left_operand, range(csvformat_1, 22920, 14, 700, 700), "escape == null").
expr(csvformat_1_expr80, infix_expression, csvformat_1_stmt35, expression, range(csvformat_1, 22920, 43, 700, 700), "escape == null && quotePolicy == Quote.NONE").
expr(csvformat_1_expr82, infix_expression, csvformat_1_expr80, right_operand, range(csvformat_1, 22938, 25, 700, 700), "quotePolicy == Quote.NONE").
expr(csvformat_1_expr84, infix_expression, csvformat_1_expr83, left_operand, range(csvformat_1, 23090, 23, 704, 704), "recordSeparator != null").
expr(csvformat_1_expr83, infix_expression, csvformat_1_stmt36, expression, range(csvformat_1, 23090, 214, 704, 707), "recordSeparator != null && !(CRLF.equals(recordSeparator) || String.valueOf(CR).equals(recordSeparator) || String.valueOf(LF).equals(recordSeparator))").
expr(csvformat_1_expr85, method_invocation, csvformat_1_stmt37, expression, range(csvformat_1, 25474, 22, 757, 757), "isLineBreak(delimiter)").
expr(csvformat_1_expr86, class_instance_creation, csvformat_1_stmt38, expression, range(csvformat_1, 25613, 220, 760, 762), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord,ignoreEmptyHeaders)").
expr(csvformat_1_expr87, method_invocation, csvformat_1_stmt39, expression, range(csvformat_1, 26286, 37, 775, 775), "withEscape(Character.valueOf(escape))").
expr(csvformat_1_expr88, method_invocation, csvformat_1_expr87, (arguments, 0), range(csvformat_1, 26297, 25, 775, 775), "Character.valueOf(escape)").
expr(csvformat_1_expr89, method_invocation, csvformat_1_stmt40, expression, range(csvformat_1, 26808, 19, 788, 788), "isLineBreak(escape)").
expr(csvformat_1_expr90, class_instance_creation, csvformat_1_stmt41, expression, range(csvformat_1, 26951, 220, 791, 793), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord,ignoreEmptyHeaders)").
expr(csvformat_1_expr91, class_instance_creation, csvformat_1_stmt42, expression, range(csvformat_1, 27898, 220, 814, 816), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord,ignoreEmptyHeaders)").
expr(csvformat_1_expr92, class_instance_creation, csvformat_1_stmt43, expression, range(csvformat_1, 28625, 222, 828, 830), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyHeaders,recordSeparator,nullString,header,skipHeaderRecord,ignoreEmptyHeaders)").
expr(csvformat_1_expr93, class_instance_creation, csvformat_1_stmt44, expression, range(csvformat_1, 29356, 220, 842, 844), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord,ignoreEmptyHeaders)").
expr(csvformat_1_expr94, class_instance_creation, csvformat_1_stmt45, expression, range(csvformat_1, 30044, 220, 856, 858), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord,ignoreEmptyHeaders)").
expr(csvformat_1_expr95, class_instance_creation, csvformat_1_stmt46, expression, range(csvformat_1, 30988, 220, 877, 879), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord,ignoreEmptyHeaders)").
expr(csvformat_1_expr96, method_invocation, csvformat_1_stmt47, expression, range(csvformat_1, 32178, 22, 905, 905), "isLineBreak(quoteChar)").
expr(csvformat_1_expr97, class_instance_creation, csvformat_1_stmt48, expression, range(csvformat_1, 32317, 220, 908, 910), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord,ignoreEmptyHeaders)").
expr(csvformat_1_expr98, method_invocation, csvformat_1_stmt49, expression, range(csvformat_1, 33694, 52, 940, 940), "withRecordSeparator(String.valueOf(recordSeparator))").
expr(csvformat_1_expr99, method_invocation, csvformat_1_expr98, (arguments, 0), range(csvformat_1, 33714, 31, 940, 940), "String.valueOf(recordSeparator)").
expr(csvformat_1_expr100, class_instance_creation, csvformat_1_stmt50, expression, range(csvformat_1, 34332, 220, 956, 958), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord,ignoreEmptyHeaders)").
%constants_1 - org.apache.commons.csv.Constants
expr(constants_1_expr1, method_invocation, constants_1_code7, initializer, range(constants_1, 1198, 22, 36, 36), "Character.valueOf('\"')").
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
expr(csvparser_test_1_expr1, array_initializer, csvparser_test_1_code12, initializer, range(csvparser_test_1, 2720, 151, 76, 81), "{{\"a\",\"b\",\"c\",\"d\"},{\"a\",\"b\",\"1 2\"},{\"foo baar\",\"b\",\"\"},{\"foo\\n,,\\n\\\",,\\n\\\"\",\"d\",\"e\"}}").
expr(csvparser_test_1_expr2, class_instance_creation, csvparser_test_1_code16, initializer, range(csvparser_test_1, 25174, 46, 669, 669), "new StringReader(\"a,,c,,d\\n1,2,3,4\\nx,y,z,zz\")").
expr(csvparser_test_1_expr7, method_invocation, csvparser_test_1_expr6, expression, range(csvparser_test_1, 25230, 30, 670, 670), "CSVFormat.DEFAULT.withHeader()").
expr(csvparser_test_1_expr6, method_invocation, csvparser_test_1_expr5, expression, range(csvparser_test_1, 25230, 49, 670, 670), "CSVFormat.DEFAULT.withHeader().withNullString(\"\")").
expr(csvparser_test_1_expr3, method_invocation, csvparser_test_1_stmt2, expression, range(csvparser_test_1, 25230, 99, 670, 670), "CSVFormat.DEFAULT.withHeader().withNullString(\"\").withIgnoreEmptyHeaders(true).parse(in).iterator()").
expr(csvparser_test_1_expr5, method_invocation, csvparser_test_1_expr4, expression, range(csvparser_test_1, 25230, 78, 670, 670), "CSVFormat.DEFAULT.withHeader().withNullString(\"\").withIgnoreEmptyHeaders(true)").
expr(csvparser_test_1_expr4, method_invocation, csvparser_test_1_expr3, expression, range(csvparser_test_1, 25230, 88, 670, 670), "CSVFormat.DEFAULT.withHeader().withNullString(\"\").withIgnoreEmptyHeaders(true).parse(in)").
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
expr(extended_buffered_reader_1_expr1, super_constructor_invocation, extended_buffered_reader_1_block1, (statements, 0), range(extended_buffered_reader_1, 1768, 14, 51, 51), "super(reader);").
expr(extended_buffered_reader_1_expr2, super_method_invocation, extended_buffered_reader_1_code15, initializer, range(extended_buffered_reader_1, 1875, 12, 56, 56), "super.read()").
expr(extended_buffered_reader_1_expr4, infix_expression, extended_buffered_reader_1_expr3, left_operand, range(extended_buffered_reader_1, 1901, 13, 57, 57), "current == CR").
expr(extended_buffered_reader_1_expr3, infix_expression, extended_buffered_reader_1_stmt3, expression, range(extended_buffered_reader_1, 1901, 50, 57, 57), "current == CR || (current == LF && lastChar != CR)").
expr(extended_buffered_reader_1_expr5, parenthesized_expression, extended_buffered_reader_1_expr3, right_operand, range(extended_buffered_reader_1, 1918, 33, 57, 57), "(current == LF && lastChar != CR)").
expr(extended_buffered_reader_1_expr7, infix_expression, extended_buffered_reader_1_expr6, left_operand, range(extended_buffered_reader_1, 1919, 13, 57, 57), "current == LF").
expr(extended_buffered_reader_1_expr6, infix_expression, extended_buffered_reader_1_expr5, expression, range(extended_buffered_reader_1, 1919, 31, 57, 57), "current == LF && lastChar != CR").
expr(extended_buffered_reader_1_expr8, infix_expression, extended_buffered_reader_1_expr6, right_operand, range(extended_buffered_reader_1, 1936, 14, 57, 57), "lastChar != CR").
expr(extended_buffered_reader_1_expr9, postfix_expression, extended_buffered_reader_1_stmt4, expression, range(extended_buffered_reader_1, 1967, 12, 58, 58), "eolCounter++").
expr(extended_buffered_reader_1_expr10, assignment, extended_buffered_reader_1_stmt5, expression, range(extended_buffered_reader_1, 1999, 18, 60, 60), "lastChar=current").
%lexer_1 - org.apache.commons.csv.Lexer
expr(lexer_1_expr1, assignment, lexer_1_stmt1, expression, range(lexer_1, 2505, 20, 63, 63), "this.reader=reader").
expr(lexer_1_expr2, field_access, lexer_1_expr1, left_hand_side, range(lexer_1, 2505, 11, 63, 63), "this.reader").
expr(lexer_1_expr3, this_expression, f_reader_124, expression, range(lexer_1, 2505, 4, 63, 63), "this").
expr(lexer_1_expr4, assignment, lexer_1_stmt2, expression, range(lexer_1, 2535, 38, 64, 64), "this.delimiter=format.getDelimiter()").
expr(lexer_1_expr5, field_access, lexer_1_expr4, left_hand_side, range(lexer_1, 2535, 14, 64, 64), "this.delimiter").
expr(lexer_1_expr7, this_expression, f_delimiter_125, expression, range(lexer_1, 2535, 4, 64, 64), "this").
expr(lexer_1_expr6, method_invocation, lexer_1_expr4, right_hand_side, range(lexer_1, 2552, 21, 64, 64), "format.getDelimiter()").
expr(lexer_1_expr8, assignment, lexer_1_stmt3, expression, range(lexer_1, 2583, 51, 65, 65), "this.escape=mapNullToDisabled(format.getEscape())").
expr(lexer_1_expr9, field_access, lexer_1_expr8, left_hand_side, range(lexer_1, 2583, 11, 65, 65), "this.escape").
expr(lexer_1_expr11, this_expression, f_escape_126, expression, range(lexer_1, 2583, 4, 65, 65), "this").
expr(lexer_1_expr10, method_invocation, lexer_1_expr8, right_hand_side, range(lexer_1, 2597, 37, 65, 65), "mapNullToDisabled(format.getEscape())").
expr(lexer_1_expr12, method_invocation, lexer_1_expr10, (arguments, 0), range(lexer_1, 2615, 18, 65, 65), "format.getEscape()").
expr(lexer_1_expr16, this_expression, f_quote_char_127, expression, range(lexer_1, 2644, 4, 66, 66), "this").
expr(lexer_1_expr13, assignment, lexer_1_stmt4, expression, range(lexer_1, 2644, 57, 66, 66), "this.quoteChar=mapNullToDisabled(format.getQuoteChar())").
expr(lexer_1_expr14, field_access, lexer_1_expr13, left_hand_side, range(lexer_1, 2644, 14, 66, 66), "this.quoteChar").
expr(lexer_1_expr15, method_invocation, lexer_1_expr13, right_hand_side, range(lexer_1, 2661, 40, 66, 66), "mapNullToDisabled(format.getQuoteChar())").
expr(lexer_1_expr17, method_invocation, lexer_1_expr15, (arguments, 0), range(lexer_1, 2679, 21, 66, 66), "format.getQuoteChar()").
expr(lexer_1_expr21, this_expression, f_comment_start_128, expression, range(lexer_1, 2711, 4, 67, 67), "this").
expr(lexer_1_expr19, field_access, lexer_1_expr18, left_hand_side, range(lexer_1, 2711, 17, 67, 67), "this.commentStart").
expr(lexer_1_expr18, assignment, lexer_1_stmt5, expression, range(lexer_1, 2711, 63, 67, 67), "this.commentStart=mapNullToDisabled(format.getCommentStart())").
expr(lexer_1_expr20, method_invocation, lexer_1_expr18, right_hand_side, range(lexer_1, 2731, 43, 67, 67), "mapNullToDisabled(format.getCommentStart())").
expr(lexer_1_expr22, method_invocation, lexer_1_expr20, (arguments, 0), range(lexer_1, 2749, 24, 67, 67), "format.getCommentStart()").
expr(lexer_1_expr26, this_expression, f_ignore_surrounding_spaces_129, expression, range(lexer_1, 2784, 4, 68, 68), "this").
expr(lexer_1_expr24, field_access, lexer_1_expr23, left_hand_side, range(lexer_1, 2784, 28, 68, 68), "this.ignoreSurroundingSpaces").
expr(lexer_1_expr23, assignment, lexer_1_stmt6, expression, range(lexer_1, 2784, 66, 68, 68), "this.ignoreSurroundingSpaces=format.getIgnoreSurroundingSpaces()").
expr(lexer_1_expr25, method_invocation, lexer_1_expr23, right_hand_side, range(lexer_1, 2815, 35, 68, 68), "format.getIgnoreSurroundingSpaces()").
expr(lexer_1_expr28, field_access, lexer_1_expr27, left_hand_side, range(lexer_1, 2860, 21, 69, 69), "this.ignoreEmptyLines").
expr(lexer_1_expr27, assignment, lexer_1_stmt7, expression, range(lexer_1, 2860, 52, 69, 69), "this.ignoreEmptyLines=format.getIgnoreEmptyLines()").
expr(lexer_1_expr30, this_expression, f_ignore_empty_lines_130, expression, range(lexer_1, 2860, 4, 69, 69), "this").
expr(lexer_1_expr29, method_invocation, lexer_1_expr27, right_hand_side, range(lexer_1, 2884, 28, 69, 69), "format.getIgnoreEmptyLines()").
expr(lexer_1_expr31, method_invocation, lexer_1_code12, initializer, range(lexer_1, 3461, 20, 86, 86), "reader.getLastChar()").
expr(lexer_1_expr32, method_invocation, lexer_1_code14, initializer, range(lexer_1, 3542, 13, 89, 89), "reader.read()").
expr(lexer_1_expr33, method_invocation, lexer_1_code16, initializer, range(lexer_1, 3761, 16, 94, 94), "readEndOfLine(c)").
expr(lexer_1_expr34, infix_expression, lexer_1_stmt12, expression, range(lexer_1, 3905, 30, 98, 98), "eol && isStartOfLine(lastChar)").
expr(lexer_1_expr35, method_invocation, lexer_1_expr34, right_operand, range(lexer_1, 3912, 23, 98, 98), "isStartOfLine(lastChar)").
expr(lexer_1_expr37, method_invocation, lexer_1_expr36, left_operand, range(lexer_1, 4471, 21, 113, 113), "isEndOfFile(lastChar)").
expr(lexer_1_expr36, infix_expression, lexer_1_stmt13, expression, range(lexer_1, 4471, 67, 113, 113), "isEndOfFile(lastChar) || (!isDelimiter(lastChar) && isEndOfFile(c))").
expr(lexer_1_expr38, parenthesized_expression, lexer_1_expr36, right_operand, range(lexer_1, 4496, 42, 113, 113), "(!isDelimiter(lastChar) && isEndOfFile(c))").
expr(lexer_1_expr39, infix_expression, lexer_1_expr38, expression, range(lexer_1, 4497, 40, 113, 113), "!isDelimiter(lastChar) && isEndOfFile(c)").
expr(lexer_1_expr40, prefix_expression, lexer_1_expr39, left_operand, range(lexer_1, 4497, 22, 113, 113), "!isDelimiter(lastChar)").
expr(lexer_1_expr41, method_invocation, lexer_1_expr40, operand, range(lexer_1, 4498, 21, 113, 113), "isDelimiter(lastChar)").
expr(lexer_1_expr42, method_invocation, lexer_1_expr39, right_operand, range(lexer_1, 4523, 14, 113, 113), "isEndOfFile(c)").
expr(lexer_1_expr44, method_invocation, lexer_1_expr43, left_operand, range(lexer_1, 4684, 23, 119, 119), "isStartOfLine(lastChar)").
expr(lexer_1_expr43, infix_expression, lexer_1_stmt14, expression, range(lexer_1, 4684, 44, 119, 119), "isStartOfLine(lastChar) && isCommentStart(c)").
expr(lexer_1_expr45, method_invocation, lexer_1_expr43, right_operand, range(lexer_1, 4711, 17, 119, 119), "isCommentStart(c)").
expr(lexer_1_expr46, infix_expression, lexer_1_stmt15, expression, range(lexer_1, 5212, 21, 133, 133), "token.type == INVALID").
expr(lexer_1_expr47, method_invocation, lexer_1_stmt17, expression, range(lexer_1, 5586, 14, 143, 143), "isDelimiter(c)").
expr(lexer_1_expr48, assignment, lexer_1_stmt18, expression, range(lexer_1, 5668, 18, 145, 145), "token.type=TOKEN").
expr(lexer_1_expr49, method_invocation, lexer_1_stmt20, expression, range(lexer_1, 5882, 14, 150, 150), "isQuoteChar(c)").
expr(lexer_1_expr50, method_invocation, lexer_1_stmt21, expression, range(lexer_1, 6016, 14, 153, 153), "isEndOfFile(c)").
expr(lexer_1_expr51, method_invocation, lexer_1_stmt22, expression, range(lexer_1, 6391, 26, 161, 161), "parseSimpleToken(token,c)").
expr(lexer_1_expr52, method_invocation, lexer_1_stmt25, expression, range(lexer_1, 7364, 17, 189, 189), "readEndOfLine(ch)").
expr(lexer_1_expr53, assignment, lexer_1_stmt26, expression, range(lexer_1, 7401, 21, 190, 190), "token.type=EORECORD").
expr(lexer_1_expr54, method_invocation, lexer_1_stmt28, expression, range(lexer_1, 7470, 15, 192, 192), "isEndOfFile(ch)").
expr(lexer_1_expr55, method_invocation, lexer_1_stmt29, expression, range(lexer_1, 7631, 15, 196, 196), "isDelimiter(ch)").
expr(lexer_1_expr56, assignment, lexer_1_stmt30, expression, range(lexer_1, 7666, 18, 197, 197), "token.type=TOKEN").
expr(lexer_1_expr57, method_invocation, lexer_1_stmt32, expression, range(lexer_1, 7732, 12, 199, 199), "isEscape(ch)").
expr(lexer_1_expr58, method_invocation, lexer_1_stmt33, expression, range(lexer_1, 8169, 31, 208, 208), "token.content.append((char)ch)").
expr(lexer_1_expr59, cast_expression, lexer_1_expr58, (arguments, 0), range(lexer_1, 8190, 9, 208, 208), "(char)ch").
expr(lexer_1_expr60, assignment, lexer_1_stmt34, expression, range(lexer_1, 8218, 18, 209, 209), "ch=reader.read()").
expr(lexer_1_expr61, method_invocation, lexer_1_expr60, right_hand_side, range(lexer_1, 8223, 13, 209, 209), "reader.read()").
expr(lexer_1_expr62, conditional_expression, lexer_1_stmt37, expression, range(lexer_1, 11799, 36, 292, 292), "c == null ? DISABLED : c.charValue()").
expr(lexer_1_expr63, infix_expression, lexer_1_expr62, expression, range(lexer_1, 11799, 9, 292, 292), "c == null").
expr(lexer_1_expr64, method_invocation, lexer_1_expr62, else_expression, range(lexer_1, 11822, 13, 292, 292), "c.charValue()").
expr(lexer_1_expr66, infix_expression, lexer_1_expr65, left_operand, range(lexer_1, 14218, 8, 365, 365), "ch == CR").
expr(lexer_1_expr65, infix_expression, lexer_1_stmt38, expression, range(lexer_1, 14218, 36, 365, 365), "ch == CR && reader.lookAhead() == LF").
expr(lexer_1_expr68, method_invocation, lexer_1_expr67, left_operand, range(lexer_1, 14230, 18, 365, 365), "reader.lookAhead()").
expr(lexer_1_expr67, infix_expression, lexer_1_expr65, right_operand, range(lexer_1, 14230, 24, 365, 365), "reader.lookAhead() == LF").
expr(lexer_1_expr69, infix_expression, lexer_1_stmt39, expression, range(lexer_1, 14379, 20, 369, 369), "ch == LF || ch == CR").
expr(lexer_1_expr70, infix_expression, lexer_1_expr69, left_operand, range(lexer_1, 14379, 8, 369, 369), "ch == LF").
expr(lexer_1_expr71, infix_expression, lexer_1_expr69, right_operand, range(lexer_1, 14391, 8, 369, 369), "ch == CR").
expr(lexer_1_expr73, infix_expression, lexer_1_expr72, left_operand, range(lexer_1, 14968, 20, 390, 390), "ch == LF || ch == CR").
expr(lexer_1_expr74, infix_expression, lexer_1_expr73, left_operand, range(lexer_1, 14968, 8, 390, 390), "ch == LF").
expr(lexer_1_expr72, infix_expression, lexer_1_stmt40, expression, range(lexer_1, 14968, 39, 390, 390), "ch == LF || ch == CR || ch == UNDEFINED").
expr(lexer_1_expr75, infix_expression, lexer_1_expr73, right_operand, range(lexer_1, 14980, 8, 390, 390), "ch == CR").
expr(lexer_1_expr76, infix_expression, lexer_1_expr72, right_operand, range(lexer_1, 14992, 15, 390, 390), "ch == UNDEFINED").
expr(lexer_1_expr77, infix_expression, lexer_1_stmt41, expression, range(lexer_1, 15152, 19, 397, 397), "ch == END_OF_STREAM").
expr(lexer_1_expr78, infix_expression, lexer_1_stmt42, expression, range(lexer_1, 15235, 15, 401, 401), "ch == delimiter").
expr(lexer_1_expr79, infix_expression, lexer_1_stmt43, expression, range(lexer_1, 15311, 12, 405, 405), "ch == escape").
expr(lexer_1_expr80, infix_expression, lexer_1_stmt44, expression, range(lexer_1, 15387, 15, 409, 409), "ch == quoteChar").
expr(lexer_1_expr81, infix_expression, lexer_1_stmt45, expression, range(lexer_1, 15469, 18, 413, 413), "ch == commentStart").
%token_1 - org.apache.commons.csv.Token
expr(token_1_expr1, class_instance_creation, token_1_code16, initializer, range(token_1, 1725, 39, 55, 55), "new StringBuilder(INITIAL_TOKEN_LENGTH)").
expr(token_1_expr2, method_invocation, token_1_stmt1, expression, range(token_1, 1906, 20, 61, 61), "content.setLength(0)").
expr(token_1_expr3, assignment, token_1_stmt2, expression, range(token_1, 1936, 14, 62, 62), "type=INVALID").
expr(token_1_expr4, assignment, token_1_stmt3, expression, range(token_1, 1960, 15, 63, 63), "isReady=false").
%assertions_1 - org.apache.commons.csv.Assertions
expr(assertions_1_expr1, infix_expression, assertions_1_stmt1, expression, range(assertions_1, 1105, 17, 32, 32), "parameter == null").
%csvrecord_1 - org.apache.commons.csv.CSVRecord
expr(csvrecord_1_expr1, array_creation, csvrecord_1_code10, initializer, range(csvrecord_1, 1215, 13, 35, 35), "new String[0]").
expr(csvrecord_1_expr2, assignment, csvrecord_1_stmt1, expression, range(csvrecord_1, 1741, 32, 53, 53), "this.recordNumber=recordNumber").
expr(csvrecord_1_expr3, field_access, csvrecord_1_expr2, left_hand_side, range(csvrecord_1, 1741, 17, 53, 53), "this.recordNumber").
expr(csvrecord_1_expr4, this_expression, f_record_number_104, expression, range(csvrecord_1, 1741, 4, 53, 53), "this").
expr(csvrecord_1_expr5, assignment, csvrecord_1_stmt2, expression, range(csvrecord_1, 1783, 58, 54, 54), "this.values=values != null ? values : EMPTY_STRING_ARRAY").
expr(csvrecord_1_expr6, field_access, csvrecord_1_expr5, left_hand_side, range(csvrecord_1, 1783, 11, 54, 54), "this.values").
expr(csvrecord_1_expr8, this_expression, f_values_105, expression, range(csvrecord_1, 1783, 4, 54, 54), "this").
expr(csvrecord_1_expr7, conditional_expression, csvrecord_1_expr5, right_hand_side, range(csvrecord_1, 1797, 44, 54, 54), "values != null ? values : EMPTY_STRING_ARRAY").
expr(csvrecord_1_expr9, infix_expression, csvrecord_1_expr7, expression, range(csvrecord_1, 1797, 14, 54, 54), "values != null").
expr(csvrecord_1_expr12, this_expression, f_mapping_106, expression, range(csvrecord_1, 1851, 4, 55, 55), "this").
expr(csvrecord_1_expr11, field_access, csvrecord_1_expr10, left_hand_side, range(csvrecord_1, 1851, 12, 55, 55), "this.mapping").
expr(csvrecord_1_expr10, assignment, csvrecord_1_stmt3, expression, range(csvrecord_1, 1851, 22, 55, 55), "this.mapping=mapping").
expr(csvrecord_1_expr13, assignment, csvrecord_1_stmt4, expression, range(csvrecord_1, 1883, 22, 56, 56), "this.comment=comment").
expr(csvrecord_1_expr15, this_expression, f_comment_107, expression, range(csvrecord_1, 1883, 4, 56, 56), "this").
expr(csvrecord_1_expr14, field_access, csvrecord_1_expr13, left_hand_side, range(csvrecord_1, 1883, 12, 56, 56), "this.comment").

%%% Names
%csvparser_1 - org.apache.commons.csv.CSVParser
name(f_record_70, simple_name, csvparser_1_code9, name, range(csvparser_1, 7898, 6, 221, 221), 'record').
name(f_reusable_token_71, simple_name, csvparser_1_code17, name, range(csvparser_1, 7989, 13, 225, 225), 'reusableToken').
name(m_csvparser_32, simple_name, csvparser_1_code19, name, range(csvparser_1, 8762, 9, 244, 244), 'CSVParser').
name(p_reader_72, simple_name, csvparser_1_code21, name, range(csvparser_1, 8785, 6, 244, 244), 'reader').
name(p_format_73, simple_name, csvparser_1_code24, name, range(csvparser_1, 8809, 6, 244, 244), 'format').
name(t_assertions_4, simple_name, csvparser_1_expr3, expression, range(csvparser_1, 8846, 10, 245, 245), 'Assertions').
name(m_not_null_2, simple_name, csvparser_1_expr3, name, range(csvparser_1, 8857, 7, 245, 245), 'notNull').
name(p_reader_72, simple_name, csvparser_1_expr3, (arguments, 0), range(csvparser_1, 8865, 6, 245, 245), 'reader').
name(t_assertions_4, simple_name, csvparser_1_expr4, expression, range(csvparser_1, 8892, 10, 246, 246), 'Assertions').
name(m_not_null_2, simple_name, csvparser_1_expr4, name, range(csvparser_1, 8903, 7, 246, 246), 'notNull').
name(p_format_73, simple_name, csvparser_1_expr4, (arguments, 0), range(csvparser_1, 8911, 6, 246, 246), 'format').
name(f_format_74, simple_name, csvparser_1_expr6, name, range(csvparser_1, 8944, 6, 248, 248), 'format').
name(p_format_73, simple_name, csvparser_1_expr5, right_hand_side, range(csvparser_1, 8953, 6, 248, 248), 'format').
name(f_lexer_75, simple_name, csvparser_1_expr9, name, range(csvparser_1, 8974, 5, 249, 249), 'lexer').
name(p_format_73, simple_name, csvparser_1_expr10, (arguments, 0), range(csvparser_1, 8992, 6, 249, 249), 'format').
name(p_reader_72, simple_name, csvparser_1_expr12, (arguments, 0), range(csvparser_1, 9027, 6, 249, 249), 'reader').
name(f_header_map_76, simple_name, csvparser_1_expr14, name, range(csvparser_1, 9050, 9, 250, 250), 'headerMap').
name(m_initialize_header_60, simple_name, csvparser_1_expr15, name, range(csvparser_1, 9067, 16, 250, 250), 'initializeHeader').
name(v_input_77, simple_name, csvparser_1_code33, name, range(csvparser_1, 9151, 5, 254, 254), 'input').
name(f_reusable_token_71, simple_name, csvparser_1_expr20, name, range(csvparser_1, 9164, 13, 254, 254), 'reusableToken').
name(f_content_78, simple_name, csvparser_1_expr19, name, range(csvparser_1, 9178, 7, 254, 254), 'content').
name(m_to_string_62, simple_name, csvparser_1_expr18, name, range(csvparser_1, 9186, 8, 254, 254), 'toString').
name(v_null_string_79, simple_name, csvparser_1_code36, name, range(csvparser_1, 9219, 10, 255, 255), 'nullString').
name(f_format_74, simple_name, csvparser_1_expr23, name, range(csvparser_1, 9237, 6, 255, 255), 'format').
name(m_get_null_string_21, simple_name, csvparser_1_expr22, name, range(csvparser_1, 9244, 13, 255, 255), 'getNullString').
name(v_null_string_79, simple_name, csvparser_1_expr25, left_operand, range(csvparser_1, 9273, 10, 256, 256), 'nullString').
name(f_record_70, simple_name, csvparser_1_expr28, name, range(csvparser_1, 9365, 6, 259, 259), 'record').
name(m_add_63, simple_name, csvparser_1_expr26, name, range(csvparser_1, 9372, 3, 259, 259), 'add').
name(v_input_77, simple_name, csvparser_1_expr30, expression, range(csvparser_1, 9376, 5, 259, 259), 'input').
name(m_equals_ignore_case_64, simple_name, csvparser_1_expr30, name, range(csvparser_1, 9382, 16, 259, 259), 'equalsIgnoreCase').
name(v_null_string_79, simple_name, csvparser_1_expr30, (arguments, 0), range(csvparser_1, 9399, 10, 259, 259), 'nullString').
name(v_input_77, simple_name, csvparser_1_expr27, else_expression, range(csvparser_1, 9420, 5, 259, 259), 'input').
name(v_hdr_map_81, simple_name, csvparser_1_code42, name, range(csvparser_1, 12528, 6, 360, 360), 'hdrMap').
name(v_format_header_82, simple_name, csvparser_1_code47, name, range(csvparser_1, 12566, 12, 361, 361), 'formatHeader').
name(f_format_74, simple_name, csvparser_1_expr32, name, range(csvparser_1, 12586, 6, 361, 361), 'format').
name(m_get_header_17, simple_name, csvparser_1_expr31, name, range(csvparser_1, 12593, 9, 361, 361), 'getHeader').
name(v_format_header_82, simple_name, csvparser_1_expr34, left_operand, range(csvparser_1, 12618, 12, 362, 362), 'formatHeader').
name(v_hdr_map_81, simple_name, csvparser_1_expr35, left_hand_side, range(csvparser_1, 12654, 6, 363, 363), 'hdrMap').
name(v_header_record_83, simple_name, csvparser_1_code55, name, range(csvparser_1, 12723, 12, 365, 365), 'headerRecord').
name(v_format_header_82, simple_name, q_length_2, qualifier, range(csvparser_1, 12760, 12, 366, 366), 'formatHeader').
name(q_length_2, qualified_name, csvparser_1_expr37, left_operand, range(csvparser_1, 12760, 19, 366, 366), 'formatHeader.length').
name(v_next_record_84, simple_name, csvparser_1_code58, name, range(csvparser_1, 12887, 10, 368, 368), 'nextRecord').
name(m_next_record_72, simple_name, csvparser_1_expr38, name, range(csvparser_1, 12905, 10, 368, 368), 'nextRecord').
name(v_next_record_84, simple_name, csvparser_1_expr40, left_operand, range(csvparser_1, 12939, 10, 369, 369), 'nextRecord').
name(v_header_record_83, simple_name, csvparser_1_expr41, left_hand_side, range(csvparser_1, 12981, 12, 370, 370), 'headerRecord').
name(v_next_record_84, simple_name, csvparser_1_expr42, expression, range(csvparser_1, 12996, 10, 370, 370), 'nextRecord').
name(m_values_73, simple_name, csvparser_1_expr42, name, range(csvparser_1, 13007, 6, 370, 370), 'values').
name(v_header_record_83, simple_name, csvparser_1_expr43, left_operand, range(csvparser_1, 13294, 12, 380, 380), 'headerRecord').
name(v_i_85, simple_name, csvparser_1_code60, name, range(csvparser_1, 13343, 1, 381, 381), 'i').
name(v_i_85, simple_name, csvparser_1_expr45, left_operand, range(csvparser_1, 13350, 1, 381, 381), 'i').
name(v_header_record_83, simple_name, q_length_3, qualifier, range(csvparser_1, 13354, 12, 381, 381), 'headerRecord').
name(q_length_3, qualified_name, csvparser_1_expr45, right_operand, range(csvparser_1, 13354, 19, 381, 381), 'headerRecord.length').
name(v_i_85, simple_name, csvparser_1_expr46, operand, range(csvparser_1, 13375, 1, 381, 381), 'i').
name(v_header_86, simple_name, csvparser_1_code63, name, range(csvparser_1, 13415, 6, 382, 382), 'header').
name(v_header_record_83, simple_name, csvparser_1_expr47, array, range(csvparser_1, 13424, 12, 382, 382), 'headerRecord').
name(v_i_85, simple_name, csvparser_1_expr47, index, range(csvparser_1, 13437, 1, 382, 382), 'i').
name(v_contains_header_87, simple_name, csvparser_1_code66, name, range(csvparser_1, 13475, 14, 383, 383), 'containsHeader').
name(v_hdr_map_81, simple_name, csvparser_1_expr48, expression, range(csvparser_1, 13492, 6, 383, 383), 'hdrMap').
name(m_contains_key_74, simple_name, csvparser_1_expr48, name, range(csvparser_1, 13499, 11, 383, 383), 'containsKey').
name(v_header_86, simple_name, csvparser_1_expr48, (arguments, 0), range(csvparser_1, 13511, 6, 383, 383), 'header').
name(v_empty_header_88, simple_name, csvparser_1_code69, name, range(csvparser_1, 13554, 11, 384, 384), 'emptyHeader').
name(v_header_86, simple_name, csvparser_1_expr50, expression, range(csvparser_1, 13568, 6, 384, 384), 'header').
name(m_trim_76, simple_name, csvparser_1_expr50, name, range(csvparser_1, 13575, 4, 384, 384), 'trim').
name(m_is_empty_75, simple_name, csvparser_1_expr49, name, range(csvparser_1, 13582, 7, 384, 384), 'isEmpty').
name(v_contains_header_87, simple_name, csvparser_1_expr51, left_operand, range(csvparser_1, 13617, 14, 385, 385), 'containsHeader').
name(v_empty_header_88, simple_name, csvparser_1_expr54, operand, range(csvparser_1, 13637, 11, 385, 385), 'emptyHeader').
name(v_empty_header_88, simple_name, csvparser_1_expr56, left_operand, range(csvparser_1, 13653, 11, 385, 385), 'emptyHeader').
name(f_format_74, simple_name, csvparser_1_expr59, name, range(csvparser_1, 13674, 6, 385, 385), 'format').
name(m_get_ignore_empty_headers_18, simple_name, csvparser_1_expr58, name, range(csvparser_1, 13681, 21, 385, 385), 'getIgnoreEmptyHeaders').
name(v_hdr_map_81, simple_name, csvparser_1_expr61, expression, range(csvparser_1, 13940, 6, 389, 389), 'hdrMap').
name(m_put_77, simple_name, csvparser_1_expr61, name, range(csvparser_1, 13947, 3, 389, 389), 'put').
name(v_header_86, simple_name, csvparser_1_expr61, (arguments, 0), range(csvparser_1, 13951, 6, 389, 389), 'header').
name(t_integer_5, simple_name, csvparser_1_expr62, expression, range(csvparser_1, 13959, 7, 389, 389), 'Integer').
name(m_value_of_78, simple_name, csvparser_1_expr62, name, range(csvparser_1, 13967, 7, 389, 389), 'valueOf').
name(v_i_85, simple_name, csvparser_1_expr62, (arguments, 0), range(csvparser_1, 13975, 1, 389, 389), 'i').
name(v_result_89, simple_name, csvparser_1_code72, name, range(csvparser_1, 16272, 6, 464, 464), 'result').
name(f_record_70, simple_name, csvparser_1_expr64, name, range(csvparser_1, 16300, 6, 465, 465), 'record').
name(m_clear_85, simple_name, csvparser_1_expr63, name, range(csvparser_1, 16307, 5, 465, 465), 'clear').
name(v_sb_90, simple_name, csvparser_1_code74, name, range(csvparser_1, 16338, 2, 466, 466), 'sb').
name(f_reusable_token_71, simple_name, csvparser_1_expr67, name, range(csvparser_1, 16379, 13, 468, 468), 'reusableToken').
name(m_reset_86, simple_name, csvparser_1_expr66, name, range(csvparser_1, 16393, 5, 468, 468), 'reset').
name(f_lexer_75, simple_name, csvparser_1_expr71, name, range(csvparser_1, 16419, 5, 469, 469), 'lexer').
name(m_next_token_87, simple_name, csvparser_1_expr69, name, range(csvparser_1, 16425, 9, 469, 469), 'nextToken').
name(f_reusable_token_71, simple_name, csvparser_1_expr70, name, range(csvparser_1, 16440, 13, 469, 469), 'reusableToken').
name(f_reusable_token_71, simple_name, csvparser_1_expr75, name, range(csvparser_1, 16481, 13, 470, 470), 'reusableToken').
name(f_type_91, simple_name, csvparser_1_expr74, name, range(csvparser_1, 16495, 4, 470, 470), 'type').
name(m_add_record_value_61, simple_name, csvparser_1_expr77, name, range(csvparser_1, 16548, 14, 472, 472), 'addRecordValue').
name(m_add_record_value_61, simple_name, csvparser_1_expr79, name, range(csvparser_1, 16637, 14, 475, 475), 'addRecordValue').
name(f_reusable_token_71, simple_name, csvparser_1_expr83, name, range(csvparser_1, 17524, 13, 496, 496), 'reusableToken').
name(f_type_91, simple_name, csvparser_1_expr82, name, range(csvparser_1, 17538, 4, 496, 496), 'type').
name(f_token_92, simple_name, csvparser_1_expr81, right_operand, range(csvparser_1, 17546, 5, 496, 496), 'TOKEN').
name(f_record_70, simple_name, csvparser_1_expr87, name, range(csvparser_1, 17573, 6, 498, 498), 'record').
name(m_is_empty_88, simple_name, csvparser_1_expr86, name, range(csvparser_1, 17580, 7, 498, 498), 'isEmpty').
name(f_record_number_93, simple_name, csvparser_1_expr90, name, range(csvparser_1, 17610, 12, 499, 499), 'recordNumber').
name(v_comment_94, simple_name, csvparser_1_code77, name, range(csvparser_1, 17651, 7, 500, 500), 'comment').
name(v_sb_90, simple_name, csvparser_1_expr93, left_operand, range(csvparser_1, 17661, 2, 500, 500), 'sb').
name(v_sb_90, simple_name, csvparser_1_expr94, expression, range(csvparser_1, 17681, 2, 500, 500), 'sb').
name(m_to_string_62, simple_name, csvparser_1_expr94, name, range(csvparser_1, 17684, 8, 500, 500), 'toString').
name(v_result_89, simple_name, csvparser_1_expr95, left_hand_side, range(csvparser_1, 17708, 6, 501, 501), 'result').
name(f_record_70, simple_name, csvparser_1_expr101, name, range(csvparser_1, 17736, 6, 501, 501), 'record').
name(m_to_array_90, simple_name, csvparser_1_expr97, name, range(csvparser_1, 17743, 7, 501, 501), 'toArray').
name(f_record_70, simple_name, csvparser_1_expr104, name, range(csvparser_1, 17767, 6, 501, 501), 'record').
name(m_size_91, simple_name, csvparser_1_expr103, name, range(csvparser_1, 17774, 4, 501, 501), 'size').
name(f_header_map_76, simple_name, csvparser_1_expr98, name, range(csvparser_1, 17789, 9, 501, 501), 'headerMap').
name(v_comment_94, simple_name, csvparser_1_expr96, (arguments, 2), range(csvparser_1, 17800, 7, 501, 501), 'comment').
name(f_record_number_93, simple_name, csvparser_1_expr99, name, range(csvparser_1, 17834, 12, 502, 502), 'recordNumber').
name(v_result_89, simple_name, csvparser_1_stmt41, expression, range(csvparser_1, 17874, 6, 504, 504), 'result').
%csvformat_1 - org.apache.commons.csv.CSVFormat
name(f_default_3, simple_name, csvformat_1_code8, name, range(csvformat_1, 5341, 7, 175, 175), 'DEFAULT').
name(f_comma_4, simple_name, csvformat_1_expr1, (arguments, 0), range(csvformat_1, 5365, 5, 175, 175), 'COMMA').
name(f_double_quote_char_5, simple_name, csvformat_1_expr1, (arguments, 1), range(csvformat_1, 5372, 17, 175, 175), 'DOUBLE_QUOTE_CHAR').
name(f_crlf_6, simple_name, csvformat_1_expr1, (arguments, 7), range(csvformat_1, 5482, 4, 176, 176), 'CRLF').
name(f_rfc4180_7, simple_name, csvformat_1_code15, name, range(csvformat_1, 5832, 7, 187, 187), 'RFC4180').
name(f_default_3, simple_name, csvformat_1_expr2, expression, range(csvformat_1, 5842, 7, 187, 187), 'DEFAULT').
name(m_with_ignore_empty_lines_4, simple_name, csvformat_1_expr2, name, range(csvformat_1, 5850, 20, 187, 187), 'withIgnoreEmptyLines').
name(f_excel_8, simple_name, csvformat_1_code21, name, range(csvformat_1, 6647, 5, 211, 211), 'EXCEL').
name(f_default_3, simple_name, csvformat_1_expr3, expression, range(csvformat_1, 6655, 7, 211, 211), 'DEFAULT').
name(m_with_ignore_empty_lines_4, simple_name, csvformat_1_expr3, name, range(csvformat_1, 6663, 20, 211, 211), 'withIgnoreEmptyLines').
name(f_tdf_9, simple_name, csvformat_1_code27, name, range(csvformat_1, 6809, 3, 214, 214), 'TDF').
name(f_mysql_10, simple_name, csvformat_1_code33, name, range(csvformat_1, 7386, 5, 227, 227), 'MYSQL').
name(p_c_11, simple_name, csvformat_1_expr7, left_operand, range(csvformat_1, 7885, 1, 244, 244), 'c').
name(f_lf_12, simple_name, csvformat_1_expr7, right_operand, range(csvformat_1, 7890, 2, 244, 244), 'LF').
name(p_c_11, simple_name, csvformat_1_expr8, left_operand, range(csvformat_1, 7896, 1, 244, 244), 'c').
name(f_cr_13, simple_name, csvformat_1_expr8, right_operand, range(csvformat_1, 7901, 2, 244, 244), 'CR').
name(p_c_14, simple_name, csvformat_1_expr10, left_operand, range(csvformat_1, 8236, 1, 256, 256), 'c').
name(m_is_line_break_5, simple_name, csvformat_1_expr11, name, range(csvformat_1, 8249, 11, 256, 256), 'isLineBreak').
name(p_c_14, simple_name, csvformat_1_expr12, expression, range(csvformat_1, 8261, 1, 256, 256), 'c').
name(m_char_value_7, simple_name, csvformat_1_expr12, name, range(csvformat_1, 8263, 9, 256, 256), 'charValue').
name(p_ignore_empty_headers_27, simple_name, csvformat_1_code37, name, range(csvformat_1, 10392, 18, 303, 303), 'ignoreEmptyHeaders').
name(m_is_line_break_5, simple_name, csvformat_1_expr13, name, range(csvformat_1, 10426, 11, 304, 304), 'isLineBreak').
name(p_delimiter_16, simple_name, csvformat_1_expr13, (arguments, 0), range(csvformat_1, 10438, 9, 304, 304), 'delimiter').
name(f_delimiter_28, simple_name, csvformat_1_expr15, name, range(csvformat_1, 10563, 9, 307, 307), 'delimiter').
name(p_delimiter_16, simple_name, csvformat_1_expr14, right_hand_side, range(csvformat_1, 10575, 9, 307, 307), 'delimiter').
name(f_quote_char_29, simple_name, csvformat_1_expr18, name, range(csvformat_1, 10599, 9, 308, 308), 'quoteChar').
name(p_quote_char_17, simple_name, csvformat_1_expr17, right_hand_side, range(csvformat_1, 10611, 9, 308, 308), 'quoteChar').
name(f_quote_policy_30, simple_name, csvformat_1_expr21, name, range(csvformat_1, 10635, 11, 309, 309), 'quotePolicy').
name(p_quote_policy_18, simple_name, csvformat_1_expr20, right_hand_side, range(csvformat_1, 10649, 11, 309, 309), 'quotePolicy').
name(f_comment_start_31, simple_name, csvformat_1_expr24, name, range(csvformat_1, 10675, 12, 310, 310), 'commentStart').
name(p_comment_start_19, simple_name, csvformat_1_expr23, right_hand_side, range(csvformat_1, 10690, 12, 310, 310), 'commentStart').
name(f_escape_32, simple_name, csvformat_1_expr27, name, range(csvformat_1, 10717, 6, 311, 311), 'escape').
name(p_escape_20, simple_name, csvformat_1_expr26, right_hand_side, range(csvformat_1, 10726, 6, 311, 311), 'escape').
name(f_ignore_surrounding_spaces_33, simple_name, csvformat_1_expr30, name, range(csvformat_1, 10747, 23, 312, 312), 'ignoreSurroundingSpaces').
name(p_ignore_surrounding_spaces_21, simple_name, csvformat_1_expr29, right_hand_side, range(csvformat_1, 10773, 23, 312, 312), 'ignoreSurroundingSpaces').
name(f_ignore_empty_headers_34, simple_name, csvformat_1_expr33, name, range(csvformat_1, 10811, 18, 313, 313), 'ignoreEmptyHeaders').
name(p_ignore_empty_headers_27, simple_name, csvformat_1_expr32, right_hand_side, range(csvformat_1, 10832, 18, 313, 313), 'ignoreEmptyHeaders').
name(f_ignore_empty_lines_35, simple_name, csvformat_1_expr36, name, range(csvformat_1, 10865, 16, 314, 314), 'ignoreEmptyLines').
name(p_ignore_empty_lines_22, simple_name, csvformat_1_expr35, right_hand_side, range(csvformat_1, 10884, 16, 314, 314), 'ignoreEmptyLines').
name(f_record_separator_36, simple_name, csvformat_1_expr39, name, range(csvformat_1, 10915, 15, 315, 315), 'recordSeparator').
name(p_record_separator_23, simple_name, csvformat_1_expr38, right_hand_side, range(csvformat_1, 10933, 15, 315, 315), 'recordSeparator').
name(f_null_string_37, simple_name, csvformat_1_expr42, name, range(csvformat_1, 10963, 10, 316, 316), 'nullString').
name(p_null_string_24, simple_name, csvformat_1_expr41, right_hand_side, range(csvformat_1, 10976, 10, 316, 316), 'nullString').
name(p_header_25, simple_name, csvformat_1_expr44, left_operand, range(csvformat_1, 11000, 6, 317, 317), 'header').
name(f_header_38, simple_name, csvformat_1_expr46, name, range(csvformat_1, 11035, 6, 318, 318), 'header').
name(v_dup_check_39, simple_name, csvformat_1_code44, name, range(csvformat_1, 11097, 8, 320, 320), 'dupCheck').
name(v_hdr_40, simple_name, csvformat_1_code48, name, range(csvformat_1, 11161, 3, 321, 321), 'hdr').
name(p_header_25, simple_name, csvformat_1_stmt17, expression, range(csvformat_1, 11167, 6, 321, 321), 'header').
name(f_header_38, simple_name, csvformat_1_expr50, name, range(csvformat_1, 11438, 6, 327, 327), 'header').
name(p_header_25, simple_name, csvformat_1_expr51, expression, range(csvformat_1, 11447, 6, 327, 327), 'header').
name(m_clone_10, simple_name, csvformat_1_expr51, name, range(csvformat_1, 11454, 5, 327, 327), 'clone').
name(f_skip_header_record_41, simple_name, csvformat_1_expr54, name, range(csvformat_1, 11486, 16, 329, 329), 'skipHeaderRecord').
name(p_skip_header_record_26, simple_name, csvformat_1_expr53, right_hand_side, range(csvformat_1, 11505, 16, 329, 329), 'skipHeaderRecord').
name(m_validate_11, simple_name, csvformat_1_expr56, name, range(csvformat_1, 11531, 8, 330, 330), 'validate').
name(f_comment_start_31, simple_name, csvformat_1_stmt21, expression, range(csvformat_1, 14292, 12, 426, 426), 'commentStart').
name(f_delimiter_28, simple_name, csvformat_1_stmt22, expression, range(csvformat_1, 14504, 9, 435, 435), 'delimiter').
name(f_escape_32, simple_name, csvformat_1_stmt23, expression, range(csvformat_1, 14689, 6, 444, 444), 'escape').
name(f_header_38, simple_name, csvformat_1_expr58, left_operand, range(csvformat_1, 14932, 6, 453, 453), 'header').
name(f_header_38, simple_name, csvformat_1_expr59, expression, range(csvformat_1, 14949, 6, 453, 453), 'header').
name(m_clone_10, simple_name, csvformat_1_expr59, name, range(csvformat_1, 14956, 5, 453, 453), 'clone').
name(f_ignore_empty_lines_35, simple_name, csvformat_1_stmt25, expression, range(csvformat_1, 15637, 16, 473, 473), 'ignoreEmptyLines').
name(f_ignore_surrounding_spaces_33, simple_name, csvformat_1_stmt26, expression, range(csvformat_1, 15966, 23, 483, 483), 'ignoreSurroundingSpaces').
name(f_null_string_37, simple_name, csvformat_1_stmt27, expression, range(csvformat_1, 16541, 10, 500, 500), 'nullString').
name(f_quote_char_29, simple_name, csvformat_1_stmt28, expression, range(csvformat_1, 16783, 9, 509, 509), 'quoteChar').
name(p_in_44, simple_name, csvformat_1_expr60, (arguments, 0), range(csvformat_1, 19753, 2, 611, 611), 'in').
name(f_quote_char_29, simple_name, csvformat_1_expr63, left_operand, range(csvformat_1, 21737, 9, 675, 675), 'quoteChar').
name(f_delimiter_28, simple_name, csvformat_1_expr64, left_operand, range(csvformat_1, 21758, 9, 675, 675), 'delimiter').
name(f_quote_char_29, simple_name, csvformat_1_expr65, expression, range(csvformat_1, 21771, 9, 675, 675), 'quoteChar').
name(m_char_value_7, simple_name, csvformat_1_expr65, name, range(csvformat_1, 21781, 9, 675, 675), 'charValue').
name(f_escape_32, simple_name, csvformat_1_expr67, left_operand, range(csvformat_1, 21974, 6, 680, 680), 'escape').
name(f_delimiter_28, simple_name, csvformat_1_expr68, left_operand, range(csvformat_1, 21992, 9, 680, 680), 'delimiter').
name(f_escape_32, simple_name, csvformat_1_expr69, expression, range(csvformat_1, 22005, 6, 680, 680), 'escape').
name(m_char_value_7, simple_name, csvformat_1_expr69, name, range(csvformat_1, 22012, 9, 680, 680), 'charValue').
name(f_comment_start_31, simple_name, csvformat_1_expr71, left_operand, range(csvformat_1, 22199, 12, 685, 685), 'commentStart').
name(f_delimiter_28, simple_name, csvformat_1_expr72, left_operand, range(csvformat_1, 22223, 9, 685, 685), 'delimiter').
name(f_comment_start_31, simple_name, csvformat_1_expr73, expression, range(csvformat_1, 22236, 12, 685, 685), 'commentStart').
name(m_char_value_7, simple_name, csvformat_1_expr73, name, range(csvformat_1, 22249, 9, 685, 685), 'charValue').
name(f_quote_char_29, simple_name, csvformat_1_expr75, left_operand, range(csvformat_1, 22449, 9, 690, 690), 'quoteChar').
name(f_quote_char_29, simple_name, csvformat_1_expr76, expression, range(csvformat_1, 22470, 9, 690, 690), 'quoteChar').
name(m_equals_35, simple_name, csvformat_1_expr76, name, range(csvformat_1, 22480, 6, 690, 690), 'equals').
name(f_comment_start_31, simple_name, csvformat_1_expr76, (arguments, 0), range(csvformat_1, 22487, 12, 690, 690), 'commentStart').
name(f_escape_32, simple_name, csvformat_1_expr78, left_operand, range(csvformat_1, 22689, 6, 695, 695), 'escape').
name(f_escape_32, simple_name, csvformat_1_expr79, expression, range(csvformat_1, 22707, 6, 695, 695), 'escape').
name(m_equals_35, simple_name, csvformat_1_expr79, name, range(csvformat_1, 22714, 6, 695, 695), 'equals').
name(f_comment_start_31, simple_name, csvformat_1_expr79, (arguments, 0), range(csvformat_1, 22721, 12, 695, 695), 'commentStart').
name(f_escape_32, simple_name, csvformat_1_expr81, left_operand, range(csvformat_1, 22920, 6, 700, 700), 'escape').
name(f_quote_policy_30, simple_name, csvformat_1_expr82, left_operand, range(csvformat_1, 22938, 11, 700, 700), 'quotePolicy').
name(q_none_1, qualified_name, csvformat_1_expr82, right_operand, range(csvformat_1, 22953, 10, 700, 700), 'Quote.NONE').
name(t_quote_1, simple_name, q_none_1, qualifier, range(csvformat_1, 22953, 5, 700, 700), 'Quote').
name(f_record_separator_36, simple_name, csvformat_1_expr84, left_operand, range(csvformat_1, 23090, 15, 704, 704), 'recordSeparator').
name(m_is_line_break_5, simple_name, csvformat_1_expr85, name, range(csvformat_1, 25474, 11, 757, 757), 'isLineBreak').
name(p_delimiter_48, simple_name, csvformat_1_expr85, (arguments, 0), range(csvformat_1, 25486, 9, 757, 757), 'delimiter').
name(p_delimiter_48, simple_name, csvformat_1_expr86, (arguments, 0), range(csvformat_1, 25627, 9, 760, 760), 'delimiter').
name(f_quote_char_29, simple_name, csvformat_1_expr86, (arguments, 1), range(csvformat_1, 25638, 9, 760, 760), 'quoteChar').
name(f_quote_policy_30, simple_name, csvformat_1_expr86, (arguments, 2), range(csvformat_1, 25649, 11, 760, 760), 'quotePolicy').
name(f_comment_start_31, simple_name, csvformat_1_expr86, (arguments, 3), range(csvformat_1, 25662, 12, 760, 760), 'commentStart').
name(f_escape_32, simple_name, csvformat_1_expr86, (arguments, 4), range(csvformat_1, 25676, 6, 760, 760), 'escape').
name(f_ignore_surrounding_spaces_33, simple_name, csvformat_1_expr86, (arguments, 5), range(csvformat_1, 25700, 23, 761, 761), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_35, simple_name, csvformat_1_expr86, (arguments, 6), range(csvformat_1, 25725, 16, 761, 761), 'ignoreEmptyLines').
name(f_record_separator_36, simple_name, csvformat_1_expr86, (arguments, 7), range(csvformat_1, 25743, 15, 761, 761), 'recordSeparator').
name(f_null_string_37, simple_name, csvformat_1_expr86, (arguments, 8), range(csvformat_1, 25760, 10, 761, 761), 'nullString').
name(f_header_38, simple_name, csvformat_1_expr86, (arguments, 9), range(csvformat_1, 25772, 6, 761, 761), 'header').
name(f_skip_header_record_41, simple_name, csvformat_1_expr86, (arguments, 10), range(csvformat_1, 25780, 16, 761, 761), 'skipHeaderRecord').
name(f_ignore_empty_headers_34, simple_name, csvformat_1_expr86, (arguments, 11), range(csvformat_1, 25814, 18, 762, 762), 'ignoreEmptyHeaders').
name(m_with_escape_40, simple_name, csvformat_1_expr87, name, range(csvformat_1, 26286, 10, 775, 775), 'withEscape').
name(t_character_2, simple_name, csvformat_1_expr88, expression, range(csvformat_1, 26297, 9, 775, 775), 'Character').
name(m_value_of_41, simple_name, csvformat_1_expr88, name, range(csvformat_1, 26307, 7, 775, 775), 'valueOf').
name(p_escape_49, simple_name, csvformat_1_expr88, (arguments, 0), range(csvformat_1, 26315, 6, 775, 775), 'escape').
name(m_is_line_break_6, simple_name, csvformat_1_expr89, name, range(csvformat_1, 26808, 11, 788, 788), 'isLineBreak').
name(p_escape_50, simple_name, csvformat_1_expr89, (arguments, 0), range(csvformat_1, 26820, 6, 788, 788), 'escape').
name(f_delimiter_28, simple_name, csvformat_1_expr90, (arguments, 0), range(csvformat_1, 26965, 9, 791, 791), 'delimiter').
name(f_quote_char_29, simple_name, csvformat_1_expr90, (arguments, 1), range(csvformat_1, 26976, 9, 791, 791), 'quoteChar').
name(f_quote_policy_30, simple_name, csvformat_1_expr90, (arguments, 2), range(csvformat_1, 26987, 11, 791, 791), 'quotePolicy').
name(f_comment_start_31, simple_name, csvformat_1_expr90, (arguments, 3), range(csvformat_1, 27000, 12, 791, 791), 'commentStart').
name(p_escape_50, simple_name, csvformat_1_expr90, (arguments, 4), range(csvformat_1, 27014, 6, 791, 791), 'escape').
name(f_ignore_surrounding_spaces_33, simple_name, csvformat_1_expr90, (arguments, 5), range(csvformat_1, 27038, 23, 792, 792), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_35, simple_name, csvformat_1_expr90, (arguments, 6), range(csvformat_1, 27063, 16, 792, 792), 'ignoreEmptyLines').
name(f_record_separator_36, simple_name, csvformat_1_expr90, (arguments, 7), range(csvformat_1, 27081, 15, 792, 792), 'recordSeparator').
name(f_null_string_37, simple_name, csvformat_1_expr90, (arguments, 8), range(csvformat_1, 27098, 10, 792, 792), 'nullString').
name(f_header_38, simple_name, csvformat_1_expr90, (arguments, 9), range(csvformat_1, 27110, 6, 792, 792), 'header').
name(f_skip_header_record_41, simple_name, csvformat_1_expr90, (arguments, 10), range(csvformat_1, 27118, 16, 792, 792), 'skipHeaderRecord').
name(f_ignore_empty_headers_34, simple_name, csvformat_1_expr90, (arguments, 11), range(csvformat_1, 27152, 18, 793, 793), 'ignoreEmptyHeaders').
name(f_delimiter_28, simple_name, csvformat_1_expr91, (arguments, 0), range(csvformat_1, 27912, 9, 814, 814), 'delimiter').
name(f_quote_char_29, simple_name, csvformat_1_expr91, (arguments, 1), range(csvformat_1, 27923, 9, 814, 814), 'quoteChar').
name(f_quote_policy_30, simple_name, csvformat_1_expr91, (arguments, 2), range(csvformat_1, 27934, 11, 814, 814), 'quotePolicy').
name(f_comment_start_31, simple_name, csvformat_1_expr91, (arguments, 3), range(csvformat_1, 27947, 12, 814, 814), 'commentStart').
name(f_escape_32, simple_name, csvformat_1_expr91, (arguments, 4), range(csvformat_1, 27961, 6, 814, 814), 'escape').
name(f_ignore_surrounding_spaces_33, simple_name, csvformat_1_expr91, (arguments, 5), range(csvformat_1, 27985, 23, 815, 815), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_35, simple_name, csvformat_1_expr91, (arguments, 6), range(csvformat_1, 28010, 16, 815, 815), 'ignoreEmptyLines').
name(f_record_separator_36, simple_name, csvformat_1_expr91, (arguments, 7), range(csvformat_1, 28028, 15, 815, 815), 'recordSeparator').
name(f_null_string_37, simple_name, csvformat_1_expr91, (arguments, 8), range(csvformat_1, 28045, 10, 815, 815), 'nullString').
name(p_header_51, simple_name, csvformat_1_expr91, (arguments, 9), range(csvformat_1, 28057, 6, 815, 815), 'header').
name(f_skip_header_record_41, simple_name, csvformat_1_expr91, (arguments, 10), range(csvformat_1, 28065, 16, 815, 815), 'skipHeaderRecord').
name(f_ignore_empty_headers_34, simple_name, csvformat_1_expr91, (arguments, 11), range(csvformat_1, 28099, 18, 816, 816), 'ignoreEmptyHeaders').
name(f_delimiter_28, simple_name, csvformat_1_expr92, (arguments, 0), range(csvformat_1, 28639, 9, 828, 828), 'delimiter').
name(f_quote_char_29, simple_name, csvformat_1_expr92, (arguments, 1), range(csvformat_1, 28650, 9, 828, 828), 'quoteChar').
name(f_quote_policy_30, simple_name, csvformat_1_expr92, (arguments, 2), range(csvformat_1, 28661, 11, 828, 828), 'quotePolicy').
name(f_comment_start_31, simple_name, csvformat_1_expr92, (arguments, 3), range(csvformat_1, 28674, 12, 828, 828), 'commentStart').
name(f_escape_32, simple_name, csvformat_1_expr92, (arguments, 4), range(csvformat_1, 28688, 6, 828, 828), 'escape').
name(f_ignore_surrounding_spaces_33, simple_name, csvformat_1_expr92, (arguments, 5), range(csvformat_1, 28712, 23, 829, 829), 'ignoreSurroundingSpaces').
name(p_ignore_empty_headers_52, simple_name, csvformat_1_expr92, (arguments, 6), range(csvformat_1, 28737, 18, 829, 829), 'ignoreEmptyHeaders').
name(f_record_separator_36, simple_name, csvformat_1_expr92, (arguments, 7), range(csvformat_1, 28757, 15, 829, 829), 'recordSeparator').
name(f_null_string_37, simple_name, csvformat_1_expr92, (arguments, 8), range(csvformat_1, 28774, 10, 829, 829), 'nullString').
name(f_header_38, simple_name, csvformat_1_expr92, (arguments, 9), range(csvformat_1, 28786, 6, 829, 829), 'header').
name(f_skip_header_record_41, simple_name, csvformat_1_expr92, (arguments, 10), range(csvformat_1, 28794, 16, 829, 829), 'skipHeaderRecord').
name(p_ignore_empty_headers_52, simple_name, csvformat_1_expr92, (arguments, 11), range(csvformat_1, 28828, 18, 830, 830), 'ignoreEmptyHeaders').
name(f_delimiter_28, simple_name, csvformat_1_expr93, (arguments, 0), range(csvformat_1, 29370, 9, 842, 842), 'delimiter').
name(f_quote_char_29, simple_name, csvformat_1_expr93, (arguments, 1), range(csvformat_1, 29381, 9, 842, 842), 'quoteChar').
name(f_quote_policy_30, simple_name, csvformat_1_expr93, (arguments, 2), range(csvformat_1, 29392, 11, 842, 842), 'quotePolicy').
name(f_comment_start_31, simple_name, csvformat_1_expr93, (arguments, 3), range(csvformat_1, 29405, 12, 842, 842), 'commentStart').
name(f_escape_32, simple_name, csvformat_1_expr93, (arguments, 4), range(csvformat_1, 29419, 6, 842, 842), 'escape').
name(f_ignore_surrounding_spaces_33, simple_name, csvformat_1_expr93, (arguments, 5), range(csvformat_1, 29443, 23, 843, 843), 'ignoreSurroundingSpaces').
name(p_ignore_empty_lines_53, simple_name, csvformat_1_expr93, (arguments, 6), range(csvformat_1, 29468, 16, 843, 843), 'ignoreEmptyLines').
name(f_record_separator_36, simple_name, csvformat_1_expr93, (arguments, 7), range(csvformat_1, 29486, 15, 843, 843), 'recordSeparator').
name(f_null_string_37, simple_name, csvformat_1_expr93, (arguments, 8), range(csvformat_1, 29503, 10, 843, 843), 'nullString').
name(f_header_38, simple_name, csvformat_1_expr93, (arguments, 9), range(csvformat_1, 29515, 6, 843, 843), 'header').
name(f_skip_header_record_41, simple_name, csvformat_1_expr93, (arguments, 10), range(csvformat_1, 29523, 16, 843, 843), 'skipHeaderRecord').
name(f_ignore_empty_headers_34, simple_name, csvformat_1_expr93, (arguments, 11), range(csvformat_1, 29557, 18, 844, 844), 'ignoreEmptyHeaders').
name(f_delimiter_28, simple_name, csvformat_1_expr94, (arguments, 0), range(csvformat_1, 30058, 9, 856, 856), 'delimiter').
name(f_quote_char_29, simple_name, csvformat_1_expr94, (arguments, 1), range(csvformat_1, 30069, 9, 856, 856), 'quoteChar').
name(f_quote_policy_30, simple_name, csvformat_1_expr94, (arguments, 2), range(csvformat_1, 30080, 11, 856, 856), 'quotePolicy').
name(f_comment_start_31, simple_name, csvformat_1_expr94, (arguments, 3), range(csvformat_1, 30093, 12, 856, 856), 'commentStart').
name(f_escape_32, simple_name, csvformat_1_expr94, (arguments, 4), range(csvformat_1, 30107, 6, 856, 856), 'escape').
name(p_ignore_surrounding_spaces_54, simple_name, csvformat_1_expr94, (arguments, 5), range(csvformat_1, 30131, 23, 857, 857), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_35, simple_name, csvformat_1_expr94, (arguments, 6), range(csvformat_1, 30156, 16, 857, 857), 'ignoreEmptyLines').
name(f_record_separator_36, simple_name, csvformat_1_expr94, (arguments, 7), range(csvformat_1, 30174, 15, 857, 857), 'recordSeparator').
name(f_null_string_37, simple_name, csvformat_1_expr94, (arguments, 8), range(csvformat_1, 30191, 10, 857, 857), 'nullString').
name(f_header_38, simple_name, csvformat_1_expr94, (arguments, 9), range(csvformat_1, 30203, 6, 857, 857), 'header').
name(f_skip_header_record_41, simple_name, csvformat_1_expr94, (arguments, 10), range(csvformat_1, 30211, 16, 857, 857), 'skipHeaderRecord').
name(f_ignore_empty_headers_34, simple_name, csvformat_1_expr94, (arguments, 11), range(csvformat_1, 30245, 18, 858, 858), 'ignoreEmptyHeaders').
name(f_delimiter_28, simple_name, csvformat_1_expr95, (arguments, 0), range(csvformat_1, 31002, 9, 877, 877), 'delimiter').
name(f_quote_char_29, simple_name, csvformat_1_expr95, (arguments, 1), range(csvformat_1, 31013, 9, 877, 877), 'quoteChar').
name(f_quote_policy_30, simple_name, csvformat_1_expr95, (arguments, 2), range(csvformat_1, 31024, 11, 877, 877), 'quotePolicy').
name(f_comment_start_31, simple_name, csvformat_1_expr95, (arguments, 3), range(csvformat_1, 31037, 12, 877, 877), 'commentStart').
name(f_escape_32, simple_name, csvformat_1_expr95, (arguments, 4), range(csvformat_1, 31051, 6, 877, 877), 'escape').
name(f_ignore_surrounding_spaces_33, simple_name, csvformat_1_expr95, (arguments, 5), range(csvformat_1, 31075, 23, 878, 878), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_35, simple_name, csvformat_1_expr95, (arguments, 6), range(csvformat_1, 31100, 16, 878, 878), 'ignoreEmptyLines').
name(f_record_separator_36, simple_name, csvformat_1_expr95, (arguments, 7), range(csvformat_1, 31118, 15, 878, 878), 'recordSeparator').
name(p_null_string_55, simple_name, csvformat_1_expr95, (arguments, 8), range(csvformat_1, 31135, 10, 878, 878), 'nullString').
name(f_header_38, simple_name, csvformat_1_expr95, (arguments, 9), range(csvformat_1, 31147, 6, 878, 878), 'header').
name(f_skip_header_record_41, simple_name, csvformat_1_expr95, (arguments, 10), range(csvformat_1, 31155, 16, 878, 878), 'skipHeaderRecord').
name(f_ignore_empty_headers_34, simple_name, csvformat_1_expr95, (arguments, 11), range(csvformat_1, 31189, 18, 879, 879), 'ignoreEmptyHeaders').
name(m_is_line_break_6, simple_name, csvformat_1_expr96, name, range(csvformat_1, 32178, 11, 905, 905), 'isLineBreak').
name(p_quote_char_57, simple_name, csvformat_1_expr96, (arguments, 0), range(csvformat_1, 32190, 9, 905, 905), 'quoteChar').
name(f_delimiter_28, simple_name, csvformat_1_expr97, (arguments, 0), range(csvformat_1, 32331, 9, 908, 908), 'delimiter').
name(p_quote_char_57, simple_name, csvformat_1_expr97, (arguments, 1), range(csvformat_1, 32342, 9, 908, 908), 'quoteChar').
name(f_quote_policy_30, simple_name, csvformat_1_expr97, (arguments, 2), range(csvformat_1, 32353, 11, 908, 908), 'quotePolicy').
name(f_comment_start_31, simple_name, csvformat_1_expr97, (arguments, 3), range(csvformat_1, 32366, 12, 908, 908), 'commentStart').
name(f_escape_32, simple_name, csvformat_1_expr97, (arguments, 4), range(csvformat_1, 32380, 6, 908, 908), 'escape').
name(f_ignore_surrounding_spaces_33, simple_name, csvformat_1_expr97, (arguments, 5), range(csvformat_1, 32404, 23, 909, 909), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_35, simple_name, csvformat_1_expr97, (arguments, 6), range(csvformat_1, 32429, 16, 909, 909), 'ignoreEmptyLines').
name(f_record_separator_36, simple_name, csvformat_1_expr97, (arguments, 7), range(csvformat_1, 32447, 15, 909, 909), 'recordSeparator').
name(f_null_string_37, simple_name, csvformat_1_expr97, (arguments, 8), range(csvformat_1, 32464, 10, 909, 909), 'nullString').
name(f_header_38, simple_name, csvformat_1_expr97, (arguments, 9), range(csvformat_1, 32476, 6, 909, 909), 'header').
name(f_skip_header_record_41, simple_name, csvformat_1_expr97, (arguments, 10), range(csvformat_1, 32484, 16, 909, 909), 'skipHeaderRecord').
name(f_ignore_empty_headers_34, simple_name, csvformat_1_expr97, (arguments, 11), range(csvformat_1, 32518, 18, 910, 910), 'ignoreEmptyHeaders').
name(m_with_record_separator_50, simple_name, csvformat_1_expr98, name, range(csvformat_1, 33694, 19, 940, 940), 'withRecordSeparator').
name(t_string_3, simple_name, csvformat_1_expr99, expression, range(csvformat_1, 33714, 6, 940, 940), 'String').
name(m_value_of_51, simple_name, csvformat_1_expr99, name, range(csvformat_1, 33721, 7, 940, 940), 'valueOf').
name(p_record_separator_59, simple_name, csvformat_1_expr99, (arguments, 0), range(csvformat_1, 33729, 15, 940, 940), 'recordSeparator').
name(f_delimiter_28, simple_name, csvformat_1_expr100, (arguments, 0), range(csvformat_1, 34346, 9, 956, 956), 'delimiter').
name(f_quote_char_29, simple_name, csvformat_1_expr100, (arguments, 1), range(csvformat_1, 34357, 9, 956, 956), 'quoteChar').
name(f_quote_policy_30, simple_name, csvformat_1_expr100, (arguments, 2), range(csvformat_1, 34368, 11, 956, 956), 'quotePolicy').
name(f_comment_start_31, simple_name, csvformat_1_expr100, (arguments, 3), range(csvformat_1, 34381, 12, 956, 956), 'commentStart').
name(f_escape_32, simple_name, csvformat_1_expr100, (arguments, 4), range(csvformat_1, 34395, 6, 956, 956), 'escape').
name(f_ignore_surrounding_spaces_33, simple_name, csvformat_1_expr100, (arguments, 5), range(csvformat_1, 34419, 23, 957, 957), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_35, simple_name, csvformat_1_expr100, (arguments, 6), range(csvformat_1, 34444, 16, 957, 957), 'ignoreEmptyLines').
name(p_record_separator_60, simple_name, csvformat_1_expr100, (arguments, 7), range(csvformat_1, 34462, 15, 957, 957), 'recordSeparator').
name(f_null_string_37, simple_name, csvformat_1_expr100, (arguments, 8), range(csvformat_1, 34479, 10, 957, 957), 'nullString').
name(f_header_38, simple_name, csvformat_1_expr100, (arguments, 9), range(csvformat_1, 34491, 6, 957, 957), 'header').
name(f_skip_header_record_41, simple_name, csvformat_1_expr100, (arguments, 10), range(csvformat_1, 34499, 16, 957, 957), 'skipHeaderRecord').
name(f_ignore_empty_headers_34, simple_name, csvformat_1_expr100, (arguments, 11), range(csvformat_1, 34533, 18, 958, 958), 'ignoreEmptyHeaders').
%constants_1 - org.apache.commons.csv.Constants
name(f_double_quote_char_5, simple_name, constants_1_code7, name, range(constants_1, 1178, 17, 36, 36), 'DOUBLE_QUOTE_CHAR').
name(t_character_2, simple_name, constants_1_expr1, expression, range(constants_1, 1198, 9, 36, 36), 'Character').
name(m_value_of_41, simple_name, constants_1_expr1, name, range(constants_1, 1208, 7, 36, 36), 'valueOf').
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
name(t_csvparser_test_6, simple_name, csvparser_test_1_code2, name, range(csvparser_test_1, 2237, 13, 64, 64), 'CSVParserTest').
name(f_result_95, simple_name, csvparser_test_1_code12, name, range(csvparser_test_1, 2711, 6, 76, 76), 'RESULT').
name(v_in_96, simple_name, csvparser_test_1_code16, name, range(csvparser_test_1, 25169, 2, 669, 669), 'in').
name(t_csvformat_7, simple_name, q_default_4, qualifier, range(csvparser_test_1, 25230, 9, 670, 670), 'CSVFormat').
name(q_default_4, qualified_name, csvparser_test_1_expr7, expression, range(csvparser_test_1, 25230, 17, 670, 670), 'CSVFormat.DEFAULT').
name(m_with_header_42, simple_name, csvparser_test_1_expr7, name, range(csvparser_test_1, 25248, 10, 670, 670), 'withHeader').
name(m_with_null_string_45, simple_name, csvparser_test_1_expr6, name, range(csvparser_test_1, 25261, 14, 670, 670), 'withNullString').
name(m_with_ignore_empty_headers_43, simple_name, csvparser_test_1_expr5, name, range(csvparser_test_1, 25280, 22, 670, 670), 'withIgnoreEmptyHeaders').
name(m_parse_31, simple_name, csvparser_test_1_expr4, name, range(csvparser_test_1, 25309, 5, 670, 670), 'parse').
name(v_in_96, simple_name, csvparser_test_1_expr4, (arguments, 0), range(csvparser_test_1, 25315, 2, 670, 670), 'in').
name(m_iterator_80, simple_name, csvparser_test_1_expr3, name, range(csvparser_test_1, 25319, 8, 670, 670), 'iterator').
%quote_1 - org.apache.commons.csv.Quote
name(t_quote_1, simple_name, quote_1_code2, name, range(quote_1, 917, 5, 24, 24), 'Quote').
name(f_all_153, simple_name, quote_1_code4, name, range(quote_1, 972, 3, 29, 29), 'ALL').
name(f_minimal_154, simple_name, quote_1_code5, name, range(quote_1, 1140, 7, 35, 35), 'MINIMAL').
name(f_non_numeric_155, simple_name, quote_1_code6, name, range(quote_1, 1208, 11, 40, 40), 'NON_NUMERIC').
name(f_none_156, simple_name, quote_1_code7, name, range(quote_1, 1493, 4, 47, 47), 'NONE').
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
name(f_last_char_114, simple_name, extended_buffered_reader_1_code6, name, range(extended_buffered_reader_1, 1488, 8, 40, 40), 'lastChar').
name(f_undefined_115, simple_name, extended_buffered_reader_1_code6, initializer, range(extended_buffered_reader_1, 1499, 9, 40, 40), 'UNDEFINED').
name(f_eol_counter_116, simple_name, extended_buffered_reader_1_code10, name, range(extended_buffered_reader_1, 1582, 10, 43, 43), 'eolCounter').
name(p_reader_117, simple_name, extended_buffered_reader_1_stmt1, (arguments, 0), range(extended_buffered_reader_1, 1774, 6, 51, 51), 'reader').
name(v_current_118, simple_name, extended_buffered_reader_1_code15, name, range(extended_buffered_reader_1, 1865, 7, 56, 56), 'current').
name(m_read_170, simple_name, extended_buffered_reader_1_expr2, name, range(extended_buffered_reader_1, 1881, 4, 56, 56), 'read').
name(v_current_118, simple_name, extended_buffered_reader_1_expr4, left_operand, range(extended_buffered_reader_1, 1901, 7, 57, 57), 'current').
name(f_cr_13, simple_name, extended_buffered_reader_1_expr4, right_operand, range(extended_buffered_reader_1, 1912, 2, 57, 57), 'CR').
name(v_current_118, simple_name, extended_buffered_reader_1_expr7, left_operand, range(extended_buffered_reader_1, 1919, 7, 57, 57), 'current').
name(f_lf_12, simple_name, extended_buffered_reader_1_expr7, right_operand, range(extended_buffered_reader_1, 1930, 2, 57, 57), 'LF').
name(f_last_char_114, simple_name, extended_buffered_reader_1_expr8, left_operand, range(extended_buffered_reader_1, 1936, 8, 57, 57), 'lastChar').
name(f_cr_13, simple_name, extended_buffered_reader_1_expr8, right_operand, range(extended_buffered_reader_1, 1948, 2, 57, 57), 'CR').
name(f_eol_counter_116, simple_name, extended_buffered_reader_1_expr9, operand, range(extended_buffered_reader_1, 1967, 10, 58, 58), 'eolCounter').
name(f_last_char_114, simple_name, extended_buffered_reader_1_expr10, left_hand_side, range(extended_buffered_reader_1, 1999, 8, 60, 60), 'lastChar').
name(v_current_118, simple_name, extended_buffered_reader_1_expr10, right_hand_side, range(extended_buffered_reader_1, 2010, 7, 60, 60), 'current').
name(f_last_char_114, simple_name, extended_buffered_reader_1_stmt6, expression, range(extended_buffered_reader_1, 2034, 8, 61, 61), 'lastChar').
name(f_last_char_114, simple_name, extended_buffered_reader_1_stmt7, expression, range(extended_buffered_reader_1, 2595, 8, 73, 73), 'lastChar').
%lexer_1 - org.apache.commons.csv.Lexer
name(m_lexer_58, simple_name, lexer_1_code3, name, range(lexer_1, 2428, 5, 62, 62), 'Lexer').
name(p_format_122, simple_name, lexer_1_code4, name, range(lexer_1, 2450, 6, 62, 62), 'format').
name(p_reader_123, simple_name, lexer_1_code7, name, range(lexer_1, 2487, 6, 62, 62), 'reader').
name(f_reader_124, simple_name, lexer_1_expr2, name, range(lexer_1, 2510, 6, 63, 63), 'reader').
name(p_reader_123, simple_name, lexer_1_expr1, right_hand_side, range(lexer_1, 2519, 6, 63, 63), 'reader').
name(f_delimiter_125, simple_name, lexer_1_expr5, name, range(lexer_1, 2540, 9, 64, 64), 'delimiter').
name(p_format_122, simple_name, lexer_1_expr6, expression, range(lexer_1, 2552, 6, 64, 64), 'format').
name(m_get_delimiter_15, simple_name, lexer_1_expr6, name, range(lexer_1, 2559, 12, 64, 64), 'getDelimiter').
name(f_escape_126, simple_name, lexer_1_expr9, name, range(lexer_1, 2588, 6, 65, 65), 'escape').
name(m_map_null_to_disabled_178, simple_name, lexer_1_expr10, name, range(lexer_1, 2597, 17, 65, 65), 'mapNullToDisabled').
name(p_format_122, simple_name, lexer_1_expr12, expression, range(lexer_1, 2615, 6, 65, 65), 'format').
name(m_get_escape_16, simple_name, lexer_1_expr12, name, range(lexer_1, 2622, 9, 65, 65), 'getEscape').
name(f_quote_char_127, simple_name, lexer_1_expr14, name, range(lexer_1, 2649, 9, 66, 66), 'quoteChar').
name(m_map_null_to_disabled_178, simple_name, lexer_1_expr15, name, range(lexer_1, 2661, 17, 66, 66), 'mapNullToDisabled').
name(p_format_122, simple_name, lexer_1_expr17, expression, range(lexer_1, 2679, 6, 66, 66), 'format').
name(m_get_quote_char_22, simple_name, lexer_1_expr17, name, range(lexer_1, 2686, 12, 66, 66), 'getQuoteChar').
name(f_comment_start_128, simple_name, lexer_1_expr19, name, range(lexer_1, 2716, 12, 67, 67), 'commentStart').
name(m_map_null_to_disabled_178, simple_name, lexer_1_expr20, name, range(lexer_1, 2731, 17, 67, 67), 'mapNullToDisabled').
name(p_format_122, simple_name, lexer_1_expr22, expression, range(lexer_1, 2749, 6, 67, 67), 'format').
name(m_get_comment_start_14, simple_name, lexer_1_expr22, name, range(lexer_1, 2756, 15, 67, 67), 'getCommentStart').
name(f_ignore_surrounding_spaces_129, simple_name, lexer_1_expr24, name, range(lexer_1, 2789, 23, 68, 68), 'ignoreSurroundingSpaces').
name(p_format_122, simple_name, lexer_1_expr25, expression, range(lexer_1, 2815, 6, 68, 68), 'format').
name(m_get_ignore_surrounding_spaces_20, simple_name, lexer_1_expr25, name, range(lexer_1, 2822, 26, 68, 68), 'getIgnoreSurroundingSpaces').
name(f_ignore_empty_lines_130, simple_name, lexer_1_expr28, name, range(lexer_1, 2865, 16, 69, 69), 'ignoreEmptyLines').
name(p_format_122, simple_name, lexer_1_expr29, expression, range(lexer_1, 2884, 6, 69, 69), 'format').
name(m_get_ignore_empty_lines_19, simple_name, lexer_1_expr29, name, range(lexer_1, 2891, 19, 69, 69), 'getIgnoreEmptyLines').
name(v_last_char_132, simple_name, lexer_1_code12, name, range(lexer_1, 3450, 8, 86, 86), 'lastChar').
name(f_reader_124, simple_name, lexer_1_expr31, expression, range(lexer_1, 3461, 6, 86, 86), 'reader').
name(m_get_last_char_171, simple_name, lexer_1_expr31, name, range(lexer_1, 3468, 11, 86, 86), 'getLastChar').
name(v_c_133, simple_name, lexer_1_code14, name, range(lexer_1, 3538, 1, 89, 89), 'c').
name(f_reader_124, simple_name, lexer_1_expr32, expression, range(lexer_1, 3542, 6, 89, 89), 'reader').
name(m_read_169, simple_name, lexer_1_expr32, name, range(lexer_1, 3549, 4, 89, 89), 'read').
name(v_eol_134, simple_name, lexer_1_code16, name, range(lexer_1, 3755, 3, 94, 94), 'eol').
name(m_read_end_of_line_179, simple_name, lexer_1_expr33, name, range(lexer_1, 3761, 13, 94, 94), 'readEndOfLine').
name(v_c_133, simple_name, lexer_1_expr33, (arguments, 0), range(lexer_1, 3775, 1, 94, 94), 'c').
name(f_ignore_empty_lines_130, simple_name, lexer_1_stmt11, expression, range(lexer_1, 3866, 16, 97, 97), 'ignoreEmptyLines').
name(v_eol_134, simple_name, lexer_1_expr34, left_operand, range(lexer_1, 3905, 3, 98, 98), 'eol').
name(m_is_start_of_line_180, simple_name, lexer_1_expr35, name, range(lexer_1, 3912, 13, 98, 98), 'isStartOfLine').
name(v_last_char_132, simple_name, lexer_1_expr35, (arguments, 0), range(lexer_1, 3926, 8, 98, 98), 'lastChar').
name(m_is_end_of_file_181, simple_name, lexer_1_expr37, name, range(lexer_1, 4471, 11, 113, 113), 'isEndOfFile').
name(v_last_char_132, simple_name, lexer_1_expr37, (arguments, 0), range(lexer_1, 4483, 8, 113, 113), 'lastChar').
name(m_is_delimiter_182, simple_name, lexer_1_expr41, name, range(lexer_1, 4498, 11, 113, 113), 'isDelimiter').
name(v_last_char_132, simple_name, lexer_1_expr41, (arguments, 0), range(lexer_1, 4510, 8, 113, 113), 'lastChar').
name(m_is_end_of_file_181, simple_name, lexer_1_expr42, name, range(lexer_1, 4523, 11, 113, 113), 'isEndOfFile').
name(v_c_133, simple_name, lexer_1_expr42, (arguments, 0), range(lexer_1, 4535, 1, 113, 113), 'c').
name(m_is_start_of_line_180, simple_name, lexer_1_expr44, name, range(lexer_1, 4684, 13, 119, 119), 'isStartOfLine').
name(v_last_char_132, simple_name, lexer_1_expr44, (arguments, 0), range(lexer_1, 4698, 8, 119, 119), 'lastChar').
name(m_is_comment_start_183, simple_name, lexer_1_expr45, name, range(lexer_1, 4711, 14, 119, 119), 'isCommentStart').
name(v_c_133, simple_name, lexer_1_expr45, (arguments, 0), range(lexer_1, 4726, 1, 119, 119), 'c').
name(p_token_131, simple_name, q_type_5, qualifier, range(lexer_1, 5212, 5, 133, 133), 'token').
name(q_type_5, qualified_name, lexer_1_expr46, left_operand, range(lexer_1, 5212, 10, 133, 133), 'token.type').
name(f_invalid_135, simple_name, lexer_1_expr46, right_operand, range(lexer_1, 5226, 7, 133, 133), 'INVALID').
name(f_ignore_surrounding_spaces_129, simple_name, lexer_1_stmt16, expression, range(lexer_1, 5311, 23, 135, 135), 'ignoreSurroundingSpaces').
name(m_is_delimiter_182, simple_name, lexer_1_expr47, name, range(lexer_1, 5586, 11, 143, 143), 'isDelimiter').
name(v_c_133, simple_name, lexer_1_expr47, (arguments, 0), range(lexer_1, 5598, 1, 143, 143), 'c').
name(q_type_6, qualified_name, lexer_1_expr48, left_hand_side, range(lexer_1, 5668, 10, 145, 145), 'token.type').
name(p_token_131, simple_name, q_type_6, qualifier, range(lexer_1, 5668, 5, 145, 145), 'token').
name(f_token_92, simple_name, lexer_1_expr48, right_hand_side, range(lexer_1, 5681, 5, 145, 145), 'TOKEN').
name(v_eol_134, simple_name, lexer_1_stmt19, expression, range(lexer_1, 5711, 3, 146, 146), 'eol').
name(m_is_quote_char_184, simple_name, lexer_1_expr49, name, range(lexer_1, 5882, 11, 150, 150), 'isQuoteChar').
name(v_c_133, simple_name, lexer_1_expr49, (arguments, 0), range(lexer_1, 5894, 1, 150, 150), 'c').
name(m_is_end_of_file_181, simple_name, lexer_1_expr50, name, range(lexer_1, 6016, 11, 153, 153), 'isEndOfFile').
name(v_c_133, simple_name, lexer_1_expr50, (arguments, 0), range(lexer_1, 6028, 1, 153, 153), 'c').
name(m_parse_simple_token_185, simple_name, lexer_1_expr51, name, range(lexer_1, 6391, 16, 161, 161), 'parseSimpleToken').
name(p_token_131, simple_name, lexer_1_expr51, (arguments, 0), range(lexer_1, 6408, 5, 161, 161), 'token').
name(v_c_133, simple_name, lexer_1_expr51, (arguments, 1), range(lexer_1, 6415, 1, 161, 161), 'c').
name(p_token_131, simple_name, lexer_1_stmt23, expression, range(lexer_1, 6458, 5, 164, 164), 'token').
name(m_read_end_of_line_179, simple_name, lexer_1_expr52, name, range(lexer_1, 7364, 13, 189, 189), 'readEndOfLine').
name(p_ch_137, simple_name, lexer_1_expr52, (arguments, 0), range(lexer_1, 7378, 2, 189, 189), 'ch').
name(p_token_136, simple_name, q_type_6, qualifier, range(lexer_1, 7401, 5, 190, 190), 'token').
name(q_type_6, qualified_name, lexer_1_expr53, left_hand_side, range(lexer_1, 7401, 10, 190, 190), 'token.type').
name(f_eorecord_138, simple_name, lexer_1_expr53, right_hand_side, range(lexer_1, 7414, 8, 190, 190), 'EORECORD').
name(m_is_end_of_file_181, simple_name, lexer_1_expr54, name, range(lexer_1, 7470, 11, 192, 192), 'isEndOfFile').
name(p_ch_137, simple_name, lexer_1_expr54, (arguments, 0), range(lexer_1, 7482, 2, 192, 192), 'ch').
name(m_is_delimiter_182, simple_name, lexer_1_expr55, name, range(lexer_1, 7631, 11, 196, 196), 'isDelimiter').
name(p_ch_137, simple_name, lexer_1_expr55, (arguments, 0), range(lexer_1, 7643, 2, 196, 196), 'ch').
name(q_type_7, qualified_name, lexer_1_expr56, left_hand_side, range(lexer_1, 7666, 10, 197, 197), 'token.type').
name(p_token_136, simple_name, q_type_7, qualifier, range(lexer_1, 7666, 5, 197, 197), 'token').
name(f_token_92, simple_name, lexer_1_expr56, right_hand_side, range(lexer_1, 7679, 5, 197, 197), 'TOKEN').
name(m_is_escape_186, simple_name, lexer_1_expr57, name, range(lexer_1, 7732, 8, 199, 199), 'isEscape').
name(p_ch_137, simple_name, lexer_1_expr57, (arguments, 0), range(lexer_1, 7741, 2, 199, 199), 'ch').
name(p_token_136, simple_name, q_content_7, qualifier, range(lexer_1, 8169, 5, 208, 208), 'token').
name(q_content_7, qualified_name, lexer_1_expr58, expression, range(lexer_1, 8169, 13, 208, 208), 'token.content').
name(m_append_187, simple_name, lexer_1_expr58, name, range(lexer_1, 8183, 6, 208, 208), 'append').
name(p_ch_137, simple_name, lexer_1_expr59, expression, range(lexer_1, 8197, 2, 208, 208), 'ch').
name(p_ch_137, simple_name, lexer_1_expr60, left_hand_side, range(lexer_1, 8218, 2, 209, 209), 'ch').
name(f_reader_124, simple_name, lexer_1_expr61, expression, range(lexer_1, 8223, 6, 209, 209), 'reader').
name(m_read_169, simple_name, lexer_1_expr61, name, range(lexer_1, 8230, 4, 209, 209), 'read').
name(f_ignore_surrounding_spaces_129, simple_name, lexer_1_stmt35, expression, range(lexer_1, 8287, 23, 213, 213), 'ignoreSurroundingSpaces').
name(p_token_136, simple_name, lexer_1_stmt36, expression, range(lexer_1, 8387, 5, 217, 217), 'token').
name(p_c_140, simple_name, lexer_1_expr63, left_operand, range(lexer_1, 11799, 1, 292, 292), 'c').
name(f_disabled_141, simple_name, lexer_1_expr62, then_expression, range(lexer_1, 11811, 8, 292, 292), 'DISABLED').
name(p_c_140, simple_name, lexer_1_expr64, expression, range(lexer_1, 11822, 1, 292, 292), 'c').
name(m_char_value_7, simple_name, lexer_1_expr64, name, range(lexer_1, 11824, 9, 292, 292), 'charValue').
name(p_ch_143, simple_name, lexer_1_expr66, left_operand, range(lexer_1, 14218, 2, 365, 365), 'ch').
name(f_cr_13, simple_name, lexer_1_expr66, right_operand, range(lexer_1, 14224, 2, 365, 365), 'CR').
name(f_reader_124, simple_name, lexer_1_expr68, expression, range(lexer_1, 14230, 6, 365, 365), 'reader').
name(m_look_ahead_174, simple_name, lexer_1_expr68, name, range(lexer_1, 14237, 9, 365, 365), 'lookAhead').
name(f_lf_12, simple_name, lexer_1_expr67, right_operand, range(lexer_1, 14252, 2, 365, 365), 'LF').
name(p_ch_143, simple_name, lexer_1_expr70, left_operand, range(lexer_1, 14379, 2, 369, 369), 'ch').
name(f_lf_12, simple_name, lexer_1_expr70, right_operand, range(lexer_1, 14385, 2, 369, 369), 'LF').
name(p_ch_143, simple_name, lexer_1_expr71, left_operand, range(lexer_1, 14391, 2, 369, 369), 'ch').
name(f_cr_13, simple_name, lexer_1_expr71, right_operand, range(lexer_1, 14397, 2, 369, 369), 'CR').
name(p_ch_145, simple_name, lexer_1_expr74, left_operand, range(lexer_1, 14968, 2, 390, 390), 'ch').
name(f_lf_12, simple_name, lexer_1_expr74, right_operand, range(lexer_1, 14974, 2, 390, 390), 'LF').
name(p_ch_145, simple_name, lexer_1_expr75, left_operand, range(lexer_1, 14980, 2, 390, 390), 'ch').
name(f_cr_13, simple_name, lexer_1_expr75, right_operand, range(lexer_1, 14986, 2, 390, 390), 'CR').
name(p_ch_145, simple_name, lexer_1_expr76, left_operand, range(lexer_1, 14992, 2, 390, 390), 'ch').
name(f_undefined_115, simple_name, lexer_1_expr76, right_operand, range(lexer_1, 14998, 9, 390, 390), 'UNDEFINED').
name(p_ch_146, simple_name, lexer_1_expr77, left_operand, range(lexer_1, 15152, 2, 397, 397), 'ch').
name(f_end_of_stream_147, simple_name, lexer_1_expr77, right_operand, range(lexer_1, 15158, 13, 397, 397), 'END_OF_STREAM').
name(p_ch_148, simple_name, lexer_1_expr78, left_operand, range(lexer_1, 15235, 2, 401, 401), 'ch').
name(f_delimiter_125, simple_name, lexer_1_expr78, right_operand, range(lexer_1, 15241, 9, 401, 401), 'delimiter').
name(p_ch_149, simple_name, lexer_1_expr79, left_operand, range(lexer_1, 15311, 2, 405, 405), 'ch').
name(f_escape_126, simple_name, lexer_1_expr79, right_operand, range(lexer_1, 15317, 6, 405, 405), 'escape').
name(p_ch_150, simple_name, lexer_1_expr80, left_operand, range(lexer_1, 15387, 2, 409, 409), 'ch').
name(f_quote_char_127, simple_name, lexer_1_expr80, right_operand, range(lexer_1, 15393, 9, 409, 409), 'quoteChar').
name(p_ch_151, simple_name, lexer_1_expr81, left_operand, range(lexer_1, 15469, 2, 413, 413), 'ch').
name(f_comment_start_128, simple_name, lexer_1_expr81, right_operand, range(lexer_1, 15475, 12, 413, 413), 'commentStart').
%token_1 - org.apache.commons.csv.Token
name(t_token_8, simple_name, token_1_code2, name, range(token_1, 1037, 5, 29, 29), 'Token').
name(t_type_9, simple_name, token_1_code4, name, range(token_1, 1168, 4, 34, 34), 'Type').
name(f_invalid_135, simple_name, token_1_code5, name, range(token_1, 1260, 7, 36, 36), 'INVALID').
name(f_token_92, simple_name, token_1_code6, name, range(token_1, 1354, 5, 39, 39), 'TOKEN').
name(f_eof_157, simple_name, token_1_code7, name, range(token_1, 1449, 3, 42, 42), 'EOF').
name(f_eorecord_138, simple_name, token_1_code8, name, range(token_1, 1532, 8, 45, 45), 'EORECORD').
name(f_comment_158, simple_name, token_1_code9, name, range(token_1, 1591, 7, 48, 48), 'COMMENT').
name(f_type_91, simple_name, token_1_code12, name, range(token_1, 1643, 4, 52, 52), 'type').
name(f_invalid_135, simple_name, token_1_code12, initializer, range(token_1, 1650, 7, 52, 52), 'INVALID').
name(f_content_78, simple_name, token_1_code16, name, range(token_1, 1715, 7, 55, 55), 'content').
name(f_initial_token_length_159, simple_name, token_1_expr1, (arguments, 0), range(token_1, 1743, 20, 55, 55), 'INITIAL_TOKEN_LENGTH').
name(f_content_78, simple_name, token_1_expr2, expression, range(token_1, 1906, 7, 61, 61), 'content').
name(m_set_length_197, simple_name, token_1_expr2, name, range(token_1, 1914, 9, 61, 61), 'setLength').
name(f_type_91, simple_name, token_1_expr3, left_hand_side, range(token_1, 1936, 4, 62, 62), 'type').
name(f_invalid_135, simple_name, token_1_expr3, right_hand_side, range(token_1, 1943, 7, 62, 62), 'INVALID').
name(f_is_ready_160, simple_name, token_1_expr4, left_hand_side, range(token_1, 1960, 7, 63, 63), 'isReady').
%assertions_1 - org.apache.commons.csv.Assertions
name(p_parameter_1, simple_name, assertions_1_expr1, left_operand, range(assertions_1, 1105, 9, 32, 32), 'parameter').
%csvrecord_1 - org.apache.commons.csv.CSVRecord
name(f_empty_string_array_99, simple_name, csvrecord_1_code10, name, range(csvrecord_1, 1194, 18, 35, 35), 'EMPTY_STRING_ARRAY').
name(p_comment_102, simple_name, csvrecord_1_code15, name, range(csvrecord_1, 1697, 7, 52, 52), 'comment').
name(p_record_number_103, simple_name, csvrecord_1_code18, name, range(csvrecord_1, 1717, 12, 52, 52), 'recordNumber').
name(f_record_number_104, simple_name, csvrecord_1_expr3, name, range(csvrecord_1, 1746, 12, 53, 53), 'recordNumber').
name(p_record_number_103, simple_name, csvrecord_1_expr2, right_hand_side, range(csvrecord_1, 1761, 12, 53, 53), 'recordNumber').
name(f_values_105, simple_name, csvrecord_1_expr6, name, range(csvrecord_1, 1788, 6, 54, 54), 'values').
name(p_values_100, simple_name, csvrecord_1_expr9, left_operand, range(csvrecord_1, 1797, 6, 54, 54), 'values').
name(p_values_100, simple_name, csvrecord_1_expr7, then_expression, range(csvrecord_1, 1814, 6, 54, 54), 'values').
name(f_empty_string_array_99, simple_name, csvrecord_1_expr7, else_expression, range(csvrecord_1, 1823, 18, 54, 54), 'EMPTY_STRING_ARRAY').
name(f_mapping_106, simple_name, csvrecord_1_expr11, name, range(csvrecord_1, 1856, 7, 55, 55), 'mapping').
name(p_mapping_101, simple_name, csvrecord_1_expr10, right_hand_side, range(csvrecord_1, 1866, 7, 55, 55), 'mapping').
name(f_comment_107, simple_name, csvrecord_1_expr14, name, range(csvrecord_1, 1888, 7, 56, 56), 'comment').
name(p_comment_102, simple_name, csvrecord_1_expr13, right_hand_side, range(csvrecord_1, 1898, 7, 56, 56), 'comment').
name(f_values_105, simple_name, csvrecord_1_stmt5, expression, range(csvrecord_1, 6869, 6, 226, 226), 'values').

%%% Literals
%csvparser_1 - org.apache.commons.csv.CSVParser
literal(csvparser_1_literal1, string_literal, csvparser_1_expr3, (arguments, 1), range(csvparser_1, 8873, 8, 245, 245), "reader").
literal(csvparser_1_literal2, string_literal, csvparser_1_expr4, (arguments, 1), range(csvparser_1, 8919, 8, 246, 246), "format").
literal(csvparser_1_literal3, null_literal, csvparser_1_expr25, right_operand, range(csvparser_1, 9287, 4, 256, 256), null).
literal(csvparser_1_literal4, null_literal, csvparser_1_expr27, then_expression, range(csvparser_1, 9413, 4, 259, 259), null).
literal(csvparser_1_literal5, null_literal, csvparser_1_code42, initializer, range(csvparser_1, 12537, 4, 360, 360), null).
literal(csvparser_1_literal6, null_literal, csvparser_1_expr34, right_operand, range(csvparser_1, 12634, 4, 362, 362), null).
literal(csvparser_1_literal7, null_literal, csvparser_1_code55, initializer, range(csvparser_1, 12738, 4, 365, 365), null).
literal(csvparser_1_literal8, number_literal, csvparser_1_expr37, right_operand, range(csvparser_1, 12783, 1, 366, 366), 0).
literal(csvparser_1_literal9, null_literal, csvparser_1_expr40, right_operand, range(csvparser_1, 12953, 4, 369, 369), null).
literal(csvparser_1_literal10, null_literal, csvparser_1_expr43, right_operand, range(csvparser_1, 13310, 4, 380, 380), null).
literal(csvparser_1_literal11, number_literal, csvparser_1_code60, initializer, range(csvparser_1, 13347, 1, 381, 381), 0).
literal(csvparser_1_literal12, null_literal, csvparser_1_code72, initializer, range(csvparser_1, 16281, 4, 464, 464), null).
literal(csvparser_1_literal13, null_literal, csvparser_1_code74, initializer, range(csvparser_1, 16343, 4, 466, 466), null).
literal(csvparser_1_literal15, null_literal, csvparser_1_expr93, right_operand, range(csvparser_1, 17667, 4, 500, 500), null).
literal(csvparser_1_literal14, null_literal, csvparser_1_expr92, then_expression, range(csvparser_1, 17674, 4, 500, 500), null).
%csvformat_1 - org.apache.commons.csv.CSVFormat
literal(csvformat_1_literal1, null_literal, csvformat_1_expr1, (arguments, 2), range(csvformat_1, 5391, 4, 175, 175), null).
literal(csvformat_1_literal2, null_literal, csvformat_1_expr1, (arguments, 3), range(csvformat_1, 5397, 4, 175, 175), null).
literal(csvformat_1_literal3, null_literal, csvformat_1_expr1, (arguments, 4), range(csvformat_1, 5403, 4, 175, 175), null).
literal(csvformat_1_literal4, boolean_literal, csvformat_1_expr1, (arguments, 5), range(csvformat_1, 5469, 5, 176, 176), false).
literal(csvformat_1_literal5, boolean_literal, csvformat_1_expr1, (arguments, 6), range(csvformat_1, 5476, 4, 176, 176), true).
literal(csvformat_1_literal6, null_literal, csvformat_1_expr1, (arguments, 8), range(csvformat_1, 5488, 4, 176, 176), null).
literal(csvformat_1_literal7, null_literal, csvformat_1_expr1, (arguments, 9), range(csvformat_1, 5494, 4, 176, 176), null).
literal(csvformat_1_literal8, boolean_literal, csvformat_1_expr1, (arguments, 10), range(csvformat_1, 5500, 5, 176, 176), false).
literal(csvformat_1_literal9, boolean_literal, csvformat_1_expr1, (arguments, 11), range(csvformat_1, 5507, 5, 176, 176), false).
literal(csvformat_1_literal10, boolean_literal, csvformat_1_expr2, (arguments, 0), range(csvformat_1, 5871, 5, 187, 187), false).
literal(csvformat_1_literal11, boolean_literal, csvformat_1_expr3, (arguments, 0), range(csvformat_1, 6684, 5, 211, 211), false).
literal(csvformat_1_literal12, null_literal, csvformat_1_expr10, right_operand, range(csvformat_1, 8241, 4, 256, 256), null).
literal(csvformat_1_literal13, null_literal, csvformat_1_expr44, right_operand, range(csvformat_1, 11010, 4, 317, 317), null).
literal(csvformat_1_literal14, null_literal, csvformat_1_expr45, right_hand_side, range(csvformat_1, 11044, 4, 318, 318), null).
literal(csvformat_1_literal16, null_literal, csvformat_1_expr58, right_operand, range(csvformat_1, 14942, 4, 453, 453), null).
literal(csvformat_1_literal15, null_literal, csvformat_1_expr57, else_expression, range(csvformat_1, 14966, 4, 453, 453), null).
literal(csvformat_1_literal17, null_literal, csvformat_1_expr63, right_operand, range(csvformat_1, 21750, 4, 675, 675), null).
literal(csvformat_1_literal18, null_literal, csvformat_1_expr67, right_operand, range(csvformat_1, 21984, 4, 680, 680), null).
literal(csvformat_1_literal19, null_literal, csvformat_1_expr71, right_operand, range(csvformat_1, 22215, 4, 685, 685), null).
literal(csvformat_1_literal20, null_literal, csvformat_1_expr75, right_operand, range(csvformat_1, 22462, 4, 690, 690), null).
literal(csvformat_1_literal21, null_literal, csvformat_1_expr78, right_operand, range(csvformat_1, 22699, 4, 695, 695), null).
literal(csvformat_1_literal22, null_literal, csvformat_1_expr81, right_operand, range(csvformat_1, 22930, 4, 700, 700), null).
literal(csvformat_1_literal23, null_literal, csvformat_1_expr84, right_operand, range(csvformat_1, 23109, 4, 704, 704), null).
%constants_1 - org.apache.commons.csv.Constants
literal(constants_1_literal1, character_literal, constants_1_expr1, (arguments, 0), range(constants_1, 1216, 3, 36, 36), '"').
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
literal(csvparser_test_1_literal1, string_literal, csvparser_test_1_expr2, (arguments, 0), range(csvparser_test_1, 25191, 28, 669, 669), "a,,c,,d\n1,2,3,4\nx,y,z,zz").
literal(csvparser_test_1_literal3, string_literal, csvparser_test_1_expr6, (arguments, 0), range(csvparser_test_1, 25276, 2, 670, 670), "").
literal(csvparser_test_1_literal2, boolean_literal, csvparser_test_1_expr5, (arguments, 0), range(csvparser_test_1, 25303, 4, 670, 670), true).
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
literal(extended_buffered_reader_1_literal1, number_literal, extended_buffered_reader_1_code10, initializer, range(extended_buffered_reader_1, 1595, 1, 43, 43), 0).
%lexer_1 - org.apache.commons.csv.Lexer
literal(lexer_1_literal1, null_literal, lexer_1_expr63, right_operand, range(lexer_1, 11804, 4, 292, 292), null).
%token_1 - org.apache.commons.csv.Token
literal(token_1_literal1, number_literal, token_1_expr2, (arguments, 0), range(token_1, 1924, 1, 61, 61), 0).
literal(token_1_literal2, boolean_literal, token_1_expr4, right_hand_side, range(token_1, 1970, 5, 63, 63), false).
%assertions_1 - org.apache.commons.csv.Assertions
literal(assertions_1_literal1, null_literal, assertions_1_expr1, right_operand, range(assertions_1, 1118, 4, 32, 32), null).
%csvrecord_1 - org.apache.commons.csv.CSVRecord
literal(csvrecord_1_literal1, number_literal, csvrecord_1_expr1, (dimensions, 0), range(csvrecord_1, 1226, 1, 35, 35), 0).
literal(csvrecord_1_literal2, null_literal, csvrecord_1_expr9, right_operand, range(csvrecord_1, 1807, 4, 54, 54), null).

%%% Other Code Entities
%csvparser_1 - org.apache.commons.csv.CSVParser
code(csvparser_1_code1, compilation_unit, range(csvparser_1, 0, 17891, 1, -1)).
code(csvparser_1_code2, type_declaration, csvparser_1_code1, (types, 0), range(csvparser_1, 1391, 16499, 41, 507)).
code(csvparser_1_code3, field_declaration, csvparser_1_code2, (body_declarations, 6), range(csvparser_1, 7793, 138, 220, 221)).
code(csvparser_1_code4, modifier, csvparser_1_code3, (modifiers, 0), range(csvparser_1, 7871, 7, 221, 221)).
code(csvparser_1_code5, modifier, csvparser_1_code3, (modifiers, 1), range(csvparser_1, 7879, 5, 221, 221)).
code(csvparser_1_code6, parameterized_type, csvparser_1_code3, type, range(csvparser_1, 7885, 12, 221, 221)).
code(csvparser_1_code7, simple_type, csvparser_1_code6, type, range(csvparser_1, 7885, 4, 221, 221)).
code(csvparser_1_code8, simple_type, csvparser_1_code6, (type_arguments, 0), range(csvparser_1, 7890, 6, 221, 221)).
code(csvparser_1_code9, variable_declaration_fragment, csvparser_1_code3, (fragments, 0), range(csvparser_1, 7898, 32, 221, 221)).
code(csvparser_1_code11, simple_type, csvparser_1_code10, type, range(csvparser_1, 7911, 9, 221, 221)).
code(csvparser_1_code10, parameterized_type, csvparser_1_expr1, type, range(csvparser_1, 7911, 17, 221, 221)).
code(csvparser_1_code12, simple_type, csvparser_1_code10, (type_arguments, 0), range(csvparser_1, 7921, 6, 221, 221)).
code(csvparser_1_code14, modifier, csvparser_1_code13, (modifiers, 0), range(csvparser_1, 7969, 7, 225, 225)).
code(csvparser_1_code13, field_declaration, csvparser_1_code2, (body_declarations, 8), range(csvparser_1, 7969, 48, 225, 225)).
code(csvparser_1_code15, modifier, csvparser_1_code13, (modifiers, 1), range(csvparser_1, 7977, 5, 225, 225)).
code(csvparser_1_code16, simple_type, csvparser_1_code13, type, range(csvparser_1, 7983, 5, 225, 225)).
code(csvparser_1_code17, variable_declaration_fragment, csvparser_1_code13, (fragments, 0), range(csvparser_1, 7989, 27, 225, 225)).
code(csvparser_1_code18, simple_type, csvparser_1_expr2, type, range(csvparser_1, 8009, 5, 225, 225)).
code(csvparser_1_code19, method_declaration, csvparser_1_code2, (body_declarations, 9), range(csvparser_1, 8023, 1069, 227, 251)).
code(csvparser_1_code20, modifier, csvparser_1_code19, (modifiers, 0), range(csvparser_1, 8755, 6, 244, 244)).
code(csvparser_1_code22, modifier, csvparser_1_code21, (modifiers, 0), range(csvparser_1, 8772, 5, 244, 244)).
code(csvparser_1_code21, single_variable_declaration, csvparser_1_code19, (parameters, 0), range(csvparser_1, 8772, 19, 244, 244)).
code(csvparser_1_code23, simple_type, csvparser_1_code21, type, range(csvparser_1, 8778, 6, 244, 244)).
code(csvparser_1_code25, modifier, csvparser_1_code24, (modifiers, 0), range(csvparser_1, 8793, 5, 244, 244)).
code(csvparser_1_code24, single_variable_declaration, csvparser_1_code19, (parameters, 1), range(csvparser_1, 8793, 22, 244, 244)).
code(csvparser_1_code26, simple_type, csvparser_1_code24, type, range(csvparser_1, 8799, 9, 244, 244)).
code(csvparser_1_code27, simple_type, csvparser_1_code19, (thrown_exception_types, 0), range(csvparser_1, 8824, 11, 244, 244)).
code(csvparser_1_code28, simple_type, csvparser_1_expr10, type, range(csvparser_1, 8986, 5, 249, 249)).
code(csvparser_1_code29, simple_type, csvparser_1_expr12, type, range(csvparser_1, 9004, 22, 249, 249)).
code(csvparser_1_code30, method_declaration, csvparser_1_code2, (body_declarations, 10), range(csvparser_1, 9098, 345, 253, 261)).
code(csvparser_1_code31, modifier, csvparser_1_stmt6, (modifiers, 0), range(csvparser_1, 9138, 5, 254, 254)).
code(csvparser_1_code32, simple_type, csvparser_1_stmt6, type, range(csvparser_1, 9144, 6, 254, 254)).
code(csvparser_1_code33, variable_declaration_fragment, csvparser_1_stmt6, (fragments, 0), range(csvparser_1, 9151, 45, 254, 254)).
code(csvparser_1_code34, modifier, csvparser_1_stmt7, (modifiers, 0), range(csvparser_1, 9206, 5, 255, 255)).
code(csvparser_1_code35, simple_type, csvparser_1_stmt7, type, range(csvparser_1, 9212, 6, 255, 255)).
code(csvparser_1_code36, variable_declaration_fragment, csvparser_1_stmt7, (fragments, 0), range(csvparser_1, 9219, 40, 255, 255)).
code(csvparser_1_code37, method_declaration, csvparser_1_code2, (body_declarations, 17), range(csvparser_1, 12184, 1866, 353, 394)).
code(csvparser_1_code39, simple_type, csvparser_1_code38, type, range(csvparser_1, 12507, 3, 360, 360)).
code(csvparser_1_code38, parameterized_type, csvparser_1_stmt10, type, range(csvparser_1, 12507, 20, 360, 360)).
code(csvparser_1_code40, simple_type, csvparser_1_code38, (type_arguments, 0), range(csvparser_1, 12511, 6, 360, 360)).
code(csvparser_1_code41, simple_type, csvparser_1_code38, (type_arguments, 1), range(csvparser_1, 12519, 7, 360, 360)).
code(csvparser_1_code42, variable_declaration_fragment, csvparser_1_stmt10, (fragments, 0), range(csvparser_1, 12528, 13, 360, 360)).
code(csvparser_1_code43, modifier, csvparser_1_stmt11, (modifiers, 0), range(csvparser_1, 12551, 5, 361, 361)).
code(csvparser_1_code45, simple_type, csvparser_1_code44, element_type, range(csvparser_1, 12557, 6, 361, 361)).
code(csvparser_1_code44, array_type, csvparser_1_stmt11, type, range(csvparser_1, 12557, 8, 361, 361)).
code(csvparser_1_code46, dimension, csvparser_1_code44, (dimensions, 0), range(csvparser_1, 12563, 2, 361, 361)).
code(csvparser_1_code47, variable_declaration_fragment, csvparser_1_stmt11, (fragments, 0), range(csvparser_1, 12566, 38, 361, 361)).
code(csvparser_1_code49, simple_type, csvparser_1_code48, type, range(csvparser_1, 12667, 13, 363, 363)).
code(csvparser_1_code48, parameterized_type, csvparser_1_expr36, type, range(csvparser_1, 12667, 30, 363, 363)).
code(csvparser_1_code50, simple_type, csvparser_1_code48, (type_arguments, 0), range(csvparser_1, 12681, 6, 363, 363)).
code(csvparser_1_code51, simple_type, csvparser_1_code48, (type_arguments, 1), range(csvparser_1, 12689, 7, 363, 363)).
code(csvparser_1_code52, array_type, csvparser_1_stmt14, type, range(csvparser_1, 12714, 8, 365, 365)).
code(csvparser_1_code53, simple_type, csvparser_1_code52, element_type, range(csvparser_1, 12714, 6, 365, 365)).
code(csvparser_1_code54, dimension, csvparser_1_code52, (dimensions, 0), range(csvparser_1, 12720, 2, 365, 365)).
code(csvparser_1_code55, variable_declaration_fragment, csvparser_1_stmt14, (fragments, 0), range(csvparser_1, 12723, 19, 365, 365)).
code(csvparser_1_code56, modifier, csvparser_1_stmt16, (modifiers, 0), range(csvparser_1, 12871, 5, 368, 368)).
code(csvparser_1_code57, simple_type, csvparser_1_stmt16, type, range(csvparser_1, 12877, 9, 368, 368)).
code(csvparser_1_code58, variable_declaration_fragment, csvparser_1_stmt16, (fragments, 0), range(csvparser_1, 12887, 30, 368, 368)).
code(csvparser_1_code59, primitive_type, csvparser_1_expr44, type, range(csvparser_1, 13339, 3, 381, 381)).
code(csvparser_1_code60, variable_declaration_fragment, csvparser_1_expr44, (fragments, 0), range(csvparser_1, 13343, 5, 381, 381)).
code(csvparser_1_code61, modifier, csvparser_1_stmt21, (modifiers, 0), range(csvparser_1, 13402, 5, 382, 382)).
code(csvparser_1_code62, simple_type, csvparser_1_stmt21, type, range(csvparser_1, 13408, 6, 382, 382)).
code(csvparser_1_code63, variable_declaration_fragment, csvparser_1_stmt21, (fragments, 0), range(csvparser_1, 13415, 24, 382, 382)).
code(csvparser_1_code64, modifier, csvparser_1_stmt22, (modifiers, 0), range(csvparser_1, 13461, 5, 383, 383)).
code(csvparser_1_code65, primitive_type, csvparser_1_stmt22, type, range(csvparser_1, 13467, 7, 383, 383)).
code(csvparser_1_code66, variable_declaration_fragment, csvparser_1_stmt22, (fragments, 0), range(csvparser_1, 13475, 43, 383, 383)).
code(csvparser_1_code67, modifier, csvparser_1_stmt23, (modifiers, 0), range(csvparser_1, 13540, 5, 384, 384)).
code(csvparser_1_code68, primitive_type, csvparser_1_stmt23, type, range(csvparser_1, 13546, 7, 384, 384)).
code(csvparser_1_code69, variable_declaration_fragment, csvparser_1_stmt23, (fragments, 0), range(csvparser_1, 13554, 37, 384, 384)).
code(csvparser_1_code70, method_declaration, csvparser_1_code2, (body_declarations, 20), range(csvparser_1, 15928, 1959, 456, 505)).
code(csvparser_1_code71, simple_type, csvparser_1_stmt26, type, range(csvparser_1, 16262, 9, 464, 464)).
code(csvparser_1_code72, variable_declaration_fragment, csvparser_1_stmt26, (fragments, 0), range(csvparser_1, 16272, 13, 464, 464)).
code(csvparser_1_code73, simple_type, csvparser_1_stmt28, type, range(csvparser_1, 16324, 13, 466, 466)).
code(csvparser_1_code74, variable_declaration_fragment, csvparser_1_stmt28, (fragments, 0), range(csvparser_1, 16338, 9, 466, 466)).
code(csvparser_1_code75, modifier, csvparser_1_stmt39, (modifiers, 0), range(csvparser_1, 17638, 5, 500, 500)).
code(csvparser_1_code76, simple_type, csvparser_1_stmt39, type, range(csvparser_1, 17644, 6, 500, 500)).
code(csvparser_1_code77, variable_declaration_fragment, csvparser_1_stmt39, (fragments, 0), range(csvparser_1, 17651, 43, 500, 500)).
code(csvparser_1_code78, simple_type, csvparser_1_expr96, type, range(csvparser_1, 17721, 9, 501, 501)).
code(csvparser_1_code79, array_type, csvparser_1_expr100, type, range(csvparser_1, 17755, 26, 501, 501)).
code(csvparser_1_code80, simple_type, csvparser_1_code79, element_type, range(csvparser_1, 17755, 6, 501, 501)).
code(csvparser_1_code81, dimension, csvparser_1_code79, (dimensions, 0), range(csvparser_1, 17761, 20, 501, 501)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
code(csvformat_1_code1, compilation_unit, range(csvformat_1, 0, 35184, 1, -1)).
code(csvformat_1_code2, type_declaration, csvformat_1_code1, (types, 0), range(csvformat_1, 1406, 33777, 36, 975)).
code(csvformat_1_code3, field_declaration, csvformat_1_code2, (body_declarations, 13), range(csvformat_1, 4946, 568, 162, 176)).
code(csvformat_1_code4, modifier, csvformat_1_code3, (modifiers, 0), range(csvformat_1, 5311, 6, 175, 175)).
code(csvformat_1_code5, modifier, csvformat_1_code3, (modifiers, 1), range(csvformat_1, 5318, 6, 175, 175)).
code(csvformat_1_code6, modifier, csvformat_1_code3, (modifiers, 2), range(csvformat_1, 5325, 5, 175, 175)).
code(csvformat_1_code7, simple_type, csvformat_1_code3, type, range(csvformat_1, 5331, 9, 175, 175)).
code(csvformat_1_code8, variable_declaration_fragment, csvformat_1_code3, (fragments, 0), range(csvformat_1, 5341, 172, 175, 176)).
code(csvformat_1_code9, simple_type, csvformat_1_expr1, type, range(csvformat_1, 5355, 9, 175, 175)).
code(csvformat_1_code10, field_declaration, csvformat_1_code2, (body_declarations, 14), range(csvformat_1, 5520, 358, 178, 187)).
code(csvformat_1_code11, modifier, csvformat_1_code10, (modifiers, 0), range(csvformat_1, 5802, 6, 187, 187)).
code(csvformat_1_code12, modifier, csvformat_1_code10, (modifiers, 1), range(csvformat_1, 5809, 6, 187, 187)).
code(csvformat_1_code13, modifier, csvformat_1_code10, (modifiers, 2), range(csvformat_1, 5816, 5, 187, 187)).
code(csvformat_1_code14, simple_type, csvformat_1_code10, type, range(csvformat_1, 5822, 9, 187, 187)).
code(csvformat_1_code15, variable_declaration_fragment, csvformat_1_code10, (fragments, 0), range(csvformat_1, 5832, 45, 187, 187)).
code(csvformat_1_code16, field_declaration, csvformat_1_code2, (body_declarations, 15), range(csvformat_1, 5884, 807, 189, 211)).
code(csvformat_1_code17, modifier, csvformat_1_code16, (modifiers, 0), range(csvformat_1, 6617, 6, 211, 211)).
code(csvformat_1_code18, modifier, csvformat_1_code16, (modifiers, 1), range(csvformat_1, 6624, 6, 211, 211)).
code(csvformat_1_code19, modifier, csvformat_1_code16, (modifiers, 2), range(csvformat_1, 6631, 5, 211, 211)).
code(csvformat_1_code20, simple_type, csvformat_1_code16, type, range(csvformat_1, 6637, 9, 211, 211)).
code(csvformat_1_code21, variable_declaration_fragment, csvformat_1_code16, (fragments, 0), range(csvformat_1, 6647, 43, 211, 211)).
code(csvformat_1_code22, field_declaration, csvformat_1_code2, (body_declarations, 16), range(csvformat_1, 6697, 217, 213, 217)).
code(csvformat_1_code23, modifier, csvformat_1_code22, (modifiers, 0), range(csvformat_1, 6779, 6, 214, 214)).
code(csvformat_1_code24, modifier, csvformat_1_code22, (modifiers, 1), range(csvformat_1, 6786, 6, 214, 214)).
code(csvformat_1_code25, modifier, csvformat_1_code22, (modifiers, 2), range(csvformat_1, 6793, 5, 214, 214)).
code(csvformat_1_code26, simple_type, csvformat_1_code22, type, range(csvformat_1, 6799, 9, 214, 214)).
code(csvformat_1_code27, variable_declaration_fragment, csvformat_1_code22, (fragments, 0), range(csvformat_1, 6809, 104, 214, 217)).
code(csvformat_1_code28, field_declaration, csvformat_1_code2, (body_declarations, 17), range(csvformat_1, 6920, 672, 219, 233)).
code(csvformat_1_code29, modifier, csvformat_1_code28, (modifiers, 0), range(csvformat_1, 7356, 6, 227, 227)).
code(csvformat_1_code30, modifier, csvformat_1_code28, (modifiers, 1), range(csvformat_1, 7363, 6, 227, 227)).
code(csvformat_1_code31, modifier, csvformat_1_code28, (modifiers, 2), range(csvformat_1, 7370, 5, 227, 227)).
code(csvformat_1_code32, simple_type, csvformat_1_code28, type, range(csvformat_1, 7376, 9, 227, 227)).
code(csvformat_1_code33, variable_declaration_fragment, csvformat_1_code28, (fragments, 0), range(csvformat_1, 7386, 205, 227, 233)).
code(csvformat_1_code34, method_declaration, csvformat_1_code2, (body_declarations, 18), range(csvformat_1, 7598, 312, 235, 245)).
code(csvformat_1_code35, method_declaration, csvformat_1_code2, (body_declarations, 19), range(csvformat_1, 7916, 366, 247, 257)).
code(csvformat_1_code36, method_declaration, csvformat_1_code2, (body_declarations, 21), range(csvformat_1, 8782, 2766, 271, 331)).
code(csvformat_1_code37, single_variable_declaration, csvformat_1_code36, (parameters, 11), range(csvformat_1, 10378, 32, 303, 303)).
code(csvformat_1_code38, modifier, csvformat_1_code37, (modifiers, 0), range(csvformat_1, 10378, 5, 303, 303)).
code(csvformat_1_code39, primitive_type, csvformat_1_code37, type, range(csvformat_1, 10384, 7, 303, 303)).
code(csvformat_1_code40, modifier, csvformat_1_stmt16, (modifiers, 0), range(csvformat_1, 11079, 5, 320, 320)).
code(csvformat_1_code42, simple_type, csvformat_1_code41, type, range(csvformat_1, 11085, 3, 320, 320)).
code(csvformat_1_code41, parameterized_type, csvformat_1_stmt16, type, range(csvformat_1, 11085, 11, 320, 320)).
code(csvformat_1_code43, simple_type, csvformat_1_code41, (type_arguments, 0), range(csvformat_1, 11089, 6, 320, 320)).
code(csvformat_1_code44, variable_declaration_fragment, csvformat_1_stmt16, (fragments, 0), range(csvformat_1, 11097, 32, 320, 320)).
code(csvformat_1_code45, parameterized_type, csvformat_1_expr48, type, range(csvformat_1, 11112, 15, 320, 320)).
code(csvformat_1_code46, simple_type, csvformat_1_code45, type, range(csvformat_1, 11112, 7, 320, 320)).
code(csvformat_1_code47, simple_type, csvformat_1_code45, (type_arguments, 0), range(csvformat_1, 11120, 6, 320, 320)).
code(csvformat_1_code49, modifier, csvformat_1_code48, (modifiers, 0), range(csvformat_1, 11148, 5, 321, 321)).
code(csvformat_1_code48, single_variable_declaration, csvformat_1_stmt17, parameter, range(csvformat_1, 11148, 16, 321, 321)).
code(csvformat_1_code50, simple_type, csvformat_1_code48, type, range(csvformat_1, 11154, 6, 321, 321)).
code(csvformat_1_code51, method_declaration, csvformat_1_code2, (body_declarations, 24), range(csvformat_1, 14090, 221, 420, 427)).
code(csvformat_1_code52, method_declaration, csvformat_1_code2, (body_declarations, 25), range(csvformat_1, 14317, 203, 429, 436)).
code(csvformat_1_code53, method_declaration, csvformat_1_code2, (body_declarations, 26), range(csvformat_1, 14526, 176, 438, 445)).
code(csvformat_1_code54, method_declaration, csvformat_1_code2, (body_declarations, 27), range(csvformat_1, 14708, 269, 447, 454)).
code(csvformat_1_code55, method_declaration, csvformat_1_code2, (body_declarations, 29), range(csvformat_1, 15333, 327, 466, 474)).
code(csvformat_1_code56, method_declaration, csvformat_1_code2, (body_declarations, 30), range(csvformat_1, 15666, 330, 476, 484)).
code(csvformat_1_code57, method_declaration, csvformat_1_code2, (body_declarations, 31), range(csvformat_1, 16002, 556, 486, 501)).
code(csvformat_1_code58, method_declaration, csvformat_1_code2, (body_declarations, 32), range(csvformat_1, 16564, 235, 503, 510)).
code(csvformat_1_code59, method_declaration, csvformat_1_code2, (body_declarations, 41), range(csvformat_1, 19320, 449, 597, 612)).
code(csvformat_1_code60, simple_type, csvformat_1_expr60, type, range(csvformat_1, 19743, 9, 611, 611)).
code(csvformat_1_code61, method_declaration, csvformat_1_code2, (body_declarations, 44), range(csvformat_1, 21501, 1917, 669, 710)).
code(csvformat_1_code62, method_declaration, csvformat_1_code2, (body_declarations, 47), range(csvformat_1, 25046, 794, 747, 763)).
code(csvformat_1_code63, simple_type, csvformat_1_expr86, type, range(csvformat_1, 25617, 9, 760, 760)).
code(csvformat_1_code64, method_declaration, csvformat_1_code2, (body_declarations, 48), range(csvformat_1, 25846, 484, 765, 776)).
code(csvformat_1_code65, method_declaration, csvformat_1_code2, (body_declarations, 49), range(csvformat_1, 26336, 842, 778, 794)).
code(csvformat_1_code66, simple_type, csvformat_1_expr90, type, range(csvformat_1, 26955, 9, 791, 791)).
code(csvformat_1_code67, method_declaration, csvformat_1_code2, (body_declarations, 50), range(csvformat_1, 27184, 941, 796, 817)).
code(csvformat_1_code68, simple_type, csvformat_1_expr91, type, range(csvformat_1, 27902, 9, 814, 814)).
code(csvformat_1_code69, method_declaration, csvformat_1_code2, (body_declarations, 51), range(csvformat_1, 28131, 723, 819, 831)).
code(csvformat_1_code70, simple_type, csvformat_1_expr92, type, range(csvformat_1, 28629, 9, 828, 828)).
code(csvformat_1_code71, method_declaration, csvformat_1_code2, (body_declarations, 52), range(csvformat_1, 28860, 723, 833, 845)).
code(csvformat_1_code72, simple_type, csvformat_1_expr93, type, range(csvformat_1, 29360, 9, 842, 842)).
code(csvformat_1_code73, method_declaration, csvformat_1_code2, (body_declarations, 53), range(csvformat_1, 29589, 682, 847, 859)).
code(csvformat_1_code74, simple_type, csvformat_1_expr94, type, range(csvformat_1, 30048, 9, 856, 856)).
code(csvformat_1_code75, method_declaration, csvformat_1_code2, (body_declarations, 54), range(csvformat_1, 30277, 938, 861, 880)).
code(csvformat_1_code76, simple_type, csvformat_1_expr95, type, range(csvformat_1, 30992, 9, 877, 877)).
code(csvformat_1_code77, method_declaration, csvformat_1_code2, (body_declarations, 56), range(csvformat_1, 31712, 832, 895, 911)).
code(csvformat_1_code78, simple_type, csvformat_1_expr97, type, range(csvformat_1, 32321, 9, 908, 908)).
code(csvformat_1_code79, method_declaration, csvformat_1_code2, (body_declarations, 58), range(csvformat_1, 33131, 622, 927, 941)).
code(csvformat_1_code80, method_declaration, csvformat_1_code2, (body_declarations, 59), range(csvformat_1, 33759, 800, 943, 959)).
code(csvformat_1_code81, simple_type, csvformat_1_expr100, type, range(csvformat_1, 34336, 9, 956, 956)).
%constants_1 - org.apache.commons.csv.Constants
code(constants_1_code1, compilation_unit, range(constants_1, 0, 2135, 1, -1)).
code(constants_1_code2, type_declaration, constants_1_code1, (types, 0), range(constants_1, 837, 1297, 20, 75)).
code(constants_1_code4, modifier, constants_1_code3, (modifiers, 0), range(constants_1, 1155, 6, 36, 36)).
code(constants_1_code3, field_declaration, constants_1_code2, (body_declarations, 4), range(constants_1, 1155, 66, 36, 36)).
code(constants_1_code5, modifier, constants_1_code3, (modifiers, 1), range(constants_1, 1162, 5, 36, 36)).
code(constants_1_code6, simple_type, constants_1_code3, type, range(constants_1, 1168, 9, 36, 36)).
code(constants_1_code7, variable_declaration_fragment, constants_1_code3, (fragments, 0), range(constants_1, 1178, 42, 36, 36)).
%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
code(csvparser_test_1_code1, compilation_unit, range(csvparser_test_1, 0, 36934, 1, -1)).
code(csvparser_test_1_code2, type_declaration, csvparser_test_1_code1, (types, 0), range(csvparser_test_1, 1871, 35062, 53, 962)).
code(csvparser_test_1_code3, modifier, csvparser_test_1_code2, (modifiers, 0), range(csvparser_test_1, 2224, 6, 64, 64)).
code(csvparser_test_1_code5, modifier, csvparser_test_1_code4, (modifiers, 0), range(csvparser_test_1, 2679, 7, 76, 76)).
code(csvparser_test_1_code4, field_declaration, csvparser_test_1_code2, (body_declarations, 3), range(csvparser_test_1, 2679, 193, 76, 81)).
code(csvparser_test_1_code6, modifier, csvparser_test_1_code4, (modifiers, 1), range(csvparser_test_1, 2687, 6, 76, 76)).
code(csvparser_test_1_code7, modifier, csvparser_test_1_code4, (modifiers, 2), range(csvparser_test_1, 2694, 5, 76, 76)).
code(csvparser_test_1_code9, simple_type, csvparser_test_1_code8, element_type, range(csvparser_test_1, 2700, 6, 76, 76)).
code(csvparser_test_1_code8, array_type, csvparser_test_1_code4, type, range(csvparser_test_1, 2700, 10, 76, 76)).
code(csvparser_test_1_code10, dimension, csvparser_test_1_code8, (dimensions, 0), range(csvparser_test_1, 2706, 2, 76, 76)).
code(csvparser_test_1_code11, dimension, csvparser_test_1_code8, (dimensions, 1), range(csvparser_test_1, 2708, 2, 76, 76)).
code(csvparser_test_1_code12, variable_declaration_fragment, csvparser_test_1_code4, (fragments, 0), range(csvparser_test_1, 2711, 160, 76, 81)).
code(csvparser_test_1_code13, method_declaration, csvparser_test_1_code2, (body_declarations, 40), range(csvparser_test_1, 25079, 257, 667, 671)).
code(csvparser_test_1_code14, modifier, csvparser_test_1_stmt1, (modifiers, 0), range(csvparser_test_1, 25156, 5, 669, 669)).
code(csvparser_test_1_code15, simple_type, csvparser_test_1_stmt1, type, range(csvparser_test_1, 25162, 6, 669, 669)).
code(csvparser_test_1_code16, variable_declaration_fragment, csvparser_test_1_stmt1, (fragments, 0), range(csvparser_test_1, 25169, 51, 669, 669)).
code(csvparser_test_1_code17, simple_type, csvparser_test_1_expr2, type, range(csvparser_test_1, 25178, 12, 669, 669)).
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
code(extended_buffered_reader_1_code12, method_declaration, extended_buffered_reader_1_code2, (body_declarations, 4), range(extended_buffered_reader_1, 1794, 255, 54, 62)).
code(extended_buffered_reader_1_code13, modifier, extended_buffered_reader_1_stmt2, (modifiers, 0), range(extended_buffered_reader_1, 1855, 5, 56, 56)).
code(extended_buffered_reader_1_code14, primitive_type, extended_buffered_reader_1_stmt2, type, range(extended_buffered_reader_1, 1861, 3, 56, 56)).
code(extended_buffered_reader_1_code15, variable_declaration_fragment, extended_buffered_reader_1_stmt2, (fragments, 0), range(extended_buffered_reader_1, 1865, 22, 56, 56)).
code(extended_buffered_reader_1_code16, method_declaration, extended_buffered_reader_1_code2, (body_declarations, 5), range(extended_buffered_reader_1, 2055, 555, 64, 74)).
%lexer_1 - org.apache.commons.csv.Lexer
code(lexer_1_code1, compilation_unit, range(lexer_1, 0, 15878, 1, -1)).
code(lexer_1_code2, type_declaration, lexer_1_code1, (types, 0), range(lexer_1, 1556, 14321, 36, 432)).
code(lexer_1_code3, method_declaration, lexer_1_code2, (body_declarations, 8), range(lexer_1, 2338, 581, 61, 70)).
code(lexer_1_code4, single_variable_declaration, lexer_1_code3, (parameters, 0), range(lexer_1, 2434, 22, 62, 62)).
code(lexer_1_code5, modifier, lexer_1_code4, (modifiers, 0), range(lexer_1, 2434, 5, 62, 62)).
code(lexer_1_code6, simple_type, lexer_1_code4, type, range(lexer_1, 2440, 9, 62, 62)).
code(lexer_1_code8, modifier, lexer_1_code7, (modifiers, 0), range(lexer_1, 2458, 5, 62, 62)).
code(lexer_1_code7, single_variable_declaration, lexer_1_code3, (parameters, 1), range(lexer_1, 2458, 35, 62, 62)).
code(lexer_1_code9, simple_type, lexer_1_code7, type, range(lexer_1, 2464, 22, 62, 62)).
code(lexer_1_code10, method_declaration, lexer_1_code2, (body_declarations, 9), range(lexer_1, 2925, 3545, 72, 165)).
code(lexer_1_code11, primitive_type, lexer_1_stmt8, type, range(lexer_1, 3446, 3, 86, 86)).
code(lexer_1_code12, variable_declaration_fragment, lexer_1_stmt8, (fragments, 0), range(lexer_1, 3450, 31, 86, 86)).
code(lexer_1_code13, primitive_type, lexer_1_stmt9, type, range(lexer_1, 3534, 3, 89, 89)).
code(lexer_1_code14, variable_declaration_fragment, lexer_1_stmt9, (fragments, 0), range(lexer_1, 3538, 17, 89, 89)).
code(lexer_1_code15, primitive_type, lexer_1_stmt10, type, range(lexer_1, 3747, 7, 94, 94)).
code(lexer_1_code16, variable_declaration_fragment, lexer_1_stmt10, (fragments, 0), range(lexer_1, 3755, 22, 94, 94)).
code(lexer_1_code17, method_declaration, lexer_1_code2, (body_declarations, 10), range(lexer_1, 6476, 1923, 167, 218)).
code(lexer_1_code18, primitive_type, lexer_1_expr59, type, range(lexer_1, 8191, 4, 208, 208)).
code(lexer_1_code19, method_declaration, lexer_1_code2, (body_declarations, 12), range(lexer_1, 11732, 110, 291, 293)).
code(lexer_1_code20, method_declaration, lexer_1_code2, (body_declarations, 16), range(lexer_1, 13921, 485, 358, 370)).
code(lexer_1_code21, method_declaration, lexer_1_code2, (body_declarations, 19), range(lexer_1, 14676, 338, 383, 391)).
code(lexer_1_code22, method_declaration, lexer_1_code2, (body_declarations, 20), range(lexer_1, 15020, 158, 393, 398)).
code(lexer_1_code23, method_declaration, lexer_1_code2, (body_declarations, 21), range(lexer_1, 15184, 73, 400, 402)).
code(lexer_1_code24, method_declaration, lexer_1_code2, (body_declarations, 22), range(lexer_1, 15263, 67, 404, 406)).
code(lexer_1_code25, method_declaration, lexer_1_code2, (body_declarations, 23), range(lexer_1, 15336, 73, 408, 410)).
code(lexer_1_code26, method_declaration, lexer_1_code2, (body_declarations, 24), range(lexer_1, 15415, 79, 412, 414)).
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
code(token_1_code18, method_declaration, token_1_code2, (body_declarations, 5), range(token_1, 1883, 99, 60, 64)).
%assertions_1 - org.apache.commons.csv.Assertions
code(assertions_1_code1, compilation_unit, range(assertions_1, 0, 1247, 1, -1)).
code(assertions_1_code2, type_declaration, assertions_1_code1, (types, 0), range(assertions_1, 837, 409, 20, 36)).
code(assertions_1_code3, method_declaration, assertions_1_code2, (body_declarations, 1), range(assertions_1, 1012, 232, 31, 35)).
%csvrecord_1 - org.apache.commons.csv.CSVRecord
code(csvrecord_1_code1, compilation_unit, range(csvrecord_1, 0, 6887, 1, -1)).
code(csvrecord_1_code2, type_declaration, csvrecord_1_code1, (types, 0), range(csvrecord_1, 1018, 5868, 28, 230)).
code(csvrecord_1_code4, modifier, csvrecord_1_code3, (modifiers, 0), range(csvrecord_1, 1164, 7, 35, 35)).
code(csvrecord_1_code3, field_declaration, csvrecord_1_code2, (body_declarations, 0), range(csvrecord_1, 1164, 65, 35, 35)).
code(csvrecord_1_code5, modifier, csvrecord_1_code3, (modifiers, 1), range(csvrecord_1, 1172, 6, 35, 35)).
code(csvrecord_1_code6, modifier, csvrecord_1_code3, (modifiers, 2), range(csvrecord_1, 1179, 5, 35, 35)).
code(csvrecord_1_code7, array_type, csvrecord_1_code3, type, range(csvrecord_1, 1185, 8, 35, 35)).
code(csvrecord_1_code8, simple_type, csvrecord_1_code7, element_type, range(csvrecord_1, 1185, 6, 35, 35)).
code(csvrecord_1_code9, dimension, csvrecord_1_code7, (dimensions, 0), range(csvrecord_1, 1191, 2, 35, 35)).
code(csvrecord_1_code10, variable_declaration_fragment, csvrecord_1_code3, (fragments, 0), range(csvrecord_1, 1194, 34, 35, 35)).
code(csvrecord_1_code11, array_type, csvrecord_1_expr1, type, range(csvrecord_1, 1219, 9, 35, 35)).
code(csvrecord_1_code12, simple_type, csvrecord_1_code11, element_type, range(csvrecord_1, 1219, 6, 35, 35)).
code(csvrecord_1_code13, dimension, csvrecord_1_code11, (dimensions, 0), range(csvrecord_1, 1225, 3, 35, 35)).
code(csvrecord_1_code14, method_declaration, csvrecord_1_code2, (body_declarations, 6), range(csvrecord_1, 1603, 309, 51, 57)).
code(csvrecord_1_code15, single_variable_declaration, csvrecord_1_code14, (parameters, 2), range(csvrecord_1, 1684, 20, 52, 52)).
code(csvrecord_1_code16, modifier, csvrecord_1_code15, (modifiers, 0), range(csvrecord_1, 1684, 5, 52, 52)).
code(csvrecord_1_code17, simple_type, csvrecord_1_code15, type, range(csvrecord_1, 1690, 6, 52, 52)).
code(csvrecord_1_code19, modifier, csvrecord_1_code18, (modifiers, 0), range(csvrecord_1, 1706, 5, 52, 52)).
code(csvrecord_1_code18, single_variable_declaration, csvrecord_1_code14, (parameters, 3), range(csvrecord_1, 1706, 23, 52, 52)).
code(csvrecord_1_code20, primitive_type, csvrecord_1_code18, type, range(csvrecord_1, 1712, 4, 52, 52)).
code(csvrecord_1_code21, method_declaration, csvrecord_1_code2, (body_declarations, 21), range(csvrecord_1, 6834, 48, 225, 227)).

%%% Name References

name_ref(t_assertions_4, type, 'Assertions', 'Lorg/apache/commons/csv/Assertions;').
name_ref(t_character_2, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_csvformat_7, type, 'CSVFormat', 'Lorg/apache/commons/csv/CSVFormat;').
name_ref(t_csvparser_test_6, type, 'CSVParserTest', 'Lorg/apache/commons/csv/CSVParserTest;').
name_ref(t_integer_5, type, 'Integer', 'Ljava/lang/Integer;').
name_ref(t_quote_1, type, 'Quote', 'Lorg/apache/commons/csv/Quote;').
name_ref(t_string_3, type, 'String', 'Ljava/lang/String;').
name_ref(t_token_8, type, 'Token', 'Lorg/apache/commons/csv/Token;').
name_ref(t_type_9, type, 'Type', 'Lorg/apache/commons/csv/Token$Type;').
name_ref(p_reader_117, param, 'reader', 'extended_buffered_reader_1;reader_line_51').
name_ref(v_c_133, var, 'c', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#c').
name_ref(v_comment_94, var, 'comment', 'Lorg/apache/commons/csv/CSVParser;.nextRecord()Lorg/apache/commons/csv/CSVRecord;|Ljava/io/IOException;#1#comment').
name_ref(v_contains_header_87, var, 'containsHeader', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#0#1#0#containsHeader').
name_ref(v_current_118, var, 'current', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read()I|Ljava/io/IOException;#current').
name_ref(v_dup_check_39, var, 'dupCheck', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#0#dupCheck').
name_ref(v_empty_header_88, var, 'emptyHeader', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#0#1#0#emptyHeader').
name_ref(v_eol_134, var, 'eol', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#eol').
name_ref(v_format_header_82, var, 'formatHeader', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#formatHeader').
name_ref(v_hdr_40, var, 'hdr', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#0#0#hdr').
name_ref(v_hdr_map_81, var, 'hdrMap', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#hdrMap').
name_ref(v_header_86, var, 'header', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#0#1#0#header').
name_ref(v_header_record_83, var, 'headerRecord', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#0#headerRecord').
name_ref(v_i_85, var, 'i', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#0#1#i').
name_ref(v_in_96, var, 'in', 'Lorg/apache/commons/csv/CSVParserTest;.testHeaderMissingWithNull()V|Ljava/lang/Exception;#in').
name_ref(v_input_77, var, 'input', 'Lorg/apache/commons/csv/CSVParser;.addRecordValue()V#input').
name_ref(v_last_char_132, var, 'lastChar', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#lastChar').
name_ref(v_next_record_84, var, 'nextRecord', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#0#0#nextRecord').
name_ref(v_null_string_79, var, 'nullString', 'Lorg/apache/commons/csv/CSVParser;.addRecordValue()V#nullString').
name_ref(v_result_89, var, 'result', 'Lorg/apache/commons/csv/CSVParser;.nextRecord()Lorg/apache/commons/csv/CSVRecord;|Ljava/io/IOException;#result').
name_ref(v_sb_90, var, 'sb', 'Lorg/apache/commons/csv/CSVParser;.nextRecord()Lorg/apache/commons/csv/CSVRecord;|Ljava/io/IOException;#sb').
name_ref(p_buf_119, param, 'buf', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;#buf#0#0').
name_ref(p_buffer_142, param, 'buffer', 'Lorg/apache/commons/csv/Lexer;.trimTrailingSpaces(Ljava/lang/StringBuilder;)V#buffer#0#0').
name_ref(p_c_11, param, 'c', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(C)Z#c#0#0').
name_ref(p_c_14, param, 'c', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(Ljava/lang/Character;)Z#c#0#0').
name_ref(p_c_140, param, 'c', 'Lorg/apache/commons/csv/Lexer;.mapNullToDisabled(Ljava/lang/Character;)C#c#0#0').
name_ref(p_ch_137, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#ch#0#1').
name_ref(p_ch_143, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.readEndOfLine(I)Z|Ljava/io/IOException;#ch#0#0').
name_ref(p_ch_144, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isWhitespace(I)Z#ch#0#0').
name_ref(p_ch_145, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isStartOfLine(I)Z#ch#0#0').
name_ref(p_ch_146, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isEndOfFile(I)Z#ch#0#0').
name_ref(p_ch_148, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isDelimiter(I)Z#ch#0#0').
name_ref(p_ch_149, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isEscape(I)Z#ch#0#0').
name_ref(p_ch_150, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isQuoteChar(I)Z#ch#0#0').
name_ref(p_ch_151, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isCommentStart(I)Z#ch#0#0').
name_ref(p_ch_152, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isMetaChar(I)Z#ch#0#0').
name_ref(p_charset_63, param, 'charset', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_68, param, 'charset', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#charset#0#1').
name_ref(p_comment_102, param, 'comment', 'Lorg/apache/commons/csv/CSVRecord;.([Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;J)V#comment#0#2').
name_ref(p_comment_start_19, param, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#commentStart#0#3').
name_ref(p_comment_start_46, param, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.withCommentStart(C)Lorg/apache/commons/csv/CSVFormat;#commentStart#0#0').
name_ref(p_comment_start_47, param, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.withCommentStart(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;#commentStart#0#0').
name_ref(p_delimiter_15, param, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.newFormat(C)Lorg/apache/commons/csv/CSVFormat;#delimiter#0#0').
name_ref(p_delimiter_16, param, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#delimiter#0#0').
name_ref(p_delimiter_48, param, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.withDelimiter(C)Lorg/apache/commons/csv/CSVFormat;#delimiter#0#0').
name_ref(p_e_108, param, 'e', 'Lorg/apache/commons/csv/CSVRecord;.get(Ljava/lang/Enum<*>;)Ljava/lang/String;#e#0#0').
name_ref(p_escape_20, param, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#escape#0#4').
name_ref(p_escape_49, param, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.withEscape(C)Lorg/apache/commons/csv/CSVFormat;#escape#0#0').
name_ref(p_escape_50, param, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.withEscape(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;#escape#0#0').
name_ref(p_file_62, param, 'file', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#file#0#0').
name_ref(p_format_122, param, 'format', 'Lorg/apache/commons/csv/Lexer;.(Lorg/apache/commons/csv/CSVFormat;Lorg/apache/commons/csv/ExtendedBufferedReader;)V#format#0#0').
name_ref(p_format_64, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#format#0#2').
name_ref(p_format_66, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/lang/String;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#format#0#1').
name_ref(p_format_69, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#format#0#2').
name_ref(p_format_73, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V|Ljava/io/IOException;#format#0#1').
name_ref(p_header_25, param, 'header', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#header#0#9').
name_ref(p_header_51, param, 'header', 'Lorg/apache/commons/csv/CSVFormat;.withHeader([Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;#header#0#0').
name_ref(p_i_109, param, 'i', 'Lorg/apache/commons/csv/CSVRecord;.get(I)Ljava/lang/String;#i#0#0').
name_ref(p_ignore_empty_headers_27, param, 'ignoreEmptyHeaders', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#ignoreEmptyHeaders#0#11').
name_ref(p_ignore_empty_headers_52, param, 'ignoreEmptyHeaders', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreEmptyHeaders(Z)Lorg/apache/commons/csv/CSVFormat;#ignoreEmptyHeaders#0#0').
name_ref(p_ignore_empty_lines_22, param, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#ignoreEmptyLines#0#6').
name_ref(p_ignore_empty_lines_53, param, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreEmptyLines(Z)Lorg/apache/commons/csv/CSVFormat;#ignoreEmptyLines#0#0').
name_ref(p_ignore_surrounding_spaces_21, param, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#ignoreSurroundingSpaces#0#5').
name_ref(p_ignore_surrounding_spaces_54, param, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreSurroundingSpaces(Z)Lorg/apache/commons/csv/CSVFormat;#ignoreSurroundingSpaces#0#0').
name_ref(p_in_44, param, 'in', 'Lorg/apache/commons/csv/CSVFormat;.parse(Ljava/io/Reader;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#in#0#0').
name_ref(p_length_121, param, 'length', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;#length#0#2').
name_ref(p_line_separator_97, param, 'lineSeparator', 'Lorg/apache/commons/csv/CSVParserTest;.validateLineNumbers(Ljava/lang/String;)V|Ljava/io/IOException;#lineSeparator#0#0').
name_ref(p_line_separator_98, param, 'lineSeparator', 'Lorg/apache/commons/csv/CSVParserTest;.validateRecordNumbers(Ljava/lang/String;)V|Ljava/io/IOException;#lineSeparator#0#0').
name_ref(p_map_113, param, 'map', 'Lorg/apache/commons/csv/CSVRecord;.putIn<M::Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>(TM;)TM;#map#0#0').
name_ref(p_mapping_101, param, 'mapping', 'Lorg/apache/commons/csv/CSVRecord;.([Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;J)V#mapping#0#1').
name_ref(p_name_110, param, 'name', 'Lorg/apache/commons/csv/CSVRecord;.get(Ljava/lang/String;)Ljava/lang/String;#name#0#0').
name_ref(p_name_111, param, 'name', 'Lorg/apache/commons/csv/CSVRecord;.isMapped(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_112, param, 'name', 'Lorg/apache/commons/csv/CSVRecord;.isSet(Ljava/lang/String;)Z#name#0#0').
name_ref(p_null_string_24, param, 'nullString', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#nullString#0#8').
name_ref(p_null_string_55, param, 'nullString', 'Lorg/apache/commons/csv/CSVFormat;.withNullString(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;#nullString#0#0').
name_ref(p_obj_42, param, 'obj', 'Lorg/apache/commons/csv/CSVFormat;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_offset_120, param, 'offset', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;#offset#0#1').
name_ref(p_out_45, param, 'out', 'Lorg/apache/commons/csv/CSVFormat;.print(Ljava/lang/Appendable;)Lorg/apache/commons/csv/CSVPrinter;|Ljava/io/IOException;#out#0#0').
name_ref(p_parameter_1, param, 'parameter', 'Lorg/apache/commons/csv/Assertions;.notNull(Ljava/lang/Object;Ljava/lang/String;)V#parameter#0#0').
name_ref(p_parameter_name_2, param, 'parameterName', 'Lorg/apache/commons/csv/Assertions;.notNull(Ljava/lang/Object;Ljava/lang/String;)V#parameterName#0#1').
name_ref(p_quote_char_17, param, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#quoteChar#0#1').
name_ref(p_quote_char_56, param, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.withQuoteChar(C)Lorg/apache/commons/csv/CSVFormat;#quoteChar#0#0').
name_ref(p_quote_char_57, param, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.withQuoteChar(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;#quoteChar#0#0').
name_ref(p_quote_policy_18, param, 'quotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#quotePolicy#0#2').
name_ref(p_quote_policy_58, param, 'quotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.withQuotePolicy(Lorg/apache/commons/csv/Quote;)Lorg/apache/commons/csv/CSVFormat;#quotePolicy#0#0').
name_ref(p_reader_117, param, 'reader', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.(Ljava/io/Reader;)V#reader#0#0').
name_ref(p_reader_123, param, 'reader', 'Lorg/apache/commons/csv/Lexer;.(Lorg/apache/commons/csv/CSVFormat;Lorg/apache/commons/csv/ExtendedBufferedReader;)V#reader#0#1').
name_ref(p_reader_72, param, 'reader', 'Lorg/apache/commons/csv/CSVParser;.(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_record_number_103, param, 'recordNumber', 'Lorg/apache/commons/csv/CSVRecord;.([Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;J)V#recordNumber#0#3').
name_ref(p_record_separator_23, param, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#recordSeparator#0#7').
name_ref(p_record_separator_59, param, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.withRecordSeparator(C)Lorg/apache/commons/csv/CSVFormat;#recordSeparator#0#0').
name_ref(p_record_separator_60, param, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.withRecordSeparator(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;#recordSeparator#0#0').
name_ref(p_records_80, param, 'records', 'Lorg/apache/commons/csv/CSVParser;.getRecords<T::Ljava/util/Collection<Lorg/apache/commons/csv/CSVRecord;>;>(TT;)TT;|Ljava/io/IOException;#records#0#0').
name_ref(p_skip_header_record_26, param, 'skipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V#skipHeaderRecord#0#10').
name_ref(p_skip_header_record_61, param, 'skipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.withSkipHeaderRecord(Z)Lorg/apache/commons/csv/CSVFormat;#skipHeaderRecord#0#0').
name_ref(p_string_65, param, 'string', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/lang/String;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#string#0#0').
name_ref(p_token_131, param, 'token', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0').
name_ref(p_token_136, param, 'token', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0').
name_ref(p_token_139, param, 'token', 'Lorg/apache/commons/csv/Lexer;.parseEncapsulatedToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0').
name_ref(p_url_67, param, 'url', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#url#0#0').
name_ref(p_values_100, param, 'values', 'Lorg/apache/commons/csv/CSVRecord;.([Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;J)V#values#0#0').
name_ref(p_values_43, param, 'values', 'Lorg/apache/commons/csv/CSVFormat;.format([Ljava/lang/Object;)Ljava/lang/String;#values#0#0').
name_ref(f_all_153, field, 'ALL', 'Lorg/apache/commons/csv/Quote;.ALL)Lorg/apache/commons/csv/Quote;').
name_ref(f_comma_4, field, 'COMMA', 'Lorg/apache/commons/csv/Constants;.COMMA)C').
name_ref(f_comment_107, field, 'comment', 'Lorg/apache/commons/csv/CSVRecord;.comment)Ljava/lang/String;').
name_ref(f_comment_158, field, 'COMMENT', 'Lorg/apache/commons/csv/Token$Type;.COMMENT)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_comment_start_128, field, 'commentStart', 'Lorg/apache/commons/csv/Lexer;.commentStart)C').
name_ref(f_comment_start_31, field, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.commentStart)Ljava/lang/Character;').
name_ref(f_content_78, field, 'content', 'Lorg/apache/commons/csv/Token;.content)Ljava/lang/StringBuilder;').
name_ref(f_cr_13, field, 'CR', 'Lorg/apache/commons/csv/Constants;.CR)C').
name_ref(f_crlf_6, field, 'CRLF', 'Lorg/apache/commons/csv/Constants;.CRLF)Ljava/lang/String;').
name_ref(f_default_3, field, 'DEFAULT', 'Lorg/apache/commons/csv/CSVFormat;.DEFAULT)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_delimiter_125, field, 'delimiter', 'Lorg/apache/commons/csv/Lexer;.delimiter)C').
name_ref(f_delimiter_28, field, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.delimiter)C').
name_ref(f_disabled_141, field, 'DISABLED', 'Lorg/apache/commons/csv/Lexer;.DISABLED)C').
name_ref(f_double_quote_char_5, field, 'DOUBLE_QUOTE_CHAR', 'Lorg/apache/commons/csv/Constants;.DOUBLE_QUOTE_CHAR)Ljava/lang/Character;').
name_ref(f_empty_string_array_99, field, 'EMPTY_STRING_ARRAY', 'Lorg/apache/commons/csv/CSVRecord;.EMPTY_STRING_ARRAY)[Ljava/lang/String;').
name_ref(f_end_of_stream_147, field, 'END_OF_STREAM', 'Lorg/apache/commons/csv/Constants;.END_OF_STREAM)I').
name_ref(f_eof_157, field, 'EOF', 'Lorg/apache/commons/csv/Token$Type;.EOF)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_eol_counter_116, field, 'eolCounter', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.eolCounter)J').
name_ref(f_eorecord_138, field, 'EORECORD', 'Lorg/apache/commons/csv/Token$Type;.EORECORD)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_escape_126, field, 'escape', 'Lorg/apache/commons/csv/Lexer;.escape)C').
name_ref(f_escape_32, field, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.escape)Ljava/lang/Character;').
name_ref(f_excel_8, field, 'EXCEL', 'Lorg/apache/commons/csv/CSVFormat;.EXCEL)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_format_74, field, 'format', 'Lorg/apache/commons/csv/CSVParser;.format)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_header_38, field, 'header', 'Lorg/apache/commons/csv/CSVFormat;.header)[Ljava/lang/String;').
name_ref(f_header_map_76, field, 'headerMap', 'Lorg/apache/commons/csv/CSVParser;.headerMap)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;').
name_ref(f_ignore_empty_headers_34, field, 'ignoreEmptyHeaders', 'Lorg/apache/commons/csv/CSVFormat;.ignoreEmptyHeaders)Z').
name_ref(f_ignore_empty_lines_130, field, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/Lexer;.ignoreEmptyLines)Z').
name_ref(f_ignore_empty_lines_35, field, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.ignoreEmptyLines)Z').
name_ref(f_ignore_surrounding_spaces_129, field, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/Lexer;.ignoreSurroundingSpaces)Z').
name_ref(f_ignore_surrounding_spaces_33, field, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.ignoreSurroundingSpaces)Z').
name_ref(f_initial_token_length_159, field, 'INITIAL_TOKEN_LENGTH', 'Lorg/apache/commons/csv/Token;.INITIAL_TOKEN_LENGTH)I').
name_ref(f_invalid_135, field, 'INVALID', 'Lorg/apache/commons/csv/Token$Type;.INVALID)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_is_ready_160, field, 'isReady', 'Lorg/apache/commons/csv/Token;.isReady)Z').
name_ref(f_last_char_114, field, 'lastChar', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.lastChar)I').
name_ref(f_lexer_75, field, 'lexer', 'Lorg/apache/commons/csv/CSVParser;.lexer)Lorg/apache/commons/csv/Lexer;').
name_ref(f_lf_12, field, 'LF', 'Lorg/apache/commons/csv/Constants;.LF)C').
name_ref(f_mapping_106, field, 'mapping', 'Lorg/apache/commons/csv/CSVRecord;.mapping)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;').
name_ref(f_minimal_154, field, 'MINIMAL', 'Lorg/apache/commons/csv/Quote;.MINIMAL)Lorg/apache/commons/csv/Quote;').
name_ref(f_mysql_10, field, 'MYSQL', 'Lorg/apache/commons/csv/CSVFormat;.MYSQL)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_non_numeric_155, field, 'NON_NUMERIC', 'Lorg/apache/commons/csv/Quote;.NON_NUMERIC)Lorg/apache/commons/csv/Quote;').
name_ref(f_none_156, field, 'NONE', 'Lorg/apache/commons/csv/Quote;.NONE)Lorg/apache/commons/csv/Quote;').
name_ref(f_null_string_37, field, 'nullString', 'Lorg/apache/commons/csv/CSVFormat;.nullString)Ljava/lang/String;').
name_ref(f_quote_char_127, field, 'quoteChar', 'Lorg/apache/commons/csv/Lexer;.quoteChar)C').
name_ref(f_quote_char_29, field, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.quoteChar)Ljava/lang/Character;').
name_ref(f_quote_policy_30, field, 'quotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.quotePolicy)Lorg/apache/commons/csv/Quote;').
name_ref(f_reader_124, field, 'reader', 'Lorg/apache/commons/csv/Lexer;.reader)Lorg/apache/commons/csv/ExtendedBufferedReader;').
name_ref(f_record_70, field, 'record', 'Lorg/apache/commons/csv/CSVParser;.record)Ljava/util/List<Ljava/lang/String;>;').
name_ref(f_record_number_104, field, 'recordNumber', 'Lorg/apache/commons/csv/CSVRecord;.recordNumber)J').
name_ref(f_record_number_93, field, 'recordNumber', 'Lorg/apache/commons/csv/CSVParser;.recordNumber)J').
name_ref(f_record_separator_36, field, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.recordSeparator)Ljava/lang/String;').
name_ref(f_result_95, field, 'RESULT', 'Lorg/apache/commons/csv/CSVParserTest;.RESULT)[[Ljava/lang/String;').
name_ref(f_reusable_token_71, field, 'reusableToken', 'Lorg/apache/commons/csv/CSVParser;.reusableToken)Lorg/apache/commons/csv/Token;').
name_ref(f_rfc4180_7, field, 'RFC4180', 'Lorg/apache/commons/csv/CSVFormat;.RFC4180)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_skip_header_record_41, field, 'skipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.skipHeaderRecord)Z').
name_ref(f_tdf_9, field, 'TDF', 'Lorg/apache/commons/csv/CSVFormat;.TDF)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_token_92, field, 'TOKEN', 'Lorg/apache/commons/csv/Token$Type;.TOKEN)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_type_91, field, 'type', 'Lorg/apache/commons/csv/Token;.type)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_undefined_115, field, 'UNDEFINED', 'Lorg/apache/commons/csv/Constants;.UNDEFINED)I').
name_ref(f_values_105, field, 'values', 'Lorg/apache/commons/csv/CSVRecord;.values)[Ljava/lang/String;').
name_ref(m_add_63, method, 'add', 'Ljava/util/List;.add(TE;)Z').
name_ref(m_add_record_value_61, method, 'addRecordValue', 'Lorg/apache/commons/csv/CSVParser;.addRecordValue()V').
name_ref(m_append_187, method, 'append', 'Ljava/lang/StringBuilder;.append(C)Ljava/lang/StringBuilder;').
name_ref(m_array_list_56, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_assertions_1, method, 'Assertions', 'Lorg/apache/commons/csv/Assertions;.()V').
name_ref(m_buffered_reader_168, method, 'BufferedReader', 'Ljava/io/BufferedReader;.(Ljava/io/Reader;)V').
name_ref(m_char_value_7, method, 'charValue', 'Ljava/lang/Character;.charValue()C').
name_ref(m_clear_85, method, 'clear', 'Ljava/util/List;.clear()V').
name_ref(m_clone_10, method, 'clone', 'Ljava/lang/Object;.clone()[Ljava/lang/String;').
name_ref(m_close_177, method, 'close', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.close()V|Ljava/io/IOException;').
name_ref(m_close_195, method, 'close', 'Lorg/apache/commons/csv/Lexer;.close()V|Ljava/io/IOException;').
name_ref(m_close_65, method, 'close', 'Lorg/apache/commons/csv/CSVParser;.close()V|Ljava/io/IOException;').
name_ref(m_contains_key_74, method, 'containsKey', 'Ljava/util/Map;.containsKey(Ljava/lang/Object;)Z').
name_ref(m_csvformat_3, method, 'CSVFormat', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V').
name_ref(m_csvparser_32, method, 'CSVParser', 'Lorg/apache/commons/csv/CSVParser;.(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V|Ljava/io/IOException;').
name_ref(m_csvrecord_89, method, 'CSVRecord', 'Lorg/apache/commons/csv/CSVRecord;.([Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;J)V').
name_ref(m_equals_12, method, 'equals', 'Lorg/apache/commons/csv/CSVFormat;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_35, method, 'equals', 'Ljava/lang/Character;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_ignore_case_64, method, 'equalsIgnoreCase', 'Ljava/lang/String;.equalsIgnoreCase(Ljava/lang/String;)Z').
name_ref(m_extended_buffered_reader_59, method, 'ExtendedBufferedReader', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.(Ljava/io/Reader;)V').
name_ref(m_format_13, method, 'format', 'Lorg/apache/commons/csv/CSVFormat;.format([Ljava/lang/Object;)Ljava/lang/String;').
name_ref(m_get_154, method, 'get', 'Lorg/apache/commons/csv/CSVRecord;.get(Ljava/lang/Enum<*>;)Ljava/lang/String;').
name_ref(m_get_155, method, 'get', 'Lorg/apache/commons/csv/CSVRecord;.get(I)Ljava/lang/String;').
name_ref(m_get_156, method, 'get', 'Lorg/apache/commons/csv/CSVRecord;.get(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_comment_157, method, 'getComment', 'Lorg/apache/commons/csv/CSVRecord;.getComment()Ljava/lang/String;').
name_ref(m_get_comment_start_14, method, 'getCommentStart', 'Lorg/apache/commons/csv/CSVFormat;.getCommentStart()Ljava/lang/Character;').
name_ref(m_get_current_line_number_175, method, 'getCurrentLineNumber', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.getCurrentLineNumber()J').
name_ref(m_get_current_line_number_189, method, 'getCurrentLineNumber', 'Lorg/apache/commons/csv/Lexer;.getCurrentLineNumber()J').
name_ref(m_get_current_line_number_66, method, 'getCurrentLineNumber', 'Lorg/apache/commons/csv/CSVParser;.getCurrentLineNumber()J').
name_ref(m_get_delimiter_15, method, 'getDelimiter', 'Lorg/apache/commons/csv/CSVFormat;.getDelimiter()C').
name_ref(m_get_escape_16, method, 'getEscape', 'Lorg/apache/commons/csv/CSVFormat;.getEscape()Ljava/lang/Character;').
name_ref(m_get_header_17, method, 'getHeader', 'Lorg/apache/commons/csv/CSVFormat;.getHeader()[Ljava/lang/String;').
name_ref(m_get_header_map_67, method, 'getHeaderMap', 'Lorg/apache/commons/csv/CSVParser;.getHeaderMap()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;').
name_ref(m_get_ignore_empty_headers_18, method, 'getIgnoreEmptyHeaders', 'Lorg/apache/commons/csv/CSVFormat;.getIgnoreEmptyHeaders()Z').
name_ref(m_get_ignore_empty_lines_19, method, 'getIgnoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.getIgnoreEmptyLines()Z').
name_ref(m_get_ignore_surrounding_spaces_20, method, 'getIgnoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.getIgnoreSurroundingSpaces()Z').
name_ref(m_get_last_char_171, method, 'getLastChar', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.getLastChar()I').
name_ref(m_get_next_record_81, method, 'getNextRecord', 'Lorg/apache/commons/csv/CSVParser$14458;.getNextRecord()Lorg/apache/commons/csv/CSVRecord;').
name_ref(m_get_null_string_21, method, 'getNullString', 'Lorg/apache/commons/csv/CSVFormat;.getNullString()Ljava/lang/String;').
name_ref(m_get_quote_char_22, method, 'getQuoteChar', 'Lorg/apache/commons/csv/CSVFormat;.getQuoteChar()Ljava/lang/Character;').
name_ref(m_get_quote_policy_23, method, 'getQuotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.getQuotePolicy()Lorg/apache/commons/csv/Quote;').
name_ref(m_get_record_number_158, method, 'getRecordNumber', 'Lorg/apache/commons/csv/CSVRecord;.getRecordNumber()J').
name_ref(m_get_record_number_68, method, 'getRecordNumber', 'Lorg/apache/commons/csv/CSVParser;.getRecordNumber()J').
name_ref(m_get_record_separator_24, method, 'getRecordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.getRecordSeparator()Ljava/lang/String;').
name_ref(m_get_records_69, method, 'getRecords', 'Lorg/apache/commons/csv/CSVParser;.getRecords()Ljava/util/List<Lorg/apache/commons/csv/CSVRecord;>;|Ljava/io/IOException;').
name_ref(m_get_records_70, method, 'getRecords', 'Lorg/apache/commons/csv/CSVParser;.getRecords<T::Ljava/util/Collection<Lorg/apache/commons/csv/CSVRecord;>;>(TT;)TT;|Ljava/io/IOException;').
name_ref(m_get_skip_header_record_25, method, 'getSkipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.getSkipHeaderRecord()Z').
name_ref(m_has_next_82, method, 'hasNext', 'Lorg/apache/commons/csv/CSVParser$14458;.hasNext()Z').
name_ref(m_hash_code_26, method, 'hashCode', 'Lorg/apache/commons/csv/CSVFormat;.hashCode()I').
name_ref(m_hash_set_9, method, 'HashSet', 'Ljava/util/HashSet;.()V').
name_ref(m_initialize_header_60, method, 'initializeHeader', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;').
name_ref(m_is_closed_176, method, 'isClosed', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.isClosed()Z').
name_ref(m_is_closed_192, method, 'isClosed', 'Lorg/apache/commons/csv/Lexer;.isClosed()Z').
name_ref(m_is_closed_79, method, 'isClosed', 'Lorg/apache/commons/csv/CSVParser;.isClosed()Z').
name_ref(m_is_comment_start_183, method, 'isCommentStart', 'Lorg/apache/commons/csv/Lexer;.isCommentStart(I)Z').
name_ref(m_is_commenting_enabled_27, method, 'isCommentingEnabled', 'Lorg/apache/commons/csv/CSVFormat;.isCommentingEnabled()Z').
name_ref(m_is_consistent_159, method, 'isConsistent', 'Lorg/apache/commons/csv/CSVRecord;.isConsistent()Z').
name_ref(m_is_delimiter_182, method, 'isDelimiter', 'Lorg/apache/commons/csv/Lexer;.isDelimiter(I)Z').
name_ref(m_is_empty_75, method, 'isEmpty', 'Ljava/lang/String;.isEmpty()Z').
name_ref(m_is_empty_88, method, 'isEmpty', 'Ljava/util/List;.isEmpty()Z').
name_ref(m_is_end_of_file_181, method, 'isEndOfFile', 'Lorg/apache/commons/csv/Lexer;.isEndOfFile(I)Z').
name_ref(m_is_escape_186, method, 'isEscape', 'Lorg/apache/commons/csv/Lexer;.isEscape(I)Z').
name_ref(m_is_escaping_28, method, 'isEscaping', 'Lorg/apache/commons/csv/CSVFormat;.isEscaping()Z').
name_ref(m_is_line_break_5, method, 'isLineBreak', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(C)Z').
name_ref(m_is_line_break_6, method, 'isLineBreak', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(Ljava/lang/Character;)Z').
name_ref(m_is_mapped_160, method, 'isMapped', 'Lorg/apache/commons/csv/CSVRecord;.isMapped(Ljava/lang/String;)Z').
name_ref(m_is_meta_char_194, method, 'isMetaChar', 'Lorg/apache/commons/csv/Lexer;.isMetaChar(I)Z').
name_ref(m_is_null_handling_29, method, 'isNullHandling', 'Lorg/apache/commons/csv/CSVFormat;.isNullHandling()Z').
name_ref(m_is_quote_char_184, method, 'isQuoteChar', 'Lorg/apache/commons/csv/Lexer;.isQuoteChar(I)Z').
name_ref(m_is_quoting_30, method, 'isQuoting', 'Lorg/apache/commons/csv/CSVFormat;.isQuoting()Z').
name_ref(m_is_set_161, method, 'isSet', 'Lorg/apache/commons/csv/CSVRecord;.isSet(Ljava/lang/String;)Z').
name_ref(m_is_start_of_line_180, method, 'isStartOfLine', 'Lorg/apache/commons/csv/Lexer;.isStartOfLine(I)Z').
name_ref(m_is_whitespace_193, method, 'isWhitespace', 'Lorg/apache/commons/csv/Lexer;.isWhitespace(I)Z').
name_ref(m_iterator_162, method, 'iterator', 'Lorg/apache/commons/csv/CSVRecord;.iterator()Ljava/util/Iterator<Ljava/lang/String;>;').
name_ref(m_iterator_80, method, 'iterator', 'Lorg/apache/commons/csv/CSVParser;.iterator()Ljava/util/Iterator<Lorg/apache/commons/csv/CSVRecord;>;').
name_ref(m_lexer_58, method, 'Lexer', 'Lorg/apache/commons/csv/Lexer;.(Lorg/apache/commons/csv/CSVFormat;Lorg/apache/commons/csv/ExtendedBufferedReader;)V').
name_ref(m_linked_hash_map_71, method, 'LinkedHashMap', 'Ljava/util/LinkedHashMap;.()V').
name_ref(m_look_ahead_174, method, 'lookAhead', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.lookAhead()I|Ljava/io/IOException;').
name_ref(m_map_null_to_disabled_178, method, 'mapNullToDisabled', 'Lorg/apache/commons/csv/Lexer;.mapNullToDisabled(Ljava/lang/Character;)C').
name_ref(m_new_format_8, method, 'newFormat', 'Lorg/apache/commons/csv/CSVFormat;.newFormat(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_next_83, method, 'next', 'Lorg/apache/commons/csv/CSVParser$14458;.next()Lorg/apache/commons/csv/CSVRecord;').
name_ref(m_next_record_72, method, 'nextRecord', 'Lorg/apache/commons/csv/CSVParser;.nextRecord()Lorg/apache/commons/csv/CSVRecord;|Ljava/io/IOException;').
name_ref(m_next_token_87, method, 'nextToken', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;').
name_ref(m_not_null_2, method, 'notNull', 'Lorg/apache/commons/csv/Assertions;.notNull(Ljava/lang/Object;Ljava/lang/String;)V').
name_ref(m_parse_31, method, 'parse', 'Lorg/apache/commons/csv/CSVFormat;.parse(Ljava/io/Reader;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_53, method, 'parse', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_54, method, 'parse', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/lang/String;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_55, method, 'parse', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_encapsulated_token_188, method, 'parseEncapsulatedToken', 'Lorg/apache/commons/csv/Lexer;.parseEncapsulatedToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;').
name_ref(m_parse_simple_token_185, method, 'parseSimpleToken', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;').
name_ref(m_print_33, method, 'print', 'Lorg/apache/commons/csv/CSVFormat;.print(Ljava/lang/Appendable;)Lorg/apache/commons/csv/CSVPrinter;|Ljava/io/IOException;').
name_ref(m_put_77, method, 'put', 'Ljava/util/Map;.put(TK;TV;)TV;').
name_ref(m_put_in_163, method, 'putIn', 'Lorg/apache/commons/csv/CSVRecord;.putIn<M::Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>(TM;)TM;').
name_ref(m_read_169, method, 'read', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read()I|Ljava/io/IOException;').
name_ref(m_read_170, method, 'read', 'Ljava/io/BufferedReader;.read()I|Ljava/io/IOException;').
name_ref(m_read_172, method, 'read', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;').
name_ref(m_read_end_of_line_179, method, 'readEndOfLine', 'Lorg/apache/commons/csv/Lexer;.readEndOfLine(I)Z|Ljava/io/IOException;').
name_ref(m_read_escape_190, method, 'readEscape', 'Lorg/apache/commons/csv/Lexer;.readEscape()I|Ljava/io/IOException;').
name_ref(m_read_line_173, method, 'readLine', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.readLine()Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_remove_84, method, 'remove', 'Lorg/apache/commons/csv/CSVParser$14458;.remove()V').
name_ref(m_reset_86, method, 'reset', 'Lorg/apache/commons/csv/Token;.reset()V').
name_ref(m_set_length_197, method, 'setLength', 'Ljava/lang/AbstractStringBuilder;.setLength(I)V').
name_ref(m_size_164, method, 'size', 'Lorg/apache/commons/csv/CSVRecord;.size()I').
name_ref(m_size_91, method, 'size', 'Ljava/util/List;.size()I').
name_ref(m_string_builder_196, method, 'StringBuilder', 'Ljava/lang/StringBuilder;.(I)V').
name_ref(m_string_reader_129, method, 'StringReader', 'Ljava/io/StringReader;.(Ljava/lang/String;)V').
name_ref(m_test_backslash_escaping2_93, method, 'testBackslashEscaping2', 'Lorg/apache/commons/csv/CSVParserTest;.testBackslashEscaping2()V|Ljava/io/IOException;').
name_ref(m_test_backslash_escaping_92, method, 'testBackslashEscaping', 'Lorg/apache/commons/csv/CSVParserTest;.testBackslashEscaping()V|Ljava/io/IOException;').
name_ref(m_test_backslash_escaping_old_94, method, 'testBackslashEscapingOld', 'Lorg/apache/commons/csv/CSVParserTest;.testBackslashEscapingOld()V|Ljava/io/IOException;').
name_ref(m_test_bom_95, method, 'testBOM', 'Lorg/apache/commons/csv/CSVParserTest;.testBOM()V|Ljava/io/IOException;').
name_ref(m_test_bominput_stream_96, method, 'testBOMInputStream', 'Lorg/apache/commons/csv/CSVParserTest;.testBOMInputStream()V').
name_ref(m_test_carriage_return_endings_97, method, 'testCarriageReturnEndings', 'Lorg/apache/commons/csv/CSVParserTest;.testCarriageReturnEndings()V|Ljava/io/IOException;').
name_ref(m_test_carriage_return_line_feed_endings_98, method, 'testCarriageReturnLineFeedEndings', 'Lorg/apache/commons/csv/CSVParserTest;.testCarriageReturnLineFeedEndings()V|Ljava/io/IOException;').
name_ref(m_test_close_99, method, 'testClose', 'Lorg/apache/commons/csv/CSVParserTest;.testClose()V|Ljava/lang/Exception;').
name_ref(m_test_csv57_100, method, 'testCSV57', 'Lorg/apache/commons/csv/CSVParserTest;.testCSV57()V|Ljava/lang/Exception;').
name_ref(m_test_default_format_101, method, 'testDefaultFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testDefaultFormat()V|Ljava/io/IOException;').
name_ref(m_test_duplicate_headers_111, method, 'testDuplicateHeaders', 'Lorg/apache/commons/csv/CSVParserTest;.testDuplicateHeaders()V|Ljava/lang/Exception;').
name_ref(m_test_empty_file_102, method, 'testEmptyFile', 'Lorg/apache/commons/csv/CSVParserTest;.testEmptyFile()V|Ljava/lang/Exception;').
name_ref(m_test_empty_line_behaviour_csv_103, method, 'testEmptyLineBehaviourCSV', 'Lorg/apache/commons/csv/CSVParserTest;.testEmptyLineBehaviourCSV()V|Ljava/lang/Exception;').
name_ref(m_test_empty_line_behaviour_excel_104, method, 'testEmptyLineBehaviourExcel', 'Lorg/apache/commons/csv/CSVParserTest;.testEmptyLineBehaviourExcel()V|Ljava/lang/Exception;').
name_ref(m_test_end_of_file_behavior_csv_105, method, 'testEndOfFileBehaviorCSV', 'Lorg/apache/commons/csv/CSVParserTest;.testEndOfFileBehaviorCSV()V|Ljava/lang/Exception;').
name_ref(m_test_end_of_file_behaviour_excel_106, method, 'testEndOfFileBehaviourExcel', 'Lorg/apache/commons/csv/CSVParserTest;.testEndOfFileBehaviourExcel()V|Ljava/lang/Exception;').
name_ref(m_test_excel_format1_107, method, 'testExcelFormat1', 'Lorg/apache/commons/csv/CSVParserTest;.testExcelFormat1()V|Ljava/io/IOException;').
name_ref(m_test_excel_format2_108, method, 'testExcelFormat2', 'Lorg/apache/commons/csv/CSVParserTest;.testExcelFormat2()V|Ljava/lang/Exception;').
name_ref(m_test_for_each_109, method, 'testForEach', 'Lorg/apache/commons/csv/CSVParserTest;.testForEach()V|Ljava/lang/Exception;').
name_ref(m_test_get_header_map_110, method, 'testGetHeaderMap', 'Lorg/apache/commons/csv/CSVParserTest;.testGetHeaderMap()V|Ljava/lang/Exception;').
name_ref(m_test_get_line_112, method, 'testGetLine', 'Lorg/apache/commons/csv/CSVParserTest;.testGetLine()V|Ljava/io/IOException;').
name_ref(m_test_get_line_number_with_cr_113, method, 'testGetLineNumberWithCR', 'Lorg/apache/commons/csv/CSVParserTest;.testGetLineNumberWithCR()V|Ljava/lang/Exception;').
name_ref(m_test_get_line_number_with_crlf_114, method, 'testGetLineNumberWithCRLF', 'Lorg/apache/commons/csv/CSVParserTest;.testGetLineNumberWithCRLF()V|Ljava/lang/Exception;').
name_ref(m_test_get_line_number_with_lf_115, method, 'testGetLineNumberWithLF', 'Lorg/apache/commons/csv/CSVParserTest;.testGetLineNumberWithLF()V|Ljava/lang/Exception;').
name_ref(m_test_get_one_line_116, method, 'testGetOneLine', 'Lorg/apache/commons/csv/CSVParserTest;.testGetOneLine()V|Ljava/io/IOException;').
name_ref(m_test_get_one_line_custom_collection_117, method, 'testGetOneLineCustomCollection', 'Lorg/apache/commons/csv/CSVParserTest;.testGetOneLineCustomCollection()V|Ljava/io/IOException;').
name_ref(m_test_get_one_line_one_parser_118, method, 'testGetOneLineOneParser', 'Lorg/apache/commons/csv/CSVParserTest;.testGetOneLineOneParser()V|Ljava/io/IOException;').
name_ref(m_test_get_record_number_with_cr_119, method, 'testGetRecordNumberWithCR', 'Lorg/apache/commons/csv/CSVParserTest;.testGetRecordNumberWithCR()V|Ljava/lang/Exception;').
name_ref(m_test_get_record_number_with_crlf_120, method, 'testGetRecordNumberWithCRLF', 'Lorg/apache/commons/csv/CSVParserTest;.testGetRecordNumberWithCRLF()V|Ljava/lang/Exception;').
name_ref(m_test_get_record_number_with_lf_121, method, 'testGetRecordNumberWithLF', 'Lorg/apache/commons/csv/CSVParserTest;.testGetRecordNumberWithLF()V|Ljava/lang/Exception;').
name_ref(m_test_get_record_with_multi_line_values_123, method, 'testGetRecordWithMultiLineValues', 'Lorg/apache/commons/csv/CSVParserTest;.testGetRecordWithMultiLineValues()V|Ljava/lang/Exception;').
name_ref(m_test_get_records_122, method, 'testGetRecords', 'Lorg/apache/commons/csv/CSVParserTest;.testGetRecords()V|Ljava/io/IOException;').
name_ref(m_test_header_124, method, 'testHeader', 'Lorg/apache/commons/csv/CSVParserTest;.testHeader()V|Ljava/lang/Exception;').
name_ref(m_test_header_comment_130, method, 'testHeaderComment', 'Lorg/apache/commons/csv/CSVParserTest;.testHeaderComment()V|Ljava/lang/Exception;').
name_ref(m_test_header_missing_125, method, 'testHeaderMissing', 'Lorg/apache/commons/csv/CSVParserTest;.testHeaderMissing()V|Ljava/lang/Exception;').
name_ref(m_test_header_missing_with_null_128, method, 'testHeaderMissingWithNull', 'Lorg/apache/commons/csv/CSVParserTest;.testHeaderMissingWithNull()V|Ljava/lang/Exception;').
name_ref(m_test_headers_missing_127, method, 'testHeadersMissing', 'Lorg/apache/commons/csv/CSVParserTest;.testHeadersMissing()V|Ljava/lang/Exception;').
name_ref(m_test_headers_missing_exception_126, method, 'testHeadersMissingException', 'Lorg/apache/commons/csv/CSVParserTest;.testHeadersMissingException()V|Ljava/lang/Exception;').
name_ref(m_test_ignore_empty_lines_131, method, 'testIgnoreEmptyLines', 'Lorg/apache/commons/csv/CSVParserTest;.testIgnoreEmptyLines()V|Ljava/io/IOException;').
name_ref(m_test_invalid_format_132, method, 'testInvalidFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testInvalidFormat()V|Ljava/lang/Exception;').
name_ref(m_test_iterator_133, method, 'testIterator', 'Lorg/apache/commons/csv/CSVParserTest;.testIterator()V|Ljava/lang/Exception;').
name_ref(m_test_line_feed_endings_134, method, 'testLineFeedEndings', 'Lorg/apache/commons/csv/CSVParserTest;.testLineFeedEndings()V|Ljava/io/IOException;').
name_ref(m_test_mapped_but_not_set_as_outlook2007_contact_export_135, method, 'testMappedButNotSetAsOutlook2007ContactExport', 'Lorg/apache/commons/csv/CSVParserTest;.testMappedButNotSetAsOutlook2007ContactExport()V|Ljava/lang/Exception;').
name_ref(m_test_multiple_iterators_136, method, 'testMultipleIterators', 'Lorg/apache/commons/csv/CSVParserTest;.testMultipleIterators()V|Ljava/lang/Exception;').
name_ref(m_test_new_csvparser_null_reader_format_137, method, 'testNewCSVParserNullReaderFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testNewCSVParserNullReaderFormat()V|Ljava/lang/Exception;').
name_ref(m_test_new_csvparser_reader_null_format_138, method, 'testNewCSVParserReaderNullFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testNewCSVParserReaderNullFormat()V|Ljava/lang/Exception;').
name_ref(m_test_no_header_map_139, method, 'testNoHeaderMap', 'Lorg/apache/commons/csv/CSVParserTest;.testNoHeaderMap()V|Ljava/lang/Exception;').
name_ref(m_test_parse_file_null_format_140, method, 'testParseFileNullFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseFileNullFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parse_null_file_format_141, method, 'testParseNullFileFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseNullFileFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parse_null_string_format_142, method, 'testParseNullStringFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseNullStringFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parse_null_url_charset_format_143, method, 'testParseNullUrlCharsetFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseNullUrlCharsetFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parse_string_null_format_145, method, 'testParseStringNullFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseStringNullFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parse_url_charset_null_format_146, method, 'testParseUrlCharsetNullFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParseUrlCharsetNullFormat()V|Ljava/lang/Exception;').
name_ref(m_test_parser_url_null_charset_format_144, method, 'testParserUrlNullCharsetFormat', 'Lorg/apache/commons/csv/CSVParserTest;.testParserUrlNullCharsetFormat()V|Ljava/lang/Exception;').
name_ref(m_test_provided_header_147, method, 'testProvidedHeader', 'Lorg/apache/commons/csv/CSVParserTest;.testProvidedHeader()V|Ljava/lang/Exception;').
name_ref(m_test_provided_header_auto_148, method, 'testProvidedHeaderAuto', 'Lorg/apache/commons/csv/CSVParserTest;.testProvidedHeaderAuto()V|Ljava/lang/Exception;').
name_ref(m_test_roundtrip_149, method, 'testRoundtrip', 'Lorg/apache/commons/csv/CSVParserTest;.testRoundtrip()V|Ljava/lang/Exception;').
name_ref(m_test_skip_auto_header_150, method, 'testSkipAutoHeader', 'Lorg/apache/commons/csv/CSVParserTest;.testSkipAutoHeader()V|Ljava/lang/Exception;').
name_ref(m_test_skip_set_header_151, method, 'testSkipSetHeader', 'Lorg/apache/commons/csv/CSVParserTest;.testSkipSetHeader()V|Ljava/lang/Exception;').
name_ref(m_to_array_90, method, 'toArray', 'Ljava/util/List;.toArray<T:Ljava/lang/Object;>([TT;)[TT;').
name_ref(m_to_list_165, method, 'toList', 'Lorg/apache/commons/csv/CSVRecord;.toList()Ljava/util/List<Ljava/lang/String;>;').
name_ref(m_to_map_166, method, 'toMap', 'Lorg/apache/commons/csv/CSVRecord;.toMap()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;').
name_ref(m_to_string_167, method, 'toString', 'Lorg/apache/commons/csv/CSVRecord;.toString()Ljava/lang/String;').
name_ref(m_to_string_198, method, 'toString', 'Lorg/apache/commons/csv/Token;.toString()Ljava/lang/String;').
name_ref(m_to_string_34, method, 'toString', 'Lorg/apache/commons/csv/CSVFormat;.toString()Ljava/lang/String;').
name_ref(m_to_string_62, method, 'toString', 'Ljava/lang/StringBuilder;.toString()Ljava/lang/String;').
name_ref(m_token_57, method, 'Token', 'Lorg/apache/commons/csv/Token;.()V').
name_ref(m_trim_76, method, 'trim', 'Ljava/lang/String;.trim()Ljava/lang/String;').
name_ref(m_trim_trailing_spaces_191, method, 'trimTrailingSpaces', 'Lorg/apache/commons/csv/Lexer;.trimTrailingSpaces(Ljava/lang/StringBuilder;)V').
name_ref(m_validate_11, method, 'validate', 'Lorg/apache/commons/csv/CSVFormat;.validate()V|Ljava/lang/IllegalArgumentException;').
name_ref(m_validate_line_numbers_152, method, 'validateLineNumbers', 'Lorg/apache/commons/csv/CSVParserTest;.validateLineNumbers(Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_validate_record_numbers_153, method, 'validateRecordNumbers', 'Lorg/apache/commons/csv/CSVParserTest;.validateRecordNumbers(Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_value_of_41, method, 'valueOf', 'Ljava/lang/Character;.valueOf(C)Ljava/lang/Character;').
name_ref(m_value_of_51, method, 'valueOf', 'Ljava/lang/String;.valueOf(C)Ljava/lang/String;').
name_ref(m_value_of_78, method, 'valueOf', 'Ljava/lang/Integer;.valueOf(I)Ljava/lang/Integer;').
name_ref(m_values_73, method, 'values', 'Lorg/apache/commons/csv/CSVRecord;.values()[Ljava/lang/String;').
name_ref(m_with_comment_start_36, method, 'withCommentStart', 'Lorg/apache/commons/csv/CSVFormat;.withCommentStart(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_comment_start_37, method, 'withCommentStart', 'Lorg/apache/commons/csv/CSVFormat;.withCommentStart(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_delimiter_38, method, 'withDelimiter', 'Lorg/apache/commons/csv/CSVFormat;.withDelimiter(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_escape_39, method, 'withEscape', 'Lorg/apache/commons/csv/CSVFormat;.withEscape(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_escape_40, method, 'withEscape', 'Lorg/apache/commons/csv/CSVFormat;.withEscape(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_header_42, method, 'withHeader', 'Lorg/apache/commons/csv/CSVFormat;.withHeader([Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_ignore_empty_headers_43, method, 'withIgnoreEmptyHeaders', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreEmptyHeaders(Z)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_ignore_empty_lines_4, method, 'withIgnoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreEmptyLines(Z)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_ignore_surrounding_spaces_44, method, 'withIgnoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreSurroundingSpaces(Z)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_null_string_45, method, 'withNullString', 'Lorg/apache/commons/csv/CSVFormat;.withNullString(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_quote_char_46, method, 'withQuoteChar', 'Lorg/apache/commons/csv/CSVFormat;.withQuoteChar(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_quote_char_47, method, 'withQuoteChar', 'Lorg/apache/commons/csv/CSVFormat;.withQuoteChar(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_quote_policy_48, method, 'withQuotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.withQuotePolicy(Lorg/apache/commons/csv/Quote;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_record_separator_49, method, 'withRecordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.withRecordSeparator(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_record_separator_50, method, 'withRecordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.withRecordSeparator(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_with_skip_header_record_52, method, 'withSkipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.withSkipHeaderRecord(Z)Lorg/apache/commons/csv/CSVFormat;').
name_ref(q_content_7, q_name, 'token.content', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0:Lorg/apache/commons/csv/Token;.content)Ljava/lang/StringBuilder;').
name_ref(q_default_4, q_name, 'CSVFormat.DEFAULT', 'Lorg/apache/commons/csv/CSVFormat;:Lorg/apache/commons/csv/CSVFormat;.DEFAULT)Lorg/apache/commons/csv/CSVFormat;').
name_ref(q_length_2, q_name, 'formatHeader.length', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#formatHeader:.length)I').
name_ref(q_length_3, q_name, 'headerRecord.length', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#0#headerRecord:.length)I').
name_ref(q_none_1, q_name, 'Quote.NONE', 'Lorg/apache/commons/csv/Quote;:Lorg/apache/commons/csv/Quote;.NONE)Lorg/apache/commons/csv/Quote;').
name_ref(q_type_5, q_name, 'token.type', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0:Lorg/apache/commons/csv/Token;.type)Lorg/apache/commons/csv/Token$Type;').
name_ref(q_type_6, q_name, 'token.type', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0:Lorg/apache/commons/csv/Token;.type)Lorg/apache/commons/csv/Token$Type;').

%%% End of Code Facts