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
trace(trace_4, trace_3, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_6, trace_5, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_charset_2, null, line(char_sequence_input_stream_1, 62)).
val(p_charset_5, null, line(char_sequence_input_stream_1, 75)).



%%% End of Facts