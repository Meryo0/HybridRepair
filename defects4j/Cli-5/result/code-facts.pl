%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(bug_cli133test_1, 'org.apache.commons.cli.bug.BugCLI133Test').
class(command_line_1, 'org.apache.commons.cli.CommandLine').
class(util_test_1, 'org.apache.commons.cli.UtilTest').
class(option_validator_1, 'org.apache.commons.cli.OptionValidator').
class(posix_parser_1, 'org.apache.commons.cli.PosixParser').
class(option_1, 'org.apache.commons.cli.Option').
class(parser_1, 'org.apache.commons.cli.Parser').
class(options_1, 'org.apache.commons.cli.Options').
class(util_1, 'org.apache.commons.cli.Util').

%%% Methods
%bug_cli133test_1 - org.apache.commons.cli.bug.BugCLI133Test
method(m_test_order_120, range(bug_cli133test_1, 986, 329, 26, 33)).
%command_line_1 - org.apache.commons.cli.CommandLine
method(m_command_line_3, range(command_line_1, 1862, 97, 52, 58)).
method(m_has_option_4, range(command_line_1, 1965, 257, 60, 69)).
method(m_has_option_7, range(command_line_1, 2228, 252, 71, 80)).
method(m_get_option_object_8, range(command_line_1, 2486, 524, 82, 101)).
method(m_get_option_object_9, range(command_line_1, 3016, 271, 103, 112)).
method(m_get_option_value_10, range(command_line_1, 3293, 371, 114, 126)).
method(m_get_option_value_11, range(command_line_1, 3670, 330, 128, 138)).
method(m_get_option_values_12, range(command_line_1, 4006, 444, 140, 157)).
method(m_resolve_option_6, range(command_line_1, 4456, 650, 159, 181)).
method(m_get_option_values_14, range(command_line_1, 5112, 337, 183, 193)).
method(m_get_option_value_15, range(command_line_1, 5455, 511, 195, 209)).
method(m_get_option_value_16, range(command_line_1, 5972, 482, 211, 223)).
method(m_get_args_17, range(command_line_1, 6460, 302, 225, 237)).
method(m_get_arg_list_18, range(command_line_1, 6768, 228, 239, 247)).
method(m_add_arg_19, range(command_line_1, 7540, 184, 271, 279)).
method(m_add_option_20, range(command_line_1, 7730, 214, 281, 290)).
method(m_iterator_21, range(command_line_1, 7950, 281, 292, 301)).
method(m_get_options_22, range(command_line_1, 8237, 400, 303, 317)).
%util_test_1 - org.apache.commons.cli.UtilTest
method(m_test_strip_leading_hyphens_117, range(util_test_1, 944, 220, 25, 29)).
%option_validator_1 - org.apache.commons.cli.OptionValidator
method(m_validate_option_27, range(option_validator_1, 967, 1575, 26, 77)).
method(m_is_valid_opt_68, range(option_validator_1, 2548, 354, 79, 89)).
method(m_is_valid_char_69, range(option_validator_1, 2908, 296, 91, 100)).
%posix_parser_1 - org.apache.commons.cli.PosixParser
method(m_init_105, range(posix_parser_1, 1504, 329, 45, 55)).
method(m_flatten_106, range(posix_parser_1, 1839, 4125, 57, 164)).
method(m_gobble_109, range(posix_parser_1, 5970, 344, 166, 180)).
method(m_process_110, range(posix_parser_1, 6320, 1125, 182, 215)).
method(m_process_single_hyphen_111, range(posix_parser_1, 7451, 246, 217, 226)).
method(m_process_option_token_112, range(posix_parser_1, 7703, 842, 228, 251)).
method(m_burst_token_113, range(posix_parser_1, 8551, 2163, 253, 310)).
%option_1 - org.apache.commons.cli.Option
method(m_option_24, range(option_1, 2805, 461, 81, 94)).
method(m_option_26, range(option_1, 3272, 553, 96, 110)).
method(m_option_25, range(option_1, 3831, 956, 112, 141)).
method(m_get_id_28, range(option_1, 4793, 280, 143, 153)).
method(m_get_key_29, range(option_1, 5079, 304, 155, 169)).
method(m_get_opt_30, range(option_1, 5389, 369, 171, 184)).
method(m_get_type_31, range(option_1, 5764, 165, 186, 194)).
method(m_set_type_32, range(option_1, 5935, 173, 196, 204)).
method(m_get_long_opt_33, range(option_1, 6114, 212, 206, 214)).
method(m_set_long_opt_34, range(option_1, 6332, 198, 216, 224)).
method(m_set_optional_arg_35, range(option_1, 6536, 278, 226, 235)).
method(m_has_optional_arg_36, range(option_1, 6820, 157, 237, 243)).
method(m_has_long_opt_37, range(option_1, 6983, 217, 245, 253)).
method(m_has_arg_38, range(option_1, 7206, 259, 255, 263)).
method(m_get_description_39, range(option_1, 7471, 216, 265, 273)).
method(m_set_description_40, range(option_1, 7692, 239, 275, 283)).
method(m_is_required_41, range(option_1, 7937, 215, 285, 293)).
method(m_set_required_42, range(option_1, 8158, 222, 295, 303)).
method(m_set_arg_name_43, range(option_1, 8386, 221, 305, 313)).
method(m_get_arg_name_44, range(option_1, 8613, 199, 315, 323)).
method(m_has_arg_name_45, range(option_1, 8818, 293, 325, 335)).
method(m_has_args_46, range(option_1, 9117, 287, 337, 346)).
method(m_set_args_47, range(option_1, 9410, 209, 348, 356)).
method(m_set_value_separator_48, range(option_1, 9625, 272, 358, 367)).
method(m_get_value_separator_49, range(option_1, 9903, 188, 369, 377)).
method(m_has_value_separator_50, range(option_1, 10097, 241, 379, 387)).
method(m_get_args_51, range(option_1, 10344, 206, 389, 397)).
method(m_add_value_52, range(option_1, 10556, 349, 399, 414)).
method(m_process_value_53, range(option_1, 10911, 1357, 416, 464)).
method(m_add_54, range(option_1, 12274, 567, 466, 485)).
method(m_get_value_55, range(option_1, 12847, 330, 487, 497)).
method(m_get_value_56, range(option_1, 13183, 585, 499, 515)).
method(m_get_value_57, range(option_1, 13774, 488, 517, 532)).
method(m_get_values_58, range(option_1, 14268, 374, 534, 545)).
method(m_get_values_list_59, range(option_1, 14648, 182, 547, 554)).
method(m_to_string_60, range(option_1, 14836, 668, 556, 589)).
method(m_has_no_values_61, range(option_1, 15510, 206, 591, 599)).
method(m_equals_62, range(option_1, 15722, 537, 601, 625)).
method(m_hash_code_63, range(option_1, 16265, 208, 627, 633)).
method(m_clear_values_64, range(option_1, 16479, 321, 635, 644)).
%parser_1 - org.apache.commons.cli.Parser
method(m_flatten_90, range(parser_1, 1425, 600, 44, 56)).
method(m_parse_91, range(parser_1, 2031, 526, 58, 72)).
method(m_parse_93, range(parser_1, 2563, 661, 74, 91)).
method(m_parse_94, range(parser_1, 3230, 776, 93, 113)).
method(m_parse_92, range(parser_1, 4012, 3237, 115, 228)).
method(m_process_properties_100, range(parser_1, 7255, 1665, 230, 281)).
method(m_check_required_options_101, range(parser_1, 8926, 900, 283, 311)).
method(m_process_args_103, range(parser_1, 9832, 1346, 313, 357)).
method(m_process_option_104, range(parser_1, 11184, 1708, 359, 416)).
%options_1 - org.apache.commons.cli.Options
method(m_options_72, range(options_1, 2000, 104, 57, 62)).
method(m_add_option_group_73, range(options_1, 2110, 783, 64, 94)).
method(m_get_option_groups_74, range(options_1, 2903, 226, 96, 102)).
method(m_add_option_75, range(options_1, 3135, 530, 104, 118)).
method(m_add_option_76, range(options_1, 3671, 665, 120, 136)).
method(m_add_option_77, range(options_1, 4342, 711, 138, 166)).
method(m_get_options_79, range(options_1, 5059, 269, 168, 176)).
method(m_help_options_80, range(options_1, 5334, 581, 178, 202)).
method(m_get_required_options_85, range(options_1, 5921, 226, 204, 213)).
method(m_get_option_86, range(options_1, 6153, 414, 215, 231)).
method(m_has_option_87, range(options_1, 6573, 432, 233, 246)).
method(m_get_option_group_88, range(options_1, 7011, 385, 248, 259)).
method(m_to_string_89, range(options_1, 7402, 405, 261, 277)).
%util_1 - org.apache.commons.cli.Util
method(m_strip_leading_hyphens_13, range(util_1, 983, 529, 26, 46)).
method(m_strip_leading_and_trailing_quotes_116, range(util_1, 1518, 606, 48, 66)).

%%% Blocks
%bug_cli133test_1 - org.apache.commons.cli.bug.BugCLI133Test
block(bug_cli133test_1_block1, block, bug_cli133test_1_code5, body, range(bug_cli133test_1, 1032, 283, 26, 33)).
%command_line_1 - org.apache.commons.cli.CommandLine
block(command_line_1_block1, block, command_line_1_code13, body, range(command_line_1, 1927, 32, 56, 58)).
block(command_line_1_block2, block, command_line_1_code14, body, range(command_line_1, 2161, 61, 67, 69)).
block(command_line_1_block3, block, command_line_1_code15, body, range(command_line_1, 4691, 415, 165, 181)).
%util_test_1 - org.apache.commons.cli.UtilTest
block(util_test_1_block1, block, util_test_1_code5, body, range(util_test_1, 982, 182, 25, 29)).
%option_validator_1 - org.apache.commons.cli.OptionValidator
block(option_validator_1_block1, block, option_validator_1_code3, body, range(option_validator_1, 1639, 903, 43, 77)).
block(option_validator_1_block2, block, option_validator_1_stmt2, then_statement, range(option_validator_1, 1832, 250, 52, 60)).
block(option_validator_1_block3, block, option_validator_1_code6, body, range(option_validator_1, 2822, 80, 87, 89)).
block(option_validator_1_block4, block, option_validator_1_code7, body, range(option_validator_1, 3147, 57, 98, 100)).
%posix_parser_1 - org.apache.commons.cli.PosixParser
block(posix_parser_1_block1, block, posix_parser_1_code10, body, range(posix_parser_1, 1744, 89, 51, 55)).
block(posix_parser_1_block2, block, posix_parser_1_code11, body, range(posix_parser_1, 4091, 1873, 97, 164)).
%option_1 - org.apache.commons.cli.Option
block(option_1_block1, block, option_1_code16, body, range(option_1, 3214, 52, 92, 94)).
block(option_1_block2, block, option_1_code17, body, range(option_1, 4426, 361, 126, 141)).
block(option_1_block3, block, option_1_code18, body, range(option_1, 5216, 167, 161, 169)).
block(option_1_block4, block, option_1_code19, body, range(option_1, 7154, 46, 251, 253)).
block(option_1_block5, block, option_1_code20, body, range(option_1, 8115, 37, 291, 293)).
block(option_1_block6, block, option_1_code21, body, range(option_1, 16764, 36, 642, 644)).
%parser_1 - org.apache.commons.cli.Parser
block(parser_1_block1, block, parser_1_code6, body, range(parser_1, 2495, 62, 70, 72)).
block(parser_1_block2, block, parser_1_code7, body, range(parser_1, 4743, 2506, 133, 228)).
block(parser_1_block3, block, parser_1_stmt3, body, range(parser_1, 4964, 87, 138, 141)).
block(parser_1_block4, block, parser_1_stmt9, then_statement, range(parser_1, 5219, 50, 149, 151)).
block(parser_1_block5, block, parser_1_code23, body, range(parser_1, 7493, 1427, 237, 281)).
block(parser_1_block6, block, parser_1_stmt17, then_statement, range(parser_1, 7535, 31, 239, 241)).
block(parser_1_block7, block, parser_1_code24, body, range(parser_1, 9228, 598, 292, 311)).
%options_1 - org.apache.commons.cli.Options
block(options_1_block1, block, options_1_code23, body, range(options_1, 2072, 32, 60, 62)).
block(options_1_block2, block, options_1_code24, body, range(options_1, 4533, 520, 145, 166)).
block(options_1_block3, block, options_1_code27, body, range(options_1, 5472, 443, 184, 202)).
block(options_1_block4, block, options_1_code34, body, range(options_1, 6111, 36, 211, 213)).
%util_1 - org.apache.commons.cli.Util
block(util_1_block1, block, util_1_code3, body, range(util_1, 1270, 242, 35, 46)).
block(util_1_block2, block, util_1_stmt1, then_statement, range(util_1, 1314, 62, 37, 39)).
block(util_1_block3, block, util_1_stmt3, then_statement, range(util_1, 1423, 62, 41, 43)).

%%% Statements
%bug_cli133test_1 - org.apache.commons.cli.bug.BugCLI133Test
stmt(bug_cli133test_1_stmt1, variable_declaration_statement, bug_cli133test_1_block1, (statements, 0), range(bug_cli133test_1, 1042, 42, 27, 27)).
stmt(bug_cli133test_1_stmt2, variable_declaration_statement, bug_cli133test_1_block1, (statements, 1), range(bug_cli133test_1, 1093, 29, 28, 28)).
stmt(bug_cli133test_1_stmt3, expression_statement, bug_cli133test_1_block1, (statements, 2), range(bug_cli133test_1, 1131, 24, 29, 29)).
stmt(bug_cli133test_1_stmt4, variable_declaration_statement, bug_cli133test_1_block1, (statements, 3), range(bug_cli133test_1, 1164, 44, 30, 30)).
stmt(bug_cli133test_1_stmt5, variable_declaration_statement, bug_cli133test_1_block1, (statements, 4), range(bug_cli133test_1, 1217, 49, 31, 31)).
stmt(bug_cli133test_1_stmt6, expression_statement, bug_cli133test_1_block1, (statements, 5), range(bug_cli133test_1, 1275, 34, 32, 32)).
%command_line_1 - org.apache.commons.cli.CommandLine
stmt(command_line_1_stmt1, return_statement, command_line_1_block2, (statements, 0), range(command_line_1, 2171, 45, 68, 68)).
stmt(command_line_1_stmt2, expression_statement, command_line_1_block3, (statements, 0), range(command_line_1, 4701, 36, 166, 166)).
%util_test_1 - org.apache.commons.cli.UtilTest
stmt(util_test_1_stmt1, expression_statement, util_test_1_block1, (statements, 0), range(util_test_1, 992, 50, 26, 26)).
stmt(util_test_1_stmt2, expression_statement, util_test_1_block1, (statements, 1), range(util_test_1, 1051, 55, 27, 27)).
stmt(util_test_1_stmt3, expression_statement, util_test_1_block1, (statements, 2), range(util_test_1, 1115, 43, 28, 28)).
%option_validator_1 - org.apache.commons.cli.OptionValidator
stmt(option_validator_1_stmt1, if_statement, option_validator_1_block1, (statements, 0), range(option_validator_1, 1687, 849, 45, 76)).
stmt(option_validator_1_stmt2, if_statement, option_validator_1_stmt1, elseStatement, range(option_validator_1, 1801, 735, 51, 76)).
stmt(option_validator_1_stmt3, variable_declaration_statement, option_validator_1_block2, (statements, 0), range(option_validator_1, 1846, 24, 53, 53)).
stmt(option_validator_1_stmt4, if_statement, option_validator_1_block2, (statements, 1), range(option_validator_1, 1884, 188, 55, 59)).
stmt(option_validator_1_stmt5, return_statement, option_validator_1_block3, (statements, 0), range(option_validator_1, 2832, 64, 88, 88)).
stmt(option_validator_1_stmt6, return_statement, option_validator_1_block4, (statements, 0), range(option_validator_1, 3157, 41, 99, 99)).
%posix_parser_1 - org.apache.commons.cli.PosixParser
stmt(posix_parser_1_stmt1, expression_statement, posix_parser_1_block1, (statements, 0), range(posix_parser_1, 1754, 19, 52, 52)).
stmt(posix_parser_1_stmt2, expression_statement, posix_parser_1_block1, (statements, 1), range(posix_parser_1, 1782, 15, 53, 53)).
stmt(posix_parser_1_stmt3, expression_statement, posix_parser_1_block1, (statements, 2), range(posix_parser_1, 1806, 21, 54, 54)).
stmt(posix_parser_1_stmt4, expression_statement, posix_parser_1_block2, (statements, 0), range(posix_parser_1, 4101, 7, 98, 98)).
stmt(posix_parser_1_stmt5, expression_statement, posix_parser_1_block2, (statements, 1), range(posix_parser_1, 4117, 23, 99, 99)).
stmt(posix_parser_1_stmt6, variable_declaration_statement, posix_parser_1_block2, (statements, 2), range(posix_parser_1, 4201, 52, 102, 102)).
stmt(posix_parser_1_stmt7, while_statement, posix_parser_1_block2, (statements, 4), range(posix_parser_1, 4328, 1560, 106, 161)).
stmt(posix_parser_1_stmt8, return_statement, posix_parser_1_block2, (statements, 5), range(posix_parser_1, 5898, 60, 163, 163)).
%option_1 - org.apache.commons.cli.Option
stmt(option_1_stmt1, constructor_invocation, option_1_block1, (statements, 0), range(option_1, 3224, 36, 93, 93)).
stmt(option_1_stmt2, expression_statement, option_1_block2, (statements, 0), range(option_1, 4479, 36, 128, 128)).
stmt(option_1_stmt3, expression_statement, option_1_block2, (statements, 1), range(option_1, 4525, 15, 130, 130)).
stmt(option_1_stmt4, expression_statement, option_1_block2, (statements, 2), range(option_1, 4549, 23, 131, 131)).
stmt(option_1_stmt5, if_statement, option_1_block2, (statements, 3), range(option_1, 4644, 66, 134, 137)).
stmt(option_1_stmt6, expression_statement, option_1_block2, (statements, 4), range(option_1, 4720, 21, 139, 139)).
stmt(option_1_stmt7, expression_statement, option_1_block2, (statements, 5), range(option_1, 4750, 31, 140, 140)).
stmt(option_1_stmt8, if_statement, option_1_block3, (statements, 0), range(option_1, 5282, 69, 163, 166)).
stmt(option_1_stmt9, return_statement, option_1_block3, (statements, 1), range(option_1, 5361, 16, 168, 168)).
stmt(option_1_stmt10, return_statement, option_1_block4, (statements, 0), range(option_1, 7164, 30, 252, 252)).
stmt(option_1_stmt11, return_statement, option_1_block5, (statements, 0), range(option_1, 8125, 21, 292, 292)).
stmt(option_1_stmt12, expression_statement, option_1_block6, (statements, 0), range(option_1, 16774, 20, 643, 643)).
%parser_1 - org.apache.commons.cli.Parser
stmt(parser_1_stmt1, return_statement, parser_1_block1, (statements, 0), range(parser_1, 2505, 46, 71, 71)).
stmt(parser_1_stmt2, expression_statement, parser_1_block2, (statements, 0), range(parser_1, 4783, 23, 135, 135)).
stmt(parser_1_stmt3, for_statement, parser_1_block2, (statements, 1), range(parser_1, 4896, 155, 138, 141)).
stmt(parser_1_stmt4, variable_declaration_statement, parser_1_block3, (statements, 0), range(parser_1, 4978, 32, 139, 139)).
stmt(parser_1_stmt5, expression_statement, parser_1_block3, (statements, 1), range(parser_1, 5023, 18, 140, 140)).
stmt(parser_1_stmt6, expression_statement, parser_1_block2, (statements, 2), range(parser_1, 5061, 47, 143, 143)).
stmt(parser_1_stmt7, expression_statement, parser_1_block2, (statements, 3), range(parser_1, 5117, 24, 144, 144)).
stmt(parser_1_stmt8, variable_declaration_statement, parser_1_block2, (statements, 4), range(parser_1, 5151, 27, 146, 146)).
stmt(parser_1_stmt9, if_statement, parser_1_block2, (statements, 5), range(parser_1, 5188, 81, 148, 151)).
stmt(parser_1_stmt10, expression_statement, parser_1_block4, (statements, 0), range(parser_1, 5233, 26, 150, 150)).
stmt(parser_1_stmt11, variable_declaration_statement, parser_1_block2, (statements, 6), range(parser_1, 5279, 178, 153, 155)).
stmt(parser_1_stmt12, variable_declaration_statement, parser_1_block2, (statements, 7), range(parser_1, 5467, 49, 157, 157)).
stmt(parser_1_stmt13, while_statement, parser_1_block2, (statements, 8), range(parser_1, 5566, 1584, 160, 222)).
stmt(parser_1_stmt14, expression_statement, parser_1_block2, (statements, 9), range(parser_1, 7160, 30, 224, 224)).
stmt(parser_1_stmt15, expression_statement, parser_1_block2, (statements, 10), range(parser_1, 7199, 23, 225, 225)).
stmt(parser_1_stmt16, return_statement, parser_1_block2, (statements, 11), range(parser_1, 7232, 11, 227, 227)).
stmt(parser_1_stmt17, if_statement, parser_1_block5, (statements, 0), range(parser_1, 7503, 63, 238, 241)).
stmt(parser_1_stmt18, return_statement, parser_1_block6, (statements, 0), range(parser_1, 7549, 7, 240, 240)).
stmt(parser_1_stmt19, if_statement, parser_1_block7, (statements, 0), range(parser_1, 9320, 500, 295, 310)).
%options_1 - org.apache.commons.cli.Options
stmt(options_1_stmt1, variable_declaration_statement, options_1_block2, (statements, 0), range(options_1, 4543, 26, 146, 146)).
stmt(options_1_stmt2, if_statement, options_1_block2, (statements, 1), range(options_1, 4621, 90, 149, 152)).
stmt(options_1_stmt3, if_statement, options_1_block2, (statements, 2), range(options_1, 4786, 205, 155, 161)).
stmt(options_1_stmt4, expression_statement, options_1_block2, (statements, 3), range(options_1, 5001, 24, 163, 163)).
stmt(options_1_stmt5, return_statement, options_1_block2, (statements, 4), range(options_1, 5035, 12, 165, 165)).
stmt(options_1_stmt6, variable_declaration_statement, options_1_block3, (statements, 0), range(options_1, 5482, 46, 185, 185)).
stmt(options_1_stmt7, variable_declaration_statement, options_1_block3, (statements, 1), range(options_1, 5637, 45, 189, 189)).
stmt(options_1_stmt8, while_statement, options_1_block3, (statements, 2), range(options_1, 5692, 180, 191, 199)).
stmt(options_1_stmt9, return_statement, options_1_block3, (statements, 3), range(options_1, 5882, 27, 201, 201)).
stmt(options_1_stmt10, return_statement, options_1_block4, (statements, 0), range(options_1, 6121, 20, 212, 212)).
%util_1 - org.apache.commons.cli.Util
stmt(util_1_stmt1, if_statement, util_1_block1, (statements, 0), range(util_1, 1280, 205, 36, 43)).
stmt(util_1_stmt2, return_statement, util_1_block2, (statements, 0), range(util_1, 1328, 38, 38, 38)).
stmt(util_1_stmt3, if_statement, util_1_stmt1, elseStatement, range(util_1, 1390, 95, 40, 43)).
stmt(util_1_stmt4, return_statement, util_1_block3, (statements, 0), range(util_1, 1437, 38, 42, 42)).

%%% Expressions
%bug_cli133test_1 - org.apache.commons.cli.bug.BugCLI133Test
expr(bug_cli133test_1_expr1, class_instance_creation, bug_cli133test_1_code7, initializer, range(bug_cli133test_1, 1059, 24, 27, 27), "new Option(\"a\",\"first\")").
expr(bug_cli133test_1_expr2, class_instance_creation, bug_cli133test_1_code10, initializer, range(bug_cli133test_1, 1108, 13, 28, 28), "new Options()").
expr(bug_cli133test_1_expr3, method_invocation, bug_cli133test_1_stmt3, expression, range(bug_cli133test_1, 1131, 23, 29, 29), "opts.addOption(optionA)").
expr(bug_cli133test_1_expr4, class_instance_creation, bug_cli133test_1_code13, initializer, range(bug_cli133test_1, 1190, 17, 30, 30), "new PosixParser()").
expr(bug_cli133test_1_expr5, method_invocation, bug_cli133test_1_code16, initializer, range(bug_cli133test_1, 1236, 29, 31, 31), "posixParser.parse(opts,null)").
expr(bug_cli133test_1_expr6, method_invocation, bug_cli133test_1_stmt6, expression, range(bug_cli133test_1, 1275, 33, 32, 32), "assertFalse(line.hasOption(null))").
expr(bug_cli133test_1_expr7, method_invocation, bug_cli133test_1_expr6, (arguments, 0), range(bug_cli133test_1, 1287, 20, 32, 32), "line.hasOption(null)").
%command_line_1 - org.apache.commons.cli.CommandLine
expr(command_line_1_expr1, class_instance_creation, command_line_1_code6, initializer, range(command_line_1, 1643, 16, 44, 44), "new LinkedList()").
expr(command_line_1_expr2, class_instance_creation, command_line_1_code11, initializer, range(command_line_1, 1721, 13, 47, 47), "new HashSet()").
expr(command_line_1_expr3, method_invocation, command_line_1_stmt1, expression, range(command_line_1, 2178, 37, 68, 68), "options.contains(resolveOption(opt))").
expr(command_line_1_expr4, method_invocation, command_line_1_expr3, (arguments, 0), range(command_line_1, 2196, 18, 68, 68), "resolveOption(opt)").
expr(command_line_1_expr5, assignment, command_line_1_stmt2, expression, range(command_line_1, 4701, 35, 166, 166), "opt=Util.stripLeadingHyphens(opt)").
expr(command_line_1_expr6, method_invocation, command_line_1_expr5, right_hand_side, range(command_line_1, 4707, 29, 166, 166), "Util.stripLeadingHyphens(opt)").
%util_test_1 - org.apache.commons.cli.UtilTest
expr(util_test_1_expr1, method_invocation, util_test_1_stmt1, expression, range(util_test_1, 992, 49, 26, 26), "assertEquals(\"f\",Util.stripLeadingHyphens(\"-f\"))").
expr(util_test_1_expr2, method_invocation, util_test_1_expr1, (arguments, 1), range(util_test_1, 1010, 30, 26, 26), "Util.stripLeadingHyphens(\"-f\")").
expr(util_test_1_expr3, method_invocation, util_test_1_stmt2, expression, range(util_test_1, 1051, 54, 27, 27), "assertEquals(\"foo\",Util.stripLeadingHyphens(\"--foo\"))").
expr(util_test_1_expr4, method_invocation, util_test_1_expr3, (arguments, 1), range(util_test_1, 1071, 33, 27, 27), "Util.stripLeadingHyphens(\"--foo\")").
expr(util_test_1_expr5, method_invocation, util_test_1_stmt3, expression, range(util_test_1, 1115, 42, 28, 28), "assertNull(Util.stripLeadingHyphens(null))").
expr(util_test_1_expr6, method_invocation, util_test_1_expr5, (arguments, 0), range(util_test_1, 1126, 30, 28, 28), "Util.stripLeadingHyphens(null)").
%option_validator_1 - org.apache.commons.cli.OptionValidator
expr(option_validator_1_expr1, infix_expression, option_validator_1_stmt1, expression, range(option_validator_1, 1691, 11, 45, 45), "opt == null").
expr(option_validator_1_expr3, method_invocation, option_validator_1_expr2, left_operand, range(option_validator_1, 1805, 12, 51, 51), "opt.length()").
expr(option_validator_1_expr2, infix_expression, option_validator_1_stmt2, expression, range(option_validator_1, 1805, 17, 51, 51), "opt.length() == 1").
expr(option_validator_1_expr4, method_invocation, option_validator_1_code5, initializer, range(option_validator_1, 1856, 13, 53, 53), "opt.charAt(0)").
expr(option_validator_1_expr5, prefix_expression, option_validator_1_stmt4, expression, range(option_validator_1, 1888, 15, 55, 55), "!isValidOpt(ch)").
expr(option_validator_1_expr6, method_invocation, option_validator_1_expr5, operand, range(option_validator_1, 1889, 14, 55, 55), "isValidOpt(ch)").
expr(option_validator_1_expr7, parenthesized_expression, option_validator_1_stmt5, expression, range(option_validator_1, 2839, 56, 88, 88), "(isValidChar(c) || (c == ' ') || (c == '?')|| c == '@')").
expr(option_validator_1_expr9, method_invocation, option_validator_1_expr8, left_operand, range(option_validator_1, 2840, 14, 88, 88), "isValidChar(c)").
expr(option_validator_1_expr8, infix_expression, option_validator_1_expr7, expression, range(option_validator_1, 2840, 54, 88, 88), "isValidChar(c) || (c == ' ') || (c == '?')|| c == '@'").
expr(option_validator_1_expr10, parenthesized_expression, option_validator_1_expr8, right_operand, range(option_validator_1, 2858, 10, 88, 88), "(c == ' ')").
expr(option_validator_1_expr11, infix_expression, option_validator_1_expr10, expression, range(option_validator_1, 2859, 8, 88, 88), "c == ' '").
expr(option_validator_1_expr12, parenthesized_expression, option_validator_1_expr8, (extended_operands, 0), range(option_validator_1, 2872, 10, 88, 88), "(c == '?')").
expr(option_validator_1_expr13, infix_expression, option_validator_1_expr12, expression, range(option_validator_1, 2873, 8, 88, 88), "c == '?'").
expr(option_validator_1_expr14, infix_expression, option_validator_1_expr8, (extended_operands, 1), range(option_validator_1, 2886, 8, 88, 88), "c == '@'").
expr(option_validator_1_expr15, method_invocation, option_validator_1_stmt6, expression, range(option_validator_1, 3164, 33, 99, 99), "Character.isJavaIdentifierPart(c)").
%posix_parser_1 - org.apache.commons.cli.PosixParser
expr(posix_parser_1_expr1, class_instance_creation, posix_parser_1_code8, initializer, range(posix_parser_1, 1258, 15, 34, 34), "new ArrayList()").
expr(posix_parser_1_expr2, assignment, posix_parser_1_stmt1, expression, range(posix_parser_1, 1754, 18, 52, 52), "eatTheRest=false").
expr(posix_parser_1_expr3, method_invocation, posix_parser_1_stmt2, expression, range(posix_parser_1, 1782, 14, 53, 53), "tokens.clear()").
expr(posix_parser_1_expr4, assignment, posix_parser_1_stmt3, expression, range(posix_parser_1, 1806, 20, 54, 54), "currentOption=null").
expr(posix_parser_1_expr5, method_invocation, posix_parser_1_stmt4, expression, range(posix_parser_1, 4101, 6, 98, 98), "init()").
expr(posix_parser_1_expr6, assignment, posix_parser_1_stmt5, expression, range(posix_parser_1, 4117, 22, 99, 99), "this.options=options").
expr(posix_parser_1_expr7, field_access, posix_parser_1_expr6, left_hand_side, range(posix_parser_1, 4117, 12, 99, 99), "this.options").
expr(posix_parser_1_expr8, this_expression, f_options_107, expression, range(posix_parser_1, 4117, 4, 99, 99), "this").
expr(posix_parser_1_expr10, method_invocation, posix_parser_1_expr9, expression, range(posix_parser_1, 4217, 24, 102, 102), "Arrays.asList(arguments)").
expr(posix_parser_1_expr9, method_invocation, posix_parser_1_code13, initializer, range(posix_parser_1, 4217, 35, 102, 102), "Arrays.asList(arguments).iterator()").
expr(posix_parser_1_expr11, method_invocation, posix_parser_1_stmt7, expression, range(posix_parser_1, 4335, 14, 106, 106), "iter.hasNext()").
expr(posix_parser_1_expr12, cast_expression, posix_parser_1_stmt8, expression, range(posix_parser_1, 5905, 52, 163, 163), "(String[])tokens.toArray(new String[tokens.size()])").
expr(posix_parser_1_expr13, method_invocation, posix_parser_1_expr12, expression, range(posix_parser_1, 5916, 41, 163, 163), "tokens.toArray(new String[tokens.size()])").
expr(posix_parser_1_expr14, array_creation, posix_parser_1_expr13, (arguments, 0), range(posix_parser_1, 5931, 25, 163, 163), "new String[tokens.size()]").
expr(posix_parser_1_expr15, method_invocation, posix_parser_1_expr14, (dimensions, 0), range(posix_parser_1, 5942, 13, 163, 163), "tokens.size()").
%option_1 - org.apache.commons.cli.Option
expr(option_1_expr1, class_instance_creation, option_1_code14, initializer, range(option_1, 2702, 15, 76, 76), "new ArrayList()").
expr(option_1_expr2, constructor_invocation, option_1_block1, (statements, 0), range(option_1, 3224, 36, 93, 93), "this(opt,null,false,description);").
expr(option_1_expr3, method_invocation, option_1_stmt2, expression, range(option_1, 4479, 35, 128, 128), "OptionValidator.validateOption(opt)").
expr(option_1_expr5, field_access, option_1_expr4, left_hand_side, range(option_1, 4525, 8, 130, 130), "this.opt").
expr(option_1_expr6, this_expression, f_opt_31, expression, range(option_1, 4525, 4, 130, 130), "this").
expr(option_1_expr4, assignment, option_1_stmt3, expression, range(option_1, 4525, 14, 130, 130), "this.opt=opt").
expr(option_1_expr9, this_expression, f_long_opt_32, expression, range(option_1, 4549, 4, 131, 131), "this").
expr(option_1_expr7, assignment, option_1_stmt4, expression, range(option_1, 4549, 22, 131, 131), "this.longOpt=longOpt").
expr(option_1_expr8, field_access, option_1_expr7, left_hand_side, range(option_1, 4549, 12, 131, 131), "this.longOpt").
expr(option_1_expr12, this_expression, f_has_arg_33, expression, range(option_1, 4720, 4, 139, 139), "this").
expr(option_1_expr11, field_access, option_1_expr10, left_hand_side, range(option_1, 4720, 11, 139, 139), "this.hasArg").
expr(option_1_expr10, assignment, option_1_stmt6, expression, range(option_1, 4720, 20, 139, 139), "this.hasArg=hasArg").
expr(option_1_expr15, this_expression, f_description_34, expression, range(option_1, 4750, 4, 140, 140), "this").
expr(option_1_expr14, field_access, option_1_expr13, left_hand_side, range(option_1, 4750, 16, 140, 140), "this.description").
expr(option_1_expr13, assignment, option_1_stmt7, expression, range(option_1, 4750, 30, 140, 140), "this.description=description").
expr(option_1_expr16, infix_expression, option_1_stmt8, expression, range(option_1, 5286, 11, 163, 163), "opt == null").
expr(option_1_expr18, this_expression, f_opt_31, expression, range(option_1, 5368, 4, 168, 168), "this").
expr(option_1_expr17, field_access, option_1_stmt9, expression, range(option_1, 5368, 8, 168, 168), "this.opt").
expr(option_1_expr19, parenthesized_expression, option_1_stmt10, expression, range(option_1, 7171, 22, 252, 252), "(this.longOpt != null)").
expr(option_1_expr22, this_expression, f_long_opt_32, expression, range(option_1, 7172, 4, 252, 252), "this").
expr(option_1_expr21, field_access, option_1_expr20, left_operand, range(option_1, 7172, 12, 252, 252), "this.longOpt").
expr(option_1_expr20, infix_expression, option_1_expr19, expression, range(option_1, 7172, 20, 252, 252), "this.longOpt != null").
expr(option_1_expr24, this_expression, f_required_39, expression, range(option_1, 8132, 4, 292, 292), "this").
expr(option_1_expr23, field_access, option_1_stmt11, expression, range(option_1, 8132, 13, 292, 292), "this.required").
expr(option_1_expr27, this_expression, f_values_21, expression, range(option_1, 16774, 4, 643, 643), "this").
expr(option_1_expr26, field_access, option_1_expr25, expression, range(option_1, 16774, 11, 643, 643), "this.values").
expr(option_1_expr25, method_invocation, option_1_stmt12, expression, range(option_1, 16774, 19, 643, 643), "this.values.clear()").
%parser_1 - org.apache.commons.cli.Parser
expr(parser_1_expr1, method_invocation, parser_1_stmt1, expression, range(parser_1, 2512, 38, 71, 71), "parse(options,arguments,null,false)").
expr(parser_1_expr4, this_expression, f_options_88, expression, range(parser_1, 4783, 4, 135, 135), "this").
expr(parser_1_expr3, field_access, parser_1_expr2, left_hand_side, range(parser_1, 4783, 12, 135, 135), "this.options").
expr(parser_1_expr2, assignment, parser_1_stmt2, expression, range(parser_1, 4783, 22, 135, 135), "this.options=options").
expr(parser_1_expr5, variable_declaration_expression, parser_1_stmt3, (initializers, 0), range(parser_1, 4901, 46, 138, 138), "Iterator it=options.helpOptions().iterator()").
expr(parser_1_expr7, method_invocation, parser_1_expr6, expression, range(parser_1, 4915, 21, 138, 138), "options.helpOptions()").
expr(parser_1_expr6, method_invocation, parser_1_code9, initializer, range(parser_1, 4915, 32, 138, 138), "options.helpOptions().iterator()").
expr(parser_1_expr8, method_invocation, parser_1_stmt3, expression, range(parser_1, 4949, 12, 138, 138), "it.hasNext()").
expr(parser_1_expr9, cast_expression, parser_1_code11, initializer, range(parser_1, 4991, 18, 139, 139), "(Option)it.next()").
expr(parser_1_expr10, method_invocation, parser_1_expr9, expression, range(parser_1, 5000, 9, 139, 139), "it.next()").
expr(parser_1_expr11, method_invocation, parser_1_stmt5, expression, range(parser_1, 5023, 17, 140, 140), "opt.clearValues()").
expr(parser_1_expr12, assignment, parser_1_stmt6, expression, range(parser_1, 5061, 46, 143, 143), "requiredOptions=options.getRequiredOptions()").
expr(parser_1_expr13, method_invocation, parser_1_expr12, right_hand_side, range(parser_1, 5079, 28, 143, 143), "options.getRequiredOptions()").
expr(parser_1_expr14, assignment, parser_1_stmt7, expression, range(parser_1, 5117, 23, 144, 144), "cmd=new CommandLine()").
expr(parser_1_expr15, class_instance_creation, parser_1_expr14, right_hand_side, range(parser_1, 5123, 17, 144, 144), "new CommandLine()").
expr(parser_1_expr16, infix_expression, parser_1_stmt9, expression, range(parser_1, 5192, 17, 148, 148), "arguments == null").
expr(parser_1_expr17, assignment, parser_1_stmt10, expression, range(parser_1, 5233, 25, 150, 150), "arguments=new String[0]").
expr(parser_1_expr18, array_creation, parser_1_expr17, right_hand_side, range(parser_1, 5245, 13, 150, 150), "new String[0]").
expr(parser_1_expr19, method_invocation, parser_1_code20, initializer, range(parser_1, 5296, 160, 153, 155), "Arrays.asList(flatten(this.options,arguments,stopAtNonOption))").
expr(parser_1_expr20, method_invocation, parser_1_expr19, (arguments, 0), range(parser_1, 5310, 145, 153, 155), "flatten(this.options,arguments,stopAtNonOption)").
expr(parser_1_expr21, field_access, parser_1_expr20, (arguments, 0), range(parser_1, 5318, 12, 153, 153), "this.options").
expr(parser_1_expr22, this_expression, f_options_88, expression, range(parser_1, 5318, 4, 153, 153), "this").
expr(parser_1_expr23, method_invocation, parser_1_code22, initializer, range(parser_1, 5491, 24, 157, 157), "tokenList.listIterator()").
expr(parser_1_expr24, method_invocation, parser_1_stmt13, expression, range(parser_1, 5573, 18, 160, 160), "iterator.hasNext()").
expr(parser_1_expr25, method_invocation, parser_1_stmt14, expression, range(parser_1, 7160, 29, 224, 224), "processProperties(properties)").
expr(parser_1_expr26, method_invocation, parser_1_stmt15, expression, range(parser_1, 7199, 22, 225, 225), "checkRequiredOptions()").
expr(parser_1_expr27, infix_expression, parser_1_stmt17, expression, range(parser_1, 7507, 18, 238, 238), "properties == null").
expr(parser_1_expr28, infix_expression, parser_1_stmt19, expression, range(parser_1, 9324, 26, 295, 295), "requiredOptions.size() > 0").
expr(parser_1_expr29, method_invocation, parser_1_expr28, left_operand, range(parser_1, 9324, 22, 295, 295), "requiredOptions.size()").
%options_1 - org.apache.commons.cli.Options
expr(options_1_expr1, class_instance_creation, options_1_code6, initializer, range(options_1, 1711, 13, 46, 46), "new HashMap()").
expr(options_1_expr2, class_instance_creation, options_1_code11, initializer, range(options_1, 1804, 13, 49, 49), "new HashMap()").
expr(options_1_expr3, class_instance_creation, options_1_code16, initializer, range(options_1, 1893, 15, 52, 52), "new ArrayList()").
expr(options_1_expr4, class_instance_creation, options_1_code21, initializer, range(options_1, 1980, 13, 55, 55), "new HashMap()").
expr(options_1_expr5, method_invocation, options_1_code26, initializer, range(options_1, 4556, 12, 146, 146), "opt.getKey()").
expr(options_1_expr6, method_invocation, options_1_stmt2, expression, range(options_1, 4625, 16, 149, 149), "opt.hasLongOpt()").
expr(options_1_expr7, method_invocation, options_1_stmt3, expression, range(options_1, 4790, 16, 155, 155), "opt.isRequired()").
expr(options_1_expr8, method_invocation, options_1_stmt4, expression, range(options_1, 5001, 23, 163, 163), "shortOpts.put(key,opt)").
expr(options_1_expr9, this_expression, options_1_stmt5, expression, range(options_1, 5042, 4, 165, 165), "this").
expr(options_1_expr10, class_instance_creation, options_1_code29, initializer, range(options_1, 5494, 33, 185, 185), "new ArrayList(shortOpts.values())").
expr(options_1_expr11, method_invocation, options_1_expr10, (arguments, 0), range(options_1, 5508, 18, 185, 185), "shortOpts.values()").
expr(options_1_expr13, method_invocation, options_1_expr12, expression, range(options_1, 5653, 17, 189, 189), "longOpts.values()").
expr(options_1_expr12, method_invocation, options_1_code32, initializer, range(options_1, 5653, 28, 189, 189), "longOpts.values().iterator()").
expr(options_1_expr14, method_invocation, options_1_stmt8, expression, range(options_1, 5699, 14, 191, 191), "iter.hasNext()").
expr(options_1_expr15, class_instance_creation, options_1_stmt9, expression, range(options_1, 5889, 19, 201, 201), "new ArrayList(opts)").
%util_1 - org.apache.commons.cli.Util
expr(util_1_expr1, method_invocation, util_1_stmt1, expression, range(util_1, 1284, 20, 36, 36), "str.startsWith(\"--\")").
expr(util_1_expr2, method_invocation, util_1_stmt2, expression, range(util_1, 1335, 30, 38, 38), "str.substring(2,str.length())").
expr(util_1_expr3, method_invocation, util_1_expr2, (arguments, 1), range(util_1, 1352, 12, 38, 38), "str.length()").
expr(util_1_expr4, method_invocation, util_1_stmt3, expression, range(util_1, 1394, 19, 40, 40), "str.startsWith(\"-\")").
expr(util_1_expr5, method_invocation, util_1_stmt4, expression, range(util_1, 1444, 30, 42, 42), "str.substring(1,str.length())").
expr(util_1_expr6, method_invocation, util_1_expr5, (arguments, 1), range(util_1, 1461, 12, 42, 42), "str.length()").

%%% Names
%bug_cli133test_1 - org.apache.commons.cli.bug.BugCLI133Test
name(t_bug_cli133test_8, simple_name, bug_cli133test_1_code2, name, range(bug_cli133test_1, 949, 13, 25, 25), 'BugCLI133Test').
name(v_option_a_118, simple_name, bug_cli133test_1_code7, name, range(bug_cli133test_1, 1049, 7, 27, 27), 'optionA').
name(v_opts_119, simple_name, bug_cli133test_1_code10, name, range(bug_cli133test_1, 1101, 4, 28, 28), 'opts').
name(v_opts_119, simple_name, bug_cli133test_1_expr3, expression, range(bug_cli133test_1, 1131, 4, 29, 29), 'opts').
name(m_add_option_77, simple_name, bug_cli133test_1_expr3, name, range(bug_cli133test_1, 1136, 9, 29, 29), 'addOption').
name(v_option_a_118, simple_name, bug_cli133test_1_expr3, (arguments, 0), range(bug_cli133test_1, 1146, 7, 29, 29), 'optionA').
name(v_posix_parser_120, simple_name, bug_cli133test_1_code13, name, range(bug_cli133test_1, 1176, 11, 30, 30), 'posixParser').
name(v_line_121, simple_name, bug_cli133test_1_code16, name, range(bug_cli133test_1, 1229, 4, 31, 31), 'line').
name(v_posix_parser_120, simple_name, bug_cli133test_1_expr5, expression, range(bug_cli133test_1, 1236, 11, 31, 31), 'posixParser').
name(m_parse_91, simple_name, bug_cli133test_1_expr5, name, range(bug_cli133test_1, 1248, 5, 31, 31), 'parse').
name(v_opts_119, simple_name, bug_cli133test_1_expr5, (arguments, 0), range(bug_cli133test_1, 1254, 4, 31, 31), 'opts').
name(m_assert_false_122, simple_name, bug_cli133test_1_expr6, name, range(bug_cli133test_1, 1275, 11, 32, 32), 'assertFalse').
name(v_line_121, simple_name, bug_cli133test_1_expr7, expression, range(bug_cli133test_1, 1287, 4, 32, 32), 'line').
name(m_has_option_4, simple_name, bug_cli133test_1_expr7, name, range(bug_cli133test_1, 1292, 9, 32, 32), 'hasOption').
%command_line_1 - org.apache.commons.cli.CommandLine
name(f_args_1, simple_name, command_line_1_code6, name, range(command_line_1, 1636, 4, 44, 44), 'args').
name(f_options_2, simple_name, command_line_1_code11, name, range(command_line_1, 1711, 7, 47, 47), 'options').
name(f_options_2, simple_name, command_line_1_expr3, expression, range(command_line_1, 2178, 7, 68, 68), 'options').
name(m_contains_5, simple_name, command_line_1_expr3, name, range(command_line_1, 2186, 8, 68, 68), 'contains').
name(m_resolve_option_6, simple_name, command_line_1_expr4, name, range(command_line_1, 2196, 13, 68, 68), 'resolveOption').
name(p_opt_3, simple_name, command_line_1_expr4, (arguments, 0), range(command_line_1, 2210, 3, 68, 68), 'opt').
name(p_opt_10, simple_name, command_line_1_expr5, left_hand_side, range(command_line_1, 4701, 3, 166, 166), 'opt').
name(t_util_1, simple_name, command_line_1_expr6, expression, range(command_line_1, 4707, 4, 166, 166), 'Util').
name(m_strip_leading_hyphens_13, simple_name, command_line_1_expr6, name, range(command_line_1, 4712, 19, 166, 166), 'stripLeadingHyphens').
name(p_opt_10, simple_name, command_line_1_expr6, (arguments, 0), range(command_line_1, 4732, 3, 166, 166), 'opt').
%util_test_1 - org.apache.commons.cli.UtilTest
name(t_util_test_7, simple_name, util_test_1_code2, name, range(util_test_1, 912, 8, 24, 24), 'UtilTest').
name(m_assert_equals_118, simple_name, util_test_1_expr1, name, range(util_test_1, 992, 12, 26, 26), 'assertEquals').
name(t_util_1, simple_name, util_test_1_expr2, expression, range(util_test_1, 1010, 4, 26, 26), 'Util').
name(m_strip_leading_hyphens_13, simple_name, util_test_1_expr2, name, range(util_test_1, 1015, 19, 26, 26), 'stripLeadingHyphens').
name(m_assert_equals_118, simple_name, util_test_1_expr3, name, range(util_test_1, 1051, 12, 27, 27), 'assertEquals').
name(t_util_1, simple_name, util_test_1_expr4, expression, range(util_test_1, 1071, 4, 27, 27), 'Util').
name(m_strip_leading_hyphens_13, simple_name, util_test_1_expr4, name, range(util_test_1, 1076, 19, 27, 27), 'stripLeadingHyphens').
name(m_assert_null_119, simple_name, util_test_1_expr5, name, range(util_test_1, 1115, 10, 28, 28), 'assertNull').
name(t_util_1, simple_name, util_test_1_expr6, expression, range(util_test_1, 1126, 4, 28, 28), 'Util').
name(m_strip_leading_hyphens_13, simple_name, util_test_1_expr6, name, range(util_test_1, 1131, 19, 28, 28), 'stripLeadingHyphens').
%option_validator_1 - org.apache.commons.cli.OptionValidator
name(p_opt_50, simple_name, option_validator_1_expr1, left_operand, range(option_validator_1, 1691, 3, 45, 45), 'opt').
name(p_opt_50, simple_name, option_validator_1_expr3, expression, range(option_validator_1, 1805, 3, 51, 51), 'opt').
name(m_length_66, simple_name, option_validator_1_expr3, name, range(option_validator_1, 1809, 6, 51, 51), 'length').
name(v_ch_51, simple_name, option_validator_1_code5, name, range(option_validator_1, 1851, 2, 53, 53), 'ch').
name(p_opt_50, simple_name, option_validator_1_expr4, expression, range(option_validator_1, 1856, 3, 53, 53), 'opt').
name(m_char_at_67, simple_name, option_validator_1_expr4, name, range(option_validator_1, 1860, 6, 53, 53), 'charAt').
name(m_is_valid_opt_68, simple_name, option_validator_1_expr6, name, range(option_validator_1, 1889, 10, 55, 55), 'isValidOpt').
name(v_ch_51, simple_name, option_validator_1_expr6, (arguments, 0), range(option_validator_1, 1900, 2, 55, 55), 'ch').
name(m_is_valid_char_69, simple_name, option_validator_1_expr9, name, range(option_validator_1, 2840, 11, 88, 88), 'isValidChar').
name(p_c_52, simple_name, option_validator_1_expr9, (arguments, 0), range(option_validator_1, 2852, 1, 88, 88), 'c').
name(p_c_52, simple_name, option_validator_1_expr11, left_operand, range(option_validator_1, 2859, 1, 88, 88), 'c').
name(p_c_52, simple_name, option_validator_1_expr13, left_operand, range(option_validator_1, 2873, 1, 88, 88), 'c').
name(p_c_52, simple_name, option_validator_1_expr14, left_operand, range(option_validator_1, 2886, 1, 88, 88), 'c').
name(t_character_3, simple_name, option_validator_1_expr15, expression, range(option_validator_1, 3164, 9, 99, 99), 'Character').
name(m_is_java_identifier_part_70, simple_name, option_validator_1_expr15, name, range(option_validator_1, 3174, 20, 99, 99), 'isJavaIdentifierPart').
name(p_c_53, simple_name, option_validator_1_expr15, (arguments, 0), range(option_validator_1, 3195, 1, 99, 99), 'c').
%posix_parser_1 - org.apache.commons.cli.PosixParser
name(t_posix_parser_6, simple_name, posix_parser_1_code2, name, range(posix_parser_1, 1158, 11, 31, 31), 'PosixParser').
name(f_tokens_101, simple_name, posix_parser_1_code8, name, range(posix_parser_1, 1249, 6, 34, 34), 'tokens').
name(f_eat_the_rest_102, simple_name, posix_parser_1_expr2, left_hand_side, range(posix_parser_1, 1754, 10, 52, 52), 'eatTheRest').
name(f_tokens_101, simple_name, posix_parser_1_expr3, expression, range(posix_parser_1, 1782, 6, 53, 53), 'tokens').
name(m_clear_65, simple_name, posix_parser_1_expr3, name, range(posix_parser_1, 1789, 5, 53, 53), 'clear').
name(f_current_option_103, simple_name, posix_parser_1_expr4, left_hand_side, range(posix_parser_1, 1806, 13, 54, 54), 'currentOption').
name(m_init_105, simple_name, posix_parser_1_expr5, name, range(posix_parser_1, 4101, 4, 98, 98), 'init').
name(f_options_107, simple_name, posix_parser_1_expr7, name, range(posix_parser_1, 4122, 7, 99, 99), 'options').
name(p_options_104, simple_name, posix_parser_1_expr6, right_hand_side, range(posix_parser_1, 4132, 7, 99, 99), 'options').
name(v_iter_108, simple_name, posix_parser_1_code13, name, range(posix_parser_1, 4210, 4, 102, 102), 'iter').
name(t_arrays_5, simple_name, posix_parser_1_expr10, expression, range(posix_parser_1, 4217, 6, 102, 102), 'Arrays').
name(m_as_list_97, simple_name, posix_parser_1_expr10, name, range(posix_parser_1, 4224, 6, 102, 102), 'asList').
name(p_arguments_105, simple_name, posix_parser_1_expr10, (arguments, 0), range(posix_parser_1, 4231, 9, 102, 102), 'arguments').
name(m_iterator_95, simple_name, posix_parser_1_expr9, name, range(posix_parser_1, 4242, 8, 102, 102), 'iterator').
name(v_iter_108, simple_name, posix_parser_1_expr11, expression, range(posix_parser_1, 4335, 4, 106, 106), 'iter').
name(m_has_next_84, simple_name, posix_parser_1_expr11, name, range(posix_parser_1, 4340, 7, 106, 106), 'hasNext').
name(f_tokens_101, simple_name, posix_parser_1_expr13, expression, range(posix_parser_1, 5916, 6, 163, 163), 'tokens').
name(m_to_array_107, simple_name, posix_parser_1_expr13, name, range(posix_parser_1, 5923, 7, 163, 163), 'toArray').
name(f_tokens_101, simple_name, posix_parser_1_expr15, expression, range(posix_parser_1, 5942, 6, 163, 163), 'tokens').
name(m_size_108, simple_name, posix_parser_1_expr15, name, range(posix_parser_1, 5949, 4, 163, 163), 'size').
%option_1 - org.apache.commons.cli.Option
name(f_arg_name_18, simple_name, option_1_code6, name, range(option_1, 2112, 7, 55, 55), 'argName').
name(f_number_of_args_19, simple_name, option_1_code10, name, range(option_1, 2539, 12, 70, 70), 'numberOfArgs').
name(f_uninitialized_20, simple_name, option_1_code10, initializer, range(option_1, 2554, 13, 70, 70), 'UNINITIALIZED').
name(f_values_21, simple_name, option_1_code14, name, range(option_1, 2693, 6, 76, 76), 'values').
name(p_opt_22, simple_name, option_1_stmt1, (arguments, 0), range(option_1, 3229, 3, 93, 93), 'opt').
name(p_description_23, simple_name, option_1_stmt1, (arguments, 3), range(option_1, 3247, 11, 93, 93), 'description').
name(t_option_validator_2, simple_name, option_1_expr3, expression, range(option_1, 4479, 15, 128, 128), 'OptionValidator').
name(m_validate_option_27, simple_name, option_1_expr3, name, range(option_1, 4495, 14, 128, 128), 'validateOption').
name(p_opt_27, simple_name, option_1_expr3, (arguments, 0), range(option_1, 4510, 3, 128, 128), 'opt').
name(f_opt_31, simple_name, option_1_expr5, name, range(option_1, 4530, 3, 130, 130), 'opt').
name(p_opt_27, simple_name, option_1_expr4, right_hand_side, range(option_1, 4536, 3, 130, 130), 'opt').
name(f_long_opt_32, simple_name, option_1_expr8, name, range(option_1, 4554, 7, 131, 131), 'longOpt').
name(p_long_opt_28, simple_name, option_1_expr7, right_hand_side, range(option_1, 4564, 7, 131, 131), 'longOpt').
name(p_has_arg_29, simple_name, option_1_stmt5, expression, range(option_1, 4648, 6, 134, 134), 'hasArg').
name(f_has_arg_33, simple_name, option_1_expr11, name, range(option_1, 4725, 6, 139, 139), 'hasArg').
name(p_has_arg_29, simple_name, option_1_expr10, right_hand_side, range(option_1, 4734, 6, 139, 139), 'hasArg').
name(f_description_34, simple_name, option_1_expr14, name, range(option_1, 4755, 11, 140, 140), 'description').
name(p_description_30, simple_name, option_1_expr13, right_hand_side, range(option_1, 4769, 11, 140, 140), 'description').
name(f_opt_31, simple_name, option_1_expr16, left_operand, range(option_1, 5286, 3, 163, 163), 'opt').
name(f_opt_31, simple_name, option_1_expr17, name, range(option_1, 5373, 3, 168, 168), 'opt').
name(f_long_opt_32, simple_name, option_1_expr21, name, range(option_1, 7177, 7, 252, 252), 'longOpt').
name(f_required_39, simple_name, option_1_expr23, name, range(option_1, 8137, 8, 292, 292), 'required').
name(f_values_21, simple_name, option_1_expr26, name, range(option_1, 16779, 6, 643, 643), 'values').
name(m_clear_65, simple_name, option_1_expr25, name, range(option_1, 16786, 5, 643, 643), 'clear').
%parser_1 - org.apache.commons.cli.Parser
name(t_parser_4, simple_name, parser_1_code2, name, range(parser_1, 1184, 6, 33, 33), 'Parser').
name(m_parse_92, simple_name, parser_1_expr1, name, range(parser_1, 2512, 5, 71, 71), 'parse').
name(p_options_76, simple_name, parser_1_expr1, (arguments, 0), range(parser_1, 2518, 7, 71, 71), 'options').
name(p_arguments_77, simple_name, parser_1_expr1, (arguments, 1), range(parser_1, 2527, 9, 71, 71), 'arguments').
name(f_options_88, simple_name, parser_1_expr3, name, range(parser_1, 4788, 7, 135, 135), 'options').
name(p_options_84, simple_name, parser_1_expr2, right_hand_side, range(parser_1, 4798, 7, 135, 135), 'options').
name(v_it_89, simple_name, parser_1_code9, name, range(parser_1, 4910, 2, 138, 138), 'it').
name(p_options_84, simple_name, parser_1_expr7, expression, range(parser_1, 4915, 7, 138, 138), 'options').
name(m_help_options_80, simple_name, parser_1_expr7, name, range(parser_1, 4923, 11, 138, 138), 'helpOptions').
name(m_iterator_95, simple_name, parser_1_expr6, name, range(parser_1, 4937, 8, 138, 138), 'iterator').
name(v_it_89, simple_name, parser_1_expr8, expression, range(parser_1, 4949, 2, 138, 138), 'it').
name(m_has_next_84, simple_name, parser_1_expr8, name, range(parser_1, 4952, 7, 138, 138), 'hasNext').
name(v_opt_90, simple_name, parser_1_code11, name, range(parser_1, 4985, 3, 139, 139), 'opt').
name(v_it_89, simple_name, parser_1_expr10, expression, range(parser_1, 5000, 2, 139, 139), 'it').
name(m_next_96, simple_name, parser_1_expr10, name, range(parser_1, 5003, 4, 139, 139), 'next').
name(v_opt_90, simple_name, parser_1_expr11, expression, range(parser_1, 5023, 3, 140, 140), 'opt').
name(m_clear_values_64, simple_name, parser_1_expr11, name, range(parser_1, 5027, 11, 140, 140), 'clearValues').
name(f_required_options_91, simple_name, parser_1_expr12, left_hand_side, range(parser_1, 5061, 15, 143, 143), 'requiredOptions').
name(p_options_84, simple_name, parser_1_expr13, expression, range(parser_1, 5079, 7, 143, 143), 'options').
name(m_get_required_options_85, simple_name, parser_1_expr13, name, range(parser_1, 5087, 18, 143, 143), 'getRequiredOptions').
name(f_cmd_92, simple_name, parser_1_expr14, left_hand_side, range(parser_1, 5117, 3, 144, 144), 'cmd').
name(v_eat_the_rest_93, simple_name, parser_1_code15, name, range(parser_1, 5159, 10, 146, 146), 'eatTheRest').
name(p_arguments_85, simple_name, parser_1_expr16, left_operand, range(parser_1, 5192, 9, 148, 148), 'arguments').
name(p_arguments_85, simple_name, parser_1_expr17, left_hand_side, range(parser_1, 5233, 9, 150, 150), 'arguments').
name(v_token_list_94, simple_name, parser_1_code20, name, range(parser_1, 5284, 9, 153, 153), 'tokenList').
name(t_arrays_5, simple_name, parser_1_expr19, expression, range(parser_1, 5296, 6, 153, 153), 'Arrays').
name(m_as_list_97, simple_name, parser_1_expr19, name, range(parser_1, 5303, 6, 153, 153), 'asList').
name(m_flatten_90, simple_name, parser_1_expr20, name, range(parser_1, 5310, 7, 153, 153), 'flatten').
name(f_options_88, simple_name, parser_1_expr21, name, range(parser_1, 5323, 7, 153, 153), 'options').
name(p_arguments_85, simple_name, parser_1_expr20, (arguments, 1), range(parser_1, 5380, 9, 154, 154), 'arguments').
name(p_stop_at_non_option_87, simple_name, parser_1_expr20, (arguments, 2), range(parser_1, 5439, 15, 155, 155), 'stopAtNonOption').
name(v_iterator_95, simple_name, parser_1_code22, name, range(parser_1, 5480, 8, 157, 157), 'iterator').
name(v_token_list_94, simple_name, parser_1_expr23, expression, range(parser_1, 5491, 9, 157, 157), 'tokenList').
name(m_list_iterator_98, simple_name, parser_1_expr23, name, range(parser_1, 5501, 12, 157, 157), 'listIterator').
name(v_iterator_95, simple_name, parser_1_expr24, expression, range(parser_1, 5573, 8, 160, 160), 'iterator').
name(m_has_next_99, simple_name, parser_1_expr24, name, range(parser_1, 5582, 7, 160, 160), 'hasNext').
name(m_process_properties_100, simple_name, parser_1_expr25, name, range(parser_1, 7160, 17, 224, 224), 'processProperties').
name(p_properties_86, simple_name, parser_1_expr25, (arguments, 0), range(parser_1, 7178, 10, 224, 224), 'properties').
name(m_check_required_options_101, simple_name, parser_1_expr26, name, range(parser_1, 7199, 20, 225, 225), 'checkRequiredOptions').
name(f_cmd_92, simple_name, parser_1_stmt16, expression, range(parser_1, 7239, 3, 227, 227), 'cmd').
name(p_properties_96, simple_name, parser_1_expr27, left_operand, range(parser_1, 7507, 10, 238, 238), 'properties').
name(f_required_options_91, simple_name, parser_1_expr29, expression, range(parser_1, 9324, 15, 295, 295), 'requiredOptions').
name(m_size_102, simple_name, parser_1_expr29, name, range(parser_1, 9340, 4, 295, 295), 'size').
%options_1 - org.apache.commons.cli.Options
name(f_short_opts_54, simple_name, options_1_code6, name, range(options_1, 1699, 9, 46, 46), 'shortOpts').
name(f_long_opts_55, simple_name, options_1_code11, name, range(options_1, 1793, 8, 49, 49), 'longOpts').
name(f_required_opts_56, simple_name, options_1_code16, name, range(options_1, 1878, 12, 52, 52), 'requiredOpts').
name(f_option_groups_57, simple_name, options_1_code21, name, range(options_1, 1965, 12, 55, 55), 'optionGroups').
name(v_key_67, simple_name, options_1_code26, name, range(options_1, 4550, 3, 146, 146), 'key').
name(p_opt_66, simple_name, options_1_expr5, expression, range(options_1, 4556, 3, 146, 146), 'opt').
name(m_get_key_29, simple_name, options_1_expr5, name, range(options_1, 4560, 6, 146, 146), 'getKey').
name(p_opt_66, simple_name, options_1_expr6, expression, range(options_1, 4625, 3, 149, 149), 'opt').
name(m_has_long_opt_37, simple_name, options_1_expr6, name, range(options_1, 4629, 10, 149, 149), 'hasLongOpt').
name(p_opt_66, simple_name, options_1_expr7, expression, range(options_1, 4790, 3, 155, 155), 'opt').
name(m_is_required_41, simple_name, options_1_expr7, name, range(options_1, 4794, 10, 155, 155), 'isRequired').
name(f_short_opts_54, simple_name, options_1_expr8, expression, range(options_1, 5001, 9, 163, 163), 'shortOpts').
name(m_put_78, simple_name, options_1_expr8, name, range(options_1, 5011, 3, 163, 163), 'put').
name(v_key_67, simple_name, options_1_expr8, (arguments, 0), range(options_1, 5015, 3, 163, 163), 'key').
name(p_opt_66, simple_name, options_1_expr8, (arguments, 1), range(options_1, 5020, 3, 163, 163), 'opt').
name(v_opts_68, simple_name, options_1_code29, name, range(options_1, 5487, 4, 185, 185), 'opts').
name(f_short_opts_54, simple_name, options_1_expr11, expression, range(options_1, 5508, 9, 185, 185), 'shortOpts').
name(m_values_82, simple_name, options_1_expr11, name, range(options_1, 5518, 6, 185, 185), 'values').
name(v_iter_69, simple_name, options_1_code32, name, range(options_1, 5646, 4, 189, 189), 'iter').
name(f_long_opts_55, simple_name, options_1_expr13, expression, range(options_1, 5653, 8, 189, 189), 'longOpts').
name(m_values_82, simple_name, options_1_expr13, name, range(options_1, 5662, 6, 189, 189), 'values').
name(m_iterator_83, simple_name, options_1_expr12, name, range(options_1, 5671, 8, 189, 189), 'iterator').
name(v_iter_69, simple_name, options_1_expr14, expression, range(options_1, 5699, 4, 191, 191), 'iter').
name(m_has_next_84, simple_name, options_1_expr14, name, range(options_1, 5704, 7, 191, 191), 'hasNext').
name(v_opts_68, simple_name, options_1_expr15, (arguments, 0), range(options_1, 5903, 4, 201, 201), 'opts').
name(f_required_opts_56, simple_name, options_1_stmt10, expression, range(options_1, 6128, 12, 212, 212), 'requiredOpts').
%util_1 - org.apache.commons.cli.Util
name(p_str_116, simple_name, util_1_expr1, expression, range(util_1, 1284, 3, 36, 36), 'str').
name(m_starts_with_114, simple_name, util_1_expr1, name, range(util_1, 1288, 10, 36, 36), 'startsWith').
name(p_str_116, simple_name, util_1_expr2, expression, range(util_1, 1335, 3, 38, 38), 'str').
name(m_substring_115, simple_name, util_1_expr2, name, range(util_1, 1339, 9, 38, 38), 'substring').
name(p_str_116, simple_name, util_1_expr3, expression, range(util_1, 1352, 3, 38, 38), 'str').
name(m_length_66, simple_name, util_1_expr3, name, range(util_1, 1356, 6, 38, 38), 'length').
name(p_str_116, simple_name, util_1_expr4, expression, range(util_1, 1394, 3, 40, 40), 'str').
name(m_starts_with_114, simple_name, util_1_expr4, name, range(util_1, 1398, 10, 40, 40), 'startsWith').
name(p_str_116, simple_name, util_1_expr5, expression, range(util_1, 1444, 3, 42, 42), 'str').
name(m_substring_115, simple_name, util_1_expr5, name, range(util_1, 1448, 9, 42, 42), 'substring').
name(p_str_116, simple_name, util_1_expr6, expression, range(util_1, 1461, 3, 42, 42), 'str').
name(m_length_66, simple_name, util_1_expr6, name, range(util_1, 1465, 6, 42, 42), 'length').

%%% Literals
%bug_cli133test_1 - org.apache.commons.cli.bug.BugCLI133Test
literal(bug_cli133test_1_literal1, string_literal, bug_cli133test_1_expr1, (arguments, 0), range(bug_cli133test_1, 1070, 3, 27, 27), "a").
literal(bug_cli133test_1_literal2, string_literal, bug_cli133test_1_expr1, (arguments, 1), range(bug_cli133test_1, 1075, 7, 27, 27), "first").
literal(bug_cli133test_1_literal3, null_literal, bug_cli133test_1_expr5, (arguments, 1), range(bug_cli133test_1, 1260, 4, 31, 31), null).
literal(bug_cli133test_1_literal4, null_literal, bug_cli133test_1_expr7, (arguments, 0), range(bug_cli133test_1, 1302, 4, 32, 32), null).
%command_line_1 - org.apache.commons.cli.CommandLine
%util_test_1 - org.apache.commons.cli.UtilTest
literal(util_test_1_literal1, string_literal, util_test_1_expr1, (arguments, 0), range(util_test_1, 1005, 3, 26, 26), "f").
literal(util_test_1_literal2, string_literal, util_test_1_expr2, (arguments, 0), range(util_test_1, 1035, 4, 26, 26), "-f").
literal(util_test_1_literal3, string_literal, util_test_1_expr3, (arguments, 0), range(util_test_1, 1064, 5, 27, 27), "foo").
literal(util_test_1_literal4, string_literal, util_test_1_expr4, (arguments, 0), range(util_test_1, 1096, 7, 27, 27), "--foo").
literal(util_test_1_literal5, null_literal, util_test_1_expr6, (arguments, 0), range(util_test_1, 1151, 4, 28, 28), null).
%option_validator_1 - org.apache.commons.cli.OptionValidator
literal(option_validator_1_literal1, null_literal, option_validator_1_expr1, right_operand, range(option_validator_1, 1698, 4, 45, 45), null).
literal(option_validator_1_literal2, number_literal, option_validator_1_expr2, right_operand, range(option_validator_1, 1821, 1, 51, 51), 1).
literal(option_validator_1_literal3, number_literal, option_validator_1_expr4, (arguments, 0), range(option_validator_1, 1867, 1, 53, 53), 0).
literal(option_validator_1_literal4, character_literal, option_validator_1_expr11, right_operand, range(option_validator_1, 2864, 3, 88, 88), ' ').
literal(option_validator_1_literal5, character_literal, option_validator_1_expr13, right_operand, range(option_validator_1, 2878, 3, 88, 88), '?').
literal(option_validator_1_literal6, character_literal, option_validator_1_expr14, right_operand, range(option_validator_1, 2891, 3, 88, 88), '@').
%posix_parser_1 - org.apache.commons.cli.PosixParser
literal(posix_parser_1_literal1, boolean_literal, posix_parser_1_expr2, right_hand_side, range(posix_parser_1, 1767, 5, 52, 52), false).
literal(posix_parser_1_literal2, null_literal, posix_parser_1_expr4, right_hand_side, range(posix_parser_1, 1822, 4, 54, 54), null).
%option_1 - org.apache.commons.cli.Option
literal(option_1_literal1, string_literal, option_1_code6, initializer, range(option_1, 2122, 5, 55, 55), "arg").
literal(option_1_literal2, null_literal, option_1_stmt1, (arguments, 1), range(option_1, 3234, 4, 93, 93), null).
literal(option_1_literal3, boolean_literal, option_1_stmt1, (arguments, 2), range(option_1, 3240, 5, 93, 93), false).
literal(option_1_literal4, null_literal, option_1_expr16, right_operand, range(option_1, 5293, 4, 163, 163), null).
literal(option_1_literal5, null_literal, option_1_expr20, right_operand, range(option_1, 7188, 4, 252, 252), null).
%parser_1 - org.apache.commons.cli.Parser
literal(parser_1_literal1, null_literal, parser_1_expr1, (arguments, 2), range(parser_1, 2538, 4, 71, 71), null).
literal(parser_1_literal2, boolean_literal, parser_1_expr1, (arguments, 3), range(parser_1, 2544, 5, 71, 71), false).
literal(parser_1_literal3, boolean_literal, parser_1_code15, initializer, range(parser_1, 5172, 5, 146, 146), false).
literal(parser_1_literal4, null_literal, parser_1_expr16, right_operand, range(parser_1, 5205, 4, 148, 148), null).
literal(parser_1_literal5, number_literal, parser_1_expr18, (dimensions, 0), range(parser_1, 5256, 1, 150, 150), 0).
literal(parser_1_literal6, null_literal, parser_1_expr27, right_operand, range(parser_1, 7521, 4, 238, 238), null).
literal(parser_1_literal7, number_literal, parser_1_expr28, right_operand, range(parser_1, 9349, 1, 295, 295), 0).
%options_1 - org.apache.commons.cli.Options
%util_1 - org.apache.commons.cli.Util
literal(util_1_literal1, string_literal, util_1_expr1, (arguments, 0), range(util_1, 1299, 4, 36, 36), "--").
literal(util_1_literal2, number_literal, util_1_expr2, (arguments, 0), range(util_1, 1349, 1, 38, 38), 2).
literal(util_1_literal3, string_literal, util_1_expr4, (arguments, 0), range(util_1, 1409, 3, 40, 40), "-").
literal(util_1_literal4, number_literal, util_1_expr5, (arguments, 0), range(util_1, 1458, 1, 42, 42), 1).

%%% Other Code Entities
%bug_cli133test_1 - org.apache.commons.cli.bug.BugCLI133Test
code(bug_cli133test_1_code1, compilation_unit, range(bug_cli133test_1, 0, 1318, 1, -1)).
code(bug_cli133test_1_code2, type_declaration, bug_cli133test_1_code1, (types, 0), range(bug_cli133test_1, 907, 410, 22, 34)).
code(bug_cli133test_1_code3, modifier, bug_cli133test_1_code2, (modifiers, 0), range(bug_cli133test_1, 936, 6, 25, 25)).
code(bug_cli133test_1_code4, simple_type, bug_cli133test_1_code2, superclass_type, range(bug_cli133test_1, 971, 8, 25, 25)).
code(bug_cli133test_1_code5, method_declaration, bug_cli133test_1_code2, (body_declarations, 0), range(bug_cli133test_1, 986, 329, 26, 33)).
code(bug_cli133test_1_code6, simple_type, bug_cli133test_1_stmt1, type, range(bug_cli133test_1, 1042, 6, 27, 27)).
code(bug_cli133test_1_code7, variable_declaration_fragment, bug_cli133test_1_stmt1, (fragments, 0), range(bug_cli133test_1, 1049, 34, 27, 27)).
code(bug_cli133test_1_code8, simple_type, bug_cli133test_1_expr1, type, range(bug_cli133test_1, 1063, 6, 27, 27)).
code(bug_cli133test_1_code9, simple_type, bug_cli133test_1_stmt2, type, range(bug_cli133test_1, 1093, 7, 28, 28)).
code(bug_cli133test_1_code10, variable_declaration_fragment, bug_cli133test_1_stmt2, (fragments, 0), range(bug_cli133test_1, 1101, 20, 28, 28)).
code(bug_cli133test_1_code11, simple_type, bug_cli133test_1_expr2, type, range(bug_cli133test_1, 1112, 7, 28, 28)).
code(bug_cli133test_1_code12, simple_type, bug_cli133test_1_stmt4, type, range(bug_cli133test_1, 1164, 11, 30, 30)).
code(bug_cli133test_1_code13, variable_declaration_fragment, bug_cli133test_1_stmt4, (fragments, 0), range(bug_cli133test_1, 1176, 31, 30, 30)).
code(bug_cli133test_1_code14, simple_type, bug_cli133test_1_expr4, type, range(bug_cli133test_1, 1194, 11, 30, 30)).
code(bug_cli133test_1_code15, simple_type, bug_cli133test_1_stmt5, type, range(bug_cli133test_1, 1217, 11, 31, 31)).
code(bug_cli133test_1_code16, variable_declaration_fragment, bug_cli133test_1_stmt5, (fragments, 0), range(bug_cli133test_1, 1229, 36, 31, 31)).
%command_line_1 - org.apache.commons.cli.CommandLine
code(command_line_1_code1, compilation_unit, range(command_line_1, 0, 8639, 1, -1)).
code(command_line_1_code2, type_declaration, command_line_1_code1, (types, 0), range(command_line_1, 993, 7646, 26, -1)).
code(command_line_1_code3, field_declaration, command_line_1_code2, (body_declarations, 0), range(command_line_1, 1577, 83, 43, 44)).
code(command_line_1_code4, modifier, command_line_1_code3, (modifiers, 0), range(command_line_1, 1623, 7, 44, 44)).
code(command_line_1_code5, simple_type, command_line_1_code3, type, range(command_line_1, 1631, 4, 44, 44)).
code(command_line_1_code6, variable_declaration_fragment, command_line_1_code3, (fragments, 0), range(command_line_1, 1636, 23, 44, 44)).
code(command_line_1_code7, simple_type, command_line_1_expr1, type, range(command_line_1, 1647, 10, 44, 44)).
code(command_line_1_code8, field_declaration, command_line_1_code2, (body_declarations, 1), range(command_line_1, 1666, 69, 46, 47)).
code(command_line_1_code9, modifier, command_line_1_code8, (modifiers, 0), range(command_line_1, 1699, 7, 47, 47)).
code(command_line_1_code10, simple_type, command_line_1_code8, type, range(command_line_1, 1707, 3, 47, 47)).
code(command_line_1_code11, variable_declaration_fragment, command_line_1_code8, (fragments, 0), range(command_line_1, 1711, 23, 47, 47)).
code(command_line_1_code12, simple_type, command_line_1_expr2, type, range(command_line_1, 1725, 7, 47, 47)).
code(command_line_1_code13, method_declaration, command_line_1_code2, (body_declarations, 2), range(command_line_1, 1862, 97, 52, 58)).
code(command_line_1_code14, method_declaration, command_line_1_code2, (body_declarations, 3), range(command_line_1, 1965, 257, 60, 69)).
code(command_line_1_code15, method_declaration, command_line_1_code2, (body_declarations, 10), range(command_line_1, 4456, 650, 159, 181)).
%util_test_1 - org.apache.commons.cli.UtilTest
code(util_test_1_code1, compilation_unit, range(util_test_1, 0, 1167, 1, -1)).
code(util_test_1_code2, type_declaration, util_test_1_code1, (types, 0), range(util_test_1, 870, 296, 21, 30)).
code(util_test_1_code3, modifier, util_test_1_code2, (modifiers, 0), range(util_test_1, 899, 6, 24, 24)).
code(util_test_1_code4, simple_type, util_test_1_code2, superclass_type, range(util_test_1, 929, 8, 24, 24)).
code(util_test_1_code5, method_declaration, util_test_1_code2, (body_declarations, 0), range(util_test_1, 944, 220, 25, 29)).
%option_validator_1 - org.apache.commons.cli.OptionValidator
code(option_validator_1_code1, compilation_unit, range(option_validator_1, 0, 3206, 1, -1)).
code(option_validator_1_code2, type_declaration, option_validator_1_code1, (types, 0), range(option_validator_1, 836, 2370, 19, -1)).
code(option_validator_1_code3, method_declaration, option_validator_1_code2, (body_declarations, 0), range(option_validator_1, 967, 1575, 26, 77)).
code(option_validator_1_code4, primitive_type, option_validator_1_stmt3, type, range(option_validator_1, 1846, 4, 53, 53)).
code(option_validator_1_code5, variable_declaration_fragment, option_validator_1_stmt3, (fragments, 0), range(option_validator_1, 1851, 18, 53, 53)).
code(option_validator_1_code6, method_declaration, option_validator_1_code2, (body_declarations, 1), range(option_validator_1, 2548, 354, 79, 89)).
code(option_validator_1_code7, method_declaration, option_validator_1_code2, (body_declarations, 2), range(option_validator_1, 2908, 296, 91, 100)).
%posix_parser_1 - org.apache.commons.cli.PosixParser
code(posix_parser_1_code1, compilation_unit, range(posix_parser_1, 0, 10717, 1, -1)).
code(posix_parser_1_code2, type_declaration, posix_parser_1_code1, (types, 0), range(posix_parser_1, 917, 9799, 23, 311)).
code(posix_parser_1_code3, modifier, posix_parser_1_code2, (modifiers, 0), range(posix_parser_1, 1145, 6, 31, 31)).
code(posix_parser_1_code4, simple_type, posix_parser_1_code2, superclass_type, range(posix_parser_1, 1178, 6, 31, 31)).
code(posix_parser_1_code5, field_declaration, posix_parser_1_code2, (body_declarations, 0), range(posix_parser_1, 1192, 82, 33, 34)).
code(posix_parser_1_code6, modifier, posix_parser_1_code5, (modifiers, 0), range(posix_parser_1, 1231, 7, 34, 34)).
code(posix_parser_1_code7, simple_type, posix_parser_1_code5, type, range(posix_parser_1, 1239, 9, 34, 34)).
code(posix_parser_1_code8, variable_declaration_fragment, posix_parser_1_code5, (fragments, 0), range(posix_parser_1, 1249, 24, 34, 34)).
code(posix_parser_1_code9, simple_type, posix_parser_1_expr1, type, range(posix_parser_1, 1262, 9, 34, 34)).
code(posix_parser_1_code10, method_declaration, posix_parser_1_code2, (body_declarations, 4), range(posix_parser_1, 1504, 329, 45, 55)).
code(posix_parser_1_code11, method_declaration, posix_parser_1_code2, (body_declarations, 5), range(posix_parser_1, 1839, 4125, 57, 164)).
code(posix_parser_1_code12, simple_type, posix_parser_1_stmt6, type, range(posix_parser_1, 4201, 8, 102, 102)).
code(posix_parser_1_code13, variable_declaration_fragment, posix_parser_1_stmt6, (fragments, 0), range(posix_parser_1, 4210, 42, 102, 102)).
code(posix_parser_1_code14, array_type, posix_parser_1_expr12, type, range(posix_parser_1, 5906, 8, 163, 163)).
code(posix_parser_1_code15, simple_type, posix_parser_1_code14, element_type, range(posix_parser_1, 5906, 6, 163, 163)).
code(posix_parser_1_code16, dimension, posix_parser_1_code14, (dimensions, 0), range(posix_parser_1, 5912, 2, 163, 163)).
code(posix_parser_1_code17, array_type, posix_parser_1_expr14, type, range(posix_parser_1, 5935, 21, 163, 163)).
code(posix_parser_1_code18, simple_type, posix_parser_1_code17, element_type, range(posix_parser_1, 5935, 6, 163, 163)).
code(posix_parser_1_code19, dimension, posix_parser_1_code17, (dimensions, 0), range(posix_parser_1, 5941, 15, 163, 163)).
%option_1 - org.apache.commons.cli.Option
code(option_1_code1, compilation_unit, range(option_1, 0, 16804, 1, -1)).
code(option_1_code2, type_declaration, option_1_code1, (types, 0), range(option_1, 865, 15938, 21, 646)).
code(option_1_code3, field_declaration, option_1_code2, (body_declarations, 5), range(option_1, 2027, 101, 54, 55)).
code(option_1_code4, modifier, option_1_code3, (modifiers, 0), range(option_1, 2097, 7, 55, 55)).
code(option_1_code5, simple_type, option_1_code3, type, range(option_1, 2105, 6, 55, 55)).
code(option_1_code6, variable_declaration_fragment, option_1_code3, (fragments, 0), range(option_1, 2112, 15, 55, 55)).
code(option_1_code7, field_declaration, option_1_code2, (body_declarations, 9), range(option_1, 2420, 148, 66, 70)).
code(option_1_code8, modifier, option_1_code7, (modifiers, 0), range(option_1, 2527, 7, 70, 70)).
code(option_1_code9, primitive_type, option_1_code7, type, range(option_1, 2535, 3, 70, 70)).
code(option_1_code10, variable_declaration_fragment, option_1_code7, (fragments, 0), range(option_1, 2539, 28, 70, 70)).
code(option_1_code11, field_declaration, option_1_code2, (body_declarations, 11), range(option_1, 2635, 83, 75, 76)).
code(option_1_code12, modifier, option_1_code11, (modifiers, 0), range(option_1, 2675, 7, 76, 76)).
code(option_1_code13, simple_type, option_1_code11, type, range(option_1, 2683, 9, 76, 76)).
code(option_1_code14, variable_declaration_fragment, option_1_code11, (fragments, 0), range(option_1, 2693, 24, 76, 76)).
code(option_1_code15, simple_type, option_1_expr1, type, range(option_1, 2706, 9, 76, 76)).
code(option_1_code16, method_declaration, option_1_code2, (body_declarations, 13), range(option_1, 2805, 461, 81, 94)).
code(option_1_code17, method_declaration, option_1_code2, (body_declarations, 15), range(option_1, 3831, 956, 112, 141)).
code(option_1_code18, method_declaration, option_1_code2, (body_declarations, 17), range(option_1, 5079, 304, 155, 169)).
code(option_1_code19, method_declaration, option_1_code2, (body_declarations, 25), range(option_1, 6983, 217, 245, 253)).
code(option_1_code20, method_declaration, option_1_code2, (body_declarations, 29), range(option_1, 7937, 215, 285, 293)).
code(option_1_code21, method_declaration, option_1_code2, (body_declarations, 52), range(option_1, 16479, 321, 635, 644)).
%parser_1 - org.apache.commons.cli.Parser
code(parser_1_code1, compilation_unit, range(parser_1, 0, 12895, 1, -1)).
code(parser_1_code2, type_declaration, parser_1_code1, (types, 0), range(parser_1, 1002, 11892, 26, 417)).
code(parser_1_code3, modifier, parser_1_code2, (modifiers, 0), range(parser_1, 1162, 6, 33, 33)).
code(parser_1_code4, modifier, parser_1_code2, (modifiers, 1), range(parser_1, 1169, 8, 33, 33)).
code(parser_1_code5, simple_type, parser_1_code2, (super_interface_types, 0), range(parser_1, 1202, 17, 33, 33)).
code(parser_1_code6, method_declaration, parser_1_code2, (body_declarations, 4), range(parser_1, 2031, 526, 58, 72)).
code(parser_1_code7, method_declaration, parser_1_code2, (body_declarations, 7), range(parser_1, 4012, 3237, 115, 228)).
code(parser_1_code8, simple_type, parser_1_expr5, type, range(parser_1, 4901, 8, 138, 138)).
code(parser_1_code9, variable_declaration_fragment, parser_1_expr5, (fragments, 0), range(parser_1, 4910, 37, 138, 138)).
code(parser_1_code10, simple_type, parser_1_stmt4, type, range(parser_1, 4978, 6, 139, 139)).
code(parser_1_code11, variable_declaration_fragment, parser_1_stmt4, (fragments, 0), range(parser_1, 4985, 24, 139, 139)).
code(parser_1_code12, simple_type, parser_1_expr9, type, range(parser_1, 4992, 6, 139, 139)).
code(parser_1_code13, simple_type, parser_1_expr15, type, range(parser_1, 5127, 11, 144, 144)).
code(parser_1_code14, primitive_type, parser_1_stmt8, type, range(parser_1, 5151, 7, 146, 146)).
code(parser_1_code15, variable_declaration_fragment, parser_1_stmt8, (fragments, 0), range(parser_1, 5159, 18, 146, 146)).
code(parser_1_code17, simple_type, parser_1_code16, element_type, range(parser_1, 5249, 6, 150, 150)).
code(parser_1_code16, array_type, parser_1_expr18, type, range(parser_1, 5249, 9, 150, 150)).
code(parser_1_code18, dimension, parser_1_code16, (dimensions, 0), range(parser_1, 5255, 3, 150, 150)).
code(parser_1_code19, simple_type, parser_1_stmt11, type, range(parser_1, 5279, 4, 153, 153)).
code(parser_1_code20, variable_declaration_fragment, parser_1_stmt11, (fragments, 0), range(parser_1, 5284, 172, 153, 155)).
code(parser_1_code21, simple_type, parser_1_stmt12, type, range(parser_1, 5467, 12, 157, 157)).
code(parser_1_code22, variable_declaration_fragment, parser_1_stmt12, (fragments, 0), range(parser_1, 5480, 35, 157, 157)).
code(parser_1_code23, method_declaration, parser_1_code2, (body_declarations, 8), range(parser_1, 7255, 1665, 230, 281)).
code(parser_1_code24, method_declaration, parser_1_code2, (body_declarations, 9), range(parser_1, 8926, 900, 283, 311)).
%options_1 - org.apache.commons.cli.Options
code(options_1_code1, compilation_unit, range(options_1, 0, 7809, 1, -1)).
code(options_1_code2, type_declaration, options_1_code1, (types, 0), range(options_1, 1048, 6761, 28, -1)).
code(options_1_code3, field_declaration, options_1_code2, (body_declarations, 0), range(options_1, 1632, 93, 45, 46)).
code(options_1_code4, modifier, options_1_code3, (modifiers, 0), range(options_1, 1687, 7, 46, 46)).
code(options_1_code5, simple_type, options_1_code3, type, range(options_1, 1695, 3, 46, 46)).
code(options_1_code6, variable_declaration_fragment, options_1_code3, (fragments, 0), range(options_1, 1699, 25, 46, 46)).
code(options_1_code7, simple_type, options_1_expr1, type, range(options_1, 1715, 7, 46, 46)).
code(options_1_code8, field_declaration, options_1_code2, (body_declarations, 1), range(options_1, 1731, 87, 48, 49)).
code(options_1_code9, modifier, options_1_code8, (modifiers, 0), range(options_1, 1781, 7, 49, 49)).
code(options_1_code10, simple_type, options_1_code8, type, range(options_1, 1789, 3, 49, 49)).
code(options_1_code11, variable_declaration_fragment, options_1_code8, (fragments, 0), range(options_1, 1793, 24, 49, 49)).
code(options_1_code12, simple_type, options_1_expr2, type, range(options_1, 1808, 7, 49, 49)).
code(options_1_code13, field_declaration, options_1_code2, (body_declarations, 2), range(options_1, 1824, 85, 51, 52)).
code(options_1_code14, modifier, options_1_code13, (modifiers, 0), range(options_1, 1865, 7, 52, 52)).
code(options_1_code15, simple_type, options_1_code13, type, range(options_1, 1873, 4, 52, 52)).
code(options_1_code16, variable_declaration_fragment, options_1_code13, (fragments, 0), range(options_1, 1878, 30, 52, 52)).
code(options_1_code17, simple_type, options_1_expr3, type, range(options_1, 1897, 9, 52, 52)).
code(options_1_code18, field_declaration, options_1_code2, (body_declarations, 3), range(options_1, 1915, 79, 54, 55)).
code(options_1_code19, modifier, options_1_code18, (modifiers, 0), range(options_1, 1953, 7, 55, 55)).
code(options_1_code20, simple_type, options_1_code18, type, range(options_1, 1961, 3, 55, 55)).
code(options_1_code21, variable_declaration_fragment, options_1_code18, (fragments, 0), range(options_1, 1965, 28, 55, 55)).
code(options_1_code22, simple_type, options_1_expr4, type, range(options_1, 1984, 7, 55, 55)).
code(options_1_code23, method_declaration, options_1_code2, (body_declarations, 4), range(options_1, 2000, 104, 57, 62)).
code(options_1_code24, method_declaration, options_1_code2, (body_declarations, 9), range(options_1, 4342, 711, 138, 166)).
code(options_1_code25, simple_type, options_1_stmt1, type, range(options_1, 4543, 6, 146, 146)).
code(options_1_code26, variable_declaration_fragment, options_1_stmt1, (fragments, 0), range(options_1, 4550, 18, 146, 146)).
code(options_1_code27, method_declaration, options_1_code2, (body_declarations, 11), range(options_1, 5334, 581, 178, 202)).
code(options_1_code28, simple_type, options_1_stmt6, type, range(options_1, 5482, 4, 185, 185)).
code(options_1_code29, variable_declaration_fragment, options_1_stmt6, (fragments, 0), range(options_1, 5487, 40, 185, 185)).
code(options_1_code30, simple_type, options_1_expr10, type, range(options_1, 5498, 9, 185, 185)).
code(options_1_code31, simple_type, options_1_stmt7, type, range(options_1, 5637, 8, 189, 189)).
code(options_1_code32, variable_declaration_fragment, options_1_stmt7, (fragments, 0), range(options_1, 5646, 35, 189, 189)).
code(options_1_code33, simple_type, options_1_expr15, type, range(options_1, 5893, 9, 201, 201)).
code(options_1_code34, method_declaration, options_1_code2, (body_declarations, 12), range(options_1, 5921, 226, 204, 213)).
%util_1 - org.apache.commons.cli.Util
code(util_1_code1, compilation_unit, range(util_1, 0, 2126, 1, -1)).
code(util_1_code2, type_declaration, util_1_code1, (types, 0), range(util_1, 836, 1290, 19, -1)).
code(util_1_code3, method_declaration, util_1_code2, (body_declarations, 0), range(util_1, 983, 529, 26, 46)).

%%% Name References

name_ref(t_arrays_5, type, 'Arrays', 'Ljava/util/Arrays;').
name_ref(t_bug_cli133test_8, type, 'BugCLI133Test', 'Lorg/apache/commons/cli/bug/BugCLI133Test;').
name_ref(t_character_3, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_option_validator_2, type, 'OptionValidator', 'Lorg/apache/commons/cli/OptionValidator;').
name_ref(t_parser_4, type, 'Parser', 'Lorg/apache/commons/cli/Parser;').
name_ref(t_posix_parser_6, type, 'PosixParser', 'Lorg/apache/commons/cli/PosixParser;').
name_ref(t_util_1, type, 'Util', 'Lorg/apache/commons/cli/Util;').
name_ref(t_util_test_7, type, 'UtilTest', 'Lorg/apache/commons/cli/UtilTest;').
name_ref(p_description_23, param, 'description', 'option_1;description_line_93').
name_ref(p_opt_22, param, 'opt', 'option_1;opt_line_93').
name_ref(v_ch_51, var, 'ch', 'Lorg/apache/commons/cli/OptionValidator;.validateOption(Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;#0#ch').
name_ref(v_eat_the_rest_93, var, 'eatTheRest', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#eatTheRest').
name_ref(v_it_89, var, 'it', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#0#it').
name_ref(v_iter_108, var, 'iter', 'Lorg/apache/commons/cli/PosixParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#iter').
name_ref(v_iter_69, var, 'iter', 'Lorg/apache/commons/cli/Options;.helpOptions()Ljava/util/List;#iter').
name_ref(v_iterator_95, var, 'iterator', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#iterator').
name_ref(v_key_67, var, 'key', 'Lorg/apache/commons/cli/Options;.addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;#key').
name_ref(v_line_121, var, 'line', 'Lorg/apache/commons/cli/bug/BugCLI133Test;.testOrder()V|Lorg/apache/commons/cli/ParseException;#line').
name_ref(v_opt_90, var, 'opt', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#0#0#opt').
name_ref(v_option_a_118, var, 'optionA', 'Lorg/apache/commons/cli/bug/BugCLI133Test;.testOrder()V|Lorg/apache/commons/cli/ParseException;#optionA').
name_ref(v_opts_119, var, 'opts', 'Lorg/apache/commons/cli/bug/BugCLI133Test;.testOrder()V|Lorg/apache/commons/cli/ParseException;#opts').
name_ref(v_opts_68, var, 'opts', 'Lorg/apache/commons/cli/Options;.helpOptions()Ljava/util/List;#opts').
name_ref(v_posix_parser_120, var, 'posixParser', 'Lorg/apache/commons/cli/bug/BugCLI133Test;.testOrder()V|Lorg/apache/commons/cli/ParseException;#posixParser').
name_ref(v_token_list_94, var, 'tokenList', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#tokenList').
name_ref(p_arg_16, param, 'arg', 'Lorg/apache/commons/cli/CommandLine;.addArg(Ljava/lang/String;)V#arg#0#0').
name_ref(p_arg_99, param, 'arg', 'Lorg/apache/commons/cli/Parser;.processOption(Ljava/lang/String;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;#arg#0#0').
name_ref(p_arg_name_41, param, 'argName', 'Lorg/apache/commons/cli/Option;.setArgName(Ljava/lang/String;)V#argName#0#0').
name_ref(p_arguments_105, param, 'arguments', 'Lorg/apache/commons/cli/PosixParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#arguments#0#1').
name_ref(p_arguments_74, param, 'arguments', 'Lorg/apache/commons/cli/Parser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#arguments#0#1').
name_ref(p_arguments_77, param, 'arguments', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_79, param, 'arguments', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_82, param, 'arguments', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_arguments_85, param, 'arguments', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#arguments#0#1').
name_ref(p_c_52, param, 'c', 'Lorg/apache/commons/cli/OptionValidator;.isValidOpt(C)Z#c#0#0').
name_ref(p_c_53, param, 'c', 'Lorg/apache/commons/cli/OptionValidator;.isValidChar(C)Z#c#0#0').
name_ref(p_default_value_13, param, 'defaultValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#defaultValue#0#1').
name_ref(p_default_value_15, param, 'defaultValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(CLjava/lang/String;)Ljava/lang/String;#defaultValue#0#1').
name_ref(p_default_value_48, param, 'defaultValue', 'Lorg/apache/commons/cli/Option;.getValue(Ljava/lang/String;)Ljava/lang/String;#defaultValue#0#0').
name_ref(p_description_23, param, 'description', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;#description#0#1').
name_ref(p_description_26, param, 'description', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#description#0#2').
name_ref(p_description_30, param, 'description', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#description#0#3').
name_ref(p_description_38, param, 'description', 'Lorg/apache/commons/cli/Option;.setDescription(Ljava/lang/String;)V#description#0#0').
name_ref(p_description_61, param, 'description', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#description#0#2').
name_ref(p_description_65, param, 'description', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#description#0#3').
name_ref(p_group_58, param, 'group', 'Lorg/apache/commons/cli/Options;.addOptionGroup(Lorg/apache/commons/cli/OptionGroup;)Lorg/apache/commons/cli/Options;#group#0#0').
name_ref(p_has_arg_25, param, 'hasArg', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#hasArg#0#1').
name_ref(p_has_arg_29, param, 'hasArg', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#hasArg#0#2').
name_ref(p_has_arg_60, param, 'hasArg', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#hasArg#0#1').
name_ref(p_has_arg_64, param, 'hasArg', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#hasArg#0#2').
name_ref(p_hyphen_111, param, 'hyphen', 'Lorg/apache/commons/cli/PosixParser;.processSingleHyphen(Ljava/lang/String;)V#hyphen#0#0').
name_ref(p_index_47, param, 'index', 'Lorg/apache/commons/cli/Option;.getValue(I)Ljava/lang/String;|Ljava/lang/IndexOutOfBoundsException;#index#0#0').
name_ref(p_iter_100, param, 'iter', 'Lorg/apache/commons/cli/Parser;.processOption(Ljava/lang/String;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;#iter#0#1').
name_ref(p_iter_109, param, 'iter', 'Lorg/apache/commons/cli/PosixParser;.gobble(Ljava/util/Iterator;)V#iter#0#0').
name_ref(p_iter_98, param, 'iter', 'Lorg/apache/commons/cli/Parser;.processArgs(Lorg/apache/commons/cli/Option;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;#iter#0#1').
name_ref(p_long_opt_28, param, 'longOpt', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#longOpt#0#1').
name_ref(p_long_opt_36, param, 'longOpt', 'Lorg/apache/commons/cli/Option;.setLongOpt(Ljava/lang/String;)V#longOpt#0#0').
name_ref(p_long_opt_63, param, 'longOpt', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#longOpt#0#1').
name_ref(p_num_42, param, 'num', 'Lorg/apache/commons/cli/Option;.setArgs(I)V#num#0#0').
name_ref(p_o_49, param, 'o', 'Lorg/apache/commons/cli/Option;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_opt_10, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.resolveOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;#opt#0#0').
name_ref(p_opt_11, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValues(C)[Ljava/lang/String;#opt#0#0').
name_ref(p_opt_12, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#opt#0#0').
name_ref(p_opt_14, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(CLjava/lang/String;)Ljava/lang/String;#opt#0#0').
name_ref(p_opt_17, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.addOption(Lorg/apache/commons/cli/Option;)V#opt#0#0').
name_ref(p_opt_22, param, 'opt', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;#opt#0#0').
name_ref(p_opt_24, param, 'opt', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#opt#0#0').
name_ref(p_opt_27, param, 'opt', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;#opt#0#0').
name_ref(p_opt_3, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.hasOption(Ljava/lang/String;)Z#opt#0#0').
name_ref(p_opt_4, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.hasOption(C)Z#opt#0#0').
name_ref(p_opt_5, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionObject(Ljava/lang/String;)Ljava/lang/Object;#opt#0#0').
name_ref(p_opt_50, param, 'opt', 'Lorg/apache/commons/cli/OptionValidator;.validateOption(Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;#opt#0#0').
name_ref(p_opt_59, param, 'opt', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#opt#0#0').
name_ref(p_opt_6, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionObject(C)Ljava/lang/Object;#opt#0#0').
name_ref(p_opt_62, param, 'opt', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;#opt#0#0').
name_ref(p_opt_66, param, 'opt', 'Lorg/apache/commons/cli/Options;.addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;#opt#0#0').
name_ref(p_opt_7, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(Ljava/lang/String;)Ljava/lang/String;#opt#0#0').
name_ref(p_opt_70, param, 'opt', 'Lorg/apache/commons/cli/Options;.getOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;#opt#0#0').
name_ref(p_opt_71, param, 'opt', 'Lorg/apache/commons/cli/Options;.hasOption(Ljava/lang/String;)Z#opt#0#0').
name_ref(p_opt_72, param, 'opt', 'Lorg/apache/commons/cli/Options;.getOptionGroup(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;#opt#0#0').
name_ref(p_opt_8, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(C)Ljava/lang/String;#opt#0#0').
name_ref(p_opt_9, param, 'opt', 'Lorg/apache/commons/cli/CommandLine;.getOptionValues(Ljava/lang/String;)[Ljava/lang/String;#opt#0#0').
name_ref(p_opt_97, param, 'opt', 'Lorg/apache/commons/cli/Parser;.processArgs(Lorg/apache/commons/cli/Option;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;#opt#0#0').
name_ref(p_optional_arg_37, param, 'optionalArg', 'Lorg/apache/commons/cli/Option;.setOptionalArg(Z)V#optionalArg#0#0').
name_ref(p_options_104, param, 'options', 'Lorg/apache/commons/cli/PosixParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#options#0#0').
name_ref(p_options_76, param, 'options', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_78, param, 'options', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_81, param, 'options', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_options_84, param, 'options', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#options#0#0').
name_ref(p_opts_73, param, 'opts', 'Lorg/apache/commons/cli/Parser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#opts#0#0').
name_ref(p_properties_80, param, 'properties', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#properties#0#2').
name_ref(p_properties_86, param, 'properties', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#properties#0#2').
name_ref(p_properties_96, param, 'properties', 'Lorg/apache/commons/cli/Parser;.processProperties(Ljava/util/Properties;)V#properties#0#0').
name_ref(p_required_40, param, 'required', 'Lorg/apache/commons/cli/Option;.setRequired(Z)V#required#0#0').
name_ref(p_sep_43, param, 'sep', 'Lorg/apache/commons/cli/Option;.setValueSeparator(C)V#sep#0#0').
name_ref(p_stop_at_non_option_106, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/PosixParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#stopAtNonOption#0#2').
name_ref(p_stop_at_non_option_113, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/PosixParser;.processOptionToken(Ljava/lang/String;Z)V#stopAtNonOption#0#1').
name_ref(p_stop_at_non_option_115, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/PosixParser;.burstToken(Ljava/lang/String;Z)V#stopAtNonOption#0#1').
name_ref(p_stop_at_non_option_75, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/Parser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;#stopAtNonOption#0#2').
name_ref(p_stop_at_non_option_83, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#stopAtNonOption#0#2').
name_ref(p_stop_at_non_option_87, param, 'stopAtNonOption', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;#stopAtNonOption#0#3').
name_ref(p_str_116, param, 'str', 'Lorg/apache/commons/cli/Util;.stripLeadingHyphens(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_117, param, 'str', 'Lorg/apache/commons/cli/Util;.stripLeadingAndTrailingQuotes(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_token_112, param, 'token', 'Lorg/apache/commons/cli/PosixParser;.processOptionToken(Ljava/lang/String;Z)V#token#0#0').
name_ref(p_token_114, param, 'token', 'Lorg/apache/commons/cli/PosixParser;.burstToken(Ljava/lang/String;Z)V#token#0#0').
name_ref(p_type_35, param, 'type', 'Lorg/apache/commons/cli/Option;.setType(Ljava/lang/Object;)V#type#0#0').
name_ref(p_value_110, param, 'value', 'Lorg/apache/commons/cli/PosixParser;.process(Ljava/lang/String;)V#value#0#0').
name_ref(p_value_44, param, 'value', 'Lorg/apache/commons/cli/Option;.addValue(Ljava/lang/String;)V#value#0#0').
name_ref(p_value_45, param, 'value', 'Lorg/apache/commons/cli/Option;.processValue(Ljava/lang/String;)V#value#0#0').
name_ref(p_value_46, param, 'value', 'Lorg/apache/commons/cli/Option;.add(Ljava/lang/String;)V#value#0#0').
name_ref(f_arg_name_18, field, 'argName', 'Lorg/apache/commons/cli/Option;.argName)Ljava/lang/String;').
name_ref(f_args_1, field, 'args', 'Lorg/apache/commons/cli/CommandLine;.args)Ljava/util/List<>;').
name_ref(f_cmd_92, field, 'cmd', 'Lorg/apache/commons/cli/Parser;.cmd)Lorg/apache/commons/cli/CommandLine;').
name_ref(f_current_option_103, field, 'currentOption', 'Lorg/apache/commons/cli/PosixParser;.currentOption)Lorg/apache/commons/cli/Option;').
name_ref(f_description_34, field, 'description', 'Lorg/apache/commons/cli/Option;.description)Ljava/lang/String;').
name_ref(f_eat_the_rest_102, field, 'eatTheRest', 'Lorg/apache/commons/cli/PosixParser;.eatTheRest)Z').
name_ref(f_has_arg_33, field, 'hasArg', 'Lorg/apache/commons/cli/Option;.hasArg)Z').
name_ref(f_long_opt_32, field, 'longOpt', 'Lorg/apache/commons/cli/Option;.longOpt)Ljava/lang/String;').
name_ref(f_long_opts_55, field, 'longOpts', 'Lorg/apache/commons/cli/Options;.longOpts)Ljava/util/Map<>;').
name_ref(f_number_of_args_19, field, 'numberOfArgs', 'Lorg/apache/commons/cli/Option;.numberOfArgs)I').
name_ref(f_opt_31, field, 'opt', 'Lorg/apache/commons/cli/Option;.opt)Ljava/lang/String;').
name_ref(f_option_groups_57, field, 'optionGroups', 'Lorg/apache/commons/cli/Options;.optionGroups)Ljava/util/Map<>;').
name_ref(f_options_107, field, 'options', 'Lorg/apache/commons/cli/PosixParser;.options)Lorg/apache/commons/cli/Options;').
name_ref(f_options_2, field, 'options', 'Lorg/apache/commons/cli/CommandLine;.options)Ljava/util/Set<>;').
name_ref(f_options_88, field, 'options', 'Lorg/apache/commons/cli/Parser;.options)Lorg/apache/commons/cli/Options;').
name_ref(f_required_39, field, 'required', 'Lorg/apache/commons/cli/Option;.required)Z').
name_ref(f_required_options_91, field, 'requiredOptions', 'Lorg/apache/commons/cli/Parser;.requiredOptions)Ljava/util/List<>;').
name_ref(f_required_opts_56, field, 'requiredOpts', 'Lorg/apache/commons/cli/Options;.requiredOpts)Ljava/util/List<>;').
name_ref(f_short_opts_54, field, 'shortOpts', 'Lorg/apache/commons/cli/Options;.shortOpts)Ljava/util/Map<>;').
name_ref(f_tokens_101, field, 'tokens', 'Lorg/apache/commons/cli/PosixParser;.tokens)Ljava/util/ArrayList<>;').
name_ref(f_uninitialized_20, field, 'UNINITIALIZED', 'Lorg/apache/commons/cli/Option;.UNINITIALIZED)I').
name_ref(f_values_21, field, 'values', 'Lorg/apache/commons/cli/Option;.values)Ljava/util/ArrayList<>;').
name_ref(m_add_54, method, 'add', 'Lorg/apache/commons/cli/Option;.add(Ljava/lang/String;)V').
name_ref(m_add_arg_19, method, 'addArg', 'Lorg/apache/commons/cli/CommandLine;.addArg(Ljava/lang/String;)V').
name_ref(m_add_option_20, method, 'addOption', 'Lorg/apache/commons/cli/CommandLine;.addOption(Lorg/apache/commons/cli/Option;)V').
name_ref(m_add_option_75, method, 'addOption', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;').
name_ref(m_add_option_76, method, 'addOption', 'Lorg/apache/commons/cli/Options;.addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;').
name_ref(m_add_option_77, method, 'addOption', 'Lorg/apache/commons/cli/Options;.addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;').
name_ref(m_add_option_group_73, method, 'addOptionGroup', 'Lorg/apache/commons/cli/Options;.addOptionGroup(Lorg/apache/commons/cli/OptionGroup;)Lorg/apache/commons/cli/Options;').
name_ref(m_add_value_52, method, 'addValue', 'Lorg/apache/commons/cli/Option;.addValue(Ljava/lang/String;)V').
name_ref(m_array_list_23, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_array_list_81, method, 'ArrayList', 'Ljava/util/ArrayList;.(Ljava/util/Collection<+TE;>;)V').
name_ref(m_as_list_97, method, 'asList', 'Ljava/util/Arrays;.asList<T:Ljava/lang/Object;>([TT;)Ljava/util/List<TT;>;').
name_ref(m_assert_equals_118, method, 'assertEquals', 'Ljunit/framework/TestCase;.assertEquals(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_assert_false_122, method, 'assertFalse', 'Ljunit/framework/TestCase;.assertFalse(Z)V').
name_ref(m_assert_null_119, method, 'assertNull', 'Ljunit/framework/TestCase;.assertNull(Ljava/lang/Object;)V').
name_ref(m_burst_token_113, method, 'burstToken', 'Lorg/apache/commons/cli/PosixParser;.burstToken(Ljava/lang/String;Z)V').
name_ref(m_char_at_67, method, 'charAt', 'Ljava/lang/String;.charAt(I)C').
name_ref(m_check_required_options_101, method, 'checkRequiredOptions', 'Lorg/apache/commons/cli/Parser;.checkRequiredOptions()V|Lorg/apache/commons/cli/MissingOptionException;').
name_ref(m_clear_65, method, 'clear', 'Ljava/util/ArrayList;.clear()V').
name_ref(m_clear_values_64, method, 'clearValues', 'Lorg/apache/commons/cli/Option;.clearValues()V').
name_ref(m_command_line_3, method, 'CommandLine', 'Lorg/apache/commons/cli/CommandLine;.()V').
name_ref(m_contains_5, method, 'contains', 'Ljava/util/Set;.contains(Ljava/lang/Object;)Z').
name_ref(m_equals_62, method, 'equals', 'Lorg/apache/commons/cli/Option;.equals(Ljava/lang/Object;)Z').
name_ref(m_flatten_106, method, 'flatten', 'Lorg/apache/commons/cli/PosixParser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;').
name_ref(m_flatten_90, method, 'flatten', 'Lorg/apache/commons/cli/Parser;.flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;').
name_ref(m_get_arg_list_18, method, 'getArgList', 'Lorg/apache/commons/cli/CommandLine;.getArgList()Ljava/util/List;').
name_ref(m_get_arg_name_44, method, 'getArgName', 'Lorg/apache/commons/cli/Option;.getArgName()Ljava/lang/String;').
name_ref(m_get_args_17, method, 'getArgs', 'Lorg/apache/commons/cli/CommandLine;.getArgs()[Ljava/lang/String;').
name_ref(m_get_args_51, method, 'getArgs', 'Lorg/apache/commons/cli/Option;.getArgs()I').
name_ref(m_get_description_39, method, 'getDescription', 'Lorg/apache/commons/cli/Option;.getDescription()Ljava/lang/String;').
name_ref(m_get_id_28, method, 'getId', 'Lorg/apache/commons/cli/Option;.getId()I').
name_ref(m_get_key_29, method, 'getKey', 'Lorg/apache/commons/cli/Option;.getKey()Ljava/lang/String;').
name_ref(m_get_long_opt_33, method, 'getLongOpt', 'Lorg/apache/commons/cli/Option;.getLongOpt()Ljava/lang/String;').
name_ref(m_get_opt_30, method, 'getOpt', 'Lorg/apache/commons/cli/Option;.getOpt()Ljava/lang/String;').
name_ref(m_get_option_86, method, 'getOption', 'Lorg/apache/commons/cli/Options;.getOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;').
name_ref(m_get_option_group_88, method, 'getOptionGroup', 'Lorg/apache/commons/cli/Options;.getOptionGroup(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;').
name_ref(m_get_option_groups_74, method, 'getOptionGroups', 'Lorg/apache/commons/cli/Options;.getOptionGroups()Ljava/util/Collection;').
name_ref(m_get_option_object_8, method, 'getOptionObject', 'Lorg/apache/commons/cli/CommandLine;.getOptionObject(Ljava/lang/String;)Ljava/lang/Object;').
name_ref(m_get_option_object_9, method, 'getOptionObject', 'Lorg/apache/commons/cli/CommandLine;.getOptionObject(C)Ljava/lang/Object;').
name_ref(m_get_option_value_10, method, 'getOptionValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_option_value_11, method, 'getOptionValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(C)Ljava/lang/String;').
name_ref(m_get_option_value_15, method, 'getOptionValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_option_value_16, method, 'getOptionValue', 'Lorg/apache/commons/cli/CommandLine;.getOptionValue(CLjava/lang/String;)Ljava/lang/String;').
name_ref(m_get_option_values_12, method, 'getOptionValues', 'Lorg/apache/commons/cli/CommandLine;.getOptionValues(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_get_option_values_14, method, 'getOptionValues', 'Lorg/apache/commons/cli/CommandLine;.getOptionValues(C)[Ljava/lang/String;').
name_ref(m_get_options_22, method, 'getOptions', 'Lorg/apache/commons/cli/CommandLine;.getOptions()[Lorg/apache/commons/cli/Option;').
name_ref(m_get_options_79, method, 'getOptions', 'Lorg/apache/commons/cli/Options;.getOptions()Ljava/util/Collection;').
name_ref(m_get_required_options_85, method, 'getRequiredOptions', 'Lorg/apache/commons/cli/Options;.getRequiredOptions()Ljava/util/List;').
name_ref(m_get_type_31, method, 'getType', 'Lorg/apache/commons/cli/Option;.getType()Ljava/lang/Object;').
name_ref(m_get_value_55, method, 'getValue', 'Lorg/apache/commons/cli/Option;.getValue()Ljava/lang/String;').
name_ref(m_get_value_56, method, 'getValue', 'Lorg/apache/commons/cli/Option;.getValue(I)Ljava/lang/String;|Ljava/lang/IndexOutOfBoundsException;').
name_ref(m_get_value_57, method, 'getValue', 'Lorg/apache/commons/cli/Option;.getValue(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_value_separator_49, method, 'getValueSeparator', 'Lorg/apache/commons/cli/Option;.getValueSeparator()C').
name_ref(m_get_values_58, method, 'getValues', 'Lorg/apache/commons/cli/Option;.getValues()[Ljava/lang/String;').
name_ref(m_get_values_list_59, method, 'getValuesList', 'Lorg/apache/commons/cli/Option;.getValuesList()Ljava/util/List;').
name_ref(m_gobble_109, method, 'gobble', 'Lorg/apache/commons/cli/PosixParser;.gobble(Ljava/util/Iterator;)V').
name_ref(m_has_arg_38, method, 'hasArg', 'Lorg/apache/commons/cli/Option;.hasArg()Z').
name_ref(m_has_arg_name_45, method, 'hasArgName', 'Lorg/apache/commons/cli/Option;.hasArgName()Z').
name_ref(m_has_args_46, method, 'hasArgs', 'Lorg/apache/commons/cli/Option;.hasArgs()Z').
name_ref(m_has_long_opt_37, method, 'hasLongOpt', 'Lorg/apache/commons/cli/Option;.hasLongOpt()Z').
name_ref(m_has_next_84, method, 'hasNext', 'Ljava/util/Iterator;.hasNext()Z').
name_ref(m_has_next_99, method, 'hasNext', 'Ljava/util/ListIterator;.hasNext()Z').
name_ref(m_has_no_values_61, method, 'hasNoValues', 'Lorg/apache/commons/cli/Option;.hasNoValues()Z').
name_ref(m_has_option_4, method, 'hasOption', 'Lorg/apache/commons/cli/CommandLine;.hasOption(Ljava/lang/String;)Z').
name_ref(m_has_option_7, method, 'hasOption', 'Lorg/apache/commons/cli/CommandLine;.hasOption(C)Z').
name_ref(m_has_option_87, method, 'hasOption', 'Lorg/apache/commons/cli/Options;.hasOption(Ljava/lang/String;)Z').
name_ref(m_has_optional_arg_36, method, 'hasOptionalArg', 'Lorg/apache/commons/cli/Option;.hasOptionalArg()Z').
name_ref(m_has_value_separator_50, method, 'hasValueSeparator', 'Lorg/apache/commons/cli/Option;.hasValueSeparator()Z').
name_ref(m_hash_code_63, method, 'hashCode', 'Lorg/apache/commons/cli/Option;.hashCode()I').
name_ref(m_hash_map_71, method, 'HashMap', 'Ljava/util/HashMap;.()V').
name_ref(m_hash_set_2, method, 'HashSet', 'Ljava/util/HashSet;.()V').
name_ref(m_help_options_80, method, 'helpOptions', 'Lorg/apache/commons/cli/Options;.helpOptions()Ljava/util/List;').
name_ref(m_init_105, method, 'init', 'Lorg/apache/commons/cli/PosixParser;.init()V').
name_ref(m_is_java_identifier_part_70, method, 'isJavaIdentifierPart', 'Ljava/lang/Character;.isJavaIdentifierPart(C)Z').
name_ref(m_is_required_41, method, 'isRequired', 'Lorg/apache/commons/cli/Option;.isRequired()Z').
name_ref(m_is_valid_char_69, method, 'isValidChar', 'Lorg/apache/commons/cli/OptionValidator;.isValidChar(C)Z').
name_ref(m_is_valid_opt_68, method, 'isValidOpt', 'Lorg/apache/commons/cli/OptionValidator;.isValidOpt(C)Z').
name_ref(m_iterator_21, method, 'iterator', 'Lorg/apache/commons/cli/CommandLine;.iterator()Ljava/util/Iterator;').
name_ref(m_iterator_83, method, 'iterator', 'Ljava/util/Collection;.iterator()Ljava/util/Iterator<TE;>;').
name_ref(m_iterator_95, method, 'iterator', 'Ljava/util/List;.iterator()Ljava/util/Iterator<TE;>;').
name_ref(m_length_66, method, 'length', 'Ljava/lang/String;.length()I').
name_ref(m_linked_list_1, method, 'LinkedList', 'Ljava/util/LinkedList;.()V').
name_ref(m_list_iterator_98, method, 'listIterator', 'Ljava/util/List;.listIterator()Ljava/util/ListIterator<TE;>;').
name_ref(m_next_96, method, 'next', 'Ljava/util/Iterator;.next()TE;').
name_ref(m_option_24, method, 'Option', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;').
name_ref(m_option_25, method, 'Option', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;').
name_ref(m_option_26, method, 'Option', 'Lorg/apache/commons/cli/Option;.(Ljava/lang/String;ZLjava/lang/String;)V|Ljava/lang/IllegalArgumentException;').
name_ref(m_options_72, method, 'Options', 'Lorg/apache/commons/cli/Options;.()V').
name_ref(m_parse_91, method, 'parse', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_parse_92, method, 'parse', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_parse_93, method, 'parse', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_parse_94, method, 'parse', 'Lorg/apache/commons/cli/Parser;.parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)Lorg/apache/commons/cli/CommandLine;|Lorg/apache/commons/cli/ParseException;').
name_ref(m_posix_parser_121, method, 'PosixParser', 'Lorg/apache/commons/cli/PosixParser;.()V').
name_ref(m_process_110, method, 'process', 'Lorg/apache/commons/cli/PosixParser;.process(Ljava/lang/String;)V').
name_ref(m_process_args_103, method, 'processArgs', 'Lorg/apache/commons/cli/Parser;.processArgs(Lorg/apache/commons/cli/Option;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_process_option_104, method, 'processOption', 'Lorg/apache/commons/cli/Parser;.processOption(Ljava/lang/String;Ljava/util/ListIterator;)V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_process_option_token_112, method, 'processOptionToken', 'Lorg/apache/commons/cli/PosixParser;.processOptionToken(Ljava/lang/String;Z)V').
name_ref(m_process_properties_100, method, 'processProperties', 'Lorg/apache/commons/cli/Parser;.processProperties(Ljava/util/Properties;)V').
name_ref(m_process_single_hyphen_111, method, 'processSingleHyphen', 'Lorg/apache/commons/cli/PosixParser;.processSingleHyphen(Ljava/lang/String;)V').
name_ref(m_process_value_53, method, 'processValue', 'Lorg/apache/commons/cli/Option;.processValue(Ljava/lang/String;)V').
name_ref(m_put_78, method, 'put', 'Ljava/util/Map;.put(TK;TV;)TV;').
name_ref(m_resolve_option_6, method, 'resolveOption', 'Lorg/apache/commons/cli/CommandLine;.resolveOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;').
name_ref(m_set_arg_name_43, method, 'setArgName', 'Lorg/apache/commons/cli/Option;.setArgName(Ljava/lang/String;)V').
name_ref(m_set_args_47, method, 'setArgs', 'Lorg/apache/commons/cli/Option;.setArgs(I)V').
name_ref(m_set_description_40, method, 'setDescription', 'Lorg/apache/commons/cli/Option;.setDescription(Ljava/lang/String;)V').
name_ref(m_set_long_opt_34, method, 'setLongOpt', 'Lorg/apache/commons/cli/Option;.setLongOpt(Ljava/lang/String;)V').
name_ref(m_set_optional_arg_35, method, 'setOptionalArg', 'Lorg/apache/commons/cli/Option;.setOptionalArg(Z)V').
name_ref(m_set_required_42, method, 'setRequired', 'Lorg/apache/commons/cli/Option;.setRequired(Z)V').
name_ref(m_set_type_32, method, 'setType', 'Lorg/apache/commons/cli/Option;.setType(Ljava/lang/Object;)V').
name_ref(m_set_value_separator_48, method, 'setValueSeparator', 'Lorg/apache/commons/cli/Option;.setValueSeparator(C)V').
name_ref(m_size_102, method, 'size', 'Ljava/util/List;.size()I').
name_ref(m_size_108, method, 'size', 'Ljava/util/ArrayList;.size()I').
name_ref(m_starts_with_114, method, 'startsWith', 'Ljava/lang/String;.startsWith(Ljava/lang/String;)Z').
name_ref(m_strip_leading_and_trailing_quotes_116, method, 'stripLeadingAndTrailingQuotes', 'Lorg/apache/commons/cli/Util;.stripLeadingAndTrailingQuotes(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_leading_hyphens_13, method, 'stripLeadingHyphens', 'Lorg/apache/commons/cli/Util;.stripLeadingHyphens(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_115, method, 'substring', 'Ljava/lang/String;.substring(II)Ljava/lang/String;').
name_ref(m_test_order_120, method, 'testOrder', 'Lorg/apache/commons/cli/bug/BugCLI133Test;.testOrder()V|Lorg/apache/commons/cli/ParseException;').
name_ref(m_test_strip_leading_hyphens_117, method, 'testStripLeadingHyphens', 'Lorg/apache/commons/cli/UtilTest;.testStripLeadingHyphens()V').
name_ref(m_to_array_107, method, 'toArray', 'Ljava/util/ArrayList;.toArray<T:Ljava/lang/Object;>([TT;)[TT;').
name_ref(m_to_string_60, method, 'toString', 'Lorg/apache/commons/cli/Option;.toString()Ljava/lang/String;').
name_ref(m_to_string_89, method, 'toString', 'Lorg/apache/commons/cli/Options;.toString()Ljava/lang/String;').
name_ref(m_validate_option_27, method, 'validateOption', 'Lorg/apache/commons/cli/OptionValidator;.validateOption(Ljava/lang/String;)V|Ljava/lang/IllegalArgumentException;').
name_ref(m_values_82, method, 'values', 'Ljava/util/Map;.values()Ljava/util/Collection<TV;>;').

%%% End of Code Facts