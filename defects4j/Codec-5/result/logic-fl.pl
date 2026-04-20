%%% Logic-FL Facts
:- style_check(-discontiguous).

%base64_output_stream_1 - org.apache.commons.codec.binary.Base64OutputStream
assign(f_single_byte_109, base64_output_stream_1_expr1, line(base64_output_stream_1, 51)).
param(p_out_110, 1, m_base64_output_stream_67).
param(p_out_111, 1, m_base64_output_stream_68).
param(p_do_encode_112, 2, m_base64_output_stream_68).
method_invoc(base64_output_stream_1_expr2, m_filter_output_stream_69, line(base64_output_stream_1, 73)).
argument(p_out_111, 1, base64_output_stream_1_expr2).
assign(f_do_encode_113, p_do_encode_112, line(base64_output_stream_1, 74)).
assign(f_base_64_114, base64_output_stream_1_expr8, line(base64_output_stream_1, 75)).
method_invoc(base64_output_stream_1_expr8, m_base64_2, line(base64_output_stream_1, 75)).
argument(base64_output_stream_1_literal2, 1, base64_output_stream_1_expr8).
param(p_out_115, 1, m_base64_output_stream_70).
param(p_do_encode_116, 2, m_base64_output_stream_70).
param(p_line_length_117, 3, m_base64_output_stream_70).
param(p_line_separator_118, 4, m_base64_output_stream_70).
param(p_i_119, 1, m_write_71).
throw(m_write_71, ioexception).
param(p_b_120, 1, m_write_72).
param(p_offset_121, 2, m_write_72).
param(p_len_122, 3, m_write_72).
throw(m_write_72, ioexception).
ref(p_b_120, q_length_8, line(base64_output_stream_1, 136)).
ref(p_b_120, q_length_9, line(base64_output_stream_1, 136)).
method_invoc(base64_output_stream_1_expr19, m_decode_16, line(base64_output_stream_1, 142)).
argument(p_b_120, 1, base64_output_stream_1_expr19).
argument(p_offset_121, 2, base64_output_stream_1_expr19).
argument(p_len_122, 3, base64_output_stream_1_expr19).
ref(f_base_64_114, base64_output_stream_1_expr19, line(base64_output_stream_1, 142)).
method_invoc(base64_output_stream_1_expr20, m_flush_73, line(base64_output_stream_1, 144)).
throw(base64_output_stream_1_expr20, ioexception, line(base64_output_stream_1, 144)).
argument(base64_output_stream_1_literal7, 1, base64_output_stream_1_expr20).
param(p_propogate_123, 1, m_flush_73).
throw(m_flush_73, ioexception).
assign(v_avail_124, base64_output_stream_1_expr21, line(base64_output_stream_1, 158)).
method_invoc(base64_output_stream_1_expr21, m_avail_10, line(base64_output_stream_1, 158)).
ref(f_base_64_114, base64_output_stream_1_expr21, line(base64_output_stream_1, 158)).
assign(v_buf_125, base64_output_stream_1_expr23, line(base64_output_stream_1, 160)).
assign(v_c_126, base64_output_stream_1_expr24, line(base64_output_stream_1, 161)).
method_invoc(base64_output_stream_1_expr24, m_read_results_12, line(base64_output_stream_1, 161)).
argument(v_buf_125, 1, base64_output_stream_1_expr24).
argument(base64_output_stream_1_literal9, 2, base64_output_stream_1_expr24).
argument(v_avail_124, 3, base64_output_stream_1_expr24).
ref(f_base_64_114, base64_output_stream_1_expr24, line(base64_output_stream_1, 161)).
method_invoc(base64_output_stream_1_expr26, m_write_74, line(base64_output_stream_1, 163)).
throw(base64_output_stream_1_expr26, ioexception, line(base64_output_stream_1, 163)).
argument(v_buf_125, 1, base64_output_stream_1_expr26).
argument(base64_output_stream_1_literal11, 2, base64_output_stream_1_expr26).
argument(v_c_126, 3, base64_output_stream_1_expr26).
ref(f_out_127, base64_output_stream_1_expr26, line(base64_output_stream_1, 163)).
throw(m_flush_75, ioexception).
throw(m_close_76, ioexception).
method_invoc(base64_output_stream_1_expr27, m_decode_16, line(base64_output_stream_1, 192)).
throw(base64_output_stream_1_expr27, null_pointer_exception, line(base64_output_stream_1, 192)).
argument(f_single_byte_109, 1, base64_output_stream_1_expr27).
argument(base64_output_stream_1_literal12, 2, base64_output_stream_1_expr27).
argument(base64_output_stream_1_expr28, 3, base64_output_stream_1_expr27).
ref(f_base_64_114, base64_output_stream_1_expr27, line(base64_output_stream_1, 192)).

%string_utils_1 - org.apache.commons.codec.binary.StringUtils
param(p_string_159, 1, m_get_bytes_iso8859_1_96).
param(p_string_160, 1, m_get_bytes_us_ascii_97).
param(p_string_161, 1, m_get_bytes_utf16_98).
param(p_string_162, 1, m_get_bytes_utf16_be_99).
param(p_string_163, 1, m_get_bytes_utf16_le_100).
param(p_string_164, 1, m_get_bytes_utf8_53).
return(string_utils_1_expr1, m_get_bytes_utf8_53, line(string_utils_1, 129)).
method_invoc(string_utils_1_expr1, m_get_bytes_unchecked_101, line(string_utils_1, 129)).
argument(p_string_164, 1, string_utils_1_expr1).
argument(q_utf_8_11, 2, string_utils_1_expr1).
ref(t_string_utils_3, string_utils_1_expr1, line(string_utils_1, 129)).
ref(t_char_encoding_5, q_utf_8_11, line(string_utils_1, 129)).
param(p_string_165, 1, m_get_bytes_unchecked_101).
param(p_charset_name_166, 2, m_get_bytes_unchecked_101).
return(string_utils_1_expr3, m_get_bytes_unchecked_101, line(string_utils_1, 156)).
method_invoc(string_utils_1_expr3, m_get_bytes_102, line(string_utils_1, 156)).
throw(string_utils_1_expr3, unsupported_encoding_exception, line(string_utils_1, 156)).
argument(p_charset_name_166, 1, string_utils_1_expr3).
ref(p_string_165, string_utils_1_expr3, line(string_utils_1, 156)).
param(p_charset_name_167, 1, m_new_illegal_state_exception_103).
param(p_e_168, 2, m_new_illegal_state_exception_103).
param(p_bytes_169, 1, m_new_string_104).
param(p_charset_name_170, 2, m_new_string_104).
param(p_bytes_171, 1, m_new_string_iso8859_1_105).
param(p_bytes_172, 1, m_new_string_us_ascii_106).
param(p_bytes_173, 1, m_new_string_utf16_107).
param(p_bytes_174, 1, m_new_string_utf16_be_108).
param(p_bytes_175, 1, m_new_string_utf16_le_109).
param(p_bytes_176, 1, m_new_string_utf8_110).

%base64_1 - org.apache.commons.codec.binary.Base64
assign(f_chunk_separator_1, base64_1_expr1, line(base64_1, 91)).
assign(f_standard_encode_table_2, base64_1_expr2, line(base64_1, 100)).
assign(f_url_safe_encode_table_3, base64_1_expr3, line(base64_1, 113)).
assign(f_decode_table_4, base64_1_expr4, line(base64_1, 137)).
param(p_url_safe_5, 1, m_base64_2).
method_invoc(base64_1_expr5, m_base64_3, line(base64_1, 256)).
argument(f_mime_chunk_size_6, 1, base64_1_expr5).
argument(f_chunk_separator_1, 2, base64_1_expr5).
argument(p_url_safe_5, 3, base64_1_expr5).
param(p_line_length_7, 1, m_base64_4).
param(p_line_length_8, 1, m_base64_5).
param(p_line_separator_9, 2, m_base64_5).
param(p_line_length_10, 1, m_base64_3).
param(p_line_separator_11, 2, m_base64_3).
param(p_url_safe_12, 3, m_base64_3).
assign(f_line_length_13, base64_1_expr9, line(base64_1, 337)).
cond_expr(base64_1_expr11, base64_1_expr12, base64_1_literal4, line(base64_1, 337)).
assign(base64_1_expr13, base64_1_expr14, line(base64_1, 337)).
assign(f_line_separator_14, base64_1_expr17, line(base64_1, 338)).
ref(p_line_separator_11, q_length_1, line(base64_1, 338)).
method_invoc(base64_1_expr19, m_arraycopy_6, line(base64_1, 339)).
argument(p_line_separator_11, 1, base64_1_expr19).
argument(base64_1_literal8, 2, base64_1_expr19).
argument(f_line_separator_14, 3, base64_1_expr19).
argument(base64_1_literal9, 4, base64_1_expr19).
argument(q_length_2, 5, base64_1_expr19).
ref(t_system_1, base64_1_expr19, line(base64_1, 339)).
ref(p_line_separator_11, q_length_2, line(base64_1, 339)).
assign(f_encode_size_15, base64_1_expr25, line(base64_1, 341)).
ref(p_line_separator_11, q_length_2, line(base64_1, 341)).
assign(f_decode_size_16, base64_1_expr29, line(base64_1, 345)).
method_invoc(base64_1_expr33, m_contains_base64_byte_7, line(base64_1, 346)).
argument(p_line_separator_11, 1, base64_1_expr33).
assign(f_encode_table_17, base64_1_expr36, line(base64_1, 350)).
cond_expr(p_url_safe_12, f_url_safe_encode_table_3, f_standard_encode_table_2, line(base64_1, 350)).
return(base64_1_expr38, m_has_data_9, line(base64_1, 369)).
return(base64_1_expr41, m_avail_10, line(base64_1, 378)).
cond_expr(base64_1_expr42, base64_1_expr43, base64_1_literal14, line(base64_1, 378)).
assign(f_buffer_18, base64_1_expr46, line(base64_1, 384)).
assign(f_pos_19, base64_1_literal17, line(base64_1, 385)).
assign(f_read_pos_20, base64_1_literal18, line(base64_1, 386)).
param(p_b_22, 1, m_read_results_12).
param(p_b_pos_23, 2, m_read_results_12).
param(p_b_avail_24, 3, m_read_results_12).
assign(v_len_25, base64_1_expr50, line(base64_1, 408)).
method_invoc(base64_1_expr50, m_min_13, line(base64_1, 408)).
argument(base64_1_expr51, 1, base64_1_expr50).
argument(p_b_avail_24, 2, base64_1_expr50).
ref(t_math_2, base64_1_expr50, line(base64_1, 408)).
method_invoc(base64_1_expr51, m_avail_10, line(base64_1, 408)).
method_invoc(base64_1_expr53, m_arraycopy_6, line(base64_1, 410)).
argument(f_buffer_18, 1, base64_1_expr53).
argument(f_read_pos_20, 2, base64_1_expr53).
argument(p_b_22, 3, base64_1_expr53).
argument(p_b_pos_23, 4, base64_1_expr53).
argument(v_len_25, 5, base64_1_expr53).
ref(t_system_1, base64_1_expr53, line(base64_1, 410)).
assign(f_read_pos_20, v_len_25, line(base64_1, 411)).
assign(f_buffer_18, base64_1_literal20, line(base64_1, 413)).
assign(f_buffer_18, base64_1_literal21, line(base64_1, 418)).
return(v_len_25, m_read_results_12, line(base64_1, 420)).
param(p_out_26, 1, m_set_initial_buffer_14).
param(p_out_pos_27, 2, m_set_initial_buffer_14).
param(p_out_avail_28, 3, m_set_initial_buffer_14).
ref(p_out_26, q_length_2, line(base64_1, 439)).
assign(f_buffer_18, p_out_26, line(base64_1, 440)).
assign(f_pos_19, p_out_pos_27, line(base64_1, 441)).
assign(f_read_pos_20, p_out_pos_27, line(base64_1, 442)).
param(p_in_29, 1, m_encode_15).
param(p_in_pos_30, 2, m_encode_15).
param(p_in_avail_31, 3, m_encode_15).
param(p_in_32, 1, m_decode_16).
param(p_in_pos_33, 2, m_decode_16).
param(p_in_avail_34, 3, m_decode_16).
assign(f_eof_35, base64_1_literal24, line(base64_1, 555)).
assign(v_i_36, base64_1_literal25, line(base64_1, 557)).
ref(f_buffer_18, q_length_3, line(base64_1, 558)).
method_invoc(base64_1_expr73, m_resize_buffer_11, line(base64_1, 559)).
assign(v_b_37, base64_1_expr74, line(base64_1, 561)).
ref(p_in_32, base64_1_expr74, line(base64_1, 561)).
ref(f_decode_table_4, q_length_4, line(base64_1, 567)).
assign(v_result_39, base64_1_expr80, line(base64_1, 568)).
ref(f_decode_table_4, base64_1_expr80, line(base64_1, 568)).
assign(f_modulus_40, base64_1_expr83, line(base64_1, 570)).
assign(base64_1_expr84, base64_1_expr85, line(base64_1, 570)).
assign(f_x_41, base64_1_expr87, line(base64_1, 571)).
assign(base64_1_expr88, base64_1_expr89, line(base64_1, 571)).
assign(base64_1_expr92, base64_1_expr93, line(base64_1, 573)).
ref(f_buffer_18, base64_1_expr92, line(base64_1, 573)).
assign(base64_1_expr93, base64_1_expr95, line(base64_1, 573)).
assign(base64_1_expr95, base64_1_expr96, line(base64_1, 573)).
assign(base64_1_expr97, base64_1_expr98, line(base64_1, 573)).
assign(base64_1_expr100, base64_1_expr101, line(base64_1, 574)).
ref(f_buffer_18, base64_1_expr100, line(base64_1, 574)).
assign(base64_1_expr101, base64_1_expr103, line(base64_1, 574)).
assign(base64_1_expr103, base64_1_expr104, line(base64_1, 574)).
assign(base64_1_expr105, base64_1_expr106, line(base64_1, 574)).
assign(base64_1_expr108, base64_1_expr109, line(base64_1, 575)).
ref(f_buffer_18, base64_1_expr108, line(base64_1, 575)).
assign(base64_1_expr109, base64_1_expr111, line(base64_1, 575)).
assign(base64_1_expr111, base64_1_expr112, line(base64_1, 575)).
assign(base64_1_expr116, base64_1_expr117, line(base64_1, 594)).
ref(f_buffer_18, base64_1_expr116, line(base64_1, 594)).
assign(base64_1_expr117, base64_1_expr119, line(base64_1, 594)).
assign(base64_1_expr119, base64_1_expr120, line(base64_1, 594)).
assign(base64_1_expr121, base64_1_expr122, line(base64_1, 594)).
param(p_octet_43, 1, m_is_base64_17).
return(base64_1_expr123, m_is_base64_17, line(base64_1, 610)).
assign(base64_1_expr125, base64_1_expr126, line(base64_1, 610)).
ref(f_decode_table_4, q_length_5, line(base64_1, 610)).
ref(f_decode_table_4, base64_1_expr131, line(base64_1, 610)).
param(p_array_octet_44, 1, m_is_array_byte_base64_18).
param(p_array_octet_45, 1, m_contains_base64_byte_7).
assign(v_i_46, base64_1_literal38, line(base64_1, 639)).
ref(p_array_octet_45, q_length_5, line(base64_1, 639)).
method_invoc(base64_1_expr136, m_is_base64_17, line(base64_1, 640)).
argument(base64_1_expr137, 1, base64_1_expr136).
ref(p_array_octet_45, base64_1_expr137, line(base64_1, 640)).
return(base64_1_literal39, m_contains_base64_byte_7, line(base64_1, 644)).
param(p_binary_data_47, 1, m_encode_base64_19).
param(p_binary_data_48, 1, m_encode_base64_string_20).
param(p_binary_data_49, 1, m_encode_base64_urlsafe_21).
param(p_binary_data_50, 1, m_encode_base64_urlsafe_string_22).
param(p_binary_data_51, 1, m_encode_base64_chunked_23).
param(p_p_object_52, 1, m_decode_24).
throw(m_decode_24, decoder_exception).
param(p_p_array_53, 1, m_decode_25).
param(p_p_array_54, 1, m_decode_26).
param(p_binary_data_55, 1, m_encode_base64_27).
param(p_is_chunked_56, 2, m_encode_base64_27).
param(p_binary_data_57, 1, m_encode_base64_28).
param(p_is_chunked_58, 2, m_encode_base64_28).
param(p_url_safe_59, 3, m_encode_base64_28).
param(p_binary_data_60, 1, m_encode_base64_29).
param(p_is_chunked_61, 2, m_encode_base64_29).
param(p_url_safe_62, 3, m_encode_base64_29).
param(p_max_result_size_63, 4, m_encode_base64_29).
param(p_base_64string_64, 1, m_decode_base64_30).
param(p_base_64data_65, 1, m_decode_base64_31).
param(p_data_66, 1, m_discard_whitespace_32).
param(p_byte_to_check_67, 1, m_is_white_space_33).
param(p_p_object_68, 1, m_encode_34).
throw(m_encode_34, encoder_exception).
param(p_p_array_69, 1, m_encode_to_string_35).
param(p_p_array_70, 1, m_encode_36).
param(p_p_array_71, 1, m_get_encode_length_37).
param(p_chunk_size_72, 2, m_get_encode_length_37).
param(p_chunk_separator_73, 3, m_get_encode_length_37).
param(p_p_array_74, 1, m_decode_integer_38).
param(p_big_int_75, 1, m_encode_integer_39).
param(p_big_int_76, 1, m_to_integer_bytes_40).

%base64_output_stream_test_1 - org.apache.commons.codec.binary.Base64OutputStreamTest
assign(f_crlf_128, base64_output_stream_test_1_expr1, line(base64_output_stream_test_1, 33)).
assign(base64_output_stream_test_1_expr2, base64_output_stream_test_1_literal1, line(base64_output_stream_test_1, 33)).
assign(base64_output_stream_test_1_expr3, base64_output_stream_test_1_literal2, line(base64_output_stream_test_1, 33)).
assign(f_lf_129, base64_output_stream_test_1_expr4, line(base64_output_stream_test_1, 35)).
assign(base64_output_stream_test_1_expr5, base64_output_stream_test_1_literal3, line(base64_output_stream_test_1, 35)).
param(p_name_130, 1, m_base64_output_stream_test_77).
method_invoc(base64_output_stream_test_1_expr6, m_test_case_51, line(base64_output_stream_test_1, 46)).
argument(p_name_130, 1, base64_output_stream_test_1_expr6).
throw(m_test_codec98_npe_78, exception).
assign(v_codec_98_131, base64_output_stream_test_1_expr7, line(base64_output_stream_test_1, 56)).
method_invoc(base64_output_stream_test_1_expr7, m_get_bytes_utf8_53, line(base64_output_stream_test_1, 56)).
argument(q_codec_98_npe_9, 1, base64_output_stream_test_1_expr7).
ref(t_string_utils_3, base64_output_stream_test_1_expr7, line(base64_output_stream_test_1, 56)).
ref(t_base64_test_data_4, q_codec_98_npe_9, line(base64_output_stream_test_1, 56)).
assign(v_codec_98_1024_132, base64_output_stream_test_1_expr8, line(base64_output_stream_test_1, 57)).
method_invoc(base64_output_stream_test_1_expr9, m_arraycopy_6, line(base64_output_stream_test_1, 58)).
argument(v_codec_98_131, 1, base64_output_stream_test_1_expr9).
argument(base64_output_stream_test_1_literal5, 2, base64_output_stream_test_1_expr9).
argument(v_codec_98_1024_132, 3, base64_output_stream_test_1_expr9).
argument(base64_output_stream_test_1_literal6, 4, base64_output_stream_test_1_expr9).
argument(q_length_9, 5, base64_output_stream_test_1_expr9).
ref(t_system_1, base64_output_stream_test_1_expr9, line(base64_output_stream_test_1, 58)).
ref(v_codec_98_131, q_length_9, line(base64_output_stream_test_1, 58)).
assign(v_data_133, base64_output_stream_test_1_expr10, line(base64_output_stream_test_1, 59)).
method_invoc(base64_output_stream_test_1_expr10, m_byte_array_output_stream_79, line(base64_output_stream_test_1, 59)).
argument(base64_output_stream_test_1_literal7, 1, base64_output_stream_test_1_expr10).
assign(v_stream_134, base64_output_stream_test_1_expr11, line(base64_output_stream_test_1, 60)).
method_invoc(base64_output_stream_test_1_expr11, m_base64_output_stream_68, line(base64_output_stream_test_1, 60)).
argument(v_data_133, 1, base64_output_stream_test_1_expr11).
argument(base64_output_stream_test_1_literal8, 2, base64_output_stream_test_1_expr11).
method_invoc(base64_output_stream_test_1_expr12, m_write_72, line(base64_output_stream_test_1, 61)).
throw(base64_output_stream_test_1_expr12, ioexception, line(base64_output_stream_test_1, 61)).
argument(v_codec_98_1024_132, 1, base64_output_stream_test_1_expr12).
argument(base64_output_stream_test_1_literal9, 2, base64_output_stream_test_1_expr12).
argument(base64_output_stream_test_1_literal10, 3, base64_output_stream_test_1_expr12).
ref(v_stream_134, base64_output_stream_test_1_expr12, line(base64_output_stream_test_1, 61)).
method_invoc(base64_output_stream_test_1_expr13, m_close_76, line(base64_output_stream_test_1, 62)).
throw(base64_output_stream_test_1_expr13, ioexception, line(base64_output_stream_test_1, 62)).
ref(v_stream_134, base64_output_stream_test_1_expr13, line(base64_output_stream_test_1, 62)).
throw(m_test_base64_empty_output_stream_mime_chunk_size_80, exception).
throw(m_test_base64_empty_output_stream_pem_chunk_size_81, exception).
param(p_chunk_size_135, 1, m_test_base64_empty_output_stream_82).
throw(m_test_base64_empty_output_stream_82, exception).
throw(m_test_base64_output_stream_by_chunk_83, exception).
throw(m_test_base64_output_stream_byte_by_byte_84, exception).
param(p_encoded_136, 1, m_test_by_chunk_85).
param(p_decoded_137, 2, m_test_by_chunk_85).
param(p_chunk_size_138, 3, m_test_by_chunk_85).
param(p_seperator_139, 4, m_test_by_chunk_85).
throw(m_test_by_chunk_85, exception).
param(p_encoded_140, 1, m_test_byte_by_byte_86).
param(p_decoded_141, 2, m_test_byte_by_byte_86).
param(p_chunk_size_142, 3, m_test_byte_by_byte_86).
param(p_seperator_143, 4, m_test_byte_by_byte_86).
throw(m_test_byte_by_byte_86, exception).
throw(m_test_write_out_of_bounds_87, exception).
throw(m_test_write_to_null_coverage_88, exception).

%base64_test_data_1 - org.apache.commons.codec.binary.Base64TestData
assign(f_decoded_144, base64_test_data_1_expr1, line(base64_test_data_1, 88)).
param(p_in_145, 1, m_stream_to_bytes_89).
throw(m_stream_to_bytes_89, ioexception).
param(p_in_146, 1, m_stream_to_bytes_55).
param(p_buf_147, 2, m_stream_to_bytes_55).
throw(m_stream_to_bytes_55, ioexception).
assign(v_status_148, base64_test_data_1_expr2, line(base64_test_data_1, 148)).
method_invoc(base64_test_data_1_expr2, m_fill_90, line(base64_test_data_1, 148)).
throw(base64_test_data_1_expr2, ioexception, line(base64_test_data_1, 148)).
argument(p_buf_147, 1, base64_test_data_1_expr2).
argument(base64_test_data_1_literal1, 2, base64_test_data_1_expr2).
argument(p_in_146, 3, base64_test_data_1_expr2).
method_invoc(base64_test_data_1_expr3, m_close_91, line(base64_test_data_1, 164)).
throw(base64_test_data_1_expr3, ioexception, line(base64_test_data_1, 164)).
ref(p_in_146, base64_test_data_1_expr3, line(base64_test_data_1, 164)).
param(p_buf_149, 1, m_fill_90).
param(p_offset_150, 2, m_fill_90).
param(p_in_151, 3, m_fill_90).
throw(m_fill_90, ioexception).
assign(v_read_152, base64_test_data_1_expr4, line(base64_test_data_1, 171)).
method_invoc(base64_test_data_1_expr4, m_read_92, line(base64_test_data_1, 171)).
throw(base64_test_data_1_expr4, ioexception, line(base64_test_data_1, 171)).
argument(p_buf_149, 1, base64_test_data_1_expr4).
argument(p_offset_150, 2, base64_test_data_1_expr4).
argument(base64_test_data_1_expr5, 3, base64_test_data_1_expr4).
ref(p_in_151, base64_test_data_1_expr4, line(base64_test_data_1, 171)).
ref(p_buf_149, q_length_10, line(base64_test_data_1, 171)).
assign(v_last_read_153, v_read_152, line(base64_test_data_1, 172)).
ref(p_buf_149, q_length_11, line(base64_test_data_1, 176)).
assign(v_last_read_153, base64_test_data_1_expr14, line(base64_test_data_1, 177)).
method_invoc(base64_test_data_1_expr14, m_read_92, line(base64_test_data_1, 177)).
throw(base64_test_data_1_expr14, ioexception, line(base64_test_data_1, 177)).
argument(p_buf_149, 1, base64_test_data_1_expr14).
argument(base64_test_data_1_expr15, 2, base64_test_data_1_expr14).
argument(base64_test_data_1_expr16, 3, base64_test_data_1_expr14).
ref(p_in_151, base64_test_data_1_expr14, line(base64_test_data_1, 177)).
ref(p_buf_149, q_length_11, line(base64_test_data_1, 177)).
param(p_bytes_154, 1, m_resize_array_93).
param(p_size_155, 1, m_random_data_94).
param(p_url_safe_156, 2, m_random_data_94).
param(p_bytes_157, 1, m_bytes_contain_95).
param(p_c_158, 2, m_bytes_contain_95).

%base64_input_stream_1 - org.apache.commons.codec.binary.Base64InputStream
assign(f_single_byte_77, base64_input_stream_1_expr1, line(base64_input_stream_1, 52)).
param(p_in_78, 1, m_base64_input_stream_42).
method_invoc(base64_input_stream_1_expr2, m_base64_input_stream_43, line(base64_input_stream_1, 61)).
argument(p_in_78, 1, base64_input_stream_1_expr2).
argument(base64_input_stream_1_literal2, 2, base64_input_stream_1_expr2).
param(p_in_79, 1, m_base64_input_stream_43).
param(p_do_encode_80, 2, m_base64_input_stream_43).
method_invoc(base64_input_stream_1_expr3, m_filter_input_stream_44, line(base64_input_stream_1, 74)).
argument(p_in_79, 1, base64_input_stream_1_expr3).
assign(f_do_encode_81, p_do_encode_80, line(base64_input_stream_1, 75)).
assign(f_base_64_82, base64_input_stream_1_expr9, line(base64_input_stream_1, 76)).
method_invoc(base64_input_stream_1_expr9, m_base64_2, line(base64_input_stream_1, 76)).
argument(base64_input_stream_1_literal3, 1, base64_input_stream_1_expr9).
param(p_in_83, 1, m_base64_input_stream_45).
param(p_do_encode_84, 2, m_base64_input_stream_45).
param(p_line_length_85, 3, m_base64_input_stream_45).
param(p_line_separator_86, 4, m_base64_input_stream_45).
throw(m_read_46, ioexception).
param(p_b_87, 1, m_read_47).
param(p_offset_88, 2, m_read_47).
param(p_len_89, 3, m_read_47).
throw(m_read_47, ioexception).
ref(p_b_87, q_length_6, line(base64_input_stream_1, 143)).
ref(p_b_87, q_length_7, line(base64_input_stream_1, 143)).
method_invoc(base64_input_stream_1_expr21, m_has_data_9, line(base64_input_stream_1, 148)).
ref(f_base_64_82, base64_input_stream_1_expr21, line(base64_input_stream_1, 148)).
assign(v_buf_90, base64_input_stream_1_expr22, line(base64_input_stream_1, 149)).
cond_expr(f_do_encode_81, base64_input_stream_1_literal8, base64_input_stream_1_literal9, line(base64_input_stream_1, 149)).
assign(v_c_91, base64_input_stream_1_expr24, line(base64_input_stream_1, 150)).
method_invoc(base64_input_stream_1_expr24, m_read_48, line(base64_input_stream_1, 150)).
throw(base64_input_stream_1_expr24, ioexception, line(base64_input_stream_1, 150)).
argument(v_buf_90, 1, base64_input_stream_1_expr24).
ref(f_in_92, base64_input_stream_1_expr24, line(base64_input_stream_1, 150)).
ref(p_b_87, q_length_7, line(base64_input_stream_1, 153)).
method_invoc(base64_input_stream_1_expr28, m_set_initial_buffer_14, line(base64_input_stream_1, 154)).
argument(p_b_87, 1, base64_input_stream_1_expr28).
argument(p_offset_88, 2, base64_input_stream_1_expr28).
argument(p_len_89, 3, base64_input_stream_1_expr28).
ref(f_base_64_82, base64_input_stream_1_expr28, line(base64_input_stream_1, 154)).
method_invoc(base64_input_stream_1_expr29, m_decode_16, line(base64_input_stream_1, 159)).
throw(base64_input_stream_1_expr29, null_pointer_exception, line(base64_input_stream_1, 159)).
argument(v_buf_90, 1, base64_input_stream_1_expr29).
argument(base64_input_stream_1_literal11, 2, base64_input_stream_1_expr29).
argument(v_c_91, 3, base64_input_stream_1_expr29).
ref(f_base_64_82, base64_input_stream_1_expr29, line(base64_input_stream_1, 159)).
return(base64_input_stream_1_expr30, m_read_47, line(base64_input_stream_1, 162)).
method_invoc(base64_input_stream_1_expr30, m_read_results_12, line(base64_input_stream_1, 162)).
argument(p_b_87, 1, base64_input_stream_1_expr30).
argument(p_offset_88, 2, base64_input_stream_1_expr30).
argument(p_len_89, 3, base64_input_stream_1_expr30).
ref(f_base_64_82, base64_input_stream_1_expr30, line(base64_input_stream_1, 162)).

%base64_input_stream_test_1 - org.apache.commons.codec.binary.Base64InputStreamTest
assign(f_crlf_93, base64_input_stream_test_1_expr1, line(base64_input_stream_test_1, 33)).
assign(base64_input_stream_test_1_expr2, base64_input_stream_test_1_literal1, line(base64_input_stream_test_1, 33)).
assign(base64_input_stream_test_1_expr3, base64_input_stream_test_1_literal2, line(base64_input_stream_test_1, 33)).
assign(f_lf_94, base64_input_stream_test_1_expr4, line(base64_input_stream_test_1, 35)).
assign(base64_input_stream_test_1_expr5, base64_input_stream_test_1_literal3, line(base64_input_stream_test_1, 35)).
param(p_name_95, 1, m_base64_input_stream_test_50).
method_invoc(base64_input_stream_test_1_expr6, m_test_case_51, line(base64_input_stream_test_1, 46)).
argument(p_name_95, 1, base64_input_stream_test_1_expr6).
throw(m_test_codec98_npe_52, exception).
assign(v_codec_98_96, base64_input_stream_test_1_expr7, line(base64_input_stream_test_1, 56)).
method_invoc(base64_input_stream_test_1_expr7, m_get_bytes_utf8_53, line(base64_input_stream_test_1, 56)).
argument(q_codec_98_npe_7, 1, base64_input_stream_test_1_expr7).
ref(t_string_utils_3, base64_input_stream_test_1_expr7, line(base64_input_stream_test_1, 56)).
ref(t_base64_test_data_4, q_codec_98_npe_7, line(base64_input_stream_test_1, 56)).
assign(v_data_97, base64_input_stream_test_1_expr8, line(base64_input_stream_test_1, 57)).
method_invoc(base64_input_stream_test_1_expr8, m_byte_array_input_stream_54, line(base64_input_stream_test_1, 57)).
argument(v_codec_98_96, 1, base64_input_stream_test_1_expr8).
assign(v_stream_98, base64_input_stream_test_1_expr9, line(base64_input_stream_test_1, 58)).
method_invoc(base64_input_stream_test_1_expr9, m_base64_input_stream_42, line(base64_input_stream_test_1, 58)).
argument(v_data_97, 1, base64_input_stream_test_1_expr9).
assign(v_decoded_bytes_99, base64_input_stream_test_1_expr10, line(base64_input_stream_test_1, 61)).
method_invoc(base64_input_stream_test_1_expr10, m_stream_to_bytes_55, line(base64_input_stream_test_1, 61)).
throw(base64_input_stream_test_1_expr10, ioexception, line(base64_input_stream_test_1, 61)).
argument(v_stream_98, 1, base64_input_stream_test_1_expr10).
argument(base64_input_stream_test_1_expr11, 2, base64_input_stream_test_1_expr10).
ref(t_base64_test_data_4, base64_input_stream_test_1_expr10, line(base64_input_stream_test_1, 61)).
throw(m_test_base64_empty_input_stream_mime_chuck_size_56, exception).
throw(m_test_base64_empty_input_stream_pem_chuck_size_57, exception).
param(p_chuck_size_100, 1, m_test_base64_empty_input_stream_58).
throw(m_test_base64_empty_input_stream_58, exception).
throw(m_test_base64_input_stream_by_chunk_59, exception).
throw(m_test_base64_input_stream_byte_by_byte_60, exception).
param(p_encoded_101, 1, m_test_by_chunk_61).
param(p_decoded_102, 2, m_test_by_chunk_61).
param(p_chunk_size_103, 3, m_test_by_chunk_61).
param(p_seperator_104, 4, m_test_by_chunk_61).
throw(m_test_by_chunk_61, exception).
param(p_encoded_105, 1, m_test_byte_by_byte_62).
param(p_decoded_106, 2, m_test_byte_by_byte_62).
param(p_chunk_size_107, 3, m_test_byte_by_byte_62).
param(p_seperator_108, 4, m_test_byte_by_byte_62).
throw(m_test_byte_by_byte_62, exception).
throw(m_test_mark_supported_63, exception).
throw(m_test_read0_64, exception).
throw(m_test_read_null_65, exception).
throw(m_test_read_out_of_bounds_66, exception).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.codec.binary.Base64OutputStreamTest', 'testCodec98NPE').
trace(trace_1, failure_1, m_decode_16, line(base64_1, 594), failure_1, target).
trace(trace_2, trace_1, m_close_76, line(base64_output_stream_1, 192), failure_1, target).
trace(trace_3, trace_2, m_test_codec98_npe_78, line(base64_output_stream_test_1, 62), failure_1, target).
trace(trace_4, trace_3, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_8, trace_7, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_9, trace_8, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_10, trace_9, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_11, trace_10, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_12, trace_11, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_14, trace_13, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_18, trace_17, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.codec.binary.Base64InputStreamTest', 'testCodec98NPE').
trace(trace_19, failure_2, m_decode_16, line(base64_1, 594), failure_2, target).
trace(trace_20, trace_19, m_read_47, line(base64_input_stream_1, 159), failure_2, target).
trace(trace_21, trace_20, m_fill_90, line(base64_test_data_1, 177), failure_2, target).
trace(trace_22, trace_21, m_stream_to_bytes_55, line(base64_test_data_1, 148), failure_2, target).
trace(trace_23, trace_22, m_test_codec98_npe_52, line(base64_input_stream_test_1, 61), failure_2, target).
trace(trace_24, trace_23, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_2, non_target).
trace(trace_25, trace_24, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_2, non_target).
trace(trace_26, trace_25, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_2, non_target).
trace(trace_27, trace_26, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_28, trace_27, 'runTest', line(junit_framework_test_case, 177), failure_2, non_target).
trace(trace_29, trace_28, 'runBare', line(junit_framework_test_case, 142), failure_2, non_target).
trace(trace_30, trace_29, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_31, trace_30, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_32, trace_31, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_33, trace_32, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_34, trace_33, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_35, trace_34, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_36, trace_35, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_37, trace_36, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_38, trace_37, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(f_buffer_18, null, line(base64_1, 594)).



%%% End of Facts