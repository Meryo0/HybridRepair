%%% Logic-FL Facts
:- style_check(-discontiguous).

%charsets_1 - org.apache.commons.io.Charsets
assign(v_standard_charset_map_1, charsets_1_expr1, line(charsets_1, 66)).
method_invoc(charsets_1_expr1, m_tree_map_1, line(charsets_1, 66)).
argument(q_case_insensitive_order_1, 1, charsets_1_expr1).
ref(t_string_1, q_case_insensitive_order_1, line(charsets_1, 66)).
method_invoc(charsets_1_expr2, m_put_2, line(charsets_1, 67)).
argument(charsets_1_expr3, 1, charsets_1_expr2).
argument(q_iso_8859_1_2, 2, charsets_1_expr2).
ref(v_standard_charset_map_1, charsets_1_expr2, line(charsets_1, 67)).
method_invoc(charsets_1_expr3, m_name_3, line(charsets_1, 67)).
ref(f_iso_8859_1_2, charsets_1_expr3, line(charsets_1, 67)).
ref(t_standard_charsets_2, q_iso_8859_1_3, line(charsets_1, 67)).
ref(t_standard_charsets_2, q_iso_8859_1_2, line(charsets_1, 67)).
method_invoc(charsets_1_expr4, m_put_2, line(charsets_1, 68)).
argument(charsets_1_expr5, 1, charsets_1_expr4).
argument(q_us_ascii_3, 2, charsets_1_expr4).
ref(v_standard_charset_map_1, charsets_1_expr4, line(charsets_1, 68)).
method_invoc(charsets_1_expr5, m_name_3, line(charsets_1, 68)).
ref(f_us_ascii_3, charsets_1_expr5, line(charsets_1, 68)).
ref(t_standard_charsets_2, q_us_ascii_4, line(charsets_1, 68)).
ref(t_standard_charsets_2, q_us_ascii_3, line(charsets_1, 68)).
method_invoc(charsets_1_expr6, m_put_2, line(charsets_1, 69)).
argument(charsets_1_expr7, 1, charsets_1_expr6).
argument(q_utf_16_4, 2, charsets_1_expr6).
ref(v_standard_charset_map_1, charsets_1_expr6, line(charsets_1, 69)).
method_invoc(charsets_1_expr7, m_name_3, line(charsets_1, 69)).
ref(f_utf_16_4, charsets_1_expr7, line(charsets_1, 69)).
ref(t_standard_charsets_2, q_utf_16_5, line(charsets_1, 69)).
ref(t_standard_charsets_2, q_utf_16_4, line(charsets_1, 69)).
method_invoc(charsets_1_expr8, m_put_2, line(charsets_1, 70)).
argument(charsets_1_expr9, 1, charsets_1_expr8).
argument(q_utf_16be_5, 2, charsets_1_expr8).
ref(v_standard_charset_map_1, charsets_1_expr8, line(charsets_1, 70)).
method_invoc(charsets_1_expr9, m_name_3, line(charsets_1, 70)).
ref(f_utf_16be_5, charsets_1_expr9, line(charsets_1, 70)).
ref(t_standard_charsets_2, q_utf_16be_6, line(charsets_1, 70)).
ref(t_standard_charsets_2, q_utf_16be_5, line(charsets_1, 70)).
method_invoc(charsets_1_expr10, m_put_2, line(charsets_1, 71)).
argument(charsets_1_expr11, 1, charsets_1_expr10).
argument(q_utf_16le_6, 2, charsets_1_expr10).
ref(v_standard_charset_map_1, charsets_1_expr10, line(charsets_1, 71)).
method_invoc(charsets_1_expr11, m_name_3, line(charsets_1, 71)).
ref(f_utf_16le_6, charsets_1_expr11, line(charsets_1, 71)).
ref(t_standard_charsets_2, q_utf_16le_7, line(charsets_1, 71)).
ref(t_standard_charsets_2, q_utf_16le_6, line(charsets_1, 71)).
method_invoc(charsets_1_expr12, m_put_2, line(charsets_1, 72)).
argument(charsets_1_expr13, 1, charsets_1_expr12).
argument(q_utf_8_7, 2, charsets_1_expr12).
ref(v_standard_charset_map_1, charsets_1_expr12, line(charsets_1, 72)).
method_invoc(charsets_1_expr13, m_name_3, line(charsets_1, 72)).
ref(f_utf_8_7, charsets_1_expr13, line(charsets_1, 72)).
ref(t_standard_charsets_2, q_utf_8_8, line(charsets_1, 72)).
ref(t_standard_charsets_2, q_utf_8_7, line(charsets_1, 72)).
assign(f_standard_charset_map_8, charsets_1_expr15, line(charsets_1, 73)).
method_invoc(charsets_1_expr15, m_unmodifiable_sorted_map_4, line(charsets_1, 73)).
argument(v_standard_charset_map_1, 1, charsets_1_expr15).
ref(t_collections_3, charsets_1_expr15, line(charsets_1, 73)).
assign(f_iso_8859_1_9, q_iso_8859_1_8, line(charsets_1, 86)).
ref(t_standard_charsets_2, q_iso_8859_1_8, line(charsets_1, 86)).
assign(f_us_ascii_10, q_us_ascii_8, line(charsets_1, 100)).
ref(t_standard_charsets_2, q_us_ascii_8, line(charsets_1, 100)).
assign(f_utf_16_11, q_utf_16_8, line(charsets_1, 115)).
ref(t_standard_charsets_2, q_utf_16_8, line(charsets_1, 115)).
assign(f_utf_16be_12, q_utf_16be_8, line(charsets_1, 129)).
ref(t_standard_charsets_2, q_utf_16be_8, line(charsets_1, 129)).
assign(f_utf_16le_13, q_utf_16le_8, line(charsets_1, 143)).
ref(t_standard_charsets_2, q_utf_16le_8, line(charsets_1, 143)).
assign(f_utf_8_14, q_utf_8_8, line(charsets_1, 157)).
ref(t_standard_charsets_2, q_utf_8_8, line(charsets_1, 157)).
param(p_charset_15, 1, m_to_charset_6).
return(charsets_1_expr16, m_to_charset_6, line(charsets_1, 183)).
cond_expr(charsets_1_expr17, charsets_1_expr18, p_charset_15, line(charsets_1, 183)).
method_invoc(charsets_1_expr18, m_default_charset_7, line(charsets_1, 183)).
ref(t_charset_4, charsets_1_expr18, line(charsets_1, 183)).
param(p_charset_name_16, 1, m_to_charset_8).
throw(m_to_charset_8, unsupported_charset_exception).

%writer_output_stream_test_1 - org.apache.commons.io.output.WriterOutputStreamTest
assign(v_buffer_46, writer_output_stream_test_1_expr1, line(writer_output_stream_test_1, 38)).
method_invoc(writer_output_stream_test_1_expr1, m_string_builder_31, line(writer_output_stream_test_1, 38)).
assign(v_i_47, writer_output_stream_test_1_literal1, line(writer_output_stream_test_1, 39)).
method_invoc(writer_output_stream_test_1_expr5, m_append_32, line(writer_output_stream_test_1, 40)).
argument(f_test_string_48, 1, writer_output_stream_test_1_expr5).
ref(v_buffer_46, writer_output_stream_test_1_expr5, line(writer_output_stream_test_1, 40)).
assign(f_large_test_string_49, writer_output_stream_test_1_expr7, line(writer_output_stream_test_1, 42)).
method_invoc(writer_output_stream_test_1_expr7, m_to_string_33, line(writer_output_stream_test_1, 42)).
ref(v_buffer_46, writer_output_stream_test_1_expr7, line(writer_output_stream_test_1, 42)).
assign(f_random_50, writer_output_stream_test_1_expr8, line(writer_output_stream_test_1, 45)).
method_invoc(writer_output_stream_test_1_expr8, m_random_34, line(writer_output_stream_test_1, 45)).
throw(m_test_flush_35, ioexception).
throw(m_test_large_utf8charset_with_buffered_write_36, ioexception).
throw(m_test_large_utf8charset_with_single_byte_write_37, ioexception).
throw(m_test_large_utf8with_buffered_write_38, ioexception).
throw(m_test_large_utf8with_single_byte_write_39, ioexception).
throw(m_test_null_charset_name_with_single_byte_write_40, ioexception).
throw(m_test_null_charset_with_single_byte_write_41, ioexception).
method_invoc(writer_output_stream_test_1_expr9, m_test_with_single_byte_write_42, line(writer_output_stream_test_1, 85)).
throw(writer_output_stream_test_1_expr9, ioexception, line(writer_output_stream_test_1, 85)).
argument(f_test_string_48, 1, writer_output_stream_test_1_expr9).
argument(writer_output_stream_test_1_expr10, 2, writer_output_stream_test_1_expr9).
assign(writer_output_stream_test_1_expr10, writer_output_stream_test_1_literal3, line(writer_output_stream_test_1, 85)).
throw(m_test_null_charset_decoder_with_single_byte_write_43, ioexception).
method_invoc(writer_output_stream_test_1_expr11, m_test_with_single_byte_write_44, line(writer_output_stream_test_1, 90)).
throw(writer_output_stream_test_1_expr11, ioexception, line(writer_output_stream_test_1, 90)).
argument(f_test_string_48, 1, writer_output_stream_test_1_expr11).
argument(writer_output_stream_test_1_expr12, 2, writer_output_stream_test_1_expr11).
assign(writer_output_stream_test_1_expr12, writer_output_stream_test_1_literal4, line(writer_output_stream_test_1, 90)).
throw(m_test_utf16bewith_buffered_write_45, ioexception).
throw(m_test_utf16bewith_single_byte_write_46, ioexception).
throw(m_test_utf16lewith_buffered_write_47, ioexception).
throw(m_test_utf16lewith_single_byte_write_48, ioexception).
throw(m_test_utf16with_buffered_write_49, ioexception).
throw(m_test_utf16with_single_byte_write_50, ioexception).
throw(m_test_utf8with_buffered_write_51, ioexception).
throw(m_test_utf8with_single_byte_write_52, ioexception).
param(p_test_string_51, 1, m_test_with_buffered_write_53).
param(p_charset_name_52, 2, m_test_with_buffered_write_53).
throw(m_test_with_buffered_write_53, ioexception).
param(p_test_string_53, 1, m_test_with_single_byte_write_42).
param(p_charset_54, 2, m_test_with_single_byte_write_42).
throw(m_test_with_single_byte_write_42, ioexception).
assign(v_bytes_55, writer_output_stream_test_1_expr13, line(writer_output_stream_test_1, 161)).
method_invoc(writer_output_stream_test_1_expr13, m_get_bytes_54, line(writer_output_stream_test_1, 161)).
argument(writer_output_stream_test_1_expr14, 1, writer_output_stream_test_1_expr13).
ref(p_test_string_53, writer_output_stream_test_1_expr13, line(writer_output_stream_test_1, 161)).
method_invoc(writer_output_stream_test_1_expr14, m_to_charset_6, line(writer_output_stream_test_1, 161)).
argument(p_charset_54, 1, writer_output_stream_test_1_expr14).
ref(t_charsets_7, writer_output_stream_test_1_expr14, line(writer_output_stream_test_1, 161)).
assign(v_writer_56, writer_output_stream_test_1_expr15, line(writer_output_stream_test_1, 162)).
method_invoc(writer_output_stream_test_1_expr15, m_string_writer_55, line(writer_output_stream_test_1, 162)).
assign(v_out_57, writer_output_stream_test_1_expr17, line(writer_output_stream_test_1, 163)).
method_invoc(writer_output_stream_test_1_expr17, m_writer_output_stream_14, line(writer_output_stream_test_1, 163)).
argument(v_writer_56, 1, writer_output_stream_test_1_expr17).
argument(p_charset_54, 2, writer_output_stream_test_1_expr17).
param(p_test_string_58, 1, m_test_with_single_byte_write_44).
param(p_charset_decoder_59, 2, m_test_with_single_byte_write_44).
throw(m_test_with_single_byte_write_44, ioexception).
assign(v_bytes_60, writer_output_stream_test_1_expr18, line(writer_output_stream_test_1, 172)).
method_invoc(writer_output_stream_test_1_expr18, m_get_bytes_54, line(writer_output_stream_test_1, 172)).
argument(writer_output_stream_test_1_expr19, 1, writer_output_stream_test_1_expr18).
ref(p_test_string_58, writer_output_stream_test_1_expr18, line(writer_output_stream_test_1, 172)).
method_invoc(writer_output_stream_test_1_expr19, m_charset_21, line(writer_output_stream_test_1, 172)).
ref(writer_output_stream_test_1_expr20, writer_output_stream_test_1_expr19, line(writer_output_stream_test_1, 172)).
method_invoc(writer_output_stream_test_1_expr20, m_to_charset_decoder_9, line(writer_output_stream_test_1, 172)).
argument(p_charset_decoder_59, 1, writer_output_stream_test_1_expr20).
ref(t_charset_decoders_8, writer_output_stream_test_1_expr20, line(writer_output_stream_test_1, 172)).
assign(v_writer_61, writer_output_stream_test_1_expr21, line(writer_output_stream_test_1, 173)).
method_invoc(writer_output_stream_test_1_expr21, m_string_writer_55, line(writer_output_stream_test_1, 173)).
assign(v_out_62, writer_output_stream_test_1_expr23, line(writer_output_stream_test_1, 174)).
method_invoc(writer_output_stream_test_1_expr23, m_writer_output_stream_20, line(writer_output_stream_test_1, 174)).
argument(v_writer_61, 1, writer_output_stream_test_1_expr23).
argument(p_charset_decoder_59, 2, writer_output_stream_test_1_expr23).
param(p_test_string_63, 1, m_test_with_single_byte_write_56).
param(p_charset_name_64, 2, m_test_with_single_byte_write_56).
throw(m_test_with_single_byte_write_56, ioexception).
throw(m_test_write_immediately_57, ioexception).

%charset_decoders_1 - org.apache.commons.io.charset.CharsetDecoders
param(p_charset_decoder_17, 1, m_to_charset_decoder_9).
return(charset_decoders_1_expr1, m_to_charset_decoder_9, line(charset_decoders_1, 37)).
cond_expr(charset_decoders_1_expr2, p_charset_decoder_17, charset_decoders_1_expr3, line(charset_decoders_1, 37)).
method_invoc(charset_decoders_1_expr3, m_new_decoder_10, line(charset_decoders_1, 37)).
ref(charset_decoders_1_expr4, charset_decoders_1_expr3, line(charset_decoders_1, 37)).
method_invoc(charset_decoders_1_expr4, m_default_charset_7, line(charset_decoders_1, 37)).
ref(t_charset_4, charset_decoders_1_expr4, line(charset_decoders_1, 37)).

%writer_output_stream_1 - org.apache.commons.io.output.WriterOutputStream
param(p_charset_18, 1, m_check_ibm_jdk_with_broken_utf16_11).
assign(f_decoder_in_19, writer_output_stream_1_expr1, line(writer_output_stream_1, 121)).
method_invoc(writer_output_stream_1_expr1, m_allocate_12, line(writer_output_stream_1, 121)).
argument(writer_output_stream_1_literal1, 1, writer_output_stream_1_expr1).
ref(t_byte_buffer_5, writer_output_stream_1_expr1, line(writer_output_stream_1, 121)).
param(p_writer_20, 1, m_writer_output_stream_13).
param(p_writer_21, 1, m_writer_output_stream_14).
param(p_charset_22, 2, m_writer_output_stream_14).
method_invoc(writer_output_stream_1_expr2, m_writer_output_stream_15, line(writer_output_stream_1, 152)).
throw(writer_output_stream_1_expr2, null_pointer_exception, line(writer_output_stream_1, 152)).
argument(p_writer_21, 1, writer_output_stream_1_expr2).
argument(p_charset_22, 2, writer_output_stream_1_expr2).
argument(f_buffer_size_23, 3, writer_output_stream_1_expr2).
argument(writer_output_stream_1_literal2, 4, writer_output_stream_1_expr2).
param(p_writer_24, 1, m_writer_output_stream_15).
param(p_charset_25, 2, m_writer_output_stream_15).
param(p_buffer_size_26, 3, m_writer_output_stream_15).
param(p_write_immediately_27, 4, m_writer_output_stream_15).
method_invoc(writer_output_stream_1_expr3, m_writer_output_stream_16, line(writer_output_stream_1, 169)).
argument(p_writer_24, 1, writer_output_stream_1_expr3).
argument(writer_output_stream_1_expr4, 2, writer_output_stream_1_expr3).
argument(p_buffer_size_26, 3, writer_output_stream_1_expr3).
argument(p_write_immediately_27, 4, writer_output_stream_1_expr3).
method_invoc(writer_output_stream_1_expr4, m_replace_with_17, line(writer_output_stream_1, 170)).
argument(writer_output_stream_1_literal3, 1, writer_output_stream_1_expr4).
ref(writer_output_stream_1_expr5, writer_output_stream_1_expr4, line(writer_output_stream_1, 170)).
method_invoc(writer_output_stream_1_expr5, m_on_unmappable_character_18, line(writer_output_stream_1, 170)).
argument(q_replace_8, 1, writer_output_stream_1_expr5).
ref(writer_output_stream_1_expr6, writer_output_stream_1_expr5, line(writer_output_stream_1, 170)).
method_invoc(writer_output_stream_1_expr6, m_on_malformed_input_19, line(writer_output_stream_1, 170)).
argument(q_replace_9, 1, writer_output_stream_1_expr6).
ref(writer_output_stream_1_expr7, writer_output_stream_1_expr6, line(writer_output_stream_1, 170)).
method_invoc(writer_output_stream_1_expr7, m_new_decoder_10, line(writer_output_stream_1, 170)).
ref(p_charset_25, writer_output_stream_1_expr7, line(writer_output_stream_1, 170)).
param(p_writer_28, 1, m_writer_output_stream_20).
param(p_decoder_29, 2, m_writer_output_stream_20).
method_invoc(writer_output_stream_1_expr8, m_writer_output_stream_16, line(writer_output_stream_1, 188)).
throw(writer_output_stream_1_expr8, null_pointer_exception, line(writer_output_stream_1, 188)).
argument(p_writer_28, 1, writer_output_stream_1_expr8).
argument(p_decoder_29, 2, writer_output_stream_1_expr8).
argument(f_buffer_size_23, 3, writer_output_stream_1_expr8).
argument(writer_output_stream_1_literal4, 4, writer_output_stream_1_expr8).
param(p_writer_30, 1, m_writer_output_stream_16).
param(p_decoder_31, 2, m_writer_output_stream_16).
param(p_buffer_size_32, 3, m_writer_output_stream_16).
param(p_write_immediately_33, 4, m_writer_output_stream_16).
method_invoc(writer_output_stream_1_expr9, m_check_ibm_jdk_with_broken_utf16_11, line(writer_output_stream_1, 206)).
argument(writer_output_stream_1_expr10, 1, writer_output_stream_1_expr9).
method_invoc(writer_output_stream_1_expr10, m_charset_21, line(writer_output_stream_1, 206)).
ref(p_decoder_31, writer_output_stream_1_expr10, line(writer_output_stream_1, 206)).
param(p_writer_34, 1, m_writer_output_stream_22).
param(p_charset_name_35, 2, m_writer_output_stream_22).
param(p_writer_36, 1, m_writer_output_stream_23).
param(p_charset_name_37, 2, m_writer_output_stream_23).
param(p_buffer_size_38, 3, m_writer_output_stream_23).
param(p_write_immediately_39, 4, m_writer_output_stream_23).
throw(m_close_24, ioexception).
throw(m_flush_25, ioexception).
throw(m_flush_output_26, ioexception).
param(p_end_of_input_40, 1, m_process_input_27).
throw(m_process_input_27, ioexception).
param(p_b_41, 1, m_write_28).
throw(m_write_28, ioexception).
param(p_b_42, 1, m_write_29).
param(p_off_43, 2, m_write_29).
param(p_len_44, 3, m_write_29).
throw(m_write_29, ioexception).
param(p_b_45, 1, m_write_30).
throw(m_write_30, ioexception).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.output.WriterOutputStreamTest', 'testNullCharsetDecoderWithSingleByteWrite').
trace(trace_1, failure_1, m_writer_output_stream_16, line(writer_output_stream_1, 206), failure_1, target).
trace(trace_2, trace_1, m_writer_output_stream_20, line(writer_output_stream_1, 188), failure_1, target).
trace(trace_3, trace_2, m_test_with_single_byte_write_44, line(writer_output_stream_test_1, 174), failure_1, target).
trace(trace_4, trace_3, m_test_null_charset_decoder_with_single_byte_write_43, line(writer_output_stream_test_1, 90), failure_1, target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_7, trace_6, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_1, non_target).
trace(trace_8, trace_7, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_1, non_target).
trace(trace_9, trace_8, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_1, non_target).
trace(trace_10, trace_9, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_1, non_target).
trace(trace_11, trace_10, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_1, non_target).
trace(trace_12, trace_11, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_1, non_target).
trace(trace_13, trace_12, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_1, non_target).
trace(trace_14, trace_13, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_1, non_target).
trace(trace_15, trace_14, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_1, non_target).
trace(trace_16, trace_15, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_1, non_target).
trace(trace_17, trace_16, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_1, non_target).
trace(trace_18, trace_17, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_1, non_target).
trace(trace_19, trace_18, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_1, non_target).
trace(trace_20, trace_19, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_1, non_target).
trace(trace_21, trace_20, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_1, non_target).
trace(trace_22, trace_21, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_23, trace_22, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_1, non_target).
trace(trace_24, trace_23, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_1, non_target).
trace(trace_25, trace_24, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_1, non_target).
trace(trace_26, trace_25, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_1, non_target).
trace(trace_27, trace_26, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_28, trace_27, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_29, trace_28, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_30, trace_29, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_31, trace_30, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_32, trace_31, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_33, trace_32, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_34, trace_33, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_35, trace_34, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_36, trace_35, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_37, trace_36, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_38, trace_37, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_39, trace_38, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_40, trace_39, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_41, trace_40, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_42, trace_41, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_43, trace_42, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_44, trace_43, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_45, trace_44, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_46, trace_45, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_47, trace_46, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_48, trace_47, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_49, trace_48, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_50, trace_49, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_51, trace_50, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_52, trace_51, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_53, trace_52, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_54, trace_53, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_1, non_target).
trace(trace_55, trace_54, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_1, non_target).
trace(trace_56, trace_55, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_1, non_target).
trace(trace_57, trace_56, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_1, non_target).
trace(trace_58, trace_57, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_1, non_target).
trace(trace_59, trace_58, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_1, non_target).
trace(trace_60, trace_59, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_1, non_target).
trace(trace_61, trace_60, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_1, non_target).
trace(trace_62, trace_61, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_1, non_target).
trace(trace_63, trace_62, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_1, non_target).
trace(trace_64, trace_63, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_1, non_target).
trace(trace_65, trace_64, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_1, non_target).
trace(trace_66, trace_65, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.io.output.WriterOutputStreamTest', 'testNullCharsetWithSingleByteWrite').
trace(trace_67, failure_2, m_writer_output_stream_15, line(writer_output_stream_1, 170), failure_2, target).
trace(trace_68, trace_67, m_writer_output_stream_14, line(writer_output_stream_1, 152), failure_2, target).
trace(trace_69, trace_68, m_test_with_single_byte_write_42, line(writer_output_stream_test_1, 163), failure_2, target).
trace(trace_70, trace_69, m_test_null_charset_with_single_byte_write_41, line(writer_output_stream_test_1, 85), failure_2, target).
trace(trace_71, trace_70, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_2, non_target).
trace(trace_72, trace_71, 'invoke', line(java_lang_reflect_method, 578), failure_2, non_target).
trace(trace_73, trace_72, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_2, non_target).
trace(trace_74, trace_73, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_2, non_target).
trace(trace_75, trace_74, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_2, non_target).
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

val(p_decoder_31, null, line(writer_output_stream_1, 206)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(charsets_1, 'org.apache.commons.io.Charsets').
class(writer_output_stream_test_1, 'org.apache.commons.io.output.WriterOutputStreamTest').
class(charset_decoders_1, 'org.apache.commons.io.charset.CharsetDecoders').
class(writer_output_stream_1, 'org.apache.commons.io.output.WriterOutputStream').

%%% Methods
%charsets_1 - org.apache.commons.io.Charsets
method(m_required_charsets_5, range(charsets_1, 6699, 596, 159, 173)).
method(m_to_charset_6, range(charsets_1, 7301, 384, 175, 184)).
method(m_to_charset_8, range(charsets_1, 7691, 538, 186, 195)).
%writer_output_stream_test_1 - org.apache.commons.io.output.WriterOutputStreamTest
method(m_test_flush_35, range(writer_output_stream_test_1, 1748, 430, 47, 56)).
method(m_test_large_utf8charset_with_buffered_write_36, range(writer_output_stream_test_1, 2184, 147, 58, 61)).
method(m_test_large_utf8charset_with_single_byte_write_37, range(writer_output_stream_test_1, 2337, 166, 63, 66)).
method(m_test_large_utf8with_buffered_write_38, range(writer_output_stream_test_1, 2509, 140, 68, 71)).
method(m_test_large_utf8with_single_byte_write_39, range(writer_output_stream_test_1, 2655, 144, 73, 76)).
method(m_test_null_charset_name_with_single_byte_write_40, range(writer_output_stream_test_1, 2805, 150, 78, 81)).
method(m_test_null_charset_with_single_byte_write_41, range(writer_output_stream_test_1, 2961, 147, 83, 86)).
method(m_test_null_charset_decoder_with_single_byte_write_43, range(writer_output_stream_test_1, 3114, 161, 88, 91)).
method(m_test_utf16bewith_buffered_write_45, range(writer_output_stream_test_1, 3281, 135, 93, 96)).
method(m_test_utf16bewith_single_byte_write_46, range(writer_output_stream_test_1, 3422, 139, 98, 101)).
method(m_test_utf16lewith_buffered_write_47, range(writer_output_stream_test_1, 3567, 135, 103, 106)).
method(m_test_utf16lewith_single_byte_write_48, range(writer_output_stream_test_1, 3708, 139, 108, 111)).
method(m_test_utf16with_buffered_write_49, range(writer_output_stream_test_1, 3853, 389, 113, 122)).
method(m_test_utf16with_single_byte_write_50, range(writer_output_stream_test_1, 4248, 391, 124, 133)).
method(m_test_utf8with_buffered_write_51, range(writer_output_stream_test_1, 4645, 129, 135, 138)).
method(m_test_utf8with_single_byte_write_52, range(writer_output_stream_test_1, 4780, 133, 140, 143)).
method(m_test_with_buffered_write_53, range(writer_output_stream_test_1, 4919, 656, 145, 157)).
method(m_test_with_single_byte_write_42, range(writer_output_stream_test_1, 5582, 481, 160, 169)).
method(m_test_with_single_byte_write_44, range(writer_output_stream_test_1, 6069, 533, 171, 180)).
method(m_test_with_single_byte_write_56, range(writer_output_stream_test_1, 6608, 492, 182, 191)).
method(m_test_write_immediately_57, range(writer_output_stream_test_1, 7106, 357, 193, 200)).
%charset_decoders_1 - org.apache.commons.io.charset.CharsetDecoders
method(m_to_charset_decoder_9, range(charset_decoders_1, 1020, 424, 30, 38)).
%writer_output_stream_1 - org.apache.commons.io.output.WriterOutputStream
method(m_check_ibm_jdk_with_broken_utf16_11, range(writer_output_stream_1, 3813, 1521, 77, 110)).
method(m_writer_output_stream_13, range(writer_output_stream_1, 5903, 582, 130, 141)).
method(m_writer_output_stream_14, range(writer_output_stream_1, 6491, 490, 143, 153)).
method(m_writer_output_stream_15, range(writer_output_stream_1, 6987, 1141, 155, 176)).
method(m_writer_output_stream_20, range(writer_output_stream_1, 8134, 514, 178, 189)).
method(m_writer_output_stream_16, range(writer_output_stream_1, 8654, 1101, 191, 211)).
method(m_writer_output_stream_22, range(writer_output_stream_1, 9761, 513, 213, 223)).
method(m_writer_output_stream_23, range(writer_output_stream_1, 10280, 956, 225, 240)).
method(m_close_24, range(writer_output_stream_1, 11242, 396, 242, 253)).
method(m_flush_25, range(writer_output_stream_1, 11644, 368, 255, 265)).
method(m_flush_output_26, range(writer_output_stream_1, 12018, 308, 267, 277)).
method(m_process_input_27, range(writer_output_stream_1, 12332, 954, 279, 303)).
method(m_write_28, range(writer_output_stream_1, 13292, 304, 305, 314)).
method(m_write_29, range(writer_output_stream_1, 13602, 675, 316, 336)).
method(m_write_30, range(writer_output_stream_1, 14283, 265, 338, 347)).

%%% Blocks
%charsets_1 - org.apache.commons.io.Charsets
block(charsets_1_block1, block, charsets_1_code3, body, range(charsets_1, 2753, 753, 65, 74)).
block(charsets_1_block2, block, charsets_1_code48, body, range(charsets_1, 7609, 76, 182, 184)).
%writer_output_stream_test_1 - org.apache.commons.io.output.WriterOutputStreamTest
block(writer_output_stream_test_1_block1, block, writer_output_stream_test_1_code4, body, range(writer_output_stream_test_1, 1495, 198, 37, 43)).
block(writer_output_stream_test_1_block2, block, writer_output_stream_test_1_stmt2, body, range(writer_output_stream_test_1, 1589, 51, 39, 41)).
block(writer_output_stream_test_1_block3, block, writer_output_stream_test_1_code17, body, range(writer_output_stream_test_1, 3039, 69, 84, 86)).
block(writer_output_stream_test_1_block4, block, writer_output_stream_test_1_code19, body, range(writer_output_stream_test_1, 3199, 76, 89, 91)).
block(writer_output_stream_test_1_block5, block, writer_output_stream_test_1_code21, body, range(writer_output_stream_test_1, 5686, 377, 160, 169)).
block(writer_output_stream_test_1_block6, block, writer_output_stream_test_1_stmt9, body, range(writer_output_stream_test_1, 5908, 96, 163, 167)).
block(writer_output_stream_test_1_block7, block, writer_output_stream_test_1_code35, body, range(writer_output_stream_test_1, 6187, 415, 171, 180)).
block(writer_output_stream_test_1_block8, block, writer_output_stream_test_1_stmt12, body, range(writer_output_stream_test_1, 6447, 96, 174, 178)).
%charset_decoders_1 - org.apache.commons.io.charset.CharsetDecoders
block(charset_decoders_1_block1, block, charset_decoders_1_code3, body, range(charset_decoders_1, 1341, 103, 36, 38)).
%writer_output_stream_1 - org.apache.commons.io.output.WriterOutputStream
block(writer_output_stream_1_block1, block, writer_output_stream_1_code8, body, range(writer_output_stream_1, 6923, 58, 151, 153)).
block(writer_output_stream_1_block2, block, writer_output_stream_1_code9, body, range(writer_output_stream_1, 7835, 293, 168, 176)).
block(writer_output_stream_1_block3, block, writer_output_stream_1_code10, body, range(writer_output_stream_1, 8590, 58, 187, 189)).
block(writer_output_stream_1_block4, block, writer_output_stream_1_code11, body, range(writer_output_stream_1, 9526, 229, 205, 211)).

%%% Statements
%charsets_1 - org.apache.commons.io.Charsets
stmt(charsets_1_stmt1, variable_declaration_statement, charsets_1_block1, (statements, 0), range(charsets_1, 2763, 99, 66, 66)).
stmt(charsets_1_stmt2, expression_statement, charsets_1_block1, (statements, 1), range(charsets_1, 2871, 88, 67, 67)).
stmt(charsets_1_stmt3, expression_statement, charsets_1_block1, (statements, 2), range(charsets_1, 2968, 84, 68, 68)).
stmt(charsets_1_stmt4, expression_statement, charsets_1_block1, (statements, 3), range(charsets_1, 3061, 80, 69, 69)).
stmt(charsets_1_stmt5, expression_statement, charsets_1_block1, (statements, 4), range(charsets_1, 3150, 84, 70, 70)).
stmt(charsets_1_stmt6, expression_statement, charsets_1_block1, (statements, 5), range(charsets_1, 3243, 84, 71, 71)).
stmt(charsets_1_stmt7, expression_statement, charsets_1_block1, (statements, 6), range(charsets_1, 3336, 78, 72, 72)).
stmt(charsets_1_stmt8, expression_statement, charsets_1_block1, (statements, 7), range(charsets_1, 3423, 77, 73, 73)).
stmt(charsets_1_stmt9, return_statement, charsets_1_block2, (statements, 0), range(charsets_1, 7619, 60, 183, 183)).
%writer_output_stream_test_1 - org.apache.commons.io.output.WriterOutputStreamTest
stmt(writer_output_stream_test_1_stmt1, variable_declaration_statement, writer_output_stream_test_1_block1, (statements, 0), range(writer_output_stream_test_1, 1505, 49, 38, 38)).
stmt(writer_output_stream_test_1_stmt2, for_statement, writer_output_stream_test_1_block1, (statements, 1), range(writer_output_stream_test_1, 1563, 77, 39, 41)).
stmt(writer_output_stream_test_1_stmt3, expression_statement, writer_output_stream_test_1_block2, (statements, 0), range(writer_output_stream_test_1, 1603, 27, 40, 40)).
stmt(writer_output_stream_test_1_stmt4, expression_statement, writer_output_stream_test_1_block1, (statements, 2), range(writer_output_stream_test_1, 1649, 38, 42, 42)).
stmt(writer_output_stream_test_1_stmt5, expression_statement, writer_output_stream_test_1_block3, (statements, 0), range(writer_output_stream_test_1, 3049, 53, 85, 85)).
stmt(writer_output_stream_test_1_stmt6, expression_statement, writer_output_stream_test_1_block4, (statements, 0), range(writer_output_stream_test_1, 3209, 60, 90, 90)).
stmt(writer_output_stream_test_1_stmt7, variable_declaration_statement, writer_output_stream_test_1_block5, (statements, 0), range(writer_output_stream_test_1, 5696, 70, 161, 161)).
stmt(writer_output_stream_test_1_stmt8, variable_declaration_statement, writer_output_stream_test_1_block5, (statements, 1), range(writer_output_stream_test_1, 5775, 47, 162, 162)).
stmt(writer_output_stream_test_1_stmt9, try_statement, writer_output_stream_test_1_block5, (statements, 2), range(writer_output_stream_test_1, 5831, 173, 163, 167)).
stmt(writer_output_stream_test_1_stmt10, variable_declaration_statement, writer_output_stream_test_1_block7, (statements, 0), range(writer_output_stream_test_1, 6197, 101, 172, 172)).
stmt(writer_output_stream_test_1_stmt11, variable_declaration_statement, writer_output_stream_test_1_block7, (statements, 1), range(writer_output_stream_test_1, 6307, 47, 173, 173)).
stmt(writer_output_stream_test_1_stmt12, try_statement, writer_output_stream_test_1_block7, (statements, 2), range(writer_output_stream_test_1, 6363, 180, 174, 178)).
%charset_decoders_1 - org.apache.commons.io.charset.CharsetDecoders
stmt(charset_decoders_1_stmt1, return_statement, charset_decoders_1_block1, (statements, 0), range(charset_decoders_1, 1351, 87, 37, 37)).
%writer_output_stream_1 - org.apache.commons.io.output.WriterOutputStream
stmt(writer_output_stream_1_stmt1, constructor_invocation, writer_output_stream_1_block1, (statements, 0), range(writer_output_stream_1, 6933, 42, 152, 152)).
stmt(writer_output_stream_1_stmt2, constructor_invocation, writer_output_stream_1_block2, (statements, 0), range(writer_output_stream_1, 7845, 277, 169, 175)).
stmt(writer_output_stream_1_stmt3, constructor_invocation, writer_output_stream_1_block3, (statements, 0), range(writer_output_stream_1, 8600, 42, 188, 188)).
stmt(writer_output_stream_1_stmt4, expression_statement, writer_output_stream_1_block4, (statements, 0), range(writer_output_stream_1, 9536, 47, 206, 206)).

%%% Expressions
%charsets_1 - org.apache.commons.io.Charsets
expr(charsets_1_expr1, class_instance_creation, charsets_1_code9, initializer, range(charsets_1, 2817, 44, 66, 66), "new TreeMap<>(String.CASE_INSENSITIVE_ORDER)").
expr(charsets_1_expr2, method_invocation, charsets_1_stmt2, expression, range(charsets_1, 2871, 87, 67, 67), "standardCharsetMap.put(StandardCharsets.ISO_8859_1.name(),StandardCharsets.ISO_8859_1)").
expr(charsets_1_expr3, method_invocation, charsets_1_expr2, (arguments, 0), range(charsets_1, 2894, 34, 67, 67), "StandardCharsets.ISO_8859_1.name()").
expr(charsets_1_expr4, method_invocation, charsets_1_stmt3, expression, range(charsets_1, 2968, 83, 68, 68), "standardCharsetMap.put(StandardCharsets.US_ASCII.name(),StandardCharsets.US_ASCII)").
expr(charsets_1_expr5, method_invocation, charsets_1_expr4, (arguments, 0), range(charsets_1, 2991, 32, 68, 68), "StandardCharsets.US_ASCII.name()").
expr(charsets_1_expr6, method_invocation, charsets_1_stmt4, expression, range(charsets_1, 3061, 79, 69, 69), "standardCharsetMap.put(StandardCharsets.UTF_16.name(),StandardCharsets.UTF_16)").
expr(charsets_1_expr7, method_invocation, charsets_1_expr6, (arguments, 0), range(charsets_1, 3084, 30, 69, 69), "StandardCharsets.UTF_16.name()").
expr(charsets_1_expr8, method_invocation, charsets_1_stmt5, expression, range(charsets_1, 3150, 83, 70, 70), "standardCharsetMap.put(StandardCharsets.UTF_16BE.name(),StandardCharsets.UTF_16BE)").
expr(charsets_1_expr9, method_invocation, charsets_1_expr8, (arguments, 0), range(charsets_1, 3173, 32, 70, 70), "StandardCharsets.UTF_16BE.name()").
expr(charsets_1_expr10, method_invocation, charsets_1_stmt6, expression, range(charsets_1, 3243, 83, 71, 71), "standardCharsetMap.put(StandardCharsets.UTF_16LE.name(),StandardCharsets.UTF_16LE)").
expr(charsets_1_expr11, method_invocation, charsets_1_expr10, (arguments, 0), range(charsets_1, 3266, 32, 71, 71), "StandardCharsets.UTF_16LE.name()").
expr(charsets_1_expr12, method_invocation, charsets_1_stmt7, expression, range(charsets_1, 3336, 77, 72, 72), "standardCharsetMap.put(StandardCharsets.UTF_8.name(),StandardCharsets.UTF_8)").
expr(charsets_1_expr13, method_invocation, charsets_1_expr12, (arguments, 0), range(charsets_1, 3359, 29, 72, 72), "StandardCharsets.UTF_8.name()").
expr(charsets_1_expr14, assignment, charsets_1_stmt8, expression, range(charsets_1, 3423, 76, 73, 73), "STANDARD_CHARSET_MAP=Collections.unmodifiableSortedMap(standardCharsetMap)").
expr(charsets_1_expr15, method_invocation, charsets_1_expr14, right_hand_side, range(charsets_1, 3446, 53, 73, 73), "Collections.unmodifiableSortedMap(standardCharsetMap)").
expr(charsets_1_expr16, conditional_expression, charsets_1_stmt9, expression, range(charsets_1, 7626, 52, 183, 183), "charset == null ? Charset.defaultCharset() : charset").
expr(charsets_1_expr17, infix_expression, charsets_1_expr16, expression, range(charsets_1, 7626, 15, 183, 183), "charset == null").
expr(charsets_1_expr18, method_invocation, charsets_1_expr16, then_expression, range(charsets_1, 7644, 24, 183, 183), "Charset.defaultCharset()").
%writer_output_stream_test_1 - org.apache.commons.io.output.WriterOutputStreamTest
expr(writer_output_stream_test_1_expr1, class_instance_creation, writer_output_stream_test_1_code7, initializer, range(writer_output_stream_test_1, 1534, 19, 38, 38), "new StringBuilder()").
expr(writer_output_stream_test_1_expr2, variable_declaration_expression, writer_output_stream_test_1_stmt2, (initializers, 0), range(writer_output_stream_test_1, 1568, 7, 39, 39), "int i=0").
expr(writer_output_stream_test_1_expr3, infix_expression, writer_output_stream_test_1_stmt2, expression, range(writer_output_stream_test_1, 1577, 5, 39, 39), "i < 100").
expr(writer_output_stream_test_1_expr4, postfix_expression, writer_output_stream_test_1_stmt2, (updaters, 0), range(writer_output_stream_test_1, 1584, 3, 39, 39), "i++").
expr(writer_output_stream_test_1_expr5, method_invocation, writer_output_stream_test_1_stmt3, expression, range(writer_output_stream_test_1, 1603, 26, 40, 40), "buffer.append(TEST_STRING)").
expr(writer_output_stream_test_1_expr6, assignment, writer_output_stream_test_1_stmt4, expression, range(writer_output_stream_test_1, 1649, 37, 42, 42), "LARGE_TEST_STRING=buffer.toString()").
expr(writer_output_stream_test_1_expr7, method_invocation, writer_output_stream_test_1_expr6, right_hand_side, range(writer_output_stream_test_1, 1669, 17, 42, 42), "buffer.toString()").
expr(writer_output_stream_test_1_expr8, class_instance_creation, writer_output_stream_test_1_code15, initializer, range(writer_output_stream_test_1, 1729, 12, 45, 45), "new Random()").
expr(writer_output_stream_test_1_expr9, method_invocation, writer_output_stream_test_1_stmt5, expression, range(writer_output_stream_test_1, 3049, 52, 85, 85), "testWithSingleByteWrite(TEST_STRING,(Charset)null)").
expr(writer_output_stream_test_1_expr10, cast_expression, writer_output_stream_test_1_expr9, (arguments, 1), range(writer_output_stream_test_1, 3086, 14, 85, 85), "(Charset)null").
expr(writer_output_stream_test_1_expr11, method_invocation, writer_output_stream_test_1_stmt6, expression, range(writer_output_stream_test_1, 3209, 59, 90, 90), "testWithSingleByteWrite(TEST_STRING,(CharsetDecoder)null)").
expr(writer_output_stream_test_1_expr12, cast_expression, writer_output_stream_test_1_expr11, (arguments, 1), range(writer_output_stream_test_1, 3246, 21, 90, 90), "(CharsetDecoder)null").
expr(writer_output_stream_test_1_expr13, method_invocation, writer_output_stream_test_1_code26, initializer, range(writer_output_stream_test_1, 5717, 48, 161, 161), "testString.getBytes(Charsets.toCharset(charset))").
expr(writer_output_stream_test_1_expr14, method_invocation, writer_output_stream_test_1_expr13, (arguments, 0), range(writer_output_stream_test_1, 5737, 27, 161, 161), "Charsets.toCharset(charset)").
expr(writer_output_stream_test_1_expr15, class_instance_creation, writer_output_stream_test_1_code29, initializer, range(writer_output_stream_test_1, 5803, 18, 162, 162), "new StringWriter()").
expr(writer_output_stream_test_1_expr16, variable_declaration_expression, writer_output_stream_test_1_stmt9, (resources, 0), range(writer_output_stream_test_1, 5836, 70, 163, 163), "final WriterOutputStream out=new WriterOutputStream(writer,charset)").
expr(writer_output_stream_test_1_expr17, class_instance_creation, writer_output_stream_test_1_code33, initializer, range(writer_output_stream_test_1, 5867, 39, 163, 163), "new WriterOutputStream(writer,charset)").
expr(writer_output_stream_test_1_expr18, method_invocation, writer_output_stream_test_1_code40, initializer, range(writer_output_stream_test_1, 6218, 79, 172, 172), "testString.getBytes(CharsetDecoders.toCharsetDecoder(charsetDecoder).charset())").
expr(writer_output_stream_test_1_expr20, method_invocation, writer_output_stream_test_1_expr19, expression, range(writer_output_stream_test_1, 6238, 48, 172, 172), "CharsetDecoders.toCharsetDecoder(charsetDecoder)").
expr(writer_output_stream_test_1_expr19, method_invocation, writer_output_stream_test_1_expr18, (arguments, 0), range(writer_output_stream_test_1, 6238, 58, 172, 172), "CharsetDecoders.toCharsetDecoder(charsetDecoder).charset()").
expr(writer_output_stream_test_1_expr21, class_instance_creation, writer_output_stream_test_1_code43, initializer, range(writer_output_stream_test_1, 6335, 18, 173, 173), "new StringWriter()").
expr(writer_output_stream_test_1_expr22, variable_declaration_expression, writer_output_stream_test_1_stmt12, (resources, 0), range(writer_output_stream_test_1, 6368, 77, 174, 174), "final WriterOutputStream out=new WriterOutputStream(writer,charsetDecoder)").
expr(writer_output_stream_test_1_expr23, class_instance_creation, writer_output_stream_test_1_code47, initializer, range(writer_output_stream_test_1, 6399, 46, 174, 174), "new WriterOutputStream(writer,charsetDecoder)").
%charset_decoders_1 - org.apache.commons.io.charset.CharsetDecoders
expr(charset_decoders_1_expr2, infix_expression, charset_decoders_1_expr1, expression, range(charset_decoders_1, 1358, 22, 37, 37), "charsetDecoder != null").
expr(charset_decoders_1_expr1, conditional_expression, charset_decoders_1_stmt1, expression, range(charset_decoders_1, 1358, 79, 37, 37), "charsetDecoder != null ? charsetDecoder : Charset.defaultCharset().newDecoder()").
expr(charset_decoders_1_expr4, method_invocation, charset_decoders_1_expr3, expression, range(charset_decoders_1, 1400, 24, 37, 37), "Charset.defaultCharset()").
expr(charset_decoders_1_expr3, method_invocation, charset_decoders_1_expr1, else_expression, range(charset_decoders_1, 1400, 37, 37, 37), "Charset.defaultCharset().newDecoder()").
%writer_output_stream_1 - org.apache.commons.io.output.WriterOutputStream
expr(writer_output_stream_1_expr1, method_invocation, writer_output_stream_1_code7, initializer, range(writer_output_stream_1, 5666, 24, 121, 121), "ByteBuffer.allocate(128)").
expr(writer_output_stream_1_expr2, constructor_invocation, writer_output_stream_1_block1, (statements, 0), range(writer_output_stream_1, 6933, 42, 152, 152), "this(writer,charset,BUFFER_SIZE,false);").
expr(writer_output_stream_1_expr3, constructor_invocation, writer_output_stream_1_block2, (statements, 0), range(writer_output_stream_1, 7845, 277, 169, 175), "this(writer,charset.newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE).replaceWith(\"?\"),bufferSize,writeImmediately);").
expr(writer_output_stream_1_expr4, method_invocation, writer_output_stream_1_stmt2, (arguments, 1), range(writer_output_stream_1, 7871, 193, 170, 173), "charset.newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE).replaceWith(\"?\")").
expr(writer_output_stream_1_expr5, method_invocation, writer_output_stream_1_expr4, expression, range(writer_output_stream_1, 7871, 155, 170, 172), "charset.newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE)").
expr(writer_output_stream_1_expr6, method_invocation, writer_output_stream_1_expr5, expression, range(writer_output_stream_1, 7871, 85, 170, 171), "charset.newDecoder().onMalformedInput(CodingErrorAction.REPLACE)").
expr(writer_output_stream_1_expr7, method_invocation, writer_output_stream_1_expr6, expression, range(writer_output_stream_1, 7871, 20, 170, 170), "charset.newDecoder()").
expr(writer_output_stream_1_expr8, constructor_invocation, writer_output_stream_1_block3, (statements, 0), range(writer_output_stream_1, 8600, 42, 188, 188), "this(writer,decoder,BUFFER_SIZE,false);").
expr(writer_output_stream_1_expr9, method_invocation, writer_output_stream_1_stmt4, expression, range(writer_output_stream_1, 9536, 46, 206, 206), "checkIbmJdkWithBrokenUTF16(decoder.charset())").
expr(writer_output_stream_1_expr10, method_invocation, writer_output_stream_1_expr9, (arguments, 0), range(writer_output_stream_1, 9564, 17, 206, 206), "decoder.charset()").

%%% Names
%charsets_1 - org.apache.commons.io.Charsets
name(v_standard_charset_map_1, simple_name, charsets_1_code9, name, range(charsets_1, 2796, 18, 66, 66), 'standardCharsetMap').
name(q_case_insensitive_order_1, qualified_name, charsets_1_expr1, (arguments, 0), range(charsets_1, 2831, 29, 66, 66), 'String.CASE_INSENSITIVE_ORDER').
name(t_string_1, simple_name, q_case_insensitive_order_1, qualifier, range(charsets_1, 2831, 6, 66, 66), 'String').
name(v_standard_charset_map_1, simple_name, charsets_1_expr2, expression, range(charsets_1, 2871, 18, 67, 67), 'standardCharsetMap').
name(m_put_2, simple_name, charsets_1_expr2, name, range(charsets_1, 2890, 3, 67, 67), 'put').
name(t_standard_charsets_2, simple_name, q_iso_8859_1_3, qualifier, range(charsets_1, 2894, 16, 67, 67), 'StandardCharsets').
name(q_iso_8859_1_3, qualified_name, charsets_1_expr3, expression, range(charsets_1, 2894, 27, 67, 67), 'StandardCharsets.ISO_8859_1').
name(m_name_3, simple_name, charsets_1_expr3, name, range(charsets_1, 2922, 4, 67, 67), 'name').
name(q_iso_8859_1_2, qualified_name, charsets_1_expr2, (arguments, 1), range(charsets_1, 2930, 27, 67, 67), 'StandardCharsets.ISO_8859_1').
name(t_standard_charsets_2, simple_name, q_iso_8859_1_2, qualifier, range(charsets_1, 2930, 16, 67, 67), 'StandardCharsets').
name(v_standard_charset_map_1, simple_name, charsets_1_expr4, expression, range(charsets_1, 2968, 18, 68, 68), 'standardCharsetMap').
name(m_put_2, simple_name, charsets_1_expr4, name, range(charsets_1, 2987, 3, 68, 68), 'put').
name(t_standard_charsets_2, simple_name, q_us_ascii_4, qualifier, range(charsets_1, 2991, 16, 68, 68), 'StandardCharsets').
name(q_us_ascii_4, qualified_name, charsets_1_expr5, expression, range(charsets_1, 2991, 25, 68, 68), 'StandardCharsets.US_ASCII').
name(m_name_3, simple_name, charsets_1_expr5, name, range(charsets_1, 3017, 4, 68, 68), 'name').
name(t_standard_charsets_2, simple_name, q_us_ascii_3, qualifier, range(charsets_1, 3025, 16, 68, 68), 'StandardCharsets').
name(q_us_ascii_3, qualified_name, charsets_1_expr4, (arguments, 1), range(charsets_1, 3025, 25, 68, 68), 'StandardCharsets.US_ASCII').
name(v_standard_charset_map_1, simple_name, charsets_1_expr6, expression, range(charsets_1, 3061, 18, 69, 69), 'standardCharsetMap').
name(m_put_2, simple_name, charsets_1_expr6, name, range(charsets_1, 3080, 3, 69, 69), 'put').
name(t_standard_charsets_2, simple_name, q_utf_16_5, qualifier, range(charsets_1, 3084, 16, 69, 69), 'StandardCharsets').
name(q_utf_16_5, qualified_name, charsets_1_expr7, expression, range(charsets_1, 3084, 23, 69, 69), 'StandardCharsets.UTF_16').
name(m_name_3, simple_name, charsets_1_expr7, name, range(charsets_1, 3108, 4, 69, 69), 'name').
name(q_utf_16_4, qualified_name, charsets_1_expr6, (arguments, 1), range(charsets_1, 3116, 23, 69, 69), 'StandardCharsets.UTF_16').
name(t_standard_charsets_2, simple_name, q_utf_16_4, qualifier, range(charsets_1, 3116, 16, 69, 69), 'StandardCharsets').
name(v_standard_charset_map_1, simple_name, charsets_1_expr8, expression, range(charsets_1, 3150, 18, 70, 70), 'standardCharsetMap').
name(m_put_2, simple_name, charsets_1_expr8, name, range(charsets_1, 3169, 3, 70, 70), 'put').
name(t_standard_charsets_2, simple_name, q_utf_16be_6, qualifier, range(charsets_1, 3173, 16, 70, 70), 'StandardCharsets').
name(q_utf_16be_6, qualified_name, charsets_1_expr9, expression, range(charsets_1, 3173, 25, 70, 70), 'StandardCharsets.UTF_16BE').
name(m_name_3, simple_name, charsets_1_expr9, name, range(charsets_1, 3199, 4, 70, 70), 'name').
name(q_utf_16be_5, qualified_name, charsets_1_expr8, (arguments, 1), range(charsets_1, 3207, 25, 70, 70), 'StandardCharsets.UTF_16BE').
name(t_standard_charsets_2, simple_name, q_utf_16be_5, qualifier, range(charsets_1, 3207, 16, 70, 70), 'StandardCharsets').
name(v_standard_charset_map_1, simple_name, charsets_1_expr10, expression, range(charsets_1, 3243, 18, 71, 71), 'standardCharsetMap').
name(m_put_2, simple_name, charsets_1_expr10, name, range(charsets_1, 3262, 3, 71, 71), 'put').
name(q_utf_16le_7, qualified_name, charsets_1_expr11, expression, range(charsets_1, 3266, 25, 71, 71), 'StandardCharsets.UTF_16LE').
name(t_standard_charsets_2, simple_name, q_utf_16le_7, qualifier, range(charsets_1, 3266, 16, 71, 71), 'StandardCharsets').
name(m_name_3, simple_name, charsets_1_expr11, name, range(charsets_1, 3292, 4, 71, 71), 'name').
name(q_utf_16le_6, qualified_name, charsets_1_expr10, (arguments, 1), range(charsets_1, 3300, 25, 71, 71), 'StandardCharsets.UTF_16LE').
name(t_standard_charsets_2, simple_name, q_utf_16le_6, qualifier, range(charsets_1, 3300, 16, 71, 71), 'StandardCharsets').
name(v_standard_charset_map_1, simple_name, charsets_1_expr12, expression, range(charsets_1, 3336, 18, 72, 72), 'standardCharsetMap').
name(m_put_2, simple_name, charsets_1_expr12, name, range(charsets_1, 3355, 3, 72, 72), 'put').
name(q_utf_8_8, qualified_name, charsets_1_expr13, expression, range(charsets_1, 3359, 22, 72, 72), 'StandardCharsets.UTF_8').
name(t_standard_charsets_2, simple_name, q_utf_8_8, qualifier, range(charsets_1, 3359, 16, 72, 72), 'StandardCharsets').
name(m_name_3, simple_name, charsets_1_expr13, name, range(charsets_1, 3382, 4, 72, 72), 'name').
name(t_standard_charsets_2, simple_name, q_utf_8_7, qualifier, range(charsets_1, 3390, 16, 72, 72), 'StandardCharsets').
name(q_utf_8_7, qualified_name, charsets_1_expr12, (arguments, 1), range(charsets_1, 3390, 22, 72, 72), 'StandardCharsets.UTF_8').
name(f_standard_charset_map_8, simple_name, charsets_1_expr14, left_hand_side, range(charsets_1, 3423, 20, 73, 73), 'STANDARD_CHARSET_MAP').
name(t_collections_3, simple_name, charsets_1_expr15, expression, range(charsets_1, 3446, 11, 73, 73), 'Collections').
name(m_unmodifiable_sorted_map_4, simple_name, charsets_1_expr15, name, range(charsets_1, 3458, 21, 73, 73), 'unmodifiableSortedMap').
name(v_standard_charset_map_1, simple_name, charsets_1_expr15, (arguments, 0), range(charsets_1, 3480, 18, 73, 73), 'standardCharsetMap').
name(f_iso_8859_1_9, simple_name, charsets_1_code17, name, range(charsets_1, 3954, 10, 86, 86), 'ISO_8859_1').
name(q_iso_8859_1_8, qualified_name, charsets_1_code17, initializer, range(charsets_1, 3967, 27, 86, 86), 'StandardCharsets.ISO_8859_1').
name(t_standard_charsets_2, simple_name, q_iso_8859_1_8, qualifier, range(charsets_1, 3967, 16, 86, 86), 'StandardCharsets').
name(f_us_ascii_10, simple_name, charsets_1_code23, name, range(charsets_1, 4516, 8, 100, 100), 'US_ASCII').
name(q_us_ascii_8, qualified_name, charsets_1_code23, initializer, range(charsets_1, 4527, 25, 100, 100), 'StandardCharsets.US_ASCII').
name(t_standard_charsets_2, simple_name, q_us_ascii_8, qualifier, range(charsets_1, 4527, 16, 100, 100), 'StandardCharsets').
name(f_utf_16_11, simple_name, charsets_1_code29, name, range(charsets_1, 5140, 6, 115, 115), 'UTF_16').
name(q_utf_16_8, qualified_name, charsets_1_code29, initializer, range(charsets_1, 5149, 23, 115, 115), 'StandardCharsets.UTF_16').
name(t_standard_charsets_2, simple_name, q_utf_16_8, qualifier, range(charsets_1, 5149, 16, 115, 115), 'StandardCharsets').
name(f_utf_16be_12, simple_name, charsets_1_code35, name, range(charsets_1, 5652, 8, 129, 129), 'UTF_16BE').
name(t_standard_charsets_2, simple_name, q_utf_16be_8, qualifier, range(charsets_1, 5663, 16, 129, 129), 'StandardCharsets').
name(q_utf_16be_8, qualified_name, charsets_1_code35, initializer, range(charsets_1, 5663, 25, 129, 129), 'StandardCharsets.UTF_16BE').
name(f_utf_16le_13, simple_name, charsets_1_code41, name, range(charsets_1, 6171, 8, 143, 143), 'UTF_16LE').
name(q_utf_16le_8, qualified_name, charsets_1_code41, initializer, range(charsets_1, 6182, 25, 143, 143), 'StandardCharsets.UTF_16LE').
name(t_standard_charsets_2, simple_name, q_utf_16le_8, qualifier, range(charsets_1, 6182, 16, 143, 143), 'StandardCharsets').
name(f_utf_8_14, simple_name, charsets_1_code47, name, range(charsets_1, 6662, 5, 157, 157), 'UTF_8').
name(t_standard_charsets_2, simple_name, q_utf_8_8, qualifier, range(charsets_1, 6670, 16, 157, 157), 'StandardCharsets').
name(q_utf_8_8, qualified_name, charsets_1_code47, initializer, range(charsets_1, 6670, 22, 157, 157), 'StandardCharsets.UTF_8').
name(p_charset_15, simple_name, charsets_1_expr17, left_operand, range(charsets_1, 7626, 7, 183, 183), 'charset').
name(t_charset_4, simple_name, charsets_1_expr18, expression, range(charsets_1, 7644, 7, 183, 183), 'Charset').
name(m_default_charset_7, simple_name, charsets_1_expr18, name, range(charsets_1, 7652, 14, 183, 183), 'defaultCharset').
name(p_charset_15, simple_name, charsets_1_expr16, else_expression, range(charsets_1, 7671, 7, 183, 183), 'charset').
%writer_output_stream_test_1 - org.apache.commons.io.output.WriterOutputStreamTest
name(t_writer_output_stream_test_6, simple_name, writer_output_stream_test_1_code2, name, range(writer_output_stream_test_1, 1297, 22, 33, 33), 'WriterOutputStreamTest').
name(v_buffer_46, simple_name, writer_output_stream_test_1_code7, name, range(writer_output_stream_test_1, 1525, 6, 38, 38), 'buffer').
name(v_i_47, simple_name, writer_output_stream_test_1_code10, name, range(writer_output_stream_test_1, 1572, 1, 39, 39), 'i').
name(v_i_47, simple_name, writer_output_stream_test_1_expr3, left_operand, range(writer_output_stream_test_1, 1577, 1, 39, 39), 'i').
name(v_i_47, simple_name, writer_output_stream_test_1_expr4, operand, range(writer_output_stream_test_1, 1584, 1, 39, 39), 'i').
name(v_buffer_46, simple_name, writer_output_stream_test_1_expr5, expression, range(writer_output_stream_test_1, 1603, 6, 40, 40), 'buffer').
name(m_append_32, simple_name, writer_output_stream_test_1_expr5, name, range(writer_output_stream_test_1, 1610, 6, 40, 40), 'append').
name(f_test_string_48, simple_name, writer_output_stream_test_1_expr5, (arguments, 0), range(writer_output_stream_test_1, 1617, 11, 40, 40), 'TEST_STRING').
name(f_large_test_string_49, simple_name, writer_output_stream_test_1_expr6, left_hand_side, range(writer_output_stream_test_1, 1649, 17, 42, 42), 'LARGE_TEST_STRING').
name(v_buffer_46, simple_name, writer_output_stream_test_1_expr7, expression, range(writer_output_stream_test_1, 1669, 6, 42, 42), 'buffer').
name(m_to_string_33, simple_name, writer_output_stream_test_1_expr7, name, range(writer_output_stream_test_1, 1676, 8, 42, 42), 'toString').
name(f_random_50, simple_name, writer_output_stream_test_1_code15, name, range(writer_output_stream_test_1, 1720, 6, 45, 45), 'random').
name(m_test_with_single_byte_write_42, simple_name, writer_output_stream_test_1_expr9, name, range(writer_output_stream_test_1, 3049, 23, 85, 85), 'testWithSingleByteWrite').
name(f_test_string_48, simple_name, writer_output_stream_test_1_expr9, (arguments, 0), range(writer_output_stream_test_1, 3073, 11, 85, 85), 'TEST_STRING').
name(m_test_with_single_byte_write_44, simple_name, writer_output_stream_test_1_expr11, name, range(writer_output_stream_test_1, 3209, 23, 90, 90), 'testWithSingleByteWrite').
name(f_test_string_48, simple_name, writer_output_stream_test_1_expr11, (arguments, 0), range(writer_output_stream_test_1, 3233, 11, 90, 90), 'TEST_STRING').
name(v_bytes_55, simple_name, writer_output_stream_test_1_code26, name, range(writer_output_stream_test_1, 5709, 5, 161, 161), 'bytes').
name(p_test_string_53, simple_name, writer_output_stream_test_1_expr13, expression, range(writer_output_stream_test_1, 5717, 10, 161, 161), 'testString').
name(m_get_bytes_54, simple_name, writer_output_stream_test_1_expr13, name, range(writer_output_stream_test_1, 5728, 8, 161, 161), 'getBytes').
name(t_charsets_7, simple_name, writer_output_stream_test_1_expr14, expression, range(writer_output_stream_test_1, 5737, 8, 161, 161), 'Charsets').
name(m_to_charset_6, simple_name, writer_output_stream_test_1_expr14, name, range(writer_output_stream_test_1, 5746, 9, 161, 161), 'toCharset').
name(p_charset_54, simple_name, writer_output_stream_test_1_expr14, (arguments, 0), range(writer_output_stream_test_1, 5756, 7, 161, 161), 'charset').
name(v_writer_56, simple_name, writer_output_stream_test_1_code29, name, range(writer_output_stream_test_1, 5794, 6, 162, 162), 'writer').
name(v_out_57, simple_name, writer_output_stream_test_1_code33, name, range(writer_output_stream_test_1, 5861, 3, 163, 163), 'out').
name(v_writer_56, simple_name, writer_output_stream_test_1_expr17, (arguments, 0), range(writer_output_stream_test_1, 5890, 6, 163, 163), 'writer').
name(p_charset_54, simple_name, writer_output_stream_test_1_expr17, (arguments, 1), range(writer_output_stream_test_1, 5898, 7, 163, 163), 'charset').
name(v_bytes_60, simple_name, writer_output_stream_test_1_code40, name, range(writer_output_stream_test_1, 6210, 5, 172, 172), 'bytes').
name(p_test_string_58, simple_name, writer_output_stream_test_1_expr18, expression, range(writer_output_stream_test_1, 6218, 10, 172, 172), 'testString').
name(m_get_bytes_54, simple_name, writer_output_stream_test_1_expr18, name, range(writer_output_stream_test_1, 6229, 8, 172, 172), 'getBytes').
name(t_charset_decoders_8, simple_name, writer_output_stream_test_1_expr20, expression, range(writer_output_stream_test_1, 6238, 15, 172, 172), 'CharsetDecoders').
name(m_to_charset_decoder_9, simple_name, writer_output_stream_test_1_expr20, name, range(writer_output_stream_test_1, 6254, 16, 172, 172), 'toCharsetDecoder').
name(p_charset_decoder_59, simple_name, writer_output_stream_test_1_expr20, (arguments, 0), range(writer_output_stream_test_1, 6271, 14, 172, 172), 'charsetDecoder').
name(m_charset_21, simple_name, writer_output_stream_test_1_expr19, name, range(writer_output_stream_test_1, 6287, 7, 172, 172), 'charset').
name(v_writer_61, simple_name, writer_output_stream_test_1_code43, name, range(writer_output_stream_test_1, 6326, 6, 173, 173), 'writer').
name(v_out_62, simple_name, writer_output_stream_test_1_code47, name, range(writer_output_stream_test_1, 6393, 3, 174, 174), 'out').
name(v_writer_61, simple_name, writer_output_stream_test_1_expr23, (arguments, 0), range(writer_output_stream_test_1, 6422, 6, 174, 174), 'writer').
name(p_charset_decoder_59, simple_name, writer_output_stream_test_1_expr23, (arguments, 1), range(writer_output_stream_test_1, 6430, 14, 174, 174), 'charsetDecoder').
%charset_decoders_1 - org.apache.commons.io.charset.CharsetDecoders
name(p_charset_decoder_17, simple_name, charset_decoders_1_expr2, left_operand, range(charset_decoders_1, 1358, 14, 37, 37), 'charsetDecoder').
name(p_charset_decoder_17, simple_name, charset_decoders_1_expr1, then_expression, range(charset_decoders_1, 1383, 14, 37, 37), 'charsetDecoder').
name(t_charset_4, simple_name, charset_decoders_1_expr4, expression, range(charset_decoders_1, 1400, 7, 37, 37), 'Charset').
name(m_default_charset_7, simple_name, charset_decoders_1_expr4, name, range(charset_decoders_1, 1408, 14, 37, 37), 'defaultCharset').
name(m_new_decoder_10, simple_name, charset_decoders_1_expr3, name, range(charset_decoders_1, 1425, 10, 37, 37), 'newDecoder').
%writer_output_stream_1 - org.apache.commons.io.output.WriterOutputStream
name(f_decoder_in_19, simple_name, writer_output_stream_1_code7, name, range(writer_output_stream_1, 5654, 9, 121, 121), 'decoderIn').
name(t_byte_buffer_5, simple_name, writer_output_stream_1_expr1, expression, range(writer_output_stream_1, 5666, 10, 121, 121), 'ByteBuffer').
name(m_allocate_12, simple_name, writer_output_stream_1_expr1, name, range(writer_output_stream_1, 5677, 8, 121, 121), 'allocate').
name(p_writer_21, simple_name, writer_output_stream_1_stmt1, (arguments, 0), range(writer_output_stream_1, 6938, 6, 152, 152), 'writer').
name(p_charset_22, simple_name, writer_output_stream_1_stmt1, (arguments, 1), range(writer_output_stream_1, 6946, 7, 152, 152), 'charset').
name(f_buffer_size_23, simple_name, writer_output_stream_1_stmt1, (arguments, 2), range(writer_output_stream_1, 6955, 11, 152, 152), 'BUFFER_SIZE').
name(p_writer_24, simple_name, writer_output_stream_1_stmt2, (arguments, 0), range(writer_output_stream_1, 7850, 6, 169, 169), 'writer').
name(p_charset_25, simple_name, writer_output_stream_1_expr7, expression, range(writer_output_stream_1, 7871, 7, 170, 170), 'charset').
name(m_new_decoder_10, simple_name, writer_output_stream_1_expr7, name, range(writer_output_stream_1, 7879, 10, 170, 170), 'newDecoder').
name(q_replace_9, qualified_name, writer_output_stream_1_expr6, (arguments, 0), range(writer_output_stream_1, 7930, 25, 171, 171), 'CodingErrorAction.REPLACE').
name(q_replace_8, qualified_name, writer_output_stream_1_expr5, (arguments, 0), range(writer_output_stream_1, 8000, 25, 172, 172), 'CodingErrorAction.REPLACE').
name(p_buffer_size_26, simple_name, writer_output_stream_1_stmt2, (arguments, 2), range(writer_output_stream_1, 8079, 10, 174, 174), 'bufferSize').
name(p_write_immediately_27, simple_name, writer_output_stream_1_stmt2, (arguments, 3), range(writer_output_stream_1, 8104, 16, 175, 175), 'writeImmediately').
name(p_writer_28, simple_name, writer_output_stream_1_stmt3, (arguments, 0), range(writer_output_stream_1, 8605, 6, 188, 188), 'writer').
name(p_decoder_29, simple_name, writer_output_stream_1_stmt3, (arguments, 1), range(writer_output_stream_1, 8613, 7, 188, 188), 'decoder').
name(f_buffer_size_23, simple_name, writer_output_stream_1_stmt3, (arguments, 2), range(writer_output_stream_1, 8622, 11, 188, 188), 'BUFFER_SIZE').
name(p_write_immediately_33, simple_name, writer_output_stream_1_code12, name, range(writer_output_stream_1, 9508, 16, 205, 205), 'writeImmediately').
name(m_check_ibm_jdk_with_broken_utf16_11, simple_name, writer_output_stream_1_expr9, name, range(writer_output_stream_1, 9536, 26, 206, 206), 'checkIbmJdkWithBrokenUTF16').
name(p_decoder_31, simple_name, writer_output_stream_1_expr10, expression, range(writer_output_stream_1, 9564, 7, 206, 206), 'decoder').
name(m_charset_21, simple_name, writer_output_stream_1_expr10, name, range(writer_output_stream_1, 9572, 7, 206, 206), 'charset').

%%% Literals
%charsets_1 - org.apache.commons.io.Charsets
literal(charsets_1_literal1, null_literal, charsets_1_expr17, right_operand, range(charsets_1, 7637, 4, 183, 183), null).
%writer_output_stream_test_1 - org.apache.commons.io.output.WriterOutputStreamTest
literal(writer_output_stream_test_1_literal1, number_literal, writer_output_stream_test_1_code10, initializer, range(writer_output_stream_test_1, 1574, 1, 39, 39), 0).
literal(writer_output_stream_test_1_literal2, number_literal, writer_output_stream_test_1_expr3, right_operand, range(writer_output_stream_test_1, 1579, 3, 39, 39), 100).
literal(writer_output_stream_test_1_literal3, null_literal, writer_output_stream_test_1_expr10, expression, range(writer_output_stream_test_1, 3096, 4, 85, 85), null).
literal(writer_output_stream_test_1_literal4, null_literal, writer_output_stream_test_1_expr12, expression, range(writer_output_stream_test_1, 3263, 4, 90, 90), null).
%charset_decoders_1 - org.apache.commons.io.charset.CharsetDecoders
literal(charset_decoders_1_literal1, null_literal, charset_decoders_1_expr2, right_operand, range(charset_decoders_1, 1376, 4, 37, 37), null).
%writer_output_stream_1 - org.apache.commons.io.output.WriterOutputStream
literal(writer_output_stream_1_literal1, number_literal, writer_output_stream_1_expr1, (arguments, 0), range(writer_output_stream_1, 5686, 3, 121, 121), 128).
literal(writer_output_stream_1_literal2, boolean_literal, writer_output_stream_1_stmt1, (arguments, 3), range(writer_output_stream_1, 6968, 5, 152, 152), false).
literal(writer_output_stream_1_literal3, string_literal, writer_output_stream_1_expr4, (arguments, 0), range(writer_output_stream_1, 8060, 3, 173, 173), "?").
literal(writer_output_stream_1_literal4, boolean_literal, writer_output_stream_1_stmt3, (arguments, 3), range(writer_output_stream_1, 8635, 5, 188, 188), false).

%%% Other Code Entities
%charsets_1 - org.apache.commons.io.Charsets
code(charsets_1_code1, compilation_unit, range(charsets_1, 0, 8232, 1, -1)).
code(charsets_1_code2, type_declaration, charsets_1_code1, (types, 0), range(charsets_1, 1048, 7183, 26, 196)).
code(charsets_1_code3, initializer, charsets_1_code2, (body_declarations, 1), range(charsets_1, 2746, 760, 65, 74)).
code(charsets_1_code4, modifier, charsets_1_stmt1, (modifiers, 0), range(charsets_1, 2763, 5, 66, 66)).
code(charsets_1_code5, parameterized_type, charsets_1_stmt1, type, range(charsets_1, 2769, 26, 66, 66)).
code(charsets_1_code6, simple_type, charsets_1_code5, type, range(charsets_1, 2769, 9, 66, 66)).
code(charsets_1_code7, simple_type, charsets_1_code5, (type_arguments, 0), range(charsets_1, 2779, 6, 66, 66)).
code(charsets_1_code8, simple_type, charsets_1_code5, (type_arguments, 1), range(charsets_1, 2787, 7, 66, 66)).
code(charsets_1_code9, variable_declaration_fragment, charsets_1_stmt1, (fragments, 0), range(charsets_1, 2796, 65, 66, 66)).
code(charsets_1_code11, simple_type, charsets_1_code10, type, range(charsets_1, 2821, 7, 66, 66)).
code(charsets_1_code10, parameterized_type, charsets_1_expr1, type, range(charsets_1, 2821, 9, 66, 66)).
code(charsets_1_code12, field_declaration, charsets_1_code2, (body_declarations, 2), range(charsets_1, 3512, 483, 76, 86)).
code(charsets_1_code13, modifier, charsets_1_code12, (modifiers, 1), range(charsets_1, 3926, 6, 86, 86)).
code(charsets_1_code14, modifier, charsets_1_code12, (modifiers, 2), range(charsets_1, 3933, 6, 86, 86)).
code(charsets_1_code15, modifier, charsets_1_code12, (modifiers, 3), range(charsets_1, 3940, 5, 86, 86)).
code(charsets_1_code16, simple_type, charsets_1_code12, type, range(charsets_1, 3946, 7, 86, 86)).
code(charsets_1_code17, variable_declaration_fragment, charsets_1_code12, (fragments, 0), range(charsets_1, 3954, 40, 86, 86)).
code(charsets_1_code18, field_declaration, charsets_1_code2, (body_declarations, 3), range(charsets_1, 4001, 552, 88, 100)).
code(charsets_1_code19, modifier, charsets_1_code18, (modifiers, 1), range(charsets_1, 4488, 6, 100, 100)).
code(charsets_1_code20, modifier, charsets_1_code18, (modifiers, 2), range(charsets_1, 4495, 6, 100, 100)).
code(charsets_1_code21, modifier, charsets_1_code18, (modifiers, 3), range(charsets_1, 4502, 5, 100, 100)).
code(charsets_1_code22, simple_type, charsets_1_code18, type, range(charsets_1, 4508, 7, 100, 100)).
code(charsets_1_code23, variable_declaration_fragment, charsets_1_code18, (fragments, 0), range(charsets_1, 4516, 36, 100, 100)).
code(charsets_1_code24, field_declaration, charsets_1_code2, (body_declarations, 4), range(charsets_1, 4559, 614, 102, 115)).
code(charsets_1_code25, modifier, charsets_1_code24, (modifiers, 1), range(charsets_1, 5112, 6, 115, 115)).
code(charsets_1_code26, modifier, charsets_1_code24, (modifiers, 2), range(charsets_1, 5119, 6, 115, 115)).
code(charsets_1_code27, modifier, charsets_1_code24, (modifiers, 3), range(charsets_1, 5126, 5, 115, 115)).
code(charsets_1_code28, simple_type, charsets_1_code24, type, range(charsets_1, 5132, 7, 115, 115)).
code(charsets_1_code29, variable_declaration_fragment, charsets_1_code24, (fragments, 0), range(charsets_1, 5140, 32, 115, 115)).
code(charsets_1_code30, field_declaration, charsets_1_code2, (body_declarations, 5), range(charsets_1, 5179, 510, 117, 129)).
code(charsets_1_code31, modifier, charsets_1_code30, (modifiers, 1), range(charsets_1, 5624, 6, 129, 129)).
code(charsets_1_code32, modifier, charsets_1_code30, (modifiers, 2), range(charsets_1, 5631, 6, 129, 129)).
code(charsets_1_code33, modifier, charsets_1_code30, (modifiers, 3), range(charsets_1, 5638, 5, 129, 129)).
code(charsets_1_code34, simple_type, charsets_1_code30, type, range(charsets_1, 5644, 7, 129, 129)).
code(charsets_1_code35, variable_declaration_fragment, charsets_1_code30, (fragments, 0), range(charsets_1, 5652, 36, 129, 129)).
code(charsets_1_code36, field_declaration, charsets_1_code2, (body_declarations, 6), range(charsets_1, 5695, 513, 131, 143)).
code(charsets_1_code37, modifier, charsets_1_code36, (modifiers, 1), range(charsets_1, 6143, 6, 143, 143)).
code(charsets_1_code38, modifier, charsets_1_code36, (modifiers, 2), range(charsets_1, 6150, 6, 143, 143)).
code(charsets_1_code39, modifier, charsets_1_code36, (modifiers, 3), range(charsets_1, 6157, 5, 143, 143)).
code(charsets_1_code40, simple_type, charsets_1_code36, type, range(charsets_1, 6163, 7, 143, 143)).
code(charsets_1_code41, variable_declaration_fragment, charsets_1_code36, (fragments, 0), range(charsets_1, 6171, 36, 143, 143)).
code(charsets_1_code42, field_declaration, charsets_1_code2, (body_declarations, 7), range(charsets_1, 6214, 479, 145, 157)).
code(charsets_1_code43, modifier, charsets_1_code42, (modifiers, 1), range(charsets_1, 6634, 6, 157, 157)).
code(charsets_1_code44, modifier, charsets_1_code42, (modifiers, 2), range(charsets_1, 6641, 6, 157, 157)).
code(charsets_1_code45, modifier, charsets_1_code42, (modifiers, 3), range(charsets_1, 6648, 5, 157, 157)).
code(charsets_1_code46, simple_type, charsets_1_code42, type, range(charsets_1, 6654, 7, 157, 157)).
code(charsets_1_code47, variable_declaration_fragment, charsets_1_code42, (fragments, 0), range(charsets_1, 6662, 30, 157, 157)).
code(charsets_1_code48, method_declaration, charsets_1_code2, (body_declarations, 9), range(charsets_1, 7301, 384, 175, 184)).
%writer_output_stream_test_1 - org.apache.commons.io.output.WriterOutputStreamTest
code(writer_output_stream_test_1_code1, compilation_unit, range(writer_output_stream_test_1, 0, 7466, 1, -1)).
code(writer_output_stream_test_1_code3, modifier, writer_output_stream_test_1_code2, (modifiers, 0), range(writer_output_stream_test_1, 1284, 6, 33, 33)).
code(writer_output_stream_test_1_code2, type_declaration, writer_output_stream_test_1_code1, (types, 0), range(writer_output_stream_test_1, 1284, 6181, 33, 201)).
code(writer_output_stream_test_1_code4, initializer, writer_output_stream_test_1_code2, (body_declarations, 2), range(writer_output_stream_test_1, 1488, 205, 37, 43)).
code(writer_output_stream_test_1_code5, modifier, writer_output_stream_test_1_stmt1, (modifiers, 0), range(writer_output_stream_test_1, 1505, 5, 38, 38)).
code(writer_output_stream_test_1_code6, simple_type, writer_output_stream_test_1_stmt1, type, range(writer_output_stream_test_1, 1511, 13, 38, 38)).
code(writer_output_stream_test_1_code7, variable_declaration_fragment, writer_output_stream_test_1_stmt1, (fragments, 0), range(writer_output_stream_test_1, 1525, 28, 38, 38)).
code(writer_output_stream_test_1_code8, simple_type, writer_output_stream_test_1_expr1, type, range(writer_output_stream_test_1, 1538, 13, 38, 38)).
code(writer_output_stream_test_1_code9, primitive_type, writer_output_stream_test_1_expr2, type, range(writer_output_stream_test_1, 1568, 3, 39, 39)).
code(writer_output_stream_test_1_code10, variable_declaration_fragment, writer_output_stream_test_1_expr2, (fragments, 0), range(writer_output_stream_test_1, 1572, 3, 39, 39)).
code(writer_output_stream_test_1_code12, modifier, writer_output_stream_test_1_code11, (modifiers, 0), range(writer_output_stream_test_1, 1699, 7, 45, 45)).
code(writer_output_stream_test_1_code11, field_declaration, writer_output_stream_test_1_code2, (body_declarations, 3), range(writer_output_stream_test_1, 1699, 43, 45, 45)).
code(writer_output_stream_test_1_code13, modifier, writer_output_stream_test_1_code11, (modifiers, 1), range(writer_output_stream_test_1, 1707, 5, 45, 45)).
code(writer_output_stream_test_1_code14, simple_type, writer_output_stream_test_1_code11, type, range(writer_output_stream_test_1, 1713, 6, 45, 45)).
code(writer_output_stream_test_1_code15, variable_declaration_fragment, writer_output_stream_test_1_code11, (fragments, 0), range(writer_output_stream_test_1, 1720, 21, 45, 45)).
code(writer_output_stream_test_1_code16, simple_type, writer_output_stream_test_1_expr8, type, range(writer_output_stream_test_1, 1733, 6, 45, 45)).
code(writer_output_stream_test_1_code17, method_declaration, writer_output_stream_test_1_code2, (body_declarations, 10), range(writer_output_stream_test_1, 2961, 147, 83, 86)).
code(writer_output_stream_test_1_code18, simple_type, writer_output_stream_test_1_expr10, type, range(writer_output_stream_test_1, 3087, 7, 85, 85)).
code(writer_output_stream_test_1_code19, method_declaration, writer_output_stream_test_1_code2, (body_declarations, 11), range(writer_output_stream_test_1, 3114, 161, 88, 91)).
code(writer_output_stream_test_1_code20, simple_type, writer_output_stream_test_1_expr12, type, range(writer_output_stream_test_1, 3247, 14, 90, 90)).
code(writer_output_stream_test_1_code21, method_declaration, writer_output_stream_test_1_code2, (body_declarations, 21), range(writer_output_stream_test_1, 5582, 481, 160, 169)).
code(writer_output_stream_test_1_code22, modifier, writer_output_stream_test_1_stmt7, (modifiers, 0), range(writer_output_stream_test_1, 5696, 5, 161, 161)).
code(writer_output_stream_test_1_code23, array_type, writer_output_stream_test_1_stmt7, type, range(writer_output_stream_test_1, 5702, 6, 161, 161)).
code(writer_output_stream_test_1_code24, primitive_type, writer_output_stream_test_1_code23, element_type, range(writer_output_stream_test_1, 5702, 4, 161, 161)).
code(writer_output_stream_test_1_code25, dimension, writer_output_stream_test_1_code23, (dimensions, 0), range(writer_output_stream_test_1, 5706, 2, 161, 161)).
code(writer_output_stream_test_1_code26, variable_declaration_fragment, writer_output_stream_test_1_stmt7, (fragments, 0), range(writer_output_stream_test_1, 5709, 56, 161, 161)).
code(writer_output_stream_test_1_code27, modifier, writer_output_stream_test_1_stmt8, (modifiers, 0), range(writer_output_stream_test_1, 5775, 5, 162, 162)).
code(writer_output_stream_test_1_code28, simple_type, writer_output_stream_test_1_stmt8, type, range(writer_output_stream_test_1, 5781, 12, 162, 162)).
code(writer_output_stream_test_1_code29, variable_declaration_fragment, writer_output_stream_test_1_stmt8, (fragments, 0), range(writer_output_stream_test_1, 5794, 27, 162, 162)).
code(writer_output_stream_test_1_code30, simple_type, writer_output_stream_test_1_expr15, type, range(writer_output_stream_test_1, 5807, 12, 162, 162)).
code(writer_output_stream_test_1_code31, modifier, writer_output_stream_test_1_expr16, (modifiers, 0), range(writer_output_stream_test_1, 5836, 5, 163, 163)).
code(writer_output_stream_test_1_code32, simple_type, writer_output_stream_test_1_expr16, type, range(writer_output_stream_test_1, 5842, 18, 163, 163)).
code(writer_output_stream_test_1_code33, variable_declaration_fragment, writer_output_stream_test_1_expr16, (fragments, 0), range(writer_output_stream_test_1, 5861, 45, 163, 163)).
code(writer_output_stream_test_1_code34, simple_type, writer_output_stream_test_1_expr17, type, range(writer_output_stream_test_1, 5871, 18, 163, 163)).
code(writer_output_stream_test_1_code35, method_declaration, writer_output_stream_test_1_code2, (body_declarations, 22), range(writer_output_stream_test_1, 6069, 533, 171, 180)).
code(writer_output_stream_test_1_code36, modifier, writer_output_stream_test_1_stmt10, (modifiers, 0), range(writer_output_stream_test_1, 6197, 5, 172, 172)).
code(writer_output_stream_test_1_code37, array_type, writer_output_stream_test_1_stmt10, type, range(writer_output_stream_test_1, 6203, 6, 172, 172)).
code(writer_output_stream_test_1_code38, primitive_type, writer_output_stream_test_1_code37, element_type, range(writer_output_stream_test_1, 6203, 4, 172, 172)).
code(writer_output_stream_test_1_code39, dimension, writer_output_stream_test_1_code37, (dimensions, 0), range(writer_output_stream_test_1, 6207, 2, 172, 172)).
code(writer_output_stream_test_1_code40, variable_declaration_fragment, writer_output_stream_test_1_stmt10, (fragments, 0), range(writer_output_stream_test_1, 6210, 87, 172, 172)).
code(writer_output_stream_test_1_code41, modifier, writer_output_stream_test_1_stmt11, (modifiers, 0), range(writer_output_stream_test_1, 6307, 5, 173, 173)).
code(writer_output_stream_test_1_code42, simple_type, writer_output_stream_test_1_stmt11, type, range(writer_output_stream_test_1, 6313, 12, 173, 173)).
code(writer_output_stream_test_1_code43, variable_declaration_fragment, writer_output_stream_test_1_stmt11, (fragments, 0), range(writer_output_stream_test_1, 6326, 27, 173, 173)).
code(writer_output_stream_test_1_code44, simple_type, writer_output_stream_test_1_expr21, type, range(writer_output_stream_test_1, 6339, 12, 173, 173)).
code(writer_output_stream_test_1_code45, modifier, writer_output_stream_test_1_expr22, (modifiers, 0), range(writer_output_stream_test_1, 6368, 5, 174, 174)).
code(writer_output_stream_test_1_code46, simple_type, writer_output_stream_test_1_expr22, type, range(writer_output_stream_test_1, 6374, 18, 174, 174)).
code(writer_output_stream_test_1_code47, variable_declaration_fragment, writer_output_stream_test_1_expr22, (fragments, 0), range(writer_output_stream_test_1, 6393, 52, 174, 174)).
code(writer_output_stream_test_1_code48, simple_type, writer_output_stream_test_1_expr23, type, range(writer_output_stream_test_1, 6403, 18, 174, 174)).
%charset_decoders_1 - org.apache.commons.io.charset.CharsetDecoders
code(charset_decoders_1_code1, compilation_unit, range(charset_decoders_1, 0, 1448, 1, -1)).
code(charset_decoders_1_code2, type_declaration, charset_decoders_1_code1, (types, 0), range(charset_decoders_1, 918, 529, 23, 40)).
code(charset_decoders_1_code3, method_declaration, charset_decoders_1_code2, (body_declarations, 0), range(charset_decoders_1, 1020, 424, 30, 38)).
%writer_output_stream_1 - org.apache.commons.io.output.WriterOutputStream
code(writer_output_stream_1_code1, compilation_unit, range(writer_output_stream_1, 0, 14551, 1, -1)).
code(writer_output_stream_1_code2, type_declaration, writer_output_stream_1_code1, (types, 0), range(writer_output_stream_1, 1132, 13418, 29, 348)).
code(writer_output_stream_1_code3, field_declaration, writer_output_stream_1_code2, (body_declarations, 5), range(writer_output_stream_1, 5460, 231, 116, 121)).
code(writer_output_stream_1_code4, modifier, writer_output_stream_1_code3, (modifiers, 0), range(writer_output_stream_1, 5629, 7, 121, 121)).
code(writer_output_stream_1_code5, modifier, writer_output_stream_1_code3, (modifiers, 1), range(writer_output_stream_1, 5637, 5, 121, 121)).
code(writer_output_stream_1_code6, simple_type, writer_output_stream_1_code3, type, range(writer_output_stream_1, 5643, 10, 121, 121)).
code(writer_output_stream_1_code7, variable_declaration_fragment, writer_output_stream_1_code3, (fragments, 0), range(writer_output_stream_1, 5654, 36, 121, 121)).
code(writer_output_stream_1_code8, method_declaration, writer_output_stream_1_code2, (body_declarations, 8), range(writer_output_stream_1, 6491, 490, 143, 153)).
code(writer_output_stream_1_code9, method_declaration, writer_output_stream_1_code2, (body_declarations, 9), range(writer_output_stream_1, 6987, 1141, 155, 176)).
code(writer_output_stream_1_code10, method_declaration, writer_output_stream_1_code2, (body_declarations, 10), range(writer_output_stream_1, 8134, 514, 178, 189)).
code(writer_output_stream_1_code11, method_declaration, writer_output_stream_1_code2, (body_declarations, 11), range(writer_output_stream_1, 8654, 1101, 191, 211)).
code(writer_output_stream_1_code13, modifier, writer_output_stream_1_code12, (modifiers, 0), range(writer_output_stream_1, 9494, 5, 205, 205)).
code(writer_output_stream_1_code12, single_variable_declaration, writer_output_stream_1_code11, (parameters, 3), range(writer_output_stream_1, 9494, 30, 205, 205)).
code(writer_output_stream_1_code14, primitive_type, writer_output_stream_1_code12, type, range(writer_output_stream_1, 9500, 7, 205, 205)).

%%% Name References

name_ref(t_byte_buffer_5, type, 'ByteBuffer', 'Ljava/nio/ByteBuffer;').
name_ref(t_charset_4, type, 'Charset', 'Ljava/nio/charset/Charset;').
name_ref(t_charset_decoders_8, type, 'CharsetDecoders', 'Lorg/apache/commons/io/charset/CharsetDecoders;').
name_ref(t_charsets_7, type, 'Charsets', 'Lorg/apache/commons/io/Charsets;').
name_ref(t_collections_3, type, 'Collections', 'Ljava/util/Collections;').
name_ref(t_standard_charsets_2, type, 'StandardCharsets', 'Ljava/nio/charset/StandardCharsets;').
name_ref(t_string_1, type, 'String', 'Ljava/lang/String;').
name_ref(t_writer_output_stream_test_6, type, 'WriterOutputStreamTest', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;').
name_ref(v_writer_56, var, 'writer', 'writer_output_stream_test_1;writer_line_163').
name_ref(v_writer_61, var, 'writer', 'writer_output_stream_test_1;writer_line_174').
name_ref(p_charset_22, param, 'charset', 'writer_output_stream_1;charset_line_152').
name_ref(p_charset_25, param, 'charset', 'writer_output_stream_1;charset_line_170').
name_ref(p_charset_54, param, 'charset', 'writer_output_stream_test_1;charset_line_163').
name_ref(p_charset_decoder_59, param, 'charsetDecoder', 'writer_output_stream_test_1;charsetDecoder_line_174').
name_ref(p_decoder_29, param, 'decoder', 'writer_output_stream_1;decoder_line_188').
name_ref(p_writer_21, param, 'writer', 'writer_output_stream_1;writer_line_152').
name_ref(p_writer_24, param, 'writer', 'writer_output_stream_1;writer_line_169').
name_ref(p_writer_28, param, 'writer', 'writer_output_stream_1;writer_line_188').
name_ref(f_buffer_size_23, field, 'BUFFER_SIZE', 'writer_output_stream_1;BUFFER_SIZE_line_152').
name_ref(v_buffer_46, var, 'buffer', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;#0#buffer').
name_ref(v_bytes_55, var, 'bytes', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#bytes').
name_ref(v_bytes_60, var, 'bytes', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/CharsetDecoder;)V|Ljava/io/IOException;#bytes').
name_ref(v_i_47, var, 'i', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;#0#0#i').
name_ref(v_out_57, var, 'out', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#0#0#out').
name_ref(v_out_62, var, 'out', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/CharsetDecoder;)V|Ljava/io/IOException;#0#0#out').
name_ref(v_standard_charset_map_1, var, 'standardCharsetMap', 'Lorg/apache/commons/io/Charsets;#0#standardCharsetMap').
name_ref(v_writer_56, var, 'writer', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#writer').
name_ref(v_writer_61, var, 'writer', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/CharsetDecoder;)V|Ljava/io/IOException;#writer').
name_ref(p_b_41, param, 'b', 'Lorg/apache/commons/io/output/WriterOutputStream;.write([B)V|Ljava/io/IOException;#b#0#0').
name_ref(p_b_42, param, 'b', 'Lorg/apache/commons/io/output/WriterOutputStream;.write([BII)V|Ljava/io/IOException;#b#0#0').
name_ref(p_b_45, param, 'b', 'Lorg/apache/commons/io/output/WriterOutputStream;.write(I)V|Ljava/io/IOException;#b#0#0').
name_ref(p_buffer_size_26, param, 'bufferSize', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/Charset;IZ)V#bufferSize#0#2').
name_ref(p_buffer_size_32, param, 'bufferSize', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;IZ)V#bufferSize#0#2').
name_ref(p_buffer_size_38, param, 'bufferSize', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/lang/String;IZ)V#bufferSize#0#2').
name_ref(p_charset_15, param, 'charset', 'Lorg/apache/commons/io/Charsets;.toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;#charset#0#0').
name_ref(p_charset_18, param, 'charset', 'Lorg/apache/commons/io/output/WriterOutputStream;.checkIbmJdkWithBrokenUTF16(Ljava/nio/charset/Charset;)V#charset#0#0').
name_ref(p_charset_22, param, 'charset', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/Charset;)V#charset#0#1').
name_ref(p_charset_25, param, 'charset', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/Charset;IZ)V#charset#0#1').
name_ref(p_charset_54, param, 'charset', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_decoder_17, param, 'charsetDecoder', 'Lorg/apache/commons/io/charset/CharsetDecoders;.toCharsetDecoder(Ljava/nio/charset/CharsetDecoder;)Ljava/nio/charset/CharsetDecoder;#charsetDecoder#0#0').
name_ref(p_charset_decoder_59, param, 'charsetDecoder', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/CharsetDecoder;)V|Ljava/io/IOException;#charsetDecoder#0#1').
name_ref(p_charset_name_16, param, 'charsetName', 'Lorg/apache/commons/io/Charsets;.toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;|Ljava/nio/charset/UnsupportedCharsetException;#charsetName#0#0').
name_ref(p_charset_name_35, param, 'charsetName', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/lang/String;)V#charsetName#0#1').
name_ref(p_charset_name_37, param, 'charsetName', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/lang/String;IZ)V#charsetName#0#1').
name_ref(p_charset_name_52, param, 'charsetName', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithBufferedWrite(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_64, param, 'charsetName', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_decoder_29, param, 'decoder', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;)V#decoder#0#1').
name_ref(p_decoder_31, param, 'decoder', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;IZ)V#decoder#0#1').
name_ref(p_end_of_input_40, param, 'endOfInput', 'Lorg/apache/commons/io/output/WriterOutputStream;.processInput(Z)V|Ljava/io/IOException;#endOfInput#0#0').
name_ref(p_len_44, param, 'len', 'Lorg/apache/commons/io/output/WriterOutputStream;.write([BII)V|Ljava/io/IOException;#len#0#2').
name_ref(p_off_43, param, 'off', 'Lorg/apache/commons/io/output/WriterOutputStream;.write([BII)V|Ljava/io/IOException;#off#0#1').
name_ref(p_test_string_51, param, 'testString', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithBufferedWrite(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#testString#0#0').
name_ref(p_test_string_53, param, 'testString', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#testString#0#0').
name_ref(p_test_string_58, param, 'testString', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/CharsetDecoder;)V|Ljava/io/IOException;#testString#0#0').
name_ref(p_test_string_63, param, 'testString', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#testString#0#0').
name_ref(p_write_immediately_27, param, 'writeImmediately', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/Charset;IZ)V#writeImmediately#0#3').
name_ref(p_write_immediately_33, param, 'writeImmediately', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;IZ)V#writeImmediately#0#3').
name_ref(p_write_immediately_39, param, 'writeImmediately', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/lang/String;IZ)V#writeImmediately#0#3').
name_ref(p_writer_20, param, 'writer', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;)V#writer#0#0').
name_ref(p_writer_21, param, 'writer', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/Charset;)V#writer#0#0').
name_ref(p_writer_24, param, 'writer', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/Charset;IZ)V#writer#0#0').
name_ref(p_writer_28, param, 'writer', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;)V#writer#0#0').
name_ref(p_writer_30, param, 'writer', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;IZ)V#writer#0#0').
name_ref(p_writer_34, param, 'writer', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/lang/String;)V#writer#0#0').
name_ref(p_writer_36, param, 'writer', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/lang/String;IZ)V#writer#0#0').
name_ref(f_buffer_size_23, field, 'BUFFER_SIZE', 'Lorg/apache/commons/io/output/WriterOutputStream;.BUFFER_SIZE)I').
name_ref(f_decoder_in_19, field, 'decoderIn', 'Lorg/apache/commons/io/output/WriterOutputStream;.decoderIn)Ljava/nio/ByteBuffer;').
name_ref(f_iso_8859_1_2, field, 'ISO_8859_1', 'Ljava/nio/charset/StandardCharsets;.ISO_8859_1)Ljava/nio/charset/Charset;').
name_ref(f_iso_8859_1_9, field, 'ISO_8859_1', 'Lorg/apache/commons/io/Charsets;.ISO_8859_1)Ljava/nio/charset/Charset;').
name_ref(f_large_test_string_49, field, 'LARGE_TEST_STRING', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.LARGE_TEST_STRING)Ljava/lang/String;').
name_ref(f_random_50, field, 'random', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.random)Ljava/util/Random;').
name_ref(f_standard_charset_map_8, field, 'STANDARD_CHARSET_MAP', 'Lorg/apache/commons/io/Charsets;.STANDARD_CHARSET_MAP)Ljava/util/SortedMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;').
name_ref(f_test_string_48, field, 'TEST_STRING', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.TEST_STRING)Ljava/lang/String;').
name_ref(f_us_ascii_10, field, 'US_ASCII', 'Lorg/apache/commons/io/Charsets;.US_ASCII)Ljava/nio/charset/Charset;').
name_ref(f_us_ascii_3, field, 'US_ASCII', 'Ljava/nio/charset/StandardCharsets;.US_ASCII)Ljava/nio/charset/Charset;').
name_ref(f_utf_16_11, field, 'UTF_16', 'Lorg/apache/commons/io/Charsets;.UTF_16)Ljava/nio/charset/Charset;').
name_ref(f_utf_16_4, field, 'UTF_16', 'Ljava/nio/charset/StandardCharsets;.UTF_16)Ljava/nio/charset/Charset;').
name_ref(f_utf_16be_12, field, 'UTF_16BE', 'Lorg/apache/commons/io/Charsets;.UTF_16BE)Ljava/nio/charset/Charset;').
name_ref(f_utf_16be_5, field, 'UTF_16BE', 'Ljava/nio/charset/StandardCharsets;.UTF_16BE)Ljava/nio/charset/Charset;').
name_ref(f_utf_16le_13, field, 'UTF_16LE', 'Lorg/apache/commons/io/Charsets;.UTF_16LE)Ljava/nio/charset/Charset;').
name_ref(f_utf_16le_6, field, 'UTF_16LE', 'Ljava/nio/charset/StandardCharsets;.UTF_16LE)Ljava/nio/charset/Charset;').
name_ref(f_utf_8_14, field, 'UTF_8', 'Lorg/apache/commons/io/Charsets;.UTF_8)Ljava/nio/charset/Charset;').
name_ref(f_utf_8_7, field, 'UTF_8', 'Ljava/nio/charset/StandardCharsets;.UTF_8)Ljava/nio/charset/Charset;').
name_ref(m_allocate_12, method, 'allocate', 'Ljava/nio/ByteBuffer;.allocate(I)Ljava/nio/ByteBuffer;').
name_ref(m_append_32, method, 'append', 'Ljava/lang/StringBuilder;.append(Ljava/lang/String;)Ljava/lang/StringBuilder;').
name_ref(m_charset_21, method, 'charset', 'Ljava/nio/charset/CharsetDecoder;.charset()Ljava/nio/charset/Charset;').
name_ref(m_check_ibm_jdk_with_broken_utf16_11, method, 'checkIbmJdkWithBrokenUTF16', 'Lorg/apache/commons/io/output/WriterOutputStream;.checkIbmJdkWithBrokenUTF16(Ljava/nio/charset/Charset;)V').
name_ref(m_close_24, method, 'close', 'Lorg/apache/commons/io/output/WriterOutputStream;.close()V|Ljava/io/IOException;').
name_ref(m_default_charset_7, method, 'defaultCharset', 'Ljava/nio/charset/Charset;.defaultCharset()Ljava/nio/charset/Charset;').
name_ref(m_flush_25, method, 'flush', 'Lorg/apache/commons/io/output/WriterOutputStream;.flush()V|Ljava/io/IOException;').
name_ref(m_flush_output_26, method, 'flushOutput', 'Lorg/apache/commons/io/output/WriterOutputStream;.flushOutput()V|Ljava/io/IOException;').
name_ref(m_get_bytes_54, method, 'getBytes', 'Ljava/lang/String;.getBytes(Ljava/nio/charset/Charset;)[B').
name_ref(m_name_3, method, 'name', 'Ljava/nio/charset/Charset;.name()Ljava/lang/String;').
name_ref(m_new_decoder_10, method, 'newDecoder', 'Ljava/nio/charset/Charset;.newDecoder()Ljava/nio/charset/CharsetDecoder;').
name_ref(m_on_malformed_input_19, method, 'onMalformedInput', 'Ljava/nio/charset/CharsetDecoder;.onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;').
name_ref(m_on_unmappable_character_18, method, 'onUnmappableCharacter', 'Ljava/nio/charset/CharsetDecoder;.onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;').
name_ref(m_process_input_27, method, 'processInput', 'Lorg/apache/commons/io/output/WriterOutputStream;.processInput(Z)V|Ljava/io/IOException;').
name_ref(m_put_2, method, 'put', 'Ljava/util/Map;.put(TK;TV;)TV;').
name_ref(m_random_34, method, 'Random', 'Ljava/util/Random;.()V').
name_ref(m_replace_with_17, method, 'replaceWith', 'Ljava/nio/charset/CharsetDecoder;.replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;').
name_ref(m_required_charsets_5, method, 'requiredCharsets', 'Lorg/apache/commons/io/Charsets;.requiredCharsets()Ljava/util/SortedMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;').
name_ref(m_string_builder_31, method, 'StringBuilder', 'Ljava/lang/StringBuilder;.()V').
name_ref(m_string_writer_55, method, 'StringWriter', 'Ljava/io/StringWriter;.()V').
name_ref(m_test_flush_35, method, 'testFlush', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testFlush()V|Ljava/io/IOException;').
name_ref(m_test_large_utf8charset_with_buffered_write_36, method, 'testLargeUTF8CharsetWithBufferedWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testLargeUTF8CharsetWithBufferedWrite()V|Ljava/io/IOException;').
name_ref(m_test_large_utf8charset_with_single_byte_write_37, method, 'testLargeUTF8CharsetWithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testLargeUTF8CharsetWithSingleByteWrite()V|Ljava/io/IOException;').
name_ref(m_test_large_utf8with_buffered_write_38, method, 'testLargeUTF8WithBufferedWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testLargeUTF8WithBufferedWrite()V|Ljava/io/IOException;').
name_ref(m_test_large_utf8with_single_byte_write_39, method, 'testLargeUTF8WithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testLargeUTF8WithSingleByteWrite()V|Ljava/io/IOException;').
name_ref(m_test_null_charset_decoder_with_single_byte_write_43, method, 'testNullCharsetDecoderWithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testNullCharsetDecoderWithSingleByteWrite()V|Ljava/io/IOException;').
name_ref(m_test_null_charset_name_with_single_byte_write_40, method, 'testNullCharsetNameWithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testNullCharsetNameWithSingleByteWrite()V|Ljava/io/IOException;').
name_ref(m_test_null_charset_with_single_byte_write_41, method, 'testNullCharsetWithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testNullCharsetWithSingleByteWrite()V|Ljava/io/IOException;').
name_ref(m_test_utf16bewith_buffered_write_45, method, 'testUTF16BEWithBufferedWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testUTF16BEWithBufferedWrite()V|Ljava/io/IOException;').
name_ref(m_test_utf16bewith_single_byte_write_46, method, 'testUTF16BEWithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testUTF16BEWithSingleByteWrite()V|Ljava/io/IOException;').
name_ref(m_test_utf16lewith_buffered_write_47, method, 'testUTF16LEWithBufferedWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testUTF16LEWithBufferedWrite()V|Ljava/io/IOException;').
name_ref(m_test_utf16lewith_single_byte_write_48, method, 'testUTF16LEWithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testUTF16LEWithSingleByteWrite()V|Ljava/io/IOException;').
name_ref(m_test_utf16with_buffered_write_49, method, 'testUTF16WithBufferedWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testUTF16WithBufferedWrite()V|Ljava/io/IOException;').
name_ref(m_test_utf16with_single_byte_write_50, method, 'testUTF16WithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testUTF16WithSingleByteWrite()V|Ljava/io/IOException;').
name_ref(m_test_utf8with_buffered_write_51, method, 'testUTF8WithBufferedWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testUTF8WithBufferedWrite()V|Ljava/io/IOException;').
name_ref(m_test_utf8with_single_byte_write_52, method, 'testUTF8WithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testUTF8WithSingleByteWrite()V|Ljava/io/IOException;').
name_ref(m_test_with_buffered_write_53, method, 'testWithBufferedWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithBufferedWrite(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_test_with_single_byte_write_42, method, 'testWithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_test_with_single_byte_write_44, method, 'testWithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/nio/charset/CharsetDecoder;)V|Ljava/io/IOException;').
name_ref(m_test_with_single_byte_write_56, method, 'testWithSingleByteWrite', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWithSingleByteWrite(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_test_write_immediately_57, method, 'testWriteImmediately', 'Lorg/apache/commons/io/output/WriterOutputStreamTest;.testWriteImmediately()V|Ljava/io/IOException;').
name_ref(m_to_charset_6, method, 'toCharset', 'Lorg/apache/commons/io/Charsets;.toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;').
name_ref(m_to_charset_8, method, 'toCharset', 'Lorg/apache/commons/io/Charsets;.toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;|Ljava/nio/charset/UnsupportedCharsetException;').
name_ref(m_to_charset_decoder_9, method, 'toCharsetDecoder', 'Lorg/apache/commons/io/charset/CharsetDecoders;.toCharsetDecoder(Ljava/nio/charset/CharsetDecoder;)Ljava/nio/charset/CharsetDecoder;').
name_ref(m_to_string_33, method, 'toString', 'Ljava/lang/StringBuilder;.toString()Ljava/lang/String;').
name_ref(m_tree_map_1, method, 'TreeMap', 'Ljava/util/TreeMap;.(Ljava/util/Comparator<-TK;>;)V').
name_ref(m_unmodifiable_sorted_map_4, method, 'unmodifiableSortedMap', 'Ljava/util/Collections;.unmodifiableSortedMap<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Ljava/util/SortedMap<TK;+TV;>;)Ljava/util/SortedMap<TK;TV;>;').
name_ref(m_write_28, method, 'write', 'Lorg/apache/commons/io/output/WriterOutputStream;.write([B)V|Ljava/io/IOException;').
name_ref(m_write_29, method, 'write', 'Lorg/apache/commons/io/output/WriterOutputStream;.write([BII)V|Ljava/io/IOException;').
name_ref(m_write_30, method, 'write', 'Lorg/apache/commons/io/output/WriterOutputStream;.write(I)V|Ljava/io/IOException;').
name_ref(m_writer_output_stream_13, method, 'WriterOutputStream', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;)V').
name_ref(m_writer_output_stream_14, method, 'WriterOutputStream', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/Charset;)V').
name_ref(m_writer_output_stream_15, method, 'WriterOutputStream', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/Charset;IZ)V').
name_ref(m_writer_output_stream_16, method, 'WriterOutputStream', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;IZ)V').
name_ref(m_writer_output_stream_20, method, 'WriterOutputStream', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;)V').
name_ref(m_writer_output_stream_22, method, 'WriterOutputStream', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/lang/String;)V').
name_ref(m_writer_output_stream_23, method, 'WriterOutputStream', 'Lorg/apache/commons/io/output/WriterOutputStream;.(Ljava/io/Writer;Ljava/lang/String;IZ)V').
name_ref(q_case_insensitive_order_1, q_name, 'String.CASE_INSENSITIVE_ORDER', 'Ljava/lang/String;:Ljava/lang/String;.CASE_INSENSITIVE_ORDER)Ljava/util/Comparator<Ljava/lang/String;>;').
name_ref(q_iso_8859_1_2, q_name, 'StandardCharsets.ISO_8859_1', 'Ljava/nio/charset/StandardCharsets;:Ljava/nio/charset/StandardCharsets;.ISO_8859_1)Ljava/nio/charset/Charset;').
name_ref(q_replace_8, q_name, 'CodingErrorAction.REPLACE', 'Ljava/nio/charset/CodingErrorAction;:Ljava/nio/charset/CodingErrorAction;.REPLACE)Ljava/nio/charset/CodingErrorAction;').
name_ref(q_us_ascii_3, q_name, 'StandardCharsets.US_ASCII', 'Ljava/nio/charset/StandardCharsets;:Ljava/nio/charset/StandardCharsets;.US_ASCII)Ljava/nio/charset/Charset;').
name_ref(q_utf_16_4, q_name, 'StandardCharsets.UTF_16', 'Ljava/nio/charset/StandardCharsets;:Ljava/nio/charset/StandardCharsets;.UTF_16)Ljava/nio/charset/Charset;').
name_ref(q_utf_16be_5, q_name, 'StandardCharsets.UTF_16BE', 'Ljava/nio/charset/StandardCharsets;:Ljava/nio/charset/StandardCharsets;.UTF_16BE)Ljava/nio/charset/Charset;').
name_ref(q_utf_16le_6, q_name, 'StandardCharsets.UTF_16LE', 'Ljava/nio/charset/StandardCharsets;:Ljava/nio/charset/StandardCharsets;.UTF_16LE)Ljava/nio/charset/Charset;').
name_ref(q_utf_8_7, q_name, 'StandardCharsets.UTF_8', 'Ljava/nio/charset/StandardCharsets;:Ljava/nio/charset/StandardCharsets;.UTF_8)Ljava/nio/charset/Charset;').

%%% End of Code Facts

