%%% Logic-FL Facts
:- style_check(-discontiguous).

%file_writer_with_encoding_test_1 - org.apache.commons.io.output.FileWriterWithEncodingTest
assign(f_another_test_content_44, file_writer_with_encoding_test_1_expr1, line(file_writer_with_encoding_test_1, 51)).
throw(m_constructor__file_existing_file_with_content_24, exception).
throw(m_same_encoding__charset_constructor_27, exception).
throw(m_same_encoding__charset_encoder_constructor_28, exception).
throw(m_same_encoding_null__charset_constructor_29, exception).
assign(v_writer_45, file_writer_with_encoding_test_1_expr3, line(file_writer_with_encoding_test_1, 124)).
method_invoc(file_writer_with_encoding_test_1_expr3, m_file_writer_with_encoding_9, line(file_writer_with_encoding_test_1, 124)).
throw(file_writer_with_encoding_test_1_expr3, ioexception, line(file_writer_with_encoding_test_1, 124)).
argument(f_file_2_46, 1, file_writer_with_encoding_test_1_expr3).
argument(file_writer_with_encoding_test_1_expr4, 2, file_writer_with_encoding_test_1_expr3).
assign(file_writer_with_encoding_test_1_expr4, file_writer_with_encoding_test_1_literal4, line(file_writer_with_encoding_test_1, 124)).
throw(m_same_encoding_string__charset_constructor_30, exception).
throw(m_same_encoding_string__charset_encoder_constructor_31, exception).
throw(m_same_encoding_string_constructor_32, exception).
throw(m_same_encoding_string_string_constructor_33, exception).
throw(m_set_up_34, exception).
assign(v_encoding_finder_47, file_writer_with_encoding_test_1_expr5, line(file_writer_with_encoding_test_1, 159)).
method_invoc(file_writer_with_encoding_test_1_expr5, m_file_35, line(file_writer_with_encoding_test_1, 159)).
argument(f_temporary_folder_48, 1, file_writer_with_encoding_test_1_expr5).
argument(file_writer_with_encoding_test_1_literal5, 2, file_writer_with_encoding_test_1_expr5).
assign(v_out_49, file_writer_with_encoding_test_1_expr7, line(file_writer_with_encoding_test_1, 160)).
method_invoc(file_writer_with_encoding_test_1_expr7, m_output_stream_writer_36, line(file_writer_with_encoding_test_1, 160)).
argument(file_writer_with_encoding_test_1_expr8, 1, file_writer_with_encoding_test_1_expr7).
method_invoc(file_writer_with_encoding_test_1_expr8, m_new_output_stream_37, line(file_writer_with_encoding_test_1, 160)).
throw(file_writer_with_encoding_test_1_expr8, ioexception, line(file_writer_with_encoding_test_1, 160)).
argument(file_writer_with_encoding_test_1_expr9, 1, file_writer_with_encoding_test_1_expr8).
ref(t_files_3, file_writer_with_encoding_test_1_expr8, line(file_writer_with_encoding_test_1, 160)).
method_invoc(file_writer_with_encoding_test_1_expr9, m_to_path_38, line(file_writer_with_encoding_test_1, 160)).
ref(v_encoding_finder_47, file_writer_with_encoding_test_1_expr9, line(file_writer_with_encoding_test_1, 160)).
assign(f_default_encoding_50, file_writer_with_encoding_test_1_expr11, line(file_writer_with_encoding_test_1, 161)).
method_invoc(file_writer_with_encoding_test_1_expr11, m_get_encoding_39, line(file_writer_with_encoding_test_1, 161)).
ref(v_out_49, file_writer_with_encoding_test_1_expr11, line(file_writer_with_encoding_test_1, 161)).
assign(f_file_1_51, file_writer_with_encoding_test_1_expr13, line(file_writer_with_encoding_test_1, 163)).
method_invoc(file_writer_with_encoding_test_1_expr13, m_file_35, line(file_writer_with_encoding_test_1, 163)).
argument(f_temporary_folder_48, 1, file_writer_with_encoding_test_1_expr13).
argument(file_writer_with_encoding_test_1_literal6, 2, file_writer_with_encoding_test_1_expr13).
assign(f_file_2_46, file_writer_with_encoding_test_1_expr15, line(file_writer_with_encoding_test_1, 164)).
method_invoc(file_writer_with_encoding_test_1_expr15, m_file_35, line(file_writer_with_encoding_test_1, 164)).
argument(f_temporary_folder_48, 1, file_writer_with_encoding_test_1_expr15).
argument(file_writer_with_encoding_test_1_literal7, 2, file_writer_with_encoding_test_1_expr15).
assign(v_arr_52, file_writer_with_encoding_test_1_expr16, line(file_writer_with_encoding_test_1, 165)).
assign(v_chars_53, file_writer_with_encoding_test_1_expr17, line(file_writer_with_encoding_test_1, 166)).
method_invoc(file_writer_with_encoding_test_1_expr17, m_to_char_array_40, line(file_writer_with_encoding_test_1, 166)).
ref(file_writer_with_encoding_test_1_literal9, file_writer_with_encoding_test_1_expr17, line(file_writer_with_encoding_test_1, 166)).
assign(v_i_54, file_writer_with_encoding_test_1_literal10, line(file_writer_with_encoding_test_1, 167)).
ref(v_arr_52, q_length_1, line(file_writer_with_encoding_test_1, 167)).
assign(file_writer_with_encoding_test_1_expr22, file_writer_with_encoding_test_1_expr23, line(file_writer_with_encoding_test_1, 168)).
ref(v_arr_52, file_writer_with_encoding_test_1_expr22, line(file_writer_with_encoding_test_1, 168)).
ref(v_chars_53, file_writer_with_encoding_test_1_expr23, line(file_writer_with_encoding_test_1, 168)).
ref(v_chars_53, q_length_2, line(file_writer_with_encoding_test_1, 168)).
assign(f_text_content_55, file_writer_with_encoding_test_1_expr26, line(file_writer_with_encoding_test_1, 170)).
method_invoc(file_writer_with_encoding_test_1_expr26, m_string_41, line(file_writer_with_encoding_test_1, 170)).
argument(v_arr_52, 1, file_writer_with_encoding_test_1_expr26).
param(p_fw_21_56, 1, m_successful_run_42).
throw(m_successful_run_42, exception).
throw(m_test_different_encoding_43, exception).
param(p_fw_1_57, 1, m_write_test_payload_44).
param(p_fw_2_58, 2, m_write_test_payload_44).
throw(m_write_test_payload_44, ioexception).

%file_writer_with_encoding_1 - org.apache.commons.io.output.FileWriterWithEncoding
param(p_file_name_1, 1, m_file_writer_with_encoding_1).
param(p_charset_name_2, 2, m_file_writer_with_encoding_1).
throw(m_file_writer_with_encoding_1, ioexception).
param(p_file_name_3, 1, m_file_writer_with_encoding_2).
param(p_charset_name_4, 2, m_file_writer_with_encoding_2).
param(p_append_5, 3, m_file_writer_with_encoding_2).
throw(m_file_writer_with_encoding_2, ioexception).
param(p_file_name_6, 1, m_file_writer_with_encoding_3).
param(p_charset_7, 2, m_file_writer_with_encoding_3).
throw(m_file_writer_with_encoding_3, ioexception).
param(p_file_name_8, 1, m_file_writer_with_encoding_4).
param(p_charset_9, 2, m_file_writer_with_encoding_4).
param(p_append_10, 3, m_file_writer_with_encoding_4).
throw(m_file_writer_with_encoding_4, ioexception).
param(p_file_name_11, 1, m_file_writer_with_encoding_5).
param(p_encoding_12, 2, m_file_writer_with_encoding_5).
throw(m_file_writer_with_encoding_5, ioexception).
param(p_file_name_13, 1, m_file_writer_with_encoding_6).
param(p_charset_encoder_14, 2, m_file_writer_with_encoding_6).
param(p_append_15, 3, m_file_writer_with_encoding_6).
throw(m_file_writer_with_encoding_6, ioexception).
param(p_file_16, 1, m_file_writer_with_encoding_7).
param(p_charset_name_17, 2, m_file_writer_with_encoding_7).
throw(m_file_writer_with_encoding_7, ioexception).
param(p_file_18, 1, m_file_writer_with_encoding_8).
param(p_charset_name_19, 2, m_file_writer_with_encoding_8).
param(p_append_20, 3, m_file_writer_with_encoding_8).
throw(m_file_writer_with_encoding_8, ioexception).
param(p_file_21, 1, m_file_writer_with_encoding_9).
param(p_charset_22, 2, m_file_writer_with_encoding_9).
throw(m_file_writer_with_encoding_9, ioexception).
method_invoc(file_writer_with_encoding_1_expr1, m_file_writer_with_encoding_10, line(file_writer_with_encoding_1, 171)).
throw(file_writer_with_encoding_1_expr1, ioexception, line(file_writer_with_encoding_1, 171)).
argument(p_file_21, 1, file_writer_with_encoding_1_expr1).
argument(p_charset_22, 2, file_writer_with_encoding_1_expr1).
argument(file_writer_with_encoding_1_literal1, 3, file_writer_with_encoding_1_expr1).
param(p_file_23, 1, m_file_writer_with_encoding_10).
param(p_encoding_24, 2, m_file_writer_with_encoding_10).
param(p_append_25, 3, m_file_writer_with_encoding_10).
throw(m_file_writer_with_encoding_10, ioexception).
assign(f_out_26, file_writer_with_encoding_1_expr4, line(file_writer_with_encoding_1, 184)).
method_invoc(file_writer_with_encoding_1_expr4, m_init_writer_11, line(file_writer_with_encoding_1, 184)).
throw(file_writer_with_encoding_1_expr4, ioexception, line(file_writer_with_encoding_1, 184)).
argument(p_file_23, 1, file_writer_with_encoding_1_expr4).
argument(p_encoding_24, 2, file_writer_with_encoding_1_expr4).
argument(p_append_25, 3, file_writer_with_encoding_1_expr4).
param(p_file_27, 1, m_file_writer_with_encoding_12).
param(p_charset_encoder_28, 2, m_file_writer_with_encoding_12).
throw(m_file_writer_with_encoding_12, ioexception).
param(p_file_29, 1, m_file_writer_with_encoding_13).
param(p_charset_encoder_30, 2, m_file_writer_with_encoding_13).
param(p_append_31, 3, m_file_writer_with_encoding_13).
throw(m_file_writer_with_encoding_13, ioexception).
param(p_file_32, 1, m_init_writer_11).
param(p_encoding_33, 2, m_init_writer_11).
param(p_append_34, 3, m_init_writer_11).
throw(m_init_writer_11, ioexception).
method_invoc(file_writer_with_encoding_1_expr6, m_require_non_null_14, line(file_writer_with_encoding_1, 225)).
argument(p_file_32, 1, file_writer_with_encoding_1_expr6).
argument(file_writer_with_encoding_1_literal2, 2, file_writer_with_encoding_1_expr6).
ref(t_objects_1, file_writer_with_encoding_1_expr6, line(file_writer_with_encoding_1, 225)).
method_invoc(file_writer_with_encoding_1_expr7, m_require_non_null_14, line(file_writer_with_encoding_1, 226)).
throw(file_writer_with_encoding_1_expr7, null_pointer_exception, line(file_writer_with_encoding_1, 226)).
argument(p_encoding_33, 1, file_writer_with_encoding_1_expr7).
argument(file_writer_with_encoding_1_literal3, 2, file_writer_with_encoding_1_expr7).
ref(t_objects_1, file_writer_with_encoding_1_expr7, line(file_writer_with_encoding_1, 226)).
param(p_idx_35, 1, m_write_15).
throw(m_write_15, ioexception).
param(p_chr_36, 1, m_write_16).
throw(m_write_16, ioexception).
param(p_chr_37, 1, m_write_17).
param(p_st_38, 2, m_write_17).
param(p_end_39, 3, m_write_17).
throw(m_write_17, ioexception).
param(p_str_40, 1, m_write_18).
throw(m_write_18, ioexception).
param(p_str_41, 1, m_write_19).
param(p_st_42, 2, m_write_19).
param(p_end_43, 3, m_write_19).
throw(m_write_19, ioexception).
throw(m_flush_20, ioexception).
throw(m_close_21, ioexception).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.output.FileWriterWithEncodingTest', 'sameEncoding_null_Charset_constructor').
trace(trace_1, failure_1, 'requireNonNull', line(java_util_objects, 259), failure_1, non_target).
trace(trace_2, trace_1, m_init_writer_11, line(file_writer_with_encoding_1, 226), failure_1, target).
trace(trace_3, trace_2, m_file_writer_with_encoding_10, line(file_writer_with_encoding_1, 184), failure_1, target).
trace(trace_4, trace_3, m_file_writer_with_encoding_9, line(file_writer_with_encoding_1, 171), failure_1, target).
trace(trace_5, trace_4, m_same_encoding_null__charset_constructor_29, line(file_writer_with_encoding_test_1, 124), failure_1, target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_8, trace_7, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_1, non_target).
trace(trace_9, trace_8, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_1, non_target).
trace(trace_10, trace_9, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_1, non_target).
trace(trace_11, trace_10, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_1, non_target).
trace(trace_12, trace_11, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_1, non_target).
trace(trace_13, trace_12, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_1, non_target).
trace(trace_14, trace_13, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_1, non_target).
trace(trace_15, trace_14, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_1, non_target).
trace(trace_16, trace_15, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_1, non_target).
trace(trace_17, trace_16, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_1, non_target).
trace(trace_18, trace_17, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_1, non_target).
trace(trace_19, trace_18, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_1, non_target).
trace(trace_20, trace_19, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_1, non_target).
trace(trace_21, trace_20, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_1, non_target).
trace(trace_22, trace_21, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_1, non_target).
trace(trace_23, trace_22, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_24, trace_23, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_1, non_target).
trace(trace_25, trace_24, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_1, non_target).
trace(trace_26, trace_25, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_1, non_target).
trace(trace_27, trace_26, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_1, non_target).
trace(trace_28, trace_27, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_29, trace_28, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_30, trace_29, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_31, trace_30, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_32, trace_31, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_33, trace_32, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_34, trace_33, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_35, trace_34, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_36, trace_35, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_37, trace_36, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_38, trace_37, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_39, trace_38, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_40, trace_39, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_41, trace_40, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_42, trace_41, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_43, trace_42, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_44, trace_43, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_45, trace_44, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_46, trace_45, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_47, trace_46, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_48, trace_47, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_49, trace_48, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_50, trace_49, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_51, trace_50, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_52, trace_51, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_53, trace_52, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_54, trace_53, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_55, trace_54, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_1, non_target).
trace(trace_56, trace_55, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_1, non_target).
trace(trace_57, trace_56, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_1, non_target).
trace(trace_58, trace_57, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_1, non_target).
trace(trace_59, trace_58, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_1, non_target).
trace(trace_60, trace_59, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_1, non_target).
trace(trace_61, trace_60, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_1, non_target).
trace(trace_62, trace_61, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_1, non_target).
trace(trace_63, trace_62, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_1, non_target).
trace(trace_64, trace_63, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_1, non_target).
trace(trace_65, trace_64, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_1, non_target).
trace(trace_66, trace_65, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_1, non_target).
trace(trace_67, trace_66, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_charset_22, null, line(file_writer_with_encoding_1, 171)).
val(p_encoding_24, null, line(file_writer_with_encoding_1, 184)).
val(p_encoding_33, null, line(file_writer_with_encoding_1, 226)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(file_writer_with_encoding_test_1, 'org.apache.commons.io.output.FileWriterWithEncodingTest').
class(file_writer_with_encoding_1, 'org.apache.commons.io.output.FileWriterWithEncoding').

%%% Methods
%file_writer_with_encoding_test_1 - org.apache.commons.io.output.FileWriterWithEncodingTest
method(m_constructor__file_directory_22, range(file_writer_with_encoding_test_1, 1851, 291, 53, 61)).
method(m_constructor__file_encoding_bad_encoding_23, range(file_writer_with_encoding_test_1, 2148, 289, 63, 71)).
method(m_constructor__file_existing_file_with_content_24, range(file_writer_with_encoding_test_1, 2443, 443, 73, 86)).
method(m_constructor__file_null_file_25, range(file_writer_with_encoding_test_1, 2892, 295, 88, 96)).
method(m_constructor_file_name_null_file_26, range(file_writer_with_encoding_test_1, 3193, 301, 98, 106)).
method(m_same_encoding__charset_constructor_27, range(file_writer_with_encoding_test_1, 3500, 240, 108, 113)).
method(m_same_encoding__charset_encoder_constructor_28, range(file_writer_with_encoding_test_1, 3746, 260, 115, 120)).
method(m_same_encoding_null__charset_constructor_29, range(file_writer_with_encoding_test_1, 4012, 235, 122, 127)).
method(m_same_encoding_string__charset_constructor_30, range(file_writer_with_encoding_test_1, 4253, 257, 129, 134)).
method(m_same_encoding_string__charset_encoder_constructor_31, range(file_writer_with_encoding_test_1, 4516, 277, 136, 141)).
method(m_same_encoding_string_constructor_32, range(file_writer_with_encoding_test_1, 4799, 230, 143, 148)).
method(m_same_encoding_string_string_constructor_33, range(file_writer_with_encoding_test_1, 5035, 247, 150, 155)).
method(m_set_up_34, range(file_writer_with_encoding_test_1, 5288, 693, 157, 171)).
method(m_successful_run_42, range(file_writer_with_encoding_test_1, 5987, 367, 173, 181)).
method(m_test_different_encoding_43, range(file_writer_with_encoding_test_1, 6360, 1206, 183, 215)).
method(m_write_test_payload_44, range(file_writer_with_encoding_test_1, 7572, 572, 217, 234)).
%file_writer_with_encoding_1 - org.apache.commons.io.output.FileWriterWithEncoding
method(m_file_writer_with_encoding_1, range(file_writer_with_encoding_1, 2069, 509, 59, 69)).
method(m_file_writer_with_encoding_2, range(file_writer_with_encoding_1, 2584, 621, 71, 83)).
method(m_file_writer_with_encoding_3, range(file_writer_with_encoding_1, 3211, 483, 85, 95)).
method(m_file_writer_with_encoding_4, range(file_writer_with_encoding_1, 3700, 596, 97, 109)).
method(m_file_writer_with_encoding_5, range(file_writer_with_encoding_1, 4302, 494, 111, 121)).
method(m_file_writer_with_encoding_6, range(file_writer_with_encoding_1, 4802, 624, 123, 135)).
method(m_file_writer_with_encoding_7, range(file_writer_with_encoding_1, 5432, 468, 137, 147)).
method(m_file_writer_with_encoding_8, range(file_writer_with_encoding_1, 5906, 585, 149, 160)).
method(m_file_writer_with_encoding_9, range(file_writer_with_encoding_1, 6497, 443, 162, 172)).
method(m_file_writer_with_encoding_10, range(file_writer_with_encoding_1, 6946, 577, 174, 185)).
method(m_file_writer_with_encoding_12, range(file_writer_with_encoding_1, 7529, 471, 187, 197)).
method(m_file_writer_with_encoding_13, range(file_writer_with_encoding_1, 8006, 600, 199, 211)).
method(m_init_writer_11, range(file_writer_with_encoding_1, 8612, 1642, 213, 249)).
method(m_write_15, range(file_writer_with_encoding_1, 10260, 232, 251, 259)).
method(m_write_16, range(file_writer_with_encoding_1, 10498, 253, 261, 269)).
method(m_write_17, range(file_writer_with_encoding_1, 10757, 387, 271, 281)).
method(m_write_18, range(file_writer_with_encoding_1, 11150, 249, 283, 291)).
method(m_write_19, range(file_writer_with_encoding_1, 11405, 383, 293, 303)).
method(m_flush_20, range(file_writer_with_encoding_1, 11794, 174, 305, 312)).
method(m_close_21, range(file_writer_with_encoding_1, 11974, 174, 314, 321)).

%%% Blocks
%file_writer_with_encoding_test_1 - org.apache.commons.io.output.FileWriterWithEncodingTest
block(file_writer_with_encoding_test_1_block1, block, file_writer_with_encoding_test_1_code11, body, range(file_writer_with_encoding_test_1, 4091, 156, 123, 127)).
block(file_writer_with_encoding_test_1_block2, block, file_writer_with_encoding_test_1_stmt1, body, range(file_writer_with_encoding_test_1, 4195, 46, 124, 126)).
block(file_writer_with_encoding_test_1_block3, block, file_writer_with_encoding_test_1_code17, body, range(file_writer_with_encoding_test_1, 5341, 640, 158, 171)).
block(file_writer_with_encoding_test_1_block4, block, file_writer_with_encoding_test_1_stmt3, body, range(file_writer_with_encoding_test_1, 5530, 60, 160, 162)).
block(file_writer_with_encoding_test_1_block5, block, file_writer_with_encoding_test_1_stmt9, body, range(file_writer_with_encoding_test_1, 5879, 57, 167, 169)).
%file_writer_with_encoding_1 - org.apache.commons.io.output.FileWriterWithEncoding
block(file_writer_with_encoding_1_block1, block, file_writer_with_encoding_1_code3, body, range(file_writer_with_encoding_1, 6897, 43, 170, 172)).
block(file_writer_with_encoding_1_block2, block, file_writer_with_encoding_1_code4, body, range(file_writer_with_encoding_1, 7461, 62, 183, 185)).
block(file_writer_with_encoding_1_block3, block, file_writer_with_encoding_1_code16, body, range(file_writer_with_encoding_1, 9178, 1076, 224, 249)).

%%% Statements
%file_writer_with_encoding_test_1 - org.apache.commons.io.output.FileWriterWithEncodingTest
stmt(file_writer_with_encoding_test_1_stmt1, try_statement, file_writer_with_encoding_test_1_block1, (statements, 0), range(file_writer_with_encoding_test_1, 4101, 140, 124, 126)).
stmt(file_writer_with_encoding_test_1_stmt2, variable_declaration_statement, file_writer_with_encoding_test_1_block3, (statements, 0), range(file_writer_with_encoding_test_1, 5351, 68, 159, 159)).
stmt(file_writer_with_encoding_test_1_stmt3, try_statement, file_writer_with_encoding_test_1_block3, (statements, 1), range(file_writer_with_encoding_test_1, 5428, 162, 160, 162)).
stmt(file_writer_with_encoding_test_1_stmt4, expression_statement, file_writer_with_encoding_test_1_block4, (statements, 0), range(file_writer_with_encoding_test_1, 5544, 36, 161, 161)).
stmt(file_writer_with_encoding_test_1_stmt5, expression_statement, file_writer_with_encoding_test_1_block3, (statements, 2), range(file_writer_with_encoding_test_1, 5599, 51, 163, 163)).
stmt(file_writer_with_encoding_test_1_stmt6, expression_statement, file_writer_with_encoding_test_1_block3, (statements, 3), range(file_writer_with_encoding_test_1, 5659, 51, 164, 164)).
stmt(file_writer_with_encoding_test_1_stmt7, variable_declaration_statement, file_writer_with_encoding_test_1_block3, (statements, 4), range(file_writer_with_encoding_test_1, 5719, 34, 165, 165)).
stmt(file_writer_with_encoding_test_1_stmt8, variable_declaration_statement, file_writer_with_encoding_test_1_block3, (statements, 5), range(file_writer_with_encoding_test_1, 5762, 71, 166, 166)).
stmt(file_writer_with_encoding_test_1_stmt9, for_statement, file_writer_with_encoding_test_1_block3, (statements, 6), range(file_writer_with_encoding_test_1, 5842, 94, 167, 169)).
stmt(file_writer_with_encoding_test_1_stmt10, expression_statement, file_writer_with_encoding_test_1_block5, (statements, 0), range(file_writer_with_encoding_test_1, 5893, 33, 168, 168)).
stmt(file_writer_with_encoding_test_1_stmt11, expression_statement, file_writer_with_encoding_test_1_block3, (statements, 7), range(file_writer_with_encoding_test_1, 5945, 30, 170, 170)).
%file_writer_with_encoding_1 - org.apache.commons.io.output.FileWriterWithEncoding
stmt(file_writer_with_encoding_1_stmt1, constructor_invocation, file_writer_with_encoding_1_block1, (statements, 0), range(file_writer_with_encoding_1, 6907, 27, 171, 171)).
stmt(file_writer_with_encoding_1_stmt2, expression_statement, file_writer_with_encoding_1_block2, (statements, 0), range(file_writer_with_encoding_1, 7471, 46, 184, 184)).
stmt(file_writer_with_encoding_1_stmt3, expression_statement, file_writer_with_encoding_1_block3, (statements, 0), range(file_writer_with_encoding_1, 9188, 37, 225, 225)).
stmt(file_writer_with_encoding_1_stmt4, expression_statement, file_writer_with_encoding_1_block3, (statements, 1), range(file_writer_with_encoding_1, 9234, 45, 226, 226)).

%%% Expressions
%file_writer_with_encoding_test_1 - org.apache.commons.io.output.FileWriterWithEncodingTest
expr(file_writer_with_encoding_test_1_expr1, array_initializer, file_writer_with_encoding_test_1_code10, initializer, range(file_writer_with_encoding_test_1, 1829, 15, 51, 51), "{'f','z','x'}").
expr(file_writer_with_encoding_test_1_expr2, variable_declaration_expression, file_writer_with_encoding_test_1_stmt1, (resources, 0), range(file_writer_with_encoding_test_1, 4106, 87, 124, 124), "final FileWriterWithEncoding writer=new FileWriterWithEncoding(file2,(Charset)null)").
expr(file_writer_with_encoding_test_1_expr3, class_instance_creation, file_writer_with_encoding_test_1_code14, initializer, range(file_writer_with_encoding_test_1, 4144, 49, 124, 124), "new FileWriterWithEncoding(file2,(Charset)null)").
expr(file_writer_with_encoding_test_1_expr4, cast_expression, file_writer_with_encoding_test_1_expr3, (arguments, 1), range(file_writer_with_encoding_test_1, 4178, 14, 124, 124), "(Charset)null").
expr(file_writer_with_encoding_test_1_expr5, class_instance_creation, file_writer_with_encoding_test_1_code20, initializer, range(file_writer_with_encoding_test_1, 5379, 39, 159, 159), "new File(temporaryFolder,\"finder.txt\")").
expr(file_writer_with_encoding_test_1_expr6, variable_declaration_expression, file_writer_with_encoding_test_1_stmt3, (resources, 0), range(file_writer_with_encoding_test_1, 5433, 95, 160, 160), "OutputStreamWriter out=new OutputStreamWriter(Files.newOutputStream(encodingFinder.toPath()))").
expr(file_writer_with_encoding_test_1_expr7, class_instance_creation, file_writer_with_encoding_test_1_code23, initializer, range(file_writer_with_encoding_test_1, 5458, 70, 160, 160), "new OutputStreamWriter(Files.newOutputStream(encodingFinder.toPath()))").
expr(file_writer_with_encoding_test_1_expr8, method_invocation, file_writer_with_encoding_test_1_expr7, (arguments, 0), range(file_writer_with_encoding_test_1, 5481, 46, 160, 160), "Files.newOutputStream(encodingFinder.toPath())").
expr(file_writer_with_encoding_test_1_expr9, method_invocation, file_writer_with_encoding_test_1_expr8, (arguments, 0), range(file_writer_with_encoding_test_1, 5503, 23, 160, 160), "encodingFinder.toPath()").
expr(file_writer_with_encoding_test_1_expr10, assignment, file_writer_with_encoding_test_1_stmt4, expression, range(file_writer_with_encoding_test_1, 5544, 35, 161, 161), "defaultEncoding=out.getEncoding()").
expr(file_writer_with_encoding_test_1_expr11, method_invocation, file_writer_with_encoding_test_1_expr10, right_hand_side, range(file_writer_with_encoding_test_1, 5562, 17, 161, 161), "out.getEncoding()").
expr(file_writer_with_encoding_test_1_expr12, assignment, file_writer_with_encoding_test_1_stmt5, expression, range(file_writer_with_encoding_test_1, 5599, 50, 163, 163), "file1=new File(temporaryFolder,\"testfile1.txt\")").
expr(file_writer_with_encoding_test_1_expr13, class_instance_creation, file_writer_with_encoding_test_1_expr12, right_hand_side, range(file_writer_with_encoding_test_1, 5607, 42, 163, 163), "new File(temporaryFolder,\"testfile1.txt\")").
expr(file_writer_with_encoding_test_1_expr14, assignment, file_writer_with_encoding_test_1_stmt6, expression, range(file_writer_with_encoding_test_1, 5659, 50, 164, 164), "file2=new File(temporaryFolder,\"testfile2.txt\")").
expr(file_writer_with_encoding_test_1_expr15, class_instance_creation, file_writer_with_encoding_test_1_expr14, right_hand_side, range(file_writer_with_encoding_test_1, 5667, 42, 164, 164), "new File(temporaryFolder,\"testfile2.txt\")").
expr(file_writer_with_encoding_test_1_expr16, array_creation, file_writer_with_encoding_test_1_code31, initializer, range(file_writer_with_encoding_test_1, 5738, 14, 165, 165), "new char[1024]").
expr(file_writer_with_encoding_test_1_expr17, method_invocation, file_writer_with_encoding_test_1_code39, initializer, range(file_writer_with_encoding_test_1, 5783, 49, 166, 166), "\"ABCDEFGHIJKLMNOPQabcdefgihklmnopq\".toCharArray()").
expr(file_writer_with_encoding_test_1_expr18, variable_declaration_expression, file_writer_with_encoding_test_1_stmt9, (initializers, 0), range(file_writer_with_encoding_test_1, 5847, 9, 167, 167), "int i=0").
expr(file_writer_with_encoding_test_1_expr19, infix_expression, file_writer_with_encoding_test_1_stmt9, expression, range(file_writer_with_encoding_test_1, 5858, 14, 167, 167), "i < arr.length").
expr(file_writer_with_encoding_test_1_expr20, postfix_expression, file_writer_with_encoding_test_1_stmt9, (updaters, 0), range(file_writer_with_encoding_test_1, 5874, 3, 167, 167), "i++").
expr(file_writer_with_encoding_test_1_expr22, array_access, file_writer_with_encoding_test_1_expr21, left_hand_side, range(file_writer_with_encoding_test_1, 5893, 6, 168, 168), "arr[i]").
expr(file_writer_with_encoding_test_1_expr21, assignment, file_writer_with_encoding_test_1_stmt10, expression, range(file_writer_with_encoding_test_1, 5893, 32, 168, 168), "arr[i]=chars[i % chars.length]").
expr(file_writer_with_encoding_test_1_expr23, array_access, file_writer_with_encoding_test_1_expr21, right_hand_side, range(file_writer_with_encoding_test_1, 5902, 23, 168, 168), "chars[i % chars.length]").
expr(file_writer_with_encoding_test_1_expr24, infix_expression, file_writer_with_encoding_test_1_expr23, index, range(file_writer_with_encoding_test_1, 5908, 16, 168, 168), "i % chars.length").
expr(file_writer_with_encoding_test_1_expr25, assignment, file_writer_with_encoding_test_1_stmt11, expression, range(file_writer_with_encoding_test_1, 5945, 29, 170, 170), "textContent=new String(arr)").
expr(file_writer_with_encoding_test_1_expr26, class_instance_creation, file_writer_with_encoding_test_1_expr25, right_hand_side, range(file_writer_with_encoding_test_1, 5959, 15, 170, 170), "new String(arr)").
%file_writer_with_encoding_1 - org.apache.commons.io.output.FileWriterWithEncoding
expr(file_writer_with_encoding_1_expr1, constructor_invocation, file_writer_with_encoding_1_block1, (statements, 0), range(file_writer_with_encoding_1, 6907, 27, 171, 171), "this(file,charset,false);").
expr(file_writer_with_encoding_1_expr2, assignment, file_writer_with_encoding_1_stmt2, expression, range(file_writer_with_encoding_1, 7471, 45, 184, 184), "this.out=initWriter(file,encoding,append)").
expr(file_writer_with_encoding_1_expr5, this_expression, f_out_26, expression, range(file_writer_with_encoding_1, 7471, 4, 184, 184), "this").
expr(file_writer_with_encoding_1_expr3, field_access, file_writer_with_encoding_1_expr2, left_hand_side, range(file_writer_with_encoding_1, 7471, 8, 184, 184), "this.out").
expr(file_writer_with_encoding_1_expr4, method_invocation, file_writer_with_encoding_1_expr2, right_hand_side, range(file_writer_with_encoding_1, 7482, 34, 184, 184), "initWriter(file,encoding,append)").
expr(file_writer_with_encoding_1_expr6, method_invocation, file_writer_with_encoding_1_stmt3, expression, range(file_writer_with_encoding_1, 9188, 36, 225, 225), "Objects.requireNonNull(file,\"file\")").
expr(file_writer_with_encoding_1_expr7, method_invocation, file_writer_with_encoding_1_stmt4, expression, range(file_writer_with_encoding_1, 9234, 44, 226, 226), "Objects.requireNonNull(encoding,\"encoding\")").

%%% Names
%file_writer_with_encoding_test_1 - org.apache.commons.io.output.FileWriterWithEncodingTest
name(t_file_writer_with_encoding_test_2, simple_name, file_writer_with_encoding_test_1_code2, name, range(file_writer_with_encoding_test_1, 1590, 26, 42, 42), 'FileWriterWithEncodingTest').
name(f_another_test_content_44, simple_name, file_writer_with_encoding_test_1_code10, name, range(file_writer_with_encoding_test_1, 1808, 18, 51, 51), 'anotherTestContent').
name(v_writer_45, simple_name, file_writer_with_encoding_test_1_code14, name, range(file_writer_with_encoding_test_1, 4135, 6, 124, 124), 'writer').
name(f_file_2_46, simple_name, file_writer_with_encoding_test_1_expr3, (arguments, 0), range(file_writer_with_encoding_test_1, 4171, 5, 124, 124), 'file2').
name(v_encoding_finder_47, simple_name, file_writer_with_encoding_test_1_code20, name, range(file_writer_with_encoding_test_1, 5362, 14, 159, 159), 'encodingFinder').
name(f_temporary_folder_48, simple_name, file_writer_with_encoding_test_1_expr5, (arguments, 0), range(file_writer_with_encoding_test_1, 5388, 15, 159, 159), 'temporaryFolder').
name(v_out_49, simple_name, file_writer_with_encoding_test_1_code23, name, range(file_writer_with_encoding_test_1, 5452, 3, 160, 160), 'out').
name(t_files_3, simple_name, file_writer_with_encoding_test_1_expr8, expression, range(file_writer_with_encoding_test_1, 5481, 5, 160, 160), 'Files').
name(m_new_output_stream_37, simple_name, file_writer_with_encoding_test_1_expr8, name, range(file_writer_with_encoding_test_1, 5487, 15, 160, 160), 'newOutputStream').
name(v_encoding_finder_47, simple_name, file_writer_with_encoding_test_1_expr9, expression, range(file_writer_with_encoding_test_1, 5503, 14, 160, 160), 'encodingFinder').
name(m_to_path_38, simple_name, file_writer_with_encoding_test_1_expr9, name, range(file_writer_with_encoding_test_1, 5518, 6, 160, 160), 'toPath').
name(f_default_encoding_50, simple_name, file_writer_with_encoding_test_1_expr10, left_hand_side, range(file_writer_with_encoding_test_1, 5544, 15, 161, 161), 'defaultEncoding').
name(v_out_49, simple_name, file_writer_with_encoding_test_1_expr11, expression, range(file_writer_with_encoding_test_1, 5562, 3, 161, 161), 'out').
name(m_get_encoding_39, simple_name, file_writer_with_encoding_test_1_expr11, name, range(file_writer_with_encoding_test_1, 5566, 11, 161, 161), 'getEncoding').
name(f_file_1_51, simple_name, file_writer_with_encoding_test_1_expr12, left_hand_side, range(file_writer_with_encoding_test_1, 5599, 5, 163, 163), 'file1').
name(f_temporary_folder_48, simple_name, file_writer_with_encoding_test_1_expr13, (arguments, 0), range(file_writer_with_encoding_test_1, 5616, 15, 163, 163), 'temporaryFolder').
name(f_file_2_46, simple_name, file_writer_with_encoding_test_1_expr14, left_hand_side, range(file_writer_with_encoding_test_1, 5659, 5, 164, 164), 'file2').
name(f_temporary_folder_48, simple_name, file_writer_with_encoding_test_1_expr15, (arguments, 0), range(file_writer_with_encoding_test_1, 5676, 15, 164, 164), 'temporaryFolder').
name(v_arr_52, simple_name, file_writer_with_encoding_test_1_code31, name, range(file_writer_with_encoding_test_1, 5732, 3, 165, 165), 'arr').
name(v_chars_53, simple_name, file_writer_with_encoding_test_1_code39, name, range(file_writer_with_encoding_test_1, 5775, 5, 166, 166), 'chars').
name(m_to_char_array_40, simple_name, file_writer_with_encoding_test_1_expr17, name, range(file_writer_with_encoding_test_1, 5819, 11, 166, 166), 'toCharArray').
name(v_i_54, simple_name, file_writer_with_encoding_test_1_code41, name, range(file_writer_with_encoding_test_1, 5851, 1, 167, 167), 'i').
name(v_i_54, simple_name, file_writer_with_encoding_test_1_expr19, left_operand, range(file_writer_with_encoding_test_1, 5858, 1, 167, 167), 'i').
name(q_length_1, qualified_name, file_writer_with_encoding_test_1_expr19, right_operand, range(file_writer_with_encoding_test_1, 5862, 10, 167, 167), 'arr.length').
name(v_arr_52, simple_name, q_length_1, qualifier, range(file_writer_with_encoding_test_1, 5862, 3, 167, 167), 'arr').
name(v_i_54, simple_name, file_writer_with_encoding_test_1_expr20, operand, range(file_writer_with_encoding_test_1, 5874, 1, 167, 167), 'i').
name(v_arr_52, simple_name, file_writer_with_encoding_test_1_expr22, array, range(file_writer_with_encoding_test_1, 5893, 3, 168, 168), 'arr').
name(v_i_54, simple_name, file_writer_with_encoding_test_1_expr22, index, range(file_writer_with_encoding_test_1, 5897, 1, 168, 168), 'i').
name(v_chars_53, simple_name, file_writer_with_encoding_test_1_expr23, array, range(file_writer_with_encoding_test_1, 5902, 5, 168, 168), 'chars').
name(v_i_54, simple_name, file_writer_with_encoding_test_1_expr24, left_operand, range(file_writer_with_encoding_test_1, 5908, 1, 168, 168), 'i').
name(v_chars_53, simple_name, q_length_2, qualifier, range(file_writer_with_encoding_test_1, 5912, 5, 168, 168), 'chars').
name(q_length_2, qualified_name, file_writer_with_encoding_test_1_expr24, right_operand, range(file_writer_with_encoding_test_1, 5912, 12, 168, 168), 'chars.length').
name(f_text_content_55, simple_name, file_writer_with_encoding_test_1_expr25, left_hand_side, range(file_writer_with_encoding_test_1, 5945, 11, 170, 170), 'textContent').
name(v_arr_52, simple_name, file_writer_with_encoding_test_1_expr26, (arguments, 0), range(file_writer_with_encoding_test_1, 5970, 3, 170, 170), 'arr').
%file_writer_with_encoding_1 - org.apache.commons.io.output.FileWriterWithEncoding
name(p_file_21, simple_name, file_writer_with_encoding_1_stmt1, (arguments, 0), range(file_writer_with_encoding_1, 6912, 4, 171, 171), 'file').
name(p_charset_22, simple_name, file_writer_with_encoding_1_stmt1, (arguments, 1), range(file_writer_with_encoding_1, 6918, 7, 171, 171), 'charset').
name(m_file_writer_with_encoding_10, simple_name, file_writer_with_encoding_1_code4, name, range(file_writer_with_encoding_1, 7356, 22, 183, 183), 'FileWriterWithEncoding').
name(p_file_23, simple_name, file_writer_with_encoding_1_code6, name, range(file_writer_with_encoding_1, 7390, 4, 183, 183), 'file').
name(p_encoding_24, simple_name, file_writer_with_encoding_1_code9, name, range(file_writer_with_encoding_1, 7410, 8, 183, 183), 'encoding').
name(p_append_25, simple_name, file_writer_with_encoding_1_code12, name, range(file_writer_with_encoding_1, 7434, 6, 183, 183), 'append').
name(f_out_26, simple_name, file_writer_with_encoding_1_expr3, name, range(file_writer_with_encoding_1, 7476, 3, 184, 184), 'out').
name(m_init_writer_11, simple_name, file_writer_with_encoding_1_expr4, name, range(file_writer_with_encoding_1, 7482, 10, 184, 184), 'initWriter').
name(p_file_23, simple_name, file_writer_with_encoding_1_expr4, (arguments, 0), range(file_writer_with_encoding_1, 7493, 4, 184, 184), 'file').
name(p_encoding_24, simple_name, file_writer_with_encoding_1_expr4, (arguments, 1), range(file_writer_with_encoding_1, 7499, 8, 184, 184), 'encoding').
name(p_append_25, simple_name, file_writer_with_encoding_1_expr4, (arguments, 2), range(file_writer_with_encoding_1, 7509, 6, 184, 184), 'append').
name(t_objects_1, simple_name, file_writer_with_encoding_1_expr6, expression, range(file_writer_with_encoding_1, 9188, 7, 225, 225), 'Objects').
name(m_require_non_null_14, simple_name, file_writer_with_encoding_1_expr6, name, range(file_writer_with_encoding_1, 9196, 14, 225, 225), 'requireNonNull').
name(p_file_32, simple_name, file_writer_with_encoding_1_expr6, (arguments, 0), range(file_writer_with_encoding_1, 9211, 4, 225, 225), 'file').
name(t_objects_1, simple_name, file_writer_with_encoding_1_expr7, expression, range(file_writer_with_encoding_1, 9234, 7, 226, 226), 'Objects').
name(m_require_non_null_14, simple_name, file_writer_with_encoding_1_expr7, name, range(file_writer_with_encoding_1, 9242, 14, 226, 226), 'requireNonNull').
name(p_encoding_33, simple_name, file_writer_with_encoding_1_expr7, (arguments, 0), range(file_writer_with_encoding_1, 9257, 8, 226, 226), 'encoding').

%%% Literals
%file_writer_with_encoding_test_1 - org.apache.commons.io.output.FileWriterWithEncodingTest
literal(file_writer_with_encoding_test_1_literal1, character_literal, file_writer_with_encoding_test_1_expr1, (expressions, 0), range(file_writer_with_encoding_test_1, 1830, 3, 51, 51), 'f').
literal(file_writer_with_encoding_test_1_literal2, character_literal, file_writer_with_encoding_test_1_expr1, (expressions, 1), range(file_writer_with_encoding_test_1, 1835, 3, 51, 51), 'z').
literal(file_writer_with_encoding_test_1_literal3, character_literal, file_writer_with_encoding_test_1_expr1, (expressions, 2), range(file_writer_with_encoding_test_1, 1840, 3, 51, 51), 'x').
literal(file_writer_with_encoding_test_1_literal4, null_literal, file_writer_with_encoding_test_1_expr4, expression, range(file_writer_with_encoding_test_1, 4188, 4, 124, 124), null).
literal(file_writer_with_encoding_test_1_literal5, string_literal, file_writer_with_encoding_test_1_expr5, (arguments, 1), range(file_writer_with_encoding_test_1, 5405, 12, 159, 159), "finder.txt").
literal(file_writer_with_encoding_test_1_literal6, string_literal, file_writer_with_encoding_test_1_expr13, (arguments, 1), range(file_writer_with_encoding_test_1, 5633, 15, 163, 163), "testfile1.txt").
literal(file_writer_with_encoding_test_1_literal7, string_literal, file_writer_with_encoding_test_1_expr15, (arguments, 1), range(file_writer_with_encoding_test_1, 5693, 15, 164, 164), "testfile2.txt").
literal(file_writer_with_encoding_test_1_literal8, number_literal, file_writer_with_encoding_test_1_expr16, (dimensions, 0), range(file_writer_with_encoding_test_1, 5747, 4, 165, 165), 1024).
literal(file_writer_with_encoding_test_1_literal9, string_literal, file_writer_with_encoding_test_1_expr17, expression, range(file_writer_with_encoding_test_1, 5783, 35, 166, 166), "ABCDEFGHIJKLMNOPQabcdefgihklmnopq").
literal(file_writer_with_encoding_test_1_literal10, number_literal, file_writer_with_encoding_test_1_code41, initializer, range(file_writer_with_encoding_test_1, 5855, 1, 167, 167), 0).
%file_writer_with_encoding_1 - org.apache.commons.io.output.FileWriterWithEncoding
literal(file_writer_with_encoding_1_literal1, boolean_literal, file_writer_with_encoding_1_stmt1, (arguments, 2), range(file_writer_with_encoding_1, 6927, 5, 171, 171), false).
literal(file_writer_with_encoding_1_literal2, string_literal, file_writer_with_encoding_1_expr6, (arguments, 1), range(file_writer_with_encoding_1, 9217, 6, 225, 225), "file").
literal(file_writer_with_encoding_1_literal3, string_literal, file_writer_with_encoding_1_expr7, (arguments, 1), range(file_writer_with_encoding_1, 9267, 10, 226, 226), "encoding").

%%% Other Code Entities
%file_writer_with_encoding_test_1 - org.apache.commons.io.output.FileWriterWithEncodingTest
code(file_writer_with_encoding_test_1_code1, compilation_unit, range(file_writer_with_encoding_test_1, 0, 8147, 1, -1)).
code(file_writer_with_encoding_test_1_code2, type_declaration, file_writer_with_encoding_test_1_code1, (types, 0), range(file_writer_with_encoding_test_1, 1513, 6633, 38, 235)).
code(file_writer_with_encoding_test_1_code3, modifier, file_writer_with_encoding_test_1_code2, (modifiers, 0), range(file_writer_with_encoding_test_1, 1577, 6, 42, 42)).
code(file_writer_with_encoding_test_1_code4, field_declaration, file_writer_with_encoding_test_1_code2, (body_declarations, 5), range(file_writer_with_encoding_test_1, 1787, 58, 51, 51)).
code(file_writer_with_encoding_test_1_code5, modifier, file_writer_with_encoding_test_1_code4, (modifiers, 0), range(file_writer_with_encoding_test_1, 1787, 7, 51, 51)).
code(file_writer_with_encoding_test_1_code6, modifier, file_writer_with_encoding_test_1_code4, (modifiers, 1), range(file_writer_with_encoding_test_1, 1795, 5, 51, 51)).
code(file_writer_with_encoding_test_1_code7, array_type, file_writer_with_encoding_test_1_code4, type, range(file_writer_with_encoding_test_1, 1801, 6, 51, 51)).
code(file_writer_with_encoding_test_1_code8, primitive_type, file_writer_with_encoding_test_1_code7, element_type, range(file_writer_with_encoding_test_1, 1801, 4, 51, 51)).
code(file_writer_with_encoding_test_1_code9, dimension, file_writer_with_encoding_test_1_code7, (dimensions, 0), range(file_writer_with_encoding_test_1, 1805, 2, 51, 51)).
code(file_writer_with_encoding_test_1_code10, variable_declaration_fragment, file_writer_with_encoding_test_1_code4, (fragments, 0), range(file_writer_with_encoding_test_1, 1808, 36, 51, 51)).
code(file_writer_with_encoding_test_1_code11, method_declaration, file_writer_with_encoding_test_1_code2, (body_declarations, 13), range(file_writer_with_encoding_test_1, 4012, 235, 122, 127)).
code(file_writer_with_encoding_test_1_code12, modifier, file_writer_with_encoding_test_1_expr2, (modifiers, 0), range(file_writer_with_encoding_test_1, 4106, 5, 124, 124)).
code(file_writer_with_encoding_test_1_code13, simple_type, file_writer_with_encoding_test_1_expr2, type, range(file_writer_with_encoding_test_1, 4112, 22, 124, 124)).
code(file_writer_with_encoding_test_1_code14, variable_declaration_fragment, file_writer_with_encoding_test_1_expr2, (fragments, 0), range(file_writer_with_encoding_test_1, 4135, 58, 124, 124)).
code(file_writer_with_encoding_test_1_code15, simple_type, file_writer_with_encoding_test_1_expr3, type, range(file_writer_with_encoding_test_1, 4148, 22, 124, 124)).
code(file_writer_with_encoding_test_1_code16, simple_type, file_writer_with_encoding_test_1_expr4, type, range(file_writer_with_encoding_test_1, 4179, 7, 124, 124)).
code(file_writer_with_encoding_test_1_code17, method_declaration, file_writer_with_encoding_test_1_code2, (body_declarations, 18), range(file_writer_with_encoding_test_1, 5288, 693, 157, 171)).
code(file_writer_with_encoding_test_1_code18, modifier, file_writer_with_encoding_test_1_stmt2, (modifiers, 0), range(file_writer_with_encoding_test_1, 5351, 5, 159, 159)).
code(file_writer_with_encoding_test_1_code19, simple_type, file_writer_with_encoding_test_1_stmt2, type, range(file_writer_with_encoding_test_1, 5357, 4, 159, 159)).
code(file_writer_with_encoding_test_1_code20, variable_declaration_fragment, file_writer_with_encoding_test_1_stmt2, (fragments, 0), range(file_writer_with_encoding_test_1, 5362, 56, 159, 159)).
code(file_writer_with_encoding_test_1_code21, simple_type, file_writer_with_encoding_test_1_expr5, type, range(file_writer_with_encoding_test_1, 5383, 4, 159, 159)).
code(file_writer_with_encoding_test_1_code22, simple_type, file_writer_with_encoding_test_1_expr6, type, range(file_writer_with_encoding_test_1, 5433, 18, 160, 160)).
code(file_writer_with_encoding_test_1_code23, variable_declaration_fragment, file_writer_with_encoding_test_1_expr6, (fragments, 0), range(file_writer_with_encoding_test_1, 5452, 76, 160, 160)).
code(file_writer_with_encoding_test_1_code24, simple_type, file_writer_with_encoding_test_1_expr7, type, range(file_writer_with_encoding_test_1, 5462, 18, 160, 160)).
code(file_writer_with_encoding_test_1_code25, simple_type, file_writer_with_encoding_test_1_expr13, type, range(file_writer_with_encoding_test_1, 5611, 4, 163, 163)).
code(file_writer_with_encoding_test_1_code26, simple_type, file_writer_with_encoding_test_1_expr15, type, range(file_writer_with_encoding_test_1, 5671, 4, 164, 164)).
code(file_writer_with_encoding_test_1_code27, modifier, file_writer_with_encoding_test_1_stmt7, (modifiers, 0), range(file_writer_with_encoding_test_1, 5719, 5, 165, 165)).
code(file_writer_with_encoding_test_1_code28, array_type, file_writer_with_encoding_test_1_stmt7, type, range(file_writer_with_encoding_test_1, 5725, 6, 165, 165)).
code(file_writer_with_encoding_test_1_code29, primitive_type, file_writer_with_encoding_test_1_code28, element_type, range(file_writer_with_encoding_test_1, 5725, 4, 165, 165)).
code(file_writer_with_encoding_test_1_code30, dimension, file_writer_with_encoding_test_1_code28, (dimensions, 0), range(file_writer_with_encoding_test_1, 5729, 2, 165, 165)).
code(file_writer_with_encoding_test_1_code31, variable_declaration_fragment, file_writer_with_encoding_test_1_stmt7, (fragments, 0), range(file_writer_with_encoding_test_1, 5732, 20, 165, 165)).
code(file_writer_with_encoding_test_1_code33, primitive_type, file_writer_with_encoding_test_1_code32, element_type, range(file_writer_with_encoding_test_1, 5742, 4, 165, 165)).
code(file_writer_with_encoding_test_1_code32, array_type, file_writer_with_encoding_test_1_expr16, type, range(file_writer_with_encoding_test_1, 5742, 10, 165, 165)).
code(file_writer_with_encoding_test_1_code34, dimension, file_writer_with_encoding_test_1_code32, (dimensions, 0), range(file_writer_with_encoding_test_1, 5746, 6, 165, 165)).
code(file_writer_with_encoding_test_1_code35, modifier, file_writer_with_encoding_test_1_stmt8, (modifiers, 0), range(file_writer_with_encoding_test_1, 5762, 5, 166, 166)).
code(file_writer_with_encoding_test_1_code36, array_type, file_writer_with_encoding_test_1_stmt8, type, range(file_writer_with_encoding_test_1, 5768, 6, 166, 166)).
code(file_writer_with_encoding_test_1_code37, primitive_type, file_writer_with_encoding_test_1_code36, element_type, range(file_writer_with_encoding_test_1, 5768, 4, 166, 166)).
code(file_writer_with_encoding_test_1_code38, dimension, file_writer_with_encoding_test_1_code36, (dimensions, 0), range(file_writer_with_encoding_test_1, 5772, 2, 166, 166)).
code(file_writer_with_encoding_test_1_code39, variable_declaration_fragment, file_writer_with_encoding_test_1_stmt8, (fragments, 0), range(file_writer_with_encoding_test_1, 5775, 57, 166, 166)).
code(file_writer_with_encoding_test_1_code40, primitive_type, file_writer_with_encoding_test_1_expr18, type, range(file_writer_with_encoding_test_1, 5847, 3, 167, 167)).
code(file_writer_with_encoding_test_1_code41, variable_declaration_fragment, file_writer_with_encoding_test_1_expr18, (fragments, 0), range(file_writer_with_encoding_test_1, 5851, 5, 167, 167)).
code(file_writer_with_encoding_test_1_code42, simple_type, file_writer_with_encoding_test_1_expr26, type, range(file_writer_with_encoding_test_1, 5963, 6, 170, 170)).
%file_writer_with_encoding_1 - org.apache.commons.io.output.FileWriterWithEncoding
code(file_writer_with_encoding_1_code1, compilation_unit, range(file_writer_with_encoding_1, 0, 12151, 1, -1)).
code(file_writer_with_encoding_1_code2, type_declaration, file_writer_with_encoding_1_code1, (types, 0), range(file_writer_with_encoding_1, 1226, 10924, 33, 322)).
code(file_writer_with_encoding_1_code3, method_declaration, file_writer_with_encoding_1_code2, (body_declarations, 9), range(file_writer_with_encoding_1, 6497, 443, 162, 172)).
code(file_writer_with_encoding_1_code4, method_declaration, file_writer_with_encoding_1_code2, (body_declarations, 10), range(file_writer_with_encoding_1, 6946, 577, 174, 185)).
code(file_writer_with_encoding_1_code5, modifier, file_writer_with_encoding_1_code4, (modifiers, 0), range(file_writer_with_encoding_1, 7349, 6, 183, 183)).
code(file_writer_with_encoding_1_code7, modifier, file_writer_with_encoding_1_code6, (modifiers, 0), range(file_writer_with_encoding_1, 7379, 5, 183, 183)).
code(file_writer_with_encoding_1_code6, single_variable_declaration, file_writer_with_encoding_1_code4, (parameters, 0), range(file_writer_with_encoding_1, 7379, 15, 183, 183)).
code(file_writer_with_encoding_1_code8, simple_type, file_writer_with_encoding_1_code6, type, range(file_writer_with_encoding_1, 7385, 4, 183, 183)).
code(file_writer_with_encoding_1_code10, modifier, file_writer_with_encoding_1_code9, (modifiers, 0), range(file_writer_with_encoding_1, 7396, 5, 183, 183)).
code(file_writer_with_encoding_1_code9, single_variable_declaration, file_writer_with_encoding_1_code4, (parameters, 1), range(file_writer_with_encoding_1, 7396, 22, 183, 183)).
code(file_writer_with_encoding_1_code11, simple_type, file_writer_with_encoding_1_code9, type, range(file_writer_with_encoding_1, 7402, 7, 183, 183)).
code(file_writer_with_encoding_1_code12, single_variable_declaration, file_writer_with_encoding_1_code4, (parameters, 2), range(file_writer_with_encoding_1, 7420, 20, 183, 183)).
code(file_writer_with_encoding_1_code13, modifier, file_writer_with_encoding_1_code12, (modifiers, 0), range(file_writer_with_encoding_1, 7420, 5, 183, 183)).
code(file_writer_with_encoding_1_code14, primitive_type, file_writer_with_encoding_1_code12, type, range(file_writer_with_encoding_1, 7426, 7, 183, 183)).
code(file_writer_with_encoding_1_code15, simple_type, file_writer_with_encoding_1_code4, (thrown_exception_types, 0), range(file_writer_with_encoding_1, 7449, 11, 183, 183)).
code(file_writer_with_encoding_1_code16, method_declaration, file_writer_with_encoding_1_code2, (body_declarations, 13), range(file_writer_with_encoding_1, 8612, 1642, 213, 249)).

%%% Name References

name_ref(t_file_writer_with_encoding_test_2, type, 'FileWriterWithEncodingTest', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;').
name_ref(t_files_3, type, 'Files', 'Ljava/nio/file/Files;').
name_ref(t_objects_1, type, 'Objects', 'Ljava/util/Objects;').
name_ref(v_encoding_finder_47, var, 'encodingFinder', 'file_writer_with_encoding_test_1;encodingFinder_line_160').
name_ref(p_charset_22, param, 'charset', 'file_writer_with_encoding_1;charset_line_171').
name_ref(p_file_21, param, 'file', 'file_writer_with_encoding_1;file_line_171').
name_ref(f_file_2_46, field, 'file2', 'file_writer_with_encoding_test_1;file2_line_124').
name_ref(v_arr_52, var, 'arr', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.setUp()V|Ljava/lang/Exception;#arr').
name_ref(v_chars_53, var, 'chars', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.setUp()V|Ljava/lang/Exception;#chars').
name_ref(v_encoding_finder_47, var, 'encodingFinder', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.setUp()V|Ljava/lang/Exception;#encodingFinder').
name_ref(v_i_54, var, 'i', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.setUp()V|Ljava/lang/Exception;#1#i').
name_ref(v_out_49, var, 'out', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.setUp()V|Ljava/lang/Exception;#0#0#out').
name_ref(v_writer_45, var, 'writer', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.sameEncoding_null_Charset_constructor()V|Ljava/lang/Exception;#0#0#writer').
name_ref(p_append_10, param, 'append', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_15, param, 'append', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_20, param, 'append', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_25, param, 'append', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_31, param, 'append', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_34, param, 'append', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;|Ljava/io/IOException;#append#0#2').
name_ref(p_append_5, param, 'append', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_charset_22, param, 'charset', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_7, param, 'charset', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_9, param, 'charset', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_encoder_14, param, 'charsetEncoder', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Z)V|Ljava/io/IOException;#charsetEncoder#0#1').
name_ref(p_charset_encoder_28, param, 'charsetEncoder', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;)V|Ljava/io/IOException;#charsetEncoder#0#1').
name_ref(p_charset_encoder_30, param, 'charsetEncoder', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V|Ljava/io/IOException;#charsetEncoder#0#1').
name_ref(p_charset_name_17, param, 'charsetName', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_19, param, 'charsetName', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_2, param, 'charsetName', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_4, param, 'charsetName', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_chr_36, param, 'chr', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write([C)V|Ljava/io/IOException;#chr#0#0').
name_ref(p_chr_37, param, 'chr', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write([CII)V|Ljava/io/IOException;#chr#0#0').
name_ref(p_encoding_12, param, 'encoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;)V|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_24, param, 'encoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_33, param, 'encoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_end_39, param, 'end', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write([CII)V|Ljava/io/IOException;#end#0#2').
name_ref(p_end_43, param, 'end', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write(Ljava/lang/String;II)V|Ljava/io/IOException;#end#0#2').
name_ref(p_file_16, param, 'file', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_18, param, 'file', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_21, param, 'file', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_23, param, 'file', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_27, param, 'file', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_29, param, 'file', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_32, param, 'file', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_name_1, param, 'fileName', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#fileName#0#0').
name_ref(p_file_name_11, param, 'fileName', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;)V|Ljava/io/IOException;#fileName#0#0').
name_ref(p_file_name_13, param, 'fileName', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Z)V|Ljava/io/IOException;#fileName#0#0').
name_ref(p_file_name_3, param, 'fileName', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;#fileName#0#0').
name_ref(p_file_name_6, param, 'fileName', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#fileName#0#0').
name_ref(p_file_name_8, param, 'fileName', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#fileName#0#0').
name_ref(p_fw_1_57, param, 'fw1', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.writeTestPayload(Ljava/io/FileWriter;Lorg/apache/commons/io/output/FileWriterWithEncoding;)V|Ljava/io/IOException;#fw1#0#0').
name_ref(p_fw_21_56, param, 'fw21', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.successfulRun(Lorg/apache/commons/io/output/FileWriterWithEncoding;)V|Ljava/lang/Exception;#fw21#0#0').
name_ref(p_fw_2_58, param, 'fw2', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.writeTestPayload(Ljava/io/FileWriter;Lorg/apache/commons/io/output/FileWriterWithEncoding;)V|Ljava/io/IOException;#fw2#0#1').
name_ref(p_idx_35, param, 'idx', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write(I)V|Ljava/io/IOException;#idx#0#0').
name_ref(p_st_38, param, 'st', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write([CII)V|Ljava/io/IOException;#st#0#1').
name_ref(p_st_42, param, 'st', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write(Ljava/lang/String;II)V|Ljava/io/IOException;#st#0#1').
name_ref(p_str_40, param, 'str', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write(Ljava/lang/String;)V|Ljava/io/IOException;#str#0#0').
name_ref(p_str_41, param, 'str', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write(Ljava/lang/String;II)V|Ljava/io/IOException;#str#0#0').
name_ref(f_another_test_content_44, field, 'anotherTestContent', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.anotherTestContent)[C').
name_ref(f_default_encoding_50, field, 'defaultEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.defaultEncoding)Ljava/lang/String;').
name_ref(f_file_1_51, field, 'file1', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.file1)Ljava/io/File;').
name_ref(f_file_2_46, field, 'file2', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.file2)Ljava/io/File;').
name_ref(f_out_26, field, 'out', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.out)Ljava/io/Writer;').
name_ref(f_temporary_folder_48, field, 'temporaryFolder', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.temporaryFolder)Ljava/io/File;').
name_ref(f_text_content_55, field, 'textContent', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.textContent)Ljava/lang/String;').
name_ref(m_close_21, method, 'close', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.close()V|Ljava/io/IOException;').
name_ref(m_constructor__file_directory_22, method, 'constructor_File_directory', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.constructor_File_directory()V').
name_ref(m_constructor__file_encoding_bad_encoding_23, method, 'constructor_File_encoding_badEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.constructor_File_encoding_badEncoding()V').
name_ref(m_constructor__file_existing_file_with_content_24, method, 'constructor_File_existingFile_withContent', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.constructor_File_existingFile_withContent()V|Ljava/lang/Exception;').
name_ref(m_constructor__file_null_file_25, method, 'constructor_File_nullFile', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.constructor_File_nullFile()V').
name_ref(m_constructor_file_name_null_file_26, method, 'constructor_fileName_nullFile', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.constructor_fileName_nullFile()V').
name_ref(m_file_35, method, 'File', 'Ljava/io/File;.(Ljava/io/File;Ljava/lang/String;)V').
name_ref(m_file_writer_with_encoding_1, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_file_writer_with_encoding_10, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;').
name_ref(m_file_writer_with_encoding_12, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;)V|Ljava/io/IOException;').
name_ref(m_file_writer_with_encoding_13, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V|Ljava/io/IOException;').
name_ref(m_file_writer_with_encoding_2, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(m_file_writer_with_encoding_3, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_file_writer_with_encoding_4, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;').
name_ref(m_file_writer_with_encoding_5, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;)V|Ljava/io/IOException;').
name_ref(m_file_writer_with_encoding_6, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Z)V|Ljava/io/IOException;').
name_ref(m_file_writer_with_encoding_7, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_file_writer_with_encoding_8, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(m_file_writer_with_encoding_9, method, 'FileWriterWithEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.(Ljava/io/File;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_flush_20, method, 'flush', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.flush()V|Ljava/io/IOException;').
name_ref(m_get_encoding_39, method, 'getEncoding', 'Ljava/io/OutputStreamWriter;.getEncoding()Ljava/lang/String;').
name_ref(m_init_writer_11, method, 'initWriter', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;|Ljava/io/IOException;').
name_ref(m_new_output_stream_37, method, 'newOutputStream', 'Ljava/nio/file/Files;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_output_stream_writer_36, method, 'OutputStreamWriter', 'Ljava/io/OutputStreamWriter;.(Ljava/io/OutputStream;)V').
name_ref(m_require_non_null_14, method, 'requireNonNull', 'Ljava/util/Objects;.requireNonNull<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;').
name_ref(m_same_encoding__charset_constructor_27, method, 'sameEncoding_Charset_constructor', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.sameEncoding_Charset_constructor()V|Ljava/lang/Exception;').
name_ref(m_same_encoding__charset_encoder_constructor_28, method, 'sameEncoding_CharsetEncoder_constructor', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.sameEncoding_CharsetEncoder_constructor()V|Ljava/lang/Exception;').
name_ref(m_same_encoding_null__charset_constructor_29, method, 'sameEncoding_null_Charset_constructor', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.sameEncoding_null_Charset_constructor()V|Ljava/lang/Exception;').
name_ref(m_same_encoding_string__charset_constructor_30, method, 'sameEncoding_string_Charset_constructor', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.sameEncoding_string_Charset_constructor()V|Ljava/lang/Exception;').
name_ref(m_same_encoding_string__charset_encoder_constructor_31, method, 'sameEncoding_string_CharsetEncoder_constructor', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.sameEncoding_string_CharsetEncoder_constructor()V|Ljava/lang/Exception;').
name_ref(m_same_encoding_string_constructor_32, method, 'sameEncoding_string_constructor', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.sameEncoding_string_constructor()V|Ljava/lang/Exception;').
name_ref(m_same_encoding_string_string_constructor_33, method, 'sameEncoding_string_string_constructor', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.sameEncoding_string_string_constructor()V|Ljava/lang/Exception;').
name_ref(m_set_up_34, method, 'setUp', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.setUp()V|Ljava/lang/Exception;').
name_ref(m_string_41, method, 'String', 'Ljava/lang/String;.([C)V').
name_ref(m_successful_run_42, method, 'successfulRun', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.successfulRun(Lorg/apache/commons/io/output/FileWriterWithEncoding;)V|Ljava/lang/Exception;').
name_ref(m_test_different_encoding_43, method, 'testDifferentEncoding', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.testDifferentEncoding()V|Ljava/lang/Exception;').
name_ref(m_to_char_array_40, method, 'toCharArray', 'Ljava/lang/String;.toCharArray()[C').
name_ref(m_to_path_38, method, 'toPath', 'Ljava/io/File;.toPath()Ljava/nio/file/Path;').
name_ref(m_write_15, method, 'write', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write(I)V|Ljava/io/IOException;').
name_ref(m_write_16, method, 'write', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write([C)V|Ljava/io/IOException;').
name_ref(m_write_17, method, 'write', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write([CII)V|Ljava/io/IOException;').
name_ref(m_write_18, method, 'write', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write(Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_19, method, 'write', 'Lorg/apache/commons/io/output/FileWriterWithEncoding;.write(Ljava/lang/String;II)V|Ljava/io/IOException;').
name_ref(m_write_test_payload_44, method, 'writeTestPayload', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.writeTestPayload(Ljava/io/FileWriter;Lorg/apache/commons/io/output/FileWriterWithEncoding;)V|Ljava/io/IOException;').
name_ref(q_length_1, q_name, 'arr.length', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.setUp()V|Ljava/lang/Exception;#arr:.length)I').
name_ref(q_length_2, q_name, 'chars.length', 'Lorg/apache/commons/io/output/FileWriterWithEncodingTest;.setUp()V|Ljava/lang/Exception;#chars:.length)I').

%%% End of Code Facts

