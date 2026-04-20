%%% Logic-FL Facts
:- style_check(-discontiguous).

%double_metaphone_1 - org.apache.commons.codec.language.DoubleMetaphone
assign(f_silent_start_1, double_metaphone_1_expr1, line(double_metaphone_1, 47)).
assign(f_l_r_n_m_b_h_f_v_w_space_2, double_metaphone_1_expr2, line(double_metaphone_1, 49)).
assign(f_es_ep_eb_el_ey_ib_il_in_ie_ei_er_3, double_metaphone_1_expr3, line(double_metaphone_1, 51)).
assign(f_l_t_k_s_n_m_b_z_4, double_metaphone_1_expr4, line(double_metaphone_1, 53)).
assign(f_max_code_len_5, double_metaphone_1_literal1, line(double_metaphone_1, 59)).
method_invoc(double_metaphone_1_expr5, m_object_2, line(double_metaphone_1, 65)).
param(p_value_6, 1, m_double_metaphone_3).
param(p_value_7, 1, m_double_metaphone_4).
param(p_alternate_8, 2, m_double_metaphone_4).
assign(p_value_7, double_metaphone_1_expr7, line(double_metaphone_1, 86)).
method_invoc(double_metaphone_1_expr7, m_clean_input_5, line(double_metaphone_1, 86)).
argument(p_value_7, 1, double_metaphone_1_expr7).
return(double_metaphone_1_literal3, m_double_metaphone_4, line(double_metaphone_1, 88)).
param(p_obj_9, 1, m_encode_6).
throw(m_encode_6, encoder_exception).
param(p_value_10, 1, m_encode_7).
param(p_value_1_11, 1, m_is_double_metaphone_equal_8).
param(p_value_2_12, 2, m_is_double_metaphone_equal_8).
param(p_value_1_13, 1, m_is_double_metaphone_equal_9).
param(p_value_2_14, 2, m_is_double_metaphone_equal_9).
param(p_alternate_15, 3, m_is_double_metaphone_equal_9).
return(double_metaphone_1_expr9, m_is_double_metaphone_equal_9, line(double_metaphone_1, 244)).
method_invoc(double_metaphone_1_expr9, m_equals_10, line(double_metaphone_1, 244)).
argument(double_metaphone_1_expr10, 1, double_metaphone_1_expr9).
ref(double_metaphone_1_expr11, double_metaphone_1_expr9, line(double_metaphone_1, 244)).
method_invoc(double_metaphone_1_expr11, m_double_metaphone_4, line(double_metaphone_1, 244)).
argument(p_value_1_13, 1, double_metaphone_1_expr11).
argument(p_alternate_15, 2, double_metaphone_1_expr11).
method_invoc(double_metaphone_1_expr10, m_double_metaphone_4, line(double_metaphone_1, 244)).
argument(p_value_2_14, 1, double_metaphone_1_expr10).
argument(p_alternate_15, 2, double_metaphone_1_expr10).
param(p_max_code_len_16, 1, m_set_max_code_len_12).
param(p_result_17, 1, m_handle_aeiouy_13).
param(p_index_18, 2, m_handle_aeiouy_13).
param(p_value_19, 1, m_handle_c_14).
param(p_result_20, 2, m_handle_c_14).
param(p_index_21, 3, m_handle_c_14).
param(p_value_22, 1, m_handle_cc_15).
param(p_result_23, 2, m_handle_cc_15).
param(p_index_24, 3, m_handle_cc_15).
param(p_value_25, 1, m_handle_ch_16).
param(p_result_26, 2, m_handle_ch_16).
param(p_index_27, 3, m_handle_ch_16).
param(p_value_28, 1, m_handle_d_17).
param(p_result_29, 2, m_handle_d_17).
param(p_index_30, 3, m_handle_d_17).
param(p_value_31, 1, m_handle_g_18).
param(p_result_32, 2, m_handle_g_18).
param(p_index_33, 3, m_handle_g_18).
param(p_slavo_germanic_34, 4, m_handle_g_18).
param(p_value_35, 1, m_handle_gh_19).
param(p_result_36, 2, m_handle_gh_19).
param(p_index_37, 3, m_handle_gh_19).
param(p_value_38, 1, m_handle_h_20).
param(p_result_39, 2, m_handle_h_20).
param(p_index_40, 3, m_handle_h_20).
param(p_value_41, 1, m_handle_j_21).
param(p_result_42, 2, m_handle_j_21).
param(p_index_43, 3, m_handle_j_21).
param(p_slavo_germanic_44, 4, m_handle_j_21).
param(p_value_45, 1, m_handle_l_22).
param(p_result_46, 2, m_handle_l_22).
param(p_index_47, 3, m_handle_l_22).
param(p_value_48, 1, m_handle_p_23).
param(p_result_49, 2, m_handle_p_23).
param(p_index_50, 3, m_handle_p_23).
param(p_value_51, 1, m_handle_r_24).
param(p_result_52, 2, m_handle_r_24).
param(p_index_53, 3, m_handle_r_24).
param(p_slavo_germanic_54, 4, m_handle_r_24).
param(p_value_55, 1, m_handle_s_25).
param(p_result_56, 2, m_handle_s_25).
param(p_index_57, 3, m_handle_s_25).
param(p_slavo_germanic_58, 4, m_handle_s_25).
param(p_value_59, 1, m_handle_sc_26).
param(p_result_60, 2, m_handle_sc_26).
param(p_index_61, 3, m_handle_sc_26).
param(p_value_62, 1, m_handle_t_27).
param(p_result_63, 2, m_handle_t_27).
param(p_index_64, 3, m_handle_t_27).
param(p_value_65, 1, m_handle_w_28).
param(p_result_66, 2, m_handle_w_28).
param(p_index_67, 3, m_handle_w_28).
param(p_value_68, 1, m_handle_x_29).
param(p_result_69, 2, m_handle_x_29).
param(p_index_70, 3, m_handle_x_29).
param(p_value_71, 1, m_handle_z_30).
param(p_result_72, 2, m_handle_z_30).
param(p_index_73, 3, m_handle_z_30).
param(p_slavo_germanic_74, 4, m_handle_z_30).
param(p_value_75, 1, m_condition_c0_31).
param(p_index_76, 2, m_condition_c0_31).
param(p_value_77, 1, m_condition_ch0_32).
param(p_index_78, 2, m_condition_ch0_32).
param(p_value_79, 1, m_condition_ch1_33).
param(p_index_80, 2, m_condition_ch1_33).
param(p_value_81, 1, m_condition_l0_34).
param(p_index_82, 2, m_condition_l0_34).
param(p_value_83, 1, m_condition_m0_35).
param(p_index_84, 2, m_condition_m0_35).
param(p_value_85, 1, m_is_slavo_germanic_36).
param(p_ch_86, 1, m_is_vowel_37).
param(p_value_87, 1, m_is_silent_start_38).
param(p_input_88, 1, m_clean_input_5).
assign(p_input_88, double_metaphone_1_expr14, line(double_metaphone_1, 891)).
method_invoc(double_metaphone_1_expr14, m_trim_39, line(double_metaphone_1, 891)).
ref(p_input_88, double_metaphone_1_expr14, line(double_metaphone_1, 891)).
method_invoc(double_metaphone_1_expr16, m_length_40, line(double_metaphone_1, 892)).
ref(p_input_88, double_metaphone_1_expr16, line(double_metaphone_1, 892)).
return(double_metaphone_1_literal6, m_clean_input_5, line(double_metaphone_1, 893)).
param(p_value_89, 1, m_char_at_41).
param(p_index_90, 2, m_char_at_41).
param(p_value_91, 1, m_contains_42).
param(p_start_92, 2, m_contains_42).
param(p_length_93, 3, m_contains_42).
param(p_criteria_94, 4, m_contains_42).
param(p_max_length_95, 1, m_double_metaphone_result_43).
param(p_value_96, 1, m_append_44).
param(p_primary_97, 1, m_append_45).
param(p_alternate_98, 2, m_append_45).
param(p_value_99, 1, m_append_primary_46).
param(p_value_100, 1, m_append_alternate_47).
param(p_value_101, 1, m_append_48).
param(p_primary_102, 1, m_append_49).
param(p_alternate_103, 2, m_append_49).
param(p_value_104, 1, m_append_primary_50).
param(p_value_105, 1, m_append_alternate_51).

%double_metaphone_test_1 - org.apache.commons.codec.language.DoubleMetaphoneTest
assign(f_fixture_106, double_metaphone_test_1_expr1, line(double_metaphone_test_1, 48)).
assign(f_matches_107, double_metaphone_test_1_expr4, line(double_metaphone_test_1, 600)).
param(p_expected_108, 1, m_assert_double_metaphone_55).
param(p_source_109, 2, m_assert_double_metaphone_55).
param(p_expected_110, 1, m_assert_double_metaphone_alt_56).
param(p_source_111, 2, m_assert_double_metaphone_alt_56).
return(double_metaphone_test_1_expr7, m_create_string_encoder_57, line(double_metaphone_test_1, 1030)).
method_invoc(double_metaphone_test_1_expr7, m_double_metaphone_1, line(double_metaphone_test_1, 1030)).
param(p_pairs_112, 1, m_double_metaphone_equal_test_58).
param(p_use_alternate_113, 2, m_double_metaphone_equal_test_58).
method_invoc(double_metaphone_test_1_expr8, m_validate_fixture_59, line(double_metaphone_test_1, 1034)).
argument(p_pairs_112, 1, double_metaphone_test_1_expr8).
ref(double_metaphone_test_1_expr9, double_metaphone_test_1_expr8, line(double_metaphone_test_1, 1034)).
ref(p_pairs_112, double_metaphone_test_1_stmt3, line(double_metaphone_test_1, 1035)).
assign(v_name_0_115, double_metaphone_test_1_expr10, line(double_metaphone_test_1, 1036)).
ref(v_pair_114, double_metaphone_test_1_expr10, line(double_metaphone_test_1, 1036)).
assign(v_name_1_116, double_metaphone_test_1_expr11, line(double_metaphone_test_1, 1037)).
ref(v_pair_114, double_metaphone_test_1_expr11, line(double_metaphone_test_1, 1037)).
assign(v_fail_msg_117, double_metaphone_test_1_expr12, line(double_metaphone_test_1, 1038)).
method_invoc(double_metaphone_test_1_expr13, m_assert_true_60, line(double_metaphone_test_1, 1039)).
argument(v_fail_msg_117, 1, double_metaphone_test_1_expr13).
argument(double_metaphone_test_1_expr14, 2, double_metaphone_test_1_expr13).
method_invoc(double_metaphone_test_1_expr14, m_is_double_metaphone_equal_9, line(double_metaphone_test_1, 1039)).
throw(double_metaphone_test_1_expr14, null_pointer_exception, line(double_metaphone_test_1, 1039)).
argument(v_name_0_115, 1, double_metaphone_test_1_expr14).
argument(v_name_1_116, 2, double_metaphone_test_1_expr14).
argument(p_use_alternate_113, 3, double_metaphone_test_1_expr14).
ref(double_metaphone_test_1_expr15, double_metaphone_test_1_expr14, line(double_metaphone_test_1, 1039)).
method_invoc(double_metaphone_test_1_expr15, m_get_string_encoder_61, line(double_metaphone_test_1, 1039)).
ref(double_metaphone_test_1_expr16, double_metaphone_test_1_expr15, line(double_metaphone_test_1, 1039)).
param(p_alternate_118, 1, m_double_metaphone_not_equal_test_62).
throw(m_test_codec184_64, throwable).
method_invoc(double_metaphone_test_1_expr17, m_assert_true_65, line(double_metaphone_test_1, 1065)).
argument(double_metaphone_test_1_expr18, 1, double_metaphone_test_1_expr17).
method_invoc(double_metaphone_test_1_expr18, m_is_double_metaphone_equal_9, line(double_metaphone_test_1, 1065)).
throw(double_metaphone_test_1_expr18, null_pointer_exception, line(double_metaphone_test_1, 1065)).
argument(double_metaphone_test_1_literal11, 1, double_metaphone_test_1_expr18).
argument(double_metaphone_test_1_literal12, 2, double_metaphone_test_1_expr18).
argument(double_metaphone_test_1_literal13, 3, double_metaphone_test_1_expr18).
ref(double_metaphone_test_1_expr19, double_metaphone_test_1_expr18, line(double_metaphone_test_1, 1065)).
method_invoc(double_metaphone_test_1_expr19, m_double_metaphone_1, line(double_metaphone_test_1, 1065)).
assign(v_test_fixture_119, double_metaphone_test_1_expr20, line(double_metaphone_test_1, 1124)).
method_invoc(double_metaphone_test_1_expr23, m_double_metaphone_equal_test_58, line(double_metaphone_test_1, 1136)).
argument(v_test_fixture_119, 1, double_metaphone_test_1_expr23).
argument(double_metaphone_test_1_literal14, 2, double_metaphone_test_1_expr23).
param(p_pairs_120, 1, m_validate_fixture_59).
ref(p_pairs_120, q_length_1, line(double_metaphone_test_1, 1242)).
assign(v_i_121, double_metaphone_test_1_literal16, line(double_metaphone_test_1, 1245)).
ref(p_pairs_120, q_length_2, line(double_metaphone_test_1, 1245)).
ref(double_metaphone_test_1_expr30, double_metaphone_test_1_expr29, line(double_metaphone_test_1, 1246)).
ref(p_pairs_120, double_metaphone_test_1_expr30, line(double_metaphone_test_1, 1246)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.codec.language.DoubleMetaphoneTest', 'testIsDoubleMetaphoneEqualBasic').
trace(trace_1, failure_1, m_is_double_metaphone_equal_9, line(double_metaphone_1, 244), failure_1, target).
trace(trace_2, trace_1, m_double_metaphone_equal_test_58, line(double_metaphone_test_1, 1039), failure_1, target).
trace(trace_3, trace_2, m_test_is_double_metaphone_equal_basic_68, line(double_metaphone_test_1, 1136), failure_1, target).
trace(trace_4, trace_3, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_6, trace_5, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_7, trace_6, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_8, trace_7, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_9, trace_8, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_10, trace_9, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_11, trace_10, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_12, trace_11, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_13, trace_12, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_14, trace_13, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_16, trace_15, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_17, trace_16, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_18, trace_17, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_19, trace_18, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_20, trace_19, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_21, trace_20, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_22, trace_21, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_23, trace_22, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.codec.language.DoubleMetaphoneTest', 'testCodec184').
trace(trace_24, failure_2, m_is_double_metaphone_equal_9, line(double_metaphone_1, 244), failure_2, target).
trace(trace_25, trace_24, m_test_codec184_64, line(double_metaphone_test_1, 1065), failure_2, target).
trace(trace_26, trace_25, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_2, non_target).
trace(trace_27, trace_26, 'invoke', line(java_lang_reflect_method, 578), failure_2, non_target).
trace(trace_28, trace_27, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_2, non_target).
trace(trace_29, trace_28, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_2, non_target).
trace(trace_30, trace_29, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_2, non_target).
trace(trace_31, trace_30, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_2, non_target).
trace(trace_32, trace_31, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_33, trace_32, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_2, non_target).
trace(trace_34, trace_33, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_2, non_target).
trace(trace_35, trace_34, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_2, non_target).
trace(trace_36, trace_35, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_2, non_target).
trace(trace_37, trace_36, 'run', line(org_junit_runners_parent_runner_4, 331), failure_2, non_target).
trace(trace_38, trace_37, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_2, non_target).
trace(trace_39, trace_38, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_2, non_target).
trace(trace_40, trace_39, 'access$100', line(org_junit_runners_parent_runner, 66), failure_2, non_target).
trace(trace_41, trace_40, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_2, non_target).
trace(trace_42, trace_41, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_43, trace_42, 'run', line(org_junit_runners_parent_runner, 413), failure_2, non_target).
trace(trace_44, trace_43, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_45, trace_44, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(double_metaphone_1_expr11, null, line(double_metaphone_1, 244)).
val(double_metaphone_1_expr10, null, line(double_metaphone_1, 244)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(double_metaphone_1, 'org.apache.commons.codec.language.DoubleMetaphone').
class(double_metaphone_test_1, 'org.apache.commons.codec.language.DoubleMetaphoneTest').

%%% Methods
%double_metaphone_1 - org.apache.commons.codec.language.DoubleMetaphone
method(m_double_metaphone_1, range(double_metaphone_1, 2518, 124, 61, 66)).
method(m_double_metaphone_3, range(double_metaphone_1, 2648, 241, 68, 76)).
method(m_double_metaphone_4, range(double_metaphone_1, 2895, 3906, 78, 190)).
method(m_encode_6, range(double_metaphone_1, 6807, 641, 192, 206)).
method(m_encode_7, range(double_metaphone_1, 7454, 241, 208, 217)).
method(m_is_double_metaphone_equal_8, range(double_metaphone_1, 7701, 616, 219, 231)).
method(m_is_double_metaphone_equal_9, range(double_metaphone_1, 8323, 717, 233, 245)).
method(m_get_max_code_len_11, range(double_metaphone_1, 9046, 132, 247, 253)).
method(m_set_max_code_len_12, range(double_metaphone_1, 9184, 184, 255, 261)).
method(m_handle_aeiouy_13, range(double_metaphone_1, 9404, 250, 265, 273)).
method(m_handle_c_14, range(double_metaphone_1, 9660, 1962, 275, 325)).
method(m_handle_cc_15, range(double_metaphone_1, 11628, 814, 327, 349)).
method(m_handle_ch_16, range(double_metaphone_1, 12448, 980, 351, 378)).
method(m_handle_d_17, range(double_metaphone_1, 13434, 692, 380, 402)).
method(m_handle_g_18, range(double_metaphone_1, 14132, 2421, 404, 460)).
method(m_handle_gh_19, range(double_metaphone_1, 16559, 1256, 462, 492)).
method(m_handle_h_20, range(double_metaphone_1, 17821, 493, 494, 508)).
method(m_handle_j_21, range(double_metaphone_1, 18320, 1514, 510, 544)).
method(m_handle_l_22, range(double_metaphone_1, 19840, 468, 546, 562)).
method(m_handle_p_23, range(double_metaphone_1, 20314, 405, 564, 576)).
method(m_handle_r_24, range(double_metaphone_1, 20725, 537, 578, 591)).
method(m_handle_s_25, range(double_metaphone_1, 21268, 2135, 593, 641)).
method(m_handle_sc_26, range(double_metaphone_1, 23409, 1074, 643, 670)).
method(m_handle_t_27, range(double_metaphone_1, 24489, 987, 672, 697)).
method(m_handle_w_28, range(double_metaphone_1, 25482, 1414, 699, 733)).
method(m_handle_x_29, range(double_metaphone_1, 26902, 628, 735, 752)).
method(m_handle_z_30, range(double_metaphone_1, 27536, 752, 754, 773)).
method(m_condition_c0_31, range(double_metaphone_1, 28326, 621, 777, 794)).
method(m_condition_ch0_32, range(double_metaphone_1, 28953, 487, 796, 810)).
method(m_condition_ch1_33, range(double_metaphone_1, 29446, 553, 812, 821)).
method(m_condition_l0_34, range(double_metaphone_1, 30005, 546, 823, 837)).
method(m_condition_m0_35, range(double_metaphone_1, 30557, 352, 839, 848)).
method(m_is_slavo_germanic_36, range(double_metaphone_1, 30953, 374, 852, 859)).
method(m_is_vowel_37, range(double_metaphone_1, 31333, 166, 861, 866)).
method(m_is_silent_start_38, range(double_metaphone_1, 31505, 482, 868, 882)).
method(m_clean_input_5, range(double_metaphone_1, 31993, 312, 884, 896)).
method(m_char_at_41, range(double_metaphone_1, 32311, 397, 898, 908)).
method(m_contains_42, range(double_metaphone_1, 32714, 735, 910, 928)).
method(m_double_metaphone_result_43, range(double_metaphone_1, 33844, 101, 941, 943)).
method(m_append_44, range(double_metaphone_1, 33955, 118, 945, 948)).
method(m_append_45, range(double_metaphone_1, 34083, 148, 950, 953)).
method(m_append_primary_46, range(double_metaphone_1, 34241, 171, 955, 959)).
method(m_append_alternate_47, range(double_metaphone_1, 34422, 177, 961, 965)).
method(m_append_48, range(double_metaphone_1, 34609, 120, 967, 970)).
method(m_append_49, range(double_metaphone_1, 34739, 152, 972, 975)).
method(m_append_primary_50, range(double_metaphone_1, 34901, 322, 977, 984)).
method(m_append_alternate_51, range(double_metaphone_1, 35233, 330, 986, 993)).
method(m_get_primary_52, range(double_metaphone_1, 35573, 82, 995, 997)).
method(m_get_alternate_53, range(double_metaphone_1, 35665, 86, 999, 1001)).
method(m_is_complete_54, range(double_metaphone_1, 35761, 163, 1003, 1006)).
%double_metaphone_test_1 - org.apache.commons.codec.language.DoubleMetaphoneTest
method(m_assert_double_metaphone_55, range(double_metaphone_test_1, 40503, 586, 1007, 1019)).
method(m_assert_double_metaphone_alt_56, range(double_metaphone_test_1, 41095, 232, 1021, 1026)).
method(m_create_string_encoder_57, range(double_metaphone_test_1, 41333, 107, 1028, 1031)).
method(m_double_metaphone_equal_test_58, range(double_metaphone_test_1, 41446, 865, 1033, 1046)).
method(m_double_metaphone_not_equal_test_62, range(double_metaphone_test_1, 42317, 483, 1048, 1056)).
method(m_test_ccedilla_63, range(double_metaphone_test_1, 42806, 140, 1058, 1061)).
method(m_test_codec184_64, range(double_metaphone_test_1, 42952, 558, 1063, 1071)).
method(m_test_double_metaphone_66, range(double_metaphone_test_1, 43516, 1847, 1073, 1112)).
method(m_test_empty_67, range(double_metaphone_test_1, 45369, 343, 1114, 1120)).
method(m_test_is_double_metaphone_equal_basic_68, range(double_metaphone_test_1, 45718, 614, 1122, 1138)).
method(m_test_is_double_metaphone_equal_extended1_69, range(double_metaphone_test_1, 46338, 385, 1140, 1149)).
method(m_test_is_double_metaphone_equal_extended2_70, range(double_metaphone_test_1, 46729, 272, 1151, 1157)).
method(m_test_is_double_metaphone_equal_extended3_71, range(double_metaphone_test_1, 47007, 1608, 1159, 1193)).
method(m_test_is_double_metaphone_equal_with_matches_72, range(double_metaphone_test_1, 48621, 619, 1195, 1207)).
method(m_test_is_double_metaphone_not_equal_73, range(double_metaphone_test_1, 49246, 148, 1209, 1213)).
method(m_test_ntilde_74, range(double_metaphone_test_1, 49400, 136, 1215, 1218)).
method(m_test_set_max_code_length_75, range(double_metaphone_test_1, 49542, 893, 1220, 1239)).
method(m_validate_fixture_59, range(double_metaphone_test_1, 50441, 337, 1241, 1250)).

%%% Blocks
%double_metaphone_1 - org.apache.commons.codec.language.DoubleMetaphone
block(double_metaphone_1_block1, block, double_metaphone_1_code39, body, range(double_metaphone_1, 2618, 24, 64, 66)).
block(double_metaphone_1_block2, block, double_metaphone_1_code40, body, range(double_metaphone_1, 3188, 3613, 85, 190)).
block(double_metaphone_1_block3, block, double_metaphone_1_stmt3, then_statement, range(double_metaphone_1, 3252, 36, 87, 89)).
block(double_metaphone_1_block4, block, double_metaphone_1_code41, body, range(double_metaphone_1, 8939, 101, 243, 245)).
block(double_metaphone_1_block5, block, double_metaphone_1_code42, body, range(double_metaphone_1, 32074, 231, 887, 896)).
block(double_metaphone_1_block6, block, double_metaphone_1_stmt6, then_statement, range(double_metaphone_1, 32103, 36, 888, 890)).
block(double_metaphone_1_block7, block, double_metaphone_1_stmt8, then_statement, range(double_metaphone_1, 32203, 36, 892, 894)).
%double_metaphone_test_1 - org.apache.commons.codec.language.DoubleMetaphoneTest
block(double_metaphone_test_1_block1, block, double_metaphone_test_1_code25, body, range(double_metaphone_test_1, 41395, 45, 1029, 1031)).
block(double_metaphone_test_1_block2, block, double_metaphone_test_1_code27, body, range(double_metaphone_test_1, 41535, 776, 1033, 1046)).
block(double_metaphone_test_1_block3, block, double_metaphone_test_1_stmt3, body, range(double_metaphone_test_1, 41616, 689, 1035, 1045)).
block(double_metaphone_test_1_block4, block, double_metaphone_test_1_code42, body, range(double_metaphone_test_1, 43006, 504, 1064, 1071)).
block(double_metaphone_test_1_block5, block, double_metaphone_test_1_code44, body, range(double_metaphone_test_1, 45774, 558, 1123, 1138)).
block(double_metaphone_test_1_block6, block, double_metaphone_test_1_code55, body, range(double_metaphone_test_1, 50493, 285, 1241, 1250)).
block(double_metaphone_test_1_block7, block, double_metaphone_test_1_stmt11, then_statement, range(double_metaphone_test_1, 50526, 54, 1242, 1244)).
block(double_metaphone_test_1_block8, block, double_metaphone_test_1_stmt12, body, range(double_metaphone_test_1, 50628, 144, 1245, 1249)).
block(double_metaphone_test_1_block9, block, double_metaphone_test_1_stmt13, then_statement, range(double_metaphone_test_1, 50668, 94, 1246, 1248)).

%%% Statements
%double_metaphone_1 - org.apache.commons.codec.language.DoubleMetaphone
stmt(double_metaphone_1_stmt1, super_constructor_invocation, double_metaphone_1_block1, (statements, 0), range(double_metaphone_1, 2628, 8, 65, 65)).
stmt(double_metaphone_1_stmt2, expression_statement, double_metaphone_1_block2, (statements, 0), range(double_metaphone_1, 3198, 26, 86, 86)).
stmt(double_metaphone_1_stmt3, if_statement, double_metaphone_1_block2, (statements, 1), range(double_metaphone_1, 3233, 55, 87, 89)).
stmt(double_metaphone_1_stmt4, return_statement, double_metaphone_1_block3, (statements, 0), range(double_metaphone_1, 3266, 12, 88, 88)).
stmt(double_metaphone_1_stmt5, return_statement, double_metaphone_1_block4, (statements, 0), range(double_metaphone_1, 8949, 85, 244, 244)).
stmt(double_metaphone_1_stmt6, if_statement, double_metaphone_1_block5, (statements, 0), range(double_metaphone_1, 32084, 55, 888, 890)).
stmt(double_metaphone_1_stmt7, expression_statement, double_metaphone_1_block5, (statements, 1), range(double_metaphone_1, 32148, 21, 891, 891)).
stmt(double_metaphone_1_stmt8, if_statement, double_metaphone_1_block5, (statements, 2), range(double_metaphone_1, 32178, 61, 892, 894)).
stmt(double_metaphone_1_stmt9, return_statement, double_metaphone_1_block7, (statements, 0), range(double_metaphone_1, 32217, 12, 893, 893)).
%double_metaphone_test_1 - org.apache.commons.codec.language.DoubleMetaphoneTest
stmt(double_metaphone_test_1_stmt1, return_statement, double_metaphone_test_1_block1, (statements, 0), range(double_metaphone_test_1, 41405, 29, 1030, 1030)).
stmt(double_metaphone_test_1_stmt2, expression_statement, double_metaphone_test_1_block2, (statements, 0), range(double_metaphone_test_1, 41545, 28, 1034, 1034)).
stmt(double_metaphone_test_1_stmt3, enhanced_for_statement, double_metaphone_test_1_block2, (statements, 1), range(double_metaphone_test_1, 41582, 723, 1035, 1045)).
stmt(double_metaphone_test_1_stmt4, variable_declaration_statement, double_metaphone_test_1_block3, (statements, 0), range(double_metaphone_test_1, 41630, 29, 1036, 1036)).
stmt(double_metaphone_test_1_stmt5, variable_declaration_statement, double_metaphone_test_1_block3, (statements, 1), range(double_metaphone_test_1, 41672, 29, 1037, 1037)).
stmt(double_metaphone_test_1_stmt6, variable_declaration_statement, double_metaphone_test_1_block3, (statements, 2), range(double_metaphone_test_1, 41714, 118, 1038, 1038)).
stmt(double_metaphone_test_1_stmt7, expression_statement, double_metaphone_test_1_block3, (statements, 3), range(double_metaphone_test_1, 41845, 96, 1039, 1039)).
stmt(double_metaphone_test_1_stmt8, expression_statement, double_metaphone_test_1_block4, (statements, 0), range(double_metaphone_test_1, 43016, 72, 1065, 1065)).
stmt(double_metaphone_test_1_stmt9, variable_declaration_statement, double_metaphone_test_1_block5, (statements, 0), range(double_metaphone_test_1, 45784, 435, 1124, 1135)).
stmt(double_metaphone_test_1_stmt10, expression_statement, double_metaphone_test_1_block5, (statements, 1), range(double_metaphone_test_1, 46228, 45, 1136, 1136)).
stmt(double_metaphone_test_1_stmt11, if_statement, double_metaphone_test_1_block6, (statements, 0), range(double_metaphone_test_1, 50503, 77, 1242, 1244)).
stmt(double_metaphone_test_1_stmt12, for_statement, double_metaphone_test_1_block6, (statements, 1), range(double_metaphone_test_1, 50589, 183, 1245, 1249)).
stmt(double_metaphone_test_1_stmt13, if_statement, double_metaphone_test_1_block8, (statements, 0), range(double_metaphone_test_1, 50642, 120, 1246, 1248)).

%%% Expressions
%double_metaphone_1 - org.apache.commons.codec.language.DoubleMetaphone
expr(double_metaphone_1_expr1, array_initializer, double_metaphone_1_code10, initializer, range(double_metaphone_1, 2006, 32, 48, 48), "{\"GN\",\"KN\",\"PN\",\"WR\",\"PS\"}").
expr(double_metaphone_1_expr2, array_initializer, double_metaphone_1_code18, initializer, range(double_metaphone_1, 2108, 52, 50, 50), "{\"L\",\"R\",\"N\",\"M\",\"B\",\"H\",\"F\",\"V\",\"W\",\" \"}").
expr(double_metaphone_1_expr3, array_initializer, double_metaphone_1_code26, initializer, range(double_metaphone_1, 2239, 68, 52, 52), "{\"ES\",\"EP\",\"EB\",\"EL\",\"EY\",\"IB\",\"IL\",\"IN\",\"IE\",\"EI\",\"ER\"}").
expr(double_metaphone_1_expr4, array_initializer, double_metaphone_1_code34, initializer, range(double_metaphone_1, 2369, 42, 54, 54), "{\"L\",\"T\",\"K\",\"S\",\"N\",\"M\",\"B\",\"Z\"}").
expr(double_metaphone_1_expr5, super_constructor_invocation, double_metaphone_1_block1, (statements, 0), range(double_metaphone_1, 2628, 8, 65, 65), "super();").
expr(double_metaphone_1_expr6, assignment, double_metaphone_1_stmt2, expression, range(double_metaphone_1, 3198, 25, 86, 86), "value=cleanInput(value)").
expr(double_metaphone_1_expr7, method_invocation, double_metaphone_1_expr6, right_hand_side, range(double_metaphone_1, 3206, 17, 86, 86), "cleanInput(value)").
expr(double_metaphone_1_expr8, infix_expression, double_metaphone_1_stmt3, expression, range(double_metaphone_1, 3237, 13, 87, 87), "value == null").
expr(double_metaphone_1_expr11, method_invocation, double_metaphone_1_expr9, expression, range(double_metaphone_1, 8956, 34, 244, 244), "doubleMetaphone(value1,alternate)").
expr(double_metaphone_1_expr9, method_invocation, double_metaphone_1_stmt5, expression, range(double_metaphone_1, 8956, 77, 244, 244), "doubleMetaphone(value1,alternate).equals(doubleMetaphone(value2,alternate))").
expr(double_metaphone_1_expr10, method_invocation, double_metaphone_1_expr9, (arguments, 0), range(double_metaphone_1, 8998, 34, 244, 244), "doubleMetaphone(value2,alternate)").
expr(double_metaphone_1_expr12, infix_expression, double_metaphone_1_stmt6, expression, range(double_metaphone_1, 32088, 13, 888, 888), "input == null").
expr(double_metaphone_1_expr13, assignment, double_metaphone_1_stmt7, expression, range(double_metaphone_1, 32148, 20, 891, 891), "input=input.trim()").
expr(double_metaphone_1_expr14, method_invocation, double_metaphone_1_expr13, right_hand_side, range(double_metaphone_1, 32156, 12, 891, 891), "input.trim()").
expr(double_metaphone_1_expr15, infix_expression, double_metaphone_1_stmt8, expression, range(double_metaphone_1, 32182, 19, 892, 892), "input.length() == 0").
expr(double_metaphone_1_expr16, method_invocation, double_metaphone_1_expr15, left_operand, range(double_metaphone_1, 32182, 14, 892, 892), "input.length()").
%double_metaphone_test_1 - org.apache.commons.codec.language.DoubleMetaphoneTest
expr(double_metaphone_test_1_expr1, array_initializer, double_metaphone_test_1_code15, initializer, range(double_metaphone_test_1, 1822, 22070, 48, 595), "{{\"Accosinly\",\"Occasionally\"},{\"Ciculer\",\"Circler\"},{\"Circue\",\"Circle\"},{\"Maddness\",\"Madness\"},{\"Occusionaly\",\"Occasionally\"},{\"Steffen\",\"Stephen\"},{\"Thw\",\"The\"},{\"Unformanlly\",\"Unfortunately\"},{\"Unfortally\",\"Unfortunately\"},{\"abilitey\",\"ability\"},{\"abouy\",\"about\"},{\"absorbtion\",\"absorption\"},{\"accidently\",\"accidentally\"},{\"accomodate\",\"accommodate\"},{\"acommadate\",\"accommodate\"},{\"acord\",\"accord\"},{\"adultry\",\"adultery\"},{\"aggresive\",\"aggressive\"},{\"alchohol\",\"alcohol\"},{\"alchoholic\",\"alcoholic\"},{\"allieve\",\"alive\"},{\"alot\",\"a lot\"},{\"alright\",\"all right\"},{\"amature\",\"amateur\"},{\"ambivilant\",\"ambivalent\"},{\"amification\",\"amplification\"},{\"amourfous\",\"amorphous\"},{\"annoint\",\"anoint\"},{\"annonsment\",\"announcement\"},{\"annoyting\",\"anting\"},{\"annuncio\",\"announce\"},{\"anonomy\",\"anatomy\"},{\"anotomy\",\"anatomy\"},{\"antidesestablishmentarianism\",\"antidisestablishmentarianism\"},{\"antidisestablishmentarism\",\"antidisestablishmentarianism\"},{\"anynomous\",\"anonymous\"},{\"appelet\",\"applet\"},{\"appreceiated\",\"appreciated\"},{\"appresteate\",\"appreciate\"},{\"aquantance\",\"acquaintance\"},{\"aratictature\",\"architecture\"},{\"archeype\",\"archetype\"},{\"aricticure\",\"architecture\"},{\"artic\",\"arctic\"},{\"asentote\",\"asymptote\"},{\"ast\",\"at\"},{\"asterick\",\"asterisk\"},{\"asymetric\",\"asymmetric\"},{\"atentively\",\"attentively\"},{\"autoamlly\",\"automatically\"},{\"bankrot\",\"bankrupt\"},{\"basicly\",\"basically\"},{\"batallion\",\"battalion\"},{\"bbrose\",\"browse\"},{\"beauro\",\"bureau\"},{\"beaurocracy\",\"bureaucracy\"},{\"beggining\",\"beginning\"},{\"beging\",\"beginning\"},{\"behaviour\",\"behavior\"},{\"beleive\",\"believe\"},{\"belive\",\"believe\"},{\"benidifs\",\"benefits\"},{\"bigginging\",\"beginning\"},{\"blait\",\"bleat\"},{\"bouyant\",\"buoyant\"},{\"boygot\",\"boycott\"},{\"brocolli\",\"broccoli\"},{\"buch\",\"bush\"},{\"buder\",\"butter\"},{\"budr\",\"butter\"},{\"budter\",\"butter\"},{\"buracracy\",\"bureaucracy\"},{\"burracracy\",\"bureaucracy\"},{\"buton\",\"button\"},{\"byby\",\"by by\"},{\"cauler\",\"caller\"},{\"ceasar\",\"caesar\"},{\"cemetary\",\"cemetery\"},{\"changeing\",\"changing\"},{\"cheet\",\"cheat\"},{\"cicle\",\"circle\"},{\"cimplicity\",\"simplicity\"},{\"circumstaces\",\"circumstances\"},{\"clob\",\"club\"},{\"coaln\",\"colon\"},{\"cocamena\",\"cockamamie\"},{\"colleaque\",\"colleague\"},{\"colloquilism\",\"colloquialism\"},{\"columne\",\"column\"},{\"comiler\",\"compiler\"},{\"comitmment\",\"commitment\"},{\"comitte\",\"committee\"},{\"comittmen\",\"commitment\"},{\"comittmend\",\"commitment\"},{\"commerciasl\",\"commercials\"},{\"commited\",\"committed\"},{\"commitee\",\"committee\"},{\"companys\",\"companies\"},{\"compicated\",\"complicated\"},{\"comupter\",\"computer\"},{\"concensus\",\"consensus\"},{\"confusionism\",\"confucianism\"},{\"congradulations\",\"congratulations\"},{\"conibation\",\"contribution\"},{\"consident\",\"consistent\"},{\"consident\",\"consonant\"},{\"contast\",\"constant\"},{\"contastant\",\"constant\"},{\"contunie\",\"continue\"},{\"cooly\",\"coolly\"},{\"copping\",\"coping\"},{\"cosmoplyton\",\"cosmopolitan\"},{\"courst\",\"court\"},{\"crasy\",\"crazy\"},{\"cravets\",\"caveats\"},{\"credetability\",\"credibility\"},{\"criqitue\",\"critique\"},{\"croke\",\"croak\"},{\"crucifiction\",\"crucifixion\"},{\"crusifed\",\"crucified\"},{\"ctitique\",\"critique\"},{\"cumba\",\"combo\"},{\"custamisation\",\"customization\"},{\"dag\",\"dog\"},{\"daly\",\"daily\"},{\"danguages\",\"dangerous\"},{\"deaft\",\"draft\"},{\"defence\",\"defense\"},{\"defenly\",\"defiantly\"},{\"definate\",\"definite\"},{\"definately\",\"definitely\"},{\"dependeble\",\"dependable\"},{\"descrption\",\"description\"},{\"descrptn\",\"description\"},{\"desparate\",\"desperate\"},{\"dessicate\",\"desiccate\"},{\"destint\",\"distant\"},{\"develepment\",\"developments\"},{\"developement\",\"development\"},{\"develpond\",\"development\"},{\"devulge\",\"divulge\"},{\"diagree\",\"disagree\"},{\"dieties\",\"deities\"},{\"dinasaur\",\"dinosaur\"},{\"dinasour\",\"dinosaur\"},{\"direcyly\",\"directly\"},{\"discuess\",\"discuss\"},{\"disect\",\"dissect\"},{\"disippate\",\"dissipate\"},{\"disition\",\"decision\"},{\"dispair\",\"despair\"},{\"disssicion\",\"discussion\"},{\"distarct\",\"distract\"},{\"distart\",\"distort\"},{\"distroy\",\"destroy\"},{\"documtations\",\"documentation\"},{\"doenload\",\"download\"},{\"dongle\",\"dangle\"},{\"doog\",\"dog\"},{\"dramaticly\",\"dramatically\"},{\"drunkeness\",\"drunkenness\"},{\"ductioneery\",\"dictionary\"},{\"dur\",\"due\"},{\"duren\",\"during\"},{\"dymatic\",\"dynamic\"},{\"dynaic\",\"dynamic\"},{\"ecstacy\",\"ecstasy\"},{\"efficat\",\"efficient\"},{\"efficity\",\"efficacy\"},{\"effots\",\"efforts\"},{\"egsistence\",\"existence\"},{\"eitiology\",\"etiology\"},{\"elagent\",\"elegant\"},{\"elligit\",\"elegant\"},{\"embarass\",\"embarrass\"},{\"embarassment\",\"embarrassment\"},{\"embaress\",\"embarrass\"},{\"encapsualtion\",\"encapsulation\"},{\"encyclapidia\",\"encyclopedia\"},{\"encyclopia\",\"encyclopedia\"},{\"engins\",\"engine\"},{\"enhence\",\"enhance\"},{\"enligtment\",\"Enlightenment\"},{\"ennuui\",\"ennui\"},{\"enought\",\"enough\"},{\"enventions\",\"inventions\"},{\"envireminakl\",\"environmental\"},{\"enviroment\",\"environment\"},{\"epitomy\",\"epitome\"},{\"equire\",\"acquire\"},{\"errara\",\"error\"},{\"erro\",\"error\"},{\"evaualtion\",\"evaluation\"},{\"evething\",\"everything\"},{\"evtually\",\"eventually\"},{\"excede\",\"exceed\"},{\"excercise\",\"exercise\"},{\"excpt\",\"except\"},{\"excution\",\"execution\"},{\"exhileration\",\"exhilaration\"},{\"existance\",\"existence\"},{\"expleyly\",\"explicitly\"},{\"explity\",\"explicitly\"},{\"expresso\",\"espresso\"},{\"exspidient\",\"expedient\"},{\"extions\",\"extensions\"},{\"factontion\",\"factorization\"},{\"failer\",\"failure\"},{\"famdasy\",\"fantasy\"},{\"faver\",\"favor\"},{\"faxe\",\"fax\"},{\"febuary\",\"february\"},{\"firey\",\"fiery\"},{\"fistival\",\"festival\"},{\"flatterring\",\"flattering\"},{\"fluk\",\"flux\"},{\"flukse\",\"flux\"},{\"fone\",\"phone\"},{\"forsee\",\"foresee\"},{\"frustartaion\",\"frustrating\"},{\"fuction\",\"function\"},{\"funetik\",\"phonetic\"},{\"futs\",\"guts\"},{\"gamne\",\"came\"},{\"gaurd\",\"guard\"},{\"generly\",\"generally\"},{\"ghandi\",\"gandhi\"},{\"goberment\",\"government\"},{\"gobernement\",\"government\"},{\"gobernment\",\"government\"},{\"gotton\",\"gotten\"},{\"gracefull\",\"graceful\"},{\"gradualy\",\"gradually\"},{\"grammer\",\"grammar\"},{\"hallo\",\"hello\"},{\"hapily\",\"happily\"},{\"harrass\",\"harass\"},{\"havne\",\"have\"},{\"heellp\",\"help\"},{\"heighth\",\"height\"},{\"hellp\",\"help\"},{\"helo\",\"hello\"},{\"herlo\",\"hello\"},{\"hifin\",\"hyphen\"},{\"hifine\",\"hyphen\"},{\"higer\",\"higher\"},{\"hiphine\",\"hyphen\"},{\"hippie\",\"hippy\"},{\"hippopotamous\",\"hippopotamus\"},{\"hlp\",\"help\"},{\"hourse\",\"horse\"},{\"houssing\",\"housing\"},{\"howaver\",\"however\"},{\"howver\",\"however\"},{\"humaniti\",\"humanity\"},{\"hyfin\",\"hyphen\"},{\"hypotathes\",\"hypothesis\"},{\"hypotathese\",\"hypothesis\"},{\"hystrical\",\"hysterical\"},{\"ident\",\"indent\"},{\"illegitament\",\"illegitimate\"},{\"imbed\",\"embed\"},{\"imediaetly\",\"immediately\"},{\"imfamy\",\"infamy\"},{\"immenant\",\"immanent\"},{\"implemtes\",\"implements\"},{\"inadvertant\",\"inadvertent\"},{\"incase\",\"in case\"},{\"incedious\",\"insidious\"},{\"incompleet\",\"incomplete\"},{\"incomplot\",\"incomplete\"},{\"inconvenant\",\"inconvenient\"},{\"inconvience\",\"inconvenience\"},{\"independant\",\"independent\"},{\"independenent\",\"independent\"},{\"indepnends\",\"independent\"},{\"indepth\",\"in depth\"},{\"indispensible\",\"indispensable\"},{\"inefficite\",\"inefficient\"},{\"inerface\",\"interface\"},{\"infact\",\"in fact\"},{\"influencial\",\"influential\"},{\"inital\",\"initial\"},{\"initinized\",\"initialized\"},{\"initized\",\"initialized\"},{\"innoculate\",\"inoculate\"},{\"insistant\",\"insistent\"},{\"insistenet\",\"insistent\"},{\"instulation\",\"installation\"},{\"intealignt\",\"intelligent\"},{\"intejilent\",\"intelligent\"},{\"intelegent\",\"intelligent\"},{\"intelegnent\",\"intelligent\"},{\"intelejent\",\"intelligent\"},{\"inteligent\",\"intelligent\"},{\"intelignt\",\"intelligent\"},{\"intellagant\",\"intelligent\"},{\"intellegent\",\"intelligent\"},{\"intellegint\",\"intelligent\"},{\"intellgnt\",\"intelligent\"},{\"intensionality\",\"intensionally\"},{\"interate\",\"iterate\"},{\"internation\",\"international\"},{\"interpretate\",\"interpret\"},{\"interpretter\",\"interpreter\"},{\"intertes\",\"interested\"},{\"intertesd\",\"interested\"},{\"invermeantial\",\"environmental\"},{\"irregardless\",\"regardless\"},{\"irresistable\",\"irresistible\"},{\"irritible\",\"irritable\"},{\"islams\",\"muslims\"},{\"isotrop\",\"isotope\"},{\"isreal\",\"israel\"},{\"johhn\",\"john\"},{\"judgement\",\"judgment\"},{\"kippur\",\"kipper\"},{\"knawing\",\"knowing\"},{\"latext\",\"latest\"},{\"leasve\",\"leave\"},{\"lesure\",\"leisure\"},{\"liasion\",\"lesion\"},{\"liason\",\"liaison\"},{\"libary\",\"library\"},{\"likly\",\"likely\"},{\"lilometer\",\"kilometer\"},{\"liquify\",\"liquefy\"},{\"lloyer\",\"layer\"},{\"lossing\",\"losing\"},{\"luser\",\"laser\"},{\"maintanence\",\"maintenance\"},{\"majaerly\",\"majority\"},{\"majoraly\",\"majority\"},{\"maks\",\"masks\"},{\"mandelbrot\",\"Mandelbrot\"},{\"mant\",\"want\"},{\"marshall\",\"marshal\"},{\"maxium\",\"maximum\"},{\"meory\",\"memory\"},{\"metter\",\"better\"},{\"mic\",\"mike\"},{\"midia\",\"media\"},{\"millenium\",\"millennium\"},{\"miniscule\",\"minuscule\"},{\"minkay\",\"monkey\"},{\"minum\",\"minimum\"},{\"mischievious\",\"mischievous\"},{\"misilous\",\"miscellaneous\"},{\"momento\",\"memento\"},{\"monkay\",\"monkey\"},{\"mosaik\",\"mosaic\"},{\"mostlikely\",\"most likely\"},{\"mousr\",\"mouser\"},{\"mroe\",\"more\"},{\"neccessary\",\"necessary\"},{\"necesary\",\"necessary\"},{\"necesser\",\"necessary\"},{\"neice\",\"niece\"},{\"neighbour\",\"neighbor\"},{\"nemonic\",\"pneumonic\"},{\"nevade\",\"Nevada\"},{\"nickleodeon\",\"nickelodeon\"},{\"nieve\",\"naive\"},{\"noone\",\"no one\"},{\"noticably\",\"noticeably\"},{\"notin\",\"not in\"},{\"nozled\",\"nuzzled\"},{\"objectsion\",\"objects\"},{\"obsfuscate\",\"obfuscate\"},{\"ocassion\",\"occasion\"},{\"occuppied\",\"occupied\"},{\"occurence\",\"occurrence\"},{\"octagenarian\",\"octogenarian\"},{\"olf\",\"old\"},{\"opposim\",\"opossum\"},{\"organise\",\"organize\"},{\"organiz\",\"organize\"},{\"orientate\",\"orient\"},{\"oscilascope\",\"oscilloscope\"},{\"oving\",\"moving\"},{\"paramers\",\"parameters\"},{\"parametic\",\"parameter\"},{\"paranets\",\"parameters\"},{\"partrucal\",\"particular\"},{\"pataphysical\",\"metaphysical\"},{\"patten\",\"pattern\"},{\"permissable\",\"permissible\"},{\"permition\",\"permission\"},{\"permmasivie\",\"permissive\"},{\"perogative\",\"prerogative\"},{\"persue\",\"pursue\"},{\"phantasia\",\"fantasia\"},{\"phenominal\",\"phenomenal\"},{\"picaresque\",\"picturesque\"},{\"playwrite\",\"playwright\"},{\"poeses\",\"poesies\"},{\"polation\",\"politician\"},{\"poligamy\",\"polygamy\"},{\"politict\",\"politic\"},{\"pollice\",\"police\"},{\"polypropalene\",\"polypropylene\"},{\"pompom\",\"pompon\"},{\"possable\",\"possible\"},{\"practicle\",\"practical\"},{\"pragmaticism\",\"pragmatism\"},{\"preceeding\",\"preceding\"},{\"precion\",\"precision\"},{\"precios\",\"precision\"},{\"preemptory\",\"peremptory\"},{\"prefices\",\"prefixes\"},{\"prefixt\",\"prefixed\"},{\"presbyterian\",\"Presbyterian\"},{\"presue\",\"pursue\"},{\"presued\",\"pursued\"},{\"privielage\",\"privilege\"},{\"priviledge\",\"privilege\"},{\"proceedures\",\"procedures\"},{\"pronensiation\",\"pronunciation\"},{\"pronisation\",\"pronunciation\"},{\"pronounciation\",\"pronunciation\"},{\"properally\",\"properly\"},{\"proplematic\",\"problematic\"},{\"protray\",\"portray\"},{\"pscolgst\",\"psychologist\"},{\"psicolagest\",\"psychologist\"},{\"psycolagest\",\"psychologist\"},{\"quoz\",\"quiz\"},{\"radious\",\"radius\"},{\"ramplily\",\"rampantly\"},{\"reccomend\",\"recommend\"},{\"reccona\",\"raccoon\"},{\"recieve\",\"receive\"},{\"reconise\",\"recognize\"},{\"rectangeles\",\"rectangle\"},{\"redign\",\"redesign\"},{\"reoccurring\",\"recurring\"},{\"repitition\",\"repetition\"},{\"replasments\",\"replacement\"},{\"reposable\",\"responsible\"},{\"reseblence\",\"resemblance\"},{\"respct\",\"respect\"},{\"respecally\",\"respectfully\"},{\"roon\",\"room\"},{\"rought\",\"roughly\"},{\"rsx\",\"RSX\"},{\"rudemtry\",\"rudimentary\"},{\"runnung\",\"running\"},{\"sacreligious\",\"sacrilegious\"},{\"saftly\",\"safely\"},{\"salut\",\"salute\"},{\"satifly\",\"satisfy\"},{\"scrabdle\",\"scrabble\"},{\"searcheable\",\"searchable\"},{\"secion\",\"section\"},{\"seferal\",\"several\"},{\"segements\",\"segments\"},{\"sence\",\"sense\"},{\"seperate\",\"separate\"},{\"sherbert\",\"sherbet\"},{\"sicolagest\",\"psychologist\"},{\"sieze\",\"seize\"},{\"simpfilty\",\"simplicity\"},{\"simplye\",\"simply\"},{\"singal\",\"signal\"},{\"sitte\",\"site\"},{\"situration\",\"situation\"},{\"slyph\",\"sylph\"},{\"smil\",\"smile\"},{\"snuck\",\"sneaked\"},{\"sometmes\",\"sometimes\"},{\"soonec\",\"sonic\"},{\"specificialy\",\"specifically\"},{\"spel\",\"spell\"},{\"spoak\",\"spoke\"},{\"sponsered\",\"sponsored\"},{\"stering\",\"steering\"},{\"straightjacket\",\"straitjacket\"},{\"stumach\",\"stomach\"},{\"stutent\",\"student\"},{\"styleguide\",\"style guide\"},{\"subisitions\",\"substitutions\"},{\"subjecribed\",\"subscribed\"},{\"subpena\",\"subpoena\"},{\"substations\",\"substitutions\"},{\"suger\",\"sugar\"},{\"supercede\",\"supersede\"},{\"superfulous\",\"superfluous\"},{\"susan\",\"Susan\"},{\"swimwear\",\"swim wear\"},{\"syncorization\",\"synchronization\"},{\"taff\",\"tough\"},{\"taht\",\"that\"},{\"tattos\",\"tattoos\"},{\"techniquely\",\"technically\"},{\"teh\",\"the\"},{\"tem\",\"team\"},{\"teo\",\"two\"},{\"teridical\",\"theoretical\"},{\"tesst\",\"test\"},{\"tets\",\"tests\"},{\"thanot\",\"than or\"},{\"theirselves\",\"themselves\"},{\"theridically\",\"theoretical\"},{\"thredically\",\"theoretically\"},{\"thruout\",\"throughout\"},{\"ths\",\"this\"},{\"titalate\",\"titillate\"},{\"tobagan\",\"tobaggon\"},{\"tommorrow\",\"tomorrow\"},{\"tomorow\",\"tomorrow\"},{\"tradegy\",\"tragedy\"},{\"trubbel\",\"trouble\"},{\"ttest\",\"test\"},{\"tunnellike\",\"tunnel like\"},{\"tured\",\"turned\"},{\"tyrrany\",\"tyranny\"},{\"unatourral\",\"unnatural\"},{\"unaturral\",\"unnatural\"},{\"unconisitional\",\"unconstitutional\"},{\"unconscience\",\"unconscious\"},{\"underladder\",\"under ladder\"},{\"unentelegible\",\"unintelligible\"},{\"unfortunently\",\"unfortunately\"},{\"unnaturral\",\"unnatural\"},{\"upcast\",\"up cast\"},{\"upmost\",\"utmost\"},{\"uranisium\",\"uranium\"},{\"verison\",\"version\"},{\"vinagarette\",\"vinaigrette\"},{\"volumptuous\",\"voluptuous\"},{\"volunteerism\",\"voluntarism\"},{\"volye\",\"volley\"},{\"wadting\",\"wasting\"},{\"waite\",\"wait\"},{\"wan't\",\"won't\"},{\"warloord\",\"warlord\"},{\"whaaat\",\"what\"},{\"whard\",\"ward\"},{\"whimp\",\"wimp\"},{\"wicken\",\"weaken\"},{\"wierd\",\"weird\"},{\"wrank\",\"rank\"},{\"writeen\",\"righten\"},{\"writting\",\"writing\"},{\"wundeews\",\"windows\"},{\"yeild\",\"yield\"},{\"youe\",\"your\"}}").
expr(double_metaphone_test_1_expr2, array_initializer, double_metaphone_test_1_expr1, (expressions, 0), range(double_metaphone_test_1, 1824, 31, 48, 48), "{\"Accosinly\",\"Occasionally\"}").
expr(double_metaphone_test_1_expr3, array_initializer, double_metaphone_test_1_expr1, (expressions, 1), range(double_metaphone_test_1, 1857, 36, 48, 49), "{\"Ciculer\",\"Circler\"}").
expr(double_metaphone_test_1_expr4, array_initializer, double_metaphone_test_1_code24, initializer, range(double_metaphone_test_1, 24008, 16488, 600, 1005), "{{\"Accosinly\",\"Occasionally\"},{\"Maddness\",\"Madness\"},{\"Occusionaly\",\"Occasionally\"},{\"Steffen\",\"Stephen\"},{\"Thw\",\"The\"},{\"Unformanlly\",\"Unfortunately\"},{\"Unfortally\",\"Unfortunately\"},{\"abilitey\",\"ability\"},{\"absorbtion\",\"absorption\"},{\"accidently\",\"accidentally\"},{\"accomodate\",\"accommodate\"},{\"acommadate\",\"accommodate\"},{\"acord\",\"accord\"},{\"adultry\",\"adultery\"},{\"aggresive\",\"aggressive\"},{\"alchohol\",\"alcohol\"},{\"alchoholic\",\"alcoholic\"},{\"allieve\",\"alive\"},{\"alot\",\"a lot\"},{\"alright\",\"all right\"},{\"amature\",\"amateur\"},{\"ambivilant\",\"ambivalent\"},{\"amourfous\",\"amorphous\"},{\"annoint\",\"anoint\"},{\"annonsment\",\"announcement\"},{\"annoyting\",\"anting\"},{\"annuncio\",\"announce\"},{\"anotomy\",\"anatomy\"},{\"antidesestablishmentarianism\",\"antidisestablishmentarianism\"},{\"antidisestablishmentarism\",\"antidisestablishmentarianism\"},{\"anynomous\",\"anonymous\"},{\"appelet\",\"applet\"},{\"appreceiated\",\"appreciated\"},{\"appresteate\",\"appreciate\"},{\"aquantance\",\"acquaintance\"},{\"aricticure\",\"architecture\"},{\"asterick\",\"asterisk\"},{\"asymetric\",\"asymmetric\"},{\"atentively\",\"attentively\"},{\"bankrot\",\"bankrupt\"},{\"basicly\",\"basically\"},{\"batallion\",\"battalion\"},{\"bbrose\",\"browse\"},{\"beauro\",\"bureau\"},{\"beaurocracy\",\"bureaucracy\"},{\"beggining\",\"beginning\"},{\"behaviour\",\"behavior\"},{\"beleive\",\"believe\"},{\"belive\",\"believe\"},{\"blait\",\"bleat\"},{\"bouyant\",\"buoyant\"},{\"boygot\",\"boycott\"},{\"brocolli\",\"broccoli\"},{\"buder\",\"butter\"},{\"budr\",\"butter\"},{\"budter\",\"butter\"},{\"buracracy\",\"bureaucracy\"},{\"burracracy\",\"bureaucracy\"},{\"buton\",\"button\"},{\"byby\",\"by by\"},{\"cauler\",\"caller\"},{\"ceasar\",\"caesar\"},{\"cemetary\",\"cemetery\"},{\"changeing\",\"changing\"},{\"cheet\",\"cheat\"},{\"cimplicity\",\"simplicity\"},{\"circumstaces\",\"circumstances\"},{\"clob\",\"club\"},{\"coaln\",\"colon\"},{\"colleaque\",\"colleague\"},{\"colloquilism\",\"colloquialism\"},{\"columne\",\"column\"},{\"comitmment\",\"commitment\"},{\"comitte\",\"committee\"},{\"comittmen\",\"commitment\"},{\"comittmend\",\"commitment\"},{\"commerciasl\",\"commercials\"},{\"commited\",\"committed\"},{\"commitee\",\"committee\"},{\"companys\",\"companies\"},{\"comupter\",\"computer\"},{\"concensus\",\"consensus\"},{\"confusionism\",\"confucianism\"},{\"congradulations\",\"congratulations\"},{\"contunie\",\"continue\"},{\"cooly\",\"coolly\"},{\"copping\",\"coping\"},{\"cosmoplyton\",\"cosmopolitan\"},{\"crasy\",\"crazy\"},{\"croke\",\"croak\"},{\"crucifiction\",\"crucifixion\"},{\"crusifed\",\"crucified\"},{\"cumba\",\"combo\"},{\"custamisation\",\"customization\"},{\"dag\",\"dog\"},{\"daly\",\"daily\"},{\"defence\",\"defense\"},{\"definate\",\"definite\"},{\"definately\",\"definitely\"},{\"dependeble\",\"dependable\"},{\"descrption\",\"description\"},{\"descrptn\",\"description\"},{\"desparate\",\"desperate\"},{\"dessicate\",\"desiccate\"},{\"destint\",\"distant\"},{\"develepment\",\"developments\"},{\"developement\",\"development\"},{\"develpond\",\"development\"},{\"devulge\",\"divulge\"},{\"dieties\",\"deities\"},{\"dinasaur\",\"dinosaur\"},{\"dinasour\",\"dinosaur\"},{\"discuess\",\"discuss\"},{\"disect\",\"dissect\"},{\"disippate\",\"dissipate\"},{\"disition\",\"decision\"},{\"dispair\",\"despair\"},{\"distarct\",\"distract\"},{\"distart\",\"distort\"},{\"distroy\",\"destroy\"},{\"doenload\",\"download\"},{\"dongle\",\"dangle\"},{\"doog\",\"dog\"},{\"dramaticly\",\"dramatically\"},{\"drunkeness\",\"drunkenness\"},{\"ductioneery\",\"dictionary\"},{\"ecstacy\",\"ecstasy\"},{\"egsistence\",\"existence\"},{\"eitiology\",\"etiology\"},{\"elagent\",\"elegant\"},{\"embarass\",\"embarrass\"},{\"embarassment\",\"embarrassment\"},{\"embaress\",\"embarrass\"},{\"encapsualtion\",\"encapsulation\"},{\"encyclapidia\",\"encyclopedia\"},{\"encyclopia\",\"encyclopedia\"},{\"engins\",\"engine\"},{\"enhence\",\"enhance\"},{\"ennuui\",\"ennui\"},{\"enventions\",\"inventions\"},{\"envireminakl\",\"environmental\"},{\"enviroment\",\"environment\"},{\"epitomy\",\"epitome\"},{\"equire\",\"acquire\"},{\"errara\",\"error\"},{\"evaualtion\",\"evaluation\"},{\"excede\",\"exceed\"},{\"excercise\",\"exercise\"},{\"excpt\",\"except\"},{\"exhileration\",\"exhilaration\"},{\"existance\",\"existence\"},{\"expleyly\",\"explicitly\"},{\"explity\",\"explicitly\"},{\"failer\",\"failure\"},{\"faver\",\"favor\"},{\"faxe\",\"fax\"},{\"firey\",\"fiery\"},{\"fistival\",\"festival\"},{\"flatterring\",\"flattering\"},{\"flukse\",\"flux\"},{\"fone\",\"phone\"},{\"forsee\",\"foresee\"},{\"frustartaion\",\"frustrating\"},{\"funetik\",\"phonetic\"},{\"gaurd\",\"guard\"},{\"generly\",\"generally\"},{\"ghandi\",\"gandhi\"},{\"gotton\",\"gotten\"},{\"gracefull\",\"graceful\"},{\"gradualy\",\"gradually\"},{\"grammer\",\"grammar\"},{\"hallo\",\"hello\"},{\"hapily\",\"happily\"},{\"harrass\",\"harass\"},{\"heellp\",\"help\"},{\"heighth\",\"height\"},{\"hellp\",\"help\"},{\"helo\",\"hello\"},{\"hifin\",\"hyphen\"},{\"hifine\",\"hyphen\"},{\"hiphine\",\"hyphen\"},{\"hippie\",\"hippy\"},{\"hippopotamous\",\"hippopotamus\"},{\"hourse\",\"horse\"},{\"houssing\",\"housing\"},{\"howaver\",\"however\"},{\"howver\",\"however\"},{\"humaniti\",\"humanity\"},{\"hyfin\",\"hyphen\"},{\"hystrical\",\"hysterical\"},{\"illegitament\",\"illegitimate\"},{\"imbed\",\"embed\"},{\"imediaetly\",\"immediately\"},{\"immenant\",\"immanent\"},{\"implemtes\",\"implements\"},{\"inadvertant\",\"inadvertent\"},{\"incase\",\"in case\"},{\"incedious\",\"insidious\"},{\"incompleet\",\"incomplete\"},{\"incomplot\",\"incomplete\"},{\"inconvenant\",\"inconvenient\"},{\"inconvience\",\"inconvenience\"},{\"independant\",\"independent\"},{\"independenent\",\"independent\"},{\"indepnends\",\"independent\"},{\"indepth\",\"in depth\"},{\"indispensible\",\"indispensable\"},{\"inefficite\",\"inefficient\"},{\"infact\",\"in fact\"},{\"influencial\",\"influential\"},{\"innoculate\",\"inoculate\"},{\"insistant\",\"insistent\"},{\"insistenet\",\"insistent\"},{\"instulation\",\"installation\"},{\"intealignt\",\"intelligent\"},{\"intelegent\",\"intelligent\"},{\"intelegnent\",\"intelligent\"},{\"intelejent\",\"intelligent\"},{\"inteligent\",\"intelligent\"},{\"intelignt\",\"intelligent\"},{\"intellagant\",\"intelligent\"},{\"intellegent\",\"intelligent\"},{\"intellegint\",\"intelligent\"},{\"intellgnt\",\"intelligent\"},{\"intensionality\",\"intensionally\"},{\"internation\",\"international\"},{\"interpretate\",\"interpret\"},{\"interpretter\",\"interpreter\"},{\"intertes\",\"interested\"},{\"intertesd\",\"interested\"},{\"invermeantial\",\"environmental\"},{\"irresistable\",\"irresistible\"},{\"irritible\",\"irritable\"},{\"isreal\",\"israel\"},{\"johhn\",\"john\"},{\"kippur\",\"kipper\"},{\"knawing\",\"knowing\"},{\"lesure\",\"leisure\"},{\"liasion\",\"lesion\"},{\"liason\",\"liaison\"},{\"likly\",\"likely\"},{\"liquify\",\"liquefy\"},{\"lloyer\",\"layer\"},{\"lossing\",\"losing\"},{\"luser\",\"laser\"},{\"maintanence\",\"maintenance\"},{\"mandelbrot\",\"Mandelbrot\"},{\"marshall\",\"marshal\"},{\"maxium\",\"maximum\"},{\"mic\",\"mike\"},{\"midia\",\"media\"},{\"millenium\",\"millennium\"},{\"miniscule\",\"minuscule\"},{\"minkay\",\"monkey\"},{\"mischievious\",\"mischievous\"},{\"momento\",\"memento\"},{\"monkay\",\"monkey\"},{\"mosaik\",\"mosaic\"},{\"mostlikely\",\"most likely\"},{\"mousr\",\"mouser\"},{\"mroe\",\"more\"},{\"necesary\",\"necessary\"},{\"necesser\",\"necessary\"},{\"neice\",\"niece\"},{\"neighbour\",\"neighbor\"},{\"nemonic\",\"pneumonic\"},{\"nevade\",\"Nevada\"},{\"nickleodeon\",\"nickelodeon\"},{\"nieve\",\"naive\"},{\"noone\",\"no one\"},{\"notin\",\"not in\"},{\"nozled\",\"nuzzled\"},{\"objectsion\",\"objects\"},{\"ocassion\",\"occasion\"},{\"occuppied\",\"occupied\"},{\"occurence\",\"occurrence\"},{\"octagenarian\",\"octogenarian\"},{\"opposim\",\"opossum\"},{\"organise\",\"organize\"},{\"organiz\",\"organize\"},{\"orientate\",\"orient\"},{\"oscilascope\",\"oscilloscope\"},{\"parametic\",\"parameter\"},{\"permissable\",\"permissible\"},{\"permmasivie\",\"permissive\"},{\"persue\",\"pursue\"},{\"phantasia\",\"fantasia\"},{\"phenominal\",\"phenomenal\"},{\"playwrite\",\"playwright\"},{\"poeses\",\"poesies\"},{\"poligamy\",\"polygamy\"},{\"politict\",\"politic\"},{\"pollice\",\"police\"},{\"polypropalene\",\"polypropylene\"},{\"possable\",\"possible\"},{\"practicle\",\"practical\"},{\"pragmaticism\",\"pragmatism\"},{\"preceeding\",\"preceding\"},{\"precios\",\"precision\"},{\"preemptory\",\"peremptory\"},{\"prefixt\",\"prefixed\"},{\"presbyterian\",\"Presbyterian\"},{\"presue\",\"pursue\"},{\"presued\",\"pursued\"},{\"privielage\",\"privilege\"},{\"priviledge\",\"privilege\"},{\"proceedures\",\"procedures\"},{\"pronensiation\",\"pronunciation\"},{\"pronounciation\",\"pronunciation\"},{\"properally\",\"properly\"},{\"proplematic\",\"problematic\"},{\"protray\",\"portray\"},{\"pscolgst\",\"psychologist\"},{\"psicolagest\",\"psychologist\"},{\"psycolagest\",\"psychologist\"},{\"quoz\",\"quiz\"},{\"radious\",\"radius\"},{\"reccomend\",\"recommend\"},{\"reccona\",\"raccoon\"},{\"recieve\",\"receive\"},{\"reconise\",\"recognize\"},{\"rectangeles\",\"rectangle\"},{\"reoccurring\",\"recurring\"},{\"repitition\",\"repetition\"},{\"replasments\",\"replacement\"},{\"respct\",\"respect\"},{\"respecally\",\"respectfully\"},{\"rsx\",\"RSX\"},{\"runnung\",\"running\"},{\"sacreligious\",\"sacrilegious\"},{\"salut\",\"salute\"},{\"searcheable\",\"searchable\"},{\"seferal\",\"several\"},{\"segements\",\"segments\"},{\"sence\",\"sense\"},{\"seperate\",\"separate\"},{\"sicolagest\",\"psychologist\"},{\"sieze\",\"seize\"},{\"simplye\",\"simply\"},{\"sitte\",\"site\"},{\"slyph\",\"sylph\"},{\"smil\",\"smile\"},{\"sometmes\",\"sometimes\"},{\"soonec\",\"sonic\"},{\"specificialy\",\"specifically\"},{\"spel\",\"spell\"},{\"spoak\",\"spoke\"},{\"sponsered\",\"sponsored\"},{\"stering\",\"steering\"},{\"straightjacket\",\"straitjacket\"},{\"stumach\",\"stomach\"},{\"stutent\",\"student\"},{\"styleguide\",\"style guide\"},{\"subpena\",\"subpoena\"},{\"substations\",\"substitutions\"},{\"supercede\",\"supersede\"},{\"superfulous\",\"superfluous\"},{\"susan\",\"Susan\"},{\"swimwear\",\"swim wear\"},{\"syncorization\",\"synchronization\"},{\"taff\",\"tough\"},{\"taht\",\"that\"},{\"tattos\",\"tattoos\"},{\"techniquely\",\"technically\"},{\"teh\",\"the\"},{\"tem\",\"team\"},{\"teo\",\"two\"},{\"teridical\",\"theoretical\"},{\"tesst\",\"test\"},{\"theridically\",\"theoretical\"},{\"thredically\",\"theoretically\"},{\"thruout\",\"throughout\"},{\"ths\",\"this\"},{\"titalate\",\"titillate\"},{\"tobagan\",\"tobaggon\"},{\"tommorrow\",\"tomorrow\"},{\"tomorow\",\"tomorrow\"},{\"trubbel\",\"trouble\"},{\"ttest\",\"test\"},{\"tyrrany\",\"tyranny\"},{\"unatourral\",\"unnatural\"},{\"unaturral\",\"unnatural\"},{\"unconisitional\",\"unconstitutional\"},{\"unconscience\",\"unconscious\"},{\"underladder\",\"under ladder\"},{\"unentelegible\",\"unintelligible\"},{\"unfortunently\",\"unfortunately\"},{\"unnaturral\",\"unnatural\"},{\"upcast\",\"up cast\"},{\"verison\",\"version\"},{\"vinagarette\",\"vinaigrette\"},{\"volunteerism\",\"voluntarism\"},{\"volye\",\"volley\"},{\"waite\",\"wait\"},{\"wan't\",\"won't\"},{\"warloord\",\"warlord\"},{\"whaaat\",\"what\"},{\"whard\",\"ward\"},{\"whimp\",\"wimp\"},{\"wicken\",\"weaken\"},{\"wierd\",\"weird\"},{\"wrank\",\"rank\"},{\"writeen\",\"righten\"},{\"writting\",\"writing\"},{\"wundeews\",\"windows\"},{\"yeild\",\"yield\"}}").
expr(double_metaphone_test_1_expr5, array_initializer, double_metaphone_test_1_expr4, (expressions, 0), range(double_metaphone_test_1, 24010, 31, 600, 600), "{\"Accosinly\",\"Occasionally\"}").
expr(double_metaphone_test_1_expr6, array_initializer, double_metaphone_test_1_expr4, (expressions, 1), range(double_metaphone_test_1, 24043, 37, 600, 601), "{\"Maddness\",\"Madness\"}").
expr(double_metaphone_test_1_expr7, class_instance_creation, double_metaphone_test_1_stmt1, expression, range(double_metaphone_test_1, 41412, 21, 1030, 1030), "new DoubleMetaphone()").
expr(double_metaphone_test_1_expr9, this_expression, double_metaphone_test_1_expr8, expression, range(double_metaphone_test_1, 41545, 4, 1034, 1034), "this").
expr(double_metaphone_test_1_expr8, method_invocation, double_metaphone_test_1_stmt2, expression, range(double_metaphone_test_1, 41545, 27, 1034, 1034), "this.validateFixture(pairs)").
expr(double_metaphone_test_1_expr10, array_access, double_metaphone_test_1_code35, initializer, range(double_metaphone_test_1, 41651, 7, 1036, 1036), "pair[0]").
expr(double_metaphone_test_1_expr11, array_access, double_metaphone_test_1_code38, initializer, range(double_metaphone_test_1, 41693, 7, 1037, 1037), "pair[1]").
expr(double_metaphone_test_1_expr12, infix_expression, double_metaphone_test_1_code41, initializer, range(double_metaphone_test_1, 41737, 94, 1038, 1038), "\"Expected match between \" + name0 + \" and \"+ name1+ \" (use alternate: \"+ useAlternate+ \")\"").
expr(double_metaphone_test_1_expr13, method_invocation, double_metaphone_test_1_stmt7, expression, range(double_metaphone_test_1, 41845, 95, 1039, 1039), "assertTrue(failMsg,this.getStringEncoder().isDoubleMetaphoneEqual(name0,name1,useAlternate))").
expr(double_metaphone_test_1_expr14, method_invocation, double_metaphone_test_1_expr13, (arguments, 1), range(double_metaphone_test_1, 41865, 74, 1039, 1039), "this.getStringEncoder().isDoubleMetaphoneEqual(name0,name1,useAlternate)").
expr(double_metaphone_test_1_expr15, method_invocation, double_metaphone_test_1_expr14, expression, range(double_metaphone_test_1, 41865, 23, 1039, 1039), "this.getStringEncoder()").
expr(double_metaphone_test_1_expr16, this_expression, double_metaphone_test_1_expr15, expression, range(double_metaphone_test_1, 41865, 4, 1039, 1039), "this").
expr(double_metaphone_test_1_expr17, method_invocation, double_metaphone_test_1_stmt8, expression, range(double_metaphone_test_1, 43016, 71, 1065, 1065), "assertTrue(new DoubleMetaphone().isDoubleMetaphoneEqual(\"\",\"\",false))").
expr(double_metaphone_test_1_expr19, class_instance_creation, double_metaphone_test_1_expr18, expression, range(double_metaphone_test_1, 43027, 21, 1065, 1065), "new DoubleMetaphone()").
expr(double_metaphone_test_1_expr18, method_invocation, double_metaphone_test_1_expr17, (arguments, 0), range(double_metaphone_test_1, 43027, 59, 1065, 1065), "new DoubleMetaphone().isDoubleMetaphoneEqual(\"\",\"\",false)").
expr(double_metaphone_test_1_expr20, array_creation, double_metaphone_test_1_code50, initializer, range(double_metaphone_test_1, 45815, 403, 1124, 1135), "new String[][]{{\"\",\"\"},{\"Case\",\"case\"},{\"CASE\",\"Case\"},{\"caSe\",\"cAsE\"},{\"cookie\",\"quick\"},{\"quick\",\"cookie\"},{\"Brian\",\"Bryan\"},{\"Auto\",\"Otto\"},{\"Steven\",\"Stefan\"},{\"Philipowitz\",\"Filipowicz\"}}").
expr(double_metaphone_test_1_expr21, array_initializer, double_metaphone_test_1_expr20, initializer, range(double_metaphone_test_1, 45830, 388, 1124, 1135), "{{\"\",\"\"},{\"Case\",\"case\"},{\"CASE\",\"Case\"},{\"caSe\",\"cAsE\"},{\"cookie\",\"quick\"},{\"quick\",\"cookie\"},{\"Brian\",\"Bryan\"},{\"Auto\",\"Otto\"},{\"Steven\",\"Stefan\"},{\"Philipowitz\",\"Filipowicz\"}}").
expr(double_metaphone_test_1_expr22, array_initializer, double_metaphone_test_1_expr21, (expressions, 0), range(double_metaphone_test_1, 45832, 27, 1124, 1125), "{\"\",\"\"}").
expr(double_metaphone_test_1_expr23, method_invocation, double_metaphone_test_1_stmt10, expression, range(double_metaphone_test_1, 46228, 44, 1136, 1136), "doubleMetaphoneEqualTest(testFixture,false)").
expr(double_metaphone_test_1_expr24, infix_expression, double_metaphone_test_1_stmt11, expression, range(double_metaphone_test_1, 50507, 17, 1242, 1242), "pairs.length == 0").
expr(double_metaphone_test_1_expr25, variable_declaration_expression, double_metaphone_test_1_stmt12, (initializers, 0), range(double_metaphone_test_1, 50594, 9, 1245, 1245), "int i=0").
expr(double_metaphone_test_1_expr26, infix_expression, double_metaphone_test_1_stmt12, expression, range(double_metaphone_test_1, 50605, 16, 1245, 1245), "i < pairs.length").
expr(double_metaphone_test_1_expr27, postfix_expression, double_metaphone_test_1_stmt12, (updaters, 0), range(double_metaphone_test_1, 50623, 3, 1245, 1245), "i++").
expr(double_metaphone_test_1_expr30, array_access, double_metaphone_test_1_expr29, expression, range(double_metaphone_test_1, 50646, 8, 1246, 1246), "pairs[i]").
expr(double_metaphone_test_1_expr28, infix_expression, double_metaphone_test_1_stmt13, expression, range(double_metaphone_test_1, 50646, 20, 1246, 1246), "pairs[i].length != 2").
expr(double_metaphone_test_1_expr29, field_access, double_metaphone_test_1_expr28, left_operand, range(double_metaphone_test_1, 50646, 15, 1246, 1246), "pairs[i].length").

%%% Names
%double_metaphone_1 - org.apache.commons.codec.language.DoubleMetaphone
name(f_silent_start_1, simple_name, double_metaphone_1_code10, name, range(double_metaphone_1, 1983, 12, 47, 47), 'SILENT_START').
name(f_l_r_n_m_b_h_f_v_w_space_2, simple_name, double_metaphone_1_code18, name, range(double_metaphone_1, 2074, 23, 49, 49), 'L_R_N_M_B_H_F_V_W_SPACE').
name(f_es_ep_eb_el_ey_ib_il_in_ie_ei_er_3, simple_name, double_metaphone_1_code26, name, range(double_metaphone_1, 2196, 32, 51, 51), 'ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER').
name(f_l_t_k_s_n_m_b_z_4, simple_name, double_metaphone_1_code34, name, range(double_metaphone_1, 2343, 15, 53, 53), 'L_T_K_S_N_M_B_Z').
name(f_max_code_len_5, simple_name, double_metaphone_1_code38, name, range(double_metaphone_1, 2497, 10, 59, 59), 'maxCodeLen').
name(p_value_7, simple_name, double_metaphone_1_expr6, left_hand_side, range(double_metaphone_1, 3198, 5, 86, 86), 'value').
name(m_clean_input_5, simple_name, double_metaphone_1_expr7, name, range(double_metaphone_1, 3206, 10, 86, 86), 'cleanInput').
name(p_value_7, simple_name, double_metaphone_1_expr7, (arguments, 0), range(double_metaphone_1, 3217, 5, 86, 86), 'value').
name(p_value_7, simple_name, double_metaphone_1_expr8, left_operand, range(double_metaphone_1, 3237, 5, 87, 87), 'value').
name(m_double_metaphone_4, simple_name, double_metaphone_1_expr11, name, range(double_metaphone_1, 8956, 15, 244, 244), 'doubleMetaphone').
name(p_value_1_13, simple_name, double_metaphone_1_expr11, (arguments, 0), range(double_metaphone_1, 8972, 6, 244, 244), 'value1').
name(p_alternate_15, simple_name, double_metaphone_1_expr11, (arguments, 1), range(double_metaphone_1, 8980, 9, 244, 244), 'alternate').
name(m_equals_10, simple_name, double_metaphone_1_expr9, name, range(double_metaphone_1, 8991, 6, 244, 244), 'equals').
name(m_double_metaphone_4, simple_name, double_metaphone_1_expr10, name, range(double_metaphone_1, 8998, 15, 244, 244), 'doubleMetaphone').
name(p_value_2_14, simple_name, double_metaphone_1_expr10, (arguments, 0), range(double_metaphone_1, 9014, 6, 244, 244), 'value2').
name(p_alternate_15, simple_name, double_metaphone_1_expr10, (arguments, 1), range(double_metaphone_1, 9022, 9, 244, 244), 'alternate').
name(p_input_88, simple_name, double_metaphone_1_expr12, left_operand, range(double_metaphone_1, 32088, 5, 888, 888), 'input').
name(p_input_88, simple_name, double_metaphone_1_expr13, left_hand_side, range(double_metaphone_1, 32148, 5, 891, 891), 'input').
name(p_input_88, simple_name, double_metaphone_1_expr14, expression, range(double_metaphone_1, 32156, 5, 891, 891), 'input').
name(m_trim_39, simple_name, double_metaphone_1_expr14, name, range(double_metaphone_1, 32162, 4, 891, 891), 'trim').
name(p_input_88, simple_name, double_metaphone_1_expr16, expression, range(double_metaphone_1, 32182, 5, 892, 892), 'input').
name(m_length_40, simple_name, double_metaphone_1_expr16, name, range(double_metaphone_1, 32188, 6, 892, 892), 'length').
%double_metaphone_test_1 - org.apache.commons.codec.language.DoubleMetaphoneTest
name(t_double_metaphone_test_1, simple_name, double_metaphone_test_1_code2, name, range(double_metaphone_test_1, 1365, 19, 37, 37), 'DoubleMetaphoneTest').
name(f_fixture_106, simple_name, double_metaphone_test_1_code15, name, range(double_metaphone_test_1, 1812, 7, 48, 48), 'FIXTURE').
name(f_matches_107, simple_name, double_metaphone_test_1_code24, name, range(double_metaphone_test_1, 23998, 7, 600, 600), 'MATCHES').
name(m_validate_fixture_59, simple_name, double_metaphone_test_1_expr8, name, range(double_metaphone_test_1, 41550, 15, 1034, 1034), 'validateFixture').
name(p_pairs_112, simple_name, double_metaphone_test_1_expr8, (arguments, 0), range(double_metaphone_test_1, 41566, 5, 1034, 1034), 'pairs').
name(v_pair_114, simple_name, double_metaphone_test_1_code28, name, range(double_metaphone_test_1, 41602, 4, 1035, 1035), 'pair').
name(p_pairs_112, simple_name, double_metaphone_test_1_stmt3, expression, range(double_metaphone_test_1, 41609, 5, 1035, 1035), 'pairs').
name(v_name_0_115, simple_name, double_metaphone_test_1_code35, name, range(double_metaphone_test_1, 41643, 5, 1036, 1036), 'name0').
name(v_pair_114, simple_name, double_metaphone_test_1_expr10, array, range(double_metaphone_test_1, 41651, 4, 1036, 1036), 'pair').
name(v_name_1_116, simple_name, double_metaphone_test_1_code38, name, range(double_metaphone_test_1, 41685, 5, 1037, 1037), 'name1').
name(v_pair_114, simple_name, double_metaphone_test_1_expr11, array, range(double_metaphone_test_1, 41693, 4, 1037, 1037), 'pair').
name(v_fail_msg_117, simple_name, double_metaphone_test_1_code41, name, range(double_metaphone_test_1, 41727, 7, 1038, 1038), 'failMsg').
name(v_name_0_115, simple_name, double_metaphone_test_1_expr12, right_operand, range(double_metaphone_test_1, 41765, 5, 1038, 1038), 'name0').
name(v_name_1_116, simple_name, double_metaphone_test_1_expr12, (extended_operands, 1), range(double_metaphone_test_1, 41783, 5, 1038, 1038), 'name1').
name(p_use_alternate_113, simple_name, double_metaphone_test_1_expr12, (extended_operands, 3), range(double_metaphone_test_1, 41813, 12, 1038, 1038), 'useAlternate').
name(m_assert_true_60, simple_name, double_metaphone_test_1_expr13, name, range(double_metaphone_test_1, 41845, 10, 1039, 1039), 'assertTrue').
name(v_fail_msg_117, simple_name, double_metaphone_test_1_expr13, (arguments, 0), range(double_metaphone_test_1, 41856, 7, 1039, 1039), 'failMsg').
name(m_get_string_encoder_61, simple_name, double_metaphone_test_1_expr15, name, range(double_metaphone_test_1, 41870, 16, 1039, 1039), 'getStringEncoder').
name(m_is_double_metaphone_equal_9, simple_name, double_metaphone_test_1_expr14, name, range(double_metaphone_test_1, 41889, 22, 1039, 1039), 'isDoubleMetaphoneEqual').
name(v_name_0_115, simple_name, double_metaphone_test_1_expr14, (arguments, 0), range(double_metaphone_test_1, 41912, 5, 1039, 1039), 'name0').
name(v_name_1_116, simple_name, double_metaphone_test_1_expr14, (arguments, 1), range(double_metaphone_test_1, 41919, 5, 1039, 1039), 'name1').
name(p_use_alternate_113, simple_name, double_metaphone_test_1_expr14, (arguments, 2), range(double_metaphone_test_1, 41926, 12, 1039, 1039), 'useAlternate').
name(m_assert_true_65, simple_name, double_metaphone_test_1_expr17, name, range(double_metaphone_test_1, 43016, 10, 1065, 1065), 'assertTrue').
name(m_is_double_metaphone_equal_9, simple_name, double_metaphone_test_1_expr18, name, range(double_metaphone_test_1, 43049, 22, 1065, 1065), 'isDoubleMetaphoneEqual').
name(v_test_fixture_119, simple_name, double_metaphone_test_1_code50, name, range(double_metaphone_test_1, 45801, 11, 1124, 1124), 'testFixture').
name(m_double_metaphone_equal_test_58, simple_name, double_metaphone_test_1_expr23, name, range(double_metaphone_test_1, 46228, 24, 1136, 1136), 'doubleMetaphoneEqualTest').
name(v_test_fixture_119, simple_name, double_metaphone_test_1_expr23, (arguments, 0), range(double_metaphone_test_1, 46253, 11, 1136, 1136), 'testFixture').
name(q_length_1, qualified_name, double_metaphone_test_1_expr24, left_operand, range(double_metaphone_test_1, 50507, 12, 1242, 1242), 'pairs.length').
name(p_pairs_120, simple_name, q_length_1, qualifier, range(double_metaphone_test_1, 50507, 5, 1242, 1242), 'pairs').
name(v_i_121, simple_name, double_metaphone_test_1_code57, name, range(double_metaphone_test_1, 50598, 1, 1245, 1245), 'i').
name(v_i_121, simple_name, double_metaphone_test_1_expr26, left_operand, range(double_metaphone_test_1, 50605, 1, 1245, 1245), 'i').
name(p_pairs_120, simple_name, q_length_2, qualifier, range(double_metaphone_test_1, 50609, 5, 1245, 1245), 'pairs').
name(q_length_2, qualified_name, double_metaphone_test_1_expr26, right_operand, range(double_metaphone_test_1, 50609, 12, 1245, 1245), 'pairs.length').
name(v_i_121, simple_name, double_metaphone_test_1_expr27, operand, range(double_metaphone_test_1, 50623, 1, 1245, 1245), 'i').
name(p_pairs_120, simple_name, double_metaphone_test_1_expr30, array, range(double_metaphone_test_1, 50646, 5, 1246, 1246), 'pairs').
name(v_i_121, simple_name, double_metaphone_test_1_expr30, index, range(double_metaphone_test_1, 50652, 1, 1246, 1246), 'i').
name(f_length_122, simple_name, double_metaphone_test_1_expr29, name, range(double_metaphone_test_1, 50655, 6, 1246, 1246), 'length').

%%% Literals
%double_metaphone_1 - org.apache.commons.codec.language.DoubleMetaphone
literal(double_metaphone_1_literal1, number_literal, double_metaphone_1_code38, initializer, range(double_metaphone_1, 2510, 1, 59, 59), 4).
literal(double_metaphone_1_literal2, null_literal, double_metaphone_1_expr8, right_operand, range(double_metaphone_1, 3246, 4, 87, 87), null).
literal(double_metaphone_1_literal3, null_literal, double_metaphone_1_stmt4, expression, range(double_metaphone_1, 3273, 4, 88, 88), null).
literal(double_metaphone_1_literal4, null_literal, double_metaphone_1_expr12, right_operand, range(double_metaphone_1, 32097, 4, 888, 888), null).
literal(double_metaphone_1_literal5, number_literal, double_metaphone_1_expr15, right_operand, range(double_metaphone_1, 32200, 1, 892, 892), 0).
literal(double_metaphone_1_literal6, null_literal, double_metaphone_1_stmt9, expression, range(double_metaphone_1, 32224, 4, 893, 893), null).
%double_metaphone_test_1 - org.apache.commons.codec.language.DoubleMetaphoneTest
literal(double_metaphone_test_1_literal1, string_literal, double_metaphone_test_1_expr2, (expressions, 0), range(double_metaphone_test_1, 1826, 11, 48, 48), "Accosinly").
literal(double_metaphone_test_1_literal2, string_literal, double_metaphone_test_1_expr2, (expressions, 1), range(double_metaphone_test_1, 1839, 14, 48, 48), "Occasionally").
literal(double_metaphone_test_1_literal3, string_literal, double_metaphone_test_1_expr5, (expressions, 0), range(double_metaphone_test_1, 24012, 11, 600, 600), "Accosinly").
literal(double_metaphone_test_1_literal4, string_literal, double_metaphone_test_1_expr5, (expressions, 1), range(double_metaphone_test_1, 24025, 14, 600, 600), "Occasionally").
literal(double_metaphone_test_1_literal5, number_literal, double_metaphone_test_1_expr10, index, range(double_metaphone_test_1, 41656, 1, 1036, 1036), 0).
literal(double_metaphone_test_1_literal6, number_literal, double_metaphone_test_1_expr11, index, range(double_metaphone_test_1, 41698, 1, 1037, 1037), 1).
literal(double_metaphone_test_1_literal7, string_literal, double_metaphone_test_1_expr12, left_operand, range(double_metaphone_test_1, 41737, 25, 1038, 1038), "Expected match between ").
literal(double_metaphone_test_1_literal8, string_literal, double_metaphone_test_1_expr12, (extended_operands, 0), range(double_metaphone_test_1, 41773, 7, 1038, 1038), " and ").
literal(double_metaphone_test_1_literal9, string_literal, double_metaphone_test_1_expr12, (extended_operands, 2), range(double_metaphone_test_1, 41791, 19, 1038, 1038), " (use alternate: ").
literal(double_metaphone_test_1_literal10, string_literal, double_metaphone_test_1_expr12, (extended_operands, 4), range(double_metaphone_test_1, 41828, 3, 1038, 1038), ")").
literal(double_metaphone_test_1_literal11, string_literal, double_metaphone_test_1_expr18, (arguments, 0), range(double_metaphone_test_1, 43072, 2, 1065, 1065), "").
literal(double_metaphone_test_1_literal12, string_literal, double_metaphone_test_1_expr18, (arguments, 1), range(double_metaphone_test_1, 43076, 2, 1065, 1065), "").
literal(double_metaphone_test_1_literal13, boolean_literal, double_metaphone_test_1_expr18, (arguments, 2), range(double_metaphone_test_1, 43080, 5, 1065, 1065), false).
literal(double_metaphone_test_1_literal14, boolean_literal, double_metaphone_test_1_expr23, (arguments, 1), range(double_metaphone_test_1, 46266, 5, 1136, 1136), false).
literal(double_metaphone_test_1_literal15, number_literal, double_metaphone_test_1_expr24, right_operand, range(double_metaphone_test_1, 50523, 1, 1242, 1242), 0).
literal(double_metaphone_test_1_literal16, number_literal, double_metaphone_test_1_code57, initializer, range(double_metaphone_test_1, 50602, 1, 1245, 1245), 0).
literal(double_metaphone_test_1_literal17, number_literal, double_metaphone_test_1_expr28, right_operand, range(double_metaphone_test_1, 50665, 1, 1246, 1246), 2).

%%% Other Code Entities
%double_metaphone_1 - org.apache.commons.codec.language.DoubleMetaphone
code(double_metaphone_1_code1, compilation_unit, range(double_metaphone_1, 0, 35933, 1, -1)).
code(double_metaphone_1_code2, type_declaration, double_metaphone_1_code1, (types, 0), range(double_metaphone_1, 946, 34986, 23, 1008)).
code(double_metaphone_1_code3, field_declaration, double_metaphone_1_code2, (body_declarations, 1), range(double_metaphone_1, 1883, 156, 44, 48)).
code(double_metaphone_1_code4, modifier, double_metaphone_1_code3, (modifiers, 0), range(double_metaphone_1, 1953, 7, 47, 47)).
code(double_metaphone_1_code5, modifier, double_metaphone_1_code3, (modifiers, 1), range(double_metaphone_1, 1961, 6, 47, 47)).
code(double_metaphone_1_code6, modifier, double_metaphone_1_code3, (modifiers, 2), range(double_metaphone_1, 1968, 5, 47, 47)).
code(double_metaphone_1_code7, array_type, double_metaphone_1_code3, type, range(double_metaphone_1, 1974, 8, 47, 47)).
code(double_metaphone_1_code8, simple_type, double_metaphone_1_code7, element_type, range(double_metaphone_1, 1974, 6, 47, 47)).
code(double_metaphone_1_code9, dimension, double_metaphone_1_code7, (dimensions, 0), range(double_metaphone_1, 1980, 2, 47, 47)).
code(double_metaphone_1_code10, variable_declaration_fragment, double_metaphone_1_code3, (fragments, 0), range(double_metaphone_1, 1983, 55, 47, 48)).
code(double_metaphone_1_code11, field_declaration, double_metaphone_1_code2, (body_declarations, 2), range(double_metaphone_1, 2044, 117, 49, 50)).
code(double_metaphone_1_code12, modifier, double_metaphone_1_code11, (modifiers, 0), range(double_metaphone_1, 2044, 7, 49, 49)).
code(double_metaphone_1_code13, modifier, double_metaphone_1_code11, (modifiers, 1), range(double_metaphone_1, 2052, 6, 49, 49)).
code(double_metaphone_1_code14, modifier, double_metaphone_1_code11, (modifiers, 2), range(double_metaphone_1, 2059, 5, 49, 49)).
code(double_metaphone_1_code16, simple_type, double_metaphone_1_code15, element_type, range(double_metaphone_1, 2065, 6, 49, 49)).
code(double_metaphone_1_code15, array_type, double_metaphone_1_code11, type, range(double_metaphone_1, 2065, 8, 49, 49)).
code(double_metaphone_1_code17, dimension, double_metaphone_1_code15, (dimensions, 0), range(double_metaphone_1, 2071, 2, 49, 49)).
code(double_metaphone_1_code18, variable_declaration_fragment, double_metaphone_1_code11, (fragments, 0), range(double_metaphone_1, 2074, 86, 49, 50)).
code(double_metaphone_1_code19, field_declaration, double_metaphone_1_code2, (body_declarations, 3), range(double_metaphone_1, 2166, 142, 51, 52)).
code(double_metaphone_1_code20, modifier, double_metaphone_1_code19, (modifiers, 0), range(double_metaphone_1, 2166, 7, 51, 51)).
code(double_metaphone_1_code21, modifier, double_metaphone_1_code19, (modifiers, 1), range(double_metaphone_1, 2174, 6, 51, 51)).
code(double_metaphone_1_code22, modifier, double_metaphone_1_code19, (modifiers, 2), range(double_metaphone_1, 2181, 5, 51, 51)).
code(double_metaphone_1_code24, simple_type, double_metaphone_1_code23, element_type, range(double_metaphone_1, 2187, 6, 51, 51)).
code(double_metaphone_1_code23, array_type, double_metaphone_1_code19, type, range(double_metaphone_1, 2187, 8, 51, 51)).
code(double_metaphone_1_code25, dimension, double_metaphone_1_code23, (dimensions, 0), range(double_metaphone_1, 2193, 2, 51, 51)).
code(double_metaphone_1_code26, variable_declaration_fragment, double_metaphone_1_code19, (fragments, 0), range(double_metaphone_1, 2196, 111, 51, 52)).
code(double_metaphone_1_code27, field_declaration, double_metaphone_1_code2, (body_declarations, 4), range(double_metaphone_1, 2313, 99, 53, 54)).
code(double_metaphone_1_code28, modifier, double_metaphone_1_code27, (modifiers, 0), range(double_metaphone_1, 2313, 7, 53, 53)).
code(double_metaphone_1_code29, modifier, double_metaphone_1_code27, (modifiers, 1), range(double_metaphone_1, 2321, 6, 53, 53)).
code(double_metaphone_1_code30, modifier, double_metaphone_1_code27, (modifiers, 2), range(double_metaphone_1, 2328, 5, 53, 53)).
code(double_metaphone_1_code32, simple_type, double_metaphone_1_code31, element_type, range(double_metaphone_1, 2334, 6, 53, 53)).
code(double_metaphone_1_code31, array_type, double_metaphone_1_code27, type, range(double_metaphone_1, 2334, 8, 53, 53)).
code(double_metaphone_1_code33, dimension, double_metaphone_1_code31, (dimensions, 0), range(double_metaphone_1, 2340, 2, 53, 53)).
code(double_metaphone_1_code34, variable_declaration_fragment, double_metaphone_1_code27, (fragments, 0), range(double_metaphone_1, 2343, 68, 53, 54)).
code(double_metaphone_1_code35, field_declaration, double_metaphone_1_code2, (body_declarations, 5), range(double_metaphone_1, 2418, 94, 56, 59)).
code(double_metaphone_1_code36, modifier, double_metaphone_1_code35, (modifiers, 0), range(double_metaphone_1, 2485, 7, 59, 59)).
code(double_metaphone_1_code37, primitive_type, double_metaphone_1_code35, type, range(double_metaphone_1, 2493, 3, 59, 59)).
code(double_metaphone_1_code38, variable_declaration_fragment, double_metaphone_1_code35, (fragments, 0), range(double_metaphone_1, 2497, 14, 59, 59)).
code(double_metaphone_1_code39, method_declaration, double_metaphone_1_code2, (body_declarations, 6), range(double_metaphone_1, 2518, 124, 61, 66)).
code(double_metaphone_1_code40, method_declaration, double_metaphone_1_code2, (body_declarations, 8), range(double_metaphone_1, 2895, 3906, 78, 190)).
code(double_metaphone_1_code41, method_declaration, double_metaphone_1_code2, (body_declarations, 12), range(double_metaphone_1, 8323, 717, 233, 245)).
code(double_metaphone_1_code42, method_declaration, double_metaphone_1_code2, (body_declarations, 41), range(double_metaphone_1, 31993, 312, 884, 896)).
%double_metaphone_test_1 - org.apache.commons.codec.language.DoubleMetaphoneTest
code(double_metaphone_test_1_code1, compilation_unit, range(double_metaphone_test_1, 0, 50781, 1, -1)).
code(double_metaphone_test_1_code2, type_declaration, double_metaphone_test_1_code1, (types, 0), range(double_metaphone_test_1, 1151, 49629, 29, 1251)).
code(double_metaphone_test_1_code3, modifier, double_metaphone_test_1_code2, (modifiers, 0), range(double_metaphone_test_1, 1352, 6, 37, 37)).
code(double_metaphone_test_1_code5, simple_type, double_metaphone_test_1_code4, type, range(double_metaphone_test_1, 1393, 25, 37, 37)).
code(double_metaphone_test_1_code4, parameterized_type, double_metaphone_test_1_code2, superclass_type, range(double_metaphone_test_1, 1393, 42, 37, 37)).
code(double_metaphone_test_1_code6, simple_type, double_metaphone_test_1_code4, (type_arguments, 0), range(double_metaphone_test_1, 1419, 15, 37, 37)).
code(double_metaphone_test_1_code7, field_declaration, double_metaphone_test_1_code2, (body_declarations, 0), range(double_metaphone_test_1, 1443, 22450, 39, 595)).
code(double_metaphone_test_1_code8, modifier, double_metaphone_test_1_code7, (modifiers, 0), range(double_metaphone_test_1, 1780, 7, 48, 48)).
code(double_metaphone_test_1_code9, modifier, double_metaphone_test_1_code7, (modifiers, 1), range(double_metaphone_test_1, 1788, 6, 48, 48)).
code(double_metaphone_test_1_code10, modifier, double_metaphone_test_1_code7, (modifiers, 2), range(double_metaphone_test_1, 1795, 5, 48, 48)).
code(double_metaphone_test_1_code12, simple_type, double_metaphone_test_1_code11, element_type, range(double_metaphone_test_1, 1801, 6, 48, 48)).
code(double_metaphone_test_1_code11, array_type, double_metaphone_test_1_code7, type, range(double_metaphone_test_1, 1801, 10, 48, 48)).
code(double_metaphone_test_1_code13, dimension, double_metaphone_test_1_code11, (dimensions, 0), range(double_metaphone_test_1, 1807, 2, 48, 48)).
code(double_metaphone_test_1_code14, dimension, double_metaphone_test_1_code11, (dimensions, 1), range(double_metaphone_test_1, 1809, 2, 48, 48)).
code(double_metaphone_test_1_code15, variable_declaration_fragment, double_metaphone_test_1_code7, (fragments, 0), range(double_metaphone_test_1, 1812, 22080, 48, 595)).
code(double_metaphone_test_1_code16, field_declaration, double_metaphone_test_1_code2, (body_declarations, 1), range(double_metaphone_test_1, 23899, 16598, 597, 1005)).
code(double_metaphone_test_1_code17, modifier, double_metaphone_test_1_code16, (modifiers, 0), range(double_metaphone_test_1, 23966, 7, 600, 600)).
code(double_metaphone_test_1_code18, modifier, double_metaphone_test_1_code16, (modifiers, 1), range(double_metaphone_test_1, 23974, 6, 600, 600)).
code(double_metaphone_test_1_code19, modifier, double_metaphone_test_1_code16, (modifiers, 2), range(double_metaphone_test_1, 23981, 5, 600, 600)).
code(double_metaphone_test_1_code20, array_type, double_metaphone_test_1_code16, type, range(double_metaphone_test_1, 23987, 10, 600, 600)).
code(double_metaphone_test_1_code21, simple_type, double_metaphone_test_1_code20, element_type, range(double_metaphone_test_1, 23987, 6, 600, 600)).
code(double_metaphone_test_1_code22, dimension, double_metaphone_test_1_code20, (dimensions, 0), range(double_metaphone_test_1, 23993, 2, 600, 600)).
code(double_metaphone_test_1_code23, dimension, double_metaphone_test_1_code20, (dimensions, 1), range(double_metaphone_test_1, 23995, 2, 600, 600)).
code(double_metaphone_test_1_code24, variable_declaration_fragment, double_metaphone_test_1_code16, (fragments, 0), range(double_metaphone_test_1, 23998, 16498, 600, 1005)).
code(double_metaphone_test_1_code25, method_declaration, double_metaphone_test_1_code2, (body_declarations, 4), range(double_metaphone_test_1, 41333, 107, 1028, 1031)).
code(double_metaphone_test_1_code26, simple_type, double_metaphone_test_1_expr7, type, range(double_metaphone_test_1, 41416, 15, 1030, 1030)).
code(double_metaphone_test_1_code27, method_declaration, double_metaphone_test_1_code2, (body_declarations, 5), range(double_metaphone_test_1, 41446, 865, 1033, 1046)).
code(double_metaphone_test_1_code29, modifier, double_metaphone_test_1_code28, (modifiers, 0), range(double_metaphone_test_1, 41587, 5, 1035, 1035)).
code(double_metaphone_test_1_code28, single_variable_declaration, double_metaphone_test_1_stmt3, parameter, range(double_metaphone_test_1, 41587, 19, 1035, 1035)).
code(double_metaphone_test_1_code31, simple_type, double_metaphone_test_1_code30, element_type, range(double_metaphone_test_1, 41593, 6, 1035, 1035)).
code(double_metaphone_test_1_code30, array_type, double_metaphone_test_1_code28, type, range(double_metaphone_test_1, 41593, 8, 1035, 1035)).
code(double_metaphone_test_1_code32, dimension, double_metaphone_test_1_code30, (dimensions, 0), range(double_metaphone_test_1, 41599, 2, 1035, 1035)).
code(double_metaphone_test_1_code33, modifier, double_metaphone_test_1_stmt4, (modifiers, 0), range(double_metaphone_test_1, 41630, 5, 1036, 1036)).
code(double_metaphone_test_1_code34, simple_type, double_metaphone_test_1_stmt4, type, range(double_metaphone_test_1, 41636, 6, 1036, 1036)).
code(double_metaphone_test_1_code35, variable_declaration_fragment, double_metaphone_test_1_stmt4, (fragments, 0), range(double_metaphone_test_1, 41643, 15, 1036, 1036)).
code(double_metaphone_test_1_code36, modifier, double_metaphone_test_1_stmt5, (modifiers, 0), range(double_metaphone_test_1, 41672, 5, 1037, 1037)).
code(double_metaphone_test_1_code37, simple_type, double_metaphone_test_1_stmt5, type, range(double_metaphone_test_1, 41678, 6, 1037, 1037)).
code(double_metaphone_test_1_code38, variable_declaration_fragment, double_metaphone_test_1_stmt5, (fragments, 0), range(double_metaphone_test_1, 41685, 15, 1037, 1037)).
code(double_metaphone_test_1_code39, modifier, double_metaphone_test_1_stmt6, (modifiers, 0), range(double_metaphone_test_1, 41714, 5, 1038, 1038)).
code(double_metaphone_test_1_code40, simple_type, double_metaphone_test_1_stmt6, type, range(double_metaphone_test_1, 41720, 6, 1038, 1038)).
code(double_metaphone_test_1_code41, variable_declaration_fragment, double_metaphone_test_1_stmt6, (fragments, 0), range(double_metaphone_test_1, 41727, 104, 1038, 1038)).
code(double_metaphone_test_1_code42, method_declaration, double_metaphone_test_1_code2, (body_declarations, 8), range(double_metaphone_test_1, 42952, 558, 1063, 1071)).
code(double_metaphone_test_1_code43, simple_type, double_metaphone_test_1_expr19, type, range(double_metaphone_test_1, 43031, 15, 1065, 1065)).
code(double_metaphone_test_1_code44, method_declaration, double_metaphone_test_1_code2, (body_declarations, 11), range(double_metaphone_test_1, 45718, 614, 1122, 1138)).
code(double_metaphone_test_1_code45, modifier, double_metaphone_test_1_stmt9, (modifiers, 0), range(double_metaphone_test_1, 45784, 5, 1124, 1124)).
code(double_metaphone_test_1_code47, simple_type, double_metaphone_test_1_code46, element_type, range(double_metaphone_test_1, 45790, 6, 1124, 1124)).
code(double_metaphone_test_1_code46, array_type, double_metaphone_test_1_stmt9, type, range(double_metaphone_test_1, 45790, 10, 1124, 1124)).
code(double_metaphone_test_1_code48, dimension, double_metaphone_test_1_code46, (dimensions, 0), range(double_metaphone_test_1, 45796, 2, 1124, 1124)).
code(double_metaphone_test_1_code49, dimension, double_metaphone_test_1_code46, (dimensions, 1), range(double_metaphone_test_1, 45798, 2, 1124, 1124)).
code(double_metaphone_test_1_code50, variable_declaration_fragment, double_metaphone_test_1_stmt9, (fragments, 0), range(double_metaphone_test_1, 45801, 417, 1124, 1135)).
code(double_metaphone_test_1_code51, array_type, double_metaphone_test_1_expr20, type, range(double_metaphone_test_1, 45819, 10, 1124, 1124)).
code(double_metaphone_test_1_code52, simple_type, double_metaphone_test_1_code51, element_type, range(double_metaphone_test_1, 45819, 6, 1124, 1124)).
code(double_metaphone_test_1_code53, dimension, double_metaphone_test_1_code51, (dimensions, 0), range(double_metaphone_test_1, 45825, 2, 1124, 1124)).
code(double_metaphone_test_1_code54, dimension, double_metaphone_test_1_code51, (dimensions, 1), range(double_metaphone_test_1, 45827, 2, 1124, 1124)).
code(double_metaphone_test_1_code55, method_declaration, double_metaphone_test_1_code2, (body_declarations, 19), range(double_metaphone_test_1, 50441, 337, 1241, 1250)).
code(double_metaphone_test_1_code56, primitive_type, double_metaphone_test_1_expr25, type, range(double_metaphone_test_1, 50594, 3, 1245, 1245)).
code(double_metaphone_test_1_code57, variable_declaration_fragment, double_metaphone_test_1_expr25, (fragments, 0), range(double_metaphone_test_1, 50598, 5, 1245, 1245)).

%%% Name References

name_ref(t_double_metaphone_test_1, type, 'DoubleMetaphoneTest', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;').
name_ref(v_fail_msg_117, var, 'failMsg', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.doubleMetaphoneEqualTest([[Ljava/lang/String;Z)V#0#0#failMsg').
name_ref(v_i_121, var, 'i', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.validateFixture([[Ljava/lang/String;)V#0#i').
name_ref(v_name_0_115, var, 'name0', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.doubleMetaphoneEqualTest([[Ljava/lang/String;Z)V#0#0#name0').
name_ref(v_name_1_116, var, 'name1', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.doubleMetaphoneEqualTest([[Ljava/lang/String;Z)V#0#0#name1').
name_ref(v_pair_114, var, 'pair', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.doubleMetaphoneEqualTest([[Ljava/lang/String;Z)V#0#pair').
name_ref(v_test_fixture_119, var, 'testFixture', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testIsDoubleMetaphoneEqualBasic()V#testFixture').
name_ref(p_alternate_103, param, 'alternate', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.append(Ljava/lang/String;Ljava/lang/String;)V#alternate#0#1').
name_ref(p_alternate_118, param, 'alternate', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.doubleMetaphoneNotEqualTest(Z)V#alternate#0#0').
name_ref(p_alternate_15, param, 'alternate', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z#alternate#0#2').
name_ref(p_alternate_8, param, 'alternate', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;#alternate#0#1').
name_ref(p_alternate_98, param, 'alternate', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.append(CC)V#alternate#0#1').
name_ref(p_ch_86, param, 'ch', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isVowel(C)Z#ch#0#0').
name_ref(p_criteria_94, param, 'criteria', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.contains(Ljava/lang/String;II[Ljava/lang/String;)Z#criteria#0#3').
name_ref(p_expected_108, param, 'expected', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.assertDoubleMetaphone(Ljava/lang/String;Ljava/lang/String;)V#expected#0#0').
name_ref(p_expected_110, param, 'expected', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.assertDoubleMetaphoneAlt(Ljava/lang/String;Ljava/lang/String;)V#expected#0#0').
name_ref(p_index_18, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleAEIOUY(Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#1').
name_ref(p_index_21, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_24, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_27, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_30, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_33, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#index#0#2').
name_ref(p_index_37, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_40, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_43, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#index#0#2').
name_ref(p_index_47, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_50, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_53, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#index#0#2').
name_ref(p_index_57, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#index#0#2').
name_ref(p_index_61, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_64, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_67, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_70, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#index#0#2').
name_ref(p_index_73, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#index#0#2').
name_ref(p_index_76, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionC0(Ljava/lang/String;I)Z#index#0#1').
name_ref(p_index_78, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionCH0(Ljava/lang/String;I)Z#index#0#1').
name_ref(p_index_80, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionCH1(Ljava/lang/String;I)Z#index#0#1').
name_ref(p_index_82, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionL0(Ljava/lang/String;I)Z#index#0#1').
name_ref(p_index_84, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionM0(Ljava/lang/String;I)Z#index#0#1').
name_ref(p_index_90, param, 'index', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.charAt(Ljava/lang/String;I)C#index#0#1').
name_ref(p_input_88, param, 'input', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.cleanInput(Ljava/lang/String;)Ljava/lang/String;#input#0#0').
name_ref(p_length_93, param, 'length', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.contains(Ljava/lang/String;II[Ljava/lang/String;)Z#length#0#2').
name_ref(p_max_code_len_16, param, 'maxCodeLen', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.setMaxCodeLen(I)V#maxCodeLen#0#0').
name_ref(p_max_length_95, param, 'maxLength', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V#maxLength#0#0').
name_ref(p_obj_9, param, 'obj', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.encode(Ljava/lang/Object;)Ljava/lang/Object;|Lorg/apache/commons/codec/EncoderException;#obj#0#0').
name_ref(p_pairs_112, param, 'pairs', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.doubleMetaphoneEqualTest([[Ljava/lang/String;Z)V#pairs#0#0').
name_ref(p_pairs_120, param, 'pairs', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.validateFixture([[Ljava/lang/String;)V#pairs#0#0').
name_ref(p_primary_102, param, 'primary', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.append(Ljava/lang/String;Ljava/lang/String;)V#primary#0#0').
name_ref(p_primary_97, param, 'primary', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.append(CC)V#primary#0#0').
name_ref(p_result_17, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleAEIOUY(Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#0').
name_ref(p_result_20, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_23, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_26, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_29, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_32, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#result#0#1').
name_ref(p_result_36, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_39, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_42, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#result#0#1').
name_ref(p_result_46, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_49, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_52, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#result#0#1').
name_ref(p_result_56, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#result#0#1').
name_ref(p_result_60, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_63, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_66, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_69, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#result#0#1').
name_ref(p_result_72, param, 'result', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#result#0#1').
name_ref(p_slavo_germanic_34, param, 'slavoGermanic', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#slavoGermanic#0#3').
name_ref(p_slavo_germanic_44, param, 'slavoGermanic', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#slavoGermanic#0#3').
name_ref(p_slavo_germanic_54, param, 'slavoGermanic', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#slavoGermanic#0#3').
name_ref(p_slavo_germanic_58, param, 'slavoGermanic', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#slavoGermanic#0#3').
name_ref(p_slavo_germanic_74, param, 'slavoGermanic', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#slavoGermanic#0#3').
name_ref(p_source_109, param, 'source', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.assertDoubleMetaphone(Ljava/lang/String;Ljava/lang/String;)V#source#0#1').
name_ref(p_source_111, param, 'source', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.assertDoubleMetaphoneAlt(Ljava/lang/String;Ljava/lang/String;)V#source#0#1').
name_ref(p_start_92, param, 'start', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.contains(Ljava/lang/String;II[Ljava/lang/String;)Z#start#0#1').
name_ref(p_use_alternate_113, param, 'useAlternate', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.doubleMetaphoneEqualTest([[Ljava/lang/String;Z)V#useAlternate#0#1').
name_ref(p_value_10, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.encode(Ljava/lang/String;)Ljava/lang/String;#value#0#0').
name_ref(p_value_100, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.appendAlternate(C)V#value#0#0').
name_ref(p_value_101, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.append(Ljava/lang/String;)V#value#0#0').
name_ref(p_value_104, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.appendPrimary(Ljava/lang/String;)V#value#0#0').
name_ref(p_value_105, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.appendAlternate(Ljava/lang/String;)V#value#0#0').
name_ref(p_value_19, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_1_11, param, 'value1', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z#value1#0#0').
name_ref(p_value_1_13, param, 'value1', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z#value1#0#0').
name_ref(p_value_22, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_25, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_28, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_2_12, param, 'value2', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z#value2#0#1').
name_ref(p_value_2_14, param, 'value2', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z#value2#0#1').
name_ref(p_value_31, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#value#0#0').
name_ref(p_value_35, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_38, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_41, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#value#0#0').
name_ref(p_value_45, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_48, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_51, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#value#0#0').
name_ref(p_value_55, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#value#0#0').
name_ref(p_value_59, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_6, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;#value#0#0').
name_ref(p_value_62, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_65, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_68, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I#value#0#0').
name_ref(p_value_7, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;#value#0#0').
name_ref(p_value_71, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I#value#0#0').
name_ref(p_value_75, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionC0(Ljava/lang/String;I)Z#value#0#0').
name_ref(p_value_77, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionCH0(Ljava/lang/String;I)Z#value#0#0').
name_ref(p_value_79, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionCH1(Ljava/lang/String;I)Z#value#0#0').
name_ref(p_value_81, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionL0(Ljava/lang/String;I)Z#value#0#0').
name_ref(p_value_83, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionM0(Ljava/lang/String;I)Z#value#0#0').
name_ref(p_value_85, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isSlavoGermanic(Ljava/lang/String;)Z#value#0#0').
name_ref(p_value_87, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isSilentStart(Ljava/lang/String;)Z#value#0#0').
name_ref(p_value_89, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.charAt(Ljava/lang/String;I)C#value#0#0').
name_ref(p_value_91, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.contains(Ljava/lang/String;II[Ljava/lang/String;)Z#value#0#0').
name_ref(p_value_96, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.append(C)V#value#0#0').
name_ref(p_value_99, param, 'value', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.appendPrimary(C)V#value#0#0').
name_ref(f_es_ep_eb_el_ey_ib_il_in_ie_ei_er_3, field, 'ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER)[Ljava/lang/String;').
name_ref(f_fixture_106, field, 'FIXTURE', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.FIXTURE)[[Ljava/lang/String;').
name_ref(f_l_r_n_m_b_h_f_v_w_space_2, field, 'L_R_N_M_B_H_F_V_W_SPACE', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.L_R_N_M_B_H_F_V_W_SPACE)[Ljava/lang/String;').
name_ref(f_l_t_k_s_n_m_b_z_4, field, 'L_T_K_S_N_M_B_Z', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.L_T_K_S_N_M_B_Z)[Ljava/lang/String;').
name_ref(f_length_122, field, 'length', '.length)I').
name_ref(f_matches_107, field, 'MATCHES', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.MATCHES)[[Ljava/lang/String;').
name_ref(f_max_code_len_5, field, 'maxCodeLen', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.maxCodeLen)I').
name_ref(f_silent_start_1, field, 'SILENT_START', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.SILENT_START)[Ljava/lang/String;').
name_ref(m_append_44, method, 'append', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.append(C)V').
name_ref(m_append_45, method, 'append', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.append(CC)V').
name_ref(m_append_48, method, 'append', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.append(Ljava/lang/String;)V').
name_ref(m_append_49, method, 'append', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.append(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_append_alternate_47, method, 'appendAlternate', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.appendAlternate(C)V').
name_ref(m_append_alternate_51, method, 'appendAlternate', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.appendAlternate(Ljava/lang/String;)V').
name_ref(m_append_primary_46, method, 'appendPrimary', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.appendPrimary(C)V').
name_ref(m_append_primary_50, method, 'appendPrimary', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.appendPrimary(Ljava/lang/String;)V').
name_ref(m_assert_double_metaphone_55, method, 'assertDoubleMetaphone', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.assertDoubleMetaphone(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_assert_double_metaphone_alt_56, method, 'assertDoubleMetaphoneAlt', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.assertDoubleMetaphoneAlt(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_assert_true_60, method, 'assertTrue', 'Lorg/junit/Assert;.assertTrue(Ljava/lang/String;Z)V').
name_ref(m_assert_true_65, method, 'assertTrue', 'Lorg/junit/Assert;.assertTrue(Z)V').
name_ref(m_char_at_41, method, 'charAt', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.charAt(Ljava/lang/String;I)C').
name_ref(m_clean_input_5, method, 'cleanInput', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.cleanInput(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_condition_c0_31, method, 'conditionC0', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionC0(Ljava/lang/String;I)Z').
name_ref(m_condition_ch0_32, method, 'conditionCH0', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionCH0(Ljava/lang/String;I)Z').
name_ref(m_condition_ch1_33, method, 'conditionCH1', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionCH1(Ljava/lang/String;I)Z').
name_ref(m_condition_l0_34, method, 'conditionL0', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionL0(Ljava/lang/String;I)Z').
name_ref(m_condition_m0_35, method, 'conditionM0', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.conditionM0(Ljava/lang/String;I)Z').
name_ref(m_contains_42, method, 'contains', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.contains(Ljava/lang/String;II[Ljava/lang/String;)Z').
name_ref(m_create_string_encoder_57, method, 'createStringEncoder', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.createStringEncoder()Lorg/apache/commons/codec/language/DoubleMetaphone;').
name_ref(m_double_metaphone_1, method, 'DoubleMetaphone', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.()V').
name_ref(m_double_metaphone_3, method, 'doubleMetaphone', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_double_metaphone_4, method, 'doubleMetaphone', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_double_metaphone_equal_test_58, method, 'doubleMetaphoneEqualTest', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.doubleMetaphoneEqualTest([[Ljava/lang/String;Z)V').
name_ref(m_double_metaphone_not_equal_test_62, method, 'doubleMetaphoneNotEqualTest', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.doubleMetaphoneNotEqualTest(Z)V').
name_ref(m_double_metaphone_result_43, method, 'DoubleMetaphoneResult', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V').
name_ref(m_encode_6, method, 'encode', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.encode(Ljava/lang/Object;)Ljava/lang/Object;|Lorg/apache/commons/codec/EncoderException;').
name_ref(m_encode_7, method, 'encode', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.encode(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_equals_10, method, 'equals', 'Ljava/lang/String;.equals(Ljava/lang/Object;)Z').
name_ref(m_get_alternate_53, method, 'getAlternate', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.getAlternate()Ljava/lang/String;').
name_ref(m_get_max_code_len_11, method, 'getMaxCodeLen', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.getMaxCodeLen()I').
name_ref(m_get_primary_52, method, 'getPrimary', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.getPrimary()Ljava/lang/String;').
name_ref(m_get_string_encoder_61, method, 'getStringEncoder', 'Lorg/apache/commons/codec/StringEncoderAbstractTest;.getStringEncoder()TT;').
name_ref(m_handle_aeiouy_13, method, 'handleAEIOUY', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleAEIOUY(Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_c_14, method, 'handleC', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_cc_15, method, 'handleCC', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_ch_16, method, 'handleCH', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_d_17, method, 'handleD', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_g_18, method, 'handleG', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I').
name_ref(m_handle_gh_19, method, 'handleGH', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_h_20, method, 'handleH', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_j_21, method, 'handleJ', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I').
name_ref(m_handle_l_22, method, 'handleL', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_p_23, method, 'handleP', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_r_24, method, 'handleR', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I').
name_ref(m_handle_s_25, method, 'handleS', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I').
name_ref(m_handle_sc_26, method, 'handleSC', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_t_27, method, 'handleT', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_w_28, method, 'handleW', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_x_29, method, 'handleX', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I').
name_ref(m_handle_z_30, method, 'handleZ', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I').
name_ref(m_is_complete_54, method, 'isComplete', 'Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;.isComplete()Z').
name_ref(m_is_double_metaphone_equal_8, method, 'isDoubleMetaphoneEqual', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_is_double_metaphone_equal_9, method, 'isDoubleMetaphoneEqual', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z').
name_ref(m_is_silent_start_38, method, 'isSilentStart', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isSilentStart(Ljava/lang/String;)Z').
name_ref(m_is_slavo_germanic_36, method, 'isSlavoGermanic', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isSlavoGermanic(Ljava/lang/String;)Z').
name_ref(m_is_vowel_37, method, 'isVowel', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.isVowel(C)Z').
name_ref(m_length_40, method, 'length', 'Ljava/lang/String;.length()I').
name_ref(m_object_2, method, 'Object', 'Ljava/lang/Object;.()V').
name_ref(m_set_max_code_len_12, method, 'setMaxCodeLen', 'Lorg/apache/commons/codec/language/DoubleMetaphone;.setMaxCodeLen(I)V').
name_ref(m_test_ccedilla_63, method, 'testCCedilla', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testCCedilla()V').
name_ref(m_test_codec184_64, method, 'testCodec184', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testCodec184()V|Ljava/lang/Throwable;').
name_ref(m_test_double_metaphone_66, method, 'testDoubleMetaphone', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testDoubleMetaphone()V').
name_ref(m_test_empty_67, method, 'testEmpty', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testEmpty()V').
name_ref(m_test_is_double_metaphone_equal_basic_68, method, 'testIsDoubleMetaphoneEqualBasic', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testIsDoubleMetaphoneEqualBasic()V').
name_ref(m_test_is_double_metaphone_equal_extended1_69, method, 'testIsDoubleMetaphoneEqualExtended1', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testIsDoubleMetaphoneEqualExtended1()V').
name_ref(m_test_is_double_metaphone_equal_extended2_70, method, 'testIsDoubleMetaphoneEqualExtended2', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testIsDoubleMetaphoneEqualExtended2()V').
name_ref(m_test_is_double_metaphone_equal_extended3_71, method, 'testIsDoubleMetaphoneEqualExtended3', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testIsDoubleMetaphoneEqualExtended3()V').
name_ref(m_test_is_double_metaphone_equal_with_matches_72, method, 'testIsDoubleMetaphoneEqualWithMATCHES', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testIsDoubleMetaphoneEqualWithMATCHES()V').
name_ref(m_test_is_double_metaphone_not_equal_73, method, 'testIsDoubleMetaphoneNotEqual', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testIsDoubleMetaphoneNotEqual()V').
name_ref(m_test_ntilde_74, method, 'testNTilde', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testNTilde()V').
name_ref(m_test_set_max_code_length_75, method, 'testSetMaxCodeLength', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.testSetMaxCodeLength()V').
name_ref(m_trim_39, method, 'trim', 'Ljava/lang/String;.trim()Ljava/lang/String;').
name_ref(m_validate_fixture_59, method, 'validateFixture', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.validateFixture([[Ljava/lang/String;)V').
name_ref(q_length_1, q_name, 'pairs.length', 'Lorg/apache/commons/codec/language/DoubleMetaphoneTest;.validateFixture([[Ljava/lang/String;)V#pairs#0#0:.length)I').

%%% End of Code Facts

