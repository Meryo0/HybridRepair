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
trace(trace_4, trace_3, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_6, trace_5, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_7, trace_6, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_8, trace_7, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_9, trace_8, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_10, trace_9, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_11, trace_10, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_12, trace_11, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_14, trace_13, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_16, trace_15, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_replacement_list_193, null, line(string_utils_1, 3502)).
val(p_text_191, null, line(string_utils_1, 3502)).
val(p_search_list_192, null, line(string_utils_1, 3502)).
val(string_utils_1_expr46, null, line(string_utils_1, 3676)).
val(string_utils_test_1_expr41, null, line(string_utils_test_1, 1013)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(string_utils_1, 'org.apache.commons.lang3.StringUtils').
class(string_utils_test_1, 'org.apache.commons.lang3.StringUtilsTest').

%%% Methods
%string_utils_1 - org.apache.commons.lang3.StringUtils
method(m_string_utils_1, range(string_utils_1, 6214, 369, 158, 168)).
method(m_is_empty_2, range(string_utils_1, 6687, 720, 172, 192)).
method(m_is_not_empty_3, range(string_utils_1, 7413, 589, 194, 210)).
method(m_is_blank_4, range(string_utils_1, 8008, 853, 212, 238)).
method(m_is_not_blank_5, range(string_utils_1, 8867, 656, 240, 258)).
method(m_trim_6, range(string_utils_1, 9619, 963, 262, 287)).
method(m_trim_to_null_7, range(string_utils_1, 10588, 1015, 289, 314)).
method(m_trim_to_empty_8, range(string_utils_1, 11609, 966, 316, 339)).
method(m_strip_9, range(string_utils_1, 12676, 923, 343, 367)).
method(m_strip_to_null_10, range(string_utils_1, 13605, 1130, 369, 398)).
method(m_strip_to_empty_11, range(string_utils_1, 14741, 1006, 400, 424)).
method(m_strip_12, range(string_utils_1, 15753, 1385, 426, 458)).
method(m_strip_start_13, range(string_utils_1, 17144, 1723, 460, 502)).
method(m_strip_end_14, range(string_utils_1, 18873, 1662, 504, 546)).
method(m_strip_all_15, range(string_utils_1, 20635, 917, 550, 571)).
method(m_strip_all_16, range(string_utils_1, 21558, 1578, 573, 608)).
method(m_strip_accents_17, range(string_utils_1, 23142, 3170, 610, 672)).
method(m_equals_18, range(string_utils_1, 26410, 932, 676, 698)).
method(m_equals_ignore_case_19, range(string_utils_1, 27348, 1030, 700, 723)).
method(m_index_of_20, range(string_utils_1, 28477, 870, 727, 751)).
method(m_index_of_21, range(string_utils_1, 29353, 1251, 753, 783)).
method(m_index_of_22, range(string_utils_1, 30610, 1036, 785, 812)).
method(m_ordinal_index_of_23, range(string_utils_1, 31652, 1807, 814, 858)).
method(m_index_of_24, range(string_utils_1, 33465, 1755, 860, 900)).
method(m_last_index_of_25, range(string_utils_1, 35323, 896, 904, 928)).
method(m_last_index_of_26, range(string_utils_1, 36225, 1379, 930, 962)).
method(m_last_index_of_27, range(string_utils_1, 37610, 1074, 964, 991)).
method(m_last_index_of_28, range(string_utils_1, 38690, 1538, 993, 1026)).
method(m_contains_29, range(string_utils_1, 40328, 897, 1030, 1054)).
method(m_contains_30, range(string_utils_1, 41231, 1009, 1056, 1082)).
method(m_contains_ignore_case_31, range(string_utils_1, 42246, 1366, 1084, 1119)).
method(m_index_of_any_32, range(string_utils_1, 43720, 1392, 1123, 1158)).
method(m_index_of_any_33, range(string_utils_1, 45118, 1118, 1160, 1187)).
method(m_contains_any_34, range(string_utils_1, 46339, 1507, 1191, 1227)).
method(m_contains_any_35, range(string_utils_1, 47852, 1231, 1229, 1261)).
method(m_index_of_any_but_36, range(string_utils_1, 49194, 1421, 1265, 1301)).
method(m_index_of_any_but_37, range(string_utils_1, 50621, 1263, 1303, 1335)).
method(m_contains_only_38, range(string_utils_1, 51988, 1321, 1339, 1372)).
method(m_contains_only_39, range(string_utils_1, 53315, 1152, 1374, 1401)).
method(m_contains_none_40, range(string_utils_1, 54571, 1445, 1405, 1442)).
method(m_contains_none_41, range(string_utils_1, 56022, 1153, 1444, 1471)).
method(m_index_of_any_42, range(string_utils_1, 57285, 2047, 1475, 1527)).
method(m_last_index_of_any_43, range(string_utils_1, 59338, 1843, 1529, 1572)).
method(m_substring_44, range(string_utils_1, 61282, 1460, 1576, 1618)).
method(m_substring_45, range(string_utils_1, 62748, 2420, 1620, 1686)).
method(m_left_46, range(string_utils_1, 65274, 1116, 1690, 1721)).
method(m_right_47, range(string_utils_1, 66396, 1141, 1723, 1754)).
method(m_mid_48, range(string_utils_1, 67543, 1456, 1756, 1794)).
method(m_substring_before_49, range(string_utils_1, 69121, 1544, 1798, 1837)).
method(m_substring_after_50, range(string_utils_1, 70671, 1577, 1839, 1879)).
method(m_substring_before_last_51, range(string_utils_1, 72254, 1517, 1881, 1917)).
method(m_substring_after_last_52, range(string_utils_1, 73777, 1724, 1919, 1960)).
method(m_substring_between_53, range(string_utils_1, 75610, 1005, 1964, 1987)).
method(m_substring_between_54, range(string_utils_1, 76621, 1753, 1989, 2028)).
method(m_substrings_between_55, range(string_utils_1, 78380, 2103, 2030, 2081)).
method(m_split_56, range(string_utils_1, 80688, 969, 2088, 2112)).
method(m_split_57, range(string_utils_1, 81663, 1144, 2114, 2140)).
method(m_split_58, range(string_utils_1, 82813, 1256, 2142, 2169)).
method(m_split_59, range(string_utils_1, 84075, 1576, 2171, 2203)).
method(m_split_by_whole_separator_60, range(string_utils_1, 85657, 1327, 2205, 2230)).
method(m_split_by_whole_separator_61, range(string_utils_1, 86990, 1630, 2232, 2261)).
method(m_split_by_whole_separator_preserve_all_tokens_62, range(string_utils_1, 88626, 1542, 2263, 2290)).
method(m_split_by_whole_separator_preserve_all_tokens_63, range(string_utils_1, 90174, 1862, 2292, 2323)).
method(m_split_by_whole_separator_worker_64, range(string_utils_1, 92042, 3212, 2325, 2404)).
method(m_split_preserve_all_tokens_65, range(string_utils_1, 95339, 1275, 2407, 2433)).
method(m_split_preserve_all_tokens_66, range(string_utils_1, 96620, 1918, 2435, 2469)).
method(m_split_worker_67, range(string_utils_1, 98544, 1649, 2471, 2515)).
method(m_split_preserve_all_tokens_68, range(string_utils_1, 100199, 2026, 2517, 2552)).
method(m_split_preserve_all_tokens_69, range(string_utils_1, 102231, 2146, 2554, 2592)).
method(m_split_worker_70, range(string_utils_1, 104383, 3725, 2594, 2691)).
method(m_split_by_character_type_71, range(string_utils_1, 108114, 1202, 2693, 2714)).
method(m_split_by_character_type_camel_case_72, range(string_utils_1, 109322, 1617, 2716, 2742)).
method(m_split_by_character_type_73, range(string_utils_1, 110945, 2118, 2744, 2788)).
method(m_join_74, range(string_utils_1, 113162, 822, 2792, 2814)).
method(m_join_75, range(string_utils_1, 113990, 1074, 2816, 2844)).
method(m_join_76, range(string_utils_1, 115070, 1861, 2846, 2893)).
method(m_join_77, range(string_utils_1, 116938, 1215, 2896, 2924)).
method(m_join_78, range(string_utils_1, 118159, 2288, 2926, 2982)).
method(m_join_79, range(string_utils_1, 120453, 1477, 2984, 3027)).
method(m_join_80, range(string_utils_1, 121936, 1519, 3029, 3072)).
method(m_join_81, range(string_utils_1, 123461, 833, 3074, 3093)).
method(m_join_82, range(string_utils_1, 124300, 839, 3095, 3114)).
method(m_delete_whitespace_83, range(string_utils_1, 125237, 1029, 3118, 3148)).
method(m_remove_start_84, range(string_utils_1, 126364, 1363, 3152, 3184)).
method(m_remove_start_ignore_case_85, range(string_utils_1, 127733, 1573, 3186, 3219)).
method(m_remove_end_86, range(string_utils_1, 129312, 1363, 3221, 3253)).
method(m_remove_end_ignore_case_87, range(string_utils_1, 130681, 1419, 3255, 3287)).
method(m_remove_88, range(string_utils_1, 132106, 1170, 3289, 3317)).
method(m_remove_89, range(string_utils_1, 133282, 1151, 3319, 3350)).
method(m_replace_once_90, range(string_utils_1, 134534, 1221, 3354, 3379)).
method(m_replace_91, range(string_utils_1, 135761, 1180, 3381, 3406)).
method(m_replace_92, range(string_utils_1, 136947, 2362, 3408, 3460)).
method(m_replace_each_93, range(string_utils_1, 139315, 1946, 3462, 3503)).
method(m_replace_each_repeatedly_95, range(string_utils_1, 141267, 2677, 3505, 3555)).
method(m_replace_each_94, range(string_utils_1, 143950, 7058, 3557, 3731)).
method(m_replace_chars_105, range(string_utils_1, 151124, 1075, 3735, 3760)).
method(m_replace_chars_106, range(string_utils_1, 152205, 2637, 3762, 3825)).
method(m_overlay_107, range(string_utils_1, 154941, 2227, 3829, 3888)).
method(m_chomp_108, range(string_utils_1, 157268, 1703, 3892, 3941)).
method(m_chomp_109, range(string_utils_1, 158977, 1418, 3943, 3977)).
method(m_chop_110, range(string_utils_1, 160495, 1388, 3981, 4021)).
method(m_repeat_111, range(string_utils_1, 162079, 2079, 4028, 4088)).
method(m_repeat_112, range(string_utils_1, 164164, 1216, 4090, 4117)).
method(m_padding_113, range(string_utils_1, 165386, 1327, 4119, 4151)).
method(m_right_pad_114, range(string_utils_1, 166719, 790, 4153, 4174)).
method(m_right_pad_115, range(string_utils_1, 167515, 1229, 4176, 4209)).
method(m_right_pad_116, range(string_utils_1, 168750, 1960, 4211, 4263)).
method(m_left_pad_117, range(string_utils_1, 170716, 780, 4265, 4286)).
method(m_left_pad_118, range(string_utils_1, 171502, 1200, 4288, 4321)).
method(m_left_pad_119, range(string_utils_1, 172708, 1928, 4323, 4375)).
method(m_length_120, range(string_utils_1, 174642, 366, 4377, 4387)).
method(m_center_121, range(string_utils_1, 175113, 1002, 4391, 4416)).
method(m_center_122, range(string_utils_1, 176121, 1421, 4418, 4454)).
method(m_center_123, range(string_utils_1, 177548, 1677, 4456, 4497)).
method(m_upper_case_124, range(string_utils_1, 179332, 986, 4501, 4525)).
method(m_upper_case_125, range(string_utils_1, 180324, 817, 4527, 4548)).
method(m_lower_case_126, range(string_utils_1, 181147, 986, 4550, 4574)).
method(m_lower_case_127, range(string_utils_1, 182139, 817, 4576, 4597)).
method(m_capitalize_128, range(string_utils_1, 182962, 1101, 4599, 4628)).
method(m_uncapitalize_129, range(string_utils_1, 184069, 1119, 4630, 4659)).
method(m_swap_case_130, range(string_utils_1, 185194, 1796, 4661, 4708)).
method(m_count_matches_131, range(string_utils_1, 187095, 1097, 4712, 4742)).
method(m_is_alpha_132, range(string_utils_1, 188299, 955, 4746, 4775)).
method(m_is_alpha_space_133, range(string_utils_1, 189260, 1104, 4777, 4809)).
method(m_is_alphanumeric_134, range(string_utils_1, 190370, 1088, 4811, 4842)).
method(m_is_alphanumeric_space_135, range(string_utils_1, 191464, 1159, 4844, 4876)).
method(m_is_ascii_printable_136, range(string_utils_1, 192629, 1359, 4878, 4914)).
method(m_is_numeric_137, range(string_utils_1, 193994, 1121, 4916, 4948)).
method(m_is_numeric_space_138, range(string_utils_1, 195121, 1204, 4950, 4984)).
method(m_is_whitespace_139, range(string_utils_1, 196331, 1012, 4986, 5016)).
method(m_is_all_lower_case_140, range(string_utils_1, 197349, 992, 5018, 5046)).
method(m_is_all_upper_case_141, range(string_utils_1, 198347, 992, 5048, 5076)).
method(m_default_string_142, range(string_utils_1, 199439, 631, 5080, 5098)).
method(m_default_string_143, range(string_utils_1, 200076, 803, 5100, 5119)).
method(m_default_if_empty_144, range(string_utils_1, 200885, 846, 5121, 5140)).
method(m_reverse_145, range(string_utils_1, 201832, 625, 5144, 5163)).
method(m_reverse_delimited_146, range(string_utils_1, 202463, 1120, 5165, 5193)).
method(m_abbreviate_147, range(string_utils_1, 203687, 1498, 5197, 5231)).
method(m_abbreviate_148, range(string_utils_1, 205191, 2875, 5233, 5294)).
method(m_difference_149, range(string_utils_1, 208168, 1338, 5298, 5335)).
method(m_index_of_difference_150, range(string_utils_1, 209512, 1401, 5337, 5377)).
method(m_index_of_difference_151, range(string_utils_1, 210919, 3771, 5379, 5466)).
method(m_get_common_prefix_152, range(string_utils_1, 214700, 2447, 5468, 5519)).
method(m_get_levenshtein_distance_153, range(string_utils_1, 217249, 4771, 5523, 5632)).
method(m_starts_with_154, range(string_utils_1, 222586, 974, 5658, 5681)).
method(m_starts_with_ignore_case_155, range(string_utils_1, 223566, 1053, 5683, 5706)).
method(m_starts_with_156, range(string_utils_1, 224625, 838, 5708, 5727)).
method(m_starts_with_any_157, range(string_utils_1, 225473, 1269, 5729, 5758)).
method(m_ends_with_158, range(string_utils_1, 226843, 1007, 5763, 5787)).
method(m_ends_with_ignore_case_159, range(string_utils_1, 227856, 1096, 5789, 5813)).
method(m_ends_with_160, range(string_utils_1, 228958, 896, 5815, 5835)).
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
method(m_string_utils_test_165, range(string_utils_test_1, 3398, 64, 95, 97)).
method(m_main_167, range(string_utils_test_1, 3468, 79, 99, 101)).
method(m_suite_168, range(string_utils_test_1, 3553, 168, 103, 107)).
method(m_set_up_171, range(string_utils_test_1, 3727, 84, 109, 112)).
method(m_tear_down_173, range(string_utils_test_1, 3817, 90, 114, 117)).
method(m_test_constructor_175, range(string_utils_test_1, 3991, 427, 120, 127)).
method(m_test_case_functions_176, range(string_utils_test_1, 4506, 2831, 130, 178)).
method(m_test_swap_case__string_177, range(string_utils_test_1, 7343, 855, 180, 195)).
method(m_test_join__objectarray_178, range(string_utils_test_1, 8282, 499, 198, 206)).
method(m_test_join__array_char_179, range(string_utils_test_1, 8795, 831, 208, 220)).
method(m_test_join__array_string_180, range(string_utils_test_1, 9636, 1273, 222, 243)).
method(m_test_join__iterator_char_181, range(string_utils_test_1, 10919, 524, 245, 251)).
method(m_test_join__iterator_string_182, range(string_utils_test_1, 11453, 1001, 253, 267)).
method(m_test_join__iterable_char_183, range(string_utils_test_1, 12460, 480, 269, 275)).
method(m_test_join__iterable_string_184, range(string_utils_test_1, 12946, 886, 277, 291)).
method(m_test_split__string_185, range(string_utils_test_1, 13838, 778, 293, 314)).
method(m_test_split__string_char_186, range(string_utils_test_1, 14626, 753, 316, 338)).
method(m_test_split__string_string__string_string_int_187, range(string_utils_test_1, 15389, 1439, 340, 371)).
method(m_inner_test_split_188, range(string_utils_test_1, 16838, 1600, 373, 411)).
method(m_test_split_by_whole_string__string_string_boolean_189, range(string_utils_test_1, 18444, 1766, 413, 442)).
method(m_test_split_by_whole_string__string_string_boolean_int_190, range(string_utils_test_1, 20216, 1471, 444, 468)).
method(m_test_split_by_whole_separator_preserve_all_tokens__string_string_int_191, range(string_utils_test_1, 21693, 1897, 470, 514)).
method(m_test_split_preserve_all_tokens__string_192, range(string_utils_test_1, 23600, 2610, 516, 589)).
method(m_test_split_preserve_all_tokens__string_char_193, range(string_utils_test_1, 26220, 3774, 591, 700)).
method(m_test_split_preserve_all_tokens__string_string__string_string_int_194, range(string_utils_test_1, 30004, 5287, 702, 829)).
method(m_inner_test_split_preserve_all_tokens_195, range(string_utils_test_1, 35301, 1914, 831, 874)).
method(m_test_split_by_character_type_196, range(string_utils_test_1, 37221, 1215, 876, 900)).
method(m_test_split_by_character_type_camel_case_197, range(string_utils_test_1, 38446, 1273, 902, 926)).
method(m_test_delete_whitespace__string_198, range(string_utils_test_1, 39725, 869, 928, 939)).
method(m_test_replace__string_string_string_199, range(string_utils_test_1, 40600, 1096, 941, 960)).
method(m_test_replace__string_string_string_int_200, range(string_utils_test_1, 41706, 1337, 962, 985)).
method(m_test_replace_once__string_string_string_201, range(string_utils_test_1, 43053, 991, 987, 1004)).
method(m_test_replace__string_string_array_string_array_202, range(string_utils_test_1, 44050, 2357, 1006, 1040)).
method(m_test_replace__string_string_array_string_array_boolean_205, range(string_utils_test_1, 46413, 1465, 1042, 1066)).
method(m_test_replace_chars__string_char_char_206, range(string_utils_test_1, 47888, 341, 1068, 1073)).
method(m_test_replace_chars__string_string_string_207, range(string_utils_test_1, 48239, 2558, 1075, 1118)).
method(m_test_overlay__string_string_int_int_208, range(string_utils_test_1, 50807, 1640, 1120, 1145)).
method(m_test_repeat__string_int_209, range(string_utils_test_1, 52453, 589, 1147, 1157)).
method(m_test_repeat__string_string_int_210, range(string_utils_test_1, 53048, 478, 1159, 1170)).
method(m_test_chop_211, range(string_utils_test_1, 53532, 767, 1172, 1194)).
method(m_test_chomp_212, range(string_utils_test_1, 54305, 2519, 1196, 1251)).
method(m_test_right_pad__string_int_213, range(string_utils_test_1, 56908, 349, 1254, 1260)).
method(m_test_right_pad__string_int_char_214, range(string_utils_test_1, 57263, 655, 1262, 1272)).
method(m_test_right_pad__string_int_string_215, range(string_utils_test_1, 57924, 726, 1274, 1285)).
method(m_test_left_pad__string_int_216, range(string_utils_test_1, 58742, 282, 1288, 1293)).
method(m_test_left_pad__string_int_char_217, range(string_utils_test_1, 59038, 663, 1295, 1305)).
method(m_test_left_pad__string_int_string_218, range(string_utils_test_1, 59715, 715, 1307, 1318)).
method(m_test_length_219, range(string_utils_test_1, 60436, 353, 1320, 1327)).
method(m_test_center__string_int_220, range(string_utils_test_1, 60877, 680, 1330, 1342)).
method(m_test_center__string_int_char_221, range(string_utils_test_1, 61567, 803, 1344, 1357)).
method(m_test_center__string_int_string_222, range(string_utils_test_1, 62380, 1007, 1359, 1375)).
method(m_test_reverse__string_223, range(string_utils_test_1, 63471, 218, 1378, 1382)).
method(m_test_reverse_delimited__string_char_224, range(string_utils_test_1, 63703, 407, 1384, 1390)).
method(m_test_default__string_225, range(string_utils_test_1, 64194, 219, 1393, 1397)).
method(m_test_default__string_string_226, range(string_utils_test_1, 64419, 253, 1399, 1403)).
method(m_test_default_if_empty__string_string_227, range(string_utils_test_1, 64678, 325, 1405, 1410)).
method(m_test_abbreviate__string_int_228, range(string_utils_test_1, 65087, 1306, 1413, 1436)).
method(m_test_abbreviate__string_int_int_229, range(string_utils_test_1, 66403, 2199, 1438, 1483)).
method(m_assert_abbreviate_with_offset_230, range(string_utils_test_1, 68608, 663, 1485, 1496)).
method(m_test_difference__string_string_231, range(string_utils_test_1, 69355, 721, 1499, 1509)).
method(m_test_difference_at__string_string_232, range(string_utils_test_1, 70082, 839, 1511, 1522)).
method(m_test_get_levenshtein_distance__string_string_233, range(string_utils_test_1, 71005, 1356, 1525, 1550)).
method(m_test_empty_234, range(string_utils_test_1, 72367, 240, 1552, 1559)).
method(m_test_is_all_lower_case_235, range(string_utils_test_1, 72613, 407, 1561, 1570)).
method(m_test_is_all_upper_case_236, range(string_utils_test_1, 73026, 407, 1572, 1581)).
method(m_test_remove_start_237, range(string_utils_test_1, 73439, 879, 1583, 1599)).
method(m_test_remove_start_ignore_case_238, range(string_utils_test_1, 74328, 1603, 1601, 1620)).
method(m_test_remove_end_239, range(string_utils_test_1, 75937, 934, 1622, 1639)).
method(m_test_remove_end_ignore_case_240, range(string_utils_test_1, 76877, 1700, 1641, 1661)).
method(m_test_remove__string_241, range(string_utils_test_1, 78583, 1214, 1663, 1689)).
method(m_test_remove_char_242, range(string_utils_test_1, 79803, 751, 1691, 1707)).
method(m_test_difference_at__string_array_243, range(string_utils_test_1, 80565, 1485, 1710, 1728)).
method(m_test_get_common_prefix__string_array_244, range(string_utils_test_1, 82060, 1483, 1730, 1748)).
method(m_test_starts_with_any_245, range(string_utils_test_1, 83557, 579, 1750, 1758)).

%%% Blocks
%string_utils_1 - org.apache.commons.lang3.StringUtils
block(string_utils_1_block1, block, string_utils_1_code3, body, range(string_utils_1, 141181, 80, 3501, 3503)).
block(string_utils_1_block2, block, string_utils_1_code4, body, range(string_utils_1, 146484, 4524, 3607, 3731)).
block(string_utils_1_block3, block, string_utils_1_stmt2, then_statement, range(string_utils_1, 146845, 36, 3614, 3616)).
block(string_utils_1_block4, block, string_utils_1_stmt4, then_statement, range(string_utils_1, 146965, 116, 3619, 3621)).
block(string_utils_1_block5, block, string_utils_1_stmt7, then_statement, range(string_utils_1, 147293, 201, 3627, 3632)).
block(string_utils_1_block6, block, string_utils_1_stmt12, body, range(string_utils_1, 147928, 612, 3644, 3661)).
block(string_utils_1_block7, block, string_utils_1_stmt13, then_statement, range(string_utils_1, 148092, 41, 3647, 3649)).
block(string_utils_1_block8, block, string_utils_1_stmt16, then_statement, range(string_utils_1, 148278, 68, 3653, 3655)).
block(string_utils_1_block9, block, string_utils_1_stmt16, else_statement, range(string_utils_1, 148352, 178, 3655, 3660)).
block(string_utils_1_block10, block, string_utils_1_stmt18, then_statement, range(string_utils_1, 148416, 100, 3656, 3659)).
block(string_utils_1_block11, block, string_utils_1_stmt21, then_statement, range(string_utils_1, 148659, 36, 3665, 3667)).
block(string_utils_1_block12, block, string_utils_1_stmt25, body, range(string_utils_1, 149019, 197, 3675, 3680)).
block(string_utils_1_block13, block, string_utils_1_stmt27, then_statement, range(string_utils_1, 149130, 76, 3677, 3679)).
block(string_utils_1_block14, block, string_utils_1_stmt30, body, range(string_utils_1, 149451, 1220, 3686, 3720)).
block(string_utils_1_block15, block, string_utils_1_stmt31, body, range(string_utils_1, 149506, 59, 3688, 3690)).
block(string_utils_1_block16, block, string_utils_1_stmt38, body, range(string_utils_1, 149929, 683, 3700, 3717)).
block(string_utils_1_block17, block, string_utils_1_stmt41, then_statement, range(string_utils_1, 150318, 76, 3709, 3711)).
block(string_utils_1_block18, block, string_utils_1_stmt41, else_statement, range(string_utils_1, 150400, 198, 3711, 3716)).
block(string_utils_1_block19, block, string_utils_1_stmt43, then_statement, range(string_utils_1, 150468, 112, 3712, 3715)).
block(string_utils_1_block20, block, string_utils_1_stmt47, body, range(string_utils_1, 150761, 51, 3722, 3724)).
block(string_utils_1_block21, block, string_utils_1_stmt50, then_statement, range(string_utils_1, 150874, 38, 3726, 3728)).
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
block(string_utils_test_1_block1, block, string_utils_test_1_code3, body, range(string_utils_test_1, 1855, 670, 52, 74)).
block(string_utils_test_1_block2, block, string_utils_test_1_stmt5, body, range(string_utils_test_1, 2009, 308, 57, 66)).
block(string_utils_test_1_block3, block, string_utils_test_1_stmt6, then_statement, range(string_utils_test_1, 2061, 164, 58, 63)).
block(string_utils_test_1_block4, block, string_utils_test_1_stmt8, then_statement, range(string_utils_test_1, 2139, 72, 60, 62)).
block(string_utils_test_1_block5, block, string_utils_test_1_stmt10, then_statement, range(string_utils_test_1, 2243, 64, 63, 65)).
block(string_utils_test_1_block6, block, string_utils_test_1_stmt12, body, range(string_utils_test_1, 2356, 55, 67, 69)).
block(string_utils_test_1_block7, block, string_utils_test_1_code63, body, range(string_utils_test_1, 3434, 28, 95, 97)).
block(string_utils_test_1_block8, block, string_utils_test_1_code64, body, range(string_utils_test_1, 3580, 141, 103, 107)).
block(string_utils_test_1_block9, block, string_utils_test_1_code69, body, range(string_utils_test_1, 3781, 30, 110, 112)).
block(string_utils_test_1_block10, block, string_utils_test_1_code70, body, range(string_utils_test_1, 3874, 33, 115, 117)).
block(string_utils_test_1_block11, block, string_utils_test_1_code71, body, range(string_utils_test_1, 44198, 2209, 1009, 1040)).

%%% Statements
%string_utils_1 - org.apache.commons.lang3.StringUtils
stmt(string_utils_1_stmt1, return_statement, string_utils_1_block1, (statements, 0), range(string_utils_1, 141191, 64, 3502, 3502)).
stmt(string_utils_1_stmt2, if_statement, string_utils_1_block2, (statements, 0), range(string_utils_1, 146677, 204, 3612, 3616)).
stmt(string_utils_1_stmt3, return_statement, string_utils_1_block3, (statements, 0), range(string_utils_1, 146859, 12, 3615, 3615)).
stmt(string_utils_1_stmt4, if_statement, string_utils_1_block2, (statements, 1), range(string_utils_1, 146945, 136, 3619, 3621)).
stmt(string_utils_1_stmt5, variable_declaration_statement, string_utils_1_block2, (statements, 2), range(string_utils_1, 147091, 37, 3623, 3623)).
stmt(string_utils_1_stmt6, variable_declaration_statement, string_utils_1_block2, (statements, 3), range(string_utils_1, 147137, 47, 3624, 3624)).
stmt(string_utils_1_stmt7, if_statement, string_utils_1_block2, (statements, 4), range(string_utils_1, 147254, 240, 3627, 3632)).
stmt(string_utils_1_stmt8, variable_declaration_statement, string_utils_1_block2, (statements, 5), range(string_utils_1, 147554, 64, 3635, 3635)).
stmt(string_utils_1_stmt9, variable_declaration_statement, string_utils_1_block2, (statements, 6), range(string_utils_1, 147679, 19, 3638, 3638)).
stmt(string_utils_1_stmt10, variable_declaration_statement, string_utils_1_block2, (statements, 7), range(string_utils_1, 147707, 22, 3639, 3639)).
stmt(string_utils_1_stmt11, variable_declaration_statement, string_utils_1_block2, (statements, 8), range(string_utils_1, 147738, 19, 3640, 3640)).
stmt(string_utils_1_stmt12, for_statement, string_utils_1_block2, (statements, 9), range(string_utils_1, 147889, 651, 3644, 3661)).
stmt(string_utils_1_stmt13, if_statement, string_utils_1_block6, (statements, 0), range(string_utils_1, 147942, 191, 3645, 3649)).
stmt(string_utils_1_stmt14, continue_statement, string_utils_1_block7, (statements, 0), range(string_utils_1, 148110, 9, 3648, 3648)).
stmt(string_utils_1_stmt15, expression_statement, string_utils_1_block6, (statements, 1), range(string_utils_1, 148146, 40, 3650, 3650)).
stmt(string_utils_1_stmt16, if_statement, string_utils_1_block6, (statements, 2), range(string_utils_1, 148257, 273, 3653, 3660)).
stmt(string_utils_1_stmt17, expression_statement, string_utils_1_block8, (statements, 0), range(string_utils_1, 148296, 36, 3654, 3654)).
stmt(string_utils_1_stmt18, if_statement, string_utils_1_block9, (statements, 0), range(string_utils_1, 148370, 146, 3656, 3659)).
stmt(string_utils_1_stmt19, expression_statement, string_utils_1_block10, (statements, 0), range(string_utils_1, 148438, 22, 3657, 3657)).
stmt(string_utils_1_stmt20, expression_statement, string_utils_1_block10, (statements, 1), range(string_utils_1, 148481, 17, 3658, 3658)).
stmt(string_utils_1_stmt21, if_statement, string_utils_1_block2, (statements, 10), range(string_utils_1, 148638, 57, 3665, 3667)).
stmt(string_utils_1_stmt22, return_statement, string_utils_1_block11, (statements, 0), range(string_utils_1, 148673, 12, 3666, 3666)).
stmt(string_utils_1_stmt23, variable_declaration_statement, string_utils_1_block2, (statements, 11), range(string_utils_1, 148705, 14, 3669, 3669)).
stmt(string_utils_1_stmt24, variable_declaration_statement, string_utils_1_block2, (statements, 12), range(string_utils_1, 148840, 17, 3672, 3672)).
stmt(string_utils_1_stmt25, for_statement, string_utils_1_block2, (statements, 13), range(string_utils_1, 148975, 241, 3675, 3680)).
stmt(string_utils_1_stmt26, variable_declaration_statement, string_utils_1_block12, (statements, 0), range(string_utils_1, 149033, 67, 3676, 3676)).
stmt(string_utils_1_stmt27, if_statement, string_utils_1_block12, (statements, 1), range(string_utils_1, 149113, 93, 3677, 3679)).
stmt(string_utils_1_stmt28, expression_statement, string_utils_1_block2, (statements, 14), range(string_utils_1, 149294, 49, 3682, 3682)).
stmt(string_utils_1_stmt29, variable_declaration_statement, string_utils_1_block2, (statements, 15), range(string_utils_1, 149353, 64, 3684, 3684)).
stmt(string_utils_1_stmt30, while_statement, string_utils_1_block2, (statements, 16), range(string_utils_1, 149427, 1244, 3686, 3720)).
stmt(string_utils_1_stmt31, for_statement, string_utils_1_block14, (statements, 0), range(string_utils_1, 149466, 99, 3688, 3690)).
stmt(string_utils_1_stmt32, expression_statement, string_utils_1_block15, (statements, 0), range(string_utils_1, 149524, 27, 3689, 3689)).
stmt(string_utils_1_stmt33, expression_statement, string_utils_1_block14, (statements, 1), range(string_utils_1, 149578, 42, 3691, 3691)).
stmt(string_utils_1_stmt34, expression_statement, string_utils_1_block14, (statements, 2), range(string_utils_1, 149634, 54, 3693, 3693)).
stmt(string_utils_1_stmt35, expression_statement, string_utils_1_block14, (statements, 3), range(string_utils_1, 149702, 15, 3695, 3695)).
stmt(string_utils_1_stmt36, expression_statement, string_utils_1_block14, (statements, 4), range(string_utils_1, 149730, 18, 3696, 3696)).
stmt(string_utils_1_stmt37, expression_statement, string_utils_1_block14, (statements, 5), range(string_utils_1, 149761, 15, 3697, 3697)).
stmt(string_utils_1_stmt38, for_statement, string_utils_1_block14, (statements, 6), range(string_utils_1, 149890, 722, 3700, 3717)).
stmt(string_utils_1_stmt39, if_statement, string_utils_1_block16, (statements, 0), range(string_utils_1, 149947, 207, 3701, 3705)).
stmt(string_utils_1_stmt40, expression_statement, string_utils_1_block16, (statements, 1), range(string_utils_1, 150171, 47, 3706, 3706)).
stmt(string_utils_1_stmt41, if_statement, string_utils_1_block16, (statements, 2), range(string_utils_1, 150297, 301, 3709, 3716)).
stmt(string_utils_1_stmt42, expression_statement, string_utils_1_block17, (statements, 0), range(string_utils_1, 150340, 36, 3710, 3710)).
stmt(string_utils_1_stmt43, if_statement, string_utils_1_block18, (statements, 0), range(string_utils_1, 150422, 158, 3712, 3715)).
stmt(string_utils_1_stmt44, expression_statement, string_utils_1_block19, (statements, 0), range(string_utils_1, 150494, 22, 3713, 3713)).
stmt(string_utils_1_stmt45, expression_statement, string_utils_1_block19, (statements, 1), range(string_utils_1, 150541, 17, 3714, 3714)).
stmt(string_utils_1_stmt46, variable_declaration_statement, string_utils_1_block2, (statements, 17), range(string_utils_1, 150680, 31, 3721, 3721)).
stmt(string_utils_1_stmt47, for_statement, string_utils_1_block2, (statements, 18), range(string_utils_1, 150720, 92, 3722, 3724)).
stmt(string_utils_1_stmt48, expression_statement, string_utils_1_block20, (statements, 0), range(string_utils_1, 150775, 27, 3723, 3723)).
stmt(string_utils_1_stmt49, variable_declaration_statement, string_utils_1_block2, (statements, 19), range(string_utils_1, 150821, 31, 3725, 3725)).
stmt(string_utils_1_stmt50, if_statement, string_utils_1_block2, (statements, 20), range(string_utils_1, 150861, 51, 3726, 3728)).
stmt(string_utils_1_stmt51, return_statement, string_utils_1_block21, (statements, 0), range(string_utils_1, 150888, 14, 3727, 3727)).
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
stmt(string_utils_test_1_stmt1, variable_declaration_statement, string_utils_test_1_block1, (statements, 0), range(string_utils_test_1, 1865, 15, 53, 53)).
stmt(string_utils_test_1_stmt2, variable_declaration_statement, string_utils_test_1_block1, (statements, 1), range(string_utils_test_1, 1889, 16, 54, 54)).
stmt(string_utils_test_1_stmt3, variable_declaration_statement, string_utils_test_1_block1, (statements, 2), range(string_utils_test_1, 1914, 15, 55, 55)).
stmt(string_utils_test_1_stmt4, variable_declaration_statement, string_utils_test_1_block1, (statements, 3), range(string_utils_test_1, 1938, 16, 56, 56)).
stmt(string_utils_test_1_stmt5, for_statement, string_utils_test_1_block1, (statements, 4), range(string_utils_test_1, 1963, 354, 57, 66)).
stmt(string_utils_test_1_stmt6, if_statement, string_utils_test_1_block2, (statements, 0), range(string_utils_test_1, 2023, 284, 58, 65)).
stmt(string_utils_test_1_stmt7, expression_statement, string_utils_test_1_block3, (statements, 0), range(string_utils_test_1, 2079, 31, 59, 59)).
stmt(string_utils_test_1_stmt8, if_statement, string_utils_test_1_block3, (statements, 1), range(string_utils_test_1, 2127, 84, 60, 62)).
stmt(string_utils_test_1_stmt9, expression_statement, string_utils_test_1_block4, (statements, 0), range(string_utils_test_1, 2161, 32, 61, 61)).
stmt(string_utils_test_1_stmt10, if_statement, string_utils_test_1_stmt6, elseStatement, range(string_utils_test_1, 2231, 76, 63, 65)).
stmt(string_utils_test_1_stmt11, expression_statement, string_utils_test_1_block5, (statements, 0), range(string_utils_test_1, 2261, 32, 64, 64)).
stmt(string_utils_test_1_stmt12, for_statement, string_utils_test_1_block1, (statements, 5), range(string_utils_test_1, 2326, 85, 67, 69)).
stmt(string_utils_test_1_stmt13, expression_statement, string_utils_test_1_block6, (statements, 0), range(string_utils_test_1, 2370, 31, 68, 68)).
stmt(string_utils_test_1_stmt14, expression_statement, string_utils_test_1_block1, (statements, 6), range(string_utils_test_1, 2420, 16, 70, 70)).
stmt(string_utils_test_1_stmt15, expression_statement, string_utils_test_1_block1, (statements, 7), range(string_utils_test_1, 2445, 21, 71, 71)).
stmt(string_utils_test_1_stmt16, expression_statement, string_utils_test_1_block1, (statements, 8), range(string_utils_test_1, 2475, 15, 72, 72)).
stmt(string_utils_test_1_stmt17, expression_statement, string_utils_test_1_block1, (statements, 9), range(string_utils_test_1, 2499, 20, 73, 73)).
stmt(string_utils_test_1_stmt18, super_constructor_invocation, string_utils_test_1_block7, (statements, 0), range(string_utils_test_1, 3444, 12, 96, 96)).
stmt(string_utils_test_1_stmt19, variable_declaration_statement, string_utils_test_1_block8, (statements, 0), range(string_utils_test_1, 3590, 55, 104, 104)).
stmt(string_utils_test_1_stmt20, expression_statement, string_utils_test_1_block8, (statements, 1), range(string_utils_test_1, 3654, 39, 105, 105)).
stmt(string_utils_test_1_stmt21, return_statement, string_utils_test_1_block8, (statements, 2), range(string_utils_test_1, 3702, 13, 106, 106)).
stmt(string_utils_test_1_stmt22, expression_statement, string_utils_test_1_block9, (statements, 0), range(string_utils_test_1, 3791, 14, 111, 111)).
stmt(string_utils_test_1_stmt23, expression_statement, string_utils_test_1_block10, (statements, 0), range(string_utils_test_1, 3884, 17, 116, 116)).
stmt(string_utils_test_1_stmt24, expression_statement, string_utils_test_1_block11, (statements, 0), range(string_utils_test_1, 44248, 80, 1013, 1013)).
stmt(string_utils_test_1_stmt25, expression_statement, string_utils_test_1_block11, (statements, 1), range(string_utils_test_1, 44337, 83, 1014, 1014)).
stmt(string_utils_test_1_stmt26, expression_statement, string_utils_test_1_block11, (statements, 2), range(string_utils_test_1, 44429, 63, 1015, 1015)).
stmt(string_utils_test_1_stmt27, expression_statement, string_utils_test_1_block11, (statements, 3), range(string_utils_test_1, 44501, 72, 1016, 1016)).
stmt(string_utils_test_1_stmt28, expression_statement, string_utils_test_1_block11, (statements, 4), range(string_utils_test_1, 44582, 72, 1017, 1017)).
stmt(string_utils_test_1_stmt29, expression_statement, string_utils_test_1_block11, (statements, 5), range(string_utils_test_1, 44663, 76, 1018, 1018)).
stmt(string_utils_test_1_stmt30, expression_statement, string_utils_test_1_block11, (statements, 6), range(string_utils_test_1, 44749, 86, 1020, 1020)).
stmt(string_utils_test_1_stmt31, expression_statement, string_utils_test_1_block11, (statements, 7), range(string_utils_test_1, 44844, 90, 1021, 1021)).
stmt(string_utils_test_1_stmt32, expression_statement, string_utils_test_1_block11, (statements, 8), range(string_utils_test_1, 44943, 103, 1022, 1022)).
stmt(string_utils_test_1_stmt33, expression_statement, string_utils_test_1_block11, (statements, 9), range(string_utils_test_1, 45055, 103, 1023, 1023)).
stmt(string_utils_test_1_stmt34, expression_statement, string_utils_test_1_block11, (statements, 10), range(string_utils_test_1, 45196, 100, 1026, 1026)).
stmt(string_utils_test_1_stmt35, expression_statement, string_utils_test_1_block11, (statements, 11), range(string_utils_test_1, 45305, 834, 1027, 1035)).
stmt(string_utils_test_1_stmt36, expression_statement, string_utils_test_1_block11, (statements, 12), range(string_utils_test_1, 46202, 90, 1038, 1038)).
stmt(string_utils_test_1_stmt37, expression_statement, string_utils_test_1_block11, (statements, 13), range(string_utils_test_1, 46301, 100, 1039, 1039)).

%%% Expressions
%string_utils_1 - org.apache.commons.lang3.StringUtils
expr(string_utils_1_expr1, method_invocation, string_utils_1_stmt1, expression, range(string_utils_1, 141198, 56, 3502, 3502), "replaceEach(text,searchList,replacementList,false,0)").
expr(string_utils_1_expr7, infix_expression, string_utils_1_expr6, left_operand, range(string_utils_1, 146681, 12, 3612, 3612), "text == null").
expr(string_utils_1_expr2, infix_expression, string_utils_1_stmt2, expression, range(string_utils_1, 146681, 153, 3612, 3613), "text == null || text.length() == 0 || searchList == null || searchList.length == 0 || replacementList == null || replacementList.length == 0").
expr(string_utils_1_expr4, infix_expression, string_utils_1_expr3, left_operand, range(string_utils_1, 146681, 95, 3612, 3613), "text == null || text.length() == 0 || searchList == null || searchList.length == 0").
expr(string_utils_1_expr3, infix_expression, string_utils_1_expr2, left_operand, range(string_utils_1, 146681, 122, 3612, 3613), "text == null || text.length() == 0 || searchList == null || searchList.length == 0 || replacementList == null").
expr(string_utils_1_expr6, infix_expression, string_utils_1_expr5, left_operand, range(string_utils_1, 146681, 34, 3612, 3612), "text == null || text.length() == 0").
expr(string_utils_1_expr5, infix_expression, string_utils_1_expr4, left_operand, range(string_utils_1, 146681, 56, 3612, 3612), "text == null || text.length() == 0 || searchList == null").
expr(string_utils_1_expr8, infix_expression, string_utils_1_expr6, right_operand, range(string_utils_1, 146697, 18, 3612, 3612), "text.length() == 0").
expr(string_utils_1_expr9, method_invocation, string_utils_1_expr8, left_operand, range(string_utils_1, 146697, 13, 3612, 3612), "text.length()").
expr(string_utils_1_expr10, infix_expression, string_utils_1_expr5, right_operand, range(string_utils_1, 146719, 18, 3612, 3612), "searchList == null").
expr(string_utils_1_expr11, infix_expression, string_utils_1_stmt4, expression, range(string_utils_1, 146949, 14, 3619, 3619), "timeToLive < 0").
expr(string_utils_1_expr12, infix_expression, string_utils_1_stmt7, expression, range(string_utils_1, 147258, 33, 3627, 3627), "searchLength != replacementLength").
expr(string_utils_1_expr13, array_creation, string_utils_1_code12, initializer, range(string_utils_1, 147592, 25, 3635, 3635), "new boolean[searchLength]").
expr(string_utils_1_expr14, prefix_expression, string_utils_1_code17, initializer, range(string_utils_1, 147695, 2, 3638, 3638), "-1").
expr(string_utils_1_expr15, prefix_expression, string_utils_1_code19, initializer, range(string_utils_1, 147726, 2, 3639, 3639), "-1").
expr(string_utils_1_expr16, prefix_expression, string_utils_1_code21, initializer, range(string_utils_1, 147754, 2, 3640, 3640), "-1").
expr(string_utils_1_expr17, variable_declaration_expression, string_utils_1_stmt12, (initializers, 0), range(string_utils_1, 147894, 9, 3644, 3644), "int i=0").
expr(string_utils_1_expr18, infix_expression, string_utils_1_stmt12, expression, range(string_utils_1, 147905, 16, 3644, 3644), "i < searchLength").
expr(string_utils_1_expr19, postfix_expression, string_utils_1_stmt12, (updaters, 0), range(string_utils_1, 147923, 3, 3644, 3644), "i++").
expr(string_utils_1_expr20, infix_expression, string_utils_1_stmt13, expression, range(string_utils_1, 147946, 131, 3645, 3646), "noMoreMatchesForReplIndex[i] || searchList[i] == null || searchList[i].length() == 0 || replacementList[i] == null").
expr(string_utils_1_expr21, infix_expression, string_utils_1_expr20, left_operand, range(string_utils_1, 147946, 101, 3645, 3646), "noMoreMatchesForReplIndex[i] || searchList[i] == null || searchList[i].length() == 0").
expr(string_utils_1_expr22, infix_expression, string_utils_1_expr21, left_operand, range(string_utils_1, 147946, 53, 3645, 3645), "noMoreMatchesForReplIndex[i] || searchList[i] == null").
expr(string_utils_1_expr23, array_access, string_utils_1_expr22, left_operand, range(string_utils_1, 147946, 28, 3645, 3645), "noMoreMatchesForReplIndex[i]").
expr(string_utils_1_expr24, infix_expression, string_utils_1_expr22, right_operand, range(string_utils_1, 147978, 21, 3645, 3645), "searchList[i] == null").
expr(string_utils_1_expr25, array_access, string_utils_1_expr24, left_operand, range(string_utils_1, 147978, 13, 3645, 3645), "searchList[i]").
expr(string_utils_1_expr26, assignment, string_utils_1_stmt15, expression, range(string_utils_1, 148146, 39, 3650, 3650), "tempIndex=text.indexOf(searchList[i])").
expr(string_utils_1_expr27, method_invocation, string_utils_1_expr26, right_hand_side, range(string_utils_1, 148158, 27, 3650, 3650), "text.indexOf(searchList[i])").
expr(string_utils_1_expr28, array_access, string_utils_1_expr27, (arguments, 0), range(string_utils_1, 148171, 13, 3650, 3650), "searchList[i]").
expr(string_utils_1_expr29, infix_expression, string_utils_1_stmt16, expression, range(string_utils_1, 148261, 15, 3653, 3653), "tempIndex == -1").
expr(string_utils_1_expr30, prefix_expression, string_utils_1_expr29, right_operand, range(string_utils_1, 148274, 2, 3653, 3653), "-1").
expr(string_utils_1_expr31, assignment, string_utils_1_stmt17, expression, range(string_utils_1, 148296, 35, 3654, 3654), "noMoreMatchesForReplIndex[i]=true").
expr(string_utils_1_expr32, array_access, string_utils_1_expr31, left_hand_side, range(string_utils_1, 148296, 28, 3654, 3654), "noMoreMatchesForReplIndex[i]").
expr(string_utils_1_expr33, infix_expression, string_utils_1_stmt18, expression, range(string_utils_1, 148374, 40, 3656, 3656), "textIndex == -1 || tempIndex < textIndex").
expr(string_utils_1_expr34, infix_expression, string_utils_1_expr33, left_operand, range(string_utils_1, 148374, 15, 3656, 3656), "textIndex == -1").
expr(string_utils_1_expr35, prefix_expression, string_utils_1_expr34, right_operand, range(string_utils_1, 148387, 2, 3656, 3656), "-1").
expr(string_utils_1_expr36, infix_expression, string_utils_1_expr33, right_operand, range(string_utils_1, 148393, 21, 3656, 3656), "tempIndex < textIndex").
expr(string_utils_1_expr37, assignment, string_utils_1_stmt19, expression, range(string_utils_1, 148438, 21, 3657, 3657), "textIndex=tempIndex").
expr(string_utils_1_expr38, assignment, string_utils_1_stmt20, expression, range(string_utils_1, 148481, 16, 3658, 3658), "replaceIndex=i").
expr(string_utils_1_expr39, infix_expression, string_utils_1_stmt21, expression, range(string_utils_1, 148642, 15, 3665, 3665), "textIndex == -1").
expr(string_utils_1_expr40, prefix_expression, string_utils_1_expr39, right_operand, range(string_utils_1, 148655, 2, 3665, 3665), "-1").
expr(string_utils_1_expr41, variable_declaration_expression, string_utils_1_stmt25, (initializers, 0), range(string_utils_1, 148980, 9, 3675, 3675), "int i=0").
expr(string_utils_1_expr42, infix_expression, string_utils_1_stmt25, expression, range(string_utils_1, 148991, 21, 3675, 3675), "i < searchList.length").
expr(string_utils_1_expr43, postfix_expression, string_utils_1_stmt25, (updaters, 0), range(string_utils_1, 149014, 3, 3675, 3675), "i++").
expr(string_utils_1_expr44, infix_expression, string_utils_1_code31, initializer, range(string_utils_1, 149047, 52, 3676, 3676), "replacementList[i].length() - searchList[i].length()").
expr(string_utils_1_expr45, method_invocation, string_utils_1_expr44, left_operand, range(string_utils_1, 149047, 27, 3676, 3676), "replacementList[i].length()").
expr(string_utils_1_expr46, array_access, string_utils_1_expr45, expression, range(string_utils_1, 149047, 18, 3676, 3676), "replacementList[i]").
expr(string_utils_1_expr47, method_invocation, string_utils_1_expr44, right_operand, range(string_utils_1, 149077, 22, 3676, 3676), "searchList[i].length()").
expr(string_utils_1_expr48, array_access, string_utils_1_expr47, expression, range(string_utils_1, 149077, 13, 3676, 3676), "searchList[i]").
expr(string_utils_1_expr49, infix_expression, string_utils_1_stmt27, expression, range(string_utils_1, 149117, 11, 3677, 3677), "greater > 0").
expr(string_utils_1_expr50, assignment, string_utils_1_stmt28, expression, range(string_utils_1, 149294, 48, 3682, 3682), "increase=Math.min(increase,text.length() / 5)").
expr(string_utils_1_expr51, method_invocation, string_utils_1_expr50, right_hand_side, range(string_utils_1, 149305, 37, 3682, 3682), "Math.min(increase,text.length() / 5)").
expr(string_utils_1_expr52, infix_expression, string_utils_1_expr51, (arguments, 1), range(string_utils_1, 149324, 17, 3682, 3682), "text.length() / 5").
expr(string_utils_1_expr53, method_invocation, string_utils_1_expr52, left_operand, range(string_utils_1, 149324, 13, 3682, 3682), "text.length()").
expr(string_utils_1_expr54, class_instance_creation, string_utils_1_code33, initializer, range(string_utils_1, 149373, 43, 3684, 3684), "new StringBuilder(text.length() + increase)").
expr(string_utils_1_expr55, infix_expression, string_utils_1_expr54, (arguments, 0), range(string_utils_1, 149391, 24, 3684, 3684), "text.length() + increase").
expr(string_utils_1_expr56, method_invocation, string_utils_1_expr55, left_operand, range(string_utils_1, 149391, 13, 3684, 3684), "text.length()").
expr(string_utils_1_expr57, infix_expression, string_utils_1_stmt30, expression, range(string_utils_1, 149434, 15, 3686, 3686), "textIndex != -1").
expr(string_utils_1_expr58, prefix_expression, string_utils_1_expr57, right_operand, range(string_utils_1, 149447, 2, 3686, 3686), "-1").
expr(string_utils_1_expr59, variable_declaration_expression, string_utils_1_stmt31, (initializers, 0), range(string_utils_1, 149471, 13, 3688, 3688), "int i=start").
expr(string_utils_1_expr60, infix_expression, string_utils_1_stmt31, expression, range(string_utils_1, 149486, 13, 3688, 3688), "i < textIndex").
expr(string_utils_1_expr61, postfix_expression, string_utils_1_stmt31, (updaters, 0), range(string_utils_1, 149501, 3, 3688, 3688), "i++").
expr(string_utils_1_expr62, method_invocation, string_utils_1_stmt32, expression, range(string_utils_1, 149524, 26, 3689, 3689), "buf.append(text.charAt(i))").
expr(string_utils_1_expr63, method_invocation, string_utils_1_expr62, (arguments, 0), range(string_utils_1, 149535, 14, 3689, 3689), "text.charAt(i)").
expr(string_utils_1_expr64, method_invocation, string_utils_1_stmt33, expression, range(string_utils_1, 149578, 41, 3691, 3691), "buf.append(replacementList[replaceIndex])").
expr(string_utils_1_expr65, array_access, string_utils_1_expr64, (arguments, 0), range(string_utils_1, 149589, 29, 3691, 3691), "replacementList[replaceIndex]").
expr(string_utils_1_expr66, assignment, string_utils_1_stmt34, expression, range(string_utils_1, 149634, 53, 3693, 3693), "start=textIndex + searchList[replaceIndex].length()").
expr(string_utils_1_expr67, infix_expression, string_utils_1_expr66, right_hand_side, range(string_utils_1, 149642, 45, 3693, 3693), "textIndex + searchList[replaceIndex].length()").
expr(string_utils_1_expr68, method_invocation, string_utils_1_expr67, right_operand, range(string_utils_1, 149654, 33, 3693, 3693), "searchList[replaceIndex].length()").
expr(string_utils_1_expr69, array_access, string_utils_1_expr68, expression, range(string_utils_1, 149654, 24, 3693, 3693), "searchList[replaceIndex]").
expr(string_utils_1_expr70, assignment, string_utils_1_stmt35, expression, range(string_utils_1, 149702, 14, 3695, 3695), "textIndex=-1").
expr(string_utils_1_expr71, prefix_expression, string_utils_1_expr70, right_hand_side, range(string_utils_1, 149714, 2, 3695, 3695), "-1").
expr(string_utils_1_expr72, assignment, string_utils_1_stmt36, expression, range(string_utils_1, 149730, 17, 3696, 3696), "replaceIndex=-1").
expr(string_utils_1_expr73, prefix_expression, string_utils_1_expr72, right_hand_side, range(string_utils_1, 149745, 2, 3696, 3696), "-1").
expr(string_utils_1_expr74, assignment, string_utils_1_stmt37, expression, range(string_utils_1, 149761, 14, 3697, 3697), "tempIndex=-1").
expr(string_utils_1_expr75, prefix_expression, string_utils_1_expr74, right_hand_side, range(string_utils_1, 149773, 2, 3697, 3697), "-1").
expr(string_utils_1_expr76, variable_declaration_expression, string_utils_1_stmt38, (initializers, 0), range(string_utils_1, 149895, 9, 3700, 3700), "int i=0").
expr(string_utils_1_expr77, infix_expression, string_utils_1_stmt38, expression, range(string_utils_1, 149906, 16, 3700, 3700), "i < searchLength").
expr(string_utils_1_expr78, postfix_expression, string_utils_1_stmt38, (updaters, 0), range(string_utils_1, 149924, 3, 3700, 3700), "i++").
expr(string_utils_1_expr79, infix_expression, string_utils_1_stmt39, expression, range(string_utils_1, 149951, 135, 3701, 3702), "noMoreMatchesForReplIndex[i] || searchList[i] == null || searchList[i].length() == 0 || replacementList[i] == null").
expr(string_utils_1_expr80, infix_expression, string_utils_1_expr79, left_operand, range(string_utils_1, 149951, 105, 3701, 3702), "noMoreMatchesForReplIndex[i] || searchList[i] == null || searchList[i].length() == 0").
expr(string_utils_1_expr81, infix_expression, string_utils_1_expr80, left_operand, range(string_utils_1, 149951, 53, 3701, 3701), "noMoreMatchesForReplIndex[i] || searchList[i] == null").
expr(string_utils_1_expr82, array_access, string_utils_1_expr81, left_operand, range(string_utils_1, 149951, 28, 3701, 3701), "noMoreMatchesForReplIndex[i]").
expr(string_utils_1_expr83, infix_expression, string_utils_1_expr81, right_operand, range(string_utils_1, 149983, 21, 3701, 3701), "searchList[i] == null").
expr(string_utils_1_expr84, array_access, string_utils_1_expr83, left_operand, range(string_utils_1, 149983, 13, 3701, 3701), "searchList[i]").
expr(string_utils_1_expr85, assignment, string_utils_1_stmt40, expression, range(string_utils_1, 150171, 46, 3706, 3706), "tempIndex=text.indexOf(searchList[i],start)").
expr(string_utils_1_expr86, method_invocation, string_utils_1_expr85, right_hand_side, range(string_utils_1, 150183, 34, 3706, 3706), "text.indexOf(searchList[i],start)").
expr(string_utils_1_expr87, array_access, string_utils_1_expr86, (arguments, 0), range(string_utils_1, 150196, 13, 3706, 3706), "searchList[i]").
expr(string_utils_1_expr88, infix_expression, string_utils_1_stmt41, expression, range(string_utils_1, 150301, 15, 3709, 3709), "tempIndex == -1").
expr(string_utils_1_expr89, prefix_expression, string_utils_1_expr88, right_operand, range(string_utils_1, 150314, 2, 3709, 3709), "-1").
expr(string_utils_1_expr90, assignment, string_utils_1_stmt42, expression, range(string_utils_1, 150340, 35, 3710, 3710), "noMoreMatchesForReplIndex[i]=true").
expr(string_utils_1_expr91, array_access, string_utils_1_expr90, left_hand_side, range(string_utils_1, 150340, 28, 3710, 3710), "noMoreMatchesForReplIndex[i]").
expr(string_utils_1_expr92, infix_expression, string_utils_1_stmt43, expression, range(string_utils_1, 150426, 40, 3712, 3712), "textIndex == -1 || tempIndex < textIndex").
expr(string_utils_1_expr93, infix_expression, string_utils_1_expr92, left_operand, range(string_utils_1, 150426, 15, 3712, 3712), "textIndex == -1").
expr(string_utils_1_expr94, prefix_expression, string_utils_1_expr93, right_operand, range(string_utils_1, 150439, 2, 3712, 3712), "-1").
expr(string_utils_1_expr95, infix_expression, string_utils_1_expr92, right_operand, range(string_utils_1, 150445, 21, 3712, 3712), "tempIndex < textIndex").
expr(string_utils_1_expr96, assignment, string_utils_1_stmt44, expression, range(string_utils_1, 150494, 21, 3713, 3713), "textIndex=tempIndex").
expr(string_utils_1_expr97, assignment, string_utils_1_stmt45, expression, range(string_utils_1, 150541, 16, 3714, 3714), "replaceIndex=i").
expr(string_utils_1_expr98, method_invocation, string_utils_1_code40, initializer, range(string_utils_1, 150697, 13, 3721, 3721), "text.length()").
expr(string_utils_1_expr99, variable_declaration_expression, string_utils_1_stmt47, (initializers, 0), range(string_utils_1, 150725, 13, 3722, 3722), "int i=start").
expr(string_utils_1_expr100, infix_expression, string_utils_1_stmt47, expression, range(string_utils_1, 150740, 14, 3722, 3722), "i < textLength").
expr(string_utils_1_expr101, postfix_expression, string_utils_1_stmt47, (updaters, 0), range(string_utils_1, 150756, 3, 3722, 3722), "i++").
expr(string_utils_1_expr102, method_invocation, string_utils_1_stmt48, expression, range(string_utils_1, 150775, 26, 3723, 3723), "buf.append(text.charAt(i))").
expr(string_utils_1_expr103, method_invocation, string_utils_1_expr102, (arguments, 0), range(string_utils_1, 150786, 14, 3723, 3723), "text.charAt(i)").
expr(string_utils_1_expr104, method_invocation, string_utils_1_code44, initializer, range(string_utils_1, 150837, 14, 3725, 3725), "buf.toString()").
expr(string_utils_1_expr105, prefix_expression, string_utils_1_stmt50, expression, range(string_utils_1, 150865, 7, 3726, 3726), "!repeat").
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
expr(string_utils_test_1_expr1, variable_declaration_expression, string_utils_test_1_stmt5, (initializers, 0), range(string_utils_test_1, 1968, 9, 57, 57), "int i=0").
expr(string_utils_test_1_expr2, infix_expression, string_utils_test_1_stmt5, expression, range(string_utils_test_1, 1979, 23, 57, 57), "i < Character.MAX_VALUE").
expr(string_utils_test_1_expr3, postfix_expression, string_utils_test_1_stmt5, (updaters, 0), range(string_utils_test_1, 2004, 3, 57, 57), "i++").
expr(string_utils_test_1_expr4, method_invocation, string_utils_test_1_stmt6, expression, range(string_utils_test_1, 2027, 32, 58, 58), "Character.isWhitespace((char)i)").
expr(string_utils_test_1_expr5, cast_expression, string_utils_test_1_expr4, (arguments, 0), range(string_utils_test_1, 2050, 8, 58, 58), "(char)i").
expr(string_utils_test_1_expr6, assignment, string_utils_test_1_stmt7, expression, range(string_utils_test_1, 2079, 30, 59, 59), "ws+=String.valueOf((char)i)").
expr(string_utils_test_1_expr7, method_invocation, string_utils_test_1_expr6, right_hand_side, range(string_utils_test_1, 2085, 24, 59, 59), "String.valueOf((char)i)").
expr(string_utils_test_1_expr8, cast_expression, string_utils_test_1_expr7, (arguments, 0), range(string_utils_test_1, 2100, 8, 59, 59), "(char)i").
expr(string_utils_test_1_expr9, infix_expression, string_utils_test_1_stmt8, expression, range(string_utils_test_1, 2131, 6, 60, 60), "i > 32").
expr(string_utils_test_1_expr10, assignment, string_utils_test_1_stmt9, expression, range(string_utils_test_1, 2161, 31, 61, 61), "ntr+=String.valueOf((char)i)").
expr(string_utils_test_1_expr11, method_invocation, string_utils_test_1_expr10, right_hand_side, range(string_utils_test_1, 2168, 24, 61, 61), "String.valueOf((char)i)").
expr(string_utils_test_1_expr12, cast_expression, string_utils_test_1_expr11, (arguments, 0), range(string_utils_test_1, 2183, 8, 61, 61), "(char)i").
expr(string_utils_test_1_expr13, infix_expression, string_utils_test_1_stmt10, expression, range(string_utils_test_1, 2235, 6, 63, 63), "i < 40").
expr(string_utils_test_1_expr14, assignment, string_utils_test_1_stmt11, expression, range(string_utils_test_1, 2261, 31, 64, 64), "nws+=String.valueOf((char)i)").
expr(string_utils_test_1_expr15, method_invocation, string_utils_test_1_expr14, right_hand_side, range(string_utils_test_1, 2268, 24, 64, 64), "String.valueOf((char)i)").
expr(string_utils_test_1_expr16, cast_expression, string_utils_test_1_expr15, (arguments, 0), range(string_utils_test_1, 2283, 8, 64, 64), "(char)i").
expr(string_utils_test_1_expr17, variable_declaration_expression, string_utils_test_1_stmt12, (initializers, 0), range(string_utils_test_1, 2331, 9, 67, 67), "int i=0").
expr(string_utils_test_1_expr18, infix_expression, string_utils_test_1_stmt12, expression, range(string_utils_test_1, 2342, 7, 67, 67), "i <= 32").
expr(string_utils_test_1_expr19, postfix_expression, string_utils_test_1_stmt12, (updaters, 0), range(string_utils_test_1, 2351, 3, 67, 67), "i++").
expr(string_utils_test_1_expr20, assignment, string_utils_test_1_stmt13, expression, range(string_utils_test_1, 2370, 30, 68, 68), "tr+=String.valueOf((char)i)").
expr(string_utils_test_1_expr21, method_invocation, string_utils_test_1_expr20, right_hand_side, range(string_utils_test_1, 2376, 24, 68, 68), "String.valueOf((char)i)").
expr(string_utils_test_1_expr22, cast_expression, string_utils_test_1_expr21, (arguments, 0), range(string_utils_test_1, 2391, 8, 68, 68), "(char)i").
expr(string_utils_test_1_expr23, assignment, string_utils_test_1_stmt14, expression, range(string_utils_test_1, 2420, 15, 70, 70), "WHITESPACE=ws").
expr(string_utils_test_1_expr24, assignment, string_utils_test_1_stmt15, expression, range(string_utils_test_1, 2445, 20, 71, 71), "NON_WHITESPACE=nws").
expr(string_utils_test_1_expr25, assignment, string_utils_test_1_stmt16, expression, range(string_utils_test_1, 2475, 14, 72, 72), "TRIMMABLE=tr").
expr(string_utils_test_1_expr26, assignment, string_utils_test_1_stmt17, expression, range(string_utils_test_1, 2499, 19, 73, 73), "NON_TRIMMABLE=ntr").
expr(string_utils_test_1_expr27, array_initializer, string_utils_test_1_code28, initializer, range(string_utils_test_1, 2574, 23, 76, 76), "{\"foo\",\"bar\",\"baz\"}").
expr(string_utils_test_1_expr28, array_initializer, string_utils_test_1_code36, initializer, range(string_utils_test_1, 2652, 2, 77, 77), "{}").
expr(string_utils_test_1_expr29, array_initializer, string_utils_test_1_code44, initializer, range(string_utils_test_1, 2708, 6, 78, 78), "{null}").
expr(string_utils_test_1_expr30, array_initializer, string_utils_test_1_code52, initializer, range(string_utils_test_1, 2769, 17, 79, 79), "{null,\"\",\"foo\"}").
expr(string_utils_test_1_expr31, array_initializer, string_utils_test_1_code60, initializer, range(string_utils_test_1, 2840, 32, 80, 80), "{new String(\"foo\"),new Long(2)}").
expr(string_utils_test_1_expr32, class_instance_creation, string_utils_test_1_expr31, (expressions, 0), range(string_utils_test_1, 2841, 17, 80, 80), "new String(\"foo\")").
expr(string_utils_test_1_expr33, class_instance_creation, string_utils_test_1_expr31, (expressions, 1), range(string_utils_test_1, 2860, 11, 80, 80), "new Long(2)").
expr(string_utils_test_1_expr34, super_constructor_invocation, string_utils_test_1_block7, (statements, 0), range(string_utils_test_1, 3444, 12, 96, 96), "super(name);").
expr(string_utils_test_1_expr35, class_instance_creation, string_utils_test_1_code66, initializer, range(string_utils_test_1, 3608, 36, 104, 104), "new TestSuite(StringUtilsTest.class)").
expr(string_utils_test_1_expr36, type_literal, string_utils_test_1_expr35, (arguments, 0), range(string_utils_test_1, 3622, 21, 104, 104), "StringUtilsTest.class").
expr(string_utils_test_1_expr37, method_invocation, string_utils_test_1_stmt20, expression, range(string_utils_test_1, 3654, 38, 105, 105), "suite.setName(\"StringUtilsTest Tests\")").
expr(string_utils_test_1_expr38, super_method_invocation, string_utils_test_1_stmt22, expression, range(string_utils_test_1, 3791, 13, 111, 111), "super.setUp()").
expr(string_utils_test_1_expr39, super_method_invocation, string_utils_test_1_stmt23, expression, range(string_utils_test_1, 3884, 16, 116, 116), "super.tearDown()").
expr(string_utils_test_1_expr40, method_invocation, string_utils_test_1_stmt24, expression, range(string_utils_test_1, 44248, 79, 1013, 1013), "assertNull(StringUtils.replaceEach(null,new String[]{\"a\"},new String[]{\"b\"}))").
expr(string_utils_test_1_expr41, method_invocation, string_utils_test_1_expr40, (arguments, 0), range(string_utils_test_1, 44259, 67, 1013, 1013), "StringUtils.replaceEach(null,new String[]{\"a\"},new String[]{\"b\"})").
expr(string_utils_test_1_expr42, array_creation, string_utils_test_1_expr41, (arguments, 1), range(string_utils_test_1, 44289, 17, 1013, 1013), "new String[]{\"a\"}").
expr(string_utils_test_1_expr44, array_initializer, string_utils_test_1_expr42, initializer, range(string_utils_test_1, 44301, 5, 1013, 1013), "{\"a\"}").
expr(string_utils_test_1_expr43, array_creation, string_utils_test_1_expr41, (arguments, 2), range(string_utils_test_1, 44308, 17, 1013, 1013), "new String[]{\"b\"}").
expr(string_utils_test_1_expr45, array_initializer, string_utils_test_1_expr43, initializer, range(string_utils_test_1, 44320, 5, 1013, 1013), "{\"b\"}").
expr(string_utils_test_1_expr46, method_invocation, string_utils_test_1_stmt25, expression, range(string_utils_test_1, 44337, 82, 1014, 1014), "assertEquals(StringUtils.replaceEach(\"\",new String[]{\"a\"},new String[]{\"b\"}),\"\")").
expr(string_utils_test_1_expr47, method_invocation, string_utils_test_1_expr46, (arguments, 0), range(string_utils_test_1, 44350, 65, 1014, 1014), "StringUtils.replaceEach(\"\",new String[]{\"a\"},new String[]{\"b\"})").
expr(string_utils_test_1_expr48, array_creation, string_utils_test_1_expr47, (arguments, 1), range(string_utils_test_1, 44378, 17, 1014, 1014), "new String[]{\"a\"}").
expr(string_utils_test_1_expr50, array_initializer, string_utils_test_1_expr48, initializer, range(string_utils_test_1, 44390, 5, 1014, 1014), "{\"a\"}").
expr(string_utils_test_1_expr49, array_creation, string_utils_test_1_expr47, (arguments, 2), range(string_utils_test_1, 44397, 17, 1014, 1014), "new String[]{\"b\"}").
expr(string_utils_test_1_expr51, array_initializer, string_utils_test_1_expr49, initializer, range(string_utils_test_1, 44409, 5, 1014, 1014), "{\"b\"}").
expr(string_utils_test_1_expr52, method_invocation, string_utils_test_1_stmt26, expression, range(string_utils_test_1, 44429, 62, 1015, 1015), "assertEquals(StringUtils.replaceEach(\"aba\",null,null),\"aba\")").
expr(string_utils_test_1_expr53, method_invocation, string_utils_test_1_expr52, (arguments, 0), range(string_utils_test_1, 44442, 42, 1015, 1015), "StringUtils.replaceEach(\"aba\",null,null)").
expr(string_utils_test_1_expr54, method_invocation, string_utils_test_1_stmt27, expression, range(string_utils_test_1, 44501, 71, 1016, 1016), "assertEquals(StringUtils.replaceEach(\"aba\",new String[0],null),\"aba\")").
expr(string_utils_test_1_expr55, method_invocation, string_utils_test_1_expr54, (arguments, 0), range(string_utils_test_1, 44514, 51, 1016, 1016), "StringUtils.replaceEach(\"aba\",new String[0],null)").
expr(string_utils_test_1_expr56, array_creation, string_utils_test_1_expr55, (arguments, 1), range(string_utils_test_1, 44545, 13, 1016, 1016), "new String[0]").
expr(string_utils_test_1_expr57, method_invocation, string_utils_test_1_stmt28, expression, range(string_utils_test_1, 44582, 71, 1017, 1017), "assertEquals(StringUtils.replaceEach(\"aba\",null,new String[0]),\"aba\")").
expr(string_utils_test_1_expr58, method_invocation, string_utils_test_1_expr57, (arguments, 0), range(string_utils_test_1, 44595, 51, 1017, 1017), "StringUtils.replaceEach(\"aba\",null,new String[0])").
expr(string_utils_test_1_expr59, array_creation, string_utils_test_1_expr58, (arguments, 2), range(string_utils_test_1, 44632, 13, 1017, 1017), "new String[0]").
expr(string_utils_test_1_expr60, method_invocation, string_utils_test_1_stmt29, expression, range(string_utils_test_1, 44663, 75, 1018, 1018), "assertEquals(StringUtils.replaceEach(\"aba\",new String[]{\"a\"},null),\"aba\")").
expr(string_utils_test_1_expr61, method_invocation, string_utils_test_1_expr60, (arguments, 0), range(string_utils_test_1, 44676, 55, 1018, 1018), "StringUtils.replaceEach(\"aba\",new String[]{\"a\"},null)").
expr(string_utils_test_1_expr62, array_creation, string_utils_test_1_expr61, (arguments, 1), range(string_utils_test_1, 44707, 17, 1018, 1018), "new String[]{\"a\"}").
expr(string_utils_test_1_expr63, array_initializer, string_utils_test_1_expr62, initializer, range(string_utils_test_1, 44719, 5, 1018, 1018), "{\"a\"}").
expr(string_utils_test_1_expr64, method_invocation, string_utils_test_1_stmt30, expression, range(string_utils_test_1, 44749, 85, 1020, 1020), "assertEquals(StringUtils.replaceEach(\"aba\",new String[]{\"a\"},new String[]{\"\"}),\"b\")").
expr(string_utils_test_1_expr65, method_invocation, string_utils_test_1_expr64, (arguments, 0), range(string_utils_test_1, 44762, 67, 1020, 1020), "StringUtils.replaceEach(\"aba\",new String[]{\"a\"},new String[]{\"\"})").
expr(string_utils_test_1_expr66, array_creation, string_utils_test_1_expr65, (arguments, 1), range(string_utils_test_1, 44793, 17, 1020, 1020), "new String[]{\"a\"}").
expr(string_utils_test_1_expr68, array_initializer, string_utils_test_1_expr66, initializer, range(string_utils_test_1, 44805, 5, 1020, 1020), "{\"a\"}").
expr(string_utils_test_1_expr67, array_creation, string_utils_test_1_expr65, (arguments, 2), range(string_utils_test_1, 44812, 16, 1020, 1020), "new String[]{\"\"}").
expr(string_utils_test_1_expr69, array_initializer, string_utils_test_1_expr67, initializer, range(string_utils_test_1, 44824, 4, 1020, 1020), "{\"\"}").
expr(string_utils_test_1_expr70, method_invocation, string_utils_test_1_stmt31, expression, range(string_utils_test_1, 44844, 89, 1021, 1021), "assertEquals(StringUtils.replaceEach(\"aba\",new String[]{null},new String[]{\"a\"}),\"aba\")").
expr(string_utils_test_1_expr71, method_invocation, string_utils_test_1_expr70, (arguments, 0), range(string_utils_test_1, 44857, 69, 1021, 1021), "StringUtils.replaceEach(\"aba\",new String[]{null},new String[]{\"a\"})").
expr(string_utils_test_1_expr72, array_creation, string_utils_test_1_expr71, (arguments, 1), range(string_utils_test_1, 44888, 18, 1021, 1021), "new String[]{null}").
expr(string_utils_test_1_expr74, array_initializer, string_utils_test_1_expr72, initializer, range(string_utils_test_1, 44900, 6, 1021, 1021), "{null}").
expr(string_utils_test_1_expr73, array_creation, string_utils_test_1_expr71, (arguments, 2), range(string_utils_test_1, 44908, 17, 1021, 1021), "new String[]{\"a\"}").
expr(string_utils_test_1_expr75, array_initializer, string_utils_test_1_expr73, initializer, range(string_utils_test_1, 44920, 5, 1021, 1021), "{\"a\"}").
expr(string_utils_test_1_expr76, method_invocation, string_utils_test_1_stmt32, expression, range(string_utils_test_1, 44943, 102, 1022, 1022), "assertEquals(StringUtils.replaceEach(\"abcde\",new String[]{\"ab\",\"d\"},new String[]{\"w\",\"t\"}),\"wcte\")").
expr(string_utils_test_1_expr77, method_invocation, string_utils_test_1_expr76, (arguments, 0), range(string_utils_test_1, 44956, 81, 1022, 1022), "StringUtils.replaceEach(\"abcde\",new String[]{\"ab\",\"d\"},new String[]{\"w\",\"t\"})").
expr(string_utils_test_1_expr78, array_creation, string_utils_test_1_expr77, (arguments, 1), range(string_utils_test_1, 44989, 23, 1022, 1022), "new String[]{\"ab\",\"d\"}").
expr(string_utils_test_1_expr80, array_initializer, string_utils_test_1_expr78, initializer, range(string_utils_test_1, 45001, 11, 1022, 1022), "{\"ab\",\"d\"}").
expr(string_utils_test_1_expr79, array_creation, string_utils_test_1_expr77, (arguments, 2), range(string_utils_test_1, 45014, 22, 1022, 1022), "new String[]{\"w\",\"t\"}").
expr(string_utils_test_1_expr81, array_initializer, string_utils_test_1_expr79, initializer, range(string_utils_test_1, 45026, 10, 1022, 1022), "{\"w\",\"t\"}").
expr(string_utils_test_1_expr82, method_invocation, string_utils_test_1_stmt33, expression, range(string_utils_test_1, 45055, 102, 1023, 1023), "assertEquals(StringUtils.replaceEach(\"abcde\",new String[]{\"ab\",\"d\"},new String[]{\"d\",\"t\"}),\"dcte\")").
expr(string_utils_test_1_expr83, method_invocation, string_utils_test_1_expr82, (arguments, 0), range(string_utils_test_1, 45068, 81, 1023, 1023), "StringUtils.replaceEach(\"abcde\",new String[]{\"ab\",\"d\"},new String[]{\"d\",\"t\"})").
expr(string_utils_test_1_expr84, array_creation, string_utils_test_1_expr83, (arguments, 1), range(string_utils_test_1, 45101, 23, 1023, 1023), "new String[]{\"ab\",\"d\"}").
expr(string_utils_test_1_expr86, array_initializer, string_utils_test_1_expr84, initializer, range(string_utils_test_1, 45113, 11, 1023, 1023), "{\"ab\",\"d\"}").
expr(string_utils_test_1_expr85, array_creation, string_utils_test_1_expr83, (arguments, 2), range(string_utils_test_1, 45126, 22, 1023, 1023), "new String[]{\"d\",\"t\"}").
expr(string_utils_test_1_expr87, array_initializer, string_utils_test_1_expr85, initializer, range(string_utils_test_1, 45138, 10, 1023, 1023), "{\"d\",\"t\"}").
expr(string_utils_test_1_expr88, method_invocation, string_utils_test_1_stmt34, expression, range(string_utils_test_1, 45196, 99, 1026, 1026), "assertEquals(\"bcc\",StringUtils.replaceEach(\"abc\",new String[]{\"a\",\"b\"},new String[]{\"b\",\"c\"}))").
expr(string_utils_test_1_expr89, method_invocation, string_utils_test_1_expr88, (arguments, 1), range(string_utils_test_1, 45216, 78, 1026, 1026), "StringUtils.replaceEach(\"abc\",new String[]{\"a\",\"b\"},new String[]{\"b\",\"c\"})").
expr(string_utils_test_1_expr90, array_creation, string_utils_test_1_expr89, (arguments, 1), range(string_utils_test_1, 45247, 22, 1026, 1026), "new String[]{\"a\",\"b\"}").
expr(string_utils_test_1_expr92, array_initializer, string_utils_test_1_expr90, initializer, range(string_utils_test_1, 45259, 10, 1026, 1026), "{\"a\",\"b\"}").
expr(string_utils_test_1_expr91, array_creation, string_utils_test_1_expr89, (arguments, 2), range(string_utils_test_1, 45271, 22, 1026, 1026), "new String[]{\"b\",\"c\"}").
expr(string_utils_test_1_expr93, array_initializer, string_utils_test_1_expr91, initializer, range(string_utils_test_1, 45283, 10, 1026, 1026), "{\"b\",\"c\"}").
expr(string_utils_test_1_expr94, method_invocation, string_utils_test_1_stmt35, expression, range(string_utils_test_1, 45305, 833, 1027, 1035), "assertEquals(\"q651.506bera\",StringUtils.replaceEach(\"d216.102oren\",new String[]{\"a\",\"b\",\"c\",\"d\",\"e\",\"f\",\"g\",\"h\",\"i\",\"j\",\"k\",\"l\",\"m\",\"n\",\"o\",\"p\",\"q\",\"r\",\"s\",\"t\",\"u\",\"v\",\"w\",\"x\",\"y\",\"z\",\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\",\"H\",\"I\",\"J\",\"K\",\"L\",\"M\",\"N\",\"O\",\"P\",\"Q\",\"R\",\"S\",\"T\",\"U\",\"V\",\"W\",\"X\",\"Y\",\"Z\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"},new String[]{\"n\",\"o\",\"p\",\"q\",\"r\",\"s\",\"t\",\"u\",\"v\",\"w\",\"x\",\"y\",\"z\",\"a\",\"b\",\"c\",\"d\",\"e\",\"f\",\"g\",\"h\",\"i\",\"j\",\"k\",\"l\",\"m\",\"N\",\"O\",\"P\",\"Q\",\"R\",\"S\",\"T\",\"U\",\"V\",\"W\",\"X\",\"Y\",\"Z\",\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\",\"H\",\"I\",\"J\",\"K\",\"L\",\"M\",\"5\",\"6\",\"7\",\"8\",\"9\",\"1\",\"2\",\"3\",\"4\"}))").
expr(string_utils_test_1_expr95, method_invocation, string_utils_test_1_expr94, (arguments, 1), range(string_utils_test_1, 45334, 803, 1027, 1035), "StringUtils.replaceEach(\"d216.102oren\",new String[]{\"a\",\"b\",\"c\",\"d\",\"e\",\"f\",\"g\",\"h\",\"i\",\"j\",\"k\",\"l\",\"m\",\"n\",\"o\",\"p\",\"q\",\"r\",\"s\",\"t\",\"u\",\"v\",\"w\",\"x\",\"y\",\"z\",\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\",\"H\",\"I\",\"J\",\"K\",\"L\",\"M\",\"N\",\"O\",\"P\",\"Q\",\"R\",\"S\",\"T\",\"U\",\"V\",\"W\",\"X\",\"Y\",\"Z\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"},new String[]{\"n\",\"o\",\"p\",\"q\",\"r\",\"s\",\"t\",\"u\",\"v\",\"w\",\"x\",\"y\",\"z\",\"a\",\"b\",\"c\",\"d\",\"e\",\"f\",\"g\",\"h\",\"i\",\"j\",\"k\",\"l\",\"m\",\"N\",\"O\",\"P\",\"Q\",\"R\",\"S\",\"T\",\"U\",\"V\",\"W\",\"X\",\"Y\",\"Z\",\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\",\"H\",\"I\",\"J\",\"K\",\"L\",\"M\",\"5\",\"6\",\"7\",\"8\",\"9\",\"1\",\"2\",\"3\",\"4\"})").
expr(string_utils_test_1_expr96, array_creation, string_utils_test_1_expr95, (arguments, 1), range(string_utils_test_1, 45386, 368, 1028, 1031), "new String[]{\"a\",\"b\",\"c\",\"d\",\"e\",\"f\",\"g\",\"h\",\"i\",\"j\",\"k\",\"l\",\"m\",\"n\",\"o\",\"p\",\"q\",\"r\",\"s\",\"t\",\"u\",\"v\",\"w\",\"x\",\"y\",\"z\",\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\",\"H\",\"I\",\"J\",\"K\",\"L\",\"M\",\"N\",\"O\",\"P\",\"Q\",\"R\",\"S\",\"T\",\"U\",\"V\",\"W\",\"X\",\"Y\",\"Z\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"}").
expr(string_utils_test_1_expr97, array_creation, string_utils_test_1_expr95, (arguments, 2), range(string_utils_test_1, 45768, 368, 1032, 1035), "new String[]{\"n\",\"o\",\"p\",\"q\",\"r\",\"s\",\"t\",\"u\",\"v\",\"w\",\"x\",\"y\",\"z\",\"a\",\"b\",\"c\",\"d\",\"e\",\"f\",\"g\",\"h\",\"i\",\"j\",\"k\",\"l\",\"m\",\"N\",\"O\",\"P\",\"Q\",\"R\",\"S\",\"T\",\"U\",\"V\",\"W\",\"X\",\"Y\",\"Z\",\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\",\"H\",\"I\",\"J\",\"K\",\"L\",\"M\",\"5\",\"6\",\"7\",\"8\",\"9\",\"1\",\"2\",\"3\",\"4\"}").
expr(string_utils_test_1_expr98, method_invocation, string_utils_test_1_stmt36, expression, range(string_utils_test_1, 46202, 89, 1038, 1038), "assertEquals(StringUtils.replaceEach(\"aba\",new String[]{\"a\"},new String[]{null}),\"aba\")").
expr(string_utils_test_1_expr99, method_invocation, string_utils_test_1_expr98, (arguments, 0), range(string_utils_test_1, 46215, 69, 1038, 1038), "StringUtils.replaceEach(\"aba\",new String[]{\"a\"},new String[]{null})").
expr(string_utils_test_1_expr100, array_creation, string_utils_test_1_expr99, (arguments, 1), range(string_utils_test_1, 46246, 17, 1038, 1038), "new String[]{\"a\"}").
expr(string_utils_test_1_expr102, array_initializer, string_utils_test_1_expr100, initializer, range(string_utils_test_1, 46258, 5, 1038, 1038), "{\"a\"}").
expr(string_utils_test_1_expr101, array_creation, string_utils_test_1_expr99, (arguments, 2), range(string_utils_test_1, 46265, 18, 1038, 1038), "new String[]{null}").
expr(string_utils_test_1_expr103, array_initializer, string_utils_test_1_expr101, initializer, range(string_utils_test_1, 46277, 6, 1038, 1038), "{null}").
expr(string_utils_test_1_expr104, method_invocation, string_utils_test_1_stmt37, expression, range(string_utils_test_1, 46301, 99, 1039, 1039), "assertEquals(StringUtils.replaceEach(\"aba\",new String[]{\"a\",\"b\"},new String[]{\"c\",null}),\"cbc\")").
expr(string_utils_test_1_expr105, method_invocation, string_utils_test_1_expr104, (arguments, 0), range(string_utils_test_1, 46314, 79, 1039, 1039), "StringUtils.replaceEach(\"aba\",new String[]{\"a\",\"b\"},new String[]{\"c\",null})").
expr(string_utils_test_1_expr106, array_creation, string_utils_test_1_expr105, (arguments, 1), range(string_utils_test_1, 46345, 22, 1039, 1039), "new String[]{\"a\",\"b\"}").
expr(string_utils_test_1_expr108, array_initializer, string_utils_test_1_expr106, initializer, range(string_utils_test_1, 46357, 10, 1039, 1039), "{\"a\",\"b\"}").
expr(string_utils_test_1_expr107, array_creation, string_utils_test_1_expr105, (arguments, 2), range(string_utils_test_1, 46369, 23, 1039, 1039), "new String[]{\"c\",null}").
expr(string_utils_test_1_expr109, array_initializer, string_utils_test_1_expr107, initializer, range(string_utils_test_1, 46381, 11, 1039, 1039), "{\"c\",null}").

%%% Names
%string_utils_1 - org.apache.commons.lang3.StringUtils
name(m_replace_each_94, simple_name, string_utils_1_expr1, name, range(string_utils_1, 141198, 11, 3502, 3502), 'replaceEach').
name(p_text_191, simple_name, string_utils_1_expr1, (arguments, 0), range(string_utils_1, 141210, 4, 3502, 3502), 'text').
name(p_search_list_192, simple_name, string_utils_1_expr1, (arguments, 1), range(string_utils_1, 141216, 10, 3502, 3502), 'searchList').
name(p_replacement_list_193, simple_name, string_utils_1_expr1, (arguments, 2), range(string_utils_1, 141228, 15, 3502, 3502), 'replacementList').
name(p_text_197, simple_name, string_utils_1_expr7, left_operand, range(string_utils_1, 146681, 4, 3612, 3612), 'text').
name(p_text_197, simple_name, string_utils_1_expr9, expression, range(string_utils_1, 146697, 4, 3612, 3612), 'text').
name(m_length_96, simple_name, string_utils_1_expr9, name, range(string_utils_1, 146702, 6, 3612, 3612), 'length').
name(p_search_list_198, simple_name, string_utils_1_expr10, left_operand, range(string_utils_1, 146719, 10, 3612, 3612), 'searchList').
name(p_text_197, simple_name, string_utils_1_stmt3, expression, range(string_utils_1, 146866, 4, 3615, 3615), 'text').
name(p_time_to_live_201, simple_name, string_utils_1_expr11, left_operand, range(string_utils_1, 146949, 10, 3619, 3619), 'timeToLive').
name(v_search_length_202, simple_name, string_utils_1_code6, name, range(string_utils_1, 147095, 12, 3623, 3623), 'searchLength').
name(q_length_1, qualified_name, string_utils_1_code6, initializer, range(string_utils_1, 147110, 17, 3623, 3623), 'searchList.length').
name(p_search_list_198, simple_name, q_length_1, qualifier, range(string_utils_1, 147110, 10, 3623, 3623), 'searchList').
name(v_replacement_length_203, simple_name, string_utils_1_code8, name, range(string_utils_1, 147141, 17, 3624, 3624), 'replacementLength').
name(q_length_2, qualified_name, string_utils_1_code8, initializer, range(string_utils_1, 147161, 22, 3624, 3624), 'replacementList.length').
name(p_replacement_list_199, simple_name, q_length_2, qualifier, range(string_utils_1, 147161, 15, 3624, 3624), 'replacementList').
name(v_search_length_202, simple_name, string_utils_1_expr12, left_operand, range(string_utils_1, 147258, 12, 3627, 3627), 'searchLength').
name(v_replacement_length_203, simple_name, string_utils_1_expr12, right_operand, range(string_utils_1, 147274, 17, 3627, 3627), 'replacementLength').
name(v_no_more_matches_for_repl_index_204, simple_name, string_utils_1_code12, name, range(string_utils_1, 147564, 25, 3635, 3635), 'noMoreMatchesForReplIndex').
name(v_search_length_202, simple_name, string_utils_1_expr13, (dimensions, 0), range(string_utils_1, 147604, 12, 3635, 3635), 'searchLength').
name(v_text_index_205, simple_name, string_utils_1_code17, name, range(string_utils_1, 147683, 9, 3638, 3638), 'textIndex').
name(v_replace_index_206, simple_name, string_utils_1_code19, name, range(string_utils_1, 147711, 12, 3639, 3639), 'replaceIndex').
name(v_temp_index_207, simple_name, string_utils_1_code21, name, range(string_utils_1, 147742, 9, 3640, 3640), 'tempIndex').
name(v_i_208, simple_name, string_utils_1_code23, name, range(string_utils_1, 147898, 1, 3644, 3644), 'i').
name(v_i_208, simple_name, string_utils_1_expr18, left_operand, range(string_utils_1, 147905, 1, 3644, 3644), 'i').
name(v_search_length_202, simple_name, string_utils_1_expr18, right_operand, range(string_utils_1, 147909, 12, 3644, 3644), 'searchLength').
name(v_i_208, simple_name, string_utils_1_expr19, operand, range(string_utils_1, 147923, 1, 3644, 3644), 'i').
name(v_no_more_matches_for_repl_index_204, simple_name, string_utils_1_expr23, array, range(string_utils_1, 147946, 25, 3645, 3645), 'noMoreMatchesForReplIndex').
name(v_i_208, simple_name, string_utils_1_expr23, index, range(string_utils_1, 147972, 1, 3645, 3645), 'i').
name(p_search_list_198, simple_name, string_utils_1_expr25, array, range(string_utils_1, 147978, 10, 3645, 3645), 'searchList').
name(v_i_208, simple_name, string_utils_1_expr25, index, range(string_utils_1, 147989, 1, 3645, 3645), 'i').
name(v_temp_index_207, simple_name, string_utils_1_expr26, left_hand_side, range(string_utils_1, 148146, 9, 3650, 3650), 'tempIndex').
name(p_text_197, simple_name, string_utils_1_expr27, expression, range(string_utils_1, 148158, 4, 3650, 3650), 'text').
name(m_index_of_97, simple_name, string_utils_1_expr27, name, range(string_utils_1, 148163, 7, 3650, 3650), 'indexOf').
name(p_search_list_198, simple_name, string_utils_1_expr28, array, range(string_utils_1, 148171, 10, 3650, 3650), 'searchList').
name(v_i_208, simple_name, string_utils_1_expr28, index, range(string_utils_1, 148182, 1, 3650, 3650), 'i').
name(v_temp_index_207, simple_name, string_utils_1_expr29, left_operand, range(string_utils_1, 148261, 9, 3653, 3653), 'tempIndex').
name(v_no_more_matches_for_repl_index_204, simple_name, string_utils_1_expr32, array, range(string_utils_1, 148296, 25, 3654, 3654), 'noMoreMatchesForReplIndex').
name(v_i_208, simple_name, string_utils_1_expr32, index, range(string_utils_1, 148322, 1, 3654, 3654), 'i').
name(v_text_index_205, simple_name, string_utils_1_expr34, left_operand, range(string_utils_1, 148374, 9, 3656, 3656), 'textIndex').
name(v_temp_index_207, simple_name, string_utils_1_expr36, left_operand, range(string_utils_1, 148393, 9, 3656, 3656), 'tempIndex').
name(v_text_index_205, simple_name, string_utils_1_expr36, right_operand, range(string_utils_1, 148405, 9, 3656, 3656), 'textIndex').
name(v_text_index_205, simple_name, string_utils_1_expr37, left_hand_side, range(string_utils_1, 148438, 9, 3657, 3657), 'textIndex').
name(v_temp_index_207, simple_name, string_utils_1_expr37, right_hand_side, range(string_utils_1, 148450, 9, 3657, 3657), 'tempIndex').
name(v_replace_index_206, simple_name, string_utils_1_expr38, left_hand_side, range(string_utils_1, 148481, 12, 3658, 3658), 'replaceIndex').
name(v_i_208, simple_name, string_utils_1_expr38, right_hand_side, range(string_utils_1, 148496, 1, 3658, 3658), 'i').
name(v_text_index_205, simple_name, string_utils_1_expr39, left_operand, range(string_utils_1, 148642, 9, 3665, 3665), 'textIndex').
name(p_text_197, simple_name, string_utils_1_stmt22, expression, range(string_utils_1, 148680, 4, 3666, 3666), 'text').
name(v_start_209, simple_name, string_utils_1_code25, name, range(string_utils_1, 148709, 5, 3669, 3669), 'start').
name(v_increase_210, simple_name, string_utils_1_code27, name, range(string_utils_1, 148844, 8, 3672, 3672), 'increase').
name(v_i_211, simple_name, string_utils_1_code29, name, range(string_utils_1, 148984, 1, 3675, 3675), 'i').
name(v_i_211, simple_name, string_utils_1_expr42, left_operand, range(string_utils_1, 148991, 1, 3675, 3675), 'i').
name(q_length_3, qualified_name, string_utils_1_expr42, right_operand, range(string_utils_1, 148995, 17, 3675, 3675), 'searchList.length').
name(p_search_list_198, simple_name, q_length_3, qualifier, range(string_utils_1, 148995, 10, 3675, 3675), 'searchList').
name(v_i_211, simple_name, string_utils_1_expr43, operand, range(string_utils_1, 149014, 1, 3675, 3675), 'i').
name(v_greater_212, simple_name, string_utils_1_code31, name, range(string_utils_1, 149037, 7, 3676, 3676), 'greater').
name(p_replacement_list_199, simple_name, string_utils_1_expr46, array, range(string_utils_1, 149047, 15, 3676, 3676), 'replacementList').
name(v_i_211, simple_name, string_utils_1_expr46, index, range(string_utils_1, 149063, 1, 3676, 3676), 'i').
name(m_length_96, simple_name, string_utils_1_expr45, name, range(string_utils_1, 149066, 6, 3676, 3676), 'length').
name(p_search_list_198, simple_name, string_utils_1_expr48, array, range(string_utils_1, 149077, 10, 3676, 3676), 'searchList').
name(v_i_211, simple_name, string_utils_1_expr48, index, range(string_utils_1, 149088, 1, 3676, 3676), 'i').
name(m_length_96, simple_name, string_utils_1_expr47, name, range(string_utils_1, 149091, 6, 3676, 3676), 'length').
name(v_greater_212, simple_name, string_utils_1_expr49, left_operand, range(string_utils_1, 149117, 7, 3677, 3677), 'greater').
name(v_increase_210, simple_name, string_utils_1_expr50, left_hand_side, range(string_utils_1, 149294, 8, 3682, 3682), 'increase').
name(t_math_1, simple_name, string_utils_1_expr51, expression, range(string_utils_1, 149305, 4, 3682, 3682), 'Math').
name(m_min_98, simple_name, string_utils_1_expr51, name, range(string_utils_1, 149310, 3, 3682, 3682), 'min').
name(v_increase_210, simple_name, string_utils_1_expr51, (arguments, 0), range(string_utils_1, 149314, 8, 3682, 3682), 'increase').
name(p_text_197, simple_name, string_utils_1_expr53, expression, range(string_utils_1, 149324, 4, 3682, 3682), 'text').
name(m_length_96, simple_name, string_utils_1_expr53, name, range(string_utils_1, 149329, 6, 3682, 3682), 'length').
name(v_buf_213, simple_name, string_utils_1_code33, name, range(string_utils_1, 149367, 3, 3684, 3684), 'buf').
name(p_text_197, simple_name, string_utils_1_expr56, expression, range(string_utils_1, 149391, 4, 3684, 3684), 'text').
name(m_length_96, simple_name, string_utils_1_expr56, name, range(string_utils_1, 149396, 6, 3684, 3684), 'length').
name(v_increase_210, simple_name, string_utils_1_expr55, right_operand, range(string_utils_1, 149407, 8, 3684, 3684), 'increase').
name(v_text_index_205, simple_name, string_utils_1_expr57, left_operand, range(string_utils_1, 149434, 9, 3686, 3686), 'textIndex').
name(v_i_214, simple_name, string_utils_1_code36, name, range(string_utils_1, 149475, 1, 3688, 3688), 'i').
name(v_start_209, simple_name, string_utils_1_code36, initializer, range(string_utils_1, 149479, 5, 3688, 3688), 'start').
name(v_i_214, simple_name, string_utils_1_expr60, left_operand, range(string_utils_1, 149486, 1, 3688, 3688), 'i').
name(v_text_index_205, simple_name, string_utils_1_expr60, right_operand, range(string_utils_1, 149490, 9, 3688, 3688), 'textIndex').
name(v_i_214, simple_name, string_utils_1_expr61, operand, range(string_utils_1, 149501, 1, 3688, 3688), 'i').
name(v_buf_213, simple_name, string_utils_1_expr62, expression, range(string_utils_1, 149524, 3, 3689, 3689), 'buf').
name(m_append_100, simple_name, string_utils_1_expr62, name, range(string_utils_1, 149528, 6, 3689, 3689), 'append').
name(p_text_197, simple_name, string_utils_1_expr63, expression, range(string_utils_1, 149535, 4, 3689, 3689), 'text').
name(m_char_at_101, simple_name, string_utils_1_expr63, name, range(string_utils_1, 149540, 6, 3689, 3689), 'charAt').
name(v_i_214, simple_name, string_utils_1_expr63, (arguments, 0), range(string_utils_1, 149547, 1, 3689, 3689), 'i').
name(v_buf_213, simple_name, string_utils_1_expr64, expression, range(string_utils_1, 149578, 3, 3691, 3691), 'buf').
name(m_append_102, simple_name, string_utils_1_expr64, name, range(string_utils_1, 149582, 6, 3691, 3691), 'append').
name(p_replacement_list_199, simple_name, string_utils_1_expr65, array, range(string_utils_1, 149589, 15, 3691, 3691), 'replacementList').
name(v_replace_index_206, simple_name, string_utils_1_expr65, index, range(string_utils_1, 149605, 12, 3691, 3691), 'replaceIndex').
name(v_start_209, simple_name, string_utils_1_expr66, left_hand_side, range(string_utils_1, 149634, 5, 3693, 3693), 'start').
name(v_text_index_205, simple_name, string_utils_1_expr67, left_operand, range(string_utils_1, 149642, 9, 3693, 3693), 'textIndex').
name(p_search_list_198, simple_name, string_utils_1_expr69, array, range(string_utils_1, 149654, 10, 3693, 3693), 'searchList').
name(v_replace_index_206, simple_name, string_utils_1_expr69, index, range(string_utils_1, 149665, 12, 3693, 3693), 'replaceIndex').
name(m_length_96, simple_name, string_utils_1_expr68, name, range(string_utils_1, 149679, 6, 3693, 3693), 'length').
name(v_text_index_205, simple_name, string_utils_1_expr70, left_hand_side, range(string_utils_1, 149702, 9, 3695, 3695), 'textIndex').
name(v_replace_index_206, simple_name, string_utils_1_expr72, left_hand_side, range(string_utils_1, 149730, 12, 3696, 3696), 'replaceIndex').
name(v_temp_index_207, simple_name, string_utils_1_expr74, left_hand_side, range(string_utils_1, 149761, 9, 3697, 3697), 'tempIndex').
name(v_i_215, simple_name, string_utils_1_code38, name, range(string_utils_1, 149899, 1, 3700, 3700), 'i').
name(v_i_215, simple_name, string_utils_1_expr77, left_operand, range(string_utils_1, 149906, 1, 3700, 3700), 'i').
name(v_search_length_202, simple_name, string_utils_1_expr77, right_operand, range(string_utils_1, 149910, 12, 3700, 3700), 'searchLength').
name(v_i_215, simple_name, string_utils_1_expr78, operand, range(string_utils_1, 149924, 1, 3700, 3700), 'i').
name(v_no_more_matches_for_repl_index_204, simple_name, string_utils_1_expr82, array, range(string_utils_1, 149951, 25, 3701, 3701), 'noMoreMatchesForReplIndex').
name(v_i_215, simple_name, string_utils_1_expr82, index, range(string_utils_1, 149977, 1, 3701, 3701), 'i').
name(p_search_list_198, simple_name, string_utils_1_expr84, array, range(string_utils_1, 149983, 10, 3701, 3701), 'searchList').
name(v_i_215, simple_name, string_utils_1_expr84, index, range(string_utils_1, 149994, 1, 3701, 3701), 'i').
name(v_temp_index_207, simple_name, string_utils_1_expr85, left_hand_side, range(string_utils_1, 150171, 9, 3706, 3706), 'tempIndex').
name(p_text_197, simple_name, string_utils_1_expr86, expression, range(string_utils_1, 150183, 4, 3706, 3706), 'text').
name(m_index_of_103, simple_name, string_utils_1_expr86, name, range(string_utils_1, 150188, 7, 3706, 3706), 'indexOf').
name(p_search_list_198, simple_name, string_utils_1_expr87, array, range(string_utils_1, 150196, 10, 3706, 3706), 'searchList').
name(v_i_215, simple_name, string_utils_1_expr87, index, range(string_utils_1, 150207, 1, 3706, 3706), 'i').
name(v_start_209, simple_name, string_utils_1_expr86, (arguments, 1), range(string_utils_1, 150211, 5, 3706, 3706), 'start').
name(v_temp_index_207, simple_name, string_utils_1_expr88, left_operand, range(string_utils_1, 150301, 9, 3709, 3709), 'tempIndex').
name(v_no_more_matches_for_repl_index_204, simple_name, string_utils_1_expr91, array, range(string_utils_1, 150340, 25, 3710, 3710), 'noMoreMatchesForReplIndex').
name(v_i_215, simple_name, string_utils_1_expr91, index, range(string_utils_1, 150366, 1, 3710, 3710), 'i').
name(v_text_index_205, simple_name, string_utils_1_expr93, left_operand, range(string_utils_1, 150426, 9, 3712, 3712), 'textIndex').
name(v_temp_index_207, simple_name, string_utils_1_expr95, left_operand, range(string_utils_1, 150445, 9, 3712, 3712), 'tempIndex').
name(v_text_index_205, simple_name, string_utils_1_expr95, right_operand, range(string_utils_1, 150457, 9, 3712, 3712), 'textIndex').
name(v_text_index_205, simple_name, string_utils_1_expr96, left_hand_side, range(string_utils_1, 150494, 9, 3713, 3713), 'textIndex').
name(v_temp_index_207, simple_name, string_utils_1_expr96, right_hand_side, range(string_utils_1, 150506, 9, 3713, 3713), 'tempIndex').
name(v_replace_index_206, simple_name, string_utils_1_expr97, left_hand_side, range(string_utils_1, 150541, 12, 3714, 3714), 'replaceIndex').
name(v_i_215, simple_name, string_utils_1_expr97, right_hand_side, range(string_utils_1, 150556, 1, 3714, 3714), 'i').
name(v_text_length_216, simple_name, string_utils_1_code40, name, range(string_utils_1, 150684, 10, 3721, 3721), 'textLength').
name(p_text_197, simple_name, string_utils_1_expr98, expression, range(string_utils_1, 150697, 4, 3721, 3721), 'text').
name(m_length_96, simple_name, string_utils_1_expr98, name, range(string_utils_1, 150702, 6, 3721, 3721), 'length').
name(v_i_217, simple_name, string_utils_1_code42, name, range(string_utils_1, 150729, 1, 3722, 3722), 'i').
name(v_start_209, simple_name, string_utils_1_code42, initializer, range(string_utils_1, 150733, 5, 3722, 3722), 'start').
name(v_i_217, simple_name, string_utils_1_expr100, left_operand, range(string_utils_1, 150740, 1, 3722, 3722), 'i').
name(v_text_length_216, simple_name, string_utils_1_expr100, right_operand, range(string_utils_1, 150744, 10, 3722, 3722), 'textLength').
name(v_i_217, simple_name, string_utils_1_expr101, operand, range(string_utils_1, 150756, 1, 3722, 3722), 'i').
name(v_buf_213, simple_name, string_utils_1_expr102, expression, range(string_utils_1, 150775, 3, 3723, 3723), 'buf').
name(m_append_100, simple_name, string_utils_1_expr102, name, range(string_utils_1, 150779, 6, 3723, 3723), 'append').
name(p_text_197, simple_name, string_utils_1_expr103, expression, range(string_utils_1, 150786, 4, 3723, 3723), 'text').
name(m_char_at_101, simple_name, string_utils_1_expr103, name, range(string_utils_1, 150791, 6, 3723, 3723), 'charAt').
name(v_i_217, simple_name, string_utils_1_expr103, (arguments, 0), range(string_utils_1, 150798, 1, 3723, 3723), 'i').
name(v_result_218, simple_name, string_utils_1_code44, name, range(string_utils_1, 150828, 6, 3725, 3725), 'result').
name(v_buf_213, simple_name, string_utils_1_expr104, expression, range(string_utils_1, 150837, 3, 3725, 3725), 'buf').
name(m_to_string_104, simple_name, string_utils_1_expr104, name, range(string_utils_1, 150841, 8, 3725, 3725), 'toString').
name(p_repeat_200, simple_name, string_utils_1_expr105, operand, range(string_utils_1, 150866, 6, 3726, 3726), 'repeat').
name(v_result_218, simple_name, string_utils_1_stmt51, expression, range(string_utils_1, 150895, 6, 3727, 3727), 'result').
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
name(v_ws_323, simple_name, string_utils_test_1_code5, name, range(string_utils_test_1, 1872, 2, 53, 53), 'ws').
name(v_nws_324, simple_name, string_utils_test_1_code7, name, range(string_utils_test_1, 1896, 3, 54, 54), 'nws').
name(v_tr_325, simple_name, string_utils_test_1_code9, name, range(string_utils_test_1, 1921, 2, 55, 55), 'tr').
name(v_ntr_326, simple_name, string_utils_test_1_code11, name, range(string_utils_test_1, 1945, 3, 56, 56), 'ntr').
name(v_i_327, simple_name, string_utils_test_1_code13, name, range(string_utils_test_1, 1972, 1, 57, 57), 'i').
name(v_i_327, simple_name, string_utils_test_1_expr2, left_operand, range(string_utils_test_1, 1979, 1, 57, 57), 'i').
name(q_max_value_3, qualified_name, string_utils_test_1_expr2, right_operand, range(string_utils_test_1, 1983, 19, 57, 57), 'Character.MAX_VALUE').
name(t_character_2, simple_name, q_max_value_3, qualifier, range(string_utils_test_1, 1983, 9, 57, 57), 'Character').
name(v_i_327, simple_name, string_utils_test_1_expr3, operand, range(string_utils_test_1, 2004, 1, 57, 57), 'i').
name(t_character_2, simple_name, string_utils_test_1_expr4, expression, range(string_utils_test_1, 2027, 9, 58, 58), 'Character').
name(m_is_whitespace_161, simple_name, string_utils_test_1_expr4, name, range(string_utils_test_1, 2037, 12, 58, 58), 'isWhitespace').
name(v_i_327, simple_name, string_utils_test_1_expr5, expression, range(string_utils_test_1, 2057, 1, 58, 58), 'i').
name(v_ws_323, simple_name, string_utils_test_1_expr6, left_hand_side, range(string_utils_test_1, 2079, 2, 59, 59), 'ws').
name(t_string_3, simple_name, string_utils_test_1_expr7, expression, range(string_utils_test_1, 2085, 6, 59, 59), 'String').
name(m_value_of_162, simple_name, string_utils_test_1_expr7, name, range(string_utils_test_1, 2092, 7, 59, 59), 'valueOf').
name(v_i_327, simple_name, string_utils_test_1_expr8, expression, range(string_utils_test_1, 2107, 1, 59, 59), 'i').
name(v_i_327, simple_name, string_utils_test_1_expr9, left_operand, range(string_utils_test_1, 2131, 1, 60, 60), 'i').
name(v_ntr_326, simple_name, string_utils_test_1_expr10, left_hand_side, range(string_utils_test_1, 2161, 3, 61, 61), 'ntr').
name(t_string_3, simple_name, string_utils_test_1_expr11, expression, range(string_utils_test_1, 2168, 6, 61, 61), 'String').
name(m_value_of_162, simple_name, string_utils_test_1_expr11, name, range(string_utils_test_1, 2175, 7, 61, 61), 'valueOf').
name(v_i_327, simple_name, string_utils_test_1_expr12, expression, range(string_utils_test_1, 2190, 1, 61, 61), 'i').
name(v_i_327, simple_name, string_utils_test_1_expr13, left_operand, range(string_utils_test_1, 2235, 1, 63, 63), 'i').
name(v_nws_324, simple_name, string_utils_test_1_expr14, left_hand_side, range(string_utils_test_1, 2261, 3, 64, 64), 'nws').
name(t_string_3, simple_name, string_utils_test_1_expr15, expression, range(string_utils_test_1, 2268, 6, 64, 64), 'String').
name(m_value_of_162, simple_name, string_utils_test_1_expr15, name, range(string_utils_test_1, 2275, 7, 64, 64), 'valueOf').
name(v_i_327, simple_name, string_utils_test_1_expr16, expression, range(string_utils_test_1, 2290, 1, 64, 64), 'i').
name(v_i_328, simple_name, string_utils_test_1_code19, name, range(string_utils_test_1, 2335, 1, 67, 67), 'i').
name(v_i_328, simple_name, string_utils_test_1_expr18, left_operand, range(string_utils_test_1, 2342, 1, 67, 67), 'i').
name(v_i_328, simple_name, string_utils_test_1_expr19, operand, range(string_utils_test_1, 2351, 1, 67, 67), 'i').
name(v_tr_325, simple_name, string_utils_test_1_expr20, left_hand_side, range(string_utils_test_1, 2370, 2, 68, 68), 'tr').
name(t_string_3, simple_name, string_utils_test_1_expr21, expression, range(string_utils_test_1, 2376, 6, 68, 68), 'String').
name(m_value_of_162, simple_name, string_utils_test_1_expr21, name, range(string_utils_test_1, 2383, 7, 68, 68), 'valueOf').
name(v_i_328, simple_name, string_utils_test_1_expr22, expression, range(string_utils_test_1, 2398, 1, 68, 68), 'i').
name(f_whitespace_329, simple_name, string_utils_test_1_expr23, left_hand_side, range(string_utils_test_1, 2420, 10, 70, 70), 'WHITESPACE').
name(v_ws_323, simple_name, string_utils_test_1_expr23, right_hand_side, range(string_utils_test_1, 2433, 2, 70, 70), 'ws').
name(f_non_whitespace_330, simple_name, string_utils_test_1_expr24, left_hand_side, range(string_utils_test_1, 2445, 14, 71, 71), 'NON_WHITESPACE').
name(v_nws_324, simple_name, string_utils_test_1_expr24, right_hand_side, range(string_utils_test_1, 2462, 3, 71, 71), 'nws').
name(f_trimmable_331, simple_name, string_utils_test_1_expr25, left_hand_side, range(string_utils_test_1, 2475, 9, 72, 72), 'TRIMMABLE').
name(v_tr_325, simple_name, string_utils_test_1_expr25, right_hand_side, range(string_utils_test_1, 2487, 2, 72, 72), 'tr').
name(f_non_trimmable_332, simple_name, string_utils_test_1_expr26, left_hand_side, range(string_utils_test_1, 2499, 13, 73, 73), 'NON_TRIMMABLE').
name(v_ntr_326, simple_name, string_utils_test_1_expr26, right_hand_side, range(string_utils_test_1, 2515, 3, 73, 73), 'ntr').
name(f_array_list_333, simple_name, string_utils_test_1_code28, name, range(string_utils_test_1, 2561, 10, 76, 76), 'ARRAY_LIST').
name(f_empty_array_list_334, simple_name, string_utils_test_1_code36, name, range(string_utils_test_1, 2633, 16, 77, 77), 'EMPTY_ARRAY_LIST').
name(f_null_array_list_335, simple_name, string_utils_test_1_code44, name, range(string_utils_test_1, 2690, 15, 78, 78), 'NULL_ARRAY_LIST').
name(f_mixed_array_list_336, simple_name, string_utils_test_1_code52, name, range(string_utils_test_1, 2750, 16, 79, 79), 'MIXED_ARRAY_LIST').
name(f_mixed_type_list_337, simple_name, string_utils_test_1_code60, name, range(string_utils_test_1, 2822, 15, 80, 80), 'MIXED_TYPE_LIST').
name(p_name_338, simple_name, string_utils_test_1_stmt18, (arguments, 0), range(string_utils_test_1, 3450, 4, 96, 96), 'name').
name(v_suite_340, simple_name, string_utils_test_1_code66, name, range(string_utils_test_1, 3600, 5, 104, 104), 'suite').
name(v_suite_340, simple_name, string_utils_test_1_expr37, expression, range(string_utils_test_1, 3654, 5, 105, 105), 'suite').
name(m_set_name_170, simple_name, string_utils_test_1_expr37, name, range(string_utils_test_1, 3660, 7, 105, 105), 'setName').
name(v_suite_340, simple_name, string_utils_test_1_stmt21, expression, range(string_utils_test_1, 3709, 5, 106, 106), 'suite').
name(m_set_up_172, simple_name, string_utils_test_1_expr38, name, range(string_utils_test_1, 3797, 5, 111, 111), 'setUp').
name(m_tear_down_174, simple_name, string_utils_test_1_expr39, name, range(string_utils_test_1, 3890, 8, 116, 116), 'tearDown').
name(m_assert_null_203, simple_name, string_utils_test_1_expr40, name, range(string_utils_test_1, 44248, 10, 1013, 1013), 'assertNull').
name(t_string_utils_4, simple_name, string_utils_test_1_expr41, expression, range(string_utils_test_1, 44259, 11, 1013, 1013), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr41, name, range(string_utils_test_1, 44271, 11, 1013, 1013), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr46, name, range(string_utils_test_1, 44337, 12, 1014, 1014), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr47, expression, range(string_utils_test_1, 44350, 11, 1014, 1014), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr47, name, range(string_utils_test_1, 44362, 11, 1014, 1014), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr52, name, range(string_utils_test_1, 44429, 12, 1015, 1015), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr53, expression, range(string_utils_test_1, 44442, 11, 1015, 1015), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr53, name, range(string_utils_test_1, 44454, 11, 1015, 1015), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr54, name, range(string_utils_test_1, 44501, 12, 1016, 1016), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr55, expression, range(string_utils_test_1, 44514, 11, 1016, 1016), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr55, name, range(string_utils_test_1, 44526, 11, 1016, 1016), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr57, name, range(string_utils_test_1, 44582, 12, 1017, 1017), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr58, expression, range(string_utils_test_1, 44595, 11, 1017, 1017), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr58, name, range(string_utils_test_1, 44607, 11, 1017, 1017), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr60, name, range(string_utils_test_1, 44663, 12, 1018, 1018), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr61, expression, range(string_utils_test_1, 44676, 11, 1018, 1018), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr61, name, range(string_utils_test_1, 44688, 11, 1018, 1018), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr64, name, range(string_utils_test_1, 44749, 12, 1020, 1020), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr65, expression, range(string_utils_test_1, 44762, 11, 1020, 1020), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr65, name, range(string_utils_test_1, 44774, 11, 1020, 1020), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr70, name, range(string_utils_test_1, 44844, 12, 1021, 1021), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr71, expression, range(string_utils_test_1, 44857, 11, 1021, 1021), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr71, name, range(string_utils_test_1, 44869, 11, 1021, 1021), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr76, name, range(string_utils_test_1, 44943, 12, 1022, 1022), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr77, expression, range(string_utils_test_1, 44956, 11, 1022, 1022), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr77, name, range(string_utils_test_1, 44968, 11, 1022, 1022), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr82, name, range(string_utils_test_1, 45055, 12, 1023, 1023), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr83, expression, range(string_utils_test_1, 45068, 11, 1023, 1023), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr83, name, range(string_utils_test_1, 45080, 11, 1023, 1023), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr88, name, range(string_utils_test_1, 45196, 12, 1026, 1026), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr89, expression, range(string_utils_test_1, 45216, 11, 1026, 1026), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr89, name, range(string_utils_test_1, 45228, 11, 1026, 1026), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr94, name, range(string_utils_test_1, 45305, 12, 1027, 1027), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr95, expression, range(string_utils_test_1, 45334, 11, 1027, 1027), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr95, name, range(string_utils_test_1, 45346, 11, 1027, 1027), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr98, name, range(string_utils_test_1, 46202, 12, 1038, 1038), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr99, expression, range(string_utils_test_1, 46215, 11, 1038, 1038), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr99, name, range(string_utils_test_1, 46227, 11, 1038, 1038), 'replaceEach').
name(m_assert_equals_204, simple_name, string_utils_test_1_expr104, name, range(string_utils_test_1, 46301, 12, 1039, 1039), 'assertEquals').
name(t_string_utils_4, simple_name, string_utils_test_1_expr105, expression, range(string_utils_test_1, 46314, 11, 1039, 1039), 'StringUtils').
name(m_replace_each_93, simple_name, string_utils_test_1_expr105, name, range(string_utils_test_1, 46326, 11, 1039, 1039), 'replaceEach').

%%% Literals
%string_utils_1 - org.apache.commons.lang3.StringUtils
literal(string_utils_1_literal1, boolean_literal, string_utils_1_expr1, (arguments, 3), range(string_utils_1, 141245, 5, 3502, 3502), false).
literal(string_utils_1_literal2, number_literal, string_utils_1_expr1, (arguments, 4), range(string_utils_1, 141252, 1, 3502, 3502), 0).
literal(string_utils_1_literal3, null_literal, string_utils_1_expr7, right_operand, range(string_utils_1, 146689, 4, 3612, 3612), null).
literal(string_utils_1_literal4, number_literal, string_utils_1_expr8, right_operand, range(string_utils_1, 146714, 1, 3612, 3612), 0).
literal(string_utils_1_literal5, null_literal, string_utils_1_expr10, right_operand, range(string_utils_1, 146733, 4, 3612, 3612), null).
literal(string_utils_1_literal6, number_literal, string_utils_1_expr11, right_operand, range(string_utils_1, 146962, 1, 3619, 3619), 0).
literal(string_utils_1_literal7, number_literal, string_utils_1_expr14, operand, range(string_utils_1, 147696, 1, 3638, 3638), 1).
literal(string_utils_1_literal8, number_literal, string_utils_1_expr15, operand, range(string_utils_1, 147727, 1, 3639, 3639), 1).
literal(string_utils_1_literal9, number_literal, string_utils_1_expr16, operand, range(string_utils_1, 147755, 1, 3640, 3640), 1).
literal(string_utils_1_literal10, number_literal, string_utils_1_code23, initializer, range(string_utils_1, 147902, 1, 3644, 3644), 0).
literal(string_utils_1_literal11, null_literal, string_utils_1_expr24, right_operand, range(string_utils_1, 147995, 4, 3645, 3645), null).
literal(string_utils_1_literal12, number_literal, string_utils_1_expr30, operand, range(string_utils_1, 148275, 1, 3653, 3653), 1).
literal(string_utils_1_literal13, boolean_literal, string_utils_1_expr31, right_hand_side, range(string_utils_1, 148327, 4, 3654, 3654), true).
literal(string_utils_1_literal14, number_literal, string_utils_1_expr35, operand, range(string_utils_1, 148388, 1, 3656, 3656), 1).
literal(string_utils_1_literal15, number_literal, string_utils_1_expr40, operand, range(string_utils_1, 148656, 1, 3665, 3665), 1).
literal(string_utils_1_literal16, number_literal, string_utils_1_code25, initializer, range(string_utils_1, 148717, 1, 3669, 3669), 0).
literal(string_utils_1_literal17, number_literal, string_utils_1_code27, initializer, range(string_utils_1, 148855, 1, 3672, 3672), 0).
literal(string_utils_1_literal18, number_literal, string_utils_1_code29, initializer, range(string_utils_1, 148988, 1, 3675, 3675), 0).
literal(string_utils_1_literal19, number_literal, string_utils_1_expr49, right_operand, range(string_utils_1, 149127, 1, 3677, 3677), 0).
literal(string_utils_1_literal20, number_literal, string_utils_1_expr52, right_operand, range(string_utils_1, 149340, 1, 3682, 3682), 5).
literal(string_utils_1_literal21, number_literal, string_utils_1_expr58, operand, range(string_utils_1, 149448, 1, 3686, 3686), 1).
literal(string_utils_1_literal22, number_literal, string_utils_1_expr71, operand, range(string_utils_1, 149715, 1, 3695, 3695), 1).
literal(string_utils_1_literal23, number_literal, string_utils_1_expr73, operand, range(string_utils_1, 149746, 1, 3696, 3696), 1).
literal(string_utils_1_literal24, number_literal, string_utils_1_expr75, operand, range(string_utils_1, 149774, 1, 3697, 3697), 1).
literal(string_utils_1_literal25, number_literal, string_utils_1_code38, initializer, range(string_utils_1, 149903, 1, 3700, 3700), 0).
literal(string_utils_1_literal26, null_literal, string_utils_1_expr83, right_operand, range(string_utils_1, 150000, 4, 3701, 3701), null).
literal(string_utils_1_literal27, number_literal, string_utils_1_expr89, operand, range(string_utils_1, 150315, 1, 3709, 3709), 1).
literal(string_utils_1_literal28, boolean_literal, string_utils_1_expr90, right_hand_side, range(string_utils_1, 150371, 4, 3710, 3710), true).
literal(string_utils_1_literal29, number_literal, string_utils_1_expr94, operand, range(string_utils_1, 150440, 1, 3712, 3712), 1).
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
literal(string_utils_test_1_literal1, string_literal, string_utils_test_1_code5, initializer, range(string_utils_test_1, 1877, 2, 53, 53), "").
literal(string_utils_test_1_literal2, string_literal, string_utils_test_1_code7, initializer, range(string_utils_test_1, 1902, 2, 54, 54), "").
literal(string_utils_test_1_literal3, string_literal, string_utils_test_1_code9, initializer, range(string_utils_test_1, 1926, 2, 55, 55), "").
literal(string_utils_test_1_literal4, string_literal, string_utils_test_1_code11, initializer, range(string_utils_test_1, 1951, 2, 56, 56), "").
literal(string_utils_test_1_literal5, number_literal, string_utils_test_1_code13, initializer, range(string_utils_test_1, 1976, 1, 57, 57), 0).
literal(string_utils_test_1_literal6, number_literal, string_utils_test_1_expr9, right_operand, range(string_utils_test_1, 2135, 2, 60, 60), 32).
literal(string_utils_test_1_literal7, number_literal, string_utils_test_1_expr13, right_operand, range(string_utils_test_1, 2239, 2, 63, 63), 40).
literal(string_utils_test_1_literal8, number_literal, string_utils_test_1_code19, initializer, range(string_utils_test_1, 2339, 1, 67, 67), 0).
literal(string_utils_test_1_literal9, number_literal, string_utils_test_1_expr18, right_operand, range(string_utils_test_1, 2347, 2, 67, 67), 32).
literal(string_utils_test_1_literal10, string_literal, string_utils_test_1_expr27, (expressions, 0), range(string_utils_test_1, 2576, 5, 76, 76), "foo").
literal(string_utils_test_1_literal11, string_literal, string_utils_test_1_expr27, (expressions, 1), range(string_utils_test_1, 2583, 5, 76, 76), "bar").
literal(string_utils_test_1_literal12, string_literal, string_utils_test_1_expr27, (expressions, 2), range(string_utils_test_1, 2590, 5, 76, 76), "baz").
literal(string_utils_test_1_literal13, null_literal, string_utils_test_1_expr29, (expressions, 0), range(string_utils_test_1, 2709, 4, 78, 78), null).
literal(string_utils_test_1_literal14, null_literal, string_utils_test_1_expr30, (expressions, 0), range(string_utils_test_1, 2770, 4, 79, 79), null).
literal(string_utils_test_1_literal15, string_literal, string_utils_test_1_expr30, (expressions, 1), range(string_utils_test_1, 2776, 2, 79, 79), "").
literal(string_utils_test_1_literal16, string_literal, string_utils_test_1_expr30, (expressions, 2), range(string_utils_test_1, 2780, 5, 79, 79), "foo").
literal(string_utils_test_1_literal17, string_literal, string_utils_test_1_expr32, (arguments, 0), range(string_utils_test_1, 2852, 5, 80, 80), "foo").
literal(string_utils_test_1_literal18, number_literal, string_utils_test_1_expr33, (arguments, 0), range(string_utils_test_1, 2869, 1, 80, 80), 2).
literal(string_utils_test_1_literal19, string_literal, string_utils_test_1_expr37, (arguments, 0), range(string_utils_test_1, 3668, 23, 105, 105), "StringUtilsTest Tests").
literal(string_utils_test_1_literal20, null_literal, string_utils_test_1_expr41, (arguments, 0), range(string_utils_test_1, 44283, 4, 1013, 1013), null).
literal(string_utils_test_1_literal21, string_literal, string_utils_test_1_expr44, (expressions, 0), range(string_utils_test_1, 44302, 3, 1013, 1013), "a").
literal(string_utils_test_1_literal22, string_literal, string_utils_test_1_expr45, (expressions, 0), range(string_utils_test_1, 44321, 3, 1013, 1013), "b").
literal(string_utils_test_1_literal24, string_literal, string_utils_test_1_expr47, (arguments, 0), range(string_utils_test_1, 44374, 2, 1014, 1014), "").
literal(string_utils_test_1_literal25, string_literal, string_utils_test_1_expr50, (expressions, 0), range(string_utils_test_1, 44391, 3, 1014, 1014), "a").
literal(string_utils_test_1_literal26, string_literal, string_utils_test_1_expr51, (expressions, 0), range(string_utils_test_1, 44410, 3, 1014, 1014), "b").
literal(string_utils_test_1_literal23, string_literal, string_utils_test_1_expr46, (arguments, 1), range(string_utils_test_1, 44416, 2, 1014, 1014), "").
literal(string_utils_test_1_literal28, string_literal, string_utils_test_1_expr53, (arguments, 0), range(string_utils_test_1, 44466, 5, 1015, 1015), "aba").
literal(string_utils_test_1_literal29, null_literal, string_utils_test_1_expr53, (arguments, 1), range(string_utils_test_1, 44473, 4, 1015, 1015), null).
literal(string_utils_test_1_literal30, null_literal, string_utils_test_1_expr53, (arguments, 2), range(string_utils_test_1, 44479, 4, 1015, 1015), null).
literal(string_utils_test_1_literal27, string_literal, string_utils_test_1_expr52, (arguments, 1), range(string_utils_test_1, 44485, 5, 1015, 1015), "aba").
literal(string_utils_test_1_literal32, string_literal, string_utils_test_1_expr55, (arguments, 0), range(string_utils_test_1, 44538, 5, 1016, 1016), "aba").
literal(string_utils_test_1_literal34, number_literal, string_utils_test_1_expr56, (dimensions, 0), range(string_utils_test_1, 44556, 1, 1016, 1016), 0).
literal(string_utils_test_1_literal33, null_literal, string_utils_test_1_expr55, (arguments, 2), range(string_utils_test_1, 44560, 4, 1016, 1016), null).
literal(string_utils_test_1_literal31, string_literal, string_utils_test_1_expr54, (arguments, 1), range(string_utils_test_1, 44566, 5, 1016, 1016), "aba").
literal(string_utils_test_1_literal36, string_literal, string_utils_test_1_expr58, (arguments, 0), range(string_utils_test_1, 44619, 5, 1017, 1017), "aba").
literal(string_utils_test_1_literal37, null_literal, string_utils_test_1_expr58, (arguments, 1), range(string_utils_test_1, 44626, 4, 1017, 1017), null).
literal(string_utils_test_1_literal38, number_literal, string_utils_test_1_expr59, (dimensions, 0), range(string_utils_test_1, 44643, 1, 1017, 1017), 0).
literal(string_utils_test_1_literal35, string_literal, string_utils_test_1_expr57, (arguments, 1), range(string_utils_test_1, 44647, 5, 1017, 1017), "aba").
literal(string_utils_test_1_literal40, string_literal, string_utils_test_1_expr61, (arguments, 0), range(string_utils_test_1, 44700, 5, 1018, 1018), "aba").
literal(string_utils_test_1_literal42, string_literal, string_utils_test_1_expr63, (expressions, 0), range(string_utils_test_1, 44720, 3, 1018, 1018), "a").
literal(string_utils_test_1_literal41, null_literal, string_utils_test_1_expr61, (arguments, 2), range(string_utils_test_1, 44726, 4, 1018, 1018), null).
literal(string_utils_test_1_literal39, string_literal, string_utils_test_1_expr60, (arguments, 1), range(string_utils_test_1, 44732, 5, 1018, 1018), "aba").
literal(string_utils_test_1_literal44, string_literal, string_utils_test_1_expr65, (arguments, 0), range(string_utils_test_1, 44786, 5, 1020, 1020), "aba").
literal(string_utils_test_1_literal45, string_literal, string_utils_test_1_expr68, (expressions, 0), range(string_utils_test_1, 44806, 3, 1020, 1020), "a").
literal(string_utils_test_1_literal46, string_literal, string_utils_test_1_expr69, (expressions, 0), range(string_utils_test_1, 44825, 2, 1020, 1020), "").
literal(string_utils_test_1_literal43, string_literal, string_utils_test_1_expr64, (arguments, 1), range(string_utils_test_1, 44830, 3, 1020, 1020), "b").
literal(string_utils_test_1_literal48, string_literal, string_utils_test_1_expr71, (arguments, 0), range(string_utils_test_1, 44881, 5, 1021, 1021), "aba").
literal(string_utils_test_1_literal49, null_literal, string_utils_test_1_expr74, (expressions, 0), range(string_utils_test_1, 44901, 4, 1021, 1021), null).
literal(string_utils_test_1_literal50, string_literal, string_utils_test_1_expr75, (expressions, 0), range(string_utils_test_1, 44921, 3, 1021, 1021), "a").
literal(string_utils_test_1_literal47, string_literal, string_utils_test_1_expr70, (arguments, 1), range(string_utils_test_1, 44927, 5, 1021, 1021), "aba").
literal(string_utils_test_1_literal52, string_literal, string_utils_test_1_expr77, (arguments, 0), range(string_utils_test_1, 44980, 7, 1022, 1022), "abcde").
literal(string_utils_test_1_literal53, string_literal, string_utils_test_1_expr80, (expressions, 0), range(string_utils_test_1, 45002, 4, 1022, 1022), "ab").
literal(string_utils_test_1_literal54, string_literal, string_utils_test_1_expr80, (expressions, 1), range(string_utils_test_1, 45008, 3, 1022, 1022), "d").
literal(string_utils_test_1_literal55, string_literal, string_utils_test_1_expr81, (expressions, 0), range(string_utils_test_1, 45027, 3, 1022, 1022), "w").
literal(string_utils_test_1_literal56, string_literal, string_utils_test_1_expr81, (expressions, 1), range(string_utils_test_1, 45032, 3, 1022, 1022), "t").
literal(string_utils_test_1_literal51, string_literal, string_utils_test_1_expr76, (arguments, 1), range(string_utils_test_1, 45038, 6, 1022, 1022), "wcte").
literal(string_utils_test_1_literal58, string_literal, string_utils_test_1_expr83, (arguments, 0), range(string_utils_test_1, 45092, 7, 1023, 1023), "abcde").
literal(string_utils_test_1_literal59, string_literal, string_utils_test_1_expr86, (expressions, 0), range(string_utils_test_1, 45114, 4, 1023, 1023), "ab").
literal(string_utils_test_1_literal60, string_literal, string_utils_test_1_expr86, (expressions, 1), range(string_utils_test_1, 45120, 3, 1023, 1023), "d").
literal(string_utils_test_1_literal61, string_literal, string_utils_test_1_expr87, (expressions, 0), range(string_utils_test_1, 45139, 3, 1023, 1023), "d").
literal(string_utils_test_1_literal62, string_literal, string_utils_test_1_expr87, (expressions, 1), range(string_utils_test_1, 45144, 3, 1023, 1023), "t").
literal(string_utils_test_1_literal57, string_literal, string_utils_test_1_expr82, (arguments, 1), range(string_utils_test_1, 45150, 6, 1023, 1023), "dcte").
literal(string_utils_test_1_literal63, string_literal, string_utils_test_1_expr88, (arguments, 0), range(string_utils_test_1, 45209, 5, 1026, 1026), "bcc").
literal(string_utils_test_1_literal64, string_literal, string_utils_test_1_expr89, (arguments, 0), range(string_utils_test_1, 45240, 5, 1026, 1026), "abc").
literal(string_utils_test_1_literal65, string_literal, string_utils_test_1_expr92, (expressions, 0), range(string_utils_test_1, 45260, 3, 1026, 1026), "a").
literal(string_utils_test_1_literal66, string_literal, string_utils_test_1_expr92, (expressions, 1), range(string_utils_test_1, 45265, 3, 1026, 1026), "b").
literal(string_utils_test_1_literal67, string_literal, string_utils_test_1_expr93, (expressions, 0), range(string_utils_test_1, 45284, 3, 1026, 1026), "b").
literal(string_utils_test_1_literal68, string_literal, string_utils_test_1_expr93, (expressions, 1), range(string_utils_test_1, 45289, 3, 1026, 1026), "c").
literal(string_utils_test_1_literal69, string_literal, string_utils_test_1_expr94, (arguments, 0), range(string_utils_test_1, 45318, 14, 1027, 1027), "q651.506bera").
literal(string_utils_test_1_literal70, string_literal, string_utils_test_1_expr95, (arguments, 0), range(string_utils_test_1, 45358, 14, 1027, 1027), "d216.102oren").
literal(string_utils_test_1_literal72, string_literal, string_utils_test_1_expr99, (arguments, 0), range(string_utils_test_1, 46239, 5, 1038, 1038), "aba").
literal(string_utils_test_1_literal73, string_literal, string_utils_test_1_expr102, (expressions, 0), range(string_utils_test_1, 46259, 3, 1038, 1038), "a").
literal(string_utils_test_1_literal74, null_literal, string_utils_test_1_expr103, (expressions, 0), range(string_utils_test_1, 46278, 4, 1038, 1038), null).
literal(string_utils_test_1_literal71, string_literal, string_utils_test_1_expr98, (arguments, 1), range(string_utils_test_1, 46285, 5, 1038, 1038), "aba").
literal(string_utils_test_1_literal76, string_literal, string_utils_test_1_expr105, (arguments, 0), range(string_utils_test_1, 46338, 5, 1039, 1039), "aba").
literal(string_utils_test_1_literal77, string_literal, string_utils_test_1_expr108, (expressions, 0), range(string_utils_test_1, 46358, 3, 1039, 1039), "a").
literal(string_utils_test_1_literal78, string_literal, string_utils_test_1_expr108, (expressions, 1), range(string_utils_test_1, 46363, 3, 1039, 1039), "b").
literal(string_utils_test_1_literal79, string_literal, string_utils_test_1_expr109, (expressions, 0), range(string_utils_test_1, 46382, 3, 1039, 1039), "c").
literal(string_utils_test_1_literal80, null_literal, string_utils_test_1_expr109, (expressions, 1), range(string_utils_test_1, 46387, 4, 1039, 1039), null).
literal(string_utils_test_1_literal75, string_literal, string_utils_test_1_expr104, (arguments, 1), range(string_utils_test_1, 46394, 5, 1039, 1039), "cbc").

%%% Other Code Entities
%string_utils_1 - org.apache.commons.lang3.StringUtils
code(string_utils_1_code1, compilation_unit, range(string_utils_1, 0, 229858, 1, -1)).
code(string_utils_1_code2, type_declaration, string_utils_1_code1, (types, 0), range(string_utils_1, 944, 228913, 24, 5837)).
code(string_utils_1_code3, method_declaration, string_utils_1_code2, (body_declarations, 95), range(string_utils_1, 139315, 1946, 3462, 3503)).
code(string_utils_1_code4, method_declaration, string_utils_1_code2, (body_declarations, 97), range(string_utils_1, 143950, 7058, 3557, 3731)).
code(string_utils_1_code5, primitive_type, string_utils_1_stmt5, type, range(string_utils_1, 147091, 3, 3623, 3623)).
code(string_utils_1_code6, variable_declaration_fragment, string_utils_1_stmt5, (fragments, 0), range(string_utils_1, 147095, 32, 3623, 3623)).
code(string_utils_1_code7, primitive_type, string_utils_1_stmt6, type, range(string_utils_1, 147137, 3, 3624, 3624)).
code(string_utils_1_code8, variable_declaration_fragment, string_utils_1_stmt6, (fragments, 0), range(string_utils_1, 147141, 42, 3624, 3624)).
code(string_utils_1_code9, array_type, string_utils_1_stmt8, type, range(string_utils_1, 147554, 9, 3635, 3635)).
code(string_utils_1_code10, primitive_type, string_utils_1_code9, element_type, range(string_utils_1, 147554, 7, 3635, 3635)).
code(string_utils_1_code11, dimension, string_utils_1_code9, (dimensions, 0), range(string_utils_1, 147561, 2, 3635, 3635)).
code(string_utils_1_code12, variable_declaration_fragment, string_utils_1_stmt8, (fragments, 0), range(string_utils_1, 147564, 53, 3635, 3635)).
code(string_utils_1_code13, array_type, string_utils_1_expr13, type, range(string_utils_1, 147596, 21, 3635, 3635)).
code(string_utils_1_code14, primitive_type, string_utils_1_code13, element_type, range(string_utils_1, 147596, 7, 3635, 3635)).
code(string_utils_1_code15, dimension, string_utils_1_code13, (dimensions, 0), range(string_utils_1, 147603, 14, 3635, 3635)).
code(string_utils_1_code16, primitive_type, string_utils_1_stmt9, type, range(string_utils_1, 147679, 3, 3638, 3638)).
code(string_utils_1_code17, variable_declaration_fragment, string_utils_1_stmt9, (fragments, 0), range(string_utils_1, 147683, 14, 3638, 3638)).
code(string_utils_1_code18, primitive_type, string_utils_1_stmt10, type, range(string_utils_1, 147707, 3, 3639, 3639)).
code(string_utils_1_code19, variable_declaration_fragment, string_utils_1_stmt10, (fragments, 0), range(string_utils_1, 147711, 17, 3639, 3639)).
code(string_utils_1_code20, primitive_type, string_utils_1_stmt11, type, range(string_utils_1, 147738, 3, 3640, 3640)).
code(string_utils_1_code21, variable_declaration_fragment, string_utils_1_stmt11, (fragments, 0), range(string_utils_1, 147742, 14, 3640, 3640)).
code(string_utils_1_code22, primitive_type, string_utils_1_expr17, type, range(string_utils_1, 147894, 3, 3644, 3644)).
code(string_utils_1_code23, variable_declaration_fragment, string_utils_1_expr17, (fragments, 0), range(string_utils_1, 147898, 5, 3644, 3644)).
code(string_utils_1_code24, primitive_type, string_utils_1_stmt23, type, range(string_utils_1, 148705, 3, 3669, 3669)).
code(string_utils_1_code25, variable_declaration_fragment, string_utils_1_stmt23, (fragments, 0), range(string_utils_1, 148709, 9, 3669, 3669)).
code(string_utils_1_code26, primitive_type, string_utils_1_stmt24, type, range(string_utils_1, 148840, 3, 3672, 3672)).
code(string_utils_1_code27, variable_declaration_fragment, string_utils_1_stmt24, (fragments, 0), range(string_utils_1, 148844, 12, 3672, 3672)).
code(string_utils_1_code28, primitive_type, string_utils_1_expr41, type, range(string_utils_1, 148980, 3, 3675, 3675)).
code(string_utils_1_code29, variable_declaration_fragment, string_utils_1_expr41, (fragments, 0), range(string_utils_1, 148984, 5, 3675, 3675)).
code(string_utils_1_code30, primitive_type, string_utils_1_stmt26, type, range(string_utils_1, 149033, 3, 3676, 3676)).
code(string_utils_1_code31, variable_declaration_fragment, string_utils_1_stmt26, (fragments, 0), range(string_utils_1, 149037, 62, 3676, 3676)).
code(string_utils_1_code32, simple_type, string_utils_1_stmt29, type, range(string_utils_1, 149353, 13, 3684, 3684)).
code(string_utils_1_code33, variable_declaration_fragment, string_utils_1_stmt29, (fragments, 0), range(string_utils_1, 149367, 49, 3684, 3684)).
code(string_utils_1_code34, simple_type, string_utils_1_expr54, type, range(string_utils_1, 149377, 13, 3684, 3684)).
code(string_utils_1_code35, primitive_type, string_utils_1_expr59, type, range(string_utils_1, 149471, 3, 3688, 3688)).
code(string_utils_1_code36, variable_declaration_fragment, string_utils_1_expr59, (fragments, 0), range(string_utils_1, 149475, 9, 3688, 3688)).
code(string_utils_1_code37, primitive_type, string_utils_1_expr76, type, range(string_utils_1, 149895, 3, 3700, 3700)).
code(string_utils_1_code38, variable_declaration_fragment, string_utils_1_expr76, (fragments, 0), range(string_utils_1, 149899, 5, 3700, 3700)).
code(string_utils_1_code39, primitive_type, string_utils_1_stmt46, type, range(string_utils_1, 150680, 3, 3721, 3721)).
code(string_utils_1_code40, variable_declaration_fragment, string_utils_1_stmt46, (fragments, 0), range(string_utils_1, 150684, 26, 3721, 3721)).
code(string_utils_1_code41, primitive_type, string_utils_1_expr99, type, range(string_utils_1, 150725, 3, 3722, 3722)).
code(string_utils_1_code42, variable_declaration_fragment, string_utils_1_expr99, (fragments, 0), range(string_utils_1, 150729, 9, 3722, 3722)).
code(string_utils_1_code43, simple_type, string_utils_1_stmt49, type, range(string_utils_1, 150821, 6, 3725, 3725)).
code(string_utils_1_code44, variable_declaration_fragment, string_utils_1_stmt49, (fragments, 0), range(string_utils_1, 150828, 23, 3725, 3725)).
%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
code(string_utils_test_1_code1, compilation_unit, range(string_utils_test_1, 0, 84141, 1, -1)).
code(string_utils_test_1_code2, type_declaration, string_utils_test_1_code1, (types, 0), range(string_utils_test_1, 1150, 82990, 31, 1760)).
code(string_utils_test_1_code3, initializer, string_utils_test_1_code2, (body_declarations, 4), range(string_utils_test_1, 1848, 677, 52, 74)).
code(string_utils_test_1_code4, simple_type, string_utils_test_1_stmt1, type, range(string_utils_test_1, 1865, 6, 53, 53)).
code(string_utils_test_1_code5, variable_declaration_fragment, string_utils_test_1_stmt1, (fragments, 0), range(string_utils_test_1, 1872, 7, 53, 53)).
code(string_utils_test_1_code6, simple_type, string_utils_test_1_stmt2, type, range(string_utils_test_1, 1889, 6, 54, 54)).
code(string_utils_test_1_code7, variable_declaration_fragment, string_utils_test_1_stmt2, (fragments, 0), range(string_utils_test_1, 1896, 8, 54, 54)).
code(string_utils_test_1_code8, simple_type, string_utils_test_1_stmt3, type, range(string_utils_test_1, 1914, 6, 55, 55)).
code(string_utils_test_1_code9, variable_declaration_fragment, string_utils_test_1_stmt3, (fragments, 0), range(string_utils_test_1, 1921, 7, 55, 55)).
code(string_utils_test_1_code10, simple_type, string_utils_test_1_stmt4, type, range(string_utils_test_1, 1938, 6, 56, 56)).
code(string_utils_test_1_code11, variable_declaration_fragment, string_utils_test_1_stmt4, (fragments, 0), range(string_utils_test_1, 1945, 8, 56, 56)).
code(string_utils_test_1_code12, primitive_type, string_utils_test_1_expr1, type, range(string_utils_test_1, 1968, 3, 57, 57)).
code(string_utils_test_1_code13, variable_declaration_fragment, string_utils_test_1_expr1, (fragments, 0), range(string_utils_test_1, 1972, 5, 57, 57)).
code(string_utils_test_1_code14, primitive_type, string_utils_test_1_expr5, type, range(string_utils_test_1, 2051, 4, 58, 58)).
code(string_utils_test_1_code15, primitive_type, string_utils_test_1_expr8, type, range(string_utils_test_1, 2101, 4, 59, 59)).
code(string_utils_test_1_code16, primitive_type, string_utils_test_1_expr12, type, range(string_utils_test_1, 2184, 4, 61, 61)).
code(string_utils_test_1_code17, primitive_type, string_utils_test_1_expr16, type, range(string_utils_test_1, 2284, 4, 64, 64)).
code(string_utils_test_1_code18, primitive_type, string_utils_test_1_expr17, type, range(string_utils_test_1, 2331, 3, 67, 67)).
code(string_utils_test_1_code19, variable_declaration_fragment, string_utils_test_1_expr17, (fragments, 0), range(string_utils_test_1, 2335, 5, 67, 67)).
code(string_utils_test_1_code20, primitive_type, string_utils_test_1_expr22, type, range(string_utils_test_1, 2392, 4, 68, 68)).
code(string_utils_test_1_code22, modifier, string_utils_test_1_code21, (modifiers, 0), range(string_utils_test_1, 2531, 7, 76, 76)).
code(string_utils_test_1_code21, field_declaration, string_utils_test_1_code2, (body_declarations, 5), range(string_utils_test_1, 2531, 67, 76, 76)).
code(string_utils_test_1_code23, modifier, string_utils_test_1_code21, (modifiers, 1), range(string_utils_test_1, 2539, 6, 76, 76)).
code(string_utils_test_1_code24, modifier, string_utils_test_1_code21, (modifiers, 2), range(string_utils_test_1, 2546, 5, 76, 76)).
code(string_utils_test_1_code25, array_type, string_utils_test_1_code21, type, range(string_utils_test_1, 2552, 8, 76, 76)).
code(string_utils_test_1_code26, simple_type, string_utils_test_1_code25, element_type, range(string_utils_test_1, 2552, 6, 76, 76)).
code(string_utils_test_1_code27, dimension, string_utils_test_1_code25, (dimensions, 0), range(string_utils_test_1, 2558, 2, 76, 76)).
code(string_utils_test_1_code28, variable_declaration_fragment, string_utils_test_1_code21, (fragments, 0), range(string_utils_test_1, 2561, 36, 76, 76)).
code(string_utils_test_1_code29, field_declaration, string_utils_test_1_code2, (body_declarations, 6), range(string_utils_test_1, 2603, 52, 77, 77)).
code(string_utils_test_1_code30, modifier, string_utils_test_1_code29, (modifiers, 0), range(string_utils_test_1, 2603, 7, 77, 77)).
code(string_utils_test_1_code31, modifier, string_utils_test_1_code29, (modifiers, 1), range(string_utils_test_1, 2611, 6, 77, 77)).
code(string_utils_test_1_code32, modifier, string_utils_test_1_code29, (modifiers, 2), range(string_utils_test_1, 2618, 5, 77, 77)).
code(string_utils_test_1_code34, simple_type, string_utils_test_1_code33, element_type, range(string_utils_test_1, 2624, 6, 77, 77)).
code(string_utils_test_1_code33, array_type, string_utils_test_1_code29, type, range(string_utils_test_1, 2624, 8, 77, 77)).
code(string_utils_test_1_code35, dimension, string_utils_test_1_code33, (dimensions, 0), range(string_utils_test_1, 2630, 2, 77, 77)).
code(string_utils_test_1_code36, variable_declaration_fragment, string_utils_test_1_code29, (fragments, 0), range(string_utils_test_1, 2633, 21, 77, 77)).
code(string_utils_test_1_code37, field_declaration, string_utils_test_1_code2, (body_declarations, 7), range(string_utils_test_1, 2660, 55, 78, 78)).
code(string_utils_test_1_code38, modifier, string_utils_test_1_code37, (modifiers, 0), range(string_utils_test_1, 2660, 7, 78, 78)).
code(string_utils_test_1_code39, modifier, string_utils_test_1_code37, (modifiers, 1), range(string_utils_test_1, 2668, 6, 78, 78)).
code(string_utils_test_1_code40, modifier, string_utils_test_1_code37, (modifiers, 2), range(string_utils_test_1, 2675, 5, 78, 78)).
code(string_utils_test_1_code42, simple_type, string_utils_test_1_code41, element_type, range(string_utils_test_1, 2681, 6, 78, 78)).
code(string_utils_test_1_code41, array_type, string_utils_test_1_code37, type, range(string_utils_test_1, 2681, 8, 78, 78)).
code(string_utils_test_1_code43, dimension, string_utils_test_1_code41, (dimensions, 0), range(string_utils_test_1, 2687, 2, 78, 78)).
code(string_utils_test_1_code44, variable_declaration_fragment, string_utils_test_1_code37, (fragments, 0), range(string_utils_test_1, 2690, 24, 78, 78)).
code(string_utils_test_1_code46, modifier, string_utils_test_1_code45, (modifiers, 0), range(string_utils_test_1, 2720, 7, 79, 79)).
code(string_utils_test_1_code45, field_declaration, string_utils_test_1_code2, (body_declarations, 8), range(string_utils_test_1, 2720, 67, 79, 79)).
code(string_utils_test_1_code47, modifier, string_utils_test_1_code45, (modifiers, 1), range(string_utils_test_1, 2728, 6, 79, 79)).
code(string_utils_test_1_code48, modifier, string_utils_test_1_code45, (modifiers, 2), range(string_utils_test_1, 2735, 5, 79, 79)).
code(string_utils_test_1_code49, array_type, string_utils_test_1_code45, type, range(string_utils_test_1, 2741, 8, 79, 79)).
code(string_utils_test_1_code50, simple_type, string_utils_test_1_code49, element_type, range(string_utils_test_1, 2741, 6, 79, 79)).
code(string_utils_test_1_code51, dimension, string_utils_test_1_code49, (dimensions, 0), range(string_utils_test_1, 2747, 2, 79, 79)).
code(string_utils_test_1_code52, variable_declaration_fragment, string_utils_test_1_code45, (fragments, 0), range(string_utils_test_1, 2750, 36, 79, 79)).
code(string_utils_test_1_code54, modifier, string_utils_test_1_code53, (modifiers, 0), range(string_utils_test_1, 2792, 7, 80, 80)).
code(string_utils_test_1_code53, field_declaration, string_utils_test_1_code2, (body_declarations, 9), range(string_utils_test_1, 2792, 81, 80, 80)).
code(string_utils_test_1_code55, modifier, string_utils_test_1_code53, (modifiers, 1), range(string_utils_test_1, 2800, 6, 80, 80)).
code(string_utils_test_1_code56, modifier, string_utils_test_1_code53, (modifiers, 2), range(string_utils_test_1, 2807, 5, 80, 80)).
code(string_utils_test_1_code57, array_type, string_utils_test_1_code53, type, range(string_utils_test_1, 2813, 8, 80, 80)).
code(string_utils_test_1_code58, simple_type, string_utils_test_1_code57, element_type, range(string_utils_test_1, 2813, 6, 80, 80)).
code(string_utils_test_1_code59, dimension, string_utils_test_1_code57, (dimensions, 0), range(string_utils_test_1, 2819, 2, 80, 80)).
code(string_utils_test_1_code60, variable_declaration_fragment, string_utils_test_1_code53, (fragments, 0), range(string_utils_test_1, 2822, 50, 80, 80)).
code(string_utils_test_1_code61, simple_type, string_utils_test_1_expr32, type, range(string_utils_test_1, 2845, 6, 80, 80)).
code(string_utils_test_1_code62, simple_type, string_utils_test_1_expr33, type, range(string_utils_test_1, 2864, 4, 80, 80)).
code(string_utils_test_1_code63, method_declaration, string_utils_test_1_code2, (body_declarations, 19), range(string_utils_test_1, 3398, 64, 95, 97)).
code(string_utils_test_1_code64, method_declaration, string_utils_test_1_code2, (body_declarations, 21), range(string_utils_test_1, 3553, 168, 103, 107)).
code(string_utils_test_1_code65, simple_type, string_utils_test_1_stmt19, type, range(string_utils_test_1, 3590, 9, 104, 104)).
code(string_utils_test_1_code66, variable_declaration_fragment, string_utils_test_1_stmt19, (fragments, 0), range(string_utils_test_1, 3600, 44, 104, 104)).
code(string_utils_test_1_code67, simple_type, string_utils_test_1_expr35, type, range(string_utils_test_1, 3612, 9, 104, 104)).
code(string_utils_test_1_code68, simple_type, string_utils_test_1_expr36, type, range(string_utils_test_1, 3622, 15, 104, 104)).
code(string_utils_test_1_code69, method_declaration, string_utils_test_1_code2, (body_declarations, 22), range(string_utils_test_1, 3727, 84, 109, 112)).
code(string_utils_test_1_code70, method_declaration, string_utils_test_1_code2, (body_declarations, 23), range(string_utils_test_1, 3817, 90, 114, 117)).
code(string_utils_test_1_code71, method_declaration, string_utils_test_1_code2, (body_declarations, 51), range(string_utils_test_1, 44050, 2357, 1006, 1040)).
code(string_utils_test_1_code72, array_type, string_utils_test_1_expr42, type, range(string_utils_test_1, 44293, 8, 1013, 1013)).
code(string_utils_test_1_code73, simple_type, string_utils_test_1_code72, element_type, range(string_utils_test_1, 44293, 6, 1013, 1013)).
code(string_utils_test_1_code74, dimension, string_utils_test_1_code72, (dimensions, 0), range(string_utils_test_1, 44299, 2, 1013, 1013)).
code(string_utils_test_1_code76, simple_type, string_utils_test_1_code75, element_type, range(string_utils_test_1, 44312, 6, 1013, 1013)).
code(string_utils_test_1_code75, array_type, string_utils_test_1_expr43, type, range(string_utils_test_1, 44312, 8, 1013, 1013)).
code(string_utils_test_1_code77, dimension, string_utils_test_1_code75, (dimensions, 0), range(string_utils_test_1, 44318, 2, 1013, 1013)).
code(string_utils_test_1_code78, array_type, string_utils_test_1_expr48, type, range(string_utils_test_1, 44382, 8, 1014, 1014)).
code(string_utils_test_1_code79, simple_type, string_utils_test_1_code78, element_type, range(string_utils_test_1, 44382, 6, 1014, 1014)).
code(string_utils_test_1_code80, dimension, string_utils_test_1_code78, (dimensions, 0), range(string_utils_test_1, 44388, 2, 1014, 1014)).
code(string_utils_test_1_code82, simple_type, string_utils_test_1_code81, element_type, range(string_utils_test_1, 44401, 6, 1014, 1014)).
code(string_utils_test_1_code81, array_type, string_utils_test_1_expr49, type, range(string_utils_test_1, 44401, 8, 1014, 1014)).
code(string_utils_test_1_code83, dimension, string_utils_test_1_code81, (dimensions, 0), range(string_utils_test_1, 44407, 2, 1014, 1014)).
code(string_utils_test_1_code85, simple_type, string_utils_test_1_code84, element_type, range(string_utils_test_1, 44549, 6, 1016, 1016)).
code(string_utils_test_1_code84, array_type, string_utils_test_1_expr56, type, range(string_utils_test_1, 44549, 9, 1016, 1016)).
code(string_utils_test_1_code86, dimension, string_utils_test_1_code84, (dimensions, 0), range(string_utils_test_1, 44555, 3, 1016, 1016)).
code(string_utils_test_1_code88, simple_type, string_utils_test_1_code87, element_type, range(string_utils_test_1, 44636, 6, 1017, 1017)).
code(string_utils_test_1_code87, array_type, string_utils_test_1_expr59, type, range(string_utils_test_1, 44636, 9, 1017, 1017)).
code(string_utils_test_1_code89, dimension, string_utils_test_1_code87, (dimensions, 0), range(string_utils_test_1, 44642, 3, 1017, 1017)).
code(string_utils_test_1_code91, simple_type, string_utils_test_1_code90, element_type, range(string_utils_test_1, 44711, 6, 1018, 1018)).
code(string_utils_test_1_code90, array_type, string_utils_test_1_expr62, type, range(string_utils_test_1, 44711, 8, 1018, 1018)).
code(string_utils_test_1_code92, dimension, string_utils_test_1_code90, (dimensions, 0), range(string_utils_test_1, 44717, 2, 1018, 1018)).
code(string_utils_test_1_code93, array_type, string_utils_test_1_expr66, type, range(string_utils_test_1, 44797, 8, 1020, 1020)).
code(string_utils_test_1_code94, simple_type, string_utils_test_1_code93, element_type, range(string_utils_test_1, 44797, 6, 1020, 1020)).
code(string_utils_test_1_code95, dimension, string_utils_test_1_code93, (dimensions, 0), range(string_utils_test_1, 44803, 2, 1020, 1020)).
code(string_utils_test_1_code96, array_type, string_utils_test_1_expr67, type, range(string_utils_test_1, 44816, 8, 1020, 1020)).
code(string_utils_test_1_code97, simple_type, string_utils_test_1_code96, element_type, range(string_utils_test_1, 44816, 6, 1020, 1020)).
code(string_utils_test_1_code98, dimension, string_utils_test_1_code96, (dimensions, 0), range(string_utils_test_1, 44822, 2, 1020, 1020)).
code(string_utils_test_1_code100, simple_type, string_utils_test_1_code99, element_type, range(string_utils_test_1, 44892, 6, 1021, 1021)).
code(string_utils_test_1_code99, array_type, string_utils_test_1_expr72, type, range(string_utils_test_1, 44892, 8, 1021, 1021)).
code(string_utils_test_1_code101, dimension, string_utils_test_1_code99, (dimensions, 0), range(string_utils_test_1, 44898, 2, 1021, 1021)).
code(string_utils_test_1_code103, simple_type, string_utils_test_1_code102, element_type, range(string_utils_test_1, 44912, 6, 1021, 1021)).
code(string_utils_test_1_code102, array_type, string_utils_test_1_expr73, type, range(string_utils_test_1, 44912, 8, 1021, 1021)).
code(string_utils_test_1_code104, dimension, string_utils_test_1_code102, (dimensions, 0), range(string_utils_test_1, 44918, 2, 1021, 1021)).
code(string_utils_test_1_code105, array_type, string_utils_test_1_expr78, type, range(string_utils_test_1, 44993, 8, 1022, 1022)).
code(string_utils_test_1_code106, simple_type, string_utils_test_1_code105, element_type, range(string_utils_test_1, 44993, 6, 1022, 1022)).
code(string_utils_test_1_code107, dimension, string_utils_test_1_code105, (dimensions, 0), range(string_utils_test_1, 44999, 2, 1022, 1022)).
code(string_utils_test_1_code108, array_type, string_utils_test_1_expr79, type, range(string_utils_test_1, 45018, 8, 1022, 1022)).
code(string_utils_test_1_code109, simple_type, string_utils_test_1_code108, element_type, range(string_utils_test_1, 45018, 6, 1022, 1022)).
code(string_utils_test_1_code110, dimension, string_utils_test_1_code108, (dimensions, 0), range(string_utils_test_1, 45024, 2, 1022, 1022)).
code(string_utils_test_1_code112, simple_type, string_utils_test_1_code111, element_type, range(string_utils_test_1, 45105, 6, 1023, 1023)).
code(string_utils_test_1_code111, array_type, string_utils_test_1_expr84, type, range(string_utils_test_1, 45105, 8, 1023, 1023)).
code(string_utils_test_1_code113, dimension, string_utils_test_1_code111, (dimensions, 0), range(string_utils_test_1, 45111, 2, 1023, 1023)).
code(string_utils_test_1_code115, simple_type, string_utils_test_1_code114, element_type, range(string_utils_test_1, 45130, 6, 1023, 1023)).
code(string_utils_test_1_code114, array_type, string_utils_test_1_expr85, type, range(string_utils_test_1, 45130, 8, 1023, 1023)).
code(string_utils_test_1_code116, dimension, string_utils_test_1_code114, (dimensions, 0), range(string_utils_test_1, 45136, 2, 1023, 1023)).
code(string_utils_test_1_code118, simple_type, string_utils_test_1_code117, element_type, range(string_utils_test_1, 45251, 6, 1026, 1026)).
code(string_utils_test_1_code117, array_type, string_utils_test_1_expr90, type, range(string_utils_test_1, 45251, 8, 1026, 1026)).
code(string_utils_test_1_code119, dimension, string_utils_test_1_code117, (dimensions, 0), range(string_utils_test_1, 45257, 2, 1026, 1026)).
code(string_utils_test_1_code121, simple_type, string_utils_test_1_code120, element_type, range(string_utils_test_1, 45275, 6, 1026, 1026)).
code(string_utils_test_1_code120, array_type, string_utils_test_1_expr91, type, range(string_utils_test_1, 45275, 8, 1026, 1026)).
code(string_utils_test_1_code122, dimension, string_utils_test_1_code120, (dimensions, 0), range(string_utils_test_1, 45281, 2, 1026, 1026)).
code(string_utils_test_1_code124, simple_type, string_utils_test_1_code123, element_type, range(string_utils_test_1, 46250, 6, 1038, 1038)).
code(string_utils_test_1_code123, array_type, string_utils_test_1_expr100, type, range(string_utils_test_1, 46250, 8, 1038, 1038)).
code(string_utils_test_1_code125, dimension, string_utils_test_1_code123, (dimensions, 0), range(string_utils_test_1, 46256, 2, 1038, 1038)).
code(string_utils_test_1_code126, array_type, string_utils_test_1_expr101, type, range(string_utils_test_1, 46269, 8, 1038, 1038)).
code(string_utils_test_1_code127, simple_type, string_utils_test_1_code126, element_type, range(string_utils_test_1, 46269, 6, 1038, 1038)).
code(string_utils_test_1_code128, dimension, string_utils_test_1_code126, (dimensions, 0), range(string_utils_test_1, 46275, 2, 1038, 1038)).
code(string_utils_test_1_code130, simple_type, string_utils_test_1_code129, element_type, range(string_utils_test_1, 46349, 6, 1039, 1039)).
code(string_utils_test_1_code129, array_type, string_utils_test_1_expr106, type, range(string_utils_test_1, 46349, 8, 1039, 1039)).
code(string_utils_test_1_code131, dimension, string_utils_test_1_code129, (dimensions, 0), range(string_utils_test_1, 46355, 2, 1039, 1039)).
code(string_utils_test_1_code133, simple_type, string_utils_test_1_code132, element_type, range(string_utils_test_1, 46373, 6, 1039, 1039)).
code(string_utils_test_1_code132, array_type, string_utils_test_1_expr107, type, range(string_utils_test_1, 46373, 8, 1039, 1039)).
code(string_utils_test_1_code134, dimension, string_utils_test_1_code132, (dimensions, 0), range(string_utils_test_1, 46379, 2, 1039, 1039)).

%%% Name References

name_ref(t_character_2, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_math_1, type, 'Math', 'Ljava/lang/Math;').
name_ref(t_string_3, type, 'String', 'Ljava/lang/String;').
name_ref(t_string_utils_4, type, 'StringUtils', 'Lorg/apache/commons/lang3/StringUtils;').
name_ref(p_name_338, param, 'name', 'string_utils_test_1;name_line_96').
name_ref(v_buf_213, var, 'buf', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#buf').
name_ref(v_greater_212, var, 'greater', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#1#0#greater').
name_ref(v_i_208, var, 'i', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#0#i').
name_ref(v_i_211, var, 'i', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#1#i').
name_ref(v_i_214, var, 'i', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#2#i').
name_ref(v_i_215, var, 'i', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#3#i').
name_ref(v_i_217, var, 'i', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#4#i').
name_ref(v_i_327, var, 'i', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#0#i').
name_ref(v_i_328, var, 'i', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#1#i').
name_ref(v_increase_210, var, 'increase', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#increase').
name_ref(v_no_more_matches_for_repl_index_204, var, 'noMoreMatchesForReplIndex', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#noMoreMatchesForReplIndex').
name_ref(v_ntr_326, var, 'ntr', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#ntr').
name_ref(v_nws_324, var, 'nws', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#nws').
name_ref(v_replace_index_206, var, 'replaceIndex', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#replaceIndex').
name_ref(v_replacement_length_203, var, 'replacementLength', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#replacementLength').
name_ref(v_result_218, var, 'result', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#result').
name_ref(v_search_length_202, var, 'searchLength', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#searchLength').
name_ref(v_start_209, var, 'start', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#start').
name_ref(v_suite_340, var, 'suite', 'Lorg/apache/commons/lang3/StringUtilsTest;.suite()Ljunit/framework/Test;#suite').
name_ref(v_temp_index_207, var, 'tempIndex', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#tempIndex').
name_ref(v_text_index_205, var, 'textIndex', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#textIndex').
name_ref(v_text_length_216, var, 'textLength', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#textLength').
name_ref(v_tr_325, var, 'tr', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#tr').
name_ref(v_ws_323, var, 'ws', 'Lorg/apache/commons/lang3/StringUtilsTest;#0#ws').
name_ref(p_args_339, param, 'args', 'Lorg/apache/commons/lang3/StringUtilsTest;.main([Ljava/lang/String;)V#args#0#0').
name_ref(p_array_147, param, 'array', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;)Ljava/lang/String;#array#0#0').
name_ref(p_array_148, param, 'array', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;C)Ljava/lang/String;#array#0#0').
name_ref(p_array_150, param, 'array', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;#array#0#0').
name_ref(p_array_154, param, 'array', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;#array#0#0').
name_ref(p_array_156, param, 'array', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;#array#0#0').
name_ref(p_camel_case_146, param, 'camelCase', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;#camelCase#0#1').
name_ref(p_close_102, param, 'close', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#close#0#2').
name_ref(p_close_105, param, 'close', 'Lorg/apache/commons/lang3/StringUtils;.substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#close#0#2').
name_ref(p_default_str_288, param, 'defaultStr', 'Lorg/apache/commons/lang3/StringUtils;.defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#defaultStr#0#1').
name_ref(p_default_str_290, param, 'defaultStr', 'Lorg/apache/commons/lang3/StringUtils;.defaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#defaultStr#0#1').
name_ref(p_end_228, param, 'end', 'Lorg/apache/commons/lang3/StringUtils;.overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;#end#0#3').
name_ref(p_end_82, param, 'end', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;II)Ljava/lang/String;#end#0#2').
name_ref(p_end_index_153, param, 'endIndex', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;#endIndex#0#3').
name_ref(p_end_index_159, param, 'endIndex', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;#endIndex#0#3').
name_ref(p_expected_347, param, 'expected', 'Lorg/apache/commons/lang3/StringUtilsTest;.assertAbbreviateWithOffset(Ljava/lang/String;II)V#expected#0#0').
name_ref(p_ignore_case_313, param, 'ignoreCase', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z#ignoreCase#0#2').
name_ref(p_ignore_case_322, param, 'ignoreCase', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z#ignoreCase#0#2').
name_ref(p_input_20, param, 'input', 'Lorg/apache/commons/lang3/StringUtils;.stripAccents(Ljava/lang/String;)Ljava/lang/String;#input#0#0').
name_ref(p_invalid_chars_71, param, 'invalidChars', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/String;[C)Z#invalidChars#0#1').
name_ref(p_invalid_chars_73, param, 'invalidChars', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/String;Ljava/lang/String;)Z#invalidChars#0#1').
name_ref(p_iterable_164, param, 'iterable', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;C)Ljava/lang/String;#iterable#0#0').
name_ref(p_iterable_166, param, 'iterable', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;Ljava/lang/String;)Ljava/lang/String;#iterable#0#0').
name_ref(p_iterator_160, param, 'iterator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;C)Ljava/lang/String;#iterator#0#0').
name_ref(p_iterator_162, param, 'iterator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;Ljava/lang/String;)Ljava/lang/String;#iterator#0#0').
name_ref(p_len_84, param, 'len', 'Lorg/apache/commons/lang3/StringUtils;.left(Ljava/lang/String;I)Ljava/lang/String;#len#0#1').
name_ref(p_len_86, param, 'len', 'Lorg/apache/commons/lang3/StringUtils;.right(Ljava/lang/String;I)Ljava/lang/String;#len#0#1').
name_ref(p_len_89, param, 'len', 'Lorg/apache/commons/lang3/StringUtils;.mid(Ljava/lang/String;II)Ljava/lang/String;#len#0#2').
name_ref(p_locale_267, param, 'locale', 'Lorg/apache/commons/lang3/StringUtils;.upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;#locale#0#1').
name_ref(p_locale_270, param, 'locale', 'Lorg/apache/commons/lang3/StringUtils;.lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;#locale#0#1').
name_ref(p_max_113, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#max#0#2').
name_ref(p_max_118, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#max#0#2').
name_ref(p_max_123, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#max#0#2').
name_ref(p_max_126, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#max#0#2').
name_ref(p_max_138, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#max#0#2').
name_ref(p_max_141, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#max#0#2').
name_ref(p_max_190, param, 'max', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#max#0#3').
name_ref(p_max_width_295, param, 'maxWidth', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;I)Ljava/lang/String;#maxWidth#0#1').
name_ref(p_max_width_298, param, 'maxWidth', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;II)Ljava/lang/String;#maxWidth#0#2').
name_ref(p_max_width_349, param, 'maxWidth', 'Lorg/apache/commons/lang3/StringUtilsTest;.assertAbbreviateWithOffset(Ljava/lang/String;II)V#maxWidth#0#2').
name_ref(p_name_338, param, 'name', 'Lorg/apache/commons/lang3/StringUtilsTest;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_no_match_343, param, 'noMatch', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplit(CLjava/lang/String;C)V#noMatch#0#2').
name_ref(p_no_match_346, param, 'noMatch', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplitPreserveAllTokens(CLjava/lang/String;C)V#noMatch#0#2').
name_ref(p_offset_297, param, 'offset', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;II)Ljava/lang/String;#offset#0#1').
name_ref(p_offset_348, param, 'offset', 'Lorg/apache/commons/lang3/StringUtilsTest;.assertAbbreviateWithOffset(Ljava/lang/String;II)V#offset#0#1').
name_ref(p_open_101, param, 'open', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#open#0#1').
name_ref(p_open_104, param, 'open', 'Lorg/apache/commons/lang3/StringUtils;.substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#open#0#1').
name_ref(p_ordinal_34, param, 'ordinal', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;I)I#ordinal#0#2').
name_ref(p_overlay_226, param, 'overlay', 'Lorg/apache/commons/lang3/StringUtils;.overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;#overlay#0#1').
name_ref(p_pad_char_239, param, 'padChar', 'Lorg/apache/commons/lang3/StringUtils;.padding(IC)Ljava/lang/String;|Ljava/lang/IndexOutOfBoundsException;#padChar#0#1').
name_ref(p_pad_char_244, param, 'padChar', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;IC)Ljava/lang/String;#padChar#0#2').
name_ref(p_pad_char_252, param, 'padChar', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;IC)Ljava/lang/String;#padChar#0#2').
name_ref(p_pad_char_261, param, 'padChar', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;IC)Ljava/lang/String;#padChar#0#2').
name_ref(p_pad_str_247, param, 'padStr', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#padStr#0#2').
name_ref(p_pad_str_255, param, 'padStr', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#padStr#0#2').
name_ref(p_pad_str_264, param, 'padStr', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#padStr#0#2').
name_ref(p_pos_88, param, 'pos', 'Lorg/apache/commons/lang3/StringUtils;.mid(Ljava/lang/String;II)Ljava/lang/String;#pos#0#1').
name_ref(p_prefix_308, param, 'prefix', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/String;Ljava/lang/String;)Z#prefix#0#1').
name_ref(p_prefix_310, param, 'prefix', 'Lorg/apache/commons/lang3/StringUtils;.startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z#prefix#0#1').
name_ref(p_prefix_312, param, 'prefix', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z#prefix#0#1').
name_ref(p_preserve_all_tokens_127, param, 'preserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#preserveAllTokens#0#3').
name_ref(p_preserve_all_tokens_133, param, 'preserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;#preserveAllTokens#0#2').
name_ref(p_preserve_all_tokens_142, param, 'preserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#preserveAllTokens#0#3').
name_ref(p_remove_170, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#remove#0#1').
name_ref(p_remove_172, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#remove#0#1').
name_ref(p_remove_174, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#remove#0#1').
name_ref(p_remove_176, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#remove#0#1').
name_ref(p_remove_178, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#remove#0#1').
name_ref(p_remove_180, param, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;C)Ljava/lang/String;#remove#0#1').
name_ref(p_repeat_200, param, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#repeat#0#3').
name_ref(p_repeat_234, param, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;I)Ljava/lang/String;#repeat#0#1').
name_ref(p_repeat_237, param, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#repeat#0#2').
name_ref(p_repeat_238, param, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.padding(IC)Ljava/lang/String;|Ljava/lang/IndexOutOfBoundsException;#repeat#0#0').
name_ref(p_replace_char_221, param, 'replaceChar', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;CC)Ljava/lang/String;#replaceChar#0#2').
name_ref(p_replace_chars_224, param, 'replaceChars', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#replaceChars#0#2').
name_ref(p_replacement_183, param, 'replacement', 'Lorg/apache/commons/lang3/StringUtils;.replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#replacement#0#2').
name_ref(p_replacement_186, param, 'replacement', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#replacement#0#2').
name_ref(p_replacement_189, param, 'replacement', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#replacement#0#2').
name_ref(p_replacement_list_193, param, 'replacementList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#replacementList#0#2').
name_ref(p_replacement_list_196, param, 'replacementList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#replacementList#0#2').
name_ref(p_replacement_list_199, param, 'replacementList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#replacementList#0#2').
name_ref(p_s_305, param, 's', 'Lorg/apache/commons/lang3/StringUtils;.getLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I#s#0#0').
name_ref(p_search_char_220, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;CC)Ljava/lang/String;#searchChar#0#1').
name_ref(p_search_char_26, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;C)I#searchChar#0#1').
name_ref(p_search_char_28, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;CI)I#searchChar#0#1').
name_ref(p_search_char_39, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;C)I#searchChar#0#1').
name_ref(p_search_char_41, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;CI)I#searchChar#0#1').
name_ref(p_search_char_49, param, 'searchChar', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/String;C)Z#searchChar#0#1').
name_ref(p_search_chars_223, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#searchChars#0#1').
name_ref(p_search_chars_55, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/String;[C)I#searchChars#0#1').
name_ref(p_search_chars_57, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/String;Ljava/lang/String;)I#searchChars#0#1').
name_ref(p_search_chars_59, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/String;[C)Z#searchChars#0#1').
name_ref(p_search_chars_61, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/String;Ljava/lang/String;)Z#searchChars#0#1').
name_ref(p_search_chars_63, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/String;[C)I#searchChars#0#1').
name_ref(p_search_chars_65, param, 'searchChars', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/String;Ljava/lang/String;)I#searchChars#0#1').
name_ref(p_search_list_192, param, 'searchList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#searchList#0#1').
name_ref(p_search_list_195, param, 'searchList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#searchList#0#1').
name_ref(p_search_list_198, param, 'searchList', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#searchList#0#1').
name_ref(p_search_str_31, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;Ljava/lang/String;)I#searchStr#0#1').
name_ref(p_search_str_33, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;I)I#searchStr#0#1').
name_ref(p_search_str_36, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;Ljava/lang/String;I)I#searchStr#0#1').
name_ref(p_search_str_44, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I#searchStr#0#1').
name_ref(p_search_str_46, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I#searchStr#0#1').
name_ref(p_search_str_51, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/String;Ljava/lang/String;)Z#searchStr#0#1').
name_ref(p_search_str_53, param, 'searchStr', 'Lorg/apache/commons/lang3/StringUtils;.containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z#searchStr#0#1').
name_ref(p_search_string_182, param, 'searchString', 'Lorg/apache/commons/lang3/StringUtils;.replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#searchString#0#1').
name_ref(p_search_string_185, param, 'searchString', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#searchString#0#1').
name_ref(p_search_string_188, param, 'searchString', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#searchString#0#1').
name_ref(p_search_strings_315, param, 'searchStrings', 'Lorg/apache/commons/lang3/StringUtils;.startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z#searchStrings#0#1').
name_ref(p_search_strs_75, param, 'searchStrs', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/String;[Ljava/lang/String;)I#searchStrs#0#1').
name_ref(p_search_strs_77, param, 'searchStrs', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfAny(Ljava/lang/String;[Ljava/lang/String;)I#searchStrs#0#1').
name_ref(p_sep_str_342, param, 'sepStr', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplit(CLjava/lang/String;C)V#sepStr#0#1').
name_ref(p_sep_str_345, param, 'sepStr', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplitPreserveAllTokens(CLjava/lang/String;C)V#sepStr#0#1').
name_ref(p_separator_115, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#separator#0#1').
name_ref(p_separator_117, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#separator#0#1').
name_ref(p_separator_120, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#separator#0#1').
name_ref(p_separator_122, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#separator#0#1').
name_ref(p_separator_125, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#separator#0#1').
name_ref(p_separator_149, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;C)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_151, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_155, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_157, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_161, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;C)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_163, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_165, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;C)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_167, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_231, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_236, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_341, param, 'separator', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplit(CLjava/lang/String;C)V#separator#0#0').
name_ref(p_separator_344, param, 'separator', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplitPreserveAllTokens(CLjava/lang/String;C)V#separator#0#0').
name_ref(p_separator_91, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_93, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_95, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_97, param, 'separator', 'Lorg/apache/commons/lang3/StringUtils;.substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_char_108, param, 'separatorChar', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;C)[Ljava/lang/String;#separatorChar#0#1').
name_ref(p_separator_char_130, param, 'separatorChar', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;#separatorChar#0#1').
name_ref(p_separator_char_132, param, 'separatorChar', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;#separatorChar#0#1').
name_ref(p_separator_char_293, param, 'separatorChar', 'Lorg/apache/commons/lang3/StringUtils;.reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;#separatorChar#0#1').
name_ref(p_separator_chars_110, param, 'separatorChars', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#separatorChars#0#1').
name_ref(p_separator_chars_112, param, 'separatorChars', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#separatorChars#0#1').
name_ref(p_separator_chars_135, param, 'separatorChars', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#separatorChars#0#1').
name_ref(p_separator_chars_137, param, 'separatorChars', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#separatorChars#0#1').
name_ref(p_separator_chars_140, param, 'separatorChars', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#separatorChars#0#1').
name_ref(p_size_241, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;I)Ljava/lang/String;#size#0#1').
name_ref(p_size_243, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;IC)Ljava/lang/String;#size#0#1').
name_ref(p_size_246, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#size#0#1').
name_ref(p_size_249, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;I)Ljava/lang/String;#size#0#1').
name_ref(p_size_251, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;IC)Ljava/lang/String;#size#0#1').
name_ref(p_size_254, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#size#0#1').
name_ref(p_size_258, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;I)Ljava/lang/String;#size#0#1').
name_ref(p_size_260, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;IC)Ljava/lang/String;#size#0#1').
name_ref(p_size_263, param, 'size', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#size#0#1').
name_ref(p_start_227, param, 'start', 'Lorg/apache/commons/lang3/StringUtils;.overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;#start#0#2').
name_ref(p_start_79, param, 'start', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;I)Ljava/lang/String;#start#0#1').
name_ref(p_start_81, param, 'start', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;II)Ljava/lang/String;#start#0#1').
name_ref(p_start_index_152, param, 'startIndex', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;#startIndex#0#2').
name_ref(p_start_index_158, param, 'startIndex', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;#startIndex#0#2').
name_ref(p_start_pos_29, param, 'startPos', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;CI)I#startPos#0#2').
name_ref(p_start_pos_37, param, 'startPos', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;Ljava/lang/String;I)I#startPos#0#2').
name_ref(p_start_pos_42, param, 'startPos', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;CI)I#startPos#0#2').
name_ref(p_start_pos_47, param, 'startPos', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I#startPos#0#2').
name_ref(p_str_1, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isEmpty(Ljava/lang/CharSequence;)Z#str#0#0').
name_ref(p_str_10, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.stripToEmpty(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_100, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_103, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_106, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_107, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;C)[Ljava/lang/String;#str#0#0').
name_ref(p_str_109, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_11, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_111, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#str#0#0').
name_ref(p_str_114, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_116, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#str#0#0').
name_ref(p_str_119, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_121, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#str#0#0').
name_ref(p_str_124, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#str#0#0').
name_ref(p_str_128, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_129, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;#str#0#0').
name_ref(p_str_13, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_131, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;#str#0#0').
name_ref(p_str_134, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_136, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;#str#0#0').
name_ref(p_str_139, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;#str#0#0').
name_ref(p_str_143, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_144, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;#str#0#0').
name_ref(p_str_145, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;#str#0#0').
name_ref(p_str_15, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_168, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_169, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_171, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_173, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_175, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_177, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_179, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;C)Ljava/lang/String;#str#0#0').
name_ref(p_str_1_21, param, 'str1', 'Lorg/apache/commons/lang3/StringUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z#str1#0#0').
name_ref(p_str_1_23, param, 'str1', 'Lorg/apache/commons/lang3/StringUtils;.equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z#str1#0#0').
name_ref(p_str_1_299, param, 'str1', 'Lorg/apache/commons/lang3/StringUtils;.difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str1#0#0').
name_ref(p_str_1_301, param, 'str1', 'Lorg/apache/commons/lang3/StringUtils;.indexOfDifference(Ljava/lang/String;Ljava/lang/String;)I#str1#0#0').
name_ref(p_str_2, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isNotEmpty(Ljava/lang/CharSequence;)Z#str#0#0').
name_ref(p_str_219, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;CC)Ljava/lang/String;#str#0#0').
name_ref(p_str_222, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_225, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;#str#0#0').
name_ref(p_str_229, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.chomp(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_230, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_232, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.chop(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_233, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_235, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_240, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_242, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;IC)Ljava/lang/String;#str#0#0').
name_ref(p_str_245, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_248, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_25, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;C)I#str#0#0').
name_ref(p_str_250, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;IC)Ljava/lang/String;#str#0#0').
name_ref(p_str_253, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_256, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.length(Ljava/lang/String;)I#str#0#0').
name_ref(p_str_257, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_259, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;IC)Ljava/lang/String;#str#0#0').
name_ref(p_str_262, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_265, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.upperCase(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_266, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;#str#0#0').
name_ref(p_str_268, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lowerCase(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_269, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;#str#0#0').
name_ref(p_str_27, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;CI)I#str#0#0').
name_ref(p_str_271, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.capitalize(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_272, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.uncapitalize(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_273, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.swapCase(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_274, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.countMatches(Ljava/lang/String;Ljava/lang/String;)I#str#0#0').
name_ref(p_str_276, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isAlpha(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_277, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isAlphaSpace(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_278, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isAlphanumeric(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_279, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isAlphanumericSpace(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_280, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isAsciiPrintable(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_281, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isNumeric(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_282, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isNumericSpace(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_283, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isWhitespace(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_284, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isAllLowerCase(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_285, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isAllUpperCase(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_286, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.defaultString(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_287, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_289, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.defaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_291, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.reverse(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_292, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;#str#0#0').
name_ref(p_str_294, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_296, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;II)Ljava/lang/String;#str#0#0').
name_ref(p_str_2_22, param, 'str2', 'Lorg/apache/commons/lang3/StringUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z#str2#0#1').
name_ref(p_str_2_24, param, 'str2', 'Lorg/apache/commons/lang3/StringUtils;.equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z#str2#0#1').
name_ref(p_str_2_300, param, 'str2', 'Lorg/apache/commons/lang3/StringUtils;.difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str2#0#1').
name_ref(p_str_2_302, param, 'str2', 'Lorg/apache/commons/lang3/StringUtils;.indexOfDifference(Ljava/lang/String;Ljava/lang/String;)I#str2#0#1').
name_ref(p_str_3, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isBlank(Ljava/lang/CharSequence;)Z#str#0#0').
name_ref(p_str_30, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;Ljava/lang/String;)I#str#0#0').
name_ref(p_str_307, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_309, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_311, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z#str#0#0').
name_ref(p_str_316, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_318, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_32, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;I)I#str#0#0').
name_ref(p_str_320, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z#str#0#0').
name_ref(p_str_35, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;Ljava/lang/String;I)I#str#0#0').
name_ref(p_str_38, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;C)I#str#0#0').
name_ref(p_str_4, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.isNotBlank(Ljava/lang/CharSequence;)Z#str#0#0').
name_ref(p_str_40, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;CI)I#str#0#0').
name_ref(p_str_43, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I#str#0#0').
name_ref(p_str_45, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I#str#0#0').
name_ref(p_str_48, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/String;C)Z#str#0#0').
name_ref(p_str_5, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.trim(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_50, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_52, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_54, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/String;[C)I#str#0#0').
name_ref(p_str_56, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/String;Ljava/lang/String;)I#str#0#0').
name_ref(p_str_58, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/String;[C)Z#str#0#0').
name_ref(p_str_6, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.trimToNull(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_60, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_62, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/String;[C)I#str#0#0').
name_ref(p_str_64, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/String;Ljava/lang/String;)I#str#0#0').
name_ref(p_str_66, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/String;[C)Z#str#0#0').
name_ref(p_str_68, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_7, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.trimToEmpty(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_70, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/String;[C)Z#str#0#0').
name_ref(p_str_72, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_74, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/String;[Ljava/lang/String;)I#str#0#0').
name_ref(p_str_76, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfAny(Ljava/lang/String;[Ljava/lang/String;)I#str#0#0').
name_ref(p_str_78, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_8, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.strip(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_80, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;II)Ljava/lang/String;#str#0#0').
name_ref(p_str_83, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.left(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_85, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.right(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_87, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.mid(Ljava/lang/String;II)Ljava/lang/String;#str#0#0').
name_ref(p_str_9, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.stripToNull(Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_90, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_92, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_94, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_96, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_str_98, param, 'str', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#str#0#0').
name_ref(p_string_314, param, 'string', 'Lorg/apache/commons/lang3/StringUtils;.startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z#string#0#0').
name_ref(p_strip_chars_12, param, 'stripChars', 'Lorg/apache/commons/lang3/StringUtils;.strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#stripChars#0#1').
name_ref(p_strip_chars_14, param, 'stripChars', 'Lorg/apache/commons/lang3/StringUtils;.stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#stripChars#0#1').
name_ref(p_strip_chars_16, param, 'stripChars', 'Lorg/apache/commons/lang3/StringUtils;.stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#stripChars#0#1').
name_ref(p_strip_chars_19, param, 'stripChars', 'Lorg/apache/commons/lang3/StringUtils;.stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#stripChars#0#1').
name_ref(p_strs_17, param, 'strs', 'Lorg/apache/commons/lang3/StringUtils;.stripAll([Ljava/lang/String;)[Ljava/lang/String;#strs#0#0').
name_ref(p_strs_18, param, 'strs', 'Lorg/apache/commons/lang3/StringUtils;.stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;#strs#0#0').
name_ref(p_strs_303, param, 'strs', 'Lorg/apache/commons/lang3/StringUtils;.indexOfDifference([Ljava/lang/String;)I#strs#0#0').
name_ref(p_strs_304, param, 'strs', 'Lorg/apache/commons/lang3/StringUtils;.getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;#strs#0#0').
name_ref(p_sub_275, param, 'sub', 'Lorg/apache/commons/lang3/StringUtils;.countMatches(Ljava/lang/String;Ljava/lang/String;)I#sub#0#1').
name_ref(p_suffix_317, param, 'suffix', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/String;Ljava/lang/String;)Z#suffix#0#1').
name_ref(p_suffix_319, param, 'suffix', 'Lorg/apache/commons/lang3/StringUtils;.endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z#suffix#0#1').
name_ref(p_suffix_321, param, 'suffix', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z#suffix#0#1').
name_ref(p_t_306, param, 't', 'Lorg/apache/commons/lang3/StringUtils;.getLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I#t#0#1').
name_ref(p_tag_99, param, 'tag', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#tag#0#1').
name_ref(p_text_181, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#text#0#0').
name_ref(p_text_184, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#text#0#0').
name_ref(p_text_187, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;#text#0#0').
name_ref(p_text_191, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#text#0#0').
name_ref(p_text_194, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;#text#0#0').
name_ref(p_text_197, param, 'text', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#text#0#0').
name_ref(p_time_to_live_201, param, 'timeToLive', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#timeToLive#0#4').
name_ref(p_valid_67, param, 'valid', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/String;[C)Z#valid#0#1').
name_ref(p_valid_chars_69, param, 'validChars', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/String;Ljava/lang/String;)Z#validChars#0#1').
name_ref(f_array_list_333, field, 'ARRAY_LIST', 'Lorg/apache/commons/lang3/StringUtilsTest;.ARRAY_LIST)[Ljava/lang/String;').
name_ref(f_empty_array_list_334, field, 'EMPTY_ARRAY_LIST', 'Lorg/apache/commons/lang3/StringUtilsTest;.EMPTY_ARRAY_LIST)[Ljava/lang/String;').
name_ref(f_mixed_array_list_336, field, 'MIXED_ARRAY_LIST', 'Lorg/apache/commons/lang3/StringUtilsTest;.MIXED_ARRAY_LIST)[Ljava/lang/String;').
name_ref(f_mixed_type_list_337, field, 'MIXED_TYPE_LIST', 'Lorg/apache/commons/lang3/StringUtilsTest;.MIXED_TYPE_LIST)[Ljava/lang/Object;').
name_ref(f_non_trimmable_332, field, 'NON_TRIMMABLE', 'Lorg/apache/commons/lang3/StringUtilsTest;.NON_TRIMMABLE)Ljava/lang/String;').
name_ref(f_non_whitespace_330, field, 'NON_WHITESPACE', 'Lorg/apache/commons/lang3/StringUtilsTest;.NON_WHITESPACE)Ljava/lang/String;').
name_ref(f_null_array_list_335, field, 'NULL_ARRAY_LIST', 'Lorg/apache/commons/lang3/StringUtilsTest;.NULL_ARRAY_LIST)[Ljava/lang/String;').
name_ref(f_trimmable_331, field, 'TRIMMABLE', 'Lorg/apache/commons/lang3/StringUtilsTest;.TRIMMABLE)Ljava/lang/String;').
name_ref(f_whitespace_329, field, 'WHITESPACE', 'Lorg/apache/commons/lang3/StringUtilsTest;.WHITESPACE)Ljava/lang/String;').
name_ref(m_abbreviate_147, method, 'abbreviate', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_abbreviate_148, method, 'abbreviate', 'Lorg/apache/commons/lang3/StringUtils;.abbreviate(Ljava/lang/String;II)Ljava/lang/String;').
name_ref(m_append_100, method, 'append', 'Ljava/lang/StringBuilder;.append(C)Ljava/lang/StringBuilder;').
name_ref(m_append_102, method, 'append', 'Ljava/lang/StringBuilder;.append(Ljava/lang/String;)Ljava/lang/StringBuilder;').
name_ref(m_assert_abbreviate_with_offset_230, method, 'assertAbbreviateWithOffset', 'Lorg/apache/commons/lang3/StringUtilsTest;.assertAbbreviateWithOffset(Ljava/lang/String;II)V').
name_ref(m_assert_equals_204, method, 'assertEquals', 'Ljunit/framework/TestCase;.assertEquals(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_assert_null_203, method, 'assertNull', 'Ljunit/framework/TestCase;.assertNull(Ljava/lang/Object;)V').
name_ref(m_capitalize_128, method, 'capitalize', 'Lorg/apache/commons/lang3/StringUtils;.capitalize(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_center_121, method, 'center', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_center_122, method, 'center', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;IC)Ljava/lang/String;').
name_ref(m_center_123, method, 'center', 'Lorg/apache/commons/lang3/StringUtils;.center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;').
name_ref(m_char_at_101, method, 'charAt', 'Ljava/lang/String;.charAt(I)C').
name_ref(m_chomp_108, method, 'chomp', 'Lorg/apache/commons/lang3/StringUtils;.chomp(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_chomp_109, method, 'chomp', 'Lorg/apache/commons/lang3/StringUtils;.chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_chop_110, method, 'chop', 'Lorg/apache/commons/lang3/StringUtils;.chop(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_contains_29, method, 'contains', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/String;C)Z').
name_ref(m_contains_30, method, 'contains', 'Lorg/apache/commons/lang3/StringUtils;.contains(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_contains_any_34, method, 'containsAny', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/String;[C)Z').
name_ref(m_contains_any_35, method, 'containsAny', 'Lorg/apache/commons/lang3/StringUtils;.containsAny(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_contains_ignore_case_31, method, 'containsIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_contains_none_40, method, 'containsNone', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/String;[C)Z').
name_ref(m_contains_none_41, method, 'containsNone', 'Lorg/apache/commons/lang3/StringUtils;.containsNone(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_contains_only_38, method, 'containsOnly', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/String;[C)Z').
name_ref(m_contains_only_39, method, 'containsOnly', 'Lorg/apache/commons/lang3/StringUtils;.containsOnly(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_count_matches_131, method, 'countMatches', 'Lorg/apache/commons/lang3/StringUtils;.countMatches(Ljava/lang/String;Ljava/lang/String;)I').
name_ref(m_default_if_empty_144, method, 'defaultIfEmpty', 'Lorg/apache/commons/lang3/StringUtils;.defaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_default_string_142, method, 'defaultString', 'Lorg/apache/commons/lang3/StringUtils;.defaultString(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_default_string_143, method, 'defaultString', 'Lorg/apache/commons/lang3/StringUtils;.defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_delete_whitespace_83, method, 'deleteWhitespace', 'Lorg/apache/commons/lang3/StringUtils;.deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_difference_149, method, 'difference', 'Lorg/apache/commons/lang3/StringUtils;.difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_ends_with_158, method, 'endsWith', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_ends_with_160, method, 'endsWith', 'Lorg/apache/commons/lang3/StringUtils;.endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z').
name_ref(m_ends_with_ignore_case_159, method, 'endsWithIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_18, method, 'equals', 'Lorg/apache/commons/lang3/StringUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_ignore_case_19, method, 'equalsIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_get_common_prefix_152, method, 'getCommonPrefix', 'Lorg/apache/commons/lang3/StringUtils;.getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_levenshtein_distance_153, method, 'getLevenshteinDistance', 'Lorg/apache/commons/lang3/StringUtils;.getLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I').
name_ref(m_index_of_103, method, 'indexOf', 'Ljava/lang/String;.indexOf(Ljava/lang/String;I)I').
name_ref(m_index_of_20, method, 'indexOf', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;C)I').
name_ref(m_index_of_21, method, 'indexOf', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;CI)I').
name_ref(m_index_of_22, method, 'indexOf', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;Ljava/lang/String;)I').
name_ref(m_index_of_24, method, 'indexOf', 'Lorg/apache/commons/lang3/StringUtils;.indexOf(Ljava/lang/String;Ljava/lang/String;I)I').
name_ref(m_index_of_97, method, 'indexOf', 'Ljava/lang/String;.indexOf(Ljava/lang/String;)I').
name_ref(m_index_of_any_32, method, 'indexOfAny', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/String;[C)I').
name_ref(m_index_of_any_33, method, 'indexOfAny', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/String;Ljava/lang/String;)I').
name_ref(m_index_of_any_42, method, 'indexOfAny', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAny(Ljava/lang/String;[Ljava/lang/String;)I').
name_ref(m_index_of_any_but_36, method, 'indexOfAnyBut', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/String;[C)I').
name_ref(m_index_of_any_but_37, method, 'indexOfAnyBut', 'Lorg/apache/commons/lang3/StringUtils;.indexOfAnyBut(Ljava/lang/String;Ljava/lang/String;)I').
name_ref(m_index_of_difference_150, method, 'indexOfDifference', 'Lorg/apache/commons/lang3/StringUtils;.indexOfDifference(Ljava/lang/String;Ljava/lang/String;)I').
name_ref(m_index_of_difference_151, method, 'indexOfDifference', 'Lorg/apache/commons/lang3/StringUtils;.indexOfDifference([Ljava/lang/String;)I').
name_ref(m_inner_test_split_188, method, 'innerTestSplit', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplit(CLjava/lang/String;C)V').
name_ref(m_inner_test_split_preserve_all_tokens_195, method, 'innerTestSplitPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtilsTest;.innerTestSplitPreserveAllTokens(CLjava/lang/String;C)V').
name_ref(m_is_all_lower_case_140, method, 'isAllLowerCase', 'Lorg/apache/commons/lang3/StringUtils;.isAllLowerCase(Ljava/lang/String;)Z').
name_ref(m_is_all_upper_case_141, method, 'isAllUpperCase', 'Lorg/apache/commons/lang3/StringUtils;.isAllUpperCase(Ljava/lang/String;)Z').
name_ref(m_is_alpha_132, method, 'isAlpha', 'Lorg/apache/commons/lang3/StringUtils;.isAlpha(Ljava/lang/String;)Z').
name_ref(m_is_alpha_space_133, method, 'isAlphaSpace', 'Lorg/apache/commons/lang3/StringUtils;.isAlphaSpace(Ljava/lang/String;)Z').
name_ref(m_is_alphanumeric_134, method, 'isAlphanumeric', 'Lorg/apache/commons/lang3/StringUtils;.isAlphanumeric(Ljava/lang/String;)Z').
name_ref(m_is_alphanumeric_space_135, method, 'isAlphanumericSpace', 'Lorg/apache/commons/lang3/StringUtils;.isAlphanumericSpace(Ljava/lang/String;)Z').
name_ref(m_is_ascii_printable_136, method, 'isAsciiPrintable', 'Lorg/apache/commons/lang3/StringUtils;.isAsciiPrintable(Ljava/lang/String;)Z').
name_ref(m_is_blank_4, method, 'isBlank', 'Lorg/apache/commons/lang3/StringUtils;.isBlank(Ljava/lang/CharSequence;)Z').
name_ref(m_is_empty_2, method, 'isEmpty', 'Lorg/apache/commons/lang3/StringUtils;.isEmpty(Ljava/lang/CharSequence;)Z').
name_ref(m_is_not_blank_5, method, 'isNotBlank', 'Lorg/apache/commons/lang3/StringUtils;.isNotBlank(Ljava/lang/CharSequence;)Z').
name_ref(m_is_not_empty_3, method, 'isNotEmpty', 'Lorg/apache/commons/lang3/StringUtils;.isNotEmpty(Ljava/lang/CharSequence;)Z').
name_ref(m_is_numeric_137, method, 'isNumeric', 'Lorg/apache/commons/lang3/StringUtils;.isNumeric(Ljava/lang/String;)Z').
name_ref(m_is_numeric_space_138, method, 'isNumericSpace', 'Lorg/apache/commons/lang3/StringUtils;.isNumericSpace(Ljava/lang/String;)Z').
name_ref(m_is_whitespace_139, method, 'isWhitespace', 'Lorg/apache/commons/lang3/StringUtils;.isWhitespace(Ljava/lang/String;)Z').
name_ref(m_is_whitespace_161, method, 'isWhitespace', 'Ljava/lang/Character;.isWhitespace(C)Z').
name_ref(m_join_74, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;)Ljava/lang/String;').
name_ref(m_join_75, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;C)Ljava/lang/String;').
name_ref(m_join_76, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;CII)Ljava/lang/String;').
name_ref(m_join_77, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_join_78, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;').
name_ref(m_join_79, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;C)Ljava/lang/String;').
name_ref(m_join_80, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/util/Iterator<*>;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_join_81, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;C)Ljava/lang/String;').
name_ref(m_join_82, method, 'join', 'Lorg/apache/commons/lang3/StringUtils;.join(Ljava/lang/Iterable<*>;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_last_index_of_25, method, 'lastIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;C)I').
name_ref(m_last_index_of_26, method, 'lastIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;CI)I').
name_ref(m_last_index_of_27, method, 'lastIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I').
name_ref(m_last_index_of_28, method, 'lastIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I').
name_ref(m_last_index_of_any_43, method, 'lastIndexOfAny', 'Lorg/apache/commons/lang3/StringUtils;.lastIndexOfAny(Ljava/lang/String;[Ljava/lang/String;)I').
name_ref(m_left_46, method, 'left', 'Lorg/apache/commons/lang3/StringUtils;.left(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_left_pad_117, method, 'leftPad', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_left_pad_118, method, 'leftPad', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;IC)Ljava/lang/String;').
name_ref(m_left_pad_119, method, 'leftPad', 'Lorg/apache/commons/lang3/StringUtils;.leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;').
name_ref(m_length_120, method, 'length', 'Lorg/apache/commons/lang3/StringUtils;.length(Ljava/lang/String;)I').
name_ref(m_length_96, method, 'length', 'Ljava/lang/String;.length()I').
name_ref(m_long_164, method, 'Long', 'Ljava/lang/Long;.(J)V').
name_ref(m_lower_case_126, method, 'lowerCase', 'Lorg/apache/commons/lang3/StringUtils;.lowerCase(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_lower_case_127, method, 'lowerCase', 'Lorg/apache/commons/lang3/StringUtils;.lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;').
name_ref(m_main_167, method, 'main', 'Lorg/apache/commons/lang3/StringUtilsTest;.main([Ljava/lang/String;)V').
name_ref(m_mid_48, method, 'mid', 'Lorg/apache/commons/lang3/StringUtils;.mid(Ljava/lang/String;II)Ljava/lang/String;').
name_ref(m_min_98, method, 'min', 'Ljava/lang/Math;.min(II)I').
name_ref(m_ordinal_index_of_23, method, 'ordinalIndexOf', 'Lorg/apache/commons/lang3/StringUtils;.ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;I)I').
name_ref(m_overlay_107, method, 'overlay', 'Lorg/apache/commons/lang3/StringUtils;.overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;').
name_ref(m_padding_113, method, 'padding', 'Lorg/apache/commons/lang3/StringUtils;.padding(IC)Ljava/lang/String;|Ljava/lang/IndexOutOfBoundsException;').
name_ref(m_remove_88, method, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_remove_89, method, 'remove', 'Lorg/apache/commons/lang3/StringUtils;.remove(Ljava/lang/String;C)Ljava/lang/String;').
name_ref(m_remove_end_86, method, 'removeEnd', 'Lorg/apache/commons/lang3/StringUtils;.removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_remove_end_ignore_case_87, method, 'removeEndIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_remove_start_84, method, 'removeStart', 'Lorg/apache/commons/lang3/StringUtils;.removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_remove_start_ignore_case_85, method, 'removeStartIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_repeat_111, method, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_repeat_112, method, 'repeat', 'Lorg/apache/commons/lang3/StringUtils;.repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_replace_91, method, 'replace', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_replace_92, method, 'replace', 'Lorg/apache/commons/lang3/StringUtils;.replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_replace_chars_105, method, 'replaceChars', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;CC)Ljava/lang/String;').
name_ref(m_replace_chars_106, method, 'replaceChars', 'Lorg/apache/commons/lang3/StringUtils;.replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_replace_each_93, method, 'replaceEach', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_replace_each_94, method, 'replaceEach', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;').
name_ref(m_replace_each_repeatedly_95, method, 'replaceEachRepeatedly', 'Lorg/apache/commons/lang3/StringUtils;.replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_replace_once_90, method, 'replaceOnce', 'Lorg/apache/commons/lang3/StringUtils;.replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_reverse_145, method, 'reverse', 'Lorg/apache/commons/lang3/StringUtils;.reverse(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_reverse_delimited_146, method, 'reverseDelimited', 'Lorg/apache/commons/lang3/StringUtils;.reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;').
name_ref(m_right_47, method, 'right', 'Lorg/apache/commons/lang3/StringUtils;.right(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_right_pad_114, method, 'rightPad', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_right_pad_115, method, 'rightPad', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;IC)Ljava/lang/String;').
name_ref(m_right_pad_116, method, 'rightPad', 'Lorg/apache/commons/lang3/StringUtils;.rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;').
name_ref(m_set_name_170, method, 'setName', 'Ljunit/framework/TestSuite;.setName(Ljava/lang/String;)V').
name_ref(m_set_up_171, method, 'setUp', 'Lorg/apache/commons/lang3/StringUtilsTest;.setUp()V|Ljava/lang/Exception;').
name_ref(m_set_up_172, method, 'setUp', 'Ljunit/framework/TestCase;.setUp()V|Ljava/lang/Exception;').
name_ref(m_split_56, method, 'split', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_57, method, 'split', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;C)[Ljava/lang/String;').
name_ref(m_split_58, method, 'split', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_59, method, 'split', 'Lorg/apache/commons/lang3/StringUtils;.split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;').
name_ref(m_split_by_character_type_71, method, 'splitByCharacterType', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_by_character_type_73, method, 'splitByCharacterType', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;').
name_ref(m_split_by_character_type_camel_case_72, method, 'splitByCharacterTypeCamelCase', 'Lorg/apache/commons/lang3/StringUtils;.splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_by_whole_separator_60, method, 'splitByWholeSeparator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_by_whole_separator_61, method, 'splitByWholeSeparator', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;').
name_ref(m_split_by_whole_separator_preserve_all_tokens_62, method, 'splitByWholeSeparatorPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_by_whole_separator_preserve_all_tokens_63, method, 'splitByWholeSeparatorPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;').
name_ref(m_split_by_whole_separator_worker_64, method, 'splitByWholeSeparatorWorker', 'Lorg/apache/commons/lang3/StringUtils;.splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;').
name_ref(m_split_preserve_all_tokens_65, method, 'splitPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_preserve_all_tokens_66, method, 'splitPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;').
name_ref(m_split_preserve_all_tokens_68, method, 'splitPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_split_preserve_all_tokens_69, method, 'splitPreserveAllTokens', 'Lorg/apache/commons/lang3/StringUtils;.splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;').
name_ref(m_split_worker_67, method, 'splitWorker', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;').
name_ref(m_split_worker_70, method, 'splitWorker', 'Lorg/apache/commons/lang3/StringUtils;.splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;').
name_ref(m_starts_with_154, method, 'startsWith', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_starts_with_156, method, 'startsWith', 'Lorg/apache/commons/lang3/StringUtils;.startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z').
name_ref(m_starts_with_any_157, method, 'startsWithAny', 'Lorg/apache/commons/lang3/StringUtils;.startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z').
name_ref(m_starts_with_ignore_case_155, method, 'startsWithIgnoreCase', 'Lorg/apache/commons/lang3/StringUtils;.startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_string_163, method, 'String', 'Ljava/lang/String;.(Ljava/lang/String;)V').
name_ref(m_string_builder_99, method, 'StringBuilder', 'Ljava/lang/StringBuilder;.(I)V').
name_ref(m_string_utils_1, method, 'StringUtils', 'Lorg/apache/commons/lang3/StringUtils;.()V').
name_ref(m_string_utils_test_165, method, 'StringUtilsTest', 'Lorg/apache/commons/lang3/StringUtilsTest;.(Ljava/lang/String;)V').
name_ref(m_strip_12, method, 'strip', 'Lorg/apache/commons/lang3/StringUtils;.strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_9, method, 'strip', 'Lorg/apache/commons/lang3/StringUtils;.strip(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_accents_17, method, 'stripAccents', 'Lorg/apache/commons/lang3/StringUtils;.stripAccents(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_all_15, method, 'stripAll', 'Lorg/apache/commons/lang3/StringUtils;.stripAll([Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_strip_all_16, method, 'stripAll', 'Lorg/apache/commons/lang3/StringUtils;.stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_strip_end_14, method, 'stripEnd', 'Lorg/apache/commons/lang3/StringUtils;.stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_start_13, method, 'stripStart', 'Lorg/apache/commons/lang3/StringUtils;.stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_to_empty_11, method, 'stripToEmpty', 'Lorg/apache/commons/lang3/StringUtils;.stripToEmpty(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_strip_to_null_10, method, 'stripToNull', 'Lorg/apache/commons/lang3/StringUtils;.stripToNull(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_44, method, 'substring', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_substring_45, method, 'substring', 'Lorg/apache/commons/lang3/StringUtils;.substring(Ljava/lang/String;II)Ljava/lang/String;').
name_ref(m_substring_after_50, method, 'substringAfter', 'Lorg/apache/commons/lang3/StringUtils;.substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_after_last_52, method, 'substringAfterLast', 'Lorg/apache/commons/lang3/StringUtils;.substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_before_49, method, 'substringBefore', 'Lorg/apache/commons/lang3/StringUtils;.substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_before_last_51, method, 'substringBeforeLast', 'Lorg/apache/commons/lang3/StringUtils;.substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_between_53, method, 'substringBetween', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substring_between_54, method, 'substringBetween', 'Lorg/apache/commons/lang3/StringUtils;.substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_substrings_between_55, method, 'substringsBetween', 'Lorg/apache/commons/lang3/StringUtils;.substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_suite_168, method, 'suite', 'Lorg/apache/commons/lang3/StringUtilsTest;.suite()Ljunit/framework/Test;').
name_ref(m_swap_case_130, method, 'swapCase', 'Lorg/apache/commons/lang3/StringUtils;.swapCase(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_tear_down_173, method, 'tearDown', 'Lorg/apache/commons/lang3/StringUtilsTest;.tearDown()V|Ljava/lang/Exception;').
name_ref(m_tear_down_174, method, 'tearDown', 'Ljunit/framework/TestCase;.tearDown()V|Ljava/lang/Exception;').
name_ref(m_test_abbreviate__string_int_228, method, 'testAbbreviate_StringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testAbbreviate_StringInt()V').
name_ref(m_test_abbreviate__string_int_int_229, method, 'testAbbreviate_StringIntInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testAbbreviate_StringIntInt()V').
name_ref(m_test_case_166, method, 'TestCase', 'Ljunit/framework/TestCase;.(Ljava/lang/String;)V').
name_ref(m_test_case_functions_176, method, 'testCaseFunctions', 'Lorg/apache/commons/lang3/StringUtilsTest;.testCaseFunctions()V').
name_ref(m_test_center__string_int_220, method, 'testCenter_StringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testCenter_StringInt()V').
name_ref(m_test_center__string_int_char_221, method, 'testCenter_StringIntChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testCenter_StringIntChar()V').
name_ref(m_test_center__string_int_string_222, method, 'testCenter_StringIntString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testCenter_StringIntString()V').
name_ref(m_test_chomp_212, method, 'testChomp', 'Lorg/apache/commons/lang3/StringUtilsTest;.testChomp()V').
name_ref(m_test_chop_211, method, 'testChop', 'Lorg/apache/commons/lang3/StringUtilsTest;.testChop()V').
name_ref(m_test_constructor_175, method, 'testConstructor', 'Lorg/apache/commons/lang3/StringUtilsTest;.testConstructor()V').
name_ref(m_test_default__string_225, method, 'testDefault_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefault_String()V').
name_ref(m_test_default__string_string_226, method, 'testDefault_StringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefault_StringString()V').
name_ref(m_test_default_if_empty__string_string_227, method, 'testDefaultIfEmpty_StringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDefaultIfEmpty_StringString()V').
name_ref(m_test_delete_whitespace__string_198, method, 'testDeleteWhitespace_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDeleteWhitespace_String()V').
name_ref(m_test_difference__string_string_231, method, 'testDifference_StringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDifference_StringString()V').
name_ref(m_test_difference_at__string_array_243, method, 'testDifferenceAt_StringArray', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDifferenceAt_StringArray()V').
name_ref(m_test_difference_at__string_string_232, method, 'testDifferenceAt_StringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testDifferenceAt_StringString()V').
name_ref(m_test_empty_234, method, 'testEMPTY', 'Lorg/apache/commons/lang3/StringUtilsTest;.testEMPTY()V').
name_ref(m_test_get_common_prefix__string_array_244, method, 'testGetCommonPrefix_StringArray', 'Lorg/apache/commons/lang3/StringUtilsTest;.testGetCommonPrefix_StringArray()V').
name_ref(m_test_get_levenshtein_distance__string_string_233, method, 'testGetLevenshteinDistance_StringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testGetLevenshteinDistance_StringString()V').
name_ref(m_test_is_all_lower_case_235, method, 'testIsAllLowerCase', 'Lorg/apache/commons/lang3/StringUtilsTest;.testIsAllLowerCase()V').
name_ref(m_test_is_all_upper_case_236, method, 'testIsAllUpperCase', 'Lorg/apache/commons/lang3/StringUtilsTest;.testIsAllUpperCase()V').
name_ref(m_test_join__array_char_179, method, 'testJoin_ArrayChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_ArrayChar()V').
name_ref(m_test_join__array_string_180, method, 'testJoin_ArrayString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_ArrayString()V').
name_ref(m_test_join__iterable_char_183, method, 'testJoin_IterableChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_IterableChar()V').
name_ref(m_test_join__iterable_string_184, method, 'testJoin_IterableString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_IterableString()V').
name_ref(m_test_join__iterator_char_181, method, 'testJoin_IteratorChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_IteratorChar()V').
name_ref(m_test_join__iterator_string_182, method, 'testJoin_IteratorString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_IteratorString()V').
name_ref(m_test_join__objectarray_178, method, 'testJoin_Objectarray', 'Lorg/apache/commons/lang3/StringUtilsTest;.testJoin_Objectarray()V').
name_ref(m_test_left_pad__string_int_216, method, 'testLeftPad_StringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLeftPad_StringInt()V').
name_ref(m_test_left_pad__string_int_char_217, method, 'testLeftPad_StringIntChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLeftPad_StringIntChar()V').
name_ref(m_test_left_pad__string_int_string_218, method, 'testLeftPad_StringIntString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLeftPad_StringIntString()V').
name_ref(m_test_length_219, method, 'testLength', 'Lorg/apache/commons/lang3/StringUtilsTest;.testLength()V').
name_ref(m_test_overlay__string_string_int_int_208, method, 'testOverlay_StringStringIntInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testOverlay_StringStringIntInt()V').
name_ref(m_test_remove__string_241, method, 'testRemove_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemove_String()V').
name_ref(m_test_remove_char_242, method, 'testRemove_char', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemove_char()V').
name_ref(m_test_remove_end_239, method, 'testRemoveEnd', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemoveEnd()V').
name_ref(m_test_remove_end_ignore_case_240, method, 'testRemoveEndIgnoreCase', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemoveEndIgnoreCase()V').
name_ref(m_test_remove_start_237, method, 'testRemoveStart', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemoveStart()V').
name_ref(m_test_remove_start_ignore_case_238, method, 'testRemoveStartIgnoreCase', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRemoveStartIgnoreCase()V').
name_ref(m_test_repeat__string_int_209, method, 'testRepeat_StringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRepeat_StringInt()V').
name_ref(m_test_repeat__string_string_int_210, method, 'testRepeat_StringStringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRepeat_StringStringInt()V').
name_ref(m_test_replace__string_string_array_string_array_202, method, 'testReplace_StringStringArrayStringArray', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplace_StringStringArrayStringArray()V').
name_ref(m_test_replace__string_string_array_string_array_boolean_205, method, 'testReplace_StringStringArrayStringArrayBoolean', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplace_StringStringArrayStringArrayBoolean()V').
name_ref(m_test_replace__string_string_string_199, method, 'testReplace_StringStringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplace_StringStringString()V').
name_ref(m_test_replace__string_string_string_int_200, method, 'testReplace_StringStringStringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplace_StringStringStringInt()V').
name_ref(m_test_replace_chars__string_char_char_206, method, 'testReplaceChars_StringCharChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplaceChars_StringCharChar()V').
name_ref(m_test_replace_chars__string_string_string_207, method, 'testReplaceChars_StringStringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplaceChars_StringStringString()V').
name_ref(m_test_replace_once__string_string_string_201, method, 'testReplaceOnce_StringStringString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReplaceOnce_StringStringString()V').
name_ref(m_test_reverse__string_223, method, 'testReverse_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReverse_String()V').
name_ref(m_test_reverse_delimited__string_char_224, method, 'testReverseDelimited_StringChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testReverseDelimited_StringChar()V').
name_ref(m_test_right_pad__string_int_213, method, 'testRightPad_StringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRightPad_StringInt()V').
name_ref(m_test_right_pad__string_int_char_214, method, 'testRightPad_StringIntChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRightPad_StringIntChar()V').
name_ref(m_test_right_pad__string_int_string_215, method, 'testRightPad_StringIntString', 'Lorg/apache/commons/lang3/StringUtilsTest;.testRightPad_StringIntString()V').
name_ref(m_test_split__string_185, method, 'testSplit_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplit_String()V').
name_ref(m_test_split__string_char_186, method, 'testSplit_StringChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplit_StringChar()V').
name_ref(m_test_split__string_string__string_string_int_187, method, 'testSplit_StringString_StringStringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplit_StringString_StringStringInt()V').
name_ref(m_test_split_by_character_type_196, method, 'testSplitByCharacterType', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitByCharacterType()V').
name_ref(m_test_split_by_character_type_camel_case_197, method, 'testSplitByCharacterTypeCamelCase', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitByCharacterTypeCamelCase()V').
name_ref(m_test_split_by_whole_separator_preserve_all_tokens__string_string_int_191, method, 'testSplitByWholeSeparatorPreserveAllTokens_StringStringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitByWholeSeparatorPreserveAllTokens_StringStringInt()V').
name_ref(m_test_split_by_whole_string__string_string_boolean_189, method, 'testSplitByWholeString_StringStringBoolean', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitByWholeString_StringStringBoolean()V').
name_ref(m_test_split_by_whole_string__string_string_boolean_int_190, method, 'testSplitByWholeString_StringStringBooleanInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitByWholeString_StringStringBooleanInt()V').
name_ref(m_test_split_preserve_all_tokens__string_192, method, 'testSplitPreserveAllTokens_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitPreserveAllTokens_String()V').
name_ref(m_test_split_preserve_all_tokens__string_char_193, method, 'testSplitPreserveAllTokens_StringChar', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitPreserveAllTokens_StringChar()V').
name_ref(m_test_split_preserve_all_tokens__string_string__string_string_int_194, method, 'testSplitPreserveAllTokens_StringString_StringStringInt', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSplitPreserveAllTokens_StringString_StringStringInt()V').
name_ref(m_test_starts_with_any_245, method, 'testStartsWithAny', 'Lorg/apache/commons/lang3/StringUtilsTest;.testStartsWithAny()V').
name_ref(m_test_suite_169, method, 'TestSuite', 'Ljunit/framework/TestSuite;.(Ljava/lang/Class<*>;)V').
name_ref(m_test_swap_case__string_177, method, 'testSwapCase_String', 'Lorg/apache/commons/lang3/StringUtilsTest;.testSwapCase_String()V').
name_ref(m_to_string_104, method, 'toString', 'Ljava/lang/StringBuilder;.toString()Ljava/lang/String;').
name_ref(m_trim_6, method, 'trim', 'Lorg/apache/commons/lang3/StringUtils;.trim(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_trim_to_empty_8, method, 'trimToEmpty', 'Lorg/apache/commons/lang3/StringUtils;.trimToEmpty(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_trim_to_null_7, method, 'trimToNull', 'Lorg/apache/commons/lang3/StringUtils;.trimToNull(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_uncapitalize_129, method, 'uncapitalize', 'Lorg/apache/commons/lang3/StringUtils;.uncapitalize(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_upper_case_124, method, 'upperCase', 'Lorg/apache/commons/lang3/StringUtils;.upperCase(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_upper_case_125, method, 'upperCase', 'Lorg/apache/commons/lang3/StringUtils;.upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;').
name_ref(m_value_of_162, method, 'valueOf', 'Ljava/lang/String;.valueOf(C)Ljava/lang/String;').
name_ref(q_length_1, q_name, 'searchList.length', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#searchList#0#1:.length)I').
name_ref(q_length_2, q_name, 'replacementList.length', 'Lorg/apache/commons/lang3/StringUtils;.replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;#replacementList#0#2:.length)I').
name_ref(q_max_value_3, q_name, 'Character.MAX_VALUE', 'Ljava/lang/Character;:Ljava/lang/Character;.MAX_VALUE)C').

%%% End of Code Facts

