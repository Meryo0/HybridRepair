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
trace(trace_5, trace_4, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_6, trace_5, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_7, trace_6, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.io.output.WriterOutputStreamTest', 'testNullCharsetWithSingleByteWrite').
trace(trace_8, failure_2, m_writer_output_stream_15, line(writer_output_stream_1, 170), failure_2, target).
trace(trace_9, trace_8, m_writer_output_stream_14, line(writer_output_stream_1, 152), failure_2, target).
trace(trace_10, trace_9, m_test_with_single_byte_write_42, line(writer_output_stream_test_1, 163), failure_2, target).
trace(trace_11, trace_10, m_test_null_charset_with_single_byte_write_41, line(writer_output_stream_test_1, 85), failure_2, target).
trace(trace_12, trace_11, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_13, trace_12, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).
trace(trace_14, trace_13, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(p_decoder_31, null, line(writer_output_stream_1, 206)).



%%% End of Facts