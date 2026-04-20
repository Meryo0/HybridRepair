%%% Logic-FL Facts
:- style_check(-discontiguous).

%str_matcher_1 - org.apache.commons.lang3.text.StrMatcher
assign(f_comma_matcher_249, str_matcher_1_expr1, line(str_matcher_1, 38)).
method_invoc(str_matcher_1_expr1, m_char_matcher_267, line(str_matcher_1, 38)).
argument(str_matcher_1_literal1, 1, str_matcher_1_expr1).
assign(f_tab_matcher_250, str_matcher_1_expr2, line(str_matcher_1, 42)).
method_invoc(str_matcher_1_expr2, m_char_matcher_267, line(str_matcher_1, 42)).
argument(str_matcher_1_literal2, 1, str_matcher_1_expr2).
assign(f_space_matcher_251, str_matcher_1_expr3, line(str_matcher_1, 46)).
method_invoc(str_matcher_1_expr3, m_char_matcher_267, line(str_matcher_1, 46)).
argument(str_matcher_1_literal3, 1, str_matcher_1_expr3).
assign(f_split_matcher_252, str_matcher_1_expr4, line(str_matcher_1, 51)).
method_invoc(str_matcher_1_expr4, m_char_set_matcher_268, line(str_matcher_1, 51)).
argument(str_matcher_1_expr5, 1, str_matcher_1_expr4).
method_invoc(str_matcher_1_expr5, m_to_char_array_269, line(str_matcher_1, 51)).
ref(str_matcher_1_literal4, str_matcher_1_expr5, line(str_matcher_1, 51)).
assign(f_trim_matcher_253, str_matcher_1_expr6, line(str_matcher_1, 55)).
method_invoc(str_matcher_1_expr6, m_trim_matcher_270, line(str_matcher_1, 55)).
assign(f_single_quote_matcher_254, str_matcher_1_expr7, line(str_matcher_1, 59)).
method_invoc(str_matcher_1_expr7, m_char_matcher_267, line(str_matcher_1, 59)).
argument(str_matcher_1_literal5, 1, str_matcher_1_expr7).
assign(f_double_quote_matcher_255, str_matcher_1_expr8, line(str_matcher_1, 63)).
method_invoc(str_matcher_1_expr8, m_char_matcher_267, line(str_matcher_1, 63)).
argument(str_matcher_1_literal6, 1, str_matcher_1_expr8).
assign(f_quote_matcher_256, str_matcher_1_expr9, line(str_matcher_1, 67)).
method_invoc(str_matcher_1_expr9, m_char_set_matcher_268, line(str_matcher_1, 67)).
argument(str_matcher_1_expr10, 1, str_matcher_1_expr9).
method_invoc(str_matcher_1_expr10, m_to_char_array_269, line(str_matcher_1, 67)).
ref(str_matcher_1_literal7, str_matcher_1_expr10, line(str_matcher_1, 67)).
assign(f_none_matcher_257, str_matcher_1_expr11, line(str_matcher_1, 71)).
method_invoc(str_matcher_1_expr11, m_no_matcher_271, line(str_matcher_1, 71)).
param(p_ch_258, 1, m_char_matcher_281).
param(p_chars_259, 1, m_char_set_matcher_282).
param(p_chars_260, 1, m_char_set_matcher_283).
param(p_str_261, 1, m_string_matcher_284).
method_invoc(str_matcher_1_expr12, m_object_3, line(str_matcher_1, 217)).
param(p_buffer_262, 1, m_is_match_286).
param(p_pos_263, 2, m_is_match_286).
param(p_buffer_start_264, 3, m_is_match_286).
param(p_buffer_end_265, 4, m_is_match_286).
param(p_buffer_266, 1, m_is_match_287).
param(p_pos_267, 2, m_is_match_287).
param(p_chars_268, 1, m_char_set_matcher_268).
method_invoc(str_matcher_1_expr13, m_str_matcher_285, line(str_matcher_1, 285)).
assign(f_chars_269, str_matcher_1_expr16, line(str_matcher_1, 286)).
method_invoc(str_matcher_1_expr16, m_clone_288, line(str_matcher_1, 286)).
ref(p_chars_268, str_matcher_1_expr16, line(str_matcher_1, 286)).
method_invoc(str_matcher_1_expr18, m_sort_289, line(str_matcher_1, 287)).
argument(f_chars_269, 1, str_matcher_1_expr18).
ref(t_arrays_2, str_matcher_1_expr18, line(str_matcher_1, 287)).
param(p_buffer_270, 1, m_is_match_290).
param(p_pos_271, 2, m_is_match_290).
param(p_buffer_start_272, 3, m_is_match_290).
param(p_buffer_end_273, 4, m_is_match_290).
param(p_ch_274, 1, m_char_matcher_267).
method_invoc(str_matcher_1_expr21, m_str_matcher_285, line(str_matcher_1, 319)).
assign(f_ch_275, p_ch_274, line(str_matcher_1, 320)).
param(p_buffer_276, 1, m_is_match_291).
param(p_pos_277, 2, m_is_match_291).
param(p_buffer_start_278, 3, m_is_match_291).
param(p_buffer_end_279, 4, m_is_match_291).
param(p_str_280, 1, m_string_matcher_292).
param(p_buffer_281, 1, m_is_match_293).
param(p_pos_282, 2, m_is_match_293).
param(p_buffer_start_283, 3, m_is_match_293).
param(p_buffer_end_284, 4, m_is_match_293).
method_invoc(str_matcher_1_expr25, m_str_matcher_285, line(str_matcher_1, 390)).
param(p_buffer_285, 1, m_is_match_294).
param(p_pos_286, 2, m_is_match_294).
param(p_buffer_start_287, 3, m_is_match_294).
param(p_buffer_end_288, 4, m_is_match_294).
method_invoc(str_matcher_1_expr26, m_str_matcher_285, line(str_matcher_1, 418)).
param(p_buffer_289, 1, m_is_match_295).
param(p_pos_290, 2, m_is_match_295).
param(p_buffer_start_291, 3, m_is_match_295).
param(p_buffer_end_292, 4, m_is_match_295).

%str_builder_1 - org.apache.commons.lang3.text.StrBuilder
method_invoc(str_builder_1_expr1, m_str_builder_2, line(str_builder_1, 105)).
argument(f_capacity_1, 1, str_builder_1_expr1).
param(p_initial_capacity_2, 1, m_str_builder_2).
method_invoc(str_builder_1_expr2, m_object_3, line(str_builder_1, 114)).
assign(f_buffer_3, str_builder_1_expr5, line(str_builder_1, 118)).
param(p_str_4, 1, m_str_builder_4).
param(p_new_line_5, 1, m_set_new_line_text_6).
param(p_null_text_6, 1, m_set_null_text_8).
param(p_length_7, 1, m_set_length_10).
param(p_capacity_8, 1, m_ensure_capacity_12).
param(p_index_9, 1, m_char_at_17).
param(p_index_10, 1, m_set_char_at_18).
param(p_ch_11, 2, m_set_char_at_18).
param(p_index_12, 1, m_delete_char_at_19).
param(p_start_index_13, 1, m_to_char_array_21).
param(p_end_index_14, 2, m_to_char_array_21).
param(p_destination_15, 1, m_get_chars_22).
param(p_start_index_16, 1, m_get_chars_23).
param(p_end_index_17, 2, m_get_chars_23).
param(p_destination_18, 3, m_get_chars_23).
param(p_destination_index_19, 4, m_get_chars_23).
param(p_readable_20, 1, m_read_from_24).
throw(m_read_from_24, ioexception).
param(p_obj_21, 1, m_append_27).
param(p_seq_22, 1, m_append_28).
param(p_seq_23, 1, m_append_29).
param(p_start_index_24, 2, m_append_29).
param(p_length_25, 3, m_append_29).
param(p_str_26, 1, m_append_30).
param(p_str_27, 1, m_append_31).
param(p_start_index_28, 2, m_append_31).
param(p_length_29, 3, m_append_31).
param(p_format_30, 1, m_append_32).
param(p_objs_31, 2, m_append_32).
param(p_buf_32, 1, m_append_33).
param(p_buf_33, 1, m_append_34).
param(p_start_index_34, 2, m_append_34).
param(p_length_35, 3, m_append_34).
param(p_str_36, 1, m_append_35).
param(p_str_37, 1, m_append_36).
param(p_start_index_38, 2, m_append_36).
param(p_length_39, 3, m_append_36).
param(p_str_40, 1, m_append_37).
param(p_str_41, 1, m_append_38).
param(p_start_index_42, 2, m_append_38).
param(p_length_43, 3, m_append_38).
param(p_str_44, 1, m_append_39).
param(p_str_45, 1, m_append_40).
param(p_start_index_46, 2, m_append_40).
param(p_length_47, 3, m_append_40).
param(p_chars_48, 1, m_append_41).
param(p_chars_49, 1, m_append_42).
param(p_start_index_50, 2, m_append_42).
param(p_length_51, 3, m_append_42).
param(p_value_52, 1, m_append_43).
param(p_ch_53, 1, m_append_44).
param(p_value_54, 1, m_append_45).
param(p_value_55, 1, m_append_46).
param(p_value_56, 1, m_append_47).
param(p_value_57, 1, m_append_48).
param(p_obj_58, 1, m_appendln_49).
param(p_str_59, 1, m_appendln_50).
param(p_str_60, 1, m_appendln_51).
param(p_start_index_61, 2, m_appendln_51).
param(p_length_62, 3, m_appendln_51).
param(p_format_63, 1, m_appendln_52).
param(p_objs_64, 2, m_appendln_52).
param(p_str_65, 1, m_appendln_53).
param(p_str_66, 1, m_appendln_54).
param(p_str_67, 1, m_appendln_55).
param(p_start_index_68, 2, m_appendln_55).
param(p_length_69, 3, m_appendln_55).
param(p_str_70, 1, m_appendln_56).
param(p_start_index_71, 2, m_appendln_56).
param(p_length_72, 3, m_appendln_56).
param(p_str_73, 1, m_appendln_57).
param(p_str_74, 1, m_appendln_58).
param(p_start_index_75, 2, m_appendln_58).
param(p_length_76, 3, m_appendln_58).
param(p_chars_77, 1, m_appendln_59).
param(p_chars_78, 1, m_appendln_60).
param(p_start_index_79, 2, m_appendln_60).
param(p_length_80, 3, m_appendln_60).
param(p_value_81, 1, m_appendln_61).
param(p_ch_82, 1, m_appendln_62).
param(p_value_83, 1, m_appendln_63).
param(p_value_84, 1, m_appendln_64).
param(p_value_85, 1, m_appendln_65).
param(p_value_86, 1, m_appendln_66).
param(p_array_87, 1, m_append_all_67).
param(p_iterable_88, 1, m_append_all_68).
param(p_it_89, 1, m_append_all_69).
param(p_array_90, 1, m_append_with_separators_70).
param(p_separator_91, 2, m_append_with_separators_70).
param(p_iterable_92, 1, m_append_with_separators_71).
param(p_separator_93, 2, m_append_with_separators_71).
param(p_it_94, 1, m_append_with_separators_72).
param(p_separator_95, 2, m_append_with_separators_72).
param(p_separator_96, 1, m_append_separator_73).
param(p_standard_97, 1, m_append_separator_74).
param(p_default_if_empty_98, 2, m_append_separator_74).
param(p_separator_99, 1, m_append_separator_75).
param(p_standard_100, 1, m_append_separator_76).
param(p_default_if_empty_101, 2, m_append_separator_76).
param(p_separator_102, 1, m_append_separator_77).
param(p_loop_index_103, 2, m_append_separator_77).
param(p_separator_104, 1, m_append_separator_78).
param(p_loop_index_105, 2, m_append_separator_78).
param(p_length_106, 1, m_append_padding_79).
param(p_pad_char_107, 2, m_append_padding_79).
param(p_obj_108, 1, m_append_fixed_width_pad_left_80).
param(p_width_109, 2, m_append_fixed_width_pad_left_80).
param(p_pad_char_110, 3, m_append_fixed_width_pad_left_80).
param(p_value_111, 1, m_append_fixed_width_pad_left_81).
param(p_width_112, 2, m_append_fixed_width_pad_left_81).
param(p_pad_char_113, 3, m_append_fixed_width_pad_left_81).
param(p_obj_114, 1, m_append_fixed_width_pad_right_82).
param(p_width_115, 2, m_append_fixed_width_pad_right_82).
param(p_pad_char_116, 3, m_append_fixed_width_pad_right_82).
param(p_value_117, 1, m_append_fixed_width_pad_right_83).
param(p_width_118, 2, m_append_fixed_width_pad_right_83).
param(p_pad_char_119, 3, m_append_fixed_width_pad_right_83).
param(p_index_120, 1, m_insert_84).
param(p_obj_121, 2, m_insert_84).
param(p_index_122, 1, m_insert_85).
param(p_str_123, 2, m_insert_85).
param(p_index_124, 1, m_insert_86).
param(p_chars_125, 2, m_insert_86).
param(p_index_126, 1, m_insert_87).
param(p_chars_127, 2, m_insert_87).
param(p_offset_128, 3, m_insert_87).
param(p_length_129, 4, m_insert_87).
param(p_index_130, 1, m_insert_88).
param(p_value_131, 2, m_insert_88).
param(p_index_132, 1, m_insert_89).
param(p_value_133, 2, m_insert_89).
param(p_index_134, 1, m_insert_90).
param(p_value_135, 2, m_insert_90).
param(p_index_136, 1, m_insert_91).
param(p_value_137, 2, m_insert_91).
param(p_index_138, 1, m_insert_92).
param(p_value_139, 2, m_insert_92).
param(p_index_140, 1, m_insert_93).
param(p_value_141, 2, m_insert_93).
param(p_start_index_142, 1, m_delete_impl_94).
param(p_end_index_143, 2, m_delete_impl_94).
param(p_len_144, 3, m_delete_impl_94).
param(p_start_index_145, 1, m_delete_95).
param(p_end_index_146, 2, m_delete_95).
param(p_ch_147, 1, m_delete_all_96).
param(p_ch_148, 1, m_delete_first_97).
param(p_str_149, 1, m_delete_all_98).
param(p_str_150, 1, m_delete_first_99).
param(p_matcher_151, 1, m_delete_all_100).
param(p_matcher_152, 1, m_delete_first_101).
param(p_start_index_153, 1, m_replace_impl_102).
param(p_end_index_154, 2, m_replace_impl_102).
param(p_remove_len_155, 3, m_replace_impl_102).
param(p_insert_str_156, 4, m_replace_impl_102).
param(p_insert_len_157, 5, m_replace_impl_102).
param(p_start_index_158, 1, m_replace_103).
param(p_end_index_159, 2, m_replace_103).
param(p_replace_str_160, 3, m_replace_103).
param(p_search_161, 1, m_replace_all_104).
param(p_replace_162, 2, m_replace_all_104).
param(p_search_163, 1, m_replace_first_105).
param(p_replace_164, 2, m_replace_first_105).
param(p_search_str_165, 1, m_replace_all_106).
param(p_replace_str_166, 2, m_replace_all_106).
param(p_search_str_167, 1, m_replace_first_107).
param(p_replace_str_168, 2, m_replace_first_107).
param(p_matcher_169, 1, m_replace_all_108).
param(p_replace_str_170, 2, m_replace_all_108).
param(p_matcher_171, 1, m_replace_first_109).
param(p_replace_str_172, 2, m_replace_first_109).
param(p_matcher_173, 1, m_replace_110).
param(p_replace_str_174, 2, m_replace_110).
param(p_start_index_175, 3, m_replace_110).
param(p_end_index_176, 4, m_replace_110).
param(p_replace_count_177, 5, m_replace_110).
param(p_matcher_178, 1, m_replace_impl_111).
param(p_replace_str_179, 2, m_replace_impl_111).
param(p_from_180, 3, m_replace_impl_111).
param(p_to_181, 4, m_replace_impl_111).
param(p_replace_count_182, 5, m_replace_impl_111).
param(p_str_183, 1, m_starts_with_114).
param(p_str_184, 1, m_ends_with_115).
param(p_start_index_185, 1, m_sub_sequence_116).
param(p_end_index_186, 2, m_sub_sequence_116).
param(p_start_187, 1, m_substring_117).
param(p_start_index_188, 1, m_substring_118).
param(p_end_index_189, 2, m_substring_118).
param(p_length_190, 1, m_left_string_119).
param(p_length_191, 1, m_right_string_120).
param(p_index_192, 1, m_mid_string_121).
param(p_length_193, 2, m_mid_string_121).
param(p_ch_194, 1, m_contains_122).
param(p_str_195, 1, m_contains_123).
param(p_matcher_196, 1, m_contains_124).
param(p_ch_197, 1, m_index_of_125).
param(p_ch_198, 1, m_index_of_126).
param(p_start_index_199, 2, m_index_of_126).
param(p_str_200, 1, m_index_of_127).
param(p_str_201, 1, m_index_of_128).
param(p_start_index_202, 2, m_index_of_128).
param(p_matcher_203, 1, m_index_of_129).
param(p_matcher_204, 1, m_index_of_130).
param(p_start_index_205, 2, m_index_of_130).
param(p_ch_206, 1, m_last_index_of_131).
param(p_ch_207, 1, m_last_index_of_132).
param(p_start_index_208, 2, m_last_index_of_132).
param(p_str_209, 1, m_last_index_of_133).
param(p_str_210, 1, m_last_index_of_134).
param(p_start_index_211, 2, m_last_index_of_134).
param(p_matcher_212, 1, m_last_index_of_135).
param(p_matcher_213, 1, m_last_index_of_136).
param(p_start_index_214, 2, m_last_index_of_136).
param(p_appendable_215, 1, m_append_to_140).
throw(m_append_to_140, ioexception).
param(p_other_216, 1, m_equals_ignore_case_141).
param(p_other_217, 1, m_equals_142).
ref(p_other_217, q_size_1, line(str_builder_1, 2822)).
param(p_obj_219, 1, m_equals_143).
param(p_start_index_220, 1, m_validate_range_149).
param(p_end_index_221, 2, m_validate_range_149).
param(p_index_222, 1, m_validate_index_150).
param(p_chars_223, 1, m_tokenize_152).
param(p_offset_224, 2, m_tokenize_152).
param(p_count_225, 3, m_tokenize_152).
param(p_b_226, 1, m_read_157).
param(p_off_227, 2, m_read_157).
param(p_len_228, 3, m_read_157).
param(p_n_229, 1, m_skip_158).
param(p_read_ahead_limit_230, 1, m_mark_161).
param(p_c_231, 1, m_write_166).
param(p_cbuf_232, 1, m_write_167).
param(p_cbuf_233, 1, m_write_168).
param(p_off_234, 2, m_write_168).
param(p_len_235, 3, m_write_168).
param(p_str_236, 1, m_write_169).
param(p_str_237, 1, m_write_170).
param(p_off_238, 2, m_write_170).
param(p_len_239, 3, m_write_170).

%str_builder_test_1 - org.apache.commons.lang3.text.StrBuilderTest
throw(m_test_read_from_reader_173, exception).
throw(m_test_read_from_reader_appends_to_end_174, exception).
throw(m_test_read_from_char_buffer_175, exception).
throw(m_test_read_from_char_buffer_appends_to_end_176, exception).
throw(m_test_read_from_readable_177, exception).
throw(m_test_read_from_readable_appends_to_end_178, exception).
param(p_src_240, 1, m_mock_readable_179).
param(p_cb_241, 1, m_read_180).
throw(m_read_180, ioexception).
assign(f_a_number_matcher_242, str_builder_test_1_expr1, line(str_builder_test_1, 1644)).
method_invoc(str_builder_test_1_expr1, m__243, line(str_builder_test_1, 1644)).
param(p_buffer_243, 1, m_is_match_244).
param(p_pos_244, 2, m_is_match_244).
param(p_buffer_start_245, 3, m_is_match_244).
param(p_buffer_end_246, 4, m_is_match_244).
throw(m_test_as_tokenizer_245, exception).
throw(m_test_as_reader_246, exception).
throw(m_test_as_writer_247, exception).
throw(m_test__lang_1131_equals_with_null_str_builder_250, exception).
assign(v_sb_247, str_builder_test_1_expr2, line(str_builder_test_1, 1855)).
method_invoc(str_builder_test_1_expr2, m_str_builder_1, line(str_builder_test_1, 1855)).
assign(v_other_248, str_builder_test_1_literal1, line(str_builder_test_1, 1856)).
method_invoc(str_builder_test_1_expr3, m_assert_false_251, line(str_builder_test_1, 1857)).
argument(str_builder_test_1_expr4, 1, str_builder_test_1_expr3).
method_invoc(str_builder_test_1_expr4, m_equals_142, line(str_builder_test_1, 1857)).
throw(str_builder_test_1_expr4, null_pointer_exception, line(str_builder_test_1, 1857)).
argument(v_other_248, 1, str_builder_test_1_expr4).
ref(v_sb_247, str_builder_test_1_expr4, line(str_builder_test_1, 1857)).
throw(m_test_append_to_writer_263, exception).
throw(m_test_append_to_string_builder_264, exception).
throw(m_test_append_to_string_buffer_265, exception).
throw(m_test_append_to_char_buffer_266, exception).
throw(str_builder_test_1_expr3, null_pointer_exception, line(str_builder_test_1, 1857)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang3.text.StrBuilderTest', 'test_LANG_1131_EqualsWithNullStrBuilder').
trace(trace_1, failure_1, m_equals_142, line(str_builder_1, 2822), failure_1, target).
trace(trace_2, trace_1, m_test__lang_1131_equals_with_null_str_builder_250, line(str_builder_test_1, 1857), failure_1, target).
trace(trace_3, trace_2, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_4, trace_3, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_7, trace_6, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_8, trace_7, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_9, trace_8, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_10, trace_9, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_11, trace_10, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_12, trace_11, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_13, trace_12, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_14, trace_13, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_15, trace_14, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_17, trace_16, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_18, trace_17, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_19, trace_18, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_20, trace_19, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_21, trace_20, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_22, trace_21, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_23, trace_22, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_24, trace_23, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_other_217, null, line(str_builder_1, 2822)).
val(v_other_248, null, line(str_builder_test_1, 1857)).



%%% End of Facts