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
trace(trace_3, trace_2, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_4, trace_3, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.io.IOCaseTestCase', 'test_checkEndsWith_functionality').
trace(trace_6, failure_2, m_check_ends_with_58, line(iocase_1, 196), failure_2, target).
trace(trace_7, trace_6, m_test_check_ends_with_functionality_75, line(iocase_test_case_1, 206), failure_2, target).
trace(trace_8, trace_7, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_9, trace_8, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).
trace(trace_10, trace_9, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(p_start_87, null, line(iocase_1, 180)).
val(p_end_89, null, line(iocase_1, 196)).



%%% End of Facts