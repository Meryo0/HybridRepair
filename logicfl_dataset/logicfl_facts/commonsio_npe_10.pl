%%% Logic-FL Facts
:- style_check(-discontiguous).

%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
param(p_cs_1, 1, m_char_sequence_input_stream_1).
param(p_charset_2, 2, m_char_sequence_input_stream_1).
method_invoc(char_sequence_input_stream_1_expr1, m_char_sequence_input_stream_2, line(char_sequence_input_stream_1, 62)).
throw(char_sequence_input_stream_1_expr1, null_pointer_exception, line(char_sequence_input_stream_1, 62)).
argument(p_cs_1, 1, char_sequence_input_stream_1_expr1).
argument(p_charset_2, 2, char_sequence_input_stream_1_expr1).
argument(f_buffer_size_3, 3, char_sequence_input_stream_1_expr1).
param(p_cs_4, 1, m_char_sequence_input_stream_2).
param(p_charset_5, 2, m_char_sequence_input_stream_2).
param(p_buffer_size_6, 3, m_char_sequence_input_stream_2).
assign(f_charset_encoder_7, char_sequence_input_stream_1_expr4, line(char_sequence_input_stream_1, 75)).
method_invoc(char_sequence_input_stream_1_expr4, m_on_unmappable_character_3, line(char_sequence_input_stream_1, 75)).
argument(q_replace_1, 1, char_sequence_input_stream_1_expr4).
ref(char_sequence_input_stream_1_expr6, char_sequence_input_stream_1_expr4, line(char_sequence_input_stream_1, 75)).
method_invoc(char_sequence_input_stream_1_expr6, m_on_malformed_input_4, line(char_sequence_input_stream_1, 75)).
argument(q_replace_2, 1, char_sequence_input_stream_1_expr6).
ref(char_sequence_input_stream_1_expr7, char_sequence_input_stream_1_expr6, line(char_sequence_input_stream_1, 75)).
method_invoc(char_sequence_input_stream_1_expr7, m_new_encoder_5, line(char_sequence_input_stream_1, 75)).
ref(p_charset_5, char_sequence_input_stream_1_expr7, line(char_sequence_input_stream_1, 75)).
param(p_cs_8, 1, m_char_sequence_input_stream_6).
param(p_charset_9, 2, m_char_sequence_input_stream_6).
param(p_cs_10, 1, m_char_sequence_input_stream_7).
param(p_charset_11, 2, m_char_sequence_input_stream_7).
param(p_buffer_size_12, 3, m_char_sequence_input_stream_7).
throw(m_available_8, ioexception).
throw(m_close_9, ioexception).
throw(m_fill_buffer_10, character_coding_exception).
param(p_readlimit_13, 1, m_mark_11).
throw(m_read_13, ioexception).
param(p_b_14, 1, m_read_14).
throw(m_read_14, ioexception).
param(p_array_15, 1, m_read_15).
param(p_off_16, 2, m_read_15).
param(p_len_17, 3, m_read_15).
throw(m_read_15, ioexception).
throw(m_reset_16, ioexception).
param(p_n_18, 1, m_skip_17).
throw(m_skip_17, ioexception).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.input.CharSequenceInputStreamTest', 'testNullCharset').
trace(trace_1, failure_1, m_char_sequence_input_stream_2, line(char_sequence_input_stream_1, 75), failure_1, target).
trace(trace_2, trace_1, m_char_sequence_input_stream_1, line(char_sequence_input_stream_1, 62), failure_1, target).
trace(trace_3, trace_2, 'testNullCharset', line(org_apache_commons_io_input_char_sequence_input_stream_test, 79), failure_1, target).
trace(trace_4, trace_3, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_6, trace_5, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_1, non_target).
trace(trace_7, trace_6, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_1, non_target).
trace(trace_8, trace_7, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_1, non_target).
trace(trace_9, trace_8, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_1, non_target).
trace(trace_10, trace_9, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_1, non_target).
trace(trace_11, trace_10, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_1, non_target).
trace(trace_12, trace_11, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_1, non_target).
trace(trace_13, trace_12, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_1, non_target).
trace(trace_14, trace_13, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_1, non_target).
trace(trace_15, trace_14, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_1, non_target).
trace(trace_16, trace_15, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_1, non_target).
trace(trace_17, trace_16, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_1, non_target).
trace(trace_18, trace_17, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_1, non_target).
trace(trace_19, trace_18, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_1, non_target).
trace(trace_20, trace_19, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_1, non_target).
trace(trace_21, trace_20, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_22, trace_21, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_1, non_target).
trace(trace_23, trace_22, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_1, non_target).
trace(trace_24, trace_23, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_1, non_target).
trace(trace_25, trace_24, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_1, non_target).
trace(trace_26, trace_25, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_27, trace_26, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_28, trace_27, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_29, trace_28, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_30, trace_29, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_31, trace_30, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_32, trace_31, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_33, trace_32, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_34, trace_33, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_35, trace_34, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_36, trace_35, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_37, trace_36, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_38, trace_37, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_39, trace_38, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_40, trace_39, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_41, trace_40, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_42, trace_41, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_43, trace_42, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_44, trace_43, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_45, trace_44, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_46, trace_45, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_47, trace_46, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_48, trace_47, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_49, trace_48, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_50, trace_49, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_51, trace_50, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_52, trace_51, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_53, trace_52, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_1, non_target).
trace(trace_54, trace_53, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_1, non_target).
trace(trace_55, trace_54, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_1, non_target).
trace(trace_56, trace_55, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_1, non_target).
trace(trace_57, trace_56, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_1, non_target).
trace(trace_58, trace_57, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_1, non_target).
trace(trace_59, trace_58, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_1, non_target).
trace(trace_60, trace_59, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_1, non_target).
trace(trace_61, trace_60, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_1, non_target).
trace(trace_62, trace_61, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_1, non_target).
trace(trace_63, trace_62, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_1, non_target).
trace(trace_64, trace_63, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_1, non_target).
trace(trace_65, trace_64, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_charset_2, null, line(char_sequence_input_stream_1, 62)).
val(p_charset_5, null, line(char_sequence_input_stream_1, 75)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(char_sequence_input_stream_1, 'org.apache.commons.io.input.CharSequenceInputStream').

%%% Methods
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
method(m_char_sequence_input_stream_1, range(char_sequence_input_stream_1, 1822, 412, 54, 63)).
method(m_char_sequence_input_stream_2, range(char_sequence_input_stream_1, 2240, 952, 65, 85)).
method(m_char_sequence_input_stream_6, range(char_sequence_input_stream_1, 3198, 411, 87, 96)).
method(m_char_sequence_input_stream_7, range(char_sequence_input_stream_1, 3615, 471, 98, 108)).
method(m_available_8, range(char_sequence_input_stream_1, 4092, 709, 110, 123)).
method(m_close_9, range(char_sequence_input_stream_1, 4807, 76, 125, 128)).
method(m_fill_buffer_10, range(char_sequence_input_stream_1, 4889, 460, 130, 143)).
method(m_mark_11, range(char_sequence_input_stream_1, 5355, 442, 145, 157)).
method(m_mark_supported_12, range(char_sequence_input_stream_1, 5803, 73, 159, 162)).
method(m_read_13, range(char_sequence_input_stream_1, 5882, 334, 164, 175)).
method(m_read_14, range(char_sequence_input_stream_1, 6222, 109, 177, 180)).
method(m_read_15, range(char_sequence_input_stream_1, 6337, 1113, 182, 210)).
method(m_reset_16, range(char_sequence_input_stream_1, 7456, 1759, 212, 246)).
method(m_skip_17, range(char_sequence_input_stream_1, 9221, 353, 248, 260)).

%%% Blocks
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
block(char_sequence_input_stream_1_block1, block, char_sequence_input_stream_1_code3, body, range(char_sequence_input_stream_1, 2187, 47, 61, 63)).
block(char_sequence_input_stream_1_block2, block, char_sequence_input_stream_1_code4, body, range(char_sequence_input_stream_1, 2649, 543, 73, 85)).

%%% Statements
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
stmt(char_sequence_input_stream_1_stmt1, constructor_invocation, char_sequence_input_stream_1_block1, (statements, 0), range(char_sequence_input_stream_1, 2197, 31, 62, 62)).
stmt(char_sequence_input_stream_1_stmt2, expression_statement, char_sequence_input_stream_1_block2, (statements, 0), range(char_sequence_input_stream_1, 2685, 162, 75, 77)).

%%% Expressions
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
expr(char_sequence_input_stream_1_expr1, constructor_invocation, char_sequence_input_stream_1_block1, (statements, 0), range(char_sequence_input_stream_1, 2197, 31, 62, 62), "this(cs,charset,BUFFER_SIZE);").
expr(char_sequence_input_stream_1_expr2, assignment, char_sequence_input_stream_1_stmt2, expression, range(char_sequence_input_stream_1, 2685, 161, 75, 77), "this.charsetEncoder=charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE)").
expr(char_sequence_input_stream_1_expr3, field_access, char_sequence_input_stream_1_expr2, left_hand_side, range(char_sequence_input_stream_1, 2685, 19, 75, 75), "this.charsetEncoder").
expr(char_sequence_input_stream_1_expr5, this_expression, f_charset_encoder_7, expression, range(char_sequence_input_stream_1, 2685, 4, 75, 75), "this").
expr(char_sequence_input_stream_1_expr6, method_invocation, char_sequence_input_stream_1_expr4, expression, range(char_sequence_input_stream_1, 2707, 77, 75, 76), "charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE)").
expr(char_sequence_input_stream_1_expr7, method_invocation, char_sequence_input_stream_1_expr6, expression, range(char_sequence_input_stream_1, 2707, 20, 75, 75), "charset.newEncoder()").
expr(char_sequence_input_stream_1_expr4, method_invocation, char_sequence_input_stream_1_expr2, right_hand_side, range(char_sequence_input_stream_1, 2707, 139, 75, 77), "charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE)").

%%% Names
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
name(p_cs_1, simple_name, char_sequence_input_stream_1_stmt1, (arguments, 0), range(char_sequence_input_stream_1, 2202, 2, 62, 62), 'cs').
name(p_charset_2, simple_name, char_sequence_input_stream_1_stmt1, (arguments, 1), range(char_sequence_input_stream_1, 2206, 7, 62, 62), 'charset').
name(f_buffer_size_3, simple_name, char_sequence_input_stream_1_stmt1, (arguments, 2), range(char_sequence_input_stream_1, 2215, 11, 62, 62), 'BUFFER_SIZE').
name(m_char_sequence_input_stream_2, simple_name, char_sequence_input_stream_1_code4, name, range(char_sequence_input_stream_1, 2557, 23, 73, 73), 'CharSequenceInputStream').
name(p_cs_4, simple_name, char_sequence_input_stream_1_code6, name, range(char_sequence_input_stream_1, 2600, 2, 73, 73), 'cs').
name(p_charset_5, simple_name, char_sequence_input_stream_1_code9, name, range(char_sequence_input_stream_1, 2618, 7, 73, 73), 'charset').
name(p_buffer_size_6, simple_name, char_sequence_input_stream_1_code12, name, range(char_sequence_input_stream_1, 2637, 10, 73, 73), 'bufferSize').
name(f_charset_encoder_7, simple_name, char_sequence_input_stream_1_expr3, name, range(char_sequence_input_stream_1, 2690, 14, 75, 75), 'charsetEncoder').
name(p_charset_5, simple_name, char_sequence_input_stream_1_expr7, expression, range(char_sequence_input_stream_1, 2707, 7, 75, 75), 'charset').
name(m_new_encoder_5, simple_name, char_sequence_input_stream_1_expr7, name, range(char_sequence_input_stream_1, 2715, 10, 75, 75), 'newEncoder').
name(q_replace_2, qualified_name, char_sequence_input_stream_1_expr6, (arguments, 0), range(char_sequence_input_stream_1, 2758, 25, 76, 76), 'CodingErrorAction.REPLACE').
name(q_replace_1, qualified_name, char_sequence_input_stream_1_expr4, (arguments, 0), range(char_sequence_input_stream_1, 2820, 25, 77, 77), 'CodingErrorAction.REPLACE').

%%% Literals
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream

%%% Other Code Entities
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
code(char_sequence_input_stream_1_code1, compilation_unit, range(char_sequence_input_stream_1, 0, 9578, 1, -1)).
code(char_sequence_input_stream_1_code2, type_declaration, char_sequence_input_stream_1_code1, (types, 0), range(char_sequence_input_stream_1, 1234, 8343, 33, 262)).
code(char_sequence_input_stream_1_code3, method_declaration, char_sequence_input_stream_1_code2, (body_declarations, 7), range(char_sequence_input_stream_1, 1822, 412, 54, 63)).
code(char_sequence_input_stream_1_code4, method_declaration, char_sequence_input_stream_1_code2, (body_declarations, 8), range(char_sequence_input_stream_1, 2240, 952, 65, 85)).
code(char_sequence_input_stream_1_code5, modifier, char_sequence_input_stream_1_code4, (modifiers, 0), range(char_sequence_input_stream_1, 2550, 6, 73, 73)).
code(char_sequence_input_stream_1_code6, single_variable_declaration, char_sequence_input_stream_1_code4, (parameters, 0), range(char_sequence_input_stream_1, 2581, 21, 73, 73)).
code(char_sequence_input_stream_1_code7, modifier, char_sequence_input_stream_1_code6, (modifiers, 0), range(char_sequence_input_stream_1, 2581, 5, 73, 73)).
code(char_sequence_input_stream_1_code8, simple_type, char_sequence_input_stream_1_code6, type, range(char_sequence_input_stream_1, 2587, 12, 73, 73)).
code(char_sequence_input_stream_1_code9, single_variable_declaration, char_sequence_input_stream_1_code4, (parameters, 1), range(char_sequence_input_stream_1, 2604, 21, 73, 73)).
code(char_sequence_input_stream_1_code10, modifier, char_sequence_input_stream_1_code9, (modifiers, 0), range(char_sequence_input_stream_1, 2604, 5, 73, 73)).
code(char_sequence_input_stream_1_code11, simple_type, char_sequence_input_stream_1_code9, type, range(char_sequence_input_stream_1, 2610, 7, 73, 73)).
code(char_sequence_input_stream_1_code12, single_variable_declaration, char_sequence_input_stream_1_code4, (parameters, 2), range(char_sequence_input_stream_1, 2627, 20, 73, 73)).
code(char_sequence_input_stream_1_code13, modifier, char_sequence_input_stream_1_code12, (modifiers, 0), range(char_sequence_input_stream_1, 2627, 5, 73, 73)).
code(char_sequence_input_stream_1_code14, primitive_type, char_sequence_input_stream_1_code12, type, range(char_sequence_input_stream_1, 2633, 3, 73, 73)).

%%% Name References

name_ref(p_charset_2, param, 'charset', 'char_sequence_input_stream_1;charset_line_62').
name_ref(p_cs_1, param, 'cs', 'char_sequence_input_stream_1;cs_line_62').
name_ref(f_buffer_size_3, field, 'BUFFER_SIZE', 'char_sequence_input_stream_1;BUFFER_SIZE_line_62').
name_ref(p_array_15, param, 'array', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([BII)I|Ljava/io/IOException;#array#0#0').
name_ref(p_b_14, param, 'b', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([B)I|Ljava/io/IOException;#b#0#0').
name_ref(p_buffer_size_12, param, 'bufferSize', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;I)V#bufferSize#0#2').
name_ref(p_buffer_size_6, param, 'bufferSize', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V#bufferSize#0#2').
name_ref(p_charset_11, param, 'charset', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;I)V#charset#0#1').
name_ref(p_charset_2, param, 'charset', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V#charset#0#1').
name_ref(p_charset_5, param, 'charset', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V#charset#0#1').
name_ref(p_charset_9, param, 'charset', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;)V#charset#0#1').
name_ref(p_cs_1, param, 'cs', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V#cs#0#0').
name_ref(p_cs_10, param, 'cs', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;I)V#cs#0#0').
name_ref(p_cs_4, param, 'cs', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V#cs#0#0').
name_ref(p_cs_8, param, 'cs', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;)V#cs#0#0').
name_ref(p_len_17, param, 'len', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([BII)I|Ljava/io/IOException;#len#0#2').
name_ref(p_n_18, param, 'n', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.skip(J)J|Ljava/io/IOException;#n#0#0').
name_ref(p_off_16, param, 'off', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([BII)I|Ljava/io/IOException;#off#0#1').
name_ref(p_readlimit_13, param, 'readlimit', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.mark(I)V#readlimit#0#0').
name_ref(f_buffer_size_3, field, 'BUFFER_SIZE', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.BUFFER_SIZE)I').
name_ref(f_charset_encoder_7, field, 'charsetEncoder', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.charsetEncoder)Ljava/nio/charset/CharsetEncoder;').
name_ref(m_available_8, method, 'available', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.available()I|Ljava/io/IOException;').
name_ref(m_char_sequence_input_stream_1, method, 'CharSequenceInputStream', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V').
name_ref(m_char_sequence_input_stream_2, method, 'CharSequenceInputStream', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V').
name_ref(m_char_sequence_input_stream_6, method, 'CharSequenceInputStream', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;)V').
name_ref(m_char_sequence_input_stream_7, method, 'CharSequenceInputStream', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;I)V').
name_ref(m_close_9, method, 'close', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.close()V|Ljava/io/IOException;').
name_ref(m_fill_buffer_10, method, 'fillBuffer', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.fillBuffer()V|Ljava/nio/charset/CharacterCodingException;').
name_ref(m_mark_11, method, 'mark', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.mark(I)V').
name_ref(m_mark_supported_12, method, 'markSupported', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.markSupported()Z').
name_ref(m_new_encoder_5, method, 'newEncoder', 'Ljava/nio/charset/Charset;.newEncoder()Ljava/nio/charset/CharsetEncoder;').
name_ref(m_on_malformed_input_4, method, 'onMalformedInput', 'Ljava/nio/charset/CharsetEncoder;.onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;').
name_ref(m_on_unmappable_character_3, method, 'onUnmappableCharacter', 'Ljava/nio/charset/CharsetEncoder;.onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;').
name_ref(m_read_13, method, 'read', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read()I|Ljava/io/IOException;').
name_ref(m_read_14, method, 'read', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([B)I|Ljava/io/IOException;').
name_ref(m_read_15, method, 'read', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([BII)I|Ljava/io/IOException;').
name_ref(m_reset_16, method, 'reset', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.reset()V|Ljava/io/IOException;').
name_ref(m_skip_17, method, 'skip', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.skip(J)J|Ljava/io/IOException;').
name_ref(q_replace_1, q_name, 'CodingErrorAction.REPLACE', 'Ljava/nio/charset/CodingErrorAction;:Ljava/nio/charset/CodingErrorAction;.REPLACE)Ljava/nio/charset/CodingErrorAction;').

%%% End of Code Facts

