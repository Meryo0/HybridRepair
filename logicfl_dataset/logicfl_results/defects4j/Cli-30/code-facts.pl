%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(gnu_parser_1, 'org.apache.commons.cli.GnuParser').
class(command_line_1, 'org.apache.commons.cli.CommandLine').
class(parser_test_case_1, 'org.apache.commons.cli.ParserTestCase').
class(default_parser_test_1, 'org.apache.commons.cli.DefaultParserTest').
class(option_validator_1, 'org.apache.commons.cli.OptionValidator').
class(option_1, 'org.apache.commons.cli.Option').
class(options_1, 'org.apache.commons.cli.Options').
class(util_1, 'org.apache.commons.cli.Util').
class(gnu_parser_test_1, 'org.apache.commons.cli.GnuParserTest').
class(posix_parser_test_1, 'org.apache.commons.cli.PosixParserTest').
class(default_parser_1, 'org.apache.commons.cli.DefaultParser').
class(basic_parser_test_1, 'org.apache.commons.cli.BasicParserTest').
class(posix_parser_1, 'org.apache.commons.cli.PosixParser').
class(basic_parser_1, 'org.apache.commons.cli.BasicParser').
class(parser_1, 'org.apache.commons.cli.Parser').

%%% Methods
%gnu_parser_1 - org.apache.commons.cli.GnuParser
method(m_flatten_92, range(gnu_parser_1, 1206, 2908, 33, 113)).
%command_line_1 - org.apache.commons.cli.CommandLine
method(m_command_line_31, range(command_line_1, 1916, 97, 54, 60)).
method(m_has_option_32, range(command_line_1, 2019, 256, 62, 71)).
method(m_has_option_35, range(command_line_1, 2281, 252, 73, 82)).
method(m_get_option_object_36, range(command_line_1, 2539, 595, 84, 102)).
method(m_get_parsed_option_value_37, range(command_line_1, 3140, 712, 104, 126)).
method(m_get_option_object_38, range(command_line_1, 3858, 271, 128, 137)).
method(m_get_option_value_39, range(command_line_1, 4135, 371, 139, 151)).
method(m_get_option_value_40, range(command_line_1, 4512, 330, 153, 163)).
method(m_get_option_values_41, range(command_line_1, 4848, 712, 165, 186)).
method(m_resolve_option_34, range(command_line_1, 5566, 651, 188, 212)).
method(m_get_option_values_45, range(command_line_1, 6223, 337, 214, 224)).
method(m_get_option_value_46, range(command_line_1, 6566, 510, 226, 240)).
method(m_get_option_value_47, range(command_line_1, 7082, 481, 242, 254)).
method(m_get_option_properties_48, range(command_line_1, 7569, 1432, 256, 294)).
method(m_get_args_49, range(command_line_1, 9007, 302, 296, 308)).
method(m_get_arg_list_50, range(command_line_1, 9315, 228, 310, 318)).
method(m_add_arg_51, range(command_line_1, 10087, 184, 342, 350)).
method(m_add_option_52, range(command_line_1, 10277, 206, 352, 360)).
method(m_iterator_53, range(command_line_1, 10489, 280, 362, 371)).
method(m_get_options_54, range(command_line_1, 10775, 400, 373, 387)).
%parser_test_case_1 - org.apache.commons.cli.ParserTestCase
method(m_set_up_3, range(parser_test_case_1, 1204, 265, 38, 44)).
method(m_test_simple_short_199, range(parser_test_case_1, 1475, 548, 46, 58)).
method(m_test_simple_long_200, range(parser_test_case_1, 2029, 663, 60, 73)).
method(m_test_multiple_201, range(parser_test_case_1, 2698, 904, 75, 92)).
method(m_test_multiple_with_long_202, range(parser_test_case_1, 3608, 921, 94, 111)).
method(m_test_unrecognized_option_203, range(parser_test_case_1, 4535, 397, 113, 126)).
method(m_test_missing_arg_204, range(parser_test_case_1, 4938, 460, 128, 145)).
method(m_test_double_dash1_205, range(parser_test_case_1, 5404, 489, 147, 158)).
method(m_test_double_dash2_206, range(parser_test_case_1, 5899, 562, 160, 176)).
method(m_test_single_dash_207, range(parser_test_case_1, 6471, 712, 178, 192)).
method(m_test_stop_at_unexpected_arg_208, range(parser_test_case_1, 7189, 477, 194, 204)).
method(m_test_stop_at_expected_arg_209, range(parser_test_case_1, 7671, 412, 206, 215)).
method(m_test_stop_at_non_option_short_210, range(parser_test_case_1, 8089, 429, 217, 226)).
method(m_test_stop_at_non_option_long_211, range(parser_test_case_1, 8524, 506, 228, 239)).
method(m_test_negative_argument_212, range(parser_test_case_1, 9036, 223, 241, 247)).
method(m_test_negative_option_213, range(parser_test_case_1, 9265, 275, 249, 257)).
method(m_test_argument_starting_with_hyphen_214, range(parser_test_case_1, 9550, 234, 259, 265)).
method(m_test_short_with_equal_215, range(parser_test_case_1, 9790, 347, 267, 277)).
method(m_test_short_without_equal_216, range(parser_test_case_1, 10143, 349, 279, 289)).
method(m_test_long_with_equal_double_dash_217, range(parser_test_case_1, 10498, 359, 291, 301)).
method(m_test_long_with_equal_single_dash_218, range(parser_test_case_1, 10863, 358, 303, 313)).
method(m_test_long_without_equal_single_dash_219, range(parser_test_case_1, 11227, 360, 315, 325)).
method(m_test_ambiguous_long_without_equal_single_dash_220, range(parser_test_case_1, 11597, 551, 327, 340)).
method(m_test_long_without_equal_double_dash_221, range(parser_test_case_1, 12154, 412, 342, 352)).
method(m_test_long_with_unexpected_argument1_222, range(parser_test_case_1, 12572, 514, 354, 372)).
method(m_test_long_with_unexpected_argument2_223, range(parser_test_case_1, 13092, 510, 374, 392)).
method(m_test_short_with_unexpected_argument_224, range(parser_test_case_1, 13608, 508, 394, 412)).
method(m_test_properties_option1_225, range(parser_test_case_1, 14126, 908, 414, 434)).
method(m_test_properties_option2_226, range(parser_test_case_1, 15040, 786, 436, 453)).
method(m_test_unambiguous_partial_long_option1_227, range(parser_test_case_1, 15832, 466, 455, 466)).
method(m_test_unambiguous_partial_long_option2_228, range(parser_test_case_1, 16304, 465, 468, 479)).
method(m_test_unambiguous_partial_long_option3_229, range(parser_test_case_1, 16775, 542, 481, 493)).
method(m_test_unambiguous_partial_long_option4_230, range(parser_test_case_1, 17323, 541, 495, 507)).
method(m_test_ambiguous_partial_long_option1_231, range(parser_test_case_1, 17874, 848, 509, 532)).
method(m_test_ambiguous_partial_long_option2_232, range(parser_test_case_1, 18732, 846, 534, 557)).
method(m_test_ambiguous_partial_long_option3_233, range(parser_test_case_1, 19584, 867, 559, 582)).
method(m_test_ambiguous_partial_long_option4_234, range(parser_test_case_1, 20457, 865, 584, 607)).
method(m_test_partial_long_option_single_dash_235, range(parser_test_case_1, 21332, 520, 609, 621)).
method(m_test_with_required_option_236, range(parser_test_case_1, 21858, 661, 623, 637)).
method(m_test_option_and_required_option_237, range(parser_test_case_1, 22525, 667, 639, 653)).
method(m_test_missing_required_option_238, range(parser_test_case_1, 23198, 772, 655, 677)).
method(m_test_missing_required_options_239, range(parser_test_case_1, 23976, 925, 679, 703)).
method(m_test_missing_required_group_240, range(parser_test_case_1, 24911, 857, 705, 730)).
method(m_test_option_group_241, range(parser_test_case_1, 25778, 437, 732, 744)).
method(m_test_option_group_long_242, range(parser_test_case_1, 26221, 536, 746, 759)).
method(m_test_reuse_options_twice_243, range(parser_test_case_1, 26767, 547, 761, 779)).
method(m_test_bursting_244, range(parser_test_case_1, 27320, 528, 781, 792)).
method(m_test_unrecognized_option_with_bursting_245, range(parser_test_case_1, 27854, 402, 794, 807)).
method(m_test_missing_arg_with_bursting_246, range(parser_test_case_1, 28262, 474, 809, 826)).
method(m_test_stop_bursting_247, range(parser_test_case_1, 28742, 452, 828, 838)).
method(m_test_stop_bursting2_248, range(parser_test_case_1, 29200, 827, 840, 855)).
method(m_test_unlimited_args_249, range(parser_test_case_1, 30033, 641, 857, 871)).
method(m_parse_250, range(parser_test_case_1, 30680, 498, 873, 881)).
method(m_test_property_option_singular_value_251, range(parser_test_case_1, 31184, 533, 883, 895)).
method(m_test_property_option_flags_252, range(parser_test_case_1, 31723, 2059, 897, 954)).
method(m_test_property_option_multiple_values_253, range(parser_test_case_1, 33789, 546, 956, 969)).
method(m_test_property_override_values_254, range(parser_test_case_1, 34341, 732, 971, 988)).
method(m_test_property_option_required_255, range(parser_test_case_1, 35079, 389, 990, 1000)).
method(m_test_property_option_unexpected_256, range(parser_test_case_1, 35474, 429, 1002, 1015)).
method(m_test_property_option_group_257, range(parser_test_case_1, 35909, 922, 1017, 1043)).
%default_parser_test_1 - org.apache.commons.cli.DefaultParserTest
method(m_set_up_90, range(default_parser_test_1, 963, 88, 26, 29)).
%option_validator_1 - org.apache.commons.cli.OptionValidator
method(m_validate_option_121, range(option_validator_1, 1005, 1465, 29, 77)).
method(m_is_valid_opt_163, range(option_validator_1, 2476, 316, 79, 88)).
method(m_is_valid_char_164, range(option_validator_1, 2798, 289, 90, 99)).
%option_1 - org.apache.commons.cli.Option
method(m_option_118, range(option_1, 2784, 450, 80, 92)).
method(m_option_119, range(option_1, 3240, 542, 94, 107)).
method(m_option_120, range(option_1, 3788, 907, 109, 136)).
method(m_get_id_122, range(option_1, 4701, 280, 138, 148)).
method(m_get_key_123, range(option_1, 4987, 294, 150, 164)).
method(m_get_opt_124, range(option_1, 5287, 364, 166, 179)).
method(m_get_type_125, range(option_1, 5657, 160, 181, 189)).
method(m_set_type_126, range(option_1, 5823, 173, 191, 199)).
method(m_get_long_opt_127, range(option_1, 6002, 207, 201, 209)).
method(m_set_long_opt_128, range(option_1, 6215, 198, 211, 219)).
method(m_set_optional_arg_129, range(option_1, 6419, 278, 221, 230)).
method(m_has_optional_arg_130, range(option_1, 6703, 152, 232, 238)).
method(m_has_long_opt_131, range(option_1, 6861, 210, 240, 248)).
method(m_has_arg_71, range(option_1, 7077, 250, 250, 258)).
method(m_get_description_132, range(option_1, 7333, 211, 260, 268)).
method(m_set_description_133, range(option_1, 7550, 256, 270, 279)).
method(m_is_required_134, range(option_1, 7812, 210, 281, 289)).
method(m_set_required_135, range(option_1, 8028, 222, 291, 299)).
method(m_set_arg_name_136, range(option_1, 8256, 221, 301, 309)).
method(m_get_arg_name_137, range(option_1, 8483, 194, 311, 319)).
method(m_has_arg_name_138, range(option_1, 8683, 281, 321, 331)).
method(m_has_args_139, range(option_1, 8970, 256, 333, 341)).
method(m_set_args_140, range(option_1, 9232, 209, 343, 351)).
method(m_set_value_separator_141, range(option_1, 9447, 272, 353, 362)).
method(m_get_value_separator_142, range(option_1, 9725, 183, 364, 372)).
method(m_has_value_separator_143, range(option_1, 9914, 252, 374, 383)).
method(m_get_args_144, range(option_1, 10172, 201, 385, 393)).
method(m_add_value_for_processing_145, range(option_1, 10379, 378, 395, 410)).
method(m_process_value_146, range(option_1, 10763, 1353, 412, 456)).
method(m_add_147, range(option_1, 12122, 516, 458, 476)).
method(m_get_value_148, range(option_1, 12644, 325, 478, 488)).
method(m_get_value_149, range(option_1, 12975, 572, 490, 505)).
method(m_get_value_150, range(option_1, 13553, 488, 507, 522)).
method(m_get_values_151, range(option_1, 14047, 349, 524, 534)).
method(m_get_values_list_152, range(option_1, 14402, 167, 536, 543)).
method(m_to_string_153, range(option_1, 14575, 726, 545, 582)).
method(m_has_no_values_154, range(option_1, 15307, 199, 584, 592)).
method(m_equals_155, range(option_1, 15512, 523, 594, 618)).
method(m_hash_code_156, range(option_1, 16041, 202, 620, 626)).
method(m_clone_157, range(option_1, 16249, 765, 628, 650)).
method(m_clear_values_158, range(option_1, 17020, 303, 652, 661)).
method(m_add_value_159, range(option_1, 17329, 489, 663, 673)).
method(m_accepts_arg_160, range(option_1, 17824, 310, 675, 684)).
method(m_requires_arg_73, range(option_1, 18140, 446, 686, 706)).
%options_1 - org.apache.commons.cli.Options
method(m_add_option_group_167, range(options_1, 2153, 782, 63, 92)).
method(m_get_option_groups_62, range(options_1, 2941, 241, 94, 102)).
method(m_add_option_170, range(options_1, 3188, 529, 104, 118)).
method(m_add_option_171, range(options_1, 3723, 634, 120, 135)).
method(m_add_option_172, range(options_1, 4363, 717, 137, 166)).
method(m_get_options_174, range(options_1, 5086, 268, 168, 176)).
method(m_help_options_175, range(options_1, 5360, 195, 178, 186)).
method(m_get_required_options_60, range(options_1, 5561, 173, 188, 196)).
method(m_get_option_69, range(options_1, 5740, 512, 198, 215)).
method(m_get_matching_options_178, range(options_1, 6258, 736, 217, 241)).
method(m_has_option_179, range(options_1, 7000, 417, 243, 254)).
method(m_has_long_option_180, range(options_1, 7423, 400, 256, 268)).
method(m_has_short_option_181, range(options_1, 7829, 403, 270, 282)).
method(m_get_option_group_182, range(options_1, 8238, 377, 284, 294)).
method(m_to_string_183, range(options_1, 8621, 404, 296, 312)).
%util_1 - org.apache.commons.cli.Util
method(m_strip_leading_hyphens_42, range(util_1, 1014, 592, 28, 52)).
method(m_strip_leading_and_trailing_quotes_277, range(util_1, 1612, 647, 54, 72)).
%gnu_parser_test_1 - org.apache.commons.cli.GnuParserTest
method(m_set_up_95, range(gnu_parser_test_1, 893, 88, 22, 26)).
method(m_test_double_dash2_97, range(gnu_parser_test_1, 987, 100, 28, 31)).
method(m_test_long_without_equal_single_dash_98, range(gnu_parser_test_1, 1097, 115, 33, 36)).
method(m_test_ambiguous_long_without_equal_single_dash_99, range(gnu_parser_test_1, 1218, 124, 38, 41)).
method(m_test_negative_option_100, range(gnu_parser_test_1, 1348, 113, 43, 46)).
method(m_test_long_with_unexpected_argument1_101, range(gnu_parser_test_1, 1467, 117, 48, 51)).
method(m_test_long_with_unexpected_argument2_102, range(gnu_parser_test_1, 1590, 117, 53, 56)).
method(m_test_short_with_unexpected_argument_103, range(gnu_parser_test_1, 1713, 117, 58, 61)).
method(m_test_unambiguous_partial_long_option1_104, range(gnu_parser_test_1, 1836, 118, 63, 66)).
method(m_test_unambiguous_partial_long_option2_105, range(gnu_parser_test_1, 1960, 118, 68, 71)).
method(m_test_unambiguous_partial_long_option3_106, range(gnu_parser_test_1, 2084, 118, 73, 76)).
method(m_test_unambiguous_partial_long_option4_107, range(gnu_parser_test_1, 2208, 118, 78, 81)).
method(m_test_ambiguous_partial_long_option1_108, range(gnu_parser_test_1, 2332, 116, 83, 86)).
method(m_test_ambiguous_partial_long_option2_109, range(gnu_parser_test_1, 2454, 116, 88, 91)).
method(m_test_ambiguous_partial_long_option3_110, range(gnu_parser_test_1, 2575, 116, 93, 96)).
method(m_test_ambiguous_partial_long_option4_111, range(gnu_parser_test_1, 2697, 116, 98, 101)).
method(m_test_partial_long_option_single_dash_112, range(gnu_parser_test_1, 2819, 116, 103, 106)).
method(m_test_bursting_113, range(gnu_parser_test_1, 2941, 97, 108, 111)).
method(m_test_unrecognized_option_with_bursting_114, range(gnu_parser_test_1, 3044, 119, 113, 116)).
method(m_test_missing_arg_with_bursting_115, range(gnu_parser_test_1, 3169, 111, 118, 121)).
method(m_test_stop_bursting_116, range(gnu_parser_test_1, 3286, 101, 123, 126)).
method(m_test_stop_bursting2_117, range(gnu_parser_test_1, 3393, 102, 128, 131)).
%posix_parser_test_1 - org.apache.commons.cli.PosixParserTest
method(m_set_up_265, range(posix_parser_test_1, 971, 90, 27, 31)).
method(m_test_double_dash2_267, range(posix_parser_test_1, 1067, 102, 33, 36)).
method(m_test_long_without_equal_single_dash_268, range(posix_parser_test_1, 1179, 117, 38, 41)).
method(m_test_ambiguous_long_without_equal_single_dash_269, range(posix_parser_test_1, 1302, 126, 43, 46)).
method(m_test_negative_option_270, range(posix_parser_test_1, 1438, 115, 48, 51)).
method(m_test_long_with_unexpected_argument1_271, range(posix_parser_test_1, 1559, 118, 53, 56)).
method(m_test_long_with_equal_single_dash_272, range(posix_parser_test_1, 1683, 114, 58, 61)).
method(m_test_short_with_equal_273, range(posix_parser_test_1, 1803, 105, 63, 66)).
method(m_test_unambiguous_partial_long_option4_274, range(posix_parser_test_1, 1914, 120, 68, 71)).
method(m_test_ambiguous_partial_long_option4_275, range(posix_parser_test_1, 2040, 118, 73, 76)).
%default_parser_1 - org.apache.commons.cli.DefaultParser
method(m_parse_55, range(default_parser_1, 1894, 143, 57, 60)).
method(m_parse_56, range(default_parser_1, 2043, 620, 62, 76)).
method(m_parse_58, range(default_parser_1, 2669, 185, 78, 81)).
method(m_parse_57, range(default_parser_1, 2860, 1782, 83, 132)).
method(m_handle_properties_64, range(default_parser_1, 4648, 1570, 134, 178)).
method(m_check_required_options_72, range(default_parser_1, 6224, 490, 180, 194)).
method(m_check_required_args_63, range(default_parser_1, 6720, 357, 196, 206)).
method(m_handle_token_74, range(default_parser_1, 7083, 1050, 208, 247)).
method(m_is_argument_75, range(default_parser_1, 8139, 210, 249, 257)).
method(m_is_negative_number_76, range(default_parser_1, 8355, 332, 259, 275)).
method(m_is_option_77, range(default_parser_1, 8693, 202, 277, 285)).
method(m_is_short_option_78, range(default_parser_1, 8901, 319, 287, 296)).
method(m_is_long_option_79, range(default_parser_1, 9226, 706, 298, 325)).
method(m_handle_unknown_token_80, range(default_parser_1, 9938, 805, 327, 348)).
method(m_handle_long_option_81, range(default_parser_1, 10749, 468, 350, 370)).
method(m_handle_long_option_without_equal_82, range(default_parser_1, 11223, 657, 372, 397)).
method(m_handle_long_option_with_equal_83, range(default_parser_1, 11886, 1121, 399, 441)).
method(m_handle_short_and_long_option_84, range(default_parser_1, 13013, 3101, 443, 550)).
method(m_get_long_prefix_85, range(default_parser_1, 16120, 543, 552, 574)).
method(m_is_java_property_86, range(default_parser_1, 16669, 353, 576, 585)).
method(m_handle_option_87, range(default_parser_1, 17028, 481, 587, 606)).
method(m_update_required_options_88, range(default_parser_1, 17515, 698, 608, 632)).
method(m_handle_concatenated_options_89, range(default_parser_1, 18219, 2039, 634, 682)).
%basic_parser_test_1 - org.apache.commons.cli.BasicParserTest
method(m_set_up_2, range(basic_parser_test_1, 960, 90, 26, 30)).
method(m_test_double_dash2_5, range(basic_parser_test_1, 1056, 102, 32, 35)).
method(m_test_long_without_equal_single_dash_6, range(basic_parser_test_1, 1164, 117, 37, 40)).
method(m_test_ambiguous_long_without_equal_single_dash_7, range(basic_parser_test_1, 1291, 126, 42, 45)).
method(m_test_negative_option_8, range(basic_parser_test_1, 1427, 115, 47, 50)).
method(m_test_properties_option1_9, range(basic_parser_test_1, 1548, 108, 52, 55)).
method(m_test_properties_option2_10, range(basic_parser_test_1, 1662, 108, 57, 60)).
method(m_test_short_with_equal_11, range(basic_parser_test_1, 1780, 105, 62, 65)).
method(m_test_short_without_equal_12, range(basic_parser_test_1, 1891, 108, 67, 70)).
method(m_test_long_with_equal_double_dash_13, range(basic_parser_test_1, 2005, 114, 72, 75)).
method(m_test_long_with_equal_single_dash_14, range(basic_parser_test_1, 2125, 114, 77, 80)).
method(m_test_unambiguous_partial_long_option1_15, range(basic_parser_test_1, 2249, 120, 82, 85)).
method(m_test_unambiguous_partial_long_option2_16, range(basic_parser_test_1, 2375, 120, 87, 90)).
method(m_test_unambiguous_partial_long_option3_17, range(basic_parser_test_1, 2501, 120, 92, 95)).
method(m_test_unambiguous_partial_long_option4_18, range(basic_parser_test_1, 2627, 120, 97, 100)).
method(m_test_ambiguous_partial_long_option1_19, range(basic_parser_test_1, 2753, 118, 102, 105)).
method(m_test_ambiguous_partial_long_option2_20, range(basic_parser_test_1, 2877, 118, 107, 110)).
method(m_test_ambiguous_partial_long_option3_21, range(basic_parser_test_1, 3001, 118, 112, 115)).
method(m_test_ambiguous_partial_long_option4_22, range(basic_parser_test_1, 3125, 118, 117, 120)).
method(m_test_partial_long_option_single_dash_23, range(basic_parser_test_1, 3249, 118, 122, 125)).
method(m_test_bursting_24, range(basic_parser_test_1, 3373, 99, 127, 130)).
method(m_test_unrecognized_option_with_bursting_25, range(basic_parser_test_1, 3478, 121, 132, 135)).
method(m_test_missing_arg_with_bursting_26, range(basic_parser_test_1, 3605, 113, 137, 140)).
method(m_test_stop_bursting_27, range(basic_parser_test_1, 3724, 103, 142, 145)).
method(m_test_stop_bursting2_28, range(basic_parser_test_1, 3833, 104, 147, 150)).
%posix_parser_1 - org.apache.commons.cli.PosixParser
method(m_init_258, range(posix_parser_1, 1567, 252, 47, 56)).
method(m_flatten_260, range(posix_parser_1, 1825, 4985, 58, 178)).
method(m_gobble_261, range(posix_parser_1, 6816, 337, 180, 194)).
method(m_process_non_option_token_262, range(posix_parser_1, 7159, 544, 196, 212)).
method(m_process_option_token_263, range(posix_parser_1, 7709, 797, 214, 239)).
method(m_burst_token_264, range(posix_parser_1, 8512, 2111, 241, 296)).
%basic_parser_1 - org.apache.commons.cli.BasicParser
method(m_flatten_1, range(basic_parser_1, 1167, 748, 30, 47)).
%parser_1 - org.apache.commons.cli.Parser
method(m_set_options_184, range(parser_1, 1548, 168, 46, 50)).
method(m_get_options_185, range(parser_1, 1722, 66, 52, 55)).
method(m_get_required_options_186, range(parser_1, 1794, 79, 57, 60)).
method(m_flatten_187, range(parser_1, 1879, 565, 62, 72)).
method(m_parse_188, range(parser_1, 2450, 496, 74, 87)).
method(m_parse_189, range(parser_1, 2952, 661, 89, 104)).
method(m_parse_191, range(parser_1, 3619, 809, 106, 122)).
method(m_parse_190, range(parser_1, 4434, 3512, 124, 245)).
method(m_process_properties_194, range(parser_1, 7952, 1845, 247, 299)).
method(m_check_required_options_195, range(parser_1, 9803, 501, 301, 315)).
method(m_process_args_196, range(parser_1, 10310, 1262, 317, 359)).
method(m_process_option_197, range(parser_1, 11578, 1161, 361, 394)).
method(m_update_required_options_198, range(parser_1, 12745, 809, 396, 423)).

%%% Blocks
%gnu_parser_1 - org.apache.commons.cli.GnuParser
block(gnu_parser_1_block1, block, gnu_parser_1_code5, body, range(gnu_parser_1, 2165, 1949, 51, 113)).
%command_line_1 - org.apache.commons.cli.CommandLine
block(command_line_1_block1, block, command_line_1_code13, body, range(command_line_1, 1981, 32, 58, 60)).
block(command_line_1_block2, block, command_line_1_code14, body, range(command_line_1, 2215, 60, 69, 71)).
block(command_line_1_block3, block, command_line_1_code15, body, range(command_line_1, 5800, 417, 195, 212)).
%parser_test_case_1 - org.apache.commons.cli.ParserTestCase
block(parser_test_case_1_block1, block, parser_test_case_1_code3, body, range(parser_test_case_1, 30806, 372, 873, 881)).
block(parser_test_case_1_block2, block, parser_test_case_1_stmt1, then_statement, range(parser_test_case_1, 30846, 79, 874, 876)).
block(parser_test_case_1_block3, block, parser_test_case_1_stmt3, then_statement, range(parser_test_case_1, 30968, 86, 876, 878)).
block(parser_test_case_1_block4, block, parser_test_case_1_code6, body, range(parser_test_case_1, 35538, 365, 1003, 1015)).
block(parser_test_case_1_block5, block, parser_test_case_1_stmt5, body, range(parser_test_case_1, 35703, 120, 1009, 1012)).
%default_parser_test_1 - org.apache.commons.cli.DefaultParserTest
block(default_parser_test_1_block1, block, default_parser_test_1_code5, body, range(default_parser_test_1, 983, 68, 26, 29)).
%option_validator_1 - org.apache.commons.cli.OptionValidator
block(option_validator_1_block1, block, option_validator_1_code3, body, range(option_validator_1, 1653, 817, 46, 77)).
block(option_validator_1_block2, block, option_validator_1_stmt2, then_statement, range(option_validator_1, 1849, 198, 55, 62)).
block(option_validator_1_block3, block, option_validator_1_code6, body, range(option_validator_1, 2730, 62, 86, 88)).
block(option_validator_1_block4, block, option_validator_1_code7, body, range(option_validator_1, 3030, 57, 97, 99)).
%option_1 - org.apache.commons.cli.Option
block(option_1_block1, block, option_1_code16, body, range(option_1, 4364, 331, 122, 136)).
block(option_1_block2, block, option_1_stmt4, then_statement, range(option_1, 4602, 46, 131, 133)).
block(option_1_block3, block, option_1_code17, body, range(option_1, 5124, 157, 156, 164)).
block(option_1_block4, block, option_1_code18, body, range(option_1, 6178, 31, 207, 209)).
block(option_1_block5, block, option_1_code19, body, range(option_1, 7032, 39, 246, 248)).
block(option_1_block6, block, option_1_code20, body, range(option_1, 7990, 32, 287, 289)).
%options_1 - org.apache.commons.cli.Options
block(options_1_block1, block, options_1_code25, body, range(options_1, 3124, 58, 100, 102)).
block(options_1_block2, block, options_1_code27, body, range(options_1, 4262, 95, 131, 135)).
block(options_1_block3, block, options_1_code29, body, range(options_1, 4553, 527, 144, 166)).
block(options_1_block4, block, options_1_stmt5, then_statement, range(options_1, 4671, 60, 149, 151)).
block(options_1_block5, block, options_1_code32, body, range(options_1, 5498, 57, 184, 186)).
block(options_1_block6, block, options_1_code34, body, range(options_1, 5698, 36, 194, 196)).
block(options_1_block7, block, options_1_code35, body, range(options_1, 6047, 205, 206, 215)).
%util_1 - org.apache.commons.cli.Util
block(util_1_block1, block, util_1_code3, body, range(util_1, 1294, 312, 37, 52)).
%gnu_parser_test_1 - org.apache.commons.cli.GnuParserTest
block(gnu_parser_test_1_block1, block, gnu_parser_test_1_code5, body, range(gnu_parser_test_1, 917, 64, 23, 26)).
%posix_parser_test_1 - org.apache.commons.cli.PosixParserTest
block(posix_parser_test_1_block1, block, posix_parser_test_1_code5, body, range(posix_parser_test_1, 995, 66, 28, 31)).
%default_parser_1 - org.apache.commons.cli.DefaultParser
block(default_parser_1_block1, block, default_parser_1_code5, body, range(default_parser_1, 2595, 68, 74, 76)).
block(default_parser_1_block2, block, default_parser_1_code6, body, range(default_parser_1, 3723, 919, 99, 132)).
block(default_parser_1_block3, block, default_parser_1_code11, body, range(default_parser_1, 4892, 1326, 140, 178)).
block(default_parser_1_block4, block, default_parser_1_stmt13, body, range(default_parser_1, 5062, 1150, 147, 177)).
block(default_parser_1_block5, block, default_parser_1_stmt15, then_statement, range(default_parser_1, 5185, 1017, 151, 176)).
block(default_parser_1_block6, block, default_parser_1_code20, body, range(default_parser_1, 6921, 156, 201, 206)).
%basic_parser_test_1 - org.apache.commons.cli.BasicParserTest
block(basic_parser_test_1_block1, block, basic_parser_test_1_code5, body, range(basic_parser_test_1, 984, 66, 27, 30)).
%posix_parser_1 - org.apache.commons.cli.PosixParser
block(posix_parser_1_block1, block, posix_parser_1_code10, body, range(posix_parser_1, 1760, 59, 53, 56)).
block(posix_parser_1_block2, block, posix_parser_1_code11, body, range(posix_parser_1, 4064, 2746, 97, 178)).
%basic_parser_1 - org.apache.commons.cli.BasicParser
block(basic_parser_1_block1, block, basic_parser_1_code5, body, range(basic_parser_1, 1847, 68, 44, 47)).
%parser_1 - org.apache.commons.cli.Parser
block(parser_1_block1, block, parser_1_code6, body, range(parser_1, 1601, 115, 47, 50)).
block(parser_1_block2, block, parser_1_code8, body, range(parser_1, 1757, 31, 53, 55)).
block(parser_1_block3, block, parser_1_code9, body, range(parser_1, 3545, 68, 102, 104)).
block(parser_1_block4, block, parser_1_code10, body, range(parser_1, 5329, 2617, 145, 245)).
block(parser_1_block5, block, parser_1_stmt10, then_statement, range(parser_1, 6007, 50, 168, 170)).
block(parser_1_block6, block, parser_1_code25, body, range(parser_1, 8199, 1598, 253, 299)).
block(parser_1_block7, block, parser_1_stmt16, body, range(parser_1, 8361, 1430, 260, 298)).
block(parser_1_block8, block, parser_1_stmt18, then_statement, range(parser_1, 8484, 1297, 264, 297)).

%%% Statements
%gnu_parser_1 - org.apache.commons.cli.GnuParser
stmt(gnu_parser_1_stmt1, variable_declaration_statement, gnu_parser_1_block1, (statements, 0), range(gnu_parser_1, 2175, 30, 52, 52)).
stmt(gnu_parser_1_stmt2, variable_declaration_statement, gnu_parser_1_block1, (statements, 1), range(gnu_parser_1, 2215, 27, 54, 54)).
stmt(gnu_parser_1_stmt3, for_statement, gnu_parser_1_block1, (statements, 2), range(gnu_parser_1, 2252, 1786, 56, 110)).
stmt(gnu_parser_1_stmt4, return_statement, gnu_parser_1_block1, (statements, 3), range(gnu_parser_1, 4048, 60, 112, 112)).
%command_line_1 - org.apache.commons.cli.CommandLine
stmt(command_line_1_stmt1, return_statement, command_line_1_block2, (statements, 0), range(command_line_1, 2225, 44, 70, 70)).
stmt(command_line_1_stmt2, expression_statement, command_line_1_block3, (statements, 0), range(command_line_1, 5810, 36, 196, 196)).
stmt(command_line_1_stmt3, for_statement, command_line_1_block3, (statements, 1), range(command_line_1, 5855, 335, 197, 210)).
stmt(command_line_1_stmt4, return_statement, command_line_1_block3, (statements, 2), range(command_line_1, 6199, 12, 211, 211)).
%parser_test_case_1 - org.apache.commons.cli.ParserTestCase
stmt(parser_test_case_1_stmt1, if_statement, parser_test_case_1_block1, (statements, 0), range(parser_test_case_1, 30816, 356, 874, 880)).
stmt(parser_test_case_1_stmt2, return_statement, parser_test_case_1_block2, (statements, 0), range(parser_test_case_1, 30860, 55, 875, 875)).
stmt(parser_test_case_1_stmt3, if_statement, parser_test_case_1_stmt1, elseStatement, range(parser_test_case_1, 30931, 241, 876, 880)).
stmt(parser_test_case_1_stmt4, return_statement, parser_test_case_1_block3, (statements, 0), range(parser_test_case_1, 30982, 62, 877, 877)).
stmt(parser_test_case_1_stmt5, try_statement, parser_test_case_1_block4, (statements, 3), range(parser_test_case_1, 35699, 198, 1009, 1014)).
stmt(parser_test_case_1_stmt6, expression_statement, parser_test_case_1_block5, (statements, 0), range(parser_test_case_1, 35717, 38, 1010, 1010)).
%default_parser_test_1 - org.apache.commons.cli.DefaultParserTest
stmt(default_parser_test_1_stmt1, expression_statement, default_parser_test_1_block1, (statements, 0), range(default_parser_test_1, 993, 14, 27, 27)).
stmt(default_parser_test_1_stmt2, expression_statement, default_parser_test_1_block1, (statements, 1), range(default_parser_test_1, 1016, 29, 28, 28)).
%option_validator_1 - org.apache.commons.cli.OptionValidator
stmt(option_validator_1_stmt1, if_statement, option_validator_1_block1, (statements, 0), range(option_validator_1, 1701, 56, 48, 51)).
stmt(option_validator_1_stmt2, if_statement, option_validator_1_block1, (statements, 1), range(option_validator_1, 1818, 646, 54, 76)).
stmt(option_validator_1_stmt3, variable_declaration_statement, option_validator_1_block2, (statements, 0), range(option_validator_1, 1863, 24, 56, 56)).
stmt(option_validator_1_stmt4, if_statement, option_validator_1_block2, (statements, 1), range(option_validator_1, 1901, 136, 58, 61)).
stmt(option_validator_1_stmt5, return_statement, option_validator_1_block3, (statements, 0), range(option_validator_1, 2740, 46, 87, 87)).
stmt(option_validator_1_stmt6, return_statement, option_validator_1_block4, (statements, 0), range(option_validator_1, 3040, 41, 98, 98)).
%option_1 - org.apache.commons.cli.Option
stmt(option_1_stmt1, expression_statement, option_1_block1, (statements, 0), range(option_1, 4417, 36, 124, 124)).
stmt(option_1_stmt2, expression_statement, option_1_block1, (statements, 1), range(option_1, 4463, 15, 126, 126)).
stmt(option_1_stmt3, expression_statement, option_1_block1, (statements, 2), range(option_1, 4487, 23, 127, 127)).
stmt(option_1_stmt4, if_statement, option_1_block1, (statements, 3), range(option_1, 4582, 66, 130, 133)).
stmt(option_1_stmt5, expression_statement, option_1_block2, (statements, 0), range(option_1, 4616, 22, 132, 132)).
stmt(option_1_stmt6, expression_statement, option_1_block1, (statements, 4), range(option_1, 4658, 31, 135, 135)).
stmt(option_1_stmt7, if_statement, option_1_block3, (statements, 0), range(option_1, 5190, 64, 158, 161)).
stmt(option_1_stmt8, return_statement, option_1_block3, (statements, 1), range(option_1, 5264, 11, 163, 163)).
stmt(option_1_stmt9, return_statement, option_1_block4, (statements, 0), range(option_1, 6188, 15, 208, 208)).
stmt(option_1_stmt10, return_statement, option_1_block5, (statements, 0), range(option_1, 7042, 23, 247, 247)).
stmt(option_1_stmt11, return_statement, option_1_block6, (statements, 0), range(option_1, 8000, 16, 288, 288)).
%options_1 - org.apache.commons.cli.Options
stmt(options_1_stmt1, return_statement, options_1_block1, (statements, 0), range(options_1, 3134, 42, 101, 101)).
stmt(options_1_stmt2, expression_statement, options_1_block2, (statements, 0), range(options_1, 4272, 57, 132, 132)).
stmt(options_1_stmt3, return_statement, options_1_block2, (statements, 1), range(options_1, 4339, 12, 134, 134)).
stmt(options_1_stmt4, variable_declaration_statement, options_1_block3, (statements, 0), range(options_1, 4563, 26, 145, 145)).
stmt(options_1_stmt5, if_statement, options_1_block3, (statements, 1), range(options_1, 4641, 90, 148, 151)).
stmt(options_1_stmt6, expression_statement, options_1_block4, (statements, 0), range(options_1, 4685, 36, 150, 150)).
stmt(options_1_stmt7, if_statement, options_1_block3, (statements, 2), range(options_1, 4806, 212, 154, 161)).
stmt(options_1_stmt8, expression_statement, options_1_block3, (statements, 3), range(options_1, 5028, 24, 163, 163)).
stmt(options_1_stmt9, return_statement, options_1_block3, (statements, 4), range(options_1, 5062, 12, 165, 165)).
stmt(options_1_stmt10, return_statement, options_1_block5, (statements, 0), range(options_1, 5508, 41, 185, 185)).
stmt(options_1_stmt11, return_statement, options_1_block6, (statements, 0), range(options_1, 5708, 20, 195, 195)).
stmt(options_1_stmt12, expression_statement, options_1_block7, (statements, 0), range(options_1, 6057, 36, 207, 207)).
stmt(options_1_stmt13, if_statement, options_1_block7, (statements, 1), range(options_1, 6103, 99, 209, 212)).
stmt(options_1_stmt14, return_statement, options_1_block7, (statements, 2), range(options_1, 6212, 34, 214, 214)).
%util_1 - org.apache.commons.cli.Util
stmt(util_1_stmt1, if_statement, util_1_block1, (statements, 0), range(util_1, 1304, 61, 38, 41)).
stmt(util_1_stmt2, if_statement, util_1_block1, (statements, 1), range(util_1, 1374, 205, 42, 49)).
stmt(util_1_stmt3, if_statement, util_1_stmt2, elseStatement, range(util_1, 1484, 95, 46, 49)).
stmt(util_1_stmt4, return_statement, util_1_block1, (statements, 2), range(util_1, 1589, 11, 51, 51)).
%gnu_parser_test_1 - org.apache.commons.cli.GnuParserTest
stmt(gnu_parser_test_1_stmt1, expression_statement, gnu_parser_test_1_block1, (statements, 0), range(gnu_parser_test_1, 927, 14, 24, 24)).
stmt(gnu_parser_test_1_stmt2, expression_statement, gnu_parser_test_1_block1, (statements, 1), range(gnu_parser_test_1, 950, 25, 25, 25)).
%posix_parser_test_1 - org.apache.commons.cli.PosixParserTest
stmt(posix_parser_test_1_stmt1, expression_statement, posix_parser_test_1_block1, (statements, 0), range(posix_parser_test_1, 1005, 14, 29, 29)).
stmt(posix_parser_test_1_stmt2, expression_statement, posix_parser_test_1_block1, (statements, 1), range(posix_parser_test_1, 1028, 27, 30, 30)).
%default_parser_1 - org.apache.commons.cli.DefaultParser
stmt(default_parser_1_stmt1, return_statement, default_parser_1_block1, (statements, 0), range(default_parser_1, 2605, 52, 75, 75)).
stmt(default_parser_1_stmt2, expression_statement, default_parser_1_block2, (statements, 0), range(default_parser_1, 3733, 23, 100, 100)).
stmt(default_parser_1_stmt3, expression_statement, default_parser_1_block2, (statements, 1), range(default_parser_1, 3765, 39, 101, 101)).
stmt(default_parser_1_stmt4, expression_statement, default_parser_1_block2, (statements, 2), range(default_parser_1, 3813, 20, 102, 102)).
stmt(default_parser_1_stmt5, expression_statement, default_parser_1_block2, (statements, 3), range(default_parser_1, 3842, 21, 103, 103)).
stmt(default_parser_1_stmt6, expression_statement, default_parser_1_block2, (statements, 4), range(default_parser_1, 3872, 59, 104, 104)).
stmt(default_parser_1_stmt7, for_statement, default_parser_1_block2, (statements, 5), range(default_parser_1, 3991, 185, 107, 111)).
stmt(default_parser_1_stmt8, expression_statement, default_parser_1_block2, (statements, 6), range(default_parser_1, 4194, 24, 113, 113)).
stmt(default_parser_1_stmt9, if_statement, default_parser_1_block2, (statements, 7), range(default_parser_1, 4228, 168, 115, 121)).
stmt(default_parser_1_stmt10, expression_statement, default_parser_1_block2, (statements, 8), range(default_parser_1, 4464, 20, 124, 124)).
stmt(default_parser_1_stmt11, expression_statement, default_parser_1_block2, (statements, 9), range(default_parser_1, 4537, 29, 127, 127)).
stmt(default_parser_1_stmt12, if_statement, default_parser_1_block3, (statements, 0), range(default_parser_1, 4902, 63, 141, 144)).
stmt(default_parser_1_stmt13, for_statement, default_parser_1_block3, (statements, 1), range(default_parser_1, 4983, 1229, 146, 177)).
stmt(default_parser_1_stmt14, variable_declaration_statement, default_parser_1_block4, (statements, 0), range(default_parser_1, 5076, 43, 148, 148)).
stmt(default_parser_1_stmt15, if_statement, default_parser_1_block4, (statements, 1), range(default_parser_1, 5145, 1057, 150, 176)).
stmt(default_parser_1_stmt16, variable_declaration_statement, default_parser_1_block5, (statements, 0), range(default_parser_1, 5203, 39, 152, 152)).
stmt(default_parser_1_stmt17, variable_declaration_statement, default_parser_1_block5, (statements, 1), range(default_parser_1, 5442, 46, 157, 157)).
stmt(default_parser_1_stmt18, if_statement, default_parser_1_block5, (statements, 2), range(default_parser_1, 5522, 576, 159, 172)).
stmt(default_parser_1_stmt19, if_statement, default_parser_1_block6, (statements, 0), range(default_parser_1, 6931, 140, 202, 205)).
%basic_parser_test_1 - org.apache.commons.cli.BasicParserTest
stmt(basic_parser_test_1_stmt1, expression_statement, basic_parser_test_1_block1, (statements, 0), range(basic_parser_test_1, 994, 14, 28, 28)).
stmt(basic_parser_test_1_stmt2, expression_statement, basic_parser_test_1_block1, (statements, 1), range(basic_parser_test_1, 1017, 27, 29, 29)).
%posix_parser_1 - org.apache.commons.cli.PosixParser
stmt(posix_parser_1_stmt1, expression_statement, posix_parser_1_block1, (statements, 0), range(posix_parser_1, 1770, 19, 54, 54)).
stmt(posix_parser_1_stmt2, expression_statement, posix_parser_1_block1, (statements, 1), range(posix_parser_1, 1798, 15, 55, 55)).
stmt(posix_parser_1_stmt3, expression_statement, posix_parser_1_block2, (statements, 0), range(posix_parser_1, 4074, 7, 98, 98)).
stmt(posix_parser_1_stmt4, expression_statement, posix_parser_1_block2, (statements, 1), range(posix_parser_1, 4090, 23, 99, 99)).
stmt(posix_parser_1_stmt5, variable_declaration_statement, posix_parser_1_block2, (statements, 2), range(posix_parser_1, 4174, 52, 102, 102)).
stmt(posix_parser_1_stmt6, while_statement, posix_parser_1_block2, (statements, 3), range(posix_parser_1, 4279, 2455, 105, 175)).
stmt(posix_parser_1_stmt7, return_statement, posix_parser_1_block2, (statements, 4), range(posix_parser_1, 6744, 60, 177, 177)).
%basic_parser_1 - org.apache.commons.cli.BasicParser
stmt(basic_parser_1_stmt1, return_statement, basic_parser_1_block1, (statements, 0), range(basic_parser_1, 1892, 17, 46, 46)).
%parser_1 - org.apache.commons.cli.Parser
stmt(parser_1_stmt1, expression_statement, parser_1_block1, (statements, 0), range(parser_1, 1611, 23, 48, 48)).
stmt(parser_1_stmt2, expression_statement, parser_1_block1, (statements, 1), range(parser_1, 1643, 67, 49, 49)).
stmt(parser_1_stmt3, return_statement, parser_1_block2, (statements, 0), range(parser_1, 1767, 15, 54, 54)).
stmt(parser_1_stmt4, return_statement, parser_1_block3, (statements, 0), range(parser_1, 3555, 52, 103, 103)).
stmt(parser_1_stmt5, for_statement, parser_1_block4, (statements, 0), range(parser_1, 5419, 163, 147, 151)).
stmt(parser_1_stmt6, for_statement, parser_1_block4, (statements, 1), range(parser_1, 5642, 185, 154, 158)).
stmt(parser_1_stmt7, expression_statement, parser_1_block4, (statements, 2), range(parser_1, 5875, 20, 161, 161)).
stmt(parser_1_stmt8, expression_statement, parser_1_block4, (statements, 3), range(parser_1, 5905, 24, 163, 163)).
stmt(parser_1_stmt9, variable_declaration_statement, parser_1_block4, (statements, 4), range(parser_1, 5939, 27, 165, 165)).
stmt(parser_1_stmt10, if_statement, parser_1_block4, (statements, 5), range(parser_1, 5976, 81, 167, 170)).
stmt(parser_1_stmt11, expression_statement, parser_1_block5, (statements, 0), range(parser_1, 6021, 26, 169, 169)).
stmt(parser_1_stmt12, variable_declaration_statement, parser_1_block4, (statements, 6), range(parser_1, 6067, 82, 172, 172)).
stmt(parser_1_stmt13, variable_declaration_statement, parser_1_block4, (statements, 7), range(parser_1, 6159, 49, 174, 174)).
stmt(parser_1_stmt14, expression_statement, parser_1_block4, (statements, 9), range(parser_1, 7857, 30, 241, 241)).
stmt(parser_1_stmt15, if_statement, parser_1_block6, (statements, 0), range(parser_1, 8209, 63, 254, 257)).
stmt(parser_1_stmt16, for_statement, parser_1_block6, (statements, 1), range(parser_1, 8282, 1509, 259, 298)).
stmt(parser_1_stmt17, variable_declaration_statement, parser_1_block7, (statements, 0), range(parser_1, 8375, 43, 261, 261)).
stmt(parser_1_stmt18, if_statement, parser_1_block7, (statements, 1), range(parser_1, 8444, 1337, 263, 297)).
stmt(parser_1_stmt19, variable_declaration_statement, parser_1_block8, (statements, 0), range(parser_1, 8502, 44, 265, 265)).
stmt(parser_1_stmt20, variable_declaration_statement, parser_1_block8, (statements, 1), range(parser_1, 8755, 46, 270, 270)).
stmt(parser_1_stmt21, if_statement, parser_1_block8, (statements, 2), range(parser_1, 8819, 867, 272, 293)).

%%% Expressions
%gnu_parser_1 - org.apache.commons.cli.GnuParser
expr(gnu_parser_1_expr1, class_instance_creation, gnu_parser_1_code7, initializer, range(gnu_parser_1, 2189, 15, 52, 52), "new ArrayList()").
expr(gnu_parser_1_expr2, variable_declaration_expression, gnu_parser_1_stmt3, (initializers, 0), range(gnu_parser_1, 2257, 9, 56, 56), "int i=0").
expr(gnu_parser_1_expr3, infix_expression, gnu_parser_1_stmt3, expression, range(gnu_parser_1, 2268, 20, 56, 56), "i < arguments.length").
expr(gnu_parser_1_expr4, postfix_expression, gnu_parser_1_stmt3, (updaters, 0), range(gnu_parser_1, 2290, 3, 56, 56), "i++").
expr(gnu_parser_1_expr5, cast_expression, gnu_parser_1_stmt4, expression, range(gnu_parser_1, 4055, 52, 112, 112), "(String[])tokens.toArray(new String[tokens.size()])").
expr(gnu_parser_1_expr6, method_invocation, gnu_parser_1_expr5, expression, range(gnu_parser_1, 4066, 41, 112, 112), "tokens.toArray(new String[tokens.size()])").
expr(gnu_parser_1_expr7, array_creation, gnu_parser_1_expr6, (arguments, 0), range(gnu_parser_1, 4081, 25, 112, 112), "new String[tokens.size()]").
expr(gnu_parser_1_expr8, method_invocation, gnu_parser_1_expr7, (dimensions, 0), range(gnu_parser_1, 4092, 13, 112, 112), "tokens.size()").
%command_line_1 - org.apache.commons.cli.CommandLine
expr(command_line_1_expr1, class_instance_creation, command_line_1_code6, initializer, range(command_line_1, 1815, 16, 49, 49), "new LinkedList()").
expr(command_line_1_expr2, class_instance_creation, command_line_1_code11, initializer, range(command_line_1, 1894, 15, 52, 52), "new ArrayList()").
expr(command_line_1_expr3, method_invocation, command_line_1_stmt1, expression, range(command_line_1, 2232, 36, 70, 70), "options.contains(resolveOption(opt))").
expr(command_line_1_expr4, method_invocation, command_line_1_expr3, (arguments, 0), range(command_line_1, 2249, 18, 70, 70), "resolveOption(opt)").
expr(command_line_1_expr5, assignment, command_line_1_stmt2, expression, range(command_line_1, 5810, 35, 196, 196), "opt=Util.stripLeadingHyphens(opt)").
expr(command_line_1_expr6, method_invocation, command_line_1_expr5, right_hand_side, range(command_line_1, 5816, 29, 196, 196), "Util.stripLeadingHyphens(opt)").
expr(command_line_1_expr7, variable_declaration_expression, command_line_1_stmt3, (initializers, 0), range(command_line_1, 5860, 32, 197, 197), "Iterator it=options.iterator()").
expr(command_line_1_expr8, method_invocation, command_line_1_code17, initializer, range(command_line_1, 5874, 18, 197, 197), "options.iterator()").
expr(command_line_1_expr9, method_invocation, command_line_1_stmt3, expression, range(command_line_1, 5894, 12, 197, 197), "it.hasNext()").
%parser_test_case_1 - org.apache.commons.cli.ParserTestCase
expr(parser_test_case_1_expr1, method_invocation, parser_test_case_1_stmt2, expression, range(parser_test_case_1, 30867, 47, 875, 875), "((Parser)parser).parse(opts,args,properties)").
expr(parser_test_case_1_expr2, parenthesized_expression, parser_test_case_1_expr1, expression, range(parser_test_case_1, 30867, 17, 875, 875), "((Parser)parser)").
expr(parser_test_case_1_expr3, cast_expression, parser_test_case_1_expr2, expression, range(parser_test_case_1, 30868, 15, 875, 875), "(Parser)parser").
expr(parser_test_case_1_expr4, method_invocation, parser_test_case_1_stmt4, expression, range(parser_test_case_1, 30989, 54, 877, 877), "((DefaultParser)parser).parse(opts,args,properties)").
expr(parser_test_case_1_expr5, parenthesized_expression, parser_test_case_1_expr4, expression, range(parser_test_case_1, 30989, 24, 877, 877), "((DefaultParser)parser)").
expr(parser_test_case_1_expr6, cast_expression, parser_test_case_1_expr5, expression, range(parser_test_case_1, 30990, 22, 877, 877), "(DefaultParser)parser").
expr(parser_test_case_1_expr7, method_invocation, parser_test_case_1_stmt6, expression, range(parser_test_case_1, 35717, 37, 1010, 1010), "parse(parser,opts,null,properties)").
%default_parser_test_1 - org.apache.commons.cli.DefaultParserTest
expr(default_parser_test_1_expr1, super_method_invocation, default_parser_test_1_stmt1, expression, range(default_parser_test_1, 993, 13, 27, 27), "super.setUp()").
expr(default_parser_test_1_expr2, assignment, default_parser_test_1_stmt2, expression, range(default_parser_test_1, 1016, 28, 28, 28), "parser=new DefaultParser()").
expr(default_parser_test_1_expr3, class_instance_creation, default_parser_test_1_expr2, right_hand_side, range(default_parser_test_1, 1025, 19, 28, 28), "new DefaultParser()").
%option_validator_1 - org.apache.commons.cli.OptionValidator
expr(option_validator_1_expr1, infix_expression, option_validator_1_stmt1, expression, range(option_validator_1, 1705, 11, 48, 48), "opt == null").
expr(option_validator_1_expr3, method_invocation, option_validator_1_expr2, left_operand, range(option_validator_1, 1822, 12, 54, 54), "opt.length()").
expr(option_validator_1_expr2, infix_expression, option_validator_1_stmt2, expression, range(option_validator_1, 1822, 17, 54, 54), "opt.length() == 1").
expr(option_validator_1_expr4, method_invocation, option_validator_1_code5, initializer, range(option_validator_1, 1873, 13, 56, 56), "opt.charAt(0)").
expr(option_validator_1_expr5, prefix_expression, option_validator_1_stmt4, expression, range(option_validator_1, 1905, 15, 58, 58), "!isValidOpt(ch)").
expr(option_validator_1_expr6, method_invocation, option_validator_1_expr5, operand, range(option_validator_1, 1906, 14, 58, 58), "isValidOpt(ch)").
expr(option_validator_1_expr7, infix_expression, option_validator_1_stmt5, expression, range(option_validator_1, 2747, 38, 87, 87), "isValidChar(c) || c == '?' || c == '@'").
expr(option_validator_1_expr9, method_invocation, option_validator_1_expr8, left_operand, range(option_validator_1, 2747, 14, 87, 87), "isValidChar(c)").
expr(option_validator_1_expr8, infix_expression, option_validator_1_expr7, left_operand, range(option_validator_1, 2747, 26, 87, 87), "isValidChar(c) || c == '?'").
expr(option_validator_1_expr10, infix_expression, option_validator_1_expr8, right_operand, range(option_validator_1, 2765, 8, 87, 87), "c == '?'").
expr(option_validator_1_expr11, infix_expression, option_validator_1_expr7, right_operand, range(option_validator_1, 2777, 8, 87, 87), "c == '@'").
expr(option_validator_1_expr12, method_invocation, option_validator_1_stmt6, expression, range(option_validator_1, 3047, 33, 98, 98), "Character.isJavaIdentifierPart(c)").
%option_1 - org.apache.commons.cli.Option
expr(option_1_expr1, class_instance_creation, option_1_code14, initializer, range(option_1, 2681, 15, 75, 75), "new ArrayList()").
expr(option_1_expr2, method_invocation, option_1_stmt1, expression, range(option_1, 4417, 35, 124, 124), "OptionValidator.validateOption(opt)").
expr(option_1_expr5, this_expression, f_opt_84, expression, range(option_1, 4463, 4, 126, 126), "this").
expr(option_1_expr3, assignment, option_1_stmt2, expression, range(option_1, 4463, 14, 126, 126), "this.opt=opt").
expr(option_1_expr4, field_access, option_1_expr3, left_hand_side, range(option_1, 4463, 8, 126, 126), "this.opt").
expr(option_1_expr7, field_access, option_1_expr6, left_hand_side, range(option_1, 4487, 12, 127, 127), "this.longOpt").
expr(option_1_expr8, this_expression, f_long_opt_85, expression, range(option_1, 4487, 4, 127, 127), "this").
expr(option_1_expr6, assignment, option_1_stmt3, expression, range(option_1, 4487, 22, 127, 127), "this.longOpt=longOpt").
expr(option_1_expr9, assignment, option_1_stmt5, expression, range(option_1, 4616, 21, 132, 132), "this.numberOfArgs=1").
expr(option_1_expr11, this_expression, f_number_of_args_72, expression, range(option_1, 4616, 4, 132, 132), "this").
expr(option_1_expr10, field_access, option_1_expr9, left_hand_side, range(option_1, 4616, 17, 132, 132), "this.numberOfArgs").
expr(option_1_expr14, this_expression, f_description_86, expression, range(option_1, 4658, 4, 135, 135), "this").
expr(option_1_expr13, field_access, option_1_expr12, left_hand_side, range(option_1, 4658, 16, 135, 135), "this.description").
expr(option_1_expr12, assignment, option_1_stmt6, expression, range(option_1, 4658, 30, 135, 135), "this.description=description").
expr(option_1_expr15, infix_expression, option_1_stmt7, expression, range(option_1, 5194, 11, 158, 158), "opt == null").
expr(option_1_expr16, infix_expression, option_1_stmt10, expression, range(option_1, 7049, 15, 247, 247), "longOpt != null").
%options_1 - org.apache.commons.cli.Options
expr(options_1_expr1, class_instance_creation, options_1_code8, initializer, range(options_1, 1864, 13, 52, 52), "new HashMap()").
expr(options_1_expr2, class_instance_creation, options_1_code13, initializer, range(options_1, 1957, 13, 55, 55), "new HashMap()").
expr(options_1_expr3, class_instance_creation, options_1_code18, initializer, range(options_1, 2046, 15, 58, 58), "new ArrayList()").
expr(options_1_expr4, class_instance_creation, options_1_code23, initializer, range(options_1, 2133, 13, 61, 61), "new HashMap()").
expr(options_1_expr5, class_instance_creation, options_1_stmt1, expression, range(options_1, 3141, 34, 101, 101), "new HashSet(optionGroups.values())").
expr(options_1_expr6, method_invocation, options_1_expr5, (arguments, 0), range(options_1, 3153, 21, 101, 101), "optionGroups.values()").
expr(options_1_expr7, method_invocation, options_1_stmt2, expression, range(options_1, 4272, 56, 132, 132), "addOption(new Option(opt,longOpt,hasArg,description))").
expr(options_1_expr8, class_instance_creation, options_1_expr7, (arguments, 0), range(options_1, 4282, 45, 132, 132), "new Option(opt,longOpt,hasArg,description)").
expr(options_1_expr9, this_expression, options_1_stmt3, expression, range(options_1, 4346, 4, 134, 134), "this").
expr(options_1_expr10, method_invocation, options_1_code31, initializer, range(options_1, 4576, 12, 145, 145), "opt.getKey()").
expr(options_1_expr11, method_invocation, options_1_stmt5, expression, range(options_1, 4645, 16, 148, 148), "opt.hasLongOpt()").
expr(options_1_expr12, method_invocation, options_1_stmt6, expression, range(options_1, 4685, 35, 150, 150), "longOpts.put(opt.getLongOpt(),opt)").
expr(options_1_expr13, method_invocation, options_1_expr12, (arguments, 0), range(options_1, 4698, 16, 150, 150), "opt.getLongOpt()").
expr(options_1_expr14, method_invocation, options_1_stmt7, expression, range(options_1, 4810, 16, 154, 154), "opt.isRequired()").
expr(options_1_expr15, method_invocation, options_1_stmt8, expression, range(options_1, 5028, 23, 163, 163), "shortOpts.put(key,opt)").
expr(options_1_expr16, this_expression, options_1_stmt9, expression, range(options_1, 5069, 4, 165, 165), "this").
expr(options_1_expr17, class_instance_creation, options_1_stmt10, expression, range(options_1, 5515, 33, 185, 185), "new ArrayList(shortOpts.values())").
expr(options_1_expr18, method_invocation, options_1_expr17, (arguments, 0), range(options_1, 5529, 18, 185, 185), "shortOpts.values()").
expr(options_1_expr19, assignment, options_1_stmt12, expression, range(options_1, 6057, 35, 207, 207), "opt=Util.stripLeadingHyphens(opt)").
expr(options_1_expr20, method_invocation, options_1_expr19, right_hand_side, range(options_1, 6063, 29, 207, 207), "Util.stripLeadingHyphens(opt)").
expr(options_1_expr21, method_invocation, options_1_stmt13, expression, range(options_1, 6107, 26, 209, 209), "shortOpts.containsKey(opt)").
expr(options_1_expr22, cast_expression, options_1_stmt14, expression, range(options_1, 6219, 26, 214, 214), "(Option)longOpts.get(opt)").
expr(options_1_expr23, method_invocation, options_1_expr22, expression, range(options_1, 6228, 17, 214, 214), "longOpts.get(opt)").
%util_1 - org.apache.commons.cli.Util
expr(util_1_expr1, infix_expression, util_1_stmt1, expression, range(util_1, 1308, 11, 38, 38), "str == null").
expr(util_1_expr2, method_invocation, util_1_stmt2, expression, range(util_1, 1378, 20, 42, 42), "str.startsWith(\"--\")").
expr(util_1_expr3, method_invocation, util_1_stmt3, expression, range(util_1, 1488, 19, 46, 46), "str.startsWith(\"-\")").
%gnu_parser_test_1 - org.apache.commons.cli.GnuParserTest
expr(gnu_parser_test_1_expr1, super_method_invocation, gnu_parser_test_1_stmt1, expression, range(gnu_parser_test_1, 927, 13, 24, 24), "super.setUp()").
expr(gnu_parser_test_1_expr2, assignment, gnu_parser_test_1_stmt2, expression, range(gnu_parser_test_1, 950, 24, 25, 25), "parser=new GnuParser()").
expr(gnu_parser_test_1_expr3, class_instance_creation, gnu_parser_test_1_expr2, right_hand_side, range(gnu_parser_test_1, 959, 15, 25, 25), "new GnuParser()").
%posix_parser_test_1 - org.apache.commons.cli.PosixParserTest
expr(posix_parser_test_1_expr1, super_method_invocation, posix_parser_test_1_stmt1, expression, range(posix_parser_test_1, 1005, 13, 29, 29), "super.setUp()").
expr(posix_parser_test_1_expr2, assignment, posix_parser_test_1_stmt2, expression, range(posix_parser_test_1, 1028, 26, 30, 30), "parser=new PosixParser()").
expr(posix_parser_test_1_expr3, class_instance_creation, posix_parser_test_1_expr2, right_hand_side, range(posix_parser_test_1, 1037, 17, 30, 30), "new PosixParser()").
%default_parser_1 - org.apache.commons.cli.DefaultParser
expr(default_parser_1_expr1, method_invocation, default_parser_1_stmt1, expression, range(default_parser_1, 2612, 44, 75, 75), "parse(options,arguments,properties,false)").
expr(default_parser_1_expr2, assignment, default_parser_1_stmt2, expression, range(default_parser_1, 3733, 22, 100, 100), "this.options=options").
expr(default_parser_1_expr3, field_access, default_parser_1_expr2, left_hand_side, range(default_parser_1, 3733, 12, 100, 100), "this.options").
expr(default_parser_1_expr4, this_expression, f_options_37, expression, range(default_parser_1, 3733, 4, 100, 100), "this").
expr(default_parser_1_expr5, assignment, default_parser_1_stmt3, expression, range(default_parser_1, 3765, 38, 101, 101), "this.stopAtNonOption=stopAtNonOption").
expr(default_parser_1_expr6, field_access, default_parser_1_expr5, left_hand_side, range(default_parser_1, 3765, 20, 101, 101), "this.stopAtNonOption").
expr(default_parser_1_expr7, this_expression, f_stop_at_non_option_38, expression, range(default_parser_1, 3765, 4, 101, 101), "this").
expr(default_parser_1_expr8, assignment, default_parser_1_stmt4, expression, range(default_parser_1, 3813, 19, 102, 102), "skipParsing=false").
expr(default_parser_1_expr9, assignment, default_parser_1_stmt5, expression, range(default_parser_1, 3842, 20, 103, 103), "currentOption=null").
expr(default_parser_1_expr10, assignment, default_parser_1_stmt6, expression, range(default_parser_1, 3872, 58, 104, 104), "expectedOpts=new ArrayList(options.getRequiredOptions())").
expr(default_parser_1_expr11, class_instance_creation, default_parser_1_expr10, right_hand_side, range(default_parser_1, 3887, 43, 104, 104), "new ArrayList(options.getRequiredOptions())").
expr(default_parser_1_expr12, method_invocation, default_parser_1_expr11, (arguments, 0), range(default_parser_1, 3901, 28, 104, 104), "options.getRequiredOptions()").
expr(default_parser_1_expr13, variable_declaration_expression, default_parser_1_stmt7, (initializers, 0), range(default_parser_1, 3996, 50, 107, 107), "Iterator it=options.getOptionGroups().iterator()").
expr(default_parser_1_expr15, method_invocation, default_parser_1_expr14, expression, range(default_parser_1, 4010, 25, 107, 107), "options.getOptionGroups()").
expr(default_parser_1_expr14, method_invocation, default_parser_1_code9, initializer, range(default_parser_1, 4010, 36, 107, 107), "options.getOptionGroups().iterator()").
expr(default_parser_1_expr16, method_invocation, default_parser_1_stmt7, expression, range(default_parser_1, 4048, 12, 107, 107), "it.hasNext()").
expr(default_parser_1_expr17, assignment, default_parser_1_stmt8, expression, range(default_parser_1, 4194, 23, 113, 113), "cmd=new CommandLine()").
expr(default_parser_1_expr18, class_instance_creation, default_parser_1_expr17, right_hand_side, range(default_parser_1, 4200, 17, 113, 113), "new CommandLine()").
expr(default_parser_1_expr19, infix_expression, default_parser_1_stmt9, expression, range(default_parser_1, 4232, 17, 115, 115), "arguments != null").
expr(default_parser_1_expr20, method_invocation, default_parser_1_stmt10, expression, range(default_parser_1, 4464, 19, 124, 124), "checkRequiredArgs()").
expr(default_parser_1_expr21, method_invocation, default_parser_1_stmt11, expression, range(default_parser_1, 4537, 28, 127, 127), "handleProperties(properties)").
expr(default_parser_1_expr22, infix_expression, default_parser_1_stmt12, expression, range(default_parser_1, 4906, 18, 141, 141), "properties == null").
expr(default_parser_1_expr23, variable_declaration_expression, default_parser_1_stmt13, (initializers, 0), range(default_parser_1, 4988, 42, 146, 146), "Enumeration e=properties.propertyNames()").
expr(default_parser_1_expr24, method_invocation, default_parser_1_code13, initializer, range(default_parser_1, 5004, 26, 146, 146), "properties.propertyNames()").
expr(default_parser_1_expr25, method_invocation, default_parser_1_stmt13, expression, range(default_parser_1, 5032, 19, 146, 146), "e.hasMoreElements()").
expr(default_parser_1_expr27, method_invocation, default_parser_1_expr26, expression, range(default_parser_1, 5092, 15, 148, 148), "e.nextElement()").
expr(default_parser_1_expr26, method_invocation, default_parser_1_code15, initializer, range(default_parser_1, 5092, 26, 148, 148), "e.nextElement().toString()").
expr(default_parser_1_expr28, prefix_expression, default_parser_1_stmt15, expression, range(default_parser_1, 5149, 22, 150, 150), "!cmd.hasOption(option)").
expr(default_parser_1_expr29, method_invocation, default_parser_1_expr28, operand, range(default_parser_1, 5150, 21, 150, 150), "cmd.hasOption(option)").
expr(default_parser_1_expr30, method_invocation, default_parser_1_code17, initializer, range(default_parser_1, 5216, 25, 152, 152), "options.getOption(option)").
expr(default_parser_1_expr31, method_invocation, default_parser_1_code19, initializer, range(default_parser_1, 5457, 30, 157, 157), "properties.getProperty(option)").
expr(default_parser_1_expr32, method_invocation, default_parser_1_stmt18, expression, range(default_parser_1, 5526, 12, 159, 159), "opt.hasArg()").
expr(default_parser_1_expr34, infix_expression, default_parser_1_expr33, left_operand, range(default_parser_1, 6935, 21, 202, 202), "currentOption != null").
expr(default_parser_1_expr33, infix_expression, default_parser_1_stmt19, expression, range(default_parser_1, 6935, 52, 202, 202), "currentOption != null && currentOption.requiresArg()").
expr(default_parser_1_expr35, method_invocation, default_parser_1_expr33, right_operand, range(default_parser_1, 6960, 27, 202, 202), "currentOption.requiresArg()").
%basic_parser_test_1 - org.apache.commons.cli.BasicParserTest
expr(basic_parser_test_1_expr1, super_method_invocation, basic_parser_test_1_stmt1, expression, range(basic_parser_test_1, 994, 13, 28, 28), "super.setUp()").
expr(basic_parser_test_1_expr2, assignment, basic_parser_test_1_stmt2, expression, range(basic_parser_test_1, 1017, 26, 29, 29), "parser=new BasicParser()").
expr(basic_parser_test_1_expr3, class_instance_creation, basic_parser_test_1_expr2, right_hand_side, range(basic_parser_test_1, 1026, 17, 29, 29), "new BasicParser()").
%posix_parser_1 - org.apache.commons.cli.PosixParser
expr(posix_parser_1_expr1, class_instance_creation, posix_parser_1_code8, initializer, range(posix_parser_1, 1321, 15, 36, 36), "new ArrayList()").
expr(posix_parser_1_expr2, assignment, posix_parser_1_stmt1, expression, range(posix_parser_1, 1770, 18, 54, 54), "eatTheRest=false").
expr(posix_parser_1_expr3, method_invocation, posix_parser_1_stmt2, expression, range(posix_parser_1, 1798, 14, 55, 55), "tokens.clear()").
expr(posix_parser_1_expr4, method_invocation, posix_parser_1_stmt3, expression, range(posix_parser_1, 4074, 6, 98, 98), "init()").
expr(posix_parser_1_expr5, assignment, posix_parser_1_stmt4, expression, range(posix_parser_1, 4090, 22, 99, 99), "this.options=options").
expr(posix_parser_1_expr6, field_access, posix_parser_1_expr5, left_hand_side, range(posix_parser_1, 4090, 12, 99, 99), "this.options").
expr(posix_parser_1_expr7, this_expression, f_options_172, expression, range(posix_parser_1, 4090, 4, 99, 99), "this").
expr(posix_parser_1_expr8, method_invocation, posix_parser_1_code13, initializer, range(posix_parser_1, 4190, 35, 102, 102), "Arrays.asList(arguments).iterator()").
expr(posix_parser_1_expr9, method_invocation, posix_parser_1_expr8, expression, range(posix_parser_1, 4190, 24, 102, 102), "Arrays.asList(arguments)").
expr(posix_parser_1_expr10, method_invocation, posix_parser_1_stmt6, expression, range(posix_parser_1, 4286, 14, 105, 105), "iter.hasNext()").
expr(posix_parser_1_expr11, cast_expression, posix_parser_1_stmt7, expression, range(posix_parser_1, 6751, 52, 177, 177), "(String[])tokens.toArray(new String[tokens.size()])").
expr(posix_parser_1_expr12, method_invocation, posix_parser_1_expr11, expression, range(posix_parser_1, 6762, 41, 177, 177), "tokens.toArray(new String[tokens.size()])").
expr(posix_parser_1_expr13, array_creation, posix_parser_1_expr12, (arguments, 0), range(posix_parser_1, 6777, 25, 177, 177), "new String[tokens.size()]").
expr(posix_parser_1_expr14, method_invocation, posix_parser_1_expr13, (dimensions, 0), range(posix_parser_1, 6788, 13, 177, 177), "tokens.size()").
%basic_parser_1 - org.apache.commons.cli.BasicParser
%parser_1 - org.apache.commons.cli.Parser
expr(parser_1_expr3, this_expression, f_options_128, expression, range(parser_1, 1611, 4, 48, 48), "this").
expr(parser_1_expr2, field_access, parser_1_expr1, left_hand_side, range(parser_1, 1611, 12, 48, 48), "this.options").
expr(parser_1_expr1, assignment, parser_1_stmt1, expression, range(parser_1, 1611, 22, 48, 48), "this.options=options").
expr(parser_1_expr7, this_expression, f_required_options_129, expression, range(parser_1, 1643, 4, 49, 49), "this").
expr(parser_1_expr4, assignment, parser_1_stmt2, expression, range(parser_1, 1643, 66, 49, 49), "this.requiredOptions=new ArrayList(options.getRequiredOptions())").
expr(parser_1_expr5, field_access, parser_1_expr4, left_hand_side, range(parser_1, 1643, 20, 49, 49), "this.requiredOptions").
expr(parser_1_expr6, class_instance_creation, parser_1_expr4, right_hand_side, range(parser_1, 1666, 43, 49, 49), "new ArrayList(options.getRequiredOptions())").
expr(parser_1_expr8, method_invocation, parser_1_expr6, (arguments, 0), range(parser_1, 1680, 28, 49, 49), "options.getRequiredOptions()").
expr(parser_1_expr9, method_invocation, parser_1_stmt4, expression, range(parser_1, 3562, 44, 103, 103), "parse(options,arguments,properties,false)").
expr(parser_1_expr10, variable_declaration_expression, parser_1_stmt5, (initializers, 0), range(parser_1, 5424, 46, 147, 147), "Iterator it=options.helpOptions().iterator()").
expr(parser_1_expr12, method_invocation, parser_1_expr11, expression, range(parser_1, 5438, 21, 147, 147), "options.helpOptions()").
expr(parser_1_expr11, method_invocation, parser_1_code12, initializer, range(parser_1, 5438, 32, 147, 147), "options.helpOptions().iterator()").
expr(parser_1_expr13, method_invocation, parser_1_stmt5, expression, range(parser_1, 5472, 12, 147, 147), "it.hasNext()").
expr(parser_1_expr14, variable_declaration_expression, parser_1_stmt6, (initializers, 0), range(parser_1, 5647, 50, 154, 154), "Iterator it=options.getOptionGroups().iterator()").
expr(parser_1_expr15, method_invocation, parser_1_code14, initializer, range(parser_1, 5661, 36, 154, 154), "options.getOptionGroups().iterator()").
expr(parser_1_expr16, method_invocation, parser_1_expr15, expression, range(parser_1, 5661, 25, 154, 154), "options.getOptionGroups()").
expr(parser_1_expr17, method_invocation, parser_1_stmt6, expression, range(parser_1, 5699, 12, 154, 154), "it.hasNext()").
expr(parser_1_expr18, method_invocation, parser_1_stmt7, expression, range(parser_1, 5875, 19, 161, 161), "setOptions(options)").
expr(parser_1_expr19, assignment, parser_1_stmt8, expression, range(parser_1, 5905, 23, 163, 163), "cmd=new CommandLine()").
expr(parser_1_expr20, class_instance_creation, parser_1_expr19, right_hand_side, range(parser_1, 5911, 17, 163, 163), "new CommandLine()").
expr(parser_1_expr21, infix_expression, parser_1_stmt10, expression, range(parser_1, 5980, 17, 167, 167), "arguments == null").
expr(parser_1_expr22, assignment, parser_1_stmt11, expression, range(parser_1, 6021, 25, 169, 169), "arguments=new String[0]").
expr(parser_1_expr23, array_creation, parser_1_expr22, right_hand_side, range(parser_1, 6033, 13, 169, 169), "new String[0]").
expr(parser_1_expr24, method_invocation, parser_1_code22, initializer, range(parser_1, 6084, 64, 172, 172), "Arrays.asList(flatten(getOptions(),arguments,stopAtNonOption))").
expr(parser_1_expr25, method_invocation, parser_1_expr24, (arguments, 0), range(parser_1, 6098, 49, 172, 172), "flatten(getOptions(),arguments,stopAtNonOption)").
expr(parser_1_expr26, method_invocation, parser_1_expr25, (arguments, 0), range(parser_1, 6106, 12, 172, 172), "getOptions()").
expr(parser_1_expr27, method_invocation, parser_1_code24, initializer, range(parser_1, 6183, 24, 174, 174), "tokenList.listIterator()").
expr(parser_1_expr28, method_invocation, parser_1_stmt14, expression, range(parser_1, 7857, 29, 241, 241), "processProperties(properties)").
expr(parser_1_expr29, infix_expression, parser_1_stmt15, expression, range(parser_1, 8213, 18, 254, 254), "properties == null").
expr(parser_1_expr30, variable_declaration_expression, parser_1_stmt16, (initializers, 0), range(parser_1, 8287, 42, 259, 259), "Enumeration e=properties.propertyNames()").
expr(parser_1_expr31, method_invocation, parser_1_code27, initializer, range(parser_1, 8303, 26, 259, 259), "properties.propertyNames()").
expr(parser_1_expr32, method_invocation, parser_1_stmt16, expression, range(parser_1, 8331, 19, 259, 259), "e.hasMoreElements()").
expr(parser_1_expr34, method_invocation, parser_1_expr33, expression, range(parser_1, 8391, 15, 261, 261), "e.nextElement()").
expr(parser_1_expr33, method_invocation, parser_1_code29, initializer, range(parser_1, 8391, 26, 261, 261), "e.nextElement().toString()").
expr(parser_1_expr35, prefix_expression, parser_1_stmt18, expression, range(parser_1, 8448, 22, 263, 263), "!cmd.hasOption(option)").
expr(parser_1_expr36, method_invocation, parser_1_expr35, operand, range(parser_1, 8449, 21, 263, 263), "cmd.hasOption(option)").
expr(parser_1_expr37, method_invocation, parser_1_code31, initializer, range(parser_1, 8515, 30, 265, 265), "getOptions().getOption(option)").
expr(parser_1_expr38, method_invocation, parser_1_expr37, expression, range(parser_1, 8515, 12, 265, 265), "getOptions()").
expr(parser_1_expr39, method_invocation, parser_1_code33, initializer, range(parser_1, 8770, 30, 270, 270), "properties.getProperty(option)").
expr(parser_1_expr40, method_invocation, parser_1_stmt21, expression, range(parser_1, 8823, 12, 272, 272), "opt.hasArg()").

%%% Names
%gnu_parser_1 - org.apache.commons.cli.GnuParser
name(t_gnu_parser_6, simple_name, gnu_parser_1_code2, name, range(gnu_parser_1, 1175, 9, 31, 31), 'GnuParser').
name(v_tokens_68, simple_name, gnu_parser_1_code7, name, range(gnu_parser_1, 2180, 6, 52, 52), 'tokens').
name(v_eat_the_rest_69, simple_name, gnu_parser_1_code10, name, range(gnu_parser_1, 2223, 10, 54, 54), 'eatTheRest').
name(v_i_70, simple_name, gnu_parser_1_code12, name, range(gnu_parser_1, 2261, 1, 56, 56), 'i').
name(v_i_70, simple_name, gnu_parser_1_expr3, left_operand, range(gnu_parser_1, 2268, 1, 56, 56), 'i').
name(p_arguments_66, simple_name, q_length_1, qualifier, range(gnu_parser_1, 2272, 9, 56, 56), 'arguments').
name(q_length_1, qualified_name, gnu_parser_1_expr3, right_operand, range(gnu_parser_1, 2272, 16, 56, 56), 'arguments.length').
name(v_i_70, simple_name, gnu_parser_1_expr4, operand, range(gnu_parser_1, 2290, 1, 56, 56), 'i').
name(v_tokens_68, simple_name, gnu_parser_1_expr6, expression, range(gnu_parser_1, 4066, 6, 112, 112), 'tokens').
name(m_to_array_93, simple_name, gnu_parser_1_expr6, name, range(gnu_parser_1, 4073, 7, 112, 112), 'toArray').
name(v_tokens_68, simple_name, gnu_parser_1_expr8, expression, range(gnu_parser_1, 4092, 6, 112, 112), 'tokens').
name(m_size_94, simple_name, gnu_parser_1_expr8, name, range(gnu_parser_1, 4099, 4, 112, 112), 'size').
%command_line_1 - org.apache.commons.cli.CommandLine
name(f_args_5, simple_name, command_line_1_code6, name, range(command_line_1, 1808, 4, 49, 49), 'args').
name(f_options_6, simple_name, command_line_1_code11, name, range(command_line_1, 1884, 7, 52, 52), 'options').
name(f_options_6, simple_name, command_line_1_expr3, expression, range(command_line_1, 2232, 7, 70, 70), 'options').
name(m_contains_33, simple_name, command_line_1_expr3, name, range(command_line_1, 2240, 8, 70, 70), 'contains').
name(m_resolve_option_34, simple_name, command_line_1_expr4, name, range(command_line_1, 2249, 13, 70, 70), 'resolveOption').
name(p_opt_7, simple_name, command_line_1_expr4, (arguments, 0), range(command_line_1, 2263, 3, 70, 70), 'opt').
name(p_opt_15, simple_name, command_line_1_expr5, left_hand_side, range(command_line_1, 5810, 3, 196, 196), 'opt').
name(t_util_3, simple_name, command_line_1_expr6, expression, range(command_line_1, 5816, 4, 196, 196), 'Util').
name(m_strip_leading_hyphens_42, simple_name, command_line_1_expr6, name, range(command_line_1, 5821, 19, 196, 196), 'stripLeadingHyphens').
name(p_opt_15, simple_name, command_line_1_expr6, (arguments, 0), range(command_line_1, 5841, 3, 196, 196), 'opt').
name(v_it_16, simple_name, command_line_1_code17, name, range(command_line_1, 5869, 2, 197, 197), 'it').
name(f_options_6, simple_name, command_line_1_expr8, expression, range(command_line_1, 5874, 7, 197, 197), 'options').
name(m_iterator_43, simple_name, command_line_1_expr8, name, range(command_line_1, 5882, 8, 197, 197), 'iterator').
name(v_it_16, simple_name, command_line_1_expr9, expression, range(command_line_1, 5894, 2, 197, 197), 'it').
name(m_has_next_44, simple_name, command_line_1_expr9, name, range(command_line_1, 5897, 7, 197, 197), 'hasNext').
%parser_test_case_1 - org.apache.commons.cli.ParserTestCase
name(p_parser_161, simple_name, parser_test_case_1_expr3, expression, range(parser_test_case_1, 30877, 6, 875, 875), 'parser').
name(m_parse_189, simple_name, parser_test_case_1_expr1, name, range(parser_test_case_1, 30885, 5, 875, 875), 'parse').
name(p_opts_162, simple_name, parser_test_case_1_expr1, (arguments, 0), range(parser_test_case_1, 30891, 4, 875, 875), 'opts').
name(p_args_163, simple_name, parser_test_case_1_expr1, (arguments, 1), range(parser_test_case_1, 30897, 4, 875, 875), 'args').
name(p_properties_164, simple_name, parser_test_case_1_expr1, (arguments, 2), range(parser_test_case_1, 30903, 10, 875, 875), 'properties').
name(p_parser_161, simple_name, parser_test_case_1_expr6, expression, range(parser_test_case_1, 31006, 6, 877, 877), 'parser').
name(m_parse_56, simple_name, parser_test_case_1_expr4, name, range(parser_test_case_1, 31014, 5, 877, 877), 'parse').
name(p_opts_162, simple_name, parser_test_case_1_expr4, (arguments, 0), range(parser_test_case_1, 31020, 4, 877, 877), 'opts').
name(p_args_163, simple_name, parser_test_case_1_expr4, (arguments, 1), range(parser_test_case_1, 31026, 4, 877, 877), 'args').
name(p_properties_164, simple_name, parser_test_case_1_expr4, (arguments, 2), range(parser_test_case_1, 31032, 10, 877, 877), 'properties').
name(m_parse_250, simple_name, parser_test_case_1_expr7, name, range(parser_test_case_1, 35717, 5, 1010, 1010), 'parse').
name(f_parser_4, simple_name, parser_test_case_1_expr7, (arguments, 0), range(parser_test_case_1, 35723, 6, 1010, 1010), 'parser').
name(v_opts_165, simple_name, parser_test_case_1_expr7, (arguments, 1), range(parser_test_case_1, 35731, 4, 1010, 1010), 'opts').
name(v_properties_166, simple_name, parser_test_case_1_expr7, (arguments, 3), range(parser_test_case_1, 35743, 10, 1010, 1010), 'properties').
%default_parser_test_1 - org.apache.commons.cli.DefaultParserTest
name(t_default_parser_test_5, simple_name, default_parser_test_1_code2, name, range(default_parser_test_1, 915, 17, 24, 24), 'DefaultParserTest').
name(m_set_up_3, simple_name, default_parser_test_1_expr1, name, range(default_parser_test_1, 999, 5, 27, 27), 'setUp').
name(f_parser_4, simple_name, default_parser_test_1_expr2, left_hand_side, range(default_parser_test_1, 1016, 6, 28, 28), 'parser').
%option_validator_1 - org.apache.commons.cli.OptionValidator
name(p_opt_103, simple_name, option_validator_1_expr1, left_operand, range(option_validator_1, 1705, 3, 48, 48), 'opt').
name(p_opt_103, simple_name, option_validator_1_expr3, expression, range(option_validator_1, 1822, 3, 54, 54), 'opt').
name(m_length_161, simple_name, option_validator_1_expr3, name, range(option_validator_1, 1826, 6, 54, 54), 'length').
name(v_ch_104, simple_name, option_validator_1_code5, name, range(option_validator_1, 1868, 2, 56, 56), 'ch').
name(p_opt_103, simple_name, option_validator_1_expr4, expression, range(option_validator_1, 1873, 3, 56, 56), 'opt').
name(m_char_at_162, simple_name, option_validator_1_expr4, name, range(option_validator_1, 1877, 6, 56, 56), 'charAt').
name(m_is_valid_opt_163, simple_name, option_validator_1_expr6, name, range(option_validator_1, 1906, 10, 58, 58), 'isValidOpt').
name(v_ch_104, simple_name, option_validator_1_expr6, (arguments, 0), range(option_validator_1, 1917, 2, 58, 58), 'ch').
name(m_is_valid_char_164, simple_name, option_validator_1_expr9, name, range(option_validator_1, 2747, 11, 87, 87), 'isValidChar').
name(p_c_105, simple_name, option_validator_1_expr9, (arguments, 0), range(option_validator_1, 2759, 1, 87, 87), 'c').
name(p_c_105, simple_name, option_validator_1_expr10, left_operand, range(option_validator_1, 2765, 1, 87, 87), 'c').
name(p_c_105, simple_name, option_validator_1_expr11, left_operand, range(option_validator_1, 2777, 1, 87, 87), 'c').
name(t_character_9, simple_name, option_validator_1_expr12, expression, range(option_validator_1, 3047, 9, 98, 98), 'Character').
name(m_is_java_identifier_part_165, simple_name, option_validator_1_expr12, name, range(option_validator_1, 3057, 20, 98, 98), 'isJavaIdentifierPart').
name(p_c_106, simple_name, option_validator_1_expr12, (arguments, 0), range(option_validator_1, 3078, 1, 98, 98), 'c').
%option_1 - org.apache.commons.cli.Option
name(f_arg_name_71, simple_name, option_1_code6, name, range(option_1, 2150, 7, 57, 57), 'argName').
name(f_number_of_args_72, simple_name, option_1_code10, name, range(option_1, 2523, 12, 69, 69), 'numberOfArgs').
name(f_uninitialized_73, simple_name, option_1_code10, initializer, range(option_1, 2538, 13, 69, 69), 'UNINITIALIZED').
name(f_values_74, simple_name, option_1_code14, name, range(option_1, 2672, 6, 75, 75), 'values').
name(t_option_validator_8, simple_name, option_1_expr2, expression, range(option_1, 4417, 15, 124, 124), 'OptionValidator').
name(m_validate_option_121, simple_name, option_1_expr2, name, range(option_1, 4433, 14, 124, 124), 'validateOption').
name(p_opt_80, simple_name, option_1_expr2, (arguments, 0), range(option_1, 4448, 3, 124, 124), 'opt').
name(f_opt_84, simple_name, option_1_expr4, name, range(option_1, 4468, 3, 126, 126), 'opt').
name(p_opt_80, simple_name, option_1_expr3, right_hand_side, range(option_1, 4474, 3, 126, 126), 'opt').
name(f_long_opt_85, simple_name, option_1_expr7, name, range(option_1, 4492, 7, 127, 127), 'longOpt').
name(p_long_opt_81, simple_name, option_1_expr6, right_hand_side, range(option_1, 4502, 7, 127, 127), 'longOpt').
name(p_has_arg_82, simple_name, option_1_stmt4, expression, range(option_1, 4586, 6, 130, 130), 'hasArg').
name(f_number_of_args_72, simple_name, option_1_expr10, name, range(option_1, 4621, 12, 132, 132), 'numberOfArgs').
name(f_description_86, simple_name, option_1_expr13, name, range(option_1, 4663, 11, 135, 135), 'description').
name(p_description_83, simple_name, option_1_expr12, right_hand_side, range(option_1, 4677, 11, 135, 135), 'description').
name(f_opt_84, simple_name, option_1_expr15, left_operand, range(option_1, 5194, 3, 158, 158), 'opt').
name(f_opt_84, simple_name, option_1_stmt8, expression, range(option_1, 5271, 3, 163, 163), 'opt').
name(f_long_opt_85, simple_name, option_1_stmt9, expression, range(option_1, 6195, 7, 208, 208), 'longOpt').
name(f_long_opt_85, simple_name, option_1_expr16, left_operand, range(option_1, 7049, 7, 247, 247), 'longOpt').
name(f_required_91, simple_name, option_1_stmt11, expression, range(option_1, 8007, 8, 288, 288), 'required').
%options_1 - org.apache.commons.cli.Options
name(t_options_10, simple_name, options_1_code2, name, range(options_1, 1658, 7, 46, 46), 'Options').
name(f_short_opts_107, simple_name, options_1_code8, name, range(options_1, 1852, 9, 52, 52), 'shortOpts').
name(f_long_opts_108, simple_name, options_1_code13, name, range(options_1, 1946, 8, 55, 55), 'longOpts').
name(f_required_opts_109, simple_name, options_1_code18, name, range(options_1, 2031, 12, 58, 58), 'requiredOpts').
name(f_option_groups_110, simple_name, options_1_code23, name, range(options_1, 2118, 12, 61, 61), 'optionGroups').
name(f_option_groups_110, simple_name, options_1_expr6, expression, range(options_1, 3153, 12, 101, 101), 'optionGroups').
name(m_values_169, simple_name, options_1_expr6, name, range(options_1, 3166, 6, 101, 101), 'values').
name(m_add_option_172, simple_name, options_1_expr7, name, range(options_1, 4272, 9, 132, 132), 'addOption').
name(p_opt_115, simple_name, options_1_expr8, (arguments, 0), range(options_1, 4293, 3, 132, 132), 'opt').
name(p_long_opt_116, simple_name, options_1_expr8, (arguments, 1), range(options_1, 4298, 7, 132, 132), 'longOpt').
name(p_has_arg_117, simple_name, options_1_expr8, (arguments, 2), range(options_1, 4307, 6, 132, 132), 'hasArg').
name(p_description_118, simple_name, options_1_expr8, (arguments, 3), range(options_1, 4315, 11, 132, 132), 'description').
name(v_key_120, simple_name, options_1_code31, name, range(options_1, 4570, 3, 145, 145), 'key').
name(p_opt_119, simple_name, options_1_expr10, expression, range(options_1, 4576, 3, 145, 145), 'opt').
name(m_get_key_123, simple_name, options_1_expr10, name, range(options_1, 4580, 6, 145, 145), 'getKey').
name(p_opt_119, simple_name, options_1_expr11, expression, range(options_1, 4645, 3, 148, 148), 'opt').
name(m_has_long_opt_131, simple_name, options_1_expr11, name, range(options_1, 4649, 10, 148, 148), 'hasLongOpt').
name(f_long_opts_108, simple_name, options_1_expr12, expression, range(options_1, 4685, 8, 150, 150), 'longOpts').
name(m_put_173, simple_name, options_1_expr12, name, range(options_1, 4694, 3, 150, 150), 'put').
name(p_opt_119, simple_name, options_1_expr13, expression, range(options_1, 4698, 3, 150, 150), 'opt').
name(m_get_long_opt_127, simple_name, options_1_expr13, name, range(options_1, 4702, 10, 150, 150), 'getLongOpt').
name(p_opt_119, simple_name, options_1_expr12, (arguments, 1), range(options_1, 4716, 3, 150, 150), 'opt').
name(p_opt_119, simple_name, options_1_expr14, expression, range(options_1, 4810, 3, 154, 154), 'opt').
name(m_is_required_134, simple_name, options_1_expr14, name, range(options_1, 4814, 10, 154, 154), 'isRequired').
name(f_short_opts_107, simple_name, options_1_expr15, expression, range(options_1, 5028, 9, 163, 163), 'shortOpts').
name(m_put_173, simple_name, options_1_expr15, name, range(options_1, 5038, 3, 163, 163), 'put').
name(v_key_120, simple_name, options_1_expr15, (arguments, 0), range(options_1, 5042, 3, 163, 163), 'key').
name(p_opt_119, simple_name, options_1_expr15, (arguments, 1), range(options_1, 5047, 3, 163, 163), 'opt').
name(f_short_opts_107, simple_name, options_1_expr18, expression, range(options_1, 5529, 9, 185, 185), 'shortOpts').
name(m_values_169, simple_name, options_1_expr18, name, range(options_1, 5539, 6, 185, 185), 'values').
name(f_required_opts_109, simple_name, options_1_stmt11, expression, range(options_1, 5715, 12, 195, 195), 'requiredOpts').
name(p_opt_121, simple_name, options_1_expr19, left_hand_side, range(options_1, 6057, 3, 207, 207), 'opt').
name(t_util_3, simple_name, options_1_expr20, expression, range(options_1, 6063, 4, 207, 207), 'Util').
name(m_strip_leading_hyphens_42, simple_name, options_1_expr20, name, range(options_1, 6068, 19, 207, 207), 'stripLeadingHyphens').
name(p_opt_121, simple_name, options_1_expr20, (arguments, 0), range(options_1, 6088, 3, 207, 207), 'opt').
name(f_short_opts_107, simple_name, options_1_expr21, expression, range(options_1, 6107, 9, 209, 209), 'shortOpts').
name(m_contains_key_176, simple_name, options_1_expr21, name, range(options_1, 6117, 11, 209, 209), 'containsKey').
name(p_opt_121, simple_name, options_1_expr21, (arguments, 0), range(options_1, 6129, 3, 209, 209), 'opt').
name(f_long_opts_108, simple_name, options_1_expr23, expression, range(options_1, 6228, 8, 214, 214), 'longOpts').
name(m_get_177, simple_name, options_1_expr23, name, range(options_1, 6237, 3, 214, 214), 'get').
name(p_opt_121, simple_name, options_1_expr23, (arguments, 0), range(options_1, 6241, 3, 214, 214), 'opt').
%util_1 - org.apache.commons.cli.Util
name(p_str_181, simple_name, util_1_expr1, left_operand, range(util_1, 1308, 3, 38, 38), 'str').
name(p_str_181, simple_name, util_1_expr2, expression, range(util_1, 1378, 3, 42, 42), 'str').
name(m_starts_with_276, simple_name, util_1_expr2, name, range(util_1, 1382, 10, 42, 42), 'startsWith').
name(p_str_181, simple_name, util_1_expr3, expression, range(util_1, 1488, 3, 46, 46), 'str').
name(m_starts_with_276, simple_name, util_1_expr3, name, range(util_1, 1492, 10, 46, 46), 'startsWith').
name(p_str_181, simple_name, util_1_stmt4, expression, range(util_1, 1596, 3, 51, 51), 'str').
%gnu_parser_test_1 - org.apache.commons.cli.GnuParserTest
name(t_gnu_parser_test_7, simple_name, gnu_parser_test_1_code2, name, range(gnu_parser_test_1, 850, 13, 20, 20), 'GnuParserTest').
name(m_set_up_3, simple_name, gnu_parser_test_1_expr1, name, range(gnu_parser_test_1, 933, 5, 24, 24), 'setUp').
name(f_parser_4, simple_name, gnu_parser_test_1_expr2, left_hand_side, range(gnu_parser_test_1, 950, 6, 25, 25), 'parser').
%posix_parser_test_1 - org.apache.commons.cli.PosixParserTest
name(t_posix_parser_test_14, simple_name, posix_parser_test_1_code2, name, range(posix_parser_test_1, 926, 15, 25, 25), 'PosixParserTest').
name(m_set_up_3, simple_name, posix_parser_test_1_expr1, name, range(posix_parser_test_1, 1011, 5, 29, 29), 'setUp').
name(f_parser_4, simple_name, posix_parser_test_1_expr2, left_hand_side, range(posix_parser_test_1, 1028, 6, 30, 30), 'parser').
%default_parser_1 - org.apache.commons.cli.DefaultParser
name(t_default_parser_4, simple_name, default_parser_1_code2, name, range(default_parser_1, 1090, 13, 33, 33), 'DefaultParser').
name(m_parse_57, simple_name, default_parser_1_expr1, name, range(default_parser_1, 2612, 5, 75, 75), 'parse').
name(p_options_27, simple_name, default_parser_1_expr1, (arguments, 0), range(default_parser_1, 2618, 7, 75, 75), 'options').
name(p_arguments_28, simple_name, default_parser_1_expr1, (arguments, 1), range(default_parser_1, 2627, 9, 75, 75), 'arguments').
name(p_properties_29, simple_name, default_parser_1_expr1, (arguments, 2), range(default_parser_1, 2638, 10, 75, 75), 'properties').
name(f_options_37, simple_name, default_parser_1_expr3, name, range(default_parser_1, 3738, 7, 100, 100), 'options').
name(p_options_33, simple_name, default_parser_1_expr2, right_hand_side, range(default_parser_1, 3748, 7, 100, 100), 'options').
name(f_stop_at_non_option_38, simple_name, default_parser_1_expr6, name, range(default_parser_1, 3770, 15, 101, 101), 'stopAtNonOption').
name(p_stop_at_non_option_36, simple_name, default_parser_1_expr5, right_hand_side, range(default_parser_1, 3788, 15, 101, 101), 'stopAtNonOption').
name(f_skip_parsing_39, simple_name, default_parser_1_expr8, left_hand_side, range(default_parser_1, 3813, 11, 102, 102), 'skipParsing').
name(f_current_option_40, simple_name, default_parser_1_expr9, left_hand_side, range(default_parser_1, 3842, 13, 103, 103), 'currentOption').
name(f_expected_opts_41, simple_name, default_parser_1_expr10, left_hand_side, range(default_parser_1, 3872, 12, 104, 104), 'expectedOpts').
name(p_options_33, simple_name, default_parser_1_expr12, expression, range(default_parser_1, 3901, 7, 104, 104), 'options').
name(m_get_required_options_60, simple_name, default_parser_1_expr12, name, range(default_parser_1, 3909, 18, 104, 104), 'getRequiredOptions').
name(v_it_42, simple_name, default_parser_1_code9, name, range(default_parser_1, 4005, 2, 107, 107), 'it').
name(p_options_33, simple_name, default_parser_1_expr15, expression, range(default_parser_1, 4010, 7, 107, 107), 'options').
name(m_get_option_groups_62, simple_name, default_parser_1_expr15, name, range(default_parser_1, 4018, 15, 107, 107), 'getOptionGroups').
name(m_iterator_61, simple_name, default_parser_1_expr14, name, range(default_parser_1, 4036, 8, 107, 107), 'iterator').
name(v_it_42, simple_name, default_parser_1_expr16, expression, range(default_parser_1, 4048, 2, 107, 107), 'it').
name(m_has_next_44, simple_name, default_parser_1_expr16, name, range(default_parser_1, 4051, 7, 107, 107), 'hasNext').
name(f_cmd_43, simple_name, default_parser_1_expr17, left_hand_side, range(default_parser_1, 4194, 3, 113, 113), 'cmd').
name(p_arguments_34, simple_name, default_parser_1_expr19, left_operand, range(default_parser_1, 4232, 9, 115, 115), 'arguments').
name(m_check_required_args_63, simple_name, default_parser_1_expr20, name, range(default_parser_1, 4464, 17, 124, 124), 'checkRequiredArgs').
name(m_handle_properties_64, simple_name, default_parser_1_expr21, name, range(default_parser_1, 4537, 16, 127, 127), 'handleProperties').
name(p_properties_35, simple_name, default_parser_1_expr21, (arguments, 0), range(default_parser_1, 4554, 10, 127, 127), 'properties').
name(p_properties_44, simple_name, default_parser_1_expr22, left_operand, range(default_parser_1, 4906, 10, 141, 141), 'properties').
name(v_e_45, simple_name, default_parser_1_code13, name, range(default_parser_1, 5000, 1, 146, 146), 'e').
name(p_properties_44, simple_name, default_parser_1_expr24, expression, range(default_parser_1, 5004, 10, 146, 146), 'properties').
name(m_property_names_65, simple_name, default_parser_1_expr24, name, range(default_parser_1, 5015, 13, 146, 146), 'propertyNames').
name(v_e_45, simple_name, default_parser_1_expr25, expression, range(default_parser_1, 5032, 1, 146, 146), 'e').
name(m_has_more_elements_66, simple_name, default_parser_1_expr25, name, range(default_parser_1, 5034, 15, 146, 146), 'hasMoreElements').
name(v_option_46, simple_name, default_parser_1_code15, name, range(default_parser_1, 5083, 6, 148, 148), 'option').
name(v_e_45, simple_name, default_parser_1_expr27, expression, range(default_parser_1, 5092, 1, 148, 148), 'e').
name(m_next_element_68, simple_name, default_parser_1_expr27, name, range(default_parser_1, 5094, 11, 148, 148), 'nextElement').
name(m_to_string_67, simple_name, default_parser_1_expr26, name, range(default_parser_1, 5108, 8, 148, 148), 'toString').
name(f_cmd_43, simple_name, default_parser_1_expr29, expression, range(default_parser_1, 5150, 3, 150, 150), 'cmd').
name(m_has_option_32, simple_name, default_parser_1_expr29, name, range(default_parser_1, 5154, 9, 150, 150), 'hasOption').
name(v_option_46, simple_name, default_parser_1_expr29, (arguments, 0), range(default_parser_1, 5164, 6, 150, 150), 'option').
name(v_opt_47, simple_name, default_parser_1_code17, name, range(default_parser_1, 5210, 3, 152, 152), 'opt').
name(f_options_37, simple_name, default_parser_1_expr30, expression, range(default_parser_1, 5216, 7, 152, 152), 'options').
name(m_get_option_69, simple_name, default_parser_1_expr30, name, range(default_parser_1, 5224, 9, 152, 152), 'getOption').
name(v_option_46, simple_name, default_parser_1_expr30, (arguments, 0), range(default_parser_1, 5234, 6, 152, 152), 'option').
name(v_value_48, simple_name, default_parser_1_code19, name, range(default_parser_1, 5449, 5, 157, 157), 'value').
name(p_properties_44, simple_name, default_parser_1_expr31, expression, range(default_parser_1, 5457, 10, 157, 157), 'properties').
name(m_get_property_70, simple_name, default_parser_1_expr31, name, range(default_parser_1, 5468, 11, 157, 157), 'getProperty').
name(v_option_46, simple_name, default_parser_1_expr31, (arguments, 0), range(default_parser_1, 5480, 6, 157, 157), 'option').
name(v_opt_47, simple_name, default_parser_1_expr32, expression, range(default_parser_1, 5526, 3, 159, 159), 'opt').
name(m_has_arg_71, simple_name, default_parser_1_expr32, name, range(default_parser_1, 5530, 6, 159, 159), 'hasArg').
name(f_current_option_40, simple_name, default_parser_1_expr34, left_operand, range(default_parser_1, 6935, 13, 202, 202), 'currentOption').
name(f_current_option_40, simple_name, default_parser_1_expr35, expression, range(default_parser_1, 6960, 13, 202, 202), 'currentOption').
name(m_requires_arg_73, simple_name, default_parser_1_expr35, name, range(default_parser_1, 6974, 11, 202, 202), 'requiresArg').
%basic_parser_test_1 - org.apache.commons.cli.BasicParserTest
name(t_basic_parser_test_2, simple_name, basic_parser_test_1_code2, name, range(basic_parser_test_1, 915, 15, 24, 24), 'BasicParserTest').
name(m_set_up_3, simple_name, basic_parser_test_1_expr1, name, range(basic_parser_test_1, 1000, 5, 28, 28), 'setUp').
name(f_parser_4, simple_name, basic_parser_test_1_expr2, left_hand_side, range(basic_parser_test_1, 1017, 6, 29, 29), 'parser').
%posix_parser_1 - org.apache.commons.cli.PosixParser
name(t_posix_parser_13, simple_name, posix_parser_1_code2, name, range(posix_parser_1, 1227, 11, 33, 33), 'PosixParser').
name(f_tokens_167, simple_name, posix_parser_1_code8, name, range(posix_parser_1, 1312, 6, 36, 36), 'tokens').
name(f_eat_the_rest_168, simple_name, posix_parser_1_expr2, left_hand_side, range(posix_parser_1, 1770, 10, 54, 54), 'eatTheRest').
name(f_tokens_167, simple_name, posix_parser_1_expr3, expression, range(posix_parser_1, 1798, 6, 55, 55), 'tokens').
name(m_clear_259, simple_name, posix_parser_1_expr3, name, range(posix_parser_1, 1805, 5, 55, 55), 'clear').
name(m_init_258, simple_name, posix_parser_1_expr4, name, range(posix_parser_1, 4074, 4, 98, 98), 'init').
name(f_options_172, simple_name, posix_parser_1_expr6, name, range(posix_parser_1, 4095, 7, 99, 99), 'options').
name(p_options_169, simple_name, posix_parser_1_expr5, right_hand_side, range(posix_parser_1, 4105, 7, 99, 99), 'options').
name(v_iter_173, simple_name, posix_parser_1_code13, name, range(posix_parser_1, 4183, 4, 102, 102), 'iter').
name(t_arrays_12, simple_name, posix_parser_1_expr9, expression, range(posix_parser_1, 4190, 6, 102, 102), 'Arrays').
name(m_as_list_192, simple_name, posix_parser_1_expr9, name, range(posix_parser_1, 4197, 6, 102, 102), 'asList').
name(p_arguments_170, simple_name, posix_parser_1_expr9, (arguments, 0), range(posix_parser_1, 4204, 9, 102, 102), 'arguments').
name(m_iterator_43, simple_name, posix_parser_1_expr8, name, range(posix_parser_1, 4215, 8, 102, 102), 'iterator').
name(v_iter_173, simple_name, posix_parser_1_expr10, expression, range(posix_parser_1, 4286, 4, 105, 105), 'iter').
name(m_has_next_44, simple_name, posix_parser_1_expr10, name, range(posix_parser_1, 4291, 7, 105, 105), 'hasNext').
name(f_tokens_167, simple_name, posix_parser_1_expr12, expression, range(posix_parser_1, 6762, 6, 177, 177), 'tokens').
name(m_to_array_93, simple_name, posix_parser_1_expr12, name, range(posix_parser_1, 6769, 7, 177, 177), 'toArray').
name(f_tokens_167, simple_name, posix_parser_1_expr14, expression, range(posix_parser_1, 6788, 6, 177, 177), 'tokens').
name(m_size_94, simple_name, posix_parser_1_expr14, name, range(posix_parser_1, 6795, 4, 177, 177), 'size').
%basic_parser_1 - org.apache.commons.cli.BasicParser
name(t_basic_parser_1, simple_name, basic_parser_1_code2, name, range(basic_parser_1, 1134, 11, 28, 28), 'BasicParser').
name(p_arguments_2, simple_name, basic_parser_1_stmt1, expression, range(basic_parser_1, 1899, 9, 46, 46), 'arguments').
%parser_1 - org.apache.commons.cli.Parser
name(t_parser_11, simple_name, parser_1_code2, name, range(parser_1, 1306, 6, 35, 35), 'Parser').
name(f_options_128, simple_name, parser_1_expr2, name, range(parser_1, 1616, 7, 48, 48), 'options').
name(p_options_127, simple_name, parser_1_expr1, right_hand_side, range(parser_1, 1626, 7, 48, 48), 'options').
name(f_required_options_129, simple_name, parser_1_expr5, name, range(parser_1, 1648, 15, 49, 49), 'requiredOptions').
name(p_options_127, simple_name, parser_1_expr8, expression, range(parser_1, 1680, 7, 49, 49), 'options').
name(m_get_required_options_60, simple_name, parser_1_expr8, name, range(parser_1, 1688, 18, 49, 49), 'getRequiredOptions').
name(f_options_128, simple_name, parser_1_stmt3, expression, range(parser_1, 1774, 7, 54, 54), 'options').
name(m_parse_190, simple_name, parser_1_expr9, name, range(parser_1, 3562, 5, 103, 103), 'parse').
name(p_options_135, simple_name, parser_1_expr9, (arguments, 0), range(parser_1, 3568, 7, 103, 103), 'options').
name(p_arguments_136, simple_name, parser_1_expr9, (arguments, 1), range(parser_1, 3577, 9, 103, 103), 'arguments').
name(p_properties_137, simple_name, parser_1_expr9, (arguments, 2), range(parser_1, 3588, 10, 103, 103), 'properties').
name(v_it_145, simple_name, parser_1_code12, name, range(parser_1, 5433, 2, 147, 147), 'it').
name(p_options_141, simple_name, parser_1_expr12, expression, range(parser_1, 5438, 7, 147, 147), 'options').
name(m_help_options_175, simple_name, parser_1_expr12, name, range(parser_1, 5446, 11, 147, 147), 'helpOptions').
name(m_iterator_43, simple_name, parser_1_expr11, name, range(parser_1, 5460, 8, 147, 147), 'iterator').
name(v_it_145, simple_name, parser_1_expr13, expression, range(parser_1, 5472, 2, 147, 147), 'it').
name(m_has_next_44, simple_name, parser_1_expr13, name, range(parser_1, 5475, 7, 147, 147), 'hasNext').
name(v_it_146, simple_name, parser_1_code14, name, range(parser_1, 5656, 2, 154, 154), 'it').
name(p_options_141, simple_name, parser_1_expr16, expression, range(parser_1, 5661, 7, 154, 154), 'options').
name(m_get_option_groups_62, simple_name, parser_1_expr16, name, range(parser_1, 5669, 15, 154, 154), 'getOptionGroups').
name(m_iterator_61, simple_name, parser_1_expr15, name, range(parser_1, 5687, 8, 154, 154), 'iterator').
name(v_it_146, simple_name, parser_1_expr17, expression, range(parser_1, 5699, 2, 154, 154), 'it').
name(m_has_next_44, simple_name, parser_1_expr17, name, range(parser_1, 5702, 7, 154, 154), 'hasNext').
name(m_set_options_184, simple_name, parser_1_expr18, name, range(parser_1, 5875, 10, 161, 161), 'setOptions').
name(p_options_141, simple_name, parser_1_expr18, (arguments, 0), range(parser_1, 5886, 7, 161, 161), 'options').
name(f_cmd_147, simple_name, parser_1_expr19, left_hand_side, range(parser_1, 5905, 3, 163, 163), 'cmd').
name(v_eat_the_rest_148, simple_name, parser_1_code17, name, range(parser_1, 5947, 10, 165, 165), 'eatTheRest').
name(p_arguments_142, simple_name, parser_1_expr21, left_operand, range(parser_1, 5980, 9, 167, 167), 'arguments').
name(p_arguments_142, simple_name, parser_1_expr22, left_hand_side, range(parser_1, 6021, 9, 169, 169), 'arguments').
name(v_token_list_149, simple_name, parser_1_code22, name, range(parser_1, 6072, 9, 172, 172), 'tokenList').
name(t_arrays_12, simple_name, parser_1_expr24, expression, range(parser_1, 6084, 6, 172, 172), 'Arrays').
name(m_as_list_192, simple_name, parser_1_expr24, name, range(parser_1, 6091, 6, 172, 172), 'asList').
name(m_flatten_187, simple_name, parser_1_expr25, name, range(parser_1, 6098, 7, 172, 172), 'flatten').
name(m_get_options_185, simple_name, parser_1_expr26, name, range(parser_1, 6106, 10, 172, 172), 'getOptions').
name(p_arguments_142, simple_name, parser_1_expr25, (arguments, 1), range(parser_1, 6120, 9, 172, 172), 'arguments').
name(p_stop_at_non_option_144, simple_name, parser_1_expr25, (arguments, 2), range(parser_1, 6131, 15, 172, 172), 'stopAtNonOption').
name(v_iterator_150, simple_name, parser_1_code24, name, range(parser_1, 6172, 8, 174, 174), 'iterator').
name(v_token_list_149, simple_name, parser_1_expr27, expression, range(parser_1, 6183, 9, 174, 174), 'tokenList').
name(m_list_iterator_193, simple_name, parser_1_expr27, name, range(parser_1, 6193, 12, 174, 174), 'listIterator').
name(m_process_properties_194, simple_name, parser_1_expr28, name, range(parser_1, 7857, 17, 241, 241), 'processProperties').
name(p_properties_143, simple_name, parser_1_expr28, (arguments, 0), range(parser_1, 7875, 10, 241, 241), 'properties').
name(p_properties_151, simple_name, parser_1_expr29, left_operand, range(parser_1, 8213, 10, 254, 254), 'properties').
name(v_e_152, simple_name, parser_1_code27, name, range(parser_1, 8299, 1, 259, 259), 'e').
name(p_properties_151, simple_name, parser_1_expr31, expression, range(parser_1, 8303, 10, 259, 259), 'properties').
name(m_property_names_65, simple_name, parser_1_expr31, name, range(parser_1, 8314, 13, 259, 259), 'propertyNames').
name(v_e_152, simple_name, parser_1_expr32, expression, range(parser_1, 8331, 1, 259, 259), 'e').
name(m_has_more_elements_66, simple_name, parser_1_expr32, name, range(parser_1, 8333, 15, 259, 259), 'hasMoreElements').
name(v_option_153, simple_name, parser_1_code29, name, range(parser_1, 8382, 6, 261, 261), 'option').
name(v_e_152, simple_name, parser_1_expr34, expression, range(parser_1, 8391, 1, 261, 261), 'e').
name(m_next_element_68, simple_name, parser_1_expr34, name, range(parser_1, 8393, 11, 261, 261), 'nextElement').
name(m_to_string_67, simple_name, parser_1_expr33, name, range(parser_1, 8407, 8, 261, 261), 'toString').
name(f_cmd_147, simple_name, parser_1_expr36, expression, range(parser_1, 8449, 3, 263, 263), 'cmd').
name(m_has_option_32, simple_name, parser_1_expr36, name, range(parser_1, 8453, 9, 263, 263), 'hasOption').
name(v_option_153, simple_name, parser_1_expr36, (arguments, 0), range(parser_1, 8463, 6, 263, 263), 'option').
name(v_opt_154, simple_name, parser_1_code31, name, range(parser_1, 8509, 3, 265, 265), 'opt').
name(m_get_options_185, simple_name, parser_1_expr38, name, range(parser_1, 8515, 10, 265, 265), 'getOptions').
name(m_get_option_69, simple_name, parser_1_expr37, name, range(parser_1, 8528, 9, 265, 265), 'getOption').
name(v_option_153, simple_name, parser_1_expr37, (arguments, 0), range(parser_1, 8538, 6, 265, 265), 'option').
name(v_value_155, simple_name, parser_1_code33, name, range(parser_1, 8762, 5, 270, 270), 'value').
name(p_properties_151, simple_name, parser_1_expr39, expression, range(parser_1, 8770, 10, 270, 270), 'properties').
name(m_get_property_70, simple_name, parser_1_expr39, name, range(parser_1, 8781, 11, 270, 270), 'getProperty').
name(v_option_153, simple_name, parser_1_expr39, (arguments, 0), range(parser_1, 8793, 6, 270, 270), 'option').
name(v_opt_154, simple_name, parser_1_expr40, expression, range(parser_1, 8823, 3, 272, 272), 'opt').
name(m_has_arg_71, simple_name, parser_1_expr40, name, range(parser_1, 8827, 6, 272, 272), 'hasArg').

%%% Literals
%gnu_parser_1 - org.apache.commons.cli.GnuParser
literal(gnu_parser_1_literal1, boolean_literal, gnu_parser_1_code10, initializer, range(gnu_parser_1, 2236, 5, 54, 54), false).
literal(gnu_parser_1_literal2, number_literal, gnu_parser_1_code12, initializer, range(gnu_parser_1, 2265, 1, 56, 56), 0).
%command_line_1 - org.apache.commons.cli.CommandLine
literal(command_line_1_literal1, null_literal, command_line_1_stmt4, expression, range(command_line_1, 6206, 4, 211, 211), null).
%parser_test_case_1 - org.apache.commons.cli.ParserTestCase
literal(parser_test_case_1_literal1, null_literal, parser_test_case_1_expr7, (arguments, 2), range(parser_test_case_1, 35737, 4, 1010, 1010), null).
%default_parser_test_1 - org.apache.commons.cli.DefaultParserTest
%option_validator_1 - org.apache.commons.cli.OptionValidator
literal(option_validator_1_literal1, null_literal, option_validator_1_expr1, right_operand, range(option_validator_1, 1712, 4, 48, 48), null).
literal(option_validator_1_literal2, number_literal, option_validator_1_expr2, right_operand, range(option_validator_1, 1838, 1, 54, 54), 1).
literal(option_validator_1_literal3, number_literal, option_validator_1_expr4, (arguments, 0), range(option_validator_1, 1884, 1, 56, 56), 0).
literal(option_validator_1_literal4, character_literal, option_validator_1_expr10, right_operand, range(option_validator_1, 2770, 3, 87, 87), '?').
literal(option_validator_1_literal5, character_literal, option_validator_1_expr11, right_operand, range(option_validator_1, 2782, 3, 87, 87), '@').
%option_1 - org.apache.commons.cli.Option
literal(option_1_literal1, string_literal, option_1_code6, initializer, range(option_1, 2160, 5, 57, 57), "arg").
literal(option_1_literal2, number_literal, option_1_expr9, right_hand_side, range(option_1, 4636, 1, 132, 132), 1).
literal(option_1_literal3, null_literal, option_1_expr15, right_operand, range(option_1, 5201, 4, 158, 158), null).
literal(option_1_literal4, null_literal, option_1_expr16, right_operand, range(option_1, 7060, 4, 247, 247), null).
%options_1 - org.apache.commons.cli.Options
%util_1 - org.apache.commons.cli.Util
literal(util_1_literal1, null_literal, util_1_expr1, right_operand, range(util_1, 1315, 4, 38, 38), null).
literal(util_1_literal2, string_literal, util_1_expr2, (arguments, 0), range(util_1, 1393, 4, 42, 42), "--").
literal(util_1_literal3, string_literal, util_1_expr3, (arguments, 0), range(util_1, 1503, 3, 46, 46), "-").
%gnu_parser_test_1 - org.apache.commons.cli.GnuParserTest
%posix_parser_test_1 - org.apache.commons.cli.PosixParserTest
%default_parser_1 - org.apache.commons.cli.DefaultParser
literal(default_parser_1_literal1, boolean_literal, default_parser_1_expr1, (arguments, 3), range(default_parser_1, 2650, 5, 75, 75), false).
literal(default_parser_1_literal2, boolean_literal, default_parser_1_expr8, right_hand_side, range(default_parser_1, 3827, 5, 102, 102), false).
literal(default_parser_1_literal3, null_literal, default_parser_1_expr9, right_hand_side, range(default_parser_1, 3858, 4, 103, 103), null).
literal(default_parser_1_literal4, null_literal, default_parser_1_expr19, right_operand, range(default_parser_1, 4245, 4, 115, 115), null).
literal(default_parser_1_literal5, null_literal, default_parser_1_expr22, right_operand, range(default_parser_1, 4920, 4, 141, 141), null).
literal(default_parser_1_literal6, null_literal, default_parser_1_expr34, right_operand, range(default_parser_1, 6952, 4, 202, 202), null).
%basic_parser_test_1 - org.apache.commons.cli.BasicParserTest
%posix_parser_1 - org.apache.commons.cli.PosixParser
literal(posix_parser_1_literal1, boolean_literal, posix_parser_1_expr2, right_hand_side, range(posix_parser_1, 1783, 5, 54, 54), false).
%basic_parser_1 - org.apache.commons.cli.BasicParser
%parser_1 - org.apache.commons.cli.Parser
literal(parser_1_literal1, boolean_literal, parser_1_expr9, (arguments, 3), range(parser_1, 3600, 5, 103, 103), false).
literal(parser_1_literal2, boolean_literal, parser_1_code17, initializer, range(parser_1, 5960, 5, 165, 165), false).
literal(parser_1_literal3, null_literal, parser_1_expr21, right_operand, range(parser_1, 5993, 4, 167, 167), null).
literal(parser_1_literal4, number_literal, parser_1_expr23, (dimensions, 0), range(parser_1, 6044, 1, 169, 169), 0).
literal(parser_1_literal5, null_literal, parser_1_expr29, right_operand, range(parser_1, 8227, 4, 254, 254), null).

%%% Other Code Entities
%gnu_parser_1 - org.apache.commons.cli.GnuParser
code(gnu_parser_1_code1, compilation_unit, range(gnu_parser_1, 0, 4117, 1, -1)).
code(gnu_parser_1_code2, type_declaration, gnu_parser_1_code1, (types, 0), range(gnu_parser_1, 889, 3227, 23, 114)).
code(gnu_parser_1_code3, modifier, gnu_parser_1_code2, (modifiers, 0), range(gnu_parser_1, 1162, 6, 31, 31)).
code(gnu_parser_1_code4, simple_type, gnu_parser_1_code2, superclass_type, range(gnu_parser_1, 1193, 6, 31, 31)).
code(gnu_parser_1_code5, method_declaration, gnu_parser_1_code2, (body_declarations, 0), range(gnu_parser_1, 1206, 2908, 33, 113)).
code(gnu_parser_1_code6, simple_type, gnu_parser_1_stmt1, type, range(gnu_parser_1, 2175, 4, 52, 52)).
code(gnu_parser_1_code7, variable_declaration_fragment, gnu_parser_1_stmt1, (fragments, 0), range(gnu_parser_1, 2180, 24, 52, 52)).
code(gnu_parser_1_code8, simple_type, gnu_parser_1_expr1, type, range(gnu_parser_1, 2193, 9, 52, 52)).
code(gnu_parser_1_code9, primitive_type, gnu_parser_1_stmt2, type, range(gnu_parser_1, 2215, 7, 54, 54)).
code(gnu_parser_1_code10, variable_declaration_fragment, gnu_parser_1_stmt2, (fragments, 0), range(gnu_parser_1, 2223, 18, 54, 54)).
code(gnu_parser_1_code11, primitive_type, gnu_parser_1_expr2, type, range(gnu_parser_1, 2257, 3, 56, 56)).
code(gnu_parser_1_code12, variable_declaration_fragment, gnu_parser_1_expr2, (fragments, 0), range(gnu_parser_1, 2261, 5, 56, 56)).
code(gnu_parser_1_code13, array_type, gnu_parser_1_expr5, type, range(gnu_parser_1, 4056, 8, 112, 112)).
code(gnu_parser_1_code14, simple_type, gnu_parser_1_code13, element_type, range(gnu_parser_1, 4056, 6, 112, 112)).
code(gnu_parser_1_code15, dimension, gnu_parser_1_code13, (dimensions, 0), range(gnu_parser_1, 4062, 2, 112, 112)).
code(gnu_parser_1_code17, simple_type, gnu_parser_1_code16, element_type, range(gnu_parser_1, 4085, 6, 112, 112)).
code(gnu_parser_1_code16, array_type, gnu_parser_1_expr7, type, range(gnu_parser_1, 4085, 21, 112, 112)).
code(gnu_parser_1_code18, dimension, gnu_parser_1_code16, (dimensions, 0), range(gnu_parser_1, 4091, 15, 112, 112)).
%command_line_1 - org.apache.commons.cli.CommandLine
code(command_line_1_code1, compilation_unit, range(command_line_1, 0, 11178, 1, -1)).
code(command_line_1_code2, type_declaration, command_line_1_code1, (types, 0), range(command_line_1, 1032, 10145, 28, 388)).
code(command_line_1_code3, field_declaration, command_line_1_code2, (body_declarations, 1), range(command_line_1, 1749, 83, 48, 49)).
code(command_line_1_code4, modifier, command_line_1_code3, (modifiers, 0), range(command_line_1, 1795, 7, 49, 49)).
code(command_line_1_code5, simple_type, command_line_1_code3, type, range(command_line_1, 1803, 4, 49, 49)).
code(command_line_1_code6, variable_declaration_fragment, command_line_1_code3, (fragments, 0), range(command_line_1, 1808, 23, 49, 49)).
code(command_line_1_code7, simple_type, command_line_1_expr1, type, range(command_line_1, 1819, 10, 49, 49)).
code(command_line_1_code8, field_declaration, command_line_1_code2, (body_declarations, 2), range(command_line_1, 1838, 72, 51, 52)).
code(command_line_1_code9, modifier, command_line_1_code8, (modifiers, 0), range(command_line_1, 1871, 7, 52, 52)).
code(command_line_1_code10, simple_type, command_line_1_code8, type, range(command_line_1, 1879, 4, 52, 52)).
code(command_line_1_code11, variable_declaration_fragment, command_line_1_code8, (fragments, 0), range(command_line_1, 1884, 25, 52, 52)).
code(command_line_1_code12, simple_type, command_line_1_expr2, type, range(command_line_1, 1898, 9, 52, 52)).
code(command_line_1_code13, method_declaration, command_line_1_code2, (body_declarations, 3), range(command_line_1, 1916, 97, 54, 60)).
code(command_line_1_code14, method_declaration, command_line_1_code2, (body_declarations, 4), range(command_line_1, 2019, 256, 62, 71)).
code(command_line_1_code15, method_declaration, command_line_1_code2, (body_declarations, 12), range(command_line_1, 5566, 651, 188, 212)).
code(command_line_1_code16, simple_type, command_line_1_expr7, type, range(command_line_1, 5860, 8, 197, 197)).
code(command_line_1_code17, variable_declaration_fragment, command_line_1_expr7, (fragments, 0), range(command_line_1, 5869, 23, 197, 197)).
%parser_test_case_1 - org.apache.commons.cli.ParserTestCase
code(parser_test_case_1_code1, compilation_unit, range(parser_test_case_1, 0, 36834, 1, -1)).
code(parser_test_case_1_code2, type_declaration, parser_test_case_1_code1, (types, 0), range(parser_test_case_1, 949, 35884, 26, 1044)).
code(parser_test_case_1_code3, method_declaration, parser_test_case_1_code2, (body_declarations, 54), range(parser_test_case_1, 30680, 498, 873, 881)).
code(parser_test_case_1_code4, simple_type, parser_test_case_1_expr3, type, range(parser_test_case_1, 30869, 6, 875, 875)).
code(parser_test_case_1_code5, simple_type, parser_test_case_1_expr6, type, range(parser_test_case_1, 30991, 13, 877, 877)).
code(parser_test_case_1_code6, method_declaration, parser_test_case_1_code2, (body_declarations, 60), range(parser_test_case_1, 35474, 429, 1002, 1015)).
%default_parser_test_1 - org.apache.commons.cli.DefaultParserTest
code(default_parser_test_1_code1, compilation_unit, range(default_parser_test_1, 0, 1054, 1, -1)).
code(default_parser_test_1_code2, type_declaration, default_parser_test_1_code1, (types, 0), range(default_parser_test_1, 837, 216, 20, 30)).
code(default_parser_test_1_code3, modifier, default_parser_test_1_code2, (modifiers, 0), range(default_parser_test_1, 902, 6, 24, 24)).
code(default_parser_test_1_code4, simple_type, default_parser_test_1_code2, superclass_type, range(default_parser_test_1, 941, 14, 24, 24)).
code(default_parser_test_1_code5, method_declaration, default_parser_test_1_code2, (body_declarations, 0), range(default_parser_test_1, 963, 88, 26, 29)).
code(default_parser_test_1_code6, simple_type, default_parser_test_1_expr3, type, range(default_parser_test_1, 1029, 13, 28, 28)).
%option_validator_1 - org.apache.commons.cli.OptionValidator
code(option_validator_1_code1, compilation_unit, range(option_validator_1, 0, 3090, 1, -1)).
code(option_validator_1_code2, type_declaration, option_validator_1_code1, (types, 0), range(option_validator_1, 837, 2252, 20, 100)).
code(option_validator_1_code3, method_declaration, option_validator_1_code2, (body_declarations, 0), range(option_validator_1, 1005, 1465, 29, 77)).
code(option_validator_1_code4, primitive_type, option_validator_1_stmt3, type, range(option_validator_1, 1863, 4, 56, 56)).
code(option_validator_1_code5, variable_declaration_fragment, option_validator_1_stmt3, (fragments, 0), range(option_validator_1, 1868, 18, 56, 56)).
code(option_validator_1_code6, method_declaration, option_validator_1_code2, (body_declarations, 1), range(option_validator_1, 2476, 316, 79, 88)).
code(option_validator_1_code7, method_declaration, option_validator_1_code2, (body_declarations, 2), range(option_validator_1, 2798, 289, 90, 99)).
%option_1 - org.apache.commons.cli.Option
code(option_1_code1, compilation_unit, range(option_1, 0, 18589, 1, -1)).
code(option_1_code2, type_declaration, option_1_code1, (types, 0), range(option_1, 918, 17670, 24, 707)).
code(option_1_code3, field_declaration, option_1_code2, (body_declarations, 5), range(option_1, 2083, 83, 56, 57)).
code(option_1_code4, modifier, option_1_code3, (modifiers, 0), range(option_1, 2135, 7, 57, 57)).
code(option_1_code5, simple_type, option_1_code3, type, range(option_1, 2143, 6, 57, 57)).
code(option_1_code6, variable_declaration_fragment, option_1_code3, (fragments, 0), range(option_1, 2150, 15, 57, 57)).
code(option_1_code7, field_declaration, option_1_code2, (body_declarations, 9), range(option_1, 2449, 103, 68, 69)).
code(option_1_code8, modifier, option_1_code7, (modifiers, 0), range(option_1, 2511, 7, 69, 69)).
code(option_1_code9, primitive_type, option_1_code7, type, range(option_1, 2519, 3, 69, 69)).
code(option_1_code10, variable_declaration_fragment, option_1_code7, (fragments, 0), range(option_1, 2523, 28, 69, 69)).
code(option_1_code11, field_declaration, option_1_code2, (body_declarations, 11), range(option_1, 2619, 78, 74, 75)).
code(option_1_code12, modifier, option_1_code11, (modifiers, 0), range(option_1, 2659, 7, 75, 75)).
code(option_1_code13, simple_type, option_1_code11, type, range(option_1, 2667, 4, 75, 75)).
code(option_1_code14, variable_declaration_fragment, option_1_code11, (fragments, 0), range(option_1, 2672, 24, 75, 75)).
code(option_1_code15, simple_type, option_1_expr1, type, range(option_1, 2685, 9, 75, 75)).
code(option_1_code16, method_declaration, option_1_code2, (body_declarations, 15), range(option_1, 3788, 907, 109, 136)).
code(option_1_code17, method_declaration, option_1_code2, (body_declarations, 17), range(option_1, 4987, 294, 150, 164)).
code(option_1_code18, method_declaration, option_1_code2, (body_declarations, 21), range(option_1, 6002, 207, 201, 209)).
code(option_1_code19, method_declaration, option_1_code2, (body_declarations, 25), range(option_1, 6861, 210, 240, 248)).
code(option_1_code20, method_declaration, option_1_code2, (body_declarations, 29), range(option_1, 7812, 210, 281, 289)).
%options_1 - org.apache.commons.cli.Options
code(options_1_code1, compilation_unit, range(options_1, 0, 9028, 1, -1)).
code(options_1_code2, type_declaration, options_1_code1, (types, 0), range(options_1, 1078, 7949, 30, 313)).
code(options_1_code3, modifier, options_1_code2, (modifiers, 0), range(options_1, 1645, 6, 46, 46)).
code(options_1_code4, simple_type, options_1_code2, (super_interface_types, 0), range(options_1, 1677, 12, 46, 46)).
code(options_1_code5, field_declaration, options_1_code2, (body_declarations, 1), range(options_1, 1785, 93, 51, 52)).
code(options_1_code6, modifier, options_1_code5, (modifiers, 0), range(options_1, 1840, 7, 52, 52)).
code(options_1_code7, simple_type, options_1_code5, type, range(options_1, 1848, 3, 52, 52)).
code(options_1_code8, variable_declaration_fragment, options_1_code5, (fragments, 0), range(options_1, 1852, 25, 52, 52)).
code(options_1_code9, simple_type, options_1_expr1, type, range(options_1, 1868, 7, 52, 52)).
code(options_1_code10, field_declaration, options_1_code2, (body_declarations, 2), range(options_1, 1884, 87, 54, 55)).
code(options_1_code11, modifier, options_1_code10, (modifiers, 0), range(options_1, 1934, 7, 55, 55)).
code(options_1_code12, simple_type, options_1_code10, type, range(options_1, 1942, 3, 55, 55)).
code(options_1_code13, variable_declaration_fragment, options_1_code10, (fragments, 0), range(options_1, 1946, 24, 55, 55)).
code(options_1_code14, simple_type, options_1_expr2, type, range(options_1, 1961, 7, 55, 55)).
code(options_1_code15, field_declaration, options_1_code2, (body_declarations, 3), range(options_1, 1977, 85, 57, 58)).
code(options_1_code16, modifier, options_1_code15, (modifiers, 0), range(options_1, 2018, 7, 58, 58)).
code(options_1_code17, simple_type, options_1_code15, type, range(options_1, 2026, 4, 58, 58)).
code(options_1_code18, variable_declaration_fragment, options_1_code15, (fragments, 0), range(options_1, 2031, 30, 58, 58)).
code(options_1_code19, simple_type, options_1_expr3, type, range(options_1, 2050, 9, 58, 58)).
code(options_1_code20, field_declaration, options_1_code2, (body_declarations, 4), range(options_1, 2068, 79, 60, 61)).
code(options_1_code21, modifier, options_1_code20, (modifiers, 0), range(options_1, 2106, 7, 61, 61)).
code(options_1_code22, simple_type, options_1_code20, type, range(options_1, 2114, 3, 61, 61)).
code(options_1_code23, variable_declaration_fragment, options_1_code20, (fragments, 0), range(options_1, 2118, 28, 61, 61)).
code(options_1_code24, simple_type, options_1_expr4, type, range(options_1, 2137, 7, 61, 61)).
code(options_1_code25, method_declaration, options_1_code2, (body_declarations, 6), range(options_1, 2941, 241, 94, 102)).
code(options_1_code26, simple_type, options_1_expr5, type, range(options_1, 3145, 7, 101, 101)).
code(options_1_code27, method_declaration, options_1_code2, (body_declarations, 8), range(options_1, 3723, 634, 120, 135)).
code(options_1_code28, simple_type, options_1_expr8, type, range(options_1, 4286, 6, 132, 132)).
code(options_1_code29, method_declaration, options_1_code2, (body_declarations, 9), range(options_1, 4363, 717, 137, 166)).
code(options_1_code30, simple_type, options_1_stmt4, type, range(options_1, 4563, 6, 145, 145)).
code(options_1_code31, variable_declaration_fragment, options_1_stmt4, (fragments, 0), range(options_1, 4570, 18, 145, 145)).
code(options_1_code32, method_declaration, options_1_code2, (body_declarations, 11), range(options_1, 5360, 195, 178, 186)).
code(options_1_code33, simple_type, options_1_expr17, type, range(options_1, 5519, 9, 185, 185)).
code(options_1_code34, method_declaration, options_1_code2, (body_declarations, 12), range(options_1, 5561, 173, 188, 196)).
code(options_1_code35, method_declaration, options_1_code2, (body_declarations, 13), range(options_1, 5740, 512, 198, 215)).
code(options_1_code36, simple_type, options_1_expr22, type, range(options_1, 6220, 6, 214, 214)).
%util_1 - org.apache.commons.cli.Util
code(util_1_code1, compilation_unit, range(util_1, 0, 2262, 1, -1)).
code(util_1_code2, type_declaration, util_1_code1, (types, 0), range(util_1, 837, 1424, 20, 73)).
code(util_1_code3, method_declaration, util_1_code2, (body_declarations, 0), range(util_1, 1014, 592, 28, 52)).
%gnu_parser_test_1 - org.apache.commons.cli.GnuParserTest
code(gnu_parser_test_1_code1, compilation_unit, range(gnu_parser_test_1, 0, 3498, 1, -1)).
code(gnu_parser_test_1_code2, type_declaration, gnu_parser_test_1_code1, (types, 0), range(gnu_parser_test_1, 837, 2660, 20, 132)).
code(gnu_parser_test_1_code3, modifier, gnu_parser_test_1_code2, (modifiers, 0), range(gnu_parser_test_1, 837, 6, 20, 20)).
code(gnu_parser_test_1_code4, simple_type, gnu_parser_test_1_code2, superclass_type, range(gnu_parser_test_1, 872, 14, 20, 20)).
code(gnu_parser_test_1_code5, method_declaration, gnu_parser_test_1_code2, (body_declarations, 0), range(gnu_parser_test_1, 893, 88, 22, 26)).
code(gnu_parser_test_1_code6, simple_type, gnu_parser_test_1_expr3, type, range(gnu_parser_test_1, 963, 9, 25, 25)).
%posix_parser_test_1 - org.apache.commons.cli.PosixParserTest
code(posix_parser_test_1_code1, compilation_unit, range(posix_parser_test_1, 0, 2161, 1, -1)).
code(posix_parser_test_1_code2, type_declaration, posix_parser_test_1_code1, (types, 0), range(posix_parser_test_1, 837, 1323, 20, 77)).
code(posix_parser_test_1_code3, modifier, posix_parser_test_1_code2, (modifiers, 0), range(posix_parser_test_1, 913, 6, 25, 25)).
code(posix_parser_test_1_code4, simple_type, posix_parser_test_1_code2, superclass_type, range(posix_parser_test_1, 950, 14, 25, 25)).
code(posix_parser_test_1_code5, method_declaration, posix_parser_test_1_code2, (body_declarations, 0), range(posix_parser_test_1, 971, 90, 27, 31)).
code(posix_parser_test_1_code6, simple_type, posix_parser_test_1_expr3, type, range(posix_parser_test_1, 1041, 11, 30, 30)).
%default_parser_1 - org.apache.commons.cli.DefaultParser
code(default_parser_1_code1, compilation_unit, range(default_parser_1, 0, 20261, 1, -1)).
code(default_parser_1_code2, type_declaration, default_parser_1_code1, (types, 0), range(default_parser_1, 975, 19285, 26, 683)).
code(default_parser_1_code3, modifier, default_parser_1_code2, (modifiers, 0), range(default_parser_1, 1077, 6, 33, 33)).
code(default_parser_1_code4, simple_type, default_parser_1_code2, (super_interface_types, 0), range(default_parser_1, 1115, 17, 33, 33)).
code(default_parser_1_code5, method_declaration, default_parser_1_code2, (body_declarations, 8), range(default_parser_1, 2043, 620, 62, 76)).
code(default_parser_1_code6, method_declaration, default_parser_1_code2, (body_declarations, 10), range(default_parser_1, 2860, 1782, 83, 132)).
code(default_parser_1_code7, simple_type, default_parser_1_expr11, type, range(default_parser_1, 3891, 9, 104, 104)).
code(default_parser_1_code8, simple_type, default_parser_1_expr13, type, range(default_parser_1, 3996, 8, 107, 107)).
code(default_parser_1_code9, variable_declaration_fragment, default_parser_1_expr13, (fragments, 0), range(default_parser_1, 4005, 41, 107, 107)).
code(default_parser_1_code10, simple_type, default_parser_1_expr18, type, range(default_parser_1, 4204, 11, 113, 113)).
code(default_parser_1_code11, method_declaration, default_parser_1_code2, (body_declarations, 11), range(default_parser_1, 4648, 1570, 134, 178)).
code(default_parser_1_code12, simple_type, default_parser_1_expr23, type, range(default_parser_1, 4988, 11, 146, 146)).
code(default_parser_1_code13, variable_declaration_fragment, default_parser_1_expr23, (fragments, 0), range(default_parser_1, 5000, 30, 146, 146)).
code(default_parser_1_code14, simple_type, default_parser_1_stmt14, type, range(default_parser_1, 5076, 6, 148, 148)).
code(default_parser_1_code15, variable_declaration_fragment, default_parser_1_stmt14, (fragments, 0), range(default_parser_1, 5083, 35, 148, 148)).
code(default_parser_1_code16, simple_type, default_parser_1_stmt16, type, range(default_parser_1, 5203, 6, 152, 152)).
code(default_parser_1_code17, variable_declaration_fragment, default_parser_1_stmt16, (fragments, 0), range(default_parser_1, 5210, 31, 152, 152)).
code(default_parser_1_code18, simple_type, default_parser_1_stmt17, type, range(default_parser_1, 5442, 6, 157, 157)).
code(default_parser_1_code19, variable_declaration_fragment, default_parser_1_stmt17, (fragments, 0), range(default_parser_1, 5449, 38, 157, 157)).
code(default_parser_1_code20, method_declaration, default_parser_1_code2, (body_declarations, 13), range(default_parser_1, 6720, 357, 196, 206)).
%basic_parser_test_1 - org.apache.commons.cli.BasicParserTest
code(basic_parser_test_1_code1, compilation_unit, range(basic_parser_test_1, 0, 3940, 1, -1)).
code(basic_parser_test_1_code2, type_declaration, basic_parser_test_1_code1, (types, 0), range(basic_parser_test_1, 837, 3102, 20, 151)).
code(basic_parser_test_1_code3, modifier, basic_parser_test_1_code2, (modifiers, 0), range(basic_parser_test_1, 902, 6, 24, 24)).
code(basic_parser_test_1_code4, simple_type, basic_parser_test_1_code2, superclass_type, range(basic_parser_test_1, 939, 14, 24, 24)).
code(basic_parser_test_1_code5, method_declaration, basic_parser_test_1_code2, (body_declarations, 0), range(basic_parser_test_1, 960, 90, 26, 30)).
code(basic_parser_test_1_code6, simple_type, basic_parser_test_1_expr3, type, range(basic_parser_test_1, 1030, 11, 29, 29)).
%posix_parser_1 - org.apache.commons.cli.PosixParser
code(posix_parser_1_code1, compilation_unit, range(posix_parser_1, 0, 10626, 1, -1)).
code(posix_parser_1_code2, type_declaration, posix_parser_1_code1, (types, 0), range(posix_parser_1, 941, 9684, 25, 297)).
code(posix_parser_1_code3, modifier, posix_parser_1_code2, (modifiers, 0), range(posix_parser_1, 1214, 6, 33, 33)).
code(posix_parser_1_code4, simple_type, posix_parser_1_code2, superclass_type, range(posix_parser_1, 1247, 6, 33, 33)).
code(posix_parser_1_code5, field_declaration, posix_parser_1_code2, (body_declarations, 0), range(posix_parser_1, 1260, 77, 35, 36)).
code(posix_parser_1_code6, modifier, posix_parser_1_code5, (modifiers, 0), range(posix_parser_1, 1299, 7, 36, 36)).
code(posix_parser_1_code7, simple_type, posix_parser_1_code5, type, range(posix_parser_1, 1307, 4, 36, 36)).
code(posix_parser_1_code8, variable_declaration_fragment, posix_parser_1_code5, (fragments, 0), range(posix_parser_1, 1312, 24, 36, 36)).
code(posix_parser_1_code9, simple_type, posix_parser_1_expr1, type, range(posix_parser_1, 1325, 9, 36, 36)).
code(posix_parser_1_code10, method_declaration, posix_parser_1_code2, (body_declarations, 4), range(posix_parser_1, 1567, 252, 47, 56)).
code(posix_parser_1_code11, method_declaration, posix_parser_1_code2, (body_declarations, 5), range(posix_parser_1, 1825, 4985, 58, 178)).
code(posix_parser_1_code12, simple_type, posix_parser_1_stmt5, type, range(posix_parser_1, 4174, 8, 102, 102)).
code(posix_parser_1_code13, variable_declaration_fragment, posix_parser_1_stmt5, (fragments, 0), range(posix_parser_1, 4183, 42, 102, 102)).
code(posix_parser_1_code14, array_type, posix_parser_1_expr11, type, range(posix_parser_1, 6752, 8, 177, 177)).
code(posix_parser_1_code15, simple_type, posix_parser_1_code14, element_type, range(posix_parser_1, 6752, 6, 177, 177)).
code(posix_parser_1_code16, dimension, posix_parser_1_code14, (dimensions, 0), range(posix_parser_1, 6758, 2, 177, 177)).
code(posix_parser_1_code17, array_type, posix_parser_1_expr13, type, range(posix_parser_1, 6781, 21, 177, 177)).
code(posix_parser_1_code18, simple_type, posix_parser_1_code17, element_type, range(posix_parser_1, 6781, 6, 177, 177)).
code(posix_parser_1_code19, dimension, posix_parser_1_code17, (dimensions, 0), range(posix_parser_1, 6787, 15, 177, 177)).
%basic_parser_1 - org.apache.commons.cli.BasicParser
code(basic_parser_1_code1, compilation_unit, range(basic_parser_1, 0, 1918, 1, -1)).
code(basic_parser_1_code2, type_declaration, basic_parser_1_code1, (types, 0), range(basic_parser_1, 837, 1080, 20, 48)).
code(basic_parser_1_code3, modifier, basic_parser_1_code2, (modifiers, 0), range(basic_parser_1, 1121, 6, 28, 28)).
code(basic_parser_1_code4, simple_type, basic_parser_1_code2, superclass_type, range(basic_parser_1, 1154, 6, 28, 28)).
code(basic_parser_1_code5, method_declaration, basic_parser_1_code2, (body_declarations, 0), range(basic_parser_1, 1167, 748, 30, 47)).
%parser_1 - org.apache.commons.cli.Parser
code(parser_1_code1, compilation_unit, range(parser_1, 0, 13557, 1, -1)).
code(parser_1_code2, type_declaration, parser_1_code1, (types, 0), range(parser_1, 1031, 12525, 28, 424)).
code(parser_1_code3, modifier, parser_1_code2, (modifiers, 0), range(parser_1, 1284, 6, 35, 35)).
code(parser_1_code4, modifier, parser_1_code2, (modifiers, 1), range(parser_1, 1291, 8, 35, 35)).
code(parser_1_code5, simple_type, parser_1_code2, (super_interface_types, 0), range(parser_1, 1324, 17, 35, 35)).
code(parser_1_code6, method_declaration, parser_1_code2, (body_declarations, 3), range(parser_1, 1548, 168, 46, 50)).
code(parser_1_code7, simple_type, parser_1_expr6, type, range(parser_1, 1670, 9, 49, 49)).
code(parser_1_code8, method_declaration, parser_1_code2, (body_declarations, 4), range(parser_1, 1722, 66, 52, 55)).
code(parser_1_code9, method_declaration, parser_1_code2, (body_declarations, 8), range(parser_1, 2952, 661, 89, 104)).
code(parser_1_code10, method_declaration, parser_1_code2, (body_declarations, 10), range(parser_1, 4434, 3512, 124, 245)).
code(parser_1_code11, simple_type, parser_1_expr10, type, range(parser_1, 5424, 8, 147, 147)).
code(parser_1_code12, variable_declaration_fragment, parser_1_expr10, (fragments, 0), range(parser_1, 5433, 37, 147, 147)).
code(parser_1_code13, simple_type, parser_1_expr14, type, range(parser_1, 5647, 8, 154, 154)).
code(parser_1_code14, variable_declaration_fragment, parser_1_expr14, (fragments, 0), range(parser_1, 5656, 41, 154, 154)).
code(parser_1_code15, simple_type, parser_1_expr20, type, range(parser_1, 5915, 11, 163, 163)).
code(parser_1_code16, primitive_type, parser_1_stmt9, type, range(parser_1, 5939, 7, 165, 165)).
code(parser_1_code17, variable_declaration_fragment, parser_1_stmt9, (fragments, 0), range(parser_1, 5947, 18, 165, 165)).
code(parser_1_code19, simple_type, parser_1_code18, element_type, range(parser_1, 6037, 6, 169, 169)).
code(parser_1_code18, array_type, parser_1_expr23, type, range(parser_1, 6037, 9, 169, 169)).
code(parser_1_code20, dimension, parser_1_code18, (dimensions, 0), range(parser_1, 6043, 3, 169, 169)).
code(parser_1_code21, simple_type, parser_1_stmt12, type, range(parser_1, 6067, 4, 172, 172)).
code(parser_1_code22, variable_declaration_fragment, parser_1_stmt12, (fragments, 0), range(parser_1, 6072, 76, 172, 172)).
code(parser_1_code23, simple_type, parser_1_stmt13, type, range(parser_1, 6159, 12, 174, 174)).
code(parser_1_code24, variable_declaration_fragment, parser_1_stmt13, (fragments, 0), range(parser_1, 6172, 35, 174, 174)).
code(parser_1_code25, method_declaration, parser_1_code2, (body_declarations, 11), range(parser_1, 7952, 1845, 247, 299)).
code(parser_1_code26, simple_type, parser_1_expr30, type, range(parser_1, 8287, 11, 259, 259)).
code(parser_1_code27, variable_declaration_fragment, parser_1_expr30, (fragments, 0), range(parser_1, 8299, 30, 259, 259)).
code(parser_1_code28, simple_type, parser_1_stmt17, type, range(parser_1, 8375, 6, 261, 261)).
code(parser_1_code29, variable_declaration_fragment, parser_1_stmt17, (fragments, 0), range(parser_1, 8382, 35, 261, 261)).
code(parser_1_code30, simple_type, parser_1_stmt19, type, range(parser_1, 8502, 6, 265, 265)).
code(parser_1_code31, variable_declaration_fragment, parser_1_stmt19, (fragments, 0), range(parser_1, 8509, 36, 265, 265)).
code(parser_1_code32, simple_type, parser_1_stmt20, type, range(parser_1, 8755, 6, 270, 270)).
code(parser_1_code33, variable_declaration_fragment, parser_1_stmt20, (fragments, 0), range(parser_1, 8762, 38, 270, 270)).

%%% Name References

name_ref(t_arrays_12, type, 'Arrays', 'Ljava/util/Arrays;').
name_ref(t_basic_parser_1, type, 'BasicParser', 'Lorg/apache/commons/cli/BasicParser;').
name_ref(t_basic_parser_test_2, type, 'BasicParserTest', 'Lorg/apache/commons/cli/BasicParserTest;').
name_ref(t_character_9, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_default_parser_4, type, 'DefaultParser', 'Lorg/apache/commons/cli/DefaultParser;').
name_ref(t_default_parser_test_5, type, 'DefaultParserTest', 'Lorg/apache/commons/cli/DefaultParserTest;').
name_ref(t_gnu_parser_6, type, 'GnuParser', 'Lorg/apache/commons/cli/GnuParser;').
name_ref(t_gnu_parser_test_7, type, 'GnuParserTest', 'Lorg/apache/commons/cli/GnuParserTest;').
name_ref(t_option_validator_8, type, 'OptionValidator', 'Lorg/apache/commons/cli/OptionValidator;').
name_ref(t_options_10, type, 'Options', 'Lorg/apache/commons/cli/Options;').
name_ref(t_parser_11, type, 'Parser', 'Lorg/apache/commons/cli/Parser;').
name_ref(t_posix_parser_13, type, 'PosixParser', 'Lorg/apache/commons/cli/PosixParser;').
name_ref(t_posix_parser_test_14, type, 'PosixParserTest', 'Lorg/apache/commons/cli/PosixParserTest;').
name_ref(t_util_3, type, 'Util', 'Lorg/apache/commons/cli/Util;').
name_ref(v_ch_104, var, 'ch', 'Lorg/apache/commons/cli/OptionValidator;.validateOption(Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;#0#ch').
name_ref(v_e_152, var, 'e', 'Lorg/apache/commons/cli/Parser;.processProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;#0#e').
name_ref(v_e_45, var, 'e', 'Lorg/apache/commons/cli/DefaultParser;.handleProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;#0#e').
name_ref(v_eat_the_rest_148, var, 'eatTheRest', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#eatTheRest').
name_ref(v_eat_the_rest_69, var, 'eatTheRest', 'Lorg/apache/commons/cli/GnuParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#eatTheRest').
name_ref(v_i_70, var, 'i', 'Lorg/apache/commons/cli/GnuParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#0#i').
name_ref(v_it_145, var, 'it', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#0#it').
name_ref(v_it_146, var, 'it', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#1#it').
name_ref(v_it_16, var, 'it', 'Lorg/apache/commons/cli/CommandLine;.resolveOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;#0#it').
name_ref(v_it_42, var, 'it', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#0#it').
name_ref(v_iter_173, var, 'iter', 'Lorg/apache/commons/cli/PosixParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;|Lorg/apache/commons/cli/ParseException;#iter').
name_ref(v_iterator_150, var, 'iterator', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#iterator').
name_ref(v_key_120, var, 'key', 'Lorg/apache/commons/cli/Options;.addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;#key').
name_ref(v_opt_154, var, 'opt', 'Lorg/apache/commons/cli/Parser;.processProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;#0#0#0#opt').
name_ref(v_opt_47, var, 'opt', 'Lorg/apache/commons/cli/DefaultParser;.handleProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;#0#0#0#opt').
name_ref(v_option_153, var, 'option', 'Lorg/apache/commons/cli/Parser;.processProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;#0#0#option').
name_ref(v_option_46, var, 'option', 'Lorg/apache/commons/cli/DefaultParser;.handleProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;#0#0#option').
name_ref(v_opts_165, var, 'opts', 'Lorg/apache/commons/cli/ParserTestCase;.testPropertyOptionUnexpected()V|Ljava/lang/Exception;#opts').
name_ref(v_properties_166, var, 'properties', 'Lorg/apache/commons/cli/ParserTestCase;.testPropertyOptionUnexpected()V|Ljava/lang/Exception;#properties').
name_ref(v_token_list_149, var, 'tokenList', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#tokenList').
name_ref(v_tokens_68, var, 'tokens', 'Lorg/apache/commons/cli/GnuParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#tokens').
name_ref(v_value_155, var, 'value', 'Lorg/apache/commons/cli/Parser;.processProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;#0#0#0#value').
name_ref(v_value_48, var, 'value', 'Lorg/apache/commons/cli/DefaultParser;.handleProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;#0#0#0#value').
name_ref(p_arg_158, param, 'arg', 'Lorg/apache/commons/cli/Parser;.processOption(Ljava/lang/String;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;#arg#0#0').
name_ref(p_arg_23, param, 'arg', 'Lorg/apache/commons/cli/CommandLine;.addArg(Ljava/lang/String;)V#arg#0#0').
name_ref(p_arg_name_93, param, 'argName', 'Lorg/apache/commons/cli/Option;.setArgName(Ljava/lang/String;)V#argName#0#0').
name_ref(p_args_163, param, 'args', 'Lorg/apache/commons/cli/ParserTestCase;.parse(Lorg/apache/commons/cli/CommandLineParser;Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#args#0#2').
name_ref(p_arguments_131, param, 'arguments', 'Lorg/apache/commons/cli/Parser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_134, param, 'arguments', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_136, param, 'arguments', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_139, param, 'arguments', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_142, param, 'arguments', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_170, param, 'arguments', 'Lorg/apache/commons/cli/PosixParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_2, param, 'arguments', 'Lorg/apache/commons/cli/BasicParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#arguments#0#1').
name_ref(p_arguments_26, param, 'arguments', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_28, param, 'arguments', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_31, param, 'arguments', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_34, param, 'arguments', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_66, param, 'arguments', 'Lorg/apache/commons/cli/GnuParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#arguments#0#1').
name_ref(p_c_105, param, 'c', 'Lorg/apache/commons/cli/OptionValidator;.isValidOpt(C)Z#c#0#0').
name_ref(p_c_106, param, 'c', 'Lorg/apache/commons/cli/OptionValidator;.isValidChar(C)Z#c#0#0').
name_ref(p_default_value_100, param, 'defaultValue', 'Lorg/apache/commons/cli/Option;.getValue(Ljava/lang/String;)Ljava/lang/String;#defaultValue#0#0').
name_ref(p_default_value_19, param, 'defaultValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#defaultValue#0#1').
name_ref(p_default_value_21, param, 'defaultValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(CLjava/lang/String;)Ljava/lang/String;#defaultValue#0#1').
name_ref(p_description_114, param, 'description', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#description#0#2').
name_ref(p_description_118, param, 'description', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#description#0#3').
name_ref(p_description_76, param, 'description', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;#description#0#1').
name_ref(p_description_79, param, 'description', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#description#0#2').
name_ref(p_description_83, param, 'description', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#description#0#3').
name_ref(p_description_90, param, 'description', 'Lorg/apache/commons/cli/Option;.setDescription(Ljava/lang/String;)V#description#0#0').
name_ref(p_group_111, param, 'group', 'Lorg/apache/commons/cli/Options;.addOptionGroup(Lorg/apache/commons/cli/OptionGroup;)Lorg/apache/commons/cli/Options;#group#0#0').
name_ref(p_has_arg_113, param, 'hasArg', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#hasArg#0#1').
name_ref(p_has_arg_117, param, 'hasArg', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#hasArg#0#2').
name_ref(p_has_arg_78, param, 'hasArg', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#hasArg#0#1').
name_ref(p_has_arg_82, param, 'hasArg', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#hasArg#0#2').
name_ref(p_index_99, param, 'index', 'Lorg/apache/commons/cli/Option;.getValue(I)Ljava/lang/String;|Ljava/lang/IndexOutOfBoundsException;#index#0#0').
name_ref(p_iter_157, param, 'iter', 'Lorg/apache/commons/cli/Parser;.processArgs(Lorg/apache/commons/cli/Option;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;#iter#0#1').
name_ref(p_iter_159, param, 'iter', 'Lorg/apache/commons/cli/Parser;.processOption(Ljava/lang/String;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;#iter#0#1').
name_ref(p_iter_174, param, 'iter', 'Lorg/apache/commons/cli/PosixParser;.gobble(Ljava/util/Iterator;)V#iter#0#0').
name_ref(p_long_opt_116, param, 'longOpt', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#longOpt#0#1').
name_ref(p_long_opt_81, param, 'longOpt', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#longOpt#0#1').
name_ref(p_long_opt_88, param, 'longOpt', 'Lorg/apache/commons/cli/Option;.setLongOpt(Ljava/lang/String;)V#longOpt#0#0').
name_ref(p_num_94, param, 'num', 'Lorg/apache/commons/cli/Option;.setArgs(I)V#num#0#0').
name_ref(p_o_101, param, 'o', 'Lorg/apache/commons/cli/Option;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_opt_10, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getParsedOptionValue(Ljava/lang/String;)Ljava/lang/Object;|Lorg/apache/commons/cli/ParseException;#opt#0#0').
name_ref(p_opt_103, param, 'opt', 'Lorg/apache/commons/cli/OptionValidator;.validateOption(Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;#opt#0#0').
name_ref(p_opt_11, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionObject(C)Ljava/lang/Object;#opt#0#0').
name_ref(p_opt_112, param, 'opt', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#opt#0#0').
name_ref(p_opt_115, param, 'opt', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#opt#0#0').
name_ref(p_opt_119, param, 'opt', 'Lorg/apache/commons/cli/Options;.addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;#opt#0#0').
name_ref(p_opt_12, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(Ljava/lang/String;)Ljava/lang/String;#opt#0#0').
name_ref(p_opt_121, param, 'opt', 'Lorg/apache/commons/cli/Options;.getOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;#opt#0#0').
name_ref(p_opt_122, param, 'opt', 'Lorg/apache/commons/cli/Options;.getMatchingOptions(Ljava/lang/String;)Ljava/util/List;#opt#0#0').
name_ref(p_opt_123, param, 'opt', 'Lorg/apache/commons/cli/Options;.hasOption(Ljava/lang/String;)Z#opt#0#0').
name_ref(p_opt_124, param, 'opt', 'Lorg/apache/commons/cli/Options;.hasLongOption(Ljava/lang/String;)Z#opt#0#0').
name_ref(p_opt_125, param, 'opt', 'Lorg/apache/commons/cli/Options;.hasShortOption(Ljava/lang/String;)Z#opt#0#0').
name_ref(p_opt_126, param, 'opt', 'Lorg/apache/commons/cli/Options;.getOptionGroup(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;#opt#0#0').
name_ref(p_opt_13, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(C)Ljava/lang/String;#opt#0#0').
name_ref(p_opt_14, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValues(Ljava/lang/String;)[Ljava/lang/String;#opt#0#0').
name_ref(p_opt_15, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.resolveOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;#opt#0#0').
name_ref(p_opt_156, param, 'opt', 'Lorg/apache/commons/cli/Parser;.processArgs(Lorg/apache/commons/cli/Option;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;#opt#0#0').
name_ref(p_opt_160, param, 'opt', 'Lorg/apache/commons/cli/Parser;.updateRequiredOptions(Lorg/apache/commons/cli/Option;)V|Lorg/apache/commons/cli/ParseException;#opt#0#0').
name_ref(p_opt_17, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValues(C)[Ljava/lang/String;#opt#0#0').
name_ref(p_opt_18, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#opt#0#0').
name_ref(p_opt_20, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(CLjava/lang/String;)Ljava/lang/String;#opt#0#0').
name_ref(p_opt_22, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionProperties(Ljava/lang/String;)Ljava/util/Properties;#opt#0#0').
name_ref(p_opt_24, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.addOption(Lorg/apache/commons/cli/Option;)V#opt#0#0').
name_ref(p_opt_7, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.hasOption(Ljava/lang/String;)Z#opt#0#0').
name_ref(p_opt_75, param, 'opt', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;#opt#0#0').
name_ref(p_opt_77, param, 'opt', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#opt#0#0').
name_ref(p_opt_8, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.hasOption(C)Z#opt#0#0').
name_ref(p_opt_80, param, 'opt', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#opt#0#0').
name_ref(p_opt_9, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionObject(Ljava/lang/String;)Ljava/lang/Object;#opt#0#0').
name_ref(p_option_62, param, 'option', 'Lorg/apache/commons/cli/DefaultParser;.handleOption(Lorg/apache/commons/cli/Option;)V|Lorg/apache/commons/cli/ParseException;#option#0#0').
name_ref(p_option_63, param, 'option', 'Lorg/apache/commons/cli/DefaultParser;.updateRequiredOptions(Lorg/apache/commons/cli/Option;)V|Lorg/apache/commons/cli/AlreadySelectedException;#option#0#0').
name_ref(p_optional_arg_89, param, 'optionalArg', 'Lorg/apache/commons/cli/Option;.setOptionalArg(Z)V#optionalArg#0#0').
name_ref(p_options_1, param, 'options', 'Lorg/apache/commons/cli/BasicParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#options#0#0').
name_ref(p_options_127, param, 'options', 'Lorg/apache/commons/cli/Parser;.setOptions(Lorg/apache/commons/cli/Options;)V#options#0#0').
name_ref(p_options_133, param, 'options', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_135, param, 'options', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_138, param, 'options', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_141, param, 'options', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_169, param, 'options', 'Lorg/apache/commons/cli/PosixParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_25, param, 'options', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_27, param, 'options', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_30, param, 'options', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_33, param, 'options', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_65, param, 'options', 'Lorg/apache/commons/cli/GnuParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#options#0#0').
name_ref(p_opts_130, param, 'opts', 'Lorg/apache/commons/cli/Parser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;|Lorg/apache/commons/cli/ParseException;#opts#0#0').
name_ref(p_opts_162, param, 'opts', 'Lorg/apache/commons/cli/ParserTestCase;.parse(Lorg/apache/commons/cli/CommandLineParser;Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#opts#0#1').
name_ref(p_parser_161, param, 'parser', 'Lorg/apache/commons/cli/ParserTestCase;.parse(Lorg/apache/commons/cli/CommandLineParser;Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#parser#0#0').
name_ref(p_properties_137, param, 'properties', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#properties#0#2').
name_ref(p_properties_143, param, 'properties', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#properties#0#2').
name_ref(p_properties_151, param, 'properties', 'Lorg/apache/commons/cli/Parser;.processProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;#properties#0#0').
name_ref(p_properties_164, param, 'properties', 'Lorg/apache/commons/cli/ParserTestCase;.parse(Lorg/apache/commons/cli/CommandLineParser;Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#properties#0#3').
name_ref(p_properties_29, param, 'properties', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#properties#0#2').
name_ref(p_properties_35, param, 'properties', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#properties#0#2').
name_ref(p_properties_44, param, 'properties', 'Lorg/apache/commons/cli/DefaultParser;.handleProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;#properties#0#0').
name_ref(p_required_92, param, 'required', 'Lorg/apache/commons/cli/Option;.setRequired(Z)V#required#0#0').
name_ref(p_sep_95, param, 'sep', 'Lorg/apache/commons/cli/Option;.setValueSeparator(C)V#sep#0#0').
name_ref(p_stop_at_non_option_132, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/Parser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;|Lorg/apache/commons/cli/ParseException;#stopAtNonOption#0#2').
name_ref(p_stop_at_non_option_140, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#stopAtNonOption#0#2').
name_ref(p_stop_at_non_option_144, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#stopAtNonOption#0#3').
name_ref(p_stop_at_non_option_171, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/PosixParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;|Lorg/apache/commons/cli/ParseException;#stopAtNonOption#0#2').
name_ref(p_stop_at_non_option_176, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/PosixParser;.processNonOptionToken(Ljava/lang/String;Z)V#stopAtNonOption#0#1').
name_ref(p_stop_at_non_option_178, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/PosixParser;.processOptionToken(Ljava/lang/String;Z)V#stopAtNonOption#0#1').
name_ref(p_stop_at_non_option_180, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/PosixParser;.burstToken(Ljava/lang/String;Z)V#stopAtNonOption#0#1').
name_ref(p_stop_at_non_option_3, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/BasicParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#stopAtNonOption#0#2').
name_ref(p_stop_at_non_option_32, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#stopAtNonOption#0#2').
name_ref(p_stop_at_non_option_36, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#stopAtNonOption#0#3').
name_ref(p_stop_at_non_option_67, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/GnuParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#stopAtNonOption#0#2').
name_ref(p_str_181, param, 'str', 'Lorg/apache/commons/cli/Util;.stripLeadingHyphens(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_182, param, 'str', 'Lorg/apache/commons/cli/Util;.stripLeadingAndTrailingQuotes(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_token_177, param, 'token', 'Lorg/apache/commons/cli/PosixParser;.processOptionToken(Ljava/lang/String;Z)V#token#0#0').
name_ref(p_token_179, param, 'token', 'Lorg/apache/commons/cli/PosixParser;.burstToken(Ljava/lang/String;Z)V#token#0#0').
name_ref(p_token_49, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.handleToken(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;#token#0#0').
name_ref(p_token_50, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.isArgument(Ljava/lang/String;)Z#token#0#0').
name_ref(p_token_51, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.isNegativeNumber(Ljava/lang/String;)Z#token#0#0').
name_ref(p_token_52, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.isOption(Ljava/lang/String;)Z#token#0#0').
name_ref(p_token_53, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.isShortOption(Ljava/lang/String;)Z#token#0#0').
name_ref(p_token_54, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.isLongOption(Ljava/lang/String;)Z#token#0#0').
name_ref(p_token_55, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.handleUnknownToken(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;#token#0#0').
name_ref(p_token_56, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.handleLongOption(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;#token#0#0').
name_ref(p_token_57, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.handleLongOptionWithoutEqual(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;#token#0#0').
name_ref(p_token_58, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.handleLongOptionWithEqual(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;#token#0#0').
name_ref(p_token_59, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.handleShortAndLongOption(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;#token#0#0').
name_ref(p_token_60, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.getLongPrefix(Ljava/lang/String;)Ljava/lang/String;#token#0#0').
name_ref(p_token_61, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.isJavaProperty(Ljava/lang/String;)Z#token#0#0').
name_ref(p_token_64, param, 'token', 'Lorg/apache/commons/cli/DefaultParser;.handleConcatenatedOptions(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;#token#0#0').
name_ref(p_type_87, param, 'type', 'Lorg/apache/commons/cli/Option;.setType(Ljava/lang/Object;)V#type#0#0').
name_ref(p_value_102, param, 'value', 'Lorg/apache/commons/cli/Option;.addValue(Ljava/lang/String;)Z#value#0#0').
name_ref(p_value_175, param, 'value', 'Lorg/apache/commons/cli/PosixParser;.processNonOptionToken(Ljava/lang/String;Z)V#value#0#0').
name_ref(p_value_96, param, 'value', 'Lorg/apache/commons/cli/Option;.addValueForProcessing(Ljava/lang/String;)V#value#0#0').
name_ref(p_value_97, param, 'value', 'Lorg/apache/commons/cli/Option;.processValue(Ljava/lang/String;)V#value#0#0').
name_ref(p_value_98, param, 'value', 'Lorg/apache/commons/cli/Option;.add(Ljava/lang/String;)V#value#0#0').
name_ref(f_arg_name_71, field, 'argName', 'Lorg/apache/commons/cli/Option;.argName)Ljava/lang/String;').
name_ref(f_args_5, field, 'args', 'Lorg/apache/commons/cli/CommandLine;.args)Ljava/util/List<>;').
name_ref(f_cmd_147, field, 'cmd', 'Lorg/apache/commons/cli/Parser;.cmd)Lorg/apache/commons/cli/CommandLine;').
name_ref(f_cmd_43, field, 'cmd', 'Lorg/apache/commons/cli/DefaultParser;.cmd)Lorg/apache/commons/cli/CommandLine;').
name_ref(f_current_option_40, field, 'currentOption', 'Lorg/apache/commons/cli/DefaultParser;.currentOption)Lorg/apache/commons/cli/Option;').
name_ref(f_description_86, field, 'description', 'Lorg/apache/commons/cli/Option;.description)Ljava/lang/String;').
name_ref(f_eat_the_rest_168, field, 'eatTheRest', 'Lorg/apache/commons/cli/PosixParser;.eatTheRest)Z').
name_ref(f_expected_opts_41, field, 'expectedOpts', 'Lorg/apache/commons/cli/DefaultParser;.expectedOpts)Ljava/util/List<>;').
name_ref(f_long_opt_85, field, 'longOpt', 'Lorg/apache/commons/cli/Option;.longOpt)Ljava/lang/String;').
name_ref(f_long_opts_108, field, 'longOpts', 'Lorg/apache/commons/cli/Options;.longOpts)Ljava/util/Map<>;').
name_ref(f_number_of_args_72, field, 'numberOfArgs', 'Lorg/apache/commons/cli/Option;.numberOfArgs)I').
name_ref(f_opt_84, field, 'opt', 'Lorg/apache/commons/cli/Option;.opt)Ljava/lang/String;').
name_ref(f_option_groups_110, field, 'optionGroups', 'Lorg/apache/commons/cli/Options;.optionGroups)Ljava/util/Map<>;').
name_ref(f_options_128, field, 'options', 'Lorg/apache/commons/cli/Parser;.options)Lorg/apache/commons/cli/Options;').
name_ref(f_options_172, field, 'options', 'Lorg/apache/commons/cli/PosixParser;.options)Lorg/apache/commons/cli/Options;').
name_ref(f_options_37, field, 'options', 'Lorg/apache/commons/cli/DefaultParser;.options)Lorg/apache/commons/cli/Options;').
name_ref(f_options_6, field, 'options', 'Lorg/apache/commons/cli/CommandLine;.options)Ljava/util/List<>;').
name_ref(f_parser_4, field, 'parser', 'Lorg/apache/commons/cli/ParserTestCase;.parser)Lorg/apache/commons/cli/CommandLineParser;').
name_ref(f_required_91, field, 'required', 'Lorg/apache/commons/cli/Option;.required)Z').
name_ref(f_required_options_129, field, 'requiredOptions', 'Lorg/apache/commons/cli/Parser;.requiredOptions)Ljava/util/List<>;').
name_ref(f_required_opts_109, field, 'requiredOpts', 'Lorg/apache/commons/cli/Options;.requiredOpts)Ljava/util/List<>;').
name_ref(f_short_opts_107, field, 'shortOpts', 'Lorg/apache/commons/cli/Options;.shortOpts)Ljava/util/Map<>;').
name_ref(f_skip_parsing_39, field, 'skipParsing', 'Lorg/apache/commons/cli/DefaultParser;.skipParsing)Z').
name_ref(f_stop_at_non_option_38, field, 'stopAtNonOption', 'Lorg/apache/commons/cli/DefaultParser;.stopAtNonOption)Z').
name_ref(f_tokens_167, field, 'tokens', 'Lorg/apache/commons/cli/PosixParser;.tokens)Ljava/util/List<>;').
name_ref(f_uninitialized_73, field, 'UNINITIALIZED', 'Lorg/apache/commons/cli/Option;.UNINITIALIZED)I').
name_ref(f_values_74, field, 'values', 'Lorg/apache/commons/cli/Option;.values)Ljava/util/List<>;').
name_ref(m_accepts_arg_160, method, 'acceptsArg', 'Lorg/apache/commons/cli/Option;.acceptsArg()Z').
name_ref(m_add_147, method, 'add', 'Lorg/apache/commons/cli/Option;.add(Ljava/lang/String;)V').
name_ref(m_add_arg_51, method, 'addArg', 'Lorg/apache/commons/cli/CommandLine;.addArg(Ljava/lang/String;)V').
name_ref(m_add_option_170, method, 'addOption', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;').
name_ref(m_add_option_171, method, 'addOption', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;').
name_ref(m_add_option_172, method, 'addOption', 'Lorg/apache/commons/cli/Options;.addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;').
name_ref(m_add_option_52, method, 'addOption', 'Lorg/apache/commons/cli/CommandLine;.addOption(Lorg/apache/commons/cli/Option;)V').
name_ref(m_add_option_group_167, method, 'addOptionGroup', 'Lorg/apache/commons/cli/Options;.addOptionGroup(Lorg/apache/commons/cli/OptionGroup;)Lorg/apache/commons/cli/Options;').
name_ref(m_add_value_159, method, 'addValue', 'Lorg/apache/commons/cli/Option;.addValue(Ljava/lang/String;)Z').
name_ref(m_add_value_for_processing_145, method, 'addValueForProcessing', 'Lorg/apache/commons/cli/Option;.addValueForProcessing(Ljava/lang/String;)V').
name_ref(m_array_list_30, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_array_list_59, method, 'ArrayList', 'Ljava/util/ArrayList;.(Ljava/util/Collection<+TE;>;)V').
name_ref(m_as_list_192, method, 'asList', 'Ljava/util/Arrays;.asList<T:Ljava/lang/Object;>([TT;)Ljava/util/List<TT;>;').
name_ref(m_basic_parser_4, method, 'BasicParser', 'Lorg/apache/commons/cli/BasicParser;.()V').
name_ref(m_burst_token_264, method, 'burstToken', 'Lorg/apache/commons/cli/PosixParser;.burstToken(Ljava/lang/String;Z)V').
name_ref(m_char_at_162, method, 'charAt', 'Ljava/lang/String;.charAt(I)C').
name_ref(m_check_required_args_63, method, 'checkRequiredArgs', 'Lorg/apache/commons/cli/DefaultParser;.checkRequiredArgs()V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_check_required_options_195, method, 'checkRequiredOptions', 'Lorg/apache/commons/cli/Parser;.checkRequiredOptions()V|Lorg/apache/commons/cli/MissingOptionException;').
name_ref(m_check_required_options_72, method, 'checkRequiredOptions', 'Lorg/apache/commons/cli/DefaultParser;.checkRequiredOptions()V|Lorg/apache/commons/cli/MissingOptionException;').
name_ref(m_clear_259, method, 'clear', 'Ljava/util/List;.clear()V').
name_ref(m_clear_values_158, method, 'clearValues', 'Lorg/apache/commons/cli/Option;.clearValues()V').
name_ref(m_clone_157, method, 'clone', 'Lorg/apache/commons/cli/Option;.clone()Ljava/lang/Object;').
name_ref(m_command_line_31, method, 'CommandLine', 'Lorg/apache/commons/cli/CommandLine;.()V').
name_ref(m_contains_33, method, 'contains', 'Ljava/util/List;.contains(Ljava/lang/Object;)Z').
name_ref(m_contains_key_176, method, 'containsKey', 'Ljava/util/Map;.containsKey(Ljava/lang/Object;)Z').
name_ref(m_default_parser_91, method, 'DefaultParser', 'Lorg/apache/commons/cli/DefaultParser;.()V').
name_ref(m_equals_155, method, 'equals', 'Lorg/apache/commons/cli/Option;.equals(Ljava/lang/Object;)Z').
name_ref(m_flatten_1, method, 'flatten', 'Lorg/apache/commons/cli/BasicParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;').
name_ref(m_flatten_187, method, 'flatten', 'Lorg/apache/commons/cli/Parser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_flatten_260, method, 'flatten', 'Lorg/apache/commons/cli/PosixParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_flatten_92, method, 'flatten', 'Lorg/apache/commons/cli/GnuParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;').
name_ref(m_get_177, method, 'get', 'Ljava/util/Map;.get(Ljava/lang/Object;)TV;').
name_ref(m_get_arg_list_50, method, 'getArgList', 'Lorg/apache/commons/cli/CommandLine;.getArgList()Ljava/util/List;').
name_ref(m_get_arg_name_137, method, 'getArgName', 'Lorg/apache/commons/cli/Option;.getArgName()Ljava/lang/String;').
name_ref(m_get_args_144, method, 'getArgs', 'Lorg/apache/commons/cli/Option;.getArgs()I').
name_ref(m_get_args_49, method, 'getArgs', 'Lorg/apache/commons/cli/CommandLine;.getArgs()[Ljava/lang/String;').
name_ref(m_get_description_132, method, 'getDescription', 'Lorg/apache/commons/cli/Option;.getDescription()Ljava/lang/String;').
name_ref(m_get_id_122, method, 'getId', 'Lorg/apache/commons/cli/Option;.getId()I').
name_ref(m_get_key_123, method, 'getKey', 'Lorg/apache/commons/cli/Option;.getKey()Ljava/lang/String;').
name_ref(m_get_long_opt_127, method, 'getLongOpt', 'Lorg/apache/commons/cli/Option;.getLongOpt()Ljava/lang/String;').
name_ref(m_get_long_prefix_85, method, 'getLongPrefix', 'Lorg/apache/commons/cli/DefaultParser;.getLongPrefix(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_matching_options_178, method, 'getMatchingOptions', 'Lorg/apache/commons/cli/Options;.getMatchingOptions(Ljava/lang/String;)Ljava/util/List;').
name_ref(m_get_opt_124, method, 'getOpt', 'Lorg/apache/commons/cli/Option;.getOpt()Ljava/lang/String;').
name_ref(m_get_option_69, method, 'getOption', 'Lorg/apache/commons/cli/Options;.getOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;').
name_ref(m_get_option_group_182, method, 'getOptionGroup', 'Lorg/apache/commons/cli/Options;.getOptionGroup(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;').
name_ref(m_get_option_groups_62, method, 'getOptionGroups', 'Lorg/apache/commons/cli/Options;.getOptionGroups()Ljava/util/Collection;').
name_ref(m_get_option_object_36, method, 'getOptionObject', 'Lorg/apache/commons/cli/CommandLine;.getOptionObject(Ljava/lang/String;)Ljava/lang/Object;').
name_ref(m_get_option_object_38, method, 'getOptionObject', 'Lorg/apache/commons/cli/CommandLine;.getOptionObject(C)Ljava/lang/Object;').
name_ref(m_get_option_properties_48, method, 'getOptionProperties', 'Lorg/apache/commons/cli/CommandLine;.getOptionProperties(Ljava/lang/String;)Ljava/util/Properties;').
name_ref(m_get_option_value_39, method, 'getOptionValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_option_value_40, method, 'getOptionValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(C)Ljava/lang/String;').
name_ref(m_get_option_value_46, method, 'getOptionValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_option_value_47, method, 'getOptionValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(CLjava/lang/String;)Ljava/lang/String;').
name_ref(m_get_option_values_41, method, 'getOptionValues', 'Lorg/apache/commons/cli/CommandLine;.getOptionValues(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_get_option_values_45, method, 'getOptionValues', 'Lorg/apache/commons/cli/CommandLine;.getOptionValues(C)[Ljava/lang/String;').
name_ref(m_get_options_174, method, 'getOptions', 'Lorg/apache/commons/cli/Options;.getOptions()Ljava/util/Collection;').
name_ref(m_get_options_185, method, 'getOptions', 'Lorg/apache/commons/cli/Parser;.getOptions()Lorg/apache/commons/cli/Options;').
name_ref(m_get_options_54, method, 'getOptions', 'Lorg/apache/commons/cli/CommandLine;.getOptions()[Lorg/apache/commons/cli/Option;').
name_ref(m_get_parsed_option_value_37, method, 'getParsedOptionValue', 'Lorg/apache/commons/cli/CommandLine;.getParsedOptionValue(Ljava/lang/String;)Ljava/lang/Object;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_get_property_70, method, 'getProperty', 'Ljava/util/Properties;.getProperty(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_required_options_186, method, 'getRequiredOptions', 'Lorg/apache/commons/cli/Parser;.getRequiredOptions()Ljava/util/List;').
name_ref(m_get_required_options_60, method, 'getRequiredOptions', 'Lorg/apache/commons/cli/Options;.getRequiredOptions()Ljava/util/List;').
name_ref(m_get_type_125, method, 'getType', 'Lorg/apache/commons/cli/Option;.getType()Ljava/lang/Object;').
name_ref(m_get_value_148, method, 'getValue', 'Lorg/apache/commons/cli/Option;.getValue()Ljava/lang/String;').
name_ref(m_get_value_149, method, 'getValue', 'Lorg/apache/commons/cli/Option;.getValue(I)Ljava/lang/String;|Ljava/lang/IndexOutOfBoundsException;').
name_ref(m_get_value_150, method, 'getValue', 'Lorg/apache/commons/cli/Option;.getValue(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_value_separator_142, method, 'getValueSeparator', 'Lorg/apache/commons/cli/Option;.getValueSeparator()C').
name_ref(m_get_values_151, method, 'getValues', 'Lorg/apache/commons/cli/Option;.getValues()[Ljava/lang/String;').
name_ref(m_get_values_list_152, method, 'getValuesList', 'Lorg/apache/commons/cli/Option;.getValuesList()Ljava/util/List;').
name_ref(m_gnu_parser_96, method, 'GnuParser', 'Lorg/apache/commons/cli/GnuParser;.()V').
name_ref(m_gobble_261, method, 'gobble', 'Lorg/apache/commons/cli/PosixParser;.gobble(Ljava/util/Iterator;)V').
name_ref(m_handle_concatenated_options_89, method, 'handleConcatenatedOptions', 'Lorg/apache/commons/cli/DefaultParser;.handleConcatenatedOptions(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_handle_long_option_81, method, 'handleLongOption', 'Lorg/apache/commons/cli/DefaultParser;.handleLongOption(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_handle_long_option_with_equal_83, method, 'handleLongOptionWithEqual', 'Lorg/apache/commons/cli/DefaultParser;.handleLongOptionWithEqual(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_handle_long_option_without_equal_82, method, 'handleLongOptionWithoutEqual', 'Lorg/apache/commons/cli/DefaultParser;.handleLongOptionWithoutEqual(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_handle_option_87, method, 'handleOption', 'Lorg/apache/commons/cli/DefaultParser;.handleOption(Lorg/apache/commons/cli/Option;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_handle_properties_64, method, 'handleProperties', 'Lorg/apache/commons/cli/DefaultParser;.handleProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_handle_short_and_long_option_84, method, 'handleShortAndLongOption', 'Lorg/apache/commons/cli/DefaultParser;.handleShortAndLongOption(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_handle_token_74, method, 'handleToken', 'Lorg/apache/commons/cli/DefaultParser;.handleToken(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_handle_unknown_token_80, method, 'handleUnknownToken', 'Lorg/apache/commons/cli/DefaultParser;.handleUnknownToken(Ljava/lang/String;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_has_arg_71, method, 'hasArg', 'Lorg/apache/commons/cli/Option;.hasArg()Z').
name_ref(m_has_arg_name_138, method, 'hasArgName', 'Lorg/apache/commons/cli/Option;.hasArgName()Z').
name_ref(m_has_args_139, method, 'hasArgs', 'Lorg/apache/commons/cli/Option;.hasArgs()Z').
name_ref(m_has_long_opt_131, method, 'hasLongOpt', 'Lorg/apache/commons/cli/Option;.hasLongOpt()Z').
name_ref(m_has_long_option_180, method, 'hasLongOption', 'Lorg/apache/commons/cli/Options;.hasLongOption(Ljava/lang/String;)Z').
name_ref(m_has_more_elements_66, method, 'hasMoreElements', 'Ljava/util/Enumeration;.hasMoreElements()Z').
name_ref(m_has_next_44, method, 'hasNext', 'Ljava/util/Iterator;.hasNext()Z').
name_ref(m_has_no_values_154, method, 'hasNoValues', 'Lorg/apache/commons/cli/Option;.hasNoValues()Z').
name_ref(m_has_option_179, method, 'hasOption', 'Lorg/apache/commons/cli/Options;.hasOption(Ljava/lang/String;)Z').
name_ref(m_has_option_32, method, 'hasOption', 'Lorg/apache/commons/cli/CommandLine;.hasOption(Ljava/lang/String;)Z').
name_ref(m_has_option_35, method, 'hasOption', 'Lorg/apache/commons/cli/CommandLine;.hasOption(C)Z').
name_ref(m_has_optional_arg_130, method, 'hasOptionalArg', 'Lorg/apache/commons/cli/Option;.hasOptionalArg()Z').
name_ref(m_has_short_option_181, method, 'hasShortOption', 'Lorg/apache/commons/cli/Options;.hasShortOption(Ljava/lang/String;)Z').
name_ref(m_has_value_separator_143, method, 'hasValueSeparator', 'Lorg/apache/commons/cli/Option;.hasValueSeparator()Z').
name_ref(m_hash_code_156, method, 'hashCode', 'Lorg/apache/commons/cli/Option;.hashCode()I').
name_ref(m_hash_map_166, method, 'HashMap', 'Ljava/util/HashMap;.()V').
name_ref(m_hash_set_168, method, 'HashSet', 'Ljava/util/HashSet;.(Ljava/util/Collection<+TE;>;)V').
name_ref(m_help_options_175, method, 'helpOptions', 'Lorg/apache/commons/cli/Options;.helpOptions()Ljava/util/List;').
name_ref(m_init_258, method, 'init', 'Lorg/apache/commons/cli/PosixParser;.init()V').
name_ref(m_is_argument_75, method, 'isArgument', 'Lorg/apache/commons/cli/DefaultParser;.isArgument(Ljava/lang/String;)Z').
name_ref(m_is_java_identifier_part_165, method, 'isJavaIdentifierPart', 'Ljava/lang/Character;.isJavaIdentifierPart(C)Z').
name_ref(m_is_java_property_86, method, 'isJavaProperty', 'Lorg/apache/commons/cli/DefaultParser;.isJavaProperty(Ljava/lang/String;)Z').
name_ref(m_is_long_option_79, method, 'isLongOption', 'Lorg/apache/commons/cli/DefaultParser;.isLongOption(Ljava/lang/String;)Z').
name_ref(m_is_negative_number_76, method, 'isNegativeNumber', 'Lorg/apache/commons/cli/DefaultParser;.isNegativeNumber(Ljava/lang/String;)Z').
name_ref(m_is_option_77, method, 'isOption', 'Lorg/apache/commons/cli/DefaultParser;.isOption(Ljava/lang/String;)Z').
name_ref(m_is_required_134, method, 'isRequired', 'Lorg/apache/commons/cli/Option;.isRequired()Z').
name_ref(m_is_short_option_78, method, 'isShortOption', 'Lorg/apache/commons/cli/DefaultParser;.isShortOption(Ljava/lang/String;)Z').
name_ref(m_is_valid_char_164, method, 'isValidChar', 'Lorg/apache/commons/cli/OptionValidator;.isValidChar(C)Z').
name_ref(m_is_valid_opt_163, method, 'isValidOpt', 'Lorg/apache/commons/cli/OptionValidator;.isValidOpt(C)Z').
name_ref(m_iterator_43, method, 'iterator', 'Ljava/util/List;.iterator()Ljava/util/Iterator<TE;>;').
name_ref(m_iterator_53, method, 'iterator', 'Lorg/apache/commons/cli/CommandLine;.iterator()Ljava/util/Iterator;').
name_ref(m_iterator_61, method, 'iterator', 'Ljava/util/Collection;.iterator()Ljava/util/Iterator<TE;>;').
name_ref(m_length_161, method, 'length', 'Ljava/lang/String;.length()I').
name_ref(m_linked_list_29, method, 'LinkedList', 'Ljava/util/LinkedList;.()V').
name_ref(m_list_iterator_193, method, 'listIterator', 'Ljava/util/List;.listIterator()Ljava/util/ListIterator<TE;>;').
name_ref(m_next_element_68, method, 'nextElement', 'Ljava/util/Enumeration;.nextElement()TE;').
name_ref(m_option_118, method, 'Option', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;').
name_ref(m_option_119, method, 'Option', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;').
name_ref(m_option_120, method, 'Option', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;').
name_ref(m_parse_188, method, 'parse', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_parse_189, method, 'parse', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_parse_190, method, 'parse', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_parse_191, method, 'parse', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_parse_250, method, 'parse', 'Lorg/apache/commons/cli/ParserTestCase;.parse(Lorg/apache/commons/cli/CommandLineParser;Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_parse_55, method, 'parse', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_parse_56, method, 'parse', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_parse_57, method, 'parse', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_parse_58, method, 'parse', 'Lorg/apache/commons/cli/DefaultParser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_posix_parser_266, method, 'PosixParser', 'Lorg/apache/commons/cli/PosixParser;.()V').
name_ref(m_process_args_196, method, 'processArgs', 'Lorg/apache/commons/cli/Parser;.processArgs(Lorg/apache/commons/cli/Option;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_process_non_option_token_262, method, 'processNonOptionToken', 'Lorg/apache/commons/cli/PosixParser;.processNonOptionToken(Ljava/lang/String;Z)V').
name_ref(m_process_option_197, method, 'processOption', 'Lorg/apache/commons/cli/Parser;.processOption(Ljava/lang/String;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_process_option_token_263, method, 'processOptionToken', 'Lorg/apache/commons/cli/PosixParser;.processOptionToken(Ljava/lang/String;Z)V').
name_ref(m_process_properties_194, method, 'processProperties', 'Lorg/apache/commons/cli/Parser;.processProperties(Ljava/util/Properties;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_process_value_146, method, 'processValue', 'Lorg/apache/commons/cli/Option;.processValue(Ljava/lang/String;)V').
name_ref(m_property_names_65, method, 'propertyNames', 'Ljava/util/Properties;.propertyNames()Ljava/util/Enumeration<*>;').
name_ref(m_put_173, method, 'put', 'Ljava/util/Map;.put(TK;TV;)TV;').
name_ref(m_requires_arg_73, method, 'requiresArg', 'Lorg/apache/commons/cli/Option;.requiresArg()Z').
name_ref(m_resolve_option_34, method, 'resolveOption', 'Lorg/apache/commons/cli/CommandLine;.resolveOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;').
name_ref(m_set_arg_name_136, method, 'setArgName', 'Lorg/apache/commons/cli/Option;.setArgName(Ljava/lang/String;)V').
name_ref(m_set_args_140, method, 'setArgs', 'Lorg/apache/commons/cli/Option;.setArgs(I)V').
name_ref(m_set_description_133, method, 'setDescription', 'Lorg/apache/commons/cli/Option;.setDescription(Ljava/lang/String;)V').
name_ref(m_set_long_opt_128, method, 'setLongOpt', 'Lorg/apache/commons/cli/Option;.setLongOpt(Ljava/lang/String;)V').
name_ref(m_set_optional_arg_129, method, 'setOptionalArg', 'Lorg/apache/commons/cli/Option;.setOptionalArg(Z)V').
name_ref(m_set_options_184, method, 'setOptions', 'Lorg/apache/commons/cli/Parser;.setOptions(Lorg/apache/commons/cli/Options;)V').
name_ref(m_set_required_135, method, 'setRequired', 'Lorg/apache/commons/cli/Option;.setRequired(Z)V').
name_ref(m_set_type_126, method, 'setType', 'Lorg/apache/commons/cli/Option;.setType(Ljava/lang/Object;)V').
name_ref(m_set_up_2, method, 'setUp', 'Lorg/apache/commons/cli/BasicParserTest;.setUp()V').
name_ref(m_set_up_265, method, 'setUp', 'Lorg/apache/commons/cli/PosixParserTest;.setUp()V').
name_ref(m_set_up_3, method, 'setUp', 'Lorg/apache/commons/cli/ParserTestCase;.setUp()V').
name_ref(m_set_up_90, method, 'setUp', 'Lorg/apache/commons/cli/DefaultParserTest;.setUp()V').
name_ref(m_set_up_95, method, 'setUp', 'Lorg/apache/commons/cli/GnuParserTest;.setUp()V').
name_ref(m_set_value_separator_141, method, 'setValueSeparator', 'Lorg/apache/commons/cli/Option;.setValueSeparator(C)V').
name_ref(m_size_94, method, 'size', 'Ljava/util/List;.size()I').
name_ref(m_starts_with_276, method, 'startsWith', 'Ljava/lang/String;.startsWith(Ljava/lang/String;)Z').
name_ref(m_strip_leading_and_trailing_quotes_277, method, 'stripLeadingAndTrailingQuotes', 'Lorg/apache/commons/cli/Util;.stripLeadingAndTrailingQuotes(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_leading_hyphens_42, method, 'stripLeadingHyphens', 'Lorg/apache/commons/cli/Util;.stripLeadingHyphens(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_test_ambiguous_long_without_equal_single_dash_220, method, 'testAmbiguousLongWithoutEqualSingleDash', 'Lorg/apache/commons/cli/ParserTestCase;.testAmbiguousLongWithoutEqualSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_long_without_equal_single_dash_269, method, 'testAmbiguousLongWithoutEqualSingleDash', 'Lorg/apache/commons/cli/PosixParserTest;.testAmbiguousLongWithoutEqualSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_long_without_equal_single_dash_7, method, 'testAmbiguousLongWithoutEqualSingleDash', 'Lorg/apache/commons/cli/BasicParserTest;.testAmbiguousLongWithoutEqualSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_long_without_equal_single_dash_99, method, 'testAmbiguousLongWithoutEqualSingleDash', 'Lorg/apache/commons/cli/GnuParserTest;.testAmbiguousLongWithoutEqualSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option1_108, method, 'testAmbiguousPartialLongOption1', 'Lorg/apache/commons/cli/GnuParserTest;.testAmbiguousPartialLongOption1()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option1_19, method, 'testAmbiguousPartialLongOption1', 'Lorg/apache/commons/cli/BasicParserTest;.testAmbiguousPartialLongOption1()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option1_231, method, 'testAmbiguousPartialLongOption1', 'Lorg/apache/commons/cli/ParserTestCase;.testAmbiguousPartialLongOption1()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option2_109, method, 'testAmbiguousPartialLongOption2', 'Lorg/apache/commons/cli/GnuParserTest;.testAmbiguousPartialLongOption2()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option2_20, method, 'testAmbiguousPartialLongOption2', 'Lorg/apache/commons/cli/BasicParserTest;.testAmbiguousPartialLongOption2()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option2_232, method, 'testAmbiguousPartialLongOption2', 'Lorg/apache/commons/cli/ParserTestCase;.testAmbiguousPartialLongOption2()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option3_110, method, 'testAmbiguousPartialLongOption3', 'Lorg/apache/commons/cli/GnuParserTest;.testAmbiguousPartialLongOption3()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option3_21, method, 'testAmbiguousPartialLongOption3', 'Lorg/apache/commons/cli/BasicParserTest;.testAmbiguousPartialLongOption3()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option3_233, method, 'testAmbiguousPartialLongOption3', 'Lorg/apache/commons/cli/ParserTestCase;.testAmbiguousPartialLongOption3()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option4_111, method, 'testAmbiguousPartialLongOption4', 'Lorg/apache/commons/cli/GnuParserTest;.testAmbiguousPartialLongOption4()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option4_22, method, 'testAmbiguousPartialLongOption4', 'Lorg/apache/commons/cli/BasicParserTest;.testAmbiguousPartialLongOption4()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option4_234, method, 'testAmbiguousPartialLongOption4', 'Lorg/apache/commons/cli/ParserTestCase;.testAmbiguousPartialLongOption4()V|Ljava/lang/Exception;').
name_ref(m_test_ambiguous_partial_long_option4_275, method, 'testAmbiguousPartialLongOption4', 'Lorg/apache/commons/cli/PosixParserTest;.testAmbiguousPartialLongOption4()V|Ljava/lang/Exception;').
name_ref(m_test_argument_starting_with_hyphen_214, method, 'testArgumentStartingWithHyphen', 'Lorg/apache/commons/cli/ParserTestCase;.testArgumentStartingWithHyphen()V|Ljava/lang/Exception;').
name_ref(m_test_bursting_113, method, 'testBursting', 'Lorg/apache/commons/cli/GnuParserTest;.testBursting()V|Ljava/lang/Exception;').
name_ref(m_test_bursting_24, method, 'testBursting', 'Lorg/apache/commons/cli/BasicParserTest;.testBursting()V|Ljava/lang/Exception;').
name_ref(m_test_bursting_244, method, 'testBursting', 'Lorg/apache/commons/cli/ParserTestCase;.testBursting()V|Ljava/lang/Exception;').
name_ref(m_test_double_dash1_205, method, 'testDoubleDash1', 'Lorg/apache/commons/cli/ParserTestCase;.testDoubleDash1()V|Ljava/lang/Exception;').
name_ref(m_test_double_dash2_206, method, 'testDoubleDash2', 'Lorg/apache/commons/cli/ParserTestCase;.testDoubleDash2()V|Ljava/lang/Exception;').
name_ref(m_test_double_dash2_267, method, 'testDoubleDash2', 'Lorg/apache/commons/cli/PosixParserTest;.testDoubleDash2()V|Ljava/lang/Exception;').
name_ref(m_test_double_dash2_5, method, 'testDoubleDash2', 'Lorg/apache/commons/cli/BasicParserTest;.testDoubleDash2()V|Ljava/lang/Exception;').
name_ref(m_test_double_dash2_97, method, 'testDoubleDash2', 'Lorg/apache/commons/cli/GnuParserTest;.testDoubleDash2()V|Ljava/lang/Exception;').
name_ref(m_test_long_with_equal_double_dash_13, method, 'testLongWithEqualDoubleDash', 'Lorg/apache/commons/cli/BasicParserTest;.testLongWithEqualDoubleDash()V|Ljava/lang/Exception;').
name_ref(m_test_long_with_equal_double_dash_217, method, 'testLongWithEqualDoubleDash', 'Lorg/apache/commons/cli/ParserTestCase;.testLongWithEqualDoubleDash()V|Ljava/lang/Exception;').
name_ref(m_test_long_with_equal_single_dash_14, method, 'testLongWithEqualSingleDash', 'Lorg/apache/commons/cli/BasicParserTest;.testLongWithEqualSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_long_with_equal_single_dash_218, method, 'testLongWithEqualSingleDash', 'Lorg/apache/commons/cli/ParserTestCase;.testLongWithEqualSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_long_with_equal_single_dash_272, method, 'testLongWithEqualSingleDash', 'Lorg/apache/commons/cli/PosixParserTest;.testLongWithEqualSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_long_with_unexpected_argument1_101, method, 'testLongWithUnexpectedArgument1', 'Lorg/apache/commons/cli/GnuParserTest;.testLongWithUnexpectedArgument1()V|Ljava/lang/Exception;').
name_ref(m_test_long_with_unexpected_argument1_222, method, 'testLongWithUnexpectedArgument1', 'Lorg/apache/commons/cli/ParserTestCase;.testLongWithUnexpectedArgument1()V|Ljava/lang/Exception;').
name_ref(m_test_long_with_unexpected_argument1_271, method, 'testLongWithUnexpectedArgument1', 'Lorg/apache/commons/cli/PosixParserTest;.testLongWithUnexpectedArgument1()V|Ljava/lang/Exception;').
name_ref(m_test_long_with_unexpected_argument2_102, method, 'testLongWithUnexpectedArgument2', 'Lorg/apache/commons/cli/GnuParserTest;.testLongWithUnexpectedArgument2()V|Ljava/lang/Exception;').
name_ref(m_test_long_with_unexpected_argument2_223, method, 'testLongWithUnexpectedArgument2', 'Lorg/apache/commons/cli/ParserTestCase;.testLongWithUnexpectedArgument2()V|Ljava/lang/Exception;').
name_ref(m_test_long_without_equal_double_dash_221, method, 'testLongWithoutEqualDoubleDash', 'Lorg/apache/commons/cli/ParserTestCase;.testLongWithoutEqualDoubleDash()V|Ljava/lang/Exception;').
name_ref(m_test_long_without_equal_single_dash_219, method, 'testLongWithoutEqualSingleDash', 'Lorg/apache/commons/cli/ParserTestCase;.testLongWithoutEqualSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_long_without_equal_single_dash_268, method, 'testLongWithoutEqualSingleDash', 'Lorg/apache/commons/cli/PosixParserTest;.testLongWithoutEqualSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_long_without_equal_single_dash_6, method, 'testLongWithoutEqualSingleDash', 'Lorg/apache/commons/cli/BasicParserTest;.testLongWithoutEqualSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_long_without_equal_single_dash_98, method, 'testLongWithoutEqualSingleDash', 'Lorg/apache/commons/cli/GnuParserTest;.testLongWithoutEqualSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_missing_arg_204, method, 'testMissingArg', 'Lorg/apache/commons/cli/ParserTestCase;.testMissingArg()V|Ljava/lang/Exception;').
name_ref(m_test_missing_arg_with_bursting_115, method, 'testMissingArgWithBursting', 'Lorg/apache/commons/cli/GnuParserTest;.testMissingArgWithBursting()V|Ljava/lang/Exception;').
name_ref(m_test_missing_arg_with_bursting_246, method, 'testMissingArgWithBursting', 'Lorg/apache/commons/cli/ParserTestCase;.testMissingArgWithBursting()V|Ljava/lang/Exception;').
name_ref(m_test_missing_arg_with_bursting_26, method, 'testMissingArgWithBursting', 'Lorg/apache/commons/cli/BasicParserTest;.testMissingArgWithBursting()V|Ljava/lang/Exception;').
name_ref(m_test_missing_required_group_240, method, 'testMissingRequiredGroup', 'Lorg/apache/commons/cli/ParserTestCase;.testMissingRequiredGroup()V|Ljava/lang/Exception;').
name_ref(m_test_missing_required_option_238, method, 'testMissingRequiredOption', 'Lorg/apache/commons/cli/ParserTestCase;.testMissingRequiredOption()V').
name_ref(m_test_missing_required_options_239, method, 'testMissingRequiredOptions', 'Lorg/apache/commons/cli/ParserTestCase;.testMissingRequiredOptions()V').
name_ref(m_test_multiple_201, method, 'testMultiple', 'Lorg/apache/commons/cli/ParserTestCase;.testMultiple()V|Ljava/lang/Exception;').
name_ref(m_test_multiple_with_long_202, method, 'testMultipleWithLong', 'Lorg/apache/commons/cli/ParserTestCase;.testMultipleWithLong()V|Ljava/lang/Exception;').
name_ref(m_test_negative_argument_212, method, 'testNegativeArgument', 'Lorg/apache/commons/cli/ParserTestCase;.testNegativeArgument()V|Ljava/lang/Exception;').
name_ref(m_test_negative_option_100, method, 'testNegativeOption', 'Lorg/apache/commons/cli/GnuParserTest;.testNegativeOption()V|Ljava/lang/Exception;').
name_ref(m_test_negative_option_213, method, 'testNegativeOption', 'Lorg/apache/commons/cli/ParserTestCase;.testNegativeOption()V|Ljava/lang/Exception;').
name_ref(m_test_negative_option_270, method, 'testNegativeOption', 'Lorg/apache/commons/cli/PosixParserTest;.testNegativeOption()V|Ljava/lang/Exception;').
name_ref(m_test_negative_option_8, method, 'testNegativeOption', 'Lorg/apache/commons/cli/BasicParserTest;.testNegativeOption()V|Ljava/lang/Exception;').
name_ref(m_test_option_and_required_option_237, method, 'testOptionAndRequiredOption', 'Lorg/apache/commons/cli/ParserTestCase;.testOptionAndRequiredOption()V|Ljava/lang/Exception;').
name_ref(m_test_option_group_241, method, 'testOptionGroup', 'Lorg/apache/commons/cli/ParserTestCase;.testOptionGroup()V|Ljava/lang/Exception;').
name_ref(m_test_option_group_long_242, method, 'testOptionGroupLong', 'Lorg/apache/commons/cli/ParserTestCase;.testOptionGroupLong()V|Ljava/lang/Exception;').
name_ref(m_test_partial_long_option_single_dash_112, method, 'testPartialLongOptionSingleDash', 'Lorg/apache/commons/cli/GnuParserTest;.testPartialLongOptionSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_partial_long_option_single_dash_23, method, 'testPartialLongOptionSingleDash', 'Lorg/apache/commons/cli/BasicParserTest;.testPartialLongOptionSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_partial_long_option_single_dash_235, method, 'testPartialLongOptionSingleDash', 'Lorg/apache/commons/cli/ParserTestCase;.testPartialLongOptionSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_properties_option1_225, method, 'testPropertiesOption1', 'Lorg/apache/commons/cli/ParserTestCase;.testPropertiesOption1()V|Ljava/lang/Exception;').
name_ref(m_test_properties_option1_9, method, 'testPropertiesOption1', 'Lorg/apache/commons/cli/BasicParserTest;.testPropertiesOption1()V|Ljava/lang/Exception;').
name_ref(m_test_properties_option2_10, method, 'testPropertiesOption2', 'Lorg/apache/commons/cli/BasicParserTest;.testPropertiesOption2()V|Ljava/lang/Exception;').
name_ref(m_test_properties_option2_226, method, 'testPropertiesOption2', 'Lorg/apache/commons/cli/ParserTestCase;.testPropertiesOption2()V|Ljava/lang/Exception;').
name_ref(m_test_property_option_flags_252, method, 'testPropertyOptionFlags', 'Lorg/apache/commons/cli/ParserTestCase;.testPropertyOptionFlags()V|Ljava/lang/Exception;').
name_ref(m_test_property_option_group_257, method, 'testPropertyOptionGroup', 'Lorg/apache/commons/cli/ParserTestCase;.testPropertyOptionGroup()V|Ljava/lang/Exception;').
name_ref(m_test_property_option_multiple_values_253, method, 'testPropertyOptionMultipleValues', 'Lorg/apache/commons/cli/ParserTestCase;.testPropertyOptionMultipleValues()V|Ljava/lang/Exception;').
name_ref(m_test_property_option_required_255, method, 'testPropertyOptionRequired', 'Lorg/apache/commons/cli/ParserTestCase;.testPropertyOptionRequired()V|Ljava/lang/Exception;').
name_ref(m_test_property_option_singular_value_251, method, 'testPropertyOptionSingularValue', 'Lorg/apache/commons/cli/ParserTestCase;.testPropertyOptionSingularValue()V|Ljava/lang/Exception;').
name_ref(m_test_property_option_unexpected_256, method, 'testPropertyOptionUnexpected', 'Lorg/apache/commons/cli/ParserTestCase;.testPropertyOptionUnexpected()V|Ljava/lang/Exception;').
name_ref(m_test_property_override_values_254, method, 'testPropertyOverrideValues', 'Lorg/apache/commons/cli/ParserTestCase;.testPropertyOverrideValues()V|Ljava/lang/Exception;').
name_ref(m_test_reuse_options_twice_243, method, 'testReuseOptionsTwice', 'Lorg/apache/commons/cli/ParserTestCase;.testReuseOptionsTwice()V|Ljava/lang/Exception;').
name_ref(m_test_short_with_equal_11, method, 'testShortWithEqual', 'Lorg/apache/commons/cli/BasicParserTest;.testShortWithEqual()V|Ljava/lang/Exception;').
name_ref(m_test_short_with_equal_215, method, 'testShortWithEqual', 'Lorg/apache/commons/cli/ParserTestCase;.testShortWithEqual()V|Ljava/lang/Exception;').
name_ref(m_test_short_with_equal_273, method, 'testShortWithEqual', 'Lorg/apache/commons/cli/PosixParserTest;.testShortWithEqual()V|Ljava/lang/Exception;').
name_ref(m_test_short_with_unexpected_argument_103, method, 'testShortWithUnexpectedArgument', 'Lorg/apache/commons/cli/GnuParserTest;.testShortWithUnexpectedArgument()V|Ljava/lang/Exception;').
name_ref(m_test_short_with_unexpected_argument_224, method, 'testShortWithUnexpectedArgument', 'Lorg/apache/commons/cli/ParserTestCase;.testShortWithUnexpectedArgument()V|Ljava/lang/Exception;').
name_ref(m_test_short_without_equal_12, method, 'testShortWithoutEqual', 'Lorg/apache/commons/cli/BasicParserTest;.testShortWithoutEqual()V|Ljava/lang/Exception;').
name_ref(m_test_short_without_equal_216, method, 'testShortWithoutEqual', 'Lorg/apache/commons/cli/ParserTestCase;.testShortWithoutEqual()V|Ljava/lang/Exception;').
name_ref(m_test_simple_long_200, method, 'testSimpleLong', 'Lorg/apache/commons/cli/ParserTestCase;.testSimpleLong()V|Ljava/lang/Exception;').
name_ref(m_test_simple_short_199, method, 'testSimpleShort', 'Lorg/apache/commons/cli/ParserTestCase;.testSimpleShort()V|Ljava/lang/Exception;').
name_ref(m_test_single_dash_207, method, 'testSingleDash', 'Lorg/apache/commons/cli/ParserTestCase;.testSingleDash()V|Ljava/lang/Exception;').
name_ref(m_test_stop_at_expected_arg_209, method, 'testStopAtExpectedArg', 'Lorg/apache/commons/cli/ParserTestCase;.testStopAtExpectedArg()V|Ljava/lang/Exception;').
name_ref(m_test_stop_at_non_option_long_211, method, 'testStopAtNonOptionLong', 'Lorg/apache/commons/cli/ParserTestCase;.testStopAtNonOptionLong()V|Ljava/lang/Exception;').
name_ref(m_test_stop_at_non_option_short_210, method, 'testStopAtNonOptionShort', 'Lorg/apache/commons/cli/ParserTestCase;.testStopAtNonOptionShort()V|Ljava/lang/Exception;').
name_ref(m_test_stop_at_unexpected_arg_208, method, 'testStopAtUnexpectedArg', 'Lorg/apache/commons/cli/ParserTestCase;.testStopAtUnexpectedArg()V|Ljava/lang/Exception;').
name_ref(m_test_stop_bursting2_117, method, 'testStopBursting2', 'Lorg/apache/commons/cli/GnuParserTest;.testStopBursting2()V|Ljava/lang/Exception;').
name_ref(m_test_stop_bursting2_248, method, 'testStopBursting2', 'Lorg/apache/commons/cli/ParserTestCase;.testStopBursting2()V|Ljava/lang/Exception;').
name_ref(m_test_stop_bursting2_28, method, 'testStopBursting2', 'Lorg/apache/commons/cli/BasicParserTest;.testStopBursting2()V|Ljava/lang/Exception;').
name_ref(m_test_stop_bursting_116, method, 'testStopBursting', 'Lorg/apache/commons/cli/GnuParserTest;.testStopBursting()V|Ljava/lang/Exception;').
name_ref(m_test_stop_bursting_247, method, 'testStopBursting', 'Lorg/apache/commons/cli/ParserTestCase;.testStopBursting()V|Ljava/lang/Exception;').
name_ref(m_test_stop_bursting_27, method, 'testStopBursting', 'Lorg/apache/commons/cli/BasicParserTest;.testStopBursting()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option1_104, method, 'testUnambiguousPartialLongOption1', 'Lorg/apache/commons/cli/GnuParserTest;.testUnambiguousPartialLongOption1()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option1_15, method, 'testUnambiguousPartialLongOption1', 'Lorg/apache/commons/cli/BasicParserTest;.testUnambiguousPartialLongOption1()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option1_227, method, 'testUnambiguousPartialLongOption1', 'Lorg/apache/commons/cli/ParserTestCase;.testUnambiguousPartialLongOption1()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option2_105, method, 'testUnambiguousPartialLongOption2', 'Lorg/apache/commons/cli/GnuParserTest;.testUnambiguousPartialLongOption2()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option2_16, method, 'testUnambiguousPartialLongOption2', 'Lorg/apache/commons/cli/BasicParserTest;.testUnambiguousPartialLongOption2()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option2_228, method, 'testUnambiguousPartialLongOption2', 'Lorg/apache/commons/cli/ParserTestCase;.testUnambiguousPartialLongOption2()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option3_106, method, 'testUnambiguousPartialLongOption3', 'Lorg/apache/commons/cli/GnuParserTest;.testUnambiguousPartialLongOption3()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option3_17, method, 'testUnambiguousPartialLongOption3', 'Lorg/apache/commons/cli/BasicParserTest;.testUnambiguousPartialLongOption3()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option3_229, method, 'testUnambiguousPartialLongOption3', 'Lorg/apache/commons/cli/ParserTestCase;.testUnambiguousPartialLongOption3()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option4_107, method, 'testUnambiguousPartialLongOption4', 'Lorg/apache/commons/cli/GnuParserTest;.testUnambiguousPartialLongOption4()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option4_18, method, 'testUnambiguousPartialLongOption4', 'Lorg/apache/commons/cli/BasicParserTest;.testUnambiguousPartialLongOption4()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option4_230, method, 'testUnambiguousPartialLongOption4', 'Lorg/apache/commons/cli/ParserTestCase;.testUnambiguousPartialLongOption4()V|Ljava/lang/Exception;').
name_ref(m_test_unambiguous_partial_long_option4_274, method, 'testUnambiguousPartialLongOption4', 'Lorg/apache/commons/cli/PosixParserTest;.testUnambiguousPartialLongOption4()V|Ljava/lang/Exception;').
name_ref(m_test_unlimited_args_249, method, 'testUnlimitedArgs', 'Lorg/apache/commons/cli/ParserTestCase;.testUnlimitedArgs()V|Ljava/lang/Exception;').
name_ref(m_test_unrecognized_option_203, method, 'testUnrecognizedOption', 'Lorg/apache/commons/cli/ParserTestCase;.testUnrecognizedOption()V|Ljava/lang/Exception;').
name_ref(m_test_unrecognized_option_with_bursting_114, method, 'testUnrecognizedOptionWithBursting', 'Lorg/apache/commons/cli/GnuParserTest;.testUnrecognizedOptionWithBursting()V|Ljava/lang/Exception;').
name_ref(m_test_unrecognized_option_with_bursting_245, method, 'testUnrecognizedOptionWithBursting', 'Lorg/apache/commons/cli/ParserTestCase;.testUnrecognizedOptionWithBursting()V|Ljava/lang/Exception;').
name_ref(m_test_unrecognized_option_with_bursting_25, method, 'testUnrecognizedOptionWithBursting', 'Lorg/apache/commons/cli/BasicParserTest;.testUnrecognizedOptionWithBursting()V|Ljava/lang/Exception;').
name_ref(m_test_with_required_option_236, method, 'testWithRequiredOption', 'Lorg/apache/commons/cli/ParserTestCase;.testWithRequiredOption()V|Ljava/lang/Exception;').
name_ref(m_to_array_93, method, 'toArray', 'Ljava/util/List;.toArray<T:Ljava/lang/Object;>([TT;)[TT;').
name_ref(m_to_string_153, method, 'toString', 'Lorg/apache/commons/cli/Option;.toString()Ljava/lang/String;').
name_ref(m_to_string_183, method, 'toString', 'Lorg/apache/commons/cli/Options;.toString()Ljava/lang/String;').
name_ref(m_to_string_67, method, 'toString', 'Ljava/lang/Object;.toString()Ljava/lang/String;').
name_ref(m_update_required_options_198, method, 'updateRequiredOptions', 'Lorg/apache/commons/cli/Parser;.updateRequiredOptions(Lorg/apache/commons/cli/Option;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_update_required_options_88, method, 'updateRequiredOptions', 'Lorg/apache/commons/cli/DefaultParser;.updateRequiredOptions(Lorg/apache/commons/cli/Option;)V|Lorg/apache/commons/cli/AlreadySelectedException;').
name_ref(m_validate_option_121, method, 'validateOption', 'Lorg/apache/commons/cli/OptionValidator;.validateOption(Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;').
name_ref(m_values_169, method, 'values', 'Ljava/util/Map;.values()Ljava/util/Collection<TV;>;').
name_ref(q_length_1, q_name, 'arguments.length', 'Lorg/apache/commons/cli/GnuParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#arguments#0#1:.length)I').

%%% End of Code Facts