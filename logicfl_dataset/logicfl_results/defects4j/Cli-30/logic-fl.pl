%%% Logic-FL Facts
:- style_check(-discontiguous).

%gnu_parser_1 - org.apache.commons.cli.GnuParser
param(p_options_65, 1, m_flatten_92).
param(p_arguments_66, 2, m_flatten_92).
param(p_stop_at_non_option_67, 3, m_flatten_92).
assign(v_tokens_68, gnu_parser_1_expr1, line(gnu_parser_1, 52)).
method_invoc(gnu_parser_1_expr1, m_array_list_30, line(gnu_parser_1, 52)).
assign(v_eat_the_rest_69, gnu_parser_1_literal1, line(gnu_parser_1, 54)).
assign(v_i_70, gnu_parser_1_literal2, line(gnu_parser_1, 56)).
ref(p_arguments_66, q_length_1, line(gnu_parser_1, 56)).
return(gnu_parser_1_expr5, m_flatten_92, line(gnu_parser_1, 112)).
assign(gnu_parser_1_expr5, gnu_parser_1_expr6, line(gnu_parser_1, 112)).
method_invoc(gnu_parser_1_expr6, m_to_array_93, line(gnu_parser_1, 112)).
argument(gnu_parser_1_expr7, 1, gnu_parser_1_expr6).
ref(v_tokens_68, gnu_parser_1_expr6, line(gnu_parser_1, 112)).
method_invoc(gnu_parser_1_expr8, m_size_94, line(gnu_parser_1, 112)).
ref(v_tokens_68, gnu_parser_1_expr8, line(gnu_parser_1, 112)).

%command_line_1 - org.apache.commons.cli.CommandLine
assign(f_args_5, command_line_1_expr1, line(command_line_1, 49)).
method_invoc(command_line_1_expr1, m_linked_list_29, line(command_line_1, 49)).
assign(f_options_6, command_line_1_expr2, line(command_line_1, 52)).
method_invoc(command_line_1_expr2, m_array_list_30, line(command_line_1, 52)).
param(p_opt_7, 1, m_has_option_32).
return(command_line_1_expr3, m_has_option_32, line(command_line_1, 70)).
method_invoc(command_line_1_expr3, m_contains_33, line(command_line_1, 70)).
argument(command_line_1_expr4, 1, command_line_1_expr3).
ref(f_options_6, command_line_1_expr3, line(command_line_1, 70)).
method_invoc(command_line_1_expr4, m_resolve_option_34, line(command_line_1, 70)).
argument(p_opt_7, 1, command_line_1_expr4).
param(p_opt_8, 1, m_has_option_35).
param(p_opt_9, 1, m_get_option_object_36).
param(p_opt_10, 1, m_get_parsed_option_value_37).
throw(m_get_parsed_option_value_37, parse_exception).
param(p_opt_11, 1, m_get_option_object_38).
param(p_opt_12, 1, m_get_option_value_39).
param(p_opt_13, 1, m_get_option_value_40).
param(p_opt_14, 1, m_get_option_values_41).
param(p_opt_15, 1, m_resolve_option_34).
assign(p_opt_15, command_line_1_expr6, line(command_line_1, 196)).
method_invoc(command_line_1_expr6, m_strip_leading_hyphens_42, line(command_line_1, 196)).
argument(p_opt_15, 1, command_line_1_expr6).
ref(t_util_3, command_line_1_expr6, line(command_line_1, 196)).
assign(v_it_16, command_line_1_expr8, line(command_line_1, 197)).
method_invoc(command_line_1_expr8, m_iterator_43, line(command_line_1, 197)).
ref(f_options_6, command_line_1_expr8, line(command_line_1, 197)).
method_invoc(command_line_1_expr9, m_has_next_44, line(command_line_1, 197)).
ref(v_it_16, command_line_1_expr9, line(command_line_1, 197)).
return(command_line_1_literal1, m_resolve_option_34, line(command_line_1, 211)).
param(p_opt_17, 1, m_get_option_values_45).
param(p_opt_18, 1, m_get_option_value_46).
param(p_default_value_19, 2, m_get_option_value_46).
param(p_opt_20, 1, m_get_option_value_47).
param(p_default_value_21, 2, m_get_option_value_47).
param(p_opt_22, 1, m_get_option_properties_48).
param(p_arg_23, 1, m_add_arg_51).
param(p_opt_24, 1, m_add_option_52).

%parser_test_case_1 - org.apache.commons.cli.ParserTestCase
throw(m_test_simple_short_199, exception).
throw(m_test_simple_long_200, exception).
throw(m_test_multiple_201, exception).
throw(m_test_multiple_with_long_202, exception).
throw(m_test_unrecognized_option_203, exception).
throw(m_test_missing_arg_204, exception).
throw(m_test_double_dash1_205, exception).
throw(m_test_double_dash2_206, exception).
throw(m_test_single_dash_207, exception).
throw(m_test_stop_at_unexpected_arg_208, exception).
throw(m_test_stop_at_expected_arg_209, exception).
throw(m_test_stop_at_non_option_short_210, exception).
throw(m_test_stop_at_non_option_long_211, exception).
throw(m_test_negative_argument_212, exception).
throw(m_test_negative_option_213, exception).
throw(m_test_argument_starting_with_hyphen_214, exception).
throw(m_test_short_with_equal_215, exception).
throw(m_test_short_without_equal_216, exception).
throw(m_test_long_with_equal_double_dash_217, exception).
throw(m_test_long_with_equal_single_dash_218, exception).
throw(m_test_long_without_equal_single_dash_219, exception).
throw(m_test_ambiguous_long_without_equal_single_dash_220, exception).
throw(m_test_long_without_equal_double_dash_221, exception).
throw(m_test_long_with_unexpected_argument1_222, exception).
throw(m_test_long_with_unexpected_argument2_223, exception).
throw(m_test_short_with_unexpected_argument_224, exception).
throw(m_test_properties_option1_225, exception).
throw(m_test_properties_option2_226, exception).
throw(m_test_unambiguous_partial_long_option1_227, exception).
throw(m_test_unambiguous_partial_long_option2_228, exception).
throw(m_test_unambiguous_partial_long_option3_229, exception).
throw(m_test_unambiguous_partial_long_option4_230, exception).
throw(m_test_ambiguous_partial_long_option1_231, exception).
throw(m_test_ambiguous_partial_long_option2_232, exception).
throw(m_test_ambiguous_partial_long_option3_233, exception).
throw(m_test_ambiguous_partial_long_option4_234, exception).
throw(m_test_partial_long_option_single_dash_235, exception).
throw(m_test_with_required_option_236, exception).
throw(m_test_option_and_required_option_237, exception).
throw(m_test_missing_required_group_240, exception).
throw(m_test_option_group_241, exception).
throw(m_test_option_group_long_242, exception).
throw(m_test_reuse_options_twice_243, exception).
throw(m_test_bursting_244, exception).
throw(m_test_unrecognized_option_with_bursting_245, exception).
throw(m_test_missing_arg_with_bursting_246, exception).
throw(m_test_stop_bursting_247, exception).
throw(m_test_stop_bursting2_248, exception).
throw(m_test_unlimited_args_249, exception).
param(p_parser_161, 1, m_parse_250).
param(p_opts_162, 2, m_parse_250).
param(p_args_163, 3, m_parse_250).
param(p_properties_164, 4, m_parse_250).
throw(m_parse_250, parse_exception).
return(parser_test_case_1_expr1, m_parse_250, line(parser_test_case_1, 875)).
method_invoc(parser_test_case_1_expr1, m_parse_189, line(parser_test_case_1, 875)).
throw(parser_test_case_1_expr1, parse_exception, line(parser_test_case_1, 875)).
argument(p_opts_162, 1, parser_test_case_1_expr1).
argument(p_args_163, 2, parser_test_case_1_expr1).
argument(p_properties_164, 3, parser_test_case_1_expr1).
ref(parser_test_case_1_expr2, parser_test_case_1_expr1, line(parser_test_case_1, 875)).
assign(parser_test_case_1_expr2, parser_test_case_1_expr3, line(parser_test_case_1, 875)).
assign(parser_test_case_1_expr3, p_parser_161, line(parser_test_case_1, 875)).
return(parser_test_case_1_expr4, m_parse_250, line(parser_test_case_1, 877)).
method_invoc(parser_test_case_1_expr4, m_parse_56, line(parser_test_case_1, 877)).
throw(parser_test_case_1_expr4, parse_exception, line(parser_test_case_1, 877)).
argument(p_opts_162, 1, parser_test_case_1_expr4).
argument(p_args_163, 2, parser_test_case_1_expr4).
argument(p_properties_164, 3, parser_test_case_1_expr4).
ref(parser_test_case_1_expr5, parser_test_case_1_expr4, line(parser_test_case_1, 877)).
assign(parser_test_case_1_expr5, parser_test_case_1_expr6, line(parser_test_case_1, 877)).
assign(parser_test_case_1_expr6, p_parser_161, line(parser_test_case_1, 877)).
throw(m_test_property_option_singular_value_251, exception).
throw(m_test_property_option_flags_252, exception).
throw(m_test_property_option_multiple_values_253, exception).
throw(m_test_property_override_values_254, exception).
throw(m_test_property_option_required_255, exception).
throw(m_test_property_option_unexpected_256, exception).
method_invoc(parser_test_case_1_expr7, m_parse_250, line(parser_test_case_1, 1010)).
throw(parser_test_case_1_expr7, parse_exception, line(parser_test_case_1, 1010)).
argument(f_parser_4, 1, parser_test_case_1_expr7).
argument(v_opts_165, 2, parser_test_case_1_expr7).
argument(parser_test_case_1_literal1, 3, parser_test_case_1_expr7).
argument(v_properties_166, 4, parser_test_case_1_expr7).
throw(m_test_property_option_group_257, exception).

%default_parser_test_1 - org.apache.commons.cli.DefaultParserTest
method_invoc(default_parser_test_1_expr1, m_set_up_3, line(default_parser_test_1, 27)).
assign(f_parser_4, default_parser_test_1_expr3, line(default_parser_test_1, 28)).
method_invoc(default_parser_test_1_expr3, m_default_parser_91, line(default_parser_test_1, 28)).

%option_validator_1 - org.apache.commons.cli.OptionValidator
param(p_opt_103, 1, m_validate_option_121).
throw(m_validate_option_121, illegal_argument_exception).
method_invoc(option_validator_1_expr3, m_length_161, line(option_validator_1, 54)).
ref(p_opt_103, option_validator_1_expr3, line(option_validator_1, 54)).
assign(v_ch_104, option_validator_1_expr4, line(option_validator_1, 56)).
method_invoc(option_validator_1_expr4, m_char_at_162, line(option_validator_1, 56)).
argument(option_validator_1_literal3, 1, option_validator_1_expr4).
ref(p_opt_103, option_validator_1_expr4, line(option_validator_1, 56)).
method_invoc(option_validator_1_expr6, m_is_valid_opt_163, line(option_validator_1, 58)).
argument(v_ch_104, 1, option_validator_1_expr6).
param(p_c_105, 1, m_is_valid_opt_163).
return(option_validator_1_expr7, m_is_valid_opt_163, line(option_validator_1, 87)).
method_invoc(option_validator_1_expr9, m_is_valid_char_164, line(option_validator_1, 87)).
argument(p_c_105, 1, option_validator_1_expr9).
param(p_c_106, 1, m_is_valid_char_164).
return(option_validator_1_expr12, m_is_valid_char_164, line(option_validator_1, 98)).
method_invoc(option_validator_1_expr12, m_is_java_identifier_part_165, line(option_validator_1, 98)).
argument(p_c_106, 1, option_validator_1_expr12).
ref(t_character_9, option_validator_1_expr12, line(option_validator_1, 98)).

%option_1 - org.apache.commons.cli.Option
assign(f_arg_name_71, option_1_literal1, line(option_1, 57)).
assign(f_number_of_args_72, f_uninitialized_73, line(option_1, 69)).
assign(f_values_74, option_1_expr1, line(option_1, 75)).
method_invoc(option_1_expr1, m_array_list_30, line(option_1, 75)).
param(p_opt_75, 1, m_option_118).
param(p_description_76, 2, m_option_118).
throw(m_option_118, illegal_argument_exception).
param(p_opt_77, 1, m_option_119).
param(p_has_arg_78, 2, m_option_119).
param(p_description_79, 3, m_option_119).
throw(m_option_119, illegal_argument_exception).
param(p_opt_80, 1, m_option_120).
param(p_long_opt_81, 2, m_option_120).
param(p_has_arg_82, 3, m_option_120).
param(p_description_83, 4, m_option_120).
throw(m_option_120, illegal_argument_exception).
method_invoc(option_1_expr2, m_validate_option_121, line(option_1, 124)).
throw(option_1_expr2, illegal_argument_exception, line(option_1, 124)).
argument(p_opt_80, 1, option_1_expr2).
ref(t_option_validator_8, option_1_expr2, line(option_1, 124)).
assign(f_opt_84, p_opt_80, line(option_1, 126)).
assign(f_long_opt_85, p_long_opt_81, line(option_1, 127)).
assign(f_number_of_args_72, option_1_literal2, line(option_1, 132)).
assign(f_description_86, p_description_83, line(option_1, 135)).
return(f_opt_84, m_get_key_123, line(option_1, 163)).
param(p_type_87, 1, m_set_type_126).
return(f_long_opt_85, m_get_long_opt_127, line(option_1, 208)).
param(p_long_opt_88, 1, m_set_long_opt_128).
param(p_optional_arg_89, 1, m_set_optional_arg_129).
return(option_1_expr16, m_has_long_opt_131, line(option_1, 247)).
param(p_description_90, 1, m_set_description_133).
return(f_required_91, m_is_required_134, line(option_1, 288)).
param(p_required_92, 1, m_set_required_135).
param(p_arg_name_93, 1, m_set_arg_name_136).
param(p_num_94, 1, m_set_args_140).
param(p_sep_95, 1, m_set_value_separator_141).
param(p_value_96, 1, m_add_value_for_processing_145).
param(p_value_97, 1, m_process_value_146).
param(p_value_98, 1, m_add_147).
param(p_index_99, 1, m_get_value_149).
throw(m_get_value_149, index_out_of_bounds_exception).
param(p_default_value_100, 1, m_get_value_150).
param(p_o_101, 1, m_equals_155).
param(p_value_102, 1, m_add_value_159).

%options_1 - org.apache.commons.cli.Options
assign(f_short_opts_107, options_1_expr1, line(options_1, 52)).
method_invoc(options_1_expr1, m_hash_map_166, line(options_1, 52)).
assign(f_long_opts_108, options_1_expr2, line(options_1, 55)).
method_invoc(options_1_expr2, m_hash_map_166, line(options_1, 55)).
assign(f_required_opts_109, options_1_expr3, line(options_1, 58)).
method_invoc(options_1_expr3, m_array_list_30, line(options_1, 58)).
assign(f_option_groups_110, options_1_expr4, line(options_1, 61)).
method_invoc(options_1_expr4, m_hash_map_166, line(options_1, 61)).
param(p_group_111, 1, m_add_option_group_167).
return(options_1_expr5, m_get_option_groups_62, line(options_1, 101)).
method_invoc(options_1_expr5, m_hash_set_168, line(options_1, 101)).
argument(options_1_expr6, 1, options_1_expr5).
method_invoc(options_1_expr6, m_values_169, line(options_1, 101)).
ref(f_option_groups_110, options_1_expr6, line(options_1, 101)).
param(p_opt_112, 1, m_add_option_170).
param(p_has_arg_113, 2, m_add_option_170).
param(p_description_114, 3, m_add_option_170).
param(p_opt_115, 1, m_add_option_171).
param(p_long_opt_116, 2, m_add_option_171).
param(p_has_arg_117, 3, m_add_option_171).
param(p_description_118, 4, m_add_option_171).
method_invoc(options_1_expr7, m_add_option_172, line(options_1, 132)).
argument(options_1_expr8, 1, options_1_expr7).
method_invoc(options_1_expr8, m_option_120, line(options_1, 132)).
throw(options_1_expr8, illegal_argument_exception, line(options_1, 132)).
argument(p_opt_115, 1, options_1_expr8).
argument(p_long_opt_116, 2, options_1_expr8).
argument(p_has_arg_117, 3, options_1_expr8).
argument(p_description_118, 4, options_1_expr8).
return(options_1_expr9, m_add_option_171, line(options_1, 134)).
param(p_opt_119, 1, m_add_option_172).
assign(v_key_120, options_1_expr10, line(options_1, 145)).
method_invoc(options_1_expr10, m_get_key_123, line(options_1, 145)).
ref(p_opt_119, options_1_expr10, line(options_1, 145)).
method_invoc(options_1_expr11, m_has_long_opt_131, line(options_1, 148)).
ref(p_opt_119, options_1_expr11, line(options_1, 148)).
method_invoc(options_1_expr12, m_put_173, line(options_1, 150)).
argument(options_1_expr13, 1, options_1_expr12).
argument(p_opt_119, 2, options_1_expr12).
ref(f_long_opts_108, options_1_expr12, line(options_1, 150)).
method_invoc(options_1_expr13, m_get_long_opt_127, line(options_1, 150)).
ref(p_opt_119, options_1_expr13, line(options_1, 150)).
method_invoc(options_1_expr14, m_is_required_134, line(options_1, 154)).
ref(p_opt_119, options_1_expr14, line(options_1, 154)).
method_invoc(options_1_expr15, m_put_173, line(options_1, 163)).
argument(v_key_120, 1, options_1_expr15).
argument(p_opt_119, 2, options_1_expr15).
ref(f_short_opts_107, options_1_expr15, line(options_1, 163)).
return(options_1_expr16, m_add_option_172, line(options_1, 165)).
return(options_1_expr17, m_help_options_175, line(options_1, 185)).
method_invoc(options_1_expr17, m_array_list_59, line(options_1, 185)).
argument(options_1_expr18, 1, options_1_expr17).
method_invoc(options_1_expr18, m_values_169, line(options_1, 185)).
ref(f_short_opts_107, options_1_expr18, line(options_1, 185)).
return(f_required_opts_109, m_get_required_options_60, line(options_1, 195)).
param(p_opt_121, 1, m_get_option_69).
assign(p_opt_121, options_1_expr20, line(options_1, 207)).
method_invoc(options_1_expr20, m_strip_leading_hyphens_42, line(options_1, 207)).
argument(p_opt_121, 1, options_1_expr20).
ref(t_util_3, options_1_expr20, line(options_1, 207)).
method_invoc(options_1_expr21, m_contains_key_176, line(options_1, 209)).
argument(p_opt_121, 1, options_1_expr21).
ref(f_short_opts_107, options_1_expr21, line(options_1, 209)).
return(options_1_expr22, m_get_option_69, line(options_1, 214)).
assign(options_1_expr22, options_1_expr23, line(options_1, 214)).
method_invoc(options_1_expr23, m_get_177, line(options_1, 214)).
argument(p_opt_121, 1, options_1_expr23).
ref(f_long_opts_108, options_1_expr23, line(options_1, 214)).
param(p_opt_122, 1, m_get_matching_options_178).
param(p_opt_123, 1, m_has_option_179).
param(p_opt_124, 1, m_has_long_option_180).
param(p_opt_125, 1, m_has_short_option_181).
param(p_opt_126, 1, m_get_option_group_182).

%util_1 - org.apache.commons.cli.Util
param(p_str_181, 1, m_strip_leading_hyphens_42).
method_invoc(util_1_expr2, m_starts_with_276, line(util_1, 42)).
argument(util_1_literal2, 1, util_1_expr2).
ref(p_str_181, util_1_expr2, line(util_1, 42)).
method_invoc(util_1_expr3, m_starts_with_276, line(util_1, 46)).
argument(util_1_literal3, 1, util_1_expr3).
ref(p_str_181, util_1_expr3, line(util_1, 46)).
return(p_str_181, m_strip_leading_hyphens_42, line(util_1, 51)).
param(p_str_182, 1, m_strip_leading_and_trailing_quotes_277).

%gnu_parser_test_1 - org.apache.commons.cli.GnuParserTest
method_invoc(gnu_parser_test_1_expr1, m_set_up_3, line(gnu_parser_test_1, 24)).
assign(f_parser_4, gnu_parser_test_1_expr3, line(gnu_parser_test_1, 25)).
method_invoc(gnu_parser_test_1_expr3, m_gnu_parser_96, line(gnu_parser_test_1, 25)).
throw(m_test_double_dash2_97, exception).
throw(m_test_long_without_equal_single_dash_98, exception).
throw(m_test_ambiguous_long_without_equal_single_dash_99, exception).
throw(m_test_negative_option_100, exception).
throw(m_test_long_with_unexpected_argument1_101, exception).
throw(m_test_long_with_unexpected_argument2_102, exception).
throw(m_test_short_with_unexpected_argument_103, exception).
throw(m_test_unambiguous_partial_long_option1_104, exception).
throw(m_test_unambiguous_partial_long_option2_105, exception).
throw(m_test_unambiguous_partial_long_option3_106, exception).
throw(m_test_unambiguous_partial_long_option4_107, exception).
throw(m_test_ambiguous_partial_long_option1_108, exception).
throw(m_test_ambiguous_partial_long_option2_109, exception).
throw(m_test_ambiguous_partial_long_option3_110, exception).
throw(m_test_ambiguous_partial_long_option4_111, exception).
throw(m_test_partial_long_option_single_dash_112, exception).
throw(m_test_bursting_113, exception).
throw(m_test_unrecognized_option_with_bursting_114, exception).
throw(m_test_missing_arg_with_bursting_115, exception).
throw(m_test_stop_bursting_116, exception).
throw(m_test_stop_bursting2_117, exception).

%posix_parser_test_1 - org.apache.commons.cli.PosixParserTest
method_invoc(posix_parser_test_1_expr1, m_set_up_3, line(posix_parser_test_1, 29)).
assign(f_parser_4, posix_parser_test_1_expr3, line(posix_parser_test_1, 30)).
method_invoc(posix_parser_test_1_expr3, m_posix_parser_266, line(posix_parser_test_1, 30)).
throw(m_test_double_dash2_267, exception).
throw(m_test_long_without_equal_single_dash_268, exception).
throw(m_test_ambiguous_long_without_equal_single_dash_269, exception).
throw(m_test_negative_option_270, exception).
throw(m_test_long_with_unexpected_argument1_271, exception).
throw(m_test_long_with_equal_single_dash_272, exception).
throw(m_test_short_with_equal_273, exception).
throw(m_test_unambiguous_partial_long_option4_274, exception).
throw(m_test_ambiguous_partial_long_option4_275, exception).

%default_parser_1 - org.apache.commons.cli.DefaultParser
param(p_options_25, 1, m_parse_55).
param(p_arguments_26, 2, m_parse_55).
throw(m_parse_55, parse_exception).
param(p_options_27, 1, m_parse_56).
param(p_arguments_28, 2, m_parse_56).
param(p_properties_29, 3, m_parse_56).
throw(m_parse_56, parse_exception).
return(default_parser_1_expr1, m_parse_56, line(default_parser_1, 75)).
method_invoc(default_parser_1_expr1, m_parse_57, line(default_parser_1, 75)).
throw(default_parser_1_expr1, parse_exception, line(default_parser_1, 75)).
argument(p_options_27, 1, default_parser_1_expr1).
argument(p_arguments_28, 2, default_parser_1_expr1).
argument(p_properties_29, 3, default_parser_1_expr1).
argument(default_parser_1_literal1, 4, default_parser_1_expr1).
param(p_options_30, 1, m_parse_58).
param(p_arguments_31, 2, m_parse_58).
param(p_stop_at_non_option_32, 3, m_parse_58).
throw(m_parse_58, parse_exception).
param(p_options_33, 1, m_parse_57).
param(p_arguments_34, 2, m_parse_57).
param(p_properties_35, 3, m_parse_57).
param(p_stop_at_non_option_36, 4, m_parse_57).
throw(m_parse_57, parse_exception).
assign(f_options_37, p_options_33, line(default_parser_1, 100)).
assign(f_stop_at_non_option_38, p_stop_at_non_option_36, line(default_parser_1, 101)).
assign(f_skip_parsing_39, default_parser_1_literal2, line(default_parser_1, 102)).
assign(f_current_option_40, default_parser_1_literal3, line(default_parser_1, 103)).
assign(f_expected_opts_41, default_parser_1_expr11, line(default_parser_1, 104)).
method_invoc(default_parser_1_expr11, m_array_list_59, line(default_parser_1, 104)).
argument(default_parser_1_expr12, 1, default_parser_1_expr11).
method_invoc(default_parser_1_expr12, m_get_required_options_60, line(default_parser_1, 104)).
ref(p_options_33, default_parser_1_expr12, line(default_parser_1, 104)).
assign(v_it_42, default_parser_1_expr14, line(default_parser_1, 107)).
method_invoc(default_parser_1_expr14, m_iterator_61, line(default_parser_1, 107)).
ref(default_parser_1_expr15, default_parser_1_expr14, line(default_parser_1, 107)).
method_invoc(default_parser_1_expr15, m_get_option_groups_62, line(default_parser_1, 107)).
ref(p_options_33, default_parser_1_expr15, line(default_parser_1, 107)).
method_invoc(default_parser_1_expr16, m_has_next_44, line(default_parser_1, 107)).
ref(v_it_42, default_parser_1_expr16, line(default_parser_1, 107)).
assign(f_cmd_43, default_parser_1_expr18, line(default_parser_1, 113)).
method_invoc(default_parser_1_expr18, m_command_line_31, line(default_parser_1, 113)).
method_invoc(default_parser_1_expr20, m_check_required_args_63, line(default_parser_1, 124)).
throw(default_parser_1_expr20, parse_exception, line(default_parser_1, 124)).
method_invoc(default_parser_1_expr21, m_handle_properties_64, line(default_parser_1, 127)).
throw(default_parser_1_expr21, parse_exception, line(default_parser_1, 127)).
throw(default_parser_1_expr21, null_pointer_exception, line(default_parser_1, 127)).
argument(p_properties_35, 1, default_parser_1_expr21).
param(p_properties_44, 1, m_handle_properties_64).
throw(m_handle_properties_64, parse_exception).
assign(v_e_45, default_parser_1_expr24, line(default_parser_1, 146)).
method_invoc(default_parser_1_expr24, m_property_names_65, line(default_parser_1, 146)).
ref(p_properties_44, default_parser_1_expr24, line(default_parser_1, 146)).
method_invoc(default_parser_1_expr25, m_has_more_elements_66, line(default_parser_1, 146)).
ref(v_e_45, default_parser_1_expr25, line(default_parser_1, 146)).
assign(v_option_46, default_parser_1_expr26, line(default_parser_1, 148)).
method_invoc(default_parser_1_expr26, m_to_string_67, line(default_parser_1, 148)).
ref(default_parser_1_expr27, default_parser_1_expr26, line(default_parser_1, 148)).
method_invoc(default_parser_1_expr27, m_next_element_68, line(default_parser_1, 148)).
ref(v_e_45, default_parser_1_expr27, line(default_parser_1, 148)).
method_invoc(default_parser_1_expr29, m_has_option_32, line(default_parser_1, 150)).
argument(v_option_46, 1, default_parser_1_expr29).
ref(f_cmd_43, default_parser_1_expr29, line(default_parser_1, 150)).
assign(v_opt_47, default_parser_1_expr30, line(default_parser_1, 152)).
method_invoc(default_parser_1_expr30, m_get_option_69, line(default_parser_1, 152)).
argument(v_option_46, 1, default_parser_1_expr30).
ref(f_options_37, default_parser_1_expr30, line(default_parser_1, 152)).
assign(v_value_48, default_parser_1_expr31, line(default_parser_1, 157)).
method_invoc(default_parser_1_expr31, m_get_property_70, line(default_parser_1, 157)).
argument(v_option_46, 1, default_parser_1_expr31).
ref(p_properties_44, default_parser_1_expr31, line(default_parser_1, 157)).
method_invoc(default_parser_1_expr32, m_has_arg_71, line(default_parser_1, 159)).
ref(v_opt_47, default_parser_1_expr32, line(default_parser_1, 159)).
throw(m_check_required_options_72, missing_option_exception).
throw(m_check_required_args_63, parse_exception).
method_invoc(default_parser_1_expr35, m_requires_arg_73, line(default_parser_1, 202)).
ref(f_current_option_40, default_parser_1_expr35, line(default_parser_1, 202)).
param(p_token_49, 1, m_handle_token_74).
throw(m_handle_token_74, parse_exception).
param(p_token_50, 1, m_is_argument_75).
param(p_token_51, 1, m_is_negative_number_76).
param(p_token_52, 1, m_is_option_77).
param(p_token_53, 1, m_is_short_option_78).
param(p_token_54, 1, m_is_long_option_79).
param(p_token_55, 1, m_handle_unknown_token_80).
throw(m_handle_unknown_token_80, parse_exception).
param(p_token_56, 1, m_handle_long_option_81).
throw(m_handle_long_option_81, parse_exception).
param(p_token_57, 1, m_handle_long_option_without_equal_82).
throw(m_handle_long_option_without_equal_82, parse_exception).
param(p_token_58, 1, m_handle_long_option_with_equal_83).
throw(m_handle_long_option_with_equal_83, parse_exception).
param(p_token_59, 1, m_handle_short_and_long_option_84).
throw(m_handle_short_and_long_option_84, parse_exception).
param(p_token_60, 1, m_get_long_prefix_85).
param(p_token_61, 1, m_is_java_property_86).
param(p_option_62, 1, m_handle_option_87).
throw(m_handle_option_87, parse_exception).
param(p_option_63, 1, m_update_required_options_88).
throw(m_update_required_options_88, already_selected_exception).
param(p_token_64, 1, m_handle_concatenated_options_89).
throw(m_handle_concatenated_options_89, parse_exception).

%basic_parser_test_1 - org.apache.commons.cli.BasicParserTest
method_invoc(basic_parser_test_1_expr1, m_set_up_3, line(basic_parser_test_1, 28)).
assign(f_parser_4, basic_parser_test_1_expr3, line(basic_parser_test_1, 29)).
method_invoc(basic_parser_test_1_expr3, m_basic_parser_4, line(basic_parser_test_1, 29)).
throw(m_test_double_dash2_5, exception).
throw(m_test_long_without_equal_single_dash_6, exception).
throw(m_test_ambiguous_long_without_equal_single_dash_7, exception).
throw(m_test_negative_option_8, exception).
throw(m_test_properties_option1_9, exception).
throw(m_test_properties_option2_10, exception).
throw(m_test_short_with_equal_11, exception).
throw(m_test_short_without_equal_12, exception).
throw(m_test_long_with_equal_double_dash_13, exception).
throw(m_test_long_with_equal_single_dash_14, exception).
throw(m_test_unambiguous_partial_long_option1_15, exception).
throw(m_test_unambiguous_partial_long_option2_16, exception).
throw(m_test_unambiguous_partial_long_option3_17, exception).
throw(m_test_unambiguous_partial_long_option4_18, exception).
throw(m_test_ambiguous_partial_long_option1_19, exception).
throw(m_test_ambiguous_partial_long_option2_20, exception).
throw(m_test_ambiguous_partial_long_option3_21, exception).
throw(m_test_ambiguous_partial_long_option4_22, exception).
throw(m_test_partial_long_option_single_dash_23, exception).
throw(m_test_bursting_24, exception).
throw(m_test_unrecognized_option_with_bursting_25, exception).
throw(m_test_missing_arg_with_bursting_26, exception).
throw(m_test_stop_bursting_27, exception).
throw(m_test_stop_bursting2_28, exception).

%posix_parser_1 - org.apache.commons.cli.PosixParser
assign(f_tokens_167, posix_parser_1_expr1, line(posix_parser_1, 36)).
method_invoc(posix_parser_1_expr1, m_array_list_30, line(posix_parser_1, 36)).
assign(f_eat_the_rest_168, posix_parser_1_literal1, line(posix_parser_1, 54)).
method_invoc(posix_parser_1_expr3, m_clear_259, line(posix_parser_1, 55)).
ref(f_tokens_167, posix_parser_1_expr3, line(posix_parser_1, 55)).
param(p_options_169, 1, m_flatten_260).
param(p_arguments_170, 2, m_flatten_260).
param(p_stop_at_non_option_171, 3, m_flatten_260).
throw(m_flatten_260, parse_exception).
method_invoc(posix_parser_1_expr4, m_init_258, line(posix_parser_1, 98)).
assign(f_options_172, p_options_169, line(posix_parser_1, 99)).
assign(v_iter_173, posix_parser_1_expr8, line(posix_parser_1, 102)).
method_invoc(posix_parser_1_expr8, m_iterator_43, line(posix_parser_1, 102)).
ref(posix_parser_1_expr9, posix_parser_1_expr8, line(posix_parser_1, 102)).
method_invoc(posix_parser_1_expr9, m_as_list_192, line(posix_parser_1, 102)).
argument(p_arguments_170, 1, posix_parser_1_expr9).
ref(t_arrays_12, posix_parser_1_expr9, line(posix_parser_1, 102)).
method_invoc(posix_parser_1_expr10, m_has_next_44, line(posix_parser_1, 105)).
ref(v_iter_173, posix_parser_1_expr10, line(posix_parser_1, 105)).
return(posix_parser_1_expr11, m_flatten_260, line(posix_parser_1, 177)).
assign(posix_parser_1_expr11, posix_parser_1_expr12, line(posix_parser_1, 177)).
method_invoc(posix_parser_1_expr12, m_to_array_93, line(posix_parser_1, 177)).
argument(posix_parser_1_expr13, 1, posix_parser_1_expr12).
ref(f_tokens_167, posix_parser_1_expr12, line(posix_parser_1, 177)).
method_invoc(posix_parser_1_expr14, m_size_94, line(posix_parser_1, 177)).
ref(f_tokens_167, posix_parser_1_expr14, line(posix_parser_1, 177)).
param(p_iter_174, 1, m_gobble_261).
param(p_value_175, 1, m_process_non_option_token_262).
param(p_stop_at_non_option_176, 2, m_process_non_option_token_262).
param(p_token_177, 1, m_process_option_token_263).
param(p_stop_at_non_option_178, 2, m_process_option_token_263).
param(p_token_179, 1, m_burst_token_264).
param(p_stop_at_non_option_180, 2, m_burst_token_264).

%basic_parser_1 - org.apache.commons.cli.BasicParser
param(p_options_1, 1, m_flatten_1).
param(p_arguments_2, 2, m_flatten_1).
param(p_stop_at_non_option_3, 3, m_flatten_1).
return(p_arguments_2, m_flatten_1, line(basic_parser_1, 46)).

%parser_1 - org.apache.commons.cli.Parser
param(p_options_127, 1, m_set_options_184).
assign(f_options_128, p_options_127, line(parser_1, 48)).
assign(f_required_options_129, parser_1_expr6, line(parser_1, 49)).
method_invoc(parser_1_expr6, m_array_list_59, line(parser_1, 49)).
argument(parser_1_expr8, 1, parser_1_expr6).
method_invoc(parser_1_expr8, m_get_required_options_60, line(parser_1, 49)).
ref(p_options_127, parser_1_expr8, line(parser_1, 49)).
return(f_options_128, m_get_options_185, line(parser_1, 54)).
param(p_opts_130, 1, m_flatten_187).
param(p_arguments_131, 2, m_flatten_187).
param(p_stop_at_non_option_132, 3, m_flatten_187).
throw(m_flatten_187, parse_exception).
param(p_options_133, 1, m_parse_188).
param(p_arguments_134, 2, m_parse_188).
throw(m_parse_188, parse_exception).
param(p_options_135, 1, m_parse_189).
param(p_arguments_136, 2, m_parse_189).
param(p_properties_137, 3, m_parse_189).
throw(m_parse_189, parse_exception).
return(parser_1_expr9, m_parse_189, line(parser_1, 103)).
method_invoc(parser_1_expr9, m_parse_190, line(parser_1, 103)).
throw(parser_1_expr9, parse_exception, line(parser_1, 103)).
argument(p_options_135, 1, parser_1_expr9).
argument(p_arguments_136, 2, parser_1_expr9).
argument(p_properties_137, 3, parser_1_expr9).
argument(parser_1_literal1, 4, parser_1_expr9).
param(p_options_138, 1, m_parse_191).
param(p_arguments_139, 2, m_parse_191).
param(p_stop_at_non_option_140, 3, m_parse_191).
throw(m_parse_191, parse_exception).
param(p_options_141, 1, m_parse_190).
param(p_arguments_142, 2, m_parse_190).
param(p_properties_143, 3, m_parse_190).
param(p_stop_at_non_option_144, 4, m_parse_190).
throw(m_parse_190, parse_exception).
assign(v_it_145, parser_1_expr11, line(parser_1, 147)).
method_invoc(parser_1_expr11, m_iterator_43, line(parser_1, 147)).
ref(parser_1_expr12, parser_1_expr11, line(parser_1, 147)).
method_invoc(parser_1_expr12, m_help_options_175, line(parser_1, 147)).
ref(p_options_141, parser_1_expr12, line(parser_1, 147)).
method_invoc(parser_1_expr13, m_has_next_44, line(parser_1, 147)).
ref(v_it_145, parser_1_expr13, line(parser_1, 147)).
assign(v_it_146, parser_1_expr15, line(parser_1, 154)).
method_invoc(parser_1_expr15, m_iterator_61, line(parser_1, 154)).
ref(parser_1_expr16, parser_1_expr15, line(parser_1, 154)).
method_invoc(parser_1_expr16, m_get_option_groups_62, line(parser_1, 154)).
ref(p_options_141, parser_1_expr16, line(parser_1, 154)).
method_invoc(parser_1_expr17, m_has_next_44, line(parser_1, 154)).
ref(v_it_146, parser_1_expr17, line(parser_1, 154)).
method_invoc(parser_1_expr18, m_set_options_184, line(parser_1, 161)).
argument(p_options_141, 1, parser_1_expr18).
assign(f_cmd_147, parser_1_expr20, line(parser_1, 163)).
method_invoc(parser_1_expr20, m_command_line_31, line(parser_1, 163)).
assign(v_eat_the_rest_148, parser_1_literal2, line(parser_1, 165)).
assign(p_arguments_142, parser_1_expr23, line(parser_1, 169)).
assign(v_token_list_149, parser_1_expr24, line(parser_1, 172)).
method_invoc(parser_1_expr24, m_as_list_192, line(parser_1, 172)).
argument(parser_1_expr25, 1, parser_1_expr24).
ref(t_arrays_12, parser_1_expr24, line(parser_1, 172)).
method_invoc(parser_1_expr25, m_flatten_187, line(parser_1, 172)).
throw(parser_1_expr25, parse_exception, line(parser_1, 172)).
argument(parser_1_expr26, 1, parser_1_expr25).
argument(p_arguments_142, 2, parser_1_expr25).
argument(p_stop_at_non_option_144, 3, parser_1_expr25).
method_invoc(parser_1_expr26, m_get_options_185, line(parser_1, 172)).
assign(v_iterator_150, parser_1_expr27, line(parser_1, 174)).
method_invoc(parser_1_expr27, m_list_iterator_193, line(parser_1, 174)).
ref(v_token_list_149, parser_1_expr27, line(parser_1, 174)).
method_invoc(parser_1_expr28, m_process_properties_194, line(parser_1, 241)).
throw(parser_1_expr28, parse_exception, line(parser_1, 241)).
throw(parser_1_expr28, null_pointer_exception, line(parser_1, 241)).
argument(p_properties_143, 1, parser_1_expr28).
param(p_properties_151, 1, m_process_properties_194).
throw(m_process_properties_194, parse_exception).
assign(v_e_152, parser_1_expr31, line(parser_1, 259)).
method_invoc(parser_1_expr31, m_property_names_65, line(parser_1, 259)).
ref(p_properties_151, parser_1_expr31, line(parser_1, 259)).
method_invoc(parser_1_expr32, m_has_more_elements_66, line(parser_1, 259)).
ref(v_e_152, parser_1_expr32, line(parser_1, 259)).
assign(v_option_153, parser_1_expr33, line(parser_1, 261)).
method_invoc(parser_1_expr33, m_to_string_67, line(parser_1, 261)).
ref(parser_1_expr34, parser_1_expr33, line(parser_1, 261)).
method_invoc(parser_1_expr34, m_next_element_68, line(parser_1, 261)).
ref(v_e_152, parser_1_expr34, line(parser_1, 261)).
method_invoc(parser_1_expr36, m_has_option_32, line(parser_1, 263)).
argument(v_option_153, 1, parser_1_expr36).
ref(f_cmd_147, parser_1_expr36, line(parser_1, 263)).
assign(v_opt_154, parser_1_expr37, line(parser_1, 265)).
method_invoc(parser_1_expr37, m_get_option_69, line(parser_1, 265)).
argument(v_option_153, 1, parser_1_expr37).
ref(parser_1_expr38, parser_1_expr37, line(parser_1, 265)).
method_invoc(parser_1_expr38, m_get_options_185, line(parser_1, 265)).
assign(v_value_155, parser_1_expr39, line(parser_1, 270)).
method_invoc(parser_1_expr39, m_get_property_70, line(parser_1, 270)).
argument(v_option_153, 1, parser_1_expr39).
ref(p_properties_151, parser_1_expr39, line(parser_1, 270)).
method_invoc(parser_1_expr40, m_has_arg_71, line(parser_1, 272)).
ref(v_opt_154, parser_1_expr40, line(parser_1, 272)).
throw(m_check_required_options_195, missing_option_exception).
param(p_opt_156, 1, m_process_args_196).
param(p_iter_157, 2, m_process_args_196).
throw(m_process_args_196, parse_exception).
param(p_arg_158, 1, m_process_option_197).
param(p_iter_159, 2, m_process_option_197).
throw(m_process_option_197, parse_exception).
param(p_opt_160, 1, m_update_required_options_198).
throw(m_update_required_options_198, parse_exception).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.cli.PosixParserTest', 'testPropertyOptionUnexpected').
trace(trace_1, failure_1, m_process_properties_194, line(parser_1, 272), failure_1, target).
trace(trace_2, trace_1, m_parse_190, line(parser_1, 241), failure_1, target).
trace(trace_3, trace_2, m_parse_189, line(parser_1, 103), failure_1, target).
trace(trace_4, trace_3, m_parse_250, line(parser_test_case_1, 875), failure_1, target).
trace(trace_5, trace_4, m_test_property_option_unexpected_256, line(parser_test_case_1, 1010), failure_1, target).
trace(trace_6, trace_5, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_8, trace_7, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_9, trace_8, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_10, trace_9, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_11, trace_10, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_12, trace_11, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_13, trace_12, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_14, trace_13, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_16, trace_15, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_18, trace_17, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_19, trace_18, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_20, trace_19, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.cli.GnuParserTest', 'testPropertyOptionUnexpected').
trace(trace_21, failure_2, m_process_properties_194, line(parser_1, 272), failure_2, target).
trace(trace_22, trace_21, m_parse_190, line(parser_1, 241), failure_2, target).
trace(trace_23, trace_22, m_parse_189, line(parser_1, 103), failure_2, target).
trace(trace_24, trace_23, m_parse_250, line(parser_test_case_1, 875), failure_2, target).
trace(trace_25, trace_24, m_test_property_option_unexpected_256, line(parser_test_case_1, 1010), failure_2, target).
trace(trace_26, trace_25, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_2, non_target).
trace(trace_27, trace_26, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_2, non_target).
trace(trace_28, trace_27, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_2, non_target).
trace(trace_29, trace_28, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_30, trace_29, 'runTest', line(junit_framework_test_case, 177), failure_2, non_target).
trace(trace_31, trace_30, 'runBare', line(junit_framework_test_case, 142), failure_2, non_target).
trace(trace_32, trace_31, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_33, trace_32, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_34, trace_33, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_35, trace_34, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_36, trace_35, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_37, trace_36, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_38, trace_37, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_39, trace_38, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_40, trace_39, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).
test_failure(failure_3, 'org.apache.commons.cli.BasicParserTest', 'testPropertyOptionUnexpected').
trace(trace_41, failure_3, m_process_properties_194, line(parser_1, 272), failure_3, target).
trace(trace_42, trace_41, m_parse_190, line(parser_1, 241), failure_3, target).
trace(trace_43, trace_42, m_parse_189, line(parser_1, 103), failure_3, target).
trace(trace_44, trace_43, m_parse_250, line(parser_test_case_1, 875), failure_3, target).
trace(trace_45, trace_44, m_test_property_option_unexpected_256, line(parser_test_case_1, 1010), failure_3, target).
trace(trace_46, trace_45, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_3, non_target).
trace(trace_47, trace_46, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_3, non_target).
trace(trace_48, trace_47, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_3, non_target).
trace(trace_49, trace_48, 'invoke', line(java_lang_reflect_method, 569), failure_3, non_target).
trace(trace_50, trace_49, 'runTest', line(junit_framework_test_case, 177), failure_3, non_target).
trace(trace_51, trace_50, 'runBare', line(junit_framework_test_case, 142), failure_3, non_target).
trace(trace_52, trace_51, 'protect', line(junit_framework_test_result_1, 122), failure_3, non_target).
trace(trace_53, trace_52, 'runProtected', line(junit_framework_test_result, 142), failure_3, non_target).
trace(trace_54, trace_53, 'run', line(junit_framework_test_result, 125), failure_3, non_target).
trace(trace_55, trace_54, 'run', line(junit_framework_test_case, 130), failure_3, non_target).
trace(trace_56, trace_55, 'runTest', line(junit_framework_test_suite, 241), failure_3, non_target).
trace(trace_57, trace_56, 'run', line(junit_framework_test_suite, 236), failure_3, non_target).
trace(trace_58, trace_57, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_3, non_target).
trace(trace_59, trace_58, 'run', line(org_junit_runner_junit_core, 137), failure_3, non_target).
trace(trace_60, trace_59, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_3, non_target).
test_failure(failure_4, 'org.apache.commons.cli.DefaultParserTest', 'testPropertyOptionUnexpected').
trace(trace_61, failure_4, m_handle_properties_64, line(default_parser_1, 159), failure_4, target).
trace(trace_62, trace_61, m_parse_57, line(default_parser_1, 127), failure_4, target).
trace(trace_63, trace_62, m_parse_56, line(default_parser_1, 75), failure_4, target).
trace(trace_64, trace_63, m_parse_250, line(parser_test_case_1, 877), failure_4, target).
trace(trace_65, trace_64, m_test_property_option_unexpected_256, line(parser_test_case_1, 1010), failure_4, target).
trace(trace_66, trace_65, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_4, non_target).
trace(trace_67, trace_66, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_4, non_target).
trace(trace_68, trace_67, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_4, non_target).
trace(trace_69, trace_68, 'invoke', line(java_lang_reflect_method, 569), failure_4, non_target).
trace(trace_70, trace_69, 'runTest', line(junit_framework_test_case, 177), failure_4, non_target).
trace(trace_71, trace_70, 'runBare', line(junit_framework_test_case, 142), failure_4, non_target).
trace(trace_72, trace_71, 'protect', line(junit_framework_test_result_1, 122), failure_4, non_target).
trace(trace_73, trace_72, 'runProtected', line(junit_framework_test_result, 142), failure_4, non_target).
trace(trace_74, trace_73, 'run', line(junit_framework_test_result, 125), failure_4, non_target).
trace(trace_75, trace_74, 'run', line(junit_framework_test_case, 130), failure_4, non_target).
trace(trace_76, trace_75, 'runTest', line(junit_framework_test_suite, 241), failure_4, non_target).
trace(trace_77, trace_76, 'run', line(junit_framework_test_suite, 236), failure_4, non_target).
trace(trace_78, trace_77, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_4, non_target).
trace(trace_79, trace_78, 'run', line(org_junit_runner_junit_core, 137), failure_4, non_target).
trace(trace_80, trace_79, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_4, non_target).



%%% End of Static Facts

%%% Values

val(p_arguments_28, null, line(default_parser_1, 75)).
val(p_arguments_34, null, line(default_parser_1, 115)).
val(default_parser_1_expr30, null, line(default_parser_1, 152)).
val(v_opt_47, null, line(default_parser_1, 159)).
val(p_arguments_136, null, line(parser_1, 103)).
val(p_arguments_142, null, line(parser_1, 167)).
val(parser_1_expr37, null, line(parser_1, 265)).
val(v_opt_154, null, line(parser_1, 272)).
val(p_args_163, null, line(parser_test_case_1, 875)).
val(p_args_163, null, line(parser_test_case_1, 877)).



%%% End of Facts