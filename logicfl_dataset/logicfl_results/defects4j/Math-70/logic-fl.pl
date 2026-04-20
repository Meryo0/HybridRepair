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
trace(trace_5, trace_4, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_8, trace_7, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_9, trace_8, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_10, trace_9, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_11, trace_10, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_12, trace_11, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_14, trace_13, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_15, trace_14, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_18, trace_17, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_19, trace_18, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(f_f_21, null, line(bisection_solver_1, 66)).
val(p_f_26, null, line(bisection_solver_1, 88)).



%%% End of Facts