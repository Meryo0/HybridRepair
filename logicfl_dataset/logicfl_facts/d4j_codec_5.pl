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
trace(trace_4, trace_3, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_6, trace_5, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_7, trace_6, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_8, trace_7, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_9, trace_8, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_10, trace_9, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_11, trace_10, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_12, trace_11, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_14, trace_13, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_16, trace_15, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.codec.binary.Base64InputStreamTest', 'testCodec98NPE').
trace(trace_17, failure_2, m_decode_16, line(base64_1, 594), failure_2, target).
trace(trace_18, trace_17, m_read_47, line(base64_input_stream_1, 159), failure_2, target).
trace(trace_19, trace_18, m_fill_90, line(base64_test_data_1, 177), failure_2, target).
trace(trace_20, trace_19, m_stream_to_bytes_55, line(base64_test_data_1, 148), failure_2, target).
trace(trace_21, trace_20, m_test_codec98_npe_52, line(base64_input_stream_test_1, 61), failure_2, target).
trace(trace_22, trace_21, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_2, non_target).
trace(trace_23, trace_22, 'invoke', line(java_lang_reflect_method, 578), failure_2, non_target).
trace(trace_24, trace_23, 'runTest', line(junit_framework_test_case, 177), failure_2, non_target).
trace(trace_25, trace_24, 'runBare', line(junit_framework_test_case, 142), failure_2, non_target).
trace(trace_26, trace_25, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_27, trace_26, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_28, trace_27, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_29, trace_28, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_30, trace_29, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_31, trace_30, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_32, trace_31, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_33, trace_32, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_34, trace_33, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(f_buffer_18, null, line(base64_1, 594)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(base64_output_stream_1, 'org.apache.commons.codec.binary.Base64OutputStream').
class(string_utils_1, 'org.apache.commons.codec.binary.StringUtils').
class(base64_1, 'org.apache.commons.codec.binary.Base64').
class(base64_output_stream_test_1, 'org.apache.commons.codec.binary.Base64OutputStreamTest').
class(base64_test_data_1, 'org.apache.commons.codec.binary.Base64TestData').
class(base64_input_stream_1, 'org.apache.commons.codec.binary.Base64InputStream').
class(base64_input_stream_test_1, 'org.apache.commons.codec.binary.Base64InputStreamTest').

%%% Methods
%base64_output_stream_1 - org.apache.commons.codec.binary.Base64OutputStream
method(m_base64_output_stream_67, range(base64_output_stream_1, 2238, 278, 53, 61)).
method(m_base64_output_stream_68, range(base64_output_stream_1, 2522, 515, 63, 76)).
method(m_base64_output_stream_70, range(base64_output_stream_1, 3043, 1148, 78, 98)).
method(m_write_71, range(base64_output_stream_1, 4197, 327, 100, 111)).
method(m_write_72, range(base64_output_stream_1, 4530, 1209, 113, 146)).
method(m_flush_73, range(base64_output_stream_1, 5745, 761, 148, 169)).
method(m_flush_75, range(base64_output_stream_1, 6512, 265, 171, 179)).
method(m_close_76, range(base64_output_stream_1, 6783, 455, 181, 196)).
%string_utils_1 - org.apache.commons.codec.binary.StringUtils
method(m_get_bytes_iso8859_1_96, range(string_utils_1, 1446, 702, 36, 50)).
method(m_get_bytes_us_ascii_97, range(string_utils_1, 2154, 696, 52, 66)).
method(m_get_bytes_utf16_98, range(string_utils_1, 2856, 690, 68, 82)).
method(m_get_bytes_utf16_be_99, range(string_utils_1, 3552, 696, 84, 98)).
method(m_get_bytes_utf16_le_100, range(string_utils_1, 4254, 696, 100, 114)).
method(m_get_bytes_utf8_53, range(string_utils_1, 4956, 687, 116, 130)).
method(m_get_bytes_unchecked_101, range(string_utils_1, 5649, 1202, 132, 160)).
method(m_new_illegal_state_exception_103, range(string_utils_1, 6857, 187, 162, 164)).
method(m_new_string_104, range(string_utils_1, 7050, 1277, 166, 193)).
method(m_new_string_iso8859_1_105, range(string_utils_1, 8333, 650, 195, 207)).
method(m_new_string_us_ascii_106, range(string_utils_1, 8989, 644, 209, 221)).
method(m_new_string_utf16_107, range(string_utils_1, 9639, 638, 223, 235)).
method(m_new_string_utf16_be_108, range(string_utils_1, 10283, 644, 237, 249)).
method(m_new_string_utf16_le_109, range(string_utils_1, 10933, 644, 251, 263)).
method(m_new_string_utf8_110, range(string_utils_1, 11583, 635, 265, 277)).
%base64_1 - org.apache.commons.codec.binary.Base64
method(m_base64_1, range(base64_1, 9054, 358, 226, 238)).
method(m_base64_2, range(base64_1, 9418, 625, 240, 257)).
method(m_base64_4, range(base64_1, 10049, 866, 259, 279)).
method(m_base64_5, range(base64_1, 10921, 1126, 281, 305)).
method(m_base64_3, range(base64_1, 12053, 2232, 307, 351)).
method(m_is_url_safe_8, range(base64_1, 14291, 279, 353, 361)).
method(m_has_data_9, range(base64_1, 14576, 233, 363, 370)).
method(m_avail_10, range(base64_1, 14815, 226, 372, 379)).
method(m_resize_buffer_11, range(base64_1, 15047, 386, 381, 392)).
method(m_read_results_12, range(base64_1, 15439, 1184, 394, 423)).
method(m_set_initial_buffer_14, range(base64_1, 16629, 828, 425, 444)).
method(m_encode_15, range(base64_1, 17463, 3387, 446, 525)).
method(m_decode_16, range(base64_1, 20856, 2926, 527, 599)).
method(m_is_base64_17, range(base64_1, 23788, 450, 601, 611)).
method(m_is_array_byte_base64_18, range(base64_1, 24244, 670, 613, 629)).
method(m_contains_base64_byte_7, range(base64_1, 24920, 534, 631, 645)).
method(m_encode_base64_19, range(base64_1, 25460, 364, 647, 656)).
method(m_encode_base64_string_20, range(base64_1, 25830, 400, 658, 668)).
method(m_encode_base64_urlsafe_21, range(base64_1, 26240, 494, 670, 681)).
method(m_encode_base64_urlsafe_string_22, range(base64_1, 26740, 499, 683, 694)).
method(m_encode_base64_chunked_23, range(base64_1, 27249, 376, 696, 705)).
method(m_decode_24, range(base64_1, 27631, 927, 707, 725)).
method(m_decode_25, range(base64_1, 28564, 343, 727, 737)).
method(m_decode_26, range(base64_1, 28913, 1073, 739, 766)).
method(m_encode_base64_27, range(base64_1, 29992, 670, 768, 781)).
method(m_encode_base64_28, range(base64_1, 30668, 859, 783, 799)).
method(m_encode_base64_29, range(base64_1, 31533, 1466, 801, 832)).
method(m_decode_base64_30, range(base64_1, 33005, 317, 834, 844)).
method(m_decode_base64_31, range(base64_1, 33328, 294, 846, 855)).
method(m_discard_whitespace_32, range(base64_1, 33628, 893, 857, 882)).
method(m_is_white_space_33, range(base64_1, 34527, 475, 884, 901)).
method(m_encode_34, range(base64_1, 35056, 785, 905, 920)).
method(m_encode_to_string_35, range(base64_1, 35847, 399, 922, 932)).
method(m_encode_36, range(base64_1, 36252, 1182, 934, 963)).
method(m_get_encode_length_37, range(base64_1, 37440, 1173, 965, 993)).
method(m_decode_integer_38, range(base64_1, 38677, 370, 996, 1006)).
method(m_encode_integer_39, range(base64_1, 39053, 581, 1008, 1023)).
method(m_to_integer_bytes_40, range(base64_1, 39640, 1137, 1025, 1054)).
method(m_reset_41, range(base64_1, 40783, 248, 1056, 1066)).
%base64_output_stream_test_1 - org.apache.commons.codec.binary.Base64OutputStreamTest
method(m_base64_output_stream_test_77, range(base64_output_stream_test_1, 1297, 205, 39, 47)).
method(m_test_codec98_npe_78, range(base64_output_stream_test_1, 1508, 908, 49, 69)).
method(m_test_base64_empty_output_stream_mime_chunk_size_80, range(base64_output_stream_test_1, 2427, 307, 72, 80)).
method(m_test_base64_empty_output_stream_pem_chunk_size_81, range(base64_output_stream_test_1, 2740, 305, 82, 90)).
method(m_test_base64_empty_output_stream_82, range(base64_output_stream_test_1, 3051, 301, 92, 97)).
method(m_test_base64_output_stream_by_chunk_83, range(base64_output_stream_test_1, 3358, 1437, 99, 134)).
method(m_test_base64_output_stream_byte_by_byte_84, range(base64_output_stream_test_1, 4801, 1396, 136, 171)).
method(m_test_by_chunk_85, range(base64_output_stream_test_1, 6203, 2101, 173, 221)).
method(m_test_byte_by_byte_86, range(base64_output_stream_test_1, 8310, 2763, 223, 288)).
method(m_test_write_out_of_bounds_87, range(base64_output_stream_test_1, 11079, 1418, 290, 328)).
method(m_test_write_to_null_coverage_88, range(base64_output_stream_test_1, 12503, 550, 330, 345)).
%base64_test_data_1 - org.apache.commons.codec.binary.Base64TestData
method(m_stream_to_bytes_89, range(base64_test_data_1, 10883, 200, 141, 144)).
method(m_stream_to_bytes_55, range(base64_test_data_1, 11089, 749, 146, 167)).
method(m_fill_90, range(base64_test_data_1, 11844, 557, 169, 183)).
method(m_resize_array_93, range(base64_test_data_1, 12407, 212, 185, 189)).
method(m_random_data_94, range(base64_test_data_1, 12626, 587, 192, 205)).
method(m_bytes_contain_95, range(base64_test_data_1, 13219, 423, 207, 219)).
%base64_input_stream_1 - org.apache.commons.codec.binary.Base64InputStream
method(m_base64_input_stream_42, range(base64_input_stream_1, 2236, 270, 54, 62)).
method(m_base64_input_stream_43, range(base64_input_stream_1, 2512, 505, 64, 77)).
method(m_base64_input_stream_45, range(base64_input_stream_1, 3023, 1138, 79, 99)).
method(m_read_46, range(base64_input_stream_1, 4167, 535, 101, 117)).
method(m_read_47, range(base64_input_stream_1, 4708, 1718, 119, 164)).
method(m_mark_supported_49, range(base64_input_stream_1, 6432, 162, 166, 173)).
%base64_input_stream_test_1 - org.apache.commons.codec.binary.Base64InputStreamTest
method(m_base64_input_stream_test_50, range(base64_input_stream_test_1, 1294, 204, 39, 47)).
method(m_test_codec98_npe_52, range(base64_input_stream_test_1, 1504, 808, 49, 67)).
method(m_test_base64_empty_input_stream_mime_chuck_size_56, range(base64_input_stream_test_1, 2318, 305, 69, 77)).
method(m_test_base64_empty_input_stream_pem_chuck_size_57, range(base64_input_stream_test_1, 2629, 303, 79, 87)).
method(m_test_base64_empty_input_stream_58, range(base64_input_stream_test_1, 2938, 300, 89, 94)).
method(m_test_base64_input_stream_by_chunk_59, range(base64_input_stream_test_1, 3244, 1437, 96, 131)).
method(m_test_base64_input_stream_byte_by_byte_60, range(base64_input_stream_test_1, 4687, 1455, 133, 168)).
method(m_test_by_chunk_61, range(base64_input_stream_test_1, 6148, 2177, 170, 219)).
method(m_test_byte_by_byte_62, range(base64_input_stream_test_1, 8331, 2462, 221, 279)).
method(m_test_mark_supported_63, range(base64_input_stream_test_1, 10799, 487, 281, 292)).
method(m_test_read0_64, range(base64_input_stream_test_1, 11292, 540, 294, 307)).
method(m_test_read_null_65, range(base64_input_stream_test_1, 11838, 614, 309, 325)).
method(m_test_read_out_of_bounds_66, range(base64_input_stream_test_1, 12458, 1369, 327, 365)).

%%% Blocks
%base64_output_stream_1 - org.apache.commons.codec.binary.Base64OutputStream
block(base64_output_stream_1_block1, block, base64_output_stream_1_code13, body, range(base64_output_stream_1, 2935, 102, 72, 76)).
block(base64_output_stream_1_block2, block, base64_output_stream_1_code15, body, range(base64_output_stream_1, 5225, 514, 131, 146)).
block(base64_output_stream_1_block3, block, base64_output_stream_1_stmt4, then_statement, range(base64_output_stream_1, 5250, 57, 132, 134)).
block(base64_output_stream_1_block4, block, base64_output_stream_1_stmt5, then_statement, range(base64_output_stream_1, 5340, 62, 134, 136)).
block(base64_output_stream_1_block5, block, base64_output_stream_1_stmt6, then_statement, range(base64_output_stream_1, 5458, 62, 136, 138)).
block(base64_output_stream_1_block6, block, base64_output_stream_1_stmt7, then_statement, range(base64_output_stream_1, 5539, 194, 138, 145)).
block(base64_output_stream_1_block7, block, base64_output_stream_1_stmt8, then_statement, range(base64_output_stream_1, 5567, 62, 139, 141)).
block(base64_output_stream_1_block8, block, base64_output_stream_1_stmt8, else_statement, range(base64_output_stream_1, 5635, 62, 141, 143)).
block(base64_output_stream_1_block9, block, base64_output_stream_1_code16, body, range(base64_output_stream_1, 6194, 312, 157, 169)).
block(base64_output_stream_1_block10, block, base64_output_stream_1_stmt12, then_statement, range(base64_output_stream_1, 6255, 185, 159, 165)).
block(base64_output_stream_1_block11, block, base64_output_stream_1_stmt15, then_statement, range(base64_output_stream_1, 6377, 53, 162, 164)).
block(base64_output_stream_1_block12, block, base64_output_stream_1_stmt17, then_statement, range(base64_output_stream_1, 6464, 36, 166, 168)).
block(base64_output_stream_1_block13, block, base64_output_stream_1_code28, body, range(base64_output_stream_1, 7011, 227, 187, 196)).
block(base64_output_stream_1_block14, block, base64_output_stream_1_stmt18, else_statement, range(base64_output_stream_1, 7137, 57, 191, 193)).
%string_utils_1 - org.apache.commons.codec.binary.StringUtils
block(string_utils_1_block1, block, string_utils_1_code3, body, range(string_utils_1, 5562, 81, 128, 130)).
block(string_utils_1_block2, block, string_utils_1_code4, body, range(string_utils_1, 6583, 268, 151, 160)).
block(string_utils_1_block3, block, string_utils_1_stmt2, then_statement, range(string_utils_1, 6613, 36, 152, 154)).
block(string_utils_1_block4, block, string_utils_1_stmt3, body, range(string_utils_1, 6662, 60, 155, 157)).
%base64_1 - org.apache.commons.codec.binary.Base64
block(base64_1_block1, block, base64_1_code34, body, range(base64_1, 9979, 64, 255, 257)).
block(base64_1_block2, block, base64_1_code35, body, range(base64_1, 13365, 920, 332, 351)).
block(base64_1_block3, block, base64_1_stmt2, then_statement, range(base64_1, 13402, 140, 333, 336)).
block(base64_1_block4, block, base64_1_stmt6, then_statement, range(base64_1, 13790, 67, 340, 342)).
block(base64_1_block5, block, base64_1_stmt9, then_statement, range(base64_1, 14002, 193, 346, 349)).
block(base64_1_block6, block, base64_1_code48, body, range(base64_1, 14766, 43, 368, 370)).
block(base64_1_block7, block, base64_1_code49, body, range(base64_1, 14983, 58, 377, 379)).
block(base64_1_block8, block, base64_1_code50, body, range(base64_1, 15106, 327, 382, 392)).
block(base64_1_block9, block, base64_1_stmt13, then_statement, range(base64_1, 15136, 109, 383, 387)).
block(base64_1_block10, block, base64_1_code54, body, range(base64_1, 16074, 549, 406, 423)).
block(base64_1_block11, block, base64_1_stmt17, then_statement, range(base64_1, 16104, 484, 407, 421)).
block(base64_1_block12, block, base64_1_stmt19, then_statement, range(base64_1, 16184, 203, 409, 415)).
block(base64_1_block13, block, base64_1_stmt22, then_statement, range(base64_1, 16319, 54, 412, 414)).
block(base64_1_block14, block, base64_1_stmt19, else_statement, range(base64_1, 16393, 161, 415, 419)).
block(base64_1_block15, block, base64_1_code57, body, range(base64_1, 17172, 285, 436, 444)).
block(base64_1_block16, block, base64_1_stmt26, then_statement, range(base64_1, 17358, 93, 439, 443)).
block(base64_1_block17, block, base64_1_code58, body, range(base64_1, 22042, 1740, 550, 599)).
block(base64_1_block18, block, base64_1_stmt30, then_statement, range(base64_1, 22061, 31, 551, 553)).
block(base64_1_block19, block, base64_1_stmt31, then_statement, range(base64_1, 22118, 35, 554, 556)).
block(base64_1_block20, block, base64_1_stmt33, body, range(base64_1, 22196, 882, 557, 580)).
block(base64_1_block21, block, base64_1_stmt34, then_statement, range(base64_1, 22266, 47, 558, 560)).
block(base64_1_block22, block, base64_1_stmt37, then_statement, range(base64_1, 22374, 97, 562, 566)).
block(base64_1_block23, block, base64_1_stmt37, else_statement, range(base64_1, 22477, 591, 566, 579)).
block(base64_1_block24, block, base64_1_stmt38, then_statement, range(base64_1, 22534, 520, 567, 578)).
block(base64_1_block25, block, base64_1_stmt40, then_statement, range(base64_1, 22623, 413, 569, 577)).
block(base64_1_block26, block, base64_1_stmt43, then_statement, range(base64_1, 22765, 249, 572, 576)).
block(base64_1_block27, block, base64_1_stmt47, then_statement, range(base64_1, 23341, 435, 585, 598)).
block(base64_1_block28, block, base64_1_code69, body, range(base64_1, 24126, 112, 609, 611)).
block(base64_1_block29, block, base64_1_code70, body, range(base64_1, 25275, 179, 638, 645)).
block(base64_1_block30, block, base64_1_stmt51, body, range(base64_1, 25329, 97, 639, 643)).
block(base64_1_block31, block, base64_1_stmt52, then_statement, range(base64_1, 25372, 44, 640, 642)).
%base64_output_stream_test_1 - org.apache.commons.codec.binary.Base64OutputStreamTest
block(base64_output_stream_test_1_block1, block, base64_output_stream_test_1_code22, body, range(base64_output_stream_test_1, 1474, 28, 45, 47)).
block(base64_output_stream_test_1_block2, block, base64_output_stream_test_1_code23, body, range(base64_output_stream_test_1, 1758, 658, 55, 69)).
%base64_test_data_1 - org.apache.commons.codec.binary.Base64TestData
block(base64_test_data_1_block1, block, base64_test_data_1_code10, body, range(base64_test_data_1, 11170, 668, 146, 167)).
block(base64_test_data_1_block2, block, base64_test_data_1_stmt1, body, range(base64_test_data_1, 11184, 576, 147, 162)).
block(base64_test_data_1_block3, block, base64_test_data_1_stmt1, finally, range(base64_test_data_1, 11777, 35, 163, 165)).
block(base64_test_data_1_block4, block, base64_test_data_1_code15, body, range(base64_test_data_1, 11959, 442, 170, 183)).
block(base64_test_data_1_block5, block, base64_test_data_1_stmt6, then_statement, range(base64_test_data_1, 12076, 33, 173, 175)).
block(base64_test_data_1_block6, block, base64_test_data_1_stmt7, body, range(base64_test_data_1, 12171, 173, 176, 181)).
%base64_input_stream_1 - org.apache.commons.codec.binary.Base64InputStream
block(base64_input_stream_1_block1, block, base64_input_stream_1_code13, body, range(base64_input_stream_1, 2474, 32, 60, 62)).
block(base64_input_stream_1_block2, block, base64_input_stream_1_code14, body, range(base64_input_stream_1, 2916, 101, 73, 77)).
block(base64_input_stream_1_block3, block, base64_input_stream_1_code16, body, range(base64_input_stream_1, 5451, 975, 138, 164)).
block(base64_input_stream_1_block4, block, base64_input_stream_1_stmt5, then_statement, range(base64_input_stream_1, 5476, 57, 139, 141)).
block(base64_input_stream_1_block5, block, base64_input_stream_1_stmt6, then_statement, range(base64_input_stream_1, 5566, 62, 141, 143)).
block(base64_input_stream_1_block6, block, base64_input_stream_1_stmt7, then_statement, range(base64_input_stream_1, 5684, 62, 143, 145)).
block(base64_input_stream_1_block7, block, base64_input_stream_1_stmt8, then_statement, range(base64_input_stream_1, 5766, 33, 145, 147)).
block(base64_input_stream_1_block8, block, base64_input_stream_1_stmt8, else_statement, range(base64_input_stream_1, 5805, 615, 147, 163)).
block(base64_input_stream_1_block9, block, base64_input_stream_1_stmt9, then_statement, range(base64_input_stream_1, 5842, 513, 148, 161)).
block(base64_input_stream_1_block10, block, base64_input_stream_1_stmt12, then_statement, range(base64_input_stream_1, 6094, 80, 153, 155)).
block(base64_input_stream_1_block11, block, base64_input_stream_1_stmt14, then_statement, range(base64_input_stream_1, 6205, 65, 156, 158)).
block(base64_input_stream_1_block12, block, base64_input_stream_1_stmt14, else_statement, range(base64_input_stream_1, 6276, 65, 158, 160)).
%base64_input_stream_test_1 - org.apache.commons.codec.binary.Base64InputStreamTest
block(base64_input_stream_test_1_block1, block, base64_input_stream_test_1_code22, body, range(base64_input_stream_test_1, 1470, 28, 45, 47)).
block(base64_input_stream_test_1_block2, block, base64_input_stream_test_1_code23, body, range(base64_input_stream_test_1, 1753, 559, 55, 67)).

%%% Statements
%base64_output_stream_1 - org.apache.commons.codec.binary.Base64OutputStream
stmt(base64_output_stream_1_stmt1, super_constructor_invocation, base64_output_stream_1_block1, (statements, 0), range(base64_output_stream_1, 2945, 11, 73, 73)).
stmt(base64_output_stream_1_stmt2, expression_statement, base64_output_stream_1_block1, (statements, 1), range(base64_output_stream_1, 2965, 25, 74, 74)).
stmt(base64_output_stream_1_stmt3, expression_statement, base64_output_stream_1_block1, (statements, 2), range(base64_output_stream_1, 2999, 32, 75, 75)).
stmt(base64_output_stream_1_stmt4, if_statement, base64_output_stream_1_block2, (statements, 0), range(base64_output_stream_1, 5235, 498, 132, 145)).
stmt(base64_output_stream_1_stmt5, if_statement, base64_output_stream_1_stmt4, elseStatement, range(base64_output_stream_1, 5313, 420, 134, 145)).
stmt(base64_output_stream_1_stmt6, if_statement, base64_output_stream_1_stmt5, elseStatement, range(base64_output_stream_1, 5408, 325, 136, 145)).
stmt(base64_output_stream_1_stmt7, if_statement, base64_output_stream_1_stmt6, elseStatement, range(base64_output_stream_1, 5526, 207, 138, 145)).
stmt(base64_output_stream_1_stmt8, if_statement, base64_output_stream_1_block6, (statements, 0), range(base64_output_stream_1, 5553, 144, 139, 143)).
stmt(base64_output_stream_1_stmt9, expression_statement, base64_output_stream_1_block8, (statements, 0), range(base64_output_stream_1, 5653, 30, 142, 142)).
stmt(base64_output_stream_1_stmt10, expression_statement, base64_output_stream_1_block6, (statements, 1), range(base64_output_stream_1, 5710, 13, 144, 144)).
stmt(base64_output_stream_1_stmt11, variable_declaration_statement, base64_output_stream_1_block9, (statements, 0), range(base64_output_stream_1, 6204, 27, 158, 158)).
stmt(base64_output_stream_1_stmt12, if_statement, base64_output_stream_1_block9, (statements, 1), range(base64_output_stream_1, 6240, 200, 159, 165)).
stmt(base64_output_stream_1_stmt13, variable_declaration_statement, base64_output_stream_1_block10, (statements, 0), range(base64_output_stream_1, 6269, 29, 160, 160)).
stmt(base64_output_stream_1_stmt14, variable_declaration_statement, base64_output_stream_1_block10, (statements, 1), range(base64_output_stream_1, 6311, 42, 161, 161)).
stmt(base64_output_stream_1_stmt15, if_statement, base64_output_stream_1_block10, (statements, 2), range(base64_output_stream_1, 6366, 64, 162, 164)).
stmt(base64_output_stream_1_stmt16, expression_statement, base64_output_stream_1_block11, (statements, 0), range(base64_output_stream_1, 6395, 21, 163, 163)).
stmt(base64_output_stream_1_stmt17, if_statement, base64_output_stream_1_block9, (statements, 2), range(base64_output_stream_1, 6449, 51, 166, 168)).
stmt(base64_output_stream_1_stmt18, if_statement, base64_output_stream_1_block13, (statements, 0), range(base64_output_stream_1, 7060, 134, 189, 193)).
stmt(base64_output_stream_1_stmt19, expression_statement, base64_output_stream_1_block14, (statements, 0), range(base64_output_stream_1, 7151, 33, 192, 192)).
%string_utils_1 - org.apache.commons.codec.binary.StringUtils
stmt(string_utils_1_stmt1, return_statement, string_utils_1_block1, (statements, 0), range(string_utils_1, 5572, 65, 129, 129)).
stmt(string_utils_1_stmt2, if_statement, string_utils_1_block2, (statements, 0), range(string_utils_1, 6593, 56, 152, 154)).
stmt(string_utils_1_stmt3, try_statement, string_utils_1_block2, (statements, 1), range(string_utils_1, 6658, 187, 155, 159)).
stmt(string_utils_1_stmt4, return_statement, string_utils_1_block4, (statements, 0), range(string_utils_1, 6676, 36, 156, 156)).
%base64_1 - org.apache.commons.codec.binary.Base64
stmt(base64_1_stmt1, constructor_invocation, base64_1_block1, (statements, 0), range(base64_1, 9989, 48, 256, 256)).
stmt(base64_1_stmt2, if_statement, base64_1_block2, (statements, 0), range(base64_1, 13375, 167, 333, 336)).
stmt(base64_1_stmt3, expression_statement, base64_1_block2, (statements, 1), range(base64_1, 13551, 60, 337, 337)).
stmt(base64_1_stmt4, expression_statement, base64_1_block2, (statements, 2), range(base64_1, 13620, 52, 338, 338)).
stmt(base64_1_stmt5, expression_statement, base64_1_block2, (statements, 3), range(base64_1, 13681, 80, 339, 339)).
stmt(base64_1_stmt6, if_statement, base64_1_block2, (statements, 4), range(base64_1, 13770, 137, 340, 344)).
stmt(base64_1_stmt7, expression_statement, base64_1_block4, (statements, 0), range(base64_1, 13804, 43, 341, 341)).
stmt(base64_1_stmt8, expression_statement, base64_1_block2, (statements, 5), range(base64_1, 13916, 38, 345, 345)).
stmt(base64_1_stmt9, if_statement, base64_1_block2, (statements, 6), range(base64_1, 13963, 232, 346, 349)).
stmt(base64_1_stmt10, expression_statement, base64_1_block2, (statements, 7), range(base64_1, 14204, 75, 350, 350)).
stmt(base64_1_stmt11, return_statement, base64_1_block6, (statements, 0), range(base64_1, 14776, 27, 369, 369)).
stmt(base64_1_stmt12, return_statement, base64_1_block7, (statements, 0), range(base64_1, 14993, 42, 378, 378)).
stmt(base64_1_stmt13, if_statement, base64_1_block8, (statements, 0), range(base64_1, 15116, 311, 383, 391)).
stmt(base64_1_stmt14, expression_statement, base64_1_block9, (statements, 0), range(base64_1, 15150, 39, 384, 384)).
stmt(base64_1_stmt15, expression_statement, base64_1_block9, (statements, 1), range(base64_1, 15202, 8, 385, 385)).
stmt(base64_1_stmt16, expression_statement, base64_1_block9, (statements, 2), range(base64_1, 15223, 12, 386, 386)).
stmt(base64_1_stmt17, if_statement, base64_1_block10, (statements, 0), range(base64_1, 16084, 504, 407, 421)).
stmt(base64_1_stmt18, variable_declaration_statement, base64_1_block11, (statements, 0), range(base64_1, 16118, 36, 408, 408)).
stmt(base64_1_stmt19, if_statement, base64_1_block11, (statements, 1), range(base64_1, 16167, 387, 409, 419)).
stmt(base64_1_stmt20, expression_statement, base64_1_block12, (statements, 0), range(base64_1, 16202, 48, 410, 410)).
stmt(base64_1_stmt21, expression_statement, base64_1_block12, (statements, 1), range(base64_1, 16267, 15, 411, 411)).
stmt(base64_1_stmt22, if_statement, base64_1_block12, (statements, 2), range(base64_1, 16299, 74, 412, 414)).
stmt(base64_1_stmt23, expression_statement, base64_1_block13, (statements, 0), range(base64_1, 16341, 14, 413, 413)).
stmt(base64_1_stmt24, expression_statement, base64_1_block14, (statements, 0), range(base64_1, 16526, 14, 418, 418)).
stmt(base64_1_stmt25, return_statement, base64_1_block11, (statements, 2), range(base64_1, 16567, 11, 420, 420)).
stmt(base64_1_stmt26, if_statement, base64_1_block15, (statements, 0), range(base64_1, 17315, 136, 439, 443)).
stmt(base64_1_stmt27, expression_statement, base64_1_block16, (statements, 0), range(base64_1, 17372, 13, 440, 440)).
stmt(base64_1_stmt28, expression_statement, base64_1_block16, (statements, 1), range(base64_1, 17398, 13, 441, 441)).
stmt(base64_1_stmt29, expression_statement, base64_1_block16, (statements, 2), range(base64_1, 17424, 17, 442, 442)).
stmt(base64_1_stmt30, if_statement, base64_1_block17, (statements, 0), range(base64_1, 22052, 40, 551, 553)).
stmt(base64_1_stmt31, if_statement, base64_1_block17, (statements, 1), range(base64_1, 22101, 52, 554, 556)).
stmt(base64_1_stmt32, expression_statement, base64_1_block19, (statements, 0), range(base64_1, 22132, 11, 555, 555)).
stmt(base64_1_stmt33, for_statement, base64_1_block17, (statements, 2), range(base64_1, 22162, 916, 557, 580)).
stmt(base64_1_stmt34, if_statement, base64_1_block20, (statements, 0), range(base64_1, 22210, 103, 558, 560)).
stmt(base64_1_stmt35, expression_statement, base64_1_block21, (statements, 0), range(base64_1, 22284, 15, 559, 559)).
stmt(base64_1_stmt36, variable_declaration_statement, base64_1_block20, (statements, 1), range(base64_1, 22326, 21, 561, 561)).
stmt(base64_1_stmt37, if_statement, base64_1_block20, (statements, 2), range(base64_1, 22360, 708, 562, 579)).
stmt(base64_1_stmt38, if_statement, base64_1_block23, (statements, 0), range(base64_1, 22495, 559, 567, 578)).
stmt(base64_1_stmt39, variable_declaration_statement, base64_1_block24, (statements, 0), range(base64_1, 22556, 29, 568, 568)).
stmt(base64_1_stmt40, if_statement, base64_1_block24, (statements, 1), range(base64_1, 22606, 430, 569, 577)).
stmt(base64_1_stmt41, expression_statement, base64_1_block25, (statements, 0), range(base64_1, 22649, 26, 570, 570)).
stmt(base64_1_stmt42, expression_statement, base64_1_block25, (statements, 1), range(base64_1, 22700, 22, 571, 571)).
stmt(base64_1_stmt43, if_statement, base64_1_block25, (statements, 2), range(base64_1, 22747, 267, 572, 576)).
stmt(base64_1_stmt44, expression_statement, base64_1_block26, (statements, 0), range(base64_1, 22795, 48, 573, 573)).
stmt(base64_1_stmt45, expression_statement, base64_1_block26, (statements, 1), range(base64_1, 22872, 47, 574, 574)).
stmt(base64_1_stmt46, expression_statement, base64_1_block26, (statements, 2), range(base64_1, 22948, 40, 575, 575)).
stmt(base64_1_stmt47, if_statement, base64_1_block17, (statements, 3), range(base64_1, 23316, 460, 585, 598)).
stmt(base64_1_stmt48, switch_statement, base64_1_block27, (statements, 1), range(base64_1, 23392, 374, 588, 597)).
stmt(base64_1_stmt49, expression_statement, base64_1_stmt48, (statements, 5), range(base64_1, 23609, 48, 594, 594)).
stmt(base64_1_stmt50, return_statement, base64_1_block28, (statements, 0), range(base64_1, 24136, 96, 610, 610)).
stmt(base64_1_stmt51, for_statement, base64_1_block29, (statements, 0), range(base64_1, 25285, 141, 639, 643)).
stmt(base64_1_stmt52, if_statement, base64_1_block30, (statements, 0), range(base64_1, 25343, 73, 640, 642)).
stmt(base64_1_stmt53, return_statement, base64_1_block29, (statements, 1), range(base64_1, 25435, 13, 644, 644)).
%base64_output_stream_test_1 - org.apache.commons.codec.binary.Base64OutputStreamTest
stmt(base64_output_stream_test_1_stmt1, super_constructor_invocation, base64_output_stream_test_1_block1, (statements, 0), range(base64_output_stream_test_1, 1484, 12, 46, 46)).
stmt(base64_output_stream_test_1_stmt2, variable_declaration_statement, base64_output_stream_test_1_block2, (statements, 0), range(base64_output_stream_test_1, 1768, 71, 56, 56)).
stmt(base64_output_stream_test_1_stmt3, variable_declaration_statement, base64_output_stream_test_1_block2, (statements, 1), range(base64_output_stream_test_1, 1848, 37, 57, 57)).
stmt(base64_output_stream_test_1_stmt4, expression_statement, base64_output_stream_test_1_block2, (statements, 2), range(base64_output_stream_test_1, 1894, 62, 58, 58)).
stmt(base64_output_stream_test_1_stmt5, variable_declaration_statement, base64_output_stream_test_1_block2, (statements, 3), range(base64_output_stream_test_1, 1965, 61, 59, 59)).
stmt(base64_output_stream_test_1_stmt6, variable_declaration_statement, base64_output_stream_test_1_block2, (statements, 4), range(base64_output_stream_test_1, 2035, 64, 60, 60)).
stmt(base64_output_stream_test_1_stmt7, expression_statement, base64_output_stream_test_1_block2, (statements, 5), range(base64_output_stream_test_1, 2108, 36, 61, 61)).
stmt(base64_output_stream_test_1_stmt8, expression_statement, base64_output_stream_test_1_block2, (statements, 6), range(base64_output_stream_test_1, 2153, 15, 62, 62)).
%base64_test_data_1 - org.apache.commons.codec.binary.Base64TestData
stmt(base64_test_data_1_stmt1, try_statement, base64_test_data_1_block1, (statements, 0), range(base64_test_data_1, 11180, 632, 147, 165)).
stmt(base64_test_data_1_stmt2, variable_declaration_statement, base64_test_data_1_block2, (statements, 0), range(base64_test_data_1, 11198, 32, 148, 148)).
stmt(base64_test_data_1_stmt3, expression_statement, base64_test_data_1_block3, (statements, 0), range(base64_test_data_1, 11791, 11, 164, 164)).
stmt(base64_test_data_1_stmt4, variable_declaration_statement, base64_test_data_1_block4, (statements, 0), range(base64_test_data_1, 11969, 53, 171, 171)).
stmt(base64_test_data_1_stmt5, variable_declaration_statement, base64_test_data_1_block4, (statements, 1), range(base64_test_data_1, 12031, 20, 172, 172)).
stmt(base64_test_data_1_stmt6, if_statement, base64_test_data_1_block4, (statements, 2), range(base64_test_data_1, 12060, 49, 173, 175)).
stmt(base64_test_data_1_stmt7, while_statement, base64_test_data_1_block4, (statements, 3), range(base64_test_data_1, 12118, 226, 176, 181)).
stmt(base64_test_data_1_stmt8, expression_statement, base64_test_data_1_block6, (statements, 0), range(base64_test_data_1, 12185, 67, 177, 177)).
%base64_input_stream_1 - org.apache.commons.codec.binary.Base64InputStream
stmt(base64_input_stream_1_stmt1, constructor_invocation, base64_input_stream_1_block1, (statements, 0), range(base64_input_stream_1, 2484, 16, 61, 61)).
stmt(base64_input_stream_1_stmt2, super_constructor_invocation, base64_input_stream_1_block2, (statements, 0), range(base64_input_stream_1, 2926, 10, 74, 74)).
stmt(base64_input_stream_1_stmt3, expression_statement, base64_input_stream_1_block2, (statements, 1), range(base64_input_stream_1, 2945, 25, 75, 75)).
stmt(base64_input_stream_1_stmt4, expression_statement, base64_input_stream_1_block2, (statements, 2), range(base64_input_stream_1, 2979, 32, 76, 76)).
stmt(base64_input_stream_1_stmt5, if_statement, base64_input_stream_1_block3, (statements, 0), range(base64_input_stream_1, 5461, 959, 139, 163)).
stmt(base64_input_stream_1_stmt6, if_statement, base64_input_stream_1_stmt5, elseStatement, range(base64_input_stream_1, 5539, 881, 141, 163)).
stmt(base64_input_stream_1_stmt7, if_statement, base64_input_stream_1_stmt6, elseStatement, range(base64_input_stream_1, 5634, 786, 143, 163)).
stmt(base64_input_stream_1_stmt8, if_statement, base64_input_stream_1_stmt7, elseStatement, range(base64_input_stream_1, 5752, 668, 145, 163)).
stmt(base64_input_stream_1_stmt9, if_statement, base64_input_stream_1_block8, (statements, 0), range(base64_input_stream_1, 5819, 536, 148, 161)).
stmt(base64_input_stream_1_stmt10, variable_declaration_statement, base64_input_stream_1_block9, (statements, 0), range(base64_input_stream_1, 5860, 46, 149, 149)).
stmt(base64_input_stream_1_stmt11, variable_declaration_statement, base64_input_stream_1_block9, (statements, 1), range(base64_input_stream_1, 5923, 21, 150, 150)).
stmt(base64_input_stream_1_stmt12, if_statement, base64_input_stream_1_block9, (statements, 2), range(base64_input_stream_1, 6064, 110, 153, 155)).
stmt(base64_input_stream_1_stmt13, expression_statement, base64_input_stream_1_block10, (statements, 0), range(base64_input_stream_1, 6116, 40, 154, 154)).
stmt(base64_input_stream_1_stmt14, if_statement, base64_input_stream_1_block9, (statements, 3), range(base64_input_stream_1, 6191, 150, 156, 160)).
stmt(base64_input_stream_1_stmt15, expression_statement, base64_input_stream_1_block12, (statements, 0), range(base64_input_stream_1, 6298, 25, 159, 159)).
stmt(base64_input_stream_1_stmt16, return_statement, base64_input_stream_1_block8, (statements, 1), range(base64_input_stream_1, 6368, 42, 162, 162)).
%base64_input_stream_test_1 - org.apache.commons.codec.binary.Base64InputStreamTest
stmt(base64_input_stream_test_1_stmt1, super_constructor_invocation, base64_input_stream_test_1_block1, (statements, 0), range(base64_input_stream_test_1, 1480, 12, 46, 46)).
stmt(base64_input_stream_test_1_stmt2, variable_declaration_statement, base64_input_stream_test_1_block2, (statements, 0), range(base64_input_stream_test_1, 1763, 71, 56, 56)).
stmt(base64_input_stream_test_1_stmt3, variable_declaration_statement, base64_input_stream_test_1_block2, (statements, 1), range(base64_input_stream_test_1, 1843, 62, 57, 57)).
stmt(base64_input_stream_test_1_stmt4, variable_declaration_statement, base64_input_stream_test_1_block2, (statements, 2), range(base64_input_stream_test_1, 1914, 55, 58, 58)).
stmt(base64_input_stream_test_1_stmt5, variable_declaration_statement, base64_input_stream_test_1_block2, (statements, 3), range(base64_input_stream_test_1, 2040, 75, 61, 61)).

%%% Expressions
%base64_output_stream_1 - org.apache.commons.codec.binary.Base64OutputStream
expr(base64_output_stream_1_expr1, array_creation, base64_output_stream_1_code9, initializer, range(base64_output_stream_1, 2220, 11, 51, 51), "new byte[1]").
expr(base64_output_stream_1_expr2, super_constructor_invocation, base64_output_stream_1_block1, (statements, 0), range(base64_output_stream_1, 2945, 11, 73, 73), "super(out);").
expr(base64_output_stream_1_expr5, this_expression, f_do_encode_113, expression, range(base64_output_stream_1, 2965, 4, 74, 74), "this").
expr(base64_output_stream_1_expr4, field_access, base64_output_stream_1_expr3, left_hand_side, range(base64_output_stream_1, 2965, 13, 74, 74), "this.doEncode").
expr(base64_output_stream_1_expr3, assignment, base64_output_stream_1_stmt2, expression, range(base64_output_stream_1, 2965, 24, 74, 74), "this.doEncode=doEncode").
expr(base64_output_stream_1_expr9, this_expression, f_base_64_114, expression, range(base64_output_stream_1, 2999, 4, 75, 75), "this").
expr(base64_output_stream_1_expr7, field_access, base64_output_stream_1_expr6, left_hand_side, range(base64_output_stream_1, 2999, 11, 75, 75), "this.base64").
expr(base64_output_stream_1_expr6, assignment, base64_output_stream_1_stmt3, expression, range(base64_output_stream_1, 2999, 31, 75, 75), "this.base64=new Base64(false)").
expr(base64_output_stream_1_expr8, class_instance_creation, base64_output_stream_1_expr6, right_hand_side, range(base64_output_stream_1, 3013, 17, 75, 75), "new Base64(false)").
expr(base64_output_stream_1_expr10, infix_expression, base64_output_stream_1_stmt4, expression, range(base64_output_stream_1, 5239, 9, 132, 132), "b == null").
expr(base64_output_stream_1_expr12, infix_expression, base64_output_stream_1_expr11, left_operand, range(base64_output_stream_1, 5317, 10, 134, 134), "offset < 0").
expr(base64_output_stream_1_expr11, infix_expression, base64_output_stream_1_stmt5, expression, range(base64_output_stream_1, 5317, 21, 134, 134), "offset < 0 || len < 0").
expr(base64_output_stream_1_expr13, infix_expression, base64_output_stream_1_expr11, right_operand, range(base64_output_stream_1, 5331, 7, 134, 134), "len < 0").
expr(base64_output_stream_1_expr15, infix_expression, base64_output_stream_1_expr14, left_operand, range(base64_output_stream_1, 5412, 17, 136, 136), "offset > b.length").
expr(base64_output_stream_1_expr14, infix_expression, base64_output_stream_1_stmt6, expression, range(base64_output_stream_1, 5412, 44, 136, 136), "offset > b.length || offset + len > b.length").
expr(base64_output_stream_1_expr16, infix_expression, base64_output_stream_1_expr14, right_operand, range(base64_output_stream_1, 5433, 23, 136, 136), "offset + len > b.length").
expr(base64_output_stream_1_expr17, infix_expression, base64_output_stream_1_expr16, left_operand, range(base64_output_stream_1, 5433, 12, 136, 136), "offset + len").
expr(base64_output_stream_1_expr18, infix_expression, base64_output_stream_1_stmt7, expression, range(base64_output_stream_1, 5530, 7, 138, 138), "len > 0").
expr(base64_output_stream_1_expr19, method_invocation, base64_output_stream_1_stmt9, expression, range(base64_output_stream_1, 5653, 29, 142, 142), "base64.decode(b,offset,len)").
expr(base64_output_stream_1_expr20, method_invocation, base64_output_stream_1_stmt10, expression, range(base64_output_stream_1, 5710, 12, 144, 144), "flush(false)").
expr(base64_output_stream_1_expr21, method_invocation, base64_output_stream_1_code18, initializer, range(base64_output_stream_1, 6216, 14, 158, 158), "base64.avail()").
expr(base64_output_stream_1_expr22, infix_expression, base64_output_stream_1_stmt12, expression, range(base64_output_stream_1, 6244, 9, 159, 159), "avail > 0").
expr(base64_output_stream_1_expr23, array_creation, base64_output_stream_1_code22, initializer, range(base64_output_stream_1, 6282, 15, 160, 160), "new byte[avail]").
expr(base64_output_stream_1_expr24, method_invocation, base64_output_stream_1_code27, initializer, range(base64_output_stream_1, 6319, 33, 161, 161), "base64.readResults(buf,0,avail)").
expr(base64_output_stream_1_expr25, infix_expression, base64_output_stream_1_stmt15, expression, range(base64_output_stream_1, 6370, 5, 162, 162), "c > 0").
expr(base64_output_stream_1_expr26, method_invocation, base64_output_stream_1_stmt16, expression, range(base64_output_stream_1, 6395, 20, 163, 163), "out.write(buf,0,c)").
expr(base64_output_stream_1_expr27, method_invocation, base64_output_stream_1_stmt19, expression, range(base64_output_stream_1, 7151, 32, 192, 192), "base64.decode(singleByte,0,-1)").
expr(base64_output_stream_1_expr28, prefix_expression, base64_output_stream_1_expr27, (arguments, 2), range(base64_output_stream_1, 7180, 2, 192, 192), "-1").
%string_utils_1 - org.apache.commons.codec.binary.StringUtils
expr(string_utils_1_expr1, method_invocation, string_utils_1_stmt1, expression, range(string_utils_1, 5579, 57, 129, 129), "StringUtils.getBytesUnchecked(string,CharEncoding.UTF_8)").
expr(string_utils_1_expr2, infix_expression, string_utils_1_stmt2, expression, range(string_utils_1, 6597, 14, 152, 152), "string == null").
expr(string_utils_1_expr3, method_invocation, string_utils_1_stmt4, expression, range(string_utils_1, 6683, 28, 156, 156), "string.getBytes(charsetName)").
%base64_1 - org.apache.commons.codec.binary.Base64
expr(base64_1_expr1, array_initializer, base64_1_code9, initializer, range(base64_1, 3396, 12, 91, 91), "{'\\r','\\n'}").
expr(base64_1_expr2, array_initializer, base64_1_code17, initializer, range(base64_1, 3810, 386, 100, 106), "{'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9','+','/'}").
expr(base64_1_expr3, array_initializer, base64_1_code25, initializer, range(base64_1, 4500, 386, 113, 119), "{'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9','-','_'}").
expr(base64_1_expr4, array_initializer, base64_1_code33, initializer, range(base64_1, 5747, 572, 137, 145), "{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,-1,62,-1,63,52,53,54,55,56,57,58,59,60,61,-1,-1,-1,-1,-1,-1,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,63,-1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51}").
expr(base64_1_expr5, constructor_invocation, base64_1_block1, (statements, 0), range(base64_1, 9989, 48, 256, 256), "this(MIME_CHUNK_SIZE,CHUNK_SEPARATOR,urlSafe);").
expr(base64_1_expr6, infix_expression, base64_1_stmt2, expression, range(base64_1, 13379, 21, 333, 333), "lineSeparator == null").
expr(base64_1_expr8, field_access, base64_1_expr7, left_hand_side, range(base64_1, 13551, 15, 337, 337), "this.lineLength").
expr(base64_1_expr7, assignment, base64_1_stmt3, expression, range(base64_1, 13551, 59, 337, 337), "this.lineLength=lineLength > 0 ? (lineLength / 4) * 4 : 0").
expr(base64_1_expr10, this_expression, f_line_length_13, expression, range(base64_1, 13551, 4, 337, 337), "this").
expr(base64_1_expr9, conditional_expression, base64_1_expr7, right_hand_side, range(base64_1, 13569, 41, 337, 337), "lineLength > 0 ? (lineLength / 4) * 4 : 0").
expr(base64_1_expr11, infix_expression, base64_1_expr9, expression, range(base64_1, 13569, 14, 337, 337), "lineLength > 0").
expr(base64_1_expr12, infix_expression, base64_1_expr9, then_expression, range(base64_1, 13586, 20, 337, 337), "(lineLength / 4) * 4").
expr(base64_1_expr13, parenthesized_expression, base64_1_expr12, left_operand, range(base64_1, 13586, 16, 337, 337), "(lineLength / 4)").
expr(base64_1_expr14, infix_expression, base64_1_expr13, expression, range(base64_1, 13587, 14, 337, 337), "lineLength / 4").
expr(base64_1_expr18, this_expression, f_line_separator_14, expression, range(base64_1, 13620, 4, 338, 338), "this").
expr(base64_1_expr16, field_access, base64_1_expr15, left_hand_side, range(base64_1, 13620, 18, 338, 338), "this.lineSeparator").
expr(base64_1_expr15, assignment, base64_1_stmt4, expression, range(base64_1, 13620, 51, 338, 338), "this.lineSeparator=new byte[lineSeparator.length]").
expr(base64_1_expr17, array_creation, base64_1_expr15, right_hand_side, range(base64_1, 13641, 30, 338, 338), "new byte[lineSeparator.length]").
expr(base64_1_expr19, method_invocation, base64_1_stmt5, expression, range(base64_1, 13681, 79, 339, 339), "System.arraycopy(lineSeparator,0,this.lineSeparator,0,lineSeparator.length)").
expr(base64_1_expr21, this_expression, f_line_separator_14, expression, range(base64_1, 13716, 4, 339, 339), "this").
expr(base64_1_expr20, field_access, base64_1_expr19, (arguments, 2), range(base64_1, 13716, 18, 339, 339), "this.lineSeparator").
expr(base64_1_expr22, infix_expression, base64_1_stmt6, expression, range(base64_1, 13774, 14, 340, 340), "lineLength > 0").
expr(base64_1_expr26, this_expression, f_encode_size_15, expression, range(base64_1, 13804, 4, 341, 341), "this").
expr(base64_1_expr23, assignment, base64_1_stmt7, expression, range(base64_1, 13804, 42, 341, 341), "this.encodeSize=4 + lineSeparator.length").
expr(base64_1_expr24, field_access, base64_1_expr23, left_hand_side, range(base64_1, 13804, 15, 341, 341), "this.encodeSize").
expr(base64_1_expr25, infix_expression, base64_1_expr23, right_hand_side, range(base64_1, 13822, 24, 341, 341), "4 + lineSeparator.length").
expr(base64_1_expr27, assignment, base64_1_stmt8, expression, range(base64_1, 13916, 37, 345, 345), "this.decodeSize=this.encodeSize - 1").
expr(base64_1_expr28, field_access, base64_1_expr27, left_hand_side, range(base64_1, 13916, 15, 345, 345), "this.decodeSize").
expr(base64_1_expr30, this_expression, f_decode_size_16, expression, range(base64_1, 13916, 4, 345, 345), "this").
expr(base64_1_expr29, infix_expression, base64_1_expr27, right_hand_side, range(base64_1, 13934, 19, 345, 345), "this.encodeSize - 1").
expr(base64_1_expr32, this_expression, f_encode_size_15, expression, range(base64_1, 13934, 4, 345, 345), "this").
expr(base64_1_expr31, field_access, base64_1_expr29, left_operand, range(base64_1, 13934, 15, 345, 345), "this.encodeSize").
expr(base64_1_expr33, method_invocation, base64_1_stmt9, expression, range(base64_1, 13967, 33, 346, 346), "containsBase64Byte(lineSeparator)").
expr(base64_1_expr37, this_expression, f_encode_table_17, expression, range(base64_1, 14204, 4, 350, 350), "this").
expr(base64_1_expr34, assignment, base64_1_stmt10, expression, range(base64_1, 14204, 74, 350, 350), "this.encodeTable=urlSafe ? URL_SAFE_ENCODE_TABLE : STANDARD_ENCODE_TABLE").
expr(base64_1_expr35, field_access, base64_1_expr34, left_hand_side, range(base64_1, 14204, 16, 350, 350), "this.encodeTable").
expr(base64_1_expr36, conditional_expression, base64_1_expr34, right_hand_side, range(base64_1, 14223, 55, 350, 350), "urlSafe ? URL_SAFE_ENCODE_TABLE : STANDARD_ENCODE_TABLE").
expr(base64_1_expr40, this_expression, f_buffer_18, expression, range(base64_1, 14783, 4, 369, 369), "this").
expr(base64_1_expr38, infix_expression, base64_1_stmt11, expression, range(base64_1, 14783, 19, 369, 369), "this.buffer != null").
expr(base64_1_expr39, field_access, base64_1_expr38, left_operand, range(base64_1, 14783, 11, 369, 369), "this.buffer").
expr(base64_1_expr41, conditional_expression, base64_1_stmt12, expression, range(base64_1, 15000, 34, 378, 378), "buffer != null ? pos - readPos : 0").
expr(base64_1_expr42, infix_expression, base64_1_expr41, expression, range(base64_1, 15000, 14, 378, 378), "buffer != null").
expr(base64_1_expr43, infix_expression, base64_1_expr41, then_expression, range(base64_1, 15017, 13, 378, 378), "pos - readPos").
expr(base64_1_expr44, infix_expression, base64_1_stmt13, expression, range(base64_1, 15120, 14, 383, 383), "buffer == null").
expr(base64_1_expr45, assignment, base64_1_stmt14, expression, range(base64_1, 15150, 38, 384, 384), "buffer=new byte[DEFAULT_BUFFER_SIZE]").
expr(base64_1_expr46, array_creation, base64_1_expr45, right_hand_side, range(base64_1, 15159, 29, 384, 384), "new byte[DEFAULT_BUFFER_SIZE]").
expr(base64_1_expr47, assignment, base64_1_stmt15, expression, range(base64_1, 15202, 7, 385, 385), "pos=0").
expr(base64_1_expr48, assignment, base64_1_stmt16, expression, range(base64_1, 15223, 11, 386, 386), "readPos=0").
expr(base64_1_expr49, infix_expression, base64_1_stmt17, expression, range(base64_1, 16088, 14, 407, 407), "buffer != null").
expr(base64_1_expr50, method_invocation, base64_1_code56, initializer, range(base64_1, 16128, 25, 408, 408), "Math.min(avail(),bAvail)").
expr(base64_1_expr51, method_invocation, base64_1_expr50, (arguments, 0), range(base64_1, 16137, 7, 408, 408), "avail()").
expr(base64_1_expr52, infix_expression, base64_1_stmt19, expression, range(base64_1, 16171, 11, 409, 409), "buffer != b").
expr(base64_1_expr53, method_invocation, base64_1_stmt20, expression, range(base64_1, 16202, 47, 410, 410), "System.arraycopy(buffer,readPos,b,bPos,len)").
expr(base64_1_expr54, assignment, base64_1_stmt21, expression, range(base64_1, 16267, 14, 411, 411), "readPos+=len").
expr(base64_1_expr55, infix_expression, base64_1_stmt22, expression, range(base64_1, 16303, 14, 412, 412), "readPos >= pos").
expr(base64_1_expr56, assignment, base64_1_stmt23, expression, range(base64_1, 16341, 13, 413, 413), "buffer=null").
expr(base64_1_expr57, assignment, base64_1_stmt24, expression, range(base64_1, 16526, 13, 418, 418), "buffer=null").
expr(base64_1_expr58, infix_expression, base64_1_stmt26, expression, range(base64_1, 17319, 37, 439, 439), "out != null && out.length == outAvail").
expr(base64_1_expr59, infix_expression, base64_1_expr58, left_operand, range(base64_1, 17319, 11, 439, 439), "out != null").
expr(base64_1_expr60, infix_expression, base64_1_expr58, right_operand, range(base64_1, 17334, 22, 439, 439), "out.length == outAvail").
expr(base64_1_expr61, assignment, base64_1_stmt27, expression, range(base64_1, 17372, 12, 440, 440), "buffer=out").
expr(base64_1_expr62, assignment, base64_1_stmt28, expression, range(base64_1, 17398, 12, 441, 441), "pos=outPos").
expr(base64_1_expr63, assignment, base64_1_stmt29, expression, range(base64_1, 17424, 16, 442, 442), "readPos=outPos").
expr(base64_1_expr64, infix_expression, base64_1_stmt31, expression, range(base64_1, 22105, 11, 554, 554), "inAvail < 0").
expr(base64_1_expr65, assignment, base64_1_stmt32, expression, range(base64_1, 22132, 10, 555, 555), "eof=true").
expr(base64_1_expr66, variable_declaration_expression, base64_1_stmt33, (initializers, 0), range(base64_1, 22167, 9, 557, 557), "int i=0").
expr(base64_1_expr67, infix_expression, base64_1_stmt33, expression, range(base64_1, 22178, 11, 557, 557), "i < inAvail").
expr(base64_1_expr68, postfix_expression, base64_1_stmt33, (updaters, 0), range(base64_1, 22191, 3, 557, 557), "i++").
expr(base64_1_expr69, infix_expression, base64_1_stmt34, expression, range(base64_1, 22214, 50, 558, 558), "buffer == null || buffer.length - pos < decodeSize").
expr(base64_1_expr70, infix_expression, base64_1_expr69, left_operand, range(base64_1, 22214, 14, 558, 558), "buffer == null").
expr(base64_1_expr72, infix_expression, base64_1_expr71, left_operand, range(base64_1, 22232, 19, 558, 558), "buffer.length - pos").
expr(base64_1_expr71, infix_expression, base64_1_expr69, right_operand, range(base64_1, 22232, 32, 558, 558), "buffer.length - pos < decodeSize").
expr(base64_1_expr73, method_invocation, base64_1_stmt35, expression, range(base64_1, 22284, 14, 559, 559), "resizeBuffer()").
expr(base64_1_expr74, array_access, base64_1_code62, initializer, range(base64_1, 22335, 11, 561, 561), "in[inPos++]").
expr(base64_1_expr75, postfix_expression, base64_1_expr74, index, range(base64_1, 22338, 7, 561, 561), "inPos++").
expr(base64_1_expr76, infix_expression, base64_1_stmt37, expression, range(base64_1, 22364, 8, 562, 562), "b == PAD").
expr(base64_1_expr77, infix_expression, base64_1_stmt38, expression, range(base64_1, 22499, 33, 567, 567), "b >= 0 && b < DECODE_TABLE.length").
expr(base64_1_expr78, infix_expression, base64_1_expr77, left_operand, range(base64_1, 22499, 6, 567, 567), "b >= 0").
expr(base64_1_expr79, infix_expression, base64_1_expr77, right_operand, range(base64_1, 22509, 23, 567, 567), "b < DECODE_TABLE.length").
expr(base64_1_expr80, array_access, base64_1_code64, initializer, range(base64_1, 22569, 15, 568, 568), "DECODE_TABLE[b]").
expr(base64_1_expr81, infix_expression, base64_1_stmt40, expression, range(base64_1, 22610, 11, 569, 569), "result >= 0").
expr(base64_1_expr82, assignment, base64_1_stmt41, expression, range(base64_1, 22649, 25, 570, 570), "modulus=(++modulus) % 4").
expr(base64_1_expr83, infix_expression, base64_1_expr82, right_hand_side, range(base64_1, 22659, 15, 570, 570), "(++modulus) % 4").
expr(base64_1_expr84, parenthesized_expression, base64_1_expr83, left_operand, range(base64_1, 22659, 11, 570, 570), "(++modulus)").
expr(base64_1_expr85, prefix_expression, base64_1_expr84, expression, range(base64_1, 22660, 9, 570, 570), "++modulus").
expr(base64_1_expr86, assignment, base64_1_stmt42, expression, range(base64_1, 22700, 21, 571, 571), "x=(x << 6) + result").
expr(base64_1_expr87, infix_expression, base64_1_expr86, right_hand_side, range(base64_1, 22704, 17, 571, 571), "(x << 6) + result").
expr(base64_1_expr88, parenthesized_expression, base64_1_expr87, left_operand, range(base64_1, 22704, 8, 571, 571), "(x << 6)").
expr(base64_1_expr89, infix_expression, base64_1_expr88, expression, range(base64_1, 22705, 6, 571, 571), "x << 6").
expr(base64_1_expr90, infix_expression, base64_1_stmt43, expression, range(base64_1, 22751, 12, 572, 572), "modulus == 0").
expr(base64_1_expr91, assignment, base64_1_stmt44, expression, range(base64_1, 22795, 47, 573, 573), "buffer[pos++]=(byte)((x >> 16) & MASK_8BITS)").
expr(base64_1_expr92, array_access, base64_1_expr91, left_hand_side, range(base64_1, 22795, 13, 573, 573), "buffer[pos++]").
expr(base64_1_expr94, postfix_expression, base64_1_expr92, index, range(base64_1, 22802, 5, 573, 573), "pos++").
expr(base64_1_expr93, cast_expression, base64_1_expr91, right_hand_side, range(base64_1, 22811, 31, 573, 573), "(byte)((x >> 16) & MASK_8BITS)").
expr(base64_1_expr95, parenthesized_expression, base64_1_expr93, expression, range(base64_1, 22818, 24, 573, 573), "((x >> 16) & MASK_8BITS)").
expr(base64_1_expr96, infix_expression, base64_1_expr95, expression, range(base64_1, 22819, 22, 573, 573), "(x >> 16) & MASK_8BITS").
expr(base64_1_expr97, parenthesized_expression, base64_1_expr96, left_operand, range(base64_1, 22819, 9, 573, 573), "(x >> 16)").
expr(base64_1_expr98, infix_expression, base64_1_expr97, expression, range(base64_1, 22820, 7, 573, 573), "x >> 16").
expr(base64_1_expr99, assignment, base64_1_stmt45, expression, range(base64_1, 22872, 46, 574, 574), "buffer[pos++]=(byte)((x >> 8) & MASK_8BITS)").
expr(base64_1_expr100, array_access, base64_1_expr99, left_hand_side, range(base64_1, 22872, 13, 574, 574), "buffer[pos++]").
expr(base64_1_expr102, postfix_expression, base64_1_expr100, index, range(base64_1, 22879, 5, 574, 574), "pos++").
expr(base64_1_expr101, cast_expression, base64_1_expr99, right_hand_side, range(base64_1, 22888, 30, 574, 574), "(byte)((x >> 8) & MASK_8BITS)").
expr(base64_1_expr103, parenthesized_expression, base64_1_expr101, expression, range(base64_1, 22895, 23, 574, 574), "((x >> 8) & MASK_8BITS)").
expr(base64_1_expr104, infix_expression, base64_1_expr103, expression, range(base64_1, 22896, 21, 574, 574), "(x >> 8) & MASK_8BITS").
expr(base64_1_expr105, parenthesized_expression, base64_1_expr104, left_operand, range(base64_1, 22896, 8, 574, 574), "(x >> 8)").
expr(base64_1_expr106, infix_expression, base64_1_expr105, expression, range(base64_1, 22897, 6, 574, 574), "x >> 8").
expr(base64_1_expr108, array_access, base64_1_expr107, left_hand_side, range(base64_1, 22948, 13, 575, 575), "buffer[pos++]").
expr(base64_1_expr107, assignment, base64_1_stmt46, expression, range(base64_1, 22948, 39, 575, 575), "buffer[pos++]=(byte)(x & MASK_8BITS)").
expr(base64_1_expr110, postfix_expression, base64_1_expr108, index, range(base64_1, 22955, 5, 575, 575), "pos++").
expr(base64_1_expr109, cast_expression, base64_1_expr107, right_hand_side, range(base64_1, 22964, 23, 575, 575), "(byte)(x & MASK_8BITS)").
expr(base64_1_expr111, parenthesized_expression, base64_1_expr109, expression, range(base64_1, 22971, 16, 575, 575), "(x & MASK_8BITS)").
expr(base64_1_expr112, infix_expression, base64_1_expr111, expression, range(base64_1, 22972, 14, 575, 575), "x & MASK_8BITS").
expr(base64_1_expr113, infix_expression, base64_1_stmt47, expression, range(base64_1, 23320, 19, 585, 585), "eof && modulus != 0").
expr(base64_1_expr114, infix_expression, base64_1_expr113, right_operand, range(base64_1, 23327, 12, 585, 585), "modulus != 0").
expr(base64_1_expr115, assignment, base64_1_stmt49, expression, range(base64_1, 23609, 47, 594, 594), "buffer[pos++]=(byte)((x >> 16) & MASK_8BITS)").
expr(base64_1_expr116, array_access, base64_1_expr115, left_hand_side, range(base64_1, 23609, 13, 594, 594), "buffer[pos++]").
expr(base64_1_expr118, postfix_expression, base64_1_expr116, index, range(base64_1, 23616, 5, 594, 594), "pos++").
expr(base64_1_expr117, cast_expression, base64_1_expr115, right_hand_side, range(base64_1, 23625, 31, 594, 594), "(byte)((x >> 16) & MASK_8BITS)").
expr(base64_1_expr119, parenthesized_expression, base64_1_expr117, expression, range(base64_1, 23632, 24, 594, 594), "((x >> 16) & MASK_8BITS)").
expr(base64_1_expr120, infix_expression, base64_1_expr119, expression, range(base64_1, 23633, 22, 594, 594), "(x >> 16) & MASK_8BITS").
expr(base64_1_expr121, parenthesized_expression, base64_1_expr120, left_operand, range(base64_1, 23633, 9, 594, 594), "(x >> 16)").
expr(base64_1_expr122, infix_expression, base64_1_expr121, expression, range(base64_1, 23634, 7, 594, 594), "x >> 16").
expr(base64_1_expr123, infix_expression, base64_1_stmt50, expression, range(base64_1, 24143, 88, 610, 610), "octet == PAD || (octet >= 0 && octet < DECODE_TABLE.length && DECODE_TABLE[octet] != -1)").
expr(base64_1_expr124, infix_expression, base64_1_expr123, left_operand, range(base64_1, 24143, 12, 610, 610), "octet == PAD").
expr(base64_1_expr125, parenthesized_expression, base64_1_expr123, right_operand, range(base64_1, 24159, 72, 610, 610), "(octet >= 0 && octet < DECODE_TABLE.length && DECODE_TABLE[octet] != -1)").
expr(base64_1_expr128, infix_expression, base64_1_expr127, left_operand, range(base64_1, 24160, 10, 610, 610), "octet >= 0").
expr(base64_1_expr126, infix_expression, base64_1_expr125, expression, range(base64_1, 24160, 70, 610, 610), "octet >= 0 && octet < DECODE_TABLE.length && DECODE_TABLE[octet] != -1").
expr(base64_1_expr127, infix_expression, base64_1_expr126, left_operand, range(base64_1, 24160, 41, 610, 610), "octet >= 0 && octet < DECODE_TABLE.length").
expr(base64_1_expr129, infix_expression, base64_1_expr127, right_operand, range(base64_1, 24174, 27, 610, 610), "octet < DECODE_TABLE.length").
expr(base64_1_expr131, array_access, base64_1_expr130, left_operand, range(base64_1, 24205, 19, 610, 610), "DECODE_TABLE[octet]").
expr(base64_1_expr130, infix_expression, base64_1_expr126, right_operand, range(base64_1, 24205, 25, 610, 610), "DECODE_TABLE[octet] != -1").
expr(base64_1_expr132, prefix_expression, base64_1_expr130, right_operand, range(base64_1, 24228, 2, 610, 610), "-1").
expr(base64_1_expr133, variable_declaration_expression, base64_1_stmt51, (initializers, 0), range(base64_1, 25290, 9, 639, 639), "int i=0").
expr(base64_1_expr134, infix_expression, base64_1_stmt51, expression, range(base64_1, 25301, 21, 639, 639), "i < arrayOctet.length").
expr(base64_1_expr135, postfix_expression, base64_1_stmt51, (updaters, 0), range(base64_1, 25324, 3, 639, 639), "i++").
expr(base64_1_expr136, method_invocation, base64_1_stmt52, expression, range(base64_1, 25347, 23, 640, 640), "isBase64(arrayOctet[i])").
expr(base64_1_expr137, array_access, base64_1_expr136, (arguments, 0), range(base64_1, 25356, 13, 640, 640), "arrayOctet[i]").
%base64_output_stream_test_1 - org.apache.commons.codec.binary.Base64OutputStreamTest
expr(base64_output_stream_test_1_expr1, array_initializer, base64_output_stream_test_1_code10, initializer, range(base64_output_stream_test_1, 1146, 26, 33, 33), "{(byte)'\\r',(byte)'\\n'}").
expr(base64_output_stream_test_1_expr2, cast_expression, base64_output_stream_test_1_expr1, (expressions, 0), range(base64_output_stream_test_1, 1147, 11, 33, 33), "(byte)'\\r'").
expr(base64_output_stream_test_1_expr3, cast_expression, base64_output_stream_test_1_expr1, (expressions, 1), range(base64_output_stream_test_1, 1160, 11, 33, 33), "(byte)'\\n'").
expr(base64_output_stream_test_1_expr4, array_initializer, base64_output_stream_test_1_code20, initializer, range(base64_output_stream_test_1, 1212, 13, 35, 35), "{(byte)'\\n'}").
expr(base64_output_stream_test_1_expr5, cast_expression, base64_output_stream_test_1_expr4, (expressions, 0), range(base64_output_stream_test_1, 1213, 11, 35, 35), "(byte)'\\n'").
expr(base64_output_stream_test_1_expr6, super_constructor_invocation, base64_output_stream_test_1_block1, (statements, 0), range(base64_output_stream_test_1, 1484, 12, 46, 46), "super(name);").
expr(base64_output_stream_test_1_expr7, method_invocation, base64_output_stream_test_1_code27, initializer, range(base64_output_stream_test_1, 1785, 53, 56, 56), "StringUtils.getBytesUtf8(Base64TestData.CODEC_98_NPE)").
expr(base64_output_stream_test_1_expr8, array_creation, base64_output_stream_test_1_code31, initializer, range(base64_output_stream_test_1, 1870, 14, 57, 57), "new byte[1024]").
expr(base64_output_stream_test_1_expr9, method_invocation, base64_output_stream_test_1_stmt4, expression, range(base64_output_stream_test_1, 1894, 61, 58, 58), "System.arraycopy(codec98,0,codec98_1024,0,codec98.length)").
expr(base64_output_stream_test_1_expr10, class_instance_creation, base64_output_stream_test_1_code36, initializer, range(base64_output_stream_test_1, 1994, 31, 59, 59), "new ByteArrayOutputStream(1024)").
expr(base64_output_stream_test_1_expr11, class_instance_creation, base64_output_stream_test_1_code39, initializer, range(base64_output_stream_test_1, 2063, 35, 60, 60), "new Base64OutputStream(data,false)").
expr(base64_output_stream_test_1_expr12, method_invocation, base64_output_stream_test_1_stmt7, expression, range(base64_output_stream_test_1, 2108, 35, 61, 61), "stream.write(codec98_1024,0,1024)").
expr(base64_output_stream_test_1_expr13, method_invocation, base64_output_stream_test_1_stmt8, expression, range(base64_output_stream_test_1, 2153, 14, 62, 62), "stream.close()").
%base64_test_data_1 - org.apache.commons.codec.binary.Base64TestData
expr(base64_test_data_1_expr1, array_initializer, base64_test_data_1_code9, initializer, range(base64_test_data_1, 5407, 5304, 89, 134), "{-12,-125,-51,43,5,47,116,-72,-120,2,-98,-100,-73,61,118,74,36,38,56,107,45,91,38,47,72,-9,-98,-66,-25,-61,-122,-68,-38,-62,-50,-71,-66,-116,-92,42,54,-56,-113,125,-40,89,54,-67,-60,14,-36,-4,81,-14,-91,103,37,-83,-104,80,-18,-119,-33,115,114,68,-9,112,73,-27,-12,-8,71,-36,-64,17,-40,-37,-113,45,97,-65,-122,88,54,113,19,-31,98,94,92,-62,-55,-1,-102,126,-88,26,83,-80,-6,94,-91,111,3,53,86,50,-43,-51,54,-1,92,50,11,-23,32,3,-96,-81,69,71,125,113,42,-1,-106,-33,60,0,71,108,77,94,6,48,41,-11,-8,76,46,2,38,29,-118,-4,110,-50,127,-100,44,-49,42,-38,55,-80,-86,82,57,-38,-45,-3,39,-80,-84,-14,-6,-122,-17,91,58,-7,96,4,44,-85,-26,-3,74,47,-65,38,-114,-117,-29,-99,49,71,-29,67,66,75,-120,-71,7,-69,-86,125,59,5,32,-67,10,-94,12,-84,-60,-65,-16,46,-126,-115,29,76,-10,115,96,97,50,8,-2,70,86,-71,94,-35,4,29,-127,-56,-120,30,122,93,119,-123,84,76,-15,-111,81,-75,-34,41,-72,126,-7,77,-33,108,-110,39,-125,-5,16,92,-51,-56,96,28,-116,103,-68,109,-12,117,-110,-44,-75,28,69,-44,59,62,-68,39,-4,-119,80,91,19,-116,122,-81,-118,100,-108,-88,2,-8,-106,-75,-37,30,-83,124,-121,108,-127,26,-1,-8,102,-81,-118,127,-113,-51,36,-46,15,106,-33,-104,106,-43,-84,-122,51,-33,124,-32,2,-45,73,-90,124,89,-20,-123,109,-100,117,11,16,-65,66,-118,-97,-9,101,7,-1,41,65,70,116,-119,54,126,44,75,74,26,-34,-27,27,54,-13,-89,-90,64,120,15,-43,123,82,-33,90,-74,41,-62,38,-68,62,-62,34,92,50,95,-67,-110,-99,-71,-44,-123,49,4,96,56,113,76,97,-47,-26,-79,-109,115,-125,90,124,8,-9,-111,36,-74,101,-114,43,0,-110,63,76,99,91,2,12,-60,56,-14,-125,0,6,-27,31,31,-109,-47,-3,109,88,-75,-74,19,26,-66,110,39,13,-50,47,104,-38,18,19,84,103,100,-42,48,110,37,21,-107,83,-52,-12,71,37,-68,-107,-109,89,-34,-94,-127,103,-128,-48,-52,71,0,15,34,56,-50,85,-98,106,-87,-3,97,-116,-19,64,-22,-25,-38,-63,33,-45,80,10,-121,-109,37,-96,36,18,-48,46,44,-66,115,-94,3,-102,-27,-17,-116,-51,88,-17,7,-109,24,66,83,-91,105,-92,-19,66,-76,64,-91,118,-71,103,-123,95,17,-87,-18,-11,66,-74,126,45,83,-14,50,79,20,45,-113,-103,119,-101,-58,-99,27,-100,-17,-107,91,-26,-32,-56,71,72,34,66,16,9,-90,106,-44,-62,-106,11,114,-82,-120,-28,-67,4,-99,109,-20,-19,0,-40,-110,-119,42,-6,4,-31,67,110,-105,53,118,76,96,-126,-8,-96,39,-102,52,106,64,26,-105,-108,-103,-96,-116,116,0,-96,115,89,40,-23,-102,-2,-30,16,58,-53,-33,14,122,-94,113,-121,67,-103,-4,-126,98,-27,124,-12,120,-64,-44,127,45,-120,50,124,-27,87,-20,-84,81,-35,113,-77,-64,-96,-48,-87,-117,-82,90,-64,-108,-121,125,-45,-50,-44,-48,-50,52,-30,-66,-7,46,-40,-47,85,-44,-126,-122,24,-84,21,120,99,-74,27,11,-52,32,-2,122,-100,-118,106,-9,-106,109,-19,71,42,126,66,-56,10,-51,-44,68,109,-13,81,-109,65,121,60,-68,-117,126,-59,4,-107,-22,99,-77,84,29,87,119,-60,87,82,-55,-74,44,-80,3,123,-101,84,-44,9,71,24,91,99,22,-65,11,-11,-14,-38,-84,105,-101,-85,-17,116,-65,118,-105,122,-75,113,-57,-81,-33,-110,28,104,-24,-110,-57,-78,38,-5,-15,-79,87,105,85,41,-42,-114,-67,-123,70,12,61,115,5,23,-70,99,96,-80,65,-65,105,-45,-49,37,-33,-1,119,-88,100,121,-25,-35,-51,10,43,-113,61,103,44,13,108,20,74,19,53,19,37,-76,20,-43,-11,23,-58,-25,-52,121,-40,-118,58,50,19,-8,-33,-30,-49,-27,-11,-80,93,-17,34,93,69,100,66,-54,40,118,89,-52,-87,2,35,-120,18,64,108,31,-25,66,78,6,-91,-69,-53,17,14,-125,33,-31,-110,1,5,-40,7,126,-122,84,-55,-62,-22,69,-28,5,45,-106,120,74,94,51,74,108,-19,-26,-12,49,64,88,68,41,-65,126,125,-1,-8,-83,-67,74,2,-114,-80,-119,-9,-89,-125,21,95,34,-58,-74,111,-103,99,95,48,42,94,-50,-55,-112,-5,-26,11,-89,-38,-19,126,25,102,119,81,-94,70,-79,98,91,-73,114,15,14,87,-21,-122,-1,-90,0,29,-104,-91,-93,-58,-83,-48,-22,100,-112,-41,77,22,-24,112,-72,105,100,6,-86,-39,40,-43,35,-2,4,-94,97,-121,52,-22,1,127,-81,-4,-6,-119,96,35,-91,114,81,91,90,-86,-36,34,-39,93,-42,69,103,-11,107,-87,119,-107,-114,-45,-128,-69,96}").
expr(base64_test_data_1_expr2, method_invocation, base64_test_data_1_code14, initializer, range(base64_test_data_1, 11213, 16, 148, 148), "fill(buf,0,in)").
expr(base64_test_data_1_expr3, method_invocation, base64_test_data_1_stmt3, expression, range(base64_test_data_1, 11791, 10, 164, 164), "in.close()").
expr(base64_test_data_1_expr4, method_invocation, base64_test_data_1_code17, initializer, range(base64_test_data_1, 11980, 41, 171, 171), "in.read(buf,offset,buf.length - offset)").
expr(base64_test_data_1_expr5, infix_expression, base64_test_data_1_expr4, (arguments, 2), range(base64_test_data_1, 12001, 19, 171, 171), "buf.length - offset").
expr(base64_test_data_1_expr6, infix_expression, base64_test_data_1_stmt6, expression, range(base64_test_data_1, 12064, 10, 173, 173), "read == -1").
expr(base64_test_data_1_expr7, prefix_expression, base64_test_data_1_expr6, right_operand, range(base64_test_data_1, 12072, 2, 173, 173), "-1").
expr(base64_test_data_1_expr8, infix_expression, base64_test_data_1_stmt7, expression, range(base64_test_data_1, 12125, 44, 176, 176), "lastRead != -1 && read + offset < buf.length").
expr(base64_test_data_1_expr9, infix_expression, base64_test_data_1_expr8, left_operand, range(base64_test_data_1, 12125, 14, 176, 176), "lastRead != -1").
expr(base64_test_data_1_expr10, prefix_expression, base64_test_data_1_expr9, right_operand, range(base64_test_data_1, 12137, 2, 176, 176), "-1").
expr(base64_test_data_1_expr12, infix_expression, base64_test_data_1_expr11, left_operand, range(base64_test_data_1, 12143, 13, 176, 176), "read + offset").
expr(base64_test_data_1_expr11, infix_expression, base64_test_data_1_expr8, right_operand, range(base64_test_data_1, 12143, 26, 176, 176), "read + offset < buf.length").
expr(base64_test_data_1_expr13, assignment, base64_test_data_1_stmt8, expression, range(base64_test_data_1, 12185, 66, 177, 177), "lastRead=in.read(buf,offset + read,buf.length - read - offset)").
expr(base64_test_data_1_expr14, method_invocation, base64_test_data_1_expr13, right_hand_side, range(base64_test_data_1, 12196, 55, 177, 177), "in.read(buf,offset + read,buf.length - read - offset)").
expr(base64_test_data_1_expr15, infix_expression, base64_test_data_1_expr14, (arguments, 1), range(base64_test_data_1, 12209, 13, 177, 177), "offset + read").
expr(base64_test_data_1_expr16, infix_expression, base64_test_data_1_expr14, (arguments, 2), range(base64_test_data_1, 12224, 26, 177, 177), "buf.length - read - offset").
%base64_input_stream_1 - org.apache.commons.codec.binary.Base64InputStream
expr(base64_input_stream_1_expr1, array_creation, base64_input_stream_1_code9, initializer, range(base64_input_stream_1, 2218, 11, 52, 52), "new byte[1]").
expr(base64_input_stream_1_expr2, constructor_invocation, base64_input_stream_1_block1, (statements, 0), range(base64_input_stream_1, 2484, 16, 61, 61), "this(in,false);").
expr(base64_input_stream_1_expr3, super_constructor_invocation, base64_input_stream_1_block2, (statements, 0), range(base64_input_stream_1, 2926, 10, 74, 74), "super(in);").
expr(base64_input_stream_1_expr5, field_access, base64_input_stream_1_expr4, left_hand_side, range(base64_input_stream_1, 2945, 13, 75, 75), "this.doEncode").
expr(base64_input_stream_1_expr6, this_expression, f_do_encode_81, expression, range(base64_input_stream_1, 2945, 4, 75, 75), "this").
expr(base64_input_stream_1_expr4, assignment, base64_input_stream_1_stmt3, expression, range(base64_input_stream_1, 2945, 24, 75, 75), "this.doEncode=doEncode").
expr(base64_input_stream_1_expr10, this_expression, f_base_64_82, expression, range(base64_input_stream_1, 2979, 4, 76, 76), "this").
expr(base64_input_stream_1_expr7, assignment, base64_input_stream_1_stmt4, expression, range(base64_input_stream_1, 2979, 31, 76, 76), "this.base64=new Base64(false)").
expr(base64_input_stream_1_expr8, field_access, base64_input_stream_1_expr7, left_hand_side, range(base64_input_stream_1, 2979, 11, 76, 76), "this.base64").
expr(base64_input_stream_1_expr9, class_instance_creation, base64_input_stream_1_expr7, right_hand_side, range(base64_input_stream_1, 2993, 17, 76, 76), "new Base64(false)").
expr(base64_input_stream_1_expr11, infix_expression, base64_input_stream_1_stmt5, expression, range(base64_input_stream_1, 5465, 9, 139, 139), "b == null").
expr(base64_input_stream_1_expr12, infix_expression, base64_input_stream_1_stmt6, expression, range(base64_input_stream_1, 5543, 21, 141, 141), "offset < 0 || len < 0").
expr(base64_input_stream_1_expr13, infix_expression, base64_input_stream_1_expr12, left_operand, range(base64_input_stream_1, 5543, 10, 141, 141), "offset < 0").
expr(base64_input_stream_1_expr14, infix_expression, base64_input_stream_1_expr12, right_operand, range(base64_input_stream_1, 5557, 7, 141, 141), "len < 0").
expr(base64_input_stream_1_expr16, infix_expression, base64_input_stream_1_expr15, left_operand, range(base64_input_stream_1, 5638, 17, 143, 143), "offset > b.length").
expr(base64_input_stream_1_expr15, infix_expression, base64_input_stream_1_stmt7, expression, range(base64_input_stream_1, 5638, 44, 143, 143), "offset > b.length || offset + len > b.length").
expr(base64_input_stream_1_expr18, infix_expression, base64_input_stream_1_expr17, left_operand, range(base64_input_stream_1, 5659, 12, 143, 143), "offset + len").
expr(base64_input_stream_1_expr17, infix_expression, base64_input_stream_1_expr15, right_operand, range(base64_input_stream_1, 5659, 23, 143, 143), "offset + len > b.length").
expr(base64_input_stream_1_expr19, infix_expression, base64_input_stream_1_stmt8, expression, range(base64_input_stream_1, 5756, 8, 145, 145), "len == 0").
expr(base64_input_stream_1_expr20, prefix_expression, base64_input_stream_1_stmt9, expression, range(base64_input_stream_1, 5823, 17, 148, 148), "!base64.hasData()").
expr(base64_input_stream_1_expr21, method_invocation, base64_input_stream_1_expr20, operand, range(base64_input_stream_1, 5824, 16, 148, 148), "base64.hasData()").
expr(base64_input_stream_1_expr22, array_creation, base64_input_stream_1_code20, initializer, range(base64_input_stream_1, 5873, 32, 149, 149), "new byte[doEncode ? 4096 : 8192]").
expr(base64_input_stream_1_expr23, conditional_expression, base64_input_stream_1_expr22, (dimensions, 0), range(base64_input_stream_1, 5882, 22, 149, 149), "doEncode ? 4096 : 8192").
expr(base64_input_stream_1_expr24, method_invocation, base64_input_stream_1_code25, initializer, range(base64_input_stream_1, 5931, 12, 150, 150), "in.read(buf)").
expr(base64_input_stream_1_expr25, infix_expression, base64_input_stream_1_stmt12, expression, range(base64_input_stream_1, 6068, 24, 153, 153), "c > 0 && b.length == len").
expr(base64_input_stream_1_expr26, infix_expression, base64_input_stream_1_expr25, left_operand, range(base64_input_stream_1, 6068, 5, 153, 153), "c > 0").
expr(base64_input_stream_1_expr27, infix_expression, base64_input_stream_1_expr25, right_operand, range(base64_input_stream_1, 6077, 15, 153, 153), "b.length == len").
expr(base64_input_stream_1_expr28, method_invocation, base64_input_stream_1_stmt13, expression, range(base64_input_stream_1, 6116, 39, 154, 154), "base64.setInitialBuffer(b,offset,len)").
expr(base64_input_stream_1_expr29, method_invocation, base64_input_stream_1_stmt15, expression, range(base64_input_stream_1, 6298, 24, 159, 159), "base64.decode(buf,0,c)").
expr(base64_input_stream_1_expr30, method_invocation, base64_input_stream_1_stmt16, expression, range(base64_input_stream_1, 6375, 34, 162, 162), "base64.readResults(b,offset,len)").
%base64_input_stream_test_1 - org.apache.commons.codec.binary.Base64InputStreamTest
expr(base64_input_stream_test_1_expr1, array_initializer, base64_input_stream_test_1_code10, initializer, range(base64_input_stream_test_1, 1143, 26, 33, 33), "{(byte)'\\r',(byte)'\\n'}").
expr(base64_input_stream_test_1_expr2, cast_expression, base64_input_stream_test_1_expr1, (expressions, 0), range(base64_input_stream_test_1, 1144, 11, 33, 33), "(byte)'\\r'").
expr(base64_input_stream_test_1_expr3, cast_expression, base64_input_stream_test_1_expr1, (expressions, 1), range(base64_input_stream_test_1, 1157, 11, 33, 33), "(byte)'\\n'").
expr(base64_input_stream_test_1_expr4, array_initializer, base64_input_stream_test_1_code20, initializer, range(base64_input_stream_test_1, 1209, 13, 35, 35), "{(byte)'\\n'}").
expr(base64_input_stream_test_1_expr5, cast_expression, base64_input_stream_test_1_expr4, (expressions, 0), range(base64_input_stream_test_1, 1210, 11, 35, 35), "(byte)'\\n'").
expr(base64_input_stream_test_1_expr6, super_constructor_invocation, base64_input_stream_test_1_block1, (statements, 0), range(base64_input_stream_test_1, 1480, 12, 46, 46), "super(name);").
expr(base64_input_stream_test_1_expr7, method_invocation, base64_input_stream_test_1_code27, initializer, range(base64_input_stream_test_1, 1780, 53, 56, 56), "StringUtils.getBytesUtf8(Base64TestData.CODEC_98_NPE)").
expr(base64_input_stream_test_1_expr8, class_instance_creation, base64_input_stream_test_1_code29, initializer, range(base64_input_stream_test_1, 1871, 33, 57, 57), "new ByteArrayInputStream(codec98)").
expr(base64_input_stream_test_1_expr9, class_instance_creation, base64_input_stream_test_1_code32, initializer, range(base64_input_stream_test_1, 1941, 27, 58, 58), "new Base64InputStream(data)").
expr(base64_input_stream_test_1_expr10, method_invocation, base64_input_stream_test_1_code37, initializer, range(base64_input_stream_test_1, 2062, 52, 61, 61), "Base64TestData.streamToBytes(stream,new byte[1024])").
expr(base64_input_stream_test_1_expr11, array_creation, base64_input_stream_test_1_expr10, (arguments, 1), range(base64_input_stream_test_1, 2099, 14, 61, 61), "new byte[1024]").

%%% Names
%base64_output_stream_1 - org.apache.commons.codec.binary.Base64OutputStream
name(f_single_byte_109, simple_name, base64_output_stream_1_code9, name, range(base64_output_stream_1, 2207, 10, 51, 51), 'singleByte').
name(p_out_111, simple_name, base64_output_stream_1_stmt1, (arguments, 0), range(base64_output_stream_1, 2951, 3, 73, 73), 'out').
name(f_do_encode_113, simple_name, base64_output_stream_1_expr4, name, range(base64_output_stream_1, 2970, 8, 74, 74), 'doEncode').
name(p_do_encode_112, simple_name, base64_output_stream_1_expr3, right_hand_side, range(base64_output_stream_1, 2981, 8, 74, 74), 'doEncode').
name(f_base_64_114, simple_name, base64_output_stream_1_expr7, name, range(base64_output_stream_1, 3004, 6, 75, 75), 'base64').
name(p_b_120, simple_name, base64_output_stream_1_expr10, left_operand, range(base64_output_stream_1, 5239, 1, 132, 132), 'b').
name(p_offset_121, simple_name, base64_output_stream_1_expr12, left_operand, range(base64_output_stream_1, 5317, 6, 134, 134), 'offset').
name(p_len_122, simple_name, base64_output_stream_1_expr13, left_operand, range(base64_output_stream_1, 5331, 3, 134, 134), 'len').
name(p_offset_121, simple_name, base64_output_stream_1_expr15, left_operand, range(base64_output_stream_1, 5412, 6, 136, 136), 'offset').
name(q_length_8, qualified_name, base64_output_stream_1_expr15, right_operand, range(base64_output_stream_1, 5421, 8, 136, 136), 'b.length').
name(p_b_120, simple_name, q_length_8, qualifier, range(base64_output_stream_1, 5421, 1, 136, 136), 'b').
name(p_offset_121, simple_name, base64_output_stream_1_expr17, left_operand, range(base64_output_stream_1, 5433, 6, 136, 136), 'offset').
name(p_len_122, simple_name, base64_output_stream_1_expr17, right_operand, range(base64_output_stream_1, 5442, 3, 136, 136), 'len').
name(p_b_120, simple_name, q_length_9, qualifier, range(base64_output_stream_1, 5448, 1, 136, 136), 'b').
name(q_length_9, qualified_name, base64_output_stream_1_expr16, right_operand, range(base64_output_stream_1, 5448, 8, 136, 136), 'b.length').
name(p_len_122, simple_name, base64_output_stream_1_expr18, left_operand, range(base64_output_stream_1, 5530, 3, 138, 138), 'len').
name(f_do_encode_113, simple_name, base64_output_stream_1_stmt8, expression, range(base64_output_stream_1, 5557, 8, 139, 139), 'doEncode').
name(f_base_64_114, simple_name, base64_output_stream_1_expr19, expression, range(base64_output_stream_1, 5653, 6, 142, 142), 'base64').
name(m_decode_16, simple_name, base64_output_stream_1_expr19, name, range(base64_output_stream_1, 5660, 6, 142, 142), 'decode').
name(p_b_120, simple_name, base64_output_stream_1_expr19, (arguments, 0), range(base64_output_stream_1, 5667, 1, 142, 142), 'b').
name(p_offset_121, simple_name, base64_output_stream_1_expr19, (arguments, 1), range(base64_output_stream_1, 5670, 6, 142, 142), 'offset').
name(p_len_122, simple_name, base64_output_stream_1_expr19, (arguments, 2), range(base64_output_stream_1, 5678, 3, 142, 142), 'len').
name(m_flush_73, simple_name, base64_output_stream_1_expr20, name, range(base64_output_stream_1, 5710, 5, 144, 144), 'flush').
name(v_avail_124, simple_name, base64_output_stream_1_code18, name, range(base64_output_stream_1, 6208, 5, 158, 158), 'avail').
name(f_base_64_114, simple_name, base64_output_stream_1_expr21, expression, range(base64_output_stream_1, 6216, 6, 158, 158), 'base64').
name(m_avail_10, simple_name, base64_output_stream_1_expr21, name, range(base64_output_stream_1, 6223, 5, 158, 158), 'avail').
name(v_avail_124, simple_name, base64_output_stream_1_expr22, left_operand, range(base64_output_stream_1, 6244, 5, 159, 159), 'avail').
name(v_buf_125, simple_name, base64_output_stream_1_code22, name, range(base64_output_stream_1, 6276, 3, 160, 160), 'buf').
name(v_avail_124, simple_name, base64_output_stream_1_expr23, (dimensions, 0), range(base64_output_stream_1, 6291, 5, 160, 160), 'avail').
name(v_c_126, simple_name, base64_output_stream_1_code27, name, range(base64_output_stream_1, 6315, 1, 161, 161), 'c').
name(f_base_64_114, simple_name, base64_output_stream_1_expr24, expression, range(base64_output_stream_1, 6319, 6, 161, 161), 'base64').
name(m_read_results_12, simple_name, base64_output_stream_1_expr24, name, range(base64_output_stream_1, 6326, 11, 161, 161), 'readResults').
name(v_buf_125, simple_name, base64_output_stream_1_expr24, (arguments, 0), range(base64_output_stream_1, 6338, 3, 161, 161), 'buf').
name(v_avail_124, simple_name, base64_output_stream_1_expr24, (arguments, 2), range(base64_output_stream_1, 6346, 5, 161, 161), 'avail').
name(v_c_126, simple_name, base64_output_stream_1_expr25, left_operand, range(base64_output_stream_1, 6370, 1, 162, 162), 'c').
name(f_out_127, simple_name, base64_output_stream_1_expr26, expression, range(base64_output_stream_1, 6395, 3, 163, 163), 'out').
name(m_write_74, simple_name, base64_output_stream_1_expr26, name, range(base64_output_stream_1, 6399, 5, 163, 163), 'write').
name(v_buf_125, simple_name, base64_output_stream_1_expr26, (arguments, 0), range(base64_output_stream_1, 6405, 3, 163, 163), 'buf').
name(v_c_126, simple_name, base64_output_stream_1_expr26, (arguments, 2), range(base64_output_stream_1, 6413, 1, 163, 163), 'c').
name(p_propogate_123, simple_name, base64_output_stream_1_stmt17, expression, range(base64_output_stream_1, 6453, 9, 166, 166), 'propogate').
name(f_base_64_114, simple_name, base64_output_stream_1_expr27, expression, range(base64_output_stream_1, 7151, 6, 192, 192), 'base64').
name(m_decode_16, simple_name, base64_output_stream_1_expr27, name, range(base64_output_stream_1, 7158, 6, 192, 192), 'decode').
name(f_single_byte_109, simple_name, base64_output_stream_1_expr27, (arguments, 0), range(base64_output_stream_1, 7165, 10, 192, 192), 'singleByte').
%string_utils_1 - org.apache.commons.codec.binary.StringUtils
name(t_string_utils_3, simple_name, string_utils_1_expr1, expression, range(string_utils_1, 5579, 11, 129, 129), 'StringUtils').
name(m_get_bytes_unchecked_101, simple_name, string_utils_1_expr1, name, range(string_utils_1, 5591, 17, 129, 129), 'getBytesUnchecked').
name(p_string_164, simple_name, string_utils_1_expr1, (arguments, 0), range(string_utils_1, 5609, 6, 129, 129), 'string').
name(t_char_encoding_5, simple_name, q_utf_8_11, qualifier, range(string_utils_1, 5617, 12, 129, 129), 'CharEncoding').
name(q_utf_8_11, qualified_name, string_utils_1_expr1, (arguments, 1), range(string_utils_1, 5617, 18, 129, 129), 'CharEncoding.UTF_8').
name(p_string_165, simple_name, string_utils_1_expr2, left_operand, range(string_utils_1, 6597, 6, 152, 152), 'string').
name(p_string_165, simple_name, string_utils_1_expr3, expression, range(string_utils_1, 6683, 6, 156, 156), 'string').
name(m_get_bytes_102, simple_name, string_utils_1_expr3, name, range(string_utils_1, 6690, 8, 156, 156), 'getBytes').
name(p_charset_name_166, simple_name, string_utils_1_expr3, (arguments, 0), range(string_utils_1, 6699, 11, 156, 156), 'charsetName').
%base64_1 - org.apache.commons.codec.binary.Base64
name(f_chunk_separator_1, simple_name, base64_1_code9, name, range(base64_1, 3378, 15, 91, 91), 'CHUNK_SEPARATOR').
name(f_standard_encode_table_2, simple_name, base64_1_code17, name, range(base64_1, 3786, 21, 100, 100), 'STANDARD_ENCODE_TABLE').
name(f_url_safe_encode_table_3, simple_name, base64_1_code25, name, range(base64_1, 4476, 21, 113, 113), 'URL_SAFE_ENCODE_TABLE').
name(f_decode_table_4, simple_name, base64_1_code33, name, range(base64_1, 5732, 12, 137, 137), 'DECODE_TABLE').
name(f_mime_chunk_size_6, simple_name, base64_1_stmt1, (arguments, 0), range(base64_1, 9994, 15, 256, 256), 'MIME_CHUNK_SIZE').
name(f_chunk_separator_1, simple_name, base64_1_stmt1, (arguments, 1), range(base64_1, 10011, 15, 256, 256), 'CHUNK_SEPARATOR').
name(p_url_safe_5, simple_name, base64_1_stmt1, (arguments, 2), range(base64_1, 10028, 7, 256, 256), 'urlSafe').
name(m_base64_3, simple_name, base64_1_code35, name, range(base64_1, 13303, 6, 332, 332), 'Base64').
name(p_line_length_10, simple_name, base64_1_code37, name, range(base64_1, 13314, 10, 332, 332), 'lineLength').
name(p_line_separator_11, simple_name, base64_1_code39, name, range(base64_1, 13333, 13, 332, 332), 'lineSeparator').
name(p_url_safe_12, simple_name, base64_1_code43, name, range(base64_1, 13356, 7, 332, 332), 'urlSafe').
name(p_line_separator_11, simple_name, base64_1_expr6, left_operand, range(base64_1, 13379, 13, 333, 333), 'lineSeparator').
name(f_line_length_13, simple_name, base64_1_expr8, name, range(base64_1, 13556, 10, 337, 337), 'lineLength').
name(p_line_length_10, simple_name, base64_1_expr11, left_operand, range(base64_1, 13569, 10, 337, 337), 'lineLength').
name(p_line_length_10, simple_name, base64_1_expr14, left_operand, range(base64_1, 13587, 10, 337, 337), 'lineLength').
name(f_line_separator_14, simple_name, base64_1_expr16, name, range(base64_1, 13625, 13, 338, 338), 'lineSeparator').
name(p_line_separator_11, simple_name, q_length_1, qualifier, range(base64_1, 13650, 13, 338, 338), 'lineSeparator').
name(q_length_1, qualified_name, base64_1_expr17, (dimensions, 0), range(base64_1, 13650, 20, 338, 338), 'lineSeparator.length').
name(t_system_1, simple_name, base64_1_expr19, expression, range(base64_1, 13681, 6, 339, 339), 'System').
name(m_arraycopy_6, simple_name, base64_1_expr19, name, range(base64_1, 13688, 9, 339, 339), 'arraycopy').
name(p_line_separator_11, simple_name, base64_1_expr19, (arguments, 0), range(base64_1, 13698, 13, 339, 339), 'lineSeparator').
name(f_line_separator_14, simple_name, base64_1_expr20, name, range(base64_1, 13721, 13, 339, 339), 'lineSeparator').
name(q_length_2, qualified_name, base64_1_expr19, (arguments, 4), range(base64_1, 13739, 20, 339, 339), 'lineSeparator.length').
name(p_line_separator_11, simple_name, q_length_2, qualifier, range(base64_1, 13739, 13, 339, 339), 'lineSeparator').
name(p_line_length_10, simple_name, base64_1_expr22, left_operand, range(base64_1, 13774, 10, 340, 340), 'lineLength').
name(f_encode_size_15, simple_name, base64_1_expr24, name, range(base64_1, 13809, 10, 341, 341), 'encodeSize').
name(q_length_2, qualified_name, base64_1_expr25, right_operand, range(base64_1, 13826, 20, 341, 341), 'lineSeparator.length').
name(p_line_separator_11, simple_name, q_length_2, qualifier, range(base64_1, 13826, 13, 341, 341), 'lineSeparator').
name(f_decode_size_16, simple_name, base64_1_expr28, name, range(base64_1, 13921, 10, 345, 345), 'decodeSize').
name(f_encode_size_15, simple_name, base64_1_expr31, name, range(base64_1, 13939, 10, 345, 345), 'encodeSize').
name(m_contains_base64_byte_7, simple_name, base64_1_expr33, name, range(base64_1, 13967, 18, 346, 346), 'containsBase64Byte').
name(p_line_separator_11, simple_name, base64_1_expr33, (arguments, 0), range(base64_1, 13986, 13, 346, 346), 'lineSeparator').
name(f_encode_table_17, simple_name, base64_1_expr35, name, range(base64_1, 14209, 11, 350, 350), 'encodeTable').
name(p_url_safe_12, simple_name, base64_1_expr36, expression, range(base64_1, 14223, 7, 350, 350), 'urlSafe').
name(f_url_safe_encode_table_3, simple_name, base64_1_expr36, then_expression, range(base64_1, 14233, 21, 350, 350), 'URL_SAFE_ENCODE_TABLE').
name(f_standard_encode_table_2, simple_name, base64_1_expr36, else_expression, range(base64_1, 14257, 21, 350, 350), 'STANDARD_ENCODE_TABLE').
name(f_buffer_18, simple_name, base64_1_expr39, name, range(base64_1, 14788, 6, 369, 369), 'buffer').
name(f_buffer_18, simple_name, base64_1_expr42, left_operand, range(base64_1, 15000, 6, 378, 378), 'buffer').
name(f_pos_19, simple_name, base64_1_expr43, left_operand, range(base64_1, 15017, 3, 378, 378), 'pos').
name(f_read_pos_20, simple_name, base64_1_expr43, right_operand, range(base64_1, 15023, 7, 378, 378), 'readPos').
name(f_buffer_18, simple_name, base64_1_expr44, left_operand, range(base64_1, 15120, 6, 383, 383), 'buffer').
name(f_buffer_18, simple_name, base64_1_expr45, left_hand_side, range(base64_1, 15150, 6, 384, 384), 'buffer').
name(f_default_buffer_size_21, simple_name, base64_1_expr46, (dimensions, 0), range(base64_1, 15168, 19, 384, 384), 'DEFAULT_BUFFER_SIZE').
name(f_pos_19, simple_name, base64_1_expr47, left_hand_side, range(base64_1, 15202, 3, 385, 385), 'pos').
name(f_read_pos_20, simple_name, base64_1_expr48, left_hand_side, range(base64_1, 15223, 7, 386, 386), 'readPos').
name(f_buffer_18, simple_name, base64_1_expr49, left_operand, range(base64_1, 16088, 6, 407, 407), 'buffer').
name(v_len_25, simple_name, base64_1_code56, name, range(base64_1, 16122, 3, 408, 408), 'len').
name(t_math_2, simple_name, base64_1_expr50, expression, range(base64_1, 16128, 4, 408, 408), 'Math').
name(m_min_13, simple_name, base64_1_expr50, name, range(base64_1, 16133, 3, 408, 408), 'min').
name(m_avail_10, simple_name, base64_1_expr51, name, range(base64_1, 16137, 5, 408, 408), 'avail').
name(p_b_avail_24, simple_name, base64_1_expr50, (arguments, 1), range(base64_1, 16146, 6, 408, 408), 'bAvail').
name(f_buffer_18, simple_name, base64_1_expr52, left_operand, range(base64_1, 16171, 6, 409, 409), 'buffer').
name(p_b_22, simple_name, base64_1_expr52, right_operand, range(base64_1, 16181, 1, 409, 409), 'b').
name(t_system_1, simple_name, base64_1_expr53, expression, range(base64_1, 16202, 6, 410, 410), 'System').
name(m_arraycopy_6, simple_name, base64_1_expr53, name, range(base64_1, 16209, 9, 410, 410), 'arraycopy').
name(f_buffer_18, simple_name, base64_1_expr53, (arguments, 0), range(base64_1, 16219, 6, 410, 410), 'buffer').
name(f_read_pos_20, simple_name, base64_1_expr53, (arguments, 1), range(base64_1, 16227, 7, 410, 410), 'readPos').
name(p_b_22, simple_name, base64_1_expr53, (arguments, 2), range(base64_1, 16236, 1, 410, 410), 'b').
name(p_b_pos_23, simple_name, base64_1_expr53, (arguments, 3), range(base64_1, 16239, 4, 410, 410), 'bPos').
name(v_len_25, simple_name, base64_1_expr53, (arguments, 4), range(base64_1, 16245, 3, 410, 410), 'len').
name(f_read_pos_20, simple_name, base64_1_expr54, left_hand_side, range(base64_1, 16267, 7, 411, 411), 'readPos').
name(v_len_25, simple_name, base64_1_expr54, right_hand_side, range(base64_1, 16278, 3, 411, 411), 'len').
name(f_read_pos_20, simple_name, base64_1_expr55, left_operand, range(base64_1, 16303, 7, 412, 412), 'readPos').
name(f_pos_19, simple_name, base64_1_expr55, right_operand, range(base64_1, 16314, 3, 412, 412), 'pos').
name(f_buffer_18, simple_name, base64_1_expr56, left_hand_side, range(base64_1, 16341, 6, 413, 413), 'buffer').
name(f_buffer_18, simple_name, base64_1_expr57, left_hand_side, range(base64_1, 16526, 6, 418, 418), 'buffer').
name(v_len_25, simple_name, base64_1_stmt25, expression, range(base64_1, 16574, 3, 420, 420), 'len').
name(p_out_26, simple_name, base64_1_expr59, left_operand, range(base64_1, 17319, 3, 439, 439), 'out').
name(p_out_26, simple_name, q_length_2, qualifier, range(base64_1, 17334, 3, 439, 439), 'out').
name(q_length_2, qualified_name, base64_1_expr60, left_operand, range(base64_1, 17334, 10, 439, 439), 'out.length').
name(p_out_avail_28, simple_name, base64_1_expr60, right_operand, range(base64_1, 17348, 8, 439, 439), 'outAvail').
name(f_buffer_18, simple_name, base64_1_expr61, left_hand_side, range(base64_1, 17372, 6, 440, 440), 'buffer').
name(p_out_26, simple_name, base64_1_expr61, right_hand_side, range(base64_1, 17381, 3, 440, 440), 'out').
name(f_pos_19, simple_name, base64_1_expr62, left_hand_side, range(base64_1, 17398, 3, 441, 441), 'pos').
name(p_out_pos_27, simple_name, base64_1_expr62, right_hand_side, range(base64_1, 17404, 6, 441, 441), 'outPos').
name(f_read_pos_20, simple_name, base64_1_expr63, left_hand_side, range(base64_1, 17424, 7, 442, 442), 'readPos').
name(p_out_pos_27, simple_name, base64_1_expr63, right_hand_side, range(base64_1, 17434, 6, 442, 442), 'outPos').
name(f_eof_35, simple_name, base64_1_stmt30, expression, range(base64_1, 22056, 3, 551, 551), 'eof').
name(p_in_avail_34, simple_name, base64_1_expr64, left_operand, range(base64_1, 22105, 7, 554, 554), 'inAvail').
name(f_eof_35, simple_name, base64_1_expr65, left_hand_side, range(base64_1, 22132, 3, 555, 555), 'eof').
name(v_i_36, simple_name, base64_1_code60, name, range(base64_1, 22171, 1, 557, 557), 'i').
name(v_i_36, simple_name, base64_1_expr67, left_operand, range(base64_1, 22178, 1, 557, 557), 'i').
name(p_in_avail_34, simple_name, base64_1_expr67, right_operand, range(base64_1, 22182, 7, 557, 557), 'inAvail').
name(v_i_36, simple_name, base64_1_expr68, operand, range(base64_1, 22191, 1, 557, 557), 'i').
name(f_buffer_18, simple_name, base64_1_expr70, left_operand, range(base64_1, 22214, 6, 558, 558), 'buffer').
name(q_length_3, qualified_name, base64_1_expr72, left_operand, range(base64_1, 22232, 13, 558, 558), 'buffer.length').
name(f_buffer_18, simple_name, q_length_3, qualifier, range(base64_1, 22232, 6, 558, 558), 'buffer').
name(f_pos_19, simple_name, base64_1_expr72, right_operand, range(base64_1, 22248, 3, 558, 558), 'pos').
name(f_decode_size_16, simple_name, base64_1_expr71, right_operand, range(base64_1, 22254, 10, 558, 558), 'decodeSize').
name(m_resize_buffer_11, simple_name, base64_1_expr73, name, range(base64_1, 22284, 12, 559, 559), 'resizeBuffer').
name(v_b_37, simple_name, base64_1_code62, name, range(base64_1, 22331, 1, 561, 561), 'b').
name(p_in_32, simple_name, base64_1_expr74, array, range(base64_1, 22335, 2, 561, 561), 'in').
name(p_in_pos_33, simple_name, base64_1_expr75, operand, range(base64_1, 22338, 5, 561, 561), 'inPos').
name(v_b_37, simple_name, base64_1_expr76, left_operand, range(base64_1, 22364, 1, 562, 562), 'b').
name(f_pad_38, simple_name, base64_1_expr76, right_operand, range(base64_1, 22369, 3, 562, 562), 'PAD').
name(v_b_37, simple_name, base64_1_expr78, left_operand, range(base64_1, 22499, 1, 567, 567), 'b').
name(v_b_37, simple_name, base64_1_expr79, left_operand, range(base64_1, 22509, 1, 567, 567), 'b').
name(q_length_4, qualified_name, base64_1_expr79, right_operand, range(base64_1, 22513, 19, 567, 567), 'DECODE_TABLE.length').
name(f_decode_table_4, simple_name, q_length_4, qualifier, range(base64_1, 22513, 12, 567, 567), 'DECODE_TABLE').
name(v_result_39, simple_name, base64_1_code64, name, range(base64_1, 22560, 6, 568, 568), 'result').
name(f_decode_table_4, simple_name, base64_1_expr80, array, range(base64_1, 22569, 12, 568, 568), 'DECODE_TABLE').
name(v_b_37, simple_name, base64_1_expr80, index, range(base64_1, 22582, 1, 568, 568), 'b').
name(v_result_39, simple_name, base64_1_expr81, left_operand, range(base64_1, 22610, 6, 569, 569), 'result').
name(f_modulus_40, simple_name, base64_1_expr82, left_hand_side, range(base64_1, 22649, 7, 570, 570), 'modulus').
name(f_modulus_40, simple_name, base64_1_expr85, operand, range(base64_1, 22662, 7, 570, 570), 'modulus').
name(f_x_41, simple_name, base64_1_expr86, left_hand_side, range(base64_1, 22700, 1, 571, 571), 'x').
name(f_x_41, simple_name, base64_1_expr89, left_operand, range(base64_1, 22705, 1, 571, 571), 'x').
name(v_result_39, simple_name, base64_1_expr87, right_operand, range(base64_1, 22715, 6, 571, 571), 'result').
name(f_modulus_40, simple_name, base64_1_expr90, left_operand, range(base64_1, 22751, 7, 572, 572), 'modulus').
name(f_buffer_18, simple_name, base64_1_expr92, array, range(base64_1, 22795, 6, 573, 573), 'buffer').
name(f_pos_19, simple_name, base64_1_expr94, operand, range(base64_1, 22802, 3, 573, 573), 'pos').
name(f_x_41, simple_name, base64_1_expr98, left_operand, range(base64_1, 22820, 1, 573, 573), 'x').
name(f_mask_8bits_42, simple_name, base64_1_expr96, right_operand, range(base64_1, 22831, 10, 573, 573), 'MASK_8BITS').
name(f_buffer_18, simple_name, base64_1_expr100, array, range(base64_1, 22872, 6, 574, 574), 'buffer').
name(f_pos_19, simple_name, base64_1_expr102, operand, range(base64_1, 22879, 3, 574, 574), 'pos').
name(f_x_41, simple_name, base64_1_expr106, left_operand, range(base64_1, 22897, 1, 574, 574), 'x').
name(f_mask_8bits_42, simple_name, base64_1_expr104, right_operand, range(base64_1, 22907, 10, 574, 574), 'MASK_8BITS').
name(f_buffer_18, simple_name, base64_1_expr108, array, range(base64_1, 22948, 6, 575, 575), 'buffer').
name(f_pos_19, simple_name, base64_1_expr110, operand, range(base64_1, 22955, 3, 575, 575), 'pos').
name(f_x_41, simple_name, base64_1_expr112, left_operand, range(base64_1, 22972, 1, 575, 575), 'x').
name(f_mask_8bits_42, simple_name, base64_1_expr112, right_operand, range(base64_1, 22976, 10, 575, 575), 'MASK_8BITS').
name(f_eof_35, simple_name, base64_1_expr113, left_operand, range(base64_1, 23320, 3, 585, 585), 'eof').
name(f_modulus_40, simple_name, base64_1_expr114, left_operand, range(base64_1, 23327, 7, 585, 585), 'modulus').
name(f_buffer_18, simple_name, base64_1_expr116, array, range(base64_1, 23609, 6, 594, 594), 'buffer').
name(f_pos_19, simple_name, base64_1_expr118, operand, range(base64_1, 23616, 3, 594, 594), 'pos').
name(f_x_41, simple_name, base64_1_expr122, left_operand, range(base64_1, 23634, 1, 594, 594), 'x').
name(f_mask_8bits_42, simple_name, base64_1_expr120, right_operand, range(base64_1, 23645, 10, 594, 594), 'MASK_8BITS').
name(p_octet_43, simple_name, base64_1_expr124, left_operand, range(base64_1, 24143, 5, 610, 610), 'octet').
name(f_pad_38, simple_name, base64_1_expr124, right_operand, range(base64_1, 24152, 3, 610, 610), 'PAD').
name(p_octet_43, simple_name, base64_1_expr128, left_operand, range(base64_1, 24160, 5, 610, 610), 'octet').
name(p_octet_43, simple_name, base64_1_expr129, left_operand, range(base64_1, 24174, 5, 610, 610), 'octet').
name(f_decode_table_4, simple_name, q_length_5, qualifier, range(base64_1, 24182, 12, 610, 610), 'DECODE_TABLE').
name(q_length_5, qualified_name, base64_1_expr129, right_operand, range(base64_1, 24182, 19, 610, 610), 'DECODE_TABLE.length').
name(f_decode_table_4, simple_name, base64_1_expr131, array, range(base64_1, 24205, 12, 610, 610), 'DECODE_TABLE').
name(p_octet_43, simple_name, base64_1_expr131, index, range(base64_1, 24218, 5, 610, 610), 'octet').
name(v_i_46, simple_name, base64_1_code72, name, range(base64_1, 25294, 1, 639, 639), 'i').
name(v_i_46, simple_name, base64_1_expr134, left_operand, range(base64_1, 25301, 1, 639, 639), 'i').
name(q_length_5, qualified_name, base64_1_expr134, right_operand, range(base64_1, 25305, 17, 639, 639), 'arrayOctet.length').
name(p_array_octet_45, simple_name, q_length_5, qualifier, range(base64_1, 25305, 10, 639, 639), 'arrayOctet').
name(v_i_46, simple_name, base64_1_expr135, operand, range(base64_1, 25324, 1, 639, 639), 'i').
name(m_is_base64_17, simple_name, base64_1_expr136, name, range(base64_1, 25347, 8, 640, 640), 'isBase64').
name(p_array_octet_45, simple_name, base64_1_expr137, array, range(base64_1, 25356, 10, 640, 640), 'arrayOctet').
name(v_i_46, simple_name, base64_1_expr137, index, range(base64_1, 25367, 1, 640, 640), 'i').
%base64_output_stream_test_1 - org.apache.commons.codec.binary.Base64OutputStreamTest
name(f_crlf_128, simple_name, base64_output_stream_test_1_code10, name, range(base64_output_stream_test_1, 1139, 4, 33, 33), 'CRLF').
name(f_lf_129, simple_name, base64_output_stream_test_1_code20, name, range(base64_output_stream_test_1, 1207, 2, 35, 35), 'LF').
name(p_name_130, simple_name, base64_output_stream_test_1_stmt1, (arguments, 0), range(base64_output_stream_test_1, 1490, 4, 46, 46), 'name').
name(v_codec_98_131, simple_name, base64_output_stream_test_1_code27, name, range(base64_output_stream_test_1, 1775, 7, 56, 56), 'codec98').
name(t_string_utils_3, simple_name, base64_output_stream_test_1_expr7, expression, range(base64_output_stream_test_1, 1785, 11, 56, 56), 'StringUtils').
name(m_get_bytes_utf8_53, simple_name, base64_output_stream_test_1_expr7, name, range(base64_output_stream_test_1, 1797, 12, 56, 56), 'getBytesUtf8').
name(q_codec_98_npe_9, qualified_name, base64_output_stream_test_1_expr7, (arguments, 0), range(base64_output_stream_test_1, 1810, 27, 56, 56), 'Base64TestData.CODEC_98_NPE').
name(t_base64_test_data_4, simple_name, q_codec_98_npe_9, qualifier, range(base64_output_stream_test_1, 1810, 14, 56, 56), 'Base64TestData').
name(v_codec_98_1024_132, simple_name, base64_output_stream_test_1_code31, name, range(base64_output_stream_test_1, 1855, 12, 57, 57), 'codec98_1024').
name(t_system_1, simple_name, base64_output_stream_test_1_expr9, expression, range(base64_output_stream_test_1, 1894, 6, 58, 58), 'System').
name(m_arraycopy_6, simple_name, base64_output_stream_test_1_expr9, name, range(base64_output_stream_test_1, 1901, 9, 58, 58), 'arraycopy').
name(v_codec_98_131, simple_name, base64_output_stream_test_1_expr9, (arguments, 0), range(base64_output_stream_test_1, 1911, 7, 58, 58), 'codec98').
name(v_codec_98_1024_132, simple_name, base64_output_stream_test_1_expr9, (arguments, 2), range(base64_output_stream_test_1, 1923, 12, 58, 58), 'codec98_1024').
name(q_length_9, qualified_name, base64_output_stream_test_1_expr9, (arguments, 4), range(base64_output_stream_test_1, 1940, 14, 58, 58), 'codec98.length').
name(v_codec_98_131, simple_name, q_length_9, qualifier, range(base64_output_stream_test_1, 1940, 7, 58, 58), 'codec98').
name(v_data_133, simple_name, base64_output_stream_test_1_code36, name, range(base64_output_stream_test_1, 1987, 4, 59, 59), 'data').
name(v_stream_134, simple_name, base64_output_stream_test_1_code39, name, range(base64_output_stream_test_1, 2054, 6, 60, 60), 'stream').
name(v_data_133, simple_name, base64_output_stream_test_1_expr11, (arguments, 0), range(base64_output_stream_test_1, 2086, 4, 60, 60), 'data').
name(v_stream_134, simple_name, base64_output_stream_test_1_expr12, expression, range(base64_output_stream_test_1, 2108, 6, 61, 61), 'stream').
name(m_write_72, simple_name, base64_output_stream_test_1_expr12, name, range(base64_output_stream_test_1, 2115, 5, 61, 61), 'write').
name(v_codec_98_1024_132, simple_name, base64_output_stream_test_1_expr12, (arguments, 0), range(base64_output_stream_test_1, 2121, 12, 61, 61), 'codec98_1024').
name(v_stream_134, simple_name, base64_output_stream_test_1_expr13, expression, range(base64_output_stream_test_1, 2153, 6, 62, 62), 'stream').
name(m_close_76, simple_name, base64_output_stream_test_1_expr13, name, range(base64_output_stream_test_1, 2160, 5, 62, 62), 'close').
%base64_test_data_1 - org.apache.commons.codec.binary.Base64TestData
name(f_decoded_144, simple_name, base64_test_data_1_code9, name, range(base64_test_data_1, 5385, 7, 88, 88), 'DECODED').
name(v_status_148, simple_name, base64_test_data_1_code14, name, range(base64_test_data_1, 11204, 6, 148, 148), 'status').
name(m_fill_90, simple_name, base64_test_data_1_expr2, name, range(base64_test_data_1, 11213, 4, 148, 148), 'fill').
name(p_buf_147, simple_name, base64_test_data_1_expr2, (arguments, 0), range(base64_test_data_1, 11218, 3, 148, 148), 'buf').
name(p_in_146, simple_name, base64_test_data_1_expr2, (arguments, 2), range(base64_test_data_1, 11226, 2, 148, 148), 'in').
name(p_in_146, simple_name, base64_test_data_1_expr3, expression, range(base64_test_data_1, 11791, 2, 164, 164), 'in').
name(m_close_91, simple_name, base64_test_data_1_expr3, name, range(base64_test_data_1, 11794, 5, 164, 164), 'close').
name(v_read_152, simple_name, base64_test_data_1_code17, name, range(base64_test_data_1, 11973, 4, 171, 171), 'read').
name(p_in_151, simple_name, base64_test_data_1_expr4, expression, range(base64_test_data_1, 11980, 2, 171, 171), 'in').
name(m_read_92, simple_name, base64_test_data_1_expr4, name, range(base64_test_data_1, 11983, 4, 171, 171), 'read').
name(p_buf_149, simple_name, base64_test_data_1_expr4, (arguments, 0), range(base64_test_data_1, 11988, 3, 171, 171), 'buf').
name(p_offset_150, simple_name, base64_test_data_1_expr4, (arguments, 1), range(base64_test_data_1, 11993, 6, 171, 171), 'offset').
name(q_length_10, qualified_name, base64_test_data_1_expr5, left_operand, range(base64_test_data_1, 12001, 10, 171, 171), 'buf.length').
name(p_buf_149, simple_name, q_length_10, qualifier, range(base64_test_data_1, 12001, 3, 171, 171), 'buf').
name(p_offset_150, simple_name, base64_test_data_1_expr5, right_operand, range(base64_test_data_1, 12014, 6, 171, 171), 'offset').
name(v_last_read_153, simple_name, base64_test_data_1_code19, name, range(base64_test_data_1, 12035, 8, 172, 172), 'lastRead').
name(v_read_152, simple_name, base64_test_data_1_code19, initializer, range(base64_test_data_1, 12046, 4, 172, 172), 'read').
name(v_read_152, simple_name, base64_test_data_1_expr6, left_operand, range(base64_test_data_1, 12064, 4, 173, 173), 'read').
name(v_last_read_153, simple_name, base64_test_data_1_expr9, left_operand, range(base64_test_data_1, 12125, 8, 176, 176), 'lastRead').
name(v_read_152, simple_name, base64_test_data_1_expr12, left_operand, range(base64_test_data_1, 12143, 4, 176, 176), 'read').
name(p_offset_150, simple_name, base64_test_data_1_expr12, right_operand, range(base64_test_data_1, 12150, 6, 176, 176), 'offset').
name(p_buf_149, simple_name, q_length_11, qualifier, range(base64_test_data_1, 12159, 3, 176, 176), 'buf').
name(q_length_11, qualified_name, base64_test_data_1_expr11, right_operand, range(base64_test_data_1, 12159, 10, 176, 176), 'buf.length').
name(v_last_read_153, simple_name, base64_test_data_1_expr13, left_hand_side, range(base64_test_data_1, 12185, 8, 177, 177), 'lastRead').
name(p_in_151, simple_name, base64_test_data_1_expr14, expression, range(base64_test_data_1, 12196, 2, 177, 177), 'in').
name(m_read_92, simple_name, base64_test_data_1_expr14, name, range(base64_test_data_1, 12199, 4, 177, 177), 'read').
name(p_buf_149, simple_name, base64_test_data_1_expr14, (arguments, 0), range(base64_test_data_1, 12204, 3, 177, 177), 'buf').
name(p_offset_150, simple_name, base64_test_data_1_expr15, left_operand, range(base64_test_data_1, 12209, 6, 177, 177), 'offset').
name(v_read_152, simple_name, base64_test_data_1_expr15, right_operand, range(base64_test_data_1, 12218, 4, 177, 177), 'read').
name(p_buf_149, simple_name, q_length_11, qualifier, range(base64_test_data_1, 12224, 3, 177, 177), 'buf').
name(q_length_11, qualified_name, base64_test_data_1_expr16, left_operand, range(base64_test_data_1, 12224, 10, 177, 177), 'buf.length').
name(v_read_152, simple_name, base64_test_data_1_expr16, right_operand, range(base64_test_data_1, 12237, 4, 177, 177), 'read').
name(p_offset_150, simple_name, base64_test_data_1_expr16, (extended_operands, 0), range(base64_test_data_1, 12244, 6, 177, 177), 'offset').
%base64_input_stream_1 - org.apache.commons.codec.binary.Base64InputStream
name(f_single_byte_77, simple_name, base64_input_stream_1_code9, name, range(base64_input_stream_1, 2205, 10, 52, 52), 'singleByte').
name(p_in_78, simple_name, base64_input_stream_1_stmt1, (arguments, 0), range(base64_input_stream_1, 2489, 2, 61, 61), 'in').
name(p_in_79, simple_name, base64_input_stream_1_stmt2, (arguments, 0), range(base64_input_stream_1, 2932, 2, 74, 74), 'in').
name(f_do_encode_81, simple_name, base64_input_stream_1_expr5, name, range(base64_input_stream_1, 2950, 8, 75, 75), 'doEncode').
name(p_do_encode_80, simple_name, base64_input_stream_1_expr4, right_hand_side, range(base64_input_stream_1, 2961, 8, 75, 75), 'doEncode').
name(f_base_64_82, simple_name, base64_input_stream_1_expr8, name, range(base64_input_stream_1, 2984, 6, 76, 76), 'base64').
name(p_b_87, simple_name, base64_input_stream_1_expr11, left_operand, range(base64_input_stream_1, 5465, 1, 139, 139), 'b').
name(p_offset_88, simple_name, base64_input_stream_1_expr13, left_operand, range(base64_input_stream_1, 5543, 6, 141, 141), 'offset').
name(p_len_89, simple_name, base64_input_stream_1_expr14, left_operand, range(base64_input_stream_1, 5557, 3, 141, 141), 'len').
name(p_offset_88, simple_name, base64_input_stream_1_expr16, left_operand, range(base64_input_stream_1, 5638, 6, 143, 143), 'offset').
name(p_b_87, simple_name, q_length_6, qualifier, range(base64_input_stream_1, 5647, 1, 143, 143), 'b').
name(q_length_6, qualified_name, base64_input_stream_1_expr16, right_operand, range(base64_input_stream_1, 5647, 8, 143, 143), 'b.length').
name(p_offset_88, simple_name, base64_input_stream_1_expr18, left_operand, range(base64_input_stream_1, 5659, 6, 143, 143), 'offset').
name(p_len_89, simple_name, base64_input_stream_1_expr18, right_operand, range(base64_input_stream_1, 5668, 3, 143, 143), 'len').
name(q_length_7, qualified_name, base64_input_stream_1_expr17, right_operand, range(base64_input_stream_1, 5674, 8, 143, 143), 'b.length').
name(p_b_87, simple_name, q_length_7, qualifier, range(base64_input_stream_1, 5674, 1, 143, 143), 'b').
name(p_len_89, simple_name, base64_input_stream_1_expr19, left_operand, range(base64_input_stream_1, 5756, 3, 145, 145), 'len').
name(f_base_64_82, simple_name, base64_input_stream_1_expr21, expression, range(base64_input_stream_1, 5824, 6, 148, 148), 'base64').
name(m_has_data_9, simple_name, base64_input_stream_1_expr21, name, range(base64_input_stream_1, 5831, 7, 148, 148), 'hasData').
name(v_buf_90, simple_name, base64_input_stream_1_code20, name, range(base64_input_stream_1, 5867, 3, 149, 149), 'buf').
name(f_do_encode_81, simple_name, base64_input_stream_1_expr23, expression, range(base64_input_stream_1, 5882, 8, 149, 149), 'doEncode').
name(v_c_91, simple_name, base64_input_stream_1_code25, name, range(base64_input_stream_1, 5927, 1, 150, 150), 'c').
name(f_in_92, simple_name, base64_input_stream_1_expr24, expression, range(base64_input_stream_1, 5931, 2, 150, 150), 'in').
name(m_read_48, simple_name, base64_input_stream_1_expr24, name, range(base64_input_stream_1, 5934, 4, 150, 150), 'read').
name(v_buf_90, simple_name, base64_input_stream_1_expr24, (arguments, 0), range(base64_input_stream_1, 5939, 3, 150, 150), 'buf').
name(v_c_91, simple_name, base64_input_stream_1_expr26, left_operand, range(base64_input_stream_1, 6068, 1, 153, 153), 'c').
name(q_length_7, qualified_name, base64_input_stream_1_expr27, left_operand, range(base64_input_stream_1, 6077, 8, 153, 153), 'b.length').
name(p_b_87, simple_name, q_length_7, qualifier, range(base64_input_stream_1, 6077, 1, 153, 153), 'b').
name(p_len_89, simple_name, base64_input_stream_1_expr27, right_operand, range(base64_input_stream_1, 6089, 3, 153, 153), 'len').
name(f_base_64_82, simple_name, base64_input_stream_1_expr28, expression, range(base64_input_stream_1, 6116, 6, 154, 154), 'base64').
name(m_set_initial_buffer_14, simple_name, base64_input_stream_1_expr28, name, range(base64_input_stream_1, 6123, 16, 154, 154), 'setInitialBuffer').
name(p_b_87, simple_name, base64_input_stream_1_expr28, (arguments, 0), range(base64_input_stream_1, 6140, 1, 154, 154), 'b').
name(p_offset_88, simple_name, base64_input_stream_1_expr28, (arguments, 1), range(base64_input_stream_1, 6143, 6, 154, 154), 'offset').
name(p_len_89, simple_name, base64_input_stream_1_expr28, (arguments, 2), range(base64_input_stream_1, 6151, 3, 154, 154), 'len').
name(f_do_encode_81, simple_name, base64_input_stream_1_stmt14, expression, range(base64_input_stream_1, 6195, 8, 156, 156), 'doEncode').
name(f_base_64_82, simple_name, base64_input_stream_1_expr29, expression, range(base64_input_stream_1, 6298, 6, 159, 159), 'base64').
name(m_decode_16, simple_name, base64_input_stream_1_expr29, name, range(base64_input_stream_1, 6305, 6, 159, 159), 'decode').
name(v_buf_90, simple_name, base64_input_stream_1_expr29, (arguments, 0), range(base64_input_stream_1, 6312, 3, 159, 159), 'buf').
name(v_c_91, simple_name, base64_input_stream_1_expr29, (arguments, 2), range(base64_input_stream_1, 6320, 1, 159, 159), 'c').
name(f_base_64_82, simple_name, base64_input_stream_1_expr30, expression, range(base64_input_stream_1, 6375, 6, 162, 162), 'base64').
name(m_read_results_12, simple_name, base64_input_stream_1_expr30, name, range(base64_input_stream_1, 6382, 11, 162, 162), 'readResults').
name(p_b_87, simple_name, base64_input_stream_1_expr30, (arguments, 0), range(base64_input_stream_1, 6394, 1, 162, 162), 'b').
name(p_offset_88, simple_name, base64_input_stream_1_expr30, (arguments, 1), range(base64_input_stream_1, 6397, 6, 162, 162), 'offset').
name(p_len_89, simple_name, base64_input_stream_1_expr30, (arguments, 2), range(base64_input_stream_1, 6405, 3, 162, 162), 'len').
%base64_input_stream_test_1 - org.apache.commons.codec.binary.Base64InputStreamTest
name(f_crlf_93, simple_name, base64_input_stream_test_1_code10, name, range(base64_input_stream_test_1, 1136, 4, 33, 33), 'CRLF').
name(f_lf_94, simple_name, base64_input_stream_test_1_code20, name, range(base64_input_stream_test_1, 1204, 2, 35, 35), 'LF').
name(p_name_95, simple_name, base64_input_stream_test_1_stmt1, (arguments, 0), range(base64_input_stream_test_1, 1486, 4, 46, 46), 'name').
name(v_codec_98_96, simple_name, base64_input_stream_test_1_code27, name, range(base64_input_stream_test_1, 1770, 7, 56, 56), 'codec98').
name(t_string_utils_3, simple_name, base64_input_stream_test_1_expr7, expression, range(base64_input_stream_test_1, 1780, 11, 56, 56), 'StringUtils').
name(m_get_bytes_utf8_53, simple_name, base64_input_stream_test_1_expr7, name, range(base64_input_stream_test_1, 1792, 12, 56, 56), 'getBytesUtf8').
name(q_codec_98_npe_7, qualified_name, base64_input_stream_test_1_expr7, (arguments, 0), range(base64_input_stream_test_1, 1805, 27, 56, 56), 'Base64TestData.CODEC_98_NPE').
name(t_base64_test_data_4, simple_name, q_codec_98_npe_7, qualifier, range(base64_input_stream_test_1, 1805, 14, 56, 56), 'Base64TestData').
name(v_data_97, simple_name, base64_input_stream_test_1_code29, name, range(base64_input_stream_test_1, 1864, 4, 57, 57), 'data').
name(v_codec_98_96, simple_name, base64_input_stream_test_1_expr8, (arguments, 0), range(base64_input_stream_test_1, 1896, 7, 57, 57), 'codec98').
name(v_stream_98, simple_name, base64_input_stream_test_1_code32, name, range(base64_input_stream_test_1, 1932, 6, 58, 58), 'stream').
name(v_data_97, simple_name, base64_input_stream_test_1_expr9, (arguments, 0), range(base64_input_stream_test_1, 1963, 4, 58, 58), 'data').
name(v_decoded_bytes_99, simple_name, base64_input_stream_test_1_code37, name, range(base64_input_stream_test_1, 2047, 12, 61, 61), 'decodedBytes').
name(t_base64_test_data_4, simple_name, base64_input_stream_test_1_expr10, expression, range(base64_input_stream_test_1, 2062, 14, 61, 61), 'Base64TestData').
name(m_stream_to_bytes_55, simple_name, base64_input_stream_test_1_expr10, name, range(base64_input_stream_test_1, 2077, 13, 61, 61), 'streamToBytes').
name(v_stream_98, simple_name, base64_input_stream_test_1_expr10, (arguments, 0), range(base64_input_stream_test_1, 2091, 6, 61, 61), 'stream').

%%% Literals
%base64_output_stream_1 - org.apache.commons.codec.binary.Base64OutputStream
literal(base64_output_stream_1_literal1, number_literal, base64_output_stream_1_expr1, (dimensions, 0), range(base64_output_stream_1, 2229, 1, 51, 51), 1).
literal(base64_output_stream_1_literal2, boolean_literal, base64_output_stream_1_expr8, (arguments, 0), range(base64_output_stream_1, 3024, 5, 75, 75), false).
literal(base64_output_stream_1_literal3, null_literal, base64_output_stream_1_expr10, right_operand, range(base64_output_stream_1, 5244, 4, 132, 132), null).
literal(base64_output_stream_1_literal4, number_literal, base64_output_stream_1_expr12, right_operand, range(base64_output_stream_1, 5326, 1, 134, 134), 0).
literal(base64_output_stream_1_literal5, number_literal, base64_output_stream_1_expr13, right_operand, range(base64_output_stream_1, 5337, 1, 134, 134), 0).
literal(base64_output_stream_1_literal6, number_literal, base64_output_stream_1_expr18, right_operand, range(base64_output_stream_1, 5536, 1, 138, 138), 0).
literal(base64_output_stream_1_literal7, boolean_literal, base64_output_stream_1_expr20, (arguments, 0), range(base64_output_stream_1, 5716, 5, 144, 144), false).
literal(base64_output_stream_1_literal8, number_literal, base64_output_stream_1_expr22, right_operand, range(base64_output_stream_1, 6252, 1, 159, 159), 0).
literal(base64_output_stream_1_literal9, number_literal, base64_output_stream_1_expr24, (arguments, 1), range(base64_output_stream_1, 6343, 1, 161, 161), 0).
literal(base64_output_stream_1_literal10, number_literal, base64_output_stream_1_expr25, right_operand, range(base64_output_stream_1, 6374, 1, 162, 162), 0).
literal(base64_output_stream_1_literal11, number_literal, base64_output_stream_1_expr26, (arguments, 1), range(base64_output_stream_1, 6410, 1, 163, 163), 0).
literal(base64_output_stream_1_literal12, number_literal, base64_output_stream_1_expr27, (arguments, 1), range(base64_output_stream_1, 7177, 1, 192, 192), 0).
literal(base64_output_stream_1_literal13, number_literal, base64_output_stream_1_expr28, operand, range(base64_output_stream_1, 7181, 1, 192, 192), 1).
%string_utils_1 - org.apache.commons.codec.binary.StringUtils
literal(string_utils_1_literal1, null_literal, string_utils_1_expr2, right_operand, range(string_utils_1, 6607, 4, 152, 152), null).
%base64_1 - org.apache.commons.codec.binary.Base64
literal(base64_1_literal1, character_literal, base64_1_expr1, (expressions, 0), range(base64_1, 3397, 4, 91, 91), '\r').
literal(base64_1_literal2, character_literal, base64_1_expr1, (expressions, 1), range(base64_1, 3403, 4, 91, 91), '\n').
literal(base64_1_literal3, null_literal, base64_1_expr6, right_operand, range(base64_1, 13396, 4, 333, 333), null).
literal(base64_1_literal5, number_literal, base64_1_expr11, right_operand, range(base64_1, 13582, 1, 337, 337), 0).
literal(base64_1_literal6, number_literal, base64_1_expr14, right_operand, range(base64_1, 13600, 1, 337, 337), 4).
literal(base64_1_literal7, number_literal, base64_1_expr12, right_operand, range(base64_1, 13605, 1, 337, 337), 4).
literal(base64_1_literal4, number_literal, base64_1_expr9, else_expression, range(base64_1, 13609, 1, 337, 337), 0).
literal(base64_1_literal8, number_literal, base64_1_expr19, (arguments, 1), range(base64_1, 13713, 1, 339, 339), 0).
literal(base64_1_literal9, number_literal, base64_1_expr19, (arguments, 3), range(base64_1, 13736, 1, 339, 339), 0).
literal(base64_1_literal10, number_literal, base64_1_expr22, right_operand, range(base64_1, 13787, 1, 340, 340), 0).
literal(base64_1_literal11, number_literal, base64_1_expr25, left_operand, range(base64_1, 13822, 1, 341, 341), 4).
literal(base64_1_literal12, number_literal, base64_1_expr29, right_operand, range(base64_1, 13952, 1, 345, 345), 1).
literal(base64_1_literal13, null_literal, base64_1_expr38, right_operand, range(base64_1, 14798, 4, 369, 369), null).
literal(base64_1_literal15, null_literal, base64_1_expr42, right_operand, range(base64_1, 15010, 4, 378, 378), null).
literal(base64_1_literal14, number_literal, base64_1_expr41, else_expression, range(base64_1, 15033, 1, 378, 378), 0).
literal(base64_1_literal16, null_literal, base64_1_expr44, right_operand, range(base64_1, 15130, 4, 383, 383), null).
literal(base64_1_literal17, number_literal, base64_1_expr47, right_hand_side, range(base64_1, 15208, 1, 385, 385), 0).
literal(base64_1_literal18, number_literal, base64_1_expr48, right_hand_side, range(base64_1, 15233, 1, 386, 386), 0).
literal(base64_1_literal19, null_literal, base64_1_expr49, right_operand, range(base64_1, 16098, 4, 407, 407), null).
literal(base64_1_literal20, null_literal, base64_1_expr56, right_hand_side, range(base64_1, 16350, 4, 413, 413), null).
literal(base64_1_literal21, null_literal, base64_1_expr57, right_hand_side, range(base64_1, 16535, 4, 418, 418), null).
literal(base64_1_literal22, null_literal, base64_1_expr59, right_operand, range(base64_1, 17326, 4, 439, 439), null).
literal(base64_1_literal23, number_literal, base64_1_expr64, right_operand, range(base64_1, 22115, 1, 554, 554), 0).
literal(base64_1_literal24, boolean_literal, base64_1_expr65, right_hand_side, range(base64_1, 22138, 4, 555, 555), true).
literal(base64_1_literal25, number_literal, base64_1_code60, initializer, range(base64_1, 22175, 1, 557, 557), 0).
literal(base64_1_literal26, null_literal, base64_1_expr70, right_operand, range(base64_1, 22224, 4, 558, 558), null).
literal(base64_1_literal27, number_literal, base64_1_expr78, right_operand, range(base64_1, 22504, 1, 567, 567), 0).
literal(base64_1_literal28, number_literal, base64_1_expr81, right_operand, range(base64_1, 22620, 1, 569, 569), 0).
literal(base64_1_literal29, number_literal, base64_1_expr83, right_operand, range(base64_1, 22673, 1, 570, 570), 4).
literal(base64_1_literal30, number_literal, base64_1_expr89, right_operand, range(base64_1, 22710, 1, 571, 571), 6).
literal(base64_1_literal31, number_literal, base64_1_expr90, right_operand, range(base64_1, 22762, 1, 572, 572), 0).
literal(base64_1_literal32, number_literal, base64_1_expr98, right_operand, range(base64_1, 22825, 2, 573, 573), 16).
literal(base64_1_literal33, number_literal, base64_1_expr106, right_operand, range(base64_1, 22902, 1, 574, 574), 8).
literal(base64_1_literal34, number_literal, base64_1_expr114, right_operand, range(base64_1, 23338, 1, 585, 585), 0).
literal(base64_1_literal35, number_literal, base64_1_expr122, right_operand, range(base64_1, 23639, 2, 594, 594), 16).
literal(base64_1_literal36, number_literal, base64_1_expr128, right_operand, range(base64_1, 24169, 1, 610, 610), 0).
literal(base64_1_literal37, number_literal, base64_1_expr132, operand, range(base64_1, 24229, 1, 610, 610), 1).
literal(base64_1_literal38, number_literal, base64_1_code72, initializer, range(base64_1, 25298, 1, 639, 639), 0).
literal(base64_1_literal39, boolean_literal, base64_1_stmt53, expression, range(base64_1, 25442, 5, 644, 644), false).
%base64_output_stream_test_1 - org.apache.commons.codec.binary.Base64OutputStreamTest
literal(base64_output_stream_test_1_literal1, character_literal, base64_output_stream_test_1_expr2, expression, range(base64_output_stream_test_1, 1154, 4, 33, 33), '\r').
literal(base64_output_stream_test_1_literal2, character_literal, base64_output_stream_test_1_expr3, expression, range(base64_output_stream_test_1, 1167, 4, 33, 33), '\n').
literal(base64_output_stream_test_1_literal3, character_literal, base64_output_stream_test_1_expr5, expression, range(base64_output_stream_test_1, 1220, 4, 35, 35), '\n').
literal(base64_output_stream_test_1_literal4, number_literal, base64_output_stream_test_1_expr8, (dimensions, 0), range(base64_output_stream_test_1, 1879, 4, 57, 57), 1024).
literal(base64_output_stream_test_1_literal5, number_literal, base64_output_stream_test_1_expr9, (arguments, 1), range(base64_output_stream_test_1, 1920, 1, 58, 58), 0).
literal(base64_output_stream_test_1_literal6, number_literal, base64_output_stream_test_1_expr9, (arguments, 3), range(base64_output_stream_test_1, 1937, 1, 58, 58), 0).
literal(base64_output_stream_test_1_literal7, number_literal, base64_output_stream_test_1_expr10, (arguments, 0), range(base64_output_stream_test_1, 2020, 4, 59, 59), 1024).
literal(base64_output_stream_test_1_literal8, boolean_literal, base64_output_stream_test_1_expr11, (arguments, 1), range(base64_output_stream_test_1, 2092, 5, 60, 60), false).
literal(base64_output_stream_test_1_literal9, number_literal, base64_output_stream_test_1_expr12, (arguments, 1), range(base64_output_stream_test_1, 2135, 1, 61, 61), 0).
literal(base64_output_stream_test_1_literal10, number_literal, base64_output_stream_test_1_expr12, (arguments, 2), range(base64_output_stream_test_1, 2138, 4, 61, 61), 1024).
%base64_test_data_1 - org.apache.commons.codec.binary.Base64TestData
literal(base64_test_data_1_literal1, number_literal, base64_test_data_1_expr2, (arguments, 1), range(base64_test_data_1, 11223, 1, 148, 148), 0).
literal(base64_test_data_1_literal2, number_literal, base64_test_data_1_expr7, operand, range(base64_test_data_1, 12073, 1, 173, 173), 1).
literal(base64_test_data_1_literal3, number_literal, base64_test_data_1_expr10, operand, range(base64_test_data_1, 12138, 1, 176, 176), 1).
%base64_input_stream_1 - org.apache.commons.codec.binary.Base64InputStream
literal(base64_input_stream_1_literal1, number_literal, base64_input_stream_1_expr1, (dimensions, 0), range(base64_input_stream_1, 2227, 1, 52, 52), 1).
literal(base64_input_stream_1_literal2, boolean_literal, base64_input_stream_1_stmt1, (arguments, 1), range(base64_input_stream_1, 2493, 5, 61, 61), false).
literal(base64_input_stream_1_literal3, boolean_literal, base64_input_stream_1_expr9, (arguments, 0), range(base64_input_stream_1, 3004, 5, 76, 76), false).
literal(base64_input_stream_1_literal4, null_literal, base64_input_stream_1_expr11, right_operand, range(base64_input_stream_1, 5470, 4, 139, 139), null).
literal(base64_input_stream_1_literal5, number_literal, base64_input_stream_1_expr13, right_operand, range(base64_input_stream_1, 5552, 1, 141, 141), 0).
literal(base64_input_stream_1_literal6, number_literal, base64_input_stream_1_expr14, right_operand, range(base64_input_stream_1, 5563, 1, 141, 141), 0).
literal(base64_input_stream_1_literal7, number_literal, base64_input_stream_1_expr19, right_operand, range(base64_input_stream_1, 5763, 1, 145, 145), 0).
literal(base64_input_stream_1_literal8, number_literal, base64_input_stream_1_expr23, then_expression, range(base64_input_stream_1, 5893, 4, 149, 149), 4096).
literal(base64_input_stream_1_literal9, number_literal, base64_input_stream_1_expr23, else_expression, range(base64_input_stream_1, 5900, 4, 149, 149), 8192).
literal(base64_input_stream_1_literal10, number_literal, base64_input_stream_1_expr26, right_operand, range(base64_input_stream_1, 6072, 1, 153, 153), 0).
literal(base64_input_stream_1_literal11, number_literal, base64_input_stream_1_expr29, (arguments, 1), range(base64_input_stream_1, 6317, 1, 159, 159), 0).
%base64_input_stream_test_1 - org.apache.commons.codec.binary.Base64InputStreamTest
literal(base64_input_stream_test_1_literal1, character_literal, base64_input_stream_test_1_expr2, expression, range(base64_input_stream_test_1, 1151, 4, 33, 33), '\r').
literal(base64_input_stream_test_1_literal2, character_literal, base64_input_stream_test_1_expr3, expression, range(base64_input_stream_test_1, 1164, 4, 33, 33), '\n').
literal(base64_input_stream_test_1_literal3, character_literal, base64_input_stream_test_1_expr5, expression, range(base64_input_stream_test_1, 1217, 4, 35, 35), '\n').
literal(base64_input_stream_test_1_literal4, number_literal, base64_input_stream_test_1_expr11, (dimensions, 0), range(base64_input_stream_test_1, 2108, 4, 61, 61), 1024).

%%% Other Code Entities
%base64_output_stream_1 - org.apache.commons.codec.binary.Base64OutputStream
code(base64_output_stream_1_code1, compilation_unit, range(base64_output_stream_1, 0, 7242, 1, -1)).
code(base64_output_stream_1_code2, type_declaration, base64_output_stream_1_code1, (types, 0), range(base64_output_stream_1, 941, 6300, 24, 198)).
code(base64_output_stream_1_code3, field_declaration, base64_output_stream_1_code2, (body_declarations, 2), range(base64_output_stream_1, 2186, 46, 51, 51)).
code(base64_output_stream_1_code4, modifier, base64_output_stream_1_code3, (modifiers, 0), range(base64_output_stream_1, 2186, 7, 51, 51)).
code(base64_output_stream_1_code5, modifier, base64_output_stream_1_code3, (modifiers, 1), range(base64_output_stream_1, 2194, 5, 51, 51)).
code(base64_output_stream_1_code6, array_type, base64_output_stream_1_code3, type, range(base64_output_stream_1, 2200, 6, 51, 51)).
code(base64_output_stream_1_code7, primitive_type, base64_output_stream_1_code6, element_type, range(base64_output_stream_1, 2200, 4, 51, 51)).
code(base64_output_stream_1_code8, dimension, base64_output_stream_1_code6, (dimensions, 0), range(base64_output_stream_1, 2204, 2, 51, 51)).
code(base64_output_stream_1_code9, variable_declaration_fragment, base64_output_stream_1_code3, (fragments, 0), range(base64_output_stream_1, 2207, 24, 51, 51)).
code(base64_output_stream_1_code10, array_type, base64_output_stream_1_expr1, type, range(base64_output_stream_1, 2224, 7, 51, 51)).
code(base64_output_stream_1_code11, primitive_type, base64_output_stream_1_code10, element_type, range(base64_output_stream_1, 2224, 4, 51, 51)).
code(base64_output_stream_1_code12, dimension, base64_output_stream_1_code10, (dimensions, 0), range(base64_output_stream_1, 2228, 3, 51, 51)).
code(base64_output_stream_1_code13, method_declaration, base64_output_stream_1_code2, (body_declarations, 4), range(base64_output_stream_1, 2522, 515, 63, 76)).
code(base64_output_stream_1_code14, simple_type, base64_output_stream_1_expr8, type, range(base64_output_stream_1, 3017, 6, 75, 75)).
code(base64_output_stream_1_code15, method_declaration, base64_output_stream_1_code2, (body_declarations, 7), range(base64_output_stream_1, 4530, 1209, 113, 146)).
code(base64_output_stream_1_code16, method_declaration, base64_output_stream_1_code2, (body_declarations, 8), range(base64_output_stream_1, 5745, 761, 148, 169)).
code(base64_output_stream_1_code17, primitive_type, base64_output_stream_1_stmt11, type, range(base64_output_stream_1, 6204, 3, 158, 158)).
code(base64_output_stream_1_code18, variable_declaration_fragment, base64_output_stream_1_stmt11, (fragments, 0), range(base64_output_stream_1, 6208, 22, 158, 158)).
code(base64_output_stream_1_code19, array_type, base64_output_stream_1_stmt13, type, range(base64_output_stream_1, 6269, 6, 160, 160)).
code(base64_output_stream_1_code20, primitive_type, base64_output_stream_1_code19, element_type, range(base64_output_stream_1, 6269, 4, 160, 160)).
code(base64_output_stream_1_code21, dimension, base64_output_stream_1_code19, (dimensions, 0), range(base64_output_stream_1, 6273, 2, 160, 160)).
code(base64_output_stream_1_code22, variable_declaration_fragment, base64_output_stream_1_stmt13, (fragments, 0), range(base64_output_stream_1, 6276, 21, 160, 160)).
code(base64_output_stream_1_code23, array_type, base64_output_stream_1_expr23, type, range(base64_output_stream_1, 6286, 11, 160, 160)).
code(base64_output_stream_1_code24, primitive_type, base64_output_stream_1_code23, element_type, range(base64_output_stream_1, 6286, 4, 160, 160)).
code(base64_output_stream_1_code25, dimension, base64_output_stream_1_code23, (dimensions, 0), range(base64_output_stream_1, 6290, 7, 160, 160)).
code(base64_output_stream_1_code26, primitive_type, base64_output_stream_1_stmt14, type, range(base64_output_stream_1, 6311, 3, 161, 161)).
code(base64_output_stream_1_code27, variable_declaration_fragment, base64_output_stream_1_stmt14, (fragments, 0), range(base64_output_stream_1, 6315, 37, 161, 161)).
code(base64_output_stream_1_code28, method_declaration, base64_output_stream_1_code2, (body_declarations, 10), range(base64_output_stream_1, 6783, 455, 181, 196)).
%string_utils_1 - org.apache.commons.codec.binary.StringUtils
code(string_utils_1_code1, compilation_unit, range(string_utils_1, 0, 12222, 1, -1)).
code(string_utils_1_code2, type_declaration, string_utils_1_code1, (types, 0), range(string_utils_1, 941, 11280, 24, 279)).
code(string_utils_1_code3, method_declaration, string_utils_1_code2, (body_declarations, 5), range(string_utils_1, 4956, 687, 116, 130)).
code(string_utils_1_code4, method_declaration, string_utils_1_code2, (body_declarations, 6), range(string_utils_1, 5649, 1202, 132, 160)).
%base64_1 - org.apache.commons.codec.binary.Base64
code(base64_1_code1, compilation_unit, range(base64_1, 0, 41035, 1, -1)).
code(base64_1_code2, type_declaration, base64_1_code1, (types, 0), range(base64_1, 1073, 39961, 27, 1068)).
code(base64_1_code3, field_declaration, base64_1_code2, (body_declarations, 4), range(base64_1, 3084, 325, 82, 91)).
code(base64_1_code4, modifier, base64_1_code3, (modifiers, 0), range(base64_1, 3358, 6, 91, 91)).
code(base64_1_code5, modifier, base64_1_code3, (modifiers, 1), range(base64_1, 3365, 5, 91, 91)).
code(base64_1_code6, array_type, base64_1_code3, type, range(base64_1, 3371, 6, 91, 91)).
code(base64_1_code7, primitive_type, base64_1_code6, element_type, range(base64_1, 3371, 4, 91, 91)).
code(base64_1_code8, dimension, base64_1_code6, (dimensions, 0), range(base64_1, 3375, 2, 91, 91)).
code(base64_1_code9, variable_declaration_fragment, base64_1_code3, (fragments, 0), range(base64_1, 3378, 30, 91, 91)).
code(base64_1_code10, field_declaration, base64_1_code2, (body_declarations, 5), range(base64_1, 3415, 782, 93, 106)).
code(base64_1_code11, modifier, base64_1_code10, (modifiers, 0), range(base64_1, 3758, 7, 100, 100)).
code(base64_1_code12, modifier, base64_1_code10, (modifiers, 1), range(base64_1, 3766, 6, 100, 100)).
code(base64_1_code13, modifier, base64_1_code10, (modifiers, 2), range(base64_1, 3773, 5, 100, 100)).
code(base64_1_code14, array_type, base64_1_code10, type, range(base64_1, 3779, 6, 100, 100)).
code(base64_1_code15, primitive_type, base64_1_code14, element_type, range(base64_1, 3779, 4, 100, 100)).
code(base64_1_code16, dimension, base64_1_code14, (dimensions, 0), range(base64_1, 3783, 2, 100, 100)).
code(base64_1_code17, variable_declaration_fragment, base64_1_code10, (fragments, 0), range(base64_1, 3786, 410, 100, 106)).
code(base64_1_code18, field_declaration, base64_1_code2, (body_declarations, 6), range(base64_1, 4203, 684, 108, 119)).
code(base64_1_code19, modifier, base64_1_code18, (modifiers, 0), range(base64_1, 4448, 7, 113, 113)).
code(base64_1_code20, modifier, base64_1_code18, (modifiers, 1), range(base64_1, 4456, 6, 113, 113)).
code(base64_1_code21, modifier, base64_1_code18, (modifiers, 2), range(base64_1, 4463, 5, 113, 113)).
code(base64_1_code23, primitive_type, base64_1_code22, element_type, range(base64_1, 4469, 4, 113, 113)).
code(base64_1_code22, array_type, base64_1_code18, type, range(base64_1, 4469, 6, 113, 113)).
code(base64_1_code24, dimension, base64_1_code22, (dimensions, 0), range(base64_1, 4473, 2, 113, 113)).
code(base64_1_code25, variable_declaration_fragment, base64_1_code18, (fragments, 0), range(base64_1, 4476, 410, 113, 119)).
code(base64_1_code26, field_declaration, base64_1_code2, (body_declarations, 8), range(base64_1, 4983, 1337, 126, 145)).
code(base64_1_code27, modifier, base64_1_code26, (modifiers, 0), range(base64_1, 5704, 7, 137, 137)).
code(base64_1_code28, modifier, base64_1_code26, (modifiers, 1), range(base64_1, 5712, 6, 137, 137)).
code(base64_1_code29, modifier, base64_1_code26, (modifiers, 2), range(base64_1, 5719, 5, 137, 137)).
code(base64_1_code30, array_type, base64_1_code26, type, range(base64_1, 5725, 6, 137, 137)).
code(base64_1_code31, primitive_type, base64_1_code30, element_type, range(base64_1, 5725, 4, 137, 137)).
code(base64_1_code32, dimension, base64_1_code30, (dimensions, 0), range(base64_1, 5729, 2, 137, 137)).
code(base64_1_code33, variable_declaration_fragment, base64_1_code26, (fragments, 0), range(base64_1, 5732, 587, 137, 145)).
code(base64_1_code34, method_declaration, base64_1_code2, (body_declarations, 24), range(base64_1, 9418, 625, 240, 257)).
code(base64_1_code35, method_declaration, base64_1_code2, (body_declarations, 27), range(base64_1, 12053, 2232, 307, 351)).
code(base64_1_code36, modifier, base64_1_code35, (modifiers, 0), range(base64_1, 13296, 6, 332, 332)).
code(base64_1_code38, primitive_type, base64_1_code37, type, range(base64_1, 13310, 3, 332, 332)).
code(base64_1_code37, single_variable_declaration, base64_1_code35, (parameters, 0), range(base64_1, 13310, 14, 332, 332)).
code(base64_1_code39, single_variable_declaration, base64_1_code35, (parameters, 1), range(base64_1, 13326, 20, 332, 332)).
code(base64_1_code41, primitive_type, base64_1_code40, element_type, range(base64_1, 13326, 4, 332, 332)).
code(base64_1_code40, array_type, base64_1_code39, type, range(base64_1, 13326, 6, 332, 332)).
code(base64_1_code42, dimension, base64_1_code40, (dimensions, 0), range(base64_1, 13330, 2, 332, 332)).
code(base64_1_code43, single_variable_declaration, base64_1_code35, (parameters, 2), range(base64_1, 13348, 15, 332, 332)).
code(base64_1_code44, primitive_type, base64_1_code43, type, range(base64_1, 13348, 7, 332, 332)).
code(base64_1_code45, array_type, base64_1_expr17, type, range(base64_1, 13645, 26, 338, 338)).
code(base64_1_code46, primitive_type, base64_1_code45, element_type, range(base64_1, 13645, 4, 338, 338)).
code(base64_1_code47, dimension, base64_1_code45, (dimensions, 0), range(base64_1, 13649, 22, 338, 338)).
code(base64_1_code48, method_declaration, base64_1_code2, (body_declarations, 29), range(base64_1, 14576, 233, 363, 370)).
code(base64_1_code49, method_declaration, base64_1_code2, (body_declarations, 30), range(base64_1, 14815, 226, 372, 379)).
code(base64_1_code50, method_declaration, base64_1_code2, (body_declarations, 31), range(base64_1, 15047, 386, 381, 392)).
code(base64_1_code52, primitive_type, base64_1_code51, element_type, range(base64_1, 15163, 4, 384, 384)).
code(base64_1_code51, array_type, base64_1_expr46, type, range(base64_1, 15163, 25, 384, 384)).
code(base64_1_code53, dimension, base64_1_code51, (dimensions, 0), range(base64_1, 15167, 21, 384, 384)).
code(base64_1_code54, method_declaration, base64_1_code2, (body_declarations, 32), range(base64_1, 15439, 1184, 394, 423)).
code(base64_1_code55, primitive_type, base64_1_stmt18, type, range(base64_1, 16118, 3, 408, 408)).
code(base64_1_code56, variable_declaration_fragment, base64_1_stmt18, (fragments, 0), range(base64_1, 16122, 31, 408, 408)).
code(base64_1_code57, method_declaration, base64_1_code2, (body_declarations, 33), range(base64_1, 16629, 828, 425, 444)).
code(base64_1_code58, method_declaration, base64_1_code2, (body_declarations, 35), range(base64_1, 20856, 2926, 527, 599)).
code(base64_1_code59, primitive_type, base64_1_expr66, type, range(base64_1, 22167, 3, 557, 557)).
code(base64_1_code60, variable_declaration_fragment, base64_1_expr66, (fragments, 0), range(base64_1, 22171, 5, 557, 557)).
code(base64_1_code61, primitive_type, base64_1_stmt36, type, range(base64_1, 22326, 4, 561, 561)).
code(base64_1_code62, variable_declaration_fragment, base64_1_stmt36, (fragments, 0), range(base64_1, 22331, 15, 561, 561)).
code(base64_1_code63, primitive_type, base64_1_stmt39, type, range(base64_1, 22556, 3, 568, 568)).
code(base64_1_code64, variable_declaration_fragment, base64_1_stmt39, (fragments, 0), range(base64_1, 22560, 24, 568, 568)).
code(base64_1_code65, primitive_type, base64_1_expr93, type, range(base64_1, 22812, 4, 573, 573)).
code(base64_1_code66, primitive_type, base64_1_expr101, type, range(base64_1, 22889, 4, 574, 574)).
code(base64_1_code67, primitive_type, base64_1_expr109, type, range(base64_1, 22965, 4, 575, 575)).
code(base64_1_code68, primitive_type, base64_1_expr117, type, range(base64_1, 23626, 4, 594, 594)).
code(base64_1_code69, method_declaration, base64_1_code2, (body_declarations, 36), range(base64_1, 23788, 450, 601, 611)).
code(base64_1_code70, method_declaration, base64_1_code2, (body_declarations, 38), range(base64_1, 24920, 534, 631, 645)).
code(base64_1_code71, primitive_type, base64_1_expr133, type, range(base64_1, 25290, 3, 639, 639)).
code(base64_1_code72, variable_declaration_fragment, base64_1_expr133, (fragments, 0), range(base64_1, 25294, 5, 639, 639)).
%base64_output_stream_test_1 - org.apache.commons.codec.binary.Base64OutputStreamTest
code(base64_output_stream_test_1_code1, compilation_unit, range(base64_output_stream_test_1, 0, 13057, 1, -1)).
code(base64_output_stream_test_1_code2, type_declaration, base64_output_stream_test_1_code1, (types, 0), range(base64_output_stream_test_1, 973, 12083, 26, 347)).
code(base64_output_stream_test_1_code4, modifier, base64_output_stream_test_1_code3, (modifiers, 0), range(base64_output_stream_test_1, 1111, 7, 33, 33)).
code(base64_output_stream_test_1_code3, field_declaration, base64_output_stream_test_1_code2, (body_declarations, 0), range(base64_output_stream_test_1, 1111, 62, 33, 33)).
code(base64_output_stream_test_1_code5, modifier, base64_output_stream_test_1_code3, (modifiers, 1), range(base64_output_stream_test_1, 1119, 5, 33, 33)).
code(base64_output_stream_test_1_code6, modifier, base64_output_stream_test_1_code3, (modifiers, 2), range(base64_output_stream_test_1, 1125, 6, 33, 33)).
code(base64_output_stream_test_1_code7, array_type, base64_output_stream_test_1_code3, type, range(base64_output_stream_test_1, 1132, 6, 33, 33)).
code(base64_output_stream_test_1_code8, primitive_type, base64_output_stream_test_1_code7, element_type, range(base64_output_stream_test_1, 1132, 4, 33, 33)).
code(base64_output_stream_test_1_code9, dimension, base64_output_stream_test_1_code7, (dimensions, 0), range(base64_output_stream_test_1, 1136, 2, 33, 33)).
code(base64_output_stream_test_1_code10, variable_declaration_fragment, base64_output_stream_test_1_code3, (fragments, 0), range(base64_output_stream_test_1, 1139, 33, 33, 33)).
code(base64_output_stream_test_1_code11, primitive_type, base64_output_stream_test_1_expr2, type, range(base64_output_stream_test_1, 1148, 4, 33, 33)).
code(base64_output_stream_test_1_code12, primitive_type, base64_output_stream_test_1_expr3, type, range(base64_output_stream_test_1, 1161, 4, 33, 33)).
code(base64_output_stream_test_1_code13, field_declaration, base64_output_stream_test_1_code2, (body_declarations, 1), range(base64_output_stream_test_1, 1179, 47, 35, 35)).
code(base64_output_stream_test_1_code14, modifier, base64_output_stream_test_1_code13, (modifiers, 0), range(base64_output_stream_test_1, 1179, 7, 35, 35)).
code(base64_output_stream_test_1_code15, modifier, base64_output_stream_test_1_code13, (modifiers, 1), range(base64_output_stream_test_1, 1187, 5, 35, 35)).
code(base64_output_stream_test_1_code16, modifier, base64_output_stream_test_1_code13, (modifiers, 2), range(base64_output_stream_test_1, 1193, 6, 35, 35)).
code(base64_output_stream_test_1_code18, primitive_type, base64_output_stream_test_1_code17, element_type, range(base64_output_stream_test_1, 1200, 4, 35, 35)).
code(base64_output_stream_test_1_code17, array_type, base64_output_stream_test_1_code13, type, range(base64_output_stream_test_1, 1200, 6, 35, 35)).
code(base64_output_stream_test_1_code19, dimension, base64_output_stream_test_1_code17, (dimensions, 0), range(base64_output_stream_test_1, 1204, 2, 35, 35)).
code(base64_output_stream_test_1_code20, variable_declaration_fragment, base64_output_stream_test_1_code13, (fragments, 0), range(base64_output_stream_test_1, 1207, 18, 35, 35)).
code(base64_output_stream_test_1_code21, primitive_type, base64_output_stream_test_1_expr5, type, range(base64_output_stream_test_1, 1214, 4, 35, 35)).
code(base64_output_stream_test_1_code22, method_declaration, base64_output_stream_test_1_code2, (body_declarations, 3), range(base64_output_stream_test_1, 1297, 205, 39, 47)).
code(base64_output_stream_test_1_code23, method_declaration, base64_output_stream_test_1_code2, (body_declarations, 4), range(base64_output_stream_test_1, 1508, 908, 49, 69)).
code(base64_output_stream_test_1_code25, primitive_type, base64_output_stream_test_1_code24, element_type, range(base64_output_stream_test_1, 1768, 4, 56, 56)).
code(base64_output_stream_test_1_code24, array_type, base64_output_stream_test_1_stmt2, type, range(base64_output_stream_test_1, 1768, 6, 56, 56)).
code(base64_output_stream_test_1_code26, dimension, base64_output_stream_test_1_code24, (dimensions, 0), range(base64_output_stream_test_1, 1772, 2, 56, 56)).
code(base64_output_stream_test_1_code27, variable_declaration_fragment, base64_output_stream_test_1_stmt2, (fragments, 0), range(base64_output_stream_test_1, 1775, 63, 56, 56)).
code(base64_output_stream_test_1_code29, primitive_type, base64_output_stream_test_1_code28, element_type, range(base64_output_stream_test_1, 1848, 4, 57, 57)).
code(base64_output_stream_test_1_code28, array_type, base64_output_stream_test_1_stmt3, type, range(base64_output_stream_test_1, 1848, 6, 57, 57)).
code(base64_output_stream_test_1_code30, dimension, base64_output_stream_test_1_code28, (dimensions, 0), range(base64_output_stream_test_1, 1852, 2, 57, 57)).
code(base64_output_stream_test_1_code31, variable_declaration_fragment, base64_output_stream_test_1_stmt3, (fragments, 0), range(base64_output_stream_test_1, 1855, 29, 57, 57)).
code(base64_output_stream_test_1_code33, primitive_type, base64_output_stream_test_1_code32, element_type, range(base64_output_stream_test_1, 1874, 4, 57, 57)).
code(base64_output_stream_test_1_code32, array_type, base64_output_stream_test_1_expr8, type, range(base64_output_stream_test_1, 1874, 10, 57, 57)).
code(base64_output_stream_test_1_code34, dimension, base64_output_stream_test_1_code32, (dimensions, 0), range(base64_output_stream_test_1, 1878, 6, 57, 57)).
code(base64_output_stream_test_1_code35, simple_type, base64_output_stream_test_1_stmt5, type, range(base64_output_stream_test_1, 1965, 21, 59, 59)).
code(base64_output_stream_test_1_code36, variable_declaration_fragment, base64_output_stream_test_1_stmt5, (fragments, 0), range(base64_output_stream_test_1, 1987, 38, 59, 59)).
code(base64_output_stream_test_1_code37, simple_type, base64_output_stream_test_1_expr10, type, range(base64_output_stream_test_1, 1998, 21, 59, 59)).
code(base64_output_stream_test_1_code38, simple_type, base64_output_stream_test_1_stmt6, type, range(base64_output_stream_test_1, 2035, 18, 60, 60)).
code(base64_output_stream_test_1_code39, variable_declaration_fragment, base64_output_stream_test_1_stmt6, (fragments, 0), range(base64_output_stream_test_1, 2054, 44, 60, 60)).
code(base64_output_stream_test_1_code40, simple_type, base64_output_stream_test_1_expr11, type, range(base64_output_stream_test_1, 2067, 18, 60, 60)).
%base64_test_data_1 - org.apache.commons.codec.binary.Base64TestData
code(base64_test_data_1_code1, compilation_unit, range(base64_test_data_1, 0, 13646, 1, -1)).
code(base64_test_data_1_code2, type_declaration, base64_test_data_1_code1, (types, 0), range(base64_test_data_1, 928, 12717, 24, 221)).
code(base64_test_data_1_code3, field_declaration, base64_test_data_1_code2, (body_declarations, 4), range(base64_test_data_1, 5365, 5347, 88, 134)).
code(base64_test_data_1_code4, modifier, base64_test_data_1_code3, (modifiers, 0), range(base64_test_data_1, 5365, 5, 88, 88)).
code(base64_test_data_1_code5, modifier, base64_test_data_1_code3, (modifiers, 1), range(base64_test_data_1, 5371, 6, 88, 88)).
code(base64_test_data_1_code7, primitive_type, base64_test_data_1_code6, element_type, range(base64_test_data_1, 5378, 4, 88, 88)).
code(base64_test_data_1_code6, array_type, base64_test_data_1_code3, type, range(base64_test_data_1, 5378, 6, 88, 88)).
code(base64_test_data_1_code8, dimension, base64_test_data_1_code6, (dimensions, 0), range(base64_test_data_1, 5382, 2, 88, 88)).
code(base64_test_data_1_code9, variable_declaration_fragment, base64_test_data_1_code3, (fragments, 0), range(base64_test_data_1, 5385, 5326, 88, 134)).
code(base64_test_data_1_code10, method_declaration, base64_test_data_1_code2, (body_declarations, 8), range(base64_test_data_1, 11089, 749, 146, 167)).
code(base64_test_data_1_code12, primitive_type, base64_test_data_1_code11, element_type, range(base64_test_data_1, 11198, 3, 148, 148)).
code(base64_test_data_1_code11, array_type, base64_test_data_1_stmt2, type, range(base64_test_data_1, 11198, 5, 148, 148)).
code(base64_test_data_1_code13, dimension, base64_test_data_1_code11, (dimensions, 0), range(base64_test_data_1, 11201, 2, 148, 148)).
code(base64_test_data_1_code14, variable_declaration_fragment, base64_test_data_1_stmt2, (fragments, 0), range(base64_test_data_1, 11204, 25, 148, 148)).
code(base64_test_data_1_code15, method_declaration, base64_test_data_1_code2, (body_declarations, 9), range(base64_test_data_1, 11844, 557, 169, 183)).
code(base64_test_data_1_code16, primitive_type, base64_test_data_1_stmt4, type, range(base64_test_data_1, 11969, 3, 171, 171)).
code(base64_test_data_1_code17, variable_declaration_fragment, base64_test_data_1_stmt4, (fragments, 0), range(base64_test_data_1, 11973, 48, 171, 171)).
code(base64_test_data_1_code18, primitive_type, base64_test_data_1_stmt5, type, range(base64_test_data_1, 12031, 3, 172, 172)).
code(base64_test_data_1_code19, variable_declaration_fragment, base64_test_data_1_stmt5, (fragments, 0), range(base64_test_data_1, 12035, 15, 172, 172)).
%base64_input_stream_1 - org.apache.commons.codec.binary.Base64InputStream
code(base64_input_stream_1_code1, compilation_unit, range(base64_input_stream_1, 0, 6597, 1, -1)).
code(base64_input_stream_1_code2, type_declaration, base64_input_stream_1_code1, (types, 0), range(base64_input_stream_1, 939, 5657, 24, 174)).
code(base64_input_stream_1_code3, field_declaration, base64_input_stream_1_code2, (body_declarations, 2), range(base64_input_stream_1, 2184, 46, 52, 52)).
code(base64_input_stream_1_code4, modifier, base64_input_stream_1_code3, (modifiers, 0), range(base64_input_stream_1, 2184, 7, 52, 52)).
code(base64_input_stream_1_code5, modifier, base64_input_stream_1_code3, (modifiers, 1), range(base64_input_stream_1, 2192, 5, 52, 52)).
code(base64_input_stream_1_code6, array_type, base64_input_stream_1_code3, type, range(base64_input_stream_1, 2198, 6, 52, 52)).
code(base64_input_stream_1_code7, primitive_type, base64_input_stream_1_code6, element_type, range(base64_input_stream_1, 2198, 4, 52, 52)).
code(base64_input_stream_1_code8, dimension, base64_input_stream_1_code6, (dimensions, 0), range(base64_input_stream_1, 2202, 2, 52, 52)).
code(base64_input_stream_1_code9, variable_declaration_fragment, base64_input_stream_1_code3, (fragments, 0), range(base64_input_stream_1, 2205, 24, 52, 52)).
code(base64_input_stream_1_code11, primitive_type, base64_input_stream_1_code10, element_type, range(base64_input_stream_1, 2222, 4, 52, 52)).
code(base64_input_stream_1_code10, array_type, base64_input_stream_1_expr1, type, range(base64_input_stream_1, 2222, 7, 52, 52)).
code(base64_input_stream_1_code12, dimension, base64_input_stream_1_code10, (dimensions, 0), range(base64_input_stream_1, 2226, 3, 52, 52)).
code(base64_input_stream_1_code13, method_declaration, base64_input_stream_1_code2, (body_declarations, 3), range(base64_input_stream_1, 2236, 270, 54, 62)).
code(base64_input_stream_1_code14, method_declaration, base64_input_stream_1_code2, (body_declarations, 4), range(base64_input_stream_1, 2512, 505, 64, 77)).
code(base64_input_stream_1_code15, simple_type, base64_input_stream_1_expr9, type, range(base64_input_stream_1, 2997, 6, 76, 76)).
code(base64_input_stream_1_code16, method_declaration, base64_input_stream_1_code2, (body_declarations, 7), range(base64_input_stream_1, 4708, 1718, 119, 164)).
code(base64_input_stream_1_code18, primitive_type, base64_input_stream_1_code17, element_type, range(base64_input_stream_1, 5860, 4, 149, 149)).
code(base64_input_stream_1_code17, array_type, base64_input_stream_1_stmt10, type, range(base64_input_stream_1, 5860, 6, 149, 149)).
code(base64_input_stream_1_code19, dimension, base64_input_stream_1_code17, (dimensions, 0), range(base64_input_stream_1, 5864, 2, 149, 149)).
code(base64_input_stream_1_code20, variable_declaration_fragment, base64_input_stream_1_stmt10, (fragments, 0), range(base64_input_stream_1, 5867, 38, 149, 149)).
code(base64_input_stream_1_code22, primitive_type, base64_input_stream_1_code21, element_type, range(base64_input_stream_1, 5877, 4, 149, 149)).
code(base64_input_stream_1_code21, array_type, base64_input_stream_1_expr22, type, range(base64_input_stream_1, 5877, 28, 149, 149)).
code(base64_input_stream_1_code23, dimension, base64_input_stream_1_code21, (dimensions, 0), range(base64_input_stream_1, 5881, 24, 149, 149)).
code(base64_input_stream_1_code24, primitive_type, base64_input_stream_1_stmt11, type, range(base64_input_stream_1, 5923, 3, 150, 150)).
code(base64_input_stream_1_code25, variable_declaration_fragment, base64_input_stream_1_stmt11, (fragments, 0), range(base64_input_stream_1, 5927, 16, 150, 150)).
%base64_input_stream_test_1 - org.apache.commons.codec.binary.Base64InputStreamTest
code(base64_input_stream_test_1_code1, compilation_unit, range(base64_input_stream_test_1, 0, 13830, 1, -1)).
code(base64_input_stream_test_1_code2, type_declaration, base64_input_stream_test_1_code1, (types, 0), range(base64_input_stream_test_1, 971, 12858, 26, 366)).
code(base64_input_stream_test_1_code3, field_declaration, base64_input_stream_test_1_code2, (body_declarations, 0), range(base64_input_stream_test_1, 1108, 62, 33, 33)).
code(base64_input_stream_test_1_code4, modifier, base64_input_stream_test_1_code3, (modifiers, 0), range(base64_input_stream_test_1, 1108, 7, 33, 33)).
code(base64_input_stream_test_1_code5, modifier, base64_input_stream_test_1_code3, (modifiers, 1), range(base64_input_stream_test_1, 1116, 5, 33, 33)).
code(base64_input_stream_test_1_code6, modifier, base64_input_stream_test_1_code3, (modifiers, 2), range(base64_input_stream_test_1, 1122, 6, 33, 33)).
code(base64_input_stream_test_1_code8, primitive_type, base64_input_stream_test_1_code7, element_type, range(base64_input_stream_test_1, 1129, 4, 33, 33)).
code(base64_input_stream_test_1_code7, array_type, base64_input_stream_test_1_code3, type, range(base64_input_stream_test_1, 1129, 6, 33, 33)).
code(base64_input_stream_test_1_code9, dimension, base64_input_stream_test_1_code7, (dimensions, 0), range(base64_input_stream_test_1, 1133, 2, 33, 33)).
code(base64_input_stream_test_1_code10, variable_declaration_fragment, base64_input_stream_test_1_code3, (fragments, 0), range(base64_input_stream_test_1, 1136, 33, 33, 33)).
code(base64_input_stream_test_1_code11, primitive_type, base64_input_stream_test_1_expr2, type, range(base64_input_stream_test_1, 1145, 4, 33, 33)).
code(base64_input_stream_test_1_code12, primitive_type, base64_input_stream_test_1_expr3, type, range(base64_input_stream_test_1, 1158, 4, 33, 33)).
code(base64_input_stream_test_1_code13, field_declaration, base64_input_stream_test_1_code2, (body_declarations, 1), range(base64_input_stream_test_1, 1176, 47, 35, 35)).
code(base64_input_stream_test_1_code14, modifier, base64_input_stream_test_1_code13, (modifiers, 0), range(base64_input_stream_test_1, 1176, 7, 35, 35)).
code(base64_input_stream_test_1_code15, modifier, base64_input_stream_test_1_code13, (modifiers, 1), range(base64_input_stream_test_1, 1184, 5, 35, 35)).
code(base64_input_stream_test_1_code16, modifier, base64_input_stream_test_1_code13, (modifiers, 2), range(base64_input_stream_test_1, 1190, 6, 35, 35)).
code(base64_input_stream_test_1_code18, primitive_type, base64_input_stream_test_1_code17, element_type, range(base64_input_stream_test_1, 1197, 4, 35, 35)).
code(base64_input_stream_test_1_code17, array_type, base64_input_stream_test_1_code13, type, range(base64_input_stream_test_1, 1197, 6, 35, 35)).
code(base64_input_stream_test_1_code19, dimension, base64_input_stream_test_1_code17, (dimensions, 0), range(base64_input_stream_test_1, 1201, 2, 35, 35)).
code(base64_input_stream_test_1_code20, variable_declaration_fragment, base64_input_stream_test_1_code13, (fragments, 0), range(base64_input_stream_test_1, 1204, 18, 35, 35)).
code(base64_input_stream_test_1_code21, primitive_type, base64_input_stream_test_1_expr5, type, range(base64_input_stream_test_1, 1211, 4, 35, 35)).
code(base64_input_stream_test_1_code22, method_declaration, base64_input_stream_test_1_code2, (body_declarations, 3), range(base64_input_stream_test_1, 1294, 204, 39, 47)).
code(base64_input_stream_test_1_code23, method_declaration, base64_input_stream_test_1_code2, (body_declarations, 4), range(base64_input_stream_test_1, 1504, 808, 49, 67)).
code(base64_input_stream_test_1_code24, array_type, base64_input_stream_test_1_stmt2, type, range(base64_input_stream_test_1, 1763, 6, 56, 56)).
code(base64_input_stream_test_1_code25, primitive_type, base64_input_stream_test_1_code24, element_type, range(base64_input_stream_test_1, 1763, 4, 56, 56)).
code(base64_input_stream_test_1_code26, dimension, base64_input_stream_test_1_code24, (dimensions, 0), range(base64_input_stream_test_1, 1767, 2, 56, 56)).
code(base64_input_stream_test_1_code27, variable_declaration_fragment, base64_input_stream_test_1_stmt2, (fragments, 0), range(base64_input_stream_test_1, 1770, 63, 56, 56)).
code(base64_input_stream_test_1_code28, simple_type, base64_input_stream_test_1_stmt3, type, range(base64_input_stream_test_1, 1843, 20, 57, 57)).
code(base64_input_stream_test_1_code29, variable_declaration_fragment, base64_input_stream_test_1_stmt3, (fragments, 0), range(base64_input_stream_test_1, 1864, 40, 57, 57)).
code(base64_input_stream_test_1_code30, simple_type, base64_input_stream_test_1_expr8, type, range(base64_input_stream_test_1, 1875, 20, 57, 57)).
code(base64_input_stream_test_1_code31, simple_type, base64_input_stream_test_1_stmt4, type, range(base64_input_stream_test_1, 1914, 17, 58, 58)).
code(base64_input_stream_test_1_code32, variable_declaration_fragment, base64_input_stream_test_1_stmt4, (fragments, 0), range(base64_input_stream_test_1, 1932, 36, 58, 58)).
code(base64_input_stream_test_1_code33, simple_type, base64_input_stream_test_1_expr9, type, range(base64_input_stream_test_1, 1945, 17, 58, 58)).
code(base64_input_stream_test_1_code34, array_type, base64_input_stream_test_1_stmt5, type, range(base64_input_stream_test_1, 2040, 6, 61, 61)).
code(base64_input_stream_test_1_code35, primitive_type, base64_input_stream_test_1_code34, element_type, range(base64_input_stream_test_1, 2040, 4, 61, 61)).
code(base64_input_stream_test_1_code36, dimension, base64_input_stream_test_1_code34, (dimensions, 0), range(base64_input_stream_test_1, 2044, 2, 61, 61)).
code(base64_input_stream_test_1_code37, variable_declaration_fragment, base64_input_stream_test_1_stmt5, (fragments, 0), range(base64_input_stream_test_1, 2047, 67, 61, 61)).
code(base64_input_stream_test_1_code39, primitive_type, base64_input_stream_test_1_code38, element_type, range(base64_input_stream_test_1, 2103, 4, 61, 61)).
code(base64_input_stream_test_1_code38, array_type, base64_input_stream_test_1_expr11, type, range(base64_input_stream_test_1, 2103, 10, 61, 61)).
code(base64_input_stream_test_1_code40, dimension, base64_input_stream_test_1_code38, (dimensions, 0), range(base64_input_stream_test_1, 2107, 6, 61, 61)).

%%% Name References

name_ref(t_base64_test_data_4, type, 'Base64TestData', 'Lorg/apache/commons/codec/binary/Base64TestData;').
name_ref(t_char_encoding_5, type, 'CharEncoding', 'Lorg/apache/commons/codec/CharEncoding;').
name_ref(t_math_2, type, 'Math', 'Ljava/lang/Math;').
name_ref(t_string_utils_3, type, 'StringUtils', 'Lorg/apache/commons/codec/binary/StringUtils;').
name_ref(t_system_1, type, 'System', 'Ljava/lang/System;').
name_ref(p_in_78, param, 'in', 'base64_input_stream_1;in_line_61').
name_ref(p_in_79, param, 'in', 'base64_input_stream_1;in_line_74').
name_ref(p_name_130, param, 'name', 'base64_output_stream_test_1;name_line_46').
name_ref(p_name_95, param, 'name', 'base64_input_stream_test_1;name_line_46').
name_ref(p_out_111, param, 'out', 'base64_output_stream_1;out_line_73').
name_ref(p_url_safe_5, param, 'urlSafe', 'base64_1;urlSafe_line_256').
name_ref(f_chunk_separator_1, field, 'CHUNK_SEPARATOR', 'base64_1;CHUNK_SEPARATOR_line_256').
name_ref(f_mime_chunk_size_6, field, 'MIME_CHUNK_SIZE', 'base64_1;MIME_CHUNK_SIZE_line_256').
name_ref(v_avail_124, var, 'avail', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.flush(Z)V|Ljava/io/IOException;#avail').
name_ref(v_b_37, var, 'b', 'Lorg/apache/commons/codec/binary/Base64;.decode([BII)V#0#0#b').
name_ref(v_buf_125, var, 'buf', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.flush(Z)V|Ljava/io/IOException;#0#buf').
name_ref(v_buf_90, var, 'buf', 'Lorg/apache/commons/codec/binary/Base64InputStream;.read([BII)I|Ljava/io/IOException;#0#buf').
name_ref(v_c_126, var, 'c', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.flush(Z)V|Ljava/io/IOException;#0#c').
name_ref(v_c_91, var, 'c', 'Lorg/apache/commons/codec/binary/Base64InputStream;.read([BII)I|Ljava/io/IOException;#0#c').
name_ref(v_codec_98_1024_132, var, 'codec98_1024', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testCodec98NPE()V|Ljava/lang/Exception;#codec98_1024').
name_ref(v_codec_98_131, var, 'codec98', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testCodec98NPE()V|Ljava/lang/Exception;#codec98').
name_ref(v_codec_98_96, var, 'codec98', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testCodec98NPE()V|Ljava/lang/Exception;#codec98').
name_ref(v_data_133, var, 'data', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testCodec98NPE()V|Ljava/lang/Exception;#data').
name_ref(v_data_97, var, 'data', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testCodec98NPE()V|Ljava/lang/Exception;#data').
name_ref(v_decoded_bytes_99, var, 'decodedBytes', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testCodec98NPE()V|Ljava/lang/Exception;#decodedBytes').
name_ref(v_i_36, var, 'i', 'Lorg/apache/commons/codec/binary/Base64;.decode([BII)V#0#i').
name_ref(v_i_46, var, 'i', 'Lorg/apache/commons/codec/binary/Base64;.containsBase64Byte([B)Z#0#i').
name_ref(v_last_read_153, var, 'lastRead', 'Lorg/apache/commons/codec/binary/Base64TestData;.fill([BILjava/io/InputStream;)[I|Ljava/io/IOException;#lastRead').
name_ref(v_len_25, var, 'len', 'Lorg/apache/commons/codec/binary/Base64;.readResults([BII)I#0#len').
name_ref(v_read_152, var, 'read', 'Lorg/apache/commons/codec/binary/Base64TestData;.fill([BILjava/io/InputStream;)[I|Ljava/io/IOException;#read').
name_ref(v_result_39, var, 'result', 'Lorg/apache/commons/codec/binary/Base64;.decode([BII)V#0#0#0#result').
name_ref(v_status_148, var, 'status', 'Lorg/apache/commons/codec/binary/Base64TestData;.streamToBytes(Ljava/io/InputStream;[B)[B|Ljava/io/IOException;#0#0#status').
name_ref(v_stream_134, var, 'stream', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testCodec98NPE()V|Ljava/lang/Exception;#stream').
name_ref(v_stream_98, var, 'stream', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testCodec98NPE()V|Ljava/lang/Exception;#stream').
name_ref(p_array_octet_44, param, 'arrayOctet', 'Lorg/apache/commons/codec/binary/Base64;.isArrayByteBase64([B)Z#arrayOctet#0#0').
name_ref(p_array_octet_45, param, 'arrayOctet', 'Lorg/apache/commons/codec/binary/Base64;.containsBase64Byte([B)Z#arrayOctet#0#0').
name_ref(p_b_120, param, 'b', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.write([BII)V|Ljava/io/IOException;#b#0#0').
name_ref(p_b_22, param, 'b', 'Lorg/apache/commons/codec/binary/Base64;.readResults([BII)I#b#0#0').
name_ref(p_b_87, param, 'b', 'Lorg/apache/commons/codec/binary/Base64InputStream;.read([BII)I|Ljava/io/IOException;#b#0#0').
name_ref(p_b_avail_24, param, 'bAvail', 'Lorg/apache/commons/codec/binary/Base64;.readResults([BII)I#bAvail#0#2').
name_ref(p_b_pos_23, param, 'bPos', 'Lorg/apache/commons/codec/binary/Base64;.readResults([BII)I#bPos#0#1').
name_ref(p_base_64data_65, param, 'base64Data', 'Lorg/apache/commons/codec/binary/Base64;.decodeBase64([B)[B#base64Data#0#0').
name_ref(p_base_64string_64, param, 'base64String', 'Lorg/apache/commons/codec/binary/Base64;.decodeBase64(Ljava/lang/String;)[B#base64String#0#0').
name_ref(p_big_int_75, param, 'bigInt', 'Lorg/apache/commons/codec/binary/Base64;.encodeInteger(Ljava/math/BigInteger;)[B#bigInt#0#0').
name_ref(p_big_int_76, param, 'bigInt', 'Lorg/apache/commons/codec/binary/Base64;.toIntegerBytes(Ljava/math/BigInteger;)[B#bigInt#0#0').
name_ref(p_binary_data_47, param, 'binaryData', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([B)[B#binaryData#0#0').
name_ref(p_binary_data_48, param, 'binaryData', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64String([B)Ljava/lang/String;#binaryData#0#0').
name_ref(p_binary_data_49, param, 'binaryData', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64URLSafe([B)[B#binaryData#0#0').
name_ref(p_binary_data_50, param, 'binaryData', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64URLSafeString([B)Ljava/lang/String;#binaryData#0#0').
name_ref(p_binary_data_51, param, 'binaryData', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64Chunked([B)[B#binaryData#0#0').
name_ref(p_binary_data_55, param, 'binaryData', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZ)[B#binaryData#0#0').
name_ref(p_binary_data_57, param, 'binaryData', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZZ)[B#binaryData#0#0').
name_ref(p_binary_data_60, param, 'binaryData', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZZI)[B#binaryData#0#0').
name_ref(p_buf_147, param, 'buf', 'Lorg/apache/commons/codec/binary/Base64TestData;.streamToBytes(Ljava/io/InputStream;[B)[B|Ljava/io/IOException;#buf#0#1').
name_ref(p_buf_149, param, 'buf', 'Lorg/apache/commons/codec/binary/Base64TestData;.fill([BILjava/io/InputStream;)[I|Ljava/io/IOException;#buf#0#0').
name_ref(p_byte_to_check_67, param, 'byteToCheck', 'Lorg/apache/commons/codec/binary/Base64;.isWhiteSpace(B)Z#byteToCheck#0#0').
name_ref(p_bytes_154, param, 'bytes', 'Lorg/apache/commons/codec/binary/Base64TestData;.resizeArray([B)[B#bytes#0#0').
name_ref(p_bytes_157, param, 'bytes', 'Lorg/apache/commons/codec/binary/Base64TestData;.bytesContain([BB)Z#bytes#0#0').
name_ref(p_bytes_169, param, 'bytes', 'Lorg/apache/commons/codec/binary/StringUtils;.newString([BLjava/lang/String;)Ljava/lang/String;#bytes#0#0').
name_ref(p_bytes_171, param, 'bytes', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringIso8859_1([B)Ljava/lang/String;#bytes#0#0').
name_ref(p_bytes_172, param, 'bytes', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringUsAscii([B)Ljava/lang/String;#bytes#0#0').
name_ref(p_bytes_173, param, 'bytes', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringUtf16([B)Ljava/lang/String;#bytes#0#0').
name_ref(p_bytes_174, param, 'bytes', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringUtf16Be([B)Ljava/lang/String;#bytes#0#0').
name_ref(p_bytes_175, param, 'bytes', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringUtf16Le([B)Ljava/lang/String;#bytes#0#0').
name_ref(p_bytes_176, param, 'bytes', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringUtf8([B)Ljava/lang/String;#bytes#0#0').
name_ref(p_c_158, param, 'c', 'Lorg/apache/commons/codec/binary/Base64TestData;.bytesContain([BB)Z#c#0#1').
name_ref(p_charset_name_166, param, 'charsetName', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B#charsetName#0#1').
name_ref(p_charset_name_167, param, 'charsetName', 'Lorg/apache/commons/codec/binary/StringUtils;.newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;#charsetName#0#0').
name_ref(p_charset_name_170, param, 'charsetName', 'Lorg/apache/commons/codec/binary/StringUtils;.newString([BLjava/lang/String;)Ljava/lang/String;#charsetName#0#1').
name_ref(p_chuck_size_100, param, 'chuckSize', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testBase64EmptyInputStream(I)V|Ljava/lang/Exception;#chuckSize#0#0').
name_ref(p_chunk_separator_73, param, 'chunkSeparator', 'Lorg/apache/commons/codec/binary/Base64;.getEncodeLength([BI[B)J#chunkSeparator#0#2').
name_ref(p_chunk_size_103, param, 'chunkSize', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testByChunk([B[BI[B)V|Ljava/lang/Exception;#chunkSize#0#2').
name_ref(p_chunk_size_107, param, 'chunkSize', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testByteByByte([B[BI[B)V|Ljava/lang/Exception;#chunkSize#0#2').
name_ref(p_chunk_size_135, param, 'chunkSize', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testBase64EmptyOutputStream(I)V|Ljava/lang/Exception;#chunkSize#0#0').
name_ref(p_chunk_size_138, param, 'chunkSize', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testByChunk([B[BI[B)V|Ljava/lang/Exception;#chunkSize#0#2').
name_ref(p_chunk_size_142, param, 'chunkSize', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testByteByByte([B[BI[B)V|Ljava/lang/Exception;#chunkSize#0#2').
name_ref(p_chunk_size_72, param, 'chunkSize', 'Lorg/apache/commons/codec/binary/Base64;.getEncodeLength([BI[B)J#chunkSize#0#1').
name_ref(p_data_66, param, 'data', 'Lorg/apache/commons/codec/binary/Base64;.discardWhitespace([B)[B#data#0#0').
name_ref(p_decoded_102, param, 'decoded', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testByChunk([B[BI[B)V|Ljava/lang/Exception;#decoded#0#1').
name_ref(p_decoded_106, param, 'decoded', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testByteByByte([B[BI[B)V|Ljava/lang/Exception;#decoded#0#1').
name_ref(p_decoded_137, param, 'decoded', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testByChunk([B[BI[B)V|Ljava/lang/Exception;#decoded#0#1').
name_ref(p_decoded_141, param, 'decoded', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testByteByByte([B[BI[B)V|Ljava/lang/Exception;#decoded#0#1').
name_ref(p_do_encode_112, param, 'doEncode', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.(Ljava/io/OutputStream;Z)V#doEncode#0#1').
name_ref(p_do_encode_116, param, 'doEncode', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.(Ljava/io/OutputStream;ZI[B)V#doEncode#0#1').
name_ref(p_do_encode_80, param, 'doEncode', 'Lorg/apache/commons/codec/binary/Base64InputStream;.(Ljava/io/InputStream;Z)V#doEncode#0#1').
name_ref(p_do_encode_84, param, 'doEncode', 'Lorg/apache/commons/codec/binary/Base64InputStream;.(Ljava/io/InputStream;ZI[B)V#doEncode#0#1').
name_ref(p_e_168, param, 'e', 'Lorg/apache/commons/codec/binary/StringUtils;.newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;#e#0#1').
name_ref(p_encoded_101, param, 'encoded', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testByChunk([B[BI[B)V|Ljava/lang/Exception;#encoded#0#0').
name_ref(p_encoded_105, param, 'encoded', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testByteByByte([B[BI[B)V|Ljava/lang/Exception;#encoded#0#0').
name_ref(p_encoded_136, param, 'encoded', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testByChunk([B[BI[B)V|Ljava/lang/Exception;#encoded#0#0').
name_ref(p_encoded_140, param, 'encoded', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testByteByByte([B[BI[B)V|Ljava/lang/Exception;#encoded#0#0').
name_ref(p_i_119, param, 'i', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.write(I)V|Ljava/io/IOException;#i#0#0').
name_ref(p_in_145, param, 'in', 'Lorg/apache/commons/codec/binary/Base64TestData;.streamToBytes(Ljava/io/InputStream;)[B|Ljava/io/IOException;#in#0#0').
name_ref(p_in_146, param, 'in', 'Lorg/apache/commons/codec/binary/Base64TestData;.streamToBytes(Ljava/io/InputStream;[B)[B|Ljava/io/IOException;#in#0#0').
name_ref(p_in_151, param, 'in', 'Lorg/apache/commons/codec/binary/Base64TestData;.fill([BILjava/io/InputStream;)[I|Ljava/io/IOException;#in#0#2').
name_ref(p_in_29, param, 'in', 'Lorg/apache/commons/codec/binary/Base64;.encode([BII)V#in#0#0').
name_ref(p_in_32, param, 'in', 'Lorg/apache/commons/codec/binary/Base64;.decode([BII)V#in#0#0').
name_ref(p_in_78, param, 'in', 'Lorg/apache/commons/codec/binary/Base64InputStream;.(Ljava/io/InputStream;)V#in#0#0').
name_ref(p_in_79, param, 'in', 'Lorg/apache/commons/codec/binary/Base64InputStream;.(Ljava/io/InputStream;Z)V#in#0#0').
name_ref(p_in_83, param, 'in', 'Lorg/apache/commons/codec/binary/Base64InputStream;.(Ljava/io/InputStream;ZI[B)V#in#0#0').
name_ref(p_in_avail_31, param, 'inAvail', 'Lorg/apache/commons/codec/binary/Base64;.encode([BII)V#inAvail#0#2').
name_ref(p_in_avail_34, param, 'inAvail', 'Lorg/apache/commons/codec/binary/Base64;.decode([BII)V#inAvail#0#2').
name_ref(p_in_pos_30, param, 'inPos', 'Lorg/apache/commons/codec/binary/Base64;.encode([BII)V#inPos#0#1').
name_ref(p_in_pos_33, param, 'inPos', 'Lorg/apache/commons/codec/binary/Base64;.decode([BII)V#inPos#0#1').
name_ref(p_is_chunked_56, param, 'isChunked', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZ)[B#isChunked#0#1').
name_ref(p_is_chunked_58, param, 'isChunked', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZZ)[B#isChunked#0#1').
name_ref(p_is_chunked_61, param, 'isChunked', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZZI)[B#isChunked#0#1').
name_ref(p_len_122, param, 'len', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.write([BII)V|Ljava/io/IOException;#len#0#2').
name_ref(p_len_89, param, 'len', 'Lorg/apache/commons/codec/binary/Base64InputStream;.read([BII)I|Ljava/io/IOException;#len#0#2').
name_ref(p_line_length_10, param, 'lineLength', 'Lorg/apache/commons/codec/binary/Base64;.(I[BZ)V#lineLength#0#0').
name_ref(p_line_length_117, param, 'lineLength', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.(Ljava/io/OutputStream;ZI[B)V#lineLength#0#2').
name_ref(p_line_length_7, param, 'lineLength', 'Lorg/apache/commons/codec/binary/Base64;.(I)V#lineLength#0#0').
name_ref(p_line_length_8, param, 'lineLength', 'Lorg/apache/commons/codec/binary/Base64;.(I[B)V#lineLength#0#0').
name_ref(p_line_length_85, param, 'lineLength', 'Lorg/apache/commons/codec/binary/Base64InputStream;.(Ljava/io/InputStream;ZI[B)V#lineLength#0#2').
name_ref(p_line_separator_11, param, 'lineSeparator', 'Lorg/apache/commons/codec/binary/Base64;.(I[BZ)V#lineSeparator#0#1').
name_ref(p_line_separator_118, param, 'lineSeparator', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.(Ljava/io/OutputStream;ZI[B)V#lineSeparator#0#3').
name_ref(p_line_separator_86, param, 'lineSeparator', 'Lorg/apache/commons/codec/binary/Base64InputStream;.(Ljava/io/InputStream;ZI[B)V#lineSeparator#0#3').
name_ref(p_line_separator_9, param, 'lineSeparator', 'Lorg/apache/commons/codec/binary/Base64;.(I[B)V#lineSeparator#0#1').
name_ref(p_max_result_size_63, param, 'maxResultSize', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZZI)[B#maxResultSize#0#3').
name_ref(p_name_130, param, 'name', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_95, param, 'name', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_octet_43, param, 'octet', 'Lorg/apache/commons/codec/binary/Base64;.isBase64(B)Z#octet#0#0').
name_ref(p_offset_121, param, 'offset', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.write([BII)V|Ljava/io/IOException;#offset#0#1').
name_ref(p_offset_150, param, 'offset', 'Lorg/apache/commons/codec/binary/Base64TestData;.fill([BILjava/io/InputStream;)[I|Ljava/io/IOException;#offset#0#1').
name_ref(p_offset_88, param, 'offset', 'Lorg/apache/commons/codec/binary/Base64InputStream;.read([BII)I|Ljava/io/IOException;#offset#0#1').
name_ref(p_out_110, param, 'out', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.(Ljava/io/OutputStream;)V#out#0#0').
name_ref(p_out_111, param, 'out', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.(Ljava/io/OutputStream;Z)V#out#0#0').
name_ref(p_out_115, param, 'out', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.(Ljava/io/OutputStream;ZI[B)V#out#0#0').
name_ref(p_out_26, param, 'out', 'Lorg/apache/commons/codec/binary/Base64;.setInitialBuffer([BII)V#out#0#0').
name_ref(p_out_avail_28, param, 'outAvail', 'Lorg/apache/commons/codec/binary/Base64;.setInitialBuffer([BII)V#outAvail#0#2').
name_ref(p_out_pos_27, param, 'outPos', 'Lorg/apache/commons/codec/binary/Base64;.setInitialBuffer([BII)V#outPos#0#1').
name_ref(p_p_array_53, param, 'pArray', 'Lorg/apache/commons/codec/binary/Base64;.decode(Ljava/lang/String;)[B#pArray#0#0').
name_ref(p_p_array_54, param, 'pArray', 'Lorg/apache/commons/codec/binary/Base64;.decode([B)[B#pArray#0#0').
name_ref(p_p_array_69, param, 'pArray', 'Lorg/apache/commons/codec/binary/Base64;.encodeToString([B)Ljava/lang/String;#pArray#0#0').
name_ref(p_p_array_70, param, 'pArray', 'Lorg/apache/commons/codec/binary/Base64;.encode([B)[B#pArray#0#0').
name_ref(p_p_array_71, param, 'pArray', 'Lorg/apache/commons/codec/binary/Base64;.getEncodeLength([BI[B)J#pArray#0#0').
name_ref(p_p_array_74, param, 'pArray', 'Lorg/apache/commons/codec/binary/Base64;.decodeInteger([B)Ljava/math/BigInteger;#pArray#0#0').
name_ref(p_p_object_52, param, 'pObject', 'Lorg/apache/commons/codec/binary/Base64;.decode(Ljava/lang/Object;)Ljava/lang/Object;|Lorg/apache/commons/codec/DecoderException;#pObject#0#0').
name_ref(p_p_object_68, param, 'pObject', 'Lorg/apache/commons/codec/binary/Base64;.encode(Ljava/lang/Object;)Ljava/lang/Object;|Lorg/apache/commons/codec/EncoderException;#pObject#0#0').
name_ref(p_propogate_123, param, 'propogate', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.flush(Z)V|Ljava/io/IOException;#propogate#0#0').
name_ref(p_seperator_104, param, 'seperator', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testByChunk([B[BI[B)V|Ljava/lang/Exception;#seperator#0#3').
name_ref(p_seperator_108, param, 'seperator', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testByteByByte([B[BI[B)V|Ljava/lang/Exception;#seperator#0#3').
name_ref(p_seperator_139, param, 'seperator', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testByChunk([B[BI[B)V|Ljava/lang/Exception;#seperator#0#3').
name_ref(p_seperator_143, param, 'seperator', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testByteByByte([B[BI[B)V|Ljava/lang/Exception;#seperator#0#3').
name_ref(p_size_155, param, 'size', 'Lorg/apache/commons/codec/binary/Base64TestData;.randomData(IZ)[[B#size#0#0').
name_ref(p_string_159, param, 'string', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesIso8859_1(Ljava/lang/String;)[B#string#0#0').
name_ref(p_string_160, param, 'string', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUsAscii(Ljava/lang/String;)[B#string#0#0').
name_ref(p_string_161, param, 'string', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUtf16(Ljava/lang/String;)[B#string#0#0').
name_ref(p_string_162, param, 'string', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUtf16Be(Ljava/lang/String;)[B#string#0#0').
name_ref(p_string_163, param, 'string', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUtf16Le(Ljava/lang/String;)[B#string#0#0').
name_ref(p_string_164, param, 'string', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUtf8(Ljava/lang/String;)[B#string#0#0').
name_ref(p_string_165, param, 'string', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B#string#0#0').
name_ref(p_url_safe_12, param, 'urlSafe', 'Lorg/apache/commons/codec/binary/Base64;.(I[BZ)V#urlSafe#0#2').
name_ref(p_url_safe_156, param, 'urlSafe', 'Lorg/apache/commons/codec/binary/Base64TestData;.randomData(IZ)[[B#urlSafe#0#1').
name_ref(p_url_safe_5, param, 'urlSafe', 'Lorg/apache/commons/codec/binary/Base64;.(Z)V#urlSafe#0#0').
name_ref(p_url_safe_59, param, 'urlSafe', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZZ)[B#urlSafe#0#2').
name_ref(p_url_safe_62, param, 'urlSafe', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZZI)[B#urlSafe#0#2').
name_ref(f_base_64_114, field, 'base64', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.base64)Lorg/apache/commons/codec/binary/Base64;').
name_ref(f_base_64_82, field, 'base64', 'Lorg/apache/commons/codec/binary/Base64InputStream;.base64)Lorg/apache/commons/codec/binary/Base64;').
name_ref(f_buffer_18, field, 'buffer', 'Lorg/apache/commons/codec/binary/Base64;.buffer)[B').
name_ref(f_chunk_separator_1, field, 'CHUNK_SEPARATOR', 'Lorg/apache/commons/codec/binary/Base64;.CHUNK_SEPARATOR)[B').
name_ref(f_crlf_128, field, 'CRLF', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.CRLF)[B').
name_ref(f_crlf_93, field, 'CRLF', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.CRLF)[B').
name_ref(f_decode_size_16, field, 'decodeSize', 'Lorg/apache/commons/codec/binary/Base64;.decodeSize)I').
name_ref(f_decode_table_4, field, 'DECODE_TABLE', 'Lorg/apache/commons/codec/binary/Base64;.DECODE_TABLE)[B').
name_ref(f_decoded_144, field, 'DECODED', 'Lorg/apache/commons/codec/binary/Base64TestData;.DECODED)[B').
name_ref(f_default_buffer_size_21, field, 'DEFAULT_BUFFER_SIZE', 'Lorg/apache/commons/codec/binary/Base64;.DEFAULT_BUFFER_SIZE)I').
name_ref(f_do_encode_113, field, 'doEncode', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.doEncode)Z').
name_ref(f_do_encode_81, field, 'doEncode', 'Lorg/apache/commons/codec/binary/Base64InputStream;.doEncode)Z').
name_ref(f_encode_size_15, field, 'encodeSize', 'Lorg/apache/commons/codec/binary/Base64;.encodeSize)I').
name_ref(f_encode_table_17, field, 'encodeTable', 'Lorg/apache/commons/codec/binary/Base64;.encodeTable)[B').
name_ref(f_eof_35, field, 'eof', 'Lorg/apache/commons/codec/binary/Base64;.eof)Z').
name_ref(f_in_92, field, 'in', 'Ljava/io/FilterInputStream;.in)Ljava/io/InputStream;').
name_ref(f_lf_129, field, 'LF', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.LF)[B').
name_ref(f_lf_94, field, 'LF', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.LF)[B').
name_ref(f_line_length_13, field, 'lineLength', 'Lorg/apache/commons/codec/binary/Base64;.lineLength)I').
name_ref(f_line_separator_14, field, 'lineSeparator', 'Lorg/apache/commons/codec/binary/Base64;.lineSeparator)[B').
name_ref(f_mask_8bits_42, field, 'MASK_8BITS', 'Lorg/apache/commons/codec/binary/Base64;.MASK_8BITS)I').
name_ref(f_mime_chunk_size_6, field, 'MIME_CHUNK_SIZE', 'Lorg/apache/commons/codec/binary/Base64;.MIME_CHUNK_SIZE)I').
name_ref(f_modulus_40, field, 'modulus', 'Lorg/apache/commons/codec/binary/Base64;.modulus)I').
name_ref(f_out_127, field, 'out', 'Ljava/io/FilterOutputStream;.out)Ljava/io/OutputStream;').
name_ref(f_pad_38, field, 'PAD', 'Lorg/apache/commons/codec/binary/Base64;.PAD)B').
name_ref(f_pos_19, field, 'pos', 'Lorg/apache/commons/codec/binary/Base64;.pos)I').
name_ref(f_read_pos_20, field, 'readPos', 'Lorg/apache/commons/codec/binary/Base64;.readPos)I').
name_ref(f_single_byte_109, field, 'singleByte', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.singleByte)[B').
name_ref(f_single_byte_77, field, 'singleByte', 'Lorg/apache/commons/codec/binary/Base64InputStream;.singleByte)[B').
name_ref(f_standard_encode_table_2, field, 'STANDARD_ENCODE_TABLE', 'Lorg/apache/commons/codec/binary/Base64;.STANDARD_ENCODE_TABLE)[B').
name_ref(f_url_safe_encode_table_3, field, 'URL_SAFE_ENCODE_TABLE', 'Lorg/apache/commons/codec/binary/Base64;.URL_SAFE_ENCODE_TABLE)[B').
name_ref(f_x_41, field, 'x', 'Lorg/apache/commons/codec/binary/Base64;.x)I').
name_ref(m_arraycopy_6, method, 'arraycopy', 'Ljava/lang/System;.arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V').
name_ref(m_avail_10, method, 'avail', 'Lorg/apache/commons/codec/binary/Base64;.avail()I').
name_ref(m_base64_1, method, 'Base64', 'Lorg/apache/commons/codec/binary/Base64;.()V').
name_ref(m_base64_2, method, 'Base64', 'Lorg/apache/commons/codec/binary/Base64;.(Z)V').
name_ref(m_base64_3, method, 'Base64', 'Lorg/apache/commons/codec/binary/Base64;.(I[BZ)V').
name_ref(m_base64_4, method, 'Base64', 'Lorg/apache/commons/codec/binary/Base64;.(I)V').
name_ref(m_base64_5, method, 'Base64', 'Lorg/apache/commons/codec/binary/Base64;.(I[B)V').
name_ref(m_base64_input_stream_42, method, 'Base64InputStream', 'Lorg/apache/commons/codec/binary/Base64InputStream;.(Ljava/io/InputStream;)V').
name_ref(m_base64_input_stream_43, method, 'Base64InputStream', 'Lorg/apache/commons/codec/binary/Base64InputStream;.(Ljava/io/InputStream;Z)V').
name_ref(m_base64_input_stream_45, method, 'Base64InputStream', 'Lorg/apache/commons/codec/binary/Base64InputStream;.(Ljava/io/InputStream;ZI[B)V').
name_ref(m_base64_input_stream_test_50, method, 'Base64InputStreamTest', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.(Ljava/lang/String;)V').
name_ref(m_base64_output_stream_67, method, 'Base64OutputStream', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.(Ljava/io/OutputStream;)V').
name_ref(m_base64_output_stream_68, method, 'Base64OutputStream', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.(Ljava/io/OutputStream;Z)V').
name_ref(m_base64_output_stream_70, method, 'Base64OutputStream', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.(Ljava/io/OutputStream;ZI[B)V').
name_ref(m_base64_output_stream_test_77, method, 'Base64OutputStreamTest', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.(Ljava/lang/String;)V').
name_ref(m_byte_array_input_stream_54, method, 'ByteArrayInputStream', 'Ljava/io/ByteArrayInputStream;.([B)V').
name_ref(m_byte_array_output_stream_79, method, 'ByteArrayOutputStream', 'Ljava/io/ByteArrayOutputStream;.(I)V').
name_ref(m_bytes_contain_95, method, 'bytesContain', 'Lorg/apache/commons/codec/binary/Base64TestData;.bytesContain([BB)Z').
name_ref(m_close_76, method, 'close', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.close()V|Ljava/io/IOException;').
name_ref(m_close_91, method, 'close', 'Ljava/io/InputStream;.close()V|Ljava/io/IOException;').
name_ref(m_contains_base64_byte_7, method, 'containsBase64Byte', 'Lorg/apache/commons/codec/binary/Base64;.containsBase64Byte([B)Z').
name_ref(m_decode_16, method, 'decode', 'Lorg/apache/commons/codec/binary/Base64;.decode([BII)V').
name_ref(m_decode_24, method, 'decode', 'Lorg/apache/commons/codec/binary/Base64;.decode(Ljava/lang/Object;)Ljava/lang/Object;|Lorg/apache/commons/codec/DecoderException;').
name_ref(m_decode_25, method, 'decode', 'Lorg/apache/commons/codec/binary/Base64;.decode(Ljava/lang/String;)[B').
name_ref(m_decode_26, method, 'decode', 'Lorg/apache/commons/codec/binary/Base64;.decode([B)[B').
name_ref(m_decode_base64_30, method, 'decodeBase64', 'Lorg/apache/commons/codec/binary/Base64;.decodeBase64(Ljava/lang/String;)[B').
name_ref(m_decode_base64_31, method, 'decodeBase64', 'Lorg/apache/commons/codec/binary/Base64;.decodeBase64([B)[B').
name_ref(m_decode_integer_38, method, 'decodeInteger', 'Lorg/apache/commons/codec/binary/Base64;.decodeInteger([B)Ljava/math/BigInteger;').
name_ref(m_discard_whitespace_32, method, 'discardWhitespace', 'Lorg/apache/commons/codec/binary/Base64;.discardWhitespace([B)[B').
name_ref(m_encode_15, method, 'encode', 'Lorg/apache/commons/codec/binary/Base64;.encode([BII)V').
name_ref(m_encode_34, method, 'encode', 'Lorg/apache/commons/codec/binary/Base64;.encode(Ljava/lang/Object;)Ljava/lang/Object;|Lorg/apache/commons/codec/EncoderException;').
name_ref(m_encode_36, method, 'encode', 'Lorg/apache/commons/codec/binary/Base64;.encode([B)[B').
name_ref(m_encode_base64_19, method, 'encodeBase64', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([B)[B').
name_ref(m_encode_base64_27, method, 'encodeBase64', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZ)[B').
name_ref(m_encode_base64_28, method, 'encodeBase64', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZZ)[B').
name_ref(m_encode_base64_29, method, 'encodeBase64', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64([BZZI)[B').
name_ref(m_encode_base64_chunked_23, method, 'encodeBase64Chunked', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64Chunked([B)[B').
name_ref(m_encode_base64_string_20, method, 'encodeBase64String', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64String([B)Ljava/lang/String;').
name_ref(m_encode_base64_urlsafe_21, method, 'encodeBase64URLSafe', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64URLSafe([B)[B').
name_ref(m_encode_base64_urlsafe_string_22, method, 'encodeBase64URLSafeString', 'Lorg/apache/commons/codec/binary/Base64;.encodeBase64URLSafeString([B)Ljava/lang/String;').
name_ref(m_encode_integer_39, method, 'encodeInteger', 'Lorg/apache/commons/codec/binary/Base64;.encodeInteger(Ljava/math/BigInteger;)[B').
name_ref(m_encode_to_string_35, method, 'encodeToString', 'Lorg/apache/commons/codec/binary/Base64;.encodeToString([B)Ljava/lang/String;').
name_ref(m_fill_90, method, 'fill', 'Lorg/apache/commons/codec/binary/Base64TestData;.fill([BILjava/io/InputStream;)[I|Ljava/io/IOException;').
name_ref(m_filter_input_stream_44, method, 'FilterInputStream', 'Ljava/io/FilterInputStream;.(Ljava/io/InputStream;)V').
name_ref(m_filter_output_stream_69, method, 'FilterOutputStream', 'Ljava/io/FilterOutputStream;.(Ljava/io/OutputStream;)V').
name_ref(m_flush_73, method, 'flush', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.flush(Z)V|Ljava/io/IOException;').
name_ref(m_flush_75, method, 'flush', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.flush()V|Ljava/io/IOException;').
name_ref(m_get_bytes_102, method, 'getBytes', 'Ljava/lang/String;.getBytes(Ljava/lang/String;)[B|Ljava/io/UnsupportedEncodingException;').
name_ref(m_get_bytes_iso8859_1_96, method, 'getBytesIso8859_1', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesIso8859_1(Ljava/lang/String;)[B').
name_ref(m_get_bytes_unchecked_101, method, 'getBytesUnchecked', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B').
name_ref(m_get_bytes_us_ascii_97, method, 'getBytesUsAscii', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUsAscii(Ljava/lang/String;)[B').
name_ref(m_get_bytes_utf16_98, method, 'getBytesUtf16', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUtf16(Ljava/lang/String;)[B').
name_ref(m_get_bytes_utf16_be_99, method, 'getBytesUtf16Be', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUtf16Be(Ljava/lang/String;)[B').
name_ref(m_get_bytes_utf16_le_100, method, 'getBytesUtf16Le', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUtf16Le(Ljava/lang/String;)[B').
name_ref(m_get_bytes_utf8_53, method, 'getBytesUtf8', 'Lorg/apache/commons/codec/binary/StringUtils;.getBytesUtf8(Ljava/lang/String;)[B').
name_ref(m_get_encode_length_37, method, 'getEncodeLength', 'Lorg/apache/commons/codec/binary/Base64;.getEncodeLength([BI[B)J').
name_ref(m_has_data_9, method, 'hasData', 'Lorg/apache/commons/codec/binary/Base64;.hasData()Z').
name_ref(m_is_array_byte_base64_18, method, 'isArrayByteBase64', 'Lorg/apache/commons/codec/binary/Base64;.isArrayByteBase64([B)Z').
name_ref(m_is_base64_17, method, 'isBase64', 'Lorg/apache/commons/codec/binary/Base64;.isBase64(B)Z').
name_ref(m_is_url_safe_8, method, 'isUrlSafe', 'Lorg/apache/commons/codec/binary/Base64;.isUrlSafe()Z').
name_ref(m_is_white_space_33, method, 'isWhiteSpace', 'Lorg/apache/commons/codec/binary/Base64;.isWhiteSpace(B)Z').
name_ref(m_mark_supported_49, method, 'markSupported', 'Lorg/apache/commons/codec/binary/Base64InputStream;.markSupported()Z').
name_ref(m_min_13, method, 'min', 'Ljava/lang/Math;.min(II)I').
name_ref(m_new_illegal_state_exception_103, method, 'newIllegalStateException', 'Lorg/apache/commons/codec/binary/StringUtils;.newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;').
name_ref(m_new_string_104, method, 'newString', 'Lorg/apache/commons/codec/binary/StringUtils;.newString([BLjava/lang/String;)Ljava/lang/String;').
name_ref(m_new_string_iso8859_1_105, method, 'newStringIso8859_1', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringIso8859_1([B)Ljava/lang/String;').
name_ref(m_new_string_us_ascii_106, method, 'newStringUsAscii', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringUsAscii([B)Ljava/lang/String;').
name_ref(m_new_string_utf16_107, method, 'newStringUtf16', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringUtf16([B)Ljava/lang/String;').
name_ref(m_new_string_utf16_be_108, method, 'newStringUtf16Be', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringUtf16Be([B)Ljava/lang/String;').
name_ref(m_new_string_utf16_le_109, method, 'newStringUtf16Le', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringUtf16Le([B)Ljava/lang/String;').
name_ref(m_new_string_utf8_110, method, 'newStringUtf8', 'Lorg/apache/commons/codec/binary/StringUtils;.newStringUtf8([B)Ljava/lang/String;').
name_ref(m_random_data_94, method, 'randomData', 'Lorg/apache/commons/codec/binary/Base64TestData;.randomData(IZ)[[B').
name_ref(m_read_46, method, 'read', 'Lorg/apache/commons/codec/binary/Base64InputStream;.read()I|Ljava/io/IOException;').
name_ref(m_read_47, method, 'read', 'Lorg/apache/commons/codec/binary/Base64InputStream;.read([BII)I|Ljava/io/IOException;').
name_ref(m_read_48, method, 'read', 'Ljava/io/InputStream;.read([B)I|Ljava/io/IOException;').
name_ref(m_read_92, method, 'read', 'Ljava/io/InputStream;.read([BII)I|Ljava/io/IOException;').
name_ref(m_read_results_12, method, 'readResults', 'Lorg/apache/commons/codec/binary/Base64;.readResults([BII)I').
name_ref(m_reset_41, method, 'reset', 'Lorg/apache/commons/codec/binary/Base64;.reset()V').
name_ref(m_resize_array_93, method, 'resizeArray', 'Lorg/apache/commons/codec/binary/Base64TestData;.resizeArray([B)[B').
name_ref(m_resize_buffer_11, method, 'resizeBuffer', 'Lorg/apache/commons/codec/binary/Base64;.resizeBuffer()V').
name_ref(m_set_initial_buffer_14, method, 'setInitialBuffer', 'Lorg/apache/commons/codec/binary/Base64;.setInitialBuffer([BII)V').
name_ref(m_stream_to_bytes_55, method, 'streamToBytes', 'Lorg/apache/commons/codec/binary/Base64TestData;.streamToBytes(Ljava/io/InputStream;[B)[B|Ljava/io/IOException;').
name_ref(m_stream_to_bytes_89, method, 'streamToBytes', 'Lorg/apache/commons/codec/binary/Base64TestData;.streamToBytes(Ljava/io/InputStream;)[B|Ljava/io/IOException;').
name_ref(m_test_base64_empty_input_stream_58, method, 'testBase64EmptyInputStream', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testBase64EmptyInputStream(I)V|Ljava/lang/Exception;').
name_ref(m_test_base64_empty_input_stream_mime_chuck_size_56, method, 'testBase64EmptyInputStreamMimeChuckSize', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testBase64EmptyInputStreamMimeChuckSize()V|Ljava/lang/Exception;').
name_ref(m_test_base64_empty_input_stream_pem_chuck_size_57, method, 'testBase64EmptyInputStreamPemChuckSize', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testBase64EmptyInputStreamPemChuckSize()V|Ljava/lang/Exception;').
name_ref(m_test_base64_empty_output_stream_82, method, 'testBase64EmptyOutputStream', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testBase64EmptyOutputStream(I)V|Ljava/lang/Exception;').
name_ref(m_test_base64_empty_output_stream_mime_chunk_size_80, method, 'testBase64EmptyOutputStreamMimeChunkSize', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testBase64EmptyOutputStreamMimeChunkSize()V|Ljava/lang/Exception;').
name_ref(m_test_base64_empty_output_stream_pem_chunk_size_81, method, 'testBase64EmptyOutputStreamPemChunkSize', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testBase64EmptyOutputStreamPemChunkSize()V|Ljava/lang/Exception;').
name_ref(m_test_base64_input_stream_by_chunk_59, method, 'testBase64InputStreamByChunk', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testBase64InputStreamByChunk()V|Ljava/lang/Exception;').
name_ref(m_test_base64_input_stream_byte_by_byte_60, method, 'testBase64InputStreamByteByByte', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testBase64InputStreamByteByByte()V|Ljava/lang/Exception;').
name_ref(m_test_base64_output_stream_by_chunk_83, method, 'testBase64OutputStreamByChunk', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testBase64OutputStreamByChunk()V|Ljava/lang/Exception;').
name_ref(m_test_base64_output_stream_byte_by_byte_84, method, 'testBase64OutputStreamByteByByte', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testBase64OutputStreamByteByByte()V|Ljava/lang/Exception;').
name_ref(m_test_by_chunk_61, method, 'testByChunk', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testByChunk([B[BI[B)V|Ljava/lang/Exception;').
name_ref(m_test_by_chunk_85, method, 'testByChunk', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testByChunk([B[BI[B)V|Ljava/lang/Exception;').
name_ref(m_test_byte_by_byte_62, method, 'testByteByByte', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testByteByByte([B[BI[B)V|Ljava/lang/Exception;').
name_ref(m_test_byte_by_byte_86, method, 'testByteByByte', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testByteByByte([B[BI[B)V|Ljava/lang/Exception;').
name_ref(m_test_case_51, method, 'TestCase', 'Ljunit/framework/TestCase;.(Ljava/lang/String;)V').
name_ref(m_test_codec98_npe_52, method, 'testCodec98NPE', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testCodec98NPE()V|Ljava/lang/Exception;').
name_ref(m_test_codec98_npe_78, method, 'testCodec98NPE', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testCodec98NPE()V|Ljava/lang/Exception;').
name_ref(m_test_mark_supported_63, method, 'testMarkSupported', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testMarkSupported()V|Ljava/lang/Exception;').
name_ref(m_test_read0_64, method, 'testRead0', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testRead0()V|Ljava/lang/Exception;').
name_ref(m_test_read_null_65, method, 'testReadNull', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testReadNull()V|Ljava/lang/Exception;').
name_ref(m_test_read_out_of_bounds_66, method, 'testReadOutOfBounds', 'Lorg/apache/commons/codec/binary/Base64InputStreamTest;.testReadOutOfBounds()V|Ljava/lang/Exception;').
name_ref(m_test_write_out_of_bounds_87, method, 'testWriteOutOfBounds', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testWriteOutOfBounds()V|Ljava/lang/Exception;').
name_ref(m_test_write_to_null_coverage_88, method, 'testWriteToNullCoverage', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testWriteToNullCoverage()V|Ljava/lang/Exception;').
name_ref(m_to_integer_bytes_40, method, 'toIntegerBytes', 'Lorg/apache/commons/codec/binary/Base64;.toIntegerBytes(Ljava/math/BigInteger;)[B').
name_ref(m_write_71, method, 'write', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.write(I)V|Ljava/io/IOException;').
name_ref(m_write_72, method, 'write', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.write([BII)V|Ljava/io/IOException;').
name_ref(m_write_74, method, 'write', 'Ljava/io/OutputStream;.write([BII)V|Ljava/io/IOException;').
name_ref(q_codec_98_npe_7, q_name, 'Base64TestData.CODEC_98_NPE', 'Lorg/apache/commons/codec/binary/Base64TestData;:Lorg/apache/commons/codec/binary/Base64TestData;.CODEC_98_NPE)Ljava/lang/String;').
name_ref(q_length_1, q_name, 'lineSeparator.length', 'Lorg/apache/commons/codec/binary/Base64;.(I[BZ)V#lineSeparator#0#1:.length)I').
name_ref(q_length_10, q_name, 'buf.length', 'Lorg/apache/commons/codec/binary/Base64TestData;.fill([BILjava/io/InputStream;)[I|Ljava/io/IOException;#buf#0#0:.length)I').
name_ref(q_length_2, q_name, 'out.length', 'Lorg/apache/commons/codec/binary/Base64;.setInitialBuffer([BII)V#out#0#0:.length)I').
name_ref(q_length_3, q_name, 'buffer.length', 'Lorg/apache/commons/codec/binary/Base64;.buffer)[B:.length)I').
name_ref(q_length_4, q_name, 'DECODE_TABLE.length', 'Lorg/apache/commons/codec/binary/Base64;.DECODE_TABLE)[B:.length)I').
name_ref(q_length_5, q_name, 'arrayOctet.length', 'Lorg/apache/commons/codec/binary/Base64;.containsBase64Byte([B)Z#arrayOctet#0#0:.length)I').
name_ref(q_length_6, q_name, 'b.length', 'Lorg/apache/commons/codec/binary/Base64InputStream;.read([BII)I|Ljava/io/IOException;#b#0#0:.length)I').
name_ref(q_length_8, q_name, 'b.length', 'Lorg/apache/commons/codec/binary/Base64OutputStream;.write([BII)V|Ljava/io/IOException;#b#0#0:.length)I').
name_ref(q_length_9, q_name, 'codec98.length', 'Lorg/apache/commons/codec/binary/Base64OutputStreamTest;.testCodec98NPE()V|Ljava/lang/Exception;#codec98:.length)I').
name_ref(q_utf_8_11, q_name, 'CharEncoding.UTF_8', 'Lorg/apache/commons/codec/CharEncoding;:Lorg/apache/commons/codec/CharEncoding;.UTF_8)Ljava/lang/String;').

%%% End of Code Facts

