%%% Logic-FL Facts
:- style_check(-discontiguous).

%abstract_supplier_1 - org.apache.commons.io.build.AbstractSupplier
return(abstract_supplier_1_expr1, m_as_this_72, line(abstract_supplier_1, 38)).
assign(abstract_supplier_1_expr1, abstract_supplier_1_expr2, line(abstract_supplier_1, 38)).

%path_utils_1 - org.apache.commons.io.file.PathUtils
param(p_dir_1_79, 1, m_relative_sorted_paths_97).
param(p_dir_2_80, 2, m_relative_sorted_paths_97).
param(p_max_depth_81, 3, m_relative_sorted_paths_97).
param(p_link_options_82, 4, m_relative_sorted_paths_97).
param(p_file_visit_options_83, 5, m_relative_sorted_paths_97).
throw(m_relative_sorted_paths_97, ioexception).
assign(f_open_options_truncate_84, path_utils_1_expr1, line(path_utils_1, 151)).
ref(t_standard_open_option_14, q_create_3, line(path_utils_1, 151)).
ref(t_standard_open_option_14, q_truncate_existing_4, line(path_utils_1, 151)).
assign(f_open_options_append_85, path_utils_1_expr2, line(path_utils_1, 153)).
ref(t_standard_open_option_14, q_create_5, line(path_utils_1, 153)).
ref(t_standard_open_option_14, q_append_5, line(path_utils_1, 153)).
assign(f_empty_copy_options_86, path_utils_1_expr3, line(path_utils_1, 160)).
assign(f_empty_delete_option_array_87, path_utils_1_expr4, line(path_utils_1, 167)).
assign(f_empty_file_attribute_array_88, path_utils_1_expr5, line(path_utils_1, 174)).
assign(f_empty_file_visit_option_array_89, path_utils_1_expr6, line(path_utils_1, 179)).
assign(f_empty_link_option_array_90, path_utils_1_expr7, line(path_utils_1, 184)).
assign(f_nofollow_link_option_array_91, path_utils_1_expr8, line(path_utils_1, 193)).
ref(t_link_option_15, q_nofollow_links_6, line(path_utils_1, 193)).
assign(f_null_link_option_92, path_utils_1_literal1, line(path_utils_1, 200)).
assign(f_empty_open_option_array_93, path_utils_1_expr9, line(path_utils_1, 205)).
assign(f_empty_path_array_94, path_utils_1_expr10, line(path_utils_1, 212)).
param(p_directory_95, 1, m_accumulate_98).
param(p_max_depth_96, 2, m_accumulate_98).
param(p_file_visit_options_97, 3, m_accumulate_98).
throw(m_accumulate_98, ioexception).
param(p_directory_98, 1, m_clean_directory_99).
throw(m_clean_directory_99, ioexception).
param(p_directory_99, 1, m_clean_directory_100).
param(p_delete_options_100, 2, m_clean_directory_100).
throw(m_clean_directory_100, ioexception).
param(p_file_101, 1, m_compare_last_modified_time_to_101).
param(p_file_time_102, 2, m_compare_last_modified_time_to_101).
param(p_options_103, 3, m_compare_last_modified_time_to_101).
throw(m_compare_last_modified_time_to_101, ioexception).
param(p_in_104, 1, m_copy_102).
param(p_target_105, 2, m_copy_102).
param(p_copy_options_106, 3, m_copy_102).
throw(m_copy_102, ioexception).
param(p_source_directory_107, 1, m_copy_directory_103).
param(p_target_directory_108, 2, m_copy_directory_103).
param(p_copy_options_109, 3, m_copy_directory_103).
throw(m_copy_directory_103, ioexception).
param(p_source_file_110, 1, m_copy_file_104).
param(p_target_file_111, 2, m_copy_file_104).
param(p_copy_options_112, 3, m_copy_file_104).
throw(m_copy_file_104, ioexception).
param(p_source_file_113, 1, m_copy_file_to_directory_105).
param(p_target_directory_114, 2, m_copy_file_to_directory_105).
param(p_copy_options_115, 3, m_copy_file_to_directory_105).
throw(m_copy_file_to_directory_105, ioexception).
param(p_source_file_116, 1, m_copy_file_to_directory_106).
param(p_target_directory_117, 2, m_copy_file_to_directory_106).
param(p_copy_options_118, 3, m_copy_file_to_directory_106).
throw(m_copy_file_to_directory_106, ioexception).
param(p_directory_119, 1, m_count_directory_107).
throw(m_count_directory_107, ioexception).
param(p_directory_120, 1, m_count_directory_as_big_integer_108).
throw(m_count_directory_as_big_integer_108, ioexception).
param(p_path_121, 1, m_create_parent_directories_109).
param(p_attrs_122, 2, m_create_parent_directories_109).
throw(m_create_parent_directories_109, ioexception).
param(p_path_123, 1, m_create_parent_directories_110).
param(p_link_option_124, 2, m_create_parent_directories_110).
param(p_attrs_125, 3, m_create_parent_directories_110).
throw(m_create_parent_directories_110, ioexception).
param(p_path_126, 1, m_delete_112).
throw(m_delete_112, ioexception).
param(p_path_127, 1, m_delete_113).
param(p_delete_options_128, 2, m_delete_113).
throw(m_delete_113, ioexception).
param(p_path_129, 1, m_delete_114).
param(p_link_options_130, 2, m_delete_114).
param(p_delete_options_131, 3, m_delete_114).
throw(m_delete_114, ioexception).
param(p_directory_132, 1, m_delete_directory_115).
throw(m_delete_directory_115, ioexception).
param(p_directory_133, 1, m_delete_directory_116).
param(p_delete_options_134, 2, m_delete_directory_116).
throw(m_delete_directory_116, ioexception).
param(p_directory_135, 1, m_delete_directory_117).
param(p_link_options_136, 2, m_delete_directory_117).
param(p_delete_options_137, 3, m_delete_directory_117).
throw(m_delete_directory_117, ioexception).
param(p_file_138, 1, m_delete_file_118).
throw(m_delete_file_118, ioexception).
param(p_file_139, 1, m_delete_file_119).
param(p_delete_options_140, 2, m_delete_file_119).
throw(m_delete_file_119, ioexception).
param(p_file_141, 1, m_delete_file_120).
param(p_link_options_142, 2, m_delete_file_120).
param(p_delete_options_143, 3, m_delete_file_120).
throw(m_delete_file_120, no_such_file_exception).
throw(m_delete_file_120, ioexception).
param(p_path_144, 1, m_delete_on_exit_121).
param(p_path_1_145, 1, m_directory_and_file_content_equals_122).
param(p_path_2_146, 2, m_directory_and_file_content_equals_122).
throw(m_directory_and_file_content_equals_122, ioexception).
param(p_path_1_147, 1, m_directory_and_file_content_equals_123).
param(p_path_2_148, 2, m_directory_and_file_content_equals_123).
param(p_link_options_149, 3, m_directory_and_file_content_equals_123).
param(p_open_options_150, 4, m_directory_and_file_content_equals_123).
param(p_file_visit_option_151, 5, m_directory_and_file_content_equals_123).
throw(m_directory_and_file_content_equals_123, ioexception).
param(p_path_1_152, 1, m_directory_content_equals_124).
param(p_path_2_153, 2, m_directory_content_equals_124).
throw(m_directory_content_equals_124, ioexception).
param(p_path_1_154, 1, m_directory_content_equals_125).
param(p_path_2_155, 2, m_directory_content_equals_125).
param(p_max_depth_156, 3, m_directory_content_equals_125).
param(p_link_options_157, 4, m_directory_content_equals_125).
param(p_file_visit_options_158, 5, m_directory_content_equals_125).
throw(m_directory_content_equals_125, ioexception).
param(p_path_159, 1, m_exists_126).
param(p_options_160, 2, m_exists_126).
param(p_path_1_161, 1, m_file_content_equals_127).
param(p_path_2_162, 2, m_file_content_equals_127).
throw(m_file_content_equals_127, ioexception).
param(p_path_1_163, 1, m_file_content_equals_128).
param(p_path_2_164, 2, m_file_content_equals_128).
param(p_link_options_165, 3, m_file_content_equals_128).
param(p_open_options_166, 4, m_file_content_equals_128).
throw(m_file_content_equals_128, ioexception).
param(p_filter_167, 1, m_filter_129).
param(p_paths_168, 2, m_filter_129).
param(p_filter_169, 1, m_filter_paths_130).
param(p_stream_170, 2, m_filter_paths_130).
param(p_collector_171, 3, m_filter_paths_130).
param(p_source_path_172, 1, m_get_acl_entry_list_131).
throw(m_get_acl_entry_list_131, ioexception).
param(p_path_173, 1, m_get_acl_file_attribute_view_132).
param(p_options_174, 2, m_get_acl_file_attribute_view_132).
param(p_path_175, 1, m_get_dos_file_attribute_view_133).
param(p_options_176, 2, m_get_dos_file_attribute_view_133).
param(p_file_177, 1, m_get_last_modified_file_time_134).
throw(m_get_last_modified_file_time_134, ioexception).
param(p_path_178, 1, m_get_last_modified_file_time_135).
param(p_default_if_absent_179, 2, m_get_last_modified_file_time_135).
param(p_options_180, 3, m_get_last_modified_file_time_135).
throw(m_get_last_modified_file_time_135, ioexception).
param(p_path_181, 1, m_get_last_modified_file_time_136).
param(p_options_182, 2, m_get_last_modified_file_time_136).
throw(m_get_last_modified_file_time_136, ioexception).
param(p_uri_183, 1, m_get_last_modified_file_time_137).
throw(m_get_last_modified_file_time_137, ioexception).
param(p_url_184, 1, m_get_last_modified_file_time_138).
throw(m_get_last_modified_file_time_138, ioexception).
throw(m_get_last_modified_file_time_138, urisyntax_exception).
param(p_path_185, 1, m_get_last_modified_time_139).
param(p_options_186, 2, m_get_last_modified_time_139).
throw(m_get_last_modified_time_139, ioexception).
param(p_path_187, 1, m_get_parent_140).
param(p_path_188, 1, m_get_posix_file_attribute_view_141).
param(p_options_189, 2, m_get_posix_file_attribute_view_141).
param(p_path_190, 1, m_is_directory_143).
param(p_options_191, 2, m_is_directory_143).
param(p_path_192, 1, m_is_empty_144).
throw(m_is_empty_144, ioexception).
param(p_directory_193, 1, m_is_empty_directory_145).
throw(m_is_empty_directory_145, ioexception).
param(p_file_194, 1, m_is_empty_file_146).
throw(m_is_empty_file_146, ioexception).
param(p_file_195, 1, m_is_newer_147).
param(p_czdt_196, 2, m_is_newer_147).
param(p_options_197, 3, m_is_newer_147).
throw(m_is_newer_147, ioexception).
param(p_file_198, 1, m_is_newer_148).
param(p_file_time_199, 2, m_is_newer_148).
param(p_options_200, 3, m_is_newer_148).
throw(m_is_newer_148, ioexception).
param(p_file_201, 1, m_is_newer_149).
param(p_instant_202, 2, m_is_newer_149).
param(p_options_203, 3, m_is_newer_149).
throw(m_is_newer_149, ioexception).
param(p_file_204, 1, m_is_newer_150).
param(p_time_millis_205, 2, m_is_newer_150).
param(p_options_206, 3, m_is_newer_150).
throw(m_is_newer_150, ioexception).
param(p_file_207, 1, m_is_newer_151).
param(p_reference_208, 2, m_is_newer_151).
throw(m_is_newer_151, ioexception).
param(p_file_209, 1, m_is_older_152).
param(p_file_time_210, 2, m_is_older_152).
param(p_options_211, 3, m_is_older_152).
throw(m_is_older_152, ioexception).
param(p_file_212, 1, m_is_older_153).
param(p_instant_213, 2, m_is_older_153).
param(p_options_214, 3, m_is_older_153).
throw(m_is_older_153, ioexception).
param(p_file_215, 1, m_is_older_154).
param(p_time_millis_216, 2, m_is_older_154).
param(p_options_217, 3, m_is_older_154).
throw(m_is_older_154, ioexception).
param(p_file_218, 1, m_is_older_155).
param(p_reference_219, 2, m_is_older_155).
throw(m_is_older_155, ioexception).
param(p_test_220, 1, m_is_posix_156).
param(p_options_221, 2, m_is_posix_156).
param(p_path_222, 1, m_is_regular_file_157).
param(p_options_223, 2, m_is_regular_file_157).
param(p_dir_224, 1, m_new_directory_stream_158).
param(p_path_filter_225, 2, m_new_directory_stream_158).
throw(m_new_directory_stream_158, ioexception).
param(p_path_226, 1, m_new_output_stream_159).
param(p_append_227, 2, m_new_output_stream_159).
throw(m_new_output_stream_159, ioexception).
param(p_path_228, 1, m_new_output_stream_160).
param(p_link_options_229, 2, m_new_output_stream_160).
param(p_open_options_230, 3, m_new_output_stream_160).
throw(m_new_output_stream_160, ioexception).
param(p_path_231, 1, m_not_exists_162).
param(p_options_232, 2, m_not_exists_162).
param(p_delete_options_233, 1, m_override_read_only_163).
param(p_path_234, 1, m_read_attributes_164).
param(p_type_235, 2, m_read_attributes_164).
param(p_options_236, 3, m_read_attributes_164).
param(p_path_237, 1, m_read_basic_file_attributes_165).
throw(m_read_basic_file_attributes_165, ioexception).
param(p_path_238, 1, m_read_basic_file_attributes_166).
param(p_options_239, 2, m_read_basic_file_attributes_166).
param(p_path_240, 1, m_read_basic_file_attributes_unchecked_167).
param(p_path_241, 1, m_read_dos_file_attributes_168).
param(p_options_242, 2, m_read_dos_file_attributes_168).
param(p_path_243, 1, m_read_if_symbolic_link_169).
throw(m_read_if_symbolic_link_169, ioexception).
param(p_path_244, 1, m_read_os_file_attributes_170).
param(p_options_245, 2, m_read_os_file_attributes_170).
param(p_path_246, 1, m_read_posix_file_attributes_171).
param(p_options_247, 2, m_read_posix_file_attributes_171).
param(p_path_248, 1, m_read_string_172).
param(p_charset_249, 2, m_read_string_172).
throw(m_read_string_172, ioexception).
param(p_collection_250, 1, m_relativize_173).
param(p_parent_251, 2, m_relativize_173).
param(p_sort_252, 3, m_relativize_173).
param(p_comparator_253, 4, m_relativize_173).
param(p_file_254, 1, m_require_exists_174).
param(p_file_param_name_255, 2, m_require_exists_174).
param(p_options_256, 3, m_require_exists_174).
param(p_path_257, 1, m_set_dos_read_only_175).
param(p_read_only_258, 2, m_set_dos_read_only_175).
param(p_link_options_259, 3, m_set_dos_read_only_175).
throw(m_set_dos_read_only_175, ioexception).
param(p_source_file_260, 1, m_set_last_modified_time_176).
param(p_target_file_261, 2, m_set_last_modified_time_176).
throw(m_set_last_modified_time_176, ioexception).
param(p_parent_262, 1, m_set_posix_delete_permissions_177).
param(p_enable_delete_children_263, 2, m_set_posix_delete_permissions_177).
param(p_link_options_264, 3, m_set_posix_delete_permissions_177).
throw(m_set_posix_delete_permissions_177, ioexception).
param(p_path_265, 1, m_set_posix_permissions_178).
param(p_add_permissions_266, 2, m_set_posix_permissions_178).
param(p_update_permissions_267, 3, m_set_posix_permissions_178).
param(p_link_options_268, 4, m_set_posix_permissions_178).
throw(m_set_posix_permissions_178, ioexception).
param(p_path_269, 1, m_set_posix_read_only_file_179).
param(p_read_only_270, 2, m_set_posix_read_only_file_179).
param(p_link_options_271, 3, m_set_posix_read_only_file_179).
throw(m_set_posix_read_only_file_179, ioexception).
param(p_path_272, 1, m_set_read_only_180).
param(p_read_only_273, 2, m_set_read_only_180).
param(p_link_options_274, 3, m_set_read_only_180).
throw(m_set_read_only_180, ioexception).
param(p_path_275, 1, m_size_of_181).
throw(m_size_of_181, ioexception).
param(p_path_276, 1, m_size_of_as_big_integer_182).
throw(m_size_of_as_big_integer_182, ioexception).
param(p_directory_277, 1, m_size_of_directory_183).
throw(m_size_of_directory_183, ioexception).
param(p_directory_278, 1, m_size_of_directory_as_big_integer_184).
throw(m_size_of_directory_as_big_integer_184, ioexception).
param(p_file_visit_options_279, 1, m_to_file_visit_option_set_185).
param(p_file_280, 1, m_touch_186).
throw(m_touch_186, ioexception).
param(p_visitor_281, 1, m_visit_file_tree_187).
param(p_directory_282, 2, m_visit_file_tree_187).
throw(m_visit_file_tree_187, ioexception).
param(p_visitor_283, 1, m_visit_file_tree_188).
param(p_start_284, 2, m_visit_file_tree_188).
param(p_options_285, 3, m_visit_file_tree_188).
param(p_max_depth_286, 4, m_visit_file_tree_188).
throw(m_visit_file_tree_188, ioexception).
param(p_visitor_287, 1, m_visit_file_tree_189).
param(p_first_288, 2, m_visit_file_tree_189).
param(p_more_289, 3, m_visit_file_tree_189).
throw(m_visit_file_tree_189, ioexception).
param(p_visitor_290, 1, m_visit_file_tree_190).
param(p_uri_291, 2, m_visit_file_tree_190).
throw(m_visit_file_tree_190, ioexception).
param(p_file_292, 1, m_wait_for_191).
param(p_timeout_293, 2, m_wait_for_191).
param(p_options_294, 3, m_wait_for_191).
param(p_start_295, 1, m_walk_192).
param(p_path_filter_296, 2, m_walk_192).
param(p_max_depth_297, 3, m_walk_192).
param(p_read_attributes_298, 4, m_walk_192).
param(p_options_299, 5, m_walk_192).
throw(m_walk_192, ioexception).
param(p_path_300, 1, m_with_posix_file_attributes_193).
param(p_link_options_301, 2, m_with_posix_file_attributes_193).
param(p_override_read_only_302, 3, m_with_posix_file_attributes_193).
param(p_function_303, 4, m_with_posix_file_attributes_193).
throw(m_with_posix_file_attributes_193, ioexception).
param(p_path_304, 1, m_write_string_194).
param(p_char_sequence_305, 2, m_write_string_194).
param(p_charset_306, 3, m_write_string_194).
param(p_open_options_307, 4, m_write_string_194).
throw(m_write_string_194, ioexception).

%reader_input_stream_test_1 - org.apache.commons.io.input.ReaderInputStreamTest
assign(f_utf_16_334, reader_input_stream_test_1_expr1, line(reader_input_stream_test_1, 48)).
method_invoc(reader_input_stream_test_1_expr1, m_name_218, line(reader_input_stream_test_1, 48)).
ref(f_utf_16_335, reader_input_stream_test_1_expr1, line(reader_input_stream_test_1, 48)).
ref(t_standard_charsets_18, q_utf_16_7, line(reader_input_stream_test_1, 48)).
assign(f_utf_8_336, reader_input_stream_test_1_expr2, line(reader_input_stream_test_1, 49)).
method_invoc(reader_input_stream_test_1_expr2, m_name_218, line(reader_input_stream_test_1, 49)).
ref(f_utf_8_337, reader_input_stream_test_1_expr2, line(reader_input_stream_test_1, 49)).
ref(t_standard_charsets_18, q_utf_8_8, line(reader_input_stream_test_1, 49)).
assign(v_buffer_338, reader_input_stream_test_1_expr3, line(reader_input_stream_test_1, 54)).
method_invoc(reader_input_stream_test_1_expr3, m_string_builder_219, line(reader_input_stream_test_1, 54)).
assign(v_i_339, reader_input_stream_test_1_literal1, line(reader_input_stream_test_1, 55)).
method_invoc(reader_input_stream_test_1_expr7, m_append_220, line(reader_input_stream_test_1, 56)).
argument(f_test_string_340, 1, reader_input_stream_test_1_expr7).
ref(v_buffer_338, reader_input_stream_test_1_expr7, line(reader_input_stream_test_1, 56)).
assign(f_large_test_string_341, reader_input_stream_test_1_expr9, line(reader_input_stream_test_1, 58)).
method_invoc(reader_input_stream_test_1_expr9, m_to_string_221, line(reader_input_stream_test_1, 58)).
ref(v_buffer_338, reader_input_stream_test_1_expr9, line(reader_input_stream_test_1, 58)).
assign(f_random_342, reader_input_stream_test_1_expr10, line(reader_input_stream_test_1, 70)).
method_invoc(reader_input_stream_test_1_expr10, m_random_223, line(reader_input_stream_test_1, 70)).
throw(m_test_buffer_smallest_224, ioexception).
param(p_charset_name_343, 1, m_test_charset_encoder_flush_226).
param(p_data_344, 2, m_test_charset_encoder_flush_226).
throw(m_test_charset_encoder_flush_226, ioexception).
throw(m_test_charset_mismatch_infinite_loop_227, ioexception).
throw(m_test_coding_error_228, ioexception).
throw(m_test_coding_error_action_229, ioexception).
throw(m_test_construct_null_charset_230, ioexception).
throw(m_test_construct_null_charset_encoder_231, ioexception).
throw(m_test_construct_null_charset_name_encoder_232, ioexception).
throw(m_test_large_utf8with_buffered_read_233, ioexception).
throw(m_test_large_utf8with_single_byte_read_234, ioexception).
throw(m_test_read_zero_235, exception).
param(p_in_str_345, 1, m_test_read_zero_236).
param(p_input_stream_346, 2, m_test_read_zero_236).
throw(m_test_read_zero_236, ioexception).
throw(m_test_read_zero_empty_string_237, exception).
method_invoc(reader_input_stream_test_1_expr11, m_assert_not_null_239, line(reader_input_stream_test_1, 247)).
argument(reader_input_stream_test_1_expr12, 1, reader_input_stream_test_1_expr11).
method_invoc(reader_input_stream_test_1_expr12, m_get_charset_83, line(reader_input_stream_test_1, 247)).
ref(reader_input_stream_test_1_expr13, reader_input_stream_test_1_expr12, line(reader_input_stream_test_1, 247)).
method_invoc(reader_input_stream_test_1_expr13, m_set_charset_199, line(reader_input_stream_test_1, 247)).
argument(reader_input_stream_test_1_expr14, 1, reader_input_stream_test_1_expr13).
ref(reader_input_stream_test_1_expr15, reader_input_stream_test_1_expr13, line(reader_input_stream_test_1, 247)).
method_invoc(reader_input_stream_test_1_expr15, m_set_reader_76, line(reader_input_stream_test_1, 247)).
argument(reader_input_stream_test_1_expr16, 1, reader_input_stream_test_1_expr15).
ref(reader_input_stream_test_1_expr17, reader_input_stream_test_1_expr15, line(reader_input_stream_test_1, 247)).
method_invoc(reader_input_stream_test_1_expr17, m_builder_201, line(reader_input_stream_test_1, 247)).
ref(t_reader_input_stream_19, reader_input_stream_test_1_expr17, line(reader_input_stream_test_1, 247)).
method_invoc(reader_input_stream_test_1_expr16, m_string_reader_240, line(reader_input_stream_test_1, 247)).
argument(reader_input_stream_test_1_literal3, 1, reader_input_stream_test_1_expr16).
assign(reader_input_stream_test_1_expr14, reader_input_stream_test_1_literal4, line(reader_input_stream_test_1, 247)).
throw(m_test_utf16with_single_byte_read_243, ioexception).
throw(m_test_utf8with_buffered_read_244, ioexception).
throw(m_test_utf8with_single_byte_read_245, ioexception).
param(p_expected_347, 1, m_test_with_buffered_read_246).
param(p_in_348, 2, m_test_with_buffered_read_246).
throw(m_test_with_buffered_read_246, ioexception).
param(p_test_string_349, 1, m_test_with_buffered_read_247).
param(p_charset_name_350, 2, m_test_with_buffered_read_247).
throw(m_test_with_buffered_read_247, ioexception).
param(p_test_string_351, 1, m_test_with_single_byte_read_248).
param(p_charset_name_352, 2, m_test_with_single_byte_read_248).
throw(m_test_with_single_byte_read_248, ioexception).

%abstract_origin_supplier_1 - org.apache.commons.io.build.AbstractOriginSupplier
param(p_origin_40, 1, m_new_byte_array_origin_52).
param(p_origin_41, 1, m_new_char_sequence_origin_53).
param(p_origin_42, 1, m_new_file_origin_54).
param(p_origin_43, 1, m_new_file_origin_55).
param(p_origin_44, 1, m_new_input_stream_origin_56).
param(p_origin_45, 1, m_new_output_stream_origin_57).
param(p_origin_46, 1, m_new_path_origin_58).
param(p_origin_47, 1, m_new_path_origin_59).
param(p_origin_48, 1, m_new_reader_origin_60).
return(abstract_origin_supplier_1_expr1, m_new_reader_origin_60, line(abstract_origin_supplier_1, 136)).
method_invoc(abstract_origin_supplier_1_expr1, m_reader_origin_27, line(abstract_origin_supplier_1, 136)).
argument(p_origin_48, 1, abstract_origin_supplier_1_expr1).
param(p_origin_49, 1, m_new_uriorigin_61).
param(p_origin_50, 1, m_new_writer_origin_62).
param(p_origin_51, 1, m_set_byte_array_66).
param(p_origin_52, 1, m_set_char_sequence_67).
param(p_origin_53, 1, m_set_file_68).
param(p_origin_54, 1, m_set_file_69).
param(p_origin_55, 1, m_set_input_stream_70).
param(p_origin_56, 1, m_set_origin_71).
assign(f_origin_57, p_origin_56, line(abstract_origin_supplier_1, 253)).
return(abstract_origin_supplier_1_expr5, m_set_origin_71, line(abstract_origin_supplier_1, 254)).
method_invoc(abstract_origin_supplier_1_expr5, m_as_this_72, line(abstract_origin_supplier_1, 254)).
param(p_origin_58, 1, m_set_output_stream_73).
param(p_origin_59, 1, m_set_path_74).
param(p_origin_60, 1, m_set_path_75).
param(p_origin_61, 1, m_set_reader_76).
return(abstract_origin_supplier_1_expr6, m_set_reader_76, line(abstract_origin_supplier_1, 294)).
method_invoc(abstract_origin_supplier_1_expr6, m_set_origin_71, line(abstract_origin_supplier_1, 294)).
argument(abstract_origin_supplier_1_expr7, 1, abstract_origin_supplier_1_expr6).
method_invoc(abstract_origin_supplier_1_expr7, m_new_reader_origin_60, line(abstract_origin_supplier_1, 294)).
argument(p_origin_61, 1, abstract_origin_supplier_1_expr7).
param(p_origin_62, 1, m_set_uri_77).
param(p_origin_63, 1, m_set_writer_78).

%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
assign(f_charset_encoder_308, reader_input_stream_1_expr1, line(reader_input_stream_1, 103)).
method_invoc(reader_input_stream_1_expr1, m_new_encoder_196, line(reader_input_stream_1, 103)).
ref(reader_input_stream_1_expr2, reader_input_stream_1_expr1, line(reader_input_stream_1, 103)).
method_invoc(reader_input_stream_1_expr2, m_get_charset_83, line(reader_input_stream_1, 103)).
throw(m_get_197, ioexception).
param(p_charset_309, 1, m_set_charset_199).
assign(f_charset_encoder_308, reader_input_stream_1_expr4, line(reader_input_stream_1, 132)).
method_invoc(reader_input_stream_1_expr4, m_new_encoder_196, line(reader_input_stream_1, 132)).
ref(p_charset_309, reader_input_stream_1_expr4, line(reader_input_stream_1, 132)).
param(p_charset_encoder_310, 1, m_set_charset_encoder_200).
return(reader_input_stream_1_expr5, m_builder_201, line(reader_input_stream_1, 157)).
method_invoc(reader_input_stream_1_expr5, m_builder_202, line(reader_input_stream_1, 157)).
param(p_charset_encoder_311, 1, m_check_min_buffer_size_203).
param(p_buffer_size_312, 2, m_check_min_buffer_size_203).
param(p_charset_encoder_313, 1, m_min_buffer_size_204).
param(p_reader_314, 1, m_reader_input_stream_205).
param(p_reader_315, 1, m_reader_input_stream_206).
param(p_charset_316, 2, m_reader_input_stream_206).
param(p_reader_317, 1, m_reader_input_stream_207).
param(p_charset_318, 2, m_reader_input_stream_207).
param(p_buffer_size_319, 3, m_reader_input_stream_207).
param(p_reader_320, 1, m_reader_input_stream_208).
param(p_charset_encoder_321, 2, m_reader_input_stream_208).
param(p_reader_322, 1, m_reader_input_stream_209).
param(p_charset_encoder_323, 2, m_reader_input_stream_209).
param(p_buffer_size_324, 3, m_reader_input_stream_209).
param(p_reader_325, 1, m_reader_input_stream_210).
param(p_charset_name_326, 2, m_reader_input_stream_210).
param(p_reader_327, 1, m_reader_input_stream_211).
param(p_charset_name_328, 2, m_reader_input_stream_211).
param(p_buffer_size_329, 3, m_reader_input_stream_211).
throw(m_close_212, ioexception).
throw(m_fill_buffer_213, ioexception).
throw(m_read_215, ioexception).
param(p_b_330, 1, m_read_216).
throw(m_read_216, ioexception).
param(p_array_331, 1, m_read_217).
param(p_off_332, 2, m_read_217).
param(p_len_333, 3, m_read_217).
throw(m_read_217, ioexception).

%abstract_stream_builder_1 - org.apache.commons.io.build.AbstractStreamBuilder
assign(f_default_open_options_64, q_empty_open_option_array_1, line(abstract_stream_builder_1, 41)).
ref(t_path_utils_8, q_empty_open_option_array_1, line(abstract_stream_builder_1, 41)).
assign(f_buffer_size_65, q_default_buffer_size_2, line(abstract_stream_builder_1, 46)).
ref(t_ioutils_9, q_default_buffer_size_2, line(abstract_stream_builder_1, 46)).
assign(f_buffer_size_default_66, q_default_buffer_size_3, line(abstract_stream_builder_1, 51)).
ref(t_ioutils_9, q_default_buffer_size_3, line(abstract_stream_builder_1, 51)).
assign(f_charset_67, abstract_stream_builder_1_expr1, line(abstract_stream_builder_1, 56)).
method_invoc(abstract_stream_builder_1_expr1, m_default_charset_79, line(abstract_stream_builder_1, 56)).
ref(t_charset_10, abstract_stream_builder_1_expr1, line(abstract_stream_builder_1, 56)).
assign(f_charset_default_68, abstract_stream_builder_1_expr2, line(abstract_stream_builder_1, 61)).
method_invoc(abstract_stream_builder_1_expr2, m_default_charset_79, line(abstract_stream_builder_1, 61)).
ref(t_charset_10, abstract_stream_builder_1_expr2, line(abstract_stream_builder_1, 61)).
assign(f_open_options_69, f_default_open_options_70, line(abstract_stream_builder_1, 63)).
throw(m_get_char_sequence_82, ioexception).
return(f_charset_71, m_get_charset_83, line(abstract_stream_builder_1, 103)).
throw(m_get_input_stream_85, ioexception).
throw(m_get_output_stream_87, ioexception).
throw(m_get_writer_89, ioexception).
param(p_buffer_size_72, 1, m_set_buffer_size_90).
param(p_buffer_size_73, 1, m_set_buffer_size_91).
param(p_buffer_size_default_74, 1, m_set_buffer_size_default_92).
param(p_charset_75, 1, m_set_charset_93).
param(p_charset_76, 1, m_set_charset_94).
param(p_default_charset_77, 1, m_set_charset_default_95).
param(p_open_options_78, 1, m_set_open_options_96).

%abstract_origin_1 - org.apache.commons.io.build.AbstractOrigin
param(p_origin_1, 1, m_byte_array_origin_1).
param(p_options_2, 1, m_get_input_stream_3).
throw(m_get_input_stream_3, ioexception).
param(p_charset_3, 1, m_get_reader_4).
throw(m_get_reader_4, ioexception).
throw(m_size_5, ioexception).
param(p_origin_4, 1, m_char_sequence_origin_6).
param(p_charset_5, 1, m_get_char_sequence_8).
param(p_options_6, 1, m_get_input_stream_9).
throw(m_get_input_stream_9, ioexception).
param(p_charset_7, 1, m_get_reader_10).
throw(m_get_reader_10, ioexception).
throw(m_size_11, ioexception).
param(p_origin_8, 1, m_file_origin_12).
param(p_position_9, 1, m_get_byte_array_13).
param(p_length_10, 2, m_get_byte_array_13).
throw(m_get_byte_array_13, ioexception).
param(p_origin_11, 1, m_input_stream_origin_16).
throw(m_get_byte_array_17, ioexception).
param(p_options_12, 1, m_get_input_stream_18).
param(p_charset_13, 1, m_get_reader_19).
throw(m_get_reader_19, ioexception).
param(p_origin_14, 1, m_output_stream_origin_20).
param(p_options_15, 1, m_get_output_stream_21).
param(p_charset_16, 1, m_get_writer_22).
param(p_options_17, 2, m_get_writer_22).
throw(m_get_writer_22, ioexception).
param(p_origin_18, 1, m_path_origin_23).
param(p_position_19, 1, m_get_byte_array_24).
param(p_length_20, 2, m_get_byte_array_24).
throw(m_get_byte_array_24, ioexception).
param(p_origin_21, 1, m_reader_origin_27).
method_invoc(abstract_origin_1_expr1, m_abstract_origin_28, line(abstract_origin_1, 294)).
argument(p_origin_21, 1, abstract_origin_1_expr1).
throw(m_get_byte_array_29, ioexception).
param(p_charset_22, 1, m_get_char_sequence_30).
throw(m_get_char_sequence_30, ioexception).
param(p_options_23, 1, m_get_input_stream_31).
throw(m_get_input_stream_31, ioexception).
param(p_charset_24, 1, m_get_reader_32).
throw(m_get_reader_32, ioexception).
param(p_origin_25, 1, m_uriorigin_33).
param(p_origin_26, 1, m_writer_origin_36).
param(p_options_27, 1, m_get_output_stream_37).
throw(m_get_output_stream_37, ioexception).
param(p_charset_28, 1, m_get_writer_38).
param(p_options_29, 2, m_get_writer_38).
throw(m_get_writer_38, ioexception).
param(p_origin_30, 1, m_abstract_origin_28).
assign(f_origin_31, abstract_origin_1_expr4, line(abstract_origin_1, 388)).
method_invoc(abstract_origin_1_expr4, m_require_non_null_39, line(abstract_origin_1, 388)).
argument(p_origin_30, 1, abstract_origin_1_expr4).
argument(abstract_origin_1_literal1, 2, abstract_origin_1_expr4).
ref(t_objects_1, abstract_origin_1_expr4, line(abstract_origin_1, 388)).
throw(m_get_byte_array_41, ioexception).
param(p_position_32, 1, m_get_byte_array_42).
param(p_length_33, 2, m_get_byte_array_42).
throw(m_get_byte_array_42, ioexception).
param(p_charset_34, 1, m_get_char_sequence_43).
throw(m_get_char_sequence_43, ioexception).
param(p_options_35, 1, m_get_input_stream_45).
throw(m_get_input_stream_45, ioexception).
param(p_options_36, 1, m_get_output_stream_46).
throw(m_get_output_stream_46, ioexception).
param(p_charset_37, 1, m_get_reader_48).
throw(m_get_reader_48, ioexception).
param(p_charset_38, 1, m_get_writer_49).
param(p_options_39, 2, m_get_writer_49).
throw(m_get_writer_49, ioexception).
throw(m_size_50, ioexception).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.input.ReaderInputStreamTest', 'testResetCharset').
trace(trace_1, failure_1, m_set_charset_199, line(reader_input_stream_1, 132), failure_1, target).
trace(trace_2, trace_1, m_test_reset_charset_238, line(reader_input_stream_test_1, 247), failure_1, target).
trace(trace_3, trace_2, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_4, trace_3, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_5, trace_4, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_1, non_target).
trace(trace_6, trace_5, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_1, non_target).
trace(trace_7, trace_6, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_1, non_target).
trace(trace_8, trace_7, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_1, non_target).
trace(trace_9, trace_8, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_1, non_target).
trace(trace_10, trace_9, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_1, non_target).
trace(trace_11, trace_10, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_1, non_target).
trace(trace_12, trace_11, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_1, non_target).
trace(trace_13, trace_12, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_1, non_target).
trace(trace_14, trace_13, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_1, non_target).
trace(trace_15, trace_14, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_1, non_target).
trace(trace_16, trace_15, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_1, non_target).
trace(trace_17, trace_16, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_1, non_target).
trace(trace_18, trace_17, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_1, non_target).
trace(trace_19, trace_18, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_1, non_target).
trace(trace_20, trace_19, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_21, trace_20, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_1, non_target).
trace(trace_22, trace_21, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_1, non_target).
trace(trace_23, trace_22, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_1, non_target).
trace(trace_24, trace_23, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_1, non_target).
trace(trace_25, trace_24, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_26, trace_25, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_27, trace_26, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_28, trace_27, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_29, trace_28, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_30, trace_29, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_31, trace_30, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_32, trace_31, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_33, trace_32, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_34, trace_33, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_35, trace_34, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_36, trace_35, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_37, trace_36, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_38, trace_37, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_39, trace_38, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_40, trace_39, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_41, trace_40, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_42, trace_41, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_43, trace_42, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_44, trace_43, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_45, trace_44, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_46, trace_45, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_47, trace_46, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_48, trace_47, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_49, trace_48, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_50, trace_49, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_51, trace_50, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_52, trace_51, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_1, non_target).
trace(trace_53, trace_52, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_1, non_target).
trace(trace_54, trace_53, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_1, non_target).
trace(trace_55, trace_54, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_1, non_target).
trace(trace_56, trace_55, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_1, non_target).
trace(trace_57, trace_56, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_1, non_target).
trace(trace_58, trace_57, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_1, non_target).
trace(trace_59, trace_58, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_1, non_target).
trace(trace_60, trace_59, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_1, non_target).
trace(trace_61, trace_60, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_1, non_target).
trace(trace_62, trace_61, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_1, non_target).
trace(trace_63, trace_62, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_1, non_target).
trace(trace_64, trace_63, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_charset_309, null, line(reader_input_stream_1, 132)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(abstract_supplier_1, 'org.apache.commons.io.build.AbstractSupplier').
class(path_utils_1, 'org.apache.commons.io.file.PathUtils').
class(reader_input_stream_test_1, 'org.apache.commons.io.input.ReaderInputStreamTest').
class(abstract_origin_supplier_1, 'org.apache.commons.io.build.AbstractOriginSupplier').
class(reader_input_stream_1, 'org.apache.commons.io.input.ReaderInputStream').
class(abstract_stream_builder_1, 'org.apache.commons.io.build.AbstractStreamBuilder').
class(abstract_origin_1, 'org.apache.commons.io.build.AbstractOrigin').

%%% Methods
%abstract_supplier_1 - org.apache.commons.io.build.AbstractSupplier
method(m_as_this_72, range(abstract_supplier_1, 1206, 239, 31, 39)).
%path_utils_1 - org.apache.commons.io.file.PathUtils
method(m_relative_sorted_paths_97, range(path_utils_1, 3646, 2858, 101, 148)).
method(m_accumulate_98, range(path_utils_1, 8231, 741, 214, 225)).
method(m_clean_directory_99, range(path_utils_1, 8978, 426, 227, 236)).
method(m_clean_directory_100, range(path_utils_1, 9410, 594, 238, 249)).
method(m_compare_last_modified_time_to_101, range(path_utils_1, 10010, 651, 251, 263)).
method(m_copy_102, range(path_utils_1, 10667, 775, 265, 279)).
method(m_copy_directory_103, range(path_utils_1, 11448, 766, 281, 294)).
method(m_copy_file_104, range(path_utils_1, 12220, 571, 296, 309)).
method(m_copy_file_to_directory_105, range(path_utils_1, 12797, 606, 311, 323)).
method(m_copy_file_to_directory_106, range(path_utils_1, 13409, 690, 325, 339)).
method(m_count_directory_107, range(path_utils_1, 14105, 456, 341, 350)).
method(m_count_directory_as_big_integer_108, range(path_utils_1, 14567, 471, 352, 362)).
method(m_create_parent_directories_109, range(path_utils_1, 15044, 708, 364, 378)).
method(m_create_parent_directories_110, range(path_utils_1, 15758, 1107, 380, 402)).
method(m_current_111, range(path_utils_1, 16871, 190, 404, 413)).
method(m_delete_112, range(path_utils_1, 17067, 860, 415, 432)).
method(m_delete_113, range(path_utils_1, 17933, 1154, 434, 454)).
method(m_delete_114, range(path_utils_1, 19093, 1254, 456, 477)).
method(m_delete_directory_115, range(path_utils_1, 20353, 419, 479, 488)).
method(m_delete_directory_116, range(path_utils_1, 20778, 834, 490, 504)).
method(m_delete_directory_117, range(path_utils_1, 21618, 687, 506, 518)).
method(m_delete_file_118, range(path_utils_1, 22311, 454, 520, 530)).
method(m_delete_file_119, range(path_utils_1, 22771, 691, 532, 545)).
method(m_delete_file_120, range(path_utils_1, 23468, 2226, 547, 598)).
method(m_delete_on_exit_121, range(path_utils_1, 25700, 250, 600, 608)).
method(m_directory_and_file_content_equals_122, range(path_utils_1, 25956, 712, 610, 621)).
method(m_directory_and_file_content_equals_123, range(path_utils_1, 26674, 2156, 623, 665)).
method(m_directory_content_equals_124, range(path_utils_1, 28836, 696, 667, 678)).
method(m_directory_content_equals_125, range(path_utils_1, 29538, 970, 680, 695)).
method(m_exists_126, range(path_utils_1, 30514, 212, 697, 700)).
method(m_file_content_equals_127, range(path_utils_1, 30732, 800, 702, 717)).
method(m_file_content_equals_128, range(path_utils_1, 31538, 2351, 719, 773)).
method(m_filter_129, range(path_utils_1, 33895, 1233, 775, 806)).
method(m_filter_paths_130, range(path_utils_1, 35134, 631, 808, 821)).
method(m_get_acl_entry_list_131, range(path_utils_1, 35771, 579, 823, 834)).
method(m_get_acl_file_attribute_view_132, range(path_utils_1, 36356, 526, 836, 846)).
method(m_get_dos_file_attribute_view_133, range(path_utils_1, 36888, 526, 848, 858)).
method(m_get_last_modified_file_time_134, range(path_utils_1, 37420, 727, 860, 875)).
method(m_get_last_modified_file_time_135, range(path_utils_1, 38153, 672, 877, 889)).
method(m_get_last_modified_file_time_136, range(path_utils_1, 38831, 517, 891, 902)).
method(m_get_last_modified_file_time_137, range(path_utils_1, 39354, 438, 904, 914)).
method(m_get_last_modified_file_time_138, range(path_utils_1, 39798, 565, 916, 928)).
method(m_get_last_modified_time_139, range(path_utils_1, 40369, 205, 930, 932)).
method(m_get_parent_140, range(path_utils_1, 40580, 109, 934, 936)).
method(m_get_posix_file_attribute_view_141, range(path_utils_1, 40695, 536, 938, 948)).
method(m_get_temp_directory_142, range(path_utils_1, 41237, 268, 950, 958)).
method(m_is_directory_143, range(path_utils_1, 41511, 928, 960, 974)).
method(m_is_empty_144, range(path_utils_1, 42445, 397, 976, 985)).
method(m_is_empty_directory_145, range(path_utils_1, 42848, 858, 987, 1002)).
method(m_is_empty_file_146, range(path_utils_1, 43712, 532, 1004, 1015)).
method(m_is_newer_147, range(path_utils_1, 44250, 735, 1017, 1031)).
method(m_is_newer_148, range(path_utils_1, 44991, 764, 1033, 1049)).
method(m_is_newer_149, range(path_utils_1, 45761, 686, 1051, 1064)).
method(m_is_newer_150, range(path_utils_1, 46453, 769, 1066, 1079)).
method(m_is_newer_151, range(path_utils_1, 47228, 575, 1081, 1092)).
method(m_is_older_152, range(path_utils_1, 47809, 765, 1094, 1110)).
method(m_is_older_153, range(path_utils_1, 48580, 687, 1112, 1125)).
method(m_is_older_154, range(path_utils_1, 49273, 771, 1127, 1140)).
method(m_is_older_155, range(path_utils_1, 50050, 568, 1142, 1153)).
method(m_is_posix_156, range(path_utils_1, 50624, 441, 1155, 1165)).
method(m_is_regular_file_157, range(path_utils_1, 51071, 944, 1167, 1181)).
method(m_new_directory_stream_158, range(path_utils_1, 52021, 503, 1183, 1193)).
method(m_new_output_stream_159, range(path_utils_1, 52530, 630, 1195, 1208)).
method(m_new_output_stream_160, range(path_utils_1, 53166, 633, 1210, 1217)).
method(m_no_follow_link_option_array_161, range(path_utils_1, 53805, 308, 1219, 1226)).
method(m_not_exists_162, range(path_utils_1, 54119, 165, 1228, 1230)).
method(m_override_read_only_163, range(path_utils_1, 54290, 523, 1232, 1243)).
method(m_read_attributes_164, range(path_utils_1, 54819, 958, 1245, 1264)).
method(m_read_basic_file_attributes_165, range(path_utils_1, 55783, 523, 1266, 1278)).
method(m_read_basic_file_attributes_166, range(path_utils_1, 56312, 509, 1280, 1291)).
method(m_read_basic_file_attributes_unchecked_167, range(path_utils_1, 56827, 568, 1293, 1306)).
method(m_read_dos_file_attributes_168, range(path_utils_1, 57401, 501, 1308, 1319)).
method(m_read_if_symbolic_link_169, range(path_utils_1, 57908, 185, 1321, 1323)).
method(m_read_os_file_attributes_170, range(path_utils_1, 58099, 640, 1325, 1337)).
method(m_read_posix_file_attributes_171, range(path_utils_1, 58745, 509, 1339, 1350)).
method(m_read_string_172, range(path_utils_1, 59260, 529, 1352, 1364)).
method(m_relativize_173, range(path_utils_1, 59795, 784, 1366, 1381)).
method(m_require_exists_174, range(path_utils_1, 60585, 932, 1383, 1399)).
method(m_set_dos_read_only_175, range(path_utils_1, 61523, 397, 1401, 1408)).
method(m_set_last_modified_time_176, range(path_utils_1, 61926, 696, 1410, 1423)).
method(m_set_posix_delete_permissions_177, range(path_utils_1, 62628, 1216, 1425, 1447)).
method(m_set_posix_permissions_178, range(path_utils_1, 63850, 1134, 1449, 1472)).
method(m_set_posix_read_only_file_179, range(path_utils_1, 64990, 1204, 1474, 1499)).
method(m_set_read_only_180, range(path_utils_1, 66200, 1531, 1501, 1539)).
method(m_size_of_181, range(path_utils_1, 67737, 1053, 1541, 1559)).
method(m_size_of_as_big_integer_182, range(path_utils_1, 68796, 897, 1561, 1575)).
method(m_size_of_directory_183, range(path_utils_1, 69699, 873, 1577, 1593)).
method(m_size_of_directory_as_big_integer_184, range(path_utils_1, 70578, 589, 1595, 1606)).
method(m_to_file_visit_option_set_185, range(path_utils_1, 71173, 401, 1608, 1616)).
method(m_touch_186, range(path_utils_1, 71580, 830, 1618, 1637)).
method(m_visit_file_tree_187, range(path_utils_1, 72416, 859, 1639, 1656)).
method(m_visit_file_tree_188, range(path_utils_1, 73281, 998, 1658, 1676)).
method(m_visit_file_tree_189, range(path_utils_1, 74285, 798, 1678, 1693)).
method(m_visit_file_tree_190, range(path_utils_1, 75089, 690, 1695, 1709)).
method(m_wait_for_191, range(path_utils_1, 75785, 1617, 1711, 1750)).
method(m_walk_192, range(path_utils_1, 77408, 908, 1752, 1768)).
method(m_with_posix_file_attributes_193, range(path_utils_1, 78322, 637, 1770, 1780)).
method(m_write_string_194, range(path_utils_1, 78965, 999, 1782, 1801)).
method(m_path_utils_195, range(path_utils_1, 79970, 108, 1803, 1808)).
%reader_input_stream_test_1 - org.apache.commons.io.input.ReaderInputStreamTest
method(m_charset_data_222, range(reader_input_stream_test_1, 2431, 269, 61, 68)).
method(m_test_buffer_smallest_224, range(reader_input_stream_test_1, 2755, 768, 72, 91)).
method(m_test_buffer_too_small_225, range(reader_input_stream_test_1, 3529, 465, 93, 98)).
method(m_test_charset_encoder_flush_226, range(reader_input_stream_test_1, 4000, 700, 100, 111)).
method(m_test_charset_mismatch_infinite_loop_227, range(reader_input_stream_test_1, 4779, 514, 116, 125)).
method(m_test_coding_error_228, range(reader_input_stream_test_1, 5299, 947, 127, 143)).
method(m_test_coding_error_action_229, range(reader_input_stream_test_1, 6252, 969, 145, 162)).
method(m_test_construct_null_charset_230, range(reader_input_stream_test_1, 7227, 516, 164, 173)).
method(m_test_construct_null_charset_encoder_231, range(reader_input_stream_test_1, 7749, 530, 175, 184)).
method(m_test_construct_null_charset_name_encoder_232, range(reader_input_stream_test_1, 8285, 891, 186, 200)).
method(m_test_large_utf8with_buffered_read_233, range(reader_input_stream_test_1, 9182, 136, 202, 205)).
method(m_test_large_utf8with_single_byte_read_234, range(reader_input_stream_test_1, 9324, 140, 207, 210)).
method(m_test_read_zero_235, range(reader_input_stream_test_1, 9470, 459, 212, 222)).
method(m_test_read_zero_236, range(reader_input_stream_test_1, 9935, 400, 224, 230)).
method(m_test_read_zero_empty_string_237, range(reader_input_stream_test_1, 10341, 554, 232, 243)).
method(m_test_reset_charset_238, range(reader_input_stream_test_1, 10901, 178, 245, 248)).
method(m_test_reset_charset_encoder_241, range(reader_input_stream_test_1, 11085, 189, 250, 253)).
method(m_test_reset_charset_name_242, range(reader_input_stream_test_1, 11280, 181, 255, 258)).
method(m_test_utf16with_single_byte_read_243, range(reader_input_stream_test_1, 11467, 131, 260, 263)).
method(m_test_utf8with_buffered_read_244, range(reader_input_stream_test_1, 11604, 125, 265, 268)).
method(m_test_utf8with_single_byte_read_245, range(reader_input_stream_test_1, 11735, 129, 270, 273)).
method(m_test_with_buffered_read_246, range(reader_input_stream_test_1, 11870, 808, 275, 295)).
method(m_test_with_buffered_read_247, range(reader_input_stream_test_1, 12684, 534, 297, 305)).
method(m_test_with_single_byte_read_248, range(reader_input_stream_test_1, 13224, 556, 307, 318)).
%abstract_origin_supplier_1 - org.apache.commons.io.build.AbstractOriginSupplier
method(m_new_byte_array_origin_52, range(abstract_origin_supplier_1, 1925, 281, 48, 56)).
method(m_new_char_sequence_origin_53, range(abstract_origin_supplier_1, 2212, 317, 58, 67)).
method(m_new_file_origin_54, range(abstract_origin_supplier_1, 2535, 240, 69, 77)).
method(m_new_file_origin_55, range(abstract_origin_supplier_1, 2781, 262, 79, 87)).
method(m_new_input_stream_origin_56, range(abstract_origin_supplier_1, 3049, 292, 89, 97)).
method(m_new_output_stream_origin_57, range(abstract_origin_supplier_1, 3347, 299, 99, 107)).
method(m_new_path_origin_58, range(abstract_origin_supplier_1, 3652, 240, 109, 117)).
method(m_new_path_origin_59, range(abstract_origin_supplier_1, 3898, 273, 119, 127)).
method(m_new_reader_origin_60, range(abstract_origin_supplier_1, 4177, 256, 129, 137)).
method(m_new_uriorigin_61, range(abstract_origin_supplier_1, 4439, 235, 139, 147)).
method(m_new_writer_origin_62, range(abstract_origin_supplier_1, 4680, 248, 149, 157)).
method(m_check_origin_63, range(abstract_origin_supplier_1, 5022, 346, 164, 175)).
method(m_get_origin_64, range(abstract_origin_supplier_1, 5374, 147, 177, 184)).
method(m_has_origin_65, range(abstract_origin_supplier_1, 5527, 175, 186, 193)).
method(m_set_byte_array_66, range(abstract_origin_supplier_1, 5708, 210, 195, 203)).
method(m_set_char_sequence_67, range(abstract_origin_supplier_1, 5924, 243, 205, 214)).
method(m_set_file_68, range(abstract_origin_supplier_1, 6173, 198, 216, 224)).
method(m_set_file_69, range(abstract_origin_supplier_1, 6377, 200, 226, 234)).
method(m_set_input_stream_70, range(abstract_origin_supplier_1, 6583, 219, 236, 244)).
method(m_set_origin_71, range(abstract_origin_supplier_1, 6808, 225, 246, 255)).
method(m_set_output_stream_73, range(abstract_origin_supplier_1, 7039, 222, 257, 265)).
method(m_set_path_74, range(abstract_origin_supplier_1, 7267, 198, 267, 275)).
method(m_set_path_75, range(abstract_origin_supplier_1, 7471, 200, 277, 285)).
method(m_set_reader_76, range(abstract_origin_supplier_1, 7677, 204, 287, 295)).
method(m_set_uri_77, range(abstract_origin_supplier_1, 7887, 195, 297, 305)).
method(m_set_writer_78, range(abstract_origin_supplier_1, 8088, 204, 307, 315)).
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
method(m_get_197, range(reader_input_stream_1, 4895, 879, 105, 124)).
method(m_get_charset_encoder_198, range(reader_input_stream_1, 5784, 81, 126, 128)).
method(m_set_charset_199, range(reader_input_stream_1, 5875, 175, 130, 134)).
method(m_set_charset_encoder_200, range(reader_input_stream_1, 6060, 435, 136, 146)).
method(m_builder_201, range(reader_input_stream_1, 6508, 192, 150, 158)).
method(m_check_min_buffer_size_203, range(reader_input_stream_1, 6706, 450, 160, 167)).
method(m_min_buffer_size_204, range(reader_input_stream_1, 7162, 124, 169, 171)).
method(m_reader_input_stream_205, range(reader_input_stream_1, 7878, 437, 191, 201)).
method(m_reader_input_stream_206, range(reader_input_stream_1, 8321, 676, 203, 217)).
method(m_reader_input_stream_207, range(reader_input_stream_1, 9003, 893, 219, 240)).
method(m_reader_input_stream_208, range(reader_input_stream_1, 9902, 676, 242, 258)).
method(m_reader_input_stream_209, range(reader_input_stream_1, 10584, 1084, 260, 282)).
method(m_reader_input_stream_210, range(reader_input_stream_1, 11674, 668, 284, 298)).
method(m_reader_input_stream_211, range(reader_input_stream_1, 12348, 723, 300, 315)).
method(m_close_212, range(reader_input_stream_1, 13077, 251, 317, 325)).
method(m_fill_buffer_213, range(reader_input_stream_1, 13334, 1205, 327, 356)).
method(m_get_charset_encoder_214, range(reader_input_stream_1, 14545, 163, 358, 365)).
method(m_read_215, range(reader_input_stream_1, 14714, 516, 367, 384)).
method(m_read_216, range(reader_input_stream_1, 15236, 381, 386, 396)).
method(m_read_217, range(reader_input_stream_1, 15623, 1375, 398, 431)).
%abstract_stream_builder_1 - org.apache.commons.io.build.AbstractStreamBuilder
method(m_get_buffer_size_80, range(abstract_stream_builder_1, 2293, 324, 65, 72)).
method(m_get_buffer_size_default_81, range(abstract_stream_builder_1, 2623, 354, 74, 81)).
method(m_get_char_sequence_82, range(abstract_stream_builder_1, 2983, 556, 83, 95)).
method(m_get_charset_83, range(abstract_stream_builder_1, 3545, 227, 97, 104)).
method(m_get_charset_default_84, range(abstract_stream_builder_1, 3778, 260, 106, 113)).
method(m_get_input_stream_85, range(abstract_stream_builder_1, 4044, 566, 115, 127)).
method(m_get_open_options_86, range(abstract_stream_builder_1, 4616, 75, 129, 131)).
method(m_get_output_stream_87, range(abstract_stream_builder_1, 4697, 570, 133, 145)).
method(m_get_path_88, range(abstract_stream_builder_1, 5273, 377, 147, 158)).
method(m_get_writer_89, range(abstract_stream_builder_1, 5656, 549, 160, 172)).
method(m_set_buffer_size_90, range(abstract_stream_builder_1, 6211, 401, 174, 186)).
method(m_set_buffer_size_91, range(abstract_stream_builder_1, 6618, 366, 188, 200)).
method(m_set_buffer_size_default_92, range(abstract_stream_builder_1, 6990, 391, 202, 214)).
method(m_set_charset_93, range(abstract_stream_builder_1, 7387, 341, 216, 228)).
method(m_set_charset_94, range(abstract_stream_builder_1, 7734, 324, 230, 241)).
method(m_set_charset_default_95, range(abstract_stream_builder_1, 8064, 385, 243, 255)).
method(m_set_open_options_96, range(abstract_stream_builder_1, 8455, 615, 257, 276)).
%abstract_origin_1 - org.apache.commons.io.build.AbstractOrigin
method(m_byte_array_origin_1, range(abstract_origin_1, 2336, 213, 64, 71)).
method(m_get_byte_array_2, range(abstract_origin_1, 2559, 113, 73, 77)).
method(m_get_input_stream_3, range(abstract_origin_1, 2682, 164, 79, 82)).
method(m_get_reader_4, range(abstract_origin_1, 2856, 164, 84, 87)).
method(m_size_5, range(abstract_origin_1, 3030, 101, 89, 92)).
method(m_char_sequence_origin_6, range(abstract_origin_1, 3305, 222, 101, 108)).
method(m_get_byte_array_7, range(abstract_origin_1, 3537, 213, 110, 114)).
method(m_get_char_sequence_8, range(abstract_origin_1, 3760, 143, 116, 120)).
method(m_get_input_stream_9, range(abstract_origin_1, 3913, 493, 122, 128)).
method(m_get_reader_10, range(abstract_origin_1, 4416, 164, 130, 133)).
method(m_size_11, range(abstract_origin_1, 4590, 103, 135, 138)).
method(m_file_origin_12, range(abstract_origin_1, 4993, 206, 150, 157)).
method(m_get_byte_array_13, range(abstract_origin_1, 5209, 287, 159, 164)).
method(m_get_file_14, range(abstract_origin_1, 5506, 106, 166, 170)).
method(m_get_path_15, range(abstract_origin_1, 5622, 86, 172, 175)).
method(m_input_stream_origin_16, range(abstract_origin_1, 5963, 220, 187, 194)).
method(m_get_byte_array_17, range(abstract_origin_1, 6193, 125, 196, 199)).
method(m_get_input_stream_18, range(abstract_origin_1, 6328, 147, 201, 205)).
method(m_get_reader_19, range(abstract_origin_1, 6485, 164, 207, 210)).
method(m_output_stream_origin_20, range(abstract_origin_1, 6908, 222, 222, 229)).
method(m_get_output_stream_21, range(abstract_origin_1, 7140, 149, 231, 235)).
method(m_get_writer_22, range(abstract_origin_1, 7299, 184, 237, 240)).
method(m_path_origin_23, range(abstract_origin_1, 7782, 206, 251, 258)).
method(m_get_byte_array_24, range(abstract_origin_1, 7998, 287, 260, 265)).
method(m_get_file_25, range(abstract_origin_1, 8295, 86, 267, 270)).
method(m_get_path_26, range(abstract_origin_1, 8391, 106, 272, 276)).
method(m_reader_origin_27, range(abstract_origin_1, 8720, 210, 288, 295)).
method(m_get_byte_array_29, range(abstract_origin_1, 8940, 233, 297, 301)).
method(m_get_char_sequence_30, range(abstract_origin_1, 9183, 152, 303, 306)).
method(m_get_input_stream_31, range(abstract_origin_1, 9345, 302, 308, 312)).
method(m_get_reader_32, range(abstract_origin_1, 9657, 150, 314, 318)).
method(m_uriorigin_33, range(abstract_origin_1, 9944, 204, 326, 333)).
method(m_get_file_34, range(abstract_origin_1, 10158, 90, 335, 338)).
method(m_get_path_35, range(abstract_origin_1, 10258, 88, 340, 343)).
method(m_writer_origin_36, range(abstract_origin_1, 10569, 210, 355, 362)).
method(m_get_output_stream_37, range(abstract_origin_1, 10789, 305, 364, 368)).
method(m_get_writer_38, range(abstract_origin_1, 11104, 179, 370, 374)).
method(m_abstract_origin_28, range(abstract_origin_1, 11360, 217, 382, 389)).
method(m_get_40, range(abstract_origin_1, 11583, 133, 391, 399)).
method(m_get_byte_array_41, range(abstract_origin_1, 11722, 394, 401, 410)).
method(m_get_byte_array_42, range(abstract_origin_1, 12122, 1075, 412, 431)).
method(m_get_char_sequence_43, range(abstract_origin_1, 13203, 507, 433, 443)).
method(m_get_file_44, range(abstract_origin_1, 13716, 439, 445, 454)).
method(m_get_input_stream_45, range(abstract_origin_1, 14161, 507, 456, 466)).
method(m_get_output_stream_46, range(abstract_origin_1, 14674, 512, 468, 478)).
method(m_get_path_47, range(abstract_origin_1, 15192, 439, 480, 489)).
method(m_get_reader_48, range(abstract_origin_1, 15637, 382, 491, 500)).
method(m_get_writer_49, range(abstract_origin_1, 16025, 604, 502, 513)).
method(m_size_50, range(abstract_origin_1, 16635, 289, 515, 524)).
method(m_to_string_51, range(abstract_origin_1, 16930, 121, 526, 529)).

%%% Blocks
%abstract_supplier_1 - org.apache.commons.io.build.AbstractSupplier
block(abstract_supplier_1_block1, block, abstract_supplier_1_code14, body, range(abstract_supplier_1, 1413, 32, 37, 39)).
%path_utils_1 - org.apache.commons.io.file.PathUtils
%reader_input_stream_test_1 - org.apache.commons.io.input.ReaderInputStreamTest
block(reader_input_stream_test_1_block1, block, reader_input_stream_test_1_code16, body, range(reader_input_stream_test_1, 2223, 202, 53, 59)).
block(reader_input_stream_test_1_block2, block, reader_input_stream_test_1_stmt2, body, range(reader_input_stream_test_1, 2321, 51, 55, 57)).
block(reader_input_stream_test_1_block3, block, reader_input_stream_test_1_code29, body, range(reader_input_stream_test_1, 10942, 137, 246, 248)).
%abstract_origin_supplier_1 - org.apache.commons.io.build.AbstractOriginSupplier
block(abstract_origin_supplier_1_block1, block, abstract_origin_supplier_1_code15, body, range(abstract_origin_supplier_1, 4385, 48, 135, 137)).
block(abstract_origin_supplier_1_block2, block, abstract_origin_supplier_1_code17, body, range(abstract_origin_supplier_1, 6971, 62, 252, 255)).
block(abstract_origin_supplier_1_block3, block, abstract_origin_supplier_1_code18, body, range(abstract_origin_supplier_1, 7823, 58, 293, 295)).
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
block(reader_input_stream_1_block1, block, reader_input_stream_1_code14, body, range(reader_input_stream_1, 5942, 108, 131, 134)).
block(reader_input_stream_1_block2, block, reader_input_stream_1_code15, body, range(reader_input_stream_1, 6663, 37, 156, 158)).
%abstract_stream_builder_1 - org.apache.commons.io.build.AbstractStreamBuilder
block(abstract_stream_builder_1_block1, block, abstract_stream_builder_1_code45, body, range(abstract_stream_builder_1, 3741, 31, 102, 104)).
%abstract_origin_1 - org.apache.commons.io.build.AbstractOrigin
block(abstract_origin_1_block1, block, abstract_origin_1_code4, body, range(abstract_origin_1, 8892, 38, 293, 295)).
block(abstract_origin_1_block2, block, abstract_origin_1_code5, body, range(abstract_origin_1, 11506, 71, 387, 389)).

%%% Statements
%abstract_supplier_1 - org.apache.commons.io.build.AbstractSupplier
stmt(abstract_supplier_1_stmt1, return_statement, abstract_supplier_1_block1, (statements, 0), range(abstract_supplier_1, 1423, 16, 38, 38)).
%path_utils_1 - org.apache.commons.io.file.PathUtils
%reader_input_stream_test_1 - org.apache.commons.io.input.ReaderInputStreamTest
stmt(reader_input_stream_test_1_stmt1, variable_declaration_statement, reader_input_stream_test_1_block1, (statements, 0), range(reader_input_stream_test_1, 2233, 49, 54, 54)).
stmt(reader_input_stream_test_1_stmt2, for_statement, reader_input_stream_test_1_block1, (statements, 1), range(reader_input_stream_test_1, 2291, 81, 55, 57)).
stmt(reader_input_stream_test_1_stmt3, expression_statement, reader_input_stream_test_1_block2, (statements, 0), range(reader_input_stream_test_1, 2335, 27, 56, 56)).
stmt(reader_input_stream_test_1_stmt4, expression_statement, reader_input_stream_test_1_block1, (statements, 2), range(reader_input_stream_test_1, 2381, 38, 58, 58)).
stmt(reader_input_stream_test_1_stmt5, expression_statement, reader_input_stream_test_1_block3, (statements, 0), range(reader_input_stream_test_1, 10952, 121, 247, 247)).
%abstract_origin_supplier_1 - org.apache.commons.io.build.AbstractOriginSupplier
stmt(abstract_origin_supplier_1_stmt1, return_statement, abstract_origin_supplier_1_block1, (statements, 0), range(abstract_origin_supplier_1, 4395, 32, 136, 136)).
stmt(abstract_origin_supplier_1_stmt2, expression_statement, abstract_origin_supplier_1_block2, (statements, 0), range(abstract_origin_supplier_1, 6981, 21, 253, 253)).
stmt(abstract_origin_supplier_1_stmt3, return_statement, abstract_origin_supplier_1_block2, (statements, 1), range(abstract_origin_supplier_1, 7011, 16, 254, 254)).
stmt(abstract_origin_supplier_1_stmt4, return_statement, abstract_origin_supplier_1_block3, (statements, 0), range(abstract_origin_supplier_1, 7833, 42, 294, 294)).
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
stmt(reader_input_stream_1_stmt1, expression_statement, reader_input_stream_1_block1, (statements, 0), range(reader_input_stream_1, 5956, 38, 132, 132)).
stmt(reader_input_stream_1_stmt2, return_statement, reader_input_stream_1_block2, (statements, 0), range(reader_input_stream_1, 6673, 21, 157, 157)).
%abstract_stream_builder_1 - org.apache.commons.io.build.AbstractStreamBuilder
stmt(abstract_stream_builder_1_stmt1, return_statement, abstract_stream_builder_1_block1, (statements, 0), range(abstract_stream_builder_1, 3751, 15, 103, 103)).
%abstract_origin_1 - org.apache.commons.io.build.AbstractOrigin
stmt(abstract_origin_1_stmt1, super_constructor_invocation, abstract_origin_1_block1, (statements, 0), range(abstract_origin_1, 8906, 14, 294, 294)).
stmt(abstract_origin_1_stmt2, expression_statement, abstract_origin_1_block2, (statements, 0), range(abstract_origin_1, 11516, 55, 388, 388)).

%%% Expressions
%abstract_supplier_1 - org.apache.commons.io.build.AbstractSupplier
expr(abstract_supplier_1_expr1, cast_expression, abstract_supplier_1_stmt1, expression, range(abstract_supplier_1, 1430, 8, 38, 38), "(B)this").
expr(abstract_supplier_1_expr2, this_expression, abstract_supplier_1_expr1, expression, range(abstract_supplier_1, 1434, 4, 38, 38), "this").
%path_utils_1 - org.apache.commons.io.file.PathUtils
expr(path_utils_1_expr1, array_initializer, path_utils_1_code10, initializer, range(path_utils_1, 6574, 65, 151, 151), "{StandardOpenOption.CREATE,StandardOpenOption.TRUNCATE_EXISTING}").
expr(path_utils_1_expr2, array_initializer, path_utils_1_code18, initializer, range(path_utils_1, 6702, 54, 153, 153), "{StandardOpenOption.CREATE,StandardOpenOption.APPEND}").
expr(path_utils_1_expr3, array_initializer, path_utils_1_code26, initializer, range(path_utils_1, 6899, 2, 160, 160), "{}").
expr(path_utils_1_expr4, array_initializer, path_utils_1_code34, initializer, range(path_utils_1, 7055, 2, 167, 167), "{}").
expr(path_utils_1_expr5, array_initializer, path_utils_1_code44, initializer, range(path_utils_1, 7218, 2, 174, 174), "{}").
expr(path_utils_1_expr6, array_initializer, path_utils_1_code52, initializer, range(path_utils_1, 7357, 2, 179, 179), "{}").
expr(path_utils_1_expr7, array_initializer, path_utils_1_code60, initializer, range(path_utils_1, 7480, 2, 184, 184), "{}").
expr(path_utils_1_expr8, array_initializer, path_utils_1_code68, initializer, range(path_utils_1, 7740, 27, 193, 193), "{LinkOption.NOFOLLOW_LINKS}").
expr(path_utils_1_expr9, array_initializer, path_utils_1_code81, initializer, range(path_utils_1, 8091, 2, 205, 205), "{}").
expr(path_utils_1_expr10, array_initializer, path_utils_1_code89, initializer, range(path_utils_1, 8222, 2, 212, 212), "{}").
%reader_input_stream_test_1 - org.apache.commons.io.input.ReaderInputStreamTest
expr(reader_input_stream_test_1_expr1, method_invocation, reader_input_stream_test_1_code9, initializer, range(reader_input_stream_test_1, 1947, 30, 48, 48), "StandardCharsets.UTF_16.name()").
expr(reader_input_stream_test_1_expr2, method_invocation, reader_input_stream_test_1_code15, initializer, range(reader_input_stream_test_1, 2019, 29, 49, 49), "StandardCharsets.UTF_8.name()").
expr(reader_input_stream_test_1_expr3, class_instance_creation, reader_input_stream_test_1_code19, initializer, range(reader_input_stream_test_1, 2262, 19, 54, 54), "new StringBuilder()").
expr(reader_input_stream_test_1_expr4, variable_declaration_expression, reader_input_stream_test_1_stmt2, (initializers, 0), range(reader_input_stream_test_1, 2296, 9, 55, 55), "int i=0").
expr(reader_input_stream_test_1_expr5, infix_expression, reader_input_stream_test_1_stmt2, expression, range(reader_input_stream_test_1, 2307, 7, 55, 55), "i < 100").
expr(reader_input_stream_test_1_expr6, postfix_expression, reader_input_stream_test_1_stmt2, (updaters, 0), range(reader_input_stream_test_1, 2316, 3, 55, 55), "i++").
expr(reader_input_stream_test_1_expr7, method_invocation, reader_input_stream_test_1_stmt3, expression, range(reader_input_stream_test_1, 2335, 26, 56, 56), "buffer.append(TEST_STRING)").
expr(reader_input_stream_test_1_expr8, assignment, reader_input_stream_test_1_stmt4, expression, range(reader_input_stream_test_1, 2381, 37, 58, 58), "LARGE_TEST_STRING=buffer.toString()").
expr(reader_input_stream_test_1_expr9, method_invocation, reader_input_stream_test_1_expr8, right_hand_side, range(reader_input_stream_test_1, 2401, 17, 58, 58), "buffer.toString()").
expr(reader_input_stream_test_1_expr10, class_instance_creation, reader_input_stream_test_1_code27, initializer, range(reader_input_stream_test_1, 2736, 12, 70, 70), "new Random()").
expr(reader_input_stream_test_1_expr11, method_invocation, reader_input_stream_test_1_stmt5, expression, range(reader_input_stream_test_1, 10952, 120, 247, 247), "assertNotNull(ReaderInputStream.builder().setReader(new StringReader(\"\\uD800\")).setCharset((Charset)null).getCharset())").
expr(reader_input_stream_test_1_expr17, method_invocation, reader_input_stream_test_1_expr15, expression, range(reader_input_stream_test_1, 10966, 27, 247, 247), "ReaderInputStream.builder()").
expr(reader_input_stream_test_1_expr13, method_invocation, reader_input_stream_test_1_expr12, expression, range(reader_input_stream_test_1, 10966, 92, 247, 247), "ReaderInputStream.builder().setReader(new StringReader(\"\\uD800\")).setCharset((Charset)null)").
expr(reader_input_stream_test_1_expr15, method_invocation, reader_input_stream_test_1_expr13, expression, range(reader_input_stream_test_1, 10966, 65, 247, 247), "ReaderInputStream.builder().setReader(new StringReader(\"\\uD800\"))").
expr(reader_input_stream_test_1_expr12, method_invocation, reader_input_stream_test_1_expr11, (arguments, 0), range(reader_input_stream_test_1, 10966, 105, 247, 247), "ReaderInputStream.builder().setReader(new StringReader(\"\\uD800\")).setCharset((Charset)null).getCharset()").
expr(reader_input_stream_test_1_expr16, class_instance_creation, reader_input_stream_test_1_expr15, (arguments, 0), range(reader_input_stream_test_1, 11004, 26, 247, 247), "new StringReader(\"\\uD800\")").
expr(reader_input_stream_test_1_expr14, cast_expression, reader_input_stream_test_1_expr13, (arguments, 0), range(reader_input_stream_test_1, 11043, 14, 247, 247), "(Charset)null").
%abstract_origin_supplier_1 - org.apache.commons.io.build.AbstractOriginSupplier
expr(abstract_origin_supplier_1_expr1, class_instance_creation, abstract_origin_supplier_1_stmt1, expression, range(abstract_origin_supplier_1, 4402, 24, 136, 136), "new ReaderOrigin(origin)").
expr(abstract_origin_supplier_1_expr4, this_expression, f_origin_57, expression, range(abstract_origin_supplier_1, 6981, 4, 253, 253), "this").
expr(abstract_origin_supplier_1_expr3, field_access, abstract_origin_supplier_1_expr2, left_hand_side, range(abstract_origin_supplier_1, 6981, 11, 253, 253), "this.origin").
expr(abstract_origin_supplier_1_expr2, assignment, abstract_origin_supplier_1_stmt2, expression, range(abstract_origin_supplier_1, 6981, 20, 253, 253), "this.origin=origin").
expr(abstract_origin_supplier_1_expr5, method_invocation, abstract_origin_supplier_1_stmt3, expression, range(abstract_origin_supplier_1, 7018, 8, 254, 254), "asThis()").
expr(abstract_origin_supplier_1_expr6, method_invocation, abstract_origin_supplier_1_stmt4, expression, range(abstract_origin_supplier_1, 7840, 34, 294, 294), "setOrigin(newReaderOrigin(origin))").
expr(abstract_origin_supplier_1_expr7, method_invocation, abstract_origin_supplier_1_expr6, (arguments, 0), range(abstract_origin_supplier_1, 7850, 23, 294, 294), "newReaderOrigin(origin)").
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
expr(reader_input_stream_1_expr2, super_method_invocation, reader_input_stream_1_expr1, expression, range(reader_input_stream_1, 4853, 18, 103, 103), "super.getCharset()").
expr(reader_input_stream_1_expr1, method_invocation, reader_input_stream_1_code13, initializer, range(reader_input_stream_1, 4853, 31, 103, 103), "super.getCharset().newEncoder()").
expr(reader_input_stream_1_expr3, assignment, reader_input_stream_1_stmt1, expression, range(reader_input_stream_1, 5956, 37, 132, 132), "charsetEncoder=charset.newEncoder()").
expr(reader_input_stream_1_expr4, method_invocation, reader_input_stream_1_expr3, right_hand_side, range(reader_input_stream_1, 5973, 20, 132, 132), "charset.newEncoder()").
expr(reader_input_stream_1_expr5, class_instance_creation, reader_input_stream_1_stmt2, expression, range(reader_input_stream_1, 6680, 13, 157, 157), "new Builder()").
%abstract_stream_builder_1 - org.apache.commons.io.build.AbstractStreamBuilder
expr(abstract_stream_builder_1_expr1, method_invocation, abstract_stream_builder_1_code34, initializer, range(abstract_stream_builder_1, 2054, 24, 56, 56), "Charset.defaultCharset()").
expr(abstract_stream_builder_1_expr2, method_invocation, abstract_stream_builder_1_code38, initializer, range(abstract_stream_builder_1, 2200, 24, 61, 61), "Charset.defaultCharset()").
%abstract_origin_1 - org.apache.commons.io.build.AbstractOrigin
expr(abstract_origin_1_expr1, super_constructor_invocation, abstract_origin_1_block1, (statements, 0), range(abstract_origin_1, 8906, 14, 294, 294), "super(origin);").
expr(abstract_origin_1_expr3, field_access, abstract_origin_1_expr2, left_hand_side, range(abstract_origin_1, 11516, 11, 388, 388), "this.origin").
expr(abstract_origin_1_expr5, this_expression, f_origin_31, expression, range(abstract_origin_1, 11516, 4, 388, 388), "this").
expr(abstract_origin_1_expr2, assignment, abstract_origin_1_stmt2, expression, range(abstract_origin_1, 11516, 54, 388, 388), "this.origin=Objects.requireNonNull(origin,\"origin\")").
expr(abstract_origin_1_expr4, method_invocation, abstract_origin_1_expr2, right_hand_side, range(abstract_origin_1, 11530, 40, 388, 388), "Objects.requireNonNull(origin,\"origin\")").

%%% Names
%abstract_supplier_1 - org.apache.commons.io.build.AbstractSupplier
name(t_abstract_supplier_11, simple_name, abstract_supplier_1_code2, name, range(abstract_supplier_1, 1120, 16, 29, 29), 'AbstractSupplier').
name(t_t_12, simple_name, abstract_supplier_1_code5, name, range(abstract_supplier_1, 1137, 1, 29, 29), 'T').
name(t_b_13, simple_name, abstract_supplier_1_code6, name, range(abstract_supplier_1, 1140, 1, 29, 29), 'B').
%path_utils_1 - org.apache.commons.io.file.PathUtils
name(f_open_options_truncate_84, simple_name, path_utils_1_code10, name, range(path_utils_1, 6550, 21, 151, 151), 'OPEN_OPTIONS_TRUNCATE').
name(t_standard_open_option_14, simple_name, q_create_3, qualifier, range(path_utils_1, 6575, 18, 151, 151), 'StandardOpenOption').
name(q_create_3, qualified_name, path_utils_1_expr1, (expressions, 0), range(path_utils_1, 6575, 25, 151, 151), 'StandardOpenOption.CREATE').
name(t_standard_open_option_14, simple_name, q_truncate_existing_4, qualifier, range(path_utils_1, 6602, 18, 151, 151), 'StandardOpenOption').
name(q_truncate_existing_4, qualified_name, path_utils_1_expr1, (expressions, 1), range(path_utils_1, 6602, 36, 151, 151), 'StandardOpenOption.TRUNCATE_EXISTING').
name(f_open_options_append_85, simple_name, path_utils_1_code18, name, range(path_utils_1, 6680, 19, 153, 153), 'OPEN_OPTIONS_APPEND').
name(q_create_5, qualified_name, path_utils_1_expr2, (expressions, 0), range(path_utils_1, 6703, 25, 153, 153), 'StandardOpenOption.CREATE').
name(t_standard_open_option_14, simple_name, q_create_5, qualifier, range(path_utils_1, 6703, 18, 153, 153), 'StandardOpenOption').
name(q_append_5, qualified_name, path_utils_1_expr2, (expressions, 1), range(path_utils_1, 6730, 25, 153, 153), 'StandardOpenOption.APPEND').
name(t_standard_open_option_14, simple_name, q_append_5, qualifier, range(path_utils_1, 6730, 18, 153, 153), 'StandardOpenOption').
name(f_empty_copy_options_86, simple_name, path_utils_1_code26, name, range(path_utils_1, 6878, 18, 160, 160), 'EMPTY_COPY_OPTIONS').
name(f_empty_delete_option_array_87, simple_name, path_utils_1_code34, name, range(path_utils_1, 7027, 25, 167, 167), 'EMPTY_DELETE_OPTION_ARRAY').
name(f_empty_file_attribute_array_88, simple_name, path_utils_1_code44, name, range(path_utils_1, 7189, 26, 174, 174), 'EMPTY_FILE_ATTRIBUTE_ARRAY').
name(f_empty_file_visit_option_array_89, simple_name, path_utils_1_code52, name, range(path_utils_1, 7325, 29, 179, 179), 'EMPTY_FILE_VISIT_OPTION_ARRAY').
name(f_empty_link_option_array_90, simple_name, path_utils_1_code60, name, range(path_utils_1, 7454, 23, 184, 184), 'EMPTY_LINK_OPTION_ARRAY').
name(f_nofollow_link_option_array_91, simple_name, path_utils_1_code68, name, range(path_utils_1, 7711, 26, 193, 193), 'NOFOLLOW_LINK_OPTION_ARRAY').
name(q_nofollow_links_6, qualified_name, path_utils_1_expr8, (expressions, 0), range(path_utils_1, 7741, 25, 193, 193), 'LinkOption.NOFOLLOW_LINKS').
name(t_link_option_15, simple_name, q_nofollow_links_6, qualifier, range(path_utils_1, 7741, 10, 193, 193), 'LinkOption').
name(f_null_link_option_92, simple_name, path_utils_1_code73, name, range(path_utils_1, 7947, 16, 200, 200), 'NULL_LINK_OPTION').
name(f_empty_open_option_array_93, simple_name, path_utils_1_code81, name, range(path_utils_1, 8065, 23, 205, 205), 'EMPTY_OPEN_OPTION_ARRAY').
name(f_empty_path_array_94, simple_name, path_utils_1_code89, name, range(path_utils_1, 8203, 16, 212, 212), 'EMPTY_PATH_ARRAY').
%reader_input_stream_test_1 - org.apache.commons.io.input.ReaderInputStreamTest
name(t_reader_input_stream_test_17, simple_name, reader_input_stream_test_1_code2, name, range(reader_input_stream_test_1, 1881, 21, 46, 46), 'ReaderInputStreamTest').
name(f_utf_16_334, simple_name, reader_input_stream_test_1_code9, name, range(reader_input_stream_test_1, 1938, 6, 48, 48), 'UTF_16').
name(t_standard_charsets_18, simple_name, q_utf_16_7, qualifier, range(reader_input_stream_test_1, 1947, 16, 48, 48), 'StandardCharsets').
name(q_utf_16_7, qualified_name, reader_input_stream_test_1_expr1, expression, range(reader_input_stream_test_1, 1947, 23, 48, 48), 'StandardCharsets.UTF_16').
name(m_name_218, simple_name, reader_input_stream_test_1_expr1, name, range(reader_input_stream_test_1, 1971, 4, 48, 48), 'name').
name(f_utf_8_336, simple_name, reader_input_stream_test_1_code15, name, range(reader_input_stream_test_1, 2011, 5, 49, 49), 'UTF_8').
name(q_utf_8_8, qualified_name, reader_input_stream_test_1_expr2, expression, range(reader_input_stream_test_1, 2019, 22, 49, 49), 'StandardCharsets.UTF_8').
name(t_standard_charsets_18, simple_name, q_utf_8_8, qualifier, range(reader_input_stream_test_1, 2019, 16, 49, 49), 'StandardCharsets').
name(m_name_218, simple_name, reader_input_stream_test_1_expr2, name, range(reader_input_stream_test_1, 2042, 4, 49, 49), 'name').
name(v_buffer_338, simple_name, reader_input_stream_test_1_code19, name, range(reader_input_stream_test_1, 2253, 6, 54, 54), 'buffer').
name(v_i_339, simple_name, reader_input_stream_test_1_code22, name, range(reader_input_stream_test_1, 2300, 1, 55, 55), 'i').
name(v_i_339, simple_name, reader_input_stream_test_1_expr5, left_operand, range(reader_input_stream_test_1, 2307, 1, 55, 55), 'i').
name(v_i_339, simple_name, reader_input_stream_test_1_expr6, operand, range(reader_input_stream_test_1, 2316, 1, 55, 55), 'i').
name(v_buffer_338, simple_name, reader_input_stream_test_1_expr7, expression, range(reader_input_stream_test_1, 2335, 6, 56, 56), 'buffer').
name(m_append_220, simple_name, reader_input_stream_test_1_expr7, name, range(reader_input_stream_test_1, 2342, 6, 56, 56), 'append').
name(f_test_string_340, simple_name, reader_input_stream_test_1_expr7, (arguments, 0), range(reader_input_stream_test_1, 2349, 11, 56, 56), 'TEST_STRING').
name(f_large_test_string_341, simple_name, reader_input_stream_test_1_expr8, left_hand_side, range(reader_input_stream_test_1, 2381, 17, 58, 58), 'LARGE_TEST_STRING').
name(v_buffer_338, simple_name, reader_input_stream_test_1_expr9, expression, range(reader_input_stream_test_1, 2401, 6, 58, 58), 'buffer').
name(m_to_string_221, simple_name, reader_input_stream_test_1_expr9, name, range(reader_input_stream_test_1, 2408, 8, 58, 58), 'toString').
name(f_random_342, simple_name, reader_input_stream_test_1_code27, name, range(reader_input_stream_test_1, 2727, 6, 70, 70), 'random').
name(m_assert_not_null_239, simple_name, reader_input_stream_test_1_expr11, name, range(reader_input_stream_test_1, 10952, 13, 247, 247), 'assertNotNull').
name(t_reader_input_stream_19, simple_name, reader_input_stream_test_1_expr17, expression, range(reader_input_stream_test_1, 10966, 17, 247, 247), 'ReaderInputStream').
name(m_builder_201, simple_name, reader_input_stream_test_1_expr17, name, range(reader_input_stream_test_1, 10984, 7, 247, 247), 'builder').
name(m_set_reader_76, simple_name, reader_input_stream_test_1_expr15, name, range(reader_input_stream_test_1, 10994, 9, 247, 247), 'setReader').
name(m_set_charset_199, simple_name, reader_input_stream_test_1_expr13, name, range(reader_input_stream_test_1, 11032, 10, 247, 247), 'setCharset').
name(m_get_charset_83, simple_name, reader_input_stream_test_1_expr12, name, range(reader_input_stream_test_1, 11059, 10, 247, 247), 'getCharset').
%abstract_origin_supplier_1 - org.apache.commons.io.build.AbstractOriginSupplier
name(t_abstract_origin_supplier_2, simple_name, abstract_origin_supplier_1_code2, name, range(abstract_origin_supplier_1, 1821, 22, 46, 46), 'AbstractOriginSupplier').
name(t_t_3, simple_name, abstract_origin_supplier_1_code5, name, range(abstract_origin_supplier_1, 1844, 1, 46, 46), 'T').
name(t_b_4, simple_name, abstract_origin_supplier_1_code6, name, range(abstract_origin_supplier_1, 1847, 1, 46, 46), 'B').
name(p_origin_48, simple_name, abstract_origin_supplier_1_expr1, (arguments, 0), range(abstract_origin_supplier_1, 4419, 6, 136, 136), 'origin').
name(f_origin_57, simple_name, abstract_origin_supplier_1_expr3, name, range(abstract_origin_supplier_1, 6986, 6, 253, 253), 'origin').
name(p_origin_56, simple_name, abstract_origin_supplier_1_expr2, right_hand_side, range(abstract_origin_supplier_1, 6995, 6, 253, 253), 'origin').
name(m_as_this_72, simple_name, abstract_origin_supplier_1_expr5, name, range(abstract_origin_supplier_1, 7018, 6, 254, 254), 'asThis').
name(m_set_origin_71, simple_name, abstract_origin_supplier_1_expr6, name, range(abstract_origin_supplier_1, 7840, 9, 294, 294), 'setOrigin').
name(m_new_reader_origin_60, simple_name, abstract_origin_supplier_1_expr7, name, range(abstract_origin_supplier_1, 7850, 15, 294, 294), 'newReaderOrigin').
name(p_origin_61, simple_name, abstract_origin_supplier_1_expr7, (arguments, 0), range(abstract_origin_supplier_1, 7866, 6, 294, 294), 'origin').
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
name(t_builder_16, simple_name, reader_input_stream_1_code3, name, range(reader_input_stream_1, 4736, 7, 101, 101), 'Builder').
name(f_charset_encoder_308, simple_name, reader_input_stream_1_code13, name, range(reader_input_stream_1, 4836, 14, 103, 103), 'charsetEncoder').
name(m_get_charset_83, simple_name, reader_input_stream_1_expr2, name, range(reader_input_stream_1, 4859, 10, 103, 103), 'getCharset').
name(m_new_encoder_196, simple_name, reader_input_stream_1_expr1, name, range(reader_input_stream_1, 4872, 10, 103, 103), 'newEncoder').
name(f_charset_encoder_308, simple_name, reader_input_stream_1_expr3, left_hand_side, range(reader_input_stream_1, 5956, 14, 132, 132), 'charsetEncoder').
name(p_charset_309, simple_name, reader_input_stream_1_expr4, expression, range(reader_input_stream_1, 5973, 7, 132, 132), 'charset').
name(m_new_encoder_196, simple_name, reader_input_stream_1_expr4, name, range(reader_input_stream_1, 5981, 10, 132, 132), 'newEncoder').
%abstract_stream_builder_1 - org.apache.commons.io.build.AbstractStreamBuilder
name(t_abstract_stream_builder_5, simple_name, abstract_stream_builder_1_code2, name, range(abstract_stream_builder_1, 1360, 21, 39, 39), 'AbstractStreamBuilder').
name(t_t_6, simple_name, abstract_stream_builder_1_code5, name, range(abstract_stream_builder_1, 1382, 1, 39, 39), 'T').
name(t_b_7, simple_name, abstract_stream_builder_1_code6, name, range(abstract_stream_builder_1, 1385, 1, 39, 39), 'B').
name(f_default_open_options_64, simple_name, abstract_stream_builder_1_code22, name, range(abstract_stream_builder_1, 1502, 20, 41, 41), 'DEFAULT_OPEN_OPTIONS').
name(q_empty_open_option_array_1, qualified_name, abstract_stream_builder_1_code22, initializer, range(abstract_stream_builder_1, 1525, 33, 41, 41), 'PathUtils.EMPTY_OPEN_OPTION_ARRAY').
name(t_path_utils_8, simple_name, q_empty_open_option_array_1, qualifier, range(abstract_stream_builder_1, 1525, 9, 41, 41), 'PathUtils').
name(f_buffer_size_65, simple_name, abstract_stream_builder_1_code26, name, range(abstract_stream_builder_1, 1705, 10, 46, 46), 'bufferSize').
name(t_ioutils_9, simple_name, q_default_buffer_size_2, qualifier, range(abstract_stream_builder_1, 1718, 7, 46, 46), 'IOUtils').
name(q_default_buffer_size_2, qualified_name, abstract_stream_builder_1_code26, initializer, range(abstract_stream_builder_1, 1718, 27, 46, 46), 'IOUtils.DEFAULT_BUFFER_SIZE').
name(f_buffer_size_default_66, simple_name, abstract_stream_builder_1_code30, name, range(abstract_stream_builder_1, 1892, 17, 51, 51), 'bufferSizeDefault').
name(q_default_buffer_size_3, qualified_name, abstract_stream_builder_1_code30, initializer, range(abstract_stream_builder_1, 1912, 27, 51, 51), 'IOUtils.DEFAULT_BUFFER_SIZE').
name(t_ioutils_9, simple_name, q_default_buffer_size_3, qualifier, range(abstract_stream_builder_1, 1912, 7, 51, 51), 'IOUtils').
name(f_charset_67, simple_name, abstract_stream_builder_1_code34, name, range(abstract_stream_builder_1, 2044, 7, 56, 56), 'charset').
name(t_charset_10, simple_name, abstract_stream_builder_1_expr1, expression, range(abstract_stream_builder_1, 2054, 7, 56, 56), 'Charset').
name(m_default_charset_79, simple_name, abstract_stream_builder_1_expr1, name, range(abstract_stream_builder_1, 2062, 14, 56, 56), 'defaultCharset').
name(f_charset_default_68, simple_name, abstract_stream_builder_1_code38, name, range(abstract_stream_builder_1, 2183, 14, 61, 61), 'charsetDefault').
name(t_charset_10, simple_name, abstract_stream_builder_1_expr2, expression, range(abstract_stream_builder_1, 2200, 7, 61, 61), 'Charset').
name(m_default_charset_79, simple_name, abstract_stream_builder_1_expr2, name, range(abstract_stream_builder_1, 2208, 14, 61, 61), 'defaultCharset').
name(f_open_options_69, simple_name, abstract_stream_builder_1_code44, name, range(abstract_stream_builder_1, 2252, 11, 63, 63), 'openOptions').
name(f_default_open_options_70, simple_name, abstract_stream_builder_1_code44, initializer, range(abstract_stream_builder_1, 2266, 20, 63, 63), 'DEFAULT_OPEN_OPTIONS').
name(f_charset_71, simple_name, abstract_stream_builder_1_stmt1, expression, range(abstract_stream_builder_1, 3758, 7, 103, 103), 'charset').
%abstract_origin_1 - org.apache.commons.io.build.AbstractOrigin
name(p_origin_21, simple_name, abstract_origin_1_stmt1, (arguments, 0), range(abstract_origin_1, 8912, 6, 294, 294), 'origin').
name(m_abstract_origin_28, simple_name, abstract_origin_1_code5, name, range(abstract_origin_1, 11475, 14, 387, 387), 'AbstractOrigin').
name(p_origin_30, simple_name, abstract_origin_1_code7, name, range(abstract_origin_1, 11498, 6, 387, 387), 'origin').
name(f_origin_31, simple_name, abstract_origin_1_expr3, name, range(abstract_origin_1, 11521, 6, 388, 388), 'origin').
name(t_objects_1, simple_name, abstract_origin_1_expr4, expression, range(abstract_origin_1, 11530, 7, 388, 388), 'Objects').
name(m_require_non_null_39, simple_name, abstract_origin_1_expr4, name, range(abstract_origin_1, 11538, 14, 388, 388), 'requireNonNull').
name(p_origin_30, simple_name, abstract_origin_1_expr4, (arguments, 0), range(abstract_origin_1, 11553, 6, 388, 388), 'origin').

%%% Literals
%abstract_supplier_1 - org.apache.commons.io.build.AbstractSupplier
%path_utils_1 - org.apache.commons.io.file.PathUtils
literal(path_utils_1_literal1, null_literal, path_utils_1_code73, initializer, range(path_utils_1, 7966, 4, 200, 200), null).
%reader_input_stream_test_1 - org.apache.commons.io.input.ReaderInputStreamTest
literal(reader_input_stream_test_1_literal1, number_literal, reader_input_stream_test_1_code22, initializer, range(reader_input_stream_test_1, 2304, 1, 55, 55), 0).
literal(reader_input_stream_test_1_literal2, number_literal, reader_input_stream_test_1_expr5, right_operand, range(reader_input_stream_test_1, 2311, 3, 55, 55), 100).
literal(reader_input_stream_test_1_literal3, string_literal, reader_input_stream_test_1_expr16, (arguments, 0), range(reader_input_stream_test_1, 11021, 8, 247, 247), "\uD800").
literal(reader_input_stream_test_1_literal4, null_literal, reader_input_stream_test_1_expr14, expression, range(reader_input_stream_test_1, 11053, 4, 247, 247), null).
%abstract_origin_supplier_1 - org.apache.commons.io.build.AbstractOriginSupplier
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
%abstract_stream_builder_1 - org.apache.commons.io.build.AbstractStreamBuilder
%abstract_origin_1 - org.apache.commons.io.build.AbstractOrigin
literal(abstract_origin_1_literal1, string_literal, abstract_origin_1_expr4, (arguments, 1), range(abstract_origin_1, 11561, 8, 388, 388), "origin").

%%% Other Code Entities
%abstract_supplier_1 - org.apache.commons.io.build.AbstractSupplier
code(abstract_supplier_1_code1, compilation_unit, range(abstract_supplier_1, 0, 1449, 1, -1)).
code(abstract_supplier_1_code2, type_declaration, abstract_supplier_1_code1, (types, 0), range(abstract_supplier_1, 893, 555, 22, 41)).
code(abstract_supplier_1_code3, modifier, abstract_supplier_1_code2, (modifiers, 0), range(abstract_supplier_1, 1098, 6, 29, 29)).
code(abstract_supplier_1_code4, modifier, abstract_supplier_1_code2, (modifiers, 1), range(abstract_supplier_1, 1105, 8, 29, 29)).
code(abstract_supplier_1_code5, type_parameter, abstract_supplier_1_code2, (type_parameters, 0), range(abstract_supplier_1, 1137, 1, 29, 29)).
code(abstract_supplier_1_code6, type_parameter, abstract_supplier_1_code2, (type_parameters, 1), range(abstract_supplier_1, 1140, 32, 29, 29)).
code(abstract_supplier_1_code8, simple_type, abstract_supplier_1_code7, type, range(abstract_supplier_1, 1150, 16, 29, 29)).
code(abstract_supplier_1_code7, parameterized_type, abstract_supplier_1_code6, (type_bounds, 0), range(abstract_supplier_1, 1150, 22, 29, 29)).
code(abstract_supplier_1_code9, simple_type, abstract_supplier_1_code7, (type_arguments, 0), range(abstract_supplier_1, 1167, 1, 29, 29)).
code(abstract_supplier_1_code10, simple_type, abstract_supplier_1_code7, (type_arguments, 1), range(abstract_supplier_1, 1170, 1, 29, 29)).
code(abstract_supplier_1_code12, simple_type, abstract_supplier_1_code11, type, range(abstract_supplier_1, 1185, 10, 29, 29)).
code(abstract_supplier_1_code11, parameterized_type, abstract_supplier_1_code2, (super_interface_types, 0), range(abstract_supplier_1, 1185, 13, 29, 29)).
code(abstract_supplier_1_code13, simple_type, abstract_supplier_1_code11, (type_arguments, 0), range(abstract_supplier_1, 1196, 1, 29, 29)).
code(abstract_supplier_1_code14, method_declaration, abstract_supplier_1_code2, (body_declarations, 0), range(abstract_supplier_1, 1206, 239, 31, 39)).
code(abstract_supplier_1_code15, simple_type, abstract_supplier_1_expr1, type, range(abstract_supplier_1, 1431, 1, 38, 38)).
%path_utils_1 - org.apache.commons.io.file.PathUtils
code(path_utils_1_code1, compilation_unit, range(path_utils_1, 0, 80082, 1, -1)).
code(path_utils_1_code2, type_declaration, path_utils_1_code1, (types, 0), range(path_utils_1, 3077, 77004, 82, 1810)).
code(path_utils_1_code4, modifier, path_utils_1_code3, (modifiers, 0), range(path_utils_1, 6516, 7, 151, 151)).
code(path_utils_1_code3, field_declaration, path_utils_1_code2, (body_declarations, 1), range(path_utils_1, 6516, 124, 151, 151)).
code(path_utils_1_code5, modifier, path_utils_1_code3, (modifiers, 1), range(path_utils_1, 6524, 6, 151, 151)).
code(path_utils_1_code6, modifier, path_utils_1_code3, (modifiers, 2), range(path_utils_1, 6531, 5, 151, 151)).
code(path_utils_1_code8, simple_type, path_utils_1_code7, element_type, range(path_utils_1, 6537, 10, 151, 151)).
code(path_utils_1_code7, array_type, path_utils_1_code3, type, range(path_utils_1, 6537, 12, 151, 151)).
code(path_utils_1_code9, dimension, path_utils_1_code7, (dimensions, 0), range(path_utils_1, 6547, 2, 151, 151)).
code(path_utils_1_code10, variable_declaration_fragment, path_utils_1_code3, (fragments, 0), range(path_utils_1, 6550, 89, 151, 151)).
code(path_utils_1_code11, field_declaration, path_utils_1_code2, (body_declarations, 2), range(path_utils_1, 6646, 111, 153, 153)).
code(path_utils_1_code12, modifier, path_utils_1_code11, (modifiers, 0), range(path_utils_1, 6646, 7, 153, 153)).
code(path_utils_1_code13, modifier, path_utils_1_code11, (modifiers, 1), range(path_utils_1, 6654, 6, 153, 153)).
code(path_utils_1_code14, modifier, path_utils_1_code11, (modifiers, 2), range(path_utils_1, 6661, 5, 153, 153)).
code(path_utils_1_code16, simple_type, path_utils_1_code15, element_type, range(path_utils_1, 6667, 10, 153, 153)).
code(path_utils_1_code15, array_type, path_utils_1_code11, type, range(path_utils_1, 6667, 12, 153, 153)).
code(path_utils_1_code17, dimension, path_utils_1_code15, (dimensions, 0), range(path_utils_1, 6677, 2, 153, 153)).
code(path_utils_1_code18, variable_declaration_fragment, path_utils_1_code11, (fragments, 0), range(path_utils_1, 6680, 76, 153, 153)).
code(path_utils_1_code19, field_declaration, path_utils_1_code2, (body_declarations, 3), range(path_utils_1, 6763, 139, 155, 160)).
code(path_utils_1_code20, modifier, path_utils_1_code19, (modifiers, 0), range(path_utils_1, 6845, 6, 160, 160)).
code(path_utils_1_code21, modifier, path_utils_1_code19, (modifiers, 1), range(path_utils_1, 6852, 6, 160, 160)).
code(path_utils_1_code22, modifier, path_utils_1_code19, (modifiers, 2), range(path_utils_1, 6859, 5, 160, 160)).
code(path_utils_1_code23, array_type, path_utils_1_code19, type, range(path_utils_1, 6865, 12, 160, 160)).
code(path_utils_1_code24, simple_type, path_utils_1_code23, element_type, range(path_utils_1, 6865, 10, 160, 160)).
code(path_utils_1_code25, dimension, path_utils_1_code23, (dimensions, 0), range(path_utils_1, 6875, 2, 160, 160)).
code(path_utils_1_code26, variable_declaration_fragment, path_utils_1_code19, (fragments, 0), range(path_utils_1, 6878, 23, 160, 160)).
code(path_utils_1_code27, field_declaration, path_utils_1_code2, (body_declarations, 4), range(path_utils_1, 6908, 150, 162, 167)).
code(path_utils_1_code28, modifier, path_utils_1_code27, (modifiers, 0), range(path_utils_1, 6992, 6, 167, 167)).
code(path_utils_1_code29, modifier, path_utils_1_code27, (modifiers, 1), range(path_utils_1, 6999, 6, 167, 167)).
code(path_utils_1_code30, modifier, path_utils_1_code27, (modifiers, 2), range(path_utils_1, 7006, 5, 167, 167)).
code(path_utils_1_code32, simple_type, path_utils_1_code31, element_type, range(path_utils_1, 7012, 12, 167, 167)).
code(path_utils_1_code31, array_type, path_utils_1_code27, type, range(path_utils_1, 7012, 14, 167, 167)).
code(path_utils_1_code33, dimension, path_utils_1_code31, (dimensions, 0), range(path_utils_1, 7024, 2, 167, 167)).
code(path_utils_1_code34, variable_declaration_fragment, path_utils_1_code27, (fragments, 0), range(path_utils_1, 7027, 30, 167, 167)).
code(path_utils_1_code35, field_declaration, path_utils_1_code2, (body_declarations, 5), range(path_utils_1, 7064, 157, 169, 174)).
code(path_utils_1_code36, modifier, path_utils_1_code35, (modifiers, 0), range(path_utils_1, 7150, 6, 174, 174)).
code(path_utils_1_code37, modifier, path_utils_1_code35, (modifiers, 1), range(path_utils_1, 7157, 6, 174, 174)).
code(path_utils_1_code38, modifier, path_utils_1_code35, (modifiers, 2), range(path_utils_1, 7164, 5, 174, 174)).
code(path_utils_1_code41, simple_type, path_utils_1_code40, type, range(path_utils_1, 7170, 13, 174, 174)).
code(path_utils_1_code40, parameterized_type, path_utils_1_code39, element_type, range(path_utils_1, 7170, 16, 174, 174)).
code(path_utils_1_code39, array_type, path_utils_1_code35, type, range(path_utils_1, 7170, 18, 174, 174)).
code(path_utils_1_code42, wildcard_type, path_utils_1_code40, (type_arguments, 0), range(path_utils_1, 7184, 1, 174, 174)).
code(path_utils_1_code43, dimension, path_utils_1_code39, (dimensions, 0), range(path_utils_1, 7186, 2, 174, 174)).
code(path_utils_1_code44, variable_declaration_fragment, path_utils_1_code35, (fragments, 0), range(path_utils_1, 7189, 31, 174, 174)).
code(path_utils_1_code45, field_declaration, path_utils_1_code2, (body_declarations, 6), range(path_utils_1, 7227, 133, 176, 179)).
code(path_utils_1_code46, modifier, path_utils_1_code45, (modifiers, 0), range(path_utils_1, 7287, 6, 179, 179)).
code(path_utils_1_code47, modifier, path_utils_1_code45, (modifiers, 1), range(path_utils_1, 7294, 6, 179, 179)).
code(path_utils_1_code48, modifier, path_utils_1_code45, (modifiers, 2), range(path_utils_1, 7301, 5, 179, 179)).
code(path_utils_1_code49, array_type, path_utils_1_code45, type, range(path_utils_1, 7307, 17, 179, 179)).
code(path_utils_1_code50, simple_type, path_utils_1_code49, element_type, range(path_utils_1, 7307, 15, 179, 179)).
code(path_utils_1_code51, dimension, path_utils_1_code49, (dimensions, 0), range(path_utils_1, 7322, 2, 179, 179)).
code(path_utils_1_code52, variable_declaration_fragment, path_utils_1_code45, (fragments, 0), range(path_utils_1, 7325, 34, 179, 179)).
code(path_utils_1_code53, field_declaration, path_utils_1_code2, (body_declarations, 7), range(path_utils_1, 7366, 117, 181, 184)).
code(path_utils_1_code54, modifier, path_utils_1_code53, (modifiers, 0), range(path_utils_1, 7421, 6, 184, 184)).
code(path_utils_1_code55, modifier, path_utils_1_code53, (modifiers, 1), range(path_utils_1, 7428, 6, 184, 184)).
code(path_utils_1_code56, modifier, path_utils_1_code53, (modifiers, 2), range(path_utils_1, 7435, 5, 184, 184)).
code(path_utils_1_code58, simple_type, path_utils_1_code57, element_type, range(path_utils_1, 7441, 10, 184, 184)).
code(path_utils_1_code57, array_type, path_utils_1_code53, type, range(path_utils_1, 7441, 12, 184, 184)).
code(path_utils_1_code59, dimension, path_utils_1_code57, (dimensions, 0), range(path_utils_1, 7451, 2, 184, 184)).
code(path_utils_1_code60, variable_declaration_fragment, path_utils_1_code53, (fragments, 0), range(path_utils_1, 7454, 28, 184, 184)).
code(path_utils_1_code61, field_declaration, path_utils_1_code2, (body_declarations, 8), range(path_utils_1, 7489, 279, 186, 193)).
code(path_utils_1_code62, modifier, path_utils_1_code61, (modifiers, 1), range(path_utils_1, 7678, 6, 193, 193)).
code(path_utils_1_code63, modifier, path_utils_1_code61, (modifiers, 2), range(path_utils_1, 7685, 6, 193, 193)).
code(path_utils_1_code64, modifier, path_utils_1_code61, (modifiers, 3), range(path_utils_1, 7692, 5, 193, 193)).
code(path_utils_1_code65, array_type, path_utils_1_code61, type, range(path_utils_1, 7698, 12, 193, 193)).
code(path_utils_1_code66, simple_type, path_utils_1_code65, element_type, range(path_utils_1, 7698, 10, 193, 193)).
code(path_utils_1_code67, dimension, path_utils_1_code65, (dimensions, 0), range(path_utils_1, 7708, 2, 193, 193)).
code(path_utils_1_code68, variable_declaration_fragment, path_utils_1_code61, (fragments, 0), range(path_utils_1, 7711, 56, 193, 193)).
code(path_utils_1_code69, field_declaration, path_utils_1_code2, (body_declarations, 9), range(path_utils_1, 7774, 197, 195, 200)).
code(path_utils_1_code70, modifier, path_utils_1_code69, (modifiers, 0), range(path_utils_1, 7923, 6, 200, 200)).
code(path_utils_1_code71, modifier, path_utils_1_code69, (modifiers, 1), range(path_utils_1, 7930, 5, 200, 200)).
code(path_utils_1_code72, simple_type, path_utils_1_code69, type, range(path_utils_1, 7936, 10, 200, 200)).
code(path_utils_1_code73, variable_declaration_fragment, path_utils_1_code69, (fragments, 0), range(path_utils_1, 7947, 23, 200, 200)).
code(path_utils_1_code74, field_declaration, path_utils_1_code2, (body_declarations, 10), range(path_utils_1, 7977, 117, 202, 205)).
code(path_utils_1_code75, modifier, path_utils_1_code74, (modifiers, 0), range(path_utils_1, 8032, 6, 205, 205)).
code(path_utils_1_code76, modifier, path_utils_1_code74, (modifiers, 1), range(path_utils_1, 8039, 6, 205, 205)).
code(path_utils_1_code77, modifier, path_utils_1_code74, (modifiers, 2), range(path_utils_1, 8046, 5, 205, 205)).
code(path_utils_1_code79, simple_type, path_utils_1_code78, element_type, range(path_utils_1, 8052, 10, 205, 205)).
code(path_utils_1_code78, array_type, path_utils_1_code74, type, range(path_utils_1, 8052, 12, 205, 205)).
code(path_utils_1_code80, dimension, path_utils_1_code78, (dimensions, 0), range(path_utils_1, 8062, 2, 205, 205)).
code(path_utils_1_code81, variable_declaration_fragment, path_utils_1_code74, (fragments, 0), range(path_utils_1, 8065, 28, 205, 205)).
code(path_utils_1_code82, field_declaration, path_utils_1_code2, (body_declarations, 11), range(path_utils_1, 8100, 125, 207, 212)).
code(path_utils_1_code83, modifier, path_utils_1_code82, (modifiers, 0), range(path_utils_1, 8176, 6, 212, 212)).
code(path_utils_1_code84, modifier, path_utils_1_code82, (modifiers, 1), range(path_utils_1, 8183, 6, 212, 212)).
code(path_utils_1_code85, modifier, path_utils_1_code82, (modifiers, 2), range(path_utils_1, 8190, 5, 212, 212)).
code(path_utils_1_code87, simple_type, path_utils_1_code86, element_type, range(path_utils_1, 8196, 4, 212, 212)).
code(path_utils_1_code86, array_type, path_utils_1_code82, type, range(path_utils_1, 8196, 6, 212, 212)).
code(path_utils_1_code88, dimension, path_utils_1_code86, (dimensions, 0), range(path_utils_1, 8200, 2, 212, 212)).
code(path_utils_1_code89, variable_declaration_fragment, path_utils_1_code82, (fragments, 0), range(path_utils_1, 8203, 21, 212, 212)).
%reader_input_stream_test_1 - org.apache.commons.io.input.ReaderInputStreamTest
code(reader_input_stream_test_1_code1, compilation_unit, range(reader_input_stream_test_1, 0, 13783, 1, -1)).
code(reader_input_stream_test_1_code2, type_declaration, reader_input_stream_test_1_code1, (types, 0), range(reader_input_stream_test_1, 1868, 11914, 46, 319)).
code(reader_input_stream_test_1_code3, modifier, reader_input_stream_test_1_code2, (modifiers, 0), range(reader_input_stream_test_1, 1868, 6, 46, 46)).
code(reader_input_stream_test_1_code5, modifier, reader_input_stream_test_1_code4, (modifiers, 0), range(reader_input_stream_test_1, 1910, 7, 48, 48)).
code(reader_input_stream_test_1_code4, field_declaration, reader_input_stream_test_1_code2, (body_declarations, 0), range(reader_input_stream_test_1, 1910, 68, 48, 48)).
code(reader_input_stream_test_1_code6, modifier, reader_input_stream_test_1_code4, (modifiers, 1), range(reader_input_stream_test_1, 1918, 6, 48, 48)).
code(reader_input_stream_test_1_code7, modifier, reader_input_stream_test_1_code4, (modifiers, 2), range(reader_input_stream_test_1, 1925, 5, 48, 48)).
code(reader_input_stream_test_1_code8, simple_type, reader_input_stream_test_1_code4, type, range(reader_input_stream_test_1, 1931, 6, 48, 48)).
code(reader_input_stream_test_1_code9, variable_declaration_fragment, reader_input_stream_test_1_code4, (fragments, 0), range(reader_input_stream_test_1, 1938, 39, 48, 48)).
code(reader_input_stream_test_1_code10, field_declaration, reader_input_stream_test_1_code2, (body_declarations, 1), range(reader_input_stream_test_1, 1983, 66, 49, 49)).
code(reader_input_stream_test_1_code11, modifier, reader_input_stream_test_1_code10, (modifiers, 0), range(reader_input_stream_test_1, 1983, 7, 49, 49)).
code(reader_input_stream_test_1_code12, modifier, reader_input_stream_test_1_code10, (modifiers, 1), range(reader_input_stream_test_1, 1991, 6, 49, 49)).
code(reader_input_stream_test_1_code13, modifier, reader_input_stream_test_1_code10, (modifiers, 2), range(reader_input_stream_test_1, 1998, 5, 49, 49)).
code(reader_input_stream_test_1_code14, simple_type, reader_input_stream_test_1_code10, type, range(reader_input_stream_test_1, 2004, 6, 49, 49)).
code(reader_input_stream_test_1_code15, variable_declaration_fragment, reader_input_stream_test_1_code10, (fragments, 0), range(reader_input_stream_test_1, 2011, 37, 49, 49)).
code(reader_input_stream_test_1_code16, initializer, reader_input_stream_test_1_code2, (body_declarations, 4), range(reader_input_stream_test_1, 2216, 209, 53, 59)).
code(reader_input_stream_test_1_code17, modifier, reader_input_stream_test_1_stmt1, (modifiers, 0), range(reader_input_stream_test_1, 2233, 5, 54, 54)).
code(reader_input_stream_test_1_code18, simple_type, reader_input_stream_test_1_stmt1, type, range(reader_input_stream_test_1, 2239, 13, 54, 54)).
code(reader_input_stream_test_1_code19, variable_declaration_fragment, reader_input_stream_test_1_stmt1, (fragments, 0), range(reader_input_stream_test_1, 2253, 28, 54, 54)).
code(reader_input_stream_test_1_code20, simple_type, reader_input_stream_test_1_expr3, type, range(reader_input_stream_test_1, 2266, 13, 54, 54)).
code(reader_input_stream_test_1_code21, primitive_type, reader_input_stream_test_1_expr4, type, range(reader_input_stream_test_1, 2296, 3, 55, 55)).
code(reader_input_stream_test_1_code22, variable_declaration_fragment, reader_input_stream_test_1_expr4, (fragments, 0), range(reader_input_stream_test_1, 2300, 5, 55, 55)).
code(reader_input_stream_test_1_code23, field_declaration, reader_input_stream_test_1_code2, (body_declarations, 6), range(reader_input_stream_test_1, 2706, 43, 70, 70)).
code(reader_input_stream_test_1_code24, modifier, reader_input_stream_test_1_code23, (modifiers, 0), range(reader_input_stream_test_1, 2706, 7, 70, 70)).
code(reader_input_stream_test_1_code25, modifier, reader_input_stream_test_1_code23, (modifiers, 1), range(reader_input_stream_test_1, 2714, 5, 70, 70)).
code(reader_input_stream_test_1_code26, simple_type, reader_input_stream_test_1_code23, type, range(reader_input_stream_test_1, 2720, 6, 70, 70)).
code(reader_input_stream_test_1_code27, variable_declaration_fragment, reader_input_stream_test_1_code23, (fragments, 0), range(reader_input_stream_test_1, 2727, 21, 70, 70)).
code(reader_input_stream_test_1_code28, simple_type, reader_input_stream_test_1_expr10, type, range(reader_input_stream_test_1, 2740, 6, 70, 70)).
code(reader_input_stream_test_1_code29, method_declaration, reader_input_stream_test_1_code2, (body_declarations, 21), range(reader_input_stream_test_1, 10901, 178, 245, 248)).
code(reader_input_stream_test_1_code30, simple_type, reader_input_stream_test_1_expr16, type, range(reader_input_stream_test_1, 11008, 12, 247, 247)).
code(reader_input_stream_test_1_code31, simple_type, reader_input_stream_test_1_expr14, type, range(reader_input_stream_test_1, 11044, 7, 247, 247)).
%abstract_origin_supplier_1 - org.apache.commons.io.build.AbstractOriginSupplier
code(abstract_origin_supplier_1_code1, compilation_unit, range(abstract_origin_supplier_1, 0, 8295, 1, -1)).
code(abstract_origin_supplier_1_code2, type_declaration, abstract_origin_supplier_1_code1, (types, 0), range(abstract_origin_supplier_1, 1633, 6661, 39, 316)).
code(abstract_origin_supplier_1_code3, modifier, abstract_origin_supplier_1_code2, (modifiers, 0), range(abstract_origin_supplier_1, 1799, 6, 46, 46)).
code(abstract_origin_supplier_1_code4, modifier, abstract_origin_supplier_1_code2, (modifiers, 1), range(abstract_origin_supplier_1, 1806, 8, 46, 46)).
code(abstract_origin_supplier_1_code5, type_parameter, abstract_origin_supplier_1_code2, (type_parameters, 0), range(abstract_origin_supplier_1, 1844, 1, 46, 46)).
code(abstract_origin_supplier_1_code6, type_parameter, abstract_origin_supplier_1_code2, (type_parameters, 1), range(abstract_origin_supplier_1, 1847, 38, 46, 46)).
code(abstract_origin_supplier_1_code7, parameterized_type, abstract_origin_supplier_1_code6, (type_bounds, 0), range(abstract_origin_supplier_1, 1857, 28, 46, 46)).
code(abstract_origin_supplier_1_code8, simple_type, abstract_origin_supplier_1_code7, type, range(abstract_origin_supplier_1, 1857, 22, 46, 46)).
code(abstract_origin_supplier_1_code9, simple_type, abstract_origin_supplier_1_code7, (type_arguments, 0), range(abstract_origin_supplier_1, 1880, 1, 46, 46)).
code(abstract_origin_supplier_1_code10, simple_type, abstract_origin_supplier_1_code7, (type_arguments, 1), range(abstract_origin_supplier_1, 1883, 1, 46, 46)).
code(abstract_origin_supplier_1_code11, parameterized_type, abstract_origin_supplier_1_code2, superclass_type, range(abstract_origin_supplier_1, 1895, 22, 46, 46)).
code(abstract_origin_supplier_1_code12, simple_type, abstract_origin_supplier_1_code11, type, range(abstract_origin_supplier_1, 1895, 16, 46, 46)).
code(abstract_origin_supplier_1_code13, simple_type, abstract_origin_supplier_1_code11, (type_arguments, 0), range(abstract_origin_supplier_1, 1912, 1, 46, 46)).
code(abstract_origin_supplier_1_code14, simple_type, abstract_origin_supplier_1_code11, (type_arguments, 1), range(abstract_origin_supplier_1, 1915, 1, 46, 46)).
code(abstract_origin_supplier_1_code15, method_declaration, abstract_origin_supplier_1_code2, (body_declarations, 8), range(abstract_origin_supplier_1, 4177, 256, 129, 137)).
code(abstract_origin_supplier_1_code16, simple_type, abstract_origin_supplier_1_expr1, type, range(abstract_origin_supplier_1, 4406, 12, 136, 136)).
code(abstract_origin_supplier_1_code17, method_declaration, abstract_origin_supplier_1_code2, (body_declarations, 20), range(abstract_origin_supplier_1, 6808, 225, 246, 255)).
code(abstract_origin_supplier_1_code18, method_declaration, abstract_origin_supplier_1_code2, (body_declarations, 24), range(abstract_origin_supplier_1, 7677, 204, 287, 295)).
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
code(reader_input_stream_1_code1, compilation_unit, range(reader_input_stream_1, 0, 17001, 1, -1)).
code(reader_input_stream_1_code2, type_declaration, reader_input_stream_1_code1, (types, 0), range(reader_input_stream_1, 1447, 15553, 38, 432)).
code(reader_input_stream_1_code3, type_declaration, reader_input_stream_1_code2, (body_declarations, 0), range(reader_input_stream_1, 4374, 2128, 87, 148)).
code(reader_input_stream_1_code4, modifier, reader_input_stream_1_code3, (modifiers, 0), range(reader_input_stream_1, 4716, 6, 101, 101)).
code(reader_input_stream_1_code5, modifier, reader_input_stream_1_code3, (modifiers, 1), range(reader_input_stream_1, 4723, 6, 101, 101)).
code(reader_input_stream_1_code6, parameterized_type, reader_input_stream_1_code3, superclass_type, range(reader_input_stream_1, 4752, 49, 101, 101)).
code(reader_input_stream_1_code7, simple_type, reader_input_stream_1_code6, type, range(reader_input_stream_1, 4752, 21, 101, 101)).
code(reader_input_stream_1_code8, simple_type, reader_input_stream_1_code6, (type_arguments, 0), range(reader_input_stream_1, 4774, 17, 101, 101)).
code(reader_input_stream_1_code9, simple_type, reader_input_stream_1_code6, (type_arguments, 1), range(reader_input_stream_1, 4793, 7, 101, 101)).
code(reader_input_stream_1_code11, modifier, reader_input_stream_1_code10, (modifiers, 0), range(reader_input_stream_1, 4813, 7, 103, 103)).
code(reader_input_stream_1_code10, field_declaration, reader_input_stream_1_code3, (body_declarations, 0), range(reader_input_stream_1, 4813, 72, 103, 103)).
code(reader_input_stream_1_code12, simple_type, reader_input_stream_1_code10, type, range(reader_input_stream_1, 4821, 14, 103, 103)).
code(reader_input_stream_1_code13, variable_declaration_fragment, reader_input_stream_1_code10, (fragments, 0), range(reader_input_stream_1, 4836, 48, 103, 103)).
code(reader_input_stream_1_code14, method_declaration, reader_input_stream_1_code3, (body_declarations, 3), range(reader_input_stream_1, 5875, 175, 130, 134)).
code(reader_input_stream_1_code15, method_declaration, reader_input_stream_1_code2, (body_declarations, 1), range(reader_input_stream_1, 6508, 192, 150, 158)).
code(reader_input_stream_1_code16, simple_type, reader_input_stream_1_expr5, type, range(reader_input_stream_1, 6684, 7, 157, 157)).
%abstract_stream_builder_1 - org.apache.commons.io.build.AbstractStreamBuilder
code(abstract_stream_builder_1_code1, compilation_unit, range(abstract_stream_builder_1, 0, 9073, 1, -1)).
code(abstract_stream_builder_1_code2, type_declaration, abstract_stream_builder_1_code1, (types, 0), range(abstract_stream_builder_1, 1167, 7905, 32, 277)).
code(abstract_stream_builder_1_code3, modifier, abstract_stream_builder_1_code2, (modifiers, 0), range(abstract_stream_builder_1, 1338, 6, 39, 39)).
code(abstract_stream_builder_1_code4, modifier, abstract_stream_builder_1_code2, (modifiers, 1), range(abstract_stream_builder_1, 1345, 8, 39, 39)).
code(abstract_stream_builder_1_code5, type_parameter, abstract_stream_builder_1_code2, (type_parameters, 0), range(abstract_stream_builder_1, 1382, 1, 39, 39)).
code(abstract_stream_builder_1_code6, type_parameter, abstract_stream_builder_1_code2, (type_parameters, 1), range(abstract_stream_builder_1, 1385, 37, 39, 39)).
code(abstract_stream_builder_1_code8, simple_type, abstract_stream_builder_1_code7, type, range(abstract_stream_builder_1, 1395, 21, 39, 39)).
code(abstract_stream_builder_1_code7, parameterized_type, abstract_stream_builder_1_code6, (type_bounds, 0), range(abstract_stream_builder_1, 1395, 27, 39, 39)).
code(abstract_stream_builder_1_code9, simple_type, abstract_stream_builder_1_code7, (type_arguments, 0), range(abstract_stream_builder_1, 1417, 1, 39, 39)).
code(abstract_stream_builder_1_code10, simple_type, abstract_stream_builder_1_code7, (type_arguments, 1), range(abstract_stream_builder_1, 1420, 1, 39, 39)).
code(abstract_stream_builder_1_code12, simple_type, abstract_stream_builder_1_code11, type, range(abstract_stream_builder_1, 1432, 22, 39, 39)).
code(abstract_stream_builder_1_code11, parameterized_type, abstract_stream_builder_1_code2, superclass_type, range(abstract_stream_builder_1, 1432, 28, 39, 39)).
code(abstract_stream_builder_1_code13, simple_type, abstract_stream_builder_1_code11, (type_arguments, 0), range(abstract_stream_builder_1, 1455, 1, 39, 39)).
code(abstract_stream_builder_1_code14, simple_type, abstract_stream_builder_1_code11, (type_arguments, 1), range(abstract_stream_builder_1, 1458, 1, 39, 39)).
code(abstract_stream_builder_1_code15, field_declaration, abstract_stream_builder_1_code2, (body_declarations, 0), range(abstract_stream_builder_1, 1468, 91, 41, 41)).
code(abstract_stream_builder_1_code16, modifier, abstract_stream_builder_1_code15, (modifiers, 0), range(abstract_stream_builder_1, 1468, 7, 41, 41)).
code(abstract_stream_builder_1_code17, modifier, abstract_stream_builder_1_code15, (modifiers, 1), range(abstract_stream_builder_1, 1476, 6, 41, 41)).
code(abstract_stream_builder_1_code18, modifier, abstract_stream_builder_1_code15, (modifiers, 2), range(abstract_stream_builder_1, 1483, 5, 41, 41)).
code(abstract_stream_builder_1_code20, simple_type, abstract_stream_builder_1_code19, element_type, range(abstract_stream_builder_1, 1489, 10, 41, 41)).
code(abstract_stream_builder_1_code19, array_type, abstract_stream_builder_1_code15, type, range(abstract_stream_builder_1, 1489, 12, 41, 41)).
code(abstract_stream_builder_1_code21, dimension, abstract_stream_builder_1_code19, (dimensions, 0), range(abstract_stream_builder_1, 1499, 2, 41, 41)).
code(abstract_stream_builder_1_code22, variable_declaration_fragment, abstract_stream_builder_1_code15, (fragments, 0), range(abstract_stream_builder_1, 1502, 56, 41, 41)).
code(abstract_stream_builder_1_code23, field_declaration, abstract_stream_builder_1_code2, (body_declarations, 1), range(abstract_stream_builder_1, 1565, 181, 43, 46)).
code(abstract_stream_builder_1_code24, modifier, abstract_stream_builder_1_code23, (modifiers, 0), range(abstract_stream_builder_1, 1693, 7, 46, 46)).
code(abstract_stream_builder_1_code25, primitive_type, abstract_stream_builder_1_code23, type, range(abstract_stream_builder_1, 1701, 3, 46, 46)).
code(abstract_stream_builder_1_code26, variable_declaration_fragment, abstract_stream_builder_1_code23, (fragments, 0), range(abstract_stream_builder_1, 1705, 40, 46, 46)).
code(abstract_stream_builder_1_code27, field_declaration, abstract_stream_builder_1_code2, (body_declarations, 2), range(abstract_stream_builder_1, 1752, 188, 48, 51)).
code(abstract_stream_builder_1_code28, modifier, abstract_stream_builder_1_code27, (modifiers, 0), range(abstract_stream_builder_1, 1880, 7, 51, 51)).
code(abstract_stream_builder_1_code29, primitive_type, abstract_stream_builder_1_code27, type, range(abstract_stream_builder_1, 1888, 3, 51, 51)).
code(abstract_stream_builder_1_code30, variable_declaration_fragment, abstract_stream_builder_1_code27, (fragments, 0), range(abstract_stream_builder_1, 1892, 47, 51, 51)).
code(abstract_stream_builder_1_code31, field_declaration, abstract_stream_builder_1_code2, (body_declarations, 3), range(abstract_stream_builder_1, 1946, 133, 53, 56)).
code(abstract_stream_builder_1_code32, modifier, abstract_stream_builder_1_code31, (modifiers, 0), range(abstract_stream_builder_1, 2028, 7, 56, 56)).
code(abstract_stream_builder_1_code33, simple_type, abstract_stream_builder_1_code31, type, range(abstract_stream_builder_1, 2036, 7, 56, 56)).
code(abstract_stream_builder_1_code34, variable_declaration_fragment, abstract_stream_builder_1_code31, (fragments, 0), range(abstract_stream_builder_1, 2044, 34, 56, 56)).
code(abstract_stream_builder_1_code35, field_declaration, abstract_stream_builder_1_code2, (body_declarations, 4), range(abstract_stream_builder_1, 2085, 140, 58, 61)).
code(abstract_stream_builder_1_code36, modifier, abstract_stream_builder_1_code35, (modifiers, 0), range(abstract_stream_builder_1, 2167, 7, 61, 61)).
code(abstract_stream_builder_1_code37, simple_type, abstract_stream_builder_1_code35, type, range(abstract_stream_builder_1, 2175, 7, 61, 61)).
code(abstract_stream_builder_1_code38, variable_declaration_fragment, abstract_stream_builder_1_code35, (fragments, 0), range(abstract_stream_builder_1, 2183, 41, 61, 61)).
code(abstract_stream_builder_1_code39, field_declaration, abstract_stream_builder_1_code2, (body_declarations, 5), range(abstract_stream_builder_1, 2231, 56, 63, 63)).
code(abstract_stream_builder_1_code40, modifier, abstract_stream_builder_1_code39, (modifiers, 0), range(abstract_stream_builder_1, 2231, 7, 63, 63)).
code(abstract_stream_builder_1_code42, simple_type, abstract_stream_builder_1_code41, element_type, range(abstract_stream_builder_1, 2239, 10, 63, 63)).
code(abstract_stream_builder_1_code41, array_type, abstract_stream_builder_1_code39, type, range(abstract_stream_builder_1, 2239, 12, 63, 63)).
code(abstract_stream_builder_1_code43, dimension, abstract_stream_builder_1_code41, (dimensions, 0), range(abstract_stream_builder_1, 2249, 2, 63, 63)).
code(abstract_stream_builder_1_code44, variable_declaration_fragment, abstract_stream_builder_1_code39, (fragments, 0), range(abstract_stream_builder_1, 2252, 34, 63, 63)).
code(abstract_stream_builder_1_code45, method_declaration, abstract_stream_builder_1_code2, (body_declarations, 9), range(abstract_stream_builder_1, 3545, 227, 97, 104)).
%abstract_origin_1 - org.apache.commons.io.build.AbstractOrigin
code(abstract_origin_1_code1, compilation_unit, range(abstract_origin_1, 0, 17054, 1, -1)).
code(abstract_origin_1_code2, type_declaration, abstract_origin_1_code1, (types, 0), range(abstract_origin_1, 1603, 15450, 45, 530)).
code(abstract_origin_1_code3, type_declaration, abstract_origin_1_code2, (body_declarations, 6), range(abstract_origin_1, 8510, 1303, 280, 319)).
code(abstract_origin_1_code4, method_declaration, abstract_origin_1_code3, (body_declarations, 0), range(abstract_origin_1, 8720, 210, 288, 295)).
code(abstract_origin_1_code5, method_declaration, abstract_origin_1_code2, (body_declarations, 10), range(abstract_origin_1, 11360, 217, 382, 389)).
code(abstract_origin_1_code6, modifier, abstract_origin_1_code5, (modifiers, 0), range(abstract_origin_1, 11465, 9, 387, 387)).
code(abstract_origin_1_code7, single_variable_declaration, abstract_origin_1_code5, (parameters, 0), range(abstract_origin_1, 11490, 14, 387, 387)).
code(abstract_origin_1_code8, modifier, abstract_origin_1_code7, (modifiers, 0), range(abstract_origin_1, 11490, 5, 387, 387)).
code(abstract_origin_1_code9, simple_type, abstract_origin_1_code7, type, range(abstract_origin_1, 11496, 1, 387, 387)).

%%% Name References

name_ref(t_abstract_origin_supplier_2, type, 'AbstractOriginSupplier', 'Lorg/apache/commons/io/build/AbstractOriginSupplier<TT;TB;>;').
name_ref(t_abstract_stream_builder_5, type, 'AbstractStreamBuilder', 'Lorg/apache/commons/io/build/AbstractStreamBuilder<TT;TB;>;').
name_ref(t_abstract_supplier_11, type, 'AbstractSupplier', 'Lorg/apache/commons/io/build/AbstractSupplier<TT;TB;>;').
name_ref(t_b_13, type, 'B', 'Lorg/apache/commons/io/build/AbstractSupplier;:TB;').
name_ref(t_b_4, type, 'B', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;:TB;').
name_ref(t_b_7, type, 'B', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;:TB;').
name_ref(t_builder_16, type, 'Builder', 'Lorg/apache/commons/io/input/ReaderInputStream$Builder;').
name_ref(t_charset_10, type, 'Charset', 'Ljava/nio/charset/Charset;').
name_ref(t_ioutils_9, type, 'IOUtils', 'Lorg/apache/commons/io/IOUtils;').
name_ref(t_link_option_15, type, 'LinkOption', 'Ljava/nio/file/LinkOption;').
name_ref(t_objects_1, type, 'Objects', 'Ljava/util/Objects;').
name_ref(t_path_utils_8, type, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;').
name_ref(t_reader_input_stream_19, type, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;').
name_ref(t_reader_input_stream_test_17, type, 'ReaderInputStreamTest', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;').
name_ref(t_standard_charsets_18, type, 'StandardCharsets', 'Ljava/nio/charset/StandardCharsets;').
name_ref(t_standard_open_option_14, type, 'StandardOpenOption', 'Ljava/nio/file/StandardOpenOption;').
name_ref(t_t_12, type, 'T', 'Lorg/apache/commons/io/build/AbstractSupplier;:TT;').
name_ref(t_t_3, type, 'T', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;:TT;').
name_ref(t_t_6, type, 'T', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;:TT;').
name_ref(p_origin_21, param, 'origin', 'abstract_origin_1;origin_line_294').
name_ref(v_buffer_338, var, 'buffer', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;#0#buffer').
name_ref(v_i_339, var, 'i', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;#0#0#i').
name_ref(p_add_permissions_266, param, 'addPermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#addPermissions#0#1').
name_ref(p_append_227, param, 'append', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;#append#0#1').
name_ref(p_array_331, param, 'array', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;#array#0#0').
name_ref(p_attrs_122, param, 'attrs', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#attrs#0#1').
name_ref(p_attrs_125, param, 'attrs', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#attrs#0#2').
name_ref(p_b_330, param, 'b', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([B)I|Ljava/io/IOException;#b#0#0').
name_ref(p_buffer_size_312, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I#bufferSize#0#1').
name_ref(p_buffer_size_319, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V#bufferSize#0#2').
name_ref(p_buffer_size_324, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V#bufferSize#0#2').
name_ref(p_buffer_size_329, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V#bufferSize#0#2').
name_ref(p_buffer_size_72, param, 'bufferSize', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setBufferSize(I)TB;#bufferSize#0#0').
name_ref(p_buffer_size_73, param, 'bufferSize', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setBufferSize(Ljava/lang/Integer;)TB;#bufferSize#0#0').
name_ref(p_buffer_size_default_74, param, 'bufferSizeDefault', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setBufferSizeDefault(I)TB;#bufferSizeDefault#0#0').
name_ref(p_char_sequence_305, param, 'charSequence', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#charSequence#0#1').
name_ref(p_charset_13, param, 'charset', 'Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;.getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;|Ljava/io/IOException;#charset#0#0').
name_ref(p_charset_16, param, 'charset', 'Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;.getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;|Ljava/io/IOException;#charset#0#0').
name_ref(p_charset_22, param, 'charset', 'Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;.getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;|Ljava/io/IOException;#charset#0#0').
name_ref(p_charset_24, param, 'charset', 'Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;.getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;|Ljava/io/IOException;#charset#0#0').
name_ref(p_charset_249, param, 'charset', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_28, param, 'charset', 'Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;.getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;|Ljava/io/IOException;#charset#0#0').
name_ref(p_charset_3, param, 'charset', 'Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;.getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;|Ljava/io/IOException;#charset#0#0').
name_ref(p_charset_306, param, 'charset', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_309, param, 'charset', 'Lorg/apache/commons/io/input/ReaderInputStream$Builder;.setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/ReaderInputStream$Builder;#charset#0#0').
name_ref(p_charset_316, param, 'charset', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;)V#charset#0#1').
name_ref(p_charset_318, param, 'charset', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V#charset#0#1').
name_ref(p_charset_34, param, 'charset', 'Lorg/apache/commons/io/build/AbstractOrigin;.getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;|Ljava/io/IOException;#charset#0#0').
name_ref(p_charset_37, param, 'charset', 'Lorg/apache/commons/io/build/AbstractOrigin;.getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;|Ljava/io/IOException;#charset#0#0').
name_ref(p_charset_38, param, 'charset', 'Lorg/apache/commons/io/build/AbstractOrigin;.getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;|Ljava/io/IOException;#charset#0#0').
name_ref(p_charset_5, param, 'charset', 'Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;.getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;#charset#0#0').
name_ref(p_charset_7, param, 'charset', 'Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;.getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;|Ljava/io/IOException;#charset#0#0').
name_ref(p_charset_75, param, 'charset', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setCharset(Ljava/nio/charset/Charset;)TB;#charset#0#0').
name_ref(p_charset_76, param, 'charset', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setCharset(Ljava/lang/String;)TB;#charset#0#0').
name_ref(p_charset_encoder_310, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream$Builder;.setCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Lorg/apache/commons/io/input/ReaderInputStream$Builder;#charsetEncoder#0#0').
name_ref(p_charset_encoder_311, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I#charsetEncoder#0#0').
name_ref(p_charset_encoder_313, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.minBufferSize(Ljava/nio/charset/CharsetEncoder;)F#charsetEncoder#0#0').
name_ref(p_charset_encoder_321, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V#charsetEncoder#0#1').
name_ref(p_charset_encoder_323, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V#charsetEncoder#0#1').
name_ref(p_charset_name_326, param, 'charsetName', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;)V#charsetName#0#1').
name_ref(p_charset_name_328, param, 'charsetName', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V#charsetName#0#1').
name_ref(p_charset_name_343, param, 'charsetName', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testCharsetEncoderFlush(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#0').
name_ref(p_charset_name_350, param, 'charsetName', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testWithBufferedRead(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_352, param, 'charsetName', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testWithSingleByteRead(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_collection_250, param, 'collection', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#collection#0#0').
name_ref(p_collector_171, param, 'collector', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#collector#0#2').
name_ref(p_comparator_253, param, 'comparator', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#comparator#0#3').
name_ref(p_copy_options_106, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_109, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_112, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_115, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_118, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_czdt_196, param, 'czdt', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#czdt#0#1').
name_ref(p_data_344, param, 'data', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testCharsetEncoderFlush(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_default_charset_77, param, 'defaultCharset', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setCharsetDefault(Ljava/nio/charset/Charset;)TB;#defaultCharset#0#0').
name_ref(p_default_if_absent_179, param, 'defaultIfAbsent', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#defaultIfAbsent#0#1').
name_ref(p_delete_options_100, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_128, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_131, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_delete_options_134, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_137, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_delete_options_140, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_143, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_delete_options_233, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z#deleteOptions#0#0').
name_ref(p_dir_1_79, param, 'dir1', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#dir1#0#0').
name_ref(p_dir_224, param, 'dir', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#dir#0#0').
name_ref(p_dir_2_80, param, 'dir2', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#dir2#0#1').
name_ref(p_directory_119, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_120, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_132, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_133, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_135, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_193, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_277, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectory(Ljava/nio/file/Path;)J|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_278, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_282, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#directory#0#1').
name_ref(p_directory_95, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_98, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_99, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_enable_delete_children_263, param, 'enableDeleteChildren', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#enableDeleteChildren#0#1').
name_ref(p_expected_347, param, 'expected', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testWithBufferedRead([BLorg/apache/commons/io/input/ReaderInputStream;)V|Ljava/io/IOException;#expected#0#0').
name_ref(p_file_101, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#file#0#0').
name_ref(p_file_138, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_139, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_141, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_177, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_194, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_195, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_198, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_201, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_204, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_207, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_209, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_212, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_215, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_218, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_254, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#file#0#0').
name_ref(p_file_280, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.touch(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_292, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#file#0#0').
name_ref(p_file_param_name_255, param, 'fileParamName', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#fileParamName#0#1').
name_ref(p_file_time_102, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_time_199, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_time_210, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_visit_option_151, param, 'fileVisitOption', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#fileVisitOption#0#4').
name_ref(p_file_visit_options_158, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#fileVisitOptions#0#4').
name_ref(p_file_visit_options_279, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;#fileVisitOptions#0#0').
name_ref(p_file_visit_options_83, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#fileVisitOptions#0#4').
name_ref(p_file_visit_options_97, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#fileVisitOptions#0#2').
name_ref(p_filter_167, param, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;#filter#0#0').
name_ref(p_filter_169, param, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#filter#0#0').
name_ref(p_first_288, param, 'first', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#first#0#1').
name_ref(p_function_303, param, 'function', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#function#0#3').
name_ref(p_in_104, param, 'in', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;#in#0#0').
name_ref(p_in_348, param, 'in', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testWithBufferedRead([BLorg/apache/commons/io/input/ReaderInputStream;)V|Ljava/io/IOException;#in#0#1').
name_ref(p_in_str_345, param, 'inStr', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testReadZero(Ljava/lang/String;Lorg/apache/commons/io/input/ReaderInputStream;)V|Ljava/io/IOException;#inStr#0#0').
name_ref(p_input_stream_346, param, 'inputStream', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testReadZero(Ljava/lang/String;Lorg/apache/commons/io/input/ReaderInputStream;)V|Ljava/io/IOException;#inputStream#0#1').
name_ref(p_instant_202, param, 'instant', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#instant#0#1').
name_ref(p_instant_213, param, 'instant', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#instant#0#1').
name_ref(p_len_333, param, 'len', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;#len#0#2').
name_ref(p_length_10, param, 'length', 'Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;.getByteArray(JI)[B|Ljava/io/IOException;#length#0#1').
name_ref(p_length_20, param, 'length', 'Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;.getByteArray(JI)[B|Ljava/io/IOException;#length#0#1').
name_ref(p_length_33, param, 'length', 'Lorg/apache/commons/io/build/AbstractOrigin;.getByteArray(JI)[B|Ljava/io/IOException;#length#0#1').
name_ref(p_link_option_124, param, 'linkOption', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#linkOption#0#1').
name_ref(p_link_options_130, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_136, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_142, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_149, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_157, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_link_options_165, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_229, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_259, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_264, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_268, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_link_options_271, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_274, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_301, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_82, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_max_depth_156, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_max_depth_286, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#maxDepth#0#3').
name_ref(p_max_depth_297, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_max_depth_81, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_max_depth_96, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#maxDepth#0#1').
name_ref(p_more_289, param, 'more', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#more#0#2').
name_ref(p_off_332, param, 'off', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;#off#0#1').
name_ref(p_open_options_150, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_open_options_166, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_open_options_230, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#openOptions#0#2').
name_ref(p_open_options_307, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_open_options_78, param, 'openOptions', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setOpenOptions([Ljava/nio/file/OpenOption;)TB;#openOptions#0#0').
name_ref(p_options_103, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#options#0#2').
name_ref(p_options_12, param, 'options', 'Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;.getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;#options#0#0').
name_ref(p_options_15, param, 'options', 'Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;.getOutputStream([Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;#options#0#0').
name_ref(p_options_160, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_17, param, 'options', 'Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;.getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;|Ljava/io/IOException;#options#0#1').
name_ref(p_options_174, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;#options#0#1').
name_ref(p_options_176, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;#options#0#1').
name_ref(p_options_180, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#options#0#2').
name_ref(p_options_182, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#options#0#1').
name_ref(p_options_186, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#options#0#1').
name_ref(p_options_189, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;#options#0#1').
name_ref(p_options_191, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_197, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_2, param, 'options', 'Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;.getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;|Ljava/io/IOException;#options#0#0').
name_ref(p_options_200, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_203, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_206, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_211, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_214, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_217, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_221, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_223, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_23, param, 'options', 'Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;.getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;|Ljava/io/IOException;#options#0#0').
name_ref(p_options_232, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_236, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#options#0#2').
name_ref(p_options_239, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#options#0#1').
name_ref(p_options_242, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;#options#0#1').
name_ref(p_options_245, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#options#0#1').
name_ref(p_options_247, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;#options#0#1').
name_ref(p_options_256, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#options#0#2').
name_ref(p_options_27, param, 'options', 'Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;.getOutputStream([Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#options#0#0').
name_ref(p_options_285, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#options#0#2').
name_ref(p_options_29, param, 'options', 'Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;.getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;|Ljava/io/IOException;#options#0#1').
name_ref(p_options_294, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#options#0#2').
name_ref(p_options_299, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#options#0#4').
name_ref(p_options_35, param, 'options', 'Lorg/apache/commons/io/build/AbstractOrigin;.getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;|Ljava/io/IOException;#options#0#0').
name_ref(p_options_36, param, 'options', 'Lorg/apache/commons/io/build/AbstractOrigin;.getOutputStream([Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#options#0#0').
name_ref(p_options_39, param, 'options', 'Lorg/apache/commons/io/build/AbstractOrigin;.getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;|Ljava/io/IOException;#options#0#1').
name_ref(p_options_6, param, 'options', 'Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;.getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;|Ljava/io/IOException;#options#0#0').
name_ref(p_origin_1, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;.([B)V#origin#0#0').
name_ref(p_origin_11, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;.(Ljava/io/InputStream;)V#origin#0#0').
name_ref(p_origin_14, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;.(Ljava/io/OutputStream;)V#origin#0#0').
name_ref(p_origin_18, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;.(Ljava/nio/file/Path;)V#origin#0#0').
name_ref(p_origin_21, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;.(Ljava/io/Reader;)V#origin#0#0').
name_ref(p_origin_25, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;.(Ljava/net/URI;)V#origin#0#0').
name_ref(p_origin_26, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;.(Ljava/io/Writer;)V#origin#0#0').
name_ref(p_origin_30, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOrigin;.(TT;)V#origin#0#0').
name_ref(p_origin_4, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;.(Ljava/lang/CharSequence;)V#origin#0#0').
name_ref(p_origin_40, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newByteArrayOrigin([B)Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;#origin#0#0').
name_ref(p_origin_41, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newCharSequenceOrigin(Ljava/lang/CharSequence;)Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;#origin#0#0').
name_ref(p_origin_42, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newFileOrigin(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;#origin#0#0').
name_ref(p_origin_43, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newFileOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;#origin#0#0').
name_ref(p_origin_44, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newInputStreamOrigin(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;#origin#0#0').
name_ref(p_origin_45, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newOutputStreamOrigin(Ljava/io/OutputStream;)Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;#origin#0#0').
name_ref(p_origin_46, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newPathOrigin(Ljava/nio/file/Path;)Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;#origin#0#0').
name_ref(p_origin_47, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newPathOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;#origin#0#0').
name_ref(p_origin_48, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newReaderOrigin(Ljava/io/Reader;)Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;#origin#0#0').
name_ref(p_origin_49, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newURIOrigin(Ljava/net/URI;)Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;#origin#0#0').
name_ref(p_origin_50, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newWriterOrigin(Ljava/io/Writer;)Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;#origin#0#0').
name_ref(p_origin_51, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setByteArray([B)TB;#origin#0#0').
name_ref(p_origin_52, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setCharSequence(Ljava/lang/CharSequence;)TB;#origin#0#0').
name_ref(p_origin_53, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setFile(Ljava/io/File;)TB;#origin#0#0').
name_ref(p_origin_54, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setFile(Ljava/lang/String;)TB;#origin#0#0').
name_ref(p_origin_55, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setInputStream(Ljava/io/InputStream;)TB;#origin#0#0').
name_ref(p_origin_56, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setOrigin(Lorg/apache/commons/io/build/AbstractOrigin<**>;)TB;#origin#0#0').
name_ref(p_origin_58, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setOutputStream(Ljava/io/OutputStream;)TB;#origin#0#0').
name_ref(p_origin_59, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setPath(Ljava/nio/file/Path;)TB;#origin#0#0').
name_ref(p_origin_60, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setPath(Ljava/lang/String;)TB;#origin#0#0').
name_ref(p_origin_61, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setReader(Ljava/io/Reader;)TB;#origin#0#0').
name_ref(p_origin_62, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setURI(Ljava/net/URI;)TB;#origin#0#0').
name_ref(p_origin_63, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setWriter(Ljava/io/Writer;)TB;#origin#0#0').
name_ref(p_origin_8, param, 'origin', 'Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;.(Ljava/io/File;)V#origin#0#0').
name_ref(p_override_read_only_302, param, 'overrideReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#overrideReadOnly#0#2').
name_ref(p_parent_251, param, 'parent', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#parent#0#1').
name_ref(p_parent_262, param, 'parent', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#parent#0#0').
name_ref(p_path_121, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_123, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_126, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_127, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_129, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_144, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.deleteOnExit(Ljava/nio/file/Path;)V#path#0#0').
name_ref(p_path_159, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_173, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;#path#0#0').
name_ref(p_path_175, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;#path#0#0').
name_ref(p_path_178, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_181, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_185, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_187, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;#path#0#0').
name_ref(p_path_188, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;#path#0#0').
name_ref(p_path_190, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_192, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_1_145, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_147, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_152, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_154, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_161, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_163, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_222, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_226, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_228, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_231, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_234, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#path#0#0').
name_ref(p_path_237, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_238, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_240, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_241, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;#path#0#0').
name_ref(p_path_243, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_244, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_246, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;#path#0#0').
name_ref(p_path_248, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_257, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_265, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_269, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#path#0#0').
name_ref(p_path_272, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_275, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.sizeOf(Ljava/nio/file/Path;)J|Ljava/io/IOException;#path#0#0').
name_ref(p_path_276, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_2_146, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_148, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_153, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_155, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_162, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_164, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_300, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_304, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_filter_225, param, 'pathFilter', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#pathFilter#0#1').
name_ref(p_path_filter_296, param, 'pathFilter', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#pathFilter#0#1').
name_ref(p_paths_168, param, 'paths', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;#paths#0#1').
name_ref(p_position_19, param, 'position', 'Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;.getByteArray(JI)[B|Ljava/io/IOException;#position#0#0').
name_ref(p_position_32, param, 'position', 'Lorg/apache/commons/io/build/AbstractOrigin;.getByteArray(JI)[B|Ljava/io/IOException;#position#0#0').
name_ref(p_position_9, param, 'position', 'Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;.getByteArray(JI)[B|Ljava/io/IOException;#position#0#0').
name_ref(p_read_attributes_298, param, 'readAttributes', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#readAttributes#0#3').
name_ref(p_read_only_258, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_read_only_270, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_read_only_273, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_reader_314, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;)V#reader#0#0').
name_ref(p_reader_315, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;)V#reader#0#0').
name_ref(p_reader_317, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V#reader#0#0').
name_ref(p_reader_320, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V#reader#0#0').
name_ref(p_reader_322, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V#reader#0#0').
name_ref(p_reader_325, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;)V#reader#0#0').
name_ref(p_reader_327, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V#reader#0#0').
name_ref(p_reference_208, param, 'reference', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#reference#0#1').
name_ref(p_reference_219, param, 'reference', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#reference#0#1').
name_ref(p_sort_252, param, 'sort', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#sort#0#2').
name_ref(p_source_directory_107, param, 'sourceDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#sourceDirectory#0#0').
name_ref(p_source_file_110, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_113, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_116, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_260, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_path_172, param, 'sourcePath', 'Lorg/apache/commons/io/file/PathUtils;.getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List<Ljava/nio/file/attribute/AclEntry;>;|Ljava/io/IOException;#sourcePath#0#0').
name_ref(p_start_284, param, 'start', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#start#0#1').
name_ref(p_start_295, param, 'start', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#start#0#0').
name_ref(p_stream_170, param, 'stream', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#stream#0#1').
name_ref(p_target_105, param, 'target', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;#target#0#1').
name_ref(p_target_directory_108, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_directory_114, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_directory_117, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_file_111, param, 'targetFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetFile#0#1').
name_ref(p_target_file_261, param, 'targetFile', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;#targetFile#0#1').
name_ref(p_test_220, param, 'test', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#test#0#0').
name_ref(p_test_string_349, param, 'testString', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testWithBufferedRead(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#testString#0#0').
name_ref(p_test_string_351, param, 'testString', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testWithSingleByteRead(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#testString#0#0').
name_ref(p_time_millis_205, param, 'timeMillis', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#timeMillis#0#1').
name_ref(p_time_millis_216, param, 'timeMillis', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#timeMillis#0#1').
name_ref(p_timeout_293, param, 'timeout', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#timeout#0#1').
name_ref(p_type_235, param, 'type', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#type#0#1').
name_ref(p_update_permissions_267, param, 'updatePermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#updatePermissions#0#2').
name_ref(p_uri_183, param, 'uri', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URI;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_291, param, 'uri', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#uri#0#1').
name_ref(p_url_184, param, 'url', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URL;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;|Ljava/net/URISyntaxException;#url#0#0').
name_ref(p_visitor_281, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_283, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_287, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_290, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(f_buffer_size_65, field, 'bufferSize', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.bufferSize)I').
name_ref(f_buffer_size_default_66, field, 'bufferSizeDefault', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.bufferSizeDefault)I').
name_ref(f_charset_67, field, 'charset', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.charset)Ljava/nio/charset/Charset;').
name_ref(f_charset_71, field, 'charset', 'Lorg/apache/commons/io/build/AbstractStreamBuilder<Lorg/apache/commons/io/build/AbstractStreamBuilder;:TT;Lorg/apache/commons/io/build/AbstractStreamBuilder;:TB;>;.charset)Ljava/nio/charset/Charset;').
name_ref(f_charset_default_68, field, 'charsetDefault', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.charsetDefault)Ljava/nio/charset/Charset;').
name_ref(f_charset_encoder_308, field, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream$Builder;.charsetEncoder)Ljava/nio/charset/CharsetEncoder;').
name_ref(f_default_open_options_64, field, 'DEFAULT_OPEN_OPTIONS', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.DEFAULT_OPEN_OPTIONS)[Ljava/nio/file/OpenOption;').
name_ref(f_default_open_options_70, field, 'DEFAULT_OPEN_OPTIONS', 'Lorg/apache/commons/io/build/AbstractStreamBuilder<Lorg/apache/commons/io/build/AbstractStreamBuilder;:TT;Lorg/apache/commons/io/build/AbstractStreamBuilder;:TB;>;.DEFAULT_OPEN_OPTIONS)[Ljava/nio/file/OpenOption;').
name_ref(f_empty_copy_options_86, field, 'EMPTY_COPY_OPTIONS', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_COPY_OPTIONS)[Ljava/nio/file/CopyOption;').
name_ref(f_empty_delete_option_array_87, field, 'EMPTY_DELETE_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_DELETE_OPTION_ARRAY)[Lorg/apache/commons/io/file/DeleteOption;').
name_ref(f_empty_file_attribute_array_88, field, 'EMPTY_FILE_ATTRIBUTE_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_FILE_ATTRIBUTE_ARRAY)[Ljava/nio/file/attribute/FileAttribute<Ljava/nio/file/attribute/FileAttribute;{0}*>;').
name_ref(f_empty_file_visit_option_array_89, field, 'EMPTY_FILE_VISIT_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_FILE_VISIT_OPTION_ARRAY)[Ljava/nio/file/FileVisitOption;').
name_ref(f_empty_link_option_array_90, field, 'EMPTY_LINK_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_LINK_OPTION_ARRAY)[Ljava/nio/file/LinkOption;').
name_ref(f_empty_open_option_array_93, field, 'EMPTY_OPEN_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_OPEN_OPTION_ARRAY)[Ljava/nio/file/OpenOption;').
name_ref(f_empty_path_array_94, field, 'EMPTY_PATH_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_PATH_ARRAY)[Ljava/nio/file/Path;').
name_ref(f_large_test_string_341, field, 'LARGE_TEST_STRING', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.LARGE_TEST_STRING)Ljava/lang/String;').
name_ref(f_nofollow_link_option_array_91, field, 'NOFOLLOW_LINK_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.NOFOLLOW_LINK_OPTION_ARRAY)[Ljava/nio/file/LinkOption;').
name_ref(f_null_link_option_92, field, 'NULL_LINK_OPTION', 'Lorg/apache/commons/io/file/PathUtils;.NULL_LINK_OPTION)Ljava/nio/file/LinkOption;').
name_ref(f_open_options_69, field, 'openOptions', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.openOptions)[Ljava/nio/file/OpenOption;').
name_ref(f_open_options_append_85, field, 'OPEN_OPTIONS_APPEND', 'Lorg/apache/commons/io/file/PathUtils;.OPEN_OPTIONS_APPEND)[Ljava/nio/file/OpenOption;').
name_ref(f_open_options_truncate_84, field, 'OPEN_OPTIONS_TRUNCATE', 'Lorg/apache/commons/io/file/PathUtils;.OPEN_OPTIONS_TRUNCATE)[Ljava/nio/file/OpenOption;').
name_ref(f_origin_31, field, 'origin', 'Lorg/apache/commons/io/build/AbstractOrigin<Lorg/apache/commons/io/build/AbstractOrigin;:TT;Lorg/apache/commons/io/build/AbstractOrigin;:TB;>;.origin)Lorg/apache/commons/io/build/AbstractOrigin;:TT;').
name_ref(f_origin_57, field, 'origin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier<Lorg/apache/commons/io/build/AbstractOriginSupplier;:TT;Lorg/apache/commons/io/build/AbstractOriginSupplier;:TB;>;.origin)Lorg/apache/commons/io/build/AbstractOrigin<Lorg/apache/commons/io/build/AbstractOrigin;{0}*Lorg/apache/commons/io/build/AbstractOrigin;{1}*>;').
name_ref(f_random_342, field, 'random', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.random)Ljava/util/Random;').
name_ref(f_test_string_340, field, 'TEST_STRING', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.TEST_STRING)Ljava/lang/String;').
name_ref(f_utf_16_334, field, 'UTF_16', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.UTF_16)Ljava/lang/String;').
name_ref(f_utf_16_335, field, 'UTF_16', 'Ljava/nio/charset/StandardCharsets;.UTF_16)Ljava/nio/charset/Charset;').
name_ref(f_utf_8_336, field, 'UTF_8', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.UTF_8)Ljava/lang/String;').
name_ref(f_utf_8_337, field, 'UTF_8', 'Ljava/nio/charset/StandardCharsets;.UTF_8)Ljava/nio/charset/Charset;').
name_ref(m_abstract_origin_28, method, 'AbstractOrigin', 'Lorg/apache/commons/io/build/AbstractOrigin;.(TT;)V').
name_ref(m_accumulate_98, method, 'accumulate', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;').
name_ref(m_append_220, method, 'append', 'Ljava/lang/StringBuilder;.append(Ljava/lang/String;)Ljava/lang/StringBuilder;').
name_ref(m_as_this_72, method, 'asThis', 'Lorg/apache/commons/io/build/AbstractSupplier;.asThis()TB;').
name_ref(m_assert_not_null_239, method, 'assertNotNull', 'Lorg/junit/jupiter/api/Assertions;.assertNotNull(Ljava/lang/Object;)V').
name_ref(m_builder_201, method, 'builder', 'Lorg/apache/commons/io/input/ReaderInputStream;.builder()Lorg/apache/commons/io/input/ReaderInputStream$Builder;').
name_ref(m_builder_202, method, 'Builder', 'Lorg/apache/commons/io/input/ReaderInputStream$Builder;.()V').
name_ref(m_byte_array_origin_1, method, 'ByteArrayOrigin', 'Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;.([B)V').
name_ref(m_char_sequence_origin_6, method, 'CharSequenceOrigin', 'Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;.(Ljava/lang/CharSequence;)V').
name_ref(m_charset_data_222, method, 'charsetData', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.charsetData()Ljava/util/stream/Stream<Lorg/junit/jupiter/params/provider/Arguments;>;').
name_ref(m_check_min_buffer_size_203, method, 'checkMinBufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I').
name_ref(m_check_origin_63, method, 'checkOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin<**>;').
name_ref(m_clean_directory_100, method, 'cleanDirectory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_clean_directory_99, method, 'cleanDirectory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_close_212, method, 'close', 'Lorg/apache/commons/io/input/ReaderInputStream;.close()V|Ljava/io/IOException;').
name_ref(m_compare_last_modified_time_to_101, method, 'compareLastModifiedTimeTo', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;').
name_ref(m_copy_102, method, 'copy', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;').
name_ref(m_copy_directory_103, method, 'copyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_copy_file_104, method, 'copyFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_105, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_106, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_count_directory_107, method, 'countDirectory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_count_directory_as_big_integer_108, method, 'countDirectoryAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_create_parent_directories_109, method, 'createParentDirectories', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_create_parent_directories_110, method, 'createParentDirectories', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_current_111, method, 'current', 'Lorg/apache/commons/io/file/PathUtils;.current()Ljava/nio/file/Path;').
name_ref(m_default_charset_79, method, 'defaultCharset', 'Ljava/nio/charset/Charset;.defaultCharset()Ljava/nio/charset/Charset;').
name_ref(m_delete_112, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_113, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_114, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_115, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_116, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_117, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_118, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_119, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_120, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;').
name_ref(m_delete_on_exit_121, method, 'deleteOnExit', 'Lorg/apache/commons/io/file/PathUtils;.deleteOnExit(Ljava/nio/file/Path;)V').
name_ref(m_directory_and_file_content_equals_122, method, 'directoryAndFileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_directory_and_file_content_equals_123, method, 'directoryAndFileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;').
name_ref(m_directory_content_equals_124, method, 'directoryContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_directory_content_equals_125, method, 'directoryContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;').
name_ref(m_exists_126, method, 'exists', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_file_content_equals_127, method, 'fileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_file_content_equals_128, method, 'fileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;').
name_ref(m_file_origin_12, method, 'FileOrigin', 'Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;.(Ljava/io/File;)V').
name_ref(m_fill_buffer_213, method, 'fillBuffer', 'Lorg/apache/commons/io/input/ReaderInputStream;.fillBuffer()V|Ljava/io/IOException;').
name_ref(m_filter_129, method, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;').
name_ref(m_filter_paths_130, method, 'filterPaths', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;').
name_ref(m_get_197, method, 'get', 'Lorg/apache/commons/io/input/ReaderInputStream$Builder;.get()Lorg/apache/commons/io/input/ReaderInputStream;|Ljava/io/IOException;').
name_ref(m_get_40, method, 'get', 'Lorg/apache/commons/io/build/AbstractOrigin;.get()TT;').
name_ref(m_get_acl_entry_list_131, method, 'getAclEntryList', 'Lorg/apache/commons/io/file/PathUtils;.getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List<Ljava/nio/file/attribute/AclEntry;>;|Ljava/io/IOException;').
name_ref(m_get_acl_file_attribute_view_132, method, 'getAclFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;').
name_ref(m_get_buffer_size_80, method, 'getBufferSize', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.getBufferSize()I').
name_ref(m_get_buffer_size_default_81, method, 'getBufferSizeDefault', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.getBufferSizeDefault()I').
name_ref(m_get_byte_array_13, method, 'getByteArray', 'Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;.getByteArray(JI)[B|Ljava/io/IOException;').
name_ref(m_get_byte_array_17, method, 'getByteArray', 'Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;.getByteArray()[B|Ljava/io/IOException;').
name_ref(m_get_byte_array_2, method, 'getByteArray', 'Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;.getByteArray()[B').
name_ref(m_get_byte_array_24, method, 'getByteArray', 'Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;.getByteArray(JI)[B|Ljava/io/IOException;').
name_ref(m_get_byte_array_29, method, 'getByteArray', 'Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;.getByteArray()[B|Ljava/io/IOException;').
name_ref(m_get_byte_array_41, method, 'getByteArray', 'Lorg/apache/commons/io/build/AbstractOrigin;.getByteArray()[B|Ljava/io/IOException;').
name_ref(m_get_byte_array_42, method, 'getByteArray', 'Lorg/apache/commons/io/build/AbstractOrigin;.getByteArray(JI)[B|Ljava/io/IOException;').
name_ref(m_get_byte_array_7, method, 'getByteArray', 'Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;.getByteArray()[B').
name_ref(m_get_char_sequence_30, method, 'getCharSequence', 'Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;.getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;|Ljava/io/IOException;').
name_ref(m_get_char_sequence_43, method, 'getCharSequence', 'Lorg/apache/commons/io/build/AbstractOrigin;.getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;|Ljava/io/IOException;').
name_ref(m_get_char_sequence_8, method, 'getCharSequence', 'Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;.getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;').
name_ref(m_get_char_sequence_82, method, 'getCharSequence', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.getCharSequence()Ljava/lang/CharSequence;|Ljava/io/IOException;').
name_ref(m_get_charset_83, method, 'getCharset', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.getCharset()Ljava/nio/charset/Charset;').
name_ref(m_get_charset_default_84, method, 'getCharsetDefault', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.getCharsetDefault()Ljava/nio/charset/Charset;').
name_ref(m_get_charset_encoder_198, method, 'getCharsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream$Builder;.getCharsetEncoder()Ljava/nio/charset/CharsetEncoder;').
name_ref(m_get_charset_encoder_214, method, 'getCharsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.getCharsetEncoder()Ljava/nio/charset/CharsetEncoder;').
name_ref(m_get_dos_file_attribute_view_133, method, 'getDosFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;').
name_ref(m_get_file_14, method, 'getFile', 'Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;.getFile()Ljava/io/File;').
name_ref(m_get_file_25, method, 'getFile', 'Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;.getFile()Ljava/io/File;').
name_ref(m_get_file_34, method, 'getFile', 'Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;.getFile()Ljava/io/File;').
name_ref(m_get_file_44, method, 'getFile', 'Lorg/apache/commons/io/build/AbstractOrigin;.getFile()Ljava/io/File;').
name_ref(m_get_input_stream_18, method, 'getInputStream', 'Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;.getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;').
name_ref(m_get_input_stream_3, method, 'getInputStream', 'Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;.getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_get_input_stream_31, method, 'getInputStream', 'Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;.getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_get_input_stream_45, method, 'getInputStream', 'Lorg/apache/commons/io/build/AbstractOrigin;.getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_get_input_stream_85, method, 'getInputStream', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.getInputStream()Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_get_input_stream_9, method, 'getInputStream', 'Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;.getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_134, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_135, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_136, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_137, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URI;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_138, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URL;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;|Ljava/net/URISyntaxException;').
name_ref(m_get_last_modified_time_139, method, 'getLastModifiedTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_open_options_86, method, 'getOpenOptions', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.getOpenOptions()[Ljava/nio/file/OpenOption;').
name_ref(m_get_origin_64, method, 'getOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.getOrigin()Lorg/apache/commons/io/build/AbstractOrigin<**>;').
name_ref(m_get_output_stream_21, method, 'getOutputStream', 'Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;.getOutputStream([Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;').
name_ref(m_get_output_stream_37, method, 'getOutputStream', 'Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;.getOutputStream([Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_get_output_stream_46, method, 'getOutputStream', 'Lorg/apache/commons/io/build/AbstractOrigin;.getOutputStream([Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_get_output_stream_87, method, 'getOutputStream', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.getOutputStream()Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_get_parent_140, method, 'getParent', 'Lorg/apache/commons/io/file/PathUtils;.getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;').
name_ref(m_get_path_15, method, 'getPath', 'Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;.getPath()Ljava/nio/file/Path;').
name_ref(m_get_path_26, method, 'getPath', 'Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;.getPath()Ljava/nio/file/Path;').
name_ref(m_get_path_35, method, 'getPath', 'Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;.getPath()Ljava/nio/file/Path;').
name_ref(m_get_path_47, method, 'getPath', 'Lorg/apache/commons/io/build/AbstractOrigin;.getPath()Ljava/nio/file/Path;').
name_ref(m_get_path_88, method, 'getPath', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.getPath()Ljava/nio/file/Path;').
name_ref(m_get_posix_file_attribute_view_141, method, 'getPosixFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;').
name_ref(m_get_reader_10, method, 'getReader', 'Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;.getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;|Ljava/io/IOException;').
name_ref(m_get_reader_19, method, 'getReader', 'Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;.getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;|Ljava/io/IOException;').
name_ref(m_get_reader_32, method, 'getReader', 'Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;.getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;|Ljava/io/IOException;').
name_ref(m_get_reader_4, method, 'getReader', 'Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;.getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;|Ljava/io/IOException;').
name_ref(m_get_reader_48, method, 'getReader', 'Lorg/apache/commons/io/build/AbstractOrigin;.getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;|Ljava/io/IOException;').
name_ref(m_get_temp_directory_142, method, 'getTempDirectory', 'Lorg/apache/commons/io/file/PathUtils;.getTempDirectory()Ljava/nio/file/Path;').
name_ref(m_get_writer_22, method, 'getWriter', 'Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;.getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;|Ljava/io/IOException;').
name_ref(m_get_writer_38, method, 'getWriter', 'Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;.getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;|Ljava/io/IOException;').
name_ref(m_get_writer_49, method, 'getWriter', 'Lorg/apache/commons/io/build/AbstractOrigin;.getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;|Ljava/io/IOException;').
name_ref(m_get_writer_89, method, 'getWriter', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.getWriter()Ljava/io/Writer;|Ljava/io/IOException;').
name_ref(m_has_origin_65, method, 'hasOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.hasOrigin()Z').
name_ref(m_input_stream_origin_16, method, 'InputStreamOrigin', 'Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;.(Ljava/io/InputStream;)V').
name_ref(m_is_directory_143, method, 'isDirectory', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_empty_144, method, 'isEmpty', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_directory_145, method, 'isEmptyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_file_146, method, 'isEmptyFile', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_147, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_148, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_149, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_150, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_151, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_older_152, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_153, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_154, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_155, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_posix_156, method, 'isPosix', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_regular_file_157, method, 'isRegularFile', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_min_buffer_size_204, method, 'minBufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.minBufferSize(Ljava/nio/charset/CharsetEncoder;)F').
name_ref(m_name_218, method, 'name', 'Ljava/nio/charset/Charset;.name()Ljava/lang/String;').
name_ref(m_new_byte_array_origin_52, method, 'newByteArrayOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newByteArrayOrigin([B)Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;').
name_ref(m_new_char_sequence_origin_53, method, 'newCharSequenceOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newCharSequenceOrigin(Ljava/lang/CharSequence;)Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;').
name_ref(m_new_directory_stream_158, method, 'newDirectoryStream', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;').
name_ref(m_new_encoder_196, method, 'newEncoder', 'Ljava/nio/charset/Charset;.newEncoder()Ljava/nio/charset/CharsetEncoder;').
name_ref(m_new_file_origin_54, method, 'newFileOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newFileOrigin(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;').
name_ref(m_new_file_origin_55, method, 'newFileOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newFileOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;').
name_ref(m_new_input_stream_origin_56, method, 'newInputStreamOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newInputStreamOrigin(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;').
name_ref(m_new_output_stream_159, method, 'newOutputStream', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_new_output_stream_160, method, 'newOutputStream', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_new_output_stream_origin_57, method, 'newOutputStreamOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newOutputStreamOrigin(Ljava/io/OutputStream;)Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;').
name_ref(m_new_path_origin_58, method, 'newPathOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newPathOrigin(Ljava/nio/file/Path;)Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;').
name_ref(m_new_path_origin_59, method, 'newPathOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newPathOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;').
name_ref(m_new_reader_origin_60, method, 'newReaderOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newReaderOrigin(Ljava/io/Reader;)Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;').
name_ref(m_new_uriorigin_61, method, 'newURIOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newURIOrigin(Ljava/net/URI;)Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;').
name_ref(m_new_writer_origin_62, method, 'newWriterOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.newWriterOrigin(Ljava/io/Writer;)Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;').
name_ref(m_no_follow_link_option_array_161, method, 'noFollowLinkOptionArray', 'Lorg/apache/commons/io/file/PathUtils;.noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;').
name_ref(m_not_exists_162, method, 'notExists', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_output_stream_origin_20, method, 'OutputStreamOrigin', 'Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;.(Ljava/io/OutputStream;)V').
name_ref(m_override_read_only_163, method, 'overrideReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z').
name_ref(m_path_origin_23, method, 'PathOrigin', 'Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;.(Ljava/nio/file/Path;)V').
name_ref(m_path_utils_195, method, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;.()V').
name_ref(m_random_223, method, 'Random', 'Ljava/util/Random;.()V').
name_ref(m_read_215, method, 'read', 'Lorg/apache/commons/io/input/ReaderInputStream;.read()I|Ljava/io/IOException;').
name_ref(m_read_216, method, 'read', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([B)I|Ljava/io/IOException;').
name_ref(m_read_217, method, 'read', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;').
name_ref(m_read_attributes_164, method, 'readAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;').
name_ref(m_read_basic_file_attributes_165, method, 'readBasicFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;|Ljava/io/IOException;').
name_ref(m_read_basic_file_attributes_166, method, 'readBasicFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_basic_file_attributes_unchecked_167, method, 'readBasicFileAttributesUnchecked', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_dos_file_attributes_168, method, 'readDosFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;').
name_ref(m_read_if_symbolic_link_169, method, 'readIfSymbolicLink', 'Lorg/apache/commons/io/file/PathUtils;.readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_read_os_file_attributes_170, method, 'readOsFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_posix_file_attributes_171, method, 'readPosixFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;').
name_ref(m_read_string_172, method, 'readString', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_reader_input_stream_205, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;)V').
name_ref(m_reader_input_stream_206, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;)V').
name_ref(m_reader_input_stream_207, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V').
name_ref(m_reader_input_stream_208, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V').
name_ref(m_reader_input_stream_209, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V').
name_ref(m_reader_input_stream_210, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;)V').
name_ref(m_reader_input_stream_211, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V').
name_ref(m_reader_origin_27, method, 'ReaderOrigin', 'Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;.(Ljava/io/Reader;)V').
name_ref(m_relative_sorted_paths_97, method, 'RelativeSortedPaths', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;').
name_ref(m_relativize_173, method, 'relativize', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;').
name_ref(m_require_exists_174, method, 'requireExists', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;').
name_ref(m_require_non_null_39, method, 'requireNonNull', 'Ljava/util/Objects;.requireNonNull<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;').
name_ref(m_set_buffer_size_90, method, 'setBufferSize', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setBufferSize(I)TB;').
name_ref(m_set_buffer_size_91, method, 'setBufferSize', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setBufferSize(Ljava/lang/Integer;)TB;').
name_ref(m_set_buffer_size_default_92, method, 'setBufferSizeDefault', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setBufferSizeDefault(I)TB;').
name_ref(m_set_byte_array_66, method, 'setByteArray', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setByteArray([B)TB;').
name_ref(m_set_char_sequence_67, method, 'setCharSequence', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setCharSequence(Ljava/lang/CharSequence;)TB;').
name_ref(m_set_charset_199, method, 'setCharset', 'Lorg/apache/commons/io/input/ReaderInputStream$Builder;.setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/ReaderInputStream$Builder;').
name_ref(m_set_charset_93, method, 'setCharset', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setCharset(Ljava/nio/charset/Charset;)TB;').
name_ref(m_set_charset_94, method, 'setCharset', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setCharset(Ljava/lang/String;)TB;').
name_ref(m_set_charset_default_95, method, 'setCharsetDefault', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setCharsetDefault(Ljava/nio/charset/Charset;)TB;').
name_ref(m_set_charset_encoder_200, method, 'setCharsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream$Builder;.setCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Lorg/apache/commons/io/input/ReaderInputStream$Builder;').
name_ref(m_set_dos_read_only_175, method, 'setDosReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_file_68, method, 'setFile', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setFile(Ljava/io/File;)TB;').
name_ref(m_set_file_69, method, 'setFile', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setFile(Ljava/lang/String;)TB;').
name_ref(m_set_input_stream_70, method, 'setInputStream', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setInputStream(Ljava/io/InputStream;)TB;').
name_ref(m_set_last_modified_time_176, method, 'setLastModifiedTime', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;').
name_ref(m_set_open_options_96, method, 'setOpenOptions', 'Lorg/apache/commons/io/build/AbstractStreamBuilder;.setOpenOptions([Ljava/nio/file/OpenOption;)TB;').
name_ref(m_set_origin_71, method, 'setOrigin', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setOrigin(Lorg/apache/commons/io/build/AbstractOrigin<**>;)TB;').
name_ref(m_set_output_stream_73, method, 'setOutputStream', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setOutputStream(Ljava/io/OutputStream;)TB;').
name_ref(m_set_path_74, method, 'setPath', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setPath(Ljava/nio/file/Path;)TB;').
name_ref(m_set_path_75, method, 'setPath', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setPath(Ljava/lang/String;)TB;').
name_ref(m_set_posix_delete_permissions_177, method, 'setPosixDeletePermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_posix_permissions_178, method, 'setPosixPermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_posix_read_only_file_179, method, 'setPosixReadOnlyFile', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;').
name_ref(m_set_read_only_180, method, 'setReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_set_reader_76, method, 'setReader', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setReader(Ljava/io/Reader;)TB;').
name_ref(m_set_uri_77, method, 'setURI', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setURI(Ljava/net/URI;)TB;').
name_ref(m_set_writer_78, method, 'setWriter', 'Lorg/apache/commons/io/build/AbstractOriginSupplier;.setWriter(Ljava/io/Writer;)TB;').
name_ref(m_size_11, method, 'size', 'Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;.size()J|Ljava/io/IOException;').
name_ref(m_size_5, method, 'size', 'Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;.size()J|Ljava/io/IOException;').
name_ref(m_size_50, method, 'size', 'Lorg/apache/commons/io/build/AbstractOrigin;.size()J|Ljava/io/IOException;').
name_ref(m_size_of_181, method, 'sizeOf', 'Lorg/apache/commons/io/file/PathUtils;.sizeOf(Ljava/nio/file/Path;)J|Ljava/io/IOException;').
name_ref(m_size_of_as_big_integer_182, method, 'sizeOfAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;').
name_ref(m_size_of_directory_183, method, 'sizeOfDirectory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectory(Ljava/nio/file/Path;)J|Ljava/io/IOException;').
name_ref(m_size_of_directory_as_big_integer_184, method, 'sizeOfDirectoryAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;').
name_ref(m_string_builder_219, method, 'StringBuilder', 'Ljava/lang/StringBuilder;.()V').
name_ref(m_string_reader_240, method, 'StringReader', 'Ljava/io/StringReader;.(Ljava/lang/String;)V').
name_ref(m_test_buffer_smallest_224, method, 'testBufferSmallest', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testBufferSmallest()V|Ljava/io/IOException;').
name_ref(m_test_buffer_too_small_225, method, 'testBufferTooSmall', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testBufferTooSmall()V').
name_ref(m_test_charset_encoder_flush_226, method, 'testCharsetEncoderFlush', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testCharsetEncoderFlush(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_test_charset_mismatch_infinite_loop_227, method, 'testCharsetMismatchInfiniteLoop', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testCharsetMismatchInfiniteLoop()V|Ljava/io/IOException;').
name_ref(m_test_coding_error_228, method, 'testCodingError', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testCodingError()V|Ljava/io/IOException;').
name_ref(m_test_coding_error_action_229, method, 'testCodingErrorAction', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testCodingErrorAction()V|Ljava/io/IOException;').
name_ref(m_test_construct_null_charset_230, method, 'testConstructNullCharset', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testConstructNullCharset()V|Ljava/io/IOException;').
name_ref(m_test_construct_null_charset_encoder_231, method, 'testConstructNullCharsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testConstructNullCharsetEncoder()V|Ljava/io/IOException;').
name_ref(m_test_construct_null_charset_name_encoder_232, method, 'testConstructNullCharsetNameEncoder', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testConstructNullCharsetNameEncoder()V|Ljava/io/IOException;').
name_ref(m_test_large_utf8with_buffered_read_233, method, 'testLargeUTF8WithBufferedRead', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testLargeUTF8WithBufferedRead()V|Ljava/io/IOException;').
name_ref(m_test_large_utf8with_single_byte_read_234, method, 'testLargeUTF8WithSingleByteRead', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testLargeUTF8WithSingleByteRead()V|Ljava/io/IOException;').
name_ref(m_test_read_zero_235, method, 'testReadZero', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testReadZero()V|Ljava/lang/Exception;').
name_ref(m_test_read_zero_236, method, 'testReadZero', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testReadZero(Ljava/lang/String;Lorg/apache/commons/io/input/ReaderInputStream;)V|Ljava/io/IOException;').
name_ref(m_test_read_zero_empty_string_237, method, 'testReadZeroEmptyString', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testReadZeroEmptyString()V|Ljava/lang/Exception;').
name_ref(m_test_reset_charset_238, method, 'testResetCharset', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testResetCharset()V').
name_ref(m_test_reset_charset_encoder_241, method, 'testResetCharsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testResetCharsetEncoder()V').
name_ref(m_test_reset_charset_name_242, method, 'testResetCharsetName', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testResetCharsetName()V').
name_ref(m_test_utf16with_single_byte_read_243, method, 'testUTF16WithSingleByteRead', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testUTF16WithSingleByteRead()V|Ljava/io/IOException;').
name_ref(m_test_utf8with_buffered_read_244, method, 'testUTF8WithBufferedRead', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testUTF8WithBufferedRead()V|Ljava/io/IOException;').
name_ref(m_test_utf8with_single_byte_read_245, method, 'testUTF8WithSingleByteRead', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testUTF8WithSingleByteRead()V|Ljava/io/IOException;').
name_ref(m_test_with_buffered_read_246, method, 'testWithBufferedRead', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testWithBufferedRead([BLorg/apache/commons/io/input/ReaderInputStream;)V|Ljava/io/IOException;').
name_ref(m_test_with_buffered_read_247, method, 'testWithBufferedRead', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testWithBufferedRead(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_test_with_single_byte_read_248, method, 'testWithSingleByteRead', 'Lorg/apache/commons/io/input/ReaderInputStreamTest;.testWithSingleByteRead(Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_to_file_visit_option_set_185, method, 'toFileVisitOptionSet', 'Lorg/apache/commons/io/file/PathUtils;.toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;').
name_ref(m_to_string_221, method, 'toString', 'Ljava/lang/StringBuilder;.toString()Ljava/lang/String;').
name_ref(m_to_string_51, method, 'toString', 'Lorg/apache/commons/io/build/AbstractOrigin;.toString()Ljava/lang/String;').
name_ref(m_touch_186, method, 'touch', 'Lorg/apache/commons/io/file/PathUtils;.touch(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_uriorigin_33, method, 'URIOrigin', 'Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;.(Ljava/net/URI;)V').
name_ref(m_visit_file_tree_187, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_188, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_189, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_190, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;').
name_ref(m_wait_for_191, method, 'waitFor', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_walk_192, method, 'walk', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;').
name_ref(m_with_posix_file_attributes_193, method, 'withPosixFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;').
name_ref(m_write_string_194, method, 'writeString', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_writer_origin_36, method, 'WriterOrigin', 'Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;.(Ljava/io/Writer;)V').
name_ref(q_append_5, q_name, 'StandardOpenOption.APPEND', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.APPEND)Ljava/nio/file/StandardOpenOption;').
name_ref(q_create_3, q_name, 'StandardOpenOption.CREATE', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.CREATE)Ljava/nio/file/StandardOpenOption;').
name_ref(q_default_buffer_size_2, q_name, 'IOUtils.DEFAULT_BUFFER_SIZE', 'Lorg/apache/commons/io/IOUtils;:Lorg/apache/commons/io/IOUtils;.DEFAULT_BUFFER_SIZE)I').
name_ref(q_empty_open_option_array_1, q_name, 'PathUtils.EMPTY_OPEN_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;:Lorg/apache/commons/io/file/PathUtils;.EMPTY_OPEN_OPTION_ARRAY)[Ljava/nio/file/OpenOption;').
name_ref(q_nofollow_links_6, q_name, 'LinkOption.NOFOLLOW_LINKS', 'Ljava/nio/file/LinkOption;:Ljava/nio/file/LinkOption;.NOFOLLOW_LINKS)Ljava/nio/file/LinkOption;').
name_ref(q_truncate_existing_4, q_name, 'StandardOpenOption.TRUNCATE_EXISTING', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.TRUNCATE_EXISTING)Ljava/nio/file/StandardOpenOption;').
name_ref(q_utf_16_7, q_name, 'StandardCharsets.UTF_16', 'Ljava/nio/charset/StandardCharsets;:Ljava/nio/charset/StandardCharsets;.UTF_16)Ljava/nio/charset/Charset;').
name_ref(q_utf_8_8, q_name, 'StandardCharsets.UTF_8', 'Ljava/nio/charset/StandardCharsets;:Ljava/nio/charset/StandardCharsets;.UTF_8)Ljava/nio/charset/Charset;').

%%% End of Code Facts

