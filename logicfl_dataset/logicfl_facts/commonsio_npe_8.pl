%%% Logic-FL Facts
:- style_check(-discontiguous).

%path_utils_1 - org.apache.commons.io.file.PathUtils
param(p_dir_1_1, 1, m_relative_sorted_paths_1).
param(p_dir_2_2, 2, m_relative_sorted_paths_1).
param(p_max_depth_3, 3, m_relative_sorted_paths_1).
param(p_link_options_4, 4, m_relative_sorted_paths_1).
param(p_file_visit_options_5, 5, m_relative_sorted_paths_1).
throw(m_relative_sorted_paths_1, ioexception).
assign(f_open_options_truncate_6, path_utils_1_expr1, line(path_utils_1, 146)).
ref(t_standard_open_option_1, q_create_1, line(path_utils_1, 146)).
ref(t_standard_open_option_1, q_truncate_existing_2, line(path_utils_1, 146)).
assign(f_open_options_append_7, path_utils_1_expr2, line(path_utils_1, 148)).
ref(t_standard_open_option_1, q_create_3, line(path_utils_1, 148)).
ref(t_standard_open_option_1, q_append_3, line(path_utils_1, 148)).
assign(f_empty_copy_options_8, path_utils_1_expr3, line(path_utils_1, 155)).
assign(f_empty_delete_option_array_9, path_utils_1_expr4, line(path_utils_1, 162)).
assign(f_empty_file_visit_option_array_10, path_utils_1_expr5, line(path_utils_1, 167)).
assign(f_empty_link_option_array_11, path_utils_1_expr6, line(path_utils_1, 172)).
assign(f_nofollow_link_option_array_12, path_utils_1_expr7, line(path_utils_1, 181)).
ref(t_link_option_2, q_nofollow_links_4, line(path_utils_1, 181)).
assign(f_null_link_option_13, path_utils_1_literal1, line(path_utils_1, 188)).
assign(f_empty_open_option_array_14, path_utils_1_expr8, line(path_utils_1, 193)).
assign(f_empty_path_array_15, path_utils_1_expr9, line(path_utils_1, 200)).
param(p_directory_16, 1, m_accumulate_3).
param(p_max_depth_17, 2, m_accumulate_3).
param(p_file_visit_options_18, 3, m_accumulate_3).
throw(m_accumulate_3, ioexception).
param(p_directory_19, 1, m_clean_directory_4).
throw(m_clean_directory_4, ioexception).
param(p_directory_20, 1, m_clean_directory_5).
param(p_delete_options_21, 2, m_clean_directory_5).
throw(m_clean_directory_5, ioexception).
param(p_file_22, 1, m_compare_last_modified_time_to_6).
param(p_file_time_23, 2, m_compare_last_modified_time_to_6).
param(p_options_24, 3, m_compare_last_modified_time_to_6).
throw(m_compare_last_modified_time_to_6, ioexception).
param(p_source_directory_25, 1, m_copy_directory_7).
param(p_target_directory_26, 2, m_copy_directory_7).
param(p_copy_options_27, 3, m_copy_directory_7).
throw(m_copy_directory_7, ioexception).
param(p_source_file_28, 1, m_copy_file_8).
param(p_target_file_29, 2, m_copy_file_8).
param(p_copy_options_30, 3, m_copy_file_8).
throw(m_copy_file_8, ioexception).
param(p_source_file_31, 1, m_copy_file_to_directory_9).
param(p_target_directory_32, 2, m_copy_file_to_directory_9).
param(p_copy_options_33, 3, m_copy_file_to_directory_9).
throw(m_copy_file_to_directory_9, ioexception).
param(p_source_file_34, 1, m_copy_file_to_directory_10).
param(p_target_directory_35, 2, m_copy_file_to_directory_10).
param(p_copy_options_36, 3, m_copy_file_to_directory_10).
throw(m_copy_file_to_directory_10, ioexception).
param(p_directory_37, 1, m_count_directory_11).
throw(m_count_directory_11, ioexception).
param(p_directory_38, 1, m_count_directory_as_big_integer_12).
throw(m_count_directory_as_big_integer_12, ioexception).
param(p_path_39, 1, m_create_parent_directories_13).
param(p_attrs_40, 2, m_create_parent_directories_13).
throw(m_create_parent_directories_13, ioexception).
param(p_path_41, 1, m_create_parent_directories_14).
param(p_link_option_42, 2, m_create_parent_directories_14).
param(p_attrs_43, 3, m_create_parent_directories_14).
throw(m_create_parent_directories_14, ioexception).
assign(v_parent_44, path_utils_1_expr10, line(path_utils_1, 370)).
method_invoc(path_utils_1_expr10, m_get_parent_15, line(path_utils_1, 370)).
argument(p_path_41, 1, path_utils_1_expr10).
assign(v_parent_44, path_utils_1_expr12, line(path_utils_1, 371)).
cond_expr(path_utils_1_expr13, v_parent_44, path_utils_1_expr14, line(path_utils_1, 371)).
ref(t_link_option_2, q_nofollow_links_5, line(path_utils_1, 371)).
method_invoc(path_utils_1_expr14, m_read_if_symbolic_link_16, line(path_utils_1, 371)).
throw(path_utils_1_expr14, ioexception, line(path_utils_1, 371)).
argument(v_parent_44, 1, path_utils_1_expr14).
param(p_path_45, 1, m_delete_18).
throw(m_delete_18, ioexception).
param(p_path_46, 1, m_delete_19).
param(p_delete_options_47, 2, m_delete_19).
throw(m_delete_19, ioexception).
param(p_path_48, 1, m_delete_20).
param(p_link_options_49, 2, m_delete_20).
param(p_delete_options_50, 3, m_delete_20).
throw(m_delete_20, ioexception).
param(p_directory_51, 1, m_delete_directory_21).
throw(m_delete_directory_21, ioexception).
param(p_directory_52, 1, m_delete_directory_22).
param(p_delete_options_53, 2, m_delete_directory_22).
throw(m_delete_directory_22, ioexception).
param(p_directory_54, 1, m_delete_directory_23).
param(p_link_options_55, 2, m_delete_directory_23).
param(p_delete_options_56, 3, m_delete_directory_23).
throw(m_delete_directory_23, ioexception).
param(p_file_57, 1, m_delete_file_24).
throw(m_delete_file_24, ioexception).
param(p_file_58, 1, m_delete_file_25).
param(p_delete_options_59, 2, m_delete_file_25).
throw(m_delete_file_25, ioexception).
param(p_file_60, 1, m_delete_file_26).
param(p_link_options_61, 2, m_delete_file_26).
param(p_delete_options_62, 3, m_delete_file_26).
throw(m_delete_file_26, no_such_file_exception).
throw(m_delete_file_26, ioexception).
param(p_path_1_63, 1, m_directory_and_file_content_equals_27).
param(p_path_2_64, 2, m_directory_and_file_content_equals_27).
throw(m_directory_and_file_content_equals_27, ioexception).
param(p_path_1_65, 1, m_directory_and_file_content_equals_28).
param(p_path_2_66, 2, m_directory_and_file_content_equals_28).
param(p_link_options_67, 3, m_directory_and_file_content_equals_28).
param(p_open_options_68, 4, m_directory_and_file_content_equals_28).
param(p_file_visit_option_69, 5, m_directory_and_file_content_equals_28).
throw(m_directory_and_file_content_equals_28, ioexception).
param(p_path_1_70, 1, m_directory_content_equals_29).
param(p_path_2_71, 2, m_directory_content_equals_29).
throw(m_directory_content_equals_29, ioexception).
param(p_path_1_72, 1, m_directory_content_equals_30).
param(p_path_2_73, 2, m_directory_content_equals_30).
param(p_max_depth_74, 3, m_directory_content_equals_30).
param(p_link_options_75, 4, m_directory_content_equals_30).
param(p_file_visit_options_76, 5, m_directory_content_equals_30).
throw(m_directory_content_equals_30, ioexception).
param(p_path_77, 1, m_exists_31).
param(p_options_78, 2, m_exists_31).
param(p_path_1_79, 1, m_file_content_equals_32).
param(p_path_2_80, 2, m_file_content_equals_32).
throw(m_file_content_equals_32, ioexception).
param(p_path_1_81, 1, m_file_content_equals_33).
param(p_path_2_82, 2, m_file_content_equals_33).
param(p_link_options_83, 3, m_file_content_equals_33).
param(p_open_options_84, 4, m_file_content_equals_33).
throw(m_file_content_equals_33, ioexception).
param(p_filter_85, 1, m_filter_34).
param(p_paths_86, 2, m_filter_34).
param(p_filter_87, 1, m_filter_paths_35).
param(p_stream_88, 2, m_filter_paths_35).
param(p_collector_89, 3, m_filter_paths_35).
param(p_source_path_90, 1, m_get_acl_entry_list_36).
throw(m_get_acl_entry_list_36, ioexception).
param(p_path_91, 1, m_get_acl_file_attribute_view_37).
param(p_options_92, 2, m_get_acl_file_attribute_view_37).
param(p_path_93, 1, m_get_dos_file_attribute_view_38).
param(p_options_94, 2, m_get_dos_file_attribute_view_38).
param(p_path_95, 1, m_get_last_modified_time_39).
param(p_options_96, 2, m_get_last_modified_time_39).
throw(m_get_last_modified_time_39, ioexception).
param(p_path_97, 1, m_get_parent_15).
return(path_utils_1_expr15, m_get_parent_15, line(path_utils_1, 825)).
cond_expr(path_utils_1_expr16, path_utils_1_literal2, path_utils_1_expr17, line(path_utils_1, 825)).
method_invoc(path_utils_1_expr17, m_get_parent_40, line(path_utils_1, 825)).
ref(p_path_97, path_utils_1_expr17, line(path_utils_1, 825)).
param(p_path_98, 1, m_get_posix_file_attribute_view_41).
param(p_options_99, 2, m_get_posix_file_attribute_view_41).
param(p_path_100, 1, m_is_directory_43).
param(p_options_101, 2, m_is_directory_43).
param(p_path_102, 1, m_is_empty_44).
throw(m_is_empty_44, ioexception).
param(p_directory_103, 1, m_is_empty_directory_45).
throw(m_is_empty_directory_45, ioexception).
param(p_file_104, 1, m_is_empty_file_46).
throw(m_is_empty_file_46, ioexception).
param(p_file_105, 1, m_is_newer_47).
param(p_czdt_106, 2, m_is_newer_47).
param(p_options_107, 3, m_is_newer_47).
throw(m_is_newer_47, ioexception).
param(p_file_108, 1, m_is_newer_48).
param(p_file_time_109, 2, m_is_newer_48).
param(p_options_110, 3, m_is_newer_48).
throw(m_is_newer_48, ioexception).
param(p_file_111, 1, m_is_newer_49).
param(p_instant_112, 2, m_is_newer_49).
param(p_options_113, 3, m_is_newer_49).
throw(m_is_newer_49, ioexception).
param(p_file_114, 1, m_is_newer_50).
param(p_time_millis_115, 2, m_is_newer_50).
param(p_options_116, 3, m_is_newer_50).
throw(m_is_newer_50, ioexception).
param(p_file_117, 1, m_is_newer_51).
param(p_reference_118, 2, m_is_newer_51).
throw(m_is_newer_51, ioexception).
param(p_file_119, 1, m_is_older_52).
param(p_file_time_120, 2, m_is_older_52).
param(p_options_121, 3, m_is_older_52).
throw(m_is_older_52, ioexception).
param(p_file_122, 1, m_is_older_53).
param(p_instant_123, 2, m_is_older_53).
param(p_options_124, 3, m_is_older_53).
throw(m_is_older_53, ioexception).
param(p_file_125, 1, m_is_older_54).
param(p_time_millis_126, 2, m_is_older_54).
param(p_options_127, 3, m_is_older_54).
throw(m_is_older_54, ioexception).
param(p_file_128, 1, m_is_older_55).
param(p_reference_129, 2, m_is_older_55).
throw(m_is_older_55, ioexception).
param(p_test_130, 1, m_is_posix_56).
param(p_options_131, 2, m_is_posix_56).
param(p_path_132, 1, m_is_regular_file_57).
param(p_options_133, 2, m_is_regular_file_57).
param(p_dir_134, 1, m_new_directory_stream_58).
param(p_path_filter_135, 2, m_new_directory_stream_58).
throw(m_new_directory_stream_58, ioexception).
param(p_path_136, 1, m_new_output_stream_59).
param(p_append_137, 2, m_new_output_stream_59).
throw(m_new_output_stream_59, ioexception).
param(p_path_138, 1, m_new_output_stream_60).
param(p_link_options_139, 2, m_new_output_stream_60).
param(p_open_options_140, 3, m_new_output_stream_60).
throw(m_new_output_stream_60, ioexception).
param(p_path_141, 1, m_not_exists_62).
param(p_options_142, 2, m_not_exists_62).
param(p_delete_options_143, 1, m_override_read_only_63).
param(p_path_144, 1, m_read_attributes_64).
param(p_type_145, 2, m_read_attributes_64).
param(p_options_146, 3, m_read_attributes_64).
param(p_path_147, 1, m_read_basic_file_attributes_65).
throw(m_read_basic_file_attributes_65, ioexception).
param(p_path_148, 1, m_read_basic_file_attributes_66).
param(p_options_149, 2, m_read_basic_file_attributes_66).
param(p_path_150, 1, m_read_basic_file_attributes_unchecked_67).
param(p_path_151, 1, m_read_dos_file_attributes_68).
param(p_options_152, 2, m_read_dos_file_attributes_68).
param(p_path_153, 1, m_read_if_symbolic_link_16).
throw(m_read_if_symbolic_link_16, ioexception).
return(path_utils_1_expr18, m_read_if_symbolic_link_16, line(path_utils_1, 1215)).
cond_expr(path_utils_1_expr19, path_utils_1_expr20, p_path_153, line(path_utils_1, 1215)).
method_invoc(path_utils_1_expr19, m_is_symbolic_link_69, line(path_utils_1, 1215)).
throw(path_utils_1_expr19, null_pointer_exception, line(path_utils_1, 1215)).
argument(p_path_153, 1, path_utils_1_expr19).
ref(t_files_3, path_utils_1_expr19, line(path_utils_1, 1215)).
method_invoc(path_utils_1_expr20, m_read_symbolic_link_70, line(path_utils_1, 1215)).
throw(path_utils_1_expr20, ioexception, line(path_utils_1, 1215)).
argument(p_path_153, 1, path_utils_1_expr20).
ref(t_files_3, path_utils_1_expr20, line(path_utils_1, 1215)).
param(p_path_154, 1, m_read_os_file_attributes_71).
param(p_options_155, 2, m_read_os_file_attributes_71).
param(p_path_156, 1, m_read_posix_file_attributes_72).
param(p_options_157, 2, m_read_posix_file_attributes_72).
param(p_path_158, 1, m_read_string_73).
param(p_charset_159, 2, m_read_string_73).
throw(m_read_string_73, ioexception).
param(p_collection_160, 1, m_relativize_74).
param(p_parent_161, 2, m_relativize_74).
param(p_sort_162, 3, m_relativize_74).
param(p_comparator_163, 4, m_relativize_74).
param(p_file_164, 1, m_require_can_write_75).
param(p_name_165, 2, m_require_can_write_75).
param(p_file_166, 1, m_require_exists_76).
param(p_file_param_name_167, 2, m_require_exists_76).
param(p_options_168, 3, m_require_exists_76).
param(p_file_169, 1, m_require_file_77).
param(p_name_170, 2, m_require_file_77).
param(p_path_171, 1, m_set_dos_read_only_78).
param(p_read_only_172, 2, m_set_dos_read_only_78).
param(p_link_options_173, 3, m_set_dos_read_only_78).
throw(m_set_dos_read_only_78, ioexception).
param(p_source_file_174, 1, m_set_last_modified_time_79).
param(p_target_file_175, 2, m_set_last_modified_time_79).
throw(m_set_last_modified_time_79, ioexception).
param(p_parent_176, 1, m_set_posix_delete_permissions_80).
param(p_enable_delete_children_177, 2, m_set_posix_delete_permissions_80).
param(p_link_options_178, 3, m_set_posix_delete_permissions_80).
throw(m_set_posix_delete_permissions_80, ioexception).
param(p_path_179, 1, m_set_posix_permissions_81).
param(p_add_permissions_180, 2, m_set_posix_permissions_81).
param(p_update_permissions_181, 3, m_set_posix_permissions_81).
param(p_link_options_182, 4, m_set_posix_permissions_81).
throw(m_set_posix_permissions_81, ioexception).
param(p_path_183, 1, m_set_posix_read_only_file_82).
param(p_read_only_184, 2, m_set_posix_read_only_file_82).
param(p_link_options_185, 3, m_set_posix_read_only_file_82).
throw(m_set_posix_read_only_file_82, ioexception).
param(p_path_186, 1, m_set_read_only_83).
param(p_read_only_187, 2, m_set_read_only_83).
param(p_link_options_188, 3, m_set_read_only_83).
throw(m_set_read_only_83, ioexception).
param(p_path_189, 1, m_size_of_84).
throw(m_size_of_84, ioexception).
param(p_path_190, 1, m_size_of_as_big_integer_85).
throw(m_size_of_as_big_integer_85, ioexception).
param(p_directory_191, 1, m_size_of_directory_86).
throw(m_size_of_directory_86, ioexception).
param(p_directory_192, 1, m_size_of_directory_as_big_integer_87).
throw(m_size_of_directory_as_big_integer_87, ioexception).
param(p_file_visit_options_193, 1, m_to_file_visit_option_set_88).
param(p_visitor_194, 1, m_visit_file_tree_89).
param(p_directory_195, 2, m_visit_file_tree_89).
throw(m_visit_file_tree_89, ioexception).
param(p_visitor_196, 1, m_visit_file_tree_90).
param(p_start_197, 2, m_visit_file_tree_90).
param(p_options_198, 3, m_visit_file_tree_90).
param(p_max_depth_199, 4, m_visit_file_tree_90).
throw(m_visit_file_tree_90, ioexception).
param(p_visitor_200, 1, m_visit_file_tree_91).
param(p_first_201, 2, m_visit_file_tree_91).
param(p_more_202, 3, m_visit_file_tree_91).
throw(m_visit_file_tree_91, ioexception).
param(p_visitor_203, 1, m_visit_file_tree_92).
param(p_uri_204, 2, m_visit_file_tree_92).
throw(m_visit_file_tree_92, ioexception).
param(p_file_205, 1, m_wait_for_93).
param(p_timeout_206, 2, m_wait_for_93).
param(p_options_207, 3, m_wait_for_93).
param(p_start_208, 1, m_walk_94).
param(p_path_filter_209, 2, m_walk_94).
param(p_max_depth_210, 3, m_walk_94).
param(p_read_attributes_211, 4, m_walk_94).
param(p_options_212, 5, m_walk_94).
throw(m_walk_94, ioexception).
param(p_path_213, 1, m_with_posix_file_attributes_95).
param(p_link_options_214, 2, m_with_posix_file_attributes_95).
param(p_override_read_only_215, 3, m_with_posix_file_attributes_95).
param(p_function_216, 4, m_with_posix_file_attributes_95).
throw(m_with_posix_file_attributes_95, ioexception).
param(p_path_217, 1, m_write_string_96).
param(p_char_sequence_218, 2, m_write_string_96).
param(p_charset_219, 3, m_write_string_96).
param(p_open_options_220, 4, m_write_string_96).
throw(m_write_string_96, ioexception).
throw(path_utils_1_expr20, null_pointer_exception, line(path_utils_1, 1215)).

%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
assign(f_byte_array_fixture_221, path_utils_test_1_expr1, line(path_utils_test_1, 60)).
method_invoc(path_utils_test_1_expr1, m_get_bytes_97, line(path_utils_test_1, 60)).
argument(q_utf_8_5, 1, path_utils_test_1_expr1).
ref(f_string_fixture_222, path_utils_test_1_expr1, line(path_utils_test_1, 60)).
ref(t_standard_charsets_5, q_utf_8_5, line(path_utils_test_1, 60)).
throw(m_create_temp_symlinked_relative_dir_98, ioexception).
param(p_p_223, 1, m_open_archive_99).
param(p_create_new_224, 2, m_open_archive_99).
throw(m_open_archive_99, ioexception).
throw(m_test_copy_directory_for_different_filesystems_with_absolute_path_100, ioexception).
throw(m_test_copy_directory_for_different_filesystems_with_absolute_path_reverse_101, ioexception).
throw(m_test_copy_directory_for_different_filesystems_with_relative_path_102, ioexception).
throw(m_test_copy_directory_for_different_filesystems_with_relative_path_reverse_103, ioexception).
throw(m_test_copy_file_104, ioexception).
throw(m_test_create_directories_already_exists_105, ioexception).
throw(m_test_create_directories_for_roots_106, ioexception).
throw(m_test_create_directories_for_roots_link_option_null_107, ioexception).
ref(path_utils_test_1_expr2, path_utils_test_1_stmt1, line(path_utils_test_1, 189)).
method_invoc(path_utils_test_1_expr2, m_list_roots_108, line(path_utils_test_1, 189)).
ref(t_file_6, path_utils_test_1_expr2, line(path_utils_test_1, 189)).
assign(v_path_226, path_utils_test_1_expr3, line(path_utils_test_1, 190)).
method_invoc(path_utils_test_1_expr3, m_to_path_109, line(path_utils_test_1, 190)).
ref(v_f_225, path_utils_test_1_expr3, line(path_utils_test_1, 190)).
method_invoc(path_utils_test_1_expr4, m_assert_equals_110, line(path_utils_test_1, 191)).
argument(path_utils_test_1_expr5, 1, path_utils_test_1_expr4).
argument(path_utils_test_1_expr6, 2, path_utils_test_1_expr4).
method_invoc(path_utils_test_1_expr5, m_get_parent_40, line(path_utils_test_1, 191)).
ref(v_path_226, path_utils_test_1_expr5, line(path_utils_test_1, 191)).
method_invoc(path_utils_test_1_expr6, m_create_parent_directories_14, line(path_utils_test_1, 191)).
throw(path_utils_test_1_expr6, ioexception, line(path_utils_test_1, 191)).
argument(v_path_226, 1, path_utils_test_1_expr6).
argument(path_utils_test_1_expr7, 2, path_utils_test_1_expr6).
ref(t_path_utils_7, path_utils_test_1_expr6, line(path_utils_test_1, 191)).
assign(path_utils_test_1_expr7, path_utils_test_1_literal1, line(path_utils_test_1, 191)).
throw(m_test_create_directories_new_111, ioexception).
throw(m_test_create_directories_symlink_112, ioexception).
throw(m_test_create_directories_symlink_clashing_113, ioexception).
throw(m_test_is_directory_115, ioexception).
throw(m_test_is_posix_116, ioexception).
throw(m_test_is_regular_file_117, ioexception).
throw(m_test_new_directory_stream_118, exception).
throw(m_test_new_output_stream_existing_file_append_false_119, ioexception).
throw(m_test_new_output_stream_existing_file_append_true_120, ioexception).
param(p_append_227, 1, m_test_new_output_stream_new_file_121).
throw(m_test_new_output_stream_new_file_121, ioexception).
throw(m_test_new_output_stream_new_file_append_false_122, ioexception).
throw(m_test_new_output_stream_new_file_append_true_123, ioexception).
throw(m_test_new_output_stream_new_file_inside_existing_symlinked_dir_124, ioexception).
throw(m_test_read_attributes_posix_125, ioexception).
throw(m_test_read_string_empty_file_126, ioexception).
throw(m_test_read_string_simple_utf8_127, ioexception).
throw(m_test_set_read_only_file_128, ioexception).
throw(m_test_write_string_to_file1_129, exception).
param(p_append_228, 1, m_write_to_new_output_stream_130).
throw(m_write_to_new_output_stream_130, ioexception).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.file.PathUtilsTest', 'testCreateDirectoriesForRootsLinkOptionNull').
trace(trace_1, failure_1, 'provider', line(java_nio_file_files, 105), failure_1, non_target).
trace(trace_2, trace_1, 'readAttributes', line(java_nio_file_files, 1849), failure_1, non_target).
trace(trace_3, trace_2, 'isSymbolicLink', line(java_nio_file_files, 2275), failure_1, non_target).
trace(trace_4, trace_3, m_read_if_symbolic_link_16, line(path_utils_1, 1215), failure_1, target).
trace(trace_5, trace_4, m_create_parent_directories_14, line(path_utils_1, 371), failure_1, target).
trace(trace_6, trace_5, m_test_create_directories_for_roots_link_option_null_107, line(path_utils_test_1, 191), failure_1, target).
trace(trace_7, trace_6, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_8, trace_7, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_9, trace_8, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_1, non_target).
trace(trace_10, trace_9, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_1, non_target).
trace(trace_11, trace_10, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_1, non_target).
trace(trace_12, trace_11, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_1, non_target).
trace(trace_13, trace_12, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_1, non_target).
trace(trace_14, trace_13, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_1, non_target).
trace(trace_15, trace_14, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_1, non_target).
trace(trace_16, trace_15, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_1, non_target).
trace(trace_17, trace_16, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_1, non_target).
trace(trace_18, trace_17, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_1, non_target).
trace(trace_19, trace_18, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_1, non_target).
trace(trace_20, trace_19, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_1, non_target).
trace(trace_21, trace_20, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_1, non_target).
trace(trace_22, trace_21, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_1, non_target).
trace(trace_23, trace_22, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_1, non_target).
trace(trace_24, trace_23, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_25, trace_24, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_1, non_target).
trace(trace_26, trace_25, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_1, non_target).
trace(trace_27, trace_26, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_1, non_target).
trace(trace_28, trace_27, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_1, non_target).
trace(trace_29, trace_28, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_30, trace_29, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_31, trace_30, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_32, trace_31, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_33, trace_32, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_34, trace_33, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_35, trace_34, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_36, trace_35, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_37, trace_36, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_38, trace_37, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_39, trace_38, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_40, trace_39, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_41, trace_40, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_42, trace_41, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_43, trace_42, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_44, trace_43, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_45, trace_44, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_46, trace_45, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_47, trace_46, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_48, trace_47, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_49, trace_48, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_50, trace_49, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_51, trace_50, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_52, trace_51, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_53, trace_52, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_54, trace_53, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_55, trace_54, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_56, trace_55, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_1, non_target).
trace(trace_57, trace_56, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_1, non_target).
trace(trace_58, trace_57, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_1, non_target).
trace(trace_59, trace_58, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_1, non_target).
trace(trace_60, trace_59, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_1, non_target).
trace(trace_61, trace_60, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_1, non_target).
trace(trace_62, trace_61, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_1, non_target).
trace(trace_63, trace_62, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_1, non_target).
trace(trace_64, trace_63, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_1, non_target).
trace(trace_65, trace_64, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_1, non_target).
trace(trace_66, trace_65, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_1, non_target).
trace(trace_67, trace_66, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_1, non_target).
trace(trace_68, trace_67, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(path_utils_1_expr10, null, line(path_utils_1, 370)).
val(v_parent_44, null, line(path_utils_1, 371)).
val(p_link_option_42, null, line(path_utils_1, 371)).
val(path_utils_1_expr14, null, line(path_utils_1, 371)).
val(p_path_153, null, line(path_utils_1, 1215)).
val(path_utils_test_1_expr5, null, line(path_utils_test_1, 191)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(path_utils_1, 'org.apache.commons.io.file.PathUtils').
class(path_utils_test_1, 'org.apache.commons.io.file.PathUtilsTest').

%%% Methods
%path_utils_1 - org.apache.commons.io.file.PathUtils
method(m_relative_sorted_paths_1, range(path_utils_1, 3424, 2858, 96, 143)).
method(m_path_utils_2, range(path_utils_1, 7846, 108, 202, 207)).
method(m_accumulate_3, range(path_utils_1, 7960, 741, 209, 220)).
method(m_clean_directory_4, range(path_utils_1, 8707, 427, 222, 231)).
method(m_clean_directory_5, range(path_utils_1, 9140, 595, 233, 244)).
method(m_compare_last_modified_time_to_6, range(path_utils_1, 9741, 651, 246, 258)).
method(m_copy_directory_7, range(path_utils_1, 10398, 766, 260, 273)).
method(m_copy_file_8, range(path_utils_1, 11170, 656, 275, 290)).
method(m_copy_file_to_directory_9, range(path_utils_1, 11832, 606, 292, 304)).
method(m_copy_file_to_directory_10, range(path_utils_1, 12444, 722, 306, 321)).
method(m_count_directory_11, range(path_utils_1, 13172, 457, 323, 332)).
method(m_count_directory_as_big_integer_12, range(path_utils_1, 13635, 472, 334, 344)).
method(m_create_parent_directories_13, range(path_utils_1, 14113, 623, 346, 357)).
method(m_create_parent_directories_14, range(path_utils_1, 14742, 842, 359, 373)).
method(m_current_17, range(path_utils_1, 15590, 190, 375, 384)).
method(m_delete_18, range(path_utils_1, 15786, 861, 386, 403)).
method(m_delete_19, range(path_utils_1, 16653, 1155, 405, 425)).
method(m_delete_20, range(path_utils_1, 17814, 1255, 427, 448)).
method(m_delete_directory_21, range(path_utils_1, 19075, 420, 450, 459)).
method(m_delete_directory_22, range(path_utils_1, 19501, 835, 461, 475)).
method(m_delete_directory_23, range(path_utils_1, 20342, 688, 477, 489)).
method(m_delete_file_24, range(path_utils_1, 21036, 454, 491, 501)).
method(m_delete_file_25, range(path_utils_1, 21496, 691, 503, 516)).
method(m_delete_file_26, range(path_utils_1, 22193, 2220, 518, 569)).
method(m_directory_and_file_content_equals_27, range(path_utils_1, 24419, 713, 571, 582)).
method(m_directory_and_file_content_equals_28, range(path_utils_1, 25138, 2157, 584, 626)).
method(m_directory_content_equals_29, range(path_utils_1, 27301, 697, 628, 639)).
method(m_directory_content_equals_30, range(path_utils_1, 28004, 971, 641, 656)).
method(m_exists_31, range(path_utils_1, 28981, 212, 658, 661)).
method(m_file_content_equals_32, range(path_utils_1, 29199, 800, 663, 678)).
method(m_file_content_equals_33, range(path_utils_1, 30005, 2364, 680, 734)).
method(m_filter_34, range(path_utils_1, 32375, 1197, 736, 766)).
method(m_filter_paths_35, range(path_utils_1, 33578, 631, 768, 781)).
method(m_get_acl_entry_list_36, range(path_utils_1, 34215, 579, 783, 794)).
method(m_get_acl_file_attribute_view_37, range(path_utils_1, 34800, 526, 796, 806)).
method(m_get_dos_file_attribute_view_38, range(path_utils_1, 35332, 526, 808, 818)).
method(m_get_last_modified_time_39, range(path_utils_1, 35864, 205, 820, 822)).
method(m_get_parent_15, range(path_utils_1, 36075, 109, 824, 826)).
method(m_get_posix_file_attribute_view_41, range(path_utils_1, 36190, 536, 828, 838)).
method(m_get_temp_directory_42, range(path_utils_1, 36732, 268, 840, 848)).
method(m_is_directory_43, range(path_utils_1, 37006, 928, 850, 864)).
method(m_is_empty_44, range(path_utils_1, 37940, 397, 866, 875)).
method(m_is_empty_directory_45, range(path_utils_1, 38343, 858, 877, 892)).
method(m_is_empty_file_46, range(path_utils_1, 39207, 532, 894, 905)).
method(m_is_newer_47, range(path_utils_1, 39745, 735, 907, 921)).
method(m_is_newer_48, range(path_utils_1, 40486, 764, 923, 939)).
method(m_is_newer_49, range(path_utils_1, 41256, 686, 941, 954)).
method(m_is_newer_50, range(path_utils_1, 41948, 769, 956, 969)).
method(m_is_newer_51, range(path_utils_1, 42723, 575, 971, 982)).
method(m_is_older_52, range(path_utils_1, 43304, 765, 984, 1000)).
method(m_is_older_53, range(path_utils_1, 44075, 687, 1002, 1015)).
method(m_is_older_54, range(path_utils_1, 44768, 771, 1017, 1030)).
method(m_is_older_55, range(path_utils_1, 45545, 568, 1032, 1043)).
method(m_is_posix_56, range(path_utils_1, 46119, 441, 1045, 1055)).
method(m_is_regular_file_57, range(path_utils_1, 46566, 944, 1057, 1071)).
method(m_new_directory_stream_58, range(path_utils_1, 47516, 503, 1073, 1083)).
method(m_new_output_stream_59, range(path_utils_1, 48025, 630, 1085, 1098)).
method(m_new_output_stream_60, range(path_utils_1, 48661, 737, 1100, 1110)).
method(m_no_follow_link_option_array_61, range(path_utils_1, 49404, 170, 1112, 1117)).
method(m_not_exists_62, range(path_utils_1, 49580, 165, 1119, 1121)).
method(m_override_read_only_63, range(path_utils_1, 49751, 523, 1123, 1134)).
method(m_read_attributes_64, range(path_utils_1, 50280, 1053, 1136, 1157)).
method(m_read_basic_file_attributes_65, range(path_utils_1, 51339, 523, 1159, 1171)).
method(m_read_basic_file_attributes_66, range(path_utils_1, 51868, 509, 1173, 1184)).
method(m_read_basic_file_attributes_unchecked_67, range(path_utils_1, 52383, 568, 1186, 1199)).
method(m_read_dos_file_attributes_68, range(path_utils_1, 52957, 501, 1201, 1212)).
method(m_read_if_symbolic_link_16, range(path_utils_1, 53464, 163, 1214, 1216)).
method(m_read_os_file_attributes_71, range(path_utils_1, 53633, 640, 1218, 1230)).
method(m_read_posix_file_attributes_72, range(path_utils_1, 54279, 509, 1232, 1243)).
method(m_read_string_73, range(path_utils_1, 54794, 529, 1245, 1257)).
method(m_relativize_74, range(path_utils_1, 55329, 784, 1259, 1274)).
method(m_require_can_write_75, range(path_utils_1, 56119, 726, 1276, 1290)).
method(m_require_exists_76, range(path_utils_1, 56851, 932, 1292, 1308)).
method(m_require_file_77, range(path_utils_1, 57789, 719, 1310, 1325)).
method(m_set_dos_read_only_78, range(path_utils_1, 58514, 397, 1327, 1334)).
method(m_set_last_modified_time_79, range(path_utils_1, 58917, 696, 1336, 1349)).
method(m_set_posix_delete_permissions_80, range(path_utils_1, 59619, 1216, 1351, 1373)).
method(m_set_posix_permissions_81, range(path_utils_1, 60841, 1134, 1375, 1398)).
method(m_set_posix_read_only_file_82, range(path_utils_1, 61981, 1204, 1400, 1425)).
method(m_set_read_only_83, range(path_utils_1, 63191, 1525, 1427, 1465)).
method(m_size_of_84, range(path_utils_1, 64722, 1053, 1467, 1485)).
method(m_size_of_as_big_integer_85, range(path_utils_1, 65781, 897, 1487, 1501)).
method(m_size_of_directory_86, range(path_utils_1, 66684, 873, 1503, 1519)).
method(m_size_of_directory_as_big_integer_87, range(path_utils_1, 67563, 589, 1521, 1532)).
method(m_to_file_visit_option_set_88, range(path_utils_1, 68158, 401, 1534, 1542)).
method(m_visit_file_tree_89, range(path_utils_1, 68565, 789, 1544, 1560)).
method(m_visit_file_tree_90, range(path_utils_1, 69360, 998, 1562, 1580)).
method(m_visit_file_tree_91, range(path_utils_1, 70364, 798, 1582, 1597)).
method(m_visit_file_tree_92, range(path_utils_1, 71168, 690, 1599, 1613)).
method(m_wait_for_93, range(path_utils_1, 71864, 1593, 1615, 1654)).
method(m_walk_94, range(path_utils_1, 73463, 908, 1656, 1672)).
method(m_with_posix_file_attributes_95, range(path_utils_1, 74377, 637, 1674, 1684)).
method(m_write_string_96, range(path_utils_1, 75020, 899, 1686, 1704)).
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
method(m_create_temp_symlinked_relative_dir_98, range(path_utils_test_1, 2571, 649, 68, 84)).
method(m_open_archive_99, range(path_utils_test_1, 3226, 492, 86, 95)).
method(m_test_copy_directory_for_different_filesystems_with_absolute_path_100, range(path_utils_test_1, 3724, 697, 97, 111)).
method(m_test_copy_directory_for_different_filesystems_with_absolute_path_reverse_101, range(path_utils_test_1, 4427, 860, 113, 128)).
method(m_test_copy_directory_for_different_filesystems_with_relative_path_102, range(path_utils_test_1, 5293, 906, 130, 147)).
method(m_test_copy_directory_for_different_filesystems_with_relative_path_reverse_103, range(path_utils_test_1, 6205, 843, 149, 164)).
method(m_test_copy_file_104, range(path_utils_test_1, 7054, 389, 166, 172)).
method(m_test_create_directories_already_exists_105, range(path_utils_test_1, 7449, 180, 174, 177)).
method(m_test_create_directories_for_roots_106, range(path_utils_test_1, 7635, 265, 179, 185)).
method(m_test_create_directories_for_roots_link_option_null_107, range(path_utils_test_1, 7906, 298, 187, 193)).
method(m_test_create_directories_new_111, range(path_utils_test_1, 8210, 175, 195, 198)).
method(m_test_create_directories_symlink_112, range(path_utils_test_1, 8391, 401, 200, 206)).
method(m_test_create_directories_symlink_clashing_113, range(path_utils_test_1, 8798, 290, 208, 212)).
method(m_test_get_temp_directory_114, range(path_utils_test_1, 9094, 203, 214, 218)).
method(m_test_is_directory_115, range(path_utils_test_1, 9303, 482, 220, 231)).
method(m_test_is_posix_116, range(path_utils_test_1, 9791, 361, 233, 243)).
method(m_test_is_regular_file_117, range(path_utils_test_1, 10158, 409, 245, 255)).
method(m_test_new_directory_stream_118, range(path_utils_test_1, 10573, 494, 257, 266)).
method(m_test_new_output_stream_existing_file_append_false_119, range(path_utils_test_1, 11073, 179, 268, 272)).
method(m_test_new_output_stream_existing_file_append_true_120, range(path_utils_test_1, 11258, 302, 274, 279)).
method(m_test_new_output_stream_new_file_121, range(path_utils_test_1, 11566, 218, 281, 284)).
method(m_test_new_output_stream_new_file_append_false_122, range(path_utils_test_1, 11790, 131, 286, 289)).
method(m_test_new_output_stream_new_file_append_true_123, range(path_utils_test_1, 11927, 129, 291, 294)).
method(m_test_new_output_stream_new_file_inside_existing_symlinked_dir_124, range(path_utils_test_1, 12062, 695, 296, 312)).
method(m_test_read_attributes_posix_125, range(path_utils_test_1, 12763, 415, 314, 324)).
method(m_test_read_string_empty_file_126, range(path_utils_test_1, 13184, 343, 326, 331)).
method(m_test_read_string_simple_utf8_127, range(path_utils_test_1, 13533, 375, 333, 339)).
method(m_test_set_read_only_file_128, range(path_utils_test_1, 13914, 2823, 341, 400)).
method(m_test_write_string_to_file1_129, range(path_utils_test_1, 16743, 335, 402, 408)).
method(m_write_to_new_output_stream_130, range(path_utils_test_1, 17084, 380, 410, 419)).

%%% Blocks
%path_utils_1 - org.apache.commons.io.file.PathUtils
block(path_utils_1_block1, block, path_utils_1_code80, body, range(path_utils_1, 15363, 221, 369, 373)).
block(path_utils_1_block2, block, path_utils_1_code83, body, range(path_utils_1, 36122, 62, 824, 826)).
block(path_utils_1_block3, block, path_utils_1_code84, body, range(path_utils_1, 53539, 88, 1214, 1216)).
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
block(path_utils_test_1_block1, block, path_utils_test_1_code13, body, range(path_utils_test_1, 7993, 211, 188, 193)).
block(path_utils_test_1_block2, block, path_utils_test_1_stmt1, body, range(path_utils_test_1, 8041, 157, 189, 192)).

%%% Statements
%path_utils_1 - org.apache.commons.io.file.PathUtils
stmt(path_utils_1_stmt1, variable_declaration_statement, path_utils_1_block1, (statements, 0), range(path_utils_1, 15373, 30, 370, 370)).
stmt(path_utils_1_stmt2, expression_statement, path_utils_1_block1, (statements, 1), range(path_utils_1, 15412, 87, 371, 371)).
stmt(path_utils_1_stmt3, return_statement, path_utils_1_block2, (statements, 0), range(path_utils_1, 36132, 46, 825, 825)).
stmt(path_utils_1_stmt4, return_statement, path_utils_1_block3, (statements, 0), range(path_utils_1, 53549, 72, 1215, 1215)).
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
stmt(path_utils_test_1_stmt1, enhanced_for_statement, path_utils_test_1_block1, (statements, 0), range(path_utils_test_1, 8003, 195, 189, 192)).
stmt(path_utils_test_1_stmt2, variable_declaration_statement, path_utils_test_1_block2, (statements, 0), range(path_utils_test_1, 8055, 29, 190, 190)).
stmt(path_utils_test_1_stmt3, expression_statement, path_utils_test_1_block2, (statements, 1), range(path_utils_test_1, 8097, 91, 191, 191)).

%%% Expressions
%path_utils_1 - org.apache.commons.io.file.PathUtils
expr(path_utils_1_expr1, array_initializer, path_utils_1_code10, initializer, range(path_utils_1, 6352, 65, 146, 146), "{StandardOpenOption.CREATE,StandardOpenOption.TRUNCATE_EXISTING}").
expr(path_utils_1_expr2, array_initializer, path_utils_1_code18, initializer, range(path_utils_1, 6480, 54, 148, 148), "{StandardOpenOption.CREATE,StandardOpenOption.APPEND}").
expr(path_utils_1_expr3, array_initializer, path_utils_1_code26, initializer, range(path_utils_1, 6677, 2, 155, 155), "{}").
expr(path_utils_1_expr4, array_initializer, path_utils_1_code34, initializer, range(path_utils_1, 6833, 2, 162, 162), "{}").
expr(path_utils_1_expr5, array_initializer, path_utils_1_code42, initializer, range(path_utils_1, 6972, 2, 167, 167), "{}").
expr(path_utils_1_expr6, array_initializer, path_utils_1_code50, initializer, range(path_utils_1, 7095, 2, 172, 172), "{}").
expr(path_utils_1_expr7, array_initializer, path_utils_1_code58, initializer, range(path_utils_1, 7355, 27, 181, 181), "{LinkOption.NOFOLLOW_LINKS}").
expr(path_utils_1_expr8, array_initializer, path_utils_1_code71, initializer, range(path_utils_1, 7706, 2, 193, 193), "{}").
expr(path_utils_1_expr9, array_initializer, path_utils_1_code79, initializer, range(path_utils_1, 7837, 2, 200, 200), "{}").
expr(path_utils_1_expr10, method_invocation, path_utils_1_code82, initializer, range(path_utils_1, 15387, 15, 370, 370), "getParent(path)").
expr(path_utils_1_expr11, assignment, path_utils_1_stmt2, expression, range(path_utils_1, 15412, 86, 371, 371), "parent=linkOption == LinkOption.NOFOLLOW_LINKS ? parent : readIfSymbolicLink(parent)").
expr(path_utils_1_expr12, conditional_expression, path_utils_1_expr11, right_hand_side, range(path_utils_1, 15421, 77, 371, 371), "linkOption == LinkOption.NOFOLLOW_LINKS ? parent : readIfSymbolicLink(parent)").
expr(path_utils_1_expr13, infix_expression, path_utils_1_expr12, expression, range(path_utils_1, 15421, 39, 371, 371), "linkOption == LinkOption.NOFOLLOW_LINKS").
expr(path_utils_1_expr14, method_invocation, path_utils_1_expr12, else_expression, range(path_utils_1, 15472, 26, 371, 371), "readIfSymbolicLink(parent)").
expr(path_utils_1_expr15, conditional_expression, path_utils_1_stmt3, expression, range(path_utils_1, 36139, 38, 825, 825), "path == null ? null : path.getParent()").
expr(path_utils_1_expr16, infix_expression, path_utils_1_expr15, expression, range(path_utils_1, 36139, 12, 825, 825), "path == null").
expr(path_utils_1_expr17, method_invocation, path_utils_1_expr15, else_expression, range(path_utils_1, 36161, 16, 825, 825), "path.getParent()").
expr(path_utils_1_expr18, conditional_expression, path_utils_1_stmt4, expression, range(path_utils_1, 53556, 64, 1215, 1215), "Files.isSymbolicLink(path) ? Files.readSymbolicLink(path) : path").
expr(path_utils_1_expr19, method_invocation, path_utils_1_expr18, expression, range(path_utils_1, 53556, 26, 1215, 1215), "Files.isSymbolicLink(path)").
expr(path_utils_1_expr20, method_invocation, path_utils_1_expr18, then_expression, range(path_utils_1, 53585, 28, 1215, 1215), "Files.readSymbolicLink(path)").
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
expr(path_utils_test_1_expr1, method_invocation, path_utils_test_1_code12, initializer, range(path_utils_test_1, 2292, 47, 60, 60), "STRING_FIXTURE.getBytes(StandardCharsets.UTF_8)").
expr(path_utils_test_1_expr2, method_invocation, path_utils_test_1_stmt1, expression, range(path_utils_test_1, 8023, 16, 189, 189), "File.listRoots()").
expr(path_utils_test_1_expr3, method_invocation, path_utils_test_1_code19, initializer, range(path_utils_test_1, 8073, 10, 190, 190), "f.toPath()").
expr(path_utils_test_1_expr4, method_invocation, path_utils_test_1_stmt3, expression, range(path_utils_test_1, 8097, 90, 191, 191), "assertEquals(path.getParent(),PathUtils.createParentDirectories(path,(LinkOption)null))").
expr(path_utils_test_1_expr5, method_invocation, path_utils_test_1_expr4, (arguments, 0), range(path_utils_test_1, 8110, 16, 191, 191), "path.getParent()").
expr(path_utils_test_1_expr6, method_invocation, path_utils_test_1_expr4, (arguments, 1), range(path_utils_test_1, 8128, 58, 191, 191), "PathUtils.createParentDirectories(path,(LinkOption)null)").
expr(path_utils_test_1_expr7, cast_expression, path_utils_test_1_expr6, (arguments, 1), range(path_utils_test_1, 8168, 17, 191, 191), "(LinkOption)null").

%%% Names
%path_utils_1 - org.apache.commons.io.file.PathUtils
name(f_open_options_truncate_6, simple_name, path_utils_1_code10, name, range(path_utils_1, 6328, 21, 146, 146), 'OPEN_OPTIONS_TRUNCATE').
name(t_standard_open_option_1, simple_name, q_create_1, qualifier, range(path_utils_1, 6353, 18, 146, 146), 'StandardOpenOption').
name(q_create_1, qualified_name, path_utils_1_expr1, (expressions, 0), range(path_utils_1, 6353, 25, 146, 146), 'StandardOpenOption.CREATE').
name(t_standard_open_option_1, simple_name, q_truncate_existing_2, qualifier, range(path_utils_1, 6380, 18, 146, 146), 'StandardOpenOption').
name(q_truncate_existing_2, qualified_name, path_utils_1_expr1, (expressions, 1), range(path_utils_1, 6380, 36, 146, 146), 'StandardOpenOption.TRUNCATE_EXISTING').
name(f_open_options_append_7, simple_name, path_utils_1_code18, name, range(path_utils_1, 6458, 19, 148, 148), 'OPEN_OPTIONS_APPEND').
name(q_create_3, qualified_name, path_utils_1_expr2, (expressions, 0), range(path_utils_1, 6481, 25, 148, 148), 'StandardOpenOption.CREATE').
name(t_standard_open_option_1, simple_name, q_create_3, qualifier, range(path_utils_1, 6481, 18, 148, 148), 'StandardOpenOption').
name(q_append_3, qualified_name, path_utils_1_expr2, (expressions, 1), range(path_utils_1, 6508, 25, 148, 148), 'StandardOpenOption.APPEND').
name(t_standard_open_option_1, simple_name, q_append_3, qualifier, range(path_utils_1, 6508, 18, 148, 148), 'StandardOpenOption').
name(f_empty_copy_options_8, simple_name, path_utils_1_code26, name, range(path_utils_1, 6656, 18, 155, 155), 'EMPTY_COPY_OPTIONS').
name(f_empty_delete_option_array_9, simple_name, path_utils_1_code34, name, range(path_utils_1, 6805, 25, 162, 162), 'EMPTY_DELETE_OPTION_ARRAY').
name(f_empty_file_visit_option_array_10, simple_name, path_utils_1_code42, name, range(path_utils_1, 6940, 29, 167, 167), 'EMPTY_FILE_VISIT_OPTION_ARRAY').
name(f_empty_link_option_array_11, simple_name, path_utils_1_code50, name, range(path_utils_1, 7069, 23, 172, 172), 'EMPTY_LINK_OPTION_ARRAY').
name(f_nofollow_link_option_array_12, simple_name, path_utils_1_code58, name, range(path_utils_1, 7326, 26, 181, 181), 'NOFOLLOW_LINK_OPTION_ARRAY').
name(q_nofollow_links_4, qualified_name, path_utils_1_expr7, (expressions, 0), range(path_utils_1, 7356, 25, 181, 181), 'LinkOption.NOFOLLOW_LINKS').
name(t_link_option_2, simple_name, q_nofollow_links_4, qualifier, range(path_utils_1, 7356, 10, 181, 181), 'LinkOption').
name(f_null_link_option_13, simple_name, path_utils_1_code63, name, range(path_utils_1, 7562, 16, 188, 188), 'NULL_LINK_OPTION').
name(f_empty_open_option_array_14, simple_name, path_utils_1_code71, name, range(path_utils_1, 7680, 23, 193, 193), 'EMPTY_OPEN_OPTION_ARRAY').
name(f_empty_path_array_15, simple_name, path_utils_1_code79, name, range(path_utils_1, 7818, 16, 200, 200), 'EMPTY_PATH_ARRAY').
name(v_parent_44, simple_name, path_utils_1_code82, name, range(path_utils_1, 15378, 6, 370, 370), 'parent').
name(m_get_parent_15, simple_name, path_utils_1_expr10, name, range(path_utils_1, 15387, 9, 370, 370), 'getParent').
name(p_path_41, simple_name, path_utils_1_expr10, (arguments, 0), range(path_utils_1, 15397, 4, 370, 370), 'path').
name(v_parent_44, simple_name, path_utils_1_expr11, left_hand_side, range(path_utils_1, 15412, 6, 371, 371), 'parent').
name(p_link_option_42, simple_name, path_utils_1_expr13, left_operand, range(path_utils_1, 15421, 10, 371, 371), 'linkOption').
name(q_nofollow_links_5, qualified_name, path_utils_1_expr13, right_operand, range(path_utils_1, 15435, 25, 371, 371), 'LinkOption.NOFOLLOW_LINKS').
name(t_link_option_2, simple_name, q_nofollow_links_5, qualifier, range(path_utils_1, 15435, 10, 371, 371), 'LinkOption').
name(v_parent_44, simple_name, path_utils_1_expr12, then_expression, range(path_utils_1, 15463, 6, 371, 371), 'parent').
name(m_read_if_symbolic_link_16, simple_name, path_utils_1_expr14, name, range(path_utils_1, 15472, 18, 371, 371), 'readIfSymbolicLink').
name(v_parent_44, simple_name, path_utils_1_expr14, (arguments, 0), range(path_utils_1, 15491, 6, 371, 371), 'parent').
name(p_path_97, simple_name, path_utils_1_expr16, left_operand, range(path_utils_1, 36139, 4, 825, 825), 'path').
name(p_path_97, simple_name, path_utils_1_expr17, expression, range(path_utils_1, 36161, 4, 825, 825), 'path').
name(m_get_parent_40, simple_name, path_utils_1_expr17, name, range(path_utils_1, 36166, 9, 825, 825), 'getParent').
name(t_files_3, simple_name, path_utils_1_expr19, expression, range(path_utils_1, 53556, 5, 1215, 1215), 'Files').
name(m_is_symbolic_link_69, simple_name, path_utils_1_expr19, name, range(path_utils_1, 53562, 14, 1215, 1215), 'isSymbolicLink').
name(p_path_153, simple_name, path_utils_1_expr19, (arguments, 0), range(path_utils_1, 53577, 4, 1215, 1215), 'path').
name(t_files_3, simple_name, path_utils_1_expr20, expression, range(path_utils_1, 53585, 5, 1215, 1215), 'Files').
name(m_read_symbolic_link_70, simple_name, path_utils_1_expr20, name, range(path_utils_1, 53591, 16, 1215, 1215), 'readSymbolicLink').
name(p_path_153, simple_name, path_utils_1_expr20, (arguments, 0), range(path_utils_1, 53608, 4, 1215, 1215), 'path').
name(p_path_153, simple_name, path_utils_1_expr18, else_expression, range(path_utils_1, 53616, 4, 1215, 1215), 'path').
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
name(t_path_utils_test_4, simple_name, path_utils_test_1_code2, name, range(path_utils_test_1, 2129, 13, 56, 56), 'PathUtilsTest').
name(f_byte_array_fixture_221, simple_name, path_utils_test_1_code12, name, range(path_utils_test_1, 2271, 18, 60, 60), 'BYTE_ARRAY_FIXTURE').
name(f_string_fixture_222, simple_name, path_utils_test_1_expr1, expression, range(path_utils_test_1, 2292, 14, 60, 60), 'STRING_FIXTURE').
name(m_get_bytes_97, simple_name, path_utils_test_1_expr1, name, range(path_utils_test_1, 2307, 8, 60, 60), 'getBytes').
name(t_standard_charsets_5, simple_name, q_utf_8_5, qualifier, range(path_utils_test_1, 2316, 16, 60, 60), 'StandardCharsets').
name(q_utf_8_5, qualified_name, path_utils_test_1_expr1, (arguments, 0), range(path_utils_test_1, 2316, 22, 60, 60), 'StandardCharsets.UTF_8').
name(v_f_225, simple_name, path_utils_test_1_code14, name, range(path_utils_test_1, 8019, 1, 189, 189), 'f').
name(t_file_6, simple_name, path_utils_test_1_expr2, expression, range(path_utils_test_1, 8023, 4, 189, 189), 'File').
name(m_list_roots_108, simple_name, path_utils_test_1_expr2, name, range(path_utils_test_1, 8028, 9, 189, 189), 'listRoots').
name(v_path_226, simple_name, path_utils_test_1_code19, name, range(path_utils_test_1, 8066, 4, 190, 190), 'path').
name(v_f_225, simple_name, path_utils_test_1_expr3, expression, range(path_utils_test_1, 8073, 1, 190, 190), 'f').
name(m_to_path_109, simple_name, path_utils_test_1_expr3, name, range(path_utils_test_1, 8075, 6, 190, 190), 'toPath').
name(m_assert_equals_110, simple_name, path_utils_test_1_expr4, name, range(path_utils_test_1, 8097, 12, 191, 191), 'assertEquals').
name(v_path_226, simple_name, path_utils_test_1_expr5, expression, range(path_utils_test_1, 8110, 4, 191, 191), 'path').
name(m_get_parent_40, simple_name, path_utils_test_1_expr5, name, range(path_utils_test_1, 8115, 9, 191, 191), 'getParent').
name(t_path_utils_7, simple_name, path_utils_test_1_expr6, expression, range(path_utils_test_1, 8128, 9, 191, 191), 'PathUtils').
name(m_create_parent_directories_14, simple_name, path_utils_test_1_expr6, name, range(path_utils_test_1, 8138, 23, 191, 191), 'createParentDirectories').
name(v_path_226, simple_name, path_utils_test_1_expr6, (arguments, 0), range(path_utils_test_1, 8162, 4, 191, 191), 'path').

%%% Literals
%path_utils_1 - org.apache.commons.io.file.PathUtils
literal(path_utils_1_literal1, null_literal, path_utils_1_code63, initializer, range(path_utils_1, 7581, 4, 188, 188), null).
literal(path_utils_1_literal3, null_literal, path_utils_1_expr16, right_operand, range(path_utils_1, 36147, 4, 825, 825), null).
literal(path_utils_1_literal2, null_literal, path_utils_1_expr15, then_expression, range(path_utils_1, 36154, 4, 825, 825), null).
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
literal(path_utils_test_1_literal1, null_literal, path_utils_test_1_expr7, expression, range(path_utils_test_1, 8181, 4, 191, 191), null).

%%% Other Code Entities
%path_utils_1 - org.apache.commons.io.file.PathUtils
code(path_utils_1_code1, compilation_unit, range(path_utils_1, 0, 75923, 1, -1)).
code(path_utils_1_code2, type_declaration, path_utils_1_code1, (types, 0), range(path_utils_1, 2855, 73067, 77, 1706)).
code(path_utils_1_code3, field_declaration, path_utils_1_code2, (body_declarations, 1), range(path_utils_1, 6294, 124, 146, 146)).
code(path_utils_1_code4, modifier, path_utils_1_code3, (modifiers, 0), range(path_utils_1, 6294, 7, 146, 146)).
code(path_utils_1_code5, modifier, path_utils_1_code3, (modifiers, 1), range(path_utils_1, 6302, 6, 146, 146)).
code(path_utils_1_code6, modifier, path_utils_1_code3, (modifiers, 2), range(path_utils_1, 6309, 5, 146, 146)).
code(path_utils_1_code7, array_type, path_utils_1_code3, type, range(path_utils_1, 6315, 12, 146, 146)).
code(path_utils_1_code8, simple_type, path_utils_1_code7, element_type, range(path_utils_1, 6315, 10, 146, 146)).
code(path_utils_1_code9, dimension, path_utils_1_code7, (dimensions, 0), range(path_utils_1, 6325, 2, 146, 146)).
code(path_utils_1_code10, variable_declaration_fragment, path_utils_1_code3, (fragments, 0), range(path_utils_1, 6328, 89, 146, 146)).
code(path_utils_1_code12, modifier, path_utils_1_code11, (modifiers, 0), range(path_utils_1, 6424, 7, 148, 148)).
code(path_utils_1_code11, field_declaration, path_utils_1_code2, (body_declarations, 2), range(path_utils_1, 6424, 111, 148, 148)).
code(path_utils_1_code13, modifier, path_utils_1_code11, (modifiers, 1), range(path_utils_1, 6432, 6, 148, 148)).
code(path_utils_1_code14, modifier, path_utils_1_code11, (modifiers, 2), range(path_utils_1, 6439, 5, 148, 148)).
code(path_utils_1_code15, array_type, path_utils_1_code11, type, range(path_utils_1, 6445, 12, 148, 148)).
code(path_utils_1_code16, simple_type, path_utils_1_code15, element_type, range(path_utils_1, 6445, 10, 148, 148)).
code(path_utils_1_code17, dimension, path_utils_1_code15, (dimensions, 0), range(path_utils_1, 6455, 2, 148, 148)).
code(path_utils_1_code18, variable_declaration_fragment, path_utils_1_code11, (fragments, 0), range(path_utils_1, 6458, 76, 148, 148)).
code(path_utils_1_code19, field_declaration, path_utils_1_code2, (body_declarations, 3), range(path_utils_1, 6541, 139, 150, 155)).
code(path_utils_1_code20, modifier, path_utils_1_code19, (modifiers, 0), range(path_utils_1, 6623, 6, 155, 155)).
code(path_utils_1_code21, modifier, path_utils_1_code19, (modifiers, 1), range(path_utils_1, 6630, 6, 155, 155)).
code(path_utils_1_code22, modifier, path_utils_1_code19, (modifiers, 2), range(path_utils_1, 6637, 5, 155, 155)).
code(path_utils_1_code24, simple_type, path_utils_1_code23, element_type, range(path_utils_1, 6643, 10, 155, 155)).
code(path_utils_1_code23, array_type, path_utils_1_code19, type, range(path_utils_1, 6643, 12, 155, 155)).
code(path_utils_1_code25, dimension, path_utils_1_code23, (dimensions, 0), range(path_utils_1, 6653, 2, 155, 155)).
code(path_utils_1_code26, variable_declaration_fragment, path_utils_1_code19, (fragments, 0), range(path_utils_1, 6656, 23, 155, 155)).
code(path_utils_1_code27, field_declaration, path_utils_1_code2, (body_declarations, 4), range(path_utils_1, 6686, 150, 157, 162)).
code(path_utils_1_code28, modifier, path_utils_1_code27, (modifiers, 0), range(path_utils_1, 6770, 6, 162, 162)).
code(path_utils_1_code29, modifier, path_utils_1_code27, (modifiers, 1), range(path_utils_1, 6777, 6, 162, 162)).
code(path_utils_1_code30, modifier, path_utils_1_code27, (modifiers, 2), range(path_utils_1, 6784, 5, 162, 162)).
code(path_utils_1_code32, simple_type, path_utils_1_code31, element_type, range(path_utils_1, 6790, 12, 162, 162)).
code(path_utils_1_code31, array_type, path_utils_1_code27, type, range(path_utils_1, 6790, 14, 162, 162)).
code(path_utils_1_code33, dimension, path_utils_1_code31, (dimensions, 0), range(path_utils_1, 6802, 2, 162, 162)).
code(path_utils_1_code34, variable_declaration_fragment, path_utils_1_code27, (fragments, 0), range(path_utils_1, 6805, 30, 162, 162)).
code(path_utils_1_code35, field_declaration, path_utils_1_code2, (body_declarations, 5), range(path_utils_1, 6842, 133, 164, 167)).
code(path_utils_1_code36, modifier, path_utils_1_code35, (modifiers, 0), range(path_utils_1, 6902, 6, 167, 167)).
code(path_utils_1_code37, modifier, path_utils_1_code35, (modifiers, 1), range(path_utils_1, 6909, 6, 167, 167)).
code(path_utils_1_code38, modifier, path_utils_1_code35, (modifiers, 2), range(path_utils_1, 6916, 5, 167, 167)).
code(path_utils_1_code40, simple_type, path_utils_1_code39, element_type, range(path_utils_1, 6922, 15, 167, 167)).
code(path_utils_1_code39, array_type, path_utils_1_code35, type, range(path_utils_1, 6922, 17, 167, 167)).
code(path_utils_1_code41, dimension, path_utils_1_code39, (dimensions, 0), range(path_utils_1, 6937, 2, 167, 167)).
code(path_utils_1_code42, variable_declaration_fragment, path_utils_1_code35, (fragments, 0), range(path_utils_1, 6940, 34, 167, 167)).
code(path_utils_1_code43, field_declaration, path_utils_1_code2, (body_declarations, 6), range(path_utils_1, 6981, 117, 169, 172)).
code(path_utils_1_code44, modifier, path_utils_1_code43, (modifiers, 0), range(path_utils_1, 7036, 6, 172, 172)).
code(path_utils_1_code45, modifier, path_utils_1_code43, (modifiers, 1), range(path_utils_1, 7043, 6, 172, 172)).
code(path_utils_1_code46, modifier, path_utils_1_code43, (modifiers, 2), range(path_utils_1, 7050, 5, 172, 172)).
code(path_utils_1_code48, simple_type, path_utils_1_code47, element_type, range(path_utils_1, 7056, 10, 172, 172)).
code(path_utils_1_code47, array_type, path_utils_1_code43, type, range(path_utils_1, 7056, 12, 172, 172)).
code(path_utils_1_code49, dimension, path_utils_1_code47, (dimensions, 0), range(path_utils_1, 7066, 2, 172, 172)).
code(path_utils_1_code50, variable_declaration_fragment, path_utils_1_code43, (fragments, 0), range(path_utils_1, 7069, 28, 172, 172)).
code(path_utils_1_code51, field_declaration, path_utils_1_code2, (body_declarations, 7), range(path_utils_1, 7104, 279, 174, 181)).
code(path_utils_1_code52, modifier, path_utils_1_code51, (modifiers, 1), range(path_utils_1, 7293, 6, 181, 181)).
code(path_utils_1_code53, modifier, path_utils_1_code51, (modifiers, 2), range(path_utils_1, 7300, 6, 181, 181)).
code(path_utils_1_code54, modifier, path_utils_1_code51, (modifiers, 3), range(path_utils_1, 7307, 5, 181, 181)).
code(path_utils_1_code55, array_type, path_utils_1_code51, type, range(path_utils_1, 7313, 12, 181, 181)).
code(path_utils_1_code56, simple_type, path_utils_1_code55, element_type, range(path_utils_1, 7313, 10, 181, 181)).
code(path_utils_1_code57, dimension, path_utils_1_code55, (dimensions, 0), range(path_utils_1, 7323, 2, 181, 181)).
code(path_utils_1_code58, variable_declaration_fragment, path_utils_1_code51, (fragments, 0), range(path_utils_1, 7326, 56, 181, 181)).
code(path_utils_1_code59, field_declaration, path_utils_1_code2, (body_declarations, 8), range(path_utils_1, 7389, 197, 183, 188)).
code(path_utils_1_code60, modifier, path_utils_1_code59, (modifiers, 0), range(path_utils_1, 7538, 6, 188, 188)).
code(path_utils_1_code61, modifier, path_utils_1_code59, (modifiers, 1), range(path_utils_1, 7545, 5, 188, 188)).
code(path_utils_1_code62, simple_type, path_utils_1_code59, type, range(path_utils_1, 7551, 10, 188, 188)).
code(path_utils_1_code63, variable_declaration_fragment, path_utils_1_code59, (fragments, 0), range(path_utils_1, 7562, 23, 188, 188)).
code(path_utils_1_code64, field_declaration, path_utils_1_code2, (body_declarations, 9), range(path_utils_1, 7592, 117, 190, 193)).
code(path_utils_1_code65, modifier, path_utils_1_code64, (modifiers, 0), range(path_utils_1, 7647, 6, 193, 193)).
code(path_utils_1_code66, modifier, path_utils_1_code64, (modifiers, 1), range(path_utils_1, 7654, 6, 193, 193)).
code(path_utils_1_code67, modifier, path_utils_1_code64, (modifiers, 2), range(path_utils_1, 7661, 5, 193, 193)).
code(path_utils_1_code68, array_type, path_utils_1_code64, type, range(path_utils_1, 7667, 12, 193, 193)).
code(path_utils_1_code69, simple_type, path_utils_1_code68, element_type, range(path_utils_1, 7667, 10, 193, 193)).
code(path_utils_1_code70, dimension, path_utils_1_code68, (dimensions, 0), range(path_utils_1, 7677, 2, 193, 193)).
code(path_utils_1_code71, variable_declaration_fragment, path_utils_1_code64, (fragments, 0), range(path_utils_1, 7680, 28, 193, 193)).
code(path_utils_1_code72, field_declaration, path_utils_1_code2, (body_declarations, 10), range(path_utils_1, 7715, 125, 195, 200)).
code(path_utils_1_code73, modifier, path_utils_1_code72, (modifiers, 0), range(path_utils_1, 7791, 6, 200, 200)).
code(path_utils_1_code74, modifier, path_utils_1_code72, (modifiers, 1), range(path_utils_1, 7798, 6, 200, 200)).
code(path_utils_1_code75, modifier, path_utils_1_code72, (modifiers, 2), range(path_utils_1, 7805, 5, 200, 200)).
code(path_utils_1_code76, array_type, path_utils_1_code72, type, range(path_utils_1, 7811, 6, 200, 200)).
code(path_utils_1_code77, simple_type, path_utils_1_code76, element_type, range(path_utils_1, 7811, 4, 200, 200)).
code(path_utils_1_code78, dimension, path_utils_1_code76, (dimensions, 0), range(path_utils_1, 7815, 2, 200, 200)).
code(path_utils_1_code79, variable_declaration_fragment, path_utils_1_code72, (fragments, 0), range(path_utils_1, 7818, 21, 200, 200)).
code(path_utils_1_code80, method_declaration, path_utils_1_code2, (body_declarations, 23), range(path_utils_1, 14742, 842, 359, 373)).
code(path_utils_1_code81, simple_type, path_utils_1_stmt1, type, range(path_utils_1, 15373, 4, 370, 370)).
code(path_utils_1_code82, variable_declaration_fragment, path_utils_1_stmt1, (fragments, 0), range(path_utils_1, 15378, 24, 370, 370)).
code(path_utils_1_code83, method_declaration, path_utils_1_code2, (body_declarations, 47), range(path_utils_1, 36075, 109, 824, 826)).
code(path_utils_1_code84, method_declaration, path_utils_1_code2, (body_declarations, 76), range(path_utils_1, 53464, 163, 1214, 1216)).
%path_utils_test_1 - org.apache.commons.io.file.PathUtilsTest
code(path_utils_test_1_code1, compilation_unit, range(path_utils_test_1, 0, 17468, 1, -1)).
code(path_utils_test_1_code2, type_declaration, path_utils_test_1_code1, (types, 0), range(path_utils_test_1, 2080, 15387, 53, 421)).
code(path_utils_test_1_code3, modifier, path_utils_test_1_code2, (modifiers, 0), range(path_utils_test_1, 2116, 6, 56, 56)).
code(path_utils_test_1_code4, simple_type, path_utils_test_1_code2, superclass_type, range(path_utils_test_1, 2151, 19, 56, 56)).
code(path_utils_test_1_code6, modifier, path_utils_test_1_code5, (modifiers, 0), range(path_utils_test_1, 2243, 7, 60, 60)).
code(path_utils_test_1_code5, field_declaration, path_utils_test_1_code2, (body_declarations, 1), range(path_utils_test_1, 2243, 97, 60, 60)).
code(path_utils_test_1_code7, modifier, path_utils_test_1_code5, (modifiers, 1), range(path_utils_test_1, 2251, 6, 60, 60)).
code(path_utils_test_1_code8, modifier, path_utils_test_1_code5, (modifiers, 2), range(path_utils_test_1, 2258, 5, 60, 60)).
code(path_utils_test_1_code9, array_type, path_utils_test_1_code5, type, range(path_utils_test_1, 2264, 6, 60, 60)).
code(path_utils_test_1_code10, primitive_type, path_utils_test_1_code9, element_type, range(path_utils_test_1, 2264, 4, 60, 60)).
code(path_utils_test_1_code11, dimension, path_utils_test_1_code9, (dimensions, 0), range(path_utils_test_1, 2268, 2, 60, 60)).
code(path_utils_test_1_code12, variable_declaration_fragment, path_utils_test_1_code5, (fragments, 0), range(path_utils_test_1, 2271, 68, 60, 60)).
code(path_utils_test_1_code13, method_declaration, path_utils_test_1_code2, (body_declarations, 14), range(path_utils_test_1, 7906, 298, 187, 193)).
code(path_utils_test_1_code14, single_variable_declaration, path_utils_test_1_stmt1, parameter, range(path_utils_test_1, 8008, 12, 189, 189)).
code(path_utils_test_1_code15, modifier, path_utils_test_1_code14, (modifiers, 0), range(path_utils_test_1, 8008, 5, 189, 189)).
code(path_utils_test_1_code16, simple_type, path_utils_test_1_code14, type, range(path_utils_test_1, 8014, 4, 189, 189)).
code(path_utils_test_1_code17, modifier, path_utils_test_1_stmt2, (modifiers, 0), range(path_utils_test_1, 8055, 5, 190, 190)).
code(path_utils_test_1_code18, simple_type, path_utils_test_1_stmt2, type, range(path_utils_test_1, 8061, 4, 190, 190)).
code(path_utils_test_1_code19, variable_declaration_fragment, path_utils_test_1_stmt2, (fragments, 0), range(path_utils_test_1, 8066, 17, 190, 190)).
code(path_utils_test_1_code20, simple_type, path_utils_test_1_expr7, type, range(path_utils_test_1, 8169, 10, 191, 191)).

%%% Name References

name_ref(t_file_6, type, 'File', 'Ljava/io/File;').
name_ref(t_files_3, type, 'Files', 'Ljava/nio/file/Files;').
name_ref(t_link_option_2, type, 'LinkOption', 'Ljava/nio/file/LinkOption;').
name_ref(t_path_utils_7, type, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;').
name_ref(t_path_utils_test_4, type, 'PathUtilsTest', 'Lorg/apache/commons/io/file/PathUtilsTest;').
name_ref(t_standard_charsets_5, type, 'StandardCharsets', 'Ljava/nio/charset/StandardCharsets;').
name_ref(t_standard_open_option_1, type, 'StandardOpenOption', 'Ljava/nio/file/StandardOpenOption;').
name_ref(v_f_225, var, 'f', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesForRootsLinkOptionNull()V|Ljava/io/IOException;#0#f').
name_ref(v_parent_44, var, 'parent', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#parent').
name_ref(v_path_226, var, 'path', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesForRootsLinkOptionNull()V|Ljava/io/IOException;#0#0#path').
name_ref(p_add_permissions_180, param, 'addPermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#addPermissions#0#1').
name_ref(p_append_137, param, 'append', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;#append#0#1').
name_ref(p_append_227, param, 'append', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamNewFile(Z)V|Ljava/io/IOException;#append#0#0').
name_ref(p_append_228, param, 'append', 'Lorg/apache/commons/io/file/PathUtilsTest;.writeToNewOutputStream(Z)Ljava/nio/file/Path;|Ljava/io/IOException;#append#0#0').
name_ref(p_attrs_40, param, 'attrs', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#attrs#0#1').
name_ref(p_attrs_43, param, 'attrs', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#attrs#0#2').
name_ref(p_char_sequence_218, param, 'charSequence', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#charSequence#0#1').
name_ref(p_charset_159, param, 'charset', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_219, param, 'charset', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#charset#0#2').
name_ref(p_collection_160, param, 'collection', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#collection#0#0').
name_ref(p_collector_89, param, 'collector', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#collector#0#2').
name_ref(p_comparator_163, param, 'comparator', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#comparator#0#3').
name_ref(p_copy_options_27, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_30, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_33, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_36, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_create_new_224, param, 'createNew', 'Lorg/apache/commons/io/file/PathUtilsTest;.openArchive(Ljava/nio/file/Path;Z)Ljava/nio/file/FileSystem;|Ljava/io/IOException;#createNew#0#1').
name_ref(p_czdt_106, param, 'czdt', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#czdt#0#1').
name_ref(p_delete_options_143, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z#deleteOptions#0#0').
name_ref(p_delete_options_21, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_47, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_50, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_delete_options_53, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_56, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_delete_options_59, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_62, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_dir_134, param, 'dir', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#dir#0#0').
name_ref(p_dir_1_1, param, 'dir1', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#dir1#0#0').
name_ref(p_dir_2_2, param, 'dir2', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#dir2#0#1').
name_ref(p_directory_103, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_16, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_19, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_191, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectory(Ljava/nio/file/Path;)J|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_192, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_195, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#directory#0#1').
name_ref(p_directory_20, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_37, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_38, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_51, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_52, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_54, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_enable_delete_children_177, param, 'enableDeleteChildren', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#enableDeleteChildren#0#1').
name_ref(p_file_104, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_105, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_108, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_111, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_114, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_117, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_119, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_122, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_125, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_128, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_164, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.requireCanWrite(Ljava/nio/file/Path;Ljava/lang/String;)V#file#0#0').
name_ref(p_file_166, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#file#0#0').
name_ref(p_file_169, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.requireFile(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;#file#0#0').
name_ref(p_file_205, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#file#0#0').
name_ref(p_file_22, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#file#0#0').
name_ref(p_file_57, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_58, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_60, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_param_name_167, param, 'fileParamName', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#fileParamName#0#1').
name_ref(p_file_time_109, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_time_120, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_time_23, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_visit_option_69, param, 'fileVisitOption', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#fileVisitOption#0#4').
name_ref(p_file_visit_options_18, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#fileVisitOptions#0#2').
name_ref(p_file_visit_options_193, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;#fileVisitOptions#0#0').
name_ref(p_file_visit_options_5, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#fileVisitOptions#0#4').
name_ref(p_file_visit_options_76, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#fileVisitOptions#0#4').
name_ref(p_filter_85, param, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;#filter#0#0').
name_ref(p_filter_87, param, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#filter#0#0').
name_ref(p_first_201, param, 'first', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#first#0#1').
name_ref(p_function_216, param, 'function', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#function#0#3').
name_ref(p_instant_112, param, 'instant', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#instant#0#1').
name_ref(p_instant_123, param, 'instant', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#instant#0#1').
name_ref(p_link_option_42, param, 'linkOption', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#linkOption#0#1').
name_ref(p_link_options_139, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_173, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_178, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_182, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_link_options_185, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_188, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_214, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_4, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_link_options_49, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_55, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_61, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_67, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_75, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_link_options_83, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_max_depth_17, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#maxDepth#0#1').
name_ref(p_max_depth_199, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#maxDepth#0#3').
name_ref(p_max_depth_210, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_max_depth_3, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_max_depth_74, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_more_202, param, 'more', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#more#0#2').
name_ref(p_name_165, param, 'name', 'Lorg/apache/commons/io/file/PathUtils;.requireCanWrite(Ljava/nio/file/Path;Ljava/lang/String;)V#name#0#1').
name_ref(p_name_170, param, 'name', 'Lorg/apache/commons/io/file/PathUtils;.requireFile(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;#name#0#1').
name_ref(p_open_options_140, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#openOptions#0#2').
name_ref(p_open_options_220, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_open_options_68, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_open_options_84, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_options_101, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_107, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_110, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_113, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_116, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_121, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_124, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_127, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_131, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_133, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_142, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_146, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#options#0#2').
name_ref(p_options_149, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#options#0#1').
name_ref(p_options_152, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;#options#0#1').
name_ref(p_options_155, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#options#0#1').
name_ref(p_options_157, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;#options#0#1').
name_ref(p_options_168, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#options#0#2').
name_ref(p_options_198, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#options#0#2').
name_ref(p_options_207, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#options#0#2').
name_ref(p_options_212, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#options#0#4').
name_ref(p_options_24, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#options#0#2').
name_ref(p_options_78, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_92, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;#options#0#1').
name_ref(p_options_94, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;#options#0#1').
name_ref(p_options_96, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#options#0#1').
name_ref(p_options_99, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;#options#0#1').
name_ref(p_override_read_only_215, param, 'overrideReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#overrideReadOnly#0#2').
name_ref(p_p_223, param, 'p', 'Lorg/apache/commons/io/file/PathUtilsTest;.openArchive(Ljava/nio/file/Path;Z)Ljava/nio/file/FileSystem;|Ljava/io/IOException;#p#0#0').
name_ref(p_parent_161, param, 'parent', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#parent#0#1').
name_ref(p_parent_176, param, 'parent', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#parent#0#0').
name_ref(p_path_100, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_102, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_132, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_136, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_138, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_141, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_144, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#path#0#0').
name_ref(p_path_147, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_148, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_150, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_151, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;#path#0#0').
name_ref(p_path_153, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_154, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_156, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;#path#0#0').
name_ref(p_path_158, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_171, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_179, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_183, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#path#0#0').
name_ref(p_path_186, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_189, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.sizeOf(Ljava/nio/file/Path;)J|Ljava/io/IOException;#path#0#0').
name_ref(p_path_190, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_1_63, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_65, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_70, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_72, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_79, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_81, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_213, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_217, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_2_64, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_66, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_71, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_73, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_80, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_82, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_39, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_41, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_45, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_46, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_48, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_77, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_91, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;#path#0#0').
name_ref(p_path_93, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;#path#0#0').
name_ref(p_path_95, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_97, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;#path#0#0').
name_ref(p_path_98, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;#path#0#0').
name_ref(p_path_filter_135, param, 'pathFilter', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#pathFilter#0#1').
name_ref(p_path_filter_209, param, 'pathFilter', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#pathFilter#0#1').
name_ref(p_paths_86, param, 'paths', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;#paths#0#1').
name_ref(p_read_attributes_211, param, 'readAttributes', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#readAttributes#0#3').
name_ref(p_read_only_172, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_read_only_184, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_read_only_187, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_reference_118, param, 'reference', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#reference#0#1').
name_ref(p_reference_129, param, 'reference', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#reference#0#1').
name_ref(p_sort_162, param, 'sort', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#sort#0#2').
name_ref(p_source_directory_25, param, 'sourceDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#sourceDirectory#0#0').
name_ref(p_source_file_174, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_28, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_31, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_34, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_path_90, param, 'sourcePath', 'Lorg/apache/commons/io/file/PathUtils;.getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List<Ljava/nio/file/attribute/AclEntry;>;|Ljava/io/IOException;#sourcePath#0#0').
name_ref(p_start_197, param, 'start', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#start#0#1').
name_ref(p_start_208, param, 'start', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#start#0#0').
name_ref(p_stream_88, param, 'stream', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#stream#0#1').
name_ref(p_target_directory_26, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_directory_32, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_directory_35, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_file_175, param, 'targetFile', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;#targetFile#0#1').
name_ref(p_target_file_29, param, 'targetFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetFile#0#1').
name_ref(p_test_130, param, 'test', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#test#0#0').
name_ref(p_time_millis_115, param, 'timeMillis', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#timeMillis#0#1').
name_ref(p_time_millis_126, param, 'timeMillis', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#timeMillis#0#1').
name_ref(p_timeout_206, param, 'timeout', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#timeout#0#1').
name_ref(p_type_145, param, 'type', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#type#0#1').
name_ref(p_update_permissions_181, param, 'updatePermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#updatePermissions#0#2').
name_ref(p_uri_204, param, 'uri', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#uri#0#1').
name_ref(p_visitor_194, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_196, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_200, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_203, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(f_byte_array_fixture_221, field, 'BYTE_ARRAY_FIXTURE', 'Lorg/apache/commons/io/file/PathUtilsTest;.BYTE_ARRAY_FIXTURE)[B').
name_ref(f_empty_copy_options_8, field, 'EMPTY_COPY_OPTIONS', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_COPY_OPTIONS)[Ljava/nio/file/CopyOption;').
name_ref(f_empty_delete_option_array_9, field, 'EMPTY_DELETE_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_DELETE_OPTION_ARRAY)[Lorg/apache/commons/io/file/DeleteOption;').
name_ref(f_empty_file_visit_option_array_10, field, 'EMPTY_FILE_VISIT_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_FILE_VISIT_OPTION_ARRAY)[Ljava/nio/file/FileVisitOption;').
name_ref(f_empty_link_option_array_11, field, 'EMPTY_LINK_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_LINK_OPTION_ARRAY)[Ljava/nio/file/LinkOption;').
name_ref(f_empty_open_option_array_14, field, 'EMPTY_OPEN_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_OPEN_OPTION_ARRAY)[Ljava/nio/file/OpenOption;').
name_ref(f_empty_path_array_15, field, 'EMPTY_PATH_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_PATH_ARRAY)[Ljava/nio/file/Path;').
name_ref(f_nofollow_link_option_array_12, field, 'NOFOLLOW_LINK_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.NOFOLLOW_LINK_OPTION_ARRAY)[Ljava/nio/file/LinkOption;').
name_ref(f_null_link_option_13, field, 'NULL_LINK_OPTION', 'Lorg/apache/commons/io/file/PathUtils;.NULL_LINK_OPTION)Ljava/nio/file/LinkOption;').
name_ref(f_open_options_append_7, field, 'OPEN_OPTIONS_APPEND', 'Lorg/apache/commons/io/file/PathUtils;.OPEN_OPTIONS_APPEND)[Ljava/nio/file/OpenOption;').
name_ref(f_open_options_truncate_6, field, 'OPEN_OPTIONS_TRUNCATE', 'Lorg/apache/commons/io/file/PathUtils;.OPEN_OPTIONS_TRUNCATE)[Ljava/nio/file/OpenOption;').
name_ref(f_string_fixture_222, field, 'STRING_FIXTURE', 'Lorg/apache/commons/io/file/PathUtilsTest;.STRING_FIXTURE)Ljava/lang/String;').
name_ref(m_accumulate_3, method, 'accumulate', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;').
name_ref(m_assert_equals_110, method, 'assertEquals', 'Lorg/junit/jupiter/api/Assertions;.assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V').
name_ref(m_clean_directory_4, method, 'cleanDirectory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_clean_directory_5, method, 'cleanDirectory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_compare_last_modified_time_to_6, method, 'compareLastModifiedTimeTo', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;').
name_ref(m_copy_directory_7, method, 'copyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_copy_file_8, method, 'copyFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_10, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_9, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_count_directory_11, method, 'countDirectory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_count_directory_as_big_integer_12, method, 'countDirectoryAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_create_parent_directories_13, method, 'createParentDirectories', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_create_parent_directories_14, method, 'createParentDirectories', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_create_temp_symlinked_relative_dir_98, method, 'createTempSymlinkedRelativeDir', 'Lorg/apache/commons/io/file/PathUtilsTest;.createTempSymlinkedRelativeDir()Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_current_17, method, 'current', 'Lorg/apache/commons/io/file/PathUtils;.current()Ljava/nio/file/Path;').
name_ref(m_delete_18, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_19, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_20, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_21, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_22, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_23, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_24, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_25, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_26, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;').
name_ref(m_directory_and_file_content_equals_27, method, 'directoryAndFileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_directory_and_file_content_equals_28, method, 'directoryAndFileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;').
name_ref(m_directory_content_equals_29, method, 'directoryContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_directory_content_equals_30, method, 'directoryContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;').
name_ref(m_exists_31, method, 'exists', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_file_content_equals_32, method, 'fileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_file_content_equals_33, method, 'fileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;').
name_ref(m_filter_34, method, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;').
name_ref(m_filter_paths_35, method, 'filterPaths', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;').
name_ref(m_get_acl_entry_list_36, method, 'getAclEntryList', 'Lorg/apache/commons/io/file/PathUtils;.getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List<Ljava/nio/file/attribute/AclEntry;>;|Ljava/io/IOException;').
name_ref(m_get_acl_file_attribute_view_37, method, 'getAclFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;').
name_ref(m_get_bytes_97, method, 'getBytes', 'Ljava/lang/String;.getBytes(Ljava/nio/charset/Charset;)[B').
name_ref(m_get_dos_file_attribute_view_38, method, 'getDosFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;').
name_ref(m_get_last_modified_time_39, method, 'getLastModifiedTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_parent_15, method, 'getParent', 'Lorg/apache/commons/io/file/PathUtils;.getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;').
name_ref(m_get_parent_40, method, 'getParent', 'Ljava/nio/file/Path;.getParent()Ljava/nio/file/Path;').
name_ref(m_get_posix_file_attribute_view_41, method, 'getPosixFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;').
name_ref(m_get_temp_directory_42, method, 'getTempDirectory', 'Lorg/apache/commons/io/file/PathUtils;.getTempDirectory()Ljava/nio/file/Path;').
name_ref(m_is_directory_43, method, 'isDirectory', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_empty_44, method, 'isEmpty', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_directory_45, method, 'isEmptyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_file_46, method, 'isEmptyFile', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_47, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_48, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_49, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_50, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_51, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_older_52, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_53, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_54, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_55, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_posix_56, method, 'isPosix', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_regular_file_57, method, 'isRegularFile', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_symbolic_link_69, method, 'isSymbolicLink', 'Ljava/nio/file/Files;.isSymbolicLink(Ljava/nio/file/Path;)Z').
name_ref(m_list_roots_108, method, 'listRoots', 'Ljava/io/File;.listRoots()[Ljava/io/File;').
name_ref(m_new_directory_stream_58, method, 'newDirectoryStream', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;').
name_ref(m_new_output_stream_59, method, 'newOutputStream', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_new_output_stream_60, method, 'newOutputStream', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_no_follow_link_option_array_61, method, 'noFollowLinkOptionArray', 'Lorg/apache/commons/io/file/PathUtils;.noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;').
name_ref(m_not_exists_62, method, 'notExists', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_open_archive_99, method, 'openArchive', 'Lorg/apache/commons/io/file/PathUtilsTest;.openArchive(Ljava/nio/file/Path;Z)Ljava/nio/file/FileSystem;|Ljava/io/IOException;').
name_ref(m_override_read_only_63, method, 'overrideReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z').
name_ref(m_path_utils_2, method, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;.()V').
name_ref(m_read_attributes_64, method, 'readAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;').
name_ref(m_read_basic_file_attributes_65, method, 'readBasicFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;|Ljava/io/IOException;').
name_ref(m_read_basic_file_attributes_66, method, 'readBasicFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_basic_file_attributes_unchecked_67, method, 'readBasicFileAttributesUnchecked', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_dos_file_attributes_68, method, 'readDosFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;').
name_ref(m_read_if_symbolic_link_16, method, 'readIfSymbolicLink', 'Lorg/apache/commons/io/file/PathUtils;.readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_read_os_file_attributes_71, method, 'readOsFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_posix_file_attributes_72, method, 'readPosixFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;').
name_ref(m_read_string_73, method, 'readString', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_read_symbolic_link_70, method, 'readSymbolicLink', 'Ljava/nio/file/Files;.readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_relative_sorted_paths_1, method, 'RelativeSortedPaths', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;').
name_ref(m_relativize_74, method, 'relativize', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;').
name_ref(m_require_can_write_75, method, 'requireCanWrite', 'Lorg/apache/commons/io/file/PathUtils;.requireCanWrite(Ljava/nio/file/Path;Ljava/lang/String;)V').
name_ref(m_require_exists_76, method, 'requireExists', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;').
name_ref(m_require_file_77, method, 'requireFile', 'Lorg/apache/commons/io/file/PathUtils;.requireFile(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;').
name_ref(m_set_dos_read_only_78, method, 'setDosReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_last_modified_time_79, method, 'setLastModifiedTime', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;').
name_ref(m_set_posix_delete_permissions_80, method, 'setPosixDeletePermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_posix_permissions_81, method, 'setPosixPermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_posix_read_only_file_82, method, 'setPosixReadOnlyFile', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;').
name_ref(m_set_read_only_83, method, 'setReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_size_of_84, method, 'sizeOf', 'Lorg/apache/commons/io/file/PathUtils;.sizeOf(Ljava/nio/file/Path;)J|Ljava/io/IOException;').
name_ref(m_size_of_as_big_integer_85, method, 'sizeOfAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;').
name_ref(m_size_of_directory_86, method, 'sizeOfDirectory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectory(Ljava/nio/file/Path;)J|Ljava/io/IOException;').
name_ref(m_size_of_directory_as_big_integer_87, method, 'sizeOfDirectoryAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;').
name_ref(m_test_copy_directory_for_different_filesystems_with_absolute_path_100, method, 'testCopyDirectoryForDifferentFilesystemsWithAbsolutePath', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCopyDirectoryForDifferentFilesystemsWithAbsolutePath()V|Ljava/io/IOException;').
name_ref(m_test_copy_directory_for_different_filesystems_with_absolute_path_reverse_101, method, 'testCopyDirectoryForDifferentFilesystemsWithAbsolutePathReverse', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCopyDirectoryForDifferentFilesystemsWithAbsolutePathReverse()V|Ljava/io/IOException;').
name_ref(m_test_copy_directory_for_different_filesystems_with_relative_path_102, method, 'testCopyDirectoryForDifferentFilesystemsWithRelativePath', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCopyDirectoryForDifferentFilesystemsWithRelativePath()V|Ljava/io/IOException;').
name_ref(m_test_copy_directory_for_different_filesystems_with_relative_path_reverse_103, method, 'testCopyDirectoryForDifferentFilesystemsWithRelativePathReverse', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCopyDirectoryForDifferentFilesystemsWithRelativePathReverse()V|Ljava/io/IOException;').
name_ref(m_test_copy_file_104, method, 'testCopyFile', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCopyFile()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_already_exists_105, method, 'testCreateDirectoriesAlreadyExists', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesAlreadyExists()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_for_roots_106, method, 'testCreateDirectoriesForRoots', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesForRoots()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_for_roots_link_option_null_107, method, 'testCreateDirectoriesForRootsLinkOptionNull', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesForRootsLinkOptionNull()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_new_111, method, 'testCreateDirectoriesNew', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesNew()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_symlink_112, method, 'testCreateDirectoriesSymlink', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesSymlink()V|Ljava/io/IOException;').
name_ref(m_test_create_directories_symlink_clashing_113, method, 'testCreateDirectoriesSymlinkClashing', 'Lorg/apache/commons/io/file/PathUtilsTest;.testCreateDirectoriesSymlinkClashing()V|Ljava/io/IOException;').
name_ref(m_test_get_temp_directory_114, method, 'testGetTempDirectory', 'Lorg/apache/commons/io/file/PathUtilsTest;.testGetTempDirectory()V').
name_ref(m_test_is_directory_115, method, 'testIsDirectory', 'Lorg/apache/commons/io/file/PathUtilsTest;.testIsDirectory()V|Ljava/io/IOException;').
name_ref(m_test_is_posix_116, method, 'testIsPosix', 'Lorg/apache/commons/io/file/PathUtilsTest;.testIsPosix()V|Ljava/io/IOException;').
name_ref(m_test_is_regular_file_117, method, 'testIsRegularFile', 'Lorg/apache/commons/io/file/PathUtilsTest;.testIsRegularFile()V|Ljava/io/IOException;').
name_ref(m_test_new_directory_stream_118, method, 'testNewDirectoryStream', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewDirectoryStream()V|Ljava/lang/Exception;').
name_ref(m_test_new_output_stream_existing_file_append_false_119, method, 'testNewOutputStreamExistingFileAppendFalse', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamExistingFileAppendFalse()V|Ljava/io/IOException;').
name_ref(m_test_new_output_stream_existing_file_append_true_120, method, 'testNewOutputStreamExistingFileAppendTrue', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamExistingFileAppendTrue()V|Ljava/io/IOException;').
name_ref(m_test_new_output_stream_new_file_121, method, 'testNewOutputStreamNewFile', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamNewFile(Z)V|Ljava/io/IOException;').
name_ref(m_test_new_output_stream_new_file_append_false_122, method, 'testNewOutputStreamNewFileAppendFalse', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamNewFileAppendFalse()V|Ljava/io/IOException;').
name_ref(m_test_new_output_stream_new_file_append_true_123, method, 'testNewOutputStreamNewFileAppendTrue', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamNewFileAppendTrue()V|Ljava/io/IOException;').
name_ref(m_test_new_output_stream_new_file_inside_existing_symlinked_dir_124, method, 'testNewOutputStreamNewFileInsideExistingSymlinkedDir', 'Lorg/apache/commons/io/file/PathUtilsTest;.testNewOutputStreamNewFileInsideExistingSymlinkedDir()V|Ljava/io/IOException;').
name_ref(m_test_read_attributes_posix_125, method, 'testReadAttributesPosix', 'Lorg/apache/commons/io/file/PathUtilsTest;.testReadAttributesPosix()V|Ljava/io/IOException;').
name_ref(m_test_read_string_empty_file_126, method, 'testReadStringEmptyFile', 'Lorg/apache/commons/io/file/PathUtilsTest;.testReadStringEmptyFile()V|Ljava/io/IOException;').
name_ref(m_test_read_string_simple_utf8_127, method, 'testReadStringSimpleUtf8', 'Lorg/apache/commons/io/file/PathUtilsTest;.testReadStringSimpleUtf8()V|Ljava/io/IOException;').
name_ref(m_test_set_read_only_file_128, method, 'testSetReadOnlyFile', 'Lorg/apache/commons/io/file/PathUtilsTest;.testSetReadOnlyFile()V|Ljava/io/IOException;').
name_ref(m_test_write_string_to_file1_129, method, 'testWriteStringToFile1', 'Lorg/apache/commons/io/file/PathUtilsTest;.testWriteStringToFile1()V|Ljava/lang/Exception;').
name_ref(m_to_file_visit_option_set_88, method, 'toFileVisitOptionSet', 'Lorg/apache/commons/io/file/PathUtils;.toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;').
name_ref(m_to_path_109, method, 'toPath', 'Ljava/io/File;.toPath()Ljava/nio/file/Path;').
name_ref(m_visit_file_tree_89, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_90, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_91, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_92, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;').
name_ref(m_wait_for_93, method, 'waitFor', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_walk_94, method, 'walk', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;').
name_ref(m_with_posix_file_attributes_95, method, 'withPosixFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;').
name_ref(m_write_string_96, method, 'writeString', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_write_to_new_output_stream_130, method, 'writeToNewOutputStream', 'Lorg/apache/commons/io/file/PathUtilsTest;.writeToNewOutputStream(Z)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(q_append_3, q_name, 'StandardOpenOption.APPEND', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.APPEND)Ljava/nio/file/StandardOpenOption;').
name_ref(q_create_1, q_name, 'StandardOpenOption.CREATE', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.CREATE)Ljava/nio/file/StandardOpenOption;').
name_ref(q_nofollow_links_4, q_name, 'LinkOption.NOFOLLOW_LINKS', 'Ljava/nio/file/LinkOption;:Ljava/nio/file/LinkOption;.NOFOLLOW_LINKS)Ljava/nio/file/LinkOption;').
name_ref(q_truncate_existing_2, q_name, 'StandardOpenOption.TRUNCATE_EXISTING', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.TRUNCATE_EXISTING)Ljava/nio/file/StandardOpenOption;').
name_ref(q_utf_8_5, q_name, 'StandardCharsets.UTF_8', 'Ljava/nio/charset/StandardCharsets;:Ljava/nio/charset/StandardCharsets;.UTF_8)Ljava/nio/charset/Charset;').

%%% End of Code Facts

