%%% Logic-FL Facts
:- style_check(-discontiguous).

%string_builder_writer_1 - org.apache.commons.io.output.StringBuilderWriter
param(p_capacity_316, 1, m_string_builder_writer_1).
assign(f_builder_317, string_builder_writer_1_expr3, line(string_builder_writer_1, 51)).
method_invoc(string_builder_writer_1_expr3, m_string_builder_291, line(string_builder_writer_1, 51)).
argument(p_capacity_316, 1, string_builder_writer_1_expr3).
param(p_builder_318, 1, m_string_builder_writer_292).
param(p_value_319, 1, m_append_293).
param(p_value_320, 1, m_append_294).
param(p_value_321, 1, m_append_295).
param(p_start_322, 2, m_append_295).
param(p_end_323, 3, m_append_295).
param(p_value_324, 1, m_write_298).
method_invoc(string_builder_writer_1_expr6, m_append_299, line(string_builder_writer_1, 128)).
argument(p_value_324, 1, string_builder_writer_1_expr6).
ref(f_builder_317, string_builder_writer_1_expr6, line(string_builder_writer_1, 128)).
param(p_value_325, 1, m_write_300).
param(p_offset_326, 2, m_write_300).
param(p_length_327, 3, m_write_300).
return(string_builder_writer_1_expr7, m_to_string_4, line(string_builder_writer_1, 162)).
method_invoc(string_builder_writer_1_expr7, m_to_string_302, line(string_builder_writer_1, 162)).
ref(f_builder_317, string_builder_writer_1_expr7, line(string_builder_writer_1, 162)).

%ioutils_1 - org.apache.commons.io.IOUtils
assign(f_dir_separator_1, q_separator_char_1, line(ioutils_1, 116)).
ref(t_file_1, q_separator_char_1, line(ioutils_1, 116)).
assign(v_buf_2, ioutils_1_expr2, line(ioutils_1, 171)).
method_invoc(ioutils_1_expr2, m_string_builder_writer_1, line(ioutils_1, 171)).
argument(ioutils_1_literal1, 1, ioutils_1_expr2).
assign(v_out_3, ioutils_1_expr4, line(ioutils_1, 172)).
method_invoc(ioutils_1_expr4, m_print_writer_2, line(ioutils_1, 172)).
argument(v_buf_2, 1, ioutils_1_expr4).
method_invoc(ioutils_1_expr5, m_println_3, line(ioutils_1, 173)).
ref(v_out_3, ioutils_1_expr5, line(ioutils_1, 173)).
assign(f_line_separator_4, ioutils_1_expr7, line(ioutils_1, 174)).
method_invoc(ioutils_1_expr7, m_to_string_4, line(ioutils_1, 174)).
ref(v_buf_2, ioutils_1_expr7, line(ioutils_1, 174)).
param(p_input_stream_5, 1, m_buffer_5).
throw(m_buffer_5, null_pointer_exception).
method_invoc(ioutils_1_expr9, m_null_pointer_exception_6, line(ioutils_1, 190)).
return(ioutils_1_expr10, m_buffer_5, line(ioutils_1, 192)).
cond_expr(ioutils_1_expr11, ioutils_1_expr12, ioutils_1_expr13, line(ioutils_1, 192)).
param(p_input_stream_6, 1, m_buffer_7).
param(p_size_7, 2, m_buffer_7).
param(p_output_stream_8, 1, m_buffer_8).
param(p_output_stream_9, 1, m_buffer_9).
param(p_size_10, 2, m_buffer_9).
param(p_reader_11, 1, m_buffer_10).
param(p_reader_12, 1, m_buffer_11).
param(p_size_13, 2, m_buffer_11).
param(p_writer_14, 1, m_buffer_12).
param(p_writer_15, 1, m_buffer_13).
param(p_size_16, 2, m_buffer_13).
param(p_closeable_17, 1, m_close_quietly_14).
method_invoc(ioutils_1_expr14, m_close_quietly_15, line(ioutils_1, 347)).
argument(p_closeable_17, 1, ioutils_1_expr14).
argument(ioutils_1_expr15, 2, ioutils_1_expr14).
assign(ioutils_1_expr15, ioutils_1_literal3, line(ioutils_1, 347)).
param(p_closeable_18, 1, m_close_quietly_15).
param(p_consumer_19, 2, m_close_quietly_15).
method_invoc(ioutils_1_expr17, m_close_16, line(ioutils_1, 360)).
throw(ioutils_1_expr17, ioexception, line(ioutils_1, 360)).
ref(p_closeable_18, ioutils_1_expr17, line(ioutils_1, 360)).
param(p_closeable_20, 1, m_close_17).
throw(m_close_17, ioexception).
param(p_closeable_21, 1, m_close_18).
param(p_consumer_22, 2, m_close_18).
throw(m_close_18, ioexception).
param(p_conn_23, 1, m_close_19).
param(p_closeables_24, 1, m_close_quietly_20).
param(p_input_25, 1, m_close_quietly_21).
param(p_output_26, 1, m_close_quietly_22).
method_invoc(ioutils_1_expr18, m_close_quietly_14, line(ioutils_1, 533)).
argument(ioutils_1_expr19, 1, ioutils_1_expr18).
assign(ioutils_1_expr19, p_output_26, line(ioutils_1, 533)).
param(p_input_27, 1, m_close_quietly_23).
param(p_selector_28, 1, m_close_quietly_24).
param(p_server_socket_29, 1, m_close_quietly_25).
param(p_socket_30, 1, m_close_quietly_26).
param(p_output_31, 1, m_close_quietly_27).
param(p_input_1_32, 1, m_content_equals_28).
param(p_input_2_33, 2, m_content_equals_28).
throw(m_content_equals_28, ioexception).
return(ioutils_1_literal5, m_content_equals_28, line(ioutils_1, 713)).
assign(v_buffered_input1_34, ioutils_1_expr21, line(ioutils_1, 715)).
method_invoc(ioutils_1_expr21, m_buffer_5, line(ioutils_1, 715)).
argument(p_input_1_32, 1, ioutils_1_expr21).
assign(v_buffered_input2_35, ioutils_1_expr22, line(ioutils_1, 716)).
method_invoc(ioutils_1_expr22, m_buffer_5, line(ioutils_1, 716)).
throw(ioutils_1_expr22, null_pointer_exception, line(ioutils_1, 716)).
argument(p_input_2_33, 1, ioutils_1_expr22).
param(p_input_1_36, 1, m_content_equals_29).
param(p_input_2_37, 2, m_content_equals_29).
throw(m_content_equals_29, ioexception).
param(p_input_1_38, 1, m_content_equals_ignore_eol_30).
param(p_input_2_39, 2, m_content_equals_ignore_eol_30).
throw(m_content_equals_ignore_eol_30, ioexception).
param(p_input_40, 1, m_copy_31).
param(p_output_41, 2, m_copy_31).
throw(m_copy_31, ioexception).
param(p_input_42, 1, m_copy_32).
param(p_output_43, 2, m_copy_32).
param(p_buffer_size_44, 3, m_copy_32).
throw(m_copy_32, ioexception).
param(p_input_45, 1, m_copy_33).
param(p_output_46, 2, m_copy_33).
throw(m_copy_33, ioexception).
param(p_input_47, 1, m_copy_34).
param(p_output_48, 2, m_copy_34).
param(p_input_encoding_49, 3, m_copy_34).
throw(m_copy_34, ioexception).
param(p_input_50, 1, m_copy_35).
param(p_output_51, 2, m_copy_35).
param(p_input_encoding_52, 3, m_copy_35).
throw(m_copy_35, ioexception).
param(p_input_53, 1, m_copy_36).
param(p_output_54, 2, m_copy_36).
throw(m_copy_36, ioexception).
param(p_input_55, 1, m_copy_37).
param(p_output_56, 2, m_copy_37).
param(p_buffer_57, 3, m_copy_37).
throw(m_copy_37, ioexception).
param(p_input_58, 1, m_copy_38).
param(p_output_59, 2, m_copy_38).
throw(m_copy_38, ioexception).
param(p_input_60, 1, m_copy_39).
param(p_output_61, 2, m_copy_39).
param(p_output_encoding_62, 3, m_copy_39).
throw(m_copy_39, ioexception).
param(p_input_63, 1, m_copy_40).
param(p_output_64, 2, m_copy_40).
param(p_output_encoding_65, 3, m_copy_40).
throw(m_copy_40, ioexception).
param(p_input_66, 1, m_copy_41).
param(p_output_67, 2, m_copy_41).
throw(m_copy_41, ioexception).
param(p_input_68, 1, m_copy_large_42).
param(p_output_69, 2, m_copy_large_42).
throw(m_copy_large_42, ioexception).
param(p_input_70, 1, m_copy_large_43).
param(p_output_71, 2, m_copy_large_43).
param(p_buffer_72, 3, m_copy_large_43).
throw(m_copy_large_43, ioexception).
param(p_input_73, 1, m_copy_large_44).
param(p_output_74, 2, m_copy_large_44).
param(p_input_offset_75, 3, m_copy_large_44).
param(p_length_76, 4, m_copy_large_44).
throw(m_copy_large_44, ioexception).
param(p_input_77, 1, m_copy_large_45).
param(p_output_78, 2, m_copy_large_45).
param(p_input_offset_79, 3, m_copy_large_45).
param(p_length_80, 4, m_copy_large_45).
param(p_buffer_81, 5, m_copy_large_45).
throw(m_copy_large_45, ioexception).
param(p_input_82, 1, m_copy_large_46).
param(p_output_83, 2, m_copy_large_46).
throw(m_copy_large_46, ioexception).
param(p_input_84, 1, m_copy_large_47).
param(p_output_85, 2, m_copy_large_47).
param(p_buffer_86, 3, m_copy_large_47).
throw(m_copy_large_47, ioexception).
param(p_input_87, 1, m_copy_large_48).
param(p_output_88, 2, m_copy_large_48).
param(p_input_offset_89, 3, m_copy_large_48).
param(p_length_90, 4, m_copy_large_48).
throw(m_copy_large_48, ioexception).
param(p_input_91, 1, m_copy_large_49).
param(p_output_92, 2, m_copy_large_49).
param(p_input_offset_93, 3, m_copy_large_49).
param(p_length_94, 4, m_copy_large_49).
param(p_buffer_95, 5, m_copy_large_49).
throw(m_copy_large_49, ioexception).
param(p_array_96, 1, m_length_50).
param(p_array_97, 1, m_length_51).
param(p_csq_98, 1, m_length_52).
param(p_array_99, 1, m_length_53).
param(p_input_100, 1, m_line_iterator_54).
param(p_encoding_101, 2, m_line_iterator_54).
throw(m_line_iterator_54, ioexception).
param(p_input_102, 1, m_line_iterator_55).
param(p_encoding_103, 2, m_line_iterator_55).
throw(m_line_iterator_55, ioexception).
param(p_reader_104, 1, m_line_iterator_56).
param(p_input_105, 1, m_read_57).
param(p_buffer_106, 2, m_read_57).
throw(m_read_57, ioexception).
param(p_input_107, 1, m_read_58).
param(p_buffer_108, 2, m_read_58).
param(p_offset_109, 3, m_read_58).
param(p_length_110, 4, m_read_58).
throw(m_read_58, ioexception).
param(p_input_111, 1, m_read_59).
param(p_buffer_112, 2, m_read_59).
throw(m_read_59, ioexception).
param(p_input_113, 1, m_read_60).
param(p_buffer_114, 2, m_read_60).
throw(m_read_60, ioexception).
param(p_input_115, 1, m_read_61).
param(p_buffer_116, 2, m_read_61).
param(p_offset_117, 3, m_read_61).
param(p_length_118, 4, m_read_61).
throw(m_read_61, ioexception).
param(p_input_119, 1, m_read_fully_62).
param(p_buffer_120, 2, m_read_fully_62).
throw(m_read_fully_62, ioexception).
param(p_input_121, 1, m_read_fully_63).
param(p_buffer_122, 2, m_read_fully_63).
param(p_offset_123, 3, m_read_fully_63).
param(p_length_124, 4, m_read_fully_63).
throw(m_read_fully_63, ioexception).
param(p_input_125, 1, m_read_fully_64).
param(p_length_126, 2, m_read_fully_64).
throw(m_read_fully_64, ioexception).
param(p_input_127, 1, m_read_fully_65).
param(p_buffer_128, 2, m_read_fully_65).
throw(m_read_fully_65, ioexception).
param(p_input_129, 1, m_read_fully_66).
param(p_buffer_130, 2, m_read_fully_66).
throw(m_read_fully_66, ioexception).
param(p_input_131, 1, m_read_fully_67).
param(p_buffer_132, 2, m_read_fully_67).
param(p_offset_133, 3, m_read_fully_67).
param(p_length_134, 4, m_read_fully_67).
throw(m_read_fully_67, ioexception).
param(p_input_135, 1, m_read_lines_68).
throw(m_read_lines_68, ioexception).
param(p_input_136, 1, m_read_lines_69).
param(p_encoding_137, 2, m_read_lines_69).
throw(m_read_lines_69, ioexception).
param(p_input_138, 1, m_read_lines_70).
param(p_encoding_139, 2, m_read_lines_70).
throw(m_read_lines_70, ioexception).
param(p_input_140, 1, m_read_lines_71).
throw(m_read_lines_71, ioexception).
param(p_name_141, 1, m_resource_to_byte_array_72).
throw(m_resource_to_byte_array_72, ioexception).
param(p_name_142, 1, m_resource_to_byte_array_73).
param(p_class_loader_143, 2, m_resource_to_byte_array_73).
throw(m_resource_to_byte_array_73, ioexception).
param(p_name_144, 1, m_resource_to_string_74).
param(p_encoding_145, 2, m_resource_to_string_74).
throw(m_resource_to_string_74, ioexception).
param(p_name_146, 1, m_resource_to_string_75).
param(p_encoding_147, 2, m_resource_to_string_75).
param(p_class_loader_148, 3, m_resource_to_string_75).
throw(m_resource_to_string_75, ioexception).
param(p_name_149, 1, m_resource_to_url_76).
throw(m_resource_to_url_76, ioexception).
param(p_name_150, 1, m_resource_to_url_77).
param(p_class_loader_151, 2, m_resource_to_url_77).
throw(m_resource_to_url_77, ioexception).
param(p_input_152, 1, m_skip_78).
param(p_to_skip_153, 2, m_skip_78).
throw(m_skip_78, ioexception).
param(p_input_154, 1, m_skip_79).
param(p_to_skip_155, 2, m_skip_79).
throw(m_skip_79, ioexception).
param(p_input_156, 1, m_skip_80).
param(p_to_skip_157, 2, m_skip_80).
throw(m_skip_80, ioexception).
param(p_input_158, 1, m_skip_fully_81).
param(p_to_skip_159, 2, m_skip_fully_81).
throw(m_skip_fully_81, ioexception).
param(p_input_160, 1, m_skip_fully_82).
param(p_to_skip_161, 2, m_skip_fully_82).
throw(m_skip_fully_82, ioexception).
param(p_input_162, 1, m_skip_fully_83).
param(p_to_skip_163, 2, m_skip_fully_83).
throw(m_skip_fully_83, ioexception).
param(p_input_164, 1, m_to_buffered_input_stream_84).
throw(m_to_buffered_input_stream_84, ioexception).
param(p_input_165, 1, m_to_buffered_input_stream_85).
param(p_size_166, 2, m_to_buffered_input_stream_85).
throw(m_to_buffered_input_stream_85, ioexception).
param(p_reader_167, 1, m_to_buffered_reader_86).
param(p_reader_168, 1, m_to_buffered_reader_87).
param(p_size_169, 2, m_to_buffered_reader_87).
param(p_input_170, 1, m_to_byte_array_88).
throw(m_to_byte_array_88, ioexception).
param(p_input_171, 1, m_to_byte_array_89).
param(p_size_172, 2, m_to_byte_array_89).
throw(m_to_byte_array_89, ioexception).
param(p_input_173, 1, m_to_byte_array_90).
param(p_size_174, 2, m_to_byte_array_90).
throw(m_to_byte_array_90, ioexception).
param(p_input_175, 1, m_to_byte_array_91).
throw(m_to_byte_array_91, ioexception).
param(p_input_176, 1, m_to_byte_array_92).
param(p_encoding_177, 2, m_to_byte_array_92).
throw(m_to_byte_array_92, ioexception).
param(p_input_178, 1, m_to_byte_array_93).
param(p_encoding_179, 2, m_to_byte_array_93).
throw(m_to_byte_array_93, ioexception).
param(p_input_180, 1, m_to_byte_array_94).
throw(m_to_byte_array_94, ioexception).
param(p_uri_181, 1, m_to_byte_array_95).
throw(m_to_byte_array_95, ioexception).
param(p_url_182, 1, m_to_byte_array_96).
throw(m_to_byte_array_96, ioexception).
param(p_url_conn_183, 1, m_to_byte_array_97).
throw(m_to_byte_array_97, ioexception).
param(p_is_184, 1, m_to_char_array_98).
throw(m_to_char_array_98, ioexception).
param(p_is_185, 1, m_to_char_array_99).
param(p_encoding_186, 2, m_to_char_array_99).
throw(m_to_char_array_99, ioexception).
param(p_is_187, 1, m_to_char_array_100).
param(p_encoding_188, 2, m_to_char_array_100).
throw(m_to_char_array_100, ioexception).
param(p_input_189, 1, m_to_char_array_101).
throw(m_to_char_array_101, ioexception).
param(p_input_190, 1, m_to_input_stream_102).
param(p_input_191, 1, m_to_input_stream_103).
param(p_encoding_192, 2, m_to_input_stream_103).
param(p_input_193, 1, m_to_input_stream_104).
param(p_encoding_194, 2, m_to_input_stream_104).
throw(m_to_input_stream_104, ioexception).
param(p_input_195, 1, m_to_input_stream_105).
param(p_input_196, 1, m_to_input_stream_106).
param(p_encoding_197, 2, m_to_input_stream_106).
param(p_input_198, 1, m_to_input_stream_107).
param(p_encoding_199, 2, m_to_input_stream_107).
throw(m_to_input_stream_107, ioexception).
param(p_input_200, 1, m_to_string_108).
throw(m_to_string_108, ioexception).
param(p_input_201, 1, m_to_string_109).
param(p_encoding_202, 2, m_to_string_109).
throw(m_to_string_109, ioexception).
param(p_input_203, 1, m_to_string_110).
throw(m_to_string_110, ioexception).
param(p_input_204, 1, m_to_string_111).
param(p_encoding_205, 2, m_to_string_111).
throw(m_to_string_111, ioexception).
param(p_input_206, 1, m_to_string_112).
param(p_encoding_207, 2, m_to_string_112).
throw(m_to_string_112, ioexception).
param(p_input_208, 1, m_to_string_113).
throw(m_to_string_113, ioexception).
param(p_uri_209, 1, m_to_string_114).
throw(m_to_string_114, ioexception).
param(p_uri_210, 1, m_to_string_115).
param(p_encoding_211, 2, m_to_string_115).
throw(m_to_string_115, ioexception).
param(p_uri_212, 1, m_to_string_116).
param(p_encoding_213, 2, m_to_string_116).
throw(m_to_string_116, ioexception).
param(p_url_214, 1, m_to_string_117).
throw(m_to_string_117, ioexception).
param(p_url_215, 1, m_to_string_118).
param(p_encoding_216, 2, m_to_string_118).
throw(m_to_string_118, ioexception).
param(p_url_217, 1, m_to_string_119).
param(p_encoding_218, 2, m_to_string_119).
throw(m_to_string_119, ioexception).
param(p_data_219, 1, m_write_120).
param(p_output_220, 2, m_write_120).
throw(m_write_120, ioexception).
param(p_data_221, 1, m_write_121).
param(p_output_222, 2, m_write_121).
throw(m_write_121, ioexception).
param(p_data_223, 1, m_write_122).
param(p_output_224, 2, m_write_122).
param(p_encoding_225, 3, m_write_122).
throw(m_write_122, ioexception).
param(p_data_226, 1, m_write_123).
param(p_output_227, 2, m_write_123).
param(p_encoding_228, 3, m_write_123).
throw(m_write_123, ioexception).
param(p_data_229, 1, m_write_124).
param(p_output_230, 2, m_write_124).
throw(m_write_124, ioexception).
param(p_data_231, 1, m_write_125).
param(p_output_232, 2, m_write_125).
param(p_encoding_233, 3, m_write_125).
throw(m_write_125, ioexception).
param(p_data_234, 1, m_write_126).
param(p_output_235, 2, m_write_126).
param(p_encoding_236, 3, m_write_126).
throw(m_write_126, ioexception).
param(p_data_237, 1, m_write_127).
param(p_output_238, 2, m_write_127).
throw(m_write_127, ioexception).
param(p_data_239, 1, m_write_128).
param(p_output_240, 2, m_write_128).
throw(m_write_128, ioexception).
param(p_data_241, 1, m_write_129).
param(p_output_242, 2, m_write_129).
param(p_encoding_243, 3, m_write_129).
throw(m_write_129, ioexception).
param(p_data_244, 1, m_write_130).
param(p_output_245, 2, m_write_130).
param(p_encoding_246, 3, m_write_130).
throw(m_write_130, ioexception).
param(p_data_247, 1, m_write_131).
param(p_output_248, 2, m_write_131).
throw(m_write_131, ioexception).
param(p_data_249, 1, m_write_132).
param(p_output_250, 2, m_write_132).
throw(m_write_132, ioexception).
param(p_data_251, 1, m_write_133).
param(p_output_252, 2, m_write_133).
param(p_encoding_253, 3, m_write_133).
throw(m_write_133, ioexception).
param(p_data_254, 1, m_write_134).
param(p_output_255, 2, m_write_134).
param(p_encoding_256, 3, m_write_134).
throw(m_write_134, ioexception).
param(p_data_257, 1, m_write_135).
param(p_output_258, 2, m_write_135).
throw(m_write_135, ioexception).
param(p_data_259, 1, m_write_136).
param(p_output_260, 2, m_write_136).
throw(m_write_136, ioexception).
param(p_data_261, 1, m_write_137).
param(p_output_262, 2, m_write_137).
param(p_encoding_263, 3, m_write_137).
throw(m_write_137, ioexception).
param(p_data_264, 1, m_write_138).
param(p_output_265, 2, m_write_138).
throw(m_write_138, ioexception).
param(p_data_266, 1, m_write_chunked_139).
param(p_output_267, 2, m_write_chunked_139).
throw(m_write_chunked_139, ioexception).
param(p_data_268, 1, m_write_chunked_140).
param(p_output_269, 2, m_write_chunked_140).
throw(m_write_chunked_140, ioexception).
param(p_lines_270, 1, m_write_lines_141).
param(p_line_ending_271, 2, m_write_lines_141).
param(p_output_272, 3, m_write_lines_141).
throw(m_write_lines_141, ioexception).
param(p_lines_273, 1, m_write_lines_142).
param(p_line_ending_274, 2, m_write_lines_142).
param(p_output_275, 3, m_write_lines_142).
param(p_encoding_276, 4, m_write_lines_142).
throw(m_write_lines_142, ioexception).
param(p_lines_277, 1, m_write_lines_143).
param(p_line_ending_278, 2, m_write_lines_143).
param(p_output_279, 3, m_write_lines_143).
param(p_encoding_280, 4, m_write_lines_143).
throw(m_write_lines_143, ioexception).
param(p_lines_281, 1, m_write_lines_144).
param(p_line_ending_282, 2, m_write_lines_144).
param(p_writer_283, 3, m_write_lines_144).
throw(m_write_lines_144, ioexception).
param(p_appendable_284, 1, m_writer_145).

%ioutils_test_case_1 - org.apache.commons.io.IOUtilsTestCase
assign(f_windows_285, ioutils_test_case_1_expr1, line(ioutils_test_case_1, 89)).
ref(t_file_1, q_separator_char_2, line(ioutils_test_case_1, 89)).
assign(f_carr_286, ioutils_test_case_1_literal2, line(ioutils_test_case_1, 96)).
assign(f_iarr_287, ioutils_test_case_1_literal3, line(ioutils_test_case_1, 98)).
param(p_b_0_288, 1, m_assert_equal_content_147).
param(p_b_1_289, 2, m_assert_equal_content_147).
assign(f_m_test_file_290, ioutils_test_case_1_expr3, line(ioutils_test_case_1, 110)).
method_invoc(ioutils_test_case_1_expr3, m_file_149, line(ioutils_test_case_1, 110)).
argument(f_temporary_folder_291, 1, ioutils_test_case_1_expr3).
argument(ioutils_test_case_1_literal4, 2, ioutils_test_case_1_expr3).
method_invoc(ioutils_test_case_1_expr5, m_exists_150, line(ioutils_test_case_1, 112)).
ref(ioutils_test_case_1_expr6, ioutils_test_case_1_expr5, line(ioutils_test_case_1, 112)).
method_invoc(ioutils_test_case_1_expr6, m_get_parent_file_151, line(ioutils_test_case_1, 112)).
ref(f_m_test_file_290, ioutils_test_case_1_expr6, line(ioutils_test_case_1, 112)).
assign(v_output_292, ioutils_test_case_1_expr7, line(ioutils_test_case_1, 116)).
method_invoc(ioutils_test_case_1_expr8, m_generate_test_data_152, line(ioutils_test_case_1, 119)).
throw(ioutils_test_case_1_expr8, ioexception, line(ioutils_test_case_1, 119)).
argument(v_output_292, 1, ioutils_test_case_1_expr8).
argument(f_file_size_293, 2, ioutils_test_case_1_expr8).
ref(t_test_utils_3, ioutils_test_case_1_expr8, line(ioutils_test_case_1, 119)).
method_invoc(ioutils_test_case_1_expr9, m_close_quietly_22, line(ioutils_test_case_1, 121)).
argument(v_output_292, 1, ioutils_test_case_1_expr9).
ref(t_ioutils_4, ioutils_test_case_1_expr9, line(ioutils_test_case_1, 121)).
assign(f_iarr_287, ioutils_test_case_1_expr11, line(ioutils_test_case_1, 128)).
method_invoc(ioutils_test_case_1_expr12, m_fill_153, line(ioutils_test_case_1, 129)).
argument(f_iarr_287, 1, ioutils_test_case_1_expr12).
argument(ioutils_test_case_1_expr13, 2, ioutils_test_case_1_expr12).
ref(t_arrays_5, ioutils_test_case_1_expr12, line(ioutils_test_case_1, 129)).
assign(ioutils_test_case_1_expr13, ioutils_test_case_1_expr14, line(ioutils_test_case_1, 129)).
assign(v_i_294, ioutils_test_case_1_literal7, line(ioutils_test_case_1, 130)).
assign(ioutils_test_case_1_expr19, ioutils_test_case_1_expr20, line(ioutils_test_case_1, 131)).
ref(f_iarr_287, ioutils_test_case_1_expr19, line(ioutils_test_case_1, 131)).
assign(ioutils_test_case_1_expr20, v_i_294, line(ioutils_test_case_1, 131)).
assign(f_carr_286, ioutils_test_case_1_expr22, line(ioutils_test_case_1, 133)).
method_invoc(ioutils_test_case_1_expr23, m_fill_154, line(ioutils_test_case_1, 134)).
argument(f_carr_286, 1, ioutils_test_case_1_expr23).
argument(ioutils_test_case_1_expr24, 2, ioutils_test_case_1_expr23).
ref(t_arrays_5, ioutils_test_case_1_expr23, line(ioutils_test_case_1, 134)).
assign(ioutils_test_case_1_expr24, ioutils_test_case_1_expr25, line(ioutils_test_case_1, 134)).
assign(v_i_295, ioutils_test_case_1_literal11, line(ioutils_test_case_1, 135)).
assign(ioutils_test_case_1_expr30, ioutils_test_case_1_expr31, line(ioutils_test_case_1, 136)).
ref(f_carr_286, ioutils_test_case_1_expr30, line(ioutils_test_case_1, 136)).
assign(ioutils_test_case_1_expr31, v_i_295, line(ioutils_test_case_1, 136)).
throw(m_close_159, ioexception).
throw(m_test_close_quietly__server_socket_162, ioexception).
throw(m_test_close_quietly__server_socket_ioexception_163, ioexception).
throw(m_close_164, ioexception).
throw(m_close_167, ioexception).
throw(m_test_constants_168, exception).
throw(m_test_content_equals__input_stream__input_stream_169, exception).
assign(v_input_1_296, ioutils_test_case_1_expr32, line(ioutils_test_case_1, 233)).
method_invoc(ioutils_test_case_1_expr32, m_byte_array_input_stream_170, line(ioutils_test_case_1, 233)).
argument(ioutils_test_case_1_expr33, 1, ioutils_test_case_1_expr32).
method_invoc(ioutils_test_case_1_expr33, m_get_bytes_171, line(ioutils_test_case_1, 233)).
argument(q_utf_8_2, 1, ioutils_test_case_1_expr33).
ref(ioutils_test_case_1_literal13, ioutils_test_case_1_expr33, line(ioutils_test_case_1, 233)).
ref(t_standard_charsets_6, q_utf_8_2, line(ioutils_test_case_1, 233)).
method_invoc(ioutils_test_case_1_expr34, m_assert_true_172, line(ioutils_test_case_1, 234)).
argument(ioutils_test_case_1_expr35, 1, ioutils_test_case_1_expr34).
method_invoc(ioutils_test_case_1_expr35, m_content_equals_28, line(ioutils_test_case_1, 234)).
throw(ioutils_test_case_1_expr35, ioexception, line(ioutils_test_case_1, 234)).
argument(ioutils_test_case_1_expr36, 1, ioutils_test_case_1_expr35).
argument(ioutils_test_case_1_literal14, 2, ioutils_test_case_1_expr35).
ref(t_ioutils_4, ioutils_test_case_1_expr35, line(ioutils_test_case_1, 234)).
assign(ioutils_test_case_1_expr36, ioutils_test_case_1_literal15, line(ioutils_test_case_1, 234)).
assign(v_input_1_297, ioutils_test_case_1_expr37, line(ioutils_test_case_1, 237)).
method_invoc(ioutils_test_case_1_expr37, m_byte_array_input_stream_170, line(ioutils_test_case_1, 237)).
argument(ioutils_test_case_1_expr38, 1, ioutils_test_case_1_expr37).
method_invoc(ioutils_test_case_1_expr38, m_get_bytes_171, line(ioutils_test_case_1, 237)).
argument(q_utf_8_3, 1, ioutils_test_case_1_expr38).
ref(ioutils_test_case_1_literal16, ioutils_test_case_1_expr38, line(ioutils_test_case_1, 237)).
ref(t_standard_charsets_6, q_utf_8_3, line(ioutils_test_case_1, 237)).
method_invoc(ioutils_test_case_1_expr39, m_assert_false_173, line(ioutils_test_case_1, 238)).
argument(ioutils_test_case_1_expr40, 1, ioutils_test_case_1_expr39).
method_invoc(ioutils_test_case_1_expr40, m_content_equals_28, line(ioutils_test_case_1, 238)).
throw(ioutils_test_case_1_expr40, ioexception, line(ioutils_test_case_1, 238)).
argument(v_input_1_297, 1, ioutils_test_case_1_expr40).
argument(ioutils_test_case_1_literal17, 2, ioutils_test_case_1_expr40).
ref(t_ioutils_4, ioutils_test_case_1_expr40, line(ioutils_test_case_1, 238)).
throw(m_test_content_equals__reader__reader_174, exception).
throw(m_test_content_equals_ignore_eol_175, exception).
throw(m_test_copy__byte_array__output_stream_176, exception).
throw(m_test_copy__byte_array__writer_177, exception).
throw(m_test_copy__string__writer_178, exception).
throw(m_test_copy_large__char_extra_length_179, ioexception).
throw(m_test_copy_large__char_full_length_180, ioexception).
throw(m_test_copy_large__char_no_skip_181, ioexception).
throw(m_test_copy_large__char_skip_182, ioexception).
throw(m_test_copy_large__char_skip_invalid_183, ioexception).
throw(m_test_copy_large__extra_length_184, ioexception).
throw(m_test_copy_large__full_length_185, ioexception).
throw(m_test_copy_large__no_skip_186, ioexception).
throw(m_test_copy_large__skip_187, ioexception).
throw(m_test_copy_large__skip_invalid_188, ioexception).
throw(m_test_read__readable_byte_channel_189, exception).
throw(m_test_read_fully__input_stream__byte_array_190, exception).
throw(m_test_read_fully__input_stream___return_byte_array_191, exception).
throw(m_test_read_fully__input_stream__offset_192, exception).
throw(m_test_read_fully__readable_byte_channel_193, exception).
throw(m_test_read_fully__reader_194, exception).
throw(m_test_read_fully__reader__offset_195, exception).
throw(m_test_read_lines__input_stream_196, exception).
throw(m_test_read_lines__input_stream__string_197, exception).
throw(m_test_read_lines__reader_198, exception).
throw(m_test_skip__file_reader_199, exception).
throw(m_test_skip__input_stream_200, exception).
throw(m_test_skip__readable_byte_channel_201, exception).
throw(m_test_skip_fully__input_stream_202, exception).
throw(m_test_skip_fully__readable_byte_channel_203, exception).
throw(m_test_skip_fully__reader_204, exception).
throw(m_test_string_to_output_stream_205, exception).
throw(m_test_to_buffered_input_stream__input_stream_206, exception).
throw(m_test_to_buffered_input_stream_with_buffer_size__input_stream_207, exception).
throw(m_test_to_byte_array__input_stream_208, exception).
throw(m_test_to_byte_array__input_stream__negative_size_209, exception).
throw(m_test_to_byte_array__input_stream__size_210, exception).
throw(m_test_to_byte_array__input_stream__size_illegal_211, exception).
throw(m_test_to_byte_array__input_stream__size_long_212, exception).
throw(m_test_to_byte_array__input_stream__size_zero_213, exception).
throw(m_test_to_byte_array__reader_214, ioexception).
throw(m_test_to_byte_array__string_215, exception).
throw(m_test_to_byte_array__uri_216, exception).
throw(m_test_to_byte_array__url_217, exception).
throw(m_test_to_byte_array__urlconnection_218, exception).
throw(m_test_to_char_array__input_stream_219, exception).
throw(m_test_to_char_array__input_stream__charset_name_220, exception).
throw(m_test_to_char_array__reader_221, exception).
throw(m_test_to_input_stream__char_sequence_222, exception).
throw(m_test_to_input_stream__string_223, exception).
throw(m_test_to_string__byte_array_224, exception).
throw(m_test_to_string__input_stream_225, exception).
throw(m_test_to_string__reader_226, exception).
throw(m_test_to_string__uri_227, exception).
param(p_encoding_298, 1, m_test_to_string__uri_228).
throw(m_test_to_string__uri_228, exception).
throw(m_test_to_string__uri_charset_name_229, exception).
throw(m_test_to_string__uri_charset_name_null_230, exception).
throw(m_test_to_string__url_231, exception).
param(p_encoding_299, 1, m_test_to_string__url_232).
throw(m_test_to_string__url_232, exception).
throw(m_test_to_string__url_charset_name_233, exception).
throw(m_test_to_string__url_charset_name_null_234, exception).
throw(m_test_resource_to_string__existing_resource_at_root_package_235, exception).
throw(m_test_resource_to_string__existing_resource_at_root_package__with_class_loader_236, exception).
throw(m_test_resource_to_string__existing_resource_at_sub_package_237, exception).
throw(m_test_resource_to_string__existing_resource_at_sub_package__with_class_loader_238, exception).
throw(m_test_resource_to_string__null_resource_241, exception).
throw(m_test_resource_to_string__null_resource__with_class_loader_242, exception).
throw(m_test_resource_to_string__null_charset_243, exception).
throw(m_test_resource_to_string__null_charset__with_class_loader_244, exception).
throw(m_test_resource_to_byte_array__existing_resource_at_root_package_245, exception).
throw(m_test_resource_to_byte_array__existing_resource_at_root_package__with_class_loader_246, exception).
throw(m_test_resource_to_byte_array__existing_resource_at_sub_package_247, exception).
throw(m_test_resource_to_byte_array__existing_resource_at_sub_package__with_class_loader_248, exception).
throw(m_test_resource_to_byte_array__null_251, exception).
throw(m_test_resource_to_byte_array__null__with_class_loader_252, exception).
throw(m_test_resource_to_url_existing_resource_at_root_package_253, exception).
throw(m_test_resource_to_url_existing_resource_at_root_package__with_class_loader_254, exception).
throw(m_test_resource_to_url_existing_resource_at_sub_package_255, exception).
throw(m_test_resource_to_url_existing_resource_at_sub_package__with_class_loader_256, exception).
throw(m_test_resource_to_url_null_259, exception).
throw(m_test_resource_to_url_null__with_class_loader_260, exception).
throw(m_read_263, ioexception).
throw(m_read_265, ioexception).
param(p_b_300, 1, m_write_267).
throw(m_write_267, ioexception).
param(p_b_301, 1, m_write_269).
throw(m_write_269, ioexception).
param(p_cbuf_302, 1, m_read_271).
param(p_off_303, 2, m_read_271).
param(p_len_304, 3, m_read_271).
throw(m_read_271, ioexception).
throw(m_close_272, ioexception).
param(p_cbuf_305, 1, m_read_274).
param(p_off_306, 2, m_read_274).
param(p_len_307, 3, m_read_274).
throw(m_read_274, ioexception).
throw(m_close_275, ioexception).
param(p_b_308, 1, m_write_277).
throw(m_write_277, ioexception).
param(p_cbuf_309, 1, m_write_278).
param(p_off_310, 2, m_write_278).
param(p_len_311, 3, m_write_278).
throw(m_write_278, ioexception).
throw(m_flush_279, ioexception).
throw(m_close_280, ioexception).
param(p_b_312, 1, m_write_282).
throw(m_write_282, ioexception).
param(p_cbuf_313, 1, m_write_283).
param(p_off_314, 2, m_write_283).
param(p_len_315, 3, m_write_283).
throw(m_write_283, ioexception).
throw(m_flush_284, ioexception).
throw(m_close_285, ioexception).
throw(m_test_copy_large__skip_with_invalid_offset_289, ioexception).

%test_utils_1 - org.apache.commons.io.testtools.TestUtils
param(p_file_328, 1, m_create_file_304).
param(p_size_329, 2, m_create_file_304).
throw(m_create_file_304, ioexception).
param(p_size_330, 1, m_generate_test_data_305).
param(p_out_331, 1, m_generate_test_data_152).
param(p_size_332, 2, m_generate_test_data_152).
throw(m_generate_test_data_152, ioexception).
assign(v_i_333, test_utils_1_literal1, line(test_utils_1, 73)).
method_invoc(test_utils_1_expr4, m_write_306, line(test_utils_1, 77)).
throw(test_utils_1_expr4, ioexception, line(test_utils_1, 77)).
argument(test_utils_1_expr5, 1, test_utils_1_expr4).
ref(p_out_331, test_utils_1_expr4, line(test_utils_1, 77)).
assign(test_utils_1_expr5, test_utils_1_expr6, line(test_utils_1, 77)).
assign(test_utils_1_expr6, test_utils_1_expr7, line(test_utils_1, 77)).
assign(test_utils_1_expr8, test_utils_1_expr9, line(test_utils_1, 77)).
param(p_file_334, 1, m_create_line_based_file_307).
param(p_data_335, 2, m_create_line_based_file_307).
throw(m_create_line_based_file_307, ioexception).
param(p_test_directory_336, 1, m_new_file_308).
param(p_filename_337, 2, m_new_file_308).
throw(m_new_file_308, ioexception).
param(p_file_338, 1, m_check_file_309).
param(p_reference_file_339, 2, m_check_file_309).
throw(m_check_file_309, exception).
param(p_f_0_340, 1, m_assert_equal_content_310).
param(p_f_1_341, 2, m_assert_equal_content_310).
throw(m_assert_equal_content_310, ioexception).
param(p_b_0_342, 1, m_assert_equal_content_311).
param(p_file_343, 2, m_assert_equal_content_311).
throw(m_assert_equal_content_311, ioexception).
param(p_c_0_344, 1, m_assert_equal_content_312).
param(p_file_345, 2, m_assert_equal_content_312).
throw(m_assert_equal_content_312, ioexception).
param(p_output_346, 1, m_check_write_313).
throw(m_check_write_313, exception).
param(p_output_347, 1, m_check_write_314).
throw(m_check_write_314, exception).
param(p_file_348, 1, m_delete_file_315).
throw(m_delete_file_315, exception).
param(p_ms_349, 1, m_sleep_316).
throw(m_sleep_316, interrupted_exception).
param(p_ms_350, 1, m_sleep_quietly_317).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.IOUtilsTestCase', 'testContentEquals_InputStream_InputStream').
trace(trace_1, failure_1, m_buffer_5, line(ioutils_1, 190), failure_1, target).
trace(trace_2, trace_1, m_content_equals_28, line(ioutils_1, 716), failure_1, target).
trace(trace_3, trace_2, m_test_content_equals__input_stream__input_stream_169, line(ioutils_test_case_1, 238), failure_1, target).
trace(trace_4, trace_3, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_6, trace_5, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_input_stream_5, null, line(ioutils_1, 189)).
val(p_input_2_33, null, line(ioutils_1, 712)).
val(p_input_2_33, null, line(ioutils_1, 716)).



%%% End of Facts