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
trace(trace_6, trace_5, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_7, trace_6, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_8, trace_7, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_input_41, null, line(ioutils_1, 858)).
val(p_input_44, null, line(ioutils_1, 882)).
val(p_input_70, null, line(ioutils_1, 1137)).
val(p_input_73, null, line(ioutils_1, 1160)).



%%% End of Facts