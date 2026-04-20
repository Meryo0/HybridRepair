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
trace(trace_1, failure_1, 'requireNonNull', line(java_util_objects, 235), failure_1, non_target).
trace(trace_2, trace_1, m_init_writer_11, line(file_writer_with_encoding_1, 226), failure_1, target).
trace(trace_3, trace_2, m_file_writer_with_encoding_10, line(file_writer_with_encoding_1, 184), failure_1, target).
trace(trace_4, trace_3, m_file_writer_with_encoding_9, line(file_writer_with_encoding_1, 171), failure_1, target).
trace(trace_5, trace_4, m_same_encoding_null__charset_constructor_29, line(file_writer_with_encoding_test_1, 124), failure_1, target).
trace(trace_6, trace_5, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_7, trace_6, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_8, trace_7, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_charset_22, null, line(file_writer_with_encoding_1, 171)).
val(p_encoding_24, null, line(file_writer_with_encoding_1, 184)).
val(p_encoding_33, null, line(file_writer_with_encoding_1, 226)).



%%% End of Facts