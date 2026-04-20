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
trace(trace_3, trace_2, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_4, trace_3, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_search_147, null, line(iocase_1, 218)).



%%% End of Facts