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
trace(trace_2, trace_1, 'readAttributes', line(java_nio_file_files, 1851), failure_1, non_target).
trace(trace_3, trace_2, 'isSymbolicLink', line(java_nio_file_files, 2277), failure_1, non_target).
trace(trace_4, trace_3, m_read_if_symbolic_link_16, line(path_utils_1, 1215), failure_1, target).
trace(trace_5, trace_4, m_create_parent_directories_14, line(path_utils_1, 371), failure_1, target).
trace(trace_6, trace_5, m_test_create_directories_for_roots_link_option_null_107, line(path_utils_test_1, 191), failure_1, target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_8, trace_7, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_9, trace_8, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(path_utils_1_expr10, null, line(path_utils_1, 370)).
val(v_parent_44, null, line(path_utils_1, 371)).
val(p_link_option_42, null, line(path_utils_1, 371)).
val(path_utils_1_expr14, null, line(path_utils_1, 371)).
val(p_path_153, null, line(path_utils_1, 1215)).
val(path_utils_test_1_expr5, null, line(path_utils_test_1, 191)).



%%% End of Facts