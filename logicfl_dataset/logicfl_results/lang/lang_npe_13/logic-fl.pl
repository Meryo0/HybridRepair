%%% Logic-FL Facts
:- style_check(-discontiguous).

%string_utils_1 - org.apache.commons.lang3.StringUtils
param(p_cs_1, 1, m_is_empty_2).
param(p_cs_2, 1, m_is_not_empty_3).
param(p_css_3, 1, m_is_any_empty_4).
param(p_css_4, 1, m_is_none_empty_5).
param(p_cs_5, 1, m_is_blank_6).
param(p_cs_6, 1, m_is_not_blank_7).
param(p_css_7, 1, m_is_any_blank_8).
param(p_css_8, 1, m_is_none_blank_9).
param(p_str_9, 1, m_trim_10).
param(p_str_10, 1, m_trim_to_null_11).
param(p_str_11, 1, m_trim_to_empty_12).
param(p_str_12, 1, m_strip_13).
param(p_str_13, 1, m_strip_to_null_14).
param(p_str_14, 1, m_strip_to_empty_15).
param(p_str_15, 1, m_strip_16).
param(p_strip_chars_16, 2, m_strip_16).
param(p_str_17, 1, m_strip_start_17).
param(p_strip_chars_18, 2, m_strip_start_17).
param(p_str_19, 1, m_strip_end_18).
param(p_strip_chars_20, 2, m_strip_end_18).
param(p_strs_21, 1, m_strip_all_19).
param(p_strs_22, 1, m_strip_all_20).
param(p_strip_chars_23, 2, m_strip_all_20).
param(p_input_24, 1, m_strip_accents_21).
param(p_cs_1_25, 1, m_equals_22).
param(p_cs_2_26, 2, m_equals_22).
param(p_str_1_27, 1, m_equals_ignore_case_23).
param(p_str_2_28, 2, m_equals_ignore_case_23).
param(p_str_1_29, 1, m_compare_24).
param(p_str_2_30, 2, m_compare_24).
param(p_str_1_31, 1, m_compare_25).
param(p_str_2_32, 2, m_compare_25).
param(p_null_is_less_33, 3, m_compare_25).
param(p_str_1_34, 1, m_compare_ignore_case_26).
param(p_str_2_35, 2, m_compare_ignore_case_26).
param(p_str_1_36, 1, m_compare_ignore_case_27).
param(p_str_2_37, 2, m_compare_ignore_case_27).
param(p_null_is_less_38, 3, m_compare_ignore_case_27).
param(p_seq_39, 1, m_index_of_28).
param(p_search_char_40, 2, m_index_of_28).
param(p_seq_41, 1, m_index_of_29).
param(p_search_char_42, 2, m_index_of_29).
param(p_start_pos_43, 3, m_index_of_29).
param(p_seq_44, 1, m_index_of_30).
param(p_search_seq_45, 2, m_index_of_30).
param(p_seq_46, 1, m_index_of_31).
param(p_search_seq_47, 2, m_index_of_31).
param(p_start_pos_48, 3, m_index_of_31).
param(p_str_49, 1, m_ordinal_index_of_32).
param(p_search_str_50, 2, m_ordinal_index_of_32).
param(p_ordinal_51, 3, m_ordinal_index_of_32).
param(p_str_52, 1, m_ordinal_index_of_33).
param(p_search_str_53, 2, m_ordinal_index_of_33).
param(p_ordinal_54, 3, m_ordinal_index_of_33).
param(p_last_index_55, 4, m_ordinal_index_of_33).
param(p_str_56, 1, m_index_of_ignore_case_34).
param(p_search_str_57, 2, m_index_of_ignore_case_34).
param(p_str_58, 1, m_index_of_ignore_case_35).
param(p_search_str_59, 2, m_index_of_ignore_case_35).
param(p_start_pos_60, 3, m_index_of_ignore_case_35).
param(p_seq_61, 1, m_last_index_of_36).
param(p_search_char_62, 2, m_last_index_of_36).
param(p_seq_63, 1, m_last_index_of_37).
param(p_search_char_64, 2, m_last_index_of_37).
param(p_start_pos_65, 3, m_last_index_of_37).
param(p_seq_66, 1, m_last_index_of_38).
param(p_search_seq_67, 2, m_last_index_of_38).
param(p_str_68, 1, m_last_ordinal_index_of_39).
param(p_search_str_69, 2, m_last_ordinal_index_of_39).
param(p_ordinal_70, 3, m_last_ordinal_index_of_39).
param(p_seq_71, 1, m_last_index_of_40).
param(p_search_seq_72, 2, m_last_index_of_40).
param(p_start_pos_73, 3, m_last_index_of_40).
param(p_str_74, 1, m_last_index_of_ignore_case_41).
param(p_search_str_75, 2, m_last_index_of_ignore_case_41).
param(p_str_76, 1, m_last_index_of_ignore_case_42).
param(p_search_str_77, 2, m_last_index_of_ignore_case_42).
param(p_start_pos_78, 3, m_last_index_of_ignore_case_42).
param(p_seq_79, 1, m_contains_43).
param(p_search_char_80, 2, m_contains_43).
param(p_seq_81, 1, m_contains_44).
param(p_search_seq_82, 2, m_contains_44).
param(p_str_83, 1, m_contains_ignore_case_45).
param(p_search_str_84, 2, m_contains_ignore_case_45).
param(p_seq_85, 1, m_contains_whitespace_46).
param(p_cs_86, 1, m_index_of_any_47).
param(p_search_chars_87, 2, m_index_of_any_47).
param(p_cs_88, 1, m_index_of_any_48).
param(p_search_chars_89, 2, m_index_of_any_48).
param(p_cs_90, 1, m_contains_any_49).
param(p_search_chars_91, 2, m_contains_any_49).
param(p_cs_92, 1, m_contains_any_50).
param(p_search_chars_93, 2, m_contains_any_50).
param(p_cs_94, 1, m_contains_any_51).
param(p_search_char_sequences_95, 2, m_contains_any_51).
param(p_cs_96, 1, m_index_of_any_but_52).
param(p_search_chars_97, 2, m_index_of_any_but_52).
param(p_seq_98, 1, m_index_of_any_but_53).
param(p_search_chars_99, 2, m_index_of_any_but_53).
param(p_cs_100, 1, m_contains_only_54).
param(p_valid_101, 2, m_contains_only_54).
param(p_cs_102, 1, m_contains_only_55).
param(p_valid_chars_103, 2, m_contains_only_55).
param(p_cs_104, 1, m_contains_none_56).
param(p_search_chars_105, 2, m_contains_none_56).
param(p_cs_106, 1, m_contains_none_57).
param(p_invalid_chars_107, 2, m_contains_none_57).
param(p_str_108, 1, m_index_of_any_58).
param(p_search_strs_109, 2, m_index_of_any_58).
param(p_str_110, 1, m_last_index_of_any_59).
param(p_search_strs_111, 2, m_last_index_of_any_59).
param(p_str_112, 1, m_substring_60).
param(p_start_113, 2, m_substring_60).
param(p_str_114, 1, m_substring_61).
param(p_start_115, 2, m_substring_61).
param(p_end_116, 3, m_substring_61).
param(p_str_117, 1, m_left_62).
param(p_len_118, 2, m_left_62).
param(p_str_119, 1, m_right_63).
param(p_len_120, 2, m_right_63).
param(p_str_121, 1, m_mid_64).
param(p_pos_122, 2, m_mid_64).
param(p_len_123, 3, m_mid_64).
param(p_str_124, 1, m_substring_before_65).
param(p_separator_125, 2, m_substring_before_65).
param(p_str_126, 1, m_substring_after_66).
param(p_separator_127, 2, m_substring_after_66).
param(p_str_128, 1, m_substring_before_last_67).
param(p_separator_129, 2, m_substring_before_last_67).
param(p_str_130, 1, m_substring_after_last_68).
param(p_separator_131, 2, m_substring_after_last_68).
param(p_str_132, 1, m_substring_between_69).
param(p_tag_133, 2, m_substring_between_69).
param(p_str_134, 1, m_substring_between_70).
param(p_open_135, 2, m_substring_between_70).
param(p_close_136, 3, m_substring_between_70).
param(p_str_137, 1, m_substrings_between_71).
param(p_open_138, 2, m_substrings_between_71).
param(p_close_139, 3, m_substrings_between_71).
param(p_str_140, 1, m_split_72).
param(p_str_141, 1, m_split_73).
param(p_separator_char_142, 2, m_split_73).
param(p_str_143, 1, m_split_74).
param(p_separator_chars_144, 2, m_split_74).
param(p_str_145, 1, m_split_75).
param(p_separator_chars_146, 2, m_split_75).
param(p_max_147, 3, m_split_75).
param(p_str_148, 1, m_split_by_whole_separator_76).
param(p_separator_149, 2, m_split_by_whole_separator_76).
param(p_str_150, 1, m_split_by_whole_separator_77).
param(p_separator_151, 2, m_split_by_whole_separator_77).
param(p_max_152, 3, m_split_by_whole_separator_77).
param(p_str_153, 1, m_split_by_whole_separator_preserve_all_tokens_78).
param(p_separator_154, 2, m_split_by_whole_separator_preserve_all_tokens_78).
param(p_str_155, 1, m_split_by_whole_separator_preserve_all_tokens_79).
param(p_separator_156, 2, m_split_by_whole_separator_preserve_all_tokens_79).
param(p_max_157, 3, m_split_by_whole_separator_preserve_all_tokens_79).
param(p_str_158, 1, m_split_by_whole_separator_worker_80).
param(p_separator_159, 2, m_split_by_whole_separator_worker_80).
param(p_max_160, 3, m_split_by_whole_separator_worker_80).
param(p_preserve_all_tokens_161, 4, m_split_by_whole_separator_worker_80).
param(p_str_162, 1, m_split_preserve_all_tokens_81).
param(p_str_163, 1, m_split_preserve_all_tokens_82).
param(p_separator_char_164, 2, m_split_preserve_all_tokens_82).
param(p_str_165, 1, m_split_worker_83).
param(p_separator_char_166, 2, m_split_worker_83).
param(p_preserve_all_tokens_167, 3, m_split_worker_83).
param(p_str_168, 1, m_split_preserve_all_tokens_84).
param(p_separator_chars_169, 2, m_split_preserve_all_tokens_84).
param(p_str_170, 1, m_split_preserve_all_tokens_85).
param(p_separator_chars_171, 2, m_split_preserve_all_tokens_85).
param(p_max_172, 3, m_split_preserve_all_tokens_85).
param(p_str_173, 1, m_split_worker_86).
param(p_separator_chars_174, 2, m_split_worker_86).
param(p_max_175, 3, m_split_worker_86).
param(p_preserve_all_tokens_176, 4, m_split_worker_86).
param(p_str_177, 1, m_split_by_character_type_87).
param(p_str_178, 1, m_split_by_character_type_camel_case_88).
param(p_str_179, 1, m_split_by_character_type_89).
param(p_camel_case_180, 2, m_split_by_character_type_89).
param(p_elements_181, 1, m_join_90).
param(p_array_182, 1, m_join_91).
param(p_separator_183, 2, m_join_91).
param(p_array_184, 1, m_join_92).
param(p_separator_185, 2, m_join_92).
param(p_array_186, 1, m_join_93).
param(p_separator_187, 2, m_join_93).
param(p_array_188, 1, m_join_94).
param(p_separator_189, 2, m_join_94).
param(p_array_190, 1, m_join_95).
param(p_separator_191, 2, m_join_95).
param(p_array_192, 1, m_join_96).
param(p_separator_193, 2, m_join_96).
param(p_array_194, 1, m_join_97).
param(p_separator_195, 2, m_join_97).
param(p_array_196, 1, m_join_98).
param(p_separator_197, 2, m_join_98).
param(p_array_198, 1, m_join_99).
param(p_separator_199, 2, m_join_99).
param(p_start_index_200, 3, m_join_99).
param(p_end_index_201, 4, m_join_99).
param(p_array_202, 1, m_join_100).
param(p_separator_203, 2, m_join_100).
param(p_start_index_204, 3, m_join_100).
param(p_end_index_205, 4, m_join_100).
param(p_array_206, 1, m_join_101).
param(p_separator_207, 2, m_join_101).
param(p_start_index_208, 3, m_join_101).
param(p_end_index_209, 4, m_join_101).
param(p_array_210, 1, m_join_102).
param(p_separator_211, 2, m_join_102).
param(p_start_index_212, 3, m_join_102).
param(p_end_index_213, 4, m_join_102).
param(p_array_214, 1, m_join_103).
param(p_separator_215, 2, m_join_103).
param(p_start_index_216, 3, m_join_103).
param(p_end_index_217, 4, m_join_103).
param(p_array_218, 1, m_join_104).
param(p_separator_219, 2, m_join_104).
param(p_start_index_220, 3, m_join_104).
param(p_end_index_221, 4, m_join_104).
param(p_array_222, 1, m_join_105).
param(p_separator_223, 2, m_join_105).
param(p_start_index_224, 3, m_join_105).
param(p_end_index_225, 4, m_join_105).
param(p_array_226, 1, m_join_106).
param(p_separator_227, 2, m_join_106).
param(p_start_index_228, 3, m_join_106).
param(p_end_index_229, 4, m_join_106).
param(p_array_230, 1, m_join_107).
param(p_separator_231, 2, m_join_107).
param(p_array_232, 1, m_join_108).
param(p_separator_233, 2, m_join_108).
param(p_start_index_234, 3, m_join_108).
param(p_end_index_235, 4, m_join_108).
param(p_iterator_236, 1, m_join_109).
param(p_separator_237, 2, m_join_109).
param(p_iterator_238, 1, m_join_110).
param(p_separator_239, 2, m_join_110).
param(p_iterable_240, 1, m_join_111).
param(p_separator_241, 2, m_join_111).
param(p_iterable_242, 1, m_join_112).
param(p_separator_243, 2, m_join_112).
param(p_separator_244, 1, m_join_with_113).
param(p_objects_245, 2, m_join_with_113).
param(p_str_246, 1, m_delete_whitespace_114).
param(p_str_247, 1, m_remove_start_115).
param(p_remove_248, 2, m_remove_start_115).
param(p_str_249, 1, m_remove_start_ignore_case_116).
param(p_remove_250, 2, m_remove_start_ignore_case_116).
param(p_str_251, 1, m_remove_end_117).
param(p_remove_252, 2, m_remove_end_117).
param(p_str_253, 1, m_remove_end_ignore_case_118).
param(p_remove_254, 2, m_remove_end_ignore_case_118).
param(p_str_255, 1, m_remove_119).
param(p_remove_256, 2, m_remove_119).
param(p_str_257, 1, m_remove_120).
param(p_remove_258, 2, m_remove_120).
param(p_text_259, 1, m_replace_once_121).
param(p_search_string_260, 2, m_replace_once_121).
param(p_replacement_261, 3, m_replace_once_121).
param(p_source_262, 1, m_replace_pattern_122).
param(p_regex_263, 2, m_replace_pattern_122).
param(p_replacement_264, 3, m_replace_pattern_122).
return(string_utils_1_expr1, m_replace_pattern_122, line(string_utils_1, 4694)).
method_invoc(string_utils_1_expr1, m_replace_all_123, line(string_utils_1, 4694)).
argument(p_replacement_264, 1, string_utils_1_expr1).
ref(string_utils_1_expr2, string_utils_1_expr1, line(string_utils_1, 4694)).
method_invoc(string_utils_1_expr2, m_matcher_124, line(string_utils_1, 4694)).
throw(string_utils_1_expr2, null_pointer_exception, line(string_utils_1, 4694)).
argument(p_source_262, 1, string_utils_1_expr2).
ref(string_utils_1_expr3, string_utils_1_expr2, line(string_utils_1, 4694)).
method_invoc(string_utils_1_expr3, m_compile_125, line(string_utils_1, 4694)).
argument(p_regex_263, 1, string_utils_1_expr3).
argument(q_dotall_1, 2, string_utils_1_expr3).
ref(t_pattern_1, string_utils_1_expr3, line(string_utils_1, 4694)).
ref(t_pattern_1, q_dotall_1, line(string_utils_1, 4694)).
param(p_source_265, 1, m_remove_pattern_126).
param(p_regex_266, 2, m_remove_pattern_126).
return(string_utils_1_expr4, m_remove_pattern_126, line(string_utils_1, 4710)).
method_invoc(string_utils_1_expr4, m_replace_pattern_122, line(string_utils_1, 4710)).
argument(p_source_265, 1, string_utils_1_expr4).
argument(p_regex_266, 2, string_utils_1_expr4).
argument(q_empty_2, 3, string_utils_1_expr4).
ref(t_string_utils_2, q_empty_2, line(string_utils_1, 4710)).
param(p_text_267, 1, m_replace_all_127).
param(p_regex_268, 2, m_replace_all_127).
param(p_replacement_269, 3, m_replace_all_127).
param(p_text_270, 1, m_replace_first_128).
param(p_regex_271, 2, m_replace_first_128).
param(p_replacement_272, 3, m_replace_first_128).
param(p_text_273, 1, m_replace_129).
param(p_search_string_274, 2, m_replace_129).
param(p_replacement_275, 3, m_replace_129).
param(p_text_276, 1, m_replace_130).
param(p_search_string_277, 2, m_replace_130).
param(p_replacement_278, 3, m_replace_130).
param(p_max_279, 4, m_replace_130).
param(p_text_280, 1, m_replace_each_131).
param(p_search_list_281, 2, m_replace_each_131).
param(p_replacement_list_282, 3, m_replace_each_131).
param(p_text_283, 1, m_replace_each_repeatedly_132).
param(p_search_list_284, 2, m_replace_each_repeatedly_132).
param(p_replacement_list_285, 3, m_replace_each_repeatedly_132).
param(p_text_286, 1, m_replace_each_133).
param(p_search_list_287, 2, m_replace_each_133).
param(p_replacement_list_288, 3, m_replace_each_133).
param(p_repeat_289, 4, m_replace_each_133).
param(p_time_to_live_290, 5, m_replace_each_133).
param(p_str_291, 1, m_replace_chars_134).
param(p_search_char_292, 2, m_replace_chars_134).
param(p_replace_char_293, 3, m_replace_chars_134).
param(p_str_294, 1, m_replace_chars_135).
param(p_search_chars_295, 2, m_replace_chars_135).
param(p_replace_chars_296, 3, m_replace_chars_135).
param(p_str_297, 1, m_overlay_136).
param(p_overlay_298, 2, m_overlay_136).
param(p_start_299, 3, m_overlay_136).
param(p_end_300, 4, m_overlay_136).
param(p_str_301, 1, m_chomp_137).
param(p_str_302, 1, m_chomp_138).
param(p_separator_303, 2, m_chomp_138).
param(p_str_304, 1, m_chop_139).
param(p_str_305, 1, m_repeat_140).
param(p_repeat_306, 2, m_repeat_140).
param(p_str_307, 1, m_repeat_141).
param(p_separator_308, 2, m_repeat_141).
param(p_repeat_309, 3, m_repeat_141).
param(p_ch_310, 1, m_repeat_142).
param(p_repeat_311, 2, m_repeat_142).
param(p_str_312, 1, m_right_pad_143).
param(p_size_313, 2, m_right_pad_143).
param(p_str_314, 1, m_right_pad_144).
param(p_size_315, 2, m_right_pad_144).
param(p_pad_char_316, 3, m_right_pad_144).
param(p_str_317, 1, m_right_pad_145).
param(p_size_318, 2, m_right_pad_145).
param(p_pad_str_319, 3, m_right_pad_145).
param(p_str_320, 1, m_left_pad_146).
param(p_size_321, 2, m_left_pad_146).
param(p_str_322, 1, m_left_pad_147).
param(p_size_323, 2, m_left_pad_147).
param(p_pad_char_324, 3, m_left_pad_147).
param(p_str_325, 1, m_left_pad_148).
param(p_size_326, 2, m_left_pad_148).
param(p_pad_str_327, 3, m_left_pad_148).
param(p_cs_328, 1, m_length_149).
param(p_str_329, 1, m_center_150).
param(p_size_330, 2, m_center_150).
param(p_str_331, 1, m_center_151).
param(p_size_332, 2, m_center_151).
param(p_pad_char_333, 3, m_center_151).
param(p_str_334, 1, m_center_152).
param(p_size_335, 2, m_center_152).
param(p_pad_str_336, 3, m_center_152).
param(p_str_337, 1, m_upper_case_153).
param(p_str_338, 1, m_upper_case_154).
param(p_locale_339, 2, m_upper_case_154).
param(p_str_340, 1, m_lower_case_155).
param(p_str_341, 1, m_lower_case_156).
param(p_locale_342, 2, m_lower_case_156).
param(p_str_343, 1, m_capitalize_157).
param(p_str_344, 1, m_uncapitalize_158).
param(p_str_345, 1, m_swap_case_159).
param(p_str_346, 1, m_count_matches_160).
param(p_sub_347, 2, m_count_matches_160).
param(p_str_348, 1, m_count_matches_161).
param(p_ch_349, 2, m_count_matches_161).
param(p_cs_350, 1, m_is_alpha_162).
param(p_cs_351, 1, m_is_alpha_space_163).
param(p_cs_352, 1, m_is_alphanumeric_164).
param(p_cs_353, 1, m_is_alphanumeric_space_165).
param(p_cs_354, 1, m_is_ascii_printable_166).
param(p_cs_355, 1, m_is_numeric_167).
param(p_cs_356, 1, m_is_numeric_space_168).
param(p_cs_357, 1, m_is_whitespace_169).
param(p_cs_358, 1, m_is_all_lower_case_170).
param(p_cs_359, 1, m_is_all_upper_case_171).
param(p_str_360, 1, m_default_string_172).
param(p_str_361, 1, m_default_string_173).
param(p_default_str_362, 2, m_default_string_173).
param(p_str_363, 1, m_default_if_blank_174).
param(p_default_str_364, 2, m_default_if_blank_174).
param(p_str_365, 1, m_default_if_empty_175).
param(p_default_str_366, 2, m_default_if_empty_175).
param(p_str_367, 1, m_rotate_176).
param(p_shift_368, 2, m_rotate_176).
param(p_str_369, 1, m_reverse_177).
param(p_str_370, 1, m_reverse_delimited_178).
param(p_separator_char_371, 2, m_reverse_delimited_178).
param(p_str_372, 1, m_abbreviate_179).
param(p_max_width_373, 2, m_abbreviate_179).
param(p_str_374, 1, m_abbreviate_180).
param(p_offset_375, 2, m_abbreviate_180).
param(p_max_width_376, 3, m_abbreviate_180).
param(p_str_377, 1, m_abbreviate_middle_181).
param(p_middle_378, 2, m_abbreviate_middle_181).
param(p_length_379, 3, m_abbreviate_middle_181).
param(p_str_1_380, 1, m_difference_182).
param(p_str_2_381, 2, m_difference_182).
param(p_cs_1_382, 1, m_index_of_difference_183).
param(p_cs_2_383, 2, m_index_of_difference_183).
param(p_css_384, 1, m_index_of_difference_184).
param(p_strs_385, 1, m_get_common_prefix_185).
param(p_s_386, 1, m_get_levenshtein_distance_186).
param(p_t_387, 2, m_get_levenshtein_distance_186).
param(p_s_388, 1, m_get_levenshtein_distance_187).
param(p_t_389, 2, m_get_levenshtein_distance_187).
param(p_threshold_390, 3, m_get_levenshtein_distance_187).
param(p_first_391, 1, m_get_jaro_winkler_distance_188).
param(p_second_392, 2, m_get_jaro_winkler_distance_188).
param(p_first_393, 1, m_score_189).
param(p_second_394, 2, m_score_189).
param(p_term_395, 1, m_get_fuzzy_distance_190).
param(p_query_396, 2, m_get_fuzzy_distance_190).
param(p_locale_397, 3, m_get_fuzzy_distance_190).
param(p_first_398, 1, m_get_set_of_matching_character_within_191).
param(p_second_399, 2, m_get_set_of_matching_character_within_191).
param(p_limit_400, 3, m_get_set_of_matching_character_within_191).
param(p_first_401, 1, m_transpositions_192).
param(p_second_402, 2, m_transpositions_192).
param(p_first_403, 1, m_common_prefix_length_193).
param(p_second_404, 2, m_common_prefix_length_193).
param(p_str_405, 1, m_starts_with_194).
param(p_prefix_406, 2, m_starts_with_194).
param(p_str_407, 1, m_starts_with_ignore_case_195).
param(p_prefix_408, 2, m_starts_with_ignore_case_195).
param(p_str_409, 1, m_starts_with_196).
param(p_prefix_410, 2, m_starts_with_196).
param(p_ignore_case_411, 3, m_starts_with_196).
param(p_string_412, 1, m_starts_with_any_197).
param(p_search_strings_413, 2, m_starts_with_any_197).
param(p_str_414, 1, m_ends_with_198).
param(p_suffix_415, 2, m_ends_with_198).
param(p_str_416, 1, m_ends_with_ignore_case_199).
param(p_suffix_417, 2, m_ends_with_ignore_case_199).
param(p_str_418, 1, m_ends_with_200).
param(p_suffix_419, 2, m_ends_with_200).
param(p_ignore_case_420, 3, m_ends_with_200).
param(p_str_421, 1, m_normalize_space_201).
param(p_string_422, 1, m_ends_with_any_202).
param(p_search_strings_423, 2, m_ends_with_any_202).
param(p_str_424, 1, m_append_if_missing_203).
param(p_suffix_425, 2, m_append_if_missing_203).
param(p_ignore_case_426, 3, m_append_if_missing_203).
param(p_suffixes_427, 4, m_append_if_missing_203).
param(p_str_428, 1, m_append_if_missing_204).
param(p_suffix_429, 2, m_append_if_missing_204).
param(p_suffixes_430, 3, m_append_if_missing_204).
param(p_str_431, 1, m_append_if_missing_ignore_case_205).
param(p_suffix_432, 2, m_append_if_missing_ignore_case_205).
param(p_suffixes_433, 3, m_append_if_missing_ignore_case_205).
param(p_str_434, 1, m_prepend_if_missing_206).
param(p_prefix_435, 2, m_prepend_if_missing_206).
param(p_ignore_case_436, 3, m_prepend_if_missing_206).
param(p_prefixes_437, 4, m_prepend_if_missing_206).
param(p_str_438, 1, m_prepend_if_missing_207).
param(p_prefix_439, 2, m_prepend_if_missing_207).
param(p_prefixes_440, 3, m_prepend_if_missing_207).
param(p_str_441, 1, m_prepend_if_missing_ignore_case_208).
param(p_prefix_442, 2, m_prepend_if_missing_ignore_case_208).
param(p_prefixes_443, 3, m_prepend_if_missing_ignore_case_208).
param(p_bytes_444, 1, m_to_string_209).
param(p_charset_name_445, 2, m_to_string_209).
throw(m_to_string_209, unsupported_encoding_exception).
param(p_bytes_446, 1, m_to_encoded_string_210).
param(p_charset_447, 2, m_to_encoded_string_210).
param(p_str_448, 1, m_wrap_211).
param(p_wrap_with_449, 2, m_wrap_211).
param(p_str_450, 1, m_wrap_212).
param(p_wrap_with_451, 2, m_wrap_212).

%string_utils_test_1 - org.apache.commons.lang3.StringUtilsTest
assign(v_ws_452, string_utils_test_1_literal1, line(string_utils_test_1, 56)).
assign(v_nws_453, string_utils_test_1_literal2, line(string_utils_test_1, 57)).
assign(v_hs_454, string_utils_test_1_expr1, line(string_utils_test_1, 58)).
method_invoc(string_utils_test_1_expr1, m_value_of_213, line(string_utils_test_1, 58)).
argument(string_utils_test_1_expr2, 1, string_utils_test_1_expr1).
ref(t_string_4, string_utils_test_1_expr1, line(string_utils_test_1, 58)).
assign(string_utils_test_1_expr2, string_utils_test_1_expr3, line(string_utils_test_1, 58)).
assign(string_utils_test_1_expr3, string_utils_test_1_literal3, line(string_utils_test_1, 58)).
assign(v_tr_455, string_utils_test_1_literal4, line(string_utils_test_1, 59)).
assign(v_ntr_456, string_utils_test_1_literal5, line(string_utils_test_1, 60)).
assign(v_i_457, string_utils_test_1_literal6, line(string_utils_test_1, 61)).
ref(t_character_5, q_max_value_3, line(string_utils_test_1, 61)).
method_invoc(string_utils_test_1_expr7, m_is_whitespace_214, line(string_utils_test_1, 62)).
argument(string_utils_test_1_expr8, 1, string_utils_test_1_expr7).
ref(t_character_5, string_utils_test_1_expr7, line(string_utils_test_1, 62)).
assign(string_utils_test_1_expr8, v_i_457, line(string_utils_test_1, 62)).
assign(v_ws_452, string_utils_test_1_expr10, line(string_utils_test_1, 63)).
method_invoc(string_utils_test_1_expr10, m_value_of_213, line(string_utils_test_1, 63)).
argument(string_utils_test_1_expr11, 1, string_utils_test_1_expr10).
ref(t_string_4, string_utils_test_1_expr10, line(string_utils_test_1, 63)).
assign(string_utils_test_1_expr11, v_i_457, line(string_utils_test_1, 63)).
assign(v_ntr_456, string_utils_test_1_expr14, line(string_utils_test_1, 65)).
method_invoc(string_utils_test_1_expr14, m_value_of_213, line(string_utils_test_1, 65)).
argument(string_utils_test_1_expr15, 1, string_utils_test_1_expr14).
ref(t_string_4, string_utils_test_1_expr14, line(string_utils_test_1, 65)).
assign(string_utils_test_1_expr15, v_i_457, line(string_utils_test_1, 65)).
assign(v_nws_453, string_utils_test_1_expr18, line(string_utils_test_1, 68)).
method_invoc(string_utils_test_1_expr18, m_value_of_213, line(string_utils_test_1, 68)).
argument(string_utils_test_1_expr19, 1, string_utils_test_1_expr18).
ref(t_string_4, string_utils_test_1_expr18, line(string_utils_test_1, 68)).
assign(string_utils_test_1_expr19, v_i_457, line(string_utils_test_1, 68)).
assign(v_i_458, string_utils_test_1_literal9, line(string_utils_test_1, 71)).
assign(v_tr_455, string_utils_test_1_expr24, line(string_utils_test_1, 72)).
method_invoc(string_utils_test_1_expr24, m_value_of_213, line(string_utils_test_1, 72)).
argument(string_utils_test_1_expr25, 1, string_utils_test_1_expr24).
ref(t_string_4, string_utils_test_1_expr24, line(string_utils_test_1, 72)).
assign(string_utils_test_1_expr25, v_i_458, line(string_utils_test_1, 72)).
assign(f_whitespace_459, v_ws_452, line(string_utils_test_1, 74)).
assign(f_non_whitespace_460, v_nws_453, line(string_utils_test_1, 75)).
assign(f_hard_space_461, v_hs_454, line(string_utils_test_1, 76)).
assign(f_trimmable_462, v_tr_455, line(string_utils_test_1, 77)).
assign(f_non_trimmable_463, v_ntr_456, line(string_utils_test_1, 78)).
assign(f_array_list_464, string_utils_test_1_expr31, line(string_utils_test_1, 81)).
assign(f_empty_array_list_465, string_utils_test_1_expr32, line(string_utils_test_1, 82)).
assign(f_null_array_list_466, string_utils_test_1_expr33, line(string_utils_test_1, 83)).
assign(f_null_to_string_list_467, string_utils_test_1_expr34, line(string_utils_test_1, 84)).
assign(f_mixed_array_list_468, string_utils_test_1_expr35, line(string_utils_test_1, 92)).
assign(f_mixed_type_list_469, string_utils_test_1_expr36, line(string_utils_test_1, 93)).
method_invoc(string_utils_test_1_expr37, m_value_of_216, line(string_utils_test_1, 93)).
argument(string_utils_test_1_literal19, 1, string_utils_test_1_expr37).
ref(t_long_6, string_utils_test_1_expr37, line(string_utils_test_1, 93)).
assign(f_long_prim_list_470, string_utils_test_1_expr38, line(string_utils_test_1, 94)).
assign(f_int_prim_list_471, string_utils_test_1_expr39, line(string_utils_test_1, 95)).
assign(f_byte_prim_list_472, string_utils_test_1_expr40, line(string_utils_test_1, 96)).
assign(f_short_prim_list_473, string_utils_test_1_expr41, line(string_utils_test_1, 97)).
assign(f_char_prim_list_474, string_utils_test_1_expr42, line(string_utils_test_1, 98)).
assign(f_float_prim_list_475, string_utils_test_1_expr43, line(string_utils_test_1, 99)).
assign(f_double_prim_list_476, string_utils_test_1_expr44, line(string_utils_test_1, 100)).
param(p_separator_477, 1, m_inner_test_split_252).
param(p_sep_str_478, 2, m_inner_test_split_252).
param(p_no_match_479, 3, m_inner_test_split_252).
param(p_separator_480, 1, m_inner_test_split_preserve_all_tokens_259).
param(p_sep_str_481, 2, m_inner_test_split_preserve_all_tokens_259).
param(p_no_match_482, 3, m_inner_test_split_preserve_all_tokens_259).
method_invoc(string_utils_test_1_expr45, m_assert_null_266, line(string_utils_test_1, 1192)).
argument(string_utils_test_1_expr46, 1, string_utils_test_1_expr45).
method_invoc(string_utils_test_1_expr46, m_replace_pattern_122, line(string_utils_test_1, 1192)).
argument(string_utils_test_1_literal34, 1, string_utils_test_1_expr46).
argument(string_utils_test_1_literal35, 2, string_utils_test_1_expr46).
argument(string_utils_test_1_literal36, 3, string_utils_test_1_expr46).
ref(t_string_utils_2, string_utils_test_1_expr46, line(string_utils_test_1, 1192)).
method_invoc(string_utils_test_1_expr47, m_assert_null_266, line(string_utils_test_1, 1213)).
argument(string_utils_test_1_expr48, 1, string_utils_test_1_expr47).
method_invoc(string_utils_test_1_expr48, m_remove_pattern_126, line(string_utils_test_1, 1213)).
argument(string_utils_test_1_literal37, 1, string_utils_test_1_expr48).
argument(string_utils_test_1_literal38, 2, string_utils_test_1_expr48).
ref(t_string_utils_2, string_utils_test_1_expr48, line(string_utils_test_1, 1213)).
param(p_expected_483, 1, m_assert_abbreviate_with_offset_310).
param(p_offset_484, 2, m_assert_abbreviate_with_offset_310).
param(p_max_width_485, 3, m_assert_abbreviate_with_offset_310).
throw(m_test_get_levenshtein_distance__null_string_315, exception).
throw(m_test_get_levenshtein_distance__string_null_316, exception).
throw(m_test_get_levenshtein_distance__null_string_int_318, exception).
throw(m_test_get_levenshtein_distance__string_null_int_319, exception).
throw(m_test_get_levenshtein_distance__string_string_negative_int_320, exception).
throw(m_test_get_jaro_winkler_distance__null_null_322, exception).
throw(m_test_get_jaro_winkler_distance__string_null_323, exception).
throw(m_test_get_jaro_winkler_distance__null_string_324, exception).
throw(m_test_get_fuzzy_distance_325, exception).
throw(m_test_get_fuzzy_distance__null_null_null_326, exception).
throw(m_test_get_fuzzy_distance__string_null_loclae_327, exception).
throw(m_test_get_fuzzy_distance__null_string_locale_328, exception).
throw(m_test_get_fuzzy_distance__string_string_null_329, exception).
throw(m_test_to_string_344, unsupported_encoding_exception).
throw(m_test_escape_surrogate_pairs_345, exception).
throw(m_test_unescape_surrogate_pairs_347, exception).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang3.StringUtilsTest', 'testRemovePattern').
trace(trace_1, failure_1, 'getTextLength', line(java_util_regex_matcher, 1769), failure_1, non_target).
trace(trace_2, trace_1, 'reset', line(java_util_regex_matcher, 415), failure_1, non_target).
trace(trace_3, trace_2, 'Matcher', line(java_util_regex_matcher, 252), failure_1, non_target).
trace(trace_4, trace_3, 'matcher', line(java_util_regex_pattern, 1134), failure_1, non_target).
trace(trace_5, trace_4, m_replace_pattern_122, line(string_utils_1, 4694), failure_1, target).
trace(trace_6, trace_5, m_remove_pattern_126, line(string_utils_1, 4710), failure_1, target).
trace(trace_7, trace_6, m_test_remove_pattern_267, line(string_utils_test_1, 1213), failure_1, target).
trace(trace_8, trace_7, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_9, trace_8, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_10, trace_9, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_11, trace_10, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_12, trace_11, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_14, trace_13, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_15, trace_14, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_16, trace_15, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_17, trace_16, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_18, trace_17, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_19, trace_18, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_20, trace_19, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_21, trace_20, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_22, trace_21, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_23, trace_22, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_24, trace_23, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_25, trace_24, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_26, trace_25, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_27, trace_26, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_28, trace_27, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_29, trace_28, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.lang3.StringUtilsTest', 'testReplacePattern').
trace(trace_30, failure_2, 'getTextLength', line(java_util_regex_matcher, 1769), failure_2, non_target).
trace(trace_31, trace_30, 'reset', line(java_util_regex_matcher, 415), failure_2, non_target).
trace(trace_32, trace_31, 'Matcher', line(java_util_regex_matcher, 252), failure_2, non_target).
trace(trace_33, trace_32, 'matcher', line(java_util_regex_pattern, 1134), failure_2, non_target).
trace(trace_34, trace_33, m_replace_pattern_122, line(string_utils_1, 4694), failure_2, target).
trace(trace_35, trace_34, m_test_replace_pattern_265, line(string_utils_test_1, 1192), failure_2, target).
trace(trace_36, trace_35, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_2, non_target).
trace(trace_37, trace_36, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_2, non_target).
trace(trace_38, trace_37, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_2, non_target).
trace(trace_39, trace_38, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_40, trace_39, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_2, non_target).
trace(trace_41, trace_40, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_2, non_target).
trace(trace_42, trace_41, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_2, non_target).
trace(trace_43, trace_42, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_2, non_target).
trace(trace_44, trace_43, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_45, trace_44, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_2, non_target).
trace(trace_46, trace_45, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_2, non_target).
trace(trace_47, trace_46, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_2, non_target).
trace(trace_48, trace_47, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_2, non_target).
trace(trace_49, trace_48, 'run', line(org_junit_runners_parent_runner_4, 331), failure_2, non_target).
trace(trace_50, trace_49, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_2, non_target).
trace(trace_51, trace_50, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_2, non_target).
trace(trace_52, trace_51, 'access$100', line(org_junit_runners_parent_runner, 66), failure_2, non_target).
trace(trace_53, trace_52, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_2, non_target).
trace(trace_54, trace_53, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_55, trace_54, 'run', line(org_junit_runners_parent_runner, 413), failure_2, non_target).
trace(trace_56, trace_55, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_57, trace_56, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(p_source_262, null, line(string_utils_1, 4694)).
val(p_source_265, null, line(string_utils_1, 4710)).



%%% End of Facts