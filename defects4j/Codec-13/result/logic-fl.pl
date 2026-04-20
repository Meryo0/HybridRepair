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
trace(trace_4, trace_3, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_8, trace_7, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_9, trace_8, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_10, trace_9, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_11, trace_10, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_12, trace_11, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_13, trace_12, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_14, trace_13, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_15, trace_14, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_16, trace_15, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_18, trace_17, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_19, trace_18, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_20, trace_19, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_21, trace_20, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_22, trace_21, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_23, trace_22, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_24, trace_23, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_25, trace_24, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.codec.language.DoubleMetaphoneTest', 'testCodec184').
trace(trace_26, failure_2, m_is_double_metaphone_equal_9, line(double_metaphone_1, 244), failure_2, target).
trace(trace_27, trace_26, m_test_codec184_64, line(double_metaphone_test_1, 1065), failure_2, target).
trace(trace_28, trace_27, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_2, non_target).
trace(trace_29, trace_28, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_2, non_target).
trace(trace_30, trace_29, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_2, non_target).
trace(trace_31, trace_30, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_32, trace_31, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_2, non_target).
trace(trace_33, trace_32, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_2, non_target).
trace(trace_34, trace_33, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_2, non_target).
trace(trace_35, trace_34, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_2, non_target).
trace(trace_36, trace_35, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_37, trace_36, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_2, non_target).
trace(trace_38, trace_37, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_2, non_target).
trace(trace_39, trace_38, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_2, non_target).
trace(trace_40, trace_39, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_2, non_target).
trace(trace_41, trace_40, 'run', line(org_junit_runners_parent_runner_4, 331), failure_2, non_target).
trace(trace_42, trace_41, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_2, non_target).
trace(trace_43, trace_42, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_2, non_target).
trace(trace_44, trace_43, 'access$100', line(org_junit_runners_parent_runner, 66), failure_2, non_target).
trace(trace_45, trace_44, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_2, non_target).
trace(trace_46, trace_45, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_47, trace_46, 'run', line(org_junit_runners_parent_runner, 413), failure_2, non_target).
trace(trace_48, trace_47, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_49, trace_48, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(double_metaphone_1_expr11, null, line(double_metaphone_1, 244)).
val(double_metaphone_1_expr10, null, line(double_metaphone_1, 244)).



%%% End of Facts