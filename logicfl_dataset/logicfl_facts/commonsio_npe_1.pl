%%% Logic-FL Facts
:- style_check(-discontiguous).

%file_system_1 - org.apache.commons.io.FileSystem
ref(t_integer_2, q_max_value_1, line(file_system_1, 39)).
ref(t_integer_2, q_max_value_2, line(file_system_1, 39)).
assign(f_is_os_linux_5, file_system_1_expr9, line(file_system_1, 102)).
method_invoc(file_system_1_expr9, m_get_os_matches_name_1, line(file_system_1, 102)).
argument(file_system_1_literal21, 1, file_system_1_expr9).
assign(f_is_os_mac_6, file_system_1_expr10, line(file_system_1, 112)).
method_invoc(file_system_1_expr10, m_get_os_matches_name_1, line(file_system_1, 112)).
argument(file_system_1_literal22, 1, file_system_1_expr10).
assign(f_is_os_windows_7, file_system_1_expr11, line(file_system_1, 127)).
method_invoc(file_system_1_expr11, m_get_os_matches_name_1, line(file_system_1, 127)).
argument(f_os_name_windows_prefix_8, 1, file_system_1_expr11).
assign(f_current_9, file_system_1_expr12, line(file_system_1, 132)).
method_invoc(file_system_1_expr12, m_current_2, line(file_system_1, 132)).
return(f_linux_2, m_current_2, line(file_system_1, 141)).
return(f_current_9, m_get_current_3, line(file_system_1, 158)).
param(p_os_name_prefix_10, 1, m_get_os_matches_name_1).
return(file_system_1_expr13, m_get_os_matches_name_1, line(file_system_1, 169)).
method_invoc(file_system_1_expr13, m_is_os_name_match_4, line(file_system_1, 169)).
argument(file_system_1_expr14, 1, file_system_1_expr13).
argument(p_os_name_prefix_10, 2, file_system_1_expr13).
method_invoc(file_system_1_expr14, m_get_system_property_5, line(file_system_1, 169)).
argument(file_system_1_literal23, 1, file_system_1_expr14).
param(p_property_11, 1, m_get_system_property_5).
return(file_system_1_expr15, m_get_system_property_5, line(file_system_1, 187)).
method_invoc(file_system_1_expr15, m_get_property_6, line(file_system_1, 187)).
argument(p_property_11, 1, file_system_1_expr15).
ref(t_system_3, file_system_1_expr15, line(file_system_1, 187)).
param(p_cs_12, 1, m_index_of_7).
param(p_search_char_13, 2, m_index_of_7).
param(p_start_14, 3, m_index_of_7).
param(p_os_name_15, 1, m_is_os_name_match_4).
param(p_os_name_prefix_16, 2, m_is_os_name_match_4).
return(file_system_1_expr17, m_is_os_name_match_4, line(file_system_1, 285)).
method_invoc(file_system_1_expr17, m_starts_with_8, line(file_system_1, 285)).
argument(file_system_1_expr18, 1, file_system_1_expr17).
ref(file_system_1_expr19, file_system_1_expr17, line(file_system_1, 285)).
method_invoc(file_system_1_expr19, m_to_upper_case_9, line(file_system_1, 285)).
argument(q_root_2, 1, file_system_1_expr19).
ref(p_os_name_15, file_system_1_expr19, line(file_system_1, 285)).
ref(t_locale_4, q_root_2, line(file_system_1, 285)).
method_invoc(file_system_1_expr18, m_to_upper_case_9, line(file_system_1, 285)).
argument(q_root_3, 1, file_system_1_expr18).
ref(p_os_name_prefix_16, file_system_1_expr18, line(file_system_1, 285)).
ref(t_locale_4, q_root_3, line(file_system_1, 285)).
param(p_path_17, 1, m_replace_10).
param(p_old_char_18, 2, m_replace_10).
param(p_new_char_19, 3, m_replace_10).
param(p_block_size_20, 1, m_file_system_11).
param(p_case_sensitive_21, 2, m_file_system_11).
param(p_case_preserving_22, 3, m_file_system_11).
param(p_max_file_length_23, 4, m_file_system_11).
param(p_max_path_length_24, 5, m_file_system_11).
param(p_illegal_file_name_chars_25, 6, m_file_system_11).
param(p_reserved_file_names_26, 7, m_file_system_11).
param(p_reserved_file_names_extensions_27, 8, m_file_system_11).
param(p_supports_drive_letter_28, 9, m_file_system_11).
param(p_name_separator_29, 10, m_file_system_11).
assign(f_block_size_30, p_block_size_20, line(file_system_1, 329)).
assign(f_max_file_name_length_31, p_max_file_length_23, line(file_system_1, 330)).
assign(f_max_path_length_32, p_max_path_length_24, line(file_system_1, 331)).
assign(f_illegal_file_name_chars_33, file_system_1_expr31, line(file_system_1, 332)).
method_invoc(file_system_1_expr31, m_require_non_null_12, line(file_system_1, 332)).
argument(p_illegal_file_name_chars_25, 1, file_system_1_expr31).
argument(file_system_1_literal25, 2, file_system_1_expr31).
ref(t_objects_5, file_system_1_expr31, line(file_system_1, 332)).
assign(f_reserved_file_names_34, file_system_1_expr35, line(file_system_1, 333)).
method_invoc(file_system_1_expr35, m_require_non_null_12, line(file_system_1, 333)).
argument(p_reserved_file_names_26, 1, file_system_1_expr35).
argument(file_system_1_literal26, 2, file_system_1_expr35).
ref(t_objects_5, file_system_1_expr35, line(file_system_1, 333)).
assign(f_reserved_file_names_extensions_35, p_reserved_file_names_extensions_27, line(file_system_1, 334)).
assign(f_case_sensitive_36, p_case_sensitive_21, line(file_system_1, 335)).
assign(f_case_preserving_37, p_case_preserving_22, line(file_system_1, 336)).
assign(f_supports_drive_letter_38, p_supports_drive_letter_28, line(file_system_1, 337)).
assign(f_name_separator_39, p_name_separator_29, line(file_system_1, 338)).
assign(f_name_separator_other_40, file_system_1_expr54, line(file_system_1, 339)).
method_invoc(file_system_1_expr54, m_flip_separator_13, line(file_system_1, 339)).
argument(p_name_separator_29, 1, file_system_1_expr54).
ref(t_filename_utils_6, file_system_1_expr54, line(file_system_1, 339)).
return(f_case_sensitive_36, m_is_case_sensitive_22, line(file_system_1, 428)).
param(p_c_41, 1, m_is_illegal_file_name_char_23).
param(p_candidate_42, 1, m_is_legal_file_name_24).
param(p_candidate_43, 1, m_is_reserved_file_name_25).
param(p_path_44, 1, m_normalize_separators_26).
param(p_candidate_45, 1, m_to_legal_file_name_28).
param(p_replacement_46, 2, m_to_legal_file_name_28).
param(p_cs_47, 1, m_trim_extension_29).

%iocase_1 - org.apache.commons.io.IOCase
method_invoc(iocase_1_expr1, m_is_case_sensitive_22, line(iocase_1, 66)).
ref(iocase_1_expr2, iocase_1_expr1, line(iocase_1, 66)).
method_invoc(iocase_1_expr2, m_get_current_3, line(iocase_1, 66)).
ref(t_file_system_1, iocase_1_expr2, line(iocase_1, 66)).
param(p_name_128, 1, m_for_name_79).
param(p_io_case_129, 1, m_is_case_sensitive_80).
param(p_value_130, 1, m_value_81).
param(p_default_value_131, 2, m_value_81).
param(p_name_132, 1, m_iocase_82).
param(p_sensitive_133, 2, m_iocase_82).
assign(f_name_134, p_name_132, line(iocase_1, 119)).
assign(f_sensitive_135, p_sensitive_133, line(iocase_1, 120)).
param(p_str_1_136, 1, m_check_compare_to_83).
param(p_str_2_137, 2, m_check_compare_to_83).
param(p_str_138, 1, m_check_ends_with_84).
param(p_end_139, 2, m_check_ends_with_84).
param(p_str_1_140, 1, m_check_equals_85).
param(p_str_2_141, 2, m_check_equals_85).
param(p_str_142, 1, m_check_index_of_86).
param(p_str_start_index_143, 2, m_check_index_of_86).
param(p_search_144, 3, m_check_index_of_86).
param(p_str_145, 1, m_check_region_matches_87).
param(p_str_start_index_146, 2, m_check_region_matches_87).
param(p_search_147, 3, m_check_region_matches_87).
return(iocase_1_expr9, m_check_region_matches_87, line(iocase_1, 218)).
method_invoc(iocase_1_expr9, m_region_matches_88, line(iocase_1, 218)).
argument(iocase_1_expr10, 1, iocase_1_expr9).
argument(p_str_start_index_146, 2, iocase_1_expr9).
argument(p_search_147, 3, iocase_1_expr9).
argument(iocase_1_literal6, 4, iocase_1_expr9).
argument(iocase_1_expr11, 5, iocase_1_expr9).
ref(p_str_145, iocase_1_expr9, line(iocase_1, 218)).
method_invoc(iocase_1_expr11, m_length_89, line(iocase_1, 218)).
ref(p_search_147, iocase_1_expr11, line(iocase_1, 218)).
param(p_str_148, 1, m_check_starts_with_90).
param(p_start_149, 2, m_check_starts_with_90).

%iocase_test_1 - org.apache.commons.io.IOCaseTest
assign(f_windows_150, iocase_test_1_expr1, line(iocase_test_1, 39)).
ref(t_file_8, q_separator_char_4, line(iocase_test_1, 39)).
param(p_arr_151, 1, m_assert_0_95).
param(p_arr_152, 1, m_assert_0_96).
param(p_value_153, 1, m_serialize_97).
throw(m_serialize_97, exception).
method_invoc(iocase_test_1_expr2, m_assert_true_108, line(iocase_test_1, 224)).
argument(iocase_test_1_expr3, 1, iocase_test_1_expr2).
method_invoc(iocase_test_1_expr3, m_check_region_matches_87, line(iocase_test_1, 224)).
argument(iocase_test_1_literal2, 1, iocase_test_1_expr3).
argument(iocase_test_1_literal3, 2, iocase_test_1_expr3).
argument(iocase_test_1_literal4, 3, iocase_test_1_expr3).
ref(f_sensitive_125, iocase_test_1_expr3, line(iocase_test_1, 224)).
ref(t_iocase_10, q_sensitive_4, line(iocase_test_1, 224)).
method_invoc(iocase_test_1_expr4, m_assert_true_108, line(iocase_test_1, 225)).
argument(iocase_test_1_expr5, 1, iocase_test_1_expr4).
method_invoc(iocase_test_1_expr5, m_check_region_matches_87, line(iocase_test_1, 225)).
argument(iocase_test_1_literal5, 1, iocase_test_1_expr5).
argument(iocase_test_1_literal6, 2, iocase_test_1_expr5).
argument(iocase_test_1_literal7, 3, iocase_test_1_expr5).
ref(f_sensitive_125, iocase_test_1_expr5, line(iocase_test_1, 225)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 225)).
method_invoc(iocase_test_1_expr6, m_assert_true_108, line(iocase_test_1, 226)).
argument(iocase_test_1_expr7, 1, iocase_test_1_expr6).
method_invoc(iocase_test_1_expr7, m_check_region_matches_87, line(iocase_test_1, 226)).
argument(iocase_test_1_literal8, 1, iocase_test_1_expr7).
argument(iocase_test_1_literal9, 2, iocase_test_1_expr7).
argument(iocase_test_1_literal10, 3, iocase_test_1_expr7).
ref(f_sensitive_125, iocase_test_1_expr7, line(iocase_test_1, 226)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 226)).
method_invoc(iocase_test_1_expr8, m_assert_true_108, line(iocase_test_1, 227)).
argument(iocase_test_1_expr9, 1, iocase_test_1_expr8).
method_invoc(iocase_test_1_expr9, m_check_region_matches_87, line(iocase_test_1, 227)).
argument(iocase_test_1_literal11, 1, iocase_test_1_expr9).
argument(iocase_test_1_literal12, 2, iocase_test_1_expr9).
argument(iocase_test_1_literal13, 3, iocase_test_1_expr9).
ref(f_sensitive_125, iocase_test_1_expr9, line(iocase_test_1, 227)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 227)).
method_invoc(iocase_test_1_expr10, m_assert_false_109, line(iocase_test_1, 228)).
argument(iocase_test_1_expr11, 1, iocase_test_1_expr10).
method_invoc(iocase_test_1_expr11, m_check_region_matches_87, line(iocase_test_1, 228)).
argument(iocase_test_1_literal14, 1, iocase_test_1_expr11).
argument(iocase_test_1_literal15, 2, iocase_test_1_expr11).
argument(iocase_test_1_literal16, 3, iocase_test_1_expr11).
ref(f_sensitive_125, iocase_test_1_expr11, line(iocase_test_1, 228)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 228)).
method_invoc(iocase_test_1_expr12, m_assert_false_109, line(iocase_test_1, 229)).
argument(iocase_test_1_expr13, 1, iocase_test_1_expr12).
method_invoc(iocase_test_1_expr13, m_check_region_matches_87, line(iocase_test_1, 229)).
argument(iocase_test_1_literal17, 1, iocase_test_1_expr13).
argument(iocase_test_1_literal18, 2, iocase_test_1_expr13).
argument(iocase_test_1_literal19, 3, iocase_test_1_expr13).
ref(f_sensitive_125, iocase_test_1_expr13, line(iocase_test_1, 229)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 229)).
method_invoc(iocase_test_1_expr14, m_assert_false_109, line(iocase_test_1, 230)).
argument(iocase_test_1_expr15, 1, iocase_test_1_expr14).
method_invoc(iocase_test_1_expr15, m_check_region_matches_87, line(iocase_test_1, 230)).
argument(iocase_test_1_literal20, 1, iocase_test_1_expr15).
argument(iocase_test_1_literal21, 2, iocase_test_1_expr15).
argument(iocase_test_1_literal22, 3, iocase_test_1_expr15).
ref(f_sensitive_125, iocase_test_1_expr15, line(iocase_test_1, 230)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 230)).
method_invoc(iocase_test_1_expr16, m_assert_false_109, line(iocase_test_1, 231)).
argument(iocase_test_1_expr17, 1, iocase_test_1_expr16).
method_invoc(iocase_test_1_expr17, m_check_region_matches_87, line(iocase_test_1, 231)).
argument(iocase_test_1_literal23, 1, iocase_test_1_expr17).
argument(iocase_test_1_literal24, 2, iocase_test_1_expr17).
argument(iocase_test_1_literal25, 3, iocase_test_1_expr17).
ref(f_sensitive_125, iocase_test_1_expr17, line(iocase_test_1, 231)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 231)).
method_invoc(iocase_test_1_expr18, m_assert_true_108, line(iocase_test_1, 232)).
argument(iocase_test_1_expr19, 1, iocase_test_1_expr18).
method_invoc(iocase_test_1_expr19, m_check_region_matches_87, line(iocase_test_1, 232)).
argument(iocase_test_1_literal26, 1, iocase_test_1_expr19).
argument(iocase_test_1_literal27, 2, iocase_test_1_expr19).
argument(iocase_test_1_literal28, 3, iocase_test_1_expr19).
ref(f_sensitive_125, iocase_test_1_expr19, line(iocase_test_1, 232)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 232)).
method_invoc(iocase_test_1_expr20, m_assert_true_108, line(iocase_test_1, 234)).
argument(iocase_test_1_expr21, 1, iocase_test_1_expr20).
method_invoc(iocase_test_1_expr21, m_check_region_matches_87, line(iocase_test_1, 234)).
argument(iocase_test_1_literal29, 1, iocase_test_1_expr21).
argument(iocase_test_1_literal30, 2, iocase_test_1_expr21).
argument(iocase_test_1_literal31, 3, iocase_test_1_expr21).
ref(f_sensitive_125, iocase_test_1_expr21, line(iocase_test_1, 234)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 234)).
method_invoc(iocase_test_1_expr22, m_assert_false_109, line(iocase_test_1, 235)).
argument(iocase_test_1_expr23, 1, iocase_test_1_expr22).
method_invoc(iocase_test_1_expr23, m_check_region_matches_87, line(iocase_test_1, 235)).
argument(iocase_test_1_literal32, 1, iocase_test_1_expr23).
argument(iocase_test_1_literal33, 2, iocase_test_1_expr23).
argument(iocase_test_1_literal34, 3, iocase_test_1_expr23).
ref(f_sensitive_125, iocase_test_1_expr23, line(iocase_test_1, 235)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 235)).
method_invoc(iocase_test_1_expr24, m_assert_false_109, line(iocase_test_1, 236)).
argument(iocase_test_1_expr25, 1, iocase_test_1_expr24).
method_invoc(iocase_test_1_expr25, m_check_region_matches_87, line(iocase_test_1, 236)).
argument(iocase_test_1_literal35, 1, iocase_test_1_expr25).
argument(iocase_test_1_literal36, 2, iocase_test_1_expr25).
argument(iocase_test_1_literal37, 3, iocase_test_1_expr25).
ref(f_sensitive_125, iocase_test_1_expr25, line(iocase_test_1, 236)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 236)).
method_invoc(iocase_test_1_expr26, m_assert_false_109, line(iocase_test_1, 237)).
argument(iocase_test_1_expr27, 1, iocase_test_1_expr26).
method_invoc(iocase_test_1_expr27, m_check_region_matches_87, line(iocase_test_1, 237)).
argument(iocase_test_1_literal38, 1, iocase_test_1_expr27).
argument(iocase_test_1_literal39, 2, iocase_test_1_expr27).
argument(iocase_test_1_literal40, 3, iocase_test_1_expr27).
ref(f_sensitive_125, iocase_test_1_expr27, line(iocase_test_1, 237)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 237)).
method_invoc(iocase_test_1_expr28, m_assert_true_108, line(iocase_test_1, 238)).
argument(iocase_test_1_expr29, 1, iocase_test_1_expr28).
method_invoc(iocase_test_1_expr29, m_check_region_matches_87, line(iocase_test_1, 238)).
argument(iocase_test_1_literal41, 1, iocase_test_1_expr29).
argument(iocase_test_1_literal42, 2, iocase_test_1_expr29).
argument(iocase_test_1_literal43, 3, iocase_test_1_expr29).
ref(f_sensitive_125, iocase_test_1_expr29, line(iocase_test_1, 238)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 238)).
method_invoc(iocase_test_1_expr30, m_assert_false_109, line(iocase_test_1, 239)).
argument(iocase_test_1_expr31, 1, iocase_test_1_expr30).
method_invoc(iocase_test_1_expr31, m_check_region_matches_87, line(iocase_test_1, 239)).
argument(iocase_test_1_literal44, 1, iocase_test_1_expr31).
argument(iocase_test_1_literal45, 2, iocase_test_1_expr31).
argument(iocase_test_1_literal46, 3, iocase_test_1_expr31).
ref(f_sensitive_125, iocase_test_1_expr31, line(iocase_test_1, 239)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 239)).
method_invoc(iocase_test_1_expr32, m_assert_false_109, line(iocase_test_1, 240)).
argument(iocase_test_1_expr33, 1, iocase_test_1_expr32).
method_invoc(iocase_test_1_expr33, m_check_region_matches_87, line(iocase_test_1, 240)).
argument(iocase_test_1_literal47, 1, iocase_test_1_expr33).
argument(iocase_test_1_literal48, 2, iocase_test_1_expr33).
argument(iocase_test_1_literal49, 3, iocase_test_1_expr33).
ref(f_sensitive_125, iocase_test_1_expr33, line(iocase_test_1, 240)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 240)).
method_invoc(iocase_test_1_expr34, m_assert_false_109, line(iocase_test_1, 241)).
argument(iocase_test_1_expr35, 1, iocase_test_1_expr34).
method_invoc(iocase_test_1_expr35, m_check_region_matches_87, line(iocase_test_1, 241)).
argument(iocase_test_1_literal50, 1, iocase_test_1_expr35).
argument(iocase_test_1_literal51, 2, iocase_test_1_expr35).
argument(iocase_test_1_literal52, 3, iocase_test_1_expr35).
ref(f_sensitive_125, iocase_test_1_expr35, line(iocase_test_1, 241)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 241)).
method_invoc(iocase_test_1_expr36, m_assert_false_109, line(iocase_test_1, 242)).
argument(iocase_test_1_expr37, 1, iocase_test_1_expr36).
method_invoc(iocase_test_1_expr37, m_check_region_matches_87, line(iocase_test_1, 242)).
argument(iocase_test_1_literal53, 1, iocase_test_1_expr37).
argument(iocase_test_1_literal54, 2, iocase_test_1_expr37).
argument(iocase_test_1_literal55, 3, iocase_test_1_expr37).
ref(f_sensitive_125, iocase_test_1_expr37, line(iocase_test_1, 242)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 242)).
method_invoc(iocase_test_1_expr38, m_assert_false_109, line(iocase_test_1, 244)).
argument(iocase_test_1_expr39, 1, iocase_test_1_expr38).
method_invoc(iocase_test_1_expr39, m_check_region_matches_87, line(iocase_test_1, 244)).
throw(iocase_test_1_expr39, null_pointer_exception, line(iocase_test_1, 244)).
argument(iocase_test_1_literal56, 1, iocase_test_1_expr39).
argument(iocase_test_1_literal57, 2, iocase_test_1_expr39).
argument(iocase_test_1_literal58, 3, iocase_test_1_expr39).
ref(f_sensitive_125, iocase_test_1_expr39, line(iocase_test_1, 244)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 244)).
throw(m_test__serialization_120, exception).
throw(iocase_test_1_expr38, null_pointer_exception, line(iocase_test_1, 244)).

%filename_utils_1 - org.apache.commons.io.FilenameUtils
assign(f_empty_string_array_48, filename_utils_1_expr1, line(filename_utils_1, 100)).
assign(f_extension_separator_str_49, filename_utils_1_expr2, line(filename_utils_1, 116)).
method_invoc(filename_utils_1_expr2, m_to_string_30, line(filename_utils_1, 116)).
argument(f_extension_separator_50, 1, filename_utils_1_expr2).
ref(t_character_7, filename_utils_1_expr2, line(filename_utils_1, 116)).
assign(f_system_name_separator_51, q_separator_char_3, line(filename_utils_1, 131)).
ref(t_file_8, q_separator_char_3, line(filename_utils_1, 131)).
assign(f_other_separator_52, filename_utils_1_expr3, line(filename_utils_1, 136)).
method_invoc(filename_utils_1_expr3, m_flip_separator_13, line(filename_utils_1, 136)).
argument(f_system_name_separator_51, 1, filename_utils_1_expr3).
assign(f_ipv4_pattern_53, filename_utils_1_expr4, line(filename_utils_1, 138)).
method_invoc(filename_utils_1_expr4, m_compile_31, line(filename_utils_1, 138)).
argument(filename_utils_1_literal1, 1, filename_utils_1_expr4).
ref(t_pattern_9, filename_utils_1_expr4, line(filename_utils_1, 138)).
assign(f_reg_name_part_pattern_54, filename_utils_1_expr5, line(filename_utils_1, 150)).
method_invoc(filename_utils_1_expr5, m_compile_31, line(filename_utils_1, 150)).
argument(filename_utils_1_literal2, 1, filename_utils_1_expr5).
ref(t_pattern_9, filename_utils_1_expr5, line(filename_utils_1, 150)).
param(p_base_path_55, 1, m_concat_32).
param(p_full_file_name_to_add_56, 2, m_concat_32).
param(p_canonical_parent_57, 1, m_directory_contains_33).
param(p_canonical_child_58, 2, m_directory_contains_33).
param(p_file_name_59, 1, m_do_get_full_path_34).
param(p_include_separator_60, 2, m_do_get_full_path_34).
param(p_file_name_61, 1, m_do_get_path_35).
param(p_separator_add_62, 2, m_do_get_path_35).
param(p_file_name_63, 1, m_do_normalize_36).
param(p_separator_64, 2, m_do_normalize_36).
param(p_keep_separator_65, 3, m_do_normalize_36).
param(p_file_name1_66, 1, m_equals_37).
param(p_file_name2_67, 2, m_equals_37).
param(p_file_name1_68, 1, m_equals_38).
param(p_file_name2_69, 2, m_equals_38).
param(p_normalize_70, 3, m_equals_38).
param(p_io_case_71, 4, m_equals_38).
param(p_file_name1_72, 1, m_equals_normalized_39).
param(p_file_name2_73, 2, m_equals_normalized_39).
param(p_file_name1_74, 1, m_equals_normalized_on_system_40).
param(p_file_name2_75, 2, m_equals_normalized_on_system_40).
param(p_file_name1_76, 1, m_equals_on_system_41).
param(p_file_name2_77, 2, m_equals_on_system_41).
param(p_ch_78, 1, m_flip_separator_13).
return(f_windows_name_separator_80, m_flip_separator_13, line(filename_utils_1, 526)).
return(f_unix_name_separator_79, m_flip_separator_13, line(filename_utils_1, 529)).
param(p_file_name_81, 1, m_get_ads_critical_offset_42).
param(p_file_name_82, 1, m_get_base_name_43).
param(p_file_name_83, 1, m_get_extension_44).
throw(m_get_extension_44, illegal_argument_exception).
param(p_file_name_84, 1, m_get_full_path_45).
param(p_file_name_85, 1, m_get_full_path_no_end_separator_46).
param(p_file_name_86, 1, m_get_name_47).
param(p_file_name_87, 1, m_get_path_48).
param(p_file_name_88, 1, m_get_path_no_end_separator_49).
param(p_file_name_89, 1, m_get_prefix_50).
param(p_file_name_90, 1, m_get_prefix_length_51).
param(p_file_name_91, 1, m_index_of_extension_52).
throw(m_index_of_extension_52, illegal_argument_exception).
param(p_file_name_92, 1, m_index_of_last_separator_53).
param(p_string_93, 1, m_is_empty_54).
param(p_file_name_94, 1, m_is_extension_55).
param(p_extensions_95, 2, m_is_extension_55).
param(p_file_name_96, 1, m_is_extension_56).
param(p_extension_97, 2, m_is_extension_56).
param(p_file_name_98, 1, m_is_extension_57).
param(p_extensions_99, 2, m_is_extension_57).
param(p_name_100, 1, m_is_ipv4_address_58).
param(p_inet_6address_101, 1, m_is_ipv6_address_59).
param(p_name_102, 1, m_is_rfc3986host_name_60).
param(p_ch_103, 1, m_is_separator_61).
param(p_name_104, 1, m_is_valid_host_name_63).
param(p_file_name_105, 1, m_normalize_64).
param(p_file_name_106, 1, m_normalize_65).
param(p_unix_separator_107, 2, m_normalize_65).
param(p_file_name_108, 1, m_normalize_no_end_separator_66).
param(p_file_name_109, 1, m_normalize_no_end_separator_67).
param(p_unix_separator_110, 2, m_normalize_no_end_separator_67).
param(p_file_name_111, 1, m_remove_extension_68).
param(p_path_112, 1, m_require_non_null_chars_69).
param(p_path_113, 1, m_separators_to_system_70).
param(p_path_114, 1, m_separators_to_unix_71).
param(p_path_115, 1, m_separators_to_windows_72).
param(p_text_116, 1, m_split_on_tokens_73).
param(p_unix_separator_117, 1, m_to_separator_74).
param(p_file_name_118, 1, m_wildcard_match_75).
param(p_wildcard_matcher_119, 2, m_wildcard_match_75).
param(p_file_name_120, 1, m_wildcard_match_76).
param(p_wildcard_matcher_121, 2, m_wildcard_match_76).
param(p_io_case_122, 3, m_wildcard_match_76).
param(p_file_name_123, 1, m_wildcard_match_on_system_77).
param(p_wildcard_matcher_124, 2, m_wildcard_match_on_system_77).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.IOCaseTest', 'test_checkRegionMatches_functionality').
trace(trace_1, failure_1, m_check_region_matches_87, line(iocase_1, 218), failure_1, target).
trace(trace_2, trace_1, m_test_check_region_matches_functionality_107, line(iocase_test_1, 244), failure_1, target).
trace(trace_3, trace_2, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_4, trace_3, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_5, trace_4, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_1, non_target).
trace(trace_6, trace_5, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_1, non_target).
trace(trace_7, trace_6, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_1, non_target).
trace(trace_8, trace_7, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_1, non_target).
trace(trace_9, trace_8, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_1, non_target).
trace(trace_10, trace_9, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_1, non_target).
trace(trace_11, trace_10, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_1, non_target).
trace(trace_12, trace_11, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_1, non_target).
trace(trace_13, trace_12, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_1, non_target).
trace(trace_14, trace_13, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_1, non_target).
trace(trace_15, trace_14, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_1, non_target).
trace(trace_16, trace_15, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_1, non_target).
trace(trace_17, trace_16, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_1, non_target).
trace(trace_18, trace_17, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_1, non_target).
trace(trace_19, trace_18, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_1, non_target).
trace(trace_20, trace_19, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_21, trace_20, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_1, non_target).
trace(trace_22, trace_21, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_1, non_target).
trace(trace_23, trace_22, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_1, non_target).
trace(trace_24, trace_23, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_1, non_target).
trace(trace_25, trace_24, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_26, trace_25, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_27, trace_26, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_28, trace_27, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_29, trace_28, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_30, trace_29, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_31, trace_30, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_32, trace_31, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_33, trace_32, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_34, trace_33, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_35, trace_34, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_36, trace_35, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_37, trace_36, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_38, trace_37, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_39, trace_38, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_40, trace_39, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_41, trace_40, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_42, trace_41, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_43, trace_42, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_44, trace_43, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_45, trace_44, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_46, trace_45, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_47, trace_46, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_48, trace_47, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_49, trace_48, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_50, trace_49, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_51, trace_50, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_52, trace_51, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_1, non_target).
trace(trace_53, trace_52, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_1, non_target).
trace(trace_54, trace_53, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_1, non_target).
trace(trace_55, trace_54, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_1, non_target).
trace(trace_56, trace_55, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_1, non_target).
trace(trace_57, trace_56, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_1, non_target).
trace(trace_58, trace_57, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_1, non_target).
trace(trace_59, trace_58, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_1, non_target).
trace(trace_60, trace_59, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_1, non_target).
trace(trace_61, trace_60, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_1, non_target).
trace(trace_62, trace_61, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_1, non_target).
trace(trace_63, trace_62, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_1, non_target).
trace(trace_64, trace_63, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_search_147, null, line(iocase_1, 218)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(file_system_1, 'org.apache.commons.io.FileSystem').
class(iocase_1, 'org.apache.commons.io.IOCase').
class(iocase_test_1, 'org.apache.commons.io.IOCaseTest').
class(filename_utils_1, 'org.apache.commons.io.FilenameUtils').

%%% Methods
%file_system_1 - org.apache.commons.io.FileSystem
method(m_current_2, range(file_system_1, 4527, 359, 134, 150)).
method(m_get_current_3, range(file_system_1, 4892, 168, 152, 159)).
method(m_get_os_matches_name_1, range(file_system_1, 5066, 358, 161, 170)).
method(m_get_system_property_5, range(file_system_1, 5430, 905, 172, 194)).
method(m_index_of_7, range(file_system_1, 6341, 3002, 196, 267)).
method(m_is_os_name_match_4, range(file_system_1, 9349, 646, 269, 286)).
method(m_replace_10, range(file_system_1, 10001, 382, 288, 298)).
method(m_file_system_11, range(file_system_1, 10859, 1812, 312, 340)).
method(m_get_block_size_14, range(file_system_1, 12677, 212, 342, 350)).
method(m_get_illegal_file_name_chars_15, range(file_system_1, 12895, 423, 352, 363)).
method(m_get_illegal_file_name_code_points_16, range(file_system_1, 13324, 281, 365, 373)).
method(m_get_max_file_name_length_17, range(file_system_1, 13611, 235, 375, 382)).
method(m_get_max_path_length_18, range(file_system_1, 13852, 227, 384, 391)).
method(m_get_name_separator_19, range(file_system_1, 14085, 228, 393, 402)).
method(m_get_reserved_file_names_20, range(file_system_1, 14319, 205, 404, 411)).
method(m_is_case_preserving_21, range(file_system_1, 14530, 205, 413, 420)).
method(m_is_case_sensitive_22, range(file_system_1, 14741, 209, 422, 429)).
method(m_is_illegal_file_name_char_23, range(file_system_1, 14956, 394, 431, 440)).
method(m_is_legal_file_name_24, range(file_system_1, 15356, 855, 442, 459)).
method(m_is_reserved_file_name_25, range(file_system_1, 16217, 459, 461, 471)).
method(m_normalize_separators_26, range(file_system_1, 16682, 327, 473, 482)).
method(m_supports_drive_letter_27, range(file_system_1, 17015, 570, 484, 498)).
method(m_to_legal_file_name_28, range(file_system_1, 17591, 1424, 500, 521)).
method(m_trim_extension_29, range(file_system_1, 19021, 162, 523, 526)).
%iocase_1 - org.apache.commons.io.IOCase
method(m_for_name_79, range(iocase_1, 2578, 446, 71, 81)).
method(m_is_case_sensitive_80, range(iocase_1, 3030, 336, 83, 92)).
method(m_value_81, range(iocase_1, 3372, 403, 94, 104)).
method(m_iocase_82, range(iocase_1, 3927, 249, 112, 121)).
method(m_check_compare_to_83, range(iocase_1, 4182, 683, 123, 139)).
method(m_check_ends_with_84, range(iocase_1, 4871, 668, 141, 158)).
method(m_check_equals_85, range(iocase_1, 5545, 535, 160, 173)).
method(m_check_index_of_86, range(iocase_1, 6086, 1044, 175, 202)).
method(m_check_region_matches_87, range(iocase_1, 7136, 761, 204, 219)).
method(m_check_starts_with_90, range(iocase_1, 7903, 591, 221, 234)).
method(m_get_name_91, range(iocase_1, 8500, 153, 236, 243)).
method(m_is_case_sensitive_92, range(iocase_1, 8659, 188, 245, 252)).
method(m_read_resolve_93, range(iocase_1, 8853, 251, 254, 262)).
method(m_to_string_94, range(iocase_1, 9110, 191, 264, 272)).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
method(m_assert_0_95, range(iocase_test_1, 1499, 123, 41, 45)).
method(m_assert_0_96, range(iocase_test_1, 1628, 123, 47, 51)).
method(m_serialize_97, range(iocase_test_1, 1757, 483, 53, 63)).
method(m_test_check_compare_case_98, range(iocase_test_1, 2246, 721, 65, 78)).
method(m_test_check_compare_functionality_99, range(iocase_test_1, 2973, 785, 80, 92)).
method(m_test_check_ends_with_case_100, range(iocase_test_1, 3763, 457, 93, 103)).
method(m_test_check_ends_with_functionality_101, range(iocase_test_1, 4226, 843, 105, 120)).
method(m_test_check_equals_case_102, range(iocase_test_1, 5075, 449, 122, 132)).
method(m_test_check_equals_functionality_103, range(iocase_test_1, 5530, 819, 134, 149)).
method(m_test_check_index_of_case_104, range(iocase_test_1, 6355, 720, 151, 164)).
method(m_test_check_index_of_functionality_105, range(iocase_test_1, 7081, 2488, 166, 208)).
method(m_test_check_region_matches_case_106, range(iocase_test_1, 9575, 510, 210, 220)).
method(m_test_check_region_matches_functionality_107, range(iocase_test_1, 10091, 1822, 222, 250)).
method(m_test_check_starts_with_case_110, range(iocase_test_1, 11919, 471, 252, 262)).
method(m_test_check_starts_with_functionality_111, range(iocase_test_1, 12396, 869, 264, 279)).
method(m_test_for_name_112, range(iocase_test_1, 13271, 415, 281, 288)).
method(m_test_get_name_113, range(iocase_test_1, 13692, 231, 290, 295)).
method(m_test_get_scratch_byte_array_114, range(iocase_test_1, 13929, 226, 297, 303)).
method(m_test_get_scratch_byte_array_write_only_115, range(iocase_test_1, 14161, 244, 305, 311)).
method(m_test_get_scratch_char_array_116, range(iocase_test_1, 14411, 226, 313, 319)).
method(m_test_get_scratch_char_array_write_only_117, range(iocase_test_1, 14643, 244, 321, 327)).
method(m_test_is_case_sensitive_118, range(iocase_test_1, 14893, 232, 329, 334)).
method(m_test_is_case_sensitive_static_119, range(iocase_test_1, 15131, 257, 336, 341)).
method(m_test__serialization_120, range(iocase_test_1, 15394, 266, 343, 348)).
method(m_test_to_string_121, range(iocase_test_1, 15666, 235, 350, 355)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
method(m_concat_32, range(filename_utils_1, 5173, 2818, 152, 221)).
method(m_directory_contains_33, range(filename_utils_1, 7997, 1498, 223, 257)).
method(m_do_get_full_path_34, range(filename_utils_1, 9501, 1077, 259, 290)).
method(m_do_get_path_35, range(filename_utils_1, 10584, 874, 292, 314)).
method(m_do_normalize_36, range(filename_utils_1, 11464, 3859, 316, 421)).
method(m_equals_37, range(filename_utils_1, 15329, 618, 423, 437)).
method(m_equals_38, range(filename_utils_1, 15953, 1128, 439, 466)).
method(m_equals_normalized_39, range(filename_utils_1, 17087, 648, 468, 482)).
method(m_equals_normalized_on_system_40, range(filename_utils_1, 17741, 731, 484, 500)).
method(m_equals_on_system_41, range(filename_utils_1, 18478, 661, 502, 516)).
method(m_flip_separator_13, range(filename_utils_1, 19145, 494, 518, 532)).
method(m_get_ads_critical_offset_42, range(filename_utils_1, 19645, 681, 534, 554)).
method(m_get_base_name_43, range(filename_utils_1, 20332, 906, 556, 578)).
method(m_get_extension_44, range(filename_utils_1, 21244, 1759, 580, 619)).
method(m_get_full_path_45, range(filename_utils_1, 23009, 1175, 621, 651)).
method(m_get_full_path_no_end_separator_46, range(filename_utils_1, 24190, 1225, 653, 684)).
method(m_get_name_47, range(filename_utils_1, 25421, 968, 686, 711)).
method(m_get_path_48, range(filename_utils_1, 26395, 1120, 713, 741)).
method(m_get_path_no_end_separator_49, range(filename_utils_1, 27521, 1187, 743, 772)).
method(m_get_prefix_50, range(filename_utils_1, 28714, 1931, 774, 819)).
method(m_get_prefix_length_51, range(filename_utils_1, 30651, 4337, 821, 923)).
method(m_index_of_extension_52, range(filename_utils_1, 34994, 2123, 925, 961)).
method(m_index_of_last_separator_53, range(filename_utils_1, 37123, 884, 963, 982)).
method(m_is_empty_54, range(filename_utils_1, 38013, 110, 984, 986)).
method(m_is_extension_55, range(filename_utils_1, 38129, 1041, 988, 1010)).
method(m_is_extension_56, range(filename_utils_1, 39176, 1003, 1012, 1034)).
method(m_is_extension_57, range(filename_utils_1, 40185, 1093, 1036, 1059)).
method(m_is_ipv4_address_58, range(filename_utils_1, 41284, 954, 1061, 1089)).
method(m_is_ipv6_address_59, range(filename_utils_1, 42342, 2661, 1092, 1156)).
method(m_is_rfc3986host_name_60, range(filename_utils_1, 45009, 796, 1158, 1178)).
method(m_is_separator_61, range(filename_utils_1, 45811, 293, 1180, 1188)).
method(m_is_system_windows_62, range(filename_utils_1, 46110, 224, 1190, 1197)).
method(m_is_valid_host_name_63, range(filename_utils_1, 46340, 588, 1199, 1213)).
method(m_normalize_64, range(filename_utils_1, 46934, 1982, 1215, 1258)).
method(m_normalize_65, range(filename_utils_1, 48922, 2195, 1260, 1307)).
method(m_normalize_no_end_separator_66, range(filename_utils_1, 51123, 2041, 1309, 1353)).
method(m_normalize_no_end_separator_67, range(filename_utils_1, 53170, 2153, 1355, 1401)).
method(m_remove_extension_68, range(filename_utils_1, 55329, 1032, 1403, 1432)).
method(m_require_non_null_chars_69, range(filename_utils_1, 56367, 702, 1434, 1449)).
method(m_separators_to_system_70, range(filename_utils_1, 57075, 301, 1451, 1459)).
method(m_separators_to_unix_71, range(filename_utils_1, 57382, 303, 1461, 1469)).
method(m_separators_to_windows_72, range(filename_utils_1, 57691, 311, 1471, 1479)).
method(m_split_on_tokens_73, range(filename_utils_1, 58008, 1444, 1481, 1522)).
method(m_to_separator_74, range(filename_utils_1, 59458, 323, 1524, 1532)).
method(m_wildcard_match_75, range(filename_utils_1, 59787, 1168, 1534, 1558)).
method(m_wildcard_match_76, range(filename_utils_1, 60961, 3518, 1560, 1650)).
method(m_wildcard_match_on_system_77, range(filename_utils_1, 64485, 1207, 1652, 1676)).
method(m_filename_utils_78, range(filename_utils_1, 65698, 114, 1678, 1682)).

%%% Blocks
%file_system_1 - org.apache.commons.io.FileSystem
block(file_system_1_block1, block, file_system_1_code44, body, range(file_system_1, 4662, 224, 139, 150)).
block(file_system_1_block2, block, file_system_1_stmt1, then_statement, range(file_system_1, 4689, 37, 140, 142)).
block(file_system_1_block3, block, file_system_1_code45, body, range(file_system_1, 5029, 31, 157, 159)).
block(file_system_1_block4, block, file_system_1_code46, body, range(file_system_1, 5343, 81, 168, 170)).
block(file_system_1_block5, block, file_system_1_code47, body, range(file_system_1, 5941, 394, 185, 194)).
block(file_system_1_block6, block, file_system_1_stmt5, body, range(file_system_1, 5955, 60, 186, 188)).
block(file_system_1_block7, block, file_system_1_code48, body, range(file_system_1, 9824, 171, 281, 286)).
block(file_system_1_block8, block, file_system_1_stmt7, then_statement, range(file_system_1, 9854, 37, 282, 284)).
block(file_system_1_block9, block, file_system_1_code49, body, range(file_system_1, 11993, 678, 328, 340)).
block(file_system_1_block10, block, file_system_1_code64, body, range(file_system_1, 14913, 37, 427, 429)).
%iocase_1 - org.apache.commons.io.IOCase
block(iocase_1_block1, block, iocase_1_code7, body, range(iocase_1, 4107, 69, 118, 121)).
block(iocase_1_block2, block, iocase_1_code14, body, range(iocase_1, 7801, 96, 217, 219)).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
block(iocase_test_1_block1, block, iocase_test_1_code10, body, range(iocase_test_1, 10153, 1760, 223, 250)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
block(filename_utils_1_block1, block, filename_utils_1_code41, body, range(filename_utils_1, 19380, 259, 524, 532)).
block(filename_utils_1_block2, block, filename_utils_1_stmt1, then_statement, range(filename_utils_1, 19421, 54, 525, 527)).
block(filename_utils_1_block3, block, filename_utils_1_stmt3, then_statement, range(filename_utils_1, 19518, 51, 528, 530)).

%%% Statements
%file_system_1 - org.apache.commons.io.FileSystem
stmt(file_system_1_stmt1, if_statement, file_system_1_block1, (statements, 0), range(file_system_1, 4672, 54, 140, 142)).
stmt(file_system_1_stmt2, return_statement, file_system_1_block2, (statements, 0), range(file_system_1, 4703, 13, 141, 141)).
stmt(file_system_1_stmt3, return_statement, file_system_1_block3, (statements, 0), range(file_system_1, 5039, 15, 158, 158)).
stmt(file_system_1_stmt4, return_statement, file_system_1_block4, (statements, 0), range(file_system_1, 5353, 65, 169, 169)).
stmt(file_system_1_stmt5, try_statement, file_system_1_block5, (statements, 0), range(file_system_1, 5951, 378, 186, 193)).
stmt(file_system_1_stmt6, return_statement, file_system_1_block6, (statements, 0), range(file_system_1, 5969, 36, 187, 187)).
stmt(file_system_1_stmt7, if_statement, file_system_1_block7, (statements, 0), range(file_system_1, 9834, 57, 282, 284)).
stmt(file_system_1_stmt8, return_statement, file_system_1_block7, (statements, 1), range(file_system_1, 9900, 89, 285, 285)).
stmt(file_system_1_stmt9, expression_statement, file_system_1_block9, (statements, 0), range(file_system_1, 12003, 27, 329, 329)).
stmt(file_system_1_stmt10, expression_statement, file_system_1_block9, (statements, 1), range(file_system_1, 12039, 39, 330, 330)).
stmt(file_system_1_stmt11, expression_statement, file_system_1_block9, (statements, 2), range(file_system_1, 12087, 35, 331, 331)).
stmt(file_system_1_stmt12, expression_statement, file_system_1_block9, (statements, 3), range(file_system_1, 12131, 97, 332, 332)).
stmt(file_system_1_stmt13, expression_statement, file_system_1_block9, (statements, 4), range(file_system_1, 12237, 88, 333, 333)).
stmt(file_system_1_stmt14, expression_statement, file_system_1_block9, (statements, 5), range(file_system_1, 12334, 63, 334, 334)).
stmt(file_system_1_stmt15, expression_statement, file_system_1_block9, (statements, 6), range(file_system_1, 12406, 35, 335, 335)).
stmt(file_system_1_stmt16, expression_statement, file_system_1_block9, (statements, 7), range(file_system_1, 12450, 37, 336, 336)).
stmt(file_system_1_stmt17, expression_statement, file_system_1_block9, (statements, 8), range(file_system_1, 12496, 47, 337, 337)).
stmt(file_system_1_stmt18, expression_statement, file_system_1_block9, (statements, 9), range(file_system_1, 12552, 35, 338, 338)).
stmt(file_system_1_stmt19, expression_statement, file_system_1_block9, (statements, 10), range(file_system_1, 12596, 69, 339, 339)).
stmt(file_system_1_stmt20, return_statement, file_system_1_block10, (statements, 0), range(file_system_1, 14923, 21, 428, 428)).
%iocase_1 - org.apache.commons.io.IOCase
stmt(iocase_1_stmt1, expression_statement, iocase_1_block1, (statements, 0), range(iocase_1, 4117, 17, 119, 119)).
stmt(iocase_1_stmt2, expression_statement, iocase_1_block1, (statements, 1), range(iocase_1, 4143, 27, 120, 120)).
stmt(iocase_1_stmt3, return_statement, iocase_1_block2, (statements, 0), range(iocase_1, 7811, 80, 218, 218)).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
stmt(iocase_test_1_stmt1, expression_statement, iocase_test_1_block1, (statements, 0), range(iocase_test_1, 10163, 62, 224, 224)).
stmt(iocase_test_1_stmt2, expression_statement, iocase_test_1_block1, (statements, 1), range(iocase_test_1, 10234, 63, 225, 225)).
stmt(iocase_test_1_stmt3, expression_statement, iocase_test_1_block1, (statements, 2), range(iocase_test_1, 10306, 64, 226, 226)).
stmt(iocase_test_1_stmt4, expression_statement, iocase_test_1_block1, (statements, 3), range(iocase_test_1, 10379, 65, 227, 227)).
stmt(iocase_test_1_stmt5, expression_statement, iocase_test_1_block1, (statements, 4), range(iocase_test_1, 10453, 65, 228, 228)).
stmt(iocase_test_1_stmt6, expression_statement, iocase_test_1_block1, (statements, 5), range(iocase_test_1, 10527, 64, 229, 229)).
stmt(iocase_test_1_stmt7, expression_statement, iocase_test_1_block1, (statements, 6), range(iocase_test_1, 10600, 67, 230, 230)).
stmt(iocase_test_1_stmt8, expression_statement, iocase_test_1_block1, (statements, 7), range(iocase_test_1, 10676, 63, 231, 231)).
stmt(iocase_test_1_stmt9, expression_statement, iocase_test_1_block1, (statements, 8), range(iocase_test_1, 10748, 59, 232, 232)).
stmt(iocase_test_1_stmt10, expression_statement, iocase_test_1_block1, (statements, 9), range(iocase_test_1, 10817, 62, 234, 234)).
stmt(iocase_test_1_stmt11, expression_statement, iocase_test_1_block1, (statements, 10), range(iocase_test_1, 10888, 64, 235, 235)).
stmt(iocase_test_1_stmt12, expression_statement, iocase_test_1_block1, (statements, 11), range(iocase_test_1, 10961, 65, 236, 236)).
stmt(iocase_test_1_stmt13, expression_statement, iocase_test_1_block1, (statements, 12), range(iocase_test_1, 11035, 66, 237, 237)).
stmt(iocase_test_1_stmt14, expression_statement, iocase_test_1_block1, (statements, 13), range(iocase_test_1, 11110, 64, 238, 238)).
stmt(iocase_test_1_stmt15, expression_statement, iocase_test_1_block1, (statements, 14), range(iocase_test_1, 11183, 64, 239, 239)).
stmt(iocase_test_1_stmt16, expression_statement, iocase_test_1_block1, (statements, 15), range(iocase_test_1, 11256, 67, 240, 240)).
stmt(iocase_test_1_stmt17, expression_statement, iocase_test_1_block1, (statements, 16), range(iocase_test_1, 11332, 63, 241, 241)).
stmt(iocase_test_1_stmt18, expression_statement, iocase_test_1_block1, (statements, 17), range(iocase_test_1, 11404, 60, 242, 242)).
stmt(iocase_test_1_stmt19, expression_statement, iocase_test_1_block1, (statements, 18), range(iocase_test_1, 11474, 65, 244, 244)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
stmt(filename_utils_1_stmt1, if_statement, filename_utils_1_block1, (statements, 0), range(filename_utils_1, 19390, 85, 525, 527)).
stmt(filename_utils_1_stmt2, return_statement, filename_utils_1_block2, (statements, 0), range(filename_utils_1, 19435, 30, 526, 526)).
stmt(filename_utils_1_stmt3, if_statement, filename_utils_1_block1, (statements, 1), range(filename_utils_1, 19484, 85, 528, 530)).
stmt(filename_utils_1_stmt4, return_statement, filename_utils_1_block3, (statements, 0), range(filename_utils_1, 19532, 27, 529, 529)).

%%% Expressions
%file_system_1 - org.apache.commons.io.FileSystem
expr(file_system_1_expr1, array_creation, file_system_1_code4, (arguments, 5), range(file_system_1, 1433, 15, 39, 39), "new int[]{0}").
expr(file_system_1_expr2, array_initializer, file_system_1_expr1, initializer, range(file_system_1, 1443, 5, 39, 39), "{0}").
expr(file_system_1_expr3, array_creation, file_system_1_code4, (arguments, 6), range(file_system_1, 1450, 15, 39, 39), "new String[]{}").
expr(file_system_1_expr4, array_initializer, file_system_1_expr3, initializer, range(file_system_1, 1463, 2, 39, 39), "{}").
expr(file_system_1_expr5, array_creation, file_system_1_code11, (arguments, 5), range(file_system_1, 1569, 172, 44, 51), "new int[]{0,'/'}").
expr(file_system_1_expr6, array_initializer, file_system_1_expr5, initializer, range(file_system_1, 1579, 162, 44, 51), "{0,'/'}").
expr(file_system_1_expr7, array_creation, file_system_1_code15, (arguments, 5), range(file_system_1, 1864, 189, 56, 64), "new int[]{0,'/',':'}").
expr(file_system_1_expr8, array_initializer, file_system_1_expr7, initializer, range(file_system_1, 1874, 179, 56, 64), "{0,'/',':'}").
expr(file_system_1_expr9, method_invocation, file_system_1_code25, initializer, range(file_system_1, 3733, 25, 102, 102), "getOsMatchesName(\"Linux\")").
expr(file_system_1_expr10, method_invocation, file_system_1_code31, initializer, range(file_system_1, 3986, 23, 112, 112), "getOsMatchesName(\"Mac\")").
expr(file_system_1_expr11, method_invocation, file_system_1_code37, initializer, range(file_system_1, 4375, 40, 127, 127), "getOsMatchesName(OS_NAME_WINDOWS_PREFIX)").
expr(file_system_1_expr12, method_invocation, file_system_1_code43, initializer, range(file_system_1, 4511, 9, 132, 132), "current()").
expr(file_system_1_expr13, method_invocation, file_system_1_stmt4, expression, range(file_system_1, 5360, 57, 169, 169), "isOsNameMatch(getSystemProperty(\"os.name\"),osNamePrefix)").
expr(file_system_1_expr14, method_invocation, file_system_1_expr13, (arguments, 0), range(file_system_1, 5374, 28, 169, 169), "getSystemProperty(\"os.name\")").
expr(file_system_1_expr15, method_invocation, file_system_1_stmt6, expression, range(file_system_1, 5976, 28, 187, 187), "System.getProperty(property)").
expr(file_system_1_expr16, infix_expression, file_system_1_stmt7, expression, range(file_system_1, 9838, 14, 282, 282), "osName == null").
expr(file_system_1_expr17, method_invocation, file_system_1_stmt8, expression, range(file_system_1, 9907, 81, 285, 285), "osName.toUpperCase(Locale.ROOT).startsWith(osNamePrefix.toUpperCase(Locale.ROOT))").
expr(file_system_1_expr19, method_invocation, file_system_1_expr17, expression, range(file_system_1, 9907, 31, 285, 285), "osName.toUpperCase(Locale.ROOT)").
expr(file_system_1_expr18, method_invocation, file_system_1_expr17, (arguments, 0), range(file_system_1, 9950, 37, 285, 285), "osNamePrefix.toUpperCase(Locale.ROOT)").
expr(file_system_1_expr20, assignment, file_system_1_stmt9, expression, range(file_system_1, 12003, 26, 329, 329), "this.blockSize=blockSize").
expr(file_system_1_expr21, field_access, file_system_1_expr20, left_hand_side, range(file_system_1, 12003, 14, 329, 329), "this.blockSize").
expr(file_system_1_expr22, this_expression, f_block_size_30, expression, range(file_system_1, 12003, 4, 329, 329), "this").
expr(file_system_1_expr24, field_access, file_system_1_expr23, left_hand_side, range(file_system_1, 12039, 22, 330, 330), "this.maxFileNameLength").
expr(file_system_1_expr25, this_expression, f_max_file_name_length_31, expression, range(file_system_1, 12039, 4, 330, 330), "this").
expr(file_system_1_expr23, assignment, file_system_1_stmt10, expression, range(file_system_1, 12039, 38, 330, 330), "this.maxFileNameLength=maxFileLength").
expr(file_system_1_expr28, this_expression, f_max_path_length_32, expression, range(file_system_1, 12087, 4, 331, 331), "this").
expr(file_system_1_expr26, assignment, file_system_1_stmt11, expression, range(file_system_1, 12087, 34, 331, 331), "this.maxPathLength=maxPathLength").
expr(file_system_1_expr27, field_access, file_system_1_expr26, left_hand_side, range(file_system_1, 12087, 18, 331, 331), "this.maxPathLength").
expr(file_system_1_expr32, this_expression, f_illegal_file_name_chars_33, expression, range(file_system_1, 12131, 4, 332, 332), "this").
expr(file_system_1_expr30, field_access, file_system_1_expr29, left_hand_side, range(file_system_1, 12131, 25, 332, 332), "this.illegalFileNameChars").
expr(file_system_1_expr29, assignment, file_system_1_stmt12, expression, range(file_system_1, 12131, 96, 332, 332), "this.illegalFileNameChars=Objects.requireNonNull(illegalFileNameChars,\"illegalFileNameChars\")").
expr(file_system_1_expr31, method_invocation, file_system_1_expr29, right_hand_side, range(file_system_1, 12159, 68, 332, 332), "Objects.requireNonNull(illegalFileNameChars,\"illegalFileNameChars\")").
expr(file_system_1_expr36, this_expression, f_reserved_file_names_34, expression, range(file_system_1, 12237, 4, 333, 333), "this").
expr(file_system_1_expr33, assignment, file_system_1_stmt13, expression, range(file_system_1, 12237, 87, 333, 333), "this.reservedFileNames=Objects.requireNonNull(reservedFileNames,\"reservedFileNames\")").
expr(file_system_1_expr34, field_access, file_system_1_expr33, left_hand_side, range(file_system_1, 12237, 22, 333, 333), "this.reservedFileNames").
expr(file_system_1_expr35, method_invocation, file_system_1_expr33, right_hand_side, range(file_system_1, 12262, 62, 333, 333), "Objects.requireNonNull(reservedFileNames,\"reservedFileNames\")").
expr(file_system_1_expr39, this_expression, f_reserved_file_names_extensions_35, expression, range(file_system_1, 12334, 4, 334, 334), "this").
expr(file_system_1_expr37, assignment, file_system_1_stmt14, expression, range(file_system_1, 12334, 62, 334, 334), "this.reservedFileNamesExtensions=reservedFileNamesExtensions").
expr(file_system_1_expr38, field_access, file_system_1_expr37, left_hand_side, range(file_system_1, 12334, 32, 334, 334), "this.reservedFileNamesExtensions").
expr(file_system_1_expr42, this_expression, f_case_sensitive_36, expression, range(file_system_1, 12406, 4, 335, 335), "this").
expr(file_system_1_expr40, assignment, file_system_1_stmt15, expression, range(file_system_1, 12406, 34, 335, 335), "this.caseSensitive=caseSensitive").
expr(file_system_1_expr41, field_access, file_system_1_expr40, left_hand_side, range(file_system_1, 12406, 18, 335, 335), "this.caseSensitive").
expr(file_system_1_expr43, assignment, file_system_1_stmt16, expression, range(file_system_1, 12450, 36, 336, 336), "this.casePreserving=casePreserving").
expr(file_system_1_expr44, field_access, file_system_1_expr43, left_hand_side, range(file_system_1, 12450, 19, 336, 336), "this.casePreserving").
expr(file_system_1_expr45, this_expression, f_case_preserving_37, expression, range(file_system_1, 12450, 4, 336, 336), "this").
expr(file_system_1_expr48, this_expression, f_supports_drive_letter_38, expression, range(file_system_1, 12496, 4, 337, 337), "this").
expr(file_system_1_expr46, assignment, file_system_1_stmt17, expression, range(file_system_1, 12496, 46, 337, 337), "this.supportsDriveLetter=supportsDriveLetter").
expr(file_system_1_expr47, field_access, file_system_1_expr46, left_hand_side, range(file_system_1, 12496, 24, 337, 337), "this.supportsDriveLetter").
expr(file_system_1_expr51, this_expression, f_name_separator_39, expression, range(file_system_1, 12552, 4, 338, 338), "this").
expr(file_system_1_expr50, field_access, file_system_1_expr49, left_hand_side, range(file_system_1, 12552, 18, 338, 338), "this.nameSeparator").
expr(file_system_1_expr49, assignment, file_system_1_stmt18, expression, range(file_system_1, 12552, 34, 338, 338), "this.nameSeparator=nameSeparator").
expr(file_system_1_expr53, field_access, file_system_1_expr52, left_hand_side, range(file_system_1, 12596, 23, 339, 339), "this.nameSeparatorOther").
expr(file_system_1_expr52, assignment, file_system_1_stmt19, expression, range(file_system_1, 12596, 68, 339, 339), "this.nameSeparatorOther=FilenameUtils.flipSeparator(nameSeparator)").
expr(file_system_1_expr55, this_expression, f_name_separator_other_40, expression, range(file_system_1, 12596, 4, 339, 339), "this").
expr(file_system_1_expr54, method_invocation, file_system_1_expr52, right_hand_side, range(file_system_1, 12622, 42, 339, 339), "FilenameUtils.flipSeparator(nameSeparator)").
%iocase_1 - org.apache.commons.io.IOCase
expr(iocase_1_expr1, method_invocation, iocase_1_code6, (arguments, 1), range(iocase_1, 2422, 41, 66, 66), "FileSystem.getCurrent().isCaseSensitive()").
expr(iocase_1_expr2, method_invocation, iocase_1_expr1, expression, range(iocase_1, 2422, 23, 66, 66), "FileSystem.getCurrent()").
expr(iocase_1_expr3, assignment, iocase_1_stmt1, expression, range(iocase_1, 4117, 16, 119, 119), "this.name=name").
expr(iocase_1_expr4, field_access, iocase_1_expr3, left_hand_side, range(iocase_1, 4117, 9, 119, 119), "this.name").
expr(iocase_1_expr5, this_expression, f_name_134, expression, range(iocase_1, 4117, 4, 119, 119), "this").
expr(iocase_1_expr8, this_expression, f_sensitive_135, expression, range(iocase_1, 4143, 4, 120, 120), "this").
expr(iocase_1_expr6, assignment, iocase_1_stmt2, expression, range(iocase_1, 4143, 26, 120, 120), "this.sensitive=sensitive").
expr(iocase_1_expr7, field_access, iocase_1_expr6, left_hand_side, range(iocase_1, 4143, 14, 120, 120), "this.sensitive").
expr(iocase_1_expr9, method_invocation, iocase_1_stmt3, expression, range(iocase_1, 7818, 72, 218, 218), "str.regionMatches(!sensitive,strStartIndex,search,0,search.length())").
expr(iocase_1_expr10, prefix_expression, iocase_1_expr9, (arguments, 0), range(iocase_1, 7836, 10, 218, 218), "!sensitive").
expr(iocase_1_expr11, method_invocation, iocase_1_expr9, (arguments, 4), range(iocase_1, 7874, 15, 218, 218), "search.length()").
%iocase_test_1 - org.apache.commons.io.IOCaseTest
expr(iocase_test_1_expr1, infix_expression, iocase_test_1_code9, initializer, range(iocase_test_1, 1466, 26, 39, 39), "File.separatorChar == '\\\\'").
expr(iocase_test_1_expr2, method_invocation, iocase_test_1_stmt1, expression, range(iocase_test_1, 10163, 61, 224, 224), "assertTrue(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"\"))").
expr(iocase_test_1_expr3, method_invocation, iocase_test_1_expr2, (arguments, 0), range(iocase_test_1, 10174, 49, 224, 224), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"\")").
expr(iocase_test_1_expr4, method_invocation, iocase_test_1_stmt2, expression, range(iocase_test_1, 10234, 62, 225, 225), "assertTrue(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"A\"))").
expr(iocase_test_1_expr5, method_invocation, iocase_test_1_expr4, (arguments, 0), range(iocase_test_1, 10245, 50, 225, 225), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"A\")").
expr(iocase_test_1_expr6, method_invocation, iocase_test_1_stmt3, expression, range(iocase_test_1, 10306, 63, 226, 226), "assertTrue(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"AB\"))").
expr(iocase_test_1_expr7, method_invocation, iocase_test_1_expr6, (arguments, 0), range(iocase_test_1, 10317, 51, 226, 226), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"AB\")").
expr(iocase_test_1_expr8, method_invocation, iocase_test_1_stmt4, expression, range(iocase_test_1, 10379, 64, 227, 227), "assertTrue(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"ABC\"))").
expr(iocase_test_1_expr9, method_invocation, iocase_test_1_expr8, (arguments, 0), range(iocase_test_1, 10390, 52, 227, 227), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"ABC\")").
expr(iocase_test_1_expr10, method_invocation, iocase_test_1_stmt5, expression, range(iocase_test_1, 10453, 64, 228, 228), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"BC\"))").
expr(iocase_test_1_expr11, method_invocation, iocase_test_1_expr10, (arguments, 0), range(iocase_test_1, 10465, 51, 228, 228), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"BC\")").
expr(iocase_test_1_expr12, method_invocation, iocase_test_1_stmt6, expression, range(iocase_test_1, 10527, 63, 229, 229), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"C\"))").
expr(iocase_test_1_expr13, method_invocation, iocase_test_1_expr12, (arguments, 0), range(iocase_test_1, 10539, 50, 229, 229), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"C\")").
expr(iocase_test_1_expr14, method_invocation, iocase_test_1_stmt7, expression, range(iocase_test_1, 10600, 66, 230, 230), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"ABCD\"))").
expr(iocase_test_1_expr15, method_invocation, iocase_test_1_expr14, (arguments, 0), range(iocase_test_1, 10612, 53, 230, 230), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,\"ABCD\")").
expr(iocase_test_1_expr16, method_invocation, iocase_test_1_stmt8, expression, range(iocase_test_1, 10676, 62, 231, 231), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"\",0,\"ABC\"))").
expr(iocase_test_1_expr17, method_invocation, iocase_test_1_expr16, (arguments, 0), range(iocase_test_1, 10688, 49, 231, 231), "IOCase.SENSITIVE.checkRegionMatches(\"\",0,\"ABC\")").
expr(iocase_test_1_expr18, method_invocation, iocase_test_1_stmt9, expression, range(iocase_test_1, 10748, 58, 232, 232), "assertTrue(IOCase.SENSITIVE.checkRegionMatches(\"\",0,\"\"))").
expr(iocase_test_1_expr19, method_invocation, iocase_test_1_expr18, (arguments, 0), range(iocase_test_1, 10759, 46, 232, 232), "IOCase.SENSITIVE.checkRegionMatches(\"\",0,\"\")").
expr(iocase_test_1_expr20, method_invocation, iocase_test_1_stmt10, expression, range(iocase_test_1, 10817, 61, 234, 234), "assertTrue(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"\"))").
expr(iocase_test_1_expr21, method_invocation, iocase_test_1_expr20, (arguments, 0), range(iocase_test_1, 10828, 49, 234, 234), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"\")").
expr(iocase_test_1_expr22, method_invocation, iocase_test_1_stmt11, expression, range(iocase_test_1, 10888, 63, 235, 235), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"A\"))").
expr(iocase_test_1_expr23, method_invocation, iocase_test_1_expr22, (arguments, 0), range(iocase_test_1, 10900, 50, 235, 235), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"A\")").
expr(iocase_test_1_expr24, method_invocation, iocase_test_1_stmt12, expression, range(iocase_test_1, 10961, 64, 236, 236), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"AB\"))").
expr(iocase_test_1_expr25, method_invocation, iocase_test_1_expr24, (arguments, 0), range(iocase_test_1, 10973, 51, 236, 236), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"AB\")").
expr(iocase_test_1_expr26, method_invocation, iocase_test_1_stmt13, expression, range(iocase_test_1, 11035, 65, 237, 237), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"ABC\"))").
expr(iocase_test_1_expr27, method_invocation, iocase_test_1_expr26, (arguments, 0), range(iocase_test_1, 11047, 52, 237, 237), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"ABC\")").
expr(iocase_test_1_expr28, method_invocation, iocase_test_1_stmt14, expression, range(iocase_test_1, 11110, 63, 238, 238), "assertTrue(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"BC\"))").
expr(iocase_test_1_expr29, method_invocation, iocase_test_1_expr28, (arguments, 0), range(iocase_test_1, 11121, 51, 238, 238), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"BC\")").
expr(iocase_test_1_expr30, method_invocation, iocase_test_1_stmt15, expression, range(iocase_test_1, 11183, 63, 239, 239), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"C\"))").
expr(iocase_test_1_expr31, method_invocation, iocase_test_1_expr30, (arguments, 0), range(iocase_test_1, 11195, 50, 239, 239), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"C\")").
expr(iocase_test_1_expr32, method_invocation, iocase_test_1_stmt16, expression, range(iocase_test_1, 11256, 66, 240, 240), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"ABCD\"))").
expr(iocase_test_1_expr33, method_invocation, iocase_test_1_expr32, (arguments, 0), range(iocase_test_1, 11268, 53, 240, 240), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",1,\"ABCD\")").
expr(iocase_test_1_expr34, method_invocation, iocase_test_1_stmt17, expression, range(iocase_test_1, 11332, 62, 241, 241), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"\",1,\"ABC\"))").
expr(iocase_test_1_expr35, method_invocation, iocase_test_1_expr34, (arguments, 0), range(iocase_test_1, 11344, 49, 241, 241), "IOCase.SENSITIVE.checkRegionMatches(\"\",1,\"ABC\")").
expr(iocase_test_1_expr36, method_invocation, iocase_test_1_stmt18, expression, range(iocase_test_1, 11404, 59, 242, 242), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"\",1,\"\"))").
expr(iocase_test_1_expr37, method_invocation, iocase_test_1_expr36, (arguments, 0), range(iocase_test_1, 11416, 46, 242, 242), "IOCase.SENSITIVE.checkRegionMatches(\"\",1,\"\")").
expr(iocase_test_1_expr38, method_invocation, iocase_test_1_stmt19, expression, range(iocase_test_1, 11474, 64, 244, 244), "assertFalse(IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,null))").
expr(iocase_test_1_expr39, method_invocation, iocase_test_1_expr38, (arguments, 0), range(iocase_test_1, 11486, 51, 244, 244), "IOCase.SENSITIVE.checkRegionMatches(\"ABC\",0,null)").
%filename_utils_1 - org.apache.commons.io.FilenameUtils
expr(filename_utils_1_expr1, array_initializer, filename_utils_1_code10, initializer, range(filename_utils_1, 3715, 2, 100, 100), "{}").
expr(filename_utils_1_expr2, method_invocation, filename_utils_1_code16, initializer, range(filename_utils_1, 4081, 39, 116, 116), "Character.toString(EXTENSION_SEPARATOR)").
expr(filename_utils_1_expr3, method_invocation, filename_utils_1_code28, initializer, range(filename_utils_1, 4623, 36, 136, 136), "flipSeparator(SYSTEM_NAME_SEPARATOR)").
expr(filename_utils_1_expr4, method_invocation, filename_utils_1_code34, initializer, range(filename_utils_1, 4710, 70, 138, 138), "Pattern.compile(\"^(\\\\d{1,3})\\\\.(\\\\d{1,3})\\\\.(\\\\d{1,3})\\\\.(\\\\d{1,3})$\")").
expr(filename_utils_1_expr5, method_invocation, filename_utils_1_code40, initializer, range(filename_utils_1, 5121, 45, 150, 150), "Pattern.compile(\"^[a-zA-Z0-9][a-zA-Z0-9-]*$\")").
expr(filename_utils_1_expr6, infix_expression, filename_utils_1_stmt1, expression, range(filename_utils_1, 19394, 25, 525, 525), "ch == UNIX_NAME_SEPARATOR").
expr(filename_utils_1_expr7, infix_expression, filename_utils_1_stmt3, expression, range(filename_utils_1, 19488, 28, 528, 528), "ch == WINDOWS_NAME_SEPARATOR").

%%% Names
%file_system_1 - org.apache.commons.io.FileSystem
name(t_file_system_1, simple_name, file_system_1_code2, name, range(file_system_1, 1305, 10, 34, 34), 'FileSystem').
name(f_generic_1, simple_name, file_system_1_code4, name, range(file_system_1, 1367, 7, 39, 39), 'GENERIC').
name(t_integer_2, simple_name, q_max_value_1, qualifier, range(file_system_1, 1395, 7, 39, 39), 'Integer').
name(q_max_value_1, qualified_name, file_system_1_code4, (arguments, 3), range(file_system_1, 1395, 17, 39, 39), 'Integer.MAX_VALUE').
name(t_integer_2, simple_name, q_max_value_2, qualifier, range(file_system_1, 1414, 7, 39, 39), 'Integer').
name(q_max_value_2, qualified_name, file_system_1_code4, (arguments, 4), range(file_system_1, 1414, 17, 39, 39), 'Integer.MAX_VALUE').
name(f_linux_2, simple_name, file_system_1_code11, name, range(file_system_1, 1534, 5, 44, 44), 'LINUX').
name(f_mac_osx_3, simple_name, file_system_1_code15, name, range(file_system_1, 1827, 7, 56, 56), 'MAC_OSX').
name(f_windows_4, simple_name, file_system_1_code19, name, range(file_system_1, 2672, 7, 79, 79), 'WINDOWS').
name(f_is_os_linux_5, simple_name, file_system_1_code25, name, range(file_system_1, 3719, 11, 102, 102), 'IS_OS_LINUX').
name(m_get_os_matches_name_1, simple_name, file_system_1_expr9, name, range(file_system_1, 3733, 16, 102, 102), 'getOsMatchesName').
name(f_is_os_mac_6, simple_name, file_system_1_code31, name, range(file_system_1, 3974, 9, 112, 112), 'IS_OS_MAC').
name(m_get_os_matches_name_1, simple_name, file_system_1_expr10, name, range(file_system_1, 3986, 16, 112, 112), 'getOsMatchesName').
name(f_is_os_windows_7, simple_name, file_system_1_code37, name, range(file_system_1, 4359, 13, 127, 127), 'IS_OS_WINDOWS').
name(m_get_os_matches_name_1, simple_name, file_system_1_expr11, name, range(file_system_1, 4375, 16, 127, 127), 'getOsMatchesName').
name(f_os_name_windows_prefix_8, simple_name, file_system_1_expr11, (arguments, 0), range(file_system_1, 4392, 22, 127, 127), 'OS_NAME_WINDOWS_PREFIX').
name(f_current_9, simple_name, file_system_1_code43, name, range(file_system_1, 4501, 7, 132, 132), 'CURRENT').
name(m_current_2, simple_name, file_system_1_expr12, name, range(file_system_1, 4511, 7, 132, 132), 'current').
name(f_is_os_linux_5, simple_name, file_system_1_stmt1, expression, range(file_system_1, 4676, 11, 140, 140), 'IS_OS_LINUX').
name(f_linux_2, simple_name, file_system_1_stmt2, expression, range(file_system_1, 4710, 5, 141, 141), 'LINUX').
name(f_current_9, simple_name, file_system_1_stmt3, expression, range(file_system_1, 5046, 7, 158, 158), 'CURRENT').
name(m_is_os_name_match_4, simple_name, file_system_1_expr13, name, range(file_system_1, 5360, 13, 169, 169), 'isOsNameMatch').
name(m_get_system_property_5, simple_name, file_system_1_expr14, name, range(file_system_1, 5374, 17, 169, 169), 'getSystemProperty').
name(p_os_name_prefix_10, simple_name, file_system_1_expr13, (arguments, 1), range(file_system_1, 5404, 12, 169, 169), 'osNamePrefix').
name(t_system_3, simple_name, file_system_1_expr15, expression, range(file_system_1, 5976, 6, 187, 187), 'System').
name(m_get_property_6, simple_name, file_system_1_expr15, name, range(file_system_1, 5983, 11, 187, 187), 'getProperty').
name(p_property_11, simple_name, file_system_1_expr15, (arguments, 0), range(file_system_1, 5995, 8, 187, 187), 'property').
name(p_os_name_15, simple_name, file_system_1_expr16, left_operand, range(file_system_1, 9838, 6, 282, 282), 'osName').
name(p_os_name_15, simple_name, file_system_1_expr19, expression, range(file_system_1, 9907, 6, 285, 285), 'osName').
name(m_to_upper_case_9, simple_name, file_system_1_expr19, name, range(file_system_1, 9914, 11, 285, 285), 'toUpperCase').
name(t_locale_4, simple_name, q_root_2, qualifier, range(file_system_1, 9926, 6, 285, 285), 'Locale').
name(q_root_2, qualified_name, file_system_1_expr19, (arguments, 0), range(file_system_1, 9926, 11, 285, 285), 'Locale.ROOT').
name(m_starts_with_8, simple_name, file_system_1_expr17, name, range(file_system_1, 9939, 10, 285, 285), 'startsWith').
name(p_os_name_prefix_16, simple_name, file_system_1_expr18, expression, range(file_system_1, 9950, 12, 285, 285), 'osNamePrefix').
name(m_to_upper_case_9, simple_name, file_system_1_expr18, name, range(file_system_1, 9963, 11, 285, 285), 'toUpperCase').
name(t_locale_4, simple_name, q_root_3, qualifier, range(file_system_1, 9975, 6, 285, 285), 'Locale').
name(q_root_3, qualified_name, file_system_1_expr18, (arguments, 0), range(file_system_1, 9975, 11, 285, 285), 'Locale.ROOT').
name(p_reserved_file_names_26, simple_name, file_system_1_code50, name, range(file_system_1, 11870, 17, 328, 328), 'reservedFileNames').
name(p_reserved_file_names_extensions_27, simple_name, file_system_1_code55, name, range(file_system_1, 11903, 27, 328, 328), 'reservedFileNamesExtensions').
name(p_supports_drive_letter_28, simple_name, file_system_1_code58, name, range(file_system_1, 11946, 19, 328, 328), 'supportsDriveLetter').
name(p_name_separator_29, simple_name, file_system_1_code61, name, range(file_system_1, 11978, 13, 328, 328), 'nameSeparator').
name(f_block_size_30, simple_name, file_system_1_expr21, name, range(file_system_1, 12008, 9, 329, 329), 'blockSize').
name(p_block_size_20, simple_name, file_system_1_expr20, right_hand_side, range(file_system_1, 12020, 9, 329, 329), 'blockSize').
name(f_max_file_name_length_31, simple_name, file_system_1_expr24, name, range(file_system_1, 12044, 17, 330, 330), 'maxFileNameLength').
name(p_max_file_length_23, simple_name, file_system_1_expr23, right_hand_side, range(file_system_1, 12064, 13, 330, 330), 'maxFileLength').
name(f_max_path_length_32, simple_name, file_system_1_expr27, name, range(file_system_1, 12092, 13, 331, 331), 'maxPathLength').
name(p_max_path_length_24, simple_name, file_system_1_expr26, right_hand_side, range(file_system_1, 12108, 13, 331, 331), 'maxPathLength').
name(f_illegal_file_name_chars_33, simple_name, file_system_1_expr30, name, range(file_system_1, 12136, 20, 332, 332), 'illegalFileNameChars').
name(t_objects_5, simple_name, file_system_1_expr31, expression, range(file_system_1, 12159, 7, 332, 332), 'Objects').
name(m_require_non_null_12, simple_name, file_system_1_expr31, name, range(file_system_1, 12167, 14, 332, 332), 'requireNonNull').
name(p_illegal_file_name_chars_25, simple_name, file_system_1_expr31, (arguments, 0), range(file_system_1, 12182, 20, 332, 332), 'illegalFileNameChars').
name(f_reserved_file_names_34, simple_name, file_system_1_expr34, name, range(file_system_1, 12242, 17, 333, 333), 'reservedFileNames').
name(t_objects_5, simple_name, file_system_1_expr35, expression, range(file_system_1, 12262, 7, 333, 333), 'Objects').
name(m_require_non_null_12, simple_name, file_system_1_expr35, name, range(file_system_1, 12270, 14, 333, 333), 'requireNonNull').
name(p_reserved_file_names_26, simple_name, file_system_1_expr35, (arguments, 0), range(file_system_1, 12285, 17, 333, 333), 'reservedFileNames').
name(f_reserved_file_names_extensions_35, simple_name, file_system_1_expr38, name, range(file_system_1, 12339, 27, 334, 334), 'reservedFileNamesExtensions').
name(p_reserved_file_names_extensions_27, simple_name, file_system_1_expr37, right_hand_side, range(file_system_1, 12369, 27, 334, 334), 'reservedFileNamesExtensions').
name(f_case_sensitive_36, simple_name, file_system_1_expr41, name, range(file_system_1, 12411, 13, 335, 335), 'caseSensitive').
name(p_case_sensitive_21, simple_name, file_system_1_expr40, right_hand_side, range(file_system_1, 12427, 13, 335, 335), 'caseSensitive').
name(f_case_preserving_37, simple_name, file_system_1_expr44, name, range(file_system_1, 12455, 14, 336, 336), 'casePreserving').
name(p_case_preserving_22, simple_name, file_system_1_expr43, right_hand_side, range(file_system_1, 12472, 14, 336, 336), 'casePreserving').
name(f_supports_drive_letter_38, simple_name, file_system_1_expr47, name, range(file_system_1, 12501, 19, 337, 337), 'supportsDriveLetter').
name(p_supports_drive_letter_28, simple_name, file_system_1_expr46, right_hand_side, range(file_system_1, 12523, 19, 337, 337), 'supportsDriveLetter').
name(f_name_separator_39, simple_name, file_system_1_expr50, name, range(file_system_1, 12557, 13, 338, 338), 'nameSeparator').
name(p_name_separator_29, simple_name, file_system_1_expr49, right_hand_side, range(file_system_1, 12573, 13, 338, 338), 'nameSeparator').
name(f_name_separator_other_40, simple_name, file_system_1_expr53, name, range(file_system_1, 12601, 18, 339, 339), 'nameSeparatorOther').
name(t_filename_utils_6, simple_name, file_system_1_expr54, expression, range(file_system_1, 12622, 13, 339, 339), 'FilenameUtils').
name(m_flip_separator_13, simple_name, file_system_1_expr54, name, range(file_system_1, 12636, 13, 339, 339), 'flipSeparator').
name(p_name_separator_29, simple_name, file_system_1_expr54, (arguments, 0), range(file_system_1, 12650, 13, 339, 339), 'nameSeparator').
name(f_case_sensitive_36, simple_name, file_system_1_stmt20, expression, range(file_system_1, 14930, 13, 428, 428), 'caseSensitive').
%iocase_1 - org.apache.commons.io.IOCase
name(t_iocase_10, simple_name, iocase_1_code2, name, range(iocase_1, 1448, 6, 40, 40), 'IOCase').
name(f_sensitive_125, simple_name, iocase_1_code4, name, range(iocase_1, 1549, 9, 45, 45), 'SENSITIVE').
name(f_insensitive_126, simple_name, iocase_1_code5, name, range(iocase_1, 1673, 11, 50, 50), 'INSENSITIVE').
name(f_system_127, simple_name, iocase_1_code6, name, range(iocase_1, 2405, 6, 66, 66), 'SYSTEM').
name(t_file_system_1, simple_name, iocase_1_expr2, expression, range(iocase_1, 2422, 10, 66, 66), 'FileSystem').
name(m_get_current_3, simple_name, iocase_1_expr2, name, range(iocase_1, 2433, 10, 66, 66), 'getCurrent').
name(m_is_case_sensitive_22, simple_name, iocase_1_expr1, name, range(iocase_1, 2446, 15, 66, 66), 'isCaseSensitive').
name(m_iocase_82, simple_name, iocase_1_code7, name, range(iocase_1, 4056, 6, 118, 118), 'IOCase').
name(p_name_132, simple_name, iocase_1_code8, name, range(iocase_1, 4076, 4, 118, 118), 'name').
name(p_sensitive_133, simple_name, iocase_1_code11, name, range(iocase_1, 4096, 9, 118, 118), 'sensitive').
name(f_name_134, simple_name, iocase_1_expr4, name, range(iocase_1, 4122, 4, 119, 119), 'name').
name(p_name_132, simple_name, iocase_1_expr3, right_hand_side, range(iocase_1, 4129, 4, 119, 119), 'name').
name(f_sensitive_135, simple_name, iocase_1_expr7, name, range(iocase_1, 4148, 9, 120, 120), 'sensitive').
name(p_sensitive_133, simple_name, iocase_1_expr6, right_hand_side, range(iocase_1, 4160, 9, 120, 120), 'sensitive').
name(p_str_145, simple_name, iocase_1_expr9, expression, range(iocase_1, 7818, 3, 218, 218), 'str').
name(m_region_matches_88, simple_name, iocase_1_expr9, name, range(iocase_1, 7822, 13, 218, 218), 'regionMatches').
name(f_sensitive_135, simple_name, iocase_1_expr10, operand, range(iocase_1, 7837, 9, 218, 218), 'sensitive').
name(p_str_start_index_146, simple_name, iocase_1_expr9, (arguments, 1), range(iocase_1, 7848, 13, 218, 218), 'strStartIndex').
name(p_search_147, simple_name, iocase_1_expr9, (arguments, 2), range(iocase_1, 7863, 6, 218, 218), 'search').
name(p_search_147, simple_name, iocase_1_expr11, expression, range(iocase_1, 7874, 6, 218, 218), 'search').
name(m_length_89, simple_name, iocase_1_expr11, name, range(iocase_1, 7881, 6, 218, 218), 'length').
%iocase_test_1 - org.apache.commons.io.IOCaseTest
name(t_iocase_test_11, simple_name, iocase_test_1_code2, name, range(iocase_test_1, 1409, 10, 37, 37), 'IOCaseTest').
name(f_windows_150, simple_name, iocase_test_1_code9, name, range(iocase_test_1, 1456, 7, 39, 39), 'WINDOWS').
name(q_separator_char_4, qualified_name, iocase_test_1_expr1, left_operand, range(iocase_test_1, 1466, 18, 39, 39), 'File.separatorChar').
name(t_file_8, simple_name, q_separator_char_4, qualifier, range(iocase_test_1, 1466, 4, 39, 39), 'File').
name(m_assert_true_108, simple_name, iocase_test_1_expr2, name, range(iocase_test_1, 10163, 10, 224, 224), 'assertTrue').
name(t_iocase_10, simple_name, q_sensitive_4, qualifier, range(iocase_test_1, 10174, 6, 224, 224), 'IOCase').
name(q_sensitive_4, qualified_name, iocase_test_1_expr3, expression, range(iocase_test_1, 10174, 16, 224, 224), 'IOCase.SENSITIVE').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr3, name, range(iocase_test_1, 10191, 18, 224, 224), 'checkRegionMatches').
name(m_assert_true_108, simple_name, iocase_test_1_expr4, name, range(iocase_test_1, 10234, 10, 225, 225), 'assertTrue').
name(q_sensitive_5, qualified_name, iocase_test_1_expr5, expression, range(iocase_test_1, 10245, 16, 225, 225), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 10245, 6, 225, 225), 'IOCase').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr5, name, range(iocase_test_1, 10262, 18, 225, 225), 'checkRegionMatches').
name(m_assert_true_108, simple_name, iocase_test_1_expr6, name, range(iocase_test_1, 10306, 10, 226, 226), 'assertTrue').
name(q_sensitive_5, qualified_name, iocase_test_1_expr7, expression, range(iocase_test_1, 10317, 16, 226, 226), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 10317, 6, 226, 226), 'IOCase').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr7, name, range(iocase_test_1, 10334, 18, 226, 226), 'checkRegionMatches').
name(m_assert_true_108, simple_name, iocase_test_1_expr8, name, range(iocase_test_1, 10379, 10, 227, 227), 'assertTrue').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 10390, 6, 227, 227), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr9, expression, range(iocase_test_1, 10390, 16, 227, 227), 'IOCase.SENSITIVE').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr9, name, range(iocase_test_1, 10407, 18, 227, 227), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr10, name, range(iocase_test_1, 10453, 11, 228, 228), 'assertFalse').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 10465, 6, 228, 228), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr11, expression, range(iocase_test_1, 10465, 16, 228, 228), 'IOCase.SENSITIVE').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr11, name, range(iocase_test_1, 10482, 18, 228, 228), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr12, name, range(iocase_test_1, 10527, 11, 229, 229), 'assertFalse').
name(q_sensitive_5, qualified_name, iocase_test_1_expr13, expression, range(iocase_test_1, 10539, 16, 229, 229), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 10539, 6, 229, 229), 'IOCase').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr13, name, range(iocase_test_1, 10556, 18, 229, 229), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr14, name, range(iocase_test_1, 10600, 11, 230, 230), 'assertFalse').
name(q_sensitive_5, qualified_name, iocase_test_1_expr15, expression, range(iocase_test_1, 10612, 16, 230, 230), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 10612, 6, 230, 230), 'IOCase').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr15, name, range(iocase_test_1, 10629, 18, 230, 230), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr16, name, range(iocase_test_1, 10676, 11, 231, 231), 'assertFalse').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 10688, 6, 231, 231), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr17, expression, range(iocase_test_1, 10688, 16, 231, 231), 'IOCase.SENSITIVE').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr17, name, range(iocase_test_1, 10705, 18, 231, 231), 'checkRegionMatches').
name(m_assert_true_108, simple_name, iocase_test_1_expr18, name, range(iocase_test_1, 10748, 10, 232, 232), 'assertTrue').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 10759, 6, 232, 232), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr19, expression, range(iocase_test_1, 10759, 16, 232, 232), 'IOCase.SENSITIVE').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr19, name, range(iocase_test_1, 10776, 18, 232, 232), 'checkRegionMatches').
name(m_assert_true_108, simple_name, iocase_test_1_expr20, name, range(iocase_test_1, 10817, 10, 234, 234), 'assertTrue').
name(q_sensitive_5, qualified_name, iocase_test_1_expr21, expression, range(iocase_test_1, 10828, 16, 234, 234), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 10828, 6, 234, 234), 'IOCase').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr21, name, range(iocase_test_1, 10845, 18, 234, 234), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr22, name, range(iocase_test_1, 10888, 11, 235, 235), 'assertFalse').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 10900, 6, 235, 235), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr23, expression, range(iocase_test_1, 10900, 16, 235, 235), 'IOCase.SENSITIVE').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr23, name, range(iocase_test_1, 10917, 18, 235, 235), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr24, name, range(iocase_test_1, 10961, 11, 236, 236), 'assertFalse').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 10973, 6, 236, 236), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr25, expression, range(iocase_test_1, 10973, 16, 236, 236), 'IOCase.SENSITIVE').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr25, name, range(iocase_test_1, 10990, 18, 236, 236), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr26, name, range(iocase_test_1, 11035, 11, 237, 237), 'assertFalse').
name(q_sensitive_5, qualified_name, iocase_test_1_expr27, expression, range(iocase_test_1, 11047, 16, 237, 237), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 11047, 6, 237, 237), 'IOCase').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr27, name, range(iocase_test_1, 11064, 18, 237, 237), 'checkRegionMatches').
name(m_assert_true_108, simple_name, iocase_test_1_expr28, name, range(iocase_test_1, 11110, 10, 238, 238), 'assertTrue').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 11121, 6, 238, 238), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr29, expression, range(iocase_test_1, 11121, 16, 238, 238), 'IOCase.SENSITIVE').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr29, name, range(iocase_test_1, 11138, 18, 238, 238), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr30, name, range(iocase_test_1, 11183, 11, 239, 239), 'assertFalse').
name(q_sensitive_5, qualified_name, iocase_test_1_expr31, expression, range(iocase_test_1, 11195, 16, 239, 239), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 11195, 6, 239, 239), 'IOCase').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr31, name, range(iocase_test_1, 11212, 18, 239, 239), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr32, name, range(iocase_test_1, 11256, 11, 240, 240), 'assertFalse').
name(q_sensitive_5, qualified_name, iocase_test_1_expr33, expression, range(iocase_test_1, 11268, 16, 240, 240), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 11268, 6, 240, 240), 'IOCase').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr33, name, range(iocase_test_1, 11285, 18, 240, 240), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr34, name, range(iocase_test_1, 11332, 11, 241, 241), 'assertFalse').
name(q_sensitive_5, qualified_name, iocase_test_1_expr35, expression, range(iocase_test_1, 11344, 16, 241, 241), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 11344, 6, 241, 241), 'IOCase').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr35, name, range(iocase_test_1, 11361, 18, 241, 241), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr36, name, range(iocase_test_1, 11404, 11, 242, 242), 'assertFalse').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 11416, 6, 242, 242), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr37, expression, range(iocase_test_1, 11416, 16, 242, 242), 'IOCase.SENSITIVE').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr37, name, range(iocase_test_1, 11433, 18, 242, 242), 'checkRegionMatches').
name(m_assert_false_109, simple_name, iocase_test_1_expr38, name, range(iocase_test_1, 11474, 11, 244, 244), 'assertFalse').
name(q_sensitive_5, qualified_name, iocase_test_1_expr39, expression, range(iocase_test_1, 11486, 16, 244, 244), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 11486, 6, 244, 244), 'IOCase').
name(m_check_region_matches_87, simple_name, iocase_test_1_expr39, name, range(iocase_test_1, 11503, 18, 244, 244), 'checkRegionMatches').
%filename_utils_1 - org.apache.commons.io.FilenameUtils
name(f_empty_string_array_48, simple_name, filename_utils_1_code10, name, range(filename_utils_1, 3694, 18, 100, 100), 'EMPTY_STRING_ARRAY').
name(f_extension_separator_str_49, simple_name, filename_utils_1_code16, name, range(filename_utils_1, 4055, 23, 116, 116), 'EXTENSION_SEPARATOR_STR').
name(t_character_7, simple_name, filename_utils_1_expr2, expression, range(filename_utils_1, 4081, 9, 116, 116), 'Character').
name(m_to_string_30, simple_name, filename_utils_1_expr2, name, range(filename_utils_1, 4091, 8, 116, 116), 'toString').
name(f_extension_separator_50, simple_name, filename_utils_1_expr2, (arguments, 0), range(filename_utils_1, 4100, 19, 116, 116), 'EXTENSION_SEPARATOR').
name(f_system_name_separator_51, simple_name, filename_utils_1_code22, name, range(filename_utils_1, 4437, 21, 131, 131), 'SYSTEM_NAME_SEPARATOR').
name(q_separator_char_3, qualified_name, filename_utils_1_code22, initializer, range(filename_utils_1, 4461, 18, 131, 131), 'File.separatorChar').
name(t_file_8, simple_name, q_separator_char_3, qualifier, range(filename_utils_1, 4461, 4, 131, 131), 'File').
name(f_other_separator_52, simple_name, filename_utils_1_code28, name, range(filename_utils_1, 4605, 15, 136, 136), 'OTHER_SEPARATOR').
name(m_flip_separator_13, simple_name, filename_utils_1_expr3, name, range(filename_utils_1, 4623, 13, 136, 136), 'flipSeparator').
name(f_system_name_separator_51, simple_name, filename_utils_1_expr3, (arguments, 0), range(filename_utils_1, 4637, 21, 136, 136), 'SYSTEM_NAME_SEPARATOR').
name(f_ipv4_pattern_53, simple_name, filename_utils_1_code34, name, range(filename_utils_1, 4695, 12, 138, 138), 'IPV4_PATTERN').
name(t_pattern_9, simple_name, filename_utils_1_expr4, expression, range(filename_utils_1, 4710, 7, 138, 138), 'Pattern').
name(m_compile_31, simple_name, filename_utils_1_expr4, name, range(filename_utils_1, 4718, 7, 138, 138), 'compile').
name(f_reg_name_part_pattern_54, simple_name, filename_utils_1_code40, name, range(filename_utils_1, 5097, 21, 150, 150), 'REG_NAME_PART_PATTERN').
name(t_pattern_9, simple_name, filename_utils_1_expr5, expression, range(filename_utils_1, 5121, 7, 150, 150), 'Pattern').
name(m_compile_31, simple_name, filename_utils_1_expr5, name, range(filename_utils_1, 5129, 7, 150, 150), 'compile').
name(p_ch_78, simple_name, filename_utils_1_expr6, left_operand, range(filename_utils_1, 19394, 2, 525, 525), 'ch').
name(f_unix_name_separator_79, simple_name, filename_utils_1_expr6, right_operand, range(filename_utils_1, 19400, 19, 525, 525), 'UNIX_NAME_SEPARATOR').
name(f_windows_name_separator_80, simple_name, filename_utils_1_stmt2, expression, range(filename_utils_1, 19442, 22, 526, 526), 'WINDOWS_NAME_SEPARATOR').
name(p_ch_78, simple_name, filename_utils_1_expr7, left_operand, range(filename_utils_1, 19488, 2, 528, 528), 'ch').
name(f_windows_name_separator_80, simple_name, filename_utils_1_expr7, right_operand, range(filename_utils_1, 19494, 22, 528, 528), 'WINDOWS_NAME_SEPARATOR').
name(f_unix_name_separator_79, simple_name, filename_utils_1_stmt4, expression, range(filename_utils_1, 19539, 19, 529, 529), 'UNIX_NAME_SEPARATOR').

%%% Literals
%file_system_1 - org.apache.commons.io.FileSystem
literal(file_system_1_literal1, number_literal, file_system_1_code4, (arguments, 0), range(file_system_1, 1375, 4, 39, 39), 4096).
literal(file_system_1_literal2, boolean_literal, file_system_1_code4, (arguments, 1), range(file_system_1, 1381, 5, 39, 39), false).
literal(file_system_1_literal3, boolean_literal, file_system_1_code4, (arguments, 2), range(file_system_1, 1388, 5, 39, 39), false).
literal(file_system_1_literal4, number_literal, file_system_1_expr2, (expressions, 0), range(file_system_1, 1445, 1, 39, 39), 0).
literal(file_system_1_literal5, boolean_literal, file_system_1_code4, (arguments, 7), range(file_system_1, 1467, 5, 39, 39), false).
literal(file_system_1_literal6, boolean_literal, file_system_1_code4, (arguments, 8), range(file_system_1, 1474, 5, 39, 39), false).
literal(file_system_1_literal7, character_literal, file_system_1_code4, (arguments, 9), range(file_system_1, 1481, 3, 39, 39), '/').
literal(file_system_1_literal8, number_literal, file_system_1_code11, (arguments, 0), range(file_system_1, 1540, 4, 44, 44), 8192).
literal(file_system_1_literal9, boolean_literal, file_system_1_code11, (arguments, 1), range(file_system_1, 1546, 4, 44, 44), true).
literal(file_system_1_literal10, boolean_literal, file_system_1_code11, (arguments, 2), range(file_system_1, 1552, 4, 44, 44), true).
literal(file_system_1_literal11, number_literal, file_system_1_code11, (arguments, 3), range(file_system_1, 1558, 3, 44, 44), 255).
literal(file_system_1_literal12, number_literal, file_system_1_code11, (arguments, 4), range(file_system_1, 1563, 4, 44, 44), 4096).
literal(file_system_1_literal13, number_literal, file_system_1_code15, (arguments, 0), range(file_system_1, 1835, 4, 56, 56), 4096).
literal(file_system_1_literal14, boolean_literal, file_system_1_code15, (arguments, 1), range(file_system_1, 1841, 4, 56, 56), true).
literal(file_system_1_literal15, boolean_literal, file_system_1_code15, (arguments, 2), range(file_system_1, 1847, 4, 56, 56), true).
literal(file_system_1_literal16, number_literal, file_system_1_code15, (arguments, 3), range(file_system_1, 1853, 3, 56, 56), 255).
literal(file_system_1_literal17, number_literal, file_system_1_code15, (arguments, 4), range(file_system_1, 1858, 4, 56, 56), 1024).
literal(file_system_1_literal18, number_literal, file_system_1_code19, (arguments, 0), range(file_system_1, 2680, 4, 79, 79), 4096).
literal(file_system_1_literal19, boolean_literal, file_system_1_code19, (arguments, 1), range(file_system_1, 2686, 5, 79, 79), false).
literal(file_system_1_literal20, boolean_literal, file_system_1_code19, (arguments, 2), range(file_system_1, 2693, 4, 79, 79), true).
literal(file_system_1_literal21, string_literal, file_system_1_expr9, (arguments, 0), range(file_system_1, 3750, 7, 102, 102), "Linux").
literal(file_system_1_literal22, string_literal, file_system_1_expr10, (arguments, 0), range(file_system_1, 4003, 5, 112, 112), "Mac").
literal(file_system_1_literal23, string_literal, file_system_1_expr14, (arguments, 0), range(file_system_1, 5392, 9, 169, 169), "os.name").
literal(file_system_1_literal24, null_literal, file_system_1_expr16, right_operand, range(file_system_1, 9848, 4, 282, 282), null).
literal(file_system_1_literal25, string_literal, file_system_1_expr31, (arguments, 1), range(file_system_1, 12204, 22, 332, 332), "illegalFileNameChars").
literal(file_system_1_literal26, string_literal, file_system_1_expr35, (arguments, 1), range(file_system_1, 12304, 19, 333, 333), "reservedFileNames").
%iocase_1 - org.apache.commons.io.IOCase
literal(iocase_1_literal1, string_literal, iocase_1_code4, (arguments, 0), range(iocase_1, 1559, 11, 45, 45), "Sensitive").
literal(iocase_1_literal2, boolean_literal, iocase_1_code4, (arguments, 1), range(iocase_1, 1572, 4, 45, 45), true).
literal(iocase_1_literal3, string_literal, iocase_1_code5, (arguments, 0), range(iocase_1, 1685, 13, 50, 50), "Insensitive").
literal(iocase_1_literal4, boolean_literal, iocase_1_code5, (arguments, 1), range(iocase_1, 1700, 5, 50, 50), false).
literal(iocase_1_literal5, string_literal, iocase_1_code6, (arguments, 0), range(iocase_1, 2412, 8, 66, 66), "System").
literal(iocase_1_literal6, number_literal, iocase_1_expr9, (arguments, 3), range(iocase_1, 7871, 1, 218, 218), 0).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
literal(iocase_test_1_literal1, character_literal, iocase_test_1_expr1, right_operand, range(iocase_test_1, 1488, 4, 39, 39), '\\').
literal(iocase_test_1_literal2, string_literal, iocase_test_1_expr3, (arguments, 0), range(iocase_test_1, 10210, 5, 224, 224), "ABC").
literal(iocase_test_1_literal3, number_literal, iocase_test_1_expr3, (arguments, 1), range(iocase_test_1, 10217, 1, 224, 224), 0).
literal(iocase_test_1_literal4, string_literal, iocase_test_1_expr3, (arguments, 2), range(iocase_test_1, 10220, 2, 224, 224), "").
literal(iocase_test_1_literal5, string_literal, iocase_test_1_expr5, (arguments, 0), range(iocase_test_1, 10281, 5, 225, 225), "ABC").
literal(iocase_test_1_literal6, number_literal, iocase_test_1_expr5, (arguments, 1), range(iocase_test_1, 10288, 1, 225, 225), 0).
literal(iocase_test_1_literal7, string_literal, iocase_test_1_expr5, (arguments, 2), range(iocase_test_1, 10291, 3, 225, 225), "A").
literal(iocase_test_1_literal8, string_literal, iocase_test_1_expr7, (arguments, 0), range(iocase_test_1, 10353, 5, 226, 226), "ABC").
literal(iocase_test_1_literal9, number_literal, iocase_test_1_expr7, (arguments, 1), range(iocase_test_1, 10360, 1, 226, 226), 0).
literal(iocase_test_1_literal10, string_literal, iocase_test_1_expr7, (arguments, 2), range(iocase_test_1, 10363, 4, 226, 226), "AB").
literal(iocase_test_1_literal11, string_literal, iocase_test_1_expr9, (arguments, 0), range(iocase_test_1, 10426, 5, 227, 227), "ABC").
literal(iocase_test_1_literal12, number_literal, iocase_test_1_expr9, (arguments, 1), range(iocase_test_1, 10433, 1, 227, 227), 0).
literal(iocase_test_1_literal13, string_literal, iocase_test_1_expr9, (arguments, 2), range(iocase_test_1, 10436, 5, 227, 227), "ABC").
literal(iocase_test_1_literal14, string_literal, iocase_test_1_expr11, (arguments, 0), range(iocase_test_1, 10501, 5, 228, 228), "ABC").
literal(iocase_test_1_literal15, number_literal, iocase_test_1_expr11, (arguments, 1), range(iocase_test_1, 10508, 1, 228, 228), 0).
literal(iocase_test_1_literal16, string_literal, iocase_test_1_expr11, (arguments, 2), range(iocase_test_1, 10511, 4, 228, 228), "BC").
literal(iocase_test_1_literal17, string_literal, iocase_test_1_expr13, (arguments, 0), range(iocase_test_1, 10575, 5, 229, 229), "ABC").
literal(iocase_test_1_literal18, number_literal, iocase_test_1_expr13, (arguments, 1), range(iocase_test_1, 10582, 1, 229, 229), 0).
literal(iocase_test_1_literal19, string_literal, iocase_test_1_expr13, (arguments, 2), range(iocase_test_1, 10585, 3, 229, 229), "C").
literal(iocase_test_1_literal20, string_literal, iocase_test_1_expr15, (arguments, 0), range(iocase_test_1, 10648, 5, 230, 230), "ABC").
literal(iocase_test_1_literal21, number_literal, iocase_test_1_expr15, (arguments, 1), range(iocase_test_1, 10655, 1, 230, 230), 0).
literal(iocase_test_1_literal22, string_literal, iocase_test_1_expr15, (arguments, 2), range(iocase_test_1, 10658, 6, 230, 230), "ABCD").
literal(iocase_test_1_literal23, string_literal, iocase_test_1_expr17, (arguments, 0), range(iocase_test_1, 10724, 2, 231, 231), "").
literal(iocase_test_1_literal24, number_literal, iocase_test_1_expr17, (arguments, 1), range(iocase_test_1, 10728, 1, 231, 231), 0).
literal(iocase_test_1_literal25, string_literal, iocase_test_1_expr17, (arguments, 2), range(iocase_test_1, 10731, 5, 231, 231), "ABC").
literal(iocase_test_1_literal26, string_literal, iocase_test_1_expr19, (arguments, 0), range(iocase_test_1, 10795, 2, 232, 232), "").
literal(iocase_test_1_literal27, number_literal, iocase_test_1_expr19, (arguments, 1), range(iocase_test_1, 10799, 1, 232, 232), 0).
literal(iocase_test_1_literal28, string_literal, iocase_test_1_expr19, (arguments, 2), range(iocase_test_1, 10802, 2, 232, 232), "").
literal(iocase_test_1_literal29, string_literal, iocase_test_1_expr21, (arguments, 0), range(iocase_test_1, 10864, 5, 234, 234), "ABC").
literal(iocase_test_1_literal30, number_literal, iocase_test_1_expr21, (arguments, 1), range(iocase_test_1, 10871, 1, 234, 234), 1).
literal(iocase_test_1_literal31, string_literal, iocase_test_1_expr21, (arguments, 2), range(iocase_test_1, 10874, 2, 234, 234), "").
literal(iocase_test_1_literal32, string_literal, iocase_test_1_expr23, (arguments, 0), range(iocase_test_1, 10936, 5, 235, 235), "ABC").
literal(iocase_test_1_literal33, number_literal, iocase_test_1_expr23, (arguments, 1), range(iocase_test_1, 10943, 1, 235, 235), 1).
literal(iocase_test_1_literal34, string_literal, iocase_test_1_expr23, (arguments, 2), range(iocase_test_1, 10946, 3, 235, 235), "A").
literal(iocase_test_1_literal35, string_literal, iocase_test_1_expr25, (arguments, 0), range(iocase_test_1, 11009, 5, 236, 236), "ABC").
literal(iocase_test_1_literal36, number_literal, iocase_test_1_expr25, (arguments, 1), range(iocase_test_1, 11016, 1, 236, 236), 1).
literal(iocase_test_1_literal37, string_literal, iocase_test_1_expr25, (arguments, 2), range(iocase_test_1, 11019, 4, 236, 236), "AB").
literal(iocase_test_1_literal38, string_literal, iocase_test_1_expr27, (arguments, 0), range(iocase_test_1, 11083, 5, 237, 237), "ABC").
literal(iocase_test_1_literal39, number_literal, iocase_test_1_expr27, (arguments, 1), range(iocase_test_1, 11090, 1, 237, 237), 1).
literal(iocase_test_1_literal40, string_literal, iocase_test_1_expr27, (arguments, 2), range(iocase_test_1, 11093, 5, 237, 237), "ABC").
literal(iocase_test_1_literal41, string_literal, iocase_test_1_expr29, (arguments, 0), range(iocase_test_1, 11157, 5, 238, 238), "ABC").
literal(iocase_test_1_literal42, number_literal, iocase_test_1_expr29, (arguments, 1), range(iocase_test_1, 11164, 1, 238, 238), 1).
literal(iocase_test_1_literal43, string_literal, iocase_test_1_expr29, (arguments, 2), range(iocase_test_1, 11167, 4, 238, 238), "BC").
literal(iocase_test_1_literal44, string_literal, iocase_test_1_expr31, (arguments, 0), range(iocase_test_1, 11231, 5, 239, 239), "ABC").
literal(iocase_test_1_literal45, number_literal, iocase_test_1_expr31, (arguments, 1), range(iocase_test_1, 11238, 1, 239, 239), 1).
literal(iocase_test_1_literal46, string_literal, iocase_test_1_expr31, (arguments, 2), range(iocase_test_1, 11241, 3, 239, 239), "C").
literal(iocase_test_1_literal47, string_literal, iocase_test_1_expr33, (arguments, 0), range(iocase_test_1, 11304, 5, 240, 240), "ABC").
literal(iocase_test_1_literal48, number_literal, iocase_test_1_expr33, (arguments, 1), range(iocase_test_1, 11311, 1, 240, 240), 1).
literal(iocase_test_1_literal49, string_literal, iocase_test_1_expr33, (arguments, 2), range(iocase_test_1, 11314, 6, 240, 240), "ABCD").
literal(iocase_test_1_literal50, string_literal, iocase_test_1_expr35, (arguments, 0), range(iocase_test_1, 11380, 2, 241, 241), "").
literal(iocase_test_1_literal51, number_literal, iocase_test_1_expr35, (arguments, 1), range(iocase_test_1, 11384, 1, 241, 241), 1).
literal(iocase_test_1_literal52, string_literal, iocase_test_1_expr35, (arguments, 2), range(iocase_test_1, 11387, 5, 241, 241), "ABC").
literal(iocase_test_1_literal53, string_literal, iocase_test_1_expr37, (arguments, 0), range(iocase_test_1, 11452, 2, 242, 242), "").
literal(iocase_test_1_literal54, number_literal, iocase_test_1_expr37, (arguments, 1), range(iocase_test_1, 11456, 1, 242, 242), 1).
literal(iocase_test_1_literal55, string_literal, iocase_test_1_expr37, (arguments, 2), range(iocase_test_1, 11459, 2, 242, 242), "").
literal(iocase_test_1_literal56, string_literal, iocase_test_1_expr39, (arguments, 0), range(iocase_test_1, 11522, 5, 244, 244), "ABC").
literal(iocase_test_1_literal57, number_literal, iocase_test_1_expr39, (arguments, 1), range(iocase_test_1, 11529, 1, 244, 244), 0).
literal(iocase_test_1_literal58, null_literal, iocase_test_1_expr39, (arguments, 2), range(iocase_test_1, 11532, 4, 244, 244), null).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
literal(filename_utils_1_literal1, string_literal, filename_utils_1_expr4, (arguments, 0), range(filename_utils_1, 4726, 53, 138, 138), "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$").
literal(filename_utils_1_literal2, string_literal, filename_utils_1_expr5, (arguments, 0), range(filename_utils_1, 5137, 28, 150, 150), "^[a-zA-Z0-9][a-zA-Z0-9-]*$").

%%% Other Code Entities
%file_system_1 - org.apache.commons.io.FileSystem
code(file_system_1_code1, compilation_unit, range(file_system_1, 0, 19186, 1, -1)).
code(file_system_1_code2, enum_declaration, file_system_1_code1, (types, 0), range(file_system_1, 913, 18272, 24, 527)).
code(file_system_1_code3, modifier, file_system_1_code2, (modifiers, 0), range(file_system_1, 1293, 6, 34, 34)).
code(file_system_1_code4, enum_constant_declaration, file_system_1_code2, (enum_constants, 0), range(file_system_1, 1323, 162, 36, 39)).
code(file_system_1_code5, array_type, file_system_1_expr1, type, range(file_system_1, 1437, 5, 39, 39)).
code(file_system_1_code6, primitive_type, file_system_1_code5, element_type, range(file_system_1, 1437, 3, 39, 39)).
code(file_system_1_code7, dimension, file_system_1_code5, (dimensions, 0), range(file_system_1, 1440, 2, 39, 39)).
code(file_system_1_code8, array_type, file_system_1_expr3, type, range(file_system_1, 1454, 8, 39, 39)).
code(file_system_1_code9, simple_type, file_system_1_code8, element_type, range(file_system_1, 1454, 6, 39, 39)).
code(file_system_1_code10, dimension, file_system_1_code8, (dimensions, 0), range(file_system_1, 1460, 2, 39, 39)).
code(file_system_1_code11, enum_constant_declaration, file_system_1_code2, (enum_constants, 1), range(file_system_1, 1492, 286, 41, 51)).
code(file_system_1_code12, array_type, file_system_1_expr5, type, range(file_system_1, 1573, 5, 44, 44)).
code(file_system_1_code13, primitive_type, file_system_1_code12, element_type, range(file_system_1, 1573, 3, 44, 44)).
code(file_system_1_code14, dimension, file_system_1_code12, (dimensions, 0), range(file_system_1, 1576, 2, 44, 44)).
code(file_system_1_code15, enum_constant_declaration, file_system_1_code2, (enum_constants, 2), range(file_system_1, 1785, 305, 53, 64)).
code(file_system_1_code17, primitive_type, file_system_1_code16, element_type, range(file_system_1, 1868, 3, 56, 56)).
code(file_system_1_code16, array_type, file_system_1_expr7, type, range(file_system_1, 1868, 5, 56, 56)).
code(file_system_1_code18, dimension, file_system_1_code16, (dimensions, 0), range(file_system_1, 1871, 2, 56, 56)).
code(file_system_1_code19, enum_constant_declaration, file_system_1_code2, (enum_constants, 3), range(file_system_1, 2097, 1404, 66, 92)).
code(file_system_1_code20, field_declaration, file_system_1_code2, (body_declarations, 0), range(file_system_1, 3508, 251, 94, 102)).
code(file_system_1_code21, modifier, file_system_1_code20, (modifiers, 0), range(file_system_1, 3690, 7, 102, 102)).
code(file_system_1_code22, modifier, file_system_1_code20, (modifiers, 1), range(file_system_1, 3698, 6, 102, 102)).
code(file_system_1_code23, modifier, file_system_1_code20, (modifiers, 2), range(file_system_1, 3705, 5, 102, 102)).
code(file_system_1_code24, primitive_type, file_system_1_code20, type, range(file_system_1, 3711, 7, 102, 102)).
code(file_system_1_code25, variable_declaration_fragment, file_system_1_code20, (fragments, 0), range(file_system_1, 3719, 39, 102, 102)).
code(file_system_1_code26, field_declaration, file_system_1_code2, (body_declarations, 1), range(file_system_1, 3765, 245, 104, 112)).
code(file_system_1_code27, modifier, file_system_1_code26, (modifiers, 0), range(file_system_1, 3945, 7, 112, 112)).
code(file_system_1_code28, modifier, file_system_1_code26, (modifiers, 1), range(file_system_1, 3953, 6, 112, 112)).
code(file_system_1_code29, modifier, file_system_1_code26, (modifiers, 2), range(file_system_1, 3960, 5, 112, 112)).
code(file_system_1_code30, primitive_type, file_system_1_code26, type, range(file_system_1, 3966, 7, 112, 112)).
code(file_system_1_code31, variable_declaration_fragment, file_system_1_code26, (fragments, 0), range(file_system_1, 3974, 35, 112, 112)).
code(file_system_1_code32, field_declaration, file_system_1_code2, (body_declarations, 3), range(file_system_1, 4146, 270, 119, 127)).
code(file_system_1_code33, modifier, file_system_1_code32, (modifiers, 0), range(file_system_1, 4330, 7, 127, 127)).
code(file_system_1_code34, modifier, file_system_1_code32, (modifiers, 1), range(file_system_1, 4338, 6, 127, 127)).
code(file_system_1_code35, modifier, file_system_1_code32, (modifiers, 2), range(file_system_1, 4345, 5, 127, 127)).
code(file_system_1_code36, primitive_type, file_system_1_code32, type, range(file_system_1, 4351, 7, 127, 127)).
code(file_system_1_code37, variable_declaration_fragment, file_system_1_code32, (fragments, 0), range(file_system_1, 4359, 56, 127, 127)).
code(file_system_1_code38, field_declaration, file_system_1_code2, (body_declarations, 4), range(file_system_1, 4422, 99, 129, 132)).
code(file_system_1_code39, modifier, file_system_1_code38, (modifiers, 0), range(file_system_1, 4469, 7, 132, 132)).
code(file_system_1_code40, modifier, file_system_1_code38, (modifiers, 1), range(file_system_1, 4477, 6, 132, 132)).
code(file_system_1_code41, modifier, file_system_1_code38, (modifiers, 2), range(file_system_1, 4484, 5, 132, 132)).
code(file_system_1_code42, simple_type, file_system_1_code38, type, range(file_system_1, 4490, 10, 132, 132)).
code(file_system_1_code43, variable_declaration_fragment, file_system_1_code38, (fragments, 0), range(file_system_1, 4501, 19, 132, 132)).
code(file_system_1_code44, method_declaration, file_system_1_code2, (body_declarations, 5), range(file_system_1, 4527, 359, 134, 150)).
code(file_system_1_code45, method_declaration, file_system_1_code2, (body_declarations, 6), range(file_system_1, 4892, 168, 152, 159)).
code(file_system_1_code46, method_declaration, file_system_1_code2, (body_declarations, 7), range(file_system_1, 5066, 358, 161, 170)).
code(file_system_1_code47, method_declaration, file_system_1_code2, (body_declarations, 8), range(file_system_1, 5430, 905, 172, 194)).
code(file_system_1_code48, method_declaration, file_system_1_code2, (body_declarations, 10), range(file_system_1, 9349, 646, 269, 286)).
code(file_system_1_code49, method_declaration, file_system_1_code2, (body_declarations, 23), range(file_system_1, 10859, 1812, 312, 340)).
code(file_system_1_code50, single_variable_declaration, file_system_1_code49, (parameters, 6), range(file_system_1, 11855, 32, 328, 328)).
code(file_system_1_code51, modifier, file_system_1_code50, (modifiers, 0), range(file_system_1, 11855, 5, 328, 328)).
code(file_system_1_code53, simple_type, file_system_1_code52, element_type, range(file_system_1, 11861, 6, 328, 328)).
code(file_system_1_code52, array_type, file_system_1_code50, type, range(file_system_1, 11861, 8, 328, 328)).
code(file_system_1_code54, dimension, file_system_1_code52, (dimensions, 0), range(file_system_1, 11867, 2, 328, 328)).
code(file_system_1_code55, single_variable_declaration, file_system_1_code49, (parameters, 7), range(file_system_1, 11889, 41, 328, 328)).
code(file_system_1_code56, modifier, file_system_1_code55, (modifiers, 0), range(file_system_1, 11889, 5, 328, 328)).
code(file_system_1_code57, primitive_type, file_system_1_code55, type, range(file_system_1, 11895, 7, 328, 328)).
code(file_system_1_code58, single_variable_declaration, file_system_1_code49, (parameters, 8), range(file_system_1, 11932, 33, 328, 328)).
code(file_system_1_code59, modifier, file_system_1_code58, (modifiers, 0), range(file_system_1, 11932, 5, 328, 328)).
code(file_system_1_code60, primitive_type, file_system_1_code58, type, range(file_system_1, 11938, 7, 328, 328)).
code(file_system_1_code62, modifier, file_system_1_code61, (modifiers, 0), range(file_system_1, 11967, 5, 328, 328)).
code(file_system_1_code61, single_variable_declaration, file_system_1_code49, (parameters, 9), range(file_system_1, 11967, 24, 328, 328)).
code(file_system_1_code63, primitive_type, file_system_1_code61, type, range(file_system_1, 11973, 4, 328, 328)).
code(file_system_1_code64, method_declaration, file_system_1_code2, (body_declarations, 32), range(file_system_1, 14741, 209, 422, 429)).
%iocase_1 - org.apache.commons.io.IOCase
code(iocase_1_code1, compilation_unit, range(iocase_1, 0, 9305, 1, -1)).
code(iocase_1_code2, enum_declaration, iocase_1_code1, (types, 0), range(iocase_1, 894, 8410, 22, 274)).
code(iocase_1_code3, modifier, iocase_1_code2, (modifiers, 0), range(iocase_1, 1436, 6, 40, 40)).
code(iocase_1_code4, enum_constant_declaration, iocase_1_code2, (enum_constants, 0), range(iocase_1, 1462, 115, 42, 45)).
code(iocase_1_code5, enum_constant_declaration, iocase_1_code2, (enum_constants, 1), range(iocase_1, 1584, 122, 47, 50)).
code(iocase_1_code6, enum_constant_declaration, iocase_1_code2, (enum_constants, 2), range(iocase_1, 1713, 751, 52, 66)).
code(iocase_1_code7, method_declaration, iocase_1_code2, (body_declarations, 6), range(iocase_1, 3927, 249, 112, 121)).
code(iocase_1_code9, modifier, iocase_1_code8, (modifiers, 0), range(iocase_1, 4063, 5, 118, 118)).
code(iocase_1_code8, single_variable_declaration, iocase_1_code7, (parameters, 0), range(iocase_1, 4063, 17, 118, 118)).
code(iocase_1_code10, simple_type, iocase_1_code8, type, range(iocase_1, 4069, 6, 118, 118)).
code(iocase_1_code12, modifier, iocase_1_code11, (modifiers, 0), range(iocase_1, 4082, 5, 118, 118)).
code(iocase_1_code11, single_variable_declaration, iocase_1_code7, (parameters, 1), range(iocase_1, 4082, 23, 118, 118)).
code(iocase_1_code13, primitive_type, iocase_1_code11, type, range(iocase_1, 4088, 7, 118, 118)).
code(iocase_1_code14, method_declaration, iocase_1_code2, (body_declarations, 11), range(iocase_1, 7136, 761, 204, 219)).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
code(iocase_test_1_code1, compilation_unit, range(iocase_test_1, 0, 15905, 1, -1)).
code(iocase_test_1_code2, type_declaration, iocase_test_1_code1, (types, 0), range(iocase_test_1, 1363, 14541, 34, 357)).
code(iocase_test_1_code3, modifier, iocase_test_1_code2, (modifiers, 0), range(iocase_test_1, 1396, 6, 37, 37)).
code(iocase_test_1_code5, modifier, iocase_test_1_code4, (modifiers, 0), range(iocase_test_1, 1427, 7, 39, 39)).
code(iocase_test_1_code4, field_declaration, iocase_test_1_code2, (body_declarations, 0), range(iocase_test_1, 1427, 66, 39, 39)).
code(iocase_test_1_code6, modifier, iocase_test_1_code4, (modifiers, 1), range(iocase_test_1, 1435, 6, 39, 39)).
code(iocase_test_1_code7, modifier, iocase_test_1_code4, (modifiers, 2), range(iocase_test_1, 1442, 5, 39, 39)).
code(iocase_test_1_code8, primitive_type, iocase_test_1_code4, type, range(iocase_test_1, 1448, 7, 39, 39)).
code(iocase_test_1_code9, variable_declaration_fragment, iocase_test_1_code4, (fragments, 0), range(iocase_test_1, 1456, 36, 39, 39)).
code(iocase_test_1_code10, method_declaration, iocase_test_1_code2, (body_declarations, 13), range(iocase_test_1, 10091, 1822, 222, 250)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
code(filename_utils_1_code1, compilation_unit, range(filename_utils_1, 0, 65815, 1, -1)).
code(filename_utils_1_code2, type_declaration, filename_utils_1_code1, (types, 0), range(filename_utils_1, 1111, 64703, 30, 1683)).
code(filename_utils_1_code3, field_declaration, filename_utils_1_code2, (body_declarations, 0), range(filename_utils_1, 3664, 54, 100, 100)).
code(filename_utils_1_code4, modifier, filename_utils_1_code3, (modifiers, 0), range(filename_utils_1, 3664, 7, 100, 100)).
code(filename_utils_1_code5, modifier, filename_utils_1_code3, (modifiers, 1), range(filename_utils_1, 3672, 6, 100, 100)).
code(filename_utils_1_code6, modifier, filename_utils_1_code3, (modifiers, 2), range(filename_utils_1, 3679, 5, 100, 100)).
code(filename_utils_1_code8, simple_type, filename_utils_1_code7, element_type, range(filename_utils_1, 3685, 6, 100, 100)).
code(filename_utils_1_code7, array_type, filename_utils_1_code3, type, range(filename_utils_1, 3685, 8, 100, 100)).
code(filename_utils_1_code9, dimension, filename_utils_1_code7, (dimensions, 0), range(filename_utils_1, 3691, 2, 100, 100)).
code(filename_utils_1_code10, variable_declaration_fragment, filename_utils_1_code3, (fragments, 0), range(filename_utils_1, 3694, 23, 100, 100)).
code(filename_utils_1_code11, field_declaration, filename_utils_1_code2, (body_declarations, 4), range(filename_utils_1, 3955, 166, 112, 116)).
code(filename_utils_1_code12, modifier, filename_utils_1_code11, (modifiers, 0), range(filename_utils_1, 4028, 6, 116, 116)).
code(filename_utils_1_code13, modifier, filename_utils_1_code11, (modifiers, 1), range(filename_utils_1, 4035, 6, 116, 116)).
code(filename_utils_1_code14, modifier, filename_utils_1_code11, (modifiers, 2), range(filename_utils_1, 4042, 5, 116, 116)).
code(filename_utils_1_code15, simple_type, filename_utils_1_code11, type, range(filename_utils_1, 4048, 6, 116, 116)).
code(filename_utils_1_code16, variable_declaration_fragment, filename_utils_1_code11, (fragments, 0), range(filename_utils_1, 4055, 65, 116, 116)).
code(filename_utils_1_code17, field_declaration, filename_utils_1_code2, (body_declarations, 7), range(filename_utils_1, 4356, 124, 128, 131)).
code(filename_utils_1_code18, modifier, filename_utils_1_code17, (modifiers, 0), range(filename_utils_1, 4411, 7, 131, 131)).
code(filename_utils_1_code19, modifier, filename_utils_1_code17, (modifiers, 1), range(filename_utils_1, 4419, 6, 131, 131)).
code(filename_utils_1_code20, modifier, filename_utils_1_code17, (modifiers, 2), range(filename_utils_1, 4426, 5, 131, 131)).
code(filename_utils_1_code21, primitive_type, filename_utils_1_code17, type, range(filename_utils_1, 4432, 4, 131, 131)).
code(filename_utils_1_code22, variable_declaration_fragment, filename_utils_1_code17, (fragments, 0), range(filename_utils_1, 4437, 42, 131, 131)).
code(filename_utils_1_code23, field_declaration, filename_utils_1_code2, (body_declarations, 8), range(filename_utils_1, 4486, 174, 133, 136)).
code(filename_utils_1_code24, modifier, filename_utils_1_code23, (modifiers, 0), range(filename_utils_1, 4579, 7, 136, 136)).
code(filename_utils_1_code25, modifier, filename_utils_1_code23, (modifiers, 1), range(filename_utils_1, 4587, 6, 136, 136)).
code(filename_utils_1_code26, modifier, filename_utils_1_code23, (modifiers, 2), range(filename_utils_1, 4594, 5, 136, 136)).
code(filename_utils_1_code27, primitive_type, filename_utils_1_code23, type, range(filename_utils_1, 4600, 4, 136, 136)).
code(filename_utils_1_code28, variable_declaration_fragment, filename_utils_1_code23, (fragments, 0), range(filename_utils_1, 4605, 54, 136, 136)).
code(filename_utils_1_code30, modifier, filename_utils_1_code29, (modifiers, 0), range(filename_utils_1, 4666, 7, 138, 138)).
code(filename_utils_1_code29, field_declaration, filename_utils_1_code2, (body_declarations, 9), range(filename_utils_1, 4666, 115, 138, 138)).
code(filename_utils_1_code31, modifier, filename_utils_1_code29, (modifiers, 1), range(filename_utils_1, 4674, 6, 138, 138)).
code(filename_utils_1_code32, modifier, filename_utils_1_code29, (modifiers, 2), range(filename_utils_1, 4681, 5, 138, 138)).
code(filename_utils_1_code33, simple_type, filename_utils_1_code29, type, range(filename_utils_1, 4687, 7, 138, 138)).
code(filename_utils_1_code34, variable_declaration_fragment, filename_utils_1_code29, (fragments, 0), range(filename_utils_1, 4695, 85, 138, 138)).
code(filename_utils_1_code36, modifier, filename_utils_1_code35, (modifiers, 0), range(filename_utils_1, 5068, 7, 150, 150)).
code(filename_utils_1_code35, field_declaration, filename_utils_1_code2, (body_declarations, 15), range(filename_utils_1, 5068, 99, 150, 150)).
code(filename_utils_1_code37, modifier, filename_utils_1_code35, (modifiers, 1), range(filename_utils_1, 5076, 6, 150, 150)).
code(filename_utils_1_code38, modifier, filename_utils_1_code35, (modifiers, 2), range(filename_utils_1, 5083, 5, 150, 150)).
code(filename_utils_1_code39, simple_type, filename_utils_1_code35, type, range(filename_utils_1, 5089, 7, 150, 150)).
code(filename_utils_1_code40, variable_declaration_fragment, filename_utils_1_code35, (fragments, 0), range(filename_utils_1, 5097, 69, 150, 150)).
code(filename_utils_1_code41, method_declaration, filename_utils_1_code2, (body_declarations, 26), range(filename_utils_1, 19145, 494, 518, 532)).

%%% Name References

name_ref(t_character_7, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_file_8, type, 'File', 'Ljava/io/File;').
name_ref(t_file_system_1, type, 'FileSystem', 'Lorg/apache/commons/io/FileSystem;').
name_ref(t_filename_utils_6, type, 'FilenameUtils', 'Lorg/apache/commons/io/FilenameUtils;').
name_ref(t_integer_2, type, 'Integer', 'Ljava/lang/Integer;').
name_ref(t_iocase_10, type, 'IOCase', 'Lorg/apache/commons/io/IOCase;').
name_ref(t_iocase_test_11, type, 'IOCaseTest', 'Lorg/apache/commons/io/IOCaseTest;').
name_ref(t_locale_4, type, 'Locale', 'Ljava/util/Locale;').
name_ref(t_objects_5, type, 'Objects', 'Ljava/util/Objects;').
name_ref(t_pattern_9, type, 'Pattern', 'Ljava/util/regex/Pattern;').
name_ref(t_system_3, type, 'System', 'Ljava/lang/System;').
name_ref(p_arr_151, param, 'arr', 'Lorg/apache/commons/io/IOCaseTest;.assert0([B)V#arr#0#0').
name_ref(p_arr_152, param, 'arr', 'Lorg/apache/commons/io/IOCaseTest;.assert0([C)V#arr#0#0').
name_ref(p_base_path_55, param, 'basePath', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#basePath#0#0').
name_ref(p_block_size_20, param, 'blockSize', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#blockSize#0#0').
name_ref(p_c_41, param, 'c', 'Lorg/apache/commons/io/FileSystem;.isIllegalFileNameChar(I)Z#c#0#0').
name_ref(p_candidate_42, param, 'candidate', 'Lorg/apache/commons/io/FileSystem;.isLegalFileName(Ljava/lang/CharSequence;)Z#candidate#0#0').
name_ref(p_candidate_43, param, 'candidate', 'Lorg/apache/commons/io/FileSystem;.isReservedFileName(Ljava/lang/CharSequence;)Z#candidate#0#0').
name_ref(p_candidate_45, param, 'candidate', 'Lorg/apache/commons/io/FileSystem;.toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;#candidate#0#0').
name_ref(p_canonical_child_58, param, 'canonicalChild', 'Lorg/apache/commons/io/FilenameUtils;.directoryContains(Ljava/lang/String;Ljava/lang/String;)Z#canonicalChild#0#1').
name_ref(p_canonical_parent_57, param, 'canonicalParent', 'Lorg/apache/commons/io/FilenameUtils;.directoryContains(Ljava/lang/String;Ljava/lang/String;)Z#canonicalParent#0#0').
name_ref(p_case_preserving_22, param, 'casePreserving', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#casePreserving#0#2').
name_ref(p_case_sensitive_21, param, 'caseSensitive', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#caseSensitive#0#1').
name_ref(p_ch_103, param, 'ch', 'Lorg/apache/commons/io/FilenameUtils;.isSeparator(C)Z#ch#0#0').
name_ref(p_ch_78, param, 'ch', 'Lorg/apache/commons/io/FilenameUtils;.flipSeparator(C)C#ch#0#0').
name_ref(p_cs_12, param, 'cs', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I#cs#0#0').
name_ref(p_cs_47, param, 'cs', 'Lorg/apache/commons/io/FileSystem;.trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;#cs#0#0').
name_ref(p_default_value_131, param, 'defaultValue', 'Lorg/apache/commons/io/IOCase;.value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;#defaultValue#0#1').
name_ref(p_end_139, param, 'end', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z#end#0#1').
name_ref(p_extension_97, param, 'extension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z#extension#0#1').
name_ref(p_extensions_95, param, 'extensions', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Z#extensions#0#1').
name_ref(p_extensions_99, param, 'extensions', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z#extensions#0#1').
name_ref(p_file_name1_66, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name1_68, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#fileName1#0#0').
name_ref(p_file_name1_72, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name1_74, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name1_76, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name2_67, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name2_69, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#fileName2#0#1').
name_ref(p_file_name2_73, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name2_75, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name2_77, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name_105, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_106, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;Z)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_108, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_109, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_111, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.removeExtension(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_118, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_name_120, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z#fileName#0#0').
name_ref(p_file_name_123, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_name_59, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_61, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.doGetPath(Ljava/lang/String;I)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_63, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_81, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getAdsCriticalOffset(Ljava/lang/String;)I#fileName#0#0').
name_ref(p_file_name_82, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getBaseName(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_83, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getExtension(Ljava/lang/String;)Ljava/lang/String;|Ljava/lang/IllegalArgumentException;#fileName#0#0').
name_ref(p_file_name_84, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getFullPath(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_85, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_86, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getName(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_87, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPath(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_88, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_89, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPrefix(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_90, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPrefixLength(Ljava/lang/String;)I#fileName#0#0').
name_ref(p_file_name_91, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.indexOfExtension(Ljava/lang/String;)I|Ljava/lang/IllegalArgumentException;#fileName#0#0').
name_ref(p_file_name_92, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.indexOfLastSeparator(Ljava/lang/String;)I#fileName#0#0').
name_ref(p_file_name_94, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Z#fileName#0#0').
name_ref(p_file_name_96, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_name_98, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_full_file_name_to_add_56, param, 'fullFileNameToAdd', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#fullFileNameToAdd#0#1').
name_ref(p_illegal_file_name_chars_25, param, 'illegalFileNameChars', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#illegalFileNameChars#0#5').
name_ref(p_include_separator_60, param, 'includeSeparator', 'Lorg/apache/commons/io/FilenameUtils;.doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;#includeSeparator#0#1').
name_ref(p_inet_6address_101, param, 'inet6Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv6Address(Ljava/lang/String;)Z#inet6Address#0#0').
name_ref(p_io_case_122, param, 'ioCase', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z#ioCase#0#2').
name_ref(p_io_case_129, param, 'ioCase', 'Lorg/apache/commons/io/IOCase;.isCaseSensitive(Lorg/apache/commons/io/IOCase;)Z#ioCase#0#0').
name_ref(p_io_case_71, param, 'ioCase', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#ioCase#0#3').
name_ref(p_keep_separator_65, param, 'keepSeparator', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;#keepSeparator#0#2').
name_ref(p_max_file_length_23, param, 'maxFileLength', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#maxFileLength#0#3').
name_ref(p_max_path_length_24, param, 'maxPathLength', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#maxPathLength#0#4').
name_ref(p_name_100, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isIPv4Address(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_102, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isRFC3986HostName(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_104, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isValidHostName(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_128, param, 'name', 'Lorg/apache/commons/io/IOCase;.forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;#name#0#0').
name_ref(p_name_132, param, 'name', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V#name#0#0').
name_ref(p_name_separator_29, param, 'nameSeparator', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#nameSeparator#0#9').
name_ref(p_new_char_19, param, 'newChar', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;#newChar#0#2').
name_ref(p_normalize_70, param, 'normalize', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#normalize#0#2').
name_ref(p_old_char_18, param, 'oldChar', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;#oldChar#0#1').
name_ref(p_os_name_15, param, 'osName', 'Lorg/apache/commons/io/FileSystem;.isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z#osName#0#0').
name_ref(p_os_name_prefix_10, param, 'osNamePrefix', 'Lorg/apache/commons/io/FileSystem;.getOsMatchesName(Ljava/lang/String;)Z#osNamePrefix#0#0').
name_ref(p_os_name_prefix_16, param, 'osNamePrefix', 'Lorg/apache/commons/io/FileSystem;.isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z#osNamePrefix#0#1').
name_ref(p_path_112, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.requireNonNullChars(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_113, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_114, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_115, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_17, param, 'path', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;#path#0#0').
name_ref(p_path_44, param, 'path', 'Lorg/apache/commons/io/FileSystem;.normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_property_11, param, 'property', 'Lorg/apache/commons/io/FileSystem;.getSystemProperty(Ljava/lang/String;)Ljava/lang/String;#property#0#0').
name_ref(p_replacement_46, param, 'replacement', 'Lorg/apache/commons/io/FileSystem;.toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;#replacement#0#1').
name_ref(p_reserved_file_names_26, param, 'reservedFileNames', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#reservedFileNames#0#6').
name_ref(p_reserved_file_names_extensions_27, param, 'reservedFileNamesExtensions', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#reservedFileNamesExtensions#0#7').
name_ref(p_search_144, param, 'search', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#search#0#2').
name_ref(p_search_147, param, 'search', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#search#0#2').
name_ref(p_search_char_13, param, 'searchChar', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I#searchChar#0#1').
name_ref(p_sensitive_133, param, 'sensitive', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V#sensitive#0#1').
name_ref(p_separator_64, param, 'separator', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_add_62, param, 'separatorAdd', 'Lorg/apache/commons/io/FilenameUtils;.doGetPath(Ljava/lang/String;I)Ljava/lang/String;#separatorAdd#0#1').
name_ref(p_start_14, param, 'start', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I#start#0#2').
name_ref(p_start_149, param, 'start', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z#start#0#1').
name_ref(p_str_138, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_142, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#str#0#0').
name_ref(p_str_145, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#str#0#0').
name_ref(p_str_148, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_1_136, param, 'str1', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I#str1#0#0').
name_ref(p_str_1_140, param, 'str1', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z#str1#0#0').
name_ref(p_str_2_137, param, 'str2', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I#str2#0#1').
name_ref(p_str_2_141, param, 'str2', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z#str2#0#1').
name_ref(p_str_start_index_143, param, 'strStartIndex', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#strStartIndex#0#1').
name_ref(p_str_start_index_146, param, 'strStartIndex', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#strStartIndex#0#1').
name_ref(p_string_93, param, 'string', 'Lorg/apache/commons/io/FilenameUtils;.isEmpty(Ljava/lang/String;)Z#string#0#0').
name_ref(p_supports_drive_letter_28, param, 'supportsDriveLetter', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#supportsDriveLetter#0#8').
name_ref(p_text_116, param, 'text', 'Lorg/apache/commons/io/FilenameUtils;.splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;#text#0#0').
name_ref(p_unix_separator_107, param, 'unixSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;Z)Ljava/lang/String;#unixSeparator#0#1').
name_ref(p_unix_separator_110, param, 'unixSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;#unixSeparator#0#1').
name_ref(p_unix_separator_117, param, 'unixSeparator', 'Lorg/apache/commons/io/FilenameUtils;.toSeparator(Z)C#unixSeparator#0#0').
name_ref(p_value_130, param, 'value', 'Lorg/apache/commons/io/IOCase;.value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;#value#0#0').
name_ref(p_value_153, param, 'value', 'Lorg/apache/commons/io/IOCaseTest;.serialize(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;|Ljava/lang/Exception;#value#0#0').
name_ref(p_wildcard_matcher_119, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z#wildcardMatcher#0#1').
name_ref(p_wildcard_matcher_121, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z#wildcardMatcher#0#1').
name_ref(p_wildcard_matcher_124, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#wildcardMatcher#0#1').
name_ref(f_block_size_30, field, 'blockSize', 'Lorg/apache/commons/io/FileSystem;.blockSize)I').
name_ref(f_case_preserving_37, field, 'casePreserving', 'Lorg/apache/commons/io/FileSystem;.casePreserving)Z').
name_ref(f_case_sensitive_36, field, 'caseSensitive', 'Lorg/apache/commons/io/FileSystem;.caseSensitive)Z').
name_ref(f_current_9, field, 'CURRENT', 'Lorg/apache/commons/io/FileSystem;.CURRENT)Lorg/apache/commons/io/FileSystem;').
name_ref(f_empty_string_array_48, field, 'EMPTY_STRING_ARRAY', 'Lorg/apache/commons/io/FilenameUtils;.EMPTY_STRING_ARRAY)[Ljava/lang/String;').
name_ref(f_extension_separator_50, field, 'EXTENSION_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.EXTENSION_SEPARATOR)C').
name_ref(f_extension_separator_str_49, field, 'EXTENSION_SEPARATOR_STR', 'Lorg/apache/commons/io/FilenameUtils;.EXTENSION_SEPARATOR_STR)Ljava/lang/String;').
name_ref(f_generic_1, field, 'GENERIC', 'Lorg/apache/commons/io/FileSystem;.GENERIC)Lorg/apache/commons/io/FileSystem;').
name_ref(f_illegal_file_name_chars_33, field, 'illegalFileNameChars', 'Lorg/apache/commons/io/FileSystem;.illegalFileNameChars)[I').
name_ref(f_insensitive_126, field, 'INSENSITIVE', 'Lorg/apache/commons/io/IOCase;.INSENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(f_ipv4_pattern_53, field, 'IPV4_PATTERN', 'Lorg/apache/commons/io/FilenameUtils;.IPV4_PATTERN)Ljava/util/regex/Pattern;').
name_ref(f_is_os_linux_5, field, 'IS_OS_LINUX', 'Lorg/apache/commons/io/FileSystem;.IS_OS_LINUX)Z').
name_ref(f_is_os_mac_6, field, 'IS_OS_MAC', 'Lorg/apache/commons/io/FileSystem;.IS_OS_MAC)Z').
name_ref(f_is_os_windows_7, field, 'IS_OS_WINDOWS', 'Lorg/apache/commons/io/FileSystem;.IS_OS_WINDOWS)Z').
name_ref(f_linux_2, field, 'LINUX', 'Lorg/apache/commons/io/FileSystem;.LINUX)Lorg/apache/commons/io/FileSystem;').
name_ref(f_mac_osx_3, field, 'MAC_OSX', 'Lorg/apache/commons/io/FileSystem;.MAC_OSX)Lorg/apache/commons/io/FileSystem;').
name_ref(f_max_file_name_length_31, field, 'maxFileNameLength', 'Lorg/apache/commons/io/FileSystem;.maxFileNameLength)I').
name_ref(f_max_path_length_32, field, 'maxPathLength', 'Lorg/apache/commons/io/FileSystem;.maxPathLength)I').
name_ref(f_name_134, field, 'name', 'Lorg/apache/commons/io/IOCase;.name)Ljava/lang/String;').
name_ref(f_name_separator_39, field, 'nameSeparator', 'Lorg/apache/commons/io/FileSystem;.nameSeparator)C').
name_ref(f_name_separator_other_40, field, 'nameSeparatorOther', 'Lorg/apache/commons/io/FileSystem;.nameSeparatorOther)C').
name_ref(f_os_name_windows_prefix_8, field, 'OS_NAME_WINDOWS_PREFIX', 'Lorg/apache/commons/io/FileSystem;.OS_NAME_WINDOWS_PREFIX)Ljava/lang/String;').
name_ref(f_other_separator_52, field, 'OTHER_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.OTHER_SEPARATOR)C').
name_ref(f_reg_name_part_pattern_54, field, 'REG_NAME_PART_PATTERN', 'Lorg/apache/commons/io/FilenameUtils;.REG_NAME_PART_PATTERN)Ljava/util/regex/Pattern;').
name_ref(f_reserved_file_names_34, field, 'reservedFileNames', 'Lorg/apache/commons/io/FileSystem;.reservedFileNames)[Ljava/lang/String;').
name_ref(f_reserved_file_names_extensions_35, field, 'reservedFileNamesExtensions', 'Lorg/apache/commons/io/FileSystem;.reservedFileNamesExtensions)Z').
name_ref(f_sensitive_125, field, 'SENSITIVE', 'Lorg/apache/commons/io/IOCase;.SENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(f_sensitive_135, field, 'sensitive', 'Lorg/apache/commons/io/IOCase;.sensitive)Z').
name_ref(f_supports_drive_letter_38, field, 'supportsDriveLetter', 'Lorg/apache/commons/io/FileSystem;.supportsDriveLetter)Z').
name_ref(f_system_127, field, 'SYSTEM', 'Lorg/apache/commons/io/IOCase;.SYSTEM)Lorg/apache/commons/io/IOCase;').
name_ref(f_system_name_separator_51, field, 'SYSTEM_NAME_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.SYSTEM_NAME_SEPARATOR)C').
name_ref(f_unix_name_separator_79, field, 'UNIX_NAME_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.UNIX_NAME_SEPARATOR)C').
name_ref(f_windows_150, field, 'WINDOWS', 'Lorg/apache/commons/io/IOCaseTest;.WINDOWS)Z').
name_ref(f_windows_4, field, 'WINDOWS', 'Lorg/apache/commons/io/FileSystem;.WINDOWS)Lorg/apache/commons/io/FileSystem;').
name_ref(f_windows_name_separator_80, field, 'WINDOWS_NAME_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.WINDOWS_NAME_SEPARATOR)C').
name_ref(m_assert_0_95, method, 'assert0', 'Lorg/apache/commons/io/IOCaseTest;.assert0([B)V').
name_ref(m_assert_0_96, method, 'assert0', 'Lorg/apache/commons/io/IOCaseTest;.assert0([C)V').
name_ref(m_assert_false_109, method, 'assertFalse', 'Lorg/junit/jupiter/api/Assertions;.assertFalse(Z)V').
name_ref(m_assert_true_108, method, 'assertTrue', 'Lorg/junit/jupiter/api/Assertions;.assertTrue(Z)V').
name_ref(m_check_compare_to_83, method, 'checkCompareTo', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I').
name_ref(m_check_ends_with_84, method, 'checkEndsWith', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_check_equals_85, method, 'checkEquals', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_check_index_of_86, method, 'checkIndexOf', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I').
name_ref(m_check_region_matches_87, method, 'checkRegionMatches', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z').
name_ref(m_check_starts_with_90, method, 'checkStartsWith', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_compile_31, method, 'compile', 'Ljava/util/regex/Pattern;.compile(Ljava/lang/String;)Ljava/util/regex/Pattern;').
name_ref(m_concat_32, method, 'concat', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_current_2, method, 'current', 'Lorg/apache/commons/io/FileSystem;.current()Lorg/apache/commons/io/FileSystem;').
name_ref(m_directory_contains_33, method, 'directoryContains', 'Lorg/apache/commons/io/FilenameUtils;.directoryContains(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_do_get_full_path_34, method, 'doGetFullPath', 'Lorg/apache/commons/io/FilenameUtils;.doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_do_get_path_35, method, 'doGetPath', 'Lorg/apache/commons/io/FilenameUtils;.doGetPath(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_do_normalize_36, method, 'doNormalize', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;').
name_ref(m_equals_37, method, 'equals', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_38, method, 'equals', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z').
name_ref(m_equals_normalized_39, method, 'equalsNormalized', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_normalized_on_system_40, method, 'equalsNormalizedOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_on_system_41, method, 'equalsOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_file_system_11, method, 'FileSystem', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V').
name_ref(m_filename_utils_78, method, 'FilenameUtils', 'Lorg/apache/commons/io/FilenameUtils;.()V').
name_ref(m_flip_separator_13, method, 'flipSeparator', 'Lorg/apache/commons/io/FilenameUtils;.flipSeparator(C)C').
name_ref(m_for_name_79, method, 'forName', 'Lorg/apache/commons/io/IOCase;.forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;').
name_ref(m_get_ads_critical_offset_42, method, 'getAdsCriticalOffset', 'Lorg/apache/commons/io/FilenameUtils;.getAdsCriticalOffset(Ljava/lang/String;)I').
name_ref(m_get_base_name_43, method, 'getBaseName', 'Lorg/apache/commons/io/FilenameUtils;.getBaseName(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_block_size_14, method, 'getBlockSize', 'Lorg/apache/commons/io/FileSystem;.getBlockSize()I').
name_ref(m_get_current_3, method, 'getCurrent', 'Lorg/apache/commons/io/FileSystem;.getCurrent()Lorg/apache/commons/io/FileSystem;').
name_ref(m_get_extension_44, method, 'getExtension', 'Lorg/apache/commons/io/FilenameUtils;.getExtension(Ljava/lang/String;)Ljava/lang/String;|Ljava/lang/IllegalArgumentException;').
name_ref(m_get_full_path_45, method, 'getFullPath', 'Lorg/apache/commons/io/FilenameUtils;.getFullPath(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_full_path_no_end_separator_46, method, 'getFullPathNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_illegal_file_name_chars_15, method, 'getIllegalFileNameChars', 'Lorg/apache/commons/io/FileSystem;.getIllegalFileNameChars()[C').
name_ref(m_get_illegal_file_name_code_points_16, method, 'getIllegalFileNameCodePoints', 'Lorg/apache/commons/io/FileSystem;.getIllegalFileNameCodePoints()[I').
name_ref(m_get_max_file_name_length_17, method, 'getMaxFileNameLength', 'Lorg/apache/commons/io/FileSystem;.getMaxFileNameLength()I').
name_ref(m_get_max_path_length_18, method, 'getMaxPathLength', 'Lorg/apache/commons/io/FileSystem;.getMaxPathLength()I').
name_ref(m_get_name_47, method, 'getName', 'Lorg/apache/commons/io/FilenameUtils;.getName(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_name_91, method, 'getName', 'Lorg/apache/commons/io/IOCase;.getName()Ljava/lang/String;').
name_ref(m_get_name_separator_19, method, 'getNameSeparator', 'Lorg/apache/commons/io/FileSystem;.getNameSeparator()C').
name_ref(m_get_os_matches_name_1, method, 'getOsMatchesName', 'Lorg/apache/commons/io/FileSystem;.getOsMatchesName(Ljava/lang/String;)Z').
name_ref(m_get_path_48, method, 'getPath', 'Lorg/apache/commons/io/FilenameUtils;.getPath(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_path_no_end_separator_49, method, 'getPathNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_prefix_50, method, 'getPrefix', 'Lorg/apache/commons/io/FilenameUtils;.getPrefix(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_prefix_length_51, method, 'getPrefixLength', 'Lorg/apache/commons/io/FilenameUtils;.getPrefixLength(Ljava/lang/String;)I').
name_ref(m_get_property_6, method, 'getProperty', 'Ljava/lang/System;.getProperty(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_reserved_file_names_20, method, 'getReservedFileNames', 'Lorg/apache/commons/io/FileSystem;.getReservedFileNames()[Ljava/lang/String;').
name_ref(m_get_system_property_5, method, 'getSystemProperty', 'Lorg/apache/commons/io/FileSystem;.getSystemProperty(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_index_of_7, method, 'indexOf', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I').
name_ref(m_index_of_extension_52, method, 'indexOfExtension', 'Lorg/apache/commons/io/FilenameUtils;.indexOfExtension(Ljava/lang/String;)I|Ljava/lang/IllegalArgumentException;').
name_ref(m_index_of_last_separator_53, method, 'indexOfLastSeparator', 'Lorg/apache/commons/io/FilenameUtils;.indexOfLastSeparator(Ljava/lang/String;)I').
name_ref(m_iocase_82, method, 'IOCase', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V').
name_ref(m_is_case_preserving_21, method, 'isCasePreserving', 'Lorg/apache/commons/io/FileSystem;.isCasePreserving()Z').
name_ref(m_is_case_sensitive_22, method, 'isCaseSensitive', 'Lorg/apache/commons/io/FileSystem;.isCaseSensitive()Z').
name_ref(m_is_case_sensitive_80, method, 'isCaseSensitive', 'Lorg/apache/commons/io/IOCase;.isCaseSensitive(Lorg/apache/commons/io/IOCase;)Z').
name_ref(m_is_case_sensitive_92, method, 'isCaseSensitive', 'Lorg/apache/commons/io/IOCase;.isCaseSensitive()Z').
name_ref(m_is_empty_54, method, 'isEmpty', 'Lorg/apache/commons/io/FilenameUtils;.isEmpty(Ljava/lang/String;)Z').
name_ref(m_is_extension_55, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Z').
name_ref(m_is_extension_56, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_is_extension_57, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z').
name_ref(m_is_illegal_file_name_char_23, method, 'isIllegalFileNameChar', 'Lorg/apache/commons/io/FileSystem;.isIllegalFileNameChar(I)Z').
name_ref(m_is_ipv4_address_58, method, 'isIPv4Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv4Address(Ljava/lang/String;)Z').
name_ref(m_is_ipv6_address_59, method, 'isIPv6Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv6Address(Ljava/lang/String;)Z').
name_ref(m_is_legal_file_name_24, method, 'isLegalFileName', 'Lorg/apache/commons/io/FileSystem;.isLegalFileName(Ljava/lang/CharSequence;)Z').
name_ref(m_is_os_name_match_4, method, 'isOsNameMatch', 'Lorg/apache/commons/io/FileSystem;.isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_is_reserved_file_name_25, method, 'isReservedFileName', 'Lorg/apache/commons/io/FileSystem;.isReservedFileName(Ljava/lang/CharSequence;)Z').
name_ref(m_is_rfc3986host_name_60, method, 'isRFC3986HostName', 'Lorg/apache/commons/io/FilenameUtils;.isRFC3986HostName(Ljava/lang/String;)Z').
name_ref(m_is_separator_61, method, 'isSeparator', 'Lorg/apache/commons/io/FilenameUtils;.isSeparator(C)Z').
name_ref(m_is_system_windows_62, method, 'isSystemWindows', 'Lorg/apache/commons/io/FilenameUtils;.isSystemWindows()Z').
name_ref(m_is_valid_host_name_63, method, 'isValidHostName', 'Lorg/apache/commons/io/FilenameUtils;.isValidHostName(Ljava/lang/String;)Z').
name_ref(m_length_89, method, 'length', 'Ljava/lang/String;.length()I').
name_ref(m_normalize_64, method, 'normalize', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_normalize_65, method, 'normalize', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_normalize_no_end_separator_66, method, 'normalizeNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_normalize_no_end_separator_67, method, 'normalizeNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_normalize_separators_26, method, 'normalizeSeparators', 'Lorg/apache/commons/io/FileSystem;.normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_read_resolve_93, method, 'readResolve', 'Lorg/apache/commons/io/IOCase;.readResolve()Ljava/lang/Object;').
name_ref(m_region_matches_88, method, 'regionMatches', 'Ljava/lang/String;.regionMatches(ZILjava/lang/String;II)Z').
name_ref(m_remove_extension_68, method, 'removeExtension', 'Lorg/apache/commons/io/FilenameUtils;.removeExtension(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_replace_10, method, 'replace', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;').
name_ref(m_require_non_null_12, method, 'requireNonNull', 'Ljava/util/Objects;.requireNonNull<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;').
name_ref(m_require_non_null_chars_69, method, 'requireNonNullChars', 'Lorg/apache/commons/io/FilenameUtils;.requireNonNullChars(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_separators_to_system_70, method, 'separatorsToSystem', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_separators_to_unix_71, method, 'separatorsToUnix', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_separators_to_windows_72, method, 'separatorsToWindows', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_serialize_97, method, 'serialize', 'Lorg/apache/commons/io/IOCaseTest;.serialize(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;|Ljava/lang/Exception;').
name_ref(m_split_on_tokens_73, method, 'splitOnTokens', 'Lorg/apache/commons/io/FilenameUtils;.splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_starts_with_8, method, 'startsWith', 'Ljava/lang/String;.startsWith(Ljava/lang/String;)Z').
name_ref(m_supports_drive_letter_27, method, 'supportsDriveLetter', 'Lorg/apache/commons/io/FileSystem;.supportsDriveLetter()Z').
name_ref(m_test__serialization_120, method, 'test_serialization', 'Lorg/apache/commons/io/IOCaseTest;.test_serialization()V|Ljava/lang/Exception;').
name_ref(m_test_check_compare_case_98, method, 'test_checkCompare_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkCompare_case()V').
name_ref(m_test_check_compare_functionality_99, method, 'test_checkCompare_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkCompare_functionality()V').
name_ref(m_test_check_ends_with_case_100, method, 'test_checkEndsWith_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEndsWith_case()V').
name_ref(m_test_check_ends_with_functionality_101, method, 'test_checkEndsWith_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEndsWith_functionality()V').
name_ref(m_test_check_equals_case_102, method, 'test_checkEquals_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEquals_case()V').
name_ref(m_test_check_equals_functionality_103, method, 'test_checkEquals_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEquals_functionality()V').
name_ref(m_test_check_index_of_case_104, method, 'test_checkIndexOf_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkIndexOf_case()V').
name_ref(m_test_check_index_of_functionality_105, method, 'test_checkIndexOf_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkIndexOf_functionality()V').
name_ref(m_test_check_region_matches_case_106, method, 'test_checkRegionMatches_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkRegionMatches_case()V').
name_ref(m_test_check_region_matches_functionality_107, method, 'test_checkRegionMatches_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkRegionMatches_functionality()V').
name_ref(m_test_check_starts_with_case_110, method, 'test_checkStartsWith_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkStartsWith_case()V').
name_ref(m_test_check_starts_with_functionality_111, method, 'test_checkStartsWith_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkStartsWith_functionality()V').
name_ref(m_test_for_name_112, method, 'test_forName', 'Lorg/apache/commons/io/IOCaseTest;.test_forName()V').
name_ref(m_test_get_name_113, method, 'test_getName', 'Lorg/apache/commons/io/IOCaseTest;.test_getName()V').
name_ref(m_test_get_scratch_byte_array_114, method, 'test_getScratchByteArray', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchByteArray()V').
name_ref(m_test_get_scratch_byte_array_write_only_115, method, 'test_getScratchByteArrayWriteOnly', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchByteArrayWriteOnly()V').
name_ref(m_test_get_scratch_char_array_116, method, 'test_getScratchCharArray', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchCharArray()V').
name_ref(m_test_get_scratch_char_array_write_only_117, method, 'test_getScratchCharArrayWriteOnly', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchCharArrayWriteOnly()V').
name_ref(m_test_is_case_sensitive_118, method, 'test_isCaseSensitive', 'Lorg/apache/commons/io/IOCaseTest;.test_isCaseSensitive()V').
name_ref(m_test_is_case_sensitive_static_119, method, 'test_isCaseSensitive_static', 'Lorg/apache/commons/io/IOCaseTest;.test_isCaseSensitive_static()V').
name_ref(m_test_to_string_121, method, 'test_toString', 'Lorg/apache/commons/io/IOCaseTest;.test_toString()V').
name_ref(m_to_legal_file_name_28, method, 'toLegalFileName', 'Lorg/apache/commons/io/FileSystem;.toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;').
name_ref(m_to_separator_74, method, 'toSeparator', 'Lorg/apache/commons/io/FilenameUtils;.toSeparator(Z)C').
name_ref(m_to_string_30, method, 'toString', 'Ljava/lang/Character;.toString(C)Ljava/lang/String;').
name_ref(m_to_string_94, method, 'toString', 'Lorg/apache/commons/io/IOCase;.toString()Ljava/lang/String;').
name_ref(m_to_upper_case_9, method, 'toUpperCase', 'Ljava/lang/String;.toUpperCase(Ljava/util/Locale;)Ljava/lang/String;').
name_ref(m_trim_extension_29, method, 'trimExtension', 'Lorg/apache/commons/io/FileSystem;.trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;').
name_ref(m_value_81, method, 'value', 'Lorg/apache/commons/io/IOCase;.value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;').
name_ref(m_wildcard_match_75, method, 'wildcardMatch', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_wildcard_match_76, method, 'wildcardMatch', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z').
name_ref(m_wildcard_match_on_system_77, method, 'wildcardMatchOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(q_max_value_1, q_name, 'Integer.MAX_VALUE', 'Ljava/lang/Integer;:Ljava/lang/Integer;.MAX_VALUE)I').
name_ref(q_root_2, q_name, 'Locale.ROOT', 'Ljava/util/Locale;:Ljava/util/Locale;.ROOT)Ljava/util/Locale;').
name_ref(q_sensitive_4, q_name, 'IOCase.SENSITIVE', 'Lorg/apache/commons/io/IOCase;:Lorg/apache/commons/io/IOCase;.SENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(q_separator_char_3, q_name, 'File.separatorChar', 'Ljava/io/File;:Ljava/io/File;.separatorChar)C').

%%% End of Code Facts

