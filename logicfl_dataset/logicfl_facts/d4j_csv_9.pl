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
trace(trace_4, trace_3, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_6, trace_5, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_7, trace_6, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_8, trace_7, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_9, trace_8, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_10, trace_9, 'evaluate', line(org_junit_internal_runners_statements_run_befores, 26), failure_1, non_target).
trace(trace_11, trace_10, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_12, trace_11, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_13, trace_12, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_14, trace_13, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_15, trace_14, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_17, trace_16, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_18, trace_17, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_19, trace_18, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_20, trace_19, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_21, trace_20, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_22, trace_21, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_23, trace_22, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_24, trace_23, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(f_mapping_92, null, line(csvrecord_1, 180)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(csvparser_1, 'org.apache.commons.csv.CSVParser').
class(csvformat_1, 'org.apache.commons.csv.CSVFormat').
class(constants_1, 'org.apache.commons.csv.Constants').
class(quote_1, 'org.apache.commons.csv.Quote').
class(extended_buffered_reader_1, 'org.apache.commons.csv.ExtendedBufferedReader').
class(lexer_1, 'org.apache.commons.csv.Lexer').
class(token_1, 'org.apache.commons.csv.Token').
class(assertions_1, 'org.apache.commons.csv.Assertions').
class(csvrecord_1, 'org.apache.commons.csv.CSVRecord').
class(csvrecord_test_1, 'org.apache.commons.csv.CSVRecordTest').

%%% Methods
%csvparser_1 - org.apache.commons.csv.CSVParser
method(m_parse_48, range(csvparser_1, 4456, 1064, 135, 158)).
method(m_parse_49, range(csvparser_1, 5526, 744, 160, 178)).
method(m_parse_52, range(csvparser_1, 6276, 1085, 180, 206)).
method(m_csvparser_50, range(csvparser_1, 7831, 1096, 224, 249)).
method(m_add_record_value_58, range(csvparser_1, 8933, 345, 251, 259)).
method(m_close_61, range(csvparser_1, 9284, 239, 261, 271)).
method(m_get_current_line_number_62, range(csvparser_1, 9529, 385, 273, 285)).
method(m_get_header_map_63, range(csvparser_1, 9920, 404, 287, 296)).
method(m_get_record_number_64, range(csvparser_1, 10330, 364, 298, 310)).
method(m_get_records_65, range(csvparser_1, 10700, 531, 312, 326)).
method(m_get_records_66, range(csvparser_1, 11237, 770, 328, 349)).
method(m_initialize_header_57, range(csvparser_1, 12013, 1539, 351, 389)).
method(m_is_closed_67, range(csvparser_1, 13558, 71, 391, 393)).
method(m_iterator_69, range(csvparser_1, 13635, 1789, 395, 449)).
method(m_get_next_record_71, range(csvparser_1, 14036, 314, 407, 414)).
method(m_has_next_73, range(csvparser_1, 14364, 306, 416, 425)).
method(m_next_74, range(csvparser_1, 14684, 614, 427, 443)).
method(m_remove_75, range(csvparser_1, 15312, 95, 445, 447)).
method(m_next_record_72, range(csvparser_1, 15430, 1959, 451, 500)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
method(m_is_line_break_5, range(csvformat_1, 7545, 312, 234, 244)).
method(m_is_line_break_6, range(csvformat_1, 7863, 366, 246, 256)).
method(m_new_format_8, range(csvformat_1, 8235, 481, 258, 268)).
method(m_csvformat_3, range(csvformat_1, 8722, 2567, 270, 325)).
method(m_equals_9, range(csvformat_1, 11295, 1978, 327, 394)).
method(m_format_10, range(csvformat_1, 13279, 546, 396, 412)).
method(m_get_comment_start_11, range(csvformat_1, 13831, 221, 414, 421)).
method(m_get_delimiter_12, range(csvformat_1, 14058, 203, 423, 430)).
method(m_get_escape_13, range(csvformat_1, 14267, 176, 432, 439)).
method(m_get_header_14, range(csvformat_1, 14449, 269, 441, 448)).
method(m_get_ignore_empty_lines_16, range(csvformat_1, 14724, 327, 450, 458)).
method(m_get_ignore_surrounding_spaces_17, range(csvformat_1, 15057, 330, 460, 468)).
method(m_get_null_string_18, range(csvformat_1, 15393, 556, 470, 485)).
method(m_get_quote_char_19, range(csvformat_1, 15955, 235, 487, 494)).
method(m_get_quote_policy_20, range(csvformat_1, 16196, 167, 496, 503)).
method(m_get_record_separator_21, range(csvformat_1, 16369, 192, 505, 512)).
method(m_get_skip_header_record_22, range(csvformat_1, 16567, 200, 514, 521)).
method(m_hash_code_23, range(csvformat_1, 16773, 962, 523, 541)).
method(m_is_commenting_enabled_24, range(csvformat_1, 17741, 349, 543, 552)).
method(m_is_escaping_25, range(csvformat_1, 18096, 193, 554, 561)).
method(m_is_null_handling_26, range(csvformat_1, 18295, 206, 563, 570)).
method(m_is_quoting_27, range(csvformat_1, 18507, 198, 572, 579)).
method(m_parse_28, range(csvformat_1, 18711, 449, 581, 596)).
method(m_to_string_29, range(csvformat_1, 19166, 1300, 598, 634)).
method(m_validate_30, range(csvformat_1, 20472, 1548, 636, 671)).
method(m_with_comment_start_32, range(csvformat_1, 22026, 626, 673, 686)).
method(m_with_comment_start_33, range(csvformat_1, 22658, 948, 688, 705)).
method(m_with_delimiter_34, range(csvformat_1, 23612, 758, 707, 722)).
method(m_with_escape_35, range(csvformat_1, 24376, 484, 724, 735)).
method(m_with_escape_36, range(csvformat_1, 24866, 806, 737, 752)).
method(m_with_header_38, range(csvformat_1, 25678, 905, 754, 774)).
method(m_with_ignore_empty_lines_4, range(csvformat_1, 26589, 687, 776, 787)).
method(m_with_ignore_surrounding_spaces_39, range(csvformat_1, 27282, 646, 789, 800)).
method(m_with_null_string_40, range(csvformat_1, 27934, 902, 802, 820)).
method(m_with_quote_char_41, range(csvformat_1, 28842, 485, 822, 833)).
method(m_with_quote_char_42, range(csvformat_1, 29333, 796, 835, 850)).
method(m_with_quote_policy_43, range(csvformat_1, 30135, 539, 852, 863)).
method(m_with_record_separator_44, range(csvformat_1, 30680, 438, 865, 875)).
method(m_with_record_separator_45, range(csvformat_1, 31124, 569, 877, 888)).
method(m_with_skip_header_record_47, range(csvformat_1, 31699, 580, 890, 902)).
%constants_1 - org.apache.commons.csv.Constants
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
method(m_extended_buffered_reader_56, range(extended_buffered_reader_1, 1632, 156, 47, 52)).
method(m_read_124, range(extended_buffered_reader_1, 1794, 255, 54, 62)).
method(m_get_last_char_126, range(extended_buffered_reader_1, 2055, 555, 64, 74)).
method(m_read_127, range(extended_buffered_reader_1, 2616, 761, 76, 104)).
method(m_read_line_128, range(extended_buffered_reader_1, 3383, 739, 106, 128)).
method(m_look_ahead_129, range(extended_buffered_reader_1, 4128, 483, 130, 145)).
method(m_get_current_line_number_130, range(extended_buffered_reader_1, 4617, 442, 147, 158)).
method(m_is_closed_131, range(extended_buffered_reader_1, 5065, 56, 160, 162)).
method(m_close_132, range(extended_buffered_reader_1, 5127, 347, 164, 176)).
%lexer_1 - org.apache.commons.csv.Lexer
method(m_lexer_55, range(lexer_1, 2291, 581, 60, 69)).
method(m_next_token_78, range(lexer_1, 2878, 3545, 71, 164)).
method(m_parse_simple_token_140, range(lexer_1, 6429, 1923, 166, 217)).
method(m_parse_encapsulated_token_143, range(lexer_1, 8358, 3321, 219, 288)).
method(m_map_null_to_disabled_133, range(lexer_1, 11685, 110, 290, 292)).
method(m_get_current_line_number_144, range(lexer_1, 11801, 182, 294, 301)).
method(m_read_escape_145, range(lexer_1, 12033, 1518, 304, 345)).
method(m_trim_trailing_spaces_146, range(lexer_1, 13557, 311, 347, 355)).
method(m_read_end_of_line_134, range(lexer_1, 13874, 485, 357, 369)).
method(m_is_closed_68, range(lexer_1, 14365, 60, 371, 373)).
method(m_is_whitespace_147, range(lexer_1, 14431, 192, 375, 380)).
method(m_is_start_of_line_137, range(lexer_1, 14629, 338, 382, 390)).
method(m_is_end_of_file_135, range(lexer_1, 14973, 158, 392, 397)).
method(m_is_delimiter_136, range(lexer_1, 15137, 73, 399, 401)).
method(m_is_escape_141, range(lexer_1, 15216, 67, 403, 405)).
method(m_is_quote_char_139, range(lexer_1, 15289, 73, 407, 409)).
method(m_is_comment_start_138, range(lexer_1, 15368, 79, 411, 413)).
method(m_is_meta_char_148, range(lexer_1, 15453, 182, 415, 420)).
method(m_close_149, range(lexer_1, 15641, 180, 422, 430)).
%token_1 - org.apache.commons.csv.Token
method(m_reset_77, range(token_1, 1883, 99, 60, 64)).
method(m_to_string_152, range(token_1, 1988, 206, 66, 74)).
%assertions_1 - org.apache.commons.csv.Assertions
method(m_assertions_1, range(assertions_1, 943, 63, 27, 29)).
method(m_not_null_2, range(assertions_1, 1012, 232, 31, 35)).
%csvrecord_1 - org.apache.commons.csv.CSVRecord
method(m_csvrecord_80, range(csvrecord_1, 1603, 309, 51, 57)).
method(m_get_83, range(csvrecord_1, 1918, 232, 59, 68)).
method(m_get_84, range(csvrecord_1, 2156, 224, 70, 79)).
method(m_get_85, range(csvrecord_1, 2386, 1325, 81, 111)).
method(m_get_comment_86, range(csvrecord_1, 3717, 244, 113, 121)).
method(m_get_record_number_87, range(csvrecord_1, 3967, 196, 123, 130)).
method(m_is_consistent_88, range(csvrecord_1, 4169, 416, 132, 140)).
method(m_is_mapped_89, range(csvrecord_1, 4591, 354, 142, 151)).
method(m_is_set_90, range(csvrecord_1, 4951, 356, 153, 162)).
method(m_iterator_91, range(csvrecord_1, 5313, 219, 164, 171)).
method(m_put_in_92, range(csvrecord_1, 5538, 476, 173, 187)).
method(m_size_94, range(csvrecord_1, 6020, 167, 189, 196)).
method(m_to_list_95, range(csvrecord_1, 6193, 199, 198, 206)).
method(m_to_map_96, range(csvrecord_1, 6398, 273, 208, 215)).
method(m_to_string_98, range(csvrecord_1, 6677, 86, 217, 220)).
method(m_values_99, range(csvrecord_1, 6769, 48, 222, 224)).
%csvrecord_test_1 - org.apache.commons.csv.CSVRecordTest
method(m_set_up_100, range(csvrecord_test_1, 1542, 424, 45, 54)).
method(m_test_get_int_104, range(csvrecord_test_1, 1972, 186, 56, 61)).
method(m_test_get_string_105, range(csvrecord_test_1, 2164, 238, 63, 68)).
method(m_test_get_string_inconsistent_record_106, range(csvrecord_test_1, 2408, 196, 70, 74)).
method(m_test_get_string_no_header_107, range(csvrecord_test_1, 2610, 122, 76, 79)).
method(m_test_get_unmapped_enum_108, range(csvrecord_test_1, 2738, 164, 81, 84)).
method(m_test_get_unmapped_name_109, range(csvrecord_test_1, 2908, 146, 86, 89)).
method(m_test_get_unmapped_negative_int_110, range(csvrecord_test_1, 3060, 168, 91, 94)).
method(m_test_get_unmapped_positive_int_111, range(csvrecord_test_1, 3234, 168, 96, 99)).
method(m_test_is_consistent_112, range(csvrecord_test_1, 3408, 249, 101, 108)).
method(m_test_is_mapped_113, range(csvrecord_test_1, 3663, 205, 110, 115)).
method(m_test_is_set_114, range(csvrecord_test_1, 3874, 193, 117, 122)).
method(m_test_iterator_115, range(csvrecord_test_1, 4073, 178, 124, 131)).
method(m_test_put_in_map_116, range(csvrecord_test_1, 4257, 425, 133, 141)).
method(m_test_remove_and_add_columns_117, range(csvrecord_test_1, 4688, 622, 143, 156)).
method(m_test_to_map_118, range(csvrecord_test_1, 5316, 149, 158, 162)).
method(m_test_to_map_with_short_record_119, range(csvrecord_test_1, 5471, 260, 164, 169)).
method(m_test_to_map_with_no_header_120, range(csvrecord_test_1, 5737, 362, 171, 178)).
method(m_validate_map_122, range(csvrecord_test_1, 6109, 545, 180, 192)).

%%% Blocks
%csvparser_1 - org.apache.commons.csv.CSVParser
block(csvparser_1_block1, block, csvparser_1_code3, body, range(csvparser_1, 6106, 164, 173, 178)).
block(csvparser_1_block2, block, csvparser_1_code22, body, range(csvparser_1, 8644, 283, 241, 249)).
block(csvparser_1_block3, block, csvparser_1_code33, body, range(csvparser_1, 8963, 315, 251, 259)).
block(csvparser_1_block4, block, csvparser_1_stmt12, then_statement, range(csvparser_1, 9128, 47, 254, 256)).
block(csvparser_1_block5, block, csvparser_1_code40, body, range(csvparser_1, 12326, 1226, 357, 389)).
block(csvparser_1_block6, block, csvparser_1_stmt16, then_statement, range(csvparser_1, 12469, 1054, 360, 387)).
block(csvparser_1_block7, block, csvparser_1_code51, body, range(csvparser_1, 13584, 45, 391, 393)).
block(csvparser_1_block8, block, csvparser_1_code52, body, range(csvparser_1, 13939, 1485, 403, 449)).
block(csvparser_1_block9, block, csvparser_1_code57, body, range(csvparser_1, 14070, 280, 407, 414)).
block(csvparser_1_block10, block, csvparser_1_stmt20, body, range(csvparser_1, 14092, 75, 408, 410)).
block(csvparser_1_block11, block, csvparser_1_code58, body, range(csvparser_1, 14708, 590, 427, 443)).
block(csvparser_1_block12, block, csvparser_1_stmt22, then_statement, range(csvparser_1, 14757, 102, 428, 430)).
block(csvparser_1_block13, block, csvparser_1_stmt25, then_statement, range(csvparser_1, 14979, 275, 434, 440)).
block(csvparser_1_block14, block, csvparser_1_stmt27, then_statement, range(csvparser_1, 15122, 114, 437, 439)).
block(csvparser_1_block15, block, csvparser_1_code61, body, range(csvparser_1, 15754, 1635, 458, 500)).
block(csvparser_1_block16, block, csvparser_1_stmt32, body, range(csvparser_1, 15862, 1151, 462, 491)).
block(csvparser_1_block17, block, csvparser_1_stmt38, then_statement, range(csvparser_1, 16250, 62, 473, 475)).
block(csvparser_1_block18, block, csvparser_1_stmt40, then_statement, range(csvparser_1, 17093, 267, 493, 498)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
block(csvformat_1_block1, block, csvformat_1_code34, body, range(csvformat_1, 7815, 42, 242, 244)).
block(csvformat_1_block2, block, csvformat_1_code35, body, range(csvformat_1, 8166, 63, 254, 256)).
block(csvformat_1_block3, block, csvformat_1_code36, body, range(csvformat_1, 8605, 111, 266, 268)).
block(csvformat_1_block4, block, csvformat_1_code38, body, range(csvformat_1, 10268, 1021, 300, 325)).
block(csvformat_1_block5, block, csvformat_1_stmt4, then_statement, range(csvformat_1, 10306, 99, 301, 303)).
block(csvformat_1_block6, block, csvformat_1_stmt14, then_statement, range(csvformat_1, 10818, 43, 313, 315)).
block(csvformat_1_block7, block, csvformat_1_code50, body, range(csvformat_1, 14016, 36, 419, 421)).
block(csvformat_1_block8, block, csvformat_1_code51, body, range(csvformat_1, 14228, 33, 428, 430)).
block(csvformat_1_block9, block, csvformat_1_code52, body, range(csvformat_1, 14413, 30, 437, 439)).
block(csvformat_1_block10, block, csvformat_1_code53, body, range(csvformat_1, 14656, 62, 446, 448)).
block(csvformat_1_block11, block, csvformat_1_code54, body, range(csvformat_1, 15011, 40, 456, 458)).
block(csvformat_1_block12, block, csvformat_1_code55, body, range(csvformat_1, 15340, 47, 466, 468)).
block(csvformat_1_block13, block, csvformat_1_code56, body, range(csvformat_1, 15915, 34, 483, 485)).
block(csvformat_1_block14, block, csvformat_1_code57, body, range(csvformat_1, 16157, 33, 492, 494)).
block(csvformat_1_block15, block, csvformat_1_code58, body, range(csvformat_1, 20677, 1343, 641, 671)).
block(csvformat_1_block16, block, csvformat_1_stmt25, then_statement, range(csvformat_1, 20748, 163, 642, 645)).
block(csvformat_1_block17, block, csvformat_1_stmt26, then_statement, range(csvformat_1, 20976, 157, 647, 650)).
block(csvformat_1_block18, block, csvformat_1_stmt27, then_statement, range(csvformat_1, 21210, 170, 652, 655)).
block(csvformat_1_block19, block, csvformat_1_stmt28, then_statement, range(csvformat_1, 21447, 170, 657, 660)).
block(csvformat_1_block20, block, csvformat_1_stmt29, then_statement, range(csvformat_1, 21678, 167, 662, 665)).
block(csvformat_1_block21, block, csvformat_1_stmt30, then_statement, range(csvformat_1, 21904, 109, 667, 669)).
block(csvformat_1_block22, block, csvformat_1_code59, body, range(csvformat_1, 24026, 344, 716, 722)).
block(csvformat_1_block23, block, csvformat_1_stmt31, then_statement, range(csvformat_1, 24064, 99, 717, 719)).
block(csvformat_1_block24, block, csvformat_1_code61, body, range(csvformat_1, 24799, 61, 733, 735)).
block(csvformat_1_block25, block, csvformat_1_code62, body, range(csvformat_1, 25324, 348, 746, 752)).
block(csvformat_1_block26, block, csvformat_1_stmt34, then_statement, range(csvformat_1, 25359, 106, 747, 749)).
block(csvformat_1_block27, block, csvformat_1_code64, body, range(csvformat_1, 27068, 208, 784, 787)).
block(csvformat_1_block28, block, csvformat_1_code66, body, range(csvformat_1, 27720, 208, 797, 800)).
block(csvformat_1_block29, block, csvformat_1_code68, body, range(csvformat_1, 29785, 344, 844, 850)).
block(csvformat_1_block30, block, csvformat_1_stmt38, then_statement, range(csvformat_1, 29823, 99, 845, 847)).
block(csvformat_1_block31, block, csvformat_1_code70, body, range(csvformat_1, 31042, 76, 873, 875)).
block(csvformat_1_block32, block, csvformat_1_code71, body, range(csvformat_1, 31485, 208, 885, 888)).
%constants_1 - org.apache.commons.csv.Constants
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
block(extended_buffered_reader_1_block1, block, extended_buffered_reader_1_code11, body, range(extended_buffered_reader_1, 1758, 30, 50, 52)).
block(extended_buffered_reader_1_block2, block, extended_buffered_reader_1_code12, body, range(extended_buffered_reader_1, 1845, 204, 55, 62)).
block(extended_buffered_reader_1_block3, block, extended_buffered_reader_1_stmt3, then_statement, range(extended_buffered_reader_1, 1953, 37, 57, 59)).
block(extended_buffered_reader_1_block4, block, extended_buffered_reader_1_code16, body, range(extended_buffered_reader_1, 2578, 32, 72, 74)).
block(extended_buffered_reader_1_block5, block, extended_buffered_reader_1_code17, body, range(extended_buffered_reader_1, 5091, 30, 160, 162)).
%lexer_1 - org.apache.commons.csv.Lexer
block(lexer_1_block1, block, lexer_1_code3, body, range(lexer_1, 2448, 424, 61, 69)).
block(lexer_1_block2, block, lexer_1_code10, body, range(lexer_1, 3318, 3105, 82, 164)).
block(lexer_1_block3, block, lexer_1_stmt11, then_statement, range(lexer_1, 3837, 505, 96, 109)).
block(lexer_1_block4, block, lexer_1_stmt12, then_statement, range(lexer_1, 4493, 130, 112, 116)).
block(lexer_1_block5, block, lexer_1_stmt13, then_statement, range(lexer_1, 4683, 390, 118, 129)).
block(lexer_1_block6, block, lexer_1_stmt14, body, range(lexer_1, 5188, 1207, 132, 162)).
block(lexer_1_block7, block, lexer_1_stmt15, then_statement, range(lexer_1, 5289, 166, 134, 139)).
block(lexer_1_block8, block, lexer_1_stmt16, then_statement, range(lexer_1, 5555, 99, 142, 145)).
block(lexer_1_block9, block, lexer_1_stmt17, then_statement, range(lexer_1, 5669, 156, 145, 149)).
block(lexer_1_block10, block, lexer_1_stmt18, then_statement, range(lexer_1, 5851, 108, 149, 152)).
block(lexer_1_block11, block, lexer_1_stmt19, then_statement, range(lexer_1, 5985, 206, 152, 157)).
block(lexer_1_block12, block, lexer_1_stmt19, else_statement, range(lexer_1, 6197, 188, 157, 161)).
block(lexer_1_block13, block, lexer_1_code17, body, range(lexer_1, 7199, 1153, 185, 217)).
block(lexer_1_block14, block, lexer_1_stmt22, body, range(lexer_1, 7299, 927, 187, 210)).
block(lexer_1_block15, block, lexer_1_stmt23, then_statement, range(lexer_1, 7336, 77, 188, 191)).
block(lexer_1_block16, block, lexer_1_stmt24, then_statement, range(lexer_1, 7440, 134, 191, 195)).
block(lexer_1_block17, block, lexer_1_stmt28, then_statement, range(lexer_1, 7601, 74, 195, 198)).
block(lexer_1_block18, block, lexer_1_stmt31, then_statement, range(lexer_1, 7699, 399, 198, 206)).
block(lexer_1_block19, block, lexer_1_stmt31, else_statement, range(lexer_1, 8104, 112, 206, 209)).
block(lexer_1_block20, block, lexer_1_stmt34, then_statement, range(lexer_1, 8265, 58, 212, 214)).
block(lexer_1_block21, block, lexer_1_code19, body, range(lexer_1, 11735, 60, 290, 292)).
block(lexer_1_block22, block, lexer_1_code20, body, range(lexer_1, 14121, 238, 362, 369)).
block(lexer_1_block23, block, lexer_1_stmt37, then_statement, range(lexer_1, 14209, 107, 364, 367)).
block(lexer_1_block24, block, lexer_1_code21, body, range(lexer_1, 14384, 41, 371, 373)).
block(lexer_1_block25, block, lexer_1_code22, body, range(lexer_1, 14904, 63, 388, 390)).
block(lexer_1_block26, block, lexer_1_code23, body, range(lexer_1, 15088, 43, 395, 397)).
block(lexer_1_block27, block, lexer_1_code24, body, range(lexer_1, 15171, 39, 399, 401)).
block(lexer_1_block28, block, lexer_1_code25, body, range(lexer_1, 15247, 36, 403, 405)).
block(lexer_1_block29, block, lexer_1_code26, body, range(lexer_1, 15323, 39, 407, 409)).
block(lexer_1_block30, block, lexer_1_code27, body, range(lexer_1, 15405, 42, 411, 413)).
%token_1 - org.apache.commons.csv.Token
block(token_1_block1, block, token_1_code18, body, range(token_1, 1896, 86, 60, 64)).
%assertions_1 - org.apache.commons.csv.Assertions
block(assertions_1_block1, block, assertions_1_code3, body, range(assertions_1, 1091, 153, 31, 35)).
block(assertions_1_block2, block, assertions_1_stmt1, then_statement, range(assertions_1, 1124, 114, 32, 34)).
%csvrecord_1 - org.apache.commons.csv.CSVRecord
block(csvrecord_1_block1, block, csvrecord_1_code14, body, range(csvrecord_1, 1731, 181, 52, 57)).
block(csvrecord_1_block2, block, csvrecord_1_code21, body, range(csvrecord_1, 5741, 273, 179, 187)).
block(csvrecord_1_block3, block, csvrecord_1_stmt5, body, range(csvrecord_1, 5813, 175, 180, 185)).
block(csvrecord_1_block4, block, csvrecord_1_code28, body, range(csvrecord_1, 6598, 73, 213, 215)).
%csvrecord_test_1 - org.apache.commons.csv.CSVRecordTest
block(csvrecord_test_1_block1, block, csvrecord_test_1_code7, body, range(csvrecord_test_1, 1591, 375, 46, 54)).
block(csvrecord_test_1_block2, block, csvrecord_test_1_code17, body, range(csvrecord_test_1, 5800, 299, 172, 178)).

%%% Statements
%csvparser_1 - org.apache.commons.csv.CSVParser
stmt(csvparser_1_stmt1, expression_statement, csvparser_1_block1, (statements, 0), range(csvparser_1, 6116, 37, 174, 174)).
stmt(csvparser_1_stmt2, expression_statement, csvparser_1_block1, (statements, 1), range(csvparser_1, 6162, 37, 175, 175)).
stmt(csvparser_1_stmt3, return_statement, csvparser_1_block1, (statements, 2), range(csvparser_1, 6209, 55, 177, 177)).
stmt(csvparser_1_stmt4, expression_statement, csvparser_1_block2, (statements, 0), range(csvparser_1, 8654, 37, 242, 242)).
stmt(csvparser_1_stmt5, expression_statement, csvparser_1_block2, (statements, 1), range(csvparser_1, 8700, 37, 243, 243)).
stmt(csvparser_1_stmt6, expression_statement, csvparser_1_block2, (statements, 2), range(csvparser_1, 8747, 18, 245, 245)).
stmt(csvparser_1_stmt7, expression_statement, csvparser_1_block2, (statements, 3), range(csvparser_1, 8774, 21, 246, 246)).
stmt(csvparser_1_stmt8, expression_statement, csvparser_1_block2, (statements, 4), range(csvparser_1, 8804, 67, 247, 247)).
stmt(csvparser_1_stmt9, expression_statement, csvparser_1_block2, (statements, 5), range(csvparser_1, 8880, 41, 248, 248)).
stmt(csvparser_1_stmt10, variable_declaration_statement, csvparser_1_block3, (statements, 0), range(csvparser_1, 8973, 59, 252, 252)).
stmt(csvparser_1_stmt11, variable_declaration_statement, csvparser_1_block3, (statements, 1), range(csvparser_1, 9041, 54, 253, 253)).
stmt(csvparser_1_stmt12, if_statement, csvparser_1_block3, (statements, 2), range(csvparser_1, 9104, 168, 254, 258)).
stmt(csvparser_1_stmt13, expression_statement, csvparser_1_block4, (statements, 0), range(csvparser_1, 9142, 23, 255, 255)).
stmt(csvparser_1_stmt14, variable_declaration_statement, csvparser_1_block5, (statements, 0), range(csvparser_1, 12336, 35, 358, 358)).
stmt(csvparser_1_stmt15, variable_declaration_statement, csvparser_1_block5, (statements, 1), range(csvparser_1, 12380, 54, 359, 359)).
stmt(csvparser_1_stmt16, if_statement, csvparser_1_block5, (statements, 2), range(csvparser_1, 12443, 1080, 360, 387)).
stmt(csvparser_1_stmt17, return_statement, csvparser_1_block5, (statements, 3), range(csvparser_1, 13532, 14, 388, 388)).
stmt(csvparser_1_stmt18, return_statement, csvparser_1_block7, (statements, 0), range(csvparser_1, 13594, 29, 392, 392)).
stmt(csvparser_1_stmt19, return_statement, csvparser_1_block8, (statements, 0), range(csvparser_1, 13949, 1469, 404, 448)).
stmt(csvparser_1_stmt20, try_statement, csvparser_1_block9, (statements, 0), range(csvparser_1, 14088, 248, 408, 413)).
stmt(csvparser_1_stmt21, return_statement, csvparser_1_block10, (statements, 0), range(csvparser_1, 14114, 35, 409, 409)).
stmt(csvparser_1_stmt22, if_statement, csvparser_1_block11, (statements, 0), range(csvparser_1, 14726, 133, 428, 430)).
stmt(csvparser_1_stmt23, variable_declaration_statement, csvparser_1_block11, (statements, 1), range(csvparser_1, 14876, 30, 431, 431)).
stmt(csvparser_1_stmt24, expression_statement, csvparser_1_block11, (statements, 2), range(csvparser_1, 14923, 20, 432, 432)).
stmt(csvparser_1_stmt25, if_statement, csvparser_1_block11, (statements, 3), range(csvparser_1, 14961, 293, 434, 440)).
stmt(csvparser_1_stmt26, expression_statement, csvparser_1_block13, (statements, 0), range(csvparser_1, 15055, 28, 436, 436)).
stmt(csvparser_1_stmt27, if_statement, csvparser_1_block13, (statements, 1), range(csvparser_1, 15104, 132, 437, 439)).
stmt(csvparser_1_stmt28, return_statement, csvparser_1_block11, (statements, 4), range(csvparser_1, 15272, 12, 442, 442)).
stmt(csvparser_1_stmt29, variable_declaration_statement, csvparser_1_block15, (statements, 0), range(csvparser_1, 15764, 24, 459, 459)).
stmt(csvparser_1_stmt30, expression_statement, csvparser_1_block15, (statements, 1), range(csvparser_1, 15797, 20, 460, 460)).
stmt(csvparser_1_stmt31, variable_declaration_statement, csvparser_1_block15, (statements, 2), range(csvparser_1, 15826, 24, 461, 461)).
stmt(csvparser_1_stmt32, do_statement, csvparser_1_block15, (statements, 3), range(csvparser_1, 15859, 1196, 462, 491)).
stmt(csvparser_1_stmt33, expression_statement, csvparser_1_block16, (statements, 0), range(csvparser_1, 15876, 27, 463, 463)).
stmt(csvparser_1_stmt34, expression_statement, csvparser_1_block16, (statements, 1), range(csvparser_1, 15916, 41, 464, 464)).
stmt(csvparser_1_stmt35, switch_statement, csvparser_1_block16, (statements, 2), range(csvparser_1, 15970, 1033, 465, 490)).
stmt(csvparser_1_stmt36, expression_statement, csvparser_1_stmt35, (statements, 1), range(csvparser_1, 16045, 22, 467, 467)).
stmt(csvparser_1_stmt37, break_statement, csvparser_1_stmt35, (statements, 2), range(csvparser_1, 16084, 6, 468, 468)).
stmt(csvparser_1_stmt38, if_statement, csvparser_1_stmt35, (statements, 7), range(csvparser_1, 16218, 94, 473, 475)).
stmt(csvparser_1_stmt39, expression_statement, csvparser_1_block17, (statements, 0), range(csvparser_1, 16272, 22, 474, 474)).
stmt(csvparser_1_stmt40, if_statement, csvparser_1_block15, (statements, 4), range(csvparser_1, 17065, 295, 493, 498)).
stmt(csvparser_1_stmt41, expression_statement, csvparser_1_block18, (statements, 0), range(csvparser_1, 17107, 20, 494, 494)).
stmt(csvparser_1_stmt42, variable_declaration_statement, csvparser_1_block18, (statements, 1), range(csvparser_1, 17140, 57, 495, 495)).
stmt(csvparser_1_stmt43, expression_statement, csvparser_1_block18, (statements, 2), range(csvparser_1, 17210, 140, 496, 497)).
stmt(csvparser_1_stmt44, return_statement, csvparser_1_block15, (statements, 5), range(csvparser_1, 17369, 14, 499, 499)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
stmt(csvformat_1_stmt1, return_statement, csvformat_1_block1, (statements, 0), range(csvformat_1, 7825, 26, 243, 243)).
stmt(csvformat_1_stmt2, return_statement, csvformat_1_block2, (statements, 0), range(csvformat_1, 8176, 47, 255, 255)).
stmt(csvformat_1_stmt3, return_statement, csvformat_1_block3, (statements, 0), range(csvformat_1, 8615, 95, 267, 267)).
stmt(csvformat_1_stmt4, if_statement, csvformat_1_block4, (statements, 0), range(csvformat_1, 10278, 127, 301, 303)).
stmt(csvformat_1_stmt5, expression_statement, csvformat_1_block4, (statements, 1), range(csvformat_1, 10414, 27, 304, 304)).
stmt(csvformat_1_stmt6, expression_statement, csvformat_1_block4, (statements, 2), range(csvformat_1, 10450, 27, 305, 305)).
stmt(csvformat_1_stmt7, expression_statement, csvformat_1_block4, (statements, 3), range(csvformat_1, 10486, 31, 306, 306)).
stmt(csvformat_1_stmt8, expression_statement, csvformat_1_block4, (statements, 4), range(csvformat_1, 10526, 33, 307, 307)).
stmt(csvformat_1_stmt9, expression_statement, csvformat_1_block4, (statements, 5), range(csvformat_1, 10568, 21, 308, 308)).
stmt(csvformat_1_stmt10, expression_statement, csvformat_1_block4, (statements, 6), range(csvformat_1, 10598, 55, 309, 309)).
stmt(csvformat_1_stmt11, expression_statement, csvformat_1_block4, (statements, 7), range(csvformat_1, 10662, 41, 310, 310)).
stmt(csvformat_1_stmt12, expression_statement, csvformat_1_block4, (statements, 8), range(csvformat_1, 10712, 39, 311, 311)).
stmt(csvformat_1_stmt13, expression_statement, csvformat_1_block4, (statements, 9), range(csvformat_1, 10760, 29, 312, 312)).
stmt(csvformat_1_stmt14, if_statement, csvformat_1_block4, (statements, 10), range(csvformat_1, 10798, 435, 313, 323)).
stmt(csvformat_1_stmt15, expression_statement, csvformat_1_block6, (statements, 0), range(csvformat_1, 10832, 19, 314, 314)).
stmt(csvformat_1_stmt16, expression_statement, csvformat_1_block4, (statements, 11), range(csvformat_1, 11242, 41, 324, 324)).
stmt(csvformat_1_stmt17, return_statement, csvformat_1_block7, (statements, 0), range(csvformat_1, 14026, 20, 420, 420)).
stmt(csvformat_1_stmt18, return_statement, csvformat_1_block8, (statements, 0), range(csvformat_1, 14238, 17, 429, 429)).
stmt(csvformat_1_stmt19, return_statement, csvformat_1_block9, (statements, 0), range(csvformat_1, 14423, 14, 438, 438)).
stmt(csvformat_1_stmt20, return_statement, csvformat_1_block10, (statements, 0), range(csvformat_1, 14666, 46, 447, 447)).
stmt(csvformat_1_stmt21, return_statement, csvformat_1_block11, (statements, 0), range(csvformat_1, 15021, 24, 457, 457)).
stmt(csvformat_1_stmt22, return_statement, csvformat_1_block12, (statements, 0), range(csvformat_1, 15350, 31, 467, 467)).
stmt(csvformat_1_stmt23, return_statement, csvformat_1_block13, (statements, 0), range(csvformat_1, 15925, 18, 484, 484)).
stmt(csvformat_1_stmt24, return_statement, csvformat_1_block14, (statements, 0), range(csvformat_1, 16167, 17, 493, 493)).
stmt(csvformat_1_stmt25, if_statement, csvformat_1_block15, (statements, 0), range(csvformat_1, 20687, 224, 642, 645)).
stmt(csvformat_1_stmt26, if_statement, csvformat_1_block15, (statements, 1), range(csvformat_1, 20921, 212, 647, 650)).
stmt(csvformat_1_stmt27, if_statement, csvformat_1_block15, (statements, 2), range(csvformat_1, 21143, 237, 652, 655)).
stmt(csvformat_1_stmt28, if_statement, csvformat_1_block15, (statements, 3), range(csvformat_1, 21390, 227, 657, 660)).
stmt(csvformat_1_stmt29, if_statement, csvformat_1_block15, (statements, 4), range(csvformat_1, 21627, 218, 662, 665)).
stmt(csvformat_1_stmt30, if_statement, csvformat_1_block15, (statements, 5), range(csvformat_1, 21855, 158, 667, 669)).
stmt(csvformat_1_stmt31, if_statement, csvformat_1_block22, (statements, 0), range(csvformat_1, 24036, 127, 717, 719)).
stmt(csvformat_1_stmt32, return_statement, csvformat_1_block22, (statements, 1), range(csvformat_1, 24172, 192, 720, 721)).
stmt(csvformat_1_stmt33, return_statement, csvformat_1_block24, (statements, 0), range(csvformat_1, 24809, 45, 734, 734)).
stmt(csvformat_1_stmt34, if_statement, csvformat_1_block25, (statements, 0), range(csvformat_1, 25334, 131, 747, 749)).
stmt(csvformat_1_stmt35, return_statement, csvformat_1_block25, (statements, 1), range(csvformat_1, 25474, 192, 750, 751)).
stmt(csvformat_1_stmt36, return_statement, csvformat_1_block27, (statements, 0), range(csvformat_1, 27078, 192, 785, 786)).
stmt(csvformat_1_stmt37, return_statement, csvformat_1_block28, (statements, 0), range(csvformat_1, 27730, 192, 798, 799)).
stmt(csvformat_1_stmt38, if_statement, csvformat_1_block29, (statements, 0), range(csvformat_1, 29795, 127, 845, 847)).
stmt(csvformat_1_stmt39, return_statement, csvformat_1_block29, (statements, 1), range(csvformat_1, 29931, 192, 848, 849)).
stmt(csvformat_1_stmt40, return_statement, csvformat_1_block31, (statements, 0), range(csvformat_1, 31052, 60, 874, 874)).
stmt(csvformat_1_stmt41, return_statement, csvformat_1_block32, (statements, 0), range(csvformat_1, 31495, 192, 886, 887)).
%constants_1 - org.apache.commons.csv.Constants
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
stmt(extended_buffered_reader_1_stmt1, super_constructor_invocation, extended_buffered_reader_1_block1, (statements, 0), range(extended_buffered_reader_1, 1768, 14, 51, 51)).
stmt(extended_buffered_reader_1_stmt2, variable_declaration_statement, extended_buffered_reader_1_block2, (statements, 0), range(extended_buffered_reader_1, 1855, 33, 56, 56)).
stmt(extended_buffered_reader_1_stmt3, if_statement, extended_buffered_reader_1_block2, (statements, 1), range(extended_buffered_reader_1, 1897, 93, 57, 59)).
stmt(extended_buffered_reader_1_stmt4, expression_statement, extended_buffered_reader_1_block2, (statements, 2), range(extended_buffered_reader_1, 1999, 19, 60, 60)).
stmt(extended_buffered_reader_1_stmt5, return_statement, extended_buffered_reader_1_block2, (statements, 3), range(extended_buffered_reader_1, 2027, 16, 61, 61)).
stmt(extended_buffered_reader_1_stmt6, return_statement, extended_buffered_reader_1_block4, (statements, 0), range(extended_buffered_reader_1, 2588, 16, 73, 73)).
stmt(extended_buffered_reader_1_stmt7, return_statement, extended_buffered_reader_1_block5, (statements, 0), range(extended_buffered_reader_1, 5101, 14, 161, 161)).
%lexer_1 - org.apache.commons.csv.Lexer
stmt(lexer_1_stmt1, expression_statement, lexer_1_block1, (statements, 0), range(lexer_1, 2458, 21, 62, 62)).
stmt(lexer_1_stmt2, expression_statement, lexer_1_block1, (statements, 1), range(lexer_1, 2488, 39, 63, 63)).
stmt(lexer_1_stmt3, expression_statement, lexer_1_block1, (statements, 2), range(lexer_1, 2536, 52, 64, 64)).
stmt(lexer_1_stmt4, expression_statement, lexer_1_block1, (statements, 3), range(lexer_1, 2597, 58, 65, 65)).
stmt(lexer_1_stmt5, expression_statement, lexer_1_block1, (statements, 4), range(lexer_1, 2664, 64, 66, 66)).
stmt(lexer_1_stmt6, expression_statement, lexer_1_block1, (statements, 5), range(lexer_1, 2737, 67, 67, 67)).
stmt(lexer_1_stmt7, expression_statement, lexer_1_block1, (statements, 6), range(lexer_1, 2813, 53, 68, 68)).
stmt(lexer_1_stmt8, variable_declaration_statement, lexer_1_block2, (statements, 0), range(lexer_1, 3399, 36, 85, 85)).
stmt(lexer_1_stmt9, variable_declaration_statement, lexer_1_block2, (statements, 1), range(lexer_1, 3487, 22, 88, 88)).
stmt(lexer_1_stmt10, variable_declaration_statement, lexer_1_block2, (statements, 2), range(lexer_1, 3700, 31, 93, 93)).
stmt(lexer_1_stmt11, if_statement, lexer_1_block2, (statements, 3), range(lexer_1, 3815, 527, 96, 109)).
stmt(lexer_1_stmt12, if_statement, lexer_1_block2, (statements, 4), range(lexer_1, 4420, 203, 112, 116)).
stmt(lexer_1_stmt13, if_statement, lexer_1_block2, (statements, 5), range(lexer_1, 4633, 440, 118, 129)).
stmt(lexer_1_stmt14, while_statement, lexer_1_block2, (statements, 6), range(lexer_1, 5158, 1237, 132, 162)).
stmt(lexer_1_stmt15, if_statement, lexer_1_block6, (statements, 0), range(lexer_1, 5260, 195, 134, 139)).
stmt(lexer_1_stmt16, if_statement, lexer_1_block6, (statements, 1), range(lexer_1, 5535, 850, 142, 161)).
stmt(lexer_1_stmt17, if_statement, lexer_1_stmt16, elseStatement, range(lexer_1, 5660, 725, 145, 161)).
stmt(lexer_1_stmt18, if_statement, lexer_1_stmt17, elseStatement, range(lexer_1, 5831, 554, 149, 161)).
stmt(lexer_1_stmt19, if_statement, lexer_1_stmt18, elseStatement, range(lexer_1, 5965, 420, 152, 161)).
stmt(lexer_1_stmt20, expression_statement, lexer_1_block12, (statements, 0), range(lexer_1, 6344, 27, 160, 160)).
stmt(lexer_1_stmt21, return_statement, lexer_1_block2, (statements, 7), range(lexer_1, 6404, 13, 163, 163)).
stmt(lexer_1_stmt22, while_statement, lexer_1_block13, (statements, 0), range(lexer_1, 7286, 940, 187, 210)).
stmt(lexer_1_stmt23, if_statement, lexer_1_block14, (statements, 0), range(lexer_1, 7313, 903, 188, 209)).
stmt(lexer_1_stmt24, if_statement, lexer_1_stmt23, elseStatement, range(lexer_1, 7419, 797, 191, 209)).
stmt(lexer_1_stmt25, expression_statement, lexer_1_block16, (statements, 0), range(lexer_1, 7458, 17, 192, 192)).
stmt(lexer_1_stmt26, expression_statement, lexer_1_block16, (statements, 1), range(lexer_1, 7492, 21, 193, 193)).
stmt(lexer_1_stmt27, break_statement, lexer_1_block16, (statements, 2), range(lexer_1, 7554, 6, 194, 194)).
stmt(lexer_1_stmt28, if_statement, lexer_1_stmt24, elseStatement, range(lexer_1, 7580, 636, 195, 209)).
stmt(lexer_1_stmt29, expression_statement, lexer_1_block17, (statements, 0), range(lexer_1, 7619, 19, 196, 196)).
stmt(lexer_1_stmt30, break_statement, lexer_1_block17, (statements, 1), range(lexer_1, 7655, 6, 197, 197)).
stmt(lexer_1_stmt31, if_statement, lexer_1_stmt28, elseStatement, range(lexer_1, 7681, 535, 198, 209)).
stmt(lexer_1_stmt32, expression_statement, lexer_1_block19, (statements, 0), range(lexer_1, 8122, 32, 207, 207)).
stmt(lexer_1_stmt33, expression_statement, lexer_1_block19, (statements, 1), range(lexer_1, 8171, 19, 208, 208)).
stmt(lexer_1_stmt34, if_statement, lexer_1_block13, (statements, 1), range(lexer_1, 8236, 87, 212, 214)).
stmt(lexer_1_stmt35, return_statement, lexer_1_block13, (statements, 2), range(lexer_1, 8333, 13, 216, 216)).
stmt(lexer_1_stmt36, return_statement, lexer_1_block21, (statements, 0), range(lexer_1, 11745, 44, 291, 291)).
stmt(lexer_1_stmt37, if_statement, lexer_1_block22, (statements, 0), range(lexer_1, 14167, 149, 364, 367)).
stmt(lexer_1_stmt38, return_statement, lexer_1_block22, (statements, 1), range(lexer_1, 14325, 28, 368, 368)).
stmt(lexer_1_stmt39, return_statement, lexer_1_block24, (statements, 0), range(lexer_1, 14394, 25, 372, 372)).
stmt(lexer_1_stmt40, return_statement, lexer_1_block25, (statements, 0), range(lexer_1, 14914, 47, 389, 389)).
stmt(lexer_1_stmt41, return_statement, lexer_1_block26, (statements, 0), range(lexer_1, 15098, 27, 396, 396)).
stmt(lexer_1_stmt42, return_statement, lexer_1_block27, (statements, 0), range(lexer_1, 15181, 23, 400, 400)).
stmt(lexer_1_stmt43, return_statement, lexer_1_block28, (statements, 0), range(lexer_1, 15257, 20, 404, 404)).
stmt(lexer_1_stmt44, return_statement, lexer_1_block29, (statements, 0), range(lexer_1, 15333, 23, 408, 408)).
stmt(lexer_1_stmt45, return_statement, lexer_1_block30, (statements, 0), range(lexer_1, 15415, 26, 412, 412)).
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
stmt(csvrecord_1_stmt5, enhanced_for_statement, csvrecord_1_block2, (statements, 0), range(csvrecord_1, 5751, 237, 180, 185)).
stmt(csvrecord_1_stmt6, return_statement, csvrecord_1_block4, (statements, 0), range(csvrecord_1, 6608, 57, 214, 214)).
%csvrecord_test_1 - org.apache.commons.csv.CSVRecordTest
stmt(csvrecord_test_1_stmt1, expression_statement, csvrecord_test_1_block1, (statements, 0), range(csvrecord_test_1, 1601, 40, 47, 47)).
stmt(csvrecord_test_1_stmt2, expression_statement, csvrecord_test_1_block1, (statements, 1), range(csvrecord_test_1, 1650, 46, 48, 48)).
stmt(csvrecord_test_1_stmt3, expression_statement, csvrecord_test_1_block1, (statements, 2), range(csvrecord_test_1, 1705, 40, 49, 49)).
stmt(csvrecord_test_1_stmt4, expression_statement, csvrecord_test_1_block1, (statements, 3), range(csvrecord_test_1, 1754, 40, 50, 50)).
stmt(csvrecord_test_1_stmt5, expression_statement, csvrecord_test_1_block1, (statements, 4), range(csvrecord_test_1, 1803, 41, 51, 51)).
stmt(csvrecord_test_1_stmt6, expression_statement, csvrecord_test_1_block1, (statements, 5), range(csvrecord_test_1, 1853, 40, 52, 52)).
stmt(csvrecord_test_1_stmt7, expression_statement, csvrecord_test_1_block1, (statements, 6), range(csvrecord_test_1, 1902, 58, 53, 53)).
stmt(csvrecord_test_1_stmt8, variable_declaration_statement, csvrecord_test_1_block2, (statements, 0), range(csvrecord_test_1, 5809, 75, 173, 173)).
stmt(csvrecord_test_1_stmt9, variable_declaration_statement, csvrecord_test_1_block2, (statements, 1), range(csvrecord_test_1, 5892, 52, 174, 174)).
stmt(csvrecord_test_1_stmt10, variable_declaration_statement, csvrecord_test_1_block2, (statements, 2), range(csvrecord_test_1, 5952, 43, 175, 175)).

%%% Expressions
%csvparser_1 - org.apache.commons.csv.CSVParser
expr(csvparser_1_expr1, method_invocation, csvparser_1_stmt1, expression, range(csvparser_1, 6116, 36, 174, 174), "Assertions.notNull(string,\"string\")").
expr(csvparser_1_expr2, method_invocation, csvparser_1_stmt2, expression, range(csvparser_1, 6162, 36, 175, 175), "Assertions.notNull(format,\"format\")").
expr(csvparser_1_expr3, class_instance_creation, csvparser_1_stmt3, expression, range(csvparser_1, 6216, 47, 177, 177), "new CSVParser(new StringReader(string),format)").
expr(csvparser_1_expr4, class_instance_creation, csvparser_1_expr3, (arguments, 0), range(csvparser_1, 6230, 24, 177, 177), "new StringReader(string)").
expr(csvparser_1_expr5, class_instance_creation, csvparser_1_code12, initializer, range(csvparser_1, 7715, 23, 218, 218), "new ArrayList<String>()").
expr(csvparser_1_expr6, class_instance_creation, csvparser_1_code20, initializer, range(csvparser_1, 7813, 11, 222, 222), "new Token()").
expr(csvparser_1_expr7, method_invocation, csvparser_1_stmt4, expression, range(csvparser_1, 8654, 36, 242, 242), "Assertions.notNull(reader,\"reader\")").
expr(csvparser_1_expr8, method_invocation, csvparser_1_stmt5, expression, range(csvparser_1, 8700, 36, 243, 243), "Assertions.notNull(format,\"format\")").
expr(csvparser_1_expr9, method_invocation, csvparser_1_stmt6, expression, range(csvparser_1, 8747, 17, 245, 245), "format.validate()").
expr(csvparser_1_expr12, this_expression, f_format_67, expression, range(csvparser_1, 8774, 4, 246, 246), "this").
expr(csvparser_1_expr10, assignment, csvparser_1_stmt7, expression, range(csvparser_1, 8774, 20, 246, 246), "this.format=format").
expr(csvparser_1_expr11, field_access, csvparser_1_expr10, left_hand_side, range(csvparser_1, 8774, 11, 246, 246), "this.format").
expr(csvparser_1_expr16, this_expression, f_lexer_68, expression, range(csvparser_1, 8804, 4, 247, 247), "this").
expr(csvparser_1_expr14, field_access, csvparser_1_expr13, left_hand_side, range(csvparser_1, 8804, 10, 247, 247), "this.lexer").
expr(csvparser_1_expr13, assignment, csvparser_1_stmt8, expression, range(csvparser_1, 8804, 66, 247, 247), "this.lexer=new Lexer(format,new ExtendedBufferedReader(reader))").
expr(csvparser_1_expr15, class_instance_creation, csvparser_1_expr13, right_hand_side, range(csvparser_1, 8817, 53, 247, 247), "new Lexer(format,new ExtendedBufferedReader(reader))").
expr(csvparser_1_expr17, class_instance_creation, csvparser_1_expr15, (arguments, 1), range(csvparser_1, 8835, 34, 247, 247), "new ExtendedBufferedReader(reader)").
expr(csvparser_1_expr18, assignment, csvparser_1_stmt9, expression, range(csvparser_1, 8880, 40, 248, 248), "this.headerMap=this.initializeHeader()").
expr(csvparser_1_expr19, field_access, csvparser_1_expr18, left_hand_side, range(csvparser_1, 8880, 14, 248, 248), "this.headerMap").
expr(csvparser_1_expr21, this_expression, f_header_map_69, expression, range(csvparser_1, 8880, 4, 248, 248), "this").
expr(csvparser_1_expr20, method_invocation, csvparser_1_expr18, right_hand_side, range(csvparser_1, 8897, 23, 248, 248), "this.initializeHeader()").
expr(csvparser_1_expr22, this_expression, csvparser_1_expr20, expression, range(csvparser_1, 8897, 4, 248, 248), "this").
expr(csvparser_1_expr25, field_access, csvparser_1_expr24, expression, range(csvparser_1, 8994, 18, 252, 252), "this.reusableToken").
expr(csvparser_1_expr26, this_expression, f_reusable_token_64, expression, range(csvparser_1, 8994, 4, 252, 252), "this").
expr(csvparser_1_expr23, method_invocation, csvparser_1_code36, initializer, range(csvparser_1, 8994, 37, 252, 252), "this.reusableToken.content.toString()").
expr(csvparser_1_expr24, field_access, csvparser_1_expr23, expression, range(csvparser_1, 8994, 26, 252, 252), "this.reusableToken.content").
expr(csvparser_1_expr27, method_invocation, csvparser_1_code39, initializer, range(csvparser_1, 9067, 27, 253, 253), "this.format.getNullString()").
expr(csvparser_1_expr28, field_access, csvparser_1_expr27, expression, range(csvparser_1, 9067, 11, 253, 253), "this.format").
expr(csvparser_1_expr29, this_expression, f_format_67, expression, range(csvparser_1, 9067, 4, 253, 253), "this").
expr(csvparser_1_expr30, infix_expression, csvparser_1_stmt12, expression, range(csvparser_1, 9108, 18, 254, 254), "nullString == null").
expr(csvparser_1_expr31, method_invocation, csvparser_1_stmt13, expression, range(csvparser_1, 9142, 22, 255, 255), "this.record.add(input)").
expr(csvparser_1_expr32, field_access, csvparser_1_expr31, expression, range(csvparser_1, 9142, 11, 255, 255), "this.record").
expr(csvparser_1_expr33, this_expression, f_record_63, expression, range(csvparser_1, 9142, 4, 255, 255), "this").
expr(csvparser_1_expr34, method_invocation, csvparser_1_code50, initializer, range(csvparser_1, 12410, 23, 359, 359), "this.format.getHeader()").
expr(csvparser_1_expr35, field_access, csvparser_1_expr34, expression, range(csvparser_1, 12410, 11, 359, 359), "this.format").
expr(csvparser_1_expr36, this_expression, f_format_67, expression, range(csvparser_1, 12410, 4, 359, 359), "this").
expr(csvparser_1_expr37, infix_expression, csvparser_1_stmt16, expression, range(csvparser_1, 12447, 20, 360, 360), "formatHeader != null").
expr(csvparser_1_expr38, method_invocation, csvparser_1_stmt18, expression, range(csvparser_1, 13601, 21, 392, 392), "this.lexer.isClosed()").
expr(csvparser_1_expr39, field_access, csvparser_1_expr38, expression, range(csvparser_1, 13601, 10, 392, 392), "this.lexer").
expr(csvparser_1_expr40, this_expression, f_lexer_68, expression, range(csvparser_1, 13601, 4, 392, 392), "this").
expr(csvparser_1_expr41, class_instance_creation, csvparser_1_stmt19, expression, range(csvparser_1, 13956, 1461, 404, 448), "new Iterator<CSVRecord>(){\n  private CSVRecord current;\n  private CSVRecord getNextRecord(){\n    try {\n      return CSVParser.this.nextRecord();\n    }\n catch (    final IOException e) {\n      throw new RuntimeException(e);\n    }\n  }\n  public boolean hasNext(){\n    if (CSVParser.this.isClosed()) {\n      return false;\n    }\n    if (this.current == null) {\n      this.current=this.getNextRecord();\n    }\n    return this.current != null;\n  }\n  public CSVRecord next(){\n    if (CSVParser.this.isClosed()) {\n      throw new NoSuchElementException(\"CSVParser has been closed\");\n    }\n    CSVRecord next=this.current;\n    this.current=null;\n    if (next == null) {\n      next=this.getNextRecord();\n      if (next == null) {\n        throw new NoSuchElementException(\"No more CSV records available\");\n      }\n    }\n    return next;\n  }\n  public void remove(){\n    throw new UnsupportedOperationException();\n  }\n}").
expr(csvparser_1_expr42, method_invocation, csvparser_1_stmt21, expression, range(csvparser_1, 14121, 27, 409, 409), "CSVParser.this.nextRecord()").
expr(csvparser_1_expr43, this_expression, csvparser_1_expr42, expression, range(csvparser_1, 14121, 14, 409, 409), "CSVParser.this").
expr(csvparser_1_expr45, this_expression, csvparser_1_expr44, expression, range(csvparser_1, 14730, 14, 428, 428), "CSVParser.this").
expr(csvparser_1_expr44, method_invocation, csvparser_1_stmt22, expression, range(csvparser_1, 14730, 25, 428, 428), "CSVParser.this.isClosed()").
expr(csvparser_1_expr47, this_expression, f_current_77, expression, range(csvparser_1, 14893, 4, 431, 431), "this").
expr(csvparser_1_expr46, field_access, csvparser_1_code60, initializer, range(csvparser_1, 14893, 12, 431, 431), "this.current").
expr(csvparser_1_expr49, field_access, csvparser_1_expr48, left_hand_side, range(csvparser_1, 14923, 12, 432, 432), "this.current").
expr(csvparser_1_expr48, assignment, csvparser_1_stmt24, expression, range(csvparser_1, 14923, 19, 432, 432), "this.current=null").
expr(csvparser_1_expr50, this_expression, f_current_77, expression, range(csvparser_1, 14923, 4, 432, 432), "this").
expr(csvparser_1_expr51, infix_expression, csvparser_1_stmt25, expression, range(csvparser_1, 14965, 12, 434, 434), "next == null").
expr(csvparser_1_expr52, assignment, csvparser_1_stmt26, expression, range(csvparser_1, 15055, 27, 436, 436), "next=this.getNextRecord()").
expr(csvparser_1_expr53, method_invocation, csvparser_1_expr52, right_hand_side, range(csvparser_1, 15062, 20, 436, 436), "this.getNextRecord()").
expr(csvparser_1_expr54, this_expression, csvparser_1_expr53, expression, range(csvparser_1, 15062, 4, 436, 436), "this").
expr(csvparser_1_expr55, infix_expression, csvparser_1_stmt27, expression, range(csvparser_1, 15108, 12, 437, 437), "next == null").
expr(csvparser_1_expr56, method_invocation, csvparser_1_stmt30, expression, range(csvparser_1, 15797, 19, 460, 460), "this.record.clear()").
expr(csvparser_1_expr57, field_access, csvparser_1_expr56, expression, range(csvparser_1, 15797, 11, 460, 460), "this.record").
expr(csvparser_1_expr58, this_expression, f_record_63, expression, range(csvparser_1, 15797, 4, 460, 460), "this").
expr(csvparser_1_expr59, method_invocation, csvparser_1_stmt33, expression, range(csvparser_1, 15876, 26, 463, 463), "this.reusableToken.reset()").
expr(csvparser_1_expr61, this_expression, f_reusable_token_64, expression, range(csvparser_1, 15876, 4, 463, 463), "this").
expr(csvparser_1_expr60, field_access, csvparser_1_expr59, expression, range(csvparser_1, 15876, 18, 463, 463), "this.reusableToken").
expr(csvparser_1_expr64, field_access, csvparser_1_expr62, expression, range(csvparser_1, 15916, 10, 464, 464), "this.lexer").
expr(csvparser_1_expr62, method_invocation, csvparser_1_stmt34, expression, range(csvparser_1, 15916, 40, 464, 464), "this.lexer.nextToken(this.reusableToken)").
expr(csvparser_1_expr65, this_expression, f_lexer_68, expression, range(csvparser_1, 15916, 4, 464, 464), "this").
expr(csvparser_1_expr63, field_access, csvparser_1_expr62, (arguments, 0), range(csvparser_1, 15937, 18, 464, 464), "this.reusableToken").
expr(csvparser_1_expr66, this_expression, f_reusable_token_64, expression, range(csvparser_1, 15937, 4, 464, 464), "this").
expr(csvparser_1_expr69, this_expression, f_reusable_token_64, expression, range(csvparser_1, 15978, 4, 465, 465), "this").
expr(csvparser_1_expr67, field_access, csvparser_1_stmt35, expression, range(csvparser_1, 15978, 23, 465, 465), "this.reusableToken.type").
expr(csvparser_1_expr68, field_access, csvparser_1_expr67, expression, range(csvparser_1, 15978, 18, 465, 465), "this.reusableToken").
expr(csvparser_1_expr70, method_invocation, csvparser_1_stmt36, expression, range(csvparser_1, 16045, 21, 467, 467), "this.addRecordValue()").
expr(csvparser_1_expr71, this_expression, csvparser_1_expr70, expression, range(csvparser_1, 16045, 4, 467, 467), "this").
expr(csvparser_1_expr74, this_expression, f_reusable_token_64, expression, range(csvparser_1, 16222, 4, 473, 473), "this").
expr(csvparser_1_expr72, field_access, csvparser_1_stmt38, expression, range(csvparser_1, 16222, 26, 473, 473), "this.reusableToken.isReady").
expr(csvparser_1_expr73, field_access, csvparser_1_expr72, expression, range(csvparser_1, 16222, 18, 473, 473), "this.reusableToken").
expr(csvparser_1_expr75, method_invocation, csvparser_1_stmt39, expression, range(csvparser_1, 16272, 21, 474, 474), "this.addRecordValue()").
expr(csvparser_1_expr76, this_expression, csvparser_1_expr75, expression, range(csvparser_1, 16272, 4, 474, 474), "this").
expr(csvparser_1_expr78, field_access, csvparser_1_expr77, left_operand, range(csvparser_1, 17021, 23, 491, 491), "this.reusableToken.type").
expr(csvparser_1_expr79, field_access, csvparser_1_expr78, expression, range(csvparser_1, 17021, 18, 491, 491), "this.reusableToken").
expr(csvparser_1_expr77, infix_expression, csvparser_1_stmt32, expression, range(csvparser_1, 17021, 32, 491, 491), "this.reusableToken.type == TOKEN").
expr(csvparser_1_expr80, this_expression, f_reusable_token_64, expression, range(csvparser_1, 17021, 4, 491, 491), "this").
expr(csvparser_1_expr81, prefix_expression, csvparser_1_stmt40, expression, range(csvparser_1, 17069, 22, 493, 493), "!this.record.isEmpty()").
expr(csvparser_1_expr83, field_access, csvparser_1_expr82, expression, range(csvparser_1, 17070, 11, 493, 493), "this.record").
expr(csvparser_1_expr84, this_expression, f_record_63, expression, range(csvparser_1, 17070, 4, 493, 493), "this").
expr(csvparser_1_expr82, method_invocation, csvparser_1_expr81, operand, range(csvparser_1, 17070, 21, 493, 493), "this.record.isEmpty()").
expr(csvparser_1_expr85, postfix_expression, csvparser_1_stmt41, expression, range(csvparser_1, 17107, 19, 494, 494), "this.recordNumber++").
expr(csvparser_1_expr86, field_access, csvparser_1_expr85, operand, range(csvparser_1, 17107, 17, 494, 494), "this.recordNumber").
expr(csvparser_1_expr87, this_expression, f_record_number_83, expression, range(csvparser_1, 17107, 4, 494, 494), "this").
expr(csvparser_1_expr89, infix_expression, csvparser_1_expr88, expression, range(csvparser_1, 17163, 10, 495, 495), "sb == null").
expr(csvparser_1_expr88, conditional_expression, csvparser_1_code68, initializer, range(csvparser_1, 17163, 33, 495, 495), "sb == null ? null : sb.toString()").
expr(csvparser_1_expr90, method_invocation, csvparser_1_expr88, else_expression, range(csvparser_1, 17183, 13, 495, 495), "sb.toString()").
expr(csvparser_1_expr91, assignment, csvparser_1_stmt43, expression, range(csvparser_1, 17210, 139, 496, 497), "result=new CSVRecord(this.record.toArray(new String[this.record.size()]),this.headerMap,comment,this.recordNumber)").
expr(csvparser_1_expr92, class_instance_creation, csvparser_1_expr91, right_hand_side, range(csvparser_1, 17219, 130, 496, 497), "new CSVRecord(this.record.toArray(new String[this.record.size()]),this.headerMap,comment,this.recordNumber)").
expr(csvparser_1_expr97, field_access, csvparser_1_expr93, expression, range(csvparser_1, 17233, 11, 496, 496), "this.record").
expr(csvparser_1_expr98, this_expression, f_record_63, expression, range(csvparser_1, 17233, 4, 496, 496), "this").
expr(csvparser_1_expr93, method_invocation, csvparser_1_expr92, (arguments, 0), range(csvparser_1, 17233, 51, 496, 496), "this.record.toArray(new String[this.record.size()])").
expr(csvparser_1_expr96, array_creation, csvparser_1_expr93, (arguments, 0), range(csvparser_1, 17253, 30, 496, 496), "new String[this.record.size()]").
expr(csvparser_1_expr100, field_access, csvparser_1_expr99, expression, range(csvparser_1, 17264, 11, 496, 496), "this.record").
expr(csvparser_1_expr101, this_expression, f_record_63, expression, range(csvparser_1, 17264, 4, 496, 496), "this").
expr(csvparser_1_expr99, method_invocation, csvparser_1_expr96, (dimensions, 0), range(csvparser_1, 17264, 18, 496, 496), "this.record.size()").
expr(csvparser_1_expr102, this_expression, f_header_map_69, expression, range(csvparser_1, 17286, 4, 496, 496), "this").
expr(csvparser_1_expr94, field_access, csvparser_1_expr92, (arguments, 1), range(csvparser_1, 17286, 14, 496, 496), "this.headerMap").
expr(csvparser_1_expr95, field_access, csvparser_1_expr92, (arguments, 3), range(csvparser_1, 17331, 17, 497, 497), "this.recordNumber").
%csvformat_1 - org.apache.commons.csv.CSVFormat
expr(csvformat_1_expr1, class_instance_creation, csvformat_1_code8, initializer, range(csvformat_1, 5305, 155, 174, 175), "new CSVFormat(COMMA,DOUBLE_QUOTE_CHAR,null,null,null,false,true,CRLF,null,null,false)").
expr(csvformat_1_expr2, method_invocation, csvformat_1_code15, initializer, range(csvformat_1, 5789, 35, 186, 186), "DEFAULT.withIgnoreEmptyLines(false)").
expr(csvformat_1_expr3, method_invocation, csvformat_1_code21, initializer, range(csvformat_1, 6602, 35, 210, 210), "DEFAULT.withIgnoreEmptyLines(false)").
expr(csvformat_1_expr4, method_invocation, csvformat_1_code27, initializer, range(csvformat_1, 6774, 86, 214, 216), "DEFAULT.withDelimiter(TAB).withIgnoreSurroundingSpaces(true)").
expr(csvformat_1_expr5, method_invocation, csvformat_1_code33, initializer, range(csvformat_1, 7353, 185, 227, 232), "DEFAULT.withDelimiter(TAB).withEscape(BACKSLASH).withIgnoreEmptyLines(false).withQuoteChar(null).withRecordSeparator(LF)").
expr(csvformat_1_expr7, infix_expression, csvformat_1_expr6, left_operand, range(csvformat_1, 7832, 7, 243, 243), "c == LF").
expr(csvformat_1_expr6, infix_expression, csvformat_1_stmt1, expression, range(csvformat_1, 7832, 18, 243, 243), "c == LF || c == CR").
expr(csvformat_1_expr8, infix_expression, csvformat_1_expr6, right_operand, range(csvformat_1, 7843, 7, 243, 243), "c == CR").
expr(csvformat_1_expr10, infix_expression, csvformat_1_expr9, left_operand, range(csvformat_1, 8183, 9, 255, 255), "c != null").
expr(csvformat_1_expr9, infix_expression, csvformat_1_stmt2, expression, range(csvformat_1, 8183, 39, 255, 255), "c != null && isLineBreak(c.charValue())").
expr(csvformat_1_expr11, method_invocation, csvformat_1_expr9, right_operand, range(csvformat_1, 8196, 26, 255, 255), "isLineBreak(c.charValue())").
expr(csvformat_1_expr12, method_invocation, csvformat_1_expr11, (arguments, 0), range(csvformat_1, 8208, 13, 255, 255), "c.charValue()").
expr(csvformat_1_expr13, class_instance_creation, csvformat_1_stmt3, expression, range(csvformat_1, 8622, 87, 267, 267), "new CSVFormat(delimiter,null,null,null,null,false,false,null,null,null,false)").
expr(csvformat_1_expr14, method_invocation, csvformat_1_stmt4, expression, range(csvformat_1, 10282, 22, 301, 301), "isLineBreak(delimiter)").
expr(csvformat_1_expr17, this_expression, f_delimiter_27, expression, range(csvformat_1, 10414, 4, 304, 304), "this").
expr(csvformat_1_expr16, field_access, csvformat_1_expr15, left_hand_side, range(csvformat_1, 10414, 14, 304, 304), "this.delimiter").
expr(csvformat_1_expr15, assignment, csvformat_1_stmt5, expression, range(csvformat_1, 10414, 26, 304, 304), "this.delimiter=delimiter").
expr(csvformat_1_expr19, field_access, csvformat_1_expr18, left_hand_side, range(csvformat_1, 10450, 14, 305, 305), "this.quoteChar").
expr(csvformat_1_expr18, assignment, csvformat_1_stmt6, expression, range(csvformat_1, 10450, 26, 305, 305), "this.quoteChar=quoteChar").
expr(csvformat_1_expr20, this_expression, f_quote_char_28, expression, range(csvformat_1, 10450, 4, 305, 305), "this").
expr(csvformat_1_expr23, this_expression, f_quote_policy_29, expression, range(csvformat_1, 10486, 4, 306, 306), "this").
expr(csvformat_1_expr22, field_access, csvformat_1_expr21, left_hand_side, range(csvformat_1, 10486, 16, 306, 306), "this.quotePolicy").
expr(csvformat_1_expr21, assignment, csvformat_1_stmt7, expression, range(csvformat_1, 10486, 30, 306, 306), "this.quotePolicy=quotePolicy").
expr(csvformat_1_expr26, this_expression, f_comment_start_30, expression, range(csvformat_1, 10526, 4, 307, 307), "this").
expr(csvformat_1_expr25, field_access, csvformat_1_expr24, left_hand_side, range(csvformat_1, 10526, 17, 307, 307), "this.commentStart").
expr(csvformat_1_expr24, assignment, csvformat_1_stmt8, expression, range(csvformat_1, 10526, 32, 307, 307), "this.commentStart=commentStart").
expr(csvformat_1_expr29, this_expression, f_escape_31, expression, range(csvformat_1, 10568, 4, 308, 308), "this").
expr(csvformat_1_expr28, field_access, csvformat_1_expr27, left_hand_side, range(csvformat_1, 10568, 11, 308, 308), "this.escape").
expr(csvformat_1_expr27, assignment, csvformat_1_stmt9, expression, range(csvformat_1, 10568, 20, 308, 308), "this.escape=escape").
expr(csvformat_1_expr32, this_expression, f_ignore_surrounding_spaces_32, expression, range(csvformat_1, 10598, 4, 309, 309), "this").
expr(csvformat_1_expr31, field_access, csvformat_1_expr30, left_hand_side, range(csvformat_1, 10598, 28, 309, 309), "this.ignoreSurroundingSpaces").
expr(csvformat_1_expr30, assignment, csvformat_1_stmt10, expression, range(csvformat_1, 10598, 54, 309, 309), "this.ignoreSurroundingSpaces=ignoreSurroundingSpaces").
expr(csvformat_1_expr35, this_expression, f_ignore_empty_lines_33, expression, range(csvformat_1, 10662, 4, 310, 310), "this").
expr(csvformat_1_expr34, field_access, csvformat_1_expr33, left_hand_side, range(csvformat_1, 10662, 21, 310, 310), "this.ignoreEmptyLines").
expr(csvformat_1_expr33, assignment, csvformat_1_stmt11, expression, range(csvformat_1, 10662, 40, 310, 310), "this.ignoreEmptyLines=ignoreEmptyLines").
expr(csvformat_1_expr38, this_expression, f_record_separator_34, expression, range(csvformat_1, 10712, 4, 311, 311), "this").
expr(csvformat_1_expr37, field_access, csvformat_1_expr36, left_hand_side, range(csvformat_1, 10712, 20, 311, 311), "this.recordSeparator").
expr(csvformat_1_expr36, assignment, csvformat_1_stmt12, expression, range(csvformat_1, 10712, 38, 311, 311), "this.recordSeparator=recordSeparator").
expr(csvformat_1_expr41, this_expression, f_null_string_35, expression, range(csvformat_1, 10760, 4, 312, 312), "this").
expr(csvformat_1_expr40, field_access, csvformat_1_expr39, left_hand_side, range(csvformat_1, 10760, 15, 312, 312), "this.nullString").
expr(csvformat_1_expr39, assignment, csvformat_1_stmt13, expression, range(csvformat_1, 10760, 28, 312, 312), "this.nullString=nullString").
expr(csvformat_1_expr42, infix_expression, csvformat_1_stmt14, expression, range(csvformat_1, 10802, 14, 313, 313), "header == null").
expr(csvformat_1_expr45, this_expression, f_header_36, expression, range(csvformat_1, 10832, 4, 314, 314), "this").
expr(csvformat_1_expr44, field_access, csvformat_1_expr43, left_hand_side, range(csvformat_1, 10832, 11, 314, 314), "this.header").
expr(csvformat_1_expr43, assignment, csvformat_1_stmt15, expression, range(csvformat_1, 10832, 18, 314, 314), "this.header=null").
expr(csvformat_1_expr48, this_expression, f_skip_header_record_37, expression, range(csvformat_1, 11242, 4, 324, 324), "this").
expr(csvformat_1_expr47, field_access, csvformat_1_expr46, left_hand_side, range(csvformat_1, 11242, 21, 324, 324), "this.skipHeaderRecord").
expr(csvformat_1_expr46, assignment, csvformat_1_stmt16, expression, range(csvformat_1, 11242, 40, 324, 324), "this.skipHeaderRecord=skipHeaderRecord").
expr(csvformat_1_expr49, conditional_expression, csvformat_1_stmt20, expression, range(csvformat_1, 14673, 38, 447, 447), "header != null ? header.clone() : null").
expr(csvformat_1_expr50, infix_expression, csvformat_1_expr49, expression, range(csvformat_1, 14673, 14, 447, 447), "header != null").
expr(csvformat_1_expr51, method_invocation, csvformat_1_expr49, then_expression, range(csvformat_1, 14690, 14, 447, 447), "header.clone()").
expr(csvformat_1_expr53, infix_expression, csvformat_1_expr52, left_operand, range(csvformat_1, 20691, 17, 642, 642), "quoteChar != null").
expr(csvformat_1_expr52, infix_expression, csvformat_1_stmt25, expression, range(csvformat_1, 20691, 55, 642, 642), "quoteChar != null && delimiter == quoteChar.charValue()").
expr(csvformat_1_expr54, infix_expression, csvformat_1_expr52, right_operand, range(csvformat_1, 20712, 34, 642, 642), "delimiter == quoteChar.charValue()").
expr(csvformat_1_expr55, method_invocation, csvformat_1_expr54, right_operand, range(csvformat_1, 20725, 21, 642, 642), "quoteChar.charValue()").
expr(csvformat_1_expr57, infix_expression, csvformat_1_expr56, left_operand, range(csvformat_1, 20925, 14, 647, 647), "escape != null").
expr(csvformat_1_expr56, infix_expression, csvformat_1_stmt26, expression, range(csvformat_1, 20925, 49, 647, 647), "escape != null && delimiter == escape.charValue()").
expr(csvformat_1_expr58, infix_expression, csvformat_1_expr56, right_operand, range(csvformat_1, 20943, 31, 647, 647), "delimiter == escape.charValue()").
expr(csvformat_1_expr59, method_invocation, csvformat_1_expr58, right_operand, range(csvformat_1, 20956, 18, 647, 647), "escape.charValue()").
expr(csvformat_1_expr60, infix_expression, csvformat_1_stmt27, expression, range(csvformat_1, 21147, 61, 652, 652), "commentStart != null && delimiter == commentStart.charValue()").
expr(csvformat_1_expr61, infix_expression, csvformat_1_expr60, left_operand, range(csvformat_1, 21147, 20, 652, 652), "commentStart != null").
expr(csvformat_1_expr62, infix_expression, csvformat_1_expr60, right_operand, range(csvformat_1, 21171, 37, 652, 652), "delimiter == commentStart.charValue()").
expr(csvformat_1_expr63, method_invocation, csvformat_1_expr62, right_operand, range(csvformat_1, 21184, 24, 652, 652), "commentStart.charValue()").
expr(csvformat_1_expr65, infix_expression, csvformat_1_expr64, left_operand, range(csvformat_1, 21394, 17, 657, 657), "quoteChar != null").
expr(csvformat_1_expr64, infix_expression, csvformat_1_stmt28, expression, range(csvformat_1, 21394, 51, 657, 657), "quoteChar != null && quoteChar.equals(commentStart)").
expr(csvformat_1_expr66, method_invocation, csvformat_1_expr64, right_operand, range(csvformat_1, 21415, 30, 657, 657), "quoteChar.equals(commentStart)").
expr(csvformat_1_expr68, infix_expression, csvformat_1_expr67, left_operand, range(csvformat_1, 21631, 14, 662, 662), "escape != null").
expr(csvformat_1_expr67, infix_expression, csvformat_1_stmt29, expression, range(csvformat_1, 21631, 45, 662, 662), "escape != null && escape.equals(commentStart)").
expr(csvformat_1_expr69, method_invocation, csvformat_1_expr67, right_operand, range(csvformat_1, 21649, 27, 662, 662), "escape.equals(commentStart)").
expr(csvformat_1_expr71, infix_expression, csvformat_1_expr70, left_operand, range(csvformat_1, 21859, 14, 667, 667), "escape == null").
expr(csvformat_1_expr70, infix_expression, csvformat_1_stmt30, expression, range(csvformat_1, 21859, 43, 667, 667), "escape == null && quotePolicy == Quote.NONE").
expr(csvformat_1_expr72, infix_expression, csvformat_1_expr70, right_operand, range(csvformat_1, 21877, 25, 667, 667), "quotePolicy == Quote.NONE").
expr(csvformat_1_expr73, method_invocation, csvformat_1_stmt31, expression, range(csvformat_1, 24040, 22, 717, 717), "isLineBreak(delimiter)").
expr(csvformat_1_expr74, class_instance_creation, csvformat_1_stmt32, expression, range(csvformat_1, 24179, 184, 720, 721), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
expr(csvformat_1_expr75, method_invocation, csvformat_1_stmt33, expression, range(csvformat_1, 24816, 37, 734, 734), "withEscape(Character.valueOf(escape))").
expr(csvformat_1_expr76, method_invocation, csvformat_1_expr75, (arguments, 0), range(csvformat_1, 24827, 25, 734, 734), "Character.valueOf(escape)").
expr(csvformat_1_expr77, method_invocation, csvformat_1_stmt34, expression, range(csvformat_1, 25338, 19, 747, 747), "isLineBreak(escape)").
expr(csvformat_1_expr78, class_instance_creation, csvformat_1_stmt35, expression, range(csvformat_1, 25481, 184, 750, 751), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
expr(csvformat_1_expr79, class_instance_creation, csvformat_1_stmt36, expression, range(csvformat_1, 27085, 184, 785, 786), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
expr(csvformat_1_expr80, class_instance_creation, csvformat_1_stmt37, expression, range(csvformat_1, 27737, 184, 798, 799), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
expr(csvformat_1_expr81, method_invocation, csvformat_1_stmt38, expression, range(csvformat_1, 29799, 22, 845, 845), "isLineBreak(quoteChar)").
expr(csvformat_1_expr82, class_instance_creation, csvformat_1_stmt39, expression, range(csvformat_1, 29938, 184, 848, 849), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
expr(csvformat_1_expr83, method_invocation, csvformat_1_stmt40, expression, range(csvformat_1, 31059, 52, 874, 874), "withRecordSeparator(String.valueOf(recordSeparator))").
expr(csvformat_1_expr84, method_invocation, csvformat_1_expr83, (arguments, 0), range(csvformat_1, 31079, 31, 874, 874), "String.valueOf(recordSeparator)").
expr(csvformat_1_expr85, class_instance_creation, csvformat_1_stmt41, expression, range(csvformat_1, 31502, 184, 886, 887), "new CSVFormat(delimiter,quoteChar,quotePolicy,commentStart,escape,ignoreSurroundingSpaces,ignoreEmptyLines,recordSeparator,nullString,header,skipHeaderRecord)").
%constants_1 - org.apache.commons.csv.Constants
expr(constants_1_expr1, method_invocation, constants_1_code7, initializer, range(constants_1, 1198, 22, 36, 36), "Character.valueOf('\"')").
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
expr(extended_buffered_reader_1_expr9, assignment, extended_buffered_reader_1_stmt4, expression, range(extended_buffered_reader_1, 1999, 18, 60, 60), "lastChar=current").
%lexer_1 - org.apache.commons.csv.Lexer
expr(lexer_1_expr1, assignment, lexer_1_stmt1, expression, range(lexer_1, 2458, 20, 62, 62), "this.reader=reader").
expr(lexer_1_expr2, field_access, lexer_1_expr1, left_hand_side, range(lexer_1, 2458, 11, 62, 62), "this.reader").
expr(lexer_1_expr3, this_expression, f_reader_122, expression, range(lexer_1, 2458, 4, 62, 62), "this").
expr(lexer_1_expr4, assignment, lexer_1_stmt2, expression, range(lexer_1, 2488, 38, 63, 63), "this.delimiter=format.getDelimiter()").
expr(lexer_1_expr5, field_access, lexer_1_expr4, left_hand_side, range(lexer_1, 2488, 14, 63, 63), "this.delimiter").
expr(lexer_1_expr7, this_expression, f_delimiter_123, expression, range(lexer_1, 2488, 4, 63, 63), "this").
expr(lexer_1_expr6, method_invocation, lexer_1_expr4, right_hand_side, range(lexer_1, 2505, 21, 63, 63), "format.getDelimiter()").
expr(lexer_1_expr8, assignment, lexer_1_stmt3, expression, range(lexer_1, 2536, 51, 64, 64), "this.escape=mapNullToDisabled(format.getEscape())").
expr(lexer_1_expr9, field_access, lexer_1_expr8, left_hand_side, range(lexer_1, 2536, 11, 64, 64), "this.escape").
expr(lexer_1_expr11, this_expression, f_escape_124, expression, range(lexer_1, 2536, 4, 64, 64), "this").
expr(lexer_1_expr10, method_invocation, lexer_1_expr8, right_hand_side, range(lexer_1, 2550, 37, 64, 64), "mapNullToDisabled(format.getEscape())").
expr(lexer_1_expr12, method_invocation, lexer_1_expr10, (arguments, 0), range(lexer_1, 2568, 18, 64, 64), "format.getEscape()").
expr(lexer_1_expr16, this_expression, f_quote_char_125, expression, range(lexer_1, 2597, 4, 65, 65), "this").
expr(lexer_1_expr13, assignment, lexer_1_stmt4, expression, range(lexer_1, 2597, 57, 65, 65), "this.quoteChar=mapNullToDisabled(format.getQuoteChar())").
expr(lexer_1_expr14, field_access, lexer_1_expr13, left_hand_side, range(lexer_1, 2597, 14, 65, 65), "this.quoteChar").
expr(lexer_1_expr15, method_invocation, lexer_1_expr13, right_hand_side, range(lexer_1, 2614, 40, 65, 65), "mapNullToDisabled(format.getQuoteChar())").
expr(lexer_1_expr17, method_invocation, lexer_1_expr15, (arguments, 0), range(lexer_1, 2632, 21, 65, 65), "format.getQuoteChar()").
expr(lexer_1_expr21, this_expression, f_comment_start_126, expression, range(lexer_1, 2664, 4, 66, 66), "this").
expr(lexer_1_expr19, field_access, lexer_1_expr18, left_hand_side, range(lexer_1, 2664, 17, 66, 66), "this.commentStart").
expr(lexer_1_expr18, assignment, lexer_1_stmt5, expression, range(lexer_1, 2664, 63, 66, 66), "this.commentStart=mapNullToDisabled(format.getCommentStart())").
expr(lexer_1_expr20, method_invocation, lexer_1_expr18, right_hand_side, range(lexer_1, 2684, 43, 66, 66), "mapNullToDisabled(format.getCommentStart())").
expr(lexer_1_expr22, method_invocation, lexer_1_expr20, (arguments, 0), range(lexer_1, 2702, 24, 66, 66), "format.getCommentStart()").
expr(lexer_1_expr26, this_expression, f_ignore_surrounding_spaces_127, expression, range(lexer_1, 2737, 4, 67, 67), "this").
expr(lexer_1_expr24, field_access, lexer_1_expr23, left_hand_side, range(lexer_1, 2737, 28, 67, 67), "this.ignoreSurroundingSpaces").
expr(lexer_1_expr23, assignment, lexer_1_stmt6, expression, range(lexer_1, 2737, 66, 67, 67), "this.ignoreSurroundingSpaces=format.getIgnoreSurroundingSpaces()").
expr(lexer_1_expr25, method_invocation, lexer_1_expr23, right_hand_side, range(lexer_1, 2768, 35, 67, 67), "format.getIgnoreSurroundingSpaces()").
expr(lexer_1_expr28, field_access, lexer_1_expr27, left_hand_side, range(lexer_1, 2813, 21, 68, 68), "this.ignoreEmptyLines").
expr(lexer_1_expr27, assignment, lexer_1_stmt7, expression, range(lexer_1, 2813, 52, 68, 68), "this.ignoreEmptyLines=format.getIgnoreEmptyLines()").
expr(lexer_1_expr30, this_expression, f_ignore_empty_lines_128, expression, range(lexer_1, 2813, 4, 68, 68), "this").
expr(lexer_1_expr29, method_invocation, lexer_1_expr27, right_hand_side, range(lexer_1, 2837, 28, 68, 68), "format.getIgnoreEmptyLines()").
expr(lexer_1_expr31, method_invocation, lexer_1_code12, initializer, range(lexer_1, 3414, 20, 85, 85), "reader.getLastChar()").
expr(lexer_1_expr32, method_invocation, lexer_1_code14, initializer, range(lexer_1, 3495, 13, 88, 88), "reader.read()").
expr(lexer_1_expr33, method_invocation, lexer_1_code16, initializer, range(lexer_1, 3714, 16, 93, 93), "readEndOfLine(c)").
expr(lexer_1_expr35, method_invocation, lexer_1_expr34, left_operand, range(lexer_1, 4424, 21, 112, 112), "isEndOfFile(lastChar)").
expr(lexer_1_expr34, infix_expression, lexer_1_stmt12, expression, range(lexer_1, 4424, 67, 112, 112), "isEndOfFile(lastChar) || (!isDelimiter(lastChar) && isEndOfFile(c))").
expr(lexer_1_expr36, parenthesized_expression, lexer_1_expr34, right_operand, range(lexer_1, 4449, 42, 112, 112), "(!isDelimiter(lastChar) && isEndOfFile(c))").
expr(lexer_1_expr37, infix_expression, lexer_1_expr36, expression, range(lexer_1, 4450, 40, 112, 112), "!isDelimiter(lastChar) && isEndOfFile(c)").
expr(lexer_1_expr38, prefix_expression, lexer_1_expr37, left_operand, range(lexer_1, 4450, 22, 112, 112), "!isDelimiter(lastChar)").
expr(lexer_1_expr39, method_invocation, lexer_1_expr38, operand, range(lexer_1, 4451, 21, 112, 112), "isDelimiter(lastChar)").
expr(lexer_1_expr40, method_invocation, lexer_1_expr37, right_operand, range(lexer_1, 4476, 14, 112, 112), "isEndOfFile(c)").
expr(lexer_1_expr42, method_invocation, lexer_1_expr41, left_operand, range(lexer_1, 4637, 23, 118, 118), "isStartOfLine(lastChar)").
expr(lexer_1_expr41, infix_expression, lexer_1_stmt13, expression, range(lexer_1, 4637, 44, 118, 118), "isStartOfLine(lastChar) && isCommentStart(c)").
expr(lexer_1_expr43, method_invocation, lexer_1_expr41, right_operand, range(lexer_1, 4664, 17, 118, 118), "isCommentStart(c)").
expr(lexer_1_expr44, infix_expression, lexer_1_stmt14, expression, range(lexer_1, 5165, 21, 132, 132), "token.type == INVALID").
expr(lexer_1_expr45, method_invocation, lexer_1_stmt16, expression, range(lexer_1, 5539, 14, 142, 142), "isDelimiter(c)").
expr(lexer_1_expr46, method_invocation, lexer_1_stmt18, expression, range(lexer_1, 5835, 14, 149, 149), "isQuoteChar(c)").
expr(lexer_1_expr47, method_invocation, lexer_1_stmt19, expression, range(lexer_1, 5969, 14, 152, 152), "isEndOfFile(c)").
expr(lexer_1_expr48, method_invocation, lexer_1_stmt20, expression, range(lexer_1, 6344, 26, 160, 160), "parseSimpleToken(token,c)").
expr(lexer_1_expr49, method_invocation, lexer_1_stmt23, expression, range(lexer_1, 7317, 17, 188, 188), "readEndOfLine(ch)").
expr(lexer_1_expr50, method_invocation, lexer_1_stmt24, expression, range(lexer_1, 7423, 15, 191, 191), "isEndOfFile(ch)").
expr(lexer_1_expr51, assignment, lexer_1_stmt25, expression, range(lexer_1, 7458, 16, 192, 192), "token.type=EOF").
expr(lexer_1_expr52, assignment, lexer_1_stmt26, expression, range(lexer_1, 7492, 20, 193, 193), "token.isReady=true").
expr(lexer_1_expr53, method_invocation, lexer_1_stmt28, expression, range(lexer_1, 7584, 15, 195, 195), "isDelimiter(ch)").
expr(lexer_1_expr54, assignment, lexer_1_stmt29, expression, range(lexer_1, 7619, 18, 196, 196), "token.type=TOKEN").
expr(lexer_1_expr55, method_invocation, lexer_1_stmt31, expression, range(lexer_1, 7685, 12, 198, 198), "isEscape(ch)").
expr(lexer_1_expr56, method_invocation, lexer_1_stmt32, expression, range(lexer_1, 8122, 31, 207, 207), "token.content.append((char)ch)").
expr(lexer_1_expr57, cast_expression, lexer_1_expr56, (arguments, 0), range(lexer_1, 8143, 9, 207, 207), "(char)ch").
expr(lexer_1_expr58, assignment, lexer_1_stmt33, expression, range(lexer_1, 8171, 18, 208, 208), "ch=reader.read()").
expr(lexer_1_expr59, method_invocation, lexer_1_expr58, right_hand_side, range(lexer_1, 8176, 13, 208, 208), "reader.read()").
expr(lexer_1_expr60, conditional_expression, lexer_1_stmt36, expression, range(lexer_1, 11752, 36, 291, 291), "c == null ? DISABLED : c.charValue()").
expr(lexer_1_expr61, infix_expression, lexer_1_expr60, expression, range(lexer_1, 11752, 9, 291, 291), "c == null").
expr(lexer_1_expr62, method_invocation, lexer_1_expr60, else_expression, range(lexer_1, 11775, 13, 291, 291), "c.charValue()").
expr(lexer_1_expr64, infix_expression, lexer_1_expr63, left_operand, range(lexer_1, 14171, 8, 364, 364), "ch == CR").
expr(lexer_1_expr63, infix_expression, lexer_1_stmt37, expression, range(lexer_1, 14171, 36, 364, 364), "ch == CR && reader.lookAhead() == LF").
expr(lexer_1_expr66, method_invocation, lexer_1_expr65, left_operand, range(lexer_1, 14183, 18, 364, 364), "reader.lookAhead()").
expr(lexer_1_expr65, infix_expression, lexer_1_expr63, right_operand, range(lexer_1, 14183, 24, 364, 364), "reader.lookAhead() == LF").
expr(lexer_1_expr68, infix_expression, lexer_1_expr67, left_operand, range(lexer_1, 14332, 8, 368, 368), "ch == LF").
expr(lexer_1_expr67, infix_expression, lexer_1_stmt38, expression, range(lexer_1, 14332, 20, 368, 368), "ch == LF || ch == CR").
expr(lexer_1_expr69, infix_expression, lexer_1_expr67, right_operand, range(lexer_1, 14344, 8, 368, 368), "ch == CR").
expr(lexer_1_expr70, method_invocation, lexer_1_stmt39, expression, range(lexer_1, 14401, 17, 372, 372), "reader.isClosed()").
expr(lexer_1_expr73, infix_expression, lexer_1_expr72, left_operand, range(lexer_1, 14921, 8, 389, 389), "ch == LF").
expr(lexer_1_expr71, infix_expression, lexer_1_stmt40, expression, range(lexer_1, 14921, 39, 389, 389), "ch == LF || ch == CR || ch == UNDEFINED").
expr(lexer_1_expr72, infix_expression, lexer_1_expr71, left_operand, range(lexer_1, 14921, 20, 389, 389), "ch == LF || ch == CR").
expr(lexer_1_expr74, infix_expression, lexer_1_expr72, right_operand, range(lexer_1, 14933, 8, 389, 389), "ch == CR").
expr(lexer_1_expr75, infix_expression, lexer_1_expr71, right_operand, range(lexer_1, 14945, 15, 389, 389), "ch == UNDEFINED").
expr(lexer_1_expr76, infix_expression, lexer_1_stmt41, expression, range(lexer_1, 15105, 19, 396, 396), "ch == END_OF_STREAM").
expr(lexer_1_expr77, infix_expression, lexer_1_stmt42, expression, range(lexer_1, 15188, 15, 400, 400), "ch == delimiter").
expr(lexer_1_expr78, infix_expression, lexer_1_stmt43, expression, range(lexer_1, 15264, 12, 404, 404), "ch == escape").
expr(lexer_1_expr79, infix_expression, lexer_1_stmt44, expression, range(lexer_1, 15340, 15, 408, 408), "ch == quoteChar").
expr(lexer_1_expr80, infix_expression, lexer_1_stmt45, expression, range(lexer_1, 15422, 18, 412, 412), "ch == commentStart").
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
expr(csvrecord_1_expr4, this_expression, f_record_number_90, expression, range(csvrecord_1, 1741, 4, 53, 53), "this").
expr(csvrecord_1_expr5, assignment, csvrecord_1_stmt2, expression, range(csvrecord_1, 1783, 58, 54, 54), "this.values=values != null ? values : EMPTY_STRING_ARRAY").
expr(csvrecord_1_expr6, field_access, csvrecord_1_expr5, left_hand_side, range(csvrecord_1, 1783, 11, 54, 54), "this.values").
expr(csvrecord_1_expr8, this_expression, f_values_91, expression, range(csvrecord_1, 1783, 4, 54, 54), "this").
expr(csvrecord_1_expr7, conditional_expression, csvrecord_1_expr5, right_hand_side, range(csvrecord_1, 1797, 44, 54, 54), "values != null ? values : EMPTY_STRING_ARRAY").
expr(csvrecord_1_expr9, infix_expression, csvrecord_1_expr7, expression, range(csvrecord_1, 1797, 14, 54, 54), "values != null").
expr(csvrecord_1_expr12, this_expression, f_mapping_92, expression, range(csvrecord_1, 1851, 4, 55, 55), "this").
expr(csvrecord_1_expr11, field_access, csvrecord_1_expr10, left_hand_side, range(csvrecord_1, 1851, 12, 55, 55), "this.mapping").
expr(csvrecord_1_expr10, assignment, csvrecord_1_stmt3, expression, range(csvrecord_1, 1851, 22, 55, 55), "this.mapping=mapping").
expr(csvrecord_1_expr13, assignment, csvrecord_1_stmt4, expression, range(csvrecord_1, 1883, 22, 56, 56), "this.comment=comment").
expr(csvrecord_1_expr15, this_expression, f_comment_93, expression, range(csvrecord_1, 1883, 4, 56, 56), "this").
expr(csvrecord_1_expr14, field_access, csvrecord_1_expr13, left_hand_side, range(csvrecord_1, 1883, 12, 56, 56), "this.comment").
expr(csvrecord_1_expr16, method_invocation, csvrecord_1_stmt5, expression, range(csvrecord_1, 5793, 18, 180, 180), "mapping.entrySet()").
expr(csvrecord_1_expr17, method_invocation, csvrecord_1_stmt6, expression, range(csvrecord_1, 6615, 49, 214, 214), "putIn(new HashMap<String,String>(values.length))").
expr(csvrecord_1_expr18, class_instance_creation, csvrecord_1_expr17, (arguments, 0), range(csvrecord_1, 6621, 42, 214, 214), "new HashMap<String,String>(values.length)").
%csvrecord_test_1 - org.apache.commons.csv.CSVRecordTest
expr(csvrecord_test_1_expr1, assignment, csvrecord_test_1_stmt1, expression, range(csvrecord_test_1, 1601, 39, 47, 47), "values=new String[]{\"A\",\"B\",\"C\"}").
expr(csvrecord_test_1_expr2, array_creation, csvrecord_test_1_expr1, right_hand_side, range(csvrecord_test_1, 1610, 30, 47, 47), "new String[]{\"A\",\"B\",\"C\"}").
expr(csvrecord_test_1_expr3, array_initializer, csvrecord_test_1_expr2, initializer, range(csvrecord_test_1, 1623, 17, 47, 47), "{\"A\",\"B\",\"C\"}").
expr(csvrecord_test_1_expr4, assignment, csvrecord_test_1_stmt2, expression, range(csvrecord_test_1, 1650, 45, 48, 48), "record=new CSVRecord(values,null,null,0)").
expr(csvrecord_test_1_expr5, class_instance_creation, csvrecord_test_1_expr4, right_hand_side, range(csvrecord_test_1, 1659, 36, 48, 48), "new CSVRecord(values,null,null,0)").
expr(csvrecord_test_1_expr6, assignment, csvrecord_test_1_stmt3, expression, range(csvrecord_test_1, 1705, 39, 49, 49), "header=new HashMap<String,Integer>()").
expr(csvrecord_test_1_expr7, class_instance_creation, csvrecord_test_1_expr6, right_hand_side, range(csvrecord_test_1, 1714, 30, 49, 49), "new HashMap<String,Integer>()").
expr(csvrecord_test_1_expr8, method_invocation, csvrecord_test_1_stmt4, expression, range(csvrecord_test_1, 1754, 39, 50, 50), "header.put(\"first\",Integer.valueOf(0))").
expr(csvrecord_test_1_expr9, method_invocation, csvrecord_test_1_expr8, (arguments, 1), range(csvrecord_test_1, 1774, 18, 50, 50), "Integer.valueOf(0)").
expr(csvrecord_test_1_expr10, method_invocation, csvrecord_test_1_stmt5, expression, range(csvrecord_test_1, 1803, 40, 51, 51), "header.put(\"second\",Integer.valueOf(1))").
expr(csvrecord_test_1_expr11, method_invocation, csvrecord_test_1_expr10, (arguments, 1), range(csvrecord_test_1, 1824, 18, 51, 51), "Integer.valueOf(1)").
expr(csvrecord_test_1_expr12, method_invocation, csvrecord_test_1_stmt6, expression, range(csvrecord_test_1, 1853, 39, 52, 52), "header.put(\"third\",Integer.valueOf(2))").
expr(csvrecord_test_1_expr13, method_invocation, csvrecord_test_1_expr12, (arguments, 1), range(csvrecord_test_1, 1873, 18, 52, 52), "Integer.valueOf(2)").
expr(csvrecord_test_1_expr14, assignment, csvrecord_test_1_stmt7, expression, range(csvrecord_test_1, 1902, 57, 53, 53), "recordWithHeader=new CSVRecord(values,header,null,0)").
expr(csvrecord_test_1_expr15, class_instance_creation, csvrecord_test_1_expr14, right_hand_side, range(csvrecord_test_1, 1921, 38, 53, 53), "new CSVRecord(values,header,null,0)").
expr(csvrecord_test_1_expr16, method_invocation, csvrecord_test_1_code20, initializer, range(csvrecord_test_1, 5835, 48, 173, 173), "CSVParser.parse(\"a,b\",CSVFormat.newFormat(','))").
expr(csvrecord_test_1_expr17, method_invocation, csvrecord_test_1_expr16, (arguments, 1), range(csvrecord_test_1, 5858, 24, 173, 173), "CSVFormat.newFormat(',')").
expr(csvrecord_test_1_expr18, method_invocation, csvrecord_test_1_code23, initializer, range(csvrecord_test_1, 5919, 24, 174, 174), "parser.iterator().next()").
expr(csvrecord_test_1_expr19, method_invocation, csvrecord_test_1_expr18, expression, range(csvrecord_test_1, 5919, 17, 174, 174), "parser.iterator()").
expr(csvrecord_test_1_expr20, method_invocation, csvrecord_test_1_code28, initializer, range(csvrecord_test_1, 5978, 16, 175, 175), "shortRec.toMap()").

%%% Names
%csvparser_1 - org.apache.commons.csv.CSVParser
name(t_assertions_4, simple_name, csvparser_1_expr1, expression, range(csvparser_1, 6116, 10, 174, 174), 'Assertions').
name(m_not_null_2, simple_name, csvparser_1_expr1, name, range(csvparser_1, 6127, 7, 174, 174), 'notNull').
name(p_string_58, simple_name, csvparser_1_expr1, (arguments, 0), range(csvparser_1, 6135, 6, 174, 174), 'string').
name(t_assertions_4, simple_name, csvparser_1_expr2, expression, range(csvparser_1, 6162, 10, 175, 175), 'Assertions').
name(m_not_null_2, simple_name, csvparser_1_expr2, name, range(csvparser_1, 6173, 7, 175, 175), 'notNull').
name(p_format_59, simple_name, csvparser_1_expr2, (arguments, 0), range(csvparser_1, 6181, 6, 175, 175), 'format').
name(p_string_58, simple_name, csvparser_1_expr4, (arguments, 0), range(csvparser_1, 6247, 6, 177, 177), 'string').
name(p_format_59, simple_name, csvparser_1_expr3, (arguments, 1), range(csvparser_1, 6256, 6, 177, 177), 'format').
name(f_record_63, simple_name, csvparser_1_code12, name, range(csvparser_1, 7706, 6, 218, 218), 'record').
name(f_reusable_token_64, simple_name, csvparser_1_code20, name, range(csvparser_1, 7797, 13, 222, 222), 'reusableToken').
name(m_csvparser_50, simple_name, csvparser_1_code22, name, range(csvparser_1, 8570, 9, 241, 241), 'CSVParser').
name(p_reader_65, simple_name, csvparser_1_code24, name, range(csvparser_1, 8593, 6, 241, 241), 'reader').
name(p_format_66, simple_name, csvparser_1_code27, name, range(csvparser_1, 8617, 6, 241, 241), 'format').
name(t_assertions_4, simple_name, csvparser_1_expr7, expression, range(csvparser_1, 8654, 10, 242, 242), 'Assertions').
name(m_not_null_2, simple_name, csvparser_1_expr7, name, range(csvparser_1, 8665, 7, 242, 242), 'notNull').
name(p_reader_65, simple_name, csvparser_1_expr7, (arguments, 0), range(csvparser_1, 8673, 6, 242, 242), 'reader').
name(t_assertions_4, simple_name, csvparser_1_expr8, expression, range(csvparser_1, 8700, 10, 243, 243), 'Assertions').
name(m_not_null_2, simple_name, csvparser_1_expr8, name, range(csvparser_1, 8711, 7, 243, 243), 'notNull').
name(p_format_66, simple_name, csvparser_1_expr8, (arguments, 0), range(csvparser_1, 8719, 6, 243, 243), 'format').
name(p_format_66, simple_name, csvparser_1_expr9, expression, range(csvparser_1, 8747, 6, 245, 245), 'format').
name(m_validate_30, simple_name, csvparser_1_expr9, name, range(csvparser_1, 8754, 8, 245, 245), 'validate').
name(f_format_67, simple_name, csvparser_1_expr11, name, range(csvparser_1, 8779, 6, 246, 246), 'format').
name(p_format_66, simple_name, csvparser_1_expr10, right_hand_side, range(csvparser_1, 8788, 6, 246, 246), 'format').
name(f_lexer_68, simple_name, csvparser_1_expr14, name, range(csvparser_1, 8809, 5, 247, 247), 'lexer').
name(p_format_66, simple_name, csvparser_1_expr15, (arguments, 0), range(csvparser_1, 8827, 6, 247, 247), 'format').
name(p_reader_65, simple_name, csvparser_1_expr17, (arguments, 0), range(csvparser_1, 8862, 6, 247, 247), 'reader').
name(f_header_map_69, simple_name, csvparser_1_expr19, name, range(csvparser_1, 8885, 9, 248, 248), 'headerMap').
name(m_initialize_header_57, simple_name, csvparser_1_expr20, name, range(csvparser_1, 8902, 16, 248, 248), 'initializeHeader').
name(v_input_70, simple_name, csvparser_1_code36, name, range(csvparser_1, 8986, 5, 252, 252), 'input').
name(f_reusable_token_64, simple_name, csvparser_1_expr25, name, range(csvparser_1, 8999, 13, 252, 252), 'reusableToken').
name(f_content_71, simple_name, csvparser_1_expr24, name, range(csvparser_1, 9013, 7, 252, 252), 'content').
name(m_to_string_59, simple_name, csvparser_1_expr23, name, range(csvparser_1, 9021, 8, 252, 252), 'toString').
name(v_null_string_72, simple_name, csvparser_1_code39, name, range(csvparser_1, 9054, 10, 253, 253), 'nullString').
name(f_format_67, simple_name, csvparser_1_expr28, name, range(csvparser_1, 9072, 6, 253, 253), 'format').
name(m_get_null_string_18, simple_name, csvparser_1_expr27, name, range(csvparser_1, 9079, 13, 253, 253), 'getNullString').
name(v_null_string_72, simple_name, csvparser_1_expr30, left_operand, range(csvparser_1, 9108, 10, 254, 254), 'nullString').
name(f_record_63, simple_name, csvparser_1_expr32, name, range(csvparser_1, 9147, 6, 255, 255), 'record').
name(m_add_60, simple_name, csvparser_1_expr31, name, range(csvparser_1, 9154, 3, 255, 255), 'add').
name(v_input_70, simple_name, csvparser_1_expr31, (arguments, 0), range(csvparser_1, 9158, 5, 255, 255), 'input').
name(v_hdr_map_74, simple_name, csvparser_1_code45, name, range(csvparser_1, 12357, 6, 358, 358), 'hdrMap').
name(v_format_header_75, simple_name, csvparser_1_code50, name, range(csvparser_1, 12395, 12, 359, 359), 'formatHeader').
name(f_format_67, simple_name, csvparser_1_expr35, name, range(csvparser_1, 12415, 6, 359, 359), 'format').
name(m_get_header_14, simple_name, csvparser_1_expr34, name, range(csvparser_1, 12422, 9, 359, 359), 'getHeader').
name(v_format_header_75, simple_name, csvparser_1_expr37, left_operand, range(csvparser_1, 12447, 12, 360, 360), 'formatHeader').
name(v_hdr_map_74, simple_name, csvparser_1_stmt17, expression, range(csvparser_1, 13539, 6, 388, 388), 'hdrMap').
name(f_lexer_68, simple_name, csvparser_1_expr39, name, range(csvparser_1, 13606, 5, 392, 392), 'lexer').
name(m_is_closed_68, simple_name, csvparser_1_expr38, name, range(csvparser_1, 13612, 8, 392, 392), 'isClosed').
name(t_csvparser_5, simple_name, csvparser_1_expr43, qualifier, range(csvparser_1, 14121, 9, 409, 409), 'CSVParser').
name(m_next_record_72, simple_name, csvparser_1_expr42, name, range(csvparser_1, 14136, 10, 409, 409), 'nextRecord').
name(t_csvparser_5, simple_name, csvparser_1_expr45, qualifier, range(csvparser_1, 14730, 9, 428, 428), 'CSVParser').
name(m_is_closed_67, simple_name, csvparser_1_expr44, name, range(csvparser_1, 14745, 8, 428, 428), 'isClosed').
name(v_next_76, simple_name, csvparser_1_code60, name, range(csvparser_1, 14886, 4, 431, 431), 'next').
name(f_current_77, simple_name, csvparser_1_expr46, name, range(csvparser_1, 14898, 7, 431, 431), 'current').
name(f_current_77, simple_name, csvparser_1_expr49, name, range(csvparser_1, 14928, 7, 432, 432), 'current').
name(v_next_76, simple_name, csvparser_1_expr51, left_operand, range(csvparser_1, 14965, 4, 434, 434), 'next').
name(v_next_76, simple_name, csvparser_1_expr52, left_hand_side, range(csvparser_1, 15055, 4, 436, 436), 'next').
name(m_get_next_record_71, simple_name, csvparser_1_expr53, name, range(csvparser_1, 15067, 13, 436, 436), 'getNextRecord').
name(v_next_76, simple_name, csvparser_1_expr55, left_operand, range(csvparser_1, 15108, 4, 437, 437), 'next').
name(v_next_76, simple_name, csvparser_1_stmt28, expression, range(csvparser_1, 15279, 4, 442, 442), 'next').
name(v_result_78, simple_name, csvparser_1_code63, name, range(csvparser_1, 15774, 6, 459, 459), 'result').
name(f_record_63, simple_name, csvparser_1_expr57, name, range(csvparser_1, 15802, 6, 460, 460), 'record').
name(m_clear_76, simple_name, csvparser_1_expr56, name, range(csvparser_1, 15809, 5, 460, 460), 'clear').
name(v_sb_79, simple_name, csvparser_1_code65, name, range(csvparser_1, 15840, 2, 461, 461), 'sb').
name(f_reusable_token_64, simple_name, csvparser_1_expr60, name, range(csvparser_1, 15881, 13, 463, 463), 'reusableToken').
name(m_reset_77, simple_name, csvparser_1_expr59, name, range(csvparser_1, 15895, 5, 463, 463), 'reset').
name(f_lexer_68, simple_name, csvparser_1_expr64, name, range(csvparser_1, 15921, 5, 464, 464), 'lexer').
name(m_next_token_78, simple_name, csvparser_1_expr62, name, range(csvparser_1, 15927, 9, 464, 464), 'nextToken').
name(f_reusable_token_64, simple_name, csvparser_1_expr63, name, range(csvparser_1, 15942, 13, 464, 464), 'reusableToken').
name(f_reusable_token_64, simple_name, csvparser_1_expr68, name, range(csvparser_1, 15983, 13, 465, 465), 'reusableToken').
name(f_type_80, simple_name, csvparser_1_expr67, name, range(csvparser_1, 15997, 4, 465, 465), 'type').
name(m_add_record_value_58, simple_name, csvparser_1_expr70, name, range(csvparser_1, 16050, 14, 467, 467), 'addRecordValue').
name(f_reusable_token_64, simple_name, csvparser_1_expr73, name, range(csvparser_1, 16227, 13, 473, 473), 'reusableToken').
name(f_is_ready_81, simple_name, csvparser_1_expr72, name, range(csvparser_1, 16241, 7, 473, 473), 'isReady').
name(m_add_record_value_58, simple_name, csvparser_1_expr75, name, range(csvparser_1, 16277, 14, 474, 474), 'addRecordValue').
name(f_reusable_token_64, simple_name, csvparser_1_expr79, name, range(csvparser_1, 17026, 13, 491, 491), 'reusableToken').
name(f_type_80, simple_name, csvparser_1_expr78, name, range(csvparser_1, 17040, 4, 491, 491), 'type').
name(f_token_82, simple_name, csvparser_1_expr77, right_operand, range(csvparser_1, 17048, 5, 491, 491), 'TOKEN').
name(f_record_63, simple_name, csvparser_1_expr83, name, range(csvparser_1, 17075, 6, 493, 493), 'record').
name(m_is_empty_79, simple_name, csvparser_1_expr82, name, range(csvparser_1, 17082, 7, 493, 493), 'isEmpty').
name(f_record_number_83, simple_name, csvparser_1_expr86, name, range(csvparser_1, 17112, 12, 494, 494), 'recordNumber').
name(v_comment_84, simple_name, csvparser_1_code68, name, range(csvparser_1, 17153, 7, 495, 495), 'comment').
name(v_sb_79, simple_name, csvparser_1_expr89, left_operand, range(csvparser_1, 17163, 2, 495, 495), 'sb').
name(v_sb_79, simple_name, csvparser_1_expr90, expression, range(csvparser_1, 17183, 2, 495, 495), 'sb').
name(m_to_string_59, simple_name, csvparser_1_expr90, name, range(csvparser_1, 17186, 8, 495, 495), 'toString').
name(v_result_78, simple_name, csvparser_1_expr91, left_hand_side, range(csvparser_1, 17210, 6, 496, 496), 'result').
name(f_record_63, simple_name, csvparser_1_expr97, name, range(csvparser_1, 17238, 6, 496, 496), 'record').
name(m_to_array_81, simple_name, csvparser_1_expr93, name, range(csvparser_1, 17245, 7, 496, 496), 'toArray').
name(f_record_63, simple_name, csvparser_1_expr100, name, range(csvparser_1, 17269, 6, 496, 496), 'record').
name(m_size_82, simple_name, csvparser_1_expr99, name, range(csvparser_1, 17276, 4, 496, 496), 'size').
name(f_header_map_69, simple_name, csvparser_1_expr94, name, range(csvparser_1, 17291, 9, 496, 496), 'headerMap').
name(v_comment_84, simple_name, csvparser_1_expr92, (arguments, 2), range(csvparser_1, 17302, 7, 496, 496), 'comment').
name(f_record_number_83, simple_name, csvparser_1_expr95, name, range(csvparser_1, 17336, 12, 497, 497), 'recordNumber').
name(v_result_78, simple_name, csvparser_1_stmt44, expression, range(csvparser_1, 17376, 6, 499, 499), 'result').
%csvformat_1 - org.apache.commons.csv.CSVFormat
name(f_default_3, simple_name, csvformat_1_code8, name, range(csvformat_1, 5295, 7, 174, 174), 'DEFAULT').
name(f_comma_4, simple_name, csvformat_1_expr1, (arguments, 0), range(csvformat_1, 5319, 5, 174, 174), 'COMMA').
name(f_double_quote_char_5, simple_name, csvformat_1_expr1, (arguments, 1), range(csvformat_1, 5326, 17, 174, 174), 'DOUBLE_QUOTE_CHAR').
name(f_crlf_6, simple_name, csvformat_1_expr1, (arguments, 7), range(csvformat_1, 5436, 4, 175, 175), 'CRLF').
name(f_rfc4180_7, simple_name, csvformat_1_code15, name, range(csvformat_1, 5779, 7, 186, 186), 'RFC4180').
name(f_default_3, simple_name, csvformat_1_expr2, expression, range(csvformat_1, 5789, 7, 186, 186), 'DEFAULT').
name(m_with_ignore_empty_lines_4, simple_name, csvformat_1_expr2, name, range(csvformat_1, 5797, 20, 186, 186), 'withIgnoreEmptyLines').
name(f_excel_8, simple_name, csvformat_1_code21, name, range(csvformat_1, 6594, 5, 210, 210), 'EXCEL').
name(f_default_3, simple_name, csvformat_1_expr3, expression, range(csvformat_1, 6602, 7, 210, 210), 'DEFAULT').
name(m_with_ignore_empty_lines_4, simple_name, csvformat_1_expr3, name, range(csvformat_1, 6610, 20, 210, 210), 'withIgnoreEmptyLines').
name(f_tdf_9, simple_name, csvformat_1_code27, name, range(csvformat_1, 6756, 3, 213, 213), 'TDF').
name(f_mysql_10, simple_name, csvformat_1_code33, name, range(csvformat_1, 7333, 5, 226, 226), 'MYSQL').
name(p_c_11, simple_name, csvformat_1_expr7, left_operand, range(csvformat_1, 7832, 1, 243, 243), 'c').
name(f_lf_12, simple_name, csvformat_1_expr7, right_operand, range(csvformat_1, 7837, 2, 243, 243), 'LF').
name(p_c_11, simple_name, csvformat_1_expr8, left_operand, range(csvformat_1, 7843, 1, 243, 243), 'c').
name(f_cr_13, simple_name, csvformat_1_expr8, right_operand, range(csvformat_1, 7848, 2, 243, 243), 'CR').
name(p_c_14, simple_name, csvformat_1_expr10, left_operand, range(csvformat_1, 8183, 1, 255, 255), 'c').
name(m_is_line_break_5, simple_name, csvformat_1_expr11, name, range(csvformat_1, 8196, 11, 255, 255), 'isLineBreak').
name(p_c_14, simple_name, csvformat_1_expr12, expression, range(csvformat_1, 8208, 1, 255, 255), 'c').
name(m_char_value_7, simple_name, csvformat_1_expr12, name, range(csvformat_1, 8210, 9, 255, 255), 'charValue').
name(p_delimiter_15, simple_name, csvformat_1_expr13, (arguments, 0), range(csvformat_1, 8636, 9, 267, 267), 'delimiter').
name(p_null_string_24, simple_name, csvformat_1_code39, name, range(csvformat_1, 10201, 10, 300, 300), 'nullString').
name(p_header_25, simple_name, csvformat_1_code42, name, range(csvformat_1, 10228, 6, 300, 300), 'header').
name(p_skip_header_record_26, simple_name, csvformat_1_code47, name, range(csvformat_1, 10250, 16, 300, 300), 'skipHeaderRecord').
name(m_is_line_break_5, simple_name, csvformat_1_expr14, name, range(csvformat_1, 10282, 11, 301, 301), 'isLineBreak').
name(p_delimiter_16, simple_name, csvformat_1_expr14, (arguments, 0), range(csvformat_1, 10294, 9, 301, 301), 'delimiter').
name(f_delimiter_27, simple_name, csvformat_1_expr16, name, range(csvformat_1, 10419, 9, 304, 304), 'delimiter').
name(p_delimiter_16, simple_name, csvformat_1_expr15, right_hand_side, range(csvformat_1, 10431, 9, 304, 304), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr19, name, range(csvformat_1, 10455, 9, 305, 305), 'quoteChar').
name(p_quote_char_17, simple_name, csvformat_1_expr18, right_hand_side, range(csvformat_1, 10467, 9, 305, 305), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr22, name, range(csvformat_1, 10491, 11, 306, 306), 'quotePolicy').
name(p_quote_policy_18, simple_name, csvformat_1_expr21, right_hand_side, range(csvformat_1, 10505, 11, 306, 306), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr25, name, range(csvformat_1, 10531, 12, 307, 307), 'commentStart').
name(p_comment_start_19, simple_name, csvformat_1_expr24, right_hand_side, range(csvformat_1, 10546, 12, 307, 307), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr28, name, range(csvformat_1, 10573, 6, 308, 308), 'escape').
name(p_escape_20, simple_name, csvformat_1_expr27, right_hand_side, range(csvformat_1, 10582, 6, 308, 308), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr31, name, range(csvformat_1, 10603, 23, 309, 309), 'ignoreSurroundingSpaces').
name(p_ignore_surrounding_spaces_21, simple_name, csvformat_1_expr30, right_hand_side, range(csvformat_1, 10629, 23, 309, 309), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr34, name, range(csvformat_1, 10667, 16, 310, 310), 'ignoreEmptyLines').
name(p_ignore_empty_lines_22, simple_name, csvformat_1_expr33, right_hand_side, range(csvformat_1, 10686, 16, 310, 310), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr37, name, range(csvformat_1, 10717, 15, 311, 311), 'recordSeparator').
name(p_record_separator_23, simple_name, csvformat_1_expr36, right_hand_side, range(csvformat_1, 10735, 15, 311, 311), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr40, name, range(csvformat_1, 10765, 10, 312, 312), 'nullString').
name(p_null_string_24, simple_name, csvformat_1_expr39, right_hand_side, range(csvformat_1, 10778, 10, 312, 312), 'nullString').
name(p_header_25, simple_name, csvformat_1_expr42, left_operand, range(csvformat_1, 10802, 6, 313, 313), 'header').
name(f_header_36, simple_name, csvformat_1_expr44, name, range(csvformat_1, 10837, 6, 314, 314), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr47, name, range(csvformat_1, 11247, 16, 324, 324), 'skipHeaderRecord').
name(p_skip_header_record_26, simple_name, csvformat_1_expr46, right_hand_side, range(csvformat_1, 11266, 16, 324, 324), 'skipHeaderRecord').
name(f_comment_start_30, simple_name, csvformat_1_stmt17, expression, range(csvformat_1, 14033, 12, 420, 420), 'commentStart').
name(f_delimiter_27, simple_name, csvformat_1_stmt18, expression, range(csvformat_1, 14245, 9, 429, 429), 'delimiter').
name(f_escape_31, simple_name, csvformat_1_stmt19, expression, range(csvformat_1, 14430, 6, 438, 438), 'escape').
name(f_header_36, simple_name, csvformat_1_expr50, left_operand, range(csvformat_1, 14673, 6, 447, 447), 'header').
name(f_header_36, simple_name, csvformat_1_expr51, expression, range(csvformat_1, 14690, 6, 447, 447), 'header').
name(m_clone_15, simple_name, csvformat_1_expr51, name, range(csvformat_1, 14697, 5, 447, 447), 'clone').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_stmt21, expression, range(csvformat_1, 15028, 16, 457, 457), 'ignoreEmptyLines').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_stmt22, expression, range(csvformat_1, 15357, 23, 467, 467), 'ignoreSurroundingSpaces').
name(f_null_string_35, simple_name, csvformat_1_stmt23, expression, range(csvformat_1, 15932, 10, 484, 484), 'nullString').
name(f_quote_char_28, simple_name, csvformat_1_stmt24, expression, range(csvformat_1, 16174, 9, 493, 493), 'quoteChar').
name(f_quote_char_28, simple_name, csvformat_1_expr53, left_operand, range(csvformat_1, 20691, 9, 642, 642), 'quoteChar').
name(f_delimiter_27, simple_name, csvformat_1_expr54, left_operand, range(csvformat_1, 20712, 9, 642, 642), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr55, expression, range(csvformat_1, 20725, 9, 642, 642), 'quoteChar').
name(m_char_value_7, simple_name, csvformat_1_expr55, name, range(csvformat_1, 20735, 9, 642, 642), 'charValue').
name(f_escape_31, simple_name, csvformat_1_expr57, left_operand, range(csvformat_1, 20925, 6, 647, 647), 'escape').
name(f_delimiter_27, simple_name, csvformat_1_expr58, left_operand, range(csvformat_1, 20943, 9, 647, 647), 'delimiter').
name(f_escape_31, simple_name, csvformat_1_expr59, expression, range(csvformat_1, 20956, 6, 647, 647), 'escape').
name(m_char_value_7, simple_name, csvformat_1_expr59, name, range(csvformat_1, 20963, 9, 647, 647), 'charValue').
name(f_comment_start_30, simple_name, csvformat_1_expr61, left_operand, range(csvformat_1, 21147, 12, 652, 652), 'commentStart').
name(f_delimiter_27, simple_name, csvformat_1_expr62, left_operand, range(csvformat_1, 21171, 9, 652, 652), 'delimiter').
name(f_comment_start_30, simple_name, csvformat_1_expr63, expression, range(csvformat_1, 21184, 12, 652, 652), 'commentStart').
name(m_char_value_7, simple_name, csvformat_1_expr63, name, range(csvformat_1, 21197, 9, 652, 652), 'charValue').
name(f_quote_char_28, simple_name, csvformat_1_expr65, left_operand, range(csvformat_1, 21394, 9, 657, 657), 'quoteChar').
name(f_quote_char_28, simple_name, csvformat_1_expr66, expression, range(csvformat_1, 21415, 9, 657, 657), 'quoteChar').
name(m_equals_31, simple_name, csvformat_1_expr66, name, range(csvformat_1, 21425, 6, 657, 657), 'equals').
name(f_comment_start_30, simple_name, csvformat_1_expr66, (arguments, 0), range(csvformat_1, 21432, 12, 657, 657), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr68, left_operand, range(csvformat_1, 21631, 6, 662, 662), 'escape').
name(f_escape_31, simple_name, csvformat_1_expr69, expression, range(csvformat_1, 21649, 6, 662, 662), 'escape').
name(m_equals_31, simple_name, csvformat_1_expr69, name, range(csvformat_1, 21656, 6, 662, 662), 'equals').
name(f_comment_start_30, simple_name, csvformat_1_expr69, (arguments, 0), range(csvformat_1, 21663, 12, 662, 662), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr71, left_operand, range(csvformat_1, 21859, 6, 667, 667), 'escape').
name(f_quote_policy_29, simple_name, csvformat_1_expr72, left_operand, range(csvformat_1, 21877, 11, 667, 667), 'quotePolicy').
name(t_quote_1, simple_name, q_none_1, qualifier, range(csvformat_1, 21892, 5, 667, 667), 'Quote').
name(q_none_1, qualified_name, csvformat_1_expr72, right_operand, range(csvformat_1, 21892, 10, 667, 667), 'Quote.NONE').
name(m_is_line_break_5, simple_name, csvformat_1_expr73, name, range(csvformat_1, 24040, 11, 717, 717), 'isLineBreak').
name(p_delimiter_43, simple_name, csvformat_1_expr73, (arguments, 0), range(csvformat_1, 24052, 9, 717, 717), 'delimiter').
name(p_delimiter_43, simple_name, csvformat_1_expr74, (arguments, 0), range(csvformat_1, 24193, 9, 720, 720), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr74, (arguments, 1), range(csvformat_1, 24204, 9, 720, 720), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr74, (arguments, 2), range(csvformat_1, 24215, 11, 720, 720), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr74, (arguments, 3), range(csvformat_1, 24228, 12, 720, 720), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr74, (arguments, 4), range(csvformat_1, 24242, 6, 720, 720), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr74, (arguments, 5), range(csvformat_1, 24266, 23, 721, 721), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr74, (arguments, 6), range(csvformat_1, 24291, 16, 721, 721), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr74, (arguments, 7), range(csvformat_1, 24309, 15, 721, 721), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr74, (arguments, 8), range(csvformat_1, 24326, 10, 721, 721), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr74, (arguments, 9), range(csvformat_1, 24338, 6, 721, 721), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr74, (arguments, 10), range(csvformat_1, 24346, 16, 721, 721), 'skipHeaderRecord').
name(m_with_escape_36, simple_name, csvformat_1_expr75, name, range(csvformat_1, 24816, 10, 734, 734), 'withEscape').
name(t_character_2, simple_name, csvformat_1_expr76, expression, range(csvformat_1, 24827, 9, 734, 734), 'Character').
name(m_value_of_37, simple_name, csvformat_1_expr76, name, range(csvformat_1, 24837, 7, 734, 734), 'valueOf').
name(p_escape_44, simple_name, csvformat_1_expr76, (arguments, 0), range(csvformat_1, 24845, 6, 734, 734), 'escape').
name(m_is_line_break_6, simple_name, csvformat_1_expr77, name, range(csvformat_1, 25338, 11, 747, 747), 'isLineBreak').
name(p_escape_45, simple_name, csvformat_1_expr77, (arguments, 0), range(csvformat_1, 25350, 6, 747, 747), 'escape').
name(f_delimiter_27, simple_name, csvformat_1_expr78, (arguments, 0), range(csvformat_1, 25495, 9, 750, 750), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr78, (arguments, 1), range(csvformat_1, 25506, 9, 750, 750), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr78, (arguments, 2), range(csvformat_1, 25517, 11, 750, 750), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr78, (arguments, 3), range(csvformat_1, 25530, 12, 750, 750), 'commentStart').
name(p_escape_45, simple_name, csvformat_1_expr78, (arguments, 4), range(csvformat_1, 25544, 6, 750, 750), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr78, (arguments, 5), range(csvformat_1, 25568, 23, 751, 751), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr78, (arguments, 6), range(csvformat_1, 25593, 16, 751, 751), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr78, (arguments, 7), range(csvformat_1, 25611, 15, 751, 751), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr78, (arguments, 8), range(csvformat_1, 25628, 10, 751, 751), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr78, (arguments, 9), range(csvformat_1, 25640, 6, 751, 751), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr78, (arguments, 10), range(csvformat_1, 25648, 16, 751, 751), 'skipHeaderRecord').
name(f_delimiter_27, simple_name, csvformat_1_expr79, (arguments, 0), range(csvformat_1, 27099, 9, 785, 785), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr79, (arguments, 1), range(csvformat_1, 27110, 9, 785, 785), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr79, (arguments, 2), range(csvformat_1, 27121, 11, 785, 785), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr79, (arguments, 3), range(csvformat_1, 27134, 12, 785, 785), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr79, (arguments, 4), range(csvformat_1, 27148, 6, 785, 785), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr79, (arguments, 5), range(csvformat_1, 27172, 23, 786, 786), 'ignoreSurroundingSpaces').
name(p_ignore_empty_lines_47, simple_name, csvformat_1_expr79, (arguments, 6), range(csvformat_1, 27197, 16, 786, 786), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr79, (arguments, 7), range(csvformat_1, 27215, 15, 786, 786), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr79, (arguments, 8), range(csvformat_1, 27232, 10, 786, 786), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr79, (arguments, 9), range(csvformat_1, 27244, 6, 786, 786), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr79, (arguments, 10), range(csvformat_1, 27252, 16, 786, 786), 'skipHeaderRecord').
name(f_delimiter_27, simple_name, csvformat_1_expr80, (arguments, 0), range(csvformat_1, 27751, 9, 798, 798), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr80, (arguments, 1), range(csvformat_1, 27762, 9, 798, 798), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr80, (arguments, 2), range(csvformat_1, 27773, 11, 798, 798), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr80, (arguments, 3), range(csvformat_1, 27786, 12, 798, 798), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr80, (arguments, 4), range(csvformat_1, 27800, 6, 798, 798), 'escape').
name(p_ignore_surrounding_spaces_48, simple_name, csvformat_1_expr80, (arguments, 5), range(csvformat_1, 27824, 23, 799, 799), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr80, (arguments, 6), range(csvformat_1, 27849, 16, 799, 799), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr80, (arguments, 7), range(csvformat_1, 27867, 15, 799, 799), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr80, (arguments, 8), range(csvformat_1, 27884, 10, 799, 799), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr80, (arguments, 9), range(csvformat_1, 27896, 6, 799, 799), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr80, (arguments, 10), range(csvformat_1, 27904, 16, 799, 799), 'skipHeaderRecord').
name(m_is_line_break_6, simple_name, csvformat_1_expr81, name, range(csvformat_1, 29799, 11, 845, 845), 'isLineBreak').
name(p_quote_char_51, simple_name, csvformat_1_expr81, (arguments, 0), range(csvformat_1, 29811, 9, 845, 845), 'quoteChar').
name(f_delimiter_27, simple_name, csvformat_1_expr82, (arguments, 0), range(csvformat_1, 29952, 9, 848, 848), 'delimiter').
name(p_quote_char_51, simple_name, csvformat_1_expr82, (arguments, 1), range(csvformat_1, 29963, 9, 848, 848), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr82, (arguments, 2), range(csvformat_1, 29974, 11, 848, 848), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr82, (arguments, 3), range(csvformat_1, 29987, 12, 848, 848), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr82, (arguments, 4), range(csvformat_1, 30001, 6, 848, 848), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr82, (arguments, 5), range(csvformat_1, 30025, 23, 849, 849), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr82, (arguments, 6), range(csvformat_1, 30050, 16, 849, 849), 'ignoreEmptyLines').
name(f_record_separator_34, simple_name, csvformat_1_expr82, (arguments, 7), range(csvformat_1, 30068, 15, 849, 849), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr82, (arguments, 8), range(csvformat_1, 30085, 10, 849, 849), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr82, (arguments, 9), range(csvformat_1, 30097, 6, 849, 849), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr82, (arguments, 10), range(csvformat_1, 30105, 16, 849, 849), 'skipHeaderRecord').
name(m_with_record_separator_45, simple_name, csvformat_1_expr83, name, range(csvformat_1, 31059, 19, 874, 874), 'withRecordSeparator').
name(t_string_3, simple_name, csvformat_1_expr84, expression, range(csvformat_1, 31079, 6, 874, 874), 'String').
name(m_value_of_46, simple_name, csvformat_1_expr84, name, range(csvformat_1, 31086, 7, 874, 874), 'valueOf').
name(p_record_separator_53, simple_name, csvformat_1_expr84, (arguments, 0), range(csvformat_1, 31094, 15, 874, 874), 'recordSeparator').
name(f_delimiter_27, simple_name, csvformat_1_expr85, (arguments, 0), range(csvformat_1, 31516, 9, 886, 886), 'delimiter').
name(f_quote_char_28, simple_name, csvformat_1_expr85, (arguments, 1), range(csvformat_1, 31527, 9, 886, 886), 'quoteChar').
name(f_quote_policy_29, simple_name, csvformat_1_expr85, (arguments, 2), range(csvformat_1, 31538, 11, 886, 886), 'quotePolicy').
name(f_comment_start_30, simple_name, csvformat_1_expr85, (arguments, 3), range(csvformat_1, 31551, 12, 886, 886), 'commentStart').
name(f_escape_31, simple_name, csvformat_1_expr85, (arguments, 4), range(csvformat_1, 31565, 6, 886, 886), 'escape').
name(f_ignore_surrounding_spaces_32, simple_name, csvformat_1_expr85, (arguments, 5), range(csvformat_1, 31589, 23, 887, 887), 'ignoreSurroundingSpaces').
name(f_ignore_empty_lines_33, simple_name, csvformat_1_expr85, (arguments, 6), range(csvformat_1, 31614, 16, 887, 887), 'ignoreEmptyLines').
name(p_record_separator_54, simple_name, csvformat_1_expr85, (arguments, 7), range(csvformat_1, 31632, 15, 887, 887), 'recordSeparator').
name(f_null_string_35, simple_name, csvformat_1_expr85, (arguments, 8), range(csvformat_1, 31649, 10, 887, 887), 'nullString').
name(f_header_36, simple_name, csvformat_1_expr85, (arguments, 9), range(csvformat_1, 31661, 6, 887, 887), 'header').
name(f_skip_header_record_37, simple_name, csvformat_1_expr85, (arguments, 10), range(csvformat_1, 31669, 16, 887, 887), 'skipHeaderRecord').
%constants_1 - org.apache.commons.csv.Constants
name(f_double_quote_char_5, simple_name, constants_1_code7, name, range(constants_1, 1178, 17, 36, 36), 'DOUBLE_QUOTE_CHAR').
name(t_character_2, simple_name, constants_1_expr1, expression, range(constants_1, 1198, 9, 36, 36), 'Character').
name(m_value_of_37, simple_name, constants_1_expr1, name, range(constants_1, 1208, 7, 36, 36), 'valueOf').
%quote_1 - org.apache.commons.csv.Quote
name(t_quote_1, simple_name, quote_1_code2, name, range(quote_1, 917, 5, 24, 24), 'Quote').
name(f_all_151, simple_name, quote_1_code4, name, range(quote_1, 972, 3, 29, 29), 'ALL').
name(f_minimal_152, simple_name, quote_1_code5, name, range(quote_1, 1140, 7, 35, 35), 'MINIMAL').
name(f_non_numeric_153, simple_name, quote_1_code6, name, range(quote_1, 1208, 11, 40, 40), 'NON_NUMERIC').
name(f_none_154, simple_name, quote_1_code7, name, range(quote_1, 1493, 4, 47, 47), 'NONE').
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
name(f_last_char_111, simple_name, extended_buffered_reader_1_code6, name, range(extended_buffered_reader_1, 1488, 8, 40, 40), 'lastChar').
name(f_undefined_112, simple_name, extended_buffered_reader_1_code6, initializer, range(extended_buffered_reader_1, 1499, 9, 40, 40), 'UNDEFINED').
name(f_eol_counter_113, simple_name, extended_buffered_reader_1_code10, name, range(extended_buffered_reader_1, 1582, 10, 43, 43), 'eolCounter').
name(p_reader_114, simple_name, extended_buffered_reader_1_stmt1, (arguments, 0), range(extended_buffered_reader_1, 1774, 6, 51, 51), 'reader').
name(v_current_115, simple_name, extended_buffered_reader_1_code15, name, range(extended_buffered_reader_1, 1865, 7, 56, 56), 'current').
name(m_read_125, simple_name, extended_buffered_reader_1_expr2, name, range(extended_buffered_reader_1, 1881, 4, 56, 56), 'read').
name(v_current_115, simple_name, extended_buffered_reader_1_expr4, left_operand, range(extended_buffered_reader_1, 1901, 7, 57, 57), 'current').
name(f_cr_13, simple_name, extended_buffered_reader_1_expr4, right_operand, range(extended_buffered_reader_1, 1912, 2, 57, 57), 'CR').
name(v_current_115, simple_name, extended_buffered_reader_1_expr7, left_operand, range(extended_buffered_reader_1, 1919, 7, 57, 57), 'current').
name(f_lf_12, simple_name, extended_buffered_reader_1_expr7, right_operand, range(extended_buffered_reader_1, 1930, 2, 57, 57), 'LF').
name(f_last_char_111, simple_name, extended_buffered_reader_1_expr8, left_operand, range(extended_buffered_reader_1, 1936, 8, 57, 57), 'lastChar').
name(f_cr_13, simple_name, extended_buffered_reader_1_expr8, right_operand, range(extended_buffered_reader_1, 1948, 2, 57, 57), 'CR').
name(f_last_char_111, simple_name, extended_buffered_reader_1_expr9, left_hand_side, range(extended_buffered_reader_1, 1999, 8, 60, 60), 'lastChar').
name(v_current_115, simple_name, extended_buffered_reader_1_expr9, right_hand_side, range(extended_buffered_reader_1, 2010, 7, 60, 60), 'current').
name(f_last_char_111, simple_name, extended_buffered_reader_1_stmt5, expression, range(extended_buffered_reader_1, 2034, 8, 61, 61), 'lastChar').
name(f_last_char_111, simple_name, extended_buffered_reader_1_stmt6, expression, range(extended_buffered_reader_1, 2595, 8, 73, 73), 'lastChar').
name(f_closed_119, simple_name, extended_buffered_reader_1_stmt7, expression, range(extended_buffered_reader_1, 5108, 6, 161, 161), 'closed').
%lexer_1 - org.apache.commons.csv.Lexer
name(m_lexer_55, simple_name, lexer_1_code3, name, range(lexer_1, 2381, 5, 61, 61), 'Lexer').
name(p_format_120, simple_name, lexer_1_code4, name, range(lexer_1, 2403, 6, 61, 61), 'format').
name(p_reader_121, simple_name, lexer_1_code7, name, range(lexer_1, 2440, 6, 61, 61), 'reader').
name(f_reader_122, simple_name, lexer_1_expr2, name, range(lexer_1, 2463, 6, 62, 62), 'reader').
name(p_reader_121, simple_name, lexer_1_expr1, right_hand_side, range(lexer_1, 2472, 6, 62, 62), 'reader').
name(f_delimiter_123, simple_name, lexer_1_expr5, name, range(lexer_1, 2493, 9, 63, 63), 'delimiter').
name(p_format_120, simple_name, lexer_1_expr6, expression, range(lexer_1, 2505, 6, 63, 63), 'format').
name(m_get_delimiter_12, simple_name, lexer_1_expr6, name, range(lexer_1, 2512, 12, 63, 63), 'getDelimiter').
name(f_escape_124, simple_name, lexer_1_expr9, name, range(lexer_1, 2541, 6, 64, 64), 'escape').
name(m_map_null_to_disabled_133, simple_name, lexer_1_expr10, name, range(lexer_1, 2550, 17, 64, 64), 'mapNullToDisabled').
name(p_format_120, simple_name, lexer_1_expr12, expression, range(lexer_1, 2568, 6, 64, 64), 'format').
name(m_get_escape_13, simple_name, lexer_1_expr12, name, range(lexer_1, 2575, 9, 64, 64), 'getEscape').
name(f_quote_char_125, simple_name, lexer_1_expr14, name, range(lexer_1, 2602, 9, 65, 65), 'quoteChar').
name(m_map_null_to_disabled_133, simple_name, lexer_1_expr15, name, range(lexer_1, 2614, 17, 65, 65), 'mapNullToDisabled').
name(p_format_120, simple_name, lexer_1_expr17, expression, range(lexer_1, 2632, 6, 65, 65), 'format').
name(m_get_quote_char_19, simple_name, lexer_1_expr17, name, range(lexer_1, 2639, 12, 65, 65), 'getQuoteChar').
name(f_comment_start_126, simple_name, lexer_1_expr19, name, range(lexer_1, 2669, 12, 66, 66), 'commentStart').
name(m_map_null_to_disabled_133, simple_name, lexer_1_expr20, name, range(lexer_1, 2684, 17, 66, 66), 'mapNullToDisabled').
name(p_format_120, simple_name, lexer_1_expr22, expression, range(lexer_1, 2702, 6, 66, 66), 'format').
name(m_get_comment_start_11, simple_name, lexer_1_expr22, name, range(lexer_1, 2709, 15, 66, 66), 'getCommentStart').
name(f_ignore_surrounding_spaces_127, simple_name, lexer_1_expr24, name, range(lexer_1, 2742, 23, 67, 67), 'ignoreSurroundingSpaces').
name(p_format_120, simple_name, lexer_1_expr25, expression, range(lexer_1, 2768, 6, 67, 67), 'format').
name(m_get_ignore_surrounding_spaces_17, simple_name, lexer_1_expr25, name, range(lexer_1, 2775, 26, 67, 67), 'getIgnoreSurroundingSpaces').
name(f_ignore_empty_lines_128, simple_name, lexer_1_expr28, name, range(lexer_1, 2818, 16, 68, 68), 'ignoreEmptyLines').
name(p_format_120, simple_name, lexer_1_expr29, expression, range(lexer_1, 2837, 6, 68, 68), 'format').
name(m_get_ignore_empty_lines_16, simple_name, lexer_1_expr29, name, range(lexer_1, 2844, 19, 68, 68), 'getIgnoreEmptyLines').
name(v_last_char_130, simple_name, lexer_1_code12, name, range(lexer_1, 3403, 8, 85, 85), 'lastChar').
name(f_reader_122, simple_name, lexer_1_expr31, expression, range(lexer_1, 3414, 6, 85, 85), 'reader').
name(m_get_last_char_126, simple_name, lexer_1_expr31, name, range(lexer_1, 3421, 11, 85, 85), 'getLastChar').
name(v_c_131, simple_name, lexer_1_code14, name, range(lexer_1, 3491, 1, 88, 88), 'c').
name(f_reader_122, simple_name, lexer_1_expr32, expression, range(lexer_1, 3495, 6, 88, 88), 'reader').
name(m_read_124, simple_name, lexer_1_expr32, name, range(lexer_1, 3502, 4, 88, 88), 'read').
name(v_eol_132, simple_name, lexer_1_code16, name, range(lexer_1, 3708, 3, 93, 93), 'eol').
name(m_read_end_of_line_134, simple_name, lexer_1_expr33, name, range(lexer_1, 3714, 13, 93, 93), 'readEndOfLine').
name(v_c_131, simple_name, lexer_1_expr33, (arguments, 0), range(lexer_1, 3728, 1, 93, 93), 'c').
name(f_ignore_empty_lines_128, simple_name, lexer_1_stmt11, expression, range(lexer_1, 3819, 16, 96, 96), 'ignoreEmptyLines').
name(m_is_end_of_file_135, simple_name, lexer_1_expr35, name, range(lexer_1, 4424, 11, 112, 112), 'isEndOfFile').
name(v_last_char_130, simple_name, lexer_1_expr35, (arguments, 0), range(lexer_1, 4436, 8, 112, 112), 'lastChar').
name(m_is_delimiter_136, simple_name, lexer_1_expr39, name, range(lexer_1, 4451, 11, 112, 112), 'isDelimiter').
name(v_last_char_130, simple_name, lexer_1_expr39, (arguments, 0), range(lexer_1, 4463, 8, 112, 112), 'lastChar').
name(m_is_end_of_file_135, simple_name, lexer_1_expr40, name, range(lexer_1, 4476, 11, 112, 112), 'isEndOfFile').
name(v_c_131, simple_name, lexer_1_expr40, (arguments, 0), range(lexer_1, 4488, 1, 112, 112), 'c').
name(m_is_start_of_line_137, simple_name, lexer_1_expr42, name, range(lexer_1, 4637, 13, 118, 118), 'isStartOfLine').
name(v_last_char_130, simple_name, lexer_1_expr42, (arguments, 0), range(lexer_1, 4651, 8, 118, 118), 'lastChar').
name(m_is_comment_start_138, simple_name, lexer_1_expr43, name, range(lexer_1, 4664, 14, 118, 118), 'isCommentStart').
name(v_c_131, simple_name, lexer_1_expr43, (arguments, 0), range(lexer_1, 4679, 1, 118, 118), 'c').
name(q_type_3, qualified_name, lexer_1_expr44, left_operand, range(lexer_1, 5165, 10, 132, 132), 'token.type').
name(p_token_129, simple_name, q_type_3, qualifier, range(lexer_1, 5165, 5, 132, 132), 'token').
name(f_invalid_133, simple_name, lexer_1_expr44, right_operand, range(lexer_1, 5179, 7, 132, 132), 'INVALID').
name(f_ignore_surrounding_spaces_127, simple_name, lexer_1_stmt15, expression, range(lexer_1, 5264, 23, 134, 134), 'ignoreSurroundingSpaces').
name(m_is_delimiter_136, simple_name, lexer_1_expr45, name, range(lexer_1, 5539, 11, 142, 142), 'isDelimiter').
name(v_c_131, simple_name, lexer_1_expr45, (arguments, 0), range(lexer_1, 5551, 1, 142, 142), 'c').
name(v_eol_132, simple_name, lexer_1_stmt17, expression, range(lexer_1, 5664, 3, 145, 145), 'eol').
name(m_is_quote_char_139, simple_name, lexer_1_expr46, name, range(lexer_1, 5835, 11, 149, 149), 'isQuoteChar').
name(v_c_131, simple_name, lexer_1_expr46, (arguments, 0), range(lexer_1, 5847, 1, 149, 149), 'c').
name(m_is_end_of_file_135, simple_name, lexer_1_expr47, name, range(lexer_1, 5969, 11, 152, 152), 'isEndOfFile').
name(v_c_131, simple_name, lexer_1_expr47, (arguments, 0), range(lexer_1, 5981, 1, 152, 152), 'c').
name(m_parse_simple_token_140, simple_name, lexer_1_expr48, name, range(lexer_1, 6344, 16, 160, 160), 'parseSimpleToken').
name(p_token_129, simple_name, lexer_1_expr48, (arguments, 0), range(lexer_1, 6361, 5, 160, 160), 'token').
name(v_c_131, simple_name, lexer_1_expr48, (arguments, 1), range(lexer_1, 6368, 1, 160, 160), 'c').
name(p_token_129, simple_name, lexer_1_stmt21, expression, range(lexer_1, 6411, 5, 163, 163), 'token').
name(m_read_end_of_line_134, simple_name, lexer_1_expr49, name, range(lexer_1, 7317, 13, 188, 188), 'readEndOfLine').
name(p_ch_135, simple_name, lexer_1_expr49, (arguments, 0), range(lexer_1, 7331, 2, 188, 188), 'ch').
name(m_is_end_of_file_135, simple_name, lexer_1_expr50, name, range(lexer_1, 7423, 11, 191, 191), 'isEndOfFile').
name(p_ch_135, simple_name, lexer_1_expr50, (arguments, 0), range(lexer_1, 7435, 2, 191, 191), 'ch').
name(q_type_4, qualified_name, lexer_1_expr51, left_hand_side, range(lexer_1, 7458, 10, 192, 192), 'token.type').
name(p_token_134, simple_name, q_type_4, qualifier, range(lexer_1, 7458, 5, 192, 192), 'token').
name(f_eof_136, simple_name, lexer_1_expr51, right_hand_side, range(lexer_1, 7471, 3, 192, 192), 'EOF').
name(q_is_ready_5, qualified_name, lexer_1_expr52, left_hand_side, range(lexer_1, 7492, 13, 193, 193), 'token.isReady').
name(p_token_134, simple_name, q_is_ready_5, qualifier, range(lexer_1, 7492, 5, 193, 193), 'token').
name(m_is_delimiter_136, simple_name, lexer_1_expr53, name, range(lexer_1, 7584, 11, 195, 195), 'isDelimiter').
name(p_ch_135, simple_name, lexer_1_expr53, (arguments, 0), range(lexer_1, 7596, 2, 195, 195), 'ch').
name(p_token_134, simple_name, q_type_6, qualifier, range(lexer_1, 7619, 5, 196, 196), 'token').
name(q_type_6, qualified_name, lexer_1_expr54, left_hand_side, range(lexer_1, 7619, 10, 196, 196), 'token.type').
name(f_token_82, simple_name, lexer_1_expr54, right_hand_side, range(lexer_1, 7632, 5, 196, 196), 'TOKEN').
name(m_is_escape_141, simple_name, lexer_1_expr55, name, range(lexer_1, 7685, 8, 198, 198), 'isEscape').
name(p_ch_135, simple_name, lexer_1_expr55, (arguments, 0), range(lexer_1, 7694, 2, 198, 198), 'ch').
name(q_content_6, qualified_name, lexer_1_expr56, expression, range(lexer_1, 8122, 13, 207, 207), 'token.content').
name(p_token_134, simple_name, q_content_6, qualifier, range(lexer_1, 8122, 5, 207, 207), 'token').
name(m_append_142, simple_name, lexer_1_expr56, name, range(lexer_1, 8136, 6, 207, 207), 'append').
name(p_ch_135, simple_name, lexer_1_expr57, expression, range(lexer_1, 8150, 2, 207, 207), 'ch').
name(p_ch_135, simple_name, lexer_1_expr58, left_hand_side, range(lexer_1, 8171, 2, 208, 208), 'ch').
name(f_reader_122, simple_name, lexer_1_expr59, expression, range(lexer_1, 8176, 6, 208, 208), 'reader').
name(m_read_124, simple_name, lexer_1_expr59, name, range(lexer_1, 8183, 4, 208, 208), 'read').
name(f_ignore_surrounding_spaces_127, simple_name, lexer_1_stmt34, expression, range(lexer_1, 8240, 23, 212, 212), 'ignoreSurroundingSpaces').
name(p_token_134, simple_name, lexer_1_stmt35, expression, range(lexer_1, 8340, 5, 216, 216), 'token').
name(p_c_138, simple_name, lexer_1_expr61, left_operand, range(lexer_1, 11752, 1, 291, 291), 'c').
name(f_disabled_139, simple_name, lexer_1_expr60, then_expression, range(lexer_1, 11764, 8, 291, 291), 'DISABLED').
name(p_c_138, simple_name, lexer_1_expr62, expression, range(lexer_1, 11775, 1, 291, 291), 'c').
name(m_char_value_7, simple_name, lexer_1_expr62, name, range(lexer_1, 11777, 9, 291, 291), 'charValue').
name(p_ch_141, simple_name, lexer_1_expr64, left_operand, range(lexer_1, 14171, 2, 364, 364), 'ch').
name(f_cr_13, simple_name, lexer_1_expr64, right_operand, range(lexer_1, 14177, 2, 364, 364), 'CR').
name(f_reader_122, simple_name, lexer_1_expr66, expression, range(lexer_1, 14183, 6, 364, 364), 'reader').
name(m_look_ahead_129, simple_name, lexer_1_expr66, name, range(lexer_1, 14190, 9, 364, 364), 'lookAhead').
name(f_lf_12, simple_name, lexer_1_expr65, right_operand, range(lexer_1, 14205, 2, 364, 364), 'LF').
name(p_ch_141, simple_name, lexer_1_expr68, left_operand, range(lexer_1, 14332, 2, 368, 368), 'ch').
name(f_lf_12, simple_name, lexer_1_expr68, right_operand, range(lexer_1, 14338, 2, 368, 368), 'LF').
name(p_ch_141, simple_name, lexer_1_expr69, left_operand, range(lexer_1, 14344, 2, 368, 368), 'ch').
name(f_cr_13, simple_name, lexer_1_expr69, right_operand, range(lexer_1, 14350, 2, 368, 368), 'CR').
name(f_reader_122, simple_name, lexer_1_expr70, expression, range(lexer_1, 14401, 6, 372, 372), 'reader').
name(m_is_closed_131, simple_name, lexer_1_expr70, name, range(lexer_1, 14408, 8, 372, 372), 'isClosed').
name(p_ch_143, simple_name, lexer_1_expr73, left_operand, range(lexer_1, 14921, 2, 389, 389), 'ch').
name(f_lf_12, simple_name, lexer_1_expr73, right_operand, range(lexer_1, 14927, 2, 389, 389), 'LF').
name(p_ch_143, simple_name, lexer_1_expr74, left_operand, range(lexer_1, 14933, 2, 389, 389), 'ch').
name(f_cr_13, simple_name, lexer_1_expr74, right_operand, range(lexer_1, 14939, 2, 389, 389), 'CR').
name(p_ch_143, simple_name, lexer_1_expr75, left_operand, range(lexer_1, 14945, 2, 389, 389), 'ch').
name(f_undefined_112, simple_name, lexer_1_expr75, right_operand, range(lexer_1, 14951, 9, 389, 389), 'UNDEFINED').
name(p_ch_144, simple_name, lexer_1_expr76, left_operand, range(lexer_1, 15105, 2, 396, 396), 'ch').
name(f_end_of_stream_145, simple_name, lexer_1_expr76, right_operand, range(lexer_1, 15111, 13, 396, 396), 'END_OF_STREAM').
name(p_ch_146, simple_name, lexer_1_expr77, left_operand, range(lexer_1, 15188, 2, 400, 400), 'ch').
name(f_delimiter_123, simple_name, lexer_1_expr77, right_operand, range(lexer_1, 15194, 9, 400, 400), 'delimiter').
name(p_ch_147, simple_name, lexer_1_expr78, left_operand, range(lexer_1, 15264, 2, 404, 404), 'ch').
name(f_escape_124, simple_name, lexer_1_expr78, right_operand, range(lexer_1, 15270, 6, 404, 404), 'escape').
name(p_ch_148, simple_name, lexer_1_expr79, left_operand, range(lexer_1, 15340, 2, 408, 408), 'ch').
name(f_quote_char_125, simple_name, lexer_1_expr79, right_operand, range(lexer_1, 15346, 9, 408, 408), 'quoteChar').
name(p_ch_149, simple_name, lexer_1_expr80, left_operand, range(lexer_1, 15422, 2, 412, 412), 'ch').
name(f_comment_start_126, simple_name, lexer_1_expr80, right_operand, range(lexer_1, 15428, 12, 412, 412), 'commentStart').
%token_1 - org.apache.commons.csv.Token
name(t_token_10, simple_name, token_1_code2, name, range(token_1, 1037, 5, 29, 29), 'Token').
name(t_type_11, simple_name, token_1_code4, name, range(token_1, 1168, 4, 34, 34), 'Type').
name(f_invalid_133, simple_name, token_1_code5, name, range(token_1, 1260, 7, 36, 36), 'INVALID').
name(f_token_82, simple_name, token_1_code6, name, range(token_1, 1354, 5, 39, 39), 'TOKEN').
name(f_eof_136, simple_name, token_1_code7, name, range(token_1, 1449, 3, 42, 42), 'EOF').
name(f_eorecord_155, simple_name, token_1_code8, name, range(token_1, 1532, 8, 45, 45), 'EORECORD').
name(f_comment_156, simple_name, token_1_code9, name, range(token_1, 1591, 7, 48, 48), 'COMMENT').
name(f_type_80, simple_name, token_1_code12, name, range(token_1, 1643, 4, 52, 52), 'type').
name(f_invalid_133, simple_name, token_1_code12, initializer, range(token_1, 1650, 7, 52, 52), 'INVALID').
name(f_content_71, simple_name, token_1_code16, name, range(token_1, 1715, 7, 55, 55), 'content').
name(f_initial_token_length_157, simple_name, token_1_expr1, (arguments, 0), range(token_1, 1743, 20, 55, 55), 'INITIAL_TOKEN_LENGTH').
name(f_content_71, simple_name, token_1_expr2, expression, range(token_1, 1906, 7, 61, 61), 'content').
name(m_set_length_151, simple_name, token_1_expr2, name, range(token_1, 1914, 9, 61, 61), 'setLength').
name(f_type_80, simple_name, token_1_expr3, left_hand_side, range(token_1, 1936, 4, 62, 62), 'type').
name(f_invalid_133, simple_name, token_1_expr3, right_hand_side, range(token_1, 1943, 7, 62, 62), 'INVALID').
name(f_is_ready_81, simple_name, token_1_expr4, left_hand_side, range(token_1, 1960, 7, 63, 63), 'isReady').
%assertions_1 - org.apache.commons.csv.Assertions
name(p_parameter_1, simple_name, assertions_1_expr1, left_operand, range(assertions_1, 1105, 9, 32, 32), 'parameter').
%csvrecord_1 - org.apache.commons.csv.CSVRecord
name(f_empty_string_array_85, simple_name, csvrecord_1_code10, name, range(csvrecord_1, 1194, 18, 35, 35), 'EMPTY_STRING_ARRAY').
name(p_comment_88, simple_name, csvrecord_1_code15, name, range(csvrecord_1, 1697, 7, 52, 52), 'comment').
name(p_record_number_89, simple_name, csvrecord_1_code18, name, range(csvrecord_1, 1717, 12, 52, 52), 'recordNumber').
name(f_record_number_90, simple_name, csvrecord_1_expr3, name, range(csvrecord_1, 1746, 12, 53, 53), 'recordNumber').
name(p_record_number_89, simple_name, csvrecord_1_expr2, right_hand_side, range(csvrecord_1, 1761, 12, 53, 53), 'recordNumber').
name(f_values_91, simple_name, csvrecord_1_expr6, name, range(csvrecord_1, 1788, 6, 54, 54), 'values').
name(p_values_86, simple_name, csvrecord_1_expr9, left_operand, range(csvrecord_1, 1797, 6, 54, 54), 'values').
name(p_values_86, simple_name, csvrecord_1_expr7, then_expression, range(csvrecord_1, 1814, 6, 54, 54), 'values').
name(f_empty_string_array_85, simple_name, csvrecord_1_expr7, else_expression, range(csvrecord_1, 1823, 18, 54, 54), 'EMPTY_STRING_ARRAY').
name(f_mapping_92, simple_name, csvrecord_1_expr11, name, range(csvrecord_1, 1856, 7, 55, 55), 'mapping').
name(p_mapping_87, simple_name, csvrecord_1_expr10, right_hand_side, range(csvrecord_1, 1866, 7, 55, 55), 'mapping').
name(f_comment_93, simple_name, csvrecord_1_expr14, name, range(csvrecord_1, 1888, 7, 56, 56), 'comment').
name(p_comment_88, simple_name, csvrecord_1_expr13, right_hand_side, range(csvrecord_1, 1898, 7, 56, 56), 'comment').
name(v_entry_100, simple_name, csvrecord_1_code22, name, range(csvrecord_1, 5785, 5, 180, 180), 'entry').
name(f_mapping_92, simple_name, csvrecord_1_expr16, expression, range(csvrecord_1, 5793, 7, 180, 180), 'mapping').
name(m_entry_set_93, simple_name, csvrecord_1_expr16, name, range(csvrecord_1, 5801, 8, 180, 180), 'entrySet').
name(m_put_in_92, simple_name, csvrecord_1_expr17, name, range(csvrecord_1, 6615, 5, 214, 214), 'putIn').
name(f_values_91, simple_name, q_length_2, qualifier, range(csvrecord_1, 6649, 6, 214, 214), 'values').
name(q_length_2, qualified_name, csvrecord_1_expr18, (arguments, 0), range(csvrecord_1, 6649, 13, 214, 214), 'values.length').
%csvrecord_test_1 - org.apache.commons.csv.CSVRecordTest
name(t_csvrecord_test_6, simple_name, csvrecord_test_1_code2, name, range(csvrecord_test_1, 1353, 13, 37, 37), 'CSVRecordTest').
name(t_enum_fixture_7, simple_name, csvrecord_test_1_code4, name, range(csvrecord_test_1, 1387, 11, 39, 39), 'EnumFixture').
name(f_unknown_column_101, simple_name, csvrecord_test_1_code6, name, range(csvrecord_test_1, 1401, 14, 39, 39), 'UNKNOWN_COLUMN').
name(f_values_102, simple_name, csvrecord_test_1_expr1, left_hand_side, range(csvrecord_test_1, 1601, 6, 47, 47), 'values').
name(f_record_103, simple_name, csvrecord_test_1_expr4, left_hand_side, range(csvrecord_test_1, 1650, 6, 48, 48), 'record').
name(f_values_102, simple_name, csvrecord_test_1_expr5, (arguments, 0), range(csvrecord_test_1, 1673, 6, 48, 48), 'values').
name(f_header_104, simple_name, csvrecord_test_1_expr6, left_hand_side, range(csvrecord_test_1, 1705, 6, 49, 49), 'header').
name(f_header_104, simple_name, csvrecord_test_1_expr8, expression, range(csvrecord_test_1, 1754, 6, 50, 50), 'header').
name(m_put_102, simple_name, csvrecord_test_1_expr8, name, range(csvrecord_test_1, 1761, 3, 50, 50), 'put').
name(t_integer_8, simple_name, csvrecord_test_1_expr9, expression, range(csvrecord_test_1, 1774, 7, 50, 50), 'Integer').
name(m_value_of_103, simple_name, csvrecord_test_1_expr9, name, range(csvrecord_test_1, 1782, 7, 50, 50), 'valueOf').
name(f_header_104, simple_name, csvrecord_test_1_expr10, expression, range(csvrecord_test_1, 1803, 6, 51, 51), 'header').
name(m_put_102, simple_name, csvrecord_test_1_expr10, name, range(csvrecord_test_1, 1810, 3, 51, 51), 'put').
name(t_integer_8, simple_name, csvrecord_test_1_expr11, expression, range(csvrecord_test_1, 1824, 7, 51, 51), 'Integer').
name(m_value_of_103, simple_name, csvrecord_test_1_expr11, name, range(csvrecord_test_1, 1832, 7, 51, 51), 'valueOf').
name(f_header_104, simple_name, csvrecord_test_1_expr12, expression, range(csvrecord_test_1, 1853, 6, 52, 52), 'header').
name(m_put_102, simple_name, csvrecord_test_1_expr12, name, range(csvrecord_test_1, 1860, 3, 52, 52), 'put').
name(t_integer_8, simple_name, csvrecord_test_1_expr13, expression, range(csvrecord_test_1, 1873, 7, 52, 52), 'Integer').
name(m_value_of_103, simple_name, csvrecord_test_1_expr13, name, range(csvrecord_test_1, 1881, 7, 52, 52), 'valueOf').
name(f_record_with_header_105, simple_name, csvrecord_test_1_expr14, left_hand_side, range(csvrecord_test_1, 1902, 16, 53, 53), 'recordWithHeader').
name(f_values_102, simple_name, csvrecord_test_1_expr15, (arguments, 0), range(csvrecord_test_1, 1935, 6, 53, 53), 'values').
name(f_header_104, simple_name, csvrecord_test_1_expr15, (arguments, 1), range(csvrecord_test_1, 1943, 6, 53, 53), 'header').
name(v_parser_106, simple_name, csvrecord_test_1_code20, name, range(csvrecord_test_1, 5825, 6, 173, 173), 'parser').
name(t_csvparser_5, simple_name, csvrecord_test_1_expr16, expression, range(csvrecord_test_1, 5835, 9, 173, 173), 'CSVParser').
name(m_parse_49, simple_name, csvrecord_test_1_expr16, name, range(csvrecord_test_1, 5845, 5, 173, 173), 'parse').
name(t_csvformat_9, simple_name, csvrecord_test_1_expr17, expression, range(csvrecord_test_1, 5858, 9, 173, 173), 'CSVFormat').
name(m_new_format_8, simple_name, csvrecord_test_1_expr17, name, range(csvrecord_test_1, 5868, 9, 173, 173), 'newFormat').
name(v_short_rec_107, simple_name, csvrecord_test_1_code23, name, range(csvrecord_test_1, 5908, 8, 174, 174), 'shortRec').
name(v_parser_106, simple_name, csvrecord_test_1_expr19, expression, range(csvrecord_test_1, 5919, 6, 174, 174), 'parser').
name(m_iterator_69, simple_name, csvrecord_test_1_expr19, name, range(csvrecord_test_1, 5926, 8, 174, 174), 'iterator').
name(m_next_121, simple_name, csvrecord_test_1_expr18, name, range(csvrecord_test_1, 5937, 4, 174, 174), 'next').
name(v_map_108, simple_name, csvrecord_test_1_code28, name, range(csvrecord_test_1, 5972, 3, 175, 175), 'map').
name(v_short_rec_107, simple_name, csvrecord_test_1_expr20, expression, range(csvrecord_test_1, 5978, 8, 175, 175), 'shortRec').
name(m_to_map_96, simple_name, csvrecord_test_1_expr20, name, range(csvrecord_test_1, 5987, 5, 175, 175), 'toMap').

%%% Literals
%csvparser_1 - org.apache.commons.csv.CSVParser
literal(csvparser_1_literal1, string_literal, csvparser_1_expr1, (arguments, 1), range(csvparser_1, 6143, 8, 174, 174), "string").
literal(csvparser_1_literal2, string_literal, csvparser_1_expr2, (arguments, 1), range(csvparser_1, 6189, 8, 175, 175), "format").
literal(csvparser_1_literal3, string_literal, csvparser_1_expr7, (arguments, 1), range(csvparser_1, 8681, 8, 242, 242), "reader").
literal(csvparser_1_literal4, string_literal, csvparser_1_expr8, (arguments, 1), range(csvparser_1, 8727, 8, 243, 243), "format").
literal(csvparser_1_literal5, null_literal, csvparser_1_expr30, right_operand, range(csvparser_1, 9122, 4, 254, 254), null).
literal(csvparser_1_literal6, null_literal, csvparser_1_code45, initializer, range(csvparser_1, 12366, 4, 358, 358), null).
literal(csvparser_1_literal7, null_literal, csvparser_1_expr37, right_operand, range(csvparser_1, 12463, 4, 360, 360), null).
literal(csvparser_1_literal8, null_literal, csvparser_1_expr48, right_hand_side, range(csvparser_1, 14938, 4, 432, 432), null).
literal(csvparser_1_literal9, null_literal, csvparser_1_expr51, right_operand, range(csvparser_1, 14973, 4, 434, 434), null).
literal(csvparser_1_literal10, null_literal, csvparser_1_expr55, right_operand, range(csvparser_1, 15116, 4, 437, 437), null).
literal(csvparser_1_literal11, null_literal, csvparser_1_code63, initializer, range(csvparser_1, 15783, 4, 459, 459), null).
literal(csvparser_1_literal12, null_literal, csvparser_1_code65, initializer, range(csvparser_1, 15845, 4, 461, 461), null).
literal(csvparser_1_literal14, null_literal, csvparser_1_expr89, right_operand, range(csvparser_1, 17169, 4, 495, 495), null).
literal(csvparser_1_literal13, null_literal, csvparser_1_expr88, then_expression, range(csvparser_1, 17176, 4, 495, 495), null).
%csvformat_1 - org.apache.commons.csv.CSVFormat
literal(csvformat_1_literal1, null_literal, csvformat_1_expr1, (arguments, 2), range(csvformat_1, 5345, 4, 174, 174), null).
literal(csvformat_1_literal2, null_literal, csvformat_1_expr1, (arguments, 3), range(csvformat_1, 5351, 4, 174, 174), null).
literal(csvformat_1_literal3, null_literal, csvformat_1_expr1, (arguments, 4), range(csvformat_1, 5357, 4, 174, 174), null).
literal(csvformat_1_literal4, boolean_literal, csvformat_1_expr1, (arguments, 5), range(csvformat_1, 5423, 5, 175, 175), false).
literal(csvformat_1_literal5, boolean_literal, csvformat_1_expr1, (arguments, 6), range(csvformat_1, 5430, 4, 175, 175), true).
literal(csvformat_1_literal6, null_literal, csvformat_1_expr1, (arguments, 8), range(csvformat_1, 5442, 4, 175, 175), null).
literal(csvformat_1_literal7, null_literal, csvformat_1_expr1, (arguments, 9), range(csvformat_1, 5448, 4, 175, 175), null).
literal(csvformat_1_literal8, boolean_literal, csvformat_1_expr1, (arguments, 10), range(csvformat_1, 5454, 5, 175, 175), false).
literal(csvformat_1_literal9, boolean_literal, csvformat_1_expr2, (arguments, 0), range(csvformat_1, 5818, 5, 186, 186), false).
literal(csvformat_1_literal10, boolean_literal, csvformat_1_expr3, (arguments, 0), range(csvformat_1, 6631, 5, 210, 210), false).
literal(csvformat_1_literal11, null_literal, csvformat_1_expr10, right_operand, range(csvformat_1, 8188, 4, 255, 255), null).
literal(csvformat_1_literal12, null_literal, csvformat_1_expr13, (arguments, 1), range(csvformat_1, 8647, 4, 267, 267), null).
literal(csvformat_1_literal13, null_literal, csvformat_1_expr13, (arguments, 2), range(csvformat_1, 8653, 4, 267, 267), null).
literal(csvformat_1_literal14, null_literal, csvformat_1_expr13, (arguments, 3), range(csvformat_1, 8659, 4, 267, 267), null).
literal(csvformat_1_literal15, null_literal, csvformat_1_expr13, (arguments, 4), range(csvformat_1, 8665, 4, 267, 267), null).
literal(csvformat_1_literal16, boolean_literal, csvformat_1_expr13, (arguments, 5), range(csvformat_1, 8671, 5, 267, 267), false).
literal(csvformat_1_literal17, boolean_literal, csvformat_1_expr13, (arguments, 6), range(csvformat_1, 8678, 5, 267, 267), false).
literal(csvformat_1_literal18, null_literal, csvformat_1_expr13, (arguments, 7), range(csvformat_1, 8685, 4, 267, 267), null).
literal(csvformat_1_literal19, null_literal, csvformat_1_expr13, (arguments, 8), range(csvformat_1, 8691, 4, 267, 267), null).
literal(csvformat_1_literal20, null_literal, csvformat_1_expr13, (arguments, 9), range(csvformat_1, 8697, 4, 267, 267), null).
literal(csvformat_1_literal21, boolean_literal, csvformat_1_expr13, (arguments, 10), range(csvformat_1, 8703, 5, 267, 267), false).
literal(csvformat_1_literal22, null_literal, csvformat_1_expr42, right_operand, range(csvformat_1, 10812, 4, 313, 313), null).
literal(csvformat_1_literal23, null_literal, csvformat_1_expr43, right_hand_side, range(csvformat_1, 10846, 4, 314, 314), null).
literal(csvformat_1_literal25, null_literal, csvformat_1_expr50, right_operand, range(csvformat_1, 14683, 4, 447, 447), null).
literal(csvformat_1_literal24, null_literal, csvformat_1_expr49, else_expression, range(csvformat_1, 14707, 4, 447, 447), null).
literal(csvformat_1_literal26, null_literal, csvformat_1_expr53, right_operand, range(csvformat_1, 20704, 4, 642, 642), null).
literal(csvformat_1_literal27, null_literal, csvformat_1_expr57, right_operand, range(csvformat_1, 20935, 4, 647, 647), null).
literal(csvformat_1_literal28, null_literal, csvformat_1_expr61, right_operand, range(csvformat_1, 21163, 4, 652, 652), null).
literal(csvformat_1_literal29, null_literal, csvformat_1_expr65, right_operand, range(csvformat_1, 21407, 4, 657, 657), null).
literal(csvformat_1_literal30, null_literal, csvformat_1_expr68, right_operand, range(csvformat_1, 21641, 4, 662, 662), null).
literal(csvformat_1_literal31, null_literal, csvformat_1_expr71, right_operand, range(csvformat_1, 21869, 4, 667, 667), null).
%constants_1 - org.apache.commons.csv.Constants
literal(constants_1_literal1, character_literal, constants_1_expr1, (arguments, 0), range(constants_1, 1216, 3, 36, 36), '"').
%quote_1 - org.apache.commons.csv.Quote
%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
literal(extended_buffered_reader_1_literal1, number_literal, extended_buffered_reader_1_code10, initializer, range(extended_buffered_reader_1, 1595, 1, 43, 43), 0).
%lexer_1 - org.apache.commons.csv.Lexer
literal(lexer_1_literal1, boolean_literal, lexer_1_expr52, right_hand_side, range(lexer_1, 7508, 4, 193, 193), true).
literal(lexer_1_literal2, null_literal, lexer_1_expr61, right_operand, range(lexer_1, 11757, 4, 291, 291), null).
%token_1 - org.apache.commons.csv.Token
literal(token_1_literal1, number_literal, token_1_expr2, (arguments, 0), range(token_1, 1924, 1, 61, 61), 0).
literal(token_1_literal2, boolean_literal, token_1_expr4, right_hand_side, range(token_1, 1970, 5, 63, 63), false).
%assertions_1 - org.apache.commons.csv.Assertions
literal(assertions_1_literal1, null_literal, assertions_1_expr1, right_operand, range(assertions_1, 1118, 4, 32, 32), null).
%csvrecord_1 - org.apache.commons.csv.CSVRecord
literal(csvrecord_1_literal1, number_literal, csvrecord_1_expr1, (dimensions, 0), range(csvrecord_1, 1226, 1, 35, 35), 0).
literal(csvrecord_1_literal2, null_literal, csvrecord_1_expr9, right_operand, range(csvrecord_1, 1807, 4, 54, 54), null).
%csvrecord_test_1 - org.apache.commons.csv.CSVRecordTest
literal(csvrecord_test_1_literal1, string_literal, csvrecord_test_1_expr3, (expressions, 0), range(csvrecord_test_1, 1625, 3, 47, 47), "A").
literal(csvrecord_test_1_literal2, string_literal, csvrecord_test_1_expr3, (expressions, 1), range(csvrecord_test_1, 1630, 3, 47, 47), "B").
literal(csvrecord_test_1_literal3, string_literal, csvrecord_test_1_expr3, (expressions, 2), range(csvrecord_test_1, 1635, 3, 47, 47), "C").
literal(csvrecord_test_1_literal4, null_literal, csvrecord_test_1_expr5, (arguments, 1), range(csvrecord_test_1, 1681, 4, 48, 48), null).
literal(csvrecord_test_1_literal5, null_literal, csvrecord_test_1_expr5, (arguments, 2), range(csvrecord_test_1, 1687, 4, 48, 48), null).
literal(csvrecord_test_1_literal6, number_literal, csvrecord_test_1_expr5, (arguments, 3), range(csvrecord_test_1, 1693, 1, 48, 48), 0).
literal(csvrecord_test_1_literal7, string_literal, csvrecord_test_1_expr8, (arguments, 0), range(csvrecord_test_1, 1765, 7, 50, 50), "first").
literal(csvrecord_test_1_literal8, number_literal, csvrecord_test_1_expr9, (arguments, 0), range(csvrecord_test_1, 1790, 1, 50, 50), 0).
literal(csvrecord_test_1_literal9, string_literal, csvrecord_test_1_expr10, (arguments, 0), range(csvrecord_test_1, 1814, 8, 51, 51), "second").
literal(csvrecord_test_1_literal10, number_literal, csvrecord_test_1_expr11, (arguments, 0), range(csvrecord_test_1, 1840, 1, 51, 51), 1).
literal(csvrecord_test_1_literal11, string_literal, csvrecord_test_1_expr12, (arguments, 0), range(csvrecord_test_1, 1864, 7, 52, 52), "third").
literal(csvrecord_test_1_literal12, number_literal, csvrecord_test_1_expr13, (arguments, 0), range(csvrecord_test_1, 1889, 1, 52, 52), 2).
literal(csvrecord_test_1_literal13, null_literal, csvrecord_test_1_expr15, (arguments, 2), range(csvrecord_test_1, 1951, 4, 53, 53), null).
literal(csvrecord_test_1_literal14, number_literal, csvrecord_test_1_expr15, (arguments, 3), range(csvrecord_test_1, 1957, 1, 53, 53), 0).
literal(csvrecord_test_1_literal15, string_literal, csvrecord_test_1_expr16, (arguments, 0), range(csvrecord_test_1, 5851, 5, 173, 173), "a,b").
literal(csvrecord_test_1_literal16, character_literal, csvrecord_test_1_expr17, (arguments, 0), range(csvrecord_test_1, 5878, 3, 173, 173), ',').

%%% Other Code Entities
%csvparser_1 - org.apache.commons.csv.CSVParser
code(csvparser_1_code1, compilation_unit, range(csvparser_1, 0, 17393, 1, -1)).
code(csvparser_1_code2, type_declaration, csvparser_1_code1, (types, 0), range(csvparser_1, 1363, 16029, 40, 502)).
code(csvparser_1_code3, method_declaration, csvparser_1_code2, (body_declarations, 1), range(csvparser_1, 5526, 744, 160, 178)).
code(csvparser_1_code4, simple_type, csvparser_1_expr3, type, range(csvparser_1, 6220, 9, 177, 177)).
code(csvparser_1_code5, simple_type, csvparser_1_expr4, type, range(csvparser_1, 6234, 12, 177, 177)).
code(csvparser_1_code6, field_declaration, csvparser_1_code2, (body_declarations, 6), range(csvparser_1, 7601, 138, 217, 218)).
code(csvparser_1_code7, modifier, csvparser_1_code6, (modifiers, 0), range(csvparser_1, 7679, 7, 218, 218)).
code(csvparser_1_code8, modifier, csvparser_1_code6, (modifiers, 1), range(csvparser_1, 7687, 5, 218, 218)).
code(csvparser_1_code9, parameterized_type, csvparser_1_code6, type, range(csvparser_1, 7693, 12, 218, 218)).
code(csvparser_1_code10, simple_type, csvparser_1_code9, type, range(csvparser_1, 7693, 4, 218, 218)).
code(csvparser_1_code11, simple_type, csvparser_1_code9, (type_arguments, 0), range(csvparser_1, 7698, 6, 218, 218)).
code(csvparser_1_code12, variable_declaration_fragment, csvparser_1_code6, (fragments, 0), range(csvparser_1, 7706, 32, 218, 218)).
code(csvparser_1_code14, simple_type, csvparser_1_code13, type, range(csvparser_1, 7719, 9, 218, 218)).
code(csvparser_1_code13, parameterized_type, csvparser_1_expr5, type, range(csvparser_1, 7719, 17, 218, 218)).
code(csvparser_1_code15, simple_type, csvparser_1_code13, (type_arguments, 0), range(csvparser_1, 7729, 6, 218, 218)).
code(csvparser_1_code17, modifier, csvparser_1_code16, (modifiers, 0), range(csvparser_1, 7777, 7, 222, 222)).
code(csvparser_1_code16, field_declaration, csvparser_1_code2, (body_declarations, 8), range(csvparser_1, 7777, 48, 222, 222)).
code(csvparser_1_code18, modifier, csvparser_1_code16, (modifiers, 1), range(csvparser_1, 7785, 5, 222, 222)).
code(csvparser_1_code19, simple_type, csvparser_1_code16, type, range(csvparser_1, 7791, 5, 222, 222)).
code(csvparser_1_code20, variable_declaration_fragment, csvparser_1_code16, (fragments, 0), range(csvparser_1, 7797, 27, 222, 222)).
code(csvparser_1_code21, simple_type, csvparser_1_expr6, type, range(csvparser_1, 7817, 5, 222, 222)).
code(csvparser_1_code22, method_declaration, csvparser_1_code2, (body_declarations, 9), range(csvparser_1, 7831, 1096, 224, 249)).
code(csvparser_1_code23, modifier, csvparser_1_code22, (modifiers, 0), range(csvparser_1, 8563, 6, 241, 241)).
code(csvparser_1_code25, modifier, csvparser_1_code24, (modifiers, 0), range(csvparser_1, 8580, 5, 241, 241)).
code(csvparser_1_code24, single_variable_declaration, csvparser_1_code22, (parameters, 0), range(csvparser_1, 8580, 19, 241, 241)).
code(csvparser_1_code26, simple_type, csvparser_1_code24, type, range(csvparser_1, 8586, 6, 241, 241)).
code(csvparser_1_code27, single_variable_declaration, csvparser_1_code22, (parameters, 1), range(csvparser_1, 8601, 22, 241, 241)).
code(csvparser_1_code28, modifier, csvparser_1_code27, (modifiers, 0), range(csvparser_1, 8601, 5, 241, 241)).
code(csvparser_1_code29, simple_type, csvparser_1_code27, type, range(csvparser_1, 8607, 9, 241, 241)).
code(csvparser_1_code30, simple_type, csvparser_1_code22, (thrown_exception_types, 0), range(csvparser_1, 8632, 11, 241, 241)).
code(csvparser_1_code31, simple_type, csvparser_1_expr15, type, range(csvparser_1, 8821, 5, 247, 247)).
code(csvparser_1_code32, simple_type, csvparser_1_expr17, type, range(csvparser_1, 8839, 22, 247, 247)).
code(csvparser_1_code33, method_declaration, csvparser_1_code2, (body_declarations, 10), range(csvparser_1, 8933, 345, 251, 259)).
code(csvparser_1_code34, modifier, csvparser_1_stmt10, (modifiers, 0), range(csvparser_1, 8973, 5, 252, 252)).
code(csvparser_1_code35, simple_type, csvparser_1_stmt10, type, range(csvparser_1, 8979, 6, 252, 252)).
code(csvparser_1_code36, variable_declaration_fragment, csvparser_1_stmt10, (fragments, 0), range(csvparser_1, 8986, 45, 252, 252)).
code(csvparser_1_code37, modifier, csvparser_1_stmt11, (modifiers, 0), range(csvparser_1, 9041, 5, 253, 253)).
code(csvparser_1_code38, simple_type, csvparser_1_stmt11, type, range(csvparser_1, 9047, 6, 253, 253)).
code(csvparser_1_code39, variable_declaration_fragment, csvparser_1_stmt11, (fragments, 0), range(csvparser_1, 9054, 40, 253, 253)).
code(csvparser_1_code40, method_declaration, csvparser_1_code2, (body_declarations, 17), range(csvparser_1, 12013, 1539, 351, 389)).
code(csvparser_1_code41, parameterized_type, csvparser_1_stmt14, type, range(csvparser_1, 12336, 20, 358, 358)).
code(csvparser_1_code42, simple_type, csvparser_1_code41, type, range(csvparser_1, 12336, 3, 358, 358)).
code(csvparser_1_code43, simple_type, csvparser_1_code41, (type_arguments, 0), range(csvparser_1, 12340, 6, 358, 358)).
code(csvparser_1_code44, simple_type, csvparser_1_code41, (type_arguments, 1), range(csvparser_1, 12348, 7, 358, 358)).
code(csvparser_1_code45, variable_declaration_fragment, csvparser_1_stmt14, (fragments, 0), range(csvparser_1, 12357, 13, 358, 358)).
code(csvparser_1_code46, modifier, csvparser_1_stmt15, (modifiers, 0), range(csvparser_1, 12380, 5, 359, 359)).
code(csvparser_1_code48, simple_type, csvparser_1_code47, element_type, range(csvparser_1, 12386, 6, 359, 359)).
code(csvparser_1_code47, array_type, csvparser_1_stmt15, type, range(csvparser_1, 12386, 8, 359, 359)).
code(csvparser_1_code49, dimension, csvparser_1_code47, (dimensions, 0), range(csvparser_1, 12392, 2, 359, 359)).
code(csvparser_1_code50, variable_declaration_fragment, csvparser_1_stmt15, (fragments, 0), range(csvparser_1, 12395, 38, 359, 359)).
code(csvparser_1_code51, method_declaration, csvparser_1_code2, (body_declarations, 18), range(csvparser_1, 13558, 71, 391, 393)).
code(csvparser_1_code52, method_declaration, csvparser_1_code2, (body_declarations, 19), range(csvparser_1, 13635, 1789, 395, 449)).
code(csvparser_1_code53, parameterized_type, csvparser_1_expr41, type, range(csvparser_1, 13960, 19, 404, 404)).
code(csvparser_1_code54, simple_type, csvparser_1_code53, type, range(csvparser_1, 13960, 8, 404, 404)).
code(csvparser_1_code55, simple_type, csvparser_1_code53, (type_arguments, 0), range(csvparser_1, 13969, 9, 404, 404)).
code(csvparser_1_code56, anonymous_class_declaration, csvparser_1_expr41, anonymous_class_declaration, range(csvparser_1, 13982, 1435, 404, 448)).
code(csvparser_1_code57, method_declaration, csvparser_1_code56, (body_declarations, 1), range(csvparser_1, 14036, 314, 407, 414)).
code(csvparser_1_code58, method_declaration, csvparser_1_code56, (body_declarations, 3), range(csvparser_1, 14684, 614, 427, 443)).
code(csvparser_1_code59, simple_type, csvparser_1_stmt23, type, range(csvparser_1, 14876, 9, 431, 431)).
code(csvparser_1_code60, variable_declaration_fragment, csvparser_1_stmt23, (fragments, 0), range(csvparser_1, 14886, 19, 431, 431)).
code(csvparser_1_code61, method_declaration, csvparser_1_code2, (body_declarations, 20), range(csvparser_1, 15430, 1959, 451, 500)).
code(csvparser_1_code62, simple_type, csvparser_1_stmt29, type, range(csvparser_1, 15764, 9, 459, 459)).
code(csvparser_1_code63, variable_declaration_fragment, csvparser_1_stmt29, (fragments, 0), range(csvparser_1, 15774, 13, 459, 459)).
code(csvparser_1_code64, simple_type, csvparser_1_stmt31, type, range(csvparser_1, 15826, 13, 461, 461)).
code(csvparser_1_code65, variable_declaration_fragment, csvparser_1_stmt31, (fragments, 0), range(csvparser_1, 15840, 9, 461, 461)).
code(csvparser_1_code66, modifier, csvparser_1_stmt42, (modifiers, 0), range(csvparser_1, 17140, 5, 495, 495)).
code(csvparser_1_code67, simple_type, csvparser_1_stmt42, type, range(csvparser_1, 17146, 6, 495, 495)).
code(csvparser_1_code68, variable_declaration_fragment, csvparser_1_stmt42, (fragments, 0), range(csvparser_1, 17153, 43, 495, 495)).
code(csvparser_1_code69, simple_type, csvparser_1_expr92, type, range(csvparser_1, 17223, 9, 496, 496)).
code(csvparser_1_code71, simple_type, csvparser_1_code70, element_type, range(csvparser_1, 17257, 6, 496, 496)).
code(csvparser_1_code70, array_type, csvparser_1_expr96, type, range(csvparser_1, 17257, 26, 496, 496)).
code(csvparser_1_code72, dimension, csvparser_1_code70, (dimensions, 0), range(csvparser_1, 17263, 20, 496, 496)).
%csvformat_1 - org.apache.commons.csv.CSVFormat
code(csvformat_1_code1, compilation_unit, range(csvformat_1, 0, 32282, 1, -1)).
code(csvformat_1_code2, type_declaration, csvformat_1_code1, (types, 0), range(csvformat_1, 1406, 30875, 36, 903)).
code(csvformat_1_code3, field_declaration, csvformat_1_code2, (body_declarations, 12), range(csvformat_1, 4900, 561, 161, 175)).
code(csvformat_1_code4, modifier, csvformat_1_code3, (modifiers, 0), range(csvformat_1, 5265, 6, 174, 174)).
code(csvformat_1_code5, modifier, csvformat_1_code3, (modifiers, 1), range(csvformat_1, 5272, 6, 174, 174)).
code(csvformat_1_code6, modifier, csvformat_1_code3, (modifiers, 2), range(csvformat_1, 5279, 5, 174, 174)).
code(csvformat_1_code7, simple_type, csvformat_1_code3, type, range(csvformat_1, 5285, 9, 174, 174)).
code(csvformat_1_code8, variable_declaration_fragment, csvformat_1_code3, (fragments, 0), range(csvformat_1, 5295, 165, 174, 175)).
code(csvformat_1_code9, simple_type, csvformat_1_expr1, type, range(csvformat_1, 5309, 9, 174, 174)).
code(csvformat_1_code10, field_declaration, csvformat_1_code2, (body_declarations, 13), range(csvformat_1, 5467, 358, 177, 186)).
code(csvformat_1_code11, modifier, csvformat_1_code10, (modifiers, 0), range(csvformat_1, 5749, 6, 186, 186)).
code(csvformat_1_code12, modifier, csvformat_1_code10, (modifiers, 1), range(csvformat_1, 5756, 6, 186, 186)).
code(csvformat_1_code13, modifier, csvformat_1_code10, (modifiers, 2), range(csvformat_1, 5763, 5, 186, 186)).
code(csvformat_1_code14, simple_type, csvformat_1_code10, type, range(csvformat_1, 5769, 9, 186, 186)).
code(csvformat_1_code15, variable_declaration_fragment, csvformat_1_code10, (fragments, 0), range(csvformat_1, 5779, 45, 186, 186)).
code(csvformat_1_code16, field_declaration, csvformat_1_code2, (body_declarations, 14), range(csvformat_1, 5831, 807, 188, 210)).
code(csvformat_1_code17, modifier, csvformat_1_code16, (modifiers, 0), range(csvformat_1, 6564, 6, 210, 210)).
code(csvformat_1_code18, modifier, csvformat_1_code16, (modifiers, 1), range(csvformat_1, 6571, 6, 210, 210)).
code(csvformat_1_code19, modifier, csvformat_1_code16, (modifiers, 2), range(csvformat_1, 6578, 5, 210, 210)).
code(csvformat_1_code20, simple_type, csvformat_1_code16, type, range(csvformat_1, 6584, 9, 210, 210)).
code(csvformat_1_code21, variable_declaration_fragment, csvformat_1_code16, (fragments, 0), range(csvformat_1, 6594, 43, 210, 210)).
code(csvformat_1_code22, field_declaration, csvformat_1_code2, (body_declarations, 15), range(csvformat_1, 6644, 217, 212, 216)).
code(csvformat_1_code23, modifier, csvformat_1_code22, (modifiers, 0), range(csvformat_1, 6726, 6, 213, 213)).
code(csvformat_1_code24, modifier, csvformat_1_code22, (modifiers, 1), range(csvformat_1, 6733, 6, 213, 213)).
code(csvformat_1_code25, modifier, csvformat_1_code22, (modifiers, 2), range(csvformat_1, 6740, 5, 213, 213)).
code(csvformat_1_code26, simple_type, csvformat_1_code22, type, range(csvformat_1, 6746, 9, 213, 213)).
code(csvformat_1_code27, variable_declaration_fragment, csvformat_1_code22, (fragments, 0), range(csvformat_1, 6756, 104, 213, 216)).
code(csvformat_1_code28, field_declaration, csvformat_1_code2, (body_declarations, 16), range(csvformat_1, 6867, 672, 218, 232)).
code(csvformat_1_code29, modifier, csvformat_1_code28, (modifiers, 0), range(csvformat_1, 7303, 6, 226, 226)).
code(csvformat_1_code30, modifier, csvformat_1_code28, (modifiers, 1), range(csvformat_1, 7310, 6, 226, 226)).
code(csvformat_1_code31, modifier, csvformat_1_code28, (modifiers, 2), range(csvformat_1, 7317, 5, 226, 226)).
code(csvformat_1_code32, simple_type, csvformat_1_code28, type, range(csvformat_1, 7323, 9, 226, 226)).
code(csvformat_1_code33, variable_declaration_fragment, csvformat_1_code28, (fragments, 0), range(csvformat_1, 7333, 205, 226, 232)).
code(csvformat_1_code34, method_declaration, csvformat_1_code2, (body_declarations, 17), range(csvformat_1, 7545, 312, 234, 244)).
code(csvformat_1_code35, method_declaration, csvformat_1_code2, (body_declarations, 18), range(csvformat_1, 7863, 366, 246, 256)).
code(csvformat_1_code36, method_declaration, csvformat_1_code2, (body_declarations, 19), range(csvformat_1, 8235, 481, 258, 268)).
code(csvformat_1_code37, simple_type, csvformat_1_expr13, type, range(csvformat_1, 8626, 9, 267, 267)).
code(csvformat_1_code38, method_declaration, csvformat_1_code2, (body_declarations, 20), range(csvformat_1, 8722, 2567, 270, 325)).
code(csvformat_1_code39, single_variable_declaration, csvformat_1_code38, (parameters, 8), range(csvformat_1, 10188, 23, 300, 300)).
code(csvformat_1_code40, modifier, csvformat_1_code39, (modifiers, 0), range(csvformat_1, 10188, 5, 300, 300)).
code(csvformat_1_code41, simple_type, csvformat_1_code39, type, range(csvformat_1, 10194, 6, 300, 300)).
code(csvformat_1_code42, single_variable_declaration, csvformat_1_code38, (parameters, 9), range(csvformat_1, 10213, 21, 300, 300)).
code(csvformat_1_code43, modifier, csvformat_1_code42, (modifiers, 0), range(csvformat_1, 10213, 5, 300, 300)).
code(csvformat_1_code44, array_type, csvformat_1_code42, type, range(csvformat_1, 10219, 8, 300, 300)).
code(csvformat_1_code45, simple_type, csvformat_1_code44, element_type, range(csvformat_1, 10219, 6, 300, 300)).
code(csvformat_1_code46, dimension, csvformat_1_code44, (dimensions, 0), range(csvformat_1, 10225, 2, 300, 300)).
code(csvformat_1_code48, modifier, csvformat_1_code47, (modifiers, 0), range(csvformat_1, 10236, 5, 300, 300)).
code(csvformat_1_code47, single_variable_declaration, csvformat_1_code38, (parameters, 10), range(csvformat_1, 10236, 30, 300, 300)).
code(csvformat_1_code49, primitive_type, csvformat_1_code47, type, range(csvformat_1, 10242, 7, 300, 300)).
code(csvformat_1_code50, method_declaration, csvformat_1_code2, (body_declarations, 23), range(csvformat_1, 13831, 221, 414, 421)).
code(csvformat_1_code51, method_declaration, csvformat_1_code2, (body_declarations, 24), range(csvformat_1, 14058, 203, 423, 430)).
code(csvformat_1_code52, method_declaration, csvformat_1_code2, (body_declarations, 25), range(csvformat_1, 14267, 176, 432, 439)).
code(csvformat_1_code53, method_declaration, csvformat_1_code2, (body_declarations, 26), range(csvformat_1, 14449, 269, 441, 448)).
code(csvformat_1_code54, method_declaration, csvformat_1_code2, (body_declarations, 27), range(csvformat_1, 14724, 327, 450, 458)).
code(csvformat_1_code55, method_declaration, csvformat_1_code2, (body_declarations, 28), range(csvformat_1, 15057, 330, 460, 468)).
code(csvformat_1_code56, method_declaration, csvformat_1_code2, (body_declarations, 29), range(csvformat_1, 15393, 556, 470, 485)).
code(csvformat_1_code57, method_declaration, csvformat_1_code2, (body_declarations, 30), range(csvformat_1, 15955, 235, 487, 494)).
code(csvformat_1_code58, method_declaration, csvformat_1_code2, (body_declarations, 41), range(csvformat_1, 20472, 1548, 636, 671)).
code(csvformat_1_code59, method_declaration, csvformat_1_code2, (body_declarations, 44), range(csvformat_1, 23612, 758, 707, 722)).
code(csvformat_1_code60, simple_type, csvformat_1_expr74, type, range(csvformat_1, 24183, 9, 720, 720)).
code(csvformat_1_code61, method_declaration, csvformat_1_code2, (body_declarations, 45), range(csvformat_1, 24376, 484, 724, 735)).
code(csvformat_1_code62, method_declaration, csvformat_1_code2, (body_declarations, 46), range(csvformat_1, 24866, 806, 737, 752)).
code(csvformat_1_code63, simple_type, csvformat_1_expr78, type, range(csvformat_1, 25485, 9, 750, 750)).
code(csvformat_1_code64, method_declaration, csvformat_1_code2, (body_declarations, 48), range(csvformat_1, 26589, 687, 776, 787)).
code(csvformat_1_code65, simple_type, csvformat_1_expr79, type, range(csvformat_1, 27089, 9, 785, 785)).
code(csvformat_1_code66, method_declaration, csvformat_1_code2, (body_declarations, 49), range(csvformat_1, 27282, 646, 789, 800)).
code(csvformat_1_code67, simple_type, csvformat_1_expr80, type, range(csvformat_1, 27741, 9, 798, 798)).
code(csvformat_1_code68, method_declaration, csvformat_1_code2, (body_declarations, 52), range(csvformat_1, 29333, 796, 835, 850)).
code(csvformat_1_code69, simple_type, csvformat_1_expr82, type, range(csvformat_1, 29942, 9, 848, 848)).
code(csvformat_1_code70, method_declaration, csvformat_1_code2, (body_declarations, 54), range(csvformat_1, 30680, 438, 865, 875)).
code(csvformat_1_code71, method_declaration, csvformat_1_code2, (body_declarations, 55), range(csvformat_1, 31124, 569, 877, 888)).
code(csvformat_1_code72, simple_type, csvformat_1_expr85, type, range(csvformat_1, 31506, 9, 886, 886)).
%constants_1 - org.apache.commons.csv.Constants
code(constants_1_code1, compilation_unit, range(constants_1, 0, 2135, 1, -1)).
code(constants_1_code2, type_declaration, constants_1_code1, (types, 0), range(constants_1, 837, 1297, 20, 75)).
code(constants_1_code4, modifier, constants_1_code3, (modifiers, 0), range(constants_1, 1155, 6, 36, 36)).
code(constants_1_code3, field_declaration, constants_1_code2, (body_declarations, 4), range(constants_1, 1155, 66, 36, 36)).
code(constants_1_code5, modifier, constants_1_code3, (modifiers, 1), range(constants_1, 1162, 5, 36, 36)).
code(constants_1_code6, simple_type, constants_1_code3, type, range(constants_1, 1168, 9, 36, 36)).
code(constants_1_code7, variable_declaration_fragment, constants_1_code3, (fragments, 0), range(constants_1, 1178, 42, 36, 36)).
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
code(extended_buffered_reader_1_code17, method_declaration, extended_buffered_reader_1_code2, (body_declarations, 10), range(extended_buffered_reader_1, 5065, 56, 160, 162)).
%lexer_1 - org.apache.commons.csv.Lexer
code(lexer_1_code1, compilation_unit, range(lexer_1, 0, 15824, 1, -1)).
code(lexer_1_code2, type_declaration, lexer_1_code1, (types, 0), range(lexer_1, 1530, 14293, 35, 431)).
code(lexer_1_code3, method_declaration, lexer_1_code2, (body_declarations, 8), range(lexer_1, 2291, 581, 60, 69)).
code(lexer_1_code5, modifier, lexer_1_code4, (modifiers, 0), range(lexer_1, 2387, 5, 61, 61)).
code(lexer_1_code4, single_variable_declaration, lexer_1_code3, (parameters, 0), range(lexer_1, 2387, 22, 61, 61)).
code(lexer_1_code6, simple_type, lexer_1_code4, type, range(lexer_1, 2393, 9, 61, 61)).
code(lexer_1_code8, modifier, lexer_1_code7, (modifiers, 0), range(lexer_1, 2411, 5, 61, 61)).
code(lexer_1_code7, single_variable_declaration, lexer_1_code3, (parameters, 1), range(lexer_1, 2411, 35, 61, 61)).
code(lexer_1_code9, simple_type, lexer_1_code7, type, range(lexer_1, 2417, 22, 61, 61)).
code(lexer_1_code10, method_declaration, lexer_1_code2, (body_declarations, 9), range(lexer_1, 2878, 3545, 71, 164)).
code(lexer_1_code11, primitive_type, lexer_1_stmt8, type, range(lexer_1, 3399, 3, 85, 85)).
code(lexer_1_code12, variable_declaration_fragment, lexer_1_stmt8, (fragments, 0), range(lexer_1, 3403, 31, 85, 85)).
code(lexer_1_code13, primitive_type, lexer_1_stmt9, type, range(lexer_1, 3487, 3, 88, 88)).
code(lexer_1_code14, variable_declaration_fragment, lexer_1_stmt9, (fragments, 0), range(lexer_1, 3491, 17, 88, 88)).
code(lexer_1_code15, primitive_type, lexer_1_stmt10, type, range(lexer_1, 3700, 7, 93, 93)).
code(lexer_1_code16, variable_declaration_fragment, lexer_1_stmt10, (fragments, 0), range(lexer_1, 3708, 22, 93, 93)).
code(lexer_1_code17, method_declaration, lexer_1_code2, (body_declarations, 10), range(lexer_1, 6429, 1923, 166, 217)).
code(lexer_1_code18, primitive_type, lexer_1_expr57, type, range(lexer_1, 8144, 4, 207, 207)).
code(lexer_1_code19, method_declaration, lexer_1_code2, (body_declarations, 12), range(lexer_1, 11685, 110, 290, 292)).
code(lexer_1_code20, method_declaration, lexer_1_code2, (body_declarations, 16), range(lexer_1, 13874, 485, 357, 369)).
code(lexer_1_code21, method_declaration, lexer_1_code2, (body_declarations, 17), range(lexer_1, 14365, 60, 371, 373)).
code(lexer_1_code22, method_declaration, lexer_1_code2, (body_declarations, 19), range(lexer_1, 14629, 338, 382, 390)).
code(lexer_1_code23, method_declaration, lexer_1_code2, (body_declarations, 20), range(lexer_1, 14973, 158, 392, 397)).
code(lexer_1_code24, method_declaration, lexer_1_code2, (body_declarations, 21), range(lexer_1, 15137, 73, 399, 401)).
code(lexer_1_code25, method_declaration, lexer_1_code2, (body_declarations, 22), range(lexer_1, 15216, 67, 403, 405)).
code(lexer_1_code26, method_declaration, lexer_1_code2, (body_declarations, 23), range(lexer_1, 15289, 73, 407, 409)).
code(lexer_1_code27, method_declaration, lexer_1_code2, (body_declarations, 24), range(lexer_1, 15368, 79, 411, 413)).
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
code(csvrecord_1_code1, compilation_unit, range(csvrecord_1, 0, 6822, 1, -1)).
code(csvrecord_1_code2, type_declaration, csvrecord_1_code1, (types, 0), range(csvrecord_1, 1018, 5803, 28, 227)).
code(csvrecord_1_code3, field_declaration, csvrecord_1_code2, (body_declarations, 0), range(csvrecord_1, 1164, 65, 35, 35)).
code(csvrecord_1_code4, modifier, csvrecord_1_code3, (modifiers, 0), range(csvrecord_1, 1164, 7, 35, 35)).
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
code(csvrecord_1_code18, single_variable_declaration, csvrecord_1_code14, (parameters, 3), range(csvrecord_1, 1706, 23, 52, 52)).
code(csvrecord_1_code19, modifier, csvrecord_1_code18, (modifiers, 0), range(csvrecord_1, 1706, 5, 52, 52)).
code(csvrecord_1_code20, primitive_type, csvrecord_1_code18, type, range(csvrecord_1, 1712, 4, 52, 52)).
code(csvrecord_1_code21, method_declaration, csvrecord_1_code2, (body_declarations, 16), range(csvrecord_1, 5538, 476, 173, 187)).
code(csvrecord_1_code23, modifier, csvrecord_1_code22, (modifiers, 0), range(csvrecord_1, 5756, 5, 180, 180)).
code(csvrecord_1_code22, single_variable_declaration, csvrecord_1_stmt5, parameter, range(csvrecord_1, 5756, 34, 180, 180)).
code(csvrecord_1_code24, parameterized_type, csvrecord_1_code22, type, range(csvrecord_1, 5762, 22, 180, 180)).
code(csvrecord_1_code25, simple_type, csvrecord_1_code24, type, range(csvrecord_1, 5762, 5, 180, 180)).
code(csvrecord_1_code26, simple_type, csvrecord_1_code24, (type_arguments, 0), range(csvrecord_1, 5768, 6, 180, 180)).
code(csvrecord_1_code27, simple_type, csvrecord_1_code24, (type_arguments, 1), range(csvrecord_1, 5776, 7, 180, 180)).
code(csvrecord_1_code28, method_declaration, csvrecord_1_code2, (body_declarations, 19), range(csvrecord_1, 6398, 273, 208, 215)).
code(csvrecord_1_code30, simple_type, csvrecord_1_code29, type, range(csvrecord_1, 6625, 7, 214, 214)).
code(csvrecord_1_code29, parameterized_type, csvrecord_1_expr18, type, range(csvrecord_1, 6625, 23, 214, 214)).
code(csvrecord_1_code31, simple_type, csvrecord_1_code29, (type_arguments, 0), range(csvrecord_1, 6633, 6, 214, 214)).
code(csvrecord_1_code32, simple_type, csvrecord_1_code29, (type_arguments, 1), range(csvrecord_1, 6641, 6, 214, 214)).
%csvrecord_test_1 - org.apache.commons.csv.CSVRecordTest
code(csvrecord_test_1_code1, compilation_unit, range(csvrecord_test_1, 0, 6658, 1, -1)).
code(csvrecord_test_1_code2, type_declaration, csvrecord_test_1_code1, (types, 0), range(csvrecord_test_1, 1340, 5317, 37, 194)).
code(csvrecord_test_1_code3, modifier, csvrecord_test_1_code2, (modifiers, 0), range(csvrecord_test_1, 1340, 6, 37, 37)).
code(csvrecord_test_1_code5, modifier, csvrecord_test_1_code4, (modifiers, 0), range(csvrecord_test_1, 1374, 7, 39, 39)).
code(csvrecord_test_1_code4, enum_declaration, csvrecord_test_1_code2, (body_declarations, 0), range(csvrecord_test_1, 1374, 43, 39, 39)).
code(csvrecord_test_1_code6, enum_constant_declaration, csvrecord_test_1_code4, (enum_constants, 0), range(csvrecord_test_1, 1401, 14, 39, 39)).
code(csvrecord_test_1_code7, method_declaration, csvrecord_test_1_code2, (body_declarations, 4), range(csvrecord_test_1, 1542, 424, 45, 54)).
code(csvrecord_test_1_code8, array_type, csvrecord_test_1_expr2, type, range(csvrecord_test_1, 1614, 8, 47, 47)).
code(csvrecord_test_1_code9, simple_type, csvrecord_test_1_code8, element_type, range(csvrecord_test_1, 1614, 6, 47, 47)).
code(csvrecord_test_1_code10, dimension, csvrecord_test_1_code8, (dimensions, 0), range(csvrecord_test_1, 1620, 2, 47, 47)).
code(csvrecord_test_1_code11, simple_type, csvrecord_test_1_expr5, type, range(csvrecord_test_1, 1663, 9, 48, 48)).
code(csvrecord_test_1_code13, simple_type, csvrecord_test_1_code12, type, range(csvrecord_test_1, 1718, 7, 49, 49)).
code(csvrecord_test_1_code12, parameterized_type, csvrecord_test_1_expr7, type, range(csvrecord_test_1, 1718, 24, 49, 49)).
code(csvrecord_test_1_code14, simple_type, csvrecord_test_1_code12, (type_arguments, 0), range(csvrecord_test_1, 1726, 6, 49, 49)).
code(csvrecord_test_1_code15, simple_type, csvrecord_test_1_code12, (type_arguments, 1), range(csvrecord_test_1, 1734, 7, 49, 49)).
code(csvrecord_test_1_code16, simple_type, csvrecord_test_1_expr15, type, range(csvrecord_test_1, 1925, 9, 53, 53)).
code(csvrecord_test_1_code17, method_declaration, csvrecord_test_1_code2, (body_declarations, 21), range(csvrecord_test_1, 5737, 362, 171, 178)).
code(csvrecord_test_1_code18, modifier, csvrecord_test_1_stmt8, (modifiers, 0), range(csvrecord_test_1, 5809, 5, 173, 173)).
code(csvrecord_test_1_code19, simple_type, csvrecord_test_1_stmt8, type, range(csvrecord_test_1, 5815, 9, 173, 173)).
code(csvrecord_test_1_code20, variable_declaration_fragment, csvrecord_test_1_stmt8, (fragments, 0), range(csvrecord_test_1, 5825, 58, 173, 173)).
code(csvrecord_test_1_code21, modifier, csvrecord_test_1_stmt9, (modifiers, 0), range(csvrecord_test_1, 5892, 5, 174, 174)).
code(csvrecord_test_1_code22, simple_type, csvrecord_test_1_stmt9, type, range(csvrecord_test_1, 5898, 9, 174, 174)).
code(csvrecord_test_1_code23, variable_declaration_fragment, csvrecord_test_1_stmt9, (fragments, 0), range(csvrecord_test_1, 5908, 35, 174, 174)).
code(csvrecord_test_1_code24, parameterized_type, csvrecord_test_1_stmt10, type, range(csvrecord_test_1, 5952, 19, 175, 175)).
code(csvrecord_test_1_code25, simple_type, csvrecord_test_1_code24, type, range(csvrecord_test_1, 5952, 3, 175, 175)).
code(csvrecord_test_1_code26, simple_type, csvrecord_test_1_code24, (type_arguments, 0), range(csvrecord_test_1, 5956, 6, 175, 175)).
code(csvrecord_test_1_code27, simple_type, csvrecord_test_1_code24, (type_arguments, 1), range(csvrecord_test_1, 5964, 6, 175, 175)).
code(csvrecord_test_1_code28, variable_declaration_fragment, csvrecord_test_1_stmt10, (fragments, 0), range(csvrecord_test_1, 5972, 22, 175, 175)).

%%% Name References

name_ref(t_assertions_4, type, 'Assertions', 'Lorg/apache/commons/csv/Assertions;').
name_ref(t_character_2, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_csvformat_9, type, 'CSVFormat', 'Lorg/apache/commons/csv/CSVFormat;').
name_ref(t_csvparser_5, type, 'CSVParser', 'Lorg/apache/commons/csv/CSVParser;').
name_ref(t_csvrecord_test_6, type, 'CSVRecordTest', 'Lorg/apache/commons/csv/CSVRecordTest;').
name_ref(t_enum_fixture_7, type, 'EnumFixture', 'Lorg/apache/commons/csv/CSVRecordTest$EnumFixture;').
name_ref(t_integer_8, type, 'Integer', 'Ljava/lang/Integer;').
name_ref(t_quote_1, type, 'Quote', 'Lorg/apache/commons/csv/Quote;').
name_ref(t_string_3, type, 'String', 'Ljava/lang/String;').
name_ref(t_token_10, type, 'Token', 'Lorg/apache/commons/csv/Token;').
name_ref(t_type_11, type, 'Type', 'Lorg/apache/commons/csv/Token$Type;').
name_ref(p_reader_114, param, 'reader', 'extended_buffered_reader_1;reader_line_51').
name_ref(v_c_131, var, 'c', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#c').
name_ref(v_comment_84, var, 'comment', 'Lorg/apache/commons/csv/CSVParser;.nextRecord()Lorg/apache/commons/csv/CSVRecord;|Ljava/io/IOException;#1#comment').
name_ref(v_current_115, var, 'current', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read()I|Ljava/io/IOException;#current').
name_ref(v_entry_100, var, 'entry', 'Lorg/apache/commons/csv/CSVRecord;.putIn<M::Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>(TM;)TM;#0#entry').
name_ref(v_eol_132, var, 'eol', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#eol').
name_ref(v_format_header_75, var, 'formatHeader', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#formatHeader').
name_ref(v_hdr_map_74, var, 'hdrMap', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;#hdrMap').
name_ref(v_input_70, var, 'input', 'Lorg/apache/commons/csv/CSVParser;.addRecordValue()V#input').
name_ref(v_last_char_130, var, 'lastChar', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#lastChar').
name_ref(v_map_108, var, 'map', 'Lorg/apache/commons/csv/CSVRecordTest;.testToMapWithNoHeader()V|Ljava/lang/Exception;#map').
name_ref(v_next_76, var, 'next', 'Lorg/apache/commons/csv/CSVParser$13960;.next()Lorg/apache/commons/csv/CSVRecord;#next').
name_ref(v_null_string_72, var, 'nullString', 'Lorg/apache/commons/csv/CSVParser;.addRecordValue()V#nullString').
name_ref(v_parser_106, var, 'parser', 'Lorg/apache/commons/csv/CSVRecordTest;.testToMapWithNoHeader()V|Ljava/lang/Exception;#parser').
name_ref(v_result_78, var, 'result', 'Lorg/apache/commons/csv/CSVParser;.nextRecord()Lorg/apache/commons/csv/CSVRecord;|Ljava/io/IOException;#result').
name_ref(v_sb_79, var, 'sb', 'Lorg/apache/commons/csv/CSVParser;.nextRecord()Lorg/apache/commons/csv/CSVRecord;|Ljava/io/IOException;#sb').
name_ref(v_short_rec_107, var, 'shortRec', 'Lorg/apache/commons/csv/CSVRecordTest;.testToMapWithNoHeader()V|Ljava/lang/Exception;#shortRec').
name_ref(p_allows_nulls_110, param, 'allowsNulls', 'Lorg/apache/commons/csv/CSVRecordTest;.validateMap(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Z)V#allowsNulls#0#1').
name_ref(p_buf_116, param, 'buf', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;#buf#0#0').
name_ref(p_buffer_140, param, 'buffer', 'Lorg/apache/commons/csv/Lexer;.trimTrailingSpaces(Ljava/lang/StringBuilder;)V#buffer#0#0').
name_ref(p_c_11, param, 'c', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(C)Z#c#0#0').
name_ref(p_c_138, param, 'c', 'Lorg/apache/commons/csv/Lexer;.mapNullToDisabled(Ljava/lang/Character;)C#c#0#0').
name_ref(p_c_14, param, 'c', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(Ljava/lang/Character;)Z#c#0#0').
name_ref(p_ch_135, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#ch#0#1').
name_ref(p_ch_141, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.readEndOfLine(I)Z|Ljava/io/IOException;#ch#0#0').
name_ref(p_ch_142, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isWhitespace(I)Z#ch#0#0').
name_ref(p_ch_143, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isStartOfLine(I)Z#ch#0#0').
name_ref(p_ch_144, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isEndOfFile(I)Z#ch#0#0').
name_ref(p_ch_146, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isDelimiter(I)Z#ch#0#0').
name_ref(p_ch_147, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isEscape(I)Z#ch#0#0').
name_ref(p_ch_148, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isQuoteChar(I)Z#ch#0#0').
name_ref(p_ch_149, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isCommentStart(I)Z#ch#0#0').
name_ref(p_ch_150, param, 'ch', 'Lorg/apache/commons/csv/Lexer;.isMetaChar(I)Z#ch#0#0').
name_ref(p_charset_61, param, 'charset', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#charset#0#1').
name_ref(p_comment_88, param, 'comment', 'Lorg/apache/commons/csv/CSVRecord;.([Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;J)V#comment#0#2').
name_ref(p_comment_start_19, param, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#commentStart#0#3').
name_ref(p_comment_start_41, param, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.withCommentStart(C)Lorg/apache/commons/csv/CSVFormat;#commentStart#0#0').
name_ref(p_comment_start_42, param, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.withCommentStart(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;#commentStart#0#0').
name_ref(p_delimiter_15, param, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.newFormat(C)Lorg/apache/commons/csv/CSVFormat;#delimiter#0#0').
name_ref(p_delimiter_16, param, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#delimiter#0#0').
name_ref(p_delimiter_43, param, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.withDelimiter(C)Lorg/apache/commons/csv/CSVFormat;#delimiter#0#0').
name_ref(p_e_94, param, 'e', 'Lorg/apache/commons/csv/CSVRecord;.get(Ljava/lang/Enum<*>;)Ljava/lang/String;#e#0#0').
name_ref(p_escape_20, param, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#escape#0#4').
name_ref(p_escape_44, param, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.withEscape(C)Lorg/apache/commons/csv/CSVFormat;#escape#0#0').
name_ref(p_escape_45, param, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.withEscape(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;#escape#0#0').
name_ref(p_file_56, param, 'file', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/io/File;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#file#0#0').
name_ref(p_format_120, param, 'format', 'Lorg/apache/commons/csv/Lexer;.(Lorg/apache/commons/csv/CSVFormat;Lorg/apache/commons/csv/ExtendedBufferedReader;)V#format#0#0').
name_ref(p_format_57, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/io/File;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#format#0#1').
name_ref(p_format_59, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/lang/String;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#format#0#1').
name_ref(p_format_62, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#format#0#2').
name_ref(p_format_66, param, 'format', 'Lorg/apache/commons/csv/CSVParser;.(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V|Ljava/io/IOException;#format#0#1').
name_ref(p_header_25, param, 'header', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#header#0#9').
name_ref(p_header_46, param, 'header', 'Lorg/apache/commons/csv/CSVFormat;.withHeader([Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;#header#0#0').
name_ref(p_i_95, param, 'i', 'Lorg/apache/commons/csv/CSVRecord;.get(I)Ljava/lang/String;#i#0#0').
name_ref(p_ignore_empty_lines_22, param, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#ignoreEmptyLines#0#6').
name_ref(p_ignore_empty_lines_47, param, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreEmptyLines(Z)Lorg/apache/commons/csv/CSVFormat;#ignoreEmptyLines#0#0').
name_ref(p_ignore_surrounding_spaces_21, param, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#ignoreSurroundingSpaces#0#5').
name_ref(p_ignore_surrounding_spaces_48, param, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.withIgnoreSurroundingSpaces(Z)Lorg/apache/commons/csv/CSVFormat;#ignoreSurroundingSpaces#0#0').
name_ref(p_in_40, param, 'in', 'Lorg/apache/commons/csv/CSVFormat;.parse(Ljava/io/Reader;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#in#0#0').
name_ref(p_length_118, param, 'length', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;#length#0#2').
name_ref(p_map_109, param, 'map', 'Lorg/apache/commons/csv/CSVRecordTest;.validateMap(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Z)V#map#0#0').
name_ref(p_map_99, param, 'map', 'Lorg/apache/commons/csv/CSVRecord;.putIn<M::Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>(TM;)TM;#map#0#0').
name_ref(p_mapping_87, param, 'mapping', 'Lorg/apache/commons/csv/CSVRecord;.([Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;J)V#mapping#0#1').
name_ref(p_name_96, param, 'name', 'Lorg/apache/commons/csv/CSVRecord;.get(Ljava/lang/String;)Ljava/lang/String;#name#0#0').
name_ref(p_name_97, param, 'name', 'Lorg/apache/commons/csv/CSVRecord;.isMapped(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_98, param, 'name', 'Lorg/apache/commons/csv/CSVRecord;.isSet(Ljava/lang/String;)Z#name#0#0').
name_ref(p_null_string_24, param, 'nullString', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#nullString#0#8').
name_ref(p_null_string_49, param, 'nullString', 'Lorg/apache/commons/csv/CSVFormat;.withNullString(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;#nullString#0#0').
name_ref(p_obj_38, param, 'obj', 'Lorg/apache/commons/csv/CSVFormat;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_offset_117, param, 'offset', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;#offset#0#1').
name_ref(p_parameter_1, param, 'parameter', 'Lorg/apache/commons/csv/Assertions;.notNull(Ljava/lang/Object;Ljava/lang/String;)V#parameter#0#0').
name_ref(p_parameter_name_2, param, 'parameterName', 'Lorg/apache/commons/csv/Assertions;.notNull(Ljava/lang/Object;Ljava/lang/String;)V#parameterName#0#1').
name_ref(p_quote_char_17, param, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#quoteChar#0#1').
name_ref(p_quote_char_50, param, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.withQuoteChar(C)Lorg/apache/commons/csv/CSVFormat;#quoteChar#0#0').
name_ref(p_quote_char_51, param, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.withQuoteChar(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;#quoteChar#0#0').
name_ref(p_quote_policy_18, param, 'quotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#quotePolicy#0#2').
name_ref(p_quote_policy_52, param, 'quotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.withQuotePolicy(Lorg/apache/commons/csv/Quote;)Lorg/apache/commons/csv/CSVFormat;#quotePolicy#0#0').
name_ref(p_reader_114, param, 'reader', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.(Ljava/io/Reader;)V#reader#0#0').
name_ref(p_reader_121, param, 'reader', 'Lorg/apache/commons/csv/Lexer;.(Lorg/apache/commons/csv/CSVFormat;Lorg/apache/commons/csv/ExtendedBufferedReader;)V#reader#0#1').
name_ref(p_reader_65, param, 'reader', 'Lorg/apache/commons/csv/CSVParser;.(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_record_number_89, param, 'recordNumber', 'Lorg/apache/commons/csv/CSVRecord;.([Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;J)V#recordNumber#0#3').
name_ref(p_record_separator_23, param, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#recordSeparator#0#7').
name_ref(p_record_separator_53, param, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.withRecordSeparator(C)Lorg/apache/commons/csv/CSVFormat;#recordSeparator#0#0').
name_ref(p_record_separator_54, param, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.withRecordSeparator(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;#recordSeparator#0#0').
name_ref(p_records_73, param, 'records', 'Lorg/apache/commons/csv/CSVParser;.getRecords<T::Ljava/util/Collection<Lorg/apache/commons/csv/CSVRecord;>;>(TT;)TT;|Ljava/io/IOException;#records#0#0').
name_ref(p_skip_header_record_26, param, 'skipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V#skipHeaderRecord#0#10').
name_ref(p_skip_header_record_55, param, 'skipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.withSkipHeaderRecord(Z)Lorg/apache/commons/csv/CSVFormat;#skipHeaderRecord#0#0').
name_ref(p_string_58, param, 'string', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/lang/String;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#string#0#0').
name_ref(p_token_129, param, 'token', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0').
name_ref(p_token_134, param, 'token', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0').
name_ref(p_token_137, param, 'token', 'Lorg/apache/commons/csv/Lexer;.parseEncapsulatedToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0').
name_ref(p_url_60, param, 'url', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;#url#0#0').
name_ref(p_values_39, param, 'values', 'Lorg/apache/commons/csv/CSVFormat;.format([Ljava/lang/Object;)Ljava/lang/String;#values#0#0').
name_ref(p_values_86, param, 'values', 'Lorg/apache/commons/csv/CSVRecord;.([Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;J)V#values#0#0').
name_ref(f_all_151, field, 'ALL', 'Lorg/apache/commons/csv/Quote;.ALL)Lorg/apache/commons/csv/Quote;').
name_ref(f_closed_119, field, 'closed', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.closed)Z').
name_ref(f_comma_4, field, 'COMMA', 'Lorg/apache/commons/csv/Constants;.COMMA)C').
name_ref(f_comment_156, field, 'COMMENT', 'Lorg/apache/commons/csv/Token$Type;.COMMENT)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_comment_93, field, 'comment', 'Lorg/apache/commons/csv/CSVRecord;.comment)Ljava/lang/String;').
name_ref(f_comment_start_126, field, 'commentStart', 'Lorg/apache/commons/csv/Lexer;.commentStart)C').
name_ref(f_comment_start_30, field, 'commentStart', 'Lorg/apache/commons/csv/CSVFormat;.commentStart)Ljava/lang/Character;').
name_ref(f_content_71, field, 'content', 'Lorg/apache/commons/csv/Token;.content)Ljava/lang/StringBuilder;').
name_ref(f_cr_13, field, 'CR', 'Lorg/apache/commons/csv/Constants;.CR)C').
name_ref(f_crlf_6, field, 'CRLF', 'Lorg/apache/commons/csv/Constants;.CRLF)Ljava/lang/String;').
name_ref(f_current_77, field, 'current', 'Lorg/apache/commons/csv/CSVParser$13960;.current)Lorg/apache/commons/csv/CSVRecord;').
name_ref(f_default_3, field, 'DEFAULT', 'Lorg/apache/commons/csv/CSVFormat;.DEFAULT)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_delimiter_123, field, 'delimiter', 'Lorg/apache/commons/csv/Lexer;.delimiter)C').
name_ref(f_delimiter_27, field, 'delimiter', 'Lorg/apache/commons/csv/CSVFormat;.delimiter)C').
name_ref(f_disabled_139, field, 'DISABLED', 'Lorg/apache/commons/csv/Lexer;.DISABLED)C').
name_ref(f_double_quote_char_5, field, 'DOUBLE_QUOTE_CHAR', 'Lorg/apache/commons/csv/Constants;.DOUBLE_QUOTE_CHAR)Ljava/lang/Character;').
name_ref(f_empty_string_array_85, field, 'EMPTY_STRING_ARRAY', 'Lorg/apache/commons/csv/CSVRecord;.EMPTY_STRING_ARRAY)[Ljava/lang/String;').
name_ref(f_end_of_stream_145, field, 'END_OF_STREAM', 'Lorg/apache/commons/csv/Constants;.END_OF_STREAM)I').
name_ref(f_eof_136, field, 'EOF', 'Lorg/apache/commons/csv/Token$Type;.EOF)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_eol_counter_113, field, 'eolCounter', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.eolCounter)J').
name_ref(f_eorecord_155, field, 'EORECORD', 'Lorg/apache/commons/csv/Token$Type;.EORECORD)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_escape_124, field, 'escape', 'Lorg/apache/commons/csv/Lexer;.escape)C').
name_ref(f_escape_31, field, 'escape', 'Lorg/apache/commons/csv/CSVFormat;.escape)Ljava/lang/Character;').
name_ref(f_excel_8, field, 'EXCEL', 'Lorg/apache/commons/csv/CSVFormat;.EXCEL)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_format_67, field, 'format', 'Lorg/apache/commons/csv/CSVParser;.format)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_header_104, field, 'header', 'Lorg/apache/commons/csv/CSVRecordTest;.header)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;').
name_ref(f_header_36, field, 'header', 'Lorg/apache/commons/csv/CSVFormat;.header)[Ljava/lang/String;').
name_ref(f_header_map_69, field, 'headerMap', 'Lorg/apache/commons/csv/CSVParser;.headerMap)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;').
name_ref(f_ignore_empty_lines_128, field, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/Lexer;.ignoreEmptyLines)Z').
name_ref(f_ignore_empty_lines_33, field, 'ignoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.ignoreEmptyLines)Z').
name_ref(f_ignore_surrounding_spaces_127, field, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/Lexer;.ignoreSurroundingSpaces)Z').
name_ref(f_ignore_surrounding_spaces_32, field, 'ignoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.ignoreSurroundingSpaces)Z').
name_ref(f_initial_token_length_157, field, 'INITIAL_TOKEN_LENGTH', 'Lorg/apache/commons/csv/Token;.INITIAL_TOKEN_LENGTH)I').
name_ref(f_invalid_133, field, 'INVALID', 'Lorg/apache/commons/csv/Token$Type;.INVALID)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_is_ready_81, field, 'isReady', 'Lorg/apache/commons/csv/Token;.isReady)Z').
name_ref(f_last_char_111, field, 'lastChar', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.lastChar)I').
name_ref(f_lexer_68, field, 'lexer', 'Lorg/apache/commons/csv/CSVParser;.lexer)Lorg/apache/commons/csv/Lexer;').
name_ref(f_lf_12, field, 'LF', 'Lorg/apache/commons/csv/Constants;.LF)C').
name_ref(f_mapping_92, field, 'mapping', 'Lorg/apache/commons/csv/CSVRecord;.mapping)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;').
name_ref(f_minimal_152, field, 'MINIMAL', 'Lorg/apache/commons/csv/Quote;.MINIMAL)Lorg/apache/commons/csv/Quote;').
name_ref(f_mysql_10, field, 'MYSQL', 'Lorg/apache/commons/csv/CSVFormat;.MYSQL)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_non_numeric_153, field, 'NON_NUMERIC', 'Lorg/apache/commons/csv/Quote;.NON_NUMERIC)Lorg/apache/commons/csv/Quote;').
name_ref(f_none_154, field, 'NONE', 'Lorg/apache/commons/csv/Quote;.NONE)Lorg/apache/commons/csv/Quote;').
name_ref(f_null_string_35, field, 'nullString', 'Lorg/apache/commons/csv/CSVFormat;.nullString)Ljava/lang/String;').
name_ref(f_quote_char_125, field, 'quoteChar', 'Lorg/apache/commons/csv/Lexer;.quoteChar)C').
name_ref(f_quote_char_28, field, 'quoteChar', 'Lorg/apache/commons/csv/CSVFormat;.quoteChar)Ljava/lang/Character;').
name_ref(f_quote_policy_29, field, 'quotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.quotePolicy)Lorg/apache/commons/csv/Quote;').
name_ref(f_reader_122, field, 'reader', 'Lorg/apache/commons/csv/Lexer;.reader)Lorg/apache/commons/csv/ExtendedBufferedReader;').
name_ref(f_record_103, field, 'record', 'Lorg/apache/commons/csv/CSVRecordTest;.record)Lorg/apache/commons/csv/CSVRecord;').
name_ref(f_record_63, field, 'record', 'Lorg/apache/commons/csv/CSVParser;.record)Ljava/util/List<Ljava/lang/String;>;').
name_ref(f_record_number_83, field, 'recordNumber', 'Lorg/apache/commons/csv/CSVParser;.recordNumber)J').
name_ref(f_record_number_90, field, 'recordNumber', 'Lorg/apache/commons/csv/CSVRecord;.recordNumber)J').
name_ref(f_record_separator_34, field, 'recordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.recordSeparator)Ljava/lang/String;').
name_ref(f_record_with_header_105, field, 'recordWithHeader', 'Lorg/apache/commons/csv/CSVRecordTest;.recordWithHeader)Lorg/apache/commons/csv/CSVRecord;').
name_ref(f_reusable_token_64, field, 'reusableToken', 'Lorg/apache/commons/csv/CSVParser;.reusableToken)Lorg/apache/commons/csv/Token;').
name_ref(f_rfc4180_7, field, 'RFC4180', 'Lorg/apache/commons/csv/CSVFormat;.RFC4180)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_skip_header_record_37, field, 'skipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.skipHeaderRecord)Z').
name_ref(f_tdf_9, field, 'TDF', 'Lorg/apache/commons/csv/CSVFormat;.TDF)Lorg/apache/commons/csv/CSVFormat;').
name_ref(f_token_82, field, 'TOKEN', 'Lorg/apache/commons/csv/Token$Type;.TOKEN)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_type_80, field, 'type', 'Lorg/apache/commons/csv/Token;.type)Lorg/apache/commons/csv/Token$Type;').
name_ref(f_undefined_112, field, 'UNDEFINED', 'Lorg/apache/commons/csv/Constants;.UNDEFINED)I').
name_ref(f_unknown_column_101, field, 'UNKNOWN_COLUMN', 'Lorg/apache/commons/csv/CSVRecordTest$EnumFixture;.UNKNOWN_COLUMN)Lorg/apache/commons/csv/CSVRecordTest$EnumFixture;').
name_ref(f_values_102, field, 'values', 'Lorg/apache/commons/csv/CSVRecordTest;.values)[Ljava/lang/String;').
name_ref(f_values_91, field, 'values', 'Lorg/apache/commons/csv/CSVRecord;.values)[Ljava/lang/String;').
name_ref(m__70, method, '', 'Lorg/apache/commons/csv/CSVParser$13960;.()V').
name_ref(m_add_60, method, 'add', 'Ljava/util/List;.add(TE;)Z').
name_ref(m_add_record_value_58, method, 'addRecordValue', 'Lorg/apache/commons/csv/CSVParser;.addRecordValue()V').
name_ref(m_append_142, method, 'append', 'Ljava/lang/StringBuilder;.append(C)Ljava/lang/StringBuilder;').
name_ref(m_array_list_53, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_assertions_1, method, 'Assertions', 'Lorg/apache/commons/csv/Assertions;.()V').
name_ref(m_buffered_reader_123, method, 'BufferedReader', 'Ljava/io/BufferedReader;.(Ljava/io/Reader;)V').
name_ref(m_char_value_7, method, 'charValue', 'Ljava/lang/Character;.charValue()C').
name_ref(m_clear_76, method, 'clear', 'Ljava/util/List;.clear()V').
name_ref(m_clone_15, method, 'clone', 'Ljava/lang/Object;.clone()[Ljava/lang/String;').
name_ref(m_close_132, method, 'close', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.close()V|Ljava/io/IOException;').
name_ref(m_close_149, method, 'close', 'Lorg/apache/commons/csv/Lexer;.close()V|Ljava/io/IOException;').
name_ref(m_close_61, method, 'close', 'Lorg/apache/commons/csv/CSVParser;.close()V|Ljava/io/IOException;').
name_ref(m_csvformat_3, method, 'CSVFormat', 'Lorg/apache/commons/csv/CSVFormat;.(CLjava/lang/Character;Lorg/apache/commons/csv/Quote;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V').
name_ref(m_csvparser_50, method, 'CSVParser', 'Lorg/apache/commons/csv/CSVParser;.(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V|Ljava/io/IOException;').
name_ref(m_csvrecord_80, method, 'CSVRecord', 'Lorg/apache/commons/csv/CSVRecord;.([Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;J)V').
name_ref(m_entry_set_93, method, 'entrySet', 'Ljava/util/Map;.entrySet()Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;').
name_ref(m_equals_31, method, 'equals', 'Ljava/lang/Character;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_9, method, 'equals', 'Lorg/apache/commons/csv/CSVFormat;.equals(Ljava/lang/Object;)Z').
name_ref(m_extended_buffered_reader_56, method, 'ExtendedBufferedReader', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.(Ljava/io/Reader;)V').
name_ref(m_format_10, method, 'format', 'Lorg/apache/commons/csv/CSVFormat;.format([Ljava/lang/Object;)Ljava/lang/String;').
name_ref(m_get_83, method, 'get', 'Lorg/apache/commons/csv/CSVRecord;.get(Ljava/lang/Enum<*>;)Ljava/lang/String;').
name_ref(m_get_84, method, 'get', 'Lorg/apache/commons/csv/CSVRecord;.get(I)Ljava/lang/String;').
name_ref(m_get_85, method, 'get', 'Lorg/apache/commons/csv/CSVRecord;.get(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_comment_86, method, 'getComment', 'Lorg/apache/commons/csv/CSVRecord;.getComment()Ljava/lang/String;').
name_ref(m_get_comment_start_11, method, 'getCommentStart', 'Lorg/apache/commons/csv/CSVFormat;.getCommentStart()Ljava/lang/Character;').
name_ref(m_get_current_line_number_130, method, 'getCurrentLineNumber', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.getCurrentLineNumber()J').
name_ref(m_get_current_line_number_144, method, 'getCurrentLineNumber', 'Lorg/apache/commons/csv/Lexer;.getCurrentLineNumber()J').
name_ref(m_get_current_line_number_62, method, 'getCurrentLineNumber', 'Lorg/apache/commons/csv/CSVParser;.getCurrentLineNumber()J').
name_ref(m_get_delimiter_12, method, 'getDelimiter', 'Lorg/apache/commons/csv/CSVFormat;.getDelimiter()C').
name_ref(m_get_escape_13, method, 'getEscape', 'Lorg/apache/commons/csv/CSVFormat;.getEscape()Ljava/lang/Character;').
name_ref(m_get_header_14, method, 'getHeader', 'Lorg/apache/commons/csv/CSVFormat;.getHeader()[Ljava/lang/String;').
name_ref(m_get_header_map_63, method, 'getHeaderMap', 'Lorg/apache/commons/csv/CSVParser;.getHeaderMap()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;').
name_ref(m_get_ignore_empty_lines_16, method, 'getIgnoreEmptyLines', 'Lorg/apache/commons/csv/CSVFormat;.getIgnoreEmptyLines()Z').
name_ref(m_get_ignore_surrounding_spaces_17, method, 'getIgnoreSurroundingSpaces', 'Lorg/apache/commons/csv/CSVFormat;.getIgnoreSurroundingSpaces()Z').
name_ref(m_get_last_char_126, method, 'getLastChar', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.getLastChar()I').
name_ref(m_get_next_record_71, method, 'getNextRecord', 'Lorg/apache/commons/csv/CSVParser$13960;.getNextRecord()Lorg/apache/commons/csv/CSVRecord;').
name_ref(m_get_null_string_18, method, 'getNullString', 'Lorg/apache/commons/csv/CSVFormat;.getNullString()Ljava/lang/String;').
name_ref(m_get_quote_char_19, method, 'getQuoteChar', 'Lorg/apache/commons/csv/CSVFormat;.getQuoteChar()Ljava/lang/Character;').
name_ref(m_get_quote_policy_20, method, 'getQuotePolicy', 'Lorg/apache/commons/csv/CSVFormat;.getQuotePolicy()Lorg/apache/commons/csv/Quote;').
name_ref(m_get_record_number_64, method, 'getRecordNumber', 'Lorg/apache/commons/csv/CSVParser;.getRecordNumber()J').
name_ref(m_get_record_number_87, method, 'getRecordNumber', 'Lorg/apache/commons/csv/CSVRecord;.getRecordNumber()J').
name_ref(m_get_record_separator_21, method, 'getRecordSeparator', 'Lorg/apache/commons/csv/CSVFormat;.getRecordSeparator()Ljava/lang/String;').
name_ref(m_get_records_65, method, 'getRecords', 'Lorg/apache/commons/csv/CSVParser;.getRecords()Ljava/util/List<Lorg/apache/commons/csv/CSVRecord;>;|Ljava/io/IOException;').
name_ref(m_get_records_66, method, 'getRecords', 'Lorg/apache/commons/csv/CSVParser;.getRecords<T::Ljava/util/Collection<Lorg/apache/commons/csv/CSVRecord;>;>(TT;)TT;|Ljava/io/IOException;').
name_ref(m_get_skip_header_record_22, method, 'getSkipHeaderRecord', 'Lorg/apache/commons/csv/CSVFormat;.getSkipHeaderRecord()Z').
name_ref(m_has_next_73, method, 'hasNext', 'Lorg/apache/commons/csv/CSVParser$13960;.hasNext()Z').
name_ref(m_hash_code_23, method, 'hashCode', 'Lorg/apache/commons/csv/CSVFormat;.hashCode()I').
name_ref(m_hash_map_101, method, 'HashMap', 'Ljava/util/HashMap;.()V').
name_ref(m_hash_map_97, method, 'HashMap', 'Ljava/util/HashMap;.(I)V').
name_ref(m_initialize_header_57, method, 'initializeHeader', 'Lorg/apache/commons/csv/CSVParser;.initializeHeader()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;|Ljava/io/IOException;').
name_ref(m_is_closed_131, method, 'isClosed', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.isClosed()Z').
name_ref(m_is_closed_67, method, 'isClosed', 'Lorg/apache/commons/csv/CSVParser;.isClosed()Z').
name_ref(m_is_closed_68, method, 'isClosed', 'Lorg/apache/commons/csv/Lexer;.isClosed()Z').
name_ref(m_is_comment_start_138, method, 'isCommentStart', 'Lorg/apache/commons/csv/Lexer;.isCommentStart(I)Z').
name_ref(m_is_commenting_enabled_24, method, 'isCommentingEnabled', 'Lorg/apache/commons/csv/CSVFormat;.isCommentingEnabled()Z').
name_ref(m_is_consistent_88, method, 'isConsistent', 'Lorg/apache/commons/csv/CSVRecord;.isConsistent()Z').
name_ref(m_is_delimiter_136, method, 'isDelimiter', 'Lorg/apache/commons/csv/Lexer;.isDelimiter(I)Z').
name_ref(m_is_empty_79, method, 'isEmpty', 'Ljava/util/List;.isEmpty()Z').
name_ref(m_is_end_of_file_135, method, 'isEndOfFile', 'Lorg/apache/commons/csv/Lexer;.isEndOfFile(I)Z').
name_ref(m_is_escape_141, method, 'isEscape', 'Lorg/apache/commons/csv/Lexer;.isEscape(I)Z').
name_ref(m_is_escaping_25, method, 'isEscaping', 'Lorg/apache/commons/csv/CSVFormat;.isEscaping()Z').
name_ref(m_is_line_break_5, method, 'isLineBreak', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(C)Z').
name_ref(m_is_line_break_6, method, 'isLineBreak', 'Lorg/apache/commons/csv/CSVFormat;.isLineBreak(Ljava/lang/Character;)Z').
name_ref(m_is_mapped_89, method, 'isMapped', 'Lorg/apache/commons/csv/CSVRecord;.isMapped(Ljava/lang/String;)Z').
name_ref(m_is_meta_char_148, method, 'isMetaChar', 'Lorg/apache/commons/csv/Lexer;.isMetaChar(I)Z').
name_ref(m_is_null_handling_26, method, 'isNullHandling', 'Lorg/apache/commons/csv/CSVFormat;.isNullHandling()Z').
name_ref(m_is_quote_char_139, method, 'isQuoteChar', 'Lorg/apache/commons/csv/Lexer;.isQuoteChar(I)Z').
name_ref(m_is_quoting_27, method, 'isQuoting', 'Lorg/apache/commons/csv/CSVFormat;.isQuoting()Z').
name_ref(m_is_set_90, method, 'isSet', 'Lorg/apache/commons/csv/CSVRecord;.isSet(Ljava/lang/String;)Z').
name_ref(m_is_start_of_line_137, method, 'isStartOfLine', 'Lorg/apache/commons/csv/Lexer;.isStartOfLine(I)Z').
name_ref(m_is_whitespace_147, method, 'isWhitespace', 'Lorg/apache/commons/csv/Lexer;.isWhitespace(I)Z').
name_ref(m_iterator_69, method, 'iterator', 'Lorg/apache/commons/csv/CSVParser;.iterator()Ljava/util/Iterator<Lorg/apache/commons/csv/CSVRecord;>;').
name_ref(m_iterator_91, method, 'iterator', 'Lorg/apache/commons/csv/CSVRecord;.iterator()Ljava/util/Iterator<Ljava/lang/String;>;').
name_ref(m_lexer_55, method, 'Lexer', 'Lorg/apache/commons/csv/Lexer;.(Lorg/apache/commons/csv/CSVFormat;Lorg/apache/commons/csv/ExtendedBufferedReader;)V').
name_ref(m_look_ahead_129, method, 'lookAhead', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.lookAhead()I|Ljava/io/IOException;').
name_ref(m_map_null_to_disabled_133, method, 'mapNullToDisabled', 'Lorg/apache/commons/csv/Lexer;.mapNullToDisabled(Ljava/lang/Character;)C').
name_ref(m_new_format_8, method, 'newFormat', 'Lorg/apache/commons/csv/CSVFormat;.newFormat(C)Lorg/apache/commons/csv/CSVFormat;').
name_ref(m_next_121, method, 'next', 'Ljava/util/Iterator;.next()TE;').
name_ref(m_next_74, method, 'next', 'Lorg/apache/commons/csv/CSVParser$13960;.next()Lorg/apache/commons/csv/CSVRecord;').
name_ref(m_next_record_72, method, 'nextRecord', 'Lorg/apache/commons/csv/CSVParser;.nextRecord()Lorg/apache/commons/csv/CSVRecord;|Ljava/io/IOException;').
name_ref(m_next_token_78, method, 'nextToken', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;').
name_ref(m_not_null_2, method, 'notNull', 'Lorg/apache/commons/csv/Assertions;.notNull(Ljava/lang/Object;Ljava/lang/String;)V').
name_ref(m_parse_28, method, 'parse', 'Lorg/apache/commons/csv/CSVFormat;.parse(Ljava/io/Reader;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_48, method, 'parse', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/io/File;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_49, method, 'parse', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/lang/String;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_52, method, 'parse', 'Lorg/apache/commons/csv/CSVParser;.parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;|Ljava/io/IOException;').
name_ref(m_parse_encapsulated_token_143, method, 'parseEncapsulatedToken', 'Lorg/apache/commons/csv/Lexer;.parseEncapsulatedToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;').
name_ref(m_parse_simple_token_140, method, 'parseSimpleToken', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;').
name_ref(m_put_102, method, 'put', 'Ljava/util/Map;.put(TK;TV;)TV;').
name_ref(m_put_in_92, method, 'putIn', 'Lorg/apache/commons/csv/CSVRecord;.putIn<M::Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>(TM;)TM;').
name_ref(m_read_124, method, 'read', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read()I|Ljava/io/IOException;').
name_ref(m_read_125, method, 'read', 'Ljava/io/BufferedReader;.read()I|Ljava/io/IOException;').
name_ref(m_read_127, method, 'read', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.read([CII)I|Ljava/io/IOException;').
name_ref(m_read_end_of_line_134, method, 'readEndOfLine', 'Lorg/apache/commons/csv/Lexer;.readEndOfLine(I)Z|Ljava/io/IOException;').
name_ref(m_read_escape_145, method, 'readEscape', 'Lorg/apache/commons/csv/Lexer;.readEscape()I|Ljava/io/IOException;').
name_ref(m_read_line_128, method, 'readLine', 'Lorg/apache/commons/csv/ExtendedBufferedReader;.readLine()Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_remove_75, method, 'remove', 'Lorg/apache/commons/csv/CSVParser$13960;.remove()V').
name_ref(m_reset_77, method, 'reset', 'Lorg/apache/commons/csv/Token;.reset()V').
name_ref(m_set_length_151, method, 'setLength', 'Ljava/lang/AbstractStringBuilder;.setLength(I)V').
name_ref(m_set_up_100, method, 'setUp', 'Lorg/apache/commons/csv/CSVRecordTest;.setUp()V|Ljava/lang/Exception;').
name_ref(m_size_82, method, 'size', 'Ljava/util/List;.size()I').
name_ref(m_size_94, method, 'size', 'Lorg/apache/commons/csv/CSVRecord;.size()I').
name_ref(m_string_builder_150, method, 'StringBuilder', 'Ljava/lang/StringBuilder;.(I)V').
name_ref(m_string_reader_51, method, 'StringReader', 'Ljava/io/StringReader;.(Ljava/lang/String;)V').
name_ref(m_test_get_int_104, method, 'testGetInt', 'Lorg/apache/commons/csv/CSVRecordTest;.testGetInt()V').
name_ref(m_test_get_string_105, method, 'testGetString', 'Lorg/apache/commons/csv/CSVRecordTest;.testGetString()V').
name_ref(m_test_get_string_inconsistent_record_106, method, 'testGetStringInconsistentRecord', 'Lorg/apache/commons/csv/CSVRecordTest;.testGetStringInconsistentRecord()V').
name_ref(m_test_get_string_no_header_107, method, 'testGetStringNoHeader', 'Lorg/apache/commons/csv/CSVRecordTest;.testGetStringNoHeader()V').
name_ref(m_test_get_unmapped_enum_108, method, 'testGetUnmappedEnum', 'Lorg/apache/commons/csv/CSVRecordTest;.testGetUnmappedEnum()V').
name_ref(m_test_get_unmapped_name_109, method, 'testGetUnmappedName', 'Lorg/apache/commons/csv/CSVRecordTest;.testGetUnmappedName()V').
name_ref(m_test_get_unmapped_negative_int_110, method, 'testGetUnmappedNegativeInt', 'Lorg/apache/commons/csv/CSVRecordTest;.testGetUnmappedNegativeInt()V').
name_ref(m_test_get_unmapped_positive_int_111, method, 'testGetUnmappedPositiveInt', 'Lorg/apache/commons/csv/CSVRecordTest;.testGetUnmappedPositiveInt()V').
name_ref(m_test_is_consistent_112, method, 'testIsConsistent', 'Lorg/apache/commons/csv/CSVRecordTest;.testIsConsistent()V').
name_ref(m_test_is_mapped_113, method, 'testIsMapped', 'Lorg/apache/commons/csv/CSVRecordTest;.testIsMapped()V').
name_ref(m_test_is_set_114, method, 'testIsSet', 'Lorg/apache/commons/csv/CSVRecordTest;.testIsSet()V').
name_ref(m_test_iterator_115, method, 'testIterator', 'Lorg/apache/commons/csv/CSVRecordTest;.testIterator()V').
name_ref(m_test_put_in_map_116, method, 'testPutInMap', 'Lorg/apache/commons/csv/CSVRecordTest;.testPutInMap()V').
name_ref(m_test_remove_and_add_columns_117, method, 'testRemoveAndAddColumns', 'Lorg/apache/commons/csv/CSVRecordTest;.testRemoveAndAddColumns()V|Ljava/io/IOException;').
name_ref(m_test_to_map_118, method, 'testToMap', 'Lorg/apache/commons/csv/CSVRecordTest;.testToMap()V').
name_ref(m_test_to_map_with_no_header_120, method, 'testToMapWithNoHeader', 'Lorg/apache/commons/csv/CSVRecordTest;.testToMapWithNoHeader()V|Ljava/lang/Exception;').
name_ref(m_test_to_map_with_short_record_119, method, 'testToMapWithShortRecord', 'Lorg/apache/commons/csv/CSVRecordTest;.testToMapWithShortRecord()V|Ljava/lang/Exception;').
name_ref(m_to_array_81, method, 'toArray', 'Ljava/util/List;.toArray<T:Ljava/lang/Object;>([TT;)[TT;').
name_ref(m_to_list_95, method, 'toList', 'Lorg/apache/commons/csv/CSVRecord;.toList()Ljava/util/List<Ljava/lang/String;>;').
name_ref(m_to_map_96, method, 'toMap', 'Lorg/apache/commons/csv/CSVRecord;.toMap()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;').
name_ref(m_to_string_152, method, 'toString', 'Lorg/apache/commons/csv/Token;.toString()Ljava/lang/String;').
name_ref(m_to_string_29, method, 'toString', 'Lorg/apache/commons/csv/CSVFormat;.toString()Ljava/lang/String;').
name_ref(m_to_string_59, method, 'toString', 'Ljava/lang/StringBuilder;.toString()Ljava/lang/String;').
name_ref(m_to_string_98, method, 'toString', 'Lorg/apache/commons/csv/CSVRecord;.toString()Ljava/lang/String;').
name_ref(m_token_54, method, 'Token', 'Lorg/apache/commons/csv/Token;.()V').
name_ref(m_trim_trailing_spaces_146, method, 'trimTrailingSpaces', 'Lorg/apache/commons/csv/Lexer;.trimTrailingSpaces(Ljava/lang/StringBuilder;)V').
name_ref(m_validate_30, method, 'validate', 'Lorg/apache/commons/csv/CSVFormat;.validate()V|Ljava/lang/IllegalStateException;').
name_ref(m_validate_map_122, method, 'validateMap', 'Lorg/apache/commons/csv/CSVRecordTest;.validateMap(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Z)V').
name_ref(m_value_of_103, method, 'valueOf', 'Ljava/lang/Integer;.valueOf(I)Ljava/lang/Integer;').
name_ref(m_value_of_37, method, 'valueOf', 'Ljava/lang/Character;.valueOf(C)Ljava/lang/Character;').
name_ref(m_value_of_46, method, 'valueOf', 'Ljava/lang/String;.valueOf(C)Ljava/lang/String;').
name_ref(m_values_99, method, 'values', 'Lorg/apache/commons/csv/CSVRecord;.values()[Ljava/lang/String;').
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
name_ref(q_content_6, q_name, 'token.content', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0:Lorg/apache/commons/csv/Token;.content)Ljava/lang/StringBuilder;').
name_ref(q_is_ready_5, q_name, 'token.isReady', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0:Lorg/apache/commons/csv/Token;.isReady)Z').
name_ref(q_length_2, q_name, 'values.length', 'Lorg/apache/commons/csv/CSVRecord;.values)[Ljava/lang/String;:.length)I').
name_ref(q_none_1, q_name, 'Quote.NONE', 'Lorg/apache/commons/csv/Quote;:Lorg/apache/commons/csv/Quote;.NONE)Lorg/apache/commons/csv/Quote;').
name_ref(q_type_3, q_name, 'token.type', 'Lorg/apache/commons/csv/Lexer;.nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0:Lorg/apache/commons/csv/Token;.type)Lorg/apache/commons/csv/Token$Type;').
name_ref(q_type_4, q_name, 'token.type', 'Lorg/apache/commons/csv/Lexer;.parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;|Ljava/io/IOException;#token#0#0:Lorg/apache/commons/csv/Token;.type)Lorg/apache/commons/csv/Token$Type;').

%%% End of Code Facts

