%%% Logic-FL Facts
:- style_check(-discontiguous).

%csvparser_1 - org.apache.commons.csv.CSVParser
param(p_file_62, 1, m_parse_53).
param(p_charset_63, 2, m_parse_53).
param(p_format_64, 3, m_parse_53).
throw(m_parse_53, ioexception).
param(p_string_65, 1, m_parse_54).
param(p_format_66, 2, m_parse_54).
throw(m_parse_54, ioexception).
param(p_url_67, 1, m_parse_55).
param(p_charset_68, 2, m_parse_55).
param(p_format_69, 3, m_parse_55).
throw(m_parse_55, ioexception).
assign(f_record_70, csvparser_1_expr1, line(csvparser_1, 221)).
method_invoc(csvparser_1_expr1, m_array_list_56, line(csvparser_1, 221)).
assign(f_reusable_token_71, csvparser_1_expr2, line(csvparser_1, 225)).
method_invoc(csvparser_1_expr2, m_token_57, line(csvparser_1, 225)).
param(p_reader_72, 1, m_csvparser_32).
param(p_format_73, 2, m_csvparser_32).
throw(m_csvparser_32, ioexception).
method_invoc(csvparser_1_expr3, m_not_null_2, line(csvparser_1, 245)).
argument(p_reader_72, 1, csvparser_1_expr3).
argument(csvparser_1_literal1, 2, csvparser_1_expr3).
ref(t_assertions_4, csvparser_1_expr3, line(csvparser_1, 245)).
method_invoc(csvparser_1_expr4, m_not_null_2, line(csvparser_1, 246)).
argument(p_format_73, 1, csvparser_1_expr4).
argument(csvparser_1_literal2, 2, csvparser_1_expr4).
ref(t_assertions_4, csvparser_1_expr4, line(csvparser_1, 246)).
assign(f_format_74, p_format_73, line(csvparser_1, 248)).
assign(f_lexer_75, csvparser_1_expr10, line(csvparser_1, 249)).
method_invoc(csvparser_1_expr10, m_lexer_58, line(csvparser_1, 249)).
argument(p_format_73, 1, csvparser_1_expr10).
argument(csvparser_1_expr12, 2, csvparser_1_expr10).
method_invoc(csvparser_1_expr12, m_extended_buffered_reader_59, line(csvparser_1, 249)).
argument(p_reader_72, 1, csvparser_1_expr12).
assign(f_header_map_76, csvparser_1_expr15, line(csvparser_1, 250)).
method_invoc(csvparser_1_expr15, m_initialize_header_60, line(csvparser_1, 250)).
throw(csvparser_1_expr15, ioexception, line(csvparser_1, 250)).
throw(csvparser_1_expr15, null_pointer_exception, line(csvparser_1, 250)).
ref(csvparser_1_expr17, csvparser_1_expr15, line(csvparser_1, 250)).
assign(v_input_77, csvparser_1_expr18, line(csvparser_1, 254)).
method_invoc(csvparser_1_expr18, m_to_string_62, line(csvparser_1, 254)).
ref(csvparser_1_expr19, csvparser_1_expr18, line(csvparser_1, 254)).
ref(f_reusable_token_71, csvparser_1_expr19, line(csvparser_1, 254)).
assign(v_null_string_79, csvparser_1_expr22, line(csvparser_1, 255)).
method_invoc(csvparser_1_expr22, m_get_null_string_21, line(csvparser_1, 255)).
ref(f_format_74, csvparser_1_expr22, line(csvparser_1, 255)).
method_invoc(csvparser_1_expr26, m_add_63, line(csvparser_1, 259)).
argument(csvparser_1_expr27, 1, csvparser_1_expr26).
ref(f_record_70, csvparser_1_expr26, line(csvparser_1, 259)).
cond_expr(csvparser_1_expr30, csvparser_1_literal4, v_input_77, line(csvparser_1, 259)).
method_invoc(csvparser_1_expr30, m_equals_ignore_case_64, line(csvparser_1, 259)).
argument(v_null_string_79, 1, csvparser_1_expr30).
ref(v_input_77, csvparser_1_expr30, line(csvparser_1, 259)).
throw(m_close_65, ioexception).
throw(m_get_records_69, ioexception).
param(p_records_80, 1, m_get_records_70).
throw(m_get_records_70, ioexception).
throw(m_initialize_header_60, ioexception).
assign(v_hdr_map_81, csvparser_1_literal5, line(csvparser_1, 360)).
assign(v_format_header_82, csvparser_1_expr31, line(csvparser_1, 361)).
method_invoc(csvparser_1_expr31, m_get_header_17, line(csvparser_1, 361)).
ref(f_format_74, csvparser_1_expr31, line(csvparser_1, 361)).
assign(v_hdr_map_81, csvparser_1_expr36, line(csvparser_1, 363)).
method_invoc(csvparser_1_expr36, m_linked_hash_map_71, line(csvparser_1, 363)).
assign(v_header_record_83, csvparser_1_literal7, line(csvparser_1, 365)).
ref(v_format_header_82, q_length_2, line(csvparser_1, 366)).
assign(v_next_record_84, csvparser_1_expr38, line(csvparser_1, 368)).
method_invoc(csvparser_1_expr38, m_next_record_72, line(csvparser_1, 368)).
throw(csvparser_1_expr38, ioexception, line(csvparser_1, 368)).
ref(csvparser_1_expr39, csvparser_1_expr38, line(csvparser_1, 368)).
assign(v_header_record_83, csvparser_1_expr42, line(csvparser_1, 370)).
method_invoc(csvparser_1_expr42, m_values_73, line(csvparser_1, 370)).
ref(v_next_record_84, csvparser_1_expr42, line(csvparser_1, 370)).
assign(v_i_85, csvparser_1_literal11, line(csvparser_1, 381)).
ref(v_header_record_83, q_length_3, line(csvparser_1, 381)).
assign(v_header_86, csvparser_1_expr47, line(csvparser_1, 382)).
ref(v_header_record_83, csvparser_1_expr47, line(csvparser_1, 382)).
assign(v_contains_header_87, csvparser_1_expr48, line(csvparser_1, 383)).
method_invoc(csvparser_1_expr48, m_contains_key_74, line(csvparser_1, 383)).
argument(v_header_86, 1, csvparser_1_expr48).
ref(v_hdr_map_81, csvparser_1_expr48, line(csvparser_1, 383)).
assign(v_empty_header_88, csvparser_1_expr49, line(csvparser_1, 384)).
method_invoc(csvparser_1_expr49, m_is_empty_75, line(csvparser_1, 384)).
ref(csvparser_1_expr50, csvparser_1_expr49, line(csvparser_1, 384)).
method_invoc(csvparser_1_expr50, m_trim_76, line(csvparser_1, 384)).
ref(v_header_86, csvparser_1_expr50, line(csvparser_1, 384)).
assign(csvparser_1_expr52, csvparser_1_expr53, line(csvparser_1, 385)).
assign(csvparser_1_expr55, csvparser_1_expr56, line(csvparser_1, 385)).
method_invoc(csvparser_1_expr58, m_get_ignore_empty_headers_18, line(csvparser_1, 385)).
ref(f_format_74, csvparser_1_expr58, line(csvparser_1, 385)).
method_invoc(csvparser_1_expr61, m_put_77, line(csvparser_1, 389)).
argument(v_header_86, 1, csvparser_1_expr61).
argument(csvparser_1_expr62, 2, csvparser_1_expr61).
ref(v_hdr_map_81, csvparser_1_expr61, line(csvparser_1, 389)).
method_invoc(csvparser_1_expr62, m_value_of_78, line(csvparser_1, 389)).
argument(v_i_85, 1, csvparser_1_expr62).
ref(t_integer_5, csvparser_1_expr62, line(csvparser_1, 389)).
throw(m_next_record_72, ioexception).
assign(v_result_89, csvparser_1_literal12, line(csvparser_1, 464)).
method_invoc(csvparser_1_expr63, m_clear_85, line(csvparser_1, 465)).
ref(f_record_70, csvparser_1_expr63, line(csvparser_1, 465)).
assign(v_sb_90, csvparser_1_literal13, line(csvparser_1, 466)).
method_invoc(csvparser_1_expr66, m_reset_86, line(csvparser_1, 468)).
ref(f_reusable_token_71, csvparser_1_expr66, line(csvparser_1, 468)).
method_invoc(csvparser_1_expr69, m_next_token_87, line(csvparser_1, 469)).
throw(csvparser_1_expr69, ioexception, line(csvparser_1, 469)).
argument(f_reusable_token_71, 1, csvparser_1_expr69).
ref(f_lexer_75, csvparser_1_expr69, line(csvparser_1, 469)).
ref(f_reusable_token_71, csvparser_1_expr74, line(csvparser_1, 470)).
method_invoc(csvparser_1_expr77, m_add_record_value_61, line(csvparser_1, 472)).
ref(csvparser_1_expr78, csvparser_1_expr77, line(csvparser_1, 472)).
method_invoc(csvparser_1_expr79, m_add_record_value_61, line(csvparser_1, 475)).
ref(csvparser_1_expr80, csvparser_1_expr79, line(csvparser_1, 475)).
ref(f_reusable_token_71, csvparser_1_expr82, line(csvparser_1, 496)).
method_invoc(csvparser_1_expr86, m_is_empty_88, line(csvparser_1, 498)).
ref(f_record_70, csvparser_1_expr86, line(csvparser_1, 498)).
assign(v_comment_94, csvparser_1_expr92, line(csvparser_1, 500)).
cond_expr(csvparser_1_expr93, csvparser_1_literal14, csvparser_1_expr94, line(csvparser_1, 500)).
method_invoc(csvparser_1_expr94, m_to_string_62, line(csvparser_1, 500)).
ref(v_sb_90, csvparser_1_expr94, line(csvparser_1, 500)).
assign(v_result_89, csvparser_1_expr96, line(csvparser_1, 501)).
method_invoc(csvparser_1_expr96, m_csvrecord_89, line(csvparser_1, 501)).
argument(csvparser_1_expr97, 1, csvparser_1_expr96).
argument(f_header_map_76, 2, csvparser_1_expr96).
argument(v_comment_94, 3, csvparser_1_expr96).
argument(f_record_number_93, 4, csvparser_1_expr96).
method_invoc(csvparser_1_expr97, m_to_array_90, line(csvparser_1, 501)).
argument(csvparser_1_expr100, 1, csvparser_1_expr97).
ref(f_record_70, csvparser_1_expr97, line(csvparser_1, 501)).
method_invoc(csvparser_1_expr103, m_size_91, line(csvparser_1, 501)).
ref(f_record_70, csvparser_1_expr103, line(csvparser_1, 501)).
return(v_result_89, m_next_record_72, line(csvparser_1, 504)).

%csvformat_1 - org.apache.commons.csv.CSVFormat
assign(f_default_3, csvformat_1_expr1, line(csvformat_1, 175)).
method_invoc(csvformat_1_expr1, m_csvformat_3, line(csvformat_1, 175)).
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
argument(csvformat_1_literal9, 12, csvformat_1_expr1).
assign(f_rfc4180_7, csvformat_1_expr2, line(csvformat_1, 187)).
method_invoc(csvformat_1_expr2, m_with_ignore_empty_lines_4, line(csvformat_1, 187)).
argument(csvformat_1_literal10, 1, csvformat_1_expr2).
ref(f_default_3, csvformat_1_expr2, line(csvformat_1, 187)).
assign(f_excel_8, csvformat_1_expr3, line(csvformat_1, 211)).
method_invoc(csvformat_1_expr3, m_with_ignore_empty_lines_4, line(csvformat_1, 211)).
argument(csvformat_1_literal11, 1, csvformat_1_expr3).
ref(f_default_3, csvformat_1_expr3, line(csvformat_1, 211)).
assign(f_tdf_9, csvformat_1_expr4, line(csvformat_1, 214)).
assign(f_mysql_10, csvformat_1_expr5, line(csvformat_1, 227)).
param(p_c_11, 1, m_is_line_break_5).
return(csvformat_1_expr6, m_is_line_break_5, line(csvformat_1, 244)).
param(p_c_14, 1, m_is_line_break_6).
return(csvformat_1_expr9, m_is_line_break_6, line(csvformat_1, 256)).
method_invoc(csvformat_1_expr11, m_is_line_break_5, line(csvformat_1, 256)).
argument(csvformat_1_expr12, 1, csvformat_1_expr11).
method_invoc(csvformat_1_expr12, m_char_value_7, line(csvformat_1, 256)).
ref(p_c_14, csvformat_1_expr12, line(csvformat_1, 256)).
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
param(p_ignore_empty_headers_27, 12, m_csvformat_3).
method_invoc(csvformat_1_expr13, m_is_line_break_5, line(csvformat_1, 304)).
argument(p_delimiter_16, 1, csvformat_1_expr13).
assign(f_delimiter_28, p_delimiter_16, line(csvformat_1, 307)).
assign(f_quote_char_29, p_quote_char_17, line(csvformat_1, 308)).
assign(f_quote_policy_30, p_quote_policy_18, line(csvformat_1, 309)).
assign(f_comment_start_31, p_comment_start_19, line(csvformat_1, 310)).
assign(f_escape_32, p_escape_20, line(csvformat_1, 311)).
assign(f_ignore_surrounding_spaces_33, p_ignore_surrounding_spaces_21, line(csvformat_1, 312)).
assign(f_ignore_empty_headers_34, p_ignore_empty_headers_27, line(csvformat_1, 313)).
assign(f_ignore_empty_lines_35, p_ignore_empty_lines_22, line(csvformat_1, 314)).
assign(f_record_separator_36, p_record_separator_23, line(csvformat_1, 315)).
assign(f_null_string_37, p_null_string_24, line(csvformat_1, 316)).
assign(f_header_38, csvformat_1_literal14, line(csvformat_1, 318)).
assign(v_dup_check_39, csvformat_1_expr48, line(csvformat_1, 320)).
method_invoc(csvformat_1_expr48, m_hash_set_9, line(csvformat_1, 320)).
ref(p_header_25, csvformat_1_stmt17, line(csvformat_1, 321)).
assign(f_header_38, csvformat_1_expr51, line(csvformat_1, 327)).
method_invoc(csvformat_1_expr51, m_clone_10, line(csvformat_1, 327)).
ref(p_header_25, csvformat_1_expr51, line(csvformat_1, 327)).
assign(f_skip_header_record_41, p_skip_header_record_26, line(csvformat_1, 329)).
method_invoc(csvformat_1_expr56, m_validate_11, line(csvformat_1, 330)).
throw(csvformat_1_expr56, illegal_argument_exception, line(csvformat_1, 330)).
param(p_obj_42, 1, m_equals_12).
param(p_values_43, 1, m_format_13).
return(f_comment_start_31, m_get_comment_start_14, line(csvformat_1, 426)).
return(f_delimiter_28, m_get_delimiter_15, line(csvformat_1, 435)).
return(f_escape_32, m_get_escape_16, line(csvformat_1, 444)).
return(csvformat_1_expr57, m_get_header_17, line(csvformat_1, 453)).
cond_expr(csvformat_1_expr58, csvformat_1_expr59, csvformat_1_literal15, line(csvformat_1, 453)).
method_invoc(csvformat_1_expr59, m_clone_10, line(csvformat_1, 453)).
ref(f_header_38, csvformat_1_expr59, line(csvformat_1, 453)).
return(f_ignore_empty_lines_35, m_get_ignore_empty_lines_19, line(csvformat_1, 473)).
return(f_ignore_surrounding_spaces_33, m_get_ignore_surrounding_spaces_20, line(csvformat_1, 483)).
return(f_null_string_37, m_get_null_string_21, line(csvformat_1, 500)).
return(f_quote_char_29, m_get_quote_char_22, line(csvformat_1, 509)).
param(p_in_44, 1, m_parse_31).
throw(m_parse_31, ioexception).
return(csvformat_1_expr60, m_parse_31, line(csvformat_1, 611)).
method_invoc(csvformat_1_expr60, m_csvparser_32, line(csvformat_1, 611)).
throw(csvformat_1_expr60, ioexception, line(csvformat_1, 611)).
argument(p_in_44, 1, csvformat_1_expr60).
argument(csvformat_1_expr61, 2, csvformat_1_expr60).
param(p_out_45, 1, m_print_33).
throw(m_print_33, ioexception).
throw(m_validate_11, illegal_argument_exception).
method_invoc(csvformat_1_expr65, m_char_value_7, line(csvformat_1, 675)).
ref(f_quote_char_29, csvformat_1_expr65, line(csvformat_1, 675)).
method_invoc(csvformat_1_expr69, m_char_value_7, line(csvformat_1, 680)).
ref(f_escape_32, csvformat_1_expr69, line(csvformat_1, 680)).
method_invoc(csvformat_1_expr73, m_char_value_7, line(csvformat_1, 685)).
ref(f_comment_start_31, csvformat_1_expr73, line(csvformat_1, 685)).
method_invoc(csvformat_1_expr76, m_equals_35, line(csvformat_1, 690)).
argument(f_comment_start_31, 1, csvformat_1_expr76).
ref(f_quote_char_29, csvformat_1_expr76, line(csvformat_1, 690)).
method_invoc(csvformat_1_expr79, m_equals_35, line(csvformat_1, 695)).
argument(f_comment_start_31, 1, csvformat_1_expr79).
ref(f_escape_32, csvformat_1_expr79, line(csvformat_1, 695)).
ref(t_quote_1, q_none_1, line(csvformat_1, 700)).
param(p_comment_start_46, 1, m_with_comment_start_36).
param(p_comment_start_47, 1, m_with_comment_start_37).
param(p_delimiter_48, 1, m_with_delimiter_38).
method_invoc(csvformat_1_expr85, m_is_line_break_5, line(csvformat_1, 757)).
argument(p_delimiter_48, 1, csvformat_1_expr85).
return(csvformat_1_expr86, m_with_delimiter_38, line(csvformat_1, 760)).
method_invoc(csvformat_1_expr86, m_csvformat_3, line(csvformat_1, 760)).
argument(p_delimiter_48, 1, csvformat_1_expr86).
argument(f_quote_char_29, 2, csvformat_1_expr86).
argument(f_quote_policy_30, 3, csvformat_1_expr86).
argument(f_comment_start_31, 4, csvformat_1_expr86).
argument(f_escape_32, 5, csvformat_1_expr86).
argument(f_ignore_surrounding_spaces_33, 6, csvformat_1_expr86).
argument(f_ignore_empty_lines_35, 7, csvformat_1_expr86).
argument(f_record_separator_36, 8, csvformat_1_expr86).
argument(f_null_string_37, 9, csvformat_1_expr86).
argument(f_header_38, 10, csvformat_1_expr86).
argument(f_skip_header_record_41, 11, csvformat_1_expr86).
argument(f_ignore_empty_headers_34, 12, csvformat_1_expr86).
param(p_escape_49, 1, m_with_escape_39).
return(csvformat_1_expr87, m_with_escape_39, line(csvformat_1, 775)).
method_invoc(csvformat_1_expr87, m_with_escape_40, line(csvformat_1, 775)).
argument(csvformat_1_expr88, 1, csvformat_1_expr87).
method_invoc(csvformat_1_expr88, m_value_of_41, line(csvformat_1, 775)).
argument(p_escape_49, 1, csvformat_1_expr88).
ref(t_character_2, csvformat_1_expr88, line(csvformat_1, 775)).
param(p_escape_50, 1, m_with_escape_40).
method_invoc(csvformat_1_expr89, m_is_line_break_6, line(csvformat_1, 788)).
argument(p_escape_50, 1, csvformat_1_expr89).
return(csvformat_1_expr90, m_with_escape_40, line(csvformat_1, 791)).
method_invoc(csvformat_1_expr90, m_csvformat_3, line(csvformat_1, 791)).
argument(f_delimiter_28, 1, csvformat_1_expr90).
argument(f_quote_char_29, 2, csvformat_1_expr90).
argument(f_quote_policy_30, 3, csvformat_1_expr90).
argument(f_comment_start_31, 4, csvformat_1_expr90).
argument(p_escape_50, 5, csvformat_1_expr90).
argument(f_ignore_surrounding_spaces_33, 6, csvformat_1_expr90).
argument(f_ignore_empty_lines_35, 7, csvformat_1_expr90).
argument(f_record_separator_36, 8, csvformat_1_expr90).
argument(f_null_string_37, 9, csvformat_1_expr90).
argument(f_header_38, 10, csvformat_1_expr90).
argument(f_skip_header_record_41, 11, csvformat_1_expr90).
argument(f_ignore_empty_headers_34, 12, csvformat_1_expr90).
param(p_header_51, 1, m_with_header_42).
return(csvformat_1_expr91, m_with_header_42, line(csvformat_1, 814)).
method_invoc(csvformat_1_expr91, m_csvformat_3, line(csvformat_1, 814)).
argument(f_delimiter_28, 1, csvformat_1_expr91).
argument(f_quote_char_29, 2, csvformat_1_expr91).
argument(f_quote_policy_30, 3, csvformat_1_expr91).
argument(f_comment_start_31, 4, csvformat_1_expr91).
argument(f_escape_32, 5, csvformat_1_expr91).
argument(f_ignore_surrounding_spaces_33, 6, csvformat_1_expr91).
argument(f_ignore_empty_lines_35, 7, csvformat_1_expr91).
argument(f_record_separator_36, 8, csvformat_1_expr91).
argument(f_null_string_37, 9, csvformat_1_expr91).
argument(p_header_51, 10, csvformat_1_expr91).
argument(f_skip_header_record_41, 11, csvformat_1_expr91).
argument(f_ignore_empty_headers_34, 12, csvformat_1_expr91).
param(p_ignore_empty_headers_52, 1, m_with_ignore_empty_headers_43).
return(csvformat_1_expr92, m_with_ignore_empty_headers_43, line(csvformat_1, 828)).
method_invoc(csvformat_1_expr92, m_csvformat_3, line(csvformat_1, 828)).
argument(f_delimiter_28, 1, csvformat_1_expr92).
argument(f_quote_char_29, 2, csvformat_1_expr92).
argument(f_quote_policy_30, 3, csvformat_1_expr92).
argument(f_comment_start_31, 4, csvformat_1_expr92).
argument(f_escape_32, 5, csvformat_1_expr92).
argument(f_ignore_surrounding_spaces_33, 6, csvformat_1_expr92).
argument(p_ignore_empty_headers_52, 7, csvformat_1_expr92).
argument(f_record_separator_36, 8, csvformat_1_expr92).
argument(f_null_string_37, 9, csvformat_1_expr92).
argument(f_header_38, 10, csvformat_1_expr92).
argument(f_skip_header_record_41, 11, csvformat_1_expr92).
argument(p_ignore_empty_headers_52, 12, csvformat_1_expr92).
param(p_ignore_empty_lines_53, 1, m_with_ignore_empty_lines_4).
return(csvformat_1_expr93, m_with_ignore_empty_lines_4, line(csvformat_1, 842)).
method_invoc(csvformat_1_expr93, m_csvformat_3, line(csvformat_1, 842)).
argument(f_delimiter_28, 1, csvformat_1_expr93).
argument(f_quote_char_29, 2, csvformat_1_expr93).
argument(f_quote_policy_30, 3, csvformat_1_expr93).
argument(f_comment_start_31, 4, csvformat_1_expr93).
argument(f_escape_32, 5, csvformat_1_expr93).
argument(f_ignore_surrounding_spaces_33, 6, csvformat_1_expr93).
argument(p_ignore_empty_lines_53, 7, csvformat_1_expr93).
argument(f_record_separator_36, 8, csvformat_1_expr93).
argument(f_null_string_37, 9, csvformat_1_expr93).
argument(f_header_38, 10, csvformat_1_expr93).
argument(f_skip_header_record_41, 11, csvformat_1_expr93).
argument(f_ignore_empty_headers_34, 12, csvformat_1_expr93).
param(p_ignore_surrounding_spaces_54, 1, m_with_ignore_surrounding_spaces_44).
return(csvformat_1_expr94, m_with_ignore_surrounding_spaces_44, line(csvformat_1, 856)).
method_invoc(csvformat_1_expr94, m_csvformat_3, line(csvformat_1, 856)).
argument(f_delimiter_28, 1, csvformat_1_expr94).
argument(f_quote_char_29, 2, csvformat_1_expr94).
argument(f_quote_policy_30, 3, csvformat_1_expr94).
argument(f_comment_start_31, 4, csvformat_1_expr94).
argument(f_escape_32, 5, csvformat_1_expr94).
argument(p_ignore_surrounding_spaces_54, 6, csvformat_1_expr94).
argument(f_ignore_empty_lines_35, 7, csvformat_1_expr94).
argument(f_record_separator_36, 8, csvformat_1_expr94).
argument(f_null_string_37, 9, csvformat_1_expr94).
argument(f_header_38, 10, csvformat_1_expr94).
argument(f_skip_header_record_41, 11, csvformat_1_expr94).
argument(f_ignore_empty_headers_34, 12, csvformat_1_expr94).
param(p_null_string_55, 1, m_with_null_string_45).
return(csvformat_1_expr95, m_with_null_string_45, line(csvformat_1, 877)).
method_invoc(csvformat_1_expr95, m_csvformat_3, line(csvformat_1, 877)).
argument(f_delimiter_28, 1, csvformat_1_expr95).
argument(f_quote_char_29, 2, csvformat_1_expr95).
argument(f_quote_policy_30, 3, csvformat_1_expr95).
argument(f_comment_start_31, 4, csvformat_1_expr95).
argument(f_escape_32, 5, csvformat_1_expr95).
argument(f_ignore_surrounding_spaces_33, 6, csvformat_1_expr95).
argument(f_ignore_empty_lines_35, 7, csvformat_1_expr95).
argument(f_record_separator_36, 8, csvformat_1_expr95).
argument(p_null_string_55, 9, csvformat_1_expr95).
argument(f_header_38, 10, csvformat_1_expr95).
argument(f_skip_header_record_41, 11, csvformat_1_expr95).
argument(f_ignore_empty_headers_34, 12, csvformat_1_expr95).
param(p_quote_char_56, 1, m_with_quote_char_46).
param(p_quote_char_57, 1, m_with_quote_char_47).
method_invoc(csvformat_1_expr96, m_is_line_break_6, line(csvformat_1, 905)).
argument(p_quote_char_57, 1, csvformat_1_expr96).
return(csvformat_1_expr97, m_with_quote_char_47, line(csvformat_1, 908)).
method_invoc(csvformat_1_expr97, m_csvformat_3, line(csvformat_1, 908)).
argument(f_delimiter_28, 1, csvformat_1_expr97).
argument(p_quote_char_57, 2, csvformat_1_expr97).
argument(f_quote_policy_30, 3, csvformat_1_expr97).
argument(f_comment_start_31, 4, csvformat_1_expr97).
argument(f_escape_32, 5, csvformat_1_expr97).
argument(f_ignore_surrounding_spaces_33, 6, csvformat_1_expr97).
argument(f_ignore_empty_lines_35, 7, csvformat_1_expr97).
argument(f_record_separator_36, 8, csvformat_1_expr97).
argument(f_null_string_37, 9, csvformat_1_expr97).
argument(f_header_38, 10, csvformat_1_expr97).
argument(f_skip_header_record_41, 11, csvformat_1_expr97).
argument(f_ignore_empty_headers_34, 12, csvformat_1_expr97).
param(p_quote_policy_58, 1, m_with_quote_policy_48).
param(p_record_separator_59, 1, m_with_record_separator_49).
return(csvformat_1_expr98, m_with_record_separator_49, line(csvformat_1, 940)).
method_invoc(csvformat_1_expr98, m_with_record_separator_50, line(csvformat_1, 940)).
argument(csvformat_1_expr99, 1, csvformat_1_expr98).
method_invoc(csvformat_1_expr99, m_value_of_51, line(csvformat_1, 940)).
argument(p_record_separator_59, 1, csvformat_1_expr99).
ref(t_string_3, csvformat_1_expr99, line(csvformat_1, 940)).
param(p_record_separator_60, 1, m_with_record_separator_50).
return(csvformat_1_expr100, m_with_record_separator_50, line(csvformat_1, 956)).
method_invoc(csvformat_1_expr100, m_csvformat_3, line(csvformat_1, 956)).
argument(f_delimiter_28, 1, csvformat_1_expr100).
argument(f_quote_char_29, 2, csvformat_1_expr100).
argument(f_quote_policy_30, 3, csvformat_1_expr100).
argument(f_comment_start_31, 4, csvformat_1_expr100).
argument(f_escape_32, 5, csvformat_1_expr100).
argument(f_ignore_surrounding_spaces_33, 6, csvformat_1_expr100).
argument(f_ignore_empty_lines_35, 7, csvformat_1_expr100).
argument(p_record_separator_60, 8, csvformat_1_expr100).
argument(f_null_string_37, 9, csvformat_1_expr100).
argument(f_header_38, 10, csvformat_1_expr100).
argument(f_skip_header_record_41, 11, csvformat_1_expr100).
argument(f_ignore_empty_headers_34, 12, csvformat_1_expr100).
param(p_skip_header_record_61, 1, m_with_skip_header_record_52).

%constants_1 - org.apache.commons.csv.Constants
assign(f_double_quote_char_5, constants_1_expr1, line(constants_1, 36)).
method_invoc(constants_1_expr1, m_value_of_41, line(constants_1, 36)).
argument(constants_1_literal1, 1, constants_1_expr1).
ref(t_character_2, constants_1_expr1, line(constants_1, 36)).

%csvparser_test_1 - org.apache.commons.csv.CSVParserTest
assign(f_result_95, csvparser_test_1_expr1, line(csvparser_test_1, 76)).
throw(m_test_backslash_escaping_92, ioexception).
throw(m_test_backslash_escaping2_93, ioexception).
throw(m_test_backslash_escaping_old_94, ioexception).
throw(m_test_bom_95, ioexception).
throw(m_test_carriage_return_endings_97, ioexception).
throw(m_test_carriage_return_line_feed_endings_98, ioexception).
throw(m_test_close_99, exception).
throw(m_test_csv57_100, exception).
throw(m_test_default_format_101, ioexception).
throw(m_test_empty_file_102, exception).
throw(m_test_empty_line_behaviour_csv_103, exception).
throw(m_test_empty_line_behaviour_excel_104, exception).
throw(m_test_end_of_file_behavior_csv_105, exception).
throw(m_test_end_of_file_behaviour_excel_106, exception).
throw(m_test_excel_format1_107, ioexception).
throw(m_test_excel_format2_108, exception).
throw(m_test_for_each_109, exception).
throw(m_test_get_header_map_110, exception).
throw(m_test_duplicate_headers_111, exception).
throw(m_test_get_line_112, ioexception).
throw(m_test_get_line_number_with_cr_113, exception).
throw(m_test_get_line_number_with_crlf_114, exception).
throw(m_test_get_line_number_with_lf_115, exception).
throw(m_test_get_one_line_116, ioexception).
throw(m_test_get_one_line_custom_collection_117, ioexception).
throw(m_test_get_one_line_one_parser_118, ioexception).
throw(m_test_get_record_number_with_cr_119, exception).
throw(m_test_get_record_number_with_crlf_120, exception).
throw(m_test_get_record_number_with_lf_121, exception).
throw(m_test_get_records_122, ioexception).
throw(m_test_get_record_with_multi_line_values_123, exception).
throw(m_test_header_124, exception).
throw(m_test_header_missing_125, exception).
throw(m_test_headers_missing_exception_126, exception).
throw(m_test_headers_missing_127, exception).
throw(m_test_header_missing_with_null_128, exception).
assign(v_in_96, csvparser_test_1_expr2, line(csvparser_test_1, 669)).
method_invoc(csvparser_test_1_expr2, m_string_reader_129, line(csvparser_test_1, 669)).
argument(csvparser_test_1_literal1, 1, csvparser_test_1_expr2).
method_invoc(csvparser_test_1_expr3, m_iterator_80, line(csvparser_test_1, 670)).
ref(csvparser_test_1_expr4, csvparser_test_1_expr3, line(csvparser_test_1, 670)).
method_invoc(csvparser_test_1_expr4, m_parse_31, line(csvparser_test_1, 670)).
throw(csvparser_test_1_expr4, ioexception, line(csvparser_test_1, 670)).
argument(v_in_96, 1, csvparser_test_1_expr4).
ref(csvparser_test_1_expr5, csvparser_test_1_expr4, line(csvparser_test_1, 670)).
method_invoc(csvparser_test_1_expr5, m_with_ignore_empty_headers_43, line(csvparser_test_1, 670)).
argument(csvparser_test_1_literal2, 1, csvparser_test_1_expr5).
ref(csvparser_test_1_expr6, csvparser_test_1_expr5, line(csvparser_test_1, 670)).
method_invoc(csvparser_test_1_expr6, m_with_null_string_45, line(csvparser_test_1, 670)).
argument(csvparser_test_1_literal3, 1, csvparser_test_1_expr6).
ref(csvparser_test_1_expr7, csvparser_test_1_expr6, line(csvparser_test_1, 670)).
method_invoc(csvparser_test_1_expr7, m_with_header_42, line(csvparser_test_1, 670)).
ref(f_default_3, csvparser_test_1_expr7, line(csvparser_test_1, 670)).
ref(t_csvformat_7, q_default_4, line(csvparser_test_1, 670)).
throw(m_test_header_comment_130, exception).
throw(m_test_ignore_empty_lines_131, ioexception).
throw(m_test_invalid_format_132, exception).
throw(m_test_iterator_133, exception).
throw(m_test_line_feed_endings_134, ioexception).
throw(m_test_mapped_but_not_set_as_outlook2007_contact_export_135, exception).
throw(m_test_multiple_iterators_136, exception).
throw(m_test_new_csvparser_null_reader_format_137, exception).
throw(m_test_new_csvparser_reader_null_format_138, exception).
throw(m_test_no_header_map_139, exception).
throw(m_test_parse_file_null_format_140, exception).
throw(m_test_parse_null_file_format_141, exception).
throw(m_test_parse_null_string_format_142, exception).
throw(m_test_parse_null_url_charset_format_143, exception).
throw(m_test_parser_url_null_charset_format_144, exception).
throw(m_test_parse_string_null_format_145, exception).
throw(m_test_parse_url_charset_null_format_146, exception).
throw(m_test_provided_header_147, exception).
throw(m_test_provided_header_auto_148, exception).
throw(m_test_roundtrip_149, exception).
throw(m_test_skip_auto_header_150, exception).
throw(m_test_skip_set_header_151, exception).
param(p_line_separator_97, 1, m_validate_line_numbers_152).
throw(m_validate_line_numbers_152, ioexception).
param(p_line_separator_98, 1, m_validate_record_numbers_153).
throw(m_validate_record_numbers_153, ioexception).

%quote_1 - org.apache.commons.csv.Quote

%extended_buffered_reader_1 - org.apache.commons.csv.ExtendedBufferedReader
assign(f_last_char_114, f_undefined_115, line(extended_buffered_reader_1, 40)).
assign(f_eol_counter_116, extended_buffered_reader_1_literal1, line(extended_buffered_reader_1, 43)).
param(p_reader_117, 1, m_extended_buffered_reader_59).
method_invoc(extended_buffered_reader_1_expr1, m_buffered_reader_168, line(extended_buffered_reader_1, 51)).
argument(p_reader_117, 1, extended_buffered_reader_1_expr1).
throw(m_read_169, ioexception).
assign(v_current_118, extended_buffered_reader_1_expr2, line(extended_buffered_reader_1, 56)).
method_invoc(extended_buffered_reader_1_expr2, m_read_170, line(extended_buffered_reader_1, 56)).
throw(extended_buffered_reader_1_expr2, ioexception, line(extended_buffered_reader_1, 56)).
assign(extended_buffered_reader_1_expr5, extended_buffered_reader_1_expr6, line(extended_buffered_reader_1, 57)).
assign(f_last_char_114, v_current_118, line(extended_buffered_reader_1, 60)).
return(f_last_char_114, m_read_169, line(extended_buffered_reader_1, 61)).
return(f_last_char_114, m_get_last_char_171, line(extended_buffered_reader_1, 73)).
param(p_buf_119, 1, m_read_172).
param(p_offset_120, 2, m_read_172).
param(p_length_121, 3, m_read_172).
throw(m_read_172, ioexception).
throw(m_read_line_173, ioexception).
throw(m_look_ahead_174, ioexception).
throw(m_close_177, ioexception).

%lexer_1 - org.apache.commons.csv.Lexer
param(p_format_122, 1, m_lexer_58).
param(p_reader_123, 2, m_lexer_58).
assign(f_reader_124, p_reader_123, line(lexer_1, 63)).
assign(f_delimiter_125, lexer_1_expr6, line(lexer_1, 64)).
method_invoc(lexer_1_expr6, m_get_delimiter_15, line(lexer_1, 64)).
ref(p_format_122, lexer_1_expr6, line(lexer_1, 64)).
assign(f_escape_126, lexer_1_expr10, line(lexer_1, 65)).
method_invoc(lexer_1_expr10, m_map_null_to_disabled_178, line(lexer_1, 65)).
argument(lexer_1_expr12, 1, lexer_1_expr10).
method_invoc(lexer_1_expr12, m_get_escape_16, line(lexer_1, 65)).
ref(p_format_122, lexer_1_expr12, line(lexer_1, 65)).
assign(f_quote_char_127, lexer_1_expr15, line(lexer_1, 66)).
method_invoc(lexer_1_expr15, m_map_null_to_disabled_178, line(lexer_1, 66)).
argument(lexer_1_expr17, 1, lexer_1_expr15).
method_invoc(lexer_1_expr17, m_get_quote_char_22, line(lexer_1, 66)).
ref(p_format_122, lexer_1_expr17, line(lexer_1, 66)).
assign(f_comment_start_128, lexer_1_expr20, line(lexer_1, 67)).
method_invoc(lexer_1_expr20, m_map_null_to_disabled_178, line(lexer_1, 67)).
argument(lexer_1_expr22, 1, lexer_1_expr20).
method_invoc(lexer_1_expr22, m_get_comment_start_14, line(lexer_1, 67)).
ref(p_format_122, lexer_1_expr22, line(lexer_1, 67)).
assign(f_ignore_surrounding_spaces_129, lexer_1_expr25, line(lexer_1, 68)).
method_invoc(lexer_1_expr25, m_get_ignore_surrounding_spaces_20, line(lexer_1, 68)).
ref(p_format_122, lexer_1_expr25, line(lexer_1, 68)).
assign(f_ignore_empty_lines_130, lexer_1_expr29, line(lexer_1, 69)).
method_invoc(lexer_1_expr29, m_get_ignore_empty_lines_19, line(lexer_1, 69)).
ref(p_format_122, lexer_1_expr29, line(lexer_1, 69)).
param(p_token_131, 1, m_next_token_87).
throw(m_next_token_87, ioexception).
assign(v_last_char_132, lexer_1_expr31, line(lexer_1, 86)).
method_invoc(lexer_1_expr31, m_get_last_char_171, line(lexer_1, 86)).
ref(f_reader_124, lexer_1_expr31, line(lexer_1, 86)).
assign(v_c_133, lexer_1_expr32, line(lexer_1, 89)).
method_invoc(lexer_1_expr32, m_read_169, line(lexer_1, 89)).
throw(lexer_1_expr32, ioexception, line(lexer_1, 89)).
ref(f_reader_124, lexer_1_expr32, line(lexer_1, 89)).
assign(v_eol_134, lexer_1_expr33, line(lexer_1, 94)).
method_invoc(lexer_1_expr33, m_read_end_of_line_179, line(lexer_1, 94)).
throw(lexer_1_expr33, ioexception, line(lexer_1, 94)).
argument(v_c_133, 1, lexer_1_expr33).
method_invoc(lexer_1_expr35, m_is_start_of_line_180, line(lexer_1, 98)).
argument(v_last_char_132, 1, lexer_1_expr35).
method_invoc(lexer_1_expr37, m_is_end_of_file_181, line(lexer_1, 113)).
argument(v_last_char_132, 1, lexer_1_expr37).
assign(lexer_1_expr38, lexer_1_expr39, line(lexer_1, 113)).
method_invoc(lexer_1_expr41, m_is_delimiter_182, line(lexer_1, 113)).
argument(v_last_char_132, 1, lexer_1_expr41).
method_invoc(lexer_1_expr42, m_is_end_of_file_181, line(lexer_1, 113)).
argument(v_c_133, 1, lexer_1_expr42).
method_invoc(lexer_1_expr44, m_is_start_of_line_180, line(lexer_1, 119)).
argument(v_last_char_132, 1, lexer_1_expr44).
method_invoc(lexer_1_expr45, m_is_comment_start_183, line(lexer_1, 119)).
argument(v_c_133, 1, lexer_1_expr45).
ref(p_token_131, q_type_5, line(lexer_1, 133)).
method_invoc(lexer_1_expr47, m_is_delimiter_182, line(lexer_1, 143)).
argument(v_c_133, 1, lexer_1_expr47).
assign(q_type_6, f_token_92, line(lexer_1, 145)).
ref(p_token_131, q_type_6, line(lexer_1, 145)).
method_invoc(lexer_1_expr49, m_is_quote_char_184, line(lexer_1, 150)).
argument(v_c_133, 1, lexer_1_expr49).
method_invoc(lexer_1_expr50, m_is_end_of_file_181, line(lexer_1, 153)).
argument(v_c_133, 1, lexer_1_expr50).
method_invoc(lexer_1_expr51, m_parse_simple_token_185, line(lexer_1, 161)).
throw(lexer_1_expr51, ioexception, line(lexer_1, 161)).
argument(p_token_131, 1, lexer_1_expr51).
argument(v_c_133, 2, lexer_1_expr51).
return(p_token_131, m_next_token_87, line(lexer_1, 164)).
param(p_token_136, 1, m_parse_simple_token_185).
param(p_ch_137, 2, m_parse_simple_token_185).
throw(m_parse_simple_token_185, ioexception).
method_invoc(lexer_1_expr52, m_read_end_of_line_179, line(lexer_1, 189)).
throw(lexer_1_expr52, ioexception, line(lexer_1, 189)).
argument(p_ch_137, 1, lexer_1_expr52).
assign(q_type_6, f_eorecord_138, line(lexer_1, 190)).
ref(p_token_136, q_type_6, line(lexer_1, 190)).
method_invoc(lexer_1_expr54, m_is_end_of_file_181, line(lexer_1, 192)).
argument(p_ch_137, 1, lexer_1_expr54).
method_invoc(lexer_1_expr55, m_is_delimiter_182, line(lexer_1, 196)).
argument(p_ch_137, 1, lexer_1_expr55).
assign(q_type_7, f_token_92, line(lexer_1, 197)).
ref(p_token_136, q_type_7, line(lexer_1, 197)).
method_invoc(lexer_1_expr57, m_is_escape_186, line(lexer_1, 199)).
argument(p_ch_137, 1, lexer_1_expr57).
method_invoc(lexer_1_expr58, m_append_187, line(lexer_1, 208)).
argument(lexer_1_expr59, 1, lexer_1_expr58).
ref(f_content_78, lexer_1_expr58, line(lexer_1, 208)).
ref(p_token_136, q_content_7, line(lexer_1, 208)).
assign(lexer_1_expr59, p_ch_137, line(lexer_1, 208)).
assign(p_ch_137, lexer_1_expr61, line(lexer_1, 209)).
method_invoc(lexer_1_expr61, m_read_169, line(lexer_1, 209)).
throw(lexer_1_expr61, ioexception, line(lexer_1, 209)).
ref(f_reader_124, lexer_1_expr61, line(lexer_1, 209)).
return(p_token_136, m_parse_simple_token_185, line(lexer_1, 217)).
param(p_token_139, 1, m_parse_encapsulated_token_188).
throw(m_parse_encapsulated_token_188, ioexception).
param(p_c_140, 1, m_map_null_to_disabled_178).
return(lexer_1_expr62, m_map_null_to_disabled_178, line(lexer_1, 292)).
cond_expr(lexer_1_expr63, f_disabled_141, lexer_1_expr64, line(lexer_1, 292)).
method_invoc(lexer_1_expr64, m_char_value_7, line(lexer_1, 292)).
ref(p_c_140, lexer_1_expr64, line(lexer_1, 292)).
throw(m_read_escape_190, ioexception).
param(p_buffer_142, 1, m_trim_trailing_spaces_191).
param(p_ch_143, 1, m_read_end_of_line_179).
throw(m_read_end_of_line_179, ioexception).
method_invoc(lexer_1_expr68, m_look_ahead_174, line(lexer_1, 365)).
throw(lexer_1_expr68, ioexception, line(lexer_1, 365)).
ref(f_reader_124, lexer_1_expr68, line(lexer_1, 365)).
return(lexer_1_expr69, m_read_end_of_line_179, line(lexer_1, 369)).
param(p_ch_144, 1, m_is_whitespace_193).
param(p_ch_145, 1, m_is_start_of_line_180).
return(lexer_1_expr72, m_is_start_of_line_180, line(lexer_1, 390)).
param(p_ch_146, 1, m_is_end_of_file_181).
return(lexer_1_expr77, m_is_end_of_file_181, line(lexer_1, 397)).
param(p_ch_148, 1, m_is_delimiter_182).
return(lexer_1_expr78, m_is_delimiter_182, line(lexer_1, 401)).
param(p_ch_149, 1, m_is_escape_186).
return(lexer_1_expr79, m_is_escape_186, line(lexer_1, 405)).
param(p_ch_150, 1, m_is_quote_char_184).
return(lexer_1_expr80, m_is_quote_char_184, line(lexer_1, 409)).
param(p_ch_151, 1, m_is_comment_start_183).
return(lexer_1_expr81, m_is_comment_start_183, line(lexer_1, 413)).
param(p_ch_152, 1, m_is_meta_char_194).
throw(m_close_195, ioexception).

%token_1 - org.apache.commons.csv.Token
assign(f_type_91, f_invalid_135, line(token_1, 52)).
assign(f_content_78, token_1_expr1, line(token_1, 55)).
method_invoc(token_1_expr1, m_string_builder_196, line(token_1, 55)).
argument(f_initial_token_length_159, 1, token_1_expr1).
method_invoc(token_1_expr2, m_set_length_197, line(token_1, 61)).
argument(token_1_literal1, 1, token_1_expr2).
ref(f_content_78, token_1_expr2, line(token_1, 61)).
assign(f_type_91, f_invalid_135, line(token_1, 62)).
assign(f_is_ready_160, token_1_literal2, line(token_1, 63)).

%assertions_1 - org.apache.commons.csv.Assertions
param(p_parameter_1, 1, m_not_null_2).
param(p_parameter_name_2, 2, m_not_null_2).

%csvrecord_1 - org.apache.commons.csv.CSVRecord
assign(f_empty_string_array_99, csvrecord_1_expr1, line(csvrecord_1, 35)).
param(p_values_100, 1, m_csvrecord_89).
param(p_mapping_101, 2, m_csvrecord_89).
param(p_comment_102, 3, m_csvrecord_89).
param(p_record_number_103, 4, m_csvrecord_89).
assign(f_record_number_104, p_record_number_103, line(csvrecord_1, 53)).
assign(f_values_105, csvrecord_1_expr7, line(csvrecord_1, 54)).
cond_expr(csvrecord_1_expr9, p_values_100, f_empty_string_array_99, line(csvrecord_1, 54)).
assign(f_mapping_106, p_mapping_101, line(csvrecord_1, 55)).
assign(f_comment_107, p_comment_102, line(csvrecord_1, 56)).
param(p_e_108, 1, m_get_154).
param(p_i_109, 1, m_get_155).
param(p_name_110, 1, m_get_156).
param(p_name_111, 1, m_is_mapped_160).
param(p_name_112, 1, m_is_set_161).
param(p_map_113, 1, m_put_in_163).
return(f_values_105, m_values_73, line(csvrecord_1, 226)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.csv.CSVParserTest', 'testHeaderMissingWithNull').
trace(trace_1, failure_1, m_initialize_header_60, line(csvparser_1, 384), failure_1, target).
trace(trace_2, trace_1, m_csvparser_32, line(csvparser_1, 250), failure_1, target).
trace(trace_3, trace_2, m_parse_31, line(csvformat_1, 611), failure_1, target).
trace(trace_4, trace_3, m_test_header_missing_with_null_128, line(csvparser_test_1, 670), failure_1, target).
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
trace(trace_26, trace_25, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(csvparser_1_expr47, null, line(csvparser_1, 382)).
val(v_header_86, null, line(csvparser_1, 383)).
val(v_header_86, null, line(csvparser_1, 384)).



%%% End of Facts