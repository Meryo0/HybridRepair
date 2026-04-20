%%% Logic-FL Facts
:- style_check(-discontiguous).

%streams_1 - org.apache.commons.lang3.stream.Streams
param(p_element_type_1, 1, m_array_collector_1).
param(p_stream_2, 1, m_failable_stream_7).
param(p_predicate_3, 1, m_all_match_8).
param(p_predicate_4, 1, m_any_match_9).
param(p_collector_5, 1, m_collect_11).
param(p_pupplier_6, 1, m_collect_12).
param(p_accumulator_7, 2, m_collect_12).
param(p_combiner_8, 3, m_collect_12).
param(p_predicate_9, 1, m_filter_13).
param(p_action_10, 1, m_for_each_14).
param(p_mapper_11, 1, m_map_16).
param(p_identity_12, 1, m_reduce_17).
param(p_accumulator_13, 2, m_reduce_17).
param(p_values_14, 1, m_of_19).
param(p_stream_15, 1, m_stream_20).
return(streams_1_expr1, m_stream_20, line(streams_1, 479)).
method_invoc(streams_1_expr1, m_stream_21, line(streams_1, 479)).
argument(streams_1_expr2, 1, streams_1_expr1).
method_invoc(streams_1_expr2, m_stream_22, line(streams_1, 479)).
ref(p_stream_15, streams_1_expr2, line(streams_1, 479)).
param(p_stream_16, 1, m_stream_21).
param(p_p_element_type_17, 1, m_to_array_23).

%streams_test_1 - org.apache.commons.lang3.stream.StreamsTest
param(p_p_throwable_18, 1, m_as_int_consumer_24).
param(p_p_throwable_19, 1, m_as_int_predicate_25).
param(p_output_20, 1, m_assert_even_numbers_26).
assign(v_input_21, streams_test_1_literal1, line(streams_test_1, 153)).
method_invoc(streams_test_1_expr1, m_assert_equals_32, line(streams_test_1, 154)).
argument(streams_test_1_literal2, 1, streams_test_1_expr1).
argument(streams_test_1_expr2, 2, streams_test_1_expr1).
method_invoc(streams_test_1_expr2, m_size_33, line(streams_test_1, 154)).
ref(streams_test_1_expr3, streams_test_1_expr2, line(streams_test_1, 154)).
method_invoc(streams_test_1_expr3, m_collect_11, line(streams_test_1, 154)).
argument(streams_test_1_expr4, 1, streams_test_1_expr3).
ref(streams_test_1_expr5, streams_test_1_expr3, line(streams_test_1, 154)).
method_invoc(streams_test_1_expr5, m_stream_20, line(streams_test_1, 154)).
throw(streams_test_1_expr5, null_pointer_exception, line(streams_test_1, 154)).
argument(v_input_21, 1, streams_test_1_expr5).
ref(t_streams_2, streams_test_1_expr5, line(streams_test_1, 154)).
method_invoc(streams_test_1_expr4, m_to_list_34, line(streams_test_1, 154)).
ref(t_collectors_3, streams_test_1_expr4, line(streams_test_1, 154)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang3.stream.StreamsTest', 'testStreamCollectionNull').
trace(trace_1, failure_1, m_stream_20, line(streams_1, 479), failure_1, target).
trace(trace_2, trace_1, m_test_stream_collection_null_31, line(streams_test_1, 154), failure_1, target).
trace(trace_3, trace_2, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_4, trace_3, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_5, trace_4, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_1, non_target).
trace(trace_6, trace_5, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_1, non_target).
trace(trace_7, trace_6, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_1, non_target).
trace(trace_8, trace_7, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_1, non_target).
trace(trace_9, trace_8, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_1, non_target).
trace(trace_10, trace_9, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_1, non_target).
trace(trace_11, trace_10, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_1, non_target).
trace(trace_12, trace_11, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_1, non_target).
trace(trace_13, trace_12, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_1, non_target).
trace(trace_14, trace_13, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_1, non_target).
trace(trace_15, trace_14, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_1, non_target).
trace(trace_16, trace_15, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_1, non_target).
trace(trace_17, trace_16, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_1, non_target).
trace(trace_18, trace_17, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_1, non_target).
trace(trace_19, trace_18, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_1, non_target).
trace(trace_20, trace_19, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_21, trace_20, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_1, non_target).
trace(trace_22, trace_21, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_1, non_target).
trace(trace_23, trace_22, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_1, non_target).
trace(trace_24, trace_23, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_1, non_target).
trace(trace_25, trace_24, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_26, trace_25, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_27, trace_26, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_28, trace_27, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_29, trace_28, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_30, trace_29, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_31, trace_30, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_32, trace_31, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_33, trace_32, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_34, trace_33, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_35, trace_34, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_36, trace_35, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_37, trace_36, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_38, trace_37, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_39, trace_38, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_40, trace_39, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_41, trace_40, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_42, trace_41, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_43, trace_42, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_44, trace_43, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_45, trace_44, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_46, trace_45, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_47, trace_46, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_48, trace_47, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_49, trace_48, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_50, trace_49, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_51, trace_50, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_52, trace_51, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_1, non_target).
trace(trace_53, trace_52, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_1, non_target).
trace(trace_54, trace_53, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_1, non_target).
trace(trace_55, trace_54, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_1, non_target).
trace(trace_56, trace_55, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_1, non_target).
trace(trace_57, trace_56, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_1, non_target).
trace(trace_58, trace_57, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_1, non_target).
trace(trace_59, trace_58, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_1, non_target).
trace(trace_60, trace_59, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_1, non_target).
trace(trace_61, trace_60, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_1, non_target).
trace(trace_62, trace_61, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_1, non_target).
trace(trace_63, trace_62, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_1, non_target).
trace(trace_64, trace_63, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_stream_15, null, line(streams_1, 479)).
val(v_input_21, null, line(streams_test_1, 154)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(streams_1, 'org.apache.commons.lang3.stream.Streams').
class(streams_test_1, 'org.apache.commons.lang3.stream.StreamsTest').

%%% Methods
%streams_1 - org.apache.commons.lang3.stream.Streams
method(m_array_collector_1, range(streams_1, 2907, 253, 78, 85)).
method(m_accumulator_2, range(streams_1, 3170, 103, 87, 90)).
method(m_characteristics_3, range(streams_1, 3283, 111, 92, 95)).
method(m_combiner_4, range(streams_1, 3404, 189, 97, 103)).
method(m_finisher_5, range(streams_1, 3603, 161, 105, 108)).
method(m_supplier_6, range(streams_1, 3774, 100, 110, 113)).
method(m_failable_stream_7, range(streams_1, 4182, 231, 126, 133)).
method(m_all_match_8, range(streams_1, 4423, 1169, 135, 154)).
method(m_any_match_9, range(streams_1, 5602, 977, 156, 173)).
method(m_assert_not_terminated_10, range(streams_1, 6589, 371, 175, 184)).
method(m_collect_11, range(streams_1, 6970, 2680, 186, 244)).
method(m_collect_12, range(streams_1, 9660, 2656, 246, 302)).
method(m_filter_13, range(streams_1, 12326, 621, 304, 318)).
method(m_for_each_14, range(streams_1, 12957, 930, 320, 338)).
method(m_make_terminated_15, range(streams_1, 13897, 267, 340, 348)).
method(m_map_16, range(streams_1, 14174, 604, 350, 363)).
method(m_reduce_17, range(streams_1, 14788, 2137, 365, 417)).
method(m_stream_18, range(streams_1, 16935, 271, 419, 426)).
method(m_of_19, range(streams_1, 17218, 482, 429, 440)).
method(m_stream_20, range(streams_1, 17706, 1769, 442, 480)).
method(m_stream_21, range(streams_1, 19481, 1773, 482, 520)).
method(m_to_array_23, range(streams_1, 21260, 477, 522, 531)).
%streams_test_1 - org.apache.commons.lang3.stream.StreamsTest
method(m_as_int_consumer_24, range(streams_test_1, 1945, 255, 47, 54)).
method(m_as_int_predicate_25, range(streams_test_1, 2206, 275, 56, 63)).
method(m_assert_even_numbers_26, range(streams_test_1, 2487, 219, 65, 70)).
method(m_simple_stream_filter_failing_27, range(streams_test_1, 2712, 2019, 72, 106)).
method(m_simple_stream_for_each_failing_28, range(streams_test_1, 4737, 1595, 108, 136)).
method(m_test_of_array_29, range(streams_test_1, 6338, 216, 138, 143)).
method(m_test_stream_collection_30, range(streams_test_1, 6560, 216, 145, 149)).
method(m_test_stream_collection_null_31, range(streams_test_1, 6782, 181, 151, 155)).
method(m_test_simple_stream_filter_35, range(streams_test_1, 6969, 331, 157, 163)).
method(m_test_simple_stream_for_each_36, range(streams_test_1, 7306, 415, 165, 174)).
method(m_test_simple_stream_map_37, range(streams_test_1, 7727, 390, 176, 184)).
method(m_test_simple_stream_map_failing_38, range(streams_test_1, 8123, 429, 186, 192)).
method(m_test_to_array_39, range(streams_test_1, 8558, 332, 194, 202)).

%%% Blocks
%streams_1 - org.apache.commons.lang3.stream.Streams
block(streams_1_block1, block, streams_1_code3, body, range(streams_1, 19428, 47, 478, 480)).
%streams_test_1 - org.apache.commons.lang3.stream.StreamsTest
block(streams_test_1_block1, block, streams_test_1_code4, body, range(streams_test_1, 6831, 132, 152, 155)).

%%% Statements
%streams_1 - org.apache.commons.lang3.stream.Streams
stmt(streams_1_stmt1, return_statement, streams_1_block1, (statements, 0), range(streams_1, 19438, 31, 479, 479)).
%streams_test_1 - org.apache.commons.lang3.stream.StreamsTest
stmt(streams_test_1_stmt1, variable_declaration_statement, streams_test_1_block1, (statements, 0), range(streams_test_1, 6841, 32, 153, 153)).
stmt(streams_test_1_stmt2, expression_statement, streams_test_1_block1, (statements, 1), range(streams_test_1, 6882, 75, 154, 154)).

%%% Expressions
%streams_1 - org.apache.commons.lang3.stream.Streams
expr(streams_1_expr1, method_invocation, streams_1_stmt1, expression, range(streams_1, 19445, 23, 479, 479), "stream(stream.stream())").
expr(streams_1_expr2, method_invocation, streams_1_expr1, (arguments, 0), range(streams_1, 19452, 15, 479, 479), "stream.stream()").
%streams_test_1 - org.apache.commons.lang3.stream.StreamsTest
expr(streams_test_1_expr1, method_invocation, streams_test_1_stmt2, expression, range(streams_test_1, 6882, 74, 154, 154), "assertEquals(0,Streams.stream(input).collect(Collectors.toList()).size())").
expr(streams_test_1_expr5, method_invocation, streams_test_1_expr3, expression, range(streams_test_1, 6898, 21, 154, 154), "Streams.stream(input)").
expr(streams_test_1_expr3, method_invocation, streams_test_1_expr2, expression, range(streams_test_1, 6898, 50, 154, 154), "Streams.stream(input).collect(Collectors.toList())").
expr(streams_test_1_expr2, method_invocation, streams_test_1_expr1, (arguments, 1), range(streams_test_1, 6898, 57, 154, 154), "Streams.stream(input).collect(Collectors.toList()).size()").
expr(streams_test_1_expr4, method_invocation, streams_test_1_expr3, (arguments, 0), range(streams_test_1, 6928, 19, 154, 154), "Collectors.toList()").

%%% Names
%streams_1 - org.apache.commons.lang3.stream.Streams
name(m_stream_21, simple_name, streams_1_expr1, name, range(streams_1, 19445, 6, 479, 479), 'stream').
name(p_stream_15, simple_name, streams_1_expr2, expression, range(streams_1, 19452, 6, 479, 479), 'stream').
name(m_stream_22, simple_name, streams_1_expr2, name, range(streams_1, 19459, 6, 479, 479), 'stream').
%streams_test_1 - org.apache.commons.lang3.stream.StreamsTest
name(t_streams_test_1, simple_name, streams_test_1_code2, name, range(streams_test_1, 1926, 11, 45, 45), 'StreamsTest').
name(v_input_21, simple_name, streams_test_1_code9, name, range(streams_test_1, 6860, 5, 153, 153), 'input').
name(m_assert_equals_32, simple_name, streams_test_1_expr1, name, range(streams_test_1, 6882, 12, 154, 154), 'assertEquals').
name(t_streams_2, simple_name, streams_test_1_expr5, expression, range(streams_test_1, 6898, 7, 154, 154), 'Streams').
name(m_stream_20, simple_name, streams_test_1_expr5, name, range(streams_test_1, 6906, 6, 154, 154), 'stream').
name(v_input_21, simple_name, streams_test_1_expr5, (arguments, 0), range(streams_test_1, 6913, 5, 154, 154), 'input').
name(m_collect_11, simple_name, streams_test_1_expr3, name, range(streams_test_1, 6920, 7, 154, 154), 'collect').
name(t_collectors_3, simple_name, streams_test_1_expr4, expression, range(streams_test_1, 6928, 10, 154, 154), 'Collectors').
name(m_to_list_34, simple_name, streams_test_1_expr4, name, range(streams_test_1, 6939, 6, 154, 154), 'toList').
name(m_size_33, simple_name, streams_test_1_expr2, name, range(streams_test_1, 6949, 4, 154, 154), 'size').

%%% Literals
%streams_1 - org.apache.commons.lang3.stream.Streams
%streams_test_1 - org.apache.commons.lang3.stream.StreamsTest
literal(streams_test_1_literal1, null_literal, streams_test_1_code9, initializer, range(streams_test_1, 6868, 4, 153, 153), null).
literal(streams_test_1_literal2, number_literal, streams_test_1_expr1, (arguments, 0), range(streams_test_1, 6895, 1, 154, 154), 0).

%%% Other Code Entities
%streams_1 - org.apache.commons.lang3.stream.Streams
code(streams_1_code1, compilation_unit, range(streams_1, 0, 21740, 1, -1)).
code(streams_1_code2, type_declaration, streams_1_code1, (types, 0), range(streams_1, 1580, 20159, 40, 532)).
code(streams_1_code3, method_declaration, streams_1_code2, (body_declarations, 3), range(streams_1, 17706, 1769, 442, 480)).
%streams_test_1 - org.apache.commons.lang3.stream.StreamsTest
code(streams_test_1_code1, compilation_unit, range(streams_test_1, 0, 8894, 1, -1)).
code(streams_test_1_code3, modifier, streams_test_1_code2, (modifiers, 0), range(streams_test_1, 1913, 6, 45, 45)).
code(streams_test_1_code2, type_declaration, streams_test_1_code1, (types, 0), range(streams_test_1, 1913, 6980, 45, 204)).
code(streams_test_1_code4, method_declaration, streams_test_1_code2, (body_declarations, 7), range(streams_test_1, 6782, 181, 151, 155)).
code(streams_test_1_code5, modifier, streams_test_1_stmt1, (modifiers, 0), range(streams_test_1, 6841, 5, 153, 153)).
code(streams_test_1_code7, simple_type, streams_test_1_code6, type, range(streams_test_1, 6847, 4, 153, 153)).
code(streams_test_1_code6, parameterized_type, streams_test_1_stmt1, type, range(streams_test_1, 6847, 12, 153, 153)).
code(streams_test_1_code8, simple_type, streams_test_1_code6, (type_arguments, 0), range(streams_test_1, 6852, 6, 153, 153)).
code(streams_test_1_code9, variable_declaration_fragment, streams_test_1_stmt1, (fragments, 0), range(streams_test_1, 6860, 12, 153, 153)).

%%% Name References

name_ref(t_collectors_3, type, 'Collectors', 'Ljava/util/stream/Collectors;').
name_ref(t_streams_2, type, 'Streams', 'Lorg/apache/commons/lang3/stream/Streams;').
name_ref(t_streams_test_1, type, 'StreamsTest', 'Lorg/apache/commons/lang3/stream/StreamsTest;').
name_ref(v_input_21, var, 'input', 'Lorg/apache/commons/lang3/stream/StreamsTest;.testStreamCollectionNull()V#input').
name_ref(p_accumulator_13, param, 'accumulator', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.reduce(TO;Ljava/util/function/BinaryOperator<TO;>;)TO;#accumulator#0#1').
name_ref(p_accumulator_7, param, 'accumulator', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.collect<A:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/function/Supplier<TR;>;Ljava/util/function/BiConsumer<TR;-TO;>;Ljava/util/function/BiConsumer<TR;TR;>;)TR;#accumulator#0#1').
name_ref(p_action_10, param, 'action', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.forEach(Lorg/apache/commons/lang3/function/FailableConsumer<TO;*>;)V#action#0#0').
name_ref(p_collector_5, param, 'collector', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.collect<A:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/stream/Collector<-TO;TA;TR;>;)TR;#collector#0#0').
name_ref(p_combiner_8, param, 'combiner', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.collect<A:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/function/Supplier<TR;>;Ljava/util/function/BiConsumer<TR;-TO;>;Ljava/util/function/BiConsumer<TR;TR;>;)TR;#combiner#0#2').
name_ref(p_element_type_1, param, 'elementType', 'Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;.(Ljava/lang/Class<TO;>;)V#elementType#0#0').
name_ref(p_identity_12, param, 'identity', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.reduce(TO;Ljava/util/function/BinaryOperator<TO;>;)TO;#identity#0#0').
name_ref(p_mapper_11, param, 'mapper', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.map<R:Ljava/lang/Object;>(Lorg/apache/commons/lang3/function/FailableFunction<TO;TR;*>;)Lorg/apache/commons/lang3/stream/Streams$FailableStream<TR;>;#mapper#0#0').
name_ref(p_output_20, param, 'output', 'Lorg/apache/commons/lang3/stream/StreamsTest;.assertEvenNumbers(Ljava/util/List<Ljava/lang/Integer;>;)V#output#0#0').
name_ref(p_p_element_type_17, param, 'pElementType', 'Lorg/apache/commons/lang3/stream/Streams;.toArray<O:Ljava/lang/Object;>(Ljava/lang/Class<TO;>;)Ljava/util/stream/Collector<TO;*[TO;>;#pElementType#0#0').
name_ref(p_p_throwable_18, param, 'pThrowable', 'Lorg/apache/commons/lang3/stream/StreamsTest;.asIntConsumer<T:Ljava/lang/Throwable;>(TT;)Lorg/apache/commons/lang3/function/FailableConsumer<Ljava/lang/String;TT;>;#pThrowable#0#0').
name_ref(p_p_throwable_19, param, 'pThrowable', 'Lorg/apache/commons/lang3/stream/StreamsTest;.asIntPredicate<T:Ljava/lang/Throwable;>(TT;)Lorg/apache/commons/lang3/function/FailablePredicate<Ljava/lang/Integer;TT;>;#pThrowable#0#0').
name_ref(p_predicate_3, param, 'predicate', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.allMatch(Lorg/apache/commons/lang3/function/FailablePredicate<TO;*>;)Z#predicate#0#0').
name_ref(p_predicate_4, param, 'predicate', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.anyMatch(Lorg/apache/commons/lang3/function/FailablePredicate<TO;*>;)Z#predicate#0#0').
name_ref(p_predicate_9, param, 'predicate', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.filter(Lorg/apache/commons/lang3/function/FailablePredicate<TO;*>;)Lorg/apache/commons/lang3/stream/Streams$FailableStream<TO;>;#predicate#0#0').
name_ref(p_pupplier_6, param, 'pupplier', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.collect<A:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/function/Supplier<TR;>;Ljava/util/function/BiConsumer<TR;-TO;>;Ljava/util/function/BiConsumer<TR;TR;>;)TR;#pupplier#0#0').
name_ref(p_stream_15, param, 'stream', 'Lorg/apache/commons/lang3/stream/Streams;.stream<O:Ljava/lang/Object;>(Ljava/util/Collection<TO;>;)Lorg/apache/commons/lang3/stream/Streams$FailableStream<TO;>;#stream#0#0').
name_ref(p_stream_16, param, 'stream', 'Lorg/apache/commons/lang3/stream/Streams;.stream<O:Ljava/lang/Object;>(Ljava/util/stream/Stream<TO;>;)Lorg/apache/commons/lang3/stream/Streams$FailableStream<TO;>;#stream#0#0').
name_ref(p_stream_2, param, 'stream', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.(Ljava/util/stream/Stream<TO;>;)V#stream#0#0').
name_ref(p_values_14, param, 'values', 'Lorg/apache/commons/lang3/stream/Streams;.of<T:Ljava/lang/Object;>([TT;)Ljava/util/stream/Stream<TT;>;#values#0#0').
name_ref(m_accumulator_2, method, 'accumulator', 'Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;.accumulator()Ljava/util/function/BiConsumer<Ljava/util/List<TO;>;TO;>;').
name_ref(m_all_match_8, method, 'allMatch', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.allMatch(Lorg/apache/commons/lang3/function/FailablePredicate<TO;*>;)Z').
name_ref(m_any_match_9, method, 'anyMatch', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.anyMatch(Lorg/apache/commons/lang3/function/FailablePredicate<TO;*>;)Z').
name_ref(m_array_collector_1, method, 'ArrayCollector', 'Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;.(Ljava/lang/Class<TO;>;)V').
name_ref(m_as_int_consumer_24, method, 'asIntConsumer', 'Lorg/apache/commons/lang3/stream/StreamsTest;.asIntConsumer<T:Ljava/lang/Throwable;>(TT;)Lorg/apache/commons/lang3/function/FailableConsumer<Ljava/lang/String;TT;>;').
name_ref(m_as_int_predicate_25, method, 'asIntPredicate', 'Lorg/apache/commons/lang3/stream/StreamsTest;.asIntPredicate<T:Ljava/lang/Throwable;>(TT;)Lorg/apache/commons/lang3/function/FailablePredicate<Ljava/lang/Integer;TT;>;').
name_ref(m_assert_equals_32, method, 'assertEquals', 'Lorg/junit/jupiter/api/Assertions;.assertEquals(II)V').
name_ref(m_assert_even_numbers_26, method, 'assertEvenNumbers', 'Lorg/apache/commons/lang3/stream/StreamsTest;.assertEvenNumbers(Ljava/util/List<Ljava/lang/Integer;>;)V').
name_ref(m_assert_not_terminated_10, method, 'assertNotTerminated', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.assertNotTerminated()V').
name_ref(m_characteristics_3, method, 'characteristics', 'Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;.characteristics()Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;').
name_ref(m_collect_11, method, 'collect', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.collect<A:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/stream/Collector<-TO;TA;TR;>;)TR;').
name_ref(m_collect_12, method, 'collect', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.collect<A:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/function/Supplier<TR;>;Ljava/util/function/BiConsumer<TR;-TO;>;Ljava/util/function/BiConsumer<TR;TR;>;)TR;').
name_ref(m_combiner_4, method, 'combiner', 'Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;.combiner()Ljava/util/function/BinaryOperator<Ljava/util/List<TO;>;>;').
name_ref(m_failable_stream_7, method, 'FailableStream', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.(Ljava/util/stream/Stream<TO;>;)V').
name_ref(m_filter_13, method, 'filter', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.filter(Lorg/apache/commons/lang3/function/FailablePredicate<TO;*>;)Lorg/apache/commons/lang3/stream/Streams$FailableStream<TO;>;').
name_ref(m_finisher_5, method, 'finisher', 'Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;.finisher()Ljava/util/function/Function<Ljava/util/List<TO;>;[TO;>;').
name_ref(m_for_each_14, method, 'forEach', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.forEach(Lorg/apache/commons/lang3/function/FailableConsumer<TO;*>;)V').
name_ref(m_make_terminated_15, method, 'makeTerminated', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.makeTerminated()V').
name_ref(m_map_16, method, 'map', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.map<R:Ljava/lang/Object;>(Lorg/apache/commons/lang3/function/FailableFunction<TO;TR;*>;)Lorg/apache/commons/lang3/stream/Streams$FailableStream<TR;>;').
name_ref(m_of_19, method, 'of', 'Lorg/apache/commons/lang3/stream/Streams;.of<T:Ljava/lang/Object;>([TT;)Ljava/util/stream/Stream<TT;>;').
name_ref(m_reduce_17, method, 'reduce', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.reduce(TO;Ljava/util/function/BinaryOperator<TO;>;)TO;').
name_ref(m_simple_stream_filter_failing_27, method, 'simpleStreamFilterFailing', 'Lorg/apache/commons/lang3/stream/StreamsTest;.simpleStreamFilterFailing()Ljava/util/stream/Stream<Lorg/junit/jupiter/api/DynamicTest;>;').
name_ref(m_simple_stream_for_each_failing_28, method, 'simpleStreamForEachFailing', 'Lorg/apache/commons/lang3/stream/StreamsTest;.simpleStreamForEachFailing()Ljava/util/stream/Stream<Lorg/junit/jupiter/api/DynamicTest;>;').
name_ref(m_size_33, method, 'size', 'Ljava/util/List;.size()I').
name_ref(m_stream_18, method, 'stream', 'Lorg/apache/commons/lang3/stream/Streams$FailableStream;.stream()Ljava/util/stream/Stream<TO;>;').
name_ref(m_stream_20, method, 'stream', 'Lorg/apache/commons/lang3/stream/Streams;.stream<O:Ljava/lang/Object;>(Ljava/util/Collection<TO;>;)Lorg/apache/commons/lang3/stream/Streams$FailableStream<TO;>;').
name_ref(m_stream_21, method, 'stream', 'Lorg/apache/commons/lang3/stream/Streams;.stream<O:Ljava/lang/Object;>(Ljava/util/stream/Stream<TO;>;)Lorg/apache/commons/lang3/stream/Streams$FailableStream<TO;>;').
name_ref(m_stream_22, method, 'stream', 'Ljava/util/Collection;.stream()Ljava/util/stream/Stream<TE;>;').
name_ref(m_supplier_6, method, 'supplier', 'Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;.supplier()Ljava/util/function/Supplier<Ljava/util/List<TO;>;>;').
name_ref(m_test_of_array_29, method, 'testOfArray', 'Lorg/apache/commons/lang3/stream/StreamsTest;.testOfArray()V').
name_ref(m_test_simple_stream_filter_35, method, 'testSimpleStreamFilter', 'Lorg/apache/commons/lang3/stream/StreamsTest;.testSimpleStreamFilter()V').
name_ref(m_test_simple_stream_for_each_36, method, 'testSimpleStreamForEach', 'Lorg/apache/commons/lang3/stream/StreamsTest;.testSimpleStreamForEach()V').
name_ref(m_test_simple_stream_map_37, method, 'testSimpleStreamMap', 'Lorg/apache/commons/lang3/stream/StreamsTest;.testSimpleStreamMap()V').
name_ref(m_test_simple_stream_map_failing_38, method, 'testSimpleStreamMapFailing', 'Lorg/apache/commons/lang3/stream/StreamsTest;.testSimpleStreamMapFailing()V').
name_ref(m_test_stream_collection_30, method, 'testStreamCollection', 'Lorg/apache/commons/lang3/stream/StreamsTest;.testStreamCollection()V').
name_ref(m_test_stream_collection_null_31, method, 'testStreamCollectionNull', 'Lorg/apache/commons/lang3/stream/StreamsTest;.testStreamCollectionNull()V').
name_ref(m_test_to_array_39, method, 'testToArray', 'Lorg/apache/commons/lang3/stream/StreamsTest;.testToArray()V').
name_ref(m_to_array_23, method, 'toArray', 'Lorg/apache/commons/lang3/stream/Streams;.toArray<O:Ljava/lang/Object;>(Ljava/lang/Class<TO;>;)Ljava/util/stream/Collector<TO;*[TO;>;').
name_ref(m_to_list_34, method, 'toList', 'Ljava/util/stream/Collectors;.toList<T:Ljava/lang/Object;>()Ljava/util/stream/Collector<TT;*Ljava/util/List<TT;>;>;').

%%% End of Code Facts

