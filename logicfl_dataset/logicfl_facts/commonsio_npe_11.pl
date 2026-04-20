%%% Logic-FL Facts
:- style_check(-discontiguous).

%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
param(p_charset_encoder_1, 1, m_check_min_buffer_size_1).
param(p_buffer_size_2, 2, m_check_min_buffer_size_1).
assign(v_min_required_3, reader_input_stream_1_expr1, line(reader_input_stream_1, 85)).
method_invoc(reader_input_stream_1_expr1, m_min_buffer_size_2, line(reader_input_stream_1, 85)).
throw(reader_input_stream_1_expr1, null_pointer_exception, line(reader_input_stream_1, 85)).
argument(p_charset_encoder_1, 1, reader_input_stream_1_expr1).
param(p_charset_encoder_4, 1, m_min_buffer_size_2).
return(reader_input_stream_1_expr2, m_min_buffer_size_2, line(reader_input_stream_1, 94)).
method_invoc(reader_input_stream_1_expr3, m_max_bytes_per_char_3, line(reader_input_stream_1, 94)).
ref(p_charset_encoder_4, reader_input_stream_1_expr3, line(reader_input_stream_1, 94)).
param(p_reader_5, 1, m_reader_input_stream_4).
param(p_reader_6, 1, m_reader_input_stream_5).
param(p_charset_7, 2, m_reader_input_stream_5).
param(p_reader_8, 1, m_reader_input_stream_6).
param(p_charset_9, 2, m_reader_input_stream_6).
param(p_buffer_size_10, 3, m_reader_input_stream_6).
method_invoc(reader_input_stream_1_expr4, m_reader_input_stream_7, line(reader_input_stream_1, 148)).
argument(p_reader_8, 1, reader_input_stream_1_expr4).
argument(reader_input_stream_1_expr5, 2, reader_input_stream_1_expr4).
argument(p_buffer_size_10, 3, reader_input_stream_1_expr4).
method_invoc(reader_input_stream_1_expr5, m_on_unmappable_character_8, line(reader_input_stream_1, 149)).
argument(q_replace_1, 1, reader_input_stream_1_expr5).
ref(reader_input_stream_1_expr6, reader_input_stream_1_expr5, line(reader_input_stream_1, 149)).
method_invoc(reader_input_stream_1_expr6, m_on_malformed_input_9, line(reader_input_stream_1, 149)).
argument(q_replace_2, 1, reader_input_stream_1_expr6).
ref(reader_input_stream_1_expr7, reader_input_stream_1_expr6, line(reader_input_stream_1, 149)).
method_invoc(reader_input_stream_1_expr7, m_new_encoder_10, line(reader_input_stream_1, 149)).
ref(p_charset_9, reader_input_stream_1_expr7, line(reader_input_stream_1, 149)).
param(p_reader_11, 1, m_reader_input_stream_11).
param(p_charset_encoder_12, 2, m_reader_input_stream_11).
param(p_reader_13, 1, m_reader_input_stream_7).
param(p_charset_encoder_14, 2, m_reader_input_stream_7).
param(p_buffer_size_15, 3, m_reader_input_stream_7).
assign(f_reader_16, p_reader_13, line(reader_input_stream_1, 176)).
assign(f_charset_encoder_17, p_charset_encoder_14, line(reader_input_stream_1, 177)).
assign(f_encoder_in_18, reader_input_stream_1_expr16, line(reader_input_stream_1, 178)).
method_invoc(reader_input_stream_1_expr16, m_allocate_12, line(reader_input_stream_1, 178)).
argument(reader_input_stream_1_expr18, 1, reader_input_stream_1_expr16).
ref(t_char_buffer_1, reader_input_stream_1_expr16, line(reader_input_stream_1, 178)).
method_invoc(reader_input_stream_1_expr18, m_check_min_buffer_size_1, line(reader_input_stream_1, 178)).
argument(p_charset_encoder_14, 1, reader_input_stream_1_expr18).
argument(p_buffer_size_15, 2, reader_input_stream_1_expr18).
param(p_reader_19, 1, m_reader_input_stream_13).
param(p_charset_name_20, 2, m_reader_input_stream_13).
param(p_reader_21, 1, m_reader_input_stream_14).
param(p_charset_name_22, 2, m_reader_input_stream_14).
param(p_buffer_size_23, 3, m_reader_input_stream_14).
throw(m_close_15, ioexception).
throw(m_fill_buffer_16, ioexception).
throw(m_read_17, ioexception).
param(p_b_24, 1, m_read_18).
throw(m_read_18, ioexception).
param(p_array_25, 1, m_read_19).
param(p_off_26, 2, m_read_19).
param(p_len_27, 3, m_read_19).
throw(m_read_19, ioexception).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.input.ReaderInputStreamTest', 'testConstructNullCharsetEncoder').
trace(trace_1, failure_1, m_min_buffer_size_2, line(reader_input_stream_1, 94), failure_1, target).
trace(trace_2, trace_1, m_check_min_buffer_size_1, line(reader_input_stream_1, 85), failure_1, target).
trace(trace_3, trace_2, m_reader_input_stream_7, line(reader_input_stream_1, 178), failure_1, target).
trace(trace_4, trace_3, 'testConstructNullCharsetEncoder', line(org_apache_commons_io_input_reader_input_stream_test, 128), failure_1, target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_7, trace_6, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_1, non_target).
trace(trace_8, trace_7, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_1, non_target).
trace(trace_9, trace_8, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_1, non_target).
trace(trace_10, trace_9, 'proceed', line(org_junit_jupiter_engine_extension_same_thread_timeout_invocation, 45), failure_1, non_target).
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
test_failure(failure_2, 'org.apache.commons.io.input.ReaderInputStreamTest', 'testConstructNullCharset').
trace(trace_68, failure_2, m_reader_input_stream_6, line(reader_input_stream_1, 149), failure_2, target).
trace(trace_69, trace_68, 'testConstructNullCharset', line(org_apache_commons_io_input_reader_input_stream_test, 139), failure_2, target).
trace(trace_70, trace_69, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_2, non_target).
trace(trace_71, trace_70, 'invoke', line(java_lang_reflect_method, 578), failure_2, non_target).
trace(trace_72, trace_71, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_2, non_target).
trace(trace_73, trace_72, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_2, non_target).
trace(trace_74, trace_73, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_2, non_target).
trace(trace_75, trace_74, 'proceed', line(org_junit_jupiter_engine_extension_same_thread_timeout_invocation, 45), failure_2, non_target).
trace(trace_76, trace_75, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_2, non_target).
trace(trace_77, trace_76, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_2, non_target).
trace(trace_78, trace_77, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_2, non_target).
trace(trace_79, trace_78, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_2, non_target).
trace(trace_80, trace_79, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_2, non_target).
trace(trace_81, trace_80, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_2, non_target).
trace(trace_82, trace_81, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_2, non_target).
trace(trace_83, trace_82, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_2, non_target).
trace(trace_84, trace_83, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_2, non_target).
trace(trace_85, trace_84, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_2, non_target).
trace(trace_86, trace_85, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_2, non_target).
trace(trace_87, trace_86, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_2, non_target).
trace(trace_88, trace_87, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_89, trace_88, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_2, non_target).
trace(trace_90, trace_89, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_2, non_target).
trace(trace_91, trace_90, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_2, non_target).
trace(trace_92, trace_91, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_2, non_target).
trace(trace_93, trace_92, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_94, trace_93, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_2, non_target).
trace(trace_95, trace_94, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_2, non_target).
trace(trace_96, trace_95, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_2, non_target).
trace(trace_97, trace_96, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_98, trace_97, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_2, non_target).
trace(trace_99, trace_98, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_2, non_target).
trace(trace_100, trace_99, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).
trace(trace_101, trace_100, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_2, non_target).
trace(trace_102, trace_101, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_2, non_target).
trace(trace_103, trace_102, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_104, trace_103, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_2, non_target).
trace(trace_105, trace_104, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_2, non_target).
trace(trace_106, trace_105, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_2, non_target).
trace(trace_107, trace_106, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_108, trace_107, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_2, non_target).
trace(trace_109, trace_108, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_2, non_target).
trace(trace_110, trace_109, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).
trace(trace_111, trace_110, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_2, non_target).
trace(trace_112, trace_111, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_2, non_target).
trace(trace_113, trace_112, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_114, trace_113, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_2, non_target).
trace(trace_115, trace_114, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_2, non_target).
trace(trace_116, trace_115, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_2, non_target).
trace(trace_117, trace_116, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_118, trace_117, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_2, non_target).
trace(trace_119, trace_118, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_2, non_target).
trace(trace_120, trace_119, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_2, non_target).
trace(trace_121, trace_120, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_2, non_target).
trace(trace_122, trace_121, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_2, non_target).
trace(trace_123, trace_122, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_2, non_target).
trace(trace_124, trace_123, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_2, non_target).
trace(trace_125, trace_124, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_2, non_target).
trace(trace_126, trace_125, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_2, non_target).
trace(trace_127, trace_126, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_2, non_target).
trace(trace_128, trace_127, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_2, non_target).
trace(trace_129, trace_128, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_2, non_target).
trace(trace_130, trace_129, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_2, non_target).
trace(trace_131, trace_130, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_2, non_target).
trace(trace_132, trace_131, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(p_charset_encoder_1, null, line(reader_input_stream_1, 85)).
val(p_charset_encoder_4, null, line(reader_input_stream_1, 94)).
val(p_charset_9, null, line(reader_input_stream_1, 149)).
val(p_charset_encoder_14, null, line(reader_input_stream_1, 177)).
val(p_charset_encoder_14, null, line(reader_input_stream_1, 178)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(reader_input_stream_1, 'org.apache.commons.io.input.ReaderInputStream').

%%% Methods
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
method(m_check_min_buffer_size_1, range(reader_input_stream_1, 4311, 447, 84, 91)).
method(m_min_buffer_size_2, range(reader_input_stream_1, 4764, 124, 93, 95)).
method(m_reader_input_stream_4, range(reader_input_stream_1, 5487, 442, 116, 126)).
method(m_reader_input_stream_5, range(reader_input_stream_1, 5935, 376, 128, 137)).
method(m_reader_input_stream_6, range(reader_input_stream_1, 6317, 611, 139, 154)).
method(m_reader_input_stream_11, range(reader_input_stream_1, 6934, 337, 156, 165)).
method(m_reader_input_stream_7, range(reader_input_stream_1, 7277, 663, 167, 182)).
method(m_reader_input_stream_13, range(reader_input_stream_1, 7946, 399, 184, 193)).
method(m_reader_input_stream_14, range(reader_input_stream_1, 8351, 423, 195, 204)).
method(m_close_15, range(reader_input_stream_1, 8780, 250, 206, 214)).
method(m_fill_buffer_16, range(reader_input_stream_1, 9036, 1205, 216, 245)).
method(m_read_17, range(reader_input_stream_1, 10247, 515, 247, 264)).
method(m_read_18, range(reader_input_stream_1, 10768, 380, 266, 276)).
method(m_read_19, range(reader_input_stream_1, 11154, 1372, 278, 311)).

%%% Blocks
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
block(reader_input_stream_1_block1, block, reader_input_stream_1_code3, body, range(reader_input_stream_1, 4400, 358, 84, 91)).
block(reader_input_stream_1_block2, block, reader_input_stream_1_code7, body, range(reader_input_stream_1, 4828, 60, 93, 95)).
block(reader_input_stream_1_block3, block, reader_input_stream_1_code8, body, range(reader_input_stream_1, 6653, 275, 146, 154)).
block(reader_input_stream_1_block4, block, reader_input_stream_1_code9, body, range(reader_input_stream_1, 7648, 292, 175, 182)).

%%% Statements
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
stmt(reader_input_stream_1_stmt1, variable_declaration_statement, reader_input_stream_1_block1, (statements, 0), range(reader_input_stream_1, 4410, 56, 85, 85)).
stmt(reader_input_stream_1_stmt2, return_statement, reader_input_stream_1_block2, (statements, 0), range(reader_input_stream_1, 4838, 44, 94, 94)).
stmt(reader_input_stream_1_stmt3, constructor_invocation, reader_input_stream_1_block3, (statements, 0), range(reader_input_stream_1, 6689, 208, 148, 152)).
stmt(reader_input_stream_1_stmt4, expression_statement, reader_input_stream_1_block4, (statements, 0), range(reader_input_stream_1, 7658, 21, 176, 176)).
stmt(reader_input_stream_1_stmt5, expression_statement, reader_input_stream_1_block4, (statements, 1), range(reader_input_stream_1, 7688, 37, 177, 177)).
stmt(reader_input_stream_1_stmt6, expression_statement, reader_input_stream_1_block4, (statements, 2), range(reader_input_stream_1, 7734, 85, 178, 178)).

%%% Expressions
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
expr(reader_input_stream_1_expr1, method_invocation, reader_input_stream_1_code6, initializer, range(reader_input_stream_1, 4436, 29, 85, 85), "minBufferSize(charsetEncoder)").
expr(reader_input_stream_1_expr2, infix_expression, reader_input_stream_1_stmt2, expression, range(reader_input_stream_1, 4845, 36, 94, 94), "charsetEncoder.maxBytesPerChar() * 2").
expr(reader_input_stream_1_expr3, method_invocation, reader_input_stream_1_expr2, left_operand, range(reader_input_stream_1, 4845, 32, 94, 94), "charsetEncoder.maxBytesPerChar()").
expr(reader_input_stream_1_expr4, constructor_invocation, reader_input_stream_1_block3, (statements, 0), range(reader_input_stream_1, 6689, 208, 148, 152), "this(reader,charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE),bufferSize);").
expr(reader_input_stream_1_expr6, method_invocation, reader_input_stream_1_expr5, expression, range(reader_input_stream_1, 6715, 85, 149, 150), "charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE)").
expr(reader_input_stream_1_expr5, method_invocation, reader_input_stream_1_stmt3, (arguments, 1), range(reader_input_stream_1, 6715, 155, 149, 151), "charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE)").
expr(reader_input_stream_1_expr7, method_invocation, reader_input_stream_1_expr6, expression, range(reader_input_stream_1, 6715, 20, 149, 149), "charset.newEncoder()").
expr(reader_input_stream_1_expr8, assignment, reader_input_stream_1_stmt4, expression, range(reader_input_stream_1, 7658, 20, 176, 176), "this.reader=reader").
expr(reader_input_stream_1_expr10, this_expression, f_reader_16, expression, range(reader_input_stream_1, 7658, 4, 176, 176), "this").
expr(reader_input_stream_1_expr9, field_access, reader_input_stream_1_expr8, left_hand_side, range(reader_input_stream_1, 7658, 11, 176, 176), "this.reader").
expr(reader_input_stream_1_expr13, this_expression, f_charset_encoder_17, expression, range(reader_input_stream_1, 7688, 4, 177, 177), "this").
expr(reader_input_stream_1_expr12, field_access, reader_input_stream_1_expr11, left_hand_side, range(reader_input_stream_1, 7688, 19, 177, 177), "this.charsetEncoder").
expr(reader_input_stream_1_expr11, assignment, reader_input_stream_1_stmt5, expression, range(reader_input_stream_1, 7688, 36, 177, 177), "this.charsetEncoder=charsetEncoder").
expr(reader_input_stream_1_expr17, this_expression, f_encoder_in_18, expression, range(reader_input_stream_1, 7734, 4, 178, 178), "this").
expr(reader_input_stream_1_expr15, field_access, reader_input_stream_1_expr14, left_hand_side, range(reader_input_stream_1, 7734, 14, 178, 178), "this.encoderIn").
expr(reader_input_stream_1_expr14, assignment, reader_input_stream_1_stmt6, expression, range(reader_input_stream_1, 7734, 84, 178, 178), "this.encoderIn=CharBuffer.allocate(checkMinBufferSize(charsetEncoder,bufferSize))").
expr(reader_input_stream_1_expr16, method_invocation, reader_input_stream_1_expr14, right_hand_side, range(reader_input_stream_1, 7751, 67, 178, 178), "CharBuffer.allocate(checkMinBufferSize(charsetEncoder,bufferSize))").
expr(reader_input_stream_1_expr18, method_invocation, reader_input_stream_1_expr16, (arguments, 0), range(reader_input_stream_1, 7771, 46, 178, 178), "checkMinBufferSize(charsetEncoder,bufferSize)").

%%% Names
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
name(v_min_required_3, simple_name, reader_input_stream_1_code6, name, range(reader_input_stream_1, 4422, 11, 85, 85), 'minRequired').
name(m_min_buffer_size_2, simple_name, reader_input_stream_1_expr1, name, range(reader_input_stream_1, 4436, 13, 85, 85), 'minBufferSize').
name(p_charset_encoder_1, simple_name, reader_input_stream_1_expr1, (arguments, 0), range(reader_input_stream_1, 4450, 14, 85, 85), 'charsetEncoder').
name(p_charset_encoder_4, simple_name, reader_input_stream_1_expr3, expression, range(reader_input_stream_1, 4845, 14, 94, 94), 'charsetEncoder').
name(m_max_bytes_per_char_3, simple_name, reader_input_stream_1_expr3, name, range(reader_input_stream_1, 4860, 15, 94, 94), 'maxBytesPerChar').
name(p_reader_8, simple_name, reader_input_stream_1_stmt3, (arguments, 0), range(reader_input_stream_1, 6694, 6, 148, 148), 'reader').
name(p_charset_9, simple_name, reader_input_stream_1_expr7, expression, range(reader_input_stream_1, 6715, 7, 149, 149), 'charset').
name(m_new_encoder_10, simple_name, reader_input_stream_1_expr7, name, range(reader_input_stream_1, 6723, 10, 149, 149), 'newEncoder').
name(q_replace_2, qualified_name, reader_input_stream_1_expr6, (arguments, 0), range(reader_input_stream_1, 6774, 25, 150, 150), 'CodingErrorAction.REPLACE').
name(q_replace_1, qualified_name, reader_input_stream_1_expr5, (arguments, 0), range(reader_input_stream_1, 6844, 25, 151, 151), 'CodingErrorAction.REPLACE').
name(p_buffer_size_10, simple_name, reader_input_stream_1_stmt3, (arguments, 2), range(reader_input_stream_1, 6885, 10, 152, 152), 'bufferSize').
name(m_reader_input_stream_7, simple_name, reader_input_stream_1_code9, name, range(reader_input_stream_1, 7550, 17, 175, 175), 'ReaderInputStream').
name(p_reader_13, simple_name, reader_input_stream_1_code11, name, range(reader_input_stream_1, 7581, 6, 175, 175), 'reader').
name(p_charset_encoder_14, simple_name, reader_input_stream_1_code14, name, range(reader_input_stream_1, 7610, 14, 175, 175), 'charsetEncoder').
name(p_buffer_size_15, simple_name, reader_input_stream_1_code17, name, range(reader_input_stream_1, 7636, 10, 175, 175), 'bufferSize').
name(f_reader_16, simple_name, reader_input_stream_1_expr9, name, range(reader_input_stream_1, 7663, 6, 176, 176), 'reader').
name(p_reader_13, simple_name, reader_input_stream_1_expr8, right_hand_side, range(reader_input_stream_1, 7672, 6, 176, 176), 'reader').
name(f_charset_encoder_17, simple_name, reader_input_stream_1_expr12, name, range(reader_input_stream_1, 7693, 14, 177, 177), 'charsetEncoder').
name(p_charset_encoder_14, simple_name, reader_input_stream_1_expr11, right_hand_side, range(reader_input_stream_1, 7710, 14, 177, 177), 'charsetEncoder').
name(f_encoder_in_18, simple_name, reader_input_stream_1_expr15, name, range(reader_input_stream_1, 7739, 9, 178, 178), 'encoderIn').
name(t_char_buffer_1, simple_name, reader_input_stream_1_expr16, expression, range(reader_input_stream_1, 7751, 10, 178, 178), 'CharBuffer').
name(m_allocate_12, simple_name, reader_input_stream_1_expr16, name, range(reader_input_stream_1, 7762, 8, 178, 178), 'allocate').
name(m_check_min_buffer_size_1, simple_name, reader_input_stream_1_expr18, name, range(reader_input_stream_1, 7771, 18, 178, 178), 'checkMinBufferSize').
name(p_charset_encoder_14, simple_name, reader_input_stream_1_expr18, (arguments, 0), range(reader_input_stream_1, 7790, 14, 178, 178), 'charsetEncoder').
name(p_buffer_size_15, simple_name, reader_input_stream_1_expr18, (arguments, 1), range(reader_input_stream_1, 7806, 10, 178, 178), 'bufferSize').

%%% Literals
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
literal(reader_input_stream_1_literal1, number_literal, reader_input_stream_1_expr2, right_operand, range(reader_input_stream_1, 4880, 1, 94, 94), 2).

%%% Other Code Entities
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
code(reader_input_stream_1_code1, compilation_unit, range(reader_input_stream_1, 0, 12529, 1, -1)).
code(reader_input_stream_1_code2, type_declaration, reader_input_stream_1_code1, (types, 0), range(reader_input_stream_1, 1206, 11322, 32, 312)).
code(reader_input_stream_1_code3, method_declaration, reader_input_stream_1_code2, (body_declarations, 1), range(reader_input_stream_1, 4311, 447, 84, 91)).
code(reader_input_stream_1_code4, modifier, reader_input_stream_1_stmt1, (modifiers, 0), range(reader_input_stream_1, 4410, 5, 85, 85)).
code(reader_input_stream_1_code5, primitive_type, reader_input_stream_1_stmt1, type, range(reader_input_stream_1, 4416, 5, 85, 85)).
code(reader_input_stream_1_code6, variable_declaration_fragment, reader_input_stream_1_stmt1, (fragments, 0), range(reader_input_stream_1, 4422, 43, 85, 85)).
code(reader_input_stream_1_code7, method_declaration, reader_input_stream_1_code2, (body_declarations, 2), range(reader_input_stream_1, 4764, 124, 93, 95)).
code(reader_input_stream_1_code8, method_declaration, reader_input_stream_1_code2, (body_declarations, 11), range(reader_input_stream_1, 6317, 611, 139, 154)).
code(reader_input_stream_1_code9, method_declaration, reader_input_stream_1_code2, (body_declarations, 13), range(reader_input_stream_1, 7277, 663, 167, 182)).
code(reader_input_stream_1_code10, modifier, reader_input_stream_1_code9, (modifiers, 0), range(reader_input_stream_1, 7543, 6, 175, 175)).
code(reader_input_stream_1_code11, single_variable_declaration, reader_input_stream_1_code9, (parameters, 0), range(reader_input_stream_1, 7568, 19, 175, 175)).
code(reader_input_stream_1_code12, modifier, reader_input_stream_1_code11, (modifiers, 0), range(reader_input_stream_1, 7568, 5, 175, 175)).
code(reader_input_stream_1_code13, simple_type, reader_input_stream_1_code11, type, range(reader_input_stream_1, 7574, 6, 175, 175)).
code(reader_input_stream_1_code14, single_variable_declaration, reader_input_stream_1_code9, (parameters, 1), range(reader_input_stream_1, 7589, 35, 175, 175)).
code(reader_input_stream_1_code15, modifier, reader_input_stream_1_code14, (modifiers, 0), range(reader_input_stream_1, 7589, 5, 175, 175)).
code(reader_input_stream_1_code16, simple_type, reader_input_stream_1_code14, type, range(reader_input_stream_1, 7595, 14, 175, 175)).
code(reader_input_stream_1_code17, single_variable_declaration, reader_input_stream_1_code9, (parameters, 2), range(reader_input_stream_1, 7626, 20, 175, 175)).
code(reader_input_stream_1_code18, modifier, reader_input_stream_1_code17, (modifiers, 0), range(reader_input_stream_1, 7626, 5, 175, 175)).
code(reader_input_stream_1_code19, primitive_type, reader_input_stream_1_code17, type, range(reader_input_stream_1, 7632, 3, 175, 175)).

%%% Name References

name_ref(t_char_buffer_1, type, 'CharBuffer', 'Ljava/nio/CharBuffer;').
name_ref(p_charset_9, param, 'charset', 'reader_input_stream_1;charset_line_149').
name_ref(p_reader_8, param, 'reader', 'reader_input_stream_1;reader_line_148').
name_ref(v_min_required_3, var, 'minRequired', 'Lorg/apache/commons/io/input/ReaderInputStream;.checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I#minRequired').
name_ref(p_array_25, param, 'array', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;#array#0#0').
name_ref(p_b_24, param, 'b', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([B)I|Ljava/io/IOException;#b#0#0').
name_ref(p_buffer_size_10, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V#bufferSize#0#2').
name_ref(p_buffer_size_15, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V#bufferSize#0#2').
name_ref(p_buffer_size_2, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I#bufferSize#0#1').
name_ref(p_buffer_size_23, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V#bufferSize#0#2').
name_ref(p_charset_7, param, 'charset', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;)V#charset#0#1').
name_ref(p_charset_9, param, 'charset', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V#charset#0#1').
name_ref(p_charset_encoder_1, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I#charsetEncoder#0#0').
name_ref(p_charset_encoder_12, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V#charsetEncoder#0#1').
name_ref(p_charset_encoder_14, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V#charsetEncoder#0#1').
name_ref(p_charset_encoder_4, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.minBufferSize(Ljava/nio/charset/CharsetEncoder;)F#charsetEncoder#0#0').
name_ref(p_charset_name_20, param, 'charsetName', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;)V#charsetName#0#1').
name_ref(p_charset_name_22, param, 'charsetName', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V#charsetName#0#1').
name_ref(p_len_27, param, 'len', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;#len#0#2').
name_ref(p_off_26, param, 'off', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;#off#0#1').
name_ref(p_reader_11, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V#reader#0#0').
name_ref(p_reader_13, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V#reader#0#0').
name_ref(p_reader_19, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;)V#reader#0#0').
name_ref(p_reader_21, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V#reader#0#0').
name_ref(p_reader_5, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;)V#reader#0#0').
name_ref(p_reader_6, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;)V#reader#0#0').
name_ref(p_reader_8, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V#reader#0#0').
name_ref(f_charset_encoder_17, field, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.charsetEncoder)Ljava/nio/charset/CharsetEncoder;').
name_ref(f_encoder_in_18, field, 'encoderIn', 'Lorg/apache/commons/io/input/ReaderInputStream;.encoderIn)Ljava/nio/CharBuffer;').
name_ref(f_reader_16, field, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.reader)Ljava/io/Reader;').
name_ref(m_allocate_12, method, 'allocate', 'Ljava/nio/CharBuffer;.allocate(I)Ljava/nio/CharBuffer;').
name_ref(m_check_min_buffer_size_1, method, 'checkMinBufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I').
name_ref(m_close_15, method, 'close', 'Lorg/apache/commons/io/input/ReaderInputStream;.close()V|Ljava/io/IOException;').
name_ref(m_fill_buffer_16, method, 'fillBuffer', 'Lorg/apache/commons/io/input/ReaderInputStream;.fillBuffer()V|Ljava/io/IOException;').
name_ref(m_max_bytes_per_char_3, method, 'maxBytesPerChar', 'Ljava/nio/charset/CharsetEncoder;.maxBytesPerChar()F').
name_ref(m_min_buffer_size_2, method, 'minBufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.minBufferSize(Ljava/nio/charset/CharsetEncoder;)F').
name_ref(m_new_encoder_10, method, 'newEncoder', 'Ljava/nio/charset/Charset;.newEncoder()Ljava/nio/charset/CharsetEncoder;').
name_ref(m_on_malformed_input_9, method, 'onMalformedInput', 'Ljava/nio/charset/CharsetEncoder;.onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;').
name_ref(m_on_unmappable_character_8, method, 'onUnmappableCharacter', 'Ljava/nio/charset/CharsetEncoder;.onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;').
name_ref(m_read_17, method, 'read', 'Lorg/apache/commons/io/input/ReaderInputStream;.read()I|Ljava/io/IOException;').
name_ref(m_read_18, method, 'read', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([B)I|Ljava/io/IOException;').
name_ref(m_read_19, method, 'read', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;').
name_ref(m_reader_input_stream_11, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V').
name_ref(m_reader_input_stream_13, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;)V').
name_ref(m_reader_input_stream_14, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V').
name_ref(m_reader_input_stream_4, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;)V').
name_ref(m_reader_input_stream_5, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;)V').
name_ref(m_reader_input_stream_6, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V').
name_ref(m_reader_input_stream_7, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V').
name_ref(q_replace_1, q_name, 'CodingErrorAction.REPLACE', 'Ljava/nio/charset/CodingErrorAction;:Ljava/nio/charset/CodingErrorAction;.REPLACE)Ljava/nio/charset/CodingErrorAction;').

%%% End of Code Facts

