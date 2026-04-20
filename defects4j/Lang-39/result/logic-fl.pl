%%% Logic-FL Facts
:- style_check(-discontiguous).

%string_utils_1 - org.apache.commons.lang3.StringUtils
param(p_str_1, 1, m_is_empty_2).
param(p_str_2, 1, m_is_not_empty_3).
param(p_str_3, 1, m_is_blank_4).
param(p_str_4, 1, m_is_not_blank_5).
param(p_str_5, 1, m_trim_6).
param(p_str_6, 1, m_trim_to_null_7).
param(p_str_7, 1, m_trim_to_empty_8).
param(p_str_8, 1, m_strip_9).
param(p_str_9, 1, m_strip_to_null_10).
param(p_str_10, 1, m_strip_to_empty_11).
param(p_str_11, 1, m_strip_12).
param(p_strip_chars_12, 2, m_strip_12).
param(p_str_13, 1, m_strip_start_13).
param(p_strip_chars_14, 2, m_strip_start_13).
param(p_str_15, 1, m_strip_end_14).
param(p_strip_chars_16, 2, m_strip_end_14).
param(p_strs_17, 1, m_strip_all_15).
param(p_strs_18, 1, m_strip_all_16).
param(p_strip_chars_19, 2, m_strip_all_16).
param(p_input_20, 1, m_strip_accents_17).
param(p_str_1_21, 1, m_equals_18).
param(p_str_2_22, 2, m_equals_18).
param(p_str_1_23, 1, m_equals_ignore_case_19).
param(p_str_2_24, 2, m_equals_ignore_case_19).
param(p_str_25, 1, m_index_of_20).
param(p_search_char_26, 2, m_index_of_20).
param(p_str_27, 1, m_index_of_21).
param(p_search_char_28, 2, m_index_of_21).
param(p_start_pos_29, 3, m_index_of_21).
param(p_str_30, 1, m_index_of_22).
param(p_search_str_31, 2, m_index_of_22).
param(p_str_32, 1, m_ordinal_index_of_23).
param(p_search_str_33, 2, m_ordinal_index_of_23).
param(p_ordinal_34, 3, m_ordinal_index_of_23).
param(p_str_35, 1, m_index_of_24).
param(p_search_str_36, 2, m_index_of_24).
param(p_start_pos_37, 3, m_index_of_24).
param(p_str_38, 1, m_last_index_of_25).
param(p_search_char_39, 2, m_last_index_of_25).
param(p_str_40, 1, m_last_index_of_26).
param(p_search_char_41, 2, m_last_index_of_26).
param(p_start_pos_42, 3, m_last_index_of_26).
param(p_str_43, 1, m_last_index_of_27).
param(p_search_str_44, 2, m_last_index_of_27).
param(p_str_45, 1, m_last_index_of_28).
param(p_search_str_46, 2, m_last_index_of_28).
param(p_start_pos_47, 3, m_last_index_of_28).
param(p_str_48, 1, m_contains_29).
param(p_search_char_49, 2, m_contains_29).
param(p_str_50, 1, m_contains_30).
param(p_search_str_51, 2, m_contains_30).
param(p_str_52, 1, m_contains_ignore_case_31).
param(p_search_str_53, 2, m_contains_ignore_case_31).
param(p_str_54, 1, m_index_of_any_32).
param(p_search_chars_55, 2, m_index_of_any_32).
param(p_str_56, 1, m_index_of_any_33).
param(p_search_chars_57, 2, m_index_of_any_33).
param(p_str_58, 1, m_contains_any_34).
param(p_search_chars_59, 2, m_contains_any_34).
param(p_str_60, 1, m_contains_any_35).
param(p_search_chars_61, 2, m_contains_any_35).
param(p_str_62, 1, m_index_of_any_but_36).
param(p_search_chars_63, 2, m_index_of_any_but_36).
param(p_str_64, 1, m_index_of_any_but_37).
param(p_search_chars_65, 2, m_index_of_any_but_37).
param(p_str_66, 1, m_contains_only_38).
param(p_valid_67, 2, m_contains_only_38).
param(p_str_68, 1, m_contains_only_39).
param(p_valid_chars_69, 2, m_contains_only_39).
param(p_str_70, 1, m_contains_none_40).
param(p_invalid_chars_71, 2, m_contains_none_40).
param(p_str_72, 1, m_contains_none_41).
param(p_invalid_chars_73, 2, m_contains_none_41).
param(p_str_74, 1, m_index_of_any_42).
param(p_search_strs_75, 2, m_index_of_any_42).
param(p_str_76, 1, m_last_index_of_any_43).
param(p_search_strs_77, 2, m_last_index_of_any_43).
param(p_str_78, 1, m_substring_44).
param(p_start_79, 2, m_substring_44).
param(p_str_80, 1, m_substring_45).
param(p_start_81, 2, m_substring_45).
param(p_end_82, 3, m_substring_45).
param(p_str_83, 1, m_left_46).
param(p_len_84, 2, m_left_46).
param(p_str_85, 1, m_right_47).
param(p_len_86, 2, m_right_47).
param(p_str_87, 1, m_mid_48).
param(p_pos_88, 2, m_mid_48).
param(p_len_89, 3, m_mid_48).
param(p_str_90, 1, m_substring_before_49).
param(p_separator_91, 2, m_substring_before_49).
param(p_str_92, 1, m_substring_after_50).
param(p_separator_93, 2, m_substring_after_50).
param(p_str_94, 1, m_substring_before_last_51).
param(p_separator_95, 2, m_substring_before_last_51).
param(p_str_96, 1, m_substring_after_last_52).
param(p_separator_97, 2, m_substring_after_last_52).
param(p_str_98, 1, m_substring_between_53).
param(p_tag_99, 2, m_substring_between_53).
param(p_str_100, 1, m_substring_between_54).
param(p_open_101, 2, m_substring_between_54).
param(p_close_102, 3, m_substring_between_54).
param(p_str_103, 1, m_substrings_between_55).
param(p_open_104, 2, m_substrings_between_55).
param(p_close_105, 3, m_substrings_between_55).
param(p_str_106, 1, m_split_56).
param(p_str_107, 1, m_split_57).
param(p_separator_char_108, 2, m_split_57).
param(p_str_109, 1, m_split_58).
param(p_separator_chars_110, 2, m_split_58).
param(p_str_111, 1, m_split_59).
param(p_separator_chars_112, 2, m_split_59).
param(p_max_113, 3, m_split_59).
param(p_str_114, 1, m_split_by_whole_separator_60).
param(p_separator_115, 2, m_split_by_whole_separator_60).
param(p_str_116, 1, m_split_by_whole_separator_61).
param(p_separator_117, 2, m_split_by_whole_separator_61).
param(p_max_118, 3, m_split_by_whole_separator_61).
param(p_str_119, 1, m_split_by_whole_separator_preserve_all_tokens_62).
param(p_separator_120, 2, m_split_by_whole_separator_preserve_all_tokens_62).
param(p_str_121, 1, m_split_by_whole_separator_preserve_all_tokens_63).
param(p_separator_122, 2, m_split_by_whole_separator_preserve_all_tokens_63).
param(p_max_123, 3, m_split_by_whole_separator_preserve_all_tokens_63).
param(p_str_124, 1, m_split_by_whole_separator_worker_64).
param(p_separator_125, 2, m_split_by_whole_separator_worker_64).
param(p_max_126, 3, m_split_by_whole_separator_worker_64).
param(p_preserve_all_tokens_127, 4, m_split_by_whole_separator_worker_64).
param(p_str_128, 1, m_split_preserve_all_tokens_65).
param(p_str_129, 1, m_split_preserve_all_tokens_66).
param(p_separator_char_130, 2, m_split_preserve_all_tokens_66).
param(p_str_131, 1, m_split_worker_67).
param(p_separator_char_132, 2, m_split_worker_67).
param(p_preserve_all_tokens_133, 3, m_split_worker_67).
param(p_str_134, 1, m_split_preserve_all_tokens_68).
param(p_separator_chars_135, 2, m_split_preserve_all_tokens_68).
param(p_str_136, 1, m_split_preserve_all_tokens_69).
param(p_separator_chars_137, 2, m_split_preserve_all_tokens_69).
param(p_max_138, 3, m_split_preserve_all_tokens_69).
param(p_str_139, 1, m_split_worker_70).
param(p_separator_chars_140, 2, m_split_worker_70).
param(p_max_141, 3, m_split_worker_70).
param(p_preserve_all_tokens_142, 4, m_split_worker_70).
param(p_str_143, 1, m_split_by_character_type_71).
param(p_str_144, 1, m_split_by_character_type_camel_case_72).
param(p_str_145, 1, m_split_by_character_type_73).
param(p_camel_case_146, 2, m_split_by_character_type_73).
param(p_array_147, 1, m_join_74).
param(p_array_148, 1, m_join_75).
param(p_separator_149, 2, m_join_75).
param(p_array_150, 1, m_join_76).
param(p_separator_151, 2, m_join_76).
param(p_start_index_152, 3, m_join_76).
param(p_end_index_153, 4, m_join_76).
param(p_array_154, 1, m_join_77).
param(p_separator_155, 2, m_join_77).
param(p_array_156, 1, m_join_78).
param(p_separator_157, 2, m_join_78).
param(p_start_index_158, 3, m_join_78).
param(p_end_index_159, 4, m_join_78).
param(p_iterator_160, 1, m_join_79).
param(p_separator_161, 2, m_join_79).
param(p_iterator_162, 1, m_join_80).
param(p_separator_163, 2, m_join_80).
param(p_iterable_164, 1, m_join_81).
param(p_separator_165, 2, m_join_81).
param(p_iterable_166, 1, m_join_82).
param(p_separator_167, 2, m_join_82).
param(p_str_168, 1, m_delete_whitespace_83).
param(p_str_169, 1, m_remove_start_84).
param(p_remove_170, 2, m_remove_start_84).
param(p_str_171, 1, m_remove_start_ignore_case_85).
param(p_remove_172, 2, m_remove_start_ignore_case_85).
param(p_str_173, 1, m_remove_end_86).
param(p_remove_174, 2, m_remove_end_86).
param(p_str_175, 1, m_remove_end_ignore_case_87).
param(p_remove_176, 2, m_remove_end_ignore_case_87).
param(p_str_177, 1, m_remove_88).
param(p_remove_178, 2, m_remove_88).
param(p_str_179, 1, m_remove_89).
param(p_remove_180, 2, m_remove_89).
param(p_text_181, 1, m_replace_once_90).
param(p_search_string_182, 2, m_replace_once_90).
param(p_replacement_183, 3, m_replace_once_90).
param(p_text_184, 1, m_replace_91).
param(p_search_string_185, 2, m_replace_91).
param(p_replacement_186, 3, m_replace_91).
param(p_text_187, 1, m_replace_92).
param(p_search_string_188, 2, m_replace_92).
param(p_replacement_189, 3, m_replace_92).
param(p_max_190, 4, m_replace_92).
param(p_text_191, 1, m_replace_each_93).
param(p_search_list_192, 2, m_replace_each_93).
param(p_replacement_list_193, 3, m_replace_each_93).
return(string_utils_1_expr1, m_replace_each_93, line(string_utils_1, 3502)).
method_invoc(string_utils_1_expr1, m_replace_each_94, line(string_utils_1, 3502)).
throw(string_utils_1_expr1, null_pointer_exception, line(string_utils_1, 3502)).
argument(p_text_191, 1, string_utils_1_expr1).
argument(p_search_list_192, 2, string_utils_1_expr1).
argument(p_replacement_list_193, 3, string_utils_1_expr1).
argument(string_utils_1_literal1, 4, string_utils_1_expr1).
argument(string_utils_1_literal2, 5, string_utils_1_expr1).
param(p_text_194, 1, m_replace_each_repeatedly_95).
param(p_search_list_195, 2, m_replace_each_repeatedly_95).
param(p_replacement_list_196, 3, m_replace_each_repeatedly_95).
param(p_text_197, 1, m_replace_each_94).
param(p_search_list_198, 2, m_replace_each_94).
param(p_replacement_list_199, 3, m_replace_each_94).
param(p_repeat_200, 4, m_replace_each_94).
param(p_time_to_live_201, 5, m_replace_each_94).
method_invoc(string_utils_1_expr9, m_length_96, line(string_utils_1, 3612)).
ref(p_text_197, string_utils_1_expr9, line(string_utils_1, 3612)).
return(p_text_197, m_replace_each_94, line(string_utils_1, 3615)).
assign(v_search_length_202, q_length_1, line(string_utils_1, 3623)).
ref(p_search_list_198, q_length_1, line(string_utils_1, 3623)).
assign(v_replacement_length_203, q_length_2, line(string_utils_1, 3624)).
ref(p_replacement_list_199, q_length_2, line(string_utils_1, 3624)).
assign(v_no_more_matches_for_repl_index_204, string_utils_1_expr13, line(string_utils_1, 3635)).
assign(v_text_index_205, string_utils_1_expr14, line(string_utils_1, 3638)).
assign(v_replace_index_206, string_utils_1_expr15, line(string_utils_1, 3639)).
assign(v_temp_index_207, string_utils_1_expr16, line(string_utils_1, 3640)).
assign(v_i_208, string_utils_1_literal10, line(string_utils_1, 3644)).
ref(v_no_more_matches_for_repl_index_204, string_utils_1_expr23, line(string_utils_1, 3645)).
ref(p_search_list_198, string_utils_1_expr25, line(string_utils_1, 3645)).
assign(v_temp_index_207, string_utils_1_expr27, line(string_utils_1, 3650)).
method_invoc(string_utils_1_expr27, m_index_of_97, line(string_utils_1, 3650)).
argument(string_utils_1_expr28, 1, string_utils_1_expr27).
ref(p_text_197, string_utils_1_expr27, line(string_utils_1, 3650)).
ref(p_search_list_198, string_utils_1_expr28, line(string_utils_1, 3650)).
assign(string_utils_1_expr32, string_utils_1_literal13, line(string_utils_1, 3654)).
ref(v_no_more_matches_for_repl_index_204, string_utils_1_expr32, line(string_utils_1, 3654)).
assign(v_text_index_205, v_temp_index_207, line(string_utils_1, 3657)).
assign(v_replace_index_206, v_i_208, line(string_utils_1, 3658)).
return(p_text_197, m_replace_each_94, line(string_utils_1, 3666)).
assign(v_start_209, string_utils_1_literal16, line(string_utils_1, 3669)).
assign(v_increase_210, string_utils_1_literal17, line(string_utils_1, 3672)).
assign(v_i_211, string_utils_1_literal18, line(string_utils_1, 3675)).
ref(p_search_list_198, q_length_3, line(string_utils_1, 3675)).
assign(v_greater_212, string_utils_1_expr44, line(string_utils_1, 3676)).
method_invoc(string_utils_1_expr45, m_length_96, line(string_utils_1, 3676)).
ref(string_utils_1_expr46, string_utils_1_expr45, line(string_utils_1, 3676)).
ref(p_replacement_list_199, string_utils_1_expr46, line(string_utils_1, 3676)).
method_invoc(string_utils_1_expr47, m_length_96, line(string_utils_1, 3676)).
ref(string_utils_1_expr48, string_utils_1_expr47, line(string_utils_1, 3676)).
ref(p_search_list_198, string_utils_1_expr48, line(string_utils_1, 3676)).
assign(v_increase_210, string_utils_1_expr51, line(string_utils_1, 3682)).
method_invoc(string_utils_1_expr51, m_min_98, line(string_utils_1, 3682)).
argument(v_increase_210, 1, string_utils_1_expr51).
argument(string_utils_1_expr52, 2, string_utils_1_expr51).
ref(t_math_1, string_utils_1_expr51, line(string_utils_1, 3682)).
method_invoc(string_utils_1_expr53, m_length_96, line(string_utils_1, 3682)).
ref(p_text_197, string_utils_1_expr53, line(string_utils_1, 3682)).
assign(v_buf_213, string_utils_1_expr54, line(string_utils_1, 3684)).
method_invoc(string_utils_1_expr54, m_string_builder_99, line(string_utils_1, 3684)).
argument(string_utils_1_expr55, 1, string_utils_1_expr54).
method_invoc(string_utils_1_expr56, m_length_96, line(string_utils_1, 3684)).
ref(p_text_197, string_utils_1_expr56, line(string_utils_1, 3684)).
assign(v_i_214, v_start_209, line(string_utils_1, 3688)).
method_invoc(string_utils_1_expr62, m_append_100, line(string_utils_1, 3689)).
argument(string_utils_1_expr63, 1, string_utils_1_expr62).
ref(v_buf_213, string_utils_1_expr62, line(string_utils_1, 3689)).
method_invoc(string_utils_1_expr63, m_char_at_101, line(string_utils_1, 3689)).
argument(v_i_214, 1, string_utils_1_expr63).
ref(p_text_197, string_utils_1_expr63, line(string_utils_1, 3689)).
method_invoc(string_utils_1_expr64, m_append_102, line(string_utils_1, 3691)).
argument(string_utils_1_expr65, 1, string_utils_1_expr64).
ref(v_buf_213, string_utils_1_expr64, line(string_utils_1, 3691)).
ref(p_replacement_list_199, string_utils_1_expr65, line(string_utils_1, 3691)).
assign(v_start_209, string_utils_1_expr67, line(string_utils_1, 3693)).
method_invoc(string_utils_1_expr68, m_length_96, line(string_utils_1, 3693)).
ref(string_utils_1_expr69, string_utils_1_expr68, line(string_utils_1, 3693)).
ref(p_search_list_198, string_utils_1_expr69, line(string_utils_1, 3693)).
assign(v_text_index_205, string_utils_1_expr71, line(string_utils_1, 3695)).
assign(v_replace_index_206, string_utils_1_expr73, line(string_utils_1, 3696)).
assign(v_temp_index_207, string_utils_1_expr75, line(string_utils_1, 3697)).
assign(v_i_215, string_utils_1_literal25, line(string_utils_1, 3700)).
ref(v_no_more_matches_for_repl_index_204, string_utils_1_expr82, line(string_utils_1, 3701)).
ref(p_search_list_198, string_utils_1_expr84, line(string_utils_1, 3701)).
assign(v_temp_index_207, string_utils_1_expr86, line(string_utils_1, 3706)).
method_invoc(string_utils_1_expr86, m_index_of_103, line(string_utils_1, 3706)).
argument(string_utils_1_expr87, 1, string_utils_1_expr86).
argument(v_start_209, 2, string_utils_1_expr86).
ref(p_text_197, string_utils_1_expr86, line(string_utils_1, 3706)).
ref(p_search_list_198, string_utils_1_expr87, line(string_utils_1, 3706)).
assign(string_utils_1_expr91, string_utils_1_literal28, line(string_utils_1, 3710)).
ref(v_no_more_matches_for_repl_index_204, string_utils_1_expr91, line(string_utils_1, 3710)).
assign(v_text_index_205, v_temp_index_207, line(string_utils_1, 3713)).
assign(v_replace_index_206, v_i_215, line(string_utils_1, 3714)).
assign(v_text_length_216, string_utils_1_expr98, line(string_utils_1, 3721)).
method_invoc(string_utils_1_expr98, m_length_96, line(string_utils_1, 3721)).
ref(p_text_197, string_utils_1_expr98, line(string_utils_1, 3721)).
assign(v_i_217, v_start_209, line(string_utils_1, 3722)).
method_invoc(string_utils_1_expr102, m_append_100, line(string_utils_1, 3723)).
argument(string_utils_1_expr103, 1, string_utils_1_expr102).
ref(v_buf_213, string_utils_1_expr102, line(string_utils_1, 3723)).
method_invoc(string_utils_1_expr103, m_char_at_101, line(string_utils_1, 3723)).
argument(v_i_217, 1, string_utils_1_expr103).
ref(p_text_197, string_utils_1_expr103, line(string_utils_1, 3723)).
assign(v_result_218, string_utils_1_expr104, line(string_utils_1, 3725)).
method_invoc(string_utils_1_expr104, m_to_string_104, line(string_utils_1, 3725)).
ref(v_buf_213, string_utils_1_expr104, line(string_utils_1, 3725)).
return(v_result_218, m_replace_each_94, line(string_utils_1, 3727)).
param(p_str_219, 1, m_replace_chars_105).
param(p_search_char_220, 2, m_replace_chars_105).
param(p_replace_char_221, 3, m_replace_chars_105).
param(p_str_222, 1, m_replace_chars_106).
param(p_search_chars_223, 2, m_replace_chars_106).
param(p_replace_chars_224, 3, m_replace_chars_106).
param(p_str_225, 1, m_overlay_107).
param(p_overlay_226, 2, m_overlay_107).
param(p_start_227, 3, m_overlay_107).
param(p_end_228, 4, m_overlay_107).
param(p_str_229, 1, m_chomp_108).
param(p_str_230, 1, m_chomp_109).
param(p_separator_231, 2, m_chomp_109).
param(p_str_232, 1, m_chop_110).
param(p_str_233, 1, m_repeat_111).
param(p_repeat_234, 2, m_repeat_111).
param(p_str_235, 1, m_repeat_112).
param(p_separator_236, 2, m_repeat_112).
param(p_repeat_237, 3, m_repeat_112).
param(p_repeat_238, 1, m_padding_113).
param(p_pad_char_239, 2, m_padding_113).
throw(m_padding_113, index_out_of_bounds_exception).
param(p_str_240, 1, m_right_pad_114).
param(p_size_241, 2, m_right_pad_114).
param(p_str_242, 1, m_right_pad_115).
param(p_size_243, 2, m_right_pad_115).
param(p_pad_char_244, 3, m_right_pad_115).
param(p_str_245, 1, m_right_pad_116).
param(p_size_246, 2, m_right_pad_116).
param(p_pad_str_247, 3, m_right_pad_116).
param(p_str_248, 1, m_left_pad_117).
param(p_size_249, 2, m_left_pad_117).
param(p_str_250, 1, m_left_pad_118).
param(p_size_251, 2, m_left_pad_118).
param(p_pad_char_252, 3, m_left_pad_118).
param(p_str_253, 1, m_left_pad_119).
param(p_size_254, 2, m_left_pad_119).
param(p_pad_str_255, 3, m_left_pad_119).
param(p_str_256, 1, m_length_120).
param(p_str_257, 1, m_center_121).
param(p_size_258, 2, m_center_121).
param(p_str_259, 1, m_center_122).
param(p_size_260, 2, m_center_122).
param(p_pad_char_261, 3, m_center_122).
param(p_str_262, 1, m_center_123).
param(p_size_263, 2, m_center_123).
param(p_pad_str_264, 3, m_center_123).
param(p_str_265, 1, m_upper_case_124).
param(p_str_266, 1, m_upper_case_125).
param(p_locale_267, 2, m_upper_case_125).
param(p_str_268, 1, m_lower_case_126).
param(p_str_269, 1, m_lower_case_127).
param(p_locale_270, 2, m_lower_case_127).
param(p_str_271, 1, m_capitalize_128).
param(p_str_272, 1, m_uncapitalize_129).
param(p_str_273, 1, m_swap_case_130).
param(p_str_274, 1, m_count_matches_131).
param(p_sub_275, 2, m_count_matches_131).
param(p_str_276, 1, m_is_alpha_132).
param(p_str_277, 1, m_is_alpha_space_133).
param(p_str_278, 1, m_is_alphanumeric_134).
param(p_str_279, 1, m_is_alphanumeric_space_135).
param(p_str_280, 1, m_is_ascii_printable_136).
param(p_str_281, 1, m_is_numeric_137).
param(p_str_282, 1, m_is_numeric_space_138).
param(p_str_283, 1, m_is_whitespace_139).
param(p_str_284, 1, m_is_all_lower_case_140).
param(p_str_285, 1, m_is_all_upper_case_141).
param(p_str_286, 1, m_default_string_142).
param(p_str_287, 1, m_default_string_143).
param(p_default_str_288, 2, m_default_string_143).
param(p_str_289, 1, m_default_if_empty_144).
param(p_default_str_290, 2, m_default_if_empty_144).
param(p_str_291, 1, m_reverse_145).
param(p_str_292, 1, m_reverse_delimited_146).
param(p_separator_char_293, 2, m_reverse_delimited_146).
param(p_str_294, 1, m_abbreviate_147).
param(p_max_width_295, 2, m_abbreviate_147).
param(p_str_296, 1, m_abbreviate_148).
param(p_offset_297, 2, m_abbreviate_148).
param(p_max_width_298, 3, m_abbreviate_148).
param(p_str_1_299, 1, m_difference_149).
param(p_str_2_300, 2, m_difference_149).
param(p_str_1_301, 1, m_index_of_difference_150).
param(p_str_2_302, 2, m_index_of_difference_150).
param(p_strs_303, 1, m_index_of_difference_151).
param(p_strs_304, 1, m_get_common_prefix_152).
param(p_s_305, 1, m_get_levenshtein_distance_153).
param(p_t_306, 2, m_get_levenshtein_distance_153).
param(p_str_307, 1, m_starts_with_154).
param(p_prefix_308, 2, m_starts_with_154).
param(p_str_309, 1, m_starts_with_ignore_case_155).
param(p_prefix_310, 2, m_starts_with_ignore_case_155).
param(p_str_311, 1, m_starts_with_156).
param(p_prefix_312, 2, m_starts_with_156).
param(p_ignore_case_313, 3, m_starts_with_156).
param(p_string_314, 1, m_starts_with_any_157).
param(p_search_strings_315, 2, m_starts_with_any_157).
param(p_str_316, 1, m_ends_with_158).
param(p_suffix_317, 2, m_ends_with_158).
param(p_str_318, 1, m_ends_with_ignore_case_159).
param(p_suffix_319, 2, m_ends_with_ignore_case_159).
param(p_str_320, 1, m_ends_with_160).
param(p_suffix_321, 2, m_ends_with_160).
param(p_ignore_case_322, 3, m_ends_with_160).

%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
assign(v_ws_323, string_utils_test_1_literal1, line(string_utils_test_1, 53)).
assign(v_nws_324, string_utils_test_1_literal2, line(string_utils_test_1, 54)).
assign(v_tr_325, string_utils_test_1_literal3, line(string_utils_test_1, 55)).
assign(v_ntr_326, string_utils_test_1_literal4, line(string_utils_test_1, 56)).
assign(v_i_327, string_utils_test_1_literal5, line(string_utils_test_1, 57)).
ref(t_character_2, q_max_value_3, line(string_utils_test_1, 57)).
method_invoc(string_utils_test_1_expr4, m_is_whitespace_161, line(string_utils_test_1, 58)).
argument(string_utils_test_1_expr5, 1, string_utils_test_1_expr4).
ref(t_character_2, string_utils_test_1_expr4, line(string_utils_test_1, 58)).
assign(string_utils_test_1_expr5, v_i_327, line(string_utils_test_1, 58)).
assign(v_ws_323, string_utils_test_1_expr7, line(string_utils_test_1, 59)).
method_invoc(string_utils_test_1_expr7, m_value_of_162, line(string_utils_test_1, 59)).
argument(string_utils_test_1_expr8, 1, string_utils_test_1_expr7).
ref(t_string_3, string_utils_test_1_expr7, line(string_utils_test_1, 59)).
assign(string_utils_test_1_expr8, v_i_327, line(string_utils_test_1, 59)).
assign(v_ntr_326, string_utils_test_1_expr11, line(string_utils_test_1, 61)).
method_invoc(string_utils_test_1_expr11, m_value_of_162, line(string_utils_test_1, 61)).
argument(string_utils_test_1_expr12, 1, string_utils_test_1_expr11).
ref(t_string_3, string_utils_test_1_expr11, line(string_utils_test_1, 61)).
assign(string_utils_test_1_expr12, v_i_327, line(string_utils_test_1, 61)).
assign(v_nws_324, string_utils_test_1_expr15, line(string_utils_test_1, 64)).
method_invoc(string_utils_test_1_expr15, m_value_of_162, line(string_utils_test_1, 64)).
argument(string_utils_test_1_expr16, 1, string_utils_test_1_expr15).
ref(t_string_3, string_utils_test_1_expr15, line(string_utils_test_1, 64)).
assign(string_utils_test_1_expr16, v_i_327, line(string_utils_test_1, 64)).
assign(v_i_328, string_utils_test_1_literal8, line(string_utils_test_1, 67)).
assign(v_tr_325, string_utils_test_1_expr21, line(string_utils_test_1, 68)).
method_invoc(string_utils_test_1_expr21, m_value_of_162, line(string_utils_test_1, 68)).
argument(string_utils_test_1_expr22, 1, string_utils_test_1_expr21).
ref(t_string_3, string_utils_test_1_expr21, line(string_utils_test_1, 68)).
assign(string_utils_test_1_expr22, v_i_328, line(string_utils_test_1, 68)).
assign(f_whitespace_329, v_ws_323, line(string_utils_test_1, 70)).
assign(f_non_whitespace_330, v_nws_324, line(string_utils_test_1, 71)).
assign(f_trimmable_331, v_tr_325, line(string_utils_test_1, 72)).
assign(f_non_trimmable_332, v_ntr_326, line(string_utils_test_1, 73)).
assign(f_array_list_333, string_utils_test_1_expr27, line(string_utils_test_1, 76)).
assign(f_empty_array_list_334, string_utils_test_1_expr28, line(string_utils_test_1, 77)).
assign(f_null_array_list_335, string_utils_test_1_expr29, line(string_utils_test_1, 78)).
assign(f_mixed_array_list_336, string_utils_test_1_expr30, line(string_utils_test_1, 79)).
assign(f_mixed_type_list_337, string_utils_test_1_expr31, line(string_utils_test_1, 80)).
method_invoc(string_utils_test_1_expr32, m_string_163, line(string_utils_test_1, 80)).
argument(string_utils_test_1_literal17, 1, string_utils_test_1_expr32).
method_invoc(string_utils_test_1_expr33, m_long_164, line(string_utils_test_1, 80)).
argument(string_utils_test_1_literal18, 1, string_utils_test_1_expr33).
param(p_name_338, 1, m_string_utils_test_165).
method_invoc(string_utils_test_1_expr34, m_test_case_166, line(string_utils_test_1, 96)).
argument(p_name_338, 1, string_utils_test_1_expr34).
param(p_args_339, 1, m_main_167).
assign(v_suite_340, string_utils_test_1_expr35, line(string_utils_test_1, 104)).
method_invoc(string_utils_test_1_expr35, m_test_suite_169, line(string_utils_test_1, 104)).
argument(string_utils_test_1_expr36, 1, string_utils_test_1_expr35).
method_invoc(string_utils_test_1_expr37, m_set_name_170, line(string_utils_test_1, 105)).
argument(string_utils_test_1_literal19, 1, string_utils_test_1_expr37).
ref(v_suite_340, string_utils_test_1_expr37, line(string_utils_test_1, 105)).
return(v_suite_340, m_suite_168, line(string_utils_test_1, 106)).
throw(m_set_up_171, exception).
method_invoc(string_utils_test_1_expr38, m_set_up_172, line(string_utils_test_1, 111)).
throw(string_utils_test_1_expr38, exception, line(string_utils_test_1, 111)).
throw(m_tear_down_173, exception).
method_invoc(string_utils_test_1_expr39, m_tear_down_174, line(string_utils_test_1, 116)).
throw(string_utils_test_1_expr39, exception, line(string_utils_test_1, 116)).
param(p_separator_341, 1, m_inner_test_split_188).
param(p_sep_str_342, 2, m_inner_test_split_188).
param(p_no_match_343, 3, m_inner_test_split_188).
param(p_separator_344, 1, m_inner_test_split_preserve_all_tokens_195).
param(p_sep_str_345, 2, m_inner_test_split_preserve_all_tokens_195).
param(p_no_match_346, 3, m_inner_test_split_preserve_all_tokens_195).
method_invoc(string_utils_test_1_expr40, m_assert_null_203, line(string_utils_test_1, 1013)).
argument(string_utils_test_1_expr41, 1, string_utils_test_1_expr40).
method_invoc(string_utils_test_1_expr41, m_replace_each_93, line(string_utils_test_1, 1013)).
argument(string_utils_test_1_literal20, 1, string_utils_test_1_expr41).
argument(string_utils_test_1_expr42, 2, string_utils_test_1_expr41).
argument(string_utils_test_1_expr43, 3, string_utils_test_1_expr41).
ref(t_string_utils_4, string_utils_test_1_expr41, line(string_utils_test_1, 1013)).
method_invoc(string_utils_test_1_expr46, m_assert_equals_204, line(string_utils_test_1, 1014)).
argument(string_utils_test_1_expr47, 1, string_utils_test_1_expr46).
argument(string_utils_test_1_literal23, 2, string_utils_test_1_expr46).
method_invoc(string_utils_test_1_expr47, m_replace_each_93, line(string_utils_test_1, 1014)).
argument(string_utils_test_1_literal24, 1, string_utils_test_1_expr47).
argument(string_utils_test_1_expr48, 2, string_utils_test_1_expr47).
argument(string_utils_test_1_expr49, 3, string_utils_test_1_expr47).
ref(t_string_utils_4, string_utils_test_1_expr47, line(string_utils_test_1, 1014)).
method_invoc(string_utils_test_1_expr52, m_assert_equals_204, line(string_utils_test_1, 1015)).
argument(string_utils_test_1_expr53, 1, string_utils_test_1_expr52).
argument(string_utils_test_1_literal27, 2, string_utils_test_1_expr52).
method_invoc(string_utils_test_1_expr53, m_replace_each_93, line(string_utils_test_1, 1015)).
argument(string_utils_test_1_literal28, 1, string_utils_test_1_expr53).
argument(string_utils_test_1_literal29, 2, string_utils_test_1_expr53).
argument(string_utils_test_1_literal30, 3, string_utils_test_1_expr53).
ref(t_string_utils_4, string_utils_test_1_expr53, line(string_utils_test_1, 1015)).
method_invoc(string_utils_test_1_expr54, m_assert_equals_204, line(string_utils_test_1, 1016)).
argument(string_utils_test_1_expr55, 1, string_utils_test_1_expr54).
argument(string_utils_test_1_literal31, 2, string_utils_test_1_expr54).
method_invoc(string_utils_test_1_expr55, m_replace_each_93, line(string_utils_test_1, 1016)).
argument(string_utils_test_1_literal32, 1, string_utils_test_1_expr55).
argument(string_utils_test_1_expr56, 2, string_utils_test_1_expr55).
argument(string_utils_test_1_literal33, 3, string_utils_test_1_expr55).
ref(t_string_utils_4, string_utils_test_1_expr55, line(string_utils_test_1, 1016)).
method_invoc(string_utils_test_1_expr57, m_assert_equals_204, line(string_utils_test_1, 1017)).
argument(string_utils_test_1_expr58, 1, string_utils_test_1_expr57).
argument(string_utils_test_1_literal35, 2, string_utils_test_1_expr57).
method_invoc(string_utils_test_1_expr58, m_replace_each_93, line(string_utils_test_1, 1017)).
argument(string_utils_test_1_literal36, 1, string_utils_test_1_expr58).
argument(string_utils_test_1_literal37, 2, string_utils_test_1_expr58).
argument(string_utils_test_1_expr59, 3, string_utils_test_1_expr58).
ref(t_string_utils_4, string_utils_test_1_expr58, line(string_utils_test_1, 1017)).
method_invoc(string_utils_test_1_expr60, m_assert_equals_204, line(string_utils_test_1, 1018)).
argument(string_utils_test_1_expr61, 1, string_utils_test_1_expr60).
argument(string_utils_test_1_literal39, 2, string_utils_test_1_expr60).
method_invoc(string_utils_test_1_expr61, m_replace_each_93, line(string_utils_test_1, 1018)).
argument(string_utils_test_1_literal40, 1, string_utils_test_1_expr61).
argument(string_utils_test_1_expr62, 2, string_utils_test_1_expr61).
argument(string_utils_test_1_literal41, 3, string_utils_test_1_expr61).
ref(t_string_utils_4, string_utils_test_1_expr61, line(string_utils_test_1, 1018)).
method_invoc(string_utils_test_1_expr64, m_assert_equals_204, line(string_utils_test_1, 1020)).
argument(string_utils_test_1_expr65, 1, string_utils_test_1_expr64).
argument(string_utils_test_1_literal43, 2, string_utils_test_1_expr64).
method_invoc(string_utils_test_1_expr65, m_replace_each_93, line(string_utils_test_1, 1020)).
argument(string_utils_test_1_literal44, 1, string_utils_test_1_expr65).
argument(string_utils_test_1_expr66, 2, string_utils_test_1_expr65).
argument(string_utils_test_1_expr67, 3, string_utils_test_1_expr65).
ref(t_string_utils_4, string_utils_test_1_expr65, line(string_utils_test_1, 1020)).
method_invoc(string_utils_test_1_expr70, m_assert_equals_204, line(string_utils_test_1, 1021)).
argument(string_utils_test_1_expr71, 1, string_utils_test_1_expr70).
argument(string_utils_test_1_literal47, 2, string_utils_test_1_expr70).
method_invoc(string_utils_test_1_expr71, m_replace_each_93, line(string_utils_test_1, 1021)).
argument(string_utils_test_1_literal48, 1, string_utils_test_1_expr71).
argument(string_utils_test_1_expr72, 2, string_utils_test_1_expr71).
argument(string_utils_test_1_expr73, 3, string_utils_test_1_expr71).
ref(t_string_utils_4, string_utils_test_1_expr71, line(string_utils_test_1, 1021)).
method_invoc(string_utils_test_1_expr76, m_assert_equals_204, line(string_utils_test_1, 1022)).
argument(string_utils_test_1_expr77, 1, string_utils_test_1_expr76).
argument(string_utils_test_1_literal51, 2, string_utils_test_1_expr76).
method_invoc(string_utils_test_1_expr77, m_replace_each_93, line(string_utils_test_1, 1022)).
argument(string_utils_test_1_literal52, 1, string_utils_test_1_expr77).
argument(string_utils_test_1_expr78, 2, string_utils_test_1_expr77).
argument(string_utils_test_1_expr79, 3, string_utils_test_1_expr77).
ref(t_string_utils_4, string_utils_test_1_expr77, line(string_utils_test_1, 1022)).
method_invoc(string_utils_test_1_expr82, m_assert_equals_204, line(string_utils_test_1, 1023)).
argument(string_utils_test_1_expr83, 1, string_utils_test_1_expr82).
argument(string_utils_test_1_literal57, 2, string_utils_test_1_expr82).
method_invoc(string_utils_test_1_expr83, m_replace_each_93, line(string_utils_test_1, 1023)).
argument(string_utils_test_1_literal58, 1, string_utils_test_1_expr83).
argument(string_utils_test_1_expr84, 2, string_utils_test_1_expr83).
argument(string_utils_test_1_expr85, 3, string_utils_test_1_expr83).
ref(t_string_utils_4, string_utils_test_1_expr83, line(string_utils_test_1, 1023)).
method_invoc(string_utils_test_1_expr88, m_assert_equals_204, line(string_utils_test_1, 1026)).
argument(string_utils_test_1_literal63, 1, string_utils_test_1_expr88).
argument(string_utils_test_1_expr89, 2, string_utils_test_1_expr88).
method_invoc(string_utils_test_1_expr89, m_replace_each_93, line(string_utils_test_1, 1026)).
argument(string_utils_test_1_literal64, 1, string_utils_test_1_expr89).
argument(string_utils_test_1_expr90, 2, string_utils_test_1_expr89).
argument(string_utils_test_1_expr91, 3, string_utils_test_1_expr89).
ref(t_string_utils_4, string_utils_test_1_expr89, line(string_utils_test_1, 1026)).
method_invoc(string_utils_test_1_expr94, m_assert_equals_204, line(string_utils_test_1, 1027)).
argument(string_utils_test_1_literal69, 1, string_utils_test_1_expr94).
argument(string_utils_test_1_expr95, 2, string_utils_test_1_expr94).
method_invoc(string_utils_test_1_expr95, m_replace_each_93, line(string_utils_test_1, 1027)).
argument(string_utils_test_1_literal70, 1, string_utils_test_1_expr95).
argument(string_utils_test_1_expr96, 2, string_utils_test_1_expr95).
argument(string_utils_test_1_expr97, 3, string_utils_test_1_expr95).
ref(t_string_utils_4, string_utils_test_1_expr95, line(string_utils_test_1, 1027)).
method_invoc(string_utils_test_1_expr98, m_assert_equals_204, line(string_utils_test_1, 1038)).
argument(string_utils_test_1_expr99, 1, string_utils_test_1_expr98).
argument(string_utils_test_1_literal71, 2, string_utils_test_1_expr98).
method_invoc(string_utils_test_1_expr99, m_replace_each_93, line(string_utils_test_1, 1038)).
argument(string_utils_test_1_literal72, 1, string_utils_test_1_expr99).
argument(string_utils_test_1_expr100, 2, string_utils_test_1_expr99).
argument(string_utils_test_1_expr101, 3, string_utils_test_1_expr99).
ref(t_string_utils_4, string_utils_test_1_expr99, line(string_utils_test_1, 1038)).
method_invoc(string_utils_test_1_expr104, m_assert_equals_204, line(string_utils_test_1, 1039)).
argument(string_utils_test_1_expr105, 1, string_utils_test_1_expr104).
argument(string_utils_test_1_literal75, 2, string_utils_test_1_expr104).
method_invoc(string_utils_test_1_expr105, m_replace_each_93, line(string_utils_test_1, 1039)).
argument(string_utils_test_1_literal76, 1, string_utils_test_1_expr105).
argument(string_utils_test_1_expr106, 2, string_utils_test_1_expr105).
argument(string_utils_test_1_expr107, 3, string_utils_test_1_expr105).
ref(t_string_utils_4, string_utils_test_1_expr105, line(string_utils_test_1, 1039)).
param(p_expected_347, 1, m_assert_abbreviate_with_offset_230).
param(p_offset_348, 2, m_assert_abbreviate_with_offset_230).
param(p_max_width_349, 3, m_assert_abbreviate_with_offset_230).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang3.StringUtilsTest', 'testReplace_StringStringArrayStringArray').
trace(trace_1, failure_1, m_replace_each_94, line(string_utils_1, 3676), failure_1, target).
trace(trace_2, trace_1, m_replace_each_93, line(string_utils_1, 3502), failure_1, target).
trace(trace_3, trace_2, m_test_replace__string_string_array_string_array_202, line(string_utils_test_1, 1039), failure_1, target).
trace(trace_4, trace_3, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_8, trace_7, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_9, trace_8, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_10, trace_9, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_11, trace_10, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_12, trace_11, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_14, trace_13, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_18, trace_17, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_replacement_list_193, null, line(string_utils_1, 3502)).
val(p_text_191, null, line(string_utils_1, 3502)).
val(p_search_list_192, null, line(string_utils_1, 3502)).
val(string_utils_1_expr46, null, line(string_utils_1, 3676)).
val(string_utils_test_1_expr41, null, line(string_utils_test_1, 1013)).



%%% End of Facts