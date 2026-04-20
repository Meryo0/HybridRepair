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
trace(trace_4, trace_3, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_6, trace_5, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(f_path_to_string_375, null, line(regex_file_filter_1, 184)).



%%% End of Facts