%%% Logic-FL Facts
:- style_check(-discontiguous).

%path_utils_1 - org.apache.commons.io.file.PathUtils
param(p_directory_358, 1, m_clean_directory_349).
throw(m_clean_directory_349, ioexception).
param(p_source_directory_359, 1, m_copy_directory_350).
param(p_target_directory_360, 2, m_copy_directory_350).
param(p_copy_options_361, 3, m_copy_directory_350).
throw(m_copy_directory_350, ioexception).
param(p_source_file_362, 1, m_copy_file_to_directory_351).
param(p_target_directory_363, 2, m_copy_file_to_directory_351).
param(p_copy_options_364, 3, m_copy_file_to_directory_351).
throw(m_copy_file_to_directory_351, ioexception).
param(p_directory_365, 1, m_count_directory_352).
throw(m_count_directory_352, ioexception).
param(p_path_366, 1, m_delete_63).
throw(m_delete_63, ioexception).
return(path_utils_1_expr1, m_delete_63, line(path_utils_1, 110)).
cond_expr(path_utils_1_expr2, path_utils_1_expr3, path_utils_1_expr4, line(path_utils_1, 110)).
method_invoc(path_utils_1_expr2, m_is_directory_353, line(path_utils_1, 110)).
argument(p_path_366, 1, path_utils_1_expr2).
ref(t_files_3, path_utils_1_expr2, line(path_utils_1, 110)).
method_invoc(path_utils_1_expr3, m_delete_directory_354, line(path_utils_1, 110)).
throw(path_utils_1_expr3, ioexception, line(path_utils_1, 110)).
argument(p_path_366, 1, path_utils_1_expr3).
method_invoc(path_utils_1_expr4, m_delete_file_355, line(path_utils_1, 110)).
throw(path_utils_1_expr4, ioexception, line(path_utils_1, 110)).
argument(p_path_366, 1, path_utils_1_expr4).
param(p_directory_367, 1, m_delete_directory_354).
throw(m_delete_directory_354, ioexception).
param(p_file_368, 1, m_delete_file_355).
throw(m_delete_file_355, ioexception).
method_invoc(path_utils_1_expr5, m_is_directory_353, line(path_utils_1, 133)).
argument(p_file_368, 1, path_utils_1_expr5).
ref(t_files_3, path_utils_1_expr5, line(path_utils_1, 133)).
assign(v_path_counts_369, path_utils_1_expr6, line(path_utils_1, 136)).
method_invoc(path_utils_1_expr6, m_long_path_counters_348, line(path_utils_1, 136)).
ref(t_counters_7, path_utils_1_expr6, line(path_utils_1, 136)).
assign(v_size_370, path_utils_1_expr7, line(path_utils_1, 137)).
cond_expr(path_utils_1_expr8, path_utils_1_expr9, path_utils_1_literal1, line(path_utils_1, 137)).
method_invoc(path_utils_1_expr8, m_exists_356, line(path_utils_1, 137)).
argument(p_file_368, 1, path_utils_1_expr8).
ref(t_files_3, path_utils_1_expr8, line(path_utils_1, 137)).
method_invoc(path_utils_1_expr9, m_size_357, line(path_utils_1, 137)).
throw(path_utils_1_expr9, ioexception, line(path_utils_1, 137)).
argument(p_file_368, 1, path_utils_1_expr9).
ref(t_files_3, path_utils_1_expr9, line(path_utils_1, 137)).
method_invoc(path_utils_1_expr10, m_delete_if_exists_358, line(path_utils_1, 138)).
throw(path_utils_1_expr10, ioexception, line(path_utils_1, 138)).
argument(p_file_368, 1, path_utils_1_expr10).
ref(t_files_3, path_utils_1_expr10, line(path_utils_1, 138)).
method_invoc(path_utils_1_expr11, m_increment_335, line(path_utils_1, 139)).
ref(path_utils_1_expr12, path_utils_1_expr11, line(path_utils_1, 139)).
method_invoc(path_utils_1_expr12, m_get_file_counter_66, line(path_utils_1, 139)).
ref(v_path_counts_369, path_utils_1_expr12, line(path_utils_1, 139)).
method_invoc(path_utils_1_expr13, m_add_332, line(path_utils_1, 140)).
argument(v_size_370, 1, path_utils_1_expr13).
ref(path_utils_1_expr14, path_utils_1_expr13, line(path_utils_1, 140)).
method_invoc(path_utils_1_expr14, m_get_byte_counter_344, line(path_utils_1, 140)).
ref(v_path_counts_369, path_utils_1_expr14, line(path_utils_1, 140)).
return(v_path_counts_369, m_delete_file_355, line(path_utils_1, 142)).
param(p_path_371, 1, m_is_empty_359).
throw(m_is_empty_359, ioexception).
param(p_directory_372, 1, m_is_empty_directory_360).
throw(m_is_empty_directory_360, ioexception).
param(p_file_373, 1, m_is_empty_file_361).
throw(m_is_empty_file_361, ioexception).
param(p_visitor_374, 1, m_visit_file_tree_362).
param(p_directory_375, 2, m_visit_file_tree_362).
throw(m_visit_file_tree_362, ioexception).
param(p_visitor_376, 1, m_visit_file_tree_363).
param(p_first_377, 2, m_visit_file_tree_363).
param(p_more_378, 3, m_visit_file_tree_363).
throw(m_visit_file_tree_363, ioexception).
param(p_visitor_379, 1, m_visit_file_tree_364).
param(p_uri_380, 2, m_visit_file_tree_364).
throw(m_visit_file_tree_364, ioexception).

%file_utils_1 - org.apache.commons.io.FileUtils
assign(f_one_kb_bi_48, file_utils_1_expr1, line(file_utils_1, 96)).
method_invoc(file_utils_1_expr1, m_value_of_21, line(file_utils_1, 96)).
argument(f_one_kb_49, 1, file_utils_1_expr1).
ref(t_big_integer_1, file_utils_1_expr1, line(file_utils_1, 96)).
assign(f_one_mb_bi_50, file_utils_1_expr2, line(file_utils_1, 108)).
method_invoc(file_utils_1_expr2, m_multiply_22, line(file_utils_1, 108)).
argument(f_one_kb_bi_48, 1, file_utils_1_expr2).
ref(f_one_kb_bi_48, file_utils_1_expr2, line(file_utils_1, 108)).
assign(f_one_gb_bi_51, file_utils_1_expr3, line(file_utils_1, 120)).
method_invoc(file_utils_1_expr3, m_multiply_22, line(file_utils_1, 120)).
argument(f_one_mb_bi_50, 1, file_utils_1_expr3).
ref(f_one_kb_bi_48, file_utils_1_expr3, line(file_utils_1, 120)).
assign(f_one_tb_bi_52, file_utils_1_expr4, line(file_utils_1, 132)).
method_invoc(file_utils_1_expr4, m_multiply_22, line(file_utils_1, 132)).
argument(f_one_gb_bi_51, 1, file_utils_1_expr4).
ref(f_one_kb_bi_48, file_utils_1_expr4, line(file_utils_1, 132)).
assign(f_one_pb_bi_53, file_utils_1_expr5, line(file_utils_1, 144)).
method_invoc(file_utils_1_expr5, m_multiply_22, line(file_utils_1, 144)).
argument(f_one_tb_bi_52, 1, file_utils_1_expr5).
ref(f_one_kb_bi_48, file_utils_1_expr5, line(file_utils_1, 144)).
assign(f_one_eb_bi_54, file_utils_1_expr6, line(file_utils_1, 156)).
method_invoc(file_utils_1_expr6, m_multiply_22, line(file_utils_1, 156)).
argument(f_one_pb_bi_53, 1, file_utils_1_expr6).
ref(f_one_kb_bi_48, file_utils_1_expr6, line(file_utils_1, 156)).
assign(f_one_zb_55, file_utils_1_expr7, line(file_utils_1, 161)).
method_invoc(file_utils_1_expr7, m_multiply_22, line(file_utils_1, 161)).
argument(file_utils_1_expr8, 1, file_utils_1_expr7).
ref(file_utils_1_expr9, file_utils_1_expr7, line(file_utils_1, 161)).
method_invoc(file_utils_1_expr9, m_value_of_21, line(file_utils_1, 161)).
argument(f_one_kb_49, 1, file_utils_1_expr9).
ref(t_big_integer_1, file_utils_1_expr9, line(file_utils_1, 161)).
method_invoc(file_utils_1_expr8, m_value_of_21, line(file_utils_1, 161)).
argument(f_one_eb_56, 1, file_utils_1_expr8).
ref(t_big_integer_1, file_utils_1_expr8, line(file_utils_1, 161)).
assign(f_one_yb_57, file_utils_1_expr10, line(file_utils_1, 166)).
method_invoc(file_utils_1_expr10, m_multiply_22, line(file_utils_1, 166)).
argument(f_one_zb_55, 1, file_utils_1_expr10).
ref(f_one_kb_bi_48, file_utils_1_expr10, line(file_utils_1, 166)).
assign(f_empty_file_array_58, file_utils_1_expr11, line(file_utils_1, 171)).
param(p_size_59, 1, m_byte_count_to_display_size_23).
param(p_size_60, 1, m_byte_count_to_display_size_24).
param(p_directory_61, 1, m_check_directory_25).
param(p_src_file_62, 1, m_check_equal_sizes_26).
param(p_dest_file_63, 2, m_check_equal_sizes_26).
param(p_src_len_64, 3, m_check_equal_sizes_26).
param(p_dst_len_65, 4, m_check_equal_sizes_26).
throw(m_check_equal_sizes_26, ioexception).
param(p_src_66, 1, m_check_file_requirements_27).
param(p_dest_67, 2, m_check_file_requirements_27).
throw(m_check_file_requirements_27, file_not_found_exception).
param(p_file_68, 1, m_checksum_28).
param(p_checksum_69, 2, m_checksum_28).
throw(m_checksum_28, ioexception).
param(p_file_70, 1, m_checksum_crc32_29).
throw(m_checksum_crc32_29, ioexception).
param(p_directory_71, 1, m_clean_directory_30).
throw(m_clean_directory_30, ioexception).
assign(v_files_72, file_utils_1_expr12, line(file_utils_1, 332)).
method_invoc(file_utils_1_expr12, m_verified_list_files_31, line(file_utils_1, 332)).
throw(file_utils_1_expr12, ioexception, line(file_utils_1, 332)).
argument(p_directory_71, 1, file_utils_1_expr12).
assign(v_exception_73, file_utils_1_literal2, line(file_utils_1, 334)).
ref(v_files_72, file_utils_1_stmt3, line(file_utils_1, 335)).
method_invoc(file_utils_1_expr13, m_force_delete_32, line(file_utils_1, 337)).
throw(file_utils_1_expr13, ioexception, line(file_utils_1, 337)).
argument(v_file_74, 1, file_utils_1_expr13).
param(p_directory_75, 1, m_clean_directory_on_exit_33).
throw(m_clean_directory_on_exit_33, ioexception).
param(p_file_1_76, 1, m_content_equals_34).
param(p_file_2_77, 2, m_content_equals_34).
throw(m_content_equals_34, ioexception).
param(p_file_1_78, 1, m_content_equals_ignore_eol_35).
param(p_file_2_79, 2, m_content_equals_ignore_eol_35).
param(p_charset_name_80, 3, m_content_equals_ignore_eol_35).
throw(m_content_equals_ignore_eol_35, ioexception).
assign(v_file_1exists_81, file_utils_1_expr15, line(file_utils_1, 448)).
method_invoc(file_utils_1_expr15, m_exists_36, line(file_utils_1, 448)).
ref(p_file_1_78, file_utils_1_expr15, line(file_utils_1, 448)).
param(p_files_82, 1, m_convert_file_collection_to_file_array_37).
param(p_src_dir_83, 1, m_copy_directory_38).
param(p_dest_dir_84, 2, m_copy_directory_38).
throw(m_copy_directory_38, ioexception).
param(p_src_dir_85, 1, m_copy_directory_39).
param(p_dest_dir_86, 2, m_copy_directory_39).
param(p_preserve_file_date_87, 3, m_copy_directory_39).
throw(m_copy_directory_39, ioexception).
param(p_src_dir_88, 1, m_copy_directory_40).
param(p_dest_dir_89, 2, m_copy_directory_40).
param(p_filter_90, 3, m_copy_directory_40).
throw(m_copy_directory_40, ioexception).
param(p_src_dir_91, 1, m_copy_directory_41).
param(p_dest_dir_92, 2, m_copy_directory_41).
param(p_filter_93, 3, m_copy_directory_41).
param(p_preserve_file_date_94, 4, m_copy_directory_41).
throw(m_copy_directory_41, ioexception).
param(p_src_dir_95, 1, m_copy_directory_to_directory_42).
param(p_dest_dir_96, 2, m_copy_directory_to_directory_42).
throw(m_copy_directory_to_directory_42, ioexception).
param(p_src_file_97, 1, m_copy_file_43).
param(p_dest_file_98, 2, m_copy_file_43).
throw(m_copy_file_43, ioexception).
param(p_src_file_99, 1, m_copy_file_44).
param(p_dest_file_100, 2, m_copy_file_44).
param(p_preserve_file_date_101, 3, m_copy_file_44).
throw(m_copy_file_44, ioexception).
param(p_input_102, 1, m_copy_file_45).
param(p_output_103, 2, m_copy_file_45).
throw(m_copy_file_45, ioexception).
param(p_src_file_104, 1, m_copy_file_to_directory_46).
param(p_dest_dir_105, 2, m_copy_file_to_directory_46).
throw(m_copy_file_to_directory_46, ioexception).
param(p_src_file_106, 1, m_copy_file_to_directory_47).
param(p_dest_dir_107, 2, m_copy_file_to_directory_47).
param(p_preserve_file_date_108, 3, m_copy_file_to_directory_47).
throw(m_copy_file_to_directory_47, ioexception).
param(p_source_109, 1, m_copy_input_stream_to_file_48).
param(p_destination_110, 2, m_copy_input_stream_to_file_48).
throw(m_copy_input_stream_to_file_48, ioexception).
param(p_src_111, 1, m_copy_to_directory_49).
param(p_dest_dir_112, 2, m_copy_to_directory_49).
throw(m_copy_to_directory_49, ioexception).
param(p_srcs_113, 1, m_copy_to_directory_50).
param(p_dest_dir_114, 2, m_copy_to_directory_50).
throw(m_copy_to_directory_50, ioexception).
param(p_source_115, 1, m_copy_to_file_51).
param(p_destination_116, 2, m_copy_to_file_51).
throw(m_copy_to_file_51, ioexception).
param(p_source_117, 1, m_copy_urlto_file_52).
param(p_destination_118, 2, m_copy_urlto_file_52).
throw(m_copy_urlto_file_52, ioexception).
param(p_source_119, 1, m_copy_urlto_file_53).
param(p_destination_120, 2, m_copy_urlto_file_53).
param(p_connection_timeout_121, 3, m_copy_urlto_file_53).
param(p_read_timeout_122, 4, m_copy_urlto_file_53).
throw(m_copy_urlto_file_53, ioexception).
param(p_url_123, 1, m_decode_url_54).
param(p_directory_124, 1, m_delete_directory_55).
throw(m_delete_directory_55, ioexception).
method_invoc(file_utils_1_expr17, m_exists_36, line(file_utils_1, 1122)).
ref(p_directory_124, file_utils_1_expr17, line(file_utils_1, 1122)).
method_invoc(file_utils_1_expr19, m_is_symlink_56, line(file_utils_1, 1126)).
argument(p_directory_124, 1, file_utils_1_expr19).
method_invoc(file_utils_1_expr20, m_clean_directory_30, line(file_utils_1, 1127)).
throw(file_utils_1_expr20, ioexception, line(file_utils_1, 1127)).
argument(p_directory_124, 1, file_utils_1_expr20).
method_invoc(file_utils_1_expr22, m_delete_57, line(file_utils_1, 1130)).
ref(p_directory_124, file_utils_1_expr22, line(file_utils_1, 1130)).
param(p_directory_125, 1, m_delete_directory_on_exit_58).
throw(m_delete_directory_on_exit_58, ioexception).
param(p_file_126, 1, m_delete_quietly_59).
param(p_directory_127, 1, m_directory_contains_60).
param(p_child_128, 2, m_directory_contains_60).
throw(m_directory_contains_60, ioexception).
param(p_src_dir_129, 1, m_do_copy_directory_61).
param(p_dest_dir_130, 2, m_do_copy_directory_61).
param(p_filter_131, 3, m_do_copy_directory_61).
param(p_preserve_file_date_132, 4, m_do_copy_directory_61).
param(p_exclusion_list_133, 5, m_do_copy_directory_61).
throw(m_do_copy_directory_61, ioexception).
param(p_src_file_134, 1, m_do_copy_file_62).
param(p_dest_file_135, 2, m_do_copy_file_62).
param(p_preserve_file_date_136, 3, m_do_copy_file_62).
throw(m_do_copy_file_62, ioexception).
param(p_file_137, 1, m_force_delete_32).
throw(m_force_delete_32, ioexception).
assign(v_delete_counters_138, file_utils_1_expr24, line(file_utils_1, 1342)).
method_invoc(file_utils_1_expr24, m_delete_63, line(file_utils_1, 1342)).
throw(file_utils_1_expr24, ioexception, line(file_utils_1, 1342)).
argument(file_utils_1_expr25, 1, file_utils_1_expr24).
ref(t_path_utils_2, file_utils_1_expr24, line(file_utils_1, 1342)).
method_invoc(file_utils_1_expr25, m_to_path_64, line(file_utils_1, 1342)).
ref(p_file_137, file_utils_1_expr25, line(file_utils_1, 1342)).
method_invoc(file_utils_1_expr28, m_get_65, line(file_utils_1, 1347)).
ref(file_utils_1_expr29, file_utils_1_expr28, line(file_utils_1, 1347)).
method_invoc(file_utils_1_expr29, m_get_file_counter_66, line(file_utils_1, 1347)).
ref(v_delete_counters_138, file_utils_1_expr29, line(file_utils_1, 1347)).
method_invoc(file_utils_1_expr31, m_get_65, line(file_utils_1, 1347)).
ref(file_utils_1_expr32, file_utils_1_expr31, line(file_utils_1, 1347)).
method_invoc(file_utils_1_expr32, m_get_directory_counter_67, line(file_utils_1, 1347)).
ref(v_delete_counters_138, file_utils_1_expr32, line(file_utils_1, 1347)).
param(p_file_139, 1, m_force_delete_on_exit_68).
throw(m_force_delete_on_exit_68, ioexception).
param(p_directory_140, 1, m_force_mkdir_69).
throw(m_force_mkdir_69, ioexception).
param(p_file_141, 1, m_force_mkdir_parent_70).
throw(m_force_mkdir_parent_70, ioexception).
param(p_directory_142, 1, m_get_file_71).
param(p_names_143, 2, m_get_file_71).
param(p_names_144, 1, m_get_file_72).
param(p_files_145, 1, m_inner_list_files_77).
param(p_directory_146, 2, m_inner_list_files_77).
param(p_filter_147, 3, m_inner_list_files_77).
param(p_include_sub_directories_148, 4, m_inner_list_files_77).
param(p_directory_149, 1, m_inner_list_files_or_directories_78).
param(p_file_filter_150, 2, m_inner_list_files_or_directories_78).
param(p_dir_filter_151, 3, m_inner_list_files_or_directories_78).
param(p_include_sub_directories_152, 4, m_inner_list_files_or_directories_78).
param(p_file_153, 1, m_is_file_newer_79).
param(p_date_154, 2, m_is_file_newer_79).
param(p_file_155, 1, m_is_file_newer_80).
param(p_reference_156, 2, m_is_file_newer_80).
param(p_file_157, 1, m_is_file_newer_81).
param(p_time_millis_158, 2, m_is_file_newer_81).
param(p_file_159, 1, m_is_file_older_82).
param(p_date_160, 2, m_is_file_older_82).
param(p_file_161, 1, m_is_file_older_83).
param(p_reference_162, 2, m_is_file_older_83).
param(p_file_163, 1, m_is_file_older_84).
param(p_time_millis_164, 2, m_is_file_older_84).
param(p_file_165, 1, m_is_symlink_56).
return(file_utils_1_expr34, m_is_symlink_56, line(file_utils_1, 1729)).
method_invoc(file_utils_1_expr34, m_is_symbolic_link_85, line(file_utils_1, 1729)).
argument(file_utils_1_expr35, 1, file_utils_1_expr34).
ref(t_files_3, file_utils_1_expr34, line(file_utils_1, 1729)).
method_invoc(file_utils_1_expr35, m_to_path_64, line(file_utils_1, 1729)).
ref(p_file_165, file_utils_1_expr35, line(file_utils_1, 1729)).
param(p_directory_166, 1, m_iterate_files_86).
param(p_file_filter_167, 2, m_iterate_files_86).
param(p_dir_filter_168, 3, m_iterate_files_86).
param(p_directory_169, 1, m_iterate_files_87).
param(p_extensions_170, 2, m_iterate_files_87).
param(p_recursive_171, 3, m_iterate_files_87).
param(p_directory_172, 1, m_iterate_files_and_dirs_88).
param(p_file_filter_173, 2, m_iterate_files_and_dirs_88).
param(p_dir_filter_174, 3, m_iterate_files_and_dirs_88).
param(p_file_175, 1, m_line_iterator_89).
throw(m_line_iterator_89, ioexception).
param(p_file_176, 1, m_line_iterator_90).
param(p_encoding_177, 2, m_line_iterator_90).
throw(m_line_iterator_90, ioexception).
param(p_directory_178, 1, m_list_files_91).
param(p_file_filter_179, 2, m_list_files_91).
param(p_dir_filter_180, 3, m_list_files_91).
param(p_directory_181, 1, m_list_files_92).
param(p_extensions_182, 2, m_list_files_92).
param(p_recursive_183, 3, m_list_files_92).
param(p_directory_184, 1, m_list_files_and_dirs_93).
param(p_file_filter_185, 2, m_list_files_and_dirs_93).
param(p_dir_filter_186, 3, m_list_files_and_dirs_93).
param(p_src_dir_187, 1, m_move_directory_94).
param(p_dest_dir_188, 2, m_move_directory_94).
throw(m_move_directory_94, ioexception).
param(p_src_189, 1, m_move_directory_to_directory_95).
param(p_dest_dir_190, 2, m_move_directory_to_directory_95).
param(p_create_dest_dir_191, 3, m_move_directory_to_directory_95).
throw(m_move_directory_to_directory_95, ioexception).
param(p_src_file_192, 1, m_move_file_96).
param(p_dest_file_193, 2, m_move_file_96).
throw(m_move_file_96, ioexception).
param(p_src_file_194, 1, m_move_file_to_directory_97).
param(p_dest_dir_195, 2, m_move_file_to_directory_97).
param(p_create_dest_dir_196, 3, m_move_file_to_directory_97).
throw(m_move_file_to_directory_97, ioexception).
param(p_src_197, 1, m_move_to_directory_98).
param(p_dest_dir_198, 2, m_move_to_directory_98).
param(p_create_dest_dir_199, 3, m_move_to_directory_98).
throw(m_move_to_directory_98, ioexception).
param(p_file_200, 1, m_open_input_stream_99).
throw(m_open_input_stream_99, ioexception).
param(p_file_201, 1, m_open_output_stream_100).
throw(m_open_output_stream_100, ioexception).
param(p_file_202, 1, m_open_output_stream_101).
param(p_append_203, 2, m_open_output_stream_101).
throw(m_open_output_stream_101, ioexception).
param(p_file_204, 1, m_read_file_to_byte_array_102).
throw(m_read_file_to_byte_array_102, ioexception).
param(p_file_205, 1, m_read_file_to_string_103).
throw(m_read_file_to_string_103, ioexception).
param(p_file_206, 1, m_read_file_to_string_104).
param(p_encoding_207, 2, m_read_file_to_string_104).
throw(m_read_file_to_string_104, ioexception).
param(p_file_208, 1, m_read_file_to_string_105).
param(p_encoding_209, 2, m_read_file_to_string_105).
throw(m_read_file_to_string_105, ioexception).
param(p_file_210, 1, m_read_lines_106).
throw(m_read_lines_106, ioexception).
param(p_file_211, 1, m_read_lines_107).
param(p_encoding_212, 2, m_read_lines_107).
throw(m_read_lines_107, ioexception).
param(p_file_213, 1, m_read_lines_108).
param(p_encoding_214, 2, m_read_lines_108).
throw(m_read_lines_108, ioexception).
param(p_dir_filter_215, 1, m_set_up_effective_dir_filter_109).
param(p_file_filter_216, 1, m_set_up_effective_file_filter_110).
param(p_file_217, 1, m_size_of_111).
param(p_file_218, 1, m_size_of0_112).
param(p_file_219, 1, m_size_of_as_big_integer_113).
param(p_file_or_dir_220, 1, m_size_of_big0_114).
param(p_directory_221, 1, m_size_of_directory_115).
param(p_directory_222, 1, m_size_of_directory0_116).
param(p_directory_223, 1, m_size_of_directory_as_big_integer_117).
param(p_directory_224, 1, m_size_of_directory_big0_118).
param(p_url_225, 1, m_to_file_119).
param(p_urls_226, 1, m_to_files_120).
param(p_extensions_227, 1, m_to_suffixes_121).
param(p_file_228, 1, m_touch_122).
throw(m_touch_122, ioexception).
param(p_files_229, 1, m_to_urls_123).
throw(m_to_urls_123, ioexception).
param(p_directory_230, 1, m_validate_list_files_parameters_124).
param(p_file_filter_231, 2, m_validate_list_files_parameters_124).
param(p_src_232, 1, m_validate_move_parameters_125).
param(p_dest_233, 2, m_validate_move_parameters_125).
throw(m_validate_move_parameters_125, file_not_found_exception).
param(p_directory_234, 1, m_verified_list_files_31).
throw(m_verified_list_files_31, ioexception).
method_invoc(file_utils_1_expr37, m_exists_36, line(file_utils_1, 2682)).
ref(p_directory_234, file_utils_1_expr37, line(file_utils_1, 2682)).
method_invoc(file_utils_1_expr39, m_is_directory_126, line(file_utils_1, 2687)).
ref(p_directory_234, file_utils_1_expr39, line(file_utils_1, 2687)).
assign(v_files_235, file_utils_1_expr40, line(file_utils_1, 2692)).
method_invoc(file_utils_1_expr40, m_list_files_127, line(file_utils_1, 2692)).
ref(p_directory_234, file_utils_1_expr40, line(file_utils_1, 2692)).
return(v_files_235, m_verified_list_files_31, line(file_utils_1, 2696)).
param(p_file_236, 1, m_wait_for_128).
param(p_seconds_237, 2, m_wait_for_128).
param(p_file_238, 1, m_write_129).
param(p_data_239, 2, m_write_129).
throw(m_write_129, ioexception).
param(p_file_240, 1, m_write_130).
param(p_data_241, 2, m_write_130).
param(p_append_242, 3, m_write_130).
throw(m_write_130, ioexception).
param(p_file_243, 1, m_write_131).
param(p_data_244, 2, m_write_131).
param(p_encoding_245, 3, m_write_131).
throw(m_write_131, ioexception).
param(p_file_246, 1, m_write_132).
param(p_data_247, 2, m_write_132).
param(p_encoding_248, 3, m_write_132).
param(p_append_249, 4, m_write_132).
throw(m_write_132, ioexception).
param(p_file_250, 1, m_write_133).
param(p_data_251, 2, m_write_133).
param(p_encoding_252, 3, m_write_133).
throw(m_write_133, ioexception).
param(p_file_253, 1, m_write_134).
param(p_data_254, 2, m_write_134).
param(p_encoding_255, 3, m_write_134).
param(p_append_256, 4, m_write_134).
throw(m_write_134, ioexception).
param(p_file_257, 1, m_write_byte_array_to_file_135).
param(p_data_258, 2, m_write_byte_array_to_file_135).
throw(m_write_byte_array_to_file_135, ioexception).
param(p_file_259, 1, m_write_byte_array_to_file_136).
param(p_data_260, 2, m_write_byte_array_to_file_136).
param(p_append_261, 3, m_write_byte_array_to_file_136).
throw(m_write_byte_array_to_file_136, ioexception).
param(p_file_262, 1, m_write_byte_array_to_file_137).
param(p_data_263, 2, m_write_byte_array_to_file_137).
param(p_off_264, 3, m_write_byte_array_to_file_137).
param(p_len_265, 4, m_write_byte_array_to_file_137).
throw(m_write_byte_array_to_file_137, ioexception).
param(p_file_266, 1, m_write_byte_array_to_file_138).
param(p_data_267, 2, m_write_byte_array_to_file_138).
param(p_off_268, 3, m_write_byte_array_to_file_138).
param(p_len_269, 4, m_write_byte_array_to_file_138).
param(p_append_270, 5, m_write_byte_array_to_file_138).
throw(m_write_byte_array_to_file_138, ioexception).
param(p_file_271, 1, m_write_lines_139).
param(p_lines_272, 2, m_write_lines_139).
throw(m_write_lines_139, ioexception).
param(p_file_273, 1, m_write_lines_140).
param(p_lines_274, 2, m_write_lines_140).
param(p_append_275, 3, m_write_lines_140).
throw(m_write_lines_140, ioexception).
param(p_file_276, 1, m_write_lines_141).
param(p_lines_277, 2, m_write_lines_141).
param(p_line_ending_278, 3, m_write_lines_141).
throw(m_write_lines_141, ioexception).
param(p_file_279, 1, m_write_lines_142).
param(p_lines_280, 2, m_write_lines_142).
param(p_line_ending_281, 3, m_write_lines_142).
param(p_append_282, 4, m_write_lines_142).
throw(m_write_lines_142, ioexception).
param(p_file_283, 1, m_write_lines_143).
param(p_encoding_284, 2, m_write_lines_143).
param(p_lines_285, 3, m_write_lines_143).
throw(m_write_lines_143, ioexception).
param(p_file_286, 1, m_write_lines_144).
param(p_encoding_287, 2, m_write_lines_144).
param(p_lines_288, 3, m_write_lines_144).
param(p_append_289, 4, m_write_lines_144).
throw(m_write_lines_144, ioexception).
param(p_file_290, 1, m_write_lines_145).
param(p_encoding_291, 2, m_write_lines_145).
param(p_lines_292, 3, m_write_lines_145).
param(p_line_ending_293, 4, m_write_lines_145).
throw(m_write_lines_145, ioexception).
param(p_file_294, 1, m_write_lines_146).
param(p_encoding_295, 2, m_write_lines_146).
param(p_lines_296, 3, m_write_lines_146).
param(p_line_ending_297, 4, m_write_lines_146).
param(p_append_298, 5, m_write_lines_146).
throw(m_write_lines_146, ioexception).
param(p_file_299, 1, m_write_string_to_file_147).
param(p_data_300, 2, m_write_string_to_file_147).
throw(m_write_string_to_file_147, ioexception).
param(p_file_301, 1, m_write_string_to_file_148).
param(p_data_302, 2, m_write_string_to_file_148).
param(p_append_303, 3, m_write_string_to_file_148).
throw(m_write_string_to_file_148, ioexception).
param(p_file_304, 1, m_write_string_to_file_149).
param(p_data_305, 2, m_write_string_to_file_149).
param(p_encoding_306, 3, m_write_string_to_file_149).
throw(m_write_string_to_file_149, ioexception).
param(p_file_307, 1, m_write_string_to_file_150).
param(p_data_308, 2, m_write_string_to_file_150).
param(p_encoding_309, 3, m_write_string_to_file_150).
param(p_append_310, 4, m_write_string_to_file_150).
throw(m_write_string_to_file_150, ioexception).
param(p_file_311, 1, m_write_string_to_file_151).
param(p_data_312, 2, m_write_string_to_file_151).
param(p_encoding_313, 3, m_write_string_to_file_151).
throw(m_write_string_to_file_151, ioexception).
param(p_file_314, 1, m_write_string_to_file_152).
param(p_data_315, 2, m_write_string_to_file_152).
param(p_encoding_316, 3, m_write_string_to_file_152).
param(p_append_317, 4, m_write_string_to_file_152).
throw(m_write_string_to_file_152, ioexception).

%test_utils_1 - org.apache.commons.io.testtools.TestUtils
param(p_file_381, 1, m_create_file_367).
param(p_size_382, 2, m_create_file_367).
throw(m_create_file_367, ioexception).
param(p_size_383, 1, m_generate_test_data_368).
param(p_out_384, 1, m_generate_test_data_159).
param(p_size_385, 2, m_generate_test_data_159).
throw(m_generate_test_data_159, ioexception).
assign(v_i_386, test_utils_1_literal1, line(test_utils_1, 73)).
param(p_file_387, 1, m_create_line_based_file_369).
param(p_data_388, 2, m_create_line_based_file_369).
throw(m_create_line_based_file_369, ioexception).
param(p_test_directory_389, 1, m_new_file_370).
param(p_filename_390, 2, m_new_file_370).
throw(m_new_file_370, ioexception).
param(p_file_391, 1, m_check_file_371).
param(p_reference_file_392, 2, m_check_file_371).
throw(m_check_file_371, exception).
param(p_f_0_393, 1, m_assert_equal_content_372).
param(p_f_1_394, 2, m_assert_equal_content_372).
throw(m_assert_equal_content_372, ioexception).
param(p_b_0_395, 1, m_assert_equal_content_373).
param(p_file_396, 2, m_assert_equal_content_373).
throw(m_assert_equal_content_373, ioexception).
param(p_c_0_397, 1, m_assert_equal_content_374).
param(p_file_398, 2, m_assert_equal_content_374).
throw(m_assert_equal_content_374, ioexception).
param(p_output_399, 1, m_check_write_375).
throw(m_check_write_375, exception).
param(p_output_400, 1, m_check_write_376).
throw(m_check_write_376, exception).
param(p_file_401, 1, m_delete_file_377).
throw(m_delete_file_377, exception).
param(p_ms_402, 1, m_sleep_378).
throw(m_sleep_378, interrupted_exception).
param(p_ms_403, 1, m_sleep_quietly_379).

%directory_walker_1 - org.apache.commons.io.DirectoryWalker
method_invoc(directory_walker_1_expr1, m_directory_walker_2, line(directory_walker_1, 283)).
argument(directory_walker_1_literal1, 1, directory_walker_1_expr1).
argument(directory_walker_1_expr2, 2, directory_walker_1_expr1).
param(p_filter_1, 1, m_directory_walker_2).
param(p_depth_limit_2, 2, m_directory_walker_2).
assign(f_filter_3, p_filter_1, line(directory_walker_1, 300)).
assign(f_depth_limit_4, p_depth_limit_2, line(directory_walker_1, 301)).
param(p_directory_filter_5, 1, m_directory_walker_3).
param(p_file_filter_6, 2, m_directory_walker_3).
param(p_depth_limit_7, 3, m_directory_walker_3).
param(p_start_directory_8, 1, m_walk_4).
param(p_results_9, 2, m_walk_4).
throw(m_walk_4, ioexception).
param(p_directory_10, 1, m_walk_5).
param(p_depth_11, 2, m_walk_5).
param(p_results_12, 3, m_walk_5).
throw(m_walk_5, ioexception).
param(p_file_13, 1, m_check_if_cancelled_6).
param(p_depth_14, 2, m_check_if_cancelled_6).
param(p_results_15, 3, m_check_if_cancelled_6).
throw(m_check_if_cancelled_6, ioexception).
param(p_file_16, 1, m_handle_is_cancelled_7).
param(p_depth_17, 2, m_handle_is_cancelled_7).
param(p_results_18, 3, m_handle_is_cancelled_7).
throw(m_handle_is_cancelled_7, ioexception).
param(p_start_directory_19, 1, m_handle_cancelled_8).
param(p_results_20, 2, m_handle_cancelled_8).
param(p_cancel_21, 3, m_handle_cancelled_8).
throw(m_handle_cancelled_8, ioexception).
param(p_start_directory_22, 1, m_handle_start_9).
param(p_results_23, 2, m_handle_start_9).
throw(m_handle_start_9, ioexception).
param(p_directory_24, 1, m_handle_directory_10).
param(p_depth_25, 2, m_handle_directory_10).
param(p_results_26, 3, m_handle_directory_10).
throw(m_handle_directory_10, ioexception).
param(p_directory_27, 1, m_handle_directory_start_11).
param(p_depth_28, 2, m_handle_directory_start_11).
param(p_results_29, 3, m_handle_directory_start_11).
throw(m_handle_directory_start_11, ioexception).
param(p_directory_30, 1, m_filter_directory_contents_12).
param(p_depth_31, 2, m_filter_directory_contents_12).
param(p_files_32, 3, m_filter_directory_contents_12).
throw(m_filter_directory_contents_12, ioexception).
param(p_file_33, 1, m_handle_file_13).
param(p_depth_34, 2, m_handle_file_13).
param(p_results_35, 3, m_handle_file_13).
throw(m_handle_file_13, ioexception).
param(p_directory_36, 1, m_handle_restricted_14).
param(p_depth_37, 2, m_handle_restricted_14).
param(p_results_38, 3, m_handle_restricted_14).
throw(m_handle_restricted_14, ioexception).
param(p_directory_39, 1, m_handle_directory_end_15).
param(p_depth_40, 2, m_handle_directory_end_15).
param(p_results_41, 3, m_handle_directory_end_15).
throw(m_handle_directory_end_15, ioexception).
param(p_results_42, 1, m_handle_end_16).
throw(m_handle_end_16, ioexception).
param(p_file_43, 1, m_cancel_exception_17).
param(p_depth_44, 2, m_cancel_exception_17).
param(p_message_45, 1, m_cancel_exception_18).
param(p_file_46, 2, m_cancel_exception_18).
param(p_depth_47, 3, m_cancel_exception_18).

%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
assign(f_test_directory_size_bi_318, q_zero_1, line(file_utils_test_case_1, 82)).
ref(t_big_integer_1, q_zero_1, line(file_utils_test_case_1, 82)).
assign(f_test_directory_size_gt_zero_bi_319, file_utils_test_case_1_expr1, line(file_utils_test_case_1, 87)).
method_invoc(file_utils_test_case_1_expr1, m_value_of_21, line(file_utils_test_case_1, 87)).
argument(file_utils_test_case_1_literal1, 1, file_utils_test_case_1_expr1).
ref(t_big_integer_1, file_utils_test_case_1_expr1, line(file_utils_test_case_1, 87)).
assign(f_list_walker_320, file_utils_test_case_1_expr2, line(file_utils_test_case_1, 92)).
method_invoc(file_utils_test_case_1_expr2, m_list_directory_walker_154, line(file_utils_test_case_1, 92)).
throw(m_set_up_155, exception).
assign(f_test_file1_321, file_utils_test_case_1_expr4, line(file_utils_test_case_1, 107)).
method_invoc(file_utils_test_case_1_expr4, m_file_156, line(file_utils_test_case_1, 107)).
argument(f_temporary_folder_322, 1, file_utils_test_case_1_expr4).
argument(file_utils_test_case_1_literal2, 2, file_utils_test_case_1_expr4).
assign(f_test_file2_323, file_utils_test_case_1_expr6, line(file_utils_test_case_1, 108)).
method_invoc(file_utils_test_case_1_expr6, m_file_156, line(file_utils_test_case_1, 108)).
argument(f_temporary_folder_322, 1, file_utils_test_case_1_expr6).
argument(file_utils_test_case_1_literal3, 2, file_utils_test_case_1_expr6).
assign(f_test_file1_size_324, file_utils_test_case_1_expr8, line(file_utils_test_case_1, 110)).
assign(file_utils_test_case_1_expr8, file_utils_test_case_1_expr9, line(file_utils_test_case_1, 110)).
method_invoc(file_utils_test_case_1_expr9, m_length_157, line(file_utils_test_case_1, 110)).
ref(f_test_file1_321, file_utils_test_case_1_expr9, line(file_utils_test_case_1, 110)).
assign(f_test_file2_size_325, file_utils_test_case_1_expr11, line(file_utils_test_case_1, 111)).
assign(file_utils_test_case_1_expr11, file_utils_test_case_1_expr12, line(file_utils_test_case_1, 111)).
method_invoc(file_utils_test_case_1_expr12, m_length_157, line(file_utils_test_case_1, 111)).
ref(f_test_file2_323, file_utils_test_case_1_expr12, line(file_utils_test_case_1, 111)).
method_invoc(file_utils_test_case_1_expr14, m_exists_36, line(file_utils_test_case_1, 112)).
ref(file_utils_test_case_1_expr15, file_utils_test_case_1_expr14, line(file_utils_test_case_1, 112)).
method_invoc(file_utils_test_case_1_expr15, m_get_parent_file_158, line(file_utils_test_case_1, 112)).
ref(f_test_file1_321, file_utils_test_case_1_expr15, line(file_utils_test_case_1, 112)).
assign(v_output_3_326, file_utils_test_case_1_expr17, line(file_utils_test_case_1, 116)).
method_invoc(file_utils_test_case_1_expr18, m_generate_test_data_159, line(file_utils_test_case_1, 118)).
throw(file_utils_test_case_1_expr18, ioexception, line(file_utils_test_case_1, 118)).
argument(v_output_3_326, 1, file_utils_test_case_1_expr18).
argument(f_test_file1_size_324, 2, file_utils_test_case_1_expr18).
ref(t_test_utils_5, file_utils_test_case_1_expr18, line(file_utils_test_case_1, 118)).
method_invoc(file_utils_test_case_1_expr20, m_exists_36, line(file_utils_test_case_1, 120)).
ref(file_utils_test_case_1_expr21, file_utils_test_case_1_expr20, line(file_utils_test_case_1, 120)).
method_invoc(file_utils_test_case_1_expr21, m_get_parent_file_158, line(file_utils_test_case_1, 120)).
ref(f_test_file2_323, file_utils_test_case_1_expr21, line(file_utils_test_case_1, 120)).
assign(v_output_2_327, file_utils_test_case_1_expr23, line(file_utils_test_case_1, 124)).
method_invoc(file_utils_test_case_1_expr24, m_generate_test_data_159, line(file_utils_test_case_1, 126)).
throw(file_utils_test_case_1_expr24, ioexception, line(file_utils_test_case_1, 126)).
argument(v_output_2_327, 1, file_utils_test_case_1_expr24).
argument(f_test_file2_size_325, 2, file_utils_test_case_1_expr24).
ref(t_test_utils_5, file_utils_test_case_1_expr24, line(file_utils_test_case_1, 126)).
method_invoc(file_utils_test_case_1_expr25, m_delete_directory_55, line(file_utils_test_case_1, 128)).
throw(file_utils_test_case_1_expr25, ioexception, line(file_utils_test_case_1, 128)).
argument(f_temporary_folder_322, 1, file_utils_test_case_1_expr25).
ref(t_file_utils_6, file_utils_test_case_1_expr25, line(file_utils_test_case_1, 128)).
method_invoc(file_utils_test_case_1_expr26, m_mkdirs_160, line(file_utils_test_case_1, 129)).
ref(f_temporary_folder_322, file_utils_test_case_1_expr26, line(file_utils_test_case_1, 129)).
method_invoc(file_utils_test_case_1_expr28, m_exists_36, line(file_utils_test_case_1, 130)).
ref(file_utils_test_case_1_expr29, file_utils_test_case_1_expr28, line(file_utils_test_case_1, 130)).
method_invoc(file_utils_test_case_1_expr29, m_get_parent_file_158, line(file_utils_test_case_1, 130)).
ref(f_test_file1_321, file_utils_test_case_1_expr29, line(file_utils_test_case_1, 130)).
assign(v_output_1_328, file_utils_test_case_1_expr31, line(file_utils_test_case_1, 134)).
method_invoc(file_utils_test_case_1_expr32, m_generate_test_data_159, line(file_utils_test_case_1, 136)).
throw(file_utils_test_case_1_expr32, ioexception, line(file_utils_test_case_1, 136)).
argument(v_output_1_328, 1, file_utils_test_case_1_expr32).
argument(f_test_file1_size_324, 2, file_utils_test_case_1_expr32).
ref(t_test_utils_5, file_utils_test_case_1_expr32, line(file_utils_test_case_1, 136)).
method_invoc(file_utils_test_case_1_expr34, m_exists_36, line(file_utils_test_case_1, 138)).
ref(file_utils_test_case_1_expr35, file_utils_test_case_1_expr34, line(file_utils_test_case_1, 138)).
method_invoc(file_utils_test_case_1_expr35, m_get_parent_file_158, line(file_utils_test_case_1, 138)).
ref(f_test_file2_323, file_utils_test_case_1_expr35, line(file_utils_test_case_1, 138)).
assign(v_output_329, file_utils_test_case_1_expr37, line(file_utils_test_case_1, 142)).
method_invoc(file_utils_test_case_1_expr38, m_generate_test_data_159, line(file_utils_test_case_1, 144)).
throw(file_utils_test_case_1_expr38, ioexception, line(file_utils_test_case_1, 144)).
argument(v_output_329, 1, file_utils_test_case_1_expr38).
argument(f_test_file2_size_325, 2, file_utils_test_case_1_expr38).
ref(t_test_utils_5, file_utils_test_case_1_expr38, line(file_utils_test_case_1, 144)).
return(file_utils_test_case_1_expr39, m_get_name_161, line(file_utils_test_case_1, 149)).
method_invoc(file_utils_test_case_1_expr39, m_get_simple_name_162, line(file_utils_test_case_1, 149)).
ref(file_utils_test_case_1_expr40, file_utils_test_case_1_expr39, line(file_utils_test_case_1, 149)).
method_invoc(file_utils_test_case_1_expr40, m_get_class_163, line(file_utils_test_case_1, 149)).
ref(file_utils_test_case_1_expr41, file_utils_test_case_1_expr40, line(file_utils_test_case_1, 149)).
throw(m_test_open_input_stream_exists_170, exception).
throw(m_test_open_input_stream_exists_but_is_directory_171, exception).
throw(m_test_open_input_stream_not_exists_172, exception).
param(p_create_file_330, 1, m_open_output_stream_no_parent_173).
throw(m_open_output_stream_no_parent_173, exception).
throw(m_test_open_output_stream_no_parent_create_file_174, exception).
throw(m_test_open_output_stream_no_parent_no_file_175, exception).
throw(m_test_open_output_stream_exists_176, exception).
throw(m_test_open_output_stream_exists_but_is_directory_177, exception).
throw(m_test_open_output_stream_not_exists_178, exception).
throw(m_test_open_output_stream_not_exists_cannot_create_179, exception).
throw(m_test_to_file1_182, exception).
throw(m_test_to_file2_183, exception).
throw(m_test_to_file3_184, exception).
throw(m_test_to_file4_185, exception).
throw(m_test_to_file5_186, exception).
throw(m_test_to_file_utf8_187, exception).
throw(m_test_to_files1_192, exception).
throw(m_test_to_files2_193, exception).
throw(m_test_to_files3_194, exception).
throw(m_test_to_files3a_195, exception).
throw(m_test_to_files4_196, exception).
throw(m_test_to_urls1_197, exception).
throw(m_test_to_urls3a_198, exception).
throw(m_test_content_equals_199, exception).
throw(m_test_content_equals_ignore_eol_200, exception).
assign(v_file_1_331, file_utils_test_case_1_expr42, line(file_utils_test_case_1, 631)).
method_invoc(file_utils_test_case_1_expr42, m_file_156, line(file_utils_test_case_1, 631)).
argument(f_temporary_folder_322, 1, file_utils_test_case_1_expr42).
argument(file_utils_test_case_1_expr43, 2, file_utils_test_case_1_expr42).
method_invoc(file_utils_test_case_1_expr43, m_get_name_161, line(file_utils_test_case_1, 631)).
assign(v_file_2_332, file_utils_test_case_1_expr44, line(file_utils_test_case_1, 632)).
method_invoc(file_utils_test_case_1_expr44, m_file_156, line(file_utils_test_case_1, 632)).
argument(f_temporary_folder_322, 1, file_utils_test_case_1_expr44).
argument(file_utils_test_case_1_expr45, 2, file_utils_test_case_1_expr44).
method_invoc(file_utils_test_case_1_expr46, m_get_name_161, line(file_utils_test_case_1, 632)).
method_invoc(file_utils_test_case_1_expr47, m_assert_true_201, line(file_utils_test_case_1, 633)).
argument(file_utils_test_case_1_expr48, 1, file_utils_test_case_1_expr47).
method_invoc(file_utils_test_case_1_expr48, m_content_equals_ignore_eol_35, line(file_utils_test_case_1, 633)).
throw(file_utils_test_case_1_expr48, ioexception, line(file_utils_test_case_1, 633)).
throw(file_utils_test_case_1_expr48, null_pointer_exception, line(file_utils_test_case_1, 633)).
argument(file_utils_test_case_1_literal5, 1, file_utils_test_case_1_expr48).
argument(file_utils_test_case_1_literal6, 2, file_utils_test_case_1_expr48).
argument(file_utils_test_case_1_literal7, 3, file_utils_test_case_1_expr48).
ref(t_file_utils_6, file_utils_test_case_1_expr48, line(file_utils_test_case_1, 633)).
throw(m_test_copy_urlto_file_202, exception).
throw(m_test_copy_urlto_file_with_timeout_203, exception).
throw(m_test_force_mkdir_204, exception).
throw(m_test_force_mkdir_parent_205, exception).
throw(m_test_size_of_directory_206, exception).
param(p_file_333, 1, m_create_circular_sym_link_207).
throw(m_create_circular_sym_link_207, ioexception).
throw(m_test_size_of_directory_as_big_integer_208, exception).
throw(m_test_size_of_210, exception).
throw(m_test_size_of_as_big_integer_211, exception).
throw(m_test_is_file_newer_older_212, exception).
throw(m_test_copy_file1_213, exception).
throw(m_test_copy_file_to_output_stream_214, exception).
throw(m_test_copy_file_large_215, exception).
throw(m_test_copy_file2_216, exception).
throw(m_test_copy_to_self_217, exception).
throw(m_test_copy_file2_without_file_date_preservation_218, exception).
throw(m_test_copy_directory_to_directory__non_existing_dest_219, exception).
throw(m_test_copy_directory_to_non_existing_dest_220, exception).
throw(m_test_copy_directory_to_existing_dest_221, exception).
throw(m_test_copy_directory_filtered_222, exception).
throw(m_test_copy_directory_preserve_dates_223, exception).
throw(m_test_copy_directory_to_child_224, exception).
throw(m_test_copy_directory_to_grand_child_225, exception).
throw(m_test_copy_directory_to_itself_226, exception).
param(p_grand_parent_dir_334, 1, m_create_files_for_test_copy_directory_227).
param(p_parent_dir_335, 2, m_create_files_for_test_copy_directory_227).
param(p_child_dir_336, 3, m_create_files_for_test_copy_directory_227).
throw(m_create_files_for_test_copy_directory_227, exception).
throw(m_test_copy_directory_errors_228, exception).
throw(m_test_copy_to_directory_with_file_229, ioexception).
throw(m_test_copy_to_directory_with_directory_232, ioexception).
throw(m_test_copy_to_directory_with_iterable_233, ioexception).
throw(m_test_force_delete_afile1_236, exception).
throw(m_test_force_delete_afile2_237, exception).
throw(m_test_force_delete_afile3_238, exception).
throw(m_test_copy_file1_to_dir_239, exception).
throw(m_test_copy_file2_to_dir_240, exception).
throw(m_test_force_delete_dir_241, exception).
throw(m_test_file_utils_242, exception).
throw(m_test_touch_243, ioexception).
throw(m_test_list_files_244, exception).
throw(m_test_list_files_with_dirs_245, ioexception).
throw(m_test_iterate_files_246, exception).
throw(m_test_iterate_files_and_dirs_247, ioexception).
throw(m_test_read_file_to_string_with_default_encoding_248, exception).
throw(m_test_read_file_to_string_with_encoding_249, exception).
throw(m_test_read_file_to_byte_array_250, exception).
throw(m_test_read_lines_251, exception).
throw(m_test_write_string_to_file1_252, exception).
throw(m_test_write_string_to_file2_253, exception).
throw(m_test_write_string_to_file3_254, exception).
throw(m_test_write_char_sequence1_255, exception).
throw(m_test_write_char_sequence2_256, exception).
throw(m_test_write_byte_array_to_file_257, exception).
throw(m_test_write_byte_array_to_file__with_offset_and_length_258, exception).
throw(m_test_write_lines_4arg_259, exception).
throw(m_test_write_lines_4arg__writer_null_data_260, exception).
throw(m_test_write_lines_4arg_null_separator_261, exception).
throw(m_test_write_lines_3arg_null_separator_262, exception).
throw(m_test_write_lines_5args_with_append_option_true__should_not_delete_previous_file_lines_263, exception).
throw(m_test_write_lines_5args_with_append_option_false__should_delete_previous_file_lines_264, exception).
throw(m_test_write_lines_4args_with_append_option_true__should_not_delete_previous_file_lines_265, exception).
throw(m_test_write_lines_4args_with_append_option_false__should_delete_previous_file_lines_266, exception).
throw(m_test_write_lines_encoding__with_append_option_true__should_not_delete_previous_file_lines_267, exception).
throw(m_test_write_lines_encoding__with_append_option_false__should_delete_previous_file_lines_268, exception).
throw(m_test_write_lines_3args_with_append_option_true__should_not_delete_previous_file_lines_269, exception).
throw(m_test_write_lines_3args_with_append_option_false__should_delete_previous_file_lines_270, exception).
throw(m_test_write_string_to_file_with_encoding__with_append_option_true__should_not_delete_previous_file_lines_271, exception).
throw(m_test_write_string_to_file_with_encoding__with_append_option_false__should_delete_previous_file_lines_272, exception).
throw(m_test_write_string_to_file__with_append_option_true__should_not_delete_previous_file_lines_273, exception).
throw(m_test_write_string_to_file__with_append_option_false__should_delete_previous_file_lines_274, exception).
throw(m_test_write_with_encoding__with_append_option_true__should_not_delete_previous_file_lines_275, exception).
throw(m_test_write_with_encoding__with_append_option_false__should_delete_previous_file_lines_276, exception).
throw(m_test_write__with_append_option_true__should_not_delete_previous_file_lines_277, exception).
throw(m_test_write__with_append_option_false__should_delete_previous_file_lines_278, exception).
throw(m_test_write_byte_array_to_file__with_append_option_true__should_not_delete_previous_file_lines_279, exception).
throw(m_test_write_byte_array_to_file__with_append_option_false__should_delete_previous_file_lines_280, exception).
throw(m_test_write_byte_array_to_file__with_offset_and_length__with_append_option_true__should_not_delete_previous_file_lines_281, exception).
throw(m_test_write_byte_array_to_file__with_offset_and_length__with_append_option_true__should_delete_previous_file_lines_282, exception).
throw(m_test_checksum_crc32_283, exception).
throw(m_test_checksum_284, exception).
throw(m_test_checksum_on_null_file_285, exception).
throw(m_test_checksum_on_null_checksum_286, exception).
throw(m_test_checksum_on_directory_287, exception).
throw(m_test_checksum_double_288, exception).
throw(m_test_delete_directory_with_non_directory_289, exception).
throw(m_test_delete_quietly_dir_291, ioexception).
throw(m_test_delete_quietly_file_292, ioexception).
throw(m_test_move_file__rename_294, exception).
throw(m_test_move_file__copy_delete_295, exception).
param(p_f_337, 1, m_rename_to_296).
throw(m_test_move_file__copy_delete__failed_297, exception).
param(p_f_338, 1, m_rename_to_298).
throw(m_test_move_file__errors_300, exception).
throw(m_test_move_file_to_directory_301, exception).
throw(m_test_move_file_to_directory__errors_302, exception).
throw(m_test_move_directory__rename_303, exception).
throw(m_test_move_directory__copy_delete_304, exception).
param(p_dest_339, 1, m_rename_to_305).
throw(m_test_move_directory__errors_306, exception).
throw(m_test_move_directory_to_directory_307, exception).
throw(m_test_move_directory_to_directory__errors_308, exception).
throw(m_test_move_to_directory_309, exception).
throw(m_test_move_to_directory__errors_310, exception).
throw(m_test_io300_311, exception).
throw(m_test_io276_312, exception).
param(p_pathname_340, 1, m_shorter_file_313).
throw(m_test_incorrect_output_size_315, exception).
param(p_start_directory_341, 1, m_list_316).
throw(m_list_316, ioexception).
param(p_directory_342, 1, m_handle_directory_start_317).
param(p_depth_343, 2, m_handle_directory_start_317).
param(p_results_344, 3, m_handle_directory_start_317).
throw(m_handle_directory_start_317, ioexception).
param(p_file_345, 1, m_handle_file_318).
param(p_depth_346, 2, m_handle_file_318).
param(p_results_347, 3, m_handle_file_318).
throw(m_handle_file_318, ioexception).
throw(file_utils_test_case_1_expr47, null_pointer_exception, line(file_utils_test_case_1, 633)).

%counters_1 - org.apache.commons.io.file.Counters
param(p_byte_counter_348, 1, m_abstract_path_counters_319).
param(p_directory_counter_349, 2, m_abstract_path_counters_319).
param(p_file_counter_350, 3, m_abstract_path_counters_319).
method_invoc(counters_1_expr1, m_object_320, line(counters_1, 47)).
assign(f_byte_counter_351, p_byte_counter_348, line(counters_1, 48)).
assign(f_directory_counter_352, p_directory_counter_349, line(counters_1, 49)).
assign(f_file_counter_353, p_file_counter_350, line(counters_1, 50)).
return(f_byte_counter_351, m_get_byte_counter_321, line(counters_1, 55)).
return(f_file_counter_353, m_get_file_counter_323, line(counters_1, 70)).
param(p_val_354, 1, m_add_325).
param(p_val_355, 1, m_add_332).
param(p_add_356, 1, m_add_336).
assign(f_value_357, p_add_356, line(counters_1, 183)).
return(f_value_357, m_get_337, line(counters_1, 189)).
method_invoc(counters_1_expr15, m_abstract_path_counters_319, line(counters_1, 222)).
argument(counters_1_expr16, 1, counters_1_expr15).
argument(counters_1_expr17, 2, counters_1_expr15).
argument(counters_1_expr18, 3, counters_1_expr15).
method_invoc(counters_1_expr16, m_long_counter_343, line(counters_1, 222)).
ref(t_counters_7, counters_1_expr16, line(counters_1, 222)).
method_invoc(counters_1_expr17, m_long_counter_343, line(counters_1, 222)).
ref(t_counters_7, counters_1_expr17, line(counters_1, 222)).
method_invoc(counters_1_expr18, m_long_counter_343, line(counters_1, 222)).
ref(t_counters_7, counters_1_expr18, line(counters_1, 222)).
return(counters_1_expr19, m_long_counter_343, line(counters_1, 279)).
method_invoc(counters_1_expr19, m_long_counter_347, line(counters_1, 279)).
return(counters_1_expr20, m_long_path_counters_348, line(counters_1, 288)).
method_invoc(counters_1_expr20, m_long_path_counters_342, line(counters_1, 288)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.FileUtilsTestCase', 'testContentEqualsIgnoreEOL').
trace(trace_1, failure_1, m_content_equals_ignore_eol_35, line(file_utils_1, 448), failure_1, target).
trace(trace_2, trace_1, m_test_content_equals_ignore_eol_200, line(file_utils_test_case_1, 633), failure_1, target).
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

val(p_file_1_78, null, line(file_utils_1, 448)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(path_utils_1, 'org.apache.commons.io.file.PathUtils').
class(file_utils_1, 'org.apache.commons.io.FileUtils').
class(test_utils_1, 'org.apache.commons.io.testtools.TestUtils').
class(directory_walker_1, 'org.apache.commons.io.DirectoryWalker').
class(file_utils_test_case_1, 'org.apache.commons.io.FileUtilsTestCase').
class(counters_1, 'org.apache.commons.io.file.Counters').

%%% Methods
%path_utils_1 - org.apache.commons.io.file.PathUtils
method(m_clean_directory_349, range(path_utils_1, 1265, 457, 39, 48)).
method(m_copy_directory_350, range(path_utils_1, 1728, 730, 50, 64)).
method(m_copy_file_to_directory_351, range(path_utils_1, 2464, 617, 66, 80)).
method(m_count_directory_352, range(path_utils_1, 3087, 471, 82, 91)).
method(m_delete_63, range(path_utils_1, 3564, 895, 93, 111)).
method(m_delete_directory_354, range(path_utils_1, 4465, 449, 113, 122)).
method(m_delete_file_355, range(path_utils_1, 4920, 828, 124, 143)).
method(m_is_empty_359, range(path_utils_1, 5754, 414, 145, 154)).
method(m_is_empty_directory_360, range(path_utils_1, 6174, 541, 156, 170)).
method(m_is_empty_file_361, range(path_utils_1, 6721, 332, 172, 181)).
method(m_visit_file_tree_362, range(path_utils_1, 7059, 760, 183, 200)).
method(m_visit_file_tree_363, range(path_utils_1, 7825, 809, 202, 218)).
method(m_visit_file_tree_364, range(path_utils_1, 8640, 701, 220, 235)).
method(m_path_utils_365, range(path_utils_1, 9347, 108, 237, 242)).
%file_utils_1 - org.apache.commons.io.FileUtils
method(m_byte_count_to_display_size_23, range(file_utils_1, 5157, 1842, 174, 209)).
method(m_byte_count_to_display_size_24, range(file_utils_1, 7005, 847, 211, 228)).
method(m_check_directory_25, range(file_utils_1, 7858, 568, 230, 243)).
method(m_check_equal_sizes_26, range(file_utils_1, 8432, 679, 245, 260)).
method(m_check_file_requirements_27, range(file_utils_1, 9117, 661, 262, 279)).
method(m_checksum_28, range(file_utils_1, 9784, 1260, 281, 306)).
method(m_checksum_crc32_29, range(file_utils_1, 11128, 617, 309, 322)).
method(m_clean_directory_30, range(file_utils_1, 11751, 733, 324, 346)).
method(m_clean_directory_on_exit_33, range(file_utils_1, 12490, 739, 348, 370)).
method(m_content_equals_34, range(file_utils_1, 13313, 1755, 373, 426)).
method(m_content_equals_ignore_eol_35, range(file_utils_1, 15152, 2046, 429, 476)).
method(m_convert_file_collection_to_file_array_37, range(file_utils_1, 17282, 469, 479, 489)).
method(m_copy_directory_38, range(file_utils_1, 17757, 1401, 491, 520)).
method(m_copy_directory_39, range(file_utils_1, 19164, 1590, 522, 554)).
method(m_copy_directory_40, range(file_utils_1, 20760, 2330, 556, 605)).
method(m_copy_directory_41, range(file_utils_1, 23096, 3598, 607, 678)).
method(m_copy_directory_to_directory_42, range(file_utils_1, 26778, 2079, 681, 722)).
method(m_copy_file_43, range(file_utils_1, 28863, 1413, 724, 752)).
method(m_copy_file_44, range(file_utils_1, 30282, 2514, 754, 802)).
method(m_copy_file_45, range(file_utils_1, 32802, 764, 804, 821)).
method(m_copy_file_to_directory_46, range(file_utils_1, 33650, 1277, 824, 849)).
method(m_copy_file_to_directory_47, range(file_utils_1, 34933, 2054, 851, 890)).
method(m_copy_input_stream_to_file_48, range(file_utils_1, 36993, 1239, 892, 913)).
method(m_copy_to_directory_49, range(file_utils_1, 38238, 1810, 915, 954)).
method(m_copy_to_directory_50, range(file_utils_1, 40055, 1441, 957, 988)).
method(m_copy_to_file_51, range(file_utils_1, 41502, 1312, 990, 1011)).
method(m_copy_urlto_file_52, range(file_utils_1, 42898, 1293, 1014, 1036)).
method(m_copy_urlto_file_53, range(file_utils_1, 44197, 1733, 1038, 1064)).
method(m_decode_url_54, range(file_utils_1, 45936, 2094, 1066, 1111)).
method(m_delete_directory_55, range(file_utils_1, 48114, 707, 1114, 1135)).
method(m_delete_directory_on_exit_58, range(file_utils_1, 48827, 580, 1137, 1153)).
method(m_delete_quietly_59, range(file_utils_1, 49413, 1024, 1155, 1188)).
method(m_directory_contains_60, range(file_utils_1, 50443, 1915, 1190, 1236)).
method(m_do_copy_directory_61, range(file_utils_1, 52364, 2341, 1238, 1284)).
method(m_do_copy_file_62, range(file_utils_1, 54711, 1931, 1286, 1320)).
method(m_force_delete_32, range(file_utils_1, 56726, 1243, 1323, 1351)).
method(m_force_delete_on_exit_68, range(file_utils_1, 57975, 561, 1353, 1367)).
method(m_force_mkdir_69, range(file_utils_1, 58542, 1525, 1369, 1401)).
method(m_force_mkdir_parent_70, range(file_utils_1, 60073, 632, 1403, 1418)).
method(m_get_file_71, range(file_utils_1, 60789, 653, 1421, 1441)).
method(m_get_file_72, range(file_utils_1, 61448, 574, 1443, 1463)).
method(m_get_temp_directory_73, range(file_utils_1, 62028, 264, 1465, 1474)).
method(m_get_temp_directory_path_74, range(file_utils_1, 62298, 270, 1476, 1485)).
method(m_get_user_directory_75, range(file_utils_1, 62574, 254, 1487, 1496)).
method(m_get_user_directory_path_76, range(file_utils_1, 62834, 255, 1498, 1507)).
method(m_inner_list_files_77, range(file_utils_1, 63173, 1145, 1510, 1535)).
method(m_inner_list_files_or_directories_78, range(file_utils_1, 64324, 1688, 1537, 1568)).
method(m_is_file_newer_79, range(file_utils_1, 66018, 807, 1570, 1587)).
method(m_is_file_newer_80, range(file_utils_1, 66909, 1130, 1590, 1612)).
method(m_is_file_newer_81, range(file_utils_1, 68045, 894, 1614, 1634)).
method(m_is_file_older_82, range(file_utils_1, 68945, 808, 1636, 1653)).
method(m_is_file_older_83, range(file_utils_1, 69837, 1118, 1656, 1678)).
method(m_is_file_older_84, range(file_utils_1, 70961, 895, 1680, 1700)).
method(m_is_symlink_56, range(file_utils_1, 71862, 1102, 1702, 1730)).
method(m_iterate_files_86, range(file_utils_1, 72970, 1141, 1732, 1754)).
method(m_iterate_files_87, range(file_utils_1, 74117, 857, 1756, 1772)).
method(m_iterate_files_and_dirs_88, range(file_utils_1, 74980, 1295, 1774, 1799)).
method(m_line_iterator_89, range(file_utils_1, 76281, 517, 1801, 1812)).
method(m_line_iterator_90, range(file_utils_1, 76804, 1665, 1814, 1857)).
method(m_list_files_91, range(file_utils_1, 78475, 1762, 1859, 1891)).
method(m_list_files_92, range(file_utils_1, 80244, 1003, 1894, 1915)).
method(m_list_files_and_dirs_93, range(file_utils_1, 81253, 1188, 1917, 1939)).
method(m_move_directory_94, range(file_utils_1, 82447, 1584, 1941, 1975)).
method(m_move_directory_to_directory_95, range(file_utils_1, 84037, 1336, 1977, 2004)).
method(m_move_file_96, range(file_utils_1, 85379, 1468, 2006, 2040)).
method(m_move_file_to_directory_97, range(file_utils_1, 86853, 1309, 2042, 2069)).
method(m_move_to_directory_98, range(file_utils_1, 88168, 1169, 2071, 2095)).
method(m_open_input_stream_99, range(file_utils_1, 89500, 1460, 2100, 2132)).
method(m_open_output_stream_100, range(file_utils_1, 91044, 1171, 2135, 2159)).
method(m_open_output_stream_101, range(file_utils_1, 92221, 1947, 2161, 2202)).
method(m_read_file_to_byte_array_102, range(file_utils_1, 94174, 707, 2204, 2219)).
method(m_read_file_to_string_103, range(file_utils_1, 94887, 609, 2221, 2234)).
method(m_read_file_to_string_104, range(file_utils_1, 95580, 617, 2237, 2251)).
method(m_read_file_to_string_105, range(file_utils_1, 96203, 738, 2253, 2266)).
method(m_read_lines_106, range(file_utils_1, 96947, 649, 2268, 2281)).
method(m_read_lines_107, range(file_utils_1, 97602, 674, 2283, 2297)).
method(m_read_lines_108, range(file_utils_1, 98282, 787, 2299, 2312)).
method(m_set_up_effective_dir_filter_109, range(file_utils_1, 99075, 468, 2314, 2323)).
method(m_set_up_effective_file_filter_110, range(file_utils_1, 99549, 428, 2325, 2333)).
method(m_size_of_111, range(file_utils_1, 100061, 1357, 2336, 2371)).
method(m_size_of0_112, range(file_utils_1, 101424, 320, 2373, 2383)).
method(m_size_of_as_big_integer_113, range(file_utils_1, 101750, 1155, 2385, 2415)).
method(m_size_of_big0_114, range(file_utils_1, 102911, 328, 2417, 2427)).
method(m_size_of_directory_115, range(file_utils_1, 103245, 791, 2429, 2445)).
method(m_size_of_directory0_116, range(file_utils_1, 104042, 610, 2447, 2469)).
method(m_size_of_directory_as_big_integer_117, range(file_utils_1, 104658, 511, 2471, 2482)).
method(m_size_of_directory_big0_118, range(file_utils_1, 105175, 573, 2484, 2504)).
method(m_to_file_119, range(file_utils_1, 105832, 1028, 2507, 2529)).
method(m_to_files_120, range(file_utils_1, 106866, 1567, 2531, 2568)).
method(m_to_suffixes_121, range(file_utils_1, 108517, 521, 2571, 2584)).
method(m_touch_122, range(file_utils_1, 109122, 933, 2587, 2608)).
method(m_to_urls_123, range(file_utils_1, 110061, 676, 2610, 2629)).
method(m_validate_list_files_parameters_124, range(file_utils_1, 110743, 742, 2631, 2648)).
method(m_validate_move_parameters_125, range(file_utils_1, 111491, 1000, 2650, 2672)).
method(m_verified_list_files_31, range(file_utils_1, 112497, 942, 2674, 2697)).
method(m_wait_for_128, range(file_utils_1, 113523, 1325, 2700, 2735)).
method(m_write_129, range(file_utils_1, 114854, 585, 2737, 2749)).
method(m_write_130, range(file_utils_1, 115445, 755, 2751, 2765)).
method(m_write_131, range(file_utils_1, 116206, 509, 2767, 2778)).
method(m_write_132, range(file_utils_1, 116721, 759, 2780, 2795)).
method(m_write_133, range(file_utils_1, 117553, 628, 2799, 2811)).
method(m_write_134, range(file_utils_1, 118238, 906, 2815, 2831)).
method(m_write_byte_array_to_file_135, range(file_utils_1, 119150, 542, 2833, 2847)).
method(m_write_byte_array_to_file_136, range(file_utils_1, 119738, 598, 2851, 2864)).
method(m_write_byte_array_to_file_137, range(file_utils_1, 120404, 641, 2868, 2883)).
method(m_write_byte_array_to_file_138, range(file_utils_1, 121051, 890, 2885, 2904)).
method(m_write_lines_139, range(file_utils_1, 121947, 572, 2906, 2918)).
method(m_write_lines_140, range(file_utils_1, 122525, 732, 2920, 2934)).
method(m_write_lines_141, range(file_utils_1, 123263, 710, 2936, 2950)).
method(m_write_lines_142, range(file_utils_1, 123980, 898, 2953, 2969)).
method(m_write_lines_143, range(file_utils_1, 124884, 956, 2971, 2990)).
method(m_write_lines_144, range(file_utils_1, 125846, 1032, 2992, 3009)).
method(m_write_lines_145, range(file_utils_1, 126884, 1090, 3011, 3031)).
method(m_write_lines_146, range(file_utils_1, 127980, 1231, 3033, 3053)).
method(m_write_string_to_file_147, range(file_utils_1, 129217, 585, 3055, 3066)).
method(m_write_string_to_file_148, range(file_utils_1, 129808, 775, 3068, 3082)).
method(m_write_string_to_file_149, range(file_utils_1, 130589, 783, 3084, 3101)).
method(m_write_string_to_file_150, range(file_utils_1, 131378, 792, 3103, 3119)).
method(m_write_string_to_file_151, range(file_utils_1, 132176, 752, 3121, 3136)).
method(m_write_string_to_file_152, range(file_utils_1, 132934, 949, 3138, 3154)).
method(m_file_utils_153, range(file_utils_1, 133889, 127, 3156, 3161)).
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
method(m_test_utils_366, range(test_utils_1, 1588, 28, 45, 47)).
method(m_create_file_367, range(test_utils_1, 1622, 470, 49, 59)).
method(m_generate_test_data_368, range(test_utils_1, 2098, 377, 61, 69)).
method(m_generate_test_data_159, range(test_utils_1, 2481, 329, 71, 79)).
method(m_create_line_based_file_369, range(test_utils_1, 2816, 533, 81, 90)).
method(m_new_file_370, range(test_utils_1, 3355, 442, 92, 102)).
method(m_check_file_371, range(test_utils_1, 3803, 226, 104, 108)).
method(m_assert_equal_content_372, range(test_utils_1, 4035, 1289, 110, 140)).
method(m_assert_equal_content_373, range(test_utils_1, 5330, 870, 142, 162)).
method(m_assert_equal_content_374, range(test_utils_1, 6206, 860, 164, 184)).
method(m_check_write_375, range(test_utils_1, 7072, 296, 186, 192)).
method(m_check_write_376, range(test_utils_1, 7374, 292, 194, 200)).
method(m_delete_file_377, range(test_utils_1, 7672, 194, 202, 207)).
method(m_sleep_378, range(test_utils_1, 7872, 707, 209, 225)).
method(m_sleep_quietly_379, range(test_utils_1, 8585, 155, 227, 232)).
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
method(m_directory_walker_1, range(directory_walker_1, 9810, 150, 279, 284)).
method(m_directory_walker_2, range(directory_walker_1, 9966, 776, 286, 302)).
method(m_directory_walker_3, range(directory_walker_1, 10748, 1489, 304, 330)).
method(m_walk_4, range(directory_walker_1, 12321, 1279, 333, 361)).
method(m_walk_5, range(directory_walker_1, 13606, 1762, 363, 397)).
method(m_check_if_cancelled_6, range(directory_walker_1, 15452, 1008, 400, 420)).
method(m_handle_is_cancelled_7, range(directory_walker_1, 16466, 1749, 422, 464)).
method(m_handle_cancelled_8, range(directory_walker_1, 18221, 863, 466, 484)).
method(m_handle_start_9, range(directory_walker_1, 19168, 495, 487, 499)).
method(m_handle_directory_10, range(directory_walker_1, 19669, 1051, 501, 522)).
method(m_handle_directory_start_11, range(directory_walker_1, 20726, 622, 524, 538)).
method(m_filter_directory_contents_12, range(directory_walker_1, 21354, 677, 540, 556)).
method(m_handle_file_13, range(directory_walker_1, 22037, 573, 558, 571)).
method(m_handle_restricted_14, range(directory_walker_1, 22616, 593, 573, 587)).
method(m_handle_directory_end_15, range(directory_walker_1, 23215, 610, 589, 603)).
method(m_handle_end_16, range(directory_walker_1, 23831, 406, 605, 616)).
method(m_cancel_exception_17, range(directory_walker_1, 24805, 433, 633, 642)).
method(m_cancel_exception_18, range(directory_walker_1, 25248, 549, 644, 657)).
method(m_get_file_19, range(directory_walker_1, 25807, 216, 659, 666)).
method(m_get_depth_20, range(directory_walker_1, 26033, 219, 668, 675)).
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
method(m_set_up_155, range(file_utils_test_case_1, 3465, 1960, 105, 146)).
method(m_get_name_161, range(file_utils_test_case_1, 5431, 80, 148, 150)).
method(m_test_get_file_164, range(file_utils_test_case_1, 5595, 631, 153, 167)).
method(m_test_get_file__parent_165, range(file_utils_test_case_1, 6232, 925, 169, 190)).
method(m_test_get_temp_directory_path_166, range(file_utils_test_case_1, 7163, 166, 192, 196)).
method(m_test_get_temp_directory_167, range(file_utils_test_case_1, 7335, 202, 198, 202)).
method(m_test_get_user_directory_path_168, range(file_utils_test_case_1, 7543, 161, 204, 208)).
method(m_test_get_user_directory_169, range(file_utils_test_case_1, 7710, 197, 210, 214)).
method(m_test_open_input_stream_exists_170, range(file_utils_test_case_1, 7991, 330, 217, 224)).
method(m_test_open_input_stream_exists_but_is_directory_171, range(file_utils_test_case_1, 8327, 356, 226, 235)).
method(m_test_open_input_stream_not_exists_172, range(file_utils_test_case_1, 8689, 319, 237, 245)).
method(m_open_output_stream_no_parent_173, range(file_utils_test_case_1, 9092, 579, 248, 264)).
method(m_test_open_output_stream_no_parent_create_file_174, range(file_utils_test_case_1, 9677, 130, 266, 269)).
method(m_test_open_output_stream_no_parent_no_file_175, range(file_utils_test_case_1, 9813, 127, 271, 274)).
method(m_test_open_output_stream_exists_176, range(file_utils_test_case_1, 9946, 353, 276, 284)).
method(m_test_open_output_stream_exists_but_is_directory_177, range(file_utils_test_case_1, 10305, 360, 286, 295)).
method(m_test_open_output_stream_not_exists_178, range(file_utils_test_case_1, 10671, 290, 297, 304)).
method(m_test_open_output_stream_not_exists_cannot_create_179, range(file_utils_test_case_1, 10967, 937, 306, 322)).
method(m_test_byte_count_to_display_size_big_integer_180, range(file_utils_test_case_1, 12018, 2221, 326, 358)).
method(m_test_byte_count_to_display_size_long_181, range(file_utils_test_case_1, 14245, 1785, 360, 384)).
method(m_test_to_file1_182, range(file_utils_test_case_1, 16114, 232, 387, 392)).
method(m_test_to_file2_183, range(file_utils_test_case_1, 16352, 256, 394, 399)).
method(m_test_to_file3_184, range(file_utils_test_case_1, 16614, 196, 401, 405)).
method(m_test_to_file4_185, range(file_utils_test_case_1, 16816, 246, 407, 412)).
method(m_test_to_file5_186, range(file_utils_test_case_1, 17085, 251, 415, 420)).
method(m_test_to_file_utf8_187, range(file_utils_test_case_1, 17342, 267, 422, 427)).
method(m_test_decode_url_188, range(file_utils_test_case_1, 17615, 504, 429, 438)).
method(m_test_decode_url_lenient_189, range(file_utils_test_case_1, 18125, 426, 440, 448)).
method(m_test_decode_url_null_safe_190, range(file_utils_test_case_1, 18557, 100, 450, 453)).
method(m_test_decode_url_encoding_utf8_191, range(file_utils_test_case_1, 18663, 156, 455, 458)).
method(m_test_to_files1_192, range(file_utils_test_case_1, 18841, 502, 462, 473)).
method(m_test_to_files2_193, range(file_utils_test_case_1, 19349, 439, 475, 486)).
method(m_test_to_files3_194, range(file_utils_test_case_1, 19794, 188, 488, 494)).
method(m_test_to_files3a_195, range(file_utils_test_case_1, 19988, 210, 496, 502)).
method(m_test_to_files4_196, range(file_utils_test_case_1, 20204, 369, 504, 515)).
method(m_test_to_urls1_197, range(file_utils_test_case_1, 20594, 824, 519, 537)).
method(m_test_to_urls3a_198, range(file_utils_test_case_1, 22085, 209, 559, 565)).
method(m_test_content_equals_199, range(file_utils_test_case_1, 22322, 2331, 569, 626)).
method(m_test_content_equals_ignore_eol_200, range(file_utils_test_case_1, 24659, 3632, 628, 708)).
method(m_test_copy_urlto_file_202, range(file_utils_test_case_1, 28319, 681, 712, 728)).
method(m_test_copy_urlto_file_with_timeout_203, range(file_utils_test_case_1, 29006, 723, 730, 746)).
method(m_test_force_mkdir_204, range(file_utils_test_case_1, 29754, 758, 750, 773)).
method(m_test_force_mkdir_parent_205, range(file_utils_test_case_1, 30518, 766, 775, 793)).
method(m_test_size_of_directory_206, range(file_utils_test_case_1, 31314, 839, 797, 826)).
method(m_create_circular_sym_link_207, range(file_utils_test_case_1, 32159, 520, 828, 840)).
method(m_test_size_of_directory_as_big_integer_208, range(file_utils_test_case_1, 32685, 1817, 842, 895)).
method(m_test_compare_size_of_209, range(file_utils_test_case_1, 34583, 444, 898, 906)).
method(m_test_size_of_210, range(file_utils_test_case_1, 35033, 925, 908, 939)).
method(m_test_size_of_as_big_integer_211, range(file_utils_test_case_1, 35964, 1066, 941, 974)).
method(m_test_is_file_newer_older_212, range(file_utils_test_case_1, 37069, 6800, 977, 1139)).
method(m_test_copy_file1_213, range(file_utils_test_case_1, 43892, 667, 1143, 1157)).
method(m_test_copy_file_to_output_stream_214, range(file_utils_test_case_1, 44565, 444, 1159, 1166)).
method(m_test_copy_file_large_215, range(file_utils_test_case_1, 45015, 1081, 1168, 1193)).
method(m_test_copy_file2_216, range(file_utils_test_case_1, 46102, 654, 1195, 1208)).
method(m_test_copy_to_self_217, range(file_utils_test_case_1, 46762, 473, 1210, 1222)).
method(m_test_copy_file2_without_file_date_preservation_218, range(file_utils_test_case_1, 47241, 700, 1224, 1238)).
method(m_test_copy_directory_to_directory__non_existing_dest_219, range(file_utils_test_case_1, 47947, 1953, 1240, 1282)).
method(m_test_copy_directory_to_non_existing_dest_220, range(file_utils_test_case_1, 49906, 1821, 1284, 1324)).
method(m_test_copy_directory_to_existing_dest_221, range(file_utils_test_case_1, 51733, 1699, 1326, 1365)).
method(m_test_copy_directory_filtered_222, range(file_utils_test_case_1, 53438, 866, 1367, 1383)).
method(m_test_copy_directory_preserve_dates_223, range(file_utils_test_case_1, 54310, 2483, 1385, 1435)).
method(m_test_copy_directory_to_child_224, range(file_utils_test_case_1, 56825, 931, 1438, 1454)).
method(m_test_copy_directory_to_grand_child_225, range(file_utils_test_case_1, 57788, 789, 1457, 1470)).
method(m_test_copy_directory_to_itself_226, range(file_utils_test_case_1, 58665, 267, 1473, 1479)).
method(m_create_files_for_test_copy_directory_227, range(file_utils_test_case_1, 58938, 1282, 1481, 1500)).
method(m_test_copy_directory_errors_228, range(file_utils_test_case_1, 60226, 1164, 1502, 1539)).
method(m_test_copy_to_directory_with_file_229, range(file_utils_test_case_1, 61420, 492, 1543, 1554)).
method(m_test_copy_to_directory_with_file_source_is_null_230, range(file_utils_test_case_1, 61918, 184, 1556, 1559)).
method(m_test_copy_to_directory_with_file_source_does_not_exist_231, range(file_utils_test_case_1, 62108, 228, 1561, 1565)).
method(m_test_copy_to_directory_with_directory_232, range(file_utils_test_case_1, 62342, 1370, 1567, 1596)).
method(m_test_copy_to_directory_with_iterable_233, range(file_utils_test_case_1, 63718, 832, 1598, 1618)).
method(m_test_copy_to_directory_with_iterable_source_is_null_234, range(file_utils_test_case_1, 64556, 194, 1620, 1623)).
method(m_test_copy_to_directory_with_iterable_source_does_not_exist_235, range(file_utils_test_case_1, 64756, 279, 1625, 1630)).
method(m_test_force_delete_afile1_236, range(file_utils_test_case_1, 65061, 364, 1634, 1641)).
method(m_test_force_delete_afile2_237, range(file_utils_test_case_1, 65431, 364, 1643, 1650)).
method(m_test_force_delete_afile3_238, range(file_utils_test_case_1, 65801, 394, 1652, 1661)).
method(m_test_copy_file1_to_dir_239, range(file_utils_test_case_1, 66229, 1134, 1665, 1690)).
method(m_test_copy_file2_to_dir_240, range(file_utils_test_case_1, 67369, 828, 1692, 1710)).
method(m_test_force_delete_dir_241, range(file_utils_test_case_1, 68223, 314, 1714, 1720)).
method(m_test_file_utils_242, range(file_utils_test_case_1, 68601, 991, 1725, 1750)).
method(m_test_touch_243, range(file_utils_test_case_1, 69598, 1443, 1752, 1776)).
method(m_test_list_files_244, range(file_utils_test_case_1, 71047, 1889, 1778, 1829)).
method(m_test_list_files_with_dirs_245, range(file_utils_test_case_1, 72942, 1407, 1831, 1867)).
method(m_test_iterate_files_246, range(file_utils_test_case_1, 74355, 1694, 1869, 1914)).
method(m_test_iterate_files_and_dirs_247, range(file_utils_test_case_1, 76055, 1438, 1916, 1955)).
method(m_test_read_file_to_string_with_default_encoding_248, range(file_utils_test_case_1, 77499, 426, 1957, 1967)).
method(m_test_read_file_to_string_with_encoding_249, range(file_utils_test_case_1, 77931, 433, 1969, 1979)).
method(m_test_read_file_to_byte_array_250, range(file_utils_test_case_1, 78370, 501, 1981, 1995)).
method(m_test_read_lines_251, range(file_utils_test_case_1, 78877, 501, 1997, 2009)).
method(m_test_write_string_to_file1_252, range(file_utils_test_case_1, 79384, 315, 2011, 2017)).
method(m_test_write_string_to_file2_253, range(file_utils_test_case_1, 79705, 316, 2019, 2025)).
method(m_test_write_string_to_file3_254, range(file_utils_test_case_1, 80027, 317, 2027, 2033)).
method(m_test_write_char_sequence1_255, range(file_utils_test_case_1, 80350, 303, 2035, 2041)).
method(m_test_write_char_sequence2_256, range(file_utils_test_case_1, 80659, 304, 2043, 2049)).
method(m_test_write_byte_array_to_file_257, range(file_utils_test_case_1, 80969, 293, 2051, 2057)).
method(m_test_write_byte_array_to_file__with_offset_and_length_258, range(file_utils_test_case_1, 81268, 436, 2059, 2067)).
method(m_test_write_lines_4arg_259, range(file_utils_test_case_1, 81710, 574, 2069, 2081)).
method(m_test_write_lines_4arg__writer_null_data_260, range(file_utils_test_case_1, 82290, 275, 2083, 2089)).
method(m_test_write_lines_4arg_null_separator_261, range(file_utils_test_case_1, 82571, 780, 2091, 2105)).
method(m_test_write_lines_3arg_null_separator_262, range(file_utils_test_case_1, 83357, 774, 2107, 2121)).
method(m_test_write_lines_5args_with_append_option_true__should_not_delete_previous_file_lines_263, range(file_utils_test_case_1, 84137, 751, 2123, 2137)).
method(m_test_write_lines_5args_with_append_option_false__should_delete_previous_file_lines_264, range(file_utils_test_case_1, 84894, 696, 2139, 2152)).
method(m_test_write_lines_4args_with_append_option_true__should_not_delete_previous_file_lines_265, range(file_utils_test_case_1, 85596, 745, 2154, 2168)).
method(m_test_write_lines_4args_with_append_option_false__should_delete_previous_file_lines_266, range(file_utils_test_case_1, 86347, 690, 2170, 2183)).
method(m_test_write_lines_encoding__with_append_option_true__should_not_delete_previous_file_lines_267, range(file_utils_test_case_1, 87044, 748, 2186, 2200)).
method(m_test_write_lines_encoding__with_append_option_false__should_delete_previous_file_lines_268, range(file_utils_test_case_1, 87798, 693, 2202, 2215)).
method(m_test_write_lines_3args_with_append_option_true__should_not_delete_previous_file_lines_269, range(file_utils_test_case_1, 88497, 739, 2217, 2231)).
method(m_test_write_lines_3args_with_append_option_false__should_delete_previous_file_lines_270, range(file_utils_test_case_1, 89242, 684, 2233, 2246)).
method(m_test_write_string_to_file_with_encoding__with_append_option_true__should_not_delete_previous_file_lines_271, range(file_utils_test_case_1, 89932, 599, 2248, 2259)).
method(m_test_write_string_to_file_with_encoding__with_append_option_false__should_delete_previous_file_lines_272, range(file_utils_test_case_1, 90537, 544, 2261, 2271)).
method(m_test_write_string_to_file__with_append_option_true__should_not_delete_previous_file_lines_273, range(file_utils_test_case_1, 91087, 572, 2273, 2284)).
method(m_test_write_string_to_file__with_append_option_false__should_delete_previous_file_lines_274, range(file_utils_test_case_1, 91665, 517, 2286, 2296)).
method(m_test_write_with_encoding__with_append_option_true__should_not_delete_previous_file_lines_275, range(file_utils_test_case_1, 92188, 575, 2298, 2309)).
method(m_test_write_with_encoding__with_append_option_false__should_delete_previous_file_lines_276, range(file_utils_test_case_1, 92769, 520, 2311, 2321)).
method(m_test_write__with_append_option_true__should_not_delete_previous_file_lines_277, range(file_utils_test_case_1, 93295, 548, 2323, 2334)).
method(m_test_write__with_append_option_false__should_delete_previous_file_lines_278, range(file_utils_test_case_1, 93849, 493, 2336, 2346)).
method(m_test_write_byte_array_to_file__with_append_option_true__should_not_delete_previous_file_lines_279, range(file_utils_test_case_1, 94348, 589, 2348, 2359)).
method(m_test_write_byte_array_to_file__with_append_option_false__should_delete_previous_file_lines_280, range(file_utils_test_case_1, 94943, 534, 2361, 2371)).
method(m_test_write_byte_array_to_file__with_offset_and_length__with_append_option_true__should_not_delete_previous_file_lines_281, range(file_utils_test_case_1, 95483, 689, 2373, 2384)).
method(m_test_write_byte_array_to_file__with_offset_and_length__with_append_option_true__should_delete_previous_file_lines_282, range(file_utils_test_case_1, 96178, 649, 2386, 2397)).
method(m_test_checksum_crc32_283, range(file_utils_test_case_1, 96911, 717, 2400, 2416)).
method(m_test_checksum_284, range(file_utils_test_case_1, 97634, 889, 2418, 2437)).
method(m_test_checksum_on_null_file_285, range(file_utils_test_case_1, 98529, 240, 2439, 2447)).
method(m_test_checksum_on_null_checksum_286, range(file_utils_test_case_1, 98775, 489, 2449, 2461)).
method(m_test_checksum_on_directory_287, range(file_utils_test_case_1, 99270, 254, 2463, 2471)).
method(m_test_checksum_double_288, range(file_utils_test_case_1, 99530, 1189, 2473, 2498)).
method(m_test_delete_directory_with_non_directory_289, range(file_utils_test_case_1, 100725, 256, 2500, 2508)).
method(m_test_delete_quietly_for_null_290, range(file_utils_test_case_1, 100987, 197, 2510, 2517)).
method(m_test_delete_quietly_dir_291, range(file_utils_test_case_1, 101190, 970, 2519, 2541)).
method(m_test_delete_quietly_file_292, range(file_utils_test_case_1, 102166, 743, 2543, 2561)).
method(m_test_delete_quietly_non_existent_293, range(file_utils_test_case_1, 102915, 318, 2563, 2573)).
method(m_test_move_file__rename_294, range(file_utils_test_case_1, 103239, 312, 2575, 2582)).
method(m_test_move_file__copy_delete_295, range(file_utils_test_case_1, 103557, 656, 2584, 2600)).
method(m_rename_to_296, range(file_utils_test_case_1, 103933, 105, 2592, 2595)).
method(m_test_move_file__copy_delete__failed_297, range(file_utils_test_case_1, 104219, 981, 2602, 2630)).
method(m_rename_to_298, range(file_utils_test_case_1, 104602, 105, 2610, 2613)).
method(m_delete_299, range(file_utils_test_case_1, 104757, 91, 2616, 2619)).
method(m_test_move_file__errors_300, range(file_utils_test_case_1, 105206, 2307, 2632, 2688)).
method(m_test_move_file_to_directory_301, range(file_utils_test_case_1, 107519, 530, 2690, 2700)).
method(m_test_move_file_to_directory__errors_302, range(file_utils_test_case_1, 108055, 2188, 2702, 2754)).
method(m_test_move_directory__rename_303, range(file_utils_test_case_1, 110250, 1367, 2757, 2788)).
method(m_test_move_directory__copy_delete_304, range(file_utils_test_case_1, 111623, 1605, 2790, 2830)).
method(m_rename_to_305, range(file_utils_test_case_1, 111919, 108, 2798, 2801)).
method(m_test_move_directory__errors_306, range(file_utils_test_case_1, 113234, 1996, 2832, 2880)).
method(m_test_move_directory_to_directory_307, range(file_utils_test_case_1, 115236, 1599, 2882, 2916)).
method(m_test_move_directory_to_directory__errors_308, range(file_utils_test_case_1, 116841, 2213, 2918, 2970)).
method(m_test_move_to_directory_309, range(file_utils_test_case_1, 119060, 1534, 2972, 3004)).
method(m_test_move_to_directory__errors_310, range(file_utils_test_case_1, 120600, 951, 3006, 3028)).
method(m_test_io300_311, range(file_utils_test_case_1, 121557, 518, 3030, 3044)).
method(m_test_io276_312, range(file_utils_test_case_1, 122081, 441, 3046, 3054)).
method(m_shorter_file_313, range(file_utils_test_case_1, 122707, 82, 3060, 3062)).
method(m_length_314, range(file_utils_test_case_1, 122799, 89, 3064, 3067)).
method(m_test_incorrect_output_size_315, range(file_utils_test_case_1, 122989, 552, 3071, 3084)).
method(m_list_directory_walker_154, range(file_utils_test_case_1, 123724, 54, 3090, 3092)).
method(m_list_316, range(file_utils_test_case_1, 123788, 201, 3094, 3098)).
method(m_handle_directory_start_317, range(file_utils_test_case_1, 123999, 303, 3100, 3106)).
method(m_handle_file_318, range(file_utils_test_case_1, 124312, 171, 3108, 3111)).
%counters_1 - org.apache.commons.io.file.Counters
method(m_abstract_path_counters_319, range(counters_1, 1296, 534, 38, 51)).
method(m_get_byte_counter_321, range(counters_1, 1840, 93, 53, 56)).
method(m_get_directory_counter_322, range(counters_1, 1943, 103, 58, 61)).
method(m_get_file_counter_323, range(counters_1, 2056, 229, 63, 71)).
method(m_to_string_324, range(counters_1, 2295, 253, 73, 77)).
method(m_add_325, range(counters_1, 2740, 118, 88, 92)).
method(m_get_326, range(counters_1, 2868, 90, 94, 97)).
method(m_get_big_integer_327, range(counters_1, 2968, 89, 99, 102)).
method(m_get_long_328, range(counters_1, 3067, 108, 104, 107)).
method(m_increment_329, range(counters_1, 3185, 100, 109, 112)).
method(m_to_string_330, range(counters_1, 3295, 91, 114, 117)).
method(m_big_integer_path_counters_331, range(counters_1, 3590, 229, 125, 130)).
method(m_add_332, range(counters_1, 3914, 144, 139, 144)).
method(m_get_65, range(counters_1, 4068, 127, 146, 151)).
method(m_get_big_integer_333, range(counters_1, 4205, 155, 153, 158)).
method(m_get_long_334, range(counters_1, 4370, 131, 160, 165)).
method(m_increment_335, range(counters_1, 4511, 78, 167, 170)).
method(m_add_336, range(counters_1, 4745, 88, 181, 185)).
method(m_get_337, range(counters_1, 4843, 73, 187, 190)).
method(m_get_big_integer_338, range(counters_1, 4926, 109, 192, 195)).
method(m_get_long_339, range(counters_1, 5045, 91, 197, 200)).
method(m_increment_340, range(counters_1, 5146, 74, 202, 205)).
method(m_to_string_341, range(counters_1, 5230, 95, 207, 210)).
method(m_long_path_counters_342, range(counters_1, 5517, 205, 218, 223)).
method(m_get_byte_counter_344, range(counters_1, 5858, 131, 232, 237)).
method(m_get_directory_counter_67, range(counters_1, 5999, 146, 239, 244)).
method(m_get_file_counter_66, range(counters_1, 6155, 131, 246, 251)).
method(m_big_integer_counter_345, range(counters_1, 6299, 194, 255, 262)).
method(m_big_integer_path_counters_346, range(counters_1, 6499, 219, 264, 271)).
method(m_long_counter_343, range(counters_1, 6724, 170, 273, 280)).
method(m_long_path_counters_348, range(counters_1, 6900, 207, 282, 289)).

%%% Blocks
%path_utils_1 - org.apache.commons.io.file.PathUtils
block(path_utils_1_block1, block, path_utils_1_code3, body, range(path_utils_1, 4369, 90, 109, 111)).
block(path_utils_1_block2, block, path_utils_1_code4, body, range(path_utils_1, 5309, 439, 132, 143)).
block(path_utils_1_block3, block, path_utils_1_stmt2, then_statement, range(path_utils_1, 5348, 73, 133, 135)).
block(path_utils_1_block4, block, path_utils_1_stmt5, then_statement, range(path_utils_1, 5600, 115, 138, 141)).
%file_utils_1 - org.apache.commons.io.FileUtils
block(file_utils_1_block1, block, file_utils_1_code62, body, range(file_utils_1, 12110, 374, 331, 346)).
block(file_utils_1_block2, block, file_utils_1_stmt3, body, range(file_utils_1, 12248, 157, 335, 341)).
block(file_utils_1_block3, block, file_utils_1_stmt4, body, range(file_utils_1, 12266, 50, 336, 338)).
block(file_utils_1_block4, block, file_utils_1_code73, body, range(file_utils_1, 12347, 48, 338, 340)).
block(file_utils_1_block5, block, file_utils_1_stmt6, then_statement, range(file_utils_1, 12438, 40, 343, 345)).
block(file_utils_1_block6, block, file_utils_1_code74, body, range(file_utils_1, 16013, 1185, 447, 476)).
block(file_utils_1_block7, block, file_utils_1_code78, body, range(file_utils_1, 48468, 353, 1121, 1135)).
block(file_utils_1_block8, block, file_utils_1_stmt8, then_statement, range(file_utils_1, 48503, 31, 1122, 1124)).
block(file_utils_1_block9, block, file_utils_1_stmt9, then_statement, range(file_utils_1, 48571, 50, 1126, 1128)).
block(file_utils_1_block10, block, file_utils_1_stmt11, then_statement, range(file_utils_1, 48656, 159, 1130, 1134)).
block(file_utils_1_block11, block, file_utils_1_code79, body, range(file_utils_1, 57478, 491, 1339, 1351)).
block(file_utils_1_block12, block, file_utils_1_stmt12, body, range(file_utils_1, 57544, 73, 1341, 1343)).
block(file_utils_1_block13, block, file_utils_1_code80, body, range(file_utils_1, 57640, 83, 1343, 1345)).
block(file_utils_1_block14, block, file_utils_1_stmt14, then_statement, range(file_utils_1, 57830, 133, 1347, 1350)).
block(file_utils_1_block15, block, file_utils_1_code81, body, range(file_utils_1, 72798, 166, 1725, 1730)).
block(file_utils_1_block16, block, file_utils_1_stmt15, then_statement, range(file_utils_1, 72826, 80, 1726, 1728)).
block(file_utils_1_block17, block, file_utils_1_code82, body, range(file_utils_1, 112862, 577, 2681, 2697)).
block(file_utils_1_block18, block, file_utils_1_stmt17, then_statement, range(file_utils_1, 112897, 134, 2682, 2685)).
block(file_utils_1_block19, block, file_utils_1_stmt18, then_statement, range(file_utils_1, 113071, 138, 2687, 2690)).
block(file_utils_1_block20, block, file_utils_1_stmt20, then_statement, range(file_utils_1, 113290, 121, 2693, 2695)).
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
block(test_utils_1_block1, block, test_utils_1_code3, body, range(test_utils_1, 2589, 221, 72, 79)).
block(test_utils_1_block2, block, test_utils_1_stmt1, body, range(test_utils_1, 2630, 174, 73, 78)).
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
block(directory_walker_1_block1, block, directory_walker_1_code3, body, range(directory_walker_1, 9929, 31, 282, 284)).
block(directory_walker_1_block2, block, directory_walker_1_code4, body, range(directory_walker_1, 10667, 75, 299, 302)).
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
block(file_utils_test_case_1_block1, block, file_utils_test_case_1_code23, body, range(file_utils_test_case_1, 3518, 1907, 106, 146)).
block(file_utils_test_case_1_block2, block, file_utils_test_case_1_stmt5, then_statement, range(file_utils_test_case_1, 3801, 145, 112, 115)).
block(file_utils_test_case_1_block3, block, file_utils_test_case_1_stmt6, body, range(file_utils_test_case_1, 4072, 75, 117, 119)).
block(file_utils_test_case_1_block4, block, file_utils_test_case_1_stmt8, then_statement, range(file_utils_test_case_1, 4197, 145, 120, 123)).
block(file_utils_test_case_1_block5, block, file_utils_test_case_1_stmt9, body, range(file_utils_test_case_1, 4468, 75, 125, 127)).
block(file_utils_test_case_1_block6, block, file_utils_test_case_1_stmt13, then_statement, range(file_utils_test_case_1, 4679, 145, 130, 133)).
block(file_utils_test_case_1_block7, block, file_utils_test_case_1_stmt14, body, range(file_utils_test_case_1, 4950, 75, 135, 137)).
block(file_utils_test_case_1_block8, block, file_utils_test_case_1_stmt16, then_statement, range(file_utils_test_case_1, 5075, 145, 138, 141)).
block(file_utils_test_case_1_block9, block, file_utils_test_case_1_stmt17, body, range(file_utils_test_case_1, 5345, 74, 143, 145)).
block(file_utils_test_case_1_block10, block, file_utils_test_case_1_code40, body, range(file_utils_test_case_1, 5456, 55, 148, 150)).
block(file_utils_test_case_1_block11, block, file_utils_test_case_1_code41, body, range(file_utils_test_case_1, 24727, 3564, 629, 708)).
%counters_1 - org.apache.commons.io.file.Counters
block(counters_1_block1, block, counters_1_code4, body, range(counters_1, 1656, 174, 46, 51)).
block(counters_1_block2, block, counters_1_code5, body, range(counters_1, 1890, 43, 54, 56)).
block(counters_1_block3, block, counters_1_code6, body, range(counters_1, 2237, 48, 69, 71)).
block(counters_1_block4, block, counters_1_code8, body, range(counters_1, 4795, 38, 182, 185)).
block(counters_1_block5, block, counters_1_code9, body, range(counters_1, 4879, 37, 188, 190)).
block(counters_1_block6, block, counters_1_code10, body, range(counters_1, 5188, 32, 203, 205)).
block(counters_1_block7, block, counters_1_code12, body, range(counters_1, 5620, 102, 221, 223)).
block(counters_1_block8, block, counters_1_code13, body, range(counters_1, 6853, 41, 278, 280)).
block(counters_1_block9, block, counters_1_code15, body, range(counters_1, 7061, 46, 287, 289)).

%%% Statements
%path_utils_1 - org.apache.commons.io.file.PathUtils
stmt(path_utils_1_stmt1, return_statement, path_utils_1_block1, (statements, 0), range(path_utils_1, 4379, 74, 110, 110)).
stmt(path_utils_1_stmt2, if_statement, path_utils_1_block2, (statements, 0), range(path_utils_1, 5319, 102, 133, 135)).
stmt(path_utils_1_stmt3, variable_declaration_statement, path_utils_1_block2, (statements, 1), range(path_utils_1, 5430, 60, 136, 136)).
stmt(path_utils_1_stmt4, variable_declaration_statement, path_utils_1_block2, (statements, 2), range(path_utils_1, 5499, 60, 137, 137)).
stmt(path_utils_1_stmt5, if_statement, path_utils_1_block2, (statements, 3), range(path_utils_1, 5568, 147, 138, 141)).
stmt(path_utils_1_stmt6, expression_statement, path_utils_1_block4, (statements, 0), range(path_utils_1, 5614, 40, 139, 139)).
stmt(path_utils_1_stmt7, expression_statement, path_utils_1_block4, (statements, 1), range(path_utils_1, 5667, 38, 140, 140)).
stmt(path_utils_1_stmt8, return_statement, path_utils_1_block2, (statements, 4), range(path_utils_1, 5724, 18, 142, 142)).
%file_utils_1 - org.apache.commons.io.FileUtils
stmt(file_utils_1_stmt1, variable_declaration_statement, file_utils_1_block1, (statements, 0), range(file_utils_1, 12120, 50, 332, 332)).
stmt(file_utils_1_stmt2, variable_declaration_statement, file_utils_1_block1, (statements, 1), range(file_utils_1, 12180, 29, 334, 334)).
stmt(file_utils_1_stmt3, enhanced_for_statement, file_utils_1_block1, (statements, 2), range(file_utils_1, 12218, 187, 335, 341)).
stmt(file_utils_1_stmt4, try_statement, file_utils_1_block2, (statements, 0), range(file_utils_1, 12262, 133, 336, 340)).
stmt(file_utils_1_stmt5, expression_statement, file_utils_1_block3, (statements, 0), range(file_utils_1, 12284, 18, 337, 337)).
stmt(file_utils_1_stmt6, if_statement, file_utils_1_block1, (statements, 3), range(file_utils_1, 12415, 63, 343, 345)).
stmt(file_utils_1_stmt7, variable_declaration_statement, file_utils_1_block6, (statements, 0), range(file_utils_1, 16023, 43, 448, 448)).
stmt(file_utils_1_stmt8, if_statement, file_utils_1_block7, (statements, 0), range(file_utils_1, 48478, 56, 1122, 1124)).
stmt(file_utils_1_stmt9, if_statement, file_utils_1_block7, (statements, 1), range(file_utils_1, 48544, 77, 1126, 1128)).
stmt(file_utils_1_stmt10, expression_statement, file_utils_1_block9, (statements, 0), range(file_utils_1, 48585, 26, 1127, 1127)).
stmt(file_utils_1_stmt11, if_statement, file_utils_1_block7, (statements, 2), range(file_utils_1, 48631, 184, 1130, 1134)).
stmt(file_utils_1_stmt12, try_statement, file_utils_1_block11, (statements, 1), range(file_utils_1, 57540, 183, 1341, 1345)).
stmt(file_utils_1_stmt13, expression_statement, file_utils_1_block12, (statements, 0), range(file_utils_1, 57558, 49, 1342, 1342)).
stmt(file_utils_1_stmt14, if_statement, file_utils_1_block11, (statements, 2), range(file_utils_1, 57733, 230, 1347, 1350)).
stmt(file_utils_1_stmt15, if_statement, file_utils_1_block15, (statements, 0), range(file_utils_1, 72808, 98, 1726, 1728)).
stmt(file_utils_1_stmt16, return_statement, file_utils_1_block15, (statements, 1), range(file_utils_1, 72915, 43, 1729, 1729)).
stmt(file_utils_1_stmt17, if_statement, file_utils_1_block17, (statements, 0), range(file_utils_1, 112872, 159, 2682, 2685)).
stmt(file_utils_1_stmt18, if_statement, file_utils_1_block17, (statements, 1), range(file_utils_1, 113041, 168, 2687, 2690)).
stmt(file_utils_1_stmt19, variable_declaration_statement, file_utils_1_block17, (statements, 2), range(file_utils_1, 113219, 43, 2692, 2692)).
stmt(file_utils_1_stmt20, if_statement, file_utils_1_block17, (statements, 3), range(file_utils_1, 113271, 140, 2693, 2695)).
stmt(file_utils_1_stmt21, return_statement, file_utils_1_block17, (statements, 4), range(file_utils_1, 113420, 13, 2696, 2696)).
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
stmt(test_utils_1_stmt1, for_statement, test_utils_1_block1, (statements, 0), range(test_utils_1, 2599, 205, 73, 78)).
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
stmt(directory_walker_1_stmt1, constructor_invocation, directory_walker_1_block1, (statements, 0), range(directory_walker_1, 9939, 15, 283, 283)).
stmt(directory_walker_1_stmt2, expression_statement, directory_walker_1_block2, (statements, 0), range(directory_walker_1, 10677, 21, 300, 300)).
stmt(directory_walker_1_stmt3, expression_statement, directory_walker_1_block2, (statements, 1), range(directory_walker_1, 10707, 29, 301, 301)).
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
stmt(file_utils_test_case_1_stmt1, expression_statement, file_utils_test_case_1_block1, (statements, 0), range(file_utils_test_case_1, 3528, 56, 107, 107)).
stmt(file_utils_test_case_1_stmt2, expression_statement, file_utils_test_case_1_block1, (statements, 1), range(file_utils_test_case_1, 3593, 57, 108, 108)).
stmt(file_utils_test_case_1_stmt3, expression_statement, file_utils_test_case_1_block1, (statements, 2), range(file_utils_test_case_1, 3660, 41, 110, 110)).
stmt(file_utils_test_case_1_stmt4, expression_statement, file_utils_test_case_1_block1, (statements, 3), range(file_utils_test_case_1, 3710, 41, 111, 111)).
stmt(file_utils_test_case_1_stmt5, if_statement, file_utils_test_case_1_block1, (statements, 4), range(file_utils_test_case_1, 3760, 186, 112, 115)).
stmt(file_utils_test_case_1_stmt6, try_statement, file_utils_test_case_1_block1, (statements, 5), range(file_utils_test_case_1, 3955, 192, 116, 119)).
stmt(file_utils_test_case_1_stmt7, expression_statement, file_utils_test_case_1_block3, (statements, 0), range(file_utils_test_case_1, 4086, 51, 118, 118)).
stmt(file_utils_test_case_1_stmt8, if_statement, file_utils_test_case_1_block1, (statements, 6), range(file_utils_test_case_1, 4156, 186, 120, 123)).
stmt(file_utils_test_case_1_stmt9, try_statement, file_utils_test_case_1_block1, (statements, 7), range(file_utils_test_case_1, 4351, 192, 124, 127)).
stmt(file_utils_test_case_1_stmt10, expression_statement, file_utils_test_case_1_block5, (statements, 0), range(file_utils_test_case_1, 4482, 51, 126, 126)).
stmt(file_utils_test_case_1_stmt11, expression_statement, file_utils_test_case_1_block1, (statements, 8), range(file_utils_test_case_1, 4552, 43, 128, 128)).
stmt(file_utils_test_case_1_stmt12, expression_statement, file_utils_test_case_1_block1, (statements, 9), range(file_utils_test_case_1, 4604, 25, 129, 129)).
stmt(file_utils_test_case_1_stmt13, if_statement, file_utils_test_case_1_block1, (statements, 10), range(file_utils_test_case_1, 4638, 186, 130, 133)).
stmt(file_utils_test_case_1_stmt14, try_statement, file_utils_test_case_1_block1, (statements, 11), range(file_utils_test_case_1, 4833, 192, 134, 137)).
stmt(file_utils_test_case_1_stmt15, expression_statement, file_utils_test_case_1_block7, (statements, 0), range(file_utils_test_case_1, 4964, 51, 136, 136)).
stmt(file_utils_test_case_1_stmt16, if_statement, file_utils_test_case_1_block1, (statements, 12), range(file_utils_test_case_1, 5034, 186, 138, 141)).
stmt(file_utils_test_case_1_stmt17, try_statement, file_utils_test_case_1_block1, (statements, 13), range(file_utils_test_case_1, 5229, 190, 142, 145)).
stmt(file_utils_test_case_1_stmt18, expression_statement, file_utils_test_case_1_block9, (statements, 0), range(file_utils_test_case_1, 5359, 50, 144, 144)).
stmt(file_utils_test_case_1_stmt19, return_statement, file_utils_test_case_1_block10, (statements, 0), range(file_utils_test_case_1, 5466, 39, 149, 149)).
stmt(file_utils_test_case_1_stmt20, variable_declaration_statement, file_utils_test_case_1_block11, (statements, 0), range(file_utils_test_case_1, 24767, 56, 631, 631)).
stmt(file_utils_test_case_1_stmt21, variable_declaration_statement, file_utils_test_case_1_block11, (statements, 1), range(file_utils_test_case_1, 24832, 62, 632, 632)).
stmt(file_utils_test_case_1_stmt22, expression_statement, file_utils_test_case_1_block11, (statements, 2), range(file_utils_test_case_1, 24903, 63, 633, 633)).
%counters_1 - org.apache.commons.io.file.Counters
stmt(counters_1_stmt1, super_constructor_invocation, counters_1_block1, (statements, 0), range(counters_1, 1670, 8, 47, 47)).
stmt(counters_1_stmt2, expression_statement, counters_1_block1, (statements, 1), range(counters_1, 1691, 31, 48, 48)).
stmt(counters_1_stmt3, expression_statement, counters_1_block1, (statements, 2), range(counters_1, 1735, 41, 49, 49)).
stmt(counters_1_stmt4, expression_statement, counters_1_block1, (statements, 3), range(counters_1, 1789, 31, 50, 50)).
stmt(counters_1_stmt5, return_statement, counters_1_block2, (statements, 0), range(counters_1, 1904, 19, 55, 55)).
stmt(counters_1_stmt6, return_statement, counters_1_block3, (statements, 0), range(counters_1, 2251, 24, 70, 70)).
stmt(counters_1_stmt7, expression_statement, counters_1_block4, (statements, 0), range(counters_1, 4809, 13, 183, 183)).
stmt(counters_1_stmt8, return_statement, counters_1_block5, (statements, 0), range(counters_1, 4893, 13, 189, 189)).
stmt(counters_1_stmt9, expression_statement, counters_1_block6, (statements, 0), range(counters_1, 5202, 8, 204, 204)).
stmt(counters_1_stmt10, super_constructor_invocation, counters_1_block7, (statements, 0), range(counters_1, 5634, 78, 222, 222)).
stmt(counters_1_stmt11, return_statement, counters_1_block8, (statements, 0), range(counters_1, 6863, 25, 279, 279)).
stmt(counters_1_stmt12, return_statement, counters_1_block9, (statements, 0), range(counters_1, 7071, 30, 288, 288)).

%%% Expressions
%path_utils_1 - org.apache.commons.io.file.PathUtils
expr(path_utils_1_expr1, conditional_expression, path_utils_1_stmt1, expression, range(path_utils_1, 4386, 66, 110, 110), "Files.isDirectory(path) ? deleteDirectory(path) : deleteFile(path)").
expr(path_utils_1_expr2, method_invocation, path_utils_1_expr1, expression, range(path_utils_1, 4386, 23, 110, 110), "Files.isDirectory(path)").
expr(path_utils_1_expr3, method_invocation, path_utils_1_expr1, then_expression, range(path_utils_1, 4412, 21, 110, 110), "deleteDirectory(path)").
expr(path_utils_1_expr4, method_invocation, path_utils_1_expr1, else_expression, range(path_utils_1, 4436, 16, 110, 110), "deleteFile(path)").
expr(path_utils_1_expr5, method_invocation, path_utils_1_stmt2, expression, range(path_utils_1, 5323, 23, 133, 133), "Files.isDirectory(file)").
expr(path_utils_1_expr6, method_invocation, path_utils_1_code7, initializer, range(path_utils_1, 5462, 27, 136, 136), "Counters.longPathCounters()").
expr(path_utils_1_expr7, conditional_expression, path_utils_1_code10, initializer, range(path_utils_1, 5517, 41, 137, 137), "Files.exists(file) ? Files.size(file) : 0").
expr(path_utils_1_expr8, method_invocation, path_utils_1_expr7, expression, range(path_utils_1, 5517, 18, 137, 137), "Files.exists(file)").
expr(path_utils_1_expr9, method_invocation, path_utils_1_expr7, then_expression, range(path_utils_1, 5538, 16, 137, 137), "Files.size(file)").
expr(path_utils_1_expr10, method_invocation, path_utils_1_stmt5, expression, range(path_utils_1, 5572, 26, 138, 138), "Files.deleteIfExists(file)").
expr(path_utils_1_expr11, method_invocation, path_utils_1_stmt6, expression, range(path_utils_1, 5614, 39, 139, 139), "pathCounts.getFileCounter().increment()").
expr(path_utils_1_expr12, method_invocation, path_utils_1_expr11, expression, range(path_utils_1, 5614, 27, 139, 139), "pathCounts.getFileCounter()").
expr(path_utils_1_expr14, method_invocation, path_utils_1_expr13, expression, range(path_utils_1, 5667, 27, 140, 140), "pathCounts.getByteCounter()").
expr(path_utils_1_expr13, method_invocation, path_utils_1_stmt7, expression, range(path_utils_1, 5667, 37, 140, 140), "pathCounts.getByteCounter().add(size)").
%file_utils_1 - org.apache.commons.io.FileUtils
expr(file_utils_1_expr1, method_invocation, file_utils_1_code8, initializer, range(file_utils_1, 3236, 26, 96, 96), "BigInteger.valueOf(ONE_KB)").
expr(file_utils_1_expr2, method_invocation, file_utils_1_code14, initializer, range(file_utils_1, 3509, 29, 108, 108), "ONE_KB_BI.multiply(ONE_KB_BI)").
expr(file_utils_1_expr3, method_invocation, file_utils_1_code20, initializer, range(file_utils_1, 3785, 29, 120, 120), "ONE_KB_BI.multiply(ONE_MB_BI)").
expr(file_utils_1_expr4, method_invocation, file_utils_1_code26, initializer, range(file_utils_1, 4061, 29, 132, 132), "ONE_KB_BI.multiply(ONE_GB_BI)").
expr(file_utils_1_expr5, method_invocation, file_utils_1_code32, initializer, range(file_utils_1, 4337, 29, 144, 144), "ONE_KB_BI.multiply(ONE_TB_BI)").
expr(file_utils_1_expr6, method_invocation, file_utils_1_code38, initializer, range(file_utils_1, 4613, 29, 156, 156), "ONE_KB_BI.multiply(ONE_PB_BI)").
expr(file_utils_1_expr7, method_invocation, file_utils_1_code44, initializer, range(file_utils_1, 4748, 63, 161, 161), "BigInteger.valueOf(ONE_KB).multiply(BigInteger.valueOf(ONE_EB))").
expr(file_utils_1_expr9, method_invocation, file_utils_1_expr7, expression, range(file_utils_1, 4748, 26, 161, 161), "BigInteger.valueOf(ONE_KB)").
expr(file_utils_1_expr8, method_invocation, file_utils_1_expr7, (arguments, 0), range(file_utils_1, 4784, 26, 161, 161), "BigInteger.valueOf(ONE_EB)").
expr(file_utils_1_expr10, method_invocation, file_utils_1_code50, initializer, range(file_utils_1, 4917, 26, 166, 166), "ONE_KB_BI.multiply(ONE_ZB)").
expr(file_utils_1_expr11, array_creation, file_utils_1_code58, initializer, range(file_utils_1, 5061, 11, 171, 171), "new File[0]").
expr(file_utils_1_expr12, method_invocation, file_utils_1_code67, initializer, range(file_utils_1, 12141, 28, 332, 332), "verifiedListFiles(directory)").
expr(file_utils_1_expr13, method_invocation, file_utils_1_stmt5, expression, range(file_utils_1, 12284, 17, 337, 337), "forceDelete(file)").
expr(file_utils_1_expr14, infix_expression, file_utils_1_stmt6, expression, range(file_utils_1, 12419, 17, 343, 343), "null != exception").
expr(file_utils_1_expr15, method_invocation, file_utils_1_code77, initializer, range(file_utils_1, 16051, 14, 448, 448), "file1.exists()").
expr(file_utils_1_expr16, prefix_expression, file_utils_1_stmt8, expression, range(file_utils_1, 48482, 19, 1122, 1122), "!directory.exists()").
expr(file_utils_1_expr17, method_invocation, file_utils_1_expr16, operand, range(file_utils_1, 48483, 18, 1122, 1122), "directory.exists()").
expr(file_utils_1_expr18, prefix_expression, file_utils_1_stmt9, expression, range(file_utils_1, 48548, 21, 1126, 1126), "!isSymlink(directory)").
expr(file_utils_1_expr19, method_invocation, file_utils_1_expr18, operand, range(file_utils_1, 48549, 20, 1126, 1126), "isSymlink(directory)").
expr(file_utils_1_expr20, method_invocation, file_utils_1_stmt10, expression, range(file_utils_1, 48585, 25, 1127, 1127), "cleanDirectory(directory)").
expr(file_utils_1_expr21, prefix_expression, file_utils_1_stmt11, expression, range(file_utils_1, 48635, 19, 1130, 1130), "!directory.delete()").
expr(file_utils_1_expr22, method_invocation, file_utils_1_expr21, operand, range(file_utils_1, 48636, 18, 1130, 1130), "directory.delete()").
expr(file_utils_1_expr23, assignment, file_utils_1_stmt13, expression, range(file_utils_1, 57558, 48, 1342, 1342), "deleteCounters=PathUtils.delete(file.toPath())").
expr(file_utils_1_expr24, method_invocation, file_utils_1_expr23, right_hand_side, range(file_utils_1, 57575, 31, 1342, 1342), "PathUtils.delete(file.toPath())").
expr(file_utils_1_expr25, method_invocation, file_utils_1_expr24, (arguments, 0), range(file_utils_1, 57592, 13, 1342, 1342), "file.toPath()").
expr(file_utils_1_expr27, infix_expression, file_utils_1_expr26, left_operand, range(file_utils_1, 57737, 41, 1347, 1347), "deleteCounters.getFileCounter().get() < 1").
expr(file_utils_1_expr26, infix_expression, file_utils_1_stmt14, expression, range(file_utils_1, 57737, 91, 1347, 1347), "deleteCounters.getFileCounter().get() < 1 && deleteCounters.getDirectoryCounter().get() < 1").
expr(file_utils_1_expr29, method_invocation, file_utils_1_expr28, expression, range(file_utils_1, 57737, 31, 1347, 1347), "deleteCounters.getFileCounter()").
expr(file_utils_1_expr28, method_invocation, file_utils_1_expr27, left_operand, range(file_utils_1, 57737, 37, 1347, 1347), "deleteCounters.getFileCounter().get()").
expr(file_utils_1_expr30, infix_expression, file_utils_1_expr26, right_operand, range(file_utils_1, 57782, 46, 1347, 1347), "deleteCounters.getDirectoryCounter().get() < 1").
expr(file_utils_1_expr32, method_invocation, file_utils_1_expr31, expression, range(file_utils_1, 57782, 36, 1347, 1347), "deleteCounters.getDirectoryCounter()").
expr(file_utils_1_expr31, method_invocation, file_utils_1_expr30, left_operand, range(file_utils_1, 57782, 42, 1347, 1347), "deleteCounters.getDirectoryCounter().get()").
expr(file_utils_1_expr33, infix_expression, file_utils_1_stmt15, expression, range(file_utils_1, 72812, 12, 1726, 1726), "file == null").
expr(file_utils_1_expr34, method_invocation, file_utils_1_stmt16, expression, range(file_utils_1, 72922, 35, 1729, 1729), "Files.isSymbolicLink(file.toPath())").
expr(file_utils_1_expr35, method_invocation, file_utils_1_expr34, (arguments, 0), range(file_utils_1, 72943, 13, 1729, 1729), "file.toPath()").
expr(file_utils_1_expr36, prefix_expression, file_utils_1_stmt17, expression, range(file_utils_1, 112876, 19, 2682, 2682), "!directory.exists()").
expr(file_utils_1_expr37, method_invocation, file_utils_1_expr36, operand, range(file_utils_1, 112877, 18, 2682, 2682), "directory.exists()").
expr(file_utils_1_expr38, prefix_expression, file_utils_1_stmt18, expression, range(file_utils_1, 113045, 24, 2687, 2687), "!directory.isDirectory()").
expr(file_utils_1_expr39, method_invocation, file_utils_1_expr38, operand, range(file_utils_1, 113046, 23, 2687, 2687), "directory.isDirectory()").
expr(file_utils_1_expr40, method_invocation, file_utils_1_code87, initializer, range(file_utils_1, 113240, 21, 2692, 2692), "directory.listFiles()").
expr(file_utils_1_expr41, infix_expression, file_utils_1_stmt20, expression, range(file_utils_1, 113275, 13, 2693, 2693), "files == null").
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
expr(test_utils_1_expr1, variable_declaration_expression, test_utils_1_stmt1, (initializers, 0), range(test_utils_1, 2604, 9, 73, 73), "int i=0").
expr(test_utils_1_expr2, infix_expression, test_utils_1_stmt1, expression, range(test_utils_1, 2615, 8, 73, 73), "i < size").
expr(test_utils_1_expr3, postfix_expression, test_utils_1_stmt1, (updaters, 0), range(test_utils_1, 2625, 3, 73, 73), "i++").
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
expr(directory_walker_1_expr1, constructor_invocation, directory_walker_1_block1, (statements, 0), range(directory_walker_1, 9939, 15, 283, 283), "this(null,-1);").
expr(directory_walker_1_expr2, prefix_expression, directory_walker_1_stmt1, (arguments, 1), range(directory_walker_1, 9950, 2, 283, 283), "-1").
expr(directory_walker_1_expr4, field_access, directory_walker_1_expr3, left_hand_side, range(directory_walker_1, 10677, 11, 300, 300), "this.filter").
expr(directory_walker_1_expr5, this_expression, f_filter_3, expression, range(directory_walker_1, 10677, 4, 300, 300), "this").
expr(directory_walker_1_expr3, assignment, directory_walker_1_stmt2, expression, range(directory_walker_1, 10677, 20, 300, 300), "this.filter=filter").
expr(directory_walker_1_expr8, this_expression, f_depth_limit_4, expression, range(directory_walker_1, 10707, 4, 301, 301), "this").
expr(directory_walker_1_expr6, assignment, directory_walker_1_stmt3, expression, range(directory_walker_1, 10707, 28, 301, 301), "this.depthLimit=depthLimit").
expr(directory_walker_1_expr7, field_access, directory_walker_1_expr6, left_hand_side, range(directory_walker_1, 10707, 15, 301, 301), "this.depthLimit").
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
expr(file_utils_test_case_1_expr1, method_invocation, file_utils_test_case_1_code15, initializer, range(file_utils_test_case_1, 3022, 23, 87, 87), "BigInteger.valueOf(100)").
expr(file_utils_test_case_1_expr2, class_instance_creation, file_utils_test_case_1_code21, initializer, range(file_utils_test_case_1, 3153, 25, 92, 92), "new ListDirectoryWalker()").
expr(file_utils_test_case_1_expr3, assignment, file_utils_test_case_1_stmt1, expression, range(file_utils_test_case_1, 3528, 55, 107, 107), "testFile1=new File(temporaryFolder,\"file1-test.txt\")").
expr(file_utils_test_case_1_expr4, class_instance_creation, file_utils_test_case_1_expr3, right_hand_side, range(file_utils_test_case_1, 3540, 43, 107, 107), "new File(temporaryFolder,\"file1-test.txt\")").
expr(file_utils_test_case_1_expr5, assignment, file_utils_test_case_1_stmt2, expression, range(file_utils_test_case_1, 3593, 56, 108, 108), "testFile2=new File(temporaryFolder,\"file1a-test.txt\")").
expr(file_utils_test_case_1_expr6, class_instance_creation, file_utils_test_case_1_expr5, right_hand_side, range(file_utils_test_case_1, 3605, 44, 108, 108), "new File(temporaryFolder,\"file1a-test.txt\")").
expr(file_utils_test_case_1_expr7, assignment, file_utils_test_case_1_stmt3, expression, range(file_utils_test_case_1, 3660, 40, 110, 110), "testFile1Size=(int)testFile1.length()").
expr(file_utils_test_case_1_expr8, cast_expression, file_utils_test_case_1_expr7, right_hand_side, range(file_utils_test_case_1, 3676, 24, 110, 110), "(int)testFile1.length()").
expr(file_utils_test_case_1_expr9, method_invocation, file_utils_test_case_1_expr8, expression, range(file_utils_test_case_1, 3682, 18, 110, 110), "testFile1.length()").
expr(file_utils_test_case_1_expr10, assignment, file_utils_test_case_1_stmt4, expression, range(file_utils_test_case_1, 3710, 40, 111, 111), "testFile2Size=(int)testFile2.length()").
expr(file_utils_test_case_1_expr11, cast_expression, file_utils_test_case_1_expr10, right_hand_side, range(file_utils_test_case_1, 3726, 24, 111, 111), "(int)testFile2.length()").
expr(file_utils_test_case_1_expr12, method_invocation, file_utils_test_case_1_expr11, expression, range(file_utils_test_case_1, 3732, 18, 111, 111), "testFile2.length()").
expr(file_utils_test_case_1_expr13, prefix_expression, file_utils_test_case_1_stmt5, expression, range(file_utils_test_case_1, 3764, 35, 112, 112), "!testFile1.getParentFile().exists()").
expr(file_utils_test_case_1_expr14, method_invocation, file_utils_test_case_1_expr13, operand, range(file_utils_test_case_1, 3765, 34, 112, 112), "testFile1.getParentFile().exists()").
expr(file_utils_test_case_1_expr15, method_invocation, file_utils_test_case_1_expr14, expression, range(file_utils_test_case_1, 3765, 25, 112, 112), "testFile1.getParentFile()").
expr(file_utils_test_case_1_expr16, variable_declaration_expression, file_utils_test_case_1_stmt6, (resources, 0), range(file_utils_test_case_1, 3960, 110, 116, 117), "final BufferedOutputStream output3=new BufferedOutputStream(new FileOutputStream(testFile1))").
expr(file_utils_test_case_1_expr17, class_instance_creation, file_utils_test_case_1_code30, initializer, range(file_utils_test_case_1, 4013, 57, 117, 117), "new BufferedOutputStream(new FileOutputStream(testFile1))").
expr(file_utils_test_case_1_expr18, method_invocation, file_utils_test_case_1_stmt7, expression, range(file_utils_test_case_1, 4086, 50, 118, 118), "TestUtils.generateTestData(output3,testFile1Size)").
expr(file_utils_test_case_1_expr19, prefix_expression, file_utils_test_case_1_stmt8, expression, range(file_utils_test_case_1, 4160, 35, 120, 120), "!testFile2.getParentFile().exists()").
expr(file_utils_test_case_1_expr21, method_invocation, file_utils_test_case_1_expr20, expression, range(file_utils_test_case_1, 4161, 25, 120, 120), "testFile2.getParentFile()").
expr(file_utils_test_case_1_expr20, method_invocation, file_utils_test_case_1_expr19, operand, range(file_utils_test_case_1, 4161, 34, 120, 120), "testFile2.getParentFile().exists()").
expr(file_utils_test_case_1_expr22, variable_declaration_expression, file_utils_test_case_1_stmt9, (resources, 0), range(file_utils_test_case_1, 4356, 110, 124, 125), "final BufferedOutputStream output2=new BufferedOutputStream(new FileOutputStream(testFile2))").
expr(file_utils_test_case_1_expr23, class_instance_creation, file_utils_test_case_1_code33, initializer, range(file_utils_test_case_1, 4409, 57, 125, 125), "new BufferedOutputStream(new FileOutputStream(testFile2))").
expr(file_utils_test_case_1_expr24, method_invocation, file_utils_test_case_1_stmt10, expression, range(file_utils_test_case_1, 4482, 50, 126, 126), "TestUtils.generateTestData(output2,testFile2Size)").
expr(file_utils_test_case_1_expr25, method_invocation, file_utils_test_case_1_stmt11, expression, range(file_utils_test_case_1, 4552, 42, 128, 128), "FileUtils.deleteDirectory(temporaryFolder)").
expr(file_utils_test_case_1_expr26, method_invocation, file_utils_test_case_1_stmt12, expression, range(file_utils_test_case_1, 4604, 24, 129, 129), "temporaryFolder.mkdirs()").
expr(file_utils_test_case_1_expr27, prefix_expression, file_utils_test_case_1_stmt13, expression, range(file_utils_test_case_1, 4642, 35, 130, 130), "!testFile1.getParentFile().exists()").
expr(file_utils_test_case_1_expr29, method_invocation, file_utils_test_case_1_expr28, expression, range(file_utils_test_case_1, 4643, 25, 130, 130), "testFile1.getParentFile()").
expr(file_utils_test_case_1_expr28, method_invocation, file_utils_test_case_1_expr27, operand, range(file_utils_test_case_1, 4643, 34, 130, 130), "testFile1.getParentFile().exists()").
expr(file_utils_test_case_1_expr30, variable_declaration_expression, file_utils_test_case_1_stmt14, (resources, 0), range(file_utils_test_case_1, 4838, 110, 134, 135), "final BufferedOutputStream output1=new BufferedOutputStream(new FileOutputStream(testFile1))").
expr(file_utils_test_case_1_expr31, class_instance_creation, file_utils_test_case_1_code36, initializer, range(file_utils_test_case_1, 4891, 57, 135, 135), "new BufferedOutputStream(new FileOutputStream(testFile1))").
expr(file_utils_test_case_1_expr32, method_invocation, file_utils_test_case_1_stmt15, expression, range(file_utils_test_case_1, 4964, 50, 136, 136), "TestUtils.generateTestData(output1,testFile1Size)").
expr(file_utils_test_case_1_expr33, prefix_expression, file_utils_test_case_1_stmt16, expression, range(file_utils_test_case_1, 5038, 35, 138, 138), "!testFile2.getParentFile().exists()").
expr(file_utils_test_case_1_expr34, method_invocation, file_utils_test_case_1_expr33, operand, range(file_utils_test_case_1, 5039, 34, 138, 138), "testFile2.getParentFile().exists()").
expr(file_utils_test_case_1_expr35, method_invocation, file_utils_test_case_1_expr34, expression, range(file_utils_test_case_1, 5039, 25, 138, 138), "testFile2.getParentFile()").
expr(file_utils_test_case_1_expr36, variable_declaration_expression, file_utils_test_case_1_stmt17, (resources, 0), range(file_utils_test_case_1, 5234, 109, 142, 143), "final BufferedOutputStream output=new BufferedOutputStream(new FileOutputStream(testFile2))").
expr(file_utils_test_case_1_expr37, class_instance_creation, file_utils_test_case_1_code39, initializer, range(file_utils_test_case_1, 5286, 57, 143, 143), "new BufferedOutputStream(new FileOutputStream(testFile2))").
expr(file_utils_test_case_1_expr38, method_invocation, file_utils_test_case_1_stmt18, expression, range(file_utils_test_case_1, 5359, 49, 144, 144), "TestUtils.generateTestData(output,testFile2Size)").
expr(file_utils_test_case_1_expr39, method_invocation, file_utils_test_case_1_stmt19, expression, range(file_utils_test_case_1, 5473, 31, 149, 149), "this.getClass().getSimpleName()").
expr(file_utils_test_case_1_expr41, this_expression, file_utils_test_case_1_expr40, expression, range(file_utils_test_case_1, 5473, 4, 149, 149), "this").
expr(file_utils_test_case_1_expr40, method_invocation, file_utils_test_case_1_expr39, expression, range(file_utils_test_case_1, 5473, 15, 149, 149), "this.getClass()").
expr(file_utils_test_case_1_expr42, class_instance_creation, file_utils_test_case_1_code44, initializer, range(file_utils_test_case_1, 24786, 36, 631, 631), "new File(temporaryFolder,getName())").
expr(file_utils_test_case_1_expr43, method_invocation, file_utils_test_case_1_expr42, (arguments, 1), range(file_utils_test_case_1, 24812, 9, 631, 631), "getName()").
expr(file_utils_test_case_1_expr44, class_instance_creation, file_utils_test_case_1_code48, initializer, range(file_utils_test_case_1, 24851, 42, 632, 632), "new File(temporaryFolder,getName() + \"2\")").
expr(file_utils_test_case_1_expr45, infix_expression, file_utils_test_case_1_expr44, (arguments, 1), range(file_utils_test_case_1, 24877, 15, 632, 632), "getName() + \"2\"").
expr(file_utils_test_case_1_expr46, method_invocation, file_utils_test_case_1_expr45, left_operand, range(file_utils_test_case_1, 24877, 9, 632, 632), "getName()").
expr(file_utils_test_case_1_expr47, method_invocation, file_utils_test_case_1_stmt22, expression, range(file_utils_test_case_1, 24903, 62, 633, 633), "assertTrue(FileUtils.contentEqualsIgnoreEOL(null,null,null))").
expr(file_utils_test_case_1_expr48, method_invocation, file_utils_test_case_1_expr47, (arguments, 0), range(file_utils_test_case_1, 24914, 50, 633, 633), "FileUtils.contentEqualsIgnoreEOL(null,null,null)").
%counters_1 - org.apache.commons.io.file.Counters
expr(counters_1_expr1, super_constructor_invocation, counters_1_block1, (statements, 0), range(counters_1, 1670, 8, 47, 47), "super();").
expr(counters_1_expr2, assignment, counters_1_stmt2, expression, range(counters_1, 1691, 30, 48, 48), "this.byteCounter=byteCounter").
expr(counters_1_expr3, field_access, counters_1_expr2, left_hand_side, range(counters_1, 1691, 16, 48, 48), "this.byteCounter").
expr(counters_1_expr4, this_expression, f_byte_counter_351, expression, range(counters_1, 1691, 4, 48, 48), "this").
expr(counters_1_expr7, this_expression, f_directory_counter_352, expression, range(counters_1, 1735, 4, 49, 49), "this").
expr(counters_1_expr5, assignment, counters_1_stmt3, expression, range(counters_1, 1735, 40, 49, 49), "this.directoryCounter=directoryCounter").
expr(counters_1_expr6, field_access, counters_1_expr5, left_hand_side, range(counters_1, 1735, 21, 49, 49), "this.directoryCounter").
expr(counters_1_expr9, field_access, counters_1_expr8, left_hand_side, range(counters_1, 1789, 16, 50, 50), "this.fileCounter").
expr(counters_1_expr8, assignment, counters_1_stmt4, expression, range(counters_1, 1789, 30, 50, 50), "this.fileCounter=fileCounter").
expr(counters_1_expr10, this_expression, f_file_counter_353, expression, range(counters_1, 1789, 4, 50, 50), "this").
expr(counters_1_expr12, this_expression, f_file_counter_353, expression, range(counters_1, 2258, 4, 70, 70), "this").
expr(counters_1_expr11, field_access, counters_1_stmt6, expression, range(counters_1, 2258, 16, 70, 70), "this.fileCounter").
expr(counters_1_expr13, assignment, counters_1_stmt7, expression, range(counters_1, 4809, 12, 183, 183), "value+=add").
expr(counters_1_expr14, postfix_expression, counters_1_stmt9, expression, range(counters_1, 5202, 7, 204, 204), "value++").
expr(counters_1_expr15, super_constructor_invocation, counters_1_block7, (statements, 0), range(counters_1, 5634, 78, 222, 222), "super(Counters.longCounter(),Counters.longCounter(),Counters.longCounter());").
expr(counters_1_expr16, method_invocation, counters_1_stmt10, (arguments, 0), range(counters_1, 5640, 22, 222, 222), "Counters.longCounter()").
expr(counters_1_expr17, method_invocation, counters_1_stmt10, (arguments, 1), range(counters_1, 5664, 22, 222, 222), "Counters.longCounter()").
expr(counters_1_expr18, method_invocation, counters_1_stmt10, (arguments, 2), range(counters_1, 5688, 22, 222, 222), "Counters.longCounter()").
expr(counters_1_expr19, class_instance_creation, counters_1_stmt11, expression, range(counters_1, 6870, 17, 279, 279), "new LongCounter()").
expr(counters_1_expr20, class_instance_creation, counters_1_stmt12, expression, range(counters_1, 7078, 22, 288, 288), "new LongPathCounters()").

%%% Names
%path_utils_1 - org.apache.commons.io.file.PathUtils
name(t_files_3, simple_name, path_utils_1_expr2, expression, range(path_utils_1, 4386, 5, 110, 110), 'Files').
name(m_is_directory_353, simple_name, path_utils_1_expr2, name, range(path_utils_1, 4392, 11, 110, 110), 'isDirectory').
name(p_path_366, simple_name, path_utils_1_expr2, (arguments, 0), range(path_utils_1, 4404, 4, 110, 110), 'path').
name(m_delete_directory_354, simple_name, path_utils_1_expr3, name, range(path_utils_1, 4412, 15, 110, 110), 'deleteDirectory').
name(p_path_366, simple_name, path_utils_1_expr3, (arguments, 0), range(path_utils_1, 4428, 4, 110, 110), 'path').
name(m_delete_file_355, simple_name, path_utils_1_expr4, name, range(path_utils_1, 4436, 10, 110, 110), 'deleteFile').
name(p_path_366, simple_name, path_utils_1_expr4, (arguments, 0), range(path_utils_1, 4447, 4, 110, 110), 'path').
name(t_files_3, simple_name, path_utils_1_expr5, expression, range(path_utils_1, 5323, 5, 133, 133), 'Files').
name(m_is_directory_353, simple_name, path_utils_1_expr5, name, range(path_utils_1, 5329, 11, 133, 133), 'isDirectory').
name(p_file_368, simple_name, path_utils_1_expr5, (arguments, 0), range(path_utils_1, 5341, 4, 133, 133), 'file').
name(v_path_counts_369, simple_name, path_utils_1_code7, name, range(path_utils_1, 5449, 10, 136, 136), 'pathCounts').
name(t_counters_7, simple_name, path_utils_1_expr6, expression, range(path_utils_1, 5462, 8, 136, 136), 'Counters').
name(m_long_path_counters_348, simple_name, path_utils_1_expr6, name, range(path_utils_1, 5471, 16, 136, 136), 'longPathCounters').
name(v_size_370, simple_name, path_utils_1_code10, name, range(path_utils_1, 5510, 4, 137, 137), 'size').
name(t_files_3, simple_name, path_utils_1_expr8, expression, range(path_utils_1, 5517, 5, 137, 137), 'Files').
name(m_exists_356, simple_name, path_utils_1_expr8, name, range(path_utils_1, 5523, 6, 137, 137), 'exists').
name(p_file_368, simple_name, path_utils_1_expr8, (arguments, 0), range(path_utils_1, 5530, 4, 137, 137), 'file').
name(t_files_3, simple_name, path_utils_1_expr9, expression, range(path_utils_1, 5538, 5, 137, 137), 'Files').
name(m_size_357, simple_name, path_utils_1_expr9, name, range(path_utils_1, 5544, 4, 137, 137), 'size').
name(p_file_368, simple_name, path_utils_1_expr9, (arguments, 0), range(path_utils_1, 5549, 4, 137, 137), 'file').
name(t_files_3, simple_name, path_utils_1_expr10, expression, range(path_utils_1, 5572, 5, 138, 138), 'Files').
name(m_delete_if_exists_358, simple_name, path_utils_1_expr10, name, range(path_utils_1, 5578, 14, 138, 138), 'deleteIfExists').
name(p_file_368, simple_name, path_utils_1_expr10, (arguments, 0), range(path_utils_1, 5593, 4, 138, 138), 'file').
name(v_path_counts_369, simple_name, path_utils_1_expr12, expression, range(path_utils_1, 5614, 10, 139, 139), 'pathCounts').
name(m_get_file_counter_66, simple_name, path_utils_1_expr12, name, range(path_utils_1, 5625, 14, 139, 139), 'getFileCounter').
name(m_increment_335, simple_name, path_utils_1_expr11, name, range(path_utils_1, 5642, 9, 139, 139), 'increment').
name(v_path_counts_369, simple_name, path_utils_1_expr14, expression, range(path_utils_1, 5667, 10, 140, 140), 'pathCounts').
name(m_get_byte_counter_344, simple_name, path_utils_1_expr14, name, range(path_utils_1, 5678, 14, 140, 140), 'getByteCounter').
name(m_add_332, simple_name, path_utils_1_expr13, name, range(path_utils_1, 5695, 3, 140, 140), 'add').
name(v_size_370, simple_name, path_utils_1_expr13, (arguments, 0), range(path_utils_1, 5699, 4, 140, 140), 'size').
name(v_path_counts_369, simple_name, path_utils_1_stmt8, expression, range(path_utils_1, 5731, 10, 142, 142), 'pathCounts').
%file_utils_1 - org.apache.commons.io.FileUtils
name(f_one_kb_bi_48, simple_name, file_utils_1_code8, name, range(file_utils_1, 3224, 9, 96, 96), 'ONE_KB_BI').
name(t_big_integer_1, simple_name, file_utils_1_expr1, expression, range(file_utils_1, 3236, 10, 96, 96), 'BigInteger').
name(m_value_of_21, simple_name, file_utils_1_expr1, name, range(file_utils_1, 3247, 7, 96, 96), 'valueOf').
name(f_one_kb_49, simple_name, file_utils_1_expr1, (arguments, 0), range(file_utils_1, 3255, 6, 96, 96), 'ONE_KB').
name(f_one_mb_bi_50, simple_name, file_utils_1_code14, name, range(file_utils_1, 3497, 9, 108, 108), 'ONE_MB_BI').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr2, expression, range(file_utils_1, 3509, 9, 108, 108), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr2, name, range(file_utils_1, 3519, 8, 108, 108), 'multiply').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr2, (arguments, 0), range(file_utils_1, 3528, 9, 108, 108), 'ONE_KB_BI').
name(f_one_gb_bi_51, simple_name, file_utils_1_code20, name, range(file_utils_1, 3773, 9, 120, 120), 'ONE_GB_BI').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr3, expression, range(file_utils_1, 3785, 9, 120, 120), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr3, name, range(file_utils_1, 3795, 8, 120, 120), 'multiply').
name(f_one_mb_bi_50, simple_name, file_utils_1_expr3, (arguments, 0), range(file_utils_1, 3804, 9, 120, 120), 'ONE_MB_BI').
name(f_one_tb_bi_52, simple_name, file_utils_1_code26, name, range(file_utils_1, 4049, 9, 132, 132), 'ONE_TB_BI').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr4, expression, range(file_utils_1, 4061, 9, 132, 132), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr4, name, range(file_utils_1, 4071, 8, 132, 132), 'multiply').
name(f_one_gb_bi_51, simple_name, file_utils_1_expr4, (arguments, 0), range(file_utils_1, 4080, 9, 132, 132), 'ONE_GB_BI').
name(f_one_pb_bi_53, simple_name, file_utils_1_code32, name, range(file_utils_1, 4325, 9, 144, 144), 'ONE_PB_BI').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr5, expression, range(file_utils_1, 4337, 9, 144, 144), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr5, name, range(file_utils_1, 4347, 8, 144, 144), 'multiply').
name(f_one_tb_bi_52, simple_name, file_utils_1_expr5, (arguments, 0), range(file_utils_1, 4356, 9, 144, 144), 'ONE_TB_BI').
name(f_one_eb_bi_54, simple_name, file_utils_1_code38, name, range(file_utils_1, 4601, 9, 156, 156), 'ONE_EB_BI').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr6, expression, range(file_utils_1, 4613, 9, 156, 156), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr6, name, range(file_utils_1, 4623, 8, 156, 156), 'multiply').
name(f_one_pb_bi_53, simple_name, file_utils_1_expr6, (arguments, 0), range(file_utils_1, 4632, 9, 156, 156), 'ONE_PB_BI').
name(f_one_zb_55, simple_name, file_utils_1_code44, name, range(file_utils_1, 4739, 6, 161, 161), 'ONE_ZB').
name(t_big_integer_1, simple_name, file_utils_1_expr9, expression, range(file_utils_1, 4748, 10, 161, 161), 'BigInteger').
name(m_value_of_21, simple_name, file_utils_1_expr9, name, range(file_utils_1, 4759, 7, 161, 161), 'valueOf').
name(f_one_kb_49, simple_name, file_utils_1_expr9, (arguments, 0), range(file_utils_1, 4767, 6, 161, 161), 'ONE_KB').
name(m_multiply_22, simple_name, file_utils_1_expr7, name, range(file_utils_1, 4775, 8, 161, 161), 'multiply').
name(t_big_integer_1, simple_name, file_utils_1_expr8, expression, range(file_utils_1, 4784, 10, 161, 161), 'BigInteger').
name(m_value_of_21, simple_name, file_utils_1_expr8, name, range(file_utils_1, 4795, 7, 161, 161), 'valueOf').
name(f_one_eb_56, simple_name, file_utils_1_expr8, (arguments, 0), range(file_utils_1, 4803, 6, 161, 161), 'ONE_EB').
name(f_one_yb_57, simple_name, file_utils_1_code50, name, range(file_utils_1, 4908, 6, 166, 166), 'ONE_YB').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr10, expression, range(file_utils_1, 4917, 9, 166, 166), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr10, name, range(file_utils_1, 4927, 8, 166, 166), 'multiply').
name(f_one_zb_55, simple_name, file_utils_1_expr10, (arguments, 0), range(file_utils_1, 4936, 6, 166, 166), 'ONE_ZB').
name(f_empty_file_array_58, simple_name, file_utils_1_code58, name, range(file_utils_1, 5042, 16, 171, 171), 'EMPTY_FILE_ARRAY').
name(v_files_72, simple_name, file_utils_1_code67, name, range(file_utils_1, 12133, 5, 332, 332), 'files').
name(m_verified_list_files_31, simple_name, file_utils_1_expr12, name, range(file_utils_1, 12141, 17, 332, 332), 'verifiedListFiles').
name(p_directory_71, simple_name, file_utils_1_expr12, (arguments, 0), range(file_utils_1, 12159, 9, 332, 332), 'directory').
name(v_exception_73, simple_name, file_utils_1_code69, name, range(file_utils_1, 12192, 9, 334, 334), 'exception').
name(v_file_74, simple_name, file_utils_1_code70, name, range(file_utils_1, 12234, 4, 335, 335), 'file').
name(v_files_72, simple_name, file_utils_1_stmt3, expression, range(file_utils_1, 12241, 5, 335, 335), 'files').
name(m_force_delete_32, simple_name, file_utils_1_expr13, name, range(file_utils_1, 12284, 11, 337, 337), 'forceDelete').
name(v_file_74, simple_name, file_utils_1_expr13, (arguments, 0), range(file_utils_1, 12296, 4, 337, 337), 'file').
name(v_exception_73, simple_name, file_utils_1_expr14, right_operand, range(file_utils_1, 12427, 9, 343, 343), 'exception').
name(v_file_1exists_81, simple_name, file_utils_1_code77, name, range(file_utils_1, 16037, 11, 448, 448), 'file1Exists').
name(p_file_1_78, simple_name, file_utils_1_expr15, expression, range(file_utils_1, 16051, 5, 448, 448), 'file1').
name(m_exists_36, simple_name, file_utils_1_expr15, name, range(file_utils_1, 16057, 6, 448, 448), 'exists').
name(p_directory_124, simple_name, file_utils_1_expr17, expression, range(file_utils_1, 48483, 9, 1122, 1122), 'directory').
name(m_exists_36, simple_name, file_utils_1_expr17, name, range(file_utils_1, 48493, 6, 1122, 1122), 'exists').
name(m_is_symlink_56, simple_name, file_utils_1_expr19, name, range(file_utils_1, 48549, 9, 1126, 1126), 'isSymlink').
name(p_directory_124, simple_name, file_utils_1_expr19, (arguments, 0), range(file_utils_1, 48559, 9, 1126, 1126), 'directory').
name(m_clean_directory_30, simple_name, file_utils_1_expr20, name, range(file_utils_1, 48585, 14, 1127, 1127), 'cleanDirectory').
name(p_directory_124, simple_name, file_utils_1_expr20, (arguments, 0), range(file_utils_1, 48600, 9, 1127, 1127), 'directory').
name(p_directory_124, simple_name, file_utils_1_expr22, expression, range(file_utils_1, 48636, 9, 1130, 1130), 'directory').
name(m_delete_57, simple_name, file_utils_1_expr22, name, range(file_utils_1, 48646, 6, 1130, 1130), 'delete').
name(v_delete_counters_138, simple_name, file_utils_1_expr23, left_hand_side, range(file_utils_1, 57558, 14, 1342, 1342), 'deleteCounters').
name(t_path_utils_2, simple_name, file_utils_1_expr24, expression, range(file_utils_1, 57575, 9, 1342, 1342), 'PathUtils').
name(m_delete_63, simple_name, file_utils_1_expr24, name, range(file_utils_1, 57585, 6, 1342, 1342), 'delete').
name(p_file_137, simple_name, file_utils_1_expr25, expression, range(file_utils_1, 57592, 4, 1342, 1342), 'file').
name(m_to_path_64, simple_name, file_utils_1_expr25, name, range(file_utils_1, 57597, 6, 1342, 1342), 'toPath').
name(v_delete_counters_138, simple_name, file_utils_1_expr29, expression, range(file_utils_1, 57737, 14, 1347, 1347), 'deleteCounters').
name(m_get_file_counter_66, simple_name, file_utils_1_expr29, name, range(file_utils_1, 57752, 14, 1347, 1347), 'getFileCounter').
name(m_get_65, simple_name, file_utils_1_expr28, name, range(file_utils_1, 57769, 3, 1347, 1347), 'get').
name(v_delete_counters_138, simple_name, file_utils_1_expr32, expression, range(file_utils_1, 57782, 14, 1347, 1347), 'deleteCounters').
name(m_get_directory_counter_67, simple_name, file_utils_1_expr32, name, range(file_utils_1, 57797, 19, 1347, 1347), 'getDirectoryCounter').
name(m_get_65, simple_name, file_utils_1_expr31, name, range(file_utils_1, 57819, 3, 1347, 1347), 'get').
name(p_file_165, simple_name, file_utils_1_expr33, left_operand, range(file_utils_1, 72812, 4, 1726, 1726), 'file').
name(t_files_3, simple_name, file_utils_1_expr34, expression, range(file_utils_1, 72922, 5, 1729, 1729), 'Files').
name(m_is_symbolic_link_85, simple_name, file_utils_1_expr34, name, range(file_utils_1, 72928, 14, 1729, 1729), 'isSymbolicLink').
name(p_file_165, simple_name, file_utils_1_expr35, expression, range(file_utils_1, 72943, 4, 1729, 1729), 'file').
name(m_to_path_64, simple_name, file_utils_1_expr35, name, range(file_utils_1, 72948, 6, 1729, 1729), 'toPath').
name(p_directory_234, simple_name, file_utils_1_expr37, expression, range(file_utils_1, 112877, 9, 2682, 2682), 'directory').
name(m_exists_36, simple_name, file_utils_1_expr37, name, range(file_utils_1, 112887, 6, 2682, 2682), 'exists').
name(p_directory_234, simple_name, file_utils_1_expr39, expression, range(file_utils_1, 113046, 9, 2687, 2687), 'directory').
name(m_is_directory_126, simple_name, file_utils_1_expr39, name, range(file_utils_1, 113056, 11, 2687, 2687), 'isDirectory').
name(v_files_235, simple_name, file_utils_1_code87, name, range(file_utils_1, 113232, 5, 2692, 2692), 'files').
name(p_directory_234, simple_name, file_utils_1_expr40, expression, range(file_utils_1, 113240, 9, 2692, 2692), 'directory').
name(m_list_files_127, simple_name, file_utils_1_expr40, name, range(file_utils_1, 113250, 9, 2692, 2692), 'listFiles').
name(v_files_235, simple_name, file_utils_1_expr41, left_operand, range(file_utils_1, 113275, 5, 2693, 2693), 'files').
name(v_files_235, simple_name, file_utils_1_stmt21, expression, range(file_utils_1, 113427, 5, 2696, 2696), 'files').
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
name(v_i_386, simple_name, test_utils_1_code5, name, range(test_utils_1, 2608, 1, 73, 73), 'i').
name(v_i_386, simple_name, test_utils_1_expr2, left_operand, range(test_utils_1, 2615, 1, 73, 73), 'i').
name(p_size_385, simple_name, test_utils_1_expr2, right_operand, range(test_utils_1, 2619, 4, 73, 73), 'size').
name(v_i_386, simple_name, test_utils_1_expr3, operand, range(test_utils_1, 2625, 1, 73, 73), 'i').
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
name(m_directory_walker_2, simple_name, directory_walker_1_code4, name, range(directory_walker_1, 10604, 15, 299, 299), 'DirectoryWalker').
name(p_filter_1, simple_name, directory_walker_1_code6, name, range(directory_walker_1, 10637, 6, 299, 299), 'filter').
name(p_depth_limit_2, simple_name, directory_walker_1_code9, name, range(directory_walker_1, 10655, 10, 299, 299), 'depthLimit').
name(f_filter_3, simple_name, directory_walker_1_expr4, name, range(directory_walker_1, 10682, 6, 300, 300), 'filter').
name(p_filter_1, simple_name, directory_walker_1_expr3, right_hand_side, range(directory_walker_1, 10691, 6, 300, 300), 'filter').
name(f_depth_limit_4, simple_name, directory_walker_1_expr7, name, range(directory_walker_1, 10712, 10, 301, 301), 'depthLimit').
name(p_depth_limit_2, simple_name, directory_walker_1_expr6, right_hand_side, range(directory_walker_1, 10725, 10, 301, 301), 'depthLimit').
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
name(t_file_utils_test_case_4, simple_name, file_utils_test_case_1_code2, name, range(file_utils_test_case_1, 2579, 17, 67, 67), 'FileUtilsTestCase').
name(f_test_directory_size_bi_318, simple_name, file_utils_test_case_1_code9, name, range(file_utils_test_case_1, 2850, 22, 82, 82), 'TEST_DIRECTORY_SIZE_BI').
name(q_zero_1, qualified_name, file_utils_test_case_1_code9, initializer, range(file_utils_test_case_1, 2875, 15, 82, 82), 'BigInteger.ZERO').
name(t_big_integer_1, simple_name, q_zero_1, qualifier, range(file_utils_test_case_1, 2875, 10, 82, 82), 'BigInteger').
name(f_test_directory_size_gt_zero_bi_319, simple_name, file_utils_test_case_1_code15, name, range(file_utils_test_case_1, 2989, 30, 87, 87), 'TEST_DIRECTORY_SIZE_GT_ZERO_BI').
name(t_big_integer_1, simple_name, file_utils_test_case_1_expr1, expression, range(file_utils_test_case_1, 3022, 10, 87, 87), 'BigInteger').
name(m_value_of_21, simple_name, file_utils_test_case_1_expr1, name, range(file_utils_test_case_1, 3033, 7, 87, 87), 'valueOf').
name(f_list_walker_320, simple_name, file_utils_test_case_1_code21, name, range(file_utils_test_case_1, 3139, 11, 92, 92), 'LIST_WALKER').
name(f_test_file1_321, simple_name, file_utils_test_case_1_expr3, left_hand_side, range(file_utils_test_case_1, 3528, 9, 107, 107), 'testFile1').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr4, (arguments, 0), range(file_utils_test_case_1, 3549, 15, 107, 107), 'temporaryFolder').
name(f_test_file2_323, simple_name, file_utils_test_case_1_expr5, left_hand_side, range(file_utils_test_case_1, 3593, 9, 108, 108), 'testFile2').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr6, (arguments, 0), range(file_utils_test_case_1, 3614, 15, 108, 108), 'temporaryFolder').
name(f_test_file1_size_324, simple_name, file_utils_test_case_1_expr7, left_hand_side, range(file_utils_test_case_1, 3660, 13, 110, 110), 'testFile1Size').
name(f_test_file1_321, simple_name, file_utils_test_case_1_expr9, expression, range(file_utils_test_case_1, 3682, 9, 110, 110), 'testFile1').
name(m_length_157, simple_name, file_utils_test_case_1_expr9, name, range(file_utils_test_case_1, 3692, 6, 110, 110), 'length').
name(f_test_file2_size_325, simple_name, file_utils_test_case_1_expr10, left_hand_side, range(file_utils_test_case_1, 3710, 13, 111, 111), 'testFile2Size').
name(f_test_file2_323, simple_name, file_utils_test_case_1_expr12, expression, range(file_utils_test_case_1, 3732, 9, 111, 111), 'testFile2').
name(m_length_157, simple_name, file_utils_test_case_1_expr12, name, range(file_utils_test_case_1, 3742, 6, 111, 111), 'length').
name(f_test_file1_321, simple_name, file_utils_test_case_1_expr15, expression, range(file_utils_test_case_1, 3765, 9, 112, 112), 'testFile1').
name(m_get_parent_file_158, simple_name, file_utils_test_case_1_expr15, name, range(file_utils_test_case_1, 3775, 13, 112, 112), 'getParentFile').
name(m_exists_36, simple_name, file_utils_test_case_1_expr14, name, range(file_utils_test_case_1, 3791, 6, 112, 112), 'exists').
name(v_output_3_326, simple_name, file_utils_test_case_1_code30, name, range(file_utils_test_case_1, 3987, 7, 116, 116), 'output3').
name(t_test_utils_5, simple_name, file_utils_test_case_1_expr18, expression, range(file_utils_test_case_1, 4086, 9, 118, 118), 'TestUtils').
name(m_generate_test_data_159, simple_name, file_utils_test_case_1_expr18, name, range(file_utils_test_case_1, 4096, 16, 118, 118), 'generateTestData').
name(v_output_3_326, simple_name, file_utils_test_case_1_expr18, (arguments, 0), range(file_utils_test_case_1, 4113, 7, 118, 118), 'output3').
name(f_test_file1_size_324, simple_name, file_utils_test_case_1_expr18, (arguments, 1), range(file_utils_test_case_1, 4122, 13, 118, 118), 'testFile1Size').
name(f_test_file2_323, simple_name, file_utils_test_case_1_expr21, expression, range(file_utils_test_case_1, 4161, 9, 120, 120), 'testFile2').
name(m_get_parent_file_158, simple_name, file_utils_test_case_1_expr21, name, range(file_utils_test_case_1, 4171, 13, 120, 120), 'getParentFile').
name(m_exists_36, simple_name, file_utils_test_case_1_expr20, name, range(file_utils_test_case_1, 4187, 6, 120, 120), 'exists').
name(v_output_2_327, simple_name, file_utils_test_case_1_code33, name, range(file_utils_test_case_1, 4383, 7, 124, 124), 'output2').
name(t_test_utils_5, simple_name, file_utils_test_case_1_expr24, expression, range(file_utils_test_case_1, 4482, 9, 126, 126), 'TestUtils').
name(m_generate_test_data_159, simple_name, file_utils_test_case_1_expr24, name, range(file_utils_test_case_1, 4492, 16, 126, 126), 'generateTestData').
name(v_output_2_327, simple_name, file_utils_test_case_1_expr24, (arguments, 0), range(file_utils_test_case_1, 4509, 7, 126, 126), 'output2').
name(f_test_file2_size_325, simple_name, file_utils_test_case_1_expr24, (arguments, 1), range(file_utils_test_case_1, 4518, 13, 126, 126), 'testFile2Size').
name(t_file_utils_6, simple_name, file_utils_test_case_1_expr25, expression, range(file_utils_test_case_1, 4552, 9, 128, 128), 'FileUtils').
name(m_delete_directory_55, simple_name, file_utils_test_case_1_expr25, name, range(file_utils_test_case_1, 4562, 15, 128, 128), 'deleteDirectory').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr25, (arguments, 0), range(file_utils_test_case_1, 4578, 15, 128, 128), 'temporaryFolder').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr26, expression, range(file_utils_test_case_1, 4604, 15, 129, 129), 'temporaryFolder').
name(m_mkdirs_160, simple_name, file_utils_test_case_1_expr26, name, range(file_utils_test_case_1, 4620, 6, 129, 129), 'mkdirs').
name(f_test_file1_321, simple_name, file_utils_test_case_1_expr29, expression, range(file_utils_test_case_1, 4643, 9, 130, 130), 'testFile1').
name(m_get_parent_file_158, simple_name, file_utils_test_case_1_expr29, name, range(file_utils_test_case_1, 4653, 13, 130, 130), 'getParentFile').
name(m_exists_36, simple_name, file_utils_test_case_1_expr28, name, range(file_utils_test_case_1, 4669, 6, 130, 130), 'exists').
name(v_output_1_328, simple_name, file_utils_test_case_1_code36, name, range(file_utils_test_case_1, 4865, 7, 134, 134), 'output1').
name(t_test_utils_5, simple_name, file_utils_test_case_1_expr32, expression, range(file_utils_test_case_1, 4964, 9, 136, 136), 'TestUtils').
name(m_generate_test_data_159, simple_name, file_utils_test_case_1_expr32, name, range(file_utils_test_case_1, 4974, 16, 136, 136), 'generateTestData').
name(v_output_1_328, simple_name, file_utils_test_case_1_expr32, (arguments, 0), range(file_utils_test_case_1, 4991, 7, 136, 136), 'output1').
name(f_test_file1_size_324, simple_name, file_utils_test_case_1_expr32, (arguments, 1), range(file_utils_test_case_1, 5000, 13, 136, 136), 'testFile1Size').
name(f_test_file2_323, simple_name, file_utils_test_case_1_expr35, expression, range(file_utils_test_case_1, 5039, 9, 138, 138), 'testFile2').
name(m_get_parent_file_158, simple_name, file_utils_test_case_1_expr35, name, range(file_utils_test_case_1, 5049, 13, 138, 138), 'getParentFile').
name(m_exists_36, simple_name, file_utils_test_case_1_expr34, name, range(file_utils_test_case_1, 5065, 6, 138, 138), 'exists').
name(v_output_329, simple_name, file_utils_test_case_1_code39, name, range(file_utils_test_case_1, 5261, 6, 142, 142), 'output').
name(t_test_utils_5, simple_name, file_utils_test_case_1_expr38, expression, range(file_utils_test_case_1, 5359, 9, 144, 144), 'TestUtils').
name(m_generate_test_data_159, simple_name, file_utils_test_case_1_expr38, name, range(file_utils_test_case_1, 5369, 16, 144, 144), 'generateTestData').
name(v_output_329, simple_name, file_utils_test_case_1_expr38, (arguments, 0), range(file_utils_test_case_1, 5386, 6, 144, 144), 'output').
name(f_test_file2_size_325, simple_name, file_utils_test_case_1_expr38, (arguments, 1), range(file_utils_test_case_1, 5394, 13, 144, 144), 'testFile2Size').
name(m_get_class_163, simple_name, file_utils_test_case_1_expr40, name, range(file_utils_test_case_1, 5478, 8, 149, 149), 'getClass').
name(m_get_simple_name_162, simple_name, file_utils_test_case_1_expr39, name, range(file_utils_test_case_1, 5489, 13, 149, 149), 'getSimpleName').
name(v_file_1_331, simple_name, file_utils_test_case_1_code44, name, range(file_utils_test_case_1, 24778, 5, 631, 631), 'file1').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr42, (arguments, 0), range(file_utils_test_case_1, 24795, 15, 631, 631), 'temporaryFolder').
name(m_get_name_161, simple_name, file_utils_test_case_1_expr43, name, range(file_utils_test_case_1, 24812, 7, 631, 631), 'getName').
name(v_file_2_332, simple_name, file_utils_test_case_1_code48, name, range(file_utils_test_case_1, 24843, 5, 632, 632), 'file2').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr44, (arguments, 0), range(file_utils_test_case_1, 24860, 15, 632, 632), 'temporaryFolder').
name(m_get_name_161, simple_name, file_utils_test_case_1_expr46, name, range(file_utils_test_case_1, 24877, 7, 632, 632), 'getName').
name(m_assert_true_201, simple_name, file_utils_test_case_1_expr47, name, range(file_utils_test_case_1, 24903, 10, 633, 633), 'assertTrue').
name(t_file_utils_6, simple_name, file_utils_test_case_1_expr48, expression, range(file_utils_test_case_1, 24914, 9, 633, 633), 'FileUtils').
name(m_content_equals_ignore_eol_35, simple_name, file_utils_test_case_1_expr48, name, range(file_utils_test_case_1, 24924, 22, 633, 633), 'contentEqualsIgnoreEOL').
%counters_1 - org.apache.commons.io.file.Counters
name(f_byte_counter_351, simple_name, counters_1_expr3, name, range(counters_1, 1696, 11, 48, 48), 'byteCounter').
name(p_byte_counter_348, simple_name, counters_1_expr2, right_hand_side, range(counters_1, 1710, 11, 48, 48), 'byteCounter').
name(f_directory_counter_352, simple_name, counters_1_expr6, name, range(counters_1, 1740, 16, 49, 49), 'directoryCounter').
name(p_directory_counter_349, simple_name, counters_1_expr5, right_hand_side, range(counters_1, 1759, 16, 49, 49), 'directoryCounter').
name(f_file_counter_353, simple_name, counters_1_expr9, name, range(counters_1, 1794, 11, 50, 50), 'fileCounter').
name(p_file_counter_350, simple_name, counters_1_expr8, right_hand_side, range(counters_1, 1808, 11, 50, 50), 'fileCounter').
name(f_byte_counter_351, simple_name, counters_1_stmt5, expression, range(counters_1, 1911, 11, 55, 55), 'byteCounter').
name(f_file_counter_353, simple_name, counters_1_expr11, name, range(counters_1, 2263, 11, 70, 70), 'fileCounter').
name(f_value_357, simple_name, counters_1_expr13, left_hand_side, range(counters_1, 4809, 5, 183, 183), 'value').
name(p_add_356, simple_name, counters_1_expr13, right_hand_side, range(counters_1, 4818, 3, 183, 183), 'add').
name(f_value_357, simple_name, counters_1_stmt8, expression, range(counters_1, 4900, 5, 189, 189), 'value').
name(f_value_357, simple_name, counters_1_expr14, operand, range(counters_1, 5202, 5, 204, 204), 'value').
name(t_counters_7, simple_name, counters_1_expr16, expression, range(counters_1, 5640, 8, 222, 222), 'Counters').
name(m_long_counter_343, simple_name, counters_1_expr16, name, range(counters_1, 5649, 11, 222, 222), 'longCounter').
name(t_counters_7, simple_name, counters_1_expr17, expression, range(counters_1, 5664, 8, 222, 222), 'Counters').
name(m_long_counter_343, simple_name, counters_1_expr17, name, range(counters_1, 5673, 11, 222, 222), 'longCounter').
name(t_counters_7, simple_name, counters_1_expr18, expression, range(counters_1, 5688, 8, 222, 222), 'Counters').
name(m_long_counter_343, simple_name, counters_1_expr18, name, range(counters_1, 5697, 11, 222, 222), 'longCounter').

%%% Literals
%path_utils_1 - org.apache.commons.io.file.PathUtils
literal(path_utils_1_literal1, number_literal, path_utils_1_expr7, else_expression, range(path_utils_1, 5557, 1, 137, 137), 0).
%file_utils_1 - org.apache.commons.io.FileUtils
literal(file_utils_1_literal1, number_literal, file_utils_1_expr11, (dimensions, 0), range(file_utils_1, 5070, 1, 171, 171), 0).
literal(file_utils_1_literal2, null_literal, file_utils_1_code69, initializer, range(file_utils_1, 12204, 4, 334, 334), null).
literal(file_utils_1_literal3, null_literal, file_utils_1_expr14, left_operand, range(file_utils_1, 12419, 4, 343, 343), null).
literal(file_utils_1_literal4, number_literal, file_utils_1_expr27, right_operand, range(file_utils_1, 57777, 1, 1347, 1347), 1).
literal(file_utils_1_literal5, number_literal, file_utils_1_expr30, right_operand, range(file_utils_1, 57827, 1, 1347, 1347), 1).
literal(file_utils_1_literal6, null_literal, file_utils_1_expr33, right_operand, range(file_utils_1, 72820, 4, 1726, 1726), null).
literal(file_utils_1_literal7, null_literal, file_utils_1_expr41, right_operand, range(file_utils_1, 113284, 4, 2693, 2693), null).
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
literal(test_utils_1_literal1, number_literal, test_utils_1_code5, initializer, range(test_utils_1, 2612, 1, 73, 73), 0).
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
literal(directory_walker_1_literal1, null_literal, directory_walker_1_stmt1, (arguments, 0), range(directory_walker_1, 9944, 4, 283, 283), null).
literal(directory_walker_1_literal2, number_literal, directory_walker_1_expr2, operand, range(directory_walker_1, 9951, 1, 283, 283), 1).
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
literal(file_utils_test_case_1_literal1, number_literal, file_utils_test_case_1_expr1, (arguments, 0), range(file_utils_test_case_1, 3041, 3, 87, 87), 100).
literal(file_utils_test_case_1_literal2, string_literal, file_utils_test_case_1_expr4, (arguments, 1), range(file_utils_test_case_1, 3566, 16, 107, 107), "file1-test.txt").
literal(file_utils_test_case_1_literal3, string_literal, file_utils_test_case_1_expr6, (arguments, 1), range(file_utils_test_case_1, 3631, 17, 108, 108), "file1a-test.txt").
literal(file_utils_test_case_1_literal4, string_literal, file_utils_test_case_1_expr45, right_operand, range(file_utils_test_case_1, 24889, 3, 632, 632), "2").
literal(file_utils_test_case_1_literal5, null_literal, file_utils_test_case_1_expr48, (arguments, 0), range(file_utils_test_case_1, 24947, 4, 633, 633), null).
literal(file_utils_test_case_1_literal6, null_literal, file_utils_test_case_1_expr48, (arguments, 1), range(file_utils_test_case_1, 24953, 4, 633, 633), null).
literal(file_utils_test_case_1_literal7, null_literal, file_utils_test_case_1_expr48, (arguments, 2), range(file_utils_test_case_1, 24959, 4, 633, 633), null).
%counters_1 - org.apache.commons.io.file.Counters

%%% Other Code Entities
%path_utils_1 - org.apache.commons.io.file.PathUtils
code(path_utils_1_code1, compilation_unit, range(path_utils_1, 0, 9459, 1, -1)).
code(path_utils_1_code2, type_declaration, path_utils_1_code1, (types, 0), range(path_utils_1, 1181, 8277, 32, 244)).
code(path_utils_1_code3, method_declaration, path_utils_1_code2, (body_declarations, 4), range(path_utils_1, 3564, 895, 93, 111)).
code(path_utils_1_code4, method_declaration, path_utils_1_code2, (body_declarations, 6), range(path_utils_1, 4920, 828, 124, 143)).
code(path_utils_1_code5, modifier, path_utils_1_stmt3, (modifiers, 0), range(path_utils_1, 5430, 5, 136, 136)).
code(path_utils_1_code6, simple_type, path_utils_1_stmt3, type, range(path_utils_1, 5436, 12, 136, 136)).
code(path_utils_1_code7, variable_declaration_fragment, path_utils_1_stmt3, (fragments, 0), range(path_utils_1, 5449, 40, 136, 136)).
code(path_utils_1_code8, modifier, path_utils_1_stmt4, (modifiers, 0), range(path_utils_1, 5499, 5, 137, 137)).
code(path_utils_1_code9, primitive_type, path_utils_1_stmt4, type, range(path_utils_1, 5505, 4, 137, 137)).
code(path_utils_1_code10, variable_declaration_fragment, path_utils_1_stmt4, (fragments, 0), range(path_utils_1, 5510, 48, 137, 137)).
%file_utils_1 - org.apache.commons.io.FileUtils
code(file_utils_1_code1, compilation_unit, range(file_utils_1, 0, 134019, 1, -1)).
code(file_utils_1_code2, type_declaration, file_utils_1_code1, (types, 0), range(file_utils_1, 2163, 131855, 58, 3162)).
code(file_utils_1_code3, field_declaration, file_utils_1_code2, (body_declarations, 1), range(file_utils_1, 3110, 153, 91, 96)).
code(file_utils_1_code4, modifier, file_utils_1_code3, (modifiers, 0), range(file_utils_1, 3193, 6, 96, 96)).
code(file_utils_1_code5, modifier, file_utils_1_code3, (modifiers, 1), range(file_utils_1, 3200, 6, 96, 96)).
code(file_utils_1_code6, modifier, file_utils_1_code3, (modifiers, 2), range(file_utils_1, 3207, 5, 96, 96)).
code(file_utils_1_code7, simple_type, file_utils_1_code3, type, range(file_utils_1, 3213, 10, 96, 96)).
code(file_utils_1_code8, variable_declaration_fragment, file_utils_1_code3, (fragments, 0), range(file_utils_1, 3224, 38, 96, 96)).
code(file_utils_1_code9, field_declaration, file_utils_1_code2, (body_declarations, 3), range(file_utils_1, 3383, 156, 103, 108)).
code(file_utils_1_code10, modifier, file_utils_1_code9, (modifiers, 0), range(file_utils_1, 3466, 6, 108, 108)).
code(file_utils_1_code11, modifier, file_utils_1_code9, (modifiers, 1), range(file_utils_1, 3473, 6, 108, 108)).
code(file_utils_1_code12, modifier, file_utils_1_code9, (modifiers, 2), range(file_utils_1, 3480, 5, 108, 108)).
code(file_utils_1_code13, simple_type, file_utils_1_code9, type, range(file_utils_1, 3486, 10, 108, 108)).
code(file_utils_1_code14, variable_declaration_fragment, file_utils_1_code9, (fragments, 0), range(file_utils_1, 3497, 41, 108, 108)).
code(file_utils_1_code15, field_declaration, file_utils_1_code2, (body_declarations, 5), range(file_utils_1, 3659, 156, 115, 120)).
code(file_utils_1_code16, modifier, file_utils_1_code15, (modifiers, 0), range(file_utils_1, 3742, 6, 120, 120)).
code(file_utils_1_code17, modifier, file_utils_1_code15, (modifiers, 1), range(file_utils_1, 3749, 6, 120, 120)).
code(file_utils_1_code18, modifier, file_utils_1_code15, (modifiers, 2), range(file_utils_1, 3756, 5, 120, 120)).
code(file_utils_1_code19, simple_type, file_utils_1_code15, type, range(file_utils_1, 3762, 10, 120, 120)).
code(file_utils_1_code20, variable_declaration_fragment, file_utils_1_code15, (fragments, 0), range(file_utils_1, 3773, 41, 120, 120)).
code(file_utils_1_code21, field_declaration, file_utils_1_code2, (body_declarations, 7), range(file_utils_1, 3935, 156, 127, 132)).
code(file_utils_1_code22, modifier, file_utils_1_code21, (modifiers, 0), range(file_utils_1, 4018, 6, 132, 132)).
code(file_utils_1_code23, modifier, file_utils_1_code21, (modifiers, 1), range(file_utils_1, 4025, 6, 132, 132)).
code(file_utils_1_code24, modifier, file_utils_1_code21, (modifiers, 2), range(file_utils_1, 4032, 5, 132, 132)).
code(file_utils_1_code25, simple_type, file_utils_1_code21, type, range(file_utils_1, 4038, 10, 132, 132)).
code(file_utils_1_code26, variable_declaration_fragment, file_utils_1_code21, (fragments, 0), range(file_utils_1, 4049, 41, 132, 132)).
code(file_utils_1_code27, field_declaration, file_utils_1_code2, (body_declarations, 9), range(file_utils_1, 4211, 156, 139, 144)).
code(file_utils_1_code28, modifier, file_utils_1_code27, (modifiers, 0), range(file_utils_1, 4294, 6, 144, 144)).
code(file_utils_1_code29, modifier, file_utils_1_code27, (modifiers, 1), range(file_utils_1, 4301, 6, 144, 144)).
code(file_utils_1_code30, modifier, file_utils_1_code27, (modifiers, 2), range(file_utils_1, 4308, 5, 144, 144)).
code(file_utils_1_code31, simple_type, file_utils_1_code27, type, range(file_utils_1, 4314, 10, 144, 144)).
code(file_utils_1_code32, variable_declaration_fragment, file_utils_1_code27, (fragments, 0), range(file_utils_1, 4325, 41, 144, 144)).
code(file_utils_1_code33, field_declaration, file_utils_1_code2, (body_declarations, 11), range(file_utils_1, 4487, 156, 151, 156)).
code(file_utils_1_code34, modifier, file_utils_1_code33, (modifiers, 0), range(file_utils_1, 4570, 6, 156, 156)).
code(file_utils_1_code35, modifier, file_utils_1_code33, (modifiers, 1), range(file_utils_1, 4577, 6, 156, 156)).
code(file_utils_1_code36, modifier, file_utils_1_code33, (modifiers, 2), range(file_utils_1, 4584, 5, 156, 156)).
code(file_utils_1_code37, simple_type, file_utils_1_code33, type, range(file_utils_1, 4590, 10, 156, 156)).
code(file_utils_1_code38, variable_declaration_fragment, file_utils_1_code33, (fragments, 0), range(file_utils_1, 4601, 41, 156, 156)).
code(file_utils_1_code39, field_declaration, file_utils_1_code2, (body_declarations, 12), range(file_utils_1, 4649, 163, 158, 161)).
code(file_utils_1_code40, modifier, file_utils_1_code39, (modifiers, 0), range(file_utils_1, 4708, 6, 161, 161)).
code(file_utils_1_code41, modifier, file_utils_1_code39, (modifiers, 1), range(file_utils_1, 4715, 6, 161, 161)).
code(file_utils_1_code42, modifier, file_utils_1_code39, (modifiers, 2), range(file_utils_1, 4722, 5, 161, 161)).
code(file_utils_1_code43, simple_type, file_utils_1_code39, type, range(file_utils_1, 4728, 10, 161, 161)).
code(file_utils_1_code44, variable_declaration_fragment, file_utils_1_code39, (fragments, 0), range(file_utils_1, 4739, 72, 161, 161)).
code(file_utils_1_code45, field_declaration, file_utils_1_code2, (body_declarations, 13), range(file_utils_1, 4818, 126, 163, 166)).
code(file_utils_1_code46, modifier, file_utils_1_code45, (modifiers, 0), range(file_utils_1, 4877, 6, 166, 166)).
code(file_utils_1_code47, modifier, file_utils_1_code45, (modifiers, 1), range(file_utils_1, 4884, 6, 166, 166)).
code(file_utils_1_code48, modifier, file_utils_1_code45, (modifiers, 2), range(file_utils_1, 4891, 5, 166, 166)).
code(file_utils_1_code49, simple_type, file_utils_1_code45, type, range(file_utils_1, 4897, 10, 166, 166)).
code(file_utils_1_code50, variable_declaration_fragment, file_utils_1_code45, (fragments, 0), range(file_utils_1, 4908, 35, 166, 166)).
code(file_utils_1_code51, field_declaration, file_utils_1_code2, (body_declarations, 14), range(file_utils_1, 4950, 123, 168, 171)).
code(file_utils_1_code52, modifier, file_utils_1_code51, (modifiers, 0), range(file_utils_1, 5015, 6, 171, 171)).
code(file_utils_1_code53, modifier, file_utils_1_code51, (modifiers, 1), range(file_utils_1, 5022, 6, 171, 171)).
code(file_utils_1_code54, modifier, file_utils_1_code51, (modifiers, 2), range(file_utils_1, 5029, 5, 171, 171)).
code(file_utils_1_code55, array_type, file_utils_1_code51, type, range(file_utils_1, 5035, 6, 171, 171)).
code(file_utils_1_code56, simple_type, file_utils_1_code55, element_type, range(file_utils_1, 5035, 4, 171, 171)).
code(file_utils_1_code57, dimension, file_utils_1_code55, (dimensions, 0), range(file_utils_1, 5039, 2, 171, 171)).
code(file_utils_1_code58, variable_declaration_fragment, file_utils_1_code51, (fragments, 0), range(file_utils_1, 5042, 30, 171, 171)).
code(file_utils_1_code59, array_type, file_utils_1_expr11, type, range(file_utils_1, 5065, 7, 171, 171)).
code(file_utils_1_code60, simple_type, file_utils_1_code59, element_type, range(file_utils_1, 5065, 4, 171, 171)).
code(file_utils_1_code61, dimension, file_utils_1_code59, (dimensions, 0), range(file_utils_1, 5069, 3, 171, 171)).
code(file_utils_1_code62, method_declaration, file_utils_1_code2, (body_declarations, 22), range(file_utils_1, 11751, 733, 324, 346)).
code(file_utils_1_code63, modifier, file_utils_1_stmt1, (modifiers, 0), range(file_utils_1, 12120, 5, 332, 332)).
code(file_utils_1_code64, array_type, file_utils_1_stmt1, type, range(file_utils_1, 12126, 6, 332, 332)).
code(file_utils_1_code65, simple_type, file_utils_1_code64, element_type, range(file_utils_1, 12126, 4, 332, 332)).
code(file_utils_1_code66, dimension, file_utils_1_code64, (dimensions, 0), range(file_utils_1, 12130, 2, 332, 332)).
code(file_utils_1_code67, variable_declaration_fragment, file_utils_1_stmt1, (fragments, 0), range(file_utils_1, 12133, 36, 332, 332)).
code(file_utils_1_code68, simple_type, file_utils_1_stmt2, type, range(file_utils_1, 12180, 11, 334, 334)).
code(file_utils_1_code69, variable_declaration_fragment, file_utils_1_stmt2, (fragments, 0), range(file_utils_1, 12192, 16, 334, 334)).
code(file_utils_1_code70, single_variable_declaration, file_utils_1_stmt3, parameter, range(file_utils_1, 12223, 15, 335, 335)).
code(file_utils_1_code71, modifier, file_utils_1_code70, (modifiers, 0), range(file_utils_1, 12223, 5, 335, 335)).
code(file_utils_1_code72, simple_type, file_utils_1_code70, type, range(file_utils_1, 12229, 4, 335, 335)).
code(file_utils_1_code73, catch_clause, file_utils_1_stmt4, (catch_clauses, 0), range(file_utils_1, 12317, 78, 338, 340)).
code(file_utils_1_code74, method_declaration, file_utils_1_code2, (body_declarations, 25), range(file_utils_1, 15152, 2046, 429, 476)).
code(file_utils_1_code75, modifier, file_utils_1_stmt7, (modifiers, 0), range(file_utils_1, 16023, 5, 448, 448)).
code(file_utils_1_code76, primitive_type, file_utils_1_stmt7, type, range(file_utils_1, 16029, 7, 448, 448)).
code(file_utils_1_code77, variable_declaration_fragment, file_utils_1_stmt7, (fragments, 0), range(file_utils_1, 16037, 28, 448, 448)).
code(file_utils_1_code78, method_declaration, file_utils_1_code2, (body_declarations, 44), range(file_utils_1, 48114, 707, 1114, 1135)).
code(file_utils_1_code79, method_declaration, file_utils_1_code2, (body_declarations, 50), range(file_utils_1, 56726, 1243, 1323, 1351)).
code(file_utils_1_code80, catch_clause, file_utils_1_stmt12, (catch_clauses, 0), range(file_utils_1, 57618, 105, 1343, 1345)).
code(file_utils_1_code81, method_declaration, file_utils_1_code2, (body_declarations, 68), range(file_utils_1, 71862, 1102, 1702, 1730)).
code(file_utils_1_code82, method_declaration, file_utils_1_code2, (body_declarations, 109), range(file_utils_1, 112497, 942, 2674, 2697)).
code(file_utils_1_code83, modifier, file_utils_1_stmt19, (modifiers, 0), range(file_utils_1, 113219, 5, 2692, 2692)).
code(file_utils_1_code85, simple_type, file_utils_1_code84, element_type, range(file_utils_1, 113225, 4, 2692, 2692)).
code(file_utils_1_code84, array_type, file_utils_1_stmt19, type, range(file_utils_1, 113225, 6, 2692, 2692)).
code(file_utils_1_code86, dimension, file_utils_1_code84, (dimensions, 0), range(file_utils_1, 113229, 2, 2692, 2692)).
code(file_utils_1_code87, variable_declaration_fragment, file_utils_1_stmt19, (fragments, 0), range(file_utils_1, 113232, 29, 2692, 2692)).
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
code(test_utils_1_code1, compilation_unit, range(test_utils_1, 0, 8744, 1, -1)).
code(test_utils_1_code2, type_declaration, test_utils_1_code1, (types, 0), range(test_utils_1, 1489, 7254, 40, 234)).
code(test_utils_1_code3, method_declaration, test_utils_1_code2, (body_declarations, 3), range(test_utils_1, 2481, 329, 71, 79)).
code(test_utils_1_code4, primitive_type, test_utils_1_expr1, type, range(test_utils_1, 2604, 3, 73, 73)).
code(test_utils_1_code5, variable_declaration_fragment, test_utils_1_expr1, (fragments, 0), range(test_utils_1, 2608, 5, 73, 73)).
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
code(directory_walker_1_code1, compilation_unit, range(directory_walker_1, 0, 26261, 1, -1)).
code(directory_walker_1_code2, type_declaration, directory_walker_1_code1, (types, 0), range(directory_walker_1, 1109, 25151, 28, 677)).
code(directory_walker_1_code3, method_declaration, directory_walker_1_code2, (body_declarations, 2), range(directory_walker_1, 9810, 150, 279, 284)).
code(directory_walker_1_code4, method_declaration, directory_walker_1_code2, (body_declarations, 3), range(directory_walker_1, 9966, 776, 286, 302)).
code(directory_walker_1_code5, modifier, directory_walker_1_code4, (modifiers, 0), range(directory_walker_1, 10594, 9, 299, 299)).
code(directory_walker_1_code7, modifier, directory_walker_1_code6, (modifiers, 0), range(directory_walker_1, 10620, 5, 299, 299)).
code(directory_walker_1_code6, single_variable_declaration, directory_walker_1_code4, (parameters, 0), range(directory_walker_1, 10620, 23, 299, 299)).
code(directory_walker_1_code8, simple_type, directory_walker_1_code6, type, range(directory_walker_1, 10626, 10, 299, 299)).
code(directory_walker_1_code9, single_variable_declaration, directory_walker_1_code4, (parameters, 1), range(directory_walker_1, 10645, 20, 299, 299)).
code(directory_walker_1_code10, modifier, directory_walker_1_code9, (modifiers, 0), range(directory_walker_1, 10645, 5, 299, 299)).
code(directory_walker_1_code11, primitive_type, directory_walker_1_code9, type, range(directory_walker_1, 10651, 3, 299, 299)).
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
code(file_utils_test_case_1_code1, compilation_unit, range(file_utils_test_case_1, 0, 124493, 1, -1)).
code(file_utils_test_case_1_code2, type_declaration, file_utils_test_case_1_code1, (types, 0), range(file_utils_test_case_1, 2367, 122125, 61, 3114)).
code(file_utils_test_case_1_code3, modifier, file_utils_test_case_1_code2, (modifiers, 1), range(file_utils_test_case_1, 2566, 6, 67, 67)).
code(file_utils_test_case_1_code4, field_declaration, file_utils_test_case_1_code2, (body_declarations, 2), range(file_utils_test_case_1, 2771, 120, 79, 82)).
code(file_utils_test_case_1_code5, modifier, file_utils_test_case_1_code4, (modifiers, 0), range(file_utils_test_case_1, 2818, 7, 82, 82)).
code(file_utils_test_case_1_code6, modifier, file_utils_test_case_1_code4, (modifiers, 1), range(file_utils_test_case_1, 2826, 6, 82, 82)).
code(file_utils_test_case_1_code7, modifier, file_utils_test_case_1_code4, (modifiers, 2), range(file_utils_test_case_1, 2833, 5, 82, 82)).
code(file_utils_test_case_1_code8, simple_type, file_utils_test_case_1_code4, type, range(file_utils_test_case_1, 2839, 10, 82, 82)).
code(file_utils_test_case_1_code9, variable_declaration_fragment, file_utils_test_case_1_code4, (fragments, 0), range(file_utils_test_case_1, 2850, 40, 82, 82)).
code(file_utils_test_case_1_code10, field_declaration, file_utils_test_case_1_code2, (body_declarations, 3), range(file_utils_test_case_1, 2897, 149, 84, 87)).
code(file_utils_test_case_1_code11, modifier, file_utils_test_case_1_code10, (modifiers, 0), range(file_utils_test_case_1, 2957, 7, 87, 87)).
code(file_utils_test_case_1_code12, modifier, file_utils_test_case_1_code10, (modifiers, 1), range(file_utils_test_case_1, 2965, 6, 87, 87)).
code(file_utils_test_case_1_code13, modifier, file_utils_test_case_1_code10, (modifiers, 2), range(file_utils_test_case_1, 2972, 5, 87, 87)).
code(file_utils_test_case_1_code14, simple_type, file_utils_test_case_1_code10, type, range(file_utils_test_case_1, 2978, 10, 87, 87)).
code(file_utils_test_case_1_code15, variable_declaration_fragment, file_utils_test_case_1_code10, (fragments, 0), range(file_utils_test_case_1, 2989, 56, 87, 87)).
code(file_utils_test_case_1_code16, field_declaration, file_utils_test_case_1_code2, (body_declarations, 4), range(file_utils_test_case_1, 3052, 127, 89, 92)).
code(file_utils_test_case_1_code17, modifier, file_utils_test_case_1_code16, (modifiers, 0), range(file_utils_test_case_1, 3098, 7, 92, 92)).
code(file_utils_test_case_1_code18, modifier, file_utils_test_case_1_code16, (modifiers, 1), range(file_utils_test_case_1, 3106, 6, 92, 92)).
code(file_utils_test_case_1_code19, modifier, file_utils_test_case_1_code16, (modifiers, 2), range(file_utils_test_case_1, 3113, 5, 92, 92)).
code(file_utils_test_case_1_code20, simple_type, file_utils_test_case_1_code16, type, range(file_utils_test_case_1, 3119, 19, 92, 92)).
code(file_utils_test_case_1_code21, variable_declaration_fragment, file_utils_test_case_1_code16, (fragments, 0), range(file_utils_test_case_1, 3139, 39, 92, 92)).
code(file_utils_test_case_1_code22, simple_type, file_utils_test_case_1_expr2, type, range(file_utils_test_case_1, 3157, 19, 92, 92)).
code(file_utils_test_case_1_code23, method_declaration, file_utils_test_case_1_code2, (body_declarations, 9), range(file_utils_test_case_1, 3465, 1960, 105, 146)).
code(file_utils_test_case_1_code24, simple_type, file_utils_test_case_1_expr4, type, range(file_utils_test_case_1, 3544, 4, 107, 107)).
code(file_utils_test_case_1_code25, simple_type, file_utils_test_case_1_expr6, type, range(file_utils_test_case_1, 3609, 4, 108, 108)).
code(file_utils_test_case_1_code26, primitive_type, file_utils_test_case_1_expr8, type, range(file_utils_test_case_1, 3677, 3, 110, 110)).
code(file_utils_test_case_1_code27, primitive_type, file_utils_test_case_1_expr11, type, range(file_utils_test_case_1, 3727, 3, 111, 111)).
code(file_utils_test_case_1_code28, modifier, file_utils_test_case_1_expr16, (modifiers, 0), range(file_utils_test_case_1, 3960, 5, 116, 116)).
code(file_utils_test_case_1_code29, simple_type, file_utils_test_case_1_expr16, type, range(file_utils_test_case_1, 3966, 20, 116, 116)).
code(file_utils_test_case_1_code30, variable_declaration_fragment, file_utils_test_case_1_expr16, (fragments, 0), range(file_utils_test_case_1, 3987, 83, 116, 117)).
code(file_utils_test_case_1_code31, modifier, file_utils_test_case_1_expr22, (modifiers, 0), range(file_utils_test_case_1, 4356, 5, 124, 124)).
code(file_utils_test_case_1_code32, simple_type, file_utils_test_case_1_expr22, type, range(file_utils_test_case_1, 4362, 20, 124, 124)).
code(file_utils_test_case_1_code33, variable_declaration_fragment, file_utils_test_case_1_expr22, (fragments, 0), range(file_utils_test_case_1, 4383, 83, 124, 125)).
code(file_utils_test_case_1_code34, modifier, file_utils_test_case_1_expr30, (modifiers, 0), range(file_utils_test_case_1, 4838, 5, 134, 134)).
code(file_utils_test_case_1_code35, simple_type, file_utils_test_case_1_expr30, type, range(file_utils_test_case_1, 4844, 20, 134, 134)).
code(file_utils_test_case_1_code36, variable_declaration_fragment, file_utils_test_case_1_expr30, (fragments, 0), range(file_utils_test_case_1, 4865, 83, 134, 135)).
code(file_utils_test_case_1_code37, modifier, file_utils_test_case_1_expr36, (modifiers, 0), range(file_utils_test_case_1, 5234, 5, 142, 142)).
code(file_utils_test_case_1_code38, simple_type, file_utils_test_case_1_expr36, type, range(file_utils_test_case_1, 5240, 20, 142, 142)).
code(file_utils_test_case_1_code39, variable_declaration_fragment, file_utils_test_case_1_expr36, (fragments, 0), range(file_utils_test_case_1, 5261, 82, 142, 143)).
code(file_utils_test_case_1_code40, method_declaration, file_utils_test_case_1_code2, (body_declarations, 10), range(file_utils_test_case_1, 5431, 80, 148, 150)).
code(file_utils_test_case_1_code41, method_declaration, file_utils_test_case_1_code2, (body_declarations, 47), range(file_utils_test_case_1, 24659, 3632, 628, 708)).
code(file_utils_test_case_1_code42, modifier, file_utils_test_case_1_stmt20, (modifiers, 0), range(file_utils_test_case_1, 24767, 5, 631, 631)).
code(file_utils_test_case_1_code43, simple_type, file_utils_test_case_1_stmt20, type, range(file_utils_test_case_1, 24773, 4, 631, 631)).
code(file_utils_test_case_1_code44, variable_declaration_fragment, file_utils_test_case_1_stmt20, (fragments, 0), range(file_utils_test_case_1, 24778, 44, 631, 631)).
code(file_utils_test_case_1_code45, simple_type, file_utils_test_case_1_expr42, type, range(file_utils_test_case_1, 24790, 4, 631, 631)).
code(file_utils_test_case_1_code46, modifier, file_utils_test_case_1_stmt21, (modifiers, 0), range(file_utils_test_case_1, 24832, 5, 632, 632)).
code(file_utils_test_case_1_code47, simple_type, file_utils_test_case_1_stmt21, type, range(file_utils_test_case_1, 24838, 4, 632, 632)).
code(file_utils_test_case_1_code48, variable_declaration_fragment, file_utils_test_case_1_stmt21, (fragments, 0), range(file_utils_test_case_1, 24843, 50, 632, 632)).
code(file_utils_test_case_1_code49, simple_type, file_utils_test_case_1_expr44, type, range(file_utils_test_case_1, 24855, 4, 632, 632)).
%counters_1 - org.apache.commons.io.file.Counters
code(counters_1_code1, compilation_unit, range(counters_1, 0, 7110, 1, -1)).
code(counters_1_code2, type_declaration, counters_1_code1, (types, 0), range(counters_1, 871, 6238, 22, 290)).
code(counters_1_code3, type_declaration, counters_1_code2, (body_declarations, 0), range(counters_1, 1002, 1553, 29, 79)).
code(counters_1_code4, method_declaration, counters_1_code3, (body_declarations, 3), range(counters_1, 1296, 534, 38, 51)).
code(counters_1_code5, method_declaration, counters_1_code3, (body_declarations, 4), range(counters_1, 1840, 93, 53, 56)).
code(counters_1_code6, method_declaration, counters_1_code3, (body_declarations, 6), range(counters_1, 2056, 229, 63, 71)).
code(counters_1_code7, type_declaration, counters_1_code2, (body_declarations, 4), range(counters_1, 4602, 729, 174, 211)).
code(counters_1_code8, method_declaration, counters_1_code7, (body_declarations, 1), range(counters_1, 4745, 88, 181, 185)).
code(counters_1_code9, method_declaration, counters_1_code7, (body_declarations, 2), range(counters_1, 4843, 73, 187, 190)).
code(counters_1_code10, method_declaration, counters_1_code7, (body_declarations, 5), range(counters_1, 5146, 74, 202, 205)).
code(counters_1_code11, type_declaration, counters_1_code2, (body_declarations, 5), range(counters_1, 5337, 392, 213, 225)).
code(counters_1_code12, method_declaration, counters_1_code11, (body_declarations, 0), range(counters_1, 5517, 205, 218, 223)).
code(counters_1_code13, method_declaration, counters_1_code2, (body_declarations, 9), range(counters_1, 6724, 170, 273, 280)).
code(counters_1_code14, simple_type, counters_1_expr19, type, range(counters_1, 6874, 11, 279, 279)).
code(counters_1_code15, method_declaration, counters_1_code2, (body_declarations, 10), range(counters_1, 6900, 207, 282, 289)).
code(counters_1_code16, simple_type, counters_1_expr20, type, range(counters_1, 7082, 16, 288, 288)).

%%% Name References

name_ref(t_big_integer_1, type, 'BigInteger', 'Ljava/math/BigInteger;').
name_ref(t_counters_7, type, 'Counters', 'Lorg/apache/commons/io/file/Counters;').
name_ref(t_file_utils_6, type, 'FileUtils', 'Lorg/apache/commons/io/FileUtils;').
name_ref(t_file_utils_test_case_4, type, 'FileUtilsTestCase', 'Lorg/apache/commons/io/FileUtilsTestCase;').
name_ref(t_files_3, type, 'Files', 'Ljava/nio/file/Files;').
name_ref(t_path_utils_2, type, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;').
name_ref(t_test_utils_5, type, 'TestUtils', 'Lorg/apache/commons/io/testtools/TestUtils;').
name_ref(v_delete_counters_138, var, 'deleteCounters', 'Lorg/apache/commons/io/FileUtils;.forceDelete(Ljava/io/File;)V|Ljava/io/IOException;#deleteCounters').
name_ref(v_exception_73, var, 'exception', 'Lorg/apache/commons/io/FileUtils;.cleanDirectory(Ljava/io/File;)V|Ljava/io/IOException;#exception').
name_ref(v_file_1_331, var, 'file1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testContentEqualsIgnoreEOL()V|Ljava/lang/Exception;#file1').
name_ref(v_file_1exists_81, var, 'file1Exists', 'Lorg/apache/commons/io/FileUtils;.contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z|Ljava/io/IOException;#file1Exists').
name_ref(v_file_2_332, var, 'file2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testContentEqualsIgnoreEOL()V|Ljava/lang/Exception;#file2').
name_ref(v_file_74, var, 'file', 'Lorg/apache/commons/io/FileUtils;.cleanDirectory(Ljava/io/File;)V|Ljava/io/IOException;#0#file').
name_ref(v_files_235, var, 'files', 'Lorg/apache/commons/io/FileUtils;.verifiedListFiles(Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;#files').
name_ref(v_files_72, var, 'files', 'Lorg/apache/commons/io/FileUtils;.cleanDirectory(Ljava/io/File;)V|Ljava/io/IOException;#files').
name_ref(v_i_386, var, 'i', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#0#i').
name_ref(v_output_1_328, var, 'output1', 'Lorg/apache/commons/io/FileUtilsTestCase;.setUp()V|Ljava/lang/Exception;#2#0#output1').
name_ref(v_output_2_327, var, 'output2', 'Lorg/apache/commons/io/FileUtilsTestCase;.setUp()V|Ljava/lang/Exception;#1#0#output2').
name_ref(v_output_329, var, 'output', 'Lorg/apache/commons/io/FileUtilsTestCase;.setUp()V|Ljava/lang/Exception;#3#0#output').
name_ref(v_output_3_326, var, 'output3', 'Lorg/apache/commons/io/FileUtilsTestCase;.setUp()V|Ljava/lang/Exception;#0#0#output3').
name_ref(v_path_counts_369, var, 'pathCounts', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#pathCounts').
name_ref(v_size_370, var, 'size', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#size').
name_ref(p_add_356, param, 'add', 'Lorg/apache/commons/io/file/Counters$LongCounter;.add(J)V#add#0#0').
name_ref(p_append_203, param, 'append', 'Lorg/apache/commons/io/FileUtils;.openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;|Ljava/io/IOException;#append#0#1').
name_ref(p_append_242, param, 'append', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_249, param, 'append', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_append_256, param, 'append', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_append_261, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BZ)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_270, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;#append#0#4').
name_ref(p_append_275, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_282, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_append_289, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_append_298, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#4').
name_ref(p_append_303, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_310, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_append_317, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_b_0_395, param, 'b0', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;#b0#0#0').
name_ref(p_byte_counter_348, param, 'byteCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V#byteCounter#0#0').
name_ref(p_c_0_397, param, 'c0', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;#c0#0#0').
name_ref(p_cancel_21, param, 'cancel', 'Lorg/apache/commons/io/DirectoryWalker;.handleCancelled(Ljava/io/File;Ljava/util/Collection<TT;>;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V|Ljava/io/IOException;#cancel#0#2').
name_ref(p_charset_name_80, param, 'charsetName', 'Lorg/apache/commons/io/FileUtils;.contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_checksum_69, param, 'checksum', 'Lorg/apache/commons/io/FileUtils;.checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;|Ljava/io/IOException;#checksum#0#1').
name_ref(p_child_128, param, 'child', 'Lorg/apache/commons/io/FileUtils;.directoryContains(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;#child#0#1').
name_ref(p_child_dir_336, param, 'childDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.createFilesForTestCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#childDir#0#2').
name_ref(p_connection_timeout_121, param, 'connectionTimeout', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V|Ljava/io/IOException;#connectionTimeout#0#2').
name_ref(p_copy_options_361, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_364, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_create_dest_dir_191, param, 'createDestDir', 'Lorg/apache/commons/io/FileUtils;.moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#createDestDir#0#2').
name_ref(p_create_dest_dir_196, param, 'createDestDir', 'Lorg/apache/commons/io/FileUtils;.moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#createDestDir#0#2').
name_ref(p_create_dest_dir_199, param, 'createDestDir', 'Lorg/apache/commons/io/FileUtils;.moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#createDestDir#0#2').
name_ref(p_create_file_330, param, 'createFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.openOutputStream_noParent(Z)V|Ljava/lang/Exception;#createFile#0#0').
name_ref(p_data_239, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_241, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_244, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_247, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_251, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_254, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_258, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[B)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_260, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BZ)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_263, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BII)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_267, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_300, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_302, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_305, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_308, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_312, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_315, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_388, param, 'data', 'Lorg/apache/commons/io/testtools/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_date_154, param, 'date', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/util/Date;)Z#date#0#1').
name_ref(p_date_160, param, 'date', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/util/Date;)Z#date#0#1').
name_ref(p_depth_11, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_14, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.checkIfCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_17, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleIsCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_25, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectory(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_28, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_31, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_34, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_343, param, 'depth', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_346, param, 'depth', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_37, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleRestricted(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_40, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_44, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/io/File;I)V#depth#0#1').
name_ref(p_depth_47, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/lang/String;Ljava/io/File;I)V#depth#0#2').
name_ref(p_depth_limit_2, param, 'depthLimit', 'Lorg/apache/commons/io/DirectoryWalker;.(Ljava/io/FileFilter;I)V#depthLimit#0#1').
name_ref(p_depth_limit_7, param, 'depthLimit', 'Lorg/apache/commons/io/DirectoryWalker;.(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V#depthLimit#0#2').
name_ref(p_dest_233, param, 'dest', 'Lorg/apache/commons/io/FileUtils;.validateMoveParameters(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;#dest#0#1').
name_ref(p_dest_339, param, 'dest', 'Lorg/apache/commons/io/FileUtilsTestCase$111767;.renameTo(Ljava/io/File;)Z#dest#0#0').
name_ref(p_dest_67, param, 'dest', 'Lorg/apache/commons/io/FileUtils;.checkFileRequirements(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;#dest#0#1').
name_ref(p_dest_dir_105, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_107, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_112, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_114, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/lang/Iterable<Ljava/io/File;>;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_130, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_188, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.moveDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_190, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_195, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_198, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_84, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_86, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_89, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_92, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_96, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_file_100, param, 'destFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destFile#0#1').
name_ref(p_dest_file_135, param, 'destFile', 'Lorg/apache/commons/io/FileUtils;.doCopyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destFile#0#1').
name_ref(p_dest_file_193, param, 'destFile', 'Lorg/apache/commons/io/FileUtils;.moveFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destFile#0#1').
name_ref(p_dest_file_63, param, 'destFile', 'Lorg/apache/commons/io/FileUtils;.checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V|Ljava/io/IOException;#destFile#0#1').
name_ref(p_dest_file_98, param, 'destFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destFile#0#1').
name_ref(p_destination_110, param, 'destination', 'Lorg/apache/commons/io/FileUtils;.copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;#destination#0#1').
name_ref(p_destination_116, param, 'destination', 'Lorg/apache/commons/io/FileUtils;.copyToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;#destination#0#1').
name_ref(p_destination_118, param, 'destination', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;)V|Ljava/io/IOException;#destination#0#1').
name_ref(p_destination_120, param, 'destination', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V|Ljava/io/IOException;#destination#0#1').
name_ref(p_dir_filter_151, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection<Ljava/io/File;>;#dirFilter#0#2').
name_ref(p_dir_filter_168, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#dirFilter#0#2').
name_ref(p_dir_filter_174, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.iterateFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#dirFilter#0#2').
name_ref(p_dir_filter_180, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#dirFilter#0#2').
name_ref(p_dir_filter_186, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#dirFilter#0#2').
name_ref(p_dir_filter_215, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#dirFilter#0#0').
name_ref(p_directory_10, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_124, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.deleteDirectory(Ljava/io/File;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_125, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.deleteDirectoryOnExit(Ljava/io/File;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_127, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.directoryContains(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_140, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.forceMkdir(Ljava/io/File;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_142, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.getFile(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;#directory#0#0').
name_ref(p_directory_146, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.innerListFiles(Ljava/util/Collection<Ljava/io/File;>;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V#directory#0#1').
name_ref(p_directory_149, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_166, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_169, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_172, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.iterateFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_178, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_181, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_184, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_221, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectory(Ljava/io/File;)J#directory#0#0').
name_ref(p_directory_222, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectory0(Ljava/io/File;)J#directory#0#0').
name_ref(p_directory_223, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectoryAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;#directory#0#0').
name_ref(p_directory_224, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;#directory#0#0').
name_ref(p_directory_230, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V#directory#0#0').
name_ref(p_directory_234, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.verifiedListFiles(Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_24, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectory(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_27, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_30, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_342, param, 'directory', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_358, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_36, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.handleRestricted(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_365, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_367, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_372, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_375, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#directory#0#1').
name_ref(p_directory_39, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_61, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.checkDirectory(Ljava/io/File;)V#directory#0#0').
name_ref(p_directory_71, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.cleanDirectory(Ljava/io/File;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_75, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.cleanDirectoryOnExit(Ljava/io/File;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_counter_349, param, 'directoryCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V#directoryCounter#0#1').
name_ref(p_directory_filter_5, param, 'directoryFilter', 'Lorg/apache/commons/io/DirectoryWalker;.(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V#directoryFilter#0#0').
name_ref(p_dst_len_65, param, 'dstLen', 'Lorg/apache/commons/io/FileUtils;.checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V|Ljava/io/IOException;#dstLen#0#3').
name_ref(p_encoding_177, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_207, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_209, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_212, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_214, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_245, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_248, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_252, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_255, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_284, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;)V|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_287, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_291, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_295, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_306, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_309, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_313, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_316, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_exclusion_list_133, param, 'exclusionList', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;#exclusionList#0#4').
name_ref(p_extensions_170, param, 'extensions', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator<Ljava/io/File;>;#extensions#0#1').
name_ref(p_extensions_182, param, 'extensions', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection<Ljava/io/File;>;#extensions#0#1').
name_ref(p_extensions_227, param, 'extensions', 'Lorg/apache/commons/io/FileUtils;.toSuffixes([Ljava/lang/String;)[Ljava/lang/String;#extensions#0#0').
name_ref(p_f_0_393, param, 'f0', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#f0#0#0').
name_ref(p_f_1_394, param, 'f1', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#f1#0#1').
name_ref(p_f_337, param, 'f', 'Lorg/apache/commons/io/FileUtilsTestCase$103726;.renameTo(Ljava/io/File;)Z#f#0#0').
name_ref(p_f_338, param, 'f', 'Lorg/apache/commons/io/FileUtilsTestCase$104395;.renameTo(Ljava/io/File;)Z#f#0#0').
name_ref(p_file_126, param, 'file', 'Lorg/apache/commons/io/FileUtils;.deleteQuietly(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_13, param, 'file', 'Lorg/apache/commons/io/DirectoryWalker;.checkIfCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_137, param, 'file', 'Lorg/apache/commons/io/FileUtils;.forceDelete(Ljava/io/File;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_139, param, 'file', 'Lorg/apache/commons/io/FileUtils;.forceDeleteOnExit(Ljava/io/File;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_141, param, 'file', 'Lorg/apache/commons/io/FileUtils;.forceMkdirParent(Ljava/io/File;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_153, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/util/Date;)Z#file#0#0').
name_ref(p_file_155, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/io/File;)Z#file#0#0').
name_ref(p_file_157, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;J)Z#file#0#0').
name_ref(p_file_159, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/util/Date;)Z#file#0#0').
name_ref(p_file_16, param, 'file', 'Lorg/apache/commons/io/DirectoryWalker;.handleIsCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_161, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/io/File;)Z#file#0#0').
name_ref(p_file_163, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;J)Z#file#0#0').
name_ref(p_file_165, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isSymlink(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_175, param, 'file', 'Lorg/apache/commons/io/FileUtils;.lineIterator(Ljava/io/File;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_176, param, 'file', 'Lorg/apache/commons/io/FileUtils;.lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_1_76, param, 'file1', 'Lorg/apache/commons/io/FileUtils;.contentEquals(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;#file1#0#0').
name_ref(p_file_1_78, param, 'file1', 'Lorg/apache/commons/io/FileUtils;.contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z|Ljava/io/IOException;#file1#0#0').
name_ref(p_file_200, param, 'file', 'Lorg/apache/commons/io/FileUtils;.openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_201, param, 'file', 'Lorg/apache/commons/io/FileUtils;.openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_202, param, 'file', 'Lorg/apache/commons/io/FileUtils;.openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_204, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readFileToByteArray(Ljava/io/File;)[B|Ljava/io/IOException;#file#0#0').
name_ref(p_file_205, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;)Ljava/lang/String;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_206, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_208, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_210, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_211, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_213, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_217, param, 'file', 'Lorg/apache/commons/io/FileUtils;.sizeOf(Ljava/io/File;)J#file#0#0').
name_ref(p_file_218, param, 'file', 'Lorg/apache/commons/io/FileUtils;.sizeOf0(Ljava/io/File;)J#file#0#0').
name_ref(p_file_219, param, 'file', 'Lorg/apache/commons/io/FileUtils;.sizeOfAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;#file#0#0').
name_ref(p_file_228, param, 'file', 'Lorg/apache/commons/io/FileUtils;.touch(Ljava/io/File;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_236, param, 'file', 'Lorg/apache/commons/io/FileUtils;.waitFor(Ljava/io/File;I)Z#file#0#0').
name_ref(p_file_238, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_240, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_243, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_246, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_250, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_253, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_257, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[B)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_259, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BZ)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_262, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BII)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_266, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_271, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_273, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_276, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_279, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_283, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_286, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_290, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_294, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_299, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_2_77, param, 'file2', 'Lorg/apache/commons/io/FileUtils;.contentEquals(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;#file2#0#1').
name_ref(p_file_2_79, param, 'file2', 'Lorg/apache/commons/io/FileUtils;.contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z|Ljava/io/IOException;#file2#0#1').
name_ref(p_file_301, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_304, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_307, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_311, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_314, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_33, param, 'file', 'Lorg/apache/commons/io/DirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_333, param, 'file', 'Lorg/apache/commons/io/FileUtilsTestCase;.createCircularSymLink(Ljava/io/File;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_345, param, 'file', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_368, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_373, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_381, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_387, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_391, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#file#0#0').
name_ref(p_file_396, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;#file#0#1').
name_ref(p_file_398, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;#file#0#1').
name_ref(p_file_401, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.deleteFile(Ljava/io/File;)V|Ljava/lang/Exception;#file#0#0').
name_ref(p_file_43, param, 'file', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/io/File;I)V#file#0#0').
name_ref(p_file_46, param, 'file', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/lang/String;Ljava/io/File;I)V#file#0#1').
name_ref(p_file_68, param, 'file', 'Lorg/apache/commons/io/FileUtils;.checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_70, param, 'file', 'Lorg/apache/commons/io/FileUtils;.checksumCRC32(Ljava/io/File;)J|Ljava/io/IOException;#file#0#0').
name_ref(p_file_counter_350, param, 'fileCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V#fileCounter#0#2').
name_ref(p_file_filter_150, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection<Ljava/io/File;>;#fileFilter#0#1').
name_ref(p_file_filter_167, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#fileFilter#0#1').
name_ref(p_file_filter_173, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.iterateFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#fileFilter#0#1').
name_ref(p_file_filter_179, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#fileFilter#0#1').
name_ref(p_file_filter_185, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#fileFilter#0#1').
name_ref(p_file_filter_216, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#fileFilter#0#0').
name_ref(p_file_filter_231, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V#fileFilter#0#1').
name_ref(p_file_filter_6, param, 'fileFilter', 'Lorg/apache/commons/io/DirectoryWalker;.(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V#fileFilter#0#1').
name_ref(p_file_or_dir_220, param, 'fileOrDir', 'Lorg/apache/commons/io/FileUtils;.sizeOfBig0(Ljava/io/File;)Ljava/math/BigInteger;#fileOrDir#0#0').
name_ref(p_filename_390, param, 'filename', 'Lorg/apache/commons/io/testtools/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;#filename#0#1').
name_ref(p_files_145, param, 'files', 'Lorg/apache/commons/io/FileUtils;.innerListFiles(Ljava/util/Collection<Ljava/io/File;>;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V#files#0#0').
name_ref(p_files_229, param, 'files', 'Lorg/apache/commons/io/FileUtils;.toURLs([Ljava/io/File;)[Ljava/net/URL;|Ljava/io/IOException;#files#0#0').
name_ref(p_files_32, param, 'files', 'Lorg/apache/commons/io/DirectoryWalker;.filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;#files#0#2').
name_ref(p_files_82, param, 'files', 'Lorg/apache/commons/io/FileUtils;.convertFileCollectionToFileArray(Ljava/util/Collection<Ljava/io/File;>;)[Ljava/io/File;#files#0#0').
name_ref(p_filter_1, param, 'filter', 'Lorg/apache/commons/io/DirectoryWalker;.(Ljava/io/FileFilter;I)V#filter#0#0').
name_ref(p_filter_131, param, 'filter', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;#filter#0#2').
name_ref(p_filter_147, param, 'filter', 'Lorg/apache/commons/io/FileUtils;.innerListFiles(Ljava/util/Collection<Ljava/io/File;>;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V#filter#0#2').
name_ref(p_filter_90, param, 'filter', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V|Ljava/io/IOException;#filter#0#2').
name_ref(p_filter_93, param, 'filter', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V|Ljava/io/IOException;#filter#0#2').
name_ref(p_first_377, param, 'first', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#first#0#1').
name_ref(p_grand_parent_dir_334, param, 'grandParentDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.createFilesForTestCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#grandParentDir#0#0').
name_ref(p_include_sub_directories_148, param, 'includeSubDirectories', 'Lorg/apache/commons/io/FileUtils;.innerListFiles(Ljava/util/Collection<Ljava/io/File;>;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V#includeSubDirectories#0#3').
name_ref(p_include_sub_directories_152, param, 'includeSubDirectories', 'Lorg/apache/commons/io/FileUtils;.innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection<Ljava/io/File;>;#includeSubDirectories#0#3').
name_ref(p_input_102, param, 'input', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/OutputStream;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_len_265, param, 'len', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BII)V|Ljava/io/IOException;#len#0#3').
name_ref(p_len_269, param, 'len', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;#len#0#3').
name_ref(p_line_ending_278, param, 'lineEnding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#lineEnding#0#2').
name_ref(p_line_ending_281, param, 'lineEnding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#lineEnding#0#2').
name_ref(p_line_ending_293, param, 'lineEnding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#lineEnding#0#3').
name_ref(p_line_ending_297, param, 'lineEnding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#lineEnding#0#3').
name_ref(p_lines_272, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;)V|Ljava/io/IOException;#lines#0#1').
name_ref(p_lines_274, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#lines#0#1').
name_ref(p_lines_277, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#lines#0#1').
name_ref(p_lines_280, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#lines#0#1').
name_ref(p_lines_285, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;)V|Ljava/io/IOException;#lines#0#2').
name_ref(p_lines_288, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#lines#0#2').
name_ref(p_lines_292, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#lines#0#2').
name_ref(p_lines_296, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#lines#0#2').
name_ref(p_message_45, param, 'message', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/lang/String;Ljava/io/File;I)V#message#0#0').
name_ref(p_more_378, param, 'more', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#more#0#2').
name_ref(p_ms_402, param, 'ms', 'Lorg/apache/commons/io/testtools/TestUtils;.sleep(J)V|Ljava/lang/InterruptedException;#ms#0#0').
name_ref(p_ms_403, param, 'ms', 'Lorg/apache/commons/io/testtools/TestUtils;.sleepQuietly(J)V#ms#0#0').
name_ref(p_names_143, param, 'names', 'Lorg/apache/commons/io/FileUtils;.getFile(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;#names#0#1').
name_ref(p_names_144, param, 'names', 'Lorg/apache/commons/io/FileUtils;.getFile([Ljava/lang/String;)Ljava/io/File;#names#0#0').
name_ref(p_off_264, param, 'off', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BII)V|Ljava/io/IOException;#off#0#2').
name_ref(p_off_268, param, 'off', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;#off#0#2').
name_ref(p_out_384, param, 'out', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#out#0#0').
name_ref(p_output_103, param, 'output', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/OutputStream;)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_399, param, 'output', 'Lorg/apache/commons/io/testtools/TestUtils;.checkWrite(Ljava/io/OutputStream;)V|Ljava/lang/Exception;#output#0#0').
name_ref(p_output_400, param, 'output', 'Lorg/apache/commons/io/testtools/TestUtils;.checkWrite(Ljava/io/Writer;)V|Ljava/lang/Exception;#output#0#0').
name_ref(p_parent_dir_335, param, 'parentDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.createFilesForTestCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#parentDir#0#1').
name_ref(p_path_366, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_371, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_pathname_340, param, 'pathname', 'Lorg/apache/commons/io/FileUtilsTestCase$ShorterFile;.(Ljava/lang/String;)V#pathname#0#0').
name_ref(p_preserve_file_date_101, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#preserveFileDate#0#2').
name_ref(p_preserve_file_date_108, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#preserveFileDate#0#2').
name_ref(p_preserve_file_date_132, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;#preserveFileDate#0#3').
name_ref(p_preserve_file_date_136, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.doCopyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#preserveFileDate#0#2').
name_ref(p_preserve_file_date_87, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#preserveFileDate#0#2').
name_ref(p_preserve_file_date_94, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V|Ljava/io/IOException;#preserveFileDate#0#3').
name_ref(p_read_timeout_122, param, 'readTimeout', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V|Ljava/io/IOException;#readTimeout#0#3').
name_ref(p_recursive_171, param, 'recursive', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator<Ljava/io/File;>;#recursive#0#2').
name_ref(p_recursive_183, param, 'recursive', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection<Ljava/io/File;>;#recursive#0#2').
name_ref(p_reference_156, param, 'reference', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/io/File;)Z#reference#0#1').
name_ref(p_reference_162, param, 'reference', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/io/File;)Z#reference#0#1').
name_ref(p_reference_file_392, param, 'referenceFile', 'Lorg/apache/commons/io/testtools/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#referenceFile#0#1').
name_ref(p_results_12, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_15, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.checkIfCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_18, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleIsCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#results#0#2').
name_ref(p_results_20, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleCancelled(Ljava/io/File;Ljava/util/Collection<TT;>;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V|Ljava/io/IOException;#results#0#1').
name_ref(p_results_23, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleStart(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#1').
name_ref(p_results_26, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectory(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#results#0#2').
name_ref(p_results_29, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_344, param, 'results', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_347, param, 'results', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_35, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_38, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleRestricted(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_41, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_42, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleEnd(Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#0').
name_ref(p_results_9, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#1').
name_ref(p_seconds_237, param, 'seconds', 'Lorg/apache/commons/io/FileUtils;.waitFor(Ljava/io/File;I)Z#seconds#0#1').
name_ref(p_size_382, param, 'size', 'Lorg/apache/commons/io/testtools/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;#size#0#1').
name_ref(p_size_383, param, 'size', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(J)[B#size#0#0').
name_ref(p_size_385, param, 'size', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#size#0#1').
name_ref(p_size_59, param, 'size', 'Lorg/apache/commons/io/FileUtils;.byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;#size#0#0').
name_ref(p_size_60, param, 'size', 'Lorg/apache/commons/io/FileUtils;.byteCountToDisplaySize(J)Ljava/lang/String;#size#0#0').
name_ref(p_source_109, param, 'source', 'Lorg/apache/commons/io/FileUtils;.copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;#source#0#0').
name_ref(p_source_115, param, 'source', 'Lorg/apache/commons/io/FileUtils;.copyToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;#source#0#0').
name_ref(p_source_117, param, 'source', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;)V|Ljava/io/IOException;#source#0#0').
name_ref(p_source_119, param, 'source', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V|Ljava/io/IOException;#source#0#0').
name_ref(p_source_directory_359, param, 'sourceDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#sourceDirectory#0#0').
name_ref(p_source_file_362, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_src_111, param, 'src', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#src#0#0').
name_ref(p_src_189, param, 'src', 'Lorg/apache/commons/io/FileUtils;.moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#src#0#0').
name_ref(p_src_197, param, 'src', 'Lorg/apache/commons/io/FileUtils;.moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#src#0#0').
name_ref(p_src_232, param, 'src', 'Lorg/apache/commons/io/FileUtils;.validateMoveParameters(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;#src#0#0').
name_ref(p_src_66, param, 'src', 'Lorg/apache/commons/io/FileUtils;.checkFileRequirements(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;#src#0#0').
name_ref(p_src_dir_129, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_187, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.moveDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_83, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_85, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_88, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_91, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_95, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_file_104, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_106, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_134, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.doCopyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_192, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.moveFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_194, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_62, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_97, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_99, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_len_64, param, 'srcLen', 'Lorg/apache/commons/io/FileUtils;.checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V|Ljava/io/IOException;#srcLen#0#2').
name_ref(p_srcs_113, param, 'srcs', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/lang/Iterable<Ljava/io/File;>;Ljava/io/File;)V|Ljava/io/IOException;#srcs#0#0').
name_ref(p_start_directory_19, param, 'startDirectory', 'Lorg/apache/commons/io/DirectoryWalker;.handleCancelled(Ljava/io/File;Ljava/util/Collection<TT;>;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V|Ljava/io/IOException;#startDirectory#0#0').
name_ref(p_start_directory_22, param, 'startDirectory', 'Lorg/apache/commons/io/DirectoryWalker;.handleStart(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;#startDirectory#0#0').
name_ref(p_start_directory_341, param, 'startDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.list(Ljava/io/File;)Ljava/util/List<Ljava/io/File;>;|Ljava/io/IOException;#startDirectory#0#0').
name_ref(p_start_directory_8, param, 'startDirectory', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;#startDirectory#0#0').
name_ref(p_target_directory_360, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_directory_363, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_test_directory_389, param, 'testDirectory', 'Lorg/apache/commons/io/testtools/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;#testDirectory#0#0').
name_ref(p_time_millis_158, param, 'timeMillis', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;J)Z#timeMillis#0#1').
name_ref(p_time_millis_164, param, 'timeMillis', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;J)Z#timeMillis#0#1').
name_ref(p_uri_380, param, 'uri', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#uri#0#1').
name_ref(p_url_123, param, 'url', 'Lorg/apache/commons/io/FileUtils;.decodeUrl(Ljava/lang/String;)Ljava/lang/String;#url#0#0').
name_ref(p_url_225, param, 'url', 'Lorg/apache/commons/io/FileUtils;.toFile(Ljava/net/URL;)Ljava/io/File;#url#0#0').
name_ref(p_urls_226, param, 'urls', 'Lorg/apache/commons/io/FileUtils;.toFiles([Ljava/net/URL;)[Ljava/io/File;#urls#0#0').
name_ref(p_val_354, param, 'val', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.add(J)V#val#0#0').
name_ref(p_val_355, param, 'val', 'Lorg/apache/commons/io/file/Counters$Counter;.add(J)V#val#0#0').
name_ref(p_visitor_374, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_376, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_379, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(f_byte_counter_351, field, 'byteCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.byteCounter)Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(f_depth_limit_4, field, 'depthLimit', 'Lorg/apache/commons/io/DirectoryWalker<Lorg/apache/commons/io/DirectoryWalker;:TT;>;.depthLimit)I').
name_ref(f_directory_counter_352, field, 'directoryCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.directoryCounter)Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(f_empty_file_array_58, field, 'EMPTY_FILE_ARRAY', 'Lorg/apache/commons/io/FileUtils;.EMPTY_FILE_ARRAY)[Ljava/io/File;').
name_ref(f_file_counter_353, field, 'fileCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.fileCounter)Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(f_filter_3, field, 'filter', 'Lorg/apache/commons/io/DirectoryWalker<Lorg/apache/commons/io/DirectoryWalker;:TT;>;.filter)Ljava/io/FileFilter;').
name_ref(f_list_walker_320, field, 'LIST_WALKER', 'Lorg/apache/commons/io/FileUtilsTestCase;.LIST_WALKER)Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;').
name_ref(f_one_eb_56, field, 'ONE_EB', 'Lorg/apache/commons/io/FileUtils;.ONE_EB)J').
name_ref(f_one_eb_bi_54, field, 'ONE_EB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_EB_BI)Ljava/math/BigInteger;').
name_ref(f_one_gb_bi_51, field, 'ONE_GB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_GB_BI)Ljava/math/BigInteger;').
name_ref(f_one_kb_49, field, 'ONE_KB', 'Lorg/apache/commons/io/FileUtils;.ONE_KB)J').
name_ref(f_one_kb_bi_48, field, 'ONE_KB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_KB_BI)Ljava/math/BigInteger;').
name_ref(f_one_mb_bi_50, field, 'ONE_MB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_MB_BI)Ljava/math/BigInteger;').
name_ref(f_one_pb_bi_53, field, 'ONE_PB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_PB_BI)Ljava/math/BigInteger;').
name_ref(f_one_tb_bi_52, field, 'ONE_TB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_TB_BI)Ljava/math/BigInteger;').
name_ref(f_one_yb_57, field, 'ONE_YB', 'Lorg/apache/commons/io/FileUtils;.ONE_YB)Ljava/math/BigInteger;').
name_ref(f_one_zb_55, field, 'ONE_ZB', 'Lorg/apache/commons/io/FileUtils;.ONE_ZB)Ljava/math/BigInteger;').
name_ref(f_temporary_folder_322, field, 'temporaryFolder', 'Lorg/apache/commons/io/FileUtilsTestCase;.temporaryFolder)Ljava/io/File;').
name_ref(f_test_directory_size_bi_318, field, 'TEST_DIRECTORY_SIZE_BI', 'Lorg/apache/commons/io/FileUtilsTestCase;.TEST_DIRECTORY_SIZE_BI)Ljava/math/BigInteger;').
name_ref(f_test_directory_size_gt_zero_bi_319, field, 'TEST_DIRECTORY_SIZE_GT_ZERO_BI', 'Lorg/apache/commons/io/FileUtilsTestCase;.TEST_DIRECTORY_SIZE_GT_ZERO_BI)Ljava/math/BigInteger;').
name_ref(f_test_file1_321, field, 'testFile1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testFile1)Ljava/io/File;').
name_ref(f_test_file1_size_324, field, 'testFile1Size', 'Lorg/apache/commons/io/FileUtilsTestCase;.testFile1Size)I').
name_ref(f_test_file2_323, field, 'testFile2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testFile2)Ljava/io/File;').
name_ref(f_test_file2_size_325, field, 'testFile2Size', 'Lorg/apache/commons/io/FileUtilsTestCase;.testFile2Size)I').
name_ref(f_value_357, field, 'value', 'Lorg/apache/commons/io/file/Counters$LongCounter;.value)J').
name_ref(m_abstract_path_counters_319, method, 'AbstractPathCounters', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V').
name_ref(m_add_325, method, 'add', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.add(J)V').
name_ref(m_add_332, method, 'add', 'Lorg/apache/commons/io/file/Counters$Counter;.add(J)V').
name_ref(m_add_336, method, 'add', 'Lorg/apache/commons/io/file/Counters$LongCounter;.add(J)V').
name_ref(m_assert_equal_content_372, method, 'assertEqualContent', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_equal_content_373, method, 'assertEqualContent', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_equal_content_374, method, 'assertEqualContent', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_true_201, method, 'assertTrue', 'Lorg/junit/jupiter/api/Assertions;.assertTrue(Z)V').
name_ref(m_big_integer_counter_345, method, 'bigIntegerCounter', 'Lorg/apache/commons/io/file/Counters;.bigIntegerCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_big_integer_path_counters_331, method, 'BigIntegerPathCounters', 'Lorg/apache/commons/io/file/Counters$BigIntegerPathCounters;.()V').
name_ref(m_big_integer_path_counters_346, method, 'bigIntegerPathCounters', 'Lorg/apache/commons/io/file/Counters;.bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;').
name_ref(m_byte_count_to_display_size_23, method, 'byteCountToDisplaySize', 'Lorg/apache/commons/io/FileUtils;.byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;').
name_ref(m_byte_count_to_display_size_24, method, 'byteCountToDisplaySize', 'Lorg/apache/commons/io/FileUtils;.byteCountToDisplaySize(J)Ljava/lang/String;').
name_ref(m_cancel_exception_17, method, 'CancelException', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/io/File;I)V').
name_ref(m_cancel_exception_18, method, 'CancelException', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/lang/String;Ljava/io/File;I)V').
name_ref(m_check_directory_25, method, 'checkDirectory', 'Lorg/apache/commons/io/FileUtils;.checkDirectory(Ljava/io/File;)V').
name_ref(m_check_equal_sizes_26, method, 'checkEqualSizes', 'Lorg/apache/commons/io/FileUtils;.checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V|Ljava/io/IOException;').
name_ref(m_check_file_371, method, 'checkFile', 'Lorg/apache/commons/io/testtools/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;').
name_ref(m_check_file_requirements_27, method, 'checkFileRequirements', 'Lorg/apache/commons/io/FileUtils;.checkFileRequirements(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;').
name_ref(m_check_if_cancelled_6, method, 'checkIfCancelled', 'Lorg/apache/commons/io/DirectoryWalker;.checkIfCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_check_write_375, method, 'checkWrite', 'Lorg/apache/commons/io/testtools/TestUtils;.checkWrite(Ljava/io/OutputStream;)V|Ljava/lang/Exception;').
name_ref(m_check_write_376, method, 'checkWrite', 'Lorg/apache/commons/io/testtools/TestUtils;.checkWrite(Ljava/io/Writer;)V|Ljava/lang/Exception;').
name_ref(m_checksum_28, method, 'checksum', 'Lorg/apache/commons/io/FileUtils;.checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;|Ljava/io/IOException;').
name_ref(m_checksum_crc32_29, method, 'checksumCRC32', 'Lorg/apache/commons/io/FileUtils;.checksumCRC32(Ljava/io/File;)J|Ljava/io/IOException;').
name_ref(m_clean_directory_30, method, 'cleanDirectory', 'Lorg/apache/commons/io/FileUtils;.cleanDirectory(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_clean_directory_349, method, 'cleanDirectory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_clean_directory_on_exit_33, method, 'cleanDirectoryOnExit', 'Lorg/apache/commons/io/FileUtils;.cleanDirectoryOnExit(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_content_equals_34, method, 'contentEquals', 'Lorg/apache/commons/io/FileUtils;.contentEquals(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;').
name_ref(m_content_equals_ignore_eol_35, method, 'contentEqualsIgnoreEOL', 'Lorg/apache/commons/io/FileUtils;.contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z|Ljava/io/IOException;').
name_ref(m_convert_file_collection_to_file_array_37, method, 'convertFileCollectionToFileArray', 'Lorg/apache/commons/io/FileUtils;.convertFileCollectionToFileArray(Ljava/util/Collection<Ljava/io/File;>;)[Ljava/io/File;').
name_ref(m_copy_directory_350, method, 'copyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_copy_directory_38, method, 'copyDirectory', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_directory_39, method, 'copyDirectory', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_copy_directory_40, method, 'copyDirectory', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V|Ljava/io/IOException;').
name_ref(m_copy_directory_41, method, 'copyDirectory', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V|Ljava/io/IOException;').
name_ref(m_copy_directory_to_directory_42, method, 'copyDirectoryToDirectory', 'Lorg/apache/commons/io/FileUtils;.copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_file_43, method, 'copyFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_file_44, method, 'copyFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_copy_file_45, method, 'copyFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/OutputStream;)J|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_351, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_46, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_47, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_copy_input_stream_to_file_48, method, 'copyInputStreamToFile', 'Lorg/apache/commons/io/FileUtils;.copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_to_directory_49, method, 'copyToDirectory', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_to_directory_50, method, 'copyToDirectory', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/lang/Iterable<Ljava/io/File;>;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_to_file_51, method, 'copyToFile', 'Lorg/apache/commons/io/FileUtils;.copyToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_urlto_file_52, method, 'copyURLToFile', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_urlto_file_53, method, 'copyURLToFile', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V|Ljava/io/IOException;').
name_ref(m_count_directory_352, method, 'countDirectory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_create_circular_sym_link_207, method, 'createCircularSymLink', 'Lorg/apache/commons/io/FileUtilsTestCase;.createCircularSymLink(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_create_file_367, method, 'createFile', 'Lorg/apache/commons/io/testtools/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;').
name_ref(m_create_files_for_test_copy_directory_227, method, 'createFilesForTestCopyDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.createFilesForTestCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;').
name_ref(m_create_line_based_file_369, method, 'createLineBasedFile', 'Lorg/apache/commons/io/testtools/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_decode_url_54, method, 'decodeUrl', 'Lorg/apache/commons/io/FileUtils;.decodeUrl(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_delete_299, method, 'delete', 'Lorg/apache/commons/io/FileUtilsTestCase$104395;.delete()Z').
name_ref(m_delete_57, method, 'delete', 'Ljava/io/File;.delete()Z').
name_ref(m_delete_63, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_354, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_55, method, 'deleteDirectory', 'Lorg/apache/commons/io/FileUtils;.deleteDirectory(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_delete_directory_on_exit_58, method, 'deleteDirectoryOnExit', 'Lorg/apache/commons/io/FileUtils;.deleteDirectoryOnExit(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_delete_file_355, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_377, method, 'deleteFile', 'Lorg/apache/commons/io/testtools/TestUtils;.deleteFile(Ljava/io/File;)V|Ljava/lang/Exception;').
name_ref(m_delete_if_exists_358, method, 'deleteIfExists', 'Ljava/nio/file/Files;.deleteIfExists(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_delete_quietly_59, method, 'deleteQuietly', 'Lorg/apache/commons/io/FileUtils;.deleteQuietly(Ljava/io/File;)Z').
name_ref(m_directory_contains_60, method, 'directoryContains', 'Lorg/apache/commons/io/FileUtils;.directoryContains(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;').
name_ref(m_directory_walker_1, method, 'DirectoryWalker', 'Lorg/apache/commons/io/DirectoryWalker;.()V').
name_ref(m_directory_walker_2, method, 'DirectoryWalker', 'Lorg/apache/commons/io/DirectoryWalker;.(Ljava/io/FileFilter;I)V').
name_ref(m_directory_walker_3, method, 'DirectoryWalker', 'Lorg/apache/commons/io/DirectoryWalker;.(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V').
name_ref(m_do_copy_directory_61, method, 'doCopyDirectory', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;').
name_ref(m_do_copy_file_62, method, 'doCopyFile', 'Lorg/apache/commons/io/FileUtils;.doCopyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_exists_356, method, 'exists', 'Ljava/nio/file/Files;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_exists_36, method, 'exists', 'Ljava/io/File;.exists()Z').
name_ref(m_file_156, method, 'File', 'Ljava/io/File;.(Ljava/io/File;Ljava/lang/String;)V').
name_ref(m_file_utils_153, method, 'FileUtils', 'Lorg/apache/commons/io/FileUtils;.()V').
name_ref(m_filter_directory_contents_12, method, 'filterDirectoryContents', 'Lorg/apache/commons/io/DirectoryWalker;.filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;').
name_ref(m_force_delete_32, method, 'forceDelete', 'Lorg/apache/commons/io/FileUtils;.forceDelete(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_force_delete_on_exit_68, method, 'forceDeleteOnExit', 'Lorg/apache/commons/io/FileUtils;.forceDeleteOnExit(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_force_mkdir_69, method, 'forceMkdir', 'Lorg/apache/commons/io/FileUtils;.forceMkdir(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_force_mkdir_parent_70, method, 'forceMkdirParent', 'Lorg/apache/commons/io/FileUtils;.forceMkdirParent(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_generate_test_data_159, method, 'generateTestData', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;').
name_ref(m_generate_test_data_368, method, 'generateTestData', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(J)[B').
name_ref(m_get_326, method, 'get', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.get()J').
name_ref(m_get_337, method, 'get', 'Lorg/apache/commons/io/file/Counters$LongCounter;.get()J').
name_ref(m_get_65, method, 'get', 'Lorg/apache/commons/io/file/Counters$Counter;.get()J').
name_ref(m_get_big_integer_327, method, 'getBigInteger', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.getBigInteger()Ljava/math/BigInteger;').
name_ref(m_get_big_integer_333, method, 'getBigInteger', 'Lorg/apache/commons/io/file/Counters$Counter;.getBigInteger()Ljava/math/BigInteger;').
name_ref(m_get_big_integer_338, method, 'getBigInteger', 'Lorg/apache/commons/io/file/Counters$LongCounter;.getBigInteger()Ljava/math/BigInteger;').
name_ref(m_get_byte_counter_321, method, 'getByteCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_byte_counter_344, method, 'getByteCounter', 'Lorg/apache/commons/io/file/Counters$PathCounters;.getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_class_163, method, 'getClass', 'Ljava/lang/Object;.getClass()Ljava/lang/Class<*>;').
name_ref(m_get_depth_20, method, 'getDepth', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.getDepth()I').
name_ref(m_get_directory_counter_322, method, 'getDirectoryCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_directory_counter_67, method, 'getDirectoryCounter', 'Lorg/apache/commons/io/file/Counters$PathCounters;.getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_file_19, method, 'getFile', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.getFile()Ljava/io/File;').
name_ref(m_get_file_71, method, 'getFile', 'Lorg/apache/commons/io/FileUtils;.getFile(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;').
name_ref(m_get_file_72, method, 'getFile', 'Lorg/apache/commons/io/FileUtils;.getFile([Ljava/lang/String;)Ljava/io/File;').
name_ref(m_get_file_counter_323, method, 'getFileCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_file_counter_66, method, 'getFileCounter', 'Lorg/apache/commons/io/file/Counters$PathCounters;.getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_long_328, method, 'getLong', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.getLong()Ljava/lang/Long;').
name_ref(m_get_long_334, method, 'getLong', 'Lorg/apache/commons/io/file/Counters$Counter;.getLong()Ljava/lang/Long;').
name_ref(m_get_long_339, method, 'getLong', 'Lorg/apache/commons/io/file/Counters$LongCounter;.getLong()Ljava/lang/Long;').
name_ref(m_get_name_161, method, 'getName', 'Lorg/apache/commons/io/FileUtilsTestCase;.getName()Ljava/lang/String;').
name_ref(m_get_parent_file_158, method, 'getParentFile', 'Ljava/io/File;.getParentFile()Ljava/io/File;').
name_ref(m_get_simple_name_162, method, 'getSimpleName', 'Ljava/lang/Class;.getSimpleName()Ljava/lang/String;').
name_ref(m_get_temp_directory_73, method, 'getTempDirectory', 'Lorg/apache/commons/io/FileUtils;.getTempDirectory()Ljava/io/File;').
name_ref(m_get_temp_directory_path_74, method, 'getTempDirectoryPath', 'Lorg/apache/commons/io/FileUtils;.getTempDirectoryPath()Ljava/lang/String;').
name_ref(m_get_user_directory_75, method, 'getUserDirectory', 'Lorg/apache/commons/io/FileUtils;.getUserDirectory()Ljava/io/File;').
name_ref(m_get_user_directory_path_76, method, 'getUserDirectoryPath', 'Lorg/apache/commons/io/FileUtils;.getUserDirectoryPath()Ljava/lang/String;').
name_ref(m_handle_cancelled_8, method, 'handleCancelled', 'Lorg/apache/commons/io/DirectoryWalker;.handleCancelled(Ljava/io/File;Ljava/util/Collection<TT;>;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V|Ljava/io/IOException;').
name_ref(m_handle_directory_10, method, 'handleDirectory', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectory(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;').
name_ref(m_handle_directory_end_15, method, 'handleDirectoryEnd', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_handle_directory_start_11, method, 'handleDirectoryStart', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_handle_directory_start_317, method, 'handleDirectoryStart', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;').
name_ref(m_handle_end_16, method, 'handleEnd', 'Lorg/apache/commons/io/DirectoryWalker;.handleEnd(Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_handle_file_13, method, 'handleFile', 'Lorg/apache/commons/io/DirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_handle_file_318, method, 'handleFile', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;').
name_ref(m_handle_is_cancelled_7, method, 'handleIsCancelled', 'Lorg/apache/commons/io/DirectoryWalker;.handleIsCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;').
name_ref(m_handle_restricted_14, method, 'handleRestricted', 'Lorg/apache/commons/io/DirectoryWalker;.handleRestricted(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_handle_start_9, method, 'handleStart', 'Lorg/apache/commons/io/DirectoryWalker;.handleStart(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_increment_329, method, 'increment', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.increment()V').
name_ref(m_increment_335, method, 'increment', 'Lorg/apache/commons/io/file/Counters$Counter;.increment()V').
name_ref(m_increment_340, method, 'increment', 'Lorg/apache/commons/io/file/Counters$LongCounter;.increment()V').
name_ref(m_inner_list_files_77, method, 'innerListFiles', 'Lorg/apache/commons/io/FileUtils;.innerListFiles(Ljava/util/Collection<Ljava/io/File;>;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V').
name_ref(m_inner_list_files_or_directories_78, method, 'innerListFilesOrDirectories', 'Lorg/apache/commons/io/FileUtils;.innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection<Ljava/io/File;>;').
name_ref(m_is_directory_126, method, 'isDirectory', 'Ljava/io/File;.isDirectory()Z').
name_ref(m_is_directory_353, method, 'isDirectory', 'Ljava/nio/file/Files;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_empty_359, method, 'isEmpty', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_directory_360, method, 'isEmptyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_file_361, method, 'isEmptyFile', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_file_newer_79, method, 'isFileNewer', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/util/Date;)Z').
name_ref(m_is_file_newer_80, method, 'isFileNewer', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/io/File;)Z').
name_ref(m_is_file_newer_81, method, 'isFileNewer', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;J)Z').
name_ref(m_is_file_older_82, method, 'isFileOlder', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/util/Date;)Z').
name_ref(m_is_file_older_83, method, 'isFileOlder', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/io/File;)Z').
name_ref(m_is_file_older_84, method, 'isFileOlder', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;J)Z').
name_ref(m_is_symbolic_link_85, method, 'isSymbolicLink', 'Ljava/nio/file/Files;.isSymbolicLink(Ljava/nio/file/Path;)Z').
name_ref(m_is_symlink_56, method, 'isSymlink', 'Lorg/apache/commons/io/FileUtils;.isSymlink(Ljava/io/File;)Z').
name_ref(m_iterate_files_86, method, 'iterateFiles', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;').
name_ref(m_iterate_files_87, method, 'iterateFiles', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator<Ljava/io/File;>;').
name_ref(m_iterate_files_and_dirs_88, method, 'iterateFilesAndDirs', 'Lorg/apache/commons/io/FileUtils;.iterateFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;').
name_ref(m_length_157, method, 'length', 'Ljava/io/File;.length()J').
name_ref(m_length_314, method, 'length', 'Lorg/apache/commons/io/FileUtilsTestCase$ShorterFile;.length()J').
name_ref(m_line_iterator_89, method, 'lineIterator', 'Lorg/apache/commons/io/FileUtils;.lineIterator(Ljava/io/File;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;').
name_ref(m_line_iterator_90, method, 'lineIterator', 'Lorg/apache/commons/io/FileUtils;.lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;').
name_ref(m_list_316, method, 'list', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.list(Ljava/io/File;)Ljava/util/List<Ljava/io/File;>;|Ljava/io/IOException;').
name_ref(m_list_directory_walker_154, method, 'ListDirectoryWalker', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.()V').
name_ref(m_list_files_127, method, 'listFiles', 'Ljava/io/File;.listFiles()[Ljava/io/File;').
name_ref(m_list_files_91, method, 'listFiles', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;').
name_ref(m_list_files_92, method, 'listFiles', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection<Ljava/io/File;>;').
name_ref(m_list_files_and_dirs_93, method, 'listFilesAndDirs', 'Lorg/apache/commons/io/FileUtils;.listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;').
name_ref(m_long_counter_343, method, 'longCounter', 'Lorg/apache/commons/io/file/Counters;.longCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_long_counter_347, method, 'LongCounter', 'Lorg/apache/commons/io/file/Counters$LongCounter;.()V').
name_ref(m_long_path_counters_342, method, 'LongPathCounters', 'Lorg/apache/commons/io/file/Counters$LongPathCounters;.()V').
name_ref(m_long_path_counters_348, method, 'longPathCounters', 'Lorg/apache/commons/io/file/Counters;.longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;').
name_ref(m_mkdirs_160, method, 'mkdirs', 'Ljava/io/File;.mkdirs()Z').
name_ref(m_move_directory_94, method, 'moveDirectory', 'Lorg/apache/commons/io/FileUtils;.moveDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_move_directory_to_directory_95, method, 'moveDirectoryToDirectory', 'Lorg/apache/commons/io/FileUtils;.moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_move_file_96, method, 'moveFile', 'Lorg/apache/commons/io/FileUtils;.moveFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_move_file_to_directory_97, method, 'moveFileToDirectory', 'Lorg/apache/commons/io/FileUtils;.moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_move_to_directory_98, method, 'moveToDirectory', 'Lorg/apache/commons/io/FileUtils;.moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_multiply_22, method, 'multiply', 'Ljava/math/BigInteger;.multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;').
name_ref(m_new_file_370, method, 'newFile', 'Lorg/apache/commons/io/testtools/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;').
name_ref(m_object_320, method, 'Object', 'Ljava/lang/Object;.()V').
name_ref(m_open_input_stream_99, method, 'openInputStream', 'Lorg/apache/commons/io/FileUtils;.openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;|Ljava/io/IOException;').
name_ref(m_open_output_stream_100, method, 'openOutputStream', 'Lorg/apache/commons/io/FileUtils;.openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;|Ljava/io/IOException;').
name_ref(m_open_output_stream_101, method, 'openOutputStream', 'Lorg/apache/commons/io/FileUtils;.openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;|Ljava/io/IOException;').
name_ref(m_open_output_stream_no_parent_173, method, 'openOutputStream_noParent', 'Lorg/apache/commons/io/FileUtilsTestCase;.openOutputStream_noParent(Z)V|Ljava/lang/Exception;').
name_ref(m_path_utils_365, method, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;.()V').
name_ref(m_read_file_to_byte_array_102, method, 'readFileToByteArray', 'Lorg/apache/commons/io/FileUtils;.readFileToByteArray(Ljava/io/File;)[B|Ljava/io/IOException;').
name_ref(m_read_file_to_string_103, method, 'readFileToString', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_read_file_to_string_104, method, 'readFileToString', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_read_file_to_string_105, method, 'readFileToString', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_read_lines_106, method, 'readLines', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;').
name_ref(m_read_lines_107, method, 'readLines', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;').
name_ref(m_read_lines_108, method, 'readLines', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;').
name_ref(m_rename_to_296, method, 'renameTo', 'Lorg/apache/commons/io/FileUtilsTestCase$103726;.renameTo(Ljava/io/File;)Z').
name_ref(m_rename_to_298, method, 'renameTo', 'Lorg/apache/commons/io/FileUtilsTestCase$104395;.renameTo(Ljava/io/File;)Z').
name_ref(m_rename_to_305, method, 'renameTo', 'Lorg/apache/commons/io/FileUtilsTestCase$111767;.renameTo(Ljava/io/File;)Z').
name_ref(m_set_up_155, method, 'setUp', 'Lorg/apache/commons/io/FileUtilsTestCase;.setUp()V|Ljava/lang/Exception;').
name_ref(m_set_up_effective_dir_filter_109, method, 'setUpEffectiveDirFilter', 'Lorg/apache/commons/io/FileUtils;.setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_set_up_effective_file_filter_110, method, 'setUpEffectiveFileFilter', 'Lorg/apache/commons/io/FileUtils;.setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_shorter_file_313, method, 'ShorterFile', 'Lorg/apache/commons/io/FileUtilsTestCase$ShorterFile;.(Ljava/lang/String;)V').
name_ref(m_size_357, method, 'size', 'Ljava/nio/file/Files;.size(Ljava/nio/file/Path;)J|Ljava/io/IOException;').
name_ref(m_size_of0_112, method, 'sizeOf0', 'Lorg/apache/commons/io/FileUtils;.sizeOf0(Ljava/io/File;)J').
name_ref(m_size_of_111, method, 'sizeOf', 'Lorg/apache/commons/io/FileUtils;.sizeOf(Ljava/io/File;)J').
name_ref(m_size_of_as_big_integer_113, method, 'sizeOfAsBigInteger', 'Lorg/apache/commons/io/FileUtils;.sizeOfAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;').
name_ref(m_size_of_big0_114, method, 'sizeOfBig0', 'Lorg/apache/commons/io/FileUtils;.sizeOfBig0(Ljava/io/File;)Ljava/math/BigInteger;').
name_ref(m_size_of_directory0_116, method, 'sizeOfDirectory0', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectory0(Ljava/io/File;)J').
name_ref(m_size_of_directory_115, method, 'sizeOfDirectory', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectory(Ljava/io/File;)J').
name_ref(m_size_of_directory_as_big_integer_117, method, 'sizeOfDirectoryAsBigInteger', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectoryAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;').
name_ref(m_size_of_directory_big0_118, method, 'sizeOfDirectoryBig0', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;').
name_ref(m_sleep_378, method, 'sleep', 'Lorg/apache/commons/io/testtools/TestUtils;.sleep(J)V|Ljava/lang/InterruptedException;').
name_ref(m_sleep_quietly_379, method, 'sleepQuietly', 'Lorg/apache/commons/io/testtools/TestUtils;.sleepQuietly(J)V').
name_ref(m_test_byte_count_to_display_size_big_integer_180, method, 'testByteCountToDisplaySizeBigInteger', 'Lorg/apache/commons/io/FileUtilsTestCase;.testByteCountToDisplaySizeBigInteger()V').
name_ref(m_test_byte_count_to_display_size_long_181, method, 'testByteCountToDisplaySizeLong', 'Lorg/apache/commons/io/FileUtilsTestCase;.testByteCountToDisplaySizeLong()V').
name_ref(m_test_checksum_284, method, 'testChecksum', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksum()V|Ljava/lang/Exception;').
name_ref(m_test_checksum_crc32_283, method, 'testChecksumCRC32', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksumCRC32()V|Ljava/lang/Exception;').
name_ref(m_test_checksum_double_288, method, 'testChecksumDouble', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksumDouble()V|Ljava/lang/Exception;').
name_ref(m_test_checksum_on_directory_287, method, 'testChecksumOnDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksumOnDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_checksum_on_null_checksum_286, method, 'testChecksumOnNullChecksum', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksumOnNullChecksum()V|Ljava/lang/Exception;').
name_ref(m_test_checksum_on_null_file_285, method, 'testChecksumOnNullFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksumOnNullFile()V|Ljava/lang/Exception;').
name_ref(m_test_compare_size_of_209, method, 'testCompareSizeOf', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCompareSizeOf()V').
name_ref(m_test_content_equals_199, method, 'testContentEquals', 'Lorg/apache/commons/io/FileUtilsTestCase;.testContentEquals()V|Ljava/lang/Exception;').
name_ref(m_test_content_equals_ignore_eol_200, method, 'testContentEqualsIgnoreEOL', 'Lorg/apache/commons/io/FileUtilsTestCase;.testContentEqualsIgnoreEOL()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_errors_228, method, 'testCopyDirectoryErrors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryErrors()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_filtered_222, method, 'testCopyDirectoryFiltered', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryFiltered()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_preserve_dates_223, method, 'testCopyDirectoryPreserveDates', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryPreserveDates()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_child_224, method, 'testCopyDirectoryToChild', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToChild()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_directory__non_existing_dest_219, method, 'testCopyDirectoryToDirectory_NonExistingDest', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToDirectory_NonExistingDest()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_existing_dest_221, method, 'testCopyDirectoryToExistingDest', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToExistingDest()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_grand_child_225, method, 'testCopyDirectoryToGrandChild', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToGrandChild()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_itself_226, method, 'testCopyDirectoryToItself', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToItself()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_non_existing_dest_220, method, 'testCopyDirectoryToNonExistingDest', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToNonExistingDest()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file1_213, method, 'testCopyFile1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFile1()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file1_to_dir_239, method, 'testCopyFile1ToDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFile1ToDir()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file2_216, method, 'testCopyFile2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFile2()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file2_to_dir_240, method, 'testCopyFile2ToDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFile2ToDir()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file2_without_file_date_preservation_218, method, 'testCopyFile2WithoutFileDatePreservation', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFile2WithoutFileDatePreservation()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file_large_215, method, 'testCopyFileLarge', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFileLarge()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file_to_output_stream_214, method, 'testCopyFileToOutputStream', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFileToOutputStream()V|Ljava/lang/Exception;').
name_ref(m_test_copy_to_directory_with_directory_232, method, 'testCopyToDirectoryWithDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithDirectory()V|Ljava/io/IOException;').
name_ref(m_test_copy_to_directory_with_file_229, method, 'testCopyToDirectoryWithFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithFile()V|Ljava/io/IOException;').
name_ref(m_test_copy_to_directory_with_file_source_does_not_exist_231, method, 'testCopyToDirectoryWithFileSourceDoesNotExist', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithFileSourceDoesNotExist()V').
name_ref(m_test_copy_to_directory_with_file_source_is_null_230, method, 'testCopyToDirectoryWithFileSourceIsNull', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithFileSourceIsNull()V').
name_ref(m_test_copy_to_directory_with_iterable_233, method, 'testCopyToDirectoryWithIterable', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithIterable()V|Ljava/io/IOException;').
name_ref(m_test_copy_to_directory_with_iterable_source_does_not_exist_235, method, 'testCopyToDirectoryWithIterableSourceDoesNotExist', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithIterableSourceDoesNotExist()V').
name_ref(m_test_copy_to_directory_with_iterable_source_is_null_234, method, 'testCopyToDirectoryWithIterableSourceIsNull', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithIterableSourceIsNull()V').
name_ref(m_test_copy_to_self_217, method, 'testCopyToSelf', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToSelf()V|Ljava/lang/Exception;').
name_ref(m_test_copy_urlto_file_202, method, 'testCopyURLToFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyURLToFile()V|Ljava/lang/Exception;').
name_ref(m_test_copy_urlto_file_with_timeout_203, method, 'testCopyURLToFileWithTimeout', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyURLToFileWithTimeout()V|Ljava/lang/Exception;').
name_ref(m_test_decode_url_188, method, 'testDecodeUrl', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDecodeUrl()V').
name_ref(m_test_decode_url_encoding_utf8_191, method, 'testDecodeUrlEncodingUtf8', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDecodeUrlEncodingUtf8()V').
name_ref(m_test_decode_url_lenient_189, method, 'testDecodeUrlLenient', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDecodeUrlLenient()V').
name_ref(m_test_decode_url_null_safe_190, method, 'testDecodeUrlNullSafe', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDecodeUrlNullSafe()V').
name_ref(m_test_delete_directory_with_non_directory_289, method, 'testDeleteDirectoryWithNonDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDeleteDirectoryWithNonDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_delete_quietly_dir_291, method, 'testDeleteQuietlyDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDeleteQuietlyDir()V|Ljava/io/IOException;').
name_ref(m_test_delete_quietly_file_292, method, 'testDeleteQuietlyFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDeleteQuietlyFile()V|Ljava/io/IOException;').
name_ref(m_test_delete_quietly_for_null_290, method, 'testDeleteQuietlyForNull', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDeleteQuietlyForNull()V').
name_ref(m_test_delete_quietly_non_existent_293, method, 'testDeleteQuietlyNonExistent', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDeleteQuietlyNonExistent()V').
name_ref(m_test_file_utils_242, method, 'testFileUtils', 'Lorg/apache/commons/io/FileUtilsTestCase;.testFileUtils()V|Ljava/lang/Exception;').
name_ref(m_test_force_delete_afile1_236, method, 'testForceDeleteAFile1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceDeleteAFile1()V|Ljava/lang/Exception;').
name_ref(m_test_force_delete_afile2_237, method, 'testForceDeleteAFile2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceDeleteAFile2()V|Ljava/lang/Exception;').
name_ref(m_test_force_delete_afile3_238, method, 'testForceDeleteAFile3', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceDeleteAFile3()V|Ljava/lang/Exception;').
name_ref(m_test_force_delete_dir_241, method, 'testForceDeleteDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceDeleteDir()V|Ljava/lang/Exception;').
name_ref(m_test_force_mkdir_204, method, 'testForceMkdir', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceMkdir()V|Ljava/lang/Exception;').
name_ref(m_test_force_mkdir_parent_205, method, 'testForceMkdirParent', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceMkdirParent()V|Ljava/lang/Exception;').
name_ref(m_test_get_file_164, method, 'testGetFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetFile()V').
name_ref(m_test_get_file__parent_165, method, 'testGetFile_Parent', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetFile_Parent()V').
name_ref(m_test_get_temp_directory_167, method, 'testGetTempDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetTempDirectory()V').
name_ref(m_test_get_temp_directory_path_166, method, 'testGetTempDirectoryPath', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetTempDirectoryPath()V').
name_ref(m_test_get_user_directory_169, method, 'testGetUserDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetUserDirectory()V').
name_ref(m_test_get_user_directory_path_168, method, 'testGetUserDirectoryPath', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetUserDirectoryPath()V').
name_ref(m_test_incorrect_output_size_315, method, 'testIncorrectOutputSize', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIncorrectOutputSize()V|Ljava/lang/Exception;').
name_ref(m_test_io276_312, method, 'testIO276', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIO276()V|Ljava/lang/Exception;').
name_ref(m_test_io300_311, method, 'testIO300', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIO300()V|Ljava/lang/Exception;').
name_ref(m_test_is_file_newer_older_212, method, 'testIsFileNewerOlder', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIsFileNewerOlder()V|Ljava/lang/Exception;').
name_ref(m_test_iterate_files_246, method, 'testIterateFiles', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIterateFiles()V|Ljava/lang/Exception;').
name_ref(m_test_iterate_files_and_dirs_247, method, 'testIterateFilesAndDirs', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIterateFilesAndDirs()V|Ljava/io/IOException;').
name_ref(m_test_list_files_244, method, 'testListFiles', 'Lorg/apache/commons/io/FileUtilsTestCase;.testListFiles()V|Ljava/lang/Exception;').
name_ref(m_test_list_files_with_dirs_245, method, 'testListFilesWithDirs', 'Lorg/apache/commons/io/FileUtilsTestCase;.testListFilesWithDirs()V|Ljava/io/IOException;').
name_ref(m_test_move_directory__copy_delete_304, method, 'testMoveDirectory_CopyDelete', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveDirectory_CopyDelete()V|Ljava/lang/Exception;').
name_ref(m_test_move_directory__errors_306, method, 'testMoveDirectory_Errors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveDirectory_Errors()V|Ljava/lang/Exception;').
name_ref(m_test_move_directory__rename_303, method, 'testMoveDirectory_Rename', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveDirectory_Rename()V|Ljava/lang/Exception;').
name_ref(m_test_move_directory_to_directory_307, method, 'testMoveDirectoryToDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveDirectoryToDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_move_directory_to_directory__errors_308, method, 'testMoveDirectoryToDirectory_Errors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveDirectoryToDirectory_Errors()V|Ljava/lang/Exception;').
name_ref(m_test_move_file__copy_delete_295, method, 'testMoveFile_CopyDelete', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFile_CopyDelete()V|Ljava/lang/Exception;').
name_ref(m_test_move_file__copy_delete__failed_297, method, 'testMoveFile_CopyDelete_Failed', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFile_CopyDelete_Failed()V|Ljava/lang/Exception;').
name_ref(m_test_move_file__errors_300, method, 'testMoveFile_Errors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFile_Errors()V|Ljava/lang/Exception;').
name_ref(m_test_move_file__rename_294, method, 'testMoveFile_Rename', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFile_Rename()V|Ljava/lang/Exception;').
name_ref(m_test_move_file_to_directory_301, method, 'testMoveFileToDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFileToDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_move_file_to_directory__errors_302, method, 'testMoveFileToDirectory_Errors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFileToDirectory_Errors()V|Ljava/lang/Exception;').
name_ref(m_test_move_to_directory_309, method, 'testMoveToDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveToDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_move_to_directory__errors_310, method, 'testMoveToDirectory_Errors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveToDirectory_Errors()V|Ljava/lang/Exception;').
name_ref(m_test_open_input_stream_exists_170, method, 'test_openInputStream_exists', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openInputStream_exists()V|Ljava/lang/Exception;').
name_ref(m_test_open_input_stream_exists_but_is_directory_171, method, 'test_openInputStream_existsButIsDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openInputStream_existsButIsDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_open_input_stream_not_exists_172, method, 'test_openInputStream_notExists', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openInputStream_notExists()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_exists_176, method, 'test_openOutputStream_exists', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_exists()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_exists_but_is_directory_177, method, 'test_openOutputStream_existsButIsDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_existsButIsDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_no_parent_create_file_174, method, 'test_openOutputStream_noParentCreateFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_noParentCreateFile()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_no_parent_no_file_175, method, 'test_openOutputStream_noParentNoFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_noParentNoFile()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_not_exists_178, method, 'test_openOutputStream_notExists', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_notExists()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_not_exists_cannot_create_179, method, 'test_openOutputStream_notExistsCannotCreate', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_notExistsCannotCreate()V|Ljava/lang/Exception;').
name_ref(m_test_read_file_to_byte_array_250, method, 'testReadFileToByteArray', 'Lorg/apache/commons/io/FileUtilsTestCase;.testReadFileToByteArray()V|Ljava/lang/Exception;').
name_ref(m_test_read_file_to_string_with_default_encoding_248, method, 'testReadFileToStringWithDefaultEncoding', 'Lorg/apache/commons/io/FileUtilsTestCase;.testReadFileToStringWithDefaultEncoding()V|Ljava/lang/Exception;').
name_ref(m_test_read_file_to_string_with_encoding_249, method, 'testReadFileToStringWithEncoding', 'Lorg/apache/commons/io/FileUtilsTestCase;.testReadFileToStringWithEncoding()V|Ljava/lang/Exception;').
name_ref(m_test_read_lines_251, method, 'testReadLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testReadLines()V|Ljava/lang/Exception;').
name_ref(m_test_size_of_210, method, 'testSizeOf', 'Lorg/apache/commons/io/FileUtilsTestCase;.testSizeOf()V|Ljava/lang/Exception;').
name_ref(m_test_size_of_as_big_integer_211, method, 'testSizeOfAsBigInteger', 'Lorg/apache/commons/io/FileUtilsTestCase;.testSizeOfAsBigInteger()V|Ljava/lang/Exception;').
name_ref(m_test_size_of_directory_206, method, 'testSizeOfDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testSizeOfDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_size_of_directory_as_big_integer_208, method, 'testSizeOfDirectoryAsBigInteger', 'Lorg/apache/commons/io/FileUtilsTestCase;.testSizeOfDirectoryAsBigInteger()V|Ljava/lang/Exception;').
name_ref(m_test_to_file1_182, method, 'testToFile1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFile1()V|Ljava/lang/Exception;').
name_ref(m_test_to_file2_183, method, 'testToFile2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFile2()V|Ljava/lang/Exception;').
name_ref(m_test_to_file3_184, method, 'testToFile3', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFile3()V|Ljava/lang/Exception;').
name_ref(m_test_to_file4_185, method, 'testToFile4', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFile4()V|Ljava/lang/Exception;').
name_ref(m_test_to_file5_186, method, 'testToFile5', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFile5()V|Ljava/lang/Exception;').
name_ref(m_test_to_file_utf8_187, method, 'testToFileUtf8', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFileUtf8()V|Ljava/lang/Exception;').
name_ref(m_test_to_files1_192, method, 'testToFiles1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFiles1()V|Ljava/lang/Exception;').
name_ref(m_test_to_files2_193, method, 'testToFiles2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFiles2()V|Ljava/lang/Exception;').
name_ref(m_test_to_files3_194, method, 'testToFiles3', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFiles3()V|Ljava/lang/Exception;').
name_ref(m_test_to_files3a_195, method, 'testToFiles3a', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFiles3a()V|Ljava/lang/Exception;').
name_ref(m_test_to_files4_196, method, 'testToFiles4', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFiles4()V|Ljava/lang/Exception;').
name_ref(m_test_to_urls1_197, method, 'testToURLs1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToURLs1()V|Ljava/lang/Exception;').
name_ref(m_test_to_urls3a_198, method, 'testToURLs3a', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToURLs3a()V|Ljava/lang/Exception;').
name_ref(m_test_touch_243, method, 'testTouch', 'Lorg/apache/commons/io/FileUtilsTestCase;.testTouch()V|Ljava/io/IOException;').
name_ref(m_test_utils_366, method, 'TestUtils', 'Lorg/apache/commons/io/testtools/TestUtils;.()V').
name_ref(m_test_write__with_append_option_false__should_delete_previous_file_lines_278, method, 'testWrite_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWrite_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write__with_append_option_true__should_not_delete_previous_file_lines_277, method, 'testWrite_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWrite_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file_257, method, 'testWriteByteArrayToFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file__with_append_option_false__should_delete_previous_file_lines_280, method, 'testWriteByteArrayToFile_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file__with_append_option_true__should_not_delete_previous_file_lines_279, method, 'testWriteByteArrayToFile_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file__with_offset_and_length_258, method, 'testWriteByteArrayToFile_WithOffsetAndLength', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile_WithOffsetAndLength()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file__with_offset_and_length__with_append_option_true__should_delete_previous_file_lines_282, method, 'testWriteByteArrayToFile_WithOffsetAndLength_WithAppendOptionTrue_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile_WithOffsetAndLength_WithAppendOptionTrue_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file__with_offset_and_length__with_append_option_true__should_not_delete_previous_file_lines_281, method, 'testWriteByteArrayToFile_WithOffsetAndLength_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile_WithOffsetAndLength_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_char_sequence1_255, method, 'testWriteCharSequence1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteCharSequence1()V|Ljava/lang/Exception;').
name_ref(m_test_write_char_sequence2_256, method, 'testWriteCharSequence2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteCharSequence2()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_3arg_null_separator_262, method, 'testWriteLines_3arg_nullSeparator', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_3arg_nullSeparator()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_3args_with_append_option_false__should_delete_previous_file_lines_270, method, 'testWriteLines_3argsWithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_3argsWithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_3args_with_append_option_true__should_not_delete_previous_file_lines_269, method, 'testWriteLines_3argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_3argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_4arg_259, method, 'testWriteLines_4arg', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_4arg()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_4arg__writer_null_data_260, method, 'testWriteLines_4arg_Writer_nullData', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_4arg_Writer_nullData()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_4arg_null_separator_261, method, 'testWriteLines_4arg_nullSeparator', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_4arg_nullSeparator()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_4args_with_append_option_false__should_delete_previous_file_lines_266, method, 'testWriteLines_4argsWithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_4argsWithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_4args_with_append_option_true__should_not_delete_previous_file_lines_265, method, 'testWriteLines_4argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_4argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_5args_with_append_option_false__should_delete_previous_file_lines_264, method, 'testWriteLines_5argsWithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_5argsWithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_5args_with_append_option_true__should_not_delete_previous_file_lines_263, method, 'testWriteLines_5argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_5argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_encoding__with_append_option_false__should_delete_previous_file_lines_268, method, 'testWriteLinesEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLinesEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_encoding__with_append_option_true__should_not_delete_previous_file_lines_267, method, 'testWriteLinesEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLinesEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file1_252, method, 'testWriteStringToFile1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFile1()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file2_253, method, 'testWriteStringToFile2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFile2()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file3_254, method, 'testWriteStringToFile3', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFile3()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file__with_append_option_false__should_delete_previous_file_lines_274, method, 'testWriteStringToFile_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFile_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file__with_append_option_true__should_not_delete_previous_file_lines_273, method, 'testWriteStringToFile_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFile_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file_with_encoding__with_append_option_false__should_delete_previous_file_lines_272, method, 'testWriteStringToFileWithEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFileWithEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file_with_encoding__with_append_option_true__should_not_delete_previous_file_lines_271, method, 'testWriteStringToFileWithEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFileWithEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_with_encoding__with_append_option_false__should_delete_previous_file_lines_276, method, 'testWriteWithEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteWithEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_with_encoding__with_append_option_true__should_not_delete_previous_file_lines_275, method, 'testWriteWithEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteWithEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_to_file_119, method, 'toFile', 'Lorg/apache/commons/io/FileUtils;.toFile(Ljava/net/URL;)Ljava/io/File;').
name_ref(m_to_files_120, method, 'toFiles', 'Lorg/apache/commons/io/FileUtils;.toFiles([Ljava/net/URL;)[Ljava/io/File;').
name_ref(m_to_path_64, method, 'toPath', 'Ljava/io/File;.toPath()Ljava/nio/file/Path;').
name_ref(m_to_string_324, method, 'toString', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.toString()Ljava/lang/String;').
name_ref(m_to_string_330, method, 'toString', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.toString()Ljava/lang/String;').
name_ref(m_to_string_341, method, 'toString', 'Lorg/apache/commons/io/file/Counters$LongCounter;.toString()Ljava/lang/String;').
name_ref(m_to_suffixes_121, method, 'toSuffixes', 'Lorg/apache/commons/io/FileUtils;.toSuffixes([Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_to_urls_123, method, 'toURLs', 'Lorg/apache/commons/io/FileUtils;.toURLs([Ljava/io/File;)[Ljava/net/URL;|Ljava/io/IOException;').
name_ref(m_touch_122, method, 'touch', 'Lorg/apache/commons/io/FileUtils;.touch(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_validate_list_files_parameters_124, method, 'validateListFilesParameters', 'Lorg/apache/commons/io/FileUtils;.validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V').
name_ref(m_validate_move_parameters_125, method, 'validateMoveParameters', 'Lorg/apache/commons/io/FileUtils;.validateMoveParameters(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;').
name_ref(m_value_of_21, method, 'valueOf', 'Ljava/math/BigInteger;.valueOf(J)Ljava/math/BigInteger;').
name_ref(m_verified_list_files_31, method, 'verifiedListFiles', 'Lorg/apache/commons/io/FileUtils;.verifiedListFiles(Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_362, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_363, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_364, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;').
name_ref(m_wait_for_128, method, 'waitFor', 'Lorg/apache/commons/io/FileUtils;.waitFor(Ljava/io/File;I)Z').
name_ref(m_walk_4, method, 'walk', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_walk_5, method, 'walk', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_write_129, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;)V|Ljava/io/IOException;').
name_ref(m_write_130, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Z)V|Ljava/io/IOException;').
name_ref(m_write_131, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_132, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;').
name_ref(m_write_133, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_134, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(m_write_byte_array_to_file_135, method, 'writeByteArrayToFile', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[B)V|Ljava/io/IOException;').
name_ref(m_write_byte_array_to_file_136, method, 'writeByteArrayToFile', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BZ)V|Ljava/io/IOException;').
name_ref(m_write_byte_array_to_file_137, method, 'writeByteArrayToFile', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BII)V|Ljava/io/IOException;').
name_ref(m_write_byte_array_to_file_138, method, 'writeByteArrayToFile', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;').
name_ref(m_write_lines_139, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;)V|Ljava/io/IOException;').
name_ref(m_write_lines_140, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;').
name_ref(m_write_lines_141, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_lines_142, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(m_write_lines_143, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;)V|Ljava/io/IOException;').
name_ref(m_write_lines_144, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;').
name_ref(m_write_lines_145, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_lines_146, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_147, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_148, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_149, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_150, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_151, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_152, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(q_zero_1, q_name, 'BigInteger.ZERO', 'Ljava/math/BigInteger;:Ljava/math/BigInteger;.ZERO)Ljava/math/BigInteger;').

%%% End of Code Facts

