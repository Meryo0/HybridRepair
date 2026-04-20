%%% Logic-FL Facts
:- style_check(-discontiguous).

%buffer_recycler_1 - com.fasterxml.jackson.core.util.BufferRecycler
assign(f_byte_buffer_lengths_1, buffer_recycler_1_expr1, line(buffer_recycler_1, 45)).
assign(f_char_buffer_lengths_2, buffer_recycler_1_expr3, line(buffer_recycler_1, 46)).
method_invoc(buffer_recycler_1_expr5, m_buffer_recycler_2, line(buffer_recycler_1, 62)).
argument(buffer_recycler_1_literal9, 1, buffer_recycler_1_expr5).
argument(buffer_recycler_1_literal10, 2, buffer_recycler_1_expr5).
param(p_bb_count_3, 1, m_buffer_recycler_2).
param(p_cb_count_4, 2, m_buffer_recycler_2).
assign(f__byte_buffers_5, buffer_recycler_1_expr7, line(buffer_recycler_1, 72)).
assign(f__char_buffers_6, buffer_recycler_1_expr9, line(buffer_recycler_1, 73)).
param(p_ix_7, 1, m_alloc_byte_buffer_3).
param(p_ix_8, 1, m_alloc_byte_buffer_4).
param(p_min_size_9, 2, m_alloc_byte_buffer_4).
param(p_ix_10, 1, m_release_byte_buffer_5).
param(p_buffer_11, 2, m_release_byte_buffer_5).
param(p_ix_12, 1, m_alloc_char_buffer_6).
param(p_ix_13, 1, m_alloc_char_buffer_7).
param(p_min_size_14, 2, m_alloc_char_buffer_7).
param(p_ix_15, 1, m_release_char_buffer_8).
param(p_buffer_16, 2, m_release_char_buffer_8).
param(p_ix_17, 1, m_byte_buffer_length_9).
param(p_ix_18, 1, m_char_buffer_length_10).
param(p_size_19, 1, m_balloc_11).
param(p_size_20, 1, m_calloc_12).

%text_buffer_1 - com.fasterxml.jackson.core.util.TextBuffer
assign(f_no_chars_23, text_buffer_1_expr1, line(text_buffer_1, 29)).
assign(f__has_segments_24, text_buffer_1_literal2, line(text_buffer_1, 85)).
param(p_allocator_25, 1, m_text_buffer_18).
assign(f__allocator_26, p_allocator_25, line(text_buffer_1, 122)).
assign(f__input_start_27, text_buffer_1_expr4, line(text_buffer_1, 156)).
assign(f__current_size_28, text_buffer_1_literal4, line(text_buffer_1, 157)).
assign(f__input_len_29, text_buffer_1_literal5, line(text_buffer_1, 158)).
assign(f__input_buffer_30, text_buffer_1_literal6, line(text_buffer_1, 160)).
assign(f__result_string_31, text_buffer_1_literal7, line(text_buffer_1, 161)).
assign(f__result_array_32, text_buffer_1_literal8, line(text_buffer_1, 162)).
param(p_buf_33, 1, m_reset_with_shared_23).
param(p_start_34, 2, m_reset_with_shared_23).
param(p_len_35, 3, m_reset_with_shared_23).
param(p_buf_36, 1, m_reset_with_copy_24).
param(p_start_37, 2, m_reset_with_copy_24).
param(p_len_38, 3, m_reset_with_copy_24).
param(p_value_39, 1, m_reset_with_string_25).
param(p_needed_40, 1, m_buf_26).
return(f__input_buffer_30, m_get_text_buffer_21, line(text_buffer_1, 301)).
return(f__result_array_32, m_get_text_buffer_21, line(text_buffer_1, 302)).
return(f__current_segment_41, m_get_text_buffer_21, line(text_buffer_1, 307)).
throw(m_contents_as_decimal_33, number_format_exception).
throw(m_contents_as_double_34, number_format_exception).
param(p_c_42, 1, m_append_36).
param(p_c_43, 1, m_append_37).
param(p_start_44, 2, m_append_37).
param(p_len_45, 3, m_append_37).
param(p_str_46, 1, m_append_38).
param(p_offset_47, 2, m_append_38).
param(p_len_48, 3, m_append_38).
param(p_len_49, 1, m_set_current_length_42).
param(p_len_50, 1, m_set_current_and_return_43).
param(p_min_size_51, 1, m_expand_current_segment_46).
param(p_need_extra_52, 1, m_unshare_48).
param(p_min_new_segment_size_53, 1, m_expand_49).
param(p_len_54, 1, m_carr_51).

%test_text_buffer_1 - com.fasterxml.jackson.core.util.TestTextBuffer
assign(v_tb_21, test_text_buffer_1_expr1, line(test_text_buffer_1, 80)).
method_invoc(test_text_buffer_1_expr1, m_text_buffer_18, line(test_text_buffer_1, 80)).
argument(test_text_buffer_1_expr2, 1, test_text_buffer_1_expr1).
method_invoc(test_text_buffer_1_expr2, m_buffer_recycler_1, line(test_text_buffer_1, 80)).
method_invoc(test_text_buffer_1_expr3, m_reset_with_empty_19, line(test_text_buffer_1, 81)).
ref(v_tb_21, test_text_buffer_1_expr3, line(test_text_buffer_1, 81)).
method_invoc(test_text_buffer_1_expr4, m_assert_true_20, line(test_text_buffer_1, 83)).
argument(test_text_buffer_1_expr5, 1, test_text_buffer_1_expr4).
ref(test_text_buffer_1_expr7, test_text_buffer_1_expr6, line(test_text_buffer_1, 83)).
method_invoc(test_text_buffer_1_expr7, m_get_text_buffer_21, line(test_text_buffer_1, 83)).
ref(v_tb_21, test_text_buffer_1_expr7, line(test_text_buffer_1, 83)).


% Stack Trace Info.
test_failure(failure_1, 'com.fasterxml.jackson.core.util.TestTextBuffer', 'testEmpty').
trace(trace_1, failure_1, m_test_empty_17, line(test_text_buffer_1, 83), failure_1, target).
trace(trace_2, trace_1, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_3, trace_2, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_4, trace_3, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_6, trace_5, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_7, trace_6, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_8, trace_7, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_9, trace_8, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_10, trace_9, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_11, trace_10, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_12, trace_11, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_14, trace_13, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_16, trace_15, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(test_text_buffer_1_expr7, null, line(test_text_buffer_1, 83)).
val(f__result_array_32, null, line(text_buffer_1, 302)).
val(f__result_string_31, null, line(text_buffer_1, 303)).
val(f__current_segment_41, null, line(text_buffer_1, 307)).



%%% End of Facts