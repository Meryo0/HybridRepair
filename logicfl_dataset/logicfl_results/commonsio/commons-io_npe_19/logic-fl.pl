%%% Logic-FL Facts
:- style_check(-discontiguous).

%string_builder_writer_1 - org.apache.commons.io.output.StringBuilderWriter
param(p_capacity_315, 1, m_string_builder_writer_1).
assign(f_builder_316, string_builder_writer_1_expr3, line(string_builder_writer_1, 51)).
method_invoc(string_builder_writer_1_expr3, m_string_builder_290, line(string_builder_writer_1, 51)).
argument(p_capacity_315, 1, string_builder_writer_1_expr3).
param(p_builder_317, 1, m_string_builder_writer_291).
param(p_value_318, 1, m_append_292).
param(p_value_319, 1, m_append_293).
param(p_value_320, 1, m_append_294).
param(p_start_321, 2, m_append_294).
param(p_end_322, 3, m_append_294).
param(p_value_323, 1, m_write_297).
method_invoc(string_builder_writer_1_expr6, m_append_298, line(string_builder_writer_1, 128)).
argument(p_value_323, 1, string_builder_writer_1_expr6).
ref(f_builder_316, string_builder_writer_1_expr6, line(string_builder_writer_1, 128)).
param(p_value_324, 1, m_write_299).
param(p_offset_325, 2, m_write_299).
param(p_length_326, 3, m_write_299).
return(string_builder_writer_1_expr7, m_to_string_4, line(string_builder_writer_1, 162)).
method_invoc(string_builder_writer_1_expr7, m_to_string_301, line(string_builder_writer_1, 162)).
ref(f_builder_316, string_builder_writer_1_expr7, line(string_builder_writer_1, 162)).

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
param(p_input_stream_6, 1, m_buffer_6).
param(p_size_7, 2, m_buffer_6).
param(p_output_stream_8, 1, m_buffer_7).
param(p_output_stream_9, 1, m_buffer_8).
param(p_size_10, 2, m_buffer_8).
param(p_reader_11, 1, m_buffer_9).
param(p_reader_12, 1, m_buffer_10).
param(p_size_13, 2, m_buffer_10).
param(p_writer_14, 1, m_buffer_11).
param(p_writer_15, 1, m_buffer_12).
param(p_size_16, 2, m_buffer_12).
param(p_closeable_17, 1, m_close_quietly_13).
method_invoc(ioutils_1_expr8, m_close_quietly_14, line(ioutils_1, 347)).
argument(p_closeable_17, 1, ioutils_1_expr8).
argument(ioutils_1_expr9, 2, ioutils_1_expr8).
assign(ioutils_1_expr9, ioutils_1_literal2, line(ioutils_1, 347)).
param(p_closeable_18, 1, m_close_quietly_14).
param(p_consumer_19, 2, m_close_quietly_14).
method_invoc(ioutils_1_expr11, m_close_15, line(ioutils_1, 360)).
throw(ioutils_1_expr11, ioexception, line(ioutils_1, 360)).
ref(p_closeable_18, ioutils_1_expr11, line(ioutils_1, 360)).
param(p_closeable_20, 1, m_close_16).
throw(m_close_16, ioexception).
param(p_closeable_21, 1, m_close_17).
param(p_consumer_22, 2, m_close_17).
throw(m_close_17, ioexception).
param(p_conn_23, 1, m_close_18).
param(p_closeables_24, 1, m_close_quietly_19).
param(p_input_25, 1, m_close_quietly_20).
param(p_output_26, 1, m_close_quietly_21).
method_invoc(ioutils_1_expr12, m_close_quietly_13, line(ioutils_1, 533)).
argument(ioutils_1_expr13, 1, ioutils_1_expr12).
assign(ioutils_1_expr13, p_output_26, line(ioutils_1, 533)).
param(p_input_27, 1, m_close_quietly_22).
param(p_selector_28, 1, m_close_quietly_23).
param(p_server_socket_29, 1, m_close_quietly_24).
param(p_socket_30, 1, m_close_quietly_25).
param(p_output_31, 1, m_close_quietly_26).
param(p_input_1_32, 1, m_content_equals_27).
param(p_input_2_33, 2, m_content_equals_27).
throw(m_content_equals_27, ioexception).
param(p_input_1_34, 1, m_content_equals_28).
param(p_input_2_35, 2, m_content_equals_28).
throw(m_content_equals_28, ioexception).
return(ioutils_1_literal4, m_content_equals_28, line(ioutils_1, 750)).
assign(v_buffered_input1_36, ioutils_1_expr15, line(ioutils_1, 753)).
method_invoc(ioutils_1_expr15, m_to_buffered_reader_29, line(ioutils_1, 753)).
argument(p_input_1_34, 1, ioutils_1_expr15).
param(p_input_1_37, 1, m_content_equals_ignore_eol_30).
param(p_input_2_38, 2, m_content_equals_ignore_eol_30).
throw(m_content_equals_ignore_eol_30, ioexception).
param(p_input_39, 1, m_copy_31).
param(p_output_40, 2, m_copy_31).
throw(m_copy_31, ioexception).
param(p_input_41, 1, m_copy_32).
param(p_output_42, 2, m_copy_32).
param(p_buffer_size_43, 3, m_copy_32).
throw(m_copy_32, ioexception).
param(p_input_44, 1, m_copy_33).
param(p_output_45, 2, m_copy_33).
throw(m_copy_33, ioexception).
param(p_input_46, 1, m_copy_34).
param(p_output_47, 2, m_copy_34).
param(p_input_encoding_48, 3, m_copy_34).
throw(m_copy_34, ioexception).
param(p_input_49, 1, m_copy_35).
param(p_output_50, 2, m_copy_35).
param(p_input_encoding_51, 3, m_copy_35).
throw(m_copy_35, ioexception).
param(p_input_52, 1, m_copy_36).
param(p_output_53, 2, m_copy_36).
throw(m_copy_36, ioexception).
param(p_input_54, 1, m_copy_37).
param(p_output_55, 2, m_copy_37).
param(p_buffer_56, 3, m_copy_37).
throw(m_copy_37, ioexception).
param(p_input_57, 1, m_copy_38).
param(p_output_58, 2, m_copy_38).
throw(m_copy_38, ioexception).
param(p_input_59, 1, m_copy_39).
param(p_output_60, 2, m_copy_39).
param(p_output_encoding_61, 3, m_copy_39).
throw(m_copy_39, ioexception).
param(p_input_62, 1, m_copy_40).
param(p_output_63, 2, m_copy_40).
param(p_output_encoding_64, 3, m_copy_40).
throw(m_copy_40, ioexception).
param(p_input_65, 1, m_copy_41).
param(p_output_66, 2, m_copy_41).
throw(m_copy_41, ioexception).
param(p_input_67, 1, m_copy_large_42).
param(p_output_68, 2, m_copy_large_42).
throw(m_copy_large_42, ioexception).
param(p_input_69, 1, m_copy_large_43).
param(p_output_70, 2, m_copy_large_43).
param(p_buffer_71, 3, m_copy_large_43).
throw(m_copy_large_43, ioexception).
param(p_input_72, 1, m_copy_large_44).
param(p_output_73, 2, m_copy_large_44).
param(p_input_offset_74, 3, m_copy_large_44).
param(p_length_75, 4, m_copy_large_44).
throw(m_copy_large_44, ioexception).
param(p_input_76, 1, m_copy_large_45).
param(p_output_77, 2, m_copy_large_45).
param(p_input_offset_78, 3, m_copy_large_45).
param(p_length_79, 4, m_copy_large_45).
param(p_buffer_80, 5, m_copy_large_45).
throw(m_copy_large_45, ioexception).
param(p_input_81, 1, m_copy_large_46).
param(p_output_82, 2, m_copy_large_46).
throw(m_copy_large_46, ioexception).
param(p_input_83, 1, m_copy_large_47).
param(p_output_84, 2, m_copy_large_47).
param(p_buffer_85, 3, m_copy_large_47).
throw(m_copy_large_47, ioexception).
param(p_input_86, 1, m_copy_large_48).
param(p_output_87, 2, m_copy_large_48).
param(p_input_offset_88, 3, m_copy_large_48).
param(p_length_89, 4, m_copy_large_48).
throw(m_copy_large_48, ioexception).
param(p_input_90, 1, m_copy_large_49).
param(p_output_91, 2, m_copy_large_49).
param(p_input_offset_92, 3, m_copy_large_49).
param(p_length_93, 4, m_copy_large_49).
param(p_buffer_94, 5, m_copy_large_49).
throw(m_copy_large_49, ioexception).
param(p_array_95, 1, m_length_50).
param(p_array_96, 1, m_length_51).
param(p_csq_97, 1, m_length_52).
param(p_array_98, 1, m_length_53).
param(p_input_99, 1, m_line_iterator_54).
param(p_encoding_100, 2, m_line_iterator_54).
throw(m_line_iterator_54, ioexception).
param(p_input_101, 1, m_line_iterator_55).
param(p_encoding_102, 2, m_line_iterator_55).
throw(m_line_iterator_55, ioexception).
param(p_reader_103, 1, m_line_iterator_56).
param(p_input_104, 1, m_read_57).
param(p_buffer_105, 2, m_read_57).
throw(m_read_57, ioexception).
param(p_input_106, 1, m_read_58).
param(p_buffer_107, 2, m_read_58).
param(p_offset_108, 3, m_read_58).
param(p_length_109, 4, m_read_58).
throw(m_read_58, ioexception).
param(p_input_110, 1, m_read_59).
param(p_buffer_111, 2, m_read_59).
throw(m_read_59, ioexception).
param(p_input_112, 1, m_read_60).
param(p_buffer_113, 2, m_read_60).
throw(m_read_60, ioexception).
param(p_input_114, 1, m_read_61).
param(p_buffer_115, 2, m_read_61).
param(p_offset_116, 3, m_read_61).
param(p_length_117, 4, m_read_61).
throw(m_read_61, ioexception).
param(p_input_118, 1, m_read_fully_62).
param(p_buffer_119, 2, m_read_fully_62).
throw(m_read_fully_62, ioexception).
param(p_input_120, 1, m_read_fully_63).
param(p_buffer_121, 2, m_read_fully_63).
param(p_offset_122, 3, m_read_fully_63).
param(p_length_123, 4, m_read_fully_63).
throw(m_read_fully_63, ioexception).
param(p_input_124, 1, m_read_fully_64).
param(p_length_125, 2, m_read_fully_64).
throw(m_read_fully_64, ioexception).
param(p_input_126, 1, m_read_fully_65).
param(p_buffer_127, 2, m_read_fully_65).
throw(m_read_fully_65, ioexception).
param(p_input_128, 1, m_read_fully_66).
param(p_buffer_129, 2, m_read_fully_66).
throw(m_read_fully_66, ioexception).
param(p_input_130, 1, m_read_fully_67).
param(p_buffer_131, 2, m_read_fully_67).
param(p_offset_132, 3, m_read_fully_67).
param(p_length_133, 4, m_read_fully_67).
throw(m_read_fully_67, ioexception).
param(p_input_134, 1, m_read_lines_68).
throw(m_read_lines_68, ioexception).
param(p_input_135, 1, m_read_lines_69).
param(p_encoding_136, 2, m_read_lines_69).
throw(m_read_lines_69, ioexception).
param(p_input_137, 1, m_read_lines_70).
param(p_encoding_138, 2, m_read_lines_70).
throw(m_read_lines_70, ioexception).
param(p_input_139, 1, m_read_lines_71).
throw(m_read_lines_71, ioexception).
param(p_name_140, 1, m_resource_to_byte_array_72).
throw(m_resource_to_byte_array_72, ioexception).
param(p_name_141, 1, m_resource_to_byte_array_73).
param(p_class_loader_142, 2, m_resource_to_byte_array_73).
throw(m_resource_to_byte_array_73, ioexception).
param(p_name_143, 1, m_resource_to_string_74).
param(p_encoding_144, 2, m_resource_to_string_74).
throw(m_resource_to_string_74, ioexception).
param(p_name_145, 1, m_resource_to_string_75).
param(p_encoding_146, 2, m_resource_to_string_75).
param(p_class_loader_147, 3, m_resource_to_string_75).
throw(m_resource_to_string_75, ioexception).
param(p_name_148, 1, m_resource_to_url_76).
throw(m_resource_to_url_76, ioexception).
param(p_name_149, 1, m_resource_to_url_77).
param(p_class_loader_150, 2, m_resource_to_url_77).
throw(m_resource_to_url_77, ioexception).
param(p_input_151, 1, m_skip_78).
param(p_to_skip_152, 2, m_skip_78).
throw(m_skip_78, ioexception).
param(p_input_153, 1, m_skip_79).
param(p_to_skip_154, 2, m_skip_79).
throw(m_skip_79, ioexception).
param(p_input_155, 1, m_skip_80).
param(p_to_skip_156, 2, m_skip_80).
throw(m_skip_80, ioexception).
param(p_input_157, 1, m_skip_fully_81).
param(p_to_skip_158, 2, m_skip_fully_81).
throw(m_skip_fully_81, ioexception).
param(p_input_159, 1, m_skip_fully_82).
param(p_to_skip_160, 2, m_skip_fully_82).
throw(m_skip_fully_82, ioexception).
param(p_input_161, 1, m_skip_fully_83).
param(p_to_skip_162, 2, m_skip_fully_83).
throw(m_skip_fully_83, ioexception).
param(p_input_163, 1, m_to_buffered_input_stream_84).
throw(m_to_buffered_input_stream_84, ioexception).
param(p_input_164, 1, m_to_buffered_input_stream_85).
param(p_size_165, 2, m_to_buffered_input_stream_85).
throw(m_to_buffered_input_stream_85, ioexception).
param(p_reader_166, 1, m_to_buffered_reader_29).
return(ioutils_1_expr16, m_to_buffered_reader_29, line(ioutils_1, 2174)).
cond_expr(ioutils_1_expr17, ioutils_1_expr18, ioutils_1_expr19, line(ioutils_1, 2174)).
assign(ioutils_1_expr18, p_reader_166, line(ioutils_1, 2174)).
method_invoc(ioutils_1_expr19, m_buffered_reader_86, line(ioutils_1, 2174)).
throw(ioutils_1_expr19, null_pointer_exception, line(ioutils_1, 2174)).
argument(p_reader_166, 1, ioutils_1_expr19).
param(p_reader_167, 1, m_to_buffered_reader_87).
param(p_size_168, 2, m_to_buffered_reader_87).
param(p_input_169, 1, m_to_byte_array_88).
throw(m_to_byte_array_88, ioexception).
param(p_input_170, 1, m_to_byte_array_89).
param(p_size_171, 2, m_to_byte_array_89).
throw(m_to_byte_array_89, ioexception).
param(p_input_172, 1, m_to_byte_array_90).
param(p_size_173, 2, m_to_byte_array_90).
throw(m_to_byte_array_90, ioexception).
param(p_input_174, 1, m_to_byte_array_91).
throw(m_to_byte_array_91, ioexception).
param(p_input_175, 1, m_to_byte_array_92).
param(p_encoding_176, 2, m_to_byte_array_92).
throw(m_to_byte_array_92, ioexception).
param(p_input_177, 1, m_to_byte_array_93).
param(p_encoding_178, 2, m_to_byte_array_93).
throw(m_to_byte_array_93, ioexception).
param(p_input_179, 1, m_to_byte_array_94).
throw(m_to_byte_array_94, ioexception).
param(p_uri_180, 1, m_to_byte_array_95).
throw(m_to_byte_array_95, ioexception).
param(p_url_181, 1, m_to_byte_array_96).
throw(m_to_byte_array_96, ioexception).
param(p_url_conn_182, 1, m_to_byte_array_97).
throw(m_to_byte_array_97, ioexception).
param(p_is_183, 1, m_to_char_array_98).
throw(m_to_char_array_98, ioexception).
param(p_is_184, 1, m_to_char_array_99).
param(p_encoding_185, 2, m_to_char_array_99).
throw(m_to_char_array_99, ioexception).
param(p_is_186, 1, m_to_char_array_100).
param(p_encoding_187, 2, m_to_char_array_100).
throw(m_to_char_array_100, ioexception).
param(p_input_188, 1, m_to_char_array_101).
throw(m_to_char_array_101, ioexception).
param(p_input_189, 1, m_to_input_stream_102).
param(p_input_190, 1, m_to_input_stream_103).
param(p_encoding_191, 2, m_to_input_stream_103).
param(p_input_192, 1, m_to_input_stream_104).
param(p_encoding_193, 2, m_to_input_stream_104).
throw(m_to_input_stream_104, ioexception).
param(p_input_194, 1, m_to_input_stream_105).
param(p_input_195, 1, m_to_input_stream_106).
param(p_encoding_196, 2, m_to_input_stream_106).
param(p_input_197, 1, m_to_input_stream_107).
param(p_encoding_198, 2, m_to_input_stream_107).
throw(m_to_input_stream_107, ioexception).
param(p_input_199, 1, m_to_string_108).
throw(m_to_string_108, ioexception).
param(p_input_200, 1, m_to_string_109).
param(p_encoding_201, 2, m_to_string_109).
throw(m_to_string_109, ioexception).
param(p_input_202, 1, m_to_string_110).
throw(m_to_string_110, ioexception).
param(p_input_203, 1, m_to_string_111).
param(p_encoding_204, 2, m_to_string_111).
throw(m_to_string_111, ioexception).
param(p_input_205, 1, m_to_string_112).
param(p_encoding_206, 2, m_to_string_112).
throw(m_to_string_112, ioexception).
param(p_input_207, 1, m_to_string_113).
throw(m_to_string_113, ioexception).
param(p_uri_208, 1, m_to_string_114).
throw(m_to_string_114, ioexception).
param(p_uri_209, 1, m_to_string_115).
param(p_encoding_210, 2, m_to_string_115).
throw(m_to_string_115, ioexception).
param(p_uri_211, 1, m_to_string_116).
param(p_encoding_212, 2, m_to_string_116).
throw(m_to_string_116, ioexception).
param(p_url_213, 1, m_to_string_117).
throw(m_to_string_117, ioexception).
param(p_url_214, 1, m_to_string_118).
param(p_encoding_215, 2, m_to_string_118).
throw(m_to_string_118, ioexception).
param(p_url_216, 1, m_to_string_119).
param(p_encoding_217, 2, m_to_string_119).
throw(m_to_string_119, ioexception).
param(p_data_218, 1, m_write_120).
param(p_output_219, 2, m_write_120).
throw(m_write_120, ioexception).
param(p_data_220, 1, m_write_121).
param(p_output_221, 2, m_write_121).
throw(m_write_121, ioexception).
param(p_data_222, 1, m_write_122).
param(p_output_223, 2, m_write_122).
param(p_encoding_224, 3, m_write_122).
throw(m_write_122, ioexception).
param(p_data_225, 1, m_write_123).
param(p_output_226, 2, m_write_123).
param(p_encoding_227, 3, m_write_123).
throw(m_write_123, ioexception).
param(p_data_228, 1, m_write_124).
param(p_output_229, 2, m_write_124).
throw(m_write_124, ioexception).
param(p_data_230, 1, m_write_125).
param(p_output_231, 2, m_write_125).
param(p_encoding_232, 3, m_write_125).
throw(m_write_125, ioexception).
param(p_data_233, 1, m_write_126).
param(p_output_234, 2, m_write_126).
param(p_encoding_235, 3, m_write_126).
throw(m_write_126, ioexception).
param(p_data_236, 1, m_write_127).
param(p_output_237, 2, m_write_127).
throw(m_write_127, ioexception).
param(p_data_238, 1, m_write_128).
param(p_output_239, 2, m_write_128).
throw(m_write_128, ioexception).
param(p_data_240, 1, m_write_129).
param(p_output_241, 2, m_write_129).
param(p_encoding_242, 3, m_write_129).
throw(m_write_129, ioexception).
param(p_data_243, 1, m_write_130).
param(p_output_244, 2, m_write_130).
param(p_encoding_245, 3, m_write_130).
throw(m_write_130, ioexception).
param(p_data_246, 1, m_write_131).
param(p_output_247, 2, m_write_131).
throw(m_write_131, ioexception).
param(p_data_248, 1, m_write_132).
param(p_output_249, 2, m_write_132).
throw(m_write_132, ioexception).
param(p_data_250, 1, m_write_133).
param(p_output_251, 2, m_write_133).
param(p_encoding_252, 3, m_write_133).
throw(m_write_133, ioexception).
param(p_data_253, 1, m_write_134).
param(p_output_254, 2, m_write_134).
param(p_encoding_255, 3, m_write_134).
throw(m_write_134, ioexception).
param(p_data_256, 1, m_write_135).
param(p_output_257, 2, m_write_135).
throw(m_write_135, ioexception).
param(p_data_258, 1, m_write_136).
param(p_output_259, 2, m_write_136).
throw(m_write_136, ioexception).
param(p_data_260, 1, m_write_137).
param(p_output_261, 2, m_write_137).
param(p_encoding_262, 3, m_write_137).
throw(m_write_137, ioexception).
param(p_data_263, 1, m_write_138).
param(p_output_264, 2, m_write_138).
throw(m_write_138, ioexception).
param(p_data_265, 1, m_write_chunked_139).
param(p_output_266, 2, m_write_chunked_139).
throw(m_write_chunked_139, ioexception).
param(p_data_267, 1, m_write_chunked_140).
param(p_output_268, 2, m_write_chunked_140).
throw(m_write_chunked_140, ioexception).
param(p_lines_269, 1, m_write_lines_141).
param(p_line_ending_270, 2, m_write_lines_141).
param(p_output_271, 3, m_write_lines_141).
throw(m_write_lines_141, ioexception).
param(p_lines_272, 1, m_write_lines_142).
param(p_line_ending_273, 2, m_write_lines_142).
param(p_output_274, 3, m_write_lines_142).
param(p_encoding_275, 4, m_write_lines_142).
throw(m_write_lines_142, ioexception).
param(p_lines_276, 1, m_write_lines_143).
param(p_line_ending_277, 2, m_write_lines_143).
param(p_output_278, 3, m_write_lines_143).
param(p_encoding_279, 4, m_write_lines_143).
throw(m_write_lines_143, ioexception).
param(p_lines_280, 1, m_write_lines_144).
param(p_line_ending_281, 2, m_write_lines_144).
param(p_writer_282, 3, m_write_lines_144).
throw(m_write_lines_144, ioexception).
param(p_appendable_283, 1, m_writer_145).

%ioutils_test_case_1 - org.apache.commons.io.IOUtilsTestCase
assign(f_windows_284, ioutils_test_case_1_expr1, line(ioutils_test_case_1, 89)).
ref(t_file_1, q_separator_char_2, line(ioutils_test_case_1, 89)).
assign(f_carr_285, ioutils_test_case_1_literal2, line(ioutils_test_case_1, 96)).
assign(f_iarr_286, ioutils_test_case_1_literal3, line(ioutils_test_case_1, 98)).
param(p_b_0_287, 1, m_assert_equal_content_147).
param(p_b_1_288, 2, m_assert_equal_content_147).
assign(f_m_test_file_289, ioutils_test_case_1_expr3, line(ioutils_test_case_1, 110)).
method_invoc(ioutils_test_case_1_expr3, m_file_149, line(ioutils_test_case_1, 110)).
argument(f_temporary_folder_290, 1, ioutils_test_case_1_expr3).
argument(ioutils_test_case_1_literal4, 2, ioutils_test_case_1_expr3).
method_invoc(ioutils_test_case_1_expr5, m_exists_150, line(ioutils_test_case_1, 112)).
ref(ioutils_test_case_1_expr6, ioutils_test_case_1_expr5, line(ioutils_test_case_1, 112)).
method_invoc(ioutils_test_case_1_expr6, m_get_parent_file_151, line(ioutils_test_case_1, 112)).
ref(f_m_test_file_289, ioutils_test_case_1_expr6, line(ioutils_test_case_1, 112)).
assign(v_output_291, ioutils_test_case_1_expr7, line(ioutils_test_case_1, 116)).
method_invoc(ioutils_test_case_1_expr8, m_generate_test_data_152, line(ioutils_test_case_1, 119)).
throw(ioutils_test_case_1_expr8, ioexception, line(ioutils_test_case_1, 119)).
argument(v_output_291, 1, ioutils_test_case_1_expr8).
argument(f_file_size_292, 2, ioutils_test_case_1_expr8).
ref(t_test_utils_3, ioutils_test_case_1_expr8, line(ioutils_test_case_1, 119)).
method_invoc(ioutils_test_case_1_expr9, m_close_quietly_21, line(ioutils_test_case_1, 121)).
argument(v_output_291, 1, ioutils_test_case_1_expr9).
ref(t_ioutils_4, ioutils_test_case_1_expr9, line(ioutils_test_case_1, 121)).
assign(f_iarr_286, ioutils_test_case_1_expr11, line(ioutils_test_case_1, 128)).
method_invoc(ioutils_test_case_1_expr12, m_fill_153, line(ioutils_test_case_1, 129)).
argument(f_iarr_286, 1, ioutils_test_case_1_expr12).
argument(ioutils_test_case_1_expr13, 2, ioutils_test_case_1_expr12).
ref(t_arrays_5, ioutils_test_case_1_expr12, line(ioutils_test_case_1, 129)).
assign(ioutils_test_case_1_expr13, ioutils_test_case_1_expr14, line(ioutils_test_case_1, 129)).
assign(v_i_293, ioutils_test_case_1_literal7, line(ioutils_test_case_1, 130)).
assign(ioutils_test_case_1_expr19, ioutils_test_case_1_expr20, line(ioutils_test_case_1, 131)).
ref(f_iarr_286, ioutils_test_case_1_expr19, line(ioutils_test_case_1, 131)).
assign(ioutils_test_case_1_expr20, v_i_293, line(ioutils_test_case_1, 131)).
assign(f_carr_285, ioutils_test_case_1_expr22, line(ioutils_test_case_1, 133)).
method_invoc(ioutils_test_case_1_expr23, m_fill_154, line(ioutils_test_case_1, 134)).
argument(f_carr_285, 1, ioutils_test_case_1_expr23).
argument(ioutils_test_case_1_expr24, 2, ioutils_test_case_1_expr23).
ref(t_arrays_5, ioutils_test_case_1_expr23, line(ioutils_test_case_1, 134)).
assign(ioutils_test_case_1_expr24, ioutils_test_case_1_expr25, line(ioutils_test_case_1, 134)).
assign(v_i_294, ioutils_test_case_1_literal11, line(ioutils_test_case_1, 135)).
assign(ioutils_test_case_1_expr30, ioutils_test_case_1_expr31, line(ioutils_test_case_1, 136)).
ref(f_carr_285, ioutils_test_case_1_expr30, line(ioutils_test_case_1, 136)).
assign(ioutils_test_case_1_expr31, v_i_294, line(ioutils_test_case_1, 136)).
throw(m_close_159, ioexception).
throw(m_test_close_quietly__server_socket_162, ioexception).
throw(m_test_close_quietly__server_socket_ioexception_163, ioexception).
throw(m_close_164, ioexception).
throw(m_close_167, ioexception).
throw(m_test_constants_168, exception).
throw(m_test_content_equals__input_stream__input_stream_169, exception).
throw(m_test_content_equals__reader__reader_170, exception).
assign(v_input_1_295, ioutils_test_case_1_expr32, line(ioutils_test_case_1, 266)).
method_invoc(ioutils_test_case_1_expr32, m_string_reader_171, line(ioutils_test_case_1, 266)).
argument(ioutils_test_case_1_literal13, 1, ioutils_test_case_1_expr32).
method_invoc(ioutils_test_case_1_expr33, m_assert_true_172, line(ioutils_test_case_1, 267)).
argument(ioutils_test_case_1_expr34, 1, ioutils_test_case_1_expr33).
method_invoc(ioutils_test_case_1_expr34, m_content_equals_28, line(ioutils_test_case_1, 267)).
throw(ioutils_test_case_1_expr34, ioexception, line(ioutils_test_case_1, 267)).
argument(ioutils_test_case_1_expr35, 1, ioutils_test_case_1_expr34).
argument(ioutils_test_case_1_literal14, 2, ioutils_test_case_1_expr34).
ref(t_ioutils_4, ioutils_test_case_1_expr34, line(ioutils_test_case_1, 267)).
assign(ioutils_test_case_1_expr35, ioutils_test_case_1_literal15, line(ioutils_test_case_1, 267)).
assign(v_input_1_296, ioutils_test_case_1_expr36, line(ioutils_test_case_1, 270)).
method_invoc(ioutils_test_case_1_expr36, m_string_reader_171, line(ioutils_test_case_1, 270)).
argument(ioutils_test_case_1_literal16, 1, ioutils_test_case_1_expr36).
method_invoc(ioutils_test_case_1_expr37, m_assert_false_173, line(ioutils_test_case_1, 271)).
argument(ioutils_test_case_1_expr38, 1, ioutils_test_case_1_expr37).
method_invoc(ioutils_test_case_1_expr38, m_content_equals_28, line(ioutils_test_case_1, 271)).
throw(ioutils_test_case_1_expr38, ioexception, line(ioutils_test_case_1, 271)).
argument(ioutils_test_case_1_literal17, 1, ioutils_test_case_1_expr38).
argument(v_input_1_296, 2, ioutils_test_case_1_expr38).
ref(t_ioutils_4, ioutils_test_case_1_expr38, line(ioutils_test_case_1, 271)).
throw(m_test_content_equals_ignore_eol_174, exception).
throw(m_test_copy__byte_array__output_stream_175, exception).
throw(m_test_copy__byte_array__writer_176, exception).
throw(m_test_copy__string__writer_177, exception).
throw(m_test_copy_large__char_extra_length_178, ioexception).
throw(m_test_copy_large__char_full_length_179, ioexception).
throw(m_test_copy_large__char_no_skip_180, ioexception).
throw(m_test_copy_large__char_skip_181, ioexception).
throw(m_test_copy_large__char_skip_invalid_182, ioexception).
throw(m_test_copy_large__extra_length_183, ioexception).
throw(m_test_copy_large__full_length_184, ioexception).
throw(m_test_copy_large__no_skip_185, ioexception).
throw(m_test_copy_large__skip_186, ioexception).
throw(m_test_copy_large__skip_invalid_187, ioexception).
throw(m_test_read__readable_byte_channel_188, exception).
throw(m_test_read_fully__input_stream__byte_array_189, exception).
throw(m_test_read_fully__input_stream___return_byte_array_190, exception).
throw(m_test_read_fully__input_stream__offset_191, exception).
throw(m_test_read_fully__readable_byte_channel_192, exception).
throw(m_test_read_fully__reader_193, exception).
throw(m_test_read_fully__reader__offset_194, exception).
throw(m_test_read_lines__input_stream_195, exception).
throw(m_test_read_lines__input_stream__string_196, exception).
throw(m_test_read_lines__reader_197, exception).
throw(m_test_skip__file_reader_198, exception).
throw(m_test_skip__input_stream_199, exception).
throw(m_test_skip__readable_byte_channel_200, exception).
throw(m_test_skip_fully__input_stream_201, exception).
throw(m_test_skip_fully__readable_byte_channel_202, exception).
throw(m_test_skip_fully__reader_203, exception).
throw(m_test_string_to_output_stream_204, exception).
throw(m_test_to_buffered_input_stream__input_stream_205, exception).
throw(m_test_to_buffered_input_stream_with_buffer_size__input_stream_206, exception).
throw(m_test_to_byte_array__input_stream_207, exception).
throw(m_test_to_byte_array__input_stream__negative_size_208, exception).
throw(m_test_to_byte_array__input_stream__size_209, exception).
throw(m_test_to_byte_array__input_stream__size_illegal_210, exception).
throw(m_test_to_byte_array__input_stream__size_long_211, exception).
throw(m_test_to_byte_array__input_stream__size_zero_212, exception).
throw(m_test_to_byte_array__reader_213, ioexception).
throw(m_test_to_byte_array__string_214, exception).
throw(m_test_to_byte_array__uri_215, exception).
throw(m_test_to_byte_array__url_216, exception).
throw(m_test_to_byte_array__urlconnection_217, exception).
throw(m_test_to_char_array__input_stream_218, exception).
throw(m_test_to_char_array__input_stream__charset_name_219, exception).
throw(m_test_to_char_array__reader_220, exception).
throw(m_test_to_input_stream__char_sequence_221, exception).
throw(m_test_to_input_stream__string_222, exception).
throw(m_test_to_string__byte_array_223, exception).
throw(m_test_to_string__input_stream_224, exception).
throw(m_test_to_string__reader_225, exception).
throw(m_test_to_string__uri_226, exception).
param(p_encoding_297, 1, m_test_to_string__uri_227).
throw(m_test_to_string__uri_227, exception).
throw(m_test_to_string__uri_charset_name_228, exception).
throw(m_test_to_string__uri_charset_name_null_229, exception).
throw(m_test_to_string__url_230, exception).
param(p_encoding_298, 1, m_test_to_string__url_231).
throw(m_test_to_string__url_231, exception).
throw(m_test_to_string__url_charset_name_232, exception).
throw(m_test_to_string__url_charset_name_null_233, exception).
throw(m_test_resource_to_string__existing_resource_at_root_package_234, exception).
throw(m_test_resource_to_string__existing_resource_at_root_package__with_class_loader_235, exception).
throw(m_test_resource_to_string__existing_resource_at_sub_package_236, exception).
throw(m_test_resource_to_string__existing_resource_at_sub_package__with_class_loader_237, exception).
throw(m_test_resource_to_string__null_resource_240, exception).
throw(m_test_resource_to_string__null_resource__with_class_loader_241, exception).
throw(m_test_resource_to_string__null_charset_242, exception).
throw(m_test_resource_to_string__null_charset__with_class_loader_243, exception).
throw(m_test_resource_to_byte_array__existing_resource_at_root_package_244, exception).
throw(m_test_resource_to_byte_array__existing_resource_at_root_package__with_class_loader_245, exception).
throw(m_test_resource_to_byte_array__existing_resource_at_sub_package_246, exception).
throw(m_test_resource_to_byte_array__existing_resource_at_sub_package__with_class_loader_247, exception).
throw(m_test_resource_to_byte_array__null_250, exception).
throw(m_test_resource_to_byte_array__null__with_class_loader_251, exception).
throw(m_test_resource_to_url_existing_resource_at_root_package_252, exception).
throw(m_test_resource_to_url_existing_resource_at_root_package__with_class_loader_253, exception).
throw(m_test_resource_to_url_existing_resource_at_sub_package_254, exception).
throw(m_test_resource_to_url_existing_resource_at_sub_package__with_class_loader_255, exception).
throw(m_test_resource_to_url_null_258, exception).
throw(m_test_resource_to_url_null__with_class_loader_259, exception).
throw(m_read_262, ioexception).
throw(m_read_264, ioexception).
param(p_b_299, 1, m_write_266).
throw(m_write_266, ioexception).
param(p_b_300, 1, m_write_268).
throw(m_write_268, ioexception).
param(p_cbuf_301, 1, m_read_270).
param(p_off_302, 2, m_read_270).
param(p_len_303, 3, m_read_270).
throw(m_read_270, ioexception).
throw(m_close_271, ioexception).
param(p_cbuf_304, 1, m_read_273).
param(p_off_305, 2, m_read_273).
param(p_len_306, 3, m_read_273).
throw(m_read_273, ioexception).
throw(m_close_274, ioexception).
param(p_b_307, 1, m_write_276).
throw(m_write_276, ioexception).
param(p_cbuf_308, 1, m_write_277).
param(p_off_309, 2, m_write_277).
param(p_len_310, 3, m_write_277).
throw(m_write_277, ioexception).
throw(m_flush_278, ioexception).
throw(m_close_279, ioexception).
param(p_b_311, 1, m_write_281).
throw(m_write_281, ioexception).
param(p_cbuf_312, 1, m_write_282).
param(p_off_313, 2, m_write_282).
param(p_len_314, 3, m_write_282).
throw(m_write_282, ioexception).
throw(m_flush_283, ioexception).
throw(m_close_284, ioexception).
throw(m_test_copy_large__skip_with_invalid_offset_288, ioexception).

%test_utils_1 - org.apache.commons.io.testtools.TestUtils
param(p_file_327, 1, m_create_file_303).
param(p_size_328, 2, m_create_file_303).
throw(m_create_file_303, ioexception).
param(p_size_329, 1, m_generate_test_data_304).
param(p_out_330, 1, m_generate_test_data_152).
param(p_size_331, 2, m_generate_test_data_152).
throw(m_generate_test_data_152, ioexception).
assign(v_i_332, test_utils_1_literal1, line(test_utils_1, 73)).
method_invoc(test_utils_1_expr4, m_write_305, line(test_utils_1, 77)).
throw(test_utils_1_expr4, ioexception, line(test_utils_1, 77)).
argument(test_utils_1_expr5, 1, test_utils_1_expr4).
ref(p_out_330, test_utils_1_expr4, line(test_utils_1, 77)).
assign(test_utils_1_expr5, test_utils_1_expr6, line(test_utils_1, 77)).
assign(test_utils_1_expr6, test_utils_1_expr7, line(test_utils_1, 77)).
assign(test_utils_1_expr8, test_utils_1_expr9, line(test_utils_1, 77)).
param(p_file_333, 1, m_create_line_based_file_306).
param(p_data_334, 2, m_create_line_based_file_306).
throw(m_create_line_based_file_306, ioexception).
param(p_test_directory_335, 1, m_new_file_307).
param(p_filename_336, 2, m_new_file_307).
throw(m_new_file_307, ioexception).
param(p_file_337, 1, m_check_file_308).
param(p_reference_file_338, 2, m_check_file_308).
throw(m_check_file_308, exception).
param(p_f_0_339, 1, m_assert_equal_content_309).
param(p_f_1_340, 2, m_assert_equal_content_309).
throw(m_assert_equal_content_309, ioexception).
param(p_b_0_341, 1, m_assert_equal_content_310).
param(p_file_342, 2, m_assert_equal_content_310).
throw(m_assert_equal_content_310, ioexception).
param(p_c_0_343, 1, m_assert_equal_content_311).
param(p_file_344, 2, m_assert_equal_content_311).
throw(m_assert_equal_content_311, ioexception).
param(p_output_345, 1, m_check_write_312).
throw(m_check_write_312, exception).
param(p_output_346, 1, m_check_write_313).
throw(m_check_write_313, exception).
param(p_file_347, 1, m_delete_file_314).
throw(m_delete_file_314, exception).
param(p_ms_348, 1, m_sleep_315).
throw(m_sleep_315, interrupted_exception).
param(p_ms_349, 1, m_sleep_quietly_316).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.IOUtilsTestCase', 'testContentEquals_Reader_Reader').
trace(trace_1, failure_1, 'Reader', line(java_io_reader, 168), failure_1, non_target).
trace(trace_2, trace_1, 'BufferedReader', line(java_io_buffered_reader, 102), failure_1, non_target).
trace(trace_3, trace_2, 'BufferedReader', line(java_io_buffered_reader, 117), failure_1, non_target).
trace(trace_4, trace_3, m_to_buffered_reader_29, line(ioutils_1, 2174), failure_1, target).
trace(trace_5, trace_4, m_content_equals_28, line(ioutils_1, 753), failure_1, target).
trace(trace_6, trace_5, m_test_content_equals__reader__reader_170, line(ioutils_test_case_1, 271), failure_1, target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_8, trace_7, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_9, trace_8, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_input_1_34, null, line(ioutils_1, 749)).
val(p_input_1_34, null, line(ioutils_1, 753)).
val(p_reader_166, null, line(ioutils_1, 2174)).



%%% End of Facts