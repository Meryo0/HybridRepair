%%% Logic-FL Facts
:- style_check(-discontiguous).

%exception_utils_1 - org.apache.commons.lang3.exception.ExceptionUtils
assign(f_cause_method_names_26, exception_utils_1_expr1, line(exception_utils_1, 48)).
param(p_throwable_27, 1, m_erase_type_41).
throw(m_erase_type_41, t).
param(p_throwable_28, 1, m_get_cause_42).
param(p_throwable_29, 1, m_get_cause_43).
param(p_method_names_30, 2, m_get_cause_43).
param(p_throwable_31, 1, m_get_cause_using_method_name_44).
param(p_method_name_32, 2, m_get_cause_using_method_name_44).
param(p_th_33, 1, m_get_message_46).
param(p_throwable_34, 1, m_get_root_cause_47).
param(p_throwable_35, 1, m_get_root_cause_message_48).
param(p_throwable_36, 1, m_get_root_cause_stack_trace_49).
param(p_throwable_37, 1, m_get_stack_frame_list_50).
param(p_stack_trace_38, 1, m_get_stack_frames_51).
param(p_throwable_39, 1, m_get_stack_frames_52).
param(p_throwable_40, 1, m_get_stack_trace_24).
assign(v_sw_41, exception_utils_1_expr2, line(exception_utils_1, 374)).
method_invoc(exception_utils_1_expr2, m_string_writer_53, line(exception_utils_1, 374)).
assign(v_pw_42, exception_utils_1_expr3, line(exception_utils_1, 375)).
method_invoc(exception_utils_1_expr3, m_print_writer_54, line(exception_utils_1, 375)).
argument(v_sw_41, 1, exception_utils_1_expr3).
argument(exception_utils_1_literal1, 2, exception_utils_1_expr3).
method_invoc(exception_utils_1_expr4, m_print_stack_trace_55, line(exception_utils_1, 376)).
argument(v_pw_42, 1, exception_utils_1_expr4).
ref(p_throwable_40, exception_utils_1_expr4, line(exception_utils_1, 376)).
param(p_throwable_43, 1, m_get_throwable_count_56).
param(p_throwable_44, 1, m_get_throwable_list_57).
param(p_throwable_45, 1, m_get_throwables_58).
param(p_chain_46, 1, m_has_cause_59).
param(p_type_47, 2, m_has_cause_59).
param(p_throwable_48, 1, m_index_of_60).
param(p_type_49, 2, m_index_of_60).
param(p_from_index_50, 3, m_index_of_60).
param(p_subclass_51, 4, m_index_of_60).
param(p_throwable_52, 1, m_index_of_throwable_61).
param(p_clazz_53, 2, m_index_of_throwable_61).
param(p_throwable_54, 1, m_index_of_throwable_62).
param(p_clazz_55, 2, m_index_of_throwable_62).
param(p_from_index_56, 3, m_index_of_throwable_62).
param(p_throwable_57, 1, m_index_of_type_63).
param(p_type_58, 2, m_index_of_type_63).
param(p_throwable_59, 1, m_index_of_type_64).
param(p_type_60, 2, m_index_of_type_64).
param(p_from_index_61, 3, m_index_of_type_64).
param(p_throwable_62, 1, m_print_root_cause_stack_trace_65).
param(p_throwable_63, 1, m_print_root_cause_stack_trace_66).
param(p_print_stream_64, 2, m_print_root_cause_stack_trace_66).
param(p_throwable_65, 1, m_print_root_cause_stack_trace_67).
param(p_print_writer_66, 2, m_print_root_cause_stack_trace_67).
param(p_cause_frames_67, 1, m_remove_common_frames_68).
param(p_wrapper_frames_68, 2, m_remove_common_frames_68).
param(p_throwable_69, 1, m_rethrow_69).
param(p_throwable_70, 1, m_throwable_of_70).
param(p_type_71, 2, m_throwable_of_70).
param(p_from_index_72, 3, m_throwable_of_70).
param(p_subclass_73, 4, m_throwable_of_70).
param(p_throwable_74, 1, m_throwable_of_throwable_71).
param(p_clazz_75, 2, m_throwable_of_throwable_71).
param(p_throwable_76, 1, m_throwable_of_throwable_72).
param(p_clazz_77, 2, m_throwable_of_throwable_72).
param(p_from_index_78, 3, m_throwable_of_throwable_72).
param(p_throwable_79, 1, m_throwable_of_type_73).
param(p_type_80, 2, m_throwable_of_type_73).
param(p_throwable_81, 1, m_throwable_of_type_74).
param(p_type_82, 2, m_throwable_of_type_74).
param(p_from_index_83, 3, m_throwable_of_type_74).
param(p_throwable_84, 1, m_wrap_and_throw_75).

%contexted_exception_test_1 - org.apache.commons.lang3.exception.ContextedExceptionTest
throw(m_set_up_18, exception).
assign(f_exception_context_16, contexted_exception_test_1_expr2, line(contexted_exception_test_1, 38)).
method_invoc(contexted_exception_test_1_expr2, m_contexted_exception_3, line(contexted_exception_test_1, 38)).
argument(contexted_exception_test_1_expr3, 1, contexted_exception_test_1_expr2).
method_invoc(contexted_exception_test_1_expr3, m_exception_19, line(contexted_exception_test_1, 38)).
argument(f_test_message_17, 1, contexted_exception_test_1_expr3).
method_invoc(contexted_exception_test_1_expr4, m_set_up_20, line(contexted_exception_test_1, 39)).
throw(contexted_exception_test_1_expr4, exception, line(contexted_exception_test_1, 39)).
method_invoc(contexted_exception_test_1_expr5, m_assert_equals_23, line(contexted_exception_test_1, 53)).
argument(contexted_exception_test_1_literal1, 1, contexted_exception_test_1_expr5).
argument(contexted_exception_test_1_expr6, 2, contexted_exception_test_1_expr5).
argument(contexted_exception_test_1_literal2, 3, contexted_exception_test_1_expr5).
method_invoc(contexted_exception_test_1_expr6, m_get_stack_trace_24, line(contexted_exception_test_1, 53)).
throw(contexted_exception_test_1_expr6, null_pointer_exception, line(contexted_exception_test_1, 53)).
argument(contexted_exception_test_1_literal3, 1, contexted_exception_test_1_expr6).
ref(t_exception_utils_2, contexted_exception_test_1_expr6, line(contexted_exception_test_1, 53)).
throw(contexted_exception_test_1_expr5, null_pointer_exception, line(contexted_exception_test_1, 53)).

%default_exception_context_1 - org.apache.commons.lang3.exception.DefaultExceptionContext
assign(f_context_values_18, default_exception_context_1_expr1, line(default_exception_context_1, 46)).
method_invoc(default_exception_context_1_expr1, m_array_list_31, line(default_exception_context_1, 46)).
param(p_label_19, 1, m_add_context_value_32).
param(p_value_20, 2, m_add_context_value_32).
method_invoc(default_exception_context_1_expr2, m_add_33, line(default_exception_context_1, 53)).
argument(default_exception_context_1_expr3, 1, default_exception_context_1_expr2).
ref(f_context_values_18, default_exception_context_1_expr2, line(default_exception_context_1, 53)).
method_invoc(default_exception_context_1_expr3, m_immutable_pair_34, line(default_exception_context_1, 53)).
argument(p_label_19, 1, default_exception_context_1_expr3).
argument(p_value_20, 2, default_exception_context_1_expr3).
return(default_exception_context_1_expr4, m_add_context_value_32, line(default_exception_context_1, 54)).
param(p_label_21, 1, m_set_context_value_35).
param(p_value_22, 2, m_set_context_value_35).
param(p_label_23, 1, m_get_context_values_36).
param(p_label_24, 1, m_get_first_context_value_37).
param(p_base_message_25, 1, m_get_formatted_exception_message_40).

%immutable_pair_1 - org.apache.commons.lang3.tuple.ImmutablePair
assign(f_empty_array_85, immutable_pair_1_expr1, line(immutable_pair_1, 47)).
assign(f_null_86, immutable_pair_1_expr2, line(immutable_pair_1, 54)).
method_invoc(immutable_pair_1_expr2, m_immutable_pair_34, line(immutable_pair_1, 54)).
argument(immutable_pair_1_literal1, 1, immutable_pair_1_expr2).
argument(immutable_pair_1_literal2, 2, immutable_pair_1_expr2).
param(p_left_87, 1, m_left_78).
param(p_left_88, 1, m_of_80).
param(p_right_89, 2, m_of_80).
param(p_pair_90, 1, m_of_81).
param(p_left_91, 1, m_of_non_null_82).
param(p_right_92, 2, m_of_non_null_82).
param(p_right_93, 1, m_right_83).
param(p_left_94, 1, m_immutable_pair_34).
param(p_right_95, 2, m_immutable_pair_34).
assign(f_left_96, p_left_94, line(immutable_pair_1, 181)).
assign(f_right_97, p_right_95, line(immutable_pair_1, 182)).
param(p_value_98, 1, m_set_value_86).

%pair_1 - org.apache.commons.lang3.tuple.Pair
assign(f_empty_array_99, pair_1_expr1, line(pair_1, 54)).
param(p_left_100, 1, m_of_88).
param(p_right_101, 2, m_of_88).
param(p_pair_102, 1, m_of_89).
param(p_left_103, 1, m_of_non_null_90).
param(p_right_104, 2, m_of_non_null_90).
param(p_other_105, 1, m_compare_to_91).
param(p_obj_106, 1, m_equals_92).
param(p_format_107, 1, m_to_string_99).

%contexted_exception_1 - org.apache.commons.lang3.exception.ContextedException
param(p_message_1, 1, m_contexted_exception_2).
param(p_cause_2, 1, m_contexted_exception_3).
method_invoc(contexted_exception_1_expr1, m_exception_4, line(contexted_exception_1, 123)).
argument(p_cause_2, 1, contexted_exception_1_expr1).
assign(f_exception_context_3, contexted_exception_1_expr3, line(contexted_exception_1, 124)).
method_invoc(contexted_exception_1_expr3, m_default_exception_context_5, line(contexted_exception_1, 124)).
param(p_message_4, 1, m_contexted_exception_6).
param(p_cause_5, 2, m_contexted_exception_6).
param(p_message_6, 1, m_contexted_exception_7).
param(p_cause_7, 2, m_contexted_exception_7).
param(p_context_8, 3, m_contexted_exception_7).
param(p_label_9, 1, m_add_context_value_8).
param(p_value_10, 2, m_add_context_value_8).
method_invoc(contexted_exception_1_expr4, m_add_context_value_9, line(contexted_exception_1, 170)).
argument(p_label_9, 1, contexted_exception_1_expr4).
argument(p_value_10, 2, contexted_exception_1_expr4).
ref(f_exception_context_3, contexted_exception_1_expr4, line(contexted_exception_1, 170)).
return(contexted_exception_1_expr5, m_add_context_value_8, line(contexted_exception_1, 171)).
param(p_label_11, 1, m_set_context_value_10).
param(p_value_12, 2, m_set_context_value_10).
param(p_label_13, 1, m_get_context_values_11).
param(p_label_14, 1, m_get_first_context_value_12).
param(p_base_message_15, 1, m_get_formatted_exception_message_17).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang3.exception.ContextedExceptionTest', 'testNullException').
trace(trace_1, failure_1, m_get_stack_trace_24, line(exception_utils_1, 376), failure_1, target).
trace(trace_2, trace_1, m_test_null_exception_22, line(contexted_exception_test_1, 53), failure_1, target).
trace(trace_3, trace_2, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_4, trace_3, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_throwable_40, null, line(exception_utils_1, 376)).



%%% End of Facts