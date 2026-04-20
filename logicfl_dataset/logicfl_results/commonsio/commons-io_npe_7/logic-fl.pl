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
param(p_charset_309, 1, m_set_charset_198).
param(p_charset_encoder_310, 1, m_set_charset_encoder_199).
assign(f_charset_encoder_308, p_charset_encoder_310, line(reader_input_stream_1, 139)).
method_invoc(reader_input_stream_1_expr6, m_set_charset_93, line(reader_input_stream_1, 140)).
argument(reader_input_stream_1_expr7, 1, reader_input_stream_1_expr6).
method_invoc(reader_input_stream_1_expr7, m_charset_200, line(reader_input_stream_1, 140)).
ref(p_charset_encoder_310, reader_input_stream_1_expr7, line(reader_input_stream_1, 140)).
return(reader_input_stream_1_expr8, m_builder_201, line(reader_input_stream_1, 153)).
method_invoc(reader_input_stream_1_expr8, m_builder_202, line(reader_input_stream_1, 153)).
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
test_failure(failure_1, 'org.apache.commons.io.input.ReaderInputStreamTest', 'testResetCharsetEncoder').
trace(trace_1, failure_1, m_set_charset_encoder_199, line(reader_input_stream_1, 140), failure_1, target).
trace(trace_2, trace_1, 'testResetCharsetEncoder', line(org_apache_commons_io_input_reader_input_stream_test, 247), failure_1, target).
trace(trace_3, trace_2, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_4, trace_3, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_charset_encoder_310, null, line(reader_input_stream_1, 139)).
val(p_charset_encoder_310, null, line(reader_input_stream_1, 140)).



%%% End of Facts