%%% Logic-FL Facts
:- style_check(-discontiguous).

%str_matcher_1 - org.apache.commons.lang.text.StrMatcher
assign(f_comma_matcher_227, str_matcher_1_expr1, line(str_matcher_1, 37)).
method_invoc(str_matcher_1_expr1, m_char_matcher_240, line(str_matcher_1, 37)).
argument(str_matcher_1_literal1, 1, str_matcher_1_expr1).
assign(f_tab_matcher_228, str_matcher_1_expr2, line(str_matcher_1, 41)).
method_invoc(str_matcher_1_expr2, m_char_matcher_240, line(str_matcher_1, 41)).
argument(str_matcher_1_literal2, 1, str_matcher_1_expr2).
assign(f_space_matcher_229, str_matcher_1_expr3, line(str_matcher_1, 45)).
method_invoc(str_matcher_1_expr3, m_char_matcher_240, line(str_matcher_1, 45)).
argument(str_matcher_1_literal3, 1, str_matcher_1_expr3).
assign(f_split_matcher_230, str_matcher_1_expr4, line(str_matcher_1, 50)).
method_invoc(str_matcher_1_expr4, m_char_set_matcher_241, line(str_matcher_1, 50)).
argument(str_matcher_1_expr5, 1, str_matcher_1_expr4).
method_invoc(str_matcher_1_expr5, m_to_char_array_242, line(str_matcher_1, 50)).
ref(str_matcher_1_literal4, str_matcher_1_expr5, line(str_matcher_1, 50)).
assign(f_trim_matcher_231, str_matcher_1_expr6, line(str_matcher_1, 54)).
method_invoc(str_matcher_1_expr6, m_trim_matcher_243, line(str_matcher_1, 54)).
assign(f_single_quote_matcher_232, str_matcher_1_expr7, line(str_matcher_1, 58)).
method_invoc(str_matcher_1_expr7, m_char_matcher_240, line(str_matcher_1, 58)).
argument(str_matcher_1_literal5, 1, str_matcher_1_expr7).
assign(f_double_quote_matcher_233, str_matcher_1_expr8, line(str_matcher_1, 62)).
method_invoc(str_matcher_1_expr8, m_char_matcher_240, line(str_matcher_1, 62)).
argument(str_matcher_1_literal6, 1, str_matcher_1_expr8).
assign(f_quote_matcher_234, str_matcher_1_expr9, line(str_matcher_1, 66)).
method_invoc(str_matcher_1_expr9, m_char_set_matcher_241, line(str_matcher_1, 66)).
argument(str_matcher_1_expr10, 1, str_matcher_1_expr9).
method_invoc(str_matcher_1_expr10, m_to_char_array_242, line(str_matcher_1, 66)).
ref(str_matcher_1_literal7, str_matcher_1_expr10, line(str_matcher_1, 66)).
assign(f_none_matcher_235, str_matcher_1_expr11, line(str_matcher_1, 70)).
method_invoc(str_matcher_1_expr11, m_no_matcher_244, line(str_matcher_1, 70)).
param(p_ch_236, 1, m_char_matcher_254).
param(p_chars_237, 1, m_char_set_matcher_255).
param(p_chars_238, 1, m_char_set_matcher_256).
param(p_str_239, 1, m_string_matcher_257).
method_invoc(str_matcher_1_expr12, m_object_3, line(str_matcher_1, 216)).
param(p_buffer_240, 1, m_is_match_259).
param(p_pos_241, 2, m_is_match_259).
param(p_buffer_start_242, 3, m_is_match_259).
param(p_buffer_end_243, 4, m_is_match_259).
param(p_buffer_244, 1, m_is_match_260).
param(p_pos_245, 2, m_is_match_260).
param(p_chars_246, 1, m_char_set_matcher_241).
method_invoc(str_matcher_1_expr13, m_str_matcher_258, line(str_matcher_1, 284)).
assign(f_chars_247, str_matcher_1_expr16, line(str_matcher_1, 285)).
assign(str_matcher_1_expr16, str_matcher_1_expr18, line(str_matcher_1, 285)).
method_invoc(str_matcher_1_expr18, m_clone_261, line(str_matcher_1, 285)).
ref(p_chars_246, str_matcher_1_expr18, line(str_matcher_1, 285)).
method_invoc(str_matcher_1_expr19, m_sort_262, line(str_matcher_1, 286)).
argument(f_chars_247, 1, str_matcher_1_expr19).
ref(t_arrays_1, str_matcher_1_expr19, line(str_matcher_1, 286)).
param(p_buffer_248, 1, m_is_match_263).
param(p_pos_249, 2, m_is_match_263).
param(p_buffer_start_250, 3, m_is_match_263).
param(p_buffer_end_251, 4, m_is_match_263).
param(p_ch_252, 1, m_char_matcher_240).
method_invoc(str_matcher_1_expr22, m_str_matcher_258, line(str_matcher_1, 317)).
assign(f_ch_253, p_ch_252, line(str_matcher_1, 318)).
param(p_buffer_254, 1, m_is_match_264).
param(p_pos_255, 2, m_is_match_264).
param(p_buffer_start_256, 3, m_is_match_264).
param(p_buffer_end_257, 4, m_is_match_264).
param(p_str_258, 1, m_string_matcher_265).
param(p_buffer_259, 1, m_is_match_266).
param(p_pos_260, 2, m_is_match_266).
param(p_buffer_start_261, 3, m_is_match_266).
param(p_buffer_end_262, 4, m_is_match_266).
method_invoc(str_matcher_1_expr26, m_str_matcher_258, line(str_matcher_1, 386)).
param(p_buffer_263, 1, m_is_match_267).
param(p_pos_264, 2, m_is_match_267).
param(p_buffer_start_265, 3, m_is_match_267).
param(p_buffer_end_266, 4, m_is_match_267).
method_invoc(str_matcher_1_expr27, m_str_matcher_258, line(str_matcher_1, 413)).
param(p_buffer_267, 1, m_is_match_268).
param(p_pos_268, 2, m_is_match_268).
param(p_buffer_start_269, 3, m_is_match_268).
param(p_buffer_end_270, 4, m_is_match_268).

%str_builder_1 - org.apache.commons.lang.text.StrBuilder
method_invoc(str_builder_1_expr1, m_str_builder_2, line(str_builder_1, 98)).
argument(f_capacity_1, 1, str_builder_1_expr1).
param(p_initial_capacity_2, 1, m_str_builder_2).
method_invoc(str_builder_1_expr2, m_object_3, line(str_builder_1, 107)).
assign(f_buffer_3, str_builder_1_expr5, line(str_builder_1, 111)).
param(p_str_4, 1, m_str_builder_4).
param(p_new_line_5, 1, m_set_new_line_text_6).
return(f_null_text_6, m_get_null_text_7, line(str_builder_1, 158)).
param(p_null_text_7, 1, m_set_null_text_8).
param(p_length_8, 1, m_set_length_10).
param(p_capacity_9, 1, m_ensure_capacity_12).
ref(f_buffer_3, q_length_1, line(str_builder_1, 228)).
return(str_builder_1_expr7, m_ensure_capacity_12, line(str_builder_1, 233)).
param(p_index_10, 1, m_char_at_17).
param(p_index_11, 1, m_set_char_at_18).
param(p_ch_12, 2, m_set_char_at_18).
param(p_index_13, 1, m_delete_char_at_19).
param(p_start_index_14, 1, m_to_char_array_21).
param(p_end_index_15, 2, m_to_char_array_21).
param(p_destination_16, 1, m_get_chars_22).
param(p_start_index_17, 1, m_get_chars_23).
param(p_end_index_18, 2, m_get_chars_23).
param(p_destination_19, 3, m_get_chars_23).
param(p_destination_index_20, 4, m_get_chars_23).
param(p_obj_21, 1, m_append_26).
param(p_str_22, 1, m_append_27).
param(p_str_23, 1, m_append_28).
param(p_start_index_24, 2, m_append_28).
param(p_length_25, 3, m_append_28).
param(p_str_26, 1, m_append_29).
param(p_str_27, 1, m_append_30).
param(p_start_index_28, 2, m_append_30).
param(p_length_29, 3, m_append_30).
param(p_str_30, 1, m_append_31).
param(p_str_31, 1, m_append_32).
param(p_start_index_32, 2, m_append_32).
param(p_length_33, 3, m_append_32).
param(p_chars_34, 1, m_append_33).
param(p_chars_35, 1, m_append_34).
param(p_start_index_36, 2, m_append_34).
param(p_length_37, 3, m_append_34).
param(p_value_38, 1, m_append_35).
param(p_ch_39, 1, m_append_36).
param(p_value_40, 1, m_append_37).
param(p_value_41, 1, m_append_38).
param(p_value_42, 1, m_append_39).
param(p_value_43, 1, m_append_40).
param(p_obj_44, 1, m_appendln_41).
param(p_str_45, 1, m_appendln_42).
param(p_str_46, 1, m_appendln_43).
param(p_start_index_47, 2, m_appendln_43).
param(p_length_48, 3, m_appendln_43).
param(p_str_49, 1, m_appendln_44).
param(p_str_50, 1, m_appendln_45).
param(p_start_index_51, 2, m_appendln_45).
param(p_length_52, 3, m_appendln_45).
param(p_str_53, 1, m_appendln_46).
param(p_str_54, 1, m_appendln_47).
param(p_start_index_55, 2, m_appendln_47).
param(p_length_56, 3, m_appendln_47).
param(p_chars_57, 1, m_appendln_48).
param(p_chars_58, 1, m_appendln_49).
param(p_start_index_59, 2, m_appendln_49).
param(p_length_60, 3, m_appendln_49).
param(p_value_61, 1, m_appendln_50).
param(p_ch_62, 1, m_appendln_51).
param(p_value_63, 1, m_appendln_52).
param(p_value_64, 1, m_appendln_53).
param(p_value_65, 1, m_appendln_54).
param(p_value_66, 1, m_appendln_55).
param(p_array_67, 1, m_append_all_56).
param(p_coll_68, 1, m_append_all_57).
param(p_it_69, 1, m_append_all_58).
param(p_array_70, 1, m_append_with_separators_59).
param(p_separator_71, 2, m_append_with_separators_59).
param(p_coll_72, 1, m_append_with_separators_60).
param(p_separator_73, 2, m_append_with_separators_60).
param(p_it_74, 1, m_append_with_separators_61).
param(p_separator_75, 2, m_append_with_separators_61).
param(p_separator_76, 1, m_append_separator_62).
param(p_separator_77, 1, m_append_separator_63).
param(p_separator_78, 1, m_append_separator_64).
param(p_loop_index_79, 2, m_append_separator_64).
param(p_separator_80, 1, m_append_separator_65).
param(p_loop_index_81, 2, m_append_separator_65).
param(p_length_82, 1, m_append_padding_66).
param(p_pad_char_83, 2, m_append_padding_66).
param(p_obj_84, 1, m_append_fixed_width_pad_left_67).
param(p_width_85, 2, m_append_fixed_width_pad_left_67).
param(p_pad_char_86, 3, m_append_fixed_width_pad_left_67).
method_invoc(str_builder_1_expr9, m_ensure_capacity_12, line(str_builder_1, 1184)).
argument(str_builder_1_expr10, 1, str_builder_1_expr9).
assign(v_str_88, str_builder_1_expr11, line(str_builder_1, 1185)).
assign(str_builder_1_expr11, str_builder_1_expr12, line(str_builder_1, 1185)).
cond_expr(str_builder_1_expr13, str_builder_1_expr14, str_builder_1_expr15, line(str_builder_1, 1185)).
method_invoc(str_builder_1_expr14, m_get_null_text_7, line(str_builder_1, 1185)).
method_invoc(str_builder_1_expr15, m_to_string_68, line(str_builder_1, 1185)).
ref(p_obj_84, str_builder_1_expr15, line(str_builder_1, 1185)).
assign(v_str_len_89, str_builder_1_expr16, line(str_builder_1, 1186)).
method_invoc(str_builder_1_expr16, m_length_69, line(str_builder_1, 1186)).
ref(v_str_88, str_builder_1_expr16, line(str_builder_1, 1186)).
param(p_value_90, 1, m_append_fixed_width_pad_left_70).
param(p_width_91, 2, m_append_fixed_width_pad_left_70).
param(p_pad_char_92, 3, m_append_fixed_width_pad_left_70).
param(p_obj_93, 1, m_append_fixed_width_pad_right_71).
param(p_width_94, 2, m_append_fixed_width_pad_right_71).
param(p_pad_char_95, 3, m_append_fixed_width_pad_right_71).
method_invoc(str_builder_1_expr18, m_ensure_capacity_12, line(str_builder_1, 1228)).
argument(str_builder_1_expr19, 1, str_builder_1_expr18).
assign(v_str_96, str_builder_1_expr20, line(str_builder_1, 1229)).
assign(str_builder_1_expr20, str_builder_1_expr21, line(str_builder_1, 1229)).
cond_expr(str_builder_1_expr22, str_builder_1_expr23, str_builder_1_expr24, line(str_builder_1, 1229)).
method_invoc(str_builder_1_expr23, m_get_null_text_7, line(str_builder_1, 1229)).
method_invoc(str_builder_1_expr24, m_to_string_68, line(str_builder_1, 1229)).
ref(p_obj_93, str_builder_1_expr24, line(str_builder_1, 1229)).
assign(v_str_len_97, str_builder_1_expr25, line(str_builder_1, 1230)).
method_invoc(str_builder_1_expr25, m_length_69, line(str_builder_1, 1230)).
ref(v_str_96, str_builder_1_expr25, line(str_builder_1, 1230)).
param(p_value_98, 1, m_append_fixed_width_pad_right_72).
param(p_width_99, 2, m_append_fixed_width_pad_right_72).
param(p_pad_char_100, 3, m_append_fixed_width_pad_right_72).
param(p_index_101, 1, m_insert_73).
param(p_obj_102, 2, m_insert_73).
param(p_index_103, 1, m_insert_74).
param(p_str_104, 2, m_insert_74).
param(p_index_105, 1, m_insert_75).
param(p_chars_106, 2, m_insert_75).
param(p_index_107, 1, m_insert_76).
param(p_chars_108, 2, m_insert_76).
param(p_offset_109, 3, m_insert_76).
param(p_length_110, 4, m_insert_76).
param(p_index_111, 1, m_insert_77).
param(p_value_112, 2, m_insert_77).
param(p_index_113, 1, m_insert_78).
param(p_value_114, 2, m_insert_78).
param(p_index_115, 1, m_insert_79).
param(p_value_116, 2, m_insert_79).
param(p_index_117, 1, m_insert_80).
param(p_value_118, 2, m_insert_80).
param(p_index_119, 1, m_insert_81).
param(p_value_120, 2, m_insert_81).
param(p_index_121, 1, m_insert_82).
param(p_value_122, 2, m_insert_82).
param(p_start_index_123, 1, m_delete_impl_83).
param(p_end_index_124, 2, m_delete_impl_83).
param(p_len_125, 3, m_delete_impl_83).
param(p_start_index_126, 1, m_delete_84).
param(p_end_index_127, 2, m_delete_84).
param(p_ch_128, 1, m_delete_all_85).
param(p_ch_129, 1, m_delete_first_86).
param(p_str_130, 1, m_delete_all_87).
param(p_str_131, 1, m_delete_first_88).
param(p_matcher_132, 1, m_delete_all_89).
param(p_matcher_133, 1, m_delete_first_90).
param(p_start_index_134, 1, m_replace_impl_91).
param(p_end_index_135, 2, m_replace_impl_91).
param(p_remove_len_136, 3, m_replace_impl_91).
param(p_insert_str_137, 4, m_replace_impl_91).
param(p_insert_len_138, 5, m_replace_impl_91).
param(p_start_index_139, 1, m_replace_92).
param(p_end_index_140, 2, m_replace_92).
param(p_replace_str_141, 3, m_replace_92).
param(p_search_142, 1, m_replace_all_93).
param(p_replace_143, 2, m_replace_all_93).
param(p_search_144, 1, m_replace_first_94).
param(p_replace_145, 2, m_replace_first_94).
param(p_search_str_146, 1, m_replace_all_95).
param(p_replace_str_147, 2, m_replace_all_95).
param(p_search_str_148, 1, m_replace_first_96).
param(p_replace_str_149, 2, m_replace_first_96).
param(p_matcher_150, 1, m_replace_all_97).
param(p_replace_str_151, 2, m_replace_all_97).
param(p_matcher_152, 1, m_replace_first_98).
param(p_replace_str_153, 2, m_replace_first_98).
param(p_matcher_154, 1, m_replace_99).
param(p_replace_str_155, 2, m_replace_99).
param(p_start_index_156, 3, m_replace_99).
param(p_end_index_157, 4, m_replace_99).
param(p_replace_count_158, 5, m_replace_99).
param(p_matcher_159, 1, m_replace_impl_100).
param(p_replace_str_160, 2, m_replace_impl_100).
param(p_from_161, 3, m_replace_impl_100).
param(p_to_162, 4, m_replace_impl_100).
param(p_replace_count_163, 5, m_replace_impl_100).
param(p_str_164, 1, m_starts_with_103).
param(p_str_165, 1, m_ends_with_104).
param(p_start_166, 1, m_substring_105).
param(p_start_index_167, 1, m_substring_106).
param(p_end_index_168, 2, m_substring_106).
param(p_length_169, 1, m_left_string_107).
param(p_length_170, 1, m_right_string_108).
param(p_index_171, 1, m_mid_string_109).
param(p_length_172, 2, m_mid_string_109).
param(p_ch_173, 1, m_contains_110).
param(p_str_174, 1, m_contains_111).
param(p_matcher_175, 1, m_contains_112).
param(p_ch_176, 1, m_index_of_113).
param(p_ch_177, 1, m_index_of_114).
param(p_start_index_178, 2, m_index_of_114).
param(p_str_179, 1, m_index_of_115).
param(p_str_180, 1, m_index_of_116).
param(p_start_index_181, 2, m_index_of_116).
param(p_matcher_182, 1, m_index_of_117).
param(p_matcher_183, 1, m_index_of_118).
param(p_start_index_184, 2, m_index_of_118).
param(p_ch_185, 1, m_last_index_of_119).
param(p_ch_186, 1, m_last_index_of_120).
param(p_start_index_187, 2, m_last_index_of_120).
param(p_str_188, 1, m_last_index_of_121).
param(p_str_189, 1, m_last_index_of_122).
param(p_start_index_190, 2, m_last_index_of_122).
param(p_matcher_191, 1, m_last_index_of_123).
param(p_matcher_192, 1, m_last_index_of_124).
param(p_start_index_193, 2, m_last_index_of_124).
param(p_other_194, 1, m_equals_ignore_case_128).
param(p_other_195, 1, m_equals_129).
param(p_obj_196, 1, m_equals_130).
param(p_start_index_197, 1, m_validate_range_134).
param(p_end_index_198, 2, m_validate_range_134).
param(p_index_199, 1, m_validate_index_135).
param(p_chars_200, 1, m_tokenize_137).
param(p_offset_201, 2, m_tokenize_137).
param(p_count_202, 3, m_tokenize_137).
param(p_b_203, 1, m_read_142).
param(p_off_204, 2, m_read_142).
param(p_len_205, 3, m_read_142).
param(p_n_206, 1, m_skip_143).
param(p_read_ahead_limit_207, 1, m_mark_146).
param(p_c_208, 1, m_write_151).
param(p_cbuf_209, 1, m_write_152).
param(p_cbuf_210, 1, m_write_153).
param(p_off_211, 2, m_write_153).
param(p_len_212, 3, m_write_153).
param(p_str_213, 1, m_write_154).
param(p_str_214, 1, m_write_155).
param(p_off_215, 2, m_write_155).
param(p_len_216, 3, m_write_155).

%str_builder_test_1 - org.apache.commons.lang.text.StrBuilderTest
param(p_args_217, 1, m_main_156).
assign(v_suite_218, str_builder_test_1_expr1, line(str_builder_test_1, 54)).
method_invoc(str_builder_test_1_expr1, m_test_suite_158, line(str_builder_test_1, 54)).
argument(str_builder_test_1_expr2, 1, str_builder_test_1_expr1).
method_invoc(str_builder_test_1_expr3, m_set_name_159, line(str_builder_test_1, 55)).
argument(str_builder_test_1_literal1, 1, str_builder_test_1_expr3).
ref(v_suite_218, str_builder_test_1_expr3, line(str_builder_test_1, 55)).
return(v_suite_218, m_suite_157, line(str_builder_test_1, 56)).
param(p_name_219, 1, m_str_builder_test_160).
method_invoc(str_builder_test_1_expr4, m_test_case_161, line(str_builder_test_1, 66)).
argument(p_name_219, 1, str_builder_test_1_expr4).
assign(f_a_number_matcher_220, str_builder_test_1_expr5, line(str_builder_test_1, 1498)).
method_invoc(str_builder_test_1_expr5, m__225, line(str_builder_test_1, 1498)).
param(p_buffer_221, 1, m_is_match_226).
param(p_pos_222, 2, m_is_match_226).
param(p_buffer_start_223, 3, m_is_match_226).
param(p_buffer_end_224, 4, m_is_match_226).
throw(m_test_as_tokenizer_227, exception).
throw(m_test_as_reader_228, exception).
throw(m_test_as_writer_229, exception).
assign(v_sb_225, str_builder_test_1_expr6, line(str_builder_test_1, 1754)).
method_invoc(str_builder_test_1_expr6, m_str_builder_1, line(str_builder_test_1, 1754)).
method_invoc(str_builder_test_1_expr7, m_append_fixed_width_pad_right_71, line(str_builder_test_1, 1755)).
throw(str_builder_test_1_expr7, null_pointer_exception, line(str_builder_test_1, 1755)).
argument(str_builder_test_1_literal2, 1, str_builder_test_1_expr7).
argument(str_builder_test_1_literal3, 2, str_builder_test_1_expr7).
argument(str_builder_test_1_literal4, 3, str_builder_test_1_expr7).
ref(v_sb_225, str_builder_test_1_expr7, line(str_builder_test_1, 1755)).
assign(v_sb_226, str_builder_test_1_expr8, line(str_builder_test_1, 1760)).
method_invoc(str_builder_test_1_expr8, m_str_builder_1, line(str_builder_test_1, 1760)).
method_invoc(str_builder_test_1_expr9, m_append_fixed_width_pad_left_67, line(str_builder_test_1, 1761)).
throw(str_builder_test_1_expr9, null_pointer_exception, line(str_builder_test_1, 1761)).
argument(str_builder_test_1_literal5, 1, str_builder_test_1_expr9).
argument(str_builder_test_1_literal6, 2, str_builder_test_1_expr9).
argument(str_builder_test_1_literal7, 3, str_builder_test_1_expr9).
ref(v_sb_226, str_builder_test_1_expr9, line(str_builder_test_1, 1761)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang.text.StrBuilderTest', 'testLang412Left').
trace(trace_1, failure_1, m_append_fixed_width_pad_left_67, line(str_builder_1, 1186), failure_1, target).
trace(trace_2, trace_1, m_test_lang412_left_239, line(str_builder_test_1, 1761), failure_1, target).
trace(trace_3, trace_2, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_4, trace_3, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
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
test_failure(failure_2, 'org.apache.commons.lang.text.StrBuilderTest', 'testLang412Right').
trace(trace_18, failure_2, m_append_fixed_width_pad_right_71, line(str_builder_1, 1230), failure_2, target).
trace(trace_19, trace_18, m_test_lang412_right_238, line(str_builder_test_1, 1755), failure_2, target).
trace(trace_20, trace_19, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_2, non_target).
trace(trace_21, trace_20, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_2, non_target).
trace(trace_22, trace_21, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_2, non_target).
trace(trace_23, trace_22, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_24, trace_23, 'runTest', line(junit_framework_test_case, 177), failure_2, non_target).
trace(trace_25, trace_24, 'runBare', line(junit_framework_test_case, 142), failure_2, non_target).
trace(trace_26, trace_25, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_27, trace_26, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_28, trace_27, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_29, trace_28, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_30, trace_29, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_31, trace_30, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_32, trace_31, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_33, trace_32, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_34, trace_33, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(str_builder_1_expr11, null, line(str_builder_1, 1185)).
val(str_builder_1_expr15, null, line(str_builder_1, 1185)).
val(p_obj_84, null, line(str_builder_1, 1185)).
val(str_builder_1_expr12, null, line(str_builder_1, 1185)).
val(str_builder_1_expr14, null, line(str_builder_1, 1185)).
val(v_str_88, null, line(str_builder_1, 1186)).
val(str_builder_1_expr21, null, line(str_builder_1, 1229)).
val(p_obj_93, null, line(str_builder_1, 1229)).
val(str_builder_1_expr20, null, line(str_builder_1, 1229)).
val(str_builder_1_expr24, null, line(str_builder_1, 1229)).
val(str_builder_1_expr23, null, line(str_builder_1, 1229)).
val(v_str_96, null, line(str_builder_1, 1230)).



%%% End of Facts