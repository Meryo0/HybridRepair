%%% Logic-FL Facts
:- style_check(-discontiguous).

%attribute_test_1 - org.jsoup.nodes.AttributeTest
assign(v_attr_44, attribute_test_1_expr1, line(attribute_test_1, 42)).
method_invoc(attribute_test_1_expr1, m_attribute_14, line(attribute_test_1, 42)).
argument(attribute_test_1_literal1, 1, attribute_test_1_expr1).
argument(attribute_test_1_literal2, 2, attribute_test_1_expr1).
method_invoc(attribute_test_1_expr2, m_set_key_18, line(attribute_test_1, 43)).
argument(attribute_test_1_literal3, 1, attribute_test_1_expr2).
ref(v_attr_44, attribute_test_1_expr2, line(attribute_test_1, 43)).
assign(v_old_val_45, attribute_test_1_expr3, line(attribute_test_1, 44)).
method_invoc(attribute_test_1_expr3, m_set_value_20, line(attribute_test_1, 44)).
throw(attribute_test_1_expr3, null_pointer_exception, line(attribute_test_1, 44)).
argument(attribute_test_1_literal4, 1, attribute_test_1_expr3).
ref(v_attr_44, attribute_test_1_expr3, line(attribute_test_1, 44)).

%attribute_1 - org.jsoup.nodes.Attribute
assign(f_boolean_attributes_17, attribute_1_expr1, line(attribute_1, 15)).
param(p_key_18, 1, m_attribute_14).
param(p_value_19, 2, m_attribute_14).
method_invoc(attribute_1_expr2, m_attribute_15, line(attribute_1, 33)).
argument(p_key_18, 1, attribute_1_expr2).
argument(p_value_19, 2, attribute_1_expr2).
argument(attribute_1_literal1, 3, attribute_1_expr2).
param(p_key_20, 1, m_attribute_15).
param(p_val_21, 2, m_attribute_15).
param(p_parent_22, 3, m_attribute_15).
method_invoc(attribute_1_expr3, m_not_null_2, line(attribute_1, 43)).
argument(p_key_20, 1, attribute_1_expr3).
ref(t_validate_1, attribute_1_expr3, line(attribute_1, 43)).
assign(p_key_20, attribute_1_expr5, line(attribute_1, 44)).
method_invoc(attribute_1_expr5, m_trim_16, line(attribute_1, 44)).
ref(p_key_20, attribute_1_expr5, line(attribute_1, 44)).
method_invoc(attribute_1_expr6, m_not_empty_10, line(attribute_1, 45)).
argument(p_key_20, 1, attribute_1_expr6).
ref(t_validate_1, attribute_1_expr6, line(attribute_1, 45)).
assign(f_key_23, p_key_20, line(attribute_1, 46)).
assign(f_val_24, p_val_21, line(attribute_1, 47)).
assign(f_parent_25, p_parent_22, line(attribute_1, 48)).
param(p_key_26, 1, m_set_key_18).
method_invoc(attribute_1_expr16, m_not_null_2, line(attribute_1, 64)).
argument(p_key_26, 1, attribute_1_expr16).
ref(t_validate_1, attribute_1_expr16, line(attribute_1, 64)).
assign(p_key_26, attribute_1_expr18, line(attribute_1, 65)).
method_invoc(attribute_1_expr18, m_trim_16, line(attribute_1, 65)).
ref(p_key_26, attribute_1_expr18, line(attribute_1, 65)).
method_invoc(attribute_1_expr19, m_not_empty_10, line(attribute_1, 66)).
argument(p_key_26, 1, attribute_1_expr19).
ref(t_validate_1, attribute_1_expr19, line(attribute_1, 66)).
assign(f_key_23, p_key_26, line(attribute_1, 72)).
param(p_val_27, 1, m_set_value_20).
assign(v_old_val_28, attribute_1_expr24, line(attribute_1, 88)).
method_invoc(attribute_1_expr24, m_get_21, line(attribute_1, 88)).
argument(f_key_23, 1, attribute_1_expr24).
ref(f_parent_25, attribute_1_expr24, line(attribute_1, 88)).
param(p_key_29, 1, m_html_23).
param(p_val_30, 2, m_html_23).
param(p_accum_31, 3, m_html_23).
param(p_out_32, 4, m_html_23).
throw(m_html_23, ioexception).
param(p_accum_33, 1, m_html_24).
param(p_out_34, 2, m_html_24).
throw(m_html_24, ioexception).
param(p_unencoded_key_35, 1, m_create_from_encoded_26).
param(p_encoded_value_36, 2, m_create_from_encoded_26).
param(p_key_37, 1, m_is_data_attribute_28).
param(p_out_38, 1, m_should_collapse_attribute_29).
param(p_key_39, 1, m_should_collapse_attribute_30).
param(p_val_40, 2, m_should_collapse_attribute_30).
param(p_out_41, 3, m_should_collapse_attribute_30).
param(p_key_42, 1, m_is_boolean_attribute_32).
param(p_o_43, 1, m_equals_33).

%validate_1 - org.jsoup.helper.Validate
param(p_obj_1, 1, m_not_null_2).
param(p_obj_2, 1, m_not_null_3).
param(p_msg_3, 2, m_not_null_3).
param(p_val_4, 1, m_is_true_4).
param(p_val_5, 1, m_is_true_5).
param(p_msg_6, 2, m_is_true_5).
param(p_val_7, 1, m_is_false_6).
param(p_val_8, 1, m_is_false_7).
param(p_msg_9, 2, m_is_false_7).
param(p_objects_10, 1, m_no_null_elements_8).
param(p_objects_11, 1, m_no_null_elements_9).
param(p_msg_12, 2, m_no_null_elements_9).
param(p_string_13, 1, m_not_empty_10).
method_invoc(validate_1_expr5, m_length_11, line(validate_1, 91)).
ref(p_string_13, validate_1_expr5, line(validate_1, 91)).
param(p_string_14, 1, m_not_empty_12).
param(p_msg_15, 2, m_not_empty_12).
param(p_msg_16, 1, m_fail_13).


% Stack Trace Info.
test_failure(failure_1, 'org.jsoup.nodes.AttributeTest', 'settersOnOrphanAttribute').
trace(trace_1, failure_1, m_set_value_20, line(attribute_1, 88), failure_1, target).
trace(trace_2, trace_1, m_setters_on_orphan_attribute_41, line(attribute_test_1, 44), failure_1, target).
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
trace(trace_24, trace_23, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(f_parent_25, null, line(attribute_1, 88)).



%%% End of Facts