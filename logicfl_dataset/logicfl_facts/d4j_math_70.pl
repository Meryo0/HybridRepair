%%% Logic-FL Facts
:- style_check(-discontiguous).

%univariate_real_solver_utils_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverUtils
param(p_f_62, 1, m_solve_56).
param(p_x_0_63, 2, m_solve_56).
param(p_x_1_64, 3, m_solve_56).
throw(m_solve_56, convergence_exception).
throw(m_solve_56, function_evaluation_exception).
param(p_f_65, 1, m_solve_57).
param(p_x_0_66, 2, m_solve_57).
param(p_x_1_67, 3, m_solve_57).
param(p_absolute_accuracy_68, 4, m_solve_57).
throw(m_solve_57, convergence_exception).
throw(m_solve_57, function_evaluation_exception).
param(p_function_69, 1, m_bracket_58).
param(p_initial_70, 2, m_bracket_58).
param(p_lower_bound_71, 3, m_bracket_58).
param(p_upper_bound_72, 4, m_bracket_58).
throw(m_bracket_58, convergence_exception).
throw(m_bracket_58, function_evaluation_exception).
param(p_function_73, 1, m_bracket_59).
param(p_initial_74, 2, m_bracket_59).
param(p_lower_bound_75, 3, m_bracket_59).
param(p_upper_bound_76, 4, m_bracket_59).
param(p_maximum_iterations_77, 5, m_bracket_59).
throw(m_bracket_59, convergence_exception).
throw(m_bracket_59, function_evaluation_exception).
param(p_a_78, 1, m_midpoint_24).
param(p_b_79, 2, m_midpoint_24).
return(univariate_real_solver_utils_1_expr1, m_midpoint_24, line(univariate_real_solver_utils_1, 223)).
assign(univariate_real_solver_utils_1_expr2, univariate_real_solver_utils_1_expr3, line(univariate_real_solver_utils_1, 223)).
param(p_f_80, 1, m_setup_60).

%sin_function_1 - org.apache.commons.math.analysis.SinFunction
param(p_x_13, 1, m_value_12).
throw(m_value_12, function_evaluation_exception).
param(p_x_14, 1, m_value_14).
throw(m_value_14, function_evaluation_exception).

%bisection_solver_test_1 - org.apache.commons.math.analysis.solvers.BisectionSolverTest
throw(m_test_deprecated_26, math_exception).
throw(m_test_sin_zero_27, math_exception).
throw(m_test_quintic_zero_28, math_exception).
throw(m_test_math369_29, exception).
assign(v_f_32, bisection_solver_test_1_expr1, line(bisection_solver_test_1, 99)).
method_invoc(bisection_solver_test_1_expr1, m_sin_function_30, line(bisection_solver_test_1, 99)).
assign(v_solver_33, bisection_solver_test_1_expr2, line(bisection_solver_test_1, 100)).
method_invoc(bisection_solver_test_1_expr2, m_bisection_solver_16, line(bisection_solver_test_1, 100)).
method_invoc(bisection_solver_test_1_expr3, m_assert_equals_31, line(bisection_solver_test_1, 101)).
argument(q_pi_1, 1, bisection_solver_test_1_expr3).
argument(bisection_solver_test_1_expr4, 2, bisection_solver_test_1_expr3).
argument(bisection_solver_test_1_expr5, 3, bisection_solver_test_1_expr3).
ref(t_math_4, q_pi_1, line(bisection_solver_test_1, 101)).
method_invoc(bisection_solver_test_1_expr4, m_solve_32, line(bisection_solver_test_1, 101)).
throw(bisection_solver_test_1_expr4, convergence_exception, line(bisection_solver_test_1, 101)).
throw(bisection_solver_test_1_expr4, function_evaluation_exception, line(bisection_solver_test_1, 101)).
throw(bisection_solver_test_1_expr4, illegal_argument_exception, line(bisection_solver_test_1, 101)).
argument(v_f_32, 1, bisection_solver_test_1_expr4).
argument(bisection_solver_test_1_literal1, 2, bisection_solver_test_1_expr4).
argument(bisection_solver_test_1_literal2, 3, bisection_solver_test_1_expr4).
argument(bisection_solver_test_1_literal3, 4, bisection_solver_test_1_expr4).
ref(v_solver_33, bisection_solver_test_1_expr4, line(bisection_solver_test_1, 101)).
method_invoc(bisection_solver_test_1_expr5, m_get_absolute_accuracy_33, line(bisection_solver_test_1, 101)).
ref(v_solver_33, bisection_solver_test_1_expr5, line(bisection_solver_test_1, 101)).

%bisection_solver_1 - org.apache.commons.math.analysis.solvers.BisectionSolver
param(p_f_15, 1, m_bisection_solver_15).
method_invoc(bisection_solver_1_expr1, m_univariate_real_solver_impl_17, line(bisection_solver_1, 52)).
argument(bisection_solver_1_literal1, 1, bisection_solver_1_expr1).
argument(bisection_solver_1_literal2, 2, bisection_solver_1_expr1).
param(p_min_16, 1, m_solve_18).
param(p_max_17, 2, m_solve_18).
param(p_initial_18, 3, m_solve_18).
throw(m_solve_18, max_iterations_exceeded_exception).
throw(m_solve_18, function_evaluation_exception).
param(p_min_19, 1, m_solve_19).
param(p_max_20, 2, m_solve_19).
throw(m_solve_19, max_iterations_exceeded_exception).
throw(m_solve_19, function_evaluation_exception).
return(bisection_solver_1_expr2, m_solve_19, line(bisection_solver_1, 66)).
method_invoc(bisection_solver_1_expr2, m_solve_20, line(bisection_solver_1, 66)).
throw(bisection_solver_1_expr2, max_iterations_exceeded_exception, line(bisection_solver_1, 66)).
throw(bisection_solver_1_expr2, function_evaluation_exception, line(bisection_solver_1, 66)).
throw(bisection_solver_1_expr2, null_pointer_exception, line(bisection_solver_1, 66)).
argument(f_f_21, 1, bisection_solver_1_expr2).
argument(p_min_19, 2, bisection_solver_1_expr2).
argument(p_max_20, 3, bisection_solver_1_expr2).
param(p_f_22, 1, m_solve_21).
param(p_min_23, 2, m_solve_21).
param(p_max_24, 3, m_solve_21).
param(p_initial_25, 4, m_solve_21).
throw(m_solve_21, max_iterations_exceeded_exception).
throw(m_solve_21, function_evaluation_exception).
return(bisection_solver_1_expr3, m_solve_21, line(bisection_solver_1, 72)).
method_invoc(bisection_solver_1_expr3, m_solve_19, line(bisection_solver_1, 72)).
throw(bisection_solver_1_expr3, max_iterations_exceeded_exception, line(bisection_solver_1, 72)).
throw(bisection_solver_1_expr3, function_evaluation_exception, line(bisection_solver_1, 72)).
argument(p_min_23, 1, bisection_solver_1_expr3).
argument(p_max_24, 2, bisection_solver_1_expr3).
param(p_f_26, 1, m_solve_20).
param(p_min_27, 2, m_solve_20).
param(p_max_28, 3, m_solve_20).
throw(m_solve_20, max_iterations_exceeded_exception).
throw(m_solve_20, function_evaluation_exception).
method_invoc(bisection_solver_1_expr4, m_clear_result_22, line(bisection_solver_1, 79)).
method_invoc(bisection_solver_1_expr5, m_verify_interval_23, line(bisection_solver_1, 80)).
argument(p_min_27, 1, bisection_solver_1_expr5).
argument(p_max_28, 2, bisection_solver_1_expr5).
assign(v_i_29, bisection_solver_1_literal3, line(bisection_solver_1, 85)).
assign(v_m_30, bisection_solver_1_expr8, line(bisection_solver_1, 87)).
method_invoc(bisection_solver_1_expr8, m_midpoint_24, line(bisection_solver_1, 87)).
argument(p_min_27, 1, bisection_solver_1_expr8).
argument(p_max_28, 2, bisection_solver_1_expr8).
ref(t_univariate_real_solver_utils_2, bisection_solver_1_expr8, line(bisection_solver_1, 87)).
assign(v_fmin_31, bisection_solver_1_expr10, line(bisection_solver_1, 88)).
method_invoc(bisection_solver_1_expr10, m_value_25, line(bisection_solver_1, 88)).
throw(bisection_solver_1_expr10, function_evaluation_exception, line(bisection_solver_1, 88)).
argument(p_min_27, 1, bisection_solver_1_expr10).
ref(p_f_26, bisection_solver_1_expr10, line(bisection_solver_1, 88)).

%univariate_real_solver_impl_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverImpl
assign(f_result_computed_34, univariate_real_solver_impl_1_literal1, line(univariate_real_solver_impl_1, 41)).
param(p_f_35, 1, m_univariate_real_solver_impl_42).
param(p_default_maximal_iteration_count_36, 2, m_univariate_real_solver_impl_42).
param(p_default_absolute_accuracy_37, 3, m_univariate_real_solver_impl_42).
param(p_default_maximal_iteration_count_38, 1, m_univariate_real_solver_impl_17).
param(p_default_absolute_accuracy_39, 2, m_univariate_real_solver_impl_17).
method_invoc(univariate_real_solver_impl_1_expr1, m_converging_algorithm_impl_1, line(univariate_real_solver_impl_1, 93)).
argument(p_default_maximal_iteration_count_38, 1, univariate_real_solver_impl_1_expr1).
argument(p_default_absolute_accuracy_39, 2, univariate_real_solver_impl_1_expr1).
assign(f_default_function_value_accuracy_40, univariate_real_solver_impl_1_literal2, line(univariate_real_solver_impl_1, 94)).
assign(f_function_value_accuracy_41, f_default_function_value_accuracy_40, line(univariate_real_solver_impl_1, 95)).
throw(m_check_result_computed_43, illegal_state_exception).
param(p_accuracy_42, 1, m_set_function_value_accuracy_46).
param(p_new_result_43, 1, m_set_result_49).
param(p_iteration_count_44, 2, m_set_result_49).
param(p_x_45, 1, m_set_result_50).
param(p_fx_46, 2, m_set_result_50).
param(p_iteration_count_47, 3, m_set_result_50).
assign(f_iteration_count_9, univariate_real_solver_impl_1_literal3, line(univariate_real_solver_impl_1, 165)).
assign(f_result_computed_34, univariate_real_solver_impl_1_literal4, line(univariate_real_solver_impl_1, 166)).
param(p_lower_48, 1, m_is_bracketing_51).
param(p_upper_49, 2, m_is_bracketing_51).
param(p_function_50, 3, m_is_bracketing_51).
throw(m_is_bracketing_51, function_evaluation_exception).
param(p_start_51, 1, m_is_sequence_52).
param(p_mid_52, 2, m_is_sequence_52).
param(p_end_53, 3, m_is_sequence_52).
param(p_lower_54, 1, m_verify_interval_23).
param(p_upper_55, 2, m_verify_interval_23).
param(p_lower_56, 1, m_verify_sequence_53).
param(p_initial_57, 2, m_verify_sequence_53).
param(p_upper_58, 3, m_verify_sequence_53).
param(p_lower_59, 1, m_verify_bracketing_54).
param(p_upper_60, 2, m_verify_bracketing_54).
param(p_function_61, 3, m_verify_bracketing_54).
throw(m_verify_bracketing_54, function_evaluation_exception).

%converging_algorithm_impl_1 - org.apache.commons.math.ConvergingAlgorithmImpl
param(p_default_maximal_iteration_count_1, 1, m_converging_algorithm_impl_1).
param(p_default_absolute_accuracy_2, 2, m_converging_algorithm_impl_1).
assign(f_default_absolute_accuracy_3, p_default_absolute_accuracy_2, line(converging_algorithm_impl_1, 62)).
assign(f_default_relative_accuracy_4, converging_algorithm_impl_1_literal1, line(converging_algorithm_impl_1, 63)).
assign(f_absolute_accuracy_5, p_default_absolute_accuracy_2, line(converging_algorithm_impl_1, 64)).
assign(f_relative_accuracy_6, f_default_relative_accuracy_4, line(converging_algorithm_impl_1, 65)).
assign(f_default_maximal_iteration_count_7, p_default_maximal_iteration_count_1, line(converging_algorithm_impl_1, 66)).
assign(f_maximal_iteration_count_8, p_default_maximal_iteration_count_1, line(converging_algorithm_impl_1, 67)).
assign(f_iteration_count_9, converging_algorithm_impl_1_literal2, line(converging_algorithm_impl_1, 68)).
param(p_accuracy_10, 1, m_set_absolute_accuracy_3).
param(p_count_11, 1, m_set_maximal_iteration_count_6).
param(p_accuracy_12, 1, m_set_relative_accuracy_9).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.math.analysis.solvers.BisectionSolverTest', 'testMath369').
trace(trace_1, failure_1, m_solve_20, line(bisection_solver_1, 88), failure_1, target).
trace(trace_2, trace_1, m_solve_19, line(bisection_solver_1, 66), failure_1, target).
trace(trace_3, trace_2, m_solve_21, line(bisection_solver_1, 72), failure_1, target).
trace(trace_4, trace_3, m_test_math369_29, line(bisection_solver_test_1, 101), failure_1, target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_7, trace_6, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_8, trace_7, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_9, trace_8, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_10, trace_9, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_11, trace_10, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_12, trace_11, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_13, trace_12, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_14, trace_13, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_17, trace_16, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(f_f_21, null, line(bisection_solver_1, 66)).
val(p_f_26, null, line(bisection_solver_1, 88)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(univariate_real_solver_utils_1, 'org.apache.commons.math.analysis.solvers.UnivariateRealSolverUtils').
class(sin_function_1, 'org.apache.commons.math.analysis.SinFunction').
class(bisection_solver_test_1, 'org.apache.commons.math.analysis.solvers.BisectionSolverTest').
class(bisection_solver_1, 'org.apache.commons.math.analysis.solvers.BisectionSolver').
class(univariate_real_solver_impl_1, 'org.apache.commons.math.analysis.solvers.UnivariateRealSolverImpl').
class(converging_algorithm_impl_1, 'org.apache.commons.math.ConvergingAlgorithmImpl').

%%% Methods
%univariate_real_solver_utils_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverUtils
method(m_univariate_real_solver_utils_55, range(univariate_real_solver_utils_1, 1356, 104, 35, 40)).
method(m_solve_56, range(univariate_real_solver_utils_1, 1466, 818, 42, 60)).
method(m_solve_57, range(univariate_real_solver_utils_1, 2290, 1094, 62, 86)).
method(m_bracket_58, range(univariate_real_solver_utils_1, 3390, 2384, 88, 134)).
method(m_bracket_59, range(univariate_real_solver_utils_1, 5781, 3578, 136, 213)).
method(m_midpoint_24, range(univariate_real_solver_utils_1, 9365, 240, 215, 224)).
method(m_setup_60, range(univariate_real_solver_utils_1, 9611, 365, 226, 235)).
%sin_function_1 - org.apache.commons.math.analysis.SinFunction
method(m_value_12, range(sin_function_1, 1404, 100, 36, 38)).
method(m_derivative_13, range(sin_function_1, 1560, 236, 42, 48)).
method(m_value_14, range(sin_function_1, 1663, 116, 44, 46)).
%bisection_solver_test_1 - org.apache.commons.math.analysis.solvers.BisectionSolverTest
method(m_test_deprecated_26, range(bisection_solver_test_1, 1210, 426, 31, 42)).
method(m_test_sin_zero_27, range(bisection_solver_test_1, 1642, 412, 44, 54)).
method(m_test_quintic_zero_28, range(bisection_solver_test_1, 2059, 1521, 56, 96)).
method(m_test_math369_29, range(bisection_solver_test_1, 3586, 258, 98, 102)).
method(m_test_set_function_value_accuracy_34, range(bisection_solver_test_1, 3850, 293, 104, 112)).
method(m_test_reset_function_value_accuracy_35, range(bisection_solver_test_1, 4149, 401, 114, 124)).
method(m_test_set_absolute_accuracy_36, range(bisection_solver_test_1, 4556, 278, 126, 134)).
method(m_test_reset_absolute_accuracy_37, range(bisection_solver_test_1, 4840, 376, 136, 146)).
method(m_test_set_maximal_iteration_count_38, range(bisection_solver_test_1, 5222, 279, 148, 156)).
method(m_test_reset_maximal_iteration_count_39, range(bisection_solver_test_1, 5507, 386, 158, 168)).
method(m_test_set_relative_accuracy_40, range(bisection_solver_test_1, 5899, 278, 170, 178)).
method(m_test_reset_relative_accuracy_41, range(bisection_solver_test_1, 6183, 376, 180, 190)).
%bisection_solver_1 - org.apache.commons.math.analysis.solvers.BisectionSolver
method(m_bisection_solver_15, range(bisection_solver_1, 1376, 466, 33, 45)).
method(m_bisection_solver_16, range(bisection_solver_1, 1848, 108, 47, 53)).
method(m_solve_18, range(bisection_solver_1, 1962, 218, 55, 60)).
method(m_solve_19, range(bisection_solver_1, 2186, 202, 62, 67)).
method(m_solve_21, range(bisection_solver_1, 2394, 231, 69, 73)).
method(m_solve_20, range(bisection_solver_1, 2631, 999, 75, 108)).
%univariate_real_solver_impl_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverImpl
method(m_univariate_real_solver_impl_42, range(univariate_real_solver_impl_1, 2133, 1221, 57, 81)).
method(m_univariate_real_solver_impl_17, range(univariate_real_solver_impl_1, 3360, 676, 83, 96)).
method(m_check_result_computed_43, range(univariate_real_solver_impl_1, 4042, 329, 98, 105)).
method(m_get_result_44, range(univariate_real_solver_impl_1, 4377, 112, 107, 111)).
method(m_get_function_value_45, range(univariate_real_solver_impl_1, 4495, 126, 113, 117)).
method(m_set_function_value_accuracy_46, range(univariate_real_solver_impl_1, 4627, 134, 119, 122)).
method(m_get_function_value_accuracy_47, range(univariate_real_solver_impl_1, 4767, 111, 124, 127)).
method(m_reset_function_value_accuracy_48, range(univariate_real_solver_impl_1, 4884, 135, 129, 132)).
method(m_set_result_49, range(univariate_real_solver_impl_1, 5025, 381, 134, 144)).
method(m_set_result_50, range(univariate_real_solver_impl_1, 5412, 478, 146, 159)).
method(m_clear_result_22, range(univariate_real_solver_impl_1, 5896, 177, 161, 167)).
method(m_is_bracketing_51, range(univariate_real_solver_impl_1, 6079, 722, 169, 185)).
method(m_is_sequence_52, range(univariate_real_solver_impl_1, 6807, 400, 187, 197)).
method(m_verify_interval_23, range(univariate_real_solver_impl_1, 7213, 531, 199, 213)).
method(m_verify_sequence_53, range(univariate_real_solver_impl_1, 7750, 650, 215, 230)).
method(m_verify_bracketing_54, range(univariate_real_solver_impl_1, 8406, 1032, 232, 254)).
%converging_algorithm_impl_1 - org.apache.commons.math.ConvergingAlgorithmImpl
method(m_converging_algorithm_impl_1, range(converging_algorithm_impl_1, 1696, 888, 52, 69)).
method(m_get_iteration_count_2, range(converging_algorithm_impl_1, 2590, 94, 71, 74)).
method(m_set_absolute_accuracy_3, range(converging_algorithm_impl_1, 2690, 118, 76, 79)).
method(m_get_absolute_accuracy_4, range(converging_algorithm_impl_1, 2814, 101, 81, 84)).
method(m_reset_absolute_accuracy_5, range(converging_algorithm_impl_1, 2921, 120, 86, 89)).
method(m_set_maximal_iteration_count_6, range(converging_algorithm_impl_1, 3047, 119, 91, 94)).
method(m_get_maximal_iteration_count_7, range(converging_algorithm_impl_1, 3172, 108, 96, 99)).
method(m_reset_maximal_iteration_count_8, range(converging_algorithm_impl_1, 3286, 135, 101, 104)).
method(m_set_relative_accuracy_9, range(converging_algorithm_impl_1, 3427, 118, 106, 109)).
method(m_get_relative_accuracy_10, range(converging_algorithm_impl_1, 3551, 101, 111, 114)).
method(m_reset_relative_accuracy_11, range(converging_algorithm_impl_1, 3658, 120, 116, 119)).

%%% Blocks
%univariate_real_solver_utils_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverUtils
block(univariate_real_solver_utils_1_block1, block, univariate_real_solver_utils_1_code3, body, range(univariate_real_solver_utils_1, 9569, 36, 222, 224)).
%sin_function_1 - org.apache.commons.math.analysis.SinFunction
%bisection_solver_test_1 - org.apache.commons.math.analysis.solvers.BisectionSolverTest
block(bisection_solver_test_1_block1, block, bisection_solver_test_1_code6, body, range(bisection_solver_test_1, 3629, 215, 98, 102)).
%bisection_solver_1 - org.apache.commons.math.analysis.solvers.BisectionSolver
block(bisection_solver_1_block1, block, bisection_solver_1_code3, body, range(bisection_solver_1, 1923, 33, 51, 53)).
block(bisection_solver_1_block2, block, bisection_solver_1_code4, body, range(bisection_solver_1, 2346, 42, 65, 67)).
block(bisection_solver_1_block3, block, bisection_solver_1_code5, body, range(bisection_solver_1, 2586, 39, 71, 73)).
block(bisection_solver_1_block4, block, bisection_solver_1_code6, body, range(bisection_solver_1, 2807, 823, 77, 108)).
block(bisection_solver_1_block5, block, bisection_solver_1_stmt7, body, range(bisection_solver_1, 2986, 564, 86, 105)).
%univariate_real_solver_impl_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverImpl
block(univariate_real_solver_impl_1_block1, block, univariate_real_solver_impl_1_code7, body, range(univariate_real_solver_impl_1, 3839, 197, 92, 96)).
block(univariate_real_solver_impl_1_block2, block, univariate_real_solver_impl_1_code8, body, range(univariate_real_solver_impl_1, 5996, 77, 164, 167)).
block(univariate_real_solver_impl_1_block3, block, univariate_real_solver_impl_1_code9, body, range(univariate_real_solver_impl_1, 7519, 225, 207, 213)).
block(univariate_real_solver_impl_1_block4, block, univariate_real_solver_impl_1_stmt6, then_statement, range(univariate_real_solver_impl_1, 7549, 189, 208, 212)).
%converging_algorithm_impl_1 - org.apache.commons.math.ConvergingAlgorithmImpl
block(converging_algorithm_impl_1_block1, block, converging_algorithm_impl_1_code3, body, range(converging_algorithm_impl_1, 2177, 407, 61, 69)).

%%% Statements
%univariate_real_solver_utils_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverUtils
stmt(univariate_real_solver_utils_1_stmt1, return_statement, univariate_real_solver_utils_1_block1, (statements, 0), range(univariate_real_solver_utils_1, 9579, 20, 223, 223)).
%sin_function_1 - org.apache.commons.math.analysis.SinFunction
%bisection_solver_test_1 - org.apache.commons.math.analysis.solvers.BisectionSolverTest
stmt(bisection_solver_test_1_stmt1, variable_declaration_statement, bisection_solver_test_1_block1, (statements, 0), range(bisection_solver_test_1, 3639, 45, 99, 99)).
stmt(bisection_solver_test_1_stmt2, variable_declaration_statement, bisection_solver_test_1_block1, (statements, 1), range(bisection_solver_test_1, 3693, 52, 100, 100)).
stmt(bisection_solver_test_1_stmt3, expression_statement, bisection_solver_test_1_block1, (statements, 2), range(bisection_solver_test_1, 3754, 84, 101, 101)).
%bisection_solver_1 - org.apache.commons.math.analysis.solvers.BisectionSolver
stmt(bisection_solver_1_stmt1, super_constructor_invocation, bisection_solver_1_block1, (statements, 0), range(bisection_solver_1, 1933, 17, 52, 52)).
stmt(bisection_solver_1_stmt2, return_statement, bisection_solver_1_block2, (statements, 0), range(bisection_solver_1, 2356, 26, 66, 66)).
stmt(bisection_solver_1_stmt3, return_statement, bisection_solver_1_block3, (statements, 0), range(bisection_solver_1, 2596, 23, 72, 72)).
stmt(bisection_solver_1_stmt4, expression_statement, bisection_solver_1_block4, (statements, 0), range(bisection_solver_1, 2818, 14, 79, 79)).
stmt(bisection_solver_1_stmt5, expression_statement, bisection_solver_1_block4, (statements, 1), range(bisection_solver_1, 2841, 24, 80, 80)).
stmt(bisection_solver_1_stmt6, variable_declaration_statement, bisection_solver_1_block4, (statements, 5), range(bisection_solver_1, 2933, 10, 85, 85)).
stmt(bisection_solver_1_stmt7, while_statement, bisection_solver_1_block4, (statements, 6), range(bisection_solver_1, 2952, 598, 86, 105)).
stmt(bisection_solver_1_stmt8, expression_statement, bisection_solver_1_block5, (statements, 0), range(bisection_solver_1, 3000, 49, 87, 87)).
stmt(bisection_solver_1_stmt9, expression_statement, bisection_solver_1_block5, (statements, 1), range(bisection_solver_1, 3061, 20, 88, 88)).
%univariate_real_solver_impl_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverImpl
stmt(univariate_real_solver_impl_1_stmt1, super_constructor_invocation, univariate_real_solver_impl_1_block1, (statements, 0), range(univariate_real_solver_impl_1, 3849, 61, 93, 93)).
stmt(univariate_real_solver_impl_1_stmt2, expression_statement, univariate_real_solver_impl_1_block1, (statements, 1), range(univariate_real_solver_impl_1, 3919, 44, 94, 94)).
stmt(univariate_real_solver_impl_1_stmt3, expression_statement, univariate_real_solver_impl_1_block1, (statements, 2), range(univariate_real_solver_impl_1, 3972, 58, 95, 95)).
stmt(univariate_real_solver_impl_1_stmt4, expression_statement, univariate_real_solver_impl_1_block2, (statements, 0), range(univariate_real_solver_impl_1, 6006, 24, 165, 165)).
stmt(univariate_real_solver_impl_1_stmt5, expression_statement, univariate_real_solver_impl_1_block2, (statements, 1), range(univariate_real_solver_impl_1, 6039, 28, 166, 166)).
stmt(univariate_real_solver_impl_1_stmt6, if_statement, univariate_real_solver_impl_1_block3, (statements, 0), range(univariate_real_solver_impl_1, 7529, 209, 208, 212)).
%converging_algorithm_impl_1 - org.apache.commons.math.ConvergingAlgorithmImpl
stmt(converging_algorithm_impl_1_stmt1, expression_statement, converging_algorithm_impl_1_block1, (statements, 0), range(converging_algorithm_impl_1, 2187, 55, 62, 62)).
stmt(converging_algorithm_impl_1_stmt2, expression_statement, converging_algorithm_impl_1_block1, (statements, 1), range(converging_algorithm_impl_1, 2251, 39, 63, 63)).
stmt(converging_algorithm_impl_1_stmt3, expression_statement, converging_algorithm_impl_1_block1, (statements, 2), range(converging_algorithm_impl_1, 2299, 48, 64, 64)).
stmt(converging_algorithm_impl_1_stmt4, expression_statement, converging_algorithm_impl_1_block1, (statements, 3), range(converging_algorithm_impl_1, 2356, 48, 65, 65)).
stmt(converging_algorithm_impl_1_stmt5, expression_statement, converging_algorithm_impl_1_block1, (statements, 4), range(converging_algorithm_impl_1, 2413, 65, 66, 66)).
stmt(converging_algorithm_impl_1_stmt6, expression_statement, converging_algorithm_impl_1_block1, (statements, 5), range(converging_algorithm_impl_1, 2487, 58, 67, 67)).
stmt(converging_algorithm_impl_1_stmt7, expression_statement, converging_algorithm_impl_1_block1, (statements, 6), range(converging_algorithm_impl_1, 2554, 24, 68, 68)).

%%% Expressions
%univariate_real_solver_utils_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverUtils
expr(univariate_real_solver_utils_1_expr2, parenthesized_expression, univariate_real_solver_utils_1_expr1, left_operand, range(univariate_real_solver_utils_1, 9586, 7, 223, 223), "(a + b)").
expr(univariate_real_solver_utils_1_expr1, infix_expression, univariate_real_solver_utils_1_stmt1, expression, range(univariate_real_solver_utils_1, 9586, 12, 223, 223), "(a + b) * .5").
expr(univariate_real_solver_utils_1_expr3, infix_expression, univariate_real_solver_utils_1_expr2, expression, range(univariate_real_solver_utils_1, 9587, 5, 223, 223), "a + b").
%sin_function_1 - org.apache.commons.math.analysis.SinFunction
%bisection_solver_test_1 - org.apache.commons.math.analysis.solvers.BisectionSolverTest
expr(bisection_solver_test_1_expr1, class_instance_creation, bisection_solver_test_1_code8, initializer, range(bisection_solver_test_1, 3666, 17, 99, 99), "new SinFunction()").
expr(bisection_solver_test_1_expr2, class_instance_creation, bisection_solver_test_1_code11, initializer, range(bisection_solver_test_1, 3723, 21, 100, 100), "new BisectionSolver()").
expr(bisection_solver_test_1_expr3, method_invocation, bisection_solver_test_1_stmt3, expression, range(bisection_solver_test_1, 3754, 83, 101, 101), "assertEquals(Math.PI,solver.solve(f,3.0,3.2,3.1),solver.getAbsoluteAccuracy())").
expr(bisection_solver_test_1_expr4, method_invocation, bisection_solver_test_1_expr3, (arguments, 1), range(bisection_solver_test_1, 3776, 30, 101, 101), "solver.solve(f,3.0,3.2,3.1)").
expr(bisection_solver_test_1_expr5, method_invocation, bisection_solver_test_1_expr3, (arguments, 2), range(bisection_solver_test_1, 3808, 28, 101, 101), "solver.getAbsoluteAccuracy()").
%bisection_solver_1 - org.apache.commons.math.analysis.solvers.BisectionSolver
expr(bisection_solver_1_expr1, super_constructor_invocation, bisection_solver_1_block1, (statements, 0), range(bisection_solver_1, 1933, 17, 52, 52), "super(100,1E-6);").
expr(bisection_solver_1_expr2, method_invocation, bisection_solver_1_stmt2, expression, range(bisection_solver_1, 2363, 18, 66, 66), "solve(f,min,max)").
expr(bisection_solver_1_expr3, method_invocation, bisection_solver_1_stmt3, expression, range(bisection_solver_1, 2603, 15, 72, 72), "solve(min,max)").
expr(bisection_solver_1_expr4, method_invocation, bisection_solver_1_stmt4, expression, range(bisection_solver_1, 2818, 13, 79, 79), "clearResult()").
expr(bisection_solver_1_expr5, method_invocation, bisection_solver_1_stmt5, expression, range(bisection_solver_1, 2841, 23, 80, 80), "verifyInterval(min,max)").
expr(bisection_solver_1_expr6, infix_expression, bisection_solver_1_stmt7, expression, range(bisection_solver_1, 2959, 25, 86, 86), "i < maximalIterationCount").
expr(bisection_solver_1_expr7, assignment, bisection_solver_1_stmt8, expression, range(bisection_solver_1, 3000, 48, 87, 87), "m=UnivariateRealSolverUtils.midpoint(min,max)").
expr(bisection_solver_1_expr8, method_invocation, bisection_solver_1_expr7, right_hand_side, range(bisection_solver_1, 3004, 44, 87, 87), "UnivariateRealSolverUtils.midpoint(min,max)").
expr(bisection_solver_1_expr9, assignment, bisection_solver_1_stmt9, expression, range(bisection_solver_1, 3061, 19, 88, 88), "fmin=f.value(min)").
expr(bisection_solver_1_expr10, method_invocation, bisection_solver_1_expr9, right_hand_side, range(bisection_solver_1, 3068, 12, 88, 88), "f.value(min)").
%univariate_real_solver_impl_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverImpl
expr(univariate_real_solver_impl_1_expr1, super_constructor_invocation, univariate_real_solver_impl_1_block1, (statements, 0), range(univariate_real_solver_impl_1, 3849, 61, 93, 93), "super(defaultMaximalIterationCount,defaultAbsoluteAccuracy);").
expr(univariate_real_solver_impl_1_expr2, assignment, univariate_real_solver_impl_1_stmt2, expression, range(univariate_real_solver_impl_1, 3919, 43, 94, 94), "this.defaultFunctionValueAccuracy=1.0e-15").
expr(univariate_real_solver_impl_1_expr3, field_access, univariate_real_solver_impl_1_expr2, left_hand_side, range(univariate_real_solver_impl_1, 3919, 33, 94, 94), "this.defaultFunctionValueAccuracy").
expr(univariate_real_solver_impl_1_expr4, this_expression, f_default_function_value_accuracy_40, expression, range(univariate_real_solver_impl_1, 3919, 4, 94, 94), "this").
expr(univariate_real_solver_impl_1_expr6, field_access, univariate_real_solver_impl_1_expr5, left_hand_side, range(univariate_real_solver_impl_1, 3972, 26, 95, 95), "this.functionValueAccuracy").
expr(univariate_real_solver_impl_1_expr7, this_expression, f_function_value_accuracy_41, expression, range(univariate_real_solver_impl_1, 3972, 4, 95, 95), "this").
expr(univariate_real_solver_impl_1_expr5, assignment, univariate_real_solver_impl_1_stmt3, expression, range(univariate_real_solver_impl_1, 3972, 57, 95, 95), "this.functionValueAccuracy=defaultFunctionValueAccuracy").
expr(univariate_real_solver_impl_1_expr10, this_expression, f_iteration_count_9, expression, range(univariate_real_solver_impl_1, 6006, 4, 165, 165), "this").
expr(univariate_real_solver_impl_1_expr8, assignment, univariate_real_solver_impl_1_stmt4, expression, range(univariate_real_solver_impl_1, 6006, 23, 165, 165), "this.iterationCount=0").
expr(univariate_real_solver_impl_1_expr9, field_access, univariate_real_solver_impl_1_expr8, left_hand_side, range(univariate_real_solver_impl_1, 6006, 19, 165, 165), "this.iterationCount").
expr(univariate_real_solver_impl_1_expr13, this_expression, f_result_computed_34, expression, range(univariate_real_solver_impl_1, 6039, 4, 166, 166), "this").
expr(univariate_real_solver_impl_1_expr12, field_access, univariate_real_solver_impl_1_expr11, left_hand_side, range(univariate_real_solver_impl_1, 6039, 19, 166, 166), "this.resultComputed").
expr(univariate_real_solver_impl_1_expr11, assignment, univariate_real_solver_impl_1_stmt5, expression, range(univariate_real_solver_impl_1, 6039, 27, 166, 166), "this.resultComputed=false").
expr(univariate_real_solver_impl_1_expr14, infix_expression, univariate_real_solver_impl_1_stmt6, expression, range(univariate_real_solver_impl_1, 7533, 14, 208, 208), "lower >= upper").
%converging_algorithm_impl_1 - org.apache.commons.math.ConvergingAlgorithmImpl
expr(converging_algorithm_impl_1_expr2, field_access, converging_algorithm_impl_1_expr1, left_hand_side, range(converging_algorithm_impl_1, 2187, 28, 62, 62), "this.defaultAbsoluteAccuracy").
expr(converging_algorithm_impl_1_expr1, assignment, converging_algorithm_impl_1_stmt1, expression, range(converging_algorithm_impl_1, 2187, 54, 62, 62), "this.defaultAbsoluteAccuracy=defaultAbsoluteAccuracy").
expr(converging_algorithm_impl_1_expr3, this_expression, f_default_absolute_accuracy_3, expression, range(converging_algorithm_impl_1, 2187, 4, 62, 62), "this").
expr(converging_algorithm_impl_1_expr6, this_expression, f_default_relative_accuracy_4, expression, range(converging_algorithm_impl_1, 2251, 4, 63, 63), "this").
expr(converging_algorithm_impl_1_expr5, field_access, converging_algorithm_impl_1_expr4, left_hand_side, range(converging_algorithm_impl_1, 2251, 28, 63, 63), "this.defaultRelativeAccuracy").
expr(converging_algorithm_impl_1_expr4, assignment, converging_algorithm_impl_1_stmt2, expression, range(converging_algorithm_impl_1, 2251, 38, 63, 63), "this.defaultRelativeAccuracy=1.0e-14").
expr(converging_algorithm_impl_1_expr9, this_expression, f_absolute_accuracy_5, expression, range(converging_algorithm_impl_1, 2299, 4, 64, 64), "this").
expr(converging_algorithm_impl_1_expr8, field_access, converging_algorithm_impl_1_expr7, left_hand_side, range(converging_algorithm_impl_1, 2299, 21, 64, 64), "this.absoluteAccuracy").
expr(converging_algorithm_impl_1_expr7, assignment, converging_algorithm_impl_1_stmt3, expression, range(converging_algorithm_impl_1, 2299, 47, 64, 64), "this.absoluteAccuracy=defaultAbsoluteAccuracy").
expr(converging_algorithm_impl_1_expr10, assignment, converging_algorithm_impl_1_stmt4, expression, range(converging_algorithm_impl_1, 2356, 47, 65, 65), "this.relativeAccuracy=defaultRelativeAccuracy").
expr(converging_algorithm_impl_1_expr11, field_access, converging_algorithm_impl_1_expr10, left_hand_side, range(converging_algorithm_impl_1, 2356, 21, 65, 65), "this.relativeAccuracy").
expr(converging_algorithm_impl_1_expr12, this_expression, f_relative_accuracy_6, expression, range(converging_algorithm_impl_1, 2356, 4, 65, 65), "this").
expr(converging_algorithm_impl_1_expr14, field_access, converging_algorithm_impl_1_expr13, left_hand_side, range(converging_algorithm_impl_1, 2413, 33, 66, 66), "this.defaultMaximalIterationCount").
expr(converging_algorithm_impl_1_expr15, this_expression, f_default_maximal_iteration_count_7, expression, range(converging_algorithm_impl_1, 2413, 4, 66, 66), "this").
expr(converging_algorithm_impl_1_expr13, assignment, converging_algorithm_impl_1_stmt5, expression, range(converging_algorithm_impl_1, 2413, 64, 66, 66), "this.defaultMaximalIterationCount=defaultMaximalIterationCount").
expr(converging_algorithm_impl_1_expr18, this_expression, f_maximal_iteration_count_8, expression, range(converging_algorithm_impl_1, 2487, 4, 67, 67), "this").
expr(converging_algorithm_impl_1_expr16, assignment, converging_algorithm_impl_1_stmt6, expression, range(converging_algorithm_impl_1, 2487, 57, 67, 67), "this.maximalIterationCount=defaultMaximalIterationCount").
expr(converging_algorithm_impl_1_expr17, field_access, converging_algorithm_impl_1_expr16, left_hand_side, range(converging_algorithm_impl_1, 2487, 26, 67, 67), "this.maximalIterationCount").
expr(converging_algorithm_impl_1_expr21, this_expression, f_iteration_count_9, expression, range(converging_algorithm_impl_1, 2554, 4, 68, 68), "this").
expr(converging_algorithm_impl_1_expr20, field_access, converging_algorithm_impl_1_expr19, left_hand_side, range(converging_algorithm_impl_1, 2554, 19, 68, 68), "this.iterationCount").
expr(converging_algorithm_impl_1_expr19, assignment, converging_algorithm_impl_1_stmt7, expression, range(converging_algorithm_impl_1, 2554, 23, 68, 68), "this.iterationCount=0").

%%% Names
%univariate_real_solver_utils_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverUtils
name(p_a_78, simple_name, univariate_real_solver_utils_1_expr3, left_operand, range(univariate_real_solver_utils_1, 9587, 1, 223, 223), 'a').
name(p_b_79, simple_name, univariate_real_solver_utils_1_expr3, right_operand, range(univariate_real_solver_utils_1, 9591, 1, 223, 223), 'b').
%sin_function_1 - org.apache.commons.math.analysis.SinFunction
name(t_sin_function_1, simple_name, sin_function_1_code2, name, range(sin_function_1, 1225, 11, 31, 31), 'SinFunction').
%bisection_solver_test_1 - org.apache.commons.math.analysis.solvers.BisectionSolverTest
name(t_bisection_solver_test_3, simple_name, bisection_solver_test_1_code2, name, range(bisection_solver_test_1, 1166, 19, 29, 29), 'BisectionSolverTest').
name(v_f_32, simple_name, bisection_solver_test_1_code8, name, range(bisection_solver_test_1, 3662, 1, 99, 99), 'f').
name(v_solver_33, simple_name, bisection_solver_test_1_code11, name, range(bisection_solver_test_1, 3714, 6, 100, 100), 'solver').
name(m_assert_equals_31, simple_name, bisection_solver_test_1_expr3, name, range(bisection_solver_test_1, 3754, 12, 101, 101), 'assertEquals').
name(q_pi_1, qualified_name, bisection_solver_test_1_expr3, (arguments, 0), range(bisection_solver_test_1, 3767, 7, 101, 101), 'Math.PI').
name(t_math_4, simple_name, q_pi_1, qualifier, range(bisection_solver_test_1, 3767, 4, 101, 101), 'Math').
name(v_solver_33, simple_name, bisection_solver_test_1_expr4, expression, range(bisection_solver_test_1, 3776, 6, 101, 101), 'solver').
name(m_solve_32, simple_name, bisection_solver_test_1_expr4, name, range(bisection_solver_test_1, 3783, 5, 101, 101), 'solve').
name(v_f_32, simple_name, bisection_solver_test_1_expr4, (arguments, 0), range(bisection_solver_test_1, 3789, 1, 101, 101), 'f').
name(v_solver_33, simple_name, bisection_solver_test_1_expr5, expression, range(bisection_solver_test_1, 3808, 6, 101, 101), 'solver').
name(m_get_absolute_accuracy_33, simple_name, bisection_solver_test_1_expr5, name, range(bisection_solver_test_1, 3815, 19, 101, 101), 'getAbsoluteAccuracy').
%bisection_solver_1 - org.apache.commons.math.analysis.solvers.BisectionSolver
name(m_solve_20, simple_name, bisection_solver_1_expr2, name, range(bisection_solver_1, 2363, 5, 66, 66), 'solve').
name(f_f_21, simple_name, bisection_solver_1_expr2, (arguments, 0), range(bisection_solver_1, 2369, 1, 66, 66), 'f').
name(p_min_19, simple_name, bisection_solver_1_expr2, (arguments, 1), range(bisection_solver_1, 2372, 3, 66, 66), 'min').
name(p_max_20, simple_name, bisection_solver_1_expr2, (arguments, 2), range(bisection_solver_1, 2377, 3, 66, 66), 'max').
name(m_solve_19, simple_name, bisection_solver_1_expr3, name, range(bisection_solver_1, 2603, 5, 72, 72), 'solve').
name(p_min_23, simple_name, bisection_solver_1_expr3, (arguments, 0), range(bisection_solver_1, 2609, 3, 72, 72), 'min').
name(p_max_24, simple_name, bisection_solver_1_expr3, (arguments, 1), range(bisection_solver_1, 2614, 3, 72, 72), 'max').
name(m_clear_result_22, simple_name, bisection_solver_1_expr4, name, range(bisection_solver_1, 2818, 11, 79, 79), 'clearResult').
name(m_verify_interval_23, simple_name, bisection_solver_1_expr5, name, range(bisection_solver_1, 2841, 14, 80, 80), 'verifyInterval').
name(p_min_27, simple_name, bisection_solver_1_expr5, (arguments, 0), range(bisection_solver_1, 2856, 3, 80, 80), 'min').
name(p_max_28, simple_name, bisection_solver_1_expr5, (arguments, 1), range(bisection_solver_1, 2860, 3, 80, 80), 'max').
name(v_i_29, simple_name, bisection_solver_1_code8, name, range(bisection_solver_1, 2937, 1, 85, 85), 'i').
name(v_i_29, simple_name, bisection_solver_1_expr6, left_operand, range(bisection_solver_1, 2959, 1, 86, 86), 'i').
name(f_maximal_iteration_count_8, simple_name, bisection_solver_1_expr6, right_operand, range(bisection_solver_1, 2963, 21, 86, 86), 'maximalIterationCount').
name(v_m_30, simple_name, bisection_solver_1_expr7, left_hand_side, range(bisection_solver_1, 3000, 1, 87, 87), 'm').
name(t_univariate_real_solver_utils_2, simple_name, bisection_solver_1_expr8, expression, range(bisection_solver_1, 3004, 25, 87, 87), 'UnivariateRealSolverUtils').
name(m_midpoint_24, simple_name, bisection_solver_1_expr8, name, range(bisection_solver_1, 3030, 8, 87, 87), 'midpoint').
name(p_min_27, simple_name, bisection_solver_1_expr8, (arguments, 0), range(bisection_solver_1, 3039, 3, 87, 87), 'min').
name(p_max_28, simple_name, bisection_solver_1_expr8, (arguments, 1), range(bisection_solver_1, 3044, 3, 87, 87), 'max').
name(v_fmin_31, simple_name, bisection_solver_1_expr9, left_hand_side, range(bisection_solver_1, 3061, 4, 88, 88), 'fmin').
name(p_f_26, simple_name, bisection_solver_1_expr10, expression, range(bisection_solver_1, 3068, 1, 88, 88), 'f').
name(m_value_25, simple_name, bisection_solver_1_expr10, name, range(bisection_solver_1, 3070, 5, 88, 88), 'value').
name(p_min_27, simple_name, bisection_solver_1_expr10, (arguments, 0), range(bisection_solver_1, 3076, 3, 88, 88), 'min').
%univariate_real_solver_impl_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverImpl
name(f_result_computed_34, simple_name, univariate_real_solver_impl_1_code6, name, range(univariate_real_solver_impl_1, 1592, 14, 41, 41), 'resultComputed').
name(p_default_maximal_iteration_count_38, simple_name, univariate_real_solver_impl_1_stmt1, (arguments, 0), range(univariate_real_solver_impl_1, 3855, 28, 93, 93), 'defaultMaximalIterationCount').
name(p_default_absolute_accuracy_39, simple_name, univariate_real_solver_impl_1_stmt1, (arguments, 1), range(univariate_real_solver_impl_1, 3885, 23, 93, 93), 'defaultAbsoluteAccuracy').
name(f_default_function_value_accuracy_40, simple_name, univariate_real_solver_impl_1_expr3, name, range(univariate_real_solver_impl_1, 3924, 28, 94, 94), 'defaultFunctionValueAccuracy').
name(f_function_value_accuracy_41, simple_name, univariate_real_solver_impl_1_expr6, name, range(univariate_real_solver_impl_1, 3977, 21, 95, 95), 'functionValueAccuracy').
name(f_default_function_value_accuracy_40, simple_name, univariate_real_solver_impl_1_expr5, right_hand_side, range(univariate_real_solver_impl_1, 4001, 28, 95, 95), 'defaultFunctionValueAccuracy').
name(f_iteration_count_9, simple_name, univariate_real_solver_impl_1_expr9, name, range(univariate_real_solver_impl_1, 6011, 14, 165, 165), 'iterationCount').
name(f_result_computed_34, simple_name, univariate_real_solver_impl_1_expr12, name, range(univariate_real_solver_impl_1, 6044, 14, 166, 166), 'resultComputed').
name(p_lower_54, simple_name, univariate_real_solver_impl_1_expr14, left_operand, range(univariate_real_solver_impl_1, 7533, 5, 208, 208), 'lower').
name(p_upper_55, simple_name, univariate_real_solver_impl_1_expr14, right_operand, range(univariate_real_solver_impl_1, 7542, 5, 208, 208), 'upper').
%converging_algorithm_impl_1 - org.apache.commons.math.ConvergingAlgorithmImpl
name(p_default_absolute_accuracy_2, simple_name, converging_algorithm_impl_1_code4, name, range(converging_algorithm_impl_1, 2152, 23, 61, 61), 'defaultAbsoluteAccuracy').
name(f_default_absolute_accuracy_3, simple_name, converging_algorithm_impl_1_expr2, name, range(converging_algorithm_impl_1, 2192, 23, 62, 62), 'defaultAbsoluteAccuracy').
name(p_default_absolute_accuracy_2, simple_name, converging_algorithm_impl_1_expr1, right_hand_side, range(converging_algorithm_impl_1, 2218, 23, 62, 62), 'defaultAbsoluteAccuracy').
name(f_default_relative_accuracy_4, simple_name, converging_algorithm_impl_1_expr5, name, range(converging_algorithm_impl_1, 2256, 23, 63, 63), 'defaultRelativeAccuracy').
name(f_absolute_accuracy_5, simple_name, converging_algorithm_impl_1_expr8, name, range(converging_algorithm_impl_1, 2304, 16, 64, 64), 'absoluteAccuracy').
name(p_default_absolute_accuracy_2, simple_name, converging_algorithm_impl_1_expr7, right_hand_side, range(converging_algorithm_impl_1, 2323, 23, 64, 64), 'defaultAbsoluteAccuracy').
name(f_relative_accuracy_6, simple_name, converging_algorithm_impl_1_expr11, name, range(converging_algorithm_impl_1, 2361, 16, 65, 65), 'relativeAccuracy').
name(f_default_relative_accuracy_4, simple_name, converging_algorithm_impl_1_expr10, right_hand_side, range(converging_algorithm_impl_1, 2380, 23, 65, 65), 'defaultRelativeAccuracy').
name(f_default_maximal_iteration_count_7, simple_name, converging_algorithm_impl_1_expr14, name, range(converging_algorithm_impl_1, 2418, 28, 66, 66), 'defaultMaximalIterationCount').
name(p_default_maximal_iteration_count_1, simple_name, converging_algorithm_impl_1_expr13, right_hand_side, range(converging_algorithm_impl_1, 2449, 28, 66, 66), 'defaultMaximalIterationCount').
name(f_maximal_iteration_count_8, simple_name, converging_algorithm_impl_1_expr17, name, range(converging_algorithm_impl_1, 2492, 21, 67, 67), 'maximalIterationCount').
name(p_default_maximal_iteration_count_1, simple_name, converging_algorithm_impl_1_expr16, right_hand_side, range(converging_algorithm_impl_1, 2516, 28, 67, 67), 'defaultMaximalIterationCount').
name(f_iteration_count_9, simple_name, converging_algorithm_impl_1_expr20, name, range(converging_algorithm_impl_1, 2559, 14, 68, 68), 'iterationCount').

%%% Literals
%univariate_real_solver_utils_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverUtils
literal(univariate_real_solver_utils_1_literal1, number_literal, univariate_real_solver_utils_1_expr1, right_operand, range(univariate_real_solver_utils_1, 9596, 2, 223, 223), .5).
%sin_function_1 - org.apache.commons.math.analysis.SinFunction
%bisection_solver_test_1 - org.apache.commons.math.analysis.solvers.BisectionSolverTest
literal(bisection_solver_test_1_literal1, number_literal, bisection_solver_test_1_expr4, (arguments, 1), range(bisection_solver_test_1, 3792, 3, 101, 101), 3.0).
literal(bisection_solver_test_1_literal2, number_literal, bisection_solver_test_1_expr4, (arguments, 2), range(bisection_solver_test_1, 3797, 3, 101, 101), 3.2).
literal(bisection_solver_test_1_literal3, number_literal, bisection_solver_test_1_expr4, (arguments, 3), range(bisection_solver_test_1, 3802, 3, 101, 101), 3.1).
%bisection_solver_1 - org.apache.commons.math.analysis.solvers.BisectionSolver
literal(bisection_solver_1_literal1, number_literal, bisection_solver_1_stmt1, (arguments, 0), range(bisection_solver_1, 1939, 3, 52, 52), 100).
literal(bisection_solver_1_literal2, number_literal, bisection_solver_1_stmt1, (arguments, 1), range(bisection_solver_1, 1944, 4, 52, 52), 1E-6).
literal(bisection_solver_1_literal3, number_literal, bisection_solver_1_code8, initializer, range(bisection_solver_1, 2941, 1, 85, 85), 0).
%univariate_real_solver_impl_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverImpl
literal(univariate_real_solver_impl_1_literal1, boolean_literal, univariate_real_solver_impl_1_code6, initializer, range(univariate_real_solver_impl_1, 1609, 5, 41, 41), false).
literal(univariate_real_solver_impl_1_literal2, number_literal, univariate_real_solver_impl_1_expr2, right_hand_side, range(univariate_real_solver_impl_1, 3955, 7, 94, 94), 1.0e-15).
literal(univariate_real_solver_impl_1_literal3, number_literal, univariate_real_solver_impl_1_expr8, right_hand_side, range(univariate_real_solver_impl_1, 6028, 1, 165, 165), 0).
literal(univariate_real_solver_impl_1_literal4, boolean_literal, univariate_real_solver_impl_1_expr11, right_hand_side, range(univariate_real_solver_impl_1, 6061, 5, 166, 166), false).
%converging_algorithm_impl_1 - org.apache.commons.math.ConvergingAlgorithmImpl
literal(converging_algorithm_impl_1_literal1, number_literal, converging_algorithm_impl_1_expr4, right_hand_side, range(converging_algorithm_impl_1, 2282, 7, 63, 63), 1.0e-14).
literal(converging_algorithm_impl_1_literal2, number_literal, converging_algorithm_impl_1_expr19, right_hand_side, range(converging_algorithm_impl_1, 2576, 1, 68, 68), 0).

%%% Other Code Entities
%univariate_real_solver_utils_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverUtils
code(univariate_real_solver_utils_1_code1, compilation_unit, range(univariate_real_solver_utils_1, 0, 10387, 1, -1)).
code(univariate_real_solver_utils_1_code2, type_declaration, univariate_real_solver_utils_1_code1, (types, 0), range(univariate_real_solver_utils_1, 1085, 9301, 24, 247)).
code(univariate_real_solver_utils_1_code3, method_declaration, univariate_real_solver_utils_1_code2, (body_declarations, 6), range(univariate_real_solver_utils_1, 9365, 240, 215, 224)).
%sin_function_1 - org.apache.commons.math.analysis.SinFunction
code(sin_function_1_code1, compilation_unit, range(sin_function_1, 0, 1800, 1, -1)).
code(sin_function_1_code2, type_declaration, sin_function_1_code1, (types, 0), range(sin_function_1, 907, 892, 21, 50)).
code(sin_function_1_code3, modifier, sin_function_1_code2, (modifiers, 0), range(sin_function_1, 1212, 6, 31, 31)).
code(sin_function_1_code4, simple_type, sin_function_1_code2, (super_interface_types, 0), range(sin_function_1, 1248, 36, 31, 31)).
%bisection_solver_test_1 - org.apache.commons.math.analysis.solvers.BisectionSolverTest
code(bisection_solver_test_1_code1, compilation_unit, range(bisection_solver_test_1, 0, 6564, 1, -1)).
code(bisection_solver_test_1_code2, type_declaration, bisection_solver_test_1_code1, (types, 0), range(bisection_solver_test_1, 1109, 5454, 26, 193)).
code(bisection_solver_test_1_code3, modifier, bisection_solver_test_1_code2, (modifiers, 0), range(bisection_solver_test_1, 1147, 6, 29, 29)).
code(bisection_solver_test_1_code4, modifier, bisection_solver_test_1_code2, (modifiers, 1), range(bisection_solver_test_1, 1154, 5, 29, 29)).
code(bisection_solver_test_1_code5, simple_type, bisection_solver_test_1_code2, superclass_type, range(bisection_solver_test_1, 1194, 8, 29, 29)).
code(bisection_solver_test_1_code6, method_declaration, bisection_solver_test_1_code2, (body_declarations, 3), range(bisection_solver_test_1, 3586, 258, 98, 102)).
code(bisection_solver_test_1_code7, simple_type, bisection_solver_test_1_stmt1, type, range(bisection_solver_test_1, 3639, 22, 99, 99)).
code(bisection_solver_test_1_code8, variable_declaration_fragment, bisection_solver_test_1_stmt1, (fragments, 0), range(bisection_solver_test_1, 3662, 21, 99, 99)).
code(bisection_solver_test_1_code9, simple_type, bisection_solver_test_1_expr1, type, range(bisection_solver_test_1, 3670, 11, 99, 99)).
code(bisection_solver_test_1_code10, simple_type, bisection_solver_test_1_stmt2, type, range(bisection_solver_test_1, 3693, 20, 100, 100)).
code(bisection_solver_test_1_code11, variable_declaration_fragment, bisection_solver_test_1_stmt2, (fragments, 0), range(bisection_solver_test_1, 3714, 30, 100, 100)).
code(bisection_solver_test_1_code12, simple_type, bisection_solver_test_1_expr2, type, range(bisection_solver_test_1, 3727, 15, 100, 100)).
%bisection_solver_1 - org.apache.commons.math.analysis.solvers.BisectionSolver
code(bisection_solver_1_code1, compilation_unit, range(bisection_solver_1, 0, 3633, 1, -1)).
code(bisection_solver_1_code2, type_declaration, bisection_solver_1_code1, (types, 0), range(bisection_solver_1, 1042, 2590, 23, 109)).
code(bisection_solver_1_code3, method_declaration, bisection_solver_1_code2, (body_declarations, 1), range(bisection_solver_1, 1848, 108, 47, 53)).
code(bisection_solver_1_code4, method_declaration, bisection_solver_1_code2, (body_declarations, 3), range(bisection_solver_1, 2186, 202, 62, 67)).
code(bisection_solver_1_code5, method_declaration, bisection_solver_1_code2, (body_declarations, 4), range(bisection_solver_1, 2394, 231, 69, 73)).
code(bisection_solver_1_code6, method_declaration, bisection_solver_1_code2, (body_declarations, 5), range(bisection_solver_1, 2631, 999, 75, 108)).
code(bisection_solver_1_code7, primitive_type, bisection_solver_1_stmt6, type, range(bisection_solver_1, 2933, 3, 85, 85)).
code(bisection_solver_1_code8, variable_declaration_fragment, bisection_solver_1_stmt6, (fragments, 0), range(bisection_solver_1, 2937, 5, 85, 85)).
%univariate_real_solver_impl_1 - org.apache.commons.math.analysis.solvers.UnivariateRealSolverImpl
code(univariate_real_solver_impl_1_code1, compilation_unit, range(univariate_real_solver_impl_1, 0, 9441, 1, -1)).
code(univariate_real_solver_impl_1_code2, type_declaration, univariate_real_solver_impl_1_code1, (types, 0), range(univariate_real_solver_impl_1, 1089, 8351, 25, 255)).
code(univariate_real_solver_impl_1_code3, field_declaration, univariate_real_solver_impl_1_code2, (body_declarations, 2), range(univariate_real_solver_impl_1, 1521, 94, 40, 41)).
code(univariate_real_solver_impl_1_code4, modifier, univariate_real_solver_impl_1_code3, (modifiers, 0), range(univariate_real_solver_impl_1, 1574, 9, 41, 41)).
code(univariate_real_solver_impl_1_code5, primitive_type, univariate_real_solver_impl_1_code3, type, range(univariate_real_solver_impl_1, 1584, 7, 41, 41)).
code(univariate_real_solver_impl_1_code6, variable_declaration_fragment, univariate_real_solver_impl_1_code3, (fragments, 0), range(univariate_real_solver_impl_1, 1592, 22, 41, 41)).
code(univariate_real_solver_impl_1_code7, method_declaration, univariate_real_solver_impl_1_code2, (body_declarations, 7), range(univariate_real_solver_impl_1, 3360, 676, 83, 96)).
code(univariate_real_solver_impl_1_code8, method_declaration, univariate_real_solver_impl_1_code2, (body_declarations, 16), range(univariate_real_solver_impl_1, 5896, 177, 161, 167)).
code(univariate_real_solver_impl_1_code9, method_declaration, univariate_real_solver_impl_1_code2, (body_declarations, 19), range(univariate_real_solver_impl_1, 7213, 531, 199, 213)).
%converging_algorithm_impl_1 - org.apache.commons.math.ConvergingAlgorithmImpl
code(converging_algorithm_impl_1_code1, compilation_unit, range(converging_algorithm_impl_1, 0, 3782, 1, -1)).
code(converging_algorithm_impl_1_code2, type_declaration, converging_algorithm_impl_1_code1, (types, 0), range(converging_algorithm_impl_1, 839, 2942, 21, 121)).
code(converging_algorithm_impl_1_code3, method_declaration, converging_algorithm_impl_1_code2, (body_declarations, 7), range(converging_algorithm_impl_1, 1696, 888, 52, 69)).
code(converging_algorithm_impl_1_code4, single_variable_declaration, converging_algorithm_impl_1_code3, (parameters, 1), range(converging_algorithm_impl_1, 2139, 36, 61, 61)).
code(converging_algorithm_impl_1_code5, modifier, converging_algorithm_impl_1_code4, (modifiers, 0), range(converging_algorithm_impl_1, 2139, 5, 61, 61)).
code(converging_algorithm_impl_1_code6, primitive_type, converging_algorithm_impl_1_code4, type, range(converging_algorithm_impl_1, 2145, 6, 61, 61)).

%%% Name References

name_ref(t_bisection_solver_test_3, type, 'BisectionSolverTest', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;').
name_ref(t_math_4, type, 'Math', 'Ljava/lang/Math;').
name_ref(t_sin_function_1, type, 'SinFunction', 'Lorg/apache/commons/math/analysis/SinFunction;').
name_ref(t_univariate_real_solver_utils_2, type, 'UnivariateRealSolverUtils', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;').
name_ref(p_default_absolute_accuracy_39, param, 'defaultAbsoluteAccuracy', 'univariate_real_solver_impl_1;defaultAbsoluteAccuracy_line_93').
name_ref(p_default_maximal_iteration_count_38, param, 'defaultMaximalIterationCount', 'univariate_real_solver_impl_1;defaultMaximalIterationCount_line_93').
name_ref(v_f_32, var, 'f', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testMath369()V|Ljava/lang/Exception;#f').
name_ref(v_fmin_31, var, 'fmin', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#fmin').
name_ref(v_i_29, var, 'i', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#i').
name_ref(v_m_30, var, 'm', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#m').
name_ref(v_solver_33, var, 'solver', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testMath369()V|Ljava/lang/Exception;#solver').
name_ref(p_a_78, param, 'a', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.midpoint(DD)D#a#0#0').
name_ref(p_absolute_accuracy_68, param, 'absoluteAccuracy', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#absoluteAccuracy#0#3').
name_ref(p_accuracy_10, param, 'accuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.setAbsoluteAccuracy(D)V#accuracy#0#0').
name_ref(p_accuracy_12, param, 'accuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.setRelativeAccuracy(D)V#accuracy#0#0').
name_ref(p_accuracy_42, param, 'accuracy', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.setFunctionValueAccuracy(D)V#accuracy#0#0').
name_ref(p_b_79, param, 'b', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.midpoint(DD)D#b#0#1').
name_ref(p_count_11, param, 'count', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.setMaximalIterationCount(I)V#count#0#0').
name_ref(p_default_absolute_accuracy_2, param, 'defaultAbsoluteAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.(ID)V#defaultAbsoluteAccuracy#0#1').
name_ref(p_default_absolute_accuracy_37, param, 'defaultAbsoluteAccuracy', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.(Lorg/apache/commons/math/analysis/UnivariateRealFunction;ID)V#defaultAbsoluteAccuracy#0#2').
name_ref(p_default_absolute_accuracy_39, param, 'defaultAbsoluteAccuracy', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.(ID)V#defaultAbsoluteAccuracy#0#1').
name_ref(p_default_maximal_iteration_count_1, param, 'defaultMaximalIterationCount', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.(ID)V#defaultMaximalIterationCount#0#0').
name_ref(p_default_maximal_iteration_count_36, param, 'defaultMaximalIterationCount', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.(Lorg/apache/commons/math/analysis/UnivariateRealFunction;ID)V#defaultMaximalIterationCount#0#1').
name_ref(p_default_maximal_iteration_count_38, param, 'defaultMaximalIterationCount', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.(ID)V#defaultMaximalIterationCount#0#0').
name_ref(p_end_53, param, 'end', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.isSequence(DDD)Z#end#0#2').
name_ref(p_f_15, param, 'f', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V#f#0#0').
name_ref(p_f_22, param, 'f', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#f#0#0').
name_ref(p_f_26, param, 'f', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#f#0#0').
name_ref(p_f_35, param, 'f', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.(Lorg/apache/commons/math/analysis/UnivariateRealFunction;ID)V#f#0#0').
name_ref(p_f_62, param, 'f', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#f#0#0').
name_ref(p_f_65, param, 'f', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#f#0#0').
name_ref(p_f_80, param, 'f', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.setup(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V#f#0#0').
name_ref(p_function_50, param, 'function', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.isBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)Z|Lorg/apache/commons/math/FunctionEvaluationException;#function#0#2').
name_ref(p_function_61, param, 'function', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.verifyBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)V|Lorg/apache/commons/math/FunctionEvaluationException;#function#0#2').
name_ref(p_function_69, param, 'function', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)[D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#function#0#0').
name_ref(p_function_73, param, 'function', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDI)[D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#function#0#0').
name_ref(p_fx_46, param, 'fx', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.setResult(DDI)V#fx#0#1').
name_ref(p_initial_18, param, 'initial', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(DDD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#initial#0#2').
name_ref(p_initial_25, param, 'initial', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#initial#0#3').
name_ref(p_initial_57, param, 'initial', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.verifySequence(DDD)V#initial#0#1').
name_ref(p_initial_70, param, 'initial', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)[D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#initial#0#1').
name_ref(p_initial_74, param, 'initial', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDI)[D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#initial#0#1').
name_ref(p_iteration_count_44, param, 'iterationCount', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.setResult(DI)V#iterationCount#0#1').
name_ref(p_iteration_count_47, param, 'iterationCount', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.setResult(DDI)V#iterationCount#0#2').
name_ref(p_lower_48, param, 'lower', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.isBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)Z|Lorg/apache/commons/math/FunctionEvaluationException;#lower#0#0').
name_ref(p_lower_54, param, 'lower', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.verifyInterval(DD)V#lower#0#0').
name_ref(p_lower_56, param, 'lower', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.verifySequence(DDD)V#lower#0#0').
name_ref(p_lower_59, param, 'lower', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.verifyBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)V|Lorg/apache/commons/math/FunctionEvaluationException;#lower#0#0').
name_ref(p_lower_bound_71, param, 'lowerBound', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)[D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#lowerBound#0#2').
name_ref(p_lower_bound_75, param, 'lowerBound', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDI)[D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#lowerBound#0#2').
name_ref(p_max_17, param, 'max', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(DDD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#max#0#1').
name_ref(p_max_20, param, 'max', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(DD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#max#0#1').
name_ref(p_max_24, param, 'max', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#max#0#2').
name_ref(p_max_28, param, 'max', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#max#0#2').
name_ref(p_maximum_iterations_77, param, 'maximumIterations', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDI)[D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#maximumIterations#0#4').
name_ref(p_mid_52, param, 'mid', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.isSequence(DDD)Z#mid#0#1').
name_ref(p_min_16, param, 'min', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(DDD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#min#0#0').
name_ref(p_min_19, param, 'min', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(DD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#min#0#0').
name_ref(p_min_23, param, 'min', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#min#0#1').
name_ref(p_min_27, param, 'min', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;#min#0#1').
name_ref(p_new_result_43, param, 'newResult', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.setResult(DI)V#newResult#0#0').
name_ref(p_start_51, param, 'start', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.isSequence(DDD)Z#start#0#0').
name_ref(p_upper_49, param, 'upper', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.isBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)Z|Lorg/apache/commons/math/FunctionEvaluationException;#upper#0#1').
name_ref(p_upper_55, param, 'upper', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.verifyInterval(DD)V#upper#0#1').
name_ref(p_upper_58, param, 'upper', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.verifySequence(DDD)V#upper#0#2').
name_ref(p_upper_60, param, 'upper', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.verifyBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)V|Lorg/apache/commons/math/FunctionEvaluationException;#upper#0#1').
name_ref(p_upper_bound_72, param, 'upperBound', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)[D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#upperBound#0#3').
name_ref(p_upper_bound_76, param, 'upperBound', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDI)[D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#upperBound#0#3').
name_ref(p_x_0_63, param, 'x0', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#x0#0#1').
name_ref(p_x_0_66, param, 'x0', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#x0#0#1').
name_ref(p_x_13, param, 'x', 'Lorg/apache/commons/math/analysis/SinFunction;.value(D)D|Lorg/apache/commons/math/FunctionEvaluationException;#x#0#0').
name_ref(p_x_14, param, 'x', 'Lorg/apache/commons/math/analysis/SinFunction$1624;.value(D)D|Lorg/apache/commons/math/FunctionEvaluationException;#x#0#0').
name_ref(p_x_1_64, param, 'x1', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#x1#0#2').
name_ref(p_x_1_67, param, 'x1', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;#x1#0#2').
name_ref(p_x_45, param, 'x', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.setResult(DDI)V#x#0#0').
name_ref(f_absolute_accuracy_5, field, 'absoluteAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.absoluteAccuracy)D').
name_ref(f_default_absolute_accuracy_3, field, 'defaultAbsoluteAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.defaultAbsoluteAccuracy)D').
name_ref(f_default_function_value_accuracy_40, field, 'defaultFunctionValueAccuracy', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.defaultFunctionValueAccuracy)D').
name_ref(f_default_maximal_iteration_count_7, field, 'defaultMaximalIterationCount', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.defaultMaximalIterationCount)I').
name_ref(f_default_relative_accuracy_4, field, 'defaultRelativeAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.defaultRelativeAccuracy)D').
name_ref(f_f_21, field, 'f', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.f)Lorg/apache/commons/math/analysis/UnivariateRealFunction;').
name_ref(f_function_value_accuracy_41, field, 'functionValueAccuracy', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.functionValueAccuracy)D').
name_ref(f_iteration_count_9, field, 'iterationCount', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.iterationCount)I').
name_ref(f_maximal_iteration_count_8, field, 'maximalIterationCount', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.maximalIterationCount)I').
name_ref(f_relative_accuracy_6, field, 'relativeAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.relativeAccuracy)D').
name_ref(f_result_computed_34, field, 'resultComputed', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.resultComputed)Z').
name_ref(m_assert_equals_31, method, 'assertEquals', 'Ljunit/framework/TestCase;.assertEquals(DDD)V').
name_ref(m_bisection_solver_15, method, 'BisectionSolver', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V').
name_ref(m_bisection_solver_16, method, 'BisectionSolver', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.()V').
name_ref(m_bracket_58, method, 'bracket', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)[D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_bracket_59, method, 'bracket', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDI)[D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_check_result_computed_43, method, 'checkResultComputed', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.checkResultComputed()V|Ljava/lang/IllegalStateException;').
name_ref(m_clear_result_22, method, 'clearResult', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.clearResult()V').
name_ref(m_converging_algorithm_impl_1, method, 'ConvergingAlgorithmImpl', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.(ID)V').
name_ref(m_derivative_13, method, 'derivative', 'Lorg/apache/commons/math/analysis/SinFunction;.derivative()Lorg/apache/commons/math/analysis/UnivariateRealFunction;').
name_ref(m_get_absolute_accuracy_33, method, 'getAbsoluteAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithm;.getAbsoluteAccuracy()D').
name_ref(m_get_absolute_accuracy_4, method, 'getAbsoluteAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.getAbsoluteAccuracy()D').
name_ref(m_get_function_value_45, method, 'getFunctionValue', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.getFunctionValue()D').
name_ref(m_get_function_value_accuracy_47, method, 'getFunctionValueAccuracy', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.getFunctionValueAccuracy()D').
name_ref(m_get_iteration_count_2, method, 'getIterationCount', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.getIterationCount()I').
name_ref(m_get_maximal_iteration_count_7, method, 'getMaximalIterationCount', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.getMaximalIterationCount()I').
name_ref(m_get_relative_accuracy_10, method, 'getRelativeAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.getRelativeAccuracy()D').
name_ref(m_get_result_44, method, 'getResult', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.getResult()D').
name_ref(m_is_bracketing_51, method, 'isBracketing', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.isBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)Z|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_is_sequence_52, method, 'isSequence', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.isSequence(DDD)Z').
name_ref(m_midpoint_24, method, 'midpoint', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.midpoint(DD)D').
name_ref(m_reset_absolute_accuracy_5, method, 'resetAbsoluteAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.resetAbsoluteAccuracy()V').
name_ref(m_reset_function_value_accuracy_48, method, 'resetFunctionValueAccuracy', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.resetFunctionValueAccuracy()V').
name_ref(m_reset_maximal_iteration_count_8, method, 'resetMaximalIterationCount', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.resetMaximalIterationCount()V').
name_ref(m_reset_relative_accuracy_11, method, 'resetRelativeAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.resetRelativeAccuracy()V').
name_ref(m_set_absolute_accuracy_3, method, 'setAbsoluteAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.setAbsoluteAccuracy(D)V').
name_ref(m_set_function_value_accuracy_46, method, 'setFunctionValueAccuracy', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.setFunctionValueAccuracy(D)V').
name_ref(m_set_maximal_iteration_count_6, method, 'setMaximalIterationCount', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.setMaximalIterationCount(I)V').
name_ref(m_set_relative_accuracy_9, method, 'setRelativeAccuracy', 'Lorg/apache/commons/math/ConvergingAlgorithmImpl;.setRelativeAccuracy(D)V').
name_ref(m_set_result_49, method, 'setResult', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.setResult(DI)V').
name_ref(m_set_result_50, method, 'setResult', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.setResult(DDI)V').
name_ref(m_setup_60, method, 'setup', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.setup(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V').
name_ref(m_sin_function_30, method, 'SinFunction', 'Lorg/apache/commons/math/analysis/SinFunction;.()V').
name_ref(m_solve_18, method, 'solve', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(DDD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_solve_19, method, 'solve', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(DD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_solve_20, method, 'solve', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_solve_21, method, 'solve', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D|Lorg/apache/commons/math/MaxIterationsExceededException;|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_solve_32, method, 'solve', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;|Ljava/lang/IllegalArgumentException;').
name_ref(m_solve_56, method, 'solve', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_solve_57, method, 'solve', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D|Lorg/apache/commons/math/ConvergenceException;|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_test_deprecated_26, method, 'testDeprecated', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testDeprecated()V|Lorg/apache/commons/math/MathException;').
name_ref(m_test_math369_29, method, 'testMath369', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testMath369()V|Ljava/lang/Exception;').
name_ref(m_test_quintic_zero_28, method, 'testQuinticZero', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testQuinticZero()V|Lorg/apache/commons/math/MathException;').
name_ref(m_test_reset_absolute_accuracy_37, method, 'testResetAbsoluteAccuracy', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testResetAbsoluteAccuracy()V').
name_ref(m_test_reset_function_value_accuracy_35, method, 'testResetFunctionValueAccuracy', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testResetFunctionValueAccuracy()V').
name_ref(m_test_reset_maximal_iteration_count_39, method, 'testResetMaximalIterationCount', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testResetMaximalIterationCount()V').
name_ref(m_test_reset_relative_accuracy_41, method, 'testResetRelativeAccuracy', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testResetRelativeAccuracy()V').
name_ref(m_test_set_absolute_accuracy_36, method, 'testSetAbsoluteAccuracy', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testSetAbsoluteAccuracy()V').
name_ref(m_test_set_function_value_accuracy_34, method, 'testSetFunctionValueAccuracy', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testSetFunctionValueAccuracy()V').
name_ref(m_test_set_maximal_iteration_count_38, method, 'testSetMaximalIterationCount', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testSetMaximalIterationCount()V').
name_ref(m_test_set_relative_accuracy_40, method, 'testSetRelativeAccuracy', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testSetRelativeAccuracy()V').
name_ref(m_test_sin_zero_27, method, 'testSinZero', 'Lorg/apache/commons/math/analysis/solvers/BisectionSolverTest;.testSinZero()V|Lorg/apache/commons/math/MathException;').
name_ref(m_univariate_real_solver_impl_17, method, 'UnivariateRealSolverImpl', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.(ID)V').
name_ref(m_univariate_real_solver_impl_42, method, 'UnivariateRealSolverImpl', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.(Lorg/apache/commons/math/analysis/UnivariateRealFunction;ID)V').
name_ref(m_univariate_real_solver_utils_55, method, 'UnivariateRealSolverUtils', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;.()V').
name_ref(m_value_12, method, 'value', 'Lorg/apache/commons/math/analysis/SinFunction;.value(D)D|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_value_14, method, 'value', 'Lorg/apache/commons/math/analysis/SinFunction$1624;.value(D)D|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_value_25, method, 'value', 'Lorg/apache/commons/math/analysis/UnivariateRealFunction;.value(D)D|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_verify_bracketing_54, method, 'verifyBracketing', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.verifyBracketing(DDLorg/apache/commons/math/analysis/UnivariateRealFunction;)V|Lorg/apache/commons/math/FunctionEvaluationException;').
name_ref(m_verify_interval_23, method, 'verifyInterval', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.verifyInterval(DD)V').
name_ref(m_verify_sequence_53, method, 'verifySequence', 'Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;.verifySequence(DDD)V').
name_ref(q_pi_1, q_name, 'Math.PI', 'Ljava/lang/Math;:Ljava/lang/Math;.PI)D').

%%% End of Code Facts

