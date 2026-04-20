%%% Logic-FL Facts
:- style_check(-discontiguous).

%duration_utils_1 - org.apache.commons.lang3.time.DurationUtils
assign(f_long_to_int_range_165, duration_utils_1_expr1, line(duration_utils_1, 40)).
method_invoc(duration_utils_1_expr1, m_between_3, line(duration_utils_1, 40)).
argument(q_long_int_min_value_4, 1, duration_utils_1_expr1).
argument(q_long_int_max_value_5, 2, duration_utils_1_expr1).
ref(t_range_9, duration_utils_1_expr1, line(duration_utils_1, 40)).
ref(t_number_utils_10, q_long_int_min_value_4, line(duration_utils_1, 40)).
param(p_consumer_166, 1, m_accept_102).
param(p_duration_167, 2, m_accept_102).
throw(m_accept_102, t).
param(p_duration_168, 1, m_get_nanos_of_miili_103).
return(duration_utils_1_expr2, m_get_nanos_of_miili_103, line(duration_utils_1, 73)).
method_invoc(duration_utils_1_expr3, m_get_nano_104, line(duration_utils_1, 73)).
ref(p_duration_168, duration_utils_1_expr3, line(duration_utils_1, 73)).
param(p_duration_169, 1, m_is_positive_105).
param(p_time_unit_170, 1, m_to_chrono_unit_106).
param(p_amount_171, 1, m_to_duration_107).
param(p_time_unit_172, 2, m_to_duration_107).
param(p_duration_173, 1, m_to_millis_int_108).
param(p_duration_174, 1, m_zero_if_null_109).

%range_1 - org.apache.commons.lang3.Range
param(p_obj_1_2, 1, m_compare_1).
param(p_obj_2_3, 2, m_compare_1).
return(range_1_expr3, m_compare_1, line(range_1, 48)).
method_invoc(range_1_expr3, m_compare_to_2, line(range_1, 48)).
argument(p_obj_2_3, 1, range_1_expr3).
ref(range_1_expr4, range_1_expr3, line(range_1, 48)).
assign(range_1_expr4, range_1_expr5, line(range_1, 48)).
assign(range_1_expr5, p_obj_1_2, line(range_1, 48)).
param(p_from_inclusive_4, 1, m_between_3).
param(p_to_inclusive_5, 2, m_between_3).
return(range_1_expr6, m_between_3, line(range_1, 76)).
method_invoc(range_1_expr6, m_between_4, line(range_1, 76)).
argument(p_from_inclusive_4, 1, range_1_expr6).
argument(p_to_inclusive_5, 2, range_1_expr6).
argument(range_1_literal3, 3, range_1_expr6).
param(p_from_inclusive_6, 1, m_between_4).
param(p_to_inclusive_7, 2, m_between_4).
param(p_comparator_8, 3, m_between_4).
return(range_1_expr7, m_between_4, line(range_1, 97)).
method_invoc(range_1_expr7, m_range_5, line(range_1, 97)).
argument(p_from_inclusive_6, 1, range_1_expr7).
argument(p_to_inclusive_7, 2, range_1_expr7).
argument(p_comparator_8, 3, range_1_expr7).
param(p_element_9, 1, m_is_6).
param(p_element_10, 1, m_is_7).
param(p_comparator_11, 2, m_is_7).
param(p_element_1_12, 1, m_range_5).
param(p_element_2_13, 2, m_range_5).
param(p_comp_14, 3, m_range_5).
assign(f_comparator_15, q_instance_1, line(range_1, 174)).
ref(t_comparable_comparator_2, q_instance_1, line(range_1, 174)).
method_invoc(range_1_expr16, m_compare_8, line(range_1, 178)).
argument(p_element_1_12, 1, range_1_expr16).
argument(p_element_2_13, 2, range_1_expr16).
ref(f_comparator_15, range_1_expr16, line(range_1, 178)).
assign(f_minimum_16, p_element_1_12, line(range_1, 179)).
assign(f_maximum_17, p_element_2_13, line(range_1, 180)).
param(p_element_18, 1, m_contains_9).
param(p_other_range_19, 1, m_contains_range_10).
param(p_element_20, 1, m_element_compare_to_11).
param(p_obj_21, 1, m_equals_12).
param(p_element_22, 1, m_fit_13).
param(p_other_23, 1, m_intersection_with_18).
param(p_element_24, 1, m_is_after_19).
param(p_other_range_25, 1, m_is_after_range_20).
param(p_element_26, 1, m_is_before_21).
param(p_other_range_27, 1, m_is_before_range_22).
param(p_element_28, 1, m_is_ended_by_23).
param(p_other_range_29, 1, m_is_overlapped_by_25).
param(p_element_30, 1, m_is_started_by_26).
param(p_format_31, 1, m_to_string_28).

%duration_utils_test_1 - org.apache.commons.lang3.time.DurationUtilsTest
method_invoc(duration_utils_test_1_expr1, m_assert_equals_111, line(duration_utils_test_1, 37)).
argument(duration_utils_test_1_literal1, 1, duration_utils_test_1_expr1).
argument(duration_utils_test_1_expr2, 2, duration_utils_test_1_expr1).
method_invoc(duration_utils_test_1_expr2, m_get_nanos_of_miili_103, line(duration_utils_test_1, 37)).
throw(duration_utils_test_1_expr2, null_pointer_exception, line(duration_utils_test_1, 37)).
argument(duration_utils_test_1_literal2, 1, duration_utils_test_1_expr2).
ref(t_duration_utils_12, duration_utils_test_1_expr2, line(duration_utils_test_1, 37)).
throw(duration_utils_test_1_expr1, null_pointer_exception, line(duration_utils_test_1, 37)).

%number_utils_1 - org.apache.commons.lang3.math.NumberUtils
assign(f_long_zero_32, number_utils_1_expr1, line(number_utils_1, 35)).
method_invoc(number_utils_1_expr1, m_value_of_29, line(number_utils_1, 35)).
argument(number_utils_1_literal1, 1, number_utils_1_expr1).
ref(t_long_3, number_utils_1_expr1, line(number_utils_1, 35)).
assign(f_long_one_33, number_utils_1_expr2, line(number_utils_1, 37)).
method_invoc(number_utils_1_expr2, m_value_of_29, line(number_utils_1, 37)).
argument(number_utils_1_literal2, 1, number_utils_1_expr2).
ref(t_long_3, number_utils_1_expr2, line(number_utils_1, 37)).
assign(f_long_minus_one_34, number_utils_1_expr3, line(number_utils_1, 39)).
method_invoc(number_utils_1_expr3, m_value_of_29, line(number_utils_1, 39)).
argument(number_utils_1_expr4, 1, number_utils_1_expr3).
ref(t_long_3, number_utils_1_expr3, line(number_utils_1, 39)).
assign(f_integer_zero_35, number_utils_1_expr5, line(number_utils_1, 41)).
method_invoc(number_utils_1_expr5, m_value_of_30, line(number_utils_1, 41)).
argument(number_utils_1_literal4, 1, number_utils_1_expr5).
ref(t_integer_4, number_utils_1_expr5, line(number_utils_1, 41)).
assign(f_integer_one_36, number_utils_1_expr6, line(number_utils_1, 43)).
method_invoc(number_utils_1_expr6, m_value_of_30, line(number_utils_1, 43)).
argument(number_utils_1_literal5, 1, number_utils_1_expr6).
ref(t_integer_4, number_utils_1_expr6, line(number_utils_1, 43)).
assign(f_integer_two_37, number_utils_1_expr7, line(number_utils_1, 45)).
method_invoc(number_utils_1_expr7, m_value_of_30, line(number_utils_1, 45)).
argument(number_utils_1_literal6, 1, number_utils_1_expr7).
ref(t_integer_4, number_utils_1_expr7, line(number_utils_1, 45)).
assign(f_integer_minus_one_38, number_utils_1_expr8, line(number_utils_1, 47)).
method_invoc(number_utils_1_expr8, m_value_of_30, line(number_utils_1, 47)).
argument(number_utils_1_expr9, 1, number_utils_1_expr8).
ref(t_integer_4, number_utils_1_expr8, line(number_utils_1, 47)).
assign(f_short_zero_39, number_utils_1_expr10, line(number_utils_1, 49)).
method_invoc(number_utils_1_expr10, m_value_of_31, line(number_utils_1, 49)).
argument(number_utils_1_expr11, 1, number_utils_1_expr10).
ref(t_short_5, number_utils_1_expr10, line(number_utils_1, 49)).
assign(number_utils_1_expr11, number_utils_1_literal8, line(number_utils_1, 49)).
assign(f_short_one_40, number_utils_1_expr12, line(number_utils_1, 51)).
method_invoc(number_utils_1_expr12, m_value_of_31, line(number_utils_1, 51)).
argument(number_utils_1_expr13, 1, number_utils_1_expr12).
ref(t_short_5, number_utils_1_expr12, line(number_utils_1, 51)).
assign(number_utils_1_expr13, number_utils_1_literal9, line(number_utils_1, 51)).
assign(f_short_minus_one_41, number_utils_1_expr14, line(number_utils_1, 53)).
method_invoc(number_utils_1_expr14, m_value_of_31, line(number_utils_1, 53)).
argument(number_utils_1_expr15, 1, number_utils_1_expr14).
ref(t_short_5, number_utils_1_expr14, line(number_utils_1, 53)).
assign(number_utils_1_expr15, number_utils_1_expr16, line(number_utils_1, 53)).
assign(f_byte_zero_42, number_utils_1_expr17, line(number_utils_1, 55)).
method_invoc(number_utils_1_expr17, m_value_of_32, line(number_utils_1, 55)).
argument(number_utils_1_expr18, 1, number_utils_1_expr17).
ref(t_byte_6, number_utils_1_expr17, line(number_utils_1, 55)).
assign(number_utils_1_expr18, number_utils_1_literal11, line(number_utils_1, 55)).
assign(f_byte_one_43, number_utils_1_expr19, line(number_utils_1, 57)).
method_invoc(number_utils_1_expr19, m_value_of_32, line(number_utils_1, 57)).
argument(number_utils_1_expr20, 1, number_utils_1_expr19).
ref(t_byte_6, number_utils_1_expr19, line(number_utils_1, 57)).
assign(number_utils_1_expr20, number_utils_1_literal12, line(number_utils_1, 57)).
assign(f_byte_minus_one_44, number_utils_1_expr21, line(number_utils_1, 59)).
method_invoc(number_utils_1_expr21, m_value_of_32, line(number_utils_1, 59)).
argument(number_utils_1_expr22, 1, number_utils_1_expr21).
ref(t_byte_6, number_utils_1_expr21, line(number_utils_1, 59)).
assign(number_utils_1_expr22, number_utils_1_expr23, line(number_utils_1, 59)).
assign(f_double_zero_45, number_utils_1_expr24, line(number_utils_1, 61)).
method_invoc(number_utils_1_expr24, m_value_of_33, line(number_utils_1, 61)).
argument(number_utils_1_literal14, 1, number_utils_1_expr24).
ref(t_double_7, number_utils_1_expr24, line(number_utils_1, 61)).
assign(f_double_one_46, number_utils_1_expr25, line(number_utils_1, 63)).
method_invoc(number_utils_1_expr25, m_value_of_33, line(number_utils_1, 63)).
argument(number_utils_1_literal15, 1, number_utils_1_expr25).
ref(t_double_7, number_utils_1_expr25, line(number_utils_1, 63)).
assign(f_double_minus_one_47, number_utils_1_expr26, line(number_utils_1, 65)).
method_invoc(number_utils_1_expr26, m_value_of_33, line(number_utils_1, 65)).
argument(number_utils_1_expr27, 1, number_utils_1_expr26).
ref(t_double_7, number_utils_1_expr26, line(number_utils_1, 65)).
assign(f_float_zero_48, number_utils_1_expr28, line(number_utils_1, 67)).
method_invoc(number_utils_1_expr28, m_value_of_34, line(number_utils_1, 67)).
argument(number_utils_1_literal17, 1, number_utils_1_expr28).
ref(t_float_8, number_utils_1_expr28, line(number_utils_1, 67)).
assign(f_float_one_49, number_utils_1_expr29, line(number_utils_1, 69)).
method_invoc(number_utils_1_expr29, m_value_of_34, line(number_utils_1, 69)).
argument(number_utils_1_literal18, 1, number_utils_1_expr29).
ref(t_float_8, number_utils_1_expr29, line(number_utils_1, 69)).
assign(f_float_minus_one_50, number_utils_1_expr30, line(number_utils_1, 71)).
method_invoc(number_utils_1_expr30, m_value_of_34, line(number_utils_1, 71)).
argument(number_utils_1_expr31, 1, number_utils_1_expr30).
ref(t_float_8, number_utils_1_expr30, line(number_utils_1, 71)).
assign(f_long_int_max_value_51, number_utils_1_expr32, line(number_utils_1, 78)).
method_invoc(number_utils_1_expr32, m_value_of_29, line(number_utils_1, 78)).
argument(q_max_value_2, 1, number_utils_1_expr32).
ref(t_long_3, number_utils_1_expr32, line(number_utils_1, 78)).
ref(t_integer_4, q_max_value_2, line(number_utils_1, 78)).
assign(f_long_int_min_value_52, number_utils_1_expr33, line(number_utils_1, 85)).
method_invoc(number_utils_1_expr33, m_value_of_29, line(number_utils_1, 85)).
argument(q_min_value_3, 1, number_utils_1_expr33).
ref(t_long_3, number_utils_1_expr33, line(number_utils_1, 85)).
ref(t_integer_4, q_min_value_3, line(number_utils_1, 85)).
param(p_str_53, 1, m_to_int_36).
param(p_str_54, 1, m_to_int_37).
param(p_default_value_55, 2, m_to_int_37).
param(p_str_56, 1, m_to_long_38).
param(p_str_57, 1, m_to_long_39).
param(p_default_value_58, 2, m_to_long_39).
param(p_str_59, 1, m_to_float_40).
param(p_str_60, 1, m_to_float_41).
param(p_default_value_61, 2, m_to_float_41).
param(p_str_62, 1, m_to_double_42).
param(p_str_63, 1, m_to_double_43).
param(p_default_value_64, 2, m_to_double_43).
param(p_value_65, 1, m_to_double_44).
param(p_value_66, 1, m_to_double_45).
param(p_default_value_67, 2, m_to_double_45).
param(p_str_68, 1, m_to_byte_46).
param(p_str_69, 1, m_to_byte_47).
param(p_default_value_70, 2, m_to_byte_47).
param(p_str_71, 1, m_to_short_48).
param(p_str_72, 1, m_to_short_49).
param(p_default_value_73, 2, m_to_short_49).
param(p_value_74, 1, m_to_scaled_big_decimal_50).
param(p_value_75, 1, m_to_scaled_big_decimal_51).
param(p_scale_76, 2, m_to_scaled_big_decimal_51).
param(p_rounding_mode_77, 3, m_to_scaled_big_decimal_51).
param(p_value_78, 1, m_to_scaled_big_decimal_52).
param(p_value_79, 1, m_to_scaled_big_decimal_53).
param(p_scale_80, 2, m_to_scaled_big_decimal_53).
param(p_rounding_mode_81, 3, m_to_scaled_big_decimal_53).
param(p_value_82, 1, m_to_scaled_big_decimal_54).
param(p_value_83, 1, m_to_scaled_big_decimal_55).
param(p_scale_84, 2, m_to_scaled_big_decimal_55).
param(p_rounding_mode_85, 3, m_to_scaled_big_decimal_55).
param(p_value_86, 1, m_to_scaled_big_decimal_56).
param(p_value_87, 1, m_to_scaled_big_decimal_57).
param(p_scale_88, 2, m_to_scaled_big_decimal_57).
param(p_rounding_mode_89, 3, m_to_scaled_big_decimal_57).
param(p_str_90, 1, m_create_number_58).
param(p_str_91, 1, m_get_mantissa_59).
param(p_stop_pos_92, 2, m_get_mantissa_59).
param(p_mant_93, 1, m_is_zero_60).
param(p_dec_94, 2, m_is_zero_60).
param(p_str_95, 1, m_is_all_zeros_61).
param(p_str_96, 1, m_create_float_62).
param(p_str_97, 1, m_create_double_63).
param(p_str_98, 1, m_create_integer_64).
param(p_str_99, 1, m_create_long_65).
param(p_str_100, 1, m_create_big_integer_66).
param(p_str_101, 1, m_create_big_decimal_67).
param(p_array_102, 1, m_min_68).
param(p_array_103, 1, m_min_69).
param(p_array_104, 1, m_min_70).
param(p_array_105, 1, m_min_71).
param(p_array_106, 1, m_min_72).
param(p_array_107, 1, m_min_73).
param(p_array_108, 1, m_max_74).
param(p_array_109, 1, m_max_75).
param(p_array_110, 1, m_max_76).
param(p_array_111, 1, m_max_77).
param(p_array_112, 1, m_max_78).
param(p_array_113, 1, m_max_79).
param(p_array_114, 1, m_validate_array_80).
param(p_a_115, 1, m_min_81).
param(p_b_116, 2, m_min_81).
param(p_c_117, 3, m_min_81).
param(p_a_118, 1, m_min_82).
param(p_b_119, 2, m_min_82).
param(p_c_120, 3, m_min_82).
param(p_a_121, 1, m_min_83).
param(p_b_122, 2, m_min_83).
param(p_c_123, 3, m_min_83).
param(p_a_124, 1, m_min_84).
param(p_b_125, 2, m_min_84).
param(p_c_126, 3, m_min_84).
param(p_a_127, 1, m_min_85).
param(p_b_128, 2, m_min_85).
param(p_c_129, 3, m_min_85).
param(p_a_130, 1, m_min_86).
param(p_b_131, 2, m_min_86).
param(p_c_132, 3, m_min_86).
param(p_a_133, 1, m_max_87).
param(p_b_134, 2, m_max_87).
param(p_c_135, 3, m_max_87).
param(p_a_136, 1, m_max_88).
param(p_b_137, 2, m_max_88).
param(p_c_138, 3, m_max_88).
param(p_a_139, 1, m_max_89).
param(p_b_140, 2, m_max_89).
param(p_c_141, 3, m_max_89).
param(p_a_142, 1, m_max_90).
param(p_b_143, 2, m_max_90).
param(p_c_144, 3, m_max_90).
param(p_a_145, 1, m_max_91).
param(p_b_146, 2, m_max_91).
param(p_c_147, 3, m_max_91).
param(p_a_148, 1, m_max_92).
param(p_b_149, 2, m_max_92).
param(p_c_150, 3, m_max_92).
param(p_str_151, 1, m_is_digits_93).
param(p_str_152, 1, m_is_number_94).
param(p_str_153, 1, m_is_creatable_95).
param(p_str_154, 1, m_is_parsable_96).
param(p_str_155, 1, m_with_decimals_parsing_97).
param(p_begin_idx_156, 2, m_with_decimals_parsing_97).
param(p_x_157, 1, m_compare_98).
param(p_y_158, 2, m_compare_98).
param(p_x_159, 1, m_compare_99).
param(p_y_160, 2, m_compare_99).
param(p_x_161, 1, m_compare_100).
param(p_y_162, 2, m_compare_100).
param(p_x_163, 1, m_compare_101).
param(p_y_164, 2, m_compare_101).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang3.time.DurationUtilsTest', 'testGetNanosOfMilli').
trace(trace_1, failure_1, m_get_nanos_of_miili_103, line(duration_utils_1, 73), failure_1, target).
trace(trace_2, trace_1, m_test_get_nanos_of_milli_110, line(duration_utils_test_1, 37), failure_1, target).
trace(trace_3, trace_2, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_4, trace_3, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_duration_168, null, line(duration_utils_1, 73)).



%%% End of Facts