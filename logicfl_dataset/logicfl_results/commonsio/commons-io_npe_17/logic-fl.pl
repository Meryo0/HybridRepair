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
assign(v_file_1exists_78, file_utils_1_expr15, line(file_utils_1, 391)).
method_invoc(file_utils_1_expr15, m_exists_35, line(file_utils_1, 391)).
ref(p_file_1_76, file_utils_1_expr15, line(file_utils_1, 391)).
param(p_file_1_79, 1, m_content_equals_ignore_eol_36).
param(p_file_2_80, 2, m_content_equals_ignore_eol_36).
param(p_charset_name_81, 3, m_content_equals_ignore_eol_36).
throw(m_content_equals_ignore_eol_36, ioexception).
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
method_invoc(file_utils_1_expr17, m_exists_35, line(file_utils_1, 1116)).
ref(p_directory_124, file_utils_1_expr17, line(file_utils_1, 1116)).
method_invoc(file_utils_1_expr19, m_is_symlink_56, line(file_utils_1, 1120)).
argument(p_directory_124, 1, file_utils_1_expr19).
method_invoc(file_utils_1_expr20, m_clean_directory_30, line(file_utils_1, 1121)).
throw(file_utils_1_expr20, ioexception, line(file_utils_1, 1121)).
argument(p_directory_124, 1, file_utils_1_expr20).
method_invoc(file_utils_1_expr22, m_delete_57, line(file_utils_1, 1124)).
ref(p_directory_124, file_utils_1_expr22, line(file_utils_1, 1124)).
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
assign(v_delete_counters_138, file_utils_1_expr24, line(file_utils_1, 1336)).
method_invoc(file_utils_1_expr24, m_delete_63, line(file_utils_1, 1336)).
throw(file_utils_1_expr24, ioexception, line(file_utils_1, 1336)).
argument(file_utils_1_expr25, 1, file_utils_1_expr24).
ref(t_path_utils_2, file_utils_1_expr24, line(file_utils_1, 1336)).
method_invoc(file_utils_1_expr25, m_to_path_64, line(file_utils_1, 1336)).
ref(p_file_137, file_utils_1_expr25, line(file_utils_1, 1336)).
method_invoc(file_utils_1_expr28, m_get_65, line(file_utils_1, 1341)).
ref(file_utils_1_expr29, file_utils_1_expr28, line(file_utils_1, 1341)).
method_invoc(file_utils_1_expr29, m_get_file_counter_66, line(file_utils_1, 1341)).
ref(v_delete_counters_138, file_utils_1_expr29, line(file_utils_1, 1341)).
method_invoc(file_utils_1_expr31, m_get_65, line(file_utils_1, 1341)).
ref(file_utils_1_expr32, file_utils_1_expr31, line(file_utils_1, 1341)).
method_invoc(file_utils_1_expr32, m_get_directory_counter_67, line(file_utils_1, 1341)).
ref(v_delete_counters_138, file_utils_1_expr32, line(file_utils_1, 1341)).
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
return(file_utils_1_expr34, m_is_symlink_56, line(file_utils_1, 1723)).
method_invoc(file_utils_1_expr34, m_is_symbolic_link_85, line(file_utils_1, 1723)).
argument(file_utils_1_expr35, 1, file_utils_1_expr34).
ref(t_files_3, file_utils_1_expr34, line(file_utils_1, 1723)).
method_invoc(file_utils_1_expr35, m_to_path_64, line(file_utils_1, 1723)).
ref(p_file_165, file_utils_1_expr35, line(file_utils_1, 1723)).
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
method_invoc(file_utils_1_expr37, m_exists_35, line(file_utils_1, 2676)).
ref(p_directory_234, file_utils_1_expr37, line(file_utils_1, 2676)).
method_invoc(file_utils_1_expr39, m_is_directory_126, line(file_utils_1, 2681)).
ref(p_directory_234, file_utils_1_expr39, line(file_utils_1, 2681)).
assign(v_files_235, file_utils_1_expr40, line(file_utils_1, 2686)).
method_invoc(file_utils_1_expr40, m_list_files_127, line(file_utils_1, 2686)).
ref(p_directory_234, file_utils_1_expr40, line(file_utils_1, 2686)).
return(v_files_235, m_verified_list_files_31, line(file_utils_1, 2690)).
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
method_invoc(file_utils_test_case_1_expr14, m_exists_35, line(file_utils_test_case_1, 112)).
ref(file_utils_test_case_1_expr15, file_utils_test_case_1_expr14, line(file_utils_test_case_1, 112)).
method_invoc(file_utils_test_case_1_expr15, m_get_parent_file_158, line(file_utils_test_case_1, 112)).
ref(f_test_file1_321, file_utils_test_case_1_expr15, line(file_utils_test_case_1, 112)).
assign(v_output_3_326, file_utils_test_case_1_expr17, line(file_utils_test_case_1, 116)).
method_invoc(file_utils_test_case_1_expr18, m_generate_test_data_159, line(file_utils_test_case_1, 118)).
throw(file_utils_test_case_1_expr18, ioexception, line(file_utils_test_case_1, 118)).
argument(v_output_3_326, 1, file_utils_test_case_1_expr18).
argument(f_test_file1_size_324, 2, file_utils_test_case_1_expr18).
ref(t_test_utils_5, file_utils_test_case_1_expr18, line(file_utils_test_case_1, 118)).
method_invoc(file_utils_test_case_1_expr20, m_exists_35, line(file_utils_test_case_1, 120)).
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
method_invoc(file_utils_test_case_1_expr28, m_exists_35, line(file_utils_test_case_1, 130)).
ref(file_utils_test_case_1_expr29, file_utils_test_case_1_expr28, line(file_utils_test_case_1, 130)).
method_invoc(file_utils_test_case_1_expr29, m_get_parent_file_158, line(file_utils_test_case_1, 130)).
ref(f_test_file1_321, file_utils_test_case_1_expr29, line(file_utils_test_case_1, 130)).
assign(v_output_1_328, file_utils_test_case_1_expr31, line(file_utils_test_case_1, 134)).
method_invoc(file_utils_test_case_1_expr32, m_generate_test_data_159, line(file_utils_test_case_1, 136)).
throw(file_utils_test_case_1_expr32, ioexception, line(file_utils_test_case_1, 136)).
argument(v_output_1_328, 1, file_utils_test_case_1_expr32).
argument(f_test_file1_size_324, 2, file_utils_test_case_1_expr32).
ref(t_test_utils_5, file_utils_test_case_1_expr32, line(file_utils_test_case_1, 136)).
method_invoc(file_utils_test_case_1_expr34, m_exists_35, line(file_utils_test_case_1, 138)).
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
assign(v_file_331, file_utils_test_case_1_expr42, line(file_utils_test_case_1, 572)).
method_invoc(file_utils_test_case_1_expr42, m_file_156, line(file_utils_test_case_1, 572)).
argument(f_temporary_folder_322, 1, file_utils_test_case_1_expr42).
argument(file_utils_test_case_1_expr43, 2, file_utils_test_case_1_expr42).
method_invoc(file_utils_test_case_1_expr43, m_get_name_161, line(file_utils_test_case_1, 572)).
assign(v_file_2_332, file_utils_test_case_1_expr44, line(file_utils_test_case_1, 573)).
method_invoc(file_utils_test_case_1_expr44, m_file_156, line(file_utils_test_case_1, 573)).
argument(f_temporary_folder_322, 1, file_utils_test_case_1_expr44).
argument(file_utils_test_case_1_expr45, 2, file_utils_test_case_1_expr44).
method_invoc(file_utils_test_case_1_expr46, m_get_name_161, line(file_utils_test_case_1, 573)).
method_invoc(file_utils_test_case_1_expr47, m_assert_true_200, line(file_utils_test_case_1, 574)).
argument(file_utils_test_case_1_expr48, 1, file_utils_test_case_1_expr47).
method_invoc(file_utils_test_case_1_expr48, m_content_equals_34, line(file_utils_test_case_1, 574)).
throw(file_utils_test_case_1_expr48, ioexception, line(file_utils_test_case_1, 574)).
throw(file_utils_test_case_1_expr48, null_pointer_exception, line(file_utils_test_case_1, 574)).
argument(file_utils_test_case_1_literal5, 1, file_utils_test_case_1_expr48).
argument(file_utils_test_case_1_literal6, 2, file_utils_test_case_1_expr48).
ref(t_file_utils_6, file_utils_test_case_1_expr48, line(file_utils_test_case_1, 574)).
throw(m_test_content_equals_ignore_eol_201, exception).
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
throw(file_utils_test_case_1_expr47, null_pointer_exception, line(file_utils_test_case_1, 574)).

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
test_failure(failure_1, 'org.apache.commons.io.FileUtilsTestCase', 'testContentEquals').
trace(trace_1, failure_1, m_content_equals_34, line(file_utils_1, 391), failure_1, target).
trace(trace_2, trace_1, m_test_content_equals_199, line(file_utils_test_case_1, 574), failure_1, target).
trace(trace_3, trace_2, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_4, trace_3, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_file_1_76, null, line(file_utils_1, 391)).



%%% End of Facts