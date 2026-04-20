%%% Logic-FL Facts
:- style_check(-discontiguous).

%cluster_1 - org.apache.commons.math.stat.clustering.Cluster
param(p_center_1, 1, m_cluster_1).
assign(f_center_2, p_center_1, line(cluster_1, 46)).
assign(f_points_3, cluster_1_expr5, line(cluster_1, 47)).
method_invoc(cluster_1_expr5, m_array_list_2, line(cluster_1, 47)).
param(p_point_4, 1, m_add_point_3).
return(f_center_2, m_get_center_5, line(cluster_1, 71)).

%kmeans_plus_plus_clusterer_test_1 - org.apache.commons.math.stat.clustering.KMeansPlusPlusClustererTest
assign(v_transformer_33, kmeans_plus_plus_clusterer_test_1_expr1, line(kmeans_plus_plus_clusterer_test_1, 104)).
method_invoc(kmeans_plus_plus_clusterer_test_1_expr1, m_kmeans_plus_plus_clusterer_14, line(kmeans_plus_plus_clusterer_test_1, 104)).
argument(kmeans_plus_plus_clusterer_test_1_expr2, 1, kmeans_plus_plus_clusterer_test_1_expr1).
assign(v_points_34, kmeans_plus_plus_clusterer_test_1_expr3, line(kmeans_plus_plus_clusterer_test_1, 106)).
assign(v_clusters_35, kmeans_plus_plus_clusterer_test_1_expr5, line(kmeans_plus_plus_clusterer_test_1, 109)).
method_invoc(kmeans_plus_plus_clusterer_test_1_expr5, m_cluster_15, line(kmeans_plus_plus_clusterer_test_1, 109)).
argument(kmeans_plus_plus_clusterer_test_1_expr6, 1, kmeans_plus_plus_clusterer_test_1_expr5).
argument(kmeans_plus_plus_clusterer_test_1_literal1, 2, kmeans_plus_plus_clusterer_test_1_expr5).
argument(kmeans_plus_plus_clusterer_test_1_literal2, 3, kmeans_plus_plus_clusterer_test_1_expr5).
ref(v_transformer_33, kmeans_plus_plus_clusterer_test_1_expr5, line(kmeans_plus_plus_clusterer_test_1, 109)).
method_invoc(kmeans_plus_plus_clusterer_test_1_expr6, m_as_list_27, line(kmeans_plus_plus_clusterer_test_1, 109)).
argument(v_points_34, 1, kmeans_plus_plus_clusterer_test_1_expr6).
ref(t_arrays_4, kmeans_plus_plus_clusterer_test_1_expr6, line(kmeans_plus_plus_clusterer_test_1, 109)).

%euclidean_integer_point_1 - org.apache.commons.math.stat.clustering.EuclideanIntegerPoint
param(p_point_5, 1, m_euclidean_integer_point_6).
assign(f_point_6, p_point_5, line(euclidean_integer_point_1, 44)).
return(f_point_6, m_get_point_7, line(euclidean_integer_point_1, 52)).
param(p_p_7, 1, m_distance_from_8).
return(euclidean_integer_point_1_expr4, m_distance_from_8, line(euclidean_integer_point_1, 57)).
method_invoc(euclidean_integer_point_1_expr4, m_distance_9, line(euclidean_integer_point_1, 57)).
argument(f_point_6, 1, euclidean_integer_point_1_expr4).
argument(euclidean_integer_point_1_expr5, 2, euclidean_integer_point_1_expr4).
ref(t_math_utils_1, euclidean_integer_point_1_expr4, line(euclidean_integer_point_1, 57)).
method_invoc(euclidean_integer_point_1_expr5, m_get_point_7, line(euclidean_integer_point_1, 57)).
ref(p_p_7, euclidean_integer_point_1_expr5, line(euclidean_integer_point_1, 57)).
param(p_points_8, 1, m_centroid_of_10).
param(p_other_9, 1, m_equals_11).

%math_utils_1 - org.apache.commons.math.util.MathUtils
assign(f_factorials_36, math_utils_1_expr1, line(math_utils_1, 69)).
param(p_x_37, 1, m_add_and_check_29).
param(p_y_38, 2, m_add_and_check_29).
param(p_a_39, 1, m_add_and_check_30).
param(p_b_40, 2, m_add_and_check_30).
param(p_a_41, 1, m_add_and_check_31).
param(p_b_42, 2, m_add_and_check_31).
param(p_msg_43, 3, m_add_and_check_31).
param(p_n_44, 1, m_binomial_coefficient_32).
param(p_k_45, 2, m_binomial_coefficient_32).
param(p_n_46, 1, m_binomial_coefficient_double_33).
param(p_k_47, 2, m_binomial_coefficient_double_33).
param(p_n_48, 1, m_binomial_coefficient_log_34).
param(p_k_49, 2, m_binomial_coefficient_log_34).
param(p_n_50, 1, m_check_binomial_35).
param(p_k_51, 2, m_check_binomial_35).
throw(m_check_binomial_35, illegal_argument_exception).
param(p_x_52, 1, m_compare_to_36).
param(p_y_53, 2, m_compare_to_36).
param(p_eps_54, 3, m_compare_to_36).
param(p_x_55, 1, m_cosh_37).
param(p_x_56, 1, m_equals_38).
param(p_y_57, 2, m_equals_38).
param(p_x_58, 1, m_equals_39).
param(p_y_59, 2, m_equals_39).
param(p_eps_60, 3, m_equals_39).
param(p_x_61, 1, m_equals_40).
param(p_y_62, 2, m_equals_40).
param(p_max_ulps_63, 3, m_equals_40).
param(p_x_64, 1, m_equals_41).
param(p_y_65, 2, m_equals_41).
param(p_n_66, 1, m_factorial_42).
param(p_n_67, 1, m_factorial_double_43).
param(p_n_68, 1, m_factorial_log_44).
param(p_p_69, 1, m_gcd_45).
param(p_q_70, 2, m_gcd_45).
param(p_value_71, 1, m_hash_46).
param(p_value_72, 1, m_hash_47).
param(p_x_73, 1, m_indicator_48).
param(p_x_74, 1, m_indicator_49).
param(p_x_75, 1, m_indicator_50).
param(p_x_76, 1, m_indicator_51).
param(p_x_77, 1, m_indicator_52).
param(p_x_78, 1, m_indicator_53).
param(p_a_79, 1, m_lcm_54).
param(p_b_80, 2, m_lcm_54).
param(p_base_81, 1, m_log_55).
param(p_x_82, 2, m_log_55).
param(p_x_83, 1, m_mul_and_check_56).
param(p_y_84, 2, m_mul_and_check_56).
param(p_a_85, 1, m_mul_and_check_57).
param(p_b_86, 2, m_mul_and_check_57).
param(p_d_87, 1, m_next_after_58).
param(p_direction_88, 2, m_next_after_58).
param(p_d_89, 1, m_scalb_59).
param(p_scale_factor_90, 2, m_scalb_59).
param(p_a_91, 1, m_normalize_angle_60).
param(p_center_92, 2, m_normalize_angle_60).
param(p_values_93, 1, m_normalize_array_61).
param(p_normalized_sum_94, 2, m_normalize_array_61).
throw(m_normalize_array_61, arithmetic_exception).
throw(m_normalize_array_61, illegal_argument_exception).
param(p_x_95, 1, m_round_62).
param(p_scale_96, 2, m_round_62).
param(p_x_97, 1, m_round_63).
param(p_scale_98, 2, m_round_63).
param(p_rounding_method_99, 3, m_round_63).
param(p_x_100, 1, m_round_64).
param(p_scale_101, 2, m_round_64).
param(p_x_102, 1, m_round_65).
param(p_scale_103, 2, m_round_65).
param(p_rounding_method_104, 3, m_round_65).
param(p_unscaled_105, 1, m_round_unscaled_66).
param(p_sign_106, 2, m_round_unscaled_66).
param(p_rounding_method_107, 3, m_round_unscaled_66).
param(p_x_108, 1, m_sign_67).
param(p_x_109, 1, m_sign_68).
param(p_x_110, 1, m_sign_69).
param(p_x_111, 1, m_sign_70).
param(p_x_112, 1, m_sign_71).
param(p_x_113, 1, m_sign_72).
param(p_x_114, 1, m_sinh_73).
param(p_x_115, 1, m_sub_and_check_74).
param(p_y_116, 2, m_sub_and_check_74).
param(p_a_117, 1, m_sub_and_check_75).
param(p_b_118, 2, m_sub_and_check_75).
param(p_k_119, 1, m_pow_76).
param(p_e_120, 2, m_pow_76).
throw(m_pow_76, illegal_argument_exception).
param(p_k_121, 1, m_pow_77).
param(p_e_122, 2, m_pow_77).
throw(m_pow_77, illegal_argument_exception).
param(p_k_123, 1, m_pow_78).
param(p_e_124, 2, m_pow_78).
throw(m_pow_78, illegal_argument_exception).
param(p_k_125, 1, m_pow_79).
param(p_e_126, 2, m_pow_79).
throw(m_pow_79, illegal_argument_exception).
param(p_k_127, 1, m_pow_80).
param(p_e_128, 2, m_pow_80).
throw(m_pow_80, illegal_argument_exception).
param(p_k_129, 1, m_pow_81).
param(p_e_130, 2, m_pow_81).
throw(m_pow_81, illegal_argument_exception).
param(p_k_131, 1, m_pow_82).
param(p_e_132, 2, m_pow_82).
throw(m_pow_82, illegal_argument_exception).
param(p_p_1_133, 1, m_distance_1_83).
param(p_p_2_134, 2, m_distance_1_83).
param(p_p_1_135, 1, m_distance_1_84).
param(p_p_2_136, 2, m_distance_1_84).
param(p_p_1_137, 1, m_distance_85).
param(p_p_2_138, 2, m_distance_85).
param(p_p_1_139, 1, m_distance_9).
param(p_p_2_140, 2, m_distance_9).
assign(v_sum_141, math_utils_1_literal1, line(math_utils_1, 1624)).
assign(v_i_142, math_utils_1_literal2, line(math_utils_1, 1625)).
ref(p_p_1_139, q_length_2, line(math_utils_1, 1625)).
assign(v_dp_143, math_utils_1_expr6, line(math_utils_1, 1626)).
ref(p_p_1_139, math_utils_1_expr7, line(math_utils_1, 1626)).
ref(p_p_2_140, math_utils_1_expr8, line(math_utils_1, 1626)).
assign(v_sum_141, math_utils_1_expr10, line(math_utils_1, 1627)).
return(math_utils_1_expr11, m_distance_9, line(math_utils_1, 1629)).
method_invoc(math_utils_1_expr11, m_sqrt_86, line(math_utils_1, 1629)).
argument(v_sum_141, 1, math_utils_1_expr11).
ref(t_math_5, math_utils_1_expr11, line(math_utils_1, 1629)).
param(p_p_1_144, 1, m_distance_inf_87).
param(p_p_2_145, 2, m_distance_inf_87).
param(p_p_1_146, 1, m_distance_inf_88).
param(p_p_2_147, 2, m_distance_inf_88).

%kmeans_plus_plus_clusterer_1 - org.apache.commons.math.stat.clustering.KMeansPlusPlusClusterer
param(p_random_10, 1, m_kmeans_plus_plus_clusterer_14).
assign(f_random_11, p_random_10, line(kmeans_plus_plus_clusterer_1, 41)).
param(p_points_12, 1, m_cluster_15).
param(p_k_13, 2, m_cluster_15).
param(p_max_iterations_14, 3, m_cluster_15).
assign(v_clusters_15, kmeans_plus_plus_clusterer_1_expr4, line(kmeans_plus_plus_clusterer_1, 56)).
method_invoc(kmeans_plus_plus_clusterer_1_expr4, m_choose_initial_centers_16, line(kmeans_plus_plus_clusterer_1, 56)).
argument(p_points_12, 1, kmeans_plus_plus_clusterer_1_expr4).
argument(p_k_13, 2, kmeans_plus_plus_clusterer_1_expr4).
argument(f_random_11, 3, kmeans_plus_plus_clusterer_1_expr4).
method_invoc(kmeans_plus_plus_clusterer_1_expr5, m_assign_points_to_clusters_17, line(kmeans_plus_plus_clusterer_1, 57)).
throw(kmeans_plus_plus_clusterer_1_expr5, null_pointer_exception, line(kmeans_plus_plus_clusterer_1, 57)).
argument(v_clusters_15, 1, kmeans_plus_plus_clusterer_1_expr5).
argument(p_points_12, 2, kmeans_plus_plus_clusterer_1_expr5).
param(p_clusters_16, 1, m_assign_points_to_clusters_17).
param(p_points_17, 2, m_assign_points_to_clusters_17).
ref(p_points_17, kmeans_plus_plus_clusterer_1_stmt4, line(kmeans_plus_plus_clusterer_1, 89)).
assign(v_cluster_19, kmeans_plus_plus_clusterer_1_expr6, line(kmeans_plus_plus_clusterer_1, 90)).
method_invoc(kmeans_plus_plus_clusterer_1_expr6, m_get_nearest_cluster_18, line(kmeans_plus_plus_clusterer_1, 90)).
argument(p_clusters_16, 1, kmeans_plus_plus_clusterer_1_expr6).
argument(v_p_18, 2, kmeans_plus_plus_clusterer_1_expr6).
method_invoc(kmeans_plus_plus_clusterer_1_expr7, m_add_point_3, line(kmeans_plus_plus_clusterer_1, 91)).
argument(v_p_18, 1, kmeans_plus_plus_clusterer_1_expr7).
ref(v_cluster_19, kmeans_plus_plus_clusterer_1_expr7, line(kmeans_plus_plus_clusterer_1, 91)).
param(p_points_20, 1, m_choose_initial_centers_16).
param(p_k_21, 2, m_choose_initial_centers_16).
param(p_random_22, 3, m_choose_initial_centers_16).
assign(v_point_set_23, kmeans_plus_plus_clusterer_1_expr8, line(kmeans_plus_plus_clusterer_1, 107)).
method_invoc(kmeans_plus_plus_clusterer_1_expr8, m_array_list_19, line(kmeans_plus_plus_clusterer_1, 107)).
argument(p_points_20, 1, kmeans_plus_plus_clusterer_1_expr8).
assign(v_result_set_24, kmeans_plus_plus_clusterer_1_expr9, line(kmeans_plus_plus_clusterer_1, 108)).
method_invoc(kmeans_plus_plus_clusterer_1_expr9, m_array_list_2, line(kmeans_plus_plus_clusterer_1, 108)).
assign(v_first_point_25, kmeans_plus_plus_clusterer_1_expr10, line(kmeans_plus_plus_clusterer_1, 111)).
method_invoc(kmeans_plus_plus_clusterer_1_expr10, m_remove_20, line(kmeans_plus_plus_clusterer_1, 111)).
argument(kmeans_plus_plus_clusterer_1_expr11, 1, kmeans_plus_plus_clusterer_1_expr10).
ref(v_point_set_23, kmeans_plus_plus_clusterer_1_expr10, line(kmeans_plus_plus_clusterer_1, 111)).
method_invoc(kmeans_plus_plus_clusterer_1_expr11, m_next_int_21, line(kmeans_plus_plus_clusterer_1, 111)).
argument(kmeans_plus_plus_clusterer_1_expr12, 1, kmeans_plus_plus_clusterer_1_expr11).
ref(p_random_22, kmeans_plus_plus_clusterer_1_expr11, line(kmeans_plus_plus_clusterer_1, 111)).
method_invoc(kmeans_plus_plus_clusterer_1_expr12, m_size_22, line(kmeans_plus_plus_clusterer_1, 111)).
ref(v_point_set_23, kmeans_plus_plus_clusterer_1_expr12, line(kmeans_plus_plus_clusterer_1, 111)).
method_invoc(kmeans_plus_plus_clusterer_1_expr13, m_add_23, line(kmeans_plus_plus_clusterer_1, 112)).
argument(kmeans_plus_plus_clusterer_1_expr14, 1, kmeans_plus_plus_clusterer_1_expr13).
ref(v_result_set_24, kmeans_plus_plus_clusterer_1_expr13, line(kmeans_plus_plus_clusterer_1, 112)).
method_invoc(kmeans_plus_plus_clusterer_1_expr14, m_cluster_1, line(kmeans_plus_plus_clusterer_1, 112)).
argument(v_first_point_25, 1, kmeans_plus_plus_clusterer_1_expr14).
assign(v_dx_2_26, kmeans_plus_plus_clusterer_1_expr15, line(kmeans_plus_plus_clusterer_1, 114)).
method_invoc(kmeans_plus_plus_clusterer_1_expr16, m_size_22, line(kmeans_plus_plus_clusterer_1, 114)).
ref(v_point_set_23, kmeans_plus_plus_clusterer_1_expr16, line(kmeans_plus_plus_clusterer_1, 114)).
method_invoc(kmeans_plus_plus_clusterer_1_expr18, m_size_22, line(kmeans_plus_plus_clusterer_1, 115)).
ref(v_result_set_24, kmeans_plus_plus_clusterer_1_expr18, line(kmeans_plus_plus_clusterer_1, 115)).
return(v_result_set_24, m_choose_initial_centers_16, line(kmeans_plus_plus_clusterer_1, 139)).
param(p_clusters_27, 1, m_get_nearest_cluster_18).
param(p_point_28, 2, m_get_nearest_cluster_18).
assign(v_min_distance_29, q_max_value_1, line(kmeans_plus_plus_clusterer_1, 153)).
ref(t_double_2, q_max_value_1, line(kmeans_plus_plus_clusterer_1, 153)).
assign(v_min_cluster_30, kmeans_plus_plus_clusterer_1_literal1, line(kmeans_plus_plus_clusterer_1, 154)).
ref(p_clusters_27, kmeans_plus_plus_clusterer_1_stmt16, line(kmeans_plus_plus_clusterer_1, 155)).
assign(v_distance_32, kmeans_plus_plus_clusterer_1_expr19, line(kmeans_plus_plus_clusterer_1, 156)).
method_invoc(kmeans_plus_plus_clusterer_1_expr19, m_distance_from_24, line(kmeans_plus_plus_clusterer_1, 156)).
argument(kmeans_plus_plus_clusterer_1_expr20, 1, kmeans_plus_plus_clusterer_1_expr19).
ref(p_point_28, kmeans_plus_plus_clusterer_1_expr19, line(kmeans_plus_plus_clusterer_1, 156)).
method_invoc(kmeans_plus_plus_clusterer_1_expr20, m_get_center_5, line(kmeans_plus_plus_clusterer_1, 156)).
ref(v_c_31, kmeans_plus_plus_clusterer_1_expr20, line(kmeans_plus_plus_clusterer_1, 156)).
return(v_min_cluster_30, m_get_nearest_cluster_18, line(kmeans_plus_plus_clusterer_1, 162)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.math.stat.clustering.KMeansPlusPlusClustererTest', 'testPerformClusterAnalysisDegenerate').
trace(trace_1, failure_1, m_assign_points_to_clusters_17, line(kmeans_plus_plus_clusterer_1, 91), failure_1, target).
trace(trace_2, trace_1, m_cluster_15, line(kmeans_plus_plus_clusterer_1, 57), failure_1, target).
trace(trace_3, trace_2, m_test_perform_cluster_analysis_degenerate_26, line(kmeans_plus_plus_clusterer_test_1, 109), failure_1, target).
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



%%% End of Static Facts

%%% Values

val(kmeans_plus_plus_clusterer_1_expr6, null, line(kmeans_plus_plus_clusterer_1, 90)).
val(v_cluster_19, null, line(kmeans_plus_plus_clusterer_1, 91)).



%%% End of Facts