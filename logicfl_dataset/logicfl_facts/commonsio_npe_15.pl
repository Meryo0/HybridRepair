%%% Logic-FL Facts
:- style_check(-discontiguous).

%string_builder_writer_1 - org.apache.commons.io.output.StringBuilderWriter
param(p_capacity_339, 1, m_string_builder_writer_1).
assign(f_builder_340, string_builder_writer_1_expr3, line(string_builder_writer_1, 51)).
method_invoc(string_builder_writer_1_expr3, m_string_builder_218, line(string_builder_writer_1, 51)).
argument(p_capacity_339, 1, string_builder_writer_1_expr3).
param(p_builder_341, 1, m_string_builder_writer_219).
param(p_value_342, 1, m_append_220).
param(p_value_343, 1, m_append_221).
param(p_value_344, 1, m_append_222).
param(p_start_345, 2, m_append_222).
param(p_end_346, 3, m_append_222).
param(p_value_347, 1, m_write_225).
method_invoc(string_builder_writer_1_expr6, m_append_226, line(string_builder_writer_1, 128)).
argument(p_value_347, 1, string_builder_writer_1_expr6).
ref(f_builder_340, string_builder_writer_1_expr6, line(string_builder_writer_1, 128)).
param(p_value_348, 1, m_write_227).
param(p_offset_349, 2, m_write_227).
param(p_length_350, 3, m_write_227).
return(string_builder_writer_1_expr7, m_to_string_4, line(string_builder_writer_1, 162)).
method_invoc(string_builder_writer_1_expr7, m_to_string_229, line(string_builder_writer_1, 162)).
ref(f_builder_340, string_builder_writer_1_expr7, line(string_builder_writer_1, 162)).

%ioutils_1 - org.apache.commons.io.IOUtils
assign(f_empty_byte_array_1, ioutils_1_expr1, line(ioutils_1, 109)).
assign(f_dir_separator_2, q_separator_char_1, line(ioutils_1, 119)).
ref(t_file_1, q_separator_char_1, line(ioutils_1, 119)).
assign(v_buf_3, ioutils_1_expr3, line(ioutils_1, 174)).
method_invoc(ioutils_1_expr3, m_string_builder_writer_1, line(ioutils_1, 174)).
argument(ioutils_1_literal2, 1, ioutils_1_expr3).
assign(v_out_4, ioutils_1_expr5, line(ioutils_1, 175)).
method_invoc(ioutils_1_expr5, m_print_writer_2, line(ioutils_1, 175)).
argument(v_buf_3, 1, ioutils_1_expr5).
method_invoc(ioutils_1_expr6, m_println_3, line(ioutils_1, 176)).
ref(v_out_4, ioutils_1_expr6, line(ioutils_1, 176)).
assign(f_line_separator_5, ioutils_1_expr8, line(ioutils_1, 177)).
method_invoc(ioutils_1_expr8, m_to_string_4, line(ioutils_1, 177)).
ref(v_buf_3, ioutils_1_expr8, line(ioutils_1, 177)).
param(p_input_stream_6, 1, m_buffer_5).
param(p_input_stream_7, 1, m_buffer_6).
param(p_size_8, 2, m_buffer_6).
param(p_output_stream_9, 1, m_buffer_7).
param(p_output_stream_10, 1, m_buffer_8).
param(p_size_11, 2, m_buffer_8).
param(p_reader_12, 1, m_buffer_9).
param(p_reader_13, 1, m_buffer_10).
param(p_size_14, 2, m_buffer_10).
param(p_writer_15, 1, m_buffer_11).
param(p_writer_16, 1, m_buffer_12).
param(p_size_17, 2, m_buffer_12).
param(p_closeable_18, 1, m_close_13).
throw(m_close_13, ioexception).
param(p_closeables_19, 1, m_close_14).
throw(m_close_14, ioexception).
param(p_closeable_20, 1, m_close_15).
param(p_consumer_21, 2, m_close_15).
throw(m_close_15, ioexception).
param(p_conn_22, 1, m_close_16).
param(p_closeable_23, 1, m_close_quietly_17).
param(p_closeables_24, 1, m_close_quietly_18).
param(p_closeable_25, 1, m_close_quietly_19).
param(p_consumer_26, 2, m_close_quietly_19).
param(p_input_27, 1, m_close_quietly_20).
param(p_output_28, 1, m_close_quietly_21).
param(p_input_29, 1, m_close_quietly_22).
param(p_selector_30, 1, m_close_quietly_23).
param(p_server_socket_31, 1, m_close_quietly_24).
param(p_socket_32, 1, m_close_quietly_25).
param(p_output_33, 1, m_close_quietly_26).
param(p_input_34, 1, m_consume_27).
throw(m_consume_27, ioexception).
param(p_input_1_35, 1, m_content_equals_28).
param(p_input_2_36, 2, m_content_equals_28).
throw(m_content_equals_28, ioexception).
param(p_input_1_37, 1, m_content_equals_29).
param(p_input_2_38, 2, m_content_equals_29).
throw(m_content_equals_29, ioexception).
param(p_input_1_39, 1, m_content_equals_ignore_eol_30).
param(p_input_2_40, 2, m_content_equals_ignore_eol_30).
throw(m_content_equals_ignore_eol_30, ioexception).
param(p_input_41, 1, m_copy_31).
param(p_output_42, 2, m_copy_31).
throw(m_copy_31, ioexception).
assign(v_count_43, ioutils_1_expr9, line(ioutils_1, 858)).
method_invoc(ioutils_1_expr9, m_copy_large_32, line(ioutils_1, 858)).
throw(ioutils_1_expr9, ioexception, line(ioutils_1, 858)).
argument(p_input_41, 1, ioutils_1_expr9).
argument(p_output_42, 2, ioutils_1_expr9).
param(p_input_44, 1, m_copy_33).
param(p_output_45, 2, m_copy_33).
param(p_buffer_size_46, 3, m_copy_33).
throw(m_copy_33, ioexception).
return(ioutils_1_expr10, m_copy_33, line(ioutils_1, 882)).
method_invoc(ioutils_1_expr10, m_copy_large_34, line(ioutils_1, 882)).
throw(ioutils_1_expr10, ioexception, line(ioutils_1, 882)).
throw(ioutils_1_expr10, null_pointer_exception, line(ioutils_1, 882)).
argument(p_input_44, 1, ioutils_1_expr10).
argument(p_output_45, 2, ioutils_1_expr10).
argument(ioutils_1_expr11, 3, ioutils_1_expr10).
param(p_input_47, 1, m_copy_35).
param(p_output_48, 2, m_copy_35).
throw(m_copy_35, ioexception).
param(p_input_49, 1, m_copy_36).
param(p_output_50, 2, m_copy_36).
param(p_input_charset_51, 3, m_copy_36).
throw(m_copy_36, ioexception).
param(p_input_52, 1, m_copy_37).
param(p_output_53, 2, m_copy_37).
param(p_input_charset_name_54, 3, m_copy_37).
throw(m_copy_37, ioexception).
param(p_input_55, 1, m_copy_38).
param(p_output_56, 2, m_copy_38).
throw(m_copy_38, ioexception).
param(p_input_57, 1, m_copy_39).
param(p_output_58, 2, m_copy_39).
param(p_buffer_59, 3, m_copy_39).
throw(m_copy_39, ioexception).
param(p_input_60, 1, m_copy_40).
param(p_output_61, 2, m_copy_40).
throw(m_copy_40, ioexception).
param(p_input_62, 1, m_copy_41).
param(p_output_63, 2, m_copy_41).
param(p_output_charset_64, 3, m_copy_41).
throw(m_copy_41, ioexception).
param(p_input_65, 1, m_copy_42).
param(p_output_66, 2, m_copy_42).
param(p_output_charset_name_67, 3, m_copy_42).
throw(m_copy_42, ioexception).
param(p_input_68, 1, m_copy_43).
param(p_output_69, 2, m_copy_43).
throw(m_copy_43, ioexception).
param(p_input_70, 1, m_copy_large_32).
param(p_output_71, 2, m_copy_large_32).
throw(m_copy_large_32, ioexception).
return(ioutils_1_expr12, m_copy_large_32, line(ioutils_1, 1137)).
method_invoc(ioutils_1_expr12, m_copy_33, line(ioutils_1, 1137)).
throw(ioutils_1_expr12, ioexception, line(ioutils_1, 1137)).
argument(p_input_70, 1, ioutils_1_expr12).
argument(p_output_71, 2, ioutils_1_expr12).
argument(f_default_buffer_size_72, 3, ioutils_1_expr12).
param(p_input_73, 1, m_copy_large_34).
param(p_output_74, 2, m_copy_large_34).
param(p_buffer_75, 3, m_copy_large_34).
throw(m_copy_large_34, ioexception).
assign(v_count_76, ioutils_1_literal3, line(ioutils_1, 1158)).
assign(ioutils_1_expr14, ioutils_1_expr15, line(ioutils_1, 1160)).
assign(v_n_78, ioutils_1_expr16, line(ioutils_1, 1160)).
method_invoc(ioutils_1_expr16, m_read_44, line(ioutils_1, 1160)).
throw(ioutils_1_expr16, ioexception, line(ioutils_1, 1160)).
argument(p_buffer_75, 1, ioutils_1_expr16).
ref(p_input_73, ioutils_1_expr16, line(ioutils_1, 1160)).
param(p_input_79, 1, m_copy_large_45).
param(p_output_80, 2, m_copy_large_45).
param(p_input_offset_81, 3, m_copy_large_45).
param(p_length_82, 4, m_copy_large_45).
throw(m_copy_large_45, ioexception).
param(p_input_83, 1, m_copy_large_46).
param(p_output_84, 2, m_copy_large_46).
param(p_input_offset_85, 3, m_copy_large_46).
param(p_length_86, 4, m_copy_large_46).
param(p_buffer_87, 5, m_copy_large_46).
throw(m_copy_large_46, ioexception).
param(p_input_88, 1, m_copy_large_47).
param(p_output_89, 2, m_copy_large_47).
throw(m_copy_large_47, ioexception).
param(p_input_90, 1, m_copy_large_48).
param(p_output_91, 2, m_copy_large_48).
param(p_buffer_92, 3, m_copy_large_48).
throw(m_copy_large_48, ioexception).
param(p_input_93, 1, m_copy_large_49).
param(p_output_94, 2, m_copy_large_49).
param(p_input_offset_95, 3, m_copy_large_49).
param(p_length_96, 4, m_copy_large_49).
throw(m_copy_large_49, ioexception).
param(p_input_97, 1, m_copy_large_50).
param(p_output_98, 2, m_copy_large_50).
param(p_input_offset_99, 3, m_copy_large_50).
param(p_length_100, 4, m_copy_large_50).
param(p_buffer_101, 5, m_copy_large_50).
throw(m_copy_large_50, ioexception).
param(p_array_102, 1, m_length_51).
param(p_array_103, 1, m_length_52).
param(p_csq_104, 1, m_length_53).
param(p_array_105, 1, m_length_54).
param(p_input_106, 1, m_line_iterator_55).
param(p_charset_107, 2, m_line_iterator_55).
throw(m_line_iterator_55, ioexception).
param(p_input_108, 1, m_line_iterator_56).
param(p_charset_name_109, 2, m_line_iterator_56).
throw(m_line_iterator_56, ioexception).
param(p_reader_110, 1, m_line_iterator_57).
param(p_input_111, 1, m_read_58).
param(p_buffer_112, 2, m_read_58).
throw(m_read_58, ioexception).
param(p_input_113, 1, m_read_59).
param(p_buffer_114, 2, m_read_59).
param(p_offset_115, 3, m_read_59).
param(p_length_116, 4, m_read_59).
throw(m_read_59, ioexception).
param(p_input_117, 1, m_read_60).
param(p_buffer_118, 2, m_read_60).
throw(m_read_60, ioexception).
param(p_input_119, 1, m_read_61).
param(p_buffer_120, 2, m_read_61).
throw(m_read_61, ioexception).
param(p_input_121, 1, m_read_62).
param(p_buffer_122, 2, m_read_62).
param(p_offset_123, 3, m_read_62).
param(p_length_124, 4, m_read_62).
throw(m_read_62, ioexception).
param(p_input_125, 1, m_read_fully_63).
param(p_buffer_126, 2, m_read_fully_63).
throw(m_read_fully_63, ioexception).
param(p_input_127, 1, m_read_fully_64).
param(p_buffer_128, 2, m_read_fully_64).
param(p_offset_129, 3, m_read_fully_64).
param(p_length_130, 4, m_read_fully_64).
throw(m_read_fully_64, ioexception).
param(p_input_131, 1, m_read_fully_65).
param(p_length_132, 2, m_read_fully_65).
throw(m_read_fully_65, ioexception).
param(p_input_133, 1, m_read_fully_66).
param(p_buffer_134, 2, m_read_fully_66).
throw(m_read_fully_66, ioexception).
param(p_input_135, 1, m_read_fully_67).
param(p_buffer_136, 2, m_read_fully_67).
throw(m_read_fully_67, ioexception).
param(p_input_137, 1, m_read_fully_68).
param(p_buffer_138, 2, m_read_fully_68).
param(p_offset_139, 3, m_read_fully_68).
param(p_length_140, 4, m_read_fully_68).
throw(m_read_fully_68, ioexception).
param(p_input_141, 1, m_read_lines_69).
throw(m_read_lines_69, ioexception).
param(p_input_142, 1, m_read_lines_70).
param(p_charset_143, 2, m_read_lines_70).
throw(m_read_lines_70, ioexception).
param(p_input_144, 1, m_read_lines_71).
param(p_charset_name_145, 2, m_read_lines_71).
throw(m_read_lines_71, ioexception).
param(p_input_146, 1, m_read_lines_72).
throw(m_read_lines_72, ioexception).
param(p_name_147, 1, m_resource_to_byte_array_73).
throw(m_resource_to_byte_array_73, ioexception).
param(p_name_148, 1, m_resource_to_byte_array_74).
param(p_class_loader_149, 2, m_resource_to_byte_array_74).
throw(m_resource_to_byte_array_74, ioexception).
param(p_name_150, 1, m_resource_to_string_75).
param(p_charset_151, 2, m_resource_to_string_75).
throw(m_resource_to_string_75, ioexception).
param(p_name_152, 1, m_resource_to_string_76).
param(p_charset_153, 2, m_resource_to_string_76).
param(p_class_loader_154, 3, m_resource_to_string_76).
throw(m_resource_to_string_76, ioexception).
param(p_name_155, 1, m_resource_to_url_77).
throw(m_resource_to_url_77, ioexception).
param(p_name_156, 1, m_resource_to_url_78).
param(p_class_loader_157, 2, m_resource_to_url_78).
throw(m_resource_to_url_78, ioexception).
param(p_input_158, 1, m_skip_79).
param(p_to_skip_159, 2, m_skip_79).
throw(m_skip_79, ioexception).
param(p_input_160, 1, m_skip_80).
param(p_to_skip_161, 2, m_skip_80).
throw(m_skip_80, ioexception).
param(p_input_162, 1, m_skip_81).
param(p_to_skip_163, 2, m_skip_81).
throw(m_skip_81, ioexception).
param(p_input_164, 1, m_skip_fully_82).
param(p_to_skip_165, 2, m_skip_fully_82).
throw(m_skip_fully_82, ioexception).
param(p_input_166, 1, m_skip_fully_83).
param(p_to_skip_167, 2, m_skip_fully_83).
throw(m_skip_fully_83, ioexception).
param(p_input_168, 1, m_skip_fully_84).
param(p_to_skip_169, 2, m_skip_fully_84).
throw(m_skip_fully_84, ioexception).
param(p_input_170, 1, m_to_buffered_input_stream_85).
throw(m_to_buffered_input_stream_85, ioexception).
param(p_input_171, 1, m_to_buffered_input_stream_86).
param(p_size_172, 2, m_to_buffered_input_stream_86).
throw(m_to_buffered_input_stream_86, ioexception).
param(p_reader_173, 1, m_to_buffered_reader_87).
param(p_reader_174, 1, m_to_buffered_reader_88).
param(p_size_175, 2, m_to_buffered_reader_88).
param(p_input_176, 1, m_to_byte_array_89).
throw(m_to_byte_array_89, ioexception).
param(p_input_177, 1, m_to_byte_array_90).
param(p_size_178, 2, m_to_byte_array_90).
throw(m_to_byte_array_90, ioexception).
param(p_input_179, 1, m_to_byte_array_91).
param(p_size_180, 2, m_to_byte_array_91).
throw(m_to_byte_array_91, ioexception).
param(p_input_181, 1, m_to_byte_array_92).
throw(m_to_byte_array_92, ioexception).
param(p_input_182, 1, m_to_byte_array_93).
param(p_charset_183, 2, m_to_byte_array_93).
throw(m_to_byte_array_93, ioexception).
param(p_input_184, 1, m_to_byte_array_94).
param(p_charset_name_185, 2, m_to_byte_array_94).
throw(m_to_byte_array_94, ioexception).
param(p_input_186, 1, m_to_byte_array_95).
throw(m_to_byte_array_95, ioexception).
param(p_uri_187, 1, m_to_byte_array_96).
throw(m_to_byte_array_96, ioexception).
param(p_url_188, 1, m_to_byte_array_97).
throw(m_to_byte_array_97, ioexception).
param(p_url_conn_189, 1, m_to_byte_array_98).
throw(m_to_byte_array_98, ioexception).
param(p_is_190, 1, m_to_char_array_99).
throw(m_to_char_array_99, ioexception).
param(p_is_191, 1, m_to_char_array_100).
param(p_charset_192, 2, m_to_char_array_100).
throw(m_to_char_array_100, ioexception).
param(p_is_193, 1, m_to_char_array_101).
param(p_charset_name_194, 2, m_to_char_array_101).
throw(m_to_char_array_101, ioexception).
param(p_input_195, 1, m_to_char_array_102).
throw(m_to_char_array_102, ioexception).
param(p_input_196, 1, m_to_input_stream_103).
param(p_input_197, 1, m_to_input_stream_104).
param(p_charset_198, 2, m_to_input_stream_104).
param(p_input_199, 1, m_to_input_stream_105).
param(p_charset_name_200, 2, m_to_input_stream_105).
throw(m_to_input_stream_105, ioexception).
param(p_input_201, 1, m_to_input_stream_106).
param(p_input_202, 1, m_to_input_stream_107).
param(p_charset_203, 2, m_to_input_stream_107).
param(p_input_204, 1, m_to_input_stream_108).
param(p_charset_name_205, 2, m_to_input_stream_108).
throw(m_to_input_stream_108, ioexception).
param(p_input_206, 1, m_to_string_109).
throw(m_to_string_109, ioexception).
param(p_input_207, 1, m_to_string_110).
param(p_charset_name_208, 2, m_to_string_110).
throw(m_to_string_110, ioexception).
param(p_input_209, 1, m_to_string_111).
throw(m_to_string_111, ioexception).
param(p_input_210, 1, m_to_string_112).
param(p_charset_211, 2, m_to_string_112).
throw(m_to_string_112, ioexception).
param(p_input_212, 1, m_to_string_113).
param(p_charset_name_213, 2, m_to_string_113).
throw(m_to_string_113, ioexception).
param(p_input_214, 1, m_to_string_114).
throw(m_to_string_114, ioexception).
param(p_uri_215, 1, m_to_string_115).
throw(m_to_string_115, ioexception).
param(p_uri_216, 1, m_to_string_116).
param(p_encoding_217, 2, m_to_string_116).
throw(m_to_string_116, ioexception).
param(p_uri_218, 1, m_to_string_117).
param(p_charset_name_219, 2, m_to_string_117).
throw(m_to_string_117, ioexception).
param(p_url_220, 1, m_to_string_118).
throw(m_to_string_118, ioexception).
param(p_url_221, 1, m_to_string_119).
param(p_encoding_222, 2, m_to_string_119).
throw(m_to_string_119, ioexception).
param(p_url_223, 1, m_to_string_120).
param(p_charset_name_224, 2, m_to_string_120).
throw(m_to_string_120, ioexception).
param(p_data_225, 1, m_write_121).
param(p_output_226, 2, m_write_121).
throw(m_write_121, ioexception).
param(p_data_227, 1, m_write_122).
param(p_output_228, 2, m_write_122).
throw(m_write_122, ioexception).
param(p_data_229, 1, m_write_123).
param(p_output_230, 2, m_write_123).
param(p_charset_231, 3, m_write_123).
throw(m_write_123, ioexception).
param(p_data_232, 1, m_write_124).
param(p_output_233, 2, m_write_124).
param(p_charset_name_234, 3, m_write_124).
throw(m_write_124, ioexception).
param(p_data_235, 1, m_write_125).
param(p_output_236, 2, m_write_125).
throw(m_write_125, ioexception).
param(p_data_237, 1, m_write_126).
param(p_output_238, 2, m_write_126).
param(p_charset_239, 3, m_write_126).
throw(m_write_126, ioexception).
param(p_data_240, 1, m_write_127).
param(p_output_241, 2, m_write_127).
param(p_charset_name_242, 3, m_write_127).
throw(m_write_127, ioexception).
param(p_data_243, 1, m_write_128).
param(p_output_244, 2, m_write_128).
throw(m_write_128, ioexception).
param(p_data_245, 1, m_write_129).
param(p_output_246, 2, m_write_129).
throw(m_write_129, ioexception).
param(p_data_247, 1, m_write_130).
param(p_output_248, 2, m_write_130).
param(p_charset_249, 3, m_write_130).
throw(m_write_130, ioexception).
param(p_data_250, 1, m_write_131).
param(p_output_251, 2, m_write_131).
param(p_charset_name_252, 3, m_write_131).
throw(m_write_131, ioexception).
param(p_data_253, 1, m_write_132).
param(p_output_254, 2, m_write_132).
throw(m_write_132, ioexception).
param(p_data_255, 1, m_write_133).
param(p_output_256, 2, m_write_133).
throw(m_write_133, ioexception).
param(p_data_257, 1, m_write_134).
param(p_output_258, 2, m_write_134).
param(p_charset_259, 3, m_write_134).
throw(m_write_134, ioexception).
param(p_data_260, 1, m_write_135).
param(p_output_261, 2, m_write_135).
param(p_charset_name_262, 3, m_write_135).
throw(m_write_135, ioexception).
param(p_data_263, 1, m_write_136).
param(p_output_264, 2, m_write_136).
throw(m_write_136, ioexception).
param(p_data_265, 1, m_write_137).
param(p_output_266, 2, m_write_137).
throw(m_write_137, ioexception).
param(p_data_267, 1, m_write_138).
param(p_output_268, 2, m_write_138).
param(p_charset_name_269, 3, m_write_138).
throw(m_write_138, ioexception).
param(p_data_270, 1, m_write_139).
param(p_output_271, 2, m_write_139).
throw(m_write_139, ioexception).
param(p_data_272, 1, m_write_chunked_140).
param(p_output_273, 2, m_write_chunked_140).
throw(m_write_chunked_140, ioexception).
param(p_data_274, 1, m_write_chunked_141).
param(p_output_275, 2, m_write_chunked_141).
throw(m_write_chunked_141, ioexception).
param(p_lines_276, 1, m_write_lines_142).
param(p_line_ending_277, 2, m_write_lines_142).
param(p_output_278, 3, m_write_lines_142).
throw(m_write_lines_142, ioexception).
param(p_lines_279, 1, m_write_lines_143).
param(p_line_ending_280, 2, m_write_lines_143).
param(p_output_281, 3, m_write_lines_143).
param(p_charset_282, 4, m_write_lines_143).
throw(m_write_lines_143, ioexception).
param(p_lines_283, 1, m_write_lines_144).
param(p_line_ending_284, 2, m_write_lines_144).
param(p_output_285, 3, m_write_lines_144).
param(p_charset_name_286, 4, m_write_lines_144).
throw(m_write_lines_144, ioexception).
param(p_lines_287, 1, m_write_lines_145).
param(p_line_ending_288, 2, m_write_lines_145).
param(p_writer_289, 3, m_write_lines_145).
throw(m_write_lines_145, ioexception).
param(p_appendable_290, 1, m_writer_146).

%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
assign(f_empty_byte_array_295, abstract_byte_array_output_stream_1_expr1, line(abstract_byte_array_output_stream_1, 64)).
assign(f_buffers_296, abstract_byte_array_output_stream_1_expr2, line(abstract_byte_array_output_stream_1, 67)).
method_invoc(abstract_byte_array_output_stream_1_expr2, m_array_list_179, line(abstract_byte_array_output_stream_1, 67)).
assign(f_reuse_buffers_297, abstract_byte_array_output_stream_1_literal2, line(abstract_byte_array_output_stream_1, 77)).
param(p_newcount_298, 1, m_need_new_buffer_180).
method_invoc(abstract_byte_array_output_stream_1_expr5, m_size_181, line(abstract_byte_array_output_stream_1, 86)).
ref(f_buffers_296, abstract_byte_array_output_stream_1_expr5, line(abstract_byte_array_output_stream_1, 86)).
assign(v_new_buffer_size_301, p_newcount_298, line(abstract_byte_array_output_stream_1, 96)).
assign(f_filled_buffer_sum_302, abstract_byte_array_output_stream_1_literal5, line(abstract_byte_array_output_stream_1, 97)).
assign(v_new_buffer_size_301, abstract_byte_array_output_stream_1_expr10, line(abstract_byte_array_output_stream_1, 99)).
method_invoc(abstract_byte_array_output_stream_1_expr10, m_max_182, line(abstract_byte_array_output_stream_1, 99)).
argument(abstract_byte_array_output_stream_1_expr11, 1, abstract_byte_array_output_stream_1_expr10).
argument(abstract_byte_array_output_stream_1_expr12, 2, abstract_byte_array_output_stream_1_expr10).
ref(t_math_6, abstract_byte_array_output_stream_1_expr10, line(abstract_byte_array_output_stream_1, 99)).
assign(f_filled_buffer_sum_302, q_length_2, line(abstract_byte_array_output_stream_1, 102)).
ref(f_current_buffer_300, q_length_2, line(abstract_byte_array_output_stream_1, 102)).
assign(f_current_buffer_300, abstract_byte_array_output_stream_1_expr16, line(abstract_byte_array_output_stream_1, 106)).
method_invoc(abstract_byte_array_output_stream_1_expr17, m_add_183, line(abstract_byte_array_output_stream_1, 107)).
argument(f_current_buffer_300, 1, abstract_byte_array_output_stream_1_expr17).
ref(f_buffers_296, abstract_byte_array_output_stream_1_expr17, line(abstract_byte_array_output_stream_1, 107)).
param(p_b_303, 1, m_write_184).
param(p_off_304, 2, m_write_184).
param(p_len_305, 3, m_write_184).
param(p_b_306, 1, m_write_impl_185).
param(p_off_307, 2, m_write_impl_185).
param(p_len_308, 3, m_write_impl_185).
param(p_b_309, 1, m_write_186).
param(p_b_310, 1, m_write_impl_187).
assign(v_in_buffer_pos_311, abstract_byte_array_output_stream_1_expr18, line(abstract_byte_array_output_stream_1, 154)).
ref(f_current_buffer_300, q_length_3, line(abstract_byte_array_output_stream_1, 155)).
method_invoc(abstract_byte_array_output_stream_1_expr20, m_need_new_buffer_180, line(abstract_byte_array_output_stream_1, 156)).
argument(abstract_byte_array_output_stream_1_expr21, 1, abstract_byte_array_output_stream_1_expr20).
assign(v_in_buffer_pos_311, abstract_byte_array_output_stream_1_literal7, line(abstract_byte_array_output_stream_1, 157)).
assign(abstract_byte_array_output_stream_1_expr24, abstract_byte_array_output_stream_1_expr25, line(abstract_byte_array_output_stream_1, 159)).
ref(f_current_buffer_300, abstract_byte_array_output_stream_1_expr24, line(abstract_byte_array_output_stream_1, 159)).
assign(abstract_byte_array_output_stream_1_expr25, p_b_310, line(abstract_byte_array_output_stream_1, 159)).
param(p_in_313, 1, m_write_188).
throw(m_write_188, ioexception).
param(p_in_314, 1, m_write_impl_189).
throw(m_write_impl_189, ioexception).
throw(m_close_191, ioexception).
param(p_out_315, 1, m_write_to_194).
throw(m_write_to_194, ioexception).
param(p_out_316, 1, m_write_to_impl_195).
throw(m_write_to_impl_195, ioexception).
param(p_is_constructor_317, 1, m_to_input_stream_197).
param(p_buf_318, 1, m_construct_198).
param(p_offset_319, 2, m_construct_198).
param(p_length_320, 3, m_construct_198).
assign(v_remaining_321, f_count_312, line(abstract_byte_array_output_stream_1, 362)).
assign(v_newbuf_322, abstract_byte_array_output_stream_1_expr28, line(abstract_byte_array_output_stream_1, 366)).
assign(v_pos_323, abstract_byte_array_output_stream_1_literal9, line(abstract_byte_array_output_stream_1, 367)).
ref(f_buffers_296, abstract_byte_array_output_stream_1_stmt20, line(abstract_byte_array_output_stream_1, 368)).
assign(v_c_325, abstract_byte_array_output_stream_1_expr29, line(abstract_byte_array_output_stream_1, 369)).
method_invoc(abstract_byte_array_output_stream_1_expr29, m_min_201, line(abstract_byte_array_output_stream_1, 369)).
argument(q_length_3, 1, abstract_byte_array_output_stream_1_expr29).
argument(v_remaining_321, 2, abstract_byte_array_output_stream_1_expr29).
ref(t_math_6, abstract_byte_array_output_stream_1_expr29, line(abstract_byte_array_output_stream_1, 369)).
ref(v_buf_324, q_length_3, line(abstract_byte_array_output_stream_1, 369)).
method_invoc(abstract_byte_array_output_stream_1_expr30, m_arraycopy_202, line(abstract_byte_array_output_stream_1, 370)).
argument(v_buf_324, 1, abstract_byte_array_output_stream_1_expr30).
argument(abstract_byte_array_output_stream_1_literal10, 2, abstract_byte_array_output_stream_1_expr30).
argument(v_newbuf_322, 3, abstract_byte_array_output_stream_1_expr30).
argument(v_pos_323, 4, abstract_byte_array_output_stream_1_expr30).
argument(v_c_325, 5, abstract_byte_array_output_stream_1_expr30).
ref(t_system_7, abstract_byte_array_output_stream_1_expr30, line(abstract_byte_array_output_stream_1, 370)).
assign(v_pos_323, v_c_325, line(abstract_byte_array_output_stream_1, 371)).
assign(v_remaining_321, v_c_325, line(abstract_byte_array_output_stream_1, 372)).
return(v_newbuf_322, m_to_byte_array_impl_200, line(abstract_byte_array_output_stream_1, 377)).
param(p_enc_326, 1, m_to_string_204).
throw(m_to_string_204, unsupported_encoding_exception).
param(p_charset_327, 1, m_to_string_205).

%test_utils_1 - org.apache.commons.io.test.TestUtils
param(p_file_351, 1, m_create_file_231).
param(p_size_352, 2, m_create_file_231).
throw(m_create_file_231, ioexception).
param(p_size_353, 1, m_generate_test_data_148).
assign(v_baout_354, test_utils_1_expr1, line(test_utils_1, 63)).
method_invoc(test_utils_1_expr1, m_byte_array_output_stream_152, line(test_utils_1, 63)).
method_invoc(test_utils_1_expr2, m_generate_test_data_232, line(test_utils_1, 64)).
throw(test_utils_1_expr2, ioexception, line(test_utils_1, 64)).
argument(v_baout_354, 1, test_utils_1_expr2).
argument(p_size_353, 2, test_utils_1_expr2).
return(test_utils_1_expr3, m_generate_test_data_148, line(test_utils_1, 65)).
method_invoc(test_utils_1_expr3, m_to_byte_array_216, line(test_utils_1, 65)).
ref(v_baout_354, test_utils_1_expr3, line(test_utils_1, 65)).
param(p_out_355, 1, m_generate_test_data_232).
param(p_size_356, 2, m_generate_test_data_232).
throw(m_generate_test_data_232, ioexception).
assign(v_i_357, test_utils_1_literal1, line(test_utils_1, 73)).
method_invoc(test_utils_1_expr7, m_write_233, line(test_utils_1, 77)).
throw(test_utils_1_expr7, ioexception, line(test_utils_1, 77)).
argument(test_utils_1_expr8, 1, test_utils_1_expr7).
ref(p_out_355, test_utils_1_expr7, line(test_utils_1, 77)).
assign(test_utils_1_expr8, test_utils_1_expr9, line(test_utils_1, 77)).
assign(test_utils_1_expr9, test_utils_1_expr10, line(test_utils_1, 77)).
assign(test_utils_1_expr11, test_utils_1_expr12, line(test_utils_1, 77)).
param(p_file_358, 1, m_create_line_based_file_234).
param(p_data_359, 2, m_create_line_based_file_234).
throw(m_create_line_based_file_234, ioexception).
param(p_test_directory_360, 1, m_new_file_235).
param(p_filename_361, 2, m_new_file_235).
throw(m_new_file_235, ioexception).
param(p_file_362, 1, m_check_file_236).
param(p_reference_file_363, 2, m_check_file_236).
throw(m_check_file_236, exception).
param(p_f_0_364, 1, m_assert_equal_content_237).
param(p_f_1_365, 2, m_assert_equal_content_237).
throw(m_assert_equal_content_237, ioexception).
param(p_b_0_366, 1, m_assert_equal_content_238).
param(p_file_367, 2, m_assert_equal_content_238).
throw(m_assert_equal_content_238, ioexception).
param(p_c_0_368, 1, m_assert_equal_content_239).
param(p_file_369, 2, m_assert_equal_content_239).
throw(m_assert_equal_content_239, ioexception).
param(p_output_370, 1, m_check_write_240).
throw(m_check_write_240, exception).
param(p_output_371, 1, m_check_write_241).
throw(m_check_write_241, exception).
param(p_file_372, 1, m_delete_file_242).
throw(m_delete_file_242, exception).
param(p_ms_373, 1, m_sleep_243).
throw(m_sleep_243, interrupted_exception).
param(p_ms_374, 1, m_sleep_quietly_244).

%ioutils_copy_test_case_1 - org.apache.commons.io.IOUtilsCopyTestCase
assign(f_in_data_291, ioutils_copy_test_case_1_expr1, line(ioutils_copy_test_case_1, 59)).
method_invoc(ioutils_copy_test_case_1_expr1, m_generate_test_data_148, line(ioutils_copy_test_case_1, 59)).
argument(f_file_size_292, 1, ioutils_copy_test_case_1_expr1).
ref(t_test_utils_3, ioutils_copy_test_case_1_expr1, line(ioutils_copy_test_case_1, 59)).
throw(m_test_copy_input_stream_to_output_stream_149, exception).
throw(m_test_copy_input_stream_to_output_stream__io84_150, exception).
throw(m_test_copy_input_stream_to_output_stream_null_in_151, exception).
assign(v_out_293, ioutils_copy_test_case_1_expr2, line(ioutils_copy_test_case_1, 100)).
method_invoc(ioutils_copy_test_case_1_expr2, m_byte_array_output_stream_152, line(ioutils_copy_test_case_1, 100)).
method_invoc(ioutils_copy_test_case_1_expr3, m_assert_equals_153, line(ioutils_copy_test_case_1, 101)).
argument(ioutils_copy_test_case_1_literal1, 1, ioutils_copy_test_case_1_expr3).
argument(ioutils_copy_test_case_1_expr4, 2, ioutils_copy_test_case_1_expr3).
method_invoc(ioutils_copy_test_case_1_expr4, m_copy_31, line(ioutils_copy_test_case_1, 101)).
throw(ioutils_copy_test_case_1_expr4, ioexception, line(ioutils_copy_test_case_1, 101)).
argument(ioutils_copy_test_case_1_expr5, 1, ioutils_copy_test_case_1_expr4).
argument(v_out_293, 2, ioutils_copy_test_case_1_expr4).
ref(t_ioutils_4, ioutils_copy_test_case_1_expr4, line(ioutils_copy_test_case_1, 101)).
assign(ioutils_copy_test_case_1_expr5, ioutils_copy_test_case_1_literal2, line(ioutils_copy_test_case_1, 101)).
throw(m_test_copy_input_stream_to_output_stream_null_out_154, exception).
throw(m_test_copy_input_stream_to_output_stream_with_buffer_size_155, exception).
param(p_buffer_size_294, 1, m_test_copy_input_stream_to_output_stream_with_buffer_size_156).
throw(m_test_copy_input_stream_to_output_stream_with_buffer_size_156, exception).
throw(m_test_copy_input_stream_to_writer_157, exception).
throw(m_test_copy_input_stream_to_writer__encoding_158, exception).
throw(m_test_copy_input_stream_to_writer__encoding_null_encoding_159, exception).
throw(m_test_copy_input_stream_to_writer__encoding_null_in_160, exception).
throw(m_test_copy_input_stream_to_writer__encoding_null_out_161, exception).
throw(m_test_copy_input_stream_to_writer_null_in_162, exception).
throw(m_test_copy_input_stream_to_writer_null_out_163, exception).
throw(m_test_copy_reader_to_appendable_164, exception).
throw(m_test_copy_reader_to_appendable__io84_165, exception).
throw(m_test_copy_reader_to_appendable_null_in_166, exception).
throw(m_test_copy_reader_to_appendable_null_out_167, exception).
throw(m_test_copy_reader_to_output_stream_168, exception).
throw(m_test_copy_reader_to_output_stream__encoding_169, exception).
throw(m_test_copy_reader_to_output_stream__encoding_null_encoding_170, exception).
throw(m_test_copy_reader_to_output_stream__encoding_null_in_171, exception).
throw(m_test_copy_reader_to_output_stream__encoding_null_out_172, exception).
throw(m_test_copy_reader_to_output_stream_null_in_173, exception).
throw(m_test_copy_reader_to_output_stream_null_out_174, exception).
throw(m_test_copy_reader_to_writer_175, exception).
throw(m_test_copy_reader_to_writer__io84_176, exception).
throw(m_test_copy_reader_to_writer_null_in_177, exception).
throw(m_test_copy_reader_to_writer_null_out_178, exception).

%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
method_invoc(byte_array_output_stream_1_expr1, m_byte_array_output_stream_206, line(byte_array_output_stream_1, 34)).
argument(f_default_size_328, 1, byte_array_output_stream_1_expr1).
param(p_size_329, 1, m_byte_array_output_stream_206).
method_invoc(byte_array_output_stream_1_expr4, m_need_new_buffer_180, line(byte_array_output_stream_1, 50)).
argument(p_size_329, 1, byte_array_output_stream_1_expr4).
param(p_b_330, 1, m_write_207).
param(p_off_331, 2, m_write_207).
param(p_len_332, 3, m_write_207).
param(p_b_333, 1, m_write_208).
method_invoc(byte_array_output_stream_1_expr5, m_write_impl_187, line(byte_array_output_stream_1, 72)).
argument(p_b_333, 1, byte_array_output_stream_1_expr5).
param(p_in_334, 1, m_write_209).
throw(m_write_209, ioexception).
param(p_out_335, 1, m_write_to_212).
throw(m_write_to_212, ioexception).
param(p_input_336, 1, m_to_buffered_input_stream_213).
throw(m_to_buffered_input_stream_213, ioexception).
param(p_input_337, 1, m_to_buffered_input_stream_214).
param(p_size_338, 2, m_to_buffered_input_stream_214).
throw(m_to_buffered_input_stream_214, ioexception).
return(byte_array_output_stream_1_expr6, m_to_byte_array_216, line(byte_array_output_stream_1, 163)).
method_invoc(byte_array_output_stream_1_expr6, m_to_byte_array_impl_200, line(byte_array_output_stream_1, 163)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.IOUtilsCopyTestCase', 'testCopy_inputStreamToOutputStream_nullIn').
trace(trace_1, failure_1, m_copy_large_34, line(ioutils_1, 1160), failure_1, target).
trace(trace_2, trace_1, m_copy_33, line(ioutils_1, 882), failure_1, target).
trace(trace_3, trace_2, m_copy_large_32, line(ioutils_1, 1137), failure_1, target).
trace(trace_4, trace_3, m_copy_31, line(ioutils_1, 858), failure_1, target).
trace(trace_5, trace_4, m_test_copy_input_stream_to_output_stream_null_in_151, line(ioutils_copy_test_case_1, 101), failure_1, target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_8, trace_7, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_1, non_target).
trace(trace_9, trace_8, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_1, non_target).
trace(trace_10, trace_9, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_1, non_target).
trace(trace_11, trace_10, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_1, non_target).
trace(trace_12, trace_11, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_1, non_target).
trace(trace_13, trace_12, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_1, non_target).
trace(trace_14, trace_13, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_1, non_target).
trace(trace_15, trace_14, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_1, non_target).
trace(trace_16, trace_15, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_1, non_target).
trace(trace_17, trace_16, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_1, non_target).
trace(trace_18, trace_17, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_1, non_target).
trace(trace_19, trace_18, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_1, non_target).
trace(trace_20, trace_19, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_1, non_target).
trace(trace_21, trace_20, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_1, non_target).
trace(trace_22, trace_21, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_1, non_target).
trace(trace_23, trace_22, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_24, trace_23, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_1, non_target).
trace(trace_25, trace_24, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_1, non_target).
trace(trace_26, trace_25, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_1, non_target).
trace(trace_27, trace_26, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_1, non_target).
trace(trace_28, trace_27, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_29, trace_28, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_30, trace_29, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_31, trace_30, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_32, trace_31, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_33, trace_32, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_34, trace_33, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_35, trace_34, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_36, trace_35, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_37, trace_36, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_38, trace_37, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_39, trace_38, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_40, trace_39, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_41, trace_40, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_42, trace_41, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_43, trace_42, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_44, trace_43, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_45, trace_44, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_46, trace_45, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_47, trace_46, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_48, trace_47, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_49, trace_48, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_50, trace_49, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_51, trace_50, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_52, trace_51, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_53, trace_52, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_54, trace_53, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_55, trace_54, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_1, non_target).
trace(trace_56, trace_55, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_1, non_target).
trace(trace_57, trace_56, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_1, non_target).
trace(trace_58, trace_57, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_1, non_target).
trace(trace_59, trace_58, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_1, non_target).
trace(trace_60, trace_59, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_1, non_target).
trace(trace_61, trace_60, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_1, non_target).
trace(trace_62, trace_61, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_1, non_target).
trace(trace_63, trace_62, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_1, non_target).
trace(trace_64, trace_63, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_1, non_target).
trace(trace_65, trace_64, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_1, non_target).
trace(trace_66, trace_65, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_1, non_target).
trace(trace_67, trace_66, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_input_41, null, line(ioutils_1, 858)).
val(p_input_44, null, line(ioutils_1, 882)).
val(p_input_70, null, line(ioutils_1, 1137)).
val(p_input_73, null, line(ioutils_1, 1160)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(string_builder_writer_1, 'org.apache.commons.io.output.StringBuilderWriter').
class(ioutils_1, 'org.apache.commons.io.IOUtils').
class(abstract_byte_array_output_stream_1, 'org.apache.commons.io.output.AbstractByteArrayOutputStream').
class(test_utils_1, 'org.apache.commons.io.test.TestUtils').
class(ioutils_copy_test_case_1, 'org.apache.commons.io.IOUtilsCopyTestCase').
class(byte_array_output_stream_1, 'org.apache.commons.io.output.ByteArrayOutputStream').

%%% Methods
%string_builder_writer_1 - org.apache.commons.io.output.StringBuilderWriter
method(m_string_builder_writer_217, range(string_builder_writer_1, 1516, 174, 38, 43)).
method(m_string_builder_writer_1, range(string_builder_writer_1, 1696, 297, 45, 52)).
method(m_string_builder_writer_219, range(string_builder_writer_1, 1999, 390, 54, 63)).
method(m_append_220, range(string_builder_writer_1, 2395, 265, 65, 75)).
method(m_append_221, range(string_builder_writer_1, 2666, 275, 77, 87)).
method(m_append_222, range(string_builder_writer_1, 2947, 453, 89, 101)).
method(m_close_223, range(string_builder_writer_1, 3406, 116, 103, 109)).
method(m_flush_224, range(string_builder_writer_1, 3528, 117, 111, 117)).
method(m_write_225, range(string_builder_writer_1, 3652, 248, 120, 130)).
method(m_write_227, range(string_builder_writer_1, 3906, 431, 132, 144)).
method(m_get_builder_228, range(string_builder_writer_1, 4343, 165, 146, 153)).
method(m_to_string_4, range(string_builder_writer_1, 4514, 204, 155, 163)).
%ioutils_1 - org.apache.commons.io.IOUtils
method(m_buffer_5, range(ioutils_1, 6784, 851, 181, 196)).
method(m_buffer_6, range(ioutils_1, 7641, 950, 198, 214)).
method(m_buffer_7, range(ioutils_1, 8597, 871, 216, 231)).
method(m_buffer_8, range(ioutils_1, 9474, 971, 233, 249)).
method(m_buffer_9, range(ioutils_1, 10451, 562, 251, 262)).
method(m_buffer_10, range(ioutils_1, 11019, 656, 264, 276)).
method(m_buffer_11, range(ioutils_1, 11681, 562, 278, 289)).
method(m_buffer_12, range(ioutils_1, 12249, 656, 291, 303)).
method(m_close_13, range(ioutils_1, 12911, 372, 305, 316)).
method(m_close_14, range(ioutils_1, 13289, 459, 318, 331)).
method(m_close_15, range(ioutils_1, 13754, 674, 333, 351)).
method(m_close_16, range(ioutils_1, 14434, 286, 353, 363)).
method(m_close_quietly_17, range(ioutils_1, 14726, 1327, 365, 407)).
method(m_close_quietly_18, range(ioutils_1, 16059, 2031, 409, 464)).
method(m_close_quietly_19, range(ioutils_1, 18096, 668, 466, 483)).
method(m_close_quietly_20, range(ioutils_1, 18770, 1056, 485, 515)).
method(m_close_quietly_21, range(ioutils_1, 19832, 1069, 517, 548)).
method(m_close_quietly_22, range(ioutils_1, 20907, 1026, 550, 580)).
method(m_close_quietly_23, range(ioutils_1, 21939, 989, 582, 612)).
method(m_close_quietly_24, range(ioutils_1, 22934, 1040, 614, 644)).
method(m_close_quietly_25, range(ioutils_1, 23980, 1011, 646, 676)).
method(m_close_quietly_26, range(ioutils_1, 24997, 998, 678, 707)).
method(m_consume_27, range(ioutils_1, 26001, 593, 709, 724)).
method(m_content_equals_28, range(ioutils_1, 26600, 1300, 726, 761)).
method(m_content_equals_29, range(ioutils_1, 27906, 1315, 763, 801)).
method(m_content_equals_ignore_eol_30, range(ioutils_1, 29227, 1283, 803, 836)).
method(m_copy_31, range(ioutils_1, 30516, 1139, 838, 863)).
method(m_copy_33, range(ioutils_1, 31661, 885, 865, 883)).
method(m_copy_35, range(ioutils_1, 32552, 884, 885, 905)).
method(m_copy_36, range(ioutils_1, 33442, 971, 907, 927)).
method(m_copy_37, range(ioutils_1, 34419, 1406, 929, 954)).
method(m_copy_38, range(ioutils_1, 35831, 1022, 956, 976)).
method(m_copy_39, range(ioutils_1, 36859, 932, 978, 1002)).
method(m_copy_40, range(ioutils_1, 37797, 1014, 1004, 1028)).
method(m_copy_41, range(ioutils_1, 38817, 1272, 1030, 1060)).
method(m_copy_42, range(ioutils_1, 40095, 1539, 1062, 1091)).
method(m_copy_43, range(ioutils_1, 41640, 1086, 1093, 1117)).
method(m_copy_large_32, range(ioutils_1, 42732, 825, 1119, 1138)).
method(m_copy_large_34, range(ioutils_1, 43563, 957, 1140, 1165)).
method(m_copy_large_45, range(ioutils_1, 44526, 1435, 1167, 1194)).
method(m_copy_large_46, range(ioutils_1, 45967, 2173, 1196, 1244)).
method(m_copy_large_47, range(ioutils_1, 48146, 787, 1246, 1263)).
method(m_copy_large_48, range(ioutils_1, 48939, 908, 1265, 1288)).
method(m_copy_large_49, range(ioutils_1, 49853, 1092, 1290, 1312)).
method(m_copy_large_50, range(ioutils_1, 50951, 1822, 1314, 1357)).
method(m_length_51, range(ioutils_1, 52779, 315, 1359, 1368)).
method(m_length_52, range(ioutils_1, 53100, 315, 1370, 1379)).
method(m_length_53, range(ioutils_1, 53421, 342, 1381, 1390)).
method(m_length_54, range(ioutils_1, 53769, 317, 1392, 1401)).
method(m_line_iterator_55, range(ioutils_1, 54092, 1495, 1403, 1435)).
method(m_line_iterator_56, range(ioutils_1, 55593, 1813, 1437, 1472)).
method(m_line_iterator_57, range(ioutils_1, 57412, 1129, 1474, 1503)).
method(m_read_58, range(ioutils_1, 58547, 625, 1505, 1519)).
method(m_read_59, range(ioutils_1, 59178, 1196, 1521, 1550)).
method(m_read_60, range(ioutils_1, 60380, 892, 1552, 1574)).
method(m_read_61, range(ioutils_1, 61278, 635, 1576, 1590)).
method(m_read_62, range(ioutils_1, 61919, 1206, 1592, 1621)).
method(m_read_fully_63, range(ioutils_1, 63131, 767, 1623, 1639)).
method(m_read_fully_64, range(ioutils_1, 63904, 1058, 1641, 1663)).
method(m_read_fully_65, range(ioutils_1, 64968, 891, 1665, 1683)).
method(m_read_fully_66, range(ioutils_1, 65865, 879, 1685, 1703)).
method(m_read_fully_67, range(ioutils_1, 66750, 765, 1705, 1720)).
method(m_read_fully_68, range(ioutils_1, 67521, 1056, 1722, 1743)).
method(m_read_lines_69, range(ioutils_1, 68583, 804, 1745, 1762)).
method(m_read_lines_70, range(ioutils_1, 69393, 866, 1764, 1781)).
method(m_read_lines_71, range(ioutils_1, 70265, 1294, 1783, 1805)).
method(m_read_lines_72, range(ioutils_1, 71565, 863, 1807, 1829)).
method(m_resource_to_byte_array_73, range(ioutils_1, 72434, 533, 1831, 1847)).
method(m_resource_to_byte_array_74, range(ioutils_1, 72973, 673, 1849, 1866)).
method(m_resource_to_string_75, range(ioutils_1, 73652, 671, 1868, 1886)).
method(m_resource_to_string_76, range(ioutils_1, 74329, 811, 1888, 1907)).
method(m_resource_to_url_77, range(ioutils_1, 75146, 505, 1909, 1925)).
method(m_resource_to_url_78, range(ioutils_1, 75657, 949, 1927, 1952)).
method(m_skip_79, range(ioutils_1, 76612, 2225, 1954, 1997)).
method(m_skip_80, range(ioutils_1, 78843, 1200, 1999, 2027)).
method(m_skip_81, range(ioutils_1, 80049, 2235, 2029, 2072)).
method(m_skip_fully_82, range(ioutils_1, 82290, 1346, 2074, 2101)).
method(m_skip_fully_83, range(ioutils_1, 83642, 881, 2103, 2121)).
method(m_skip_fully_84, range(ioutils_1, 84529, 1213, 2123, 2147)).
method(m_to_buffered_input_stream_85, range(ioutils_1, 85748, 988, 2149, 2172)).
method(m_to_buffered_input_stream_86, range(ioutils_1, 86742, 1053, 2174, 2198)).
method(m_to_buffered_reader_87, range(ioutils_1, 87801, 592, 2200, 2212)).
method(m_to_buffered_reader_88, range(ioutils_1, 88399, 686, 2214, 2227)).
method(m_to_byte_array_89, range(ioutils_1, 89091, 702, 2229, 2245)).
method(m_to_byte_array_90, range(ioutils_1, 89799, 1291, 2247, 2283)).
method(m_to_byte_array_91, range(ioutils_1, 91096, 1279, 2285, 2309)).
method(m_to_byte_array_92, range(ioutils_1, 92381, 726, 2311, 2327)).
method(m_to_byte_array_93, range(ioutils_1, 93113, 847, 2329, 2348)).
method(m_to_byte_array_94, range(ioutils_1, 93966, 1237, 2350, 2372)).
method(m_to_byte_array_95, range(ioutils_1, 95209, 719, 2374, 2390)).
method(m_to_byte_array_96, range(ioutils_1, 95934, 442, 2392, 2403)).
method(m_to_byte_array_97, range(ioutils_1, 96382, 567, 2405, 2421)).
method(m_to_byte_array_98, range(ioutils_1, 96955, 565, 2423, 2436)).
method(m_to_char_array_99, range(ioutils_1, 97526, 762, 2438, 2455)).
method(m_to_char_array_100, range(ioutils_1, 98294, 835, 2457, 2476)).
method(m_to_char_array_101, range(ioutils_1, 99135, 1250, 2478, 2500)).
method(m_to_char_array_102, range(ioutils_1, 100391, 651, 2502, 2518)).
method(m_to_input_stream_103, range(ioutils_1, 101048, 494, 2520, 2532)).
method(m_to_input_stream_104, range(ioutils_1, 101548, 470, 2534, 2545)).
method(m_to_input_stream_105, range(ioutils_1, 102024, 1037, 2547, 2565)).
method(m_to_input_stream_106, range(ioutils_1, 103067, 470, 2567, 2579)).
method(m_to_input_stream_107, range(ioutils_1, 103543, 481, 2581, 2592)).
method(m_to_input_stream_108, range(ioutils_1, 104030, 1075, 2594, 2613)).
method(m_to_string_109, range(ioutils_1, 105111, 634, 2615, 2629)).
method(m_to_string_110, range(ioutils_1, 105751, 738, 2631, 2646)).
method(m_to_string_111, range(ioutils_1, 106495, 726, 2648, 2664)).
method(m_to_string_112, range(ioutils_1, 107227, 841, 2666, 2686)).
method(m_to_string_113, range(ioutils_1, 108074, 1229, 2688, 2710)).
method(m_to_string_114, range(ioutils_1, 109309, 642, 2712, 2728)).
method(m_to_string_115, range(ioutils_1, 109957, 435, 2730, 2742)).
method(m_to_string_116, range(ioutils_1, 110398, 452, 2744, 2755)).
method(m_to_string_117, range(ioutils_1, 110856, 777, 2757, 2771)).
method(m_to_string_118, range(ioutils_1, 111639, 435, 2773, 2785)).
method(m_to_string_119, range(ioutils_1, 112080, 504, 2787, 2800)).
method(m_to_string_120, range(ioutils_1, 112590, 777, 2802, 2816)).
method(m_write_121, range(ioutils_1, 113373, 569, 2818, 2833)).
method(m_write_122, range(ioutils_1, 113948, 749, 2835, 2852)).
method(m_write_123, range(ioutils_1, 114703, 801, 2854, 2872)).
method(m_write_124, range(ioutils_1, 115510, 1248, 2874, 2896)).
method(m_write_125, range(ioutils_1, 116764, 770, 2898, 2917)).
method(m_write_126, range(ioutils_1, 117540, 864, 2919, 2938)).
method(m_write_127, range(ioutils_1, 118410, 1201, 2940, 2963)).
method(m_write_128, range(ioutils_1, 119617, 537, 2965, 2979)).
method(m_write_129, range(ioutils_1, 120160, 786, 2981, 2999)).
method(m_write_130, range(ioutils_1, 120952, 797, 3001, 3019)).
method(m_write_131, range(ioutils_1, 121755, 1117, 3021, 3042)).
method(m_write_132, range(ioutils_1, 122878, 541, 3044, 3057)).
method(m_write_133, range(ioutils_1, 123426, 762, 3060, 3078)).
method(m_write_134, range(ioutils_1, 124194, 784, 3080, 3097)).
method(m_write_135, range(ioutils_1, 124984, 1099, 3099, 3120)).
method(m_write_136, range(ioutils_1, 126089, 511, 3122, 3135)).
method(m_write_137, range(ioutils_1, 126606, 763, 3137, 3155)).
method(m_write_138, range(ioutils_1, 127375, 1277, 3157, 3182)).
method(m_write_139, range(ioutils_1, 128658, 637, 3184, 3200)).
method(m_write_chunked_140, range(ioutils_1, 129301, 1024, 3202, 3226)).
method(m_write_chunked_141, range(ioutils_1, 130331, 993, 3228, 3251)).
method(m_write_lines_142, range(ioutils_1, 131330, 968, 3253, 3270)).
method(m_write_lines_143, range(ioutils_1, 132304, 1263, 3272, 3300)).
method(m_write_lines_144, range(ioutils_1, 133573, 1436, 3302, 3324)).
method(m_write_lines_145, range(ioutils_1, 135015, 1024, 3326, 3351)).
method(m_writer_146, range(ioutils_1, 136045, 804, 3353, 3371)).
method(m_ioutils_147, range(ioutils_1, 136855, 135, 3373, 3378)).
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
method(m_need_new_buffer_180, range(abstract_byte_array_output_stream_1, 3193, 1058, 79, 109)).
method(m_write_184, range(abstract_byte_array_output_stream_1, 4257, 263, 111, 118)).
method(m_write_impl_185, range(abstract_byte_array_output_stream_1, 4526, 772, 120, 140)).
method(m_write_186, range(abstract_byte_array_output_stream_1, 5304, 139, 142, 147)).
method(m_write_impl_187, range(abstract_byte_array_output_stream_1, 5449, 373, 149, 161)).
method(m_write_188, range(abstract_byte_array_output_stream_1, 5829, 532, 164, 175)).
method(m_write_impl_189, range(abstract_byte_array_output_stream_1, 6367, 1093, 177, 203)).
method(m_size_190, range(abstract_byte_array_output_stream_1, 7466, 151, 205, 210)).
method(m_close_191, range(abstract_byte_array_output_stream_1, 7623, 426, 212, 223)).
method(m_reset_192, range(abstract_byte_array_output_stream_1, 8055, 95, 225, 228)).
method(m_reset_impl_193, range(abstract_byte_array_output_stream_1, 8156, 514, 230, 247)).
method(m_write_to_194, range(abstract_byte_array_output_stream_1, 8676, 384, 249, 257)).
method(m_write_to_impl_195, range(abstract_byte_array_output_stream_1, 9066, 665, 259, 277)).
method(m_to_input_stream_196, range(abstract_byte_array_output_stream_1, 9737, 446, 279, 289)).
method(m_to_input_stream_197, range(abstract_byte_array_output_stream_1, 10189, 1345, 291, 323)).
method(m_construct_198, range(abstract_byte_array_output_stream_1, 11760, 338, 333, 342)).
method(m_to_byte_array_199, range(abstract_byte_array_output_stream_1, 12110, 310, 345, 352)).
method(m_to_byte_array_impl_200, range(abstract_byte_array_output_stream_1, 12426, 805, 354, 378)).
method(m_to_string_203, range(abstract_byte_array_output_stream_1, 13237, 482, 380, 392)).
method(m_to_string_204, range(abstract_byte_array_output_stream_1, 13725, 502, 394, 405)).
method(m_to_string_205, range(abstract_byte_array_output_stream_1, 14233, 408, 407, 418)).
%test_utils_1 - org.apache.commons.io.test.TestUtils
method(m_test_utils_230, range(test_utils_1, 1583, 28, 45, 47)).
method(m_create_file_231, range(test_utils_1, 1617, 470, 49, 59)).
method(m_generate_test_data_148, range(test_utils_1, 2093, 377, 61, 69)).
method(m_generate_test_data_232, range(test_utils_1, 2476, 329, 71, 79)).
method(m_create_line_based_file_234, range(test_utils_1, 2811, 533, 81, 90)).
method(m_new_file_235, range(test_utils_1, 3350, 442, 92, 102)).
method(m_check_file_236, range(test_utils_1, 3798, 226, 104, 108)).
method(m_assert_equal_content_237, range(test_utils_1, 4030, 1289, 110, 140)).
method(m_assert_equal_content_238, range(test_utils_1, 5325, 870, 142, 162)).
method(m_assert_equal_content_239, range(test_utils_1, 6201, 860, 164, 184)).
method(m_check_write_240, range(test_utils_1, 7067, 296, 186, 192)).
method(m_check_write_241, range(test_utils_1, 7369, 292, 194, 200)).
method(m_delete_file_242, range(test_utils_1, 7667, 194, 202, 207)).
method(m_sleep_243, range(test_utils_1, 7867, 707, 209, 225)).
method(m_sleep_quietly_244, range(test_utils_1, 8580, 155, 227, 232)).
%ioutils_copy_test_case_1 - org.apache.commons.io.IOUtilsCopyTestCase
method(m_test_copy_input_stream_to_output_stream_149, range(ioutils_copy_test_case_1, 2324, 734, 62, 77)).
method(m_test_copy_input_stream_to_output_stream__io84_150, range(ioutils_copy_test_case_1, 3130, 514, 82, 96)).
method(m_test_copy_input_stream_to_output_stream_null_in_151, range(ioutils_copy_test_case_1, 3650, 216, 98, 102)).
method(m_test_copy_input_stream_to_output_stream_null_out_154, range(ioutils_copy_test_case_1, 3872, 251, 104, 108)).
method(m_test_copy_input_stream_to_output_stream_with_buffer_size_155, range(ioutils_copy_test_case_1, 4129, 1037, 110, 127)).
method(m_test_copy_input_stream_to_output_stream_with_buffer_size_156, range(ioutils_copy_test_case_1, 5172, 772, 129, 143)).
method(m_test_copy_input_stream_to_writer_157, range(ioutils_copy_test_case_1, 6028, 866, 146, 163)).
method(m_test_copy_input_stream_to_writer__encoding_158, range(ioutils_copy_test_case_1, 6978, 849, 166, 184)).
method(m_test_copy_input_stream_to_writer__encoding_null_encoding_159, range(ioutils_copy_test_case_1, 7833, 842, 186, 203)).
method(m_test_copy_input_stream_to_writer__encoding_null_in_160, range(ioutils_copy_test_case_1, 8681, 419, 205, 211)).
method(m_test_copy_input_stream_to_writer__encoding_null_out_161, range(ioutils_copy_test_case_1, 9106, 247, 213, 217)).
method(m_test_copy_input_stream_to_writer_null_in_162, range(ioutils_copy_test_case_1, 9359, 495, 219, 226)).
method(m_test_copy_input_stream_to_writer_null_out_163, range(ioutils_copy_test_case_1, 9860, 360, 228, 233)).
method(m_test_copy_reader_to_appendable_164, range(ioutils_copy_test_case_1, 10226, 938, 235, 252)).
method(m_test_copy_reader_to_appendable__io84_165, range(ioutils_copy_test_case_1, 11170, 512, 254, 269)).
method(m_test_copy_reader_to_appendable_null_in_166, range(ioutils_copy_test_case_1, 11688, 414, 271, 277)).
method(m_test_copy_reader_to_appendable_null_out_167, range(ioutils_copy_test_case_1, 12108, 424, 279, 286)).
method(m_test_copy_reader_to_output_stream_168, range(ioutils_copy_test_case_1, 12616, 1037, 289, 309)).
method(m_test_copy_reader_to_output_stream__encoding_169, range(ioutils_copy_test_case_1, 13737, 835, 312, 329)).
method(m_test_copy_reader_to_output_stream__encoding_null_encoding_170, range(ioutils_copy_test_case_1, 14578, 826, 331, 347)).
method(m_test_copy_reader_to_output_stream__encoding_null_in_171, range(ioutils_copy_test_case_1, 15410, 347, 349, 354)).
method(m_test_copy_reader_to_output_stream__encoding_null_out_172, range(ioutils_copy_test_case_1, 15763, 431, 356, 363)).
method(m_test_copy_reader_to_output_stream_null_in_173, range(ioutils_copy_test_case_1, 16200, 417, 365, 371)).
method(m_test_copy_reader_to_output_stream_null_out_174, range(ioutils_copy_test_case_1, 16623, 489, 373, 380)).
method(m_test_copy_reader_to_writer_175, range(ioutils_copy_test_case_1, 17196, 920, 383, 400)).
method(m_test_copy_reader_to_writer__io84_176, range(ioutils_copy_test_case_1, 18188, 492, 405, 420)).
method(m_test_copy_reader_to_writer_null_in_177, range(ioutils_copy_test_case_1, 18686, 406, 422, 428)).
method(m_test_copy_reader_to_writer_null_out_178, range(ioutils_copy_test_case_1, 19098, 416, 430, 437)).
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
method(m_byte_array_output_stream_152, range(byte_array_output_stream_1, 1138, 268, 29, 35)).
method(m_byte_array_output_stream_206, range(byte_array_output_stream_1, 1412, 488, 37, 52)).
method(m_write_207, range(byte_array_output_stream_1, 1906, 444, 54, 68)).
method(m_write_208, range(byte_array_output_stream_1, 2356, 87, 70, 73)).
method(m_write_209, range(byte_array_output_stream_1, 2449, 122, 75, 78)).
method(m_size_210, range(byte_array_output_stream_1, 2577, 74, 80, 83)).
method(m_reset_211, range(byte_array_output_stream_1, 2657, 141, 85, 91)).
method(m_write_to_212, range(byte_array_output_stream_1, 2804, 123, 93, 96)).
method(m_to_buffered_input_stream_213, range(byte_array_output_stream_1, 2933, 993, 98, 123)).
method(m_to_buffered_input_stream_214, range(byte_array_output_stream_1, 3932, 1160, 125, 154)).
method(m_to_input_stream_215, range(byte_array_output_stream_1, 5098, 134, 156, 159)).
method(m_to_byte_array_216, range(byte_array_output_stream_1, 5238, 96, 161, 164)).

%%% Blocks
%string_builder_writer_1 - org.apache.commons.io.output.StringBuilderWriter
block(string_builder_writer_1_block1, block, string_builder_writer_1_code3, body, range(string_builder_writer_1, 1934, 59, 50, 52)).
block(string_builder_writer_1_block2, block, string_builder_writer_1_code9, body, range(string_builder_writer_1, 3498, 24, 107, 109)).
block(string_builder_writer_1_block3, block, string_builder_writer_1_code10, body, range(string_builder_writer_1, 3819, 81, 126, 130)).
block(string_builder_writer_1_block4, block, string_builder_writer_1_stmt2, then_statement, range(string_builder_writer_1, 3848, 46, 127, 129)).
block(string_builder_writer_1_block5, block, string_builder_writer_1_code11, body, range(string_builder_writer_1, 4676, 42, 161, 163)).
%ioutils_1 - org.apache.commons.io.IOUtils
block(ioutils_1_block1, block, ioutils_1_code20, body, range(ioutils_1, 6519, 259, 172, 179)).
block(ioutils_1_block2, block, ioutils_1_stmt1, body, range(ioutils_1, 6689, 83, 175, 178)).
block(ioutils_1_block3, block, ioutils_1_code29, body, range(ioutils_1, 31493, 162, 857, 863)).
block(ioutils_1_block4, block, ioutils_1_code33, body, range(ioutils_1, 32476, 70, 881, 883)).
block(ioutils_1_block5, block, ioutils_1_code37, body, range(ioutils_1, 43493, 64, 1136, 1138)).
block(ioutils_1_block6, block, ioutils_1_code38, body, range(ioutils_1, 44328, 192, 1157, 1165)).
block(ioutils_1_block7, block, ioutils_1_stmt8, body, range(ioutils_1, 44417, 75, 1160, 1163)).
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
block(abstract_byte_array_output_stream_1_block1, block, abstract_byte_array_output_stream_1_code32, body, range(abstract_byte_array_output_stream_1, 3435, 816, 85, 109)).
block(abstract_byte_array_output_stream_1_block2, block, abstract_byte_array_output_stream_1_stmt1, then_statement, range(abstract_byte_array_output_stream_1, 3490, 195, 86, 92)).
block(abstract_byte_array_output_stream_1_block3, block, abstract_byte_array_output_stream_1_stmt1, else_statement, range(abstract_byte_array_output_stream_1, 3691, 554, 92, 108)).
block(abstract_byte_array_output_stream_1_block4, block, abstract_byte_array_output_stream_1_stmt2, then_statement, range(abstract_byte_array_output_stream_1, 3797, 94, 95, 98)).
block(abstract_byte_array_output_stream_1_block5, block, abstract_byte_array_output_stream_1_stmt2, else_statement, range(abstract_byte_array_output_stream_1, 3897, 210, 98, 103)).
block(abstract_byte_array_output_stream_1_block6, block, abstract_byte_array_output_stream_1_code36, body, range(abstract_byte_array_output_stream_1, 5572, 250, 153, 161)).
block(abstract_byte_array_output_stream_1_block7, block, abstract_byte_array_output_stream_1_stmt11, then_statement, range(abstract_byte_array_output_stream_1, 5674, 78, 155, 158)).
block(abstract_byte_array_output_stream_1_block8, block, abstract_byte_array_output_stream_1_code40, body, range(abstract_byte_array_output_stream_1, 12734, 497, 361, 378)).
block(abstract_byte_array_output_stream_1_block9, block, abstract_byte_array_output_stream_1_stmt17, then_statement, range(abstract_byte_array_output_stream_1, 12795, 48, 363, 365)).
block(abstract_byte_array_output_stream_1_block10, block, abstract_byte_array_output_stream_1_stmt20, body, range(abstract_byte_array_output_stream_1, 12957, 245, 368, 376)).
block(abstract_byte_array_output_stream_1_block11, block, abstract_byte_array_output_stream_1_stmt25, then_statement, range(abstract_byte_array_output_stream_1, 13154, 38, 373, 375)).
%test_utils_1 - org.apache.commons.io.test.TestUtils
block(test_utils_1_block1, block, test_utils_1_code3, body, range(test_utils_1, 2148, 322, 61, 69)).
block(test_utils_1_block2, block, test_utils_1_stmt1, body, range(test_utils_1, 2162, 171, 62, 66)).
block(test_utils_1_block3, block, test_utils_1_code8, body, range(test_utils_1, 2584, 221, 72, 79)).
block(test_utils_1_block4, block, test_utils_1_stmt5, body, range(test_utils_1, 2625, 174, 73, 78)).
%ioutils_copy_test_case_1 - org.apache.commons.io.IOUtilsCopyTestCase
block(ioutils_copy_test_case_1_block1, block, ioutils_copy_test_case_1_code11, body, range(ioutils_copy_test_case_1, 3733, 133, 99, 102)).
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
block(byte_array_output_stream_1_block1, block, byte_array_output_stream_1_code3, body, range(byte_array_output_stream_1, 1371, 35, 33, 35)).
block(byte_array_output_stream_1_block2, block, byte_array_output_stream_1_code4, body, range(byte_array_output_stream_1, 1687, 213, 44, 52)).
block(byte_array_output_stream_1_block3, block, byte_array_output_stream_1_stmt2, then_statement, range(byte_array_output_stream_1, 1711, 110, 45, 48)).
block(byte_array_output_stream_1_block4, block, byte_array_output_stream_1_stmt3, body, range(byte_array_output_stream_1, 1850, 44, 49, 51)).
block(byte_array_output_stream_1_block5, block, byte_array_output_stream_1_code9, body, range(byte_array_output_stream_1, 2414, 29, 71, 73)).
block(byte_array_output_stream_1_block6, block, byte_array_output_stream_1_code10, body, range(byte_array_output_stream_1, 5293, 41, 162, 164)).

%%% Statements
%string_builder_writer_1 - org.apache.commons.io.output.StringBuilderWriter
stmt(string_builder_writer_1_stmt1, expression_statement, string_builder_writer_1_block1, (statements, 0), range(string_builder_writer_1, 1944, 43, 51, 51)).
stmt(string_builder_writer_1_stmt2, if_statement, string_builder_writer_1_block3, (statements, 0), range(string_builder_writer_1, 3829, 65, 127, 129)).
stmt(string_builder_writer_1_stmt3, expression_statement, string_builder_writer_1_block4, (statements, 0), range(string_builder_writer_1, 3862, 22, 128, 128)).
stmt(string_builder_writer_1_stmt4, return_statement, string_builder_writer_1_block5, (statements, 0), range(string_builder_writer_1, 4686, 26, 162, 162)).
%ioutils_1 - org.apache.commons.io.IOUtils
stmt(ioutils_1_stmt1, try_statement, ioutils_1_block1, (statements, 0), range(ioutils_1, 6562, 210, 174, 178)).
stmt(ioutils_1_stmt2, expression_statement, ioutils_1_block2, (statements, 0), range(ioutils_1, 6703, 14, 176, 176)).
stmt(ioutils_1_stmt3, expression_statement, ioutils_1_block2, (statements, 1), range(ioutils_1, 6730, 32, 177, 177)).
stmt(ioutils_1_stmt4, variable_declaration_statement, ioutils_1_block3, (statements, 0), range(ioutils_1, 31503, 44, 858, 858)).
stmt(ioutils_1_stmt5, return_statement, ioutils_1_block4, (statements, 0), range(ioutils_1, 32486, 54, 882, 882)).
stmt(ioutils_1_stmt6, return_statement, ioutils_1_block5, (statements, 0), range(ioutils_1, 43503, 48, 1137, 1137)).
stmt(ioutils_1_stmt7, variable_declaration_statement, ioutils_1_block6, (statements, 0), range(ioutils_1, 44338, 15, 1158, 1158)).
stmt(ioutils_1_stmt8, while_statement, ioutils_1_block6, (statements, 2), range(ioutils_1, 44377, 115, 1160, 1163)).
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
stmt(abstract_byte_array_output_stream_1_stmt1, if_statement, abstract_byte_array_output_stream_1_block1, (statements, 0), range(abstract_byte_array_output_stream_1, 3445, 800, 86, 108)).
stmt(abstract_byte_array_output_stream_1_stmt2, if_statement, abstract_byte_array_output_stream_1_block3, (statements, 1), range(abstract_byte_array_output_stream_1, 3770, 337, 95, 103)).
stmt(abstract_byte_array_output_stream_1_stmt3, expression_statement, abstract_byte_array_output_stream_1_block4, (statements, 0), range(abstract_byte_array_output_stream_1, 3815, 25, 96, 96)).
stmt(abstract_byte_array_output_stream_1_stmt4, expression_statement, abstract_byte_array_output_stream_1_block4, (statements, 1), range(abstract_byte_array_output_stream_1, 3857, 20, 97, 97)).
stmt(abstract_byte_array_output_stream_1_stmt5, expression_statement, abstract_byte_array_output_stream_1_block5, (statements, 0), range(abstract_byte_array_output_stream_1, 3915, 121, 99, 101)).
stmt(abstract_byte_array_output_stream_1_stmt6, expression_statement, abstract_byte_array_output_stream_1_block5, (statements, 1), range(abstract_byte_array_output_stream_1, 4053, 40, 102, 102)).
stmt(abstract_byte_array_output_stream_1_stmt7, expression_statement, abstract_byte_array_output_stream_1_block3, (statements, 2), range(abstract_byte_array_output_stream_1, 4121, 21, 105, 105)).
stmt(abstract_byte_array_output_stream_1_stmt8, expression_statement, abstract_byte_array_output_stream_1_block3, (statements, 3), range(abstract_byte_array_output_stream_1, 4155, 40, 106, 106)).
stmt(abstract_byte_array_output_stream_1_stmt9, expression_statement, abstract_byte_array_output_stream_1_block3, (statements, 4), range(abstract_byte_array_output_stream_1, 4208, 27, 107, 107)).
stmt(abstract_byte_array_output_stream_1_stmt10, variable_declaration_statement, abstract_byte_array_output_stream_1_block6, (statements, 0), range(abstract_byte_array_output_stream_1, 5582, 42, 154, 154)).
stmt(abstract_byte_array_output_stream_1_stmt11, if_statement, abstract_byte_array_output_stream_1_block6, (statements, 1), range(abstract_byte_array_output_stream_1, 5633, 119, 155, 158)).
stmt(abstract_byte_array_output_stream_1_stmt12, expression_statement, abstract_byte_array_output_stream_1_block7, (statements, 0), range(abstract_byte_array_output_stream_1, 5688, 25, 156, 156)).
stmt(abstract_byte_array_output_stream_1_stmt13, expression_statement, abstract_byte_array_output_stream_1_block7, (statements, 1), range(abstract_byte_array_output_stream_1, 5726, 16, 157, 157)).
stmt(abstract_byte_array_output_stream_1_stmt14, expression_statement, abstract_byte_array_output_stream_1_block6, (statements, 2), range(abstract_byte_array_output_stream_1, 5761, 38, 159, 159)).
stmt(abstract_byte_array_output_stream_1_stmt15, expression_statement, abstract_byte_array_output_stream_1_block6, (statements, 3), range(abstract_byte_array_output_stream_1, 5808, 8, 160, 160)).
stmt(abstract_byte_array_output_stream_1_stmt16, variable_declaration_statement, abstract_byte_array_output_stream_1_block8, (statements, 0), range(abstract_byte_array_output_stream_1, 12744, 22, 362, 362)).
stmt(abstract_byte_array_output_stream_1_stmt17, if_statement, abstract_byte_array_output_stream_1_block8, (statements, 1), range(abstract_byte_array_output_stream_1, 12775, 68, 363, 365)).
stmt(abstract_byte_array_output_stream_1_stmt18, variable_declaration_statement, abstract_byte_array_output_stream_1_block8, (statements, 2), range(abstract_byte_array_output_stream_1, 12852, 42, 366, 366)).
stmt(abstract_byte_array_output_stream_1_stmt19, variable_declaration_statement, abstract_byte_array_output_stream_1_block8, (statements, 3), range(abstract_byte_array_output_stream_1, 12903, 12, 367, 367)).
stmt(abstract_byte_array_output_stream_1_stmt20, enhanced_for_statement, abstract_byte_array_output_stream_1_block8, (statements, 4), range(abstract_byte_array_output_stream_1, 12924, 278, 368, 376)).
stmt(abstract_byte_array_output_stream_1_stmt21, variable_declaration_statement, abstract_byte_array_output_stream_1_block10, (statements, 0), range(abstract_byte_array_output_stream_1, 12971, 46, 369, 369)).
stmt(abstract_byte_array_output_stream_1_stmt22, expression_statement, abstract_byte_array_output_stream_1_block10, (statements, 1), range(abstract_byte_array_output_stream_1, 13030, 41, 370, 370)).
stmt(abstract_byte_array_output_stream_1_stmt23, expression_statement, abstract_byte_array_output_stream_1_block10, (statements, 2), range(abstract_byte_array_output_stream_1, 13084, 9, 371, 371)).
stmt(abstract_byte_array_output_stream_1_stmt24, expression_statement, abstract_byte_array_output_stream_1_block10, (statements, 3), range(abstract_byte_array_output_stream_1, 13106, 15, 372, 372)).
stmt(abstract_byte_array_output_stream_1_stmt25, if_statement, abstract_byte_array_output_stream_1_block10, (statements, 4), range(abstract_byte_array_output_stream_1, 13134, 58, 373, 375)).
stmt(abstract_byte_array_output_stream_1_stmt26, break_statement, abstract_byte_array_output_stream_1_block11, (statements, 0), range(abstract_byte_array_output_stream_1, 13172, 6, 374, 374)).
stmt(abstract_byte_array_output_stream_1_stmt27, return_statement, abstract_byte_array_output_stream_1_block8, (statements, 5), range(abstract_byte_array_output_stream_1, 13211, 14, 377, 377)).
%test_utils_1 - org.apache.commons.io.test.TestUtils
stmt(test_utils_1_stmt1, try_statement, test_utils_1_block1, (statements, 0), range(test_utils_1, 2158, 306, 62, 68)).
stmt(test_utils_1_stmt2, variable_declaration_statement, test_utils_1_block2, (statements, 0), range(test_utils_1, 2176, 64, 63, 63)).
stmt(test_utils_1_stmt3, expression_statement, test_utils_1_block2, (statements, 1), range(test_utils_1, 2253, 30, 64, 64)).
stmt(test_utils_1_stmt4, return_statement, test_utils_1_block2, (statements, 2), range(test_utils_1, 2296, 27, 65, 65)).
stmt(test_utils_1_stmt5, for_statement, test_utils_1_block3, (statements, 0), range(test_utils_1, 2594, 205, 73, 78)).
stmt(test_utils_1_stmt6, expression_statement, test_utils_1_block4, (statements, 0), range(test_utils_1, 2755, 34, 77, 77)).
%ioutils_copy_test_case_1 - org.apache.commons.io.IOUtilsCopyTestCase
stmt(ioutils_copy_test_case_1_stmt1, variable_declaration_statement, ioutils_copy_test_case_1_block1, (statements, 0), range(ioutils_copy_test_case_1, 3743, 53, 100, 100)).
stmt(ioutils_copy_test_case_1_stmt2, expression_statement, ioutils_copy_test_case_1_block1, (statements, 1), range(ioutils_copy_test_case_1, 3805, 55, 101, 101)).
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
stmt(byte_array_output_stream_1_stmt1, constructor_invocation, byte_array_output_stream_1_block1, (statements, 0), range(byte_array_output_stream_1, 1381, 19, 34, 34)).
stmt(byte_array_output_stream_1_stmt2, if_statement, byte_array_output_stream_1_block2, (statements, 0), range(byte_array_output_stream_1, 1697, 124, 45, 48)).
stmt(byte_array_output_stream_1_stmt3, synchronized_statement, byte_array_output_stream_1_block2, (statements, 1), range(byte_array_output_stream_1, 1830, 64, 49, 51)).
stmt(byte_array_output_stream_1_stmt4, expression_statement, byte_array_output_stream_1_block4, (statements, 0), range(byte_array_output_stream_1, 1864, 20, 50, 50)).
stmt(byte_array_output_stream_1_stmt5, expression_statement, byte_array_output_stream_1_block5, (statements, 0), range(byte_array_output_stream_1, 2424, 13, 72, 72)).
stmt(byte_array_output_stream_1_stmt6, return_statement, byte_array_output_stream_1_block6, (statements, 0), range(byte_array_output_stream_1, 5303, 25, 163, 163)).

%%% Expressions
%string_builder_writer_1 - org.apache.commons.io.output.StringBuilderWriter
expr(string_builder_writer_1_expr4, this_expression, f_builder_340, expression, range(string_builder_writer_1, 1944, 4, 51, 51), "this").
expr(string_builder_writer_1_expr1, assignment, string_builder_writer_1_stmt1, expression, range(string_builder_writer_1, 1944, 42, 51, 51), "this.builder=new StringBuilder(capacity)").
expr(string_builder_writer_1_expr2, field_access, string_builder_writer_1_expr1, left_hand_side, range(string_builder_writer_1, 1944, 12, 51, 51), "this.builder").
expr(string_builder_writer_1_expr3, class_instance_creation, string_builder_writer_1_expr1, right_hand_side, range(string_builder_writer_1, 1959, 27, 51, 51), "new StringBuilder(capacity)").
expr(string_builder_writer_1_expr5, infix_expression, string_builder_writer_1_stmt2, expression, range(string_builder_writer_1, 3833, 13, 127, 127), "value != null").
expr(string_builder_writer_1_expr6, method_invocation, string_builder_writer_1_stmt3, expression, range(string_builder_writer_1, 3862, 21, 128, 128), "builder.append(value)").
expr(string_builder_writer_1_expr7, method_invocation, string_builder_writer_1_stmt4, expression, range(string_builder_writer_1, 4693, 18, 162, 162), "builder.toString()").
%ioutils_1 - org.apache.commons.io.IOUtils
expr(ioutils_1_expr1, array_creation, ioutils_1_code10, initializer, range(ioutils_1, 4665, 11, 109, 109), "new byte[0]").
expr(ioutils_1_expr2, variable_declaration_expression, ioutils_1_stmt1, (resources, 0), range(ioutils_1, 6567, 58, 174, 174), "final StringBuilderWriter buf=new StringBuilderWriter(4)").
expr(ioutils_1_expr3, class_instance_creation, ioutils_1_code23, initializer, range(ioutils_1, 6599, 26, 174, 174), "new StringBuilderWriter(4)").
expr(ioutils_1_expr4, variable_declaration_expression, ioutils_1_stmt1, (resources, 1), range(ioutils_1, 6643, 44, 175, 175), "final PrintWriter out=new PrintWriter(buf)").
expr(ioutils_1_expr5, class_instance_creation, ioutils_1_code27, initializer, range(ioutils_1, 6667, 20, 175, 175), "new PrintWriter(buf)").
expr(ioutils_1_expr6, method_invocation, ioutils_1_stmt2, expression, range(ioutils_1, 6703, 13, 176, 176), "out.println()").
expr(ioutils_1_expr7, assignment, ioutils_1_stmt3, expression, range(ioutils_1, 6730, 31, 177, 177), "LINE_SEPARATOR=buf.toString()").
expr(ioutils_1_expr8, method_invocation, ioutils_1_expr7, right_hand_side, range(ioutils_1, 6747, 14, 177, 177), "buf.toString()").
expr(ioutils_1_expr9, method_invocation, ioutils_1_code32, initializer, range(ioutils_1, 31522, 24, 858, 858), "copyLarge(input,output)").
expr(ioutils_1_expr10, method_invocation, ioutils_1_stmt5, expression, range(ioutils_1, 32493, 46, 882, 882), "copyLarge(input,output,new byte[bufferSize])").
expr(ioutils_1_expr11, array_creation, ioutils_1_expr10, (arguments, 2), range(ioutils_1, 32518, 20, 882, 882), "new byte[bufferSize]").
expr(ioutils_1_expr12, method_invocation, ioutils_1_stmt6, expression, range(ioutils_1, 43510, 40, 1137, 1137), "copy(input,output,DEFAULT_BUFFER_SIZE)").
expr(ioutils_1_expr13, infix_expression, ioutils_1_stmt8, expression, range(ioutils_1, 44384, 31, 1160, 1160), "EOF != (n=input.read(buffer))").
expr(ioutils_1_expr14, parenthesized_expression, ioutils_1_expr13, right_operand, range(ioutils_1, 44391, 24, 1160, 1160), "(n=input.read(buffer))").
expr(ioutils_1_expr15, assignment, ioutils_1_expr14, expression, range(ioutils_1, 44392, 22, 1160, 1160), "n=input.read(buffer)").
expr(ioutils_1_expr16, method_invocation, ioutils_1_expr15, right_hand_side, range(ioutils_1, 44396, 18, 1160, 1160), "input.read(buffer)").
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
expr(abstract_byte_array_output_stream_1_expr1, array_creation, abstract_byte_array_output_stream_1_code13, initializer, range(abstract_byte_array_output_stream_1, 2630, 11, 64, 64), "new byte[0]").
expr(abstract_byte_array_output_stream_1_expr2, class_instance_creation, abstract_byte_array_output_stream_1_code25, initializer, range(abstract_byte_array_output_stream_1, 2748, 17, 67, 67), "new ArrayList<>()").
expr(abstract_byte_array_output_stream_1_expr3, infix_expression, abstract_byte_array_output_stream_1_stmt1, expression, range(abstract_byte_array_output_stream_1, 3449, 39, 86, 86), "currentBufferIndex < buffers.size() - 1").
expr(abstract_byte_array_output_stream_1_expr4, infix_expression, abstract_byte_array_output_stream_1_expr3, right_operand, range(abstract_byte_array_output_stream_1, 3470, 18, 86, 86), "buffers.size() - 1").
expr(abstract_byte_array_output_stream_1_expr5, method_invocation, abstract_byte_array_output_stream_1_expr4, left_operand, range(abstract_byte_array_output_stream_1, 3470, 14, 86, 86), "buffers.size()").
expr(abstract_byte_array_output_stream_1_expr6, infix_expression, abstract_byte_array_output_stream_1_stmt2, expression, range(abstract_byte_array_output_stream_1, 3774, 21, 95, 95), "currentBuffer == null").
expr(abstract_byte_array_output_stream_1_expr7, assignment, abstract_byte_array_output_stream_1_stmt3, expression, range(abstract_byte_array_output_stream_1, 3815, 24, 96, 96), "newBufferSize=newcount").
expr(abstract_byte_array_output_stream_1_expr8, assignment, abstract_byte_array_output_stream_1_stmt4, expression, range(abstract_byte_array_output_stream_1, 3857, 19, 97, 97), "filledBufferSum=0").
expr(abstract_byte_array_output_stream_1_expr9, assignment, abstract_byte_array_output_stream_1_stmt5, expression, range(abstract_byte_array_output_stream_1, 3915, 120, 99, 101), "newBufferSize=Math.max(currentBuffer.length << 1,newcount - filledBufferSum)").
expr(abstract_byte_array_output_stream_1_expr10, method_invocation, abstract_byte_array_output_stream_1_expr9, right_hand_side, range(abstract_byte_array_output_stream_1, 3931, 104, 99, 101), "Math.max(currentBuffer.length << 1,newcount - filledBufferSum)").
expr(abstract_byte_array_output_stream_1_expr11, infix_expression, abstract_byte_array_output_stream_1_expr10, (arguments, 0), range(abstract_byte_array_output_stream_1, 3961, 25, 100, 100), "currentBuffer.length << 1").
expr(abstract_byte_array_output_stream_1_expr12, infix_expression, abstract_byte_array_output_stream_1_expr10, (arguments, 1), range(abstract_byte_array_output_stream_1, 4008, 26, 101, 101), "newcount - filledBufferSum").
expr(abstract_byte_array_output_stream_1_expr13, assignment, abstract_byte_array_output_stream_1_stmt6, expression, range(abstract_byte_array_output_stream_1, 4053, 39, 102, 102), "filledBufferSum+=currentBuffer.length").
expr(abstract_byte_array_output_stream_1_expr14, postfix_expression, abstract_byte_array_output_stream_1_stmt7, expression, range(abstract_byte_array_output_stream_1, 4121, 20, 105, 105), "currentBufferIndex++").
expr(abstract_byte_array_output_stream_1_expr15, assignment, abstract_byte_array_output_stream_1_stmt8, expression, range(abstract_byte_array_output_stream_1, 4155, 39, 106, 106), "currentBuffer=new byte[newBufferSize]").
expr(abstract_byte_array_output_stream_1_expr16, array_creation, abstract_byte_array_output_stream_1_expr15, right_hand_side, range(abstract_byte_array_output_stream_1, 4171, 23, 106, 106), "new byte[newBufferSize]").
expr(abstract_byte_array_output_stream_1_expr17, method_invocation, abstract_byte_array_output_stream_1_stmt9, expression, range(abstract_byte_array_output_stream_1, 4208, 26, 107, 107), "buffers.add(currentBuffer)").
expr(abstract_byte_array_output_stream_1_expr18, infix_expression, abstract_byte_array_output_stream_1_code38, initializer, range(abstract_byte_array_output_stream_1, 5600, 23, 154, 154), "count - filledBufferSum").
expr(abstract_byte_array_output_stream_1_expr19, infix_expression, abstract_byte_array_output_stream_1_stmt11, expression, range(abstract_byte_array_output_stream_1, 5637, 35, 155, 155), "inBufferPos == currentBuffer.length").
expr(abstract_byte_array_output_stream_1_expr20, method_invocation, abstract_byte_array_output_stream_1_stmt12, expression, range(abstract_byte_array_output_stream_1, 5688, 24, 156, 156), "needNewBuffer(count + 1)").
expr(abstract_byte_array_output_stream_1_expr21, infix_expression, abstract_byte_array_output_stream_1_expr20, (arguments, 0), range(abstract_byte_array_output_stream_1, 5702, 9, 156, 156), "count + 1").
expr(abstract_byte_array_output_stream_1_expr22, assignment, abstract_byte_array_output_stream_1_stmt13, expression, range(abstract_byte_array_output_stream_1, 5726, 15, 157, 157), "inBufferPos=0").
expr(abstract_byte_array_output_stream_1_expr23, assignment, abstract_byte_array_output_stream_1_stmt14, expression, range(abstract_byte_array_output_stream_1, 5761, 37, 159, 159), "currentBuffer[inBufferPos]=(byte)b").
expr(abstract_byte_array_output_stream_1_expr24, array_access, abstract_byte_array_output_stream_1_expr23, left_hand_side, range(abstract_byte_array_output_stream_1, 5761, 26, 159, 159), "currentBuffer[inBufferPos]").
expr(abstract_byte_array_output_stream_1_expr25, cast_expression, abstract_byte_array_output_stream_1_expr23, right_hand_side, range(abstract_byte_array_output_stream_1, 5790, 8, 159, 159), "(byte)b").
expr(abstract_byte_array_output_stream_1_expr26, postfix_expression, abstract_byte_array_output_stream_1_stmt15, expression, range(abstract_byte_array_output_stream_1, 5808, 7, 160, 160), "count++").
expr(abstract_byte_array_output_stream_1_expr27, infix_expression, abstract_byte_array_output_stream_1_stmt17, expression, range(abstract_byte_array_output_stream_1, 12779, 14, 363, 363), "remaining == 0").
expr(abstract_byte_array_output_stream_1_expr28, array_creation, abstract_byte_array_output_stream_1_code47, initializer, range(abstract_byte_array_output_stream_1, 12874, 19, 366, 366), "new byte[remaining]").
expr(abstract_byte_array_output_stream_1_expr29, method_invocation, abstract_byte_array_output_stream_1_code60, initializer, range(abstract_byte_array_output_stream_1, 12985, 31, 369, 369), "Math.min(buf.length,remaining)").
expr(abstract_byte_array_output_stream_1_expr30, method_invocation, abstract_byte_array_output_stream_1_stmt22, expression, range(abstract_byte_array_output_stream_1, 13030, 40, 370, 370), "System.arraycopy(buf,0,newbuf,pos,c)").
expr(abstract_byte_array_output_stream_1_expr31, assignment, abstract_byte_array_output_stream_1_stmt23, expression, range(abstract_byte_array_output_stream_1, 13084, 8, 371, 371), "pos+=c").
expr(abstract_byte_array_output_stream_1_expr32, assignment, abstract_byte_array_output_stream_1_stmt24, expression, range(abstract_byte_array_output_stream_1, 13106, 14, 372, 372), "remaining-=c").
expr(abstract_byte_array_output_stream_1_expr33, infix_expression, abstract_byte_array_output_stream_1_stmt25, expression, range(abstract_byte_array_output_stream_1, 13138, 14, 373, 373), "remaining == 0").
%test_utils_1 - org.apache.commons.io.test.TestUtils
expr(test_utils_1_expr1, class_instance_creation, test_utils_1_code6, initializer, range(test_utils_1, 2212, 27, 63, 63), "new ByteArrayOutputStream()").
expr(test_utils_1_expr2, method_invocation, test_utils_1_stmt3, expression, range(test_utils_1, 2253, 29, 64, 64), "generateTestData(baout,size)").
expr(test_utils_1_expr3, method_invocation, test_utils_1_stmt4, expression, range(test_utils_1, 2303, 19, 65, 65), "baout.toByteArray()").
expr(test_utils_1_expr4, variable_declaration_expression, test_utils_1_stmt5, (initializers, 0), range(test_utils_1, 2599, 9, 73, 73), "int i=0").
expr(test_utils_1_expr5, infix_expression, test_utils_1_stmt5, expression, range(test_utils_1, 2610, 8, 73, 73), "i < size").
expr(test_utils_1_expr6, postfix_expression, test_utils_1_stmt5, (updaters, 0), range(test_utils_1, 2620, 3, 73, 73), "i++").
expr(test_utils_1_expr7, method_invocation, test_utils_1_stmt6, expression, range(test_utils_1, 2755, 33, 77, 77), "out.write((byte)((i % 127) + 1))").
expr(test_utils_1_expr8, cast_expression, test_utils_1_expr7, (arguments, 0), range(test_utils_1, 2765, 22, 77, 77), "(byte)((i % 127) + 1)").
expr(test_utils_1_expr9, parenthesized_expression, test_utils_1_expr8, expression, range(test_utils_1, 2772, 15, 77, 77), "((i % 127) + 1)").
expr(test_utils_1_expr10, infix_expression, test_utils_1_expr9, expression, range(test_utils_1, 2773, 13, 77, 77), "(i % 127) + 1").
expr(test_utils_1_expr11, parenthesized_expression, test_utils_1_expr10, left_operand, range(test_utils_1, 2773, 9, 77, 77), "(i % 127)").
expr(test_utils_1_expr12, infix_expression, test_utils_1_expr11, expression, range(test_utils_1, 2774, 7, 77, 77), "i % 127").
%ioutils_copy_test_case_1 - org.apache.commons.io.IOUtilsCopyTestCase
expr(ioutils_copy_test_case_1_expr1, method_invocation, ioutils_copy_test_case_1_code10, initializer, range(ioutils_copy_test_case_1, 2202, 37, 59, 59), "TestUtils.generateTestData(FILE_SIZE)").
expr(ioutils_copy_test_case_1_expr2, class_instance_creation, ioutils_copy_test_case_1_code14, initializer, range(ioutils_copy_test_case_1, 3768, 27, 100, 100), "new ByteArrayOutputStream()").
expr(ioutils_copy_test_case_1_expr3, method_invocation, ioutils_copy_test_case_1_stmt2, expression, range(ioutils_copy_test_case_1, 3805, 54, 101, 101), "assertEquals(0,IOUtils.copy((InputStream)null,out))").
expr(ioutils_copy_test_case_1_expr4, method_invocation, ioutils_copy_test_case_1_expr3, (arguments, 1), range(ioutils_copy_test_case_1, 3821, 37, 101, 101), "IOUtils.copy((InputStream)null,out)").
expr(ioutils_copy_test_case_1_expr5, cast_expression, ioutils_copy_test_case_1_expr4, (arguments, 0), range(ioutils_copy_test_case_1, 3834, 18, 101, 101), "(InputStream)null").
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
expr(byte_array_output_stream_1_expr1, constructor_invocation, byte_array_output_stream_1_block1, (statements, 0), range(byte_array_output_stream_1, 1381, 19, 34, 34), "this(DEFAULT_SIZE);").
expr(byte_array_output_stream_1_expr2, infix_expression, byte_array_output_stream_1_stmt2, expression, range(byte_array_output_stream_1, 1701, 8, 45, 45), "size < 0").
expr(byte_array_output_stream_1_expr3, this_expression, byte_array_output_stream_1_stmt3, expression, range(byte_array_output_stream_1, 1844, 4, 49, 49), "this").
expr(byte_array_output_stream_1_expr4, method_invocation, byte_array_output_stream_1_stmt4, expression, range(byte_array_output_stream_1, 1864, 19, 50, 50), "needNewBuffer(size)").
expr(byte_array_output_stream_1_expr5, method_invocation, byte_array_output_stream_1_stmt5, expression, range(byte_array_output_stream_1, 2424, 12, 72, 72), "writeImpl(b)").
expr(byte_array_output_stream_1_expr6, method_invocation, byte_array_output_stream_1_stmt6, expression, range(byte_array_output_stream_1, 5310, 17, 163, 163), "toByteArrayImpl()").

%%% Names
%string_builder_writer_1 - org.apache.commons.io.output.StringBuilderWriter
name(m_string_builder_writer_1, simple_name, string_builder_writer_1_code3, name, range(string_builder_writer_1, 1894, 19, 50, 50), 'StringBuilderWriter').
name(p_capacity_339, simple_name, string_builder_writer_1_code5, name, range(string_builder_writer_1, 1924, 8, 50, 50), 'capacity').
name(f_builder_340, simple_name, string_builder_writer_1_expr2, name, range(string_builder_writer_1, 1949, 7, 51, 51), 'builder').
name(p_capacity_339, simple_name, string_builder_writer_1_expr3, (arguments, 0), range(string_builder_writer_1, 1977, 8, 51, 51), 'capacity').
name(p_value_347, simple_name, string_builder_writer_1_expr5, left_operand, range(string_builder_writer_1, 3833, 5, 127, 127), 'value').
name(f_builder_340, simple_name, string_builder_writer_1_expr6, expression, range(string_builder_writer_1, 3862, 7, 128, 128), 'builder').
name(m_append_226, simple_name, string_builder_writer_1_expr6, name, range(string_builder_writer_1, 3870, 6, 128, 128), 'append').
name(p_value_347, simple_name, string_builder_writer_1_expr6, (arguments, 0), range(string_builder_writer_1, 3877, 5, 128, 128), 'value').
name(f_builder_340, simple_name, string_builder_writer_1_expr7, expression, range(string_builder_writer_1, 4693, 7, 162, 162), 'builder').
name(m_to_string_229, simple_name, string_builder_writer_1_expr7, name, range(string_builder_writer_1, 4701, 8, 162, 162), 'toString').
%ioutils_1 - org.apache.commons.io.IOUtils
name(f_empty_byte_array_1, simple_name, ioutils_1_code10, name, range(ioutils_1, 4646, 16, 109, 109), 'EMPTY_BYTE_ARRAY').
name(f_dir_separator_2, simple_name, ioutils_1_code19, name, range(ioutils_1, 4912, 13, 119, 119), 'DIR_SEPARATOR').
name(t_file_1, simple_name, q_separator_char_1, qualifier, range(ioutils_1, 4928, 4, 119, 119), 'File').
name(q_separator_char_1, qualified_name, ioutils_1_code19, initializer, range(ioutils_1, 4928, 18, 119, 119), 'File.separatorChar').
name(v_buf_3, simple_name, ioutils_1_code23, name, range(ioutils_1, 6593, 3, 174, 174), 'buf').
name(v_out_4, simple_name, ioutils_1_code27, name, range(ioutils_1, 6661, 3, 175, 175), 'out').
name(v_buf_3, simple_name, ioutils_1_expr5, (arguments, 0), range(ioutils_1, 6683, 3, 175, 175), 'buf').
name(v_out_4, simple_name, ioutils_1_expr6, expression, range(ioutils_1, 6703, 3, 176, 176), 'out').
name(m_println_3, simple_name, ioutils_1_expr6, name, range(ioutils_1, 6707, 7, 176, 176), 'println').
name(f_line_separator_5, simple_name, ioutils_1_expr7, left_hand_side, range(ioutils_1, 6730, 14, 177, 177), 'LINE_SEPARATOR').
name(v_buf_3, simple_name, ioutils_1_expr8, expression, range(ioutils_1, 6747, 3, 177, 177), 'buf').
name(m_to_string_4, simple_name, ioutils_1_expr8, name, range(ioutils_1, 6751, 8, 177, 177), 'toString').
name(v_count_43, simple_name, ioutils_1_code32, name, range(ioutils_1, 31514, 5, 858, 858), 'count').
name(m_copy_large_32, simple_name, ioutils_1_expr9, name, range(ioutils_1, 31522, 9, 858, 858), 'copyLarge').
name(p_input_41, simple_name, ioutils_1_expr9, (arguments, 0), range(ioutils_1, 31532, 5, 858, 858), 'input').
name(p_output_42, simple_name, ioutils_1_expr9, (arguments, 1), range(ioutils_1, 31539, 6, 858, 858), 'output').
name(m_copy_large_34, simple_name, ioutils_1_expr10, name, range(ioutils_1, 32493, 9, 882, 882), 'copyLarge').
name(p_input_44, simple_name, ioutils_1_expr10, (arguments, 0), range(ioutils_1, 32503, 5, 882, 882), 'input').
name(p_output_45, simple_name, ioutils_1_expr10, (arguments, 1), range(ioutils_1, 32510, 6, 882, 882), 'output').
name(p_buffer_size_46, simple_name, ioutils_1_expr11, (dimensions, 0), range(ioutils_1, 32527, 10, 882, 882), 'bufferSize').
name(m_copy_33, simple_name, ioutils_1_expr12, name, range(ioutils_1, 43510, 4, 1137, 1137), 'copy').
name(p_input_70, simple_name, ioutils_1_expr12, (arguments, 0), range(ioutils_1, 43515, 5, 1137, 1137), 'input').
name(p_output_71, simple_name, ioutils_1_expr12, (arguments, 1), range(ioutils_1, 43522, 6, 1137, 1137), 'output').
name(f_default_buffer_size_72, simple_name, ioutils_1_expr12, (arguments, 2), range(ioutils_1, 43530, 19, 1137, 1137), 'DEFAULT_BUFFER_SIZE').
name(v_count_76, simple_name, ioutils_1_code40, name, range(ioutils_1, 44343, 5, 1158, 1158), 'count').
name(f_eof_77, simple_name, ioutils_1_expr13, left_operand, range(ioutils_1, 44384, 3, 1160, 1160), 'EOF').
name(v_n_78, simple_name, ioutils_1_expr15, left_hand_side, range(ioutils_1, 44392, 1, 1160, 1160), 'n').
name(p_input_73, simple_name, ioutils_1_expr16, expression, range(ioutils_1, 44396, 5, 1160, 1160), 'input').
name(m_read_44, simple_name, ioutils_1_expr16, name, range(ioutils_1, 44402, 4, 1160, 1160), 'read').
name(p_buffer_75, simple_name, ioutils_1_expr16, (arguments, 0), range(ioutils_1, 44407, 6, 1160, 1160), 'buffer').
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
name(t_abstract_byte_array_output_stream_5, simple_name, abstract_byte_array_output_stream_1_code2, name, range(abstract_byte_array_output_stream_1, 2441, 29, 59, 59), 'AbstractByteArrayOutputStream').
name(f_empty_byte_array_295, simple_name, abstract_byte_array_output_stream_1_code13, name, range(abstract_byte_array_output_stream_1, 2611, 16, 64, 64), 'EMPTY_BYTE_ARRAY').
name(f_buffers_296, simple_name, abstract_byte_array_output_stream_1_code25, name, range(abstract_byte_array_output_stream_1, 2738, 7, 67, 67), 'buffers').
name(f_reuse_buffers_297, simple_name, abstract_byte_array_output_stream_1_code31, name, range(abstract_byte_array_output_stream_1, 3167, 12, 77, 77), 'reuseBuffers').
name(f_current_buffer_index_299, simple_name, abstract_byte_array_output_stream_1_expr3, left_operand, range(abstract_byte_array_output_stream_1, 3449, 18, 86, 86), 'currentBufferIndex').
name(f_buffers_296, simple_name, abstract_byte_array_output_stream_1_expr5, expression, range(abstract_byte_array_output_stream_1, 3470, 7, 86, 86), 'buffers').
name(m_size_181, simple_name, abstract_byte_array_output_stream_1_expr5, name, range(abstract_byte_array_output_stream_1, 3478, 4, 86, 86), 'size').
name(f_current_buffer_300, simple_name, abstract_byte_array_output_stream_1_expr6, left_operand, range(abstract_byte_array_output_stream_1, 3774, 13, 95, 95), 'currentBuffer').
name(v_new_buffer_size_301, simple_name, abstract_byte_array_output_stream_1_expr7, left_hand_side, range(abstract_byte_array_output_stream_1, 3815, 13, 96, 96), 'newBufferSize').
name(p_newcount_298, simple_name, abstract_byte_array_output_stream_1_expr7, right_hand_side, range(abstract_byte_array_output_stream_1, 3831, 8, 96, 96), 'newcount').
name(f_filled_buffer_sum_302, simple_name, abstract_byte_array_output_stream_1_expr8, left_hand_side, range(abstract_byte_array_output_stream_1, 3857, 15, 97, 97), 'filledBufferSum').
name(v_new_buffer_size_301, simple_name, abstract_byte_array_output_stream_1_expr9, left_hand_side, range(abstract_byte_array_output_stream_1, 3915, 13, 99, 99), 'newBufferSize').
name(t_math_6, simple_name, abstract_byte_array_output_stream_1_expr10, expression, range(abstract_byte_array_output_stream_1, 3931, 4, 99, 99), 'Math').
name(m_max_182, simple_name, abstract_byte_array_output_stream_1_expr10, name, range(abstract_byte_array_output_stream_1, 3936, 3, 99, 99), 'max').
name(f_filled_buffer_sum_302, simple_name, abstract_byte_array_output_stream_1_expr13, left_hand_side, range(abstract_byte_array_output_stream_1, 4053, 15, 102, 102), 'filledBufferSum').
name(q_length_2, qualified_name, abstract_byte_array_output_stream_1_expr13, right_hand_side, range(abstract_byte_array_output_stream_1, 4072, 20, 102, 102), 'currentBuffer.length').
name(f_current_buffer_300, simple_name, q_length_2, qualifier, range(abstract_byte_array_output_stream_1, 4072, 13, 102, 102), 'currentBuffer').
name(f_current_buffer_index_299, simple_name, abstract_byte_array_output_stream_1_expr14, operand, range(abstract_byte_array_output_stream_1, 4121, 18, 105, 105), 'currentBufferIndex').
name(f_current_buffer_300, simple_name, abstract_byte_array_output_stream_1_expr15, left_hand_side, range(abstract_byte_array_output_stream_1, 4155, 13, 106, 106), 'currentBuffer').
name(v_new_buffer_size_301, simple_name, abstract_byte_array_output_stream_1_expr16, (dimensions, 0), range(abstract_byte_array_output_stream_1, 4180, 13, 106, 106), 'newBufferSize').
name(f_buffers_296, simple_name, abstract_byte_array_output_stream_1_expr17, expression, range(abstract_byte_array_output_stream_1, 4208, 7, 107, 107), 'buffers').
name(m_add_183, simple_name, abstract_byte_array_output_stream_1_expr17, name, range(abstract_byte_array_output_stream_1, 4216, 3, 107, 107), 'add').
name(f_current_buffer_300, simple_name, abstract_byte_array_output_stream_1_expr17, (arguments, 0), range(abstract_byte_array_output_stream_1, 4220, 13, 107, 107), 'currentBuffer').
name(v_in_buffer_pos_311, simple_name, abstract_byte_array_output_stream_1_code38, name, range(abstract_byte_array_output_stream_1, 5586, 11, 154, 154), 'inBufferPos').
name(f_count_312, simple_name, abstract_byte_array_output_stream_1_expr18, left_operand, range(abstract_byte_array_output_stream_1, 5600, 5, 154, 154), 'count').
name(f_filled_buffer_sum_302, simple_name, abstract_byte_array_output_stream_1_expr18, right_operand, range(abstract_byte_array_output_stream_1, 5608, 15, 154, 154), 'filledBufferSum').
name(v_in_buffer_pos_311, simple_name, abstract_byte_array_output_stream_1_expr19, left_operand, range(abstract_byte_array_output_stream_1, 5637, 11, 155, 155), 'inBufferPos').
name(f_current_buffer_300, simple_name, q_length_3, qualifier, range(abstract_byte_array_output_stream_1, 5652, 13, 155, 155), 'currentBuffer').
name(q_length_3, qualified_name, abstract_byte_array_output_stream_1_expr19, right_operand, range(abstract_byte_array_output_stream_1, 5652, 20, 155, 155), 'currentBuffer.length').
name(m_need_new_buffer_180, simple_name, abstract_byte_array_output_stream_1_expr20, name, range(abstract_byte_array_output_stream_1, 5688, 13, 156, 156), 'needNewBuffer').
name(f_count_312, simple_name, abstract_byte_array_output_stream_1_expr21, left_operand, range(abstract_byte_array_output_stream_1, 5702, 5, 156, 156), 'count').
name(v_in_buffer_pos_311, simple_name, abstract_byte_array_output_stream_1_expr22, left_hand_side, range(abstract_byte_array_output_stream_1, 5726, 11, 157, 157), 'inBufferPos').
name(f_current_buffer_300, simple_name, abstract_byte_array_output_stream_1_expr24, array, range(abstract_byte_array_output_stream_1, 5761, 13, 159, 159), 'currentBuffer').
name(v_in_buffer_pos_311, simple_name, abstract_byte_array_output_stream_1_expr24, index, range(abstract_byte_array_output_stream_1, 5775, 11, 159, 159), 'inBufferPos').
name(p_b_310, simple_name, abstract_byte_array_output_stream_1_expr25, expression, range(abstract_byte_array_output_stream_1, 5797, 1, 159, 159), 'b').
name(f_count_312, simple_name, abstract_byte_array_output_stream_1_expr26, operand, range(abstract_byte_array_output_stream_1, 5808, 5, 160, 160), 'count').
name(v_remaining_321, simple_name, abstract_byte_array_output_stream_1_code42, name, range(abstract_byte_array_output_stream_1, 12748, 9, 362, 362), 'remaining').
name(f_count_312, simple_name, abstract_byte_array_output_stream_1_code42, initializer, range(abstract_byte_array_output_stream_1, 12760, 5, 362, 362), 'count').
name(v_remaining_321, simple_name, abstract_byte_array_output_stream_1_expr27, left_operand, range(abstract_byte_array_output_stream_1, 12779, 9, 363, 363), 'remaining').
name(v_newbuf_322, simple_name, abstract_byte_array_output_stream_1_code47, name, range(abstract_byte_array_output_stream_1, 12865, 6, 366, 366), 'newbuf').
name(v_remaining_321, simple_name, abstract_byte_array_output_stream_1_expr28, (dimensions, 0), range(abstract_byte_array_output_stream_1, 12883, 9, 366, 366), 'remaining').
name(v_pos_323, simple_name, abstract_byte_array_output_stream_1_code52, name, range(abstract_byte_array_output_stream_1, 12907, 3, 367, 367), 'pos').
name(v_buf_324, simple_name, abstract_byte_array_output_stream_1_code53, name, range(abstract_byte_array_output_stream_1, 12942, 3, 368, 368), 'buf').
name(f_buffers_296, simple_name, abstract_byte_array_output_stream_1_stmt20, expression, range(abstract_byte_array_output_stream_1, 12948, 7, 368, 368), 'buffers').
name(v_c_325, simple_name, abstract_byte_array_output_stream_1_code60, name, range(abstract_byte_array_output_stream_1, 12981, 1, 369, 369), 'c').
name(t_math_6, simple_name, abstract_byte_array_output_stream_1_expr29, expression, range(abstract_byte_array_output_stream_1, 12985, 4, 369, 369), 'Math').
name(m_min_201, simple_name, abstract_byte_array_output_stream_1_expr29, name, range(abstract_byte_array_output_stream_1, 12990, 3, 369, 369), 'min').
name(v_buf_324, simple_name, q_length_3, qualifier, range(abstract_byte_array_output_stream_1, 12994, 3, 369, 369), 'buf').
name(q_length_3, qualified_name, abstract_byte_array_output_stream_1_expr29, (arguments, 0), range(abstract_byte_array_output_stream_1, 12994, 10, 369, 369), 'buf.length').
name(v_remaining_321, simple_name, abstract_byte_array_output_stream_1_expr29, (arguments, 1), range(abstract_byte_array_output_stream_1, 13006, 9, 369, 369), 'remaining').
name(t_system_7, simple_name, abstract_byte_array_output_stream_1_expr30, expression, range(abstract_byte_array_output_stream_1, 13030, 6, 370, 370), 'System').
name(m_arraycopy_202, simple_name, abstract_byte_array_output_stream_1_expr30, name, range(abstract_byte_array_output_stream_1, 13037, 9, 370, 370), 'arraycopy').
name(v_buf_324, simple_name, abstract_byte_array_output_stream_1_expr30, (arguments, 0), range(abstract_byte_array_output_stream_1, 13047, 3, 370, 370), 'buf').
name(v_newbuf_322, simple_name, abstract_byte_array_output_stream_1_expr30, (arguments, 2), range(abstract_byte_array_output_stream_1, 13055, 6, 370, 370), 'newbuf').
name(v_pos_323, simple_name, abstract_byte_array_output_stream_1_expr30, (arguments, 3), range(abstract_byte_array_output_stream_1, 13063, 3, 370, 370), 'pos').
name(v_c_325, simple_name, abstract_byte_array_output_stream_1_expr30, (arguments, 4), range(abstract_byte_array_output_stream_1, 13068, 1, 370, 370), 'c').
name(v_pos_323, simple_name, abstract_byte_array_output_stream_1_expr31, left_hand_side, range(abstract_byte_array_output_stream_1, 13084, 3, 371, 371), 'pos').
name(v_c_325, simple_name, abstract_byte_array_output_stream_1_expr31, right_hand_side, range(abstract_byte_array_output_stream_1, 13091, 1, 371, 371), 'c').
name(v_remaining_321, simple_name, abstract_byte_array_output_stream_1_expr32, left_hand_side, range(abstract_byte_array_output_stream_1, 13106, 9, 372, 372), 'remaining').
name(v_c_325, simple_name, abstract_byte_array_output_stream_1_expr32, right_hand_side, range(abstract_byte_array_output_stream_1, 13119, 1, 372, 372), 'c').
name(v_remaining_321, simple_name, abstract_byte_array_output_stream_1_expr33, left_operand, range(abstract_byte_array_output_stream_1, 13138, 9, 373, 373), 'remaining').
name(v_newbuf_322, simple_name, abstract_byte_array_output_stream_1_stmt27, expression, range(abstract_byte_array_output_stream_1, 13218, 6, 377, 377), 'newbuf').
%test_utils_1 - org.apache.commons.io.test.TestUtils
name(v_baout_354, simple_name, test_utils_1_code6, name, range(test_utils_1, 2204, 5, 63, 63), 'baout').
name(m_generate_test_data_232, simple_name, test_utils_1_expr2, name, range(test_utils_1, 2253, 16, 64, 64), 'generateTestData').
name(v_baout_354, simple_name, test_utils_1_expr2, (arguments, 0), range(test_utils_1, 2270, 5, 64, 64), 'baout').
name(p_size_353, simple_name, test_utils_1_expr2, (arguments, 1), range(test_utils_1, 2277, 4, 64, 64), 'size').
name(v_baout_354, simple_name, test_utils_1_expr3, expression, range(test_utils_1, 2303, 5, 65, 65), 'baout').
name(m_to_byte_array_216, simple_name, test_utils_1_expr3, name, range(test_utils_1, 2309, 11, 65, 65), 'toByteArray').
name(v_i_357, simple_name, test_utils_1_code10, name, range(test_utils_1, 2603, 1, 73, 73), 'i').
name(v_i_357, simple_name, test_utils_1_expr5, left_operand, range(test_utils_1, 2610, 1, 73, 73), 'i').
name(p_size_356, simple_name, test_utils_1_expr5, right_operand, range(test_utils_1, 2614, 4, 73, 73), 'size').
name(v_i_357, simple_name, test_utils_1_expr6, operand, range(test_utils_1, 2620, 1, 73, 73), 'i').
name(p_out_355, simple_name, test_utils_1_expr7, expression, range(test_utils_1, 2755, 3, 77, 77), 'out').
name(m_write_233, simple_name, test_utils_1_expr7, name, range(test_utils_1, 2759, 5, 77, 77), 'write').
name(v_i_357, simple_name, test_utils_1_expr12, left_operand, range(test_utils_1, 2774, 1, 77, 77), 'i').
%ioutils_copy_test_case_1 - org.apache.commons.io.IOUtilsCopyTestCase
name(t_ioutils_copy_test_case_2, simple_name, ioutils_copy_test_case_1_code2, name, range(ioutils_copy_test_case_1, 1801, 19, 47, 47), 'IOUtilsCopyTestCase').
name(f_in_data_291, simple_name, ioutils_copy_test_case_1_code10, name, range(ioutils_copy_test_case_1, 2193, 6, 59, 59), 'inData').
name(t_test_utils_3, simple_name, ioutils_copy_test_case_1_expr1, expression, range(ioutils_copy_test_case_1, 2202, 9, 59, 59), 'TestUtils').
name(m_generate_test_data_148, simple_name, ioutils_copy_test_case_1_expr1, name, range(ioutils_copy_test_case_1, 2212, 16, 59, 59), 'generateTestData').
name(f_file_size_292, simple_name, ioutils_copy_test_case_1_expr1, (arguments, 0), range(ioutils_copy_test_case_1, 2229, 9, 59, 59), 'FILE_SIZE').
name(v_out_293, simple_name, ioutils_copy_test_case_1_code14, name, range(ioutils_copy_test_case_1, 3762, 3, 100, 100), 'out').
name(m_assert_equals_153, simple_name, ioutils_copy_test_case_1_expr3, name, range(ioutils_copy_test_case_1, 3805, 12, 101, 101), 'assertEquals').
name(t_ioutils_4, simple_name, ioutils_copy_test_case_1_expr4, expression, range(ioutils_copy_test_case_1, 3821, 7, 101, 101), 'IOUtils').
name(m_copy_31, simple_name, ioutils_copy_test_case_1_expr4, name, range(ioutils_copy_test_case_1, 3829, 4, 101, 101), 'copy').
name(v_out_293, simple_name, ioutils_copy_test_case_1_expr4, (arguments, 1), range(ioutils_copy_test_case_1, 3854, 3, 101, 101), 'out').
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
name(f_default_size_328, simple_name, byte_array_output_stream_1_stmt1, (arguments, 0), range(byte_array_output_stream_1, 1386, 12, 34, 34), 'DEFAULT_SIZE').
name(m_byte_array_output_stream_206, simple_name, byte_array_output_stream_1_code4, name, range(byte_array_output_stream_1, 1649, 21, 44, 44), 'ByteArrayOutputStream').
name(p_size_329, simple_name, byte_array_output_stream_1_code6, name, range(byte_array_output_stream_1, 1681, 4, 44, 44), 'size').
name(p_size_329, simple_name, byte_array_output_stream_1_expr2, left_operand, range(byte_array_output_stream_1, 1701, 4, 45, 45), 'size').
name(m_need_new_buffer_180, simple_name, byte_array_output_stream_1_expr4, name, range(byte_array_output_stream_1, 1864, 13, 50, 50), 'needNewBuffer').
name(p_size_329, simple_name, byte_array_output_stream_1_expr4, (arguments, 0), range(byte_array_output_stream_1, 1878, 4, 50, 50), 'size').
name(m_write_impl_187, simple_name, byte_array_output_stream_1_expr5, name, range(byte_array_output_stream_1, 2424, 9, 72, 72), 'writeImpl').
name(p_b_333, simple_name, byte_array_output_stream_1_expr5, (arguments, 0), range(byte_array_output_stream_1, 2434, 1, 72, 72), 'b').
name(m_to_byte_array_impl_200, simple_name, byte_array_output_stream_1_expr6, name, range(byte_array_output_stream_1, 5310, 15, 163, 163), 'toByteArrayImpl').

%%% Literals
%string_builder_writer_1 - org.apache.commons.io.output.StringBuilderWriter
literal(string_builder_writer_1_literal1, null_literal, string_builder_writer_1_expr5, right_operand, range(string_builder_writer_1, 3842, 4, 127, 127), null).
%ioutils_1 - org.apache.commons.io.IOUtils
literal(ioutils_1_literal1, number_literal, ioutils_1_expr1, (dimensions, 0), range(ioutils_1, 4674, 1, 109, 109), 0).
literal(ioutils_1_literal2, number_literal, ioutils_1_expr3, (arguments, 0), range(ioutils_1, 6623, 1, 174, 174), 4).
literal(ioutils_1_literal3, number_literal, ioutils_1_code40, initializer, range(ioutils_1, 44351, 1, 1158, 1158), 0).
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
literal(abstract_byte_array_output_stream_1_literal1, number_literal, abstract_byte_array_output_stream_1_expr1, (dimensions, 0), range(abstract_byte_array_output_stream_1, 2639, 1, 64, 64), 0).
literal(abstract_byte_array_output_stream_1_literal2, boolean_literal, abstract_byte_array_output_stream_1_code31, initializer, range(abstract_byte_array_output_stream_1, 3182, 4, 77, 77), true).
literal(abstract_byte_array_output_stream_1_literal3, number_literal, abstract_byte_array_output_stream_1_expr4, right_operand, range(abstract_byte_array_output_stream_1, 3487, 1, 86, 86), 1).
literal(abstract_byte_array_output_stream_1_literal4, null_literal, abstract_byte_array_output_stream_1_expr6, right_operand, range(abstract_byte_array_output_stream_1, 3791, 4, 95, 95), null).
literal(abstract_byte_array_output_stream_1_literal5, number_literal, abstract_byte_array_output_stream_1_expr8, right_hand_side, range(abstract_byte_array_output_stream_1, 3875, 1, 97, 97), 0).
literal(abstract_byte_array_output_stream_1_literal6, number_literal, abstract_byte_array_output_stream_1_expr21, right_operand, range(abstract_byte_array_output_stream_1, 5710, 1, 156, 156), 1).
literal(abstract_byte_array_output_stream_1_literal7, number_literal, abstract_byte_array_output_stream_1_expr22, right_hand_side, range(abstract_byte_array_output_stream_1, 5740, 1, 157, 157), 0).
literal(abstract_byte_array_output_stream_1_literal8, number_literal, abstract_byte_array_output_stream_1_expr27, right_operand, range(abstract_byte_array_output_stream_1, 12792, 1, 363, 363), 0).
literal(abstract_byte_array_output_stream_1_literal9, number_literal, abstract_byte_array_output_stream_1_code52, initializer, range(abstract_byte_array_output_stream_1, 12913, 1, 367, 367), 0).
literal(abstract_byte_array_output_stream_1_literal10, number_literal, abstract_byte_array_output_stream_1_expr30, (arguments, 1), range(abstract_byte_array_output_stream_1, 13052, 1, 370, 370), 0).
literal(abstract_byte_array_output_stream_1_literal11, number_literal, abstract_byte_array_output_stream_1_expr33, right_operand, range(abstract_byte_array_output_stream_1, 13151, 1, 373, 373), 0).
%test_utils_1 - org.apache.commons.io.test.TestUtils
literal(test_utils_1_literal1, number_literal, test_utils_1_code10, initializer, range(test_utils_1, 2607, 1, 73, 73), 0).
literal(test_utils_1_literal2, number_literal, test_utils_1_expr12, right_operand, range(test_utils_1, 2778, 3, 77, 77), 127).
literal(test_utils_1_literal3, number_literal, test_utils_1_expr10, right_operand, range(test_utils_1, 2785, 1, 77, 77), 1).
%ioutils_copy_test_case_1 - org.apache.commons.io.IOUtilsCopyTestCase
literal(ioutils_copy_test_case_1_literal1, number_literal, ioutils_copy_test_case_1_expr3, (arguments, 0), range(ioutils_copy_test_case_1, 3818, 1, 101, 101), 0).
literal(ioutils_copy_test_case_1_literal2, null_literal, ioutils_copy_test_case_1_expr5, expression, range(ioutils_copy_test_case_1, 3848, 4, 101, 101), null).
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
literal(byte_array_output_stream_1_literal1, number_literal, byte_array_output_stream_1_expr2, right_operand, range(byte_array_output_stream_1, 1708, 1, 45, 45), 0).

%%% Other Code Entities
%string_builder_writer_1 - org.apache.commons.io.output.StringBuilderWriter
code(string_builder_writer_1_code1, compilation_unit, range(string_builder_writer_1, 0, 4721, 1, -1)).
code(string_builder_writer_1_code2, type_declaration, string_builder_writer_1_code1, (types, 0), range(string_builder_writer_1, 895, 3825, 22, 164)).
code(string_builder_writer_1_code3, method_declaration, string_builder_writer_1_code2, (body_declarations, 3), range(string_builder_writer_1, 1696, 297, 45, 52)).
code(string_builder_writer_1_code4, modifier, string_builder_writer_1_code3, (modifiers, 0), range(string_builder_writer_1, 1887, 6, 50, 50)).
code(string_builder_writer_1_code5, single_variable_declaration, string_builder_writer_1_code3, (parameters, 0), range(string_builder_writer_1, 1914, 18, 50, 50)).
code(string_builder_writer_1_code6, modifier, string_builder_writer_1_code5, (modifiers, 0), range(string_builder_writer_1, 1914, 5, 50, 50)).
code(string_builder_writer_1_code7, primitive_type, string_builder_writer_1_code5, type, range(string_builder_writer_1, 1920, 3, 50, 50)).
code(string_builder_writer_1_code8, simple_type, string_builder_writer_1_expr3, type, range(string_builder_writer_1, 1963, 13, 51, 51)).
code(string_builder_writer_1_code9, method_declaration, string_builder_writer_1_code2, (body_declarations, 8), range(string_builder_writer_1, 3406, 116, 103, 109)).
code(string_builder_writer_1_code10, method_declaration, string_builder_writer_1_code2, (body_declarations, 10), range(string_builder_writer_1, 3652, 248, 120, 130)).
code(string_builder_writer_1_code11, method_declaration, string_builder_writer_1_code2, (body_declarations, 13), range(string_builder_writer_1, 4514, 204, 155, 163)).
%ioutils_1 - org.apache.commons.io.IOUtils
code(ioutils_1_code1, compilation_unit, range(ioutils_1, 0, 136994, 1, -1)).
code(ioutils_1_code2, type_declaration, ioutils_1_code1, (types, 0), range(ioutils_1, 2093, 134900, 59, 3380)).
code(ioutils_1_code3, field_declaration, ioutils_1_code2, (body_declarations, 0), range(ioutils_1, 4618, 59, 109, 109)).
code(ioutils_1_code4, modifier, ioutils_1_code3, (modifiers, 0), range(ioutils_1, 4618, 7, 109, 109)).
code(ioutils_1_code5, modifier, ioutils_1_code3, (modifiers, 1), range(ioutils_1, 4626, 6, 109, 109)).
code(ioutils_1_code6, modifier, ioutils_1_code3, (modifiers, 2), range(ioutils_1, 4633, 5, 109, 109)).
code(ioutils_1_code8, primitive_type, ioutils_1_code7, element_type, range(ioutils_1, 4639, 4, 109, 109)).
code(ioutils_1_code7, array_type, ioutils_1_code3, type, range(ioutils_1, 4639, 6, 109, 109)).
code(ioutils_1_code9, dimension, ioutils_1_code7, (dimensions, 0), range(ioutils_1, 4643, 2, 109, 109)).
code(ioutils_1_code10, variable_declaration_fragment, ioutils_1_code3, (fragments, 0), range(ioutils_1, 4646, 30, 109, 109)).
code(ioutils_1_code12, primitive_type, ioutils_1_code11, element_type, range(ioutils_1, 4669, 4, 109, 109)).
code(ioutils_1_code11, array_type, ioutils_1_expr1, type, range(ioutils_1, 4669, 7, 109, 109)).
code(ioutils_1_code13, dimension, ioutils_1_code11, (dimensions, 0), range(ioutils_1, 4673, 3, 109, 109)).
code(ioutils_1_code14, field_declaration, ioutils_1_code2, (body_declarations, 2), range(ioutils_1, 4822, 125, 116, 119)).
code(ioutils_1_code15, modifier, ioutils_1_code14, (modifiers, 0), range(ioutils_1, 4887, 6, 119, 119)).
code(ioutils_1_code16, modifier, ioutils_1_code14, (modifiers, 1), range(ioutils_1, 4894, 6, 119, 119)).
code(ioutils_1_code17, modifier, ioutils_1_code14, (modifiers, 2), range(ioutils_1, 4901, 5, 119, 119)).
code(ioutils_1_code18, primitive_type, ioutils_1_code14, type, range(ioutils_1, 4907, 4, 119, 119)).
code(ioutils_1_code19, variable_declaration_fragment, ioutils_1_code14, (fragments, 0), range(ioutils_1, 4912, 34, 119, 119)).
code(ioutils_1_code20, initializer, ioutils_1_code2, (body_declarations, 12), range(ioutils_1, 6512, 266, 172, 179)).
code(ioutils_1_code21, modifier, ioutils_1_expr2, (modifiers, 0), range(ioutils_1, 6567, 5, 174, 174)).
code(ioutils_1_code22, simple_type, ioutils_1_expr2, type, range(ioutils_1, 6573, 19, 174, 174)).
code(ioutils_1_code23, variable_declaration_fragment, ioutils_1_expr2, (fragments, 0), range(ioutils_1, 6593, 32, 174, 174)).
code(ioutils_1_code24, simple_type, ioutils_1_expr3, type, range(ioutils_1, 6603, 19, 174, 174)).
code(ioutils_1_code25, modifier, ioutils_1_expr4, (modifiers, 0), range(ioutils_1, 6643, 5, 175, 175)).
code(ioutils_1_code26, simple_type, ioutils_1_expr4, type, range(ioutils_1, 6649, 11, 175, 175)).
code(ioutils_1_code27, variable_declaration_fragment, ioutils_1_expr4, (fragments, 0), range(ioutils_1, 6661, 26, 175, 175)).
code(ioutils_1_code28, simple_type, ioutils_1_expr5, type, range(ioutils_1, 6671, 11, 175, 175)).
code(ioutils_1_code29, method_declaration, ioutils_1_code2, (body_declarations, 39), range(ioutils_1, 30516, 1139, 838, 863)).
code(ioutils_1_code30, modifier, ioutils_1_stmt4, (modifiers, 0), range(ioutils_1, 31503, 5, 858, 858)).
code(ioutils_1_code31, primitive_type, ioutils_1_stmt4, type, range(ioutils_1, 31509, 4, 858, 858)).
code(ioutils_1_code32, variable_declaration_fragment, ioutils_1_stmt4, (fragments, 0), range(ioutils_1, 31514, 32, 858, 858)).
code(ioutils_1_code33, method_declaration, ioutils_1_code2, (body_declarations, 40), range(ioutils_1, 31661, 885, 865, 883)).
code(ioutils_1_code34, array_type, ioutils_1_expr11, type, range(ioutils_1, 32522, 16, 882, 882)).
code(ioutils_1_code35, primitive_type, ioutils_1_code34, element_type, range(ioutils_1, 32522, 4, 882, 882)).
code(ioutils_1_code36, dimension, ioutils_1_code34, (dimensions, 0), range(ioutils_1, 32526, 12, 882, 882)).
code(ioutils_1_code37, method_declaration, ioutils_1_code2, (body_declarations, 50), range(ioutils_1, 42732, 825, 1119, 1138)).
code(ioutils_1_code38, method_declaration, ioutils_1_code2, (body_declarations, 51), range(ioutils_1, 43563, 957, 1140, 1165)).
code(ioutils_1_code39, primitive_type, ioutils_1_stmt7, type, range(ioutils_1, 44338, 4, 1158, 1158)).
code(ioutils_1_code40, variable_declaration_fragment, ioutils_1_stmt7, (fragments, 0), range(ioutils_1, 44343, 9, 1158, 1158)).
%abstract_byte_array_output_stream_1 - org.apache.commons.io.output.AbstractByteArrayOutputStream
code(abstract_byte_array_output_stream_1_code1, compilation_unit, range(abstract_byte_array_output_stream_1, 0, 14645, 1, -1)).
code(abstract_byte_array_output_stream_1_code2, type_declaration, abstract_byte_array_output_stream_1_code1, (types, 0), range(abstract_byte_array_output_stream_1, 1228, 13416, 33, 420)).
code(abstract_byte_array_output_stream_1_code3, modifier, abstract_byte_array_output_stream_1_code2, (modifiers, 0), range(abstract_byte_array_output_stream_1, 2419, 6, 59, 59)).
code(abstract_byte_array_output_stream_1_code4, modifier, abstract_byte_array_output_stream_1_code2, (modifiers, 1), range(abstract_byte_array_output_stream_1, 2426, 8, 59, 59)).
code(abstract_byte_array_output_stream_1_code5, simple_type, abstract_byte_array_output_stream_1_code2, superclass_type, range(abstract_byte_array_output_stream_1, 2479, 12, 59, 59)).
code(abstract_byte_array_output_stream_1_code6, field_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 1), range(abstract_byte_array_output_stream_1, 2542, 100, 63, 64)).
code(abstract_byte_array_output_stream_1_code7, modifier, abstract_byte_array_output_stream_1_code6, (modifiers, 0), range(abstract_byte_array_output_stream_1, 2583, 7, 64, 64)).
code(abstract_byte_array_output_stream_1_code8, modifier, abstract_byte_array_output_stream_1_code6, (modifiers, 1), range(abstract_byte_array_output_stream_1, 2591, 6, 64, 64)).
code(abstract_byte_array_output_stream_1_code9, modifier, abstract_byte_array_output_stream_1_code6, (modifiers, 2), range(abstract_byte_array_output_stream_1, 2598, 5, 64, 64)).
code(abstract_byte_array_output_stream_1_code10, array_type, abstract_byte_array_output_stream_1_code6, type, range(abstract_byte_array_output_stream_1, 2604, 6, 64, 64)).
code(abstract_byte_array_output_stream_1_code11, primitive_type, abstract_byte_array_output_stream_1_code10, element_type, range(abstract_byte_array_output_stream_1, 2604, 4, 64, 64)).
code(abstract_byte_array_output_stream_1_code12, dimension, abstract_byte_array_output_stream_1_code10, (dimensions, 0), range(abstract_byte_array_output_stream_1, 2608, 2, 64, 64)).
code(abstract_byte_array_output_stream_1_code13, variable_declaration_fragment, abstract_byte_array_output_stream_1_code6, (fragments, 0), range(abstract_byte_array_output_stream_1, 2611, 30, 64, 64)).
code(abstract_byte_array_output_stream_1_code15, primitive_type, abstract_byte_array_output_stream_1_code14, element_type, range(abstract_byte_array_output_stream_1, 2634, 4, 64, 64)).
code(abstract_byte_array_output_stream_1_code14, array_type, abstract_byte_array_output_stream_1_expr1, type, range(abstract_byte_array_output_stream_1, 2634, 7, 64, 64)).
code(abstract_byte_array_output_stream_1_code16, dimension, abstract_byte_array_output_stream_1_code14, (dimensions, 0), range(abstract_byte_array_output_stream_1, 2638, 3, 64, 64)).
code(abstract_byte_array_output_stream_1_code17, field_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 2), range(abstract_byte_array_output_stream_1, 2648, 118, 66, 67)).
code(abstract_byte_array_output_stream_1_code18, modifier, abstract_byte_array_output_stream_1_code17, (modifiers, 0), range(abstract_byte_array_output_stream_1, 2711, 7, 67, 67)).
code(abstract_byte_array_output_stream_1_code19, modifier, abstract_byte_array_output_stream_1_code17, (modifiers, 1), range(abstract_byte_array_output_stream_1, 2719, 5, 67, 67)).
code(abstract_byte_array_output_stream_1_code21, simple_type, abstract_byte_array_output_stream_1_code20, type, range(abstract_byte_array_output_stream_1, 2725, 4, 67, 67)).
code(abstract_byte_array_output_stream_1_code20, parameterized_type, abstract_byte_array_output_stream_1_code17, type, range(abstract_byte_array_output_stream_1, 2725, 12, 67, 67)).
code(abstract_byte_array_output_stream_1_code22, array_type, abstract_byte_array_output_stream_1_code20, (type_arguments, 0), range(abstract_byte_array_output_stream_1, 2730, 6, 67, 67)).
code(abstract_byte_array_output_stream_1_code23, primitive_type, abstract_byte_array_output_stream_1_code22, element_type, range(abstract_byte_array_output_stream_1, 2730, 4, 67, 67)).
code(abstract_byte_array_output_stream_1_code24, dimension, abstract_byte_array_output_stream_1_code22, (dimensions, 0), range(abstract_byte_array_output_stream_1, 2734, 2, 67, 67)).
code(abstract_byte_array_output_stream_1_code25, variable_declaration_fragment, abstract_byte_array_output_stream_1_code17, (fragments, 0), range(abstract_byte_array_output_stream_1, 2738, 27, 67, 67)).
code(abstract_byte_array_output_stream_1_code26, parameterized_type, abstract_byte_array_output_stream_1_expr2, type, range(abstract_byte_array_output_stream_1, 2752, 11, 67, 67)).
code(abstract_byte_array_output_stream_1_code27, simple_type, abstract_byte_array_output_stream_1_code26, type, range(abstract_byte_array_output_stream_1, 2752, 9, 67, 67)).
code(abstract_byte_array_output_stream_1_code28, field_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 7), range(abstract_byte_array_output_stream_1, 3082, 105, 76, 77)).
code(abstract_byte_array_output_stream_1_code29, modifier, abstract_byte_array_output_stream_1_code28, (modifiers, 0), range(abstract_byte_array_output_stream_1, 3151, 7, 77, 77)).
code(abstract_byte_array_output_stream_1_code30, primitive_type, abstract_byte_array_output_stream_1_code28, type, range(abstract_byte_array_output_stream_1, 3159, 7, 77, 77)).
code(abstract_byte_array_output_stream_1_code31, variable_declaration_fragment, abstract_byte_array_output_stream_1_code28, (fragments, 0), range(abstract_byte_array_output_stream_1, 3167, 19, 77, 77)).
code(abstract_byte_array_output_stream_1_code32, method_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 8), range(abstract_byte_array_output_stream_1, 3193, 1058, 79, 109)).
code(abstract_byte_array_output_stream_1_code33, array_type, abstract_byte_array_output_stream_1_expr16, type, range(abstract_byte_array_output_stream_1, 4175, 19, 106, 106)).
code(abstract_byte_array_output_stream_1_code34, primitive_type, abstract_byte_array_output_stream_1_code33, element_type, range(abstract_byte_array_output_stream_1, 4175, 4, 106, 106)).
code(abstract_byte_array_output_stream_1_code35, dimension, abstract_byte_array_output_stream_1_code33, (dimensions, 0), range(abstract_byte_array_output_stream_1, 4179, 15, 106, 106)).
code(abstract_byte_array_output_stream_1_code36, method_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 12), range(abstract_byte_array_output_stream_1, 5449, 373, 149, 161)).
code(abstract_byte_array_output_stream_1_code37, primitive_type, abstract_byte_array_output_stream_1_stmt10, type, range(abstract_byte_array_output_stream_1, 5582, 3, 154, 154)).
code(abstract_byte_array_output_stream_1_code38, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt10, (fragments, 0), range(abstract_byte_array_output_stream_1, 5586, 37, 154, 154)).
code(abstract_byte_array_output_stream_1_code39, primitive_type, abstract_byte_array_output_stream_1_expr25, type, range(abstract_byte_array_output_stream_1, 5791, 4, 159, 159)).
code(abstract_byte_array_output_stream_1_code40, method_declaration, abstract_byte_array_output_stream_1_code2, (body_declarations, 25), range(abstract_byte_array_output_stream_1, 12426, 805, 354, 378)).
code(abstract_byte_array_output_stream_1_code41, primitive_type, abstract_byte_array_output_stream_1_stmt16, type, range(abstract_byte_array_output_stream_1, 12744, 3, 362, 362)).
code(abstract_byte_array_output_stream_1_code42, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt16, (fragments, 0), range(abstract_byte_array_output_stream_1, 12748, 17, 362, 362)).
code(abstract_byte_array_output_stream_1_code43, modifier, abstract_byte_array_output_stream_1_stmt18, (modifiers, 0), range(abstract_byte_array_output_stream_1, 12852, 5, 366, 366)).
code(abstract_byte_array_output_stream_1_code45, primitive_type, abstract_byte_array_output_stream_1_code44, element_type, range(abstract_byte_array_output_stream_1, 12858, 4, 366, 366)).
code(abstract_byte_array_output_stream_1_code44, array_type, abstract_byte_array_output_stream_1_stmt18, type, range(abstract_byte_array_output_stream_1, 12858, 6, 366, 366)).
code(abstract_byte_array_output_stream_1_code46, dimension, abstract_byte_array_output_stream_1_code44, (dimensions, 0), range(abstract_byte_array_output_stream_1, 12862, 2, 366, 366)).
code(abstract_byte_array_output_stream_1_code47, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt18, (fragments, 0), range(abstract_byte_array_output_stream_1, 12865, 28, 366, 366)).
code(abstract_byte_array_output_stream_1_code49, primitive_type, abstract_byte_array_output_stream_1_code48, element_type, range(abstract_byte_array_output_stream_1, 12878, 4, 366, 366)).
code(abstract_byte_array_output_stream_1_code48, array_type, abstract_byte_array_output_stream_1_expr28, type, range(abstract_byte_array_output_stream_1, 12878, 15, 366, 366)).
code(abstract_byte_array_output_stream_1_code50, dimension, abstract_byte_array_output_stream_1_code48, (dimensions, 0), range(abstract_byte_array_output_stream_1, 12882, 11, 366, 366)).
code(abstract_byte_array_output_stream_1_code51, primitive_type, abstract_byte_array_output_stream_1_stmt19, type, range(abstract_byte_array_output_stream_1, 12903, 3, 367, 367)).
code(abstract_byte_array_output_stream_1_code52, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt19, (fragments, 0), range(abstract_byte_array_output_stream_1, 12907, 7, 367, 367)).
code(abstract_byte_array_output_stream_1_code53, single_variable_declaration, abstract_byte_array_output_stream_1_stmt20, parameter, range(abstract_byte_array_output_stream_1, 12929, 16, 368, 368)).
code(abstract_byte_array_output_stream_1_code54, modifier, abstract_byte_array_output_stream_1_code53, (modifiers, 0), range(abstract_byte_array_output_stream_1, 12929, 5, 368, 368)).
code(abstract_byte_array_output_stream_1_code55, array_type, abstract_byte_array_output_stream_1_code53, type, range(abstract_byte_array_output_stream_1, 12935, 6, 368, 368)).
code(abstract_byte_array_output_stream_1_code56, primitive_type, abstract_byte_array_output_stream_1_code55, element_type, range(abstract_byte_array_output_stream_1, 12935, 4, 368, 368)).
code(abstract_byte_array_output_stream_1_code57, dimension, abstract_byte_array_output_stream_1_code55, (dimensions, 0), range(abstract_byte_array_output_stream_1, 12939, 2, 368, 368)).
code(abstract_byte_array_output_stream_1_code58, modifier, abstract_byte_array_output_stream_1_stmt21, (modifiers, 0), range(abstract_byte_array_output_stream_1, 12971, 5, 369, 369)).
code(abstract_byte_array_output_stream_1_code59, primitive_type, abstract_byte_array_output_stream_1_stmt21, type, range(abstract_byte_array_output_stream_1, 12977, 3, 369, 369)).
code(abstract_byte_array_output_stream_1_code60, variable_declaration_fragment, abstract_byte_array_output_stream_1_stmt21, (fragments, 0), range(abstract_byte_array_output_stream_1, 12981, 35, 369, 369)).
%test_utils_1 - org.apache.commons.io.test.TestUtils
code(test_utils_1_code1, compilation_unit, range(test_utils_1, 0, 8739, 1, -1)).
code(test_utils_1_code2, type_declaration, test_utils_1_code1, (types, 0), range(test_utils_1, 1484, 7254, 40, 234)).
code(test_utils_1_code3, method_declaration, test_utils_1_code2, (body_declarations, 2), range(test_utils_1, 2093, 377, 61, 69)).
code(test_utils_1_code4, modifier, test_utils_1_stmt2, (modifiers, 0), range(test_utils_1, 2176, 5, 63, 63)).
code(test_utils_1_code5, simple_type, test_utils_1_stmt2, type, range(test_utils_1, 2182, 21, 63, 63)).
code(test_utils_1_code6, variable_declaration_fragment, test_utils_1_stmt2, (fragments, 0), range(test_utils_1, 2204, 35, 63, 63)).
code(test_utils_1_code7, simple_type, test_utils_1_expr1, type, range(test_utils_1, 2216, 21, 63, 63)).
code(test_utils_1_code8, method_declaration, test_utils_1_code2, (body_declarations, 3), range(test_utils_1, 2476, 329, 71, 79)).
code(test_utils_1_code9, primitive_type, test_utils_1_expr4, type, range(test_utils_1, 2599, 3, 73, 73)).
code(test_utils_1_code10, variable_declaration_fragment, test_utils_1_expr4, (fragments, 0), range(test_utils_1, 2603, 5, 73, 73)).
code(test_utils_1_code11, primitive_type, test_utils_1_expr8, type, range(test_utils_1, 2766, 4, 77, 77)).
%ioutils_copy_test_case_1 - org.apache.commons.io.IOUtilsCopyTestCase
code(ioutils_copy_test_case_1_code1, compilation_unit, range(ioutils_copy_test_case_1, 0, 19518, 1, -1)).
code(ioutils_copy_test_case_1_code2, type_declaration, ioutils_copy_test_case_1_code1, (types, 0), range(ioutils_copy_test_case_1, 1720, 17797, 42, 439)).
code(ioutils_copy_test_case_1_code3, modifier, ioutils_copy_test_case_1_code2, (modifiers, 0), range(ioutils_copy_test_case_1, 1788, 6, 47, 47)).
code(ioutils_copy_test_case_1_code5, modifier, ioutils_copy_test_case_1_code4, (modifiers, 0), range(ioutils_copy_test_case_1, 2172, 7, 59, 59)).
code(ioutils_copy_test_case_1_code4, field_declaration, ioutils_copy_test_case_1_code2, (body_declarations, 1), range(ioutils_copy_test_case_1, 2172, 68, 59, 59)).
code(ioutils_copy_test_case_1_code6, modifier, ioutils_copy_test_case_1_code4, (modifiers, 1), range(ioutils_copy_test_case_1, 2180, 5, 59, 59)).
code(ioutils_copy_test_case_1_code7, array_type, ioutils_copy_test_case_1_code4, type, range(ioutils_copy_test_case_1, 2186, 6, 59, 59)).
code(ioutils_copy_test_case_1_code8, primitive_type, ioutils_copy_test_case_1_code7, element_type, range(ioutils_copy_test_case_1, 2186, 4, 59, 59)).
code(ioutils_copy_test_case_1_code9, dimension, ioutils_copy_test_case_1_code7, (dimensions, 0), range(ioutils_copy_test_case_1, 2190, 2, 59, 59)).
code(ioutils_copy_test_case_1_code10, variable_declaration_fragment, ioutils_copy_test_case_1_code4, (fragments, 0), range(ioutils_copy_test_case_1, 2193, 46, 59, 59)).
code(ioutils_copy_test_case_1_code11, method_declaration, ioutils_copy_test_case_1_code2, (body_declarations, 4), range(ioutils_copy_test_case_1, 3650, 216, 98, 102)).
code(ioutils_copy_test_case_1_code12, modifier, ioutils_copy_test_case_1_stmt1, (modifiers, 0), range(ioutils_copy_test_case_1, 3743, 5, 100, 100)).
code(ioutils_copy_test_case_1_code13, simple_type, ioutils_copy_test_case_1_stmt1, type, range(ioutils_copy_test_case_1, 3749, 12, 100, 100)).
code(ioutils_copy_test_case_1_code14, variable_declaration_fragment, ioutils_copy_test_case_1_stmt1, (fragments, 0), range(ioutils_copy_test_case_1, 3762, 33, 100, 100)).
code(ioutils_copy_test_case_1_code15, simple_type, ioutils_copy_test_case_1_expr2, type, range(ioutils_copy_test_case_1, 3772, 21, 100, 100)).
code(ioutils_copy_test_case_1_code16, simple_type, ioutils_copy_test_case_1_expr5, type, range(ioutils_copy_test_case_1, 3835, 11, 101, 101)).
%byte_array_output_stream_1 - org.apache.commons.io.output.ByteArrayOutputStream
code(byte_array_output_stream_1_code1, compilation_unit, range(byte_array_output_stream_1, 0, 5337, 1, -1)).
code(byte_array_output_stream_1_code2, type_declaration, byte_array_output_stream_1_code1, (types, 0), range(byte_array_output_stream_1, 928, 4408, 23, 165)).
code(byte_array_output_stream_1_code3, method_declaration, byte_array_output_stream_1_code2, (body_declarations, 0), range(byte_array_output_stream_1, 1138, 268, 29, 35)).
code(byte_array_output_stream_1_code4, method_declaration, byte_array_output_stream_1_code2, (body_declarations, 1), range(byte_array_output_stream_1, 1412, 488, 37, 52)).
code(byte_array_output_stream_1_code5, modifier, byte_array_output_stream_1_code4, (modifiers, 0), range(byte_array_output_stream_1, 1642, 6, 44, 44)).
code(byte_array_output_stream_1_code7, modifier, byte_array_output_stream_1_code6, (modifiers, 0), range(byte_array_output_stream_1, 1671, 5, 44, 44)).
code(byte_array_output_stream_1_code6, single_variable_declaration, byte_array_output_stream_1_code4, (parameters, 0), range(byte_array_output_stream_1, 1671, 14, 44, 44)).
code(byte_array_output_stream_1_code8, primitive_type, byte_array_output_stream_1_code6, type, range(byte_array_output_stream_1, 1677, 3, 44, 44)).
code(byte_array_output_stream_1_code9, method_declaration, byte_array_output_stream_1_code2, (body_declarations, 3), range(byte_array_output_stream_1, 2356, 87, 70, 73)).
code(byte_array_output_stream_1_code10, method_declaration, byte_array_output_stream_1_code2, (body_declarations, 11), range(byte_array_output_stream_1, 5238, 96, 161, 164)).

%%% Name References

name_ref(t_abstract_byte_array_output_stream_5, type, 'AbstractByteArrayOutputStream', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;').
name_ref(t_file_1, type, 'File', 'Ljava/io/File;').
name_ref(t_ioutils_4, type, 'IOUtils', 'Lorg/apache/commons/io/IOUtils;').
name_ref(t_ioutils_copy_test_case_2, type, 'IOUtilsCopyTestCase', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;').
name_ref(t_math_6, type, 'Math', 'Ljava/lang/Math;').
name_ref(t_system_7, type, 'System', 'Ljava/lang/System;').
name_ref(t_test_utils_3, type, 'TestUtils', 'Lorg/apache/commons/io/test/TestUtils;').
name_ref(v_buf_3, var, 'buf', 'ioutils_1;buf_line_175').
name_ref(f_default_size_328, field, 'DEFAULT_SIZE', 'byte_array_output_stream_1;DEFAULT_SIZE_line_34').
name_ref(v_baout_354, var, 'baout', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(J)[B#0#0#baout').
name_ref(v_buf_3, var, 'buf', 'Lorg/apache/commons/io/IOUtils;#0#0#buf').
name_ref(v_buf_324, var, 'buf', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#0#buf').
name_ref(v_c_325, var, 'c', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#0#0#c').
name_ref(v_count_43, var, 'count', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I|Ljava/io/IOException;#count').
name_ref(v_count_76, var, 'count', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;#count').
name_ref(v_i_357, var, 'i', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#0#i').
name_ref(v_in_buffer_pos_311, var, 'inBufferPos', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl(I)V#inBufferPos').
name_ref(v_n_78, var, 'n', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;#n').
name_ref(v_new_buffer_size_301, var, 'newBufferSize', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.needNewBuffer(I)V#0#newBufferSize').
name_ref(v_newbuf_322, var, 'newbuf', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#newbuf').
name_ref(v_out_293, var, 'out', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToOutputStream_nullIn()V|Ljava/lang/Exception;#out').
name_ref(v_out_4, var, 'out', 'Lorg/apache/commons/io/IOUtils;#0#0#out').
name_ref(v_pos_323, var, 'pos', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#pos').
name_ref(v_remaining_321, var, 'remaining', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#remaining').
name_ref(p_appendable_290, param, 'appendable', 'Lorg/apache/commons/io/IOUtils;.writer(Ljava/lang/Appendable;)Ljava/io/Writer;#appendable#0#0').
name_ref(p_array_102, param, 'array', 'Lorg/apache/commons/io/IOUtils;.length([B)I#array#0#0').
name_ref(p_array_103, param, 'array', 'Lorg/apache/commons/io/IOUtils;.length([C)I#array#0#0').
name_ref(p_array_105, param, 'array', 'Lorg/apache/commons/io/IOUtils;.length([Ljava/lang/Object;)I#array#0#0').
name_ref(p_b_0_366, param, 'b0', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;#b0#0#0').
name_ref(p_b_303, param, 'b', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write([BII)V#b#0#0').
name_ref(p_b_306, param, 'b', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V#b#0#0').
name_ref(p_b_309, param, 'b', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write(I)V#b#0#0').
name_ref(p_b_310, param, 'b', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl(I)V#b#0#0').
name_ref(p_b_330, param, 'b', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write([BII)V#b#0#0').
name_ref(p_b_333, param, 'b', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write(I)V#b#0#0').
name_ref(p_buf_318, param, 'buf', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;.construct([BII)TT;#buf#0#0').
name_ref(p_buffer_101, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#buffer#0#4').
name_ref(p_buffer_112, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[B)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_114, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_118, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_120, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[C)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_122, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_126, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[B)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_128, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_134, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_136, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[C)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_138, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_59, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;#buffer#0#2').
name_ref(p_buffer_75, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;#buffer#0#2').
name_ref(p_buffer_87, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#buffer#0#4').
name_ref(p_buffer_92, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;#buffer#0#2').
name_ref(p_buffer_size_294, param, 'bufferSize', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToOutputStreamWithBufferSize(I)V|Ljava/lang/Exception;#bufferSize#0#0').
name_ref(p_buffer_size_46, param, 'bufferSize', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;#bufferSize#0#2').
name_ref(p_builder_341, param, 'builder', 'Lorg/apache/commons/io/output/StringBuilderWriter;.(Ljava/lang/StringBuilder;)V#builder#0#0').
name_ref(p_c_0_368, param, 'c0', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;#c0#0#0').
name_ref(p_capacity_339, param, 'capacity', 'Lorg/apache/commons/io/output/StringBuilderWriter;.(I)V#capacity#0#0').
name_ref(p_charset_107, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_143, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_151, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_153, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_183, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_192, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_198, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#charset#0#1').
name_ref(p_charset_203, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#charset#0#1').
name_ref(p_charset_211, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_231, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_239, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_249, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_259, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_282, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#3').
name_ref(p_charset_327, param, 'charset', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toString(Ljava/nio/charset/Charset;)Ljava/lang/String;#charset#0#0').
name_ref(p_charset_name_109, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_145, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_185, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_194, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_200, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_205, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_208, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString([BLjava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_213, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_219, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_224, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_234, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_242, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_252, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_262, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_269, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_286, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#3').
name_ref(p_class_loader_149, param, 'classLoader', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;Ljava/lang/ClassLoader;)[B|Ljava/io/IOException;#classLoader#0#1').
name_ref(p_class_loader_154, param, 'classLoader', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;#classLoader#0#2').
name_ref(p_class_loader_157, param, 'classLoader', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;|Ljava/io/IOException;#classLoader#0#1').
name_ref(p_closeable_18, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;)V|Ljava/io/IOException;#closeable#0#0').
name_ref(p_closeable_20, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;Lorg/apache/commons/io/function/IOConsumer<Ljava/io/IOException;>;)V|Ljava/io/IOException;#closeable#0#0').
name_ref(p_closeable_23, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;)V#closeable#0#0').
name_ref(p_closeable_25, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer<Ljava/io/IOException;>;)V#closeable#0#0').
name_ref(p_closeables_19, param, 'closeables', 'Lorg/apache/commons/io/IOUtils;.close([Ljava/io/Closeable;)V|Ljava/io/IOException;#closeables#0#0').
name_ref(p_closeables_24, param, 'closeables', 'Lorg/apache/commons/io/IOUtils;.closeQuietly([Ljava/io/Closeable;)V#closeables#0#0').
name_ref(p_conn_22, param, 'conn', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/net/URLConnection;)V#conn#0#0').
name_ref(p_consumer_21, param, 'consumer', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;Lorg/apache/commons/io/function/IOConsumer<Ljava/io/IOException;>;)V|Ljava/io/IOException;#consumer#0#1').
name_ref(p_consumer_26, param, 'consumer', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer<Ljava/io/IOException;>;)V#consumer#0#1').
name_ref(p_csq_104, param, 'csq', 'Lorg/apache/commons/io/IOUtils;.length(Ljava/lang/CharSequence;)I#csq#0#0').
name_ref(p_data_225, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_227, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_229, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_232, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_235, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_237, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_240, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_243, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_245, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_247, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_250, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_253, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_255, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_257, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_260, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_263, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_265, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_267, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_270, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_272, param, 'data', 'Lorg/apache/commons/io/IOUtils;.writeChunked([BLjava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_274, param, 'data', 'Lorg/apache/commons/io/IOUtils;.writeChunked([CLjava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_359, param, 'data', 'Lorg/apache/commons/io/test/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_enc_326, param, 'enc', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toString(Ljava/lang/String;)Ljava/lang/String;|Ljava/io/UnsupportedEncodingException;#enc#0#0').
name_ref(p_encoding_217, param, 'encoding', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_222, param, 'encoding', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_end_346, param, 'end', 'Lorg/apache/commons/io/output/StringBuilderWriter;.append(Ljava/lang/CharSequence;II)Ljava/io/Writer;#end#0#2').
name_ref(p_f_0_364, param, 'f0', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#f0#0#0').
name_ref(p_f_1_365, param, 'f1', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#f1#0#1').
name_ref(p_file_351, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_358, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_362, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#file#0#0').
name_ref(p_file_367, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;#file#0#1').
name_ref(p_file_369, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;#file#0#1').
name_ref(p_file_372, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.deleteFile(Ljava/io/File;)V|Ljava/lang/Exception;#file#0#0').
name_ref(p_filename_361, param, 'filename', 'Lorg/apache/commons/io/test/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;#filename#0#1').
name_ref(p_in_313, param, 'in', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write(Ljava/io/InputStream;)I|Ljava/io/IOException;#in#0#0').
name_ref(p_in_314, param, 'in', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl(Ljava/io/InputStream;)I|Ljava/io/IOException;#in#0#0').
name_ref(p_in_334, param, 'in', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write(Ljava/io/InputStream;)I|Ljava/io/IOException;#in#0#0').
name_ref(p_input_106, param, 'input', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_108, param, 'input', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_111, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[B)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_113, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_117, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_119, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[C)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_121, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_125, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[B)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_127, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_131, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_133, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_135, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[C)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_137, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_141, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_142, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_144, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_146, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/Reader;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_158, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;J)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_160, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/nio/channels/ReadableByteChannel;J)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_162, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/Reader;J)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_164, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;J)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_166, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/nio/channels/ReadableByteChannel;J)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_168, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/Reader;J)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_170, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_171, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_176, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_177, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_179, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;J)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_181, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_182, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_184, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_186, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/lang/String;)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_195, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/Reader;)[C|Ljava/io/IOException;#input#0#0').
name_ref(p_input_196, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_197, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_199, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_1_35, param, 'input1', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z|Ljava/io/IOException;#input1#0#0').
name_ref(p_input_1_37, param, 'input1', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;#input1#0#0').
name_ref(p_input_1_39, param, 'input1', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;#input1#0#0').
name_ref(p_input_201, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_202, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_204, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_206, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString([B)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_207, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString([BLjava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_209, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_210, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_212, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_214, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/Reader;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_27, param, 'input', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/InputStream;)V#input#0#0').
name_ref(p_input_29, param, 'input', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Reader;)V#input#0#0').
name_ref(p_input_2_36, param, 'input2', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z|Ljava/io/IOException;#input2#0#1').
name_ref(p_input_2_38, param, 'input2', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;#input2#0#1').
name_ref(p_input_2_40, param, 'input2', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;#input2#0#1').
name_ref(p_input_336, param, 'input', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_337, param, 'input', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_34, param, 'input', 'Lorg/apache/commons/io/IOUtils;.consume(Ljava/io/InputStream;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_41, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_44, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_47, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_49, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_52, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_55, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_57, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_60, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_62, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_65, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_68, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/Writer;)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_70, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_73, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_79, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_83, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_88, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_90, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_93, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_97, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_charset_51, param, 'inputCharset', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#inputCharset#0#2').
name_ref(p_input_charset_name_54, param, 'inputCharsetName', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#inputCharsetName#0#2').
name_ref(p_input_offset_81, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_offset_85, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_offset_95, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_offset_99, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_stream_6, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;#inputStream#0#0').
name_ref(p_input_stream_7, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;#inputStream#0#0').
name_ref(p_is_190, param, 'is', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;)[C|Ljava/io/IOException;#is#0#0').
name_ref(p_is_191, param, 'is', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C|Ljava/io/IOException;#is#0#0').
name_ref(p_is_193, param, 'is', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C|Ljava/io/IOException;#is#0#0').
name_ref(p_is_constructor_317, param, 'isConstructor', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toInputStream<T:Ljava/io/InputStream;>(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor<TT;>;)Ljava/io/InputStream;#isConstructor#0#0').
name_ref(p_len_305, param, 'len', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write([BII)V#len#0#2').
name_ref(p_len_308, param, 'len', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V#len#0#2').
name_ref(p_len_332, param, 'len', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write([BII)V#len#0#2').
name_ref(p_length_100, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#length#0#3').
name_ref(p_length_116, param, 'length', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#length#0#3').
name_ref(p_length_124, param, 'length', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#length#0#3').
name_ref(p_length_130, param, 'length', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#length#0#3').
name_ref(p_length_132, param, 'length', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#length#0#1').
name_ref(p_length_140, param, 'length', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#length#0#3').
name_ref(p_length_320, param, 'length', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;.construct([BII)TT;#length#0#2').
name_ref(p_length_350, param, 'length', 'Lorg/apache/commons/io/output/StringBuilderWriter;.write([CII)V#length#0#2').
name_ref(p_length_82, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#length#0#3').
name_ref(p_length_86, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#length#0#3').
name_ref(p_length_96, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#length#0#3').
name_ref(p_line_ending_277, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_line_ending_280, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_line_ending_284, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_line_ending_288, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_lines_276, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_lines_279, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_lines_283, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_lines_287, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_ms_373, param, 'ms', 'Lorg/apache/commons/io/test/TestUtils;.sleep(J)V|Ljava/lang/InterruptedException;#ms#0#0').
name_ref(p_ms_374, param, 'ms', 'Lorg/apache/commons/io/test/TestUtils;.sleepQuietly(J)V#ms#0#0').
name_ref(p_name_147, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;)[B|Ljava/io/IOException;#name#0#0').
name_ref(p_name_148, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;Ljava/lang/ClassLoader;)[B|Ljava/io/IOException;#name#0#0').
name_ref(p_name_150, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#name#0#0').
name_ref(p_name_152, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;#name#0#0').
name_ref(p_name_155, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;)Ljava/net/URL;|Ljava/io/IOException;#name#0#0').
name_ref(p_name_156, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;|Ljava/io/IOException;#name#0#0').
name_ref(p_newcount_298, param, 'newcount', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.needNewBuffer(I)V#newcount#0#0').
name_ref(p_off_304, param, 'off', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write([BII)V#off#0#1').
name_ref(p_off_307, param, 'off', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V#off#0#1').
name_ref(p_off_331, param, 'off', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write([BII)V#off#0#1').
name_ref(p_offset_115, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_123, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_129, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_139, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_319, param, 'offset', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;.construct([BII)TT;#offset#0#1').
name_ref(p_offset_349, param, 'offset', 'Lorg/apache/commons/io/output/StringBuilderWriter;.write([CII)V#offset#0#1').
name_ref(p_out_315, param, 'out', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeTo(Ljava/io/OutputStream;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_316, param, 'out', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeToImpl(Ljava/io/OutputStream;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_335, param, 'out', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.writeTo(Ljava/io/OutputStream;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_355, param, 'out', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#out#0#0').
name_ref(p_output_226, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_228, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_230, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_233, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_236, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_238, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_241, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_244, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/Writer;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_246, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_248, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_251, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_254, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/Writer;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_256, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_258, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_261, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_264, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_266, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_268, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_271, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_273, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeChunked([BLjava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_275, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeChunked([CLjava/io/Writer;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_278, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#2').
name_ref(p_output_28, param, 'output', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/OutputStream;)V#output#0#0').
name_ref(p_output_281, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#2').
name_ref(p_output_285, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#2').
name_ref(p_output_33, param, 'output', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Writer;)V#output#0#0').
name_ref(p_output_370, param, 'output', 'Lorg/apache/commons/io/test/TestUtils;.checkWrite(Ljava/io/OutputStream;)V|Ljava/lang/Exception;#output#0#0').
name_ref(p_output_371, param, 'output', 'Lorg/apache/commons/io/test/TestUtils;.checkWrite(Ljava/io/Writer;)V|Ljava/lang/Exception;#output#0#0').
name_ref(p_output_42, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I|Ljava/io/IOException;#output#0#1').
name_ref(p_output_45, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_48, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_50, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_53, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_56, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_58, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_61, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_63, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_66, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_69, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/Writer;)I|Ljava/io/IOException;#output#0#1').
name_ref(p_output_71, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_74, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_80, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_84, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_89, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_91, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_94, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_98, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_charset_64, param, 'outputCharset', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#outputCharset#0#2').
name_ref(p_output_charset_name_67, param, 'outputCharsetName', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#outputCharsetName#0#2').
name_ref(p_output_stream_10, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;#outputStream#0#0').
name_ref(p_output_stream_9, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;#outputStream#0#0').
name_ref(p_reader_110, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/Reader;)Lorg/apache/commons/io/LineIterator;#reader#0#0').
name_ref(p_reader_12, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reader_13, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;I)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reader_173, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reader_174, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;I)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reference_file_363, param, 'referenceFile', 'Lorg/apache/commons/io/test/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#referenceFile#0#1').
name_ref(p_selector_30, param, 'selector', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/nio/channels/Selector;)V#selector#0#0').
name_ref(p_server_socket_31, param, 'serverSocket', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/ServerSocket;)V#serverSocket#0#0').
name_ref(p_size_11, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;#size#0#1').
name_ref(p_size_14, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;I)Ljava/io/BufferedReader;#size#0#1').
name_ref(p_size_17, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;I)Ljava/io/BufferedWriter;#size#0#1').
name_ref(p_size_172, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;#size#0#1').
name_ref(p_size_175, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;I)Ljava/io/BufferedReader;#size#0#1').
name_ref(p_size_178, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#size#0#1').
name_ref(p_size_180, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;J)[B|Ljava/io/IOException;#size#0#1').
name_ref(p_size_329, param, 'size', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.(I)V#size#0#0').
name_ref(p_size_338, param, 'size', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;#size#0#1').
name_ref(p_size_352, param, 'size', 'Lorg/apache/commons/io/test/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;#size#0#1').
name_ref(p_size_353, param, 'size', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(J)[B#size#0#0').
name_ref(p_size_356, param, 'size', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#size#0#1').
name_ref(p_size_8, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;#size#0#1').
name_ref(p_socket_32, param, 'socket', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/Socket;)V#socket#0#0').
name_ref(p_start_345, param, 'start', 'Lorg/apache/commons/io/output/StringBuilderWriter;.append(Ljava/lang/CharSequence;II)Ljava/io/Writer;#start#0#1').
name_ref(p_test_directory_360, param, 'testDirectory', 'Lorg/apache/commons/io/test/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;#testDirectory#0#0').
name_ref(p_to_skip_159, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;J)J|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_161, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/nio/channels/ReadableByteChannel;J)J|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_163, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/Reader;J)J|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_165, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;J)V|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_167, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/nio/channels/ReadableByteChannel;J)V|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_169, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/Reader;J)V|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_uri_187, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URI;)[B|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_215, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;)Ljava/lang/String;|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_216, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_218, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#uri#0#0').
name_ref(p_url_188, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URL;)[B|Ljava/io/IOException;#url#0#0').
name_ref(p_url_220, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;)Ljava/lang/String;|Ljava/io/IOException;#url#0#0').
name_ref(p_url_221, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#url#0#0').
name_ref(p_url_223, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#url#0#0').
name_ref(p_url_conn_189, param, 'urlConn', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URLConnection;)[B|Ljava/io/IOException;#urlConn#0#0').
name_ref(p_value_342, param, 'value', 'Lorg/apache/commons/io/output/StringBuilderWriter;.append(C)Ljava/io/Writer;#value#0#0').
name_ref(p_value_343, param, 'value', 'Lorg/apache/commons/io/output/StringBuilderWriter;.append(Ljava/lang/CharSequence;)Ljava/io/Writer;#value#0#0').
name_ref(p_value_344, param, 'value', 'Lorg/apache/commons/io/output/StringBuilderWriter;.append(Ljava/lang/CharSequence;II)Ljava/io/Writer;#value#0#0').
name_ref(p_value_347, param, 'value', 'Lorg/apache/commons/io/output/StringBuilderWriter;.write(Ljava/lang/String;)V#value#0#0').
name_ref(p_value_348, param, 'value', 'Lorg/apache/commons/io/output/StringBuilderWriter;.write([CII)V#value#0#0').
name_ref(p_writer_15, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;)Ljava/io/BufferedWriter;#writer#0#0').
name_ref(p_writer_16, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;I)Ljava/io/BufferedWriter;#writer#0#0').
name_ref(p_writer_289, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#writer#0#2').
name_ref(f_buffers_296, field, 'buffers', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.buffers)Ljava/util/List<[B>;').
name_ref(f_builder_340, field, 'builder', 'Lorg/apache/commons/io/output/StringBuilderWriter;.builder)Ljava/lang/StringBuilder;').
name_ref(f_count_312, field, 'count', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.count)I').
name_ref(f_current_buffer_300, field, 'currentBuffer', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.currentBuffer)[B').
name_ref(f_current_buffer_index_299, field, 'currentBufferIndex', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.currentBufferIndex)I').
name_ref(f_default_buffer_size_72, field, 'DEFAULT_BUFFER_SIZE', 'Lorg/apache/commons/io/IOUtils;.DEFAULT_BUFFER_SIZE)I').
name_ref(f_default_size_328, field, 'DEFAULT_SIZE', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.DEFAULT_SIZE)I').
name_ref(f_dir_separator_2, field, 'DIR_SEPARATOR', 'Lorg/apache/commons/io/IOUtils;.DIR_SEPARATOR)C').
name_ref(f_empty_byte_array_1, field, 'EMPTY_BYTE_ARRAY', 'Lorg/apache/commons/io/IOUtils;.EMPTY_BYTE_ARRAY)[B').
name_ref(f_empty_byte_array_295, field, 'EMPTY_BYTE_ARRAY', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.EMPTY_BYTE_ARRAY)[B').
name_ref(f_eof_77, field, 'EOF', 'Lorg/apache/commons/io/IOUtils;.EOF)I').
name_ref(f_file_size_292, field, 'FILE_SIZE', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.FILE_SIZE)I').
name_ref(f_filled_buffer_sum_302, field, 'filledBufferSum', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.filledBufferSum)I').
name_ref(f_in_data_291, field, 'inData', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.inData)[B').
name_ref(f_line_separator_5, field, 'LINE_SEPARATOR', 'Lorg/apache/commons/io/IOUtils;.LINE_SEPARATOR)Ljava/lang/String;').
name_ref(f_reuse_buffers_297, field, 'reuseBuffers', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.reuseBuffers)Z').
name_ref(m_add_183, method, 'add', 'Ljava/util/List;.add(TE;)Z').
name_ref(m_append_220, method, 'append', 'Lorg/apache/commons/io/output/StringBuilderWriter;.append(C)Ljava/io/Writer;').
name_ref(m_append_221, method, 'append', 'Lorg/apache/commons/io/output/StringBuilderWriter;.append(Ljava/lang/CharSequence;)Ljava/io/Writer;').
name_ref(m_append_222, method, 'append', 'Lorg/apache/commons/io/output/StringBuilderWriter;.append(Ljava/lang/CharSequence;II)Ljava/io/Writer;').
name_ref(m_append_226, method, 'append', 'Ljava/lang/StringBuilder;.append(Ljava/lang/String;)Ljava/lang/StringBuilder;').
name_ref(m_array_list_179, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_arraycopy_202, method, 'arraycopy', 'Ljava/lang/System;.arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V').
name_ref(m_assert_equal_content_237, method, 'assertEqualContent', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_equal_content_238, method, 'assertEqualContent', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_equal_content_239, method, 'assertEqualContent', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_equals_153, method, 'assertEquals', 'Lorg/junit/jupiter/api/Assertions;.assertEquals(II)V').
name_ref(m_buffer_10, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;I)Ljava/io/BufferedReader;').
name_ref(m_buffer_11, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;)Ljava/io/BufferedWriter;').
name_ref(m_buffer_12, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;I)Ljava/io/BufferedWriter;').
name_ref(m_buffer_5, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;').
name_ref(m_buffer_6, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;').
name_ref(m_buffer_7, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;').
name_ref(m_buffer_8, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;').
name_ref(m_buffer_9, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;)Ljava/io/BufferedReader;').
name_ref(m_byte_array_output_stream_152, method, 'ByteArrayOutputStream', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.()V').
name_ref(m_byte_array_output_stream_206, method, 'ByteArrayOutputStream', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.(I)V').
name_ref(m_check_file_236, method, 'checkFile', 'Lorg/apache/commons/io/test/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;').
name_ref(m_check_write_240, method, 'checkWrite', 'Lorg/apache/commons/io/test/TestUtils;.checkWrite(Ljava/io/OutputStream;)V|Ljava/lang/Exception;').
name_ref(m_check_write_241, method, 'checkWrite', 'Lorg/apache/commons/io/test/TestUtils;.checkWrite(Ljava/io/Writer;)V|Ljava/lang/Exception;').
name_ref(m_close_13, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;)V|Ljava/io/IOException;').
name_ref(m_close_14, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close([Ljava/io/Closeable;)V|Ljava/io/IOException;').
name_ref(m_close_15, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;Lorg/apache/commons/io/function/IOConsumer<Ljava/io/IOException;>;)V|Ljava/io/IOException;').
name_ref(m_close_16, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/net/URLConnection;)V').
name_ref(m_close_191, method, 'close', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.close()V|Ljava/io/IOException;').
name_ref(m_close_223, method, 'close', 'Lorg/apache/commons/io/output/StringBuilderWriter;.close()V').
name_ref(m_close_quietly_17, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;)V').
name_ref(m_close_quietly_18, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly([Ljava/io/Closeable;)V').
name_ref(m_close_quietly_19, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer<Ljava/io/IOException;>;)V').
name_ref(m_close_quietly_20, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/InputStream;)V').
name_ref(m_close_quietly_21, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/OutputStream;)V').
name_ref(m_close_quietly_22, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Reader;)V').
name_ref(m_close_quietly_23, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/nio/channels/Selector;)V').
name_ref(m_close_quietly_24, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/ServerSocket;)V').
name_ref(m_close_quietly_25, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/Socket;)V').
name_ref(m_close_quietly_26, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Writer;)V').
name_ref(m_construct_198, method, 'construct', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;.construct([BII)TT;').
name_ref(m_consume_27, method, 'consume', 'Lorg/apache/commons/io/IOUtils;.consume(Ljava/io/InputStream;)J|Ljava/io/IOException;').
name_ref(m_content_equals_28, method, 'contentEquals', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z|Ljava/io/IOException;').
name_ref(m_content_equals_29, method, 'contentEquals', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;').
name_ref(m_content_equals_ignore_eol_30, method, 'contentEqualsIgnoreEOL', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;').
name_ref(m_copy_31, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I|Ljava/io/IOException;').
name_ref(m_copy_33, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;').
name_ref(m_copy_35, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_copy_36, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_copy_37, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_copy_38, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;)J|Ljava/io/IOException;').
name_ref(m_copy_39, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;').
name_ref(m_copy_40, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_copy_41, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_copy_42, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_copy_43, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/Writer;)I|Ljava/io/IOException;').
name_ref(m_copy_large_32, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J|Ljava/io/IOException;').
name_ref(m_copy_large_34, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;').
name_ref(m_copy_large_45, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;').
name_ref(m_copy_large_46, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;').
name_ref(m_copy_large_47, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J|Ljava/io/IOException;').
name_ref(m_copy_large_48, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;').
name_ref(m_copy_large_49, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;').
name_ref(m_copy_large_50, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;').
name_ref(m_create_file_231, method, 'createFile', 'Lorg/apache/commons/io/test/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;').
name_ref(m_create_line_based_file_234, method, 'createLineBasedFile', 'Lorg/apache/commons/io/test/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_delete_file_242, method, 'deleteFile', 'Lorg/apache/commons/io/test/TestUtils;.deleteFile(Ljava/io/File;)V|Ljava/lang/Exception;').
name_ref(m_flush_224, method, 'flush', 'Lorg/apache/commons/io/output/StringBuilderWriter;.flush()V').
name_ref(m_generate_test_data_148, method, 'generateTestData', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(J)[B').
name_ref(m_generate_test_data_232, method, 'generateTestData', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;').
name_ref(m_get_builder_228, method, 'getBuilder', 'Lorg/apache/commons/io/output/StringBuilderWriter;.getBuilder()Ljava/lang/StringBuilder;').
name_ref(m_ioutils_147, method, 'IOUtils', 'Lorg/apache/commons/io/IOUtils;.()V').
name_ref(m_length_51, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length([B)I').
name_ref(m_length_52, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length([C)I').
name_ref(m_length_53, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length(Ljava/lang/CharSequence;)I').
name_ref(m_length_54, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length([Ljava/lang/Object;)I').
name_ref(m_line_iterator_55, method, 'lineIterator', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;').
name_ref(m_line_iterator_56, method, 'lineIterator', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;').
name_ref(m_line_iterator_57, method, 'lineIterator', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/Reader;)Lorg/apache/commons/io/LineIterator;').
name_ref(m_max_182, method, 'max', 'Ljava/lang/Math;.max(II)I').
name_ref(m_min_201, method, 'min', 'Ljava/lang/Math;.min(II)I').
name_ref(m_need_new_buffer_180, method, 'needNewBuffer', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.needNewBuffer(I)V').
name_ref(m_new_file_235, method, 'newFile', 'Lorg/apache/commons/io/test/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;').
name_ref(m_print_writer_2, method, 'PrintWriter', 'Ljava/io/PrintWriter;.(Ljava/io/Writer;)V').
name_ref(m_println_3, method, 'println', 'Ljava/io/PrintWriter;.println()V').
name_ref(m_read_44, method, 'read', 'Ljava/io/InputStream;.read([B)I|Ljava/io/IOException;').
name_ref(m_read_58, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[B)I|Ljava/io/IOException;').
name_ref(m_read_59, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;').
name_ref(m_read_60, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I|Ljava/io/IOException;').
name_ref(m_read_61, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[C)I|Ljava/io/IOException;').
name_ref(m_read_62, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;').
name_ref(m_read_fully_63, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[B)V|Ljava/io/IOException;').
name_ref(m_read_fully_64, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;').
name_ref(m_read_fully_65, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;I)[B|Ljava/io/IOException;').
name_ref(m_read_fully_66, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V|Ljava/io/IOException;').
name_ref(m_read_fully_67, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[C)V|Ljava/io/IOException;').
name_ref(m_read_fully_68, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;').
name_ref(m_read_lines_69, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;').
name_ref(m_read_lines_70, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;').
name_ref(m_read_lines_71, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;').
name_ref(m_read_lines_72, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/Reader;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;').
name_ref(m_reset_192, method, 'reset', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.reset()V').
name_ref(m_reset_211, method, 'reset', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.reset()V').
name_ref(m_reset_impl_193, method, 'resetImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.resetImpl()V').
name_ref(m_resource_to_byte_array_73, method, 'resourceToByteArray', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;)[B|Ljava/io/IOException;').
name_ref(m_resource_to_byte_array_74, method, 'resourceToByteArray', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;Ljava/lang/ClassLoader;)[B|Ljava/io/IOException;').
name_ref(m_resource_to_string_75, method, 'resourceToString', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_resource_to_string_76, method, 'resourceToString', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_resource_to_url_77, method, 'resourceToURL', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;)Ljava/net/URL;|Ljava/io/IOException;').
name_ref(m_resource_to_url_78, method, 'resourceToURL', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;|Ljava/io/IOException;').
name_ref(m_size_181, method, 'size', 'Ljava/util/List;.size()I').
name_ref(m_size_190, method, 'size', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.size()I').
name_ref(m_size_210, method, 'size', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.size()I').
name_ref(m_skip_79, method, 'skip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;J)J|Ljava/io/IOException;').
name_ref(m_skip_80, method, 'skip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/nio/channels/ReadableByteChannel;J)J|Ljava/io/IOException;').
name_ref(m_skip_81, method, 'skip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/Reader;J)J|Ljava/io/IOException;').
name_ref(m_skip_fully_82, method, 'skipFully', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;J)V|Ljava/io/IOException;').
name_ref(m_skip_fully_83, method, 'skipFully', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/nio/channels/ReadableByteChannel;J)V|Ljava/io/IOException;').
name_ref(m_skip_fully_84, method, 'skipFully', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/Reader;J)V|Ljava/io/IOException;').
name_ref(m_sleep_243, method, 'sleep', 'Lorg/apache/commons/io/test/TestUtils;.sleep(J)V|Ljava/lang/InterruptedException;').
name_ref(m_sleep_quietly_244, method, 'sleepQuietly', 'Lorg/apache/commons/io/test/TestUtils;.sleepQuietly(J)V').
name_ref(m_string_builder_218, method, 'StringBuilder', 'Ljava/lang/StringBuilder;.(I)V').
name_ref(m_string_builder_writer_1, method, 'StringBuilderWriter', 'Lorg/apache/commons/io/output/StringBuilderWriter;.(I)V').
name_ref(m_string_builder_writer_217, method, 'StringBuilderWriter', 'Lorg/apache/commons/io/output/StringBuilderWriter;.()V').
name_ref(m_string_builder_writer_219, method, 'StringBuilderWriter', 'Lorg/apache/commons/io/output/StringBuilderWriter;.(Ljava/lang/StringBuilder;)V').
name_ref(m_test_copy_input_stream_to_output_stream_149, method, 'testCopy_inputStreamToOutputStream', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToOutputStream()V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_output_stream__io84_150, method, 'testCopy_inputStreamToOutputStream_IO84', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToOutputStream_IO84()V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_output_stream_null_in_151, method, 'testCopy_inputStreamToOutputStream_nullIn', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToOutputStream_nullIn()V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_output_stream_null_out_154, method, 'testCopy_inputStreamToOutputStream_nullOut', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToOutputStream_nullOut()V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_output_stream_with_buffer_size_155, method, 'testCopy_inputStreamToOutputStreamWithBufferSize', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToOutputStreamWithBufferSize()V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_output_stream_with_buffer_size_156, method, 'testCopy_inputStreamToOutputStreamWithBufferSize', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToOutputStreamWithBufferSize(I)V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_writer_157, method, 'testCopy_inputStreamToWriter', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToWriter()V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_writer__encoding_158, method, 'testCopy_inputStreamToWriter_Encoding', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToWriter_Encoding()V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_writer__encoding_null_encoding_159, method, 'testCopy_inputStreamToWriter_Encoding_nullEncoding', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToWriter_Encoding_nullEncoding()V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_writer__encoding_null_in_160, method, 'testCopy_inputStreamToWriter_Encoding_nullIn', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToWriter_Encoding_nullIn()V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_writer__encoding_null_out_161, method, 'testCopy_inputStreamToWriter_Encoding_nullOut', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToWriter_Encoding_nullOut()V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_writer_null_in_162, method, 'testCopy_inputStreamToWriter_nullIn', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToWriter_nullIn()V|Ljava/lang/Exception;').
name_ref(m_test_copy_input_stream_to_writer_null_out_163, method, 'testCopy_inputStreamToWriter_nullOut', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_inputStreamToWriter_nullOut()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_appendable_164, method, 'testCopy_readerToAppendable', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToAppendable()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_appendable__io84_165, method, 'testCopy_readerToAppendable_IO84', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToAppendable_IO84()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_appendable_null_in_166, method, 'testCopy_readerToAppendable_nullIn', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToAppendable_nullIn()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_appendable_null_out_167, method, 'testCopy_readerToAppendable_nullOut', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToAppendable_nullOut()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_output_stream_168, method, 'testCopy_readerToOutputStream', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToOutputStream()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_output_stream__encoding_169, method, 'testCopy_readerToOutputStream_Encoding', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToOutputStream_Encoding()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_output_stream__encoding_null_encoding_170, method, 'testCopy_readerToOutputStream_Encoding_nullEncoding', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToOutputStream_Encoding_nullEncoding()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_output_stream__encoding_null_in_171, method, 'testCopy_readerToOutputStream_Encoding_nullIn', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToOutputStream_Encoding_nullIn()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_output_stream__encoding_null_out_172, method, 'testCopy_readerToOutputStream_Encoding_nullOut', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToOutputStream_Encoding_nullOut()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_output_stream_null_in_173, method, 'testCopy_readerToOutputStream_nullIn', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToOutputStream_nullIn()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_output_stream_null_out_174, method, 'testCopy_readerToOutputStream_nullOut', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToOutputStream_nullOut()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_writer_175, method, 'testCopy_readerToWriter', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToWriter()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_writer__io84_176, method, 'testCopy_readerToWriter_IO84', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToWriter_IO84()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_writer_null_in_177, method, 'testCopy_readerToWriter_nullIn', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToWriter_nullIn()V|Ljava/lang/Exception;').
name_ref(m_test_copy_reader_to_writer_null_out_178, method, 'testCopy_readerToWriter_nullOut', 'Lorg/apache/commons/io/IOUtilsCopyTestCase;.testCopy_readerToWriter_nullOut()V|Ljava/lang/Exception;').
name_ref(m_test_utils_230, method, 'TestUtils', 'Lorg/apache/commons/io/test/TestUtils;.()V').
name_ref(m_to_buffered_input_stream_213, method, 'toBufferedInputStream', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_buffered_input_stream_214, method, 'toBufferedInputStream', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_buffered_input_stream_85, method, 'toBufferedInputStream', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_buffered_input_stream_86, method, 'toBufferedInputStream', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_buffered_reader_87, method, 'toBufferedReader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;').
name_ref(m_to_buffered_reader_88, method, 'toBufferedReader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;I)Ljava/io/BufferedReader;').
name_ref(m_to_byte_array_199, method, 'toByteArray', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArray()[B').
name_ref(m_to_byte_array_216, method, 'toByteArray', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toByteArray()[B').
name_ref(m_to_byte_array_89, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_90, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;I)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_91, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;J)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_92, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_93, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_94, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_95, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/lang/String;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_96, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URI;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_97, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URL;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_98, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URLConnection;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_impl_200, method, 'toByteArrayImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B').
name_ref(m_to_char_array_100, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C|Ljava/io/IOException;').
name_ref(m_to_char_array_101, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C|Ljava/io/IOException;').
name_ref(m_to_char_array_102, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/Reader;)[C|Ljava/io/IOException;').
name_ref(m_to_char_array_99, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;)[C|Ljava/io/IOException;').
name_ref(m_to_input_stream_103, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_104, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_105, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_input_stream_106, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_107, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_108, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_input_stream_196, method, 'toInputStream', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toInputStream()Ljava/io/InputStream;').
name_ref(m_to_input_stream_197, method, 'toInputStream', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toInputStream<T:Ljava/io/InputStream;>(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor<TT;>;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_215, method, 'toInputStream', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.toInputStream()Ljava/io/InputStream;').
name_ref(m_to_string_109, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString([B)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_110, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString([BLjava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_111, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_112, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_113, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_114, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/Reader;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_115, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_116, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_117, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_118, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_119, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_120, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_203, method, 'toString', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toString()Ljava/lang/String;').
name_ref(m_to_string_204, method, 'toString', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toString(Ljava/lang/String;)Ljava/lang/String;|Ljava/io/UnsupportedEncodingException;').
name_ref(m_to_string_205, method, 'toString', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toString(Ljava/nio/charset/Charset;)Ljava/lang/String;').
name_ref(m_to_string_229, method, 'toString', 'Ljava/lang/StringBuilder;.toString()Ljava/lang/String;').
name_ref(m_to_string_4, method, 'toString', 'Lorg/apache/commons/io/output/StringBuilderWriter;.toString()Ljava/lang/String;').
name_ref(m_write_121, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_122, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_123, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_124, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_125, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_126, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_127, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_128, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_129, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_130, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_131, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_132, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_133, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_134, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_135, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_136, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_137, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_138, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_139, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_184, method, 'write', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write([BII)V').
name_ref(m_write_186, method, 'write', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write(I)V').
name_ref(m_write_188, method, 'write', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.write(Ljava/io/InputStream;)I|Ljava/io/IOException;').
name_ref(m_write_207, method, 'write', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write([BII)V').
name_ref(m_write_208, method, 'write', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write(I)V').
name_ref(m_write_209, method, 'write', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.write(Ljava/io/InputStream;)I|Ljava/io/IOException;').
name_ref(m_write_225, method, 'write', 'Lorg/apache/commons/io/output/StringBuilderWriter;.write(Ljava/lang/String;)V').
name_ref(m_write_227, method, 'write', 'Lorg/apache/commons/io/output/StringBuilderWriter;.write([CII)V').
name_ref(m_write_233, method, 'write', 'Ljava/io/OutputStream;.write(I)V|Ljava/io/IOException;').
name_ref(m_write_chunked_140, method, 'writeChunked', 'Lorg/apache/commons/io/IOUtils;.writeChunked([BLjava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_chunked_141, method, 'writeChunked', 'Lorg/apache/commons/io/IOUtils;.writeChunked([CLjava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_impl_185, method, 'writeImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl([BII)V').
name_ref(m_write_impl_187, method, 'writeImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl(I)V').
name_ref(m_write_impl_189, method, 'writeImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeImpl(Ljava/io/InputStream;)I|Ljava/io/IOException;').
name_ref(m_write_lines_142, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_lines_143, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_lines_144, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_lines_145, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_to_194, method, 'writeTo', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeTo(Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_to_212, method, 'writeTo', 'Lorg/apache/commons/io/output/ByteArrayOutputStream;.writeTo(Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_to_impl_195, method, 'writeToImpl', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.writeToImpl(Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_writer_146, method, 'writer', 'Lorg/apache/commons/io/IOUtils;.writer(Ljava/lang/Appendable;)Ljava/io/Writer;').
name_ref(q_length_2, q_name, 'currentBuffer.length', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.currentBuffer)[B:.length)I').
name_ref(q_length_3, q_name, 'buf.length', 'Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;.toByteArrayImpl()[B#0#buf:.length)I').
name_ref(q_separator_char_1, q_name, 'File.separatorChar', 'Ljava/io/File;:Ljava/io/File;.separatorChar)C').

%%% End of Code Facts

