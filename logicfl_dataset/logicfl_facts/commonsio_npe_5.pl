%%% Logic-FL Facts
:- style_check(-discontiguous).

%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
param(p_line_separator_330, 1, m_standard_line_separator_173).
assign(f_line_separator_331, standard_line_separator_1_expr3, line(standard_line_separator_1, 53)).
method_invoc(standard_line_separator_1_expr3, m_require_non_null_174, line(standard_line_separator_1, 53)).
argument(p_line_separator_330, 1, standard_line_separator_1_expr3).
argument(standard_line_separator_1_literal4, 2, standard_line_separator_1_expr3).
ref(t_objects_6, standard_line_separator_1_expr3, line(standard_line_separator_1, 53)).
param(p_charset_332, 1, m_get_bytes_175).
return(f_line_separator_331, m_get_string_2, line(standard_line_separator_1, 72)).

%ioutils_1 - org.apache.commons.io.IOUtils
assign(f_dir_separator_1, q_separator_char_1, line(ioutils_1, 145)).
ref(t_file_1, q_separator_char_1, line(ioutils_1, 145)).
assign(f_empty_byte_array_2, ioutils_1_expr1, line(ioutils_1, 162)).
assign(f_line_separator_3, ioutils_1_expr2, line(ioutils_1, 183)).
method_invoc(ioutils_1_expr2, m_line_separator_1, line(ioutils_1, 183)).
ref(t_system_2, ioutils_1_expr2, line(ioutils_1, 183)).
assign(f_line_separator_unix_4, ioutils_1_expr3, line(ioutils_1, 190)).
method_invoc(ioutils_1_expr3, m_get_string_2, line(ioutils_1, 190)).
ref(f_lf_5, ioutils_1_expr3, line(ioutils_1, 190)).
ref(t_standard_line_separator_3, q_lf_2, line(ioutils_1, 190)).
assign(f_line_separator_windows_6, ioutils_1_expr4, line(ioutils_1, 197)).
method_invoc(ioutils_1_expr4, m_get_string_2, line(ioutils_1, 197)).
ref(f_crlf_7, ioutils_1_expr4, line(ioutils_1, 197)).
ref(t_standard_line_separator_3, q_crlf_3, line(ioutils_1, 197)).
assign(f_scratch_byte_buffer_rw_8, ioutils_1_expr5, line(ioutils_1, 202)).
method_invoc(ioutils_1_expr5, m_with_initial_3, line(ioutils_1, 202)).
argument(ioutils_1_expr6, 1, ioutils_1_expr5).
ref(t_thread_local_4, ioutils_1_expr5, line(ioutils_1, 202)).
assign(f_scratch_byte_buffer_wo_9, ioutils_1_expr7, line(ioutils_1, 207)).
method_invoc(ioutils_1_expr7, m_byte_array_4, line(ioutils_1, 207)).
assign(f_scratch_char_buffer_rw_10, ioutils_1_expr8, line(ioutils_1, 212)).
method_invoc(ioutils_1_expr8, m_with_initial_3, line(ioutils_1, 212)).
argument(ioutils_1_expr9, 1, ioutils_1_expr8).
ref(t_thread_local_4, ioutils_1_expr8, line(ioutils_1, 212)).
assign(f_scratch_char_buffer_wo_11, ioutils_1_expr10, line(ioutils_1, 217)).
method_invoc(ioutils_1_expr10, m_char_array_5, line(ioutils_1, 217)).
param(p_input_stream_12, 1, m_buffer_6).
param(p_input_stream_13, 1, m_buffer_7).
param(p_size_14, 2, m_buffer_7).
param(p_output_stream_15, 1, m_buffer_8).
param(p_output_stream_16, 1, m_buffer_9).
param(p_size_17, 2, m_buffer_9).
param(p_reader_18, 1, m_buffer_10).
param(p_reader_19, 1, m_buffer_11).
param(p_size_20, 2, m_buffer_11).
param(p_writer_21, 1, m_buffer_12).
param(p_writer_22, 1, m_buffer_13).
param(p_size_23, 2, m_buffer_13).
return(ioutils_1_expr11, m_byte_array_4, line(ioutils_1, 354)).
method_invoc(ioutils_1_expr11, m_byte_array_14, line(ioutils_1, 354)).
argument(f_default_buffer_size_24, 1, ioutils_1_expr11).
param(p_size_25, 1, m_byte_array_14).
return(ioutils_1_expr12, m_byte_array_14, line(ioutils_1, 368)).
return(ioutils_1_expr13, m_char_array_5, line(ioutils_1, 378)).
method_invoc(ioutils_1_expr13, m_char_array_15, line(ioutils_1, 378)).
argument(f_default_buffer_size_24, 1, ioutils_1_expr13).
param(p_size_26, 1, m_char_array_15).
return(ioutils_1_expr14, m_char_array_15, line(ioutils_1, 391)).
param(p_closeable_27, 1, m_close_17).
throw(m_close_17, ioexception).
param(p_closeables_28, 1, m_close_18).
throw(m_close_18, ioexception_list).
param(p_closeable_29, 1, m_close_19).
param(p_consumer_30, 2, m_close_19).
throw(m_close_19, ioexception).
param(p_conn_31, 1, m_close_20).
param(p_closeable_32, 1, m_close_q_21).
param(p_closeable_33, 1, m_close_quietly_22).
param(p_closeables_34, 1, m_close_quietly_23).
param(p_closeable_35, 1, m_close_quietly_24).
param(p_consumer_36, 2, m_close_quietly_24).
param(p_input_37, 1, m_close_quietly_25).
param(p_closeables_38, 1, m_close_quietly_26).
param(p_output_39, 1, m_close_quietly_27).
param(p_reader_40, 1, m_close_quietly_28).
param(p_selector_41, 1, m_close_quietly_29).
param(p_server_socket_42, 1, m_close_quietly_30).
param(p_socket_43, 1, m_close_quietly_31).
param(p_closeables_44, 1, m_close_quietly_32).
param(p_writer_45, 1, m_close_quietly_33).
param(p_input_46, 1, m_consume_34).
throw(m_consume_34, ioexception).
param(p_input_47, 1, m_consume_35).
throw(m_consume_35, ioexception).
param(p_input_1_48, 1, m_content_equals_36).
param(p_input_2_49, 2, m_content_equals_36).
throw(m_content_equals_36, ioexception).
param(p_iterator_1_50, 1, m_content_equals_37).
param(p_iterator_2_51, 2, m_content_equals_37).
param(p_input_1_52, 1, m_content_equals_38).
param(p_input_2_53, 2, m_content_equals_38).
throw(m_content_equals_38, ioexception).
param(p_stream_1_54, 1, m_content_equals_39).
param(p_stream_2_55, 2, m_content_equals_39).
param(p_reader_1_56, 1, m_content_equals_ignore_eol_40).
param(p_reader_2_57, 2, m_content_equals_ignore_eol_40).
param(p_reader_1_58, 1, m_content_equals_ignore_eol_41).
param(p_reader_2_59, 2, m_content_equals_ignore_eol_41).
throw(m_content_equals_ignore_eol_41, unchecked_ioexception).
param(p_input_stream_60, 1, m_copy_42).
param(p_output_stream_61, 2, m_copy_42).
throw(m_copy_42, ioexception).
param(p_input_stream_62, 1, m_copy_43).
param(p_output_stream_63, 2, m_copy_43).
param(p_buffer_size_64, 3, m_copy_43).
throw(m_copy_43, ioexception).
param(p_input_65, 1, m_copy_44).
param(p_writer_66, 2, m_copy_44).
throw(m_copy_44, ioexception).
param(p_input_67, 1, m_copy_45).
param(p_writer_68, 2, m_copy_45).
param(p_input_charset_69, 3, m_copy_45).
throw(m_copy_45, ioexception).
param(p_input_70, 1, m_copy_46).
param(p_writer_71, 2, m_copy_46).
param(p_input_charset_name_72, 3, m_copy_46).
throw(m_copy_46, ioexception).
param(p_output_stream_73, 1, m_copy_47).
throw(m_copy_47, ioexception).
param(p_reader_74, 1, m_copy_48).
param(p_output_75, 2, m_copy_48).
throw(m_copy_48, ioexception).
param(p_reader_76, 1, m_copy_49).
param(p_output_77, 2, m_copy_49).
param(p_buffer_78, 3, m_copy_49).
throw(m_copy_49, ioexception).
param(p_reader_79, 1, m_copy_50).
param(p_output_80, 2, m_copy_50).
throw(m_copy_50, ioexception).
param(p_reader_81, 1, m_copy_51).
param(p_output_82, 2, m_copy_51).
param(p_output_charset_83, 3, m_copy_51).
throw(m_copy_51, ioexception).
param(p_reader_84, 1, m_copy_52).
param(p_output_85, 2, m_copy_52).
param(p_output_charset_name_86, 3, m_copy_52).
throw(m_copy_52, ioexception).
param(p_reader_87, 1, m_copy_53).
param(p_writer_88, 2, m_copy_53).
throw(m_copy_53, ioexception).
param(p_url_89, 1, m_copy_54).
param(p_file_90, 2, m_copy_54).
throw(m_copy_54, ioexception).
param(p_url_91, 1, m_copy_55).
param(p_output_stream_92, 2, m_copy_55).
throw(m_copy_55, ioexception).
param(p_input_stream_93, 1, m_copy_large_56).
param(p_output_stream_94, 2, m_copy_large_56).
throw(m_copy_large_56, ioexception).
param(p_input_stream_95, 1, m_copy_large_57).
param(p_output_stream_96, 2, m_copy_large_57).
param(p_buffer_97, 3, m_copy_large_57).
throw(m_copy_large_57, ioexception).
param(p_input_98, 1, m_copy_large_58).
param(p_output_99, 2, m_copy_large_58).
param(p_input_offset_100, 3, m_copy_large_58).
param(p_length_101, 4, m_copy_large_58).
throw(m_copy_large_58, ioexception).
param(p_input_102, 1, m_copy_large_59).
param(p_output_103, 2, m_copy_large_59).
param(p_input_offset_104, 3, m_copy_large_59).
param(p_length_105, 4, m_copy_large_59).
param(p_buffer_106, 5, m_copy_large_59).
throw(m_copy_large_59, ioexception).
param(p_reader_107, 1, m_copy_large_60).
param(p_writer_108, 2, m_copy_large_60).
throw(m_copy_large_60, ioexception).
param(p_reader_109, 1, m_copy_large_61).
param(p_writer_110, 2, m_copy_large_61).
param(p_buffer_111, 3, m_copy_large_61).
throw(m_copy_large_61, ioexception).
param(p_reader_112, 1, m_copy_large_62).
param(p_writer_113, 2, m_copy_large_62).
param(p_input_offset_114, 3, m_copy_large_62).
param(p_length_115, 4, m_copy_large_62).
throw(m_copy_large_62, ioexception).
param(p_reader_116, 1, m_copy_large_63).
param(p_writer_117, 2, m_copy_large_63).
param(p_input_offset_118, 3, m_copy_large_63).
param(p_length_119, 4, m_copy_large_63).
param(p_buffer_120, 5, m_copy_large_63).
throw(m_copy_large_63, ioexception).
param(p_arr_121, 1, m_fill_0_64).
param(p_arr_122, 1, m_fill_0_65).
param(p_array_123, 1, m_length_70).
param(p_array_124, 1, m_length_71).
param(p_csq_125, 1, m_length_72).
param(p_array_126, 1, m_length_73).
param(p_input_127, 1, m_line_iterator_74).
param(p_charset_128, 2, m_line_iterator_74).
param(p_input_129, 1, m_line_iterator_75).
param(p_charset_name_130, 2, m_line_iterator_75).
param(p_reader_131, 1, m_line_iterator_76).
param(p_input_132, 1, m_read_77).
param(p_buffer_133, 2, m_read_77).
throw(m_read_77, ioexception).
param(p_input_134, 1, m_read_78).
param(p_buffer_135, 2, m_read_78).
param(p_offset_136, 3, m_read_78).
param(p_length_137, 4, m_read_78).
throw(m_read_78, ioexception).
param(p_input_138, 1, m_read_79).
param(p_buffer_139, 2, m_read_79).
param(p_offset_140, 3, m_read_79).
param(p_length_141, 4, m_read_79).
throw(m_read_79, ioexception).
param(p_input_142, 1, m_read_80).
param(p_buffer_143, 2, m_read_80).
throw(m_read_80, ioexception).
param(p_reader_144, 1, m_read_81).
param(p_buffer_145, 2, m_read_81).
throw(m_read_81, ioexception).
param(p_reader_146, 1, m_read_82).
param(p_buffer_147, 2, m_read_82).
param(p_offset_148, 3, m_read_82).
param(p_length_149, 4, m_read_82).
throw(m_read_82, ioexception).
param(p_input_150, 1, m_read_fully_83).
param(p_buffer_151, 2, m_read_fully_83).
throw(m_read_fully_83, ioexception).
param(p_input_152, 1, m_read_fully_84).
param(p_buffer_153, 2, m_read_fully_84).
param(p_offset_154, 3, m_read_fully_84).
param(p_length_155, 4, m_read_fully_84).
throw(m_read_fully_84, ioexception).
param(p_input_156, 1, m_read_fully_85).
param(p_length_157, 2, m_read_fully_85).
throw(m_read_fully_85, ioexception).
param(p_input_158, 1, m_read_fully_86).
param(p_buffer_159, 2, m_read_fully_86).
throw(m_read_fully_86, ioexception).
param(p_reader_160, 1, m_read_fully_87).
param(p_buffer_161, 2, m_read_fully_87).
throw(m_read_fully_87, ioexception).
param(p_reader_162, 1, m_read_fully_88).
param(p_buffer_163, 2, m_read_fully_88).
param(p_offset_164, 3, m_read_fully_88).
param(p_length_165, 4, m_read_fully_88).
throw(m_read_fully_88, ioexception).
param(p_input_166, 1, m_read_lines_89).
throw(m_read_lines_89, unchecked_ioexception).
param(p_input_167, 1, m_read_lines_90).
param(p_charset_168, 2, m_read_lines_90).
throw(m_read_lines_90, unchecked_ioexception).
param(p_input_169, 1, m_read_lines_91).
param(p_charset_name_170, 2, m_read_lines_91).
throw(m_read_lines_91, unchecked_ioexception).
param(p_reader_171, 1, m_read_lines_92).
throw(m_read_lines_92, unchecked_ioexception).
param(p_name_172, 1, m_resource_to_byte_array_93).
throw(m_resource_to_byte_array_93, ioexception).
param(p_name_173, 1, m_resource_to_byte_array_94).
param(p_class_loader_174, 2, m_resource_to_byte_array_94).
throw(m_resource_to_byte_array_94, ioexception).
param(p_name_175, 1, m_resource_to_string_95).
param(p_charset_176, 2, m_resource_to_string_95).
throw(m_resource_to_string_95, ioexception).
param(p_name_177, 1, m_resource_to_string_96).
param(p_charset_178, 2, m_resource_to_string_96).
param(p_class_loader_179, 3, m_resource_to_string_96).
throw(m_resource_to_string_96, ioexception).
param(p_name_180, 1, m_resource_to_url_97).
throw(m_resource_to_url_97, ioexception).
param(p_name_181, 1, m_resource_to_url_98).
param(p_class_loader_182, 2, m_resource_to_url_98).
throw(m_resource_to_url_98, ioexception).
param(p_input_183, 1, m_skip_99).
param(p_to_skip_184, 2, m_skip_99).
throw(m_skip_99, ioexception).
param(p_input_185, 1, m_skip_100).
param(p_to_skip_186, 2, m_skip_100).
param(p_skip_buffer_supplier_187, 3, m_skip_100).
throw(m_skip_100, ioexception).
param(p_input_188, 1, m_skip_101).
param(p_to_skip_189, 2, m_skip_101).
throw(m_skip_101, ioexception).
param(p_reader_190, 1, m_skip_102).
param(p_to_skip_191, 2, m_skip_102).
throw(m_skip_102, ioexception).
param(p_input_192, 1, m_skip_fully_103).
param(p_to_skip_193, 2, m_skip_fully_103).
throw(m_skip_fully_103, ioexception).
param(p_input_194, 1, m_skip_fully_104).
param(p_to_skip_195, 2, m_skip_fully_104).
param(p_skip_buffer_supplier_196, 3, m_skip_fully_104).
throw(m_skip_fully_104, ioexception).
param(p_input_197, 1, m_skip_fully_105).
param(p_to_skip_198, 2, m_skip_fully_105).
throw(m_skip_fully_105, ioexception).
param(p_reader_199, 1, m_skip_fully_106).
param(p_to_skip_200, 2, m_skip_fully_106).
throw(m_skip_fully_106, ioexception).
param(p_input_201, 1, m_to_buffered_input_stream_107).
throw(m_to_buffered_input_stream_107, ioexception).
param(p_input_202, 1, m_to_buffered_input_stream_108).
param(p_size_203, 2, m_to_buffered_input_stream_108).
throw(m_to_buffered_input_stream_108, ioexception).
param(p_reader_204, 1, m_to_buffered_reader_109).
param(p_reader_205, 1, m_to_buffered_reader_110).
param(p_size_206, 2, m_to_buffered_reader_110).
param(p_input_stream_207, 1, m_to_byte_array_111).
throw(m_to_byte_array_111, ioexception).
param(p_input_208, 1, m_to_byte_array_112).
param(p_size_209, 2, m_to_byte_array_112).
throw(m_to_byte_array_112, ioexception).
param(p_input_210, 1, m_to_byte_array_113).
param(p_size_211, 2, m_to_byte_array_113).
throw(m_to_byte_array_113, ioexception).
param(p_input_212, 1, m_to_byte_array_114).
param(p_size_213, 2, m_to_byte_array_114).
throw(m_to_byte_array_114, ioexception).
param(p_reader_214, 1, m_to_byte_array_115).
throw(m_to_byte_array_115, ioexception).
param(p_reader_215, 1, m_to_byte_array_116).
param(p_charset_216, 2, m_to_byte_array_116).
throw(m_to_byte_array_116, ioexception).
param(p_reader_217, 1, m_to_byte_array_117).
param(p_charset_name_218, 2, m_to_byte_array_117).
throw(m_to_byte_array_117, ioexception).
param(p_input_219, 1, m_to_byte_array_118).
param(p_uri_220, 1, m_to_byte_array_119).
throw(m_to_byte_array_119, ioexception).
param(p_url_221, 1, m_to_byte_array_120).
throw(m_to_byte_array_120, ioexception).
param(p_url_connection_222, 1, m_to_byte_array_121).
throw(m_to_byte_array_121, ioexception).
param(p_input_stream_223, 1, m_to_char_array_122).
throw(m_to_char_array_122, ioexception).
param(p_input_stream_224, 1, m_to_char_array_123).
param(p_charset_225, 2, m_to_char_array_123).
throw(m_to_char_array_123, ioexception).
param(p_input_stream_226, 1, m_to_char_array_124).
param(p_charset_name_227, 2, m_to_char_array_124).
throw(m_to_char_array_124, ioexception).
param(p_reader_228, 1, m_to_char_array_125).
throw(m_to_char_array_125, ioexception).
param(p_input_229, 1, m_to_input_stream_126).
param(p_input_230, 1, m_to_input_stream_127).
param(p_charset_231, 2, m_to_input_stream_127).
param(p_input_232, 1, m_to_input_stream_128).
param(p_charset_name_233, 2, m_to_input_stream_128).
param(p_input_234, 1, m_to_input_stream_129).
param(p_input_235, 1, m_to_input_stream_130).
param(p_charset_236, 2, m_to_input_stream_130).
param(p_input_237, 1, m_to_input_stream_131).
param(p_charset_name_238, 2, m_to_input_stream_131).
param(p_input_239, 1, m_to_string_132).
param(p_input_240, 1, m_to_string_133).
param(p_charset_name_241, 2, m_to_string_133).
param(p_input_242, 1, m_to_string_134).
throw(m_to_string_134, ioexception).
param(p_input_243, 1, m_to_string_135).
param(p_charset_244, 2, m_to_string_135).
throw(m_to_string_135, ioexception).
param(p_input_245, 1, m_to_string_136).
param(p_charset_name_246, 2, m_to_string_136).
throw(m_to_string_136, ioexception).
param(p_input_247, 1, m_to_string_137).
param(p_charset_248, 2, m_to_string_137).
throw(m_to_string_137, ioexception).
param(p_input_249, 1, m_to_string_138).
param(p_charset_250, 2, m_to_string_138).
param(p_default_string_251, 3, m_to_string_138).
throw(m_to_string_138, ioexception).
param(p_reader_252, 1, m_to_string_139).
throw(m_to_string_139, ioexception).
param(p_uri_253, 1, m_to_string_140).
throw(m_to_string_140, ioexception).
param(p_uri_254, 1, m_to_string_141).
param(p_encoding_255, 2, m_to_string_141).
throw(m_to_string_141, ioexception).
param(p_uri_256, 1, m_to_string_142).
param(p_charset_name_257, 2, m_to_string_142).
throw(m_to_string_142, ioexception).
param(p_url_258, 1, m_to_string_143).
throw(m_to_string_143, ioexception).
param(p_url_259, 1, m_to_string_144).
param(p_encoding_260, 2, m_to_string_144).
throw(m_to_string_144, ioexception).
param(p_url_261, 1, m_to_string_145).
param(p_charset_name_262, 2, m_to_string_145).
throw(m_to_string_145, ioexception).
param(p_data_263, 1, m_write_146).
param(p_output_264, 2, m_write_146).
throw(m_write_146, ioexception).
param(p_data_265, 1, m_write_147).
param(p_writer_266, 2, m_write_147).
throw(m_write_147, ioexception).
param(p_data_267, 1, m_write_148).
param(p_writer_268, 2, m_write_148).
param(p_charset_269, 3, m_write_148).
throw(m_write_148, ioexception).
param(p_data_270, 1, m_write_149).
param(p_writer_271, 2, m_write_149).
param(p_charset_name_272, 3, m_write_149).
throw(m_write_149, ioexception).
param(p_data_273, 1, m_write_150).
param(p_output_274, 2, m_write_150).
throw(m_write_150, ioexception).
param(p_data_275, 1, m_write_151).
param(p_output_276, 2, m_write_151).
param(p_charset_277, 3, m_write_151).
throw(m_write_151, ioexception).
param(p_data_278, 1, m_write_152).
param(p_output_279, 2, m_write_152).
param(p_charset_name_280, 3, m_write_152).
throw(m_write_152, ioexception).
param(p_data_281, 1, m_write_153).
param(p_writer_282, 2, m_write_153).
throw(m_write_153, ioexception).
param(p_data_283, 1, m_write_154).
param(p_output_284, 2, m_write_154).
throw(m_write_154, ioexception).
param(p_data_285, 1, m_write_155).
param(p_output_286, 2, m_write_155).
param(p_charset_287, 3, m_write_155).
throw(m_write_155, ioexception).
param(p_data_288, 1, m_write_156).
param(p_output_289, 2, m_write_156).
param(p_charset_name_290, 3, m_write_156).
throw(m_write_156, ioexception).
param(p_data_291, 1, m_write_157).
param(p_writer_292, 2, m_write_157).
throw(m_write_157, ioexception).
param(p_data_293, 1, m_write_158).
param(p_output_294, 2, m_write_158).
throw(m_write_158, ioexception).
param(p_data_295, 1, m_write_159).
param(p_output_296, 2, m_write_159).
param(p_charset_297, 3, m_write_159).
throw(m_write_159, ioexception).
param(p_data_298, 1, m_write_160).
param(p_output_299, 2, m_write_160).
param(p_charset_name_300, 3, m_write_160).
throw(m_write_160, ioexception).
param(p_data_301, 1, m_write_161).
param(p_writer_302, 2, m_write_161).
throw(m_write_161, ioexception).
param(p_data_303, 1, m_write_162).
param(p_output_304, 2, m_write_162).
throw(m_write_162, ioexception).
param(p_data_305, 1, m_write_163).
param(p_output_306, 2, m_write_163).
param(p_charset_name_307, 3, m_write_163).
throw(m_write_163, ioexception).
param(p_data_308, 1, m_write_164).
param(p_writer_309, 2, m_write_164).
throw(m_write_164, ioexception).
param(p_data_310, 1, m_write_chunked_165).
param(p_output_311, 2, m_write_chunked_165).
throw(m_write_chunked_165, ioexception).
param(p_data_312, 1, m_write_chunked_166).
param(p_writer_313, 2, m_write_chunked_166).
throw(m_write_chunked_166, ioexception).
param(p_lines_314, 1, m_write_lines_167).
param(p_line_ending_315, 2, m_write_lines_167).
param(p_output_316, 3, m_write_lines_167).
throw(m_write_lines_167, ioexception).
param(p_lines_317, 1, m_write_lines_168).
param(p_line_ending_318, 2, m_write_lines_168).
param(p_output_319, 3, m_write_lines_168).
param(p_charset_320, 4, m_write_lines_168).
throw(m_write_lines_168, ioexception).
param(p_lines_321, 1, m_write_lines_169).
param(p_line_ending_322, 2, m_write_lines_169).
param(p_output_323, 3, m_write_lines_169).
param(p_charset_name_324, 4, m_write_lines_169).
throw(m_write_lines_169, ioexception).
param(p_lines_325, 1, m_write_lines_170).
param(p_line_ending_326, 2, m_write_lines_170).
param(p_writer_327, 3, m_write_lines_170).
throw(m_write_lines_170, ioexception).
param(p_appendable_328, 1, m_writer_171).

%regex_file_filter_test_1 - org.apache.commons.io.filefilter.RegexFileFilterTest
param(p_filter_385, 1, m_assert_filtering_214).
param(p_file_386, 2, m_assert_filtering_214).
param(p_expected_387, 3, m_assert_filtering_214).
param(p_filter_388, 1, m_assert_filtering_215).
param(p_path_389, 2, m_assert_filtering_215).
param(p_expected_390, 3, m_assert_filtering_215).
assign(v_expected_file_visit_result_391, regex_file_filter_test_1_expr1, line(regex_file_filter_test_1, 67)).
method_invoc(regex_file_filter_test_1_expr1, m_to_default_file_visit_result_176, line(regex_file_filter_test_1, 67)).
argument(p_expected_390, 1, regex_file_filter_test_1_expr1).
ref(t_abstract_file_filter_10, regex_file_filter_test_1_expr1, line(regex_file_filter_test_1, 67)).
method_invoc(regex_file_filter_test_1_expr2, m_assert_equals_216, line(regex_file_filter_test_1, 68)).
argument(v_expected_file_visit_result_391, 1, regex_file_filter_test_1_expr2).
argument(regex_file_filter_test_1_expr3, 2, regex_file_filter_test_1_expr2).
argument(regex_file_filter_test_1_expr4, 3, regex_file_filter_test_1_expr2).
method_invoc(regex_file_filter_test_1_expr3, m_accept_193, line(regex_file_filter_test_1, 68)).
argument(p_path_389, 1, regex_file_filter_test_1_expr3).
argument(regex_file_filter_test_1_literal1, 2, regex_file_filter_test_1_expr3).
ref(p_filter_388, regex_file_filter_test_1_expr3, line(regex_file_filter_test_1, 68)).
method_invoc(regex_file_filter_test_1_expr5, m_get_name_217, line(regex_file_filter_test_1, 69)).
ref(regex_file_filter_test_1_expr6, regex_file_filter_test_1_expr5, line(regex_file_filter_test_1, 69)).
method_invoc(regex_file_filter_test_1_expr6, m_get_class_218, line(regex_file_filter_test_1, 69)).
ref(p_filter_388, regex_file_filter_test_1_expr6, line(regex_file_filter_test_1, 69)).
method_invoc(regex_file_filter_test_1_expr7, m_assert_equals_216, line(regex_file_filter_test_1, 70)).
argument(regex_file_filter_test_1_expr8, 1, regex_file_filter_test_1_expr7).
argument(regex_file_filter_test_1_expr9, 2, regex_file_filter_test_1_expr7).
argument(regex_file_filter_test_1_expr10, 3, regex_file_filter_test_1_expr7).
ref(t_file_visit_result_7, q_terminate_6, line(regex_file_filter_test_1, 70)).
method_invoc(regex_file_filter_test_1_expr9, m_matches_195, line(regex_file_filter_test_1, 70)).
argument(p_path_389, 1, regex_file_filter_test_1_expr9).
ref(p_filter_388, regex_file_filter_test_1_expr9, line(regex_file_filter_test_1, 70)).
method_invoc(regex_file_filter_test_1_expr11, m_get_name_217, line(regex_file_filter_test_1, 71)).
ref(regex_file_filter_test_1_expr12, regex_file_filter_test_1_expr11, line(regex_file_filter_test_1, 71)).
method_invoc(regex_file_filter_test_1_expr12, m_get_class_218, line(regex_file_filter_test_1, 71)).
ref(p_filter_388, regex_file_filter_test_1_expr12, line(regex_file_filter_test_1, 71)).
method_invoc(regex_file_filter_test_1_expr16, m_get_parent_219, line(regex_file_filter_test_1, 73)).
ref(p_path_389, regex_file_filter_test_1_expr16, line(regex_file_filter_test_1, 73)).
method_invoc(regex_file_filter_test_1_expr17, m_assert_equals_216, line(regex_file_filter_test_1, 74)).
argument(v_expected_file_visit_result_391, 1, regex_file_filter_test_1_expr17).
argument(regex_file_filter_test_1_expr18, 2, regex_file_filter_test_1_expr17).
argument(regex_file_filter_test_1_expr19, 3, regex_file_filter_test_1_expr17).
method_invoc(regex_file_filter_test_1_expr18, m_accept_193, line(regex_file_filter_test_1, 74)).
argument(p_path_389, 1, regex_file_filter_test_1_expr18).
argument(regex_file_filter_test_1_literal10, 2, regex_file_filter_test_1_expr18).
ref(p_filter_388, regex_file_filter_test_1_expr18, line(regex_file_filter_test_1, 74)).
method_invoc(regex_file_filter_test_1_expr20, m_get_name_217, line(regex_file_filter_test_1, 75)).
ref(regex_file_filter_test_1_expr21, regex_file_filter_test_1_expr20, line(regex_file_filter_test_1, 75)).
method_invoc(regex_file_filter_test_1_expr21, m_get_class_218, line(regex_file_filter_test_1, 75)).
ref(p_filter_388, regex_file_filter_test_1_expr21, line(regex_file_filter_test_1, 75)).
method_invoc(regex_file_filter_test_1_expr22, m_assert_not_null_220, line(regex_file_filter_test_1, 82)).
argument(regex_file_filter_test_1_expr23, 1, regex_file_filter_test_1_expr22).
method_invoc(regex_file_filter_test_1_expr23, m_to_string_221, line(regex_file_filter_test_1, 82)).
ref(p_filter_388, regex_file_filter_test_1_expr23, line(regex_file_filter_test_1, 82)).
param(p_serializable_392, 1, m_assert_serializable_222).
throw(m_assert_serializable_222, ioexception).
assign(v_baos_393, regex_file_filter_test_1_expr25, line(regex_file_filter_test_1, 86)).
method_invoc(regex_file_filter_test_1_expr25, m_byte_array_output_stream_223, line(regex_file_filter_test_1, 86)).
assign(v_oos_394, regex_file_filter_test_1_expr27, line(regex_file_filter_test_1, 87)).
method_invoc(regex_file_filter_test_1_expr27, m_object_output_stream_224, line(regex_file_filter_test_1, 87)).
throw(regex_file_filter_test_1_expr27, ioexception, line(regex_file_filter_test_1, 87)).
argument(v_baos_393, 1, regex_file_filter_test_1_expr27).
method_invoc(regex_file_filter_test_1_expr28, m_write_object_225, line(regex_file_filter_test_1, 88)).
throw(regex_file_filter_test_1_expr28, ioexception, line(regex_file_filter_test_1, 88)).
argument(p_serializable_392, 1, regex_file_filter_test_1_expr28).
ref(v_oos_394, regex_file_filter_test_1_expr28, line(regex_file_filter_test_1, 88)).
method_invoc(regex_file_filter_test_1_expr29, m_flush_226, line(regex_file_filter_test_1, 90)).
throw(regex_file_filter_test_1_expr29, ioexception, line(regex_file_filter_test_1, 90)).
ref(v_baos_393, regex_file_filter_test_1_expr29, line(regex_file_filter_test_1, 90)).
method_invoc(regex_file_filter_test_1_expr30, m_assert_true_227, line(regex_file_filter_test_1, 91)).
argument(regex_file_filter_test_1_expr31, 1, regex_file_filter_test_1_expr30).
ref(regex_file_filter_test_1_expr33, regex_file_filter_test_1_expr32, line(regex_file_filter_test_1, 91)).
method_invoc(regex_file_filter_test_1_expr33, m_to_byte_array_228, line(regex_file_filter_test_1, 91)).
ref(v_baos_393, regex_file_filter_test_1_expr33, line(regex_file_filter_test_1, 91)).
return(p_serializable_392, m_assert_serializable_222, line(regex_file_filter_test_1, 93)).
throw(m_test_regex_229, ioexception).
throw(m_test_regex_file_name_only_231, ioexception).
assign(v_path_396, regex_file_filter_test_1_expr34, line(regex_file_filter_test_1, 165)).
method_invoc(regex_file_filter_test_1_expr34, m_get_232, line(regex_file_filter_test_1, 165)).
argument(regex_file_filter_test_1_literal15, 1, regex_file_filter_test_1_expr34).
argument(regex_file_filter_test_1_literal16, 2, regex_file_filter_test_1_expr34).
ref(t_paths_11, regex_file_filter_test_1_expr34, line(regex_file_filter_test_1, 165)).
assign(v_pattern_str_397, regex_file_filter_test_1_literal17, line(regex_file_filter_test_1, 166)).
method_invoc(regex_file_filter_test_1_expr35, m_assert_filtering_215, line(regex_file_filter_test_1, 167)).
argument(regex_file_filter_test_1_expr36, 1, regex_file_filter_test_1_expr35).
argument(v_path_396, 2, regex_file_filter_test_1_expr35).
argument(regex_file_filter_test_1_literal18, 3, regex_file_filter_test_1_expr35).
method_invoc(regex_file_filter_test_1_expr36, m_assert_serializable_222, line(regex_file_filter_test_1, 167)).
throw(regex_file_filter_test_1_expr36, ioexception, line(regex_file_filter_test_1, 167)).
argument(regex_file_filter_test_1_expr37, 1, regex_file_filter_test_1_expr36).
method_invoc(regex_file_filter_test_1_expr37, m_regex_file_filter_205, line(regex_file_filter_test_1, 167)).
argument(v_pattern_str_397, 1, regex_file_filter_test_1_expr37).
method_invoc(regex_file_filter_test_1_expr38, m_assert_filtering_215, line(regex_file_filter_test_1, 168)).
argument(regex_file_filter_test_1_expr39, 1, regex_file_filter_test_1_expr38).
argument(v_path_396, 2, regex_file_filter_test_1_expr38).
argument(regex_file_filter_test_1_literal19, 3, regex_file_filter_test_1_expr38).
method_invoc(regex_file_filter_test_1_expr39, m_assert_serializable_222, line(regex_file_filter_test_1, 168)).
throw(regex_file_filter_test_1_expr39, ioexception, line(regex_file_filter_test_1, 168)).
argument(regex_file_filter_test_1_expr40, 1, regex_file_filter_test_1_expr39).
method_invoc(regex_file_filter_test_1_expr40, m_regex_file_filter_202, line(regex_file_filter_test_1, 168)).
argument(regex_file_filter_test_1_expr41, 1, regex_file_filter_test_1_expr40).
argument(regex_file_filter_test_1_expr42, 2, regex_file_filter_test_1_expr40).
method_invoc(regex_file_filter_test_1_expr41, m_compile_233, line(regex_file_filter_test_1, 168)).
argument(v_pattern_str_397, 1, regex_file_filter_test_1_expr41).
ref(t_pattern_8, regex_file_filter_test_1_expr41, line(regex_file_filter_test_1, 168)).
assign(regex_file_filter_test_1_expr42, regex_file_filter_test_1_expr43, line(regex_file_filter_test_1, 168)).
method_invoc(regex_file_filter_test_1_expr44, m_assert_filtering_215, line(regex_file_filter_test_1, 170)).
argument(regex_file_filter_test_1_expr45, 1, regex_file_filter_test_1_expr44).
argument(v_path_396, 2, regex_file_filter_test_1_expr44).
argument(regex_file_filter_test_1_literal20, 3, regex_file_filter_test_1_expr44).
method_invoc(regex_file_filter_test_1_expr45, m_regex_file_filter_202, line(regex_file_filter_test_1, 170)).
argument(regex_file_filter_test_1_expr46, 1, regex_file_filter_test_1_expr45).
argument(regex_file_filter_test_1_expr47, 2, regex_file_filter_test_1_expr45).
method_invoc(regex_file_filter_test_1_expr46, m_compile_233, line(regex_file_filter_test_1, 170)).
argument(v_pattern_str_397, 1, regex_file_filter_test_1_expr46).
ref(t_pattern_8, regex_file_filter_test_1_expr46, line(regex_file_filter_test_1, 170)).
assign(regex_file_filter_test_1_expr47, regex_file_filter_test_1_literal21, line(regex_file_filter_test_1, 170)).

%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
param(p_buffer_398, 1, m_construct_234).
param(p_offset_399, 2, m_construct_234).
param(p_length_400, 3, m_construct_234).
assign(f_buffers_401, abstract_byte_array_output_stream_1_expr1, line(abstract_byte_array_output_stream_1, 85)).
method_invoc(abstract_byte_array_output_stream_1_expr1, m_array_list_235, line(abstract_byte_array_output_stream_1, 85)).
assign(f_reuse_buffers_402, abstract_byte_array_output_stream_1_literal1, line(abstract_byte_array_output_stream_1, 100)).
throw(m_close_236, ioexception).
param(p_new_count_403, 1, m_need_new_buffer_237).
method_invoc(abstract_byte_array_output_stream_1_expr4, m_size_238, line(abstract_byte_array_output_stream_1, 122)).
ref(f_buffers_401, abstract_byte_array_output_stream_1_expr4, line(abstract_byte_array_output_stream_1, 122)).
assign(v_new_buffer_size_406, p_new_count_403, line(abstract_byte_array_output_stream_1, 132)).
assign(f_filled_buffer_sum_407, abstract_byte_array_output_stream_1_literal4, line(abstract_byte_array_output_stream_1, 133)).
assign(f_current_buffer_405, abstract_byte_array_output_stream_1_expr10, line(abstract_byte_array_output_stream_1, 140)).
method_invoc(abstract_byte_array_output_stream_1_expr10, m_byte_array_14, line(abstract_byte_array_output_stream_1, 140)).
argument(v_new_buffer_size_406, 1, abstract_byte_array_output_stream_1_expr10).
ref(t_ioutils_5, abstract_byte_array_output_stream_1_expr10, line(abstract_byte_array_output_stream_1, 140)).
method_invoc(abstract_byte_array_output_stream_1_expr11, m_add_239, line(abstract_byte_array_output_stream_1, 141)).
argument(f_current_buffer_405, 1, abstract_byte_array_output_stream_1_expr11).
ref(f_buffers_401, abstract_byte_array_output_stream_1_expr11, line(abstract_byte_array_output_stream_1, 141)).
assign(v_remaining_408, f_count_409, line(abstract_byte_array_output_stream_1, 193)).
assign(v_new_buf_410, abstract_byte_array_output_stream_1_expr13, line(abstract_byte_array_output_stream_1, 197)).
method_invoc(abstract_byte_array_output_stream_1_expr13, m_byte_array_14, line(abstract_byte_array_output_stream_1, 197)).
argument(v_remaining_408, 1, abstract_byte_array_output_stream_1_expr13).
ref(t_ioutils_5, abstract_byte_array_output_stream_1_expr13, line(abstract_byte_array_output_stream_1, 197)).
assign(v_pos_411, abstract_byte_array_output_stream_1_literal6, line(abstract_byte_array_output_stream_1, 198)).
ref(f_buffers_401, abstract_byte_array_output_stream_1_stmt12, line(abstract_byte_array_output_stream_1, 199)).
assign(v_c_413, abstract_byte_array_output_stream_1_expr14, line(abstract_byte_array_output_stream_1, 200)).
method_invoc(abstract_byte_array_output_stream_1_expr14, m_min_245, line(abstract_byte_array_output_stream_1, 200)).
argument(q_length_6, 1, abstract_byte_array_output_stream_1_expr14).
argument(v_remaining_408, 2, abstract_byte_array_output_stream_1_expr14).
ref(t_math_14, abstract_byte_array_output_stream_1_expr14, line(abstract_byte_array_output_stream_1, 200)).
ref(v_buf_412, q_length_6, line(abstract_byte_array_output_stream_1, 200)).
method_invoc(abstract_byte_array_output_stream_1_expr15, m_arraycopy_246, line(abstract_byte_array_output_stream_1, 201)).
argument(v_buf_412, 1, abstract_byte_array_output_stream_1_expr15).
argument(abstract_byte_array_output_stream_1_literal7, 2, abstract_byte_array_output_stream_1_expr15).
argument(v_new_buf_410, 3, abstract_byte_array_output_stream_1_expr15).
argument(v_pos_411, 4, abstract_byte_array_output_stream_1_expr15).
argument(v_c_413, 5, abstract_byte_array_output_stream_1_expr15).
ref(t_system_2, abstract_byte_array_output_stream_1_expr15, line(abstract_byte_array_output_stream_1, 201)).
assign(v_pos_411, v_c_413, line(abstract_byte_array_output_stream_1, 202)).
assign(v_remaining_408, v_c_413, line(abstract_byte_array_output_stream_1, 203)).
return(v_new_buf_410, m_to_byte_array_impl_244, line(abstract_byte_array_output_stream_1, 208)).
param(p_is_constructor_414, 1, m_to_input_stream_248).
param(p_charset_415, 1, m_to_string_250).
param(p_enc_416, 1, m_to_string_251).
throw(m_to_string_251, unsupported_encoding_exception).
param(p_b_417, 1, m_write_252).
param(p_off_418, 2, m_write_252).
param(p_len_419, 3, m_write_252).
param(p_in_420, 1, m_write_253).
throw(m_write_253, ioexception).
param(p_b_421, 1, m_write_254).
param(p_b_422, 1, m_write_impl_255).
param(p_off_423, 2, m_write_impl_255).
param(p_len_424, 3, m_write_impl_255).
assign(v_new_count_425, abstract_byte_array_output_stream_1_expr19, line(abstract_byte_array_output_stream_1, 323)).
assign(v_remaining_426, p_len_424, line(abstract_byte_array_output_stream_1, 324)).
assign(v_in_buffer_pos_427, abstract_byte_array_output_stream_1_expr20, line(abstract_byte_array_output_stream_1, 325)).
assign(v_part_428, abstract_byte_array_output_stream_1_expr22, line(abstract_byte_array_output_stream_1, 327)).
method_invoc(abstract_byte_array_output_stream_1_expr22, m_min_245, line(abstract_byte_array_output_stream_1, 327)).
argument(v_remaining_426, 1, abstract_byte_array_output_stream_1_expr22).
argument(abstract_byte_array_output_stream_1_expr23, 2, abstract_byte_array_output_stream_1_expr22).
ref(t_math_14, abstract_byte_array_output_stream_1_expr22, line(abstract_byte_array_output_stream_1, 327)).
ref(f_current_buffer_405, q_length_7, line(abstract_byte_array_output_stream_1, 327)).
method_invoc(abstract_byte_array_output_stream_1_expr24, m_arraycopy_246, line(abstract_byte_array_output_stream_1, 328)).
argument(p_b_422, 1, abstract_byte_array_output_stream_1_expr24).
argument(abstract_byte_array_output_stream_1_expr25, 2, abstract_byte_array_output_stream_1_expr24).
argument(f_current_buffer_405, 3, abstract_byte_array_output_stream_1_expr24).
argument(v_in_buffer_pos_427, 4, abstract_byte_array_output_stream_1_expr24).
argument(v_part_428, 5, abstract_byte_array_output_stream_1_expr24).
ref(t_system_2, abstract_byte_array_output_stream_1_expr24, line(abstract_byte_array_output_stream_1, 328)).
assign(v_remaining_426, v_part_428, line(abstract_byte_array_output_stream_1, 329)).
assign(f_count_409, v_new_count_425, line(abstract_byte_array_output_stream_1, 335)).
param(p_in_429, 1, m_write_impl_256).
throw(m_write_impl_256, ioexception).
param(p_b_430, 1, m_write_impl_257).
param(p_out_431, 1, m_write_to_258).
throw(m_write_to_258, ioexception).
param(p_out_432, 1, m_write_to_impl_259).
throw(m_write_to_impl_259, ioexception).

%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
param(p_accept_333, 1, m_to_default_file_visit_result_176).
return(abstract_file_filter_1_expr1, m_to_default_file_visit_result_176, line(abstract_file_filter_1, 45)).
cond_expr(p_accept_333, q_continue_4, q_terminate_5, line(abstract_file_filter_1, 45)).
ref(t_file_visit_result_7, q_continue_4, line(abstract_file_filter_1, 45)).
ref(t_file_visit_result_7, q_terminate_5, line(abstract_file_filter_1, 45)).
method_invoc(abstract_file_filter_1_expr2, m_abstract_file_filter_178, line(abstract_file_filter_1, 62)).
argument(q_continue_6, 1, abstract_file_filter_1_expr2).
argument(q_terminate_6, 2, abstract_file_filter_1_expr2).
ref(t_file_visit_result_7, q_continue_6, line(abstract_file_filter_1, 62)).
ref(t_file_visit_result_7, q_terminate_6, line(abstract_file_filter_1, 62)).
param(p_on_accept_336, 1, m_abstract_file_filter_178).
param(p_on_reject_337, 2, m_abstract_file_filter_178).
assign(f_on_accept_338, p_on_accept_336, line(abstract_file_filter_1, 73)).
assign(f_on_reject_339, p_on_reject_337, line(abstract_file_filter_1, 74)).
param(p_file_340, 1, m_accept_179).
param(p_dir_341, 1, m_accept_180).
param(p_name_342, 2, m_accept_180).
param(p_list_343, 1, m_append_181).
param(p_buffer_344, 2, m_append_181).
param(p_array_345, 1, m_append_182).
param(p_buffer_346, 2, m_append_182).
param(p_supplier_347, 1, m_get_183).
param(p_t_348, 1, m_handle_184).
param(p_dir_349, 1, m_post_visit_directory_185).
param(p_exc_350, 2, m_post_visit_directory_185).
throw(m_post_visit_directory_185, ioexception).
param(p_dir_351, 1, m_pre_visit_directory_186).
param(p_attributes_352, 2, m_pre_visit_directory_186).
throw(m_pre_visit_directory_186, ioexception).
param(p_accept_353, 1, m_to_file_visit_result_187).
return(abstract_file_filter_1_expr9, m_to_file_visit_result_187, line(abstract_file_filter_1, 156)).
cond_expr(p_accept_353, f_on_accept_338, f_on_reject_339, line(abstract_file_filter_1, 156)).
param(p_file_354, 1, m_visit_file_189).
param(p_attributes_355, 2, m_visit_file_189).
throw(m_visit_file_189, ioexception).
param(p_file_356, 1, m_visit_file_failed_190).
param(p_exc_357, 2, m_visit_file_failed_190).
throw(m_visit_file_failed_190, ioexception).

%regex_file_filter_1 - org.apache.commons.io.filefilter.RegexFileFilter
param(p_pattern_367, 1, m_compile_198).
param(p_flags_368, 2, m_compile_198).
method_invoc(regex_file_filter_1_expr1, m_require_non_null_174, line(regex_file_filter_1, 86)).
argument(p_pattern_367, 1, regex_file_filter_1_expr1).
argument(regex_file_filter_1_literal1, 2, regex_file_filter_1_expr1).
ref(t_objects_6, regex_file_filter_1_expr1, line(regex_file_filter_1, 86)).
return(regex_file_filter_1_expr2, m_compile_198, line(regex_file_filter_1, 87)).
method_invoc(regex_file_filter_1_expr2, m_compile_199, line(regex_file_filter_1, 87)).
argument(p_pattern_367, 1, regex_file_filter_1_expr2).
argument(p_flags_368, 2, regex_file_filter_1_expr2).
ref(t_pattern_8, regex_file_filter_1_expr2, line(regex_file_filter_1, 87)).
param(p_io_case_369, 1, m_to_flags_200).
param(p_pattern_370, 1, m_regex_file_filter_201).
method_invoc(regex_file_filter_1_expr3, m_regex_file_filter_202, line(regex_file_filter_1, 114)).
argument(p_pattern_370, 1, regex_file_filter_1_expr3).
argument(regex_file_filter_1_expr4, 2, regex_file_filter_1_expr3).
assign(regex_file_filter_1_expr4, regex_file_filter_1_expr5, line(regex_file_filter_1, 114)).
method_invoc(regex_file_filter_1_expr6, m_to_string_203, line(regex_file_filter_1, 114)).
ref(regex_file_filter_1_expr7, regex_file_filter_1_expr6, line(regex_file_filter_1, 114)).
method_invoc(regex_file_filter_1_expr7, m_get_file_name_204, line(regex_file_filter_1, 114)).
ref(p_p_371, regex_file_filter_1_expr7, line(regex_file_filter_1, 114)).
param(p_pattern_372, 1, m_regex_file_filter_202).
param(p_path_to_string_373, 2, m_regex_file_filter_202).
method_invoc(regex_file_filter_1_expr8, m_require_non_null_174, line(regex_file_filter_1, 126)).
argument(p_pattern_372, 1, regex_file_filter_1_expr8).
argument(regex_file_filter_1_literal2, 2, regex_file_filter_1_expr8).
ref(t_objects_6, regex_file_filter_1_expr8, line(regex_file_filter_1, 126)).
assign(f_pattern_374, p_pattern_372, line(regex_file_filter_1, 127)).
assign(f_path_to_string_375, p_path_to_string_373, line(regex_file_filter_1, 128)).
param(p_pattern_376, 1, m_regex_file_filter_205).
method_invoc(regex_file_filter_1_expr15, m_regex_file_filter_206, line(regex_file_filter_1, 138)).
argument(p_pattern_376, 1, regex_file_filter_1_expr15).
argument(regex_file_filter_1_literal3, 2, regex_file_filter_1_expr15).
param(p_pattern_377, 1, m_regex_file_filter_206).
param(p_flags_378, 2, m_regex_file_filter_206).
method_invoc(regex_file_filter_1_expr16, m_regex_file_filter_201, line(regex_file_filter_1, 149)).
argument(regex_file_filter_1_expr17, 1, regex_file_filter_1_expr16).
method_invoc(regex_file_filter_1_expr17, m_compile_198, line(regex_file_filter_1, 149)).
argument(p_pattern_377, 1, regex_file_filter_1_expr17).
argument(p_flags_378, 2, regex_file_filter_1_expr17).
param(p_pattern_379, 1, m_regex_file_filter_207).
param(p_io_case_380, 2, m_regex_file_filter_207).
param(p_dir_381, 1, m_accept_208).
param(p_name_382, 2, m_accept_208).
param(p_path_383, 1, m_accept_209).
param(p_attributes_384, 2, m_accept_209).
return(regex_file_filter_1_expr18, m_accept_209, line(regex_file_filter_1, 184)).
method_invoc(regex_file_filter_1_expr18, m_to_file_visit_result_187, line(regex_file_filter_1, 184)).
argument(regex_file_filter_1_expr19, 1, regex_file_filter_1_expr18).
method_invoc(regex_file_filter_1_expr19, m_matches_210, line(regex_file_filter_1, 184)).
ref(regex_file_filter_1_expr20, regex_file_filter_1_expr19, line(regex_file_filter_1, 184)).
method_invoc(regex_file_filter_1_expr20, m_matcher_211, line(regex_file_filter_1, 184)).
argument(regex_file_filter_1_expr21, 1, regex_file_filter_1_expr20).
ref(f_pattern_374, regex_file_filter_1_expr20, line(regex_file_filter_1, 184)).
method_invoc(regex_file_filter_1_expr21, m_apply_212, line(regex_file_filter_1, 184)).
argument(p_path_383, 1, regex_file_filter_1_expr21).
ref(f_path_to_string_375, regex_file_filter_1_expr21, line(regex_file_filter_1, 184)).
return(regex_file_filter_1_expr22, m_to_string_213, line(regex_file_filter_1, 194)).

%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
param(p_input_433, 1, m_to_buffered_input_stream_260).
throw(m_to_buffered_input_stream_260, ioexception).
param(p_input_434, 1, m_to_buffered_input_stream_261).
param(p_size_435, 2, m_to_buffered_input_stream_261).
throw(m_to_buffered_input_stream_261, ioexception).
method_invoc(byte_array_output_stream_1_expr1, m_byte_array_output_stream_262, line(byte_array_output_stream_1, 93)).
argument(f_default_size_436, 1, byte_array_output_stream_1_expr1).
param(p_size_437, 1, m_byte_array_output_stream_262).
method_invoc(byte_array_output_stream_1_expr4, m_need_new_buffer_237, line(byte_array_output_stream_1, 108)).
argument(p_size_437, 1, byte_array_output_stream_1_expr4).
return(byte_array_output_stream_1_expr5, m_to_byte_array_228, line(byte_array_output_stream_1, 127)).
method_invoc(byte_array_output_stream_1_expr5, m_to_byte_array_impl_244, line(byte_array_output_stream_1, 127)).
param(p_b_438, 1, m_write_266).
param(p_off_439, 2, m_write_266).
param(p_len_440, 3, m_write_266).
method_invoc(byte_array_output_stream_1_expr13, m_write_impl_255, line(byte_array_output_stream_1, 148)).
argument(p_b_438, 1, byte_array_output_stream_1_expr13).
argument(p_off_439, 2, byte_array_output_stream_1_expr13).
argument(p_len_440, 3, byte_array_output_stream_1_expr13).
param(p_in_441, 1, m_write_267).
throw(m_write_267, ioexception).
param(p_b_442, 1, m_write_268).
param(p_out_443, 1, m_write_to_269).
throw(m_write_to_269, ioexception).

%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
assign(f_empty_string_array_358, iofile_filter_1_expr1, line(iofile_filter_1, 39)).
param(p_file_359, 1, m_accept_191).
param(p_dir_360, 1, m_accept_192).
param(p_name_361, 2, m_accept_192).
param(p_path_362, 1, m_accept_193).
param(p_attributes_363, 2, m_accept_193).
param(p_file_filter_364, 1, m_and_194).
param(p_path_365, 1, m_matches_195).
return(iofile_filter_1_expr2, m_matches_195, line(iofile_filter_1, 98)).
method_invoc(iofile_filter_1_expr3, m_accept_193, line(iofile_filter_1, 98)).
argument(p_path_365, 1, iofile_filter_1_expr3).
argument(iofile_filter_1_literal1, 2, iofile_filter_1_expr3).
ref(t_file_visit_result_7, q_terminate_6, line(iofile_filter_1, 98)).
param(p_file_filter_366, 1, m_or_197).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.filefilter.RegexFileFilterTest', 'testRegexFileNameOnly').
trace(trace_1, failure_1, m_accept_209, line(regex_file_filter_1, 184), failure_1, target).
trace(trace_2, trace_1, m_assert_filtering_215, line(regex_file_filter_test_1, 68), failure_1, target).
trace(trace_3, trace_2, m_test_regex_file_name_only_231, line(regex_file_filter_test_1, 170), failure_1, target).
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

val(f_path_to_string_375, null, line(regex_file_filter_1, 184)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(standard_line_separator_1, 'org.apache.commons.io.StandardLineSeparator').
class(ioutils_1, 'org.apache.commons.io.IOUtils').
class(regex_file_filter_test_1, 'org.apache.commons.io.filefilter.RegexFileFilterTest').
class(abstract_byte_array_output_stream_1, 'org.apache.commons.io.output.AbstractByteArrayOutputStream').
class(abstract_file_filter_1, 'org.apache.commons.io.filefilter.AbstractFileFilter').
class(regex_file_filter_1, 'org.apache.commons.io.filefilter.RegexFileFilter').
class(byte_array_output_stream_1, 'org.apache.commons.io.output.ByteArrayOutputStream').
class(iofile_filter_1, 'org.apache.commons.io.filefilter.IOFileFilter').

%%% Methods
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
method(m_standard_line_separator_173, range(standard_line_separator_1, 1428, 284, 47, 54)).
method(m_get_bytes_175, range(standard_line_separator_1, 1718, 317, 56, 64)).
method(m_get_string_2, range(standard_line_separator_1, 2041, 183, 66, 73)).
%ioutils_1 - org.apache.commons.io.IOUtils
method(m_buffer_6, range(ioutils_1, 7574, 909, 219, 235)).
method(m_buffer_7, range(ioutils_1, 8489, 1008, 237, 254)).
method(m_buffer_8, range(ioutils_1, 9503, 929, 256, 272)).
method(m_buffer_9, range(ioutils_1, 10438, 1029, 274, 291)).
method(m_buffer_10, range(ioutils_1, 11473, 562, 293, 304)).
method(m_buffer_11, range(ioutils_1, 12041, 656, 306, 318)).
method(m_buffer_12, range(ioutils_1, 12703, 562, 320, 331)).
method(m_buffer_13, range(ioutils_1, 13271, 656, 333, 345)).
method(m_byte_array_4, range(ioutils_1, 13933, 270, 347, 355)).
method(m_byte_array_14, range(ioutils_1, 14209, 405, 357, 369)).
method(m_char_array_5, range(ioutils_1, 14620, 271, 371, 379)).
method(m_char_array_15, range(ioutils_1, 14897, 339, 381, 392)).
method(m_clear_16, range(ioutils_1, 15242, 437, 394, 407)).
method(m_close_17, range(ioutils_1, 15685, 372, 409, 420)).
method(m_close_18, range(ioutils_1, 16063, 371, 422, 431)).
method(m_close_19, range(ioutils_1, 16440, 674, 433, 451)).
method(m_close_20, range(ioutils_1, 17120, 286, 453, 463)).
method(m_close_q_21, range(ioutils_1, 17412, 217, 465, 472)).
method(m_close_quietly_22, range(ioutils_1, 17635, 1225, 474, 517)).
method(m_close_quietly_23, range(ioutils_1, 18866, 1863, 519, 569)).
method(m_close_quietly_24, range(ioutils_1, 20735, 668, 571, 588)).
method(m_close_quietly_25, range(ioutils_1, 21409, 970, 590, 621)).
method(m_close_quietly_26, range(ioutils_1, 22385, 529, 623, 637)).
method(m_close_quietly_27, range(ioutils_1, 22920, 983, 639, 671)).
method(m_close_quietly_28, range(ioutils_1, 23909, 943, 673, 704)).
method(m_close_quietly_29, range(ioutils_1, 24858, 903, 706, 737)).
method(m_close_quietly_30, range(ioutils_1, 25767, 954, 739, 770)).
method(m_close_quietly_31, range(ioutils_1, 26727, 925, 772, 803)).
method(m_close_quietly_32, range(ioutils_1, 27658, 524, 805, 819)).
method(m_close_quietly_33, range(ioutils_1, 28188, 912, 821, 851)).
method(m_consume_34, range(ioutils_1, 29106, 594, 853, 867)).
method(m_consume_35, range(ioutils_1, 29706, 574, 869, 883)).
method(m_content_equals_36, range(ioutils_1, 30286, 2154, 885, 944)).
method(m_content_equals_37, range(ioutils_1, 32481, 386, 947, 957)).
method(m_content_equals_38, range(ioutils_1, 32873, 2057, 959, 1015)).
method(m_content_equals_39, range(ioutils_1, 34971, 319, 1018, 1026)).
method(m_content_equals_ignore_eol_40, range(ioutils_1, 35331, 332, 1029, 1037)).
method(m_content_equals_ignore_eol_41, range(ioutils_1, 35669, 1006, 1039, 1063)).
method(m_copy_42, range(ioutils_1, 36681, 1185, 1065, 1087)).
method(m_copy_43, range(ioutils_1, 37872, 973, 1089, 1108)).
method(m_copy_44, range(ioutils_1, 38851, 878, 1110, 1132)).
method(m_copy_45, range(ioutils_1, 39735, 973, 1134, 1156)).
method(m_copy_46, range(ioutils_1, 40714, 1412, 1158, 1186)).
method(m_copy_47, range(ioutils_1, 42132, 1329, 1188, 1217)).
method(m_copy_48, range(ioutils_1, 43467, 1010, 1219, 1241)).
method(m_copy_49, range(ioutils_1, 44483, 905, 1243, 1267)).
method(m_copy_50, range(ioutils_1, 45394, 1023, 1269, 1296)).
method(m_copy_51, range(ioutils_1, 46423, 1254, 1298, 1328)).
method(m_copy_52, range(ioutils_1, 47683, 1560, 1330, 1363)).
method(m_copy_53, range(ioutils_1, 49249, 1074, 1365, 1391)).
method(m_copy_54, range(ioutils_1, 50329, 905, 1393, 1414)).
method(m_copy_55, range(ioutils_1, 51240, 919, 1416, 1437)).
method(m_copy_large_56, range(ioutils_1, 52165, 925, 1439, 1461)).
method(m_copy_large_57, range(ioutils_1, 53096, 1223, 1463, 1492)).
method(m_copy_large_58, range(ioutils_1, 54325, 1397, 1494, 1521)).
method(m_copy_large_59, range(ioutils_1, 55728, 2143, 1523, 1571)).
method(m_copy_large_60, range(ioutils_1, 57877, 778, 1573, 1592)).
method(m_copy_large_61, range(ioutils_1, 58661, 884, 1594, 1617)).
method(m_copy_large_62, range(ioutils_1, 59551, 1081, 1619, 1643)).
method(m_copy_large_63, range(ioutils_1, 60638, 1797, 1645, 1688)).
method(m_fill_0_64, range(ioutils_1, 62441, 239, 1690, 1699)).
method(m_fill_0_65, range(ioutils_1, 62686, 239, 1701, 1710)).
method(m_get_scratch_byte_array_66, range(ioutils_1, 62931, 287, 1712, 1719)).
method(m_get_scratch_byte_array_write_only_67, range(ioutils_1, 63224, 268, 1721, 1728)).
method(m_get_scratch_char_array_68, range(ioutils_1, 63498, 279, 1730, 1737)).
method(m_get_scratch_char_array_write_only_69, range(ioutils_1, 63783, 268, 1739, 1746)).
method(m_length_70, range(ioutils_1, 64057, 315, 1748, 1757)).
method(m_length_71, range(ioutils_1, 64378, 315, 1759, 1768)).
method(m_length_72, range(ioutils_1, 64699, 342, 1770, 1779)).
method(m_length_73, range(ioutils_1, 65047, 317, 1781, 1790)).
method(m_line_iterator_74, range(ioutils_1, 65370, 1359, 1792, 1825)).
method(m_line_iterator_75, range(ioutils_1, 66735, 1679, 1827, 1863)).
method(m_line_iterator_76, range(ioutils_1, 68420, 1107, 1865, 1896)).
method(m_read_77, range(ioutils_1, 69533, 625, 1898, 1912)).
method(m_read_78, range(ioutils_1, 70164, 907, 1914, 1935)).
method(m_read_79, range(ioutils_1, 71077, 1268, 1937, 1965)).
method(m_read_80, range(ioutils_1, 72351, 904, 1967, 1990)).
method(m_read_81, range(ioutils_1, 73261, 638, 1992, 2006)).
method(m_read_82, range(ioutils_1, 73905, 1284, 2008, 2038)).
method(m_read_fully_83, range(ioutils_1, 75195, 779, 2040, 2057)).
method(m_read_fully_84, range(ioutils_1, 75980, 1070, 2059, 2082)).
method(m_read_fully_85, range(ioutils_1, 77056, 904, 2084, 2103)).
method(m_read_fully_86, range(ioutils_1, 77966, 891, 2105, 2124)).
method(m_read_fully_87, range(ioutils_1, 78863, 780, 2126, 2142)).
method(m_read_fully_88, range(ioutils_1, 79649, 1071, 2144, 2166)).
method(m_read_lines_89, range(ioutils_1, 80726, 805, 2168, 2186)).
method(m_read_lines_90, range(ioutils_1, 81537, 818, 2188, 2205)).
method(m_read_lines_91, range(ioutils_1, 82361, 1307, 2207, 2231)).
method(m_read_lines_92, range(ioutils_1, 83674, 756, 2233, 2250)).
method(m_resource_to_byte_array_93, range(ioutils_1, 84436, 571, 2252, 2266)).
method(m_resource_to_byte_array_94, range(ioutils_1, 85013, 665, 2268, 2283)).
method(m_resource_to_string_95, range(ioutils_1, 85684, 716, 2285, 2300)).
method(m_resource_to_string_96, range(ioutils_1, 86406, 763, 2302, 2318)).
method(m_resource_to_url_97, range(ioutils_1, 87175, 475, 2320, 2333)).
method(m_resource_to_url_98, range(ioutils_1, 87656, 972, 2335, 2356)).
method(m_skip_99, range(ioutils_1, 88634, 1261, 2358, 2381)).
method(m_skip_100, range(ioutils_1, 89901, 2589, 2383, 2429)).
method(m_skip_101, range(ioutils_1, 92496, 1206, 2431, 2459)).
method(m_skip_102, range(ioutils_1, 93708, 1815, 2461, 2497)).
method(m_skip_fully_103, range(ioutils_1, 95529, 1264, 2499, 2524)).
method(m_skip_fully_104, range(ioutils_1, 96799, 1782, 2526, 2557)).
method(m_skip_fully_105, range(ioutils_1, 98587, 881, 2559, 2577)).
method(m_skip_fully_106, range(ioutils_1, 99474, 1228, 2579, 2604)).
method(m_to_buffered_input_stream_107, range(ioutils_1, 100708, 1014, 2606, 2632)).
method(m_to_buffered_input_stream_108, range(ioutils_1, 101728, 1079, 2634, 2661)).
method(m_to_buffered_reader_109, range(ioutils_1, 102813, 592, 2663, 2675)).
method(m_to_buffered_reader_110, range(ioutils_1, 103411, 686, 2677, 2690)).
method(m_to_byte_array_111, range(ioutils_1, 104103, 1197, 2692, 2713)).
method(m_to_byte_array_112, range(ioutils_1, 105306, 884, 2715, 2731)).
method(m_to_byte_array_113, range(ioutils_1, 106196, 1337, 2733, 2754)).
method(m_to_byte_array_114, range(ioutils_1, 107539, 1170, 2756, 2788)).
method(m_to_byte_array_115, range(ioutils_1, 108715, 716, 2790, 2807)).
method(m_to_byte_array_116, range(ioutils_1, 109437, 831, 2809, 2829)).
method(m_to_byte_array_117, range(ioutils_1, 110274, 1239, 2831, 2855)).
method(m_to_byte_array_118, range(ioutils_1, 111519, 623, 2857, 2873)).
method(m_to_byte_array_119, range(ioutils_1, 112148, 419, 2875, 2886)).
method(m_to_byte_array_120, range(ioutils_1, 112573, 525, 2888, 2901)).
method(m_to_byte_array_121, range(ioutils_1, 113104, 555, 2903, 2916)).
method(m_to_char_array_122, range(ioutils_1, 113665, 781, 2918, 2936)).
method(m_to_char_array_123, range(ioutils_1, 114452, 854, 2938, 2958)).
method(m_to_char_array_124, range(ioutils_1, 115312, 1281, 2960, 2984)).
method(m_to_char_array_125, range(ioutils_1, 116599, 646, 2986, 3003)).
method(m_to_input_stream_126, range(ioutils_1, 117251, 494, 3005, 3017)).
method(m_to_input_stream_127, range(ioutils_1, 117751, 470, 3019, 3030)).
method(m_to_input_stream_128, range(ioutils_1, 118227, 943, 3032, 3050)).
method(m_to_input_stream_129, range(ioutils_1, 119176, 470, 3052, 3064)).
method(m_to_input_stream_130, range(ioutils_1, 119652, 481, 3066, 3077)).
method(m_to_input_stream_131, range(ioutils_1, 120139, 945, 3079, 3097)).
method(m_to_string_132, range(ioutils_1, 121090, 531, 3099, 3112)).
method(m_to_string_133, range(ioutils_1, 121627, 647, 3114, 3129)).
method(m_to_string_134, range(ioutils_1, 122280, 718, 3131, 3148)).
method(m_to_string_135, range(ioutils_1, 123004, 815, 3150, 3170)).
method(m_to_string_136, range(ioutils_1, 123825, 1233, 3172, 3196)).
method(m_to_string_137, range(ioutils_1, 125064, 819, 3198, 3217)).
method(m_to_string_138, range(ioutils_1, 125889, 1075, 3219, 3242)).
method(m_to_string_139, range(ioutils_1, 126970, 631, 3244, 3261)).
method(m_to_string_140, range(ioutils_1, 127607, 435, 3263, 3275)).
method(m_to_string_141, range(ioutils_1, 128048, 452, 3277, 3288)).
method(m_to_string_142, range(ioutils_1, 128506, 777, 3290, 3304)).
method(m_to_string_143, range(ioutils_1, 129289, 435, 3306, 3318)).
method(m_to_string_144, range(ioutils_1, 129730, 435, 3320, 3331)).
method(m_to_string_145, range(ioutils_1, 130171, 777, 3333, 3347)).
method(m_write_146, range(ioutils_1, 130954, 554, 3349, 3364)).
method(m_write_147, range(ioutils_1, 131514, 746, 3366, 3384)).
method(m_write_148, range(ioutils_1, 132266, 798, 3386, 3405)).
method(m_write_149, range(ioutils_1, 133070, 1257, 3407, 3431)).
method(m_write_150, range(ioutils_1, 134333, 767, 3433, 3453)).
method(m_write_151, range(ioutils_1, 135106, 833, 3455, 3475)).
method(m_write_152, range(ioutils_1, 135945, 1210, 3477, 3502)).
method(m_write_153, range(ioutils_1, 137161, 522, 3504, 3518)).
method(m_write_154, range(ioutils_1, 137689, 778, 3520, 3539)).
method(m_write_155, range(ioutils_1, 138473, 789, 3541, 3560)).
method(m_write_156, range(ioutils_1, 139268, 1121, 3562, 3585)).
method(m_write_157, range(ioutils_1, 140396, 521, 3588, 3601)).
method(m_write_158, range(ioutils_1, 140923, 754, 3603, 3622)).
method(m_write_159, range(ioutils_1, 141683, 1085, 3624, 3646)).
method(m_write_160, range(ioutils_1, 142774, 1103, 3648, 3671)).
method(m_write_161, range(ioutils_1, 143883, 491, 3673, 3686)).
method(m_write_162, range(ioutils_1, 144380, 756, 3688, 3707)).
method(m_write_163, range(ioutils_1, 145142, 1271, 3709, 3736)).
method(m_write_164, range(ioutils_1, 146419, 618, 3738, 3754)).
method(m_write_chunked_165, range(ioutils_1, 147043, 1009, 3756, 3780)).
method(m_write_chunked_166, range(ioutils_1, 148058, 978, 3782, 3805)).
method(m_write_lines_167, range(ioutils_1, 149042, 954, 3807, 3824)).
method(m_write_lines_168, range(ioutils_1, 150002, 1553, 3826, 3863)).
method(m_write_lines_169, range(ioutils_1, 151561, 1434, 3865, 3888)).
method(m_write_lines_170, range(ioutils_1, 153001, 1018, 3890, 3915)).
method(m_writer_171, range(ioutils_1, 154025, 804, 3917, 3935)).
method(m_ioutils_172, range(ioutils_1, 154835, 177, 3937, 3943)).
%regex_file_filter_test_1 - org.apache.commons.io.filefilter.RegexFileFilterTest
method(m_assert_filtering_214, range(regex_file_filter_test_1, 1579, 1277, 43, 62)).
method(m_assert_filtering_215, range(regex_file_filter_test_1, 2862, 1326, 64, 83)).
method(m_assert_serializable_222, range(regex_file_filter_test_1, 4194, 433, 85, 94)).
method(m_test_regex_229, range(regex_file_filter_test_1, 4633, 2694, 96, 147)).
method(m_test_regex_edge_cases_230, range(regex_file_filter_test_1, 7333, 543, 149, 155)).
method(m_test_regex_file_name_only_231, range(regex_file_filter_test_1, 7882, 861, 157, 172)).
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
method(m_construct_234, range(abstract_byte_array_output_stream_1, 2747, 345, 70, 79)).
method(m_close_236, range(abstract_byte_array_output_stream_1, 3697, 393, 102, 113)).
method(m_need_new_buffer_237, range(abstract_byte_array_output_stream_1, 4096, 1034, 115, 143)).
method(m_reset_240, range(abstract_byte_array_output_stream_1, 5136, 95, 145, 148)).
method(m_reset_impl_241, range(abstract_byte_array_output_stream_1, 5237, 514, 150, 167)).
method(m_size_242, range(abstract_byte_array_output_stream_1, 5757, 151, 169, 174)).
method(m_to_byte_array_243, range(abstract_byte_array_output_stream_1, 5914, 310, 176, 183)).
method(m_to_byte_array_impl_244, range(abstract_byte_array_output_stream_1, 6230, 822, 185, 209)).
method(m_to_input_stream_247, range(abstract_byte_array_output_stream_1, 7058, 442, 211, 221)).
method(m_to_input_stream_248, range(abstract_byte_array_output_stream_1, 7506, 1411, 223, 255)).
method(m_to_string_249, range(abstract_byte_array_output_stream_1, 8923, 482, 257, 269)).
method(m_to_string_250, range(abstract_byte_array_output_stream_1, 9411, 408, 271, 282)).
method(m_to_string_251, range(abstract_byte_array_output_stream_1, 9825, 502, 284, 295)).
method(m_write_252, range(abstract_byte_array_output_stream_1, 10333, 87, 297, 298)).
method(m_write_253, range(abstract_byte_array_output_stream_1, 10426, 530, 300, 311)).
method(m_write_254, range(abstract_byte_array_output_stream_1, 10962, 54, 313, 314)).
method(m_write_impl_255, range(abstract_byte_array_output_stream_1, 11022, 772, 316, 336)).
method(m_write_impl_256, range(abstract_byte_array_output_stream_1, 11800, 1091, 338, 364)).
method(m_write_impl_257, range(abstract_byte_array_output_stream_1, 12897, 373, 366, 378)).
method(m_write_to_258, range(abstract_byte_array_output_stream_1, 13276, 384, 380, 388)).
method(m_write_to_impl_259, range(abstract_byte_array_output_stream_1, 13666, 665, 390, 408)).
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
method(m_to_default_file_visit_result_176, range(abstract_file_filter_1, 1684, 155, 44, 46)).
method(m_abstract_file_filter_177, range(abstract_file_filter_1, 2055, 152, 58, 63)).
method(m_abstract_file_filter_178, range(abstract_file_filter_1, 2213, 344, 65, 75)).
method(m_accept_179, range(abstract_file_filter_1, 2563, 345, 77, 87)).
method(m_accept_180, range(abstract_file_filter_1, 2914, 418, 89, 100)).
method(m_append_181, range(abstract_file_filter_1, 3338, 240, 102, 109)).
method(m_append_182, range(abstract_file_filter_1, 3584, 240, 111, 118)).
method(m_get_183, range(abstract_file_filter_1, 3830, 194, 120, 126)).
method(m_handle_184, range(abstract_file_filter_1, 4030, 268, 128, 137)).
method(m_post_visit_directory_185, range(abstract_file_filter_1, 4304, 162, 139, 142)).
method(m_pre_visit_directory_186, range(abstract_file_filter_1, 4472, 175, 144, 147)).
method(m_to_file_visit_result_187, range(abstract_file_filter_1, 4653, 258, 149, 157)).
method(m_to_string_188, range(abstract_file_filter_1, 4917, 212, 159, 167)).
method(m_visit_file_189, range(abstract_file_filter_1, 5135, 169, 169, 172)).
method(m_visit_file_failed_190, range(abstract_file_filter_1, 5310, 160, 174, 177)).
%regex_file_filter_1 - org.apache.commons.io.filefilter.RegexFileFilter
method(m_compile_198, range(regex_file_filter_1, 2540, 357, 78, 88)).
method(m_to_flags_200, range(regex_file_filter_1, 2903, 290, 90, 98)).
method(m_regex_file_filter_201, range(regex_file_filter_1, 3415, 402, 106, 115)).
method(m_regex_file_filter_202, range(regex_file_filter_1, 3823, 520, 117, 129)).
method(m_regex_file_filter_205, range(regex_file_filter_1, 4349, 268, 131, 139)).
method(m_regex_file_filter_206, range(regex_file_filter_1, 4623, 401, 141, 150)).
method(m_regex_file_filter_207, range(regex_file_filter_1, 5030, 437, 152, 161)).
method(m_accept_208, range(regex_file_filter_1, 5473, 383, 163, 173)).
method(m_accept_209, range(regex_file_filter_1, 5862, 443, 175, 185)).
method(m_to_string_213, range(regex_file_filter_1, 6311, 181, 187, 195)).
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
method(m_to_buffered_input_stream_260, range(byte_array_output_stream_1, 1174, 984, 30, 55)).
method(m_to_buffered_input_stream_261, range(byte_array_output_stream_1, 2164, 1145, 57, 86)).
method(m_byte_array_output_stream_223, range(byte_array_output_stream_1, 3315, 271, 88, 94)).
method(m_byte_array_output_stream_262, range(byte_array_output_stream_1, 3592, 474, 96, 110)).
method(m_reset_263, range(byte_array_output_stream_1, 4072, 141, 112, 118)).
method(m_size_264, range(byte_array_output_stream_1, 4219, 74, 120, 123)).
method(m_to_byte_array_228, range(byte_array_output_stream_1, 4299, 96, 125, 128)).
method(m_to_input_stream_265, range(byte_array_output_stream_1, 4401, 134, 130, 133)).
method(m_write_266, range(byte_array_output_stream_1, 4541, 433, 135, 150)).
method(m_write_267, range(byte_array_output_stream_1, 4980, 122, 152, 155)).
method(m_write_268, range(byte_array_output_stream_1, 5108, 87, 157, 160)).
method(m_write_to_269, range(byte_array_output_stream_1, 5201, 123, 162, 165)).
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
method(m_accept_191, range(iofile_filter_1, 1428, 279, 41, 51)).
method(m_accept_192, range(iofile_filter_1, 1713, 368, 53, 64)).
method(m_accept_193, range(iofile_filter_1, 2087, 404, 66, 76)).
method(m_and_194, range(iofile_filter_1, 2497, 288, 78, 87)).
method(m_matches_195, range(iofile_filter_1, 2791, 317, 89, 99)).
method(m_negate_196, range(iofile_filter_1, 3114, 204, 101, 109)).
method(m_or_197, range(iofile_filter_1, 3324, 284, 111, 120)).

%%% Blocks
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
block(standard_line_separator_1_block1, block, standard_line_separator_1_code7, body, range(standard_line_separator_1, 1620, 92, 52, 54)).
block(standard_line_separator_1_block2, block, standard_line_separator_1_code11, body, range(standard_line_separator_1, 2187, 37, 71, 73)).
%ioutils_1 - org.apache.commons.io.IOUtils
block(ioutils_1_block1, block, ioutils_1_code71, body, range(ioutils_1, 14149, 54, 353, 355)).
block(ioutils_1_block2, block, ioutils_1_code72, body, range(ioutils_1, 14576, 38, 367, 369)).
block(ioutils_1_block3, block, ioutils_1_code76, body, range(ioutils_1, 14837, 54, 377, 379)).
block(ioutils_1_block4, block, ioutils_1_code77, body, range(ioutils_1, 15198, 38, 390, 392)).
%regex_file_filter_test_1 - org.apache.commons.io.filefilter.RegexFileFilterTest
block(regex_file_filter_test_1_block1, block, regex_file_filter_test_1_code4, body, range(regex_file_filter_test_1, 2958, 1230, 64, 83)).
block(regex_file_filter_test_1_block2, block, regex_file_filter_test_1_stmt4, then_statement, range(regex_file_filter_test_1, 3647, 231, 73, 77)).
block(regex_file_filter_test_1_block3, block, regex_file_filter_test_1_code8, body, range(regex_file_filter_test_1, 4292, 335, 85, 94)).
block(regex_file_filter_test_1_block4, block, regex_file_filter_test_1_stmt7, body, range(regex_file_filter_test_1, 4365, 227, 86, 92)).
block(regex_file_filter_test_1_block5, block, regex_file_filter_test_1_stmt8, body, range(regex_file_filter_test_1, 4439, 62, 87, 89)).
block(regex_file_filter_test_1_block6, block, regex_file_filter_test_1_code15, body, range(regex_file_filter_test_1, 8091, 652, 164, 172)).
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
block(abstract_byte_array_output_stream_1_block1, block, abstract_byte_array_output_stream_1_code21, body, range(abstract_byte_array_output_stream_1, 4069, 21, 111, 113)).
block(abstract_byte_array_output_stream_1_block2, block, abstract_byte_array_output_stream_1_code22, body, range(abstract_byte_array_output_stream_1, 4338, 792, 121, 143)).
block(abstract_byte_array_output_stream_1_block3, block, abstract_byte_array_output_stream_1_stmt1, then_statement, range(abstract_byte_array_output_stream_1, 4393, 196, 122, 128)).
block(abstract_byte_array_output_stream_1_block4, block, abstract_byte_array_output_stream_1_stmt1, else_statement, range(abstract_byte_array_output_stream_1, 4595, 529, 128, 142)).
block(abstract_byte_array_output_stream_1_block5, block, abstract_byte_array_output_stream_1_stmt2, then_statement, range(abstract_byte_array_output_stream_1, 4708, 94, 131, 134)).
block(abstract_byte_array_output_stream_1_block6, block, abstract_byte_array_output_stream_1_code23, body, range(abstract_byte_array_output_stream_1, 6538, 514, 192, 209)).
block(abstract_byte_array_output_stream_1_block7, block, abstract_byte_array_output_stream_1_stmt9, then_statement, range(abstract_byte_array_output_stream_1, 6599, 56, 194, 196)).
block(abstract_byte_array_output_stream_1_block8, block, abstract_byte_array_output_stream_1_stmt12, body, range(abstract_byte_array_output_stream_1, 6778, 245, 199, 207)).
block(abstract_byte_array_output_stream_1_block9, block, abstract_byte_array_output_stream_1_stmt17, then_statement, range(abstract_byte_array_output_stream_1, 6975, 38, 204, 206)).
block(abstract_byte_array_output_stream_1_block10, block, abstract_byte_array_output_stream_1_code41, body, range(abstract_byte_array_output_stream_1, 11269, 525, 322, 336)).
block(abstract_byte_array_output_stream_1_block11, block, abstract_byte_array_output_stream_1_stmt23, body, range(abstract_byte_array_output_stream_1, 11423, 339, 326, 334)).
block(abstract_byte_array_output_stream_1_block12, block, abstract_byte_array_output_stream_1_stmt27, then_statement, range(abstract_byte_array_output_stream_1, 11663, 89, 330, 333)).
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
block(abstract_file_filter_1_block1, block, abstract_file_filter_1_code3, body, range(abstract_file_filter_1, 1754, 85, 44, 46)).
block(abstract_file_filter_1_block2, block, abstract_file_filter_1_code4, body, range(abstract_file_filter_1, 2133, 74, 61, 63)).
block(abstract_file_filter_1_block3, block, abstract_file_filter_1_code5, body, range(abstract_file_filter_1, 2482, 75, 72, 75)).
block(abstract_file_filter_1_block4, block, abstract_file_filter_1_code13, body, range(abstract_file_filter_1, 4859, 52, 155, 157)).
%regex_file_filter_1 - org.apache.commons.io.filefilter.RegexFileFilter
block(regex_file_filter_1_block1, block, regex_file_filter_1_code3, body, range(regex_file_filter_1, 2790, 107, 85, 88)).
block(regex_file_filter_1_block2, block, regex_file_filter_1_code4, body, range(regex_file_filter_1, 3714, 103, 113, 115)).
block(regex_file_filter_1_block3, block, regex_file_filter_1_code12, body, range(regex_file_filter_1, 4210, 133, 125, 129)).
block(regex_file_filter_1_block4, block, regex_file_filter_1_code23, body, range(regex_file_filter_1, 4584, 33, 137, 139)).
block(regex_file_filter_1_block5, block, regex_file_filter_1_code24, body, range(regex_file_filter_1, 4978, 46, 148, 150)).
block(regex_file_filter_1_block6, block, regex_file_filter_1_code25, body, range(regex_file_filter_1, 6211, 94, 183, 185)).
block(regex_file_filter_1_block7, block, regex_file_filter_1_code26, body, range(regex_file_filter_1, 6425, 67, 193, 195)).
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
block(byte_array_output_stream_1_block1, block, byte_array_output_stream_1_code3, body, range(byte_array_output_stream_1, 3551, 35, 92, 94)).
block(byte_array_output_stream_1_block2, block, byte_array_output_stream_1_code4, body, range(byte_array_output_stream_1, 3870, 196, 103, 110)).
block(byte_array_output_stream_1_block3, block, byte_array_output_stream_1_stmt2, then_statement, range(byte_array_output_stream_1, 3894, 93, 104, 106)).
block(byte_array_output_stream_1_block4, block, byte_array_output_stream_1_stmt3, body, range(byte_array_output_stream_1, 4016, 44, 107, 109)).
block(byte_array_output_stream_1_block5, block, byte_array_output_stream_1_code9, body, range(byte_array_output_stream_1, 4354, 41, 126, 128)).
block(byte_array_output_stream_1_block6, block, byte_array_output_stream_1_code10, body, range(byte_array_output_stream_1, 4619, 355, 136, 150)).
block(byte_array_output_stream_1_block7, block, byte_array_output_stream_1_stmt7, then_statement, range(byte_array_output_stream_1, 4861, 31, 144, 146)).
block(byte_array_output_stream_1_block8, block, byte_array_output_stream_1_stmt8, body, range(byte_array_output_stream_1, 4921, 47, 147, 149)).
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
block(iofile_filter_1_block1, block, iofile_filter_1_code8, body, range(iofile_filter_1, 3037, 71, 97, 99)).

%%% Statements
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
stmt(standard_line_separator_1_stmt1, expression_statement, standard_line_separator_1_block1, (statements, 0), range(standard_line_separator_1, 1630, 76, 53, 53)).
stmt(standard_line_separator_1_stmt2, return_statement, standard_line_separator_1_block2, (statements, 0), range(standard_line_separator_1, 2197, 21, 72, 72)).
%ioutils_1 - org.apache.commons.io.IOUtils
stmt(ioutils_1_stmt1, return_statement, ioutils_1_block1, (statements, 0), range(ioutils_1, 14159, 38, 354, 354)).
stmt(ioutils_1_stmt2, return_statement, ioutils_1_block2, (statements, 0), range(ioutils_1, 14586, 22, 368, 368)).
stmt(ioutils_1_stmt3, return_statement, ioutils_1_block3, (statements, 0), range(ioutils_1, 14847, 38, 378, 378)).
stmt(ioutils_1_stmt4, return_statement, ioutils_1_block4, (statements, 0), range(ioutils_1, 15208, 22, 391, 391)).
%regex_file_filter_test_1 - org.apache.commons.io.filefilter.RegexFileFilterTest
stmt(regex_file_filter_test_1_stmt1, variable_declaration_statement, regex_file_filter_test_1_block1, (statements, 0), range(regex_file_filter_test_1, 3085, 102, 67, 67)).
stmt(regex_file_filter_test_1_stmt2, expression_statement, regex_file_filter_test_1_block1, (statements, 1), range(regex_file_filter_test_1, 3196, 181, 68, 69)).
stmt(regex_file_filter_test_1_stmt3, expression_statement, regex_file_filter_test_1_block1, (statements, 2), range(regex_file_filter_test_1, 3386, 205, 70, 71)).
stmt(regex_file_filter_test_1_stmt4, if_statement, regex_file_filter_test_1_block1, (statements, 3), range(regex_file_filter_test_1, 3601, 509, 73, 80)).
stmt(regex_file_filter_test_1_stmt5, expression_statement, regex_file_filter_test_1_block2, (statements, 0), range(regex_file_filter_test_1, 3661, 207, 74, 76)).
stmt(regex_file_filter_test_1_stmt6, expression_statement, regex_file_filter_test_1_block1, (statements, 4), range(regex_file_filter_test_1, 4149, 33, 82, 82)).
stmt(regex_file_filter_test_1_stmt7, try_statement, regex_file_filter_test_1_block3, (statements, 0), range(regex_file_filter_test_1, 4302, 290, 86, 92)).
stmt(regex_file_filter_test_1_stmt8, try_statement, regex_file_filter_test_1_block4, (statements, 0), range(regex_file_filter_test_1, 4379, 122, 87, 89)).
stmt(regex_file_filter_test_1_stmt9, expression_statement, regex_file_filter_test_1_block5, (statements, 0), range(regex_file_filter_test_1, 4457, 30, 88, 88)).
stmt(regex_file_filter_test_1_stmt10, expression_statement, regex_file_filter_test_1_block4, (statements, 1), range(regex_file_filter_test_1, 4514, 13, 90, 90)).
stmt(regex_file_filter_test_1_stmt11, expression_statement, regex_file_filter_test_1_block4, (statements, 2), range(regex_file_filter_test_1, 4540, 42, 91, 91)).
stmt(regex_file_filter_test_1_stmt12, return_statement, regex_file_filter_test_1_block3, (statements, 1), range(regex_file_filter_test_1, 4601, 20, 93, 93)).
stmt(regex_file_filter_test_1_stmt13, variable_declaration_statement, regex_file_filter_test_1_block6, (statements, 0), range(regex_file_filter_test_1, 8101, 50, 165, 165)).
stmt(regex_file_filter_test_1_stmt14, variable_declaration_statement, regex_file_filter_test_1_block6, (statements, 1), range(regex_file_filter_test_1, 8160, 34, 166, 166)).
stmt(regex_file_filter_test_1_stmt15, expression_statement, regex_file_filter_test_1_block6, (statements, 2), range(regex_file_filter_test_1, 8203, 81, 167, 167)).
stmt(regex_file_filter_test_1_stmt16, expression_statement, regex_file_filter_test_1_block6, (statements, 3), range(regex_file_filter_test_1, 8293, 171, 168, 169)).
stmt(regex_file_filter_test_1_stmt17, expression_statement, regex_file_filter_test_1_block6, (statements, 4), range(regex_file_filter_test_1, 8473, 125, 170, 170)).
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
stmt(abstract_byte_array_output_stream_1_stmt1, if_statement, abstract_byte_array_output_stream_1_block2, (statements, 0), range(abstract_byte_array_output_stream_1, 4348, 776, 122, 142)).
stmt(abstract_byte_array_output_stream_1_stmt2, if_statement, abstract_byte_array_output_stream_1_block4, (statements, 1), range(abstract_byte_array_output_stream_1, 4681, 296, 131, 137)).
stmt(abstract_byte_array_output_stream_1_stmt3, expression_statement, abstract_byte_array_output_stream_1_block5, (statements, 0), range(abstract_byte_array_output_stream_1, 4726, 25, 132, 132)).
stmt(abstract_byte_array_output_stream_1_stmt4, expression_statement, abstract_byte_array_output_stream_1_block5, (statements, 1), range(abstract_byte_array_output_stream_1, 4768, 20, 133, 133)).
stmt(abstract_byte_array_output_stream_1_stmt5, expression_statement, abstract_byte_array_output_stream_1_block4, (statements, 2), range(abstract_byte_array_output_stream_1, 4991, 21, 139, 139)).
stmt(abstract_byte_array_output_stream_1_stmt6, expression_statement, abstract_byte_array_output_stream_1_block4, (statements, 3), range(abstract_byte_array_output_stream_1, 5025, 49, 140, 140)).
stmt(abstract_byte_array_output_stream_1_stmt7, expression_statement, abstract_byte_array_output_stream_1_block4, (statements, 4), range(abstract_byte_array_output_stream_1, 5087, 27, 141, 141)).
stmt(abstract_byte_array_output_stream_1_stmt8, variable_declaration_statement, abstract_byte_array_output_stream_1_block6, (statements, 0), range(abstract_byte_array_output_stream_1, 6548, 22, 193, 193)).
stmt(abstract_byte_array_output_stream_1_stmt9, if_statement, abstract_byte_array_output_stream_1_block6, (statements, 1), range(abstract_byte_array_output_stream_1, 6579, 76, 194, 196)).
stmt(abstract_byte_array_output_stream_1_stmt10, variable_declaration_statement, abstract_byte_array_output_stream_1_block6, (statements, 2), range(abstract_byte_array_output_stream_1, 6664, 51, 197, 197)).
stmt(abstract_byte_array_output_stream_1_stmt11, variable_declaration_statement, abstract_byte_array_output_stream_1_block6, (statements, 3), range(abstract_byte_array_output_stream_1, 6724, 12, 198, 198)).
stmt(abstract_byte_array_output_stream_1_stmt12, enhanced_for_statement, abstract_byte_array_output_stream_1_block6, (statements, 4), range(abstract_byte_array_output_stream_1, 6745, 278, 199, 207)).
stmt(abstract_byte_array_output_stream_1_stmt13, variable_declaration_statement, abstract_byte_array_output_stream_1_block8, (statements, 0), range(abstract_byte_array_output_stream_1, 6792, 46, 200, 200)).
stmt(abstract_byte_array_output_stream_1_stmt14, expression_statement, abstract_byte_array_output_stream_1_block8, (statements, 1), range(abstract_byte_array_output_stream_1, 6851, 41, 201, 201)).
stmt(abstract_byte_array_output_stream_1_stmt15, expression_statement, abstract_byte_array_output_stream_1_block8, (statements, 2), range(abstract_byte_array_output_stream_1, 6905, 9, 202, 202)).
stmt(abstract_byte_array_output_stream_1_stmt16, expression_statement, abstract_byte_array_output_stream_1_block8, (statements, 3), range(abstract_byte_array_output_stream_1, 6927, 15, 203, 203)).
stmt(abstract_byte_array_output_stream_1_stmt17, if_statement, abstract_byte_array_output_stream_1_block8, (statements, 4), range(abstract_byte_array_output_stream_1, 6955, 58, 204, 206)).
stmt(abstract_byte_array_output_stream_1_stmt18, break_statement, abstract_byte_array_output_stream_1_block9, (statements, 0), range(abstract_byte_array_output_stream_1, 6993, 6, 205, 205)).
stmt(abstract_byte_array_output_stream_1_stmt19, return_statement, abstract_byte_array_output_stream_1_block6, (statements, 5), range(abstract_byte_array_output_stream_1, 7032, 14, 208, 208)).
stmt(abstract_byte_array_output_stream_1_stmt20, variable_declaration_statement, abstract_byte_array_output_stream_1_block10, (statements, 0), range(abstract_byte_array_output_stream_1, 11279, 33, 323, 323)).
stmt(abstract_byte_array_output_stream_1_stmt21, variable_declaration_statement, abstract_byte_array_output_stream_1_block10, (statements, 1), range(abstract_byte_array_output_stream_1, 11321, 20, 324, 324)).
stmt(abstract_byte_array_output_stream_1_stmt22, variable_declaration_statement, abstract_byte_array_output_stream_1_block10, (statements, 2), range(abstract_byte_array_output_stream_1, 11350, 42, 325, 325)).
stmt(abstract_byte_array_output_stream_1_stmt23, while_statement, abstract_byte_array_output_stream_1_block10, (statements, 3), range(abstract_byte_array_output_stream_1, 11401, 361, 326, 334)).
stmt(abstract_byte_array_output_stream_1_stmt24, variable_declaration_statement, abstract_byte_array_output_stream_1_block11, (statements, 0), range(abstract_byte_array_output_stream_1, 11437, 73, 327, 327)).
stmt(abstract_byte_array_output_stream_1_stmt25, expression_statement, abstract_byte_array_output_stream_1_block11, (statements, 1), range(abstract_byte_array_output_stream_1, 11523, 77, 328, 328)).
stmt(abstract_byte_array_output_stream_1_stmt26, expression_statement, abstract_byte_array_output_stream_1_block11, (statements, 2), range(abstract_byte_array_output_stream_1, 11613, 18, 329, 329)).
stmt(abstract_byte_array_output_stream_1_stmt27, if_statement, abstract_byte_array_output_stream_1_block11, (statements, 3), range(abstract_byte_array_output_stream_1, 11644, 108, 330, 333)).
stmt(abstract_byte_array_output_stream_1_stmt28, expression_statement, abstract_byte_array_output_stream_1_block10, (statements, 4), range(abstract_byte_array_output_stream_1, 11771, 17, 335, 335)).
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
stmt(abstract_file_filter_1_stmt1, return_statement, abstract_file_filter_1_block1, (statements, 0), range(abstract_file_filter_1, 1764, 69, 45, 45)).
stmt(abstract_file_filter_1_stmt2, constructor_invocation, abstract_file_filter_1_block2, (statements, 0), range(abstract_file_filter_1, 2143, 58, 62, 62)).
stmt(abstract_file_filter_1_stmt3, expression_statement, abstract_file_filter_1_block3, (statements, 0), range(abstract_file_filter_1, 2492, 25, 73, 73)).
stmt(abstract_file_filter_1_stmt4, expression_statement, abstract_file_filter_1_block3, (statements, 1), range(abstract_file_filter_1, 2526, 25, 74, 74)).
stmt(abstract_file_filter_1_stmt5, return_statement, abstract_file_filter_1_block4, (statements, 0), range(abstract_file_filter_1, 4869, 36, 156, 156)).
%regex_file_filter_1 - org.apache.commons.io.filefilter.RegexFileFilter
stmt(regex_file_filter_1_stmt1, expression_statement, regex_file_filter_1_block1, (statements, 0), range(regex_file_filter_1, 2800, 43, 86, 86)).
stmt(regex_file_filter_1_stmt2, return_statement, regex_file_filter_1_block1, (statements, 1), range(regex_file_filter_1, 2852, 39, 87, 87)).
stmt(regex_file_filter_1_stmt3, constructor_invocation, regex_file_filter_1_block2, (statements, 0), range(regex_file_filter_1, 3724, 87, 114, 114)).
stmt(regex_file_filter_1_stmt4, expression_statement, regex_file_filter_1_block3, (statements, 0), range(regex_file_filter_1, 4220, 43, 126, 126)).
stmt(regex_file_filter_1_stmt5, expression_statement, regex_file_filter_1_block3, (statements, 1), range(regex_file_filter_1, 4272, 23, 127, 127)).
stmt(regex_file_filter_1_stmt6, expression_statement, regex_file_filter_1_block3, (statements, 2), range(regex_file_filter_1, 4304, 33, 128, 128)).
stmt(regex_file_filter_1_stmt7, constructor_invocation, regex_file_filter_1_block4, (statements, 0), range(regex_file_filter_1, 4594, 17, 138, 138)).
stmt(regex_file_filter_1_stmt8, constructor_invocation, regex_file_filter_1_block5, (statements, 0), range(regex_file_filter_1, 4988, 30, 149, 149)).
stmt(regex_file_filter_1_stmt9, return_statement, regex_file_filter_1_block6, (statements, 0), range(regex_file_filter_1, 6221, 78, 184, 184)).
stmt(regex_file_filter_1_stmt10, return_statement, regex_file_filter_1_block7, (statements, 0), range(regex_file_filter_1, 6435, 51, 194, 194)).
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
stmt(byte_array_output_stream_1_stmt1, constructor_invocation, byte_array_output_stream_1_block1, (statements, 0), range(byte_array_output_stream_1, 3561, 19, 93, 93)).
stmt(byte_array_output_stream_1_stmt2, if_statement, byte_array_output_stream_1_block2, (statements, 0), range(byte_array_output_stream_1, 3880, 107, 104, 106)).
stmt(byte_array_output_stream_1_stmt3, synchronized_statement, byte_array_output_stream_1_block2, (statements, 1), range(byte_array_output_stream_1, 3996, 64, 107, 109)).
stmt(byte_array_output_stream_1_stmt4, expression_statement, byte_array_output_stream_1_block4, (statements, 0), range(byte_array_output_stream_1, 4030, 20, 108, 108)).
stmt(byte_array_output_stream_1_stmt5, return_statement, byte_array_output_stream_1_block5, (statements, 0), range(byte_array_output_stream_1, 4364, 25, 127, 127)).
stmt(byte_array_output_stream_1_stmt6, if_statement, byte_array_output_stream_1_block6, (statements, 0), range(byte_array_output_stream_1, 4629, 209, 137, 143)).
stmt(byte_array_output_stream_1_stmt7, if_statement, byte_array_output_stream_1_block6, (statements, 1), range(byte_array_output_stream_1, 4847, 45, 144, 146)).
stmt(byte_array_output_stream_1_stmt8, synchronized_statement, byte_array_output_stream_1_block6, (statements, 2), range(byte_array_output_stream_1, 4901, 67, 147, 149)).
stmt(byte_array_output_stream_1_stmt9, expression_statement, byte_array_output_stream_1_block8, (statements, 0), range(byte_array_output_stream_1, 4935, 23, 148, 148)).
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
stmt(iofile_filter_1_stmt1, return_statement, iofile_filter_1_block1, (statements, 0), range(iofile_filter_1, 3047, 55, 98, 98)).

%%% Expressions
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
expr(standard_line_separator_1_expr4, this_expression, f_line_separator_331, expression, range(standard_line_separator_1, 1630, 4, 53, 53), "this").
expr(standard_line_separator_1_expr2, field_access, standard_line_separator_1_expr1, left_hand_side, range(standard_line_separator_1, 1630, 18, 53, 53), "this.lineSeparator").
expr(standard_line_separator_1_expr1, assignment, standard_line_separator_1_stmt1, expression, range(standard_line_separator_1, 1630, 75, 53, 53), "this.lineSeparator=Objects.requireNonNull(lineSeparator,\"lineSeparator\")").
expr(standard_line_separator_1_expr3, method_invocation, standard_line_separator_1_expr1, right_hand_side, range(standard_line_separator_1, 1651, 54, 53, 53), "Objects.requireNonNull(lineSeparator,\"lineSeparator\")").
%ioutils_1 - org.apache.commons.io.IOUtils
expr(ioutils_1_expr1, array_initializer, ioutils_1_code16, initializer, range(ioutils_1, 6004, 2, 162, 162), "{}").
expr(ioutils_1_expr2, method_invocation, ioutils_1_code22, initializer, range(ioutils_1, 6425, 22, 183, 183), "System.lineSeparator()").
expr(ioutils_1_expr3, method_invocation, ioutils_1_code28, initializer, range(ioutils_1, 6602, 36, 190, 190), "StandardLineSeparator.LF.getString()").
expr(ioutils_1_expr4, method_invocation, ioutils_1_code34, initializer, range(ioutils_1, 6801, 38, 197, 197), "StandardLineSeparator.CRLF.getString()").
expr(ioutils_1_expr5, method_invocation, ioutils_1_code44, initializer, range(ioutils_1, 7002, 43, 202, 202), "ThreadLocal.withInitial(IOUtils::byteArray)").
expr(ioutils_1_expr6, expression_method_reference, ioutils_1_expr5, (arguments, 0), range(ioutils_1, 7026, 18, 202, 202), "IOUtils::byteArray").
expr(ioutils_1_expr7, method_invocation, ioutils_1_code52, initializer, range(ioutils_1, 7192, 11, 207, 207), "byteArray()").
expr(ioutils_1_expr8, method_invocation, ioutils_1_code62, initializer, range(ioutils_1, 7366, 43, 212, 212), "ThreadLocal.withInitial(IOUtils::charArray)").
expr(ioutils_1_expr9, expression_method_reference, ioutils_1_expr8, (arguments, 0), range(ioutils_1, 7390, 18, 212, 212), "IOUtils::charArray").
expr(ioutils_1_expr10, method_invocation, ioutils_1_code70, initializer, range(ioutils_1, 7556, 11, 217, 217), "charArray()").
expr(ioutils_1_expr11, method_invocation, ioutils_1_stmt1, expression, range(ioutils_1, 14166, 30, 354, 354), "byteArray(DEFAULT_BUFFER_SIZE)").
expr(ioutils_1_expr12, array_creation, ioutils_1_stmt2, expression, range(ioutils_1, 14593, 14, 368, 368), "new byte[size]").
expr(ioutils_1_expr13, method_invocation, ioutils_1_stmt3, expression, range(ioutils_1, 14854, 30, 378, 378), "charArray(DEFAULT_BUFFER_SIZE)").
expr(ioutils_1_expr14, array_creation, ioutils_1_stmt4, expression, range(ioutils_1, 15215, 14, 391, 391), "new char[size]").
%regex_file_filter_test_1 - org.apache.commons.io.filefilter.RegexFileFilterTest
expr(regex_file_filter_test_1_expr1, method_invocation, regex_file_filter_test_1_code7, initializer, range(regex_file_filter_test_1, 3133, 53, 67, 67), "AbstractFileFilter.toDefaultFileVisitResult(expected)").
expr(regex_file_filter_test_1_expr2, method_invocation, regex_file_filter_test_1_stmt2, expression, range(regex_file_filter_test_1, 3196, 180, 68, 69), "assertEquals(expectedFileVisitResult,filter.accept(path,null),\"Filter(Path) \" + filter.getClass().getName() + \" not \"+ expectedFileVisitResult+ \" for \"+ path)").
expr(regex_file_filter_test_1_expr3, method_invocation, regex_file_filter_test_1_expr2, (arguments, 1), range(regex_file_filter_test_1, 3234, 25, 68, 68), "filter.accept(path,null)").
expr(regex_file_filter_test_1_expr4, infix_expression, regex_file_filter_test_1_expr2, (arguments, 2), range(regex_file_filter_test_1, 3277, 98, 69, 69), "\"Filter(Path) \" + filter.getClass().getName() + \" not \"+ expectedFileVisitResult+ \" for \"+ path").
expr(regex_file_filter_test_1_expr5, method_invocation, regex_file_filter_test_1_expr4, right_operand, range(regex_file_filter_test_1, 3295, 27, 69, 69), "filter.getClass().getName()").
expr(regex_file_filter_test_1_expr6, method_invocation, regex_file_filter_test_1_expr5, expression, range(regex_file_filter_test_1, 3295, 17, 69, 69), "filter.getClass()").
expr(regex_file_filter_test_1_expr7, method_invocation, regex_file_filter_test_1_stmt3, expression, range(regex_file_filter_test_1, 3386, 204, 70, 71), "assertEquals(expectedFileVisitResult != FileVisitResult.TERMINATE,filter.matches(path),\"Filter(Path) \" + filter.getClass().getName() + \" not \"+ expectedFileVisitResult+ \" for \"+ path)").
expr(regex_file_filter_test_1_expr8, infix_expression, regex_file_filter_test_1_expr7, (arguments, 0), range(regex_file_filter_test_1, 3399, 52, 70, 70), "expectedFileVisitResult != FileVisitResult.TERMINATE").
expr(regex_file_filter_test_1_expr9, method_invocation, regex_file_filter_test_1_expr7, (arguments, 1), range(regex_file_filter_test_1, 3453, 20, 70, 70), "filter.matches(path)").
expr(regex_file_filter_test_1_expr10, infix_expression, regex_file_filter_test_1_expr7, (arguments, 2), range(regex_file_filter_test_1, 3491, 98, 71, 71), "\"Filter(Path) \" + filter.getClass().getName() + \" not \"+ expectedFileVisitResult+ \" for \"+ path").
expr(regex_file_filter_test_1_expr12, method_invocation, regex_file_filter_test_1_expr11, expression, range(regex_file_filter_test_1, 3509, 17, 71, 71), "filter.getClass()").
expr(regex_file_filter_test_1_expr11, method_invocation, regex_file_filter_test_1_expr10, right_operand, range(regex_file_filter_test_1, 3509, 27, 71, 71), "filter.getClass().getName()").
expr(regex_file_filter_test_1_expr14, infix_expression, regex_file_filter_test_1_expr13, left_operand, range(regex_file_filter_test_1, 3605, 12, 73, 73), "path != null").
expr(regex_file_filter_test_1_expr13, infix_expression, regex_file_filter_test_1_stmt4, expression, range(regex_file_filter_test_1, 3605, 40, 73, 73), "path != null && path.getParent() != null").
expr(regex_file_filter_test_1_expr16, method_invocation, regex_file_filter_test_1_expr15, left_operand, range(regex_file_filter_test_1, 3621, 16, 73, 73), "path.getParent()").
expr(regex_file_filter_test_1_expr15, infix_expression, regex_file_filter_test_1_expr13, right_operand, range(regex_file_filter_test_1, 3621, 24, 73, 73), "path.getParent() != null").
expr(regex_file_filter_test_1_expr17, method_invocation, regex_file_filter_test_1_stmt5, expression, range(regex_file_filter_test_1, 3661, 206, 74, 76), "assertEquals(expectedFileVisitResult,filter.accept(path,null),\"Filter(Path, Path) \" + filter.getClass().getName() + \" not \"+ expectedFileVisitResult+ \" for \"+ path)").
expr(regex_file_filter_test_1_expr18, method_invocation, regex_file_filter_test_1_expr17, (arguments, 1), range(regex_file_filter_test_1, 3699, 25, 74, 74), "filter.accept(path,null)").
expr(regex_file_filter_test_1_expr19, infix_expression, regex_file_filter_test_1_expr17, (arguments, 2), range(regex_file_filter_test_1, 3742, 124, 75, 76), "\"Filter(Path, Path) \" + filter.getClass().getName() + \" not \"+ expectedFileVisitResult+ \" for \"+ path").
expr(regex_file_filter_test_1_expr21, method_invocation, regex_file_filter_test_1_expr20, expression, range(regex_file_filter_test_1, 3766, 17, 75, 75), "filter.getClass()").
expr(regex_file_filter_test_1_expr20, method_invocation, regex_file_filter_test_1_expr19, right_operand, range(regex_file_filter_test_1, 3766, 27, 75, 75), "filter.getClass().getName()").
expr(regex_file_filter_test_1_expr22, method_invocation, regex_file_filter_test_1_stmt6, expression, range(regex_file_filter_test_1, 4149, 32, 82, 82), "assertNotNull(filter.toString())").
expr(regex_file_filter_test_1_expr23, method_invocation, regex_file_filter_test_1_expr22, (arguments, 0), range(regex_file_filter_test_1, 4163, 17, 82, 82), "filter.toString()").
expr(regex_file_filter_test_1_expr24, variable_declaration_expression, regex_file_filter_test_1_stmt7, (resources, 0), range(regex_file_filter_test_1, 4307, 56, 86, 86), "ByteArrayOutputStream baos=new ByteArrayOutputStream()").
expr(regex_file_filter_test_1_expr25, class_instance_creation, regex_file_filter_test_1_code10, initializer, range(regex_file_filter_test_1, 4336, 27, 86, 86), "new ByteArrayOutputStream()").
expr(regex_file_filter_test_1_expr26, variable_declaration_expression, regex_file_filter_test_1_stmt8, (resources, 0), range(regex_file_filter_test_1, 4384, 53, 87, 87), "ObjectOutputStream oos=new ObjectOutputStream(baos)").
expr(regex_file_filter_test_1_expr27, class_instance_creation, regex_file_filter_test_1_code13, initializer, range(regex_file_filter_test_1, 4409, 28, 87, 87), "new ObjectOutputStream(baos)").
expr(regex_file_filter_test_1_expr28, method_invocation, regex_file_filter_test_1_stmt9, expression, range(regex_file_filter_test_1, 4457, 29, 88, 88), "oos.writeObject(serializable)").
expr(regex_file_filter_test_1_expr29, method_invocation, regex_file_filter_test_1_stmt10, expression, range(regex_file_filter_test_1, 4514, 12, 90, 90), "baos.flush()").
expr(regex_file_filter_test_1_expr30, method_invocation, regex_file_filter_test_1_stmt11, expression, range(regex_file_filter_test_1, 4540, 41, 91, 91), "assertTrue(baos.toByteArray().length > 0)").
expr(regex_file_filter_test_1_expr32, field_access, regex_file_filter_test_1_expr31, left_operand, range(regex_file_filter_test_1, 4551, 25, 91, 91), "baos.toByteArray().length").
expr(regex_file_filter_test_1_expr31, infix_expression, regex_file_filter_test_1_expr30, (arguments, 0), range(regex_file_filter_test_1, 4551, 29, 91, 91), "baos.toByteArray().length > 0").
expr(regex_file_filter_test_1_expr33, method_invocation, regex_file_filter_test_1_expr32, expression, range(regex_file_filter_test_1, 4551, 18, 91, 91), "baos.toByteArray()").
expr(regex_file_filter_test_1_expr34, method_invocation, regex_file_filter_test_1_code18, initializer, range(regex_file_filter_test_1, 8119, 31, 165, 165), "Paths.get(\"folder\",\"Foo.java\")").
expr(regex_file_filter_test_1_expr35, method_invocation, regex_file_filter_test_1_stmt15, expression, range(regex_file_filter_test_1, 8203, 80, 167, 167), "assertFiltering(assertSerializable(new RegexFileFilter(patternStr)),path,true)").
expr(regex_file_filter_test_1_expr36, method_invocation, regex_file_filter_test_1_expr35, (arguments, 0), range(regex_file_filter_test_1, 8219, 51, 167, 167), "assertSerializable(new RegexFileFilter(patternStr))").
expr(regex_file_filter_test_1_expr37, class_instance_creation, regex_file_filter_test_1_expr36, (arguments, 0), range(regex_file_filter_test_1, 8238, 31, 167, 167), "new RegexFileFilter(patternStr)").
expr(regex_file_filter_test_1_expr38, method_invocation, regex_file_filter_test_1_stmt16, expression, range(regex_file_filter_test_1, 8293, 170, 168, 169), "assertFiltering(assertSerializable(new RegexFileFilter(Pattern.compile(patternStr),(Function<Path,String> & Serializable)Path::toString)),path,false)").
expr(regex_file_filter_test_1_expr39, method_invocation, regex_file_filter_test_1_expr38, (arguments, 0), range(regex_file_filter_test_1, 8309, 124, 168, 168), "assertSerializable(new RegexFileFilter(Pattern.compile(patternStr),(Function<Path,String> & Serializable)Path::toString))").
expr(regex_file_filter_test_1_expr40, class_instance_creation, regex_file_filter_test_1_expr39, (arguments, 0), range(regex_file_filter_test_1, 8328, 104, 168, 168), "new RegexFileFilter(Pattern.compile(patternStr),(Function<Path,String> & Serializable)Path::toString)").
expr(regex_file_filter_test_1_expr41, method_invocation, regex_file_filter_test_1_expr40, (arguments, 0), range(regex_file_filter_test_1, 8348, 27, 168, 168), "Pattern.compile(patternStr)").
expr(regex_file_filter_test_1_expr42, cast_expression, regex_file_filter_test_1_expr40, (arguments, 1), range(regex_file_filter_test_1, 8377, 54, 168, 168), "(Function<Path,String> & Serializable)Path::toString").
expr(regex_file_filter_test_1_expr43, expression_method_reference, regex_file_filter_test_1_expr42, expression, range(regex_file_filter_test_1, 8417, 14, 168, 168), "Path::toString").
expr(regex_file_filter_test_1_expr44, method_invocation, regex_file_filter_test_1_stmt17, expression, range(regex_file_filter_test_1, 8473, 124, 170, 170), "assertFiltering(new RegexFileFilter(Pattern.compile(patternStr),(Function<Path,String> & Serializable)null),path,false)").
expr(regex_file_filter_test_1_expr45, class_instance_creation, regex_file_filter_test_1_expr44, (arguments, 0), range(regex_file_filter_test_1, 8489, 94, 170, 170), "new RegexFileFilter(Pattern.compile(patternStr),(Function<Path,String> & Serializable)null)").
expr(regex_file_filter_test_1_expr46, method_invocation, regex_file_filter_test_1_expr45, (arguments, 0), range(regex_file_filter_test_1, 8509, 27, 170, 170), "Pattern.compile(patternStr)").
expr(regex_file_filter_test_1_expr47, cast_expression, regex_file_filter_test_1_expr45, (arguments, 1), range(regex_file_filter_test_1, 8538, 44, 170, 170), "(Function<Path,String> & Serializable)null").
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
expr(abstract_byte_array_output_stream_1_expr1, class_instance_creation, abstract_byte_array_output_stream_1_code14, initializer, range(abstract_byte_array_output_stream_1, 3247, 17, 85, 85), "new ArrayList<>()").
expr(abstract_byte_array_output_stream_1_expr2, infix_expression, abstract_byte_array_output_stream_1_stmt1, expression, range(abstract_byte_array_output_stream_1, 4352, 39, 122, 122), "currentBufferIndex < buffers.size() - 1").
expr(abstract_byte_array_output_stream_1_expr3, infix_expression, abstract_byte_array_output_stream_1_expr2, right_operand, range(abstract_byte_array_output_stream_1, 4373, 18, 122, 122), "buffers.size() - 1").
expr(abstract_byte_array_output_stream_1_expr4, method_invocation, abstract_byte_array_output_stream_1_expr3, left_operand, range(abstract_byte_array_output_stream_1, 4373, 14, 122, 122), "buffers.size()").
expr(abstract_byte_array_output_stream_1_expr5, infix_expression, abstract_byte_array_output_stream_1_stmt2, expression, range(abstract_byte_array_output_stream_1, 4685, 21, 131, 131), "currentBuffer == null").
expr(abstract_byte_array_output_stream_1_expr6, assignment, abstract_byte_array_output_stream_1_stmt3, expression, range(abstract_byte_array_output_stream_1, 4726, 24, 132, 132), "newBufferSize=newCount").
expr(abstract_byte_array_output_stream_1_expr7, assignment, abstract_byte_array_output_stream_1_stmt4, expression, range(abstract_byte_array_output_stream_1, 4768, 19, 133, 133), "filledBufferSum=0").
expr(abstract_byte_array_output_stream_1_expr8, postfix_expression, abstract_byte_array_output_stream_1_stmt5, expression, range(abstract_byte_array_output_stream_1, 4991, 20, 139, 139), "currentBufferIndex++").
expr(abstract_byte_array_output_stream_1_expr9, assignment, abstract_byte_array_output_stream_1_stmt6, expression, range(abstract_byte_array_output_stream_1, 5025, 48, 140, 140), "currentBuffer=IOUtils.byteArray(newBufferSize)").
expr(abstract_byte_array_output_stream_1_expr10, method_invocation, abstract_byte_array_output_stream_1_expr9, right_hand_side, range(abstract_byte_array_output_stream_1, 5041, 32, 140, 140), "IOUtils.byteArray(newBufferSize)").
expr(abstract_byte_array_output_stream_1_expr11, method_invocation, abstract_byte_array_output_stream_1_stmt7, expression, range(abstract_byte_array_output_stream_1, 5087, 26, 141, 141), "buffers.add(currentBuffer)").
expr(abstract_byte_array_output_stream_1_expr12, infix_expression, abstract_byte_array_output_stream_1_stmt9, expression, range(abstract_byte_array_output_stream_1, 6583, 14, 194, 194), "remaining == 0").
expr(abstract_byte_array_output_stream_1_expr13, method_invocation, abstract_byte_array_output_stream_1_code30, initializer, range(abstract_byte_array_output_stream_1, 6686, 28, 197, 197), "IOUtils.byteArray(remaining)").
expr(abstract_byte_array_output_stream_1_expr14, method_invocation, abstract_byte_array_output_stream_1_code40, initializer, range(abstract_byte_array_output_stream_1, 6806, 31, 200, 200), "Math.min(buf.length,remaining)").
expr(abstract_byte_array_output_stream_1_expr15, method_invocation, abstract_byte_array_output_stream_1_stmt14, expression, range(abstract_byte_array_output_stream_1, 6851, 40, 201, 201), "System.arraycopy(buf,0,newBuf,pos,c)").
expr(abstract_byte_array_output_stream_1_expr16, assignment, abstract_byte_array_output_stream_1_stmt15, expression, range(abstract_byte_array_output_stream_1, 6905, 8, 202, 202), "pos+=c").
expr(abstract_byte_array_output_stream_1_expr17, assignment, abstract_byte_array_output_stream_1_stmt16, expression, range(abstract_byte_array_output_stream_1, 6927, 14, 203, 203), "remaining-=c").
expr(abstract_byte_array_output_stream_1_expr18, infix_expression, abstract_byte_array_output_stream_1_stmt17, expression, range(abstract_byte_array_output_stream_1, 6959, 14, 204, 204), "remaining == 0").
expr(abstract_byte_array_output_stream_1_expr19, infix_expression, abstract_byte_array_output_stream_1_code44, initializer, range(abstract_byte_array_output_stream_1, 11300, 11, 323, 323), "count + len").
expr(abstract_byte_array_output_stream_1_expr20, infix_expression, abstract_byte_array_output_stream_1_code48, initializer, range(abstract_byte_array_output_stream_1, 11368, 23, 325, 325), "count - filledBufferSum").
expr(abstract_byte_array_output_stream_1_expr21, infix_expression, abstract_byte_array_output_stream_1_stmt23, expression, range(abstract_byte_array_output_stream_1, 11408, 13, 326, 326), "remaining > 0").
expr(abstract_byte_array_output_stream_1_expr22, method_invocation, abstract_byte_array_output_stream_1_code51, initializer, range(abstract_byte_array_output_stream_1, 11454, 55, 327, 327), "Math.min(remaining,currentBuffer.length - inBufferPos)").
expr(abstract_byte_array_output_stream_1_expr23, infix_expression, abstract_byte_array_output_stream_1_expr22, (arguments, 1), range(abstract_byte_array_output_stream_1, 11474, 34, 327, 327), "currentBuffer.length - inBufferPos").
expr(abstract_byte_array_output_stream_1_expr24, method_invocation, abstract_byte_array_output_stream_1_stmt25, expression, range(abstract_byte_array_output_stream_1, 11523, 76, 328, 328), "System.arraycopy(b,off + len - remaining,currentBuffer,inBufferPos,part)").
expr(abstract_byte_array_output_stream_1_expr26, infix_expression, abstract_byte_array_output_stream_1_expr25, left_operand, range(abstract_byte_array_output_stream_1, 11543, 9, 328, 328), "off + len").
expr(abstract_byte_array_output_stream_1_expr25, infix_expression, abstract_byte_array_output_stream_1_expr24, (arguments, 1), range(abstract_byte_array_output_stream_1, 11543, 21, 328, 328), "off + len - remaining").
expr(abstract_byte_array_output_stream_1_expr27, assignment, abstract_byte_array_output_stream_1_stmt26, expression, range(abstract_byte_array_output_stream_1, 11613, 17, 329, 329), "remaining-=part").
expr(abstract_byte_array_output_stream_1_expr28, infix_expression, abstract_byte_array_output_stream_1_stmt27, expression, range(abstract_byte_array_output_stream_1, 11648, 13, 330, 330), "remaining > 0").
expr(abstract_byte_array_output_stream_1_expr29, assignment, abstract_byte_array_output_stream_1_stmt28, expression, range(abstract_byte_array_output_stream_1, 11771, 16, 335, 335), "count=newCount").
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
expr(abstract_file_filter_1_expr1, conditional_expression, abstract_file_filter_1_stmt1, expression, range(abstract_file_filter_1, 1771, 61, 45, 45), "accept ? FileVisitResult.CONTINUE : FileVisitResult.TERMINATE").
expr(abstract_file_filter_1_expr2, constructor_invocation, abstract_file_filter_1_block2, (statements, 0), range(abstract_file_filter_1, 2143, 58, 62, 62), "this(FileVisitResult.CONTINUE,FileVisitResult.TERMINATE);").
expr(abstract_file_filter_1_expr5, this_expression, f_on_accept_338, expression, range(abstract_file_filter_1, 2492, 4, 73, 73), "this").
expr(abstract_file_filter_1_expr4, field_access, abstract_file_filter_1_expr3, left_hand_side, range(abstract_file_filter_1, 2492, 13, 73, 73), "this.onAccept").
expr(abstract_file_filter_1_expr3, assignment, abstract_file_filter_1_stmt3, expression, range(abstract_file_filter_1, 2492, 24, 73, 73), "this.onAccept=onAccept").
expr(abstract_file_filter_1_expr7, field_access, abstract_file_filter_1_expr6, left_hand_side, range(abstract_file_filter_1, 2526, 13, 74, 74), "this.onReject").
expr(abstract_file_filter_1_expr6, assignment, abstract_file_filter_1_stmt4, expression, range(abstract_file_filter_1, 2526, 24, 74, 74), "this.onReject=onReject").
expr(abstract_file_filter_1_expr8, this_expression, f_on_reject_339, expression, range(abstract_file_filter_1, 2526, 4, 74, 74), "this").
expr(abstract_file_filter_1_expr9, conditional_expression, abstract_file_filter_1_stmt5, expression, range(abstract_file_filter_1, 4876, 28, 156, 156), "accept ? onAccept : onReject").
%regex_file_filter_1 - org.apache.commons.io.filefilter.RegexFileFilter
expr(regex_file_filter_1_expr1, method_invocation, regex_file_filter_1_stmt1, expression, range(regex_file_filter_1, 2800, 42, 86, 86), "Objects.requireNonNull(pattern,\"pattern\")").
expr(regex_file_filter_1_expr2, method_invocation, regex_file_filter_1_stmt2, expression, range(regex_file_filter_1, 2859, 31, 87, 87), "Pattern.compile(pattern,flags)").
expr(regex_file_filter_1_expr3, constructor_invocation, regex_file_filter_1_block2, (statements, 0), range(regex_file_filter_1, 3724, 87, 114, 114), "this(pattern,(Function<Path,String> & Serializable)p -> p.getFileName().toString());").
expr(regex_file_filter_1_expr4, cast_expression, regex_file_filter_1_stmt3, (arguments, 1), range(regex_file_filter_1, 3738, 71, 114, 114), "(Function<Path,String> & Serializable)p -> p.getFileName().toString()").
expr(regex_file_filter_1_expr5, lambda_expression, regex_file_filter_1_expr4, expression, range(regex_file_filter_1, 3778, 31, 114, 114), "p -> p.getFileName().toString()").
expr(regex_file_filter_1_expr7, method_invocation, regex_file_filter_1_expr6, expression, range(regex_file_filter_1, 3783, 15, 114, 114), "p.getFileName()").
expr(regex_file_filter_1_expr6, method_invocation, regex_file_filter_1_expr5, body, range(regex_file_filter_1, 3783, 26, 114, 114), "p.getFileName().toString()").
expr(regex_file_filter_1_expr8, method_invocation, regex_file_filter_1_stmt4, expression, range(regex_file_filter_1, 4220, 42, 126, 126), "Objects.requireNonNull(pattern,\"pattern\")").
expr(regex_file_filter_1_expr9, assignment, regex_file_filter_1_stmt5, expression, range(regex_file_filter_1, 4272, 22, 127, 127), "this.pattern=pattern").
expr(regex_file_filter_1_expr11, this_expression, f_pattern_374, expression, range(regex_file_filter_1, 4272, 4, 127, 127), "this").
expr(regex_file_filter_1_expr10, field_access, regex_file_filter_1_expr9, left_hand_side, range(regex_file_filter_1, 4272, 12, 127, 127), "this.pattern").
expr(regex_file_filter_1_expr13, field_access, regex_file_filter_1_expr12, left_hand_side, range(regex_file_filter_1, 4304, 17, 128, 128), "this.pathToString").
expr(regex_file_filter_1_expr12, assignment, regex_file_filter_1_stmt6, expression, range(regex_file_filter_1, 4304, 32, 128, 128), "this.pathToString=pathToString").
expr(regex_file_filter_1_expr14, this_expression, f_path_to_string_375, expression, range(regex_file_filter_1, 4304, 4, 128, 128), "this").
expr(regex_file_filter_1_expr15, constructor_invocation, regex_file_filter_1_block4, (statements, 0), range(regex_file_filter_1, 4594, 17, 138, 138), "this(pattern,0);").
expr(regex_file_filter_1_expr16, constructor_invocation, regex_file_filter_1_block5, (statements, 0), range(regex_file_filter_1, 4988, 30, 149, 149), "this(compile(pattern,flags));").
expr(regex_file_filter_1_expr17, method_invocation, regex_file_filter_1_stmt8, (arguments, 0), range(regex_file_filter_1, 4993, 23, 149, 149), "compile(pattern,flags)").
expr(regex_file_filter_1_expr18, method_invocation, regex_file_filter_1_stmt9, expression, range(regex_file_filter_1, 6228, 70, 184, 184), "toFileVisitResult(pattern.matcher(pathToString.apply(path)).matches())").
expr(regex_file_filter_1_expr20, method_invocation, regex_file_filter_1_expr19, expression, range(regex_file_filter_1, 6246, 41, 184, 184), "pattern.matcher(pathToString.apply(path))").
expr(regex_file_filter_1_expr19, method_invocation, regex_file_filter_1_expr18, (arguments, 0), range(regex_file_filter_1, 6246, 51, 184, 184), "pattern.matcher(pathToString.apply(path)).matches()").
expr(regex_file_filter_1_expr21, method_invocation, regex_file_filter_1_expr20, (arguments, 0), range(regex_file_filter_1, 6262, 24, 184, 184), "pathToString.apply(path)").
expr(regex_file_filter_1_expr22, infix_expression, regex_file_filter_1_stmt10, expression, range(regex_file_filter_1, 6442, 43, 194, 194), "\"RegexFileFilter [pattern=\" + pattern + \"]\"").
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
expr(byte_array_output_stream_1_expr1, constructor_invocation, byte_array_output_stream_1_block1, (statements, 0), range(byte_array_output_stream_1, 3561, 19, 93, 93), "this(DEFAULT_SIZE);").
expr(byte_array_output_stream_1_expr2, infix_expression, byte_array_output_stream_1_stmt2, expression, range(byte_array_output_stream_1, 3884, 8, 104, 104), "size < 0").
expr(byte_array_output_stream_1_expr3, this_expression, byte_array_output_stream_1_stmt3, expression, range(byte_array_output_stream_1, 4010, 4, 107, 107), "this").
expr(byte_array_output_stream_1_expr4, method_invocation, byte_array_output_stream_1_stmt4, expression, range(byte_array_output_stream_1, 4030, 19, 108, 108), "needNewBuffer(size)").
expr(byte_array_output_stream_1_expr5, method_invocation, byte_array_output_stream_1_stmt5, expression, range(byte_array_output_stream_1, 4371, 17, 127, 127), "toByteArrayImpl()").
expr(byte_array_output_stream_1_expr9, infix_expression, byte_array_output_stream_1_expr8, left_operand, range(byte_array_output_stream_1, 4633, 41, 137, 138), "off < 0 || off > b.length").
expr(byte_array_output_stream_1_expr10, infix_expression, byte_array_output_stream_1_expr9, left_operand, range(byte_array_output_stream_1, 4633, 7, 137, 137), "off < 0").
expr(byte_array_output_stream_1_expr6, infix_expression, byte_array_output_stream_1_stmt6, expression, range(byte_array_output_stream_1, 4633, 141, 137, 141), "off < 0 || off > b.length || len < 0 || off + len > b.length || off + len < 0").
expr(byte_array_output_stream_1_expr7, infix_expression, byte_array_output_stream_1_expr6, left_operand, range(byte_array_output_stream_1, 4633, 108, 137, 140), "off < 0 || off > b.length || len < 0 || off + len > b.length").
expr(byte_array_output_stream_1_expr8, infix_expression, byte_array_output_stream_1_expr7, left_operand, range(byte_array_output_stream_1, 4633, 68, 137, 139), "off < 0 || off > b.length || len < 0").
expr(byte_array_output_stream_1_expr11, infix_expression, byte_array_output_stream_1_stmt7, expression, range(byte_array_output_stream_1, 4851, 8, 144, 144), "len == 0").
expr(byte_array_output_stream_1_expr12, this_expression, byte_array_output_stream_1_stmt8, expression, range(byte_array_output_stream_1, 4915, 4, 147, 147), "this").
expr(byte_array_output_stream_1_expr13, method_invocation, byte_array_output_stream_1_stmt9, expression, range(byte_array_output_stream_1, 4935, 22, 148, 148), "writeImpl(b,off,len)").
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
expr(iofile_filter_1_expr1, array_initializer, iofile_filter_1_code7, initializer, range(iofile_filter_1, 1419, 2, 39, 39), "{}").
expr(iofile_filter_1_expr3, method_invocation, iofile_filter_1_expr2, left_operand, range(iofile_filter_1, 3054, 18, 98, 98), "accept(path,null)").
expr(iofile_filter_1_expr2, infix_expression, iofile_filter_1_stmt1, expression, range(iofile_filter_1, 3054, 47, 98, 98), "accept(path,null) != FileVisitResult.TERMINATE").

%%% Names
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
name(t_standard_line_separator_3, simple_name, standard_line_separator_1_code2, name, range(standard_line_separator_1, 1016, 21, 28, 28), 'StandardLineSeparator').
name(f_cr_329, simple_name, standard_line_separator_1_code4, name, range(standard_line_separator_1, 1139, 2, 33, 33), 'CR').
name(f_crlf_7, simple_name, standard_line_separator_1_code5, name, range(standard_line_separator_1, 1257, 4, 38, 38), 'CRLF').
name(f_lf_5, simple_name, standard_line_separator_1_code6, name, range(standard_line_separator_1, 1372, 2, 43, 43), 'LF').
name(m_standard_line_separator_173, simple_name, standard_line_separator_1_code7, name, range(standard_line_separator_1, 1570, 21, 52, 52), 'StandardLineSeparator').
name(p_line_separator_330, simple_name, standard_line_separator_1_code8, name, range(standard_line_separator_1, 1605, 13, 52, 52), 'lineSeparator').
name(f_line_separator_331, simple_name, standard_line_separator_1_expr2, name, range(standard_line_separator_1, 1635, 13, 53, 53), 'lineSeparator').
name(t_objects_6, simple_name, standard_line_separator_1_expr3, expression, range(standard_line_separator_1, 1651, 7, 53, 53), 'Objects').
name(m_require_non_null_174, simple_name, standard_line_separator_1_expr3, name, range(standard_line_separator_1, 1659, 14, 53, 53), 'requireNonNull').
name(p_line_separator_330, simple_name, standard_line_separator_1_expr3, (arguments, 0), range(standard_line_separator_1, 1674, 13, 53, 53), 'lineSeparator').
name(f_line_separator_331, simple_name, standard_line_separator_1_stmt2, expression, range(standard_line_separator_1, 2204, 13, 72, 72), 'lineSeparator').
%ioutils_1 - org.apache.commons.io.IOUtils
name(f_dir_separator_1, simple_name, ioutils_1_code8, name, range(ioutils_1, 5591, 13, 145, 145), 'DIR_SEPARATOR').
name(q_separator_char_1, qualified_name, ioutils_1_code8, initializer, range(ioutils_1, 5607, 18, 145, 145), 'File.separatorChar').
name(t_file_1, simple_name, q_separator_char_1, qualifier, range(ioutils_1, 5607, 4, 145, 145), 'File').
name(f_empty_byte_array_2, simple_name, ioutils_1_code16, name, range(ioutils_1, 5985, 16, 162, 162), 'EMPTY_BYTE_ARRAY').
name(f_line_separator_3, simple_name, ioutils_1_code22, name, range(ioutils_1, 6408, 14, 183, 183), 'LINE_SEPARATOR').
name(t_system_2, simple_name, ioutils_1_expr2, expression, range(ioutils_1, 6425, 6, 183, 183), 'System').
name(m_line_separator_1, simple_name, ioutils_1_expr2, name, range(ioutils_1, 6432, 13, 183, 183), 'lineSeparator').
name(f_line_separator_unix_4, simple_name, ioutils_1_code28, name, range(ioutils_1, 6580, 19, 190, 190), 'LINE_SEPARATOR_UNIX').
name(q_lf_2, qualified_name, ioutils_1_expr3, expression, range(ioutils_1, 6602, 24, 190, 190), 'StandardLineSeparator.LF').
name(t_standard_line_separator_3, simple_name, q_lf_2, qualifier, range(ioutils_1, 6602, 21, 190, 190), 'StandardLineSeparator').
name(m_get_string_2, simple_name, ioutils_1_expr3, name, range(ioutils_1, 6627, 9, 190, 190), 'getString').
name(f_line_separator_windows_6, simple_name, ioutils_1_code34, name, range(ioutils_1, 6776, 22, 197, 197), 'LINE_SEPARATOR_WINDOWS').
name(t_standard_line_separator_3, simple_name, q_crlf_3, qualifier, range(ioutils_1, 6801, 21, 197, 197), 'StandardLineSeparator').
name(q_crlf_3, qualified_name, ioutils_1_expr4, expression, range(ioutils_1, 6801, 26, 197, 197), 'StandardLineSeparator.CRLF').
name(m_get_string_2, simple_name, ioutils_1_expr4, name, range(ioutils_1, 6828, 9, 197, 197), 'getString').
name(f_scratch_byte_buffer_rw_8, simple_name, ioutils_1_code44, name, range(ioutils_1, 6977, 22, 202, 202), 'SCRATCH_BYTE_BUFFER_RW').
name(t_thread_local_4, simple_name, ioutils_1_expr5, expression, range(ioutils_1, 7002, 11, 202, 202), 'ThreadLocal').
name(m_with_initial_3, simple_name, ioutils_1_expr5, name, range(ioutils_1, 7014, 11, 202, 202), 'withInitial').
name(t_ioutils_5, simple_name, ioutils_1_expr6, expression, range(ioutils_1, 7026, 7, 202, 202), 'IOUtils').
name(m_byte_array_4, simple_name, ioutils_1_expr6, name, range(ioutils_1, 7035, 9, 202, 202), 'byteArray').
name(f_scratch_byte_buffer_wo_9, simple_name, ioutils_1_code52, name, range(ioutils_1, 7167, 22, 207, 207), 'SCRATCH_BYTE_BUFFER_WO').
name(m_byte_array_4, simple_name, ioutils_1_expr7, name, range(ioutils_1, 7192, 9, 207, 207), 'byteArray').
name(f_scratch_char_buffer_rw_10, simple_name, ioutils_1_code62, name, range(ioutils_1, 7341, 22, 212, 212), 'SCRATCH_CHAR_BUFFER_RW').
name(t_thread_local_4, simple_name, ioutils_1_expr8, expression, range(ioutils_1, 7366, 11, 212, 212), 'ThreadLocal').
name(m_with_initial_3, simple_name, ioutils_1_expr8, name, range(ioutils_1, 7378, 11, 212, 212), 'withInitial').
name(t_ioutils_5, simple_name, ioutils_1_expr9, expression, range(ioutils_1, 7390, 7, 212, 212), 'IOUtils').
name(m_char_array_5, simple_name, ioutils_1_expr9, name, range(ioutils_1, 7399, 9, 212, 212), 'charArray').
name(f_scratch_char_buffer_wo_11, simple_name, ioutils_1_code70, name, range(ioutils_1, 7531, 22, 217, 217), 'SCRATCH_CHAR_BUFFER_WO').
name(m_char_array_5, simple_name, ioutils_1_expr10, name, range(ioutils_1, 7556, 9, 217, 217), 'charArray').
name(m_byte_array_14, simple_name, ioutils_1_expr11, name, range(ioutils_1, 14166, 9, 354, 354), 'byteArray').
name(f_default_buffer_size_24, simple_name, ioutils_1_expr11, (arguments, 0), range(ioutils_1, 14176, 19, 354, 354), 'DEFAULT_BUFFER_SIZE').
name(p_size_25, simple_name, ioutils_1_expr12, (dimensions, 0), range(ioutils_1, 14602, 4, 368, 368), 'size').
name(m_char_array_15, simple_name, ioutils_1_expr13, name, range(ioutils_1, 14854, 9, 378, 378), 'charArray').
name(f_default_buffer_size_24, simple_name, ioutils_1_expr13, (arguments, 0), range(ioutils_1, 14864, 19, 378, 378), 'DEFAULT_BUFFER_SIZE').
name(p_size_26, simple_name, ioutils_1_expr14, (dimensions, 0), range(ioutils_1, 15224, 4, 391, 391), 'size').
%regex_file_filter_test_1 - org.apache.commons.io.filefilter.RegexFileFilterTest
name(t_regex_file_filter_test_9, simple_name, regex_file_filter_test_1_code2, name, range(regex_file_filter_test_1, 1552, 19, 41, 41), 'RegexFileFilterTest').
name(v_expected_file_visit_result_391, simple_name, regex_file_filter_test_1_code7, name, range(regex_file_filter_test_1, 3107, 23, 67, 67), 'expectedFileVisitResult').
name(t_abstract_file_filter_10, simple_name, regex_file_filter_test_1_expr1, expression, range(regex_file_filter_test_1, 3133, 18, 67, 67), 'AbstractFileFilter').
name(m_to_default_file_visit_result_176, simple_name, regex_file_filter_test_1_expr1, name, range(regex_file_filter_test_1, 3152, 24, 67, 67), 'toDefaultFileVisitResult').
name(p_expected_390, simple_name, regex_file_filter_test_1_expr1, (arguments, 0), range(regex_file_filter_test_1, 3177, 8, 67, 67), 'expected').
name(m_assert_equals_216, simple_name, regex_file_filter_test_1_expr2, name, range(regex_file_filter_test_1, 3196, 12, 68, 68), 'assertEquals').
name(v_expected_file_visit_result_391, simple_name, regex_file_filter_test_1_expr2, (arguments, 0), range(regex_file_filter_test_1, 3209, 23, 68, 68), 'expectedFileVisitResult').
name(p_filter_388, simple_name, regex_file_filter_test_1_expr3, expression, range(regex_file_filter_test_1, 3234, 6, 68, 68), 'filter').
name(m_accept_193, simple_name, regex_file_filter_test_1_expr3, name, range(regex_file_filter_test_1, 3241, 6, 68, 68), 'accept').
name(p_path_389, simple_name, regex_file_filter_test_1_expr3, (arguments, 0), range(regex_file_filter_test_1, 3248, 4, 68, 68), 'path').
name(p_filter_388, simple_name, regex_file_filter_test_1_expr6, expression, range(regex_file_filter_test_1, 3295, 6, 69, 69), 'filter').
name(m_get_class_218, simple_name, regex_file_filter_test_1_expr6, name, range(regex_file_filter_test_1, 3302, 8, 69, 69), 'getClass').
name(m_get_name_217, simple_name, regex_file_filter_test_1_expr5, name, range(regex_file_filter_test_1, 3313, 7, 69, 69), 'getName').
name(v_expected_file_visit_result_391, simple_name, regex_file_filter_test_1_expr4, (extended_operands, 1), range(regex_file_filter_test_1, 3335, 23, 69, 69), 'expectedFileVisitResult').
name(p_path_389, simple_name, regex_file_filter_test_1_expr4, (extended_operands, 3), range(regex_file_filter_test_1, 3371, 4, 69, 69), 'path').
name(m_assert_equals_216, simple_name, regex_file_filter_test_1_expr7, name, range(regex_file_filter_test_1, 3386, 12, 70, 70), 'assertEquals').
name(v_expected_file_visit_result_391, simple_name, regex_file_filter_test_1_expr8, left_operand, range(regex_file_filter_test_1, 3399, 23, 70, 70), 'expectedFileVisitResult').
name(t_file_visit_result_7, simple_name, q_terminate_6, qualifier, range(regex_file_filter_test_1, 3426, 15, 70, 70), 'FileVisitResult').
name(q_terminate_6, qualified_name, regex_file_filter_test_1_expr8, right_operand, range(regex_file_filter_test_1, 3426, 25, 70, 70), 'FileVisitResult.TERMINATE').
name(p_filter_388, simple_name, regex_file_filter_test_1_expr9, expression, range(regex_file_filter_test_1, 3453, 6, 70, 70), 'filter').
name(m_matches_195, simple_name, regex_file_filter_test_1_expr9, name, range(regex_file_filter_test_1, 3460, 7, 70, 70), 'matches').
name(p_path_389, simple_name, regex_file_filter_test_1_expr9, (arguments, 0), range(regex_file_filter_test_1, 3468, 4, 70, 70), 'path').
name(p_filter_388, simple_name, regex_file_filter_test_1_expr12, expression, range(regex_file_filter_test_1, 3509, 6, 71, 71), 'filter').
name(m_get_class_218, simple_name, regex_file_filter_test_1_expr12, name, range(regex_file_filter_test_1, 3516, 8, 71, 71), 'getClass').
name(m_get_name_217, simple_name, regex_file_filter_test_1_expr11, name, range(regex_file_filter_test_1, 3527, 7, 71, 71), 'getName').
name(v_expected_file_visit_result_391, simple_name, regex_file_filter_test_1_expr10, (extended_operands, 1), range(regex_file_filter_test_1, 3549, 23, 71, 71), 'expectedFileVisitResult').
name(p_path_389, simple_name, regex_file_filter_test_1_expr10, (extended_operands, 3), range(regex_file_filter_test_1, 3585, 4, 71, 71), 'path').
name(p_path_389, simple_name, regex_file_filter_test_1_expr14, left_operand, range(regex_file_filter_test_1, 3605, 4, 73, 73), 'path').
name(p_path_389, simple_name, regex_file_filter_test_1_expr16, expression, range(regex_file_filter_test_1, 3621, 4, 73, 73), 'path').
name(m_get_parent_219, simple_name, regex_file_filter_test_1_expr16, name, range(regex_file_filter_test_1, 3626, 9, 73, 73), 'getParent').
name(m_assert_equals_216, simple_name, regex_file_filter_test_1_expr17, name, range(regex_file_filter_test_1, 3661, 12, 74, 74), 'assertEquals').
name(v_expected_file_visit_result_391, simple_name, regex_file_filter_test_1_expr17, (arguments, 0), range(regex_file_filter_test_1, 3674, 23, 74, 74), 'expectedFileVisitResult').
name(p_filter_388, simple_name, regex_file_filter_test_1_expr18, expression, range(regex_file_filter_test_1, 3699, 6, 74, 74), 'filter').
name(m_accept_193, simple_name, regex_file_filter_test_1_expr18, name, range(regex_file_filter_test_1, 3706, 6, 74, 74), 'accept').
name(p_path_389, simple_name, regex_file_filter_test_1_expr18, (arguments, 0), range(regex_file_filter_test_1, 3713, 4, 74, 74), 'path').
name(p_filter_388, simple_name, regex_file_filter_test_1_expr21, expression, range(regex_file_filter_test_1, 3766, 6, 75, 75), 'filter').
name(m_get_class_218, simple_name, regex_file_filter_test_1_expr21, name, range(regex_file_filter_test_1, 3773, 8, 75, 75), 'getClass').
name(m_get_name_217, simple_name, regex_file_filter_test_1_expr20, name, range(regex_file_filter_test_1, 3784, 7, 75, 75), 'getName').
name(v_expected_file_visit_result_391, simple_name, regex_file_filter_test_1_expr19, (extended_operands, 1), range(regex_file_filter_test_1, 3806, 23, 75, 75), 'expectedFileVisitResult').
name(m_assert_not_null_220, simple_name, regex_file_filter_test_1_expr22, name, range(regex_file_filter_test_1, 4149, 13, 82, 82), 'assertNotNull').
name(p_filter_388, simple_name, regex_file_filter_test_1_expr23, expression, range(regex_file_filter_test_1, 4163, 6, 82, 82), 'filter').
name(m_to_string_221, simple_name, regex_file_filter_test_1_expr23, name, range(regex_file_filter_test_1, 4170, 8, 82, 82), 'toString').
name(v_baos_393, simple_name, regex_file_filter_test_1_code10, name, range(regex_file_filter_test_1, 4329, 4, 86, 86), 'baos').
name(v_oos_394, simple_name, regex_file_filter_test_1_code13, name, range(regex_file_filter_test_1, 4403, 3, 87, 87), 'oos').
name(v_baos_393, simple_name, regex_file_filter_test_1_expr27, (arguments, 0), range(regex_file_filter_test_1, 4432, 4, 87, 87), 'baos').
name(v_oos_394, simple_name, regex_file_filter_test_1_expr28, expression, range(regex_file_filter_test_1, 4457, 3, 88, 88), 'oos').
name(m_write_object_225, simple_name, regex_file_filter_test_1_expr28, name, range(regex_file_filter_test_1, 4461, 11, 88, 88), 'writeObject').
name(p_serializable_392, simple_name, regex_file_filter_test_1_expr28, (arguments, 0), range(regex_file_filter_test_1, 4473, 12, 88, 88), 'serializable').
name(v_baos_393, simple_name, regex_file_filter_test_1_expr29, expression, range(regex_file_filter_test_1, 4514, 4, 90, 90), 'baos').
name(m_flush_226, simple_name, regex_file_filter_test_1_expr29, name, range(regex_file_filter_test_1, 4519, 5, 90, 90), 'flush').
name(m_assert_true_227, simple_name, regex_file_filter_test_1_expr30, name, range(regex_file_filter_test_1, 4540, 10, 91, 91), 'assertTrue').
name(v_baos_393, simple_name, regex_file_filter_test_1_expr33, expression, range(regex_file_filter_test_1, 4551, 4, 91, 91), 'baos').
name(m_to_byte_array_228, simple_name, regex_file_filter_test_1_expr33, name, range(regex_file_filter_test_1, 4556, 11, 91, 91), 'toByteArray').
name(f_length_395, simple_name, regex_file_filter_test_1_expr32, name, range(regex_file_filter_test_1, 4570, 6, 91, 91), 'length').
name(p_serializable_392, simple_name, regex_file_filter_test_1_stmt12, expression, range(regex_file_filter_test_1, 4608, 12, 93, 93), 'serializable').
name(v_path_396, simple_name, regex_file_filter_test_1_code18, name, range(regex_file_filter_test_1, 8112, 4, 165, 165), 'path').
name(t_paths_11, simple_name, regex_file_filter_test_1_expr34, expression, range(regex_file_filter_test_1, 8119, 5, 165, 165), 'Paths').
name(m_get_232, simple_name, regex_file_filter_test_1_expr34, name, range(regex_file_filter_test_1, 8125, 3, 165, 165), 'get').
name(v_pattern_str_397, simple_name, regex_file_filter_test_1_code21, name, range(regex_file_filter_test_1, 8173, 10, 166, 166), 'patternStr').
name(m_assert_filtering_215, simple_name, regex_file_filter_test_1_expr35, name, range(regex_file_filter_test_1, 8203, 15, 167, 167), 'assertFiltering').
name(m_assert_serializable_222, simple_name, regex_file_filter_test_1_expr36, name, range(regex_file_filter_test_1, 8219, 18, 167, 167), 'assertSerializable').
name(v_pattern_str_397, simple_name, regex_file_filter_test_1_expr37, (arguments, 0), range(regex_file_filter_test_1, 8258, 10, 167, 167), 'patternStr').
name(v_path_396, simple_name, regex_file_filter_test_1_expr35, (arguments, 1), range(regex_file_filter_test_1, 8272, 4, 167, 167), 'path').
name(m_assert_filtering_215, simple_name, regex_file_filter_test_1_expr38, name, range(regex_file_filter_test_1, 8293, 15, 168, 168), 'assertFiltering').
name(m_assert_serializable_222, simple_name, regex_file_filter_test_1_expr39, name, range(regex_file_filter_test_1, 8309, 18, 168, 168), 'assertSerializable').
name(t_pattern_8, simple_name, regex_file_filter_test_1_expr41, expression, range(regex_file_filter_test_1, 8348, 7, 168, 168), 'Pattern').
name(m_compile_233, simple_name, regex_file_filter_test_1_expr41, name, range(regex_file_filter_test_1, 8356, 7, 168, 168), 'compile').
name(v_pattern_str_397, simple_name, regex_file_filter_test_1_expr41, (arguments, 0), range(regex_file_filter_test_1, 8364, 10, 168, 168), 'patternStr').
name(t_path_12, simple_name, regex_file_filter_test_1_expr43, expression, range(regex_file_filter_test_1, 8417, 4, 168, 168), 'Path').
name(m_to_string_203, simple_name, regex_file_filter_test_1_expr43, name, range(regex_file_filter_test_1, 8423, 8, 168, 168), 'toString').
name(v_path_396, simple_name, regex_file_filter_test_1_expr38, (arguments, 1), range(regex_file_filter_test_1, 8435, 4, 168, 168), 'path').
name(m_assert_filtering_215, simple_name, regex_file_filter_test_1_expr44, name, range(regex_file_filter_test_1, 8473, 15, 170, 170), 'assertFiltering').
name(t_pattern_8, simple_name, regex_file_filter_test_1_expr46, expression, range(regex_file_filter_test_1, 8509, 7, 170, 170), 'Pattern').
name(m_compile_233, simple_name, regex_file_filter_test_1_expr46, name, range(regex_file_filter_test_1, 8517, 7, 170, 170), 'compile').
name(v_pattern_str_397, simple_name, regex_file_filter_test_1_expr46, (arguments, 0), range(regex_file_filter_test_1, 8525, 10, 170, 170), 'patternStr').
name(v_path_396, simple_name, regex_file_filter_test_1_expr44, (arguments, 1), range(regex_file_filter_test_1, 8585, 4, 170, 170), 'path').
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
name(t_abstract_byte_array_output_stream_13, simple_name, abstract_byte_array_output_stream_1_code2, name, range(abstract_byte_array_output_stream_1, 2469, 29, 60, 60), 'AbstractByteArrayOutputStream').
name(f_buffers_401, simple_name, abstract_byte_array_output_stream_1_code14, name, range(abstract_byte_array_output_stream_1, 3237, 7, 85, 85), 'buffers').
name(f_reuse_buffers_402, simple_name, abstract_byte_array_output_stream_1_code20, name, range(abstract_byte_array_output_stream_1, 3671, 12, 100, 100), 'reuseBuffers').
name(f_current_buffer_index_404, simple_name, abstract_byte_array_output_stream_1_expr2, left_operand, range(abstract_byte_array_output_stream_1, 4352, 18, 122, 122), 'currentBufferIndex').
name(f_buffers_401, simple_name, abstract_byte_array_output_stream_1_expr4, expression, range(abstract_byte_array_output_stream_1, 4373, 7, 122, 122), 'buffers').
name(m_size_238, simple_name, abstract_byte_array_output_stream_1_expr4, name, range(abstract_byte_array_output_stream_1, 4381, 4, 122, 122), 'size').
name(f_current_buffer_405, simple_name, abstract_byte_array_output_stream_1_expr5, left_operand, range(abstract_byte_array_output_stream_1, 4685, 13, 131, 131), 'currentBuffer').
name(v_new_buffer_size_406, simple_name, abstract_byte_array_output_stream_1_expr6, left_hand_side, range(abstract_byte_array_output_stream_1, 4726, 13, 132, 132), 'newBufferSize').
name(p_new_count_403, simple_name, abstract_byte_array_output_stream_1_expr6, right_hand_side, range(abstract_byte_array_output_stream_1, 4742, 8, 132, 132), 'newCount').
name(f_filled_buffer_sum_407, simple_name, abstract_byte_array_output_stream_1_expr7, left_hand_side, range(abstract_byte_array_output_stream_1, 4768, 15, 133, 133), 'filledBufferSum').
name(f_current_buffer_index_404, simple_name, abstract_byte_array_output_stream_1_expr8, operand, range(abstract_byte_array_output_stream_1, 4991, 18, 139, 139), 'currentBufferIndex').
name(f_current_buffer_405, simple_name, abstract_byte_array_output_stream_1_expr9, left_hand_side, range(abstract_byte_array_output_stream_1, 5025, 13, 140, 140), 'currentBuffer').
name(t_ioutils_5, simple_name, abstract_byte_array_output_stream_1_expr10, expression, range(abstract_byte_array_output_stream_1, 5041, 7, 140, 140), 'IOUtils').
name(m_byte_array_14, simple_name, abstract_byte_array_output_stream_1_expr10, name, range(abstract_byte_array_output_stream_1, 5049, 9, 140, 140), 'byteArray').
name(v_new_buffer_size_406, simple_name, abstract_byte_array_output_stream_1_expr10, (arguments, 0), range(abstract_byte_array_output_stream_1, 5059, 13, 140, 140), 'newBufferSize').
name(f_buffers_401, simple_name, abstract_byte_array_output_stream_1_expr11, expression, range(abstract_byte_array_output_stream_1, 5087, 7, 141, 141), 'buffers').
name(m_add_239, simple_name, abstract_byte_array_output_stream_1_expr11, name, range(abstract_byte_array_output_stream_1, 5095, 3, 141, 141), 'add').
name(f_current_buffer_405, simple_name, abstract_byte_array_output_stream_1_expr11, (arguments, 0), range(abstract_byte_array_output_stream_1, 5099, 13, 141, 141), 'currentBuffer').
name(v_remaining_408, simple_name, abstract_byte_array_output_stream_1_code25, name, range(abstract_byte_array_output_stream_1, 6552, 9, 193, 193), 'remaining').
name(f_count_409, simple_name, abstract_byte_array_output_stream_1_code25, initializer, range(abstract_byte_array_output_stream_1, 6564, 5, 193, 193), 'count').
name(v_remaining_408, simple_name, abstract_byte_array_output_stream_1_expr12, left_operand, range(abstract_byte_array_output_stream_1, 6583, 9, 194, 194), 'remaining').
name(v_new_buf_410, simple_name, abstract_byte_array_output_stream_1_code30, name, range(abstract_byte_array_output_stream_1, 6677, 6, 197, 197), 'newBuf').
name(t_ioutils_5, simple_name, abstract_byte_array_output_stream_1_expr13, expression, range(abstract_byte_array_output_stream_1, 6686, 7, 197, 197), 'IOUtils').
name(m_byte_array_14, simple_name, abstract_byte_array_output_stream_1_expr13, name, range(abstract_byte_array_output_stream_1, 6694, 9, 197, 197), 'byteArray').
name(v_remaining_408, simple_name, abstract_byte_array_output_stream_1_expr13, (arguments, 0), range(abstract_byte_array_output_stream_1, 6704, 9, 197, 197), 'remaining').
name(v_pos_411, simple_name, abstract_byte_array_output_stream_1_code32, name, range(abstract_byte_array_output_stream_1, 6728, 3, 198, 198), 'pos').
name(v_buf_412, simple_name, abstract_byte_array_output_stream_1_code33, name, range(abstract_byte_array_output_stream_1, 6763, 3, 199, 199), 'buf').
name(f_buffers_401, simple_name, abstract_byte_array_output_stream_1_stmt12, expression, range(abstract_byte_array_output_stream_1, 6769, 7, 199, 199), 'buffers').
name(v_c_413, simple_name, abstract_byte_array_output_stream_1_code40, name, range(abstract_byte_array_output_stream_1, 6802, 1, 200, 200), 'c').
name(t_math_14, simple_name, abstract_byte_array_output_stream_1_expr14, expression, range(abstract_byte_array_output_stream_1, 6806, 4, 200, 200), 'Math').
name(m_min_245, simple_name, abstract_byte_array_output_stream_1_expr14, name, range(abstract_byte_array_output_stream_1, 6811, 3, 200, 200), 'min').
name(q_length_6, qualified_name, abstract_byte_array_output_stream_1_expr14, (arguments, 0), range(abstract_byte_array_output_stream_1, 6815, 10, 200, 200), 'buf.length').
name(v_buf_412, simple_name, q_length_6, qualifier, range(abstract_byte_array_output_stream_1, 6815, 3, 200, 200), 'buf').
name(v_remaining_408, simple_name, abstract_byte_array_output_stream_1_expr14, (arguments, 1), range(abstract_byte_array_output_stream_1, 6827, 9, 200, 200), 'remaining').
name(t_system_2, simple_name, abstract_byte_array_output_stream_1_expr15, expression, range(abstract_byte_array_output_stream_1, 6851, 6, 201, 201), 'System').
name(m_arraycopy_246, simple_name, abstract_byte_array_output_stream_1_expr15, name, range(abstract_byte_array_output_stream_1, 6858, 9, 201, 201), 'arraycopy').
name(v_buf_412, simple_name, abstract_byte_array_output_stream_1_expr15, (arguments, 0), range(abstract_byte_array_output_stream_1, 6868, 3, 201, 201), 'buf').
name(v_new_buf_410, simple_name, abstract_byte_array_output_stream_1_expr15, (arguments, 2), range(abstract_byte_array_output_stream_1, 6876, 6, 201, 201), 'newBuf').
name(v_pos_411, simple_name, abstract_byte_array_output_stream_1_expr15, (arguments, 3), range(abstract_byte_array_output_stream_1, 6884, 3, 201, 201), 'pos').
name(v_c_413, simple_name, abstract_byte_array_output_stream_1_expr15, (arguments, 4), range(abstract_byte_array_output_stream_1, 6889, 1, 201, 201), 'c').
name(v_pos_411, simple_name, abstract_byte_array_output_stream_1_expr16, left_hand_side, range(abstract_byte_array_output_stream_1, 6905, 3, 202, 202), 'pos').
name(v_c_413, simple_name, abstract_byte_array_output_stream_1_expr16, right_hand_side, range(abstract_byte_array_output_stream_1, 6912, 1, 202, 202), 'c').
name(v_remaining_408, simple_name, abstract_byte_array_output_stream_1_expr17, left_hand_side, range(abstract_byte_array_output_stream_1, 6927, 9, 203, 203), 'remaining').
name(v_c_413, simple_name, abstract_byte_array_output_stream_1_expr17, right_hand_side, range(abstract_byte_array_output_stream_1, 6940, 1, 203, 203), 'c').
name(v_remaining_408, simple_name, abstract_byte_array_output_stream_1_expr18, left_operand, range(abstract_byte_array_output_stream_1, 6959, 9, 204, 204), 'remaining').
name(v_new_buf_410, simple_name, abstract_byte_array_output_stream_1_stmt19, expression, range(abstract_byte_array_output_stream_1, 7039, 6, 208, 208), 'newBuf').
name(v_new_count_425, simple_name, abstract_byte_array_output_stream_1_code44, name, range(abstract_byte_array_output_stream_1, 11289, 8, 323, 323), 'newCount').
name(f_count_409, simple_name, abstract_byte_array_output_stream_1_expr19, left_operand, range(abstract_byte_array_output_stream_1, 11300, 5, 323, 323), 'count').
name(p_len_424, simple_name, abstract_byte_array_output_stream_1_expr19, right_operand, range(abstract_byte_array_output_stream_1, 11308, 3, 323, 323), 'len').
name(v_remaining_426, simple_name, abstract_byte_array_output_stream_1_code46, name, range(abstract_byte_array_output_stream_1, 11325, 9, 324, 324), 'remaining').
name(p_len_424, simple_name, abstract_byte_array_output_stream_1_code46, initializer, range(abstract_byte_array_output_stream_1, 11337, 3, 324, 324), 'len').
name(v_in_buffer_pos_427, simple_name, abstract_byte_array_output_stream_1_code48, name, range(abstract_byte_array_output_stream_1, 11354, 11, 325, 325), 'inBufferPos').
name(f_count_409, simple_name, abstract_byte_array_output_stream_1_expr20, left_operand, range(abstract_byte_array_output_stream_1, 11368, 5, 325, 325), 'count').
name(f_filled_buffer_sum_407, simple_name, abstract_byte_array_output_stream_1_expr20, right_operand, range(abstract_byte_array_output_stream_1, 11376, 15, 325, 325), 'filledBufferSum').
name(v_remaining_426, simple_name, abstract_byte_array_output_stream_1_expr21, left_operand, range(abstract_byte_array_output_stream_1, 11408, 9, 326, 326), 'remaining').
name(v_part_428, simple_name, abstract_byte_array_output_stream_1_code51, name, range(abstract_byte_array_output_stream_1, 11447, 4, 327, 327), 'part').
name(t_math_14, simple_name, abstract_byte_array_output_stream_1_expr22, expression, range(abstract_byte_array_output_stream_1, 11454, 4, 327, 327), 'Math').
name(m_min_245, simple_name, abstract_byte_array_output_stream_1_expr22, name, range(abstract_byte_array_output_stream_1, 11459, 3, 327, 327), 'min').
name(v_remaining_426, simple_name, abstract_byte_array_output_stream_1_expr22, (arguments, 0), range(abstract_byte_array_output_stream_1, 11463, 9, 327, 327), 'remaining').
name(q_length_7, qualified_name, abstract_byte_array_output_stream_1_expr23, left_operand, range(abstract_byte_array_output_stream_1, 11474, 20, 327, 327), 'currentBuffer.length').
name(f_current_buffer_405, simple_name, q_length_7, qualifier, range(abstract_byte_array_output_stream_1, 11474, 13, 327, 327), 'currentBuffer').
name(v_in_buffer_pos_427, simple_name, abstract_byte_array_output_stream_1_expr23, right_operand, range(abstract_byte_array_output_stream_1, 11497, 11, 327, 327), 'inBufferPos').
name(t_system_2, simple_name, abstract_byte_array_output_stream_1_expr24, expression, range(abstract_byte_array_output_stream_1, 11523, 6, 328, 328), 'System').
name(m_arraycopy_246, simple_name, abstract_byte_array_output_stream_1_expr24, name, range(abstract_byte_array_output_stream_1, 11530, 9, 328, 328), 'arraycopy').
name(p_b_422, simple_name, abstract_byte_array_output_stream_1_expr24, (arguments, 0), range(abstract_byte_array_output_stream_1, 11540, 1, 328, 328), 'b').
name(p_off_423, simple_name, abstract_byte_array_output_stream_1_expr26, left_operand, range(abstract_byte_array_output_stream_1, 11543, 3, 328, 328), 'off').
name(p_len_424, simple_name, abstract_byte_array_output_stream_1_expr26, right_operand, range(abstract_byte_array_output_stream_1, 11549, 3, 328, 328), 'len').
name(v_remaining_426, simple_name, abstract_byte_array_output_stream_1_expr25, right_operand, range(abstract_byte_array_output_stream_1, 11555, 9, 328, 328), 'remaining').
name(f_current_buffer_405, simple_name, abstract_byte_array_output_stream_1_expr24, (arguments, 2), range(abstract_byte_array_output_stream_1, 11566, 13, 328, 328), 'currentBuffer').
name(v_in_buffer_pos_427, simple_name, abstract_byte_array_output_stream_1_expr24, (arguments, 3), range(abstract_byte_array_output_stream_1, 11581, 11, 328, 328), 'inBufferPos').
name(v_part_428, simple_name, abstract_byte_array_output_stream_1_expr24, (arguments, 4), range(abstract_byte_array_output_stream_1, 11594, 4, 328, 328), 'part').
name(v_remaining_426, simple_name, abstract_byte_array_output_stream_1_expr27, left_hand_side, range(abstract_byte_array_output_stream_1, 11613, 9, 329, 329), 'remaining').
name(v_part_428, simple_name, abstract_byte_array_output_stream_1_expr27, right_hand_side, range(abstract_byte_array_output_stream_1, 11626, 4, 329, 329), 'part').
name(v_remaining_426, simple_name, abstract_byte_array_output_stream_1_expr28, left_operand, range(abstract_byte_array_output_stream_1, 11648, 9, 330, 330), 'remaining').
name(f_count_409, simple_name, abstract_byte_array_output_stream_1_expr29, left_hand_side, range(abstract_byte_array_output_stream_1, 11771, 5, 335, 335), 'count').
name(v_new_count_425, simple_name, abstract_byte_array_output_stream_1_expr29, right_hand_side, range(abstract_byte_array_output_stream_1, 11779, 8, 335, 335), 'newCount').
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
name(p_accept_333, simple_name, abstract_file_filter_1_expr1, expression, range(abstract_file_filter_1, 1771, 6, 45, 45), 'accept').
name(t_file_visit_result_7, simple_name, q_continue_4, qualifier, range(abstract_file_filter_1, 1780, 15, 45, 45), 'FileVisitResult').
name(q_continue_4, qualified_name, abstract_file_filter_1_expr1, then_expression, range(abstract_file_filter_1, 1780, 24, 45, 45), 'FileVisitResult.CONTINUE').
name(q_terminate_5, qualified_name, abstract_file_filter_1_expr1, else_expression, range(abstract_file_filter_1, 1807, 25, 45, 45), 'FileVisitResult.TERMINATE').
name(t_file_visit_result_7, simple_name, q_terminate_5, qualifier, range(abstract_file_filter_1, 1807, 15, 45, 45), 'FileVisitResult').
name(q_continue_6, qualified_name, abstract_file_filter_1_stmt2, (arguments, 0), range(abstract_file_filter_1, 2148, 24, 62, 62), 'FileVisitResult.CONTINUE').
name(t_file_visit_result_7, simple_name, q_continue_6, qualifier, range(abstract_file_filter_1, 2148, 15, 62, 62), 'FileVisitResult').
name(q_terminate_6, qualified_name, abstract_file_filter_1_stmt2, (arguments, 1), range(abstract_file_filter_1, 2174, 25, 62, 62), 'FileVisitResult.TERMINATE').
name(t_file_visit_result_7, simple_name, q_terminate_6, qualifier, range(abstract_file_filter_1, 2174, 15, 62, 62), 'FileVisitResult').
name(m_abstract_file_filter_178, simple_name, abstract_file_filter_1_code5, name, range(abstract_file_filter_1, 2399, 18, 72, 72), 'AbstractFileFilter').
name(p_on_accept_336, simple_name, abstract_file_filter_1_code7, name, range(abstract_file_filter_1, 2440, 8, 72, 72), 'onAccept').
name(p_on_reject_337, simple_name, abstract_file_filter_1_code10, name, range(abstract_file_filter_1, 2472, 8, 72, 72), 'onReject').
name(f_on_accept_338, simple_name, abstract_file_filter_1_expr4, name, range(abstract_file_filter_1, 2497, 8, 73, 73), 'onAccept').
name(p_on_accept_336, simple_name, abstract_file_filter_1_expr3, right_hand_side, range(abstract_file_filter_1, 2508, 8, 73, 73), 'onAccept').
name(f_on_reject_339, simple_name, abstract_file_filter_1_expr7, name, range(abstract_file_filter_1, 2531, 8, 74, 74), 'onReject').
name(p_on_reject_337, simple_name, abstract_file_filter_1_expr6, right_hand_side, range(abstract_file_filter_1, 2542, 8, 74, 74), 'onReject').
name(p_accept_353, simple_name, abstract_file_filter_1_expr9, expression, range(abstract_file_filter_1, 4876, 6, 156, 156), 'accept').
name(f_on_accept_338, simple_name, abstract_file_filter_1_expr9, then_expression, range(abstract_file_filter_1, 4885, 8, 156, 156), 'onAccept').
name(f_on_reject_339, simple_name, abstract_file_filter_1_expr9, else_expression, range(abstract_file_filter_1, 4896, 8, 156, 156), 'onReject').
%regex_file_filter_1 - org.apache.commons.io.filefilter.RegexFileFilter
name(t_objects_6, simple_name, regex_file_filter_1_expr1, expression, range(regex_file_filter_1, 2800, 7, 86, 86), 'Objects').
name(m_require_non_null_174, simple_name, regex_file_filter_1_expr1, name, range(regex_file_filter_1, 2808, 14, 86, 86), 'requireNonNull').
name(p_pattern_367, simple_name, regex_file_filter_1_expr1, (arguments, 0), range(regex_file_filter_1, 2823, 7, 86, 86), 'pattern').
name(t_pattern_8, simple_name, regex_file_filter_1_expr2, expression, range(regex_file_filter_1, 2859, 7, 87, 87), 'Pattern').
name(m_compile_199, simple_name, regex_file_filter_1_expr2, name, range(regex_file_filter_1, 2867, 7, 87, 87), 'compile').
name(p_pattern_367, simple_name, regex_file_filter_1_expr2, (arguments, 0), range(regex_file_filter_1, 2875, 7, 87, 87), 'pattern').
name(p_flags_368, simple_name, regex_file_filter_1_expr2, (arguments, 1), range(regex_file_filter_1, 2884, 5, 87, 87), 'flags').
name(p_pattern_370, simple_name, regex_file_filter_1_stmt3, (arguments, 0), range(regex_file_filter_1, 3729, 7, 114, 114), 'pattern').
name(p_p_371, simple_name, regex_file_filter_1_code11, name, range(regex_file_filter_1, 3778, 1, 114, 114), 'p').
name(p_p_371, simple_name, regex_file_filter_1_expr7, expression, range(regex_file_filter_1, 3783, 1, 114, 114), 'p').
name(m_get_file_name_204, simple_name, regex_file_filter_1_expr7, name, range(regex_file_filter_1, 3785, 11, 114, 114), 'getFileName').
name(m_to_string_203, simple_name, regex_file_filter_1_expr6, name, range(regex_file_filter_1, 3799, 8, 114, 114), 'toString').
name(m_regex_file_filter_202, simple_name, regex_file_filter_1_code12, name, range(regex_file_filter_1, 4128, 15, 125, 125), 'RegexFileFilter').
name(p_pattern_372, simple_name, regex_file_filter_1_code14, name, range(regex_file_filter_1, 4158, 7, 125, 125), 'pattern').
name(p_path_to_string_373, simple_name, regex_file_filter_1_code17, name, range(regex_file_filter_1, 4196, 12, 125, 125), 'pathToString').
name(t_objects_6, simple_name, regex_file_filter_1_expr8, expression, range(regex_file_filter_1, 4220, 7, 126, 126), 'Objects').
name(m_require_non_null_174, simple_name, regex_file_filter_1_expr8, name, range(regex_file_filter_1, 4228, 14, 126, 126), 'requireNonNull').
name(p_pattern_372, simple_name, regex_file_filter_1_expr8, (arguments, 0), range(regex_file_filter_1, 4243, 7, 126, 126), 'pattern').
name(f_pattern_374, simple_name, regex_file_filter_1_expr10, name, range(regex_file_filter_1, 4277, 7, 127, 127), 'pattern').
name(p_pattern_372, simple_name, regex_file_filter_1_expr9, right_hand_side, range(regex_file_filter_1, 4287, 7, 127, 127), 'pattern').
name(f_path_to_string_375, simple_name, regex_file_filter_1_expr13, name, range(regex_file_filter_1, 4309, 12, 128, 128), 'pathToString').
name(p_path_to_string_373, simple_name, regex_file_filter_1_expr12, right_hand_side, range(regex_file_filter_1, 4324, 12, 128, 128), 'pathToString').
name(p_pattern_376, simple_name, regex_file_filter_1_stmt7, (arguments, 0), range(regex_file_filter_1, 4599, 7, 138, 138), 'pattern').
name(m_compile_198, simple_name, regex_file_filter_1_expr17, name, range(regex_file_filter_1, 4993, 7, 149, 149), 'compile').
name(p_pattern_377, simple_name, regex_file_filter_1_expr17, (arguments, 0), range(regex_file_filter_1, 5001, 7, 149, 149), 'pattern').
name(p_flags_378, simple_name, regex_file_filter_1_expr17, (arguments, 1), range(regex_file_filter_1, 5010, 5, 149, 149), 'flags').
name(m_to_file_visit_result_187, simple_name, regex_file_filter_1_expr18, name, range(regex_file_filter_1, 6228, 17, 184, 184), 'toFileVisitResult').
name(f_pattern_374, simple_name, regex_file_filter_1_expr20, expression, range(regex_file_filter_1, 6246, 7, 184, 184), 'pattern').
name(m_matcher_211, simple_name, regex_file_filter_1_expr20, name, range(regex_file_filter_1, 6254, 7, 184, 184), 'matcher').
name(f_path_to_string_375, simple_name, regex_file_filter_1_expr21, expression, range(regex_file_filter_1, 6262, 12, 184, 184), 'pathToString').
name(m_apply_212, simple_name, regex_file_filter_1_expr21, name, range(regex_file_filter_1, 6275, 5, 184, 184), 'apply').
name(p_path_383, simple_name, regex_file_filter_1_expr21, (arguments, 0), range(regex_file_filter_1, 6281, 4, 184, 184), 'path').
name(m_matches_210, simple_name, regex_file_filter_1_expr19, name, range(regex_file_filter_1, 6288, 7, 184, 184), 'matches').
name(f_pattern_374, simple_name, regex_file_filter_1_expr22, right_operand, range(regex_file_filter_1, 6472, 7, 194, 194), 'pattern').
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
name(f_default_size_436, simple_name, byte_array_output_stream_1_stmt1, (arguments, 0), range(byte_array_output_stream_1, 3566, 12, 93, 93), 'DEFAULT_SIZE').
name(m_byte_array_output_stream_262, simple_name, byte_array_output_stream_1_code4, name, range(byte_array_output_stream_1, 3832, 21, 103, 103), 'ByteArrayOutputStream').
name(p_size_437, simple_name, byte_array_output_stream_1_code6, name, range(byte_array_output_stream_1, 3864, 4, 103, 103), 'size').
name(p_size_437, simple_name, byte_array_output_stream_1_expr2, left_operand, range(byte_array_output_stream_1, 3884, 4, 104, 104), 'size').
name(m_need_new_buffer_237, simple_name, byte_array_output_stream_1_expr4, name, range(byte_array_output_stream_1, 4030, 13, 108, 108), 'needNewBuffer').
name(p_size_437, simple_name, byte_array_output_stream_1_expr4, (arguments, 0), range(byte_array_output_stream_1, 4044, 4, 108, 108), 'size').
name(m_to_byte_array_impl_244, simple_name, byte_array_output_stream_1_expr5, name, range(byte_array_output_stream_1, 4371, 15, 127, 127), 'toByteArrayImpl').
name(p_off_439, simple_name, byte_array_output_stream_1_expr10, left_operand, range(byte_array_output_stream_1, 4633, 3, 137, 137), 'off').
name(p_len_440, simple_name, byte_array_output_stream_1_expr11, left_operand, range(byte_array_output_stream_1, 4851, 3, 144, 144), 'len').
name(m_write_impl_255, simple_name, byte_array_output_stream_1_expr13, name, range(byte_array_output_stream_1, 4935, 9, 148, 148), 'writeImpl').
name(p_b_438, simple_name, byte_array_output_stream_1_expr13, (arguments, 0), range(byte_array_output_stream_1, 4945, 1, 148, 148), 'b').
name(p_off_439, simple_name, byte_array_output_stream_1_expr13, (arguments, 1), range(byte_array_output_stream_1, 4948, 3, 148, 148), 'off').
name(p_len_440, simple_name, byte_array_output_stream_1_expr13, (arguments, 2), range(byte_array_output_stream_1, 4953, 3, 148, 148), 'len').
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
name(f_empty_string_array_358, simple_name, iofile_filter_1_code7, name, range(iofile_filter_1, 1398, 18, 39, 39), 'EMPTY_STRING_ARRAY').
name(m_accept_193, simple_name, iofile_filter_1_expr3, name, range(iofile_filter_1, 3054, 6, 98, 98), 'accept').
name(p_path_365, simple_name, iofile_filter_1_expr3, (arguments, 0), range(iofile_filter_1, 3061, 4, 98, 98), 'path').
name(t_file_visit_result_7, simple_name, q_terminate_6, qualifier, range(iofile_filter_1, 3076, 15, 98, 98), 'FileVisitResult').
name(q_terminate_6, qualified_name, iofile_filter_1_expr2, right_operand, range(iofile_filter_1, 3076, 25, 98, 98), 'FileVisitResult.TERMINATE').

%%% Literals
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
literal(standard_line_separator_1_literal1, string_literal, standard_line_separator_1_code4, (arguments, 0), range(standard_line_separator_1, 1142, 4, 33, 33), "\r").
literal(standard_line_separator_1_literal2, string_literal, standard_line_separator_1_code5, (arguments, 0), range(standard_line_separator_1, 1262, 6, 38, 38), "\r\n").
literal(standard_line_separator_1_literal3, string_literal, standard_line_separator_1_code6, (arguments, 0), range(standard_line_separator_1, 1375, 4, 43, 43), "\n").
literal(standard_line_separator_1_literal4, string_literal, standard_line_separator_1_expr3, (arguments, 1), range(standard_line_separator_1, 1689, 15, 53, 53), "lineSeparator").
%ioutils_1 - org.apache.commons.io.IOUtils
%regex_file_filter_test_1 - org.apache.commons.io.filefilter.RegexFileFilterTest
literal(regex_file_filter_test_1_literal1, null_literal, regex_file_filter_test_1_expr3, (arguments, 1), range(regex_file_filter_test_1, 3254, 4, 68, 68), null).
literal(regex_file_filter_test_1_literal2, string_literal, regex_file_filter_test_1_expr4, left_operand, range(regex_file_filter_test_1, 3277, 15, 69, 69), "Filter(Path) ").
literal(regex_file_filter_test_1_literal3, string_literal, regex_file_filter_test_1_expr4, (extended_operands, 0), range(regex_file_filter_test_1, 3325, 7, 69, 69), " not ").
literal(regex_file_filter_test_1_literal4, string_literal, regex_file_filter_test_1_expr4, (extended_operands, 2), range(regex_file_filter_test_1, 3361, 7, 69, 69), " for ").
literal(regex_file_filter_test_1_literal5, string_literal, regex_file_filter_test_1_expr10, left_operand, range(regex_file_filter_test_1, 3491, 15, 71, 71), "Filter(Path) ").
literal(regex_file_filter_test_1_literal6, string_literal, regex_file_filter_test_1_expr10, (extended_operands, 0), range(regex_file_filter_test_1, 3539, 7, 71, 71), " not ").
literal(regex_file_filter_test_1_literal7, string_literal, regex_file_filter_test_1_expr10, (extended_operands, 2), range(regex_file_filter_test_1, 3575, 7, 71, 71), " for ").
literal(regex_file_filter_test_1_literal8, null_literal, regex_file_filter_test_1_expr14, right_operand, range(regex_file_filter_test_1, 3613, 4, 73, 73), null).
literal(regex_file_filter_test_1_literal9, null_literal, regex_file_filter_test_1_expr15, right_operand, range(regex_file_filter_test_1, 3641, 4, 73, 73), null).
literal(regex_file_filter_test_1_literal10, null_literal, regex_file_filter_test_1_expr18, (arguments, 1), range(regex_file_filter_test_1, 3719, 4, 74, 74), null).
literal(regex_file_filter_test_1_literal11, string_literal, regex_file_filter_test_1_expr19, left_operand, range(regex_file_filter_test_1, 3742, 21, 75, 75), "Filter(Path, Path) ").
literal(regex_file_filter_test_1_literal12, string_literal, regex_file_filter_test_1_expr19, (extended_operands, 0), range(regex_file_filter_test_1, 3796, 7, 75, 75), " not ").
literal(regex_file_filter_test_1_literal13, string_literal, regex_file_filter_test_1_expr19, (extended_operands, 2), range(regex_file_filter_test_1, 3832, 7, 75, 75), " for ").
literal(regex_file_filter_test_1_literal14, number_literal, regex_file_filter_test_1_expr31, right_operand, range(regex_file_filter_test_1, 4579, 1, 91, 91), 0).
literal(regex_file_filter_test_1_literal15, string_literal, regex_file_filter_test_1_expr34, (arguments, 0), range(regex_file_filter_test_1, 8129, 8, 165, 165), "folder").
literal(regex_file_filter_test_1_literal16, string_literal, regex_file_filter_test_1_expr34, (arguments, 1), range(regex_file_filter_test_1, 8139, 10, 165, 165), "Foo.java").
literal(regex_file_filter_test_1_literal17, string_literal, regex_file_filter_test_1_code21, initializer, range(regex_file_filter_test_1, 8186, 7, 166, 166), "Foo.*").
literal(regex_file_filter_test_1_literal18, boolean_literal, regex_file_filter_test_1_expr35, (arguments, 2), range(regex_file_filter_test_1, 8278, 4, 167, 167), true).
literal(regex_file_filter_test_1_literal19, boolean_literal, regex_file_filter_test_1_expr38, (arguments, 2), range(regex_file_filter_test_1, 8457, 5, 169, 169), false).
literal(regex_file_filter_test_1_literal21, null_literal, regex_file_filter_test_1_expr47, expression, range(regex_file_filter_test_1, 8578, 4, 170, 170), null).
literal(regex_file_filter_test_1_literal20, boolean_literal, regex_file_filter_test_1_expr44, (arguments, 2), range(regex_file_filter_test_1, 8591, 5, 170, 170), false).
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
literal(abstract_byte_array_output_stream_1_literal1, boolean_literal, abstract_byte_array_output_stream_1_code20, initializer, range(abstract_byte_array_output_stream_1, 3686, 4, 100, 100), true).
literal(abstract_byte_array_output_stream_1_literal2, number_literal, abstract_byte_array_output_stream_1_expr3, right_operand, range(abstract_byte_array_output_stream_1, 4390, 1, 122, 122), 1).
literal(abstract_byte_array_output_stream_1_literal3, null_literal, abstract_byte_array_output_stream_1_expr5, right_operand, range(abstract_byte_array_output_stream_1, 4702, 4, 131, 131), null).
literal(abstract_byte_array_output_stream_1_literal4, number_literal, abstract_byte_array_output_stream_1_expr7, right_hand_side, range(abstract_byte_array_output_stream_1, 4786, 1, 133, 133), 0).
literal(abstract_byte_array_output_stream_1_literal5, number_literal, abstract_byte_array_output_stream_1_expr12, right_operand, range(abstract_byte_array_output_stream_1, 6596, 1, 194, 194), 0).
literal(abstract_byte_array_output_stream_1_literal6, number_literal, abstract_byte_array_output_stream_1_code32, initializer, range(abstract_byte_array_output_stream_1, 6734, 1, 198, 198), 0).
literal(abstract_byte_array_output_stream_1_literal7, number_literal, abstract_byte_array_output_stream_1_expr15, (arguments, 1), range(abstract_byte_array_output_stream_1, 6873, 1, 201, 201), 0).
literal(abstract_byte_array_output_stream_1_literal8, number_literal, abstract_byte_array_output_stream_1_expr18, right_operand, range(abstract_byte_array_output_stream_1, 6972, 1, 204, 204), 0).
literal(abstract_byte_array_output_stream_1_literal9, number_literal, abstract_byte_array_output_stream_1_expr21, right_operand, range(abstract_byte_array_output_stream_1, 11420, 1, 326, 326), 0).
literal(abstract_byte_array_output_stream_1_literal10, number_literal, abstract_byte_array_output_stream_1_expr28, right_operand, range(abstract_byte_array_output_stream_1, 11660, 1, 330, 330), 0).
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
%regex_file_filter_1 - org.apache.commons.io.filefilter.RegexFileFilter
literal(regex_file_filter_1_literal1, string_literal, regex_file_filter_1_expr1, (arguments, 1), range(regex_file_filter_1, 2832, 9, 86, 86), "pattern").
literal(regex_file_filter_1_literal2, string_literal, regex_file_filter_1_expr8, (arguments, 1), range(regex_file_filter_1, 4252, 9, 126, 126), "pattern").
literal(regex_file_filter_1_literal3, number_literal, regex_file_filter_1_stmt7, (arguments, 1), range(regex_file_filter_1, 4608, 1, 138, 138), 0).
literal(regex_file_filter_1_literal4, string_literal, regex_file_filter_1_expr22, left_operand, range(regex_file_filter_1, 6442, 27, 194, 194), "RegexFileFilter [pattern=").
literal(regex_file_filter_1_literal5, string_literal, regex_file_filter_1_expr22, (extended_operands, 0), range(regex_file_filter_1, 6482, 3, 194, 194), "]").
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
literal(byte_array_output_stream_1_literal1, number_literal, byte_array_output_stream_1_expr2, right_operand, range(byte_array_output_stream_1, 3891, 1, 104, 104), 0).
literal(byte_array_output_stream_1_literal2, number_literal, byte_array_output_stream_1_expr10, right_operand, range(byte_array_output_stream_1, 4639, 1, 137, 137), 0).
literal(byte_array_output_stream_1_literal3, number_literal, byte_array_output_stream_1_expr11, right_operand, range(byte_array_output_stream_1, 4858, 1, 144, 144), 0).
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
literal(iofile_filter_1_literal1, null_literal, iofile_filter_1_expr3, (arguments, 1), range(iofile_filter_1, 3067, 4, 98, 98), null).

%%% Other Code Entities
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
code(standard_line_separator_1_code1, compilation_unit, range(standard_line_separator_1, 0, 2227, 1, -1)).
code(standard_line_separator_1_code2, enum_declaration, standard_line_separator_1_code1, (types, 0), range(standard_line_separator_1, 896, 1330, 23, 74)).
code(standard_line_separator_1_code3, modifier, standard_line_separator_1_code2, (modifiers, 0), range(standard_line_separator_1, 1004, 6, 28, 28)).
code(standard_line_separator_1_code4, enum_constant_declaration, standard_line_separator_1_code2, (enum_constants, 0), range(standard_line_separator_1, 1045, 102, 30, 33)).
code(standard_line_separator_1_code5, enum_constant_declaration, standard_line_separator_1_code2, (enum_constants, 1), range(standard_line_separator_1, 1154, 115, 35, 38)).
code(standard_line_separator_1_code6, enum_constant_declaration, standard_line_separator_1_code2, (enum_constants, 2), range(standard_line_separator_1, 1276, 104, 40, 43)).
code(standard_line_separator_1_code7, method_declaration, standard_line_separator_1_code2, (body_declarations, 1), range(standard_line_separator_1, 1428, 284, 47, 54)).
code(standard_line_separator_1_code9, modifier, standard_line_separator_1_code8, (modifiers, 0), range(standard_line_separator_1, 1592, 5, 52, 52)).
code(standard_line_separator_1_code8, single_variable_declaration, standard_line_separator_1_code7, (parameters, 0), range(standard_line_separator_1, 1592, 26, 52, 52)).
code(standard_line_separator_1_code10, simple_type, standard_line_separator_1_code8, type, range(standard_line_separator_1, 1598, 6, 52, 52)).
code(standard_line_separator_1_code11, method_declaration, standard_line_separator_1_code2, (body_declarations, 3), range(standard_line_separator_1, 2041, 183, 66, 73)).
%ioutils_1 - org.apache.commons.io.IOUtils
code(ioutils_1_code1, compilation_unit, range(ioutils_1, 0, 155016, 1, -1)).
code(ioutils_1_code2, type_declaration, ioutils_1_code1, (types, 0), range(ioutils_1, 2716, 152299, 73, 3945)).
code(ioutils_1_code3, field_declaration, ioutils_1_code2, (body_declarations, 2), range(ioutils_1, 5501, 125, 142, 145)).
code(ioutils_1_code4, modifier, ioutils_1_code3, (modifiers, 0), range(ioutils_1, 5566, 6, 145, 145)).
code(ioutils_1_code5, modifier, ioutils_1_code3, (modifiers, 1), range(ioutils_1, 5573, 6, 145, 145)).
code(ioutils_1_code6, modifier, ioutils_1_code3, (modifiers, 2), range(ioutils_1, 5580, 5, 145, 145)).
code(ioutils_1_code7, primitive_type, ioutils_1_code3, type, range(ioutils_1, 5586, 4, 145, 145)).
code(ioutils_1_code8, variable_declaration_fragment, ioutils_1_code3, (fragments, 0), range(ioutils_1, 5591, 34, 145, 145)).
code(ioutils_1_code9, field_declaration, ioutils_1_code2, (body_declarations, 5), range(ioutils_1, 5877, 130, 157, 162)).
code(ioutils_1_code10, modifier, ioutils_1_code9, (modifiers, 0), range(ioutils_1, 5958, 6, 162, 162)).
code(ioutils_1_code11, modifier, ioutils_1_code9, (modifiers, 1), range(ioutils_1, 5965, 6, 162, 162)).
code(ioutils_1_code12, modifier, ioutils_1_code9, (modifiers, 2), range(ioutils_1, 5972, 5, 162, 162)).
code(ioutils_1_code14, primitive_type, ioutils_1_code13, element_type, range(ioutils_1, 5978, 4, 162, 162)).
code(ioutils_1_code13, array_type, ioutils_1_code9, type, range(ioutils_1, 5978, 6, 162, 162)).
code(ioutils_1_code15, dimension, ioutils_1_code13, (dimensions, 0), range(ioutils_1, 5982, 2, 162, 162)).
code(ioutils_1_code16, variable_declaration_fragment, ioutils_1_code9, (fragments, 0), range(ioutils_1, 5985, 21, 162, 162)).
code(ioutils_1_code17, field_declaration, ioutils_1_code2, (body_declarations, 8), range(ioutils_1, 6246, 202, 177, 183)).
code(ioutils_1_code18, modifier, ioutils_1_code17, (modifiers, 1), range(ioutils_1, 6381, 6, 183, 183)).
code(ioutils_1_code19, modifier, ioutils_1_code17, (modifiers, 2), range(ioutils_1, 6388, 6, 183, 183)).
code(ioutils_1_code20, modifier, ioutils_1_code17, (modifiers, 3), range(ioutils_1, 6395, 5, 183, 183)).
code(ioutils_1_code21, simple_type, ioutils_1_code17, type, range(ioutils_1, 6401, 6, 183, 183)).
code(ioutils_1_code22, variable_declaration_fragment, ioutils_1_code17, (fragments, 0), range(ioutils_1, 6408, 39, 183, 183)).
code(ioutils_1_code23, field_declaration, ioutils_1_code2, (body_declarations, 9), range(ioutils_1, 6454, 185, 185, 190)).
code(ioutils_1_code24, modifier, ioutils_1_code23, (modifiers, 0), range(ioutils_1, 6553, 6, 190, 190)).
code(ioutils_1_code25, modifier, ioutils_1_code23, (modifiers, 1), range(ioutils_1, 6560, 6, 190, 190)).
code(ioutils_1_code26, modifier, ioutils_1_code23, (modifiers, 2), range(ioutils_1, 6567, 5, 190, 190)).
code(ioutils_1_code27, simple_type, ioutils_1_code23, type, range(ioutils_1, 6573, 6, 190, 190)).
code(ioutils_1_code28, variable_declaration_fragment, ioutils_1_code23, (fragments, 0), range(ioutils_1, 6580, 58, 190, 190)).
code(ioutils_1_code29, field_declaration, ioutils_1_code2, (body_declarations, 10), range(ioutils_1, 6645, 195, 192, 197)).
code(ioutils_1_code30, modifier, ioutils_1_code29, (modifiers, 0), range(ioutils_1, 6749, 6, 197, 197)).
code(ioutils_1_code31, modifier, ioutils_1_code29, (modifiers, 1), range(ioutils_1, 6756, 6, 197, 197)).
code(ioutils_1_code32, modifier, ioutils_1_code29, (modifiers, 2), range(ioutils_1, 6763, 5, 197, 197)).
code(ioutils_1_code33, simple_type, ioutils_1_code29, type, range(ioutils_1, 6769, 6, 197, 197)).
code(ioutils_1_code34, variable_declaration_fragment, ioutils_1_code29, (fragments, 0), range(ioutils_1, 6776, 63, 197, 197)).
code(ioutils_1_code35, field_declaration, ioutils_1_code2, (body_declarations, 11), range(ioutils_1, 6846, 200, 199, 202)).
code(ioutils_1_code36, modifier, ioutils_1_code35, (modifiers, 0), range(ioutils_1, 6936, 7, 202, 202)).
code(ioutils_1_code37, modifier, ioutils_1_code35, (modifiers, 1), range(ioutils_1, 6944, 6, 202, 202)).
code(ioutils_1_code38, modifier, ioutils_1_code35, (modifiers, 2), range(ioutils_1, 6951, 5, 202, 202)).
code(ioutils_1_code39, parameterized_type, ioutils_1_code35, type, range(ioutils_1, 6957, 19, 202, 202)).
code(ioutils_1_code40, simple_type, ioutils_1_code39, type, range(ioutils_1, 6957, 11, 202, 202)).
code(ioutils_1_code41, array_type, ioutils_1_code39, (type_arguments, 0), range(ioutils_1, 6969, 6, 202, 202)).
code(ioutils_1_code42, primitive_type, ioutils_1_code41, element_type, range(ioutils_1, 6969, 4, 202, 202)).
code(ioutils_1_code43, dimension, ioutils_1_code41, (dimensions, 0), range(ioutils_1, 6973, 2, 202, 202)).
code(ioutils_1_code44, variable_declaration_fragment, ioutils_1_code35, (fragments, 0), range(ioutils_1, 6977, 68, 202, 202)).
code(ioutils_1_code45, field_declaration, ioutils_1_code2, (body_declarations, 12), range(ioutils_1, 7052, 152, 204, 207)).
code(ioutils_1_code46, modifier, ioutils_1_code45, (modifiers, 0), range(ioutils_1, 7139, 7, 207, 207)).
code(ioutils_1_code47, modifier, ioutils_1_code45, (modifiers, 1), range(ioutils_1, 7147, 6, 207, 207)).
code(ioutils_1_code48, modifier, ioutils_1_code45, (modifiers, 2), range(ioutils_1, 7154, 5, 207, 207)).
code(ioutils_1_code49, array_type, ioutils_1_code45, type, range(ioutils_1, 7160, 6, 207, 207)).
code(ioutils_1_code50, primitive_type, ioutils_1_code49, element_type, range(ioutils_1, 7160, 4, 207, 207)).
code(ioutils_1_code51, dimension, ioutils_1_code49, (dimensions, 0), range(ioutils_1, 7164, 2, 207, 207)).
code(ioutils_1_code52, variable_declaration_fragment, ioutils_1_code45, (fragments, 0), range(ioutils_1, 7167, 36, 207, 207)).
code(ioutils_1_code53, field_declaration, ioutils_1_code2, (body_declarations, 13), range(ioutils_1, 7210, 200, 209, 212)).
code(ioutils_1_code54, modifier, ioutils_1_code53, (modifiers, 0), range(ioutils_1, 7300, 7, 212, 212)).
code(ioutils_1_code55, modifier, ioutils_1_code53, (modifiers, 1), range(ioutils_1, 7308, 6, 212, 212)).
code(ioutils_1_code56, modifier, ioutils_1_code53, (modifiers, 2), range(ioutils_1, 7315, 5, 212, 212)).
code(ioutils_1_code57, parameterized_type, ioutils_1_code53, type, range(ioutils_1, 7321, 19, 212, 212)).
code(ioutils_1_code58, simple_type, ioutils_1_code57, type, range(ioutils_1, 7321, 11, 212, 212)).
code(ioutils_1_code60, primitive_type, ioutils_1_code59, element_type, range(ioutils_1, 7333, 4, 212, 212)).
code(ioutils_1_code59, array_type, ioutils_1_code57, (type_arguments, 0), range(ioutils_1, 7333, 6, 212, 212)).
code(ioutils_1_code61, dimension, ioutils_1_code59, (dimensions, 0), range(ioutils_1, 7337, 2, 212, 212)).
code(ioutils_1_code62, variable_declaration_fragment, ioutils_1_code53, (fragments, 0), range(ioutils_1, 7341, 68, 212, 212)).
code(ioutils_1_code63, field_declaration, ioutils_1_code2, (body_declarations, 14), range(ioutils_1, 7416, 152, 214, 217)).
code(ioutils_1_code64, modifier, ioutils_1_code63, (modifiers, 0), range(ioutils_1, 7503, 7, 217, 217)).
code(ioutils_1_code65, modifier, ioutils_1_code63, (modifiers, 1), range(ioutils_1, 7511, 6, 217, 217)).
code(ioutils_1_code66, modifier, ioutils_1_code63, (modifiers, 2), range(ioutils_1, 7518, 5, 217, 217)).
code(ioutils_1_code67, array_type, ioutils_1_code63, type, range(ioutils_1, 7524, 6, 217, 217)).
code(ioutils_1_code68, primitive_type, ioutils_1_code67, element_type, range(ioutils_1, 7524, 4, 217, 217)).
code(ioutils_1_code69, dimension, ioutils_1_code67, (dimensions, 0), range(ioutils_1, 7528, 2, 217, 217)).
code(ioutils_1_code70, variable_declaration_fragment, ioutils_1_code63, (fragments, 0), range(ioutils_1, 7531, 36, 217, 217)).
code(ioutils_1_code71, method_declaration, ioutils_1_code2, (body_declarations, 23), range(ioutils_1, 13933, 270, 347, 355)).
code(ioutils_1_code72, method_declaration, ioutils_1_code2, (body_declarations, 24), range(ioutils_1, 14209, 405, 357, 369)).
code(ioutils_1_code74, primitive_type, ioutils_1_code73, element_type, range(ioutils_1, 14597, 4, 368, 368)).
code(ioutils_1_code73, array_type, ioutils_1_expr12, type, range(ioutils_1, 14597, 10, 368, 368)).
code(ioutils_1_code75, dimension, ioutils_1_code73, (dimensions, 0), range(ioutils_1, 14601, 6, 368, 368)).
code(ioutils_1_code76, method_declaration, ioutils_1_code2, (body_declarations, 25), range(ioutils_1, 14620, 271, 371, 379)).
code(ioutils_1_code77, method_declaration, ioutils_1_code2, (body_declarations, 26), range(ioutils_1, 14897, 339, 381, 392)).
code(ioutils_1_code78, array_type, ioutils_1_expr14, type, range(ioutils_1, 15219, 10, 391, 391)).
code(ioutils_1_code79, primitive_type, ioutils_1_code78, element_type, range(ioutils_1, 15219, 4, 391, 391)).
code(ioutils_1_code80, dimension, ioutils_1_code78, (dimensions, 0), range(ioutils_1, 15223, 6, 391, 391)).
%regex_file_filter_test_1 - org.apache.commons.io.filefilter.RegexFileFilterTest
code(regex_file_filter_test_1_code1, compilation_unit, range(regex_file_filter_test_1, 0, 8747, 1, -1)).
code(regex_file_filter_test_1_code2, type_declaration, regex_file_filter_test_1_code1, (types, 0), range(regex_file_filter_test_1, 1497, 7249, 38, 174)).
code(regex_file_filter_test_1_code3, modifier, regex_file_filter_test_1_code2, (modifiers, 0), range(regex_file_filter_test_1, 1539, 6, 41, 41)).
code(regex_file_filter_test_1_code4, method_declaration, regex_file_filter_test_1_code2, (body_declarations, 1), range(regex_file_filter_test_1, 2862, 1326, 64, 83)).
code(regex_file_filter_test_1_code5, modifier, regex_file_filter_test_1_stmt1, (modifiers, 0), range(regex_file_filter_test_1, 3085, 5, 67, 67)).
code(regex_file_filter_test_1_code6, simple_type, regex_file_filter_test_1_stmt1, type, range(regex_file_filter_test_1, 3091, 15, 67, 67)).
code(regex_file_filter_test_1_code7, variable_declaration_fragment, regex_file_filter_test_1_stmt1, (fragments, 0), range(regex_file_filter_test_1, 3107, 79, 67, 67)).
code(regex_file_filter_test_1_code8, method_declaration, regex_file_filter_test_1_code2, (body_declarations, 2), range(regex_file_filter_test_1, 4194, 433, 85, 94)).
code(regex_file_filter_test_1_code9, simple_type, regex_file_filter_test_1_expr24, type, range(regex_file_filter_test_1, 4307, 21, 86, 86)).
code(regex_file_filter_test_1_code10, variable_declaration_fragment, regex_file_filter_test_1_expr24, (fragments, 0), range(regex_file_filter_test_1, 4329, 34, 86, 86)).
code(regex_file_filter_test_1_code11, simple_type, regex_file_filter_test_1_expr25, type, range(regex_file_filter_test_1, 4340, 21, 86, 86)).
code(regex_file_filter_test_1_code12, simple_type, regex_file_filter_test_1_expr26, type, range(regex_file_filter_test_1, 4384, 18, 87, 87)).
code(regex_file_filter_test_1_code13, variable_declaration_fragment, regex_file_filter_test_1_expr26, (fragments, 0), range(regex_file_filter_test_1, 4403, 34, 87, 87)).
code(regex_file_filter_test_1_code14, simple_type, regex_file_filter_test_1_expr27, type, range(regex_file_filter_test_1, 4413, 18, 87, 87)).
code(regex_file_filter_test_1_code15, method_declaration, regex_file_filter_test_1_code2, (body_declarations, 5), range(regex_file_filter_test_1, 7882, 861, 157, 172)).
code(regex_file_filter_test_1_code16, modifier, regex_file_filter_test_1_stmt13, (modifiers, 0), range(regex_file_filter_test_1, 8101, 5, 165, 165)).
code(regex_file_filter_test_1_code17, simple_type, regex_file_filter_test_1_stmt13, type, range(regex_file_filter_test_1, 8107, 4, 165, 165)).
code(regex_file_filter_test_1_code18, variable_declaration_fragment, regex_file_filter_test_1_stmt13, (fragments, 0), range(regex_file_filter_test_1, 8112, 38, 165, 165)).
code(regex_file_filter_test_1_code19, modifier, regex_file_filter_test_1_stmt14, (modifiers, 0), range(regex_file_filter_test_1, 8160, 5, 166, 166)).
code(regex_file_filter_test_1_code20, simple_type, regex_file_filter_test_1_stmt14, type, range(regex_file_filter_test_1, 8166, 6, 166, 166)).
code(regex_file_filter_test_1_code21, variable_declaration_fragment, regex_file_filter_test_1_stmt14, (fragments, 0), range(regex_file_filter_test_1, 8173, 20, 166, 166)).
code(regex_file_filter_test_1_code22, simple_type, regex_file_filter_test_1_expr37, type, range(regex_file_filter_test_1, 8242, 15, 167, 167)).
code(regex_file_filter_test_1_code23, simple_type, regex_file_filter_test_1_expr40, type, range(regex_file_filter_test_1, 8332, 15, 168, 168)).
code(regex_file_filter_test_1_code25, parameterized_type, regex_file_filter_test_1_code24, (types, 0), range(regex_file_filter_test_1, 8378, 22, 168, 168)).
code(regex_file_filter_test_1_code26, simple_type, regex_file_filter_test_1_code25, type, range(regex_file_filter_test_1, 8378, 8, 168, 168)).
code(regex_file_filter_test_1_code24, intersection_type, regex_file_filter_test_1_expr42, type, range(regex_file_filter_test_1, 8378, 37, 168, 168)).
code(regex_file_filter_test_1_code27, simple_type, regex_file_filter_test_1_code25, (type_arguments, 0), range(regex_file_filter_test_1, 8387, 4, 168, 168)).
code(regex_file_filter_test_1_code28, simple_type, regex_file_filter_test_1_code25, (type_arguments, 1), range(regex_file_filter_test_1, 8393, 6, 168, 168)).
code(regex_file_filter_test_1_code29, simple_type, regex_file_filter_test_1_code24, (types, 1), range(regex_file_filter_test_1, 8403, 12, 168, 168)).
code(regex_file_filter_test_1_code30, simple_type, regex_file_filter_test_1_expr45, type, range(regex_file_filter_test_1, 8493, 15, 170, 170)).
code(regex_file_filter_test_1_code31, intersection_type, regex_file_filter_test_1_expr47, type, range(regex_file_filter_test_1, 8539, 37, 170, 170)).
code(regex_file_filter_test_1_code33, simple_type, regex_file_filter_test_1_code32, type, range(regex_file_filter_test_1, 8539, 8, 170, 170)).
code(regex_file_filter_test_1_code32, parameterized_type, regex_file_filter_test_1_code31, (types, 0), range(regex_file_filter_test_1, 8539, 22, 170, 170)).
code(regex_file_filter_test_1_code34, simple_type, regex_file_filter_test_1_code32, (type_arguments, 0), range(regex_file_filter_test_1, 8548, 4, 170, 170)).
code(regex_file_filter_test_1_code35, simple_type, regex_file_filter_test_1_code32, (type_arguments, 1), range(regex_file_filter_test_1, 8554, 6, 170, 170)).
code(regex_file_filter_test_1_code36, simple_type, regex_file_filter_test_1_code31, (types, 1), range(regex_file_filter_test_1, 8564, 12, 170, 170)).
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
code(abstract_byte_array_output_stream_1_code1, compilation_unit, range(abstract_byte_array_output_stream_1, 0, 14335, 1, -1)).
code(abstract_byte_array_output_stream_1_code2, type_declaration, abstract_byte_array_output_stream_1_code1, (types, 0), range(abstract_byte_array_output_stream_1, 1266, 13068, 34, 410)).
code(abstract_byte_array_output_stream_1_code3, modifier, abstract_byte_array_output_stream_1_code2, (modifiers, 0), range(abstract_byte_array_output_stream_1, 2447, 6, 60, 60)).
code(abstract_byte_array_output_stream_1_code4, modifier, abstract_byte_array_output_stream_1_code2, (modifiers, 1), range(abstract_byte_array_output_stream_1, 2454, 8, 60, 60)).
code(abstract_byte_array_output_stream_1_code5, simple_type, abstract_byte_array_output_stream_1_code2, superclass_type, range(abstract_byte_array_output_stream_1, 2507, 12, 60, 60)).
code(abstract_byte_array_output_stream_1_code6, field_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 2), range(abstract_byte_array_output_stream_1, 3147, 118, 84, 85)).
code(abstract_byte_array_output_stream_1_code7, modifier, abstract_byte_array_output_stream_1_code6, (modifiers, 0), range(abstract_byte_array_output_stream_1, 3210, 7, 85, 85)).
code(abstract_byte_array_output_stream_1_code8, modifier, abstract_byte_array_output_stream_1_code6, (modifiers, 1), range(abstract_byte_array_output_stream_1, 3218, 5, 85, 85)).
code(abstract_byte_array_output_stream_1_code9, parameterized_type, abstract_byte_array_output_stream_1_code6, type, range(abstract_byte_array_output_stream_1, 3224, 12, 85, 85)).
code(abstract_byte_array_output_stream_1_code10, simple_type, abstract_byte_array_output_stream_1_code9, type, range(abstract_byte_array_output_stream_1, 3224, 4, 85, 85)).
code(abstract_byte_array_output_stream_1_code12, primitive_type, abstract_byte_array_output_stream_1_code11, element_type, range(abstract_byte_array_output_stream_1, 3229, 4, 85, 85)).
code(abstract_byte_array_output_stream_1_code11, array_type, abstract_byte_array_output_stream_1_code9, (type_arguments, 0), range(abstract_byte_array_output_stream_1, 3229, 6, 85, 85)).
code(abstract_byte_array_output_stream_1_code13, dimension, abstract_byte_array_output_stream_1_code11, (dimensions, 0), range(abstract_byte_array_output_stream_1, 3233, 2, 85, 85)).
code(abstract_byte_array_output_stream_1_code14, variable_declaration_fragment, abstract_byte_array_output_stream_1_code6, (fragments, 0), range(abstract_byte_array_output_stream_1, 3237, 27, 85, 85)).
code(abstract_byte_array_output_stream_1_code16, simple_type, abstract_byte_array_output_stream_1_code15, type, range(abstract_byte_array_output_stream_1, 3251, 9, 85, 85)).
code(abstract_byte_array_output_stream_1_code15, parameterized_type, abstract_byte_array_output_stream_1_expr1, type, range(abstract_byte_array_output_stream_1, 3251, 11, 85, 85)).
code(abstract_byte_array_output_stream_1_code17, field_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 7), range(abstract_byte_array_output_stream_1, 3586, 105, 99, 100)).
code(abstract_byte_array_output_stream_1_code18, modifier, abstract_byte_array_output_stream_1_code17, (modifiers, 0), range(abstract_byte_array_output_stream_1, 3655, 7, 100, 100)).
code(abstract_byte_array_output_stream_1_code19, primitive_type, abstract_byte_array_output_stream_1_code17, type, range(abstract_byte_array_output_stream_1, 3663, 7, 100, 100)).
code(abstract_byte_array_output_stream_1_code20, variable_declaration_fragment, abstract_byte_array_output_stream_1_code17, (fragments, 0), range(abstract_byte_array_output_stream_1, 3671, 19, 100, 100)).
code(abstract_byte_array_output_stream_1_code21, method_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 8), range(abstract_byte_array_output_stream_1, 3697, 393, 102, 113)).
code(abstract_byte_array_output_stream_1_code22, method_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 9), range(abstract_byte_array_output_stream_1, 4096, 1034, 115, 143)).
code(abstract_byte_array_output_stream_1_code23, method_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 14), range(abstract_byte_array_output_stream_1, 6230, 822, 185, 209)).
code(abstract_byte_array_output_stream_1_code24, primitive_type, abstract_byte_array_output_stream_1_stmt8, type, range(abstract_byte_array_output_stream_1, 6548, 3, 193, 193)).
code(abstract_byte_array_output_stream_1_code25, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt8, (fragments, 0), range(abstract_byte_array_output_stream_1, 6552, 17, 193, 193)).
code(abstract_byte_array_output_stream_1_code26, modifier, abstract_byte_array_output_stream_1_stmt10, (modifiers, 0), range(abstract_byte_array_output_stream_1, 6664, 5, 197, 197)).
code(abstract_byte_array_output_stream_1_code28, primitive_type, abstract_byte_array_output_stream_1_code27, element_type, range(abstract_byte_array_output_stream_1, 6670, 4, 197, 197)).
code(abstract_byte_array_output_stream_1_code27, array_type, abstract_byte_array_output_stream_1_stmt10, type, range(abstract_byte_array_output_stream_1, 6670, 6, 197, 197)).
code(abstract_byte_array_output_stream_1_code29, dimension, abstract_byte_array_output_stream_1_code27, (dimensions, 0), range(abstract_byte_array_output_stream_1, 6674, 2, 197, 197)).
code(abstract_byte_array_output_stream_1_code30, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt10, (fragments, 0), range(abstract_byte_array_output_stream_1, 6677, 37, 197, 197)).
code(abstract_byte_array_output_stream_1_code31, primitive_type, abstract_byte_array_output_stream_1_stmt11, type, range(abstract_byte_array_output_stream_1, 6724, 3, 198, 198)).
code(abstract_byte_array_output_stream_1_code32, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt11, (fragments, 0), range(abstract_byte_array_output_stream_1, 6728, 7, 198, 198)).
code(abstract_byte_array_output_stream_1_code34, modifier, abstract_byte_array_output_stream_1_code33, (modifiers, 0), range(abstract_byte_array_output_stream_1, 6750, 5, 199, 199)).
code(abstract_byte_array_output_stream_1_code33, single_variable_declaration, abstract_byte_array_output_stream_1_stmt12, parameter, range(abstract_byte_array_output_stream_1, 6750, 16, 199, 199)).
code(abstract_byte_array_output_stream_1_code36, primitive_type, abstract_byte_array_output_stream_1_code35, element_type, range(abstract_byte_array_output_stream_1, 6756, 4, 199, 199)).
code(abstract_byte_array_output_stream_1_code35, array_type, abstract_byte_array_output_stream_1_code33, type, range(abstract_byte_array_output_stream_1, 6756, 6, 199, 199)).
code(abstract_byte_array_output_stream_1_code37, dimension, abstract_byte_array_output_stream_1_code35, (dimensions, 0), range(abstract_byte_array_output_stream_1, 6760, 2, 199, 199)).
code(abstract_byte_array_output_stream_1_code38, modifier, abstract_byte_array_output_stream_1_stmt13, (modifiers, 0), range(abstract_byte_array_output_stream_1, 6792, 5, 200, 200)).
code(abstract_byte_array_output_stream_1_code39, primitive_type, abstract_byte_array_output_stream_1_stmt13, type, range(abstract_byte_array_output_stream_1, 6798, 3, 200, 200)).
code(abstract_byte_array_output_stream_1_code40, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt13, (fragments, 0), range(abstract_byte_array_output_stream_1, 6802, 35, 200, 200)).
code(abstract_byte_array_output_stream_1_code41, method_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 23), range(abstract_byte_array_output_stream_1, 11022, 772, 316, 336)).
code(abstract_byte_array_output_stream_1_code42, modifier, abstract_byte_array_output_stream_1_stmt20, (modifiers, 0), range(abstract_byte_array_output_stream_1, 11279, 5, 323, 323)).
code(abstract_byte_array_output_stream_1_code43, primitive_type, abstract_byte_array_output_stream_1_stmt20, type, range(abstract_byte_array_output_stream_1, 11285, 3, 323, 323)).
code(abstract_byte_array_output_stream_1_code44, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt20, (fragments, 0), range(abstract_byte_array_output_stream_1, 11289, 22, 323, 323)).
code(abstract_byte_array_output_stream_1_code45, primitive_type, abstract_byte_array_output_stream_1_stmt21, type, range(abstract_byte_array_output_stream_1, 11321, 3, 324, 324)).
code(abstract_byte_array_output_stream_1_code46, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt21, (fragments, 0), range(abstract_byte_array_output_stream_1, 11325, 15, 324, 324)).
code(abstract_byte_array_output_stream_1_code47, primitive_type, abstract_byte_array_output_stream_1_stmt22, type, range(abstract_byte_array_output_stream_1, 11350, 3, 325, 325)).
code(abstract_byte_array_output_stream_1_code48, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt22, (fragments, 0), range(abstract_byte_array_output_stream_1, 11354, 37, 325, 325)).
code(abstract_byte_array_output_stream_1_code49, modifier, abstract_byte_array_output_stream_1_stmt24, (modifiers, 0), range(abstract_byte_array_output_stream_1, 11437, 5, 327, 327)).
code(abstract_byte_array_output_stream_1_code50, primitive_type, abstract_byte_array_output_stream_1_stmt24, type, range(abstract_byte_array_output_stream_1, 11443, 3, 327, 327)).
code(abstract_byte_array_output_stream_1_code51, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt24, (fragments, 0), range(abstract_byte_array_output_stream_1, 11447, 62, 327, 327)).
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
code(abstract_file_filter_1_code1, compilation_unit, range(abstract_file_filter_1, 0, 5474, 1, -1)).
code(abstract_file_filter_1_code2, type_declaration, abstract_file_filter_1_code1, (types, 0), range(abstract_file_filter_1, 1264, 4209, 33, 179)).
code(abstract_file_filter_1_code3, method_declaration, abstract_file_filter_1_code2, (body_declarations, 0), range(abstract_file_filter_1, 1684, 155, 44, 46)).
code(abstract_file_filter_1_code4, method_declaration, abstract_file_filter_1_code2, (body_declarations, 3), range(abstract_file_filter_1, 2055, 152, 58, 63)).
code(abstract_file_filter_1_code5, method_declaration, abstract_file_filter_1_code2, (body_declarations, 4), range(abstract_file_filter_1, 2213, 344, 65, 75)).
code(abstract_file_filter_1_code6, modifier, abstract_file_filter_1_code5, (modifiers, 0), range(abstract_file_filter_1, 2389, 9, 72, 72)).
code(abstract_file_filter_1_code8, modifier, abstract_file_filter_1_code7, (modifiers, 0), range(abstract_file_filter_1, 2418, 5, 72, 72)).
code(abstract_file_filter_1_code7, single_variable_declaration, abstract_file_filter_1_code5, (parameters, 0), range(abstract_file_filter_1, 2418, 30, 72, 72)).
code(abstract_file_filter_1_code9, simple_type, abstract_file_filter_1_code7, type, range(abstract_file_filter_1, 2424, 15, 72, 72)).
code(abstract_file_filter_1_code11, modifier, abstract_file_filter_1_code10, (modifiers, 0), range(abstract_file_filter_1, 2450, 5, 72, 72)).
code(abstract_file_filter_1_code10, single_variable_declaration, abstract_file_filter_1_code5, (parameters, 1), range(abstract_file_filter_1, 2450, 30, 72, 72)).
code(abstract_file_filter_1_code12, simple_type, abstract_file_filter_1_code10, type, range(abstract_file_filter_1, 2456, 15, 72, 72)).
code(abstract_file_filter_1_code13, method_declaration, abstract_file_filter_1_code2, (body_declarations, 13), range(abstract_file_filter_1, 4653, 258, 149, 157)).
%regex_file_filter_1 - org.apache.commons.io.filefilter.RegexFileFilter
code(regex_file_filter_1_code1, compilation_unit, range(regex_file_filter_1, 0, 6496, 1, -1)).
code(regex_file_filter_1_code2, type_declaration, regex_file_filter_1_code1, (types, 0), range(regex_file_filter_1, 1146, 5349, 30, 197)).
code(regex_file_filter_1_code3, method_declaration, regex_file_filter_1_code2, (body_declarations, 1), range(regex_file_filter_1, 2540, 357, 78, 88)).
code(regex_file_filter_1_code4, method_declaration, regex_file_filter_1_code2, (body_declarations, 5), range(regex_file_filter_1, 3415, 402, 106, 115)).
code(regex_file_filter_1_code6, parameterized_type, regex_file_filter_1_code5, (types, 0), range(regex_file_filter_1, 3739, 22, 114, 114)).
code(regex_file_filter_1_code5, intersection_type, regex_file_filter_1_expr4, type, range(regex_file_filter_1, 3739, 37, 114, 114)).
code(regex_file_filter_1_code7, simple_type, regex_file_filter_1_code6, type, range(regex_file_filter_1, 3739, 8, 114, 114)).
code(regex_file_filter_1_code8, simple_type, regex_file_filter_1_code6, (type_arguments, 0), range(regex_file_filter_1, 3748, 4, 114, 114)).
code(regex_file_filter_1_code9, simple_type, regex_file_filter_1_code6, (type_arguments, 1), range(regex_file_filter_1, 3754, 6, 114, 114)).
code(regex_file_filter_1_code10, simple_type, regex_file_filter_1_code5, (types, 1), range(regex_file_filter_1, 3764, 12, 114, 114)).
code(regex_file_filter_1_code11, variable_declaration_fragment, regex_file_filter_1_expr5, (parameters, 0), range(regex_file_filter_1, 3778, 1, 114, 114)).
code(regex_file_filter_1_code12, method_declaration, regex_file_filter_1_code2, (body_declarations, 6), range(regex_file_filter_1, 3823, 520, 117, 129)).
code(regex_file_filter_1_code13, modifier, regex_file_filter_1_code12, (modifiers, 0), range(regex_file_filter_1, 4121, 6, 125, 125)).
code(regex_file_filter_1_code15, modifier, regex_file_filter_1_code14, (modifiers, 0), range(regex_file_filter_1, 4144, 5, 125, 125)).
code(regex_file_filter_1_code14, single_variable_declaration, regex_file_filter_1_code12, (parameters, 0), range(regex_file_filter_1, 4144, 21, 125, 125)).
code(regex_file_filter_1_code16, simple_type, regex_file_filter_1_code14, type, range(regex_file_filter_1, 4150, 7, 125, 125)).
code(regex_file_filter_1_code17, single_variable_declaration, regex_file_filter_1_code12, (parameters, 1), range(regex_file_filter_1, 4167, 41, 125, 125)).
code(regex_file_filter_1_code18, modifier, regex_file_filter_1_code17, (modifiers, 0), range(regex_file_filter_1, 4167, 5, 125, 125)).
code(regex_file_filter_1_code19, parameterized_type, regex_file_filter_1_code17, type, range(regex_file_filter_1, 4173, 22, 125, 125)).
code(regex_file_filter_1_code20, simple_type, regex_file_filter_1_code19, type, range(regex_file_filter_1, 4173, 8, 125, 125)).
code(regex_file_filter_1_code21, simple_type, regex_file_filter_1_code19, (type_arguments, 0), range(regex_file_filter_1, 4182, 4, 125, 125)).
code(regex_file_filter_1_code22, simple_type, regex_file_filter_1_code19, (type_arguments, 1), range(regex_file_filter_1, 4188, 6, 125, 125)).
code(regex_file_filter_1_code23, method_declaration, regex_file_filter_1_code2, (body_declarations, 7), range(regex_file_filter_1, 4349, 268, 131, 139)).
code(regex_file_filter_1_code24, method_declaration, regex_file_filter_1_code2, (body_declarations, 8), range(regex_file_filter_1, 4623, 401, 141, 150)).
code(regex_file_filter_1_code25, method_declaration, regex_file_filter_1_code2, (body_declarations, 11), range(regex_file_filter_1, 5862, 443, 175, 185)).
code(regex_file_filter_1_code26, method_declaration, regex_file_filter_1_code2, (body_declarations, 12), range(regex_file_filter_1, 6311, 181, 187, 195)).
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
code(byte_array_output_stream_1_code1, compilation_unit, range(byte_array_output_stream_1, 0, 5327, 1, -1)).
code(byte_array_output_stream_1_code2, type_declaration, byte_array_output_stream_1_code1, (types, 0), range(byte_array_output_stream_1, 964, 4362, 24, 166)).
code(byte_array_output_stream_1_code3, method_declaration, byte_array_output_stream_1_code2, (body_declarations, 2), range(byte_array_output_stream_1, 3315, 271, 88, 94)).
code(byte_array_output_stream_1_code4, method_declaration, byte_array_output_stream_1_code2, (body_declarations, 3), range(byte_array_output_stream_1, 3592, 474, 96, 110)).
code(byte_array_output_stream_1_code5, modifier, byte_array_output_stream_1_code4, (modifiers, 0), range(byte_array_output_stream_1, 3825, 6, 103, 103)).
code(byte_array_output_stream_1_code6, single_variable_declaration, byte_array_output_stream_1_code4, (parameters, 0), range(byte_array_output_stream_1, 3854, 14, 103, 103)).
code(byte_array_output_stream_1_code7, modifier, byte_array_output_stream_1_code6, (modifiers, 0), range(byte_array_output_stream_1, 3854, 5, 103, 103)).
code(byte_array_output_stream_1_code8, primitive_type, byte_array_output_stream_1_code6, type, range(byte_array_output_stream_1, 3860, 3, 103, 103)).
code(byte_array_output_stream_1_code9, method_declaration, byte_array_output_stream_1_code2, (body_declarations, 6), range(byte_array_output_stream_1, 4299, 96, 125, 128)).
code(byte_array_output_stream_1_code10, method_declaration, byte_array_output_stream_1_code2, (body_declarations, 8), range(byte_array_output_stream_1, 4541, 433, 135, 150)).
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
code(iofile_filter_1_code1, compilation_unit, range(iofile_filter_1, 0, 3612, 1, -1)).
code(iofile_filter_1_code2, type_declaration, iofile_filter_1_code1, (types, 0), range(iofile_filter_1, 1124, 2487, 29, 122)).
code(iofile_filter_1_code3, field_declaration, iofile_filter_1_code2, (body_declarations, 0), range(iofile_filter_1, 1343, 79, 36, 39)).
code(iofile_filter_1_code4, array_type, iofile_filter_1_code3, type, range(iofile_filter_1, 1389, 8, 39, 39)).
code(iofile_filter_1_code5, simple_type, iofile_filter_1_code4, element_type, range(iofile_filter_1, 1389, 6, 39, 39)).
code(iofile_filter_1_code6, dimension, iofile_filter_1_code4, (dimensions, 0), range(iofile_filter_1, 1395, 2, 39, 39)).
code(iofile_filter_1_code7, variable_declaration_fragment, iofile_filter_1_code3, (fragments, 0), range(iofile_filter_1, 1398, 23, 39, 39)).
code(iofile_filter_1_code8, method_declaration, iofile_filter_1_code2, (body_declarations, 5), range(iofile_filter_1, 2791, 317, 89, 99)).

%%% Name References

name_ref(t_abstract_byte_array_output_stream_13, type, 'AbstractByteArrayOutputStream', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;').
name_ref(t_abstract_file_filter_10, type, 'AbstractFileFilter', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;').
name_ref(t_file_1, type, 'File', 'Ljava/io/File;').
name_ref(t_file_visit_result_7, type, 'FileVisitResult', 'Ljava/nio/file/FileVisitResult;').
name_ref(t_ioutils_5, type, 'IOUtils', 'Lorg/apache/commons/io/IOUtils;').
name_ref(t_math_14, type, 'Math', 'Ljava/lang/Math;').
name_ref(t_objects_6, type, 'Objects', 'Ljava/util/Objects;').
name_ref(t_path_12, type, 'Path', 'Ljava/nio/file/Path;').
name_ref(t_paths_11, type, 'Paths', 'Ljava/nio/file/Paths;').
name_ref(t_pattern_8, type, 'Pattern', 'Ljava/util/regex/Pattern;').
name_ref(t_regex_file_filter_test_9, type, 'RegexFileFilterTest', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;').
name_ref(t_standard_line_separator_3, type, 'StandardLineSeparator', 'Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(t_system_2, type, 'System', 'Ljava/lang/System;').
name_ref(t_thread_local_4, type, 'ThreadLocal', 'Ljava/lang/ThreadLocal<>;').
name_ref(v_baos_393, var, 'baos', 'regex_file_filter_test_1;baos_line_87').
name_ref(p_flags_378, param, 'flags', 'regex_file_filter_1;flags_line_149').
name_ref(p_p_371, param, 'p', 'regex_file_filter_1;p_line_114').
name_ref(p_pattern_370, param, 'pattern', 'regex_file_filter_1;pattern_line_114').
name_ref(p_pattern_376, param, 'pattern', 'regex_file_filter_1;pattern_line_138').
name_ref(p_pattern_377, param, 'pattern', 'regex_file_filter_1;pattern_line_149').
name_ref(f_continue_334, field, 'CONTINUE', 'abstract_file_filter_1;CONTINUE_line_62').
name_ref(f_default_size_436, field, 'DEFAULT_SIZE', 'byte_array_output_stream_1;DEFAULT_SIZE_line_93').
name_ref(f_terminate_335, field, 'TERMINATE', 'abstract_file_filter_1;TERMINATE_line_62').
name_ref(v_baos_393, var, 'baos', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertSerializable(Lorg/apache/commons/io/filefilter/RegexFileFilter;)Lorg/apache/commons/io/filefilter/RegexFileFilter;|Ljava/io/IOException;#0#0#baos').
name_ref(v_buf_412, var, 'buf', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#0#buf').
name_ref(v_c_413, var, 'c', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#0#0#c').
name_ref(v_expected_file_visit_result_391, var, 'expectedFileVisitResult', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/nio/file/Path;Z)V#expectedFileVisitResult').
name_ref(v_in_buffer_pos_427, var, 'inBufferPos', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V#inBufferPos').
name_ref(v_new_buf_410, var, 'newBuf', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#newBuf').
name_ref(v_new_buffer_size_406, var, 'newBufferSize', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.needNewBuffer(I)V#0#newBufferSize').
name_ref(v_new_count_425, var, 'newCount', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V#newCount').
name_ref(v_oos_394, var, 'oos', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertSerializable(Lorg/apache/commons/io/filefilter/RegexFileFilter;)Lorg/apache/commons/io/filefilter/RegexFileFilter;|Ljava/io/IOException;#0#0#0#0#0#oos').
name_ref(v_part_428, var, 'part', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V#0#part').
name_ref(v_path_396, var, 'path', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.testRegexFileNameOnly()V|Ljava/io/IOException;#path').
name_ref(v_pattern_str_397, var, 'patternStr', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.testRegexFileNameOnly()V|Ljava/io/IOException;#patternStr').
name_ref(v_pos_411, var, 'pos', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#pos').
name_ref(v_remaining_408, var, 'remaining', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#remaining').
name_ref(v_remaining_426, var, 'remaining', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V#remaining').
name_ref(p_accept_333, param, 'accept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.toDefaultFileVisitResult(Z)Ljava/nio/file/FileVisitResult;#accept#0#0').
name_ref(p_accept_353, param, 'accept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;#accept#0#0').
name_ref(p_appendable_328, param, 'appendable', 'Lorg/apache/commons/io/IOUtils;.writer(Ljava/lang/Appendable;)Ljava/io/Writer;#appendable#0#0').
name_ref(p_arr_121, param, 'arr', 'Lorg/apache/commons/io/IOUtils;.fill0([B)[B#arr#0#0').
name_ref(p_arr_122, param, 'arr', 'Lorg/apache/commons/io/IOUtils;.fill0([C)[C#arr#0#0').
name_ref(p_array_123, param, 'array', 'Lorg/apache/commons/io/IOUtils;.length([B)I#array#0#0').
name_ref(p_array_124, param, 'array', 'Lorg/apache/commons/io/IOUtils;.length([C)I#array#0#0').
name_ref(p_array_126, param, 'array', 'Lorg/apache/commons/io/IOUtils;.length([Ljava/lang/Object;)I#array#0#0').
name_ref(p_array_345, param, 'array', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append([Ljava/lang/Object;Ljava/lang/StringBuilder;)V#array#0#0').
name_ref(p_attributes_352, param, 'attributes', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#attributes#0#1').
name_ref(p_attributes_355, param, 'attributes', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#attributes#0#1').
name_ref(p_attributes_363, param, 'attributes', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_attributes_384, param, 'attributes', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_b_417, param, 'b', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write([BII)V#b#0#0').
name_ref(p_b_421, param, 'b', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write(I)V#b#0#0').
name_ref(p_b_422, param, 'b', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V#b#0#0').
name_ref(p_b_430, param, 'b', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl(I)V#b#0#0').
name_ref(p_b_438, param, 'b', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write([BII)V#b#0#0').
name_ref(p_b_442, param, 'b', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write(I)V#b#0#0').
name_ref(p_buffer_106, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#buffer#0#4').
name_ref(p_buffer_111, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;#buffer#0#2').
name_ref(p_buffer_120, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#buffer#0#4').
name_ref(p_buffer_133, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[B)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_135, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_139, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;[BII)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_143, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_145, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[C)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_147, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_151, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[B)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_153, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_159, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_161, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[C)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_163, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_344, param, 'buffer', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append(Ljava/util/List<*>;Ljava/lang/StringBuilder;)V#buffer#0#1').
name_ref(p_buffer_346, param, 'buffer', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append([Ljava/lang/Object;Ljava/lang/StringBuilder;)V#buffer#0#1').
name_ref(p_buffer_398, param, 'buffer', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;.construct([BII)TT;#buffer#0#0').
name_ref(p_buffer_78, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;#buffer#0#2').
name_ref(p_buffer_97, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;#buffer#0#2').
name_ref(p_buffer_size_64, param, 'bufferSize', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;#bufferSize#0#2').
name_ref(p_charset_128, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;#charset#0#1').
name_ref(p_charset_168, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#charset#0#1').
name_ref(p_charset_176, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_178, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_216, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_225, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_231, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#charset#0#1').
name_ref(p_charset_236, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#charset#0#1').
name_ref(p_charset_244, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_248, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_250, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;Lorg/apache/commons/io/function/IOSupplier<Ljava/lang/String;>;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_269, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_277, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_287, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_297, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_320, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#3').
name_ref(p_charset_332, param, 'charset', 'Lorg/apache/commons/io/StandardLineSeparator;.getBytes(Ljava/nio/charset/Charset;)[B#charset#0#0').
name_ref(p_charset_415, param, 'charset', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toString(Ljava/nio/charset/Charset;)Ljava/lang/String;#charset#0#0').
name_ref(p_charset_name_130, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;#charsetName#0#1').
name_ref(p_charset_name_170, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#charsetName#0#1').
name_ref(p_charset_name_218, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_227, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_233, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;#charsetName#0#1').
name_ref(p_charset_name_238, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;#charsetName#0#1').
name_ref(p_charset_name_241, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString([BLjava/lang/String;)Ljava/lang/String;#charsetName#0#1').
name_ref(p_charset_name_246, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_257, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_262, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_272, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_280, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_290, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_300, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_307, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_324, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#3').
name_ref(p_class_loader_174, param, 'classLoader', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;Ljava/lang/ClassLoader;)[B|Ljava/io/IOException;#classLoader#0#1').
name_ref(p_class_loader_179, param, 'classLoader', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;#classLoader#0#2').
name_ref(p_class_loader_182, param, 'classLoader', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;|Ljava/io/IOException;#classLoader#0#1').
name_ref(p_closeable_27, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;)V|Ljava/io/IOException;#closeable#0#0').
name_ref(p_closeable_29, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;Lorg/apache/commons/io/function/IOConsumer<Ljava/io/IOException;>;)V|Ljava/io/IOException;#closeable#0#0').
name_ref(p_closeable_32, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.closeQ(Ljava/io/Closeable;)V#closeable#0#0').
name_ref(p_closeable_33, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;)V#closeable#0#0').
name_ref(p_closeable_35, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer<Ljava/io/IOException;>;)V#closeable#0#0').
name_ref(p_closeables_28, param, 'closeables', 'Lorg/apache/commons/io/IOUtils;.close([Ljava/io/Closeable;)V|Lorg/apache/commons/io/IOExceptionList;#closeables#0#0').
name_ref(p_closeables_34, param, 'closeables', 'Lorg/apache/commons/io/IOUtils;.closeQuietly([Ljava/io/Closeable;)V#closeables#0#0').
name_ref(p_closeables_38, param, 'closeables', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/lang/Iterable<Ljava/io/Closeable;>;)V#closeables#0#0').
name_ref(p_closeables_44, param, 'closeables', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/util/stream/Stream<Ljava/io/Closeable;>;)V#closeables#0#0').
name_ref(p_conn_31, param, 'conn', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/net/URLConnection;)V#conn#0#0').
name_ref(p_consumer_30, param, 'consumer', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;Lorg/apache/commons/io/function/IOConsumer<Ljava/io/IOException;>;)V|Ljava/io/IOException;#consumer#0#1').
name_ref(p_consumer_36, param, 'consumer', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer<Ljava/io/IOException;>;)V#consumer#0#1').
name_ref(p_csq_125, param, 'csq', 'Lorg/apache/commons/io/IOUtils;.length(Ljava/lang/CharSequence;)I#csq#0#0').
name_ref(p_data_263, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_265, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_267, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_270, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_273, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_275, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_278, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_281, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_283, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_285, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_288, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_291, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_293, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_295, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_298, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_301, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_303, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_305, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_308, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_310, param, 'data', 'Lorg/apache/commons/io/IOUtils;.writeChunked([BLjava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_312, param, 'data', 'Lorg/apache/commons/io/IOUtils;.writeChunked([CLjava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_default_string_251, param, 'defaultString', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;Lorg/apache/commons/io/function/IOSupplier<Ljava/lang/String;>;)Ljava/lang/String;|Ljava/io/IOException;#defaultString#0#2').
name_ref(p_dir_341, param, 'dir', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#dir#0#0').
name_ref(p_dir_349, param, 'dir', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#dir#0#0').
name_ref(p_dir_351, param, 'dir', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#dir#0#0').
name_ref(p_dir_360, param, 'dir', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#dir#0#0').
name_ref(p_dir_381, param, 'dir', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#dir#0#0').
name_ref(p_enc_416, param, 'enc', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toString(Ljava/lang/String;)Ljava/lang/String;|Ljava/io/UnsupportedEncodingException;#enc#0#0').
name_ref(p_encoding_255, param, 'encoding', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_260, param, 'encoding', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_exc_350, param, 'exc', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#exc#0#1').
name_ref(p_exc_357, param, 'exc', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#exc#0#1').
name_ref(p_expected_387, param, 'expected', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;Z)V#expected#0#2').
name_ref(p_expected_390, param, 'expected', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/nio/file/Path;Z)V#expected#0#2').
name_ref(p_file_340, param, 'file', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_354, param, 'file', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_356, param, 'file', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_359, param, 'file', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_386, param, 'file', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;Z)V#file#0#1').
name_ref(p_file_90, param, 'file', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/File;)J|Ljava/io/IOException;#file#0#1').
name_ref(p_file_filter_364, param, 'fileFilter', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.and(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#fileFilter#0#0').
name_ref(p_file_filter_366, param, 'fileFilter', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.or(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#fileFilter#0#0').
name_ref(p_filter_385, param, 'filter', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;Z)V#filter#0#0').
name_ref(p_filter_388, param, 'filter', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/nio/file/Path;Z)V#filter#0#0').
name_ref(p_flags_368, param, 'flags', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;#flags#0#1').
name_ref(p_flags_378, param, 'flags', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/lang/String;I)V#flags#0#1').
name_ref(p_in_420, param, 'in', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write(Ljava/io/InputStream;)I|Ljava/io/IOException;#in#0#0').
name_ref(p_in_429, param, 'in', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl(Ljava/io/InputStream;)I|Ljava/io/IOException;#in#0#0').
name_ref(p_in_441, param, 'in', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write(Ljava/io/InputStream;)I|Ljava/io/IOException;#in#0#0').
name_ref(p_input_102, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_127, param, 'input', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;#input#0#0').
name_ref(p_input_129, param, 'input', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;#input#0#0').
name_ref(p_input_132, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[B)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_134, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_138, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;[BII)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_142, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_150, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[B)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_152, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_156, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_158, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_166, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#input#0#0').
name_ref(p_input_167, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#input#0#0').
name_ref(p_input_169, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#input#0#0').
name_ref(p_input_183, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;J)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_185, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_188, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/nio/channels/ReadableByteChannel;J)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_192, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;J)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_194, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_197, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/nio/channels/ReadableByteChannel;J)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_1_48, param, 'input1', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z|Ljava/io/IOException;#input1#0#0').
name_ref(p_input_1_52, param, 'input1', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;#input1#0#0').
name_ref(p_input_201, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_202, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_208, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_210, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;J)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_212, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;I)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_219, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/lang/String;)[B#input#0#0').
name_ref(p_input_229, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_230, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_232, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_234, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_235, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_237, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_239, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString([B)Ljava/lang/String;#input#0#0').
name_ref(p_input_240, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString([BLjava/lang/String;)Ljava/lang/String;#input#0#0').
name_ref(p_input_242, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_243, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_245, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_247, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_249, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;Lorg/apache/commons/io/function/IOSupplier<Ljava/lang/String;>;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_2_49, param, 'input2', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z|Ljava/io/IOException;#input2#0#1').
name_ref(p_input_2_53, param, 'input2', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;#input2#0#1').
name_ref(p_input_37, param, 'input', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/InputStream;)V#input#0#0').
name_ref(p_input_433, param, 'input', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_434, param, 'input', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_46, param, 'input', 'Lorg/apache/commons/io/IOUtils;.consume(Ljava/io/InputStream;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_47, param, 'input', 'Lorg/apache/commons/io/IOUtils;.consume(Ljava/io/Reader;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_65, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_67, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_70, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_98, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_charset_69, param, 'inputCharset', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#inputCharset#0#2').
name_ref(p_input_charset_name_72, param, 'inputCharsetName', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#inputCharsetName#0#2').
name_ref(p_input_offset_100, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_offset_104, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_offset_114, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_offset_118, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_stream_12, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;#inputStream#0#0').
name_ref(p_input_stream_13, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;#inputStream#0#0').
name_ref(p_input_stream_207, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;)[B|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_223, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;)[C|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_224, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_226, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_60, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_62, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_93, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_95, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_io_case_369, param, 'ioCase', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.toFlags(Lorg/apache/commons/io/IOCase;)I#ioCase#0#0').
name_ref(p_io_case_380, param, 'ioCase', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V#ioCase#0#1').
name_ref(p_is_constructor_414, param, 'isConstructor', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toInputStream<T:Ljava/io/InputStream;>(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor<TT;>;)Ljava/io/InputStream;#isConstructor#0#0').
name_ref(p_iterator_1_50, param, 'iterator1', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/Iterator<*>;Ljava/util/Iterator<*>;)Z#iterator1#0#0').
name_ref(p_iterator_2_51, param, 'iterator2', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/Iterator<*>;Ljava/util/Iterator<*>;)Z#iterator2#0#1').
name_ref(p_len_419, param, 'len', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write([BII)V#len#0#2').
name_ref(p_len_424, param, 'len', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V#len#0#2').
name_ref(p_len_440, param, 'len', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write([BII)V#len#0#2').
name_ref(p_length_101, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#length#0#3').
name_ref(p_length_105, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#length#0#3').
name_ref(p_length_115, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#length#0#3').
name_ref(p_length_119, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#length#0#3').
name_ref(p_length_137, param, 'length', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#length#0#3').
name_ref(p_length_141, param, 'length', 'Lorg/apache/commons/io/IOUtils;.read(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;[BII)I|Ljava/io/IOException;#length#0#3').
name_ref(p_length_149, param, 'length', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#length#0#3').
name_ref(p_length_155, param, 'length', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#length#0#3').
name_ref(p_length_157, param, 'length', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#length#0#1').
name_ref(p_length_165, param, 'length', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#length#0#3').
name_ref(p_length_400, param, 'length', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;.construct([BII)TT;#length#0#2').
name_ref(p_line_ending_315, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_line_ending_318, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_line_ending_322, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_line_ending_326, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_line_separator_330, param, 'lineSeparator', 'Lorg/apache/commons/io/StandardLineSeparator;.(Ljava/lang/String;ILjava/lang/String;)V#lineSeparator#0#0').
name_ref(p_lines_314, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_lines_317, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_lines_321, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_lines_325, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_list_343, param, 'list', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append(Ljava/util/List<*>;Ljava/lang/StringBuilder;)V#list#0#0').
name_ref(p_name_172, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;)[B|Ljava/io/IOException;#name#0#0').
name_ref(p_name_173, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;Ljava/lang/ClassLoader;)[B|Ljava/io/IOException;#name#0#0').
name_ref(p_name_175, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#name#0#0').
name_ref(p_name_177, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;#name#0#0').
name_ref(p_name_180, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;)Ljava/net/URL;|Ljava/io/IOException;#name#0#0').
name_ref(p_name_181, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;|Ljava/io/IOException;#name#0#0').
name_ref(p_name_342, param, 'name', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#name#0#1').
name_ref(p_name_361, param, 'name', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#name#0#1').
name_ref(p_name_382, param, 'name', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#name#0#1').
name_ref(p_new_count_403, param, 'newCount', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.needNewBuffer(I)V#newCount#0#0').
name_ref(p_off_418, param, 'off', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write([BII)V#off#0#1').
name_ref(p_off_423, param, 'off', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V#off#0#1').
name_ref(p_off_439, param, 'off', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write([BII)V#off#0#1').
name_ref(p_offset_136, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_140, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.read(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;[BII)I|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_148, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_154, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_164, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_399, param, 'offset', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;.construct([BII)TT;#offset#0#1').
name_ref(p_on_accept_336, param, 'onAccept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V#onAccept#0#0').
name_ref(p_on_reject_337, param, 'onReject', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V#onReject#0#1').
name_ref(p_out_431, param, 'out', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeTo(Ljava/io/OutputStream;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_432, param, 'out', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeToImpl(Ljava/io/OutputStream;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_443, param, 'out', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.writeTo(Ljava/io/OutputStream;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_output_103, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_264, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_274, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_276, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_279, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_284, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_286, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_289, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_294, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_296, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_299, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_304, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_306, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_311, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeChunked([BLjava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_316, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#2').
name_ref(p_output_319, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#2').
name_ref(p_output_323, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#2').
name_ref(p_output_39, param, 'output', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/OutputStream;)V#output#0#0').
name_ref(p_output_75, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_77, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_80, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_82, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_85, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_99, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_charset_83, param, 'outputCharset', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#outputCharset#0#2').
name_ref(p_output_charset_name_86, param, 'outputCharsetName', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#outputCharsetName#0#2').
name_ref(p_output_stream_15, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;#outputStream#0#0').
name_ref(p_output_stream_16, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;#outputStream#0#0').
name_ref(p_output_stream_61, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I|Ljava/io/IOException;#outputStream#0#1').
name_ref(p_output_stream_63, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;#outputStream#0#1').
name_ref(p_output_stream_73, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/ByteArrayOutputStream;)Lorg/apache/commons/io/input/QueueInputStream;|Ljava/io/IOException;#outputStream#0#0').
name_ref(p_output_stream_92, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/OutputStream;)J|Ljava/io/IOException;#outputStream#0#1').
name_ref(p_output_stream_94, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J|Ljava/io/IOException;#outputStream#0#1').
name_ref(p_output_stream_96, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;#outputStream#0#1').
name_ref(p_p_371, param, 'p', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.lambda$0(Ljava/nio/file/Path;)Ljava/lang/String;#p#0#0').
name_ref(p_path_362, param, 'path', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#path#0#0').
name_ref(p_path_365, param, 'path', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.matches(Ljava/nio/file/Path;)Z#path#0#0').
name_ref(p_path_383, param, 'path', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#path#0#0').
name_ref(p_path_389, param, 'path', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/nio/file/Path;Z)V#path#0#1').
name_ref(p_path_to_string_373, param, 'pathToString', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/util/regex/Pattern;Ljava/util/function/Function<Ljava/nio/file/Path;Ljava/lang/String;>;)V#pathToString#0#1').
name_ref(p_pattern_367, param, 'pattern', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;#pattern#0#0').
name_ref(p_pattern_370, param, 'pattern', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/util/regex/Pattern;)V#pattern#0#0').
name_ref(p_pattern_372, param, 'pattern', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/util/regex/Pattern;Ljava/util/function/Function<Ljava/nio/file/Path;Ljava/lang/String;>;)V#pattern#0#0').
name_ref(p_pattern_376, param, 'pattern', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/lang/String;)V#pattern#0#0').
name_ref(p_pattern_377, param, 'pattern', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/lang/String;I)V#pattern#0#0').
name_ref(p_pattern_379, param, 'pattern', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V#pattern#0#0').
name_ref(p_reader_107, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_109, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_112, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_116, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_131, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/Reader;)Lorg/apache/commons/io/LineIterator;#reader#0#0').
name_ref(p_reader_144, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[C)I|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_146, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_160, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[C)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_162, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_171, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/Reader;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#reader#0#0').
name_ref(p_reader_18, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reader_19, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;I)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reader_190, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/Reader;J)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_199, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/Reader;J)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_1_56, param, 'reader1', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/BufferedReader;Ljava/io/BufferedReader;)Z#reader1#0#0').
name_ref(p_reader_1_58, param, 'reader1', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/UncheckedIOException;#reader1#0#0').
name_ref(p_reader_204, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reader_205, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;I)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reader_214, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;)[B|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_215, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_217, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_228, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/Reader;)[C|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_252, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/Reader;)Ljava/lang/String;|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_2_57, param, 'reader2', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/BufferedReader;Ljava/io/BufferedReader;)Z#reader2#0#1').
name_ref(p_reader_2_59, param, 'reader2', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/UncheckedIOException;#reader2#0#1').
name_ref(p_reader_40, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Reader;)V#reader#0#0').
name_ref(p_reader_74, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_76, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_79, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_81, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_84, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_87, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/Writer;)I|Ljava/io/IOException;#reader#0#0').
name_ref(p_selector_41, param, 'selector', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/nio/channels/Selector;)V#selector#0#0').
name_ref(p_serializable_392, param, 'serializable', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertSerializable(Lorg/apache/commons/io/filefilter/RegexFileFilter;)Lorg/apache/commons/io/filefilter/RegexFileFilter;|Ljava/io/IOException;#serializable#0#0').
name_ref(p_server_socket_42, param, 'serverSocket', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/ServerSocket;)V#serverSocket#0#0').
name_ref(p_size_14, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;#size#0#1').
name_ref(p_size_17, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;#size#0#1').
name_ref(p_size_20, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;I)Ljava/io/BufferedReader;#size#0#1').
name_ref(p_size_203, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;#size#0#1').
name_ref(p_size_206, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;I)Ljava/io/BufferedReader;#size#0#1').
name_ref(p_size_209, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#size#0#1').
name_ref(p_size_211, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;J)[B|Ljava/io/IOException;#size#0#1').
name_ref(p_size_213, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;I)[B|Ljava/io/IOException;#size#0#1').
name_ref(p_size_23, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;I)Ljava/io/BufferedWriter;#size#0#1').
name_ref(p_size_25, param, 'size', 'Lorg/apache/commons/io/IOUtils;.byteArray(I)[B#size#0#0').
name_ref(p_size_26, param, 'size', 'Lorg/apache/commons/io/IOUtils;.charArray(I)[C#size#0#0').
name_ref(p_size_435, param, 'size', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;#size#0#1').
name_ref(p_size_437, param, 'size', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.(I)V#size#0#0').
name_ref(p_skip_buffer_supplier_187, param, 'skipBufferSupplier', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)J|Ljava/io/IOException;#skipBufferSupplier#0#2').
name_ref(p_skip_buffer_supplier_196, param, 'skipBufferSupplier', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)V|Ljava/io/IOException;#skipBufferSupplier#0#2').
name_ref(p_socket_43, param, 'socket', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/Socket;)V#socket#0#0').
name_ref(p_stream_1_54, param, 'stream1', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/stream/Stream<*>;Ljava/util/stream/Stream<*>;)Z#stream1#0#0').
name_ref(p_stream_2_55, param, 'stream2', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/stream/Stream<*>;Ljava/util/stream/Stream<*>;)Z#stream2#0#1').
name_ref(p_supplier_347, param, 'supplier', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.get(Lorg/apache/commons/io/function/IOSupplier<Ljava/nio/file/FileVisitResult;>;)Ljava/nio/file/FileVisitResult;#supplier#0#0').
name_ref(p_t_348, param, 't', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.handle(Ljava/lang/Throwable;)Ljava/nio/file/FileVisitResult;#t#0#0').
name_ref(p_to_skip_184, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;J)J|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_186, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)J|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_189, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/nio/channels/ReadableByteChannel;J)J|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_191, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/Reader;J)J|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_193, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;J)V|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_195, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)V|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_198, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/nio/channels/ReadableByteChannel;J)V|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_200, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/Reader;J)V|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_uri_220, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URI;)[B|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_253, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;)Ljava/lang/String;|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_254, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_256, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#uri#0#0').
name_ref(p_url_221, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URL;)[B|Ljava/io/IOException;#url#0#0').
name_ref(p_url_258, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;)Ljava/lang/String;|Ljava/io/IOException;#url#0#0').
name_ref(p_url_259, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#url#0#0').
name_ref(p_url_261, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#url#0#0').
name_ref(p_url_89, param, 'url', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/File;)J|Ljava/io/IOException;#url#0#0').
name_ref(p_url_91, param, 'url', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/OutputStream;)J|Ljava/io/IOException;#url#0#0').
name_ref(p_url_connection_222, param, 'urlConnection', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URLConnection;)[B|Ljava/io/IOException;#urlConnection#0#0').
name_ref(p_writer_108, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_110, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_113, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_117, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_21, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;)Ljava/io/BufferedWriter;#writer#0#0').
name_ref(p_writer_22, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;I)Ljava/io/BufferedWriter;#writer#0#0').
name_ref(p_writer_266, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_268, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_271, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_282, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_292, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_302, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_309, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_313, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.writeChunked([CLjava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_327, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#writer#0#2').
name_ref(p_writer_45, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Writer;)V#writer#0#0').
name_ref(p_writer_66, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_68, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_71, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_88, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/Writer;)I|Ljava/io/IOException;#writer#0#1').
name_ref(f_buffers_401, field, 'buffers', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.buffers)Ljava/util/List<[B>;').
name_ref(f_continue_334, field, 'CONTINUE', 'Ljava/nio/file/FileVisitResult;.CONTINUE)Ljava/nio/file/FileVisitResult;').
name_ref(f_count_409, field, 'count', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.count)I').
name_ref(f_cr_329, field, 'CR', 'Lorg/apache/commons/io/StandardLineSeparator;.CR)Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(f_crlf_7, field, 'CRLF', 'Lorg/apache/commons/io/StandardLineSeparator;.CRLF)Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(f_current_buffer_405, field, 'currentBuffer', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.currentBuffer)[B').
name_ref(f_current_buffer_index_404, field, 'currentBufferIndex', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.currentBufferIndex)I').
name_ref(f_default_buffer_size_24, field, 'DEFAULT_BUFFER_SIZE', 'Lorg/apache/commons/io/IOUtils;.DEFAULT_BUFFER_SIZE)I').
name_ref(f_default_size_436, field, 'DEFAULT_SIZE', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.DEFAULT_SIZE)I').
name_ref(f_dir_separator_1, field, 'DIR_SEPARATOR', 'Lorg/apache/commons/io/IOUtils;.DIR_SEPARATOR)C').
name_ref(f_empty_byte_array_2, field, 'EMPTY_BYTE_ARRAY', 'Lorg/apache/commons/io/IOUtils;.EMPTY_BYTE_ARRAY)[B').
name_ref(f_empty_string_array_358, field, 'EMPTY_STRING_ARRAY', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.EMPTY_STRING_ARRAY)[Ljava/lang/String;').
name_ref(f_filled_buffer_sum_407, field, 'filledBufferSum', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.filledBufferSum)I').
name_ref(f_length_395, field, 'length', '.length)I').
name_ref(f_lf_5, field, 'LF', 'Lorg/apache/commons/io/StandardLineSeparator;.LF)Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(f_line_separator_3, field, 'LINE_SEPARATOR', 'Lorg/apache/commons/io/IOUtils;.LINE_SEPARATOR)Ljava/lang/String;').
name_ref(f_line_separator_331, field, 'lineSeparator', 'Lorg/apache/commons/io/StandardLineSeparator;.lineSeparator)Ljava/lang/String;').
name_ref(f_line_separator_unix_4, field, 'LINE_SEPARATOR_UNIX', 'Lorg/apache/commons/io/IOUtils;.LINE_SEPARATOR_UNIX)Ljava/lang/String;').
name_ref(f_line_separator_windows_6, field, 'LINE_SEPARATOR_WINDOWS', 'Lorg/apache/commons/io/IOUtils;.LINE_SEPARATOR_WINDOWS)Ljava/lang/String;').
name_ref(f_on_accept_338, field, 'onAccept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.onAccept)Ljava/nio/file/FileVisitResult;').
name_ref(f_on_reject_339, field, 'onReject', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.onReject)Ljava/nio/file/FileVisitResult;').
name_ref(f_path_to_string_375, field, 'pathToString', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.pathToString)Ljava/util/function/Function<Ljava/nio/file/Path;Ljava/lang/String;>;').
name_ref(f_pattern_374, field, 'pattern', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.pattern)Ljava/util/regex/Pattern;').
name_ref(f_reuse_buffers_402, field, 'reuseBuffers', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.reuseBuffers)Z').
name_ref(f_scratch_byte_buffer_rw_8, field, 'SCRATCH_BYTE_BUFFER_RW', 'Lorg/apache/commons/io/IOUtils;.SCRATCH_BYTE_BUFFER_RW)Ljava/lang/ThreadLocal<[B>;').
name_ref(f_scratch_byte_buffer_wo_9, field, 'SCRATCH_BYTE_BUFFER_WO', 'Lorg/apache/commons/io/IOUtils;.SCRATCH_BYTE_BUFFER_WO)[B').
name_ref(f_scratch_char_buffer_rw_10, field, 'SCRATCH_CHAR_BUFFER_RW', 'Lorg/apache/commons/io/IOUtils;.SCRATCH_CHAR_BUFFER_RW)Ljava/lang/ThreadLocal<[C>;').
name_ref(f_scratch_char_buffer_wo_11, field, 'SCRATCH_CHAR_BUFFER_WO', 'Lorg/apache/commons/io/IOUtils;.SCRATCH_CHAR_BUFFER_WO)[C').
name_ref(f_terminate_335, field, 'TERMINATE', 'Ljava/nio/file/FileVisitResult;.TERMINATE)Ljava/nio/file/FileVisitResult;').
name_ref(m_abstract_file_filter_177, method, 'AbstractFileFilter', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.()V').
name_ref(m_abstract_file_filter_178, method, 'AbstractFileFilter', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V').
name_ref(m_accept_179, method, 'accept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_180, method, 'accept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z').
name_ref(m_accept_191, method, 'accept', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_192, method, 'accept', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z').
name_ref(m_accept_193, method, 'accept', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_accept_208, method, 'accept', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z').
name_ref(m_accept_209, method, 'accept', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_add_239, method, 'add', 'Ljava/util/List;.add(TE;)Z').
name_ref(m_and_194, method, 'and', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.and(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_append_181, method, 'append', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append(Ljava/util/List<*>;Ljava/lang/StringBuilder;)V').
name_ref(m_append_182, method, 'append', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append([Ljava/lang/Object;Ljava/lang/StringBuilder;)V').
name_ref(m_apply_212, method, 'apply', 'Ljava/util/function/Function;.apply(TT;)TR;').
name_ref(m_array_list_235, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_arraycopy_246, method, 'arraycopy', 'Ljava/lang/System;.arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V').
name_ref(m_assert_equals_216, method, 'assertEquals', 'Lorg/junit/jupiter/api/Assertions;.assertEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V').
name_ref(m_assert_filtering_214, method, 'assertFiltering', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;Z)V').
name_ref(m_assert_filtering_215, method, 'assertFiltering', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/nio/file/Path;Z)V').
name_ref(m_assert_not_null_220, method, 'assertNotNull', 'Lorg/junit/jupiter/api/Assertions;.assertNotNull(Ljava/lang/Object;)V').
name_ref(m_assert_serializable_222, method, 'assertSerializable', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.assertSerializable(Lorg/apache/commons/io/filefilter/RegexFileFilter;)Lorg/apache/commons/io/filefilter/RegexFileFilter;|Ljava/io/IOException;').
name_ref(m_assert_true_227, method, 'assertTrue', 'Lorg/junit/jupiter/api/Assertions;.assertTrue(Z)V').
name_ref(m_buffer_10, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;)Ljava/io/BufferedReader;').
name_ref(m_buffer_11, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;I)Ljava/io/BufferedReader;').
name_ref(m_buffer_12, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;)Ljava/io/BufferedWriter;').
name_ref(m_buffer_13, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;I)Ljava/io/BufferedWriter;').
name_ref(m_buffer_6, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;').
name_ref(m_buffer_7, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;').
name_ref(m_buffer_8, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;').
name_ref(m_buffer_9, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;').
name_ref(m_byte_array_14, method, 'byteArray', 'Lorg/apache/commons/io/IOUtils;.byteArray(I)[B').
name_ref(m_byte_array_4, method, 'byteArray', 'Lorg/apache/commons/io/IOUtils;.byteArray()[B').
name_ref(m_byte_array_output_stream_223, method, 'ByteArrayOutputStream', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.()V').
name_ref(m_byte_array_output_stream_262, method, 'ByteArrayOutputStream', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.(I)V').
name_ref(m_char_array_15, method, 'charArray', 'Lorg/apache/commons/io/IOUtils;.charArray(I)[C').
name_ref(m_char_array_5, method, 'charArray', 'Lorg/apache/commons/io/IOUtils;.charArray()[C').
name_ref(m_clear_16, method, 'clear', 'Lorg/apache/commons/io/IOUtils;.clear()V').
name_ref(m_close_17, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;)V|Ljava/io/IOException;').
name_ref(m_close_18, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close([Ljava/io/Closeable;)V|Lorg/apache/commons/io/IOExceptionList;').
name_ref(m_close_19, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;Lorg/apache/commons/io/function/IOConsumer<Ljava/io/IOException;>;)V|Ljava/io/IOException;').
name_ref(m_close_20, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/net/URLConnection;)V').
name_ref(m_close_236, method, 'close', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.close()V|Ljava/io/IOException;').
name_ref(m_close_q_21, method, 'closeQ', 'Lorg/apache/commons/io/IOUtils;.closeQ(Ljava/io/Closeable;)V').
name_ref(m_close_quietly_22, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;)V').
name_ref(m_close_quietly_23, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly([Ljava/io/Closeable;)V').
name_ref(m_close_quietly_24, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer<Ljava/io/IOException;>;)V').
name_ref(m_close_quietly_25, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/InputStream;)V').
name_ref(m_close_quietly_26, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/lang/Iterable<Ljava/io/Closeable;>;)V').
name_ref(m_close_quietly_27, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/OutputStream;)V').
name_ref(m_close_quietly_28, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Reader;)V').
name_ref(m_close_quietly_29, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/nio/channels/Selector;)V').
name_ref(m_close_quietly_30, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/ServerSocket;)V').
name_ref(m_close_quietly_31, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/Socket;)V').
name_ref(m_close_quietly_32, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/util/stream/Stream<Ljava/io/Closeable;>;)V').
name_ref(m_close_quietly_33, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Writer;)V').
name_ref(m_compile_198, method, 'compile', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;').
name_ref(m_compile_199, method, 'compile', 'Ljava/util/regex/Pattern;.compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;').
name_ref(m_compile_233, method, 'compile', 'Ljava/util/regex/Pattern;.compile(Ljava/lang/String;)Ljava/util/regex/Pattern;').
name_ref(m_construct_234, method, 'construct', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;.construct([BII)TT;').
name_ref(m_consume_34, method, 'consume', 'Lorg/apache/commons/io/IOUtils;.consume(Ljava/io/InputStream;)J|Ljava/io/IOException;').
name_ref(m_consume_35, method, 'consume', 'Lorg/apache/commons/io/IOUtils;.consume(Ljava/io/Reader;)J|Ljava/io/IOException;').
name_ref(m_content_equals_36, method, 'contentEquals', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z|Ljava/io/IOException;').
name_ref(m_content_equals_37, method, 'contentEquals', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/Iterator<*>;Ljava/util/Iterator<*>;)Z').
name_ref(m_content_equals_38, method, 'contentEquals', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;').
name_ref(m_content_equals_39, method, 'contentEquals', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/stream/Stream<*>;Ljava/util/stream/Stream<*>;)Z').
name_ref(m_content_equals_ignore_eol_40, method, 'contentEqualsIgnoreEOL', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/BufferedReader;Ljava/io/BufferedReader;)Z').
name_ref(m_content_equals_ignore_eol_41, method, 'contentEqualsIgnoreEOL', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/UncheckedIOException;').
name_ref(m_copy_42, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I|Ljava/io/IOException;').
name_ref(m_copy_43, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;').
name_ref(m_copy_44, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_copy_45, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_copy_46, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_copy_47, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/ByteArrayOutputStream;)Lorg/apache/commons/io/input/QueueInputStream;|Ljava/io/IOException;').
name_ref(m_copy_48, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;)J|Ljava/io/IOException;').
name_ref(m_copy_49, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;').
name_ref(m_copy_50, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_copy_51, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_copy_52, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_copy_53, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/Writer;)I|Ljava/io/IOException;').
name_ref(m_copy_54, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/File;)J|Ljava/io/IOException;').
name_ref(m_copy_55, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/OutputStream;)J|Ljava/io/IOException;').
name_ref(m_copy_large_56, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J|Ljava/io/IOException;').
name_ref(m_copy_large_57, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;').
name_ref(m_copy_large_58, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;').
name_ref(m_copy_large_59, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;').
name_ref(m_copy_large_60, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J|Ljava/io/IOException;').
name_ref(m_copy_large_61, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;').
name_ref(m_copy_large_62, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;').
name_ref(m_copy_large_63, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;').
name_ref(m_fill_0_64, method, 'fill0', 'Lorg/apache/commons/io/IOUtils;.fill0([B)[B').
name_ref(m_fill_0_65, method, 'fill0', 'Lorg/apache/commons/io/IOUtils;.fill0([C)[C').
name_ref(m_flush_226, method, 'flush', 'Ljava/io/OutputStream;.flush()V|Ljava/io/IOException;').
name_ref(m_get_183, method, 'get', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.get(Lorg/apache/commons/io/function/IOSupplier<Ljava/nio/file/FileVisitResult;>;)Ljava/nio/file/FileVisitResult;').
name_ref(m_get_232, method, 'get', 'Ljava/nio/file/Paths;.get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;').
name_ref(m_get_bytes_175, method, 'getBytes', 'Lorg/apache/commons/io/StandardLineSeparator;.getBytes(Ljava/nio/charset/Charset;)[B').
name_ref(m_get_class_218, method, 'getClass', 'Ljava/lang/Object;.getClass()Ljava/lang/Class<*>;').
name_ref(m_get_file_name_204, method, 'getFileName', 'Ljava/nio/file/Path;.getFileName()Ljava/nio/file/Path;').
name_ref(m_get_name_217, method, 'getName', 'Ljava/lang/Class;.getName()Ljava/lang/String;').
name_ref(m_get_parent_219, method, 'getParent', 'Ljava/nio/file/Path;.getParent()Ljava/nio/file/Path;').
name_ref(m_get_scratch_byte_array_66, method, 'getScratchByteArray', 'Lorg/apache/commons/io/IOUtils;.getScratchByteArray()[B').
name_ref(m_get_scratch_byte_array_write_only_67, method, 'getScratchByteArrayWriteOnly', 'Lorg/apache/commons/io/IOUtils;.getScratchByteArrayWriteOnly()[B').
name_ref(m_get_scratch_char_array_68, method, 'getScratchCharArray', 'Lorg/apache/commons/io/IOUtils;.getScratchCharArray()[C').
name_ref(m_get_scratch_char_array_write_only_69, method, 'getScratchCharArrayWriteOnly', 'Lorg/apache/commons/io/IOUtils;.getScratchCharArrayWriteOnly()[C').
name_ref(m_get_string_2, method, 'getString', 'Lorg/apache/commons/io/StandardLineSeparator;.getString()Ljava/lang/String;').
name_ref(m_handle_184, method, 'handle', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.handle(Ljava/lang/Throwable;)Ljava/nio/file/FileVisitResult;').
name_ref(m_ioutils_172, method, 'IOUtils', 'Lorg/apache/commons/io/IOUtils;.()V').
name_ref(m_length_70, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length([B)I').
name_ref(m_length_71, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length([C)I').
name_ref(m_length_72, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length(Ljava/lang/CharSequence;)I').
name_ref(m_length_73, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length([Ljava/lang/Object;)I').
name_ref(m_line_iterator_74, method, 'lineIterator', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;').
name_ref(m_line_iterator_75, method, 'lineIterator', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;').
name_ref(m_line_iterator_76, method, 'lineIterator', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/Reader;)Lorg/apache/commons/io/LineIterator;').
name_ref(m_line_separator_1, method, 'lineSeparator', 'Ljava/lang/System;.lineSeparator()Ljava/lang/String;').
name_ref(m_matcher_211, method, 'matcher', 'Ljava/util/regex/Pattern;.matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;').
name_ref(m_matches_195, method, 'matches', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.matches(Ljava/nio/file/Path;)Z').
name_ref(m_matches_210, method, 'matches', 'Ljava/util/regex/Matcher;.matches()Z').
name_ref(m_min_245, method, 'min', 'Ljava/lang/Math;.min(II)I').
name_ref(m_need_new_buffer_237, method, 'needNewBuffer', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.needNewBuffer(I)V').
name_ref(m_negate_196, method, 'negate', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.negate()Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_object_output_stream_224, method, 'ObjectOutputStream', 'Ljava/io/ObjectOutputStream;.(Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_or_197, method, 'or', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.or(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_post_visit_directory_185, method, 'postVisitDirectory', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;').
name_ref(m_pre_visit_directory_186, method, 'preVisitDirectory', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;').
name_ref(m_read_77, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[B)I|Ljava/io/IOException;').
name_ref(m_read_78, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;').
name_ref(m_read_79, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;[BII)I|Ljava/io/IOException;').
name_ref(m_read_80, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I|Ljava/io/IOException;').
name_ref(m_read_81, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[C)I|Ljava/io/IOException;').
name_ref(m_read_82, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;').
name_ref(m_read_fully_83, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[B)V|Ljava/io/IOException;').
name_ref(m_read_fully_84, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;').
name_ref(m_read_fully_85, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;I)[B|Ljava/io/IOException;').
name_ref(m_read_fully_86, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V|Ljava/io/IOException;').
name_ref(m_read_fully_87, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[C)V|Ljava/io/IOException;').
name_ref(m_read_fully_88, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;').
name_ref(m_read_lines_89, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;').
name_ref(m_read_lines_90, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;').
name_ref(m_read_lines_91, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;').
name_ref(m_read_lines_92, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/Reader;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;').
name_ref(m_regex_file_filter_201, method, 'RegexFileFilter', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/util/regex/Pattern;)V').
name_ref(m_regex_file_filter_202, method, 'RegexFileFilter', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/util/regex/Pattern;Ljava/util/function/Function<Ljava/nio/file/Path;Ljava/lang/String;>;)V').
name_ref(m_regex_file_filter_205, method, 'RegexFileFilter', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/lang/String;)V').
name_ref(m_regex_file_filter_206, method, 'RegexFileFilter', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/lang/String;I)V').
name_ref(m_regex_file_filter_207, method, 'RegexFileFilter', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V').
name_ref(m_require_non_null_174, method, 'requireNonNull', 'Ljava/util/Objects;.requireNonNull<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;').
name_ref(m_reset_240, method, 'reset', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.reset()V').
name_ref(m_reset_263, method, 'reset', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.reset()V').
name_ref(m_reset_impl_241, method, 'resetImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.resetImpl()V').
name_ref(m_resource_to_byte_array_93, method, 'resourceToByteArray', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;)[B|Ljava/io/IOException;').
name_ref(m_resource_to_byte_array_94, method, 'resourceToByteArray', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;Ljava/lang/ClassLoader;)[B|Ljava/io/IOException;').
name_ref(m_resource_to_string_95, method, 'resourceToString', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_resource_to_string_96, method, 'resourceToString', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_resource_to_url_97, method, 'resourceToURL', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;)Ljava/net/URL;|Ljava/io/IOException;').
name_ref(m_resource_to_url_98, method, 'resourceToURL', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;|Ljava/io/IOException;').
name_ref(m_size_238, method, 'size', 'Ljava/util/List;.size()I').
name_ref(m_size_242, method, 'size', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.size()I').
name_ref(m_size_264, method, 'size', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.size()I').
name_ref(m_skip_100, method, 'skip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)J|Ljava/io/IOException;').
name_ref(m_skip_101, method, 'skip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/nio/channels/ReadableByteChannel;J)J|Ljava/io/IOException;').
name_ref(m_skip_102, method, 'skip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/Reader;J)J|Ljava/io/IOException;').
name_ref(m_skip_99, method, 'skip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;J)J|Ljava/io/IOException;').
name_ref(m_skip_fully_103, method, 'skipFully', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;J)V|Ljava/io/IOException;').
name_ref(m_skip_fully_104, method, 'skipFully', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)V|Ljava/io/IOException;').
name_ref(m_skip_fully_105, method, 'skipFully', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/nio/channels/ReadableByteChannel;J)V|Ljava/io/IOException;').
name_ref(m_skip_fully_106, method, 'skipFully', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/Reader;J)V|Ljava/io/IOException;').
name_ref(m_standard_line_separator_173, method, 'StandardLineSeparator', 'Lorg/apache/commons/io/StandardLineSeparator;.(Ljava/lang/String;ILjava/lang/String;)V').
name_ref(m_test_regex_229, method, 'testRegex', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.testRegex()V|Ljava/io/IOException;').
name_ref(m_test_regex_edge_cases_230, method, 'testRegexEdgeCases', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.testRegexEdgeCases()V').
name_ref(m_test_regex_file_name_only_231, method, 'testRegexFileNameOnly', 'Lorg/apache/commons/io/filefilter/RegexFileFilterTest;.testRegexFileNameOnly()V|Ljava/io/IOException;').
name_ref(m_to_buffered_input_stream_107, method, 'toBufferedInputStream', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_buffered_input_stream_108, method, 'toBufferedInputStream', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_buffered_input_stream_260, method, 'toBufferedInputStream', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_buffered_input_stream_261, method, 'toBufferedInputStream', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_buffered_reader_109, method, 'toBufferedReader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;').
name_ref(m_to_buffered_reader_110, method, 'toBufferedReader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;I)Ljava/io/BufferedReader;').
name_ref(m_to_byte_array_111, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_112, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;I)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_113, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;J)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_114, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;I)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_115, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_116, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_117, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_118, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/lang/String;)[B').
name_ref(m_to_byte_array_119, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URI;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_120, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URL;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_121, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URLConnection;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_228, method, 'toByteArray', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toByteArray()[B').
name_ref(m_to_byte_array_243, method, 'toByteArray', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArray()[B').
name_ref(m_to_byte_array_impl_244, method, 'toByteArrayImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B').
name_ref(m_to_char_array_122, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;)[C|Ljava/io/IOException;').
name_ref(m_to_char_array_123, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C|Ljava/io/IOException;').
name_ref(m_to_char_array_124, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C|Ljava/io/IOException;').
name_ref(m_to_char_array_125, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/Reader;)[C|Ljava/io/IOException;').
name_ref(m_to_default_file_visit_result_176, method, 'toDefaultFileVisitResult', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.toDefaultFileVisitResult(Z)Ljava/nio/file/FileVisitResult;').
name_ref(m_to_file_visit_result_187, method, 'toFileVisitResult', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;').
name_ref(m_to_flags_200, method, 'toFlags', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.toFlags(Lorg/apache/commons/io/IOCase;)I').
name_ref(m_to_input_stream_126, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_127, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_128, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_129, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_130, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_131, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_247, method, 'toInputStream', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toInputStream()Ljava/io/InputStream;').
name_ref(m_to_input_stream_248, method, 'toInputStream', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toInputStream<T:Ljava/io/InputStream;>(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor<TT;>;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_265, method, 'toInputStream', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toInputStream()Ljava/io/InputStream;').
name_ref(m_to_string_132, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString([B)Ljava/lang/String;').
name_ref(m_to_string_133, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString([BLjava/lang/String;)Ljava/lang/String;').
name_ref(m_to_string_134, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_135, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_136, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_137, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_138, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;Lorg/apache/commons/io/function/IOSupplier<Ljava/lang/String;>;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_139, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/Reader;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_140, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_141, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_142, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_143, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_144, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_145, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_188, method, 'toString', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.toString()Ljava/lang/String;').
name_ref(m_to_string_203, method, 'toString', 'Ljava/nio/file/Path;.toString()Ljava/lang/String;').
name_ref(m_to_string_213, method, 'toString', 'Lorg/apache/commons/io/filefilter/RegexFileFilter;.toString()Ljava/lang/String;').
name_ref(m_to_string_221, method, 'toString', 'Ljava/lang/Object;.toString()Ljava/lang/String;').
name_ref(m_to_string_249, method, 'toString', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toString()Ljava/lang/String;').
name_ref(m_to_string_250, method, 'toString', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toString(Ljava/nio/charset/Charset;)Ljava/lang/String;').
name_ref(m_to_string_251, method, 'toString', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toString(Ljava/lang/String;)Ljava/lang/String;|Ljava/io/UnsupportedEncodingException;').
name_ref(m_visit_file_189, method, 'visitFile', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;').
name_ref(m_visit_file_failed_190, method, 'visitFileFailed', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;').
name_ref(m_with_initial_3, method, 'withInitial', 'Ljava/lang/ThreadLocal;.withInitial<S:Ljava/lang/Object;>(Ljava/util/function/Supplier<+TS;>;)Ljava/lang/ThreadLocal<TS;>;').
name_ref(m_write_146, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_147, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_148, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_149, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_150, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_151, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_152, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_153, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_154, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_155, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_156, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_157, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_158, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_159, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_160, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_161, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_162, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_163, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_164, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_252, method, 'write', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write([BII)V').
name_ref(m_write_253, method, 'write', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write(Ljava/io/InputStream;)I|Ljava/io/IOException;').
name_ref(m_write_254, method, 'write', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write(I)V').
name_ref(m_write_266, method, 'write', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write([BII)V').
name_ref(m_write_267, method, 'write', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write(Ljava/io/InputStream;)I|Ljava/io/IOException;').
name_ref(m_write_268, method, 'write', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write(I)V').
name_ref(m_write_chunked_165, method, 'writeChunked', 'Lorg/apache/commons/io/IOUtils;.writeChunked([BLjava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_chunked_166, method, 'writeChunked', 'Lorg/apache/commons/io/IOUtils;.writeChunked([CLjava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_impl_255, method, 'writeImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V').
name_ref(m_write_impl_256, method, 'writeImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl(Ljava/io/InputStream;)I|Ljava/io/IOException;').
name_ref(m_write_impl_257, method, 'writeImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl(I)V').
name_ref(m_write_lines_167, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_lines_168, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_lines_169, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_lines_170, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_object_225, method, 'writeObject', 'Ljava/io/ObjectOutputStream;.writeObject(Ljava/lang/Object;)V|Ljava/io/IOException;').
name_ref(m_write_to_258, method, 'writeTo', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeTo(Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_to_269, method, 'writeTo', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.writeTo(Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_to_impl_259, method, 'writeToImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeToImpl(Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_writer_171, method, 'writer', 'Lorg/apache/commons/io/IOUtils;.writer(Ljava/lang/Appendable;)Ljava/io/Writer;').
name_ref(q_continue_4, q_name, 'FileVisitResult.CONTINUE', 'Ljava/nio/file/FileVisitResult;:Ljava/nio/file/FileVisitResult;.CONTINUE)Ljava/nio/file/FileVisitResult;').
name_ref(q_crlf_3, q_name, 'StandardLineSeparator.CRLF', 'Lorg/apache/commons/io/StandardLineSeparator;:Lorg/apache/commons/io/StandardLineSeparator;.CRLF)Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(q_length_6, q_name, 'buf.length', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#0#buf:.length)I').
name_ref(q_length_7, q_name, 'currentBuffer.length', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.currentBuffer)[B:.length)I').
name_ref(q_lf_2, q_name, 'StandardLineSeparator.LF', 'Lorg/apache/commons/io/StandardLineSeparator;:Lorg/apache/commons/io/StandardLineSeparator;.LF)Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(q_separator_char_1, q_name, 'File.separatorChar', 'Ljava/io/File;:Ljava/io/File;.separatorChar)C').
name_ref(q_terminate_5, q_name, 'FileVisitResult.TERMINATE', 'Ljava/nio/file/FileVisitResult;:Ljava/nio/file/FileVisitResult;.TERMINATE)Ljava/nio/file/FileVisitResult;').

%%% End of Code Facts

