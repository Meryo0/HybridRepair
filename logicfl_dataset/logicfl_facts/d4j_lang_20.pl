%%% Logic-FL Facts
:- style_check(-discontiguous).

%string_utils_1 - org.apache.commons.lang3.StringUtils
assign(f_whitespace_block_1, string_utils_1_expr1, line(string_utils_1, 147)).
method_invoc(string_utils_1_expr1, m_compile_1, line(string_utils_1, 147)).
argument(string_utils_1_literal1, 1, string_utils_1_expr1).
ref(t_pattern_1, string_utils_1_expr1, line(string_utils_1, 147)).
param(p_cs_2, 1, m_is_empty_3).
param(p_cs_3, 1, m_is_not_empty_4).
param(p_cs_4, 1, m_is_blank_5).
param(p_cs_5, 1, m_is_not_blank_6).
param(p_str_6, 1, m_trim_7).
param(p_str_7, 1, m_trim_to_null_8).
param(p_str_8, 1, m_trim_to_empty_9).
param(p_str_9, 1, m_strip_10).
param(p_str_10, 1, m_strip_to_null_11).
param(p_str_11, 1, m_strip_to_empty_12).
param(p_str_12, 1, m_strip_13).
param(p_strip_chars_13, 2, m_strip_13).
param(p_str_14, 1, m_strip_start_14).
param(p_strip_chars_15, 2, m_strip_start_14).
param(p_str_16, 1, m_strip_end_15).
param(p_strip_chars_17, 2, m_strip_end_15).
param(p_strs_18, 1, m_strip_all_16).
param(p_strs_19, 1, m_strip_all_17).
param(p_strip_chars_20, 2, m_strip_all_17).
param(p_input_21, 1, m_strip_accents_18).
param(p_text_22, 1, m_remove_accents_java6_19).
throw(m_remove_accents_java6_19, illegal_access_exception).
throw(m_remove_accents_java6_19, invocation_target_exception).
param(p_text_23, 1, m_remove_accents_sun_20).
throw(m_remove_accents_sun_20, illegal_access_exception).
throw(m_remove_accents_sun_20, invocation_target_exception).
assign(f_sun_available_24, string_utils_1_literal2, line(string_utils_1, 704)).
assign(f_sun_decompose_method_25, string_utils_1_literal3, line(string_utils_1, 705)).
assign(f_sun_pattern_26, string_utils_1_expr2, line(string_utils_1, 706)).
method_invoc(string_utils_1_expr2, m_compile_1, line(string_utils_1, 706)).
argument(string_utils_1_literal4, 1, string_utils_1_expr2).
ref(t_pattern_1, string_utils_1_expr2, line(string_utils_1, 706)).
assign(f_java_6available_27, string_utils_1_literal5, line(string_utils_1, 708)).
assign(f_java_6normalize_method_28, string_utils_1_literal6, line(string_utils_1, 709)).
assign(f_java_6normalizer_form_nfd_29, string_utils_1_literal7, line(string_utils_1, 710)).
assign(f_java_6pattern_30, f_sun_pattern_26, line(string_utils_1, 711)).
assign(v_normalizer_form_class_31, string_utils_1_expr3, line(string_utils_1, 717)).
method_invoc(string_utils_1_expr3, m_load_class_21, line(string_utils_1, 717)).
throw(string_utils_1_expr3, class_not_found_exception, line(string_utils_1, 717)).
argument(string_utils_1_literal8, 1, string_utils_1_expr3).
ref(string_utils_1_expr4, string_utils_1_expr3, line(string_utils_1, 717)).
method_invoc(string_utils_1_expr4, m_get_context_class_loader_22, line(string_utils_1, 717)).
ref(string_utils_1_expr5, string_utils_1_expr4, line(string_utils_1, 717)).
method_invoc(string_utils_1_expr5, m_current_thread_23, line(string_utils_1, 717)).
ref(t_thread_2, string_utils_1_expr5, line(string_utils_1, 717)).
assign(f_java_6normalizer_form_nfd_29, string_utils_1_expr7, line(string_utils_1, 719)).
method_invoc(string_utils_1_expr7, m_get_24, line(string_utils_1, 719)).
throw(string_utils_1_expr7, illegal_argument_exception, line(string_utils_1, 719)).
throw(string_utils_1_expr7, illegal_access_exception, line(string_utils_1, 719)).
argument(string_utils_1_literal9, 1, string_utils_1_expr7).
ref(string_utils_1_expr8, string_utils_1_expr7, line(string_utils_1, 719)).
method_invoc(string_utils_1_expr8, m_get_field_25, line(string_utils_1, 719)).
throw(string_utils_1_expr8, no_such_field_exception, line(string_utils_1, 719)).
throw(string_utils_1_expr8, security_exception, line(string_utils_1, 719)).
argument(string_utils_1_literal10, 1, string_utils_1_expr8).
ref(v_normalizer_form_class_31, string_utils_1_expr8, line(string_utils_1, 719)).
assign(v_normalizer_class_32, string_utils_1_expr9, line(string_utils_1, 720)).
method_invoc(string_utils_1_expr9, m_load_class_21, line(string_utils_1, 720)).
throw(string_utils_1_expr9, class_not_found_exception, line(string_utils_1, 720)).
argument(string_utils_1_literal11, 1, string_utils_1_expr9).
ref(string_utils_1_expr10, string_utils_1_expr9, line(string_utils_1, 720)).
method_invoc(string_utils_1_expr10, m_get_context_class_loader_22, line(string_utils_1, 720)).
ref(string_utils_1_expr11, string_utils_1_expr10, line(string_utils_1, 720)).
method_invoc(string_utils_1_expr11, m_current_thread_23, line(string_utils_1, 720)).
ref(t_thread_2, string_utils_1_expr11, line(string_utils_1, 720)).
assign(f_java_6normalize_method_28, string_utils_1_expr13, line(string_utils_1, 722)).
method_invoc(string_utils_1_expr13, m_get_method_26, line(string_utils_1, 722)).
throw(string_utils_1_expr13, no_such_method_exception, line(string_utils_1, 722)).
throw(string_utils_1_expr13, security_exception, line(string_utils_1, 722)).
argument(string_utils_1_literal12, 1, string_utils_1_expr13).
argument(string_utils_1_expr14, 2, string_utils_1_expr13).
ref(v_normalizer_class_32, string_utils_1_expr13, line(string_utils_1, 722)).
assign(f_java_6available_27, string_utils_1_literal13, line(string_utils_1, 724)).
assign(v_normalizer_class_33, string_utils_1_expr16, line(string_utils_1, 737)).
method_invoc(string_utils_1_expr16, m_load_class_21, line(string_utils_1, 737)).
throw(string_utils_1_expr16, class_not_found_exception, line(string_utils_1, 737)).
argument(string_utils_1_literal14, 1, string_utils_1_expr16).
ref(string_utils_1_expr17, string_utils_1_expr16, line(string_utils_1, 737)).
method_invoc(string_utils_1_expr17, m_get_context_class_loader_22, line(string_utils_1, 737)).
ref(string_utils_1_expr18, string_utils_1_expr17, line(string_utils_1, 737)).
method_invoc(string_utils_1_expr18, m_current_thread_23, line(string_utils_1, 737)).
ref(t_thread_2, string_utils_1_expr18, line(string_utils_1, 737)).
assign(f_sun_available_24, string_utils_1_literal15, line(string_utils_1, 745)).
param(p_cs_1_35, 1, m_equals_27).
param(p_cs_2_36, 2, m_equals_27).
param(p_str_1_37, 1, m_equals_ignore_case_28).
param(p_str_2_38, 2, m_equals_ignore_case_28).
param(p_seq_39, 1, m_index_of_29).
param(p_search_char_40, 2, m_index_of_29).
param(p_seq_41, 1, m_index_of_30).
param(p_search_char_42, 2, m_index_of_30).
param(p_start_pos_43, 3, m_index_of_30).
param(p_seq_44, 1, m_index_of_31).
param(p_search_seq_45, 2, m_index_of_31).
param(p_seq_46, 1, m_index_of_32).
param(p_search_seq_47, 2, m_index_of_32).
param(p_start_pos_48, 3, m_index_of_32).
param(p_str_49, 1, m_ordinal_index_of_33).
param(p_search_str_50, 2, m_ordinal_index_of_33).
param(p_ordinal_51, 3, m_ordinal_index_of_33).
param(p_str_52, 1, m_ordinal_index_of_34).
param(p_search_str_53, 2, m_ordinal_index_of_34).
param(p_ordinal_54, 3, m_ordinal_index_of_34).
param(p_last_index_55, 4, m_ordinal_index_of_34).
param(p_str_56, 1, m_index_of_ignore_case_35).
param(p_search_str_57, 2, m_index_of_ignore_case_35).
param(p_str_58, 1, m_index_of_ignore_case_36).
param(p_search_str_59, 2, m_index_of_ignore_case_36).
param(p_start_pos_60, 3, m_index_of_ignore_case_36).
param(p_seq_61, 1, m_last_index_of_37).
param(p_search_char_62, 2, m_last_index_of_37).
param(p_seq_63, 1, m_last_index_of_38).
param(p_search_char_64, 2, m_last_index_of_38).
param(p_start_pos_65, 3, m_last_index_of_38).
param(p_seq_66, 1, m_last_index_of_39).
param(p_search_seq_67, 2, m_last_index_of_39).
param(p_str_68, 1, m_last_ordinal_index_of_40).
param(p_search_str_69, 2, m_last_ordinal_index_of_40).
param(p_ordinal_70, 3, m_last_ordinal_index_of_40).
param(p_seq_71, 1, m_last_index_of_41).
param(p_search_seq_72, 2, m_last_index_of_41).
param(p_start_pos_73, 3, m_last_index_of_41).
param(p_str_74, 1, m_last_index_of_ignore_case_42).
param(p_search_str_75, 2, m_last_index_of_ignore_case_42).
param(p_str_76, 1, m_last_index_of_ignore_case_43).
param(p_search_str_77, 2, m_last_index_of_ignore_case_43).
param(p_start_pos_78, 3, m_last_index_of_ignore_case_43).
param(p_seq_79, 1, m_contains_44).
param(p_search_char_80, 2, m_contains_44).
param(p_seq_81, 1, m_contains_45).
param(p_search_seq_82, 2, m_contains_45).
param(p_str_83, 1, m_contains_ignore_case_46).
param(p_search_str_84, 2, m_contains_ignore_case_46).
param(p_seq_85, 1, m_contains_whitespace_47).
param(p_cs_86, 1, m_index_of_any_48).
param(p_search_chars_87, 2, m_index_of_any_48).
param(p_cs_88, 1, m_index_of_any_49).
param(p_search_chars_89, 2, m_index_of_any_49).
param(p_cs_90, 1, m_contains_any_50).
param(p_search_chars_91, 2, m_contains_any_50).
param(p_cs_92, 1, m_contains_any_51).
param(p_search_chars_93, 2, m_contains_any_51).
param(p_cs_94, 1, m_index_of_any_but_52).
param(p_search_chars_95, 2, m_index_of_any_but_52).
param(p_seq_96, 1, m_index_of_any_but_53).
param(p_search_chars_97, 2, m_index_of_any_but_53).
param(p_cs_98, 1, m_contains_only_54).
param(p_valid_99, 2, m_contains_only_54).
param(p_cs_100, 1, m_contains_only_55).
param(p_valid_chars_101, 2, m_contains_only_55).
param(p_cs_102, 1, m_contains_none_56).
param(p_search_chars_103, 2, m_contains_none_56).
param(p_cs_104, 1, m_contains_none_57).
param(p_invalid_chars_105, 2, m_contains_none_57).
param(p_str_106, 1, m_index_of_any_58).
param(p_search_strs_107, 2, m_index_of_any_58).
param(p_str_108, 1, m_last_index_of_any_59).
param(p_search_strs_109, 2, m_last_index_of_any_59).
param(p_str_110, 1, m_substring_60).
param(p_start_111, 2, m_substring_60).
param(p_str_112, 1, m_substring_61).
param(p_start_113, 2, m_substring_61).
param(p_end_114, 3, m_substring_61).
param(p_str_115, 1, m_left_62).
param(p_len_116, 2, m_left_62).
param(p_str_117, 1, m_right_63).
param(p_len_118, 2, m_right_63).
param(p_str_119, 1, m_mid_64).
param(p_pos_120, 2, m_mid_64).
param(p_len_121, 3, m_mid_64).
param(p_str_122, 1, m_substring_before_65).
param(p_separator_123, 2, m_substring_before_65).
param(p_str_124, 1, m_substring_after_66).
param(p_separator_125, 2, m_substring_after_66).
param(p_str_126, 1, m_substring_before_last_67).
param(p_separator_127, 2, m_substring_before_last_67).
param(p_str_128, 1, m_substring_after_last_68).
param(p_separator_129, 2, m_substring_after_last_68).
param(p_str_130, 1, m_substring_between_69).
param(p_tag_131, 2, m_substring_between_69).
param(p_str_132, 1, m_substring_between_70).
param(p_open_133, 2, m_substring_between_70).
param(p_close_134, 3, m_substring_between_70).
param(p_str_135, 1, m_substrings_between_71).
param(p_open_136, 2, m_substrings_between_71).
param(p_close_137, 3, m_substrings_between_71).
param(p_str_138, 1, m_split_72).
param(p_str_139, 1, m_split_73).
param(p_separator_char_140, 2, m_split_73).
param(p_str_141, 1, m_split_74).
param(p_separator_chars_142, 2, m_split_74).
param(p_str_143, 1, m_split_75).
param(p_separator_chars_144, 2, m_split_75).
param(p_max_145, 3, m_split_75).
param(p_str_146, 1, m_split_by_whole_separator_76).
param(p_separator_147, 2, m_split_by_whole_separator_76).
param(p_str_148, 1, m_split_by_whole_separator_77).
param(p_separator_149, 2, m_split_by_whole_separator_77).
param(p_max_150, 3, m_split_by_whole_separator_77).
param(p_str_151, 1, m_split_by_whole_separator_preserve_all_tokens_78).
param(p_separator_152, 2, m_split_by_whole_separator_preserve_all_tokens_78).
param(p_str_153, 1, m_split_by_whole_separator_preserve_all_tokens_79).
param(p_separator_154, 2, m_split_by_whole_separator_preserve_all_tokens_79).
param(p_max_155, 3, m_split_by_whole_separator_preserve_all_tokens_79).
param(p_str_156, 1, m_split_by_whole_separator_worker_80).
param(p_separator_157, 2, m_split_by_whole_separator_worker_80).
param(p_max_158, 3, m_split_by_whole_separator_worker_80).
param(p_preserve_all_tokens_159, 4, m_split_by_whole_separator_worker_80).
param(p_str_160, 1, m_split_preserve_all_tokens_81).
param(p_str_161, 1, m_split_preserve_all_tokens_82).
param(p_separator_char_162, 2, m_split_preserve_all_tokens_82).
param(p_str_163, 1, m_split_worker_83).
param(p_separator_char_164, 2, m_split_worker_83).
param(p_preserve_all_tokens_165, 3, m_split_worker_83).
param(p_str_166, 1, m_split_preserve_all_tokens_84).
param(p_separator_chars_167, 2, m_split_preserve_all_tokens_84).
param(p_str_168, 1, m_split_preserve_all_tokens_85).
param(p_separator_chars_169, 2, m_split_preserve_all_tokens_85).
param(p_max_170, 3, m_split_preserve_all_tokens_85).
param(p_str_171, 1, m_split_worker_86).
param(p_separator_chars_172, 2, m_split_worker_86).
param(p_max_173, 3, m_split_worker_86).
param(p_preserve_all_tokens_174, 4, m_split_worker_86).
param(p_str_175, 1, m_split_by_character_type_87).
param(p_str_176, 1, m_split_by_character_type_camel_case_88).
param(p_str_177, 1, m_split_by_character_type_89).
param(p_camel_case_178, 2, m_split_by_character_type_89).
param(p_elements_179, 1, m_join_90).
return(string_utils_1_expr20, m_join_90, line(string_utils_1, 3230)).
method_invoc(string_utils_1_expr20, m_join_91, line(string_utils_1, 3230)).
argument(p_elements_179, 1, string_utils_1_expr20).
argument(string_utils_1_literal16, 2, string_utils_1_expr20).
param(p_array_180, 1, m_join_92).
param(p_separator_181, 2, m_join_92).
return(string_utils_1_literal18, m_join_92, line(string_utils_1, 3257)).
return(string_utils_1_expr22, m_join_92, line(string_utils_1, 3260)).
method_invoc(string_utils_1_expr22, m_join_93, line(string_utils_1, 3260)).
argument(p_array_180, 1, string_utils_1_expr22).
argument(p_separator_181, 2, string_utils_1_expr22).
argument(string_utils_1_literal19, 3, string_utils_1_expr22).
argument(q_length_1, 4, string_utils_1_expr22).
ref(p_array_180, q_length_1, line(string_utils_1, 3260)).
param(p_array_182, 1, m_join_93).
param(p_separator_183, 2, m_join_93).
param(p_start_index_184, 3, m_join_93).
param(p_end_index_185, 4, m_join_93).
assign(v_no_of_items_186, string_utils_1_expr24, line(string_utils_1, 3293)).
assign(string_utils_1_expr24, string_utils_1_expr25, line(string_utils_1, 3293)).
return(f_empty_187, m_join_93, line(string_utils_1, 3295)).
assign(v_buf_188, string_utils_1_expr27, line(string_utils_1, 3298)).
method_invoc(string_utils_1_expr27, m_string_builder_94, line(string_utils_1, 3298)).
argument(string_utils_1_expr28, 1, string_utils_1_expr27).
assign(string_utils_1_expr29, string_utils_1_expr30, line(string_utils_1, 3298)).
cond_expr(string_utils_1_expr31, string_utils_1_literal22, string_utils_1_expr32, line(string_utils_1, 3298)).
ref(p_array_182, string_utils_1_expr33, line(string_utils_1, 3298)).
method_invoc(string_utils_1_expr32, m_length_95, line(string_utils_1, 3298)).
ref(string_utils_1_expr34, string_utils_1_expr32, line(string_utils_1, 3298)).
method_invoc(string_utils_1_expr34, m_to_string_96, line(string_utils_1, 3298)).
ref(string_utils_1_expr35, string_utils_1_expr34, line(string_utils_1, 3298)).
ref(p_array_182, string_utils_1_expr35, line(string_utils_1, 3298)).
assign(v_i_189, p_start_index_184, line(string_utils_1, 3300)).
method_invoc(string_utils_1_expr40, m_append_97, line(string_utils_1, 3302)).
argument(p_separator_183, 1, string_utils_1_expr40).
ref(v_buf_188, string_utils_1_expr40, line(string_utils_1, 3302)).
ref(p_array_182, string_utils_1_expr42, line(string_utils_1, 3304)).
method_invoc(string_utils_1_expr43, m_append_98, line(string_utils_1, 3305)).
argument(string_utils_1_expr44, 1, string_utils_1_expr43).
ref(v_buf_188, string_utils_1_expr43, line(string_utils_1, 3305)).
ref(p_array_182, string_utils_1_expr44, line(string_utils_1, 3305)).
return(string_utils_1_expr45, m_join_93, line(string_utils_1, 3308)).
method_invoc(string_utils_1_expr45, m_to_string_99, line(string_utils_1, 3308)).
ref(v_buf_188, string_utils_1_expr45, line(string_utils_1, 3308)).
param(p_array_190, 1, m_join_91).
param(p_separator_191, 2, m_join_91).
return(string_utils_1_literal27, m_join_91, line(string_utils_1, 3336)).
return(string_utils_1_expr47, m_join_91, line(string_utils_1, 3338)).
method_invoc(string_utils_1_expr47, m_join_100, line(string_utils_1, 3338)).
throw(string_utils_1_expr47, null_pointer_exception, line(string_utils_1, 3338)).
argument(p_array_190, 1, string_utils_1_expr47).
argument(p_separator_191, 2, string_utils_1_expr47).
argument(string_utils_1_literal28, 3, string_utils_1_expr47).
argument(q_length_2, 4, string_utils_1_expr47).
ref(p_array_190, q_length_2, line(string_utils_1, 3338)).
param(p_array_192, 1, m_join_100).
param(p_separator_193, 2, m_join_100).
param(p_start_index_194, 3, m_join_100).
param(p_end_index_195, 4, m_join_100).
assign(p_separator_193, f_empty_187, line(string_utils_1, 3373)).
assign(v_no_of_items_196, string_utils_1_expr51, line(string_utils_1, 3378)).
assign(string_utils_1_expr51, string_utils_1_expr52, line(string_utils_1, 3378)).
return(f_empty_187, m_join_100, line(string_utils_1, 3380)).
assign(v_buf_197, string_utils_1_expr54, line(string_utils_1, 3383)).
method_invoc(string_utils_1_expr54, m_string_builder_94, line(string_utils_1, 3383)).
argument(string_utils_1_expr55, 1, string_utils_1_expr54).
assign(string_utils_1_expr56, string_utils_1_expr57, line(string_utils_1, 3383)).
cond_expr(string_utils_1_expr58, string_utils_1_literal32, string_utils_1_expr59, line(string_utils_1, 3383)).
ref(p_array_192, string_utils_1_expr60, line(string_utils_1, 3383)).
method_invoc(string_utils_1_expr59, m_length_95, line(string_utils_1, 3383)).
ref(string_utils_1_expr61, string_utils_1_expr59, line(string_utils_1, 3383)).
method_invoc(string_utils_1_expr61, m_to_string_96, line(string_utils_1, 3383)).
ref(string_utils_1_expr62, string_utils_1_expr61, line(string_utils_1, 3383)).
ref(p_array_192, string_utils_1_expr62, line(string_utils_1, 3383)).
method_invoc(string_utils_1_expr63, m_length_95, line(string_utils_1, 3383)).
ref(p_separator_193, string_utils_1_expr63, line(string_utils_1, 3383)).
assign(v_i_198, p_start_index_194, line(string_utils_1, 3385)).
ref(p_array_192, string_utils_1_expr69, line(string_utils_1, 3389)).
return(string_utils_1_expr70, m_join_100, line(string_utils_1, 3393)).
method_invoc(string_utils_1_expr70, m_to_string_99, line(string_utils_1, 3393)).
ref(v_buf_197, string_utils_1_expr70, line(string_utils_1, 3393)).
param(p_iterator_199, 1, m_join_101).
param(p_separator_200, 2, m_join_101).
param(p_iterator_201, 1, m_join_102).
param(p_separator_202, 2, m_join_102).
param(p_iterable_203, 1, m_join_103).
param(p_separator_204, 2, m_join_103).
param(p_iterable_205, 1, m_join_104).
param(p_separator_206, 2, m_join_104).
param(p_str_207, 1, m_delete_whitespace_105).
param(p_str_208, 1, m_remove_start_106).
param(p_remove_209, 2, m_remove_start_106).
param(p_str_210, 1, m_remove_start_ignore_case_107).
param(p_remove_211, 2, m_remove_start_ignore_case_107).
param(p_str_212, 1, m_remove_end_108).
param(p_remove_213, 2, m_remove_end_108).
param(p_str_214, 1, m_remove_end_ignore_case_109).
param(p_remove_215, 2, m_remove_end_ignore_case_109).
param(p_str_216, 1, m_remove_110).
param(p_remove_217, 2, m_remove_110).
param(p_str_218, 1, m_remove_111).
param(p_remove_219, 2, m_remove_111).
param(p_text_220, 1, m_replace_once_112).
param(p_search_string_221, 2, m_replace_once_112).
param(p_replacement_222, 3, m_replace_once_112).
param(p_text_223, 1, m_replace_113).
param(p_search_string_224, 2, m_replace_113).
param(p_replacement_225, 3, m_replace_113).
param(p_text_226, 1, m_replace_114).
param(p_search_string_227, 2, m_replace_114).
param(p_replacement_228, 3, m_replace_114).
param(p_max_229, 4, m_replace_114).
param(p_text_230, 1, m_replace_each_115).
param(p_search_list_231, 2, m_replace_each_115).
param(p_replacement_list_232, 3, m_replace_each_115).
param(p_text_233, 1, m_replace_each_repeatedly_116).
param(p_search_list_234, 2, m_replace_each_repeatedly_116).
param(p_replacement_list_235, 3, m_replace_each_repeatedly_116).
param(p_text_236, 1, m_replace_each_117).
param(p_search_list_237, 2, m_replace_each_117).
param(p_replacement_list_238, 3, m_replace_each_117).
param(p_repeat_239, 4, m_replace_each_117).
param(p_time_to_live_240, 5, m_replace_each_117).
param(p_str_241, 1, m_replace_chars_118).
param(p_search_char_242, 2, m_replace_chars_118).
param(p_replace_char_243, 3, m_replace_chars_118).
param(p_str_244, 1, m_replace_chars_119).
param(p_search_chars_245, 2, m_replace_chars_119).
param(p_replace_chars_246, 3, m_replace_chars_119).
param(p_str_247, 1, m_overlay_120).
param(p_overlay_248, 2, m_overlay_120).
param(p_start_249, 3, m_overlay_120).
param(p_end_250, 4, m_overlay_120).
param(p_str_251, 1, m_chomp_121).
param(p_str_252, 1, m_chomp_122).
param(p_separator_253, 2, m_chomp_122).
param(p_str_254, 1, m_chop_123).
param(p_str_255, 1, m_repeat_124).
param(p_repeat_256, 2, m_repeat_124).
param(p_str_257, 1, m_repeat_125).
param(p_separator_258, 2, m_repeat_125).
param(p_repeat_259, 3, m_repeat_125).
param(p_ch_260, 1, m_repeat_126).
param(p_repeat_261, 2, m_repeat_126).
param(p_str_262, 1, m_right_pad_127).
param(p_size_263, 2, m_right_pad_127).
param(p_str_264, 1, m_right_pad_128).
param(p_size_265, 2, m_right_pad_128).
param(p_pad_char_266, 3, m_right_pad_128).
param(p_str_267, 1, m_right_pad_129).
param(p_size_268, 2, m_right_pad_129).
param(p_pad_str_269, 3, m_right_pad_129).
param(p_str_270, 1, m_left_pad_130).
param(p_size_271, 2, m_left_pad_130).
param(p_str_272, 1, m_left_pad_131).
param(p_size_273, 2, m_left_pad_131).
param(p_pad_char_274, 3, m_left_pad_131).
param(p_str_275, 1, m_left_pad_132).
param(p_size_276, 2, m_left_pad_132).
param(p_pad_str_277, 3, m_left_pad_132).
param(p_cs_278, 1, m_length_133).
param(p_str_279, 1, m_center_134).
param(p_size_280, 2, m_center_134).
param(p_str_281, 1, m_center_135).
param(p_size_282, 2, m_center_135).
param(p_pad_char_283, 3, m_center_135).
param(p_str_284, 1, m_center_136).
param(p_size_285, 2, m_center_136).
param(p_pad_str_286, 3, m_center_136).
param(p_str_287, 1, m_upper_case_137).
param(p_str_288, 1, m_upper_case_138).
param(p_locale_289, 2, m_upper_case_138).
param(p_str_290, 1, m_lower_case_139).
param(p_str_291, 1, m_lower_case_140).
param(p_locale_292, 2, m_lower_case_140).
param(p_str_293, 1, m_capitalize_141).
param(p_str_294, 1, m_uncapitalize_142).
param(p_str_295, 1, m_swap_case_143).
param(p_str_296, 1, m_count_matches_144).
param(p_sub_297, 2, m_count_matches_144).
param(p_cs_298, 1, m_is_alpha_145).
param(p_cs_299, 1, m_is_alpha_space_146).
param(p_cs_300, 1, m_is_alphanumeric_147).
param(p_cs_301, 1, m_is_alphanumeric_space_148).
param(p_cs_302, 1, m_is_ascii_printable_149).
param(p_cs_303, 1, m_is_numeric_150).
param(p_cs_304, 1, m_is_numeric_space_151).
param(p_cs_305, 1, m_is_whitespace_152).
param(p_cs_306, 1, m_is_all_lower_case_153).
param(p_cs_307, 1, m_is_all_upper_case_154).
param(p_str_308, 1, m_default_string_155).
param(p_str_309, 1, m_default_string_156).
param(p_default_str_310, 2, m_default_string_156).
param(p_str_311, 1, m_default_if_blank_157).
param(p_default_str_312, 2, m_default_if_blank_157).
param(p_str_313, 1, m_default_if_empty_158).
param(p_default_str_314, 2, m_default_if_empty_158).
param(p_str_315, 1, m_reverse_159).
param(p_str_316, 1, m_reverse_delimited_160).
param(p_separator_char_317, 2, m_reverse_delimited_160).
param(p_str_318, 1, m_abbreviate_161).
param(p_max_width_319, 2, m_abbreviate_161).
param(p_str_320, 1, m_abbreviate_162).
param(p_offset_321, 2, m_abbreviate_162).
param(p_max_width_322, 3, m_abbreviate_162).
param(p_str_323, 1, m_abbreviate_middle_163).
param(p_middle_324, 2, m_abbreviate_middle_163).
param(p_length_325, 3, m_abbreviate_middle_163).
param(p_str_1_326, 1, m_difference_164).
param(p_str_2_327, 2, m_difference_164).
param(p_cs_1_328, 1, m_index_of_difference_165).
param(p_cs_2_329, 2, m_index_of_difference_165).
param(p_css_330, 1, m_index_of_difference_166).
param(p_strs_331, 1, m_get_common_prefix_167).
param(p_s_332, 1, m_get_levenshtein_distance_168).
param(p_t_333, 2, m_get_levenshtein_distance_168).
param(p_s_334, 1, m_get_levenshtein_distance_169).
param(p_t_335, 2, m_get_levenshtein_distance_169).
param(p_threshold_336, 3, m_get_levenshtein_distance_169).
param(p_str_337, 1, m_starts_with_170).
param(p_prefix_338, 2, m_starts_with_170).
param(p_str_339, 1, m_starts_with_ignore_case_171).
param(p_prefix_340, 2, m_starts_with_ignore_case_171).
param(p_str_341, 1, m_starts_with_172).
param(p_prefix_342, 2, m_starts_with_172).
param(p_ignore_case_343, 3, m_starts_with_172).
param(p_string_344, 1, m_starts_with_any_173).
param(p_search_strings_345, 2, m_starts_with_any_173).
param(p_str_346, 1, m_ends_with_174).
param(p_suffix_347, 2, m_ends_with_174).
param(p_str_348, 1, m_ends_with_ignore_case_175).
param(p_suffix_349, 2, m_ends_with_ignore_case_175).
param(p_str_350, 1, m_ends_with_176).
param(p_suffix_351, 2, m_ends_with_176).
param(p_ignore_case_352, 3, m_ends_with_176).
param(p_str_353, 1, m_normalize_space_177).
param(p_string_354, 1, m_ends_with_any_178).
param(p_search_strings_355, 2, m_ends_with_any_178).

%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
assign(v_ws_356, string_utils_test_1_literal1, line(string_utils_test_1, 44)).
assign(v_nws_357, string_utils_test_1_literal2, line(string_utils_test_1, 45)).
assign(v_tr_358, string_utils_test_1_literal3, line(string_utils_test_1, 46)).
assign(v_ntr_359, string_utils_test_1_literal4, line(string_utils_test_1, 47)).
assign(v_i_360, string_utils_test_1_literal5, line(string_utils_test_1, 48)).
ref(t_character_3, q_max_value_3, line(string_utils_test_1, 48)).
method_invoc(string_utils_test_1_expr4, m_is_whitespace_179, line(string_utils_test_1, 49)).
argument(string_utils_test_1_expr5, 1, string_utils_test_1_expr4).
ref(t_character_3, string_utils_test_1_expr4, line(string_utils_test_1, 49)).
assign(string_utils_test_1_expr5, v_i_360, line(string_utils_test_1, 49)).
assign(v_ws_356, string_utils_test_1_expr7, line(string_utils_test_1, 50)).
method_invoc(string_utils_test_1_expr7, m_value_of_180, line(string_utils_test_1, 50)).
argument(string_utils_test_1_expr8, 1, string_utils_test_1_expr7).
ref(t_string_4, string_utils_test_1_expr7, line(string_utils_test_1, 50)).
assign(string_utils_test_1_expr8, v_i_360, line(string_utils_test_1, 50)).
assign(v_ntr_359, string_utils_test_1_expr11, line(string_utils_test_1, 52)).
method_invoc(string_utils_test_1_expr11, m_value_of_180, line(string_utils_test_1, 52)).
argument(string_utils_test_1_expr12, 1, string_utils_test_1_expr11).
ref(t_string_4, string_utils_test_1_expr11, line(string_utils_test_1, 52)).
assign(string_utils_test_1_expr12, v_i_360, line(string_utils_test_1, 52)).
assign(v_nws_357, string_utils_test_1_expr15, line(string_utils_test_1, 55)).
method_invoc(string_utils_test_1_expr15, m_value_of_180, line(string_utils_test_1, 55)).
argument(string_utils_test_1_expr16, 1, string_utils_test_1_expr15).
ref(t_string_4, string_utils_test_1_expr15, line(string_utils_test_1, 55)).
assign(string_utils_test_1_expr16, v_i_360, line(string_utils_test_1, 55)).
assign(v_i_361, string_utils_test_1_literal8, line(string_utils_test_1, 58)).
assign(v_tr_358, string_utils_test_1_expr21, line(string_utils_test_1, 59)).
method_invoc(string_utils_test_1_expr21, m_value_of_180, line(string_utils_test_1, 59)).
argument(string_utils_test_1_expr22, 1, string_utils_test_1_expr21).
ref(t_string_4, string_utils_test_1_expr21, line(string_utils_test_1, 59)).
assign(string_utils_test_1_expr22, v_i_361, line(string_utils_test_1, 59)).
assign(f_whitespace_362, v_ws_356, line(string_utils_test_1, 61)).
assign(f_non_whitespace_363, v_nws_357, line(string_utils_test_1, 62)).
assign(f_trimmable_364, v_tr_358, line(string_utils_test_1, 63)).
assign(f_non_trimmable_365, v_ntr_359, line(string_utils_test_1, 64)).
assign(f_array_list_366, string_utils_test_1_expr27, line(string_utils_test_1, 67)).
assign(f_empty_array_list_367, string_utils_test_1_expr28, line(string_utils_test_1, 68)).
assign(f_null_array_list_368, string_utils_test_1_expr29, line(string_utils_test_1, 69)).
assign(f_null_to_string_list_369, string_utils_test_1_expr30, line(string_utils_test_1, 70)).
assign(f_mixed_array_list_370, string_utils_test_1_expr31, line(string_utils_test_1, 78)).
assign(f_mixed_type_list_371, string_utils_test_1_expr32, line(string_utils_test_1, 79)).
method_invoc(string_utils_test_1_expr33, m_value_of_182, line(string_utils_test_1, 79)).
argument(string_utils_test_1_literal18, 1, string_utils_test_1_expr33).
ref(t_long_5, string_utils_test_1_expr33, line(string_utils_test_1, 79)).
param(p_name_372, 1, m_string_utils_test_183).
method_invoc(string_utils_test_1_expr34, m_test_case_184, line(string_utils_test_1, 95)).
argument(p_name_372, 1, string_utils_test_1_expr34).
method_invoc(string_utils_test_1_expr35, m_assert_equals_190, line(string_utils_test_1, 186)).
argument(string_utils_test_1_literal19, 1, string_utils_test_1_expr35).
argument(string_utils_test_1_expr36, 2, string_utils_test_1_expr35).
method_invoc(string_utils_test_1_expr36, m_join_90, line(string_utils_test_1, 186)).
argument(string_utils_test_1_expr37, 1, string_utils_test_1_expr36).
ref(t_string_utils_6, string_utils_test_1_expr36, line(string_utils_test_1, 186)).
assign(string_utils_test_1_expr37, string_utils_test_1_literal20, line(string_utils_test_1, 186)).
method_invoc(string_utils_test_1_expr38, m_assert_equals_190, line(string_utils_test_1, 188)).
argument(string_utils_test_1_literal21, 1, string_utils_test_1_expr38).
argument(string_utils_test_1_expr39, 2, string_utils_test_1_expr38).
method_invoc(string_utils_test_1_expr39, m_join_90, line(string_utils_test_1, 188)).
ref(t_string_utils_6, string_utils_test_1_expr39, line(string_utils_test_1, 188)).
method_invoc(string_utils_test_1_expr40, m_assert_equals_190, line(string_utils_test_1, 189)).
argument(string_utils_test_1_literal22, 1, string_utils_test_1_expr40).
argument(string_utils_test_1_expr41, 2, string_utils_test_1_expr40).
method_invoc(string_utils_test_1_expr41, m_join_90, line(string_utils_test_1, 189)).
argument(string_utils_test_1_expr42, 1, string_utils_test_1_expr41).
ref(t_string_utils_6, string_utils_test_1_expr41, line(string_utils_test_1, 189)).
assign(string_utils_test_1_expr42, string_utils_test_1_literal23, line(string_utils_test_1, 189)).
method_invoc(string_utils_test_1_expr43, m_assert_equals_190, line(string_utils_test_1, 191)).
argument(string_utils_test_1_literal24, 1, string_utils_test_1_expr43).
argument(string_utils_test_1_expr44, 2, string_utils_test_1_expr43).
method_invoc(string_utils_test_1_expr44, m_join_90, line(string_utils_test_1, 191)).
argument(f_empty_array_list_367, 1, string_utils_test_1_expr44).
ref(t_string_utils_6, string_utils_test_1_expr44, line(string_utils_test_1, 191)).
method_invoc(string_utils_test_1_expr45, m_assert_equals_190, line(string_utils_test_1, 192)).
argument(string_utils_test_1_literal25, 1, string_utils_test_1_expr45).
argument(string_utils_test_1_expr46, 2, string_utils_test_1_expr45).
method_invoc(string_utils_test_1_expr46, m_join_90, line(string_utils_test_1, 192)).
argument(f_null_array_list_368, 1, string_utils_test_1_expr46).
ref(t_string_utils_6, string_utils_test_1_expr46, line(string_utils_test_1, 192)).
method_invoc(string_utils_test_1_expr47, m_assert_equals_190, line(string_utils_test_1, 193)).
argument(string_utils_test_1_literal26, 1, string_utils_test_1_expr47).
argument(string_utils_test_1_expr48, 2, string_utils_test_1_expr47).
method_invoc(string_utils_test_1_expr48, m_join_90, line(string_utils_test_1, 193)).
argument(f_null_to_string_list_369, 1, string_utils_test_1_expr48).
ref(t_string_utils_6, string_utils_test_1_expr48, line(string_utils_test_1, 193)).
method_invoc(string_utils_test_1_expr49, m_assert_equals_190, line(string_utils_test_1, 201)).
argument(string_utils_test_1_literal27, 1, string_utils_test_1_expr49).
argument(string_utils_test_1_expr50, 2, string_utils_test_1_expr49).
method_invoc(string_utils_test_1_expr50, m_join_92, line(string_utils_test_1, 201)).
argument(string_utils_test_1_expr51, 1, string_utils_test_1_expr50).
argument(string_utils_test_1_literal28, 2, string_utils_test_1_expr50).
ref(t_string_utils_6, string_utils_test_1_expr50, line(string_utils_test_1, 201)).
assign(string_utils_test_1_expr51, string_utils_test_1_literal29, line(string_utils_test_1, 201)).
method_invoc(string_utils_test_1_expr52, m_assert_equals_190, line(string_utils_test_1, 202)).
argument(f_text_list_char_373, 1, string_utils_test_1_expr52).
argument(string_utils_test_1_expr53, 2, string_utils_test_1_expr52).
method_invoc(string_utils_test_1_expr53, m_join_92, line(string_utils_test_1, 202)).
argument(f_array_list_366, 1, string_utils_test_1_expr53).
argument(f_separator_char_374, 2, string_utils_test_1_expr53).
ref(t_string_utils_6, string_utils_test_1_expr53, line(string_utils_test_1, 202)).
method_invoc(string_utils_test_1_expr54, m_assert_equals_190, line(string_utils_test_1, 203)).
argument(string_utils_test_1_literal30, 1, string_utils_test_1_expr54).
argument(string_utils_test_1_expr55, 2, string_utils_test_1_expr54).
method_invoc(string_utils_test_1_expr55, m_join_92, line(string_utils_test_1, 203)).
argument(f_empty_array_list_367, 1, string_utils_test_1_expr55).
argument(f_separator_char_374, 2, string_utils_test_1_expr55).
ref(t_string_utils_6, string_utils_test_1_expr55, line(string_utils_test_1, 203)).
method_invoc(string_utils_test_1_expr56, m_assert_equals_190, line(string_utils_test_1, 204)).
argument(string_utils_test_1_literal31, 1, string_utils_test_1_expr56).
argument(string_utils_test_1_expr57, 2, string_utils_test_1_expr56).
method_invoc(string_utils_test_1_expr57, m_join_92, line(string_utils_test_1, 204)).
argument(f_mixed_array_list_370, 1, string_utils_test_1_expr57).
argument(f_separator_char_374, 2, string_utils_test_1_expr57).
ref(t_string_utils_6, string_utils_test_1_expr57, line(string_utils_test_1, 204)).
method_invoc(string_utils_test_1_expr58, m_assert_equals_190, line(string_utils_test_1, 205)).
argument(string_utils_test_1_literal32, 1, string_utils_test_1_expr58).
argument(string_utils_test_1_expr59, 2, string_utils_test_1_expr58).
method_invoc(string_utils_test_1_expr59, m_join_92, line(string_utils_test_1, 205)).
argument(f_mixed_type_list_371, 1, string_utils_test_1_expr59).
argument(f_separator_char_374, 2, string_utils_test_1_expr59).
ref(t_string_utils_6, string_utils_test_1_expr59, line(string_utils_test_1, 205)).
method_invoc(string_utils_test_1_expr60, m_assert_equals_190, line(string_utils_test_1, 207)).
argument(string_utils_test_1_literal33, 1, string_utils_test_1_expr60).
argument(string_utils_test_1_expr61, 2, string_utils_test_1_expr60).
method_invoc(string_utils_test_1_expr61, m_join_93, line(string_utils_test_1, 207)).
argument(f_mixed_array_list_370, 1, string_utils_test_1_expr61).
argument(string_utils_test_1_literal34, 2, string_utils_test_1_expr61).
argument(string_utils_test_1_literal35, 3, string_utils_test_1_expr61).
argument(string_utils_test_1_expr62, 4, string_utils_test_1_expr61).
ref(t_string_utils_6, string_utils_test_1_expr61, line(string_utils_test_1, 207)).
ref(f_mixed_array_list_370, q_length_4, line(string_utils_test_1, 207)).
method_invoc(string_utils_test_1_expr63, m_assert_equals_190, line(string_utils_test_1, 208)).
argument(string_utils_test_1_literal37, 1, string_utils_test_1_expr63).
argument(string_utils_test_1_expr64, 2, string_utils_test_1_expr63).
method_invoc(string_utils_test_1_expr64, m_join_93, line(string_utils_test_1, 208)).
argument(f_mixed_type_list_371, 1, string_utils_test_1_expr64).
argument(string_utils_test_1_literal38, 2, string_utils_test_1_expr64).
argument(string_utils_test_1_literal39, 3, string_utils_test_1_expr64).
argument(string_utils_test_1_literal40, 4, string_utils_test_1_expr64).
ref(t_string_utils_6, string_utils_test_1_expr64, line(string_utils_test_1, 208)).
method_invoc(string_utils_test_1_expr65, m_assert_equals_190, line(string_utils_test_1, 209)).
argument(string_utils_test_1_literal41, 1, string_utils_test_1_expr65).
argument(string_utils_test_1_expr66, 2, string_utils_test_1_expr65).
method_invoc(string_utils_test_1_expr66, m_join_93, line(string_utils_test_1, 209)).
throw(string_utils_test_1_expr66, null_pointer_exception, line(string_utils_test_1, 209)).
argument(f_null_to_string_list_369, 1, string_utils_test_1_expr66).
argument(string_utils_test_1_literal42, 2, string_utils_test_1_expr66).
argument(string_utils_test_1_literal43, 3, string_utils_test_1_expr66).
argument(string_utils_test_1_literal44, 4, string_utils_test_1_expr66).
ref(t_string_utils_6, string_utils_test_1_expr66, line(string_utils_test_1, 209)).
param(p_separator_375, 1, m_inner_test_split_200).
param(p_sep_str_376, 2, m_inner_test_split_200).
param(p_no_match_377, 3, m_inner_test_split_200).
param(p_separator_378, 1, m_inner_test_split_preserve_all_tokens_207).
param(p_sep_str_379, 2, m_inner_test_split_preserve_all_tokens_207).
param(p_no_match_380, 3, m_inner_test_split_preserve_all_tokens_207).
param(p_expected_381, 1, m_assert_abbreviate_with_offset_251).
param(p_offset_382, 2, m_assert_abbreviate_with_offset_251).
param(p_max_width_383, 3, m_assert_abbreviate_with_offset_251).
throw(string_utils_test_1_expr65, null_pointer_exception, line(string_utils_test_1, 209)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang3.StringUtilsTest', 'testJoin_Objectarray').
trace(trace_1, failure_1, m_join_100, line(string_utils_1, 3383), failure_1, target).
trace(trace_2, trace_1, m_join_91, line(string_utils_1, 3338), failure_1, target).
trace(trace_3, trace_2, m_join_90, line(string_utils_1, 3230), failure_1, target).
trace(trace_4, trace_3, m_test_join__objectarray_189, line(string_utils_test_1, 193), failure_1, target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_7, trace_6, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_8, trace_7, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_9, trace_8, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_10, trace_9, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_11, trace_10, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_12, trace_11, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_13, trace_12, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_14, trace_13, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_17, trace_16, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.lang3.StringUtilsTest', 'testJoin_ArrayChar').
trace(trace_18, failure_2, m_join_93, line(string_utils_1, 3298), failure_2, target).
trace(trace_19, trace_18, m_test_join__array_char_191, line(string_utils_test_1, 209), failure_2, target).
trace(trace_20, trace_19, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_2, non_target).
trace(trace_21, trace_20, 'invoke', line(java_lang_reflect_method, 578), failure_2, non_target).
trace(trace_22, trace_21, 'runTest', line(junit_framework_test_case, 177), failure_2, non_target).
trace(trace_23, trace_22, 'runBare', line(junit_framework_test_case, 142), failure_2, non_target).
trace(trace_24, trace_23, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_25, trace_24, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_26, trace_25, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_27, trace_26, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_28, trace_27, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_29, trace_28, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_30, trace_29, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_31, trace_30, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_32, trace_31, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(p_elements_179, null, line(string_utils_1, 3230)).
val(string_utils_1_expr34, null, line(string_utils_1, 3298)).
val(p_separator_191, null, line(string_utils_1, 3338)).
val(p_separator_193, null, line(string_utils_1, 3372)).
val(string_utils_1_expr61, null, line(string_utils_1, 3383)).
val(string_utils_test_1_expr36, null, line(string_utils_test_1, 186)).
val(string_utils_test_1_expr50, null, line(string_utils_test_1, 201)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(string_utils_1, 'org.apache.commons.lang3.StringUtils').
class(string_utils_test_1, 'org.apache.commons.lang3.StringUtilsTest').

%%% Methods
%string_utils_1 - org.apache.commons.lang3.StringUtils
method(m_string_utils_2, range(string_utils_1, 5609, 359, 149, 159)).
method(m_is_empty_3, range(string_utils_1, 6072, 817, 163, 184)).
method(m_is_not_empty_4, range(string_utils_1, 6895, 687, 186, 203)).
method(m_is_blank_5, range(string_utils_1, 7588, 943, 205, 232)).
method(m_is_not_blank_6, range(string_utils_1, 8537, 754, 234, 253)).
method(m_trim_7, range(string_utils_1, 9387, 948, 257, 282)).
method(m_trim_to_null_8, range(string_utils_1, 10341, 1000, 284, 309)).
method(m_trim_to_empty_9, range(string_utils_1, 11347, 956, 311, 334)).
method(m_strip_10, range(string_utils_1, 12404, 908, 338, 362)).
method(m_strip_to_null_11, range(string_utils_1, 13318, 1120, 364, 393)).
method(m_strip_to_empty_12, range(string_utils_1, 14444, 996, 395, 419)).
method(m_strip_13, range(string_utils_1, 15446, 1365, 421, 453)).
method(m_strip_start_14, range(string_utils_1, 16817, 1716, 455, 497)).
method(m_strip_end_15, range(string_utils_1, 18539, 1715, 499, 542)).
method(m_strip_all_16, range(string_utils_1, 20354, 898, 546, 567)).
method(m_strip_all_17, range(string_utils_1, 21258, 1553, 569, 604)).
method(m_strip_accents_18, range(string_utils_1, 22817, 2274, 606, 652)).
method(m_remove_accents_java6_19, range(string_utils_1, 25097, 1232, 654, 677)).
method(m_remove_accents_sun_20, range(string_utils_1, 26335, 1076, 679, 701)).
method(m_equals_27, range(string_utils_1, 29716, 1037, 751, 774)).
method(m_equals_ignore_case_28, range(string_utils_1, 30759, 1254, 776, 803)).
method(m_index_of_29, range(string_utils_1, 32112, 1035, 807, 832)).
method(m_index_of_30, range(string_utils_1, 33153, 1413, 834, 865)).
method(m_index_of_31, range(string_utils_1, 34572, 1285, 867, 896)).
method(m_index_of_32, range(string_utils_1, 35863, 1833, 898, 936)).
method(m_ordinal_index_of_33, range(string_utils_1, 37702, 1738, 938, 974)).
method(m_ordinal_index_of_34, range(string_utils_1, 39446, 1552, 976, 1011)).
method(m_index_of_ignore_case_35, range(string_utils_1, 41004, 1292, 1013, 1040)).
method(m_index_of_ignore_case_36, range(string_utils_1, 42302, 2310, 1042, 1094)).
method(m_last_index_of_37, range(string_utils_1, 44715, 1057, 1098, 1123)).
method(m_last_index_of_38, range(string_utils_1, 45778, 1531, 1125, 1158)).
method(m_last_index_of_39, range(string_utils_1, 47315, 1260, 1160, 1188)).
method(m_last_ordinal_index_of_40, range(string_utils_1, 48581, 1789, 1190, 1226)).
method(m_last_index_of_41, range(string_utils_1, 50376, 1727, 1228, 1262)).
method(m_last_index_of_ignore_case_42, range(string_utils_1, 52109, 1388, 1264, 1292)).
method(m_last_index_of_ignore_case_43, range(string_utils_1, 53503, 2206, 1294, 1343)).
method(m_contains_44, range(string_utils_1, 55809, 1034, 1347, 1372)).
method(m_contains_45, range(string_utils_1, 56849, 1183, 1374, 1401)).
method(m_contains_ignore_case_46, range(string_utils_1, 58038, 1545, 1403, 1439)).
method(m_contains_whitespace_47, range(string_utils_1, 59589, 753, 1441, 1461)).
method(m_index_of_any_48, range(string_utils_1, 60450, 1988, 1465, 1512)).
method(m_index_of_any_49, range(string_utils_1, 62444, 1229, 1514, 1542)).
method(m_contains_any_50, range(string_utils_1, 63776, 2251, 1546, 1598)).
method(m_contains_any_51, range(string_utils_1, 66033, 1360, 1600, 1633)).
method(m_index_of_any_but_52, range(string_utils_1, 67504, 2119, 1637, 1686)).
method(m_index_of_any_but_53, range(string_utils_1, 69629, 1836, 1688, 1731)).
method(m_contains_only_54, range(string_utils_1, 71569, 1442, 1735, 1769)).
method(m_contains_only_55, range(string_utils_1, 73017, 1263, 1771, 1799)).
method(m_contains_none_56, range(string_utils_1, 74384, 2163, 1803, 1854)).
method(m_contains_none_57, range(string_utils_1, 76553, 1261, 1856, 1884)).
method(m_index_of_any_58, range(string_utils_1, 77924, 2233, 1888, 1941)).
method(m_last_index_of_any_59, range(string_utils_1, 80163, 2038, 1943, 1987)).
method(m_substring_60, range(string_utils_1, 82302, 1440, 1991, 2033)).
method(m_substring_61, range(string_utils_1, 83748, 2385, 2035, 2101)).
method(m_left_62, range(string_utils_1, 86239, 1075, 2105, 2136)).
method(m_right_63, range(string_utils_1, 87320, 1100, 2138, 2169)).
method(m_mid_64, range(string_utils_1, 88426, 1454, 2171, 2210)).
method(m_substring_before_65, range(string_utils_1, 90002, 1537, 2214, 2253)).
method(m_substring_after_66, range(string_utils_1, 91545, 1565, 2255, 2295)).
method(m_substring_before_last_67, range(string_utils_1, 93116, 1510, 2297, 2333)).
method(m_substring_after_last_68, range(string_utils_1, 94632, 1712, 2335, 2376)).
method(m_substring_between_69, range(string_utils_1, 96453, 980, 2380, 2403)).
method(m_substring_between_70, range(string_utils_1, 97439, 1754, 2405, 2444)).
method(m_substrings_between_71, range(string_utils_1, 99199, 2072, 2446, 2497)).
method(m_split_72, range(string_utils_1, 101476, 954, 2504, 2528)).
method(m_split_73, range(string_utils_1, 102436, 1129, 2530, 2556)).
method(m_split_74, range(string_utils_1, 103571, 1231, 2558, 2585)).
method(m_split_75, range(string_utils_1, 104808, 1541, 2587, 2619)).
method(m_split_by_whole_separator_76, range(string_utils_1, 106355, 1302, 2621, 2646)).
method(m_split_by_whole_separator_77, range(string_utils_1, 107663, 1600, 2648, 2677)).
method(m_split_by_whole_separator_preserve_all_tokens_78, range(string_utils_1, 109269, 1517, 2679, 2706)).
method(m_split_by_whole_separator_preserve_all_tokens_79, range(string_utils_1, 110792, 1832, 2708, 2739)).
method(m_split_by_whole_separator_worker_80, range(string_utils_1, 112630, 3133, 2741, 2819)).
method(m_split_preserve_all_tokens_81, range(string_utils_1, 115848, 1254, 2822, 2848)).
method(m_split_preserve_all_tokens_82, range(string_utils_1, 117108, 1893, 2850, 2884)).
method(m_split_worker_83, range(string_utils_1, 119007, 1618, 2886, 2930)).
method(m_split_preserve_all_tokens_84, range(string_utils_1, 120631, 1995, 2932, 2967)).
method(m_split_preserve_all_tokens_85, range(string_utils_1, 122632, 2105, 2969, 3007)).
method(m_split_worker_86, range(string_utils_1, 124743, 3693, 3009, 3106)).
method(m_split_by_character_type_87, range(string_utils_1, 128442, 1186, 3108, 3129)).
method(m_split_by_character_type_camel_case_88, range(string_utils_1, 129634, 1586, 3131, 3157)).
method(m_split_by_character_type_89, range(string_utils_1, 131226, 2077, 3159, 3203)).
method(m_join_90, range(string_utils_1, 133402, 931, 3207, 3231)).
method(m_join_92, range(string_utils_1, 134339, 1069, 3233, 3261)).
method(m_join_93, range(string_utils_1, 135414, 1838, 3263, 3309)).
method(m_join_91, range(string_utils_1, 137258, 1205, 3311, 3339)).
method(m_join_100, range(string_utils_1, 138469, 2227, 3341, 3394)).
method(m_join_101, range(string_utils_1, 140702, 1462, 3396, 3439)).
method(m_join_102, range(string_utils_1, 142170, 1499, 3441, 3484)).
method(m_join_103, range(string_utils_1, 143675, 818, 3486, 3505)).
method(m_join_104, range(string_utils_1, 144499, 819, 3507, 3526)).
method(m_delete_whitespace_105, range(string_utils_1, 145416, 1024, 3530, 3560)).
method(m_remove_start_106, range(string_utils_1, 146538, 1343, 3564, 3596)).
method(m_remove_start_ignore_case_107, range(string_utils_1, 147887, 1553, 3598, 3631)).
method(m_remove_end_108, range(string_utils_1, 149446, 1343, 3633, 3665)).
method(m_remove_end_ignore_case_109, range(string_utils_1, 150795, 1630, 3667, 3701)).
method(m_remove_110, range(string_utils_1, 152431, 1150, 3703, 3731)).
method(m_remove_111, range(string_utils_1, 153587, 1149, 3733, 3764)).
method(m_replace_once_112, range(string_utils_1, 154837, 1211, 3768, 3793)).
method(m_replace_113, range(string_utils_1, 156054, 1170, 3795, 3820)).
method(m_replace_114, range(string_utils_1, 157230, 2368, 3822, 3874)).
method(m_replace_each_115, range(string_utils_1, 159604, 1933, 3876, 3917)).
method(m_replace_each_repeatedly_116, range(string_utils_1, 161543, 2664, 3919, 3969)).
method(m_replace_each_117, range(string_utils_1, 164213, 7093, 3971, 4144)).
method(m_replace_chars_118, range(string_utils_1, 171422, 1060, 4148, 4173)).
method(m_replace_chars_119, range(string_utils_1, 172488, 2622, 4175, 4238)).
method(m_overlay_120, range(string_utils_1, 175209, 2212, 4242, 4301)).
method(m_chomp_121, range(string_utils_1, 177521, 1683, 4305, 4354)).
method(m_chomp_122, range(string_utils_1, 179210, 1403, 4356, 4390)).
method(m_chop_123, range(string_utils_1, 180713, 1378, 4394, 4434)).
method(m_repeat_124, range(string_utils_1, 182287, 1869, 4441, 4496)).
method(m_repeat_125, range(string_utils_1, 184162, 1224, 4498, 4526)).
method(m_repeat_126, range(string_utils_1, 185392, 1066, 4528, 4556)).
method(m_right_pad_127, range(string_utils_1, 186464, 780, 4558, 4579)).
method(m_right_pad_128, range(string_utils_1, 187250, 1218, 4581, 4614)).
method(m_right_pad_129, range(string_utils_1, 188474, 1950, 4616, 4668)).
method(m_left_pad_130, range(string_utils_1, 190430, 770, 4670, 4691)).
method(m_left_pad_131, range(string_utils_1, 191206, 1189, 4693, 4726)).
method(m_left_pad_132, range(string_utils_1, 192401, 1918, 4728, 4780)).
method(m_length_133, range(string_utils_1, 194325, 472, 4782, 4795)).
method(m_center_134, range(string_utils_1, 194898, 977, 4799, 4824)).
method(m_center_135, range(string_utils_1, 195881, 1401, 4826, 4862)).
method(m_center_136, range(string_utils_1, 197288, 1652, 4864, 4905)).
method(m_upper_case_137, range(string_utils_1, 199047, 971, 4909, 4933)).
method(m_upper_case_138, range(string_utils_1, 200024, 802, 4935, 4956)).
method(m_lower_case_139, range(string_utils_1, 200832, 971, 4958, 4982)).
method(m_lower_case_140, range(string_utils_1, 201809, 802, 4984, 5005)).
method(m_capitalize_141, range(string_utils_1, 202617, 1145, 5007, 5036)).
method(m_uncapitalize_142, range(string_utils_1, 203768, 1163, 5038, 5067)).
method(m_swap_case_143, range(string_utils_1, 204937, 1841, 5069, 5116)).
method(m_count_matches_144, range(string_utils_1, 206883, 1252, 5120, 5151)).
method(m_is_alpha_145, range(string_utils_1, 208242, 1124, 5155, 5186)).
method(m_is_alpha_space_146, range(string_utils_1, 209372, 1202, 5188, 5221)).
method(m_is_alphanumeric_147, range(string_utils_1, 210580, 1271, 5223, 5256)).
method(m_is_alphanumeric_space_148, range(string_utils_1, 211857, 1301, 5258, 5291)).
method(m_is_ascii_printable_149, range(string_utils_1, 213164, 1464, 5293, 5330)).
method(m_is_numeric_150, range(string_utils_1, 214634, 1294, 5332, 5366)).
method(m_is_numeric_space_151, range(string_utils_1, 215934, 1341, 5368, 5403)).
method(m_is_whitespace_152, range(string_utils_1, 217281, 1111, 5405, 5436)).
method(m_is_all_lower_case_153, range(string_utils_1, 218398, 1112, 5438, 5468)).
method(m_is_all_upper_case_154, range(string_utils_1, 219516, 1105, 5470, 5500)).
method(m_default_string_155, range(string_utils_1, 220721, 621, 5504, 5522)).
method(m_default_string_156, range(string_utils_1, 221348, 783, 5524, 5543)).
method(m_default_if_blank_157, range(string_utils_1, 222137, 1002, 5545, 5565)).
method(m_default_if_empty_158, range(string_utils_1, 223145, 916, 5567, 5586)).
method(m_reverse_159, range(string_utils_1, 224162, 610, 5590, 5609)).
method(m_reverse_delimited_160, range(string_utils_1, 224778, 1110, 5611, 5639)).
method(m_abbreviate_161, range(string_utils_1, 225992, 1458, 5643, 5677)).
method(m_abbreviate_162, range(string_utils_1, 227456, 2920, 5679, 5741)).
method(m_abbreviate_middle_163, range(string_utils_1, 230382, 2158, 5743, 5791)).
method(m_difference_164, range(string_utils_1, 232642, 1346, 5795, 5832)).
method(m_index_of_difference_165, range(string_utils_1, 233994, 1573, 5834, 5876)).
method(m_index_of_difference_166, range(string_utils_1, 235573, 3920, 5878, 5966)).
method(m_get_common_prefix_167, range(string_utils_1, 239499, 2458, 5968, 6019)).
method(m_get_levenshtein_distance_168, range(string_utils_1, 242053, 4951, 6023, 6134)).
method(m_get_levenshtein_distance_169, range(string_utils_1, 247010, 7057, 6136, 6296)).
method(m_starts_with_170, range(string_utils_1, 254170, 1094, 6301, 6325)).
method(m_starts_with_ignore_case_171, range(string_utils_1, 255270, 1193, 6327, 6351)).
method(m_starts_with_172, range(string_utils_1, 256469, 877, 6353, 6372)).
method(m_starts_with_any_173, range(string_utils_1, 257352, 1422, 6374, 6404)).
method(m_ends_with_174, range(string_utils_1, 258875, 1123, 6409, 6434)).
method(m_ends_with_ignore_case_175, range(string_utils_1, 260004, 1232, 6436, 6461)).
method(m_ends_with_176, range(string_utils_1, 261242, 933, 6463, 6483)).
method(m_normalize_space_177, range(string_utils_1, 262181, 1844, 6485, 6531)).
method(m_ends_with_any_178, range(string_utils_1, 264031, 1280, 6533, 6562)).
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
method(m_to_string_181, range(string_utils_test_1, 2411, 70, 72, 75)).
method(m_string_utils_test_183, range(string_utils_test_1, 3171, 64, 94, 96)).
method(m_test_constructor_185, range(string_utils_test_1, 3319, 427, 99, 106)).
method(m_test_case_functions_186, range(string_utils_test_1, 3834, 2830, 109, 158)).
method(m_test_swap_case__string_187, range(string_utils_test_1, 6670, 855, 160, 175)).
method(m_test_join__objects_188, range(string_utils_test_1, 7609, 225, 178, 182)).
method(m_test_join__objectarray_189, range(string_utils_test_1, 7840, 869, 184, 198)).
method(m_test_join__array_char_191, range(string_utils_test_1, 8723, 910, 200, 213)).
method(m_test_join__array_string_192, range(string_utils_test_1, 9643, 1273, 215, 236)).
method(m_test_join__iterator_char_193, range(string_utils_test_1, 10926, 524, 238, 244)).
method(m_test_join__iterator_string_194, range(string_utils_test_1, 11460, 1001, 246, 260)).
method(m_test_join__iterable_char_195, range(string_utils_test_1, 12467, 480, 262, 268)).
method(m_test_join__iterable_string_196, range(string_utils_test_1, 12953, 886, 270, 284)).
method(m_test_split__string_197, range(string_utils_test_1, 13845, 778, 286, 307)).
method(m_test_split__string_char_198, range(string_utils_test_1, 14633, 753, 309, 331)).
method(m_test_split__string_string__string_string_int_199, range(string_utils_test_1, 15396, 1432, 333, 364)).
method(m_inner_test_split_200, range(string_utils_test_1, 16838, 1600, 366, 404)).
method(m_test_split_by_whole_string__string_string_boolean_201, range(string_utils_test_1, 18444, 1766, 406, 435)).
method(m_test_split_by_whole_string__string_string_boolean_int_202, range(string_utils_test_1, 20216, 1471, 437, 461)).
method(m_test_split_by_whole_separator_preserve_all_tokens__string_string_int_203, range(string_utils_test_1, 21693, 1897, 463, 507)).
method(m_test_split_preserve_all_tokens__string_204, range(string_utils_test_1, 23600, 2610, 509, 582)).
method(m_test_split_preserve_all_tokens__string_char_205, range(string_utils_test_1, 26220, 3767, 584, 693)).
method(m_test_split_preserve_all_tokens__string_string__string_string_int_206, range(string_utils_test_1, 29997, 5210, 695, 822)).
method(m_inner_test_split_preserve_all_tokens_207, range(string_utils_test_1, 35217, 1914, 824, 867)).
method(m_test_split_by_character_type_208, range(string_utils_test_1, 37137, 1215, 869, 893)).
method(m_test_split_by_character_type_camel_case_209, range(string_utils_test_1, 38362, 1273, 895, 919)).
method(m_test_delete_whitespace__string_210, range(string_utils_test_1, 39641, 869, 921, 932)).
method(m_test_lang623_211, range(string_utils_test_1, 40516, 189, 934, 937)).
method(m_test_replace__string_string_string_212, range(string_utils_test_1, 40711, 1093, 939, 958)).
method(m_test_replace__string_string_string_int_213, range(string_utils_test_1, 41814, 1337, 960, 983)).
method(m_test_replace_once__string_string_string_214, range(string_utils_test_1, 43161, 991, 985, 1002)).
method(m_test_replace__string_string_array_string_array_215, range(string_utils_test_1, 44158, 2357, 1004, 1038)).
method(m_test_replace__string_string_array_string_array_boolean_216, range(string_utils_test_1, 46521, 1465, 1040, 1064)).
method(m_test_replace_chars__string_char_char_217, range(string_utils_test_1, 47996, 341, 1066, 1071)).
method(m_test_replace_chars__string_string_string_218, range(string_utils_test_1, 48347, 2558, 1073, 1116)).
method(m_test_overlay__string_string_int_int_219, range(string_utils_test_1, 50915, 1640, 1118, 1143)).
method(m_test_repeat__string_int_220, range(string_utils_test_1, 52561, 589, 1145, 1155)).
method(m_test_repeat__string_string_int_221, range(string_utils_test_1, 53156, 478, 1157, 1168)).
method(m_test_chop_222, range(string_utils_test_1, 53640, 767, 1170, 1192)).
method(m_test_chomp_223, range(string_utils_test_1, 54413, 2519, 1194, 1249)).
method(m_test_right_pad__string_int_224, range(string_utils_test_1, 57016, 349, 1252, 1258)).
method(m_test_right_pad__string_int_char_225, range(string_utils_test_1, 57371, 655, 1260, 1270)).
method(m_test_right_pad__string_int_string_226, range(string_utils_test_1, 58032, 726, 1272, 1283)).
method(m_test_left_pad__string_int_227, range(string_utils_test_1, 58850, 282, 1286, 1291)).
method(m_test_left_pad__string_int_char_228, range(string_utils_test_1, 59146, 663, 1293, 1303)).
method(m_test_left_pad__string_int_string_229, range(string_utils_test_1, 59823, 715, 1305, 1316)).
method(m_test_length_string_230, range(string_utils_test_1, 60544, 359, 1318, 1325)).
method(m_test_length_string_buffer_231, range(string_utils_test_1, 60909, 404, 1327, 1333)).
method(m_test_length_string_builder_232, range(string_utils_test_1, 61319, 410, 1335, 1341)).
method(m_test_length__char_buffer_233, range(string_utils_test_1, 61739, 317, 1343, 1348)).
method(m_test_center__string_int_234, range(string_utils_test_1, 62140, 680, 1351, 1363)).
method(m_test_center__string_int_char_235, range(string_utils_test_1, 62830, 803, 1365, 1378)).
method(m_test_center__string_int_string_236, range(string_utils_test_1, 63643, 1007, 1380, 1396)).
method(m_test_reverse__string_237, range(string_utils_test_1, 64734, 218, 1399, 1403)).
method(m_test_reverse_delimited__string_char_238, range(string_utils_test_1, 64966, 407, 1405, 1411)).
method(m_test_default__string_239, range(string_utils_test_1, 65457, 219, 1414, 1418)).
method(m_test_default__string_string_240, range(string_utils_test_1, 65682, 253, 1420, 1424)).
method(m_test_default_if_empty__string_string_241, range(string_utils_test_1, 65941, 474, 1426, 1434)).
method(m_test_default_if_blank__string_string_242, range(string_utils_test_1, 66421, 545, 1436, 1445)).
method(m_test_default_if_empty__string_builders_243, range(string_utils_test_1, 66972, 577, 1447, 1454)).
method(m_test_default_if_blank__string_builders_244, range(string_utils_test_1, 67555, 697, 1456, 1464)).
method(m_test_default_if_empty__string_buffers_245, range(string_utils_test_1, 68258, 568, 1466, 1473)).
method(m_test_default_if_blank__string_buffers_246, range(string_utils_test_1, 68832, 686, 1475, 1483)).
method(m_test_default_if_empty__char_buffers_247, range(string_utils_test_1, 69524, 557, 1485, 1492)).
method(m_test_default_if_blank__char_buffers_248, range(string_utils_test_1, 70087, 673, 1494, 1502)).
method(m_test_abbreviate__string_int_249, range(string_utils_test_1, 70844, 1306, 1505, 1528)).
method(m_test_abbreviate__string_int_int_250, range(string_utils_test_1, 72160, 2199, 1530, 1575)).
method(m_assert_abbreviate_with_offset_251, range(string_utils_test_1, 74365, 663, 1577, 1588)).
method(m_test_abbreviate_middle_252, range(string_utils_test_1, 75034, 1882, 1590, 1628)).
method(m_test_difference__string_string_253, range(string_utils_test_1, 77000, 721, 1631, 1641)).
method(m_test_difference_at__string_string_254, range(string_utils_test_1, 77727, 839, 1643, 1654)).
method(m_test_get_levenshtein_distance__string_string_255, range(string_utils_test_1, 78650, 1356, 1657, 1682)).
method(m_test_get_levenshtein_distance__string_string_int_256, range(string_utils_test_1, 80012, 3775, 1684, 1761)).
method(m_test_empty_257, range(string_utils_test_1, 83793, 240, 1763, 1770)).
method(m_test_is_all_lower_case_258, range(string_utils_test_1, 84039, 413, 1772, 1781)).
method(m_test_is_all_upper_case_259, range(string_utils_test_1, 84458, 413, 1783, 1792)).
method(m_test_remove_start_260, range(string_utils_test_1, 84877, 879, 1794, 1810)).
method(m_test_remove_start_ignore_case_261, range(string_utils_test_1, 85766, 1603, 1812, 1831)).
method(m_test_remove_end_262, range(string_utils_test_1, 87375, 934, 1833, 1850)).
method(m_test_remove_end_ignore_case_263, range(string_utils_test_1, 88315, 1848, 1852, 1873)).
method(m_test_remove__string_264, range(string_utils_test_1, 90169, 1214, 1875, 1901)).
method(m_test_remove_char_265, range(string_utils_test_1, 91389, 751, 1903, 1919)).
method(m_test_difference_at__string_array_266, range(string_utils_test_1, 92150, 1495, 1921, 1939)).
method(m_test_get_common_prefix__string_array_267, range(string_utils_test_1, 93655, 1245, 1941, 1959)).
method(m_test_normalize_space_268, range(string_utils_test_1, 94914, 1139, 1961, 1979)).
method(m_test_lang666_269, range(string_utils_test_1, 96059, 164, 1981, 1984)).
method(m_test_string_utils_char_sequence_contract_270, range(string_utils_test_1, 96542, 1407, 1990, 2012)).

%%% Blocks
%string_utils_1 - org.apache.commons.lang3.StringUtils
block(string_utils_1_block1, block, string_utils_1_code46, body, range(string_utils_1, 27921, 1697, 713, 747)).
block(string_utils_1_block2, block, string_utils_1_stmt1, body, range(string_utils_1, 27935, 767, 714, 725)).
block(string_utils_1_block3, block, string_utils_1_code55, body, range(string_utils_1, 28976, 47, 731, 733)).
block(string_utils_1_block4, block, string_utils_1_stmt7, body, range(string_utils_1, 29037, 418, 735, 742)).
block(string_utils_1_block5, block, string_utils_1_code60, body, range(string_utils_1, 29489, 45, 742, 744)).
block(string_utils_1_block6, block, string_utils_1_code61, body, range(string_utils_1, 29567, 45, 744, 746)).
block(string_utils_1_block7, block, string_utils_1_code64, body, range(string_utils_1, 134289, 44, 3229, 3231)).
block(string_utils_1_block8, block, string_utils_1_code65, body, range(string_utils_1, 135280, 128, 3255, 3261)).
block(string_utils_1_block9, block, string_utils_1_stmt11, then_statement, range(string_utils_1, 135309, 36, 3256, 3258)).
block(string_utils_1_block10, block, string_utils_1_code66, body, range(string_utils_1, 136661, 591, 3289, 3309)).
block(string_utils_1_block11, block, string_utils_1_stmt14, then_statement, range(string_utils_1, 136690, 36, 3290, 3292)).
block(string_utils_1_block12, block, string_utils_1_stmt16, then_statement, range(string_utils_1, 136804, 37, 3294, 3296)).
block(string_utils_1_block13, block, string_utils_1_stmt19, body, range(string_utils_1, 137029, 186, 3300, 3307)).
block(string_utils_1_block14, block, string_utils_1_stmt20, then_statement, range(string_utils_1, 137063, 54, 3301, 3303)).
block(string_utils_1_block15, block, string_utils_1_stmt22, then_statement, range(string_utils_1, 137152, 53, 3304, 3306)).
block(string_utils_1_block16, block, string_utils_1_code74, body, range(string_utils_1, 138336, 127, 3334, 3339)).
block(string_utils_1_block17, block, string_utils_1_stmt25, then_statement, range(string_utils_1, 138365, 36, 3335, 3337)).
block(string_utils_1_block18, block, string_utils_1_code75, body, range(string_utils_1, 139853, 843, 3368, 3394)).
block(string_utils_1_block19, block, string_utils_1_stmt28, then_statement, range(string_utils_1, 139882, 36, 3369, 3371)).
block(string_utils_1_block20, block, string_utils_1_stmt29, then_statement, range(string_utils_1, 139950, 42, 3372, 3374)).
block(string_utils_1_block21, block, string_utils_1_stmt32, then_statement, range(string_utils_1, 140239, 37, 3379, 3381)).
block(string_utils_1_block22, block, string_utils_1_stmt35, body, range(string_utils_1, 140473, 186, 3385, 3392)).
block(string_utils_1_block23, block, string_utils_1_stmt36, then_statement, range(string_utils_1, 140507, 54, 3386, 3388)).
block(string_utils_1_block24, block, string_utils_1_stmt37, then_statement, range(string_utils_1, 140596, 53, 3389, 3391)).
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
block(string_utils_test_1_block1, block, string_utils_test_1_code3, body, range(string_utils_test_1, 1467, 670, 43, 65)).
block(string_utils_test_1_block2, block, string_utils_test_1_stmt5, body, range(string_utils_test_1, 1621, 308, 48, 57)).
block(string_utils_test_1_block3, block, string_utils_test_1_stmt6, then_statement, range(string_utils_test_1, 1673, 164, 49, 54)).
block(string_utils_test_1_block4, block, string_utils_test_1_stmt8, then_statement, range(string_utils_test_1, 1751, 72, 51, 53)).
block(string_utils_test_1_block5, block, string_utils_test_1_stmt10, then_statement, range(string_utils_test_1, 1855, 64, 54, 56)).
block(string_utils_test_1_block6, block, string_utils_test_1_stmt12, body, range(string_utils_test_1, 1968, 55, 58, 60)).
block(string_utils_test_1_block7, block, string_utils_test_1_code69, body, range(string_utils_test_1, 3207, 28, 94, 96)).
block(string_utils_test_1_block8, block, string_utils_test_1_code70, body, range(string_utils_test_1, 7875, 834, 184, 198)).
block(string_utils_test_1_block9, block, string_utils_test_1_code75, body, range(string_utils_test_1, 8756, 877, 200, 213)).

%%% Statements
%string_utils_1 - org.apache.commons.lang3.StringUtils
stmt(string_utils_1_stmt1, try_statement, string_utils_1_block1, (statements, 0), range(string_utils_1, 27931, 1092, 714, 733)).
stmt(string_utils_1_stmt2, variable_declaration_statement, string_utils_1_block2, (statements, 0), range(string_utils_1, 28099, 134, 717, 718)).
stmt(string_utils_1_stmt3, expression_statement, string_utils_1_block2, (statements, 1), range(string_utils_1, 28259, 71, 719, 719)).
stmt(string_utils_1_stmt4, variable_declaration_statement, string_utils_1_block2, (statements, 2), range(string_utils_1, 28356, 125, 720, 721)).
stmt(string_utils_1_stmt5, expression_statement, string_utils_1_block2, (statements, 3), range(string_utils_1, 28507, 137, 722, 723)).
stmt(string_utils_1_stmt6, expression_statement, string_utils_1_block2, (statements, 4), range(string_utils_1, 28670, 22, 724, 724)).
stmt(string_utils_1_stmt7, try_statement, string_utils_1_block1, (statements, 1), range(string_utils_1, 29033, 579, 735, 746)).
stmt(string_utils_1_stmt8, variable_declaration_statement, string_utils_1_block4, (statements, 0), range(string_utils_1, 29113, 124, 737, 738)).
stmt(string_utils_1_stmt9, expression_statement, string_utils_1_block6, (statements, 0), range(string_utils_1, 29581, 21, 745, 745)).
stmt(string_utils_1_stmt10, return_statement, string_utils_1_block7, (statements, 0), range(string_utils_1, 134299, 28, 3230, 3230)).
stmt(string_utils_1_stmt11, if_statement, string_utils_1_block8, (statements, 0), range(string_utils_1, 135290, 55, 3256, 3258)).
stmt(string_utils_1_stmt12, return_statement, string_utils_1_block9, (statements, 0), range(string_utils_1, 135323, 12, 3257, 3257)).
stmt(string_utils_1_stmt13, return_statement, string_utils_1_block8, (statements, 1), range(string_utils_1, 135355, 47, 3260, 3260)).
stmt(string_utils_1_stmt14, if_statement, string_utils_1_block10, (statements, 0), range(string_utils_1, 136671, 55, 3290, 3292)).
stmt(string_utils_1_stmt15, variable_declaration_statement, string_utils_1_block10, (statements, 1), range(string_utils_1, 136735, 40, 3293, 3293)).
stmt(string_utils_1_stmt16, if_statement, string_utils_1_block10, (statements, 2), range(string_utils_1, 136784, 57, 3294, 3296)).
stmt(string_utils_1_stmt17, return_statement, string_utils_1_block12, (statements, 0), range(string_utils_1, 136818, 13, 3295, 3295)).
stmt(string_utils_1_stmt18, variable_declaration_statement, string_utils_1_block10, (statements, 3), range(string_utils_1, 136859, 116, 3298, 3298)).
stmt(string_utils_1_stmt19, for_statement, string_utils_1_block10, (statements, 4), range(string_utils_1, 136985, 230, 3300, 3307)).
stmt(string_utils_1_stmt20, if_statement, string_utils_1_block13, (statements, 0), range(string_utils_1, 137043, 74, 3301, 3303)).
stmt(string_utils_1_stmt21, expression_statement, string_utils_1_block14, (statements, 0), range(string_utils_1, 137081, 22, 3302, 3302)).
stmt(string_utils_1_stmt22, if_statement, string_utils_1_block13, (statements, 1), range(string_utils_1, 137130, 75, 3304, 3306)).
stmt(string_utils_1_stmt23, expression_statement, string_utils_1_block15, (statements, 0), range(string_utils_1, 137170, 21, 3305, 3305)).
stmt(string_utils_1_stmt24, return_statement, string_utils_1_block10, (statements, 5), range(string_utils_1, 137224, 22, 3308, 3308)).
stmt(string_utils_1_stmt25, if_statement, string_utils_1_block16, (statements, 0), range(string_utils_1, 138346, 55, 3335, 3337)).
stmt(string_utils_1_stmt26, return_statement, string_utils_1_block17, (statements, 0), range(string_utils_1, 138379, 12, 3336, 3336)).
stmt(string_utils_1_stmt27, return_statement, string_utils_1_block16, (statements, 1), range(string_utils_1, 138410, 47, 3338, 3338)).
stmt(string_utils_1_stmt28, if_statement, string_utils_1_block18, (statements, 0), range(string_utils_1, 139863, 55, 3369, 3371)).
stmt(string_utils_1_stmt29, if_statement, string_utils_1_block18, (statements, 1), range(string_utils_1, 139927, 65, 3372, 3374)).
stmt(string_utils_1_stmt30, expression_statement, string_utils_1_block20, (statements, 0), range(string_utils_1, 139964, 18, 3373, 3373)).
stmt(string_utils_1_stmt31, variable_declaration_statement, string_utils_1_block18, (statements, 2), range(string_utils_1, 140170, 40, 3378, 3378)).
stmt(string_utils_1_stmt32, if_statement, string_utils_1_block18, (statements, 3), range(string_utils_1, 140219, 57, 3379, 3381)).
stmt(string_utils_1_stmt33, return_statement, string_utils_1_block21, (statements, 0), range(string_utils_1, 140253, 13, 3380, 3380)).
stmt(string_utils_1_stmt34, variable_declaration_statement, string_utils_1_block18, (statements, 4), range(string_utils_1, 140286, 133, 3383, 3383)).
stmt(string_utils_1_stmt35, for_statement, string_utils_1_block18, (statements, 5), range(string_utils_1, 140429, 230, 3385, 3392)).
stmt(string_utils_1_stmt36, if_statement, string_utils_1_block22, (statements, 0), range(string_utils_1, 140487, 74, 3386, 3388)).
stmt(string_utils_1_stmt37, if_statement, string_utils_1_block22, (statements, 1), range(string_utils_1, 140574, 75, 3389, 3391)).
stmt(string_utils_1_stmt38, return_statement, string_utils_1_block18, (statements, 6), range(string_utils_1, 140668, 22, 3393, 3393)).
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
stmt(string_utils_test_1_stmt1, variable_declaration_statement, string_utils_test_1_block1, (statements, 0), range(string_utils_test_1, 1477, 15, 44, 44)).
stmt(string_utils_test_1_stmt2, variable_declaration_statement, string_utils_test_1_block1, (statements, 1), range(string_utils_test_1, 1501, 16, 45, 45)).
stmt(string_utils_test_1_stmt3, variable_declaration_statement, string_utils_test_1_block1, (statements, 2), range(string_utils_test_1, 1526, 15, 46, 46)).
stmt(string_utils_test_1_stmt4, variable_declaration_statement, string_utils_test_1_block1, (statements, 3), range(string_utils_test_1, 1550, 16, 47, 47)).
stmt(string_utils_test_1_stmt5, for_statement, string_utils_test_1_block1, (statements, 4), range(string_utils_test_1, 1575, 354, 48, 57)).
stmt(string_utils_test_1_stmt6, if_statement, string_utils_test_1_block2, (statements, 0), range(string_utils_test_1, 1635, 284, 49, 56)).
stmt(string_utils_test_1_stmt7, expression_statement, string_utils_test_1_block3, (statements, 0), range(string_utils_test_1, 1691, 31, 50, 50)).
stmt(string_utils_test_1_stmt8, if_statement, string_utils_test_1_block3, (statements, 1), range(string_utils_test_1, 1739, 84, 51, 53)).
stmt(string_utils_test_1_stmt9, expression_statement, string_utils_test_1_block4, (statements, 0), range(string_utils_test_1, 1773, 32, 52, 52)).
stmt(string_utils_test_1_stmt10, if_statement, string_utils_test_1_stmt6, elseStatement, range(string_utils_test_1, 1843, 76, 54, 56)).
stmt(string_utils_test_1_stmt11, expression_statement, string_utils_test_1_block5, (statements, 0), range(string_utils_test_1, 1873, 32, 55, 55)).
stmt(string_utils_test_1_stmt12, for_statement, string_utils_test_1_block1, (statements, 5), range(string_utils_test_1, 1938, 85, 58, 60)).
stmt(string_utils_test_1_stmt13, expression_statement, string_utils_test_1_block6, (statements, 0), range(string_utils_test_1, 1982, 31, 59, 59)).
stmt(string_utils_test_1_stmt14, expression_statement, string_utils_test_1_block1, (statements, 6), range(string_utils_test_1, 2032, 16, 61, 61)).
stmt(string_utils_test_1_stmt15, expression_statement, string_utils_test_1_block1, (statements, 7), range(string_utils_test_1, 2057, 21, 62, 62)).
stmt(string_utils_test_1_stmt16, expression_statement, string_utils_test_1_block1, (statements, 8), range(string_utils_test_1, 2087, 15, 63, 63)).
stmt(string_utils_test_1_stmt17, expression_statement, string_utils_test_1_block1, (statements, 9), range(string_utils_test_1, 2111, 20, 64, 64)).
stmt(string_utils_test_1_stmt18, super_constructor_invocation, string_utils_test_1_block7, (statements, 0), range(string_utils_test_1, 3217, 12, 95, 95)).
stmt(string_utils_test_1_stmt19, expression_statement, string_utils_test_1_block8, (statements, 0), range(string_utils_test_1, 7960, 54, 186, 186)).
stmt(string_utils_test_1_stmt20, expression_statement, string_utils_test_1_block8, (statements, 1), range(string_utils_test_1, 8092, 37, 188, 188)).
stmt(string_utils_test_1_stmt21, expression_statement, string_utils_test_1_block8, (statements, 2), range(string_utils_test_1, 8153, 50, 189, 189)).
stmt(string_utils_test_1_stmt22, expression_statement, string_utils_test_1_block8, (statements, 3), range(string_utils_test_1, 8238, 53, 191, 191)).
stmt(string_utils_test_1_stmt23, expression_statement, string_utils_test_1_block8, (statements, 4), range(string_utils_test_1, 8300, 52, 192, 192)).
stmt(string_utils_test_1_stmt24, expression_statement, string_utils_test_1_block8, (statements, 5), range(string_utils_test_1, 8361, 60, 193, 193)).
stmt(string_utils_test_1_stmt25, expression_statement, string_utils_test_1_block9, (statements, 0), range(string_utils_test_1, 8766, 59, 201, 201)).
stmt(string_utils_test_1_stmt26, expression_statement, string_utils_test_1_block9, (statements, 1), range(string_utils_test_1, 8834, 75, 202, 202)).
stmt(string_utils_test_1_stmt27, expression_statement, string_utils_test_1_block9, (statements, 2), range(string_utils_test_1, 8918, 69, 203, 203)).
stmt(string_utils_test_1_stmt28, expression_statement, string_utils_test_1_block9, (statements, 3), range(string_utils_test_1, 8996, 74, 204, 204)).
stmt(string_utils_test_1_stmt29, expression_statement, string_utils_test_1_block9, (statements, 4), range(string_utils_test_1, 9079, 73, 205, 205)).
stmt(string_utils_test_1_stmt30, expression_statement, string_utils_test_1_block9, (statements, 5), range(string_utils_test_1, 9162, 89, 207, 207)).
stmt(string_utils_test_1_stmt31, expression_statement, string_utils_test_1_block9, (statements, 6), range(string_utils_test_1, 9260, 66, 208, 208)).
stmt(string_utils_test_1_stmt32, expression_statement, string_utils_test_1_block9, (statements, 7), range(string_utils_test_1, 9335, 70, 209, 209)).

%%% Expressions
%string_utils_1 - org.apache.commons.lang3.StringUtils
expr(string_utils_1_expr1, method_invocation, string_utils_1_code8, initializer, range(string_utils_1, 5579, 23, 147, 147), "Pattern.compile(\"\\\\s+\")").
expr(string_utils_1_expr2, method_invocation, string_utils_1_code24, initializer, range(string_utils_1, 27602, 52, 706, 706), "Pattern.compile(\"\\\\p{InCombiningDiacriticalMarks}+\")").
expr(string_utils_1_expr4, method_invocation, string_utils_1_expr3, expression, range(string_utils_1, 28130, 46, 717, 717), "Thread.currentThread().getContextClassLoader()").
expr(string_utils_1_expr3, method_invocation, string_utils_1_code50, initializer, range(string_utils_1, 28130, 102, 717, 718), "Thread.currentThread().getContextClassLoader().loadClass(\"java.text.Normalizer$Form\")").
expr(string_utils_1_expr5, method_invocation, string_utils_1_expr4, expression, range(string_utils_1, 28130, 22, 717, 717), "Thread.currentThread()").
expr(string_utils_1_expr6, assignment, string_utils_1_stmt3, expression, range(string_utils_1, 28259, 70, 719, 719), "java6NormalizerFormNFD=normalizerFormClass.getField(\"NFD\").get(null)").
expr(string_utils_1_expr8, method_invocation, string_utils_1_expr7, expression, range(string_utils_1, 28284, 35, 719, 719), "normalizerFormClass.getField(\"NFD\")").
expr(string_utils_1_expr7, method_invocation, string_utils_1_expr6, right_hand_side, range(string_utils_1, 28284, 45, 719, 719), "normalizerFormClass.getField(\"NFD\").get(null)").
expr(string_utils_1_expr9, method_invocation, string_utils_1_code54, initializer, range(string_utils_1, 28383, 97, 720, 721), "Thread.currentThread().getContextClassLoader().loadClass(\"java.text.Normalizer\")").
expr(string_utils_1_expr10, method_invocation, string_utils_1_expr9, expression, range(string_utils_1, 28383, 46, 720, 720), "Thread.currentThread().getContextClassLoader()").
expr(string_utils_1_expr11, method_invocation, string_utils_1_expr10, expression, range(string_utils_1, 28383, 22, 720, 720), "Thread.currentThread()").
expr(string_utils_1_expr12, assignment, string_utils_1_stmt5, expression, range(string_utils_1, 28507, 136, 722, 723), "java6NormalizeMethod=normalizerClass.getMethod(\"normalize\",new Class[]{CharSequence.class,normalizerFormClass})").
expr(string_utils_1_expr13, method_invocation, string_utils_1_expr12, right_hand_side, range(string_utils_1, 28530, 113, 722, 723), "normalizerClass.getMethod(\"normalize\",new Class[]{CharSequence.class,normalizerFormClass})").
expr(string_utils_1_expr14, array_creation, string_utils_1_expr13, (arguments, 1), range(string_utils_1, 28589, 53, 723, 723), "new Class[]{CharSequence.class,normalizerFormClass}").
expr(string_utils_1_expr15, assignment, string_utils_1_stmt6, expression, range(string_utils_1, 28670, 21, 724, 724), "java6Available=true").
expr(string_utils_1_expr16, method_invocation, string_utils_1_code59, initializer, range(string_utils_1, 29140, 96, 737, 738), "Thread.currentThread().getContextClassLoader().loadClass(\"sun.text.Normalizer\")").
expr(string_utils_1_expr17, method_invocation, string_utils_1_expr16, expression, range(string_utils_1, 29140, 46, 737, 737), "Thread.currentThread().getContextClassLoader()").
expr(string_utils_1_expr18, method_invocation, string_utils_1_expr17, expression, range(string_utils_1, 29140, 22, 737, 737), "Thread.currentThread()").
expr(string_utils_1_expr19, assignment, string_utils_1_stmt9, expression, range(string_utils_1, 29581, 20, 745, 745), "sunAvailable=false").
expr(string_utils_1_expr20, method_invocation, string_utils_1_stmt10, expression, range(string_utils_1, 134306, 20, 3230, 3230), "join(elements,null)").
expr(string_utils_1_expr21, infix_expression, string_utils_1_stmt11, expression, range(string_utils_1, 135294, 13, 3256, 3256), "array == null").
expr(string_utils_1_expr22, method_invocation, string_utils_1_stmt13, expression, range(string_utils_1, 135362, 39, 3260, 3260), "join(array,separator,0,array.length)").
expr(string_utils_1_expr23, infix_expression, string_utils_1_stmt14, expression, range(string_utils_1, 136675, 13, 3290, 3290), "array == null").
expr(string_utils_1_expr24, parenthesized_expression, string_utils_1_code68, initializer, range(string_utils_1, 136751, 23, 3293, 3293), "(endIndex - startIndex)").
expr(string_utils_1_expr25, infix_expression, string_utils_1_expr24, expression, range(string_utils_1, 136752, 21, 3293, 3293), "endIndex - startIndex").
expr(string_utils_1_expr26, infix_expression, string_utils_1_stmt16, expression, range(string_utils_1, 136788, 14, 3294, 3294), "noOfItems <= 0").
expr(string_utils_1_expr27, class_instance_creation, string_utils_1_code70, initializer, range(string_utils_1, 136879, 95, 3298, 3298), "new StringBuilder((array[startIndex] == null ? 16 : array[startIndex].toString().length()) + 1)").
expr(string_utils_1_expr28, infix_expression, string_utils_1_expr27, (arguments, 0), range(string_utils_1, 136897, 76, 3298, 3298), "(array[startIndex] == null ? 16 : array[startIndex].toString().length()) + 1").
expr(string_utils_1_expr29, parenthesized_expression, string_utils_1_expr28, left_operand, range(string_utils_1, 136897, 72, 3298, 3298), "(array[startIndex] == null ? 16 : array[startIndex].toString().length())").
expr(string_utils_1_expr30, conditional_expression, string_utils_1_expr29, expression, range(string_utils_1, 136898, 70, 3298, 3298), "array[startIndex] == null ? 16 : array[startIndex].toString().length()").
expr(string_utils_1_expr31, infix_expression, string_utils_1_expr30, expression, range(string_utils_1, 136898, 25, 3298, 3298), "array[startIndex] == null").
expr(string_utils_1_expr33, array_access, string_utils_1_expr31, left_operand, range(string_utils_1, 136898, 17, 3298, 3298), "array[startIndex]").
expr(string_utils_1_expr32, method_invocation, string_utils_1_expr30, else_expression, range(string_utils_1, 136931, 37, 3298, 3298), "array[startIndex].toString().length()").
expr(string_utils_1_expr34, method_invocation, string_utils_1_expr32, expression, range(string_utils_1, 136931, 28, 3298, 3298), "array[startIndex].toString()").
expr(string_utils_1_expr35, array_access, string_utils_1_expr34, expression, range(string_utils_1, 136931, 17, 3298, 3298), "array[startIndex]").
expr(string_utils_1_expr36, variable_declaration_expression, string_utils_1_stmt19, (initializers, 0), range(string_utils_1, 136990, 18, 3300, 3300), "int i=startIndex").
expr(string_utils_1_expr37, infix_expression, string_utils_1_stmt19, expression, range(string_utils_1, 137010, 12, 3300, 3300), "i < endIndex").
expr(string_utils_1_expr38, postfix_expression, string_utils_1_stmt19, (updaters, 0), range(string_utils_1, 137024, 3, 3300, 3300), "i++").
expr(string_utils_1_expr39, infix_expression, string_utils_1_stmt20, expression, range(string_utils_1, 137047, 14, 3301, 3301), "i > startIndex").
expr(string_utils_1_expr40, method_invocation, string_utils_1_stmt21, expression, range(string_utils_1, 137081, 21, 3302, 3302), "buf.append(separator)").
expr(string_utils_1_expr41, infix_expression, string_utils_1_stmt22, expression, range(string_utils_1, 137134, 16, 3304, 3304), "array[i] != null").
expr(string_utils_1_expr42, array_access, string_utils_1_expr41, left_operand, range(string_utils_1, 137134, 8, 3304, 3304), "array[i]").
expr(string_utils_1_expr43, method_invocation, string_utils_1_stmt23, expression, range(string_utils_1, 137170, 20, 3305, 3305), "buf.append(array[i])").
expr(string_utils_1_expr44, array_access, string_utils_1_expr43, (arguments, 0), range(string_utils_1, 137181, 8, 3305, 3305), "array[i]").
expr(string_utils_1_expr45, method_invocation, string_utils_1_stmt24, expression, range(string_utils_1, 137231, 14, 3308, 3308), "buf.toString()").
expr(string_utils_1_expr46, infix_expression, string_utils_1_stmt25, expression, range(string_utils_1, 138350, 13, 3335, 3335), "array == null").
expr(string_utils_1_expr47, method_invocation, string_utils_1_stmt27, expression, range(string_utils_1, 138417, 39, 3338, 3338), "join(array,separator,0,array.length)").
expr(string_utils_1_expr48, infix_expression, string_utils_1_stmt28, expression, range(string_utils_1, 139867, 13, 3369, 3369), "array == null").
expr(string_utils_1_expr49, infix_expression, string_utils_1_stmt29, expression, range(string_utils_1, 139931, 17, 3372, 3372), "separator == null").
expr(string_utils_1_expr50, assignment, string_utils_1_stmt30, expression, range(string_utils_1, 139964, 17, 3373, 3373), "separator=EMPTY").
expr(string_utils_1_expr51, parenthesized_expression, string_utils_1_code77, initializer, range(string_utils_1, 140186, 23, 3378, 3378), "(endIndex - startIndex)").
expr(string_utils_1_expr52, infix_expression, string_utils_1_expr51, expression, range(string_utils_1, 140187, 21, 3378, 3378), "endIndex - startIndex").
expr(string_utils_1_expr53, infix_expression, string_utils_1_stmt32, expression, range(string_utils_1, 140223, 14, 3379, 3379), "noOfItems <= 0").
expr(string_utils_1_expr54, class_instance_creation, string_utils_1_code79, initializer, range(string_utils_1, 140306, 112, 3383, 3383), "new StringBuilder((array[startIndex] == null ? 16 : array[startIndex].toString().length()) + separator.length())").
expr(string_utils_1_expr55, infix_expression, string_utils_1_expr54, (arguments, 0), range(string_utils_1, 140324, 93, 3383, 3383), "(array[startIndex] == null ? 16 : array[startIndex].toString().length()) + separator.length()").
expr(string_utils_1_expr56, parenthesized_expression, string_utils_1_expr55, left_operand, range(string_utils_1, 140324, 72, 3383, 3383), "(array[startIndex] == null ? 16 : array[startIndex].toString().length())").
expr(string_utils_1_expr57, conditional_expression, string_utils_1_expr56, expression, range(string_utils_1, 140325, 70, 3383, 3383), "array[startIndex] == null ? 16 : array[startIndex].toString().length()").
expr(string_utils_1_expr58, infix_expression, string_utils_1_expr57, expression, range(string_utils_1, 140325, 25, 3383, 3383), "array[startIndex] == null").
expr(string_utils_1_expr60, array_access, string_utils_1_expr58, left_operand, range(string_utils_1, 140325, 17, 3383, 3383), "array[startIndex]").
expr(string_utils_1_expr59, method_invocation, string_utils_1_expr57, else_expression, range(string_utils_1, 140358, 37, 3383, 3383), "array[startIndex].toString().length()").
expr(string_utils_1_expr61, method_invocation, string_utils_1_expr59, expression, range(string_utils_1, 140358, 28, 3383, 3383), "array[startIndex].toString()").
expr(string_utils_1_expr62, array_access, string_utils_1_expr61, expression, range(string_utils_1, 140358, 17, 3383, 3383), "array[startIndex]").
expr(string_utils_1_expr63, method_invocation, string_utils_1_expr55, right_operand, range(string_utils_1, 140399, 18, 3383, 3383), "separator.length()").
expr(string_utils_1_expr64, variable_declaration_expression, string_utils_1_stmt35, (initializers, 0), range(string_utils_1, 140434, 18, 3385, 3385), "int i=startIndex").
expr(string_utils_1_expr65, infix_expression, string_utils_1_stmt35, expression, range(string_utils_1, 140454, 12, 3385, 3385), "i < endIndex").
expr(string_utils_1_expr66, postfix_expression, string_utils_1_stmt35, (updaters, 0), range(string_utils_1, 140468, 3, 3385, 3385), "i++").
expr(string_utils_1_expr67, infix_expression, string_utils_1_stmt36, expression, range(string_utils_1, 140491, 14, 3386, 3386), "i > startIndex").
expr(string_utils_1_expr68, infix_expression, string_utils_1_stmt37, expression, range(string_utils_1, 140578, 16, 3389, 3389), "array[i] != null").
expr(string_utils_1_expr69, array_access, string_utils_1_expr68, left_operand, range(string_utils_1, 140578, 8, 3389, 3389), "array[i]").
expr(string_utils_1_expr70, method_invocation, string_utils_1_stmt38, expression, range(string_utils_1, 140675, 14, 3393, 3393), "buf.toString()").
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
expr(string_utils_test_1_expr1, variable_declaration_expression, string_utils_test_1_stmt5, (initializers, 0), range(string_utils_test_1, 1580, 9, 48, 48), "int i=0").
expr(string_utils_test_1_expr2, infix_expression, string_utils_test_1_stmt5, expression, range(string_utils_test_1, 1591, 23, 48, 48), "i < Character.MAX_VALUE").
expr(string_utils_test_1_expr3, postfix_expression, string_utils_test_1_stmt5, (updaters, 0), range(string_utils_test_1, 1616, 3, 48, 48), "i++").
expr(string_utils_test_1_expr4, method_invocation, string_utils_test_1_stmt6, expression, range(string_utils_test_1, 1639, 32, 49, 49), "Character.isWhitespace((char)i)").
expr(string_utils_test_1_expr5, cast_expression, string_utils_test_1_expr4, (arguments, 0), range(string_utils_test_1, 1662, 8, 49, 49), "(char)i").
expr(string_utils_test_1_expr6, assignment, string_utils_test_1_stmt7, expression, range(string_utils_test_1, 1691, 30, 50, 50), "ws+=String.valueOf((char)i)").
expr(string_utils_test_1_expr7, method_invocation, string_utils_test_1_expr6, right_hand_side, range(string_utils_test_1, 1697, 24, 50, 50), "String.valueOf((char)i)").
expr(string_utils_test_1_expr8, cast_expression, string_utils_test_1_expr7, (arguments, 0), range(string_utils_test_1, 1712, 8, 50, 50), "(char)i").
expr(string_utils_test_1_expr9, infix_expression, string_utils_test_1_stmt8, expression, range(string_utils_test_1, 1743, 6, 51, 51), "i > 32").
expr(string_utils_test_1_expr10, assignment, string_utils_test_1_stmt9, expression, range(string_utils_test_1, 1773, 31, 52, 52), "ntr+=String.valueOf((char)i)").
expr(string_utils_test_1_expr11, method_invocation, string_utils_test_1_expr10, right_hand_side, range(string_utils_test_1, 1780, 24, 52, 52), "String.valueOf((char)i)").
expr(string_utils_test_1_expr12, cast_expression, string_utils_test_1_expr11, (arguments, 0), range(string_utils_test_1, 1795, 8, 52, 52), "(char)i").
expr(string_utils_test_1_expr13, infix_expression, string_utils_test_1_stmt10, expression, range(string_utils_test_1, 1847, 6, 54, 54), "i < 40").
expr(string_utils_test_1_expr14, assignment, string_utils_test_1_stmt11, expression, range(string_utils_test_1, 1873, 31, 55, 55), "nws+=String.valueOf((char)i)").
expr(string_utils_test_1_expr15, method_invocation, string_utils_test_1_expr14, right_hand_side, range(string_utils_test_1, 1880, 24, 55, 55), "String.valueOf((char)i)").
expr(string_utils_test_1_expr16, cast_expression, string_utils_test_1_expr15, (arguments, 0), range(string_utils_test_1, 1895, 8, 55, 55), "(char)i").
expr(string_utils_test_1_expr17, variable_declaration_expression, string_utils_test_1_stmt12, (initializers, 0), range(string_utils_test_1, 1943, 9, 58, 58), "int i=0").
expr(string_utils_test_1_expr18, infix_expression, string_utils_test_1_stmt12, expression, range(string_utils_test_1, 1954, 7, 58, 58), "i <= 32").
expr(string_utils_test_1_expr19, postfix_expression, string_utils_test_1_stmt12, (updaters, 0), range(string_utils_test_1, 1963, 3, 58, 58), "i++").
expr(string_utils_test_1_expr20, assignment, string_utils_test_1_stmt13, expression, range(string_utils_test_1, 1982, 30, 59, 59), "tr+=String.valueOf((char)i)").
expr(string_utils_test_1_expr21, method_invocation, string_utils_test_1_expr20, right_hand_side, range(string_utils_test_1, 1988, 24, 59, 59), "String.valueOf((char)i)").
expr(string_utils_test_1_expr22, cast_expression, string_utils_test_1_expr21, (arguments, 0), range(string_utils_test_1, 2003, 8, 59, 59), "(char)i").
expr(string_utils_test_1_expr23, assignment, string_utils_test_1_stmt14, expression, range(string_utils_test_1, 2032, 15, 61, 61), "WHITESPACE=ws").
expr(string_utils_test_1_expr24, assignment, string_utils_test_1_stmt15, expression, range(string_utils_test_1, 2057, 20, 62, 62), "NON_WHITESPACE=nws").
expr(string_utils_test_1_expr25, assignment, string_utils_test_1_stmt16, expression, range(string_utils_test_1, 2087, 14, 63, 63), "TRIMMABLE=tr").
expr(string_utils_test_1_expr26, assignment, string_utils_test_1_stmt17, expression, range(string_utils_test_1, 2111, 19, 64, 64), "NON_TRIMMABLE=ntr").
expr(string_utils_test_1_expr27, array_initializer, string_utils_test_1_code28, initializer, range(string_utils_test_1, 2186, 23, 67, 67), "{\"foo\",\"bar\",\"baz\"}").
expr(string_utils_test_1_expr28, array_initializer, string_utils_test_1_code36, initializer, range(string_utils_test_1, 2264, 2, 68, 68), "{}").
expr(string_utils_test_1_expr29, array_initializer, string_utils_test_1_code44, initializer, range(string_utils_test_1, 2320, 6, 69, 69), "{null}").
expr(string_utils_test_1_expr30, array_initializer, string_utils_test_1_code52, initializer, range(string_utils_test_1, 2384, 110, 70, 77), "{new Object(){\n  @Override public String toString(){\n    return null;\n  }\n}\n}").
expr(string_utils_test_1_expr31, array_initializer, string_utils_test_1_code60, initializer, range(string_utils_test_1, 2549, 17, 78, 78), "{null,\"\",\"foo\"}").
expr(string_utils_test_1_expr32, array_initializer, string_utils_test_1_code68, initializer, range(string_utils_test_1, 2620, 25, 79, 79), "{\"foo\",Long.valueOf(2L)}").
expr(string_utils_test_1_expr33, method_invocation, string_utils_test_1_expr32, (expressions, 1), range(string_utils_test_1, 2628, 16, 79, 79), "Long.valueOf(2L)").
expr(string_utils_test_1_expr34, super_constructor_invocation, string_utils_test_1_block7, (statements, 0), range(string_utils_test_1, 3217, 12, 95, 95), "super(name);").
expr(string_utils_test_1_expr35, method_invocation, string_utils_test_1_stmt19, expression, range(string_utils_test_1, 7960, 53, 186, 186), "assertEquals(null,StringUtils.join((Object[])null))").
expr(string_utils_test_1_expr36, method_invocation, string_utils_test_1_expr35, (arguments, 1), range(string_utils_test_1, 7979, 33, 186, 186), "StringUtils.join((Object[])null)").
expr(string_utils_test_1_expr37, cast_expression, string_utils_test_1_expr36, (arguments, 0), range(string_utils_test_1, 7996, 15, 186, 186), "(Object[])null").
expr(string_utils_test_1_expr38, method_invocation, string_utils_test_1_stmt20, expression, range(string_utils_test_1, 8092, 36, 188, 188), "assertEquals(\"\",StringUtils.join())").
expr(string_utils_test_1_expr39, method_invocation, string_utils_test_1_expr38, (arguments, 1), range(string_utils_test_1, 8109, 18, 188, 188), "StringUtils.join()").
expr(string_utils_test_1_expr40, method_invocation, string_utils_test_1_stmt21, expression, range(string_utils_test_1, 8153, 49, 189, 189), "assertEquals(\"\",StringUtils.join((Object)null))").
expr(string_utils_test_1_expr41, method_invocation, string_utils_test_1_expr40, (arguments, 1), range(string_utils_test_1, 8170, 31, 189, 189), "StringUtils.join((Object)null)").
expr(string_utils_test_1_expr42, cast_expression, string_utils_test_1_expr41, (arguments, 0), range(string_utils_test_1, 8187, 13, 189, 189), "(Object)null").
expr(string_utils_test_1_expr43, method_invocation, string_utils_test_1_stmt22, expression, range(string_utils_test_1, 8238, 52, 191, 191), "assertEquals(\"\",StringUtils.join(EMPTY_ARRAY_LIST))").
expr(string_utils_test_1_expr44, method_invocation, string_utils_test_1_expr43, (arguments, 1), range(string_utils_test_1, 8255, 34, 191, 191), "StringUtils.join(EMPTY_ARRAY_LIST)").
expr(string_utils_test_1_expr45, method_invocation, string_utils_test_1_stmt23, expression, range(string_utils_test_1, 8300, 51, 192, 192), "assertEquals(\"\",StringUtils.join(NULL_ARRAY_LIST))").
expr(string_utils_test_1_expr46, method_invocation, string_utils_test_1_expr45, (arguments, 1), range(string_utils_test_1, 8317, 33, 192, 192), "StringUtils.join(NULL_ARRAY_LIST)").
expr(string_utils_test_1_expr47, method_invocation, string_utils_test_1_stmt24, expression, range(string_utils_test_1, 8361, 59, 193, 193), "assertEquals(\"null\",StringUtils.join(NULL_TO_STRING_LIST))").
expr(string_utils_test_1_expr48, method_invocation, string_utils_test_1_expr47, (arguments, 1), range(string_utils_test_1, 8382, 37, 193, 193), "StringUtils.join(NULL_TO_STRING_LIST)").
expr(string_utils_test_1_expr49, method_invocation, string_utils_test_1_stmt25, expression, range(string_utils_test_1, 8766, 58, 201, 201), "assertEquals(null,StringUtils.join((Object[])null,','))").
expr(string_utils_test_1_expr50, method_invocation, string_utils_test_1_expr49, (arguments, 1), range(string_utils_test_1, 8785, 38, 201, 201), "StringUtils.join((Object[])null,',')").
expr(string_utils_test_1_expr51, cast_expression, string_utils_test_1_expr50, (arguments, 0), range(string_utils_test_1, 8802, 15, 201, 201), "(Object[])null").
expr(string_utils_test_1_expr52, method_invocation, string_utils_test_1_stmt26, expression, range(string_utils_test_1, 8834, 74, 202, 202), "assertEquals(TEXT_LIST_CHAR,StringUtils.join(ARRAY_LIST,SEPARATOR_CHAR))").
expr(string_utils_test_1_expr53, method_invocation, string_utils_test_1_expr52, (arguments, 1), range(string_utils_test_1, 8863, 44, 202, 202), "StringUtils.join(ARRAY_LIST,SEPARATOR_CHAR)").
expr(string_utils_test_1_expr54, method_invocation, string_utils_test_1_stmt27, expression, range(string_utils_test_1, 8918, 68, 203, 203), "assertEquals(\"\",StringUtils.join(EMPTY_ARRAY_LIST,SEPARATOR_CHAR))").
expr(string_utils_test_1_expr55, method_invocation, string_utils_test_1_expr54, (arguments, 1), range(string_utils_test_1, 8935, 50, 203, 203), "StringUtils.join(EMPTY_ARRAY_LIST,SEPARATOR_CHAR)").
expr(string_utils_test_1_expr56, method_invocation, string_utils_test_1_stmt28, expression, range(string_utils_test_1, 8996, 73, 204, 204), "assertEquals(\";;foo\",StringUtils.join(MIXED_ARRAY_LIST,SEPARATOR_CHAR))").
expr(string_utils_test_1_expr57, method_invocation, string_utils_test_1_expr56, (arguments, 1), range(string_utils_test_1, 9018, 50, 204, 204), "StringUtils.join(MIXED_ARRAY_LIST,SEPARATOR_CHAR)").
expr(string_utils_test_1_expr58, method_invocation, string_utils_test_1_stmt29, expression, range(string_utils_test_1, 9079, 72, 205, 205), "assertEquals(\"foo;2\",StringUtils.join(MIXED_TYPE_LIST,SEPARATOR_CHAR))").
expr(string_utils_test_1_expr59, method_invocation, string_utils_test_1_expr58, (arguments, 1), range(string_utils_test_1, 9101, 49, 205, 205), "StringUtils.join(MIXED_TYPE_LIST,SEPARATOR_CHAR)").
expr(string_utils_test_1_expr60, method_invocation, string_utils_test_1_stmt30, expression, range(string_utils_test_1, 9162, 88, 207, 207), "assertEquals(\"/\",StringUtils.join(MIXED_ARRAY_LIST,'/',0,MIXED_ARRAY_LIST.length - 1))").
expr(string_utils_test_1_expr61, method_invocation, string_utils_test_1_expr60, (arguments, 1), range(string_utils_test_1, 9180, 69, 207, 207), "StringUtils.join(MIXED_ARRAY_LIST,'/',0,MIXED_ARRAY_LIST.length - 1)").
expr(string_utils_test_1_expr62, infix_expression, string_utils_test_1_expr61, (arguments, 3), range(string_utils_test_1, 9223, 25, 207, 207), "MIXED_ARRAY_LIST.length - 1").
expr(string_utils_test_1_expr63, method_invocation, string_utils_test_1_stmt31, expression, range(string_utils_test_1, 9260, 65, 208, 208), "assertEquals(\"foo\",StringUtils.join(MIXED_TYPE_LIST,'/',0,1))").
expr(string_utils_test_1_expr64, method_invocation, string_utils_test_1_expr63, (arguments, 1), range(string_utils_test_1, 9280, 44, 208, 208), "StringUtils.join(MIXED_TYPE_LIST,'/',0,1)").
expr(string_utils_test_1_expr65, method_invocation, string_utils_test_1_stmt32, expression, range(string_utils_test_1, 9335, 69, 209, 209), "assertEquals(\"null\",StringUtils.join(NULL_TO_STRING_LIST,'/',0,1))").
expr(string_utils_test_1_expr66, method_invocation, string_utils_test_1_expr65, (arguments, 1), range(string_utils_test_1, 9356, 47, 209, 209), "StringUtils.join(NULL_TO_STRING_LIST,'/',0,1)").

%%% Names
%string_utils_1 - org.apache.commons.lang3.StringUtils
name(f_whitespace_block_1, simple_name, string_utils_1_code8, name, range(string_utils_1, 5560, 16, 147, 147), 'WHITESPACE_BLOCK').
name(t_pattern_1, simple_name, string_utils_1_expr1, expression, range(string_utils_1, 5579, 7, 147, 147), 'Pattern').
name(m_compile_1, simple_name, string_utils_1_expr1, name, range(string_utils_1, 5587, 7, 147, 147), 'compile').
name(f_sun_available_24, simple_name, string_utils_1_code13, name, range(string_utils_1, 27480, 12, 704, 704), 'sunAvailable').
name(f_sun_decompose_method_25, simple_name, string_utils_1_code18, name, range(string_utils_1, 27529, 18, 705, 705), 'sunDecomposeMethod').
name(f_sun_pattern_26, simple_name, string_utils_1_code24, name, range(string_utils_1, 27589, 10, 706, 706), 'sunPattern').
name(t_pattern_1, simple_name, string_utils_1_expr2, expression, range(string_utils_1, 27602, 7, 706, 706), 'Pattern').
name(m_compile_1, simple_name, string_utils_1_expr2, name, range(string_utils_1, 27610, 7, 706, 706), 'compile').
name(f_java_6available_27, simple_name, string_utils_1_code29, name, range(string_utils_1, 27711, 14, 708, 708), 'java6Available').
name(f_java_6normalize_method_28, simple_name, string_utils_1_code34, name, range(string_utils_1, 27762, 20, 709, 709), 'java6NormalizeMethod').
name(f_java_6normalizer_form_nfd_29, simple_name, string_utils_1_code39, name, range(string_utils_1, 27818, 22, 710, 710), 'java6NormalizerFormNFD').
name(f_java_6pattern_30, simple_name, string_utils_1_code45, name, range(string_utils_1, 27882, 12, 711, 711), 'java6Pattern').
name(f_sun_pattern_26, simple_name, string_utils_1_code45, initializer, range(string_utils_1, 27897, 10, 711, 711), 'sunPattern').
name(v_normalizer_form_class_31, simple_name, string_utils_1_code50, name, range(string_utils_1, 28108, 19, 717, 717), 'normalizerFormClass').
name(t_thread_2, simple_name, string_utils_1_expr5, expression, range(string_utils_1, 28130, 6, 717, 717), 'Thread').
name(m_current_thread_23, simple_name, string_utils_1_expr5, name, range(string_utils_1, 28137, 13, 717, 717), 'currentThread').
name(m_get_context_class_loader_22, simple_name, string_utils_1_expr4, name, range(string_utils_1, 28153, 21, 717, 717), 'getContextClassLoader').
name(f_java_6normalizer_form_nfd_29, simple_name, string_utils_1_expr6, left_hand_side, range(string_utils_1, 28259, 22, 719, 719), 'java6NormalizerFormNFD').
name(v_normalizer_form_class_31, simple_name, string_utils_1_expr8, expression, range(string_utils_1, 28284, 19, 719, 719), 'normalizerFormClass').
name(m_get_field_25, simple_name, string_utils_1_expr8, name, range(string_utils_1, 28304, 8, 719, 719), 'getField').
name(m_get_24, simple_name, string_utils_1_expr7, name, range(string_utils_1, 28320, 3, 719, 719), 'get').
name(v_normalizer_class_32, simple_name, string_utils_1_code54, name, range(string_utils_1, 28365, 15, 720, 720), 'normalizerClass').
name(t_thread_2, simple_name, string_utils_1_expr11, expression, range(string_utils_1, 28383, 6, 720, 720), 'Thread').
name(m_current_thread_23, simple_name, string_utils_1_expr11, name, range(string_utils_1, 28390, 13, 720, 720), 'currentThread').
name(m_get_context_class_loader_22, simple_name, string_utils_1_expr10, name, range(string_utils_1, 28406, 21, 720, 720), 'getContextClassLoader').
name(f_java_6normalize_method_28, simple_name, string_utils_1_expr12, left_hand_side, range(string_utils_1, 28507, 20, 722, 722), 'java6NormalizeMethod').
name(v_normalizer_class_32, simple_name, string_utils_1_expr13, expression, range(string_utils_1, 28530, 15, 722, 722), 'normalizerClass').
name(m_get_method_26, simple_name, string_utils_1_expr13, name, range(string_utils_1, 28546, 9, 722, 722), 'getMethod').
name(f_java_6available_27, simple_name, string_utils_1_expr15, left_hand_side, range(string_utils_1, 28670, 14, 724, 724), 'java6Available').
name(v_normalizer_class_33, simple_name, string_utils_1_code59, name, range(string_utils_1, 29122, 15, 737, 737), 'normalizerClass').
name(t_thread_2, simple_name, string_utils_1_expr18, expression, range(string_utils_1, 29140, 6, 737, 737), 'Thread').
name(m_current_thread_23, simple_name, string_utils_1_expr18, name, range(string_utils_1, 29147, 13, 737, 737), 'currentThread').
name(m_get_context_class_loader_22, simple_name, string_utils_1_expr17, name, range(string_utils_1, 29163, 21, 737, 737), 'getContextClassLoader').
name(v_e_34, simple_name, string_utils_1_code62, name, range(string_utils_1, 29564, 1, 744, 744), 'e').
name(f_sun_available_24, simple_name, string_utils_1_expr19, left_hand_side, range(string_utils_1, 29581, 12, 745, 745), 'sunAvailable').
name(m_join_91, simple_name, string_utils_1_expr20, name, range(string_utils_1, 134306, 4, 3230, 3230), 'join').
name(p_elements_179, simple_name, string_utils_1_expr20, (arguments, 0), range(string_utils_1, 134311, 8, 3230, 3230), 'elements').
name(p_array_180, simple_name, string_utils_1_expr21, left_operand, range(string_utils_1, 135294, 5, 3256, 3256), 'array').
name(m_join_93, simple_name, string_utils_1_expr22, name, range(string_utils_1, 135362, 4, 3260, 3260), 'join').
name(p_array_180, simple_name, string_utils_1_expr22, (arguments, 0), range(string_utils_1, 135367, 5, 3260, 3260), 'array').
name(p_separator_181, simple_name, string_utils_1_expr22, (arguments, 1), range(string_utils_1, 135374, 9, 3260, 3260), 'separator').
name(p_array_180, simple_name, q_length_1, qualifier, range(string_utils_1, 135388, 5, 3260, 3260), 'array').
name(q_length_1, qualified_name, string_utils_1_expr22, (arguments, 3), range(string_utils_1, 135388, 12, 3260, 3260), 'array.length').
name(p_array_182, simple_name, string_utils_1_expr23, left_operand, range(string_utils_1, 136675, 5, 3290, 3290), 'array').
name(v_no_of_items_186, simple_name, string_utils_1_code68, name, range(string_utils_1, 136739, 9, 3293, 3293), 'noOfItems').
name(p_end_index_185, simple_name, string_utils_1_expr25, left_operand, range(string_utils_1, 136752, 8, 3293, 3293), 'endIndex').
name(p_start_index_184, simple_name, string_utils_1_expr25, right_operand, range(string_utils_1, 136763, 10, 3293, 3293), 'startIndex').
name(v_no_of_items_186, simple_name, string_utils_1_expr26, left_operand, range(string_utils_1, 136788, 9, 3294, 3294), 'noOfItems').
name(f_empty_187, simple_name, string_utils_1_stmt17, expression, range(string_utils_1, 136825, 5, 3295, 3295), 'EMPTY').
name(v_buf_188, simple_name, string_utils_1_code70, name, range(string_utils_1, 136873, 3, 3298, 3298), 'buf').
name(p_array_182, simple_name, string_utils_1_expr33, array, range(string_utils_1, 136898, 5, 3298, 3298), 'array').
name(p_start_index_184, simple_name, string_utils_1_expr33, index, range(string_utils_1, 136904, 10, 3298, 3298), 'startIndex').
name(p_array_182, simple_name, string_utils_1_expr35, array, range(string_utils_1, 136931, 5, 3298, 3298), 'array').
name(p_start_index_184, simple_name, string_utils_1_expr35, index, range(string_utils_1, 136937, 10, 3298, 3298), 'startIndex').
name(m_to_string_96, simple_name, string_utils_1_expr34, name, range(string_utils_1, 136949, 8, 3298, 3298), 'toString').
name(m_length_95, simple_name, string_utils_1_expr32, name, range(string_utils_1, 136960, 6, 3298, 3298), 'length').
name(v_i_189, simple_name, string_utils_1_code73, name, range(string_utils_1, 136994, 1, 3300, 3300), 'i').
name(p_start_index_184, simple_name, string_utils_1_code73, initializer, range(string_utils_1, 136998, 10, 3300, 3300), 'startIndex').
name(v_i_189, simple_name, string_utils_1_expr37, left_operand, range(string_utils_1, 137010, 1, 3300, 3300), 'i').
name(p_end_index_185, simple_name, string_utils_1_expr37, right_operand, range(string_utils_1, 137014, 8, 3300, 3300), 'endIndex').
name(v_i_189, simple_name, string_utils_1_expr38, operand, range(string_utils_1, 137024, 1, 3300, 3300), 'i').
name(v_i_189, simple_name, string_utils_1_expr39, left_operand, range(string_utils_1, 137047, 1, 3301, 3301), 'i').
name(p_start_index_184, simple_name, string_utils_1_expr39, right_operand, range(string_utils_1, 137051, 10, 3301, 3301), 'startIndex').
name(v_buf_188, simple_name, string_utils_1_expr40, expression, range(string_utils_1, 137081, 3, 3302, 3302), 'buf').
name(m_append_97, simple_name, string_utils_1_expr40, name, range(string_utils_1, 137085, 6, 3302, 3302), 'append').
name(p_separator_183, simple_name, string_utils_1_expr40, (arguments, 0), range(string_utils_1, 137092, 9, 3302, 3302), 'separator').
name(p_array_182, simple_name, string_utils_1_expr42, array, range(string_utils_1, 137134, 5, 3304, 3304), 'array').
name(v_i_189, simple_name, string_utils_1_expr42, index, range(string_utils_1, 137140, 1, 3304, 3304), 'i').
name(v_buf_188, simple_name, string_utils_1_expr43, expression, range(string_utils_1, 137170, 3, 3305, 3305), 'buf').
name(m_append_98, simple_name, string_utils_1_expr43, name, range(string_utils_1, 137174, 6, 3305, 3305), 'append').
name(p_array_182, simple_name, string_utils_1_expr44, array, range(string_utils_1, 137181, 5, 3305, 3305), 'array').
name(v_i_189, simple_name, string_utils_1_expr44, index, range(string_utils_1, 137187, 1, 3305, 3305), 'i').
name(v_buf_188, simple_name, string_utils_1_expr45, expression, range(string_utils_1, 137231, 3, 3308, 3308), 'buf').
name(m_to_string_99, simple_name, string_utils_1_expr45, name, range(string_utils_1, 137235, 8, 3308, 3308), 'toString').
name(p_array_190, simple_name, string_utils_1_expr46, left_operand, range(string_utils_1, 138350, 5, 3335, 3335), 'array').
name(m_join_100, simple_name, string_utils_1_expr47, name, range(string_utils_1, 138417, 4, 3338, 3338), 'join').
name(p_array_190, simple_name, string_utils_1_expr47, (arguments, 0), range(string_utils_1, 138422, 5, 3338, 3338), 'array').
name(p_separator_191, simple_name, string_utils_1_expr47, (arguments, 1), range(string_utils_1, 138429, 9, 3338, 3338), 'separator').
name(p_array_190, simple_name, q_length_2, qualifier, range(string_utils_1, 138443, 5, 3338, 3338), 'array').
name(q_length_2, qualified_name, string_utils_1_expr47, (arguments, 3), range(string_utils_1, 138443, 12, 3338, 3338), 'array.length').
name(p_array_192, simple_name, string_utils_1_expr48, left_operand, range(string_utils_1, 139867, 5, 3369, 3369), 'array').
name(p_separator_193, simple_name, string_utils_1_expr49, left_operand, range(string_utils_1, 139931, 9, 3372, 3372), 'separator').
name(p_separator_193, simple_name, string_utils_1_expr50, left_hand_side, range(string_utils_1, 139964, 9, 3373, 3373), 'separator').
name(f_empty_187, simple_name, string_utils_1_expr50, right_hand_side, range(string_utils_1, 139976, 5, 3373, 3373), 'EMPTY').
name(v_no_of_items_196, simple_name, string_utils_1_code77, name, range(string_utils_1, 140174, 9, 3378, 3378), 'noOfItems').
name(p_end_index_195, simple_name, string_utils_1_expr52, left_operand, range(string_utils_1, 140187, 8, 3378, 3378), 'endIndex').
name(p_start_index_194, simple_name, string_utils_1_expr52, right_operand, range(string_utils_1, 140198, 10, 3378, 3378), 'startIndex').
name(v_no_of_items_196, simple_name, string_utils_1_expr53, left_operand, range(string_utils_1, 140223, 9, 3379, 3379), 'noOfItems').
name(f_empty_187, simple_name, string_utils_1_stmt33, expression, range(string_utils_1, 140260, 5, 3380, 3380), 'EMPTY').
name(v_buf_197, simple_name, string_utils_1_code79, name, range(string_utils_1, 140300, 3, 3383, 3383), 'buf').
name(p_array_192, simple_name, string_utils_1_expr60, array, range(string_utils_1, 140325, 5, 3383, 3383), 'array').
name(p_start_index_194, simple_name, string_utils_1_expr60, index, range(string_utils_1, 140331, 10, 3383, 3383), 'startIndex').
name(p_array_192, simple_name, string_utils_1_expr62, array, range(string_utils_1, 140358, 5, 3383, 3383), 'array').
name(p_start_index_194, simple_name, string_utils_1_expr62, index, range(string_utils_1, 140364, 10, 3383, 3383), 'startIndex').
name(m_to_string_96, simple_name, string_utils_1_expr61, name, range(string_utils_1, 140376, 8, 3383, 3383), 'toString').
name(m_length_95, simple_name, string_utils_1_expr59, name, range(string_utils_1, 140387, 6, 3383, 3383), 'length').
name(p_separator_193, simple_name, string_utils_1_expr63, expression, range(string_utils_1, 140399, 9, 3383, 3383), 'separator').
name(m_length_95, simple_name, string_utils_1_expr63, name, range(string_utils_1, 140409, 6, 3383, 3383), 'length').
name(v_i_198, simple_name, string_utils_1_code82, name, range(string_utils_1, 140438, 1, 3385, 3385), 'i').
name(p_start_index_194, simple_name, string_utils_1_code82, initializer, range(string_utils_1, 140442, 10, 3385, 3385), 'startIndex').
name(v_i_198, simple_name, string_utils_1_expr65, left_operand, range(string_utils_1, 140454, 1, 3385, 3385), 'i').
name(p_end_index_195, simple_name, string_utils_1_expr65, right_operand, range(string_utils_1, 140458, 8, 3385, 3385), 'endIndex').
name(v_i_198, simple_name, string_utils_1_expr66, operand, range(string_utils_1, 140468, 1, 3385, 3385), 'i').
name(v_i_198, simple_name, string_utils_1_expr67, left_operand, range(string_utils_1, 140491, 1, 3386, 3386), 'i').
name(p_start_index_194, simple_name, string_utils_1_expr67, right_operand, range(string_utils_1, 140495, 10, 3386, 3386), 'startIndex').
name(p_array_192, simple_name, string_utils_1_expr69, array, range(string_utils_1, 140578, 5, 3389, 3389), 'array').
name(v_i_198, simple_name, string_utils_1_expr69, index, range(string_utils_1, 140584, 1, 3389, 3389), 'i').
name(v_buf_197, simple_name, string_utils_1_expr70, expression, range(string_utils_1, 140675, 3, 3393, 3393), 'buf').
name(m_to_string_99, simple_name, string_utils_1_expr70, name, range(string_utils_1, 140679, 8, 3393, 3393), 'toString').
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
name(v_ws_356, simple_name, string_utils_test_1_code5, name, range(string_utils_test_1, 1484, 2, 44, 44), 'ws').
name(v_nws_357, simple_name, string_utils_test_1_code7, name, range(string_utils_test_1, 1508, 3, 45, 45), 'nws').
name(v_tr_358, simple_name, string_utils_test_1_code9, name, range(string_utils_test_1, 1533, 2, 46, 46), 'tr').
name(v_ntr_359, simple_name, string_utils_test_1_code11, name, range(string_utils_test_1, 1557, 3, 47, 47), 'ntr').
name(v_i_360, simple_name, string_utils_test_1_code13, name, range(string_utils_test_1, 1584, 1, 48, 48), 'i').
name(v_i_360, simple_name, string_utils_test_1_expr2, left_operand, range(string_utils_test_1, 1591, 1, 48, 48), 'i').
name(t_character_3, simple_name, q_max_value_3, qualifier, range(string_utils_test_1, 1595, 9, 48, 48), 'Character').
name(q_max_value_3, qualified_name, string_utils_test_1_expr2, right_operand, range(string_utils_test_1, 1595, 19, 48, 48), 'Character.MAX_VALUE').
name(v_i_360, simple_name, string_utils_test_1_expr3, operand, range(string_utils_test_1, 1616, 1, 48, 48), 'i').
name(t_character_3, simple_name, string_utils_test_1_expr4, expression, range(string_utils_test_1, 1639, 9, 49, 49), 'Character').
name(m_is_whitespace_179, simple_name, string_utils_test_1_expr4, name, range(string_utils_test_1, 1649, 12, 49, 49), 'isWhitespace').
name(v_i_360, simple_name, string_utils_test_1_expr5, expression, range(string_utils_test_1, 1669, 1, 49, 49), 'i').
name(v_ws_356, simple_name, string_utils_test_1_expr6, left_hand_side, range(string_utils_test_1, 1691, 2, 50, 50), 'ws').
name(t_string_4, simple_name, string_utils_test_1_expr7, expression, range(string_utils_test_1, 1697, 6, 50, 50), 'String').
name(m_value_of_180, simple_name, string_utils_test_1_expr7, name, range(string_utils_test_1, 1704, 7, 50, 50), 'valueOf').
name(v_i_360, simple_name, string_utils_test_1_expr8, expression, range(string_utils_test_1, 1719, 1, 50, 50), 'i').
name(v_i_360, simple_name, string_utils_test_1_expr9, left_operand, range(string_utils_test_1, 1743, 1, 51, 51), 'i').
name(v_ntr_359, simple_name, string_utils_test_1_expr10, left_hand_side, range(string_utils_test_1, 1773, 3, 52, 52), 'ntr').
name(t_string_4, simple_name, string_utils_test_1_expr11, expression, range(string_utils_test_1, 1780, 6, 52, 52), 'String').
name(m_value_of_180, simple_name, string_utils_test_1_expr11, name, range(string_utils_test_1, 1787, 7, 52, 52), 'valueOf').
name(v_i_360, simple_name, string_utils_test_1_expr12, expression, range(string_utils_test_1, 1802, 1, 52, 52), 'i').
name(v_i_360, simple_name, string_utils_test_1_expr13, left_operand, range(string_utils_test_1, 1847, 1, 54, 54), 'i').
name(v_nws_357, simple_name, string_utils_test_1_expr14, left_hand_side, range(string_utils_test_1, 1873, 3, 55, 55), 'nws').
name(t_string_4, simple_name, string_utils_test_1_expr15, expression, range(string_utils_test_1, 1880, 6, 55, 55), 'String').
name(m_value_of_180, simple_name, string_utils_test_1_expr15, name, range(string_utils_test_1, 1887, 7, 55, 55), 'valueOf').
name(v_i_360, simple_name, string_utils_test_1_expr16, expression, range(string_utils_test_1, 1902, 1, 55, 55), 'i').
name(v_i_361, simple_name, string_utils_test_1_code19, name, range(string_utils_test_1, 1947, 1, 58, 58), 'i').
name(v_i_361, simple_name, string_utils_test_1_expr18, left_operand, range(string_utils_test_1, 1954, 1, 58, 58), 'i').
name(v_i_361, simple_name, string_utils_test_1_expr19, operand, range(string_utils_test_1, 1963, 1, 58, 58), 'i').
name(v_tr_358, simple_name, string_utils_test_1_expr20, left_hand_side, range(string_utils_test_1, 1982, 2, 59, 59), 'tr').
name(t_string_4, simple_name, string_utils_test_1_expr21, expression, range(string_utils_test_1, 1988, 6, 59, 59), 'String').
name(m_value_of_180, simple_name, string_utils_test_1_expr21, name, range(string_utils_test_1, 1995, 7, 59, 59), 'valueOf').
name(v_i_361, simple_name, string_utils_test_1_expr22, expression, range(string_utils_test_1, 2010, 1, 59, 59), 'i').
name(f_whitespace_362, simple_name, string_utils_test_1_expr23, left_hand_side, range(string_utils_test_1, 2032, 10, 61, 61), 'WHITESPACE').
name(v_ws_356, simple_name, string_utils_test_1_expr23, right_hand_side, range(string_utils_test_1, 2045, 2, 61, 61), 'ws').
name(f_non_whitespace_363, simple_name, string_utils_test_1_expr24, left_hand_side, range(string_utils_test_1, 2057, 14, 62, 62), 'NON_WHITESPACE').
name(v_nws_357, simple_name, string_utils_test_1_expr24, right_hand_side, range(string_utils_test_1, 2074, 3, 62, 62), 'nws').
name(f_trimmable_364, simple_name, string_utils_test_1_expr25, left_hand_side, range(string_utils_test_1, 2087, 9, 63, 63), 'TRIMMABLE').
name(v_tr_358, simple_name, string_utils_test_1_expr25, right_hand_side, range(string_utils_test_1, 2099, 2, 63, 63), 'tr').
name(f_non_trimmable_365, simple_name, string_utils_test_1_expr26, left_hand_side, range(string_utils_test_1, 2111, 13, 64, 64), 'NON_TRIMMABLE').
name(v_ntr_359, simple_name, string_utils_test_1_expr26, right_hand_side, range(string_utils_test_1, 2127, 3, 64, 64), 'ntr').
name(f_array_list_366, simple_name, string_utils_test_1_code28, name, range(string_utils_test_1, 2173, 10, 67, 67), 'ARRAY_LIST').
name(f_empty_array_list_367, simple_name, string_utils_test_1_code36, name, range(string_utils_test_1, 2245, 16, 68, 68), 'EMPTY_ARRAY_LIST').
name(f_null_array_list_368, simple_name, string_utils_test_1_code44, name, range(string_utils_test_1, 2302, 15, 69, 69), 'NULL_ARRAY_LIST').
name(f_null_to_string_list_369, simple_name, string_utils_test_1_code52, name, range(string_utils_test_1, 2362, 19, 70, 70), 'NULL_TO_STRING_LIST').
name(f_mixed_array_list_370, simple_name, string_utils_test_1_code60, name, range(string_utils_test_1, 2530, 16, 78, 78), 'MIXED_ARRAY_LIST').
name(f_mixed_type_list_371, simple_name, string_utils_test_1_code68, name, range(string_utils_test_1, 2602, 15, 79, 79), 'MIXED_TYPE_LIST').
name(t_long_5, simple_name, string_utils_test_1_expr33, expression, range(string_utils_test_1, 2628, 4, 79, 79), 'Long').
name(m_value_of_182, simple_name, string_utils_test_1_expr33, name, range(string_utils_test_1, 2633, 7, 79, 79), 'valueOf').
name(p_name_372, simple_name, string_utils_test_1_stmt18, (arguments, 0), range(string_utils_test_1, 3223, 4, 95, 95), 'name').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr35, name, range(string_utils_test_1, 7960, 12, 186, 186), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr36, expression, range(string_utils_test_1, 7979, 11, 186, 186), 'StringUtils').
name(m_join_90, simple_name, string_utils_test_1_expr36, name, range(string_utils_test_1, 7991, 4, 186, 186), 'join').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr38, name, range(string_utils_test_1, 8092, 12, 188, 188), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr39, expression, range(string_utils_test_1, 8109, 11, 188, 188), 'StringUtils').
name(m_join_90, simple_name, string_utils_test_1_expr39, name, range(string_utils_test_1, 8121, 4, 188, 188), 'join').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr40, name, range(string_utils_test_1, 8153, 12, 189, 189), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr41, expression, range(string_utils_test_1, 8170, 11, 189, 189), 'StringUtils').
name(m_join_90, simple_name, string_utils_test_1_expr41, name, range(string_utils_test_1, 8182, 4, 189, 189), 'join').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr43, name, range(string_utils_test_1, 8238, 12, 191, 191), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr44, expression, range(string_utils_test_1, 8255, 11, 191, 191), 'StringUtils').
name(m_join_90, simple_name, string_utils_test_1_expr44, name, range(string_utils_test_1, 8267, 4, 191, 191), 'join').
name(f_empty_array_list_367, simple_name, string_utils_test_1_expr44, (arguments, 0), range(string_utils_test_1, 8272, 16, 191, 191), 'EMPTY_ARRAY_LIST').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr45, name, range(string_utils_test_1, 8300, 12, 192, 192), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr46, expression, range(string_utils_test_1, 8317, 11, 192, 192), 'StringUtils').
name(m_join_90, simple_name, string_utils_test_1_expr46, name, range(string_utils_test_1, 8329, 4, 192, 192), 'join').
name(f_null_array_list_368, simple_name, string_utils_test_1_expr46, (arguments, 0), range(string_utils_test_1, 8334, 15, 192, 192), 'NULL_ARRAY_LIST').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr47, name, range(string_utils_test_1, 8361, 12, 193, 193), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr48, expression, range(string_utils_test_1, 8382, 11, 193, 193), 'StringUtils').
name(m_join_90, simple_name, string_utils_test_1_expr48, name, range(string_utils_test_1, 8394, 4, 193, 193), 'join').
name(f_null_to_string_list_369, simple_name, string_utils_test_1_expr48, (arguments, 0), range(string_utils_test_1, 8399, 19, 193, 193), 'NULL_TO_STRING_LIST').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr49, name, range(string_utils_test_1, 8766, 12, 201, 201), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr50, expression, range(string_utils_test_1, 8785, 11, 201, 201), 'StringUtils').
name(m_join_92, simple_name, string_utils_test_1_expr50, name, range(string_utils_test_1, 8797, 4, 201, 201), 'join').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr52, name, range(string_utils_test_1, 8834, 12, 202, 202), 'assertEquals').
name(f_text_list_char_373, simple_name, string_utils_test_1_expr52, (arguments, 0), range(string_utils_test_1, 8847, 14, 202, 202), 'TEXT_LIST_CHAR').
name(t_string_utils_6, simple_name, string_utils_test_1_expr53, expression, range(string_utils_test_1, 8863, 11, 202, 202), 'StringUtils').
name(m_join_92, simple_name, string_utils_test_1_expr53, name, range(string_utils_test_1, 8875, 4, 202, 202), 'join').
name(f_array_list_366, simple_name, string_utils_test_1_expr53, (arguments, 0), range(string_utils_test_1, 8880, 10, 202, 202), 'ARRAY_LIST').
name(f_separator_char_374, simple_name, string_utils_test_1_expr53, (arguments, 1), range(string_utils_test_1, 8892, 14, 202, 202), 'SEPARATOR_CHAR').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr54, name, range(string_utils_test_1, 8918, 12, 203, 203), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr55, expression, range(string_utils_test_1, 8935, 11, 203, 203), 'StringUtils').
name(m_join_92, simple_name, string_utils_test_1_expr55, name, range(string_utils_test_1, 8947, 4, 203, 203), 'join').
name(f_empty_array_list_367, simple_name, string_utils_test_1_expr55, (arguments, 0), range(string_utils_test_1, 8952, 16, 203, 203), 'EMPTY_ARRAY_LIST').
name(f_separator_char_374, simple_name, string_utils_test_1_expr55, (arguments, 1), range(string_utils_test_1, 8970, 14, 203, 203), 'SEPARATOR_CHAR').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr56, name, range(string_utils_test_1, 8996, 12, 204, 204), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr57, expression, range(string_utils_test_1, 9018, 11, 204, 204), 'StringUtils').
name(m_join_92, simple_name, string_utils_test_1_expr57, name, range(string_utils_test_1, 9030, 4, 204, 204), 'join').
name(f_mixed_array_list_370, simple_name, string_utils_test_1_expr57, (arguments, 0), range(string_utils_test_1, 9035, 16, 204, 204), 'MIXED_ARRAY_LIST').
name(f_separator_char_374, simple_name, string_utils_test_1_expr57, (arguments, 1), range(string_utils_test_1, 9053, 14, 204, 204), 'SEPARATOR_CHAR').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr58, name, range(string_utils_test_1, 9079, 12, 205, 205), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr59, expression, range(string_utils_test_1, 9101, 11, 205, 205), 'StringUtils').
name(m_join_92, simple_name, string_utils_test_1_expr59, name, range(string_utils_test_1, 9113, 4, 205, 205), 'join').
name(f_mixed_type_list_371, simple_name, string_utils_test_1_expr59, (arguments, 0), range(string_utils_test_1, 9118, 15, 205, 205), 'MIXED_TYPE_LIST').
name(f_separator_char_374, simple_name, string_utils_test_1_expr59, (arguments, 1), range(string_utils_test_1, 9135, 14, 205, 205), 'SEPARATOR_CHAR').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr60, name, range(string_utils_test_1, 9162, 12, 207, 207), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr61, expression, range(string_utils_test_1, 9180, 11, 207, 207), 'StringUtils').
name(m_join_93, simple_name, string_utils_test_1_expr61, name, range(string_utils_test_1, 9192, 4, 207, 207), 'join').
name(f_mixed_array_list_370, simple_name, string_utils_test_1_expr61, (arguments, 0), range(string_utils_test_1, 9197, 16, 207, 207), 'MIXED_ARRAY_LIST').
name(f_mixed_array_list_370, simple_name, q_length_4, qualifier, range(string_utils_test_1, 9223, 16, 207, 207), 'MIXED_ARRAY_LIST').
name(q_length_4, qualified_name, string_utils_test_1_expr62, left_operand, range(string_utils_test_1, 9223, 23, 207, 207), 'MIXED_ARRAY_LIST.length').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr63, name, range(string_utils_test_1, 9260, 12, 208, 208), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr64, expression, range(string_utils_test_1, 9280, 11, 208, 208), 'StringUtils').
name(m_join_93, simple_name, string_utils_test_1_expr64, name, range(string_utils_test_1, 9292, 4, 208, 208), 'join').
name(f_mixed_type_list_371, simple_name, string_utils_test_1_expr64, (arguments, 0), range(string_utils_test_1, 9297, 15, 208, 208), 'MIXED_TYPE_LIST').
name(m_assert_equals_190, simple_name, string_utils_test_1_expr65, name, range(string_utils_test_1, 9335, 12, 209, 209), 'assertEquals').
name(t_string_utils_6, simple_name, string_utils_test_1_expr66, expression, range(string_utils_test_1, 9356, 11, 209, 209), 'StringUtils').
name(m_join_93, simple_name, string_utils_test_1_expr66, name, range(string_utils_test_1, 9368, 4, 209, 209), 'join').
name(f_null_to_string_list_369, simple_name, string_utils_test_1_expr66, (arguments, 0), range(string_utils_test_1, 9373, 19, 209, 209), 'NULL_TO_STRING_LIST').

%%% Literals
%string_utils_1 - org.apache.commons.lang3.StringUtils
literal(string_utils_1_literal1, string_literal, string_utils_1_expr1, (arguments, 0), range(string_utils_1, 5595, 6, 147, 147), "\\s+").
literal(string_utils_1_literal2, boolean_literal, string_utils_1_code13, initializer, range(string_utils_1, 27495, 5, 704, 704), false).
literal(string_utils_1_literal3, null_literal, string_utils_1_code18, initializer, range(string_utils_1, 27550, 4, 705, 705), null).
literal(string_utils_1_literal4, string_literal, string_utils_1_expr2, (arguments, 0), range(string_utils_1, 27618, 35, 706, 706), "\\p{InCombiningDiacriticalMarks}+").
literal(string_utils_1_literal5, boolean_literal, string_utils_1_code29, initializer, range(string_utils_1, 27728, 5, 708, 708), false).
literal(string_utils_1_literal6, null_literal, string_utils_1_code34, initializer, range(string_utils_1, 27785, 4, 709, 709), null).
literal(string_utils_1_literal7, null_literal, string_utils_1_code39, initializer, range(string_utils_1, 27843, 4, 710, 710), null).
literal(string_utils_1_literal8, string_literal, string_utils_1_expr3, (arguments, 0), range(string_utils_1, 28204, 27, 718, 718), "java.text.Normalizer$Form").
literal(string_utils_1_literal10, string_literal, string_utils_1_expr8, (arguments, 0), range(string_utils_1, 28313, 5, 719, 719), "NFD").
literal(string_utils_1_literal9, null_literal, string_utils_1_expr7, (arguments, 0), range(string_utils_1, 28324, 4, 719, 719), null).
literal(string_utils_1_literal11, string_literal, string_utils_1_expr9, (arguments, 0), range(string_utils_1, 28457, 22, 721, 721), "java.text.Normalizer").
literal(string_utils_1_literal12, string_literal, string_utils_1_expr13, (arguments, 0), range(string_utils_1, 28556, 11, 722, 722), "normalize").
literal(string_utils_1_literal13, boolean_literal, string_utils_1_expr15, right_hand_side, range(string_utils_1, 28687, 4, 724, 724), true).
literal(string_utils_1_literal14, string_literal, string_utils_1_expr16, (arguments, 0), range(string_utils_1, 29214, 21, 738, 738), "sun.text.Normalizer").
literal(string_utils_1_literal15, boolean_literal, string_utils_1_expr19, right_hand_side, range(string_utils_1, 29596, 5, 745, 745), false).
literal(string_utils_1_literal16, null_literal, string_utils_1_expr20, (arguments, 1), range(string_utils_1, 134321, 4, 3230, 3230), null).
literal(string_utils_1_literal17, null_literal, string_utils_1_expr21, right_operand, range(string_utils_1, 135303, 4, 3256, 3256), null).
literal(string_utils_1_literal18, null_literal, string_utils_1_stmt12, expression, range(string_utils_1, 135330, 4, 3257, 3257), null).
literal(string_utils_1_literal19, number_literal, string_utils_1_expr22, (arguments, 2), range(string_utils_1, 135385, 1, 3260, 3260), 0).
literal(string_utils_1_literal20, null_literal, string_utils_1_expr23, right_operand, range(string_utils_1, 136684, 4, 3290, 3290), null).
literal(string_utils_1_literal21, number_literal, string_utils_1_expr26, right_operand, range(string_utils_1, 136801, 1, 3294, 3294), 0).
literal(string_utils_1_literal23, null_literal, string_utils_1_expr31, right_operand, range(string_utils_1, 136919, 4, 3298, 3298), null).
literal(string_utils_1_literal22, number_literal, string_utils_1_expr30, then_expression, range(string_utils_1, 136926, 2, 3298, 3298), 16).
literal(string_utils_1_literal24, number_literal, string_utils_1_expr28, right_operand, range(string_utils_1, 136972, 1, 3298, 3298), 1).
literal(string_utils_1_literal25, null_literal, string_utils_1_expr41, right_operand, range(string_utils_1, 137146, 4, 3304, 3304), null).
literal(string_utils_1_literal26, null_literal, string_utils_1_expr46, right_operand, range(string_utils_1, 138359, 4, 3335, 3335), null).
literal(string_utils_1_literal27, null_literal, string_utils_1_stmt26, expression, range(string_utils_1, 138386, 4, 3336, 3336), null).
literal(string_utils_1_literal28, number_literal, string_utils_1_expr47, (arguments, 2), range(string_utils_1, 138440, 1, 3338, 3338), 0).
literal(string_utils_1_literal29, null_literal, string_utils_1_expr48, right_operand, range(string_utils_1, 139876, 4, 3369, 3369), null).
literal(string_utils_1_literal30, null_literal, string_utils_1_expr49, right_operand, range(string_utils_1, 139944, 4, 3372, 3372), null).
literal(string_utils_1_literal31, number_literal, string_utils_1_expr53, right_operand, range(string_utils_1, 140236, 1, 3379, 3379), 0).
literal(string_utils_1_literal33, null_literal, string_utils_1_expr58, right_operand, range(string_utils_1, 140346, 4, 3383, 3383), null).
literal(string_utils_1_literal32, number_literal, string_utils_1_expr57, then_expression, range(string_utils_1, 140353, 2, 3383, 3383), 16).
literal(string_utils_1_literal34, null_literal, string_utils_1_expr68, right_operand, range(string_utils_1, 140590, 4, 3389, 3389), null).
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
literal(string_utils_test_1_literal1, string_literal, string_utils_test_1_code5, initializer, range(string_utils_test_1, 1489, 2, 44, 44), "").
literal(string_utils_test_1_literal2, string_literal, string_utils_test_1_code7, initializer, range(string_utils_test_1, 1514, 2, 45, 45), "").
literal(string_utils_test_1_literal3, string_literal, string_utils_test_1_code9, initializer, range(string_utils_test_1, 1538, 2, 46, 46), "").
literal(string_utils_test_1_literal4, string_literal, string_utils_test_1_code11, initializer, range(string_utils_test_1, 1563, 2, 47, 47), "").
literal(string_utils_test_1_literal5, number_literal, string_utils_test_1_code13, initializer, range(string_utils_test_1, 1588, 1, 48, 48), 0).
literal(string_utils_test_1_literal6, number_literal, string_utils_test_1_expr9, right_operand, range(string_utils_test_1, 1747, 2, 51, 51), 32).
literal(string_utils_test_1_literal7, number_literal, string_utils_test_1_expr13, right_operand, range(string_utils_test_1, 1851, 2, 54, 54), 40).
literal(string_utils_test_1_literal8, number_literal, string_utils_test_1_code19, initializer, range(string_utils_test_1, 1951, 1, 58, 58), 0).
literal(string_utils_test_1_literal9, number_literal, string_utils_test_1_expr18, right_operand, range(string_utils_test_1, 1959, 2, 58, 58), 32).
literal(string_utils_test_1_literal10, string_literal, string_utils_test_1_expr27, (expressions, 0), range(string_utils_test_1, 2188, 5, 67, 67), "foo").
literal(string_utils_test_1_literal11, string_literal, string_utils_test_1_expr27, (expressions, 1), range(string_utils_test_1, 2195, 5, 67, 67), "bar").
literal(string_utils_test_1_literal12, string_literal, string_utils_test_1_expr27, (expressions, 2), range(string_utils_test_1, 2202, 5, 67, 67), "baz").
literal(string_utils_test_1_literal13, null_literal, string_utils_test_1_expr29, (expressions, 0), range(string_utils_test_1, 2321, 4, 69, 69), null).
literal(string_utils_test_1_literal14, null_literal, string_utils_test_1_expr31, (expressions, 0), range(string_utils_test_1, 2550, 4, 78, 78), null).
literal(string_utils_test_1_literal15, string_literal, string_utils_test_1_expr31, (expressions, 1), range(string_utils_test_1, 2556, 2, 78, 78), "").
literal(string_utils_test_1_literal16, string_literal, string_utils_test_1_expr31, (expressions, 2), range(string_utils_test_1, 2560, 5, 78, 78), "foo").
literal(string_utils_test_1_literal17, string_literal, string_utils_test_1_expr32, (expressions, 0), range(string_utils_test_1, 2621, 5, 79, 79), "foo").
literal(string_utils_test_1_literal18, number_literal, string_utils_test_1_expr33, (arguments, 0), range(string_utils_test_1, 2641, 2, 79, 79), 2).
literal(string_utils_test_1_literal19, null_literal, string_utils_test_1_expr35, (arguments, 0), range(string_utils_test_1, 7973, 4, 186, 186), null).
literal(string_utils_test_1_literal20, null_literal, string_utils_test_1_expr37, expression, range(string_utils_test_1, 8007, 4, 186, 186), null).
literal(string_utils_test_1_literal21, string_literal, string_utils_test_1_expr38, (arguments, 0), range(string_utils_test_1, 8105, 2, 188, 188), "").
literal(string_utils_test_1_literal22, string_literal, string_utils_test_1_expr40, (arguments, 0), range(string_utils_test_1, 8166, 2, 189, 189), "").
literal(string_utils_test_1_literal23, null_literal, string_utils_test_1_expr42, expression, range(string_utils_test_1, 8196, 4, 189, 189), null).
literal(string_utils_test_1_literal24, string_literal, string_utils_test_1_expr43, (arguments, 0), range(string_utils_test_1, 8251, 2, 191, 191), "").
literal(string_utils_test_1_literal25, string_literal, string_utils_test_1_expr45, (arguments, 0), range(string_utils_test_1, 8313, 2, 192, 192), "").
literal(string_utils_test_1_literal26, string_literal, string_utils_test_1_expr47, (arguments, 0), range(string_utils_test_1, 8374, 6, 193, 193), "null").
literal(string_utils_test_1_literal27, null_literal, string_utils_test_1_expr49, (arguments, 0), range(string_utils_test_1, 8779, 4, 201, 201), null).
literal(string_utils_test_1_literal29, null_literal, string_utils_test_1_expr51, expression, range(string_utils_test_1, 8813, 4, 201, 201), null).
literal(string_utils_test_1_literal28, character_literal, string_utils_test_1_expr50, (arguments, 1), range(string_utils_test_1, 8819, 3, 201, 201), ',').
literal(string_utils_test_1_literal30, string_literal, string_utils_test_1_expr54, (arguments, 0), range(string_utils_test_1, 8931, 2, 203, 203), "").
literal(string_utils_test_1_literal31, string_literal, string_utils_test_1_expr56, (arguments, 0), range(string_utils_test_1, 9009, 7, 204, 204), ";;foo").
literal(string_utils_test_1_literal32, string_literal, string_utils_test_1_expr58, (arguments, 0), range(string_utils_test_1, 9092, 7, 205, 205), "foo;2").
literal(string_utils_test_1_literal33, string_literal, string_utils_test_1_expr60, (arguments, 0), range(string_utils_test_1, 9175, 3, 207, 207), "/").
literal(string_utils_test_1_literal34, character_literal, string_utils_test_1_expr61, (arguments, 1), range(string_utils_test_1, 9215, 3, 207, 207), '/').
literal(string_utils_test_1_literal35, number_literal, string_utils_test_1_expr61, (arguments, 2), range(string_utils_test_1, 9220, 1, 207, 207), 0).
literal(string_utils_test_1_literal36, number_literal, string_utils_test_1_expr62, right_operand, range(string_utils_test_1, 9247, 1, 207, 207), 1).
literal(string_utils_test_1_literal37, string_literal, string_utils_test_1_expr63, (arguments, 0), range(string_utils_test_1, 9273, 5, 208, 208), "foo").
literal(string_utils_test_1_literal38, character_literal, string_utils_test_1_expr64, (arguments, 1), range(string_utils_test_1, 9314, 3, 208, 208), '/').
literal(string_utils_test_1_literal39, number_literal, string_utils_test_1_expr64, (arguments, 2), range(string_utils_test_1, 9319, 1, 208, 208), 0).
literal(string_utils_test_1_literal40, number_literal, string_utils_test_1_expr64, (arguments, 3), range(string_utils_test_1, 9322, 1, 208, 208), 1).
literal(string_utils_test_1_literal41, string_literal, string_utils_test_1_expr65, (arguments, 0), range(string_utils_test_1, 9348, 6, 209, 209), "null").
literal(string_utils_test_1_literal42, character_literal, string_utils_test_1_expr66, (arguments, 1), range(string_utils_test_1, 9393, 3, 209, 209), '/').
literal(string_utils_test_1_literal43, number_literal, string_utils_test_1_expr66, (arguments, 2), range(string_utils_test_1, 9398, 1, 209, 209), 0).
literal(string_utils_test_1_literal44, number_literal, string_utils_test_1_expr66, (arguments, 3), range(string_utils_test_1, 9401, 1, 209, 209), 1).

%%% Other Code Entities
%string_utils_1 - org.apache.commons.lang3.StringUtils
code(string_utils_1_code1, compilation_unit, range(string_utils_1, 0, 265315, 1, -1)).
code(string_utils_1_code2, type_declaration, string_utils_1_code1, (types, 0), range(string_utils_1, 1084, 264230, 28, 6564)).
code(string_utils_1_code3, field_declaration, string_utils_1_code2, (body_declarations, 3), range(string_utils_1, 5443, 160, 144, 147)).
code(string_utils_1_code4, modifier, string_utils_1_code3, (modifiers, 0), range(string_utils_1, 5531, 7, 147, 147)).
code(string_utils_1_code5, modifier, string_utils_1_code3, (modifiers, 1), range(string_utils_1, 5539, 6, 147, 147)).
code(string_utils_1_code6, modifier, string_utils_1_code3, (modifiers, 2), range(string_utils_1, 5546, 5, 147, 147)).
code(string_utils_1_code7, simple_type, string_utils_1_code3, type, range(string_utils_1, 5552, 7, 147, 147)).
code(string_utils_1_code8, variable_declaration_fragment, string_utils_1_code3, (fragments, 0), range(string_utils_1, 5560, 42, 147, 147)).
code(string_utils_1_code9, field_declaration, string_utils_1_code2, (body_declarations, 23), range(string_utils_1, 27457, 44, 704, 704)).
code(string_utils_1_code10, modifier, string_utils_1_code9, (modifiers, 0), range(string_utils_1, 27457, 7, 704, 704)).
code(string_utils_1_code11, modifier, string_utils_1_code9, (modifiers, 1), range(string_utils_1, 27465, 6, 704, 704)).
code(string_utils_1_code12, primitive_type, string_utils_1_code9, type, range(string_utils_1, 27472, 7, 704, 704)).
code(string_utils_1_code13, variable_declaration_fragment, string_utils_1_code9, (fragments, 0), range(string_utils_1, 27480, 20, 704, 704)).
code(string_utils_1_code14, field_declaration, string_utils_1_code2, (body_declarations, 24), range(string_utils_1, 27506, 49, 705, 705)).
code(string_utils_1_code15, modifier, string_utils_1_code14, (modifiers, 0), range(string_utils_1, 27506, 7, 705, 705)).
code(string_utils_1_code16, modifier, string_utils_1_code14, (modifiers, 1), range(string_utils_1, 27514, 6, 705, 705)).
code(string_utils_1_code17, simple_type, string_utils_1_code14, type, range(string_utils_1, 27521, 6, 705, 705)).
code(string_utils_1_code18, variable_declaration_fragment, string_utils_1_code14, (fragments, 0), range(string_utils_1, 27529, 25, 705, 705)).
code(string_utils_1_code20, modifier, string_utils_1_code19, (modifiers, 0), range(string_utils_1, 27560, 7, 706, 706)).
code(string_utils_1_code19, field_declaration, string_utils_1_code2, (body_declarations, 25), range(string_utils_1, 27560, 95, 706, 706)).
code(string_utils_1_code21, modifier, string_utils_1_code19, (modifiers, 1), range(string_utils_1, 27568, 6, 706, 706)).
code(string_utils_1_code22, modifier, string_utils_1_code19, (modifiers, 2), range(string_utils_1, 27575, 5, 706, 706)).
code(string_utils_1_code23, simple_type, string_utils_1_code19, type, range(string_utils_1, 27581, 7, 706, 706)).
code(string_utils_1_code24, variable_declaration_fragment, string_utils_1_code19, (fragments, 0), range(string_utils_1, 27589, 65, 706, 706)).
code(string_utils_1_code26, modifier, string_utils_1_code25, (modifiers, 0), range(string_utils_1, 27688, 7, 708, 708)).
code(string_utils_1_code25, field_declaration, string_utils_1_code2, (body_declarations, 26), range(string_utils_1, 27688, 46, 708, 708)).
code(string_utils_1_code27, modifier, string_utils_1_code25, (modifiers, 1), range(string_utils_1, 27696, 6, 708, 708)).
code(string_utils_1_code28, primitive_type, string_utils_1_code25, type, range(string_utils_1, 27703, 7, 708, 708)).
code(string_utils_1_code29, variable_declaration_fragment, string_utils_1_code25, (fragments, 0), range(string_utils_1, 27711, 22, 708, 708)).
code(string_utils_1_code31, modifier, string_utils_1_code30, (modifiers, 0), range(string_utils_1, 27739, 7, 709, 709)).
code(string_utils_1_code30, field_declaration, string_utils_1_code2, (body_declarations, 27), range(string_utils_1, 27739, 51, 709, 709)).
code(string_utils_1_code32, modifier, string_utils_1_code30, (modifiers, 1), range(string_utils_1, 27747, 6, 709, 709)).
code(string_utils_1_code33, simple_type, string_utils_1_code30, type, range(string_utils_1, 27754, 6, 709, 709)).
code(string_utils_1_code34, variable_declaration_fragment, string_utils_1_code30, (fragments, 0), range(string_utils_1, 27762, 27, 709, 709)).
code(string_utils_1_code35, field_declaration, string_utils_1_code2, (body_declarations, 28), range(string_utils_1, 27795, 53, 710, 710)).
code(string_utils_1_code36, modifier, string_utils_1_code35, (modifiers, 0), range(string_utils_1, 27795, 7, 710, 710)).
code(string_utils_1_code37, modifier, string_utils_1_code35, (modifiers, 1), range(string_utils_1, 27803, 6, 710, 710)).
code(string_utils_1_code38, simple_type, string_utils_1_code35, type, range(string_utils_1, 27810, 6, 710, 710)).
code(string_utils_1_code39, variable_declaration_fragment, string_utils_1_code35, (fragments, 0), range(string_utils_1, 27818, 29, 710, 710)).
code(string_utils_1_code41, modifier, string_utils_1_code40, (modifiers, 0), range(string_utils_1, 27853, 7, 711, 711)).
code(string_utils_1_code40, field_declaration, string_utils_1_code2, (body_declarations, 29), range(string_utils_1, 27853, 55, 711, 711)).
code(string_utils_1_code42, modifier, string_utils_1_code40, (modifiers, 1), range(string_utils_1, 27861, 6, 711, 711)).
code(string_utils_1_code43, modifier, string_utils_1_code40, (modifiers, 2), range(string_utils_1, 27868, 5, 711, 711)).
code(string_utils_1_code44, simple_type, string_utils_1_code40, type, range(string_utils_1, 27874, 7, 711, 711)).
code(string_utils_1_code45, variable_declaration_fragment, string_utils_1_code40, (fragments, 0), range(string_utils_1, 27882, 25, 711, 711)).
code(string_utils_1_code46, initializer, string_utils_1_code2, (body_declarations, 30), range(string_utils_1, 27914, 1704, 713, 747)).
code(string_utils_1_code48, simple_type, string_utils_1_code47, type, range(string_utils_1, 28099, 5, 717, 717)).
code(string_utils_1_code47, parameterized_type, string_utils_1_stmt2, type, range(string_utils_1, 28099, 8, 717, 717)).
code(string_utils_1_code49, wildcard_type, string_utils_1_code47, (type_arguments, 0), range(string_utils_1, 28105, 1, 717, 717)).
code(string_utils_1_code50, variable_declaration_fragment, string_utils_1_stmt2, (fragments, 0), range(string_utils_1, 28108, 124, 717, 718)).
code(string_utils_1_code52, simple_type, string_utils_1_code51, type, range(string_utils_1, 28356, 5, 720, 720)).
code(string_utils_1_code51, parameterized_type, string_utils_1_stmt4, type, range(string_utils_1, 28356, 8, 720, 720)).
code(string_utils_1_code53, wildcard_type, string_utils_1_code51, (type_arguments, 0), range(string_utils_1, 28362, 1, 720, 720)).
code(string_utils_1_code54, variable_declaration_fragment, string_utils_1_stmt4, (fragments, 0), range(string_utils_1, 28365, 115, 720, 721)).
code(string_utils_1_code55, catch_clause, string_utils_1_stmt1, (catch_clauses, 3), range(string_utils_1, 28944, 79, 731, 733)).
code(string_utils_1_code57, simple_type, string_utils_1_code56, type, range(string_utils_1, 29113, 5, 737, 737)).
code(string_utils_1_code56, parameterized_type, string_utils_1_stmt8, type, range(string_utils_1, 29113, 8, 737, 737)).
code(string_utils_1_code58, wildcard_type, string_utils_1_code56, (type_arguments, 0), range(string_utils_1, 29119, 1, 737, 737)).
code(string_utils_1_code59, variable_declaration_fragment, string_utils_1_stmt8, (fragments, 0), range(string_utils_1, 29122, 114, 737, 738)).
code(string_utils_1_code60, catch_clause, string_utils_1_stmt7, (catch_clauses, 0), range(string_utils_1, 29456, 78, 742, 744)).
code(string_utils_1_code61, catch_clause, string_utils_1_stmt7, (catch_clauses, 1), range(string_utils_1, 29535, 77, 744, 746)).
code(string_utils_1_code62, single_variable_declaration, string_utils_1_code61, exception, range(string_utils_1, 29542, 23, 744, 744)).
code(string_utils_1_code63, simple_type, string_utils_1_code62, type, range(string_utils_1, 29542, 21, 744, 744)).
code(string_utils_1_code64, method_declaration, string_utils_1_code2, (body_declarations, 94), range(string_utils_1, 133402, 931, 3207, 3231)).
code(string_utils_1_code65, method_declaration, string_utils_1_code2, (body_declarations, 95), range(string_utils_1, 134339, 1069, 3233, 3261)).
code(string_utils_1_code66, method_declaration, string_utils_1_code2, (body_declarations, 96), range(string_utils_1, 135414, 1838, 3263, 3309)).
code(string_utils_1_code67, primitive_type, string_utils_1_stmt15, type, range(string_utils_1, 136735, 3, 3293, 3293)).
code(string_utils_1_code68, variable_declaration_fragment, string_utils_1_stmt15, (fragments, 0), range(string_utils_1, 136739, 35, 3293, 3293)).
code(string_utils_1_code69, simple_type, string_utils_1_stmt18, type, range(string_utils_1, 136859, 13, 3298, 3298)).
code(string_utils_1_code70, variable_declaration_fragment, string_utils_1_stmt18, (fragments, 0), range(string_utils_1, 136873, 101, 3298, 3298)).
code(string_utils_1_code71, simple_type, string_utils_1_expr27, type, range(string_utils_1, 136883, 13, 3298, 3298)).
code(string_utils_1_code72, primitive_type, string_utils_1_expr36, type, range(string_utils_1, 136990, 3, 3300, 3300)).
code(string_utils_1_code73, variable_declaration_fragment, string_utils_1_expr36, (fragments, 0), range(string_utils_1, 136994, 14, 3300, 3300)).
code(string_utils_1_code74, method_declaration, string_utils_1_code2, (body_declarations, 97), range(string_utils_1, 137258, 1205, 3311, 3339)).
code(string_utils_1_code75, method_declaration, string_utils_1_code2, (body_declarations, 98), range(string_utils_1, 138469, 2227, 3341, 3394)).
code(string_utils_1_code76, primitive_type, string_utils_1_stmt31, type, range(string_utils_1, 140170, 3, 3378, 3378)).
code(string_utils_1_code77, variable_declaration_fragment, string_utils_1_stmt31, (fragments, 0), range(string_utils_1, 140174, 35, 3378, 3378)).
code(string_utils_1_code78, simple_type, string_utils_1_stmt34, type, range(string_utils_1, 140286, 13, 3383, 3383)).
code(string_utils_1_code79, variable_declaration_fragment, string_utils_1_stmt34, (fragments, 0), range(string_utils_1, 140300, 118, 3383, 3383)).
code(string_utils_1_code80, simple_type, string_utils_1_expr54, type, range(string_utils_1, 140310, 13, 3383, 3383)).
code(string_utils_1_code81, primitive_type, string_utils_1_expr64, type, range(string_utils_1, 140434, 3, 3385, 3385)).
code(string_utils_1_code82, variable_declaration_fragment, string_utils_1_expr64, (fragments, 0), range(string_utils_1, 140438, 14, 3385, 3385)).
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
code(string_utils_test_1_code1, compilation_unit, range(string_utils_test_1, 0, 97952, 1, -1)).
code(string_utils_test_1_code2, type_declaration, string_utils_test_1_code1, (types, 0), range(string_utils_test_1, 1165, 96786, 32, 2013)).
code(string_utils_test_1_code3, initializer, string_utils_test_1_code2, (body_declarations, 4), range(string_utils_test_1, 1460, 677, 43, 65)).
code(string_utils_test_1_code4, simple_type, string_utils_test_1_stmt1, type, range(string_utils_test_1, 1477, 6, 44, 44)).
code(string_utils_test_1_code5, variable_declaration_fragment, string_utils_test_1_stmt1, (fragments, 0), range(string_utils_test_1, 1484, 7, 44, 44)).
code(string_utils_test_1_code6, simple_type, string_utils_test_1_stmt2, type, range(string_utils_test_1, 1501, 6, 45, 45)).
code(string_utils_test_1_code7, variable_declaration_fragment, string_utils_test_1_stmt2, (fragments, 0), range(string_utils_test_1, 1508, 8, 45, 45)).
code(string_utils_test_1_code8, simple_type, string_utils_test_1_stmt3, type, range(string_utils_test_1, 1526, 6, 46, 46)).
code(string_utils_test_1_code9, variable_declaration_fragment, string_utils_test_1_stmt3, (fragments, 0), range(string_utils_test_1, 1533, 7, 46, 46)).
code(string_utils_test_1_code10, simple_type, string_utils_test_1_stmt4, type, range(string_utils_test_1, 1550, 6, 47, 47)).
code(string_utils_test_1_code11, variable_declaration_fragment, string_utils_test_1_stmt4, (fragments, 0), range(string_utils_test_1, 1557, 8, 47, 47)).
code(string_utils_test_1_code12, primitive_type, string_utils_test_1_expr1, type, range(string_utils_test_1, 1580, 3, 48, 48)).
code(string_utils_test_1_code13, variable_declaration_fragment, string_utils_test_1_expr1, (fragments, 0), range(string_utils_test_1, 1584, 5, 48, 48)).
code(string_utils_test_1_code14, primitive_type, string_utils_test_1_expr5, type, range(string_utils_test_1, 1663, 4, 49, 49)).
code(string_utils_test_1_code15, primitive_type, string_utils_test_1_expr8, type, range(string_utils_test_1, 1713, 4, 50, 50)).
code(string_utils_test_1_code16, primitive_type, string_utils_test_1_expr12, type, range(string_utils_test_1, 1796, 4, 52, 52)).
code(string_utils_test_1_code17, primitive_type, string_utils_test_1_expr16, type, range(string_utils_test_1, 1896, 4, 55, 55)).
code(string_utils_test_1_code18, primitive_type, string_utils_test_1_expr17, type, range(string_utils_test_1, 1943, 3, 58, 58)).
code(string_utils_test_1_code19, variable_declaration_fragment, string_utils_test_1_expr17, (fragments, 0), range(string_utils_test_1, 1947, 5, 58, 58)).
code(string_utils_test_1_code20, primitive_type, string_utils_test_1_expr22, type, range(string_utils_test_1, 2004, 4, 59, 59)).
code(string_utils_test_1_code21, field_declaration, string_utils_test_1_code2, (body_declarations, 5), range(string_utils_test_1, 2143, 67, 67, 67)).
code(string_utils_test_1_code22, modifier, string_utils_test_1_code21, (modifiers, 0), range(string_utils_test_1, 2143, 7, 67, 67)).
code(string_utils_test_1_code23, modifier, string_utils_test_1_code21, (modifiers, 1), range(string_utils_test_1, 2151, 6, 67, 67)).
code(string_utils_test_1_code24, modifier, string_utils_test_1_code21, (modifiers, 2), range(string_utils_test_1, 2158, 5, 67, 67)).
code(string_utils_test_1_code26, simple_type, string_utils_test_1_code25, element_type, range(string_utils_test_1, 2164, 6, 67, 67)).
code(string_utils_test_1_code25, array_type, string_utils_test_1_code21, type, range(string_utils_test_1, 2164, 8, 67, 67)).
code(string_utils_test_1_code27, dimension, string_utils_test_1_code25, (dimensions, 0), range(string_utils_test_1, 2170, 2, 67, 67)).
code(string_utils_test_1_code28, variable_declaration_fragment, string_utils_test_1_code21, (fragments, 0), range(string_utils_test_1, 2173, 36, 67, 67)).
code(string_utils_test_1_code30, modifier, string_utils_test_1_code29, (modifiers, 0), range(string_utils_test_1, 2215, 7, 68, 68)).
code(string_utils_test_1_code29, field_declaration, string_utils_test_1_code2, (body_declarations, 6), range(string_utils_test_1, 2215, 52, 68, 68)).
code(string_utils_test_1_code31, modifier, string_utils_test_1_code29, (modifiers, 1), range(string_utils_test_1, 2223, 6, 68, 68)).
code(string_utils_test_1_code32, modifier, string_utils_test_1_code29, (modifiers, 2), range(string_utils_test_1, 2230, 5, 68, 68)).
code(string_utils_test_1_code34, simple_type, string_utils_test_1_code33, element_type, range(string_utils_test_1, 2236, 6, 68, 68)).
code(string_utils_test_1_code33, array_type, string_utils_test_1_code29, type, range(string_utils_test_1, 2236, 8, 68, 68)).
code(string_utils_test_1_code35, dimension, string_utils_test_1_code33, (dimensions, 0), range(string_utils_test_1, 2242, 2, 68, 68)).
code(string_utils_test_1_code36, variable_declaration_fragment, string_utils_test_1_code29, (fragments, 0), range(string_utils_test_1, 2245, 21, 68, 68)).
code(string_utils_test_1_code38, modifier, string_utils_test_1_code37, (modifiers, 0), range(string_utils_test_1, 2272, 7, 69, 69)).
code(string_utils_test_1_code37, field_declaration, string_utils_test_1_code2, (body_declarations, 7), range(string_utils_test_1, 2272, 55, 69, 69)).
code(string_utils_test_1_code39, modifier, string_utils_test_1_code37, (modifiers, 1), range(string_utils_test_1, 2280, 6, 69, 69)).
code(string_utils_test_1_code40, modifier, string_utils_test_1_code37, (modifiers, 2), range(string_utils_test_1, 2287, 5, 69, 69)).
code(string_utils_test_1_code41, array_type, string_utils_test_1_code37, type, range(string_utils_test_1, 2293, 8, 69, 69)).
code(string_utils_test_1_code42, simple_type, string_utils_test_1_code41, element_type, range(string_utils_test_1, 2293, 6, 69, 69)).
code(string_utils_test_1_code43, dimension, string_utils_test_1_code41, (dimensions, 0), range(string_utils_test_1, 2299, 2, 69, 69)).
code(string_utils_test_1_code44, variable_declaration_fragment, string_utils_test_1_code37, (fragments, 0), range(string_utils_test_1, 2302, 24, 69, 69)).
code(string_utils_test_1_code45, field_declaration, string_utils_test_1_code2, (body_declarations, 8), range(string_utils_test_1, 2332, 163, 70, 77)).
code(string_utils_test_1_code46, modifier, string_utils_test_1_code45, (modifiers, 0), range(string_utils_test_1, 2332, 7, 70, 70)).
code(string_utils_test_1_code47, modifier, string_utils_test_1_code45, (modifiers, 1), range(string_utils_test_1, 2340, 6, 70, 70)).
code(string_utils_test_1_code48, modifier, string_utils_test_1_code45, (modifiers, 2), range(string_utils_test_1, 2347, 5, 70, 70)).
code(string_utils_test_1_code49, array_type, string_utils_test_1_code45, type, range(string_utils_test_1, 2353, 8, 70, 70)).
code(string_utils_test_1_code50, simple_type, string_utils_test_1_code49, element_type, range(string_utils_test_1, 2353, 6, 70, 70)).
code(string_utils_test_1_code51, dimension, string_utils_test_1_code49, (dimensions, 0), range(string_utils_test_1, 2359, 2, 70, 70)).
code(string_utils_test_1_code52, variable_declaration_fragment, string_utils_test_1_code45, (fragments, 0), range(string_utils_test_1, 2362, 132, 70, 77)).
code(string_utils_test_1_code54, modifier, string_utils_test_1_code53, (modifiers, 0), range(string_utils_test_1, 2500, 7, 78, 78)).
code(string_utils_test_1_code53, field_declaration, string_utils_test_1_code2, (body_declarations, 9), range(string_utils_test_1, 2500, 67, 78, 78)).
code(string_utils_test_1_code55, modifier, string_utils_test_1_code53, (modifiers, 1), range(string_utils_test_1, 2508, 6, 78, 78)).
code(string_utils_test_1_code56, modifier, string_utils_test_1_code53, (modifiers, 2), range(string_utils_test_1, 2515, 5, 78, 78)).
code(string_utils_test_1_code57, array_type, string_utils_test_1_code53, type, range(string_utils_test_1, 2521, 8, 78, 78)).
code(string_utils_test_1_code58, simple_type, string_utils_test_1_code57, element_type, range(string_utils_test_1, 2521, 6, 78, 78)).
code(string_utils_test_1_code59, dimension, string_utils_test_1_code57, (dimensions, 0), range(string_utils_test_1, 2527, 2, 78, 78)).
code(string_utils_test_1_code60, variable_declaration_fragment, string_utils_test_1_code53, (fragments, 0), range(string_utils_test_1, 2530, 36, 78, 78)).
code(string_utils_test_1_code62, modifier, string_utils_test_1_code61, (modifiers, 0), range(string_utils_test_1, 2572, 7, 79, 79)).
code(string_utils_test_1_code61, field_declaration, string_utils_test_1_code2, (body_declarations, 10), range(string_utils_test_1, 2572, 74, 79, 79)).
code(string_utils_test_1_code63, modifier, string_utils_test_1_code61, (modifiers, 1), range(string_utils_test_1, 2580, 6, 79, 79)).
code(string_utils_test_1_code64, modifier, string_utils_test_1_code61, (modifiers, 2), range(string_utils_test_1, 2587, 5, 79, 79)).
code(string_utils_test_1_code65, array_type, string_utils_test_1_code61, type, range(string_utils_test_1, 2593, 8, 79, 79)).
code(string_utils_test_1_code66, simple_type, string_utils_test_1_code65, element_type, range(string_utils_test_1, 2593, 6, 79, 79)).
code(string_utils_test_1_code67, dimension, string_utils_test_1_code65, (dimensions, 0), range(string_utils_test_1, 2599, 2, 79, 79)).
code(string_utils_test_1_code68, variable_declaration_fragment, string_utils_test_1_code61, (fragments, 0), range(string_utils_test_1, 2602, 43, 79, 79)).
code(string_utils_test_1_code69, method_declaration, string_utils_test_1_code2, (body_declarations, 20), range(string_utils_test_1, 3171, 64, 94, 96)).
code(string_utils_test_1_code70, method_declaration, string_utils_test_1_code2, (body_declarations, 25), range(string_utils_test_1, 7840, 869, 184, 198)).
code(string_utils_test_1_code71, array_type, string_utils_test_1_expr37, type, range(string_utils_test_1, 7997, 8, 186, 186)).
code(string_utils_test_1_code72, simple_type, string_utils_test_1_code71, element_type, range(string_utils_test_1, 7997, 6, 186, 186)).
code(string_utils_test_1_code73, dimension, string_utils_test_1_code71, (dimensions, 0), range(string_utils_test_1, 8003, 2, 186, 186)).
code(string_utils_test_1_code74, simple_type, string_utils_test_1_expr42, type, range(string_utils_test_1, 8188, 6, 189, 189)).
code(string_utils_test_1_code75, method_declaration, string_utils_test_1_code2, (body_declarations, 26), range(string_utils_test_1, 8723, 910, 200, 213)).
code(string_utils_test_1_code77, simple_type, string_utils_test_1_code76, element_type, range(string_utils_test_1, 8803, 6, 201, 201)).
code(string_utils_test_1_code76, array_type, string_utils_test_1_expr51, type, range(string_utils_test_1, 8803, 8, 201, 201)).
code(string_utils_test_1_code78, dimension, string_utils_test_1_code76, (dimensions, 0), range(string_utils_test_1, 8809, 2, 201, 201)).

%%% Name References

name_ref(t_character_3, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_long_5, type, 'Long', 'Ljava/lang/Long;').
name_ref(t_pattern_1, type, 'Pattern', 'Ljava/util/regex/Pattern;').
name_ref(t_string_4, type, 'String', 'Ljava/lang/String;').
name_ref(t_string_utils_6, type, 'StringUtils', 'Lorg/apache/commons/lang3/StringUtils;').
name_ref(t_thread_2, type, 'Thread', 'Ljava/lang/Thread;').
name_ref(v_e_34, var, 'e', 'string_utils_1;e_line_744').
name_ref(p_name_372, param, 'name', 'string_utils_test_1;name_line_95').
name_ref(v_buf_188, var, 'buf', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;#buf').
name_ref(v_buf_197, var, 'buf', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;#buf').
name_ref(v_e_34, var, 'e', 'Lorg/apache/commons/lang3/StringUtils;#1#2#e').
name_ref(v_i_189, var, 'i', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;#0#i').
name_ref(v_i_198, var, 'i', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;#0#i').
name_ref(v_i_360, var, 'i', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#0#i').
name_ref(v_i_361, var, 'i', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#1#i').
name_ref(v_no_of_items_186, var, 'noOfItems', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;#noOfItems').
name_ref(v_no_of_items_196, var, 'noOfItems', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;#noOfItems').
name_ref(v_normalizer_class_32, var, 'normalizerClass', 'Lorg/apache/commons/lang3/StringUtils;#0#0#normalizerClass').
name_ref(v_normalizer_class_33, var, 'normalizerClass', 'Lorg/apache/commons/lang3/StringUtils;#1#0#normalizerClass').
name_ref(v_normalizer_form_class_31, var, 'normalizerFormClass', 'Lorg/apache/commons/lang3/StringUtils;#0#0#normalizerFormClass').
name_ref(v_ntr_359, var, 'ntr', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#ntr').
name_ref(v_nws_357, var, 'nws', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#nws').
name_ref(v_tr_358, var, 'tr', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#tr').
name_ref(v_ws_356, var, 'ws', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#ws').
name_ref(p_array_180, param, 'array', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;C)Ljava/lang/String;#array#0#0').
name_ref(p_array_182, param, 'array', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;#array#0#0').
name_ref(p_array_190, param, 'array', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;#array#0#0').
name_ref(p_array_192, param, 'array', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;#array#0#0').
name_ref(p_camel_case_178, param, 'camelCase', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;#camelCase#0#1').
name_ref(p_ch_260, param, 'ch', 'Lorg/apache/commons/lang3/StringUtils;.repeat(CI)Ljava/lang/String;#ch#0#0').
name_ref(p_close_134, param, 'close', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#close#0#2').
name_ref(p_close_137, param, 'close', 'Lorg/apache/commons/lang3/StringUtils;.substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#close#0#2').
name_ref(p_cs_100, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z#cs#0#0').
name_ref(p_cs_102, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/CharSequence;[C)Z#cs#0#0').
name_ref(p_cs_104, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z#cs#0#0').
name_ref(p_cs_1_328, param, 'cs1', 'Lorg/apache/commons/lang3/StringUtils;.indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#cs1#0#0').
name_ref(p_cs_1_35, param, 'cs1', 'Lorg/apache/commons/lang3/StringUtils;.equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#cs1#0#0').
name_ref(p_cs_2, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isEmpty(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_278, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.length(Ljava/lang/CharSequence;)I#cs#0#0').
name_ref(p_cs_298, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isAlpha(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_299, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isAlphaSpace(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_2_329, param, 'cs2', 'Lorg/apache/commons/lang3/StringUtils;.indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#cs2#0#1').
name_ref(p_cs_2_36, param, 'cs2', 'Lorg/apache/commons/lang3/StringUtils;.equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#cs2#0#1').
name_ref(p_cs_3, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isNotEmpty(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_300, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isAlphanumeric(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_301, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isAlphanumericSpace(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_302, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isAsciiPrintable(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_303, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isNumeric(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_304, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isNumericSpace(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_305, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isWhitespace(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_306, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isAllLowerCase(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_307, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isAllUpperCase(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_4, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isBlank(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_5, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.isNotBlank(Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_86, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/CharSequence;[C)I#cs#0#0').
name_ref(p_cs_88, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I#cs#0#0').
name_ref(p_cs_90, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/CharSequence;[C)Z#cs#0#0').
name_ref(p_cs_92, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#cs#0#0').
name_ref(p_cs_94, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/CharSequence;[C)I#cs#0#0').
name_ref(p_cs_98, param, 'cs', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/CharSequence;[C)Z#cs#0#0').
name_ref(p_css_330, param, 'css', 'Lorg/apache/commons/lang3/StringUtils;.indexOfDifference([Ljava/lang/CharSequence;)I#css#0#0').
name_ref(p_default_str_310, param, 'defaultStr', 'Lorg/apache/commons/lang3/StringUtils;.defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#defaultStr#0#1').
name_ref(p_default_str_312, param, 'defaultStr', 'Lorg/apache/commons/lang3/StringUtils;.defaultIfBlank<T::Ljava/lang/CharSequence;>(TT;TT;)TT;#defaultStr#0#1').
name_ref(p_default_str_314, param, 'defaultStr', 'Lorg/apache/commons/lang3/StringUtils;.defaultIfEmpty<T::Ljava/lang/CharSequence;>(TT;TT;)TT;#defaultStr#0#1').
name_ref(p_elements_179, param, 'elements', 'Lorg/apache/commons/lang3/StringUtils;.join<T:Ljava/lang/Object;>([TT;)Ljava/lang/String;#elements#0#0').
name_ref(p_end_114, param, 'end', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;II)Ljava/lang/String;#end#0#2').
name_ref(p_end_250, param, 'end', 'Lorg/apache/commons/lang3/StringUtils;.overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;#end#0#3').
name_ref(p_end_index_185, param, 'endIndex', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;#endIndex#0#3').
name_ref(p_end_index_195, param, 'endIndex', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;#endIndex#0#3').
name_ref(p_expected_381, param, 'expected', 'Lorg/apache/commons/lang3/StringUtilsTest;.assertAbbreviateWithOffset(Ljava/lang/String;II)V#expected#0#0').
name_ref(p_ignore_case_343, param, 'ignoreCase', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z#ignoreCase#0#2').
name_ref(p_ignore_case_352, param, 'ignoreCase', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z#ignoreCase#0#2').
name_ref(p_input_21, param, 'input', 'Lorg/apache/commons/lang3/StringUtils;.stripAccents(Ljava/lang/String;)Ljava/lang/String;#input#0#0').
name_ref(p_invalid_chars_105, param, 'invalidChars', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z#invalidChars#0#1').
name_ref(p_iterable_203, param, 'iterable', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;C)Ljava/lang/String;#iterable#0#0').
name_ref(p_iterable_205, param, 'iterable', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;Ljava/lang/String;)Ljava/lang/String;#iterable#0#0').
name_ref(p_iterator_199, param, 'iterator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;C)Ljava/lang/String;#iterator#0#0').
name_ref(p_iterator_201, param, 'iterator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;Ljava/lang/String;)Ljava/lang/String;#iterator#0#0').
name_ref(p_last_index_55, param, 'lastIndex', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I#lastIndex#0#3').
name_ref(p_len_116, param, 'len', 'Lorg/apache/commons/lang3/StringUtils;.left(Ljava/lang/String;I)Ljava/lang/String;#len#0#1').
name_ref(p_len_118, param, 'len', 'Lorg/apache/commons/lang3/StringUtils;.right(Ljava/lang/String;I)Ljava/lang/String;#len#0#1').
name_ref(p_len_121, param, 'len', 'Lorg/apache/commons/lang3/StringUtils;.mid(Ljava/lang/String;II)Ljava/lang/String;#len#0#2').
name_ref(p_length_325, param, 'length', 'Lorg/apache/commons/lang3/StringUtils;.abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#length#0#2').
name_ref(p_locale_289, param, 'locale', 'Lorg/apache/commons/lang3/StringUtils;.upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;#locale#0#1').
name_ref(p_locale_292, param, 'locale', 'Lorg/apache/commons/lang3/StringUtils;.lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;#locale#0#1').
name_ref(p_max_145, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#max#0#2').
name_ref(p_max_150, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#max#0#2').
name_ref(p_max_155, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#max#0#2').
name_ref(p_max_158, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#max#0#2').
name_ref(p_max_170, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#max#0#2').
name_ref(p_max_173, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#max#0#2').
name_ref(p_max_229, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#max#0#3').
name_ref(p_max_width_319, param, 'maxWidth', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;I)Ljava/lang/String;#maxWidth#0#1').
name_ref(p_max_width_322, param, 'maxWidth', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;II)Ljava/lang/String;#maxWidth#0#2').
name_ref(p_max_width_383, param, 'maxWidth', 'Lorg/apache/commons/lang3/StringUtilsTest;.assertAbbreviateWithOffset(Ljava/lang/String;II)V#maxWidth#0#2').
name_ref(p_middle_324, param, 'middle', 'Lorg/apache/commons/lang3/StringUtils;.abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#middle#0#1').
name_ref(p_name_372, param, 'name', 'Lorg/apache/commons/lang3/StringUtilsTest;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_no_match_377, param, 'noMatch', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplit(CLjava/lang/String;C)V#noMatch#0#2').
name_ref(p_no_match_380, param, 'noMatch', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplitPreserveAllTokens(CLjava/lang/String;C)V#noMatch#0#2').
name_ref(p_offset_321, param, 'offset', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;II)Ljava/lang/String;#offset#0#1').
name_ref(p_offset_382, param, 'offset', 'Lorg/apache/commons/lang3/StringUtilsTest;.assertAbbreviateWithOffset(Ljava/lang/String;II)V#offset#0#1').
name_ref(p_open_133, param, 'open', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#open#0#1').
name_ref(p_open_136, param, 'open', 'Lorg/apache/commons/lang3/StringUtils;.substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#open#0#1').
name_ref(p_ordinal_51, param, 'ordinal', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#ordinal#0#2').
name_ref(p_ordinal_54, param, 'ordinal', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I#ordinal#0#2').
name_ref(p_ordinal_70, param, 'ordinal', 'Lorg/apache/commons/lang3/StringUtils;.lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#ordinal#0#2').
name_ref(p_overlay_248, param, 'overlay', 'Lorg/apache/commons/lang3/StringUtils;.overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;#overlay#0#1').
name_ref(p_pad_char_266, param, 'padChar', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;IC)Ljava/lang/String;#padChar#0#2').
name_ref(p_pad_char_274, param, 'padChar', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;IC)Ljava/lang/String;#padChar#0#2').
name_ref(p_pad_char_283, param, 'padChar', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;IC)Ljava/lang/String;#padChar#0#2').
name_ref(p_pad_str_269, param, 'padStr', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#padStr#0#2').
name_ref(p_pad_str_277, param, 'padStr', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#padStr#0#2').
name_ref(p_pad_str_286, param, 'padStr', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#padStr#0#2').
name_ref(p_pos_120, param, 'pos', 'Lorg/apache/commons/lang3/StringUtils;.mid(Ljava/lang/String;II)Ljava/lang/String;#pos#0#1').
name_ref(p_prefix_338, param, 'prefix', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#prefix#0#1').
name_ref(p_prefix_340, param, 'prefix', 'Lorg/apache/commons/lang3/StringUtils;.startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#prefix#0#1').
name_ref(p_prefix_342, param, 'prefix', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z#prefix#0#1').
name_ref(p_preserve_all_tokens_159, param, 'preserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#preserveAllTokens#0#3').
name_ref(p_preserve_all_tokens_165, param, 'preserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;#preserveAllTokens#0#2').
name_ref(p_preserve_all_tokens_174, param, 'preserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#preserveAllTokens#0#3').
name_ref(p_remove_209, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#remove#0#1').
name_ref(p_remove_211, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#remove#0#1').
name_ref(p_remove_213, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#remove#0#1').
name_ref(p_remove_215, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#remove#0#1').
name_ref(p_remove_217, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#remove#0#1').
name_ref(p_remove_219, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;C)Ljava/lang/String;#remove#0#1').
name_ref(p_repeat_239, param, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#repeat#0#3').
name_ref(p_repeat_256, param, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;I)Ljava/lang/String;#repeat#0#1').
name_ref(p_repeat_259, param, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#repeat#0#2').
name_ref(p_repeat_261, param, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.repeat(CI)Ljava/lang/String;#repeat#0#1').
name_ref(p_replace_char_243, param, 'replaceChar', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;CC)Ljava/lang/String;#replaceChar#0#2').
name_ref(p_replace_chars_246, param, 'replaceChars', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#replaceChars#0#2').
name_ref(p_replacement_222, param, 'replacement', 'Lorg/apache/commons/lang3/StringUtils;.replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#replacement#0#2').
name_ref(p_replacement_225, param, 'replacement', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#replacement#0#2').
name_ref(p_replacement_228, param, 'replacement', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#replacement#0#2').
name_ref(p_replacement_list_232, param, 'replacementList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#replacementList#0#2').
name_ref(p_replacement_list_235, param, 'replacementList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#replacementList#0#2').
name_ref(p_replacement_list_238, param, 'replacementList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#replacementList#0#2').
name_ref(p_s_332, param, 's', 'Lorg/apache/commons/lang3/StringUtils;.getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#s#0#0').
name_ref(p_s_334, param, 's', 'Lorg/apache/commons/lang3/StringUtils;.getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#s#0#0').
name_ref(p_search_char_242, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;CC)Ljava/lang/String;#searchChar#0#1').
name_ref(p_search_char_40, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;I)I#searchChar#0#1').
name_ref(p_search_char_42, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;II)I#searchChar#0#1').
name_ref(p_search_char_62, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;I)I#searchChar#0#1').
name_ref(p_search_char_64, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;II)I#searchChar#0#1').
name_ref(p_search_char_80, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/CharSequence;I)Z#searchChar#0#1').
name_ref(p_search_chars_103, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/CharSequence;[C)Z#searchChars#0#1').
name_ref(p_search_chars_245, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#searchChars#0#1').
name_ref(p_search_chars_87, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/CharSequence;[C)I#searchChars#0#1').
name_ref(p_search_chars_89, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I#searchChars#0#1').
name_ref(p_search_chars_91, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/CharSequence;[C)Z#searchChars#0#1').
name_ref(p_search_chars_93, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#searchChars#0#1').
name_ref(p_search_chars_95, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/CharSequence;[C)I#searchChars#0#1').
name_ref(p_search_chars_97, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#searchChars#0#1').
name_ref(p_search_list_231, param, 'searchList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#searchList#0#1').
name_ref(p_search_list_234, param, 'searchList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#searchList#0#1').
name_ref(p_search_list_237, param, 'searchList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#searchList#0#1').
name_ref(p_search_seq_45, param, 'searchSeq', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#searchSeq#0#1').
name_ref(p_search_seq_47, param, 'searchSeq', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#searchSeq#0#1').
name_ref(p_search_seq_67, param, 'searchSeq', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#searchSeq#0#1').
name_ref(p_search_seq_72, param, 'searchSeq', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#searchSeq#0#1').
name_ref(p_search_seq_82, param, 'searchSeq', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#searchSeq#0#1').
name_ref(p_search_str_50, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#searchStr#0#1').
name_ref(p_search_str_53, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I#searchStr#0#1').
name_ref(p_search_str_57, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#searchStr#0#1').
name_ref(p_search_str_59, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#searchStr#0#1').
name_ref(p_search_str_69, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#searchStr#0#1').
name_ref(p_search_str_75, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#searchStr#0#1').
name_ref(p_search_str_77, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#searchStr#0#1').
name_ref(p_search_str_84, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#searchStr#0#1').
name_ref(p_search_string_221, param, 'searchString', 'Lorg/apache/commons/lang3/StringUtils;.replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#searchString#0#1').
name_ref(p_search_string_224, param, 'searchString', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#searchString#0#1').
name_ref(p_search_string_227, param, 'searchString', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#searchString#0#1').
name_ref(p_search_strings_345, param, 'searchStrings', 'Lorg/apache/commons/lang3/StringUtils;.startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z#searchStrings#0#1').
name_ref(p_search_strings_355, param, 'searchStrings', 'Lorg/apache/commons/lang3/StringUtils;.endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z#searchStrings#0#1').
name_ref(p_search_strs_107, param, 'searchStrs', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I#searchStrs#0#1').
name_ref(p_search_strs_109, param, 'searchStrs', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I#searchStrs#0#1').
name_ref(p_sep_str_376, param, 'sepStr', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplit(CLjava/lang/String;C)V#sepStr#0#1').
name_ref(p_sep_str_379, param, 'sepStr', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplitPreserveAllTokens(CLjava/lang/String;C)V#sepStr#0#1').
name_ref(p_separator_123, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_125, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_127, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_129, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_147, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#separator#0#1').
name_ref(p_separator_149, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#separator#0#1').
name_ref(p_separator_152, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#separator#0#1').
name_ref(p_separator_154, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#separator#0#1').
name_ref(p_separator_157, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#separator#0#1').
name_ref(p_separator_181, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;C)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_183, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_191, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_193, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_200, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;C)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_202, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_204, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;C)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_206, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_253, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_258, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_375, param, 'separator', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplit(CLjava/lang/String;C)V#separator#0#0').
name_ref(p_separator_378, param, 'separator', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplitPreserveAllTokens(CLjava/lang/String;C)V#separator#0#0').
name_ref(p_separator_char_140, param, 'separatorChar', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;C)[Ljava/lang/String;#separatorChar#0#1').
name_ref(p_separator_char_162, param, 'separatorChar', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;#separatorChar#0#1').
name_ref(p_separator_char_164, param, 'separatorChar', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;#separatorChar#0#1').
name_ref(p_separator_char_317, param, 'separatorChar', 'Lorg/apache/commons/lang3/StringUtils;.reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;#separatorChar#0#1').
name_ref(p_separator_chars_142, param, 'separatorChars', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#separatorChars#0#1').
name_ref(p_separator_chars_144, param, 'separatorChars', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#separatorChars#0#1').
name_ref(p_separator_chars_167, param, 'separatorChars', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#separatorChars#0#1').
name_ref(p_separator_chars_169, param, 'separatorChars', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#separatorChars#0#1').
name_ref(p_separator_chars_172, param, 'separatorChars', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#separatorChars#0#1').
name_ref(p_seq_39, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;I)I#seq#0#0').
name_ref(p_seq_41, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;II)I#seq#0#0').
name_ref(p_seq_44, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#seq#0#0').
name_ref(p_seq_46, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#seq#0#0').
name_ref(p_seq_61, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;I)I#seq#0#0').
name_ref(p_seq_63, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;II)I#seq#0#0').
name_ref(p_seq_66, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#seq#0#0').
name_ref(p_seq_71, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#seq#0#0').
name_ref(p_seq_79, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/CharSequence;I)Z#seq#0#0').
name_ref(p_seq_81, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#seq#0#0').
name_ref(p_seq_85, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.containsWhitespace(Ljava/lang/CharSequence;)Z#seq#0#0').
name_ref(p_seq_96, param, 'seq', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#seq#0#0').
name_ref(p_size_263, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;I)Ljava/lang/String;#size#0#1').
name_ref(p_size_265, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;IC)Ljava/lang/String;#size#0#1').
name_ref(p_size_268, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#size#0#1').
name_ref(p_size_271, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;I)Ljava/lang/String;#size#0#1').
name_ref(p_size_273, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;IC)Ljava/lang/String;#size#0#1').
name_ref(p_size_276, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#size#0#1').
name_ref(p_size_280, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;I)Ljava/lang/String;#size#0#1').
name_ref(p_size_282, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;IC)Ljava/lang/String;#size#0#1').
name_ref(p_size_285, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#size#0#1').
name_ref(p_start_111, param, 'start', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;I)Ljava/lang/String;#start#0#1').
name_ref(p_start_113, param, 'start', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;II)Ljava/lang/String;#start#0#1').
name_ref(p_start_249, param, 'start', 'Lorg/apache/commons/lang3/StringUtils;.overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;#start#0#2').
name_ref(p_start_index_184, param, 'startIndex', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;#startIndex#0#2').
name_ref(p_start_index_194, param, 'startIndex', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;#startIndex#0#2').
name_ref(p_start_pos_43, param, 'startPos', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;II)I#startPos#0#2').
name_ref(p_start_pos_48, param, 'startPos', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#startPos#0#2').
name_ref(p_start_pos_60, param, 'startPos', 'Lorg/apache/commons/lang3/StringUtils;.indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#startPos#0#2').
name_ref(p_start_pos_65, param, 'startPos', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;II)I#startPos#0#2').
name_ref(p_start_pos_73, param, 'startPos', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#startPos#0#2').
name_ref(p_start_pos_78, param, 'startPos', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#startPos#0#2').
name_ref(p_str_10, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.stripToNull(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_106, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I#str#0#0').
name_ref(p_str_108, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I#str#0#0').
name_ref(p_str_11, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.stripToEmpty(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_110, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_112, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;II)Ljava/lang/String;#str#0#0').
name_ref(p_str_115, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.left(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_117, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.right(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_119, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.mid(Ljava/lang/String;II)Ljava/lang/String;#str#0#0').
name_ref(p_str_12, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_122, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_124, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_126, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_128, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_130, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_132, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_135, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_138, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_139, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;C)[Ljava/lang/String;#str#0#0').
name_ref(p_str_14, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_141, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_143, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#str#0#0').
name_ref(p_str_146, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_148, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#str#0#0').
name_ref(p_str_151, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_153, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#str#0#0').
name_ref(p_str_156, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#str#0#0').
name_ref(p_str_16, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_160, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_161, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;#str#0#0').
name_ref(p_str_163, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;#str#0#0').
name_ref(p_str_166, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_168, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#str#0#0').
name_ref(p_str_171, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#str#0#0').
name_ref(p_str_175, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_176, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_177, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;#str#0#0').
name_ref(p_str_1_326, param, 'str1', 'Lorg/apache/commons/lang3/StringUtils;.difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str1#0#0').
name_ref(p_str_1_37, param, 'str1', 'Lorg/apache/commons/lang3/StringUtils;.equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#str1#0#0').
name_ref(p_str_207, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_208, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_210, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_212, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_214, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_216, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_218, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;C)Ljava/lang/String;#str#0#0').
name_ref(p_str_241, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;CC)Ljava/lang/String;#str#0#0').
name_ref(p_str_244, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_247, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;#str#0#0').
name_ref(p_str_251, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.chomp(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_252, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_254, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.chop(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_255, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_257, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_262, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_264, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;IC)Ljava/lang/String;#str#0#0').
name_ref(p_str_267, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_270, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_272, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;IC)Ljava/lang/String;#str#0#0').
name_ref(p_str_275, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_279, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_281, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;IC)Ljava/lang/String;#str#0#0').
name_ref(p_str_284, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_287, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.upperCase(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_288, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;#str#0#0').
name_ref(p_str_290, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lowerCase(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_291, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;#str#0#0').
name_ref(p_str_293, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.capitalize(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_294, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.uncapitalize(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_295, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.swapCase(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_296, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#str#0#0').
name_ref(p_str_2_327, param, 'str2', 'Lorg/apache/commons/lang3/StringUtils;.difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str2#0#1').
name_ref(p_str_2_38, param, 'str2', 'Lorg/apache/commons/lang3/StringUtils;.equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#str2#0#1').
name_ref(p_str_308, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.defaultString(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_309, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_311, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.defaultIfBlank<T::Ljava/lang/CharSequence;>(TT;TT;)TT;#str#0#0').
name_ref(p_str_313, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.defaultIfEmpty<T::Ljava/lang/CharSequence;>(TT;TT;)TT;#str#0#0').
name_ref(p_str_315, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.reverse(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_316, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;#str#0#0').
name_ref(p_str_318, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_320, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;II)Ljava/lang/String;#str#0#0').
name_ref(p_str_323, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_337, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#str#0#0').
name_ref(p_str_339, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#str#0#0').
name_ref(p_str_341, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z#str#0#0').
name_ref(p_str_346, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#str#0#0').
name_ref(p_str_348, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#str#0#0').
name_ref(p_str_350, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z#str#0#0').
name_ref(p_str_353, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.normalizeSpace(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_49, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#str#0#0').
name_ref(p_str_52, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I#str#0#0').
name_ref(p_str_56, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#str#0#0').
name_ref(p_str_58, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#str#0#0').
name_ref(p_str_6, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.trim(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_68, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#str#0#0').
name_ref(p_str_7, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.trimToNull(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_74, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#str#0#0').
name_ref(p_str_76, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#str#0#0').
name_ref(p_str_8, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.trimToEmpty(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_83, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#str#0#0').
name_ref(p_str_9, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.strip(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_string_344, param, 'string', 'Lorg/apache/commons/lang3/StringUtils;.startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z#string#0#0').
name_ref(p_string_354, param, 'string', 'Lorg/apache/commons/lang3/StringUtils;.endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z#string#0#0').
name_ref(p_strip_chars_13, param, 'stripChars', 'Lorg/apache/commons/lang3/StringUtils;.strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#stripChars#0#1').
name_ref(p_strip_chars_15, param, 'stripChars', 'Lorg/apache/commons/lang3/StringUtils;.stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#stripChars#0#1').
name_ref(p_strip_chars_17, param, 'stripChars', 'Lorg/apache/commons/lang3/StringUtils;.stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#stripChars#0#1').
name_ref(p_strip_chars_20, param, 'stripChars', 'Lorg/apache/commons/lang3/StringUtils;.stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#stripChars#0#1').
name_ref(p_strs_18, param, 'strs', 'Lorg/apache/commons/lang3/StringUtils;.stripAll([Ljava/lang/String;)[Ljava/lang/String;#strs#0#0').
name_ref(p_strs_19, param, 'strs', 'Lorg/apache/commons/lang3/StringUtils;.stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#strs#0#0').
name_ref(p_strs_331, param, 'strs', 'Lorg/apache/commons/lang3/StringUtils;.getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;#strs#0#0').
name_ref(p_sub_297, param, 'sub', 'Lorg/apache/commons/lang3/StringUtils;.countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#sub#0#1').
name_ref(p_suffix_347, param, 'suffix', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#suffix#0#1').
name_ref(p_suffix_349, param, 'suffix', 'Lorg/apache/commons/lang3/StringUtils;.endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z#suffix#0#1').
name_ref(p_suffix_351, param, 'suffix', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z#suffix#0#1').
name_ref(p_t_333, param, 't', 'Lorg/apache/commons/lang3/StringUtils;.getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I#t#0#1').
name_ref(p_t_335, param, 't', 'Lorg/apache/commons/lang3/StringUtils;.getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#t#0#1').
name_ref(p_tag_131, param, 'tag', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#tag#0#1').
name_ref(p_text_22, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;|Ljava/lang/IllegalAccessException;|Ljava/lang/reflect/InvocationTargetException;#text#0#0').
name_ref(p_text_220, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#text#0#0').
name_ref(p_text_223, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#text#0#0').
name_ref(p_text_226, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#text#0#0').
name_ref(p_text_23, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;|Ljava/lang/IllegalAccessException;|Ljava/lang/reflect/InvocationTargetException;#text#0#0').
name_ref(p_text_230, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#text#0#0').
name_ref(p_text_233, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#text#0#0').
name_ref(p_text_236, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#text#0#0').
name_ref(p_threshold_336, param, 'threshold', 'Lorg/apache/commons/lang3/StringUtils;.getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I#threshold#0#2').
name_ref(p_time_to_live_240, param, 'timeToLive', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#timeToLive#0#4').
name_ref(p_valid_99, param, 'valid', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/CharSequence;[C)Z#valid#0#1').
name_ref(p_valid_chars_101, param, 'validChars', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z#validChars#0#1').
name_ref(f_array_list_366, field, 'ARRAY_LIST', 'Lorg/apache/commons/lang3/StringUtilsTest;.ARRAY_LIST)[Ljava/lang/String;').
name_ref(f_empty_187, field, 'EMPTY', 'Lorg/apache/commons/lang3/StringUtils;.EMPTY)Ljava/lang/String;').
name_ref(f_empty_array_list_367, field, 'EMPTY_ARRAY_LIST', 'Lorg/apache/commons/lang3/StringUtilsTest;.EMPTY_ARRAY_LIST)[Ljava/lang/String;').
name_ref(f_java_6available_27, field, 'java6Available', 'Lorg/apache/commons/lang3/StringUtils;.java6Available)Z').
name_ref(f_java_6normalize_method_28, field, 'java6NormalizeMethod', 'Lorg/apache/commons/lang3/StringUtils;.java6NormalizeMethod)Ljava/lang/reflect/Method;').
name_ref(f_java_6normalizer_form_nfd_29, field, 'java6NormalizerFormNFD', 'Lorg/apache/commons/lang3/StringUtils;.java6NormalizerFormNFD)Ljava/lang/Object;').
name_ref(f_java_6pattern_30, field, 'java6Pattern', 'Lorg/apache/commons/lang3/StringUtils;.java6Pattern)Ljava/util/regex/Pattern;').
name_ref(f_mixed_array_list_370, field, 'MIXED_ARRAY_LIST', 'Lorg/apache/commons/lang3/StringUtilsTest;.MIXED_ARRAY_LIST)[Ljava/lang/String;').
name_ref(f_mixed_type_list_371, field, 'MIXED_TYPE_LIST', 'Lorg/apache/commons/lang3/StringUtilsTest;.MIXED_TYPE_LIST)[Ljava/lang/Object;').
name_ref(f_non_trimmable_365, field, 'NON_TRIMMABLE', 'Lorg/apache/commons/lang3/StringUtilsTest;.NON_TRIMMABLE)Ljava/lang/String;').
name_ref(f_non_whitespace_363, field, 'NON_WHITESPACE', 'Lorg/apache/commons/lang3/StringUtilsTest;.NON_WHITESPACE)Ljava/lang/String;').
name_ref(f_null_array_list_368, field, 'NULL_ARRAY_LIST', 'Lorg/apache/commons/lang3/StringUtilsTest;.NULL_ARRAY_LIST)[Ljava/lang/String;').
name_ref(f_null_to_string_list_369, field, 'NULL_TO_STRING_LIST', 'Lorg/apache/commons/lang3/StringUtilsTest;.NULL_TO_STRING_LIST)[Ljava/lang/Object;').
name_ref(f_separator_char_374, field, 'SEPARATOR_CHAR', 'Lorg/apache/commons/lang3/StringUtilsTest;.SEPARATOR_CHAR)C').
name_ref(f_sun_available_24, field, 'sunAvailable', 'Lorg/apache/commons/lang3/StringUtils;.sunAvailable)Z').
name_ref(f_sun_decompose_method_25, field, 'sunDecomposeMethod', 'Lorg/apache/commons/lang3/StringUtils;.sunDecomposeMethod)Ljava/lang/reflect/Method;').
name_ref(f_sun_pattern_26, field, 'sunPattern', 'Lorg/apache/commons/lang3/StringUtils;.sunPattern)Ljava/util/regex/Pattern;').
name_ref(f_text_list_char_373, field, 'TEXT_LIST_CHAR', 'Lorg/apache/commons/lang3/StringUtilsTest;.TEXT_LIST_CHAR)Ljava/lang/String;').
name_ref(f_trimmable_364, field, 'TRIMMABLE', 'Lorg/apache/commons/lang3/StringUtilsTest;.TRIMMABLE)Ljava/lang/String;').
name_ref(f_whitespace_362, field, 'WHITESPACE', 'Lorg/apache/commons/lang3/StringUtilsTest;.WHITESPACE)Ljava/lang/String;').
name_ref(f_whitespace_block_1, field, 'WHITESPACE_BLOCK', 'Lorg/apache/commons/lang3/StringUtils;.WHITESPACE_BLOCK)Ljava/util/regex/Pattern;').
name_ref(m_abbreviate_161, method, 'abbreviate', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_abbreviate_162, method, 'abbreviate', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;II)Ljava/lang/String;').
name_ref(m_abbreviate_middle_163, method, 'abbreviateMiddle', 'Lorg/apache/commons/lang3/StringUtils;.abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_append_97, method, 'append', 'Ljava/lang/StringBuilder;.append(C)Ljava/lang/StringBuilder;').
name_ref(m_append_98, method, 'append', 'Ljava/lang/StringBuilder;.append(Ljava/lang/Object;)Ljava/lang/StringBuilder;').
name_ref(m_assert_abbreviate_with_offset_251, method, 'assertAbbreviateWithOffset', 'Lorg/apache/commons/lang3/StringUtilsTest;.assertAbbreviateWithOffset(Ljava/lang/String;II)V').
name_ref(m_assert_equals_190, method, 'assertEquals', 'Ljunit/framework/TestCase;.assertEquals(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_capitalize_141, method, 'capitalize', 'Lorg/apache/commons/lang3/StringUtils;.capitalize(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_center_134, method, 'center', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_center_135, method, 'center', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;IC)Ljava/lang/String;').
name_ref(m_center_136, method, 'center', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;').
name_ref(m_chomp_121, method, 'chomp', 'Lorg/apache/commons/lang3/StringUtils;.chomp(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_chomp_122, method, 'chomp', 'Lorg/apache/commons/lang3/StringUtils;.chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_chop_123, method, 'chop', 'Lorg/apache/commons/lang3/StringUtils;.chop(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_compile_1, method, 'compile', 'Ljava/util/regex/Pattern;.compile(Ljava/lang/String;)Ljava/util/regex/Pattern;').
name_ref(m_contains_44, method, 'contains', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/CharSequence;I)Z').
name_ref(m_contains_45, method, 'contains', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z').
name_ref(m_contains_any_50, method, 'containsAny', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/CharSequence;[C)Z').
name_ref(m_contains_any_51, method, 'containsAny', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z').
name_ref(m_contains_ignore_case_46, method, 'containsIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z').
name_ref(m_contains_none_56, method, 'containsNone', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/CharSequence;[C)Z').
name_ref(m_contains_none_57, method, 'containsNone', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z').
name_ref(m_contains_only_54, method, 'containsOnly', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/CharSequence;[C)Z').
name_ref(m_contains_only_55, method, 'containsOnly', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z').
name_ref(m_contains_whitespace_47, method, 'containsWhitespace', 'Lorg/apache/commons/lang3/StringUtils;.containsWhitespace(Ljava/lang/CharSequence;)Z').
name_ref(m_count_matches_144, method, 'countMatches', 'Lorg/apache/commons/lang3/StringUtils;.countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I').
name_ref(m_current_thread_23, method, 'currentThread', 'Ljava/lang/Thread;.currentThread()Ljava/lang/Thread;').
name_ref(m_default_if_blank_157, method, 'defaultIfBlank', 'Lorg/apache/commons/lang3/StringUtils;.defaultIfBlank<T::Ljava/lang/CharSequence;>(TT;TT;)TT;').
name_ref(m_default_if_empty_158, method, 'defaultIfEmpty', 'Lorg/apache/commons/lang3/StringUtils;.defaultIfEmpty<T::Ljava/lang/CharSequence;>(TT;TT;)TT;').
name_ref(m_default_string_155, method, 'defaultString', 'Lorg/apache/commons/lang3/StringUtils;.defaultString(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_default_string_156, method, 'defaultString', 'Lorg/apache/commons/lang3/StringUtils;.defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_delete_whitespace_105, method, 'deleteWhitespace', 'Lorg/apache/commons/lang3/StringUtils;.deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_difference_164, method, 'difference', 'Lorg/apache/commons/lang3/StringUtils;.difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_ends_with_174, method, 'endsWith', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z').
name_ref(m_ends_with_176, method, 'endsWith', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z').
name_ref(m_ends_with_any_178, method, 'endsWithAny', 'Lorg/apache/commons/lang3/StringUtils;.endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z').
name_ref(m_ends_with_ignore_case_175, method, 'endsWithIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z').
name_ref(m_equals_27, method, 'equals', 'Lorg/apache/commons/lang3/StringUtils;.equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z').
name_ref(m_equals_ignore_case_28, method, 'equalsIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z').
name_ref(m_get_24, method, 'get', 'Ljava/lang/reflect/Field;.get(Ljava/lang/Object;)Ljava/lang/Object;|Ljava/lang/IllegalArgumentException;|Ljava/lang/IllegalAccessException;').
name_ref(m_get_common_prefix_167, method, 'getCommonPrefix', 'Lorg/apache/commons/lang3/StringUtils;.getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_context_class_loader_22, method, 'getContextClassLoader', 'Ljava/lang/Thread;.getContextClassLoader()Ljava/lang/ClassLoader;').
name_ref(m_get_field_25, method, 'getField', 'Ljava/lang/Class;.getField(Ljava/lang/String;)Ljava/lang/reflect/Field;|Ljava/lang/NoSuchFieldException;|Ljava/lang/SecurityException;').
name_ref(m_get_levenshtein_distance_168, method, 'getLevenshteinDistance', 'Lorg/apache/commons/lang3/StringUtils;.getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I').
name_ref(m_get_levenshtein_distance_169, method, 'getLevenshteinDistance', 'Lorg/apache/commons/lang3/StringUtils;.getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I').
name_ref(m_get_method_26, method, 'getMethod', 'Ljava/lang/Class;.getMethod(Ljava/lang/String;[Ljava/lang/Class<*>;)Ljava/lang/reflect/Method;|Ljava/lang/NoSuchMethodException;|Ljava/lang/SecurityException;').
name_ref(m_index_of_29, method, 'indexOf', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;I)I').
name_ref(m_index_of_30, method, 'indexOf', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;II)I').
name_ref(m_index_of_31, method, 'indexOf', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I').
name_ref(m_index_of_32, method, 'indexOf', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I').
name_ref(m_index_of_any_48, method, 'indexOfAny', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/CharSequence;[C)I').
name_ref(m_index_of_any_49, method, 'indexOfAny', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I').
name_ref(m_index_of_any_58, method, 'indexOfAny', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I').
name_ref(m_index_of_any_but_52, method, 'indexOfAnyBut', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/CharSequence;[C)I').
name_ref(m_index_of_any_but_53, method, 'indexOfAnyBut', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I').
name_ref(m_index_of_difference_165, method, 'indexOfDifference', 'Lorg/apache/commons/lang3/StringUtils;.indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I').
name_ref(m_index_of_difference_166, method, 'indexOfDifference', 'Lorg/apache/commons/lang3/StringUtils;.indexOfDifference([Ljava/lang/CharSequence;)I').
name_ref(m_index_of_ignore_case_35, method, 'indexOfIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I').
name_ref(m_index_of_ignore_case_36, method, 'indexOfIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I').
name_ref(m_inner_test_split_200, method, 'innerTestSplit', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplit(CLjava/lang/String;C)V').
name_ref(m_inner_test_split_preserve_all_tokens_207, method, 'innerTestSplitPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplitPreserveAllTokens(CLjava/lang/String;C)V').
name_ref(m_is_all_lower_case_153, method, 'isAllLowerCase', 'Lorg/apache/commons/lang3/StringUtils;.isAllLowerCase(Ljava/lang/CharSequence;)Z').
name_ref(m_is_all_upper_case_154, method, 'isAllUpperCase', 'Lorg/apache/commons/lang3/StringUtils;.isAllUpperCase(Ljava/lang/CharSequence;)Z').
name_ref(m_is_alpha_145, method, 'isAlpha', 'Lorg/apache/commons/lang3/StringUtils;.isAlpha(Ljava/lang/CharSequence;)Z').
name_ref(m_is_alpha_space_146, method, 'isAlphaSpace', 'Lorg/apache/commons/lang3/StringUtils;.isAlphaSpace(Ljava/lang/CharSequence;)Z').
name_ref(m_is_alphanumeric_147, method, 'isAlphanumeric', 'Lorg/apache/commons/lang3/StringUtils;.isAlphanumeric(Ljava/lang/CharSequence;)Z').
name_ref(m_is_alphanumeric_space_148, method, 'isAlphanumericSpace', 'Lorg/apache/commons/lang3/StringUtils;.isAlphanumericSpace(Ljava/lang/CharSequence;)Z').
name_ref(m_is_ascii_printable_149, method, 'isAsciiPrintable', 'Lorg/apache/commons/lang3/StringUtils;.isAsciiPrintable(Ljava/lang/CharSequence;)Z').
name_ref(m_is_blank_5, method, 'isBlank', 'Lorg/apache/commons/lang3/StringUtils;.isBlank(Ljava/lang/CharSequence;)Z').
name_ref(m_is_empty_3, method, 'isEmpty', 'Lorg/apache/commons/lang3/StringUtils;.isEmpty(Ljava/lang/CharSequence;)Z').
name_ref(m_is_not_blank_6, method, 'isNotBlank', 'Lorg/apache/commons/lang3/StringUtils;.isNotBlank(Ljava/lang/CharSequence;)Z').
name_ref(m_is_not_empty_4, method, 'isNotEmpty', 'Lorg/apache/commons/lang3/StringUtils;.isNotEmpty(Ljava/lang/CharSequence;)Z').
name_ref(m_is_numeric_150, method, 'isNumeric', 'Lorg/apache/commons/lang3/StringUtils;.isNumeric(Ljava/lang/CharSequence;)Z').
name_ref(m_is_numeric_space_151, method, 'isNumericSpace', 'Lorg/apache/commons/lang3/StringUtils;.isNumericSpace(Ljava/lang/CharSequence;)Z').
name_ref(m_is_whitespace_152, method, 'isWhitespace', 'Lorg/apache/commons/lang3/StringUtils;.isWhitespace(Ljava/lang/CharSequence;)Z').
name_ref(m_is_whitespace_179, method, 'isWhitespace', 'Ljava/lang/Character;.isWhitespace(C)Z').
name_ref(m_join_100, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;').
name_ref(m_join_101, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;C)Ljava/lang/String;').
name_ref(m_join_102, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_join_103, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;C)Ljava/lang/String;').
name_ref(m_join_104, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_join_90, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join<T:Ljava/lang/Object;>([TT;)Ljava/lang/String;').
name_ref(m_join_91, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_join_92, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;C)Ljava/lang/String;').
name_ref(m_join_93, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;').
name_ref(m_last_index_of_37, method, 'lastIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;I)I').
name_ref(m_last_index_of_38, method, 'lastIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;II)I').
name_ref(m_last_index_of_39, method, 'lastIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I').
name_ref(m_last_index_of_41, method, 'lastIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I').
name_ref(m_last_index_of_any_59, method, 'lastIndexOfAny', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I').
name_ref(m_last_index_of_ignore_case_42, method, 'lastIndexOfIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I').
name_ref(m_last_index_of_ignore_case_43, method, 'lastIndexOfIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I').
name_ref(m_last_ordinal_index_of_40, method, 'lastOrdinalIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I').
name_ref(m_left_62, method, 'left', 'Lorg/apache/commons/lang3/StringUtils;.left(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_left_pad_130, method, 'leftPad', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_left_pad_131, method, 'leftPad', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;IC)Ljava/lang/String;').
name_ref(m_left_pad_132, method, 'leftPad', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;').
name_ref(m_length_133, method, 'length', 'Lorg/apache/commons/lang3/StringUtils;.length(Ljava/lang/CharSequence;)I').
name_ref(m_length_95, method, 'length', 'Ljava/lang/String;.length()I').
name_ref(m_load_class_21, method, 'loadClass', 'Ljava/lang/ClassLoader;.loadClass(Ljava/lang/String;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;').
name_ref(m_lower_case_139, method, 'lowerCase', 'Lorg/apache/commons/lang3/StringUtils;.lowerCase(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_lower_case_140, method, 'lowerCase', 'Lorg/apache/commons/lang3/StringUtils;.lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;').
name_ref(m_mid_64, method, 'mid', 'Lorg/apache/commons/lang3/StringUtils;.mid(Ljava/lang/String;II)Ljava/lang/String;').
name_ref(m_normalize_space_177, method, 'normalizeSpace', 'Lorg/apache/commons/lang3/StringUtils;.normalizeSpace(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_ordinal_index_of_33, method, 'ordinalIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I').
name_ref(m_ordinal_index_of_34, method, 'ordinalIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I').
name_ref(m_overlay_120, method, 'overlay', 'Lorg/apache/commons/lang3/StringUtils;.overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;').
name_ref(m_remove_110, method, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_remove_111, method, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;C)Ljava/lang/String;').
name_ref(m_remove_accents_java6_19, method, 'removeAccentsJava6', 'Lorg/apache/commons/lang3/StringUtils;.removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;|Ljava/lang/IllegalAccessException;|Ljava/lang/reflect/InvocationTargetException;').
name_ref(m_remove_accents_sun_20, method, 'removeAccentsSUN', 'Lorg/apache/commons/lang3/StringUtils;.removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;|Ljava/lang/IllegalAccessException;|Ljava/lang/reflect/InvocationTargetException;').
name_ref(m_remove_end_108, method, 'removeEnd', 'Lorg/apache/commons/lang3/StringUtils;.removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_remove_end_ignore_case_109, method, 'removeEndIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_remove_start_106, method, 'removeStart', 'Lorg/apache/commons/lang3/StringUtils;.removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_remove_start_ignore_case_107, method, 'removeStartIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_repeat_124, method, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_repeat_125, method, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_repeat_126, method, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.repeat(CI)Ljava/lang/String;').
name_ref(m_replace_113, method, 'replace', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_replace_114, method, 'replace', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_replace_chars_118, method, 'replaceChars', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;CC)Ljava/lang/String;').
name_ref(m_replace_chars_119, method, 'replaceChars', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_replace_each_115, method, 'replaceEach', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_replace_each_117, method, 'replaceEach', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;').
name_ref(m_replace_each_repeatedly_116, method, 'replaceEachRepeatedly', 'Lorg/apache/commons/lang3/StringUtils;.replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_replace_once_112, method, 'replaceOnce', 'Lorg/apache/commons/lang3/StringUtils;.replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_reverse_159, method, 'reverse', 'Lorg/apache/commons/lang3/StringUtils;.reverse(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_reverse_delimited_160, method, 'reverseDelimited', 'Lorg/apache/commons/lang3/StringUtils;.reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;').
name_ref(m_right_63, method, 'right', 'Lorg/apache/commons/lang3/StringUtils;.right(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_right_pad_127, method, 'rightPad', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_right_pad_128, method, 'rightPad', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;IC)Ljava/lang/String;').
name_ref(m_right_pad_129, method, 'rightPad', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;').
name_ref(m_split_72, method, 'split', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_73, method, 'split', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;C)[Ljava/lang/String;').
name_ref(m_split_74, method, 'split', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_75, method, 'split', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;').
name_ref(m_split_by_character_type_87, method, 'splitByCharacterType', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_by_character_type_89, method, 'splitByCharacterType', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;').
name_ref(m_split_by_character_type_camel_case_88, method, 'splitByCharacterTypeCamelCase', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_by_whole_separator_76, method, 'splitByWholeSeparator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_by_whole_separator_77, method, 'splitByWholeSeparator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;').
name_ref(m_split_by_whole_separator_preserve_all_tokens_78, method, 'splitByWholeSeparatorPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_by_whole_separator_preserve_all_tokens_79, method, 'splitByWholeSeparatorPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;').
name_ref(m_split_by_whole_separator_worker_80, method, 'splitByWholeSeparatorWorker', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;').
name_ref(m_split_preserve_all_tokens_81, method, 'splitPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_preserve_all_tokens_82, method, 'splitPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;').
name_ref(m_split_preserve_all_tokens_84, method, 'splitPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_preserve_all_tokens_85, method, 'splitPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;').
name_ref(m_split_worker_83, method, 'splitWorker', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;').
name_ref(m_split_worker_86, method, 'splitWorker', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;').
name_ref(m_starts_with_170, method, 'startsWith', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z').
name_ref(m_starts_with_172, method, 'startsWith', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z').
name_ref(m_starts_with_any_173, method, 'startsWithAny', 'Lorg/apache/commons/lang3/StringUtils;.startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z').
name_ref(m_starts_with_ignore_case_171, method, 'startsWithIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z').
name_ref(m_string_builder_94, method, 'StringBuilder', 'Ljava/lang/StringBuilder;.(I)V').
name_ref(m_string_utils_2, method, 'StringUtils', 'Lorg/apache/commons/lang3/StringUtils;.()V').
name_ref(m_string_utils_test_183, method, 'StringUtilsTest', 'Lorg/apache/commons/lang3/StringUtilsTest;.(Ljava/lang/String;)V').
name_ref(m_strip_10, method, 'strip', 'Lorg/apache/commons/lang3/StringUtils;.strip(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_13, method, 'strip', 'Lorg/apache/commons/lang3/StringUtils;.strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_accents_18, method, 'stripAccents', 'Lorg/apache/commons/lang3/StringUtils;.stripAccents(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_all_16, method, 'stripAll', 'Lorg/apache/commons/lang3/StringUtils;.stripAll([Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_strip_all_17, method, 'stripAll', 'Lorg/apache/commons/lang3/StringUtils;.stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_strip_end_15, method, 'stripEnd', 'Lorg/apache/commons/lang3/StringUtils;.stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_start_14, method, 'stripStart', 'Lorg/apache/commons/lang3/StringUtils;.stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_to_empty_12, method, 'stripToEmpty', 'Lorg/apache/commons/lang3/StringUtils;.stripToEmpty(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_to_null_11, method, 'stripToNull', 'Lorg/apache/commons/lang3/StringUtils;.stripToNull(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_60, method, 'substring', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_substring_61, method, 'substring', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;II)Ljava/lang/String;').
name_ref(m_substring_after_66, method, 'substringAfter', 'Lorg/apache/commons/lang3/StringUtils;.substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_after_last_68, method, 'substringAfterLast', 'Lorg/apache/commons/lang3/StringUtils;.substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_before_65, method, 'substringBefore', 'Lorg/apache/commons/lang3/StringUtils;.substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_before_last_67, method, 'substringBeforeLast', 'Lorg/apache/commons/lang3/StringUtils;.substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_between_69, method, 'substringBetween', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_between_70, method, 'substringBetween', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substrings_between_71, method, 'substringsBetween', 'Lorg/apache/commons/lang3/StringUtils;.substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_swap_case_143, method, 'swapCase', 'Lorg/apache/commons/lang3/StringUtils;.swapCase(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_test_abbreviate__string_int_249, method, 'testAbbreviate_StringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testAbbreviate_StringInt()V').
name_ref(m_test_abbreviate__string_int_int_250, method, 'testAbbreviate_StringIntInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testAbbreviate_StringIntInt()V').
name_ref(m_test_abbreviate_middle_252, method, 'testAbbreviateMiddle', 'Lorg/apache/commons/lang3/StringUtilsTest;.testAbbreviateMiddle()V').
name_ref(m_test_case_184, method, 'TestCase', 'Ljunit/framework/TestCase;.(Ljava/lang/String;)V').
name_ref(m_test_case_functions_186, method, 'testCaseFunctions', 'Lorg/apache/commons/lang3/StringUtilsTest;.testCaseFunctions()V').
name_ref(m_test_center__string_int_234, method, 'testCenter_StringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testCenter_StringInt()V').
name_ref(m_test_center__string_int_char_235, method, 'testCenter_StringIntChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testCenter_StringIntChar()V').
name_ref(m_test_center__string_int_string_236, method, 'testCenter_StringIntString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testCenter_StringIntString()V').
name_ref(m_test_chomp_223, method, 'testChomp', 'Lorg/apache/commons/lang3/StringUtilsTest;.testChomp()V').
name_ref(m_test_chop_222, method, 'testChop', 'Lorg/apache/commons/lang3/StringUtilsTest;.testChop()V').
name_ref(m_test_constructor_185, method, 'testConstructor', 'Lorg/apache/commons/lang3/StringUtilsTest;.testConstructor()V').
name_ref(m_test_default__string_239, method, 'testDefault_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefault_String()V').
name_ref(m_test_default__string_string_240, method, 'testDefault_StringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefault_StringString()V').
name_ref(m_test_default_if_blank__char_buffers_248, method, 'testDefaultIfBlank_CharBuffers', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefaultIfBlank_CharBuffers()V').
name_ref(m_test_default_if_blank__string_buffers_246, method, 'testDefaultIfBlank_StringBuffers', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefaultIfBlank_StringBuffers()V').
name_ref(m_test_default_if_blank__string_builders_244, method, 'testDefaultIfBlank_StringBuilders', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefaultIfBlank_StringBuilders()V').
name_ref(m_test_default_if_blank__string_string_242, method, 'testDefaultIfBlank_StringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefaultIfBlank_StringString()V').
name_ref(m_test_default_if_empty__char_buffers_247, method, 'testDefaultIfEmpty_CharBuffers', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefaultIfEmpty_CharBuffers()V').
name_ref(m_test_default_if_empty__string_buffers_245, method, 'testDefaultIfEmpty_StringBuffers', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefaultIfEmpty_StringBuffers()V').
name_ref(m_test_default_if_empty__string_builders_243, method, 'testDefaultIfEmpty_StringBuilders', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefaultIfEmpty_StringBuilders()V').
name_ref(m_test_default_if_empty__string_string_241, method, 'testDefaultIfEmpty_StringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefaultIfEmpty_StringString()V').
name_ref(m_test_delete_whitespace__string_210, method, 'testDeleteWhitespace_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDeleteWhitespace_String()V').
name_ref(m_test_difference__string_string_253, method, 'testDifference_StringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDifference_StringString()V').
name_ref(m_test_difference_at__string_array_266, method, 'testDifferenceAt_StringArray', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDifferenceAt_StringArray()V').
name_ref(m_test_difference_at__string_string_254, method, 'testDifferenceAt_StringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDifferenceAt_StringString()V').
name_ref(m_test_empty_257, method, 'testEMPTY', 'Lorg/apache/commons/lang3/StringUtilsTest;.testEMPTY()V').
name_ref(m_test_get_common_prefix__string_array_267, method, 'testGetCommonPrefix_StringArray', 'Lorg/apache/commons/lang3/StringUtilsTest;.testGetCommonPrefix_StringArray()V').
name_ref(m_test_get_levenshtein_distance__string_string_255, method, 'testGetLevenshteinDistance_StringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testGetLevenshteinDistance_StringString()V').
name_ref(m_test_get_levenshtein_distance__string_string_int_256, method, 'testGetLevenshteinDistance_StringStringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testGetLevenshteinDistance_StringStringInt()V').
name_ref(m_test_is_all_lower_case_258, method, 'testIsAllLowerCase', 'Lorg/apache/commons/lang3/StringUtilsTest;.testIsAllLowerCase()V').
name_ref(m_test_is_all_upper_case_259, method, 'testIsAllUpperCase', 'Lorg/apache/commons/lang3/StringUtilsTest;.testIsAllUpperCase()V').
name_ref(m_test_join__array_char_191, method, 'testJoin_ArrayChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_ArrayChar()V').
name_ref(m_test_join__array_string_192, method, 'testJoin_ArrayString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_ArrayString()V').
name_ref(m_test_join__iterable_char_195, method, 'testJoin_IterableChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_IterableChar()V').
name_ref(m_test_join__iterable_string_196, method, 'testJoin_IterableString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_IterableString()V').
name_ref(m_test_join__iterator_char_193, method, 'testJoin_IteratorChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_IteratorChar()V').
name_ref(m_test_join__iterator_string_194, method, 'testJoin_IteratorString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_IteratorString()V').
name_ref(m_test_join__objectarray_189, method, 'testJoin_Objectarray', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_Objectarray()V').
name_ref(m_test_join__objects_188, method, 'testJoin_Objects', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_Objects()V').
name_ref(m_test_lang623_211, method, 'testLang623', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLang623()V').
name_ref(m_test_lang666_269, method, 'testLANG666', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLANG666()V').
name_ref(m_test_left_pad__string_int_227, method, 'testLeftPad_StringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLeftPad_StringInt()V').
name_ref(m_test_left_pad__string_int_char_228, method, 'testLeftPad_StringIntChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLeftPad_StringIntChar()V').
name_ref(m_test_left_pad__string_int_string_229, method, 'testLeftPad_StringIntString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLeftPad_StringIntString()V').
name_ref(m_test_length__char_buffer_233, method, 'testLength_CharBuffer', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLength_CharBuffer()V').
name_ref(m_test_length_string_230, method, 'testLengthString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLengthString()V').
name_ref(m_test_length_string_buffer_231, method, 'testLengthStringBuffer', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLengthStringBuffer()V').
name_ref(m_test_length_string_builder_232, method, 'testLengthStringBuilder', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLengthStringBuilder()V').
name_ref(m_test_normalize_space_268, method, 'testNormalizeSpace', 'Lorg/apache/commons/lang3/StringUtilsTest;.testNormalizeSpace()V').
name_ref(m_test_overlay__string_string_int_int_219, method, 'testOverlay_StringStringIntInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testOverlay_StringStringIntInt()V').
name_ref(m_test_remove__string_264, method, 'testRemove_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemove_String()V').
name_ref(m_test_remove_char_265, method, 'testRemove_char', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemove_char()V').
name_ref(m_test_remove_end_262, method, 'testRemoveEnd', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemoveEnd()V').
name_ref(m_test_remove_end_ignore_case_263, method, 'testRemoveEndIgnoreCase', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemoveEndIgnoreCase()V').
name_ref(m_test_remove_start_260, method, 'testRemoveStart', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemoveStart()V').
name_ref(m_test_remove_start_ignore_case_261, method, 'testRemoveStartIgnoreCase', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemoveStartIgnoreCase()V').
name_ref(m_test_repeat__string_int_220, method, 'testRepeat_StringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRepeat_StringInt()V').
name_ref(m_test_repeat__string_string_int_221, method, 'testRepeat_StringStringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRepeat_StringStringInt()V').
name_ref(m_test_replace__string_string_array_string_array_215, method, 'testReplace_StringStringArrayStringArray', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplace_StringStringArrayStringArray()V').
name_ref(m_test_replace__string_string_array_string_array_boolean_216, method, 'testReplace_StringStringArrayStringArrayBoolean', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplace_StringStringArrayStringArrayBoolean()V').
name_ref(m_test_replace__string_string_string_212, method, 'testReplace_StringStringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplace_StringStringString()V').
name_ref(m_test_replace__string_string_string_int_213, method, 'testReplace_StringStringStringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplace_StringStringStringInt()V').
name_ref(m_test_replace_chars__string_char_char_217, method, 'testReplaceChars_StringCharChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplaceChars_StringCharChar()V').
name_ref(m_test_replace_chars__string_string_string_218, method, 'testReplaceChars_StringStringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplaceChars_StringStringString()V').
name_ref(m_test_replace_once__string_string_string_214, method, 'testReplaceOnce_StringStringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplaceOnce_StringStringString()V').
name_ref(m_test_reverse__string_237, method, 'testReverse_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReverse_String()V').
name_ref(m_test_reverse_delimited__string_char_238, method, 'testReverseDelimited_StringChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReverseDelimited_StringChar()V').
name_ref(m_test_right_pad__string_int_224, method, 'testRightPad_StringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRightPad_StringInt()V').
name_ref(m_test_right_pad__string_int_char_225, method, 'testRightPad_StringIntChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRightPad_StringIntChar()V').
name_ref(m_test_right_pad__string_int_string_226, method, 'testRightPad_StringIntString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRightPad_StringIntString()V').
name_ref(m_test_split__string_197, method, 'testSplit_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplit_String()V').
name_ref(m_test_split__string_char_198, method, 'testSplit_StringChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplit_StringChar()V').
name_ref(m_test_split__string_string__string_string_int_199, method, 'testSplit_StringString_StringStringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplit_StringString_StringStringInt()V').
name_ref(m_test_split_by_character_type_208, method, 'testSplitByCharacterType', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitByCharacterType()V').
name_ref(m_test_split_by_character_type_camel_case_209, method, 'testSplitByCharacterTypeCamelCase', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitByCharacterTypeCamelCase()V').
name_ref(m_test_split_by_whole_separator_preserve_all_tokens__string_string_int_203, method, 'testSplitByWholeSeparatorPreserveAllTokens_StringStringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitByWholeSeparatorPreserveAllTokens_StringStringInt()V').
name_ref(m_test_split_by_whole_string__string_string_boolean_201, method, 'testSplitByWholeString_StringStringBoolean', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitByWholeString_StringStringBoolean()V').
name_ref(m_test_split_by_whole_string__string_string_boolean_int_202, method, 'testSplitByWholeString_StringStringBooleanInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitByWholeString_StringStringBooleanInt()V').
name_ref(m_test_split_preserve_all_tokens__string_204, method, 'testSplitPreserveAllTokens_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitPreserveAllTokens_String()V').
name_ref(m_test_split_preserve_all_tokens__string_char_205, method, 'testSplitPreserveAllTokens_StringChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitPreserveAllTokens_StringChar()V').
name_ref(m_test_split_preserve_all_tokens__string_string__string_string_int_206, method, 'testSplitPreserveAllTokens_StringString_StringStringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitPreserveAllTokens_StringString_StringStringInt()V').
name_ref(m_test_string_utils_char_sequence_contract_270, method, 'testStringUtilsCharSequenceContract', 'Lorg/apache/commons/lang3/StringUtilsTest;.testStringUtilsCharSequenceContract()V').
name_ref(m_test_swap_case__string_187, method, 'testSwapCase_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSwapCase_String()V').
name_ref(m_to_string_181, method, 'toString', 'Lorg/apache/commons/lang3/StringUtilsTest$2395;.toString()Ljava/lang/String;').
name_ref(m_to_string_96, method, 'toString', 'Ljava/lang/Object;.toString()Ljava/lang/String;').
name_ref(m_to_string_99, method, 'toString', 'Ljava/lang/StringBuilder;.toString()Ljava/lang/String;').
name_ref(m_trim_7, method, 'trim', 'Lorg/apache/commons/lang3/StringUtils;.trim(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_trim_to_empty_9, method, 'trimToEmpty', 'Lorg/apache/commons/lang3/StringUtils;.trimToEmpty(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_trim_to_null_8, method, 'trimToNull', 'Lorg/apache/commons/lang3/StringUtils;.trimToNull(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_uncapitalize_142, method, 'uncapitalize', 'Lorg/apache/commons/lang3/StringUtils;.uncapitalize(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_upper_case_137, method, 'upperCase', 'Lorg/apache/commons/lang3/StringUtils;.upperCase(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_upper_case_138, method, 'upperCase', 'Lorg/apache/commons/lang3/StringUtils;.upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;').
name_ref(m_value_of_180, method, 'valueOf', 'Ljava/lang/String;.valueOf(C)Ljava/lang/String;').
name_ref(m_value_of_182, method, 'valueOf', 'Ljava/lang/Long;.valueOf(J)Ljava/lang/Long;').
name_ref(q_length_1, q_name, 'array.length', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;C)Ljava/lang/String;#array#0#0:.length)I').
name_ref(q_length_2, q_name, 'array.length', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;#array#0#0:.length)I').
name_ref(q_length_4, q_name, 'MIXED_ARRAY_LIST.length', 'Lorg/apache/commons/lang3/StringUtilsTest;.MIXED_ARRAY_LIST)[Ljava/lang/String;:.length)I').
name_ref(q_max_value_3, q_name, 'Character.MAX_VALUE', 'Ljava/lang/Character;:Ljava/lang/Character;.MAX_VALUE)C').

%%% End of Code Facts

