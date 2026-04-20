%%% Logic-FL Facts
:- style_check(-discontiguous).

%bug_cli133test_1 - org.apache.commons.cli.bug.BugCLI133Test
throw(m_test_order_120, parse_exception).
assign(v_option_a_118, bug_cli133test_1_expr1, line(bug_cli133test_1, 27)).
method_invoc(bug_cli133test_1_expr1, m_option_24, line(bug_cli133test_1, 27)).
throw(bug_cli133test_1_expr1, illegal_argument_exception, line(bug_cli133test_1, 27)).
argument(bug_cli133test_1_literal1, 1, bug_cli133test_1_expr1).
argument(bug_cli133test_1_literal2, 2, bug_cli133test_1_expr1).
assign(v_opts_119, bug_cli133test_1_expr2, line(bug_cli133test_1, 28)).
method_invoc(bug_cli133test_1_expr2, m_options_72, line(bug_cli133test_1, 28)).
method_invoc(bug_cli133test_1_expr3, m_add_option_77, line(bug_cli133test_1, 29)).
argument(v_option_a_118, 1, bug_cli133test_1_expr3).
ref(v_opts_119, bug_cli133test_1_expr3, line(bug_cli133test_1, 29)).
assign(v_posix_parser_120, bug_cli133test_1_expr4, line(bug_cli133test_1, 30)).
method_invoc(bug_cli133test_1_expr4, m_posix_parser_121, line(bug_cli133test_1, 30)).
assign(v_line_121, bug_cli133test_1_expr5, line(bug_cli133test_1, 31)).
method_invoc(bug_cli133test_1_expr5, m_parse_91, line(bug_cli133test_1, 31)).
throw(bug_cli133test_1_expr5, parse_exception, line(bug_cli133test_1, 31)).
argument(v_opts_119, 1, bug_cli133test_1_expr5).
argument(bug_cli133test_1_literal3, 2, bug_cli133test_1_expr5).
ref(v_posix_parser_120, bug_cli133test_1_expr5, line(bug_cli133test_1, 31)).
method_invoc(bug_cli133test_1_expr6, m_assert_false_122, line(bug_cli133test_1, 32)).
argument(bug_cli133test_1_expr7, 1, bug_cli133test_1_expr6).
method_invoc(bug_cli133test_1_expr7, m_has_option_4, line(bug_cli133test_1, 32)).
argument(bug_cli133test_1_literal4, 1, bug_cli133test_1_expr7).
ref(v_line_121, bug_cli133test_1_expr7, line(bug_cli133test_1, 32)).

%command_line_1 - org.apache.commons.cli.CommandLine
assign(f_args_1, command_line_1_expr1, line(command_line_1, 44)).
method_invoc(command_line_1_expr1, m_linked_list_1, line(command_line_1, 44)).
assign(f_options_2, command_line_1_expr2, line(command_line_1, 47)).
method_invoc(command_line_1_expr2, m_hash_set_2, line(command_line_1, 47)).
param(p_opt_3, 1, m_has_option_4).
return(command_line_1_expr3, m_has_option_4, line(command_line_1, 68)).
method_invoc(command_line_1_expr3, m_contains_5, line(command_line_1, 68)).
argument(command_line_1_expr4, 1, command_line_1_expr3).
ref(f_options_2, command_line_1_expr3, line(command_line_1, 68)).
method_invoc(command_line_1_expr4, m_resolve_option_6, line(command_line_1, 68)).
argument(p_opt_3, 1, command_line_1_expr4).
param(p_opt_4, 1, m_has_option_7).
param(p_opt_5, 1, m_get_option_object_8).
param(p_opt_6, 1, m_get_option_object_9).
param(p_opt_7, 1, m_get_option_value_10).
param(p_opt_8, 1, m_get_option_value_11).
param(p_opt_9, 1, m_get_option_values_12).
param(p_opt_10, 1, m_resolve_option_6).
assign(p_opt_10, command_line_1_expr6, line(command_line_1, 166)).
method_invoc(command_line_1_expr6, m_strip_leading_hyphens_13, line(command_line_1, 166)).
throw(command_line_1_expr6, null_pointer_exception, line(command_line_1, 166)).
argument(p_opt_10, 1, command_line_1_expr6).
ref(t_util_1, command_line_1_expr6, line(command_line_1, 166)).
param(p_opt_11, 1, m_get_option_values_14).
param(p_opt_12, 1, m_get_option_value_15).
param(p_default_value_13, 2, m_get_option_value_15).
param(p_opt_14, 1, m_get_option_value_16).
param(p_default_value_15, 2, m_get_option_value_16).
param(p_arg_16, 1, m_add_arg_19).
param(p_opt_17, 1, m_add_option_20).

%util_test_1 - org.apache.commons.cli.UtilTest
method_invoc(util_test_1_expr1, m_assert_equals_118, line(util_test_1, 26)).
argument(util_test_1_literal1, 1, util_test_1_expr1).
argument(util_test_1_expr2, 2, util_test_1_expr1).
method_invoc(util_test_1_expr2, m_strip_leading_hyphens_13, line(util_test_1, 26)).
argument(util_test_1_literal2, 1, util_test_1_expr2).
ref(t_util_1, util_test_1_expr2, line(util_test_1, 26)).
method_invoc(util_test_1_expr3, m_assert_equals_118, line(util_test_1, 27)).
argument(util_test_1_literal3, 1, util_test_1_expr3).
argument(util_test_1_expr4, 2, util_test_1_expr3).
method_invoc(util_test_1_expr4, m_strip_leading_hyphens_13, line(util_test_1, 27)).
argument(util_test_1_literal4, 1, util_test_1_expr4).
ref(t_util_1, util_test_1_expr4, line(util_test_1, 27)).
method_invoc(util_test_1_expr5, m_assert_null_119, line(util_test_1, 28)).
argument(util_test_1_expr6, 1, util_test_1_expr5).
method_invoc(util_test_1_expr6, m_strip_leading_hyphens_13, line(util_test_1, 28)).
throw(util_test_1_expr6, null_pointer_exception, line(util_test_1, 28)).
argument(util_test_1_literal5, 1, util_test_1_expr6).
ref(t_util_1, util_test_1_expr6, line(util_test_1, 28)).
throw(util_test_1_expr5, null_pointer_exception, line(util_test_1, 28)).

%option_validator_1 - org.apache.commons.cli.OptionValidator
param(p_opt_50, 1, m_validate_option_27).
throw(m_validate_option_27, illegal_argument_exception).
method_invoc(option_validator_1_expr3, m_length_66, line(option_validator_1, 51)).
ref(p_opt_50, option_validator_1_expr3, line(option_validator_1, 51)).
assign(v_ch_51, option_validator_1_expr4, line(option_validator_1, 53)).
method_invoc(option_validator_1_expr4, m_char_at_67, line(option_validator_1, 53)).
argument(option_validator_1_literal3, 1, option_validator_1_expr4).
ref(p_opt_50, option_validator_1_expr4, line(option_validator_1, 53)).
method_invoc(option_validator_1_expr6, m_is_valid_opt_68, line(option_validator_1, 55)).
argument(v_ch_51, 1, option_validator_1_expr6).
param(p_c_52, 1, m_is_valid_opt_68).
return(option_validator_1_expr7, m_is_valid_opt_68, line(option_validator_1, 88)).
assign(option_validator_1_expr7, option_validator_1_expr8, line(option_validator_1, 88)).
method_invoc(option_validator_1_expr9, m_is_valid_char_69, line(option_validator_1, 88)).
argument(p_c_52, 1, option_validator_1_expr9).
assign(option_validator_1_expr10, option_validator_1_expr11, line(option_validator_1, 88)).
assign(option_validator_1_expr12, option_validator_1_expr13, line(option_validator_1, 88)).
param(p_c_53, 1, m_is_valid_char_69).
return(option_validator_1_expr15, m_is_valid_char_69, line(option_validator_1, 99)).
method_invoc(option_validator_1_expr15, m_is_java_identifier_part_70, line(option_validator_1, 99)).
argument(p_c_53, 1, option_validator_1_expr15).
ref(t_character_3, option_validator_1_expr15, line(option_validator_1, 99)).

%posix_parser_1 - org.apache.commons.cli.PosixParser
assign(f_tokens_101, posix_parser_1_expr1, line(posix_parser_1, 34)).
method_invoc(posix_parser_1_expr1, m_array_list_23, line(posix_parser_1, 34)).
assign(f_eat_the_rest_102, posix_parser_1_literal1, line(posix_parser_1, 52)).
method_invoc(posix_parser_1_expr3, m_clear_65, line(posix_parser_1, 53)).
ref(f_tokens_101, posix_parser_1_expr3, line(posix_parser_1, 53)).
assign(f_current_option_103, posix_parser_1_literal2, line(posix_parser_1, 54)).
param(p_options_104, 1, m_flatten_106).
param(p_arguments_105, 2, m_flatten_106).
param(p_stop_at_non_option_106, 3, m_flatten_106).
method_invoc(posix_parser_1_expr5, m_init_105, line(posix_parser_1, 98)).
assign(f_options_107, p_options_104, line(posix_parser_1, 99)).
assign(v_iter_108, posix_parser_1_expr9, line(posix_parser_1, 102)).
method_invoc(posix_parser_1_expr9, m_iterator_95, line(posix_parser_1, 102)).
ref(posix_parser_1_expr10, posix_parser_1_expr9, line(posix_parser_1, 102)).
method_invoc(posix_parser_1_expr10, m_as_list_97, line(posix_parser_1, 102)).
argument(p_arguments_105, 1, posix_parser_1_expr10).
ref(t_arrays_5, posix_parser_1_expr10, line(posix_parser_1, 102)).
method_invoc(posix_parser_1_expr11, m_has_next_84, line(posix_parser_1, 106)).
ref(v_iter_108, posix_parser_1_expr11, line(posix_parser_1, 106)).
return(posix_parser_1_expr12, m_flatten_106, line(posix_parser_1, 163)).
assign(posix_parser_1_expr12, posix_parser_1_expr13, line(posix_parser_1, 163)).
method_invoc(posix_parser_1_expr13, m_to_array_107, line(posix_parser_1, 163)).
argument(posix_parser_1_expr14, 1, posix_parser_1_expr13).
ref(f_tokens_101, posix_parser_1_expr13, line(posix_parser_1, 163)).
method_invoc(posix_parser_1_expr15, m_size_108, line(posix_parser_1, 163)).
ref(f_tokens_101, posix_parser_1_expr15, line(posix_parser_1, 163)).
param(p_iter_109, 1, m_gobble_109).
param(p_value_110, 1, m_process_110).
param(p_hyphen_111, 1, m_process_single_hyphen_111).
param(p_token_112, 1, m_process_option_token_112).
param(p_stop_at_non_option_113, 2, m_process_option_token_112).
param(p_token_114, 1, m_burst_token_113).
param(p_stop_at_non_option_115, 2, m_burst_token_113).

%option_1 - org.apache.commons.cli.Option
assign(f_arg_name_18, option_1_literal1, line(option_1, 55)).
assign(f_number_of_args_19, f_uninitialized_20, line(option_1, 70)).
assign(f_values_21, option_1_expr1, line(option_1, 76)).
method_invoc(option_1_expr1, m_array_list_23, line(option_1, 76)).
param(p_opt_22, 1, m_option_24).
param(p_description_23, 2, m_option_24).
throw(m_option_24, illegal_argument_exception).
method_invoc(option_1_expr2, m_option_25, line(option_1, 93)).
throw(option_1_expr2, illegal_argument_exception, line(option_1, 93)).
argument(p_opt_22, 1, option_1_expr2).
argument(option_1_literal2, 2, option_1_expr2).
argument(option_1_literal3, 3, option_1_expr2).
argument(p_description_23, 4, option_1_expr2).
param(p_opt_24, 1, m_option_26).
param(p_has_arg_25, 2, m_option_26).
param(p_description_26, 3, m_option_26).
throw(m_option_26, illegal_argument_exception).
param(p_opt_27, 1, m_option_25).
param(p_long_opt_28, 2, m_option_25).
param(p_has_arg_29, 3, m_option_25).
param(p_description_30, 4, m_option_25).
throw(m_option_25, illegal_argument_exception).
method_invoc(option_1_expr3, m_validate_option_27, line(option_1, 128)).
throw(option_1_expr3, illegal_argument_exception, line(option_1, 128)).
argument(p_opt_27, 1, option_1_expr3).
ref(t_option_validator_2, option_1_expr3, line(option_1, 128)).
assign(f_opt_31, p_opt_27, line(option_1, 130)).
assign(f_long_opt_32, p_long_opt_28, line(option_1, 131)).
assign(f_has_arg_33, p_has_arg_29, line(option_1, 139)).
assign(f_description_34, p_description_30, line(option_1, 140)).
return(f_opt_31, m_get_key_29, line(option_1, 168)).
param(p_type_35, 1, m_set_type_32).
param(p_long_opt_36, 1, m_set_long_opt_34).
param(p_optional_arg_37, 1, m_set_optional_arg_35).
return(option_1_expr19, m_has_long_opt_37, line(option_1, 252)).
assign(option_1_expr19, option_1_expr20, line(option_1, 252)).
param(p_description_38, 1, m_set_description_40).
return(f_required_39, m_is_required_41, line(option_1, 292)).
param(p_required_40, 1, m_set_required_42).
param(p_arg_name_41, 1, m_set_arg_name_43).
param(p_num_42, 1, m_set_args_47).
param(p_sep_43, 1, m_set_value_separator_48).
param(p_value_44, 1, m_add_value_52).
param(p_value_45, 1, m_process_value_53).
param(p_value_46, 1, m_add_54).
param(p_index_47, 1, m_get_value_56).
throw(m_get_value_56, index_out_of_bounds_exception).
param(p_default_value_48, 1, m_get_value_57).
param(p_o_49, 1, m_equals_62).
method_invoc(option_1_expr25, m_clear_65, line(option_1, 643)).
ref(f_values_21, option_1_expr25, line(option_1, 643)).

%parser_1 - org.apache.commons.cli.Parser
param(p_opts_73, 1, m_flatten_90).
param(p_arguments_74, 2, m_flatten_90).
param(p_stop_at_non_option_75, 3, m_flatten_90).
param(p_options_76, 1, m_parse_91).
param(p_arguments_77, 2, m_parse_91).
throw(m_parse_91, parse_exception).
return(parser_1_expr1, m_parse_91, line(parser_1, 71)).
method_invoc(parser_1_expr1, m_parse_92, line(parser_1, 71)).
throw(parser_1_expr1, parse_exception, line(parser_1, 71)).
argument(p_options_76, 1, parser_1_expr1).
argument(p_arguments_77, 2, parser_1_expr1).
argument(parser_1_literal1, 3, parser_1_expr1).
argument(parser_1_literal2, 4, parser_1_expr1).
param(p_options_78, 1, m_parse_93).
param(p_arguments_79, 2, m_parse_93).
param(p_properties_80, 3, m_parse_93).
throw(m_parse_93, parse_exception).
param(p_options_81, 1, m_parse_94).
param(p_arguments_82, 2, m_parse_94).
param(p_stop_at_non_option_83, 3, m_parse_94).
throw(m_parse_94, parse_exception).
param(p_options_84, 1, m_parse_92).
param(p_arguments_85, 2, m_parse_92).
param(p_properties_86, 3, m_parse_92).
param(p_stop_at_non_option_87, 4, m_parse_92).
throw(m_parse_92, parse_exception).
assign(f_options_88, p_options_84, line(parser_1, 135)).
assign(v_it_89, parser_1_expr6, line(parser_1, 138)).
method_invoc(parser_1_expr6, m_iterator_95, line(parser_1, 138)).
ref(parser_1_expr7, parser_1_expr6, line(parser_1, 138)).
method_invoc(parser_1_expr7, m_help_options_80, line(parser_1, 138)).
ref(p_options_84, parser_1_expr7, line(parser_1, 138)).
method_invoc(parser_1_expr8, m_has_next_84, line(parser_1, 138)).
ref(v_it_89, parser_1_expr8, line(parser_1, 138)).
assign(v_opt_90, parser_1_expr9, line(parser_1, 139)).
assign(parser_1_expr9, parser_1_expr10, line(parser_1, 139)).
method_invoc(parser_1_expr10, m_next_96, line(parser_1, 139)).
ref(v_it_89, parser_1_expr10, line(parser_1, 139)).
method_invoc(parser_1_expr11, m_clear_values_64, line(parser_1, 140)).
ref(v_opt_90, parser_1_expr11, line(parser_1, 140)).
assign(f_required_options_91, parser_1_expr13, line(parser_1, 143)).
method_invoc(parser_1_expr13, m_get_required_options_85, line(parser_1, 143)).
ref(p_options_84, parser_1_expr13, line(parser_1, 143)).
assign(f_cmd_92, parser_1_expr15, line(parser_1, 144)).
method_invoc(parser_1_expr15, m_command_line_3, line(parser_1, 144)).
assign(v_eat_the_rest_93, parser_1_literal3, line(parser_1, 146)).
assign(p_arguments_85, parser_1_expr18, line(parser_1, 150)).
assign(v_token_list_94, parser_1_expr19, line(parser_1, 153)).
method_invoc(parser_1_expr19, m_as_list_97, line(parser_1, 153)).
argument(parser_1_expr20, 1, parser_1_expr19).
ref(t_arrays_5, parser_1_expr19, line(parser_1, 153)).
method_invoc(parser_1_expr20, m_flatten_90, line(parser_1, 153)).
argument(f_options_88, 1, parser_1_expr20).
argument(p_arguments_85, 2, parser_1_expr20).
argument(p_stop_at_non_option_87, 3, parser_1_expr20).
assign(v_iterator_95, parser_1_expr23, line(parser_1, 157)).
method_invoc(parser_1_expr23, m_list_iterator_98, line(parser_1, 157)).
ref(v_token_list_94, parser_1_expr23, line(parser_1, 157)).
method_invoc(parser_1_expr24, m_has_next_99, line(parser_1, 160)).
ref(v_iterator_95, parser_1_expr24, line(parser_1, 160)).
method_invoc(parser_1_expr25, m_process_properties_100, line(parser_1, 224)).
argument(p_properties_86, 1, parser_1_expr25).
method_invoc(parser_1_expr26, m_check_required_options_101, line(parser_1, 225)).
throw(parser_1_expr26, missing_option_exception, line(parser_1, 225)).
return(f_cmd_92, m_parse_92, line(parser_1, 227)).
param(p_properties_96, 1, m_process_properties_100).
return(none, m_process_properties_100, line(parser_1, 240)).
throw(m_check_required_options_101, missing_option_exception).
method_invoc(parser_1_expr29, m_size_102, line(parser_1, 295)).
ref(f_required_options_91, parser_1_expr29, line(parser_1, 295)).
param(p_opt_97, 1, m_process_args_103).
param(p_iter_98, 2, m_process_args_103).
throw(m_process_args_103, parse_exception).
param(p_arg_99, 1, m_process_option_104).
param(p_iter_100, 2, m_process_option_104).
throw(m_process_option_104, parse_exception).

%options_1 - org.apache.commons.cli.Options
assign(f_short_opts_54, options_1_expr1, line(options_1, 46)).
method_invoc(options_1_expr1, m_hash_map_71, line(options_1, 46)).
assign(f_long_opts_55, options_1_expr2, line(options_1, 49)).
method_invoc(options_1_expr2, m_hash_map_71, line(options_1, 49)).
assign(f_required_opts_56, options_1_expr3, line(options_1, 52)).
method_invoc(options_1_expr3, m_array_list_23, line(options_1, 52)).
assign(f_option_groups_57, options_1_expr4, line(options_1, 55)).
method_invoc(options_1_expr4, m_hash_map_71, line(options_1, 55)).
param(p_group_58, 1, m_add_option_group_73).
param(p_opt_59, 1, m_add_option_75).
param(p_has_arg_60, 2, m_add_option_75).
param(p_description_61, 3, m_add_option_75).
param(p_opt_62, 1, m_add_option_76).
param(p_long_opt_63, 2, m_add_option_76).
param(p_has_arg_64, 3, m_add_option_76).
param(p_description_65, 4, m_add_option_76).
param(p_opt_66, 1, m_add_option_77).
assign(v_key_67, options_1_expr5, line(options_1, 146)).
method_invoc(options_1_expr5, m_get_key_29, line(options_1, 146)).
ref(p_opt_66, options_1_expr5, line(options_1, 146)).
method_invoc(options_1_expr6, m_has_long_opt_37, line(options_1, 149)).
ref(p_opt_66, options_1_expr6, line(options_1, 149)).
method_invoc(options_1_expr7, m_is_required_41, line(options_1, 155)).
ref(p_opt_66, options_1_expr7, line(options_1, 155)).
method_invoc(options_1_expr8, m_put_78, line(options_1, 163)).
argument(v_key_67, 1, options_1_expr8).
argument(p_opt_66, 2, options_1_expr8).
ref(f_short_opts_54, options_1_expr8, line(options_1, 163)).
return(options_1_expr9, m_add_option_77, line(options_1, 165)).
assign(v_opts_68, options_1_expr10, line(options_1, 185)).
method_invoc(options_1_expr10, m_array_list_81, line(options_1, 185)).
argument(options_1_expr11, 1, options_1_expr10).
method_invoc(options_1_expr11, m_values_82, line(options_1, 185)).
ref(f_short_opts_54, options_1_expr11, line(options_1, 185)).
assign(v_iter_69, options_1_expr12, line(options_1, 189)).
method_invoc(options_1_expr12, m_iterator_83, line(options_1, 189)).
ref(options_1_expr13, options_1_expr12, line(options_1, 189)).
method_invoc(options_1_expr13, m_values_82, line(options_1, 189)).
ref(f_long_opts_55, options_1_expr13, line(options_1, 189)).
method_invoc(options_1_expr14, m_has_next_84, line(options_1, 191)).
ref(v_iter_69, options_1_expr14, line(options_1, 191)).
return(options_1_expr15, m_help_options_80, line(options_1, 201)).
method_invoc(options_1_expr15, m_array_list_81, line(options_1, 201)).
argument(v_opts_68, 1, options_1_expr15).
return(f_required_opts_56, m_get_required_options_85, line(options_1, 212)).
param(p_opt_70, 1, m_get_option_86).
param(p_opt_71, 1, m_has_option_87).
param(p_opt_72, 1, m_get_option_group_88).

%util_1 - org.apache.commons.cli.Util
param(p_str_116, 1, m_strip_leading_hyphens_13).
method_invoc(util_1_expr1, m_starts_with_114, line(util_1, 36)).
argument(util_1_literal1, 1, util_1_expr1).
ref(p_str_116, util_1_expr1, line(util_1, 36)).
return(util_1_expr2, m_strip_leading_hyphens_13, line(util_1, 38)).
method_invoc(util_1_expr2, m_substring_115, line(util_1, 38)).
argument(util_1_literal2, 1, util_1_expr2).
argument(util_1_expr3, 2, util_1_expr2).
ref(p_str_116, util_1_expr2, line(util_1, 38)).
method_invoc(util_1_expr3, m_length_66, line(util_1, 38)).
ref(p_str_116, util_1_expr3, line(util_1, 38)).
method_invoc(util_1_expr4, m_starts_with_114, line(util_1, 40)).
argument(util_1_literal3, 1, util_1_expr4).
ref(p_str_116, util_1_expr4, line(util_1, 40)).
return(util_1_expr5, m_strip_leading_hyphens_13, line(util_1, 42)).
method_invoc(util_1_expr5, m_substring_115, line(util_1, 42)).
argument(util_1_literal4, 1, util_1_expr5).
argument(util_1_expr6, 2, util_1_expr5).
ref(p_str_116, util_1_expr5, line(util_1, 42)).
method_invoc(util_1_expr6, m_length_66, line(util_1, 42)).
ref(p_str_116, util_1_expr6, line(util_1, 42)).
param(p_str_117, 1, m_strip_leading_and_trailing_quotes_116).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.cli.bug.BugCLI133Test', 'testOrder').
trace(trace_1, failure_1, m_strip_leading_hyphens_13, line(util_1, 36), failure_1, target).
trace(trace_2, trace_1, m_resolve_option_6, line(command_line_1, 166), failure_1, target).
trace(trace_3, trace_2, m_has_option_4, line(command_line_1, 68), failure_1, target).
trace(trace_4, trace_3, m_test_order_120, line(bug_cli133test_1, 32), failure_1, target).
trace(trace_5, trace_4, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_8, trace_7, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_9, trace_8, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_10, trace_9, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_11, trace_10, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_12, trace_11, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_14, trace_13, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_15, trace_14, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_18, trace_17, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_19, trace_18, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.cli.UtilTest', 'testStripLeadingHyphens').
trace(trace_20, failure_2, m_strip_leading_hyphens_13, line(util_1, 36), failure_2, target).
trace(trace_21, trace_20, m_test_strip_leading_hyphens_117, line(util_test_1, 28), failure_2, target).
trace(trace_22, trace_21, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_2, non_target).
trace(trace_23, trace_22, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_2, non_target).
trace(trace_24, trace_23, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_2, non_target).
trace(trace_25, trace_24, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_26, trace_25, 'runTest', line(junit_framework_test_case, 177), failure_2, non_target).
trace(trace_27, trace_26, 'runBare', line(junit_framework_test_case, 142), failure_2, non_target).
trace(trace_28, trace_27, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_29, trace_28, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_30, trace_29, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_31, trace_30, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_32, trace_31, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_33, trace_32, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_34, trace_33, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_35, trace_34, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_36, trace_35, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(p_opt_3, null, line(command_line_1, 68)).
val(p_opt_10, null, line(command_line_1, 166)).
val(p_str_116, null, line(util_1, 36)).



%%% End of Facts