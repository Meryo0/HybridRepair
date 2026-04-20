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
trace(trace_5, trace_4, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_6, trace_5, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_7, trace_6, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.io.input.ReaderInputStreamTest', 'testConstructNullCharset').
trace(trace_8, failure_2, m_reader_input_stream_6, line(reader_input_stream_1, 149), failure_2, target).
trace(trace_9, trace_8, 'testConstructNullCharset', line(org_apache_commons_io_input_reader_input_stream_test, 139), failure_2, target).
trace(trace_10, trace_9, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_11, trace_10, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).
trace(trace_12, trace_11, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(p_charset_encoder_1, null, line(reader_input_stream_1, 85)).
val(p_charset_encoder_4, null, line(reader_input_stream_1, 94)).
val(p_charset_9, null, line(reader_input_stream_1, 149)).
val(p_charset_encoder_14, null, line(reader_input_stream_1, 177)).
val(p_charset_encoder_14, null, line(reader_input_stream_1, 178)).



%%% End of Facts