%%% Logic-FL Facts
:- style_check(-discontiguous).

%csvparser_1 - org.apache.commons.csv.CSVParser
param(p_file_56, 1, m_parse_48).
param(p_format_57, 2, m_parse_48).
throw(m_parse_48, ioexception).
param(p_string_58, 1, m_parse_49).
param(p_format_59, 2, m_parse_49).
throw(m_parse_49, ioexception).
method_invoc(csvparser_1_expr1, m_not_null_2, line(csvparser_1, 169)).
argument(p_string_58, 1, csvparser_1_expr1).
argument(csvparser_1_literal1, 2, csvparser_1_expr1).
ref(t_assertions_4, csvparser_1_expr1, line(csvparser_1, 169)).
method_invoc(csvparser_1_expr2, m_not_null_2, line(csvparser_1, 170)).
argument(p_format_59, 1, csvparser_1_expr2).
argument(csvparser_1_literal2, 2, csvparser_1_expr2).
ref(t_assertions_4, csvparser_1_expr2, line(csvparser_1, 170)).
return(csvparser_1_expr3, m_parse_49, line(csvparser_1, 172)).
method_invoc(csvparser_1_expr3, m_csvparser_50, line(csvparser_1, 172)).
throw(csvparser_1_expr3, ioexception, line(csvparser_1, 172)).
argument(csvparser_1_expr4, 1, csvparser_1_expr3).
argument(p_format_59, 2, csvparser_1_expr3).
method_invoc(csvparser_1_expr4, m_string_reader_51, line(csvparser_1, 172)).
argument(p_string_58, 1, csvparser_1_expr4).
param(p_url_60, 1, m_parse_52).
param(p_charset_61, 2, m_parse_52).
param(p_format_62, 3, m_parse_52).
throw(m_parse_52, ioexception).
assign(f_record_63, csvparser_1_expr5, line(csvparser_1, 214)).
method_invoc(csvparser_1_expr5, m_array_list_53, line(csvparser_1, 214)).
assign(f_reusable_token_64, csvparser_1_expr6, line(csvparser_1, 218)).
method_invoc(csvparser_1_expr6, m_token_54, line(csvparser_1, 218)).
param(p_reader_65, 1, m_csvparser_50).
param(p_format_66, 2, m_csvparser_50).
throw(m_csvparser_50, ioexception).
method_invoc(csvparser_1_expr7, m_not_null_2, line(csvparser_1, 238)).
argument(p_reader_65, 1, csvparser_1_expr7).
argument(csvparser_1_literal3, 2, csvparser_1_expr7).
ref(t_assertions_4, csvparser_1_expr7, line(csvparser_1, 238)).
method_invoc(csvparser_1_expr8, m_not_null_2, line(csvparser_1, 239)).
argument(p_format_66, 1, csvparser_1_expr8).
argument(csvparser_1_literal4, 2, csvparser_1_expr8).
ref(t_assertions_4, csvparser_1_expr8, line(csvparser_1, 239)).
method_invoc(csvparser_1_expr9, m_validate_30, line(csvparser_1, 241)).
throw(csvparser_1_expr9, illegal_state_exception, line(csvparser_1, 241)).
ref(p_format_66, csvparser_1_expr9, line(csvparser_1, 241)).
assign(f_format_67, p_format_66, line(csvparser_1, 242)).
assign(f_lexer_68, csvparser_1_expr15, line(csvparser_1, 243)).
method_invoc(csvparser_1_expr15, m_lexer_55, line(csvparser_1, 243)).
argument(p_format_66, 1, csvparser_1_expr15).
argument(csvparser_1_expr17, 2, csvparser_1_expr15).
method_invoc(csvparser_1_expr17, m_extended_buffered_reader_56, line(csvparser_1, 243)).
argument(p_reader_65, 1, csvparser_1_expr17).
assign(f_header_map_69, csvparser_1_expr20, line(csvparser_1, 244)).
method_invoc(csvparser_1_expr20, m_initialize_header_57, line(csvparser_1, 244)).
throw(csvparser_1_expr20, ioexception, line(csvparser_1, 244)).
ref(csvparser_1_expr22, csvparser_1_expr20, line(csvparser_1, 244)).
throw(m_close_59, ioexception).
return(csvparser_1_expr23, m_get_header_map_61, line(csvparser_1, 288)).
method_invoc(csvparser_1_expr23, m_linked_hash_map_62, line(csvparser_1, 288)).
throw(csvparser_1_expr23, null_pointer_exception, line(csvparser_1, 288)).
argument(f_header_map_69, 1, csvparser_1_expr23).
throw(m_get_records_64, ioexception).
throw(m_initialize_header_57, ioexception).
assign(v_hdr_map_70, csvparser_1_literal5, line(csvparser_1, 325)).
assign(v_format_header_71, csvparser_1_expr26, line(csvparser_1, 326)).
method_invoc(csvparser_1_expr26, m_get_header_15, line(csvparser_1, 326)).
ref(f_format_67, csvparser_1_expr26, line(csvparser_1, 326)).
return(v_hdr_map_70, m_initialize_header_57, line(csvparser_1, 351)).
throw(m_next_record_71, ioexception).

%csvformat_1 - org.apache.commons.csv.CSVFormat
assign(f_default_3, csvformat_1_expr1, line(csvformat_1, 174)).
method_invoc(csvformat_1_expr1, m_csvformat_3, line(csvformat_1, 174)).
argument(f_comma_4, 1, csvformat_1_expr1).
argument(f_double_quote_char_5, 2, csvformat_1_expr1).
argument(csvformat_1_literal1, 3, csvformat_1_expr1).
argument(csvformat_1_literal2, 4, csvformat_1_expr1).
argument(csvformat_1_literal3, 5, csvformat_1_expr1).
argument(csvformat_1_literal4, 6, csvformat_1_expr1).
argument(csvformat_1_literal5, 7, csvformat_1_expr1).
argument(f_crlf_6, 8, csvformat_1_expr1).
argument(csvformat_1_literal6, 9, csvformat_1_expr1).
argument(csvformat_1_literal7, 10, csvformat_1_expr1).
argument(csvformat_1_literal8, 11, csvformat_1_expr1).
assign(f_rfc4180_7, csvformat_1_expr2, line(csvformat_1, 186)).
method_invoc(csvformat_1_expr2, m_with_ignore_empty_lines_4, line(csvformat_1, 186)).
argument(csvformat_1_literal9, 1, csvformat_1_expr2).
ref(f_default_3, csvformat_1_expr2, line(csvformat_1, 186)).
assign(f_excel_8, csvformat_1_expr3, line(csvformat_1, 205)).
method_invoc(csvformat_1_expr3, m_with_ignore_empty_lines_4, line(csvformat_1, 205)).
argument(csvformat_1_literal10, 1, csvformat_1_expr3).
ref(f_default_3, csvformat_1_expr3, line(csvformat_1, 205)).
assign(f_tdf_9, csvformat_1_expr4, line(csvformat_1, 208)).
assign(f_mysql_10, csvformat_1_expr5, line(csvformat_1, 221)).
param(p_c_11, 1, m_is_line_break_5).
return(csvformat_1_expr6, m_is_line_break_5, line(csvformat_1, 238)).
param(p_c_14, 1, m_is_line_break_6).
return(csvformat_1_expr9, m_is_line_break_6, line(csvformat_1, 250)).
method_invoc(csvformat_1_expr11, m_is_line_break_5, line(csvformat_1, 250)).
argument(csvformat_1_expr12, 1, csvformat_1_expr11).
method_invoc(csvformat_1_expr12, m_char_value_7, line(csvformat_1, 250)).
ref(p_c_14, csvformat_1_expr12, line(csvformat_1, 250)).
param(p_delimiter_15, 1, m_new_format_8).
param(p_delimiter_16, 1, m_csvformat_3).
param(p_quote_char_17, 2, m_csvformat_3).
param(p_quote_policy_18, 3, m_csvformat_3).
param(p_comment_start_19, 4, m_csvformat_3).
param(p_escape_20, 5, m_csvformat_3).
param(p_ignore_surrounding_spaces_21, 6, m_csvformat_3).
param(p_ignore_empty_lines_22, 7, m_csvformat_3).
param(p_record_separator_23, 8, m_csvformat_3).
param(p_null_string_24, 9, m_csvformat_3).
param(p_header_25, 10, m_csvformat_3).
param(p_skip_header_record_26, 11, m_csvformat_3).
method_invoc(csvformat_1_expr13, m_is_line_break_5, line(csvformat_1, 297)).
argument(p_delimiter_16, 1, csvformat_1_expr13).
assign(f_delimiter_27, p_delimiter_16, line(csvformat_1, 300)).
assign(f_quote_char_28, p_quote_char_17, line(csvformat_1, 301)).
assign(f_quote_policy_29, p_quote_policy_18, line(csvformat_1, 302)).
assign(f_comment_start_30, p_comment_start_19, line(csvformat_1, 303)).
assign(f_escape_31, p_escape_20, line(csvformat_1, 304)).
assign(f_ignore_surrounding_spaces_32, p_ignore_surrounding_spaces_21, line(csvformat_1, 305)).
assign(f_ignore_empty_lines_33, p_ignore_empty_lines_22, line(csvformat_1, 306)).
assign(f_record_separator_34, p_record_separator_23, line(csvformat_1, 307)).
assign(f_null_string_35, p_null_string_24, line(csvformat_1, 308)).
assign(f_header_36, csvformat_1_expr43, line(csvformat_1, 309)).
cond_expr(csvformat_1_expr45, csvformat_1_literal12, csvformat_1_expr46, line(csvformat_1, 309)).
method_invoc(csvformat_1_expr46, m_clone_9, line(csvformat_1, 309)).
ref(p_header_25, csvformat_1_expr46, line(csvformat_1, 309)).
assign(f_skip_header_record_37, p_skip_header_record_26, line(csvformat_1, 310)).
param(p_obj_38, 1, m_equals_10).
param(p_values_39, 1, m_format_11).
return(f_comment_start_30, m_get_comment_start_12, line(csvformat_1, 396)).
return(f_delimiter_27, m_get_delimiter_13, line(csvformat_1, 405)).
return(f_escape_31, m_get_escape_14, line(csvformat_1, 414)).
return(csvformat_1_expr50, m_get_header_15, line(csvformat_1, 423)).
cond_expr(csvformat_1_expr51, csvformat_1_expr52, csvformat_1_literal14, line(csvformat_1, 423)).
method_invoc(csvformat_1_expr52, m_clone_9, line(csvformat_1, 423)).
ref(f_header_36, csvformat_1_expr52, line(csvformat_1, 423)).
return(f_ignore_empty_lines_33, m_get_ignore_empty_lines_16, line(csvformat_1, 433)).
return(f_ignore_surrounding_spaces_32, m_get_ignore_surrounding_spaces_17, line(csvformat_1, 443)).
return(f_quote_char_28, m_get_quote_char_19, line(csvformat_1, 469)).
param(p_in_40, 1, m_parse_28).
throw(m_parse_28, ioexception).
throw(m_validate_30, illegal_state_exception).
method_invoc(csvformat_1_expr56, m_char_value_7, line(csvformat_1, 616)).
ref(f_quote_char_28, csvformat_1_expr56, line(csvformat_1, 616)).
method_invoc(csvformat_1_expr60, m_char_value_7, line(csvformat_1, 621)).
ref(f_escape_31, csvformat_1_expr60, line(csvformat_1, 621)).
method_invoc(csvformat_1_expr64, m_char_value_7, line(csvformat_1, 626)).
ref(f_comment_start_30, csvformat_1_expr64, line(csvformat_1, 626)).
method_invoc(csvformat_1_expr67, m_equals_31, line(csvformat_1, 631)).
argument(f_comment_start_30, 1, csvformat_1_expr67).
ref(f_quote_char_28, csvformat_1_expr67, line(csvformat_1, 631)).
method_invoc(csvformat_1_expr70, m_equals_31, line(csvformat_1, 636)).
argument(f_comment_start_30, 1, csvformat_1_expr70).
ref(f_escape_31, csvformat_1_expr70, line(csvformat_1, 636)).
ref(t_quote_1, q_none_1, line(csvformat_1, 641)).
param(p_comment_start_41, 1, m_with_comment_start_32).
param(p_comment_start_42, 1, m_with_comment_start_33).
param(p_delimiter_43, 1, m_with_delimiter_34).
method_invoc(csvformat_1_expr75, m_is_line_break_5, line(csvformat_1, 698)).
argument(p_delimiter_43, 1, csvformat_1_expr75).
return(csvformat_1_expr76, m_with_delimiter_34, line(csvformat_1, 701)).
method_invoc(csvformat_1_expr76, m_csvformat_3, line(csvformat_1, 701)).
argument(p_delimiter_43, 1, csvformat_1_expr76).
argument(f_quote_char_28, 2, csvformat_1_expr76).
argument(f_quote_policy_29, 3, csvformat_1_expr76).
argument(f_comment_start_30, 4, csvformat_1_expr76).
argument(f_escape_31, 5, csvformat_1_expr76).
argument(f_ignore_surrounding_spaces_32, 6, csvformat_1_expr76).
argument(f_ignore_empty_lines_33, 7, csvformat_1_expr76).
argument(f_record_separator_34, 8, csvformat_1_expr76).
argument(f_null_string_35, 9, csvformat_1_expr76).
argument(f_header_36, 10, csvformat_1_expr76).
argument(f_skip_header_record_37, 11, csvformat_1_expr76).
param(p_escape_44, 1, m_with_escape_35).
return(csvformat_1_expr77, m_with_escape_35, line(csvformat_1, 715)).
method_invoc(csvformat_1_expr77, m_with_escape_36, line(csvformat_1, 715)).
argument(csvformat_1_expr78, 1, csvformat_1_expr77).
method_invoc(csvformat_1_expr78, m_value_of_37, line(csvformat_1, 715)).
argument(p_escape_44, 1, csvformat_1_expr78).
ref(t_character_2, csvformat_1_expr78, line(csvformat_1, 715)).
param(p_escape_45, 1, m_with_escape_36).
method_invoc(csvformat_1_expr79, m_is_line_break_6, line(csvformat_1, 728)).
argument(p_escape_45, 1, csvformat_1_expr79).
return(csvformat_1_expr80, m_with_escape_36, line(csvformat_1, 731)).
method_invoc(csvformat_1_expr80, m_csvformat_3, line(csvformat_1, 731)).
argument(f_delimiter_27, 1, csvformat_1_expr80).
argument(f_quote_char_28, 2, csvformat_1_expr80).
argument(f_quote_policy_29, 3, csvformat_1_expr80).
argument(f_comment_start_30, 4, csvformat_1_expr80).
argument(p_escape_45, 5, csvformat_1_expr80).
argument(f_ignore_surrounding_spaces_32, 6, csvformat_1_expr80).
argument(f_ignore_empty_lines_33, 7, csvformat_1_expr80).
argument(f_record_separator_34, 8, csvformat_1_expr80).
argument(f_null_string_35, 9, csvformat_1_expr80).
argument(f_header_36, 10, csvformat_1_expr80).
argument(f_skip_header_record_37, 11, csvformat_1_expr80).
param(p_header_46, 1, m_with_header_38).
param(p_ignore_empty_lines_47, 1, m_with_ignore_empty_lines_4).
return(csvformat_1_expr81, m_with_ignore_empty_lines_4, line(csvformat_1, 766)).
method_invoc(csvformat_1_expr81, m_csvformat_3, line(csvformat_1, 766)).
argument(f_delimiter_27, 1, csvformat_1_expr81).
argument(f_quote_char_28, 2, csvformat_1_expr81).
argument(f_quote_policy_29, 3, csvformat_1_expr81).
argument(f_comment_start_30, 4, csvformat_1_expr81).
argument(f_escape_31, 5, csvformat_1_expr81).
argument(f_ignore_surrounding_spaces_32, 6, csvformat_1_expr81).
argument(p_ignore_empty_lines_47, 7, csvformat_1_expr81).
argument(f_record_separator_34, 8, csvformat_1_expr81).
argument(f_null_string_35, 9, csvformat_1_expr81).
argument(f_header_36, 10, csvformat_1_expr81).
argument(f_skip_header_record_37, 11, csvformat_1_expr81).
param(p_ignore_surrounding_spaces_48, 1, m_with_ignore_surrounding_spaces_39).
return(csvformat_1_expr82, m_with_ignore_surrounding_spaces_39, line(csvformat_1, 779)).
method_invoc(csvformat_1_expr82, m_csvformat_3, line(csvformat_1, 779)).
argument(f_delimiter_27, 1, csvformat_1_expr82).
argument(f_quote_char_28, 2, csvformat_1_expr82).
argument(f_quote_policy_29, 3, csvformat_1_expr82).
argument(f_comment_start_30, 4, csvformat_1_expr82).
argument(f_escape_31, 5, csvformat_1_expr82).
argument(p_ignore_surrounding_spaces_48, 6, csvformat_1_expr82).
argument(f_ignore_empty_lines_33, 7, csvformat_1_expr82).
argument(f_record_separator_34, 8, csvformat_1_expr82).
argument(f_null_string_35, 9, csvformat_1_expr82).
argument(f_header_36, 10, csvformat_1_expr82).
argument(f_skip_header_record_37, 11, csvformat_1_expr82).
param(p_null_string_49, 1, m_with_null_string_40).
param(p_quote_char_50, 1, m_with_quote_char_41).
param(p_quote_char_51, 1, m_with_quote_char_42).
method_invoc(csvformat_1_expr83, m_is_line_break_6, line(csvformat_1, 826)).
argument(p_quote_char_51, 1, csvformat_1_expr83).
return(csvformat_1_expr84, m_with_quote_char_42, line(csvformat_1, 829)).
method_invoc(csvformat_1_expr84, m_csvformat_3, line(csvformat_1, 829)).
argument(f_delimiter_27, 1, csvformat_1_expr84).
argument(p_quote_char_51, 2, csvformat_1_expr84).
argument(f_quote_policy_29, 3, csvformat_1_expr84).
argument(f_comment_start_30, 4, csvformat_1_expr84).
argument(f_escape_31, 5, csvformat_1_expr84).
argument(f_ignore_surrounding_spaces_32, 6, csvformat_1_expr84).
argument(f_ignore_empty_lines_33, 7, csvformat_1_expr84).
argument(f_record_separator_34, 8, csvformat_1_expr84).
argument(f_null_string_35, 9, csvformat_1_expr84).
argument(f_header_36, 10, csvformat_1_expr84).
argument(f_skip_header_record_37, 11, csvformat_1_expr84).
param(p_quote_policy_52, 1, m_with_quote_policy_43).
param(p_record_separator_53, 1, m_with_record_separator_44).
return(csvformat_1_expr85, m_with_record_separator_44, line(csvformat_1, 855)).
method_invoc(csvformat_1_expr85, m_with_record_separator_45, line(csvformat_1, 855)).
argument(csvformat_1_expr86, 1, csvformat_1_expr85).
method_invoc(csvformat_1_expr86, m_value_of_46, line(csvformat_1, 855)).
argument(p_record_separator_53, 1, csvformat_1_expr86).
ref(t_string_3, csvformat_1_expr86, line(csvformat_1, 855)).
param(p_record_separator_54, 1, m_with_record_separator_45).
return(csvformat_1_expr87, m_with_record_separator_45, line(csvformat_1, 867)).
method_invoc(csvformat_1_expr87, m_csvformat_3, line(csvformat_1, 867)).
argument(f_delimiter_27, 1, csvformat_1_expr87).
argument(f_quote_char_28, 2, csvformat_1_expr87).
argument(f_quote_policy_29, 3, csvformat_1_expr87).
argument(f_comment_start_30, 4, csvformat_1_expr87).
argument(f_escape_31, 5, csvformat_1_expr87).
argument(f_ignore_surrounding_spaces_32, 6, csvformat_1_expr87).
argument(f_ignore_empty_lines_33, 7, csvformat_1_expr87).
argument(p_record_separator_54, 8, csvformat_1_expr87).
argument(f_null_string_35, 9, csvformat_1_expr87).
argument(f_header_36, 10, csvformat_1_expr87).
argument(f_skip_header_record_37, 11, csvformat_1_expr87).
param(p_skip_header_record_55, 1, m_with_skip_header_record_47).

%constants_1 - org.apache.commons.csv.Constants
assign(f_double_quote_char_5, constants_1_expr1, line(constants_1, 36)).
method_invoc(constants_1_expr1, m_value_of_37, line(constants_1, 36)).
argument(constants_1_literal1, 1, constants_1_expr1).
ref(t_character_2, constants_1_expr1, line(constants_1, 36)).

%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
assign(f_result_72, csvparser_test_1_expr1, line(csvparser_test_1, 67)).
throw(m_test_get_line_72, ioexception).
throw(m_test_get_records_73, ioexception).
throw(m_test_excel_format1_74, ioexception).
throw(m_test_excel_format2_75, exception).
throw(m_test_end_of_file_behaviour_excel_76, exception).
throw(m_test_end_of_file_behavior_csv_77, exception).
throw(m_test_empty_line_behaviour_excel_78, exception).
throw(m_test_empty_line_behaviour_csv_79, exception).
throw(m_test_empty_file_80, exception).
throw(m_test_csv57_81, exception).
throw(m_test_backslash_escaping_old_82, ioexception).
throw(m_test_backslash_escaping_83, ioexception).
throw(m_test_backslash_escaping2_84, ioexception).
throw(m_test_default_format_85, ioexception).
throw(m_test_carriage_return_line_feed_endings_86, ioexception).
throw(m_test_close_87, exception).
throw(m_test_carriage_return_endings_88, ioexception).
throw(m_test_line_feed_endings_89, ioexception).
throw(m_test_ignore_empty_lines_90, ioexception).
throw(m_test_for_each_91, exception).
throw(m_test_roundtrip_92, exception).
throw(m_test_iterator_93, exception).
throw(m_test_multiple_iterators_94, exception).
throw(m_test_header_95, exception).
throw(m_test_skip_set_header_96, exception).
throw(m_test_skip_auto_header_97, exception).
throw(m_test_header_comment_98, exception).
throw(m_test_provided_header_99, exception).
throw(m_test_provided_header_auto_100, exception).
throw(m_test_mapped_but_not_set_as_outlook2007_contact_export_101, exception).
throw(m_test_get_header_map_102, exception).
throw(m_test_no_header_map_103, exception).
assign(v_parser_73, csvparser_test_1_expr2, line(csvparser_test_1, 669)).
method_invoc(csvparser_test_1_expr2, m_parse_49, line(csvparser_test_1, 669)).
throw(csvparser_test_1_expr2, ioexception, line(csvparser_test_1, 669)).
argument(csvparser_test_1_literal1, 1, csvparser_test_1_expr2).
argument(q_default_2, 2, csvparser_test_1_expr2).
ref(t_csvparser_6, csvparser_test_1_expr2, line(csvparser_test_1, 669)).
ref(t_csvformat_7, q_default_2, line(csvparser_test_1, 669)).
method_invoc(csvparser_test_1_expr3, m_assert_null_104, line(csvparser_test_1, 670)).
argument(csvparser_test_1_expr4, 1, csvparser_test_1_expr3).
ref(t_assert_8, csvparser_test_1_expr3, line(csvparser_test_1, 670)).
method_invoc(csvparser_test_1_expr4, m_get_header_map_61, line(csvparser_test_1, 670)).
ref(v_parser_73, csvparser_test_1_expr4, line(csvparser_test_1, 670)).
throw(m_test_get_line_number_with_lf_105, exception).
throw(m_test_get_line_number_with_crlf_106, exception).
throw(m_test_get_line_number_with_cr_107, exception).
throw(m_test_get_record_number_with_lf_108, exception).
throw(m_test_get_record_with_multi_line_values_109, exception).
throw(m_test_get_record_number_with_crlf_110, exception).
throw(m_test_get_record_number_with_cr_111, exception).
throw(m_test_invalid_format_112, exception).
throw(m_test_parse_null_file_format_113, exception).
throw(m_test_parse_file_null_format_114, exception).
throw(m_test_parse_null_string_format_115, exception).
throw(m_test_parse_string_null_format_116, exception).
throw(m_test_parse_null_url_charset_format_117, exception).
throw(m_test_parser_url_null_charset_format_118, exception).
throw(m_test_parse_url_charset_null_format_119, exception).
throw(m_test_new_csvparser_null_reader_format_120, exception).
throw(m_test_new_csvparser_reader_null_format_121, exception).
param(p_line_separator_74, 1, m_validate_record_numbers_122).
throw(m_validate_record_numbers_122, ioexception).
param(p_line_separator_75, 1, m_validate_line_numbers_123).
throw(m_validate_line_numbers_123, ioexception).

%quote_1 - org.apache.commons.csv.Quote

%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
assign(f_last_char_76, f_undefined_77, line(extended_buffered_reader_1, 40)).
assign(f_eol_counter_78, extended_buffered_reader_1_literal1, line(extended_buffered_reader_1, 43)).
param(p_reader_79, 1, m_extended_buffered_reader_56).
method_invoc(extended_buffered_reader_1_expr1, m_buffered_reader_124, line(extended_buffered_reader_1, 51)).
argument(p_reader_79, 1, extended_buffered_reader_1_expr1).
throw(m_read_125, ioexception).
param(p_buf_80, 1, m_read_127).
param(p_offset_81, 2, m_read_127).
param(p_length_82, 3, m_read_127).
throw(m_read_127, ioexception).
throw(m_read_line_128, ioexception).
throw(m_look_ahead_129, ioexception).
throw(m_close_132, ioexception).

%lexer_1 - org.apache.commons.csv.Lexer
param(p_format_83, 1, m_lexer_55).
param(p_in_84, 2, m_lexer_55).
assign(f_in_85, p_in_84, line(lexer_1, 62)).
assign(f_delimiter_86, lexer_1_expr6, line(lexer_1, 63)).
method_invoc(lexer_1_expr6, m_get_delimiter_13, line(lexer_1, 63)).
ref(p_format_83, lexer_1_expr6, line(lexer_1, 63)).
assign(f_escape_87, lexer_1_expr10, line(lexer_1, 64)).
method_invoc(lexer_1_expr10, m_map_null_to_disabled_133, line(lexer_1, 64)).
argument(lexer_1_expr12, 1, lexer_1_expr10).
method_invoc(lexer_1_expr12, m_get_escape_14, line(lexer_1, 64)).
ref(p_format_83, lexer_1_expr12, line(lexer_1, 64)).
assign(f_quote_char_88, lexer_1_expr15, line(lexer_1, 65)).
method_invoc(lexer_1_expr15, m_map_null_to_disabled_133, line(lexer_1, 65)).
argument(lexer_1_expr17, 1, lexer_1_expr15).
method_invoc(lexer_1_expr17, m_get_quote_char_19, line(lexer_1, 65)).
ref(p_format_83, lexer_1_expr17, line(lexer_1, 65)).
assign(f_comment_start_89, lexer_1_expr20, line(lexer_1, 66)).
method_invoc(lexer_1_expr20, m_map_null_to_disabled_133, line(lexer_1, 66)).
argument(lexer_1_expr22, 1, lexer_1_expr20).
method_invoc(lexer_1_expr22, m_get_comment_start_12, line(lexer_1, 66)).
ref(p_format_83, lexer_1_expr22, line(lexer_1, 66)).
assign(f_ignore_surrounding_spaces_90, lexer_1_expr25, line(lexer_1, 67)).
method_invoc(lexer_1_expr25, m_get_ignore_surrounding_spaces_17, line(lexer_1, 67)).
ref(p_format_83, lexer_1_expr25, line(lexer_1, 67)).
assign(f_ignore_empty_lines_91, lexer_1_expr29, line(lexer_1, 68)).
method_invoc(lexer_1_expr29, m_get_ignore_empty_lines_16, line(lexer_1, 68)).
ref(p_format_83, lexer_1_expr29, line(lexer_1, 68)).
param(p_token_92, 1, m_next_token_134).
throw(m_next_token_134, ioexception).
param(p_token_93, 1, m_parse_simple_token_135).
param(p_ch_94, 2, m_parse_simple_token_135).
throw(m_parse_simple_token_135, ioexception).
param(p_token_95, 1, m_parse_encapsulated_token_136).
throw(m_parse_encapsulated_token_136, ioexception).
param(p_c_96, 1, m_map_null_to_disabled_133).
return(lexer_1_expr31, m_map_null_to_disabled_133, line(lexer_1, 291)).
cond_expr(lexer_1_expr32, f_disabled_97, lexer_1_expr33, line(lexer_1, 291)).
method_invoc(lexer_1_expr33, m_char_value_7, line(lexer_1, 291)).
ref(p_c_96, lexer_1_expr33, line(lexer_1, 291)).
throw(m_read_escape_138, ioexception).
param(p_buffer_98, 1, m_trim_trailing_spaces_139).
param(p_ch_99, 1, m_read_end_of_line_140).
throw(m_read_end_of_line_140, ioexception).
param(p_ch_100, 1, m_is_whitespace_142).
param(p_ch_101, 1, m_is_start_of_line_143).
param(p_ch_102, 1, m_is_end_of_file_144).
param(p_ch_103, 1, m_is_delimiter_145).
param(p_ch_104, 1, m_is_escape_146).
param(p_ch_105, 1, m_is_quote_char_147).
param(p_ch_106, 1, m_is_comment_start_148).
param(p_ch_107, 1, m_is_meta_char_149).
throw(m_close_150, ioexception).

%token_1 - org.apache.commons.csv.Token
assign(f_type_117, f_invalid_112, line(token_1, 52)).
assign(f_content_118, token_1_expr1, line(token_1, 55)).
method_invoc(token_1_expr1, m_string_builder_151, line(token_1, 55)).
argument(f_initial_token_length_119, 1, token_1_expr1).

%assertions_1 - org.apache.commons.csv.Assertions
param(p_parameter_1, 1, m_not_null_2).
param(p_parameter_name_2, 2, m_not_null_2).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.csv.CSVParserTest', 'testNoHeaderMap').
trace(trace_1, failure_1, 'putMapEntries', line(java_util_hash_map, 495), failure_1, non_target).
trace(trace_2, trace_1, 'LinkedHashMap', line(java_util_linked_hash_map, 385), failure_1, non_target).
trace(trace_3, trace_2, m_get_header_map_61, line(csvparser_1, 288), failure_1, target).
trace(trace_4, trace_3, m_test_no_header_map_103, line(csvparser_test_1, 670), failure_1, target).
trace(trace_5, trace_4, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_8, trace_7, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_9, trace_8, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_10, trace_9, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_11, trace_10, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_12, trace_11, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_13, trace_12, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_14, trace_13, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_15, trace_14, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_16, trace_15, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_17, trace_16, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_18, trace_17, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_19, trace_18, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_20, trace_19, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_21, trace_20, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_22, trace_21, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_23, trace_22, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_24, trace_23, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_25, trace_24, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_26, trace_25, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(f_header_map_69, null, line(csvparser_1, 288)).



%%% End of Facts