%%% Logic-FL Facts
:- style_check(-discontiguous).

%arg_utils_1 - org.apache.commons.math.exception.util.ArgUtils
param(p_array_15, 1, m_flatten_13).
assign(v_list_16, arg_utils_1_expr1, line(arg_utils_1, 42)).
method_invoc(arg_utils_1_expr1, m_array_list_14, line(arg_utils_1, 42)).
ref(p_array_15, arg_utils_1_stmt3, line(arg_utils_1, 44)).
ref(arg_utils_1_expr4, arg_utils_1_stmt5, line(arg_utils_1, 46)).
method_invoc(arg_utils_1_expr4, m_flatten_13, line(arg_utils_1, 46)).
argument(arg_utils_1_expr5, 1, arg_utils_1_expr4).
assign(arg_utils_1_expr5, v_o_17, line(arg_utils_1, 46)).
method_invoc(arg_utils_1_expr6, m_add_15, line(arg_utils_1, 47)).
argument(v_o_r_18, 1, arg_utils_1_expr6).
ref(v_list_16, arg_utils_1_expr6, line(arg_utils_1, 47)).
method_invoc(arg_utils_1_expr7, m_add_15, line(arg_utils_1, 50)).
argument(v_o_17, 1, arg_utils_1_expr7).
ref(v_list_16, arg_utils_1_expr7, line(arg_utils_1, 50)).
return(arg_utils_1_expr8, m_flatten_13, line(arg_utils_1, 54)).
method_invoc(arg_utils_1_expr8, m_to_array_16, line(arg_utils_1, 54)).
ref(v_list_16, arg_utils_1_expr8, line(arg_utils_1, 54)).

%exception_context_1 - org.apache.commons.math.exception.util.ExceptionContext
param(p_throwable_19, 1, m_exception_context_6).
assign(f_throwable_20, p_throwable_19, line(exception_context_1, 65)).
assign(f_msg_patterns_21, exception_context_1_expr5, line(exception_context_1, 66)).
method_invoc(exception_context_1_expr5, m_array_list_14, line(exception_context_1, 66)).
assign(f_msg_arguments_22, exception_context_1_expr7, line(exception_context_1, 67)).
method_invoc(exception_context_1_expr7, m_array_list_14, line(exception_context_1, 67)).
assign(f_context_23, exception_context_1_expr9, line(exception_context_1, 68)).
method_invoc(exception_context_1_expr9, m_hash_map_17, line(exception_context_1, 68)).
param(p_pattern_24, 1, m_add_message_7).
param(p_arguments_25, 2, m_add_message_7).
method_invoc(exception_context_1_expr10, m_add_15, line(exception_context_1, 87)).
argument(p_pattern_24, 1, exception_context_1_expr10).
ref(f_msg_patterns_21, exception_context_1_expr10, line(exception_context_1, 87)).
method_invoc(exception_context_1_expr11, m_add_15, line(exception_context_1, 88)).
argument(exception_context_1_expr12, 1, exception_context_1_expr11).
ref(f_msg_arguments_22, exception_context_1_expr11, line(exception_context_1, 88)).
method_invoc(exception_context_1_expr12, m_flatten_13, line(exception_context_1, 88)).
argument(p_arguments_25, 1, exception_context_1_expr12).
ref(t_arg_utils_2, exception_context_1_expr12, line(exception_context_1, 88)).
param(p_key_26, 1, m_set_value_19).
param(p_value_27, 2, m_set_value_19).
param(p_key_28, 1, m_get_value_20).
param(p_locale_29, 1, m_get_message_24).
param(p_locale_30, 1, m_get_message_25).
param(p_separator_31, 2, m_get_message_25).
param(p_locale_32, 1, m_build_message_26).
param(p_separator_33, 2, m_build_message_26).
param(p_out_34, 1, m_write_object_27).
throw(m_write_object_27, ioexception).
param(p_in_35, 1, m_read_object_28).
throw(m_read_object_28, ioexception).
throw(m_read_object_28, class_not_found_exception).
param(p_out_36, 1, m_serialize_messages_29).
throw(m_serialize_messages_29, ioexception).
param(p_in_37, 1, m_de_serialize_messages_30).
throw(m_de_serialize_messages_30, ioexception).
throw(m_de_serialize_messages_30, class_not_found_exception).
param(p_out_38, 1, m_serialize_context_31).
throw(m_serialize_context_31, ioexception).
param(p_in_39, 1, m_de_serialize_context_32).
throw(m_de_serialize_context_32, ioexception).
throw(m_de_serialize_context_32, class_not_found_exception).
param(p_obj_40, 1, m_non_serializable_replacement_33).

%localized_formats_1 - org.apache.commons.math.exception.util.LocalizedFormats
param(p_source_format_342, 1, m_localized_formats_34).
assign(f_source_format_343, p_source_format_342, line(localized_formats_1, 359)).
param(p_locale_344, 1, m_get_localized_string_36).

%math_utils_test_1 - org.apache.commons.math.util.MathUtilsTest
assign(f_binomial_cache_553, math_utils_test_1_expr1, line(math_utils_test_1, 46)).
method_invoc(math_utils_test_1_expr1, m_array_list_14, line(math_utils_test_1, 46)).
param(p_n_554, 1, m_binomial_coefficient_133).
param(p_k_555, 2, m_binomial_coefficient_133).
throw(m_binomial_coefficient_133, math_arithmetic_exception).
param(p_n_556, 1, m_factorial_134).
param(p_a_557, 1, m_test_add_and_check_long_failure_138).
param(p_b_558, 2, m_test_add_and_check_long_failure_138).
throw(m_test_binomial_coefficient_large_140, exception).
param(p_a_559, 1, m_test_mul_and_check_long_failure_174).
param(p_b_560, 2, m_test_mul_and_check_long_failure_174).
param(p_a_561, 1, m_test_sub_and_check_long_failure_192).
param(p_b_562, 2, m_test_sub_and_check_long_failure_192).
assign(v_null_array_563, math_utils_test_1_literal1, line(math_utils_test_1, 1795)).
assign(v_one_564, math_utils_test_1_expr2, line(math_utils_test_1, 1796)).
assign(v_two_565, math_utils_test_1_expr3, line(math_utils_test_1, 1797)).
assign(v_onep_566, math_utils_test_1_expr4, line(math_utils_test_1, 1798)).
method_invoc(math_utils_test_1_expr5, m_sort_in_place_120, line(math_utils_test_1, 1806)).
argument(v_one_564, 1, math_utils_test_1_expr5).
argument(v_null_array_563, 2, math_utils_test_1_expr5).
ref(t_math_utils_5, math_utils_test_1_expr5, line(math_utils_test_1, 1806)).

%math_illegal_number_exception_1 - org.apache.commons.math.exception.MathIllegalNumberException
param(p_pattern_11, 1, m_math_illegal_number_exception_2).
param(p_wrong_12, 2, m_math_illegal_number_exception_2).
param(p_arguments_13, 3, m_math_illegal_number_exception_2).
method_invoc(math_illegal_number_exception_1_expr1, m_math_illegal_argument_exception_5, line(math_illegal_number_exception_1, 46)).
argument(p_pattern_11, 1, math_illegal_number_exception_1_expr1).
argument(p_wrong_12, 2, math_illegal_number_exception_1_expr1).
argument(p_arguments_13, 3, math_illegal_number_exception_1_expr1).
assign(f_argument_14, p_wrong_12, line(math_illegal_number_exception_1, 47)).

%math_utils_1 - org.apache.commons.math.util.MathUtils
assign(f_factorials_345, math_utils_1_expr1, line(math_utils_1, 86)).
param(p_x_346, 1, m_add_and_check_38).
param(p_y_347, 2, m_add_and_check_38).
param(p_a_348, 1, m_add_and_check_39).
param(p_b_349, 2, m_add_and_check_39).
param(p_a_350, 1, m_add_and_check_40).
param(p_b_351, 2, m_add_and_check_40).
param(p_pattern_352, 3, m_add_and_check_40).
param(p_n_353, 1, m_binomial_coefficient_41).
param(p_k_354, 2, m_binomial_coefficient_41).
param(p_n_355, 1, m_binomial_coefficient_double_42).
param(p_k_356, 2, m_binomial_coefficient_double_42).
param(p_n_357, 1, m_binomial_coefficient_log_43).
param(p_k_358, 2, m_binomial_coefficient_log_43).
param(p_n_359, 1, m_check_binomial_44).
param(p_k_360, 2, m_check_binomial_44).
param(p_x_361, 1, m_compare_to_45).
param(p_y_362, 2, m_compare_to_45).
param(p_eps_363, 3, m_compare_to_45).
param(p_x_364, 1, m_compare_to_46).
param(p_y_365, 2, m_compare_to_46).
param(p_max_ulps_366, 3, m_compare_to_46).
param(p_x_367, 1, m_cosh_47).
param(p_x_368, 1, m_equals_48).
param(p_y_369, 2, m_equals_48).
param(p_x_370, 1, m_equals_including_na_n_49).
param(p_y_371, 2, m_equals_including_na_n_49).
param(p_x_372, 1, m_equals_50).
param(p_y_373, 2, m_equals_50).
param(p_eps_374, 3, m_equals_50).
param(p_x_375, 1, m_equals_including_na_n_51).
param(p_y_376, 2, m_equals_including_na_n_51).
param(p_eps_377, 3, m_equals_including_na_n_51).
param(p_x_378, 1, m_equals_52).
param(p_y_379, 2, m_equals_52).
param(p_max_ulps_380, 3, m_equals_52).
param(p_x_381, 1, m_equals_including_na_n_53).
param(p_y_382, 2, m_equals_including_na_n_53).
param(p_max_ulps_383, 3, m_equals_including_na_n_53).
param(p_x_384, 1, m_equals_54).
param(p_y_385, 2, m_equals_54).
param(p_x_386, 1, m_equals_including_na_n_55).
param(p_y_387, 2, m_equals_including_na_n_55).
param(p_x_388, 1, m_equals_56).
param(p_y_389, 2, m_equals_56).
param(p_x_390, 1, m_equals_including_na_n_57).
param(p_y_391, 2, m_equals_including_na_n_57).
param(p_x_392, 1, m_equals_58).
param(p_y_393, 2, m_equals_58).
param(p_eps_394, 3, m_equals_58).
param(p_x_395, 1, m_equals_including_na_n_59).
param(p_y_396, 2, m_equals_including_na_n_59).
param(p_eps_397, 3, m_equals_including_na_n_59).
param(p_x_398, 1, m_equals_60).
param(p_y_399, 2, m_equals_60).
param(p_max_ulps_400, 3, m_equals_60).
param(p_x_401, 1, m_equals_including_na_n_61).
param(p_y_402, 2, m_equals_including_na_n_61).
param(p_max_ulps_403, 3, m_equals_including_na_n_61).
param(p_x_404, 1, m_equals_62).
param(p_y_405, 2, m_equals_62).
param(p_x_406, 1, m_equals_including_na_n_63).
param(p_y_407, 2, m_equals_including_na_n_63).
param(p_n_408, 1, m_factorial_64).
param(p_n_409, 1, m_factorial_double_65).
param(p_n_410, 1, m_factorial_log_66).
param(p_p_411, 1, m_gcd_67).
param(p_q_412, 2, m_gcd_67).
param(p_p_413, 1, m_gcd_68).
param(p_q_414, 2, m_gcd_68).
param(p_value_415, 1, m_hash_69).
param(p_value_416, 1, m_hash_70).
param(p_x_417, 1, m_indicator_71).
param(p_x_418, 1, m_indicator_72).
param(p_x_419, 1, m_indicator_73).
param(p_x_420, 1, m_indicator_74).
param(p_x_421, 1, m_indicator_75).
param(p_x_422, 1, m_indicator_76).
param(p_a_423, 1, m_lcm_77).
param(p_b_424, 2, m_lcm_77).
param(p_a_425, 1, m_lcm_78).
param(p_b_426, 2, m_lcm_78).
param(p_base_427, 1, m_log_79).
param(p_x_428, 2, m_log_79).
param(p_x_429, 1, m_mul_and_check_80).
param(p_y_430, 2, m_mul_and_check_80).
param(p_a_431, 1, m_mul_and_check_81).
param(p_b_432, 2, m_mul_and_check_81).
param(p_a_433, 1, m_normalize_angle_82).
param(p_center_434, 2, m_normalize_angle_82).
param(p_a_435, 1, m_reduce_83).
param(p_period_436, 2, m_reduce_83).
param(p_offset_437, 3, m_reduce_83).
param(p_values_438, 1, m_normalize_array_84).
param(p_normalized_sum_439, 2, m_normalize_array_84).
param(p_x_440, 1, m_round_85).
param(p_scale_441, 2, m_round_85).
param(p_x_442, 1, m_round_86).
param(p_scale_443, 2, m_round_86).
param(p_rounding_method_444, 3, m_round_86).
param(p_x_445, 1, m_round_87).
param(p_scale_446, 2, m_round_87).
param(p_x_447, 1, m_round_88).
param(p_scale_448, 2, m_round_88).
param(p_rounding_method_449, 3, m_round_88).
param(p_unscaled_450, 1, m_round_unscaled_89).
param(p_sign_451, 2, m_round_unscaled_89).
param(p_rounding_method_452, 3, m_round_unscaled_89).
param(p_x_453, 1, m_sign_90).
param(p_x_454, 1, m_sign_91).
param(p_x_455, 1, m_sign_92).
param(p_x_456, 1, m_sign_93).
param(p_x_457, 1, m_sign_94).
param(p_x_458, 1, m_sign_95).
param(p_x_459, 1, m_sinh_96).
param(p_x_460, 1, m_sub_and_check_97).
param(p_y_461, 2, m_sub_and_check_97).
param(p_a_462, 1, m_sub_and_check_98).
param(p_b_463, 2, m_sub_and_check_98).
param(p_k_464, 1, m_pow_99).
param(p_e_465, 2, m_pow_99).
param(p_k_466, 1, m_pow_100).
param(p_e_467, 2, m_pow_100).
param(p_k_468, 1, m_pow_101).
param(p_e_469, 2, m_pow_101).
param(p_k_470, 1, m_pow_102).
param(p_e_471, 2, m_pow_102).
param(p_k_472, 1, m_pow_103).
param(p_e_473, 2, m_pow_103).
param(p_k_474, 1, m_pow_104).
param(p_e_475, 2, m_pow_104).
param(p_k_476, 1, m_pow_105).
param(p_e_477, 2, m_pow_105).
param(p_p_1_478, 1, m_distance_1_106).
param(p_p_2_479, 2, m_distance_1_106).
param(p_p_1_480, 1, m_distance_1_107).
param(p_p_2_481, 2, m_distance_1_107).
param(p_p_1_482, 1, m_distance_108).
param(p_p_2_483, 2, m_distance_108).
param(p_p_1_484, 1, m_distance_109).
param(p_p_2_485, 2, m_distance_109).
param(p_p_1_486, 1, m_distance_inf_110).
param(p_p_2_487, 2, m_distance_inf_110).
param(p_p_1_488, 1, m_distance_inf_111).
param(p_p_2_489, 2, m_distance_inf_111).
param(p_val_492, 1, m_is_monotone_112).
param(p_dir_493, 2, m_is_monotone_112).
param(p_strict_494, 3, m_is_monotone_112).
param(p_val_495, 1, m_is_monotone_113).
param(p_dir_496, 2, m_is_monotone_113).
param(p_strict_497, 3, m_is_monotone_113).
param(p_val_498, 1, m_check_order_114).
param(p_dir_499, 2, m_check_order_114).
param(p_strict_500, 3, m_check_order_114).
param(p_abort_501, 4, m_check_order_114).
param(p_val_502, 1, m_check_order_115).
param(p_dir_503, 2, m_check_order_115).
param(p_strict_504, 3, m_check_order_115).
param(p_val_505, 1, m_check_order_116).
param(p_x_506, 1, m_check_finite_117).
param(p_val_507, 1, m_check_finite_118).
param(p_v_508, 1, m_safe_norm_119).
param(p_x_509, 1, m_sort_in_place_120).
param(p_y_list_510, 2, m_sort_in_place_120).
method_invoc(math_utils_1_expr3, m_sort_in_place_121, line(math_utils_1, 2294)).
throw(math_utils_1_expr3, null_pointer_exception, line(math_utils_1, 2294)).
argument(p_x_509, 1, math_utils_1_expr3).
argument(q_increasing_2, 2, math_utils_1_expr3).
argument(p_y_list_510, 3, math_utils_1_expr3).
ref(t_order_direction_3, q_increasing_2, line(math_utils_1, 2294)).
param(p_x_511, 1, m_sort_in_place_121).
param(p_dir_512, 2, m_sort_in_place_121).
param(p_y_list_513, 3, m_sort_in_place_121).
assign(v_len_514, q_length_3, line(math_utils_1, 2315)).
ref(p_x_511, q_length_3, line(math_utils_1, 2315)).
assign(v_list_515, math_utils_1_expr6, line(math_utils_1, 2316)).
assign(v_y_list_len_516, q_length_4, line(math_utils_1, 2319)).
ref(p_y_list_513, q_length_4, line(math_utils_1, 2319)).
assign(v_i_517, math_utils_1_literal2, line(math_utils_1, 2320)).
assign(v_y_values_518, math_utils_1_expr10, line(math_utils_1, 2321)).
assign(v_j_519, math_utils_1_literal3, line(math_utils_1, 2322)).
assign(v_y_520, math_utils_1_expr14, line(math_utils_1, 2323)).
ref(p_y_list_513, math_utils_1_expr14, line(math_utils_1, 2323)).
ref(v_y_520, q_length_5, line(math_utils_1, 2324)).
throw(m_sort_in_place_121, dimension_mismatch_exception).
method_invoc(math_utils_1_expr16, m_dimension_mismatch_exception_3, line(math_utils_1, 2325)).
argument(q_length_6, 1, math_utils_1_expr16).
argument(v_len_514, 2, math_utils_1_expr16).
ref(v_y_520, q_length_6, line(math_utils_1, 2325)).
param(p_o_1_521, 1, m_compare_122).
param(p_o_2_522, 2, m_compare_122).
param(p_source_523, 1, m_copy_of_123).
param(p_source_524, 1, m_copy_of_124).
param(p_source_525, 1, m_copy_of_125).
param(p_len_526, 2, m_copy_of_125).
param(p_source_527, 1, m_copy_of_126).
param(p_len_528, 2, m_copy_of_126).
param(p_o_529, 1, m_check_not_null_127).
param(p_pattern_530, 2, m_check_not_null_127).
param(p_args_531, 3, m_check_not_null_127).
param(p_o_532, 1, m_check_not_null_128).
throw(m_check_not_null_128, null_argument_exception).
param(p_a_1_533, 1, m_linear_combination_129).
param(p_b_1_534, 2, m_linear_combination_129).
param(p_a_2_535, 3, m_linear_combination_129).
param(p_b_2_536, 4, m_linear_combination_129).
param(p_a_1_537, 1, m_linear_combination_130).
param(p_b_1_538, 2, m_linear_combination_130).
param(p_a_2_539, 3, m_linear_combination_130).
param(p_b_2_540, 4, m_linear_combination_130).
param(p_a_3_541, 5, m_linear_combination_130).
param(p_b_3_542, 6, m_linear_combination_130).
param(p_a_1_543, 1, m_linear_combination_131).
param(p_b_1_544, 2, m_linear_combination_131).
param(p_a_2_545, 3, m_linear_combination_131).
param(p_b_2_546, 4, m_linear_combination_131).
param(p_a_3_547, 5, m_linear_combination_131).
param(p_b_3_548, 6, m_linear_combination_131).
param(p_a_4_549, 7, m_linear_combination_131).
param(p_b_4_550, 8, m_linear_combination_131).
param(p_a_551, 1, m_linear_combination_132).
param(p_b_552, 2, m_linear_combination_132).

%math_illegal_argument_exception_1 - org.apache.commons.math.exception.MathIllegalArgumentException
param(p_pattern_8, 1, m_math_illegal_argument_exception_5).
param(p_args_9, 2, m_math_illegal_argument_exception_5).
assign(f_context_10, math_illegal_argument_exception_1_expr2, line(math_illegal_argument_exception_1, 45)).
method_invoc(math_illegal_argument_exception_1_expr2, m_exception_context_6, line(math_illegal_argument_exception_1, 45)).
argument(math_illegal_argument_exception_1_expr3, 1, math_illegal_argument_exception_1_expr2).
method_invoc(math_illegal_argument_exception_1_expr4, m_add_message_7, line(math_illegal_argument_exception_1, 46)).
argument(p_pattern_8, 1, math_illegal_argument_exception_1_expr4).
argument(p_args_9, 2, math_illegal_argument_exception_1_expr4).
ref(f_context_10, math_illegal_argument_exception_1_expr4, line(math_illegal_argument_exception_1, 46)).

%dimension_mismatch_exception_1 - org.apache.commons.math.exception.DimensionMismatchException
param(p_specific_1, 1, m_dimension_mismatch_exception_1).
param(p_wrong_2, 2, m_dimension_mismatch_exception_1).
param(p_expected_3, 3, m_dimension_mismatch_exception_1).
method_invoc(dimension_mismatch_exception_1_expr1, m_math_illegal_number_exception_2, line(dimension_mismatch_exception_1, 44)).
argument(p_specific_1, 1, dimension_mismatch_exception_1_expr1).
argument(p_wrong_2, 2, dimension_mismatch_exception_1_expr1).
argument(p_expected_3, 3, dimension_mismatch_exception_1_expr1).
assign(f_dimension_4, p_expected_3, line(dimension_mismatch_exception_1, 45)).
param(p_wrong_5, 1, m_dimension_mismatch_exception_3).
param(p_expected_6, 2, m_dimension_mismatch_exception_3).
method_invoc(dimension_mismatch_exception_1_expr3, m_dimension_mismatch_exception_1, line(dimension_mismatch_exception_1, 56)).
argument(q_dimensions_mismatch_simple_1, 1, dimension_mismatch_exception_1_expr3).
argument(p_wrong_5, 2, dimension_mismatch_exception_1_expr3).
argument(p_expected_6, 3, dimension_mismatch_exception_1_expr3).
ref(t_localized_formats_1, q_dimensions_mismatch_simple_1, line(dimension_mismatch_exception_1, 56)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.math.util.MathUtilsTest', 'testSortInPlaceFaliures').
trace(trace_1, failure_1, m_sort_in_place_121, line(math_utils_1, 2324), failure_1, target).
trace(trace_2, trace_1, m_sort_in_place_120, line(math_utils_1, 2294), failure_1, target).
trace(trace_3, trace_2, m_test_sort_in_place_faliures_206, line(math_utils_test_1, 1806), failure_1, target).
trace(trace_4, trace_3, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_8, trace_7, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_9, trace_8, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_10, trace_9, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_11, trace_10, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_12, trace_11, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_13, trace_12, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_14, trace_13, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_15, trace_14, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_16, trace_15, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_18, trace_17, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_19, trace_18, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_20, trace_19, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_21, trace_20, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_22, trace_21, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_23, trace_22, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_24, trace_23, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_25, trace_24, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(math_utils_1_expr14, null, line(math_utils_1, 2323)).
val(v_y_520, null, line(math_utils_1, 2324)).
val(v_null_array_563, null, line(math_utils_test_1, 1806)).



%%% End of Facts