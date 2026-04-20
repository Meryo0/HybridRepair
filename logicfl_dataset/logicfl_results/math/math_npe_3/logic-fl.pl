%%% Logic-FL Facts
:- style_check(-discontiguous).

%message_factory_1 - org.apache.commons.math.exception.util.MessageFactory
param(p_locale_4, 1, m_build_message_6).
param(p_pattern_5, 2, m_build_message_6).
param(p_arguments_6, 3, m_build_message_6).
param(p_locale_7, 1, m_build_message_7).
param(p_specific_8, 2, m_build_message_7).
param(p_general_9, 3, m_build_message_7).
param(p_arguments_10, 4, m_build_message_7).
assign(v_sb_11, message_factory_1_expr1, line(message_factory_1, 65)).
method_invoc(message_factory_1_expr1, m_string_builder_8, line(message_factory_1, 65)).
assign(v_general_fmt_12, message_factory_1_expr2, line(message_factory_1, 66)).
method_invoc(message_factory_1_expr2, m_message_format_9, line(message_factory_1, 66)).
argument(message_factory_1_expr3, 1, message_factory_1_expr2).
argument(p_locale_7, 2, message_factory_1_expr2).
method_invoc(message_factory_1_expr3, m_get_localized_string_10, line(message_factory_1, 66)).
argument(p_locale_7, 1, message_factory_1_expr3).
ref(p_general_9, message_factory_1_expr3, line(message_factory_1, 66)).

%message_factory_test_1 - org.apache.commons.math.exception.util.MessageFactoryTest
assign(v_specific_13, message_factory_test_1_expr1, line(message_factory_test_1, 45)).
method_invoc(message_factory_test_1_expr1, m_dummy_localizable_1, line(message_factory_test_1, 45)).
argument(message_factory_test_1_literal1, 1, message_factory_test_1_expr1).
assign(v_message_14, message_factory_test_1_expr2, line(message_factory_test_1, 46)).
method_invoc(message_factory_test_1_expr2, m_build_message_7, line(message_factory_test_1, 46)).
throw(message_factory_test_1_expr2, null_pointer_exception, line(message_factory_test_1, 46)).
argument(q_french_1, 1, message_factory_test_1_expr2).
argument(v_specific_13, 2, message_factory_test_1_expr2).
argument(message_factory_test_1_literal2, 3, message_factory_test_1_expr2).
argument(message_factory_test_1_literal3, 4, message_factory_test_1_expr2).
argument(message_factory_test_1_literal4, 5, message_factory_test_1_expr2).
argument(message_factory_test_1_literal5, 6, message_factory_test_1_expr2).
ref(t_message_factory_2, message_factory_test_1_expr2, line(message_factory_test_1, 46)).
ref(t_locale_3, q_french_1, line(message_factory_test_1, 46)).
assign(v_message_15, message_factory_test_1_expr3, line(message_factory_test_1, 54)).
method_invoc(message_factory_test_1_expr3, m_build_message_7, line(message_factory_test_1, 54)).
throw(message_factory_test_1_expr3, null_pointer_exception, line(message_factory_test_1, 54)).
argument(q_french_2, 1, message_factory_test_1_expr3).
argument(message_factory_test_1_literal6, 2, message_factory_test_1_expr3).
argument(message_factory_test_1_literal7, 3, message_factory_test_1_expr3).
argument(message_factory_test_1_literal8, 4, message_factory_test_1_expr3).
ref(t_message_factory_2, message_factory_test_1_expr3, line(message_factory_test_1, 54)).
ref(t_locale_3, q_french_2, line(message_factory_test_1, 54)).

%dummy_localizable_1 - org.apache.commons.math.exception.util.DummyLocalizable
param(p_source_1, 1, m_dummy_localizable_1).
assign(f_source_2, p_source_1, line(dummy_localizable_1, 39)).
param(p_locale_3, 1, m_get_localized_string_3).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.math.exception.util.MessageFactoryTest', 'testNull').
trace(trace_1, failure_1, m_build_message_7, line(message_factory_1, 66), failure_1, target).
trace(trace_2, trace_1, m_test_null_14, line(message_factory_test_1, 54), failure_1, target).
trace(trace_3, trace_2, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_4, trace_3, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_7, trace_6, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_8, trace_7, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_9, trace_8, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_10, trace_9, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_11, trace_10, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_12, trace_11, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_13, trace_12, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_14, trace_13, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_15, trace_14, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_17, trace_16, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_18, trace_17, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_19, trace_18, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_20, trace_19, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_21, trace_20, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_22, trace_21, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_23, trace_22, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_24, trace_23, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.math.exception.util.MessageFactoryTest', 'testNullGeneral').
trace(trace_25, failure_2, m_build_message_7, line(message_factory_1, 66), failure_2, target).
trace(trace_26, trace_25, m_test_null_general_13, line(message_factory_test_1, 46), failure_2, target).
trace(trace_27, trace_26, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_2, non_target).
trace(trace_28, trace_27, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_2, non_target).
trace(trace_29, trace_28, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_2, non_target).
trace(trace_30, trace_29, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_31, trace_30, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_2, non_target).
trace(trace_32, trace_31, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_2, non_target).
trace(trace_33, trace_32, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_2, non_target).
trace(trace_34, trace_33, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_2, non_target).
trace(trace_35, trace_34, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_36, trace_35, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_2, non_target).
trace(trace_37, trace_36, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_2, non_target).
trace(trace_38, trace_37, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_2, non_target).
trace(trace_39, trace_38, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_2, non_target).
trace(trace_40, trace_39, 'run', line(org_junit_runners_parent_runner_4, 331), failure_2, non_target).
trace(trace_41, trace_40, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_2, non_target).
trace(trace_42, trace_41, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_2, non_target).
trace(trace_43, trace_42, 'access$100', line(org_junit_runners_parent_runner, 66), failure_2, non_target).
trace(trace_44, trace_43, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_2, non_target).
trace(trace_45, trace_44, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_46, trace_45, 'run', line(org_junit_runners_parent_runner, 413), failure_2, non_target).
trace(trace_47, trace_46, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_48, trace_47, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(p_general_9, null, line(message_factory_1, 66)).



%%% End of Facts