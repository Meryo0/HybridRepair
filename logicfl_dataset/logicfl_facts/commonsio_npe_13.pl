%%% Logic-FL Facts
:- style_check(-discontiguous).

%iocase_1 - org.apache.commons.io.IOCase
method_invoc(iocase_1_expr2, m_is_system_windows_2, line(iocase_1, 65)).
ref(t_filename_utils_5, iocase_1_expr2, line(iocase_1, 65)).
param(p_name_77, 1, m_for_name_48).
param(p_name_78, 1, m_iocase_49).
param(p_sensitive_79, 2, m_iocase_49).
assign(f_name_80, p_name_78, line(iocase_1, 99)).
assign(f_sensitive_81, p_sensitive_79, line(iocase_1, 100)).
param(p_str_1_82, 1, m_check_compare_to_53).
param(p_str_2_83, 2, m_check_compare_to_53).
param(p_str_1_84, 1, m_check_equals_54).
param(p_str_2_85, 2, m_check_equals_54).
param(p_str_86, 1, m_check_starts_with_55).
param(p_start_87, 2, m_check_starts_with_55).
return(iocase_1_expr9, m_check_starts_with_55, line(iocase_1, 180)).
method_invoc(iocase_1_expr9, m_region_matches_56, line(iocase_1, 180)).
argument(iocase_1_expr10, 1, iocase_1_expr9).
argument(iocase_1_literal6, 2, iocase_1_expr9).
argument(p_start_87, 3, iocase_1_expr9).
argument(iocase_1_literal7, 4, iocase_1_expr9).
argument(iocase_1_expr11, 5, iocase_1_expr9).
ref(p_str_86, iocase_1_expr9, line(iocase_1, 180)).
method_invoc(iocase_1_expr11, m_length_57, line(iocase_1, 180)).
ref(p_start_87, iocase_1_expr11, line(iocase_1, 180)).
param(p_str_88, 1, m_check_ends_with_58).
param(p_end_89, 2, m_check_ends_with_58).
assign(v_end_len_90, iocase_1_expr12, line(iocase_1, 196)).
method_invoc(iocase_1_expr12, m_length_57, line(iocase_1, 196)).
ref(p_end_89, iocase_1_expr12, line(iocase_1, 196)).
return(iocase_1_expr13, m_check_ends_with_58, line(iocase_1, 197)).
method_invoc(iocase_1_expr13, m_region_matches_56, line(iocase_1, 197)).
argument(iocase_1_expr14, 1, iocase_1_expr13).
argument(iocase_1_expr15, 2, iocase_1_expr13).
argument(p_end_89, 3, iocase_1_expr13).
argument(iocase_1_literal8, 4, iocase_1_expr13).
argument(v_end_len_90, 5, iocase_1_expr13).
ref(p_str_88, iocase_1_expr13, line(iocase_1, 197)).
method_invoc(iocase_1_expr16, m_length_57, line(iocase_1, 197)).
ref(p_str_88, iocase_1_expr16, line(iocase_1, 197)).
param(p_str_91, 1, m_check_index_of_59).
param(p_str_start_index_92, 2, m_check_index_of_59).
param(p_search_93, 3, m_check_index_of_59).
param(p_str_94, 1, m_check_region_matches_60).
param(p_str_start_index_95, 2, m_check_region_matches_60).
param(p_search_96, 3, m_check_region_matches_60).

%iocase_test_case_1 - org.apache.commons.io.IOCaseTestCase
assign(f_windows_97, iocase_test_case_1_expr1, line(iocase_test_case_1, 39)).
ref(t_file_2, q_separator_char_2, line(iocase_test_case_1, 39)).
throw(m_test_for_name_62, exception).
throw(m_test__serialization_63, exception).
throw(m_test_get_name_64, exception).
throw(m_test_to_string_65, exception).
throw(m_test_is_case_sensitive_66, exception).
throw(m_test_check_compare_functionality_67, exception).
throw(m_test_check_compare_case_68, exception).
throw(m_test_check_equals_functionality_69, exception).
throw(m_test_check_equals_case_70, exception).
throw(m_test_check_starts_with_functionality_71, exception).
method_invoc(iocase_test_case_1_expr2, m_assert_true_72, line(iocase_test_case_1, 166)).
argument(iocase_test_case_1_expr3, 1, iocase_test_case_1_expr2).
method_invoc(iocase_test_case_1_expr3, m_check_starts_with_55, line(iocase_test_case_1, 166)).
argument(iocase_test_case_1_literal2, 1, iocase_test_case_1_expr3).
argument(iocase_test_case_1_literal3, 2, iocase_test_case_1_expr3).
ref(f_sensitive_74, iocase_test_case_1_expr3, line(iocase_test_case_1, 166)).
ref(t_iocase_4, q_sensitive_2, line(iocase_test_case_1, 166)).
method_invoc(iocase_test_case_1_expr4, m_assert_true_72, line(iocase_test_case_1, 167)).
argument(iocase_test_case_1_expr5, 1, iocase_test_case_1_expr4).
method_invoc(iocase_test_case_1_expr5, m_check_starts_with_55, line(iocase_test_case_1, 167)).
argument(iocase_test_case_1_literal4, 1, iocase_test_case_1_expr5).
argument(iocase_test_case_1_literal5, 2, iocase_test_case_1_expr5).
ref(f_sensitive_74, iocase_test_case_1_expr5, line(iocase_test_case_1, 167)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 167)).
method_invoc(iocase_test_case_1_expr6, m_assert_true_72, line(iocase_test_case_1, 168)).
argument(iocase_test_case_1_expr7, 1, iocase_test_case_1_expr6).
method_invoc(iocase_test_case_1_expr7, m_check_starts_with_55, line(iocase_test_case_1, 168)).
argument(iocase_test_case_1_literal6, 1, iocase_test_case_1_expr7).
argument(iocase_test_case_1_literal7, 2, iocase_test_case_1_expr7).
ref(f_sensitive_74, iocase_test_case_1_expr7, line(iocase_test_case_1, 168)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 168)).
method_invoc(iocase_test_case_1_expr8, m_assert_true_72, line(iocase_test_case_1, 169)).
argument(iocase_test_case_1_expr9, 1, iocase_test_case_1_expr8).
method_invoc(iocase_test_case_1_expr9, m_check_starts_with_55, line(iocase_test_case_1, 169)).
argument(iocase_test_case_1_literal8, 1, iocase_test_case_1_expr9).
argument(iocase_test_case_1_literal9, 2, iocase_test_case_1_expr9).
ref(f_sensitive_74, iocase_test_case_1_expr9, line(iocase_test_case_1, 169)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 169)).
method_invoc(iocase_test_case_1_expr10, m_assert_false_73, line(iocase_test_case_1, 170)).
argument(iocase_test_case_1_expr11, 1, iocase_test_case_1_expr10).
method_invoc(iocase_test_case_1_expr11, m_check_starts_with_55, line(iocase_test_case_1, 170)).
argument(iocase_test_case_1_literal10, 1, iocase_test_case_1_expr11).
argument(iocase_test_case_1_literal11, 2, iocase_test_case_1_expr11).
ref(f_sensitive_74, iocase_test_case_1_expr11, line(iocase_test_case_1, 170)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 170)).
method_invoc(iocase_test_case_1_expr12, m_assert_false_73, line(iocase_test_case_1, 171)).
argument(iocase_test_case_1_expr13, 1, iocase_test_case_1_expr12).
method_invoc(iocase_test_case_1_expr13, m_check_starts_with_55, line(iocase_test_case_1, 171)).
argument(iocase_test_case_1_literal12, 1, iocase_test_case_1_expr13).
argument(iocase_test_case_1_literal13, 2, iocase_test_case_1_expr13).
ref(f_sensitive_74, iocase_test_case_1_expr13, line(iocase_test_case_1, 171)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 171)).
method_invoc(iocase_test_case_1_expr14, m_assert_false_73, line(iocase_test_case_1, 172)).
argument(iocase_test_case_1_expr15, 1, iocase_test_case_1_expr14).
method_invoc(iocase_test_case_1_expr15, m_check_starts_with_55, line(iocase_test_case_1, 172)).
argument(iocase_test_case_1_literal14, 1, iocase_test_case_1_expr15).
argument(iocase_test_case_1_literal15, 2, iocase_test_case_1_expr15).
ref(f_sensitive_74, iocase_test_case_1_expr15, line(iocase_test_case_1, 172)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 172)).
method_invoc(iocase_test_case_1_expr16, m_assert_false_73, line(iocase_test_case_1, 173)).
argument(iocase_test_case_1_expr17, 1, iocase_test_case_1_expr16).
method_invoc(iocase_test_case_1_expr17, m_check_starts_with_55, line(iocase_test_case_1, 173)).
argument(iocase_test_case_1_literal16, 1, iocase_test_case_1_expr17).
argument(iocase_test_case_1_literal17, 2, iocase_test_case_1_expr17).
ref(f_sensitive_74, iocase_test_case_1_expr17, line(iocase_test_case_1, 173)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 173)).
method_invoc(iocase_test_case_1_expr18, m_assert_true_72, line(iocase_test_case_1, 174)).
argument(iocase_test_case_1_expr19, 1, iocase_test_case_1_expr18).
method_invoc(iocase_test_case_1_expr19, m_check_starts_with_55, line(iocase_test_case_1, 174)).
argument(iocase_test_case_1_literal18, 1, iocase_test_case_1_expr19).
argument(iocase_test_case_1_literal19, 2, iocase_test_case_1_expr19).
ref(f_sensitive_74, iocase_test_case_1_expr19, line(iocase_test_case_1, 174)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 174)).
method_invoc(iocase_test_case_1_expr20, m_assert_false_73, line(iocase_test_case_1, 176)).
argument(iocase_test_case_1_expr21, 1, iocase_test_case_1_expr20).
method_invoc(iocase_test_case_1_expr21, m_check_starts_with_55, line(iocase_test_case_1, 176)).
throw(iocase_test_case_1_expr21, null_pointer_exception, line(iocase_test_case_1, 176)).
argument(iocase_test_case_1_literal20, 1, iocase_test_case_1_expr21).
argument(iocase_test_case_1_literal21, 2, iocase_test_case_1_expr21).
ref(f_sensitive_74, iocase_test_case_1_expr21, line(iocase_test_case_1, 176)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 176)).
throw(m_test_check_starts_with_case_74, exception).
throw(m_test_check_ends_with_functionality_75, exception).
method_invoc(iocase_test_case_1_expr22, m_assert_true_72, line(iocase_test_case_1, 196)).
argument(iocase_test_case_1_expr23, 1, iocase_test_case_1_expr22).
method_invoc(iocase_test_case_1_expr23, m_check_ends_with_58, line(iocase_test_case_1, 196)).
argument(iocase_test_case_1_literal22, 1, iocase_test_case_1_expr23).
argument(iocase_test_case_1_literal23, 2, iocase_test_case_1_expr23).
ref(f_sensitive_74, iocase_test_case_1_expr23, line(iocase_test_case_1, 196)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 196)).
method_invoc(iocase_test_case_1_expr24, m_assert_false_73, line(iocase_test_case_1, 197)).
argument(iocase_test_case_1_expr25, 1, iocase_test_case_1_expr24).
method_invoc(iocase_test_case_1_expr25, m_check_ends_with_58, line(iocase_test_case_1, 197)).
argument(iocase_test_case_1_literal24, 1, iocase_test_case_1_expr25).
argument(iocase_test_case_1_literal25, 2, iocase_test_case_1_expr25).
ref(f_sensitive_74, iocase_test_case_1_expr25, line(iocase_test_case_1, 197)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 197)).
method_invoc(iocase_test_case_1_expr26, m_assert_false_73, line(iocase_test_case_1, 198)).
argument(iocase_test_case_1_expr27, 1, iocase_test_case_1_expr26).
method_invoc(iocase_test_case_1_expr27, m_check_ends_with_58, line(iocase_test_case_1, 198)).
argument(iocase_test_case_1_literal26, 1, iocase_test_case_1_expr27).
argument(iocase_test_case_1_literal27, 2, iocase_test_case_1_expr27).
ref(f_sensitive_74, iocase_test_case_1_expr27, line(iocase_test_case_1, 198)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 198)).
method_invoc(iocase_test_case_1_expr28, m_assert_true_72, line(iocase_test_case_1, 199)).
argument(iocase_test_case_1_expr29, 1, iocase_test_case_1_expr28).
method_invoc(iocase_test_case_1_expr29, m_check_ends_with_58, line(iocase_test_case_1, 199)).
argument(iocase_test_case_1_literal28, 1, iocase_test_case_1_expr29).
argument(iocase_test_case_1_literal29, 2, iocase_test_case_1_expr29).
ref(f_sensitive_74, iocase_test_case_1_expr29, line(iocase_test_case_1, 199)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 199)).
method_invoc(iocase_test_case_1_expr30, m_assert_true_72, line(iocase_test_case_1, 200)).
argument(iocase_test_case_1_expr31, 1, iocase_test_case_1_expr30).
method_invoc(iocase_test_case_1_expr31, m_check_ends_with_58, line(iocase_test_case_1, 200)).
argument(iocase_test_case_1_literal30, 1, iocase_test_case_1_expr31).
argument(iocase_test_case_1_literal31, 2, iocase_test_case_1_expr31).
ref(f_sensitive_74, iocase_test_case_1_expr31, line(iocase_test_case_1, 200)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 200)).
method_invoc(iocase_test_case_1_expr32, m_assert_true_72, line(iocase_test_case_1, 201)).
argument(iocase_test_case_1_expr33, 1, iocase_test_case_1_expr32).
method_invoc(iocase_test_case_1_expr33, m_check_ends_with_58, line(iocase_test_case_1, 201)).
argument(iocase_test_case_1_literal32, 1, iocase_test_case_1_expr33).
argument(iocase_test_case_1_literal33, 2, iocase_test_case_1_expr33).
ref(f_sensitive_74, iocase_test_case_1_expr33, line(iocase_test_case_1, 201)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 201)).
method_invoc(iocase_test_case_1_expr34, m_assert_false_73, line(iocase_test_case_1, 202)).
argument(iocase_test_case_1_expr35, 1, iocase_test_case_1_expr34).
method_invoc(iocase_test_case_1_expr35, m_check_ends_with_58, line(iocase_test_case_1, 202)).
argument(iocase_test_case_1_literal34, 1, iocase_test_case_1_expr35).
argument(iocase_test_case_1_literal35, 2, iocase_test_case_1_expr35).
ref(f_sensitive_74, iocase_test_case_1_expr35, line(iocase_test_case_1, 202)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 202)).
method_invoc(iocase_test_case_1_expr36, m_assert_false_73, line(iocase_test_case_1, 203)).
argument(iocase_test_case_1_expr37, 1, iocase_test_case_1_expr36).
method_invoc(iocase_test_case_1_expr37, m_check_ends_with_58, line(iocase_test_case_1, 203)).
argument(iocase_test_case_1_literal36, 1, iocase_test_case_1_expr37).
argument(iocase_test_case_1_literal37, 2, iocase_test_case_1_expr37).
ref(f_sensitive_74, iocase_test_case_1_expr37, line(iocase_test_case_1, 203)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 203)).
method_invoc(iocase_test_case_1_expr38, m_assert_true_72, line(iocase_test_case_1, 204)).
argument(iocase_test_case_1_expr39, 1, iocase_test_case_1_expr38).
method_invoc(iocase_test_case_1_expr39, m_check_ends_with_58, line(iocase_test_case_1, 204)).
argument(iocase_test_case_1_literal38, 1, iocase_test_case_1_expr39).
argument(iocase_test_case_1_literal39, 2, iocase_test_case_1_expr39).
ref(f_sensitive_74, iocase_test_case_1_expr39, line(iocase_test_case_1, 204)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 204)).
method_invoc(iocase_test_case_1_expr40, m_assert_false_73, line(iocase_test_case_1, 206)).
argument(iocase_test_case_1_expr41, 1, iocase_test_case_1_expr40).
method_invoc(iocase_test_case_1_expr41, m_check_ends_with_58, line(iocase_test_case_1, 206)).
throw(iocase_test_case_1_expr41, null_pointer_exception, line(iocase_test_case_1, 206)).
argument(iocase_test_case_1_literal40, 1, iocase_test_case_1_expr41).
argument(iocase_test_case_1_literal41, 2, iocase_test_case_1_expr41).
ref(f_sensitive_74, iocase_test_case_1_expr41, line(iocase_test_case_1, 206)).
ref(t_iocase_4, q_sensitive_3, line(iocase_test_case_1, 206)).
throw(m_test_check_ends_with_case_76, exception).
throw(m_test_check_index_of_functionality_77, exception).
throw(m_test_check_index_of_case_78, exception).
throw(m_test_check_region_matches_functionality_79, exception).
throw(m_test_check_region_matches_case_80, exception).
param(p_value_98, 1, m_serialize_81).
throw(m_serialize_81, exception).
throw(iocase_test_case_1_expr20, null_pointer_exception, line(iocase_test_case_1, 176)).
throw(iocase_test_case_1_expr40, null_pointer_exception, line(iocase_test_case_1, 206)).

%filename_utils_1 - org.apache.commons.io.FilenameUtils
assign(f_empty_string_array_1, filename_utils_1_expr1, line(filename_utils_1, 89)).
assign(f_extension_separator_str_2, filename_utils_1_expr2, line(filename_utils_1, 105)).
method_invoc(filename_utils_1_expr2, m_to_string_1, line(filename_utils_1, 105)).
argument(f_extension_separator_3, 1, filename_utils_1_expr2).
ref(t_character_1, filename_utils_1_expr2, line(filename_utils_1, 105)).
assign(f_system_separator_4, q_separator_char_1, line(filename_utils_1, 120)).
ref(t_file_2, q_separator_char_1, line(filename_utils_1, 120)).
method_invoc(filename_utils_1_expr3, m_is_system_windows_2, line(filename_utils_1, 127)).
assign(f_other_separator_5, f_windows_separator_6, line(filename_utils_1, 130)).
return(filename_utils_1_expr5, m_is_system_windows_2, line(filename_utils_1, 148)).
param(p_ch_7, 1, m_is_separator_4).
param(p_file_name_8, 1, m_normalize_5).
param(p_file_name_9, 1, m_normalize_6).
param(p_unix_separator_10, 2, m_normalize_6).
param(p_file_name_11, 1, m_normalize_no_end_separator_7).
param(p_file_name_12, 1, m_normalize_no_end_separator_8).
param(p_unix_separator_13, 2, m_normalize_no_end_separator_8).
param(p_file_name_14, 1, m_do_normalize_9).
param(p_separator_15, 2, m_do_normalize_9).
param(p_keep_separator_16, 3, m_do_normalize_9).
param(p_base_path_17, 1, m_concat_10).
param(p_full_file_name_to_add_18, 2, m_concat_10).
param(p_canonical_parent_19, 1, m_directory_contains_11).
param(p_canonical_child_20, 2, m_directory_contains_11).
throw(m_directory_contains_11, ioexception).
param(p_path_21, 1, m_separators_to_unix_12).
param(p_path_22, 1, m_separators_to_windows_13).
param(p_path_23, 1, m_separators_to_system_14).
param(p_file_name_24, 1, m_get_prefix_length_15).
param(p_file_name_25, 1, m_index_of_last_separator_16).
param(p_file_name_26, 1, m_index_of_extension_17).
throw(m_index_of_extension_17, illegal_argument_exception).
param(p_file_name_27, 1, m_get_prefix_18).
param(p_file_name_28, 1, m_get_path_19).
param(p_file_name_29, 1, m_get_path_no_end_separator_20).
param(p_file_name_30, 1, m_do_get_path_21).
param(p_separator_add_31, 2, m_do_get_path_21).
param(p_file_name_32, 1, m_get_full_path_22).
param(p_file_name_33, 1, m_get_full_path_no_end_separator_23).
param(p_file_name_34, 1, m_do_get_full_path_24).
param(p_include_separator_35, 2, m_do_get_full_path_24).
param(p_file_name_36, 1, m_get_name_25).
param(p_path_37, 1, m_fail_if_null_byte_present_26).
param(p_file_name_38, 1, m_get_base_name_27).
param(p_file_name_39, 1, m_get_extension_28).
throw(m_get_extension_28, illegal_argument_exception).
param(p_file_name_40, 1, m_get_ads_critical_offset_29).
param(p_file_name_41, 1, m_remove_extension_30).
param(p_file_name1_42, 1, m_equals_31).
param(p_file_name2_43, 2, m_equals_31).
param(p_file_name1_44, 1, m_equals_on_system_32).
param(p_file_name2_45, 2, m_equals_on_system_32).
param(p_file_name1_46, 1, m_equals_normalized_33).
param(p_file_name2_47, 2, m_equals_normalized_33).
param(p_file_name1_48, 1, m_equals_normalized_on_system_34).
param(p_file_name2_49, 2, m_equals_normalized_on_system_34).
param(p_file_name1_50, 1, m_equals_35).
param(p_file_name2_51, 2, m_equals_35).
param(p_normalized_52, 3, m_equals_35).
param(p_case_sensitivity_53, 4, m_equals_35).
param(p_file_name_54, 1, m_is_extension_36).
param(p_extension_55, 2, m_is_extension_36).
param(p_file_name_56, 1, m_is_extension_37).
param(p_extensions_57, 2, m_is_extension_37).
param(p_file_name_58, 1, m_is_extension_38).
param(p_extensions_59, 2, m_is_extension_38).
param(p_file_name_60, 1, m_wildcard_match_39).
param(p_wildcard_matcher_61, 2, m_wildcard_match_39).
param(p_file_name_62, 1, m_wildcard_match_on_system_40).
param(p_wildcard_matcher_63, 2, m_wildcard_match_on_system_40).
param(p_file_name_64, 1, m_wildcard_match_41).
param(p_wildcard_matcher_65, 2, m_wildcard_match_41).
param(p_case_sensitivity_66, 3, m_wildcard_match_41).
param(p_text_67, 1, m_split_on_tokens_42).
param(p_name_68, 1, m_is_valid_host_name_43).
assign(f_ipv4_pattern_69, filename_utils_1_expr6, line(filename_utils_1, 1520)).
method_invoc(filename_utils_1_expr6, m_compile_44, line(filename_utils_1, 1521)).
argument(filename_utils_1_literal2, 1, filename_utils_1_expr6).
ref(t_pattern_3, filename_utils_1_expr6, line(filename_utils_1, 1521)).
param(p_name_70, 1, m_is_ipv4_address_45).
param(p_inet_6address_71, 1, m_is_ipv6_address_46).
assign(f_reg_name_part_pattern_72, filename_utils_1_expr7, line(filename_utils_1, 1626)).
method_invoc(filename_utils_1_expr7, m_compile_44, line(filename_utils_1, 1626)).
argument(filename_utils_1_literal3, 1, filename_utils_1_expr7).
ref(t_pattern_3, filename_utils_1_expr7, line(filename_utils_1, 1626)).
param(p_name_73, 1, m_is_rfc3986host_name_47).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.IOCaseTestCase', 'test_checkStartsWith_functionality').
trace(trace_1, failure_1, m_check_starts_with_55, line(iocase_1, 180), failure_1, target).
trace(trace_2, trace_1, m_test_check_starts_with_functionality_71, line(iocase_test_case_1, 176), failure_1, target).
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
test_failure(failure_2, 'org.apache.commons.io.IOCaseTestCase', 'test_checkEndsWith_functionality').
trace(trace_65, failure_2, m_check_ends_with_58, line(iocase_1, 196), failure_2, target).
trace(trace_66, trace_65, m_test_check_ends_with_functionality_75, line(iocase_test_case_1, 206), failure_2, target).
trace(trace_67, trace_66, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_2, non_target).
trace(trace_68, trace_67, 'invoke', line(java_lang_reflect_method, 578), failure_2, non_target).
trace(trace_69, trace_68, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_2, non_target).
trace(trace_70, trace_69, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_2, non_target).
trace(trace_71, trace_70, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_2, non_target).
trace(trace_72, trace_71, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_2, non_target).
trace(trace_73, trace_72, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_2, non_target).
trace(trace_74, trace_73, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_2, non_target).
trace(trace_75, trace_74, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_2, non_target).
trace(trace_76, trace_75, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_2, non_target).
trace(trace_77, trace_76, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_2, non_target).
trace(trace_78, trace_77, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_2, non_target).
trace(trace_79, trace_78, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_2, non_target).
trace(trace_80, trace_79, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_2, non_target).
trace(trace_81, trace_80, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_2, non_target).
trace(trace_82, trace_81, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_2, non_target).
trace(trace_83, trace_82, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_2, non_target).
trace(trace_84, trace_83, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_85, trace_84, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_2, non_target).
trace(trace_86, trace_85, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_2, non_target).
trace(trace_87, trace_86, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_2, non_target).
trace(trace_88, trace_87, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_2, non_target).
trace(trace_89, trace_88, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_90, trace_89, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_2, non_target).
trace(trace_91, trace_90, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_2, non_target).
trace(trace_92, trace_91, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_2, non_target).
trace(trace_93, trace_92, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_94, trace_93, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_2, non_target).
trace(trace_95, trace_94, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_2, non_target).
trace(trace_96, trace_95, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).
trace(trace_97, trace_96, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_2, non_target).
trace(trace_98, trace_97, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_2, non_target).
trace(trace_99, trace_98, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_100, trace_99, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_2, non_target).
trace(trace_101, trace_100, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_2, non_target).
trace(trace_102, trace_101, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_2, non_target).
trace(trace_103, trace_102, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_104, trace_103, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_2, non_target).
trace(trace_105, trace_104, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_2, non_target).
trace(trace_106, trace_105, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).
trace(trace_107, trace_106, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_2, non_target).
trace(trace_108, trace_107, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_2, non_target).
trace(trace_109, trace_108, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_110, trace_109, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_2, non_target).
trace(trace_111, trace_110, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_2, non_target).
trace(trace_112, trace_111, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_2, non_target).
trace(trace_113, trace_112, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_114, trace_113, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_2, non_target).
trace(trace_115, trace_114, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_2, non_target).
trace(trace_116, trace_115, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_2, non_target).
trace(trace_117, trace_116, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_2, non_target).
trace(trace_118, trace_117, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_2, non_target).
trace(trace_119, trace_118, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_2, non_target).
trace(trace_120, trace_119, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_2, non_target).
trace(trace_121, trace_120, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_2, non_target).
trace(trace_122, trace_121, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_2, non_target).
trace(trace_123, trace_122, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_2, non_target).
trace(trace_124, trace_123, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_2, non_target).
trace(trace_125, trace_124, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_2, non_target).
trace(trace_126, trace_125, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_2, non_target).
trace(trace_127, trace_126, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_2, non_target).
trace(trace_128, trace_127, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(p_start_87, null, line(iocase_1, 180)).
val(p_end_89, null, line(iocase_1, 196)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(iocase_1, 'org.apache.commons.io.IOCase').
class(iocase_test_case_1, 'org.apache.commons.io.IOCaseTestCase').
class(filename_utils_1, 'org.apache.commons.io.FilenameUtils').

%%% Methods
%iocase_1 - org.apache.commons.io.IOCase
method(m_for_name_48, range(iocase_1, 2688, 500, 76, 90)).
method(m_iocase_49, range(iocase_1, 3194, 247, 92, 101)).
method(m_read_resolve_50, range(iocase_1, 3447, 250, 103, 111)).
method(m_get_name_51, range(iocase_1, 3703, 153, 113, 120)).
method(m_is_case_sensitive_52, range(iocase_1, 3862, 187, 122, 129)).
method(m_check_compare_to_53, range(iocase_1, 4055, 679, 131, 147)).
method(m_check_equals_54, range(iocase_1, 4740, 671, 149, 165)).
method(m_check_starts_with_55, range(iocase_1, 5417, 606, 167, 181)).
method(m_check_ends_with_58, range(iocase_1, 6029, 637, 183, 198)).
method(m_check_index_of_59, range(iocase_1, 6672, 1034, 200, 226)).
method(m_check_region_matches_60, range(iocase_1, 7712, 756, 228, 243)).
method(m_to_string_61, range(iocase_1, 8474, 190, 245, 253)).
%iocase_test_case_1 - org.apache.commons.io.IOCaseTestCase
method(m_test_for_name_62, range(iocase_test_case_1, 1574, 522, 42, 55)).
method(m_test__serialization_63, range(iocase_test_case_1, 2102, 266, 57, 62)).
method(m_test_get_name_64, range(iocase_test_case_1, 2374, 248, 64, 69)).
method(m_test_to_string_65, range(iocase_test_case_1, 2628, 252, 71, 76)).
method(m_test_is_case_sensitive_66, range(iocase_test_case_1, 2886, 249, 78, 83)).
method(m_test_check_compare_functionality_67, range(iocase_test_case_1, 3218, 937, 85, 106)).
method(m_test_check_compare_case_68, range(iocase_test_case_1, 4161, 738, 108, 121)).
method(m_test_check_equals_functionality_69, range(iocase_test_case_1, 4984, 1077, 125, 149)).
method(m_test_check_equals_case_70, range(iocase_test_case_1, 6067, 466, 151, 161)).
method(m_test_check_starts_with_functionality_71, range(iocase_test_case_1, 6617, 886, 164, 179)).
method(m_test_check_starts_with_case_74, range(iocase_test_case_1, 7509, 488, 181, 191)).
method(m_test_check_ends_with_functionality_75, range(iocase_test_case_1, 8081, 860, 194, 209)).
method(m_test_check_ends_with_case_76, range(iocase_test_case_1, 8947, 474, 211, 221)).
method(m_test_check_index_of_functionality_77, range(iocase_test_case_1, 9505, 2730, 224, 275)).
method(m_test_check_index_of_case_78, range(iocase_test_case_1, 12241, 520, 277, 287)).
method(m_test_check_region_matches_functionality_79, range(iocase_test_case_1, 12845, 2319, 290, 336)).
method(m_test_check_region_matches_case_80, range(iocase_test_case_1, 15170, 527, 338, 348)).
method(m_serialize_81, range(iocase_test_case_1, 15781, 479, 351, 361)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
method(m_filename_utils_3, range(filename_utils_1, 4721, 131, 134, 139)).
method(m_is_system_windows_2, range(filename_utils_1, 4936, 214, 142, 149)).
method(m_is_separator_4, range(filename_utils_1, 5234, 283, 152, 160)).
method(m_normalize_5, range(filename_utils_1, 5601, 1917, 163, 205)).
method(m_normalize_6, range(filename_utils_1, 7523, 2202, 206, 253)).
method(m_normalize_no_end_separator_7, range(filename_utils_1, 9809, 1977, 256, 299)).
method(m_normalize_no_end_separator_8, range(filename_utils_1, 11792, 2160, 301, 347)).
method(m_do_normalize_9, range(filename_utils_1, 13958, 3682, 349, 451)).
method(m_concat_10, range(filename_utils_1, 17724, 2673, 454, 514)).
method(m_directory_contains_11, range(filename_utils_1, 20403, 1510, 516, 556)).
method(m_separators_to_unix_12, range(filename_utils_1, 21997, 422, 559, 570)).
method(m_separators_to_windows_13, range(filename_utils_1, 22425, 421, 572, 583)).
method(m_separators_to_system_14, range(filename_utils_1, 22852, 384, 585, 596)).
method(m_get_prefix_length_15, range(filename_utils_1, 23320, 4070, 599, 692)).
method(m_index_of_last_separator_16, range(filename_utils_1, 27396, 874, 694, 713)).
method(m_index_of_extension_17, range(filename_utils_1, 28276, 2123, 715, 751)).
method(m_get_prefix_18, range(filename_utils_1, 30483, 1924, 754, 798)).
method(m_get_path_19, range(filename_utils_1, 32413, 1029, 800, 825)).
method(m_get_path_no_end_separator_20, range(filename_utils_1, 33448, 1096, 827, 853)).
method(m_do_get_path_21, range(filename_utils_1, 34550, 860, 855, 878)).
method(m_get_full_path_22, range(filename_utils_1, 35416, 1047, 880, 907)).
method(m_get_full_path_no_end_separator_23, range(filename_utils_1, 36469, 1097, 909, 937)).
method(m_do_get_full_path_24, range(filename_utils_1, 37572, 973, 939, 969)).
method(m_get_name_25, range(filename_utils_1, 38551, 945, 971, 996)).
method(m_fail_if_null_byte_present_26, range(filename_utils_1, 39502, 643, 998, 1012)).
method(m_get_base_name_27, range(filename_utils_1, 40151, 830, 1014, 1034)).
method(m_get_extension_28, range(filename_utils_1, 40987, 1735, 1036, 1073)).
method(m_get_ads_critical_offset_29, range(filename_utils_1, 42728, 676, 1075, 1095)).
method(m_remove_extension_30, range(filename_utils_1, 43488, 933, 1098, 1126)).
method(m_equals_31, range(filename_utils_1, 44505, 606, 1129, 1142)).
method(m_equals_on_system_32, range(filename_utils_1, 45117, 649, 1144, 1157)).
method(m_equals_normalized_33, range(filename_utils_1, 45850, 636, 1160, 1173)).
method(m_equals_normalized_on_system_34, range(filename_utils_1, 46492, 719, 1175, 1190)).
method(m_equals_35, range(filename_utils_1, 47217, 1242, 1192, 1224)).
method(m_is_extension_36, range(filename_utils_1, 48543, 1061, 1227, 1250)).
method(m_is_extension_37, range(filename_utils_1, 49610, 1197, 1252, 1280)).
method(m_is_extension_38, range(filename_utils_1, 50813, 1204, 1282, 1310)).
method(m_wildcard_match_39, range(filename_utils_1, 52101, 1168, 1313, 1337)).
method(m_wildcard_match_on_system_40, range(filename_utils_1, 53275, 1207, 1339, 1363)).
method(m_wildcard_match_41, range(filename_utils_1, 54488, 3662, 1365, 1459)).
method(m_split_on_tokens_42, range(filename_utils_1, 58156, 1444, 1461, 1502)).
method(m_is_valid_host_name_43, range(filename_utils_1, 59606, 588, 1504, 1518)).
method(m_is_ipv4_address_45, range(filename_utils_1, 60386, 954, 1524, 1552)).
method(m_is_ipv6_address_46, range(filename_utils_1, 61664, 2669, 1560, 1624)).
method(m_is_rfc3986host_name_47, range(filename_utils_1, 64444, 800, 1628, 1648)).

%%% Blocks
%iocase_1 - org.apache.commons.io.IOCase
block(iocase_1_block1, block, iocase_1_code7, body, range(iocase_1, 3372, 69, 98, 101)).
block(iocase_1_block2, block, iocase_1_code14, body, range(iocase_1, 5941, 82, 179, 181)).
block(iocase_1_block3, block, iocase_1_code15, body, range(iocase_1, 6533, 133, 195, 198)).
%iocase_test_case_1 - org.apache.commons.io.IOCaseTestCase
block(iocase_test_case_1_block1, block, iocase_test_case_1_code10, body, range(iocase_test_case_1, 6693, 810, 165, 179)).
block(iocase_test_case_1_block2, block, iocase_test_case_1_code11, body, range(iocase_test_case_1, 8155, 786, 195, 209)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
block(filename_utils_1_block1, block, filename_utils_1_code26, body, range(filename_utils_1, 4553, 162, 126, 132)).
block(filename_utils_1_block2, block, filename_utils_1_stmt1, then_statement, range(filename_utils_1, 4586, 57, 127, 129)).
block(filename_utils_1_block3, block, filename_utils_1_stmt1, else_statement, range(filename_utils_1, 4649, 60, 129, 131)).
block(filename_utils_1_block4, block, filename_utils_1_code27, body, range(filename_utils_1, 5089, 61, 147, 149)).

%%% Statements
%iocase_1 - org.apache.commons.io.IOCase
stmt(iocase_1_stmt1, expression_statement, iocase_1_block1, (statements, 0), range(iocase_1, 3382, 17, 99, 99)).
stmt(iocase_1_stmt2, expression_statement, iocase_1_block1, (statements, 1), range(iocase_1, 3408, 27, 100, 100)).
stmt(iocase_1_stmt3, return_statement, iocase_1_block2, (statements, 0), range(iocase_1, 5951, 66, 180, 180)).
stmt(iocase_1_stmt4, variable_declaration_statement, iocase_1_block3, (statements, 0), range(iocase_1, 6543, 32, 196, 196)).
stmt(iocase_1_stmt5, return_statement, iocase_1_block3, (statements, 1), range(iocase_1, 6584, 76, 197, 197)).
%iocase_test_case_1 - org.apache.commons.io.IOCaseTestCase
stmt(iocase_test_case_1_stmt1, expression_statement, iocase_test_case_1_block1, (statements, 0), range(iocase_test_case_1, 6703, 56, 166, 166)).
stmt(iocase_test_case_1_stmt2, expression_statement, iocase_test_case_1_block1, (statements, 1), range(iocase_test_case_1, 6768, 57, 167, 167)).
stmt(iocase_test_case_1_stmt3, expression_statement, iocase_test_case_1_block1, (statements, 2), range(iocase_test_case_1, 6834, 58, 168, 168)).
stmt(iocase_test_case_1_stmt4, expression_statement, iocase_test_case_1_block1, (statements, 3), range(iocase_test_case_1, 6901, 59, 169, 169)).
stmt(iocase_test_case_1_stmt5, expression_statement, iocase_test_case_1_block1, (statements, 4), range(iocase_test_case_1, 6969, 59, 170, 170)).
stmt(iocase_test_case_1_stmt6, expression_statement, iocase_test_case_1_block1, (statements, 5), range(iocase_test_case_1, 7037, 58, 171, 171)).
stmt(iocase_test_case_1_stmt7, expression_statement, iocase_test_case_1_block1, (statements, 6), range(iocase_test_case_1, 7104, 61, 172, 172)).
stmt(iocase_test_case_1_stmt8, expression_statement, iocase_test_case_1_block1, (statements, 7), range(iocase_test_case_1, 7174, 57, 173, 173)).
stmt(iocase_test_case_1_stmt9, expression_statement, iocase_test_case_1_block1, (statements, 8), range(iocase_test_case_1, 7240, 53, 174, 174)).
stmt(iocase_test_case_1_stmt10, expression_statement, iocase_test_case_1_block1, (statements, 9), range(iocase_test_case_1, 7303, 59, 176, 176)).
stmt(iocase_test_case_1_stmt11, expression_statement, iocase_test_case_1_block2, (statements, 0), range(iocase_test_case_1, 8165, 54, 196, 196)).
stmt(iocase_test_case_1_stmt12, expression_statement, iocase_test_case_1_block2, (statements, 1), range(iocase_test_case_1, 8228, 56, 197, 197)).
stmt(iocase_test_case_1_stmt13, expression_statement, iocase_test_case_1_block2, (statements, 2), range(iocase_test_case_1, 8293, 57, 198, 198)).
stmt(iocase_test_case_1_stmt14, expression_statement, iocase_test_case_1_block2, (statements, 3), range(iocase_test_case_1, 8359, 57, 199, 199)).
stmt(iocase_test_case_1_stmt15, expression_statement, iocase_test_case_1_block2, (statements, 4), range(iocase_test_case_1, 8425, 56, 200, 200)).
stmt(iocase_test_case_1_stmt16, expression_statement, iocase_test_case_1_block2, (statements, 5), range(iocase_test_case_1, 8490, 55, 201, 201)).
stmt(iocase_test_case_1_stmt17, expression_statement, iocase_test_case_1_block2, (statements, 6), range(iocase_test_case_1, 8554, 59, 202, 202)).
stmt(iocase_test_case_1_stmt18, expression_statement, iocase_test_case_1_block2, (statements, 7), range(iocase_test_case_1, 8622, 55, 203, 203)).
stmt(iocase_test_case_1_stmt19, expression_statement, iocase_test_case_1_block2, (statements, 8), range(iocase_test_case_1, 8686, 51, 204, 204)).
stmt(iocase_test_case_1_stmt20, expression_statement, iocase_test_case_1_block2, (statements, 9), range(iocase_test_case_1, 8747, 57, 206, 206)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
stmt(filename_utils_1_stmt1, if_statement, filename_utils_1_block1, (statements, 0), range(filename_utils_1, 4563, 146, 127, 131)).
stmt(filename_utils_1_stmt2, expression_statement, filename_utils_1_block3, (statements, 0), range(filename_utils_1, 4663, 36, 130, 130)).
stmt(filename_utils_1_stmt3, return_statement, filename_utils_1_block4, (statements, 0), range(filename_utils_1, 5099, 45, 148, 148)).

%%% Expressions
%iocase_1 - org.apache.commons.io.IOCase
expr(iocase_1_expr1, prefix_expression, iocase_1_code6, (arguments, 1), range(iocase_1, 2395, 32, 65, 65), "!FilenameUtils.isSystemWindows()").
expr(iocase_1_expr2, method_invocation, iocase_1_expr1, operand, range(iocase_1, 2396, 31, 65, 65), "FilenameUtils.isSystemWindows()").
expr(iocase_1_expr3, assignment, iocase_1_stmt1, expression, range(iocase_1, 3382, 16, 99, 99), "this.name=name").
expr(iocase_1_expr4, field_access, iocase_1_expr3, left_hand_side, range(iocase_1, 3382, 9, 99, 99), "this.name").
expr(iocase_1_expr5, this_expression, f_name_80, expression, range(iocase_1, 3382, 4, 99, 99), "this").
expr(iocase_1_expr8, this_expression, f_sensitive_81, expression, range(iocase_1, 3408, 4, 100, 100), "this").
expr(iocase_1_expr6, assignment, iocase_1_stmt2, expression, range(iocase_1, 3408, 26, 100, 100), "this.sensitive=sensitive").
expr(iocase_1_expr7, field_access, iocase_1_expr6, left_hand_side, range(iocase_1, 3408, 14, 100, 100), "this.sensitive").
expr(iocase_1_expr9, method_invocation, iocase_1_stmt3, expression, range(iocase_1, 5958, 58, 180, 180), "str.regionMatches(!sensitive,0,start,0,start.length())").
expr(iocase_1_expr10, prefix_expression, iocase_1_expr9, (arguments, 0), range(iocase_1, 5976, 10, 180, 180), "!sensitive").
expr(iocase_1_expr11, method_invocation, iocase_1_expr9, (arguments, 4), range(iocase_1, 6001, 14, 180, 180), "start.length()").
expr(iocase_1_expr12, method_invocation, iocase_1_code18, initializer, range(iocase_1, 6562, 12, 196, 196), "end.length()").
expr(iocase_1_expr13, method_invocation, iocase_1_stmt5, expression, range(iocase_1, 6591, 68, 197, 197), "str.regionMatches(!sensitive,str.length() - endLen,end,0,endLen)").
expr(iocase_1_expr14, prefix_expression, iocase_1_expr13, (arguments, 0), range(iocase_1, 6609, 10, 197, 197), "!sensitive").
expr(iocase_1_expr16, method_invocation, iocase_1_expr15, left_operand, range(iocase_1, 6621, 12, 197, 197), "str.length()").
expr(iocase_1_expr15, infix_expression, iocase_1_expr13, (arguments, 1), range(iocase_1, 6621, 21, 197, 197), "str.length() - endLen").
%iocase_test_case_1 - org.apache.commons.io.IOCaseTestCase
expr(iocase_test_case_1_expr1, infix_expression, iocase_test_case_1_code9, initializer, range(iocase_test_case_1, 1463, 26, 39, 39), "File.separatorChar == '\\\\'").
expr(iocase_test_case_1_expr2, method_invocation, iocase_test_case_1_stmt1, expression, range(iocase_test_case_1, 6703, 55, 166, 166), "assertTrue(IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"\"))").
expr(iocase_test_case_1_expr3, method_invocation, iocase_test_case_1_expr2, (arguments, 0), range(iocase_test_case_1, 6714, 43, 166, 166), "IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"\")").
expr(iocase_test_case_1_expr4, method_invocation, iocase_test_case_1_stmt2, expression, range(iocase_test_case_1, 6768, 56, 167, 167), "assertTrue(IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"A\"))").
expr(iocase_test_case_1_expr5, method_invocation, iocase_test_case_1_expr4, (arguments, 0), range(iocase_test_case_1, 6779, 44, 167, 167), "IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"A\")").
expr(iocase_test_case_1_expr6, method_invocation, iocase_test_case_1_stmt3, expression, range(iocase_test_case_1, 6834, 57, 168, 168), "assertTrue(IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"AB\"))").
expr(iocase_test_case_1_expr7, method_invocation, iocase_test_case_1_expr6, (arguments, 0), range(iocase_test_case_1, 6845, 45, 168, 168), "IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"AB\")").
expr(iocase_test_case_1_expr8, method_invocation, iocase_test_case_1_stmt4, expression, range(iocase_test_case_1, 6901, 58, 169, 169), "assertTrue(IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"ABC\"))").
expr(iocase_test_case_1_expr9, method_invocation, iocase_test_case_1_expr8, (arguments, 0), range(iocase_test_case_1, 6912, 46, 169, 169), "IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"ABC\")").
expr(iocase_test_case_1_expr10, method_invocation, iocase_test_case_1_stmt5, expression, range(iocase_test_case_1, 6969, 58, 170, 170), "assertFalse(IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"BC\"))").
expr(iocase_test_case_1_expr11, method_invocation, iocase_test_case_1_expr10, (arguments, 0), range(iocase_test_case_1, 6981, 45, 170, 170), "IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"BC\")").
expr(iocase_test_case_1_expr12, method_invocation, iocase_test_case_1_stmt6, expression, range(iocase_test_case_1, 7037, 57, 171, 171), "assertFalse(IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"C\"))").
expr(iocase_test_case_1_expr13, method_invocation, iocase_test_case_1_expr12, (arguments, 0), range(iocase_test_case_1, 7049, 44, 171, 171), "IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"C\")").
expr(iocase_test_case_1_expr14, method_invocation, iocase_test_case_1_stmt7, expression, range(iocase_test_case_1, 7104, 60, 172, 172), "assertFalse(IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"ABCD\"))").
expr(iocase_test_case_1_expr15, method_invocation, iocase_test_case_1_expr14, (arguments, 0), range(iocase_test_case_1, 7116, 47, 172, 172), "IOCase.SENSITIVE.checkStartsWith(\"ABC\",\"ABCD\")").
expr(iocase_test_case_1_expr16, method_invocation, iocase_test_case_1_stmt8, expression, range(iocase_test_case_1, 7174, 56, 173, 173), "assertFalse(IOCase.SENSITIVE.checkStartsWith(\"\",\"ABC\"))").
expr(iocase_test_case_1_expr17, method_invocation, iocase_test_case_1_expr16, (arguments, 0), range(iocase_test_case_1, 7186, 43, 173, 173), "IOCase.SENSITIVE.checkStartsWith(\"\",\"ABC\")").
expr(iocase_test_case_1_expr18, method_invocation, iocase_test_case_1_stmt9, expression, range(iocase_test_case_1, 7240, 52, 174, 174), "assertTrue(IOCase.SENSITIVE.checkStartsWith(\"\",\"\"))").
expr(iocase_test_case_1_expr19, method_invocation, iocase_test_case_1_expr18, (arguments, 0), range(iocase_test_case_1, 7251, 40, 174, 174), "IOCase.SENSITIVE.checkStartsWith(\"\",\"\")").
expr(iocase_test_case_1_expr20, method_invocation, iocase_test_case_1_stmt10, expression, range(iocase_test_case_1, 7303, 58, 176, 176), "assertFalse(IOCase.SENSITIVE.checkStartsWith(\"ABC\",null))").
expr(iocase_test_case_1_expr21, method_invocation, iocase_test_case_1_expr20, (arguments, 0), range(iocase_test_case_1, 7315, 45, 176, 176), "IOCase.SENSITIVE.checkStartsWith(\"ABC\",null)").
expr(iocase_test_case_1_expr22, method_invocation, iocase_test_case_1_stmt11, expression, range(iocase_test_case_1, 8165, 53, 196, 196), "assertTrue(IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"\"))").
expr(iocase_test_case_1_expr23, method_invocation, iocase_test_case_1_expr22, (arguments, 0), range(iocase_test_case_1, 8176, 41, 196, 196), "IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"\")").
expr(iocase_test_case_1_expr24, method_invocation, iocase_test_case_1_stmt12, expression, range(iocase_test_case_1, 8228, 55, 197, 197), "assertFalse(IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"A\"))").
expr(iocase_test_case_1_expr25, method_invocation, iocase_test_case_1_expr24, (arguments, 0), range(iocase_test_case_1, 8240, 42, 197, 197), "IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"A\")").
expr(iocase_test_case_1_expr26, method_invocation, iocase_test_case_1_stmt13, expression, range(iocase_test_case_1, 8293, 56, 198, 198), "assertFalse(IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"AB\"))").
expr(iocase_test_case_1_expr27, method_invocation, iocase_test_case_1_expr26, (arguments, 0), range(iocase_test_case_1, 8305, 43, 198, 198), "IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"AB\")").
expr(iocase_test_case_1_expr28, method_invocation, iocase_test_case_1_stmt14, expression, range(iocase_test_case_1, 8359, 56, 199, 199), "assertTrue(IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"ABC\"))").
expr(iocase_test_case_1_expr29, method_invocation, iocase_test_case_1_expr28, (arguments, 0), range(iocase_test_case_1, 8370, 44, 199, 199), "IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"ABC\")").
expr(iocase_test_case_1_expr30, method_invocation, iocase_test_case_1_stmt15, expression, range(iocase_test_case_1, 8425, 55, 200, 200), "assertTrue(IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"BC\"))").
expr(iocase_test_case_1_expr31, method_invocation, iocase_test_case_1_expr30, (arguments, 0), range(iocase_test_case_1, 8436, 43, 200, 200), "IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"BC\")").
expr(iocase_test_case_1_expr32, method_invocation, iocase_test_case_1_stmt16, expression, range(iocase_test_case_1, 8490, 54, 201, 201), "assertTrue(IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"C\"))").
expr(iocase_test_case_1_expr33, method_invocation, iocase_test_case_1_expr32, (arguments, 0), range(iocase_test_case_1, 8501, 42, 201, 201), "IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"C\")").
expr(iocase_test_case_1_expr34, method_invocation, iocase_test_case_1_stmt17, expression, range(iocase_test_case_1, 8554, 58, 202, 202), "assertFalse(IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"ABCD\"))").
expr(iocase_test_case_1_expr35, method_invocation, iocase_test_case_1_expr34, (arguments, 0), range(iocase_test_case_1, 8566, 45, 202, 202), "IOCase.SENSITIVE.checkEndsWith(\"ABC\",\"ABCD\")").
expr(iocase_test_case_1_expr36, method_invocation, iocase_test_case_1_stmt18, expression, range(iocase_test_case_1, 8622, 54, 203, 203), "assertFalse(IOCase.SENSITIVE.checkEndsWith(\"\",\"ABC\"))").
expr(iocase_test_case_1_expr37, method_invocation, iocase_test_case_1_expr36, (arguments, 0), range(iocase_test_case_1, 8634, 41, 203, 203), "IOCase.SENSITIVE.checkEndsWith(\"\",\"ABC\")").
expr(iocase_test_case_1_expr38, method_invocation, iocase_test_case_1_stmt19, expression, range(iocase_test_case_1, 8686, 50, 204, 204), "assertTrue(IOCase.SENSITIVE.checkEndsWith(\"\",\"\"))").
expr(iocase_test_case_1_expr39, method_invocation, iocase_test_case_1_expr38, (arguments, 0), range(iocase_test_case_1, 8697, 38, 204, 204), "IOCase.SENSITIVE.checkEndsWith(\"\",\"\")").
expr(iocase_test_case_1_expr40, method_invocation, iocase_test_case_1_stmt20, expression, range(iocase_test_case_1, 8747, 56, 206, 206), "assertFalse(IOCase.SENSITIVE.checkEndsWith(\"ABC\",null))").
expr(iocase_test_case_1_expr41, method_invocation, iocase_test_case_1_expr40, (arguments, 0), range(iocase_test_case_1, 8759, 43, 206, 206), "IOCase.SENSITIVE.checkEndsWith(\"ABC\",null)").
%filename_utils_1 - org.apache.commons.io.FilenameUtils
expr(filename_utils_1_expr1, array_creation, filename_utils_1_code10, initializer, range(filename_utils_1, 3639, 13, 89, 89), "new String[0]").
expr(filename_utils_1_expr2, method_invocation, filename_utils_1_code19, initializer, range(filename_utils_1, 4016, 39, 105, 105), "Character.toString(EXTENSION_SEPARATOR)").
expr(filename_utils_1_expr3, method_invocation, filename_utils_1_stmt1, expression, range(filename_utils_1, 4567, 17, 127, 127), "isSystemWindows()").
expr(filename_utils_1_expr4, assignment, filename_utils_1_stmt2, expression, range(filename_utils_1, 4663, 35, 130, 130), "OTHER_SEPARATOR=WINDOWS_SEPARATOR").
expr(filename_utils_1_expr5, infix_expression, filename_utils_1_stmt3, expression, range(filename_utils_1, 5106, 37, 148, 148), "SYSTEM_SEPARATOR == WINDOWS_SEPARATOR").
expr(filename_utils_1_expr6, method_invocation, filename_utils_1_code33, initializer, range(filename_utils_1, 60252, 70, 1521, 1521), "Pattern.compile(\"^(\\\\d{1,3})\\\\.(\\\\d{1,3})\\\\.(\\\\d{1,3})\\\\.(\\\\d{1,3})$\")").
expr(filename_utils_1_expr7, method_invocation, filename_utils_1_code39, initializer, range(filename_utils_1, 64392, 45, 1626, 1626), "Pattern.compile(\"^[a-zA-Z0-9][a-zA-Z0-9-]*$\")").

%%% Names
%iocase_1 - org.apache.commons.io.IOCase
name(t_iocase_4, simple_name, iocase_1_code2, name, range(iocase_1, 1421, 6, 39, 39), 'IOCase').
name(f_sensitive_74, simple_name, iocase_1_code4, name, range(iocase_1, 1522, 9, 44, 44), 'SENSITIVE').
name(f_insensitive_75, simple_name, iocase_1_code5, name, range(iocase_1, 1646, 11, 49, 49), 'INSENSITIVE').
name(f_system_76, simple_name, iocase_1_code6, name, range(iocase_1, 2378, 6, 65, 65), 'SYSTEM').
name(t_filename_utils_5, simple_name, iocase_1_expr2, expression, range(iocase_1, 2396, 13, 65, 65), 'FilenameUtils').
name(m_is_system_windows_2, simple_name, iocase_1_expr2, name, range(iocase_1, 2410, 15, 65, 65), 'isSystemWindows').
name(m_iocase_49, simple_name, iocase_1_code7, name, range(iocase_1, 3321, 6, 98, 98), 'IOCase').
name(p_name_78, simple_name, iocase_1_code8, name, range(iocase_1, 3341, 4, 98, 98), 'name').
name(p_sensitive_79, simple_name, iocase_1_code11, name, range(iocase_1, 3361, 9, 98, 98), 'sensitive').
name(f_name_80, simple_name, iocase_1_expr4, name, range(iocase_1, 3387, 4, 99, 99), 'name').
name(p_name_78, simple_name, iocase_1_expr3, right_hand_side, range(iocase_1, 3394, 4, 99, 99), 'name').
name(f_sensitive_81, simple_name, iocase_1_expr7, name, range(iocase_1, 3413, 9, 100, 100), 'sensitive').
name(p_sensitive_79, simple_name, iocase_1_expr6, right_hand_side, range(iocase_1, 3425, 9, 100, 100), 'sensitive').
name(p_str_86, simple_name, iocase_1_expr9, expression, range(iocase_1, 5958, 3, 180, 180), 'str').
name(m_region_matches_56, simple_name, iocase_1_expr9, name, range(iocase_1, 5962, 13, 180, 180), 'regionMatches').
name(f_sensitive_81, simple_name, iocase_1_expr10, operand, range(iocase_1, 5977, 9, 180, 180), 'sensitive').
name(p_start_87, simple_name, iocase_1_expr9, (arguments, 2), range(iocase_1, 5991, 5, 180, 180), 'start').
name(p_start_87, simple_name, iocase_1_expr11, expression, range(iocase_1, 6001, 5, 180, 180), 'start').
name(m_length_57, simple_name, iocase_1_expr11, name, range(iocase_1, 6007, 6, 180, 180), 'length').
name(v_end_len_90, simple_name, iocase_1_code18, name, range(iocase_1, 6553, 6, 196, 196), 'endLen').
name(p_end_89, simple_name, iocase_1_expr12, expression, range(iocase_1, 6562, 3, 196, 196), 'end').
name(m_length_57, simple_name, iocase_1_expr12, name, range(iocase_1, 6566, 6, 196, 196), 'length').
name(p_str_88, simple_name, iocase_1_expr13, expression, range(iocase_1, 6591, 3, 197, 197), 'str').
name(m_region_matches_56, simple_name, iocase_1_expr13, name, range(iocase_1, 6595, 13, 197, 197), 'regionMatches').
name(f_sensitive_81, simple_name, iocase_1_expr14, operand, range(iocase_1, 6610, 9, 197, 197), 'sensitive').
name(p_str_88, simple_name, iocase_1_expr16, expression, range(iocase_1, 6621, 3, 197, 197), 'str').
name(m_length_57, simple_name, iocase_1_expr16, name, range(iocase_1, 6625, 6, 197, 197), 'length').
name(v_end_len_90, simple_name, iocase_1_expr15, right_operand, range(iocase_1, 6636, 6, 197, 197), 'endLen').
name(p_end_89, simple_name, iocase_1_expr13, (arguments, 2), range(iocase_1, 6644, 3, 197, 197), 'end').
name(v_end_len_90, simple_name, iocase_1_expr13, (arguments, 4), range(iocase_1, 6652, 6, 197, 197), 'endLen').
%iocase_test_case_1 - org.apache.commons.io.IOCaseTestCase
name(t_iocase_test_case_6, simple_name, iocase_test_case_1_code2, name, range(iocase_test_case_1, 1402, 14, 37, 37), 'IOCaseTestCase').
name(f_windows_97, simple_name, iocase_test_case_1_code9, name, range(iocase_test_case_1, 1453, 7, 39, 39), 'WINDOWS').
name(q_separator_char_2, qualified_name, iocase_test_case_1_expr1, left_operand, range(iocase_test_case_1, 1463, 18, 39, 39), 'File.separatorChar').
name(t_file_2, simple_name, q_separator_char_2, qualifier, range(iocase_test_case_1, 1463, 4, 39, 39), 'File').
name(m_assert_true_72, simple_name, iocase_test_case_1_expr2, name, range(iocase_test_case_1, 6703, 10, 166, 166), 'assertTrue').
name(t_iocase_4, simple_name, q_sensitive_2, qualifier, range(iocase_test_case_1, 6714, 6, 166, 166), 'IOCase').
name(q_sensitive_2, qualified_name, iocase_test_case_1_expr3, expression, range(iocase_test_case_1, 6714, 16, 166, 166), 'IOCase.SENSITIVE').
name(m_check_starts_with_55, simple_name, iocase_test_case_1_expr3, name, range(iocase_test_case_1, 6731, 15, 166, 166), 'checkStartsWith').
name(m_assert_true_72, simple_name, iocase_test_case_1_expr4, name, range(iocase_test_case_1, 6768, 10, 167, 167), 'assertTrue').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr5, expression, range(iocase_test_case_1, 6779, 16, 167, 167), 'IOCase.SENSITIVE').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 6779, 6, 167, 167), 'IOCase').
name(m_check_starts_with_55, simple_name, iocase_test_case_1_expr5, name, range(iocase_test_case_1, 6796, 15, 167, 167), 'checkStartsWith').
name(m_assert_true_72, simple_name, iocase_test_case_1_expr6, name, range(iocase_test_case_1, 6834, 10, 168, 168), 'assertTrue').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 6845, 6, 168, 168), 'IOCase').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr7, expression, range(iocase_test_case_1, 6845, 16, 168, 168), 'IOCase.SENSITIVE').
name(m_check_starts_with_55, simple_name, iocase_test_case_1_expr7, name, range(iocase_test_case_1, 6862, 15, 168, 168), 'checkStartsWith').
name(m_assert_true_72, simple_name, iocase_test_case_1_expr8, name, range(iocase_test_case_1, 6901, 10, 169, 169), 'assertTrue').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 6912, 6, 169, 169), 'IOCase').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr9, expression, range(iocase_test_case_1, 6912, 16, 169, 169), 'IOCase.SENSITIVE').
name(m_check_starts_with_55, simple_name, iocase_test_case_1_expr9, name, range(iocase_test_case_1, 6929, 15, 169, 169), 'checkStartsWith').
name(m_assert_false_73, simple_name, iocase_test_case_1_expr10, name, range(iocase_test_case_1, 6969, 11, 170, 170), 'assertFalse').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr11, expression, range(iocase_test_case_1, 6981, 16, 170, 170), 'IOCase.SENSITIVE').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 6981, 6, 170, 170), 'IOCase').
name(m_check_starts_with_55, simple_name, iocase_test_case_1_expr11, name, range(iocase_test_case_1, 6998, 15, 170, 170), 'checkStartsWith').
name(m_assert_false_73, simple_name, iocase_test_case_1_expr12, name, range(iocase_test_case_1, 7037, 11, 171, 171), 'assertFalse').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 7049, 6, 171, 171), 'IOCase').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr13, expression, range(iocase_test_case_1, 7049, 16, 171, 171), 'IOCase.SENSITIVE').
name(m_check_starts_with_55, simple_name, iocase_test_case_1_expr13, name, range(iocase_test_case_1, 7066, 15, 171, 171), 'checkStartsWith').
name(m_assert_false_73, simple_name, iocase_test_case_1_expr14, name, range(iocase_test_case_1, 7104, 11, 172, 172), 'assertFalse').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 7116, 6, 172, 172), 'IOCase').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr15, expression, range(iocase_test_case_1, 7116, 16, 172, 172), 'IOCase.SENSITIVE').
name(m_check_starts_with_55, simple_name, iocase_test_case_1_expr15, name, range(iocase_test_case_1, 7133, 15, 172, 172), 'checkStartsWith').
name(m_assert_false_73, simple_name, iocase_test_case_1_expr16, name, range(iocase_test_case_1, 7174, 11, 173, 173), 'assertFalse').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 7186, 6, 173, 173), 'IOCase').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr17, expression, range(iocase_test_case_1, 7186, 16, 173, 173), 'IOCase.SENSITIVE').
name(m_check_starts_with_55, simple_name, iocase_test_case_1_expr17, name, range(iocase_test_case_1, 7203, 15, 173, 173), 'checkStartsWith').
name(m_assert_true_72, simple_name, iocase_test_case_1_expr18, name, range(iocase_test_case_1, 7240, 10, 174, 174), 'assertTrue').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr19, expression, range(iocase_test_case_1, 7251, 16, 174, 174), 'IOCase.SENSITIVE').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 7251, 6, 174, 174), 'IOCase').
name(m_check_starts_with_55, simple_name, iocase_test_case_1_expr19, name, range(iocase_test_case_1, 7268, 15, 174, 174), 'checkStartsWith').
name(m_assert_false_73, simple_name, iocase_test_case_1_expr20, name, range(iocase_test_case_1, 7303, 11, 176, 176), 'assertFalse').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 7315, 6, 176, 176), 'IOCase').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr21, expression, range(iocase_test_case_1, 7315, 16, 176, 176), 'IOCase.SENSITIVE').
name(m_check_starts_with_55, simple_name, iocase_test_case_1_expr21, name, range(iocase_test_case_1, 7332, 15, 176, 176), 'checkStartsWith').
name(m_assert_true_72, simple_name, iocase_test_case_1_expr22, name, range(iocase_test_case_1, 8165, 10, 196, 196), 'assertTrue').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr23, expression, range(iocase_test_case_1, 8176, 16, 196, 196), 'IOCase.SENSITIVE').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 8176, 6, 196, 196), 'IOCase').
name(m_check_ends_with_58, simple_name, iocase_test_case_1_expr23, name, range(iocase_test_case_1, 8193, 13, 196, 196), 'checkEndsWith').
name(m_assert_false_73, simple_name, iocase_test_case_1_expr24, name, range(iocase_test_case_1, 8228, 11, 197, 197), 'assertFalse').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr25, expression, range(iocase_test_case_1, 8240, 16, 197, 197), 'IOCase.SENSITIVE').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 8240, 6, 197, 197), 'IOCase').
name(m_check_ends_with_58, simple_name, iocase_test_case_1_expr25, name, range(iocase_test_case_1, 8257, 13, 197, 197), 'checkEndsWith').
name(m_assert_false_73, simple_name, iocase_test_case_1_expr26, name, range(iocase_test_case_1, 8293, 11, 198, 198), 'assertFalse').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr27, expression, range(iocase_test_case_1, 8305, 16, 198, 198), 'IOCase.SENSITIVE').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 8305, 6, 198, 198), 'IOCase').
name(m_check_ends_with_58, simple_name, iocase_test_case_1_expr27, name, range(iocase_test_case_1, 8322, 13, 198, 198), 'checkEndsWith').
name(m_assert_true_72, simple_name, iocase_test_case_1_expr28, name, range(iocase_test_case_1, 8359, 10, 199, 199), 'assertTrue').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr29, expression, range(iocase_test_case_1, 8370, 16, 199, 199), 'IOCase.SENSITIVE').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 8370, 6, 199, 199), 'IOCase').
name(m_check_ends_with_58, simple_name, iocase_test_case_1_expr29, name, range(iocase_test_case_1, 8387, 13, 199, 199), 'checkEndsWith').
name(m_assert_true_72, simple_name, iocase_test_case_1_expr30, name, range(iocase_test_case_1, 8425, 10, 200, 200), 'assertTrue').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr31, expression, range(iocase_test_case_1, 8436, 16, 200, 200), 'IOCase.SENSITIVE').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 8436, 6, 200, 200), 'IOCase').
name(m_check_ends_with_58, simple_name, iocase_test_case_1_expr31, name, range(iocase_test_case_1, 8453, 13, 200, 200), 'checkEndsWith').
name(m_assert_true_72, simple_name, iocase_test_case_1_expr32, name, range(iocase_test_case_1, 8490, 10, 201, 201), 'assertTrue').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 8501, 6, 201, 201), 'IOCase').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr33, expression, range(iocase_test_case_1, 8501, 16, 201, 201), 'IOCase.SENSITIVE').
name(m_check_ends_with_58, simple_name, iocase_test_case_1_expr33, name, range(iocase_test_case_1, 8518, 13, 201, 201), 'checkEndsWith').
name(m_assert_false_73, simple_name, iocase_test_case_1_expr34, name, range(iocase_test_case_1, 8554, 11, 202, 202), 'assertFalse').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr35, expression, range(iocase_test_case_1, 8566, 16, 202, 202), 'IOCase.SENSITIVE').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 8566, 6, 202, 202), 'IOCase').
name(m_check_ends_with_58, simple_name, iocase_test_case_1_expr35, name, range(iocase_test_case_1, 8583, 13, 202, 202), 'checkEndsWith').
name(m_assert_false_73, simple_name, iocase_test_case_1_expr36, name, range(iocase_test_case_1, 8622, 11, 203, 203), 'assertFalse').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr37, expression, range(iocase_test_case_1, 8634, 16, 203, 203), 'IOCase.SENSITIVE').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 8634, 6, 203, 203), 'IOCase').
name(m_check_ends_with_58, simple_name, iocase_test_case_1_expr37, name, range(iocase_test_case_1, 8651, 13, 203, 203), 'checkEndsWith').
name(m_assert_true_72, simple_name, iocase_test_case_1_expr38, name, range(iocase_test_case_1, 8686, 10, 204, 204), 'assertTrue').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 8697, 6, 204, 204), 'IOCase').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr39, expression, range(iocase_test_case_1, 8697, 16, 204, 204), 'IOCase.SENSITIVE').
name(m_check_ends_with_58, simple_name, iocase_test_case_1_expr39, name, range(iocase_test_case_1, 8714, 13, 204, 204), 'checkEndsWith').
name(m_assert_false_73, simple_name, iocase_test_case_1_expr40, name, range(iocase_test_case_1, 8747, 11, 206, 206), 'assertFalse').
name(q_sensitive_3, qualified_name, iocase_test_case_1_expr41, expression, range(iocase_test_case_1, 8759, 16, 206, 206), 'IOCase.SENSITIVE').
name(t_iocase_4, simple_name, q_sensitive_3, qualifier, range(iocase_test_case_1, 8759, 6, 206, 206), 'IOCase').
name(m_check_ends_with_58, simple_name, iocase_test_case_1_expr41, name, range(iocase_test_case_1, 8776, 13, 206, 206), 'checkEndsWith').
%filename_utils_1 - org.apache.commons.io.FilenameUtils
name(f_empty_string_array_1, simple_name, filename_utils_1_code10, name, range(filename_utils_1, 3618, 18, 89, 89), 'EMPTY_STRING_ARRAY').
name(f_extension_separator_str_2, simple_name, filename_utils_1_code19, name, range(filename_utils_1, 3990, 23, 105, 105), 'EXTENSION_SEPARATOR_STR').
name(t_character_1, simple_name, filename_utils_1_expr2, expression, range(filename_utils_1, 4016, 9, 105, 105), 'Character').
name(m_to_string_1, simple_name, filename_utils_1_expr2, name, range(filename_utils_1, 4026, 8, 105, 105), 'toString').
name(f_extension_separator_3, simple_name, filename_utils_1_expr2, (arguments, 0), range(filename_utils_1, 4035, 19, 105, 105), 'EXTENSION_SEPARATOR').
name(f_system_separator_4, simple_name, filename_utils_1_code25, name, range(filename_utils_1, 4362, 16, 120, 120), 'SYSTEM_SEPARATOR').
name(t_file_2, simple_name, q_separator_char_1, qualifier, range(filename_utils_1, 4381, 4, 120, 120), 'File').
name(q_separator_char_1, qualified_name, filename_utils_1_code25, initializer, range(filename_utils_1, 4381, 18, 120, 120), 'File.separatorChar').
name(m_is_system_windows_2, simple_name, filename_utils_1_expr3, name, range(filename_utils_1, 4567, 15, 127, 127), 'isSystemWindows').
name(f_other_separator_5, simple_name, filename_utils_1_expr4, left_hand_side, range(filename_utils_1, 4663, 15, 130, 130), 'OTHER_SEPARATOR').
name(f_windows_separator_6, simple_name, filename_utils_1_expr4, right_hand_side, range(filename_utils_1, 4681, 17, 130, 130), 'WINDOWS_SEPARATOR').
name(f_system_separator_4, simple_name, filename_utils_1_expr5, left_operand, range(filename_utils_1, 5106, 16, 148, 148), 'SYSTEM_SEPARATOR').
name(f_windows_separator_6, simple_name, filename_utils_1_expr5, right_operand, range(filename_utils_1, 5126, 17, 148, 148), 'WINDOWS_SEPARATOR').
name(f_ipv4_pattern_69, simple_name, filename_utils_1_code33, name, range(filename_utils_1, 60229, 12, 1520, 1520), 'IPV4_PATTERN').
name(t_pattern_3, simple_name, filename_utils_1_expr6, expression, range(filename_utils_1, 60252, 7, 1521, 1521), 'Pattern').
name(m_compile_44, simple_name, filename_utils_1_expr6, name, range(filename_utils_1, 60260, 7, 1521, 1521), 'compile').
name(f_reg_name_part_pattern_72, simple_name, filename_utils_1_code39, name, range(filename_utils_1, 64368, 21, 1626, 1626), 'REG_NAME_PART_PATTERN').
name(t_pattern_3, simple_name, filename_utils_1_expr7, expression, range(filename_utils_1, 64392, 7, 1626, 1626), 'Pattern').
name(m_compile_44, simple_name, filename_utils_1_expr7, name, range(filename_utils_1, 64400, 7, 1626, 1626), 'compile').

%%% Literals
%iocase_1 - org.apache.commons.io.IOCase
literal(iocase_1_literal1, string_literal, iocase_1_code4, (arguments, 0), range(iocase_1, 1532, 11, 44, 44), "Sensitive").
literal(iocase_1_literal2, boolean_literal, iocase_1_code4, (arguments, 1), range(iocase_1, 1545, 4, 44, 44), true).
literal(iocase_1_literal3, string_literal, iocase_1_code5, (arguments, 0), range(iocase_1, 1658, 13, 49, 49), "Insensitive").
literal(iocase_1_literal4, boolean_literal, iocase_1_code5, (arguments, 1), range(iocase_1, 1673, 5, 49, 49), false).
literal(iocase_1_literal5, string_literal, iocase_1_code6, (arguments, 0), range(iocase_1, 2385, 8, 65, 65), "System").
literal(iocase_1_literal6, number_literal, iocase_1_expr9, (arguments, 1), range(iocase_1, 5988, 1, 180, 180), 0).
literal(iocase_1_literal7, number_literal, iocase_1_expr9, (arguments, 3), range(iocase_1, 5998, 1, 180, 180), 0).
literal(iocase_1_literal8, number_literal, iocase_1_expr13, (arguments, 3), range(iocase_1, 6649, 1, 197, 197), 0).
%iocase_test_case_1 - org.apache.commons.io.IOCaseTestCase
literal(iocase_test_case_1_literal1, character_literal, iocase_test_case_1_expr1, right_operand, range(iocase_test_case_1, 1485, 4, 39, 39), '\\').
literal(iocase_test_case_1_literal2, string_literal, iocase_test_case_1_expr3, (arguments, 0), range(iocase_test_case_1, 6747, 5, 166, 166), "ABC").
literal(iocase_test_case_1_literal3, string_literal, iocase_test_case_1_expr3, (arguments, 1), range(iocase_test_case_1, 6754, 2, 166, 166), "").
literal(iocase_test_case_1_literal4, string_literal, iocase_test_case_1_expr5, (arguments, 0), range(iocase_test_case_1, 6812, 5, 167, 167), "ABC").
literal(iocase_test_case_1_literal5, string_literal, iocase_test_case_1_expr5, (arguments, 1), range(iocase_test_case_1, 6819, 3, 167, 167), "A").
literal(iocase_test_case_1_literal6, string_literal, iocase_test_case_1_expr7, (arguments, 0), range(iocase_test_case_1, 6878, 5, 168, 168), "ABC").
literal(iocase_test_case_1_literal7, string_literal, iocase_test_case_1_expr7, (arguments, 1), range(iocase_test_case_1, 6885, 4, 168, 168), "AB").
literal(iocase_test_case_1_literal8, string_literal, iocase_test_case_1_expr9, (arguments, 0), range(iocase_test_case_1, 6945, 5, 169, 169), "ABC").
literal(iocase_test_case_1_literal9, string_literal, iocase_test_case_1_expr9, (arguments, 1), range(iocase_test_case_1, 6952, 5, 169, 169), "ABC").
literal(iocase_test_case_1_literal10, string_literal, iocase_test_case_1_expr11, (arguments, 0), range(iocase_test_case_1, 7014, 5, 170, 170), "ABC").
literal(iocase_test_case_1_literal11, string_literal, iocase_test_case_1_expr11, (arguments, 1), range(iocase_test_case_1, 7021, 4, 170, 170), "BC").
literal(iocase_test_case_1_literal12, string_literal, iocase_test_case_1_expr13, (arguments, 0), range(iocase_test_case_1, 7082, 5, 171, 171), "ABC").
literal(iocase_test_case_1_literal13, string_literal, iocase_test_case_1_expr13, (arguments, 1), range(iocase_test_case_1, 7089, 3, 171, 171), "C").
literal(iocase_test_case_1_literal14, string_literal, iocase_test_case_1_expr15, (arguments, 0), range(iocase_test_case_1, 7149, 5, 172, 172), "ABC").
literal(iocase_test_case_1_literal15, string_literal, iocase_test_case_1_expr15, (arguments, 1), range(iocase_test_case_1, 7156, 6, 172, 172), "ABCD").
literal(iocase_test_case_1_literal16, string_literal, iocase_test_case_1_expr17, (arguments, 0), range(iocase_test_case_1, 7219, 2, 173, 173), "").
literal(iocase_test_case_1_literal17, string_literal, iocase_test_case_1_expr17, (arguments, 1), range(iocase_test_case_1, 7223, 5, 173, 173), "ABC").
literal(iocase_test_case_1_literal18, string_literal, iocase_test_case_1_expr19, (arguments, 0), range(iocase_test_case_1, 7284, 2, 174, 174), "").
literal(iocase_test_case_1_literal19, string_literal, iocase_test_case_1_expr19, (arguments, 1), range(iocase_test_case_1, 7288, 2, 174, 174), "").
literal(iocase_test_case_1_literal20, string_literal, iocase_test_case_1_expr21, (arguments, 0), range(iocase_test_case_1, 7348, 5, 176, 176), "ABC").
literal(iocase_test_case_1_literal21, null_literal, iocase_test_case_1_expr21, (arguments, 1), range(iocase_test_case_1, 7355, 4, 176, 176), null).
literal(iocase_test_case_1_literal22, string_literal, iocase_test_case_1_expr23, (arguments, 0), range(iocase_test_case_1, 8207, 5, 196, 196), "ABC").
literal(iocase_test_case_1_literal23, string_literal, iocase_test_case_1_expr23, (arguments, 1), range(iocase_test_case_1, 8214, 2, 196, 196), "").
literal(iocase_test_case_1_literal24, string_literal, iocase_test_case_1_expr25, (arguments, 0), range(iocase_test_case_1, 8271, 5, 197, 197), "ABC").
literal(iocase_test_case_1_literal25, string_literal, iocase_test_case_1_expr25, (arguments, 1), range(iocase_test_case_1, 8278, 3, 197, 197), "A").
literal(iocase_test_case_1_literal26, string_literal, iocase_test_case_1_expr27, (arguments, 0), range(iocase_test_case_1, 8336, 5, 198, 198), "ABC").
literal(iocase_test_case_1_literal27, string_literal, iocase_test_case_1_expr27, (arguments, 1), range(iocase_test_case_1, 8343, 4, 198, 198), "AB").
literal(iocase_test_case_1_literal28, string_literal, iocase_test_case_1_expr29, (arguments, 0), range(iocase_test_case_1, 8401, 5, 199, 199), "ABC").
literal(iocase_test_case_1_literal29, string_literal, iocase_test_case_1_expr29, (arguments, 1), range(iocase_test_case_1, 8408, 5, 199, 199), "ABC").
literal(iocase_test_case_1_literal30, string_literal, iocase_test_case_1_expr31, (arguments, 0), range(iocase_test_case_1, 8467, 5, 200, 200), "ABC").
literal(iocase_test_case_1_literal31, string_literal, iocase_test_case_1_expr31, (arguments, 1), range(iocase_test_case_1, 8474, 4, 200, 200), "BC").
literal(iocase_test_case_1_literal32, string_literal, iocase_test_case_1_expr33, (arguments, 0), range(iocase_test_case_1, 8532, 5, 201, 201), "ABC").
literal(iocase_test_case_1_literal33, string_literal, iocase_test_case_1_expr33, (arguments, 1), range(iocase_test_case_1, 8539, 3, 201, 201), "C").
literal(iocase_test_case_1_literal34, string_literal, iocase_test_case_1_expr35, (arguments, 0), range(iocase_test_case_1, 8597, 5, 202, 202), "ABC").
literal(iocase_test_case_1_literal35, string_literal, iocase_test_case_1_expr35, (arguments, 1), range(iocase_test_case_1, 8604, 6, 202, 202), "ABCD").
literal(iocase_test_case_1_literal36, string_literal, iocase_test_case_1_expr37, (arguments, 0), range(iocase_test_case_1, 8665, 2, 203, 203), "").
literal(iocase_test_case_1_literal37, string_literal, iocase_test_case_1_expr37, (arguments, 1), range(iocase_test_case_1, 8669, 5, 203, 203), "ABC").
literal(iocase_test_case_1_literal38, string_literal, iocase_test_case_1_expr39, (arguments, 0), range(iocase_test_case_1, 8728, 2, 204, 204), "").
literal(iocase_test_case_1_literal39, string_literal, iocase_test_case_1_expr39, (arguments, 1), range(iocase_test_case_1, 8732, 2, 204, 204), "").
literal(iocase_test_case_1_literal40, string_literal, iocase_test_case_1_expr41, (arguments, 0), range(iocase_test_case_1, 8790, 5, 206, 206), "ABC").
literal(iocase_test_case_1_literal41, null_literal, iocase_test_case_1_expr41, (arguments, 1), range(iocase_test_case_1, 8797, 4, 206, 206), null).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
literal(filename_utils_1_literal1, number_literal, filename_utils_1_expr1, (dimensions, 0), range(filename_utils_1, 3650, 1, 89, 89), 0).
literal(filename_utils_1_literal2, string_literal, filename_utils_1_expr6, (arguments, 0), range(filename_utils_1, 60268, 53, 1521, 1521), "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$").
literal(filename_utils_1_literal3, string_literal, filename_utils_1_expr7, (arguments, 0), range(filename_utils_1, 64408, 28, 1626, 1626), "^[a-zA-Z0-9][a-zA-Z0-9-]*$").

%%% Other Code Entities
%iocase_1 - org.apache.commons.io.IOCase
code(iocase_1_code1, compilation_unit, range(iocase_1, 0, 8668, 1, -1)).
code(iocase_1_code2, enum_declaration, iocase_1_code1, (types, 0), range(iocase_1, 862, 7805, 21, 255)).
code(iocase_1_code3, modifier, iocase_1_code2, (modifiers, 0), range(iocase_1, 1409, 6, 39, 39)).
code(iocase_1_code4, enum_constant_declaration, iocase_1_code2, (enum_constants, 0), range(iocase_1, 1435, 115, 41, 44)).
code(iocase_1_code5, enum_constant_declaration, iocase_1_code2, (enum_constants, 1), range(iocase_1, 1557, 122, 46, 49)).
code(iocase_1_code6, enum_constant_declaration, iocase_1_code2, (enum_constants, 2), range(iocase_1, 1686, 742, 51, 65)).
code(iocase_1_code7, method_declaration, iocase_1_code2, (body_declarations, 4), range(iocase_1, 3194, 247, 92, 101)).
code(iocase_1_code8, single_variable_declaration, iocase_1_code7, (parameters, 0), range(iocase_1, 3328, 17, 98, 98)).
code(iocase_1_code9, modifier, iocase_1_code8, (modifiers, 0), range(iocase_1, 3328, 5, 98, 98)).
code(iocase_1_code10, simple_type, iocase_1_code8, type, range(iocase_1, 3334, 6, 98, 98)).
code(iocase_1_code12, modifier, iocase_1_code11, (modifiers, 0), range(iocase_1, 3347, 5, 98, 98)).
code(iocase_1_code11, single_variable_declaration, iocase_1_code7, (parameters, 1), range(iocase_1, 3347, 23, 98, 98)).
code(iocase_1_code13, primitive_type, iocase_1_code11, type, range(iocase_1, 3353, 7, 98, 98)).
code(iocase_1_code14, method_declaration, iocase_1_code2, (body_declarations, 10), range(iocase_1, 5417, 606, 167, 181)).
code(iocase_1_code15, method_declaration, iocase_1_code2, (body_declarations, 11), range(iocase_1, 6029, 637, 183, 198)).
code(iocase_1_code16, modifier, iocase_1_stmt4, (modifiers, 0), range(iocase_1, 6543, 5, 196, 196)).
code(iocase_1_code17, primitive_type, iocase_1_stmt4, type, range(iocase_1, 6549, 3, 196, 196)).
code(iocase_1_code18, variable_declaration_fragment, iocase_1_stmt4, (fragments, 0), range(iocase_1, 6553, 21, 196, 196)).
%iocase_test_case_1 - org.apache.commons.io.IOCaseTestCase
code(iocase_test_case_1_code1, compilation_unit, range(iocase_test_case_1, 0, 16264, 1, -1)).
code(iocase_test_case_1_code2, type_declaration, iocase_test_case_1_code1, (types, 0), range(iocase_test_case_1, 1330, 14933, 33, 363)).
code(iocase_test_case_1_code3, modifier, iocase_test_case_1_code2, (modifiers, 0), range(iocase_test_case_1, 1389, 6, 37, 37)).
code(iocase_test_case_1_code5, modifier, iocase_test_case_1_code4, (modifiers, 0), range(iocase_test_case_1, 1424, 7, 39, 39)).
code(iocase_test_case_1_code4, field_declaration, iocase_test_case_1_code2, (body_declarations, 0), range(iocase_test_case_1, 1424, 66, 39, 39)).
code(iocase_test_case_1_code6, modifier, iocase_test_case_1_code4, (modifiers, 1), range(iocase_test_case_1, 1432, 6, 39, 39)).
code(iocase_test_case_1_code7, modifier, iocase_test_case_1_code4, (modifiers, 2), range(iocase_test_case_1, 1439, 5, 39, 39)).
code(iocase_test_case_1_code8, primitive_type, iocase_test_case_1_code4, type, range(iocase_test_case_1, 1445, 7, 39, 39)).
code(iocase_test_case_1_code9, variable_declaration_fragment, iocase_test_case_1_code4, (fragments, 0), range(iocase_test_case_1, 1453, 36, 39, 39)).
code(iocase_test_case_1_code10, method_declaration, iocase_test_case_1_code2, (body_declarations, 10), range(iocase_test_case_1, 6617, 886, 164, 179)).
code(iocase_test_case_1_code11, method_declaration, iocase_test_case_1_code2, (body_declarations, 12), range(iocase_test_case_1, 8081, 860, 194, 209)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
code(filename_utils_1_code1, compilation_unit, range(filename_utils_1, 0, 65247, 1, -1)).
code(filename_utils_1_code2, type_declaration, filename_utils_1_code1, (types, 0), range(filename_utils_1, 1107, 64139, 30, 1649)).
code(filename_utils_1_code3, field_declaration, filename_utils_1_code2, (body_declarations, 0), range(filename_utils_1, 3588, 65, 89, 89)).
code(filename_utils_1_code4, modifier, filename_utils_1_code3, (modifiers, 0), range(filename_utils_1, 3588, 7, 89, 89)).
code(filename_utils_1_code5, modifier, filename_utils_1_code3, (modifiers, 1), range(filename_utils_1, 3596, 6, 89, 89)).
code(filename_utils_1_code6, modifier, filename_utils_1_code3, (modifiers, 2), range(filename_utils_1, 3603, 5, 89, 89)).
code(filename_utils_1_code7, array_type, filename_utils_1_code3, type, range(filename_utils_1, 3609, 8, 89, 89)).
code(filename_utils_1_code8, simple_type, filename_utils_1_code7, element_type, range(filename_utils_1, 3609, 6, 89, 89)).
code(filename_utils_1_code9, dimension, filename_utils_1_code7, (dimensions, 0), range(filename_utils_1, 3615, 2, 89, 89)).
code(filename_utils_1_code10, variable_declaration_fragment, filename_utils_1_code3, (fragments, 0), range(filename_utils_1, 3618, 34, 89, 89)).
code(filename_utils_1_code12, simple_type, filename_utils_1_code11, element_type, range(filename_utils_1, 3643, 6, 89, 89)).
code(filename_utils_1_code11, array_type, filename_utils_1_expr1, type, range(filename_utils_1, 3643, 9, 89, 89)).
code(filename_utils_1_code13, dimension, filename_utils_1_code11, (dimensions, 0), range(filename_utils_1, 3649, 3, 89, 89)).
code(filename_utils_1_code14, field_declaration, filename_utils_1_code2, (body_declarations, 4), range(filename_utils_1, 3890, 166, 101, 105)).
code(filename_utils_1_code15, modifier, filename_utils_1_code14, (modifiers, 0), range(filename_utils_1, 3963, 6, 105, 105)).
code(filename_utils_1_code16, modifier, filename_utils_1_code14, (modifiers, 1), range(filename_utils_1, 3970, 6, 105, 105)).
code(filename_utils_1_code17, modifier, filename_utils_1_code14, (modifiers, 2), range(filename_utils_1, 3977, 5, 105, 105)).
code(filename_utils_1_code18, simple_type, filename_utils_1_code14, type, range(filename_utils_1, 3983, 6, 105, 105)).
code(filename_utils_1_code19, variable_declaration_fragment, filename_utils_1_code14, (fragments, 0), range(filename_utils_1, 3990, 65, 105, 105)).
code(filename_utils_1_code20, field_declaration, filename_utils_1_code2, (body_declarations, 7), range(filename_utils_1, 4281, 119, 117, 120)).
code(filename_utils_1_code21, modifier, filename_utils_1_code20, (modifiers, 0), range(filename_utils_1, 4336, 7, 120, 120)).
code(filename_utils_1_code22, modifier, filename_utils_1_code20, (modifiers, 1), range(filename_utils_1, 4344, 6, 120, 120)).
code(filename_utils_1_code23, modifier, filename_utils_1_code20, (modifiers, 2), range(filename_utils_1, 4351, 5, 120, 120)).
code(filename_utils_1_code24, primitive_type, filename_utils_1_code20, type, range(filename_utils_1, 4357, 4, 120, 120)).
code(filename_utils_1_code25, variable_declaration_fragment, filename_utils_1_code20, (fragments, 0), range(filename_utils_1, 4362, 37, 120, 120)).
code(filename_utils_1_code26, initializer, filename_utils_1_code2, (body_declarations, 9), range(filename_utils_1, 4546, 169, 126, 132)).
code(filename_utils_1_code27, method_declaration, filename_utils_1_code2, (body_declarations, 11), range(filename_utils_1, 4936, 214, 142, 149)).
code(filename_utils_1_code28, field_declaration, filename_utils_1_code2, (body_declarations, 52), range(filename_utils_1, 60200, 123, 1520, 1521)).
code(filename_utils_1_code29, modifier, filename_utils_1_code28, (modifiers, 0), range(filename_utils_1, 60200, 7, 1520, 1520)).
code(filename_utils_1_code30, modifier, filename_utils_1_code28, (modifiers, 1), range(filename_utils_1, 60208, 6, 1520, 1520)).
code(filename_utils_1_code31, modifier, filename_utils_1_code28, (modifiers, 2), range(filename_utils_1, 60215, 5, 1520, 1520)).
code(filename_utils_1_code32, simple_type, filename_utils_1_code28, type, range(filename_utils_1, 60221, 7, 1520, 1520)).
code(filename_utils_1_code33, variable_declaration_fragment, filename_utils_1_code28, (fragments, 0), range(filename_utils_1, 60229, 93, 1520, 1521)).
code(filename_utils_1_code35, modifier, filename_utils_1_code34, (modifiers, 0), range(filename_utils_1, 64339, 7, 1626, 1626)).
code(filename_utils_1_code34, field_declaration, filename_utils_1_code2, (body_declarations, 60), range(filename_utils_1, 64339, 99, 1626, 1626)).
code(filename_utils_1_code36, modifier, filename_utils_1_code34, (modifiers, 1), range(filename_utils_1, 64347, 6, 1626, 1626)).
code(filename_utils_1_code37, modifier, filename_utils_1_code34, (modifiers, 2), range(filename_utils_1, 64354, 5, 1626, 1626)).
code(filename_utils_1_code38, simple_type, filename_utils_1_code34, type, range(filename_utils_1, 64360, 7, 1626, 1626)).
code(filename_utils_1_code39, variable_declaration_fragment, filename_utils_1_code34, (fragments, 0), range(filename_utils_1, 64368, 69, 1626, 1626)).

%%% Name References

name_ref(t_character_1, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_file_2, type, 'File', 'Ljava/io/File;').
name_ref(t_filename_utils_5, type, 'FilenameUtils', 'Lorg/apache/commons/io/FilenameUtils;').
name_ref(t_iocase_4, type, 'IOCase', 'Lorg/apache/commons/io/IOCase;').
name_ref(t_iocase_test_case_6, type, 'IOCaseTestCase', 'Lorg/apache/commons/io/IOCaseTestCase;').
name_ref(t_pattern_3, type, 'Pattern', 'Ljava/util/regex/Pattern;').
name_ref(v_end_len_90, var, 'endLen', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z#endLen').
name_ref(p_base_path_17, param, 'basePath', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#basePath#0#0').
name_ref(p_canonical_child_20, param, 'canonicalChild', 'Lorg/apache/commons/io/FilenameUtils;.directoryContains(Ljava/lang/String;Ljava/lang/String;)Z|Ljava/io/IOException;#canonicalChild#0#1').
name_ref(p_canonical_parent_19, param, 'canonicalParent', 'Lorg/apache/commons/io/FilenameUtils;.directoryContains(Ljava/lang/String;Ljava/lang/String;)Z|Ljava/io/IOException;#canonicalParent#0#0').
name_ref(p_case_sensitivity_53, param, 'caseSensitivity', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#caseSensitivity#0#3').
name_ref(p_case_sensitivity_66, param, 'caseSensitivity', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z#caseSensitivity#0#2').
name_ref(p_ch_7, param, 'ch', 'Lorg/apache/commons/io/FilenameUtils;.isSeparator(C)Z#ch#0#0').
name_ref(p_end_89, param, 'end', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z#end#0#1').
name_ref(p_extension_55, param, 'extension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z#extension#0#1').
name_ref(p_extensions_57, param, 'extensions', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z#extensions#0#1').
name_ref(p_extensions_59, param, 'extensions', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Z#extensions#0#1').
name_ref(p_file_name1_42, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name1_44, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name1_46, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name1_48, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name1_50, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#fileName1#0#0').
name_ref(p_file_name2_43, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name2_45, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name2_47, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name2_49, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name2_51, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#fileName2#0#1').
name_ref(p_file_name_11, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_12, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_14, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_24, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPrefixLength(Ljava/lang/String;)I#fileName#0#0').
name_ref(p_file_name_25, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.indexOfLastSeparator(Ljava/lang/String;)I#fileName#0#0').
name_ref(p_file_name_26, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.indexOfExtension(Ljava/lang/String;)I|Ljava/lang/IllegalArgumentException;#fileName#0#0').
name_ref(p_file_name_27, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPrefix(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_28, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPath(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_29, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_30, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.doGetPath(Ljava/lang/String;I)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_32, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getFullPath(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_33, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_34, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_36, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getName(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_38, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getBaseName(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_39, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getExtension(Ljava/lang/String;)Ljava/lang/String;|Ljava/lang/IllegalArgumentException;#fileName#0#0').
name_ref(p_file_name_40, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getAdsCriticalOffset(Ljava/lang/String;)I#fileName#0#0').
name_ref(p_file_name_41, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.removeExtension(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_54, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_name_56, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_name_58, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Z#fileName#0#0').
name_ref(p_file_name_60, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_name_62, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_name_64, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z#fileName#0#0').
name_ref(p_file_name_8, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_9, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;Z)Ljava/lang/String;#fileName#0#0').
name_ref(p_full_file_name_to_add_18, param, 'fullFileNameToAdd', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#fullFileNameToAdd#0#1').
name_ref(p_include_separator_35, param, 'includeSeparator', 'Lorg/apache/commons/io/FilenameUtils;.doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;#includeSeparator#0#1').
name_ref(p_inet_6address_71, param, 'inet6Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv6Address(Ljava/lang/String;)Z#inet6Address#0#0').
name_ref(p_keep_separator_16, param, 'keepSeparator', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;#keepSeparator#0#2').
name_ref(p_name_68, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isValidHostName(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_70, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isIPv4Address(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_73, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isRFC3986HostName(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_77, param, 'name', 'Lorg/apache/commons/io/IOCase;.forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;#name#0#0').
name_ref(p_name_78, param, 'name', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V#name#0#0').
name_ref(p_normalized_52, param, 'normalized', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#normalized#0#2').
name_ref(p_path_21, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_22, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_23, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_37, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.failIfNullBytePresent(Ljava/lang/String;)V#path#0#0').
name_ref(p_search_93, param, 'search', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#search#0#2').
name_ref(p_search_96, param, 'search', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#search#0#2').
name_ref(p_sensitive_79, param, 'sensitive', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V#sensitive#0#1').
name_ref(p_separator_15, param, 'separator', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_add_31, param, 'separatorAdd', 'Lorg/apache/commons/io/FilenameUtils;.doGetPath(Ljava/lang/String;I)Ljava/lang/String;#separatorAdd#0#1').
name_ref(p_start_87, param, 'start', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z#start#0#1').
name_ref(p_str_1_82, param, 'str1', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I#str1#0#0').
name_ref(p_str_1_84, param, 'str1', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z#str1#0#0').
name_ref(p_str_2_83, param, 'str2', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I#str2#0#1').
name_ref(p_str_2_85, param, 'str2', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z#str2#0#1').
name_ref(p_str_86, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_88, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_91, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#str#0#0').
name_ref(p_str_94, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#str#0#0').
name_ref(p_str_start_index_92, param, 'strStartIndex', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#strStartIndex#0#1').
name_ref(p_str_start_index_95, param, 'strStartIndex', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#strStartIndex#0#1').
name_ref(p_text_67, param, 'text', 'Lorg/apache/commons/io/FilenameUtils;.splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;#text#0#0').
name_ref(p_unix_separator_10, param, 'unixSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;Z)Ljava/lang/String;#unixSeparator#0#1').
name_ref(p_unix_separator_13, param, 'unixSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;#unixSeparator#0#1').
name_ref(p_value_98, param, 'value', 'Lorg/apache/commons/io/IOCaseTestCase;.serialize(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;|Ljava/lang/Exception;#value#0#0').
name_ref(p_wildcard_matcher_61, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z#wildcardMatcher#0#1').
name_ref(p_wildcard_matcher_63, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#wildcardMatcher#0#1').
name_ref(p_wildcard_matcher_65, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z#wildcardMatcher#0#1').
name_ref(f_empty_string_array_1, field, 'EMPTY_STRING_ARRAY', 'Lorg/apache/commons/io/FilenameUtils;.EMPTY_STRING_ARRAY)[Ljava/lang/String;').
name_ref(f_extension_separator_3, field, 'EXTENSION_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.EXTENSION_SEPARATOR)C').
name_ref(f_extension_separator_str_2, field, 'EXTENSION_SEPARATOR_STR', 'Lorg/apache/commons/io/FilenameUtils;.EXTENSION_SEPARATOR_STR)Ljava/lang/String;').
name_ref(f_insensitive_75, field, 'INSENSITIVE', 'Lorg/apache/commons/io/IOCase;.INSENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(f_ipv4_pattern_69, field, 'IPV4_PATTERN', 'Lorg/apache/commons/io/FilenameUtils;.IPV4_PATTERN)Ljava/util/regex/Pattern;').
name_ref(f_name_80, field, 'name', 'Lorg/apache/commons/io/IOCase;.name)Ljava/lang/String;').
name_ref(f_other_separator_5, field, 'OTHER_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.OTHER_SEPARATOR)C').
name_ref(f_reg_name_part_pattern_72, field, 'REG_NAME_PART_PATTERN', 'Lorg/apache/commons/io/FilenameUtils;.REG_NAME_PART_PATTERN)Ljava/util/regex/Pattern;').
name_ref(f_sensitive_74, field, 'SENSITIVE', 'Lorg/apache/commons/io/IOCase;.SENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(f_sensitive_81, field, 'sensitive', 'Lorg/apache/commons/io/IOCase;.sensitive)Z').
name_ref(f_system_76, field, 'SYSTEM', 'Lorg/apache/commons/io/IOCase;.SYSTEM)Lorg/apache/commons/io/IOCase;').
name_ref(f_system_separator_4, field, 'SYSTEM_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.SYSTEM_SEPARATOR)C').
name_ref(f_windows_97, field, 'WINDOWS', 'Lorg/apache/commons/io/IOCaseTestCase;.WINDOWS)Z').
name_ref(f_windows_separator_6, field, 'WINDOWS_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.WINDOWS_SEPARATOR)C').
name_ref(m_assert_false_73, method, 'assertFalse', 'Lorg/junit/jupiter/api/Assertions;.assertFalse(Z)V').
name_ref(m_assert_true_72, method, 'assertTrue', 'Lorg/junit/jupiter/api/Assertions;.assertTrue(Z)V').
name_ref(m_check_compare_to_53, method, 'checkCompareTo', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I').
name_ref(m_check_ends_with_58, method, 'checkEndsWith', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_check_equals_54, method, 'checkEquals', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_check_index_of_59, method, 'checkIndexOf', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I').
name_ref(m_check_region_matches_60, method, 'checkRegionMatches', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z').
name_ref(m_check_starts_with_55, method, 'checkStartsWith', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_compile_44, method, 'compile', 'Ljava/util/regex/Pattern;.compile(Ljava/lang/String;)Ljava/util/regex/Pattern;').
name_ref(m_concat_10, method, 'concat', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_directory_contains_11, method, 'directoryContains', 'Lorg/apache/commons/io/FilenameUtils;.directoryContains(Ljava/lang/String;Ljava/lang/String;)Z|Ljava/io/IOException;').
name_ref(m_do_get_full_path_24, method, 'doGetFullPath', 'Lorg/apache/commons/io/FilenameUtils;.doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_do_get_path_21, method, 'doGetPath', 'Lorg/apache/commons/io/FilenameUtils;.doGetPath(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_do_normalize_9, method, 'doNormalize', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;').
name_ref(m_equals_31, method, 'equals', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_35, method, 'equals', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z').
name_ref(m_equals_normalized_33, method, 'equalsNormalized', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_normalized_on_system_34, method, 'equalsNormalizedOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_on_system_32, method, 'equalsOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_fail_if_null_byte_present_26, method, 'failIfNullBytePresent', 'Lorg/apache/commons/io/FilenameUtils;.failIfNullBytePresent(Ljava/lang/String;)V').
name_ref(m_filename_utils_3, method, 'FilenameUtils', 'Lorg/apache/commons/io/FilenameUtils;.()V').
name_ref(m_for_name_48, method, 'forName', 'Lorg/apache/commons/io/IOCase;.forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;').
name_ref(m_get_ads_critical_offset_29, method, 'getAdsCriticalOffset', 'Lorg/apache/commons/io/FilenameUtils;.getAdsCriticalOffset(Ljava/lang/String;)I').
name_ref(m_get_base_name_27, method, 'getBaseName', 'Lorg/apache/commons/io/FilenameUtils;.getBaseName(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_extension_28, method, 'getExtension', 'Lorg/apache/commons/io/FilenameUtils;.getExtension(Ljava/lang/String;)Ljava/lang/String;|Ljava/lang/IllegalArgumentException;').
name_ref(m_get_full_path_22, method, 'getFullPath', 'Lorg/apache/commons/io/FilenameUtils;.getFullPath(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_full_path_no_end_separator_23, method, 'getFullPathNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_name_25, method, 'getName', 'Lorg/apache/commons/io/FilenameUtils;.getName(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_name_51, method, 'getName', 'Lorg/apache/commons/io/IOCase;.getName()Ljava/lang/String;').
name_ref(m_get_path_19, method, 'getPath', 'Lorg/apache/commons/io/FilenameUtils;.getPath(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_path_no_end_separator_20, method, 'getPathNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_prefix_18, method, 'getPrefix', 'Lorg/apache/commons/io/FilenameUtils;.getPrefix(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_prefix_length_15, method, 'getPrefixLength', 'Lorg/apache/commons/io/FilenameUtils;.getPrefixLength(Ljava/lang/String;)I').
name_ref(m_index_of_extension_17, method, 'indexOfExtension', 'Lorg/apache/commons/io/FilenameUtils;.indexOfExtension(Ljava/lang/String;)I|Ljava/lang/IllegalArgumentException;').
name_ref(m_index_of_last_separator_16, method, 'indexOfLastSeparator', 'Lorg/apache/commons/io/FilenameUtils;.indexOfLastSeparator(Ljava/lang/String;)I').
name_ref(m_iocase_49, method, 'IOCase', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V').
name_ref(m_is_case_sensitive_52, method, 'isCaseSensitive', 'Lorg/apache/commons/io/IOCase;.isCaseSensitive()Z').
name_ref(m_is_extension_36, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_is_extension_37, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z').
name_ref(m_is_extension_38, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Z').
name_ref(m_is_ipv4_address_45, method, 'isIPv4Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv4Address(Ljava/lang/String;)Z').
name_ref(m_is_ipv6_address_46, method, 'isIPv6Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv6Address(Ljava/lang/String;)Z').
name_ref(m_is_rfc3986host_name_47, method, 'isRFC3986HostName', 'Lorg/apache/commons/io/FilenameUtils;.isRFC3986HostName(Ljava/lang/String;)Z').
name_ref(m_is_separator_4, method, 'isSeparator', 'Lorg/apache/commons/io/FilenameUtils;.isSeparator(C)Z').
name_ref(m_is_system_windows_2, method, 'isSystemWindows', 'Lorg/apache/commons/io/FilenameUtils;.isSystemWindows()Z').
name_ref(m_is_valid_host_name_43, method, 'isValidHostName', 'Lorg/apache/commons/io/FilenameUtils;.isValidHostName(Ljava/lang/String;)Z').
name_ref(m_length_57, method, 'length', 'Ljava/lang/String;.length()I').
name_ref(m_normalize_5, method, 'normalize', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_normalize_6, method, 'normalize', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_normalize_no_end_separator_7, method, 'normalizeNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_normalize_no_end_separator_8, method, 'normalizeNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_read_resolve_50, method, 'readResolve', 'Lorg/apache/commons/io/IOCase;.readResolve()Ljava/lang/Object;').
name_ref(m_region_matches_56, method, 'regionMatches', 'Ljava/lang/String;.regionMatches(ZILjava/lang/String;II)Z').
name_ref(m_remove_extension_30, method, 'removeExtension', 'Lorg/apache/commons/io/FilenameUtils;.removeExtension(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_separators_to_system_14, method, 'separatorsToSystem', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_separators_to_unix_12, method, 'separatorsToUnix', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_separators_to_windows_13, method, 'separatorsToWindows', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_serialize_81, method, 'serialize', 'Lorg/apache/commons/io/IOCaseTestCase;.serialize(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;|Ljava/lang/Exception;').
name_ref(m_split_on_tokens_42, method, 'splitOnTokens', 'Lorg/apache/commons/io/FilenameUtils;.splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_test__serialization_63, method, 'test_serialization', 'Lorg/apache/commons/io/IOCaseTestCase;.test_serialization()V|Ljava/lang/Exception;').
name_ref(m_test_check_compare_case_68, method, 'test_checkCompare_case', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkCompare_case()V|Ljava/lang/Exception;').
name_ref(m_test_check_compare_functionality_67, method, 'test_checkCompare_functionality', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkCompare_functionality()V|Ljava/lang/Exception;').
name_ref(m_test_check_ends_with_case_76, method, 'test_checkEndsWith_case', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkEndsWith_case()V|Ljava/lang/Exception;').
name_ref(m_test_check_ends_with_functionality_75, method, 'test_checkEndsWith_functionality', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkEndsWith_functionality()V|Ljava/lang/Exception;').
name_ref(m_test_check_equals_case_70, method, 'test_checkEquals_case', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkEquals_case()V|Ljava/lang/Exception;').
name_ref(m_test_check_equals_functionality_69, method, 'test_checkEquals_functionality', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkEquals_functionality()V|Ljava/lang/Exception;').
name_ref(m_test_check_index_of_case_78, method, 'test_checkIndexOf_case', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkIndexOf_case()V|Ljava/lang/Exception;').
name_ref(m_test_check_index_of_functionality_77, method, 'test_checkIndexOf_functionality', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkIndexOf_functionality()V|Ljava/lang/Exception;').
name_ref(m_test_check_region_matches_case_80, method, 'test_checkRegionMatches_case', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkRegionMatches_case()V|Ljava/lang/Exception;').
name_ref(m_test_check_region_matches_functionality_79, method, 'test_checkRegionMatches_functionality', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkRegionMatches_functionality()V|Ljava/lang/Exception;').
name_ref(m_test_check_starts_with_case_74, method, 'test_checkStartsWith_case', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkStartsWith_case()V|Ljava/lang/Exception;').
name_ref(m_test_check_starts_with_functionality_71, method, 'test_checkStartsWith_functionality', 'Lorg/apache/commons/io/IOCaseTestCase;.test_checkStartsWith_functionality()V|Ljava/lang/Exception;').
name_ref(m_test_for_name_62, method, 'test_forName', 'Lorg/apache/commons/io/IOCaseTestCase;.test_forName()V|Ljava/lang/Exception;').
name_ref(m_test_get_name_64, method, 'test_getName', 'Lorg/apache/commons/io/IOCaseTestCase;.test_getName()V|Ljava/lang/Exception;').
name_ref(m_test_is_case_sensitive_66, method, 'test_isCaseSensitive', 'Lorg/apache/commons/io/IOCaseTestCase;.test_isCaseSensitive()V|Ljava/lang/Exception;').
name_ref(m_test_to_string_65, method, 'test_toString', 'Lorg/apache/commons/io/IOCaseTestCase;.test_toString()V|Ljava/lang/Exception;').
name_ref(m_to_string_1, method, 'toString', 'Ljava/lang/Character;.toString(C)Ljava/lang/String;').
name_ref(m_to_string_61, method, 'toString', 'Lorg/apache/commons/io/IOCase;.toString()Ljava/lang/String;').
name_ref(m_wildcard_match_39, method, 'wildcardMatch', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_wildcard_match_41, method, 'wildcardMatch', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z').
name_ref(m_wildcard_match_on_system_40, method, 'wildcardMatchOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(q_sensitive_2, q_name, 'IOCase.SENSITIVE', 'Lorg/apache/commons/io/IOCase;:Lorg/apache/commons/io/IOCase;.SENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(q_separator_char_1, q_name, 'File.separatorChar', 'Ljava/io/File;:Ljava/io/File;.separatorChar)C').

%%% End of Code Facts

