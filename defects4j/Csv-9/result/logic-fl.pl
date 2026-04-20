%%% Logic-FL Facts
:- style_check(-discontiguous).

%csvparser_1 - org.apache.commons.csv.CSVParser
param(p_file_56, 1, m_parse_48).
param(p_format_57, 2, m_parse_48).
throw(m_parse_48, ioexception).
param(p_string_58, 1, m_parse_49).
param(p_format_59, 2, m_parse_49).
throw(m_parse_49, ioexception).
method_invoc(csvparser_1_expr1, m_not_null_2, line(csvparser_1, 174)).
argument(p_string_58, 1, csvparser_1_expr1).
argument(csvparser_1_literal1, 2, csvparser_1_expr1).
ref(t_assertions_4, csvparser_1_expr1, line(csvparser_1, 174)).
method_invoc(csvparser_1_expr2, m_not_null_2, line(csvparser_1, 175)).
argument(p_format_59, 1, csvparser_1_expr2).
argument(csvparser_1_literal2, 2, csvparser_1_expr2).
ref(t_assertions_4, csvparser_1_expr2, line(csvparser_1, 175)).
return(csvparser_1_expr3, m_parse_49, line(csvparser_1, 177)).
method_invoc(csvparser_1_expr3, m_csvparser_50, line(csvparser_1, 177)).
throw(csvparser_1_expr3, ioexception, line(csvparser_1, 177)).
argument(csvparser_1_expr4, 1, csvparser_1_expr3).
argument(p_format_59, 2, csvparser_1_expr3).
method_invoc(csvparser_1_expr4, m_string_reader_51, line(csvparser_1, 177)).
argument(p_string_58, 1, csvparser_1_expr4).
param(p_url_60, 1, m_parse_52).
param(p_charset_61, 2, m_parse_52).
param(p_format_62, 3, m_parse_52).
throw(m_parse_52, ioexception).
assign(f_record_63, csvparser_1_expr5, line(csvparser_1, 218)).
method_invoc(csvparser_1_expr5, m_array_list_53, line(csvparser_1, 218)).
assign(f_reusable_token_64, csvparser_1_expr6, line(csvparser_1, 222)).
method_invoc(csvparser_1_expr6, m_token_54, line(csvparser_1, 222)).
param(p_reader_65, 1, m_csvparser_50).
param(p_format_66, 2, m_csvparser_50).
throw(m_csvparser_50, ioexception).
method_invoc(csvparser_1_expr7, m_not_null_2, line(csvparser_1, 242)).
argument(p_reader_65, 1, csvparser_1_expr7).
argument(csvparser_1_literal3, 2, csvparser_1_expr7).
ref(t_assertions_4, csvparser_1_expr7, line(csvparser_1, 242)).
method_invoc(csvparser_1_expr8, m_not_null_2, line(csvparser_1, 243)).
argument(p_format_66, 1, csvparser_1_expr8).
argument(csvparser_1_literal4, 2, csvparser_1_expr8).
ref(t_assertions_4, csvparser_1_expr8, line(csvparser_1, 243)).
method_invoc(csvparser_1_expr9, m_validate_30, line(csvparser_1, 245)).
throw(csvparser_1_expr9, illegal_state_exception, line(csvparser_1, 245)).
ref(p_format_66, csvparser_1_expr9, line(csvparser_1, 245)).
assign(f_format_67, p_format_66, line(csvparser_1, 246)).
assign(f_lexer_68, csvparser_1_expr15, line(csvparser_1, 247)).
method_invoc(csvparser_1_expr15, m_lexer_55, line(csvparser_1, 247)).
argument(p_format_66, 1, csvparser_1_expr15).
argument(csvparser_1_expr17, 2, csvparser_1_expr15).
method_invoc(csvparser_1_expr17, m_extended_buffered_reader_56, line(csvparser_1, 247)).
argument(p_reader_65, 1, csvparser_1_expr17).
assign(f_header_map_69, csvparser_1_expr20, line(csvparser_1, 248)).
method_invoc(csvparser_1_expr20, m_initialize_header_57, line(csvparser_1, 248)).
throw(csvparser_1_expr20, ioexception, line(csvparser_1, 248)).
ref(csvparser_1_expr22, csvparser_1_expr20, line(csvparser_1, 248)).
assign(v_input_70, csvparser_1_expr23, line(csvparser_1, 252)).
method_invoc(csvparser_1_expr23, m_to_string_59, line(csvparser_1, 252)).
ref(csvparser_1_expr24, csvparser_1_expr23, line(csvparser_1, 252)).
ref(f_reusable_token_64, csvparser_1_expr24, line(csvparser_1, 252)).
assign(v_null_string_72, csvparser_1_expr27, line(csvparser_1, 253)).
method_invoc(csvparser_1_expr27, m_get_null_string_18, line(csvparser_1, 253)).
ref(f_format_67, csvparser_1_expr27, line(csvparser_1, 253)).
method_invoc(csvparser_1_expr31, m_add_60, line(csvparser_1, 255)).
argument(v_input_70, 1, csvparser_1_expr31).
ref(f_record_63, csvparser_1_expr31, line(csvparser_1, 255)).
throw(m_close_61, ioexception).
throw(m_get_records_65, ioexception).
param(p_records_73, 1, m_get_records_66).
throw(m_get_records_66, ioexception).
throw(m_initialize_header_57, ioexception).
assign(v_hdr_map_74, csvparser_1_literal6, line(csvparser_1, 358)).
assign(v_format_header_75, csvparser_1_expr34, line(csvparser_1, 359)).
method_invoc(csvparser_1_expr34, m_get_header_14, line(csvparser_1, 359)).
ref(f_format_67, csvparser_1_expr34, line(csvparser_1, 359)).
return(v_hdr_map_74, m_initialize_header_57, line(csvparser_1, 388)).
return(csvparser_1_expr38, m_is_closed_67, line(csvparser_1, 392)).
method_invoc(csvparser_1_expr38, m_is_closed_68, line(csvparser_1, 392)).
ref(f_lexer_68, csvparser_1_expr38, line(csvparser_1, 392)).
return(csvparser_1_expr41, m_iterator_69, line(csvparser_1, 404)).
method_invoc(csvparser_1_expr41, m__70, line(csvparser_1, 404)).
return(csvparser_1_expr42, m_get_next_record_71, line(csvparser_1, 409)).
method_invoc(csvparser_1_expr42, m_next_record_72, line(csvparser_1, 409)).
throw(csvparser_1_expr42, ioexception, line(csvparser_1, 409)).
ref(csvparser_1_expr43, csvparser_1_expr42, line(csvparser_1, 409)).
method_invoc(csvparser_1_expr44, m_is_closed_67, line(csvparser_1, 428)).
ref(csvparser_1_expr45, csvparser_1_expr44, line(csvparser_1, 428)).
assign(v_next_76, f_current_77, line(csvparser_1, 431)).
assign(f_current_77, csvparser_1_literal8, line(csvparser_1, 432)).
assign(v_next_76, csvparser_1_expr53, line(csvparser_1, 436)).
method_invoc(csvparser_1_expr53, m_get_next_record_71, line(csvparser_1, 436)).
ref(csvparser_1_expr54, csvparser_1_expr53, line(csvparser_1, 436)).
return(v_next_76, m_next_74, line(csvparser_1, 442)).
throw(m_next_record_72, ioexception).
assign(v_result_78, csvparser_1_literal11, line(csvparser_1, 459)).
method_invoc(csvparser_1_expr56, m_clear_76, line(csvparser_1, 460)).
ref(f_record_63, csvparser_1_expr56, line(csvparser_1, 460)).
assign(v_sb_79, csvparser_1_literal12, line(csvparser_1, 461)).
method_invoc(csvparser_1_expr59, m_reset_77, line(csvparser_1, 463)).
ref(f_reusable_token_64, csvparser_1_expr59, line(csvparser_1, 463)).
method_invoc(csvparser_1_expr62, m_next_token_78, line(csvparser_1, 464)).
throw(csvparser_1_expr62, ioexception, line(csvparser_1, 464)).
argument(f_reusable_token_64, 1, csvparser_1_expr62).
ref(f_lexer_68, csvparser_1_expr62, line(csvparser_1, 464)).
ref(f_reusable_token_64, csvparser_1_expr67, line(csvparser_1, 465)).
method_invoc(csvparser_1_expr70, m_add_record_value_58, line(csvparser_1, 467)).
ref(csvparser_1_expr71, csvparser_1_expr70, line(csvparser_1, 467)).
ref(f_reusable_token_64, csvparser_1_expr72, line(csvparser_1, 473)).
method_invoc(csvparser_1_expr75, m_add_record_value_58, line(csvparser_1, 474)).
ref(csvparser_1_expr76, csvparser_1_expr75, line(csvparser_1, 474)).
ref(f_reusable_token_64, csvparser_1_expr78, line(csvparser_1, 491)).
method_invoc(csvparser_1_expr82, m_is_empty_79, line(csvparser_1, 493)).
ref(f_record_63, csvparser_1_expr82, line(csvparser_1, 493)).
assign(v_comment_84, csvparser_1_expr88, line(csvparser_1, 495)).
cond_expr(csvparser_1_expr89, csvparser_1_literal13, csvparser_1_expr90, line(csvparser_1, 495)).
method_invoc(csvparser_1_expr90, m_to_string_59, line(csvparser_1, 495)).
ref(v_sb_79, csvparser_1_expr90, line(csvparser_1, 495)).
assign(v_result_78, csvparser_1_expr92, line(csvparser_1, 496)).
method_invoc(csvparser_1_expr92, m_csvrecord_80, line(csvparser_1, 496)).
argument(csvparser_1_expr93, 1, csvparser_1_expr92).
argument(f_header_map_69, 2, csvparser_1_expr92).
argument(v_comment_84, 3, csvparser_1_expr92).
argument(f_record_number_83, 4, csvparser_1_expr92).
method_invoc(csvparser_1_expr93, m_to_array_81, line(csvparser_1, 496)).
argument(csvparser_1_expr96, 1, csvparser_1_expr93).
ref(f_record_63, csvparser_1_expr93, line(csvparser_1, 496)).
method_invoc(csvparser_1_expr99, m_size_82, line(csvparser_1, 496)).
ref(f_record_63, csvparser_1_expr99, line(csvparser_1, 496)).
return(v_result_78, m_next_record_72, line(csvparser_1, 499)).

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
assign(f_excel_8, csvformat_1_expr3, line(csvformat_1, 210)).
method_invoc(csvformat_1_expr3, m_with_ignore_empty_lines_4, line(csvformat_1, 210)).
argument(csvformat_1_literal10, 1, csvformat_1_expr3).
ref(f_default_3, csvformat_1_expr3, line(csvformat_1, 210)).
assign(f_tdf_9, csvformat_1_expr4, line(csvformat_1, 213)).
assign(f_mysql_10, csvformat_1_expr5, line(csvformat_1, 226)).
param(p_c_11, 1, m_is_line_break_5).
return(csvformat_1_expr6, m_is_line_break_5, line(csvformat_1, 243)).
param(p_c_14, 1, m_is_line_break_6).
return(csvformat_1_expr9, m_is_line_break_6, line(csvformat_1, 255)).
method_invoc(csvformat_1_expr11, m_is_line_break_5, line(csvformat_1, 255)).
argument(csvformat_1_expr12, 1, csvformat_1_expr11).
method_invoc(csvformat_1_expr12, m_char_value_7, line(csvformat_1, 255)).
ref(p_c_14, csvformat_1_expr12, line(csvformat_1, 255)).
param(p_delimiter_15, 1, m_new_format_8).
return(csvformat_1_expr13, m_new_format_8, line(csvformat_1, 267)).
method_invoc(csvformat_1_expr13, m_csvformat_3, line(csvformat_1, 267)).
argument(p_delimiter_15, 1, csvformat_1_expr13).
argument(csvformat_1_literal12, 2, csvformat_1_expr13).
argument(csvformat_1_literal13, 3, csvformat_1_expr13).
argument(csvformat_1_literal14, 4, csvformat_1_expr13).
argument(csvformat_1_literal15, 5, csvformat_1_expr13).
argument(csvformat_1_literal16, 6, csvformat_1_expr13).
argument(csvformat_1_literal17, 7, csvformat_1_expr13).
argument(csvformat_1_literal18, 8, csvformat_1_expr13).
argument(csvformat_1_literal19, 9, csvformat_1_expr13).
argument(csvformat_1_literal20, 10, csvformat_1_expr13).
argument(csvformat_1_literal21, 11, csvformat_1_expr13).
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
method_invoc(csvformat_1_expr14, m_is_line_break_5, line(csvformat_1, 301)).
argument(p_delimiter_16, 1, csvformat_1_expr14).
assign(f_delimiter_27, p_delimiter_16, line(csvformat_1, 304)).
assign(f_quote_char_28, p_quote_char_17, line(csvformat_1, 305)).
assign(f_quote_policy_29, p_quote_policy_18, line(csvformat_1, 306)).
assign(f_comment_start_30, p_comment_start_19, line(csvformat_1, 307)).
assign(f_escape_31, p_escape_20, line(csvformat_1, 308)).
assign(f_ignore_surrounding_spaces_32, p_ignore_surrounding_spaces_21, line(csvformat_1, 309)).
assign(f_ignore_empty_lines_33, p_ignore_empty_lines_22, line(csvformat_1, 310)).
assign(f_record_separator_34, p_record_separator_23, line(csvformat_1, 311)).
assign(f_null_string_35, p_null_string_24, line(csvformat_1, 312)).
assign(f_header_36, csvformat_1_literal23, line(csvformat_1, 314)).
assign(f_skip_header_record_37, p_skip_header_record_26, line(csvformat_1, 324)).
param(p_obj_38, 1, m_equals_9).
param(p_values_39, 1, m_format_10).
return(f_comment_start_30, m_get_comment_start_11, line(csvformat_1, 420)).
return(f_delimiter_27, m_get_delimiter_12, line(csvformat_1, 429)).
return(f_escape_31, m_get_escape_13, line(csvformat_1, 438)).
return(csvformat_1_expr49, m_get_header_14, line(csvformat_1, 447)).
cond_expr(csvformat_1_expr50, csvformat_1_expr51, csvformat_1_literal24, line(csvformat_1, 447)).
method_invoc(csvformat_1_expr51, m_clone_15, line(csvformat_1, 447)).
ref(f_header_36, csvformat_1_expr51, line(csvformat_1, 447)).
return(f_ignore_empty_lines_33, m_get_ignore_empty_lines_16, line(csvformat_1, 457)).
return(f_ignore_surrounding_spaces_32, m_get_ignore_surrounding_spaces_17, line(csvformat_1, 467)).
return(f_null_string_35, m_get_null_string_18, line(csvformat_1, 484)).
return(f_quote_char_28, m_get_quote_char_19, line(csvformat_1, 493)).
param(p_in_40, 1, m_parse_28).
throw(m_parse_28, ioexception).
throw(m_validate_30, illegal_state_exception).
method_invoc(csvformat_1_expr55, m_char_value_7, line(csvformat_1, 642)).
ref(f_quote_char_28, csvformat_1_expr55, line(csvformat_1, 642)).
method_invoc(csvformat_1_expr59, m_char_value_7, line(csvformat_1, 647)).
ref(f_escape_31, csvformat_1_expr59, line(csvformat_1, 647)).
method_invoc(csvformat_1_expr63, m_char_value_7, line(csvformat_1, 652)).
ref(f_comment_start_30, csvformat_1_expr63, line(csvformat_1, 652)).
method_invoc(csvformat_1_expr66, m_equals_31, line(csvformat_1, 657)).
argument(f_comment_start_30, 1, csvformat_1_expr66).
ref(f_quote_char_28, csvformat_1_expr66, line(csvformat_1, 657)).
method_invoc(csvformat_1_expr69, m_equals_31, line(csvformat_1, 662)).
argument(f_comment_start_30, 1, csvformat_1_expr69).
ref(f_escape_31, csvformat_1_expr69, line(csvformat_1, 662)).
ref(t_quote_1, q_none_1, line(csvformat_1, 667)).
param(p_comment_start_41, 1, m_with_comment_start_32).
param(p_comment_start_42, 1, m_with_comment_start_33).
param(p_delimiter_43, 1, m_with_delimiter_34).
method_invoc(csvformat_1_expr73, m_is_line_break_5, line(csvformat_1, 717)).
argument(p_delimiter_43, 1, csvformat_1_expr73).
return(csvformat_1_expr74, m_with_delimiter_34, line(csvformat_1, 720)).
method_invoc(csvformat_1_expr74, m_csvformat_3, line(csvformat_1, 720)).
argument(p_delimiter_43, 1, csvformat_1_expr74).
argument(f_quote_char_28, 2, csvformat_1_expr74).
argument(f_quote_policy_29, 3, csvformat_1_expr74).
argument(f_comment_start_30, 4, csvformat_1_expr74).
argument(f_escape_31, 5, csvformat_1_expr74).
argument(f_ignore_surrounding_spaces_32, 6, csvformat_1_expr74).
argument(f_ignore_empty_lines_33, 7, csvformat_1_expr74).
argument(f_record_separator_34, 8, csvformat_1_expr74).
argument(f_null_string_35, 9, csvformat_1_expr74).
argument(f_header_36, 10, csvformat_1_expr74).
argument(f_skip_header_record_37, 11, csvformat_1_expr74).
param(p_escape_44, 1, m_with_escape_35).
return(csvformat_1_expr75, m_with_escape_35, line(csvformat_1, 734)).
method_invoc(csvformat_1_expr75, m_with_escape_36, line(csvformat_1, 734)).
argument(csvformat_1_expr76, 1, csvformat_1_expr75).
method_invoc(csvformat_1_expr76, m_value_of_37, line(csvformat_1, 734)).
argument(p_escape_44, 1, csvformat_1_expr76).
ref(t_character_2, csvformat_1_expr76, line(csvformat_1, 734)).
param(p_escape_45, 1, m_with_escape_36).
method_invoc(csvformat_1_expr77, m_is_line_break_6, line(csvformat_1, 747)).
argument(p_escape_45, 1, csvformat_1_expr77).
return(csvformat_1_expr78, m_with_escape_36, line(csvformat_1, 750)).
method_invoc(csvformat_1_expr78, m_csvformat_3, line(csvformat_1, 750)).
argument(f_delimiter_27, 1, csvformat_1_expr78).
argument(f_quote_char_28, 2, csvformat_1_expr78).
argument(f_quote_policy_29, 3, csvformat_1_expr78).
argument(f_comment_start_30, 4, csvformat_1_expr78).
argument(p_escape_45, 5, csvformat_1_expr78).
argument(f_ignore_surrounding_spaces_32, 6, csvformat_1_expr78).
argument(f_ignore_empty_lines_33, 7, csvformat_1_expr78).
argument(f_record_separator_34, 8, csvformat_1_expr78).
argument(f_null_string_35, 9, csvformat_1_expr78).
argument(f_header_36, 10, csvformat_1_expr78).
argument(f_skip_header_record_37, 11, csvformat_1_expr78).
param(p_header_46, 1, m_with_header_38).
param(p_ignore_empty_lines_47, 1, m_with_ignore_empty_lines_4).
return(csvformat_1_expr79, m_with_ignore_empty_lines_4, line(csvformat_1, 785)).
method_invoc(csvformat_1_expr79, m_csvformat_3, line(csvformat_1, 785)).
argument(f_delimiter_27, 1, csvformat_1_expr79).
argument(f_quote_char_28, 2, csvformat_1_expr79).
argument(f_quote_policy_29, 3, csvformat_1_expr79).
argument(f_comment_start_30, 4, csvformat_1_expr79).
argument(f_escape_31, 5, csvformat_1_expr79).
argument(f_ignore_surrounding_spaces_32, 6, csvformat_1_expr79).
argument(p_ignore_empty_lines_47, 7, csvformat_1_expr79).
argument(f_record_separator_34, 8, csvformat_1_expr79).
argument(f_null_string_35, 9, csvformat_1_expr79).
argument(f_header_36, 10, csvformat_1_expr79).
argument(f_skip_header_record_37, 11, csvformat_1_expr79).
param(p_ignore_surrounding_spaces_48, 1, m_with_ignore_surrounding_spaces_39).
return(csvformat_1_expr80, m_with_ignore_surrounding_spaces_39, line(csvformat_1, 798)).
method_invoc(csvformat_1_expr80, m_csvformat_3, line(csvformat_1, 798)).
argument(f_delimiter_27, 1, csvformat_1_expr80).
argument(f_quote_char_28, 2, csvformat_1_expr80).
argument(f_quote_policy_29, 3, csvformat_1_expr80).
argument(f_comment_start_30, 4, csvformat_1_expr80).
argument(f_escape_31, 5, csvformat_1_expr80).
argument(p_ignore_surrounding_spaces_48, 6, csvformat_1_expr80).
argument(f_ignore_empty_lines_33, 7, csvformat_1_expr80).
argument(f_record_separator_34, 8, csvformat_1_expr80).
argument(f_null_string_35, 9, csvformat_1_expr80).
argument(f_header_36, 10, csvformat_1_expr80).
argument(f_skip_header_record_37, 11, csvformat_1_expr80).
param(p_null_string_49, 1, m_with_null_string_40).
param(p_quote_char_50, 1, m_with_quote_char_41).
param(p_quote_char_51, 1, m_with_quote_char_42).
method_invoc(csvformat_1_expr81, m_is_line_break_6, line(csvformat_1, 845)).
argument(p_quote_char_51, 1, csvformat_1_expr81).
return(csvformat_1_expr82, m_with_quote_char_42, line(csvformat_1, 848)).
method_invoc(csvformat_1_expr82, m_csvformat_3, line(csvformat_1, 848)).
argument(f_delimiter_27, 1, csvformat_1_expr82).
argument(p_quote_char_51, 2, csvformat_1_expr82).
argument(f_quote_policy_29, 3, csvformat_1_expr82).
argument(f_comment_start_30, 4, csvformat_1_expr82).
argument(f_escape_31, 5, csvformat_1_expr82).
argument(f_ignore_surrounding_spaces_32, 6, csvformat_1_expr82).
argument(f_ignore_empty_lines_33, 7, csvformat_1_expr82).
argument(f_record_separator_34, 8, csvformat_1_expr82).
argument(f_null_string_35, 9, csvformat_1_expr82).
argument(f_header_36, 10, csvformat_1_expr82).
argument(f_skip_header_record_37, 11, csvformat_1_expr82).
param(p_quote_policy_52, 1, m_with_quote_policy_43).
param(p_record_separator_53, 1, m_with_record_separator_44).
return(csvformat_1_expr83, m_with_record_separator_44, line(csvformat_1, 874)).
method_invoc(csvformat_1_expr83, m_with_record_separator_45, line(csvformat_1, 874)).
argument(csvformat_1_expr84, 1, csvformat_1_expr83).
method_invoc(csvformat_1_expr84, m_value_of_46, line(csvformat_1, 874)).
argument(p_record_separator_53, 1, csvformat_1_expr84).
ref(t_string_3, csvformat_1_expr84, line(csvformat_1, 874)).
param(p_record_separator_54, 1, m_with_record_separator_45).
return(csvformat_1_expr85, m_with_record_separator_45, line(csvformat_1, 886)).
method_invoc(csvformat_1_expr85, m_csvformat_3, line(csvformat_1, 886)).
argument(f_delimiter_27, 1, csvformat_1_expr85).
argument(f_quote_char_28, 2, csvformat_1_expr85).
argument(f_quote_policy_29, 3, csvformat_1_expr85).
argument(f_comment_start_30, 4, csvformat_1_expr85).
argument(f_escape_31, 5, csvformat_1_expr85).
argument(f_ignore_surrounding_spaces_32, 6, csvformat_1_expr85).
argument(f_ignore_empty_lines_33, 7, csvformat_1_expr85).
argument(p_record_separator_54, 8, csvformat_1_expr85).
argument(f_null_string_35, 9, csvformat_1_expr85).
argument(f_header_36, 10, csvformat_1_expr85).
argument(f_skip_header_record_37, 11, csvformat_1_expr85).
param(p_skip_header_record_55, 1, m_with_skip_header_record_47).

%constants_1 - org.apache.commons.csv.Constants
assign(f_double_quote_char_5, constants_1_expr1, line(constants_1, 36)).
method_invoc(constants_1_expr1, m_value_of_37, line(constants_1, 36)).
argument(constants_1_literal1, 1, constants_1_expr1).
ref(t_character_2, constants_1_expr1, line(constants_1, 36)).

%quote_1 - org.apache.commons.csv.Quote

%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
assign(f_last_char_111, f_undefined_112, line(extended_buffered_reader_1, 40)).
assign(f_eol_counter_113, extended_buffered_reader_1_literal1, line(extended_buffered_reader_1, 43)).
param(p_reader_114, 1, m_extended_buffered_reader_56).
method_invoc(extended_buffered_reader_1_expr1, m_buffered_reader_123, line(extended_buffered_reader_1, 51)).
argument(p_reader_114, 1, extended_buffered_reader_1_expr1).
throw(m_read_124, ioexception).
assign(v_current_115, extended_buffered_reader_1_expr2, line(extended_buffered_reader_1, 56)).
method_invoc(extended_buffered_reader_1_expr2, m_read_125, line(extended_buffered_reader_1, 56)).
throw(extended_buffered_reader_1_expr2, ioexception, line(extended_buffered_reader_1, 56)).
assign(extended_buffered_reader_1_expr5, extended_buffered_reader_1_expr6, line(extended_buffered_reader_1, 57)).
assign(f_last_char_111, v_current_115, line(extended_buffered_reader_1, 60)).
return(f_last_char_111, m_read_124, line(extended_buffered_reader_1, 61)).
return(f_last_char_111, m_get_last_char_126, line(extended_buffered_reader_1, 73)).
param(p_buf_116, 1, m_read_127).
param(p_offset_117, 2, m_read_127).
param(p_length_118, 3, m_read_127).
throw(m_read_127, ioexception).
throw(m_read_line_128, ioexception).
throw(m_look_ahead_129, ioexception).
return(f_closed_119, m_is_closed_131, line(extended_buffered_reader_1, 161)).
throw(m_close_132, ioexception).

%lexer_1 - org.apache.commons.csv.Lexer
param(p_format_120, 1, m_lexer_55).
param(p_reader_121, 2, m_lexer_55).
assign(f_reader_122, p_reader_121, line(lexer_1, 62)).
assign(f_delimiter_123, lexer_1_expr6, line(lexer_1, 63)).
method_invoc(lexer_1_expr6, m_get_delimiter_12, line(lexer_1, 63)).
ref(p_format_120, lexer_1_expr6, line(lexer_1, 63)).
assign(f_escape_124, lexer_1_expr10, line(lexer_1, 64)).
method_invoc(lexer_1_expr10, m_map_null_to_disabled_133, line(lexer_1, 64)).
argument(lexer_1_expr12, 1, lexer_1_expr10).
method_invoc(lexer_1_expr12, m_get_escape_13, line(lexer_1, 64)).
ref(p_format_120, lexer_1_expr12, line(lexer_1, 64)).
assign(f_quote_char_125, lexer_1_expr15, line(lexer_1, 65)).
method_invoc(lexer_1_expr15, m_map_null_to_disabled_133, line(lexer_1, 65)).
argument(lexer_1_expr17, 1, lexer_1_expr15).
method_invoc(lexer_1_expr17, m_get_quote_char_19, line(lexer_1, 65)).
ref(p_format_120, lexer_1_expr17, line(lexer_1, 65)).
assign(f_comment_start_126, lexer_1_expr20, line(lexer_1, 66)).
method_invoc(lexer_1_expr20, m_map_null_to_disabled_133, line(lexer_1, 66)).
argument(lexer_1_expr22, 1, lexer_1_expr20).
method_invoc(lexer_1_expr22, m_get_comment_start_11, line(lexer_1, 66)).
ref(p_format_120, lexer_1_expr22, line(lexer_1, 66)).
assign(f_ignore_surrounding_spaces_127, lexer_1_expr25, line(lexer_1, 67)).
method_invoc(lexer_1_expr25, m_get_ignore_surrounding_spaces_17, line(lexer_1, 67)).
ref(p_format_120, lexer_1_expr25, line(lexer_1, 67)).
assign(f_ignore_empty_lines_128, lexer_1_expr29, line(lexer_1, 68)).
method_invoc(lexer_1_expr29, m_get_ignore_empty_lines_16, line(lexer_1, 68)).
ref(p_format_120, lexer_1_expr29, line(lexer_1, 68)).
param(p_token_129, 1, m_next_token_78).
throw(m_next_token_78, ioexception).
assign(v_last_char_130, lexer_1_expr31, line(lexer_1, 85)).
method_invoc(lexer_1_expr31, m_get_last_char_126, line(lexer_1, 85)).
ref(f_reader_122, lexer_1_expr31, line(lexer_1, 85)).
assign(v_c_131, lexer_1_expr32, line(lexer_1, 88)).
method_invoc(lexer_1_expr32, m_read_124, line(lexer_1, 88)).
throw(lexer_1_expr32, ioexception, line(lexer_1, 88)).
ref(f_reader_122, lexer_1_expr32, line(lexer_1, 88)).
assign(v_eol_132, lexer_1_expr33, line(lexer_1, 93)).
method_invoc(lexer_1_expr33, m_read_end_of_line_134, line(lexer_1, 93)).
throw(lexer_1_expr33, ioexception, line(lexer_1, 93)).
argument(v_c_131, 1, lexer_1_expr33).
method_invoc(lexer_1_expr35, m_is_end_of_file_135, line(lexer_1, 112)).
argument(v_last_char_130, 1, lexer_1_expr35).
assign(lexer_1_expr36, lexer_1_expr37, line(lexer_1, 112)).
method_invoc(lexer_1_expr39, m_is_delimiter_136, line(lexer_1, 112)).
argument(v_last_char_130, 1, lexer_1_expr39).
method_invoc(lexer_1_expr40, m_is_end_of_file_135, line(lexer_1, 112)).
argument(v_c_131, 1, lexer_1_expr40).
method_invoc(lexer_1_expr42, m_is_start_of_line_137, line(lexer_1, 118)).
argument(v_last_char_130, 1, lexer_1_expr42).
method_invoc(lexer_1_expr43, m_is_comment_start_138, line(lexer_1, 118)).
argument(v_c_131, 1, lexer_1_expr43).
ref(p_token_129, q_type_3, line(lexer_1, 132)).
method_invoc(lexer_1_expr45, m_is_delimiter_136, line(lexer_1, 142)).
argument(v_c_131, 1, lexer_1_expr45).
method_invoc(lexer_1_expr46, m_is_quote_char_139, line(lexer_1, 149)).
argument(v_c_131, 1, lexer_1_expr46).
method_invoc(lexer_1_expr47, m_is_end_of_file_135, line(lexer_1, 152)).
argument(v_c_131, 1, lexer_1_expr47).
method_invoc(lexer_1_expr48, m_parse_simple_token_140, line(lexer_1, 160)).
throw(lexer_1_expr48, ioexception, line(lexer_1, 160)).
argument(p_token_129, 1, lexer_1_expr48).
argument(v_c_131, 2, lexer_1_expr48).
return(p_token_129, m_next_token_78, line(lexer_1, 163)).
param(p_token_134, 1, m_parse_simple_token_140).
param(p_ch_135, 2, m_parse_simple_token_140).
throw(m_parse_simple_token_140, ioexception).
method_invoc(lexer_1_expr49, m_read_end_of_line_134, line(lexer_1, 188)).
throw(lexer_1_expr49, ioexception, line(lexer_1, 188)).
argument(p_ch_135, 1, lexer_1_expr49).
method_invoc(lexer_1_expr50, m_is_end_of_file_135, line(lexer_1, 191)).
argument(p_ch_135, 1, lexer_1_expr50).
assign(q_type_4, f_eof_136, line(lexer_1, 192)).
ref(p_token_134, q_type_4, line(lexer_1, 192)).
assign(q_is_ready_5, lexer_1_literal1, line(lexer_1, 193)).
ref(p_token_134, q_is_ready_5, line(lexer_1, 193)).
method_invoc(lexer_1_expr53, m_is_delimiter_136, line(lexer_1, 195)).
argument(p_ch_135, 1, lexer_1_expr53).
assign(q_type_6, f_token_82, line(lexer_1, 196)).
ref(p_token_134, q_type_6, line(lexer_1, 196)).
method_invoc(lexer_1_expr55, m_is_escape_141, line(lexer_1, 198)).
argument(p_ch_135, 1, lexer_1_expr55).
method_invoc(lexer_1_expr56, m_append_142, line(lexer_1, 207)).
argument(lexer_1_expr57, 1, lexer_1_expr56).
ref(f_content_71, lexer_1_expr56, line(lexer_1, 207)).
ref(p_token_134, q_content_6, line(lexer_1, 207)).
assign(lexer_1_expr57, p_ch_135, line(lexer_1, 207)).
assign(p_ch_135, lexer_1_expr59, line(lexer_1, 208)).
method_invoc(lexer_1_expr59, m_read_124, line(lexer_1, 208)).
throw(lexer_1_expr59, ioexception, line(lexer_1, 208)).
ref(f_reader_122, lexer_1_expr59, line(lexer_1, 208)).
return(p_token_134, m_parse_simple_token_140, line(lexer_1, 216)).
param(p_token_137, 1, m_parse_encapsulated_token_143).
throw(m_parse_encapsulated_token_143, ioexception).
param(p_c_138, 1, m_map_null_to_disabled_133).
return(lexer_1_expr60, m_map_null_to_disabled_133, line(lexer_1, 291)).
cond_expr(lexer_1_expr61, f_disabled_139, lexer_1_expr62, line(lexer_1, 291)).
method_invoc(lexer_1_expr62, m_char_value_7, line(lexer_1, 291)).
ref(p_c_138, lexer_1_expr62, line(lexer_1, 291)).
throw(m_read_escape_145, ioexception).
param(p_buffer_140, 1, m_trim_trailing_spaces_146).
param(p_ch_141, 1, m_read_end_of_line_134).
throw(m_read_end_of_line_134, ioexception).
method_invoc(lexer_1_expr66, m_look_ahead_129, line(lexer_1, 364)).
throw(lexer_1_expr66, ioexception, line(lexer_1, 364)).
ref(f_reader_122, lexer_1_expr66, line(lexer_1, 364)).
return(lexer_1_expr67, m_read_end_of_line_134, line(lexer_1, 368)).
return(lexer_1_expr70, m_is_closed_68, line(lexer_1, 372)).
method_invoc(lexer_1_expr70, m_is_closed_131, line(lexer_1, 372)).
ref(f_reader_122, lexer_1_expr70, line(lexer_1, 372)).
param(p_ch_142, 1, m_is_whitespace_147).
param(p_ch_143, 1, m_is_start_of_line_137).
return(lexer_1_expr71, m_is_start_of_line_137, line(lexer_1, 389)).
param(p_ch_144, 1, m_is_end_of_file_135).
return(lexer_1_expr76, m_is_end_of_file_135, line(lexer_1, 396)).
param(p_ch_146, 1, m_is_delimiter_136).
return(lexer_1_expr77, m_is_delimiter_136, line(lexer_1, 400)).
param(p_ch_147, 1, m_is_escape_141).
return(lexer_1_expr78, m_is_escape_141, line(lexer_1, 404)).
param(p_ch_148, 1, m_is_quote_char_139).
return(lexer_1_expr79, m_is_quote_char_139, line(lexer_1, 408)).
param(p_ch_149, 1, m_is_comment_start_138).
return(lexer_1_expr80, m_is_comment_start_138, line(lexer_1, 412)).
param(p_ch_150, 1, m_is_meta_char_148).
throw(m_close_149, ioexception).

%token_1 - org.apache.commons.csv.Token
assign(f_type_80, f_invalid_133, line(token_1, 52)).
assign(f_content_71, token_1_expr1, line(token_1, 55)).
method_invoc(token_1_expr1, m_string_builder_150, line(token_1, 55)).
argument(f_initial_token_length_157, 1, token_1_expr1).
method_invoc(token_1_expr2, m_set_length_151, line(token_1, 61)).
argument(token_1_literal1, 1, token_1_expr2).
ref(f_content_71, token_1_expr2, line(token_1, 61)).
assign(f_type_80, f_invalid_133, line(token_1, 62)).
assign(f_is_ready_81, token_1_literal2, line(token_1, 63)).

%assertions_1 - org.apache.commons.csv.Assertions
param(p_parameter_1, 1, m_not_null_2).
param(p_parameter_name_2, 2, m_not_null_2).

%csvrecord_1 - org.apache.commons.csv.CSVRecord
assign(f_empty_string_array_85, csvrecord_1_expr1, line(csvrecord_1, 35)).
param(p_values_86, 1, m_csvrecord_80).
param(p_mapping_87, 2, m_csvrecord_80).
param(p_comment_88, 3, m_csvrecord_80).
param(p_record_number_89, 4, m_csvrecord_80).
assign(f_record_number_90, p_record_number_89, line(csvrecord_1, 53)).
assign(f_values_91, csvrecord_1_expr7, line(csvrecord_1, 54)).
cond_expr(csvrecord_1_expr9, p_values_86, f_empty_string_array_85, line(csvrecord_1, 54)).
assign(f_mapping_92, p_mapping_87, line(csvrecord_1, 55)).
assign(f_comment_93, p_comment_88, line(csvrecord_1, 56)).
param(p_e_94, 1, m_get_83).
param(p_i_95, 1, m_get_84).
param(p_name_96, 1, m_get_85).
param(p_name_97, 1, m_is_mapped_89).
param(p_name_98, 1, m_is_set_90).
param(p_map_99, 1, m_put_in_92).
ref(csvrecord_1_expr16, csvrecord_1_stmt5, line(csvrecord_1, 180)).
method_invoc(csvrecord_1_expr16, m_entry_set_93, line(csvrecord_1, 180)).
ref(f_mapping_92, csvrecord_1_expr16, line(csvrecord_1, 180)).
return(csvrecord_1_expr17, m_to_map_96, line(csvrecord_1, 214)).
method_invoc(csvrecord_1_expr17, m_put_in_92, line(csvrecord_1, 214)).
throw(csvrecord_1_expr17, null_pointer_exception, line(csvrecord_1, 214)).
argument(csvrecord_1_expr18, 1, csvrecord_1_expr17).
method_invoc(csvrecord_1_expr18, m_hash_map_97, line(csvrecord_1, 214)).
argument(q_length_2, 1, csvrecord_1_expr18).
ref(f_values_91, q_length_2, line(csvrecord_1, 214)).
throw(csvrecord_1_expr18, null_pointer_exception, line(csvrecord_1, 214)).

%csvrecord_test_1 - org.apache.commons.csv.CSVRecordTest
throw(m_set_up_100, exception).
assign(f_values_102, csvrecord_test_1_expr2, line(csvrecord_test_1, 47)).
assign(f_record_103, csvrecord_test_1_expr5, line(csvrecord_test_1, 48)).
method_invoc(csvrecord_test_1_expr5, m_csvrecord_80, line(csvrecord_test_1, 48)).
argument(f_values_102, 1, csvrecord_test_1_expr5).
argument(csvrecord_test_1_literal4, 2, csvrecord_test_1_expr5).
argument(csvrecord_test_1_literal5, 3, csvrecord_test_1_expr5).
argument(csvrecord_test_1_literal6, 4, csvrecord_test_1_expr5).
assign(f_header_104, csvrecord_test_1_expr7, line(csvrecord_test_1, 49)).
method_invoc(csvrecord_test_1_expr7, m_hash_map_101, line(csvrecord_test_1, 49)).
method_invoc(csvrecord_test_1_expr8, m_put_102, line(csvrecord_test_1, 50)).
argument(csvrecord_test_1_literal7, 1, csvrecord_test_1_expr8).
argument(csvrecord_test_1_expr9, 2, csvrecord_test_1_expr8).
ref(f_header_104, csvrecord_test_1_expr8, line(csvrecord_test_1, 50)).
method_invoc(csvrecord_test_1_expr9, m_value_of_103, line(csvrecord_test_1, 50)).
argument(csvrecord_test_1_literal8, 1, csvrecord_test_1_expr9).
ref(t_integer_8, csvrecord_test_1_expr9, line(csvrecord_test_1, 50)).
method_invoc(csvrecord_test_1_expr10, m_put_102, line(csvrecord_test_1, 51)).
argument(csvrecord_test_1_literal9, 1, csvrecord_test_1_expr10).
argument(csvrecord_test_1_expr11, 2, csvrecord_test_1_expr10).
ref(f_header_104, csvrecord_test_1_expr10, line(csvrecord_test_1, 51)).
method_invoc(csvrecord_test_1_expr11, m_value_of_103, line(csvrecord_test_1, 51)).
argument(csvrecord_test_1_literal10, 1, csvrecord_test_1_expr11).
ref(t_integer_8, csvrecord_test_1_expr11, line(csvrecord_test_1, 51)).
method_invoc(csvrecord_test_1_expr12, m_put_102, line(csvrecord_test_1, 52)).
argument(csvrecord_test_1_literal11, 1, csvrecord_test_1_expr12).
argument(csvrecord_test_1_expr13, 2, csvrecord_test_1_expr12).
ref(f_header_104, csvrecord_test_1_expr12, line(csvrecord_test_1, 52)).
method_invoc(csvrecord_test_1_expr13, m_value_of_103, line(csvrecord_test_1, 52)).
argument(csvrecord_test_1_literal12, 1, csvrecord_test_1_expr13).
ref(t_integer_8, csvrecord_test_1_expr13, line(csvrecord_test_1, 52)).
assign(f_record_with_header_105, csvrecord_test_1_expr15, line(csvrecord_test_1, 53)).
method_invoc(csvrecord_test_1_expr15, m_csvrecord_80, line(csvrecord_test_1, 53)).
argument(f_values_102, 1, csvrecord_test_1_expr15).
argument(f_header_104, 2, csvrecord_test_1_expr15).
argument(csvrecord_test_1_literal13, 3, csvrecord_test_1_expr15).
argument(csvrecord_test_1_literal14, 4, csvrecord_test_1_expr15).
throw(m_test_remove_and_add_columns_117, ioexception).
throw(m_test_to_map_with_short_record_119, exception).
throw(m_test_to_map_with_no_header_120, exception).
assign(v_parser_106, csvrecord_test_1_expr16, line(csvrecord_test_1, 173)).
method_invoc(csvrecord_test_1_expr16, m_parse_49, line(csvrecord_test_1, 173)).
throw(csvrecord_test_1_expr16, ioexception, line(csvrecord_test_1, 173)).
argument(csvrecord_test_1_literal15, 1, csvrecord_test_1_expr16).
argument(csvrecord_test_1_expr17, 2, csvrecord_test_1_expr16).
ref(t_csvparser_5, csvrecord_test_1_expr16, line(csvrecord_test_1, 173)).
method_invoc(csvrecord_test_1_expr17, m_new_format_8, line(csvrecord_test_1, 173)).
argument(csvrecord_test_1_literal16, 1, csvrecord_test_1_expr17).
ref(t_csvformat_9, csvrecord_test_1_expr17, line(csvrecord_test_1, 173)).
assign(v_short_rec_107, csvrecord_test_1_expr18, line(csvrecord_test_1, 174)).
method_invoc(csvrecord_test_1_expr18, m_next_121, line(csvrecord_test_1, 174)).
ref(csvrecord_test_1_expr19, csvrecord_test_1_expr18, line(csvrecord_test_1, 174)).
method_invoc(csvrecord_test_1_expr19, m_iterator_69, line(csvrecord_test_1, 174)).
ref(v_parser_106, csvrecord_test_1_expr19, line(csvrecord_test_1, 174)).
assign(v_map_108, csvrecord_test_1_expr20, line(csvrecord_test_1, 175)).
method_invoc(csvrecord_test_1_expr20, m_to_map_96, line(csvrecord_test_1, 175)).
ref(v_short_rec_107, csvrecord_test_1_expr20, line(csvrecord_test_1, 175)).
param(p_map_109, 1, m_validate_map_122).
param(p_allows_nulls_110, 2, m_validate_map_122).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.csv.CSVRecordTest', 'testToMapWithNoHeader').
trace(trace_1, failure_1, m_put_in_92, line(csvrecord_1, 180), failure_1, target).
trace(trace_2, trace_1, m_to_map_96, line(csvrecord_1, 214), failure_1, target).
trace(trace_3, trace_2, m_test_to_map_with_no_header_120, line(csvrecord_test_1, 175), failure_1, target).
trace(trace_4, trace_3, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_8, trace_7, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_9, trace_8, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_10, trace_9, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_11, trace_10, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_12, trace_11, 'evaluate', line(org_junit_internal_runners_statements_run_befores, 26), failure_1, non_target).
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
trace(trace_26, trace_25, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(f_mapping_92, null, line(csvrecord_1, 180)).



%%% End of Facts