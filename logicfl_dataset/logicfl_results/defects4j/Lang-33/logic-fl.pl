%%% Logic-FL Facts
:- style_check(-discontiguous).

%class_utils_test_1 - org.apache.commons.lang3.ClassUtilsTest
param(p_name_458, 1, m_class_utils_test_246).
method_invoc(class_utils_test_1_expr1, m_test_case_247, line(class_utils_test_1, 43)).
argument(p_name_458, 1, class_utils_test_1_expr1).
throw(m_test_is_assignable__class_array__class_array_260, exception).
throw(m_test_is_assignable__class_array__class_array__autoboxing_261, exception).
throw(m_test_is_assignable__class_array__class_array__no_autoboxing_262, exception).
throw(m_test_is_assignable_263, exception).
throw(m_test_is_assignable__autoboxing_264, exception).
throw(m_test_is_assignable__no_autoboxing_265, exception).
throw(m_test_is_assignable__widening_266, exception).
throw(m_test_is_assignable__default_unboxing__widening_267, exception).
throw(m_test_is_assignable__unboxing__widening_268, exception).
throw(m_test_get_class_class_not_found_277, exception).
throw(m_test_get_class_invalid_arguments_278, exception).
throw(m_test_with_interleaving_whitespace_279, class_not_found_exception).
throw(m_test_get_class_by_normal_name_arrays_280, class_not_found_exception).
throw(m_test_get_class_by_normal_name_arrays2_d_281, class_not_found_exception).
throw(m_test_get_class_with_array_classes2_d_282, exception).
throw(m_test_get_class_with_array_classes_283, exception).
throw(m_test_get_class_raw_primitives_284, class_not_found_exception).
param(p_c_459, 1, m_assert_get_class_returns_class_285).
throw(m_assert_get_class_returns_class_285, exception).
param(p_class_name_460, 1, m_assert_get_class_throws_exception_286).
param(p_exception_type_461, 2, m_assert_get_class_throws_exception_286).
throw(m_assert_get_class_throws_exception_286, exception).
param(p_class_name_462, 1, m_assert_get_class_throws_null_pointer_exception_287).
throw(m_assert_get_class_throws_null_pointer_exception_287, exception).
param(p_class_name_463, 1, m_assert_get_class_throws_class_not_found_288).
throw(m_assert_get_class_throws_class_not_found_288, exception).
throw(m_test_show_java_bug_289, exception).
throw(m_test_get_public_method_290, exception).
method_invoc(class_utils_test_1_expr2, m_assert_null_292, line(class_utils_test_1, 903)).
argument(class_utils_test_1_expr3, 1, class_utils_test_1_expr2).
method_invoc(class_utils_test_1_expr3, m_to_class_237, line(class_utils_test_1, 903)).
argument(class_utils_test_1_literal1, 1, class_utils_test_1_expr3).
ref(t_class_utils_12, class_utils_test_1_expr3, line(class_utils_test_1, 903)).
method_invoc(class_utils_test_1_expr4, m_assert_same_293, line(class_utils_test_1, 905)).
argument(q_empty_class_array_12, 1, class_utils_test_1_expr4).
argument(class_utils_test_1_expr5, 2, class_utils_test_1_expr4).
ref(t_array_utils_11, q_empty_class_array_12, line(class_utils_test_1, 905)).
method_invoc(class_utils_test_1_expr5, m_to_class_237, line(class_utils_test_1, 905)).
argument(q_empty_object_array_12, 1, class_utils_test_1_expr5).
ref(t_class_utils_12, class_utils_test_1_expr5, line(class_utils_test_1, 905)).
ref(t_array_utils_11, q_empty_object_array_12, line(class_utils_test_1, 905)).
method_invoc(class_utils_test_1_expr6, m_assert_true_294, line(class_utils_test_1, 907)).
argument(class_utils_test_1_expr7, 1, class_utils_test_1_expr6).
method_invoc(class_utils_test_1_expr7, m_equals_295, line(class_utils_test_1, 907)).
argument(class_utils_test_1_expr8, 1, class_utils_test_1_expr7).
argument(class_utils_test_1_expr9, 2, class_utils_test_1_expr7).
ref(t_arrays_13, class_utils_test_1_expr7, line(class_utils_test_1, 907)).
method_invoc(class_utils_test_1_expr14, m_assert_true_294, line(class_utils_test_1, 910)).
argument(class_utils_test_1_expr15, 1, class_utils_test_1_expr14).
method_invoc(class_utils_test_1_expr15, m_equals_295, line(class_utils_test_1, 910)).
argument(class_utils_test_1_expr16, 1, class_utils_test_1_expr15).
argument(class_utils_test_1_expr17, 2, class_utils_test_1_expr15).
ref(t_arrays_13, class_utils_test_1_expr15, line(class_utils_test_1, 910)).

%array_utils_1 - org.apache.commons.lang3.ArrayUtils
assign(f_empty_object_array_1, array_utils_1_expr1, line(array_utils_1, 55)).
assign(f_empty_class_array_2, array_utils_1_expr2, line(array_utils_1, 59)).
assign(f_empty_string_array_3, array_utils_1_expr3, line(array_utils_1, 63)).
assign(f_empty_long_array_4, array_utils_1_expr4, line(array_utils_1, 67)).
assign(f_empty_long_object_array_5, array_utils_1_expr5, line(array_utils_1, 71)).
assign(f_empty_int_array_6, array_utils_1_expr6, line(array_utils_1, 75)).
assign(f_empty_integer_object_array_7, array_utils_1_expr7, line(array_utils_1, 79)).
assign(f_empty_short_array_8, array_utils_1_expr8, line(array_utils_1, 83)).
assign(f_empty_short_object_array_9, array_utils_1_expr9, line(array_utils_1, 87)).
assign(f_empty_byte_array_10, array_utils_1_expr10, line(array_utils_1, 91)).
assign(f_empty_byte_object_array_11, array_utils_1_expr11, line(array_utils_1, 95)).
assign(f_empty_double_array_12, array_utils_1_expr12, line(array_utils_1, 99)).
assign(f_empty_double_object_array_13, array_utils_1_expr13, line(array_utils_1, 103)).
assign(f_empty_float_array_14, array_utils_1_expr14, line(array_utils_1, 107)).
assign(f_empty_float_object_array_15, array_utils_1_expr15, line(array_utils_1, 111)).
assign(f_empty_boolean_array_16, array_utils_1_expr16, line(array_utils_1, 115)).
assign(f_empty_boolean_object_array_17, array_utils_1_expr17, line(array_utils_1, 119)).
assign(f_empty_char_array_18, array_utils_1_expr18, line(array_utils_1, 123)).
assign(f_empty_character_object_array_19, array_utils_1_expr19, line(array_utils_1, 127)).
param(p_array_20, 1, m_to_string_2).
param(p_array_21, 1, m_to_string_3).
param(p_string_if_null_22, 2, m_to_string_3).
param(p_array_1_23, 1, m_is_equals_4).
param(p_array_2_24, 2, m_is_equals_4).
param(p_array_25, 1, m_to_map_5).
param(p_items_26, 1, m_to_array_6).
param(p_array_27, 1, m_clone_7).
param(p_array_28, 1, m_clone_8).
param(p_array_29, 1, m_clone_9).
param(p_array_30, 1, m_clone_10).
param(p_array_31, 1, m_clone_11).
param(p_array_32, 1, m_clone_12).
param(p_array_33, 1, m_clone_13).
param(p_array_34, 1, m_clone_14).
param(p_array_35, 1, m_clone_15).
param(p_array_36, 1, m_null_to_empty_16).
param(p_array_37, 1, m_null_to_empty_17).
param(p_array_38, 1, m_null_to_empty_18).
param(p_array_39, 1, m_null_to_empty_19).
param(p_array_40, 1, m_null_to_empty_20).
param(p_array_41, 1, m_null_to_empty_21).
param(p_array_42, 1, m_null_to_empty_22).
param(p_array_43, 1, m_null_to_empty_23).
param(p_array_44, 1, m_null_to_empty_24).
param(p_array_45, 1, m_null_to_empty_25).
param(p_array_46, 1, m_null_to_empty_26).
param(p_array_47, 1, m_null_to_empty_27).
param(p_array_48, 1, m_null_to_empty_28).
param(p_array_49, 1, m_null_to_empty_29).
param(p_array_50, 1, m_null_to_empty_30).
param(p_array_51, 1, m_null_to_empty_31).
param(p_array_52, 1, m_null_to_empty_32).
param(p_array_53, 1, m_null_to_empty_33).
param(p_array_54, 1, m_subarray_34).
param(p_start_index_inclusive_55, 2, m_subarray_34).
param(p_end_index_exclusive_56, 3, m_subarray_34).
param(p_array_57, 1, m_subarray_35).
param(p_start_index_inclusive_58, 2, m_subarray_35).
param(p_end_index_exclusive_59, 3, m_subarray_35).
param(p_array_60, 1, m_subarray_36).
param(p_start_index_inclusive_61, 2, m_subarray_36).
param(p_end_index_exclusive_62, 3, m_subarray_36).
param(p_array_63, 1, m_subarray_37).
param(p_start_index_inclusive_64, 2, m_subarray_37).
param(p_end_index_exclusive_65, 3, m_subarray_37).
param(p_array_66, 1, m_subarray_38).
param(p_start_index_inclusive_67, 2, m_subarray_38).
param(p_end_index_exclusive_68, 3, m_subarray_38).
param(p_array_69, 1, m_subarray_39).
param(p_start_index_inclusive_70, 2, m_subarray_39).
param(p_end_index_exclusive_71, 3, m_subarray_39).
param(p_array_72, 1, m_subarray_40).
param(p_start_index_inclusive_73, 2, m_subarray_40).
param(p_end_index_exclusive_74, 3, m_subarray_40).
param(p_array_75, 1, m_subarray_41).
param(p_start_index_inclusive_76, 2, m_subarray_41).
param(p_end_index_exclusive_77, 3, m_subarray_41).
param(p_array_78, 1, m_subarray_42).
param(p_start_index_inclusive_79, 2, m_subarray_42).
param(p_end_index_exclusive_80, 3, m_subarray_42).
param(p_array_1_81, 1, m_is_same_length_43).
param(p_array_2_82, 2, m_is_same_length_43).
param(p_array_1_83, 1, m_is_same_length_44).
param(p_array_2_84, 2, m_is_same_length_44).
param(p_array_1_85, 1, m_is_same_length_45).
param(p_array_2_86, 2, m_is_same_length_45).
param(p_array_1_87, 1, m_is_same_length_46).
param(p_array_2_88, 2, m_is_same_length_46).
param(p_array_1_89, 1, m_is_same_length_47).
param(p_array_2_90, 2, m_is_same_length_47).
param(p_array_1_91, 1, m_is_same_length_48).
param(p_array_2_92, 2, m_is_same_length_48).
param(p_array_1_93, 1, m_is_same_length_49).
param(p_array_2_94, 2, m_is_same_length_49).
param(p_array_1_95, 1, m_is_same_length_50).
param(p_array_2_96, 2, m_is_same_length_50).
param(p_array_1_97, 1, m_is_same_length_51).
param(p_array_2_98, 2, m_is_same_length_51).
param(p_array_99, 1, m_get_length_52).
param(p_array_1_100, 1, m_is_same_type_53).
param(p_array_2_101, 2, m_is_same_type_53).
param(p_array_102, 1, m_reverse_54).
param(p_array_103, 1, m_reverse_55).
param(p_array_104, 1, m_reverse_56).
param(p_array_105, 1, m_reverse_57).
param(p_array_106, 1, m_reverse_58).
param(p_array_107, 1, m_reverse_59).
param(p_array_108, 1, m_reverse_60).
param(p_array_109, 1, m_reverse_61).
param(p_array_110, 1, m_reverse_62).
param(p_array_111, 1, m_index_of_63).
param(p_object_to_find_112, 2, m_index_of_63).
param(p_array_113, 1, m_index_of_64).
param(p_object_to_find_114, 2, m_index_of_64).
param(p_start_index_115, 3, m_index_of_64).
param(p_array_116, 1, m_last_index_of_65).
param(p_object_to_find_117, 2, m_last_index_of_65).
param(p_array_118, 1, m_last_index_of_66).
param(p_object_to_find_119, 2, m_last_index_of_66).
param(p_start_index_120, 3, m_last_index_of_66).
param(p_array_121, 1, m_contains_67).
param(p_object_to_find_122, 2, m_contains_67).
param(p_array_123, 1, m_index_of_68).
param(p_value_to_find_124, 2, m_index_of_68).
param(p_array_125, 1, m_index_of_69).
param(p_value_to_find_126, 2, m_index_of_69).
param(p_start_index_127, 3, m_index_of_69).
param(p_array_128, 1, m_last_index_of_70).
param(p_value_to_find_129, 2, m_last_index_of_70).
param(p_array_130, 1, m_last_index_of_71).
param(p_value_to_find_131, 2, m_last_index_of_71).
param(p_start_index_132, 3, m_last_index_of_71).
param(p_array_133, 1, m_contains_72).
param(p_value_to_find_134, 2, m_contains_72).
param(p_array_135, 1, m_index_of_73).
param(p_value_to_find_136, 2, m_index_of_73).
param(p_array_137, 1, m_index_of_74).
param(p_value_to_find_138, 2, m_index_of_74).
param(p_start_index_139, 3, m_index_of_74).
param(p_array_140, 1, m_last_index_of_75).
param(p_value_to_find_141, 2, m_last_index_of_75).
param(p_array_142, 1, m_last_index_of_76).
param(p_value_to_find_143, 2, m_last_index_of_76).
param(p_start_index_144, 3, m_last_index_of_76).
param(p_array_145, 1, m_contains_77).
param(p_value_to_find_146, 2, m_contains_77).
param(p_array_147, 1, m_index_of_78).
param(p_value_to_find_148, 2, m_index_of_78).
param(p_array_149, 1, m_index_of_79).
param(p_value_to_find_150, 2, m_index_of_79).
param(p_start_index_151, 3, m_index_of_79).
param(p_array_152, 1, m_last_index_of_80).
param(p_value_to_find_153, 2, m_last_index_of_80).
param(p_array_154, 1, m_last_index_of_81).
param(p_value_to_find_155, 2, m_last_index_of_81).
param(p_start_index_156, 3, m_last_index_of_81).
param(p_array_157, 1, m_contains_82).
param(p_value_to_find_158, 2, m_contains_82).
param(p_array_159, 1, m_index_of_83).
param(p_value_to_find_160, 2, m_index_of_83).
param(p_array_161, 1, m_index_of_84).
param(p_value_to_find_162, 2, m_index_of_84).
param(p_start_index_163, 3, m_index_of_84).
param(p_array_164, 1, m_last_index_of_85).
param(p_value_to_find_165, 2, m_last_index_of_85).
param(p_array_166, 1, m_last_index_of_86).
param(p_value_to_find_167, 2, m_last_index_of_86).
param(p_start_index_168, 3, m_last_index_of_86).
param(p_array_169, 1, m_contains_87).
param(p_value_to_find_170, 2, m_contains_87).
param(p_array_171, 1, m_index_of_88).
param(p_value_to_find_172, 2, m_index_of_88).
param(p_array_173, 1, m_index_of_89).
param(p_value_to_find_174, 2, m_index_of_89).
param(p_start_index_175, 3, m_index_of_89).
param(p_array_176, 1, m_last_index_of_90).
param(p_value_to_find_177, 2, m_last_index_of_90).
param(p_array_178, 1, m_last_index_of_91).
param(p_value_to_find_179, 2, m_last_index_of_91).
param(p_start_index_180, 3, m_last_index_of_91).
param(p_array_181, 1, m_contains_92).
param(p_value_to_find_182, 2, m_contains_92).
param(p_array_183, 1, m_index_of_93).
param(p_value_to_find_184, 2, m_index_of_93).
param(p_array_185, 1, m_index_of_94).
param(p_value_to_find_186, 2, m_index_of_94).
param(p_tolerance_187, 3, m_index_of_94).
param(p_array_188, 1, m_index_of_95).
param(p_value_to_find_189, 2, m_index_of_95).
param(p_start_index_190, 3, m_index_of_95).
param(p_array_191, 1, m_index_of_96).
param(p_value_to_find_192, 2, m_index_of_96).
param(p_start_index_193, 3, m_index_of_96).
param(p_tolerance_194, 4, m_index_of_96).
param(p_array_195, 1, m_last_index_of_97).
param(p_value_to_find_196, 2, m_last_index_of_97).
param(p_array_197, 1, m_last_index_of_98).
param(p_value_to_find_198, 2, m_last_index_of_98).
param(p_tolerance_199, 3, m_last_index_of_98).
param(p_array_200, 1, m_last_index_of_99).
param(p_value_to_find_201, 2, m_last_index_of_99).
param(p_start_index_202, 3, m_last_index_of_99).
param(p_array_203, 1, m_last_index_of_100).
param(p_value_to_find_204, 2, m_last_index_of_100).
param(p_start_index_205, 3, m_last_index_of_100).
param(p_tolerance_206, 4, m_last_index_of_100).
param(p_array_207, 1, m_contains_101).
param(p_value_to_find_208, 2, m_contains_101).
param(p_array_209, 1, m_contains_102).
param(p_value_to_find_210, 2, m_contains_102).
param(p_tolerance_211, 3, m_contains_102).
param(p_array_212, 1, m_index_of_103).
param(p_value_to_find_213, 2, m_index_of_103).
param(p_array_214, 1, m_index_of_104).
param(p_value_to_find_215, 2, m_index_of_104).
param(p_start_index_216, 3, m_index_of_104).
param(p_array_217, 1, m_last_index_of_105).
param(p_value_to_find_218, 2, m_last_index_of_105).
param(p_array_219, 1, m_last_index_of_106).
param(p_value_to_find_220, 2, m_last_index_of_106).
param(p_start_index_221, 3, m_last_index_of_106).
param(p_array_222, 1, m_contains_107).
param(p_value_to_find_223, 2, m_contains_107).
param(p_array_224, 1, m_index_of_108).
param(p_value_to_find_225, 2, m_index_of_108).
param(p_array_226, 1, m_index_of_109).
param(p_value_to_find_227, 2, m_index_of_109).
param(p_start_index_228, 3, m_index_of_109).
param(p_array_229, 1, m_last_index_of_110).
param(p_value_to_find_230, 2, m_last_index_of_110).
param(p_array_231, 1, m_last_index_of_111).
param(p_value_to_find_232, 2, m_last_index_of_111).
param(p_start_index_233, 3, m_last_index_of_111).
param(p_array_234, 1, m_contains_112).
param(p_value_to_find_235, 2, m_contains_112).
param(p_array_236, 1, m_to_primitive_113).
param(p_array_237, 1, m_to_primitive_114).
param(p_value_for_null_238, 2, m_to_primitive_114).
param(p_array_239, 1, m_to_object_115).
param(p_array_240, 1, m_to_primitive_116).
param(p_array_241, 1, m_to_primitive_117).
param(p_value_for_null_242, 2, m_to_primitive_117).
param(p_array_243, 1, m_to_object_118).
param(p_array_244, 1, m_to_primitive_119).
param(p_array_245, 1, m_to_primitive_120).
param(p_value_for_null_246, 2, m_to_primitive_120).
param(p_array_247, 1, m_to_object_121).
param(p_array_248, 1, m_to_primitive_122).
param(p_array_249, 1, m_to_primitive_123).
param(p_value_for_null_250, 2, m_to_primitive_123).
param(p_array_251, 1, m_to_object_124).
param(p_array_252, 1, m_to_primitive_125).
param(p_array_253, 1, m_to_primitive_126).
param(p_value_for_null_254, 2, m_to_primitive_126).
param(p_array_255, 1, m_to_object_127).
param(p_array_256, 1, m_to_primitive_128).
param(p_array_257, 1, m_to_primitive_129).
param(p_value_for_null_258, 2, m_to_primitive_129).
param(p_array_259, 1, m_to_object_130).
param(p_array_260, 1, m_to_primitive_131).
param(p_array_261, 1, m_to_primitive_132).
param(p_value_for_null_262, 2, m_to_primitive_132).
param(p_array_263, 1, m_to_object_133).
param(p_array_264, 1, m_to_primitive_134).
param(p_array_265, 1, m_to_primitive_135).
param(p_value_for_null_266, 2, m_to_primitive_135).
param(p_array_267, 1, m_to_object_136).
param(p_array_268, 1, m_is_empty_137).
param(p_array_269, 1, m_is_empty_138).
param(p_array_270, 1, m_is_empty_139).
param(p_array_271, 1, m_is_empty_140).
param(p_array_272, 1, m_is_empty_141).
param(p_array_273, 1, m_is_empty_142).
param(p_array_274, 1, m_is_empty_143).
param(p_array_275, 1, m_is_empty_144).
param(p_array_276, 1, m_is_empty_145).
param(p_array_277, 1, m_is_not_empty_146).
param(p_array_278, 1, m_is_not_empty_147).
param(p_array_279, 1, m_is_not_empty_148).
param(p_array_280, 1, m_is_not_empty_149).
param(p_array_281, 1, m_is_not_empty_150).
param(p_array_282, 1, m_is_not_empty_151).
param(p_array_283, 1, m_is_not_empty_152).
param(p_array_284, 1, m_is_not_empty_153).
param(p_array_285, 1, m_is_not_empty_154).
param(p_array_1_286, 1, m_add_all_155).
param(p_array_2_287, 2, m_add_all_155).
param(p_array_1_288, 1, m_add_all_156).
param(p_array_2_289, 2, m_add_all_156).
param(p_array_1_290, 1, m_add_all_157).
param(p_array_2_291, 2, m_add_all_157).
param(p_array_1_292, 1, m_add_all_158).
param(p_array_2_293, 2, m_add_all_158).
param(p_array_1_294, 1, m_add_all_159).
param(p_array_2_295, 2, m_add_all_159).
param(p_array_1_296, 1, m_add_all_160).
param(p_array_2_297, 2, m_add_all_160).
param(p_array_1_298, 1, m_add_all_161).
param(p_array_2_299, 2, m_add_all_161).
param(p_array_1_300, 1, m_add_all_162).
param(p_array_2_301, 2, m_add_all_162).
param(p_array_1_302, 1, m_add_all_163).
param(p_array_2_303, 2, m_add_all_163).
param(p_array_304, 1, m_add_164).
param(p_element_305, 2, m_add_164).
param(p_array_306, 1, m_add_165).
param(p_element_307, 2, m_add_165).
param(p_array_308, 1, m_add_166).
param(p_element_309, 2, m_add_166).
param(p_array_310, 1, m_add_167).
param(p_element_311, 2, m_add_167).
param(p_array_312, 1, m_add_168).
param(p_element_313, 2, m_add_168).
param(p_array_314, 1, m_add_169).
param(p_element_315, 2, m_add_169).
param(p_array_316, 1, m_add_170).
param(p_element_317, 2, m_add_170).
param(p_array_318, 1, m_add_171).
param(p_element_319, 2, m_add_171).
param(p_array_320, 1, m_add_172).
param(p_element_321, 2, m_add_172).
param(p_array_322, 1, m_copy_array_grow1_173).
param(p_new_array_component_type_323, 2, m_copy_array_grow1_173).
param(p_array_324, 1, m_add_174).
param(p_index_325, 2, m_add_174).
param(p_element_326, 3, m_add_174).
param(p_array_327, 1, m_add_175).
param(p_index_328, 2, m_add_175).
param(p_element_329, 3, m_add_175).
param(p_array_330, 1, m_add_176).
param(p_index_331, 2, m_add_176).
param(p_element_332, 3, m_add_176).
param(p_array_333, 1, m_add_177).
param(p_index_334, 2, m_add_177).
param(p_element_335, 3, m_add_177).
param(p_array_336, 1, m_add_178).
param(p_index_337, 2, m_add_178).
param(p_element_338, 3, m_add_178).
param(p_array_339, 1, m_add_179).
param(p_index_340, 2, m_add_179).
param(p_element_341, 3, m_add_179).
param(p_array_342, 1, m_add_180).
param(p_index_343, 2, m_add_180).
param(p_element_344, 3, m_add_180).
param(p_array_345, 1, m_add_181).
param(p_index_346, 2, m_add_181).
param(p_element_347, 3, m_add_181).
param(p_array_348, 1, m_add_182).
param(p_index_349, 2, m_add_182).
param(p_element_350, 3, m_add_182).
param(p_array_351, 1, m_add_183).
param(p_index_352, 2, m_add_183).
param(p_element_353, 3, m_add_183).
param(p_clss_354, 4, m_add_183).
param(p_array_355, 1, m_remove_184).
param(p_index_356, 2, m_remove_184).
param(p_array_357, 1, m_remove_element_185).
param(p_element_358, 2, m_remove_element_185).
param(p_array_359, 1, m_remove_186).
param(p_index_360, 2, m_remove_186).
param(p_array_361, 1, m_remove_element_187).
param(p_element_362, 2, m_remove_element_187).
param(p_array_363, 1, m_remove_188).
param(p_index_364, 2, m_remove_188).
param(p_array_365, 1, m_remove_element_189).
param(p_element_366, 2, m_remove_element_189).
param(p_array_367, 1, m_remove_190).
param(p_index_368, 2, m_remove_190).
param(p_array_369, 1, m_remove_element_191).
param(p_element_370, 2, m_remove_element_191).
param(p_array_371, 1, m_remove_192).
param(p_index_372, 2, m_remove_192).
param(p_array_373, 1, m_remove_element_193).
param(p_element_374, 2, m_remove_element_193).
param(p_array_375, 1, m_remove_194).
param(p_index_376, 2, m_remove_194).
param(p_array_377, 1, m_remove_element_195).
param(p_element_378, 2, m_remove_element_195).
param(p_array_379, 1, m_remove_196).
param(p_index_380, 2, m_remove_196).
param(p_array_381, 1, m_remove_element_197).
param(p_element_382, 2, m_remove_element_197).
param(p_array_383, 1, m_remove_198).
param(p_index_384, 2, m_remove_198).
param(p_array_385, 1, m_remove_element_199).
param(p_element_386, 2, m_remove_element_199).
param(p_array_387, 1, m_remove_200).
param(p_index_388, 2, m_remove_200).
param(p_array_389, 1, m_remove_element_201).
param(p_element_390, 2, m_remove_element_201).
param(p_array_391, 1, m_remove_202).
param(p_index_392, 2, m_remove_202).

%class_utils_1 - org.apache.commons.lang3.ClassUtils
assign(f_package_separator_393, class_utils_1_expr1, line(class_utils_1, 58)).
method_invoc(class_utils_1_expr1, m_value_of_203, line(class_utils_1, 58)).
argument(f_package_separator_char_394, 1, class_utils_1_expr1).
ref(t_string_1, class_utils_1_expr1, line(class_utils_1, 58)).
assign(f_inner_class_separator_395, class_utils_1_expr2, line(class_utils_1, 68)).
method_invoc(class_utils_1_expr2, m_value_of_203, line(class_utils_1, 68)).
argument(f_inner_class_separator_char_396, 1, class_utils_1_expr2).
ref(t_string_1, class_utils_1_expr2, line(class_utils_1, 68)).
assign(f_primitive_wrapper_map_397, class_utils_1_expr3, line(class_utils_1, 73)).
method_invoc(class_utils_1_expr3, m_hash_map_204, line(class_utils_1, 73)).
method_invoc(class_utils_1_expr4, m_put_205, line(class_utils_1, 75)).
argument(q_type_1, 1, class_utils_1_expr4).
argument(class_utils_1_expr5, 2, class_utils_1_expr4).
ref(f_primitive_wrapper_map_397, class_utils_1_expr4, line(class_utils_1, 75)).
ref(t_boolean_2, q_type_1, line(class_utils_1, 75)).
method_invoc(class_utils_1_expr6, m_put_205, line(class_utils_1, 76)).
argument(q_type_2, 1, class_utils_1_expr6).
argument(class_utils_1_expr7, 2, class_utils_1_expr6).
ref(f_primitive_wrapper_map_397, class_utils_1_expr6, line(class_utils_1, 76)).
ref(t_byte_3, q_type_2, line(class_utils_1, 76)).
method_invoc(class_utils_1_expr8, m_put_205, line(class_utils_1, 77)).
argument(q_type_3, 1, class_utils_1_expr8).
argument(class_utils_1_expr9, 2, class_utils_1_expr8).
ref(f_primitive_wrapper_map_397, class_utils_1_expr8, line(class_utils_1, 77)).
ref(t_character_4, q_type_3, line(class_utils_1, 77)).
method_invoc(class_utils_1_expr10, m_put_205, line(class_utils_1, 78)).
argument(q_type_4, 1, class_utils_1_expr10).
argument(class_utils_1_expr11, 2, class_utils_1_expr10).
ref(f_primitive_wrapper_map_397, class_utils_1_expr10, line(class_utils_1, 78)).
ref(t_short_5, q_type_4, line(class_utils_1, 78)).
method_invoc(class_utils_1_expr12, m_put_205, line(class_utils_1, 79)).
argument(q_type_5, 1, class_utils_1_expr12).
argument(class_utils_1_expr13, 2, class_utils_1_expr12).
ref(f_primitive_wrapper_map_397, class_utils_1_expr12, line(class_utils_1, 79)).
ref(t_integer_6, q_type_5, line(class_utils_1, 79)).
method_invoc(class_utils_1_expr14, m_put_205, line(class_utils_1, 80)).
argument(q_type_6, 1, class_utils_1_expr14).
argument(class_utils_1_expr15, 2, class_utils_1_expr14).
ref(f_primitive_wrapper_map_397, class_utils_1_expr14, line(class_utils_1, 80)).
ref(t_long_7, q_type_6, line(class_utils_1, 80)).
method_invoc(class_utils_1_expr16, m_put_205, line(class_utils_1, 81)).
argument(q_type_7, 1, class_utils_1_expr16).
argument(class_utils_1_expr17, 2, class_utils_1_expr16).
ref(f_primitive_wrapper_map_397, class_utils_1_expr16, line(class_utils_1, 81)).
ref(t_double_8, q_type_7, line(class_utils_1, 81)).
method_invoc(class_utils_1_expr18, m_put_205, line(class_utils_1, 82)).
argument(q_type_8, 1, class_utils_1_expr18).
argument(class_utils_1_expr19, 2, class_utils_1_expr18).
ref(f_primitive_wrapper_map_397, class_utils_1_expr18, line(class_utils_1, 82)).
ref(t_float_9, q_type_8, line(class_utils_1, 82)).
method_invoc(class_utils_1_expr20, m_put_205, line(class_utils_1, 83)).
argument(q_type_9, 1, class_utils_1_expr20).
argument(q_type_10, 2, class_utils_1_expr20).
ref(f_primitive_wrapper_map_397, class_utils_1_expr20, line(class_utils_1, 83)).
ref(t_void_10, q_type_9, line(class_utils_1, 83)).
ref(t_void_10, q_type_10, line(class_utils_1, 83)).
assign(f_wrapper_primitive_map_398, class_utils_1_expr21, line(class_utils_1, 89)).
method_invoc(class_utils_1_expr21, m_hash_map_204, line(class_utils_1, 89)).
ref(class_utils_1_expr22, class_utils_1_stmt10, line(class_utils_1, 91)).
method_invoc(class_utils_1_expr22, m_key_set_206, line(class_utils_1, 91)).
ref(f_primitive_wrapper_map_397, class_utils_1_expr22, line(class_utils_1, 91)).
assign(v_wrapper_class_400, class_utils_1_expr23, line(class_utils_1, 92)).
method_invoc(class_utils_1_expr23, m_get_207, line(class_utils_1, 92)).
argument(v_primitive_class_399, 1, class_utils_1_expr23).
ref(f_primitive_wrapper_map_397, class_utils_1_expr23, line(class_utils_1, 92)).
method_invoc(class_utils_1_expr25, m_equals_208, line(class_utils_1, 93)).
argument(v_wrapper_class_400, 1, class_utils_1_expr25).
ref(v_primitive_class_399, class_utils_1_expr25, line(class_utils_1, 93)).
method_invoc(class_utils_1_expr26, m_put_205, line(class_utils_1, 94)).
argument(v_wrapper_class_400, 1, class_utils_1_expr26).
argument(v_primitive_class_399, 2, class_utils_1_expr26).
ref(f_wrapper_primitive_map_398, class_utils_1_expr26, line(class_utils_1, 94)).
assign(f_abbreviation_map_401, class_utils_1_expr27, line(class_utils_1, 102)).
method_invoc(class_utils_1_expr27, m_hash_map_204, line(class_utils_1, 102)).
assign(f_reverse_abbreviation_map_402, class_utils_1_expr28, line(class_utils_1, 107)).
method_invoc(class_utils_1_expr28, m_hash_map_204, line(class_utils_1, 107)).
param(p_primitive_403, 1, m_add_abbreviation_209).
param(p_abbreviation_404, 2, m_add_abbreviation_209).
method_invoc(class_utils_1_expr29, m_put_205, line(class_utils_1, 116)).
argument(p_primitive_403, 1, class_utils_1_expr29).
argument(p_abbreviation_404, 2, class_utils_1_expr29).
ref(f_abbreviation_map_401, class_utils_1_expr29, line(class_utils_1, 116)).
method_invoc(class_utils_1_expr30, m_put_205, line(class_utils_1, 117)).
argument(p_abbreviation_404, 1, class_utils_1_expr30).
argument(p_primitive_403, 2, class_utils_1_expr30).
ref(f_reverse_abbreviation_map_402, class_utils_1_expr30, line(class_utils_1, 117)).
method_invoc(class_utils_1_expr31, m_add_abbreviation_209, line(class_utils_1, 124)).
argument(class_utils_1_literal1, 1, class_utils_1_expr31).
argument(class_utils_1_literal2, 2, class_utils_1_expr31).
method_invoc(class_utils_1_expr32, m_add_abbreviation_209, line(class_utils_1, 125)).
argument(class_utils_1_literal3, 1, class_utils_1_expr32).
argument(class_utils_1_literal4, 2, class_utils_1_expr32).
method_invoc(class_utils_1_expr33, m_add_abbreviation_209, line(class_utils_1, 126)).
argument(class_utils_1_literal5, 1, class_utils_1_expr33).
argument(class_utils_1_literal6, 2, class_utils_1_expr33).
method_invoc(class_utils_1_expr34, m_add_abbreviation_209, line(class_utils_1, 127)).
argument(class_utils_1_literal7, 1, class_utils_1_expr34).
argument(class_utils_1_literal8, 2, class_utils_1_expr34).
method_invoc(class_utils_1_expr35, m_add_abbreviation_209, line(class_utils_1, 128)).
argument(class_utils_1_literal9, 1, class_utils_1_expr35).
argument(class_utils_1_literal10, 2, class_utils_1_expr35).
method_invoc(class_utils_1_expr36, m_add_abbreviation_209, line(class_utils_1, 129)).
argument(class_utils_1_literal11, 1, class_utils_1_expr36).
argument(class_utils_1_literal12, 2, class_utils_1_expr36).
method_invoc(class_utils_1_expr37, m_add_abbreviation_209, line(class_utils_1, 130)).
argument(class_utils_1_literal13, 1, class_utils_1_expr37).
argument(class_utils_1_literal14, 2, class_utils_1_expr37).
method_invoc(class_utils_1_expr38, m_add_abbreviation_209, line(class_utils_1, 131)).
argument(class_utils_1_literal15, 1, class_utils_1_expr38).
argument(class_utils_1_literal16, 2, class_utils_1_expr38).
param(p_object_405, 1, m_get_short_class_name_211).
param(p_value_if_null_406, 2, m_get_short_class_name_211).
param(p_cls_407, 1, m_get_short_class_name_212).
param(p_class_name_408, 1, m_get_short_class_name_213).
param(p_object_409, 1, m_get_package_name_214).
param(p_value_if_null_410, 2, m_get_package_name_214).
param(p_cls_411, 1, m_get_package_name_215).
param(p_class_name_412, 1, m_get_package_name_216).
param(p_cls_413, 1, m_get_all_superclasses_217).
param(p_cls_414, 1, m_get_all_interfaces_218).
param(p_cls_415, 1, m_get_all_interfaces_219).
param(p_interfaces_found_416, 2, m_get_all_interfaces_219).
param(p_class_names_417, 1, m_convert_class_names_to_classes_220).
param(p_classes_418, 1, m_convert_classes_to_class_names_221).
param(p_class_array_419, 1, m_is_assignable_222).
param(p_to_class_array_420, 2, m_is_assignable_222).
param(p_class_array_421, 1, m_is_assignable_223).
param(p_to_class_array_422, 2, m_is_assignable_223).
param(p_autoboxing_423, 3, m_is_assignable_223).
param(p_cls_424, 1, m_is_assignable_224).
param(p_to_class_425, 2, m_is_assignable_224).
param(p_cls_426, 1, m_is_assignable_225).
param(p_to_class_427, 2, m_is_assignable_225).
param(p_autoboxing_428, 3, m_is_assignable_225).
param(p_cls_429, 1, m_primitive_to_wrapper_226).
param(p_classes_430, 1, m_primitives_to_wrappers_227).
param(p_cls_431, 1, m_wrapper_to_primitive_228).
param(p_classes_432, 1, m_wrappers_to_primitives_229).
param(p_cls_433, 1, m_is_inner_class_230).
param(p_class_loader_434, 1, m_get_class_231).
param(p_class_name_435, 2, m_get_class_231).
param(p_initialize_436, 3, m_get_class_231).
throw(m_get_class_231, class_not_found_exception).
param(p_class_loader_437, 1, m_get_class_232).
param(p_class_name_438, 2, m_get_class_232).
throw(m_get_class_232, class_not_found_exception).
param(p_class_name_439, 1, m_get_class_233).
throw(m_get_class_233, class_not_found_exception).
param(p_class_name_440, 1, m_get_class_234).
param(p_initialize_441, 2, m_get_class_234).
throw(m_get_class_234, class_not_found_exception).
param(p_cls_442, 1, m_get_public_method_235).
param(p_method_name_443, 2, m_get_public_method_235).
param(p_parameter_types_444, 3, m_get_public_method_235).
throw(m_get_public_method_235, security_exception).
throw(m_get_public_method_235, no_such_method_exception).
param(p_class_name_445, 1, m_to_canonical_name_236).
param(p_array_446, 1, m_to_class_237).
return(class_utils_1_literal18, m_to_class_237, line(class_utils_1, 904)).
ref(p_array_446, q_length_10, line(class_utils_1, 905)).
return(q_empty_class_array_11, m_to_class_237, line(class_utils_1, 906)).
ref(t_array_utils_11, q_empty_class_array_11, line(class_utils_1, 906)).
assign(v_classes_447, class_utils_1_expr41, line(class_utils_1, 908)).
ref(p_array_446, q_length_12, line(class_utils_1, 908)).
assign(v_i_448, class_utils_1_literal20, line(class_utils_1, 909)).
ref(p_array_446, q_length_12, line(class_utils_1, 909)).
assign(class_utils_1_expr46, class_utils_1_expr47, line(class_utils_1, 910)).
ref(v_classes_447, class_utils_1_expr46, line(class_utils_1, 910)).
method_invoc(class_utils_1_expr47, m_get_class_238, line(class_utils_1, 910)).
ref(class_utils_1_expr48, class_utils_1_expr47, line(class_utils_1, 910)).
ref(p_array_446, class_utils_1_expr48, line(class_utils_1, 910)).
return(v_classes_447, m_to_class_237, line(class_utils_1, 912)).
param(p_object_449, 1, m_get_short_canonical_name_239).
param(p_value_if_null_450, 2, m_get_short_canonical_name_239).
param(p_cls_451, 1, m_get_short_canonical_name_240).
param(p_canonical_name_452, 1, m_get_short_canonical_name_241).
param(p_object_453, 1, m_get_package_canonical_name_242).
param(p_value_if_null_454, 2, m_get_package_canonical_name_242).
param(p_cls_455, 1, m_get_package_canonical_name_243).
param(p_canonical_name_456, 1, m_get_package_canonical_name_244).
param(p_class_name_457, 1, m_get_canonical_name_245).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang3.ClassUtilsTest', 'testToClass_object').
trace(trace_1, failure_1, m_to_class_237, line(class_utils_1, 910), failure_1, target).
trace(trace_2, trace_1, m_test_to_class_object_291, line(class_utils_test_1, 910), failure_1, target).
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



%%% End of Static Facts

%%% Values

val(class_utils_1_expr48, null, line(class_utils_1, 910)).
val(class_utils_test_1_expr3, null, line(class_utils_test_1, 903)).



%%% End of Facts