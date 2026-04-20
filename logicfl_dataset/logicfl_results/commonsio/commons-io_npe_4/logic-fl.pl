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
trace(trace_3, trace_2, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_4, trace_3, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_path_99, null, line(path_utils_1, 881)).



%%% End of Facts