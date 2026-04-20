%%% Logic-FL Facts
:- style_check(-discontiguous).

%path_utils_1 - org.apache.commons.io.file.PathUtils
param(p_dir_1_1, 1, m_relative_sorted_paths_1).
param(p_dir_2_2, 2, m_relative_sorted_paths_1).
param(p_max_depth_3, 3, m_relative_sorted_paths_1).
param(p_link_options_4, 4, m_relative_sorted_paths_1).
param(p_file_visit_options_5, 5, m_relative_sorted_paths_1).
throw(m_relative_sorted_paths_1, ioexception).
assign(f_open_options_truncate_6, path_utils_1_expr1, line(path_utils_1, 152)).
ref(t_standard_open_option_1, q_create_1, line(path_utils_1, 152)).
ref(t_standard_open_option_1, q_truncate_existing_2, line(path_utils_1, 152)).
assign(f_open_options_append_7, path_utils_1_expr2, line(path_utils_1, 154)).
ref(t_standard_open_option_1, q_create_3, line(path_utils_1, 154)).
ref(t_standard_open_option_1, q_append_3, line(path_utils_1, 154)).
assign(f_empty_copy_options_8, path_utils_1_expr3, line(path_utils_1, 161)).
assign(f_empty_delete_option_array_9, path_utils_1_expr4, line(path_utils_1, 168)).
assign(f_empty_file_attribute_array_10, path_utils_1_expr5, line(path_utils_1, 175)).
assign(f_empty_file_visit_option_array_11, path_utils_1_expr6, line(path_utils_1, 180)).
assign(f_empty_link_option_array_12, path_utils_1_expr7, line(path_utils_1, 185)).
assign(f_nofollow_link_option_array_13, path_utils_1_expr8, line(path_utils_1, 194)).
ref(t_link_option_2, q_nofollow_links_4, line(path_utils_1, 194)).
assign(f_null_link_option_14, path_utils_1_literal1, line(path_utils_1, 201)).
assign(f_empty_open_option_array_15, path_utils_1_expr9, line(path_utils_1, 206)).
assign(f_empty_path_array_16, path_utils_1_expr10, line(path_utils_1, 213)).
param(p_directory_17, 1, m_accumulate_2).
param(p_max_depth_18, 2, m_accumulate_2).
param(p_file_visit_options_19, 3, m_accumulate_2).
throw(m_accumulate_2, ioexception).
param(p_directory_20, 1, m_clean_directory_3).
throw(m_clean_directory_3, ioexception).
param(p_directory_21, 1, m_clean_directory_4).
param(p_delete_options_22, 2, m_clean_directory_4).
throw(m_clean_directory_4, ioexception).
param(p_file_23, 1, m_compare_last_modified_time_to_5).
param(p_file_time_24, 2, m_compare_last_modified_time_to_5).
param(p_options_25, 3, m_compare_last_modified_time_to_5).
throw(m_compare_last_modified_time_to_5, ioexception).
param(p_in_26, 1, m_copy_6).
param(p_target_27, 2, m_copy_6).
param(p_copy_options_28, 3, m_copy_6).
throw(m_copy_6, ioexception).
param(p_source_directory_29, 1, m_copy_directory_7).
param(p_target_directory_30, 2, m_copy_directory_7).
param(p_copy_options_31, 3, m_copy_directory_7).
throw(m_copy_directory_7, ioexception).
param(p_source_file_32, 1, m_copy_file_8).
param(p_target_file_33, 2, m_copy_file_8).
param(p_copy_options_34, 3, m_copy_file_8).
throw(m_copy_file_8, ioexception).
param(p_source_file_35, 1, m_copy_file_to_directory_9).
param(p_target_directory_36, 2, m_copy_file_to_directory_9).
param(p_copy_options_37, 3, m_copy_file_to_directory_9).
throw(m_copy_file_to_directory_9, ioexception).
param(p_source_file_38, 1, m_copy_file_to_directory_10).
param(p_target_directory_39, 2, m_copy_file_to_directory_10).
param(p_copy_options_40, 3, m_copy_file_to_directory_10).
throw(m_copy_file_to_directory_10, ioexception).
param(p_directory_41, 1, m_count_directory_11).
throw(m_count_directory_11, ioexception).
param(p_directory_42, 1, m_count_directory_as_big_integer_12).
throw(m_count_directory_as_big_integer_12, ioexception).
param(p_path_43, 1, m_create_parent_directories_13).
param(p_attrs_44, 2, m_create_parent_directories_13).
throw(m_create_parent_directories_13, ioexception).
param(p_path_45, 1, m_create_parent_directories_14).
param(p_link_option_46, 2, m_create_parent_directories_14).
param(p_attrs_47, 3, m_create_parent_directories_14).
throw(m_create_parent_directories_14, ioexception).
param(p_path_48, 1, m_delete_16).
throw(m_delete_16, ioexception).
param(p_path_49, 1, m_delete_17).
param(p_delete_options_50, 2, m_delete_17).
throw(m_delete_17, ioexception).
param(p_path_51, 1, m_delete_18).
param(p_link_options_52, 2, m_delete_18).
param(p_delete_options_53, 3, m_delete_18).
throw(m_delete_18, ioexception).
param(p_directory_54, 1, m_delete_directory_19).
throw(m_delete_directory_19, ioexception).
param(p_directory_55, 1, m_delete_directory_20).
param(p_delete_options_56, 2, m_delete_directory_20).
throw(m_delete_directory_20, ioexception).
param(p_directory_57, 1, m_delete_directory_21).
param(p_link_options_58, 2, m_delete_directory_21).
param(p_delete_options_59, 3, m_delete_directory_21).
throw(m_delete_directory_21, ioexception).
param(p_file_60, 1, m_delete_file_22).
throw(m_delete_file_22, ioexception).
param(p_file_61, 1, m_delete_file_23).
param(p_delete_options_62, 2, m_delete_file_23).
throw(m_delete_file_23, ioexception).
param(p_file_63, 1, m_delete_file_24).
param(p_link_options_64, 2, m_delete_file_24).
param(p_delete_options_65, 3, m_delete_file_24).
throw(m_delete_file_24, no_such_file_exception).
throw(m_delete_file_24, ioexception).
param(p_path_66, 1, m_delete_on_exit_25).
param(p_path_1_67, 1, m_directory_and_file_content_equals_26).
param(p_path_2_68, 2, m_directory_and_file_content_equals_26).
throw(m_directory_and_file_content_equals_26, ioexception).
param(p_path_1_69, 1, m_directory_and_file_content_equals_27).
param(p_path_2_70, 2, m_directory_and_file_content_equals_27).
param(p_link_options_71, 3, m_directory_and_file_content_equals_27).
param(p_open_options_72, 4, m_directory_and_file_content_equals_27).
param(p_file_visit_option_73, 5, m_directory_and_file_content_equals_27).
throw(m_directory_and_file_content_equals_27, ioexception).
param(p_path_1_74, 1, m_directory_content_equals_28).
param(p_path_2_75, 2, m_directory_content_equals_28).
throw(m_directory_content_equals_28, ioexception).
param(p_path_1_76, 1, m_directory_content_equals_29).
param(p_path_2_77, 2, m_directory_content_equals_29).
param(p_max_depth_78, 3, m_directory_content_equals_29).
param(p_link_options_79, 4, m_directory_content_equals_29).
param(p_file_visit_options_80, 5, m_directory_content_equals_29).
throw(m_directory_content_equals_29, ioexception).
param(p_path_81, 1, m_exists_30).
param(p_options_82, 2, m_exists_30).
param(p_path_1_83, 1, m_file_content_equals_31).
param(p_path_2_84, 2, m_file_content_equals_31).
throw(m_file_content_equals_31, ioexception).
param(p_path_1_85, 1, m_file_content_equals_32).
param(p_path_2_86, 2, m_file_content_equals_32).
param(p_link_options_87, 3, m_file_content_equals_32).
param(p_open_options_88, 4, m_file_content_equals_32).
throw(m_file_content_equals_32, ioexception).
param(p_filter_89, 1, m_filter_33).
param(p_paths_90, 2, m_filter_33).
param(p_filter_91, 1, m_filter_paths_34).
param(p_stream_92, 2, m_filter_paths_34).
param(p_collector_93, 3, m_filter_paths_34).
param(p_source_path_94, 1, m_get_acl_entry_list_35).
throw(m_get_acl_entry_list_35, ioexception).
param(p_path_95, 1, m_get_acl_file_attribute_view_36).
param(p_options_96, 2, m_get_acl_file_attribute_view_36).
param(p_path_97, 1, m_get_dos_file_attribute_view_37).
param(p_options_98, 2, m_get_dos_file_attribute_view_37).
param(p_path_99, 1, m_get_file_name_38).
param(p_function_100, 2, m_get_file_name_38).
assign(v_file_name_101, path_utils_1_expr11, line(path_utils_1, 881)).
method_invoc(path_utils_1_expr11, m_get_file_name_39, line(path_utils_1, 881)).
ref(p_path_99, path_utils_1_expr11, line(path_utils_1, 881)).
param(p_path_102, 1, m_get_file_name_string_40).
param(p_file_103, 1, m_get_last_modified_file_time_41).
throw(m_get_last_modified_file_time_41, ioexception).
param(p_path_104, 1, m_get_last_modified_file_time_42).
param(p_default_if_absent_105, 2, m_get_last_modified_file_time_42).
param(p_options_106, 3, m_get_last_modified_file_time_42).
throw(m_get_last_modified_file_time_42, ioexception).
param(p_path_107, 1, m_get_last_modified_file_time_43).
param(p_options_108, 2, m_get_last_modified_file_time_43).
throw(m_get_last_modified_file_time_43, ioexception).
param(p_uri_109, 1, m_get_last_modified_file_time_44).
throw(m_get_last_modified_file_time_44, ioexception).
param(p_url_110, 1, m_get_last_modified_file_time_45).
throw(m_get_last_modified_file_time_45, ioexception).
throw(m_get_last_modified_file_time_45, urisyntax_exception).
param(p_path_111, 1, m_get_last_modified_time_46).
param(p_options_112, 2, m_get_last_modified_time_46).
throw(m_get_last_modified_time_46, ioexception).
param(p_path_113, 1, m_get_parent_47).
param(p_path_114, 1, m_get_posix_file_attribute_view_48).
param(p_options_115, 2, m_get_posix_file_attribute_view_48).
param(p_path_116, 1, m_is_directory_50).
param(p_options_117, 2, m_is_directory_50).
param(p_path_118, 1, m_is_empty_51).
throw(m_is_empty_51, ioexception).
param(p_directory_119, 1, m_is_empty_directory_52).
throw(m_is_empty_directory_52, ioexception).
param(p_file_120, 1, m_is_empty_file_53).
throw(m_is_empty_file_53, ioexception).
param(p_file_121, 1, m_is_newer_54).
param(p_czdt_122, 2, m_is_newer_54).
param(p_options_123, 3, m_is_newer_54).
throw(m_is_newer_54, ioexception).
param(p_file_124, 1, m_is_newer_55).
param(p_file_time_125, 2, m_is_newer_55).
param(p_options_126, 3, m_is_newer_55).
throw(m_is_newer_55, ioexception).
param(p_file_127, 1, m_is_newer_56).
param(p_instant_128, 2, m_is_newer_56).
param(p_options_129, 3, m_is_newer_56).
throw(m_is_newer_56, ioexception).
param(p_file_130, 1, m_is_newer_57).
param(p_time_millis_131, 2, m_is_newer_57).
param(p_options_132, 3, m_is_newer_57).
throw(m_is_newer_57, ioexception).
param(p_file_133, 1, m_is_newer_58).
param(p_reference_134, 2, m_is_newer_58).
throw(m_is_newer_58, ioexception).
param(p_file_135, 1, m_is_older_59).
param(p_file_time_136, 2, m_is_older_59).
param(p_options_137, 3, m_is_older_59).
throw(m_is_older_59, ioexception).
param(p_file_138, 1, m_is_older_60).
param(p_instant_139, 2, m_is_older_60).
param(p_options_140, 3, m_is_older_60).
throw(m_is_older_60, ioexception).
param(p_file_141, 1, m_is_older_61).
param(p_time_millis_142, 2, m_is_older_61).
param(p_options_143, 3, m_is_older_61).
throw(m_is_older_61, ioexception).
param(p_file_144, 1, m_is_older_62).
param(p_reference_145, 2, m_is_older_62).
throw(m_is_older_62, ioexception).
param(p_test_146, 1, m_is_posix_63).
param(p_options_147, 2, m_is_posix_63).
param(p_path_148, 1, m_is_regular_file_64).
param(p_options_149, 2, m_is_regular_file_64).
param(p_dir_150, 1, m_new_directory_stream_65).
param(p_path_filter_151, 2, m_new_directory_stream_65).
throw(m_new_directory_stream_65, ioexception).
param(p_path_152, 1, m_new_output_stream_66).
param(p_append_153, 2, m_new_output_stream_66).
throw(m_new_output_stream_66, ioexception).
param(p_path_154, 1, m_new_output_stream_67).
param(p_link_options_155, 2, m_new_output_stream_67).
param(p_open_options_156, 3, m_new_output_stream_67).
throw(m_new_output_stream_67, ioexception).
param(p_path_157, 1, m_not_exists_69).
param(p_options_158, 2, m_not_exists_69).
param(p_delete_options_159, 1, m_override_read_only_70).
param(p_path_160, 1, m_read_attributes_71).
param(p_type_161, 2, m_read_attributes_71).
param(p_options_162, 3, m_read_attributes_71).
param(p_path_163, 1, m_read_basic_file_attributes_72).
throw(m_read_basic_file_attributes_72, ioexception).
param(p_path_164, 1, m_read_basic_file_attributes_73).
param(p_options_165, 2, m_read_basic_file_attributes_73).
param(p_path_166, 1, m_read_basic_file_attributes_unchecked_74).
param(p_path_167, 1, m_read_dos_file_attributes_75).
param(p_options_168, 2, m_read_dos_file_attributes_75).
param(p_path_169, 1, m_read_if_symbolic_link_76).
throw(m_read_if_symbolic_link_76, ioexception).
param(p_path_170, 1, m_read_os_file_attributes_77).
param(p_options_171, 2, m_read_os_file_attributes_77).
param(p_path_172, 1, m_read_posix_file_attributes_78).
param(p_options_173, 2, m_read_posix_file_attributes_78).
param(p_path_174, 1, m_read_string_79).
param(p_charset_175, 2, m_read_string_79).
throw(m_read_string_79, ioexception).
param(p_collection_176, 1, m_relativize_80).
param(p_parent_177, 2, m_relativize_80).
param(p_sort_178, 3, m_relativize_80).
param(p_comparator_179, 4, m_relativize_80).
param(p_file_180, 1, m_require_exists_81).
param(p_file_param_name_181, 2, m_require_exists_81).
param(p_options_182, 3, m_require_exists_81).
param(p_path_183, 1, m_set_dos_read_only_82).
param(p_read_only_184, 2, m_set_dos_read_only_82).
param(p_link_options_185, 3, m_set_dos_read_only_82).
throw(m_set_dos_read_only_82, ioexception).
param(p_source_file_186, 1, m_set_last_modified_time_83).
param(p_target_file_187, 2, m_set_last_modified_time_83).
throw(m_set_last_modified_time_83, ioexception).
param(p_parent_188, 1, m_set_posix_delete_permissions_84).
param(p_enable_delete_children_189, 2, m_set_posix_delete_permissions_84).
param(p_link_options_190, 3, m_set_posix_delete_permissions_84).
throw(m_set_posix_delete_permissions_84, ioexception).
param(p_path_191, 1, m_set_posix_permissions_85).
param(p_add_permissions_192, 2, m_set_posix_permissions_85).
param(p_update_permissions_193, 3, m_set_posix_permissions_85).
param(p_link_options_194, 4, m_set_posix_permissions_85).
throw(m_set_posix_permissions_85, ioexception).
param(p_path_195, 1, m_set_posix_read_only_file_86).
param(p_read_only_196, 2, m_set_posix_read_only_file_86).
param(p_link_options_197, 3, m_set_posix_read_only_file_86).
throw(m_set_posix_read_only_file_86, ioexception).
param(p_path_198, 1, m_set_read_only_87).
param(p_read_only_199, 2, m_set_read_only_87).
param(p_link_options_200, 3, m_set_read_only_87).
throw(m_set_read_only_87, ioexception).
param(p_path_201, 1, m_size_of_88).
throw(m_size_of_88, ioexception).
param(p_path_202, 1, m_size_of_as_big_integer_89).
throw(m_size_of_as_big_integer_89, ioexception).
param(p_directory_203, 1, m_size_of_directory_90).
throw(m_size_of_directory_90, ioexception).
param(p_directory_204, 1, m_size_of_directory_as_big_integer_91).
throw(m_size_of_directory_as_big_integer_91, ioexception).
param(p_file_visit_options_205, 1, m_to_file_visit_option_set_92).
param(p_file_206, 1, m_touch_93).
throw(m_touch_93, ioexception).
param(p_visitor_207, 1, m_visit_file_tree_94).
param(p_directory_208, 2, m_visit_file_tree_94).
throw(m_visit_file_tree_94, ioexception).
param(p_visitor_209, 1, m_visit_file_tree_95).
param(p_start_210, 2, m_visit_file_tree_95).
param(p_options_211, 3, m_visit_file_tree_95).
param(p_max_depth_212, 4, m_visit_file_tree_95).
throw(m_visit_file_tree_95, ioexception).
param(p_visitor_213, 1, m_visit_file_tree_96).
param(p_first_214, 2, m_visit_file_tree_96).
param(p_more_215, 3, m_visit_file_tree_96).
throw(m_visit_file_tree_96, ioexception).
param(p_visitor_216, 1, m_visit_file_tree_97).
param(p_uri_217, 2, m_visit_file_tree_97).
throw(m_visit_file_tree_97, ioexception).
param(p_file_218, 1, m_wait_for_98).
param(p_timeout_219, 2, m_wait_for_98).
param(p_options_220, 3, m_wait_for_98).
param(p_start_221, 1, m_walk_99).
param(p_path_filter_222, 2, m_walk_99).
param(p_max_depth_223, 3, m_walk_99).
param(p_read_attributes_224, 4, m_walk_99).
param(p_options_225, 5, m_walk_99).
throw(m_walk_99, ioexception).
param(p_path_226, 1, m_with_posix_file_attributes_100).
param(p_link_options_227, 2, m_with_posix_file_attributes_100).
param(p_override_read_only_228, 3, m_with_posix_file_attributes_100).
param(p_function_229, 4, m_with_posix_file_attributes_100).
throw(m_with_posix_file_attributes_100, ioexception).
param(p_path_230, 1, m_write_string_101).
param(p_char_sequence_231, 2, m_write_string_101).
param(p_charset_232, 3, m_write_string_101).
param(p_open_options_233, 4, m_write_string_101).
throw(m_write_string_101, ioexception).

%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
assign(f_byte_array_fixture_234, path_utils_test_1_expr1, line(path_utils_test_1, 68)).
method_invoc(path_utils_test_1_expr1, m_get_bytes_103, line(path_utils_test_1, 68)).
argument(q_utf_8_5, 1, path_utils_test_1_expr1).
ref(f_string_fixture_235, path_utils_test_1_expr1, line(path_utils_test_1, 68)).
ref(t_standard_charsets_4, q_utf_8_5, line(path_utils_test_1, 68)).
throw(m_create_temp_symlinked_relative_dir_104, ioexception).
param(p_file_236, 1, m_get_last_modified_millis_106).
throw(m_get_last_modified_millis_106, ioexception).
param(p_p_237, 1, m_open_archive_108).
param(p_create_new_238, 2, m_open_archive_108).
throw(m_open_archive_108, ioexception).
param(p_file_239, 1, m_set_last_modified_millis_109).
param(p_millis_240, 2, m_set_last_modified_millis_109).
throw(m_set_last_modified_millis_109, ioexception).
throw(m_test_copy_directory_for_different_filesystems_with_absolute_path_110, ioexception).
throw(m_test_copy_directory_for_different_filesystems_with_absolute_path_reverse_111, ioexception).
throw(m_test_copy_directory_for_different_filesystems_with_relative_path_112, ioexception).
throw(m_test_copy_directory_for_different_filesystems_with_relative_path_reverse_113, ioexception).
throw(m_test_copy_file_114, ioexception).
throw(m_test_copy_url_115, ioexception).
throw(m_test_create_directories_already_exists_116, ioexception).
throw(m_test_create_directories_for_roots_117, ioexception).
throw(m_test_create_directories_for_roots_link_option_null_118, ioexception).
throw(m_test_create_directories_new_119, ioexception).
throw(m_test_create_directories_symlink_120, ioexception).
throw(m_test_create_directories_symlink_clashing_121, ioexception).
method_invoc(path_utils_test_1_expr2, m_assert_null_123, line(path_utils_test_1, 251)).
argument(path_utils_test_1_expr3, 1, path_utils_test_1_expr2).
method_invoc(path_utils_test_1_expr3, m_get_file_name_38, line(path_utils_test_1, 251)).
throw(path_utils_test_1_expr3, null_pointer_exception, line(path_utils_test_1, 251)).
argument(path_utils_test_1_literal1, 1, path_utils_test_1_expr3).
argument(path_utils_test_1_literal2, 2, path_utils_test_1_expr3).
ref(t_path_utils_5, path_utils_test_1_expr3, line(path_utils_test_1, 251)).
throw(m_test_get_last_modified_file_time__file__present_125, ioexception).
throw(m_test_get_last_modified_file_time__path__absent_126, ioexception).
throw(m_test_get_last_modified_file_time__path__file_time__absent_127, ioexception).
throw(m_test_get_last_modified_file_time__path__present_128, ioexception).
throw(m_test_get_last_modified_file_time__uri_present_129, ioexception).
throw(m_test_get_last_modified_file_time__url_present_130, ioexception).
throw(m_test_get_last_modified_file_time__url_present_130, urisyntax_exception).
throw(m_test_is_directory_132, ioexception).
throw(m_test_is_posix_133, ioexception).
throw(m_test_is_regular_file_134, ioexception).
throw(m_test_new_directory_stream_135, exception).
throw(m_test_new_output_stream_existing_file_append_false_136, ioexception).
throw(m_test_new_output_stream_existing_file_append_true_137, ioexception).
param(p_append_241, 1, m_test_new_output_stream_new_file_138).
throw(m_test_new_output_stream_new_file_138, ioexception).
throw(m_test_new_output_stream_new_file_append_false_139, ioexception).
throw(m_test_new_output_stream_new_file_append_true_140, ioexception).
throw(m_test_new_output_stream_new_file_inside_existing_symlinked_dir_141, ioexception).
throw(m_test_read_attributes_posix_142, ioexception).
throw(m_test_read_string_empty_file_143, ioexception).
throw(m_test_read_string_simple_utf8_144, ioexception).
throw(m_test_set_read_only_file_145, ioexception).
throw(m_test_touch_146, ioexception).
throw(m_test_write_string_to_file1_147, exception).
param(p_append_242, 1, m_write_to_new_output_stream_148).
throw(m_write_to_new_output_stream_148, ioexception).
throw(path_utils_test_1_expr2, null_pointer_exception, line(path_utils_test_1, 251)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.file.PathUtilsTest', 'testGetFileName').
trace(trace_1, failure_1, m_get_file_name_38, line(path_utils_1, 881), failure_1, target).
trace(trace_2, trace_1, m_test_get_file_name_122, line(path_utils_test_1, 251), failure_1, target).
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

val(p_path_99, null, line(path_utils_1, 881)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(path_utils_1, 'org.apache.commons.io.file.PathUtils').
class(path_utils_test_1, 'org.apache.commons.io.file.PathUtilsTest').

%%% Methods
%path_utils_1 - org.apache.commons.io.file.PathUtils
method(m_relative_sorted_paths_1, range(path_utils_1, 3729, 2899, 102, 149)).
method(m_accumulate_2, range(path_utils_1, 8361, 756, 215, 226)).
method(m_clean_directory_3, range(path_utils_1, 9123, 426, 228, 237)).
method(m_clean_directory_4, range(path_utils_1, 9555, 598, 239, 250)).
method(m_compare_last_modified_time_to_5, range(path_utils_1, 10159, 665, 252, 264)).
method(m_copy_6, range(path_utils_1, 10830, 789, 266, 280)).
method(m_copy_directory_7, range(path_utils_1, 11625, 774, 282, 295)).
method(m_copy_file_8, range(path_utils_1, 12405, 573, 297, 310)).
method(m_copy_file_to_directory_9, range(path_utils_1, 12984, 615, 312, 324)).
method(m_copy_file_to_directory_10, range(path_utils_1, 13605, 699, 326, 340)).
method(m_count_directory_11, range(path_utils_1, 14310, 456, 342, 351)).
method(m_count_directory_as_big_integer_12, range(path_utils_1, 14772, 471, 353, 363)).
method(m_create_parent_directories_13, range(path_utils_1, 15249, 710, 365, 379)).
method(m_create_parent_directories_14, range(path_utils_1, 15965, 1107, 381, 402)).
method(m_current_15, range(path_utils_1, 17078, 190, 404, 413)).
method(m_delete_16, range(path_utils_1, 17274, 869, 415, 432)).
method(m_delete_17, range(path_utils_1, 18149, 1172, 434, 454)).
method(m_delete_18, range(path_utils_1, 19327, 1274, 456, 477)).
method(m_delete_directory_19, range(path_utils_1, 20607, 419, 479, 488)).
method(m_delete_directory_20, range(path_utils_1, 21032, 842, 490, 504)).
method(m_delete_directory_21, range(path_utils_1, 21880, 693, 506, 518)).
method(m_delete_file_22, range(path_utils_1, 22579, 462, 520, 530)).
method(m_delete_file_23, range(path_utils_1, 23047, 708, 532, 545)).
method(m_delete_file_24, range(path_utils_1, 23761, 2249, 547, 598)).
method(m_delete_on_exit_25, range(path_utils_1, 26016, 250, 600, 608)).
method(m_directory_and_file_content_equals_26, range(path_utils_1, 26272, 712, 610, 621)).
method(m_directory_and_file_content_equals_27, range(path_utils_1, 26990, 2188, 623, 665)).
method(m_directory_content_equals_28, range(path_utils_1, 29184, 696, 667, 678)).
method(m_directory_content_equals_29, range(path_utils_1, 29886, 1009, 680, 695)).
method(m_exists_30, range(path_utils_1, 30901, 212, 697, 700)).
method(m_file_content_equals_31, range(path_utils_1, 31119, 809, 702, 717)).
method(m_file_content_equals_32, range(path_utils_1, 31934, 2890, 719, 783)).
method(m_filter_33, range(path_utils_1, 34830, 1238, 785, 816)).
method(m_filter_paths_34, range(path_utils_1, 36074, 631, 818, 831)).
method(m_get_acl_entry_list_35, range(path_utils_1, 36711, 579, 833, 844)).
method(m_get_acl_file_attribute_view_36, range(path_utils_1, 37296, 529, 846, 856)).
method(m_get_dos_file_attribute_view_37, range(path_utils_1, 37831, 529, 858, 868)).
method(m_get_file_name_38, range(path_utils_1, 38366, 568, 870, 883)).
method(m_get_file_name_string_40, range(path_utils_1, 38940, 329, 885, 895)).
method(m_get_last_modified_file_time_41, range(path_utils_1, 39275, 720, 897, 911)).
method(m_get_last_modified_file_time_42, range(path_utils_1, 40001, 691, 913, 925)).
method(m_get_last_modified_file_time_43, range(path_utils_1, 40698, 520, 927, 938)).
method(m_get_last_modified_file_time_44, range(path_utils_1, 41224, 438, 940, 950)).
method(m_get_last_modified_file_time_45, range(path_utils_1, 41668, 557, 952, 963)).
method(m_get_last_modified_time_46, range(path_utils_1, 42231, 205, 965, 967)).
method(m_get_parent_47, range(path_utils_1, 42442, 109, 969, 971)).
method(m_get_posix_file_attribute_view_48, range(path_utils_1, 42557, 539, 973, 983)).
method(m_get_temp_directory_49, range(path_utils_1, 43102, 268, 985, 993)).
method(m_is_directory_50, range(path_utils_1, 43376, 949, 995, 1009)).
method(m_is_empty_51, range(path_utils_1, 44331, 397, 1011, 1020)).
method(m_is_empty_directory_52, range(path_utils_1, 44734, 879, 1022, 1036)).
method(m_is_empty_file_53, range(path_utils_1, 45619, 556, 1038, 1049)).
method(m_is_newer_54, range(path_utils_1, 46181, 750, 1051, 1065)).
method(m_is_newer_55, range(path_utils_1, 46937, 778, 1067, 1083)).
method(m_is_newer_56, range(path_utils_1, 47721, 698, 1085, 1098)).
method(m_is_newer_57, range(path_utils_1, 48425, 787, 1100, 1113)).
method(m_is_newer_58, range(path_utils_1, 49218, 580, 1115, 1126)).
method(m_is_older_59, range(path_utils_1, 49804, 779, 1128, 1144)).
method(m_is_older_60, range(path_utils_1, 50589, 699, 1146, 1159)).
method(m_is_older_61, range(path_utils_1, 51294, 789, 1161, 1174)).
method(m_is_older_62, range(path_utils_1, 52089, 573, 1176, 1187)).
method(m_is_posix_63, range(path_utils_1, 52668, 444, 1189, 1199)).
method(m_is_regular_file_64, range(path_utils_1, 53118, 965, 1201, 1215)).
method(m_new_directory_stream_65, range(path_utils_1, 54089, 739, 1217, 1231)).
method(m_new_output_stream_66, range(path_utils_1, 54834, 625, 1233, 1245)).
method(m_new_output_stream_67, range(path_utils_1, 55465, 633, 1247, 1254)).
method(m_no_follow_link_option_array_68, range(path_utils_1, 56104, 308, 1256, 1263)).
method(m_not_exists_69, range(path_utils_1, 56418, 165, 1265, 1267)).
method(m_override_read_only_70, range(path_utils_1, 56589, 523, 1269, 1280)).
method(m_read_attributes_71, range(path_utils_1, 57118, 918, 1282, 1300)).
method(m_read_basic_file_attributes_72, range(path_utils_1, 58042, 396, 1302, 1312)).
method(m_read_basic_file_attributes_73, range(path_utils_1, 58444, 479, 1314, 1324)).
method(m_read_basic_file_attributes_unchecked_74, range(path_utils_1, 58929, 476, 1326, 1337)).
method(m_read_dos_file_attributes_75, range(path_utils_1, 59411, 471, 1339, 1349)).
method(m_read_if_symbolic_link_76, range(path_utils_1, 59888, 185, 1351, 1353)).
method(m_read_os_file_attributes_77, range(path_utils_1, 60079, 610, 1355, 1366)).
method(m_read_posix_file_attributes_78, range(path_utils_1, 60695, 505, 1368, 1378)).
method(m_read_string_79, range(path_utils_1, 61206, 532, 1380, 1392)).
method(m_relativize_80, range(path_utils_1, 61744, 794, 1394, 1409)).
method(m_require_exists_81, range(path_utils_1, 62544, 951, 1411, 1427)).
method(m_set_dos_read_only_82, range(path_utils_1, 63501, 397, 1429, 1436)).
method(m_set_last_modified_time_83, range(path_utils_1, 63904, 705, 1438, 1451)).
method(m_set_posix_delete_permissions_84, range(path_utils_1, 64615, 1243, 1453, 1475)).
method(m_set_posix_permissions_85, range(path_utils_1, 65864, 1160, 1477, 1500)).
method(m_set_posix_read_only_file_86, range(path_utils_1, 67030, 1204, 1502, 1527)).
method(m_set_read_only_87, range(path_utils_1, 68240, 1541, 1529, 1567)).
method(m_size_of_88, range(path_utils_1, 69787, 1070, 1569, 1587)).
method(m_size_of_as_big_integer_89, range(path_utils_1, 70863, 914, 1589, 1603)).
method(m_size_of_directory_90, range(path_utils_1, 71783, 867, 1605, 1620)).
method(m_size_of_directory_as_big_integer_91, range(path_utils_1, 72656, 598, 1622, 1633)).
method(m_to_file_visit_option_set_92, range(path_utils_1, 73260, 401, 1635, 1643)).
method(m_touch_93, range(path_utils_1, 73667, 839, 1645, 1664)).
method(m_visit_file_tree_94, range(path_utils_1, 74512, 898, 1666, 1683)).
method(m_visit_file_tree_95, range(path_utils_1, 75416, 1012, 1685, 1703)).
method(m_visit_file_tree_96, range(path_utils_1, 76434, 807, 1705, 1720)).
method(m_visit_file_tree_97, range(path_utils_1, 77247, 698, 1722, 1736)).
method(m_wait_for_98, range(path_utils_1, 77951, 1613, 1738, 1776)).
method(m_walk_99, range(path_utils_1, 79570, 1333, 1778, 1799)).
method(m_with_posix_file_attributes_100, range(path_utils_1, 80909, 641, 1801, 1811)).
method(m_write_string_101, range(path_utils_1, 81556, 1026, 1813, 1832)).
method(m_path_utils_102, range(path_utils_1, 82588, 105, 1834, 1839)).
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
method(m_create_temp_symlinked_relative_dir_104, range(path_utils_test_1, 2918, 649, 76, 92)).
method(m_current_105, range(path_utils_test_1, 3573, 66, 94, 96)).
method(m_get_last_modified_millis_106, range(path_utils_test_1, 3645, 137, 98, 100)).
method(m_get_non_existent_path_107, range(path_utils_test_1, 3788, 98, 102, 104)).
method(m_open_archive_108, range(path_utils_test_1, 3892, 492, 106, 115)).
method(m_set_last_modified_millis_109, range(path_utils_test_1, 4390, 167, 117, 119)).
method(m_test_copy_directory_for_different_filesystems_with_absolute_path_110, range(path_utils_test_1, 4563, 691, 121, 135)).
method(m_test_copy_directory_for_different_filesystems_with_absolute_path_reverse_111, range(path_utils_test_1, 5260, 854, 137, 152)).
method(m_test_copy_directory_for_different_filesystems_with_relative_path_112, range(path_utils_test_1, 6120, 904, 154, 171)).
method(m_test_copy_directory_for_different_filesystems_with_relative_path_reverse_113, range(path_utils_test_1, 7030, 837, 173, 188)).
method(m_test_copy_file_114, range(path_utils_test_1, 7873, 389, 190, 196)).
method(m_test_copy_url_115, range(path_utils_test_1, 8268, 517, 198, 205)).
method(m_test_create_directories_already_exists_116, range(path_utils_test_1, 8791, 180, 207, 210)).
method(m_test_create_directories_for_roots_117, range(path_utils_test_1, 8977, 404, 212, 220)).
method(m_test_create_directories_for_roots_link_option_null_118, range(path_utils_test_1, 9387, 298, 222, 228)).
method(m_test_create_directories_new_119, range(path_utils_test_1, 9691, 175, 230, 233)).
method(m_test_create_directories_symlink_120, range(path_utils_test_1, 9872, 401, 235, 241)).
method(m_test_create_directories_symlink_clashing_121, range(path_utils_test_1, 10279, 257, 243, 247)).
method(m_test_get_file_name_122, range(path_utils_test_1, 10542, 566, 249, 258)).
method(m_test_get_file_name_string_124, range(path_utils_test_1, 11114, 337, 260, 266)).
method(m_test_get_last_modified_file_time__file__present_125, range(path_utils_test_1, 11457, 169, 268, 271)).
method(m_test_get_last_modified_file_time__path__absent_126, range(path_utils_test_1, 11632, 167, 273, 276)).
method(m_test_get_last_modified_file_time__path__file_time__absent_127, range(path_utils_test_1, 11805, 262, 278, 282)).
method(m_test_get_last_modified_file_time__path__present_128, range(path_utils_test_1, 12073, 160, 284, 287)).
method(m_test_get_last_modified_file_time__uri_present_129, range(path_utils_test_1, 12239, 167, 289, 292)).
method(m_test_get_last_modified_file_time__url_present_130, range(path_utils_test_1, 12412, 195, 294, 297)).
method(m_test_get_temp_directory_131, range(path_utils_test_1, 12613, 203, 299, 303)).
method(m_test_is_directory_132, range(path_utils_test_1, 12822, 626, 305, 320)).
method(m_test_is_posix_133, range(path_utils_test_1, 13454, 341, 322, 332)).
method(m_test_is_regular_file_134, range(path_utils_test_1, 13801, 449, 334, 345)).
method(m_test_new_directory_stream_135, range(path_utils_test_1, 14256, 482, 347, 356)).
method(m_test_new_output_stream_existing_file_append_false_136, range(path_utils_test_1, 14744, 179, 358, 362)).
method(m_test_new_output_stream_existing_file_append_true_137, range(path_utils_test_1, 14929, 302, 364, 369)).
method(m_test_new_output_stream_new_file_138, range(path_utils_test_1, 15237, 218, 371, 374)).
method(m_test_new_output_stream_new_file_append_false_139, range(path_utils_test_1, 15461, 131, 376, 379)).
method(m_test_new_output_stream_new_file_append_true_140, range(path_utils_test_1, 15598, 129, 381, 384)).
method(m_test_new_output_stream_new_file_inside_existing_symlinked_dir_141, range(path_utils_test_1, 15733, 695, 386, 402)).
method(m_test_read_attributes_posix_142, range(path_utils_test_1, 16434, 395, 404, 414)).
method(m_test_read_string_empty_file_143, range(path_utils_test_1, 16835, 343, 416, 421)).
method(m_test_read_string_simple_utf8_144, range(path_utils_test_1, 17184, 375, 423, 429)).
method(m_test_set_read_only_file_145, range(path_utils_test_1, 17565, 2823, 431, 490)).
method(m_test_touch_146, range(path_utils_test_1, 20394, 1476, 492, 516)).
method(m_test_write_string_to_file1_147, range(path_utils_test_1, 21876, 335, 518, 524)).
method(m_write_to_new_output_stream_148, range(path_utils_test_1, 22217, 380, 526, 535)).

%%% Blocks
%path_utils_1 - org.apache.commons.io.file.PathUtils
block(path_utils_1_block1, block, path_utils_1_code90, body, range(path_utils_1, 38810, 124, 880, 883)).
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
block(path_utils_test_1_block1, block, path_utils_test_1_code13, body, range(path_utils_test_1, 10582, 526, 250, 258)).

%%% Statements
%path_utils_1 - org.apache.commons.io.file.PathUtils
stmt(path_utils_1_stmt1, variable_declaration_statement, path_utils_1_block1, (statements, 0), range(path_utils_1, 38820, 41, 881, 881)).
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
stmt(path_utils_test_1_stmt1, expression_statement, path_utils_test_1_block1, (statements, 0), range(path_utils_test_1, 10592, 46, 251, 251)).

%%% Expressions
%path_utils_1 - org.apache.commons.io.file.PathUtils
expr(path_utils_1_expr1, array_initializer, path_utils_1_code10, initializer, range(path_utils_1, 6698, 67, 152, 152), "{StandardOpenOption.CREATE,StandardOpenOption.TRUNCATE_EXISTING}").
expr(path_utils_1_expr2, array_initializer, path_utils_1_code18, initializer, range(path_utils_1, 6828, 56, 154, 154), "{StandardOpenOption.CREATE,StandardOpenOption.APPEND}").
expr(path_utils_1_expr3, array_initializer, path_utils_1_code26, initializer, range(path_utils_1, 7027, 2, 161, 161), "{}").
expr(path_utils_1_expr4, array_initializer, path_utils_1_code34, initializer, range(path_utils_1, 7183, 2, 168, 168), "{}").
expr(path_utils_1_expr5, array_initializer, path_utils_1_code44, initializer, range(path_utils_1, 7346, 2, 175, 175), "{}").
expr(path_utils_1_expr6, array_initializer, path_utils_1_code52, initializer, range(path_utils_1, 7485, 2, 180, 180), "{}").
expr(path_utils_1_expr7, array_initializer, path_utils_1_code60, initializer, range(path_utils_1, 7608, 2, 185, 185), "{}").
expr(path_utils_1_expr8, array_initializer, path_utils_1_code68, initializer, range(path_utils_1, 7868, 29, 194, 194), "{LinkOption.NOFOLLOW_LINKS}").
expr(path_utils_1_expr9, array_initializer, path_utils_1_code81, initializer, range(path_utils_1, 8221, 2, 206, 206), "{}").
expr(path_utils_1_expr10, array_initializer, path_utils_1_code89, initializer, range(path_utils_1, 8352, 2, 213, 213), "{}").
expr(path_utils_1_expr11, method_invocation, path_utils_1_code93, initializer, range(path_utils_1, 38842, 18, 881, 881), "path.getFileName()").
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
expr(path_utils_test_1_expr1, method_invocation, path_utils_test_1_code12, initializer, range(path_utils_test_1, 2639, 47, 68, 68), "STRING_FIXTURE.getBytes(StandardCharsets.UTF_8)").
expr(path_utils_test_1_expr2, method_invocation, path_utils_test_1_stmt1, expression, range(path_utils_test_1, 10592, 45, 251, 251), "assertNull(PathUtils.getFileName(null,null))").
expr(path_utils_test_1_expr3, method_invocation, path_utils_test_1_expr2, (arguments, 0), range(path_utils_test_1, 10603, 33, 251, 251), "PathUtils.getFileName(null,null)").

%%% Names
%path_utils_1 - org.apache.commons.io.file.PathUtils
name(f_open_options_truncate_6, simple_name, path_utils_1_code10, name, range(path_utils_1, 6674, 21, 152, 152), 'OPEN_OPTIONS_TRUNCATE').
name(q_create_1, qualified_name, path_utils_1_expr1, (expressions, 0), range(path_utils_1, 6700, 25, 152, 152), 'StandardOpenOption.CREATE').
name(t_standard_open_option_1, simple_name, q_create_1, qualifier, range(path_utils_1, 6700, 18, 152, 152), 'StandardOpenOption').
name(t_standard_open_option_1, simple_name, q_truncate_existing_2, qualifier, range(path_utils_1, 6727, 18, 152, 152), 'StandardOpenOption').
name(q_truncate_existing_2, qualified_name, path_utils_1_expr1, (expressions, 1), range(path_utils_1, 6727, 36, 152, 152), 'StandardOpenOption.TRUNCATE_EXISTING').
name(f_open_options_append_7, simple_name, path_utils_1_code18, name, range(path_utils_1, 6806, 19, 154, 154), 'OPEN_OPTIONS_APPEND').
name(q_create_3, qualified_name, path_utils_1_expr2, (expressions, 0), range(path_utils_1, 6830, 25, 154, 154), 'StandardOpenOption.CREATE').
name(t_standard_open_option_1, simple_name, q_create_3, qualifier, range(path_utils_1, 6830, 18, 154, 154), 'StandardOpenOption').
name(q_append_3, qualified_name, path_utils_1_expr2, (expressions, 1), range(path_utils_1, 6857, 25, 154, 154), 'StandardOpenOption.APPEND').
name(t_standard_open_option_1, simple_name, q_append_3, qualifier, range(path_utils_1, 6857, 18, 154, 154), 'StandardOpenOption').
name(f_empty_copy_options_8, simple_name, path_utils_1_code26, name, range(path_utils_1, 7006, 18, 161, 161), 'EMPTY_COPY_OPTIONS').
name(f_empty_delete_option_array_9, simple_name, path_utils_1_code34, name, range(path_utils_1, 7155, 25, 168, 168), 'EMPTY_DELETE_OPTION_ARRAY').
name(f_empty_file_attribute_array_10, simple_name, path_utils_1_code44, name, range(path_utils_1, 7317, 26, 175, 175), 'EMPTY_FILE_ATTRIBUTE_ARRAY').
name(f_empty_file_visit_option_array_11, simple_name, path_utils_1_code52, name, range(path_utils_1, 7453, 29, 180, 180), 'EMPTY_FILE_VISIT_OPTION_ARRAY').
name(f_empty_link_option_array_12, simple_name, path_utils_1_code60, name, range(path_utils_1, 7582, 23, 185, 185), 'EMPTY_LINK_OPTION_ARRAY').
name(f_nofollow_link_option_array_13, simple_name, path_utils_1_code68, name, range(path_utils_1, 7839, 26, 194, 194), 'NOFOLLOW_LINK_OPTION_ARRAY').
name(q_nofollow_links_4, qualified_name, path_utils_1_expr8, (expressions, 0), range(path_utils_1, 7870, 25, 194, 194), 'LinkOption.NOFOLLOW_LINKS').
name(t_link_option_2, simple_name, q_nofollow_links_4, qualifier, range(path_utils_1, 7870, 10, 194, 194), 'LinkOption').
name(f_null_link_option_14, simple_name, path_utils_1_code73, name, range(path_utils_1, 8077, 16, 201, 201), 'NULL_LINK_OPTION').
name(f_empty_open_option_array_15, simple_name, path_utils_1_code81, name, range(path_utils_1, 8195, 23, 206, 206), 'EMPTY_OPEN_OPTION_ARRAY').
name(f_empty_path_array_16, simple_name, path_utils_1_code89, name, range(path_utils_1, 8333, 16, 213, 213), 'EMPTY_PATH_ARRAY').
name(v_file_name_101, simple_name, path_utils_1_code93, name, range(path_utils_1, 38831, 8, 881, 881), 'fileName').
name(p_path_99, simple_name, path_utils_1_expr11, expression, range(path_utils_1, 38842, 4, 881, 881), 'path').
name(m_get_file_name_39, simple_name, path_utils_1_expr11, name, range(path_utils_1, 38847, 11, 881, 881), 'getFileName').
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
name(t_path_utils_test_3, simple_name, path_utils_test_1_code2, name, range(path_utils_test_1, 2476, 13, 64, 64), 'PathUtilsTest').
name(f_byte_array_fixture_234, simple_name, path_utils_test_1_code12, name, range(path_utils_test_1, 2618, 18, 68, 68), 'BYTE_ARRAY_FIXTURE').
name(f_string_fixture_235, simple_name, path_utils_test_1_expr1, expression, range(path_utils_test_1, 2639, 14, 68, 68), 'STRING_FIXTURE').
name(m_get_bytes_103, simple_name, path_utils_test_1_expr1, name, range(path_utils_test_1, 2654, 8, 68, 68), 'getBytes').
name(t_standard_charsets_4, simple_name, q_utf_8_5, qualifier, range(path_utils_test_1, 2663, 16, 68, 68), 'StandardCharsets').
name(q_utf_8_5, qualified_name, path_utils_test_1_expr1, (arguments, 0), range(path_utils_test_1, 2663, 22, 68, 68), 'StandardCharsets.UTF_8').
name(m_assert_null_123, simple_name, path_utils_test_1_expr2, name, range(path_utils_test_1, 10592, 10, 251, 251), 'assertNull').
name(t_path_utils_5, simple_name, path_utils_test_1_expr3, expression, range(path_utils_test_1, 10603, 9, 251, 251), 'PathUtils').
name(m_get_file_name_38, simple_name, path_utils_test_1_expr3, name, range(path_utils_test_1, 10613, 11, 251, 251), 'getFileName').

%%% Literals
%path_utils_1 - org.apache.commons.io.file.PathUtils
literal(path_utils_1_literal1, null_literal, path_utils_1_code73, initializer, range(path_utils_1, 8096, 4, 201, 201), null).
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
literal(path_utils_test_1_literal1, null_literal, path_utils_test_1_expr3, (arguments, 0), range(path_utils_test_1, 10625, 4, 251, 251), null).
literal(path_utils_test_1_literal2, null_literal, path_utils_test_1_expr3, (arguments, 1), range(path_utils_test_1, 10631, 4, 251, 251), null).

%%% Other Code Entities
%path_utils_1 - org.apache.commons.io.file.PathUtils
code(path_utils_1_code1, compilation_unit, range(path_utils_1, 0, 82697, 1, -1)).
code(path_utils_1_code2, type_declaration, path_utils_1_code1, (types, 0), range(path_utils_1, 3161, 79535, 84, 1841)).
code(path_utils_1_code3, field_declaration, path_utils_1_code2, (body_declarations, 1), range(path_utils_1, 6640, 126, 152, 152)).
code(path_utils_1_code4, modifier, path_utils_1_code3, (modifiers, 0), range(path_utils_1, 6640, 7, 152, 152)).
code(path_utils_1_code5, modifier, path_utils_1_code3, (modifiers, 1), range(path_utils_1, 6648, 6, 152, 152)).
code(path_utils_1_code6, modifier, path_utils_1_code3, (modifiers, 2), range(path_utils_1, 6655, 5, 152, 152)).
code(path_utils_1_code8, simple_type, path_utils_1_code7, element_type, range(path_utils_1, 6661, 10, 152, 152)).
code(path_utils_1_code7, array_type, path_utils_1_code3, type, range(path_utils_1, 6661, 12, 152, 152)).
code(path_utils_1_code9, dimension, path_utils_1_code7, (dimensions, 0), range(path_utils_1, 6671, 2, 152, 152)).
code(path_utils_1_code10, variable_declaration_fragment, path_utils_1_code3, (fragments, 0), range(path_utils_1, 6674, 91, 152, 152)).
code(path_utils_1_code12, modifier, path_utils_1_code11, (modifiers, 0), range(path_utils_1, 6772, 7, 154, 154)).
code(path_utils_1_code11, field_declaration, path_utils_1_code2, (body_declarations, 2), range(path_utils_1, 6772, 113, 154, 154)).
code(path_utils_1_code13, modifier, path_utils_1_code11, (modifiers, 1), range(path_utils_1, 6780, 6, 154, 154)).
code(path_utils_1_code14, modifier, path_utils_1_code11, (modifiers, 2), range(path_utils_1, 6787, 5, 154, 154)).
code(path_utils_1_code16, simple_type, path_utils_1_code15, element_type, range(path_utils_1, 6793, 10, 154, 154)).
code(path_utils_1_code15, array_type, path_utils_1_code11, type, range(path_utils_1, 6793, 12, 154, 154)).
code(path_utils_1_code17, dimension, path_utils_1_code15, (dimensions, 0), range(path_utils_1, 6803, 2, 154, 154)).
code(path_utils_1_code18, variable_declaration_fragment, path_utils_1_code11, (fragments, 0), range(path_utils_1, 6806, 78, 154, 154)).
code(path_utils_1_code19, field_declaration, path_utils_1_code2, (body_declarations, 3), range(path_utils_1, 6891, 139, 156, 161)).
code(path_utils_1_code20, modifier, path_utils_1_code19, (modifiers, 0), range(path_utils_1, 6973, 6, 161, 161)).
code(path_utils_1_code21, modifier, path_utils_1_code19, (modifiers, 1), range(path_utils_1, 6980, 6, 161, 161)).
code(path_utils_1_code22, modifier, path_utils_1_code19, (modifiers, 2), range(path_utils_1, 6987, 5, 161, 161)).
code(path_utils_1_code23, array_type, path_utils_1_code19, type, range(path_utils_1, 6993, 12, 161, 161)).
code(path_utils_1_code24, simple_type, path_utils_1_code23, element_type, range(path_utils_1, 6993, 10, 161, 161)).
code(path_utils_1_code25, dimension, path_utils_1_code23, (dimensions, 0), range(path_utils_1, 7003, 2, 161, 161)).
code(path_utils_1_code26, variable_declaration_fragment, path_utils_1_code19, (fragments, 0), range(path_utils_1, 7006, 23, 161, 161)).
code(path_utils_1_code27, field_declaration, path_utils_1_code2, (body_declarations, 4), range(path_utils_1, 7036, 150, 163, 168)).
code(path_utils_1_code28, modifier, path_utils_1_code27, (modifiers, 0), range(path_utils_1, 7120, 6, 168, 168)).
code(path_utils_1_code29, modifier, path_utils_1_code27, (modifiers, 1), range(path_utils_1, 7127, 6, 168, 168)).
code(path_utils_1_code30, modifier, path_utils_1_code27, (modifiers, 2), range(path_utils_1, 7134, 5, 168, 168)).
code(path_utils_1_code32, simple_type, path_utils_1_code31, element_type, range(path_utils_1, 7140, 12, 168, 168)).
code(path_utils_1_code31, array_type, path_utils_1_code27, type, range(path_utils_1, 7140, 14, 168, 168)).
code(path_utils_1_code33, dimension, path_utils_1_code31, (dimensions, 0), range(path_utils_1, 7152, 2, 168, 168)).
code(path_utils_1_code34, variable_declaration_fragment, path_utils_1_code27, (fragments, 0), range(path_utils_1, 7155, 30, 168, 168)).
code(path_utils_1_code35, field_declaration, path_utils_1_code2, (body_declarations, 5), range(path_utils_1, 7192, 157, 170, 175)).
code(path_utils_1_code36, modifier, path_utils_1_code35, (modifiers, 0), range(path_utils_1, 7278, 6, 175, 175)).
code(path_utils_1_code37, modifier, path_utils_1_code35, (modifiers, 1), range(path_utils_1, 7285, 6, 175, 175)).
code(path_utils_1_code38, modifier, path_utils_1_code35, (modifiers, 2), range(path_utils_1, 7292, 5, 175, 175)).
code(path_utils_1_code41, simple_type, path_utils_1_code40, type, range(path_utils_1, 7298, 13, 175, 175)).
code(path_utils_1_code39, array_type, path_utils_1_code35, type, range(path_utils_1, 7298, 18, 175, 175)).
code(path_utils_1_code40, parameterized_type, path_utils_1_code39, element_type, range(path_utils_1, 7298, 16, 175, 175)).
code(path_utils_1_code42, wildcard_type, path_utils_1_code40, (type_arguments, 0), range(path_utils_1, 7312, 1, 175, 175)).
code(path_utils_1_code43, dimension, path_utils_1_code39, (dimensions, 0), range(path_utils_1, 7314, 2, 175, 175)).
code(path_utils_1_code44, variable_declaration_fragment, path_utils_1_code35, (fragments, 0), range(path_utils_1, 7317, 31, 175, 175)).
code(path_utils_1_code45, field_declaration, path_utils_1_code2, (body_declarations, 6), range(path_utils_1, 7355, 133, 177, 180)).
code(path_utils_1_code46, modifier, path_utils_1_code45, (modifiers, 0), range(path_utils_1, 7415, 6, 180, 180)).
code(path_utils_1_code47, modifier, path_utils_1_code45, (modifiers, 1), range(path_utils_1, 7422, 6, 180, 180)).
code(path_utils_1_code48, modifier, path_utils_1_code45, (modifiers, 2), range(path_utils_1, 7429, 5, 180, 180)).
code(path_utils_1_code50, simple_type, path_utils_1_code49, element_type, range(path_utils_1, 7435, 15, 180, 180)).
code(path_utils_1_code49, array_type, path_utils_1_code45, type, range(path_utils_1, 7435, 17, 180, 180)).
code(path_utils_1_code51, dimension, path_utils_1_code49, (dimensions, 0), range(path_utils_1, 7450, 2, 180, 180)).
code(path_utils_1_code52, variable_declaration_fragment, path_utils_1_code45, (fragments, 0), range(path_utils_1, 7453, 34, 180, 180)).
code(path_utils_1_code53, field_declaration, path_utils_1_code2, (body_declarations, 7), range(path_utils_1, 7494, 117, 182, 185)).
code(path_utils_1_code54, modifier, path_utils_1_code53, (modifiers, 0), range(path_utils_1, 7549, 6, 185, 185)).
code(path_utils_1_code55, modifier, path_utils_1_code53, (modifiers, 1), range(path_utils_1, 7556, 6, 185, 185)).
code(path_utils_1_code56, modifier, path_utils_1_code53, (modifiers, 2), range(path_utils_1, 7563, 5, 185, 185)).
code(path_utils_1_code57, array_type, path_utils_1_code53, type, range(path_utils_1, 7569, 12, 185, 185)).
code(path_utils_1_code58, simple_type, path_utils_1_code57, element_type, range(path_utils_1, 7569, 10, 185, 185)).
code(path_utils_1_code59, dimension, path_utils_1_code57, (dimensions, 0), range(path_utils_1, 7579, 2, 185, 185)).
code(path_utils_1_code60, variable_declaration_fragment, path_utils_1_code53, (fragments, 0), range(path_utils_1, 7582, 28, 185, 185)).
code(path_utils_1_code61, field_declaration, path_utils_1_code2, (body_declarations, 8), range(path_utils_1, 7617, 281, 187, 194)).
code(path_utils_1_code62, modifier, path_utils_1_code61, (modifiers, 1), range(path_utils_1, 7806, 6, 194, 194)).
code(path_utils_1_code63, modifier, path_utils_1_code61, (modifiers, 2), range(path_utils_1, 7813, 6, 194, 194)).
code(path_utils_1_code64, modifier, path_utils_1_code61, (modifiers, 3), range(path_utils_1, 7820, 5, 194, 194)).
code(path_utils_1_code65, array_type, path_utils_1_code61, type, range(path_utils_1, 7826, 12, 194, 194)).
code(path_utils_1_code66, simple_type, path_utils_1_code65, element_type, range(path_utils_1, 7826, 10, 194, 194)).
code(path_utils_1_code67, dimension, path_utils_1_code65, (dimensions, 0), range(path_utils_1, 7836, 2, 194, 194)).
code(path_utils_1_code68, variable_declaration_fragment, path_utils_1_code61, (fragments, 0), range(path_utils_1, 7839, 58, 194, 194)).
code(path_utils_1_code69, field_declaration, path_utils_1_code2, (body_declarations, 9), range(path_utils_1, 7904, 197, 196, 201)).
code(path_utils_1_code70, modifier, path_utils_1_code69, (modifiers, 0), range(path_utils_1, 8053, 6, 201, 201)).
code(path_utils_1_code71, modifier, path_utils_1_code69, (modifiers, 1), range(path_utils_1, 8060, 5, 201, 201)).
code(path_utils_1_code72, simple_type, path_utils_1_code69, type, range(path_utils_1, 8066, 10, 201, 201)).
code(path_utils_1_code73, variable_declaration_fragment, path_utils_1_code69, (fragments, 0), range(path_utils_1, 8077, 23, 201, 201)).
code(path_utils_1_code74, field_declaration, path_utils_1_code2, (body_declarations, 10), range(path_utils_1, 8107, 117, 203, 206)).
code(path_utils_1_code75, modifier, path_utils_1_code74, (modifiers, 0), range(path_utils_1, 8162, 6, 206, 206)).
code(path_utils_1_code76, modifier, path_utils_1_code74, (modifiers, 1), range(path_utils_1, 8169, 6, 206, 206)).
code(path_utils_1_code77, modifier, path_utils_1_code74, (modifiers, 2), range(path_utils_1, 8176, 5, 206, 206)).
code(path_utils_1_code79, simple_type, path_utils_1_code78, element_type, range(path_utils_1, 8182, 10, 206, 206)).
code(path_utils_1_code78, array_type, path_utils_1_code74, type, range(path_utils_1, 8182, 12, 206, 206)).
code(path_utils_1_code80, dimension, path_utils_1_code78, (dimensions, 0), range(path_utils_1, 8192, 2, 206, 206)).
code(path_utils_1_code81, variable_declaration_fragment, path_utils_1_code74, (fragments, 0), range(path_utils_1, 8195, 28, 206, 206)).
code(path_utils_1_code82, field_declaration, path_utils_1_code2, (body_declarations, 11), range(path_utils_1, 8230, 125, 208, 213)).
code(path_utils_1_code83, modifier, path_utils_1_code82, (modifiers, 0), range(path_utils_1, 8306, 6, 213, 213)).
code(path_utils_1_code84, modifier, path_utils_1_code82, (modifiers, 1), range(path_utils_1, 8313, 6, 213, 213)).
code(path_utils_1_code85, modifier, path_utils_1_code82, (modifiers, 2), range(path_utils_1, 8320, 5, 213, 213)).
code(path_utils_1_code86, array_type, path_utils_1_code82, type, range(path_utils_1, 8326, 6, 213, 213)).
code(path_utils_1_code87, simple_type, path_utils_1_code86, element_type, range(path_utils_1, 8326, 4, 213, 213)).
code(path_utils_1_code88, dimension, path_utils_1_code86, (dimensions, 0), range(path_utils_1, 8330, 2, 213, 213)).
code(path_utils_1_code89, variable_declaration_fragment, path_utils_1_code82, (fragments, 0), range(path_utils_1, 8333, 21, 213, 213)).
code(path_utils_1_code90, method_declaration, path_utils_1_code2, (body_declarations, 48), range(path_utils_1, 38366, 568, 870, 883)).
code(path_utils_1_code91, modifier, path_utils_1_stmt1, (modifiers, 0), range(path_utils_1, 38820, 5, 881, 881)).
code(path_utils_1_code92, simple_type, path_utils_1_stmt1, type, range(path_utils_1, 38826, 4, 881, 881)).
code(path_utils_1_code93, variable_declaration_fragment, path_utils_1_stmt1, (fragments, 0), range(path_utils_1, 38831, 29, 881, 881)).
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
code(path_utils_test_1_code1, compilation_unit, range(path_utils_test_1, 0, 22601, 1, -1)).
code(path_utils_test_1_code2, type_declaration, path_utils_test_1_code1, (types, 0), range(path_utils_test_1, 2427, 20173, 61, 537)).
code(path_utils_test_1_code3, modifier, path_utils_test_1_code2, (modifiers, 0), range(path_utils_test_1, 2463, 6, 64, 64)).
code(path_utils_test_1_code4, simple_type, path_utils_test_1_code2, superclass_type, range(path_utils_test_1, 2498, 19, 64, 64)).
code(path_utils_test_1_code6, modifier, path_utils_test_1_code5, (modifiers, 0), range(path_utils_test_1, 2590, 7, 68, 68)).
code(path_utils_test_1_code5, field_declaration, path_utils_test_1_code2, (body_declarations, 1), range(path_utils_test_1, 2590, 97, 68, 68)).
code(path_utils_test_1_code7, modifier, path_utils_test_1_code5, (modifiers, 1), range(path_utils_test_1, 2598, 6, 68, 68)).
code(path_utils_test_1_code8, modifier, path_utils_test_1_code5, (modifiers, 2), range(path_utils_test_1, 2605, 5, 68, 68)).
code(path_utils_test_1_code9, array_type, path_utils_test_1_code5, type, range(path_utils_test_1, 2611, 6, 68, 68)).
code(path_utils_test_1_code10, primitive_type, path_utils_test_1_code9, element_type, range(path_utils_test_1, 2611, 4, 68, 68)).
code(path_utils_test_1_code11, dimension, path_utils_test_1_code9, (dimensions, 0), range(path_utils_test_1, 2615, 2, 68, 68)).
code(path_utils_test_1_code12, variable_declaration_fragment, path_utils_test_1_code5, (fragments, 0), range(path_utils_test_1, 2618, 68, 68, 68)).
code(path_utils_test_1_code13, method_declaration, path_utils_test_1_code2, (body_declarations, 23), range(path_utils_test_1, 10542, 566, 249, 258)).

%%% Name References

name_ref(t_link_option_2, type, 'LinkOption', 'Ljava/nio/file/LinkOption;').
name_ref(t_path_utils_5, type, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;').
name_ref(t_path_utils_test_3, type, 'PathUtilsTest', 'Lorg/apache/commons/io/file/PathUtilsTest;').
name_ref(t_standard_charsets_4, type, 'StandardCharsets', 'Ljava/nio/charset/StandardCharsets;').
name_ref(t_standard_open_option_1, type, 'StandardOpenOption', 'Ljava/nio/file/StandardOpenOption;').
name_ref(v_file_name_101, var, 'fileName', 'Lorg/apache/commons/io/file/PathUtils;.getFileName<R:Ljava/lang/Object;>(Ljava/nio/file/Path;Ljava/util/function/Function<Ljava/nio/file/Path;TR;>;)TR;#fileName').
name_ref(p_add_permissions_192, param, 'addPermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#addPermissions#0#1').
name_ref(p_append_153, param, 'append', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;#append#0#1').
name_ref(p_append_241, param, 'append', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamNewFile(Z)V|Ljava/io/IOException;#append#0#0').
name_ref(p_append_242, param, 'append', 'Lorg/apache/commons/io/file/PathUtilsTest;.writeToNewOutputStream(Z)Ljava/nio/file/Path;|Ljava/io/IOException;#append#0#0').
name_ref(p_attrs_44, param, 'attrs', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#attrs#0#1').
name_ref(p_attrs_47, param, 'attrs', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#attrs#0#2').
name_ref(p_char_sequence_231, param, 'charSequence', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#charSequence#0#1').
name_ref(p_charset_175, param, 'charset', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_232, param, 'charset', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#charset#0#2').
name_ref(p_collection_176, param, 'collection', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#collection#0#0').
name_ref(p_collector_93, param, 'collector', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#collector#0#2').
name_ref(p_comparator_179, param, 'comparator', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#comparator#0#3').
name_ref(p_copy_options_28, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_31, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_34, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_37, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_40, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_create_new_238, param, 'createNew', 'Lorg/apache/commons/io/file/PathUtilsTest;.openArchive(Ljava/nio/file/Path;Z)Ljava/nio/file/FileSystem;|Ljava/io/IOException;#createNew#0#1').
name_ref(p_czdt_122, param, 'czdt', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#czdt#0#1').
name_ref(p_default_if_absent_105, param, 'defaultIfAbsent', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#defaultIfAbsent#0#1').
name_ref(p_delete_options_159, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z#deleteOptions#0#0').
name_ref(p_delete_options_22, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_50, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_53, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_delete_options_56, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_59, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_delete_options_62, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_65, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_dir_150, param, 'dir', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#dir#0#0').
name_ref(p_dir_1_1, param, 'dir1', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#dir1#0#0').
name_ref(p_dir_2_2, param, 'dir2', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#dir2#0#1').
name_ref(p_directory_119, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_17, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_20, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_203, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectory(Ljava/nio/file/Path;)J|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_204, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_208, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#directory#0#1').
name_ref(p_directory_21, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_41, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_42, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_54, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_55, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_57, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_enable_delete_children_189, param, 'enableDeleteChildren', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#enableDeleteChildren#0#1').
name_ref(p_file_103, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_120, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_121, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_124, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_127, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_130, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_133, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_135, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_138, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_141, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_144, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_180, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#file#0#0').
name_ref(p_file_206, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.touch(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_218, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#file#0#0').
name_ref(p_file_23, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#file#0#0').
name_ref(p_file_236, param, 'file', 'Lorg/apache/commons/io/file/PathUtilsTest;.getLastModifiedMillis(Ljava/nio/file/Path;)Ljava/lang/Long;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_239, param, 'file', 'Lorg/apache/commons/io/file/PathUtilsTest;.setLastModifiedMillis(Ljava/nio/file/Path;J)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_60, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_61, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_63, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_param_name_181, param, 'fileParamName', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#fileParamName#0#1').
name_ref(p_file_time_125, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_time_136, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_time_24, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_visit_option_73, param, 'fileVisitOption', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#fileVisitOption#0#4').
name_ref(p_file_visit_options_19, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#fileVisitOptions#0#2').
name_ref(p_file_visit_options_205, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;#fileVisitOptions#0#0').
name_ref(p_file_visit_options_5, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#fileVisitOptions#0#4').
name_ref(p_file_visit_options_80, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#fileVisitOptions#0#4').
name_ref(p_filter_89, param, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;#filter#0#0').
name_ref(p_filter_91, param, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#filter#0#0').
name_ref(p_first_214, param, 'first', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#first#0#1').
name_ref(p_function_100, param, 'function', 'Lorg/apache/commons/io/file/PathUtils;.getFileName<R:Ljava/lang/Object;>(Ljava/nio/file/Path;Ljava/util/function/Function<Ljava/nio/file/Path;TR;>;)TR;#function#0#1').
name_ref(p_function_229, param, 'function', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#function#0#3').
name_ref(p_in_26, param, 'in', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;#in#0#0').
name_ref(p_instant_128, param, 'instant', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#instant#0#1').
name_ref(p_instant_139, param, 'instant', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#instant#0#1').
name_ref(p_link_option_46, param, 'linkOption', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#linkOption#0#1').
name_ref(p_link_options_155, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_185, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_190, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_194, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_link_options_197, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_200, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_227, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_4, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_link_options_52, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_58, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_64, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_71, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_79, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_link_options_87, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_max_depth_18, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#maxDepth#0#1').
name_ref(p_max_depth_212, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#maxDepth#0#3').
name_ref(p_max_depth_223, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_max_depth_3, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_max_depth_78, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_millis_240, param, 'millis', 'Lorg/apache/commons/io/file/PathUtilsTest;.setLastModifiedMillis(Ljava/nio/file/Path;J)V|Ljava/io/IOException;#millis#0#1').
name_ref(p_more_215, param, 'more', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#more#0#2').
name_ref(p_open_options_156, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#openOptions#0#2').
name_ref(p_open_options_233, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_open_options_72, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_open_options_88, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_options_106, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#options#0#2').
name_ref(p_options_108, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#options#0#1').
name_ref(p_options_112, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#options#0#1').
name_ref(p_options_115, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;#options#0#1').
name_ref(p_options_117, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_123, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_126, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_129, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_132, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_137, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_140, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_143, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_147, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_149, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_158, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_162, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#options#0#2').
name_ref(p_options_165, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#options#0#1').
name_ref(p_options_168, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;#options#0#1').
name_ref(p_options_171, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#options#0#1').
name_ref(p_options_173, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;#options#0#1').
name_ref(p_options_182, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#options#0#2').
name_ref(p_options_211, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#options#0#2').
name_ref(p_options_220, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#options#0#2').
name_ref(p_options_225, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#options#0#4').
name_ref(p_options_25, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#options#0#2').
name_ref(p_options_82, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_96, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;#options#0#1').
name_ref(p_options_98, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;#options#0#1').
name_ref(p_override_read_only_228, param, 'overrideReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#overrideReadOnly#0#2').
name_ref(p_p_237, param, 'p', 'Lorg/apache/commons/io/file/PathUtilsTest;.openArchive(Ljava/nio/file/Path;Z)Ljava/nio/file/FileSystem;|Ljava/io/IOException;#p#0#0').
name_ref(p_parent_177, param, 'parent', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#parent#0#1').
name_ref(p_parent_188, param, 'parent', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#parent#0#0').
name_ref(p_path_102, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;#path#0#0').
name_ref(p_path_104, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_107, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_111, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_113, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;#path#0#0').
name_ref(p_path_114, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;#path#0#0').
name_ref(p_path_116, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_118, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_148, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_152, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_154, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_157, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_160, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#path#0#0').
name_ref(p_path_163, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_164, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_166, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_167, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;#path#0#0').
name_ref(p_path_169, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_170, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_172, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;#path#0#0').
name_ref(p_path_174, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_183, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_191, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_195, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#path#0#0').
name_ref(p_path_198, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_1_67, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_69, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_74, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_76, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_83, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_85, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_201, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.sizeOf(Ljava/nio/file/Path;)J|Ljava/io/IOException;#path#0#0').
name_ref(p_path_202, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_226, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_230, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_2_68, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_70, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_75, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_77, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_84, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_86, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_43, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_45, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_48, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_49, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_51, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_66, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.deleteOnExit(Ljava/nio/file/Path;)V#path#0#0').
name_ref(p_path_81, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_95, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;#path#0#0').
name_ref(p_path_97, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;#path#0#0').
name_ref(p_path_99, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getFileName<R:Ljava/lang/Object;>(Ljava/nio/file/Path;Ljava/util/function/Function<Ljava/nio/file/Path;TR;>;)TR;#path#0#0').
name_ref(p_path_filter_151, param, 'pathFilter', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#pathFilter#0#1').
name_ref(p_path_filter_222, param, 'pathFilter', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#pathFilter#0#1').
name_ref(p_paths_90, param, 'paths', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;#paths#0#1').
name_ref(p_read_attributes_224, param, 'readAttributes', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#readAttributes#0#3').
name_ref(p_read_only_184, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_read_only_196, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_read_only_199, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_reference_134, param, 'reference', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#reference#0#1').
name_ref(p_reference_145, param, 'reference', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#reference#0#1').
name_ref(p_sort_178, param, 'sort', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#sort#0#2').
name_ref(p_source_directory_29, param, 'sourceDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#sourceDirectory#0#0').
name_ref(p_source_file_186, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_32, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_35, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_38, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_path_94, param, 'sourcePath', 'Lorg/apache/commons/io/file/PathUtils;.getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List<Ljava/nio/file/attribute/AclEntry;>;|Ljava/io/IOException;#sourcePath#0#0').
name_ref(p_start_210, param, 'start', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#start#0#1').
name_ref(p_start_221, param, 'start', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#start#0#0').
name_ref(p_stream_92, param, 'stream', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#stream#0#1').
name_ref(p_target_27, param, 'target', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;#target#0#1').
name_ref(p_target_directory_30, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_directory_36, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_directory_39, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_file_187, param, 'targetFile', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;#targetFile#0#1').
name_ref(p_target_file_33, param, 'targetFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetFile#0#1').
name_ref(p_test_146, param, 'test', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#test#0#0').
name_ref(p_time_millis_131, param, 'timeMillis', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#timeMillis#0#1').
name_ref(p_time_millis_142, param, 'timeMillis', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#timeMillis#0#1').
name_ref(p_timeout_219, param, 'timeout', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#timeout#0#1').
name_ref(p_type_161, param, 'type', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#type#0#1').
name_ref(p_update_permissions_193, param, 'updatePermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#updatePermissions#0#2').
name_ref(p_uri_109, param, 'uri', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URI;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_217, param, 'uri', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#uri#0#1').
name_ref(p_url_110, param, 'url', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URL;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;|Ljava/net/URISyntaxException;#url#0#0').
name_ref(p_visitor_207, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_209, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_213, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_216, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(f_byte_array_fixture_234, field, 'BYTE_ARRAY_FIXTURE', 'Lorg/apache/commons/io/file/PathUtilsTest;.BYTE_ARRAY_FIXTURE)[B').
name_ref(f_empty_copy_options_8, field, 'EMPTY_COPY_OPTIONS', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_COPY_OPTIONS)[Ljava/nio/file/CopyOption;').
name_ref(f_empty_delete_option_array_9, field, 'EMPTY_DELETE_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_DELETE_OPTION_ARRAY)[Lorg/apache/commons/io/file/DeleteOption;').
name_ref(f_empty_file_attribute_array_10, field, 'EMPTY_FILE_ATTRIBUTE_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_FILE_ATTRIBUTE_ARRAY)[Ljava/nio/file/attribute/FileAttribute<Ljava/nio/file/attribute/FileAttribute;{0}*>;').
name_ref(f_empty_file_visit_option_array_11, field, 'EMPTY_FILE_VISIT_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_FILE_VISIT_OPTION_ARRAY)[Ljava/nio/file/FileVisitOption;').
name_ref(f_empty_link_option_array_12, field, 'EMPTY_LINK_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_LINK_OPTION_ARRAY)[Ljava/nio/file/LinkOption;').
name_ref(f_empty_open_option_array_15, field, 'EMPTY_OPEN_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_OPEN_OPTION_ARRAY)[Ljava/nio/file/OpenOption;').
name_ref(f_empty_path_array_16, field, 'EMPTY_PATH_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_PATH_ARRAY)[Ljava/nio/file/Path;').
name_ref(f_nofollow_link_option_array_13, field, 'NOFOLLOW_LINK_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.NOFOLLOW_LINK_OPTION_ARRAY)[Ljava/nio/file/LinkOption;').
name_ref(f_null_link_option_14, field, 'NULL_LINK_OPTION', 'Lorg/apache/commons/io/file/PathUtils;.NULL_LINK_OPTION)Ljava/nio/file/LinkOption;').
name_ref(f_open_options_append_7, field, 'OPEN_OPTIONS_APPEND', 'Lorg/apache/commons/io/file/PathUtils;.OPEN_OPTIONS_APPEND)[Ljava/nio/file/OpenOption;').
name_ref(f_open_options_truncate_6, field, 'OPEN_OPTIONS_TRUNCATE', 'Lorg/apache/commons/io/file/PathUtils;.OPEN_OPTIONS_TRUNCATE)[Ljava/nio/file/OpenOption;').
name_ref(f_string_fixture_235, field, 'STRING_FIXTURE', 'Lorg/apache/commons/io/file/PathUtilsTest;.STRING_FIXTURE)Ljava/lang/String;').
name_ref(m_accumulate_2, method, 'accumulate', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;').
name_ref(m_assert_null_123, method, 'assertNull', 'Lorg/junit/jupiter/api/Assertions;.assertNull(Ljava/lang/Object;)V').
name_ref(m_clean_directory_3, method, 'cleanDirectory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_clean_directory_4, method, 'cleanDirectory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_compare_last_modified_time_to_5, method, 'compareLastModifiedTimeTo', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;').
name_ref(m_copy_6, method, 'copy', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;').
name_ref(m_copy_directory_7, method, 'copyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_copy_file_8, method, 'copyFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_10, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_9, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_count_directory_11, method, 'countDirectory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_count_directory_as_big_integer_12, method, 'countDirectoryAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_create_parent_directories_13, method, 'createParentDirectories', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_create_parent_directories_14, method, 'createParentDirectories', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_create_temp_symlinked_relative_dir_104, method, 'createTempSymlinkedRelativeDir', 'Lorg/apache/commons/io/file/PathUtilsTest;.createTempSymlinkedRelativeDir()Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_current_105, method, 'current', 'Lorg/apache/commons/io/file/PathUtilsTest;.current()Ljava/nio/file/Path;').
name_ref(m_current_15, method, 'current', 'Lorg/apache/commons/io/file/PathUtils;.current()Ljava/nio/file/Path;').
name_ref(m_delete_16, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_17, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_18, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_19, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_20, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_21, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_22, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_23, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_24, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;').
name_ref(m_delete_on_exit_25, method, 'deleteOnExit', 'Lorg/apache/commons/io/file/PathUtils;.deleteOnExit(Ljava/nio/file/Path;)V').
name_ref(m_directory_and_file_content_equals_26, method, 'directoryAndFileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_directory_and_file_content_equals_27, method, 'directoryAndFileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;').
name_ref(m_directory_content_equals_28, method, 'directoryContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_directory_content_equals_29, method, 'directoryContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;').
name_ref(m_exists_30, method, 'exists', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_file_content_equals_31, method, 'fileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_file_content_equals_32, method, 'fileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;').
name_ref(m_filter_33, method, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;').
name_ref(m_filter_paths_34, method, 'filterPaths', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;').
name_ref(m_get_acl_entry_list_35, method, 'getAclEntryList', 'Lorg/apache/commons/io/file/PathUtils;.getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List<Ljava/nio/file/attribute/AclEntry;>;|Ljava/io/IOException;').
name_ref(m_get_acl_file_attribute_view_36, method, 'getAclFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;').
name_ref(m_get_bytes_103, method, 'getBytes', 'Ljava/lang/String;.getBytes(Ljava/nio/charset/Charset;)[B').
name_ref(m_get_dos_file_attribute_view_37, method, 'getDosFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;').
name_ref(m_get_file_name_38, method, 'getFileName', 'Lorg/apache/commons/io/file/PathUtils;.getFileName<R:Ljava/lang/Object;>(Ljava/nio/file/Path;Ljava/util/function/Function<Ljava/nio/file/Path;TR;>;)TR;').
name_ref(m_get_file_name_39, method, 'getFileName', 'Ljava/nio/file/Path;.getFileName()Ljava/nio/file/Path;').
name_ref(m_get_file_name_string_40, method, 'getFileNameString', 'Lorg/apache/commons/io/file/PathUtils;.getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;').
name_ref(m_get_last_modified_file_time_41, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_42, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_43, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_44, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URI;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_45, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URL;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;|Ljava/net/URISyntaxException;').
name_ref(m_get_last_modified_millis_106, method, 'getLastModifiedMillis', 'Lorg/apache/commons/io/file/PathUtilsTest;.getLastModifiedMillis(Ljava/nio/file/Path;)Ljava/lang/Long;|Ljava/io/IOException;').
name_ref(m_get_last_modified_time_46, method, 'getLastModifiedTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_non_existent_path_107, method, 'getNonExistentPath', 'Lorg/apache/commons/io/file/PathUtilsTest;.getNonExistentPath()Ljava/nio/file/Path;').
name_ref(m_get_parent_47, method, 'getParent', 'Lorg/apache/commons/io/file/PathUtils;.getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;').
name_ref(m_get_posix_file_attribute_view_48, method, 'getPosixFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;').
name_ref(m_get_temp_directory_49, method, 'getTempDirectory', 'Lorg/apache/commons/io/file/PathUtils;.getTempDirectory()Ljava/nio/file/Path;').
name_ref(m_is_directory_50, method, 'isDirectory', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_empty_51, method, 'isEmpty', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_directory_52, method, 'isEmptyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_file_53, method, 'isEmptyFile', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_54, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_55, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_56, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_57, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_58, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_older_59, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_60, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_61, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_62, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_posix_63, method, 'isPosix', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_regular_file_64, method, 'isRegularFile', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_new_directory_stream_65, method, 'newDirectoryStream', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;').
name_ref(m_new_output_stream_66, method, 'newOutputStream', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_new_output_stream_67, method, 'newOutputStream', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_no_follow_link_option_array_68, method, 'noFollowLinkOptionArray', 'Lorg/apache/commons/io/file/PathUtils;.noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;').
name_ref(m_not_exists_69, method, 'notExists', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_open_archive_108, method, 'openArchive', 'Lorg/apache/commons/io/file/PathUtilsTest;.openArchive(Ljava/nio/file/Path;Z)Ljava/nio/file/FileSystem;|Ljava/io/IOException;').
name_ref(m_override_read_only_70, method, 'overrideReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z').
name_ref(m_path_utils_102, method, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;.()V').
name_ref(m_read_attributes_71, method, 'readAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;').
name_ref(m_read_basic_file_attributes_72, method, 'readBasicFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;|Ljava/io/IOException;').
name_ref(m_read_basic_file_attributes_73, method, 'readBasicFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_basic_file_attributes_unchecked_74, method, 'readBasicFileAttributesUnchecked', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_dos_file_attributes_75, method, 'readDosFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;').
name_ref(m_read_if_symbolic_link_76, method, 'readIfSymbolicLink', 'Lorg/apache/commons/io/file/PathUtils;.readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_read_os_file_attributes_77, method, 'readOsFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_posix_file_attributes_78, method, 'readPosixFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;').
name_ref(m_read_string_79, method, 'readString', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_relative_sorted_paths_1, method, 'RelativeSortedPaths', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;').
name_ref(m_relativize_80, method, 'relativize', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;').
name_ref(m_require_exists_81, method, 'requireExists', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;').
name_ref(m_set_dos_read_only_82, method, 'setDosReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_last_modified_millis_109, method, 'setLastModifiedMillis', 'Lorg/apache/commons/io/file/PathUtilsTest;.setLastModifiedMillis(Ljava/nio/file/Path;J)V|Ljava/io/IOException;').
name_ref(m_set_last_modified_time_83, method, 'setLastModifiedTime', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;').
name_ref(m_set_posix_delete_permissions_84, method, 'setPosixDeletePermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_posix_permissions_85, method, 'setPosixPermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_posix_read_only_file_86, method, 'setPosixReadOnlyFile', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;').
name_ref(m_set_read_only_87, method, 'setReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_size_of_88, method, 'sizeOf', 'Lorg/apache/commons/io/file/PathUtils;.sizeOf(Ljava/nio/file/Path;)J|Ljava/io/IOException;').
name_ref(m_size_of_as_big_integer_89, method, 'sizeOfAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;').
name_ref(m_size_of_directory_90, method, 'sizeOfDirectory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectory(Ljava/nio/file/Path;)J|Ljava/io/IOException;').
name_ref(m_size_of_directory_as_big_integer_91, method, 'sizeOfDirectoryAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;').
name_ref(m_test_copy_directory_for_different_filesystems_with_absolute_path_110, method, 'testCopyDirectoryForDifferentFilesystemsWithAbsolutePath', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCopyDirectoryForDifferentFilesystemsWithAbsolutePath()V|Ljava/io/IOException;').
name_ref(m_test_copy_directory_for_different_filesystems_with_absolute_path_reverse_111, method, 'testCopyDirectoryForDifferentFilesystemsWithAbsolutePathReverse', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCopyDirectoryForDifferentFilesystemsWithAbsolutePathReverse()V|Ljava/io/IOException;').
name_ref(m_test_copy_directory_for_different_filesystems_with_relative_path_112, method, 'testCopyDirectoryForDifferentFilesystemsWithRelativePath', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCopyDirectoryForDifferentFilesystemsWithRelativePath()V|Ljava/io/IOException;').
name_ref(m_test_copy_directory_for_different_filesystems_with_relative_path_reverse_113, method, 'testCopyDirectoryForDifferentFilesystemsWithRelativePathReverse', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCopyDirectoryForDifferentFilesystemsWithRelativePathReverse()V|Ljava/io/IOException;').
name_ref(m_test_copy_file_114, method, 'testCopyFile', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCopyFile()V|Ljava/io/IOException;').
name_ref(m_test_copy_url_115, method, 'testCopyURL', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCopyURL()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_already_exists_116, method, 'testCreateDirectoriesAlreadyExists', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesAlreadyExists()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_for_roots_117, method, 'testCreateDirectoriesForRoots', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesForRoots()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_for_roots_link_option_null_118, method, 'testCreateDirectoriesForRootsLinkOptionNull', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesForRootsLinkOptionNull()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_new_119, method, 'testCreateDirectoriesNew', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesNew()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_symlink_120, method, 'testCreateDirectoriesSymlink', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesSymlink()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_symlink_clashing_121, method, 'testCreateDirectoriesSymlinkClashing', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesSymlinkClashing()V|Ljava/io/IOException;').
name_ref(m_test_get_file_name_122, method, 'testGetFileName', 'Lorg/apache/commons/io/file/PathUtilsTest;.testGetFileName()V').
name_ref(m_test_get_file_name_string_124, method, 'testGetFileNameString', 'Lorg/apache/commons/io/file/PathUtilsTest;.testGetFileNameString()V').
name_ref(m_test_get_last_modified_file_time__file__present_125, method, 'testGetLastModifiedFileTime_File_Present', 'Lorg/apache/commons/io/file/PathUtilsTest;.testGetLastModifiedFileTime_File_Present()V|Ljava/io/IOException;').
name_ref(m_test_get_last_modified_file_time__path__absent_126, method, 'testGetLastModifiedFileTime_Path_Absent', 'Lorg/apache/commons/io/file/PathUtilsTest;.testGetLastModifiedFileTime_Path_Absent()V|Ljava/io/IOException;').
name_ref(m_test_get_last_modified_file_time__path__file_time__absent_127, method, 'testGetLastModifiedFileTime_Path_FileTime_Absent', 'Lorg/apache/commons/io/file/PathUtilsTest;.testGetLastModifiedFileTime_Path_FileTime_Absent()V|Ljava/io/IOException;').
name_ref(m_test_get_last_modified_file_time__path__present_128, method, 'testGetLastModifiedFileTime_Path_Present', 'Lorg/apache/commons/io/file/PathUtilsTest;.testGetLastModifiedFileTime_Path_Present()V|Ljava/io/IOException;').
name_ref(m_test_get_last_modified_file_time__uri_present_129, method, 'testGetLastModifiedFileTime_URI_Present', 'Lorg/apache/commons/io/file/PathUtilsTest;.testGetLastModifiedFileTime_URI_Present()V|Ljava/io/IOException;').
name_ref(m_test_get_last_modified_file_time__url_present_130, method, 'testGetLastModifiedFileTime_URL_Present', 'Lorg/apache/commons/io/file/PathUtilsTest;.testGetLastModifiedFileTime_URL_Present()V|Ljava/io/IOException;|Ljava/net/URISyntaxException;').
name_ref(m_test_get_temp_directory_131, method, 'testGetTempDirectory', 'Lorg/apache/commons/io/file/PathUtilsTest;.testGetTempDirectory()V').
name_ref(m_test_is_directory_132, method, 'testIsDirectory', 'Lorg/apache/commons/io/file/PathUtilsTest;.testIsDirectory()V|Ljava/io/IOException;').
name_ref(m_test_is_posix_133, method, 'testIsPosix', 'Lorg/apache/commons/io/file/PathUtilsTest;.testIsPosix()V|Ljava/io/IOException;').
name_ref(m_test_is_regular_file_134, method, 'testIsRegularFile', 'Lorg/apache/commons/io/file/PathUtilsTest;.testIsRegularFile()V|Ljava/io/IOException;').
name_ref(m_test_new_directory_stream_135, method, 'testNewDirectoryStream', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewDirectoryStream()V|Ljava/lang/Exception;').
name_ref(m_test_new_output_stream_existing_file_append_false_136, method, 'testNewOutputStreamExistingFileAppendFalse', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamExistingFileAppendFalse()V|Ljava/io/IOException;').
name_ref(m_test_new_output_stream_existing_file_append_true_137, method, 'testNewOutputStreamExistingFileAppendTrue', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamExistingFileAppendTrue()V|Ljava/io/IOException;').
name_ref(m_test_new_output_stream_new_file_138, method, 'testNewOutputStreamNewFile', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamNewFile(Z)V|Ljava/io/IOException;').
name_ref(m_test_new_output_stream_new_file_append_false_139, method, 'testNewOutputStreamNewFileAppendFalse', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamNewFileAppendFalse()V|Ljava/io/IOException;').
name_ref(m_test_new_output_stream_new_file_append_true_140, method, 'testNewOutputStreamNewFileAppendTrue', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamNewFileAppendTrue()V|Ljava/io/IOException;').
name_ref(m_test_new_output_stream_new_file_inside_existing_symlinked_dir_141, method, 'testNewOutputStreamNewFileInsideExistingSymlinkedDir', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamNewFileInsideExistingSymlinkedDir()V|Ljava/io/IOException;').
name_ref(m_test_read_attributes_posix_142, method, 'testReadAttributesPosix', 'Lorg/apache/commons/io/file/PathUtilsTest;.testReadAttributesPosix()V|Ljava/io/IOException;').
name_ref(m_test_read_string_empty_file_143, method, 'testReadStringEmptyFile', 'Lorg/apache/commons/io/file/PathUtilsTest;.testReadStringEmptyFile()V|Ljava/io/IOException;').
name_ref(m_test_read_string_simple_utf8_144, method, 'testReadStringSimpleUtf8', 'Lorg/apache/commons/io/file/PathUtilsTest;.testReadStringSimpleUtf8()V|Ljava/io/IOException;').
name_ref(m_test_set_read_only_file_145, method, 'testSetReadOnlyFile', 'Lorg/apache/commons/io/file/PathUtilsTest;.testSetReadOnlyFile()V|Ljava/io/IOException;').
name_ref(m_test_touch_146, method, 'testTouch', 'Lorg/apache/commons/io/file/PathUtilsTest;.testTouch()V|Ljava/io/IOException;').
name_ref(m_test_write_string_to_file1_147, method, 'testWriteStringToFile1', 'Lorg/apache/commons/io/file/PathUtilsTest;.testWriteStringToFile1()V|Ljava/lang/Exception;').
name_ref(m_to_file_visit_option_set_92, method, 'toFileVisitOptionSet', 'Lorg/apache/commons/io/file/PathUtils;.toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;').
name_ref(m_touch_93, method, 'touch', 'Lorg/apache/commons/io/file/PathUtils;.touch(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_94, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_95, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_96, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_97, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;').
name_ref(m_wait_for_98, method, 'waitFor', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_walk_99, method, 'walk', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;').
name_ref(m_with_posix_file_attributes_100, method, 'withPosixFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;').
name_ref(m_write_string_101, method, 'writeString', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_write_to_new_output_stream_148, method, 'writeToNewOutputStream', 'Lorg/apache/commons/io/file/PathUtilsTest;.writeToNewOutputStream(Z)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(q_append_3, q_name, 'StandardOpenOption.APPEND', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.APPEND)Ljava/nio/file/StandardOpenOption;').
name_ref(q_create_1, q_name, 'StandardOpenOption.CREATE', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.CREATE)Ljava/nio/file/StandardOpenOption;').
name_ref(q_nofollow_links_4, q_name, 'LinkOption.NOFOLLOW_LINKS', 'Ljava/nio/file/LinkOption;:Ljava/nio/file/LinkOption;.NOFOLLOW_LINKS)Ljava/nio/file/LinkOption;').
name_ref(q_truncate_existing_2, q_name, 'StandardOpenOption.TRUNCATE_EXISTING', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.TRUNCATE_EXISTING)Ljava/nio/file/StandardOpenOption;').
name_ref(q_utf_8_5, q_name, 'StandardCharsets.UTF_8', 'Ljava/nio/charset/StandardCharsets;:Ljava/nio/charset/StandardCharsets;.UTF_8)Ljava/nio/charset/Charset;').

%%% End of Code Facts

